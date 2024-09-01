; ModuleID = 'ldecod_src/input.c'
source_filename = "ldecod_src/input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.frame_format = type { i32, i32, double, [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], i32, [3 x i32], [3 x i32], [3 x i32], i32, i32 }

@.str = private unnamed_addr constant [111 x i8] c"Source picture has higher bit depth than imgpel data type. \0APlease recompile with larger data type for imgpel.\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"Rescaling not supported in big endian architectures. \00", align 1
@.str.2 = private unnamed_addr constant [80 x i8] c"reading only from formats of 8, 16 or 32 bit allowed on big endian architecture\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"AllocateFrameMemory: p_Vid->buf\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"AllocateFrameMemory: p_Vid->ibuf\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @initInput(ptr nocapture noundef writeonly %p_Vid, ptr nocapture noundef readonly %source, ptr nocapture noundef readonly %output) local_unnamed_addr #0 {
entry:
  %bit_depth = getelementptr inbounds i8, ptr %source, i64 88
  %0 = load i32, ptr %bit_depth, align 8
  %bit_depth1 = getelementptr inbounds i8, ptr %output, i64 88
  %1 = load i32, ptr %bit_depth1, align 8
  %cmp = icmp eq i32 %0, %1
  br i1 %cmp, label %land.lhs.true, label %if.else10

land.lhs.true:                                    ; preds = %entry
  %arrayidx4 = getelementptr inbounds i8, ptr %source, i64 92
  %2 = load i32, ptr %arrayidx4, align 4
  %arrayidx6 = getelementptr inbounds i8, ptr %output, i64 92
  %3 = load i32, ptr %arrayidx6, align 4
  %cmp7 = icmp eq i32 %2, %3
  br i1 %cmp7, label %if.end12, label %if.else10

if.else10:                                        ; preds = %land.lhs.true, %entry
  br label %if.end12

if.end12:                                         ; preds = %land.lhs.true, %if.else10
  %buf2img_basic.sink = phi ptr [ @buf2img_bitshift, %if.else10 ], [ @buf2img_basic, %land.lhs.true ]
  %buf2img9 = getelementptr inbounds i8, ptr %p_Vid, i64 856736
  store ptr %buf2img_basic.sink, ptr %buf2img9, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @testEndian() local_unnamed_addr #1 {
entry:
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local void @buf2img_endian(ptr nocapture noundef readonly %imgX, ptr nocapture noundef readonly %buf, i32 noundef %size_x, i32 noundef %size_y, i32 noundef %o_size_x, i32 noundef %o_size_y, i32 noundef %symbol_size_in_bytes, i32 noundef %dummy) local_unnamed_addr #2 {
entry:
  %cmp = icmp sgt i32 %symbol_size_in_bytes, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @error(ptr noundef nonnull @.str, i32 noundef 500) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %cmp1.not = icmp eq i32 %size_x, %o_size_x
  %cmp2.not = icmp eq i32 %size_y, %o_size_y
  %or.cond = and i1 %cmp1.not, %cmp2.not
  br i1 %or.cond, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  tail call void @error(ptr noundef nonnull @.str.1, i32 noundef 500) #12
  br label %if.end4

if.end4:                                          ; preds = %if.end, %if.then3
  switch i32 %symbol_size_in_bytes, label %sw.default [
    i32 1, label %for.cond.preheader
    i32 2, label %for.cond17.preheader
    i32 4, label %for.cond42.preheader
  ]

for.cond42.preheader:                             ; preds = %if.end4
  %cmp43124 = icmp sgt i32 %size_y, 0
  %cmp47121 = icmp sgt i32 %size_x, 0
  %or.cond175 = and i1 %cmp43124, %cmp47121
  br i1 %or.cond175, label %for.cond46.preheader.us.preheader, label %sw.epilog

for.cond46.preheader.us.preheader:                ; preds = %for.cond42.preheader
  %0 = zext nneg i32 %size_x to i64
  %wide.trip.count146 = zext nneg i32 %size_y to i64
  %xtraiter = and i64 %0, 1
  %1 = icmp eq i32 %size_x, 1
  %unroll_iter = and i64 %0, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %for.cond46.preheader.us

for.cond46.preheader.us:                          ; preds = %for.cond46.preheader.us.preheader, %for.cond46.for.inc74_crit_edge.us
  %indvars.iv142 = phi i64 [ 0, %for.cond46.preheader.us.preheader ], [ %indvars.iv.next143, %for.cond46.for.inc74_crit_edge.us ]
  %2 = mul nuw nsw i64 %indvars.iv142, %0
  %arrayidx68.us = getelementptr inbounds ptr, ptr %imgX, i64 %indvars.iv142
  br i1 %1, label %for.cond46.for.inc74_crit_edge.us.unr-lcssa, label %for.body49.us

for.body49.us:                                    ; preds = %for.cond46.preheader.us, %for.body49.us
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %for.body49.us ], [ 0, %for.cond46.preheader.us ]
  %niter = phi i64 [ %niter.next.1, %for.body49.us ], [ 0, %for.cond46.preheader.us ]
  %3 = add nuw nsw i64 %indvars.iv, %2
  %mul52.us = shl i64 %3, 2
  %idx.ext53.us = and i64 %mul52.us, 4294967292
  %add.ptr54.us = getelementptr inbounds i8, ptr %buf, i64 %idx.ext53.us
  %tmp32.0.copyload.us = load i32, ptr %add.ptr54.us, align 1
  %rev.us = tail call i32 @llvm.bswap.i32(i32 %tmp32.0.copyload.us)
  %conv66.us = trunc i32 %rev.us to i16
  %4 = load ptr, ptr %arrayidx68.us, align 8
  %arrayidx70.us = getelementptr inbounds i16, ptr %4, i64 %indvars.iv
  store i16 %conv66.us, ptr %arrayidx70.us, align 2
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1
  %5 = add nuw nsw i64 %indvars.iv.next, %2
  %mul52.us.1 = shl i64 %5, 2
  %idx.ext53.us.1 = and i64 %mul52.us.1, 4294967292
  %add.ptr54.us.1 = getelementptr inbounds i8, ptr %buf, i64 %idx.ext53.us.1
  %tmp32.0.copyload.us.1 = load i32, ptr %add.ptr54.us.1, align 1
  %rev.us.1 = tail call i32 @llvm.bswap.i32(i32 %tmp32.0.copyload.us.1)
  %conv66.us.1 = trunc i32 %rev.us.1 to i16
  %6 = load ptr, ptr %arrayidx68.us, align 8
  %arrayidx70.us.1 = getelementptr inbounds i16, ptr %6, i64 %indvars.iv.next
  store i16 %conv66.us.1, ptr %arrayidx70.us.1, align 2
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %for.cond46.for.inc74_crit_edge.us.unr-lcssa, label %for.body49.us

for.cond46.for.inc74_crit_edge.us.unr-lcssa:      ; preds = %for.body49.us, %for.cond46.preheader.us
  %indvars.iv.unr = phi i64 [ 0, %for.cond46.preheader.us ], [ %indvars.iv.next.1, %for.body49.us ]
  br i1 %lcmp.mod.not, label %for.cond46.for.inc74_crit_edge.us, label %for.body49.us.epil

for.body49.us.epil:                               ; preds = %for.cond46.for.inc74_crit_edge.us.unr-lcssa
  %7 = add nuw nsw i64 %indvars.iv.unr, %2
  %mul52.us.epil = shl i64 %7, 2
  %idx.ext53.us.epil = and i64 %mul52.us.epil, 4294967292
  %add.ptr54.us.epil = getelementptr inbounds i8, ptr %buf, i64 %idx.ext53.us.epil
  %tmp32.0.copyload.us.epil = load i32, ptr %add.ptr54.us.epil, align 1
  %rev.us.epil = tail call i32 @llvm.bswap.i32(i32 %tmp32.0.copyload.us.epil)
  %conv66.us.epil = trunc i32 %rev.us.epil to i16
  %8 = load ptr, ptr %arrayidx68.us, align 8
  %arrayidx70.us.epil = getelementptr inbounds i16, ptr %8, i64 %indvars.iv.unr
  store i16 %conv66.us.epil, ptr %arrayidx70.us.epil, align 2
  br label %for.cond46.for.inc74_crit_edge.us

for.cond46.for.inc74_crit_edge.us:                ; preds = %for.cond46.for.inc74_crit_edge.us.unr-lcssa, %for.body49.us.epil
  %indvars.iv.next143 = add nuw nsw i64 %indvars.iv142, 1
  %exitcond147.not = icmp eq i64 %indvars.iv.next143, %wide.trip.count146
  br i1 %exitcond147.not, label %sw.epilog, label %for.cond46.preheader.us

for.cond17.preheader:                             ; preds = %if.end4
  %cmp18129 = icmp sgt i32 %size_y, 0
  %cmp22127 = icmp sgt i32 %size_x, 0
  %or.cond176 = and i1 %cmp18129, %cmp22127
  br i1 %or.cond176, label %for.cond21.preheader.us.preheader, label %sw.epilog

for.cond21.preheader.us.preheader:                ; preds = %for.cond17.preheader
  %9 = zext nneg i32 %size_x to i64
  %wide.trip.count159 = zext nneg i32 %size_y to i64
  %xtraiter182 = and i64 %9, 1
  %10 = icmp eq i32 %size_x, 1
  %unroll_iter184 = and i64 %9, 2147483646
  %lcmp.mod183.not = icmp eq i64 %xtraiter182, 0
  br label %for.cond21.preheader.us

for.cond21.preheader.us:                          ; preds = %for.cond21.preheader.us.preheader, %for.cond21.for.inc38_crit_edge.us
  %indvars.iv155 = phi i64 [ 0, %for.cond21.preheader.us.preheader ], [ %indvars.iv.next156, %for.cond21.for.inc38_crit_edge.us ]
  %11 = mul nuw nsw i64 %indvars.iv155, %9
  %arrayidx32.us = getelementptr inbounds ptr, ptr %imgX, i64 %indvars.iv155
  br i1 %10, label %for.cond21.for.inc38_crit_edge.us.unr-lcssa, label %for.body24.us

for.body24.us:                                    ; preds = %for.cond21.preheader.us, %for.body24.us
  %indvars.iv148 = phi i64 [ %indvars.iv.next149.1, %for.body24.us ], [ 0, %for.cond21.preheader.us ]
  %niter185 = phi i64 [ %niter185.next.1, %for.body24.us ], [ 0, %for.cond21.preheader.us ]
  %12 = add nuw nsw i64 %indvars.iv148, %11
  %13 = shl nuw nsw i64 %12, 1
  %add.ptr.us = getelementptr inbounds i8, ptr %buf, i64 %13
  %tmp16.0.copyload.us = load i16, ptr %add.ptr.us, align 1
  %rev118.us = tail call i16 @llvm.bswap.i16(i16 %tmp16.0.copyload.us)
  %14 = load ptr, ptr %arrayidx32.us, align 8
  %arrayidx34.us = getelementptr inbounds i16, ptr %14, i64 %indvars.iv148
  store i16 %rev118.us, ptr %arrayidx34.us, align 2
  %indvars.iv.next149 = or disjoint i64 %indvars.iv148, 1
  %15 = add nuw nsw i64 %indvars.iv.next149, %11
  %16 = shl nuw nsw i64 %15, 1
  %add.ptr.us.1 = getelementptr inbounds i8, ptr %buf, i64 %16
  %tmp16.0.copyload.us.1 = load i16, ptr %add.ptr.us.1, align 1
  %rev118.us.1 = tail call i16 @llvm.bswap.i16(i16 %tmp16.0.copyload.us.1)
  %17 = load ptr, ptr %arrayidx32.us, align 8
  %arrayidx34.us.1 = getelementptr inbounds i16, ptr %17, i64 %indvars.iv.next149
  store i16 %rev118.us.1, ptr %arrayidx34.us.1, align 2
  %indvars.iv.next149.1 = add nuw nsw i64 %indvars.iv148, 2
  %niter185.next.1 = add i64 %niter185, 2
  %niter185.ncmp.1 = icmp eq i64 %niter185.next.1, %unroll_iter184
  br i1 %niter185.ncmp.1, label %for.cond21.for.inc38_crit_edge.us.unr-lcssa, label %for.body24.us

for.cond21.for.inc38_crit_edge.us.unr-lcssa:      ; preds = %for.body24.us, %for.cond21.preheader.us
  %indvars.iv148.unr = phi i64 [ 0, %for.cond21.preheader.us ], [ %indvars.iv.next149.1, %for.body24.us ]
  br i1 %lcmp.mod183.not, label %for.cond21.for.inc38_crit_edge.us, label %for.body24.us.epil

for.body24.us.epil:                               ; preds = %for.cond21.for.inc38_crit_edge.us.unr-lcssa
  %18 = add nuw nsw i64 %indvars.iv148.unr, %11
  %19 = shl nuw nsw i64 %18, 1
  %add.ptr.us.epil = getelementptr inbounds i8, ptr %buf, i64 %19
  %tmp16.0.copyload.us.epil = load i16, ptr %add.ptr.us.epil, align 1
  %rev118.us.epil = tail call i16 @llvm.bswap.i16(i16 %tmp16.0.copyload.us.epil)
  %20 = load ptr, ptr %arrayidx32.us, align 8
  %arrayidx34.us.epil = getelementptr inbounds i16, ptr %20, i64 %indvars.iv148.unr
  store i16 %rev118.us.epil, ptr %arrayidx34.us.epil, align 2
  br label %for.cond21.for.inc38_crit_edge.us

for.cond21.for.inc38_crit_edge.us:                ; preds = %for.cond21.for.inc38_crit_edge.us.unr-lcssa, %for.body24.us.epil
  %indvars.iv.next156 = add nuw nsw i64 %indvars.iv155, 1
  %exitcond160.not = icmp eq i64 %indvars.iv.next156, %wide.trip.count159
  br i1 %exitcond160.not, label %sw.epilog, label %for.cond21.preheader.us

for.cond.preheader:                               ; preds = %if.end4
  %cmp5133 = icmp sgt i32 %size_y, 0
  %cmp7131 = icmp sgt i32 %size_x, 0
  %or.cond177 = and i1 %cmp5133, %cmp7131
  br i1 %or.cond177, label %for.cond6.preheader.us.preheader, label %sw.epilog

for.cond6.preheader.us.preheader:                 ; preds = %for.cond.preheader
  %21 = zext nneg i32 %size_x to i64
  %wide.trip.count171 = zext nneg i32 %size_y to i64
  %xtraiter186 = and i64 %21, 3
  %22 = icmp ult i32 %size_x, 4
  %unroll_iter188 = and i64 %21, 2147483644
  %lcmp.mod187.not = icmp eq i64 %xtraiter186, 0
  br label %for.cond6.preheader.us

for.cond6.preheader.us:                           ; preds = %for.cond6.preheader.us.preheader, %for.cond6.for.inc13_crit_edge.us
  %indvars.iv167 = phi i64 [ 0, %for.cond6.preheader.us.preheader ], [ %indvars.iv.next168, %for.cond6.for.inc13_crit_edge.us ]
  %23 = mul nuw nsw i64 %indvars.iv167, %21
  %arrayidx10.us = getelementptr inbounds ptr, ptr %imgX, i64 %indvars.iv167
  %invariant.gep = getelementptr inbounds i8, ptr %buf, i64 %23
  br i1 %22, label %for.cond6.for.inc13_crit_edge.us.unr-lcssa, label %for.body8.us

for.body8.us:                                     ; preds = %for.cond6.preheader.us, %for.body8.us
  %indvars.iv161 = phi i64 [ %indvars.iv.next162.3, %for.body8.us ], [ 0, %for.cond6.preheader.us ]
  %niter189 = phi i64 [ %niter189.next.3, %for.body8.us ], [ 0, %for.cond6.preheader.us ]
  %gep = getelementptr inbounds i8, ptr %invariant.gep, i64 %indvars.iv161
  %24 = load i8, ptr %gep, align 1
  %conv.us = zext i8 %24 to i16
  %25 = load ptr, ptr %arrayidx10.us, align 8
  %arrayidx12.us = getelementptr inbounds i16, ptr %25, i64 %indvars.iv161
  store i16 %conv.us, ptr %arrayidx12.us, align 2
  %indvars.iv.next162 = or disjoint i64 %indvars.iv161, 1
  %gep.1 = getelementptr inbounds i8, ptr %invariant.gep, i64 %indvars.iv.next162
  %26 = load i8, ptr %gep.1, align 1
  %conv.us.1 = zext i8 %26 to i16
  %27 = load ptr, ptr %arrayidx10.us, align 8
  %arrayidx12.us.1 = getelementptr inbounds i16, ptr %27, i64 %indvars.iv.next162
  store i16 %conv.us.1, ptr %arrayidx12.us.1, align 2
  %indvars.iv.next162.1 = or disjoint i64 %indvars.iv161, 2
  %gep.2 = getelementptr inbounds i8, ptr %invariant.gep, i64 %indvars.iv.next162.1
  %28 = load i8, ptr %gep.2, align 1
  %conv.us.2 = zext i8 %28 to i16
  %29 = load ptr, ptr %arrayidx10.us, align 8
  %arrayidx12.us.2 = getelementptr inbounds i16, ptr %29, i64 %indvars.iv.next162.1
  store i16 %conv.us.2, ptr %arrayidx12.us.2, align 2
  %indvars.iv.next162.2 = or disjoint i64 %indvars.iv161, 3
  %gep.3 = getelementptr inbounds i8, ptr %invariant.gep, i64 %indvars.iv.next162.2
  %30 = load i8, ptr %gep.3, align 1
  %conv.us.3 = zext i8 %30 to i16
  %31 = load ptr, ptr %arrayidx10.us, align 8
  %arrayidx12.us.3 = getelementptr inbounds i16, ptr %31, i64 %indvars.iv.next162.2
  store i16 %conv.us.3, ptr %arrayidx12.us.3, align 2
  %indvars.iv.next162.3 = add nuw nsw i64 %indvars.iv161, 4
  %niter189.next.3 = add i64 %niter189, 4
  %niter189.ncmp.3 = icmp eq i64 %niter189.next.3, %unroll_iter188
  br i1 %niter189.ncmp.3, label %for.cond6.for.inc13_crit_edge.us.unr-lcssa, label %for.body8.us

