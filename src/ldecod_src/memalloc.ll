; ModuleID = 'ldecod_src/memalloc.c'
source_filename = "ldecod_src/memalloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.distortion_data = type { [4 x [4 x i32]], [4 x [4 x i64]], [2 x [2 x i64]], [2 x [2 x i32]], i32, i32, double }
%struct.lambda_params = type { double, [3 x double], [3 x i32] }
%struct.pic_motion_params = type { [2 x ptr], [2 x %struct.MotionVector], [2 x i8] }
%struct.MotionVector = type { i16, i16 }
%struct.level_quant_params = type { i32, i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"init_top_bot_planes: imgTopField\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"init_top_bot_planes: imgBotField\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"get_mem2Ddist: array2D\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"get_mem2Dlm: array2D\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"free_mem2Ddist: trying to free unused memory\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"free_mem2Dlm: trying to free unused memory\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"get_mem2Dmv: array2D\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"get_mem2Dmp: array2D\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"get_mem3Dmp: array3D\00", align 1
@.str.9 = private unnamed_addr constant [43 x i8] c"free_mem2Dmp: trying to free unused memory\00", align 1
@.str.10 = private unnamed_addr constant [43 x i8] c"free_mem3Dmp: trying to free unused memory\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"get_mem2Dquant: array2D\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"get_mem3Dquant: array3D\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"get_mem4Dquant: array4D\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"get_mem5Dquant: array5D\00", align 1
@.str.15 = private unnamed_addr constant [46 x i8] c"free_mem2Dquant: trying to free unused memory\00", align 1
@.str.16 = private unnamed_addr constant [46 x i8] c"free_mem3Dquant: trying to free unused memory\00", align 1
@.str.17 = private unnamed_addr constant [46 x i8] c"free_mem4Dquant: trying to free unused memory\00", align 1
@.str.18 = private unnamed_addr constant [46 x i8] c"free_mem5Dquant: trying to free unused memory\00", align 1
@.str.19 = private unnamed_addr constant [23 x i8] c"get_mem2D_spp: array2D\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"get_mem3D_spp: array3D\00", align 1
@.str.21 = private unnamed_addr constant [21 x i8] c"get_mem3Dmv: array3D\00", align 1
@.str.22 = private unnamed_addr constant [22 x i8] c"get_mem4Dpel: array4D\00", align 1
@.str.23 = private unnamed_addr constant [22 x i8] c"get_mem5Dpel: array5D\00", align 1
@.str.24 = private unnamed_addr constant [22 x i8] c"get_mem5Dpel: array6D\00", align 1
@.str.25 = private unnamed_addr constant [21 x i8] c"get_mem7Dmv: array7D\00", align 1
@.str.26 = private unnamed_addr constant [45 x i8] c"free_mem2D_spp: trying to free unused memory\00", align 1
@.str.27 = private unnamed_addr constant [45 x i8] c"free_mem3D_spp: trying to free unused memory\00", align 1
@.str.28 = private unnamed_addr constant [43 x i8] c"free_mem2Dmv: trying to free unused memory\00", align 1
@.str.29 = private unnamed_addr constant [43 x i8] c"free_mem3Dmv: trying to free unused memory\00", align 1
@.str.30 = private unnamed_addr constant [43 x i8] c"free_mem4Dmv: trying to free unused memory\00", align 1
@.str.31 = private unnamed_addr constant [43 x i8] c"free_mem5Dmv: trying to free unused memory\00", align 1
@.str.32 = private unnamed_addr constant [43 x i8] c"free_mem6Dmv: trying to free unused memory\00", align 1
@.str.33 = private unnamed_addr constant [43 x i8] c"free_mem7Dmv: trying to free unused memory\00", align 1
@.str.34 = private unnamed_addr constant [22 x i8] c"get_mem1Dpel: arra12D\00", align 1
@.str.35 = private unnamed_addr constant [22 x i8] c"get_mem2Dpel: array2D\00", align 1
@.str.36 = private unnamed_addr constant [29 x i8] c"get_mem2DpelWithPad: array2D\00", align 1
@.str.37 = private unnamed_addr constant [22 x i8] c"get_mem3Dpel: array3D\00", align 1
@.str.38 = private unnamed_addr constant [29 x i8] c"get_mem3DpelWithPad: array3D\00", align 1
@.str.39 = private unnamed_addr constant [39 x i8] c"get_mem3DpelWithPadSeparately: array3D\00", align 1
@.str.40 = private unnamed_addr constant [29 x i8] c"get_mem4DpelWithPad: array4D\00", align 1
@.str.41 = private unnamed_addr constant [39 x i8] c"get_mem4DpelWithPadSeparately: array4D\00", align 1
@.str.42 = private unnamed_addr constant [29 x i8] c"get_mem5DpelWithPad: array5D\00", align 1
@.str.43 = private unnamed_addr constant [39 x i8] c"get_mem5DpelWithPadSeparately: array5D\00", align 1
@.str.44 = private unnamed_addr constant [44 x i8] c"free_mem1Dpel: trying to free unused memory\00", align 1
@.str.45 = private unnamed_addr constant [44 x i8] c"free_mem2Dpel: trying to free unused memory\00", align 1
@.str.46 = private unnamed_addr constant [51 x i8] c"free_mem2DpelWithPad: trying to free unused memory\00", align 1
@.str.47 = private unnamed_addr constant [44 x i8] c"free_mem3Dpel: trying to free unused memory\00", align 1
@.str.48 = private unnamed_addr constant [61 x i8] c"free_mem3DpelWithPadSeparately: trying to free unused memory\00", align 1
@.str.49 = private unnamed_addr constant [44 x i8] c"free_mem4Dpel: trying to free unused memory\00", align 1
@.str.50 = private unnamed_addr constant [51 x i8] c"free_mem4DpelWithPad: trying to free unused memory\00", align 1
@.str.51 = private unnamed_addr constant [61 x i8] c"free_mem4DpelWithPadSeparately: trying to free unused memory\00", align 1
@.str.52 = private unnamed_addr constant [44 x i8] c"free_mem5Dpel: trying to free unused memory\00", align 1
@.str.53 = private unnamed_addr constant [51 x i8] c"free_mem5DpelWithPad: trying to free unused memory\00", align 1
@.str.54 = private unnamed_addr constant [19 x i8] c"get_mem2D: array2D\00", align 1
@.str.55 = private unnamed_addr constant [22 x i8] c"get_mem2Dint: array2D\00", align 1
@.str.56 = private unnamed_addr constant [29 x i8] c"get_mem2DintWithPad: array2D\00", align 1
@.str.57 = private unnamed_addr constant [24 x i8] c"get_mem2Dint64: array2D\00", align 1
@.str.58 = private unnamed_addr constant [26 x i8] c"get_mem2Ddistblk: array2D\00", align 1
@.str.59 = private unnamed_addr constant [19 x i8] c"get_mem3D: array3D\00", align 1
@.str.60 = private unnamed_addr constant [19 x i8] c"get_mem4D: array4D\00", align 1
@.str.61 = private unnamed_addr constant [22 x i8] c"get_mem3Dint: array3D\00", align 1
@.str.62 = private unnamed_addr constant [24 x i8] c"get_mem3Dint64: array3D\00", align 1
@.str.63 = private unnamed_addr constant [26 x i8] c"get_mem3Ddistblk: array3D\00", align 1
@.str.64 = private unnamed_addr constant [22 x i8] c"get_mem4Dint: array4D\00", align 1
@.str.65 = private unnamed_addr constant [24 x i8] c"get_mem4Dint64: array4D\00", align 1
@.str.66 = private unnamed_addr constant [26 x i8] c"get_mem4Ddistblk: array4D\00", align 1
@.str.67 = private unnamed_addr constant [22 x i8] c"get_mem5Dint: array5D\00", align 1
@.str.68 = private unnamed_addr constant [41 x i8] c"free_mem2D: trying to free unused memory\00", align 1
@.str.69 = private unnamed_addr constant [44 x i8] c"free_mem2Dint: trying to free unused memory\00", align 1
@.str.70 = private unnamed_addr constant [51 x i8] c"free_mem2DintWithPad: trying to free unused memory\00", align 1
@.str.71 = private unnamed_addr constant [46 x i8] c"free_mem2Dint64: trying to free unused memory\00", align 1
@.str.72 = private unnamed_addr constant [41 x i8] c"free_mem3D: trying to free unused memory\00", align 1
@.str.73 = private unnamed_addr constant [41 x i8] c"free_mem4D: trying to free unused memory\00", align 1
@.str.74 = private unnamed_addr constant [44 x i8] c"free_mem3Dint: trying to free unused memory\00", align 1
@.str.75 = private unnamed_addr constant [46 x i8] c"free_mem3Dint64: trying to free unused memory\00", align 1
@.str.76 = private unnamed_addr constant [48 x i8] c"free_mem3Ddistblk: trying to free unused memory\00", align 1
@.str.77 = private unnamed_addr constant [44 x i8] c"free_mem4Dint: trying to free unused memory\00", align 1
@.str.78 = private unnamed_addr constant [46 x i8] c"free_mem4Dint64: trying to free unused memory\00", align 1
@.str.79 = private unnamed_addr constant [48 x i8] c"free_mem4Ddistblk: trying to free unused memory\00", align 1
@.str.80 = private unnamed_addr constant [44 x i8] c"free_mem5Dint: trying to free unused memory\00", align 1
@errortext = external global [300 x i8], align 16
@.str.81 = private unnamed_addr constant [30 x i8] c"Could not allocate memory: %s\00", align 1
@.str.82 = private unnamed_addr constant [25 x i8] c"get_mem2Duint16: array2D\00", align 1
@.str.83 = private unnamed_addr constant [25 x i8] c"get_mem3Duint16: array3D\00", align 1
@.str.84 = private unnamed_addr constant [25 x i8] c"get_mem4Duint16: array4D\00", align 1
@.str.85 = private unnamed_addr constant [24 x i8] c"get_mem2Dshort: array2D\00", align 1
@.str.86 = private unnamed_addr constant [24 x i8] c"get_mem3Dshort: array3D\00", align 1
@.str.87 = private unnamed_addr constant [24 x i8] c"get_mem4Dshort: array4D\00", align 1
@.str.88 = private unnamed_addr constant [24 x i8] c"get_mem5Dshort: array5D\00", align 1
@.str.89 = private unnamed_addr constant [24 x i8] c"get_mem6Dshort: array6D\00", align 1
@.str.90 = private unnamed_addr constant [24 x i8] c"get_mem7Dshort: array7D\00", align 1
@.str.91 = private unnamed_addr constant [47 x i8] c"free_mem2Duint16: trying to free unused memory\00", align 1
@.str.92 = private unnamed_addr constant [47 x i8] c"free_mem3Duint16: trying to free unused memory\00", align 1
@.str.93 = private unnamed_addr constant [47 x i8] c"free_mem4Duint16: trying to free unused memory\00", align 1
@.str.94 = private unnamed_addr constant [46 x i8] c"free_mem2Dshort: trying to free unused memory\00", align 1
@.str.95 = private unnamed_addr constant [46 x i8] c"free_mem3Dshort: trying to free unused memory\00", align 1
@.str.96 = private unnamed_addr constant [46 x i8] c"free_mem4Dshort: trying to free unused memory\00", align 1
@.str.97 = private unnamed_addr constant [46 x i8] c"free_mem5Dshort: trying to free unused memory\00", align 1
@.str.98 = private unnamed_addr constant [46 x i8] c"free_mem6Dshort: trying to free unused memory\00", align 1
@.str.99 = private unnamed_addr constant [46 x i8] c"free_mem7Dshort: trying to free unused memory\00", align 1
@.str.100 = private unnamed_addr constant [25 x i8] c"get_mem2Ddouble: array2D\00", align 1
@.str.101 = private unnamed_addr constant [26 x i8] c"get_mem1Dodouble: array2D\00", align 1
@.str.102 = private unnamed_addr constant [26 x i8] c"get_mem2Dodouble: array2D\00", align 1
@.str.103 = private unnamed_addr constant [26 x i8] c"get_mem3Dodouble: array3D\00", align 1
@.str.104 = private unnamed_addr constant [31 x i8] c"get_offset_mem2Dshort: array2D\00", align 1
@.str.105 = private unnamed_addr constant [23 x i8] c"get_mem3Doint: array3D\00", align 1
@.str.106 = private unnamed_addr constant [25 x i8] c"get_mem3Ddouble: array3D\00", align 1
@.str.107 = private unnamed_addr constant [47 x i8] c"free_mem2Ddouble: trying to free unused memory\00", align 1
@.str.108 = private unnamed_addr constant [48 x i8] c"free_mem1Dodouble: trying to free unused memory\00", align 1
@.str.109 = private unnamed_addr constant [48 x i8] c"free_mem2Dodouble: trying to free unused memory\00", align 1
@.str.110 = private unnamed_addr constant [48 x i8] c"free_mem3Dodouble: trying to free unused memory\00", align 1
@.str.111 = private unnamed_addr constant [45 x i8] c"free_mem3Doint: trying to free unused memory\00", align 1
@.str.112 = private unnamed_addr constant [45 x i8] c"free_mem2Doint: trying to free unused memory\00", align 1
@.str.113 = private unnamed_addr constant [53 x i8] c"free_offset_mem2Dshort: trying to free unused memory\00", align 1
@.str.114 = private unnamed_addr constant [22 x i8] c"get_mem2Dolm: array2D\00", align 1
@.str.115 = private unnamed_addr constant [44 x i8] c"free_mem2Dolm: trying to free unused memory\00", align 1
@.str.116 = private unnamed_addr constant [48 x i8] c"free_mem2Ddistblk: trying to free unused memory\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @init_top_bot_planes(ptr nocapture noundef readonly %imgFrame, i32 noundef %dim0, ptr nocapture noundef %imgTopField, ptr nocapture noundef %imgBotField) local_unnamed_addr #0 {
entry:
  %shr = ashr i32 %dim0, 1
  %conv = sext i32 %shr to i64
  %mul = shl nsw i64 %conv, 3
  %call = tail call noalias ptr @malloc(i64 noundef %mul) #8
  store ptr %call, ptr %imgTopField, align 8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call.i = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call5 = tail call noalias ptr @malloc(i64 noundef %mul) #8
  store ptr %call5, ptr %imgBotField, align 8
  %cmp6 = icmp eq ptr %call5, null
  br i1 %cmp6, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end
  %call.i35 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.1) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end
  %cmp1136 = icmp sgt i32 %shr, 0
  br i1 %cmp1136, label %for.body.preheader, label %for.end

for.body.preheader:                               ; preds = %if.end9
  %wide.trip.count = zext nneg i32 %shr to i64
  %xtraiter = and i64 %wide.trip.count, 1
  %0 = icmp eq i32 %shr, 1
  br i1 %0, label %for.end.loopexit.unr-lcssa, label %for.body.preheader.new

for.body.preheader.new:                           ; preds = %for.body.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.preheader.new
  %indvars.iv = phi i64 [ 0, %for.body.preheader.new ], [ %indvars.iv.next.1, %for.body ]
  %niter = phi i64 [ 0, %for.body.preheader.new ], [ %niter.next.1, %for.body ]
  %1 = shl nuw nsw i64 %indvars.iv, 1
  %arrayidx = getelementptr inbounds ptr, ptr %imgFrame, i64 %1
  %2 = load ptr, ptr %arrayidx, align 8
  %3 = load ptr, ptr %imgTopField, align 8
  %arrayidx15 = getelementptr inbounds ptr, ptr %3, i64 %indvars.iv
  store ptr %2, ptr %arrayidx15, align 8
  %4 = or disjoint i64 %1, 1
  %arrayidx18 = getelementptr inbounds ptr, ptr %imgFrame, i64 %4
  %5 = load ptr, ptr %arrayidx18, align 8
  %6 = load ptr, ptr %imgBotField, align 8
  %arrayidx20 = getelementptr inbounds ptr, ptr %6, i64 %indvars.iv
  store ptr %5, ptr %arrayidx20, align 8
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1
  %7 = shl nuw nsw i64 %indvars.iv.next, 1
  %arrayidx.1 = getelementptr inbounds ptr, ptr %imgFrame, i64 %7
  %8 = load ptr, ptr %arrayidx.1, align 8
  %9 = load ptr, ptr %imgTopField, align 8
  %arrayidx15.1 = getelementptr inbounds ptr, ptr %9, i64 %indvars.iv.next
  store ptr %8, ptr %arrayidx15.1, align 8
  %10 = or disjoint i64 %7, 1
  %arrayidx18.1 = getelementptr inbounds ptr, ptr %imgFrame, i64 %10
  %11 = load ptr, ptr %arrayidx18.1, align 8
  %12 = load ptr, ptr %imgBotField, align 8
  %arrayidx20.1 = getelementptr inbounds ptr, ptr %12, i64 %indvars.iv.next
  store ptr %11, ptr %arrayidx20.1, align 8
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %niter.next.1 = add nuw i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %for.end.loopexit.unr-lcssa, label %for.body

for.end.loopexit.unr-lcssa:                       ; preds = %for.body, %for.body.preheader
  %indvars.iv.unr = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next.1, %for.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.end, label %for.body.epil

for.body.epil:                                    ; preds = %for.end.loopexit.unr-lcssa
  %13 = shl nuw nsw i64 %indvars.iv.unr, 1
  %arrayidx.epil = getelementptr inbounds ptr, ptr %imgFrame, i64 %13
  %14 = load ptr, ptr %arrayidx.epil, align 8
  %15 = load ptr, ptr %imgTopField, align 8
  %arrayidx15.epil = getelementptr inbounds ptr, ptr %15, i64 %indvars.iv.unr
  store ptr %14, ptr %arrayidx15.epil, align 8
  %16 = or disjoint i64 %13, 1
  %arrayidx18.epil = getelementptr inbounds ptr, ptr %imgFrame, i64 %16
  %17 = load ptr, ptr %arrayidx18.epil, align 8
  %18 = load ptr, ptr %imgBotField, align 8
  %arrayidx20.epil = getelementptr inbounds ptr, ptr %18, i64 %indvars.iv.unr
  store ptr %17, ptr %arrayidx20.epil, align 8
  br label %for.end

for.end:                                          ; preds = %for.body.epil, %for.end.loopexit.unr-lcssa, %if.end9
  %mul22 = shl i32 %dim0, 3
  ret i32 %mul22
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @no_mem_exit(ptr noundef %where) local_unnamed_addr #0 {
entry:
  %call = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef %where) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local void @free_top_bot_planes(ptr nocapture noundef %imgTopField, ptr nocapture noundef %imgBotField) local_unnamed_addr #3 {
entry:
  tail call void @free(ptr noundef %imgTopField) #9
  tail call void @free(ptr noundef %imgBotField) #9
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @get_mem2Ddist(ptr nocapture noundef %array2D, i32 noundef %dim0, i32 noundef %dim1) local_unnamed_addr #0 {
entry:
  %conv = sext i32 %dim0 to i64
  %mul = shl nsw i64 %conv, 3
  %call = tail call noalias ptr @malloc(i64 noundef %mul) #8
  store ptr %call, ptr %array2D, align 8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call.i = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.2) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  %.pre = load ptr, ptr %array2D, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %0 = phi ptr [ %.pre, %if.then ], [ %call, %entry ]
  %mul2 = mul nsw i32 %dim1, %dim0
  %conv3 = sext i32 %mul2 to i64
  %call4 = tail call noalias ptr @calloc(i64 noundef %conv3, i64 noundef 256) #10
  store ptr %call4, ptr %0, align 8
  %cmp5 = icmp eq ptr %call4, null
  br i1 %cmp5, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  %call.i29 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.2) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end
  %cmp930 = icmp sgt i32 %dim0, 1
  br i1 %cmp930, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end8
  %idx.ext = sext i32 %dim1 to i64
  %wide.trip.count = zext nneg i32 %dim0 to i64
  %1 = add nsw i64 %wide.trip.count, -1
  %2 = add nsw i64 %wide.trip.count, -2
  %xtraiter = and i64 %1, 3
  %3 = icmp ult i64 %2, 3
  br i1 %3, label %for.end.loopexit.unr-lcssa, label %for.body.lr.ph.new

for.body.lr.ph.new:                               ; preds = %for.body.lr.ph
  %unroll_iter = and i64 %1, -4
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph.new
  %indvars.iv = phi i64 [ 1, %for.body.lr.ph.new ], [ %indvars.iv.next.3, %for.body ]
  %niter = phi i64 [ 0, %for.body.lr.ph.new ], [ %niter.next.3, %for.body ]
  %4 = load ptr, ptr %array2D, align 8
  %5 = getelementptr ptr, ptr %4, i64 %indvars.iv
  %arrayidx = getelementptr i8, ptr %5, i64 -8
  %6 = load ptr, ptr %arrayidx, align 8
  %add.ptr = getelementptr inbounds %struct.distortion_data, ptr %6, i64 %idx.ext
  store ptr %add.ptr, ptr %5, align 8
  %7 = load ptr, ptr %array2D, align 8
  %8 = getelementptr ptr, ptr %7, i64 %indvars.iv
  %9 = getelementptr i8, ptr %8, i64 8
  %10 = load ptr, ptr %8, align 8
  %add.ptr.1 = getelementptr inbounds %struct.distortion_data, ptr %10, i64 %idx.ext
  store ptr %add.ptr.1, ptr %9, align 8
  %11 = load ptr, ptr %array2D, align 8
  %12 = getelementptr ptr, ptr %11, i64 %indvars.iv
  %13 = getelementptr i8, ptr %12, i64 16
  %arrayidx.2 = getelementptr i8, ptr %12, i64 8
  %14 = load ptr, ptr %arrayidx.2, align 8
  %add.ptr.2 = getelementptr inbounds %struct.distortion_data, ptr %14, i64 %idx.ext
  store ptr %add.ptr.2, ptr %13, align 8
  %15 = load ptr, ptr %array2D, align 8
  %16 = getelementptr ptr, ptr %15, i64 %indvars.iv
  %17 = getelementptr i8, ptr %16, i64 24
  %arrayidx.3 = getelementptr i8, ptr %16, i64 16
  %18 = load ptr, ptr %arrayidx.3, align 8
  %add.ptr.3 = getelementptr inbounds %struct.distortion_data, ptr %18, i64 %idx.ext
  store ptr %add.ptr.3, ptr %17, align 8
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4
  %niter.next.3 = add i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %for.end.loopexit.unr-lcssa, label %for.body

for.end.loopexit.unr-lcssa:                       ; preds = %for.body, %for.body.lr.ph
  %indvars.iv.unr = phi i64 [ 1, %for.body.lr.ph ], [ %indvars.iv.next.3, %for.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.end, label %for.body.epil

for.body.epil:                                    ; preds = %for.end.loopexit.unr-lcssa, %for.body.epil
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %for.body.epil ], [ %indvars.iv.unr, %for.end.loopexit.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %for.body.epil ], [ 0, %for.end.loopexit.unr-lcssa ]
  %19 = load ptr, ptr %array2D, align 8
  %20 = getelementptr ptr, ptr %19, i64 %indvars.iv.epil
  %arrayidx.epil = getelementptr i8, ptr %20, i64 -8
  %21 = load ptr, ptr %arrayidx.epil, align 8
  %add.ptr.epil = getelementptr inbounds %struct.distortion_data, ptr %21, i64 %idx.ext
  store ptr %add.ptr.epil, ptr %20, align 8
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %for.end, label %for.body.epil, !llvm.loop !5

for.end:                                          ; preds = %for.end.loopexit.unr-lcssa, %for.body.epil, %if.end8
  %mul15 = shl i32 %dim1, 8
  %add = or disjoint i32 %mul15, 8
  %mul16 = mul i32 %add, %dim0
  ret i32 %mul16
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local i32 @get_mem2Dlm(ptr nocapture noundef %array2D, i32 noundef %dim0, i32 noundef %dim1) local_unnamed_addr #0 {
entry:
  %conv = sext i32 %dim0 to i64
  %mul = shl nsw i64 %conv, 3
  %call = tail call noalias ptr @malloc(i64 noundef %mul) #8
  store ptr %call, ptr %array2D, align 8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call.i = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.3) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  %.pre = load ptr, ptr %array2D, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %0 = phi ptr [ %.pre, %if.then ], [ %call, %entry ]
  %mul2 = mul nsw i32 %dim1, %dim0
  %conv3 = sext i32 %mul2 to i64
  %call4 = tail call noalias ptr @calloc(i64 noundef %conv3, i64 noundef 48) #10
  store ptr %call4, ptr %0, align 8
  %cmp5 = icmp eq ptr %call4, null
  br i1 %cmp5, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  %call.i29 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.3) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end
  %cmp930 = icmp sgt i32 %dim0, 1
  br i1 %cmp930, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end8
  %idx.ext = sext i32 %dim1 to i64
  %wide.trip.count = zext nneg i32 %dim0 to i64
  %1 = add nsw i64 %wide.trip.count, -1
  %2 = add nsw i64 %wide.trip.count, -2
  %xtraiter = and i64 %1, 3
  %3 = icmp ult i64 %2, 3
  br i1 %3, label %for.end.loopexit.unr-lcssa, label %for.body.lr.ph.new

for.body.lr.ph.new:                               ; preds = %for.body.lr.ph
  %unroll_iter = and i64 %1, -4
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph.new
  %indvars.iv = phi i64 [ 1, %for.body.lr.ph.new ], [ %indvars.iv.next.3, %for.body ]
  %niter = phi i64 [ 0, %for.body.lr.ph.new ], [ %niter.next.3, %for.body ]
  %4 = load ptr, ptr %array2D, align 8
  %5 = getelementptr ptr, ptr %4, i64 %indvars.iv
  %arrayidx = getelementptr i8, ptr %5, i64 -8
  %6 = load ptr, ptr %arrayidx, align 8
  %add.ptr = getelementptr inbounds %struct.lambda_params, ptr %6, i64 %idx.ext
  store ptr %add.ptr, ptr %5, align 8
  %7 = load ptr, ptr %array2D, align 8
  %8 = getelementptr ptr, ptr %7, i64 %indvars.iv
  %9 = getelementptr i8, ptr %8, i64 8
  %10 = load ptr, ptr %8, align 8
  %add.ptr.1 = getelementptr inbounds %struct.lambda_params, ptr %10, i64 %idx.ext
  store ptr %add.ptr.1, ptr %9, align 8
  %11 = load ptr, ptr %array2D, align 8
  %12 = getelementptr ptr, ptr %11, i64 %indvars.iv
  %13 = getelementptr i8, ptr %12, i64 16
  %arrayidx.2 = getelementptr i8, ptr %12, i64 8
  %14 = load ptr, ptr %arrayidx.2, align 8
  %add.ptr.2 = getelementptr inbounds %struct.lambda_params, ptr %14, i64 %idx.ext
  store ptr %add.ptr.2, ptr %13, align 8
  %15 = load ptr, ptr %array2D, align 8
  %16 = getelementptr ptr, ptr %15, i64 %indvars.iv
  %17 = getelementptr i8, ptr %16, i64 24
  %arrayidx.3 = getelementptr i8, ptr %16, i64 16
  %18 = load ptr, ptr %arrayidx.3, align 8
  %add.ptr.3 = getelementptr inbounds %struct.lambda_params, ptr %18, i64 %idx.ext
  store ptr %add.ptr.3, ptr %17, align 8
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4
  %niter.next.3 = add i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %for.end.loopexit.unr-lcssa, label %for.body

for.end.loopexit.unr-lcssa:                       ; preds = %for.body, %for.body.lr.ph
  %indvars.iv.unr = phi i64 [ 1, %for.body.lr.ph ], [ %indvars.iv.next.3, %for.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.end, label %for.body.epil

for.body.epil:                                    ; preds = %for.end.loopexit.unr-lcssa, %for.body.epil
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %for.body.epil ], [ %indvars.iv.unr, %for.end.loopexit.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %for.body.epil ], [ 0, %for.end.loopexit.unr-lcssa ]
  %19 = load ptr, ptr %array2D, align 8
  %20 = getelementptr ptr, ptr %19, i64 %indvars.iv.epil
  %arrayidx.epil = getelementptr i8, ptr %20, i64 -8
  %21 = load ptr, ptr %arrayidx.epil, align 8
  %add.ptr.epil = getelementptr inbounds %struct.lambda_params, ptr %21, i64 %idx.ext
  store ptr %add.ptr.epil, ptr %20, align 8
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %for.end, label %for.body.epil, !llvm.loop !7

for.end:                                          ; preds = %for.end.loopexit.unr-lcssa, %for.body.epil, %if.end8
  %mul15 = mul i32 %dim1, 48
  %add = or disjoint i32 %mul15, 8
  %mul16 = mul i32 %add, %dim0
  ret i32 %mul16
}

; Function Attrs: nounwind uwtable
define dso_local void @free_mem2Ddist(ptr noundef %array2D) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq ptr %array2D, null
  br i1 %tobool.not, label %if.else3, label %if.then

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %array2D, align 8
  %tobool1.not = icmp eq ptr %0, null
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.then
  tail call void @free(ptr noundef nonnull %0) #9
  br label %if.end

if.else:                                          ; preds = %if.then
  tail call void @error(ptr noundef nonnull @.str.4, i32 noundef 100) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  tail call void @free(ptr noundef nonnull %array2D) #9
  br label %if.end4

if.else3:                                         ; preds = %entry
  tail call void @error(ptr noundef nonnull @.str.4, i32 noundef 100) #9
  br label %if.end4

if.end4:                                          ; preds = %if.else3, %if.end
  ret void
}

declare void @error(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local void @free_mem2Dlm(ptr noundef %array2D) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq ptr %array2D, null
  br i1 %tobool.not, label %if.else3, label %if.then

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %array2D, align 8
  %tobool1.not = icmp eq ptr %0, null
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.then
  tail call void @free(ptr noundef nonnull %0) #9
  br label %if.end

if.else:                                          ; preds = %if.then
  tail call void @error(ptr noundef nonnull @.str.5, i32 noundef 100) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  tail call void @free(ptr noundef nonnull %array2D) #9
  br label %if.end4

if.else3:                                         ; preds = %entry
  tail call void @error(ptr noundef nonnull @.str.5, i32 noundef 100) #9
  br label %if.end4

if.end4:                                          ; preds = %if.else3, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @get_mem2Dmp(ptr nocapture noundef %array2D, i32 noundef %dim0, i32 noundef %dim1) local_unnamed_addr #0 {
entry:
  %conv = sext i32 %dim0 to i64
  %mul = shl nsw i64 %conv, 3
  %call = tail call noalias ptr @malloc(i64 noundef %mul) #8
  store ptr %call, ptr %array2D, align 8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call.i = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.6) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  %.pre = load ptr, ptr %array2D, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %0 = phi ptr [ %.pre, %if.then ], [ %call, %entry ]
  %mul2 = mul nsw i32 %dim1, %dim0
  %conv3 = sext i32 %mul2 to i64
  %call4 = tail call noalias ptr @calloc(i64 noundef %conv3, i64 noundef 32) #10
  store ptr %call4, ptr %0, align 8
  %cmp5 = icmp eq ptr %call4, null
  br i1 %cmp5, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  %call.i29 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.7) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end
  %cmp930 = icmp sgt i32 %dim0, 1
  br i1 %cmp930, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end8
  %idx.ext = sext i32 %dim1 to i64
  %wide.trip.count = zext nneg i32 %dim0 to i64
  %1 = add nsw i64 %wide.trip.count, -1
  %2 = add nsw i64 %wide.trip.count, -2
  %xtraiter = and i64 %1, 3
  %3 = icmp ult i64 %2, 3
  br i1 %3, label %for.end.loopexit.unr-lcssa, label %for.body.lr.ph.new

for.body.lr.ph.new:                               ; preds = %for.body.lr.ph
  %unroll_iter = and i64 %1, -4
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph.new
  %indvars.iv = phi i64 [ 1, %for.body.lr.ph.new ], [ %indvars.iv.next.3, %for.body ]
  %niter = phi i64 [ 0, %for.body.lr.ph.new ], [ %niter.next.3, %for.body ]
  %4 = load ptr, ptr %array2D, align 8
  %5 = getelementptr ptr, ptr %4, i64 %indvars.iv
  %arrayidx = getelementptr i8, ptr %5, i64 -8
  %6 = load ptr, ptr %arrayidx, align 8
  %add.ptr = getelementptr inbounds %struct.pic_motion_params, ptr %6, i64 %idx.ext
  store ptr %add.ptr, ptr %5, align 8
  %7 = load ptr, ptr %array2D, align 8
  %8 = getelementptr ptr, ptr %7, i64 %indvars.iv
  %9 = getelementptr i8, ptr %8, i64 8
  %10 = load ptr, ptr %8, align 8
  %add.ptr.1 = getelementptr inbounds %struct.pic_motion_params, ptr %10, i64 %idx.ext
  store ptr %add.ptr.1, ptr %9, align 8
  %11 = load ptr, ptr %array2D, align 8
  %12 = getelementptr ptr, ptr %11, i64 %indvars.iv
  %13 = getelementptr i8, ptr %12, i64 16
  %arrayidx.2 = getelementptr i8, ptr %12, i64 8
  %14 = load ptr, ptr %arrayidx.2, align 8
  %add.ptr.2 = getelementptr inbounds %struct.pic_motion_params, ptr %14, i64 %idx.ext
  store ptr %add.ptr.2, ptr %13, align 8
  %15 = load ptr, ptr %array2D, align 8
  %16 = getelementptr ptr, ptr %15, i64 %indvars.iv
  %17 = getelementptr i8, ptr %16, i64 24
  %arrayidx.3 = getelementptr i8, ptr %16, i64 16
  %18 = load ptr, ptr %arrayidx.3, align 8
  %add.ptr.3 = getelementptr inbounds %struct.pic_motion_params, ptr %18, i64 %idx.ext
  store ptr %add.ptr.3, ptr %17, align 8
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4
  %niter.next.3 = add i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %for.end.loopexit.unr-lcssa, label %for.body

for.end.loopexit.unr-lcssa:                       ; preds = %for.body, %for.body.lr.ph
  %indvars.iv.unr = phi i64 [ 1, %for.body.lr.ph ], [ %indvars.iv.next.3, %for.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.end, label %for.body.epil

for.body.epil:                                    ; preds = %for.end.loopexit.unr-lcssa, %for.body.epil
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %for.body.epil ], [ %indvars.iv.unr, %for.end.loopexit.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %for.body.epil ], [ 0, %for.end.loopexit.unr-lcssa ]
  %19 = load ptr, ptr %array2D, align 8
  %20 = getelementptr ptr, ptr %19, i64 %indvars.iv.epil
  %arrayidx.epil = getelementptr i8, ptr %20, i64 -8
  %21 = load ptr, ptr %arrayidx.epil, align 8
  %add.ptr.epil = getelementptr inbounds %struct.pic_motion_params, ptr %21, i64 %idx.ext
  store ptr %add.ptr.epil, ptr %20, align 8
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %for.end, label %for.body.epil, !llvm.loop !8

for.end:                                          ; preds = %for.end.loopexit.unr-lcssa, %for.body.epil, %if.end8
  %mul15 = shl i32 %dim1, 5
  %add = or disjoint i32 %mul15, 8
  %mul16 = mul i32 %add, %dim0
  ret i32 %mul16
}

; Function Attrs: nounwind uwtable
define dso_local i32 @get_mem3Dmp(ptr nocapture noundef %array3D, i32 noundef %dim0, i32 noundef %dim1, i32 noundef %dim2) local_unnamed_addr #0 {
entry:
  %conv = sext i32 %dim0 to i64
  %mul = shl nsw i64 %conv, 3
  %call = tail call noalias ptr @malloc(i64 noundef %mul) #8
  store ptr %call, ptr %array3D, align 8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call.i = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.8) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  %.pre = load ptr, ptr %array3D, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %0 = phi ptr [ %.pre, %if.then ], [ %call, %entry ]
  %mul5 = mul nsw i32 %dim1, %dim0
  %call6 = tail call i32 @get_mem2Dmp(ptr noundef %0, i32 noundef %mul5, i32 noundef %dim2)
  %cmp722 = icmp sgt i32 %dim0, 1
  br i1 %cmp722, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %idx.ext = sext i32 %dim1 to i64
  %wide.trip.count = zext nneg i32 %dim0 to i64
  %1 = add nsw i64 %wide.trip.count, -1
  %2 = add nsw i64 %wide.trip.count, -2
  %xtraiter = and i64 %1, 3
  %3 = icmp ult i64 %2, 3
  br i1 %3, label %for.end.loopexit.unr-lcssa, label %for.body.lr.ph.new

for.body.lr.ph.new:                               ; preds = %for.body.lr.ph
  %unroll_iter = and i64 %1, -4
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph.new
  %indvars.iv = phi i64 [ 1, %for.body.lr.ph.new ], [ %indvars.iv.next.3, %for.body ]
  %niter = phi i64 [ 0, %for.body.lr.ph.new ], [ %niter.next.3, %for.body ]
  %4 = load ptr, ptr %array3D, align 8
  %5 = getelementptr ptr, ptr %4, i64 %indvars.iv
  %arrayidx = getelementptr i8, ptr %5, i64 -8
  %6 = load ptr, ptr %arrayidx, align 8
  %add.ptr = getelementptr inbounds ptr, ptr %6, i64 %idx.ext
  store ptr %add.ptr, ptr %5, align 8
  %7 = load ptr, ptr %array3D, align 8
  %8 = getelementptr ptr, ptr %7, i64 %indvars.iv
  %9 = getelementptr i8, ptr %8, i64 8
  %10 = load ptr, ptr %8, align 8
  %add.ptr.1 = getelementptr inbounds ptr, ptr %10, i64 %idx.ext
  store ptr %add.ptr.1, ptr %9, align 8
  %11 = load ptr, ptr %array3D, align 8
  %12 = getelementptr ptr, ptr %11, i64 %indvars.iv
  %13 = getelementptr i8, ptr %12, i64 16
  %arrayidx.2 = getelementptr i8, ptr %12, i64 8
  %14 = load ptr, ptr %arrayidx.2, align 8
  %add.ptr.2 = getelementptr inbounds ptr, ptr %14, i64 %idx.ext
  store ptr %add.ptr.2, ptr %13, align 8
  %15 = load ptr, ptr %array3D, align 8
  %16 = getelementptr ptr, ptr %15, i64 %indvars.iv
  %17 = getelementptr i8, ptr %16, i64 24
  %arrayidx.3 = getelementptr i8, ptr %16, i64 16
  %18 = load ptr, ptr %arrayidx.3, align 8
  %add.ptr.3 = getelementptr inbounds ptr, ptr %18, i64 %idx.ext
  store ptr %add.ptr.3, ptr %17, align 8
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4
  %niter.next.3 = add i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %for.end.loopexit.unr-lcssa, label %for.body

for.end.loopexit.unr-lcssa:                       ; preds = %for.body, %for.body.lr.ph
  %indvars.iv.unr = phi i64 [ 1, %for.body.lr.ph ], [ %indvars.iv.next.3, %for.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.end, label %for.body.epil

for.body.epil:                                    ; preds = %for.end.loopexit.unr-lcssa, %for.body.epil
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %for.body.epil ], [ %indvars.iv.unr, %for.end.loopexit.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %for.body.epil ], [ 0, %for.end.loopexit.unr-lcssa ]
  %19 = load ptr, ptr %array3D, align 8
  %20 = getelementptr ptr, ptr %19, i64 %indvars.iv.epil
  %arrayidx.epil = getelementptr i8, ptr %20, i64 -8
  %21 = load ptr, ptr %arrayidx.epil, align 8
  %add.ptr.epil = getelementptr inbounds ptr, ptr %21, i64 %idx.ext
  store ptr %add.ptr.epil, ptr %20, align 8
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %for.end, label %for.body.epil, !llvm.loop !9

for.end:                                          ; preds = %for.end.loopexit.unr-lcssa, %for.body.epil, %if.end
  %conv1 = trunc i64 %mul to i32
  %add = add nsw i32 %call6, %conv1
  ret i32 %add
}

; Function Attrs: nounwind uwtable
define dso_local void @free_mem2Dmp(ptr noundef %array2D) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq ptr %array2D, null
  br i1 %tobool.not, label %if.else3, label %if.then

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %array2D, align 8
  %tobool1.not = icmp eq ptr %0, null
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.then
  tail call void @free(ptr noundef nonnull %0) #9
  br label %if.end

if.else:                                          ; preds = %if.then
  tail call void @error(ptr noundef nonnull @.str.9, i32 noundef 100) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  tail call void @free(ptr noundef nonnull %array2D) #9
  br label %if.end4

if.else3:                                         ; preds = %entry
  tail call void @error(ptr noundef nonnull @.str.9, i32 noundef 100) #9
  br label %if.end4

if.end4:                                          ; preds = %if.else3, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @free_mem3Dmp(ptr noundef %array3D) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq ptr %array3D, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %array3D, align 8
  %tobool.not.i = icmp eq ptr %0, null
  br i1 %tobool.not.i, label %if.else3.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  %1 = load ptr, ptr %0, align 8
  %tobool1.not.i = icmp eq ptr %1, null
  br i1 %tobool1.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.then.i
  tail call void @free(ptr noundef nonnull %1) #9
  br label %if.end.i

if.else.i:                                        ; preds = %if.then.i
  tail call void @error(ptr noundef nonnull @.str.9, i32 noundef 100) #9
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then2.i
  tail call void @free(ptr noundef nonnull %0) #9
  br label %free_mem2Dmp.exit

if.else3.i:                                       ; preds = %if.then
  tail call void @error(ptr noundef nonnull @.str.9, i32 noundef 100) #9
  br label %free_mem2Dmp.exit

free_mem2Dmp.exit:                                ; preds = %if.end.i, %if.else3.i
  tail call void @free(ptr noundef nonnull %array3D) #9
  br label %if.end

if.else:                                          ; preds = %entry
  tail call void @error(ptr noundef nonnull @.str.10, i32 noundef 100) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %free_mem2Dmp.exit
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @get_mem2Dquant(ptr nocapture noundef %array2D, i32 noundef %dim0, i32 noundef %dim1) local_unnamed_addr #0 {
entry:
  %conv = sext i32 %dim0 to i64
  %mul = shl nsw i64 %conv, 3
  %call = tail call noalias ptr @malloc(i64 noundef %mul) #8
  store ptr %call, ptr %array2D, align 8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call.i = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.11) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  %.pre = load ptr, ptr %array2D, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %0 = phi ptr [ %.pre, %if.then ], [ %call, %entry ]
  %mul2 = mul nsw i32 %dim1, %dim0
  %conv3 = sext i32 %mul2 to i64
  %call4 = tail call noalias ptr @calloc(i64 noundef %conv3, i64 noundef 12) #10
  store ptr %call4, ptr %0, align 8
  %cmp5 = icmp eq ptr %call4, null
  br i1 %cmp5, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  %call.i29 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.11) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end
  %cmp930 = icmp sgt i32 %dim0, 1
  br i1 %cmp930, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end8
  %idx.ext = sext i32 %dim1 to i64
  %wide.trip.count = zext nneg i32 %dim0 to i64
  %1 = add nsw i64 %wide.trip.count, -1
  %2 = add nsw i64 %wide.trip.count, -2
  %xtraiter = and i64 %1, 3
  %3 = icmp ult i64 %2, 3
  br i1 %3, label %for.end.loopexit.unr-lcssa, label %for.body.lr.ph.new

for.body.lr.ph.new:                               ; preds = %for.body.lr.ph
  %unroll_iter = and i64 %1, -4
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph.new
  %indvars.iv = phi i64 [ 1, %for.body.lr.ph.new ], [ %indvars.iv.next.3, %for.body ]
  %niter = phi i64 [ 0, %for.body.lr.ph.new ], [ %niter.next.3, %for.body ]
  %4 = load ptr, ptr %array2D, align 8
  %5 = getelementptr ptr, ptr %4, i64 %indvars.iv
  %arrayidx = getelementptr i8, ptr %5, i64 -8
  %6 = load ptr, ptr %arrayidx, align 8
  %add.ptr = getelementptr inbounds %struct.level_quant_params, ptr %6, i64 %idx.ext
  store ptr %add.ptr, ptr %5, align 8
  %7 = load ptr, ptr %array2D, align 8
  %8 = getelementptr ptr, ptr %7, i64 %indvars.iv
  %9 = getelementptr i8, ptr %8, i64 8
  %10 = load ptr, ptr %8, align 8
  %add.ptr.1 = getelementptr inbounds %struct.level_quant_params, ptr %10, i64 %idx.ext
  store ptr %add.ptr.1, ptr %9, align 8
  %11 = load ptr, ptr %array2D, align 8
  %12 = getelementptr ptr, ptr %11, i64 %indvars.iv
  %13 = getelementptr i8, ptr %12, i64 16
  %arrayidx.2 = getelementptr i8, ptr %12, i64 8
  %14 = load ptr, ptr %arrayidx.2, align 8
  %add.ptr.2 = getelementptr inbounds %struct.level_quant_params, ptr %14, i64 %idx.ext
  store ptr %add.ptr.2, ptr %13, align 8
  %15 = load ptr, ptr %array2D, align 8
  %16 = getelementptr ptr, ptr %15, i64 %indvars.iv
  %17 = getelementptr i8, ptr %16, i64 24
  %arrayidx.3 = getelementptr i8, ptr %16, i64 16
  %18 = load ptr, ptr %arrayidx.3, align 8
  %add.ptr.3 = getelementptr inbounds %struct.level_quant_params, ptr %18, i64 %idx.ext
  store ptr %add.ptr.3, ptr %17, align 8
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4
  %niter.next.3 = add i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %for.end.loopexit.unr-lcssa, label %for.body

for.end.loopexit.unr-lcssa:                       ; preds = %for.body, %for.body.lr.ph
  %indvars.iv.unr = phi i64 [ 1, %for.body.lr.ph ], [ %indvars.iv.next.3, %for.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.end, label %for.body.epil

for.body.epil:                                    ; preds = %for.end.loopexit.unr-lcssa, %for.body.epil
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %for.body.epil ], [ %indvars.iv.unr, %for.end.loopexit.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %for.body.epil ], [ 0, %for.end.loopexit.unr-lcssa ]
  %19 = load ptr, ptr %array2D, align 8
  %20 = getelementptr ptr, ptr %19, i64 %indvars.iv.epil
  %arrayidx.epil = getelementptr i8, ptr %20, i64 -8
  %21 = load ptr, ptr %arrayidx.epil, align 8
  %add.ptr.epil = getelementptr inbounds %struct.level_quant_params, ptr %21, i64 %idx.ext
  store ptr %add.ptr.epil, ptr %20, align 8
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %for.end, label %for.body.epil, !llvm.loop !10

for.end:                                          ; preds = %for.end.loopexit.unr-lcssa, %for.body.epil, %if.end8
  %mul15 = mul i32 %dim1, 12
  %add = add i32 %mul15, 8
  %mul16 = mul i32 %add, %dim0
  ret i32 %mul16
}

; Function Attrs: nounwind uwtable
define dso_local i32 @get_mem3Dquant(ptr nocapture noundef %array3D, i32 noundef %dim0, i32 noundef %dim1, i32 noundef %dim2) local_unnamed_addr #0 {
entry:
  %conv = sext i32 %dim0 to i64
  %mul = shl nsw i64 %conv, 3
  %call = tail call noalias ptr @malloc(i64 noundef %mul) #8
  store ptr %call, ptr %array3D, align 8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call.i = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.12) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  %.pre = load ptr, ptr %array3D, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %0 = phi ptr [ %.pre, %if.then ], [ %call, %entry ]
  %mul5 = mul nsw i32 %dim1, %dim0
  %call6 = tail call i32 @get_mem2Dquant(ptr noundef %0, i32 noundef %mul5, i32 noundef %dim2)
  %cmp722 = icmp sgt i32 %dim0, 1
  br i1 %cmp722, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %idx.ext = sext i32 %dim1 to i64
  %wide.trip.count = zext nneg i32 %dim0 to i64
  %1 = add nsw i64 %wide.trip.count, -1
  %2 = add nsw i64 %wide.trip.count, -2
  %xtraiter = and i64 %1, 3
  %3 = icmp ult i64 %2, 3
  br i1 %3, label %for.end.loopexit.unr-lcssa, label %for.body.lr.ph.new

for.body.lr.ph.new:                               ; preds = %for.body.lr.ph
  %unroll_iter = and i64 %1, -4
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph.new
  %indvars.iv = phi i64 [ 1, %for.body.lr.ph.new ], [ %indvars.iv.next.3, %for.body ]
  %niter = phi i64 [ 0, %for.body.lr.ph.new ], [ %niter.next.3, %for.body ]
  %4 = load ptr, ptr %array3D, align 8
  %5 = getelementptr ptr, ptr %4, i64 %indvars.iv
  %arrayidx = getelementptr i8, ptr %5, i64 -8
  %6 = load ptr, ptr %arrayidx, align 8
  %add.ptr = getelementptr inbounds ptr, ptr %6, i64 %idx.ext
  store ptr %add.ptr, ptr %5, align 8
  %7 = load ptr, ptr %array3D, align 8
  %8 = getelementptr ptr, ptr %7, i64 %indvars.iv
  %9 = getelementptr i8, ptr %8, i64 8
  %10 = load ptr, ptr %8, align 8
  %add.ptr.1 = getelementptr inbounds ptr, ptr %10, i64 %idx.ext
  store ptr %add.ptr.1, ptr %9, align 8
  %11 = load ptr, ptr %array3D, align 8
  %12 = getelementptr ptr, ptr %11, i64 %indvars.iv
  %13 = getelementptr i8, ptr %12, i64 16
  %arrayidx.2 = getelementptr i8, ptr %12, i64 8
  %14 = load ptr, ptr %arrayidx.2, align 8
  %add.ptr.2 = getelementptr inbounds ptr, ptr %14, i64 %idx.ext
  store ptr %add.ptr.2, ptr %13, align 8
  %15 = load ptr, ptr %array3D, align 8
  %16 = getelementptr ptr, ptr %15, i64 %indvars.iv
  %17 = getelementptr i8, ptr %16, i64 24
  %arrayidx.3 = getelementptr i8, ptr %16, i64 16
  %18 = load ptr, ptr %arrayidx.3, align 8
  %add.ptr.3 = getelementptr inbounds ptr, ptr %18, i64 %idx.ext
  store ptr %add.ptr.3, ptr %17, align 8
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4
  %niter.next.3 = add i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %for.end.loopexit.unr-lcssa, label %for.body

for.end.loopexit.unr-lcssa:                       ; preds = %for.body, %for.body.lr.ph
  %indvars.iv.unr = phi i64 [ 1, %for.body.lr.ph ], [ %indvars.iv.next.3, %for.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.end, label %for.body.epil

for.body.epil:                                    ; preds = %for.end.loopexit.unr-lcssa, %for.body.epil
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %for.body.epil ], [ %indvars.iv.unr, %for.end.loopexit.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %for.body.epil ], [ 0, %for.end.loopexit.unr-lcssa ]
  %19 = load ptr, ptr %array3D, align 8
  %20 = getelementptr ptr, ptr %19, i64 %indvars.iv.epil
  %arrayidx.epil = getelementptr i8, ptr %20, i64 -8
  %21 = load ptr, ptr %arrayidx.epil, align 8
  %add.ptr.epil = getelementptr inbounds ptr, ptr %21, i64 %idx.ext
  store ptr %add.ptr.epil, ptr %20, align 8
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %for.end, label %for.body.epil, !llvm.loop !11

for.end:                                          ; preds = %for.end.loopexit.unr-lcssa, %for.body.epil, %if.end
  %conv1 = trunc i64 %mul to i32
  %add = add nsw i32 %call6, %conv1
  ret i32 %add
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @get_mem4Dquant(ptr nocapture noundef %array4D, i32 noundef %dim0, i32 noundef %dim1, i32 noundef %dim2, i32 noundef %dim3) local_unnamed_addr #0 {
entry:
  %conv = sext i32 %dim0 to i64
  %mul = shl nsw i64 %conv, 3
  %call = tail call noalias ptr @malloc(i64 noundef %mul) #8
  store ptr %call, ptr %array4D, align 8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call.i = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.13) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  %.pre = load ptr, ptr %array4D, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %0 = phi ptr [ %.pre, %if.then ], [ %call, %entry ]
  %mul5 = mul nsw i32 %dim1, %dim0
  %conv.i = sext i32 %mul5 to i64
  %mul.i = shl nsw i64 %conv.i, 3
  %call.i22 = tail call noalias ptr @malloc(i64 noundef %mul.i) #8
  store ptr %call.i22, ptr %0, align 8
  %cmp.i = icmp eq ptr %call.i22, null
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end
  %call.i.i = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.12) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  %.pre.i = load ptr, ptr %0, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end
  %1 = phi ptr [ %.pre.i, %if.then.i ], [ %call.i22, %if.end ]
  %mul5.i = mul nsw i32 %mul5, %dim2
  %call6.i = tail call i32 @get_mem2Dquant(ptr noundef %1, i32 noundef %mul5.i, i32 noundef %dim3)
  %cmp722.i = icmp sgt i32 %mul5, 1
  br i1 %cmp722.i, label %for.body.lr.ph.i, label %get_mem3Dquant.exit

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %idx.ext.i = sext i32 %dim2 to i64
  %wide.trip.count.i = zext nneg i32 %mul5 to i64
  %2 = add nsw i64 %wide.trip.count.i, -1
  %3 = add nsw i64 %wide.trip.count.i, -2
  %xtraiter = and i64 %2, 3
  %4 = icmp ult i64 %3, 3
  br i1 %4, label %get_mem3Dquant.exit.loopexit.unr-lcssa, label %for.body.lr.ph.i.new

for.body.lr.ph.i.new:                             ; preds = %for.body.lr.ph.i
  %unroll_iter = and i64 %2, -4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %for.body.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 1, %for.body.lr.ph.i.new ], [ %indvars.iv.next.i.3, %for.body.i ]
  %niter = phi i64 [ 0, %for.body.lr.ph.i.new ], [ %niter.next.3, %for.body.i ]
  %5 = load ptr, ptr %0, align 8
  %6 = getelementptr ptr, ptr %5, i64 %indvars.iv.i
  %arrayidx.i = getelementptr i8, ptr %6, i64 -8
  %7 = load ptr, ptr %arrayidx.i, align 8
  %add.ptr.i = getelementptr inbounds ptr, ptr %7, i64 %idx.ext.i
  store ptr %add.ptr.i, ptr %6, align 8
  %8 = load ptr, ptr %0, align 8
  %9 = getelementptr ptr, ptr %8, i64 %indvars.iv.i
  %10 = getelementptr i8, ptr %9, i64 8
  %11 = load ptr, ptr %9, align 8
  %add.ptr.i.1 = getelementptr inbounds ptr, ptr %11, i64 %idx.ext.i
  store ptr %add.ptr.i.1, ptr %10, align 8
  %12 = load ptr, ptr %0, align 8
  %13 = getelementptr ptr, ptr %12, i64 %indvars.iv.i
  %14 = getelementptr i8, ptr %13, i64 16
  %arrayidx.i.2 = getelementptr i8, ptr %13, i64 8
  %15 = load ptr, ptr %arrayidx.i.2, align 8
  %add.ptr.i.2 = getelementptr inbounds ptr, ptr %15, i64 %idx.ext.i
  store ptr %add.ptr.i.2, ptr %14, align 8
  %16 = load ptr, ptr %0, align 8
  %17 = getelementptr ptr, ptr %16, i64 %indvars.iv.i
  %18 = getelementptr i8, ptr %17, i64 24
  %arrayidx.i.3 = getelementptr i8, ptr %17, i64 16
  %19 = load ptr, ptr %arrayidx.i.3, align 8
  %add.ptr.i.3 = getelementptr inbounds ptr, ptr %19, i64 %idx.ext.i
  store ptr %add.ptr.i.3, ptr %18, align 8
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4
  %niter.next.3 = add i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %get_mem3Dquant.exit.loopexit.unr-lcssa, label %for.body.i

get_mem3Dquant.exit.loopexit.unr-lcssa:           ; preds = %for.body.i, %for.body.lr.ph.i
  %indvars.iv.i.unr = phi i64 [ 1, %for.body.lr.ph.i ], [ %indvars.iv.next.i.3, %for.body.i ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %get_mem3Dquant.exit, label %for.body.i.epil

for.body.i.epil:                                  ; preds = %get_mem3Dquant.exit.loopexit.unr-lcssa, %for.body.i.epil
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.next.i.epil, %for.body.i.epil ], [ %indvars.iv.i.unr, %get_mem3Dquant.exit.loopexit.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %for.body.i.epil ], [ 0, %get_mem3Dquant.exit.loopexit.unr-lcssa ]
  %20 = load ptr, ptr %0, align 8
  %21 = getelementptr ptr, ptr %20, i64 %indvars.iv.i.epil
  %arrayidx.i.epil = getelementptr i8, ptr %21, i64 -8
  %22 = load ptr, ptr %arrayidx.i.epil, align 8
  %add.ptr.i.epil = getelementptr inbounds ptr, ptr %22, i64 %idx.ext.i
  store ptr %add.ptr.i.epil, ptr %21, align 8
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %get_mem3Dquant.exit, label %for.body.i.epil, !llvm.loop !12

get_mem3Dquant.exit:                              ; preds = %get_mem3Dquant.exit.loopexit.unr-lcssa, %for.body.i.epil, %if.end.i
  %cmp723 = icmp sgt i32 %dim0, 1
  br i1 %cmp723, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %get_mem3Dquant.exit
  %idx.ext = sext i32 %dim1 to i64
  %wide.trip.count = zext nneg i32 %dim0 to i64
  %23 = add nsw i64 %wide.trip.count, -1
  %24 = add nsw i64 %wide.trip.count, -2
  %xtraiter26 = and i64 %23, 3
  %25 = icmp ult i64 %24, 3
  br i1 %25, label %for.end.loopexit.unr-lcssa, label %for.body.lr.ph.new

for.body.lr.ph.new:                               ; preds = %for.body.lr.ph
  %unroll_iter29 = and i64 %23, -4
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph.new
  %indvars.iv = phi i64 [ 1, %for.body.lr.ph.new ], [ %indvars.iv.next.3, %for.body ]
  %niter30 = phi i64 [ 0, %for.body.lr.ph.new ], [ %niter30.next.3, %for.body ]
  %26 = load ptr, ptr %array4D, align 8
  %27 = getelementptr ptr, ptr %26, i64 %indvars.iv
  %arrayidx = getelementptr i8, ptr %27, i64 -8
  %28 = load ptr, ptr %arrayidx, align 8
  %add.ptr = getelementptr inbounds ptr, ptr %28, i64 %idx.ext
  store ptr %add.ptr, ptr %27, align 8
  %29 = load ptr, ptr %array4D, align 8
  %30 = getelementptr ptr, ptr %29, i64 %indvars.iv
  %31 = getelementptr i8, ptr %30, i64 8
  %32 = load ptr, ptr %30, align 8
  %add.ptr.1 = getelementptr inbounds ptr, ptr %32, i64 %idx.ext
  store ptr %add.ptr.1, ptr %31, align 8
  %33 = load ptr, ptr %array4D, align 8
  %34 = getelementptr ptr, ptr %33, i64 %indvars.iv
  %35 = getelementptr i8, ptr %34, i64 16
  %arrayidx.2 = getelementptr i8, ptr %34, i64 8
  %36 = load ptr, ptr %arrayidx.2, align 8
  %add.ptr.2 = getelementptr inbounds ptr, ptr %36, i64 %idx.ext
  store ptr %add.ptr.2, ptr %35, align 8
  %37 = load ptr, ptr %array4D, align 8
  %38 = getelementptr ptr, ptr %37, i64 %indvars.iv
  %39 = getelementptr i8, ptr %38, i64 24
  %arrayidx.3 = getelementptr i8, ptr %38, i64 16
  %40 = load ptr, ptr %arrayidx.3, align 8
  %add.ptr.3 = getelementptr inbounds ptr, ptr %40, i64 %idx.ext
  store ptr %add.ptr.3, ptr %39, align 8
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4
  %niter30.next.3 = add i64 %niter30, 4
  %niter30.ncmp.3 = icmp eq i64 %niter30.next.3, %unroll_iter29
  br i1 %niter30.ncmp.3, label %for.end.loopexit.unr-lcssa, label %for.body

for.end.loopexit.unr-lcssa:                       ; preds = %for.body, %for.body.lr.ph
  %indvars.iv.unr = phi i64 [ 1, %for.body.lr.ph ], [ %indvars.iv.next.3, %for.body ]
  %lcmp.mod28.not = icmp eq i64 %xtraiter26, 0
  br i1 %lcmp.mod28.not, label %for.end, label %for.body.epil

for.body.epil:                                    ; preds = %for.end.loopexit.unr-lcssa, %for.body.epil
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %for.body.epil ], [ %indvars.iv.unr, %for.end.loopexit.unr-lcssa ]
  %epil.iter27 = phi i64 [ %epil.iter27.next, %for.body.epil ], [ 0, %for.end.loopexit.unr-lcssa ]
  %41 = load ptr, ptr %array4D, align 8
  %42 = getelementptr ptr, ptr %41, i64 %indvars.iv.epil
  %arrayidx.epil = getelementptr i8, ptr %42, i64 -8
  %43 = load ptr, ptr %arrayidx.epil, align 8
  %add.ptr.epil = getelementptr inbounds ptr, ptr %43, i64 %idx.ext
  store ptr %add.ptr.epil, ptr %42, align 8
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter27.next = add i64 %epil.iter27, 1
  %epil.iter27.cmp.not = icmp eq i64 %epil.iter27.next, %xtraiter26
  br i1 %epil.iter27.cmp.not, label %for.end, label %for.body.epil, !llvm.loop !13

for.end:                                          ; preds = %for.end.loopexit.unr-lcssa, %for.body.epil, %get_mem3Dquant.exit
  %conv1.i = trunc i64 %mul.i to i32
  %conv1 = trunc i64 %mul to i32
  %add.i = add i32 %conv1.i, %conv1
  %add = add i32 %add.i, %call6.i
  ret i32 %add
}

; Function Attrs: nounwind uwtable
define dso_local i32 @get_mem5Dquant(ptr nocapture noundef %array5D, i32 noundef %dim0, i32 noundef %dim1, i32 noundef %dim2, i32 noundef %dim3, i32 noundef %dim4) local_unnamed_addr #0 {
entry:
  %conv = sext i32 %dim0 to i64
  %mul = shl nsw i64 %conv, 3
  %call = tail call noalias ptr @malloc(i64 noundef %mul) #8
  store ptr %call, ptr %array5D, align 8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call.i = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.14) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  %.pre = load ptr, ptr %array5D, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %0 = phi ptr [ %.pre, %if.then ], [ %call, %entry ]
  %mul5 = mul nsw i32 %dim1, %dim0
  %call6 = tail call i32 @get_mem4Dquant(ptr noundef %0, i32 noundef %mul5, i32 noundef %dim2, i32 noundef %dim3, i32 noundef %dim4)
  %cmp722 = icmp sgt i32 %dim0, 1
  br i1 %cmp722, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %idx.ext = sext i32 %dim1 to i64
  %wide.trip.count = zext nneg i32 %dim0 to i64
  %1 = add nsw i64 %wide.trip.count, -1
  %2 = add nsw i64 %wide.trip.count, -2
  %xtraiter = and i64 %1, 3
  %3 = icmp ult i64 %2, 3
  br i1 %3, label %for.end.loopexit.unr-lcssa, label %for.body.lr.ph.new

for.body.lr.ph.new:                               ; preds = %for.body.lr.ph
  %unroll_iter = and i64 %1, -4
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph.new
  %indvars.iv = phi i64 [ 1, %for.body.lr.ph.new ], [ %indvars.iv.next.3, %for.body ]
  %niter = phi i64 [ 0, %for.body.lr.ph.new ], [ %niter.next.3, %for.body ]
  %4 = load ptr, ptr %array5D, align 8
  %5 = getelementptr ptr, ptr %4, i64 %indvars.iv
  %arrayidx = getelementptr i8, ptr %5, i64 -8
  %6 = load ptr, ptr %arrayidx, align 8
  %add.ptr = getelementptr inbounds ptr, ptr %6, i64 %idx.ext
  store ptr %add.ptr, ptr %5, align 8
  %7 = load ptr, ptr %array5D, align 8
  %8 = getelementptr ptr, ptr %7, i64 %indvars.iv
  %9 = getelementptr i8, ptr %8, i64 8
  %10 = load ptr, ptr %8, align 8
  %add.ptr.1 = getelementptr inbounds ptr, ptr %10, i64 %idx.ext
  store ptr %add.ptr.1, ptr %9, align 8
  %11 = load ptr, ptr %array5D, align 8
  %12 = getelementptr ptr, ptr %11, i64 %indvars.iv
  %13 = getelementptr i8, ptr %12, i64 16
  %arrayidx.2 = getelementptr i8, ptr %12, i64 8
  %14 = load ptr, ptr %arrayidx.2, align 8
  %add.ptr.2 = getelementptr inbounds ptr, ptr %14, i64 %idx.ext
  store ptr %add.ptr.2, ptr %13, align 8
  %15 = load ptr, ptr %array5D, align 8
  %16 = getelementptr ptr, ptr %15, i64 %indvars.iv
  %17 = getelementptr i8, ptr %16, i64 24
  %arrayidx.3 = getelementptr i8, ptr %16, i64 16
  %18 = load ptr, ptr %arrayidx.3, align 8
  %add.ptr.3 = getelementptr inbounds ptr, ptr %18, i64 %idx.ext
  store ptr %add.ptr.3, ptr %17, align 8
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4
  %niter.next.3 = add i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %for.end.loopexit.unr-lcssa, label %for.body

for.end.loopexit.unr-lcssa:                       ; preds = %for.body, %for.body.lr.ph
  %indvars.iv.unr = phi i64 [ 1, %for.body.lr.ph ], [ %indvars.iv.next.3, %for.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.end, label %for.body.epil

for.body.epil:                                    ; preds = %for.end.loopexit.unr-lcssa, %for.body.epil
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %for.body.epil ], [ %indvars.iv.unr, %for.end.loopexit.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %for.body.epil ], [ 0, %for.end.loopexit.unr-lcssa ]
  %19 = load ptr, ptr %array5D, align 8
  %20 = getelementptr ptr, ptr %19, i64 %indvars.iv.epil
  %arrayidx.epil = getelementptr i8, ptr %20, i64 -8
  %21 = load ptr, ptr %arrayidx.epil, align 8
  %add.ptr.epil = getelementptr inbounds ptr, ptr %21, i64 %idx.ext
  store ptr %add.ptr.epil, ptr %20, align 8
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %for.end, label %for.body.epil, !llvm.loop !14

for.end:                                          ; preds = %for.end.loopexit.unr-lcssa, %for.body.epil, %if.end
  %conv1 = trunc i64 %mul to i32
  %add = add nsw i32 %call6, %conv1
  ret i32 %add
}

; Function Attrs: nounwind uwtable
define dso_local void @free_mem2Dquant(ptr noundef %array2D) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq ptr %array2D, null
  br i1 %tobool.not, label %if.else3, label %if.then

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %array2D, align 8
  %tobool1.not = icmp eq ptr %0, null
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.then
  tail call void @free(ptr noundef nonnull %0) #9
  br label %if.end

if.else:                                          ; preds = %if.then
  tail call void @error(ptr noundef nonnull @.str.15, i32 noundef 100) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  tail call void @free(ptr noundef nonnull %array2D) #9
  br label %if.end4

if.else3:                                         ; preds = %entry
  tail call void @error(ptr noundef nonnull @.str.15, i32 noundef 100) #9
  br label %if.end4

if.end4:                                          ; preds = %if.else3, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @free_mem3Dquant(ptr noundef %array3D) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq ptr %array3D, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %array3D, align 8
  %tobool.not.i = icmp eq ptr %0, null
  br i1 %tobool.not.i, label %if.else3.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  %1 = load ptr, ptr %0, align 8
  %tobool1.not.i = icmp eq ptr %1, null
  br i1 %tobool1.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.then.i
  tail call void @free(ptr noundef nonnull %1) #9
  br label %if.end.i

if.else.i:                                        ; preds = %if.then.i
  tail call void @error(ptr noundef nonnull @.str.15, i32 noundef 100) #9
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then2.i
  tail call void @free(ptr noundef nonnull %0) #9
  br label %free_mem2Dquant.exit

if.else3.i:                                       ; preds = %if.then
  tail call void @error(ptr noundef nonnull @.str.15, i32 noundef 100) #9
  br label %free_mem2Dquant.exit

free_mem2Dquant.exit:                             ; preds = %if.end.i, %if.else3.i
  tail call void @free(ptr noundef nonnull %array3D) #9
  br label %if.end

if.else:                                          ; preds = %entry
  tail call void @error(ptr noundef nonnull @.str.16, i32 noundef 100) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %free_mem2Dquant.exit
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @free_mem4Dquant(ptr noundef %array4D) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq ptr %array4D, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %array4D, align 8
  %tobool.not.i = icmp eq ptr %0, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  %1 = load ptr, ptr %0, align 8
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %if.else3.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then.i
  %2 = load ptr, ptr %1, align 8
  %tobool1.not.i.i = icmp eq ptr %2, null
  br i1 %tobool1.not.i.i, label %if.else.i.i, label %if.then2.i.i

if.then2.i.i:                                     ; preds = %if.then.i.i
  tail call void @free(ptr noundef nonnull %2) #9
  br label %if.end.i.i

if.else.i.i:                                      ; preds = %if.then.i.i
  tail call void @error(ptr noundef nonnull @.str.15, i32 noundef 100) #9
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else.i.i, %if.then2.i.i
  tail call void @free(ptr noundef nonnull %1) #9
  br label %free_mem2Dquant.exit.i

if.else3.i.i:                                     ; preds = %if.then.i
  tail call void @error(ptr noundef nonnull @.str.15, i32 noundef 100) #9
  br label %free_mem2Dquant.exit.i

free_mem2Dquant.exit.i:                           ; preds = %if.else3.i.i, %if.end.i.i
  tail call void @free(ptr noundef nonnull %0) #9
  br label %free_mem3Dquant.exit

if.else.i:                                        ; preds = %if.then
  tail call void @error(ptr noundef nonnull @.str.16, i32 noundef 100) #9
  br label %free_mem3Dquant.exit

free_mem3Dquant.exit:                             ; preds = %free_mem2Dquant.exit.i, %if.else.i
  tail call void @free(ptr noundef nonnull %array4D) #9
  br label %if.end

if.else:                                          ; preds = %entry
  tail call void @error(ptr noundef nonnull @.str.17, i32 noundef 100) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %free_mem3Dquant.exit
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @free_mem5Dquant(ptr noundef %array5D) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq ptr %array5D, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %array5D, align 8
  tail call void @free_mem4Dquant(ptr noundef %0)
  tail call void @free(ptr noundef nonnull %array5D) #9
  br label %if.end

if.else:                                          ; preds = %entry
  tail call void @error(ptr noundef nonnull @.str.18, i32 noundef 100) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @get_mem2D_spp(ptr nocapture noundef %array2D, i32 noundef %dim0, i32 noundef %dim1) local_unnamed_addr #0 {
entry:
  %conv = sext i32 %dim0 to i64
  %mul = shl nsw i64 %conv, 3
  %call = tail call noalias ptr @malloc(i64 noundef %mul) #8
  store ptr %call, ptr %array2D, align 8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call.i = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.19) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  %.pre = load ptr, ptr %array2D, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %0 = phi ptr [ %.pre, %if.then ], [ %call, %entry ]
  %mul2 = mul nsw i32 %dim1, %dim0
  %conv3 = sext i32 %mul2 to i64
  %call4 = tail call noalias ptr @calloc(i64 noundef %conv3, i64 noundef 8) #10
  store ptr %call4, ptr %0, align 8
  %cmp5 = icmp eq ptr %call4, null
  br i1 %cmp5, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  %call.i29 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.19) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end
  %cmp930 = icmp sgt i32 %dim0, 1
  br i1 %cmp930, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end8
  %idx.ext = sext i32 %dim1 to i64
  %wide.trip.count = zext nneg i32 %dim0 to i64
  %1 = add nsw i64 %wide.trip.count, -1
  %2 = add nsw i64 %wide.trip.count, -2
  %xtraiter = and i64 %1, 3
  %3 = icmp ult i64 %2, 3
  br i1 %3, label %for.end.loopexit.unr-lcssa, label %for.body.lr.ph.new

for.body.lr.ph.new:                               ; preds = %for.body.lr.ph
  %unroll_iter = and i64 %1, -4
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph.new
  %indvars.iv = phi i64 [ 1, %for.body.lr.ph.new ], [ %indvars.iv.next.3, %for.body ]
  %niter = phi i64 [ 0, %for.body.lr.ph.new ], [ %niter.next.3, %for.body ]
  %4 = load ptr, ptr %array2D, align 8
  %5 = getelementptr ptr, ptr %4, i64 %indvars.iv
  %arrayidx = getelementptr i8, ptr %5, i64 -8
  %6 = load ptr, ptr %arrayidx, align 8
  %add.ptr = getelementptr inbounds ptr, ptr %6, i64 %idx.ext
  store ptr %add.ptr, ptr %5, align 8
  %7 = load ptr, ptr %array2D, align 8
  %8 = getelementptr ptr, ptr %7, i64 %indvars.iv
  %9 = getelementptr i8, ptr %8, i64 8
  %10 = load ptr, ptr %8, align 8
  %add.ptr.1 = getelementptr inbounds ptr, ptr %10, i64 %idx.ext
  store ptr %add.ptr.1, ptr %9, align 8
  %11 = load ptr, ptr %array2D, align 8
  %12 = getelementptr ptr, ptr %11, i64 %indvars.iv
  %13 = getelementptr i8, ptr %12, i64 16
  %arrayidx.2 = getelementptr i8, ptr %12, i64 8
  %14 = load ptr, ptr %arrayidx.2, align 8
  %add.ptr.2 = getelementptr inbounds ptr, ptr %14, i64 %idx.ext
  store ptr %add.ptr.2, ptr %13, align 8
  %15 = load ptr, ptr %array2D, align 8
  %16 = getelementptr ptr, ptr %15, i64 %indvars.iv
  %17 = getelementptr i8, ptr %16, i64 24
  %arrayidx.3 = getelementptr i8, ptr %16, i64 16
  %18 = load ptr, ptr %arrayidx.3, align 8
  %add.ptr.3 = getelementptr inbounds ptr, ptr %18, i64 %idx.ext
  store ptr %add.ptr.3, ptr %17, align 8
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4
  %niter.next.3 = add i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %for.end.loopexit.unr-lcssa, label %for.body

for.end.loopexit.unr-lcssa:                       ; preds = %for.body, %for.body.lr.ph
  %indvars.iv.unr = phi i64 [ 1, %for.body.lr.ph ], [ %indvars.iv.next.3, %for.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.end, label %for.body.epil

for.body.epil:                                    ; preds = %for.end.loopexit.unr-lcssa, %for.body.epil
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %for.body.epil ], [ %indvars.iv.unr, %for.end.loopexit.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %for.body.epil ], [ 0, %for.end.loopexit.unr-lcssa ]
  %19 = load ptr, ptr %array2D, align 8
  %20 = getelementptr ptr, ptr %19, i64 %indvars.iv.epil
  %arrayidx.epil = getelementptr i8, ptr %20, i64 -8
  %21 = load ptr, ptr %arrayidx.epil, align 8
  %add.ptr.epil = getelementptr inbounds ptr, ptr %21, i64 %idx.ext
  store ptr %add.ptr.epil, ptr %20, align 8
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %for.end, label %for.body.epil, !llvm.loop !15

for.end:                                          ; preds = %for.end.loopexit.unr-lcssa, %for.body.epil, %if.end8
  %mul15 = shl i32 %dim1, 3
  %add = add i32 %mul15, 8
  %mul16 = mul i32 %add, %dim0
  ret i32 %mul16
}

; Function Attrs: nounwind uwtable
define dso_local i32 @get_mem3D_spp(ptr nocapture noundef %array3D, i32 noundef %dim0, i32 noundef %dim1, i32 noundef %dim2) local_unnamed_addr #0 {
entry:
  %conv = sext i32 %dim0 to i64
  %mul = shl nsw i64 %conv, 3
  %call = tail call noalias ptr @malloc(i64 noundef %mul) #8
  store ptr %call, ptr %array3D, align 8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call.i = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.20) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  %.pre = load ptr, ptr %array3D, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %0 = phi ptr [ %.pre, %if.then ], [ %call, %entry ]
  %mul5 = mul nsw i32 %dim1, %dim0
  %call6 = tail call i32 @get_mem2D_spp(ptr noundef %0, i32 noundef %mul5, i32 noundef %dim2)
  %cmp722 = icmp sgt i32 %dim0, 1
  br i1 %cmp722, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %idx.ext = sext i32 %dim1 to i64
  %wide.trip.count = zext nneg i32 %dim0 to i64
  %1 = add nsw i64 %wide.trip.count, -1
  %2 = add nsw i64 %wide.trip.count, -2
  %xtraiter = and i64 %1, 3
  %3 = icmp ult i64 %2, 3
  br i1 %3, label %for.end.loopexit.unr-lcssa, label %for.body.lr.ph.new

for.body.lr.ph.new:                               ; preds = %for.body.lr.ph
  %unroll_iter = and i64 %1, -4
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph.new
  %indvars.iv = phi i64 [ 1, %for.body.lr.ph.new ], [ %indvars.iv.next.3, %for.body ]
  %niter = phi i64 [ 0, %for.body.lr.ph.new ], [ %niter.next.3, %for.body ]
  %4 = load ptr, ptr %array3D, align 8
  %5 = getelementptr ptr, ptr %4, i64 %indvars.iv
  %arrayidx = getelementptr i8, ptr %5, i64 -8
  %6 = load ptr, ptr %arrayidx, align 8
  %add.ptr = getelementptr inbounds ptr, ptr %6, i64 %idx.ext
  store ptr %add.ptr, ptr %5, align 8
  %7 = load ptr, ptr %array3D, align 8
  %8 = getelementptr ptr, ptr %7, i64 %indvars.iv
  %9 = getelementptr i8, ptr %8, i64 8
  %10 = load ptr, ptr %8, align 8
  %add.ptr.1 = getelementptr inbounds ptr, ptr %10, i64 %idx.ext
  store ptr %add.ptr.1, ptr %9, align 8
  %11 = load ptr, ptr %array3D, align 8
  %12 = getelementptr ptr, ptr %11, i64 %indvars.iv
  %13 = getelementptr i8, ptr %12, i64 16
  %arrayidx.2 = getelementptr i8, ptr %12, i64 8
  %14 = load ptr, ptr %arrayidx.2, align 8
  %add.ptr.2 = getelementptr inbounds ptr, ptr %14, i64 %idx.ext
  store ptr %add.ptr.2, ptr %13, align 8
  %15 = load ptr, ptr %array3D, align 8
  %16 = getelementptr ptr, ptr %15, i64 %indvars.iv
  %17 = getelementptr i8, ptr %16, i64 24
  %arrayidx.3 = getelementptr i8, ptr %16, i64 16
  %18 = load ptr, ptr %arrayidx.3, align 8
  %add.ptr.3 = getelementptr inbounds ptr, ptr %18, i64 %idx.ext
  store ptr %add.ptr.3, ptr %17, align 8
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4
  %niter.next.3 = add i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %for.end.loopexit.unr-lcssa, label %for.body

for.end.loopexit.unr-lcssa:                       ; preds = %for.body, %for.body.lr.ph
  %indvars.iv.unr = phi i64 [ 1, %for.body.lr.ph ], [ %indvars.iv.next.3, %for.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.end, label %for.body.epil

for.body.epil:                                    ; preds = %for.end.loopexit.unr-lcssa, %for.body.epil
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %for.body.epil ], [ %indvars.iv.unr, %for.end.loopexit.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %for.body.epil ], [ 0, %for.end.loopexit.unr-lcssa ]
  %19 = load ptr, ptr %array3D, align 8
  %20 = getelementptr ptr, ptr %19, i64 %indvars.iv.epil
  %arrayidx.epil = getelementptr i8, ptr %20, i64 -8
  %21 = load ptr, ptr %arrayidx.epil, align 8
  %add.ptr.epil = getelementptr inbounds ptr, ptr %21, i64 %idx.ext
  store ptr %add.ptr.epil, ptr %20, align 8
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %for.end, label %for.body.epil, !llvm.loop !16

for.end:                                          ; preds = %for.end.loopexit.unr-lcssa, %for.body.epil, %if.end
  %conv1 = trunc i64 %mul to i32
  %add = add nsw i32 %call6, %conv1
  ret i32 %add
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @get_mem2Dmv(ptr nocapture noundef %array2D, i32 noundef %dim0, i32 noundef %dim1) local_unnamed_addr #0 {
entry:
  %conv = sext i32 %dim0 to i64
  %mul = shl nsw i64 %conv, 3
  %call = tail call noalias ptr @malloc(i64 noundef %mul) #8
  store ptr %call, ptr %array2D, align 8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call.i = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.6) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  %.pre = load ptr, ptr %array2D, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %0 = phi ptr [ %.pre, %if.then ], [ %call, %entry ]
  %mul2 = mul nsw i32 %dim1, %dim0
  %conv3 = sext i32 %mul2 to i64
  %call4 = tail call noalias ptr @calloc(i64 noundef %conv3, i64 noundef 4) #10
  store ptr %call4, ptr %0, align 8
  %cmp5 = icmp eq ptr %call4, null
  br i1 %cmp5, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  %call.i29 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.6) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end
  %cmp930 = icmp sgt i32 %dim0, 1
  br i1 %cmp930, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end8
  %idx.ext = sext i32 %dim1 to i64
  %wide.trip.count = zext nneg i32 %dim0 to i64
  %1 = add nsw i64 %wide.trip.count, -1
  %2 = add nsw i64 %wide.trip.count, -2
  %xtraiter = and i64 %1, 3
  %3 = icmp ult i64 %2, 3
  br i1 %3, label %for.end.loopexit.unr-lcssa, label %for.body.lr.ph.new

for.body.lr.ph.new:                               ; preds = %for.body.lr.ph
  %unroll_iter = and i64 %1, -4
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph.new
  %indvars.iv = phi i64 [ 1, %for.body.lr.ph.new ], [ %indvars.iv.next.3, %for.body ]
  %niter = phi i64 [ 0, %for.body.lr.ph.new ], [ %niter.next.3, %for.body ]
  %4 = load ptr, ptr %array2D, align 8
  %5 = getelementptr ptr, ptr %4, i64 %indvars.iv
  %arrayidx = getelementptr i8, ptr %5, i64 -8
  %6 = load ptr, ptr %arrayidx, align 8
  %add.ptr = getelementptr inbounds %struct.MotionVector, ptr %6, i64 %idx.ext
  store ptr %add.ptr, ptr %5, align 8
  %7 = load ptr, ptr %array2D, align 8
  %8 = getelementptr ptr, ptr %7, i64 %indvars.iv
  %9 = getelementptr i8, ptr %8, i64 8
  %10 = load ptr, ptr %8, align 8
  %add.ptr.1 = getelementptr inbounds %struct.MotionVector, ptr %10, i64 %idx.ext
  store ptr %add.ptr.1, ptr %9, align 8
  %11 = load ptr, ptr %array2D, align 8
  %12 = getelementptr ptr, ptr %11, i64 %indvars.iv
  %13 = getelementptr i8, ptr %12, i64 16
  %arrayidx.2 = getelementptr i8, ptr %12, i64 8
  %14 = load ptr, ptr %arrayidx.2, align 8
  %add.ptr.2 = getelementptr inbounds %struct.MotionVector, ptr %14, i64 %idx.ext
  store ptr %add.ptr.2, ptr %13, align 8
  %15 = load ptr, ptr %array2D, align 8
  %16 = getelementptr ptr, ptr %15, i64 %indvars.iv
  %17 = getelementptr i8, ptr %16, i64 24
  %arrayidx.3 = getelementptr i8, ptr %16, i64 16
  %18 = load ptr, ptr %arrayidx.3, align 8
  %add.ptr.3 = getelementptr inbounds %struct.MotionVector, ptr %18, i64 %idx.ext
  store ptr %add.ptr.3, ptr %17, align 8
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4
  %niter.next.3 = add i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %for.end.loopexit.unr-lcssa, label %for.body

for.end.loopexit.unr-lcssa:                       ; preds = %for.body, %for.body.lr.ph
  %indvars.iv.unr = phi i64 [ 1, %for.body.lr.ph ], [ %indvars.iv.next.3, %for.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.end, label %for.body.epil

for.body.epil:                                    ; preds = %for.end.loopexit.unr-lcssa, %for.body.epil
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %for.body.epil ], [ %indvars.iv.unr, %for.end.loopexit.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %for.body.epil ], [ 0, %for.end.loopexit.unr-lcssa ]
  %19 = load ptr, ptr %array2D, align 8
  %20 = getelementptr ptr, ptr %19, i64 %indvars.iv.epil
  %arrayidx.epil = getelementptr i8, ptr %20, i64 -8
  %21 = load ptr, ptr %arrayidx.epil, align 8
  %add.ptr.epil = getelementptr inbounds %struct.MotionVector, ptr %21, i64 %idx.ext
  store ptr %add.ptr.epil, ptr %20, align 8
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %for.end, label %for.body.epil, !llvm.loop !17

for.end:                                          ; preds = %for.end.loopexit.unr-lcssa, %for.body.epil, %if.end8
  %mul15 = shl i32 %dim1, 2
  %add = add i32 %mul15, 8
  %mul16 = mul i32 %add, %dim0
  ret i32 %mul16
}

; Function Attrs: nounwind uwtable
define dso_local i32 @get_mem3Dmv(ptr nocapture noundef %array3D, i32 noundef %dim0, i32 noundef %dim1, i32 noundef %dim2) local_unnamed_addr #0 {
entry:
  %conv = sext i32 %dim0 to i64
  %mul = shl nsw i64 %conv, 3
  %call = tail call noalias ptr @malloc(i64 noundef %mul) #8
  store ptr %call, ptr %array3D, align 8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call.i = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.21) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  %.pre = load ptr, ptr %array3D, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %0 = phi ptr [ %.pre, %if.then ], [ %call, %entry ]
  %mul5 = mul nsw i32 %dim1, %dim0
  %call6 = tail call i32 @get_mem2Dmv(ptr noundef %0, i32 noundef %mul5, i32 noundef %dim2)
  %cmp722 = icmp sgt i32 %dim0, 1
  br i1 %cmp722, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %idx.ext = sext i32 %dim1 to i64
  %wide.trip.count = zext nneg i32 %dim0 to i64
  %1 = add nsw i64 %wide.trip.count, -1
  %2 = add nsw i64 %wide.trip.count, -2
  %xtraiter = and i64 %1, 3
  %3 = icmp ult i64 %2, 3
  br i1 %3, label %for.end.loopexit.unr-lcssa, label %for.body.lr.ph.new

for.body.lr.ph.new:                               ; preds = %for.body.lr.ph
  %unroll_iter = and i64 %1, -4
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph.new
  %indvars.iv = phi i64 [ 1, %for.body.lr.ph.new ], [ %indvars.iv.next.3, %for.body ]
  %niter = phi i64 [ 0, %for.body.lr.ph.new ], [ %niter.next.3, %for.body ]
  %4 = load ptr, ptr %array3D, align 8
  %5 = getelementptr ptr, ptr %4, i64 %indvars.iv
  %arrayidx = getelementptr i8, ptr %5, i64 -8
  %6 = load ptr, ptr %arrayidx, align 8
  %add.ptr = getelementptr inbounds ptr, ptr %6, i64 %idx.ext
  store ptr %add.ptr, ptr %5, align 8
  %7 = load ptr, ptr %array3D, align 8
  %8 = getelementptr ptr, ptr %7, i64 %indvars.iv
  %9 = getelementptr i8, ptr %8, i64 8
  %10 = load ptr, ptr %8, align 8
  %add.ptr.1 = getelementptr inbounds ptr, ptr %10, i64 %idx.ext
  store ptr %add.ptr.1, ptr %9, align 8
  %11 = load ptr, ptr %array3D, align 8
  %12 = getelementptr ptr, ptr %11, i64 %indvars.iv
  %13 = getelementptr i8, ptr %12, i64 16
  %arrayidx.2 = getelementptr i8, ptr %12, i64 8
  %14 = load ptr, ptr %arrayidx.2, align 8
  %add.ptr.2 = getelementptr inbounds ptr, ptr %14, i64 %idx.ext
  store ptr %add.ptr.2, ptr %13, align 8
  %15 = load ptr, ptr %array3D, align 8
  %16 = getelementptr ptr, ptr %15, i64 %indvars.iv
  %17 = getelementptr i8, ptr %16, i64 24
  %arrayidx.3 = getelementptr i8, ptr %16, i64 16
  %18 = load ptr, ptr %arrayidx.3, align 8
  %add.ptr.3 = getelementptr inbounds ptr, ptr %18, i64 %idx.ext
  store ptr %add.ptr.3, ptr %17, align 8
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4
  %niter.next.3 = add i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %for.end.loopexit.unr-lcssa, label %for.body

for.end.loopexit.unr-lcssa:                       ; preds = %for.body, %for.body.lr.ph
  %indvars.iv.unr = phi i64 [ 1, %for.body.lr.ph ], [ %indvars.iv.next.3, %for.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.end, label %for.body.epil

for.body.epil:                                    ; preds = %for.end.loopexit.unr-lcssa, %for.body.epil
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %for.body.epil ], [ %indvars.iv.unr, %for.end.loopexit.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %for.body.epil ], [ 0, %for.end.loopexit.unr-lcssa ]
  %19 = load ptr, ptr %array3D, align 8
  %20 = getelementptr ptr, ptr %19, i64 %indvars.iv.epil
  %arrayidx.epil = getelementptr i8, ptr %20, i64 -8
  %21 = load ptr, ptr %arrayidx.epil, align 8
  %add.ptr.epil = getelementptr inbounds ptr, ptr %21, i64 %idx.ext
  store ptr %add.ptr.epil, ptr %20, align 8
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %for.end, label %for.body.epil, !llvm.loop !18

for.end:                                          ; preds = %for.end.loopexit.unr-lcssa, %for.body.epil, %if.end
  %conv1 = trunc i64 %mul to i32
  %add = add nsw i32 %call6, %conv1
  ret i32 %add
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @get_mem4Dmv(ptr nocapture noundef %array4D, i32 noundef %dim0, i32 noundef %dim1, i32 noundef %dim2, i32 noundef %dim3) local_unnamed_addr #0 {
entry:
  %conv = sext i32 %dim0 to i64
  %mul = shl nsw i64 %conv, 3
  %call = tail call noalias ptr @malloc(i64 noundef %mul) #8
  store ptr %call, ptr %array4D, align 8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call.i = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.22) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  %.pre = load ptr, ptr %array4D, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %0 = phi ptr [ %.pre, %if.then ], [ %call, %entry ]
  %mul5 = mul nsw i32 %dim1, %dim0
  %conv.i = sext i32 %mul5 to i64
  %mul.i = shl nsw i64 %conv.i, 3
  %call.i22 = tail call noalias ptr @malloc(i64 noundef %mul.i) #8
  store ptr %call.i22, ptr %0, align 8
  %cmp.i = icmp eq ptr %call.i22, null
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end
  %call.i.i = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.21) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  %.pre.i = load ptr, ptr %0, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end
  %1 = phi ptr [ %.pre.i, %if.then.i ], [ %call.i22, %if.end ]
  %mul5.i = mul nsw i32 %mul5, %dim2
  %call6.i = tail call i32 @get_mem2Dmv(ptr noundef %1, i32 noundef %mul5.i, i32 noundef %dim3)
  %cmp722.i = icmp sgt i32 %mul5, 1
  br i1 %cmp722.i, label %for.body.lr.ph.i, label %get_mem3Dmv.exit

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %idx.ext.i = sext i32 %dim2 to i64
  %wide.trip.count.i = zext nneg i32 %mul5 to i64
  %2 = add nsw i64 %wide.trip.count.i, -1
  %3 = add nsw i64 %wide.trip.count.i, -2
  %xtraiter = and i64 %2, 3
  %4 = icmp ult i64 %3, 3
  br i1 %4, label %get_mem3Dmv.exit.loopexit.unr-lcssa, label %for.body.lr.ph.i.new

for.body.lr.ph.i.new:                             ; preds = %for.body.lr.ph.i
  %unroll_iter = and i64 %2, -4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %for.body.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 1, %for.body.lr.ph.i.new ], [ %indvars.iv.next.i.3, %for.body.i ]
  %niter = phi i64 [ 0, %for.body.lr.ph.i.new ], [ %niter.next.3, %for.body.i ]
  %5 = load ptr, ptr %0, align 8
  %6 = getelementptr ptr, ptr %5, i64 %indvars.iv.i
  %arrayidx.i = getelementptr i8, ptr %6, i64 -8
  %7 = load ptr, ptr %arrayidx.i, align 8
  %add.ptr.i = getelementptr inbounds ptr, ptr %7, i64 %idx.ext.i
  store ptr %add.ptr.i, ptr %6, align 8
  %8 = load ptr, ptr %0, align 8
  %9 = getelementptr ptr, ptr %8, i64 %indvars.iv.i
  %10 = getelementptr i8, ptr %9, i64 8
  %11 = load ptr, ptr %9, align 8
  %add.ptr.i.1 = getelementptr inbounds ptr, ptr %11, i64 %idx.ext.i
  store ptr %add.ptr.i.1, ptr %10, align 8
  %12 = load ptr, ptr %0, align 8
  %13 = getelementptr ptr, ptr %12, i64 %indvars.iv.i
  %14 = getelementptr i8, ptr %13, i64 16
  %arrayidx.i.2 = getelementptr i8, ptr %13, i64 8
  %15 = load ptr, ptr %arrayidx.i.2, align 8
  %add.ptr.i.2 = getelementptr inbounds ptr, ptr %15, i64 %idx.ext.i
  store ptr %add.ptr.i.2, ptr %14, align 8
  %16 = load ptr, ptr %0, align 8
  %17 = getelementptr ptr, ptr %16, i64 %indvars.iv.i
  %18 = getelementptr i8, ptr %17, i64 24
  %arrayidx.i.3 = getelementptr i8, ptr %17, i64 16
  %19 = load ptr, ptr %arrayidx.i.3, align 8
  %add.ptr.i.3 = getelementptr inbounds ptr, ptr %19, i64 %idx.ext.i
  store ptr %add.ptr.i.3, ptr %18, align 8
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4
  %niter.next.3 = add i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %get_mem3Dmv.exit.loopexit.unr-lcssa, label %for.body.i

get_mem3Dmv.exit.loopexit.unr-lcssa:              ; preds = %for.body.i, %for.body.lr.ph.i
  %indvars.iv.i.unr = phi i64 [ 1, %for.body.lr.ph.i ], [ %indvars.iv.next.i.3, %for.body.i ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %get_mem3Dmv.exit, label %for.body.i.epil

for.body.i.epil:                                  ; preds = %get_mem3Dmv.exit.loopexit.unr-lcssa, %for.body.i.epil
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.next.i.epil, %for.body.i.epil ], [ %indvars.iv.i.unr, %get_mem3Dmv.exit.loopexit.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %for.body.i.epil ], [ 0, %get_mem3Dmv.exit.loopexit.unr-lcssa ]
  %20 = load ptr, ptr %0, align 8
  %21 = getelementptr ptr, ptr %20, i64 %indvars.iv.i.epil
  %arrayidx.i.epil = getelementptr i8, ptr %21, i64 -8
  %22 = load ptr, ptr %arrayidx.i.epil, align 8
  %add.ptr.i.epil = getelementptr inbounds ptr, ptr %22, i64 %idx.ext.i
  store ptr %add.ptr.i.epil, ptr %21, align 8
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %get_mem3Dmv.exit, label %for.body.i.epil, !llvm.loop !19

get_mem3Dmv.exit:                                 ; preds = %get_mem3Dmv.exit.loopexit.unr-lcssa, %for.body.i.epil, %if.end.i
  %cmp723 = icmp sgt i32 %dim0, 1
  br i1 %cmp723, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %get_mem3Dmv.exit
  %idx.ext = sext i32 %dim1 to i64
  %wide.trip.count = zext nneg i32 %dim0 to i64
  %23 = add nsw i64 %wide.trip.count, -1
  %24 = add nsw i64 %wide.trip.count, -2
  %xtraiter26 = and i64 %23, 3
  %25 = icmp ult i64 %24, 3
  br i1 %25, label %for.end.loopexit.unr-lcssa, label %for.body.lr.ph.new

for.body.lr.ph.new:                               ; preds = %for.body.lr.ph
  %unroll_iter29 = and i64 %23, -4
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph.new
  %indvars.iv = phi i64 [ 1, %for.body.lr.ph.new ], [ %indvars.iv.next.3, %for.body ]
  %niter30 = phi i64 [ 0, %for.body.lr.ph.new ], [ %niter30.next.3, %for.body ]
  %26 = load ptr, ptr %array4D, align 8
  %27 = getelementptr ptr, ptr %26, i64 %indvars.iv
  %arrayidx = getelementptr i8, ptr %27, i64 -8
  %28 = load ptr, ptr %arrayidx, align 8
  %add.ptr = getelementptr inbounds ptr, ptr %28, i64 %idx.ext
  store ptr %add.ptr, ptr %27, align 8
  %29 = load ptr, ptr %array4D, align 8
  %30 = getelementptr ptr, ptr %29, i64 %indvars.iv
  %31 = getelementptr i8, ptr %30, i64 8
  %32 = load ptr, ptr %30, align 8
  %add.ptr.1 = getelementptr inbounds ptr, ptr %32, i64 %idx.ext
  store ptr %add.ptr.1, ptr %31, align 8
  %33 = load ptr, ptr %array4D, align 8
  %34 = getelementptr ptr, ptr %33, i64 %indvars.iv
  %35 = getelementptr i8, ptr %34, i64 16
  %arrayidx.2 = getelementptr i8, ptr %34, i64 8
  %36 = load ptr, ptr %arrayidx.2, align 8
  %add.ptr.2 = getelementptr inbounds ptr, ptr %36, i64 %idx.ext
  store ptr %add.ptr.2, ptr %35, align 8
  %37 = load ptr, ptr %array4D, align 8
  %38 = getelementptr ptr, ptr %37, i64 %indvars.iv
  %39 = getelementptr i8, ptr %38, i64 24
  %arrayidx.3 = getelementptr i8, ptr %38, i64 16
  %40 = load ptr, ptr %arrayidx.3, align 8
  %add.ptr.3 = getelementptr inbounds ptr, ptr %40, i64 %idx.ext
  store ptr %add.ptr.3, ptr %39, align 8
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4
  %niter30.next.3 = add i64 %niter30, 4
  %niter30.ncmp.3 = icmp eq i64 %niter30.next.3, %unroll_iter29
  br i1 %niter30.ncmp.3, label %for.end.loopexit.unr-lcssa, label %for.body

for.end.loopexit.unr-lcssa:                       ; preds = %for.body, %for.body.lr.ph
  %indvars.iv.unr = phi i64 [ 1, %for.body.lr.ph ], [ %indvars.iv.next.3, %for.body ]
  %lcmp.mod28.not = icmp eq i64 %xtraiter26, 0
  br i1 %lcmp.mod28.not, label %for.end, label %for.body.epil

for.body.epil:                                    ; preds = %for.end.loopexit.unr-lcssa, %for.body.epil
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %for.body.epil ], [ %indvars.iv.unr, %for.end.loopexit.unr-lcssa ]
  %epil.iter27 = phi i64 [ %epil.iter27.next, %for.body.epil ], [ 0, %for.end.loopexit.unr-lcssa ]
  %41 = load ptr, ptr %array4D, align 8
  %42 = getelementptr ptr, ptr %41, i64 %indvars.iv.epil
  %arrayidx.epil = getelementptr i8, ptr %42, i64 -8
  %43 = load ptr, ptr %arrayidx.epil, align 8
  %add.ptr.epil = getelementptr inbounds ptr, ptr %43, i64 %idx.ext
  store ptr %add.ptr.epil, ptr %42, align 8
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter27.next = add i64 %epil.iter27, 1
  %epil.iter27.cmp.not = icmp eq i64 %epil.iter27.next, %xtraiter26
  br i1 %epil.iter27.cmp.not, label %for.end, label %for.body.epil, !llvm.loop !20

for.end:                                          ; preds = %for.end.loopexit.unr-lcssa, %for.body.epil, %get_mem3Dmv.exit
  %conv1.i = trunc i64 %mul.i to i32
  %conv1 = trunc i64 %mul to i32
  %add.i = add i32 %conv1.i, %conv1
  %add = add i32 %add.i, %call6.i
  ret i32 %add
}

; Function Attrs: nounwind uwtable
define dso_local i32 @get_mem5Dmv(ptr nocapture noundef %array5D, i32 noundef %dim0, i32 noundef %dim1, i32 noundef %dim2, i32 noundef %dim3, i32 noundef %dim4) local_unnamed_addr #0 {
entry:
  %conv = sext i32 %dim0 to i64
  %mul = shl nsw i64 %conv, 3
  %call = tail call noalias ptr @malloc(i64 noundef %mul) #8
  store ptr %call, ptr %array5D, align 8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call.i = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.23) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  %.pre = load ptr, ptr %array5D, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %0 = phi ptr [ %.pre, %if.then ], [ %call, %entry ]
  %mul5 = mul nsw i32 %dim1, %dim0
  %call6 = tail call i32 @get_mem4Dmv(ptr noundef %0, i32 noundef %mul5, i32 noundef %dim2, i32 noundef %dim3, i32 noundef %dim4)
  %cmp722 = icmp sgt i32 %dim0, 1
  br i1 %cmp722, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %idx.ext = sext i32 %dim1 to i64
  %wide.trip.count = zext nneg i32 %dim0 to i64
  %1 = add nsw i64 %wide.trip.count, -1
  %2 = add nsw i64 %wide.trip.count, -2
  %xtraiter = and i64 %1, 3
  %3 = icmp ult i64 %2, 3
  br i1 %3, label %for.end.loopexit.unr-lcssa, label %for.body.lr.ph.new

for.body.lr.ph.new:                               ; preds = %for.body.lr.ph
  %unroll_iter = and i64 %1, -4
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph.new
  %indvars.iv = phi i64 [ 1, %for.body.lr.ph.new ], [ %indvars.iv.next.3, %for.body ]
  %niter = phi i64 [ 0, %for.body.lr.ph.new ], [ %niter.next.3, %for.body ]
  %4 = load ptr, ptr %array5D, align 8
  %5 = getelementptr ptr, ptr %4, i64 %indvars.iv
  %arrayidx = getelementptr i8, ptr %5, i64 -8
  %6 = load ptr, ptr %arrayidx, align 8
  %add.ptr = getelementptr inbounds ptr, ptr %6, i64 %idx.ext
  store ptr %add.ptr, ptr %5, align 8
  %7 = load ptr, ptr %array5D, align 8
  %8 = getelementptr ptr, ptr %7, i64 %indvars.iv
  %9 = getelementptr i8, ptr %8, i64 8
  %10 = load ptr, ptr %8, align 8
  %add.ptr.1 = getelementptr inbounds ptr, ptr %10, i64 %idx.ext
  store ptr %add.ptr.1, ptr %9, align 8
  %11 = load ptr, ptr %array5D, align 8
  %12 = getelementptr ptr, ptr %11, i64 %indvars.iv
  %13 = getelementptr i8, ptr %12, i64 16
  %arrayidx.2 = getelementptr i8, ptr %12, i64 8
  %14 = load ptr, ptr %arrayidx.2, align 8
  %add.ptr.2 = getelementptr inbounds ptr, ptr %14, i64 %idx.ext
  store ptr %add.ptr.2, ptr %13, align 8
  %15 = load ptr, ptr %array5D, align 8
  %16 = getelementptr ptr, ptr %15, i64 %indvars.iv
  %17 = getelementptr i8, ptr %16, i64 24
  %arrayidx.3 = getelementptr i8, ptr %16, i64 16
  %18 = load ptr, ptr %arrayidx.3, align 8
  %add.ptr.3 = getelementptr inbounds ptr, ptr %18, i64 %idx.ext
  store ptr %add.ptr.3, ptr %17, align 8
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4
  %niter.next.3 = add i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %for.end.loopexit.unr-lcssa, label %for.body

for.end.loopexit.unr-lcssa:                       ; preds = %for.body, %for.body.lr.ph
  %indvars.iv.unr = phi i64 [ 1, %for.body.lr.ph ], [ %indvars.iv.next.3, %for.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.end, label %for.body.epil

for.body.epil:                                    ; preds = %for.end.loopexit.unr-lcssa, %for.body.epil
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %for.body.epil ], [ %indvars.iv.unr, %for.end.loopexit.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %for.body.epil ], [ 0, %for.end.loopexit.unr-lcssa ]
  %19 = load ptr, ptr %array5D, align 8
  %20 = getelementptr ptr, ptr %19, i64 %indvars.iv.epil
  %arrayidx.epil = getelementptr i8, ptr %20, i64 -8
  %21 = load ptr, ptr %arrayidx.epil, align 8
  %add.ptr.epil = getelementptr inbounds ptr, ptr %21, i64 %idx.ext
  store ptr %add.ptr.epil, ptr %20, align 8
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %for.end, label %for.body.epil, !llvm.loop !21

for.end:                                          ; preds = %for.end.loopexit.unr-lcssa, %for.body.epil, %if.end
  %conv1 = trunc i64 %mul to i32
  %add = add nsw i32 %call6, %conv1
  ret i32 %add
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @get_mem6Dmv(ptr nocapture noundef %array6D, i32 noundef %dim0, i32 noundef %dim1, i32 noundef %dim2, i32 noundef %dim3, i32 noundef %dim4, i32 noundef %dim5) local_unnamed_addr #0 {
entry:
  %conv = sext i32 %dim0 to i64
  %mul = shl nsw i64 %conv, 3
  %call = tail call noalias ptr @malloc(i64 noundef %mul) #8
  store ptr %call, ptr %array6D, align 8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call.i = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.24) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  %.pre = load ptr, ptr %array6D, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %0 = phi ptr [ %.pre, %if.then ], [ %call, %entry ]
  %mul5 = mul nsw i32 %dim1, %dim0
  %conv.i = sext i32 %mul5 to i64
  %mul.i = shl nsw i64 %conv.i, 3
  %call.i22 = tail call noalias ptr @malloc(i64 noundef %mul.i) #8
  store ptr %call.i22, ptr %0, align 8
  %cmp.i = icmp eq ptr %call.i22, null
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end
  %call.i.i = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.23) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  %.pre.i = load ptr, ptr %0, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end
  %1 = phi ptr [ %.pre.i, %if.then.i ], [ %call.i22, %if.end ]
  %mul5.i = mul nsw i32 %mul5, %dim2
  %call6.i = tail call i32 @get_mem4Dmv(ptr noundef %1, i32 noundef %mul5.i, i32 noundef %dim3, i32 noundef %dim4, i32 noundef %dim5)
  %cmp722.i = icmp sgt i32 %mul5, 1
  br i1 %cmp722.i, label %for.body.lr.ph.i, label %get_mem5Dmv.exit

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %idx.ext.i = sext i32 %dim2 to i64
  %wide.trip.count.i = zext nneg i32 %mul5 to i64
  %2 = add nsw i64 %wide.trip.count.i, -1
  %3 = add nsw i64 %wide.trip.count.i, -2
  %xtraiter = and i64 %2, 3
  %4 = icmp ult i64 %3, 3
  br i1 %4, label %get_mem5Dmv.exit.loopexit.unr-lcssa, label %for.body.lr.ph.i.new

for.body.lr.ph.i.new:                             ; preds = %for.body.lr.ph.i
  %unroll_iter = and i64 %2, -4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %for.body.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 1, %for.body.lr.ph.i.new ], [ %indvars.iv.next.i.3, %for.body.i ]
  %niter = phi i64 [ 0, %for.body.lr.ph.i.new ], [ %niter.next.3, %for.body.i ]
  %5 = load ptr, ptr %0, align 8
  %6 = getelementptr ptr, ptr %5, i64 %indvars.iv.i
  %arrayidx.i = getelementptr i8, ptr %6, i64 -8
  %7 = load ptr, ptr %arrayidx.i, align 8
  %add.ptr.i = getelementptr inbounds ptr, ptr %7, i64 %idx.ext.i
  store ptr %add.ptr.i, ptr %6, align 8
  %8 = load ptr, ptr %0, align 8
  %9 = getelementptr ptr, ptr %8, i64 %indvars.iv.i
  %10 = getelementptr i8, ptr %9, i64 8
  %11 = load ptr, ptr %9, align 8
  %add.ptr.i.1 = getelementptr inbounds ptr, ptr %11, i64 %idx.ext.i
  store ptr %add.ptr.i.1, ptr %10, align 8
  %12 = load ptr, ptr %0, align 8
  %13 = getelementptr ptr, ptr %12, i64 %indvars.iv.i
  %14 = getelementptr i8, ptr %13, i64 16
  %arrayidx.i.2 = getelementptr i8, ptr %13, i64 8
  %15 = load ptr, ptr %arrayidx.i.2, align 8
  %add.ptr.i.2 = getelementptr inbounds ptr, ptr %15, i64 %idx.ext.i
  store ptr %add.ptr.i.2, ptr %14, align 8
  %16 = load ptr, ptr %0, align 8
  %17 = getelementptr ptr, ptr %16, i64 %indvars.iv.i
  %18 = getelementptr i8, ptr %17, i64 24
  %arrayidx.i.3 = getelementptr i8, ptr %17, i64 16
  %19 = load ptr, ptr %arrayidx.i.3, align 8
  %add.ptr.i.3 = getelementptr inbounds ptr, ptr %19, i64 %idx.ext.i
  store ptr %add.ptr.i.3, ptr %18, align 8
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4
  %niter.next.3 = add i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %get_mem5Dmv.exit.loopexit.unr-lcssa, label %for.body.i

get_mem5Dmv.exit.loopexit.unr-lcssa:              ; preds = %for.body.i, %for.body.lr.ph.i
  %indvars.iv.i.unr = phi i64 [ 1, %for.body.lr.ph.i ], [ %indvars.iv.next.i.3, %for.body.i ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %get_mem5Dmv.exit, label %for.body.i.epil

for.body.i.epil:                                  ; preds = %get_mem5Dmv.exit.loopexit.unr-lcssa, %for.body.i.epil
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.next.i.epil, %for.body.i.epil ], [ %indvars.iv.i.unr, %get_mem5Dmv.exit.loopexit.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %for.body.i.epil ], [ 0, %get_mem5Dmv.exit.loopexit.unr-lcssa ]
  %20 = load ptr, ptr %0, align 8
  %21 = getelementptr ptr, ptr %20, i64 %indvars.iv.i.epil
  %arrayidx.i.epil = getelementptr i8, ptr %21, i64 -8
  %22 = load ptr, ptr %arrayidx.i.epil, align 8
  %add.ptr.i.epil = getelementptr inbounds ptr, ptr %22, i64 %idx.ext.i
  store ptr %add.ptr.i.epil, ptr %21, align 8
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %get_mem5Dmv.exit, label %for.body.i.epil, !llvm.loop !22

get_mem5Dmv.exit:                                 ; preds = %get_mem5Dmv.exit.loopexit.unr-lcssa, %for.body.i.epil, %if.end.i
  %cmp723 = icmp sgt i32 %dim0, 1
  br i1 %cmp723, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %get_mem5Dmv.exit
  %idx.ext = sext i32 %dim1 to i64
  %wide.trip.count = zext nneg i32 %dim0 to i64
  %23 = add nsw i64 %wide.trip.count, -1
  %24 = add nsw i64 %wide.trip.count, -2
  %xtraiter26 = and i64 %23, 3
  %25 = icmp ult i64 %24, 3
  br i1 %25, label %for.end.loopexit.unr-lcssa, label %for.body.lr.ph.new

for.body.lr.ph.new:                               ; preds = %for.body.lr.ph
  %unroll_iter29 = and i64 %23, -4
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph.new
  %indvars.iv = phi i64 [ 1, %for.body.lr.ph.new ], [ %indvars.iv.next.3, %for.body ]
  %niter30 = phi i64 [ 0, %for.body.lr.ph.new ], [ %niter30.next.3, %for.body ]
  %26 = load ptr, ptr %array6D, align 8
  %27 = getelementptr ptr, ptr %26, i64 %indvars.iv
  %arrayidx = getelementptr i8, ptr %27, i64 -8
  %28 = load ptr, ptr %arrayidx, align 8
  %add.ptr = getelementptr inbounds ptr, ptr %28, i64 %idx.ext
  store ptr %add.ptr, ptr %27, align 8
  %29 = load ptr, ptr %array6D, align 8
  %30 = getelementptr ptr, ptr %29, i64 %indvars.iv
  %31 = getelementptr i8, ptr %30, i64 8
  %32 = load ptr, ptr %30, align 8
  %add.ptr.1 = getelementptr inbounds ptr, ptr %32, i64 %idx.ext
  store ptr %add.ptr.1, ptr %31, align 8
  %33 = load ptr, ptr %array6D, align 8
  %34 = getelementptr ptr, ptr %33, i64 %indvars.iv
  %35 = getelementptr i8, ptr %34, i64 16
  %arrayidx.2 = getelementptr i8, ptr %34, i64 8
  %36 = load ptr, ptr %arrayidx.2, align 8
  %add.ptr.2 = getelementptr inbounds ptr, ptr %36, i64 %idx.ext
  store ptr %add.ptr.2, ptr %35, align 8
  %37 = load ptr, ptr %array6D, align 8
  %38 = getelementptr ptr, ptr %37, i64 %indvars.iv
  %39 = getelementptr i8, ptr %38, i64 24
  %arrayidx.3 = getelementptr i8, ptr %38, i64 16
  %40 = load ptr, ptr %arrayidx.3, align 8
  %add.ptr.3 = getelementptr inbounds ptr, ptr %40, i64 %idx.ext
  store ptr %add.ptr.3, ptr %39, align 8
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4
  %niter30.next.3 = add i64 %niter30, 4
  %niter30.ncmp.3 = icmp eq i64 %niter30.next.3, %unroll_iter29
  br i1 %niter30.ncmp.3, label %for.end.loopexit.unr-lcssa, label %for.body

for.end.loopexit.unr-lcssa:                       ; preds = %for.body, %for.body.lr.ph
  %indvars.iv.unr = phi i64 [ 1, %for.body.lr.ph ], [ %indvars.iv.next.3, %for.body ]
  %lcmp.mod28.not = icmp eq i64 %xtraiter26, 0
  br i1 %lcmp.mod28.not, label %for.end, label %for.body.epil

for.body.epil:                                    ; preds = %for.end.loopexit.unr-lcssa, %for.body.epil
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %for.body.epil ], [ %indvars.iv.unr, %for.end.loopexit.unr-lcssa ]
  %epil.iter27 = phi i64 [ %epil.iter27.next, %for.body.epil ], [ 0, %for.end.loopexit.unr-lcssa ]
  %41 = load ptr, ptr %array6D, align 8
  %42 = getelementptr ptr, ptr %41, i64 %indvars.iv.epil
  %arrayidx.epil = getelementptr i8, ptr %42, i64 -8
  %43 = load ptr, ptr %arrayidx.epil, align 8
  %add.ptr.epil = getelementptr inbounds ptr, ptr %43, i64 %idx.ext
  store ptr %add.ptr.epil, ptr %42, align 8
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter27.next = add i64 %epil.iter27, 1
  %epil.iter27.cmp.not = icmp eq i64 %epil.iter27.next, %xtraiter26
  br i1 %epil.iter27.cmp.not, label %for.end, label %for.body.epil, !llvm.loop !23

for.end:                                          ; preds = %for.end.loopexit.unr-lcssa, %for.body.epil, %get_mem5Dmv.exit
  %conv1.i = trunc i64 %mul.i to i32
  %conv1 = trunc i64 %mul to i32
  %add.i = add i32 %conv1.i, %conv1
  %add = add i32 %add.i, %call6.i
  ret i32 %add
}

; Function Attrs: nounwind uwtable
define dso_local i32 @get_mem7Dmv(ptr nocapture noundef %array7D, i32 noundef %dim0, i32 noundef %dim1, i32 noundef %dim2, i32 noundef %dim3, i32 noundef %dim4, i32 noundef %dim5, i32 noundef %dim6) local_unnamed_addr #0 {
entry:
  %conv = sext i32 %dim0 to i64
  %mul = shl nsw i64 %conv, 3
  %call = tail call noalias ptr @malloc(i64 noundef %mul) #8
  store ptr %call, ptr %array7D, align 8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call.i = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.25) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  %.pre = load ptr, ptr %array7D, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %0 = phi ptr [ %.pre, %if.then ], [ %call, %entry ]
  %mul5 = mul nsw i32 %dim1, %dim0
  %call6 = tail call i32 @get_mem6Dmv(ptr noundef %0, i32 noundef %mul5, i32 noundef %dim2, i32 noundef %dim3, i32 noundef %dim4, i32 noundef %dim5, i32 noundef %dim6)
  %cmp722 = icmp sgt i32 %dim0, 1
  br i1 %cmp722, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %idx.ext = sext i32 %dim1 to i64
  %wide.trip.count = zext nneg i32 %dim0 to i64
  %1 = add nsw i64 %wide.trip.count, -1
  %2 = add nsw i64 %wide.trip.count, -2
  %xtraiter = and i64 %1, 3
  %3 = icmp ult i64 %2, 3
  br i1 %3, label %for.end.loopexit.unr-lcssa, label %for.body.lr.ph.new

for.body.lr.ph.new:                               ; preds = %for.body.lr.ph
  %unroll_iter = and i64 %1, -4
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph.new
  %indvars.iv = phi i64 [ 1, %for.body.lr.ph.new ], [ %indvars.iv.next.3, %for.body ]
  %niter = phi i64 [ 0, %for.body.lr.ph.new ], [ %niter.next.3, %for.body ]
  %4 = load ptr, ptr %array7D, align 8
  %5 = getelementptr ptr, ptr %4, i64 %indvars.iv
  %arrayidx = getelementptr i8, ptr %5, i64 -8
  %6 = load ptr, ptr %arrayidx, align 8
  %add.ptr = getelementptr inbounds ptr, ptr %6, i64 %idx.ext
  store ptr %add.ptr, ptr %5, align 8
  %7 = load ptr, ptr %array7D, align 8
  %8 = getelementptr ptr, ptr %7, i64 %indvars.iv
  %9 = getelementptr i8, ptr %8, i64 8
  %10 = load ptr, ptr %8, align 8
  %add.ptr.1 = getelementptr inbounds ptr, ptr %10, i64 %idx.ext
  store ptr %add.ptr.1, ptr %9, align 8
  %11 = load ptr, ptr %array7D, align 8
  %12 = getelementptr ptr, ptr %11, i64 %indvars.iv
  %13 = getelementptr i8, ptr %12, i64 16
  %arrayidx.2 = getelementptr i8, ptr %12, i64 8
  %14 = load ptr, ptr %arrayidx.2, align 8
  %add.ptr.2 = getelementptr inbounds ptr, ptr %14, i64 %idx.ext
  store ptr %add.ptr.2, ptr %13, align 8
  %15 = load ptr, ptr %array7D, align 8
  %16 = getelementptr ptr, ptr %15, i64 %indvars.iv
  %17 = getelementptr i8, ptr %16, i64 24
  %arrayidx.3 = getelementptr i8, ptr %16, i64 16
  %18 = load ptr, ptr %arrayidx.3, align 8
  %add.ptr.3 = getelementptr inbounds ptr, ptr %18, i64 %idx.ext
  store ptr %add.ptr.3, ptr %17, align 8
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4
  %niter.next.3 = add i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %for.end.loopexit.unr-lcssa, label %for.body

for.end.loopexit.unr-lcssa:                       ; preds = %for.body, %for.body.lr.ph
  %indvars.iv.unr = phi i64 [ 1, %for.body.lr.ph ], [ %indvars.iv.next.3, %for.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.end, label %for.body.epil

for.body.epil:                                    ; preds = %for.end.loopexit.unr-lcssa, %for.body.epil
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %for.body.epil ], [ %indvars.iv.unr, %for.end.loopexit.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %for.body.epil ], [ 0, %for.end.loopexit.unr-lcssa ]
  %19 = load ptr, ptr %array7D, align 8
  %20 = getelementptr ptr, ptr %19, i64 %indvars.iv.epil
  %arrayidx.epil = getelementptr i8, ptr %20, i64 -8
  %21 = load ptr, ptr %arrayidx.epil, align 8
  %add.ptr.epil = getelementptr inbounds ptr, ptr %21, i64 %idx.ext
  store ptr %add.ptr.epil, ptr %20, align 8
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %for.end, label %for.body.epil, !llvm.loop !24

for.end:                                          ; preds = %for.end.loopexit.unr-lcssa, %for.body.epil, %if.end
  %conv1 = trunc i64 %mul to i32
  %add = add nsw i32 %call6, %conv1
  ret i32 %add
}

; Function Attrs: nounwind uwtable
define dso_local void @free_mem2D_spp(ptr noundef %array2D) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq ptr %array2D, null
  br i1 %tobool.not, label %if.else3, label %if.then

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %array2D, align 8
  %tobool1.not = icmp eq ptr %0, null
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.then
  tail call void @free(ptr noundef nonnull %0) #9
  br label %if.end

if.else:                                          ; preds = %if.then
  tail call void @error(ptr noundef nonnull @.str.26, i32 noundef 100) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  tail call void @free(ptr noundef nonnull %array2D) #9
  br label %if.end4

if.else3:                                         ; preds = %entry
  tail call void @error(ptr noundef nonnull @.str.26, i32 noundef 100) #9
  br label %if.end4

if.end4:                                          ; preds = %if.else3, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @free_mem3D_spp(ptr noundef %array3D) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq ptr %array3D, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %array3D, align 8
  %tobool.not.i = icmp eq ptr %0, null
  br i1 %tobool.not.i, label %if.else3.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  %1 = load ptr, ptr %0, align 8
  %tobool1.not.i = icmp eq ptr %1, null
  br i1 %tobool1.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.then.i
  tail call void @free(ptr noundef nonnull %1) #9
  br label %if.end.i

if.else.i:                                        ; preds = %if.then.i
  tail call void @error(ptr noundef nonnull @.str.26, i32 noundef 100) #9
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then2.i
  tail call void @free(ptr noundef nonnull %0) #9
  br label %free_mem2D_spp.exit

if.else3.i:                                       ; preds = %if.then
  tail call void @error(ptr noundef nonnull @.str.26, i32 noundef 100) #9
  br label %free_mem2D_spp.exit

free_mem2D_spp.exit:                              ; preds = %if.end.i, %if.else3.i
  tail call void @free(ptr noundef nonnull %array3D) #9
  br label %if.end

if.else:                                          ; preds = %entry
  tail call void @error(ptr noundef nonnull @.str.27, i32 noundef 100) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %free_mem2D_spp.exit
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @free_mem2Dmv(ptr noundef %array2D) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq ptr %array2D, null
  br i1 %tobool.not, label %if.else3, label %if.then

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %array2D, align 8
  %tobool1.not = icmp eq ptr %0, null
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.then
  tail call void @free(ptr noundef nonnull %0) #9
  br label %if.end

if.else:                                          ; preds = %if.then
  tail call void @error(ptr noundef nonnull @.str.28, i32 noundef 100) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  tail call void @free(ptr noundef nonnull %array2D) #9
  br label %if.end4

if.else3:                                         ; preds = %entry
  tail call void @error(ptr noundef nonnull @.str.28, i32 noundef 100) #9
  br label %if.end4

if.end4:                                          ; preds = %if.else3, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @free_mem3Dmv(ptr noundef %array3D) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq ptr %array3D, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %array3D, align 8
  %tobool.not.i = icmp eq ptr %0, null
  br i1 %tobool.not.i, label %if.else3.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  %1 = load ptr, ptr %0, align 8
  %tobool1.not.i = icmp eq ptr %1, null
  br i1 %tobool1.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.then.i
  tail call void @free(ptr noundef nonnull %1) #9
  br label %if.end.i

if.else.i:                                        ; preds = %if.then.i
  tail call void @error(ptr noundef nonnull @.str.28, i32 noundef 100) #9
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then2.i
  tail call void @free(ptr noundef nonnull %0) #9
  br label %free_mem2Dmv.exit

if.else3.i:                                       ; preds = %if.then
  tail call void @error(ptr noundef nonnull @.str.28, i32 noundef 100) #9
  br label %free_mem2Dmv.exit

free_mem2Dmv.exit:                                ; preds = %if.end.i, %if.else3.i
  tail call void @free(ptr noundef nonnull %array3D) #9
  br label %if.end

if.else:                                          ; preds = %entry
  tail call void @error(ptr noundef nonnull @.str.29, i32 noundef 100) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %free_mem2Dmv.exit
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @free_mem4Dmv(ptr noundef %array4D) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq ptr %array4D, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %array4D, align 8
  %tobool.not.i = icmp eq ptr %0, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  %1 = load ptr, ptr %0, align 8
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %if.else3.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then.i
  %2 = load ptr, ptr %1, align 8
  %tobool1.not.i.i = icmp eq ptr %2, null
  br i1 %tobool1.not.i.i, label %if.else.i.i, label %if.then2.i.i

if.then2.i.i:                                     ; preds = %if.then.i.i
  tail call void @free(ptr noundef nonnull %2) #9
  br label %if.end.i.i

if.else.i.i:                                      ; preds = %if.then.i.i
  tail call void @error(ptr noundef nonnull @.str.28, i32 noundef 100) #9
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else.i.i, %if.then2.i.i
  tail call void @free(ptr noundef nonnull %1) #9
  br label %free_mem2Dmv.exit.i

if.else3.i.i:                                     ; preds = %if.then.i
  tail call void @error(ptr noundef nonnull @.str.28, i32 noundef 100) #9
  br label %free_mem2Dmv.exit.i

free_mem2Dmv.exit.i:                              ; preds = %if.else3.i.i, %if.end.i.i
  tail call void @free(ptr noundef nonnull %0) #9
  br label %free_mem3Dmv.exit

if.else.i:                                        ; preds = %if.then
  tail call void @error(ptr noundef nonnull @.str.29, i32 noundef 100) #9
  br label %free_mem3Dmv.exit

free_mem3Dmv.exit:                                ; preds = %free_mem2Dmv.exit.i, %if.else.i
  tail call void @free(ptr noundef nonnull %array4D) #9
  br label %if.end

if.else:                                          ; preds = %entry
  tail call void @error(ptr noundef nonnull @.str.30, i32 noundef 100) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %free_mem3Dmv.exit
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @free_mem5Dmv(ptr noundef %array5D) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq ptr %array5D, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %array5D, align 8
  tail call void @free_mem4Dmv(ptr noundef %0)
  tail call void @free(ptr noundef nonnull %array5D) #9
  br label %if.end

if.else:                                          ; preds = %entry
  tail call void @error(ptr noundef nonnull @.str.31, i32 noundef 100) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @free_mem6Dmv(ptr noundef %array6D) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq ptr %array6D, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %array6D, align 8
  %tobool.not.i = icmp eq ptr %0, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  %1 = load ptr, ptr %0, align 8
  tail call void @free_mem4Dmv(ptr noundef %1)
  tail call void @free(ptr noundef nonnull %0) #9
  br label %free_mem5Dmv.exit

if.else.i:                                        ; preds = %if.then
  tail call void @error(ptr noundef nonnull @.str.31, i32 noundef 100) #9
  br label %free_mem5Dmv.exit

free_mem5Dmv.exit:                                ; preds = %if.then.i, %if.else.i
  tail call void @free(ptr noundef nonnull %array6D) #9
  br label %if.end

if.else:                                          ; preds = %entry
  tail call void @error(ptr noundef nonnull @.str.32, i32 noundef 100) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %free_mem5Dmv.exit
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @free_mem7Dmv(ptr noundef %array7D) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq ptr %array7D, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %array7D, align 8
  %tobool.not.i = icmp eq ptr %0, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  %1 = load ptr, ptr %0, align 8
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then.i
  %2 = load ptr, ptr %1, align 8
  tail call void @free_mem4Dmv(ptr noundef %2)
  tail call void @free(ptr noundef nonnull %1) #9
  br label %free_mem5Dmv.exit.i

if.else.i.i:                                      ; preds = %if.then.i
  tail call void @error(ptr noundef nonnull @.str.31, i32 noundef 100) #9
  br label %free_mem5Dmv.exit.i

free_mem5Dmv.exit.i:                              ; preds = %if.else.i.i, %if.then.i.i
  tail call void @free(ptr noundef nonnull %0) #9
  br label %free_mem6Dmv.exit

if.else.i:                                        ; preds = %if.then
  tail call void @error(ptr noundef nonnull @.str.32, i32 noundef 100) #9
  br label %free_mem6Dmv.exit

free_mem6Dmv.exit:                                ; preds = %free_mem5Dmv.exit.i, %if.else.i
  tail call void @free(ptr noundef nonnull %array7D) #9
  br label %if.end

if.else:                                          ; preds = %entry
  tail call void @error(ptr noundef nonnull @.str.33, i32 noundef 100) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %free_mem6Dmv.exit
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @get_mem1Dpel(ptr nocapture noundef writeonly %array1D, i32 noundef %dim0) local_unnamed_addr #0 {
entry:
  %conv = sext i32 %dim0 to i64
  %call = tail call noalias ptr @calloc(i64 noundef %conv, i64 noundef 2) #10
  store ptr %call, ptr %array1D, align 8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call.i = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.34) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %mul = shl i32 %dim0, 1
  %add = add i32 %mul, 8
  ret i32 %add
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @get_mem2Dpel(ptr nocapture noundef %array2D, i32 noundef %dim0, i32 noundef %dim1) local_unnamed_addr #0 {
entry:
  %conv = sext i32 %dim0 to i64
  %mul = shl nsw i64 %conv, 3
  %call = tail call noalias ptr @malloc(i64 noundef %mul) #8
  store ptr %call, ptr %array2D, align 8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call.i = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.35) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  %.pre = load ptr, ptr %array2D, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %0 = phi ptr [ %.pre, %if.then ], [ %call, %entry ]
  %mul2 = mul nsw i32 %dim1, %dim0
  %conv3 = sext i32 %mul2 to i64
  %call4 = tail call noalias ptr @calloc(i64 noundef %conv3, i64 noundef 2) #10
  store ptr %call4, ptr %0, align 8
  %cmp5 = icmp eq ptr %call4, null
  br i1 %cmp5, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  %call.i29 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.35) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end
  %cmp930 = icmp sgt i32 %dim0, 1
  br i1 %cmp930, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end8
  %idx.ext = sext i32 %dim1 to i64
  %wide.trip.count = zext nneg i32 %dim0 to i64
  %1 = add nsw i64 %wide.trip.count, -1
  %2 = add nsw i64 %wide.trip.count, -2
  %xtraiter = and i64 %1, 3
  %3 = icmp ult i64 %2, 3
  br i1 %3, label %for.end.loopexit.unr-lcssa, label %for.body.lr.ph.new

for.body.lr.ph.new:                               ; preds = %for.body.lr.ph
  %unroll_iter = and i64 %1, -4
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph.new
  %indvars.iv = phi i64 [ 1, %for.body.lr.ph.new ], [ %indvars.iv.next.3, %for.body ]
  %niter = phi i64 [ 0, %for.body.lr.ph.new ], [ %niter.next.3, %for.body ]
  %4 = load ptr, ptr %array2D, align 8
  %5 = getelementptr ptr, ptr %4, i64 %indvars.iv
  %arrayidx = getelementptr i8, ptr %5, i64 -8
  %6 = load ptr, ptr %arrayidx, align 8
  %add.ptr = getelementptr inbounds i16, ptr %6, i64 %idx.ext
  store ptr %add.ptr, ptr %5, align 8
  %7 = load ptr, ptr %array2D, align 8
  %8 = getelementptr ptr, ptr %7, i64 %indvars.iv
  %9 = getelementptr i8, ptr %8, i64 8
  %10 = load ptr, ptr %8, align 8
  %add.ptr.1 = getelementptr inbounds i16, ptr %10, i64 %idx.ext
  store ptr %add.ptr.1, ptr %9, align 8
  %11 = load ptr, ptr %array2D, align 8
  %12 = getelementptr ptr, ptr %11, i64 %indvars.iv
  %13 = getelementptr i8, ptr %12, i64 16
  %arrayidx.2 = getelementptr i8, ptr %12, i64 8
  %14 = load ptr, ptr %arrayidx.2, align 8
  %add.ptr.2 = getelementptr inbounds i16, ptr %14, i64 %idx.ext
  store ptr %add.ptr.2, ptr %13, align 8
  %15 = load ptr, ptr %array2D, align 8
  %16 = getelementptr ptr, ptr %15, i64 %indvars.iv
  %17 = getelementptr i8, ptr %16, i64 24
  %arrayidx.3 = getelementptr i8, ptr %16, i64 16
  %18 = load ptr, ptr %arrayidx.3, align 8
  %add.ptr.3 = getelementptr inbounds i16, ptr %18, i64 %idx.ext
  store ptr %add.ptr.3, ptr %17, align 8
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4
  %niter.next.3 = add i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %for.end.loopexit.unr-lcssa, label %for.body

for.end.loopexit.unr-lcssa:                       ; preds = %for.body, %for.body.lr.ph
  %indvars.iv.unr = phi i64 [ 1, %for.body.lr.ph ], [ %indvars.iv.next.3, %for.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.end, label %for.body.epil

for.body.epil:                                    ; preds = %for.end.loopexit.unr-lcssa, %for.body.epil
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %for.body.epil ], [ %indvars.iv.unr, %for.end.loopexit.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %for.body.epil ], [ 0, %for.end.loopexit.unr-lcssa ]
  %19 = load ptr, ptr %array2D, align 8
  %20 = getelementptr ptr, ptr %19, i64 %indvars.iv.epil
  %arrayidx.epil = getelementptr i8, ptr %20, i64 -8
  %21 = load ptr, ptr %arrayidx.epil, align 8
  %add.ptr.epil = getelementptr inbounds i16, ptr %21, i64 %idx.ext
  store ptr %add.ptr.epil, ptr %20, align 8
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %for.end, label %for.body.epil, !llvm.loop !25

for.end:                                          ; preds = %for.end.loopexit.unr-lcssa, %for.body.epil, %if.end8
  %mul15 = shl i32 %dim1, 1
  %add = add i32 %mul15, 8
  %mul16 = mul i32 %add, %dim0
  ret i32 %mul16
}

; Function Attrs: nounwind uwtable
define dso_local i32 @get_mem2DpelWithPad(ptr nocapture noundef %array2D, i32 noundef %dim0, i32 noundef %dim1, i32 noundef %iPadY, i32 noundef %iPadX) local_unnamed_addr #0 {
entry:
  %mul = shl nsw i32 %iPadY, 1
  %add = add nsw i32 %mul, %dim0
  %mul1 = shl nsw i32 %iPadX, 1
  %add2 = add nsw i32 %mul1, %dim1
  %conv = sext i32 %add to i64
  %mul3 = shl nsw i64 %conv, 3
  %call = tail call noalias ptr @malloc(i64 noundef %mul3) #8
  store ptr %call, ptr %array2D, align 8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call.i = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.36) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  %.pre = load ptr, ptr %array2D, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %0 = phi ptr [ %.pre, %if.then ], [ %call, %entry ]
  %mul5 = mul nsw i32 %add2, %add
  %conv6 = sext i32 %mul5 to i64
  %call7 = tail call noalias ptr @calloc(i64 noundef %conv6, i64 noundef 2) #10
  store ptr %call7, ptr %0, align 8
  %cmp8 = icmp eq ptr %call7, null
  br i1 %cmp8, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end
  %call.i42 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.36) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end
  %1 = load ptr, ptr %array2D, align 8
  %2 = load ptr, ptr %1, align 8
  %idx.ext = sext i32 %iPadX to i64
  %add.ptr = getelementptr inbounds i16, ptr %2, i64 %idx.ext
  store ptr %add.ptr, ptr %1, align 8
  %cmp1343 = icmp sgt i32 %add, 1
  br i1 %cmp1343, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end11
  %3 = load ptr, ptr %array2D, align 8
  %4 = load ptr, ptr %3, align 8
  %idx.ext15 = sext i32 %add2 to i64
  %wide.trip.count = zext nneg i32 %add to i64
  %5 = add nsw i64 %wide.trip.count, -1
  %6 = add nsw i64 %wide.trip.count, -2
  %xtraiter = and i64 %5, 3
  %7 = icmp ult i64 %6, 3
  br i1 %7, label %for.end.loopexit.unr-lcssa, label %for.body.lr.ph.new

for.body.lr.ph.new:                               ; preds = %for.body.lr.ph
  %unroll_iter = and i64 %5, -4
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph.new
  %indvars.iv = phi i64 [ 1, %for.body.lr.ph.new ], [ %indvars.iv.next.3, %for.body ]
  %curr.044 = phi ptr [ %4, %for.body.lr.ph.new ], [ %add.ptr16.3, %for.body ]
  %niter = phi i64 [ 0, %for.body.lr.ph.new ], [ %niter.next.3, %for.body ]
  %add.ptr16 = getelementptr inbounds i16, ptr %curr.044, i64 %idx.ext15
  %8 = load ptr, ptr %array2D, align 8
  %arrayidx17 = getelementptr inbounds ptr, ptr %8, i64 %indvars.iv
  store ptr %add.ptr16, ptr %arrayidx17, align 8
  %add.ptr16.1 = getelementptr inbounds i16, ptr %add.ptr16, i64 %idx.ext15
  %9 = load ptr, ptr %array2D, align 8
  %10 = getelementptr inbounds ptr, ptr %9, i64 %indvars.iv
  %arrayidx17.1 = getelementptr inbounds i8, ptr %10, i64 8
  store ptr %add.ptr16.1, ptr %arrayidx17.1, align 8
  %add.ptr16.2 = getelementptr inbounds i16, ptr %add.ptr16.1, i64 %idx.ext15
  %11 = load ptr, ptr %array2D, align 8
  %12 = getelementptr inbounds ptr, ptr %11, i64 %indvars.iv
  %arrayidx17.2 = getelementptr inbounds i8, ptr %12, i64 16
  store ptr %add.ptr16.2, ptr %arrayidx17.2, align 8
  %add.ptr16.3 = getelementptr inbounds i16, ptr %add.ptr16.2, i64 %idx.ext15
  %13 = load ptr, ptr %array2D, align 8
  %14 = getelementptr inbounds ptr, ptr %13, i64 %indvars.iv
  %arrayidx17.3 = getelementptr inbounds i8, ptr %14, i64 24
  store ptr %add.ptr16.3, ptr %arrayidx17.3, align 8
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4
  %niter.next.3 = add i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %for.end.loopexit.unr-lcssa, label %for.body

for.end.loopexit.unr-lcssa:                       ; preds = %for.body, %for.body.lr.ph
  %indvars.iv.unr = phi i64 [ 1, %for.body.lr.ph ], [ %indvars.iv.next.3, %for.body ]
  %curr.044.unr = phi ptr [ %4, %for.body.lr.ph ], [ %add.ptr16.3, %for.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.end, label %for.body.epil

for.body.epil:                                    ; preds = %for.end.loopexit.unr-lcssa, %for.body.epil
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %for.body.epil ], [ %indvars.iv.unr, %for.end.loopexit.unr-lcssa ]
  %curr.044.epil = phi ptr [ %add.ptr16.epil, %for.body.epil ], [ %curr.044.unr, %for.end.loopexit.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %for.body.epil ], [ 0, %for.end.loopexit.unr-lcssa ]
  %add.ptr16.epil = getelementptr inbounds i16, ptr %curr.044.epil, i64 %idx.ext15
  %15 = load ptr, ptr %array2D, align 8
  %arrayidx17.epil = getelementptr inbounds ptr, ptr %15, i64 %indvars.iv.epil
  store ptr %add.ptr16.epil, ptr %arrayidx17.epil, align 8
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %for.end, label %for.body.epil, !llvm.loop !26

for.end:                                          ; preds = %for.end.loopexit.unr-lcssa, %for.body.epil, %if.end11
  %16 = load ptr, ptr %array2D, align 8
  %idxprom18 = sext i32 %iPadY to i64
  %arrayidx19 = getelementptr inbounds ptr, ptr %16, i64 %idxprom18
  store ptr %arrayidx19, ptr %array2D, align 8
  %mul22 = shl i32 %add2, 1
  %add23 = add i32 %mul22, 8
  %mul24 = mul i32 %add23, %add
  ret i32 %mul24
}

; Function Attrs: nounwind uwtable
define dso_local i32 @get_mem3Dpel(ptr nocapture noundef %array3D, i32 noundef %dim0, i32 noundef %dim1, i32 noundef %dim2) local_unnamed_addr #0 {
entry:
  %conv = sext i32 %dim0 to i64
  %mul = shl nsw i64 %conv, 3
  %call = tail call noalias ptr @malloc(i64 noundef %mul) #8
  store ptr %call, ptr %array3D, align 8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call.i = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.37) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  %.pre = load ptr, ptr %array3D, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %0 = phi ptr [ %.pre, %if.then ], [ %call, %entry ]
  %mul5 = mul nsw i32 %dim1, %dim0
  %call6 = tail call i32 @get_mem2Dpel(ptr noundef %0, i32 noundef %mul5, i32 noundef %dim2)
  %cmp722 = icmp sgt i32 %dim0, 1
  br i1 %cmp722, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %idx.ext = sext i32 %dim1 to i64
  %wide.trip.count = zext nneg i32 %dim0 to i64
  %1 = add nsw i64 %wide.trip.count, -1
  %2 = add nsw i64 %wide.trip.count, -2
  %xtraiter = and i64 %1, 3
  %3 = icmp ult i64 %2, 3
  br i1 %3, label %for.end.loopexit.unr-lcssa, label %for.body.lr.ph.new

for.body.lr.ph.new:                               ; preds = %for.body.lr.ph
  %unroll_iter = and i64 %1, -4
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph.new
  %indvars.iv = phi i64 [ 1, %for.body.lr.ph.new ], [ %indvars.iv.next.3, %for.body ]
  %niter = phi i64 [ 0, %for.body.lr.ph.new ], [ %niter.next.3, %for.body ]
  %4 = load ptr, ptr %array3D, align 8
  %5 = getelementptr ptr, ptr %4, i64 %indvars.iv
  %arrayidx = getelementptr i8, ptr %5, i64 -8
  %6 = load ptr, ptr %arrayidx, align 8
  %add.ptr = getelementptr inbounds ptr, ptr %6, i64 %idx.ext
  store ptr %add.ptr, ptr %5, align 8
  %7 = load ptr, ptr %array3D, align 8
  %8 = getelementptr ptr, ptr %7, i64 %indvars.iv
  %9 = getelementptr i8, ptr %8, i64 8
  %10 = load ptr, ptr %8, align 8
  %add.ptr.1 = getelementptr inbounds ptr, ptr %10, i64 %idx.ext
  store ptr %add.ptr.1, ptr %9, align 8
  %11 = load ptr, ptr %array3D, align 8
  %12 = getelementptr ptr, ptr %11, i64 %indvars.iv
  %13 = getelementptr i8, ptr %12, i64 16
  %arrayidx.2 = getelementptr i8, ptr %12, i64 8
  %14 = load ptr, ptr %arrayidx.2, align 8
  %add.ptr.2 = getelementptr inbounds ptr, ptr %14, i64 %idx.ext
  store ptr %add.ptr.2, ptr %13, align 8
  %15 = load ptr, ptr %array3D, align 8
  %16 = getelementptr ptr, ptr %15, i64 %indvars.iv
  %17 = getelementptr i8, ptr %16, i64 24
  %arrayidx.3 = getelementptr i8, ptr %16, i64 16
  %18 = load ptr, ptr %arrayidx.3, align 8
  %add.ptr.3 = getelementptr inbounds ptr, ptr %18, i64 %idx.ext
  store ptr %add.ptr.3, ptr %17, align 8
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4
  %niter.next.3 = add i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %for.end.loopexit.unr-lcssa, label %for.body

for.end.loopexit.unr-lcssa:                       ; preds = %for.body, %for.body.lr.ph
  %indvars.iv.unr = phi i64 [ 1, %for.body.lr.ph ], [ %indvars.iv.next.3, %for.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.end, label %for.body.epil

for.body.epil:                                    ; preds = %for.end.loopexit.unr-lcssa, %for.body.epil
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %for.body.epil ], [ %indvars.iv.unr, %for.end.loopexit.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %for.body.epil ], [ 0, %for.end.loopexit.unr-lcssa ]
  %19 = load ptr, ptr %array3D, align 8
  %20 = getelementptr ptr, ptr %19, i64 %indvars.iv.epil
  %arrayidx.epil = getelementptr i8, ptr %20, i64 -8
  %21 = load ptr, ptr %arrayidx.epil, align 8
  %add.ptr.epil = getelementptr inbounds ptr, ptr %21, i64 %idx.ext
  store ptr %add.ptr.epil, ptr %20, align 8
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %for.end, label %for.body.epil, !llvm.loop !27

for.end:                                          ; preds = %for.end.loopexit.unr-lcssa, %for.body.epil, %if.end
  %conv1 = trunc i64 %mul to i32
  %add = add nsw i32 %call6, %conv1
  ret i32 %add
}

; Function Attrs: nounwind uwtable
define dso_local i32 @get_mem3DpelWithPad(ptr nocapture noundef %array3D, i32 noundef %dim0, i32 noundef %dim1, i32 noundef %dim2, i32 noundef %iPadY, i32 noundef %iPadX) local_unnamed_addr #0 {
entry:
  %conv = sext i32 %dim0 to i64
  %mul = shl nsw i64 %conv, 3
  %call = tail call noalias ptr @malloc(i64 noundef %mul) #8
  store ptr %call, ptr %array3D, align 8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call.i = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.38) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  %.pre = load ptr, ptr %array3D, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %0 = phi ptr [ %.pre, %if.then ], [ %call, %entry ]
  %mul5 = mul nsw i32 %dim1, %dim0
  %sub = shl i32 %dim0, 1
  %mul6 = add i32 %sub, -2
  %mul7 = mul nsw i32 %mul6, %iPadY
  %add = add nsw i32 %mul7, %mul5
  %call8 = tail call i32 @get_mem2DpelWithPad(ptr noundef %0, i32 noundef %add, i32 noundef %dim2, i32 noundef %iPadY, i32 noundef %iPadX)
  %cmp1031 = icmp sgt i32 %dim0, 1
  br i1 %cmp1031, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %mul13 = shl nsw i32 %iPadY, 1
  %add14 = add nsw i32 %mul13, %dim1
  %idx.ext = sext i32 %add14 to i64
  %wide.trip.count = zext nneg i32 %dim0 to i64
  %1 = add nsw i64 %wide.trip.count, -1
  %2 = add nsw i64 %wide.trip.count, -2
  %xtraiter = and i64 %1, 3
  %3 = icmp ult i64 %2, 3
  br i1 %3, label %for.end.loopexit.unr-lcssa, label %for.body.lr.ph.new

for.body.lr.ph.new:                               ; preds = %for.body.lr.ph
  %unroll_iter = and i64 %1, -4
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph.new
  %indvars.iv = phi i64 [ 1, %for.body.lr.ph.new ], [ %indvars.iv.next.3, %for.body ]
  %niter = phi i64 [ 0, %for.body.lr.ph.new ], [ %niter.next.3, %for.body ]
  %4 = load ptr, ptr %array3D, align 8
  %5 = getelementptr ptr, ptr %4, i64 %indvars.iv
  %arrayidx = getelementptr i8, ptr %5, i64 -8
  %6 = load ptr, ptr %arrayidx, align 8
  %add.ptr = getelementptr inbounds ptr, ptr %6, i64 %idx.ext
  store ptr %add.ptr, ptr %5, align 8
  %7 = load ptr, ptr %array3D, align 8
  %8 = getelementptr ptr, ptr %7, i64 %indvars.iv
  %9 = getelementptr i8, ptr %8, i64 8
  %10 = load ptr, ptr %8, align 8
  %add.ptr.1 = getelementptr inbounds ptr, ptr %10, i64 %idx.ext
  store ptr %add.ptr.1, ptr %9, align 8
  %11 = load ptr, ptr %array3D, align 8
  %12 = getelementptr ptr, ptr %11, i64 %indvars.iv
  %13 = getelementptr i8, ptr %12, i64 16
  %arrayidx.2 = getelementptr i8, ptr %12, i64 8
  %14 = load ptr, ptr %arrayidx.2, align 8
  %add.ptr.2 = getelementptr inbounds ptr, ptr %14, i64 %idx.ext
  store ptr %add.ptr.2, ptr %13, align 8
  %15 = load ptr, ptr %array3D, align 8
  %16 = getelementptr ptr, ptr %15, i64 %indvars.iv
  %17 = getelementptr i8, ptr %16, i64 24
  %arrayidx.3 = getelementptr i8, ptr %16, i64 16
  %18 = load ptr, ptr %arrayidx.3, align 8
  %add.ptr.3 = getelementptr inbounds ptr, ptr %18, i64 %idx.ext
  store ptr %add.ptr.3, ptr %17, align 8
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4
  %niter.next.3 = add i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %for.end.loopexit.unr-lcssa, label %for.body

for.end.loopexit.unr-lcssa:                       ; preds = %for.body, %for.body.lr.ph
  %indvars.iv.unr = phi i64 [ 1, %for.body.lr.ph ], [ %indvars.iv.next.3, %for.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.end, label %for.body.epil

for.body.epil:                                    ; preds = %for.end.loopexit.unr-lcssa, %for.body.epil
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %for.body.epil ], [ %indvars.iv.unr, %for.end.loopexit.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %for.body.epil ], [ 0, %for.end.loopexit.unr-lcssa ]
  %19 = load ptr, ptr %array3D, align 8
  %20 = getelementptr ptr, ptr %19, i64 %indvars.iv.epil
  %arrayidx.epil = getelementptr i8, ptr %20, i64 -8
  %21 = load ptr, ptr %arrayidx.epil, align 8
  %add.ptr.epil = getelementptr inbounds ptr, ptr %21, i64 %idx.ext
  store ptr %add.ptr.epil, ptr %20, align 8
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %for.end, label %for.body.epil, !llvm.loop !28

for.end:                                          ; preds = %for.end.loopexit.unr-lcssa, %for.body.epil, %if.end
  %conv1 = trunc i64 %mul to i32
  %add9 = add nsw i32 %call8, %conv1
  ret i32 %add9
}

; Function Attrs: nounwind uwtable
define dso_local i32 @get_mem3DpelWithPadSeparately(ptr nocapture noundef %array3D, i32 noundef %dim0, i32 noundef %dim1, i32 noundef %dim2, i32 noundef %iPadY, i32 noundef %iPadX) local_unnamed_addr #0 {
entry:
  %conv = sext i32 %dim0 to i64
  %mul = shl nsw i64 %conv, 3
  %conv1 = trunc i64 %mul to i32
  %call = tail call noalias ptr @malloc(i64 noundef %mul) #8
  store ptr %call, ptr %array3D, align 8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call.i = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.39) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %cmp514 = icmp sgt i32 %dim0, 0
  br i1 %cmp514, label %for.body.preheader, label %for.end

for.body.preheader:                               ; preds = %if.end
  %wide.trip.count = zext nneg i32 %dim0 to i64
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.body ]
  %mem_size.016 = phi i32 [ %conv1, %for.body.preheader ], [ %add, %for.body ]
  %0 = load ptr, ptr %array3D, align 8
  %add.ptr = getelementptr inbounds ptr, ptr %0, i64 %indvars.iv
  %call7 = tail call i32 @get_mem2DpelWithPad(ptr noundef %add.ptr, i32 noundef %dim1, i32 noundef %dim2, i32 noundef %iPadY, i32 noundef %iPadX)
  %add = add nsw i32 %call7, %mem_size.016
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %if.end
  %mem_size.0.lcssa = phi i32 [ %conv1, %if.end ], [ %add, %for.body ]
  ret i32 %mem_size.0.lcssa
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @get_mem4Dpel(ptr nocapture noundef %array4D, i32 noundef %dim0, i32 noundef %dim1, i32 noundef %dim2, i32 noundef %dim3) local_unnamed_addr #0 {
entry:
  %conv = sext i32 %dim0 to i64
  %mul = shl nsw i64 %conv, 3
  %call = tail call noalias ptr @malloc(i64 noundef %mul) #8
  store ptr %call, ptr %array4D, align 8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call.i = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.22) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  %.pre = load ptr, ptr %array4D, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %0 = phi ptr [ %.pre, %if.then ], [ %call, %entry ]
  %mul5 = mul nsw i32 %dim1, %dim0
  %conv.i = sext i32 %mul5 to i64
  %mul.i = shl nsw i64 %conv.i, 3
  %call.i22 = tail call noalias ptr @malloc(i64 noundef %mul.i) #8
  store ptr %call.i22, ptr %0, align 8
  %cmp.i = icmp eq ptr %call.i22, null
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end
  %call.i.i = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.37) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  %.pre.i = load ptr, ptr %0, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end
  %1 = phi ptr [ %.pre.i, %if.then.i ], [ %call.i22, %if.end ]
  %mul5.i = mul nsw i32 %mul5, %dim2
  %call6.i = tail call i32 @get_mem2Dpel(ptr noundef %1, i32 noundef %mul5.i, i32 noundef %dim3)
  %cmp722.i = icmp sgt i32 %mul5, 1
  br i1 %cmp722.i, label %for.body.lr.ph.i, label %get_mem3Dpel.exit

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %idx.ext.i = sext i32 %dim2 to i64
  %wide.trip.count.i = zext nneg i32 %mul5 to i64
  %2 = add nsw i64 %wide.trip.count.i, -1
  %3 = add nsw i64 %wide.trip.count.i, -2
  %xtraiter = and i64 %2, 3
  %4 = icmp ult i64 %3, 3
  br i1 %4, label %get_mem3Dpel.exit.loopexit.unr-lcssa, label %for.body.lr.ph.i.new

for.body.lr.ph.i.new:                             ; preds = %for.body.lr.ph.i
  %unroll_iter = and i64 %2, -4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %for.body.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 1, %for.body.lr.ph.i.new ], [ %indvars.iv.next.i.3, %for.body.i ]
  %niter = phi i64 [ 0, %for.body.lr.ph.i.new ], [ %niter.next.3, %for.body.i ]
  %5 = load ptr, ptr %0, align 8
  %6 = getelementptr ptr, ptr %5, i64 %indvars.iv.i
  %arrayidx.i = getelementptr i8, ptr %6, i64 -8
  %7 = load ptr, ptr %arrayidx.i, align 8
  %add.ptr.i = getelementptr inbounds ptr, ptr %7, i64 %idx.ext.i
  store ptr %add.ptr.i, ptr %6, align 8
  %8 = load ptr, ptr %0, align 8
  %9 = getelementptr ptr, ptr %8, i64 %indvars.iv.i
  %10 = getelementptr i8, ptr %9, i64 8
  %11 = load ptr, ptr %9, align 8
  %add.ptr.i.1 = getelementptr inbounds ptr, ptr %11, i64 %idx.ext.i
  store ptr %add.ptr.i.1, ptr %10, align 8
  %12 = load ptr, ptr %0, align 8
  %13 = getelementptr ptr, ptr %12, i64 %indvars.iv.i
  %14 = getelementptr i8, ptr %13, i64 16
  %arrayidx.i.2 = getelementptr i8, ptr %13, i64 8
  %15 = load ptr, ptr %arrayidx.i.2, align 8
  %add.ptr.i.2 = getelementptr inbounds ptr, ptr %15, i64 %idx.ext.i
  store ptr %add.ptr.i.2, ptr %14, align 8
  %16 = load ptr, ptr %0, align 8
  %17 = getelementptr ptr, ptr %16, i64 %indvars.iv.i
  %18 = getelementptr i8, ptr %17, i64 24
  %arrayidx.i.3 = getelementptr i8, ptr %17, i64 16
  %19 = load ptr, ptr %arrayidx.i.3, align 8
  %add.ptr.i.3 = getelementptr inbounds ptr, ptr %19, i64 %idx.ext.i
  store ptr %add.ptr.i.3, ptr %18, align 8
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4
  %niter.next.3 = add i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %get_mem3Dpel.exit.loopexit.unr-lcssa, label %for.body.i

get_mem3Dpel.exit.loopexit.unr-lcssa:             ; preds = %for.body.i, %for.body.lr.ph.i
  %indvars.iv.i.unr = phi i64 [ 1, %for.body.lr.ph.i ], [ %indvars.iv.next.i.3, %for.body.i ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %get_mem3Dpel.exit, label %for.body.i.epil

for.body.i.epil:                                  ; preds = %get_mem3Dpel.exit.loopexit.unr-lcssa, %for.body.i.epil
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.next.i.epil, %for.body.i.epil ], [ %indvars.iv.i.unr, %get_mem3Dpel.exit.loopexit.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %for.body.i.epil ], [ 0, %get_mem3Dpel.exit.loopexit.unr-lcssa ]
  %20 = load ptr, ptr %0, align 8
  %21 = getelementptr ptr, ptr %20, i64 %indvars.iv.i.epil
  %arrayidx.i.epil = getelementptr i8, ptr %21, i64 -8
  %22 = load ptr, ptr %arrayidx.i.epil, align 8
  %add.ptr.i.epil = getelementptr inbounds ptr, ptr %22, i64 %idx.ext.i
  store ptr %add.ptr.i.epil, ptr %21, align 8
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %get_mem3Dpel.exit, label %for.body.i.epil, !llvm.loop !29

get_mem3Dpel.exit:                                ; preds = %get_mem3Dpel.exit.loopexit.unr-lcssa, %for.body.i.epil, %if.end.i
  %cmp723 = icmp sgt i32 %dim0, 1
  br i1 %cmp723, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %get_mem3Dpel.exit
  %idx.ext = sext i32 %dim1 to i64
  %wide.trip.count = zext nneg i32 %dim0 to i64
  %23 = add nsw i64 %wide.trip.count, -1
  %24 = add nsw i64 %wide.trip.count, -2
  %xtraiter26 = and i64 %23, 3
  %25 = icmp ult i64 %24, 3
  br i1 %25, label %for.end.loopexit.unr-lcssa, label %for.body.lr.ph.new

for.body.lr.ph.new:                               ; preds = %for.body.lr.ph
  %unroll_iter29 = and i64 %23, -4
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph.new
  %indvars.iv = phi i64 [ 1, %for.body.lr.ph.new ], [ %indvars.iv.next.3, %for.body ]
  %niter30 = phi i64 [ 0, %for.body.lr.ph.new ], [ %niter30.next.3, %for.body ]
  %26 = load ptr, ptr %array4D, align 8
  %27 = getelementptr ptr, ptr %26, i64 %indvars.iv
  %arrayidx = getelementptr i8, ptr %27, i64 -8
  %28 = load ptr, ptr %arrayidx, align 8
  %add.ptr = getelementptr inbounds ptr, ptr %28, i64 %idx.ext
  store ptr %add.ptr, ptr %27, align 8
  %29 = load ptr, ptr %array4D, align 8
  %30 = getelementptr ptr, ptr %29, i64 %indvars.iv
  %31 = getelementptr i8, ptr %30, i64 8
  %32 = load ptr, ptr %30, align 8
  %add.ptr.1 = getelementptr inbounds ptr, ptr %32, i64 %idx.ext
  store ptr %add.ptr.1, ptr %31, align 8
  %33 = load ptr, ptr %array4D, align 8
  %34 = getelementptr ptr, ptr %33, i64 %indvars.iv
  %35 = getelementptr i8, ptr %34, i64 16
  %arrayidx.2 = getelementptr i8, ptr %34, i64 8
  %36 = load ptr, ptr %arrayidx.2, align 8
  %add.ptr.2 = getelementptr inbounds ptr, ptr %36, i64 %idx.ext
  store ptr %add.ptr.2, ptr %35, align 8
  %37 = load ptr, ptr %array4D, align 8
  %38 = getelementptr ptr, ptr %37, i64 %indvars.iv
  %39 = getelementptr i8, ptr %38, i64 24
  %arrayidx.3 = getelementptr i8, ptr %38, i64 16
  %40 = load ptr, ptr %arrayidx.3, align 8
  %add.ptr.3 = getelementptr inbounds ptr, ptr %40, i64 %idx.ext
  store ptr %add.ptr.3, ptr %39, align 8
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4
  %niter30.next.3 = add i64 %niter30, 4
  %niter30.ncmp.3 = icmp eq i64 %niter30.next.3, %unroll_iter29
  br i1 %niter30.ncmp.3, label %for.end.loopexit.unr-lcssa, label %for.body

for.end.loopexit.unr-lcssa:                       ; preds = %for.body, %for.body.lr.ph
  %indvars.iv.unr = phi i64 [ 1, %for.body.lr.ph ], [ %indvars.iv.next.3, %for.body ]
  %lcmp.mod28.not = icmp eq i64 %xtraiter26, 0
  br i1 %lcmp.mod28.not, label %for.end, label %for.body.epil

for.body.epil:                                    ; preds = %for.end.loopexit.unr-lcssa, %for.body.epil
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %for.body.epil ], [ %indvars.iv.unr, %for.end.loopexit.unr-lcssa ]
  %epil.iter27 = phi i64 [ %epil.iter27.next, %for.body.epil ], [ 0, %for.end.loopexit.unr-lcssa ]
  %41 = load ptr, ptr %array4D, align 8
  %42 = getelementptr ptr, ptr %41, i64 %indvars.iv.epil
  %arrayidx.epil = getelementptr i8, ptr %42, i64 -8
  %43 = load ptr, ptr %arrayidx.epil, align 8
  %add.ptr.epil = getelementptr inbounds ptr, ptr %43, i64 %idx.ext
  store ptr %add.ptr.epil, ptr %42, align 8
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter27.next = add i64 %epil.iter27, 1
  %epil.iter27.cmp.not = icmp eq i64 %epil.iter27.next, %xtraiter26
  br i1 %epil.iter27.cmp.not, label %for.end, label %for.body.epil, !llvm.loop !30

for.end:                                          ; preds = %for.end.loopexit.unr-lcssa, %for.body.epil, %get_mem3Dpel.exit
  %conv1.i = trunc i64 %mul.i to i32
  %conv1 = trunc i64 %mul to i32
  %add.i = add i32 %conv1.i, %conv1
  %add = add i32 %add.i, %call6.i
  ret i32 %add
}

; Function Attrs: nounwind uwtable
define dso_local i32 @get_mem4DpelWithPad(ptr nocapture noundef %array4D, i32 noundef %dim0, i32 noundef %dim1, i32 noundef %dim2, i32 noundef %dim3, i32 noundef %iPadY, i32 noundef %iPadX) local_unnamed_addr #0 {
entry:
  %conv = sext i32 %dim0 to i64
  %mul = shl nsw i64 %conv, 3
  %call = tail call noalias ptr @malloc(i64 noundef %mul) #8
  store ptr %call, ptr %array4D, align 8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call.i = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.40) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  %.pre = load ptr, ptr %array4D, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %0 = phi ptr [ %.pre, %if.then ], [ %call, %entry ]
  %mul5 = mul nsw i32 %dim1, %dim0
  %conv.i = sext i32 %mul5 to i64
  %mul.i = shl nsw i64 %conv.i, 3
  %call.i22 = tail call noalias ptr @malloc(i64 noundef %mul.i) #8
  store ptr %call.i22, ptr %0, align 8
  %cmp.i = icmp eq ptr %call.i22, null
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end
  %call.i.i = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.38) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  %.pre.i = load ptr, ptr %0, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end
  %1 = phi ptr [ %.pre.i, %if.then.i ], [ %call.i22, %if.end ]
  %mul5.i = mul nsw i32 %mul5, %dim2
  %sub.i = shl i32 %mul5, 1
  %mul6.i = add i32 %sub.i, -2
  %mul7.i = mul nsw i32 %mul6.i, %iPadY
  %add.i = add nsw i32 %mul7.i, %mul5.i
  %call8.i = tail call i32 @get_mem2DpelWithPad(ptr noundef %1, i32 noundef %add.i, i32 noundef %dim3, i32 noundef %iPadY, i32 noundef %iPadX)
  %cmp1031.i = icmp sgt i32 %mul5, 1
  br i1 %cmp1031.i, label %for.body.lr.ph.i, label %get_mem3DpelWithPad.exit

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %mul13.i = shl nsw i32 %iPadY, 1
  %add14.i = add nsw i32 %mul13.i, %dim2
  %idx.ext.i = sext i32 %add14.i to i64
  %wide.trip.count.i = zext nneg i32 %mul5 to i64
  %2 = add nsw i64 %wide.trip.count.i, -1
  %3 = add nsw i64 %wide.trip.count.i, -2
  %xtraiter = and i64 %2, 3
  %4 = icmp ult i64 %3, 3
  br i1 %4, label %get_mem3DpelWithPad.exit.loopexit.unr-lcssa, label %for.body.lr.ph.i.new

for.body.lr.ph.i.new:                             ; preds = %for.body.lr.ph.i
  %unroll_iter = and i64 %2, -4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %for.body.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 1, %for.body.lr.ph.i.new ], [ %indvars.iv.next.i.3, %for.body.i ]
  %niter = phi i64 [ 0, %for.body.lr.ph.i.new ], [ %niter.next.3, %for.body.i ]
  %5 = load ptr, ptr %0, align 8
  %6 = getelementptr ptr, ptr %5, i64 %indvars.iv.i
  %arrayidx.i = getelementptr i8, ptr %6, i64 -8
  %7 = load ptr, ptr %arrayidx.i, align 8
  %add.ptr.i = getelementptr inbounds ptr, ptr %7, i64 %idx.ext.i
  store ptr %add.ptr.i, ptr %6, align 8
  %8 = load ptr, ptr %0, align 8
  %9 = getelementptr ptr, ptr %8, i64 %indvars.iv.i
  %10 = getelementptr i8, ptr %9, i64 8
  %11 = load ptr, ptr %9, align 8
  %add.ptr.i.1 = getelementptr inbounds ptr, ptr %11, i64 %idx.ext.i
  store ptr %add.ptr.i.1, ptr %10, align 8
  %12 = load ptr, ptr %0, align 8
  %13 = getelementptr ptr, ptr %12, i64 %indvars.iv.i
  %14 = getelementptr i8, ptr %13, i64 16
  %arrayidx.i.2 = getelementptr i8, ptr %13, i64 8
  %15 = load ptr, ptr %arrayidx.i.2, align 8
  %add.ptr.i.2 = getelementptr inbounds ptr, ptr %15, i64 %idx.ext.i
  store ptr %add.ptr.i.2, ptr %14, align 8
  %16 = load ptr, ptr %0, align 8
  %17 = getelementptr ptr, ptr %16, i64 %indvars.iv.i
  %18 = getelementptr i8, ptr %17, i64 24
  %arrayidx.i.3 = getelementptr i8, ptr %17, i64 16
  %19 = load ptr, ptr %arrayidx.i.3, align 8
  %add.ptr.i.3 = getelementptr inbounds ptr, ptr %19, i64 %idx.ext.i
  store ptr %add.ptr.i.3, ptr %18, align 8
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4
  %niter.next.3 = add i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %get_mem3DpelWithPad.exit.loopexit.unr-lcssa, label %for.body.i

get_mem3DpelWithPad.exit.loopexit.unr-lcssa:      ; preds = %for.body.i, %for.body.lr.ph.i
  %indvars.iv.i.unr = phi i64 [ 1, %for.body.lr.ph.i ], [ %indvars.iv.next.i.3, %for.body.i ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %get_mem3DpelWithPad.exit, label %for.body.i.epil

for.body.i.epil:                                  ; preds = %get_mem3DpelWithPad.exit.loopexit.unr-lcssa, %for.body.i.epil
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.next.i.epil, %for.body.i.epil ], [ %indvars.iv.i.unr, %get_mem3DpelWithPad.exit.loopexit.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %for.body.i.epil ], [ 0, %get_mem3DpelWithPad.exit.loopexit.unr-lcssa ]
  %20 = load ptr, ptr %0, align 8
  %21 = getelementptr ptr, ptr %20, i64 %indvars.iv.i.epil
  %arrayidx.i.epil = getelementptr i8, ptr %21, i64 -8
  %22 = load ptr, ptr %arrayidx.i.epil, align 8
  %add.ptr.i.epil = getelementptr inbounds ptr, ptr %22, i64 %idx.ext.i
  store ptr %add.ptr.i.epil, ptr %21, align 8
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %get_mem3DpelWithPad.exit, label %for.body.i.epil, !llvm.loop !31

get_mem3DpelWithPad.exit:                         ; preds = %get_mem3DpelWithPad.exit.loopexit.unr-lcssa, %for.body.i.epil, %if.end.i
  %cmp723 = icmp sgt i32 %dim0, 1
  br i1 %cmp723, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %get_mem3DpelWithPad.exit
  %idx.ext = sext i32 %dim1 to i64
  %wide.trip.count = zext nneg i32 %dim0 to i64
  %23 = add nsw i64 %wide.trip.count, -1
  %24 = add nsw i64 %wide.trip.count, -2
  %xtraiter26 = and i64 %23, 3
  %25 = icmp ult i64 %24, 3
  br i1 %25, label %for.end.loopexit.unr-lcssa, label %for.body.lr.ph.new

for.body.lr.ph.new:                               ; preds = %for.body.lr.ph
  %unroll_iter29 = and i64 %23, -4
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph.new
  %indvars.iv = phi i64 [ 1, %for.body.lr.ph.new ], [ %indvars.iv.next.3, %for.body ]
  %niter30 = phi i64 [ 0, %for.body.lr.ph.new ], [ %niter30.next.3, %for.body ]
  %26 = load ptr, ptr %array4D, align 8
  %27 = getelementptr ptr, ptr %26, i64 %indvars.iv
  %arrayidx = getelementptr i8, ptr %27, i64 -8
  %28 = load ptr, ptr %arrayidx, align 8
  %add.ptr = getelementptr inbounds ptr, ptr %28, i64 %idx.ext
  store ptr %add.ptr, ptr %27, align 8
  %29 = load ptr, ptr %array4D, align 8
  %30 = getelementptr ptr, ptr %29, i64 %indvars.iv
  %31 = getelementptr i8, ptr %30, i64 8
  %32 = load ptr, ptr %30, align 8
  %add.ptr.1 = getelementptr inbounds ptr, ptr %32, i64 %idx.ext
  store ptr %add.ptr.1, ptr %31, align 8
  %33 = load ptr, ptr %array4D, align 8
  %34 = getelementptr ptr, ptr %33, i64 %indvars.iv
  %35 = getelementptr i8, ptr %34, i64 16
  %arrayidx.2 = getelementptr i8, ptr %34, i64 8
  %36 = load ptr, ptr %arrayidx.2, align 8
  %add.ptr.2 = getelementptr inbounds ptr, ptr %36, i64 %idx.ext
  store ptr %add.ptr.2, ptr %35, align 8
  %37 = load ptr, ptr %array4D, align 8
  %38 = getelementptr ptr, ptr %37, i64 %indvars.iv
  %39 = getelementptr i8, ptr %38, i64 24
  %arrayidx.3 = getelementptr i8, ptr %38, i64 16
  %40 = load ptr, ptr %arrayidx.3, align 8
  %add.ptr.3 = getelementptr inbounds ptr, ptr %40, i64 %idx.ext
  store ptr %add.ptr.3, ptr %39, align 8
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4
  %niter30.next.3 = add i64 %niter30, 4
  %niter30.ncmp.3 = icmp eq i64 %niter30.next.3, %unroll_iter29
  br i1 %niter30.ncmp.3, label %for.end.loopexit.unr-lcssa, label %for.body

for.end.loopexit.unr-lcssa:                       ; preds = %for.body, %for.body.lr.ph
  %indvars.iv.unr = phi i64 [ 1, %for.body.lr.ph ], [ %indvars.iv.next.3, %for.body ]
  %lcmp.mod28.not = icmp eq i64 %xtraiter26, 0
  br i1 %lcmp.mod28.not, label %for.end, label %for.body.epil

for.body.epil:                                    ; preds = %for.end.loopexit.unr-lcssa, %for.body.epil
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %for.body.epil ], [ %indvars.iv.unr, %for.end.loopexit.unr-lcssa ]
  %epil.iter27 = phi i64 [ %epil.iter27.next, %for.body.epil ], [ 0, %for.end.loopexit.unr-lcssa ]
  %41 = load ptr, ptr %array4D, align 8
  %42 = getelementptr ptr, ptr %41, i64 %indvars.iv.epil
  %arrayidx.epil = getelementptr i8, ptr %42, i64 -8
  %43 = load ptr, ptr %arrayidx.epil, align 8
  %add.ptr.epil = getelementptr inbounds ptr, ptr %43, i64 %idx.ext
  store ptr %add.ptr.epil, ptr %42, align 8
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter27.next = add i64 %epil.iter27, 1
  %epil.iter27.cmp.not = icmp eq i64 %epil.iter27.next, %xtraiter26
  br i1 %epil.iter27.cmp.not, label %for.end, label %for.body.epil, !llvm.loop !32

for.end:                                          ; preds = %for.end.loopexit.unr-lcssa, %for.body.epil, %get_mem3DpelWithPad.exit
  %conv1.i = trunc i64 %mul.i to i32
  %conv1 = trunc i64 %mul to i32
  %add9.i = add i32 %conv1.i, %conv1
  %add = add i32 %add9.i, %call8.i
  ret i32 %add
}

; Function Attrs: nounwind uwtable
define dso_local i32 @get_mem4DpelWithPadSeparately(ptr nocapture noundef %array4D, i32 noundef %dim0, i32 noundef %dim1, i32 noundef %dim2, i32 noundef %dim3, i32 noundef %iPadY, i32 noundef %iPadX) local_unnamed_addr #0 {
entry:
  %conv = sext i32 %dim0 to i64
  %mul = shl nsw i64 %conv, 3
  %call = tail call noalias ptr @malloc(i64 noundef %mul) #8
  store ptr %call, ptr %array4D, align 8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call.i = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.41) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  %.pre = load ptr, ptr %array4D, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %0 = phi ptr [ %.pre, %if.then ], [ %call, %entry ]
  %mul5 = mul nsw i32 %dim1, %dim0
  %conv.i = sext i32 %mul5 to i64
  %mul.i = shl nsw i64 %conv.i, 3
  %conv1.i = trunc i64 %mul.i to i32
  %call.i22 = tail call noalias ptr @malloc(i64 noundef %mul.i) #8
  store ptr %call.i22, ptr %0, align 8
  %cmp.i = icmp eq ptr %call.i22, null
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end
  %call.i.i = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.39) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end
  %cmp514.i = icmp sgt i32 %mul5, 0
  br i1 %cmp514.i, label %for.body.preheader.i, label %get_mem3DpelWithPadSeparately.exit

for.body.preheader.i:                             ; preds = %if.end.i
  %wide.trip.count.i = zext nneg i32 %mul5 to i64
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %for.body.preheader.i
  %indvars.iv.i = phi i64 [ 0, %for.body.preheader.i ], [ %indvars.iv.next.i, %for.body.i ]
  %mem_size.016.i = phi i32 [ %conv1.i, %for.body.preheader.i ], [ %add.i, %for.body.i ]
  %1 = load ptr, ptr %0, align 8
  %add.ptr.i = getelementptr inbounds ptr, ptr %1, i64 %indvars.iv.i
  %call7.i = tail call i32 @get_mem2DpelWithPad(ptr noundef %add.ptr.i, i32 noundef %dim2, i32 noundef %dim3, i32 noundef %iPadY, i32 noundef %iPadX)
  %add.i = add nsw i32 %call7.i, %mem_size.016.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %get_mem3DpelWithPadSeparately.exit, label %for.body.i

get_mem3DpelWithPadSeparately.exit:               ; preds = %for.body.i, %if.end.i
  %mem_size.0.lcssa.i = phi i32 [ %conv1.i, %if.end.i ], [ %add.i, %for.body.i ]
  %cmp723 = icmp sgt i32 %dim0, 1
  br i1 %cmp723, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %get_mem3DpelWithPadSeparately.exit
  %idx.ext = sext i32 %dim1 to i64
  %wide.trip.count = zext nneg i32 %dim0 to i64
  %2 = add nsw i64 %wide.trip.count, -1
  %3 = add nsw i64 %wide.trip.count, -2
  %xtraiter = and i64 %2, 3
  %4 = icmp ult i64 %3, 3
  br i1 %4, label %for.end.loopexit.unr-lcssa, label %for.body.lr.ph.new

for.body.lr.ph.new:                               ; preds = %for.body.lr.ph
  %unroll_iter = and i64 %2, -4
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph.new
  %indvars.iv = phi i64 [ 1, %for.body.lr.ph.new ], [ %indvars.iv.next.3, %for.body ]
  %niter = phi i64 [ 0, %for.body.lr.ph.new ], [ %niter.next.3, %for.body ]
  %5 = load ptr, ptr %array4D, align 8
  %6 = getelementptr ptr, ptr %5, i64 %indvars.iv
  %arrayidx = getelementptr i8, ptr %6, i64 -8
  %7 = load ptr, ptr %arrayidx, align 8
  %add.ptr = getelementptr inbounds ptr, ptr %7, i64 %idx.ext
  store ptr %add.ptr, ptr %6, align 8
  %8 = load ptr, ptr %array4D, align 8
  %9 = getelementptr ptr, ptr %8, i64 %indvars.iv
  %10 = getelementptr i8, ptr %9, i64 8
  %11 = load ptr, ptr %9, align 8
  %add.ptr.1 = getelementptr inbounds ptr, ptr %11, i64 %idx.ext
  store ptr %add.ptr.1, ptr %10, align 8
  %12 = load ptr, ptr %array4D, align 8
  %13 = getelementptr ptr, ptr %12, i64 %indvars.iv
  %14 = getelementptr i8, ptr %13, i64 16
  %arrayidx.2 = getelementptr i8, ptr %13, i64 8
  %15 = load ptr, ptr %arrayidx.2, align 8
  %add.ptr.2 = getelementptr inbounds ptr, ptr %15, i64 %idx.ext
  store ptr %add.ptr.2, ptr %14, align 8
  %16 = load ptr, ptr %array4D, align 8
  %17 = getelementptr ptr, ptr %16, i64 %indvars.iv
  %18 = getelementptr i8, ptr %17, i64 24
  %arrayidx.3 = getelementptr i8, ptr %17, i64 16
  %19 = load ptr, ptr %arrayidx.3, align 8
  %add.ptr.3 = getelementptr inbounds ptr, ptr %19, i64 %idx.ext
  store ptr %add.ptr.3, ptr %18, align 8
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4
  %niter.next.3 = add i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %for.end.loopexit.unr-lcssa, label %for.body

for.end.loopexit.unr-lcssa:                       ; preds = %for.body, %for.body.lr.ph
  %indvars.iv.unr = phi i64 [ 1, %for.body.lr.ph ], [ %indvars.iv.next.3, %for.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.end, label %for.body.epil

for.body.epil:                                    ; preds = %for.end.loopexit.unr-lcssa, %for.body.epil
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %for.body.epil ], [ %indvars.iv.unr, %for.end.loopexit.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %for.body.epil ], [ 0, %for.end.loopexit.unr-lcssa ]
  %20 = load ptr, ptr %array4D, align 8
  %21 = getelementptr ptr, ptr %20, i64 %indvars.iv.epil
  %arrayidx.epil = getelementptr i8, ptr %21, i64 -8
  %22 = load ptr, ptr %arrayidx.epil, align 8
  %add.ptr.epil = getelementptr inbounds ptr, ptr %22, i64 %idx.ext
  store ptr %add.ptr.epil, ptr %21, align 8
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %for.end, label %for.body.epil, !llvm.loop !33

for.end:                                          ; preds = %for.end.loopexit.unr-lcssa, %for.body.epil, %get_mem3DpelWithPadSeparately.exit
  %conv1 = trunc i64 %mul to i32
  %add = add nsw i32 %mem_size.0.lcssa.i, %conv1
  ret i32 %add
}

; Function Attrs: nounwind uwtable
define dso_local i32 @get_mem5Dpel(ptr nocapture noundef %array5D, i32 noundef %dim0, i32 noundef %dim1, i32 noundef %dim2, i32 noundef %dim3, i32 noundef %dim4) local_unnamed_addr #0 {
entry:
  %conv = sext i32 %dim0 to i64
  %mul = shl nsw i64 %conv, 3
  %call = tail call noalias ptr @malloc(i64 noundef %mul) #8
  store ptr %call, ptr %array5D, align 8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call.i = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.23) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  %.pre = load ptr, ptr %array5D, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %0 = phi ptr [ %.pre, %if.then ], [ %call, %entry ]
  %mul5 = mul nsw i32 %dim1, %dim0
  %call6 = tail call i32 @get_mem4Dpel(ptr noundef %0, i32 noundef %mul5, i32 noundef %dim2, i32 noundef %dim3, i32 noundef %dim4)
  %cmp722 = icmp sgt i32 %dim0, 1
  br i1 %cmp722, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %idx.ext = sext i32 %dim1 to i64
  %wide.trip.count = zext nneg i32 %dim0 to i64
  %1 = add nsw i64 %wide.trip.count, -1
  %2 = add nsw i64 %wide.trip.count, -2
  %xtraiter = and i64 %1, 3
  %3 = icmp ult i64 %2, 3
  br i1 %3, label %for.end.loopexit.unr-lcssa, label %for.body.lr.ph.new

for.body.lr.ph.new:                               ; preds = %for.body.lr.ph
  %unroll_iter = and i64 %1, -4
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph.new
  %indvars.iv = phi i64 [ 1, %for.body.lr.ph.new ], [ %indvars.iv.next.3, %for.body ]
  %niter = phi i64 [ 0, %for.body.lr.ph.new ], [ %niter.next.3, %for.body ]
  %4 = load ptr, ptr %array5D, align 8
  %5 = getelementptr ptr, ptr %4, i64 %indvars.iv
  %arrayidx = getelementptr i8, ptr %5, i64 -8
  %6 = load ptr, ptr %arrayidx, align 8
  %add.ptr = getelementptr inbounds ptr, ptr %6, i64 %idx.ext
  store ptr %add.ptr, ptr %5, align 8
  %7 = load ptr, ptr %array5D, align 8
  %8 = getelementptr ptr, ptr %7, i64 %indvars.iv
  %9 = getelementptr i8, ptr %8, i64 8
  %10 = load ptr, ptr %8, align 8
  %add.ptr.1 = getelementptr inbounds ptr, ptr %10, i64 %idx.ext
  store ptr %add.ptr.1, ptr %9, align 8
  %11 = load ptr, ptr %array5D, align 8
  %12 = getelementptr ptr, ptr %11, i64 %indvars.iv
  %13 = getelementptr i8, ptr %12, i64 16
  %arrayidx.2 = getelementptr i8, ptr %12, i64 8
  %14 = load ptr, ptr %arrayidx.2, align 8
  %add.ptr.2 = getelementptr inbounds ptr, ptr %14, i64 %idx.ext
  store ptr %add.ptr.2, ptr %13, align 8
  %15 = load ptr, ptr %array5D, align 8
  %16 = getelementptr ptr, ptr %15, i64 %indvars.iv
  %17 = getelementptr i8, ptr %16, i64 24
  %arrayidx.3 = getelementptr i8, ptr %16, i64 16
  %18 = load ptr, ptr %arrayidx.3, align 8
  %add.ptr.3 = getelementptr inbounds ptr, ptr %18, i64 %idx.ext
  store ptr %add.ptr.3, ptr %17, align 8
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4
  %niter.next.3 = add i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %for.end.loopexit.unr-lcssa, label %for.body

for.end.loopexit.unr-lcssa:                       ; preds = %for.body, %for.body.lr.ph
  %indvars.iv.unr = phi i64 [ 1, %for.body.lr.ph ], [ %indvars.iv.next.3, %for.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.end, label %for.body.epil

for.body.epil:                                    ; preds = %for.end.loopexit.unr-lcssa, %for.body.epil
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %for.body.epil ], [ %indvars.iv.unr, %for.end.loopexit.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %for.body.epil ], [ 0, %for.end.loopexit.unr-lcssa ]
  %19 = load ptr, ptr %array5D, align 8
  %20 = getelementptr ptr, ptr %19, i64 %indvars.iv.epil
  %arrayidx.epil = getelementptr i8, ptr %20, i64 -8
  %21 = load ptr, ptr %arrayidx.epil, align 8
  %add.ptr.epil = getelementptr inbounds ptr, ptr %21, i64 %idx.ext
  store ptr %add.ptr.epil, ptr %20, align 8
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %for.end, label %for.body.epil, !llvm.loop !34

for.end:                                          ; preds = %for.end.loopexit.unr-lcssa, %for.body.epil, %if.end
  %conv1 = trunc i64 %mul to i32
  %add = add nsw i32 %call6, %conv1
  ret i32 %add
}

; Function Attrs: nounwind uwtable
define dso_local i32 @get_mem5DpelWithPad(ptr nocapture noundef %array5D, i32 noundef %dim0, i32 noundef %dim1, i32 noundef %dim2, i32 noundef %dim3, i32 noundef %dim4, i32 noundef %iPadY, i32 noundef %iPadX) local_unnamed_addr #0 {
entry:
  %conv = sext i32 %dim0 to i64
  %mul = shl nsw i64 %conv, 3
  %call = tail call noalias ptr @malloc(i64 noundef %mul) #8
  store ptr %call, ptr %array5D, align 8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call.i = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.42) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  %.pre = load ptr, ptr %array5D, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %0 = phi ptr [ %.pre, %if.then ], [ %call, %entry ]
  %mul5 = mul nsw i32 %dim1, %dim0
  %call6 = tail call i32 @get_mem4DpelWithPad(ptr noundef %0, i32 noundef %mul5, i32 noundef %dim2, i32 noundef %dim3, i32 noundef %dim4, i32 noundef %iPadY, i32 noundef %iPadX)
  %cmp722 = icmp sgt i32 %dim0, 1
  br i1 %cmp722, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %idx.ext = sext i32 %dim1 to i64
  %wide.trip.count = zext nneg i32 %dim0 to i64
  %1 = add nsw i64 %wide.trip.count, -1
  %2 = add nsw i64 %wide.trip.count, -2
  %xtraiter = and i64 %1, 3
  %3 = icmp ult i64 %2, 3
  br i1 %3, label %for.end.loopexit.unr-lcssa, label %for.body.lr.ph.new

for.body.lr.ph.new:                               ; preds = %for.body.lr.ph
  %unroll_iter = and i64 %1, -4
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph.new
  %indvars.iv = phi i64 [ 1, %for.body.lr.ph.new ], [ %indvars.iv.next.3, %for.body ]
  %niter = phi i64 [ 0, %for.body.lr.ph.new ], [ %niter.next.3, %for.body ]
  %4 = load ptr, ptr %array5D, align 8
  %5 = getelementptr ptr, ptr %4, i64 %indvars.iv
  %arrayidx = getelementptr i8, ptr %5, i64 -8
  %6 = load ptr, ptr %arrayidx, align 8
  %add.ptr = getelementptr inbounds ptr, ptr %6, i64 %idx.ext
  store ptr %add.ptr, ptr %5, align 8
  %7 = load ptr, ptr %array5D, align 8
  %8 = getelementptr ptr, ptr %7, i64 %indvars.iv
  %9 = getelementptr i8, ptr %8, i64 8
  %10 = load ptr, ptr %8, align 8
  %add.ptr.1 = getelementptr inbounds ptr, ptr %10, i64 %idx.ext
  store ptr %add.ptr.1, ptr %9, align 8
  %11 = load ptr, ptr %array5D, align 8
  %12 = getelementptr ptr, ptr %11, i64 %indvars.iv
  %13 = getelementptr i8, ptr %12, i64 16
  %arrayidx.2 = getelementptr i8, ptr %12, i64 8
  %14 = load ptr, ptr %arrayidx.2, align 8
  %add.ptr.2 = getelementptr inbounds ptr, ptr %14, i64 %idx.ext
  store ptr %add.ptr.2, ptr %13, align 8
  %15 = load ptr, ptr %array5D, align 8
  %16 = getelementptr ptr, ptr %15, i64 %indvars.iv
  %17 = getelementptr i8, ptr %16, i64 24
  %arrayidx.3 = getelementptr i8, ptr %16, i64 16
  %18 = load ptr, ptr %arrayidx.3, align 8
  %add.ptr.3 = getelementptr inbounds ptr, ptr %18, i64 %idx.ext
  store ptr %add.ptr.3, ptr %17, align 8
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4
  %niter.next.3 = add i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %for.end.loopexit.unr-lcssa, label %for.body

for.end.loopexit.unr-lcssa:                       ; preds = %for.body, %for.body.lr.ph
  %indvars.iv.unr = phi i64 [ 1, %for.body.lr.ph ], [ %indvars.iv.next.3, %for.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.end, label %for.body.epil

for.body.epil:                                    ; preds = %for.end.loopexit.unr-lcssa, %for.body.epil
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %for.body.epil ], [ %indvars.iv.unr, %for.end.loopexit.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %for.body.epil ], [ 0, %for.end.loopexit.unr-lcssa ]
  %19 = load ptr, ptr %array5D, align 8
  %20 = getelementptr ptr, ptr %19, i64 %indvars.iv.epil
  %arrayidx.epil = getelementptr i8, ptr %20, i64 -8
  %21 = load ptr, ptr %arrayidx.epil, align 8
  %add.ptr.epil = getelementptr inbounds ptr, ptr %21, i64 %idx.ext
  store ptr %add.ptr.epil, ptr %20, align 8
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %for.end, label %for.body.epil, !llvm.loop !35

for.end:                                          ; preds = %for.end.loopexit.unr-lcssa, %for.body.epil, %if.end
  %conv1 = trunc i64 %mul to i32
  %add = add nsw i32 %call6, %conv1
  ret i32 %add
}

; Function Attrs: nounwind uwtable
define dso_local i32 @get_mem5DpelWithPadSeparately(ptr nocapture noundef %array5D, i32 noundef %dim0, i32 noundef %dim1, i32 noundef %dim2, i32 noundef %dim3, i32 noundef %dim4, i32 noundef %iPadY, i32 noundef %iPadX) local_unnamed_addr #0 {
entry:
  %conv = sext i32 %dim0 to i64
  %mul = shl nsw i64 %conv, 3
  %call = tail call noalias ptr @malloc(i64 noundef %mul) #8
  store ptr %call, ptr %array5D, align 8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call.i = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.43) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  %.pre = load ptr, ptr %array5D, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %0 = phi ptr [ %.pre, %if.then ], [ %call, %entry ]
  %mul5 = mul nsw i32 %dim1, %dim0
  %call6 = tail call i32 @get_mem4DpelWithPadSeparately(ptr noundef %0, i32 noundef %mul5, i32 noundef %dim2, i32 noundef %dim3, i32 noundef %dim4, i32 noundef %iPadY, i32 noundef %iPadX)
  %cmp722 = icmp sgt i32 %dim0, 1
  br i1 %cmp722, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %idx.ext = sext i32 %dim1 to i64
  %wide.trip.count = zext nneg i32 %dim0 to i64
  %1 = add nsw i64 %wide.trip.count, -1
  %2 = add nsw i64 %wide.trip.count, -2
  %xtraiter = and i64 %1, 3
  %3 = icmp ult i64 %2, 3
  br i1 %3, label %for.end.loopexit.unr-lcssa, label %for.body.lr.ph.new

for.body.lr.ph.new:                               ; preds = %for.body.lr.ph
  %unroll_iter = and i64 %1, -4
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph.new
  %indvars.iv = phi i64 [ 1, %for.body.lr.ph.new ], [ %indvars.iv.next.3, %for.body ]
  %niter = phi i64 [ 0, %for.body.lr.ph.new ], [ %niter.next.3, %for.body ]
  %4 = load ptr, ptr %array5D, align 8
  %5 = getelementptr ptr, ptr %4, i64 %indvars.iv
  %arrayidx = getelementptr i8, ptr %5, i64 -8
  %6 = load ptr, ptr %arrayidx, align 8
  %add.ptr = getelementptr inbounds ptr, ptr %6, i64 %idx.ext
  store ptr %add.ptr, ptr %5, align 8
  %7 = load ptr, ptr %array5D, align 8
  %8 = getelementptr ptr, ptr %7, i64 %indvars.iv
  %9 = getelementptr i8, ptr %8, i64 8
  %10 = load ptr, ptr %8, align 8
  %add.ptr.1 = getelementptr inbounds ptr, ptr %10, i64 %idx.ext
  store ptr %add.ptr.1, ptr %9, align 8
  %11 = load ptr, ptr %array5D, align 8
  %12 = getelementptr ptr, ptr %11, i64 %indvars.iv
  %13 = getelementptr i8, ptr %12, i64 16
  %arrayidx.2 = getelementptr i8, ptr %12, i64 8
  %14 = load ptr, ptr %arrayidx.2, align 8
  %add.ptr.2 = getelementptr inbounds ptr, ptr %14, i64 %idx.ext
  store ptr %add.ptr.2, ptr %13, align 8
  %15 = load ptr, ptr %array5D, align 8
  %16 = getelementptr ptr, ptr %15, i64 %indvars.iv
  %17 = getelementptr i8, ptr %16, i64 24
  %arrayidx.3 = getelementptr i8, ptr %16, i64 16
  %18 = load ptr, ptr %arrayidx.3, align 8
  %add.ptr.3 = getelementptr inbounds ptr, ptr %18, i64 %idx.ext
  store ptr %add.ptr.3, ptr %17, align 8
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4
  %niter.next.3 = add i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %for.end.loopexit.unr-lcssa, label %for.body

for.end.loopexit.unr-lcssa:                       ; preds = %for.body, %for.body.lr.ph
  %indvars.iv.unr = phi i64 [ 1, %for.body.lr.ph ], [ %indvars.iv.next.3, %for.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.end, label %for.body.epil

for.body.epil:                                    ; preds = %for.end.loopexit.unr-lcssa, %for.body.epil
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %for.body.epil ], [ %indvars.iv.unr, %for.end.loopexit.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %for.body.epil ], [ 0, %for.end.loopexit.unr-lcssa ]
  %19 = load ptr, ptr %array5D, align 8
  %20 = getelementptr ptr, ptr %19, i64 %indvars.iv.epil
  %arrayidx.epil = getelementptr i8, ptr %20, i64 -8
  %21 = load ptr, ptr %arrayidx.epil, align 8
  %add.ptr.epil = getelementptr inbounds ptr, ptr %21, i64 %idx.ext
  store ptr %add.ptr.epil, ptr %20, align 8
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %for.end, label %for.body.epil, !llvm.loop !36

for.end:                                          ; preds = %for.end.loopexit.unr-lcssa, %for.body.epil, %if.end
  %conv1 = trunc i64 %mul to i32
  %add = add nsw i32 %call6, %conv1
  ret i32 %add
}

; Function Attrs: nounwind uwtable
define dso_local void @free_mem1Dpel(ptr noundef %array1D) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq ptr %array1D, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  tail call void @free(ptr noundef nonnull %array1D) #9
  br label %if.end

if.else:                                          ; preds = %entry
  tail call void @error(ptr noundef nonnull @.str.44, i32 noundef 100) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @free_mem2Dpel(ptr noundef %array2D) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq ptr %array2D, null
  br i1 %tobool.not, label %if.else3, label %if.then

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %array2D, align 8
  %tobool1.not = icmp eq ptr %0, null
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.then
  tail call void @free(ptr noundef nonnull %0) #9
  br label %if.end

if.else:                                          ; preds = %if.then
  tail call void @error(ptr noundef nonnull @.str.45, i32 noundef 100) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  tail call void @free(ptr noundef nonnull %array2D) #9
  br label %if.end4

if.else3:                                         ; preds = %entry
  tail call void @error(ptr noundef nonnull @.str.45, i32 noundef 100) #9
  br label %if.end4

if.end4:                                          ; preds = %if.else3, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @free_mem2DpelWithPad(ptr noundef %array2D, i32 noundef %iPadY, i32 noundef %iPadX) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq ptr %array2D, null
  br i1 %tobool.not, label %if.else6, label %if.then

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %array2D, align 8
  %tobool1.not = icmp eq ptr %0, null
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.then
  %sub = sub nsw i32 0, %iPadY
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds ptr, ptr %array2D, i64 %idxprom
  %1 = load ptr, ptr %arrayidx, align 8
  %idx.ext = sext i32 %iPadX to i64
  %idx.neg = sub nsw i64 0, %idx.ext
  %add.ptr = getelementptr inbounds i16, ptr %1, i64 %idx.neg
  tail call void @free(ptr noundef %add.ptr) #9
  br label %if.end

if.else:                                          ; preds = %if.then
  tail call void @error(ptr noundef nonnull @.str.46, i32 noundef 100) #9
  %.pre = sub nsw i32 0, %iPadY
  %.pre12 = sext i32 %.pre to i64
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  %idxprom4.pre-phi = phi i64 [ %.pre12, %if.else ], [ %idxprom, %if.then2 ]
  %arrayidx5 = getelementptr inbounds ptr, ptr %array2D, i64 %idxprom4.pre-phi
  tail call void @free(ptr noundef %arrayidx5) #9
  br label %if.end7

if.else6:                                         ; preds = %entry
  tail call void @error(ptr noundef nonnull @.str.46, i32 noundef 100) #9
  br label %if.end7

if.end7:                                          ; preds = %if.else6, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @free_mem3Dpel(ptr noundef %array3D) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq ptr %array3D, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %array3D, align 8
  %tobool.not.i = icmp eq ptr %0, null
  br i1 %tobool.not.i, label %if.else3.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  %1 = load ptr, ptr %0, align 8
  %tobool1.not.i = icmp eq ptr %1, null
  br i1 %tobool1.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.then.i
  tail call void @free(ptr noundef nonnull %1) #9
  br label %if.end.i

if.else.i:                                        ; preds = %if.then.i
  tail call void @error(ptr noundef nonnull @.str.45, i32 noundef 100) #9
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then2.i
  tail call void @free(ptr noundef nonnull %0) #9
  br label %free_mem2Dpel.exit

if.else3.i:                                       ; preds = %if.then
  tail call void @error(ptr noundef nonnull @.str.45, i32 noundef 100) #9
  br label %free_mem2Dpel.exit

free_mem2Dpel.exit:                               ; preds = %if.end.i, %if.else3.i
  tail call void @free(ptr noundef nonnull %array3D) #9
  br label %if.end

if.else:                                          ; preds = %entry
  tail call void @error(ptr noundef nonnull @.str.47, i32 noundef 100) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %free_mem2Dpel.exit
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @free_mem3DpelWithPad(ptr noundef %array3D, i32 noundef %iPadY, i32 noundef %iPadX) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq ptr %array3D, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %array3D, align 8
  %tobool.not.i = icmp eq ptr %0, null
  br i1 %tobool.not.i, label %if.else6.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  %1 = load ptr, ptr %0, align 8
  %tobool1.not.i = icmp eq ptr %1, null
  br i1 %tobool1.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.then.i
  %sub.i = sub nsw i32 0, %iPadY
  %idxprom.i = sext i32 %sub.i to i64
  %arrayidx.i = getelementptr inbounds ptr, ptr %0, i64 %idxprom.i
  %2 = load ptr, ptr %arrayidx.i, align 8
  %idx.ext.i = sext i32 %iPadX to i64
  %idx.neg.i = sub nsw i64 0, %idx.ext.i
  %add.ptr.i = getelementptr inbounds i16, ptr %2, i64 %idx.neg.i
  tail call void @free(ptr noundef %add.ptr.i) #9
  br label %if.end.i

if.else.i:                                        ; preds = %if.then.i
  tail call void @error(ptr noundef nonnull @.str.46, i32 noundef 100) #9
  %.pre.i = sub nsw i32 0, %iPadY
  %.pre12.i = sext i32 %.pre.i to i64
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then2.i
  %idxprom4.pre-phi.i = phi i64 [ %.pre12.i, %if.else.i ], [ %idxprom.i, %if.then2.i ]
  %arrayidx5.i = getelementptr inbounds ptr, ptr %0, i64 %idxprom4.pre-phi.i
  tail call void @free(ptr noundef %arrayidx5.i) #9
  br label %free_mem2DpelWithPad.exit

if.else6.i:                                       ; preds = %if.then
  tail call void @error(ptr noundef nonnull @.str.46, i32 noundef 100) #9
  br label %free_mem2DpelWithPad.exit

free_mem2DpelWithPad.exit:                        ; preds = %if.end.i, %if.else6.i
  tail call void @free(ptr noundef nonnull %array3D) #9
  br label %if.end

if.else:                                          ; preds = %entry
  tail call void @error(ptr noundef nonnull @.str.47, i32 noundef 100) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %free_mem2DpelWithPad.exit
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @free_mem3DpelWithPadSeparately(ptr noundef %array3D, i32 noundef %iDim12, i32 noundef %iPadY, i32 noundef %iPadX) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq ptr %array3D, null
  br i1 %tobool.not, label %if.else, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %cmp16 = icmp sgt i32 %iDim12, 0
  br i1 %cmp16, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %sub.i = sub nsw i32 0, %iPadY
  %idxprom.i = sext i32 %sub.i to i64
  %idx.ext.i = sext i32 %iPadX to i64
  %idx.neg.i = sub nsw i64 0, %idx.ext.i
  %wide.trip.count = zext nneg i32 %iDim12 to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %arrayidx = getelementptr inbounds ptr, ptr %array3D, i64 %indvars.iv
  %0 = load ptr, ptr %arrayidx, align 8
  %tobool1.not = icmp eq ptr %0, null
  br i1 %tobool1.not, label %for.inc, label %if.then.i

if.then.i:                                        ; preds = %for.body
  %1 = load ptr, ptr %0, align 8
  %tobool1.not.i = icmp eq ptr %1, null
  br i1 %tobool1.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.then.i
  %arrayidx.i = getelementptr inbounds ptr, ptr %0, i64 %idxprom.i
  %2 = load ptr, ptr %arrayidx.i, align 8
  %add.ptr.i = getelementptr inbounds i16, ptr %2, i64 %idx.neg.i
  tail call void @free(ptr noundef %add.ptr.i) #9
  br label %free_mem2DpelWithPad.exit

if.else.i:                                        ; preds = %if.then.i
  tail call void @error(ptr noundef nonnull @.str.46, i32 noundef 100) #9
  br label %free_mem2DpelWithPad.exit

free_mem2DpelWithPad.exit:                        ; preds = %if.then2.i, %if.else.i
  %arrayidx5.i = getelementptr inbounds ptr, ptr %0, i64 %idxprom.i
  tail call void @free(ptr noundef %arrayidx5.i) #9
  store ptr null, ptr %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body, %free_mem2DpelWithPad.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %for.cond.preheader
  tail call void @free(ptr noundef nonnull %array3D) #9
  br label %if.end7

if.else:                                          ; preds = %entry
  tail call void @error(ptr noundef nonnull @.str.48, i32 noundef 100) #9
  br label %if.end7

if.end7:                                          ; preds = %if.else, %for.end
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @free_mem4Dpel(ptr noundef %array4D) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq ptr %array4D, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %array4D, align 8
  %tobool.not.i = icmp eq ptr %0, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  %1 = load ptr, ptr %0, align 8
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %if.else3.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then.i
  %2 = load ptr, ptr %1, align 8
  %tobool1.not.i.i = icmp eq ptr %2, null
  br i1 %tobool1.not.i.i, label %if.else.i.i, label %if.then2.i.i

if.then2.i.i:                                     ; preds = %if.then.i.i
  tail call void @free(ptr noundef nonnull %2) #9
  br label %if.end.i.i

if.else.i.i:                                      ; preds = %if.then.i.i
  tail call void @error(ptr noundef nonnull @.str.45, i32 noundef 100) #9
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else.i.i, %if.then2.i.i
  tail call void @free(ptr noundef nonnull %1) #9
  br label %free_mem2Dpel.exit.i

if.else3.i.i:                                     ; preds = %if.then.i
  tail call void @error(ptr noundef nonnull @.str.45, i32 noundef 100) #9
  br label %free_mem2Dpel.exit.i

free_mem2Dpel.exit.i:                             ; preds = %if.else3.i.i, %if.end.i.i
  tail call void @free(ptr noundef nonnull %0) #9
  br label %free_mem3Dpel.exit

if.else.i:                                        ; preds = %if.then
  tail call void @error(ptr noundef nonnull @.str.47, i32 noundef 100) #9
  br label %free_mem3Dpel.exit

free_mem3Dpel.exit:                               ; preds = %free_mem2Dpel.exit.i, %if.else.i
  tail call void @free(ptr noundef nonnull %array4D) #9
  br label %if.end

if.else:                                          ; preds = %entry
  tail call void @error(ptr noundef nonnull @.str.49, i32 noundef 100) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %free_mem3Dpel.exit
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @free_mem4DpelWithPad(ptr noundef %array4D, i32 noundef %iPadY, i32 noundef %iPadX) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq ptr %array4D, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %array4D, align 8
  tail call void @free_mem3DpelWithPad(ptr noundef %0, i32 noundef %iPadY, i32 noundef %iPadX)
  tail call void @free(ptr noundef nonnull %array4D) #9
  br label %if.end

if.else:                                          ; preds = %entry
  tail call void @error(ptr noundef nonnull @.str.50, i32 noundef 100) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @free_mem4DpelWithPadSeparately(ptr noundef %array4D, i32 noundef %iFrames, i32 noundef %iPadY, i32 noundef %iPadX) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq ptr %array4D, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %array4D, align 8
  %tobool.not.i = icmp eq ptr %0, null
  br i1 %tobool.not.i, label %if.else.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.then
  %cmp16.i = icmp sgt i32 %iFrames, 0
  br i1 %cmp16.i, label %for.body.lr.ph.i, label %for.end.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %sub.i.i = sub nsw i32 0, %iPadY
  %idxprom.i.i = sext i32 %sub.i.i to i64
  %idx.ext.i.i = sext i32 %iPadX to i64
  %idx.neg.i.i = sub nsw i64 0, %idx.ext.i.i
  %wide.trip.count.i = zext nneg i32 %iFrames to i64
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i, %for.body.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next.i, %for.inc.i ]
  %arrayidx.i = getelementptr inbounds ptr, ptr %0, i64 %indvars.iv.i
  %1 = load ptr, ptr %arrayidx.i, align 8
  %tobool1.not.i = icmp eq ptr %1, null
  br i1 %tobool1.not.i, label %for.inc.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %for.body.i
  %2 = load ptr, ptr %1, align 8
  %tobool1.not.i.i = icmp eq ptr %2, null
  br i1 %tobool1.not.i.i, label %if.else.i.i, label %if.then2.i.i

if.then2.i.i:                                     ; preds = %if.then.i.i
  %arrayidx.i.i = getelementptr inbounds ptr, ptr %1, i64 %idxprom.i.i
  %3 = load ptr, ptr %arrayidx.i.i, align 8
  %add.ptr.i.i = getelementptr inbounds i16, ptr %3, i64 %idx.neg.i.i
  tail call void @free(ptr noundef %add.ptr.i.i) #9
  br label %free_mem2DpelWithPad.exit.i

if.else.i.i:                                      ; preds = %if.then.i.i
  tail call void @error(ptr noundef nonnull @.str.46, i32 noundef 100) #9
  br label %free_mem2DpelWithPad.exit.i

free_mem2DpelWithPad.exit.i:                      ; preds = %if.else.i.i, %if.then2.i.i
  %arrayidx5.i.i = getelementptr inbounds ptr, ptr %1, i64 %idxprom.i.i
  tail call void @free(ptr noundef %arrayidx5.i.i) #9
  store ptr null, ptr %arrayidx.i, align 8
  br label %for.inc.i

for.inc.i:                                        ; preds = %free_mem2DpelWithPad.exit.i, %for.body.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i

for.end.i:                                        ; preds = %for.inc.i, %for.cond.preheader.i
  tail call void @free(ptr noundef nonnull %0) #9
  br label %free_mem3DpelWithPadSeparately.exit

if.else.i:                                        ; preds = %if.then
  tail call void @error(ptr noundef nonnull @.str.48, i32 noundef 100) #9
  br label %free_mem3DpelWithPadSeparately.exit

free_mem3DpelWithPadSeparately.exit:              ; preds = %for.end.i, %if.else.i
  tail call void @free(ptr noundef %array4D) #9
  br label %if.end

if.else:                                          ; preds = %entry
  tail call void @error(ptr noundef nonnull @.str.51, i32 noundef 100) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %free_mem3DpelWithPadSeparately.exit
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @free_mem5Dpel(ptr noundef %array5D) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq ptr %array5D, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %array5D, align 8
  tail call void @free_mem4Dpel(ptr noundef %0)
  tail call void @free(ptr noundef nonnull %array5D) #9
  br label %if.end

if.else:                                          ; preds = %entry
  tail call void @error(ptr noundef nonnull @.str.52, i32 noundef 100) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @free_mem5DpelWithPad(ptr noundef %array5D, i32 noundef %iPadY, i32 noundef %iPadX) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq ptr %array5D, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %array5D, align 8
  %tobool.not.i = icmp eq ptr %0, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  %1 = load ptr, ptr %0, align 8
  tail call void @free_mem3DpelWithPad(ptr noundef %1, i32 noundef %iPadY, i32 noundef %iPadX)
  tail call void @free(ptr noundef nonnull %0) #9
  br label %free_mem4DpelWithPad.exit

if.else.i:                                        ; preds = %if.then
  tail call void @error(ptr noundef nonnull @.str.50, i32 noundef 100) #9
  br label %free_mem4DpelWithPad.exit

free_mem4DpelWithPad.exit:                        ; preds = %if.then.i, %if.else.i
  tail call void @free(ptr noundef nonnull %array5D) #9
  br label %if.end

if.else:                                          ; preds = %entry
  tail call void @error(ptr noundef nonnull @.str.53, i32 noundef 100) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %free_mem4DpelWithPad.exit
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @free_mem5DpelWithPadSeparately(ptr noundef %array5D, i32 noundef %iFrames, i32 noundef %iPadY, i32 noundef %iPadX) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq ptr %array5D, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %array5D, align 8
  tail call void @free_mem4DpelWithPadSeparately(ptr noundef %0, i32 noundef %iFrames, i32 noundef %iPadY, i32 noundef %iPadX)
  tail call void @free(ptr noundef nonnull %array5D) #9
  br label %if.end

if.else:                                          ; preds = %entry
  tail call void @error(ptr noundef nonnull @.str.53, i32 noundef 100) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @new_mem2D(i32 noundef %dim0, i32 noundef %dim1) local_unnamed_addr #0 {
entry:
  %conv = sext i32 %dim0 to i64
  %mul = shl nsw i64 %conv, 3
  %call = tail call noalias ptr @malloc(i64 noundef %mul) #8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call.i = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.54) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %mul2 = mul nsw i32 %dim1, %dim0
  %conv3 = sext i32 %mul2 to i64
  %call4 = tail call noalias ptr @calloc(i64 noundef %conv3, i64 noundef 1) #10
  store ptr %call4, ptr %call, align 8
  %cmp5 = icmp eq ptr %call4, null
  br i1 %cmp5, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  %call.i22 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.54) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end
  %cmp923 = icmp sgt i32 %dim0, 1
  br i1 %cmp923, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end8
  %idx.ext = sext i32 %dim1 to i64
  %wide.trip.count = zext nneg i32 %dim0 to i64
  %load_initial = load ptr, ptr %call, align 8
  %0 = add nsw i64 %wide.trip.count, -1
  %1 = add nsw i64 %wide.trip.count, -2
  %xtraiter = and i64 %0, 7
  %2 = icmp ult i64 %1, 7
  br i1 %2, label %for.end.loopexit.unr-lcssa, label %for.body.lr.ph.new

for.body.lr.ph.new:                               ; preds = %for.body.lr.ph
  %unroll_iter = and i64 %0, -8
  %invariant.gep = getelementptr i8, ptr %call, i64 8
  %invariant.gep26 = getelementptr i8, ptr %call, i64 16
  %invariant.gep28 = getelementptr i8, ptr %call, i64 24
  %invariant.gep30 = getelementptr i8, ptr %call, i64 32
  %invariant.gep32 = getelementptr i8, ptr %call, i64 40
  %invariant.gep34 = getelementptr i8, ptr %call, i64 48
  %invariant.gep36 = getelementptr i8, ptr %call, i64 56
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph.new
  %store_forwarded = phi ptr [ %load_initial, %for.body.lr.ph.new ], [ %add.ptr.7, %for.body ]
  %indvars.iv = phi i64 [ 1, %for.body.lr.ph.new ], [ %indvars.iv.next.7, %for.body ]
  %niter = phi i64 [ 0, %for.body.lr.ph.new ], [ %niter.next.7, %for.body ]
  %3 = getelementptr ptr, ptr %call, i64 %indvars.iv
  %add.ptr = getelementptr inbounds i8, ptr %store_forwarded, i64 %idx.ext
  store ptr %add.ptr, ptr %3, align 8
  %gep = getelementptr ptr, ptr %invariant.gep, i64 %indvars.iv
  %add.ptr.1 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.ext
  store ptr %add.ptr.1, ptr %gep, align 8
  %gep27 = getelementptr ptr, ptr %invariant.gep26, i64 %indvars.iv
  %add.ptr.2 = getelementptr inbounds i8, ptr %add.ptr.1, i64 %idx.ext
  store ptr %add.ptr.2, ptr %gep27, align 8
  %gep29 = getelementptr ptr, ptr %invariant.gep28, i64 %indvars.iv
  %add.ptr.3 = getelementptr inbounds i8, ptr %add.ptr.2, i64 %idx.ext
  store ptr %add.ptr.3, ptr %gep29, align 8
  %gep31 = getelementptr ptr, ptr %invariant.gep30, i64 %indvars.iv
  %add.ptr.4 = getelementptr inbounds i8, ptr %add.ptr.3, i64 %idx.ext
  store ptr %add.ptr.4, ptr %gep31, align 8
  %gep33 = getelementptr ptr, ptr %invariant.gep32, i64 %indvars.iv
  %add.ptr.5 = getelementptr inbounds i8, ptr %add.ptr.4, i64 %idx.ext
  store ptr %add.ptr.5, ptr %gep33, align 8
  %gep35 = getelementptr ptr, ptr %invariant.gep34, i64 %indvars.iv
  %add.ptr.6 = getelementptr inbounds i8, ptr %add.ptr.5, i64 %idx.ext
  store ptr %add.ptr.6, ptr %gep35, align 8
  %gep37 = getelementptr ptr, ptr %invariant.gep36, i64 %indvars.iv
  %add.ptr.7 = getelementptr inbounds i8, ptr %add.ptr.6, i64 %idx.ext
  store ptr %add.ptr.7, ptr %gep37, align 8
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8
  %niter.next.7 = add i64 %niter, 8
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %for.end.loopexit.unr-lcssa, label %for.body

for.end.loopexit.unr-lcssa:                       ; preds = %for.body, %for.body.lr.ph
  %store_forwarded.unr = phi ptr [ %load_initial, %for.body.lr.ph ], [ %add.ptr.7, %for.body ]
  %indvars.iv.unr = phi i64 [ 1, %for.body.lr.ph ], [ %indvars.iv.next.7, %for.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.end, label %for.body.epil

for.body.epil:                                    ; preds = %for.end.loopexit.unr-lcssa, %for.body.epil
  %store_forwarded.epil = phi ptr [ %add.ptr.epil, %for.body.epil ], [ %store_forwarded.unr, %for.end.loopexit.unr-lcssa ]
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %for.body.epil ], [ %indvars.iv.unr, %for.end.loopexit.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %for.body.epil ], [ 0, %for.end.loopexit.unr-lcssa ]
  %4 = getelementptr ptr, ptr %call, i64 %indvars.iv.epil
  %add.ptr.epil = getelementptr inbounds i8, ptr %store_forwarded.epil, i64 %idx.ext
  store ptr %add.ptr.epil, ptr %4, align 8
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %for.end, label %for.body.epil, !llvm.loop !37

for.end:                                          ; preds = %for.end.loopexit.unr-lcssa, %for.body.epil, %if.end8
  ret ptr %call
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @get_mem2D(ptr nocapture noundef %array2D, i32 noundef %dim0, i32 noundef %dim1) local_unnamed_addr #0 {
entry:
  %conv = sext i32 %dim0 to i64
  %mul = shl nsw i64 %conv, 3
  %call = tail call noalias ptr @malloc(i64 noundef %mul) #8
  store ptr %call, ptr %array2D, align 8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call.i = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.54) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  %.pre = load ptr, ptr %array2D, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %0 = phi ptr [ %.pre, %if.then ], [ %call, %entry ]
  %mul2 = mul nsw i32 %dim1, %dim0
  %conv3 = sext i32 %mul2 to i64
  %call4 = tail call noalias ptr @calloc(i64 noundef %conv3, i64 noundef 1) #10
  store ptr %call4, ptr %0, align 8
  %cmp5 = icmp eq ptr %call4, null
  br i1 %cmp5, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  %call.i29 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.54) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end
  %cmp930 = icmp sgt i32 %dim0, 1
  br i1 %cmp930, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end8
  %idx.ext = sext i32 %dim1 to i64
  %wide.trip.count = zext nneg i32 %dim0 to i64
  %1 = add nsw i64 %wide.trip.count, -1
  %2 = add nsw i64 %wide.trip.count, -2
  %xtraiter = and i64 %1, 3
  %3 = icmp ult i64 %2, 3
  br i1 %3, label %for.end.loopexit.unr-lcssa, label %for.body.lr.ph.new

for.body.lr.ph.new:                               ; preds = %for.body.lr.ph
  %unroll_iter = and i64 %1, -4
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph.new
  %indvars.iv = phi i64 [ 1, %for.body.lr.ph.new ], [ %indvars.iv.next.3, %for.body ]
  %niter = phi i64 [ 0, %for.body.lr.ph.new ], [ %niter.next.3, %for.body ]
  %4 = load ptr, ptr %array2D, align 8
  %5 = getelementptr ptr, ptr %4, i64 %indvars.iv
  %arrayidx = getelementptr i8, ptr %5, i64 -8
  %6 = load ptr, ptr %arrayidx, align 8
  %add.ptr = getelementptr inbounds i8, ptr %6, i64 %idx.ext
  store ptr %add.ptr, ptr %5, align 8
  %7 = load ptr, ptr %array2D, align 8
  %8 = getelementptr ptr, ptr %7, i64 %indvars.iv
  %9 = getelementptr i8, ptr %8, i64 8
  %10 = load ptr, ptr %8, align 8
  %add.ptr.1 = getelementptr inbounds i8, ptr %10, i64 %idx.ext
  store ptr %add.ptr.1, ptr %9, align 8
  %11 = load ptr, ptr %array2D, align 8
  %12 = getelementptr ptr, ptr %11, i64 %indvars.iv
  %13 = getelementptr i8, ptr %12, i64 16
  %arrayidx.2 = getelementptr i8, ptr %12, i64 8
  %14 = load ptr, ptr %arrayidx.2, align 8
  %add.ptr.2 = getelementptr inbounds i8, ptr %14, i64 %idx.ext
  store ptr %add.ptr.2, ptr %13, align 8
  %15 = load ptr, ptr %array2D, align 8
  %16 = getelementptr ptr, ptr %15, i64 %indvars.iv
  %17 = getelementptr i8, ptr %16, i64 24
  %arrayidx.3 = getelementptr i8, ptr %16, i64 16
  %18 = load ptr, ptr %arrayidx.3, align 8
  %add.ptr.3 = getelementptr inbounds i8, ptr %18, i64 %idx.ext
  store ptr %add.ptr.3, ptr %17, align 8
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4
  %niter.next.3 = add i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %for.end.loopexit.unr-lcssa, label %for.body

for.end.loopexit.unr-lcssa:                       ; preds = %for.body, %for.body.lr.ph
  %indvars.iv.unr = phi i64 [ 1, %for.body.lr.ph ], [ %indvars.iv.next.3, %for.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.end, label %for.body.epil

for.body.epil:                                    ; preds = %for.end.loopexit.unr-lcssa, %for.body.epil
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %for.body.epil ], [ %indvars.iv.unr, %for.end.loopexit.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %for.body.epil ], [ 0, %for.end.loopexit.unr-lcssa ]
  %19 = load ptr, ptr %array2D, align 8
  %20 = getelementptr ptr, ptr %19, i64 %indvars.iv.epil
  %arrayidx.epil = getelementptr i8, ptr %20, i64 -8
  %21 = load ptr, ptr %arrayidx.epil, align 8
  %add.ptr.epil = getelementptr inbounds i8, ptr %21, i64 %idx.ext
  store ptr %add.ptr.epil, ptr %20, align 8
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %for.end, label %for.body.epil, !llvm.loop !38

for.end:                                          ; preds = %for.end.loopexit.unr-lcssa, %for.body.epil, %if.end8
  %add = add i32 %dim1, 8
  %mul16 = mul i32 %add, %dim0
  ret i32 %mul16
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @new_mem2Dint(i32 noundef %dim0, i32 noundef %dim1) local_unnamed_addr #0 {
entry:
  %conv = sext i32 %dim0 to i64
  %mul = shl nsw i64 %conv, 3
  %call = tail call noalias ptr @malloc(i64 noundef %mul) #8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call.i = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.55) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %mul2 = mul nsw i32 %dim1, %dim0
  %conv3 = sext i32 %mul2 to i64
  %call4 = tail call noalias ptr @calloc(i64 noundef %conv3, i64 noundef 4) #10
  store ptr %call4, ptr %call, align 8
  %cmp5 = icmp eq ptr %call4, null
  br i1 %cmp5, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  %call.i22 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.55) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end
  %cmp923 = icmp sgt i32 %dim0, 1
  br i1 %cmp923, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end8
  %idx.ext = sext i32 %dim1 to i64
  %wide.trip.count = zext nneg i32 %dim0 to i64
  %load_initial = load ptr, ptr %call, align 8
  %0 = add nsw i64 %wide.trip.count, -1
  %1 = add nsw i64 %wide.trip.count, -2
  %xtraiter = and i64 %0, 7
  %2 = icmp ult i64 %1, 7
  br i1 %2, label %for.end.loopexit.unr-lcssa, label %for.body.lr.ph.new

for.body.lr.ph.new:                               ; preds = %for.body.lr.ph
  %unroll_iter = and i64 %0, -8
  %invariant.gep = getelementptr i8, ptr %call, i64 8
  %invariant.gep26 = getelementptr i8, ptr %call, i64 16
  %invariant.gep28 = getelementptr i8, ptr %call, i64 24
  %invariant.gep30 = getelementptr i8, ptr %call, i64 32
  %invariant.gep32 = getelementptr i8, ptr %call, i64 40
  %invariant.gep34 = getelementptr i8, ptr %call, i64 48
  %invariant.gep36 = getelementptr i8, ptr %call, i64 56
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph.new
  %store_forwarded = phi ptr [ %load_initial, %for.body.lr.ph.new ], [ %add.ptr.7, %for.body ]
  %indvars.iv = phi i64 [ 1, %for.body.lr.ph.new ], [ %indvars.iv.next.7, %for.body ]
  %niter = phi i64 [ 0, %for.body.lr.ph.new ], [ %niter.next.7, %for.body ]
  %3 = getelementptr ptr, ptr %call, i64 %indvars.iv
  %add.ptr = getelementptr inbounds i32, ptr %store_forwarded, i64 %idx.ext
  store ptr %add.ptr, ptr %3, align 8
  %gep = getelementptr ptr, ptr %invariant.gep, i64 %indvars.iv
  %add.ptr.1 = getelementptr inbounds i32, ptr %add.ptr, i64 %idx.ext
  store ptr %add.ptr.1, ptr %gep, align 8
  %gep27 = getelementptr ptr, ptr %invariant.gep26, i64 %indvars.iv
  %add.ptr.2 = getelementptr inbounds i32, ptr %add.ptr.1, i64 %idx.ext
  store ptr %add.ptr.2, ptr %gep27, align 8
  %gep29 = getelementptr ptr, ptr %invariant.gep28, i64 %indvars.iv
  %add.ptr.3 = getelementptr inbounds i32, ptr %add.ptr.2, i64 %idx.ext
  store ptr %add.ptr.3, ptr %gep29, align 8
  %gep31 = getelementptr ptr, ptr %invariant.gep30, i64 %indvars.iv
  %add.ptr.4 = getelementptr inbounds i32, ptr %add.ptr.3, i64 %idx.ext
  store ptr %add.ptr.4, ptr %gep31, align 8
  %gep33 = getelementptr ptr, ptr %invariant.gep32, i64 %indvars.iv
  %add.ptr.5 = getelementptr inbounds i32, ptr %add.ptr.4, i64 %idx.ext
  store ptr %add.ptr.5, ptr %gep33, align 8
  %gep35 = getelementptr ptr, ptr %invariant.gep34, i64 %indvars.iv
  %add.ptr.6 = getelementptr inbounds i32, ptr %add.ptr.5, i64 %idx.ext
  store ptr %add.ptr.6, ptr %gep35, align 8
  %gep37 = getelementptr ptr, ptr %invariant.gep36, i64 %indvars.iv
  %add.ptr.7 = getelementptr inbounds i32, ptr %add.ptr.6, i64 %idx.ext
  store ptr %add.ptr.7, ptr %gep37, align 8
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8
  %niter.next.7 = add i64 %niter, 8
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %for.end.loopexit.unr-lcssa, label %for.body

for.end.loopexit.unr-lcssa:                       ; preds = %for.body, %for.body.lr.ph
  %store_forwarded.unr = phi ptr [ %load_initial, %for.body.lr.ph ], [ %add.ptr.7, %for.body ]
  %indvars.iv.unr = phi i64 [ 1, %for.body.lr.ph ], [ %indvars.iv.next.7, %for.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.end, label %for.body.epil

for.body.epil:                                    ; preds = %for.end.loopexit.unr-lcssa, %for.body.epil
  %store_forwarded.epil = phi ptr [ %add.ptr.epil, %for.body.epil ], [ %store_forwarded.unr, %for.end.loopexit.unr-lcssa ]
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %for.body.epil ], [ %indvars.iv.unr, %for.end.loopexit.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %for.body.epil ], [ 0, %for.end.loopexit.unr-lcssa ]
  %4 = getelementptr ptr, ptr %call, i64 %indvars.iv.epil
  %add.ptr.epil = getelementptr inbounds i32, ptr %store_forwarded.epil, i64 %idx.ext
  store ptr %add.ptr.epil, ptr %4, align 8
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %for.end, label %for.body.epil, !llvm.loop !39

for.end:                                          ; preds = %for.end.loopexit.unr-lcssa, %for.body.epil, %if.end8
  ret ptr %call
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @get_mem2Dint(ptr nocapture noundef %array2D, i32 noundef %dim0, i32 noundef %dim1) local_unnamed_addr #0 {
entry:
  %conv = sext i32 %dim0 to i64
  %mul = shl nsw i64 %conv, 3
  %call = tail call noalias ptr @malloc(i64 noundef %mul) #8
  store ptr %call, ptr %array2D, align 8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call.i = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.55) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  %.pre = load ptr, ptr %array2D, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %0 = phi ptr [ %.pre, %if.then ], [ %call, %entry ]
  %mul2 = mul nsw i32 %dim1, %dim0
  %conv3 = sext i32 %mul2 to i64
  %call4 = tail call noalias ptr @calloc(i64 noundef %conv3, i64 noundef 4) #10
  store ptr %call4, ptr %0, align 8
  %cmp5 = icmp eq ptr %call4, null
  br i1 %cmp5, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  %call.i29 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.55) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end
  %cmp930 = icmp sgt i32 %dim0, 1
  br i1 %cmp930, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end8
  %idx.ext = sext i32 %dim1 to i64
  %wide.trip.count = zext nneg i32 %dim0 to i64
  %1 = add nsw i64 %wide.trip.count, -1
  %2 = add nsw i64 %wide.trip.count, -2
  %xtraiter = and i64 %1, 3
  %3 = icmp ult i64 %2, 3
  br i1 %3, label %for.end.loopexit.unr-lcssa, label %for.body.lr.ph.new

for.body.lr.ph.new:                               ; preds = %for.body.lr.ph
  %unroll_iter = and i64 %1, -4
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph.new
  %indvars.iv = phi i64 [ 1, %for.body.lr.ph.new ], [ %indvars.iv.next.3, %for.body ]
  %niter = phi i64 [ 0, %for.body.lr.ph.new ], [ %niter.next.3, %for.body ]
  %4 = load ptr, ptr %array2D, align 8
  %5 = getelementptr ptr, ptr %4, i64 %indvars.iv
  %arrayidx = getelementptr i8, ptr %5, i64 -8
  %6 = load ptr, ptr %arrayidx, align 8
  %add.ptr = getelementptr inbounds i32, ptr %6, i64 %idx.ext
  store ptr %add.ptr, ptr %5, align 8
  %7 = load ptr, ptr %array2D, align 8
  %8 = getelementptr ptr, ptr %7, i64 %indvars.iv
  %9 = getelementptr i8, ptr %8, i64 8
  %10 = load ptr, ptr %8, align 8
  %add.ptr.1 = getelementptr inbounds i32, ptr %10, i64 %idx.ext
  store ptr %add.ptr.1, ptr %9, align 8
  %11 = load ptr, ptr %array2D, align 8
  %12 = getelementptr ptr, ptr %11, i64 %indvars.iv
  %13 = getelementptr i8, ptr %12, i64 16
  %arrayidx.2 = getelementptr i8, ptr %12, i64 8
  %14 = load ptr, ptr %arrayidx.2, align 8
  %add.ptr.2 = getelementptr inbounds i32, ptr %14, i64 %idx.ext
  store ptr %add.ptr.2, ptr %13, align 8
  %15 = load ptr, ptr %array2D, align 8
  %16 = getelementptr ptr, ptr %15, i64 %indvars.iv
  %17 = getelementptr i8, ptr %16, i64 24
  %arrayidx.3 = getelementptr i8, ptr %16, i64 16
  %18 = load ptr, ptr %arrayidx.3, align 8
  %add.ptr.3 = getelementptr inbounds i32, ptr %18, i64 %idx.ext
  store ptr %add.ptr.3, ptr %17, align 8
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4
  %niter.next.3 = add i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %for.end.loopexit.unr-lcssa, label %for.body

for.end.loopexit.unr-lcssa:                       ; preds = %for.body, %for.body.lr.ph
  %indvars.iv.unr = phi i64 [ 1, %for.body.lr.ph ], [ %indvars.iv.next.3, %for.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.end, label %for.body.epil

for.body.epil:                                    ; preds = %for.end.loopexit.unr-lcssa, %for.body.epil
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %for.body.epil ], [ %indvars.iv.unr, %for.end.loopexit.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %for.body.epil ], [ 0, %for.end.loopexit.unr-lcssa ]
  %19 = load ptr, ptr %array2D, align 8
  %20 = getelementptr ptr, ptr %19, i64 %indvars.iv.epil
  %arrayidx.epil = getelementptr i8, ptr %20, i64 -8
  %21 = load ptr, ptr %arrayidx.epil, align 8
  %add.ptr.epil = getelementptr inbounds i32, ptr %21, i64 %idx.ext
  store ptr %add.ptr.epil, ptr %20, align 8
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %for.end, label %for.body.epil, !llvm.loop !40

for.end:                                          ; preds = %for.end.loopexit.unr-lcssa, %for.body.epil, %if.end8
  %mul15 = shl i32 %dim1, 2
  %add = add i32 %mul15, 8
  %mul16 = mul i32 %add, %dim0
  ret i32 %mul16
}

; Function Attrs: nounwind uwtable
define dso_local i32 @get_mem2DintWithPad(ptr nocapture noundef %array2D, i32 noundef %dim0, i32 noundef %dim1, i32 noundef %iPadY, i32 noundef %iPadX) local_unnamed_addr #0 {
entry:
  %mul = shl nsw i32 %iPadY, 1
  %add = add nsw i32 %mul, %dim0
  %mul1 = shl nsw i32 %iPadX, 1
  %add2 = add nsw i32 %mul1, %dim1
  %conv = sext i32 %add to i64
  %mul3 = shl nsw i64 %conv, 3
  %call = tail call noalias ptr @malloc(i64 noundef %mul3) #8
  store ptr %call, ptr %array2D, align 8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call.i = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.56) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  %.pre = load ptr, ptr %array2D, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %0 = phi ptr [ %.pre, %if.then ], [ %call, %entry ]
  %mul5 = mul nsw i32 %add2, %add
  %conv6 = sext i32 %mul5 to i64
  %call7 = tail call noalias ptr @calloc(i64 noundef %conv6, i64 noundef 4) #10
  store ptr %call7, ptr %0, align 8
  %cmp8 = icmp eq ptr %call7, null
  br i1 %cmp8, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end
  %call.i42 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.56) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end
  %1 = load ptr, ptr %array2D, align 8
  %2 = load ptr, ptr %1, align 8
  %idx.ext = sext i32 %iPadX to i64
  %add.ptr = getelementptr inbounds i32, ptr %2, i64 %idx.ext
  store ptr %add.ptr, ptr %1, align 8
  %cmp1343 = icmp sgt i32 %add, 1
  br i1 %cmp1343, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end11
  %3 = load ptr, ptr %array2D, align 8
  %4 = load ptr, ptr %3, align 8
  %idx.ext15 = sext i32 %add2 to i64
  %wide.trip.count = zext nneg i32 %add to i64
  %5 = add nsw i64 %wide.trip.count, -1
  %6 = add nsw i64 %wide.trip.count, -2
  %xtraiter = and i64 %5, 3
  %7 = icmp ult i64 %6, 3
  br i1 %7, label %for.end.loopexit.unr-lcssa, label %for.body.lr.ph.new

for.body.lr.ph.new:                               ; preds = %for.body.lr.ph
  %unroll_iter = and i64 %5, -4
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph.new
  %indvars.iv = phi i64 [ 1, %for.body.lr.ph.new ], [ %indvars.iv.next.3, %for.body ]
  %curr.044 = phi ptr [ %4, %for.body.lr.ph.new ], [ %add.ptr16.3, %for.body ]
  %niter = phi i64 [ 0, %for.body.lr.ph.new ], [ %niter.next.3, %for.body ]
  %add.ptr16 = getelementptr inbounds i32, ptr %curr.044, i64 %idx.ext15
  %8 = load ptr, ptr %array2D, align 8
  %arrayidx17 = getelementptr inbounds ptr, ptr %8, i64 %indvars.iv
  store ptr %add.ptr16, ptr %arrayidx17, align 8
  %add.ptr16.1 = getelementptr inbounds i32, ptr %add.ptr16, i64 %idx.ext15
  %9 = load ptr, ptr %array2D, align 8
  %10 = getelementptr inbounds ptr, ptr %9, i64 %indvars.iv
  %arrayidx17.1 = getelementptr inbounds i8, ptr %10, i64 8
  store ptr %add.ptr16.1, ptr %arrayidx17.1, align 8
  %add.ptr16.2 = getelementptr inbounds i32, ptr %add.ptr16.1, i64 %idx.ext15
  %11 = load ptr, ptr %array2D, align 8
  %12 = getelementptr inbounds ptr, ptr %11, i64 %indvars.iv
  %arrayidx17.2 = getelementptr inbounds i8, ptr %12, i64 16
  store ptr %add.ptr16.2, ptr %arrayidx17.2, align 8
  %add.ptr16.3 = getelementptr inbounds i32, ptr %add.ptr16.2, i64 %idx.ext15
  %13 = load ptr, ptr %array2D, align 8
  %14 = getelementptr inbounds ptr, ptr %13, i64 %indvars.iv
  %arrayidx17.3 = getelementptr inbounds i8, ptr %14, i64 24
  store ptr %add.ptr16.3, ptr %arrayidx17.3, align 8
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4
  %niter.next.3 = add i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %for.end.loopexit.unr-lcssa, label %for.body

for.end.loopexit.unr-lcssa:                       ; preds = %for.body, %for.body.lr.ph
  %indvars.iv.unr = phi i64 [ 1, %for.body.lr.ph ], [ %indvars.iv.next.3, %for.body ]
  %curr.044.unr = phi ptr [ %4, %for.body.lr.ph ], [ %add.ptr16.3, %for.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.end, label %for.body.epil

for.body.epil:                                    ; preds = %for.end.loopexit.unr-lcssa, %for.body.epil
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %for.body.epil ], [ %indvars.iv.unr, %for.end.loopexit.unr-lcssa ]
  %curr.044.epil = phi ptr [ %add.ptr16.epil, %for.body.epil ], [ %curr.044.unr, %for.end.loopexit.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %for.body.epil ], [ 0, %for.end.loopexit.unr-lcssa ]
  %add.ptr16.epil = getelementptr inbounds i32, ptr %curr.044.epil, i64 %idx.ext15
  %15 = load ptr, ptr %array2D, align 8
  %arrayidx17.epil = getelementptr inbounds ptr, ptr %15, i64 %indvars.iv.epil
  store ptr %add.ptr16.epil, ptr %arrayidx17.epil, align 8
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %for.end, label %for.body.epil, !llvm.loop !41

for.end:                                          ; preds = %for.end.loopexit.unr-lcssa, %for.body.epil, %if.end11
  %16 = load ptr, ptr %array2D, align 8
  %idxprom18 = sext i32 %iPadY to i64
  %arrayidx19 = getelementptr inbounds ptr, ptr %16, i64 %idxprom18
  store ptr %arrayidx19, ptr %array2D, align 8
  %mul22 = shl i32 %add2, 2
  %add23 = add i32 %mul22, 8
  %mul24 = mul i32 %add23, %add
  ret i32 %mul24
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @get_mem2Dint64(ptr nocapture noundef %array2D, i32 noundef %dim0, i32 noundef %dim1) local_unnamed_addr #0 {
entry:
  %conv = sext i32 %dim0 to i64
  %mul = shl nsw i64 %conv, 3
  %call = tail call noalias ptr @malloc(i64 noundef %mul) #8
  store ptr %call, ptr %array2D, align 8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call.i = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.57) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  %.pre = load ptr, ptr %array2D, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %0 = phi ptr [ %.pre, %if.then ], [ %call, %entry ]
  %mul2 = mul nsw i32 %dim1, %dim0
  %conv3 = sext i32 %mul2 to i64
  %call4 = tail call noalias ptr @calloc(i64 noundef %conv3, i64 noundef 8) #10
  store ptr %call4, ptr %0, align 8
  %cmp5 = icmp eq ptr %call4, null
  br i1 %cmp5, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  %call.i29 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.57) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end
  %cmp930 = icmp sgt i32 %dim0, 1
  br i1 %cmp930, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end8
  %idx.ext = sext i32 %dim1 to i64
  %wide.trip.count = zext nneg i32 %dim0 to i64
  %1 = add nsw i64 %wide.trip.count, -1
  %2 = add nsw i64 %wide.trip.count, -2
  %xtraiter = and i64 %1, 3
  %3 = icmp ult i64 %2, 3
  br i1 %3, label %for.end.loopexit.unr-lcssa, label %for.body.lr.ph.new

for.body.lr.ph.new:                               ; preds = %for.body.lr.ph
  %unroll_iter = and i64 %1, -4
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph.new
  %indvars.iv = phi i64 [ 1, %for.body.lr.ph.new ], [ %indvars.iv.next.3, %for.body ]
  %niter = phi i64 [ 0, %for.body.lr.ph.new ], [ %niter.next.3, %for.body ]
  %4 = load ptr, ptr %array2D, align 8
  %5 = getelementptr ptr, ptr %4, i64 %indvars.iv
  %arrayidx = getelementptr i8, ptr %5, i64 -8
  %6 = load ptr, ptr %arrayidx, align 8
  %add.ptr = getelementptr inbounds i64, ptr %6, i64 %idx.ext
  store ptr %add.ptr, ptr %5, align 8
  %7 = load ptr, ptr %array2D, align 8
  %8 = getelementptr ptr, ptr %7, i64 %indvars.iv
  %9 = getelementptr i8, ptr %8, i64 8
  %10 = load ptr, ptr %8, align 8
  %add.ptr.1 = getelementptr inbounds i64, ptr %10, i64 %idx.ext
  store ptr %add.ptr.1, ptr %9, align 8
  %11 = load ptr, ptr %array2D, align 8
  %12 = getelementptr ptr, ptr %11, i64 %indvars.iv
  %13 = getelementptr i8, ptr %12, i64 16
  %arrayidx.2 = getelementptr i8, ptr %12, i64 8
  %14 = load ptr, ptr %arrayidx.2, align 8
  %add.ptr.2 = getelementptr inbounds i64, ptr %14, i64 %idx.ext
  store ptr %add.ptr.2, ptr %13, align 8
  %15 = load ptr, ptr %array2D, align 8
  %16 = getelementptr ptr, ptr %15, i64 %indvars.iv
  %17 = getelementptr i8, ptr %16, i64 24
  %arrayidx.3 = getelementptr i8, ptr %16, i64 16
  %18 = load ptr, ptr %arrayidx.3, align 8
  %add.ptr.3 = getelementptr inbounds i64, ptr %18, i64 %idx.ext
  store ptr %add.ptr.3, ptr %17, align 8
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4
  %niter.next.3 = add i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %for.end.loopexit.unr-lcssa, label %for.body

for.end.loopexit.unr-lcssa:                       ; preds = %for.body, %for.body.lr.ph
  %indvars.iv.unr = phi i64 [ 1, %for.body.lr.ph ], [ %indvars.iv.next.3, %for.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.end, label %for.body.epil

for.body.epil:                                    ; preds = %for.end.loopexit.unr-lcssa, %for.body.epil
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %for.body.epil ], [ %indvars.iv.unr, %for.end.loopexit.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %for.body.epil ], [ 0, %for.end.loopexit.unr-lcssa ]
  %19 = load ptr, ptr %array2D, align 8
  %20 = getelementptr ptr, ptr %19, i64 %indvars.iv.epil
  %arrayidx.epil = getelementptr i8, ptr %20, i64 -8
  %21 = load ptr, ptr %arrayidx.epil, align 8
  %add.ptr.epil = getelementptr inbounds i64, ptr %21, i64 %idx.ext
  store ptr %add.ptr.epil, ptr %20, align 8
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %for.end, label %for.body.epil, !llvm.loop !42

for.end:                                          ; preds = %for.end.loopexit.unr-lcssa, %for.body.epil, %if.end8
  %mul15 = shl i32 %dim1, 3
  %add = add i32 %mul15, 8
  %mul16 = mul i32 %add, %dim0
  ret i32 %mul16
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @get_mem2Ddistblk(ptr nocapture noundef %array2D, i32 noundef %dim0, i32 noundef %dim1) local_unnamed_addr #0 {
entry:
  %conv = sext i32 %dim0 to i64
  %mul = shl nsw i64 %conv, 3
  %call = tail call noalias ptr @malloc(i64 noundef %mul) #8
  store ptr %call, ptr %array2D, align 8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call.i = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.58) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  %.pre = load ptr, ptr %array2D, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %0 = phi ptr [ %.pre, %if.then ], [ %call, %entry ]
  %mul2 = mul nsw i32 %dim1, %dim0
  %conv3 = sext i32 %mul2 to i64
  %call4 = tail call noalias ptr @calloc(i64 noundef %conv3, i64 noundef 8) #10
  store ptr %call4, ptr %0, align 8
  %cmp5 = icmp eq ptr %call4, null
  br i1 %cmp5, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  %call.i29 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.58) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end
  %cmp930 = icmp sgt i32 %dim0, 1
  br i1 %cmp930, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end8
  %idx.ext = sext i32 %dim1 to i64
  %wide.trip.count = zext nneg i32 %dim0 to i64
  %1 = add nsw i64 %wide.trip.count, -1
  %2 = add nsw i64 %wide.trip.count, -2
  %xtraiter = and i64 %1, 3
  %3 = icmp ult i64 %2, 3
  br i1 %3, label %for.end.loopexit.unr-lcssa, label %for.body.lr.ph.new

for.body.lr.ph.new:                               ; preds = %for.body.lr.ph
  %unroll_iter = and i64 %1, -4
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph.new
  %indvars.iv = phi i64 [ 1, %for.body.lr.ph.new ], [ %indvars.iv.next.3, %for.body ]
  %niter = phi i64 [ 0, %for.body.lr.ph.new ], [ %niter.next.3, %for.body ]
  %4 = load ptr, ptr %array2D, align 8
  %5 = getelementptr ptr, ptr %4, i64 %indvars.iv
  %arrayidx = getelementptr i8, ptr %5, i64 -8
  %6 = load ptr, ptr %arrayidx, align 8
  %add.ptr = getelementptr inbounds i64, ptr %6, i64 %idx.ext
  store ptr %add.ptr, ptr %5, align 8
  %7 = load ptr, ptr %array2D, align 8
  %8 = getelementptr ptr, ptr %7, i64 %indvars.iv
  %9 = getelementptr i8, ptr %8, i64 8
  %10 = load ptr, ptr %8, align 8
  %add.ptr.1 = getelementptr inbounds i64, ptr %10, i64 %idx.ext
  store ptr %add.ptr.1, ptr %9, align 8
  %11 = load ptr, ptr %array2D, align 8
  %12 = getelementptr ptr, ptr %11, i64 %indvars.iv
  %13 = getelementptr i8, ptr %12, i64 16
  %arrayidx.2 = getelementptr i8, ptr %12, i64 8
  %14 = load ptr, ptr %arrayidx.2, align 8
  %add.ptr.2 = getelementptr inbounds i64, ptr %14, i64 %idx.ext
  store ptr %add.ptr.2, ptr %13, align 8
  %15 = load ptr, ptr %array2D, align 8
  %16 = getelementptr ptr, ptr %15, i64 %indvars.iv
  %17 = getelementptr i8, ptr %16, i64 24
  %arrayidx.3 = getelementptr i8, ptr %16, i64 16
  %18 = load ptr, ptr %arrayidx.3, align 8
  %add.ptr.3 = getelementptr inbounds i64, ptr %18, i64 %idx.ext
  store ptr %add.ptr.3, ptr %17, align 8
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4
  %niter.next.3 = add i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %for.end.loopexit.unr-lcssa, label %for.body

for.end.loopexit.unr-lcssa:                       ; preds = %for.body, %for.body.lr.ph
  %indvars.iv.unr = phi i64 [ 1, %for.body.lr.ph ], [ %indvars.iv.next.3, %for.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.end, label %for.body.epil

for.body.epil:                                    ; preds = %for.end.loopexit.unr-lcssa, %for.body.epil
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %for.body.epil ], [ %indvars.iv.unr, %for.end.loopexit.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %for.body.epil ], [ 0, %for.end.loopexit.unr-lcssa ]
  %19 = load ptr, ptr %array2D, align 8
  %20 = getelementptr ptr, ptr %19, i64 %indvars.iv.epil
  %arrayidx.epil = getelementptr i8, ptr %20, i64 -8
  %21 = load ptr, ptr %arrayidx.epil, align 8
  %add.ptr.epil = getelementptr inbounds i64, ptr %21, i64 %idx.ext
  store ptr %add.ptr.epil, ptr %20, align 8
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %for.end, label %for.body.epil, !llvm.loop !43

for.end:                                          ; preds = %for.end.loopexit.unr-lcssa, %for.body.epil, %if.end8
  %mul15 = shl i32 %dim1, 3
  %add = add i32 %mul15, 8
  %mul16 = mul i32 %add, %dim0
  ret i32 %mul16
}

; Function Attrs: nounwind uwtable
define dso_local i32 @get_mem3D(ptr nocapture noundef %array3D, i32 noundef %dim0, i32 noundef %dim1, i32 noundef %dim2) local_unnamed_addr #0 {
entry:
  %conv = sext i32 %dim0 to i64
  %mul = shl nsw i64 %conv, 3
  %call = tail call noalias ptr @malloc(i64 noundef %mul) #8
  store ptr %call, ptr %array3D, align 8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call.i = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.59) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  %.pre = load ptr, ptr %array3D, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %0 = phi ptr [ %.pre, %if.then ], [ %call, %entry ]
  %mul5 = mul nsw i32 %dim1, %dim0
  %call6 = tail call i32 @get_mem2D(ptr noundef %0, i32 noundef %mul5, i32 noundef %dim2)
  %cmp722 = icmp sgt i32 %dim0, 1
  br i1 %cmp722, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %idx.ext = sext i32 %dim1 to i64
  %wide.trip.count = zext nneg i32 %dim0 to i64
  %1 = add nsw i64 %wide.trip.count, -1
  %2 = add nsw i64 %wide.trip.count, -2
  %xtraiter = and i64 %1, 3
  %3 = icmp ult i64 %2, 3
  br i1 %3, label %for.end.loopexit.unr-lcssa, label %for.body.lr.ph.new

for.body.lr.ph.new:                               ; preds = %for.body.lr.ph
  %unroll_iter = and i64 %1, -4
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph.new
  %indvars.iv = phi i64 [ 1, %for.body.lr.ph.new ], [ %indvars.iv.next.3, %for.body ]
  %niter = phi i64 [ 0, %for.body.lr.ph.new ], [ %niter.next.3, %for.body ]
  %4 = load ptr, ptr %array3D, align 8
  %5 = getelementptr ptr, ptr %4, i64 %indvars.iv
  %arrayidx = getelementptr i8, ptr %5, i64 -8
  %6 = load ptr, ptr %arrayidx, align 8
  %add.ptr = getelementptr inbounds ptr, ptr %6, i64 %idx.ext
  store ptr %add.ptr, ptr %5, align 8
  %7 = load ptr, ptr %array3D, align 8
  %8 = getelementptr ptr, ptr %7, i64 %indvars.iv
  %9 = getelementptr i8, ptr %8, i64 8
  %10 = load ptr, ptr %8, align 8
  %add.ptr.1 = getelementptr inbounds ptr, ptr %10, i64 %idx.ext
  store ptr %add.ptr.1, ptr %9, align 8
  %11 = load ptr, ptr %array3D, align 8
  %12 = getelementptr ptr, ptr %11, i64 %indvars.iv
  %13 = getelementptr i8, ptr %12, i64 16
  %arrayidx.2 = getelementptr i8, ptr %12, i64 8
  %14 = load ptr, ptr %arrayidx.2, align 8
  %add.ptr.2 = getelementptr inbounds ptr, ptr %14, i64 %idx.ext
  store ptr %add.ptr.2, ptr %13, align 8
  %15 = load ptr, ptr %array3D, align 8
  %16 = getelementptr ptr, ptr %15, i64 %indvars.iv
  %17 = getelementptr i8, ptr %16, i64 24
  %arrayidx.3 = getelementptr i8, ptr %16, i64 16
  %18 = load ptr, ptr %arrayidx.3, align 8
  %add.ptr.3 = getelementptr inbounds ptr, ptr %18, i64 %idx.ext
  store ptr %add.ptr.3, ptr %17, align 8
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4
  %niter.next.3 = add i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %for.end.loopexit.unr-lcssa, label %for.body

for.end.loopexit.unr-lcssa:                       ; preds = %for.body, %for.body.lr.ph
  %indvars.iv.unr = phi i64 [ 1, %for.body.lr.ph ], [ %indvars.iv.next.3, %for.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.end, label %for.body.epil

for.body.epil:                                    ; preds = %for.end.loopexit.unr-lcssa, %for.body.epil
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %for.body.epil ], [ %indvars.iv.unr, %for.end.loopexit.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %for.body.epil ], [ 0, %for.end.loopexit.unr-lcssa ]
  %19 = load ptr, ptr %array3D, align 8
  %20 = getelementptr ptr, ptr %19, i64 %indvars.iv.epil
  %arrayidx.epil = getelementptr i8, ptr %20, i64 -8
  %21 = load ptr, ptr %arrayidx.epil, align 8
  %add.ptr.epil = getelementptr inbounds ptr, ptr %21, i64 %idx.ext
  store ptr %add.ptr.epil, ptr %20, align 8
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %for.end, label %for.body.epil, !llvm.loop !44

for.end:                                          ; preds = %for.end.loopexit.unr-lcssa, %for.body.epil, %if.end
  %conv1 = trunc i64 %mul to i32
  %add = add nsw i32 %call6, %conv1
  ret i32 %add
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @get_mem4D(ptr nocapture noundef %array4D, i32 noundef %dim0, i32 noundef %dim1, i32 noundef %dim2, i32 noundef %dim3) local_unnamed_addr #0 {
entry:
  %conv = sext i32 %dim0 to i64
  %mul = shl nsw i64 %conv, 3
  %call = tail call noalias ptr @malloc(i64 noundef %mul) #8
  store ptr %call, ptr %array4D, align 8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call.i = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.60) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  %.pre = load ptr, ptr %array4D, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %0 = phi ptr [ %.pre, %if.then ], [ %call, %entry ]
  %mul5 = mul nsw i32 %dim1, %dim0
  %conv.i = sext i32 %mul5 to i64
  %mul.i = shl nsw i64 %conv.i, 3
  %call.i22 = tail call noalias ptr @malloc(i64 noundef %mul.i) #8
  store ptr %call.i22, ptr %0, align 8
  %cmp.i = icmp eq ptr %call.i22, null
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end
  %call.i.i = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.59) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  %.pre.i = load ptr, ptr %0, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end
  %1 = phi ptr [ %.pre.i, %if.then.i ], [ %call.i22, %if.end ]
  %mul5.i = mul nsw i32 %mul5, %dim2
  %call6.i = tail call i32 @get_mem2D(ptr noundef %1, i32 noundef %mul5.i, i32 noundef %dim3)
  %cmp722.i = icmp sgt i32 %mul5, 1
  br i1 %cmp722.i, label %for.body.lr.ph.i, label %get_mem3D.exit

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %idx.ext.i = sext i32 %dim2 to i64
  %wide.trip.count.i = zext nneg i32 %mul5 to i64
  %2 = add nsw i64 %wide.trip.count.i, -1
  %3 = add nsw i64 %wide.trip.count.i, -2
  %xtraiter = and i64 %2, 3
  %4 = icmp ult i64 %3, 3
  br i1 %4, label %get_mem3D.exit.loopexit.unr-lcssa, label %for.body.lr.ph.i.new

for.body.lr.ph.i.new:                             ; preds = %for.body.lr.ph.i
  %unroll_iter = and i64 %2, -4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %for.body.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 1, %for.body.lr.ph.i.new ], [ %indvars.iv.next.i.3, %for.body.i ]
  %niter = phi i64 [ 0, %for.body.lr.ph.i.new ], [ %niter.next.3, %for.body.i ]
  %5 = load ptr, ptr %0, align 8
  %6 = getelementptr ptr, ptr %5, i64 %indvars.iv.i
  %arrayidx.i = getelementptr i8, ptr %6, i64 -8
  %7 = load ptr, ptr %arrayidx.i, align 8
  %add.ptr.i = getelementptr inbounds ptr, ptr %7, i64 %idx.ext.i
  store ptr %add.ptr.i, ptr %6, align 8
  %8 = load ptr, ptr %0, align 8
  %9 = getelementptr ptr, ptr %8, i64 %indvars.iv.i
  %10 = getelementptr i8, ptr %9, i64 8
  %11 = load ptr, ptr %9, align 8
  %add.ptr.i.1 = getelementptr inbounds ptr, ptr %11, i64 %idx.ext.i
  store ptr %add.ptr.i.1, ptr %10, align 8
  %12 = load ptr, ptr %0, align 8
  %13 = getelementptr ptr, ptr %12, i64 %indvars.iv.i
  %14 = getelementptr i8, ptr %13, i64 16
  %arrayidx.i.2 = getelementptr i8, ptr %13, i64 8
  %15 = load ptr, ptr %arrayidx.i.2, align 8
  %add.ptr.i.2 = getelementptr inbounds ptr, ptr %15, i64 %idx.ext.i
  store ptr %add.ptr.i.2, ptr %14, align 8
  %16 = load ptr, ptr %0, align 8
  %17 = getelementptr ptr, ptr %16, i64 %indvars.iv.i
  %18 = getelementptr i8, ptr %17, i64 24
  %arrayidx.i.3 = getelementptr i8, ptr %17, i64 16
  %19 = load ptr, ptr %arrayidx.i.3, align 8
  %add.ptr.i.3 = getelementptr inbounds ptr, ptr %19, i64 %idx.ext.i
  store ptr %add.ptr.i.3, ptr %18, align 8
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4
  %niter.next.3 = add i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %get_mem3D.exit.loopexit.unr-lcssa, label %for.body.i

get_mem3D.exit.loopexit.unr-lcssa:                ; preds = %for.body.i, %for.body.lr.ph.i
  %indvars.iv.i.unr = phi i64 [ 1, %for.body.lr.ph.i ], [ %indvars.iv.next.i.3, %for.body.i ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %get_mem3D.exit, label %for.body.i.epil

for.body.i.epil:                                  ; preds = %get_mem3D.exit.loopexit.unr-lcssa, %for.body.i.epil
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.next.i.epil, %for.body.i.epil ], [ %indvars.iv.i.unr, %get_mem3D.exit.loopexit.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %for.body.i.epil ], [ 0, %get_mem3D.exit.loopexit.unr-lcssa ]
  %20 = load ptr, ptr %0, align 8
  %21 = getelementptr ptr, ptr %20, i64 %indvars.iv.i.epil
  %arrayidx.i.epil = getelementptr i8, ptr %21, i64 -8
  %22 = load ptr, ptr %arrayidx.i.epil, align 8
  %add.ptr.i.epil = getelementptr inbounds ptr, ptr %22, i64 %idx.ext.i
  store ptr %add.ptr.i.epil, ptr %21, align 8
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %get_mem3D.exit, label %for.body.i.epil, !llvm.loop !45

get_mem3D.exit:                                   ; preds = %get_mem3D.exit.loopexit.unr-lcssa, %for.body.i.epil, %if.end.i
  %cmp723 = icmp sgt i32 %dim0, 1
  br i1 %cmp723, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %get_mem3D.exit
  %idx.ext = sext i32 %dim1 to i64
  %wide.trip.count = zext nneg i32 %dim0 to i64
  %23 = add nsw i64 %wide.trip.count, -1
  %24 = add nsw i64 %wide.trip.count, -2
  %xtraiter26 = and i64 %23, 3
  %25 = icmp ult i64 %24, 3
  br i1 %25, label %for.end.loopexit.unr-lcssa, label %for.body.lr.ph.new

for.body.lr.ph.new:                               ; preds = %for.body.lr.ph
  %unroll_iter29 = and i64 %23, -4
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph.new
  %indvars.iv = phi i64 [ 1, %for.body.lr.ph.new ], [ %indvars.iv.next.3, %for.body ]
  %niter30 = phi i64 [ 0, %for.body.lr.ph.new ], [ %niter30.next.3, %for.body ]
  %26 = load ptr, ptr %array4D, align 8
  %27 = getelementptr ptr, ptr %26, i64 %indvars.iv
  %arrayidx = getelementptr i8, ptr %27, i64 -8
  %28 = load ptr, ptr %arrayidx, align 8
  %add.ptr = getelementptr inbounds ptr, ptr %28, i64 %idx.ext
  store ptr %add.ptr, ptr %27, align 8
  %29 = load ptr, ptr %array4D, align 8
  %30 = getelementptr ptr, ptr %29, i64 %indvars.iv
  %31 = getelementptr i8, ptr %30, i64 8
  %32 = load ptr, ptr %30, align 8
  %add.ptr.1 = getelementptr inbounds ptr, ptr %32, i64 %idx.ext
  store ptr %add.ptr.1, ptr %31, align 8
  %33 = load ptr, ptr %array4D, align 8
  %34 = getelementptr ptr, ptr %33, i64 %indvars.iv
  %35 = getelementptr i8, ptr %34, i64 16
  %arrayidx.2 = getelementptr i8, ptr %34, i64 8
  %36 = load ptr, ptr %arrayidx.2, align 8
  %add.ptr.2 = getelementptr inbounds ptr, ptr %36, i64 %idx.ext
  store ptr %add.ptr.2, ptr %35, align 8
  %37 = load ptr, ptr %array4D, align 8
  %38 = getelementptr ptr, ptr %37, i64 %indvars.iv
  %39 = getelementptr i8, ptr %38, i64 24
  %arrayidx.3 = getelementptr i8, ptr %38, i64 16
  %40 = load ptr, ptr %arrayidx.3, align 8
  %add.ptr.3 = getelementptr inbounds ptr, ptr %40, i64 %idx.ext
  store ptr %add.ptr.3, ptr %39, align 8
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4
  %niter30.next.3 = add i64 %niter30, 4
  %niter30.ncmp.3 = icmp eq i64 %niter30.next.3, %unroll_iter29
  br i1 %niter30.ncmp.3, label %for.end.loopexit.unr-lcssa, label %for.body

for.end.loopexit.unr-lcssa:                       ; preds = %for.body, %for.body.lr.ph
  %indvars.iv.unr = phi i64 [ 1, %for.body.lr.ph ], [ %indvars.iv.next.3, %for.body ]
  %lcmp.mod28.not = icmp eq i64 %xtraiter26, 0
  br i1 %lcmp.mod28.not, label %for.end, label %for.body.epil

for.body.epil:                                    ; preds = %for.end.loopexit.unr-lcssa, %for.body.epil
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %for.body.epil ], [ %indvars.iv.unr, %for.end.loopexit.unr-lcssa ]
  %epil.iter27 = phi i64 [ %epil.iter27.next, %for.body.epil ], [ 0, %for.end.loopexit.unr-lcssa ]
  %41 = load ptr, ptr %array4D, align 8
  %42 = getelementptr ptr, ptr %41, i64 %indvars.iv.epil
  %arrayidx.epil = getelementptr i8, ptr %42, i64 -8
  %43 = load ptr, ptr %arrayidx.epil, align 8
  %add.ptr.epil = getelementptr inbounds ptr, ptr %43, i64 %idx.ext
  store ptr %add.ptr.epil, ptr %42, align 8
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter27.next = add i64 %epil.iter27, 1
  %epil.iter27.cmp.not = icmp eq i64 %epil.iter27.next, %xtraiter26
  br i1 %epil.iter27.cmp.not, label %for.end, label %for.body.epil, !llvm.loop !46

for.end:                                          ; preds = %for.end.loopexit.unr-lcssa, %for.body.epil, %get_mem3D.exit
  %conv1.i = trunc i64 %mul.i to i32
  %conv1 = trunc i64 %mul to i32
  %add.i = add i32 %conv1.i, %conv1
  %add = add i32 %add.i, %call6.i
  ret i32 %add
}

; Function Attrs: nounwind uwtable
define dso_local i32 @get_mem3Dint(ptr nocapture noundef %array3D, i32 noundef %dim0, i32 noundef %dim1, i32 noundef %dim2) local_unnamed_addr #0 {
entry:
  %conv = sext i32 %dim0 to i64
  %mul = shl nsw i64 %conv, 3
  %call = tail call noalias ptr @malloc(i64 noundef %mul) #8
  store ptr %call, ptr %array3D, align 8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call.i = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.61) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  %.pre = load ptr, ptr %array3D, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %0 = phi ptr [ %.pre, %if.then ], [ %call, %entry ]
  %mul5 = mul nsw i32 %dim1, %dim0
  %call6 = tail call i32 @get_mem2Dint(ptr noundef %0, i32 noundef %mul5, i32 noundef %dim2)
  %cmp722 = icmp sgt i32 %dim0, 1
  br i1 %cmp722, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %idx.ext = sext i32 %dim1 to i64
  %wide.trip.count = zext nneg i32 %dim0 to i64
  %1 = add nsw i64 %wide.trip.count, -1
  %2 = add nsw i64 %wide.trip.count, -2
  %xtraiter = and i64 %1, 3
  %3 = icmp ult i64 %2, 3
  br i1 %3, label %for.end.loopexit.unr-lcssa, label %for.body.lr.ph.new

for.body.lr.ph.new:                               ; preds = %for.body.lr.ph
  %unroll_iter = and i64 %1, -4
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph.new
  %indvars.iv = phi i64 [ 1, %for.body.lr.ph.new ], [ %indvars.iv.next.3, %for.body ]
  %niter = phi i64 [ 0, %for.body.lr.ph.new ], [ %niter.next.3, %for.body ]
  %4 = load ptr, ptr %array3D, align 8
  %5 = getelementptr ptr, ptr %4, i64 %indvars.iv
  %arrayidx = getelementptr i8, ptr %5, i64 -8
  %6 = load ptr, ptr %arrayidx, align 8
  %add.ptr = getelementptr inbounds ptr, ptr %6, i64 %idx.ext
  store ptr %add.ptr, ptr %5, align 8
  %7 = load ptr, ptr %array3D, align 8
  %8 = getelementptr ptr, ptr %7, i64 %indvars.iv
  %9 = getelementptr i8, ptr %8, i64 8
  %10 = load ptr, ptr %8, align 8
  %add.ptr.1 = getelementptr inbounds ptr, ptr %10, i64 %idx.ext
  store ptr %add.ptr.1, ptr %9, align 8
  %11 = load ptr, ptr %array3D, align 8
  %12 = getelementptr ptr, ptr %11, i64 %indvars.iv
  %13 = getelementptr i8, ptr %12, i64 16
  %arrayidx.2 = getelementptr i8, ptr %12, i64 8
  %14 = load ptr, ptr %arrayidx.2, align 8
  %add.ptr.2 = getelementptr inbounds ptr, ptr %14, i64 %idx.ext
  store ptr %add.ptr.2, ptr %13, align 8
  %15 = load ptr, ptr %array3D, align 8
  %16 = getelementptr ptr, ptr %15, i64 %indvars.iv
  %17 = getelementptr i8, ptr %16, i64 24
  %arrayidx.3 = getelementptr i8, ptr %16, i64 16
  %18 = load ptr, ptr %arrayidx.3, align 8
  %add.ptr.3 = getelementptr inbounds ptr, ptr %18, i64 %idx.ext
  store ptr %add.ptr.3, ptr %17, align 8
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4
  %niter.next.3 = add i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %for.end.loopexit.unr-lcssa, label %for.body

for.end.loopexit.unr-lcssa:                       ; preds = %for.body, %for.body.lr.ph
  %indvars.iv.unr = phi i64 [ 1, %for.body.lr.ph ], [ %indvars.iv.next.3, %for.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.end, label %for.body.epil

for.body.epil:                                    ; preds = %for.end.loopexit.unr-lcssa, %for.body.epil
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %for.body.epil ], [ %indvars.iv.unr, %for.end.loopexit.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %for.body.epil ], [ 0, %for.end.loopexit.unr-lcssa ]
  %19 = load ptr, ptr %array3D, align 8
  %20 = getelementptr ptr, ptr %19, i64 %indvars.iv.epil
  %arrayidx.epil = getelementptr i8, ptr %20, i64 -8
  %21 = load ptr, ptr %arrayidx.epil, align 8
  %add.ptr.epil = getelementptr inbounds ptr, ptr %21, i64 %idx.ext
  store ptr %add.ptr.epil, ptr %20, align 8
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %for.end, label %for.body.epil, !llvm.loop !47

for.end:                                          ; preds = %for.end.loopexit.unr-lcssa, %for.body.epil, %if.end
  %conv1 = trunc i64 %mul to i32
  %add = add nsw i32 %call6, %conv1
  ret i32 %add
}

; Function Attrs: nounwind uwtable
define dso_local i32 @get_mem3Dint64(ptr nocapture noundef %array3D, i32 noundef %dim0, i32 noundef %dim1, i32 noundef %dim2) local_unnamed_addr #0 {
entry:
  %conv = sext i32 %dim0 to i64
  %mul = shl nsw i64 %conv, 3
  %call = tail call noalias ptr @malloc(i64 noundef %mul) #8
  store ptr %call, ptr %array3D, align 8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call.i = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.62) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  %.pre = load ptr, ptr %array3D, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %0 = phi ptr [ %.pre, %if.then ], [ %call, %entry ]
  %mul5 = mul nsw i32 %dim1, %dim0
  %call6 = tail call i32 @get_mem2Dint64(ptr noundef %0, i32 noundef %mul5, i32 noundef %dim2)
  %cmp722 = icmp sgt i32 %dim0, 1
  br i1 %cmp722, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %idx.ext = sext i32 %dim1 to i64
  %wide.trip.count = zext nneg i32 %dim0 to i64
  %1 = add nsw i64 %wide.trip.count, -1
  %2 = add nsw i64 %wide.trip.count, -2
  %xtraiter = and i64 %1, 3
  %3 = icmp ult i64 %2, 3
  br i1 %3, label %for.end.loopexit.unr-lcssa, label %for.body.lr.ph.new

for.body.lr.ph.new:                               ; preds = %for.body.lr.ph
  %unroll_iter = and i64 %1, -4
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph.new
  %indvars.iv = phi i64 [ 1, %for.body.lr.ph.new ], [ %indvars.iv.next.3, %for.body ]
  %niter = phi i64 [ 0, %for.body.lr.ph.new ], [ %niter.next.3, %for.body ]
  %4 = load ptr, ptr %array3D, align 8
  %5 = getelementptr ptr, ptr %4, i64 %indvars.iv
  %arrayidx = getelementptr i8, ptr %5, i64 -8
  %6 = load ptr, ptr %arrayidx, align 8
  %add.ptr = getelementptr inbounds ptr, ptr %6, i64 %idx.ext
  store ptr %add.ptr, ptr %5, align 8
  %7 = load ptr, ptr %array3D, align 8
  %8 = getelementptr ptr, ptr %7, i64 %indvars.iv
  %9 = getelementptr i8, ptr %8, i64 8
  %10 = load ptr, ptr %8, align 8
  %add.ptr.1 = getelementptr inbounds ptr, ptr %10, i64 %idx.ext
  store ptr %add.ptr.1, ptr %9, align 8
  %11 = load ptr, ptr %array3D, align 8
  %12 = getelementptr ptr, ptr %11, i64 %indvars.iv
  %13 = getelementptr i8, ptr %12, i64 16
  %arrayidx.2 = getelementptr i8, ptr %12, i64 8
  %14 = load ptr, ptr %arrayidx.2, align 8
  %add.ptr.2 = getelementptr inbounds ptr, ptr %14, i64 %idx.ext
  store ptr %add.ptr.2, ptr %13, align 8
  %15 = load ptr, ptr %array3D, align 8
  %16 = getelementptr ptr, ptr %15, i64 %indvars.iv
  %17 = getelementptr i8, ptr %16, i64 24
  %arrayidx.3 = getelementptr i8, ptr %16, i64 16
  %18 = load ptr, ptr %arrayidx.3, align 8
  %add.ptr.3 = getelementptr inbounds ptr, ptr %18, i64 %idx.ext
  store ptr %add.ptr.3, ptr %17, align 8
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4
  %niter.next.3 = add i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %for.end.loopexit.unr-lcssa, label %for.body

for.end.loopexit.unr-lcssa:                       ; preds = %for.body, %for.body.lr.ph
  %indvars.iv.unr = phi i64 [ 1, %for.body.lr.ph ], [ %indvars.iv.next.3, %for.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.end, label %for.body.epil

for.body.epil:                                    ; preds = %for.end.loopexit.unr-lcssa, %for.body.epil
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %for.body.epil ], [ %indvars.iv.unr, %for.end.loopexit.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %for.body.epil ], [ 0, %for.end.loopexit.unr-lcssa ]
  %19 = load ptr, ptr %array3D, align 8
  %20 = getelementptr ptr, ptr %19, i64 %indvars.iv.epil
  %arrayidx.epil = getelementptr i8, ptr %20, i64 -8
  %21 = load ptr, ptr %arrayidx.epil, align 8
  %add.ptr.epil = getelementptr inbounds ptr, ptr %21, i64 %idx.ext
  store ptr %add.ptr.epil, ptr %20, align 8
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %for.end, label %for.body.epil, !llvm.loop !48

for.end:                                          ; preds = %for.end.loopexit.unr-lcssa, %for.body.epil, %if.end
  %conv1 = trunc i64 %mul to i32
  %add = add nsw i32 %call6, %conv1
  ret i32 %add
}

; Function Attrs: nounwind uwtable
define dso_local i32 @get_mem3Ddistblk(ptr nocapture noundef %array3D, i32 noundef %dim0, i32 noundef %dim1, i32 noundef %dim2) local_unnamed_addr #0 {
entry:
  %conv = sext i32 %dim0 to i64
  %mul = shl nsw i64 %conv, 3
  %call = tail call noalias ptr @malloc(i64 noundef %mul) #8
  store ptr %call, ptr %array3D, align 8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call.i = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.63) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  %.pre = load ptr, ptr %array3D, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %0 = phi ptr [ %.pre, %if.then ], [ %call, %entry ]
  %mul5 = mul nsw i32 %dim1, %dim0
  %call6 = tail call i32 @get_mem2Ddistblk(ptr noundef %0, i32 noundef %mul5, i32 noundef %dim2)
  %cmp722 = icmp sgt i32 %dim0, 1
  br i1 %cmp722, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %idx.ext = sext i32 %dim1 to i64
  %wide.trip.count = zext nneg i32 %dim0 to i64
  %1 = add nsw i64 %wide.trip.count, -1
  %2 = add nsw i64 %wide.trip.count, -2
  %xtraiter = and i64 %1, 3
  %3 = icmp ult i64 %2, 3
  br i1 %3, label %for.end.loopexit.unr-lcssa, label %for.body.lr.ph.new

for.body.lr.ph.new:                               ; preds = %for.body.lr.ph
  %unroll_iter = and i64 %1, -4
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph.new
  %indvars.iv = phi i64 [ 1, %for.body.lr.ph.new ], [ %indvars.iv.next.3, %for.body ]
  %niter = phi i64 [ 0, %for.body.lr.ph.new ], [ %niter.next.3, %for.body ]
  %4 = load ptr, ptr %array3D, align 8
  %5 = getelementptr ptr, ptr %4, i64 %indvars.iv
  %arrayidx = getelementptr i8, ptr %5, i64 -8
  %6 = load ptr, ptr %arrayidx, align 8
  %add.ptr = getelementptr inbounds ptr, ptr %6, i64 %idx.ext
  store ptr %add.ptr, ptr %5, align 8
  %7 = load ptr, ptr %array3D, align 8
  %8 = getelementptr ptr, ptr %7, i64 %indvars.iv
  %9 = getelementptr i8, ptr %8, i64 8
  %10 = load ptr, ptr %8, align 8
  %add.ptr.1 = getelementptr inbounds ptr, ptr %10, i64 %idx.ext
  store ptr %add.ptr.1, ptr %9, align 8
  %11 = load ptr, ptr %array3D, align 8
  %12 = getelementptr ptr, ptr %11, i64 %indvars.iv
  %13 = getelementptr i8, ptr %12, i64 16
  %arrayidx.2 = getelementptr i8, ptr %12, i64 8
  %14 = load ptr, ptr %arrayidx.2, align 8
  %add.ptr.2 = getelementptr inbounds ptr, ptr %14, i64 %idx.ext
  store ptr %add.ptr.2, ptr %13, align 8
  %15 = load ptr, ptr %array3D, align 8
  %16 = getelementptr ptr, ptr %15, i64 %indvars.iv
  %17 = getelementptr i8, ptr %16, i64 24
  %arrayidx.3 = getelementptr i8, ptr %16, i64 16
  %18 = load ptr, ptr %arrayidx.3, align 8
  %add.ptr.3 = getelementptr inbounds ptr, ptr %18, i64 %idx.ext
  store ptr %add.ptr.3, ptr %17, align 8
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4
  %niter.next.3 = add i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %for.end.loopexit.unr-lcssa, label %for.body

for.end.loopexit.unr-lcssa:                       ; preds = %for.body, %for.body.lr.ph
  %indvars.iv.unr = phi i64 [ 1, %for.body.lr.ph ], [ %indvars.iv.next.3, %for.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.end, label %for.body.epil

for.body.epil:                                    ; preds = %for.end.loopexit.unr-lcssa, %for.body.epil
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %for.body.epil ], [ %indvars.iv.unr, %for.end.loopexit.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %for.body.epil ], [ 0, %for.end.loopexit.unr-lcssa ]
  %19 = load ptr, ptr %array3D, align 8
  %20 = getelementptr ptr, ptr %19, i64 %indvars.iv.epil
  %arrayidx.epil = getelementptr i8, ptr %20, i64 -8
  %21 = load ptr, ptr %arrayidx.epil, align 8
  %add.ptr.epil = getelementptr inbounds ptr, ptr %21, i64 %idx.ext
  store ptr %add.ptr.epil, ptr %20, align 8
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %for.end, label %for.body.epil, !llvm.loop !49

for.end:                                          ; preds = %for.end.loopexit.unr-lcssa, %for.body.epil, %if.end
  %conv1 = trunc i64 %mul to i32
  %add = add nsw i32 %call6, %conv1
  ret i32 %add
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @get_mem4Dint(ptr nocapture noundef %array4D, i32 noundef %dim0, i32 noundef %dim1, i32 noundef %dim2, i32 noundef %dim3) local_unnamed_addr #0 {
entry:
  %conv = sext i32 %dim0 to i64
  %mul = shl nsw i64 %conv, 3
  %call = tail call noalias ptr @malloc(i64 noundef %mul) #8
  store ptr %call, ptr %array4D, align 8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call.i = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.64) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  %.pre = load ptr, ptr %array4D, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %0 = phi ptr [ %.pre, %if.then ], [ %call, %entry ]
  %mul5 = mul nsw i32 %dim1, %dim0
  %conv.i = sext i32 %mul5 to i64
  %mul.i = shl nsw i64 %conv.i, 3
  %call.i22 = tail call noalias ptr @malloc(i64 noundef %mul.i) #8
  store ptr %call.i22, ptr %0, align 8
  %cmp.i = icmp eq ptr %call.i22, null
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end
  %call.i.i = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.61) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  %.pre.i = load ptr, ptr %0, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end
  %1 = phi ptr [ %.pre.i, %if.then.i ], [ %call.i22, %if.end ]
  %mul5.i = mul nsw i32 %mul5, %dim2
  %call6.i = tail call i32 @get_mem2Dint(ptr noundef %1, i32 noundef %mul5.i, i32 noundef %dim3)
  %cmp722.i = icmp sgt i32 %mul5, 1
  br i1 %cmp722.i, label %for.body.lr.ph.i, label %get_mem3Dint.exit

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %idx.ext.i = sext i32 %dim2 to i64
  %wide.trip.count.i = zext nneg i32 %mul5 to i64
  %2 = add nsw i64 %wide.trip.count.i, -1
  %3 = add nsw i64 %wide.trip.count.i, -2
  %xtraiter = and i64 %2, 3
  %4 = icmp ult i64 %3, 3
  br i1 %4, label %get_mem3Dint.exit.loopexit.unr-lcssa, label %for.body.lr.ph.i.new

for.body.lr.ph.i.new:                             ; preds = %for.body.lr.ph.i
  %unroll_iter = and i64 %2, -4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %for.body.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 1, %for.body.lr.ph.i.new ], [ %indvars.iv.next.i.3, %for.body.i ]
  %niter = phi i64 [ 0, %for.body.lr.ph.i.new ], [ %niter.next.3, %for.body.i ]
  %5 = load ptr, ptr %0, align 8
  %6 = getelementptr ptr, ptr %5, i64 %indvars.iv.i
  %arrayidx.i = getelementptr i8, ptr %6, i64 -8
  %7 = load ptr, ptr %arrayidx.i, align 8
  %add.ptr.i = getelementptr inbounds ptr, ptr %7, i64 %idx.ext.i
  store ptr %add.ptr.i, ptr %6, align 8
  %8 = load ptr, ptr %0, align 8
  %9 = getelementptr ptr, ptr %8, i64 %indvars.iv.i
  %10 = getelementptr i8, ptr %9, i64 8
  %11 = load ptr, ptr %9, align 8
  %add.ptr.i.1 = getelementptr inbounds ptr, ptr %11, i64 %idx.ext.i
  store ptr %add.ptr.i.1, ptr %10, align 8
  %12 = load ptr, ptr %0, align 8
  %13 = getelementptr ptr, ptr %12, i64 %indvars.iv.i
  %14 = getelementptr i8, ptr %13, i64 16
  %arrayidx.i.2 = getelementptr i8, ptr %13, i64 8
  %15 = load ptr, ptr %arrayidx.i.2, align 8
  %add.ptr.i.2 = getelementptr inbounds ptr, ptr %15, i64 %idx.ext.i
  store ptr %add.ptr.i.2, ptr %14, align 8
  %16 = load ptr, ptr %0, align 8
  %17 = getelementptr ptr, ptr %16, i64 %indvars.iv.i
  %18 = getelementptr i8, ptr %17, i64 24
  %arrayidx.i.3 = getelementptr i8, ptr %17, i64 16
  %19 = load ptr, ptr %arrayidx.i.3, align 8
  %add.ptr.i.3 = getelementptr inbounds ptr, ptr %19, i64 %idx.ext.i
  store ptr %add.ptr.i.3, ptr %18, align 8
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4
  %niter.next.3 = add i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %get_mem3Dint.exit.loopexit.unr-lcssa, label %for.body.i

get_mem3Dint.exit.loopexit.unr-lcssa:             ; preds = %for.body.i, %for.body.lr.ph.i
  %indvars.iv.i.unr = phi i64 [ 1, %for.body.lr.ph.i ], [ %indvars.iv.next.i.3, %for.body.i ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %get_mem3Dint.exit, label %for.body.i.epil

for.body.i.epil:                                  ; preds = %get_mem3Dint.exit.loopexit.unr-lcssa, %for.body.i.epil
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.next.i.epil, %for.body.i.epil ], [ %indvars.iv.i.unr, %get_mem3Dint.exit.loopexit.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %for.body.i.epil ], [ 0, %get_mem3Dint.exit.loopexit.unr-lcssa ]
  %20 = load ptr, ptr %0, align 8
  %21 = getelementptr ptr, ptr %20, i64 %indvars.iv.i.epil
  %arrayidx.i.epil = getelementptr i8, ptr %21, i64 -8
  %22 = load ptr, ptr %arrayidx.i.epil, align 8
  %add.ptr.i.epil = getelementptr inbounds ptr, ptr %22, i64 %idx.ext.i
  store ptr %add.ptr.i.epil, ptr %21, align 8
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %get_mem3Dint.exit, label %for.body.i.epil, !llvm.loop !50

get_mem3Dint.exit:                                ; preds = %get_mem3Dint.exit.loopexit.unr-lcssa, %for.body.i.epil, %if.end.i
  %cmp723 = icmp sgt i32 %dim0, 1
  br i1 %cmp723, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %get_mem3Dint.exit
  %idx.ext = sext i32 %dim1 to i64
  %wide.trip.count = zext nneg i32 %dim0 to i64
  %23 = add nsw i64 %wide.trip.count, -1
  %24 = add nsw i64 %wide.trip.count, -2
  %xtraiter26 = and i64 %23, 3
  %25 = icmp ult i64 %24, 3
  br i1 %25, label %for.end.loopexit.unr-lcssa, label %for.body.lr.ph.new

for.body.lr.ph.new:                               ; preds = %for.body.lr.ph
  %unroll_iter29 = and i64 %23, -4
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph.new
  %indvars.iv = phi i64 [ 1, %for.body.lr.ph.new ], [ %indvars.iv.next.3, %for.body ]
  %niter30 = phi i64 [ 0, %for.body.lr.ph.new ], [ %niter30.next.3, %for.body ]
  %26 = load ptr, ptr %array4D, align 8
  %27 = getelementptr ptr, ptr %26, i64 %indvars.iv
  %arrayidx = getelementptr i8, ptr %27, i64 -8
  %28 = load ptr, ptr %arrayidx, align 8
  %add.ptr = getelementptr inbounds ptr, ptr %28, i64 %idx.ext
  store ptr %add.ptr, ptr %27, align 8
  %29 = load ptr, ptr %array4D, align 8
  %30 = getelementptr ptr, ptr %29, i64 %indvars.iv
  %31 = getelementptr i8, ptr %30, i64 8
  %32 = load ptr, ptr %30, align 8
  %add.ptr.1 = getelementptr inbounds ptr, ptr %32, i64 %idx.ext
  store ptr %add.ptr.1, ptr %31, align 8
  %33 = load ptr, ptr %array4D, align 8
  %34 = getelementptr ptr, ptr %33, i64 %indvars.iv
  %35 = getelementptr i8, ptr %34, i64 16
  %arrayidx.2 = getelementptr i8, ptr %34, i64 8
  %36 = load ptr, ptr %arrayidx.2, align 8
  %add.ptr.2 = getelementptr inbounds ptr, ptr %36, i64 %idx.ext
  store ptr %add.ptr.2, ptr %35, align 8
  %37 = load ptr, ptr %array4D, align 8
  %38 = getelementptr ptr, ptr %37, i64 %indvars.iv
  %39 = getelementptr i8, ptr %38, i64 24
  %arrayidx.3 = getelementptr i8, ptr %38, i64 16
  %40 = load ptr, ptr %arrayidx.3, align 8
  %add.ptr.3 = getelementptr inbounds ptr, ptr %40, i64 %idx.ext
  store ptr %add.ptr.3, ptr %39, align 8
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4
  %niter30.next.3 = add i64 %niter30, 4
  %niter30.ncmp.3 = icmp eq i64 %niter30.next.3, %unroll_iter29
  br i1 %niter30.ncmp.3, label %for.end.loopexit.unr-lcssa, label %for.body

for.end.loopexit.unr-lcssa:                       ; preds = %for.body, %for.body.lr.ph
  %indvars.iv.unr = phi i64 [ 1, %for.body.lr.ph ], [ %indvars.iv.next.3, %for.body ]
  %lcmp.mod28.not = icmp eq i64 %xtraiter26, 0
  br i1 %lcmp.mod28.not, label %for.end, label %for.body.epil

for.body.epil:                                    ; preds = %for.end.loopexit.unr-lcssa, %for.body.epil
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %for.body.epil ], [ %indvars.iv.unr, %for.end.loopexit.unr-lcssa ]
  %epil.iter27 = phi i64 [ %epil.iter27.next, %for.body.epil ], [ 0, %for.end.loopexit.unr-lcssa ]
  %41 = load ptr, ptr %array4D, align 8
  %42 = getelementptr ptr, ptr %41, i64 %indvars.iv.epil
  %arrayidx.epil = getelementptr i8, ptr %42, i64 -8
  %43 = load ptr, ptr %arrayidx.epil, align 8
  %add.ptr.epil = getelementptr inbounds ptr, ptr %43, i64 %idx.ext
  store ptr %add.ptr.epil, ptr %42, align 8
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter27.next = add i64 %epil.iter27, 1
  %epil.iter27.cmp.not = icmp eq i64 %epil.iter27.next, %xtraiter26
  br i1 %epil.iter27.cmp.not, label %for.end, label %for.body.epil, !llvm.loop !51

for.end:                                          ; preds = %for.end.loopexit.unr-lcssa, %for.body.epil, %get_mem3Dint.exit
  %conv1.i = trunc i64 %mul.i to i32
  %conv1 = trunc i64 %mul to i32
  %add.i = add i32 %conv1.i, %conv1
  %add = add i32 %add.i, %call6.i
  ret i32 %add
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @get_mem4Dint64(ptr nocapture noundef %array4D, i32 noundef %dim0, i32 noundef %dim1, i32 noundef %dim2, i32 noundef %dim3) local_unnamed_addr #0 {
entry:
  %conv = sext i32 %dim0 to i64
  %mul = shl nsw i64 %conv, 3
  %call = tail call noalias ptr @malloc(i64 noundef %mul) #8
  store ptr %call, ptr %array4D, align 8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call.i = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.65) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  %.pre = load ptr, ptr %array4D, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %0 = phi ptr [ %.pre, %if.then ], [ %call, %entry ]
  %mul5 = mul nsw i32 %dim1, %dim0
  %conv.i = sext i32 %mul5 to i64
  %mul.i = shl nsw i64 %conv.i, 3
  %call.i22 = tail call noalias ptr @malloc(i64 noundef %mul.i) #8
  store ptr %call.i22, ptr %0, align 8
  %cmp.i = icmp eq ptr %call.i22, null
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end
  %call.i.i = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.62) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  %.pre.i = load ptr, ptr %0, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end
  %1 = phi ptr [ %.pre.i, %if.then.i ], [ %call.i22, %if.end ]
  %mul5.i = mul nsw i32 %mul5, %dim2
  %call6.i = tail call i32 @get_mem2Dint64(ptr noundef %1, i32 noundef %mul5.i, i32 noundef %dim3)
  %cmp722.i = icmp sgt i32 %mul5, 1
  br i1 %cmp722.i, label %for.body.lr.ph.i, label %get_mem3Dint64.exit

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %idx.ext.i = sext i32 %dim2 to i64
  %wide.trip.count.i = zext nneg i32 %mul5 to i64
  %2 = add nsw i64 %wide.trip.count.i, -1
  %3 = add nsw i64 %wide.trip.count.i, -2
  %xtraiter = and i64 %2, 3
  %4 = icmp ult i64 %3, 3
  br i1 %4, label %get_mem3Dint64.exit.loopexit.unr-lcssa, label %for.body.lr.ph.i.new

for.body.lr.ph.i.new:                             ; preds = %for.body.lr.ph.i
  %unroll_iter = and i64 %2, -4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %for.body.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 1, %for.body.lr.ph.i.new ], [ %indvars.iv.next.i.3, %for.body.i ]
  %niter = phi i64 [ 0, %for.body.lr.ph.i.new ], [ %niter.next.3, %for.body.i ]
  %5 = load ptr, ptr %0, align 8
  %6 = getelementptr ptr, ptr %5, i64 %indvars.iv.i
  %arrayidx.i = getelementptr i8, ptr %6, i64 -8
  %7 = load ptr, ptr %arrayidx.i, align 8
  %add.ptr.i = getelementptr inbounds ptr, ptr %7, i64 %idx.ext.i
  store ptr %add.ptr.i, ptr %6, align 8
  %8 = load ptr, ptr %0, align 8
  %9 = getelementptr ptr, ptr %8, i64 %indvars.iv.i
  %10 = getelementptr i8, ptr %9, i64 8
  %11 = load ptr, ptr %9, align 8
  %add.ptr.i.1 = getelementptr inbounds ptr, ptr %11, i64 %idx.ext.i
  store ptr %add.ptr.i.1, ptr %10, align 8
  %12 = load ptr, ptr %0, align 8
  %13 = getelementptr ptr, ptr %12, i64 %indvars.iv.i
  %14 = getelementptr i8, ptr %13, i64 16
  %arrayidx.i.2 = getelementptr i8, ptr %13, i64 8
  %15 = load ptr, ptr %arrayidx.i.2, align 8
  %add.ptr.i.2 = getelementptr inbounds ptr, ptr %15, i64 %idx.ext.i
  store ptr %add.ptr.i.2, ptr %14, align 8
  %16 = load ptr, ptr %0, align 8
  %17 = getelementptr ptr, ptr %16, i64 %indvars.iv.i
  %18 = getelementptr i8, ptr %17, i64 24
  %arrayidx.i.3 = getelementptr i8, ptr %17, i64 16
  %19 = load ptr, ptr %arrayidx.i.3, align 8
  %add.ptr.i.3 = getelementptr inbounds ptr, ptr %19, i64 %idx.ext.i
  store ptr %add.ptr.i.3, ptr %18, align 8
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4
  %niter.next.3 = add i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %get_mem3Dint64.exit.loopexit.unr-lcssa, label %for.body.i

get_mem3Dint64.exit.loopexit.unr-lcssa:           ; preds = %for.body.i, %for.body.lr.ph.i
  %indvars.iv.i.unr = phi i64 [ 1, %for.body.lr.ph.i ], [ %indvars.iv.next.i.3, %for.body.i ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %get_mem3Dint64.exit, label %for.body.i.epil

for.body.i.epil:                                  ; preds = %get_mem3Dint64.exit.loopexit.unr-lcssa, %for.body.i.epil
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.next.i.epil, %for.body.i.epil ], [ %indvars.iv.i.unr, %get_mem3Dint64.exit.loopexit.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %for.body.i.epil ], [ 0, %get_mem3Dint64.exit.loopexit.unr-lcssa ]
  %20 = load ptr, ptr %0, align 8
  %21 = getelementptr ptr, ptr %20, i64 %indvars.iv.i.epil
  %arrayidx.i.epil = getelementptr i8, ptr %21, i64 -8
  %22 = load ptr, ptr %arrayidx.i.epil, align 8
  %add.ptr.i.epil = getelementptr inbounds ptr, ptr %22, i64 %idx.ext.i
  store ptr %add.ptr.i.epil, ptr %21, align 8
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %get_mem3Dint64.exit, label %for.body.i.epil, !llvm.loop !52

get_mem3Dint64.exit:                              ; preds = %get_mem3Dint64.exit.loopexit.unr-lcssa, %for.body.i.epil, %if.end.i
  %cmp723 = icmp sgt i32 %dim0, 1
  br i1 %cmp723, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %get_mem3Dint64.exit
  %idx.ext = sext i32 %dim1 to i64
  %wide.trip.count = zext nneg i32 %dim0 to i64
  %23 = add nsw i64 %wide.trip.count, -1
  %24 = add nsw i64 %wide.trip.count, -2
  %xtraiter26 = and i64 %23, 3
  %25 = icmp ult i64 %24, 3
  br i1 %25, label %for.end.loopexit.unr-lcssa, label %for.body.lr.ph.new

for.body.lr.ph.new:                               ; preds = %for.body.lr.ph
  %unroll_iter29 = and i64 %23, -4
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph.new
  %indvars.iv = phi i64 [ 1, %for.body.lr.ph.new ], [ %indvars.iv.next.3, %for.body ]
  %niter30 = phi i64 [ 0, %for.body.lr.ph.new ], [ %niter30.next.3, %for.body ]
  %26 = load ptr, ptr %array4D, align 8
  %27 = getelementptr ptr, ptr %26, i64 %indvars.iv
  %arrayidx = getelementptr i8, ptr %27, i64 -8
  %28 = load ptr, ptr %arrayidx, align 8
  %add.ptr = getelementptr inbounds ptr, ptr %28, i64 %idx.ext
  store ptr %add.ptr, ptr %27, align 8
  %29 = load ptr, ptr %array4D, align 8
  %30 = getelementptr ptr, ptr %29, i64 %indvars.iv
  %31 = getelementptr i8, ptr %30, i64 8
  %32 = load ptr, ptr %30, align 8
  %add.ptr.1 = getelementptr inbounds ptr, ptr %32, i64 %idx.ext
  store ptr %add.ptr.1, ptr %31, align 8
  %33 = load ptr, ptr %array4D, align 8
  %34 = getelementptr ptr, ptr %33, i64 %indvars.iv
  %35 = getelementptr i8, ptr %34, i64 16
  %arrayidx.2 = getelementptr i8, ptr %34, i64 8
  %36 = load ptr, ptr %arrayidx.2, align 8
  %add.ptr.2 = getelementptr inbounds ptr, ptr %36, i64 %idx.ext
  store ptr %add.ptr.2, ptr %35, align 8
  %37 = load ptr, ptr %array4D, align 8
  %38 = getelementptr ptr, ptr %37, i64 %indvars.iv
  %39 = getelementptr i8, ptr %38, i64 24
  %arrayidx.3 = getelementptr i8, ptr %38, i64 16
  %40 = load ptr, ptr %arrayidx.3, align 8
  %add.ptr.3 = getelementptr inbounds ptr, ptr %40, i64 %idx.ext
  store ptr %add.ptr.3, ptr %39, align 8
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4
  %niter30.next.3 = add i64 %niter30, 4
  %niter30.ncmp.3 = icmp eq i64 %niter30.next.3, %unroll_iter29
  br i1 %niter30.ncmp.3, label %for.end.loopexit.unr-lcssa, label %for.body

for.end.loopexit.unr-lcssa:                       ; preds = %for.body, %for.body.lr.ph
  %indvars.iv.unr = phi i64 [ 1, %for.body.lr.ph ], [ %indvars.iv.next.3, %for.body ]
  %lcmp.mod28.not = icmp eq i64 %xtraiter26, 0
  br i1 %lcmp.mod28.not, label %for.end, label %for.body.epil

for.body.epil:                                    ; preds = %for.end.loopexit.unr-lcssa, %for.body.epil
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %for.body.epil ], [ %indvars.iv.unr, %for.end.loopexit.unr-lcssa ]
  %epil.iter27 = phi i64 [ %epil.iter27.next, %for.body.epil ], [ 0, %for.end.loopexit.unr-lcssa ]
  %41 = load ptr, ptr %array4D, align 8
  %42 = getelementptr ptr, ptr %41, i64 %indvars.iv.epil
  %arrayidx.epil = getelementptr i8, ptr %42, i64 -8
  %43 = load ptr, ptr %arrayidx.epil, align 8
  %add.ptr.epil = getelementptr inbounds ptr, ptr %43, i64 %idx.ext
  store ptr %add.ptr.epil, ptr %42, align 8
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter27.next = add i64 %epil.iter27, 1
  %epil.iter27.cmp.not = icmp eq i64 %epil.iter27.next, %xtraiter26
  br i1 %epil.iter27.cmp.not, label %for.end, label %for.body.epil, !llvm.loop !53

for.end:                                          ; preds = %for.end.loopexit.unr-lcssa, %for.body.epil, %get_mem3Dint64.exit
  %conv1.i = trunc i64 %mul.i to i32
  %conv1 = trunc i64 %mul to i32
  %add.i = add i32 %conv1.i, %conv1
  %add = add i32 %add.i, %call6.i
  ret i32 %add
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @get_mem4Ddistblk(ptr nocapture noundef %array4D, i32 noundef %dim0, i32 noundef %dim1, i32 noundef %dim2, i32 noundef %dim3) local_unnamed_addr #0 {
entry:
  %conv = sext i32 %dim0 to i64
  %mul = shl nsw i64 %conv, 3
  %call = tail call noalias ptr @malloc(i64 noundef %mul) #8
  store ptr %call, ptr %array4D, align 8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call.i = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.66) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  %.pre = load ptr, ptr %array4D, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %0 = phi ptr [ %.pre, %if.then ], [ %call, %entry ]
  %mul5 = mul nsw i32 %dim1, %dim0
  %conv.i = sext i32 %mul5 to i64
  %mul.i = shl nsw i64 %conv.i, 3
  %call.i22 = tail call noalias ptr @malloc(i64 noundef %mul.i) #8
  store ptr %call.i22, ptr %0, align 8
  %cmp.i = icmp eq ptr %call.i22, null
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end
  %call.i.i = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.63) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  %.pre.i = load ptr, ptr %0, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end
  %1 = phi ptr [ %.pre.i, %if.then.i ], [ %call.i22, %if.end ]
  %mul5.i = mul nsw i32 %mul5, %dim2
  %call6.i = tail call i32 @get_mem2Ddistblk(ptr noundef %1, i32 noundef %mul5.i, i32 noundef %dim3)
  %cmp722.i = icmp sgt i32 %mul5, 1
  br i1 %cmp722.i, label %for.body.lr.ph.i, label %get_mem3Ddistblk.exit

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %idx.ext.i = sext i32 %dim2 to i64
  %wide.trip.count.i = zext nneg i32 %mul5 to i64
  %2 = add nsw i64 %wide.trip.count.i, -1
  %3 = add nsw i64 %wide.trip.count.i, -2
  %xtraiter = and i64 %2, 3
  %4 = icmp ult i64 %3, 3
  br i1 %4, label %get_mem3Ddistblk.exit.loopexit.unr-lcssa, label %for.body.lr.ph.i.new

for.body.lr.ph.i.new:                             ; preds = %for.body.lr.ph.i
  %unroll_iter = and i64 %2, -4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %for.body.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 1, %for.body.lr.ph.i.new ], [ %indvars.iv.next.i.3, %for.body.i ]
  %niter = phi i64 [ 0, %for.body.lr.ph.i.new ], [ %niter.next.3, %for.body.i ]
  %5 = load ptr, ptr %0, align 8
  %6 = getelementptr ptr, ptr %5, i64 %indvars.iv.i
  %arrayidx.i = getelementptr i8, ptr %6, i64 -8
  %7 = load ptr, ptr %arrayidx.i, align 8
  %add.ptr.i = getelementptr inbounds ptr, ptr %7, i64 %idx.ext.i
  store ptr %add.ptr.i, ptr %6, align 8
  %8 = load ptr, ptr %0, align 8
  %9 = getelementptr ptr, ptr %8, i64 %indvars.iv.i
  %10 = getelementptr i8, ptr %9, i64 8
  %11 = load ptr, ptr %9, align 8
  %add.ptr.i.1 = getelementptr inbounds ptr, ptr %11, i64 %idx.ext.i
  store ptr %add.ptr.i.1, ptr %10, align 8
  %12 = load ptr, ptr %0, align 8
  %13 = getelementptr ptr, ptr %12, i64 %indvars.iv.i
  %14 = getelementptr i8, ptr %13, i64 16
  %arrayidx.i.2 = getelementptr i8, ptr %13, i64 8
  %15 = load ptr, ptr %arrayidx.i.2, align 8
  %add.ptr.i.2 = getelementptr inbounds ptr, ptr %15, i64 %idx.ext.i
  store ptr %add.ptr.i.2, ptr %14, align 8
  %16 = load ptr, ptr %0, align 8
  %17 = getelementptr ptr, ptr %16, i64 %indvars.iv.i
  %18 = getelementptr i8, ptr %17, i64 24
  %arrayidx.i.3 = getelementptr i8, ptr %17, i64 16
  %19 = load ptr, ptr %arrayidx.i.3, align 8
  %add.ptr.i.3 = getelementptr inbounds ptr, ptr %19, i64 %idx.ext.i
  store ptr %add.ptr.i.3, ptr %18, align 8
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4
  %niter.next.3 = add i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %get_mem3Ddistblk.exit.loopexit.unr-lcssa, label %for.body.i

get_mem3Ddistblk.exit.loopexit.unr-lcssa:         ; preds = %for.body.i, %for.body.lr.ph.i
  %indvars.iv.i.unr = phi i64 [ 1, %for.body.lr.ph.i ], [ %indvars.iv.next.i.3, %for.body.i ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %get_mem3Ddistblk.exit, label %for.body.i.epil

for.body.i.epil:                                  ; preds = %get_mem3Ddistblk.exit.loopexit.unr-lcssa, %for.body.i.epil
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.next.i.epil, %for.body.i.epil ], [ %indvars.iv.i.unr, %get_mem3Ddistblk.exit.loopexit.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %for.body.i.epil ], [ 0, %get_mem3Ddistblk.exit.loopexit.unr-lcssa ]
  %20 = load ptr, ptr %0, align 8
  %21 = getelementptr ptr, ptr %20, i64 %indvars.iv.i.epil
  %arrayidx.i.epil = getelementptr i8, ptr %21, i64 -8
  %22 = load ptr, ptr %arrayidx.i.epil, align 8
  %add.ptr.i.epil = getelementptr inbounds ptr, ptr %22, i64 %idx.ext.i
  store ptr %add.ptr.i.epil, ptr %21, align 8
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %get_mem3Ddistblk.exit, label %for.body.i.epil, !llvm.loop !54

get_mem3Ddistblk.exit:                            ; preds = %get_mem3Ddistblk.exit.loopexit.unr-lcssa, %for.body.i.epil, %if.end.i
  %cmp723 = icmp sgt i32 %dim0, 1
  br i1 %cmp723, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %get_mem3Ddistblk.exit
  %idx.ext = sext i32 %dim1 to i64
  %wide.trip.count = zext nneg i32 %dim0 to i64
  %23 = add nsw i64 %wide.trip.count, -1
  %24 = add nsw i64 %wide.trip.count, -2
  %xtraiter26 = and i64 %23, 3
  %25 = icmp ult i64 %24, 3
  br i1 %25, label %for.end.loopexit.unr-lcssa, label %for.body.lr.ph.new

for.body.lr.ph.new:                               ; preds = %for.body.lr.ph
  %unroll_iter29 = and i64 %23, -4
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph.new
  %indvars.iv = phi i64 [ 1, %for.body.lr.ph.new ], [ %indvars.iv.next.3, %for.body ]
  %niter30 = phi i64 [ 0, %for.body.lr.ph.new ], [ %niter30.next.3, %for.body ]
  %26 = load ptr, ptr %array4D, align 8
  %27 = getelementptr ptr, ptr %26, i64 %indvars.iv
  %arrayidx = getelementptr i8, ptr %27, i64 -8
  %28 = load ptr, ptr %arrayidx, align 8
  %add.ptr = getelementptr inbounds ptr, ptr %28, i64 %idx.ext
  store ptr %add.ptr, ptr %27, align 8
  %29 = load ptr, ptr %array4D, align 8
  %30 = getelementptr ptr, ptr %29, i64 %indvars.iv
  %31 = getelementptr i8, ptr %30, i64 8
  %32 = load ptr, ptr %30, align 8
  %add.ptr.1 = getelementptr inbounds ptr, ptr %32, i64 %idx.ext
  store ptr %add.ptr.1, ptr %31, align 8
  %33 = load ptr, ptr %array4D, align 8
  %34 = getelementptr ptr, ptr %33, i64 %indvars.iv
  %35 = getelementptr i8, ptr %34, i64 16
  %arrayidx.2 = getelementptr i8, ptr %34, i64 8
  %36 = load ptr, ptr %arrayidx.2, align 8
  %add.ptr.2 = getelementptr inbounds ptr, ptr %36, i64 %idx.ext
  store ptr %add.ptr.2, ptr %35, align 8
  %37 = load ptr, ptr %array4D, align 8
  %38 = getelementptr ptr, ptr %37, i64 %indvars.iv
  %39 = getelementptr i8, ptr %38, i64 24
  %arrayidx.3 = getelementptr i8, ptr %38, i64 16
  %40 = load ptr, ptr %arrayidx.3, align 8
  %add.ptr.3 = getelementptr inbounds ptr, ptr %40, i64 %idx.ext
  store ptr %add.ptr.3, ptr %39, align 8
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4
  %niter30.next.3 = add i64 %niter30, 4
  %niter30.ncmp.3 = icmp eq i64 %niter30.next.3, %unroll_iter29
  br i1 %niter30.ncmp.3, label %for.end.loopexit.unr-lcssa, label %for.body

for.end.loopexit.unr-lcssa:                       ; preds = %for.body, %for.body.lr.ph
  %indvars.iv.unr = phi i64 [ 1, %for.body.lr.ph ], [ %indvars.iv.next.3, %for.body ]
  %lcmp.mod28.not = icmp eq i64 %xtraiter26, 0
  br i1 %lcmp.mod28.not, label %for.end, label %for.body.epil

for.body.epil:                                    ; preds = %for.end.loopexit.unr-lcssa, %for.body.epil
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %for.body.epil ], [ %indvars.iv.unr, %for.end.loopexit.unr-lcssa ]
  %epil.iter27 = phi i64 [ %epil.iter27.next, %for.body.epil ], [ 0, %for.end.loopexit.unr-lcssa ]
  %41 = load ptr, ptr %array4D, align 8
  %42 = getelementptr ptr, ptr %41, i64 %indvars.iv.epil
  %arrayidx.epil = getelementptr i8, ptr %42, i64 -8
  %43 = load ptr, ptr %arrayidx.epil, align 8
  %add.ptr.epil = getelementptr inbounds ptr, ptr %43, i64 %idx.ext
  store ptr %add.ptr.epil, ptr %42, align 8
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter27.next = add i64 %epil.iter27, 1
  %epil.iter27.cmp.not = icmp eq i64 %epil.iter27.next, %xtraiter26
  br i1 %epil.iter27.cmp.not, label %for.end, label %for.body.epil, !llvm.loop !55

for.end:                                          ; preds = %for.end.loopexit.unr-lcssa, %for.body.epil, %get_mem3Ddistblk.exit
  %conv1.i = trunc i64 %mul.i to i32
  %conv1 = trunc i64 %mul to i32
  %add.i = add i32 %conv1.i, %conv1
  %add = add i32 %add.i, %call6.i
  ret i32 %add
}

; Function Attrs: nounwind uwtable
define dso_local i32 @get_mem5Dint(ptr nocapture noundef %array5D, i32 noundef %dim0, i32 noundef %dim1, i32 noundef %dim2, i32 noundef %dim3, i32 noundef %dim4) local_unnamed_addr #0 {
entry:
  %conv = sext i32 %dim0 to i64
  %mul = shl nsw i64 %conv, 3
  %call = tail call noalias ptr @malloc(i64 noundef %mul) #8
  store ptr %call, ptr %array5D, align 8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call.i = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.67) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  %.pre = load ptr, ptr %array5D, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %0 = phi ptr [ %.pre, %if.then ], [ %call, %entry ]
  %mul5 = mul nsw i32 %dim1, %dim0
  %call6 = tail call i32 @get_mem4Dint(ptr noundef %0, i32 noundef %mul5, i32 noundef %dim2, i32 noundef %dim3, i32 noundef %dim4)
  %cmp722 = icmp sgt i32 %dim0, 1
  br i1 %cmp722, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %idx.ext = sext i32 %dim1 to i64
  %wide.trip.count = zext nneg i32 %dim0 to i64
  %1 = add nsw i64 %wide.trip.count, -1
  %2 = add nsw i64 %wide.trip.count, -2
  %xtraiter = and i64 %1, 3
  %3 = icmp ult i64 %2, 3
  br i1 %3, label %for.end.loopexit.unr-lcssa, label %for.body.lr.ph.new

for.body.lr.ph.new:                               ; preds = %for.body.lr.ph
  %unroll_iter = and i64 %1, -4
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph.new
  %indvars.iv = phi i64 [ 1, %for.body.lr.ph.new ], [ %indvars.iv.next.3, %for.body ]
  %niter = phi i64 [ 0, %for.body.lr.ph.new ], [ %niter.next.3, %for.body ]
  %4 = load ptr, ptr %array5D, align 8
  %5 = getelementptr ptr, ptr %4, i64 %indvars.iv
  %arrayidx = getelementptr i8, ptr %5, i64 -8
  %6 = load ptr, ptr %arrayidx, align 8
  %add.ptr = getelementptr inbounds ptr, ptr %6, i64 %idx.ext
  store ptr %add.ptr, ptr %5, align 8
  %7 = load ptr, ptr %array5D, align 8
  %8 = getelementptr ptr, ptr %7, i64 %indvars.iv
  %9 = getelementptr i8, ptr %8, i64 8
  %10 = load ptr, ptr %8, align 8
  %add.ptr.1 = getelementptr inbounds ptr, ptr %10, i64 %idx.ext
  store ptr %add.ptr.1, ptr %9, align 8
  %11 = load ptr, ptr %array5D, align 8
  %12 = getelementptr ptr, ptr %11, i64 %indvars.iv
  %13 = getelementptr i8, ptr %12, i64 16
  %arrayidx.2 = getelementptr i8, ptr %12, i64 8
  %14 = load ptr, ptr %arrayidx.2, align 8
  %add.ptr.2 = getelementptr inbounds ptr, ptr %14, i64 %idx.ext
  store ptr %add.ptr.2, ptr %13, align 8
  %15 = load ptr, ptr %array5D, align 8
  %16 = getelementptr ptr, ptr %15, i64 %indvars.iv
  %17 = getelementptr i8, ptr %16, i64 24
  %arrayidx.3 = getelementptr i8, ptr %16, i64 16
  %18 = load ptr, ptr %arrayidx.3, align 8
  %add.ptr.3 = getelementptr inbounds ptr, ptr %18, i64 %idx.ext
  store ptr %add.ptr.3, ptr %17, align 8
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4
  %niter.next.3 = add i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %for.end.loopexit.unr-lcssa, label %for.body

for.end.loopexit.unr-lcssa:                       ; preds = %for.body, %for.body.lr.ph
  %indvars.iv.unr = phi i64 [ 1, %for.body.lr.ph ], [ %indvars.iv.next.3, %for.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.end, label %for.body.epil

for.body.epil:                                    ; preds = %for.end.loopexit.unr-lcssa, %for.body.epil
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %for.body.epil ], [ %indvars.iv.unr, %for.end.loopexit.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %for.body.epil ], [ 0, %for.end.loopexit.unr-lcssa ]
  %19 = load ptr, ptr %array5D, align 8
  %20 = getelementptr ptr, ptr %19, i64 %indvars.iv.epil
  %arrayidx.epil = getelementptr i8, ptr %20, i64 -8
  %21 = load ptr, ptr %arrayidx.epil, align 8
  %add.ptr.epil = getelementptr inbounds ptr, ptr %21, i64 %idx.ext
  store ptr %add.ptr.epil, ptr %20, align 8
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %for.end, label %for.body.epil, !llvm.loop !56

for.end:                                          ; preds = %for.end.loopexit.unr-lcssa, %for.body.epil, %if.end
  %conv1 = trunc i64 %mul to i32
  %add = add nsw i32 %call6, %conv1
  ret i32 %add
}

; Function Attrs: nounwind uwtable
define dso_local void @free_mem2D(ptr noundef %array2D) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq ptr %array2D, null
  br i1 %tobool.not, label %if.else3, label %if.then

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %array2D, align 8
  %tobool1.not = icmp eq ptr %0, null
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.then
  tail call void @free(ptr noundef nonnull %0) #9
  br label %if.end

if.else:                                          ; preds = %if.then
  tail call void @error(ptr noundef nonnull @.str.68, i32 noundef 100) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  tail call void @free(ptr noundef nonnull %array2D) #9
  br label %if.end4

if.else3:                                         ; preds = %entry
  tail call void @error(ptr noundef nonnull @.str.68, i32 noundef 100) #9
  br label %if.end4

if.end4:                                          ; preds = %if.else3, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @free_mem2Dint(ptr noundef %array2D) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq ptr %array2D, null
  br i1 %tobool.not, label %if.else3, label %if.then

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %array2D, align 8
  %tobool1.not = icmp eq ptr %0, null
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.then
  tail call void @free(ptr noundef nonnull %0) #9
  br label %if.end

if.else:                                          ; preds = %if.then
  tail call void @error(ptr noundef nonnull @.str.69, i32 noundef 100) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  tail call void @free(ptr noundef nonnull %array2D) #9
  br label %if.end4

if.else3:                                         ; preds = %entry
  tail call void @error(ptr noundef nonnull @.str.69, i32 noundef 100) #9
  br label %if.end4

if.end4:                                          ; preds = %if.else3, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @free_mem2DintWithPad(ptr noundef %array2D, i32 noundef %iPadY, i32 noundef %iPadX) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq ptr %array2D, null
  br i1 %tobool.not, label %if.else6, label %if.then

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %array2D, align 8
  %tobool1.not = icmp eq ptr %0, null
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.then
  %sub = sub nsw i32 0, %iPadY
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds ptr, ptr %array2D, i64 %idxprom
  %1 = load ptr, ptr %arrayidx, align 8
  %idx.ext = sext i32 %iPadX to i64
  %idx.neg = sub nsw i64 0, %idx.ext
  %add.ptr = getelementptr inbounds i32, ptr %1, i64 %idx.neg
  tail call void @free(ptr noundef %add.ptr) #9
  br label %if.end

if.else:                                          ; preds = %if.then
  tail call void @error(ptr noundef nonnull @.str.70, i32 noundef 100) #9
  %.pre = sub nsw i32 0, %iPadY
  %.pre12 = sext i32 %.pre to i64
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  %idxprom4.pre-phi = phi i64 [ %.pre12, %if.else ], [ %idxprom, %if.then2 ]
  %arrayidx5 = getelementptr inbounds ptr, ptr %array2D, i64 %idxprom4.pre-phi
  tail call void @free(ptr noundef %arrayidx5) #9
  br label %if.end7

if.else6:                                         ; preds = %entry
  tail call void @error(ptr noundef nonnull @.str.70, i32 noundef 100) #9
  br label %if.end7

if.end7:                                          ; preds = %if.else6, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @free_mem2Dint64(ptr noundef %array2D) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq ptr %array2D, null
  br i1 %tobool.not, label %if.else3, label %if.then

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %array2D, align 8
  %tobool1.not = icmp eq ptr %0, null
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.then
  tail call void @free(ptr noundef nonnull %0) #9
  br label %if.end

if.else:                                          ; preds = %if.then
  tail call void @error(ptr noundef nonnull @.str.71, i32 noundef 100) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  tail call void @free(ptr noundef nonnull %array2D) #9
  br label %if.end4

if.else3:                                         ; preds = %entry
  tail call void @error(ptr noundef nonnull @.str.71, i32 noundef 100) #9
  br label %if.end4

if.end4:                                          ; preds = %if.else3, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @free_mem3D(ptr noundef %array3D) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq ptr %array3D, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %array3D, align 8
  %tobool.not.i = icmp eq ptr %0, null
  br i1 %tobool.not.i, label %if.else3.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  %1 = load ptr, ptr %0, align 8
  %tobool1.not.i = icmp eq ptr %1, null
  br i1 %tobool1.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.then.i
  tail call void @free(ptr noundef nonnull %1) #9
  br label %if.end.i

if.else.i:                                        ; preds = %if.then.i
  tail call void @error(ptr noundef nonnull @.str.68, i32 noundef 100) #9
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then2.i
  tail call void @free(ptr noundef nonnull %0) #9
  br label %free_mem2D.exit

if.else3.i:                                       ; preds = %if.then
  tail call void @error(ptr noundef nonnull @.str.68, i32 noundef 100) #9
  br label %free_mem2D.exit

free_mem2D.exit:                                  ; preds = %if.end.i, %if.else3.i
  tail call void @free(ptr noundef nonnull %array3D) #9
  br label %if.end

if.else:                                          ; preds = %entry
  tail call void @error(ptr noundef nonnull @.str.72, i32 noundef 100) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %free_mem2D.exit
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @free_mem4D(ptr noundef %array4D) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq ptr %array4D, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %array4D, align 8
  %tobool.not.i = icmp eq ptr %0, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  %1 = load ptr, ptr %0, align 8
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %if.else3.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then.i
  %2 = load ptr, ptr %1, align 8
  %tobool1.not.i.i = icmp eq ptr %2, null
  br i1 %tobool1.not.i.i, label %if.else.i.i, label %if.then2.i.i

if.then2.i.i:                                     ; preds = %if.then.i.i
  tail call void @free(ptr noundef nonnull %2) #9
  br label %if.end.i.i

if.else.i.i:                                      ; preds = %if.then.i.i
  tail call void @error(ptr noundef nonnull @.str.68, i32 noundef 100) #9
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else.i.i, %if.then2.i.i
  tail call void @free(ptr noundef nonnull %1) #9
  br label %free_mem2D.exit.i

if.else3.i.i:                                     ; preds = %if.then.i
  tail call void @error(ptr noundef nonnull @.str.68, i32 noundef 100) #9
  br label %free_mem2D.exit.i

free_mem2D.exit.i:                                ; preds = %if.else3.i.i, %if.end.i.i
  tail call void @free(ptr noundef nonnull %0) #9
  br label %free_mem3D.exit

if.else.i:                                        ; preds = %if.then
  tail call void @error(ptr noundef nonnull @.str.72, i32 noundef 100) #9
  br label %free_mem3D.exit

free_mem3D.exit:                                  ; preds = %free_mem2D.exit.i, %if.else.i
  tail call void @free(ptr noundef nonnull %array4D) #9
  br label %if.end

if.else:                                          ; preds = %entry
  tail call void @error(ptr noundef nonnull @.str.73, i32 noundef 100) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %free_mem3D.exit
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @free_mem3Dint(ptr noundef %array3D) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq ptr %array3D, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %array3D, align 8
  %tobool.not.i = icmp eq ptr %0, null
  br i1 %tobool.not.i, label %if.else3.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  %1 = load ptr, ptr %0, align 8
  %tobool1.not.i = icmp eq ptr %1, null
  br i1 %tobool1.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.then.i
  tail call void @free(ptr noundef nonnull %1) #9
  br label %if.end.i

if.else.i:                                        ; preds = %if.then.i
  tail call void @error(ptr noundef nonnull @.str.69, i32 noundef 100) #9
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then2.i
  tail call void @free(ptr noundef nonnull %0) #9
  br label %free_mem2Dint.exit

if.else3.i:                                       ; preds = %if.then
  tail call void @error(ptr noundef nonnull @.str.69, i32 noundef 100) #9
  br label %free_mem2Dint.exit

free_mem2Dint.exit:                               ; preds = %if.end.i, %if.else3.i
  tail call void @free(ptr noundef nonnull %array3D) #9
  br label %if.end

if.else:                                          ; preds = %entry
  tail call void @error(ptr noundef nonnull @.str.74, i32 noundef 100) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %free_mem2Dint.exit
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @free_mem3Dint64(ptr noundef %array3D) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq ptr %array3D, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %array3D, align 8
  %tobool.not.i = icmp eq ptr %0, null
  br i1 %tobool.not.i, label %if.else3.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  %1 = load ptr, ptr %0, align 8
  %tobool1.not.i = icmp eq ptr %1, null
  br i1 %tobool1.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.then.i
  tail call void @free(ptr noundef nonnull %1) #9
  br label %if.end.i

if.else.i:                                        ; preds = %if.then.i
  tail call void @error(ptr noundef nonnull @.str.71, i32 noundef 100) #9
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then2.i
  tail call void @free(ptr noundef nonnull %0) #9
  br label %free_mem2Dint64.exit

if.else3.i:                                       ; preds = %if.then
  tail call void @error(ptr noundef nonnull @.str.71, i32 noundef 100) #9
  br label %free_mem2Dint64.exit

free_mem2Dint64.exit:                             ; preds = %if.end.i, %if.else3.i
  tail call void @free(ptr noundef nonnull %array3D) #9
  br label %if.end

if.else:                                          ; preds = %entry
  tail call void @error(ptr noundef nonnull @.str.75, i32 noundef 100) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %free_mem2Dint64.exit
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @free_mem3Ddistblk(ptr noundef %array3D) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq ptr %array3D, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %array3D, align 8
  %tobool.not.i = icmp eq ptr %0, null
  br i1 %tobool.not.i, label %if.else3.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  %1 = load ptr, ptr %0, align 8
  %tobool1.not.i = icmp eq ptr %1, null
  br i1 %tobool1.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.then.i
  tail call void @free(ptr noundef nonnull %1) #9
  br label %if.end.i

if.else.i:                                        ; preds = %if.then.i
  tail call void @error(ptr noundef nonnull @.str.116, i32 noundef 100) #9
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then2.i
  tail call void @free(ptr noundef nonnull %0) #9
  br label %free_mem2Ddistblk.exit

if.else3.i:                                       ; preds = %if.then
  tail call void @error(ptr noundef nonnull @.str.116, i32 noundef 100) #9
  br label %free_mem2Ddistblk.exit

free_mem2Ddistblk.exit:                           ; preds = %if.end.i, %if.else3.i
  tail call void @free(ptr noundef nonnull %array3D) #9
  br label %if.end

if.else:                                          ; preds = %entry
  tail call void @error(ptr noundef nonnull @.str.76, i32 noundef 100) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %free_mem2Ddistblk.exit
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @free_mem2Ddistblk(ptr noundef %array2D) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq ptr %array2D, null
  br i1 %tobool.not, label %if.else3, label %if.then

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %array2D, align 8
  %tobool1.not = icmp eq ptr %0, null
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.then
  tail call void @free(ptr noundef nonnull %0) #9
  br label %if.end

if.else:                                          ; preds = %if.then
  tail call void @error(ptr noundef nonnull @.str.116, i32 noundef 100) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  tail call void @free(ptr noundef nonnull %array2D) #9
  br label %if.end4

if.else3:                                         ; preds = %entry
  tail call void @error(ptr noundef nonnull @.str.116, i32 noundef 100) #9
  br label %if.end4

if.end4:                                          ; preds = %if.else3, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @free_mem4Dint(ptr noundef %array4D) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq ptr %array4D, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %array4D, align 8
  %tobool.not.i = icmp eq ptr %0, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  %1 = load ptr, ptr %0, align 8
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %if.else3.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then.i
  %2 = load ptr, ptr %1, align 8
  %tobool1.not.i.i = icmp eq ptr %2, null
  br i1 %tobool1.not.i.i, label %if.else.i.i, label %if.then2.i.i

if.then2.i.i:                                     ; preds = %if.then.i.i
  tail call void @free(ptr noundef nonnull %2) #9
  br label %if.end.i.i

if.else.i.i:                                      ; preds = %if.then.i.i
  tail call void @error(ptr noundef nonnull @.str.69, i32 noundef 100) #9
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else.i.i, %if.then2.i.i
  tail call void @free(ptr noundef nonnull %1) #9
  br label %free_mem2Dint.exit.i

if.else3.i.i:                                     ; preds = %if.then.i
  tail call void @error(ptr noundef nonnull @.str.69, i32 noundef 100) #9
  br label %free_mem2Dint.exit.i

free_mem2Dint.exit.i:                             ; preds = %if.else3.i.i, %if.end.i.i
  tail call void @free(ptr noundef nonnull %0) #9
  br label %free_mem3Dint.exit

if.else.i:                                        ; preds = %if.then
  tail call void @error(ptr noundef nonnull @.str.74, i32 noundef 100) #9
  br label %free_mem3Dint.exit

free_mem3Dint.exit:                               ; preds = %free_mem2Dint.exit.i, %if.else.i
  tail call void @free(ptr noundef nonnull %array4D) #9
  br label %if.end

if.else:                                          ; preds = %entry
  tail call void @error(ptr noundef nonnull @.str.77, i32 noundef 100) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %free_mem3Dint.exit
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @free_mem4Dint64(ptr noundef %array4D) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq ptr %array4D, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %array4D, align 8
  %tobool.not.i = icmp eq ptr %0, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  %1 = load ptr, ptr %0, align 8
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %if.else3.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then.i
  %2 = load ptr, ptr %1, align 8
  %tobool1.not.i.i = icmp eq ptr %2, null
  br i1 %tobool1.not.i.i, label %if.else.i.i, label %if.then2.i.i

if.then2.i.i:                                     ; preds = %if.then.i.i
  tail call void @free(ptr noundef nonnull %2) #9
  br label %if.end.i.i

if.else.i.i:                                      ; preds = %if.then.i.i
  tail call void @error(ptr noundef nonnull @.str.71, i32 noundef 100) #9
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else.i.i, %if.then2.i.i
  tail call void @free(ptr noundef nonnull %1) #9
  br label %free_mem2Dint64.exit.i

if.else3.i.i:                                     ; preds = %if.then.i
  tail call void @error(ptr noundef nonnull @.str.71, i32 noundef 100) #9
  br label %free_mem2Dint64.exit.i

free_mem2Dint64.exit.i:                           ; preds = %if.else3.i.i, %if.end.i.i
  tail call void @free(ptr noundef nonnull %0) #9
  br label %free_mem3Dint64.exit

if.else.i:                                        ; preds = %if.then
  tail call void @error(ptr noundef nonnull @.str.75, i32 noundef 100) #9
  br label %free_mem3Dint64.exit

free_mem3Dint64.exit:                             ; preds = %free_mem2Dint64.exit.i, %if.else.i
  tail call void @free(ptr noundef nonnull %array4D) #9
  br label %if.end

if.else:                                          ; preds = %entry
  tail call void @error(ptr noundef nonnull @.str.78, i32 noundef 100) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %free_mem3Dint64.exit
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @free_mem4Ddistblk(ptr noundef %array4D) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq ptr %array4D, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %array4D, align 8
  %tobool.not.i = icmp eq ptr %0, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  %1 = load ptr, ptr %0, align 8
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %if.else3.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then.i
  %2 = load ptr, ptr %1, align 8
  %tobool1.not.i.i = icmp eq ptr %2, null
  br i1 %tobool1.not.i.i, label %if.else.i.i, label %if.then2.i.i

if.then2.i.i:                                     ; preds = %if.then.i.i
  tail call void @free(ptr noundef nonnull %2) #9
  br label %if.end.i.i

if.else.i.i:                                      ; preds = %if.then.i.i
  tail call void @error(ptr noundef nonnull @.str.116, i32 noundef 100) #9
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else.i.i, %if.then2.i.i
  tail call void @free(ptr noundef nonnull %1) #9
  br label %free_mem2Ddistblk.exit.i

if.else3.i.i:                                     ; preds = %if.then.i
  tail call void @error(ptr noundef nonnull @.str.116, i32 noundef 100) #9
  br label %free_mem2Ddistblk.exit.i

free_mem2Ddistblk.exit.i:                         ; preds = %if.else3.i.i, %if.end.i.i
  tail call void @free(ptr noundef nonnull %0) #9
  br label %free_mem3Ddistblk.exit

if.else.i:                                        ; preds = %if.then
  tail call void @error(ptr noundef nonnull @.str.76, i32 noundef 100) #9
  br label %free_mem3Ddistblk.exit

free_mem3Ddistblk.exit:                           ; preds = %free_mem2Ddistblk.exit.i, %if.else.i
  tail call void @free(ptr noundef nonnull %array4D) #9
  br label %if.end

if.else:                                          ; preds = %entry
  tail call void @error(ptr noundef nonnull @.str.79, i32 noundef 100) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %free_mem3Ddistblk.exit
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @free_mem5Dint(ptr noundef %array5D) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq ptr %array5D, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %array5D, align 8
  tail call void @free_mem4Dint(ptr noundef %0)
  tail call void @free(ptr noundef nonnull %array5D) #9
  br label %if.end

if.else:                                          ; preds = %entry
  tail call void @error(ptr noundef nonnull @.str.80, i32 noundef 100) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i64 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @new_mem2Duint16(i32 noundef %dim0, i32 noundef %dim1) local_unnamed_addr #0 {
entry:
  %conv = sext i32 %dim0 to i64
  %mul = shl nsw i64 %conv, 3
  %call = tail call noalias ptr @malloc(i64 noundef %mul) #8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call.i = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.82) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %mul2 = mul nsw i32 %dim1, %dim0
  %conv3 = sext i32 %mul2 to i64
  %call4 = tail call noalias ptr @calloc(i64 noundef %conv3, i64 noundef 2) #10
  store ptr %call4, ptr %call, align 8
  %cmp5 = icmp eq ptr %call4, null
  br i1 %cmp5, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  %call.i22 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.82) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end
  %cmp923 = icmp sgt i32 %dim0, 1
  br i1 %cmp923, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end8
  %idx.ext = sext i32 %dim1 to i64
  %wide.trip.count = zext nneg i32 %dim0 to i64
  %load_initial = load ptr, ptr %call, align 8
  %0 = add nsw i64 %wide.trip.count, -1
  %1 = add nsw i64 %wide.trip.count, -2
  %xtraiter = and i64 %0, 7
  %2 = icmp ult i64 %1, 7
  br i1 %2, label %for.end.loopexit.unr-lcssa, label %for.body.lr.ph.new

for.body.lr.ph.new:                               ; preds = %for.body.lr.ph
  %unroll_iter = and i64 %0, -8
  %invariant.gep = getelementptr i8, ptr %call, i64 8
  %invariant.gep26 = getelementptr i8, ptr %call, i64 16
  %invariant.gep28 = getelementptr i8, ptr %call, i64 24
  %invariant.gep30 = getelementptr i8, ptr %call, i64 32
  %invariant.gep32 = getelementptr i8, ptr %call, i64 40
  %invariant.gep34 = getelementptr i8, ptr %call, i64 48
  %invariant.gep36 = getelementptr i8, ptr %call, i64 56
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph.new
  %store_forwarded = phi ptr [ %load_initial, %for.body.lr.ph.new ], [ %add.ptr.7, %for.body ]
  %indvars.iv = phi i64 [ 1, %for.body.lr.ph.new ], [ %indvars.iv.next.7, %for.body ]
  %niter = phi i64 [ 0, %for.body.lr.ph.new ], [ %niter.next.7, %for.body ]
  %3 = getelementptr ptr, ptr %call, i64 %indvars.iv
  %add.ptr = getelementptr inbounds i16, ptr %store_forwarded, i64 %idx.ext
  store ptr %add.ptr, ptr %3, align 8
  %gep = getelementptr ptr, ptr %invariant.gep, i64 %indvars.iv
  %add.ptr.1 = getelementptr inbounds i16, ptr %add.ptr, i64 %idx.ext
  store ptr %add.ptr.1, ptr %gep, align 8
  %gep27 = getelementptr ptr, ptr %invariant.gep26, i64 %indvars.iv
  %add.ptr.2 = getelementptr inbounds i16, ptr %add.ptr.1, i64 %idx.ext
  store ptr %add.ptr.2, ptr %gep27, align 8
  %gep29 = getelementptr ptr, ptr %invariant.gep28, i64 %indvars.iv
  %add.ptr.3 = getelementptr inbounds i16, ptr %add.ptr.2, i64 %idx.ext
  store ptr %add.ptr.3, ptr %gep29, align 8
  %gep31 = getelementptr ptr, ptr %invariant.gep30, i64 %indvars.iv
  %add.ptr.4 = getelementptr inbounds i16, ptr %add.ptr.3, i64 %idx.ext
  store ptr %add.ptr.4, ptr %gep31, align 8
  %gep33 = getelementptr ptr, ptr %invariant.gep32, i64 %indvars.iv
  %add.ptr.5 = getelementptr inbounds i16, ptr %add.ptr.4, i64 %idx.ext
  store ptr %add.ptr.5, ptr %gep33, align 8
  %gep35 = getelementptr ptr, ptr %invariant.gep34, i64 %indvars.iv
  %add.ptr.6 = getelementptr inbounds i16, ptr %add.ptr.5, i64 %idx.ext
  store ptr %add.ptr.6, ptr %gep35, align 8
  %gep37 = getelementptr ptr, ptr %invariant.gep36, i64 %indvars.iv
  %add.ptr.7 = getelementptr inbounds i16, ptr %add.ptr.6, i64 %idx.ext
  store ptr %add.ptr.7, ptr %gep37, align 8
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8
  %niter.next.7 = add i64 %niter, 8
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %for.end.loopexit.unr-lcssa, label %for.body

for.end.loopexit.unr-lcssa:                       ; preds = %for.body, %for.body.lr.ph
  %store_forwarded.unr = phi ptr [ %load_initial, %for.body.lr.ph ], [ %add.ptr.7, %for.body ]
  %indvars.iv.unr = phi i64 [ 1, %for.body.lr.ph ], [ %indvars.iv.next.7, %for.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.end, label %for.body.epil

for.body.epil:                                    ; preds = %for.end.loopexit.unr-lcssa, %for.body.epil
  %store_forwarded.epil = phi ptr [ %add.ptr.epil, %for.body.epil ], [ %store_forwarded.unr, %for.end.loopexit.unr-lcssa ]
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %for.body.epil ], [ %indvars.iv.unr, %for.end.loopexit.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %for.body.epil ], [ 0, %for.end.loopexit.unr-lcssa ]
  %4 = getelementptr ptr, ptr %call, i64 %indvars.iv.epil
  %add.ptr.epil = getelementptr inbounds i16, ptr %store_forwarded.epil, i64 %idx.ext
  store ptr %add.ptr.epil, ptr %4, align 8
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %for.end, label %for.body.epil, !llvm.loop !57

for.end:                                          ; preds = %for.end.loopexit.unr-lcssa, %for.body.epil, %if.end8
  ret ptr %call
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @get_mem2Duint16(ptr nocapture noundef %array2D, i32 noundef %dim0, i32 noundef %dim1) local_unnamed_addr #0 {
entry:
  %conv = sext i32 %dim0 to i64
  %mul = shl nsw i64 %conv, 3
  %call = tail call noalias ptr @malloc(i64 noundef %mul) #8
  store ptr %call, ptr %array2D, align 8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call.i = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.82) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  %.pre = load ptr, ptr %array2D, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %0 = phi ptr [ %.pre, %if.then ], [ %call, %entry ]
  %mul2 = mul nsw i32 %dim1, %dim0
  %conv3 = sext i32 %mul2 to i64
  %call4 = tail call noalias ptr @calloc(i64 noundef %conv3, i64 noundef 2) #10
  store ptr %call4, ptr %0, align 8
  %cmp5 = icmp eq ptr %call4, null
  br i1 %cmp5, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  %call.i29 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.82) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end
  %cmp930 = icmp sgt i32 %dim0, 1
  br i1 %cmp930, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end8
  %idx.ext = sext i32 %dim1 to i64
  %wide.trip.count = zext nneg i32 %dim0 to i64
  %1 = add nsw i64 %wide.trip.count, -1
  %2 = add nsw i64 %wide.trip.count, -2
  %xtraiter = and i64 %1, 3
  %3 = icmp ult i64 %2, 3
  br i1 %3, label %for.end.loopexit.unr-lcssa, label %for.body.lr.ph.new

for.body.lr.ph.new:                               ; preds = %for.body.lr.ph
  %unroll_iter = and i64 %1, -4
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph.new
  %indvars.iv = phi i64 [ 1, %for.body.lr.ph.new ], [ %indvars.iv.next.3, %for.body ]
  %niter = phi i64 [ 0, %for.body.lr.ph.new ], [ %niter.next.3, %for.body ]
  %4 = load ptr, ptr %array2D, align 8
  %5 = getelementptr ptr, ptr %4, i64 %indvars.iv
  %arrayidx = getelementptr i8, ptr %5, i64 -8
  %6 = load ptr, ptr %arrayidx, align 8
  %add.ptr = getelementptr inbounds i16, ptr %6, i64 %idx.ext
  store ptr %add.ptr, ptr %5, align 8
  %7 = load ptr, ptr %array2D, align 8
  %8 = getelementptr ptr, ptr %7, i64 %indvars.iv
  %9 = getelementptr i8, ptr %8, i64 8
  %10 = load ptr, ptr %8, align 8
  %add.ptr.1 = getelementptr inbounds i16, ptr %10, i64 %idx.ext
  store ptr %add.ptr.1, ptr %9, align 8
  %11 = load ptr, ptr %array2D, align 8
  %12 = getelementptr ptr, ptr %11, i64 %indvars.iv
  %13 = getelementptr i8, ptr %12, i64 16
  %arrayidx.2 = getelementptr i8, ptr %12, i64 8
  %14 = load ptr, ptr %arrayidx.2, align 8
  %add.ptr.2 = getelementptr inbounds i16, ptr %14, i64 %idx.ext
  store ptr %add.ptr.2, ptr %13, align 8
  %15 = load ptr, ptr %array2D, align 8
  %16 = getelementptr ptr, ptr %15, i64 %indvars.iv
  %17 = getelementptr i8, ptr %16, i64 24
  %arrayidx.3 = getelementptr i8, ptr %16, i64 16
  %18 = load ptr, ptr %arrayidx.3, align 8
  %add.ptr.3 = getelementptr inbounds i16, ptr %18, i64 %idx.ext
  store ptr %add.ptr.3, ptr %17, align 8
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4
  %niter.next.3 = add i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %for.end.loopexit.unr-lcssa, label %for.body

for.end.loopexit.unr-lcssa:                       ; preds = %for.body, %for.body.lr.ph
  %indvars.iv.unr = phi i64 [ 1, %for.body.lr.ph ], [ %indvars.iv.next.3, %for.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.end, label %for.body.epil

for.body.epil:                                    ; preds = %for.end.loopexit.unr-lcssa, %for.body.epil
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %for.body.epil ], [ %indvars.iv.unr, %for.end.loopexit.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %for.body.epil ], [ 0, %for.end.loopexit.unr-lcssa ]
  %19 = load ptr, ptr %array2D, align 8
  %20 = getelementptr ptr, ptr %19, i64 %indvars.iv.epil
  %arrayidx.epil = getelementptr i8, ptr %20, i64 -8
  %21 = load ptr, ptr %arrayidx.epil, align 8
  %add.ptr.epil = getelementptr inbounds i16, ptr %21, i64 %idx.ext
  store ptr %add.ptr.epil, ptr %20, align 8
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %for.end, label %for.body.epil, !llvm.loop !58

for.end:                                          ; preds = %for.end.loopexit.unr-lcssa, %for.body.epil, %if.end8
  %mul15 = shl i32 %dim1, 1
  %add = add i32 %mul15, 8
  %mul16 = mul i32 %add, %dim0
  ret i32 %mul16
}

; Function Attrs: nounwind uwtable
define dso_local i32 @get_mem3Duint16(ptr nocapture noundef %array3D, i32 noundef %dim0, i32 noundef %dim1, i32 noundef %dim2) local_unnamed_addr #0 {
entry:
  %conv = sext i32 %dim0 to i64
  %mul = shl nsw i64 %conv, 3
  %call = tail call noalias ptr @malloc(i64 noundef %mul) #8
  store ptr %call, ptr %array3D, align 8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call.i = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.83) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  %.pre = load ptr, ptr %array3D, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %0 = phi ptr [ %.pre, %if.then ], [ %call, %entry ]
  %mul5 = mul nsw i32 %dim1, %dim0
  %call6 = tail call i32 @get_mem2Duint16(ptr noundef %0, i32 noundef %mul5, i32 noundef %dim2)
  %cmp722 = icmp sgt i32 %dim0, 1
  br i1 %cmp722, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %idx.ext = sext i32 %dim1 to i64
  %wide.trip.count = zext nneg i32 %dim0 to i64
  %1 = add nsw i64 %wide.trip.count, -1
  %2 = add nsw i64 %wide.trip.count, -2
  %xtraiter = and i64 %1, 3
  %3 = icmp ult i64 %2, 3
  br i1 %3, label %for.end.loopexit.unr-lcssa, label %for.body.lr.ph.new

for.body.lr.ph.new:                               ; preds = %for.body.lr.ph
  %unroll_iter = and i64 %1, -4
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph.new
  %indvars.iv = phi i64 [ 1, %for.body.lr.ph.new ], [ %indvars.iv.next.3, %for.body ]
  %niter = phi i64 [ 0, %for.body.lr.ph.new ], [ %niter.next.3, %for.body ]
  %4 = load ptr, ptr %array3D, align 8
  %5 = getelementptr ptr, ptr %4, i64 %indvars.iv
  %arrayidx = getelementptr i8, ptr %5, i64 -8
  %6 = load ptr, ptr %arrayidx, align 8
  %add.ptr = getelementptr inbounds ptr, ptr %6, i64 %idx.ext
  store ptr %add.ptr, ptr %5, align 8
  %7 = load ptr, ptr %array3D, align 8
  %8 = getelementptr ptr, ptr %7, i64 %indvars.iv
  %9 = getelementptr i8, ptr %8, i64 8
  %10 = load ptr, ptr %8, align 8
  %add.ptr.1 = getelementptr inbounds ptr, ptr %10, i64 %idx.ext
  store ptr %add.ptr.1, ptr %9, align 8
  %11 = load ptr, ptr %array3D, align 8
  %12 = getelementptr ptr, ptr %11, i64 %indvars.iv
  %13 = getelementptr i8, ptr %12, i64 16
  %arrayidx.2 = getelementptr i8, ptr %12, i64 8
  %14 = load ptr, ptr %arrayidx.2, align 8
  %add.ptr.2 = getelementptr inbounds ptr, ptr %14, i64 %idx.ext
  store ptr %add.ptr.2, ptr %13, align 8
  %15 = load ptr, ptr %array3D, align 8
  %16 = getelementptr ptr, ptr %15, i64 %indvars.iv
  %17 = getelementptr i8, ptr %16, i64 24
  %arrayidx.3 = getelementptr i8, ptr %16, i64 16
  %18 = load ptr, ptr %arrayidx.3, align 8
  %add.ptr.3 = getelementptr inbounds ptr, ptr %18, i64 %idx.ext
  store ptr %add.ptr.3, ptr %17, align 8
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4
  %niter.next.3 = add i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %for.end.loopexit.unr-lcssa, label %for.body

for.end.loopexit.unr-lcssa:                       ; preds = %for.body, %for.body.lr.ph
  %indvars.iv.unr = phi i64 [ 1, %for.body.lr.ph ], [ %indvars.iv.next.3, %for.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.end, label %for.body.epil

for.body.epil:                                    ; preds = %for.end.loopexit.unr-lcssa, %for.body.epil
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %for.body.epil ], [ %indvars.iv.unr, %for.end.loopexit.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %for.body.epil ], [ 0, %for.end.loopexit.unr-lcssa ]
  %19 = load ptr, ptr %array3D, align 8
  %20 = getelementptr ptr, ptr %19, i64 %indvars.iv.epil
  %arrayidx.epil = getelementptr i8, ptr %20, i64 -8
  %21 = load ptr, ptr %arrayidx.epil, align 8
  %add.ptr.epil = getelementptr inbounds ptr, ptr %21, i64 %idx.ext
  store ptr %add.ptr.epil, ptr %20, align 8
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %for.end, label %for.body.epil, !llvm.loop !59

for.end:                                          ; preds = %for.end.loopexit.unr-lcssa, %for.body.epil, %if.end
  %conv1 = trunc i64 %mul to i32
  %add = add nsw i32 %call6, %conv1
  ret i32 %add
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @get_mem4Duint16(ptr nocapture noundef %array4D, i32 noundef %dim0, i32 noundef %dim1, i32 noundef %dim2, i32 noundef %dim3) local_unnamed_addr #0 {
entry:
  %conv = sext i32 %dim0 to i64
  %mul = shl nsw i64 %conv, 3
  %call = tail call noalias ptr @malloc(i64 noundef %mul) #8
  store ptr %call, ptr %array4D, align 8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call.i = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.84) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  %.pre = load ptr, ptr %array4D, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %0 = phi ptr [ %.pre, %if.then ], [ %call, %entry ]
  %mul5 = mul nsw i32 %dim1, %dim0
  %conv.i = sext i32 %mul5 to i64
  %mul.i = shl nsw i64 %conv.i, 3
  %call.i22 = tail call noalias ptr @malloc(i64 noundef %mul.i) #8
  store ptr %call.i22, ptr %0, align 8
  %cmp.i = icmp eq ptr %call.i22, null
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end
  %call.i.i = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.83) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  %.pre.i = load ptr, ptr %0, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end
  %1 = phi ptr [ %.pre.i, %if.then.i ], [ %call.i22, %if.end ]
  %mul5.i = mul nsw i32 %mul5, %dim2
  %call6.i = tail call i32 @get_mem2Duint16(ptr noundef %1, i32 noundef %mul5.i, i32 noundef %dim3)
  %cmp722.i = icmp sgt i32 %mul5, 1
  br i1 %cmp722.i, label %for.body.lr.ph.i, label %get_mem3Duint16.exit

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %idx.ext.i = sext i32 %dim2 to i64
  %wide.trip.count.i = zext nneg i32 %mul5 to i64
  %2 = add nsw i64 %wide.trip.count.i, -1
  %3 = add nsw i64 %wide.trip.count.i, -2
  %xtraiter = and i64 %2, 3
  %4 = icmp ult i64 %3, 3
  br i1 %4, label %get_mem3Duint16.exit.loopexit.unr-lcssa, label %for.body.lr.ph.i.new

for.body.lr.ph.i.new:                             ; preds = %for.body.lr.ph.i
  %unroll_iter = and i64 %2, -4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %for.body.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 1, %for.body.lr.ph.i.new ], [ %indvars.iv.next.i.3, %for.body.i ]
  %niter = phi i64 [ 0, %for.body.lr.ph.i.new ], [ %niter.next.3, %for.body.i ]
  %5 = load ptr, ptr %0, align 8
  %6 = getelementptr ptr, ptr %5, i64 %indvars.iv.i
  %arrayidx.i = getelementptr i8, ptr %6, i64 -8
  %7 = load ptr, ptr %arrayidx.i, align 8
  %add.ptr.i = getelementptr inbounds ptr, ptr %7, i64 %idx.ext.i
  store ptr %add.ptr.i, ptr %6, align 8
  %8 = load ptr, ptr %0, align 8
  %9 = getelementptr ptr, ptr %8, i64 %indvars.iv.i
  %10 = getelementptr i8, ptr %9, i64 8
  %11 = load ptr, ptr %9, align 8
  %add.ptr.i.1 = getelementptr inbounds ptr, ptr %11, i64 %idx.ext.i
  store ptr %add.ptr.i.1, ptr %10, align 8
  %12 = load ptr, ptr %0, align 8
  %13 = getelementptr ptr, ptr %12, i64 %indvars.iv.i
  %14 = getelementptr i8, ptr %13, i64 16
  %arrayidx.i.2 = getelementptr i8, ptr %13, i64 8
  %15 = load ptr, ptr %arrayidx.i.2, align 8
  %add.ptr.i.2 = getelementptr inbounds ptr, ptr %15, i64 %idx.ext.i
  store ptr %add.ptr.i.2, ptr %14, align 8
  %16 = load ptr, ptr %0, align 8
  %17 = getelementptr ptr, ptr %16, i64 %indvars.iv.i
  %18 = getelementptr i8, ptr %17, i64 24
  %arrayidx.i.3 = getelementptr i8, ptr %17, i64 16
  %19 = load ptr, ptr %arrayidx.i.3, align 8
  %add.ptr.i.3 = getelementptr inbounds ptr, ptr %19, i64 %idx.ext.i
  store ptr %add.ptr.i.3, ptr %18, align 8
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4
  %niter.next.3 = add i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %get_mem3Duint16.exit.loopexit.unr-lcssa, label %for.body.i

get_mem3Duint16.exit.loopexit.unr-lcssa:          ; preds = %for.body.i, %for.body.lr.ph.i
  %indvars.iv.i.unr = phi i64 [ 1, %for.body.lr.ph.i ], [ %indvars.iv.next.i.3, %for.body.i ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %get_mem3Duint16.exit, label %for.body.i.epil

for.body.i.epil:                                  ; preds = %get_mem3Duint16.exit.loopexit.unr-lcssa, %for.body.i.epil
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.next.i.epil, %for.body.i.epil ], [ %indvars.iv.i.unr, %get_mem3Duint16.exit.loopexit.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %for.body.i.epil ], [ 0, %get_mem3Duint16.exit.loopexit.unr-lcssa ]
  %20 = load ptr, ptr %0, align 8
  %21 = getelementptr ptr, ptr %20, i64 %indvars.iv.i.epil
  %arrayidx.i.epil = getelementptr i8, ptr %21, i64 -8
  %22 = load ptr, ptr %arrayidx.i.epil, align 8
  %add.ptr.i.epil = getelementptr inbounds ptr, ptr %22, i64 %idx.ext.i
  store ptr %add.ptr.i.epil, ptr %21, align 8
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %get_mem3Duint16.exit, label %for.body.i.epil, !llvm.loop !60

get_mem3Duint16.exit:                             ; preds = %get_mem3Duint16.exit.loopexit.unr-lcssa, %for.body.i.epil, %if.end.i
  %cmp723 = icmp sgt i32 %dim0, 1
  br i1 %cmp723, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %get_mem3Duint16.exit
  %idx.ext = sext i32 %dim1 to i64
  %wide.trip.count = zext nneg i32 %dim0 to i64
  %23 = add nsw i64 %wide.trip.count, -1
  %24 = add nsw i64 %wide.trip.count, -2
  %xtraiter26 = and i64 %23, 3
  %25 = icmp ult i64 %24, 3
  br i1 %25, label %for.end.loopexit.unr-lcssa, label %for.body.lr.ph.new

for.body.lr.ph.new:                               ; preds = %for.body.lr.ph
  %unroll_iter29 = and i64 %23, -4
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph.new
  %indvars.iv = phi i64 [ 1, %for.body.lr.ph.new ], [ %indvars.iv.next.3, %for.body ]
  %niter30 = phi i64 [ 0, %for.body.lr.ph.new ], [ %niter30.next.3, %for.body ]
  %26 = load ptr, ptr %array4D, align 8
  %27 = getelementptr ptr, ptr %26, i64 %indvars.iv
  %arrayidx = getelementptr i8, ptr %27, i64 -8
  %28 = load ptr, ptr %arrayidx, align 8
  %add.ptr = getelementptr inbounds ptr, ptr %28, i64 %idx.ext
  store ptr %add.ptr, ptr %27, align 8
  %29 = load ptr, ptr %array4D, align 8
  %30 = getelementptr ptr, ptr %29, i64 %indvars.iv
  %31 = getelementptr i8, ptr %30, i64 8
  %32 = load ptr, ptr %30, align 8
  %add.ptr.1 = getelementptr inbounds ptr, ptr %32, i64 %idx.ext
  store ptr %add.ptr.1, ptr %31, align 8
  %33 = load ptr, ptr %array4D, align 8
  %34 = getelementptr ptr, ptr %33, i64 %indvars.iv
  %35 = getelementptr i8, ptr %34, i64 16
  %arrayidx.2 = getelementptr i8, ptr %34, i64 8
  %36 = load ptr, ptr %arrayidx.2, align 8
  %add.ptr.2 = getelementptr inbounds ptr, ptr %36, i64 %idx.ext
  store ptr %add.ptr.2, ptr %35, align 8
  %37 = load ptr, ptr %array4D, align 8
  %38 = getelementptr ptr, ptr %37, i64 %indvars.iv
  %39 = getelementptr i8, ptr %38, i64 24
  %arrayidx.3 = getelementptr i8, ptr %38, i64 16
  %40 = load ptr, ptr %arrayidx.3, align 8
  %add.ptr.3 = getelementptr inbounds ptr, ptr %40, i64 %idx.ext
  store ptr %add.ptr.3, ptr %39, align 8
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4
  %niter30.next.3 = add i64 %niter30, 4
  %niter30.ncmp.3 = icmp eq i64 %niter30.next.3, %unroll_iter29
  br i1 %niter30.ncmp.3, label %for.end.loopexit.unr-lcssa, label %for.body

for.end.loopexit.unr-lcssa:                       ; preds = %for.body, %for.body.lr.ph
  %indvars.iv.unr = phi i64 [ 1, %for.body.lr.ph ], [ %indvars.iv.next.3, %for.body ]
  %lcmp.mod28.not = icmp eq i64 %xtraiter26, 0
  br i1 %lcmp.mod28.not, label %for.end, label %for.body.epil

for.body.epil:                                    ; preds = %for.end.loopexit.unr-lcssa, %for.body.epil
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %for.body.epil ], [ %indvars.iv.unr, %for.end.loopexit.unr-lcssa ]
  %epil.iter27 = phi i64 [ %epil.iter27.next, %for.body.epil ], [ 0, %for.end.loopexit.unr-lcssa ]
  %41 = load ptr, ptr %array4D, align 8
  %42 = getelementptr ptr, ptr %41, i64 %indvars.iv.epil
  %arrayidx.epil = getelementptr i8, ptr %42, i64 -8
  %43 = load ptr, ptr %arrayidx.epil, align 8
  %add.ptr.epil = getelementptr inbounds ptr, ptr %43, i64 %idx.ext
  store ptr %add.ptr.epil, ptr %42, align 8
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter27.next = add i64 %epil.iter27, 1
  %epil.iter27.cmp.not = icmp eq i64 %epil.iter27.next, %xtraiter26
  br i1 %epil.iter27.cmp.not, label %for.end, label %for.body.epil, !llvm.loop !61

for.end:                                          ; preds = %for.end.loopexit.unr-lcssa, %for.body.epil, %get_mem3Duint16.exit
  %conv1.i = trunc i64 %mul.i to i32
  %conv1 = trunc i64 %mul to i32
  %add.i = add i32 %conv1.i, %conv1
  %add = add i32 %add.i, %call6.i
  ret i32 %add
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @get_mem2Dshort(ptr nocapture noundef %array2D, i32 noundef %dim0, i32 noundef %dim1) local_unnamed_addr #0 {
entry:
  %conv = sext i32 %dim0 to i64
  %mul = shl nsw i64 %conv, 3
  %call = tail call noalias ptr @malloc(i64 noundef %mul) #8
  store ptr %call, ptr %array2D, align 8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call.i = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.85) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  %.pre = load ptr, ptr %array2D, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %0 = phi ptr [ %.pre, %if.then ], [ %call, %entry ]
  %mul2 = mul nsw i32 %dim1, %dim0
  %conv3 = sext i32 %mul2 to i64
  %call4 = tail call noalias ptr @calloc(i64 noundef %conv3, i64 noundef 2) #10
  store ptr %call4, ptr %0, align 8
  %cmp5 = icmp eq ptr %call4, null
  br i1 %cmp5, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  %call.i29 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.85) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end
  %cmp930 = icmp sgt i32 %dim0, 1
  br i1 %cmp930, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end8
  %idx.ext = sext i32 %dim1 to i64
  %wide.trip.count = zext nneg i32 %dim0 to i64
  %1 = add nsw i64 %wide.trip.count, -1
  %2 = add nsw i64 %wide.trip.count, -2
  %xtraiter = and i64 %1, 3
  %3 = icmp ult i64 %2, 3
  br i1 %3, label %for.end.loopexit.unr-lcssa, label %for.body.lr.ph.new

for.body.lr.ph.new:                               ; preds = %for.body.lr.ph
  %unroll_iter = and i64 %1, -4
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph.new
  %indvars.iv = phi i64 [ 1, %for.body.lr.ph.new ], [ %indvars.iv.next.3, %for.body ]
  %niter = phi i64 [ 0, %for.body.lr.ph.new ], [ %niter.next.3, %for.body ]
  %4 = load ptr, ptr %array2D, align 8
  %5 = getelementptr ptr, ptr %4, i64 %indvars.iv
  %arrayidx = getelementptr i8, ptr %5, i64 -8
  %6 = load ptr, ptr %arrayidx, align 8
  %add.ptr = getelementptr inbounds i16, ptr %6, i64 %idx.ext
  store ptr %add.ptr, ptr %5, align 8
  %7 = load ptr, ptr %array2D, align 8
  %8 = getelementptr ptr, ptr %7, i64 %indvars.iv
  %9 = getelementptr i8, ptr %8, i64 8
  %10 = load ptr, ptr %8, align 8
  %add.ptr.1 = getelementptr inbounds i16, ptr %10, i64 %idx.ext
  store ptr %add.ptr.1, ptr %9, align 8
  %11 = load ptr, ptr %array2D, align 8
  %12 = getelementptr ptr, ptr %11, i64 %indvars.iv
  %13 = getelementptr i8, ptr %12, i64 16
  %arrayidx.2 = getelementptr i8, ptr %12, i64 8
  %14 = load ptr, ptr %arrayidx.2, align 8
  %add.ptr.2 = getelementptr inbounds i16, ptr %14, i64 %idx.ext
  store ptr %add.ptr.2, ptr %13, align 8
  %15 = load ptr, ptr %array2D, align 8
  %16 = getelementptr ptr, ptr %15, i64 %indvars.iv
  %17 = getelementptr i8, ptr %16, i64 24
  %arrayidx.3 = getelementptr i8, ptr %16, i64 16
  %18 = load ptr, ptr %arrayidx.3, align 8
  %add.ptr.3 = getelementptr inbounds i16, ptr %18, i64 %idx.ext
  store ptr %add.ptr.3, ptr %17, align 8
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4
  %niter.next.3 = add i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %for.end.loopexit.unr-lcssa, label %for.body

for.end.loopexit.unr-lcssa:                       ; preds = %for.body, %for.body.lr.ph
  %indvars.iv.unr = phi i64 [ 1, %for.body.lr.ph ], [ %indvars.iv.next.3, %for.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.end, label %for.body.epil

for.body.epil:                                    ; preds = %for.end.loopexit.unr-lcssa, %for.body.epil
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %for.body.epil ], [ %indvars.iv.unr, %for.end.loopexit.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %for.body.epil ], [ 0, %for.end.loopexit.unr-lcssa ]
  %19 = load ptr, ptr %array2D, align 8
  %20 = getelementptr ptr, ptr %19, i64 %indvars.iv.epil
  %arrayidx.epil = getelementptr i8, ptr %20, i64 -8
  %21 = load ptr, ptr %arrayidx.epil, align 8
  %add.ptr.epil = getelementptr inbounds i16, ptr %21, i64 %idx.ext
  store ptr %add.ptr.epil, ptr %20, align 8
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %for.end, label %for.body.epil, !llvm.loop !62

for.end:                                          ; preds = %for.end.loopexit.unr-lcssa, %for.body.epil, %if.end8
  %mul15 = shl i32 %dim1, 1
  %add = add i32 %mul15, 8
  %mul16 = mul i32 %add, %dim0
  ret i32 %mul16
}

; Function Attrs: nounwind uwtable
define dso_local i32 @get_mem3Dshort(ptr nocapture noundef %array3D, i32 noundef %dim0, i32 noundef %dim1, i32 noundef %dim2) local_unnamed_addr #0 {
entry:
  %conv = sext i32 %dim0 to i64
  %mul = shl nsw i64 %conv, 3
  %call = tail call noalias ptr @malloc(i64 noundef %mul) #8
  store ptr %call, ptr %array3D, align 8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call.i = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.86) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  %.pre = load ptr, ptr %array3D, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %0 = phi ptr [ %.pre, %if.then ], [ %call, %entry ]
  %mul5 = mul nsw i32 %dim1, %dim0
  %call6 = tail call i32 @get_mem2Dshort(ptr noundef %0, i32 noundef %mul5, i32 noundef %dim2)
  %cmp722 = icmp sgt i32 %dim0, 1
  br i1 %cmp722, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %idx.ext = sext i32 %dim1 to i64
  %wide.trip.count = zext nneg i32 %dim0 to i64
  %1 = add nsw i64 %wide.trip.count, -1
  %2 = add nsw i64 %wide.trip.count, -2
  %xtraiter = and i64 %1, 3
  %3 = icmp ult i64 %2, 3
  br i1 %3, label %for.end.loopexit.unr-lcssa, label %for.body.lr.ph.new

for.body.lr.ph.new:                               ; preds = %for.body.lr.ph
  %unroll_iter = and i64 %1, -4
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph.new
  %indvars.iv = phi i64 [ 1, %for.body.lr.ph.new ], [ %indvars.iv.next.3, %for.body ]
  %niter = phi i64 [ 0, %for.body.lr.ph.new ], [ %niter.next.3, %for.body ]
  %4 = load ptr, ptr %array3D, align 8
  %5 = getelementptr ptr, ptr %4, i64 %indvars.iv
  %arrayidx = getelementptr i8, ptr %5, i64 -8
  %6 = load ptr, ptr %arrayidx, align 8
  %add.ptr = getelementptr inbounds ptr, ptr %6, i64 %idx.ext
  store ptr %add.ptr, ptr %5, align 8
  %7 = load ptr, ptr %array3D, align 8
  %8 = getelementptr ptr, ptr %7, i64 %indvars.iv
  %9 = getelementptr i8, ptr %8, i64 8
  %10 = load ptr, ptr %8, align 8
  %add.ptr.1 = getelementptr inbounds ptr, ptr %10, i64 %idx.ext
  store ptr %add.ptr.1, ptr %9, align 8
  %11 = load ptr, ptr %array3D, align 8
  %12 = getelementptr ptr, ptr %11, i64 %indvars.iv
  %13 = getelementptr i8, ptr %12, i64 16
  %arrayidx.2 = getelementptr i8, ptr %12, i64 8
  %14 = load ptr, ptr %arrayidx.2, align 8
  %add.ptr.2 = getelementptr inbounds ptr, ptr %14, i64 %idx.ext
  store ptr %add.ptr.2, ptr %13, align 8
  %15 = load ptr, ptr %array3D, align 8
  %16 = getelementptr ptr, ptr %15, i64 %indvars.iv
  %17 = getelementptr i8, ptr %16, i64 24
  %arrayidx.3 = getelementptr i8, ptr %16, i64 16
  %18 = load ptr, ptr %arrayidx.3, align 8
  %add.ptr.3 = getelementptr inbounds ptr, ptr %18, i64 %idx.ext
  store ptr %add.ptr.3, ptr %17, align 8
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4
  %niter.next.3 = add i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %for.end.loopexit.unr-lcssa, label %for.body

for.end.loopexit.unr-lcssa:                       ; preds = %for.body, %for.body.lr.ph
  %indvars.iv.unr = phi i64 [ 1, %for.body.lr.ph ], [ %indvars.iv.next.3, %for.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.end, label %for.body.epil

for.body.epil:                                    ; preds = %for.end.loopexit.unr-lcssa, %for.body.epil
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %for.body.epil ], [ %indvars.iv.unr, %for.end.loopexit.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %for.body.epil ], [ 0, %for.end.loopexit.unr-lcssa ]
  %19 = load ptr, ptr %array3D, align 8
  %20 = getelementptr ptr, ptr %19, i64 %indvars.iv.epil
  %arrayidx.epil = getelementptr i8, ptr %20, i64 -8
  %21 = load ptr, ptr %arrayidx.epil, align 8
  %add.ptr.epil = getelementptr inbounds ptr, ptr %21, i64 %idx.ext
  store ptr %add.ptr.epil, ptr %20, align 8
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %for.end, label %for.body.epil, !llvm.loop !63

for.end:                                          ; preds = %for.end.loopexit.unr-lcssa, %for.body.epil, %if.end
  %conv1 = trunc i64 %mul to i32
  %add = add nsw i32 %call6, %conv1
  ret i32 %add
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @get_mem4Dshort(ptr nocapture noundef %array4D, i32 noundef %dim0, i32 noundef %dim1, i32 noundef %dim2, i32 noundef %dim3) local_unnamed_addr #0 {
entry:
  %conv = sext i32 %dim0 to i64
  %mul = shl nsw i64 %conv, 3
  %call = tail call noalias ptr @malloc(i64 noundef %mul) #8
  store ptr %call, ptr %array4D, align 8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call.i = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.87) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  %.pre = load ptr, ptr %array4D, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %0 = phi ptr [ %.pre, %if.then ], [ %call, %entry ]
  %mul5 = mul nsw i32 %dim1, %dim0
  %conv.i = sext i32 %mul5 to i64
  %mul.i = shl nsw i64 %conv.i, 3
  %call.i22 = tail call noalias ptr @malloc(i64 noundef %mul.i) #8
  store ptr %call.i22, ptr %0, align 8
  %cmp.i = icmp eq ptr %call.i22, null
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end
  %call.i.i = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.86) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  %.pre.i = load ptr, ptr %0, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end
  %1 = phi ptr [ %.pre.i, %if.then.i ], [ %call.i22, %if.end ]
  %mul5.i = mul nsw i32 %mul5, %dim2
  %call6.i = tail call i32 @get_mem2Dshort(ptr noundef %1, i32 noundef %mul5.i, i32 noundef %dim3)
  %cmp722.i = icmp sgt i32 %mul5, 1
  br i1 %cmp722.i, label %for.body.lr.ph.i, label %get_mem3Dshort.exit

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %idx.ext.i = sext i32 %dim2 to i64
  %wide.trip.count.i = zext nneg i32 %mul5 to i64
  %2 = add nsw i64 %wide.trip.count.i, -1
  %3 = add nsw i64 %wide.trip.count.i, -2
  %xtraiter = and i64 %2, 3
  %4 = icmp ult i64 %3, 3
  br i1 %4, label %get_mem3Dshort.exit.loopexit.unr-lcssa, label %for.body.lr.ph.i.new

for.body.lr.ph.i.new:                             ; preds = %for.body.lr.ph.i
  %unroll_iter = and i64 %2, -4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %for.body.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 1, %for.body.lr.ph.i.new ], [ %indvars.iv.next.i.3, %for.body.i ]
  %niter = phi i64 [ 0, %for.body.lr.ph.i.new ], [ %niter.next.3, %for.body.i ]
  %5 = load ptr, ptr %0, align 8
  %6 = getelementptr ptr, ptr %5, i64 %indvars.iv.i
  %arrayidx.i = getelementptr i8, ptr %6, i64 -8
  %7 = load ptr, ptr %arrayidx.i, align 8
  %add.ptr.i = getelementptr inbounds ptr, ptr %7, i64 %idx.ext.i
  store ptr %add.ptr.i, ptr %6, align 8
  %8 = load ptr, ptr %0, align 8
  %9 = getelementptr ptr, ptr %8, i64 %indvars.iv.i
  %10 = getelementptr i8, ptr %9, i64 8
  %11 = load ptr, ptr %9, align 8
  %add.ptr.i.1 = getelementptr inbounds ptr, ptr %11, i64 %idx.ext.i
  store ptr %add.ptr.i.1, ptr %10, align 8
  %12 = load ptr, ptr %0, align 8
  %13 = getelementptr ptr, ptr %12, i64 %indvars.iv.i
  %14 = getelementptr i8, ptr %13, i64 16
  %arrayidx.i.2 = getelementptr i8, ptr %13, i64 8
  %15 = load ptr, ptr %arrayidx.i.2, align 8
  %add.ptr.i.2 = getelementptr inbounds ptr, ptr %15, i64 %idx.ext.i
  store ptr %add.ptr.i.2, ptr %14, align 8
  %16 = load ptr, ptr %0, align 8
  %17 = getelementptr ptr, ptr %16, i64 %indvars.iv.i
  %18 = getelementptr i8, ptr %17, i64 24
  %arrayidx.i.3 = getelementptr i8, ptr %17, i64 16
  %19 = load ptr, ptr %arrayidx.i.3, align 8
  %add.ptr.i.3 = getelementptr inbounds ptr, ptr %19, i64 %idx.ext.i
  store ptr %add.ptr.i.3, ptr %18, align 8
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4
  %niter.next.3 = add i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %get_mem3Dshort.exit.loopexit.unr-lcssa, label %for.body.i

get_mem3Dshort.exit.loopexit.unr-lcssa:           ; preds = %for.body.i, %for.body.lr.ph.i
  %indvars.iv.i.unr = phi i64 [ 1, %for.body.lr.ph.i ], [ %indvars.iv.next.i.3, %for.body.i ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %get_mem3Dshort.exit, label %for.body.i.epil

for.body.i.epil:                                  ; preds = %get_mem3Dshort.exit.loopexit.unr-lcssa, %for.body.i.epil
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.next.i.epil, %for.body.i.epil ], [ %indvars.iv.i.unr, %get_mem3Dshort.exit.loopexit.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %for.body.i.epil ], [ 0, %get_mem3Dshort.exit.loopexit.unr-lcssa ]
  %20 = load ptr, ptr %0, align 8
  %21 = getelementptr ptr, ptr %20, i64 %indvars.iv.i.epil
  %arrayidx.i.epil = getelementptr i8, ptr %21, i64 -8
  %22 = load ptr, ptr %arrayidx.i.epil, align 8
  %add.ptr.i.epil = getelementptr inbounds ptr, ptr %22, i64 %idx.ext.i
  store ptr %add.ptr.i.epil, ptr %21, align 8
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %get_mem3Dshort.exit, label %for.body.i.epil, !llvm.loop !64

get_mem3Dshort.exit:                              ; preds = %get_mem3Dshort.exit.loopexit.unr-lcssa, %for.body.i.epil, %if.end.i
  %cmp723 = icmp sgt i32 %dim0, 1
  br i1 %cmp723, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %get_mem3Dshort.exit
  %idx.ext = sext i32 %dim1 to i64
  %wide.trip.count = zext nneg i32 %dim0 to i64
  %23 = add nsw i64 %wide.trip.count, -1
  %24 = add nsw i64 %wide.trip.count, -2
  %xtraiter26 = and i64 %23, 3
  %25 = icmp ult i64 %24, 3
  br i1 %25, label %for.end.loopexit.unr-lcssa, label %for.body.lr.ph.new

for.body.lr.ph.new:                               ; preds = %for.body.lr.ph
  %unroll_iter29 = and i64 %23, -4
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph.new
  %indvars.iv = phi i64 [ 1, %for.body.lr.ph.new ], [ %indvars.iv.next.3, %for.body ]
  %niter30 = phi i64 [ 0, %for.body.lr.ph.new ], [ %niter30.next.3, %for.body ]
  %26 = load ptr, ptr %array4D, align 8
  %27 = getelementptr ptr, ptr %26, i64 %indvars.iv
  %arrayidx = getelementptr i8, ptr %27, i64 -8
  %28 = load ptr, ptr %arrayidx, align 8
  %add.ptr = getelementptr inbounds ptr, ptr %28, i64 %idx.ext
  store ptr %add.ptr, ptr %27, align 8
  %29 = load ptr, ptr %array4D, align 8
  %30 = getelementptr ptr, ptr %29, i64 %indvars.iv
  %31 = getelementptr i8, ptr %30, i64 8
  %32 = load ptr, ptr %30, align 8
  %add.ptr.1 = getelementptr inbounds ptr, ptr %32, i64 %idx.ext
  store ptr %add.ptr.1, ptr %31, align 8
  %33 = load ptr, ptr %array4D, align 8
  %34 = getelementptr ptr, ptr %33, i64 %indvars.iv
  %35 = getelementptr i8, ptr %34, i64 16
  %arrayidx.2 = getelementptr i8, ptr %34, i64 8
  %36 = load ptr, ptr %arrayidx.2, align 8
  %add.ptr.2 = getelementptr inbounds ptr, ptr %36, i64 %idx.ext
  store ptr %add.ptr.2, ptr %35, align 8
  %37 = load ptr, ptr %array4D, align 8
  %38 = getelementptr ptr, ptr %37, i64 %indvars.iv
  %39 = getelementptr i8, ptr %38, i64 24
  %arrayidx.3 = getelementptr i8, ptr %38, i64 16
  %40 = load ptr, ptr %arrayidx.3, align 8
  %add.ptr.3 = getelementptr inbounds ptr, ptr %40, i64 %idx.ext
  store ptr %add.ptr.3, ptr %39, align 8
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4
  %niter30.next.3 = add i64 %niter30, 4
  %niter30.ncmp.3 = icmp eq i64 %niter30.next.3, %unroll_iter29
  br i1 %niter30.ncmp.3, label %for.end.loopexit.unr-lcssa, label %for.body

for.end.loopexit.unr-lcssa:                       ; preds = %for.body, %for.body.lr.ph
  %indvars.iv.unr = phi i64 [ 1, %for.body.lr.ph ], [ %indvars.iv.next.3, %for.body ]
  %lcmp.mod28.not = icmp eq i64 %xtraiter26, 0
  br i1 %lcmp.mod28.not, label %for.end, label %for.body.epil

for.body.epil:                                    ; preds = %for.end.loopexit.unr-lcssa, %for.body.epil
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %for.body.epil ], [ %indvars.iv.unr, %for.end.loopexit.unr-lcssa ]
  %epil.iter27 = phi i64 [ %epil.iter27.next, %for.body.epil ], [ 0, %for.end.loopexit.unr-lcssa ]
  %41 = load ptr, ptr %array4D, align 8
  %42 = getelementptr ptr, ptr %41, i64 %indvars.iv.epil
  %arrayidx.epil = getelementptr i8, ptr %42, i64 -8
  %43 = load ptr, ptr %arrayidx.epil, align 8
  %add.ptr.epil = getelementptr inbounds ptr, ptr %43, i64 %idx.ext
  store ptr %add.ptr.epil, ptr %42, align 8
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter27.next = add i64 %epil.iter27, 1
  %epil.iter27.cmp.not = icmp eq i64 %epil.iter27.next, %xtraiter26
  br i1 %epil.iter27.cmp.not, label %for.end, label %for.body.epil, !llvm.loop !65

for.end:                                          ; preds = %for.end.loopexit.unr-lcssa, %for.body.epil, %get_mem3Dshort.exit
  %conv1.i = trunc i64 %mul.i to i32
  %conv1 = trunc i64 %mul to i32
  %add.i = add i32 %conv1.i, %conv1
  %add = add i32 %add.i, %call6.i
  ret i32 %add
}

; Function Attrs: nounwind uwtable
define dso_local i32 @get_mem5Dshort(ptr nocapture noundef %array5D, i32 noundef %dim0, i32 noundef %dim1, i32 noundef %dim2, i32 noundef %dim3, i32 noundef %dim4) local_unnamed_addr #0 {
entry:
  %conv = sext i32 %dim0 to i64
  %mul = shl nsw i64 %conv, 3
  %call = tail call noalias ptr @malloc(i64 noundef %mul) #8
  store ptr %call, ptr %array5D, align 8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call.i = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.88) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  %.pre = load ptr, ptr %array5D, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %0 = phi ptr [ %.pre, %if.then ], [ %call, %entry ]
  %mul5 = mul nsw i32 %dim1, %dim0
  %call6 = tail call i32 @get_mem4Dshort(ptr noundef %0, i32 noundef %mul5, i32 noundef %dim2, i32 noundef %dim3, i32 noundef %dim4)
  %cmp722 = icmp sgt i32 %dim0, 1
  br i1 %cmp722, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %idx.ext = sext i32 %dim1 to i64
  %wide.trip.count = zext nneg i32 %dim0 to i64
  %1 = add nsw i64 %wide.trip.count, -1
  %2 = add nsw i64 %wide.trip.count, -2
  %xtraiter = and i64 %1, 3
  %3 = icmp ult i64 %2, 3
  br i1 %3, label %for.end.loopexit.unr-lcssa, label %for.body.lr.ph.new

for.body.lr.ph.new:                               ; preds = %for.body.lr.ph
  %unroll_iter = and i64 %1, -4
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph.new
  %indvars.iv = phi i64 [ 1, %for.body.lr.ph.new ], [ %indvars.iv.next.3, %for.body ]
  %niter = phi i64 [ 0, %for.body.lr.ph.new ], [ %niter.next.3, %for.body ]
  %4 = load ptr, ptr %array5D, align 8
  %5 = getelementptr ptr, ptr %4, i64 %indvars.iv
  %arrayidx = getelementptr i8, ptr %5, i64 -8
  %6 = load ptr, ptr %arrayidx, align 8
  %add.ptr = getelementptr inbounds ptr, ptr %6, i64 %idx.ext
  store ptr %add.ptr, ptr %5, align 8
  %7 = load ptr, ptr %array5D, align 8
  %8 = getelementptr ptr, ptr %7, i64 %indvars.iv
  %9 = getelementptr i8, ptr %8, i64 8
  %10 = load ptr, ptr %8, align 8
  %add.ptr.1 = getelementptr inbounds ptr, ptr %10, i64 %idx.ext
  store ptr %add.ptr.1, ptr %9, align 8
  %11 = load ptr, ptr %array5D, align 8
  %12 = getelementptr ptr, ptr %11, i64 %indvars.iv
  %13 = getelementptr i8, ptr %12, i64 16
  %arrayidx.2 = getelementptr i8, ptr %12, i64 8
  %14 = load ptr, ptr %arrayidx.2, align 8
  %add.ptr.2 = getelementptr inbounds ptr, ptr %14, i64 %idx.ext
  store ptr %add.ptr.2, ptr %13, align 8
  %15 = load ptr, ptr %array5D, align 8
  %16 = getelementptr ptr, ptr %15, i64 %indvars.iv
  %17 = getelementptr i8, ptr %16, i64 24
  %arrayidx.3 = getelementptr i8, ptr %16, i64 16
  %18 = load ptr, ptr %arrayidx.3, align 8
  %add.ptr.3 = getelementptr inbounds ptr, ptr %18, i64 %idx.ext
  store ptr %add.ptr.3, ptr %17, align 8
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4
  %niter.next.3 = add i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %for.end.loopexit.unr-lcssa, label %for.body

for.end.loopexit.unr-lcssa:                       ; preds = %for.body, %for.body.lr.ph
  %indvars.iv.unr = phi i64 [ 1, %for.body.lr.ph ], [ %indvars.iv.next.3, %for.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.end, label %for.body.epil

for.body.epil:                                    ; preds = %for.end.loopexit.unr-lcssa, %for.body.epil
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %for.body.epil ], [ %indvars.iv.unr, %for.end.loopexit.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %for.body.epil ], [ 0, %for.end.loopexit.unr-lcssa ]
  %19 = load ptr, ptr %array5D, align 8
  %20 = getelementptr ptr, ptr %19, i64 %indvars.iv.epil
  %arrayidx.epil = getelementptr i8, ptr %20, i64 -8
  %21 = load ptr, ptr %arrayidx.epil, align 8
  %add.ptr.epil = getelementptr inbounds ptr, ptr %21, i64 %idx.ext
  store ptr %add.ptr.epil, ptr %20, align 8
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %for.end, label %for.body.epil, !llvm.loop !66

for.end:                                          ; preds = %for.end.loopexit.unr-lcssa, %for.body.epil, %if.end
  %conv1 = trunc i64 %mul to i32
  %add = add nsw i32 %call6, %conv1
  ret i32 %add
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @get_mem6Dshort(ptr nocapture noundef %array6D, i32 noundef %dim0, i32 noundef %dim1, i32 noundef %dim2, i32 noundef %dim3, i32 noundef %dim4, i32 noundef %dim5) local_unnamed_addr #0 {
entry:
  %conv = sext i32 %dim0 to i64
  %mul = shl nsw i64 %conv, 3
  %call = tail call noalias ptr @malloc(i64 noundef %mul) #8
  store ptr %call, ptr %array6D, align 8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call.i = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.89) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  %.pre = load ptr, ptr %array6D, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %0 = phi ptr [ %.pre, %if.then ], [ %call, %entry ]
  %mul5 = mul nsw i32 %dim1, %dim0
  %conv.i = sext i32 %mul5 to i64
  %mul.i = shl nsw i64 %conv.i, 3
  %call.i22 = tail call noalias ptr @malloc(i64 noundef %mul.i) #8
  store ptr %call.i22, ptr %0, align 8
  %cmp.i = icmp eq ptr %call.i22, null
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end
  %call.i.i = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.88) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  %.pre.i = load ptr, ptr %0, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end
  %1 = phi ptr [ %.pre.i, %if.then.i ], [ %call.i22, %if.end ]
  %mul5.i = mul nsw i32 %mul5, %dim2
  %call6.i = tail call i32 @get_mem4Dshort(ptr noundef %1, i32 noundef %mul5.i, i32 noundef %dim3, i32 noundef %dim4, i32 noundef %dim5)
  %cmp722.i = icmp sgt i32 %mul5, 1
  br i1 %cmp722.i, label %for.body.lr.ph.i, label %get_mem5Dshort.exit

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %idx.ext.i = sext i32 %dim2 to i64
  %wide.trip.count.i = zext nneg i32 %mul5 to i64
  %2 = add nsw i64 %wide.trip.count.i, -1
  %3 = add nsw i64 %wide.trip.count.i, -2
  %xtraiter = and i64 %2, 3
  %4 = icmp ult i64 %3, 3
  br i1 %4, label %get_mem5Dshort.exit.loopexit.unr-lcssa, label %for.body.lr.ph.i.new

for.body.lr.ph.i.new:                             ; preds = %for.body.lr.ph.i
  %unroll_iter = and i64 %2, -4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %for.body.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 1, %for.body.lr.ph.i.new ], [ %indvars.iv.next.i.3, %for.body.i ]
  %niter = phi i64 [ 0, %for.body.lr.ph.i.new ], [ %niter.next.3, %for.body.i ]
  %5 = load ptr, ptr %0, align 8
  %6 = getelementptr ptr, ptr %5, i64 %indvars.iv.i
  %arrayidx.i = getelementptr i8, ptr %6, i64 -8
  %7 = load ptr, ptr %arrayidx.i, align 8
  %add.ptr.i = getelementptr inbounds ptr, ptr %7, i64 %idx.ext.i
  store ptr %add.ptr.i, ptr %6, align 8
  %8 = load ptr, ptr %0, align 8
  %9 = getelementptr ptr, ptr %8, i64 %indvars.iv.i
  %10 = getelementptr i8, ptr %9, i64 8
  %11 = load ptr, ptr %9, align 8
  %add.ptr.i.1 = getelementptr inbounds ptr, ptr %11, i64 %idx.ext.i
  store ptr %add.ptr.i.1, ptr %10, align 8
  %12 = load ptr, ptr %0, align 8
  %13 = getelementptr ptr, ptr %12, i64 %indvars.iv.i
  %14 = getelementptr i8, ptr %13, i64 16
  %arrayidx.i.2 = getelementptr i8, ptr %13, i64 8
  %15 = load ptr, ptr %arrayidx.i.2, align 8
  %add.ptr.i.2 = getelementptr inbounds ptr, ptr %15, i64 %idx.ext.i
  store ptr %add.ptr.i.2, ptr %14, align 8
  %16 = load ptr, ptr %0, align 8
  %17 = getelementptr ptr, ptr %16, i64 %indvars.iv.i
  %18 = getelementptr i8, ptr %17, i64 24
  %arrayidx.i.3 = getelementptr i8, ptr %17, i64 16
  %19 = load ptr, ptr %arrayidx.i.3, align 8
  %add.ptr.i.3 = getelementptr inbounds ptr, ptr %19, i64 %idx.ext.i
  store ptr %add.ptr.i.3, ptr %18, align 8
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4
  %niter.next.3 = add i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %get_mem5Dshort.exit.loopexit.unr-lcssa, label %for.body.i

get_mem5Dshort.exit.loopexit.unr-lcssa:           ; preds = %for.body.i, %for.body.lr.ph.i
  %indvars.iv.i.unr = phi i64 [ 1, %for.body.lr.ph.i ], [ %indvars.iv.next.i.3, %for.body.i ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %get_mem5Dshort.exit, label %for.body.i.epil

for.body.i.epil:                                  ; preds = %get_mem5Dshort.exit.loopexit.unr-lcssa, %for.body.i.epil
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.next.i.epil, %for.body.i.epil ], [ %indvars.iv.i.unr, %get_mem5Dshort.exit.loopexit.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %for.body.i.epil ], [ 0, %get_mem5Dshort.exit.loopexit.unr-lcssa ]
  %20 = load ptr, ptr %0, align 8
  %21 = getelementptr ptr, ptr %20, i64 %indvars.iv.i.epil
  %arrayidx.i.epil = getelementptr i8, ptr %21, i64 -8
  %22 = load ptr, ptr %arrayidx.i.epil, align 8
  %add.ptr.i.epil = getelementptr inbounds ptr, ptr %22, i64 %idx.ext.i
  store ptr %add.ptr.i.epil, ptr %21, align 8
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %get_mem5Dshort.exit, label %for.body.i.epil, !llvm.loop !67

get_mem5Dshort.exit:                              ; preds = %get_mem5Dshort.exit.loopexit.unr-lcssa, %for.body.i.epil, %if.end.i
  %cmp723 = icmp sgt i32 %dim0, 1
  br i1 %cmp723, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %get_mem5Dshort.exit
  %idx.ext = sext i32 %dim1 to i64
  %wide.trip.count = zext nneg i32 %dim0 to i64
  %23 = add nsw i64 %wide.trip.count, -1
  %24 = add nsw i64 %wide.trip.count, -2
  %xtraiter26 = and i64 %23, 3
  %25 = icmp ult i64 %24, 3
  br i1 %25, label %for.end.loopexit.unr-lcssa, label %for.body.lr.ph.new

for.body.lr.ph.new:                               ; preds = %for.body.lr.ph
  %unroll_iter29 = and i64 %23, -4
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph.new
  %indvars.iv = phi i64 [ 1, %for.body.lr.ph.new ], [ %indvars.iv.next.3, %for.body ]
  %niter30 = phi i64 [ 0, %for.body.lr.ph.new ], [ %niter30.next.3, %for.body ]
  %26 = load ptr, ptr %array6D, align 8
  %27 = getelementptr ptr, ptr %26, i64 %indvars.iv
  %arrayidx = getelementptr i8, ptr %27, i64 -8
  %28 = load ptr, ptr %arrayidx, align 8
  %add.ptr = getelementptr inbounds ptr, ptr %28, i64 %idx.ext
  store ptr %add.ptr, ptr %27, align 8
  %29 = load ptr, ptr %array6D, align 8
  %30 = getelementptr ptr, ptr %29, i64 %indvars.iv
  %31 = getelementptr i8, ptr %30, i64 8
  %32 = load ptr, ptr %30, align 8
  %add.ptr.1 = getelementptr inbounds ptr, ptr %32, i64 %idx.ext
  store ptr %add.ptr.1, ptr %31, align 8
  %33 = load ptr, ptr %array6D, align 8
  %34 = getelementptr ptr, ptr %33, i64 %indvars.iv
  %35 = getelementptr i8, ptr %34, i64 16
  %arrayidx.2 = getelementptr i8, ptr %34, i64 8
  %36 = load ptr, ptr %arrayidx.2, align 8
  %add.ptr.2 = getelementptr inbounds ptr, ptr %36, i64 %idx.ext
  store ptr %add.ptr.2, ptr %35, align 8
  %37 = load ptr, ptr %array6D, align 8
  %38 = getelementptr ptr, ptr %37, i64 %indvars.iv
  %39 = getelementptr i8, ptr %38, i64 24
  %arrayidx.3 = getelementptr i8, ptr %38, i64 16
  %40 = load ptr, ptr %arrayidx.3, align 8
  %add.ptr.3 = getelementptr inbounds ptr, ptr %40, i64 %idx.ext
  store ptr %add.ptr.3, ptr %39, align 8
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4
  %niter30.next.3 = add i64 %niter30, 4
  %niter30.ncmp.3 = icmp eq i64 %niter30.next.3, %unroll_iter29
  br i1 %niter30.ncmp.3, label %for.end.loopexit.unr-lcssa, label %for.body

for.end.loopexit.unr-lcssa:                       ; preds = %for.body, %for.body.lr.ph
  %indvars.iv.unr = phi i64 [ 1, %for.body.lr.ph ], [ %indvars.iv.next.3, %for.body ]
  %lcmp.mod28.not = icmp eq i64 %xtraiter26, 0
  br i1 %lcmp.mod28.not, label %for.end, label %for.body.epil

for.body.epil:                                    ; preds = %for.end.loopexit.unr-lcssa, %for.body.epil
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %for.body.epil ], [ %indvars.iv.unr, %for.end.loopexit.unr-lcssa ]
  %epil.iter27 = phi i64 [ %epil.iter27.next, %for.body.epil ], [ 0, %for.end.loopexit.unr-lcssa ]
  %41 = load ptr, ptr %array6D, align 8
  %42 = getelementptr ptr, ptr %41, i64 %indvars.iv.epil
  %arrayidx.epil = getelementptr i8, ptr %42, i64 -8
  %43 = load ptr, ptr %arrayidx.epil, align 8
  %add.ptr.epil = getelementptr inbounds ptr, ptr %43, i64 %idx.ext
  store ptr %add.ptr.epil, ptr %42, align 8
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter27.next = add i64 %epil.iter27, 1
  %epil.iter27.cmp.not = icmp eq i64 %epil.iter27.next, %xtraiter26
  br i1 %epil.iter27.cmp.not, label %for.end, label %for.body.epil, !llvm.loop !68

for.end:                                          ; preds = %for.end.loopexit.unr-lcssa, %for.body.epil, %get_mem5Dshort.exit
  %conv1.i = trunc i64 %mul.i to i32
  %conv1 = trunc i64 %mul to i32
  %add.i = add i32 %conv1.i, %conv1
  %add = add i32 %add.i, %call6.i
  ret i32 %add
}

; Function Attrs: nounwind uwtable
define dso_local i32 @get_mem7Dshort(ptr nocapture noundef %array7D, i32 noundef %dim0, i32 noundef %dim1, i32 noundef %dim2, i32 noundef %dim3, i32 noundef %dim4, i32 noundef %dim5, i32 noundef %dim6) local_unnamed_addr #0 {
entry:
  %conv = sext i32 %dim0 to i64
  %mul = shl nsw i64 %conv, 3
  %call = tail call noalias ptr @malloc(i64 noundef %mul) #8
  store ptr %call, ptr %array7D, align 8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call.i = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.90) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  %.pre = load ptr, ptr %array7D, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %0 = phi ptr [ %.pre, %if.then ], [ %call, %entry ]
  %mul5 = mul nsw i32 %dim1, %dim0
  %call6 = tail call i32 @get_mem6Dshort(ptr noundef %0, i32 noundef %mul5, i32 noundef %dim2, i32 noundef %dim3, i32 noundef %dim4, i32 noundef %dim5, i32 noundef %dim6)
  %cmp722 = icmp sgt i32 %dim0, 1
  br i1 %cmp722, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %idx.ext = sext i32 %dim1 to i64
  %wide.trip.count = zext nneg i32 %dim0 to i64
  %1 = add nsw i64 %wide.trip.count, -1
  %2 = add nsw i64 %wide.trip.count, -2
  %xtraiter = and i64 %1, 3
  %3 = icmp ult i64 %2, 3
  br i1 %3, label %for.end.loopexit.unr-lcssa, label %for.body.lr.ph.new

for.body.lr.ph.new:                               ; preds = %for.body.lr.ph
  %unroll_iter = and i64 %1, -4
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph.new
  %indvars.iv = phi i64 [ 1, %for.body.lr.ph.new ], [ %indvars.iv.next.3, %for.body ]
  %niter = phi i64 [ 0, %for.body.lr.ph.new ], [ %niter.next.3, %for.body ]
  %4 = load ptr, ptr %array7D, align 8
  %5 = getelementptr ptr, ptr %4, i64 %indvars.iv
  %arrayidx = getelementptr i8, ptr %5, i64 -8
  %6 = load ptr, ptr %arrayidx, align 8
  %add.ptr = getelementptr inbounds ptr, ptr %6, i64 %idx.ext
  store ptr %add.ptr, ptr %5, align 8
  %7 = load ptr, ptr %array7D, align 8
  %8 = getelementptr ptr, ptr %7, i64 %indvars.iv
  %9 = getelementptr i8, ptr %8, i64 8
  %10 = load ptr, ptr %8, align 8
  %add.ptr.1 = getelementptr inbounds ptr, ptr %10, i64 %idx.ext
  store ptr %add.ptr.1, ptr %9, align 8
  %11 = load ptr, ptr %array7D, align 8
  %12 = getelementptr ptr, ptr %11, i64 %indvars.iv
  %13 = getelementptr i8, ptr %12, i64 16
  %arrayidx.2 = getelementptr i8, ptr %12, i64 8
  %14 = load ptr, ptr %arrayidx.2, align 8
  %add.ptr.2 = getelementptr inbounds ptr, ptr %14, i64 %idx.ext
  store ptr %add.ptr.2, ptr %13, align 8
  %15 = load ptr, ptr %array7D, align 8
  %16 = getelementptr ptr, ptr %15, i64 %indvars.iv
  %17 = getelementptr i8, ptr %16, i64 24
  %arrayidx.3 = getelementptr i8, ptr %16, i64 16
  %18 = load ptr, ptr %arrayidx.3, align 8
  %add.ptr.3 = getelementptr inbounds ptr, ptr %18, i64 %idx.ext
  store ptr %add.ptr.3, ptr %17, align 8
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4
  %niter.next.3 = add i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %for.end.loopexit.unr-lcssa, label %for.body

for.end.loopexit.unr-lcssa:                       ; preds = %for.body, %for.body.lr.ph
  %indvars.iv.unr = phi i64 [ 1, %for.body.lr.ph ], [ %indvars.iv.next.3, %for.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.end, label %for.body.epil

for.body.epil:                                    ; preds = %for.end.loopexit.unr-lcssa, %for.body.epil
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %for.body.epil ], [ %indvars.iv.unr, %for.end.loopexit.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %for.body.epil ], [ 0, %for.end.loopexit.unr-lcssa ]
  %19 = load ptr, ptr %array7D, align 8
  %20 = getelementptr ptr, ptr %19, i64 %indvars.iv.epil
  %arrayidx.epil = getelementptr i8, ptr %20, i64 -8
  %21 = load ptr, ptr %arrayidx.epil, align 8
  %add.ptr.epil = getelementptr inbounds ptr, ptr %21, i64 %idx.ext
  store ptr %add.ptr.epil, ptr %20, align 8
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %for.end, label %for.body.epil, !llvm.loop !69

for.end:                                          ; preds = %for.end.loopexit.unr-lcssa, %for.body.epil, %if.end
  %conv1 = trunc i64 %mul to i32
  %add = add nsw i32 %call6, %conv1
  ret i32 %add
}

; Function Attrs: nounwind uwtable
define dso_local void @free_mem2Duint16(ptr noundef %array2D) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq ptr %array2D, null
  br i1 %tobool.not, label %if.else3, label %if.then

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %array2D, align 8
  %tobool1.not = icmp eq ptr %0, null
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.then
  tail call void @free(ptr noundef nonnull %0) #9
  br label %if.end

if.else:                                          ; preds = %if.then
  tail call void @error(ptr noundef nonnull @.str.91, i32 noundef 100) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  tail call void @free(ptr noundef nonnull %array2D) #9
  br label %if.end4

if.else3:                                         ; preds = %entry
  tail call void @error(ptr noundef nonnull @.str.91, i32 noundef 100) #9
  br label %if.end4

if.end4:                                          ; preds = %if.else3, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @free_mem3Duint16(ptr noundef %array3D) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq ptr %array3D, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %array3D, align 8
  %tobool.not.i = icmp eq ptr %0, null
  br i1 %tobool.not.i, label %if.else3.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  %1 = load ptr, ptr %0, align 8
  %tobool1.not.i = icmp eq ptr %1, null
  br i1 %tobool1.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.then.i
  tail call void @free(ptr noundef nonnull %1) #9
  br label %if.end.i

if.else.i:                                        ; preds = %if.then.i
  tail call void @error(ptr noundef nonnull @.str.91, i32 noundef 100) #9
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then2.i
  tail call void @free(ptr noundef nonnull %0) #9
  br label %free_mem2Duint16.exit

if.else3.i:                                       ; preds = %if.then
  tail call void @error(ptr noundef nonnull @.str.91, i32 noundef 100) #9
  br label %free_mem2Duint16.exit

free_mem2Duint16.exit:                            ; preds = %if.end.i, %if.else3.i
  tail call void @free(ptr noundef nonnull %array3D) #9
  br label %if.end

if.else:                                          ; preds = %entry
  tail call void @error(ptr noundef nonnull @.str.92, i32 noundef 100) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %free_mem2Duint16.exit
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @free_mem4Duint16(ptr noundef %array4D) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq ptr %array4D, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %array4D, align 8
  %tobool.not.i = icmp eq ptr %0, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  %1 = load ptr, ptr %0, align 8
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %if.else3.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then.i
  %2 = load ptr, ptr %1, align 8
  %tobool1.not.i.i = icmp eq ptr %2, null
  br i1 %tobool1.not.i.i, label %if.else.i.i, label %if.then2.i.i

if.then2.i.i:                                     ; preds = %if.then.i.i
  tail call void @free(ptr noundef nonnull %2) #9
  br label %if.end.i.i

if.else.i.i:                                      ; preds = %if.then.i.i
  tail call void @error(ptr noundef nonnull @.str.91, i32 noundef 100) #9
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else.i.i, %if.then2.i.i
  tail call void @free(ptr noundef nonnull %1) #9
  br label %free_mem2Duint16.exit.i

if.else3.i.i:                                     ; preds = %if.then.i
  tail call void @error(ptr noundef nonnull @.str.91, i32 noundef 100) #9
  br label %free_mem2Duint16.exit.i

free_mem2Duint16.exit.i:                          ; preds = %if.else3.i.i, %if.end.i.i
  tail call void @free(ptr noundef nonnull %0) #9
  br label %free_mem3Duint16.exit

if.else.i:                                        ; preds = %if.then
  tail call void @error(ptr noundef nonnull @.str.92, i32 noundef 100) #9
  br label %free_mem3Duint16.exit

free_mem3Duint16.exit:                            ; preds = %free_mem2Duint16.exit.i, %if.else.i
  tail call void @free(ptr noundef nonnull %array4D) #9
  br label %if.end

if.else:                                          ; preds = %entry
  tail call void @error(ptr noundef nonnull @.str.93, i32 noundef 100) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %free_mem3Duint16.exit
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @free_mem2Dshort(ptr noundef %array2D) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq ptr %array2D, null
  br i1 %tobool.not, label %if.else3, label %if.then

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %array2D, align 8
  %tobool1.not = icmp eq ptr %0, null
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.then
  tail call void @free(ptr noundef nonnull %0) #9
  br label %if.end

if.else:                                          ; preds = %if.then
  tail call void @error(ptr noundef nonnull @.str.94, i32 noundef 100) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  tail call void @free(ptr noundef nonnull %array2D) #9
  br label %if.end4

if.else3:                                         ; preds = %entry
  tail call void @error(ptr noundef nonnull @.str.94, i32 noundef 100) #9
  br label %if.end4

if.end4:                                          ; preds = %if.else3, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @free_mem3Dshort(ptr noundef %array3D) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq ptr %array3D, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %array3D, align 8
  %tobool.not.i = icmp eq ptr %0, null
  br i1 %tobool.not.i, label %if.else3.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  %1 = load ptr, ptr %0, align 8
  %tobool1.not.i = icmp eq ptr %1, null
  br i1 %tobool1.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.then.i
  tail call void @free(ptr noundef nonnull %1) #9
  br label %if.end.i

if.else.i:                                        ; preds = %if.then.i
  tail call void @error(ptr noundef nonnull @.str.94, i32 noundef 100) #9
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then2.i
  tail call void @free(ptr noundef nonnull %0) #9
  br label %free_mem2Dshort.exit

if.else3.i:                                       ; preds = %if.then
  tail call void @error(ptr noundef nonnull @.str.94, i32 noundef 100) #9
  br label %free_mem2Dshort.exit

free_mem2Dshort.exit:                             ; preds = %if.end.i, %if.else3.i
  tail call void @free(ptr noundef nonnull %array3D) #9
  br label %if.end

if.else:                                          ; preds = %entry
  tail call void @error(ptr noundef nonnull @.str.95, i32 noundef 100) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %free_mem2Dshort.exit
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @free_mem4Dshort(ptr noundef %array4D) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq ptr %array4D, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %array4D, align 8
  %tobool.not.i = icmp eq ptr %0, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  %1 = load ptr, ptr %0, align 8
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %if.else3.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then.i
  %2 = load ptr, ptr %1, align 8
  %tobool1.not.i.i = icmp eq ptr %2, null
  br i1 %tobool1.not.i.i, label %if.else.i.i, label %if.then2.i.i

if.then2.i.i:                                     ; preds = %if.then.i.i
  tail call void @free(ptr noundef nonnull %2) #9
  br label %if.end.i.i

if.else.i.i:                                      ; preds = %if.then.i.i
  tail call void @error(ptr noundef nonnull @.str.94, i32 noundef 100) #9
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else.i.i, %if.then2.i.i
  tail call void @free(ptr noundef nonnull %1) #9
  br label %free_mem2Dshort.exit.i

if.else3.i.i:                                     ; preds = %if.then.i
  tail call void @error(ptr noundef nonnull @.str.94, i32 noundef 100) #9
  br label %free_mem2Dshort.exit.i

free_mem2Dshort.exit.i:                           ; preds = %if.else3.i.i, %if.end.i.i
  tail call void @free(ptr noundef nonnull %0) #9
  br label %free_mem3Dshort.exit

if.else.i:                                        ; preds = %if.then
  tail call void @error(ptr noundef nonnull @.str.95, i32 noundef 100) #9
  br label %free_mem3Dshort.exit

free_mem3Dshort.exit:                             ; preds = %free_mem2Dshort.exit.i, %if.else.i
  tail call void @free(ptr noundef nonnull %array4D) #9
  br label %if.end

if.else:                                          ; preds = %entry
  tail call void @error(ptr noundef nonnull @.str.96, i32 noundef 100) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %free_mem3Dshort.exit
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @free_mem5Dshort(ptr noundef %array5D) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq ptr %array5D, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %array5D, align 8
  tail call void @free_mem4Dshort(ptr noundef %0)
  tail call void @free(ptr noundef nonnull %array5D) #9
  br label %if.end

if.else:                                          ; preds = %entry
  tail call void @error(ptr noundef nonnull @.str.97, i32 noundef 100) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @free_mem6Dshort(ptr noundef %array6D) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq ptr %array6D, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %array6D, align 8
  %tobool.not.i = icmp eq ptr %0, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  %1 = load ptr, ptr %0, align 8
  tail call void @free_mem4Dshort(ptr noundef %1)
  tail call void @free(ptr noundef nonnull %0) #9
  br label %free_mem5Dshort.exit

if.else.i:                                        ; preds = %if.then
  tail call void @error(ptr noundef nonnull @.str.97, i32 noundef 100) #9
  br label %free_mem5Dshort.exit

free_mem5Dshort.exit:                             ; preds = %if.then.i, %if.else.i
  tail call void @free(ptr noundef nonnull %array6D) #9
  br label %if.end

if.else:                                          ; preds = %entry
  tail call void @error(ptr noundef nonnull @.str.98, i32 noundef 100) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %free_mem5Dshort.exit
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @free_mem7Dshort(ptr noundef %array7D) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq ptr %array7D, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %array7D, align 8
  %tobool.not.i = icmp eq ptr %0, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  %1 = load ptr, ptr %0, align 8
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then.i
  %2 = load ptr, ptr %1, align 8
  tail call void @free_mem4Dshort(ptr noundef %2)
  tail call void @free(ptr noundef nonnull %1) #9
  br label %free_mem5Dshort.exit.i

if.else.i.i:                                      ; preds = %if.then.i
  tail call void @error(ptr noundef nonnull @.str.97, i32 noundef 100) #9
  br label %free_mem5Dshort.exit.i

free_mem5Dshort.exit.i:                           ; preds = %if.else.i.i, %if.then.i.i
  tail call void @free(ptr noundef nonnull %0) #9
  br label %free_mem6Dshort.exit

if.else.i:                                        ; preds = %if.then
  tail call void @error(ptr noundef nonnull @.str.98, i32 noundef 100) #9
  br label %free_mem6Dshort.exit

free_mem6Dshort.exit:                             ; preds = %free_mem5Dshort.exit.i, %if.else.i
  tail call void @free(ptr noundef nonnull %array7D) #9
  br label %if.end

if.else:                                          ; preds = %entry
  tail call void @error(ptr noundef nonnull @.str.99, i32 noundef 100) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %free_mem6Dshort.exit
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @get_mem2Ddouble(ptr nocapture noundef %array2D, i32 noundef %dim0, i32 noundef %dim1) local_unnamed_addr #0 {
entry:
  %conv = sext i32 %dim0 to i64
  %mul = shl nsw i64 %conv, 3
  %call = tail call noalias ptr @malloc(i64 noundef %mul) #8
  store ptr %call, ptr %array2D, align 8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call.i = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.100) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  %.pre = load ptr, ptr %array2D, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %0 = phi ptr [ %.pre, %if.then ], [ %call, %entry ]
  %mul2 = mul nsw i32 %dim1, %dim0
  %conv3 = sext i32 %mul2 to i64
  %call4 = tail call noalias ptr @calloc(i64 noundef %conv3, i64 noundef 8) #10
  store ptr %call4, ptr %0, align 8
  %cmp5 = icmp eq ptr %call4, null
  br i1 %cmp5, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  %call.i30 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.100) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end
  %cmp931 = icmp sgt i32 %dim0, 1
  br i1 %cmp931, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end8
  %idx.ext = sext i32 %dim1 to i64
  %wide.trip.count = zext nneg i32 %dim0 to i64
  %1 = add nsw i64 %wide.trip.count, -1
  %2 = add nsw i64 %wide.trip.count, -2
  %xtraiter = and i64 %1, 3
  %3 = icmp ult i64 %2, 3
  br i1 %3, label %for.end.loopexit.unr-lcssa, label %for.body.lr.ph.new

for.body.lr.ph.new:                               ; preds = %for.body.lr.ph
  %unroll_iter = and i64 %1, -4
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph.new
  %indvars.iv = phi i64 [ 1, %for.body.lr.ph.new ], [ %indvars.iv.next.3, %for.body ]
  %niter = phi i64 [ 0, %for.body.lr.ph.new ], [ %niter.next.3, %for.body ]
  %4 = load ptr, ptr %array2D, align 8
  %5 = getelementptr ptr, ptr %4, i64 %indvars.iv
  %arrayidx11 = getelementptr i8, ptr %5, i64 -8
  %6 = load ptr, ptr %arrayidx11, align 8
  %add.ptr = getelementptr inbounds double, ptr %6, i64 %idx.ext
  store ptr %add.ptr, ptr %5, align 8
  %7 = load ptr, ptr %array2D, align 8
  %8 = getelementptr ptr, ptr %7, i64 %indvars.iv
  %9 = getelementptr i8, ptr %8, i64 8
  %10 = load ptr, ptr %8, align 8
  %add.ptr.1 = getelementptr inbounds double, ptr %10, i64 %idx.ext
  store ptr %add.ptr.1, ptr %9, align 8
  %11 = load ptr, ptr %array2D, align 8
  %12 = getelementptr ptr, ptr %11, i64 %indvars.iv
  %13 = getelementptr i8, ptr %12, i64 16
  %arrayidx11.2 = getelementptr i8, ptr %12, i64 8
  %14 = load ptr, ptr %arrayidx11.2, align 8
  %add.ptr.2 = getelementptr inbounds double, ptr %14, i64 %idx.ext
  store ptr %add.ptr.2, ptr %13, align 8
  %15 = load ptr, ptr %array2D, align 8
  %16 = getelementptr ptr, ptr %15, i64 %indvars.iv
  %17 = getelementptr i8, ptr %16, i64 24
  %arrayidx11.3 = getelementptr i8, ptr %16, i64 16
  %18 = load ptr, ptr %arrayidx11.3, align 8
  %add.ptr.3 = getelementptr inbounds double, ptr %18, i64 %idx.ext
  store ptr %add.ptr.3, ptr %17, align 8
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4
  %niter.next.3 = add i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %for.end.loopexit.unr-lcssa, label %for.body

for.end.loopexit.unr-lcssa:                       ; preds = %for.body, %for.body.lr.ph
  %indvars.iv.unr = phi i64 [ 1, %for.body.lr.ph ], [ %indvars.iv.next.3, %for.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.end, label %for.body.epil

for.body.epil:                                    ; preds = %for.end.loopexit.unr-lcssa, %for.body.epil
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %for.body.epil ], [ %indvars.iv.unr, %for.end.loopexit.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %for.body.epil ], [ 0, %for.end.loopexit.unr-lcssa ]
  %19 = load ptr, ptr %array2D, align 8
  %20 = getelementptr ptr, ptr %19, i64 %indvars.iv.epil
  %arrayidx11.epil = getelementptr i8, ptr %20, i64 -8
  %21 = load ptr, ptr %arrayidx11.epil, align 8
  %add.ptr.epil = getelementptr inbounds double, ptr %21, i64 %idx.ext
  store ptr %add.ptr.epil, ptr %20, align 8
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %for.end, label %for.body.epil, !llvm.loop !70

for.end:                                          ; preds = %for.end.loopexit.unr-lcssa, %for.body.epil, %if.end8
  %mul16 = shl i32 %dim1, 3
  %add = add i32 %mul16, 8
  %mul17 = mul i32 %add, %dim0
  ret i32 %mul17
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @get_mem1Dodouble(ptr nocapture noundef %array1D, i32 noundef %dim0, i32 noundef %offset) local_unnamed_addr #0 {
entry:
  %conv = sext i32 %dim0 to i64
  %mul = shl nsw i64 %conv, 3
  %call = tail call noalias ptr @malloc(i64 noundef %mul) #8
  store ptr %call, ptr %array1D, align 8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call.i = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.101) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  %.pre = load ptr, ptr %array1D, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %0 = phi ptr [ %.pre, %if.then ], [ %call, %entry ]
  %idx.ext = sext i32 %offset to i64
  %add.ptr = getelementptr inbounds double, ptr %0, i64 %idx.ext
  store ptr %add.ptr, ptr %array1D, align 8
  %conv4 = trunc i64 %mul to i32
  ret i32 %conv4
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @get_mem2Dodouble(ptr nocapture noundef %array2D, i32 noundef %dim0, i32 noundef %dim1, i32 noundef %offset) local_unnamed_addr #0 {
entry:
  %conv = sext i32 %dim0 to i64
  %mul = shl nsw i64 %conv, 3
  %call = tail call noalias ptr @malloc(i64 noundef %mul) #8
  store ptr %call, ptr %array2D, align 8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call.i = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.102) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  %.pre = load ptr, ptr %array2D, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %0 = phi ptr [ %.pre, %if.then ], [ %call, %entry ]
  %mul2 = mul nsw i32 %dim1, %dim0
  %conv3 = sext i32 %mul2 to i64
  %call4 = tail call noalias ptr @calloc(i64 noundef %conv3, i64 noundef 8) #10
  store ptr %call4, ptr %0, align 8
  %cmp5 = icmp eq ptr %call4, null
  br i1 %cmp5, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  %call.i34 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.102) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end
  %1 = load ptr, ptr %array2D, align 8
  %2 = load ptr, ptr %1, align 8
  %idx.ext = sext i32 %offset to i64
  %add.ptr = getelementptr inbounds double, ptr %2, i64 %idx.ext
  store ptr %add.ptr, ptr %1, align 8
  %cmp1035 = icmp sgt i32 %dim0, 1
  br i1 %cmp1035, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end8
  %idx.ext13 = sext i32 %dim1 to i64
  %wide.trip.count = zext nneg i32 %dim0 to i64
  %3 = add nsw i64 %wide.trip.count, -1
  %4 = add nsw i64 %wide.trip.count, -2
  %xtraiter = and i64 %3, 3
  %5 = icmp ult i64 %4, 3
  br i1 %5, label %for.end.loopexit.unr-lcssa, label %for.body.lr.ph.new

for.body.lr.ph.new:                               ; preds = %for.body.lr.ph
  %unroll_iter = and i64 %3, -4
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph.new
  %indvars.iv = phi i64 [ 1, %for.body.lr.ph.new ], [ %indvars.iv.next.3, %for.body ]
  %niter = phi i64 [ 0, %for.body.lr.ph.new ], [ %niter.next.3, %for.body ]
  %6 = load ptr, ptr %array2D, align 8
  %7 = getelementptr ptr, ptr %6, i64 %indvars.iv
  %arrayidx12 = getelementptr i8, ptr %7, i64 -8
  %8 = load ptr, ptr %arrayidx12, align 8
  %add.ptr14 = getelementptr inbounds double, ptr %8, i64 %idx.ext13
  store ptr %add.ptr14, ptr %7, align 8
  %9 = load ptr, ptr %array2D, align 8
  %10 = getelementptr ptr, ptr %9, i64 %indvars.iv
  %11 = getelementptr i8, ptr %10, i64 8
  %12 = load ptr, ptr %10, align 8
  %add.ptr14.1 = getelementptr inbounds double, ptr %12, i64 %idx.ext13
  store ptr %add.ptr14.1, ptr %11, align 8
  %13 = load ptr, ptr %array2D, align 8
  %14 = getelementptr ptr, ptr %13, i64 %indvars.iv
  %15 = getelementptr i8, ptr %14, i64 16
  %arrayidx12.2 = getelementptr i8, ptr %14, i64 8
  %16 = load ptr, ptr %arrayidx12.2, align 8
  %add.ptr14.2 = getelementptr inbounds double, ptr %16, i64 %idx.ext13
  store ptr %add.ptr14.2, ptr %15, align 8
  %17 = load ptr, ptr %array2D, align 8
  %18 = getelementptr ptr, ptr %17, i64 %indvars.iv
  %19 = getelementptr i8, ptr %18, i64 24
  %arrayidx12.3 = getelementptr i8, ptr %18, i64 16
  %20 = load ptr, ptr %arrayidx12.3, align 8
  %add.ptr14.3 = getelementptr inbounds double, ptr %20, i64 %idx.ext13
  store ptr %add.ptr14.3, ptr %19, align 8
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4
  %niter.next.3 = add i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %for.end.loopexit.unr-lcssa, label %for.body

for.end.loopexit.unr-lcssa:                       ; preds = %for.body, %for.body.lr.ph
  %indvars.iv.unr = phi i64 [ 1, %for.body.lr.ph ], [ %indvars.iv.next.3, %for.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.end, label %for.body.epil

for.body.epil:                                    ; preds = %for.end.loopexit.unr-lcssa, %for.body.epil
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %for.body.epil ], [ %indvars.iv.unr, %for.end.loopexit.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %for.body.epil ], [ 0, %for.end.loopexit.unr-lcssa ]
  %21 = load ptr, ptr %array2D, align 8
  %22 = getelementptr ptr, ptr %21, i64 %indvars.iv.epil
  %arrayidx12.epil = getelementptr i8, ptr %22, i64 -8
  %23 = load ptr, ptr %arrayidx12.epil, align 8
  %add.ptr14.epil = getelementptr inbounds double, ptr %23, i64 %idx.ext13
  store ptr %add.ptr14.epil, ptr %22, align 8
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %for.end, label %for.body.epil, !llvm.loop !71

for.end:                                          ; preds = %for.end.loopexit.unr-lcssa, %for.body.epil, %if.end8
  %mul19 = shl i32 %dim1, 3
  %add = add i32 %mul19, 8
  %mul20 = mul i32 %add, %dim0
  ret i32 %mul20
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @get_mem3Dodouble(ptr nocapture noundef %array3D, i32 noundef %dim0, i32 noundef %dim1, i32 noundef %dim2, i32 noundef %offset) local_unnamed_addr #0 {
entry:
  %conv = sext i32 %dim0 to i64
  %mul = shl nsw i64 %conv, 3
  %call = tail call noalias ptr @malloc(i64 noundef %mul) #8
  store ptr %call, ptr %array3D, align 8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call.i = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.103) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  %.pre = load ptr, ptr %array3D, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %0 = phi ptr [ %.pre, %if.then ], [ %call, %entry ]
  %mul2 = mul nsw i32 %dim1, %dim0
  %conv3 = sext i32 %mul2 to i64
  %call4 = tail call noalias ptr @calloc(i64 noundef %conv3, i64 noundef 8) #10
  store ptr %call4, ptr %0, align 8
  %cmp5 = icmp eq ptr %call4, null
  br i1 %cmp5, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  %call.i74 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.103) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end
  %1 = load ptr, ptr %array3D, align 8
  %2 = load ptr, ptr %1, align 8
  %idx.ext = sext i32 %offset to i64
  %add.ptr = getelementptr inbounds ptr, ptr %2, i64 %idx.ext
  store ptr %add.ptr, ptr %1, align 8
  %cmp1076 = icmp sgt i32 %dim0, 1
  br i1 %cmp1076, label %for.body.lr.ph, label %for.cond17.preheader

for.body.lr.ph:                                   ; preds = %if.end8
  %idx.ext13 = sext i32 %dim1 to i64
  %wide.trip.count = zext nneg i32 %dim0 to i64
  %3 = add nsw i64 %wide.trip.count, -1
  %4 = add nsw i64 %wide.trip.count, -2
  %xtraiter = and i64 %3, 3
  %5 = icmp ult i64 %4, 3
  br i1 %5, label %for.cond17.preheader.loopexit.unr-lcssa, label %for.body.lr.ph.new

for.body.lr.ph.new:                               ; preds = %for.body.lr.ph
  %unroll_iter = and i64 %3, -4
  br label %for.body

for.cond17.preheader.loopexit.unr-lcssa:          ; preds = %for.body, %for.body.lr.ph
  %indvars.iv.unr = phi i64 [ 1, %for.body.lr.ph ], [ %indvars.iv.next.3, %for.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.cond17.preheader, label %for.body.epil

for.body.epil:                                    ; preds = %for.cond17.preheader.loopexit.unr-lcssa, %for.body.epil
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %for.body.epil ], [ %indvars.iv.unr, %for.cond17.preheader.loopexit.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %for.body.epil ], [ 0, %for.cond17.preheader.loopexit.unr-lcssa ]
  %6 = load ptr, ptr %array3D, align 8
  %7 = getelementptr ptr, ptr %6, i64 %indvars.iv.epil
  %arrayidx12.epil = getelementptr i8, ptr %7, i64 -8
  %8 = load ptr, ptr %arrayidx12.epil, align 8
  %add.ptr14.epil = getelementptr inbounds ptr, ptr %8, i64 %idx.ext13
  store ptr %add.ptr14.epil, ptr %7, align 8
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %for.cond17.preheader, label %for.body.epil, !llvm.loop !72

for.cond17.preheader:                             ; preds = %for.cond17.preheader.loopexit.unr-lcssa, %for.body.epil, %if.end8
  %cmp1880 = icmp sgt i32 %dim0, 0
  br i1 %cmp1880, label %for.body20.lr.ph, label %for.end42

for.body20.lr.ph:                                 ; preds = %for.cond17.preheader
  %cmp2478 = icmp sgt i32 %dim1, 0
  %conv27 = sext i32 %dim2 to i64
  br i1 %cmp2478, label %for.body20.us.preheader, label %for.end42

for.body20.us.preheader:                          ; preds = %for.body20.lr.ph
  %sub23 = sub nsw i32 %dim1, %offset
  %sub21 = sub i32 0, %offset
  %9 = sext i32 %sub21 to i64
  %10 = sext i32 %sub23 to i64
  %wide.trip.count90 = zext nneg i32 %dim0 to i64
  br label %for.body20.us

for.body20.us:                                    ; preds = %for.body20.us.preheader, %for.cond22.for.inc40_crit_edge.us
  %indvars.iv87 = phi i64 [ 0, %for.body20.us.preheader ], [ %indvars.iv.next88, %for.cond22.for.inc40_crit_edge.us ]
  br label %for.body26.us

for.body26.us:                                    ; preds = %for.body20.us, %for.inc37.us
  %indvars.iv84 = phi i64 [ %9, %for.body20.us ], [ %indvars.iv.next85, %for.inc37.us ]
  %call28.us = tail call noalias ptr @calloc(i64 noundef %conv27, i64 noundef 8) #10
  %11 = load ptr, ptr %array3D, align 8
  %arrayidx30.us = getelementptr inbounds ptr, ptr %11, i64 %indvars.iv87
  %12 = load ptr, ptr %arrayidx30.us, align 8
  %arrayidx32.us = getelementptr inbounds ptr, ptr %12, i64 %indvars.iv84
  store ptr %call28.us, ptr %arrayidx32.us, align 8
  %cmp33.us = icmp eq ptr %call28.us, null
  br i1 %cmp33.us, label %if.then35.us, label %for.inc37.us

if.then35.us:                                     ; preds = %for.body26.us
  %call.i75.us = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.103) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  br label %for.inc37.us

for.inc37.us:                                     ; preds = %if.then35.us, %for.body26.us
  %indvars.iv.next85 = add nsw i64 %indvars.iv84, 1
  %cmp24.us = icmp slt i64 %indvars.iv.next85, %10
  br i1 %cmp24.us, label %for.body26.us, label %for.cond22.for.inc40_crit_edge.us

for.cond22.for.inc40_crit_edge.us:                ; preds = %for.inc37.us
  %indvars.iv.next88 = add nuw nsw i64 %indvars.iv87, 1
  %exitcond91.not = icmp eq i64 %indvars.iv.next88, %wide.trip.count90
  br i1 %exitcond91.not, label %for.end42, label %for.body20.us

for.body:                                         ; preds = %for.body, %for.body.lr.ph.new
  %indvars.iv = phi i64 [ 1, %for.body.lr.ph.new ], [ %indvars.iv.next.3, %for.body ]
  %niter = phi i64 [ 0, %for.body.lr.ph.new ], [ %niter.next.3, %for.body ]
  %13 = load ptr, ptr %array3D, align 8
  %14 = getelementptr ptr, ptr %13, i64 %indvars.iv
  %arrayidx12 = getelementptr i8, ptr %14, i64 -8
  %15 = load ptr, ptr %arrayidx12, align 8
  %add.ptr14 = getelementptr inbounds ptr, ptr %15, i64 %idx.ext13
  store ptr %add.ptr14, ptr %14, align 8
  %16 = load ptr, ptr %array3D, align 8
  %17 = getelementptr ptr, ptr %16, i64 %indvars.iv
  %18 = getelementptr i8, ptr %17, i64 8
  %19 = load ptr, ptr %17, align 8
  %add.ptr14.1 = getelementptr inbounds ptr, ptr %19, i64 %idx.ext13
  store ptr %add.ptr14.1, ptr %18, align 8
  %20 = load ptr, ptr %array3D, align 8
  %21 = getelementptr ptr, ptr %20, i64 %indvars.iv
  %22 = getelementptr i8, ptr %21, i64 16
  %arrayidx12.2 = getelementptr i8, ptr %21, i64 8
  %23 = load ptr, ptr %arrayidx12.2, align 8
  %add.ptr14.2 = getelementptr inbounds ptr, ptr %23, i64 %idx.ext13
  store ptr %add.ptr14.2, ptr %22, align 8
  %24 = load ptr, ptr %array3D, align 8
  %25 = getelementptr ptr, ptr %24, i64 %indvars.iv
  %26 = getelementptr i8, ptr %25, i64 24
  %arrayidx12.3 = getelementptr i8, ptr %25, i64 16
  %27 = load ptr, ptr %arrayidx12.3, align 8
  %add.ptr14.3 = getelementptr inbounds ptr, ptr %27, i64 %idx.ext13
  store ptr %add.ptr14.3, ptr %26, align 8
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4
  %niter.next.3 = add i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %for.cond17.preheader.loopexit.unr-lcssa, label %for.body

for.end42:                                        ; preds = %for.cond22.for.inc40_crit_edge.us, %for.body20.lr.ph, %for.cond17.preheader
  %mul46 = shl i32 %dim2, 3
  %add = add i32 %mul46, 8
  %mul47 = mul i32 %add, %dim1
  %add48 = add i32 %mul47, 8
  %mul49 = mul i32 %add48, %dim0
  ret i32 %mul49
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @get_offset_mem2Dshort(ptr nocapture noundef %array2D, i32 noundef %dim0, i32 noundef %dim1, i32 noundef %offset_y, i32 noundef %offset_x) local_unnamed_addr #0 {
entry:
  %conv = sext i32 %dim0 to i64
  %mul = shl nsw i64 %conv, 3
  %call = tail call noalias ptr @malloc(i64 noundef %mul) #8
  store ptr %call, ptr %array2D, align 8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call.i = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.104) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  %.pre = load ptr, ptr %array2D, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %0 = phi ptr [ %.pre, %if.then ], [ %call, %entry ]
  %mul2 = mul nsw i32 %dim1, %dim0
  %conv3 = sext i32 %mul2 to i64
  %call4 = tail call noalias ptr @calloc(i64 noundef %conv3, i64 noundef 2) #10
  store ptr %call4, ptr %0, align 8
  %cmp5 = icmp eq ptr %call4, null
  br i1 %cmp5, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  %call.i62 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.104) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end
  %mul9 = mul nsw i32 %offset_y, %dim1
  %add = add nsw i32 %mul9, %offset_x
  %1 = load ptr, ptr %array2D, align 8
  %2 = load ptr, ptr %1, align 8
  %idx.ext = sext i32 %add to i64
  %add.ptr = getelementptr inbounds i16, ptr %2, i64 %idx.ext
  store ptr %add.ptr, ptr %1, align 8
  %cmp1263 = icmp sgt i32 %offset_y, 0
  br i1 %cmp1263, label %for.body.lr.ph, label %for.cond20.preheader

for.body.lr.ph:                                   ; preds = %if.end8
  %sub11 = xor i32 %offset_y, -1
  %idx.ext16 = sext i32 %dim1 to i64
  %idx.neg = sub nsw i64 0, %idx.ext16
  %3 = sext i32 %sub11 to i64
  br label %for.body

for.cond20.preheader:                             ; preds = %for.body, %if.end8
  %sub21 = sub nsw i32 %dim1, %offset_y
  %cmp2265 = icmp sgt i32 %sub21, 1
  br i1 %cmp2265, label %for.body24.lr.ph, label %for.end33

for.body24.lr.ph:                                 ; preds = %for.cond20.preheader
  %idx.ext28 = sext i32 %dim1 to i64
  %wide.trip.count = zext nneg i32 %sub21 to i64
  %4 = add nsw i64 %wide.trip.count, -1
  %5 = add nsw i64 %wide.trip.count, -2
  %xtraiter = and i64 %4, 3
  %6 = icmp ult i64 %5, 3
  br i1 %6, label %for.end33.loopexit.unr-lcssa, label %for.body24.lr.ph.new

for.body24.lr.ph.new:                             ; preds = %for.body24.lr.ph
  %unroll_iter = and i64 %4, -4
  br label %for.body24

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ -1, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %7 = load ptr, ptr %array2D, align 8
  %8 = getelementptr ptr, ptr %7, i64 %indvars.iv
  %arrayidx15 = getelementptr i8, ptr %8, i64 8
  %9 = load ptr, ptr %arrayidx15, align 8
  %add.ptr17 = getelementptr inbounds i16, ptr %9, i64 %idx.neg
  store ptr %add.ptr17, ptr %8, align 8
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %cmp12 = icmp sgt i64 %indvars.iv.next, %3
  br i1 %cmp12, label %for.body, label %for.cond20.preheader

for.body24:                                       ; preds = %for.body24, %for.body24.lr.ph.new
  %indvars.iv68 = phi i64 [ 1, %for.body24.lr.ph.new ], [ %indvars.iv.next69.3, %for.body24 ]
  %niter = phi i64 [ 0, %for.body24.lr.ph.new ], [ %niter.next.3, %for.body24 ]
  %10 = load ptr, ptr %array2D, align 8
  %11 = getelementptr ptr, ptr %10, i64 %indvars.iv68
  %arrayidx27 = getelementptr i8, ptr %11, i64 -8
  %12 = load ptr, ptr %arrayidx27, align 8
  %add.ptr29 = getelementptr inbounds i16, ptr %12, i64 %idx.ext28
  store ptr %add.ptr29, ptr %11, align 8
  %13 = load ptr, ptr %array2D, align 8
  %14 = getelementptr ptr, ptr %13, i64 %indvars.iv68
  %15 = getelementptr i8, ptr %14, i64 8
  %16 = load ptr, ptr %14, align 8
  %add.ptr29.1 = getelementptr inbounds i16, ptr %16, i64 %idx.ext28
  store ptr %add.ptr29.1, ptr %15, align 8
  %17 = load ptr, ptr %array2D, align 8
  %18 = getelementptr ptr, ptr %17, i64 %indvars.iv68
  %19 = getelementptr i8, ptr %18, i64 16
  %arrayidx27.2 = getelementptr i8, ptr %18, i64 8
  %20 = load ptr, ptr %arrayidx27.2, align 8
  %add.ptr29.2 = getelementptr inbounds i16, ptr %20, i64 %idx.ext28
  store ptr %add.ptr29.2, ptr %19, align 8
  %21 = load ptr, ptr %array2D, align 8
  %22 = getelementptr ptr, ptr %21, i64 %indvars.iv68
  %23 = getelementptr i8, ptr %22, i64 24
  %arrayidx27.3 = getelementptr i8, ptr %22, i64 16
  %24 = load ptr, ptr %arrayidx27.3, align 8
  %add.ptr29.3 = getelementptr inbounds i16, ptr %24, i64 %idx.ext28
  store ptr %add.ptr29.3, ptr %23, align 8
  %indvars.iv.next69.3 = add nuw nsw i64 %indvars.iv68, 4
  %niter.next.3 = add i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %for.end33.loopexit.unr-lcssa, label %for.body24

for.end33.loopexit.unr-lcssa:                     ; preds = %for.body24, %for.body24.lr.ph
  %indvars.iv68.unr = phi i64 [ 1, %for.body24.lr.ph ], [ %indvars.iv.next69.3, %for.body24 ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.end33, label %for.body24.epil

for.body24.epil:                                  ; preds = %for.end33.loopexit.unr-lcssa, %for.body24.epil
  %indvars.iv68.epil = phi i64 [ %indvars.iv.next69.epil, %for.body24.epil ], [ %indvars.iv68.unr, %for.end33.loopexit.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %for.body24.epil ], [ 0, %for.end33.loopexit.unr-lcssa ]
  %25 = load ptr, ptr %array2D, align 8
  %26 = getelementptr ptr, ptr %25, i64 %indvars.iv68.epil
  %arrayidx27.epil = getelementptr i8, ptr %26, i64 -8
  %27 = load ptr, ptr %arrayidx27.epil, align 8
  %add.ptr29.epil = getelementptr inbounds i16, ptr %27, i64 %idx.ext28
  store ptr %add.ptr29.epil, ptr %26, align 8
  %indvars.iv.next69.epil = add nuw nsw i64 %indvars.iv68.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %for.end33, label %for.body24.epil, !llvm.loop !73

for.end33:                                        ; preds = %for.end33.loopexit.unr-lcssa, %for.body24.epil, %for.cond20.preheader
  %mul36 = shl i32 %dim1, 1
  %add37 = add i32 %mul36, 8
  %mul38 = mul i32 %add37, %dim0
  ret i32 %mul38
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @get_mem3Doint(ptr nocapture noundef %array3D, i32 noundef %dim0, i32 noundef %dim1, i32 noundef %dim2, i32 noundef %offset) local_unnamed_addr #0 {
entry:
  %conv = sext i32 %dim0 to i64
  %mul = shl nsw i64 %conv, 3
  %call = tail call noalias ptr @malloc(i64 noundef %mul) #8
  store ptr %call, ptr %array3D, align 8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call.i = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.105) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  %.pre = load ptr, ptr %array3D, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %0 = phi ptr [ %.pre, %if.then ], [ %call, %entry ]
  %mul2 = mul nsw i32 %dim1, %dim0
  %conv3 = sext i32 %mul2 to i64
  %call4 = tail call noalias ptr @calloc(i64 noundef %conv3, i64 noundef 8) #10
  store ptr %call4, ptr %0, align 8
  %cmp5 = icmp eq ptr %call4, null
  br i1 %cmp5, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  %call.i74 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.105) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end
  %1 = load ptr, ptr %array3D, align 8
  %2 = load ptr, ptr %1, align 8
  %idx.ext = sext i32 %offset to i64
  %add.ptr = getelementptr inbounds ptr, ptr %2, i64 %idx.ext
  store ptr %add.ptr, ptr %1, align 8
  %cmp1076 = icmp sgt i32 %dim0, 1
  br i1 %cmp1076, label %for.body.lr.ph, label %for.cond17.preheader

for.body.lr.ph:                                   ; preds = %if.end8
  %idx.ext13 = sext i32 %dim1 to i64
  %wide.trip.count = zext nneg i32 %dim0 to i64
  %3 = add nsw i64 %wide.trip.count, -1
  %4 = add nsw i64 %wide.trip.count, -2
  %xtraiter = and i64 %3, 3
  %5 = icmp ult i64 %4, 3
  br i1 %5, label %for.cond17.preheader.loopexit.unr-lcssa, label %for.body.lr.ph.new

for.body.lr.ph.new:                               ; preds = %for.body.lr.ph
  %unroll_iter = and i64 %3, -4
  br label %for.body

for.cond17.preheader.loopexit.unr-lcssa:          ; preds = %for.body, %for.body.lr.ph
  %indvars.iv.unr = phi i64 [ 1, %for.body.lr.ph ], [ %indvars.iv.next.3, %for.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.cond17.preheader, label %for.body.epil

for.body.epil:                                    ; preds = %for.cond17.preheader.loopexit.unr-lcssa, %for.body.epil
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %for.body.epil ], [ %indvars.iv.unr, %for.cond17.preheader.loopexit.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %for.body.epil ], [ 0, %for.cond17.preheader.loopexit.unr-lcssa ]
  %6 = load ptr, ptr %array3D, align 8
  %7 = getelementptr ptr, ptr %6, i64 %indvars.iv.epil
  %arrayidx12.epil = getelementptr i8, ptr %7, i64 -8
  %8 = load ptr, ptr %arrayidx12.epil, align 8
  %add.ptr14.epil = getelementptr inbounds ptr, ptr %8, i64 %idx.ext13
  store ptr %add.ptr14.epil, ptr %7, align 8
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %for.cond17.preheader, label %for.body.epil, !llvm.loop !74

for.cond17.preheader:                             ; preds = %for.cond17.preheader.loopexit.unr-lcssa, %for.body.epil, %if.end8
  %cmp1880 = icmp sgt i32 %dim0, 0
  br i1 %cmp1880, label %for.body20.lr.ph, label %for.end42

for.body20.lr.ph:                                 ; preds = %for.cond17.preheader
  %cmp2478 = icmp sgt i32 %dim1, 0
  %conv27 = sext i32 %dim2 to i64
  br i1 %cmp2478, label %for.body20.us.preheader, label %for.end42

for.body20.us.preheader:                          ; preds = %for.body20.lr.ph
  %sub23 = sub nsw i32 %dim1, %offset
  %sub21 = sub i32 0, %offset
  %9 = sext i32 %sub21 to i64
  %10 = sext i32 %sub23 to i64
  %wide.trip.count90 = zext nneg i32 %dim0 to i64
  br label %for.body20.us

for.body20.us:                                    ; preds = %for.body20.us.preheader, %for.cond22.for.inc40_crit_edge.us
  %indvars.iv87 = phi i64 [ 0, %for.body20.us.preheader ], [ %indvars.iv.next88, %for.cond22.for.inc40_crit_edge.us ]
  br label %for.body26.us

for.body26.us:                                    ; preds = %for.body20.us, %for.inc37.us
  %indvars.iv84 = phi i64 [ %9, %for.body20.us ], [ %indvars.iv.next85, %for.inc37.us ]
  %call28.us = tail call noalias ptr @calloc(i64 noundef %conv27, i64 noundef 4) #10
  %11 = load ptr, ptr %array3D, align 8
  %arrayidx30.us = getelementptr inbounds ptr, ptr %11, i64 %indvars.iv87
  %12 = load ptr, ptr %arrayidx30.us, align 8
  %arrayidx32.us = getelementptr inbounds ptr, ptr %12, i64 %indvars.iv84
  store ptr %call28.us, ptr %arrayidx32.us, align 8
  %cmp33.us = icmp eq ptr %call28.us, null
  br i1 %cmp33.us, label %if.then35.us, label %for.inc37.us

if.then35.us:                                     ; preds = %for.body26.us
  %call.i75.us = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.105) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  br label %for.inc37.us

for.inc37.us:                                     ; preds = %if.then35.us, %for.body26.us
  %indvars.iv.next85 = add nsw i64 %indvars.iv84, 1
  %cmp24.us = icmp slt i64 %indvars.iv.next85, %10
  br i1 %cmp24.us, label %for.body26.us, label %for.cond22.for.inc40_crit_edge.us

for.cond22.for.inc40_crit_edge.us:                ; preds = %for.inc37.us
  %indvars.iv.next88 = add nuw nsw i64 %indvars.iv87, 1
  %exitcond91.not = icmp eq i64 %indvars.iv.next88, %wide.trip.count90
  br i1 %exitcond91.not, label %for.end42, label %for.body20.us

for.body:                                         ; preds = %for.body, %for.body.lr.ph.new
  %indvars.iv = phi i64 [ 1, %for.body.lr.ph.new ], [ %indvars.iv.next.3, %for.body ]
  %niter = phi i64 [ 0, %for.body.lr.ph.new ], [ %niter.next.3, %for.body ]
  %13 = load ptr, ptr %array3D, align 8
  %14 = getelementptr ptr, ptr %13, i64 %indvars.iv
  %arrayidx12 = getelementptr i8, ptr %14, i64 -8
  %15 = load ptr, ptr %arrayidx12, align 8
  %add.ptr14 = getelementptr inbounds ptr, ptr %15, i64 %idx.ext13
  store ptr %add.ptr14, ptr %14, align 8
  %16 = load ptr, ptr %array3D, align 8
  %17 = getelementptr ptr, ptr %16, i64 %indvars.iv
  %18 = getelementptr i8, ptr %17, i64 8
  %19 = load ptr, ptr %17, align 8
  %add.ptr14.1 = getelementptr inbounds ptr, ptr %19, i64 %idx.ext13
  store ptr %add.ptr14.1, ptr %18, align 8
  %20 = load ptr, ptr %array3D, align 8
  %21 = getelementptr ptr, ptr %20, i64 %indvars.iv
  %22 = getelementptr i8, ptr %21, i64 16
  %arrayidx12.2 = getelementptr i8, ptr %21, i64 8
  %23 = load ptr, ptr %arrayidx12.2, align 8
  %add.ptr14.2 = getelementptr inbounds ptr, ptr %23, i64 %idx.ext13
  store ptr %add.ptr14.2, ptr %22, align 8
  %24 = load ptr, ptr %array3D, align 8
  %25 = getelementptr ptr, ptr %24, i64 %indvars.iv
  %26 = getelementptr i8, ptr %25, i64 24
  %arrayidx12.3 = getelementptr i8, ptr %25, i64 16
  %27 = load ptr, ptr %arrayidx12.3, align 8
  %add.ptr14.3 = getelementptr inbounds ptr, ptr %27, i64 %idx.ext13
  store ptr %add.ptr14.3, ptr %26, align 8
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4
  %niter.next.3 = add i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %for.cond17.preheader.loopexit.unr-lcssa, label %for.body

for.end42:                                        ; preds = %for.cond22.for.inc40_crit_edge.us, %for.body20.lr.ph, %for.cond17.preheader
  %mul46 = shl i32 %dim2, 2
  %add = add i32 %mul46, 8
  %mul47 = mul i32 %add, %dim1
  %add48 = add i32 %mul47, 8
  %mul49 = mul i32 %add48, %dim0
  ret i32 %mul49
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @get_mem2Doint(ptr nocapture noundef %array2D, i32 noundef %dim0, i32 noundef %dim1, i32 noundef %offset) local_unnamed_addr #0 {
entry:
  %conv = sext i32 %dim0 to i64
  %mul = shl nsw i64 %conv, 3
  %call = tail call noalias ptr @malloc(i64 noundef %mul) #8
  store ptr %call, ptr %array2D, align 8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call.i = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.55) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  %.pre = load ptr, ptr %array2D, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %0 = phi ptr [ %.pre, %if.then ], [ %call, %entry ]
  %mul2 = mul nsw i32 %dim1, %dim0
  %conv3 = sext i32 %mul2 to i64
  %call4 = tail call noalias ptr @calloc(i64 noundef %conv3, i64 noundef 4) #10
  store ptr %call4, ptr %0, align 8
  %cmp5 = icmp eq ptr %call4, null
  br i1 %cmp5, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  %call.i34 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.55) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end
  %1 = load ptr, ptr %array2D, align 8
  %2 = load ptr, ptr %1, align 8
  %idx.ext = sext i32 %offset to i64
  %add.ptr = getelementptr inbounds i32, ptr %2, i64 %idx.ext
  store ptr %add.ptr, ptr %1, align 8
  %cmp1035 = icmp sgt i32 %dim0, 1
  br i1 %cmp1035, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end8
  %idx.ext13 = sext i32 %dim1 to i64
  %wide.trip.count = zext nneg i32 %dim0 to i64
  %3 = add nsw i64 %wide.trip.count, -1
  %4 = add nsw i64 %wide.trip.count, -2
  %xtraiter = and i64 %3, 3
  %5 = icmp ult i64 %4, 3
  br i1 %5, label %for.end.loopexit.unr-lcssa, label %for.body.lr.ph.new

for.body.lr.ph.new:                               ; preds = %for.body.lr.ph
  %unroll_iter = and i64 %3, -4
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph.new
  %indvars.iv = phi i64 [ 1, %for.body.lr.ph.new ], [ %indvars.iv.next.3, %for.body ]
  %niter = phi i64 [ 0, %for.body.lr.ph.new ], [ %niter.next.3, %for.body ]
  %6 = load ptr, ptr %array2D, align 8
  %7 = getelementptr ptr, ptr %6, i64 %indvars.iv
  %arrayidx12 = getelementptr i8, ptr %7, i64 -8
  %8 = load ptr, ptr %arrayidx12, align 8
  %add.ptr14 = getelementptr inbounds i32, ptr %8, i64 %idx.ext13
  store ptr %add.ptr14, ptr %7, align 8
  %9 = load ptr, ptr %array2D, align 8
  %10 = getelementptr ptr, ptr %9, i64 %indvars.iv
  %11 = getelementptr i8, ptr %10, i64 8
  %12 = load ptr, ptr %10, align 8
  %add.ptr14.1 = getelementptr inbounds i32, ptr %12, i64 %idx.ext13
  store ptr %add.ptr14.1, ptr %11, align 8
  %13 = load ptr, ptr %array2D, align 8
  %14 = getelementptr ptr, ptr %13, i64 %indvars.iv
  %15 = getelementptr i8, ptr %14, i64 16
  %arrayidx12.2 = getelementptr i8, ptr %14, i64 8
  %16 = load ptr, ptr %arrayidx12.2, align 8
  %add.ptr14.2 = getelementptr inbounds i32, ptr %16, i64 %idx.ext13
  store ptr %add.ptr14.2, ptr %15, align 8
  %17 = load ptr, ptr %array2D, align 8
  %18 = getelementptr ptr, ptr %17, i64 %indvars.iv
  %19 = getelementptr i8, ptr %18, i64 24
  %arrayidx12.3 = getelementptr i8, ptr %18, i64 16
  %20 = load ptr, ptr %arrayidx12.3, align 8
  %add.ptr14.3 = getelementptr inbounds i32, ptr %20, i64 %idx.ext13
  store ptr %add.ptr14.3, ptr %19, align 8
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4
  %niter.next.3 = add i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %for.end.loopexit.unr-lcssa, label %for.body

for.end.loopexit.unr-lcssa:                       ; preds = %for.body, %for.body.lr.ph
  %indvars.iv.unr = phi i64 [ 1, %for.body.lr.ph ], [ %indvars.iv.next.3, %for.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.end, label %for.body.epil

for.body.epil:                                    ; preds = %for.end.loopexit.unr-lcssa, %for.body.epil
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %for.body.epil ], [ %indvars.iv.unr, %for.end.loopexit.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %for.body.epil ], [ 0, %for.end.loopexit.unr-lcssa ]
  %21 = load ptr, ptr %array2D, align 8
  %22 = getelementptr ptr, ptr %21, i64 %indvars.iv.epil
  %arrayidx12.epil = getelementptr i8, ptr %22, i64 -8
  %23 = load ptr, ptr %arrayidx12.epil, align 8
  %add.ptr14.epil = getelementptr inbounds i32, ptr %23, i64 %idx.ext13
  store ptr %add.ptr14.epil, ptr %22, align 8
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %for.end, label %for.body.epil, !llvm.loop !75

for.end:                                          ; preds = %for.end.loopexit.unr-lcssa, %for.body.epil, %if.end8
  %mul19 = shl i32 %dim1, 2
  %add = add i32 %mul19, 8
  %mul20 = mul i32 %add, %dim0
  ret i32 %mul20
}

; Function Attrs: nounwind uwtable
define dso_local i32 @get_mem3Ddouble(ptr nocapture noundef %array3D, i32 noundef %dim0, i32 noundef %dim1, i32 noundef %dim2) local_unnamed_addr #0 {
entry:
  %array2D = alloca ptr, align 8
  %conv = sext i32 %dim0 to i64
  %mul = shl nsw i64 %conv, 3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %array2D) #9
  %call = tail call noalias ptr @malloc(i64 noundef %mul) #8
  store ptr %call, ptr %array3D, align 8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call.i = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.106) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %mul5 = mul nsw i32 %dim1, %dim0
  %call6 = call i32 @get_mem2Ddouble(ptr noundef nonnull %array2D, i32 noundef %mul5, i32 noundef %dim2)
  %cmp721 = icmp sgt i32 %dim0, 0
  br i1 %cmp721, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %0 = load ptr, ptr %array2D, align 8
  %1 = sext i32 %dim1 to i64
  %wide.trip.count = zext nneg i32 %dim0 to i64
  %xtraiter = and i64 %wide.trip.count, 3
  %2 = icmp ult i32 %dim0, 4
  br i1 %2, label %for.end.loopexit.unr-lcssa, label %for.body.lr.ph.new

for.body.lr.ph.new:                               ; preds = %for.body.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph.new
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph.new ], [ %indvars.iv.next.3, %for.body ]
  %niter = phi i64 [ 0, %for.body.lr.ph.new ], [ %niter.next.3, %for.body ]
  %3 = mul nsw i64 %indvars.iv, %1
  %arrayidx = getelementptr inbounds ptr, ptr %0, i64 %3
  %4 = load ptr, ptr %array3D, align 8
  %arrayidx11 = getelementptr inbounds ptr, ptr %4, i64 %indvars.iv
  store ptr %arrayidx, ptr %arrayidx11, align 8
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1
  %5 = mul nsw i64 %indvars.iv.next, %1
  %arrayidx.1 = getelementptr inbounds ptr, ptr %0, i64 %5
  %6 = load ptr, ptr %array3D, align 8
  %arrayidx11.1 = getelementptr inbounds ptr, ptr %6, i64 %indvars.iv.next
  store ptr %arrayidx.1, ptr %arrayidx11.1, align 8
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2
  %7 = mul nsw i64 %indvars.iv.next.1, %1
  %arrayidx.2 = getelementptr inbounds ptr, ptr %0, i64 %7
  %8 = load ptr, ptr %array3D, align 8
  %arrayidx11.2 = getelementptr inbounds ptr, ptr %8, i64 %indvars.iv.next.1
  store ptr %arrayidx.2, ptr %arrayidx11.2, align 8
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3
  %9 = mul nsw i64 %indvars.iv.next.2, %1
  %arrayidx.3 = getelementptr inbounds ptr, ptr %0, i64 %9
  %10 = load ptr, ptr %array3D, align 8
  %arrayidx11.3 = getelementptr inbounds ptr, ptr %10, i64 %indvars.iv.next.2
  store ptr %arrayidx.3, ptr %arrayidx11.3, align 8
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4
  %niter.next.3 = add i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %for.end.loopexit.unr-lcssa, label %for.body

for.end.loopexit.unr-lcssa:                       ; preds = %for.body, %for.body.lr.ph
  %indvars.iv.unr = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next.3, %for.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.end, label %for.body.epil

for.body.epil:                                    ; preds = %for.end.loopexit.unr-lcssa, %for.body.epil
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %for.body.epil ], [ %indvars.iv.unr, %for.end.loopexit.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %for.body.epil ], [ 0, %for.end.loopexit.unr-lcssa ]
  %11 = mul nsw i64 %indvars.iv.epil, %1
  %arrayidx.epil = getelementptr inbounds ptr, ptr %0, i64 %11
  %12 = load ptr, ptr %array3D, align 8
  %arrayidx11.epil = getelementptr inbounds ptr, ptr %12, i64 %indvars.iv.epil
  store ptr %arrayidx.epil, ptr %arrayidx11.epil, align 8
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %for.end, label %for.body.epil, !llvm.loop !76

for.end:                                          ; preds = %for.end.loopexit.unr-lcssa, %for.body.epil, %if.end
  %conv1 = trunc i64 %mul to i32
  %add = add nsw i32 %call6, %conv1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %array2D) #9
  ret i32 %add
}

; Function Attrs: nounwind uwtable
define dso_local void @free_mem2Ddouble(ptr noundef %array2D) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq ptr %array2D, null
  br i1 %tobool.not, label %if.else3, label %if.then

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %array2D, align 8
  %tobool1.not = icmp eq ptr %0, null
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.then
  tail call void @free(ptr noundef nonnull %0) #9
  br label %if.end

if.else:                                          ; preds = %if.then
  tail call void @error(ptr noundef nonnull @.str.107, i32 noundef 100) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  tail call void @free(ptr noundef nonnull %array2D) #9
  br label %if.end4

if.else3:                                         ; preds = %entry
  tail call void @error(ptr noundef nonnull @.str.107, i32 noundef 100) #9
  br label %if.end4

if.end4:                                          ; preds = %if.else3, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @free_mem1Dodouble(ptr noundef %array1D, i32 noundef %offset) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq ptr %array1D, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %idx.ext = sext i32 %offset to i64
  %idx.neg = sub nsw i64 0, %idx.ext
  %add.ptr = getelementptr inbounds double, ptr %array1D, i64 %idx.neg
  tail call void @free(ptr noundef %add.ptr) #9
  br label %if.end

if.else:                                          ; preds = %entry
  tail call void @error(ptr noundef nonnull @.str.108, i32 noundef 100) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @free_mem2Dodouble(ptr noundef %array2D, i32 noundef %offset) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq ptr %array2D, null
  br i1 %tobool.not, label %if.else5, label %if.then

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %array2D, align 8
  %idx.ext = sext i32 %offset to i64
  %idx.neg = sub nsw i64 0, %idx.ext
  %add.ptr = getelementptr inbounds double, ptr %0, i64 %idx.neg
  store ptr %add.ptr, ptr %array2D, align 8
  %tobool2.not = icmp eq ptr %0, null
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.then
  tail call void @free(ptr noundef %add.ptr) #9
  br label %if.end

if.else:                                          ; preds = %if.then
  tail call void @error(ptr noundef nonnull @.str.109, i32 noundef 100) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then3
  tail call void @free(ptr noundef nonnull %array2D) #9
  br label %if.end6

if.else5:                                         ; preds = %entry
  tail call void @error(ptr noundef nonnull @.str.109, i32 noundef 100) #9
  br label %if.end6

if.end6:                                          ; preds = %if.else5, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @free_mem3Dodouble(ptr noundef %array3D, i32 noundef %dim0, i32 noundef %dim1, i32 noundef %offset) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq ptr %array3D, null
  br i1 %tobool.not, label %if.else23, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %cmp41 = icmp sgt i32 %dim0, 0
  %cmp339 = icmp sgt i32 %dim1, 0
  %or.cond = and i1 %cmp41, %cmp339
  br i1 %or.cond, label %for.body.us.preheader, label %for.end15

for.body.us.preheader:                            ; preds = %for.cond.preheader
  %sub2 = sub nsw i32 %dim1, %offset
  %sub = sub i32 0, %offset
  %0 = sext i32 %sub to i64
  %1 = sext i32 %sub2 to i64
  %wide.trip.count = zext nneg i32 %dim0 to i64
  br label %for.body.us

for.body.us:                                      ; preds = %for.body.us.preheader, %for.cond1.for.inc13_crit_edge.us
  %indvars.iv45 = phi i64 [ 0, %for.body.us.preheader ], [ %indvars.iv.next46, %for.cond1.for.inc13_crit_edge.us ]
  %arrayidx.us = getelementptr inbounds ptr, ptr %array3D, i64 %indvars.iv45
  br label %for.body4.us

for.body4.us:                                     ; preds = %for.body.us, %for.inc.us
  %indvars.iv = phi i64 [ %0, %for.body.us ], [ %indvars.iv.next, %for.inc.us ]
  %2 = load ptr, ptr %arrayidx.us, align 8
  %arrayidx6.us = getelementptr inbounds ptr, ptr %2, i64 %indvars.iv
  %3 = load ptr, ptr %arrayidx6.us, align 8
  %tobool7.not.us = icmp eq ptr %3, null
  br i1 %tobool7.not.us, label %if.else.us, label %if.then8.us

if.then8.us:                                      ; preds = %for.body4.us
  tail call void @free(ptr noundef nonnull %3) #9
  br label %for.inc.us

if.else.us:                                       ; preds = %for.body4.us
  tail call void @error(ptr noundef nonnull @.str.110, i32 noundef 100) #9
  br label %for.inc.us

for.inc.us:                                       ; preds = %if.else.us, %if.then8.us
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %cmp3.us = icmp slt i64 %indvars.iv.next, %1
  br i1 %cmp3.us, label %for.body4.us, label %for.cond1.for.inc13_crit_edge.us

for.cond1.for.inc13_crit_edge.us:                 ; preds = %for.inc.us
  %indvars.iv.next46 = add nuw nsw i64 %indvars.iv45, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next46, %wide.trip.count
  br i1 %exitcond.not, label %for.end15, label %for.body.us

for.end15:                                        ; preds = %for.cond1.for.inc13_crit_edge.us, %for.cond.preheader
  %4 = load ptr, ptr %array3D, align 8
  %idx.ext = sext i32 %offset to i64
  %idx.neg = sub nsw i64 0, %idx.ext
  %add.ptr = getelementptr inbounds ptr, ptr %4, i64 %idx.neg
  store ptr %add.ptr, ptr %array3D, align 8
  %tobool18.not = icmp eq ptr %4, null
  br i1 %tobool18.not, label %if.else21, label %if.then19

if.then19:                                        ; preds = %for.end15
  tail call void @free(ptr noundef %add.ptr) #9
  br label %if.end22

if.else21:                                        ; preds = %for.end15
  tail call void @error(ptr noundef nonnull @.str.110, i32 noundef 100) #9
  br label %if.end22

if.end22:                                         ; preds = %if.else21, %if.then19
  tail call void @free(ptr noundef nonnull %array3D) #9
  br label %if.end24

if.else23:                                        ; preds = %entry
  tail call void @error(ptr noundef nonnull @.str.110, i32 noundef 100) #9
  br label %if.end24

if.end24:                                         ; preds = %if.else23, %if.end22
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @free_mem3Doint(ptr noundef %array3D, i32 noundef %dim0, i32 noundef %dim1, i32 noundef %offset) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq ptr %array3D, null
  br i1 %tobool.not, label %if.else23, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %cmp41 = icmp sgt i32 %dim0, 0
  %cmp339 = icmp sgt i32 %dim1, 0
  %or.cond = and i1 %cmp41, %cmp339
  br i1 %or.cond, label %for.body.us.preheader, label %for.end15

for.body.us.preheader:                            ; preds = %for.cond.preheader
  %sub2 = sub nsw i32 %dim1, %offset
  %sub = sub i32 0, %offset
  %0 = sext i32 %sub to i64
  %1 = sext i32 %sub2 to i64
  %wide.trip.count = zext nneg i32 %dim0 to i64
  br label %for.body.us

for.body.us:                                      ; preds = %for.body.us.preheader, %for.cond1.for.inc13_crit_edge.us
  %indvars.iv45 = phi i64 [ 0, %for.body.us.preheader ], [ %indvars.iv.next46, %for.cond1.for.inc13_crit_edge.us ]
  %arrayidx.us = getelementptr inbounds ptr, ptr %array3D, i64 %indvars.iv45
  br label %for.body4.us

for.body4.us:                                     ; preds = %for.body.us, %for.inc.us
  %indvars.iv = phi i64 [ %0, %for.body.us ], [ %indvars.iv.next, %for.inc.us ]
  %2 = load ptr, ptr %arrayidx.us, align 8
  %arrayidx6.us = getelementptr inbounds ptr, ptr %2, i64 %indvars.iv
  %3 = load ptr, ptr %arrayidx6.us, align 8
  %tobool7.not.us = icmp eq ptr %3, null
  br i1 %tobool7.not.us, label %if.else.us, label %if.then8.us

if.then8.us:                                      ; preds = %for.body4.us
  tail call void @free(ptr noundef nonnull %3) #9
  br label %for.inc.us

if.else.us:                                       ; preds = %for.body4.us
  tail call void @error(ptr noundef nonnull @.str.111, i32 noundef 100) #9
  br label %for.inc.us

for.inc.us:                                       ; preds = %if.else.us, %if.then8.us
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %cmp3.us = icmp slt i64 %indvars.iv.next, %1
  br i1 %cmp3.us, label %for.body4.us, label %for.cond1.for.inc13_crit_edge.us

for.cond1.for.inc13_crit_edge.us:                 ; preds = %for.inc.us
  %indvars.iv.next46 = add nuw nsw i64 %indvars.iv45, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next46, %wide.trip.count
  br i1 %exitcond.not, label %for.end15, label %for.body.us

for.end15:                                        ; preds = %for.cond1.for.inc13_crit_edge.us, %for.cond.preheader
  %4 = load ptr, ptr %array3D, align 8
  %idx.ext = sext i32 %offset to i64
  %idx.neg = sub nsw i64 0, %idx.ext
  %add.ptr = getelementptr inbounds ptr, ptr %4, i64 %idx.neg
  store ptr %add.ptr, ptr %array3D, align 8
  %tobool18.not = icmp eq ptr %4, null
  br i1 %tobool18.not, label %if.else21, label %if.then19

if.then19:                                        ; preds = %for.end15
  tail call void @free(ptr noundef %add.ptr) #9
  br label %if.end22

if.else21:                                        ; preds = %for.end15
  tail call void @error(ptr noundef nonnull @.str.111, i32 noundef 100) #9
  br label %if.end22

if.end22:                                         ; preds = %if.else21, %if.then19
  tail call void @free(ptr noundef nonnull %array3D) #9
  br label %if.end24

if.else23:                                        ; preds = %entry
  tail call void @error(ptr noundef nonnull @.str.111, i32 noundef 100) #9
  br label %if.end24

if.end24:                                         ; preds = %if.else23, %if.end22
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @free_mem2Doint(ptr noundef %array2D, i32 noundef %offset) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq ptr %array2D, null
  br i1 %tobool.not, label %if.else5, label %if.then

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %array2D, align 8
  %idx.ext = sext i32 %offset to i64
  %idx.neg = sub nsw i64 0, %idx.ext
  %add.ptr = getelementptr inbounds i32, ptr %0, i64 %idx.neg
  store ptr %add.ptr, ptr %array2D, align 8
  %tobool2.not = icmp eq ptr %0, null
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.then
  tail call void @free(ptr noundef %add.ptr) #9
  br label %if.end

if.else:                                          ; preds = %if.then
  tail call void @error(ptr noundef nonnull @.str.112, i32 noundef 100) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then3
  tail call void @free(ptr noundef nonnull %array2D) #9
  br label %if.end6

if.else5:                                         ; preds = %entry
  tail call void @error(ptr noundef nonnull @.str.112, i32 noundef 100) #9
  br label %if.end6

if.end6:                                          ; preds = %if.else5, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @free_offset_mem2Dshort(ptr noundef %array2D, i32 noundef %dim1, i32 noundef %offset_y, i32 noundef %offset_x) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq ptr %array2D, null
  br i1 %tobool.not, label %if.else5, label %if.then

if.then:                                          ; preds = %entry
  %mul = mul nsw i32 %offset_y, %dim1
  %add = add nsw i32 %mul, %offset_x
  %0 = load ptr, ptr %array2D, align 8
  %idx.ext = sext i32 %add to i64
  %idx.neg = sub nsw i64 0, %idx.ext
  %add.ptr = getelementptr inbounds i16, ptr %0, i64 %idx.neg
  store ptr %add.ptr, ptr %array2D, align 8
  %tobool2.not = icmp eq ptr %0, null
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.then
  tail call void @free(ptr noundef %add.ptr) #9
  br label %if.end

if.else:                                          ; preds = %if.then
  tail call void @error(ptr noundef nonnull @.str.113, i32 noundef 100) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then3
  tail call void @free(ptr noundef nonnull %array2D) #9
  br label %if.end6

if.else5:                                         ; preds = %entry
  tail call void @error(ptr noundef nonnull @.str.113, i32 noundef 100) #9
  br label %if.end6

if.end6:                                          ; preds = %if.else5, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @free_mem3Ddouble(ptr noundef %array3D) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq ptr %array3D, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %array3D, align 8
  %tobool.not.i = icmp eq ptr %0, null
  br i1 %tobool.not.i, label %if.else3.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  %1 = load ptr, ptr %0, align 8
  %tobool1.not.i = icmp eq ptr %1, null
  br i1 %tobool1.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.then.i
  tail call void @free(ptr noundef nonnull %1) #9
  br label %if.end.i

if.else.i:                                        ; preds = %if.then.i
  tail call void @error(ptr noundef nonnull @.str.107, i32 noundef 100) #9
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then2.i
  tail call void @free(ptr noundef nonnull %0) #9
  br label %free_mem2Ddouble.exit

if.else3.i:                                       ; preds = %if.then
  tail call void @error(ptr noundef nonnull @.str.107, i32 noundef 100) #9
  br label %free_mem2Ddouble.exit

free_mem2Ddouble.exit:                            ; preds = %if.end.i, %if.else3.i
  tail call void @free(ptr noundef nonnull %array3D) #9
  br label %if.end

if.else:                                          ; preds = %entry
  tail call void @error(ptr noundef nonnull @.str.72, i32 noundef 100) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %free_mem2Ddouble.exit
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @get_mem2Dolm(ptr nocapture noundef %array2D, i32 noundef %dim0, i32 noundef %dim1, i32 noundef %offset) local_unnamed_addr #0 {
entry:
  %conv = sext i32 %dim0 to i64
  %mul = shl nsw i64 %conv, 3
  %call = tail call noalias ptr @malloc(i64 noundef %mul) #8
  store ptr %call, ptr %array2D, align 8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call.i = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.114) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  %.pre = load ptr, ptr %array2D, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %0 = phi ptr [ %.pre, %if.then ], [ %call, %entry ]
  %mul2 = mul nsw i32 %dim1, %dim0
  %conv3 = sext i32 %mul2 to i64
  %call4 = tail call noalias ptr @calloc(i64 noundef %conv3, i64 noundef 48) #10
  store ptr %call4, ptr %0, align 8
  %cmp5 = icmp eq ptr %call4, null
  br i1 %cmp5, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  %call.i34 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.114) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end
  %1 = load ptr, ptr %array2D, align 8
  %2 = load ptr, ptr %1, align 8
  %idx.ext = sext i32 %offset to i64
  %add.ptr = getelementptr inbounds %struct.lambda_params, ptr %2, i64 %idx.ext
  store ptr %add.ptr, ptr %1, align 8
  %cmp1035 = icmp sgt i32 %dim0, 1
  br i1 %cmp1035, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end8
  %idx.ext13 = sext i32 %dim1 to i64
  %wide.trip.count = zext nneg i32 %dim0 to i64
  %3 = add nsw i64 %wide.trip.count, -1
  %4 = add nsw i64 %wide.trip.count, -2
  %xtraiter = and i64 %3, 3
  %5 = icmp ult i64 %4, 3
  br i1 %5, label %for.end.loopexit.unr-lcssa, label %for.body.lr.ph.new

for.body.lr.ph.new:                               ; preds = %for.body.lr.ph
  %unroll_iter = and i64 %3, -4
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph.new
  %indvars.iv = phi i64 [ 1, %for.body.lr.ph.new ], [ %indvars.iv.next.3, %for.body ]
  %niter = phi i64 [ 0, %for.body.lr.ph.new ], [ %niter.next.3, %for.body ]
  %6 = load ptr, ptr %array2D, align 8
  %7 = getelementptr ptr, ptr %6, i64 %indvars.iv
  %arrayidx12 = getelementptr i8, ptr %7, i64 -8
  %8 = load ptr, ptr %arrayidx12, align 8
  %add.ptr14 = getelementptr inbounds %struct.lambda_params, ptr %8, i64 %idx.ext13
  store ptr %add.ptr14, ptr %7, align 8
  %9 = load ptr, ptr %array2D, align 8
  %10 = getelementptr ptr, ptr %9, i64 %indvars.iv
  %11 = getelementptr i8, ptr %10, i64 8
  %12 = load ptr, ptr %10, align 8
  %add.ptr14.1 = getelementptr inbounds %struct.lambda_params, ptr %12, i64 %idx.ext13
  store ptr %add.ptr14.1, ptr %11, align 8
  %13 = load ptr, ptr %array2D, align 8
  %14 = getelementptr ptr, ptr %13, i64 %indvars.iv
  %15 = getelementptr i8, ptr %14, i64 16
  %arrayidx12.2 = getelementptr i8, ptr %14, i64 8
  %16 = load ptr, ptr %arrayidx12.2, align 8
  %add.ptr14.2 = getelementptr inbounds %struct.lambda_params, ptr %16, i64 %idx.ext13
  store ptr %add.ptr14.2, ptr %15, align 8
  %17 = load ptr, ptr %array2D, align 8
  %18 = getelementptr ptr, ptr %17, i64 %indvars.iv
  %19 = getelementptr i8, ptr %18, i64 24
  %arrayidx12.3 = getelementptr i8, ptr %18, i64 16
  %20 = load ptr, ptr %arrayidx12.3, align 8
  %add.ptr14.3 = getelementptr inbounds %struct.lambda_params, ptr %20, i64 %idx.ext13
  store ptr %add.ptr14.3, ptr %19, align 8
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4
  %niter.next.3 = add i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %for.end.loopexit.unr-lcssa, label %for.body

for.end.loopexit.unr-lcssa:                       ; preds = %for.body, %for.body.lr.ph
  %indvars.iv.unr = phi i64 [ 1, %for.body.lr.ph ], [ %indvars.iv.next.3, %for.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.end, label %for.body.epil

for.body.epil:                                    ; preds = %for.end.loopexit.unr-lcssa, %for.body.epil
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %for.body.epil ], [ %indvars.iv.unr, %for.end.loopexit.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %for.body.epil ], [ 0, %for.end.loopexit.unr-lcssa ]
  %21 = load ptr, ptr %array2D, align 8
  %22 = getelementptr ptr, ptr %21, i64 %indvars.iv.epil
  %arrayidx12.epil = getelementptr i8, ptr %22, i64 -8
  %23 = load ptr, ptr %arrayidx12.epil, align 8
  %add.ptr14.epil = getelementptr inbounds %struct.lambda_params, ptr %23, i64 %idx.ext13
  store ptr %add.ptr14.epil, ptr %22, align 8
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %for.end, label %for.body.epil, !llvm.loop !77

for.end:                                          ; preds = %for.end.loopexit.unr-lcssa, %for.body.epil, %if.end8
  %mul19 = mul i32 %dim1, 48
  %add = or disjoint i32 %mul19, 8
  %mul20 = mul i32 %add, %dim0
  ret i32 %mul20
}

; Function Attrs: nounwind uwtable
define dso_local void @free_mem2Dolm(ptr noundef %array2D, i32 noundef %offset) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq ptr %array2D, null
  br i1 %tobool.not, label %if.else5, label %if.then

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %array2D, align 8
  %idx.ext = sext i32 %offset to i64
  %idx.neg = sub nsw i64 0, %idx.ext
  %add.ptr = getelementptr inbounds %struct.lambda_params, ptr %0, i64 %idx.neg
  store ptr %add.ptr, ptr %array2D, align 8
  %tobool2.not = icmp eq ptr %0, null
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.then
  tail call void @free(ptr noundef %add.ptr) #9
  br label %if.end

if.else:                                          ; preds = %if.then
  tail call void @error(ptr noundef nonnull @.str.115, i32 noundef 100) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then3
  tail call void @free(ptr noundef nonnull %array2D) #9
  br label %if.end6

if.else5:                                         ; preds = %entry
  tail call void @error(ptr noundef nonnull @.str.115, i32 noundef 100) #9
  br label %if.end6

if.end6:                                          ; preds = %if.else5, %if.end
  ret void
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind allocsize(0) }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(0,1) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.unroll.disable"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !6}
!11 = distinct !{!11, !6}
!12 = distinct !{!12, !6}
!13 = distinct !{!13, !6}
!14 = distinct !{!14, !6}
!15 = distinct !{!15, !6}
!16 = distinct !{!16, !6}
!17 = distinct !{!17, !6}
!18 = distinct !{!18, !6}
!19 = distinct !{!19, !6}
!20 = distinct !{!20, !6}
!21 = distinct !{!21, !6}
!22 = distinct !{!22, !6}
!23 = distinct !{!23, !6}
!24 = distinct !{!24, !6}
!25 = distinct !{!25, !6}
!26 = distinct !{!26, !6}
!27 = distinct !{!27, !6}
!28 = distinct !{!28, !6}
!29 = distinct !{!29, !6}
!30 = distinct !{!30, !6}
!31 = distinct !{!31, !6}
!32 = distinct !{!32, !6}
!33 = distinct !{!33, !6}
!34 = distinct !{!34, !6}
!35 = distinct !{!35, !6}
!36 = distinct !{!36, !6}
!37 = distinct !{!37, !6}
!38 = distinct !{!38, !6}
!39 = distinct !{!39, !6}
!40 = distinct !{!40, !6}
!41 = distinct !{!41, !6}
!42 = distinct !{!42, !6}
!43 = distinct !{!43, !6}
!44 = distinct !{!44, !6}
!45 = distinct !{!45, !6}
!46 = distinct !{!46, !6}
!47 = distinct !{!47, !6}
!48 = distinct !{!48, !6}
!49 = distinct !{!49, !6}
!50 = distinct !{!50, !6}
!51 = distinct !{!51, !6}
!52 = distinct !{!52, !6}
!53 = distinct !{!53, !6}
!54 = distinct !{!54, !6}
!55 = distinct !{!55, !6}
!56 = distinct !{!56, !6}
!57 = distinct !{!57, !6}
!58 = distinct !{!58, !6}
!59 = distinct !{!59, !6}
!60 = distinct !{!60, !6}
!61 = distinct !{!61, !6}
!62 = distinct !{!62, !6}
!63 = distinct !{!63, !6}
!64 = distinct !{!64, !6}
!65 = distinct !{!65, !6}
!66 = distinct !{!66, !6}
!67 = distinct !{!67, !6}
!68 = distinct !{!68, !6}
!69 = distinct !{!69, !6}
!70 = distinct !{!70, !6}
!71 = distinct !{!71, !6}
!72 = distinct !{!72, !6}
!73 = distinct !{!73, !6}
!74 = distinct !{!74, !6}
!75 = distinct !{!75, !6}
!76 = distinct !{!76, !6}
!77 = distinct !{!77, !6}