for.cond6.for.inc13_crit_edge.us.unr-lcssa:       ; preds = %for.body8.us, %for.cond6.preheader.us
  %indvars.iv161.unr = phi i64 [ 0, %for.cond6.preheader.us ], [ %indvars.iv.next162.3, %for.body8.us ]
  br i1 %lcmp.mod187.not, label %for.cond6.for.inc13_crit_edge.us, label %for.body8.us.epil

for.body8.us.epil:                                ; preds = %for.cond6.for.inc13_crit_edge.us.unr-lcssa, %for.body8.us.epil
  %indvars.iv161.epil = phi i64 [ %indvars.iv.next162.epil, %for.body8.us.epil ], [ %indvars.iv161.unr, %for.cond6.for.inc13_crit_edge.us.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %for.body8.us.epil ], [ 0, %for.cond6.for.inc13_crit_edge.us.unr-lcssa ]
  %gep.epil = getelementptr inbounds i8, ptr %invariant.gep, i64 %indvars.iv161.epil
  %32 = load i8, ptr %gep.epil, align 1
  %conv.us.epil = zext i8 %32 to i16
  %33 = load ptr, ptr %arrayidx10.us, align 8
  %arrayidx12.us.epil = getelementptr inbounds i16, ptr %33, i64 %indvars.iv161.epil
  store i16 %conv.us.epil, ptr %arrayidx12.us.epil, align 2
  %indvars.iv.next162.epil = add nuw nsw i64 %indvars.iv161.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter186
  br i1 %epil.iter.cmp.not, label %for.cond6.for.inc13_crit_edge.us, label %for.body8.us.epil, !llvm.loop !5

for.cond6.for.inc13_crit_edge.us:                 ; preds = %for.body8.us.epil, %for.cond6.for.inc13_crit_edge.us.unr-lcssa
  %indvars.iv.next168 = add nuw nsw i64 %indvars.iv167, 1
  %exitcond172.not = icmp eq i64 %indvars.iv.next168, %wide.trip.count171
  br i1 %exitcond172.not, label %sw.epilog, label %for.cond6.preheader.us

sw.default:                                       ; preds = %if.end4
  tail call void @error(ptr noundef nonnull @.str.2, i32 noundef 500) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.cond46.for.inc74_crit_edge.us, %for.cond21.for.inc38_crit_edge.us, %for.cond6.for.inc13_crit_edge.us, %for.cond42.preheader, %for.cond17.preheader, %for.cond.preheader, %sw.default
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @buf2img_basic(ptr nocapture noundef readonly %imgX, ptr nocapture noundef readonly %buf, i32 noundef %size_x, i32 noundef %size_y, i32 noundef %o_size_x, i32 noundef %o_size_y, i32 noundef %symbol_size_in_bytes, i32 %dummy) #2 {
entry:
  %ui16 = alloca i16, align 2
  %cmp = icmp sgt i32 %symbol_size_in_bytes, 2
  br i1 %cmp, label %if.end.thread, label %if.end

if.end.thread:                                    ; preds = %entry
  tail call void @error(ptr noundef nonnull @.str, i32 noundef 500) #12
  %conv326 = zext nneg i32 %symbol_size_in_bytes to i64
  br label %if.else64

if.end:                                           ; preds = %entry
  %conv = sext i32 %symbol_size_in_bytes to i64
  %cmp1 = icmp eq i32 %symbol_size_in_bytes, 2
  br i1 %cmp1, label %if.then3, label %if.else64

if.then3:                                         ; preds = %if.end
  %cmp4 = icmp eq i32 %size_x, %o_size_x
  %cmp6 = icmp eq i32 %size_y, %o_size_y
  %or.cond = and i1 %cmp4, %cmp6
  br i1 %or.cond, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.then3
  %0 = load ptr, ptr %imgX, align 8
  %mul = mul nsw i32 %size_y, %size_x
  %conv10 = sext i32 %mul to i64
  %mul11 = shl nsw i64 %conv10, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %0, ptr align 1 %buf, i64 %mul11, i1 false)
  br label %if.end194

if.else:                                          ; preds = %if.then3
  %cond.i323 = tail call noundef i32 @llvm.smin.i32(i32 %size_y, i32 %o_size_y)
  %cmp17.not = icmp slt i32 %o_size_y, %size_y
  %sub20 = sub nsw i32 %o_size_y, %size_y
  %shr21 = ashr i32 %sub20, 1
  %dst_offset_y.0 = select i1 %cmp17.not, i32 0, i32 %shr21
  %add42 = add nsw i32 %dst_offset_y.0, %cond.i323
  %cmp43 = icmp sgt i32 %add42, %o_size_y
  %sub46 = sub nsw i32 %o_size_y, %dst_offset_y.0
  %cond49 = select i1 %cmp43, i32 %sub46, i32 %cond.i323
  %cmp50330 = icmp sgt i32 %cond49, 0
  br i1 %cmp50330, label %for.body.lr.ph, label %if.end194

for.body.lr.ph:                                   ; preds = %if.else
  %cmp13.not = icmp slt i32 %o_size_x, %size_x
  %sub = sub nsw i32 %o_size_x, %size_x
  %shr = ashr i32 %sub, 1
  %dst_offset_x.0 = select i1 %cmp13.not, i32 0, i32 %shr
  %cond.i = tail call noundef i32 @llvm.smin.i32(i32 %size_x, i32 %o_size_x)
  %add34 = add nsw i32 %dst_offset_x.0, %cond.i
  %cmp35 = icmp sgt i32 %add34, %o_size_x
  %sub38 = sub nsw i32 %o_size_x, %dst_offset_x.0
  %cond41 = select i1 %cmp35, i32 %sub38, i32 %cond.i
  %idxprom54 = sext i32 %dst_offset_x.0 to i64
  %conv61 = sext i32 %cond41 to i64
  %mul62 = shl nsw i64 %conv61, 1
  %1 = sext i32 %dst_offset_y.0 to i64
  %2 = sext i32 %size_x to i64
  %3 = zext nneg i32 %cond49 to i64
  %invariant.gep = getelementptr ptr, ptr %imgX, i64 %1
  %xtraiter = and i64 %3, 1
  %4 = icmp eq i32 %cond49, 1
  br i1 %4, label %if.end194.loopexit.unr-lcssa, label %for.body.lr.ph.new

for.body.lr.ph.new:                               ; preds = %for.body.lr.ph
  %unroll_iter = and i64 %3, 2147483646
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph.new
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph.new ], [ %indvars.iv.next.1, %for.body ]
  %niter = phi i64 [ 0, %for.body.lr.ph.new ], [ %niter.next.1, %for.body ]
  %gep = getelementptr ptr, ptr %invariant.gep, i64 %indvars.iv
  %5 = load ptr, ptr %gep, align 8
  %arrayidx55 = getelementptr inbounds i16, ptr %5, i64 %idxprom54
  %6 = mul nsw i64 %indvars.iv, %2
  %arrayidx60 = getelementptr inbounds i8, ptr %buf, i64 %6
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %arrayidx55, ptr align 1 %arrayidx60, i64 %mul62, i1 false)
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1
  %gep.1 = getelementptr ptr, ptr %invariant.gep, i64 %indvars.iv.next
  %7 = load ptr, ptr %gep.1, align 8
  %arrayidx55.1 = getelementptr inbounds i16, ptr %7, i64 %idxprom54
  %8 = mul nsw i64 %indvars.iv.next, %2
  %arrayidx60.1 = getelementptr inbounds i8, ptr %buf, i64 %8
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %arrayidx55.1, ptr align 1 %arrayidx60.1, i64 %mul62, i1 false)
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %if.end194.loopexit.unr-lcssa, label %for.body

if.else64:                                        ; preds = %if.end.thread, %if.end
  %conv328 = phi i64 [ %conv326, %if.end.thread ], [ %conv, %if.end ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %ui16)
  %cmp65 = icmp eq i32 %size_x, %o_size_x
  %cmp68 = icmp eq i32 %size_y, %o_size_y
  %or.cond322 = and i1 %cmp65, %cmp68
  br i1 %or.cond322, label %for.cond71.preheader, label %if.else93

for.cond71.preheader:                             ; preds = %if.else64
  %cmp72340 = icmp sgt i32 %size_y, 0
  %cmp77338 = icmp sgt i32 %size_x, 0
  %or.cond380 = and i1 %cmp72340, %cmp77338
  br i1 %or.cond380, label %for.body74.us.preheader, label %if.end193

for.body74.us.preheader:                          ; preds = %for.cond71.preheader
  %9 = sext i32 %symbol_size_in_bytes to i64
  %10 = zext nneg i32 %size_x to i64
  %wide.trip.count373 = zext nneg i32 %size_y to i64
  %wide.trip.count = zext nneg i32 %size_x to i64
  %xtraiter392 = and i64 %wide.trip.count, 1
  %11 = icmp eq i32 %size_x, 1
  %unroll_iter394 = and i64 %wide.trip.count, 2147483646
  %lcmp.mod393.not = icmp eq i64 %xtraiter392, 0
  br label %for.body74.us

for.body74.us:                                    ; preds = %for.body74.us.preheader, %for.cond76.for.inc90_crit_edge.us
  %indvars.iv369 = phi i64 [ 0, %for.body74.us.preheader ], [ %indvars.iv.next370, %for.cond76.for.inc90_crit_edge.us ]
  %12 = mul nuw nsw i64 %indvars.iv369, %10
  %arrayidx84.us = getelementptr inbounds ptr, ptr %imgX, i64 %indvars.iv369
  br i1 %11, label %for.cond76.for.inc90_crit_edge.us.unr-lcssa, label %for.body79.us

for.body79.us:                                    ; preds = %for.body74.us, %for.body79.us
  %indvars.iv364 = phi i64 [ %indvars.iv.next365.1, %for.body79.us ], [ 0, %for.body74.us ]
  %niter395 = phi i64 [ %niter395.next.1, %for.body79.us ], [ 0, %for.body74.us ]
  store i16 0, ptr %ui16, align 2
  %13 = add nuw nsw i64 %indvars.iv364, %12
  %14 = mul nsw i64 %13, %9
  %add.ptr.us = getelementptr inbounds i8, ptr %buf, i64 %14
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %ui16, ptr align 1 %add.ptr.us, i64 %conv328, i1 false)
  %ui16.0.ui16.0.ui16.0.ui16.0..us = load i16, ptr %ui16, align 2
  %15 = load ptr, ptr %arrayidx84.us, align 8
  %arrayidx86.us = getelementptr inbounds i16, ptr %15, i64 %indvars.iv364
  store i16 %ui16.0.ui16.0.ui16.0.ui16.0..us, ptr %arrayidx86.us, align 2
  %indvars.iv.next365 = or disjoint i64 %indvars.iv364, 1
  store i16 0, ptr %ui16, align 2
  %16 = add nuw nsw i64 %indvars.iv.next365, %12
  %17 = mul nsw i64 %16, %9
  %add.ptr.us.1 = getelementptr inbounds i8, ptr %buf, i64 %17
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %ui16, ptr align 1 %add.ptr.us.1, i64 %conv328, i1 false)
  %ui16.0.ui16.0.ui16.0.ui16.0..us.1 = load i16, ptr %ui16, align 2
  %18 = load ptr, ptr %arrayidx84.us, align 8
  %arrayidx86.us.1 = getelementptr inbounds i16, ptr %18, i64 %indvars.iv.next365
  store i16 %ui16.0.ui16.0.ui16.0.ui16.0..us.1, ptr %arrayidx86.us.1, align 2
  %indvars.iv.next365.1 = add nuw nsw i64 %indvars.iv364, 2
  %niter395.next.1 = add i64 %niter395, 2
  %niter395.ncmp.1 = icmp eq i64 %niter395.next.1, %unroll_iter394
  br i1 %niter395.ncmp.1, label %for.cond76.for.inc90_crit_edge.us.unr-lcssa, label %for.body79.us

for.cond76.for.inc90_crit_edge.us.unr-lcssa:      ; preds = %for.body79.us, %for.body74.us
  %indvars.iv364.unr = phi i64 [ 0, %for.body74.us ], [ %indvars.iv.next365.1, %for.body79.us ]
  br i1 %lcmp.mod393.not, label %for.cond76.for.inc90_crit_edge.us, label %for.body79.us.epil

for.body79.us.epil:                               ; preds = %for.cond76.for.inc90_crit_edge.us.unr-lcssa
  store i16 0, ptr %ui16, align 2
  %19 = add nuw nsw i64 %indvars.iv364.unr, %12
  %20 = mul nsw i64 %19, %9
  %add.ptr.us.epil = getelementptr inbounds i8, ptr %buf, i64 %20
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %ui16, ptr align 1 %add.ptr.us.epil, i64 %conv328, i1 false)
  %ui16.0.ui16.0.ui16.0.ui16.0..us.epil = load i16, ptr %ui16, align 2
  %21 = load ptr, ptr %arrayidx84.us, align 8
  %arrayidx86.us.epil = getelementptr inbounds i16, ptr %21, i64 %indvars.iv364.unr
  store i16 %ui16.0.ui16.0.ui16.0.ui16.0..us.epil, ptr %arrayidx86.us.epil, align 2
  br label %for.cond76.for.inc90_crit_edge.us

for.cond76.for.inc90_crit_edge.us:                ; preds = %for.cond76.for.inc90_crit_edge.us.unr-lcssa, %for.body79.us.epil
  %indvars.iv.next370 = add nuw nsw i64 %indvars.iv369, 1
  %exitcond374.not = icmp eq i64 %indvars.iv.next370, %wide.trip.count373
  br i1 %exitcond374.not, label %if.end193, label %for.body74.us

if.else93:                                        ; preds = %if.else64
  %cond.i324 = tail call noundef i32 @llvm.smin.i32(i32 %size_x, i32 %o_size_x)
  %cond.i325 = tail call noundef i32 @llvm.smin.i32(i32 %size_y, i32 %o_size_y)
  %cmp102.not = icmp slt i32 %o_size_x, %size_x
  %sub105 = sub nsw i32 %o_size_x, %size_x
  %shr106 = ashr i32 %sub105, 1
  %dst_offset_x98.0 = select i1 %cmp102.not, i32 0, i32 %shr106
  %cmp108.not = icmp slt i32 %o_size_y, %size_y
  %sub111 = sub nsw i32 %o_size_y, %size_y
  %shr112 = ashr i32 %sub111, 1
  %dst_offset_y99.0 = select i1 %cmp108.not, i32 0, i32 %shr112
  %add130 = add nsw i32 %dst_offset_x98.0, %cond.i324
  %cmp131 = icmp sgt i32 %add130, %o_size_x
  %sub134 = sub nsw i32 %o_size_x, %dst_offset_x98.0
  %cond137 = select i1 %cmp131, i32 %sub134, i32 %cond.i324
  %add138 = add nsw i32 %dst_offset_y99.0, %cond.i325
  %cmp139 = icmp sgt i32 %add138, %o_size_y
  %sub142 = sub nsw i32 %o_size_y, %dst_offset_y99.0
  %cond145 = select i1 %cmp139, i32 %sub142, i32 %cond.i325
  %cmp147332 = icmp sgt i32 %cond145, 0
  br i1 %cmp147332, label %for.body149.lr.ph, label %if.end193

for.body149.lr.ph:                                ; preds = %if.else93
  %idxprom153 = sext i32 %dst_offset_x98.0 to i64
  %conv160 = sext i32 %cond137 to i64
  %mul161 = shl nsw i64 %conv160, 1
  %22 = sext i32 %dst_offset_y99.0 to i64
  %23 = sext i32 %size_x to i64
  %24 = zext nneg i32 %cond145 to i64
  %invariant.gep376 = getelementptr ptr, ptr %imgX, i64 %22
  %xtraiter384 = and i64 %24, 1
  %25 = icmp eq i32 %cond145, 1
  br i1 %25, label %for.cond165.preheader.unr-lcssa, label %for.body149.lr.ph.new

for.body149.lr.ph.new:                            ; preds = %for.body149.lr.ph
  %unroll_iter386 = and i64 %24, 2147483646
  br label %for.body149

for.cond165.preheader.unr-lcssa:                  ; preds = %for.body149, %for.body149.lr.ph
  %indvars.iv348.unr = phi i64 [ 0, %for.body149.lr.ph ], [ %indvars.iv.next349.1, %for.body149 ]
  %lcmp.mod385.not = icmp eq i64 %xtraiter384, 0
  br i1 %lcmp.mod385.not, label %for.cond165.preheader, label %for.body149.epil

for.body149.epil:                                 ; preds = %for.cond165.preheader.unr-lcssa
  %gep377.epil = getelementptr ptr, ptr %invariant.gep376, i64 %indvars.iv348.unr
  %26 = load ptr, ptr %gep377.epil, align 8
  %arrayidx154.epil = getelementptr inbounds i16, ptr %26, i64 %idxprom153
  %27 = mul nsw i64 %indvars.iv348.unr, %23
  %arrayidx159.epil = getelementptr inbounds i8, ptr %buf, i64 %27
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %arrayidx154.epil, ptr align 1 %arrayidx159.epil, i64 %mul161, i1 false)
  br label %for.cond165.preheader

for.cond165.preheader:                            ; preds = %for.cond165.preheader.unr-lcssa, %for.body149.epil
  %cmp173334 = icmp sgt i32 %cond137, 0
  %or.cond381 = select i1 %cmp147332, i1 %cmp173334, i1 false
  br i1 %or.cond381, label %for.body168.us.preheader, label %if.end193

for.body168.us.preheader:                         ; preds = %for.cond165.preheader
  %28 = sext i32 %symbol_size_in_bytes to i64
  %29 = sext i32 %dst_offset_x98.0 to i64
  %30 = zext nneg i32 %cond137 to i64
  %31 = sext i32 %size_x to i64
  %32 = zext nneg i32 %cond145 to i64
  %33 = sext i32 %dst_offset_y99.0 to i64
  %invariant.gep378 = getelementptr ptr, ptr %imgX, i64 %33
  %xtraiter388 = and i64 %30, 1
  %34 = icmp eq i32 %cond137, 1
  %unroll_iter390 = and i64 %30, 2147483646
  %lcmp.mod389.not = icmp eq i64 %xtraiter388, 0
  br label %for.body168.us

for.body168.us:                                   ; preds = %for.body168.us.preheader, %for.cond172.for.inc190_crit_edge.us
  %indvars.iv359 = phi i64 [ 0, %for.body168.us.preheader ], [ %indvars.iv.next360, %for.cond172.for.inc190_crit_edge.us ]
  %35 = mul nsw i64 %indvars.iv359, %31
  %gep379 = getelementptr ptr, ptr %invariant.gep378, i64 %indvars.iv359
  br i1 %34, label %for.cond172.for.inc190_crit_edge.us.unr-lcssa, label %for.body175.us

for.body175.us:                                   ; preds = %for.body168.us, %for.body175.us
  %indvars.iv353 = phi i64 [ %indvars.iv.next354.1, %for.body175.us ], [ 0, %for.body168.us ]
  %niter391 = phi i64 [ %niter391.next.1, %for.body175.us ], [ 0, %for.body168.us ]
  store i16 0, ptr %ui16, align 2
  %36 = add nsw i64 %indvars.iv353, %35
  %37 = mul nsw i64 %36, %28
  %add.ptr179.us = getelementptr inbounds i8, ptr %buf, i64 %37
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %ui16, ptr align 1 %add.ptr179.us, i64 %conv328, i1 false)
  %ui16.0.ui16.0.ui16.0.ui16.0.217.us = load i16, ptr %ui16, align 2
  %38 = load ptr, ptr %gep379, align 8
  %39 = getelementptr i16, ptr %38, i64 %indvars.iv353
  %arrayidx186.us = getelementptr i16, ptr %39, i64 %29
  store i16 %ui16.0.ui16.0.ui16.0.ui16.0.217.us, ptr %arrayidx186.us, align 2
  %indvars.iv.next354 = or disjoint i64 %indvars.iv353, 1
  store i16 0, ptr %ui16, align 2
  %40 = add nsw i64 %indvars.iv.next354, %35
  %41 = mul nsw i64 %40, %28
  %add.ptr179.us.1 = getelementptr inbounds i8, ptr %buf, i64 %41
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %ui16, ptr align 1 %add.ptr179.us.1, i64 %conv328, i1 false)
  %ui16.0.ui16.0.ui16.0.ui16.0.217.us.1 = load i16, ptr %ui16, align 2
  %42 = load ptr, ptr %gep379, align 8
  %43 = getelementptr i16, ptr %42, i64 %indvars.iv.next354
  %arrayidx186.us.1 = getelementptr i16, ptr %43, i64 %29
  store i16 %ui16.0.ui16.0.ui16.0.ui16.0.217.us.1, ptr %arrayidx186.us.1, align 2
  %indvars.iv.next354.1 = add nuw nsw i64 %indvars.iv353, 2
  %niter391.next.1 = add i64 %niter391, 2
  %niter391.ncmp.1.not = icmp eq i64 %niter391.next.1, %unroll_iter390
  br i1 %niter391.ncmp.1.not, label %for.cond172.for.inc190_crit_edge.us.unr-lcssa, label %for.body175.us

for.cond172.for.inc190_crit_edge.us.unr-lcssa:    ; preds = %for.body175.us, %for.body168.us
  %indvars.iv353.unr = phi i64 [ 0, %for.body168.us ], [ %indvars.iv.next354.1, %for.body175.us ]
  br i1 %lcmp.mod389.not, label %for.cond172.for.inc190_crit_edge.us, label %for.body175.us.epil

for.body175.us.epil:                              ; preds = %for.cond172.for.inc190_crit_edge.us.unr-lcssa
  store i16 0, ptr %ui16, align 2
  %44 = add nsw i64 %indvars.iv353.unr, %35
  %45 = mul nsw i64 %44, %28
  %add.ptr179.us.epil = getelementptr inbounds i8, ptr %buf, i64 %45
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %ui16, ptr align 1 %add.ptr179.us.epil, i64 %conv328, i1 false)
  %ui16.0.ui16.0.ui16.0.ui16.0.217.us.epil = load i16, ptr %ui16, align 2
  %46 = load ptr, ptr %gep379, align 8
  %47 = getelementptr i16, ptr %46, i64 %indvars.iv353.unr
  %arrayidx186.us.epil = getelementptr i16, ptr %47, i64 %29
  store i16 %ui16.0.ui16.0.ui16.0.ui16.0.217.us.epil, ptr %arrayidx186.us.epil, align 2
  br label %for.cond172.for.inc190_crit_edge.us

for.cond172.for.inc190_crit_edge.us:              ; preds = %for.cond172.for.inc190_crit_edge.us.unr-lcssa, %for.body175.us.epil
  %indvars.iv.next360 = add nuw nsw i64 %indvars.iv359, 1
  %cmp166.us = icmp ult i64 %indvars.iv.next360, %32
  br i1 %cmp166.us, label %for.body168.us, label %if.end193

for.body149:                                      ; preds = %for.body149, %for.body149.lr.ph.new
  %indvars.iv348 = phi i64 [ 0, %for.body149.lr.ph.new ], [ %indvars.iv.next349.1, %for.body149 ]
  %niter387 = phi i64 [ 0, %for.body149.lr.ph.new ], [ %niter387.next.1, %for.body149 ]
  %gep377 = getelementptr ptr, ptr %invariant.gep376, i64 %indvars.iv348
  %48 = load ptr, ptr %gep377, align 8
  %arrayidx154 = getelementptr inbounds i16, ptr %48, i64 %idxprom153
  %49 = mul nsw i64 %indvars.iv348, %23
  %arrayidx159 = getelementptr inbounds i8, ptr %buf, i64 %49
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %arrayidx154, ptr align 1 %arrayidx159, i64 %mul161, i1 false)
  %indvars.iv.next349 = or disjoint i64 %indvars.iv348, 1
  %gep377.1 = getelementptr ptr, ptr %invariant.gep376, i64 %indvars.iv.next349
  %50 = load ptr, ptr %gep377.1, align 8
  %arrayidx154.1 = getelementptr inbounds i16, ptr %50, i64 %idxprom153
  %51 = mul nsw i64 %indvars.iv.next349, %23
  %arrayidx159.1 = getelementptr inbounds i8, ptr %buf, i64 %51
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %arrayidx154.1, ptr align 1 %arrayidx159.1, i64 %mul161, i1 false)
  %indvars.iv.next349.1 = add nuw nsw i64 %indvars.iv348, 2
  %niter387.next.1 = add i64 %niter387, 2
  %niter387.ncmp.1.not = icmp eq i64 %niter387.next.1, %unroll_iter386
  br i1 %niter387.ncmp.1.not, label %for.cond165.preheader.unr-lcssa, label %for.body149

if.end193:                                        ; preds = %for.cond172.for.inc190_crit_edge.us, %for.cond76.for.inc90_crit_edge.us, %if.else93, %for.cond165.preheader, %for.cond71.preheader
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %ui16)
  br label %if.end194

if.end194.loopexit.unr-lcssa:                     ; preds = %for.body, %for.body.lr.ph
  %indvars.iv.unr = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next.1, %for.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %if.end194, label %for.body.epil

for.body.epil:                                    ; preds = %if.end194.loopexit.unr-lcssa
  %gep.epil = getelementptr ptr, ptr %invariant.gep, i64 %indvars.iv.unr
  %52 = load ptr, ptr %gep.epil, align 8
  %arrayidx55.epil = getelementptr inbounds i16, ptr %52, i64 %idxprom54
  %53 = mul nsw i64 %indvars.iv.unr, %2
  %arrayidx60.epil = getelementptr inbounds i8, ptr %buf, i64 %53
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %arrayidx55.epil, ptr align 1 %arrayidx60.epil, i64 %mul62, i1 false)
  br label %if.end194

if.end194:                                        ; preds = %for.body.epil, %if.end194.loopexit.unr-lcssa, %if.else, %if.then8, %if.end193
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @buf2img_bitshift(ptr nocapture noundef readonly %imgX, ptr nocapture noundef readonly %buf, i32 noundef %size_x, i32 noundef %size_y, i32 noundef %o_size_x, i32 noundef %o_size_y, i32 noundef %symbol_size_in_bytes, i32 noundef %bitshift) #2 {
entry:
  %ui16 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %ui16)
  %shl = shl i32 %symbol_size_in_bytes, 3
  %sub = sub nsw i32 %shl, %bitshift
  %cmp = icmp sgt i32 %sub, 16
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @error(ptr noundef nonnull @.str, i32 noundef 500) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %cmp86 = icmp eq i32 %size_x, %o_size_x
  %cmp88 = icmp eq i32 %size_y, %o_size_y
  %or.cond = and i1 %cmp86, %cmp88
  br i1 %or.cond, label %for.cond91.preheader, label %if.else118

for.cond91.preheader:                             ; preds = %if.end
  %cmp92346 = icmp sgt i32 %size_y, 0
  br i1 %cmp92346, label %for.body94.lr.ph, label %if.end193

for.body94.lr.ph:                                 ; preds = %for.cond91.preheader
  %cmp97344 = icmp sgt i32 %size_x, 0
  %conv104 = sext i32 %symbol_size_in_bytes to i64
  %sub1.i = sub nsw i32 0, %bitshift
  %sub.i = add nsw i32 %bitshift, -1
  %shl.i = shl nuw i32 1, %sub.i
  br i1 %cmp97344, label %for.body94.lr.ph.split.us, label %if.end193

for.body94.lr.ph.split.us:                        ; preds = %for.body94.lr.ph
  %cmp.i = icmp sgt i32 %bitshift, 0
  %0 = zext nneg i32 %size_x to i64
  %wide.trip.count410 = zext nneg i32 %size_y to i64
  %wide.trip.count404 = zext nneg i32 %size_x to i64
  br i1 %cmp.i, label %for.body94.us.us, label %for.body94.us.preheader

for.body94.us.preheader:                          ; preds = %for.body94.lr.ph.split.us
  %xtraiter423 = and i64 %wide.trip.count404, 1
  %1 = icmp eq i32 %size_x, 1
  %unroll_iter425 = and i64 %wide.trip.count404, 2147483646
  %lcmp.mod424.not = icmp eq i64 %xtraiter423, 0
  br label %for.body94.us

for.body94.us.us:                                 ; preds = %for.body94.lr.ph.split.us, %for.cond96.for.inc115_crit_edge.split.us.us.us
  %indvars.iv406 = phi i64 [ %indvars.iv.next407, %for.cond96.for.inc115_crit_edge.split.us.us.us ], [ 0, %for.body94.lr.ph.split.us ]
  %2 = mul nuw nsw i64 %indvars.iv406, %0
  %arrayidx109.us.us = getelementptr inbounds ptr, ptr %imgX, i64 %indvars.iv406
  br label %for.body99.us.us.us

for.body99.us.us.us:                              ; preds = %for.body99.us.us.us, %for.body94.us.us
  %indvars.iv399 = phi i64 [ %indvars.iv.next400, %for.body99.us.us.us ], [ 0, %for.body94.us.us ]
  store i16 0, ptr %ui16, align 2
  %3 = add nuw nsw i64 %indvars.iv399, %2
  %4 = mul nsw i64 %3, %conv104
  %add.ptr103.us.us.us = getelementptr inbounds i8, ptr %buf, i64 %4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %ui16, ptr align 1 %add.ptr103.us.us.us, i64 %conv104, i1 false)
  %ui16.0.ui16.0.ui16.0.ui16.0.214.us.us.us = load i16, ptr %ui16, align 2
  %conv105.us.us.us = zext i16 %ui16.0.ui16.0.ui16.0.ui16.0.214.us.us.us to i32
  %add.i.us.us.us = add nuw nsw i32 %shl.i, %conv105.us.us.us
  %shr.i.us.us.us = ashr i32 %add.i.us.us.us, %bitshift
  %conv107.us.us.us = trunc i32 %shr.i.us.us.us to i16
  %5 = load ptr, ptr %arrayidx109.us.us, align 8
  %arrayidx111.us.us.us = getelementptr inbounds i16, ptr %5, i64 %indvars.iv399
  store i16 %conv107.us.us.us, ptr %arrayidx111.us.us.us, align 2
  %indvars.iv.next400 = add nuw nsw i64 %indvars.iv399, 1
  %exitcond405.not = icmp eq i64 %indvars.iv.next400, %wide.trip.count404
  br i1 %exitcond405.not, label %for.cond96.for.inc115_crit_edge.split.us.us.us, label %for.body99.us.us.us

for.cond96.for.inc115_crit_edge.split.us.us.us:   ; preds = %for.body99.us.us.us
  %indvars.iv.next407 = add nuw nsw i64 %indvars.iv406, 1
  %exitcond411.not = icmp eq i64 %indvars.iv.next407, %wide.trip.count410
  br i1 %exitcond411.not, label %if.end193, label %for.body94.us.us

for.body94.us:                                    ; preds = %for.body94.us.preheader, %for.cond96.for.inc115_crit_edge.split.us361
  %indvars.iv393 = phi i64 [ %indvars.iv.next394, %for.cond96.for.inc115_crit_edge.split.us361 ], [ 0, %for.body94.us.preheader ]
  %6 = mul nuw nsw i64 %indvars.iv393, %0
  %arrayidx109.us = getelementptr inbounds ptr, ptr %imgX, i64 %indvars.iv393
  br i1 %1, label %for.cond96.for.inc115_crit_edge.split.us361.unr-lcssa, label %for.body99.us348

for.body99.us348:                                 ; preds = %for.body94.us, %for.body99.us348
  %indvars.iv388 = phi i64 [ %indvars.iv.next389.1, %for.body99.us348 ], [ 0, %for.body94.us ]
  %niter426 = phi i64 [ %niter426.next.1, %for.body99.us348 ], [ 0, %for.body94.us ]
  store i16 0, ptr %ui16, align 2
  %7 = add nuw nsw i64 %indvars.iv388, %6
  %8 = mul nsw i64 %7, %conv104
  %add.ptr103.us353 = getelementptr inbounds i8, ptr %buf, i64 %8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %ui16, ptr align 1 %add.ptr103.us353, i64 %conv104, i1 false)
  %ui16.0.ui16.0.ui16.0.ui16.0.214.us354 = load i16, ptr %ui16, align 2
  %conv105.us355 = zext i16 %ui16.0.ui16.0.ui16.0.ui16.0.214.us354 to i32
  %shl2.i.us = shl i32 %conv105.us355, %sub1.i
  %conv107.us356 = trunc i32 %shl2.i.us to i16
  %9 = load ptr, ptr %arrayidx109.us, align 8
  %arrayidx111.us358 = getelementptr inbounds i16, ptr %9, i64 %indvars.iv388
  store i16 %conv107.us356, ptr %arrayidx111.us358, align 2
  %indvars.iv.next389 = or disjoint i64 %indvars.iv388, 1
  store i16 0, ptr %ui16, align 2
  %10 = add nuw nsw i64 %indvars.iv.next389, %6
  %11 = mul nsw i64 %10, %conv104
  %add.ptr103.us353.1 = getelementptr inbounds i8, ptr %buf, i64 %11
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %ui16, ptr align 1 %add.ptr103.us353.1, i64 %conv104, i1 false)
  %ui16.0.ui16.0.ui16.0.ui16.0.214.us354.1 = load i16, ptr %ui16, align 2
  %conv105.us355.1 = zext i16 %ui16.0.ui16.0.ui16.0.ui16.0.214.us354.1 to i32
  %shl2.i.us.1 = shl i32 %conv105.us355.1, %sub1.i
  %conv107.us356.1 = trunc i32 %shl2.i.us.1 to i16
  %12 = load ptr, ptr %arrayidx109.us, align 8
  %arrayidx111.us358.1 = getelementptr inbounds i16, ptr %12, i64 %indvars.iv.next389
  store i16 %conv107.us356.1, ptr %arrayidx111.us358.1, align 2
  %indvars.iv.next389.1 = add nuw nsw i64 %indvars.iv388, 2
  %niter426.next.1 = add i64 %niter426, 2
  %niter426.ncmp.1 = icmp eq i64 %niter426.next.1, %unroll_iter425
  br i1 %niter426.ncmp.1, label %for.cond96.for.inc115_crit_edge.split.us361.unr-lcssa, label %for.body99.us348

for.cond96.for.inc115_crit_edge.split.us361.unr-lcssa: ; preds = %for.body99.us348, %for.body94.us
  %indvars.iv388.unr = phi i64 [ 0, %for.body94.us ], [ %indvars.iv.next389.1, %for.body99.us348 ]
  br i1 %lcmp.mod424.not, label %for.cond96.for.inc115_crit_edge.split.us361, label %for.body99.us348.epil

for.body99.us348.epil:                            ; preds = %for.cond96.for.inc115_crit_edge.split.us361.unr-lcssa
  store i16 0, ptr %ui16, align 2
  %13 = add nuw nsw i64 %indvars.iv388.unr, %6
  %14 = mul nsw i64 %13, %conv104
  %add.ptr103.us353.epil = getelementptr inbounds i8, ptr %buf, i64 %14
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %ui16, ptr align 1 %add.ptr103.us353.epil, i64 %conv104, i1 false)
  %ui16.0.ui16.0.ui16.0.ui16.0.214.us354.epil = load i16, ptr %ui16, align 2
  %conv105.us355.epil = zext i16 %ui16.0.ui16.0.ui16.0.ui16.0.214.us354.epil to i32
  %shl2.i.us.epil = shl i32 %conv105.us355.epil, %sub1.i
  %conv107.us356.epil = trunc i32 %shl2.i.us.epil to i16
  %15 = load ptr, ptr %arrayidx109.us, align 8
  %arrayidx111.us358.epil = getelementptr inbounds i16, ptr %15, i64 %indvars.iv388.unr
  store i16 %conv107.us356.epil, ptr %arrayidx111.us358.epil, align 2
  br label %for.cond96.for.inc115_crit_edge.split.us361

for.cond96.for.inc115_crit_edge.split.us361:      ; preds = %for.cond96.for.inc115_crit_edge.split.us361.unr-lcssa, %for.body99.us348.epil
  %indvars.iv.next394 = add nuw nsw i64 %indvars.iv393, 1
  %exitcond398.not = icmp eq i64 %indvars.iv.next394, %wide.trip.count410
  br i1 %exitcond398.not, label %if.end193, label %for.body94.us

if.else118:                                       ; preds = %if.end
  %cond.i310 = tail call noundef i32 @llvm.smin.i32(i32 %size_x, i32 %o_size_x)
  %cond.i311 = tail call noundef i32 @llvm.smin.i32(i32 %size_y, i32 %o_size_y)
  %cmp121.not = icmp slt i32 %o_size_x, %size_x
  %sub124 = sub nsw i32 %o_size_x, %size_x
  %shr125 = ashr i32 %sub124, 1
  %dst_offset_x.0 = select i1 %cmp121.not, i32 0, i32 %shr125
  %cmp127.not = icmp slt i32 %o_size_y, %size_y
  %sub130 = sub nsw i32 %o_size_y, %size_y
  %shr131 = ashr i32 %sub130, 1
  %dst_offset_y.0 = select i1 %cmp127.not, i32 0, i32 %shr131
  %add145 = add i32 %dst_offset_x.0, %cond.i310
  %cmp146 = icmp sgt i32 %add145, %o_size_x
  %sub149 = sub i32 %o_size_x, %dst_offset_x.0
  %cond152 = select i1 %cmp146, i32 %sub149, i32 %cond.i310
  %add153 = add nsw i32 %dst_offset_y.0, %cond.i311
  %cmp154 = icmp sgt i32 %add153, %o_size_y
  %sub157 = sub nsw i32 %o_size_y, %dst_offset_y.0
  %cond160 = select i1 %cmp154, i32 %sub157, i32 %cond.i311
  %cmp162326 = icmp sgt i32 %cond160, 0
  br i1 %cmp162326, label %for.body164.lr.ph, label %if.end193

for.body164.lr.ph:                                ; preds = %if.else118
  %cmp169324 = icmp sgt i32 %cond152, 0
  %conv176 = sext i32 %symbol_size_in_bytes to i64
  %sub1.i314 = sub nsw i32 0, %bitshift
  %sub.i318 = add nsw i32 %bitshift, -1
  %shl.i319 = shl nuw i32 1, %sub.i318
  br i1 %cmp169324, label %for.body164.lr.ph.split.us, label %if.end193

for.body164.lr.ph.split.us:                       ; preds = %for.body164.lr.ph
  %cmp.i312 = icmp sgt i32 %bitshift, 0
  %16 = sext i32 %dst_offset_x.0 to i64
  %17 = zext nneg i32 %cond152 to i64
  %18 = sext i32 %size_x to i64
  br i1 %cmp.i312, label %for.body164.us.us.preheader, label %for.body164.us.preheader

for.body164.us.preheader:                         ; preds = %for.body164.lr.ph.split.us
  %19 = zext nneg i32 %cond160 to i64
  %20 = sext i32 %dst_offset_y.0 to i64
  %invariant.gep = getelementptr ptr, ptr %imgX, i64 %20
  %xtraiter = and i64 %17, 1
  %21 = icmp eq i32 %cond152, 1
  %unroll_iter = and i64 %17, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %for.body164.us

for.body164.us.us.preheader:                      ; preds = %for.body164.lr.ph.split.us
  %22 = sext i32 %dst_offset_y.0 to i64
  %23 = zext nneg i32 %cond160 to i64
  %invariant.gep415 = getelementptr ptr, ptr %imgX, i64 %22
  br label %for.body164.us.us

for.body164.us.us:                                ; preds = %for.body164.us.us.preheader, %for.cond168.for.inc189_crit_edge.split.us.us.us
  %indvars.iv383 = phi i64 [ 0, %for.body164.us.us.preheader ], [ %indvars.iv.next384, %for.cond168.for.inc189_crit_edge.split.us.us.us ]
  %24 = mul nsw i64 %indvars.iv383, %18
  %gep416 = getelementptr ptr, ptr %invariant.gep415, i64 %indvars.iv383
  br label %for.body171.us.us.us

for.body171.us.us.us:                             ; preds = %for.body171.us.us.us, %for.body164.us.us
  %indvars.iv377 = phi i64 [ %indvars.iv.next378, %for.body171.us.us.us ], [ 0, %for.body164.us.us ]
  store i16 0, ptr %ui16, align 2
  %25 = add nsw i64 %indvars.iv377, %24
  %26 = mul nsw i64 %25, %conv176
  %add.ptr175.us.us.us = getelementptr inbounds i8, ptr %buf, i64 %26
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %ui16, ptr align 1 %add.ptr175.us.us.us, i64 %conv176, i1 false)
  %ui16.0.ui16.0.ui16.0.ui16.0.215.us.us.us = load i16, ptr %ui16, align 2
  %conv177.us.us.us = zext i16 %ui16.0.ui16.0.ui16.0.ui16.0.215.us.us.us to i32
  %add.i320.us.us.us = add nuw nsw i32 %shl.i319, %conv177.us.us.us
  %shr.i321.us.us.us = ashr i32 %add.i320.us.us.us, %bitshift
  %conv179.us.us.us = trunc i32 %shr.i321.us.us.us to i16
  %27 = load ptr, ptr %gep416, align 8
  %28 = getelementptr i16, ptr %27, i64 %indvars.iv377
  %arrayidx185.us.us.us = getelementptr i16, ptr %28, i64 %16
  store i16 %conv179.us.us.us, ptr %arrayidx185.us.us.us, align 2
  %indvars.iv.next378 = add nuw nsw i64 %indvars.iv377, 1
  %cmp169.us.us.us = icmp ult i64 %indvars.iv.next378, %17
  br i1 %cmp169.us.us.us, label %for.body171.us.us.us, label %for.cond168.for.inc189_crit_edge.split.us.us.us

for.cond168.for.inc189_crit_edge.split.us.us.us:  ; preds = %for.body171.us.us.us
  %indvars.iv.next384 = add nuw nsw i64 %indvars.iv383, 1
  %cmp162.us.us = icmp ult i64 %indvars.iv.next384, %23
  br i1 %cmp162.us.us, label %for.body164.us.us, label %if.end193

for.body164.us:                                   ; preds = %for.body164.us.preheader, %for.cond168.for.inc189_crit_edge.split.us342
  %indvars.iv372 = phi i64 [ 0, %for.body164.us.preheader ], [ %indvars.iv.next373, %for.cond168.for.inc189_crit_edge.split.us342 ]
  %29 = mul nsw i64 %indvars.iv372, %18
  %gep = getelementptr ptr, ptr %invariant.gep, i64 %indvars.iv372
  br i1 %21, label %for.cond168.for.inc189_crit_edge.split.us342.unr-lcssa, label %for.body171.us328

for.body171.us328:                                ; preds = %for.body164.us, %for.body171.us328
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %for.body171.us328 ], [ 0, %for.body164.us ]
  %niter = phi i64 [ %niter.next.1, %for.body171.us328 ], [ 0, %for.body164.us ]
  store i16 0, ptr %ui16, align 2
  %30 = add nsw i64 %indvars.iv, %29
  %31 = mul nsw i64 %30, %conv176
  %add.ptr175.us333 = getelementptr inbounds i8, ptr %buf, i64 %31
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %ui16, ptr align 1 %add.ptr175.us333, i64 %conv176, i1 false)
  %ui16.0.ui16.0.ui16.0.ui16.0.215.us334 = load i16, ptr %ui16, align 2
  %conv177.us335 = zext i16 %ui16.0.ui16.0.ui16.0.ui16.0.215.us334 to i32
  %shl2.i315.us = shl i32 %conv177.us335, %sub1.i314
  %conv179.us336 = trunc i32 %shl2.i315.us to i16
  %32 = load ptr, ptr %gep, align 8
  %33 = getelementptr i16, ptr %32, i64 %indvars.iv
  %arrayidx185.us339 = getelementptr i16, ptr %33, i64 %16
  store i16 %conv179.us336, ptr %arrayidx185.us339, align 2
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1
  store i16 0, ptr %ui16, align 2
  %34 = add nsw i64 %indvars.iv.next, %29
  %35 = mul nsw i64 %34, %conv176
  %add.ptr175.us333.1 = getelementptr inbounds i8, ptr %buf, i64 %35
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %ui16, ptr align 1 %add.ptr175.us333.1, i64 %conv176, i1 false)
  %ui16.0.ui16.0.ui16.0.ui16.0.215.us334.1 = load i16, ptr %ui16, align 2
  %conv177.us335.1 = zext i16 %ui16.0.ui16.0.ui16.0.ui16.0.215.us334.1 to i32
  %shl2.i315.us.1 = shl i32 %conv177.us335.1, %sub1.i314
  %conv179.us336.1 = trunc i32 %shl2.i315.us.1 to i16
  %36 = load ptr, ptr %gep, align 8
  %37 = getelementptr i16, ptr %36, i64 %indvars.iv.next
  %arrayidx185.us339.1 = getelementptr i16, ptr %37, i64 %16
  store i16 %conv179.us336.1, ptr %arrayidx185.us339.1, align 2
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %for.cond168.for.inc189_crit_edge.split.us342.unr-lcssa, label %for.body171.us328

for.cond168.for.inc189_crit_edge.split.us342.unr-lcssa: ; preds = %for.body171.us328, %for.body164.us
  %indvars.iv.unr = phi i64 [ 0, %for.body164.us ], [ %indvars.iv.next.1, %for.body171.us328 ]
  br i1 %lcmp.mod.not, label %for.cond168.for.inc189_crit_edge.split.us342, label %for.body171.us328.epil

for.body171.us328.epil:                           ; preds = %for.cond168.for.inc189_crit_edge.split.us342.unr-lcssa
  store i16 0, ptr %ui16, align 2
  %38 = add nsw i64 %indvars.iv.unr, %29
  %39 = mul nsw i64 %38, %conv176
  %add.ptr175.us333.epil = getelementptr inbounds i8, ptr %buf, i64 %39
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %ui16, ptr align 1 %add.ptr175.us333.epil, i64 %conv176, i1 false)
  %ui16.0.ui16.0.ui16.0.ui16.0.215.us334.epil = load i16, ptr %ui16, align 2
  %conv177.us335.epil = zext i16 %ui16.0.ui16.0.ui16.0.ui16.0.215.us334.epil to i32
  %shl2.i315.us.epil = shl i32 %conv177.us335.epil, %sub1.i314
  %conv179.us336.epil = trunc i32 %shl2.i315.us.epil to i16
  %40 = load ptr, ptr %gep, align 8
  %41 = getelementptr i16, ptr %40, i64 %indvars.iv.unr
  %arrayidx185.us339.epil = getelementptr i16, ptr %41, i64 %16
  store i16 %conv179.us336.epil, ptr %arrayidx185.us339.epil, align 2
  br label %for.cond168.for.inc189_crit_edge.split.us342

for.cond168.for.inc189_crit_edge.split.us342:     ; preds = %for.cond168.for.inc189_crit_edge.split.us342.unr-lcssa, %for.body171.us328.epil
  %indvars.iv.next373 = add nuw nsw i64 %indvars.iv372, 1
  %cmp162.us = icmp ult i64 %indvars.iv.next373, %19
  br i1 %cmp162.us, label %for.body164.us, label %if.end193

if.end193:                                        ; preds = %for.cond168.for.inc189_crit_edge.split.us342, %for.cond168.for.inc189_crit_edge.split.us.us.us, %for.cond96.for.inc115_crit_edge.split.us361, %for.cond96.for.inc115_crit_edge.split.us.us.us, %for.body164.lr.ph, %for.body94.lr.ph, %if.else118, %for.cond91.preheader
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %ui16)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @fillPlane(ptr nocapture noundef readonly %imgX, i32 noundef %nVal, i32 noundef %size_x, i32 noundef %size_y) local_unnamed_addr #4 {
entry:
  %cmp15 = icmp sgt i32 %size_y, 0
  br i1 %cmp15, label %for.cond1.preheader.lr.ph, label %for.end8

for.cond1.preheader.lr.ph:                        ; preds = %entry
  %cmp213 = icmp sgt i32 %size_x, 0
  %conv = trunc i32 %nVal to i16
  br i1 %cmp213, label %for.cond1.preheader.us.preheader, label %for.end8

for.cond1.preheader.us.preheader:                 ; preds = %for.cond1.preheader.lr.ph
  %wide.trip.count22 = zext nneg i32 %size_y to i64
  %wide.trip.count = zext nneg i32 %size_x to i64
  %xtraiter = and i64 %wide.trip.count, 3
  %0 = icmp ult i32 %size_x, 4
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %for.cond1.preheader.us

for.cond1.preheader.us:                           ; preds = %for.cond1.preheader.us.preheader, %for.cond1.for.inc6_crit_edge.us
  %indvars.iv19 = phi i64 [ 0, %for.cond1.preheader.us.preheader ], [ %indvars.iv.next20, %for.cond1.for.inc6_crit_edge.us ]
  %arrayidx.us = getelementptr inbounds ptr, ptr %imgX, i64 %indvars.iv19
  br i1 %0, label %for.cond1.for.inc6_crit_edge.us.unr-lcssa, label %for.body3.us

for.body3.us:                                     ; preds = %for.cond1.preheader.us, %for.body3.us
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %for.body3.us ], [ 0, %for.cond1.preheader.us ]
  %niter = phi i64 [ %niter.next.3, %for.body3.us ], [ 0, %for.cond1.preheader.us ]
  %1 = load ptr, ptr %arrayidx.us, align 8
  %arrayidx5.us = getelementptr inbounds i16, ptr %1, i64 %indvars.iv
  store i16 %conv, ptr %arrayidx5.us, align 2
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1
  %2 = load ptr, ptr %arrayidx.us, align 8
  %arrayidx5.us.1 = getelementptr inbounds i16, ptr %2, i64 %indvars.iv.next
  store i16 %conv, ptr %arrayidx5.us.1, align 2
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2
  %3 = load ptr, ptr %arrayidx.us, align 8
  %arrayidx5.us.2 = getelementptr inbounds i16, ptr %3, i64 %indvars.iv.next.1
  store i16 %conv, ptr %arrayidx5.us.2, align 2
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3
  %4 = load ptr, ptr %arrayidx.us, align 8
  %arrayidx5.us.3 = getelementptr inbounds i16, ptr %4, i64 %indvars.iv.next.2
  store i16 %conv, ptr %arrayidx5.us.3, align 2
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4
  %niter.next.3 = add i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %for.cond1.for.inc6_crit_edge.us.unr-lcssa, label %for.body3.us

for.cond1.for.inc6_crit_edge.us.unr-lcssa:        ; preds = %for.body3.us, %for.cond1.preheader.us
  %indvars.iv.unr = phi i64 [ 0, %for.cond1.preheader.us ], [ %indvars.iv.next.3, %for.body3.us ]
  br i1 %lcmp.mod.not, label %for.cond1.for.inc6_crit_edge.us, label %for.body3.us.epil

for.body3.us.epil:                                ; preds = %for.cond1.for.inc6_crit_edge.us.unr-lcssa, %for.body3.us.epil
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %for.body3.us.epil ], [ %indvars.iv.unr, %for.cond1.for.inc6_crit_edge.us.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %for.body3.us.epil ], [ 0, %for.cond1.for.inc6_crit_edge.us.unr-lcssa ]
  %5 = load ptr, ptr %arrayidx.us, align 8
  %arrayidx5.us.epil = getelementptr inbounds i16, ptr %5, i64 %indvars.iv.epil
  store i16 %conv, ptr %arrayidx5.us.epil, align 2
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %for.cond1.for.inc6_crit_edge.us, label %for.body3.us.epil, !llvm.loop !7

for.cond1.for.inc6_crit_edge.us:                  ; preds = %for.body3.us.epil, %for.cond1.for.inc6_crit_edge.us.unr-lcssa
  %indvars.iv.next20 = add nuw nsw i64 %indvars.iv19, 1
  %exitcond23.not = icmp eq i64 %indvars.iv.next20, %wide.trip.count22
  br i1 %exitcond23.not, label %for.end8, label %for.cond1.preheader.us

for.end8:                                         ; preds = %for.cond1.for.inc6_crit_edge.us, %for.cond1.preheader.lr.ph, %entry
  ret void
}

declare void @error(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: nounwind uwtable
define dso_local void @AllocateFrameMemory(ptr nocapture noundef writeonly %p_Vid, ptr nocapture noundef readonly %p_Inp, ptr nocapture noundef readonly %source) local_unnamed_addr #2 {
entry:
  %size = getelementptr inbounds i8, ptr %source, i64 84
  %0 = load i32, ptr %size, align 4
  %pic_unit_size_shift3 = getelementptr inbounds i8, ptr %source, i64 128
  %1 = load i32, ptr %pic_unit_size_shift3, align 8
  %mul = mul nsw i32 %1, %0
  %conv = sext i32 %mul to i64
  %call = tail call noalias ptr @malloc(i64 noundef %conv) #13
  %buf = getelementptr inbounds i8, ptr %p_Vid, i64 849288
  store ptr %call, ptr %buf, align 8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @no_mem_exit(ptr noundef nonnull @.str.3) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %is_interleaved = getelementptr inbounds i8, ptr %p_Inp, i64 1988
  %2 = load i32, ptr %is_interleaved, align 4
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end12, label %if.then2

if.then2:                                         ; preds = %if.end
  %3 = load i32, ptr %size, align 4
  %4 = load i32, ptr %pic_unit_size_shift3, align 8
  %mul5 = mul nsw i32 %4, %3
  %conv6 = sext i32 %mul5 to i64
  %call7 = tail call noalias ptr @malloc(i64 noundef %conv6) #13
  %ibuf = getelementptr inbounds i8, ptr %p_Vid, i64 849296
  store ptr %call7, ptr %ibuf, align 8
  %cmp8 = icmp eq ptr %call7, null
  br i1 %cmp8, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.then2
  tail call void @no_mem_exit(ptr noundef nonnull @.str.4) #12
  br label %if.end12

if.end12:                                         ; preds = %if.then2, %if.then10, %if.end
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

declare void @no_mem_exit(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind willreturn uwtable
define dso_local void @DeleteFrameMemory(ptr nocapture noundef readonly %p_Vid) local_unnamed_addr #8 {
entry:
  %buf = getelementptr inbounds i8, ptr %p_Vid, i64 849288
  %0 = load ptr, ptr %buf, align 8
  %cmp.not = icmp eq ptr %0, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @free(ptr noundef nonnull %0) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %ibuf = getelementptr inbounds i8, ptr %p_Vid, i64 849296
  %1 = load ptr, ptr %ibuf, align 8
  %cmp2.not = icmp eq ptr %1, null
  br i1 %cmp2.not, label %if.end5, label %if.then3

if.then3:                                         ; preds = %if.end
  tail call void @free(ptr noundef nonnull %1) #12
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define dso_local i32 @read_one_frame(ptr nocapture noundef %p_Vid, ptr noundef %input_file, i32 noundef %FrameNoInFile, i32 noundef %HeaderSize, ptr noundef %source, ptr nocapture noundef readonly %output, ptr nocapture noundef readonly %pImage) local_unnamed_addr #2 {
entry:
  %0 = load ptr, ptr %p_Vid, align 8
  %pic_unit_size_shift3 = getelementptr inbounds i8, ptr %source, i64 128
  %1 = load i32, ptr %pic_unit_size_shift3, align 8
  %size_cmp = getelementptr inbounds i8, ptr %source, i64 72
  %2 = load i32, ptr %size_cmp, align 8
  %mul = mul i32 %2, %1
  %arrayidx3 = getelementptr inbounds i8, ptr %source, i64 76
  %3 = load i32, ptr %arrayidx3, align 4
  %mul4 = mul i32 %3, %1
  %color_model = getelementptr inbounds i8, ptr %source, i64 4
  %4 = load i32, ptr %color_model, align 4
  %cmp = icmp eq i32 %4, 1
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %5 = load i32, ptr %source, align 8
  %cmp5 = icmp eq i32 %5, 3
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %6 = phi i1 [ false, %entry ], [ %cmp5, %land.rhs ]
  %is_concatenated = getelementptr inbounds i8, ptr %input_file, i64 912
  %7 = load i32, ptr %is_concatenated, align 8
  %cmp6 = icmp eq i32 %7, 0
  br i1 %cmp6, label %if.then, label %if.else11

if.then:                                          ; preds = %land.end
  %vdtype = getelementptr inbounds i8, ptr %input_file, i64 772
  %8 = load i32, ptr %vdtype, align 4
  %cmp7 = icmp eq i32 %8, 3
  %buf = getelementptr inbounds i8, ptr %p_Vid, i64 849288
  %9 = load ptr, ptr %buf, align 8
  br i1 %cmp7, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.then
  %call = tail call i32 @ReadTIFFImage(ptr noundef %0, ptr noundef nonnull %input_file, i32 noundef %FrameNoInFile, ptr noundef nonnull %source, ptr noundef %9) #12
  br label %if.end14

if.else:                                          ; preds = %if.then
  %call10 = tail call i32 @ReadFrameSeparate(ptr noundef %0, ptr noundef nonnull %input_file, i32 noundef %FrameNoInFile, i32 noundef %HeaderSize, ptr noundef nonnull %source, ptr noundef %9) #12
  br label %if.end14

if.else11:                                        ; preds = %land.end
  %buf12 = getelementptr inbounds i8, ptr %p_Vid, i64 849288
  %10 = load ptr, ptr %buf12, align 8
  %call13 = tail call i32 @ReadFrameConcatenated(ptr noundef %0, ptr noundef nonnull %input_file, i32 noundef %FrameNoInFile, i32 noundef %HeaderSize, ptr noundef nonnull %source, ptr noundef %10) #12
  br label %if.end14

if.end14:                                         ; preds = %if.then8, %if.else, %if.else11
  %file_read.0 = phi i32 [ %call, %if.then8 ], [ %call10, %if.else ], [ %call13, %if.else11 ]
  %tobool.not = icmp eq i32 %file_read.0, 0
  br i1 %tobool.not, label %cleanup, label %if.end16

if.end16:                                         ; preds = %if.end14
  %is_interleaved = getelementptr inbounds i8, ptr %input_file, i64 916
  %11 = load i32, ptr %is_interleaved, align 4
  %tobool17.not = icmp eq i32 %11, 0
  br i1 %tobool17.not, label %if.end20, label %if.then18

if.then18:                                        ; preds = %if.end16
  %buf19 = getelementptr inbounds i8, ptr %p_Vid, i64 849288
  %ibuf = getelementptr inbounds i8, ptr %p_Vid, i64 849296
  %12 = load ptr, ptr %buf19, align 8
  %13 = load ptr, ptr %ibuf, align 8
  %14 = load i32, ptr %size_cmp, align 8
  %mul.i = mul nsw i32 %14, %1
  %idx.ext.i = sext i32 %mul.i to i64
  %add.ptr.i = getelementptr inbounds i8, ptr %13, i64 %idx.ext.i
  %15 = load i32, ptr %arrayidx3, align 4
  %mul3.i = mul nsw i32 %15, %1
  %idx.ext4.i = sext i32 %mul3.i to i64
  %add.ptr5.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idx.ext4.i
  %16 = load i32, ptr %source, align 8
  %cmp.i = icmp eq i32 %16, 1
  br i1 %cmp.i, label %for.cond.preheader.i, label %if.end.i

for.cond.preheader.i:                             ; preds = %if.then18
  %cmp8200.i = icmp sgt i32 %15, 0
  br i1 %cmp8200.i, label %for.body.lr.ph.i, label %for.end.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %conv.i = sext i32 %1 to i64
  %mul13.i = shl nsw i32 %1, 1
  %conv14.i = sext i32 %mul13.i to i64
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %for.body.lr.ph.i
  %i.0205.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i ]
  %ocmp2.0204.i = phi ptr [ %add.ptr5.i, %for.body.lr.ph.i ], [ %add.ptr23.i, %for.body.i ]
  %ocmp1.0203.i = phi ptr [ %add.ptr.i, %for.body.lr.ph.i ], [ %add.ptr10.i, %for.body.i ]
  %ocmp0.0202.i = phi ptr [ %13, %for.body.lr.ph.i ], [ %add.ptr30.i, %for.body.i ]
  %icmp0.0201.i = phi ptr [ %12, %for.body.lr.ph.i ], [ %add.ptr33.i, %for.body.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %ocmp1.0203.i, ptr align 1 %icmp0.0201.i, i64 %conv.i, i1 false)
  %add.ptr10.i = getelementptr inbounds i8, ptr %ocmp1.0203.i, i64 %conv.i
  %add.ptr12.i = getelementptr inbounds i8, ptr %icmp0.0201.i, i64 %conv.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %ocmp0.0202.i, ptr align 1 %add.ptr12.i, i64 %conv14.i, i1 false)
  %add.ptr17.i = getelementptr inbounds i8, ptr %ocmp0.0202.i, i64 %conv14.i
  %add.ptr20.i = getelementptr inbounds i8, ptr %add.ptr12.i, i64 %conv14.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %ocmp2.0204.i, ptr align 1 %add.ptr20.i, i64 %conv.i, i1 false)
  %add.ptr23.i = getelementptr inbounds i8, ptr %ocmp2.0204.i, i64 %conv.i
  %add.ptr25.i = getelementptr inbounds i8, ptr %add.ptr20.i, i64 %conv.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr17.i, ptr align 1 %add.ptr25.i, i64 %conv14.i, i1 false)
  %add.ptr30.i = getelementptr inbounds i8, ptr %add.ptr17.i, i64 %conv14.i
  %add.ptr33.i = getelementptr inbounds i8, ptr %add.ptr25.i, i64 %conv14.i
  %inc.i = add nuw nsw i32 %i.0205.i, 1
  %17 = load i32, ptr %arrayidx3, align 4
  %cmp8.i = icmp slt i32 %inc.i, %17
  br i1 %cmp8.i, label %for.body.i, label %for.end.loopexit.i

for.end.loopexit.i:                               ; preds = %for.body.i
  %.pre.i = load ptr, ptr %buf19, align 8
  %.pre220.i = load ptr, ptr %ibuf, align 8
  br label %for.end.i

for.end.i:                                        ; preds = %for.end.loopexit.i, %for.cond.preheader.i
  %18 = phi ptr [ %13, %for.cond.preheader.i ], [ %.pre220.i, %for.end.loopexit.i ]
  %19 = phi ptr [ %12, %for.cond.preheader.i ], [ %.pre.i, %for.end.loopexit.i ]
  %ocmp0.0.lcssa.i = phi ptr [ %13, %for.cond.preheader.i ], [ %add.ptr30.i, %for.end.loopexit.i ]
  %ocmp1.0.lcssa.i = phi ptr [ %add.ptr.i, %for.cond.preheader.i ], [ %add.ptr10.i, %for.end.loopexit.i ]
  %ocmp2.0.lcssa.i = phi ptr [ %add.ptr5.i, %for.cond.preheader.i ], [ %add.ptr23.i, %for.end.loopexit.i ]
  store ptr %18, ptr %buf19, align 8
  store ptr %19, ptr %ibuf, align 8
  %.pr.i = load i32, ptr %source, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %for.end.i, %if.then18
  %20 = phi ptr [ %18, %for.end.i ], [ %12, %if.then18 ]
  %21 = phi ptr [ %19, %for.end.i ], [ %13, %if.then18 ]
  %22 = phi i32 [ %.pr.i, %for.end.i ], [ %16, %if.then18 ]
  %icmp0.1.i = phi ptr [ %19, %for.end.i ], [ %12, %if.then18 ]
  %ocmp0.1.i = phi ptr [ %ocmp0.0.lcssa.i, %for.end.i ], [ %13, %if.then18 ]
  %ocmp1.1.i = phi ptr [ %ocmp1.0.lcssa.i, %for.end.i ], [ %add.ptr.i, %if.then18 ]
  %ocmp2.1.i = phi ptr [ %ocmp2.0.lcssa.i, %for.end.i ], [ %add.ptr5.i, %if.then18 ]
  switch i32 %22, label %if.end20 [
    i32 2, label %for.cond38.preheader.i
    i32 3, label %for.cond71.preheader.i
  ]

for.cond71.preheader.i:                           ; preds = %if.end.i
  %23 = load i32, ptr %size_cmp, align 8
  %cmp74208.i = icmp sgt i32 %23, 0
  br i1 %cmp74208.i, label %for.body76.lr.ph.i, label %if.end96.sink.split.i

for.body76.lr.ph.i:                               ; preds = %for.cond71.preheader.i
  %conv77.i = sext i32 %1 to i64
  br label %for.body76.i

for.cond38.preheader.i:                           ; preds = %if.end.i
  %24 = load i32, ptr %arrayidx3, align 4
  %cmp41214.i = icmp sgt i32 %24, 0
  br i1 %cmp41214.i, label %for.body43.lr.ph.i, label %if.end96.sink.split.i

for.body43.lr.ph.i:                               ; preds = %for.cond38.preheader.i
  %conv44.i = sext i32 %1 to i64
  br label %for.body43.i

for.body43.i:                                     ; preds = %for.body43.i, %for.body43.lr.ph.i
  %i.1219.i = phi i32 [ 0, %for.body43.lr.ph.i ], [ %inc65.i, %for.body43.i ]
  %ocmp2.2218.i = phi ptr [ %ocmp2.1.i, %for.body43.lr.ph.i ], [ %add.ptr61.i, %for.body43.i ]
  %ocmp1.2217.i = phi ptr [ %ocmp1.1.i, %for.body43.lr.ph.i ], [ %add.ptr51.i, %for.body43.i ]
  %ocmp0.2216.i = phi ptr [ %ocmp0.1.i, %for.body43.lr.ph.i ], [ %add.ptr56.i, %for.body43.i ]
  %icmp0.2215.i = phi ptr [ %icmp0.1.i, %for.body43.lr.ph.i ], [ %add.ptr63.i, %for.body43.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %ocmp0.2216.i, ptr align 1 %icmp0.2215.i, i64 %conv44.i, i1 false)
  %add.ptr46.i = getelementptr inbounds i8, ptr %ocmp0.2216.i, i64 %conv44.i
  %add.ptr48.i = getelementptr inbounds i8, ptr %icmp0.2215.i, i64 %conv44.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %ocmp1.2217.i, ptr align 1 %add.ptr48.i, i64 %conv44.i, i1 false)
  %add.ptr51.i = getelementptr inbounds i8, ptr %ocmp1.2217.i, i64 %conv44.i
  %add.ptr53.i = getelementptr inbounds i8, ptr %add.ptr48.i, i64 %conv44.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr46.i, ptr align 1 %add.ptr53.i, i64 %conv44.i, i1 false)
  %add.ptr56.i = getelementptr inbounds i8, ptr %add.ptr46.i, i64 %conv44.i
  %add.ptr58.i = getelementptr inbounds i8, ptr %add.ptr53.i, i64 %conv44.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %ocmp2.2218.i, ptr align 1 %add.ptr58.i, i64 %conv44.i, i1 false)
  %add.ptr61.i = getelementptr inbounds i8, ptr %ocmp2.2218.i, i64 %conv44.i
  %add.ptr63.i = getelementptr inbounds i8, ptr %add.ptr58.i, i64 %conv44.i
  %inc65.i = add nuw nsw i32 %i.1219.i, 1
  %25 = load i32, ptr %arrayidx3, align 4
  %cmp41.i = icmp slt i32 %inc65.i, %25
  br i1 %cmp41.i, label %for.body43.i, label %if.end96.sink.split.sink.split.i

for.body76.i:                                     ; preds = %for.body76.i, %for.body76.lr.ph.i
  %i.2213.i = phi i32 [ 0, %for.body76.lr.ph.i ], [ %inc93.i, %for.body76.i ]
  %ocmp2.3212.i = phi ptr [ %ocmp2.1.i, %for.body76.lr.ph.i ], [ %add.ptr89.i, %for.body76.i ]
  %ocmp1.3211.i = phi ptr [ %ocmp1.1.i, %for.body76.lr.ph.i ], [ %add.ptr84.i, %for.body76.i ]
  %ocmp0.3210.i = phi ptr [ %ocmp0.1.i, %for.body76.lr.ph.i ], [ %add.ptr79.i, %for.body76.i ]
  %icmp0.3209.i = phi ptr [ %icmp0.1.i, %for.body76.lr.ph.i ], [ %add.ptr91.i, %for.body76.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %ocmp0.3210.i, ptr align 1 %icmp0.3209.i, i64 %conv77.i, i1 false)
  %add.ptr79.i = getelementptr inbounds i8, ptr %ocmp0.3210.i, i64 %conv77.i
  %add.ptr81.i = getelementptr inbounds i8, ptr %icmp0.3209.i, i64 %conv77.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %ocmp1.3211.i, ptr align 1 %add.ptr81.i, i64 %conv77.i, i1 false)
  %add.ptr84.i = getelementptr inbounds i8, ptr %ocmp1.3211.i, i64 %conv77.i
  %add.ptr86.i = getelementptr inbounds i8, ptr %add.ptr81.i, i64 %conv77.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %ocmp2.3212.i, ptr align 1 %add.ptr86.i, i64 %conv77.i, i1 false)
  %add.ptr89.i = getelementptr inbounds i8, ptr %ocmp2.3212.i, i64 %conv77.i
  %add.ptr91.i = getelementptr inbounds i8, ptr %add.ptr86.i, i64 %conv77.i
  %inc93.i = add nuw nsw i32 %i.2213.i, 1
  %26 = load i32, ptr %size_cmp, align 8
  %cmp74.i = icmp slt i32 %inc93.i, %26
  br i1 %cmp74.i, label %for.body76.i, label %if.end96.sink.split.sink.split.i

if.end96.sink.split.sink.split.i:                 ; preds = %for.body76.i, %for.body43.i
  %.pre221.i = load ptr, ptr %ibuf, align 8
  %.pre = load ptr, ptr %buf19, align 8
  br label %if.end96.sink.split.i

if.end96.sink.split.i:                            ; preds = %if.end96.sink.split.sink.split.i, %for.cond38.preheader.i, %for.cond71.preheader.i
  %27 = phi ptr [ %20, %for.cond38.preheader.i ], [ %20, %for.cond71.preheader.i ], [ %.pre, %if.end96.sink.split.sink.split.i ]
  %.sink223.i = phi ptr [ %21, %for.cond38.preheader.i ], [ %21, %for.cond71.preheader.i ], [ %.pre221.i, %if.end96.sink.split.sink.split.i ]
  store ptr %.sink223.i, ptr %buf19, align 8
  store ptr %27, ptr %ibuf, align 8
  br label %if.end20

if.end20:                                         ; preds = %if.end96.sink.split.i, %if.end.i, %if.end16
  %bit_depth = getelementptr inbounds i8, ptr %source, i64 88
  %28 = load i32, ptr %bit_depth, align 8
  %bit_depth22 = getelementptr inbounds i8, ptr %output, i64 88
  %29 = load i32, ptr %bit_depth22, align 8
  %sub = sub nsw i32 %28, %29
  %buf2img = getelementptr inbounds i8, ptr %p_Vid, i64 856736
  %30 = load ptr, ptr %buf2img, align 8
  %31 = load ptr, ptr %pImage, align 8
  %buf27 = getelementptr inbounds i8, ptr %p_Vid, i64 849288
  %32 = load ptr, ptr %buf27, align 8
  br i1 %6, label %if.end46, label %if.end46.thread

if.end46:                                         ; preds = %if.end20
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, ptr %32, i64 %idx.ext
  %width = getelementptr inbounds i8, ptr %source, i64 16
  %33 = load i32, ptr %width, align 8
  %height = getelementptr inbounds i8, ptr %source, i64 28
  %34 = load i32, ptr %height, align 4
  %width30 = getelementptr inbounds i8, ptr %output, i64 16
  %35 = load i32, ptr %width30, align 8
  %height32 = getelementptr inbounds i8, ptr %output, i64 28
  %36 = load i32, ptr %height32, align 4
  tail call void %30(ptr noundef %31, ptr noundef %add.ptr, i32 noundef %33, i32 noundef %34, i32 noundef %35, i32 noundef %36, i32 noundef %1, i32 noundef %sub) #12
  %yuv_format47 = getelementptr inbounds i8, ptr %p_Vid, i64 849088
  %37 = load i32, ptr %yuv_format47, align 8
  %cmp48.not = icmp eq i32 %37, 0
  br i1 %cmp48.not, label %cleanup, label %if.then93

if.end46.thread:                                  ; preds = %if.end20
  %width38 = getelementptr inbounds i8, ptr %source, i64 16
  %38 = load i32, ptr %width38, align 8
  %height40 = getelementptr inbounds i8, ptr %source, i64 28
  %39 = load i32, ptr %height40, align 4
  %width42 = getelementptr inbounds i8, ptr %output, i64 16
  %40 = load i32, ptr %width42, align 8
  %height44 = getelementptr inbounds i8, ptr %output, i64 28
  %41 = load i32, ptr %height44, align 4
  tail call void %30(ptr noundef %31, ptr noundef %32, i32 noundef %38, i32 noundef %39, i32 noundef %40, i32 noundef %41, i32 noundef %1, i32 noundef %sub) #12
  %yuv_format47219 = getelementptr inbounds i8, ptr %p_Vid, i64 849088
  %42 = load i32, ptr %yuv_format47219, align 8
  %cmp48.not220 = icmp eq i32 %42, 0
  br i1 %cmp48.not220, label %cleanup, label %if.else105

if.then93:                                        ; preds = %if.end46
  %arrayidx51 = getelementptr inbounds i8, ptr %source, i64 92
  %43 = load i32, ptr %arrayidx51, align 4
  %arrayidx53 = getelementptr inbounds i8, ptr %output, i64 92
  %44 = load i32, ptr %arrayidx53, align 4
  %sub54 = sub nsw i32 %43, %44
  %45 = load ptr, ptr %buf2img, align 8
  %arrayidx58 = getelementptr inbounds i8, ptr %pImage, i64 8
  %46 = load ptr, ptr %arrayidx58, align 8
  %47 = load ptr, ptr %buf27, align 8
  %add.ptr61 = getelementptr inbounds i8, ptr %47, i64 %idx.ext
  %idx.ext62 = sext i32 %mul4 to i64
  %add.ptr63 = getelementptr inbounds i8, ptr %add.ptr61, i64 %idx.ext62
  %arrayidx65 = getelementptr inbounds i8, ptr %source, i64 20
  %48 = load i32, ptr %arrayidx65, align 4
  %arrayidx67 = getelementptr inbounds i8, ptr %source, i64 32
  %49 = load i32, ptr %arrayidx67, align 4
  %arrayidx69 = getelementptr inbounds i8, ptr %output, i64 20
  %50 = load i32, ptr %arrayidx69, align 4
  %arrayidx71 = getelementptr inbounds i8, ptr %output, i64 32
  %51 = load i32, ptr %arrayidx71, align 4
  tail call void %45(ptr noundef %46, ptr noundef %add.ptr63, i32 noundef %48, i32 noundef %49, i32 noundef %50, i32 noundef %51, i32 noundef %1, i32 noundef %sub54) #12
  %arrayidx88225 = getelementptr inbounds i8, ptr %source, i64 96
  %52 = load i32, ptr %arrayidx88225, align 8
  %arrayidx90226 = getelementptr inbounds i8, ptr %output, i64 96
  %53 = load i32, ptr %arrayidx90226, align 8
  %sub91227 = sub nsw i32 %52, %53
  %54 = load ptr, ptr %buf2img, align 8
  %arrayidx95 = getelementptr inbounds i8, ptr %pImage, i64 16
  %55 = load ptr, ptr %arrayidx95, align 8
  %56 = load ptr, ptr %buf27, align 8
  %57 = load i32, ptr %arrayidx65, align 4
  %58 = load i32, ptr %arrayidx67, align 4
  %59 = load i32, ptr %arrayidx69, align 4
  %60 = load i32, ptr %arrayidx71, align 4
  tail call void %54(ptr noundef %55, ptr noundef %56, i32 noundef %57, i32 noundef %58, i32 noundef %59, i32 noundef %60, i32 noundef %1, i32 noundef %sub91227) #12
  br label %cleanup

if.else105:                                       ; preds = %if.end46.thread
  %arrayidx51221 = getelementptr inbounds i8, ptr %source, i64 92
  %61 = load i32, ptr %arrayidx51221, align 4
  %arrayidx53222 = getelementptr inbounds i8, ptr %output, i64 92
  %62 = load i32, ptr %arrayidx53222, align 4
  %sub54223 = sub nsw i32 %61, %62
  %63 = load ptr, ptr %buf2img, align 8
  %arrayidx74 = getelementptr inbounds i8, ptr %pImage, i64 8
  %64 = load ptr, ptr %arrayidx74, align 8
  %65 = load ptr, ptr %buf27, align 8
  %idx.ext76 = sext i32 %mul to i64
  %add.ptr77 = getelementptr inbounds i8, ptr %65, i64 %idx.ext76
  %arrayidx79 = getelementptr inbounds i8, ptr %source, i64 20
  %66 = load i32, ptr %arrayidx79, align 4
  %arrayidx81 = getelementptr inbounds i8, ptr %source, i64 32
  %67 = load i32, ptr %arrayidx81, align 4
  %arrayidx83 = getelementptr inbounds i8, ptr %output, i64 20
  %68 = load i32, ptr %arrayidx83, align 4
  %arrayidx85 = getelementptr inbounds i8, ptr %output, i64 32
  %69 = load i32, ptr %arrayidx85, align 4
  tail call void %63(ptr noundef %64, ptr noundef %add.ptr77, i32 noundef %66, i32 noundef %67, i32 noundef %68, i32 noundef %69, i32 noundef %1, i32 noundef %sub54223) #12
  %arrayidx88 = getelementptr inbounds i8, ptr %source, i64 96
  %70 = load i32, ptr %arrayidx88, align 8
  %arrayidx90 = getelementptr inbounds i8, ptr %output, i64 96
  %71 = load i32, ptr %arrayidx90, align 8
  %sub91 = sub nsw i32 %70, %71
  %72 = load ptr, ptr %buf2img, align 8
  %arrayidx107 = getelementptr inbounds i8, ptr %pImage, i64 16
  %73 = load ptr, ptr %arrayidx107, align 8
  %74 = load ptr, ptr %buf27, align 8
  %add.ptr110 = getelementptr inbounds i8, ptr %74, i64 %idx.ext76
  %idx.ext111 = sext i32 %mul4 to i64
  %add.ptr112 = getelementptr inbounds i8, ptr %add.ptr110, i64 %idx.ext111
  %75 = load i32, ptr %arrayidx79, align 4
  %76 = load i32, ptr %arrayidx81, align 4
  %77 = load i32, ptr %arrayidx83, align 4
  %78 = load i32, ptr %arrayidx85, align 4
  tail call void %72(ptr noundef %73, ptr noundef %add.ptr112, i32 noundef %75, i32 noundef %76, i32 noundef %77, i32 noundef %78, i32 noundef %1, i32 noundef %sub91) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end46.thread, %if.end46, %if.else105, %if.then93, %if.end14
  ret i32 %file_read.0
}

declare i32 @ReadTIFFImage(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare i32 @ReadFrameSeparate(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare i32 @ReadFrameConcatenated(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @pad_borders(ptr nocapture noundef readonly byval(%struct.frame_format) align 8 %output, i32 noundef %img_size_x, i32 noundef %img_size_y, i32 noundef %img_size_x_cr, i32 noundef %img_size_y_cr, ptr nocapture noundef readonly %pImage) local_unnamed_addr #10 {
entry:
  %width = getelementptr inbounds i8, ptr %output, i64 16
  %0 = load i32, ptr %width, align 8
  %cmp = icmp slt i32 %0, %img_size_x
  %height = getelementptr inbounds i8, ptr %output, i64 28
  %1 = load i32, ptr %height, align 4
  %cmp2157 = icmp sgt i32 %1, 0
  %or.cond = select i1 %cmp, i1 %cmp2157, i1 false
  br i1 %or.cond, label %for.cond5.preheader.us.preheader, label %if.end

for.cond5.preheader.us.preheader:                 ; preds = %entry
  %2 = sext i32 %0 to i64
  %wide.trip.count196 = zext nneg i32 %1 to i64
  %wide.trip.count = sext i32 %img_size_x to i64
  %3 = sub nsw i64 %wide.trip.count, %2
  %xtraiter = and i64 %3, 3
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %4 = sub nsw i64 %2, %wide.trip.count
  %5 = icmp ugt i64 %4, -4
  br label %for.cond5.preheader.us

for.cond5.preheader.us:                           ; preds = %for.cond5.preheader.us.preheader, %for.cond5.for.inc17_crit_edge.us
  %indvars.iv193 = phi i64 [ 0, %for.cond5.preheader.us.preheader ], [ %indvars.iv.next194, %for.cond5.for.inc17_crit_edge.us ]
  br i1 %lcmp.mod.not, label %for.body7.us.prol.loopexit, label %for.body7.us.prol

for.body7.us.prol:                                ; preds = %for.cond5.preheader.us, %for.body7.us.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %for.body7.us.prol ], [ %2, %for.cond5.preheader.us ]
  %prol.iter = phi i64 [ %prol.iter.next, %for.body7.us.prol ], [ 0, %for.cond5.preheader.us ]
  %6 = load ptr, ptr %pImage, align 8
  %arrayidx9.us.prol = getelementptr inbounds ptr, ptr %6, i64 %indvars.iv193
  %7 = load ptr, ptr %arrayidx9.us.prol, align 8
  %8 = getelementptr i16, ptr %7, i64 %indvars.iv.prol
  %arrayidx11.us.prol = getelementptr i8, ptr %8, i64 -2
  %9 = load i16, ptr %arrayidx11.us.prol, align 2
  store i16 %9, ptr %8, align 2
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.prol, 1
  %prol.iter.next = add i64 %prol.iter, 1
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %for.body7.us.prol.loopexit, label %for.body7.us.prol, !llvm.loop !8

for.body7.us.prol.loopexit:                       ; preds = %for.body7.us.prol, %for.cond5.preheader.us
  %indvars.iv.unr = phi i64 [ %2, %for.cond5.preheader.us ], [ %indvars.iv.next.prol, %for.body7.us.prol ]
  br i1 %5, label %for.cond5.for.inc17_crit_edge.us, label %for.body7.us

for.body7.us:                                     ; preds = %for.body7.us.prol.loopexit, %for.body7.us
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %for.body7.us ], [ %indvars.iv.unr, %for.body7.us.prol.loopexit ]
  %10 = load ptr, ptr %pImage, align 8
  %arrayidx9.us = getelementptr inbounds ptr, ptr %10, i64 %indvars.iv193
  %11 = load ptr, ptr %arrayidx9.us, align 8
  %12 = getelementptr i16, ptr %11, i64 %indvars.iv
  %arrayidx11.us = getelementptr i8, ptr %12, i64 -2
  %13 = load i16, ptr %arrayidx11.us, align 2
  store i16 %13, ptr %12, align 2
  %14 = load ptr, ptr %pImage, align 8
  %arrayidx9.us.1 = getelementptr inbounds ptr, ptr %14, i64 %indvars.iv193
  %15 = load ptr, ptr %arrayidx9.us.1, align 8
  %16 = getelementptr i16, ptr %15, i64 %indvars.iv
  %17 = getelementptr i8, ptr %16, i64 2
  %18 = load i16, ptr %16, align 2
  store i16 %18, ptr %17, align 2
  %19 = load ptr, ptr %pImage, align 8
  %arrayidx9.us.2 = getelementptr inbounds ptr, ptr %19, i64 %indvars.iv193
  %20 = load ptr, ptr %arrayidx9.us.2, align 8
  %21 = getelementptr i16, ptr %20, i64 %indvars.iv
  %22 = getelementptr i8, ptr %21, i64 4
  %arrayidx11.us.2 = getelementptr i8, ptr %21, i64 2
  %23 = load i16, ptr %arrayidx11.us.2, align 2
  store i16 %23, ptr %22, align 2
  %24 = load ptr, ptr %pImage, align 8
  %arrayidx9.us.3 = getelementptr inbounds ptr, ptr %24, i64 %indvars.iv193
  %25 = load ptr, ptr %arrayidx9.us.3, align 8
  %26 = getelementptr i16, ptr %25, i64 %indvars.iv
  %27 = getelementptr i8, ptr %26, i64 6
  %arrayidx11.us.3 = getelementptr i8, ptr %26, i64 4
  %28 = load i16, ptr %arrayidx11.us.3, align 2
  store i16 %28, ptr %27, align 2
  %indvars.iv.next.3 = add nsw i64 %indvars.iv, 4
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %for.cond5.for.inc17_crit_edge.us, label %for.body7.us

for.cond5.for.inc17_crit_edge.us:                 ; preds = %for.body7.us, %for.body7.us.prol.loopexit
  %indvars.iv.next194 = add nuw nsw i64 %indvars.iv193, 1
  %exitcond197.not = icmp eq i64 %indvars.iv.next194, %wide.trip.count196
  br i1 %exitcond197.not, label %if.end, label %for.cond5.preheader.us

if.end:                                           ; preds = %for.cond5.for.inc17_crit_edge.us, %entry
  %cmp22 = icmp slt i32 %1, %img_size_y
  br i1 %cmp22, label %for.cond26.preheader, label %if.end39

for.cond26.preheader:                             ; preds = %if.end
  %conv = sext i32 %img_size_x to i64
  %mul = shl nsw i64 %conv, 1
  %29 = sext i32 %1 to i64
  %wide.trip.count201 = sext i32 %img_size_y to i64
  %30 = sub nsw i64 %wide.trip.count201, %29
  %xtraiter234 = and i64 %30, 1
  %lcmp.mod235.not = icmp eq i64 %xtraiter234, 0
  br i1 %lcmp.mod235.not, label %for.body28.prol.loopexit, label %for.body28.prol

for.body28.prol:                                  ; preds = %for.cond26.preheader
  %31 = load ptr, ptr %pImage, align 8
  %arrayidx31.prol = getelementptr inbounds ptr, ptr %31, i64 %29
  %32 = load ptr, ptr %arrayidx31.prol, align 8
  %arrayidx35.prol = getelementptr i8, ptr %arrayidx31.prol, i64 -8
  %33 = load ptr, ptr %arrayidx35.prol, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %32, ptr align 2 %33, i64 %mul, i1 false)
  %indvars.iv.next199.prol = add nsw i64 %29, 1
  br label %for.body28.prol.loopexit

for.body28.prol.loopexit:                         ; preds = %for.body28.prol, %for.cond26.preheader
  %indvars.iv198.unr = phi i64 [ %29, %for.cond26.preheader ], [ %indvars.iv.next199.prol, %for.body28.prol ]
  %34 = add nsw i64 %wide.trip.count201, -1
  %35 = icmp eq i64 %34, %29
  br i1 %35, label %if.end39, label %for.body28

for.body28:                                       ; preds = %for.body28.prol.loopexit, %for.body28
  %indvars.iv198 = phi i64 [ %indvars.iv.next199.1, %for.body28 ], [ %indvars.iv198.unr, %for.body28.prol.loopexit ]
  %36 = load ptr, ptr %pImage, align 8
  %arrayidx31 = getelementptr inbounds ptr, ptr %36, i64 %indvars.iv198
  %37 = load ptr, ptr %arrayidx31, align 8
  %arrayidx35 = getelementptr i8, ptr %arrayidx31, i64 -8
  %38 = load ptr, ptr %arrayidx35, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %37, ptr align 2 %38, i64 %mul, i1 false)
  %39 = load ptr, ptr %pImage, align 8
  %40 = getelementptr ptr, ptr %39, i64 %indvars.iv198
  %arrayidx31.1 = getelementptr i8, ptr %40, i64 8
  %41 = load ptr, ptr %arrayidx31.1, align 8
  %42 = load ptr, ptr %40, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %41, ptr align 2 %42, i64 %mul, i1 false)
  %indvars.iv.next199.1 = add nsw i64 %indvars.iv198, 2
  %exitcond202.not.1 = icmp eq i64 %indvars.iv.next199.1, %wide.trip.count201
  br i1 %exitcond202.not.1, label %if.end39, label %for.body28

if.end39:                                         ; preds = %for.body28.prol.loopexit, %for.body28, %if.end
  %43 = load i32, ptr %output, align 8
  %cmp40.not = icmp eq i32 %43, 0
  br i1 %cmp40.not, label %if.end113, label %for.cond43.preheader

for.cond43.preheader:                             ; preds = %if.end39
  %arrayidx48 = getelementptr inbounds i8, ptr %output, i64 20
  %44 = load i32, ptr %arrayidx48, align 4
  %cmp49 = icmp slt i32 %44, %img_size_x_cr
  %arrayidx85 = getelementptr inbounds i8, ptr %output, i64 32
  %45 = load i32, ptr %arrayidx85, align 8
  %cmp86 = icmp slt i32 %45, %img_size_y_cr
  %cmp55162 = icmp sgt i32 %45, 0
  %conv104 = sext i32 %img_size_x_cr to i64
  %mul105 = shl nsw i64 %conv104, 1
  br i1 %cmp49, label %for.body46.us.preheader, label %for.cond43.preheader.split

for.body46.us.preheader:                          ; preds = %for.cond43.preheader
  %46 = sext i32 %44 to i64
  %47 = sext i32 %45 to i64
  br i1 %cmp55162, label %for.cond60.preheader.us.us.preheader, label %if.end83.loopexit.us

for.inc110.us:                                    ; preds = %for.body94.us.prol.loopexit, %for.body94.us, %if.end83.loopexit.us
  br i1 %cmp55162, label %for.cond60.preheader.us.us.preheader.1, label %if.end83.loopexit.us.1

for.cond60.preheader.us.us.preheader.1:           ; preds = %for.inc110.us
  %arrayidx65.us.1 = getelementptr inbounds i8, ptr %pImage, i64 16
  %wide.trip.count220.1 = zext nneg i32 %45 to i64
  %48 = sub nsw i64 %conv104, %46
  %xtraiter264 = and i64 %48, 3
  %lcmp.mod265.not = icmp eq i64 %xtraiter264, 0
  %49 = sub nsw i64 %46, %conv104
  %50 = icmp ugt i64 %49, -4
  br label %for.cond60.preheader.us.us.1

for.cond60.preheader.us.us.1:                     ; preds = %for.cond60.for.inc80_crit_edge.us.us.1, %for.cond60.preheader.us.us.preheader.1
  %indvars.iv217.1 = phi i64 [ 0, %for.cond60.preheader.us.us.preheader.1 ], [ %indvars.iv.next218.1, %for.cond60.for.inc80_crit_edge.us.us.1 ]
  br i1 %lcmp.mod265.not, label %for.body63.us.us.1.prol.loopexit, label %for.body63.us.us.1.prol

for.body63.us.us.1.prol:                          ; preds = %for.cond60.preheader.us.us.1, %for.body63.us.us.1.prol
  %indvars.iv212.1.prol = phi i64 [ %indvars.iv.next213.1.prol, %for.body63.us.us.1.prol ], [ %46, %for.cond60.preheader.us.us.1 ]
  %prol.iter266 = phi i64 [ %prol.iter266.next, %for.body63.us.us.1.prol ], [ 0, %for.cond60.preheader.us.us.1 ]
  %51 = load ptr, ptr %arrayidx65.us.1, align 8
  %arrayidx67.us.us.1.prol = getelementptr inbounds ptr, ptr %51, i64 %indvars.iv217.1
  %52 = load ptr, ptr %arrayidx67.us.us.1.prol, align 8
  %53 = getelementptr i16, ptr %52, i64 %indvars.iv212.1.prol
  %arrayidx70.us.us.1.prol = getelementptr i8, ptr %53, i64 -2
  %54 = load i16, ptr %arrayidx70.us.us.1.prol, align 2
  store i16 %54, ptr %53, align 2
  %indvars.iv.next213.1.prol = add nsw i64 %indvars.iv212.1.prol, 1
  %prol.iter266.next = add i64 %prol.iter266, 1
  %prol.iter266.cmp.not = icmp eq i64 %prol.iter266.next, %xtraiter264
  br i1 %prol.iter266.cmp.not, label %for.body63.us.us.1.prol.loopexit, label %for.body63.us.us.1.prol, !llvm.loop !9

for.body63.us.us.1.prol.loopexit:                 ; preds = %for.body63.us.us.1.prol, %for.cond60.preheader.us.us.1
  %indvars.iv212.1.unr = phi i64 [ %46, %for.cond60.preheader.us.us.1 ], [ %indvars.iv.next213.1.prol, %for.body63.us.us.1.prol ]
  br i1 %50, label %for.cond60.for.inc80_crit_edge.us.us.1, label %for.body63.us.us.1

for.body63.us.us.1:                               ; preds = %for.body63.us.us.1.prol.loopexit, %for.body63.us.us.1
  %indvars.iv212.1 = phi i64 [ %indvars.iv.next213.1.3, %for.body63.us.us.1 ], [ %indvars.iv212.1.unr, %for.body63.us.us.1.prol.loopexit ]
  %55 = load ptr, ptr %arrayidx65.us.1, align 8
  %arrayidx67.us.us.1 = getelementptr inbounds ptr, ptr %55, i64 %indvars.iv217.1
  %56 = load ptr, ptr %arrayidx67.us.us.1, align 8
  %57 = getelementptr i16, ptr %56, i64 %indvars.iv212.1
  %arrayidx70.us.us.1 = getelementptr i8, ptr %57, i64 -2
  %58 = load i16, ptr %arrayidx70.us.us.1, align 2
  store i16 %58, ptr %57, align 2
  %59 = load ptr, ptr %arrayidx65.us.1, align 8
  %arrayidx67.us.us.1.1 = getelementptr inbounds ptr, ptr %59, i64 %indvars.iv217.1
  %60 = load ptr, ptr %arrayidx67.us.us.1.1, align 8
  %61 = getelementptr i16, ptr %60, i64 %indvars.iv212.1
  %62 = getelementptr i8, ptr %61, i64 2
  %63 = load i16, ptr %61, align 2
  store i16 %63, ptr %62, align 2
  %64 = load ptr, ptr %arrayidx65.us.1, align 8
  %arrayidx67.us.us.1.2 = getelementptr inbounds ptr, ptr %64, i64 %indvars.iv217.1
  %65 = load ptr, ptr %arrayidx67.us.us.1.2, align 8
  %66 = getelementptr i16, ptr %65, i64 %indvars.iv212.1
  %67 = getelementptr i8, ptr %66, i64 4
  %arrayidx70.us.us.1.2 = getelementptr i8, ptr %66, i64 2
  %68 = load i16, ptr %arrayidx70.us.us.1.2, align 2
  store i16 %68, ptr %67, align 2
  %69 = load ptr, ptr %arrayidx65.us.1, align 8
  %arrayidx67.us.us.1.3 = getelementptr inbounds ptr, ptr %69, i64 %indvars.iv217.1
  %70 = load ptr, ptr %arrayidx67.us.us.1.3, align 8
  %71 = getelementptr i16, ptr %70, i64 %indvars.iv212.1
  %72 = getelementptr i8, ptr %71, i64 6
  %arrayidx70.us.us.1.3 = getelementptr i8, ptr %71, i64 4
  %73 = load i16, ptr %arrayidx70.us.us.1.3, align 2
  store i16 %73, ptr %72, align 2
  %indvars.iv.next213.1.3 = add nsw i64 %indvars.iv212.1, 4
  %exitcond216.1.not.3 = icmp eq i64 %indvars.iv.next213.1.3, %conv104
  br i1 %exitcond216.1.not.3, label %for.cond60.for.inc80_crit_edge.us.us.1, label %for.body63.us.us.1

for.cond60.for.inc80_crit_edge.us.us.1:           ; preds = %for.body63.us.us.1, %for.body63.us.us.1.prol.loopexit
  %indvars.iv.next218.1 = add nuw nsw i64 %indvars.iv217.1, 1
  %exitcond221.1.not = icmp eq i64 %indvars.iv.next218.1, %wide.trip.count220.1
  br i1 %exitcond221.1.not, label %if.end83.loopexit.us.1, label %for.cond60.preheader.us.us.1

if.end83.loopexit.us.1:                           ; preds = %for.cond60.for.inc80_crit_edge.us.us.1, %for.inc110.us
  br i1 %cmp86, label %for.cond91.preheader.us.1, label %if.end113

for.cond91.preheader.us.1:                        ; preds = %if.end83.loopexit.us.1
  %arrayidx96.us.1 = getelementptr inbounds i8, ptr %pImage, i64 16
  %wide.trip.count225.1 = sext i32 %img_size_y_cr to i64
  %74 = sub nsw i64 %wide.trip.count225.1, %47
  %xtraiter267 = and i64 %74, 1
  %lcmp.mod268.not = icmp eq i64 %xtraiter267, 0
  br i1 %lcmp.mod268.not, label %for.body94.us.1.prol.loopexit, label %for.body94.us.1.prol

for.body94.us.1.prol:                             ; preds = %for.cond91.preheader.us.1
  %75 = load ptr, ptr %arrayidx96.us.1, align 8
  %arrayidx98.us.1.prol = getelementptr inbounds ptr, ptr %75, i64 %47
  %76 = load ptr, ptr %arrayidx98.us.1.prol, align 8
  %arrayidx103.us.1.prol = getelementptr i8, ptr %arrayidx98.us.1.prol, i64 -8
  %77 = load ptr, ptr %arrayidx103.us.1.prol, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %76, ptr align 2 %77, i64 %mul105, i1 false)
  %indvars.iv.next223.1.prol = add nsw i64 %47, 1
  br label %for.body94.us.1.prol.loopexit

for.body94.us.1.prol.loopexit:                    ; preds = %for.body94.us.1.prol, %for.cond91.preheader.us.1
  %indvars.iv222.1.unr = phi i64 [ %47, %for.cond91.preheader.us.1 ], [ %indvars.iv.next223.1.prol, %for.body94.us.1.prol ]
  %78 = add nsw i64 %wide.trip.count225.1, -1
  %79 = icmp eq i64 %78, %47
  br i1 %79, label %if.end113, label %for.body94.us.1

for.body94.us.1:                                  ; preds = %for.body94.us.1.prol.loopexit, %for.body94.us.1
  %indvars.iv222.1 = phi i64 [ %indvars.iv.next223.1.1, %for.body94.us.1 ], [ %indvars.iv222.1.unr, %for.body94.us.1.prol.loopexit ]
  %80 = load ptr, ptr %arrayidx96.us.1, align 8
  %arrayidx98.us.1 = getelementptr inbounds ptr, ptr %80, i64 %indvars.iv222.1
  %81 = load ptr, ptr %arrayidx98.us.1, align 8
  %arrayidx103.us.1 = getelementptr i8, ptr %arrayidx98.us.1, i64 -8
  %82 = load ptr, ptr %arrayidx103.us.1, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %81, ptr align 2 %82, i64 %mul105, i1 false)
  %83 = load ptr, ptr %arrayidx96.us.1, align 8
  %84 = getelementptr ptr, ptr %83, i64 %indvars.iv222.1
  %arrayidx98.us.1.1 = getelementptr i8, ptr %84, i64 8
  %85 = load ptr, ptr %arrayidx98.us.1.1, align 8
  %86 = load ptr, ptr %84, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %85, ptr align 2 %86, i64 %mul105, i1 false)
  %indvars.iv.next223.1.1 = add nsw i64 %indvars.iv222.1, 2
  %exitcond226.1.not.1 = icmp eq i64 %indvars.iv.next223.1.1, %wide.trip.count225.1
  br i1 %exitcond226.1.not.1, label %if.end113, label %for.body94.us.1

for.body94.us:                                    ; preds = %for.body94.us.prol.loopexit, %for.body94.us
  %indvars.iv222 = phi i64 [ %indvars.iv.next223.1262, %for.body94.us ], [ %indvars.iv222.unr, %for.body94.us.prol.loopexit ]
  %87 = load ptr, ptr %arrayidx96.us, align 8
  %arrayidx98.us = getelementptr inbounds ptr, ptr %87, i64 %indvars.iv222
  %88 = load ptr, ptr %arrayidx98.us, align 8
  %arrayidx103.us = getelementptr i8, ptr %arrayidx98.us, i64 -8
  %89 = load ptr, ptr %arrayidx103.us, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %88, ptr align 2 %89, i64 %mul105, i1 false)
  %90 = load ptr, ptr %arrayidx96.us, align 8
  %91 = getelementptr ptr, ptr %90, i64 %indvars.iv222
  %arrayidx98.us.1260 = getelementptr i8, ptr %91, i64 8
  %92 = load ptr, ptr %arrayidx98.us.1260, align 8
  %93 = load ptr, ptr %91, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %92, ptr align 2 %93, i64 %mul105, i1 false)
  %indvars.iv.next223.1262 = add nsw i64 %indvars.iv222, 2
  %exitcond226.not.1 = icmp eq i64 %indvars.iv.next223.1262, %wide.trip.count225
  br i1 %exitcond226.not.1, label %for.inc110.us, label %for.body94.us

for.cond91.preheader.us:                          ; preds = %if.end83.loopexit.us
  %arrayidx96.us = getelementptr inbounds i8, ptr %pImage, i64 8
  %wide.trip.count225 = sext i32 %img_size_y_cr to i64
  %94 = sub nsw i64 %wide.trip.count225, %47
  %xtraiter256 = and i64 %94, 1
  %lcmp.mod257.not = icmp eq i64 %xtraiter256, 0
  br i1 %lcmp.mod257.not, label %for.body94.us.prol.loopexit, label %for.body94.us.prol

for.body94.us.prol:                               ; preds = %for.cond91.preheader.us
  %95 = load ptr, ptr %arrayidx96.us, align 8
  %arrayidx98.us.prol = getelementptr inbounds ptr, ptr %95, i64 %47
  %96 = load ptr, ptr %arrayidx98.us.prol, align 8
  %arrayidx103.us.prol = getelementptr i8, ptr %arrayidx98.us.prol, i64 -8
  %97 = load ptr, ptr %arrayidx103.us.prol, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %96, ptr align 2 %97, i64 %mul105, i1 false)
  %indvars.iv.next223.prol = add nsw i64 %47, 1
  br label %for.body94.us.prol.loopexit

for.body94.us.prol.loopexit:                      ; preds = %for.body94.us.prol, %for.cond91.preheader.us
  %indvars.iv222.unr = phi i64 [ %47, %for.cond91.preheader.us ], [ %indvars.iv.next223.prol, %for.body94.us.prol ]
  %98 = add nsw i64 %wide.trip.count225, -1
  %99 = icmp eq i64 %98, %47
  br i1 %99, label %for.inc110.us, label %for.body94.us

if.end83.loopexit.us:                             ; preds = %for.cond60.for.inc80_crit_edge.us.us, %for.body46.us.preheader
  br i1 %cmp86, label %for.cond91.preheader.us, label %for.inc110.us

for.cond60.preheader.us.us.preheader:             ; preds = %for.body46.us.preheader
  %arrayidx65.us = getelementptr inbounds i8, ptr %pImage, i64 8
  %wide.trip.count220 = zext nneg i32 %45 to i64
  %100 = sub nsw i64 %conv104, %46
  %xtraiter248 = and i64 %100, 3
  %lcmp.mod249.not = icmp eq i64 %xtraiter248, 0
  %101 = sub nsw i64 %46, %conv104
  %102 = icmp ugt i64 %101, -4
  br label %for.cond60.preheader.us.us

for.cond60.preheader.us.us:                       ; preds = %for.cond60.preheader.us.us.preheader, %for.cond60.for.inc80_crit_edge.us.us
  %indvars.iv217 = phi i64 [ 0, %for.cond60.preheader.us.us.preheader ], [ %indvars.iv.next218, %for.cond60.for.inc80_crit_edge.us.us ]
  br i1 %lcmp.mod249.not, label %for.body63.us.us.prol.loopexit, label %for.body63.us.us.prol

for.body63.us.us.prol:                            ; preds = %for.cond60.preheader.us.us, %for.body63.us.us.prol
  %indvars.iv212.prol = phi i64 [ %indvars.iv.next213.prol, %for.body63.us.us.prol ], [ %46, %for.cond60.preheader.us.us ]
  %prol.iter250 = phi i64 [ %prol.iter250.next, %for.body63.us.us.prol ], [ 0, %for.cond60.preheader.us.us ]
  %103 = load ptr, ptr %arrayidx65.us, align 8
  %arrayidx67.us.us.prol = getelementptr inbounds ptr, ptr %103, i64 %indvars.iv217
  %104 = load ptr, ptr %arrayidx67.us.us.prol, align 8
  %105 = getelementptr i16, ptr %104, i64 %indvars.iv212.prol
  %arrayidx70.us.us.prol = getelementptr i8, ptr %105, i64 -2
  %106 = load i16, ptr %arrayidx70.us.us.prol, align 2
  store i16 %106, ptr %105, align 2
  %indvars.iv.next213.prol = add nsw i64 %indvars.iv212.prol, 1
  %prol.iter250.next = add i64 %prol.iter250, 1
  %prol.iter250.cmp.not = icmp eq i64 %prol.iter250.next, %xtraiter248
  br i1 %prol.iter250.cmp.not, label %for.body63.us.us.prol.loopexit, label %for.body63.us.us.prol, !llvm.loop !10

for.body63.us.us.prol.loopexit:                   ; preds = %for.body63.us.us.prol, %for.cond60.preheader.us.us
  %indvars.iv212.unr = phi i64 [ %46, %for.cond60.preheader.us.us ], [ %indvars.iv.next213.prol, %for.body63.us.us.prol ]
  br i1 %102, label %for.cond60.for.inc80_crit_edge.us.us, label %for.body63.us.us

for.body63.us.us:                                 ; preds = %for.body63.us.us.prol.loopexit, %for.body63.us.us
  %indvars.iv212 = phi i64 [ %indvars.iv.next213.3, %for.body63.us.us ], [ %indvars.iv212.unr, %for.body63.us.us.prol.loopexit ]
  %107 = load ptr, ptr %arrayidx65.us, align 8
  %arrayidx67.us.us = getelementptr inbounds ptr, ptr %107, i64 %indvars.iv217
  %108 = load ptr, ptr %arrayidx67.us.us, align 8
  %109 = getelementptr i16, ptr %108, i64 %indvars.iv212
  %arrayidx70.us.us = getelementptr i8, ptr %109, i64 -2
  %110 = load i16, ptr %arrayidx70.us.us, align 2
  store i16 %110, ptr %109, align 2
  %111 = load ptr, ptr %arrayidx65.us, align 8
  %arrayidx67.us.us.1252 = getelementptr inbounds ptr, ptr %111, i64 %indvars.iv217
  %112 = load ptr, ptr %arrayidx67.us.us.1252, align 8
  %113 = getelementptr i16, ptr %112, i64 %indvars.iv212
  %114 = getelementptr i8, ptr %113, i64 2
  %115 = load i16, ptr %113, align 2
  store i16 %115, ptr %114, align 2
  %116 = load ptr, ptr %arrayidx65.us, align 8
  %arrayidx67.us.us.2 = getelementptr inbounds ptr, ptr %116, i64 %indvars.iv217
  %117 = load ptr, ptr %arrayidx67.us.us.2, align 8
  %118 = getelementptr i16, ptr %117, i64 %indvars.iv212
  %119 = getelementptr i8, ptr %118, i64 4
  %arrayidx70.us.us.2 = getelementptr i8, ptr %118, i64 2
  %120 = load i16, ptr %arrayidx70.us.us.2, align 2
  store i16 %120, ptr %119, align 2
  %121 = load ptr, ptr %arrayidx65.us, align 8
  %arrayidx67.us.us.3 = getelementptr inbounds ptr, ptr %121, i64 %indvars.iv217
  %122 = load ptr, ptr %arrayidx67.us.us.3, align 8
  %123 = getelementptr i16, ptr %122, i64 %indvars.iv212
  %124 = getelementptr i8, ptr %123, i64 6
  %arrayidx70.us.us.3 = getelementptr i8, ptr %123, i64 4
  %125 = load i16, ptr %arrayidx70.us.us.3, align 2
  store i16 %125, ptr %124, align 2
  %indvars.iv.next213.3 = add nsw i64 %indvars.iv212, 4
  %exitcond216.not.3 = icmp eq i64 %indvars.iv.next213.3, %conv104
  br i1 %exitcond216.not.3, label %for.cond60.for.inc80_crit_edge.us.us, label %for.body63.us.us

for.cond60.for.inc80_crit_edge.us.us:             ; preds = %for.body63.us.us, %for.body63.us.us.prol.loopexit
  %indvars.iv.next218 = add nuw nsw i64 %indvars.iv217, 1
  %exitcond221.not = icmp eq i64 %indvars.iv.next218, %wide.trip.count220
  br i1 %exitcond221.not, label %if.end83.loopexit.us, label %for.cond60.preheader.us.us

for.cond43.preheader.split:                       ; preds = %for.cond43.preheader
  br i1 %cmp86, label %for.body46.us172.preheader, label %if.end113

for.body46.us172.preheader:                       ; preds = %for.cond43.preheader.split
  %126 = sext i32 %45 to i64
  %arrayidx96.us186 = getelementptr inbounds i8, ptr %pImage, i64 8
  %wide.trip.count206 = sext i32 %img_size_y_cr to i64
  %127 = sub nsw i64 %wide.trip.count206, %126
  %128 = xor i64 %126, -1
  %129 = add nsw i64 %128, %wide.trip.count206
  %xtraiter237 = and i64 %127, 1
  %lcmp.mod238.not = icmp eq i64 %xtraiter237, 0
  br i1 %lcmp.mod238.not, label %for.body94.us177.prol.loopexit, label %for.body94.us177.prol

for.body94.us177.prol:                            ; preds = %for.body46.us172.preheader
  %130 = load ptr, ptr %arrayidx96.us186, align 8
  %arrayidx98.us180.prol = getelementptr inbounds ptr, ptr %130, i64 %126
  %131 = load ptr, ptr %arrayidx98.us180.prol, align 8
  %arrayidx103.us181.prol = getelementptr i8, ptr %arrayidx98.us180.prol, i64 -8
  %132 = load ptr, ptr %arrayidx103.us181.prol, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %131, ptr align 2 %132, i64 %mul105, i1 false)
  %indvars.iv.next204.prol = add nsw i64 %126, 1
  br label %for.body94.us177.prol.loopexit

for.body94.us177.prol.loopexit:                   ; preds = %for.body94.us177.prol, %for.body46.us172.preheader
  %indvars.iv203.unr = phi i64 [ %126, %for.body46.us172.preheader ], [ %indvars.iv.next204.prol, %for.body94.us177.prol ]
  %133 = icmp eq i64 %129, 0
  br i1 %133, label %for.inc110.loopexit.us187, label %for.body94.us177

for.body94.us177:                                 ; preds = %for.body94.us177.prol.loopexit, %for.body94.us177
  %indvars.iv203 = phi i64 [ %indvars.iv.next204.1243, %for.body94.us177 ], [ %indvars.iv203.unr, %for.body94.us177.prol.loopexit ]
  %134 = load ptr, ptr %arrayidx96.us186, align 8
  %arrayidx98.us180 = getelementptr inbounds ptr, ptr %134, i64 %indvars.iv203
  %135 = load ptr, ptr %arrayidx98.us180, align 8
  %arrayidx103.us181 = getelementptr i8, ptr %arrayidx98.us180, i64 -8
  %136 = load ptr, ptr %arrayidx103.us181, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %135, ptr align 2 %136, i64 %mul105, i1 false)
  %137 = load ptr, ptr %arrayidx96.us186, align 8
  %138 = getelementptr ptr, ptr %137, i64 %indvars.iv203
  %arrayidx98.us180.1241 = getelementptr i8, ptr %138, i64 8
  %139 = load ptr, ptr %arrayidx98.us180.1241, align 8
  %140 = load ptr, ptr %138, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %139, ptr align 2 %140, i64 %mul105, i1 false)
  %indvars.iv.next204.1243 = add nsw i64 %indvars.iv203, 2
  %exitcond207.not.1 = icmp eq i64 %indvars.iv.next204.1243, %wide.trip.count206
  br i1 %exitcond207.not.1, label %for.inc110.loopexit.us187, label %for.body94.us177

for.inc110.loopexit.us187:                        ; preds = %for.body94.us177, %for.body94.us177.prol.loopexit
  %arrayidx96.us186.1 = getelementptr inbounds i8, ptr %pImage, i64 16
  %xtraiter245 = and i64 %127, 1
  %lcmp.mod246.not = icmp eq i64 %xtraiter245, 0
  br i1 %lcmp.mod246.not, label %for.body94.us177.1.prol.loopexit, label %for.body94.us177.1.prol

for.body94.us177.1.prol:                          ; preds = %for.inc110.loopexit.us187
  %141 = load ptr, ptr %arrayidx96.us186.1, align 8
  %arrayidx98.us180.1.prol = getelementptr inbounds ptr, ptr %141, i64 %126
  %142 = load ptr, ptr %arrayidx98.us180.1.prol, align 8
  %arrayidx103.us181.1.prol = getelementptr i8, ptr %arrayidx98.us180.1.prol, i64 -8
  %143 = load ptr, ptr %arrayidx103.us181.1.prol, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %142, ptr align 2 %143, i64 %mul105, i1 false)
  %indvars.iv.next204.1.prol = add nsw i64 %126, 1
  br label %for.body94.us177.1.prol.loopexit

for.body94.us177.1.prol.loopexit:                 ; preds = %for.body94.us177.1.prol, %for.inc110.loopexit.us187
  %indvars.iv203.1.unr = phi i64 [ %126, %for.inc110.loopexit.us187 ], [ %indvars.iv.next204.1.prol, %for.body94.us177.1.prol ]
  %144 = icmp eq i64 %129, 0
  br i1 %144, label %if.end113, label %for.body94.us177.1

for.body94.us177.1:                               ; preds = %for.body94.us177.1.prol.loopexit, %for.body94.us177.1
  %indvars.iv203.1 = phi i64 [ %indvars.iv.next204.1.1, %for.body94.us177.1 ], [ %indvars.iv203.1.unr, %for.body94.us177.1.prol.loopexit ]
  %145 = load ptr, ptr %arrayidx96.us186.1, align 8
  %arrayidx98.us180.1 = getelementptr inbounds ptr, ptr %145, i64 %indvars.iv203.1
  %146 = load ptr, ptr %arrayidx98.us180.1, align 8
  %arrayidx103.us181.1 = getelementptr i8, ptr %arrayidx98.us180.1, i64 -8
  %147 = load ptr, ptr %arrayidx103.us181.1, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %146, ptr align 2 %147, i64 %mul105, i1 false)
  %148 = load ptr, ptr %arrayidx96.us186.1, align 8
  %149 = getelementptr ptr, ptr %148, i64 %indvars.iv203.1
  %arrayidx98.us180.1.1 = getelementptr i8, ptr %149, i64 8
  %150 = load ptr, ptr %arrayidx98.us180.1.1, align 8
  %151 = load ptr, ptr %149, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %150, ptr align 2 %151, i64 %mul105, i1 false)
  %indvars.iv.next204.1.1 = add nsw i64 %indvars.iv203.1, 2
  %exitcond207.1.not.1 = icmp eq i64 %indvars.iv.next204.1.1, %wide.trip.count206
  br i1 %exitcond207.1.not.1, label %if.end113, label %for.body94.us177.1

if.end113:                                        ; preds = %for.body94.us177.1.prol.loopexit, %for.body94.us177.1, %for.body94.us.1.prol.loopexit, %for.body94.us.1, %for.cond43.preheader.split, %if.end83.loopexit.us.1, %if.end39
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #11

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nounwind }
attributes #13 = { nounwind allocsize(0) }

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
