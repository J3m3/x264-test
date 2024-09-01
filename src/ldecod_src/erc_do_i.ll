; ModuleID = 'ldecod_src/erc_do_i.c'
source_filename = "ldecod_src/erc_do_i.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local range(i32 0, 2) i32 @ercConcealIntraFrame(ptr nocapture noundef readonly %p_Vid, ptr nocapture noundef readonly %recfr, i32 noundef %picSizeX, i32 noundef %picSizeY, ptr noundef readonly %errorVar) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq ptr %errorVar, null
  br i1 %tobool.not, label %cleanup, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %concealment = getelementptr inbounds i8, ptr %errorVar, i64 64
  %0 = load i32, ptr %concealment, align 8
  %tobool1.not = icmp eq i32 %0, 0
  br i1 %tobool1.not, label %cleanup, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %nOfCorruptedSegments = getelementptr inbounds i8, ptr %errorVar, i64 60
  %1 = load i32, ptr %nOfCorruptedSegments, align 4
  %tobool2.not = icmp eq i32 %1, 0
  br i1 %tobool2.not, label %cleanup, label %if.then3

if.then3:                                         ; preds = %if.then
  %shr = ashr i32 %picSizeY, 3
  %shr4 = ashr i32 %picSizeX, 3
  %yCondition = getelementptr inbounds i8, ptr %errorVar, i64 8
  %2 = load ptr, ptr %yCondition, align 8
  tail call fastcc void @concealBlocks(ptr noundef %p_Vid, i32 noundef %shr4, i32 noundef %shr, i32 noundef 0, ptr noundef %recfr, i32 noundef %picSizeX, ptr noundef %2)
  %shr5 = ashr i32 %picSizeY, 4
  %shr6 = ashr i32 %picSizeX, 4
  %uCondition = getelementptr inbounds i8, ptr %errorVar, i64 16
  %3 = load ptr, ptr %uCondition, align 8
  tail call fastcc void @concealBlocks(ptr noundef %p_Vid, i32 noundef %shr6, i32 noundef %shr5, i32 noundef 1, ptr noundef %recfr, i32 noundef %picSizeX, ptr noundef %3)
  %vCondition = getelementptr inbounds i8, ptr %errorVar, i64 24
  %4 = load ptr, ptr %vCondition, align 8
  tail call fastcc void @concealBlocks(ptr noundef %p_Vid, i32 noundef %shr6, i32 noundef %shr5, i32 noundef 2, ptr noundef %recfr, i32 noundef %picSizeX, ptr noundef %4)
  br label %cleanup

cleanup:                                          ; preds = %entry, %land.lhs.true, %if.then, %if.then3
  %retval.0 = phi i32 [ 1, %if.then3 ], [ 1, %if.then ], [ 0, %land.lhs.true ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @concealBlocks(ptr nocapture noundef readonly %p_Vid, i32 noundef %lastColumn, i32 noundef %lastRow, i32 noundef %comp, ptr nocapture noundef readonly %recfr, i32 noundef %picSizeX, ptr nocapture noundef %condition) unnamed_addr #0 {
entry:
  %predBlocks = alloca [8 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %predBlocks) #5
  %cmp = icmp eq i32 %comp, 0
  %. = select i1 %cmp, i32 2, i32 1
  %cmp1608 = icmp sgt i32 %lastColumn, 0
  br i1 %cmp1608, label %for.cond2.preheader.lr.ph, label %for.end198

for.cond2.preheader.lr.ph:                        ; preds = %entry
  %cmp3606 = icmp sgt i32 %lastRow, 0
  %sub12.i = sub nsw i32 %lastRow, %.
  %invariant.gep.i = getelementptr i8, ptr %condition, i64 -1
  %arrayidx11.i = getelementptr inbounds i8, ptr %predBlocks, i64 16
  %arrayidx31.i = getelementptr inbounds i8, ptr %predBlocks, i64 24
  %arrayidx52.i = getelementptr inbounds i8, ptr %predBlocks, i64 20
  %arrayidx125.i = getelementptr inbounds i8, ptr %predBlocks, i64 28
  %vptr = getelementptr inbounds i8, ptr %recfr, i64 24
  %shr36 = ashr i32 %picSizeX, 1
  %uptr = getelementptr inbounds i8, ptr %recfr, i64 16
  %yptr = getelementptr inbounds i8, ptr %recfr, i64 8
  br i1 %cmp3606, label %for.cond2.preheader.us.preheader, label %for.cond2.preheader

for.cond2.preheader.us.preheader:                 ; preds = %for.cond2.preheader.lr.ph
  %sub106.i = sub nsw i32 %lastColumn, %.
  %0 = zext nneg i32 %. to i64
  %1 = zext nneg i32 %lastRow to i64
  %2 = zext nneg i32 %lastColumn to i64
  %3 = sext i32 %sub12.i to i64
  %4 = zext nneg i32 %. to i64
  %5 = sext i32 %sub106.i to i64
  %invariant.gep647 = getelementptr i8, ptr %condition, i64 %4
  %invariant.gep649 = getelementptr i8, ptr %condition, i64 %2
  br label %for.cond2.preheader.us

for.cond2.preheader.us:                           ; preds = %for.cond2.preheader.us.preheader, %for.cond2.for.inc196_crit_edge.us
  %indvars.iv630 = phi i64 [ 0, %for.cond2.preheader.us.preheader ], [ %indvars.iv.next631, %for.cond2.for.inc196_crit_edge.us ]
  %cmp34.i.not.us = icmp eq i64 %indvars.iv630, 0
  %cmp107.i.us = icmp slt i64 %indvars.iv630, %5
  %6 = getelementptr i8, ptr %condition, i64 %indvars.iv630
  %invariant.gep = getelementptr i8, ptr %condition, i64 %indvars.iv630
  %invariant.gep643 = getelementptr i8, ptr %condition, i64 %indvars.iv630
  %invariant.gep645 = getelementptr i8, ptr %condition, i64 %indvars.iv630
  %7 = trunc nuw nsw i64 %indvars.iv630 to i32
  %8 = getelementptr i8, ptr %condition, i64 %indvars.iv630
  %9 = getelementptr i8, ptr %condition, i64 %indvars.iv630
  %10 = trunc nuw nsw i64 %indvars.iv630 to i32
  %11 = getelementptr i8, ptr %condition, i64 %indvars.iv630
  %12 = getelementptr i8, ptr %condition, i64 %indvars.iv630
  %13 = trunc nuw nsw i64 %indvars.iv630 to i32
  %.sink652 = trunc i64 %indvars.iv630 to i32
  br label %for.body4.us

for.body4.us:                                     ; preds = %for.cond2.preheader.us, %for.inc193.us
  %row.0607.us = phi i32 [ 0, %for.cond2.preheader.us ], [ %add194.us, %for.inc193.us ]
  %mul.us = mul nsw i32 %row.0607.us, %lastColumn
  %14 = sext i32 %mul.us to i64
  %arrayidx.us = getelementptr i8, ptr %6, i64 %14
  %15 = load i8, ptr %arrayidx.us, align 1
  %cmp5.us = icmp slt i8 %15, 2
  br i1 %cmp5.us, label %for.cond9.us.preheader, label %for.inc193.us

for.cond9.us.preheader:                           ; preds = %for.body4.us
  %16 = sext i32 %row.0607.us to i64
  br label %for.cond9.us

for.cond9.us:                                     ; preds = %for.cond9.us.preheader, %for.body12.us
  %indvars.iv = phi i64 [ %16, %for.cond9.us.preheader ], [ %indvars.iv.next, %for.body12.us ]
  %indvars.iv.next = add nsw i64 %indvars.iv, %0
  %cmp10.us = icmp slt i64 %indvars.iv.next, %1
  br i1 %cmp10.us, label %for.body12.us, label %for.cond27.preheader.us

for.body30.us:                                    ; preds = %for.cond27.preheader.us, %for.inc66.us
  %indvars.iv618 = phi i64 [ %indvars.iv.next619, %for.inc66.us ], [ %16, %for.cond27.preheader.us ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %predBlocks, i8 0, i64 32, i1 false)
  %cmp.i.us = icmp sgt i64 %indvars.iv618, 0
  %cmp13.i.us = icmp slt i64 %indvars.iv618, %3
  %17 = add nsw i64 %indvars.iv618, -1
  %18 = mul nsw i64 %17, %2
  %gep644 = getelementptr i8, ptr %invariant.gep643, i64 %18
  %indvars.iv.next619 = add nsw i64 %indvars.iv618, %0
  %19 = mul nsw i64 %indvars.iv.next619, %2
  %gep646 = getelementptr i8, ptr %invariant.gep645, i64 %19
  %20 = mul nsw i64 %indvars.iv618, %2
  %21 = add nsw i64 %20, %indvars.iv630
  %gep.i.us = getelementptr i8, ptr %invariant.gep.i, i64 %21
  %gep648 = getelementptr i8, ptr %invariant.gep647, i64 %21
  br i1 %cmp.i.us, label %land.lhs.true.peel.i.us, label %if.end.peel.i.us

land.lhs.true.peel.i.us:                          ; preds = %for.body30.us
  %22 = load i8, ptr %gep644, align 1
  %cmp3.not.peel.i.us = icmp slt i8 %22, 3
  br i1 %cmp3.not.peel.i.us, label %if.end.peel.i.us, label %if.then.peel.i.us

if.then.peel.i.us:                                ; preds = %land.lhs.true.peel.i.us
  %conv2.peel.i.us = zext nneg i8 %22 to i32
  store i32 %conv2.peel.i.us, ptr %arrayidx11.i, align 16
  br label %if.end.peel.i.us

if.end.peel.i.us:                                 ; preds = %if.then.peel.i.us, %land.lhs.true.peel.i.us, %for.body30.us
  %srcCounter.0.peel.i.us = phi i32 [ 1, %if.then.peel.i.us ], [ 0, %land.lhs.true.peel.i.us ], [ 0, %for.body30.us ]
  br i1 %cmp13.i.us, label %land.lhs.true15.peel.i.us, label %if.end33.peel.i.us

land.lhs.true15.peel.i.us:                        ; preds = %if.end.peel.i.us
  %23 = load i8, ptr %gep646, align 1
  %cmp22.not.peel.i.us = icmp slt i8 %23, 3
  br i1 %cmp22.not.peel.i.us, label %if.end33.peel.i.us, label %if.then24.peel.i.us

if.then24.peel.i.us:                              ; preds = %land.lhs.true15.peel.i.us
  %conv21.peel.i.us = zext nneg i8 %23 to i32
  store i32 %conv21.peel.i.us, ptr %arrayidx31.i, align 8
  %inc32.peel.i.us = add nuw nsw i32 %srcCounter.0.peel.i.us, 1
  br label %if.end33.peel.i.us

if.end33.peel.i.us:                               ; preds = %if.then24.peel.i.us, %land.lhs.true15.peel.i.us, %if.end.peel.i.us
  %srcCounter.1.peel.i.us = phi i32 [ %inc32.peel.i.us, %if.then24.peel.i.us ], [ %srcCounter.0.peel.i.us, %land.lhs.true15.peel.i.us ], [ %srcCounter.0.peel.i.us, %if.end.peel.i.us ]
  br i1 %cmp34.i.not.us, label %if.end105.peel.i.us, label %if.then36.peel.i.us

if.then36.peel.i.us:                              ; preds = %if.end33.peel.i.us
  %24 = load i8, ptr %gep.i.us, align 1
  %cmp43.not.peel.i.us = icmp slt i8 %24, 3
  br i1 %cmp43.not.peel.i.us, label %if.end105.peel.i.us, label %if.then45.peel.i.us

if.then45.peel.i.us:                              ; preds = %if.then36.peel.i.us
  %conv42.peel.i.us = zext nneg i8 %24 to i32
  store i32 %conv42.peel.i.us, ptr %arrayidx52.i, align 4
  %inc53.peel.i.us = add nuw nsw i32 %srcCounter.1.peel.i.us, 1
  br label %if.end105.peel.i.us

if.end105.peel.i.us:                              ; preds = %if.then45.peel.i.us, %if.then36.peel.i.us, %if.end33.peel.i.us
  %srcCounter.4.peel.i.us = phi i32 [ %srcCounter.1.peel.i.us, %if.end33.peel.i.us ], [ %inc53.peel.i.us, %if.then45.peel.i.us ], [ %srcCounter.1.peel.i.us, %if.then36.peel.i.us ]
  br i1 %cmp107.i.us, label %if.then109.peel.i.us, label %if.end178.peel.i.us

if.then109.peel.i.us:                             ; preds = %if.end105.peel.i.us
  %25 = load i8, ptr %gep648, align 1
  %cmp116.not.peel.i.us = icmp slt i8 %25, 3
  br i1 %cmp116.not.peel.i.us, label %if.end178.peel.i.us, label %if.then118.peel.i.us

if.then118.peel.i.us:                             ; preds = %if.then109.peel.i.us
  %conv115.peel.i.us = zext nneg i8 %25 to i32
  store i32 %conv115.peel.i.us, ptr %arrayidx125.i, align 4
  %inc126.peel.i.us = add nuw nsw i32 %srcCounter.4.peel.i.us, 1
  br label %if.end178.peel.i.us

if.end178.peel.i.us:                              ; preds = %if.then118.peel.i.us, %if.then109.peel.i.us, %if.end105.peel.i.us
  %srcCounter.7.peel.i.us = phi i32 [ %srcCounter.4.peel.i.us, %if.end105.peel.i.us ], [ %inc126.peel.i.us, %if.then118.peel.i.us ], [ %srcCounter.4.peel.i.us, %if.then109.peel.i.us ]
  %cmp183.peel.i.us = icmp ult i32 %srcCounter.7.peel.i.us, 2
  br i1 %cmp183.peel.i.us, label %do.body.i.us, label %ercCollect8PredBlocks.exit.us

do.body.i.us:                                     ; preds = %if.end178.peel.i.us
  br i1 %cmp.i.us, label %land.lhs.true.i.us, label %if.end.i.us

land.lhs.true.i.us:                               ; preds = %do.body.i.us
  %26 = load i8, ptr %gep644, align 1
  %cmp3.not.i.us = icmp slt i8 %26, 2
  br i1 %cmp3.not.i.us, label %if.end.i.us, label %if.then.i.us

if.then.i.us:                                     ; preds = %land.lhs.true.i.us
  %conv2.i.us = zext nneg i8 %26 to i32
  store i32 %conv2.i.us, ptr %arrayidx11.i, align 16
  br label %if.end.i.us

if.end.i.us:                                      ; preds = %if.then.i.us, %land.lhs.true.i.us, %do.body.i.us
  br i1 %cmp13.i.us, label %land.lhs.true15.i.us, label %if.end33.i.us

land.lhs.true15.i.us:                             ; preds = %if.end.i.us
  %27 = load i8, ptr %gep646, align 1
  %cmp22.not.i.us = icmp slt i8 %27, 2
  br i1 %cmp22.not.i.us, label %if.end33.i.us, label %if.then24.i.us

if.then24.i.us:                                   ; preds = %land.lhs.true15.i.us
  %conv21.i.us = zext nneg i8 %27 to i32
  store i32 %conv21.i.us, ptr %arrayidx31.i, align 8
  br label %if.end33.i.us

if.end33.i.us:                                    ; preds = %if.then24.i.us, %land.lhs.true15.i.us, %if.end.i.us
  br i1 %cmp34.i.not.us, label %if.end105.i.us, label %if.then36.i.us

if.then36.i.us:                                   ; preds = %if.end33.i.us
  %28 = load i8, ptr %gep.i.us, align 1
  %cmp43.not.i.us = icmp slt i8 %28, 2
  br i1 %cmp43.not.i.us, label %if.end105.i.us, label %if.then45.i.us

if.then45.i.us:                                   ; preds = %if.then36.i.us
  %conv42.i.us = zext nneg i8 %28 to i32
  store i32 %conv42.i.us, ptr %arrayidx52.i, align 4
  br label %if.end105.i.us

if.end105.i.us:                                   ; preds = %if.then45.i.us, %if.then36.i.us, %if.end33.i.us
  br i1 %cmp107.i.us, label %if.then109.i.us, label %ercCollect8PredBlocks.exit.us

if.then109.i.us:                                  ; preds = %if.end105.i.us
  %29 = load i8, ptr %gep648, align 1
  %cmp116.not.i.us = icmp slt i8 %29, 2
  br i1 %cmp116.not.i.us, label %ercCollect8PredBlocks.exit.us, label %if.then118.i.us

if.then118.i.us:                                  ; preds = %if.then109.i.us
  %conv115.i.us = zext nneg i8 %29 to i32
  store i32 %conv115.i.us, ptr %arrayidx125.i, align 4
  br label %ercCollect8PredBlocks.exit.us

ercCollect8PredBlocks.exit.us:                    ; preds = %if.then118.i.us, %if.then109.i.us, %if.end105.i.us, %if.end178.peel.i.us
  switch i32 %comp, label %default.unreachable [
    i32 0, label %if.then39.us
    i32 1, label %sw.bb32.us
    i32 2, label %if.else60.us
  ]

sw.bb32.us:                                       ; preds = %ercCollect8PredBlocks.exit.us
  br label %if.else60.us

if.else60.us:                                     ; preds = %ercCollect8PredBlocks.exit.us, %sw.bb32.us
  %uptr.sink = phi ptr [ %uptr, %sw.bb32.us ], [ %vptr, %ercCollect8PredBlocks.exit.us ]
  %30 = load ptr, ptr %uptr.sink, align 8
  %31 = trunc nsw i64 %indvars.iv618 to i32
  call void @ercPixConcealIMB(ptr noundef %p_Vid, ptr noundef %30, i32 noundef %31, i32 noundef %.sink652, ptr noundef nonnull %predBlocks, i32 noundef %shr36, i32 noundef 1)
  %arrayidx64.us = getelementptr inbounds i8, ptr %condition, i64 %21
  br label %for.inc66.us

if.then39.us:                                     ; preds = %ercCollect8PredBlocks.exit.us
  %32 = load ptr, ptr %yptr, align 8
  %33 = trunc nsw i64 %indvars.iv618 to i32
  call void @ercPixConcealIMB(ptr noundef %p_Vid, ptr noundef %32, i32 noundef %33, i32 noundef %7, ptr noundef nonnull %predBlocks, i32 noundef %picSizeX, i32 noundef 2)
  %arrayidx43.us = getelementptr inbounds i8, ptr %condition, i64 %21
  store i8 2, ptr %arrayidx43.us, align 1
  %arrayidx48.us = getelementptr i8, ptr %arrayidx43.us, i64 1
  store i8 2, ptr %arrayidx48.us, align 1
  %gep650 = getelementptr i8, ptr %invariant.gep649, i64 %21
  store i8 2, ptr %gep650, align 1
  %arrayidx59.us = getelementptr i8, ptr %gep650, i64 1
  br label %for.inc66.us

for.inc66.us:                                     ; preds = %if.then39.us, %if.else60.us
  %arrayidx59.us.sink = phi ptr [ %arrayidx59.us, %if.then39.us ], [ %arrayidx64.us, %if.else60.us ]
  store i8 2, ptr %arrayidx59.us.sink, align 1
  %cmp28.us = icmp slt i64 %indvars.iv.next619, %1
  br i1 %cmp28.us, label %for.body30.us, label %for.inc193.us

for.body12.us:                                    ; preds = %for.cond9.us
  %34 = mul nsw i64 %indvars.iv.next, %2
  %gep = getelementptr i8, ptr %invariant.gep, i64 %34
  %35 = load i8, ptr %gep, align 1
  %cmp18.us = icmp sgt i8 %35, 1
  br i1 %cmp18.us, label %if.else69.us, label %for.cond9.us

if.else69.us:                                     ; preds = %for.body12.us
  %36 = trunc nsw i64 %indvars.iv to i32
  %cmp70.us = icmp eq i32 %row.0607.us, 0
  br i1 %cmp70.us, label %for.cond73.preheader.us, label %if.else124.us

if.else124.us:                                    ; preds = %if.else69.us
  %add125.us = add nsw i32 %., %36
  %sub126.us = sub i32 %., %row.0607.us
  %add127.us = add i32 %sub126.us, %36
  %cmp129600.us = icmp sgt i32 %add127.us, 0
  br i1 %cmp129600.us, label %for.body131.us, label %for.inc193.us

for.body131.us:                                   ; preds = %if.else124.us, %for.inc187.us
  %i.0603.us = phi i32 [ %add188.us, %for.inc187.us ], [ 0, %if.else124.us ]
  %firstCorruptedRow.0602.us = phi i32 [ %firstCorruptedRow.1.us, %for.inc187.us ], [ %row.0607.us, %if.else124.us ]
  %lastCorruptedRow.2601.us = phi i32 [ %lastCorruptedRow.3.us, %for.inc187.us ], [ %36, %if.else124.us ]
  %rem.us = and i32 %i.0603.us, 1
  %tobool.not.us = icmp eq i32 %rem.us, 0
  %sub133.us = select i1 %tobool.not.us, i32 0, i32 %.
  %lastCorruptedRow.3.us = sub nsw i32 %lastCorruptedRow.2601.us, %sub133.us
  %add135.us = select i1 %tobool.not.us, i32 %., i32 0
  %firstCorruptedRow.1.us = add nsw i32 %add135.us, %firstCorruptedRow.0602.us
  %currRow.2.us = select i1 %tobool.not.us, i32 %firstCorruptedRow.0602.us, i32 %lastCorruptedRow.2601.us
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %predBlocks, i8 0, i64 32, i1 false)
  %cmp.i488.us = icmp sgt i32 %currRow.2.us, 0
  %cmp13.i490.us = icmp sgt i32 %sub12.i, %currRow.2.us
  %sub.i495.us = add nsw i32 %currRow.2.us, -1
  %mul.i496.us = mul nsw i32 %sub.i495.us, %lastColumn
  %37 = sext i32 %mul.i496.us to i64
  %arrayidx.i499.us = getelementptr i8, ptr %8, i64 %37
  %add16.i501.us = add nsw i32 %currRow.2.us, %.
  %mul17.i502.us = mul nsw i32 %add16.i501.us, %lastColumn
  %38 = sext i32 %mul17.i502.us to i64
  %arrayidx20.i505.us = getelementptr i8, ptr %9, i64 %38
  %mul37.i507.us = mul nsw i32 %currRow.2.us, %lastColumn
  %add38.i508.us = add nsw i32 %mul37.i507.us, %10
  %39 = sext i32 %add38.i508.us to i64
  %gep.i509.us = getelementptr i8, ptr %invariant.gep.i, i64 %39
  %add112.i515.us = add nsw i32 %add38.i508.us, %.
  %idxprom113.i516.us = sext i32 %add112.i515.us to i64
  %arrayidx114.i517.us = getelementptr inbounds i8, ptr %condition, i64 %idxprom113.i516.us
  br i1 %cmp.i488.us, label %land.lhs.true.peel.i586.us, label %if.end.peel.i527.us

land.lhs.true.peel.i586.us:                       ; preds = %for.body131.us
  %40 = load i8, ptr %arrayidx.i499.us, align 1
  %cmp3.not.peel.i587.us = icmp slt i8 %40, 3
  br i1 %cmp3.not.peel.i587.us, label %if.end.peel.i527.us, label %if.then.peel.i588.us

if.then.peel.i588.us:                             ; preds = %land.lhs.true.peel.i586.us
  %conv2.peel.i589.us = zext nneg i8 %40 to i32
  store i32 %conv2.peel.i589.us, ptr %arrayidx11.i, align 16
  br label %if.end.peel.i527.us

if.end.peel.i527.us:                              ; preds = %if.then.peel.i588.us, %land.lhs.true.peel.i586.us, %for.body131.us
  %srcCounter.0.peel.i528.us = phi i32 [ 1, %if.then.peel.i588.us ], [ 0, %land.lhs.true.peel.i586.us ], [ 0, %for.body131.us ]
  br i1 %cmp13.i490.us, label %land.lhs.true15.peel.i581.us, label %if.end33.peel.i529.us

land.lhs.true15.peel.i581.us:                     ; preds = %if.end.peel.i527.us
  %41 = load i8, ptr %arrayidx20.i505.us, align 1
  %cmp22.not.peel.i582.us = icmp slt i8 %41, 3
  br i1 %cmp22.not.peel.i582.us, label %if.end33.peel.i529.us, label %if.then24.peel.i583.us

if.then24.peel.i583.us:                           ; preds = %land.lhs.true15.peel.i581.us
  %conv21.peel.i584.us = zext nneg i8 %41 to i32
  store i32 %conv21.peel.i584.us, ptr %arrayidx31.i, align 8
  %inc32.peel.i585.us = add nuw nsw i32 %srcCounter.0.peel.i528.us, 1
  br label %if.end33.peel.i529.us

if.end33.peel.i529.us:                            ; preds = %if.then24.peel.i583.us, %land.lhs.true15.peel.i581.us, %if.end.peel.i527.us
  %srcCounter.1.peel.i530.us = phi i32 [ %inc32.peel.i585.us, %if.then24.peel.i583.us ], [ %srcCounter.0.peel.i528.us, %land.lhs.true15.peel.i581.us ], [ %srcCounter.0.peel.i528.us, %if.end.peel.i527.us ]
  br i1 %cmp34.i.not.us, label %if.end105.peel.i531.us, label %if.then36.peel.i574.us

if.then36.peel.i574.us:                           ; preds = %if.end33.peel.i529.us
  %42 = load i8, ptr %gep.i509.us, align 1
  %cmp43.not.peel.i575.us = icmp slt i8 %42, 3
  br i1 %cmp43.not.peel.i575.us, label %if.end105.peel.i531.us, label %if.then45.peel.i576.us

if.then45.peel.i576.us:                           ; preds = %if.then36.peel.i574.us
  %conv42.peel.i577.us = zext nneg i8 %42 to i32
  store i32 %conv42.peel.i577.us, ptr %arrayidx52.i, align 4
  %inc53.peel.i578.us = add nuw nsw i32 %srcCounter.1.peel.i530.us, 1
  br label %if.end105.peel.i531.us

if.end105.peel.i531.us:                           ; preds = %if.then45.peel.i576.us, %if.then36.peel.i574.us, %if.end33.peel.i529.us
  %srcCounter.4.peel.i532.us = phi i32 [ %srcCounter.1.peel.i530.us, %if.end33.peel.i529.us ], [ %inc53.peel.i578.us, %if.then45.peel.i576.us ], [ %srcCounter.1.peel.i530.us, %if.then36.peel.i574.us ]
  br i1 %cmp107.i.us, label %if.then109.peel.i567.us, label %if.end178.peel.i533.us

if.then109.peel.i567.us:                          ; preds = %if.end105.peel.i531.us
  %43 = load i8, ptr %arrayidx114.i517.us, align 1
  %cmp116.not.peel.i568.us = icmp slt i8 %43, 3
  br i1 %cmp116.not.peel.i568.us, label %if.end178.peel.i533.us, label %if.then118.peel.i569.us

if.then118.peel.i569.us:                          ; preds = %if.then109.peel.i567.us
  %conv115.peel.i570.us = zext nneg i8 %43 to i32
  store i32 %conv115.peel.i570.us, ptr %arrayidx125.i, align 4
  %inc126.peel.i571.us = add nuw nsw i32 %srcCounter.4.peel.i532.us, 1
  br label %if.end178.peel.i533.us

if.end178.peel.i533.us:                           ; preds = %if.then118.peel.i569.us, %if.then109.peel.i567.us, %if.end105.peel.i531.us
  %srcCounter.7.peel.i534.us = phi i32 [ %srcCounter.4.peel.i532.us, %if.end105.peel.i531.us ], [ %inc126.peel.i571.us, %if.then118.peel.i569.us ], [ %srcCounter.4.peel.i532.us, %if.then109.peel.i567.us ]
  %cmp183.peel.i535.us = icmp ult i32 %srcCounter.7.peel.i534.us, 2
  br i1 %cmp183.peel.i535.us, label %do.body.i537.us, label %ercCollect8PredBlocks.exit590.us

do.body.i537.us:                                  ; preds = %if.end178.peel.i533.us
  br i1 %cmp.i488.us, label %land.lhs.true.i563.us, label %if.end.i538.us

land.lhs.true.i563.us:                            ; preds = %do.body.i537.us
  %44 = load i8, ptr %arrayidx.i499.us, align 1
  %cmp3.not.i564.us = icmp slt i8 %44, 2
  br i1 %cmp3.not.i564.us, label %if.end.i538.us, label %if.then.i565.us

if.then.i565.us:                                  ; preds = %land.lhs.true.i563.us
  %conv2.i566.us = zext nneg i8 %44 to i32
  store i32 %conv2.i566.us, ptr %arrayidx11.i, align 16
  br label %if.end.i538.us

if.end.i538.us:                                   ; preds = %if.then.i565.us, %land.lhs.true.i563.us, %do.body.i537.us
  br i1 %cmp13.i490.us, label %land.lhs.true15.i558.us, label %if.end33.i540.us

land.lhs.true15.i558.us:                          ; preds = %if.end.i538.us
  %45 = load i8, ptr %arrayidx20.i505.us, align 1
  %cmp22.not.i559.us = icmp slt i8 %45, 2
  br i1 %cmp22.not.i559.us, label %if.end33.i540.us, label %if.then24.i560.us

if.then24.i560.us:                                ; preds = %land.lhs.true15.i558.us
  %conv21.i561.us = zext nneg i8 %45 to i32
  store i32 %conv21.i561.us, ptr %arrayidx31.i, align 8
  br label %if.end33.i540.us

if.end33.i540.us:                                 ; preds = %if.then24.i560.us, %land.lhs.true15.i558.us, %if.end.i538.us
  br i1 %cmp34.i.not.us, label %if.end105.i542.us, label %if.then36.i551.us

if.then36.i551.us:                                ; preds = %if.end33.i540.us
  %46 = load i8, ptr %gep.i509.us, align 1
  %cmp43.not.i552.us = icmp slt i8 %46, 2
  br i1 %cmp43.not.i552.us, label %if.end105.i542.us, label %if.then45.i553.us

if.then45.i553.us:                                ; preds = %if.then36.i551.us
  %conv42.i554.us = zext nneg i8 %46 to i32
  store i32 %conv42.i554.us, ptr %arrayidx52.i, align 4
  br label %if.end105.i542.us

if.end105.i542.us:                                ; preds = %if.then45.i553.us, %if.then36.i551.us, %if.end33.i540.us
  br i1 %cmp107.i.us, label %if.then109.i544.us, label %ercCollect8PredBlocks.exit590.us

if.then109.i544.us:                               ; preds = %if.end105.i542.us
  %47 = load i8, ptr %arrayidx114.i517.us, align 1
  %cmp116.not.i545.us = icmp slt i8 %47, 2
  br i1 %cmp116.not.i545.us, label %ercCollect8PredBlocks.exit590.us, label %if.then118.i546.us

if.then118.i546.us:                               ; preds = %if.then109.i544.us
  %conv115.i547.us = zext nneg i8 %47 to i32
  store i32 %conv115.i547.us, ptr %arrayidx125.i, align 4
  br label %ercCollect8PredBlocks.exit590.us

ercCollect8PredBlocks.exit590.us:                 ; preds = %if.then118.i546.us, %if.then109.i544.us, %if.end105.i542.us, %if.end178.peel.i533.us
  switch i32 %comp, label %default.unreachable [
    i32 0, label %if.then160.us
    i32 1, label %sw.bb149.us
    i32 2, label %if.else181.us
  ]

sw.bb149.us:                                      ; preds = %ercCollect8PredBlocks.exit590.us
  br label %if.else181.us

if.else181.us:                                    ; preds = %ercCollect8PredBlocks.exit590.us, %sw.bb149.us
  %uptr.sink653 = phi ptr [ %uptr, %sw.bb149.us ], [ %vptr, %ercCollect8PredBlocks.exit590.us ]
  %48 = load ptr, ptr %uptr.sink653, align 8
  call void @ercPixConcealIMB(ptr noundef %p_Vid, ptr noundef %48, i32 noundef %currRow.2.us, i32 noundef %10, ptr noundef nonnull %predBlocks, i32 noundef %shr36, i32 noundef 1)
  %arrayidx185.us = getelementptr inbounds i8, ptr %condition, i64 %39
  br label %for.inc187.us

if.then160.us:                                    ; preds = %ercCollect8PredBlocks.exit590.us
  %49 = load ptr, ptr %yptr, align 8
  call void @ercPixConcealIMB(ptr noundef %p_Vid, ptr noundef %49, i32 noundef %currRow.2.us, i32 noundef %10, ptr noundef nonnull %predBlocks, i32 noundef %picSizeX, i32 noundef 2)
  %arrayidx164.us = getelementptr inbounds i8, ptr %condition, i64 %39
  store i8 2, ptr %arrayidx164.us, align 1
  %arrayidx169.us = getelementptr i8, ptr %arrayidx164.us, i64 1
  store i8 2, ptr %arrayidx169.us, align 1
  %add172.us = add nsw i32 %add38.i508.us, %lastColumn
  %idxprom173.us = sext i32 %add172.us to i64
  %arrayidx174.us = getelementptr inbounds i8, ptr %condition, i64 %idxprom173.us
  store i8 2, ptr %arrayidx174.us, align 1
  %arrayidx180.us = getelementptr i8, ptr %arrayidx174.us, i64 1
  br label %for.inc187.us

for.inc187.us:                                    ; preds = %if.then160.us, %if.else181.us
  %arrayidx180.us.sink = phi ptr [ %arrayidx180.us, %if.then160.us ], [ %arrayidx185.us, %if.else181.us ]
  store i8 2, ptr %arrayidx180.us.sink, align 1
  %add188.us = add nuw nsw i32 %i.0603.us, %.
  %cmp129.us = icmp slt i32 %add188.us, %add127.us
  br i1 %cmp129.us, label %for.body131.us, label %for.inc193.us

for.end122.us:                                    ; preds = %for.inc120.us, %for.cond73.preheader.us
  %add123.us = add nsw i32 %., %36
  br label %for.inc193.us

for.inc193.us:                                    ; preds = %for.inc66.us, %for.inc187.us, %for.cond27.preheader.us, %if.else124.us, %for.end122.us, %for.body4.us
  %row.2.us = phi i32 [ %row.0607.us, %for.body4.us ], [ %add123.us, %for.end122.us ], [ %add125.us, %if.else124.us ], [ %lastRow, %for.cond27.preheader.us ], [ %add125.us, %for.inc187.us ], [ %lastRow, %for.inc66.us ]
  %add194.us = add nsw i32 %row.2.us, %.
  %cmp3.us = icmp slt i32 %add194.us, %lastRow
  br i1 %cmp3.us, label %for.body4.us, label %for.cond2.for.inc196_crit_edge.us

for.body76.us:                                    ; preds = %for.cond73.preheader.us, %for.inc120.us
  %currRow.1605.us = phi i32 [ %sub121.us, %for.inc120.us ], [ %36, %for.cond73.preheader.us ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %predBlocks, i8 0, i64 32, i1 false)
  %cmp.i385.not.us = icmp eq i32 %currRow.1605.us, 0
  %cmp13.i387.us = icmp sgt i32 %sub12.i, %currRow.1605.us
  %sub.i392.us = add nsw i32 %currRow.1605.us, -1
  %mul.i393.us = mul nsw i32 %sub.i392.us, %lastColumn
  %50 = sext i32 %mul.i393.us to i64
  %arrayidx.i396.us = getelementptr i8, ptr %11, i64 %50
  %add16.i398.us = add nuw nsw i32 %currRow.1605.us, %.
  %mul17.i399.us = mul nsw i32 %add16.i398.us, %lastColumn
  %51 = sext i32 %mul17.i399.us to i64
  %arrayidx20.i402.us = getelementptr i8, ptr %12, i64 %51
  %mul37.i404.us = mul nsw i32 %currRow.1605.us, %lastColumn
  %add38.i405.us = add nsw i32 %mul37.i404.us, %13
  %52 = sext i32 %add38.i405.us to i64
  %gep.i406.us = getelementptr i8, ptr %invariant.gep.i, i64 %52
  %add112.i412.us = add nsw i32 %add38.i405.us, %.
  %idxprom113.i413.us = sext i32 %add112.i412.us to i64
  %arrayidx114.i414.us = getelementptr inbounds i8, ptr %condition, i64 %idxprom113.i413.us
  br i1 %cmp.i385.not.us, label %if.end.peel.i424.us, label %land.lhs.true.peel.i483.us

land.lhs.true.peel.i483.us:                       ; preds = %for.body76.us
  %53 = load i8, ptr %arrayidx.i396.us, align 1
  %cmp3.not.peel.i484.us = icmp slt i8 %53, 3
  br i1 %cmp3.not.peel.i484.us, label %if.end.peel.i424.us, label %if.then.peel.i485.us

if.then.peel.i485.us:                             ; preds = %land.lhs.true.peel.i483.us
  %conv2.peel.i486.us = zext nneg i8 %53 to i32
  store i32 %conv2.peel.i486.us, ptr %arrayidx11.i, align 16
  br label %if.end.peel.i424.us

if.end.peel.i424.us:                              ; preds = %if.then.peel.i485.us, %land.lhs.true.peel.i483.us, %for.body76.us
  %srcCounter.0.peel.i425.us = phi i32 [ 1, %if.then.peel.i485.us ], [ 0, %land.lhs.true.peel.i483.us ], [ 0, %for.body76.us ]
  br i1 %cmp13.i387.us, label %land.lhs.true15.peel.i478.us, label %if.end33.peel.i426.us

land.lhs.true15.peel.i478.us:                     ; preds = %if.end.peel.i424.us
  %54 = load i8, ptr %arrayidx20.i402.us, align 1
  %cmp22.not.peel.i479.us = icmp slt i8 %54, 3
  br i1 %cmp22.not.peel.i479.us, label %if.end33.peel.i426.us, label %if.then24.peel.i480.us

if.then24.peel.i480.us:                           ; preds = %land.lhs.true15.peel.i478.us
  %conv21.peel.i481.us = zext nneg i8 %54 to i32
  store i32 %conv21.peel.i481.us, ptr %arrayidx31.i, align 8
  %inc32.peel.i482.us = add nuw nsw i32 %srcCounter.0.peel.i425.us, 1
  br label %if.end33.peel.i426.us

if.end33.peel.i426.us:                            ; preds = %if.then24.peel.i480.us, %land.lhs.true15.peel.i478.us, %if.end.peel.i424.us
  %srcCounter.1.peel.i427.us = phi i32 [ %inc32.peel.i482.us, %if.then24.peel.i480.us ], [ %srcCounter.0.peel.i425.us, %land.lhs.true15.peel.i478.us ], [ %srcCounter.0.peel.i425.us, %if.end.peel.i424.us ]
  br i1 %cmp34.i.not.us, label %if.end105.peel.i428.us, label %if.then36.peel.i471.us

if.then36.peel.i471.us:                           ; preds = %if.end33.peel.i426.us
  %55 = load i8, ptr %gep.i406.us, align 1
  %cmp43.not.peel.i472.us = icmp slt i8 %55, 3
  br i1 %cmp43.not.peel.i472.us, label %if.end105.peel.i428.us, label %if.then45.peel.i473.us

if.then45.peel.i473.us:                           ; preds = %if.then36.peel.i471.us
  %conv42.peel.i474.us = zext nneg i8 %55 to i32
  store i32 %conv42.peel.i474.us, ptr %arrayidx52.i, align 4
  %inc53.peel.i475.us = add nuw nsw i32 %srcCounter.1.peel.i427.us, 1
  br label %if.end105.peel.i428.us

if.end105.peel.i428.us:                           ; preds = %if.then45.peel.i473.us, %if.then36.peel.i471.us, %if.end33.peel.i426.us
  %srcCounter.4.peel.i429.us = phi i32 [ %srcCounter.1.peel.i427.us, %if.end33.peel.i426.us ], [ %inc53.peel.i475.us, %if.then45.peel.i473.us ], [ %srcCounter.1.peel.i427.us, %if.then36.peel.i471.us ]
  br i1 %cmp107.i.us, label %if.then109.peel.i464.us, label %if.end178.peel.i430.us

if.then109.peel.i464.us:                          ; preds = %if.end105.peel.i428.us
  %56 = load i8, ptr %arrayidx114.i414.us, align 1
  %cmp116.not.peel.i465.us = icmp slt i8 %56, 3
  br i1 %cmp116.not.peel.i465.us, label %if.end178.peel.i430.us, label %if.then118.peel.i466.us

if.then118.peel.i466.us:                          ; preds = %if.then109.peel.i464.us
  %conv115.peel.i467.us = zext nneg i8 %56 to i32
  store i32 %conv115.peel.i467.us, ptr %arrayidx125.i, align 4
  %inc126.peel.i468.us = add nuw nsw i32 %srcCounter.4.peel.i429.us, 1
  br label %if.end178.peel.i430.us

if.end178.peel.i430.us:                           ; preds = %if.then118.peel.i466.us, %if.then109.peel.i464.us, %if.end105.peel.i428.us
  %srcCounter.7.peel.i431.us = phi i32 [ %srcCounter.4.peel.i429.us, %if.end105.peel.i428.us ], [ %inc126.peel.i468.us, %if.then118.peel.i466.us ], [ %srcCounter.4.peel.i429.us, %if.then109.peel.i464.us ]
  %cmp183.peel.i432.us = icmp ult i32 %srcCounter.7.peel.i431.us, 2
  br i1 %cmp183.peel.i432.us, label %do.body.i434.us, label %ercCollect8PredBlocks.exit487.us

do.body.i434.us:                                  ; preds = %if.end178.peel.i430.us
  br i1 %cmp.i385.not.us, label %if.end.i435.us, label %land.lhs.true.i460.us

land.lhs.true.i460.us:                            ; preds = %do.body.i434.us
  %57 = load i8, ptr %arrayidx.i396.us, align 1
  %cmp3.not.i461.us = icmp slt i8 %57, 2
  br i1 %cmp3.not.i461.us, label %if.end.i435.us, label %if.then.i462.us

if.then.i462.us:                                  ; preds = %land.lhs.true.i460.us
  %conv2.i463.us = zext nneg i8 %57 to i32
  store i32 %conv2.i463.us, ptr %arrayidx11.i, align 16
  br label %if.end.i435.us

if.end.i435.us:                                   ; preds = %if.then.i462.us, %land.lhs.true.i460.us, %do.body.i434.us
  br i1 %cmp13.i387.us, label %land.lhs.true15.i455.us, label %if.end33.i437.us

land.lhs.true15.i455.us:                          ; preds = %if.end.i435.us
  %58 = load i8, ptr %arrayidx20.i402.us, align 1
  %cmp22.not.i456.us = icmp slt i8 %58, 2
  br i1 %cmp22.not.i456.us, label %if.end33.i437.us, label %if.then24.i457.us

if.then24.i457.us:                                ; preds = %land.lhs.true15.i455.us
  %conv21.i458.us = zext nneg i8 %58 to i32
  store i32 %conv21.i458.us, ptr %arrayidx31.i, align 8
  br label %if.end33.i437.us

if.end33.i437.us:                                 ; preds = %if.then24.i457.us, %land.lhs.true15.i455.us, %if.end.i435.us
  br i1 %cmp34.i.not.us, label %if.end105.i439.us, label %if.then36.i448.us

if.then36.i448.us:                                ; preds = %if.end33.i437.us
  %59 = load i8, ptr %gep.i406.us, align 1
  %cmp43.not.i449.us = icmp slt i8 %59, 2
  br i1 %cmp43.not.i449.us, label %if.end105.i439.us, label %if.then45.i450.us

if.then45.i450.us:                                ; preds = %if.then36.i448.us
  %conv42.i451.us = zext nneg i8 %59 to i32
  store i32 %conv42.i451.us, ptr %arrayidx52.i, align 4
  br label %if.end105.i439.us

if.end105.i439.us:                                ; preds = %if.then45.i450.us, %if.then36.i448.us, %if.end33.i437.us
  br i1 %cmp107.i.us, label %if.then109.i441.us, label %ercCollect8PredBlocks.exit487.us

if.then109.i441.us:                               ; preds = %if.end105.i439.us
  %60 = load i8, ptr %arrayidx114.i414.us, align 1
  %cmp116.not.i442.us = icmp slt i8 %60, 2
  br i1 %cmp116.not.i442.us, label %ercCollect8PredBlocks.exit487.us, label %if.then118.i443.us

if.then118.i443.us:                               ; preds = %if.then109.i441.us
  %conv115.i444.us = zext nneg i8 %60 to i32
  store i32 %conv115.i444.us, ptr %arrayidx125.i, align 4
  br label %ercCollect8PredBlocks.exit487.us

ercCollect8PredBlocks.exit487.us:                 ; preds = %if.then118.i443.us, %if.then109.i441.us, %if.end105.i439.us, %if.end178.peel.i430.us
  switch i32 %comp, label %default.unreachable [
    i32 0, label %if.then93.us
    i32 1, label %sw.bb82.us
    i32 2, label %if.else114.us
  ]

sw.bb82.us:                                       ; preds = %ercCollect8PredBlocks.exit487.us
  br label %if.else114.us

if.else114.us:                                    ; preds = %ercCollect8PredBlocks.exit487.us, %sw.bb82.us
  %uptr.sink654 = phi ptr [ %uptr, %sw.bb82.us ], [ %vptr, %ercCollect8PredBlocks.exit487.us ]
  %61 = load ptr, ptr %uptr.sink654, align 8
  call void @ercPixConcealIMB(ptr noundef %p_Vid, ptr noundef %61, i32 noundef %currRow.1605.us, i32 noundef %13, ptr noundef nonnull %predBlocks, i32 noundef %shr36, i32 noundef 1)
  %arrayidx118.us = getelementptr inbounds i8, ptr %condition, i64 %52
  br label %for.inc120.us

if.then93.us:                                     ; preds = %ercCollect8PredBlocks.exit487.us
  %62 = load ptr, ptr %yptr, align 8
  call void @ercPixConcealIMB(ptr noundef %p_Vid, ptr noundef %62, i32 noundef %currRow.1605.us, i32 noundef %13, ptr noundef nonnull %predBlocks, i32 noundef %picSizeX, i32 noundef 2)
  %arrayidx97.us = getelementptr inbounds i8, ptr %condition, i64 %52
  store i8 2, ptr %arrayidx97.us, align 1
  %arrayidx102.us = getelementptr i8, ptr %arrayidx97.us, i64 1
  store i8 2, ptr %arrayidx102.us, align 1
  %add105.us = add nsw i32 %add38.i405.us, %lastColumn
  %idxprom106.us = sext i32 %add105.us to i64
  %arrayidx107.us = getelementptr inbounds i8, ptr %condition, i64 %idxprom106.us
  store i8 2, ptr %arrayidx107.us, align 1
  %arrayidx113.us = getelementptr i8, ptr %arrayidx107.us, i64 1
  br label %for.inc120.us

for.inc120.us:                                    ; preds = %if.then93.us, %if.else114.us
  %arrayidx113.us.sink = phi ptr [ %arrayidx113.us, %if.then93.us ], [ %arrayidx118.us, %if.else114.us ]
  store i8 2, ptr %arrayidx113.us.sink, align 1
  %sub121.us = sub nsw i32 %currRow.1605.us, %.
  %cmp74.us = icmp sgt i32 %sub121.us, -1
  br i1 %cmp74.us, label %for.body76.us, label %for.end122.us

for.cond73.preheader.us:                          ; preds = %if.else69.us
  %cmp74604.us = icmp sgt i64 %indvars.iv, -1
  br i1 %cmp74604.us, label %for.body76.us, label %for.end122.us

for.cond27.preheader.us:                          ; preds = %for.cond9.us
  %cmp28598.us = icmp slt i32 %row.0607.us, %lastRow
  br i1 %cmp28598.us, label %for.body30.us, label %for.inc193.us

for.cond2.for.inc196_crit_edge.us:                ; preds = %for.inc193.us
  %indvars.iv.next631 = add nuw nsw i64 %indvars.iv630, %0
  %cmp1.us = icmp ult i64 %indvars.iv.next631, %2
  br i1 %cmp1.us, label %for.cond2.preheader.us, label %for.end198

for.cond2.preheader:                              ; preds = %for.cond2.preheader.lr.ph, %for.cond2.preheader
  %column.0609 = phi i32 [ %add197, %for.cond2.preheader ], [ 0, %for.cond2.preheader.lr.ph ]
  %add197 = add nuw nsw i32 %column.0609, %.
  %cmp1 = icmp slt i32 %add197, %lastColumn
  br i1 %cmp1, label %for.cond2.preheader, label %for.end198

default.unreachable:                              ; preds = %ercCollect8PredBlocks.exit.us, %ercCollect8PredBlocks.exit590.us, %ercCollect8PredBlocks.exit487.us
  unreachable

for.end198:                                       ; preds = %for.cond2.preheader, %for.cond2.for.inc196_crit_edge.us, %entry
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %predBlocks) #5
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ercPixConcealIMB(ptr nocapture noundef readonly %p_Vid, ptr noundef %currFrame, i32 noundef %row, i32 noundef %column, ptr nocapture noundef readonly %predBlocks, i32 noundef %frameWidth, i32 noundef %mbWidthInBlocks) local_unnamed_addr #2 {
entry:
  %currFrame491 = ptrtoint ptr %currFrame to i64
  %arrayidx48 = getelementptr inbounds i8, ptr %predBlocks, i64 16
  %0 = load i32, ptr %arrayidx48, align 4
  %tobool49.not = icmp eq i32 %0, 0
  br i1 %tobool49.not, label %if.end60, label %if.then50

if.then50:                                        ; preds = %entry
  %sub51 = sub nsw i32 %row, %mbWidthInBlocks
  %mul52 = shl i32 %frameWidth, 3
  %mul53 = mul i32 %mul52, %sub51
  %idx.ext54 = sext i32 %mul53 to i64
  %add.ptr55 = getelementptr inbounds i16, ptr %currFrame, i64 %idx.ext54
  %mul56 = shl nsw i32 %column, 3
  %idx.ext57 = sext i32 %mul56 to i64
  %add.ptr58 = getelementptr inbounds i16, ptr %add.ptr55, i64 %idx.ext57
  br label %if.end60

if.end60:                                         ; preds = %if.then50, %entry
  %src.sroa.7.0 = phi ptr [ null, %entry ], [ %add.ptr58, %if.then50 ]
  %src.sroa.7.0492 = ptrtoint ptr %src.sroa.7.0 to i64
  %arrayidx61 = getelementptr inbounds i8, ptr %predBlocks, i64 20
  %1 = load i32, ptr %arrayidx61, align 4
  %tobool62.not = icmp eq i32 %1, 0
  br i1 %tobool62.not, label %if.end73, label %if.then63

if.then63:                                        ; preds = %if.end60
  %mul64 = mul nsw i32 %frameWidth, %row
  %mul65 = shl nsw i32 %mul64, 3
  %idx.ext66 = sext i32 %mul65 to i64
  %add.ptr67 = getelementptr inbounds i16, ptr %currFrame, i64 %idx.ext66
  %sub68 = sub nsw i32 %column, %mbWidthInBlocks
  %mul69 = shl nsw i32 %sub68, 3
  %idx.ext70 = sext i32 %mul69 to i64
  %add.ptr71 = getelementptr inbounds i16, ptr %add.ptr67, i64 %idx.ext70
  br label %if.end73

if.end73:                                         ; preds = %if.then63, %if.end60
  %src.sroa.9.0 = phi ptr [ null, %if.end60 ], [ %add.ptr71, %if.then63 ]
  %arrayidx74 = getelementptr inbounds i8, ptr %predBlocks, i64 24
  %2 = load i32, ptr %arrayidx74, align 4
  %tobool75.not = icmp eq i32 %2, 0
  br i1 %tobool75.not, label %if.end86, label %if.then76

if.then76:                                        ; preds = %if.end73
  %add77 = add nsw i32 %mbWidthInBlocks, %row
  %mul78 = shl i32 %frameWidth, 3
  %mul79 = mul i32 %mul78, %add77
  %idx.ext80 = sext i32 %mul79 to i64
  %add.ptr81 = getelementptr inbounds i16, ptr %currFrame, i64 %idx.ext80
  %mul82 = shl nsw i32 %column, 3
  %idx.ext83 = sext i32 %mul82 to i64
  %add.ptr84 = getelementptr inbounds i16, ptr %add.ptr81, i64 %idx.ext83
  br label %if.end86

if.end86:                                         ; preds = %if.then76, %if.end73
  %src.sroa.11.0 = phi ptr [ null, %if.end73 ], [ %add.ptr84, %if.then76 ]
  %src.sroa.11.0493 = ptrtoint ptr %src.sroa.11.0 to i64
  %arrayidx87 = getelementptr inbounds i8, ptr %predBlocks, i64 28
  %3 = load i32, ptr %arrayidx87, align 4
  %tobool88.not = icmp eq i32 %3, 0
  %.pre = mul i32 %frameWidth, %row
  %.pre257 = shl i32 %.pre, 3
  %.pre258 = sext i32 %.pre257 to i64
  %add.ptr93 = getelementptr inbounds i16, ptr %currFrame, i64 %.pre258
  %add94 = add nsw i32 %mbWidthInBlocks, %column
  %mul95 = shl nsw i32 %add94, 3
  %idx.ext96 = sext i32 %mul95 to i64
  %add.ptr97 = getelementptr inbounds i16, ptr %add.ptr93, i64 %idx.ext96
  %src.sroa.13.0 = select i1 %tobool88.not, ptr null, ptr %add.ptr97
  %add.ptr103 = getelementptr i16, ptr %currFrame, i64 %.pre258
  %mul104 = shl i32 %column, 3
  %idx.ext105 = sext i32 %mul104 to i64
  %add.ptr106 = getelementptr i16, ptr %add.ptr103, i64 %idx.ext105
  %mul107 = shl i32 %mbWidthInBlocks, 3
  %cmp127.i = icmp sgt i32 %mbWidthInBlocks, 0
  br i1 %cmp127.i, label %for.cond1.preheader.lr.ph.i, label %pixMeanInterpolateBlock.exit

for.cond1.preheader.lr.ph.i:                      ; preds = %if.end86
  %sub.i = add i32 %mul107, -1
  %mul.i = mul i32 %sub.i, %frameWidth
  %idx.ext.i = sext i32 %mul.i to i64
  %idx.ext20.i = zext i32 %sub.i to i64
  %cmp60.i = icmp eq i32 %mbWidthInBlocks, 1
  %cond.in.v.i = select i1 %cmp60.i, i64 849064, i64 849060
  %cond.in.i = getelementptr i8, ptr %p_Vid, i64 %cond.in.v.i
  %4 = sext i32 %frameWidth to i64
  %wide.trip.count145.i = zext i32 %mul107 to i64
  %cmp4.not.us.i = icmp eq ptr %src.sroa.7.0, null
  %cmp12.not.us.i = icmp eq ptr %src.sroa.9.0, null
  %cmp28.not.us.i = icmp eq ptr %src.sroa.11.0, null
  %cmp41.not.us.i = icmp eq ptr %src.sroa.13.0, null
  %add.ptr.us.i = getelementptr i16, ptr %src.sroa.7.0, i64 %idx.ext.i
  %invariant.gep = getelementptr i16, ptr %src.sroa.9.0, i64 %idx.ext20.i
  br i1 %cmp12.not.us.i, label %for.cond1.preheader.lr.ph.i.split.us, label %for.cond1.preheader.us.i.preheader

for.cond1.preheader.us.i.preheader:               ; preds = %for.cond1.preheader.lr.ph.i
  %5 = add nuw i64 %wide.trip.count145.i, 9223372036854775807
  %6 = mul i64 %5, %4
  %7 = shl i64 %6, 1
  %8 = add i64 %6, %.pre258
  %9 = add i64 %8, %idx.ext105
  %10 = shl nuw nsw i64 %wide.trip.count145.i, 1
  %11 = add i64 %9, %wide.trip.count145.i
  %12 = shl i64 %11, 1
  %scevgep = getelementptr i8, ptr %currFrame, i64 %12
  %13 = add nsw i64 %idx.ext.i, %wide.trip.count145.i
  %14 = shl nsw i64 %13, 1
  %scevgep277 = getelementptr i8, ptr %src.sroa.7.0, i64 %14
  %15 = add i32 %mul107, -8
  %16 = zext i32 %15 to i64
  %17 = add i64 %6, %16
  %18 = shl i64 %17, 1
  %19 = add i64 %18, 16
  %scevgep278 = getelementptr i8, ptr %src.sroa.9.0, i64 %19
  %scevgep279 = getelementptr i8, ptr %src.sroa.11.0, i64 %10
  %20 = getelementptr i8, ptr %src.sroa.13.0, i64 %7
  %scevgep280 = getelementptr i8, ptr %20, i64 2
  %21 = getelementptr i8, ptr %p_Vid, i64 %cond.in.v.i
  %scevgep281 = getelementptr i8, ptr %21, i64 4
  %min.iters.check = icmp eq i32 %mul107, 0
  %bound0 = icmp ult ptr %add.ptr106, %scevgep277
  %bound1 = icmp ult ptr %add.ptr.us.i, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0282 = icmp ult ptr %add.ptr106, %scevgep278
  %bound1283 = icmp ult ptr %invariant.gep, %scevgep
  %found.conflict284 = and i1 %bound0282, %bound1283
  %stride.check285 = icmp slt i32 %frameWidth, 0
  %22 = or i1 %found.conflict284, %stride.check285
  %conflict.rdx = or i1 %found.conflict, %22
  %bound0287 = icmp ult ptr %add.ptr106, %scevgep279
  %bound1288 = icmp ult ptr %src.sroa.11.0, %scevgep
  %found.conflict289 = and i1 %bound0287, %bound1288
  %conflict.rdx291 = or i1 %found.conflict289, %conflict.rdx
  %bound0292 = icmp ult ptr %add.ptr106, %scevgep280
  %bound1293 = icmp ult ptr %src.sroa.13.0, %scevgep
  %found.conflict294 = and i1 %bound0292, %bound1293
  %conflict.rdx297 = or i1 %found.conflict294, %conflict.rdx291
  %bound0298 = icmp ult ptr %add.ptr106, %scevgep281
  %bound1299 = icmp ult ptr %cond.in.i, %scevgep
  %found.conflict300 = and i1 %bound0298, %bound1299
  %conflict.rdx302 = or i1 %found.conflict300, %conflict.rdx297
  br label %for.cond1.preheader.us.i

for.cond1.preheader.lr.ph.i.split.us:             ; preds = %for.cond1.preheader.lr.ph.i
  br i1 %cmp41.not.us.i, label %for.cond1.preheader.lr.ph.i.split.us.split.us, label %for.cond1.preheader.lr.ph.i.split.us.split

for.cond1.preheader.lr.ph.i.split.us.split.us:    ; preds = %for.cond1.preheader.lr.ph.i.split.us
  br i1 %cmp28.not.us.i, label %for.cond1.preheader.lr.ph.i.split.us.split.us.split.us, label %for.cond1.preheader.lr.ph.i.split.us.split.us.split

for.cond1.preheader.lr.ph.i.split.us.split.us.split.us: ; preds = %for.cond1.preheader.lr.ph.i.split.us.split.us
  br i1 %cmp4.not.us.i, label %for.cond1.preheader.us.i.us.us.us.us.preheader, label %for.cond1.preheader.us.i.us.us.us.preheader

for.cond1.preheader.us.i.us.us.us.preheader:      ; preds = %for.cond1.preheader.lr.ph.i.split.us.split.us.split.us
  %23 = add nsw i64 %.pre258, %idx.ext105
  %24 = shl nsw i64 %23, 1
  %25 = add i64 %24, %currFrame491
  %26 = shl nsw i64 %idx.ext.i, 1
  %27 = add i64 %26, %src.sroa.7.0492
  %28 = sub i64 %25, %27
  %29 = shl nsw i64 %4, 1
  %30 = add nuw i64 %wide.trip.count145.i, 9223372036854775807
  %31 = mul i64 %30, %4
  %32 = add i64 %31, %.pre258
  %33 = add i64 %32, %idx.ext105
  %34 = add i64 %33, %wide.trip.count145.i
  %35 = shl i64 %34, 1
  %scevgep565 = getelementptr i8, ptr %currFrame, i64 %35
  %36 = getelementptr i8, ptr %p_Vid, i64 %cond.in.v.i
  %scevgep566 = getelementptr i8, ptr %36, i64 4
  %min.iters.check573 = icmp ult i32 %mul107, 16
  %bound0567 = icmp ult ptr %add.ptr106, %scevgep566
  %bound1568 = icmp ult ptr %cond.in.i, %scevgep565
  %found.conflict569 = and i1 %bound0567, %bound1568
  %stride.check570 = icmp slt i32 %frameWidth, 0
  %37 = or i1 %found.conflict569, %stride.check570
  %n.vec576 = and i64 %wide.trip.count145.i, 4294967280
  %cmp.n587 = icmp eq i64 %n.vec576, %wide.trip.count145.i
  %min.iters.check551 = icmp ult i32 %mul107, 32
  %n.vec554 = and i64 %wide.trip.count145.i, 4294967264
  %cmp.n563 = icmp eq i64 %n.vec554, %wide.trip.count145.i
  br label %for.cond1.preheader.us.i.us.us.us

for.cond1.preheader.us.i.us.us.us.us.preheader:   ; preds = %for.cond1.preheader.lr.ph.i.split.us.split.us.split.us
  %38 = add nuw i64 %wide.trip.count145.i, 9223372036854775807
  %39 = mul i64 %38, %4
  %40 = add i64 %39, %.pre258
  %41 = add i64 %40, %idx.ext105
  %42 = add i64 %41, %wide.trip.count145.i
  %43 = shl i64 %42, 1
  %scevgep589 = getelementptr i8, ptr %currFrame, i64 %43
  %44 = getelementptr i8, ptr %p_Vid, i64 %cond.in.v.i
  %scevgep590 = getelementptr i8, ptr %44, i64 4
  %min.iters.check597 = icmp ult i32 %mul107, 16
  %bound0591 = icmp ult ptr %add.ptr106, %scevgep590
  %bound1592 = icmp ult ptr %cond.in.i, %scevgep589
  %found.conflict593 = and i1 %bound0591, %bound1592
  %stride.check594 = icmp slt i32 %frameWidth, 0
  %45 = or i1 %found.conflict593, %stride.check594
  %n.vec600 = and i64 %wide.trip.count145.i, 4294967280
  %cmp.n611 = icmp eq i64 %n.vec600, %wide.trip.count145.i
  br label %for.cond1.preheader.us.i.us.us.us.us

for.cond1.preheader.us.i.us.us.us.us:             ; preds = %for.cond1.preheader.us.i.us.us.us.us.preheader, %for.cond1.for.end_crit_edge.us.i.split.us.us.split.us.us.split.us.us.split.us.us
  %indvars.iv140.i.us.us.us.us = phi i64 [ %indvars.iv.next141.i.us.us.us.us, %for.cond1.for.end_crit_edge.us.i.split.us.us.split.us.us.split.us.us.split.us.us ], [ 0, %for.cond1.preheader.us.i.us.us.us.us.preheader ]
  %indvars.iv135.i.us.us.us.us = phi i64 [ %indvars.iv.next136.i.us.us.us.us, %for.cond1.for.end_crit_edge.us.i.split.us.us.split.us.us.split.us.us.split.us.us ], [ 0, %for.cond1.preheader.us.i.us.us.us.us.preheader ]
  %invariant.gep147.sink.i.us.us.us.us = getelementptr i16, ptr %add.ptr106, i64 %indvars.iv140.i.us.us.us.us
  %brmerge = select i1 %min.iters.check597, i1 true, i1 %45
  br i1 %brmerge, label %for.body3.us.i.us.us.us.us.us.us.us.us.preheader, label %vector.ph598

vector.ph598:                                     ; preds = %for.cond1.preheader.us.i.us.us.us.us
  %46 = load i32, ptr %cond.in.i, align 4, !alias.scope !5
  %broadcast.splatinsert608 = insertelement <4 x i32> poison, i32 %46, i64 0
  %broadcast.splat609 = shufflevector <4 x i32> %broadcast.splatinsert608, <4 x i32> poison, <4 x i32> zeroinitializer
  %47 = trunc <4 x i32> %broadcast.splat609 to <4 x i16>
  %48 = trunc <4 x i32> %broadcast.splat609 to <4 x i16>
  %49 = trunc <4 x i32> %broadcast.splat609 to <4 x i16>
  %50 = trunc <4 x i32> %broadcast.splat609 to <4 x i16>
  br label %vector.body602

vector.body602:                                   ; preds = %vector.body602, %vector.ph598
  %index603 = phi i64 [ 0, %vector.ph598 ], [ %index.next610, %vector.body602 ]
  %51 = getelementptr i16, ptr %invariant.gep147.sink.i.us.us.us.us, i64 %index603
  %52 = getelementptr i8, ptr %51, i64 8
  %53 = getelementptr i8, ptr %51, i64 16
  %54 = getelementptr i8, ptr %51, i64 24
  store <4 x i16> %47, ptr %51, align 2, !alias.scope !8, !noalias !5
  store <4 x i16> %48, ptr %52, align 2, !alias.scope !8, !noalias !5
  store <4 x i16> %49, ptr %53, align 2, !alias.scope !8, !noalias !5
  store <4 x i16> %50, ptr %54, align 2, !alias.scope !8, !noalias !5
  %index.next610 = add nuw i64 %index603, 16
  %55 = icmp eq i64 %index.next610, %n.vec600
  br i1 %55, label %middle.block595, label %vector.body602, !llvm.loop !10

middle.block595:                                  ; preds = %vector.body602
  br i1 %cmp.n611, label %for.cond1.for.end_crit_edge.us.i.split.us.us.split.us.us.split.us.us.split.us.us, label %for.body3.us.i.us.us.us.us.us.us.us.us.preheader

for.body3.us.i.us.us.us.us.us.us.us.us.preheader: ; preds = %for.cond1.preheader.us.i.us.us.us.us, %middle.block595
  %indvars.iv.i.us.us.us.us.us.us.us.us.ph = phi i64 [ 0, %for.cond1.preheader.us.i.us.us.us.us ], [ %n.vec600, %middle.block595 ]
  br label %for.body3.us.i.us.us.us.us.us.us.us.us

for.body3.us.i.us.us.us.us.us.us.us.us:           ; preds = %for.body3.us.i.us.us.us.us.us.us.us.us, %for.body3.us.i.us.us.us.us.us.us.us.us.preheader
  %indvars.iv.i.us.us.us.us.us.us.us.us = phi i64 [ %indvars.iv.i.us.us.us.us.us.us.us.us.ph, %for.body3.us.i.us.us.us.us.us.us.us.us.preheader ], [ %indvars.iv.next.i.us.us.us.us.us.us.us.us.3, %for.body3.us.i.us.us.us.us.us.us.us.us ]
  %cond.us.i.us.us.us.us.us.us.us.us = load i32, ptr %cond.in.i, align 4
  %conv57.us.i.us.us.us.us.us.us.us.us = trunc i32 %cond.us.i.us.us.us.us.us.us.us.us to i16
  %gep148.i.us.us.us.us.us.us.us.us = getelementptr i16, ptr %invariant.gep147.sink.i.us.us.us.us, i64 %indvars.iv.i.us.us.us.us.us.us.us.us
  store i16 %conv57.us.i.us.us.us.us.us.us.us.us, ptr %gep148.i.us.us.us.us.us.us.us.us, align 2
  %indvars.iv.next.i.us.us.us.us.us.us.us.us = or disjoint i64 %indvars.iv.i.us.us.us.us.us.us.us.us, 1
  %cond.us.i.us.us.us.us.us.us.us.us.1 = load i32, ptr %cond.in.i, align 4
  %conv57.us.i.us.us.us.us.us.us.us.us.1 = trunc i32 %cond.us.i.us.us.us.us.us.us.us.us.1 to i16
  %gep148.i.us.us.us.us.us.us.us.us.1 = getelementptr i16, ptr %invariant.gep147.sink.i.us.us.us.us, i64 %indvars.iv.next.i.us.us.us.us.us.us.us.us
  store i16 %conv57.us.i.us.us.us.us.us.us.us.us.1, ptr %gep148.i.us.us.us.us.us.us.us.us.1, align 2
  %indvars.iv.next.i.us.us.us.us.us.us.us.us.1 = or disjoint i64 %indvars.iv.i.us.us.us.us.us.us.us.us, 2
  %cond.us.i.us.us.us.us.us.us.us.us.2 = load i32, ptr %cond.in.i, align 4
  %conv57.us.i.us.us.us.us.us.us.us.us.2 = trunc i32 %cond.us.i.us.us.us.us.us.us.us.us.2 to i16
  %gep148.i.us.us.us.us.us.us.us.us.2 = getelementptr i16, ptr %invariant.gep147.sink.i.us.us.us.us, i64 %indvars.iv.next.i.us.us.us.us.us.us.us.us.1
  store i16 %conv57.us.i.us.us.us.us.us.us.us.us.2, ptr %gep148.i.us.us.us.us.us.us.us.us.2, align 2
  %indvars.iv.next.i.us.us.us.us.us.us.us.us.2 = or disjoint i64 %indvars.iv.i.us.us.us.us.us.us.us.us, 3
  %cond.us.i.us.us.us.us.us.us.us.us.3 = load i32, ptr %cond.in.i, align 4
  %conv57.us.i.us.us.us.us.us.us.us.us.3 = trunc i32 %cond.us.i.us.us.us.us.us.us.us.us.3 to i16
  %gep148.i.us.us.us.us.us.us.us.us.3 = getelementptr i16, ptr %invariant.gep147.sink.i.us.us.us.us, i64 %indvars.iv.next.i.us.us.us.us.us.us.us.us.2
  store i16 %conv57.us.i.us.us.us.us.us.us.us.us.3, ptr %gep148.i.us.us.us.us.us.us.us.us.3, align 2
  %indvars.iv.next.i.us.us.us.us.us.us.us.us.3 = add nuw nsw i64 %indvars.iv.i.us.us.us.us.us.us.us.us, 4
  %exitcond.not.i.us.us.us.us.us.us.us.us.3 = icmp eq i64 %indvars.iv.next.i.us.us.us.us.us.us.us.us.3, %wide.trip.count145.i
  br i1 %exitcond.not.i.us.us.us.us.us.us.us.us.3, label %for.cond1.for.end_crit_edge.us.i.split.us.us.split.us.us.split.us.us.split.us.us, label %for.body3.us.i.us.us.us.us.us.us.us.us, !llvm.loop !13

for.cond1.for.end_crit_edge.us.i.split.us.us.split.us.us.split.us.us.split.us.us: ; preds = %for.body3.us.i.us.us.us.us.us.us.us.us, %middle.block595
  %indvars.iv.next136.i.us.us.us.us = add nuw nsw i64 %indvars.iv135.i.us.us.us.us, 1
  %indvars.iv.next141.i.us.us.us.us = add nsw i64 %indvars.iv140.i.us.us.us.us, %4
  %exitcond146.not.i.us.us.us.us = icmp eq i64 %indvars.iv.next136.i.us.us.us.us, %wide.trip.count145.i
  br i1 %exitcond146.not.i.us.us.us.us, label %pixMeanInterpolateBlock.exit, label %for.cond1.preheader.us.i.us.us.us.us

for.cond1.preheader.us.i.us.us.us:                ; preds = %for.cond1.preheader.us.i.us.us.us.preheader, %for.cond1.for.end_crit_edge.us.i.split.us.us.split.us.us.split.us.us.split
  %indvars.iv140.i.us.us.us = phi i64 [ %indvars.iv.next141.i.us.us.us, %for.cond1.for.end_crit_edge.us.i.split.us.us.split.us.us.split.us.us.split ], [ 0, %for.cond1.preheader.us.i.us.us.us.preheader ]
  %indvars.iv135.i.us.us.us = phi i64 [ %indvars.iv.next136.i.us.us.us, %for.cond1.for.end_crit_edge.us.i.split.us.us.split.us.us.split.us.us.split ], [ 0, %for.cond1.preheader.us.i.us.us.us.preheader ]
  %indvars.iv.next136.i.us.us.us = add nuw nsw i64 %indvars.iv135.i.us.us.us, 1
  %56 = trunc i64 %indvars.iv135.i.us.us.us to i32
  %57 = sub i32 %mul107, %56
  %invariant.gep147.sink.i.us.us.us = getelementptr i16, ptr %add.ptr106, i64 %indvars.iv140.i.us.us.us
  %cmp54.us.i.us.us.us.us.us.us = icmp sgt i32 %57, 0
  br i1 %cmp54.us.i.us.us.us.us.us.us, label %for.body3.us.i.us.us.us.us.us.us.us238.preheader, label %for.body3.us.i.us.us.us.us.us.us.preheader

for.body3.us.i.us.us.us.us.us.us.preheader:       ; preds = %for.cond1.preheader.us.i.us.us.us
  %brmerge629 = select i1 %min.iters.check573, i1 true, i1 %37
  br i1 %brmerge629, label %for.body3.us.i.us.us.us.us.us.us.preheader613, label %vector.ph574

for.body3.us.i.us.us.us.us.us.us.preheader613:    ; preds = %for.body3.us.i.us.us.us.us.us.us.preheader, %middle.block571
  %indvars.iv.i.us.us.us.us.us.us.ph = phi i64 [ 0, %for.body3.us.i.us.us.us.us.us.us.preheader ], [ %n.vec576, %middle.block571 ]
  br label %for.body3.us.i.us.us.us.us.us.us

vector.ph574:                                     ; preds = %for.body3.us.i.us.us.us.us.us.us.preheader
  %58 = load i32, ptr %cond.in.i, align 4, !alias.scope !14
  %broadcast.splatinsert584 = insertelement <4 x i32> poison, i32 %58, i64 0
  %broadcast.splat585 = shufflevector <4 x i32> %broadcast.splatinsert584, <4 x i32> poison, <4 x i32> zeroinitializer
  %59 = trunc <4 x i32> %broadcast.splat585 to <4 x i16>
  %60 = trunc <4 x i32> %broadcast.splat585 to <4 x i16>
  %61 = trunc <4 x i32> %broadcast.splat585 to <4 x i16>
  %62 = trunc <4 x i32> %broadcast.splat585 to <4 x i16>
  br label %vector.body578

vector.body578:                                   ; preds = %vector.body578, %vector.ph574
  %index579 = phi i64 [ 0, %vector.ph574 ], [ %index.next586, %vector.body578 ]
  %63 = getelementptr i16, ptr %invariant.gep147.sink.i.us.us.us, i64 %index579
  %64 = getelementptr i8, ptr %63, i64 8
  %65 = getelementptr i8, ptr %63, i64 16
  %66 = getelementptr i8, ptr %63, i64 24
  store <4 x i16> %59, ptr %63, align 2, !alias.scope !17, !noalias !14
  store <4 x i16> %60, ptr %64, align 2, !alias.scope !17, !noalias !14
  store <4 x i16> %61, ptr %65, align 2, !alias.scope !17, !noalias !14
  store <4 x i16> %62, ptr %66, align 2, !alias.scope !17, !noalias !14
  %index.next586 = add nuw i64 %index579, 16
  %67 = icmp eq i64 %index.next586, %n.vec576
  br i1 %67, label %middle.block571, label %vector.body578, !llvm.loop !19

middle.block571:                                  ; preds = %vector.body578
  br i1 %cmp.n587, label %for.cond1.for.end_crit_edge.us.i.split.us.us.split.us.us.split.us.us.split, label %for.body3.us.i.us.us.us.us.us.us.preheader613

for.body3.us.i.us.us.us.us.us.us.us238.preheader: ; preds = %for.cond1.preheader.us.i.us.us.us
  %68 = mul i64 %29, %indvars.iv135.i.us.us.us
  %69 = add i64 %28, %68
  %diff.check548 = icmp ult i64 %69, 64
  %or.cond = select i1 %min.iters.check551, i1 true, i1 %diff.check548
  br i1 %or.cond, label %for.body3.us.i.us.us.us.us.us.us.us238.preheader612, label %vector.body556

vector.body556:                                   ; preds = %for.body3.us.i.us.us.us.us.us.us.us238.preheader, %vector.body556
  %index557 = phi i64 [ %index.next562, %vector.body556 ], [ 0, %for.body3.us.i.us.us.us.us.us.us.us238.preheader ]
  %70 = getelementptr inbounds i16, ptr %add.ptr.us.i, i64 %index557
  %71 = getelementptr inbounds i8, ptr %70, i64 16
  %72 = getelementptr inbounds i8, ptr %70, i64 32
  %73 = getelementptr inbounds i8, ptr %70, i64 48
  %wide.load558 = load <8 x i16>, ptr %70, align 2
  %wide.load559 = load <8 x i16>, ptr %71, align 2
  %wide.load560 = load <8 x i16>, ptr %72, align 2
  %wide.load561 = load <8 x i16>, ptr %73, align 2
  %74 = getelementptr i16, ptr %invariant.gep147.sink.i.us.us.us, i64 %index557
  %75 = getelementptr i8, ptr %74, i64 16
  %76 = getelementptr i8, ptr %74, i64 32
  %77 = getelementptr i8, ptr %74, i64 48
  store <8 x i16> %wide.load558, ptr %74, align 2
  store <8 x i16> %wide.load559, ptr %75, align 2
  store <8 x i16> %wide.load560, ptr %76, align 2
  store <8 x i16> %wide.load561, ptr %77, align 2
  %index.next562 = add nuw i64 %index557, 32
  %78 = icmp eq i64 %index.next562, %n.vec554
  br i1 %78, label %middle.block549, label %vector.body556, !llvm.loop !20

middle.block549:                                  ; preds = %vector.body556
  br i1 %cmp.n563, label %for.cond1.for.end_crit_edge.us.i.split.us.us.split.us.us.split.us.us.split, label %for.body3.us.i.us.us.us.us.us.us.us238.preheader612

for.body3.us.i.us.us.us.us.us.us.us238.preheader612: ; preds = %middle.block549, %for.body3.us.i.us.us.us.us.us.us.us238.preheader
  %indvars.iv.i.us.us.us.us.us.us.us239.ph = phi i64 [ 0, %for.body3.us.i.us.us.us.us.us.us.us238.preheader ], [ %n.vec554, %middle.block549 ]
  br label %for.body3.us.i.us.us.us.us.us.us.us238

for.body3.us.i.us.us.us.us.us.us.us238:           ; preds = %for.body3.us.i.us.us.us.us.us.us.us238, %for.body3.us.i.us.us.us.us.us.us.us238.preheader612
  %indvars.iv.i.us.us.us.us.us.us.us239 = phi i64 [ %indvars.iv.i.us.us.us.us.us.us.us239.ph, %for.body3.us.i.us.us.us.us.us.us.us238.preheader612 ], [ %indvars.iv.next.i.us.us.us.us.us.us.us245.3, %for.body3.us.i.us.us.us.us.us.us.us238 ]
  %add.ptr8.us.i.us.us.us.us.us.us.us = getelementptr inbounds i16, ptr %add.ptr.us.i, i64 %indvars.iv.i.us.us.us.us.us.us.us239
  %79 = load i16, ptr %add.ptr8.us.i.us.us.us.us.us.us.us, align 2
  %gep148.i.us.us.us.us.us.us.us244 = getelementptr i16, ptr %invariant.gep147.sink.i.us.us.us, i64 %indvars.iv.i.us.us.us.us.us.us.us239
  store i16 %79, ptr %gep148.i.us.us.us.us.us.us.us244, align 2
  %indvars.iv.next.i.us.us.us.us.us.us.us245 = or disjoint i64 %indvars.iv.i.us.us.us.us.us.us.us239, 1
  %add.ptr8.us.i.us.us.us.us.us.us.us.1 = getelementptr inbounds i16, ptr %add.ptr.us.i, i64 %indvars.iv.next.i.us.us.us.us.us.us.us245
  %80 = load i16, ptr %add.ptr8.us.i.us.us.us.us.us.us.us.1, align 2
  %gep148.i.us.us.us.us.us.us.us244.1 = getelementptr i16, ptr %invariant.gep147.sink.i.us.us.us, i64 %indvars.iv.next.i.us.us.us.us.us.us.us245
  store i16 %80, ptr %gep148.i.us.us.us.us.us.us.us244.1, align 2
  %indvars.iv.next.i.us.us.us.us.us.us.us245.1 = or disjoint i64 %indvars.iv.i.us.us.us.us.us.us.us239, 2
  %add.ptr8.us.i.us.us.us.us.us.us.us.2 = getelementptr inbounds i16, ptr %add.ptr.us.i, i64 %indvars.iv.next.i.us.us.us.us.us.us.us245.1
  %81 = load i16, ptr %add.ptr8.us.i.us.us.us.us.us.us.us.2, align 2
  %gep148.i.us.us.us.us.us.us.us244.2 = getelementptr i16, ptr %invariant.gep147.sink.i.us.us.us, i64 %indvars.iv.next.i.us.us.us.us.us.us.us245.1
  store i16 %81, ptr %gep148.i.us.us.us.us.us.us.us244.2, align 2
  %indvars.iv.next.i.us.us.us.us.us.us.us245.2 = or disjoint i64 %indvars.iv.i.us.us.us.us.us.us.us239, 3
  %add.ptr8.us.i.us.us.us.us.us.us.us.3 = getelementptr inbounds i16, ptr %add.ptr.us.i, i64 %indvars.iv.next.i.us.us.us.us.us.us.us245.2
  %82 = load i16, ptr %add.ptr8.us.i.us.us.us.us.us.us.us.3, align 2
  %gep148.i.us.us.us.us.us.us.us244.3 = getelementptr i16, ptr %invariant.gep147.sink.i.us.us.us, i64 %indvars.iv.next.i.us.us.us.us.us.us.us245.2
  store i16 %82, ptr %gep148.i.us.us.us.us.us.us.us244.3, align 2
  %indvars.iv.next.i.us.us.us.us.us.us.us245.3 = add nuw nsw i64 %indvars.iv.i.us.us.us.us.us.us.us239, 4
  %exitcond.not.i.us.us.us.us.us.us.us246.3 = icmp eq i64 %indvars.iv.next.i.us.us.us.us.us.us.us245.3, %wide.trip.count145.i
  br i1 %exitcond.not.i.us.us.us.us.us.us.us246.3, label %for.cond1.for.end_crit_edge.us.i.split.us.us.split.us.us.split.us.us.split, label %for.body3.us.i.us.us.us.us.us.us.us238, !llvm.loop !21

for.body3.us.i.us.us.us.us.us.us:                 ; preds = %for.body3.us.i.us.us.us.us.us.us, %for.body3.us.i.us.us.us.us.us.us.preheader613
  %indvars.iv.i.us.us.us.us.us.us = phi i64 [ %indvars.iv.i.us.us.us.us.us.us.ph, %for.body3.us.i.us.us.us.us.us.us.preheader613 ], [ %indvars.iv.next.i.us.us.us.us.us.us.3, %for.body3.us.i.us.us.us.us.us.us ]
  %cond.us.i.us.us.us.us.us.us = load i32, ptr %cond.in.i, align 4
  %conv57.us.i.us.us.us.us.us.us = trunc i32 %cond.us.i.us.us.us.us.us.us to i16
  %gep148.i.us.us.us.us.us.us = getelementptr i16, ptr %invariant.gep147.sink.i.us.us.us, i64 %indvars.iv.i.us.us.us.us.us.us
  store i16 %conv57.us.i.us.us.us.us.us.us, ptr %gep148.i.us.us.us.us.us.us, align 2
  %indvars.iv.next.i.us.us.us.us.us.us = or disjoint i64 %indvars.iv.i.us.us.us.us.us.us, 1
  %cond.us.i.us.us.us.us.us.us.1 = load i32, ptr %cond.in.i, align 4
  %conv57.us.i.us.us.us.us.us.us.1 = trunc i32 %cond.us.i.us.us.us.us.us.us.1 to i16
  %gep148.i.us.us.us.us.us.us.1 = getelementptr i16, ptr %invariant.gep147.sink.i.us.us.us, i64 %indvars.iv.next.i.us.us.us.us.us.us
  store i16 %conv57.us.i.us.us.us.us.us.us.1, ptr %gep148.i.us.us.us.us.us.us.1, align 2
  %indvars.iv.next.i.us.us.us.us.us.us.1 = or disjoint i64 %indvars.iv.i.us.us.us.us.us.us, 2
  %cond.us.i.us.us.us.us.us.us.2 = load i32, ptr %cond.in.i, align 4
  %conv57.us.i.us.us.us.us.us.us.2 = trunc i32 %cond.us.i.us.us.us.us.us.us.2 to i16
  %gep148.i.us.us.us.us.us.us.2 = getelementptr i16, ptr %invariant.gep147.sink.i.us.us.us, i64 %indvars.iv.next.i.us.us.us.us.us.us.1
  store i16 %conv57.us.i.us.us.us.us.us.us.2, ptr %gep148.i.us.us.us.us.us.us.2, align 2
  %indvars.iv.next.i.us.us.us.us.us.us.2 = or disjoint i64 %indvars.iv.i.us.us.us.us.us.us, 3
  %cond.us.i.us.us.us.us.us.us.3 = load i32, ptr %cond.in.i, align 4
  %conv57.us.i.us.us.us.us.us.us.3 = trunc i32 %cond.us.i.us.us.us.us.us.us.3 to i16
  %gep148.i.us.us.us.us.us.us.3 = getelementptr i16, ptr %invariant.gep147.sink.i.us.us.us, i64 %indvars.iv.next.i.us.us.us.us.us.us.2
  store i16 %conv57.us.i.us.us.us.us.us.us.3, ptr %gep148.i.us.us.us.us.us.us.3, align 2
  %indvars.iv.next.i.us.us.us.us.us.us.3 = add nuw nsw i64 %indvars.iv.i.us.us.us.us.us.us, 4
  %exitcond.not.i.us.us.us.us.us.us.3 = icmp eq i64 %indvars.iv.next.i.us.us.us.us.us.us.3, %wide.trip.count145.i
  br i1 %exitcond.not.i.us.us.us.us.us.us.3, label %for.cond1.for.end_crit_edge.us.i.split.us.us.split.us.us.split.us.us.split, label %for.body3.us.i.us.us.us.us.us.us, !llvm.loop !22

for.cond1.for.end_crit_edge.us.i.split.us.us.split.us.us.split.us.us.split: ; preds = %for.body3.us.i.us.us.us.us.us.us, %for.body3.us.i.us.us.us.us.us.us.us238, %middle.block571, %middle.block549
  %indvars.iv.next141.i.us.us.us = add nsw i64 %indvars.iv140.i.us.us.us, %4
  %exitcond146.not.i.us.us.us = icmp eq i64 %indvars.iv.next136.i.us.us.us, %wide.trip.count145.i
  br i1 %exitcond146.not.i.us.us.us, label %pixMeanInterpolateBlock.exit, label %for.cond1.preheader.us.i.us.us.us

for.cond1.preheader.lr.ph.i.split.us.split.us.split: ; preds = %for.cond1.preheader.lr.ph.i.split.us.split.us
  br i1 %cmp4.not.us.i, label %for.body3.us.i.us.us.us.us.us191.us.us.preheader.preheader, label %for.cond1.preheader.us.i.us.us.preheader

for.body3.us.i.us.us.us.us.us191.us.us.preheader.preheader: ; preds = %for.cond1.preheader.lr.ph.i.split.us.split.us.split
  %83 = add nsw i64 %.pre258, %idx.ext105
  %84 = shl nsw i64 %83, 1
  %85 = add i64 %84, %currFrame491
  %86 = sub i64 %85, %src.sroa.11.0493
  %87 = shl nsw i64 %4, 1
  %min.iters.check535 = icmp ult i32 %mul107, 32
  %n.vec538 = and i64 %wide.trip.count145.i, 4294967264
  %cmp.n546 = icmp eq i64 %n.vec538, %wide.trip.count145.i
  br label %for.body3.us.i.us.us.us.us.us191.us.us.preheader

for.cond1.preheader.us.i.us.us.preheader:         ; preds = %for.cond1.preheader.lr.ph.i.split.us.split.us.split
  %88 = or disjoint i32 %mul107, 1
  %cmp54.us.i.us.us.us.us = icmp sgt i32 %mul107, -1
  %89 = shl nsw i64 %.pre258, 1
  %90 = add i64 %89, %currFrame491
  %91 = shl nsw i64 %idx.ext105, 1
  %92 = add i64 %90, %91
  %93 = shl nsw i64 %idx.ext.i, 1
  %94 = add i64 %93, %src.sroa.7.0492
  %95 = sub i64 %92, %94
  %96 = shl nsw i64 %4, 1
  %97 = add i64 %89, %currFrame491
  %98 = add i64 %97, %91
  %99 = sub i64 %98, %src.sroa.11.0493
  %100 = add nuw i64 %wide.trip.count145.i, 9223372036854775807
  %101 = mul i64 %100, %4
  %102 = add i64 %101, %.pre258
  %103 = add i64 %102, %idx.ext105
  %104 = add i64 %103, %wide.trip.count145.i
  %105 = shl i64 %104, 1
  %scevgep508 = getelementptr i8, ptr %currFrame, i64 %105
  %106 = getelementptr i8, ptr %p_Vid, i64 %cond.in.v.i
  %scevgep509 = getelementptr i8, ptr %106, i64 4
  %bound0510 = icmp ult ptr %add.ptr106, %scevgep509
  %bound1511 = icmp ult ptr %cond.in.i, %scevgep508
  %found.conflict512 = and i1 %bound0510, %bound1511
  %stride.check513 = icmp slt i32 %frameWidth, 0
  %107 = or i1 %found.conflict512, %stride.check513
  %n.vec519 = and i64 %wide.trip.count145.i, 4294967280
  %cmp.n530 = icmp eq i64 %n.vec519, %wide.trip.count145.i
  %min.iters.check498 = icmp eq i32 %mul107, 0
  br label %for.cond1.preheader.us.i.us.us

for.body3.us.i.us.us.us.us.us191.us.us.preheader: ; preds = %for.body3.us.i.us.us.us.us.us191.us.us.preheader.preheader, %for.cond1.for.end_crit_edge.us.i.split.us.us.split.us.us.split.split.us.us
  %indvars.iv140.i.us.us.us225 = phi i64 [ %indvars.iv.next141.i.us.us.us229, %for.cond1.for.end_crit_edge.us.i.split.us.us.split.us.us.split.split.us.us ], [ 0, %for.body3.us.i.us.us.us.us.us191.us.us.preheader.preheader ]
  %indvars.iv135.i.us.us.us226 = phi i64 [ %indvars.iv.next136.i.us.us.us227, %for.cond1.for.end_crit_edge.us.i.split.us.us.split.us.us.split.split.us.us ], [ 0, %for.body3.us.i.us.us.us.us.us191.us.us.preheader.preheader ]
  %indvars.iv.next136.i.us.us.us227 = add nuw nsw i64 %indvars.iv135.i.us.us.us226, 1
  %invariant.gep147.sink.i.us.us.us228 = getelementptr i16, ptr %add.ptr106, i64 %indvars.iv140.i.us.us.us225
  br i1 %min.iters.check535, label %for.body3.us.i.us.us.us.us.us191.us.us.preheader616, label %vector.memcheck531

for.body3.us.i.us.us.us.us.us191.us.us.preheader616: ; preds = %middle.block533, %vector.memcheck531, %for.body3.us.i.us.us.us.us.us191.us.us.preheader
  %indvars.iv.i.us.us.us.us.us192.us.us.ph = phi i64 [ 0, %vector.memcheck531 ], [ 0, %for.body3.us.i.us.us.us.us.us191.us.us.preheader ], [ %n.vec538, %middle.block533 ]
  br label %for.body3.us.i.us.us.us.us.us191.us.us

vector.memcheck531:                               ; preds = %for.body3.us.i.us.us.us.us.us191.us.us.preheader
  %108 = mul i64 %87, %indvars.iv135.i.us.us.us226
  %109 = add i64 %86, %108
  %diff.check532 = icmp ult i64 %109, 64
  br i1 %diff.check532, label %for.body3.us.i.us.us.us.us.us191.us.us.preheader616, label %vector.body540

vector.body540:                                   ; preds = %vector.memcheck531, %vector.body540
  %index541 = phi i64 [ %index.next545, %vector.body540 ], [ 0, %vector.memcheck531 ]
  %110 = getelementptr inbounds i16, ptr %src.sroa.11.0, i64 %index541
  %111 = getelementptr inbounds i8, ptr %110, i64 16
  %112 = getelementptr inbounds i8, ptr %110, i64 32
  %113 = getelementptr inbounds i8, ptr %110, i64 48
  %wide.load = load <8 x i16>, ptr %110, align 2
  %wide.load542 = load <8 x i16>, ptr %111, align 2
  %wide.load543 = load <8 x i16>, ptr %112, align 2
  %wide.load544 = load <8 x i16>, ptr %113, align 2
  %114 = getelementptr i16, ptr %invariant.gep147.sink.i.us.us.us228, i64 %index541
  %115 = getelementptr i8, ptr %114, i64 16
  %116 = getelementptr i8, ptr %114, i64 32
  %117 = getelementptr i8, ptr %114, i64 48
  store <8 x i16> %wide.load, ptr %114, align 2
  store <8 x i16> %wide.load542, ptr %115, align 2
  store <8 x i16> %wide.load543, ptr %116, align 2
  store <8 x i16> %wide.load544, ptr %117, align 2
  %index.next545 = add nuw i64 %index541, 32
  %118 = icmp eq i64 %index.next545, %n.vec538
  br i1 %118, label %middle.block533, label %vector.body540, !llvm.loop !23

middle.block533:                                  ; preds = %vector.body540
  br i1 %cmp.n546, label %for.cond1.for.end_crit_edge.us.i.split.us.us.split.us.us.split.split.us.us, label %for.body3.us.i.us.us.us.us.us191.us.us.preheader616

for.cond1.for.end_crit_edge.us.i.split.us.us.split.us.us.split.split.us.us: ; preds = %for.body3.us.i.us.us.us.us.us191.us.us, %middle.block533
  %indvars.iv.next141.i.us.us.us229 = add nsw i64 %indvars.iv140.i.us.us.us225, %4
  %exitcond146.not.i.us.us.us230 = icmp eq i64 %indvars.iv.next136.i.us.us.us227, %wide.trip.count145.i
  br i1 %exitcond146.not.i.us.us.us230, label %pixMeanInterpolateBlock.exit, label %for.body3.us.i.us.us.us.us.us191.us.us.preheader

for.body3.us.i.us.us.us.us.us191.us.us:           ; preds = %for.body3.us.i.us.us.us.us.us191.us.us, %for.body3.us.i.us.us.us.us.us191.us.us.preheader616
  %indvars.iv.i.us.us.us.us.us192.us.us = phi i64 [ %indvars.iv.i.us.us.us.us.us192.us.us.ph, %for.body3.us.i.us.us.us.us.us191.us.us.preheader616 ], [ %indvars.iv.next.i.us.us.us.us.us205.us.us.3, %for.body3.us.i.us.us.us.us.us191.us.us ]
  %add.ptr34.us.i.us.us.us.us.us.us.us = getelementptr inbounds i16, ptr %src.sroa.11.0, i64 %indvars.iv.i.us.us.us.us.us192.us.us
  %119 = load i16, ptr %add.ptr34.us.i.us.us.us.us.us.us.us, align 2
  %gep148.i.us.us.us.us.us204.us.us = getelementptr i16, ptr %invariant.gep147.sink.i.us.us.us228, i64 %indvars.iv.i.us.us.us.us.us192.us.us
  store i16 %119, ptr %gep148.i.us.us.us.us.us204.us.us, align 2
  %indvars.iv.next.i.us.us.us.us.us205.us.us = or disjoint i64 %indvars.iv.i.us.us.us.us.us192.us.us, 1
  %add.ptr34.us.i.us.us.us.us.us.us.us.1 = getelementptr inbounds i16, ptr %src.sroa.11.0, i64 %indvars.iv.next.i.us.us.us.us.us205.us.us
  %120 = load i16, ptr %add.ptr34.us.i.us.us.us.us.us.us.us.1, align 2
  %gep148.i.us.us.us.us.us204.us.us.1 = getelementptr i16, ptr %invariant.gep147.sink.i.us.us.us228, i64 %indvars.iv.next.i.us.us.us.us.us205.us.us
  store i16 %120, ptr %gep148.i.us.us.us.us.us204.us.us.1, align 2
  %indvars.iv.next.i.us.us.us.us.us205.us.us.1 = or disjoint i64 %indvars.iv.i.us.us.us.us.us192.us.us, 2
  %add.ptr34.us.i.us.us.us.us.us.us.us.2 = getelementptr inbounds i16, ptr %src.sroa.11.0, i64 %indvars.iv.next.i.us.us.us.us.us205.us.us.1
  %121 = load i16, ptr %add.ptr34.us.i.us.us.us.us.us.us.us.2, align 2
  %gep148.i.us.us.us.us.us204.us.us.2 = getelementptr i16, ptr %invariant.gep147.sink.i.us.us.us228, i64 %indvars.iv.next.i.us.us.us.us.us205.us.us.1
  store i16 %121, ptr %gep148.i.us.us.us.us.us204.us.us.2, align 2
  %indvars.iv.next.i.us.us.us.us.us205.us.us.2 = or disjoint i64 %indvars.iv.i.us.us.us.us.us192.us.us, 3
  %add.ptr34.us.i.us.us.us.us.us.us.us.3 = getelementptr inbounds i16, ptr %src.sroa.11.0, i64 %indvars.iv.next.i.us.us.us.us.us205.us.us.2
  %122 = load i16, ptr %add.ptr34.us.i.us.us.us.us.us.us.us.3, align 2
  %gep148.i.us.us.us.us.us204.us.us.3 = getelementptr i16, ptr %invariant.gep147.sink.i.us.us.us228, i64 %indvars.iv.next.i.us.us.us.us.us205.us.us.2
  store i16 %122, ptr %gep148.i.us.us.us.us.us204.us.us.3, align 2
  %indvars.iv.next.i.us.us.us.us.us205.us.us.3 = add nuw nsw i64 %indvars.iv.i.us.us.us.us.us192.us.us, 4
  %exitcond.not.i.us.us.us.us.us206.us.us.3 = icmp eq i64 %indvars.iv.next.i.us.us.us.us.us205.us.us.3, %wide.trip.count145.i
  br i1 %exitcond.not.i.us.us.us.us.us206.us.us.3, label %for.cond1.for.end_crit_edge.us.i.split.us.us.split.us.us.split.split.us.us, label %for.body3.us.i.us.us.us.us.us191.us.us, !llvm.loop !24

for.cond1.preheader.us.i.us.us:                   ; preds = %for.cond1.preheader.us.i.us.us.preheader, %for.cond1.for.end_crit_edge.us.i.split.us.us.split.us.us.split.split
  %indvars.iv140.i.us.us = phi i64 [ %indvars.iv.next141.i.us.us, %for.cond1.for.end_crit_edge.us.i.split.us.us.split.us.us.split.split ], [ 0, %for.cond1.preheader.us.i.us.us.preheader ]
  %indvars.iv135.i.us.us = phi i64 [ %indvars.iv.next136.i.us.us, %for.cond1.for.end_crit_edge.us.i.split.us.us.split.us.us.split.split ], [ 0, %for.cond1.preheader.us.i.us.us.preheader ]
  %123 = mul i64 %96, %indvars.iv135.i.us.us
  %124 = add i64 %95, %123
  %125 = add i64 %99, %123
  %indvars.iv.next136.i.us.us = add nuw nsw i64 %indvars.iv135.i.us.us, 1
  %126 = trunc i64 %indvars.iv135.i.us.us to i32
  %127 = sub i32 %mul107, %126
  %128 = trunc nuw nsw i64 %indvars.iv.next136.i.us.us to i32
  %invariant.gep147.sink.i.us.us = getelementptr i16, ptr %add.ptr106, i64 %indvars.iv140.i.us.us
  br i1 %cmp54.us.i.us.us.us.us, label %for.body3.us.i.us.us.us.us.us207.preheader, label %vector.memcheck507

vector.memcheck507:                               ; preds = %for.cond1.preheader.us.i.us.us
  br i1 %107, label %for.body3.us.i.us.us.us.us.preheader, label %vector.ph517

for.body3.us.i.us.us.us.us.preheader:             ; preds = %middle.block514, %vector.memcheck507
  %indvars.iv.i.us.us.us.us.ph = phi i64 [ 0, %vector.memcheck507 ], [ %n.vec519, %middle.block514 ]
  br label %for.body3.us.i.us.us.us.us

vector.ph517:                                     ; preds = %vector.memcheck507
  %129 = load i32, ptr %cond.in.i, align 4, !alias.scope !25
  %broadcast.splatinsert527 = insertelement <4 x i32> poison, i32 %129, i64 0
  %broadcast.splat528 = shufflevector <4 x i32> %broadcast.splatinsert527, <4 x i32> poison, <4 x i32> zeroinitializer
  %130 = trunc <4 x i32> %broadcast.splat528 to <4 x i16>
  %131 = trunc <4 x i32> %broadcast.splat528 to <4 x i16>
  %132 = trunc <4 x i32> %broadcast.splat528 to <4 x i16>
  %133 = trunc <4 x i32> %broadcast.splat528 to <4 x i16>
  br label %vector.body521

vector.body521:                                   ; preds = %vector.body521, %vector.ph517
  %index522 = phi i64 [ 0, %vector.ph517 ], [ %index.next529, %vector.body521 ]
  %134 = getelementptr i16, ptr %invariant.gep147.sink.i.us.us, i64 %index522
  %135 = getelementptr i8, ptr %134, i64 8
  %136 = getelementptr i8, ptr %134, i64 16
  %137 = getelementptr i8, ptr %134, i64 24
  store <4 x i16> %130, ptr %134, align 2, !alias.scope !28, !noalias !25
  store <4 x i16> %131, ptr %135, align 2, !alias.scope !28, !noalias !25
  store <4 x i16> %132, ptr %136, align 2, !alias.scope !28, !noalias !25
  store <4 x i16> %133, ptr %137, align 2, !alias.scope !28, !noalias !25
  %index.next529 = add nuw i64 %index522, 16
  %138 = icmp eq i64 %index.next529, %n.vec519
  br i1 %138, label %middle.block514, label %vector.body521, !llvm.loop !30

middle.block514:                                  ; preds = %vector.body521
  br i1 %cmp.n530, label %for.cond1.for.end_crit_edge.us.i.split.us.us.split.us.us.split.split, label %for.body3.us.i.us.us.us.us.preheader

for.body3.us.i.us.us.us.us.us207.preheader:       ; preds = %for.cond1.preheader.us.i.us.us
  br i1 %min.iters.check498, label %for.body3.us.i.us.us.us.us.us207.preheader618, label %vector.memcheck490

for.body3.us.i.us.us.us.us.us207.preheader618:    ; preds = %vector.memcheck490, %for.body3.us.i.us.us.us.us.us207.preheader
  br label %for.body3.us.i.us.us.us.us.us207

vector.memcheck490:                               ; preds = %for.body3.us.i.us.us.us.us.us207.preheader
  %diff.check = icmp ult i64 %124, 8
  %diff.check494 = icmp ult i64 %125, 8
  %conflict.rdx495 = or i1 %diff.check, %diff.check494
  br i1 %conflict.rdx495, label %for.body3.us.i.us.us.us.us.us207.preheader618, label %vector.body503

vector.body503:                                   ; preds = %vector.memcheck490, %vector.body503
  %index504 = phi i64 [ %index.next505, %vector.body503 ], [ 0, %vector.memcheck490 ]
  %139 = or disjoint i64 %index504, 1
  %140 = or disjoint i64 %index504, 2
  %141 = or disjoint i64 %index504, 3
  %142 = getelementptr inbounds i16, ptr %add.ptr.us.i, i64 %index504
  %143 = getelementptr inbounds i16, ptr %add.ptr.us.i, i64 %139
  %144 = getelementptr inbounds i16, ptr %add.ptr.us.i, i64 %140
  %145 = getelementptr inbounds i16, ptr %add.ptr.us.i, i64 %141
  %146 = load i16, ptr %142, align 2
  %147 = load i16, ptr %143, align 2
  %148 = load i16, ptr %144, align 2
  %149 = load i16, ptr %145, align 2
  %150 = zext i16 %146 to i32
  %151 = zext i16 %147 to i32
  %152 = zext i16 %148 to i32
  %153 = zext i16 %149 to i32
  %154 = mul nsw i32 %127, %150
  %155 = mul nsw i32 %127, %151
  %156 = mul nsw i32 %127, %152
  %157 = mul nsw i32 %127, %153
  %158 = getelementptr inbounds i16, ptr %src.sroa.11.0, i64 %index504
  %159 = getelementptr inbounds i16, ptr %src.sroa.11.0, i64 %139
  %160 = getelementptr inbounds i16, ptr %src.sroa.11.0, i64 %140
  %161 = getelementptr inbounds i16, ptr %src.sroa.11.0, i64 %141
  %162 = load i16, ptr %158, align 2
  %163 = load i16, ptr %159, align 2
  %164 = load i16, ptr %160, align 2
  %165 = load i16, ptr %161, align 2
  %166 = zext i16 %162 to i32
  %167 = zext i16 %163 to i32
  %168 = zext i16 %164 to i32
  %169 = zext i16 %165 to i32
  %170 = mul nuw nsw i32 %166, %128
  %171 = mul nuw nsw i32 %167, %128
  %172 = mul nuw nsw i32 %168, %128
  %173 = mul nuw nsw i32 %169, %128
  %174 = add nsw i32 %170, %154
  %175 = add nsw i32 %171, %155
  %176 = add nsw i32 %172, %156
  %177 = add nsw i32 %173, %157
  %178 = sdiv i32 %174, %88
  %179 = sdiv i32 %175, %88
  %180 = sdiv i32 %176, %88
  %181 = sdiv i32 %177, %88
  %182 = trunc i32 %178 to i16
  %183 = trunc i32 %179 to i16
  %184 = trunc i32 %180 to i16
  %185 = trunc i32 %181 to i16
  %186 = getelementptr i16, ptr %invariant.gep147.sink.i.us.us, i64 %index504
  %187 = getelementptr i16, ptr %invariant.gep147.sink.i.us.us, i64 %139
  %188 = getelementptr i16, ptr %invariant.gep147.sink.i.us.us, i64 %140
  %189 = getelementptr i16, ptr %invariant.gep147.sink.i.us.us, i64 %141
  store i16 %182, ptr %186, align 2
  store i16 %183, ptr %187, align 2
  store i16 %184, ptr %188, align 2
  store i16 %185, ptr %189, align 2
  %index.next505 = add nuw i64 %index504, 4
  %190 = icmp eq i64 %index.next505, %wide.trip.count145.i
  br i1 %190, label %for.cond1.for.end_crit_edge.us.i.split.us.us.split.us.us.split.split, label %vector.body503, !llvm.loop !31

for.body3.us.i.us.us.us.us.us207:                 ; preds = %for.body3.us.i.us.us.us.us.us207, %for.body3.us.i.us.us.us.us.us207.preheader618
  %indvars.iv.i.us.us.us.us.us208 = phi i64 [ 0, %for.body3.us.i.us.us.us.us.us207.preheader618 ], [ %indvars.iv.next.i.us.us.us.us.us222.1, %for.body3.us.i.us.us.us.us.us207 ]
  %add.ptr8.us.i.us.us.us.us.us209 = getelementptr inbounds i16, ptr %add.ptr.us.i, i64 %indvars.iv.i.us.us.us.us.us208
  %191 = load i16, ptr %add.ptr8.us.i.us.us.us.us.us209, align 2
  %conv.us.i.us.us.us.us.us210 = zext i16 %191 to i32
  %mul9.us.i.us.us.us.us.us211 = mul nsw i32 %127, %conv.us.i.us.us.us.us.us210
  %add.ptr34.us.i.us.us.us.us.us212 = getelementptr inbounds i16, ptr %src.sroa.11.0, i64 %indvars.iv.i.us.us.us.us.us208
  %192 = load i16, ptr %add.ptr34.us.i.us.us.us.us.us212, align 2
  %conv35.us.i.us.us.us.us.us213 = zext i16 %192 to i32
  %mul36.us.i.us.us.us.us.us214 = mul nuw nsw i32 %conv35.us.i.us.us.us.us.us213, %128
  %add37.us.i.us.us.us.us.us215 = add nsw i32 %mul36.us.i.us.us.us.us.us214, %mul9.us.i.us.us.us.us.us211
  %div.us.i.us.us.us.us.us217 = sdiv i32 %add37.us.i.us.us.us.us.us215, %88
  %conv57.us.i.us.us.us.us.us220 = trunc i32 %div.us.i.us.us.us.us.us217 to i16
  %gep148.i.us.us.us.us.us221 = getelementptr i16, ptr %invariant.gep147.sink.i.us.us, i64 %indvars.iv.i.us.us.us.us.us208
  store i16 %conv57.us.i.us.us.us.us.us220, ptr %gep148.i.us.us.us.us.us221, align 2
  %indvars.iv.next.i.us.us.us.us.us222 = or disjoint i64 %indvars.iv.i.us.us.us.us.us208, 1
  %add.ptr8.us.i.us.us.us.us.us209.1 = getelementptr inbounds i16, ptr %add.ptr.us.i, i64 %indvars.iv.next.i.us.us.us.us.us222
  %193 = load i16, ptr %add.ptr8.us.i.us.us.us.us.us209.1, align 2
  %conv.us.i.us.us.us.us.us210.1 = zext i16 %193 to i32
  %mul9.us.i.us.us.us.us.us211.1 = mul nsw i32 %127, %conv.us.i.us.us.us.us.us210.1
  %add.ptr34.us.i.us.us.us.us.us212.1 = getelementptr inbounds i16, ptr %src.sroa.11.0, i64 %indvars.iv.next.i.us.us.us.us.us222
  %194 = load i16, ptr %add.ptr34.us.i.us.us.us.us.us212.1, align 2
  %conv35.us.i.us.us.us.us.us213.1 = zext i16 %194 to i32
  %mul36.us.i.us.us.us.us.us214.1 = mul nuw nsw i32 %conv35.us.i.us.us.us.us.us213.1, %128
  %add37.us.i.us.us.us.us.us215.1 = add nsw i32 %mul36.us.i.us.us.us.us.us214.1, %mul9.us.i.us.us.us.us.us211.1
  %div.us.i.us.us.us.us.us217.1 = sdiv i32 %add37.us.i.us.us.us.us.us215.1, %88
  %conv57.us.i.us.us.us.us.us220.1 = trunc i32 %div.us.i.us.us.us.us.us217.1 to i16
  %gep148.i.us.us.us.us.us221.1 = getelementptr i16, ptr %invariant.gep147.sink.i.us.us, i64 %indvars.iv.next.i.us.us.us.us.us222
  store i16 %conv57.us.i.us.us.us.us.us220.1, ptr %gep148.i.us.us.us.us.us221.1, align 2
  %indvars.iv.next.i.us.us.us.us.us222.1 = add nuw nsw i64 %indvars.iv.i.us.us.us.us.us208, 2
  %exitcond.not.i.us.us.us.us.us223.1 = icmp eq i64 %indvars.iv.next.i.us.us.us.us.us222.1, %wide.trip.count145.i
  br i1 %exitcond.not.i.us.us.us.us.us223.1, label %for.cond1.for.end_crit_edge.us.i.split.us.us.split.us.us.split.split, label %for.body3.us.i.us.us.us.us.us207, !llvm.loop !32

for.body3.us.i.us.us.us.us:                       ; preds = %for.body3.us.i.us.us.us.us, %for.body3.us.i.us.us.us.us.preheader
  %indvars.iv.i.us.us.us.us = phi i64 [ %indvars.iv.i.us.us.us.us.ph, %for.body3.us.i.us.us.us.us.preheader ], [ %indvars.iv.next.i.us.us.us.us.3, %for.body3.us.i.us.us.us.us ]
  %cond.us.i.us.us.us.us = load i32, ptr %cond.in.i, align 4
  %conv57.us.i.us.us.us.us = trunc i32 %cond.us.i.us.us.us.us to i16
  %gep148.i.us.us.us.us = getelementptr i16, ptr %invariant.gep147.sink.i.us.us, i64 %indvars.iv.i.us.us.us.us
  store i16 %conv57.us.i.us.us.us.us, ptr %gep148.i.us.us.us.us, align 2
  %indvars.iv.next.i.us.us.us.us = or disjoint i64 %indvars.iv.i.us.us.us.us, 1
  %cond.us.i.us.us.us.us.1 = load i32, ptr %cond.in.i, align 4
  %conv57.us.i.us.us.us.us.1 = trunc i32 %cond.us.i.us.us.us.us.1 to i16
  %gep148.i.us.us.us.us.1 = getelementptr i16, ptr %invariant.gep147.sink.i.us.us, i64 %indvars.iv.next.i.us.us.us.us
  store i16 %conv57.us.i.us.us.us.us.1, ptr %gep148.i.us.us.us.us.1, align 2
  %indvars.iv.next.i.us.us.us.us.1 = or disjoint i64 %indvars.iv.i.us.us.us.us, 2
  %cond.us.i.us.us.us.us.2 = load i32, ptr %cond.in.i, align 4
  %conv57.us.i.us.us.us.us.2 = trunc i32 %cond.us.i.us.us.us.us.2 to i16
  %gep148.i.us.us.us.us.2 = getelementptr i16, ptr %invariant.gep147.sink.i.us.us, i64 %indvars.iv.next.i.us.us.us.us.1
  store i16 %conv57.us.i.us.us.us.us.2, ptr %gep148.i.us.us.us.us.2, align 2
  %indvars.iv.next.i.us.us.us.us.2 = or disjoint i64 %indvars.iv.i.us.us.us.us, 3
  %cond.us.i.us.us.us.us.3 = load i32, ptr %cond.in.i, align 4
  %conv57.us.i.us.us.us.us.3 = trunc i32 %cond.us.i.us.us.us.us.3 to i16
  %gep148.i.us.us.us.us.3 = getelementptr i16, ptr %invariant.gep147.sink.i.us.us, i64 %indvars.iv.next.i.us.us.us.us.2
  store i16 %conv57.us.i.us.us.us.us.3, ptr %gep148.i.us.us.us.us.3, align 2
  %indvars.iv.next.i.us.us.us.us.3 = add nuw nsw i64 %indvars.iv.i.us.us.us.us, 4
  %exitcond.not.i.us.us.us.us.3 = icmp eq i64 %indvars.iv.next.i.us.us.us.us.3, %wide.trip.count145.i
  br i1 %exitcond.not.i.us.us.us.us.3, label %for.cond1.for.end_crit_edge.us.i.split.us.us.split.us.us.split.split, label %for.body3.us.i.us.us.us.us, !llvm.loop !33

for.cond1.for.end_crit_edge.us.i.split.us.us.split.us.us.split.split: ; preds = %for.body3.us.i.us.us.us.us, %vector.body503, %for.body3.us.i.us.us.us.us.us207, %middle.block514
  %indvars.iv.next141.i.us.us = add nsw i64 %indvars.iv140.i.us.us, %4
  %exitcond146.not.i.us.us = icmp eq i64 %indvars.iv.next136.i.us.us, %wide.trip.count145.i
  br i1 %exitcond146.not.i.us.us, label %pixMeanInterpolateBlock.exit, label %for.cond1.preheader.us.i.us.us

for.cond1.preheader.lr.ph.i.split.us.split:       ; preds = %for.cond1.preheader.lr.ph.i.split.us
  br i1 %cmp28.not.us.i, label %for.cond1.preheader.lr.ph.i.split.us.split.split.us, label %for.cond1.preheader.us.i.us.preheader

for.cond1.preheader.us.i.us.preheader:            ; preds = %for.cond1.preheader.lr.ph.i.split.us.split
  %195 = add nuw i64 %wide.trip.count145.i, 9223372036854775807
  %196 = mul i64 %195, %4
  %197 = shl i64 %196, 1
  %198 = add i64 %196, %.pre258
  %199 = add i64 %198, %idx.ext105
  %200 = shl nuw nsw i64 %wide.trip.count145.i, 1
  %201 = add i64 %199, %wide.trip.count145.i
  %202 = shl i64 %201, 1
  %scevgep367 = getelementptr i8, ptr %currFrame, i64 %202
  %203 = add nsw i64 %idx.ext.i, %wide.trip.count145.i
  %204 = shl nsw i64 %203, 1
  %scevgep368 = getelementptr i8, ptr %src.sroa.7.0, i64 %204
  %205 = getelementptr i8, ptr %p_Vid, i64 %cond.in.v.i
  %scevgep369 = getelementptr i8, ptr %205, i64 4
  %206 = getelementptr i8, ptr %src.sroa.13.0, i64 %197
  %scevgep370 = getelementptr i8, ptr %206, i64 2
  %scevgep371 = getelementptr i8, ptr %src.sroa.11.0, i64 %200
  %min.iters.check394 = icmp eq i32 %mul107, 0
  %bound0372 = icmp ult ptr %add.ptr106, %scevgep368
  %bound1373 = icmp ult ptr %add.ptr.us.i, %scevgep367
  %found.conflict374 = and i1 %bound0372, %bound1373
  %bound0376 = icmp ult ptr %add.ptr106, %scevgep369
  %bound1377 = icmp ult ptr %cond.in.i, %scevgep367
  %found.conflict378 = and i1 %bound0376, %bound1377
  %stride.check379 = icmp slt i32 %frameWidth, 0
  %207 = or i1 %found.conflict378, %stride.check379
  %conflict.rdx380 = or i1 %found.conflict374, %207
  %bound0381 = icmp ult ptr %add.ptr106, %scevgep370
  %bound1382 = icmp ult ptr %src.sroa.13.0, %scevgep367
  %found.conflict383 = and i1 %bound0381, %bound1382
  %conflict.rdx386 = or i1 %found.conflict383, %conflict.rdx380
  %bound0387 = icmp ult ptr %add.ptr106, %scevgep371
  %bound1388 = icmp ult ptr %src.sroa.11.0, %scevgep367
  %found.conflict389 = and i1 %bound0387, %bound1388
  %conflict.rdx391 = or i1 %found.conflict389, %conflict.rdx386
  br label %for.cond1.preheader.us.i.us

for.cond1.preheader.lr.ph.i.split.us.split.split.us: ; preds = %for.cond1.preheader.lr.ph.i.split.us.split
  br i1 %cmp4.not.us.i, label %for.cond1.preheader.us.i.us.us183.us, label %for.cond1.preheader.us.i.us.us183.preheader

for.cond1.preheader.us.i.us.us183.preheader:      ; preds = %for.cond1.preheader.lr.ph.i.split.us.split.split.us
  %208 = add nuw i64 %wide.trip.count145.i, 9223372036854775807
  %209 = mul i64 %208, %4
  %210 = shl i64 %209, 1
  %211 = add i64 %209, %.pre258
  %212 = add i64 %211, %idx.ext105
  %213 = add i64 %212, %wide.trip.count145.i
  %214 = shl i64 %213, 1
  %scevgep440 = getelementptr i8, ptr %currFrame, i64 %214
  %215 = getelementptr i8, ptr %p_Vid, i64 %cond.in.v.i
  %scevgep441 = getelementptr i8, ptr %215, i64 4
  %216 = getelementptr i8, ptr %src.sroa.13.0, i64 %210
  %scevgep442 = getelementptr i8, ptr %216, i64 2
  %217 = add nsw i64 %idx.ext.i, %wide.trip.count145.i
  %218 = shl nsw i64 %217, 1
  %scevgep443 = getelementptr i8, ptr %src.sroa.7.0, i64 %218
  %min.iters.check461 = icmp eq i32 %mul107, 0
  %bound0444 = icmp ult ptr %add.ptr106, %scevgep441
  %bound1445 = icmp ult ptr %cond.in.i, %scevgep440
  %found.conflict446 = and i1 %bound0444, %bound1445
  %bound0448 = icmp ult ptr %add.ptr106, %scevgep442
  %bound1449 = icmp ult ptr %src.sroa.13.0, %scevgep440
  %found.conflict450 = and i1 %bound0448, %bound1449
  %stride.check451 = icmp slt i32 %frameWidth, 0
  %219 = or i1 %found.conflict450, %stride.check451
  %conflict.rdx453 = or i1 %found.conflict446, %219
  %bound0454 = icmp ult ptr %add.ptr106, %scevgep443
  %bound1455 = icmp ult ptr %add.ptr.us.i, %scevgep440
  %found.conflict456 = and i1 %bound0454, %bound1455
  %conflict.rdx458 = or i1 %found.conflict456, %conflict.rdx453
  br label %for.cond1.preheader.us.i.us.us183

for.cond1.preheader.us.i.us.us183.us:             ; preds = %for.cond1.preheader.lr.ph.i.split.us.split.split.us, %for.cond1.for.end_crit_edge.us.i.split.us.us.split.split.us.us.split.us.us
  %indvars.iv140.i.us.us184.us = phi i64 [ %indvars.iv.next141.i.us.us189.us, %for.cond1.for.end_crit_edge.us.i.split.us.us.split.split.us.us.split.us.us ], [ 0, %for.cond1.preheader.lr.ph.i.split.us.split.split.us ]
  %indvars.iv135.i.us.us185.us = phi i64 [ %indvars.iv.next136.i.us.us186.us, %for.cond1.for.end_crit_edge.us.i.split.us.us.split.split.us.us.split.us.us ], [ 0, %for.cond1.preheader.lr.ph.i.split.us.split.split.us ]
  %220 = mul nsw i64 %indvars.iv135.i.us.us185.us, %4
  %invariant.gep147.sink.i.us.us187.us = getelementptr i16, ptr %add.ptr106, i64 %indvars.iv140.i.us.us184.us
  %add.ptr48.us.i.us.us188.us = getelementptr inbounds i16, ptr %src.sroa.13.0, i64 %220
  br label %for.body3.us.i.us.us.us160.us.us.us

for.body3.us.i.us.us.us160.us.us.us:              ; preds = %for.inc.us.i.us.us.us177.us.us.us.1, %for.cond1.preheader.us.i.us.us183.us
  %indvars.iv.i.us.us.us161.us.us.us = phi i64 [ 0, %for.cond1.preheader.us.i.us.us183.us ], [ %indvars.iv.next.i.us.us.us181.us.us.us.1, %for.inc.us.i.us.us.us177.us.us.us.1 ]
  %221 = load i16, ptr %add.ptr48.us.i.us.us188.us, align 2
  %conv49.us.i.us.us.us.us.us.us = zext i16 %221 to i32
  %222 = trunc i64 %indvars.iv.i.us.us.us161.us.us.us to i32
  %cmp54.us.i.us.us.us172.us.us.us = icmp ult i32 %222, 2147483647
  br i1 %cmp54.us.i.us.us.us172.us.us.us, label %for.inc.us.i.us.us.us177.us.us.us, label %if.else.us.i.us.us.us173.us.us.us

if.else.us.i.us.us.us173.us.us.us:                ; preds = %for.body3.us.i.us.us.us160.us.us.us
  %cond.us.i.us.us.us174.us.us.us = load i32, ptr %cond.in.i, align 4
  br label %for.inc.us.i.us.us.us177.us.us.us

for.inc.us.i.us.us.us177.us.us.us:                ; preds = %for.body3.us.i.us.us.us160.us.us.us, %if.else.us.i.us.us.us173.us.us.us
  %div.us.sink.i.us.us.us178.us.us.us = phi i32 [ %cond.us.i.us.us.us174.us.us.us, %if.else.us.i.us.us.us173.us.us.us ], [ %conv49.us.i.us.us.us.us.us.us, %for.body3.us.i.us.us.us160.us.us.us ]
  %conv57.us.i.us.us.us179.us.us.us = trunc i32 %div.us.sink.i.us.us.us178.us.us.us to i16
  %gep148.i.us.us.us180.us.us.us = getelementptr i16, ptr %invariant.gep147.sink.i.us.us187.us, i64 %indvars.iv.i.us.us.us161.us.us.us
  store i16 %conv57.us.i.us.us.us179.us.us.us, ptr %gep148.i.us.us.us180.us.us.us, align 2
  %indvars.iv.next.i.us.us.us181.us.us.us = or disjoint i64 %indvars.iv.i.us.us.us161.us.us.us, 1
  %223 = load i16, ptr %add.ptr48.us.i.us.us188.us, align 2
  %conv49.us.i.us.us.us.us.us.us.1 = zext i16 %223 to i32
  %224 = trunc i64 %indvars.iv.next.i.us.us.us181.us.us.us to i32
  %cmp54.us.i.us.us.us172.us.us.us.1 = icmp ult i32 %224, 2147483647
  br i1 %cmp54.us.i.us.us.us172.us.us.us.1, label %for.inc.us.i.us.us.us177.us.us.us.1, label %if.else.us.i.us.us.us173.us.us.us.1

if.else.us.i.us.us.us173.us.us.us.1:              ; preds = %for.inc.us.i.us.us.us177.us.us.us
  %cond.us.i.us.us.us174.us.us.us.1 = load i32, ptr %cond.in.i, align 4
  br label %for.inc.us.i.us.us.us177.us.us.us.1

for.inc.us.i.us.us.us177.us.us.us.1:              ; preds = %if.else.us.i.us.us.us173.us.us.us.1, %for.inc.us.i.us.us.us177.us.us.us
  %div.us.sink.i.us.us.us178.us.us.us.1 = phi i32 [ %cond.us.i.us.us.us174.us.us.us.1, %if.else.us.i.us.us.us173.us.us.us.1 ], [ %conv49.us.i.us.us.us.us.us.us.1, %for.inc.us.i.us.us.us177.us.us.us ]
  %conv57.us.i.us.us.us179.us.us.us.1 = trunc i32 %div.us.sink.i.us.us.us178.us.us.us.1 to i16
  %gep148.i.us.us.us180.us.us.us.1 = getelementptr i16, ptr %invariant.gep147.sink.i.us.us187.us, i64 %indvars.iv.next.i.us.us.us181.us.us.us
  store i16 %conv57.us.i.us.us.us179.us.us.us.1, ptr %gep148.i.us.us.us180.us.us.us.1, align 2
  %indvars.iv.next.i.us.us.us181.us.us.us.1 = add nuw nsw i64 %indvars.iv.i.us.us.us161.us.us.us, 2
  %exitcond.not.i.us.us.us182.us.us.us.1 = icmp eq i64 %indvars.iv.next.i.us.us.us181.us.us.us.1, %wide.trip.count145.i
  br i1 %exitcond.not.i.us.us.us182.us.us.us.1, label %for.cond1.for.end_crit_edge.us.i.split.us.us.split.split.us.us.split.us.us, label %for.body3.us.i.us.us.us160.us.us.us

for.cond1.for.end_crit_edge.us.i.split.us.us.split.split.us.us.split.us.us: ; preds = %for.inc.us.i.us.us.us177.us.us.us.1
  %indvars.iv.next136.i.us.us186.us = add nuw nsw i64 %indvars.iv135.i.us.us185.us, 1
  %indvars.iv.next141.i.us.us189.us = add nsw i64 %indvars.iv140.i.us.us184.us, %4
  %exitcond146.not.i.us.us190.us = icmp eq i64 %indvars.iv.next136.i.us.us186.us, %wide.trip.count145.i
  br i1 %exitcond146.not.i.us.us190.us, label %pixMeanInterpolateBlock.exit, label %for.cond1.preheader.us.i.us.us183.us

for.cond1.preheader.us.i.us.us183:                ; preds = %for.cond1.preheader.us.i.us.us183.preheader, %for.cond1.for.end_crit_edge.us.i.split.us.us.split.split.us.us.split
  %indvars.iv140.i.us.us184 = phi i64 [ %indvars.iv.next141.i.us.us189, %for.cond1.for.end_crit_edge.us.i.split.us.us.split.split.us.us.split ], [ 0, %for.cond1.preheader.us.i.us.us183.preheader ]
  %indvars.iv135.i.us.us185 = phi i64 [ %indvars.iv.next136.i.us.us186, %for.cond1.for.end_crit_edge.us.i.split.us.us.split.split.us.us.split ], [ 0, %for.cond1.preheader.us.i.us.us183.preheader ]
  %225 = mul nsw i64 %indvars.iv135.i.us.us185, %4
  %226 = trunc i64 %indvars.iv135.i.us.us185 to i32
  %227 = sub i32 %mul107, %226
  %invariant.gep147.sink.i.us.us187 = getelementptr i16, ptr %add.ptr106, i64 %indvars.iv140.i.us.us184
  %add.ptr48.us.i.us.us188 = getelementptr inbounds i16, ptr %src.sroa.13.0, i64 %225
  %brmerge630 = select i1 %min.iters.check461, i1 true, i1 %conflict.rdx458
  br i1 %brmerge630, label %for.body3.us.i.us.us.us160.us, label %vector.body466

vector.body466:                                   ; preds = %for.cond1.preheader.us.i.us.us183, %pred.sdiv.continue483
  %index467 = phi i64 [ %index.next488, %pred.sdiv.continue483 ], [ 0, %for.cond1.preheader.us.i.us.us183 ]
  %228 = or disjoint i64 %index467, 1
  %229 = or disjoint i64 %index467, 2
  %230 = or disjoint i64 %index467, 3
  %231 = trunc i64 %index467 to i32
  %232 = or disjoint i32 %231, 1
  %233 = or disjoint i32 %231, 2
  %234 = or disjoint i32 %231, 3
  %235 = add i32 %231, 4
  %236 = add nsw i32 %227, %232
  %237 = add nsw i32 %227, %233
  %238 = add nsw i32 %227, %234
  %239 = add nsw i32 %227, %235
  %240 = icmp slt i32 %236, 1
  %241 = icmp slt i32 %237, 1
  %242 = icmp slt i32 %238, 1
  %243 = icmp slt i32 %239, 1
  br i1 %240, label %pred.load.if468, label %pred.load.continue469

pred.load.if468:                                  ; preds = %vector.body466
  %244 = load i32, ptr %cond.in.i, align 4, !alias.scope !34
  br label %pred.load.continue469

pred.load.continue469:                            ; preds = %pred.load.if468, %vector.body466
  %245 = phi i32 [ poison, %vector.body466 ], [ %244, %pred.load.if468 ]
  br i1 %241, label %pred.load.if470, label %pred.load.continue471

pred.load.if470:                                  ; preds = %pred.load.continue469
  %246 = load i32, ptr %cond.in.i, align 4, !alias.scope !34
  br label %pred.load.continue471

pred.load.continue471:                            ; preds = %pred.load.if470, %pred.load.continue469
  %247 = phi i32 [ poison, %pred.load.continue469 ], [ %246, %pred.load.if470 ]
  br i1 %242, label %pred.load.if472, label %pred.load.continue473

pred.load.if472:                                  ; preds = %pred.load.continue471
  %248 = load i32, ptr %cond.in.i, align 4, !alias.scope !34
  br label %pred.load.continue473

pred.load.continue473:                            ; preds = %pred.load.if472, %pred.load.continue471
  %249 = phi i32 [ poison, %pred.load.continue471 ], [ %248, %pred.load.if472 ]
  br i1 %243, label %pred.load.if474, label %pred.load.continue475

pred.load.if474:                                  ; preds = %pred.load.continue473
  %250 = load i32, ptr %cond.in.i, align 4, !alias.scope !34
  br label %pred.load.continue475

pred.load.continue475:                            ; preds = %pred.load.if474, %pred.load.continue473
  %251 = phi i32 [ poison, %pred.load.continue473 ], [ %250, %pred.load.if474 ]
  br i1 %240, label %pred.sdiv.continue477, label %pred.sdiv.if476

pred.sdiv.if476:                                  ; preds = %pred.load.continue475
  %252 = load i16, ptr %add.ptr48.us.i.us.us188, align 2, !alias.scope !37
  %253 = getelementptr inbounds i16, ptr %add.ptr.us.i, i64 %index467
  %254 = load i16, ptr %253, align 2, !alias.scope !39
  %255 = zext i16 %254 to i32
  %256 = zext i16 %252 to i32
  %257 = mul nsw i32 %227, %255
  %258 = mul nuw nsw i32 %232, %256
  %259 = add nsw i32 %258, %257
  %260 = sdiv i32 %259, %236
  br label %pred.sdiv.continue477

pred.sdiv.continue477:                            ; preds = %pred.sdiv.if476, %pred.load.continue475
  %predphi484 = phi i32 [ %245, %pred.load.continue475 ], [ %260, %pred.sdiv.if476 ]
  br i1 %241, label %pred.sdiv.continue479, label %pred.sdiv.if478

pred.sdiv.if478:                                  ; preds = %pred.sdiv.continue477
  %261 = load i16, ptr %add.ptr48.us.i.us.us188, align 2, !alias.scope !37
  %262 = getelementptr inbounds i16, ptr %add.ptr.us.i, i64 %228
  %263 = load i16, ptr %262, align 2, !alias.scope !39
  %264 = zext i16 %263 to i32
  %265 = zext i16 %261 to i32
  %266 = mul nsw i32 %227, %264
  %267 = mul nuw nsw i32 %233, %265
  %268 = add nsw i32 %267, %266
  %269 = sdiv i32 %268, %237
  br label %pred.sdiv.continue479

pred.sdiv.continue479:                            ; preds = %pred.sdiv.if478, %pred.sdiv.continue477
  %predphi485 = phi i32 [ %247, %pred.sdiv.continue477 ], [ %269, %pred.sdiv.if478 ]
  br i1 %242, label %pred.sdiv.continue481, label %pred.sdiv.if480

pred.sdiv.if480:                                  ; preds = %pred.sdiv.continue479
  %270 = load i16, ptr %add.ptr48.us.i.us.us188, align 2, !alias.scope !37
  %271 = getelementptr inbounds i16, ptr %add.ptr.us.i, i64 %229
  %272 = load i16, ptr %271, align 2, !alias.scope !39
  %273 = zext i16 %272 to i32
  %274 = zext i16 %270 to i32
  %275 = mul nsw i32 %227, %273
  %276 = mul nuw nsw i32 %234, %274
  %277 = add nsw i32 %276, %275
  %278 = sdiv i32 %277, %238
  br label %pred.sdiv.continue481

pred.sdiv.continue481:                            ; preds = %pred.sdiv.if480, %pred.sdiv.continue479
  %predphi486 = phi i32 [ %249, %pred.sdiv.continue479 ], [ %278, %pred.sdiv.if480 ]
  br i1 %243, label %pred.sdiv.continue483, label %pred.sdiv.if482

pred.sdiv.if482:                                  ; preds = %pred.sdiv.continue481
  %279 = load i16, ptr %add.ptr48.us.i.us.us188, align 2, !alias.scope !37
  %280 = getelementptr inbounds i16, ptr %add.ptr.us.i, i64 %230
  %281 = load i16, ptr %280, align 2, !alias.scope !39
  %282 = zext i16 %281 to i32
  %283 = zext i16 %279 to i32
  %284 = mul nsw i32 %227, %282
  %285 = mul nuw nsw i32 %235, %283
  %286 = add nsw i32 %285, %284
  %287 = sdiv i32 %286, %239
  br label %pred.sdiv.continue483

pred.sdiv.continue483:                            ; preds = %pred.sdiv.if482, %pred.sdiv.continue481
  %predphi487 = phi i32 [ %251, %pred.sdiv.continue481 ], [ %287, %pred.sdiv.if482 ]
  %288 = trunc i32 %predphi484 to i16
  %289 = trunc i32 %predphi485 to i16
  %290 = trunc i32 %predphi486 to i16
  %291 = trunc i32 %predphi487 to i16
  %292 = getelementptr i16, ptr %invariant.gep147.sink.i.us.us187, i64 %index467
  %293 = getelementptr i16, ptr %invariant.gep147.sink.i.us.us187, i64 %228
  %294 = getelementptr i16, ptr %invariant.gep147.sink.i.us.us187, i64 %229
  %295 = getelementptr i16, ptr %invariant.gep147.sink.i.us.us187, i64 %230
  store i16 %288, ptr %292, align 2, !alias.scope !41, !noalias !43
  store i16 %289, ptr %293, align 2, !alias.scope !41, !noalias !43
  store i16 %290, ptr %294, align 2, !alias.scope !41, !noalias !43
  store i16 %291, ptr %295, align 2, !alias.scope !41, !noalias !43
  %index.next488 = add nuw i64 %index467, 4
  %296 = icmp eq i64 %index.next488, %wide.trip.count145.i
  br i1 %296, label %for.cond1.for.end_crit_edge.us.i.split.us.us.split.split.us.us.split, label %vector.body466, !llvm.loop !44

for.body3.us.i.us.us.us160.us:                    ; preds = %for.cond1.preheader.us.i.us.us183, %for.inc.us.i.us.us.us177.us
  %indvars.iv.i.us.us.us161.us = phi i64 [ %indvars.iv.next.i.us.us.us181.us, %for.inc.us.i.us.us.us177.us ], [ 0, %for.cond1.preheader.us.i.us.us183 ]
  %297 = trunc i64 %indvars.iv.i.us.us.us161.us to i32
  %298 = add i32 %297, 1
  %add52.us.i.us.us.us.us = add nsw i32 %227, %298
  %cmp54.us.i.us.us.us172.us = icmp sgt i32 %add52.us.i.us.us.us.us, 0
  br i1 %cmp54.us.i.us.us.us172.us, label %if.then56.us.i.us.us.us175.us, label %if.else.us.i.us.us.us173.us

if.else.us.i.us.us.us173.us:                      ; preds = %for.body3.us.i.us.us.us160.us
  %cond.us.i.us.us.us174.us = load i32, ptr %cond.in.i, align 4
  br label %for.inc.us.i.us.us.us177.us

if.then56.us.i.us.us.us175.us:                    ; preds = %for.body3.us.i.us.us.us160.us
  %299 = load i16, ptr %add.ptr48.us.i.us.us188, align 2
  %conv49.us.i.us.us.us.us = zext i16 %299 to i32
  %mul50.us.i.us.us.us.us = mul nuw nsw i32 %298, %conv49.us.i.us.us.us.us
  %add.ptr8.us.i.us.us.us163.us = getelementptr inbounds i16, ptr %add.ptr.us.i, i64 %indvars.iv.i.us.us.us161.us
  %300 = load i16, ptr %add.ptr8.us.i.us.us.us163.us, align 2
  %conv.us.i.us.us.us164.us = zext i16 %300 to i32
  %mul9.us.i.us.us.us165.us = mul nsw i32 %227, %conv.us.i.us.us.us164.us
  %add51.us.i.us.us.us.us = add nsw i32 %mul50.us.i.us.us.us.us, %mul9.us.i.us.us.us165.us
  %div.us.i.us.us.us176.us = sdiv i32 %add51.us.i.us.us.us.us, %add52.us.i.us.us.us.us
  br label %for.inc.us.i.us.us.us177.us

for.inc.us.i.us.us.us177.us:                      ; preds = %if.then56.us.i.us.us.us175.us, %if.else.us.i.us.us.us173.us
  %div.us.sink.i.us.us.us178.us = phi i32 [ %div.us.i.us.us.us176.us, %if.then56.us.i.us.us.us175.us ], [ %cond.us.i.us.us.us174.us, %if.else.us.i.us.us.us173.us ]
  %conv57.us.i.us.us.us179.us = trunc i32 %div.us.sink.i.us.us.us178.us to i16
  %gep148.i.us.us.us180.us = getelementptr i16, ptr %invariant.gep147.sink.i.us.us187, i64 %indvars.iv.i.us.us.us161.us
  store i16 %conv57.us.i.us.us.us179.us, ptr %gep148.i.us.us.us180.us, align 2
  %indvars.iv.next.i.us.us.us181.us = add nuw nsw i64 %indvars.iv.i.us.us.us161.us, 1
  %exitcond.not.i.us.us.us182.us = icmp eq i64 %indvars.iv.next.i.us.us.us181.us, %wide.trip.count145.i
  br i1 %exitcond.not.i.us.us.us182.us, label %for.cond1.for.end_crit_edge.us.i.split.us.us.split.split.us.us.split, label %for.body3.us.i.us.us.us160.us, !llvm.loop !45

for.cond1.for.end_crit_edge.us.i.split.us.us.split.split.us.us.split: ; preds = %pred.sdiv.continue483, %for.inc.us.i.us.us.us177.us
  %indvars.iv.next136.i.us.us186 = add nuw nsw i64 %indvars.iv135.i.us.us185, 1
  %indvars.iv.next141.i.us.us189 = add nsw i64 %indvars.iv140.i.us.us184, %4
  %exitcond146.not.i.us.us190 = icmp eq i64 %indvars.iv.next136.i.us.us186, %wide.trip.count145.i
  br i1 %exitcond146.not.i.us.us190, label %pixMeanInterpolateBlock.exit, label %for.cond1.preheader.us.i.us.us183

for.cond1.preheader.us.i.us:                      ; preds = %for.cond1.preheader.us.i.us.preheader, %for.cond1.for.end_crit_edge.us.i.split.us.us.split.split
  %indvars.iv140.i.us = phi i64 [ %indvars.iv.next141.i.us, %for.cond1.for.end_crit_edge.us.i.split.us.us.split.split ], [ 0, %for.cond1.preheader.us.i.us.preheader ]
  %indvars.iv135.i.us = phi i64 [ %indvars.iv.next136.i.us, %for.cond1.for.end_crit_edge.us.i.split.us.us.split.split ], [ 0, %for.cond1.preheader.us.i.us.preheader ]
  %301 = mul nsw i64 %indvars.iv135.i.us, %4
  %indvars.iv.next136.i.us = add nuw nsw i64 %indvars.iv135.i.us, 1
  %302 = trunc i64 %indvars.iv135.i.us to i32
  %303 = sub i32 %mul107, %302
  %304 = trunc nuw nsw i64 %indvars.iv.next136.i.us to i32
  %invariant.gep147.sink.i.us = getelementptr i16, ptr %add.ptr106, i64 %indvars.iv140.i.us
  %add.ptr48.us.i.us = getelementptr inbounds i16, ptr %src.sroa.13.0, i64 %301
  %brmerge631 = select i1 %min.iters.check394, i1 true, i1 %conflict.rdx391
  br i1 %brmerge631, label %for.body3.us.i.us.us, label %vector.body399

vector.body399:                                   ; preds = %for.cond1.preheader.us.i.us, %pred.sdiv.continue432
  %index400 = phi i64 [ %index.next437, %pred.sdiv.continue432 ], [ 0, %for.cond1.preheader.us.i.us ]
  %305 = or disjoint i64 %index400, 1
  %306 = or disjoint i64 %index400, 2
  %307 = or disjoint i64 %index400, 3
  %308 = trunc i64 %index400 to i32
  br i1 %cmp4.not.us.i, label %pred.load.continue402, label %pred.load.if401

pred.load.if401:                                  ; preds = %vector.body399
  %309 = getelementptr inbounds i16, ptr %add.ptr.us.i, i64 %index400
  %310 = load i16, ptr %309, align 2, !alias.scope !46
  br label %pred.load.continue402

pred.load.continue402:                            ; preds = %pred.load.if401, %vector.body399
  %311 = phi i16 [ poison, %vector.body399 ], [ %310, %pred.load.if401 ]
  br i1 %cmp4.not.us.i, label %pred.load.continue404, label %pred.load.if403

pred.load.if403:                                  ; preds = %pred.load.continue402
  %312 = getelementptr inbounds i16, ptr %add.ptr.us.i, i64 %305
  %313 = load i16, ptr %312, align 2, !alias.scope !46
  br label %pred.load.continue404

pred.load.continue404:                            ; preds = %pred.load.if403, %pred.load.continue402
  %314 = phi i16 [ poison, %pred.load.continue402 ], [ %313, %pred.load.if403 ]
  br i1 %cmp4.not.us.i, label %pred.load.continue406, label %pred.load.if405

pred.load.if405:                                  ; preds = %pred.load.continue404
  %315 = getelementptr inbounds i16, ptr %add.ptr.us.i, i64 %306
  %316 = load i16, ptr %315, align 2, !alias.scope !46
  br label %pred.load.continue406

pred.load.continue406:                            ; preds = %pred.load.if405, %pred.load.continue404
  %317 = phi i16 [ poison, %pred.load.continue404 ], [ %316, %pred.load.if405 ]
  br i1 %cmp4.not.us.i, label %pred.load.continue408, label %pred.load.if407

pred.load.if407:                                  ; preds = %pred.load.continue406
  %318 = getelementptr inbounds i16, ptr %add.ptr.us.i, i64 %307
  %319 = load i16, ptr %318, align 2, !alias.scope !46
  br label %pred.load.continue408

pred.load.continue408:                            ; preds = %pred.load.if407, %pred.load.continue406
  %predphi413 = phi i32 [ 0, %pred.load.continue406 ], [ %303, %pred.load.if407 ]
  %320 = phi i16 [ poison, %pred.load.continue406 ], [ %319, %pred.load.if407 ]
  %321 = add nsw i32 %predphi413, %304
  %322 = add nsw i32 %predphi413, %304
  %323 = add nsw i32 %predphi413, %304
  %324 = add nsw i32 %predphi413, %304
  %325 = or disjoint i32 %308, 1
  %326 = or disjoint i32 %308, 2
  %327 = or disjoint i32 %308, 3
  %328 = add i32 %308, 4
  %329 = add nsw i32 %321, %325
  %330 = add nsw i32 %322, %326
  %331 = add nsw i32 %323, %327
  %332 = add nsw i32 %324, %328
  %333 = icmp sgt i32 %329, 0
  %334 = icmp sgt i32 %330, 0
  %335 = icmp sgt i32 %331, 0
  %336 = icmp sgt i32 %332, 0
  br i1 %333, label %pred.load.continue418, label %pred.load.if417

pred.load.if417:                                  ; preds = %pred.load.continue408
  %337 = load i32, ptr %cond.in.i, align 4, !alias.scope !49
  br label %pred.load.continue418

pred.load.continue418:                            ; preds = %pred.load.if417, %pred.load.continue408
  %338 = phi i32 [ poison, %pred.load.continue408 ], [ %337, %pred.load.if417 ]
  br i1 %334, label %pred.load.continue420, label %pred.load.if419

pred.load.if419:                                  ; preds = %pred.load.continue418
  %339 = load i32, ptr %cond.in.i, align 4, !alias.scope !49
  br label %pred.load.continue420

pred.load.continue420:                            ; preds = %pred.load.if419, %pred.load.continue418
  %340 = phi i32 [ poison, %pred.load.continue418 ], [ %339, %pred.load.if419 ]
  br i1 %335, label %pred.load.continue422, label %pred.load.if421

pred.load.if421:                                  ; preds = %pred.load.continue420
  %341 = load i32, ptr %cond.in.i, align 4, !alias.scope !49
  br label %pred.load.continue422

pred.load.continue422:                            ; preds = %pred.load.if421, %pred.load.continue420
  %342 = phi i32 [ poison, %pred.load.continue420 ], [ %341, %pred.load.if421 ]
  br i1 %336, label %pred.load.continue424, label %pred.load.if423

pred.load.if423:                                  ; preds = %pred.load.continue422
  %343 = load i32, ptr %cond.in.i, align 4, !alias.scope !49
  br label %pred.load.continue424

pred.load.continue424:                            ; preds = %pred.load.if423, %pred.load.continue422
  %344 = phi i32 [ poison, %pred.load.continue422 ], [ %343, %pred.load.if423 ]
  br i1 %333, label %pred.sdiv.if425, label %pred.sdiv.continue426

pred.sdiv.if425:                                  ; preds = %pred.load.continue424
  %345 = zext i16 %311 to i32
  %346 = mul nsw i32 %303, %345
  %predphi409 = select i1 %cmp4.not.us.i, i32 0, i32 %346
  %347 = load i16, ptr %add.ptr48.us.i.us, align 2, !alias.scope !51
  %348 = getelementptr inbounds i16, ptr %src.sroa.11.0, i64 %index400
  %349 = load i16, ptr %348, align 2, !alias.scope !53
  %350 = zext i16 %349 to i32
  %351 = mul nuw nsw i32 %350, %304
  %352 = zext i16 %347 to i32
  %353 = add nsw i32 %351, %predphi409
  %354 = mul nuw nsw i32 %325, %352
  %355 = add nsw i32 %354, %353
  %356 = sdiv i32 %355, %329
  br label %pred.sdiv.continue426

pred.sdiv.continue426:                            ; preds = %pred.sdiv.if425, %pred.load.continue424
  %predphi433 = phi i32 [ %338, %pred.load.continue424 ], [ %356, %pred.sdiv.if425 ]
  br i1 %334, label %pred.sdiv.if427, label %pred.sdiv.continue428

pred.sdiv.if427:                                  ; preds = %pred.sdiv.continue426
  %357 = zext i16 %314 to i32
  %358 = mul nsw i32 %303, %357
  %predphi410 = select i1 %cmp4.not.us.i, i32 0, i32 %358
  %359 = load i16, ptr %add.ptr48.us.i.us, align 2, !alias.scope !51
  %360 = getelementptr inbounds i16, ptr %src.sroa.11.0, i64 %305
  %361 = load i16, ptr %360, align 2, !alias.scope !53
  %362 = zext i16 %361 to i32
  %363 = mul nuw nsw i32 %362, %304
  %364 = zext i16 %359 to i32
  %365 = add nsw i32 %363, %predphi410
  %366 = mul nuw nsw i32 %326, %364
  %367 = add nsw i32 %366, %365
  %368 = sdiv i32 %367, %330
  br label %pred.sdiv.continue428

pred.sdiv.continue428:                            ; preds = %pred.sdiv.if427, %pred.sdiv.continue426
  %predphi434 = phi i32 [ %340, %pred.sdiv.continue426 ], [ %368, %pred.sdiv.if427 ]
  br i1 %335, label %pred.sdiv.if429, label %pred.sdiv.continue430

pred.sdiv.if429:                                  ; preds = %pred.sdiv.continue428
  %369 = zext i16 %317 to i32
  %370 = mul nsw i32 %303, %369
  %predphi411 = select i1 %cmp4.not.us.i, i32 0, i32 %370
  %371 = load i16, ptr %add.ptr48.us.i.us, align 2, !alias.scope !51
  %372 = getelementptr inbounds i16, ptr %src.sroa.11.0, i64 %306
  %373 = load i16, ptr %372, align 2, !alias.scope !53
  %374 = zext i16 %373 to i32
  %375 = mul nuw nsw i32 %374, %304
  %376 = zext i16 %371 to i32
  %377 = add nsw i32 %375, %predphi411
  %378 = mul nuw nsw i32 %327, %376
  %379 = add nsw i32 %378, %377
  %380 = sdiv i32 %379, %331
  br label %pred.sdiv.continue430

pred.sdiv.continue430:                            ; preds = %pred.sdiv.if429, %pred.sdiv.continue428
  %predphi435 = phi i32 [ %342, %pred.sdiv.continue428 ], [ %380, %pred.sdiv.if429 ]
  br i1 %336, label %pred.sdiv.if431, label %pred.sdiv.continue432

pred.sdiv.if431:                                  ; preds = %pred.sdiv.continue430
  %381 = zext i16 %320 to i32
  %382 = mul nsw i32 %303, %381
  %predphi412 = select i1 %cmp4.not.us.i, i32 0, i32 %382
  %383 = load i16, ptr %add.ptr48.us.i.us, align 2, !alias.scope !51
  %384 = getelementptr inbounds i16, ptr %src.sroa.11.0, i64 %307
  %385 = load i16, ptr %384, align 2, !alias.scope !53
  %386 = zext i16 %385 to i32
  %387 = mul nuw nsw i32 %386, %304
  %388 = zext i16 %383 to i32
  %389 = add nsw i32 %387, %predphi412
  %390 = mul nuw nsw i32 %328, %388
  %391 = add nsw i32 %390, %389
  %392 = sdiv i32 %391, %332
  br label %pred.sdiv.continue432

pred.sdiv.continue432:                            ; preds = %pred.sdiv.if431, %pred.sdiv.continue430
  %predphi436 = phi i32 [ %344, %pred.sdiv.continue430 ], [ %392, %pred.sdiv.if431 ]
  %393 = trunc i32 %predphi433 to i16
  %394 = trunc i32 %predphi434 to i16
  %395 = trunc i32 %predphi435 to i16
  %396 = trunc i32 %predphi436 to i16
  %397 = getelementptr i16, ptr %invariant.gep147.sink.i.us, i64 %index400
  %398 = getelementptr i16, ptr %invariant.gep147.sink.i.us, i64 %305
  %399 = getelementptr i16, ptr %invariant.gep147.sink.i.us, i64 %306
  %400 = getelementptr i16, ptr %invariant.gep147.sink.i.us, i64 %307
  store i16 %393, ptr %397, align 2, !alias.scope !55, !noalias !57
  store i16 %394, ptr %398, align 2, !alias.scope !55, !noalias !57
  store i16 %395, ptr %399, align 2, !alias.scope !55, !noalias !57
  store i16 %396, ptr %400, align 2, !alias.scope !55, !noalias !57
  %index.next437 = add nuw i64 %index400, 4
  %401 = icmp eq i64 %index.next437, %wide.trip.count145.i
  br i1 %401, label %for.cond1.for.end_crit_edge.us.i.split.us.us.split.split, label %vector.body399, !llvm.loop !58

for.body3.us.i.us.us:                             ; preds = %for.cond1.preheader.us.i.us, %for.inc.us.i.us.us
  %indvars.iv.i.us.us = phi i64 [ %indvars.iv.next.i.us.us, %for.inc.us.i.us.us ], [ 0, %for.cond1.preheader.us.i.us ]
  br i1 %cmp4.not.us.i, label %if.end.us.i.us.us, label %if.then.us.i.us.us

if.then.us.i.us.us:                               ; preds = %for.body3.us.i.us.us
  %add.ptr8.us.i.us.us = getelementptr inbounds i16, ptr %add.ptr.us.i, i64 %indvars.iv.i.us.us
  %402 = load i16, ptr %add.ptr8.us.i.us.us, align 2
  %conv.us.i.us.us = zext i16 %402 to i32
  %mul9.us.i.us.us = mul nsw i32 %303, %conv.us.i.us.us
  br label %if.end.us.i.us.us

if.end.us.i.us.us:                                ; preds = %if.then.us.i.us.us, %for.body3.us.i.us.us
  %tmp.0.us.i.us.us = phi i32 [ %mul9.us.i.us.us, %if.then.us.i.us.us ], [ 0, %for.body3.us.i.us.us ]
  %srcCounter.0.us.i.us.us = phi i32 [ %303, %if.then.us.i.us.us ], [ 0, %for.body3.us.i.us.us ]
  %add38.us.i.us.us = add nsw i32 %srcCounter.0.us.i.us.us, %304
  %403 = trunc i64 %indvars.iv.i.us.us to i32
  %404 = add i32 %403, 1
  %add52.us.i.us.us = add nsw i32 %add38.us.i.us.us, %404
  %cmp54.us.i.us.us = icmp sgt i32 %add52.us.i.us.us, 0
  br i1 %cmp54.us.i.us.us, label %if.then56.us.i.us.us, label %if.else.us.i.us.us

if.else.us.i.us.us:                               ; preds = %if.end.us.i.us.us
  %cond.us.i.us.us = load i32, ptr %cond.in.i, align 4
  br label %for.inc.us.i.us.us

if.then56.us.i.us.us:                             ; preds = %if.end.us.i.us.us
  %405 = load i16, ptr %add.ptr48.us.i.us, align 2
  %conv49.us.i.us.us = zext i16 %405 to i32
  %mul50.us.i.us.us = mul nuw nsw i32 %404, %conv49.us.i.us.us
  %add.ptr34.us.i.us.us = getelementptr inbounds i16, ptr %src.sroa.11.0, i64 %indvars.iv.i.us.us
  %406 = load i16, ptr %add.ptr34.us.i.us.us, align 2
  %conv35.us.i.us.us = zext i16 %406 to i32
  %mul36.us.i.us.us = mul nuw nsw i32 %conv35.us.i.us.us, %304
  %add37.us.i.us.us = add nsw i32 %mul36.us.i.us.us, %tmp.0.us.i.us.us
  %add51.us.i.us.us = add nsw i32 %mul50.us.i.us.us, %add37.us.i.us.us
  %div.us.i.us.us = sdiv i32 %add51.us.i.us.us, %add52.us.i.us.us
  br label %for.inc.us.i.us.us

for.inc.us.i.us.us:                               ; preds = %if.then56.us.i.us.us, %if.else.us.i.us.us
  %div.us.sink.i.us.us = phi i32 [ %div.us.i.us.us, %if.then56.us.i.us.us ], [ %cond.us.i.us.us, %if.else.us.i.us.us ]
  %conv57.us.i.us.us = trunc i32 %div.us.sink.i.us.us to i16
  %gep148.i.us.us = getelementptr i16, ptr %invariant.gep147.sink.i.us, i64 %indvars.iv.i.us.us
  store i16 %conv57.us.i.us.us, ptr %gep148.i.us.us, align 2
  %indvars.iv.next.i.us.us = add nuw nsw i64 %indvars.iv.i.us.us, 1
  %exitcond.not.i.us.us = icmp eq i64 %indvars.iv.next.i.us.us, %wide.trip.count145.i
  br i1 %exitcond.not.i.us.us, label %for.cond1.for.end_crit_edge.us.i.split.us.us.split.split, label %for.body3.us.i.us.us, !llvm.loop !59

for.cond1.for.end_crit_edge.us.i.split.us.us.split.split: ; preds = %pred.sdiv.continue432, %for.inc.us.i.us.us
  %indvars.iv.next141.i.us = add nsw i64 %indvars.iv140.i.us, %4
  %exitcond146.not.i.us = icmp eq i64 %indvars.iv.next136.i.us, %wide.trip.count145.i
  br i1 %exitcond146.not.i.us, label %pixMeanInterpolateBlock.exit, label %for.cond1.preheader.us.i.us

for.cond1.preheader.us.i:                         ; preds = %for.cond1.preheader.us.i.preheader, %for.cond1.for.end_crit_edge.us.i.split
  %indvars.iv140.i = phi i64 [ %indvars.iv.next141.i, %for.cond1.for.end_crit_edge.us.i.split ], [ 0, %for.cond1.preheader.us.i.preheader ]
  %indvars.iv135.i = phi i64 [ %indvars.iv.next136.i, %for.cond1.for.end_crit_edge.us.i.split ], [ 0, %for.cond1.preheader.us.i.preheader ]
  %407 = mul nsw i64 %indvars.iv135.i, %4
  %indvars.iv.next136.i = add nuw nsw i64 %indvars.iv135.i, 1
  %408 = trunc i64 %indvars.iv135.i to i32
  %409 = sub i32 %mul107, %408
  %410 = trunc nuw nsw i64 %indvars.iv.next136.i to i32
  %invariant.gep147.sink.i = getelementptr i16, ptr %add.ptr106, i64 %indvars.iv140.i
  %gep = getelementptr i16, ptr %invariant.gep, i64 %407
  %add.ptr48.us.i = getelementptr inbounds i16, ptr %src.sroa.13.0, i64 %407
  %brmerge632 = select i1 %min.iters.check, i1 true, i1 %conflict.rdx302
  br i1 %brmerge632, label %for.body3.us.i, label %vector.body.preheader

vector.body.preheader:                            ; preds = %for.cond1.preheader.us.i
  %411 = load i16, ptr %gep, align 2, !alias.scope !60
  %412 = zext i16 %411 to i32
  %413 = zext i16 %411 to i32
  %414 = zext i16 %411 to i32
  %415 = zext i16 %411 to i32
  br label %vector.body

vector.body:                                      ; preds = %vector.body.preheader, %pred.sdiv.continue361
  %index = phi i64 [ %index.next, %pred.sdiv.continue361 ], [ 0, %vector.body.preheader ]
  %416 = or disjoint i64 %index, 1
  %417 = or disjoint i64 %index, 2
  %418 = or disjoint i64 %index, 3
  %419 = trunc i64 %index to i32
  %.neg = xor i32 %419, -1
  %420 = or disjoint i32 %419, 2
  %421 = or disjoint i32 %419, 3
  br i1 %cmp4.not.us.i, label %pred.load.continue, label %pred.load.if

pred.load.if:                                     ; preds = %vector.body
  %422 = getelementptr inbounds i16, ptr %add.ptr.us.i, i64 %index
  %423 = load i16, ptr %422, align 2, !alias.scope !63
  br label %pred.load.continue

pred.load.continue:                               ; preds = %pred.load.if, %vector.body
  %424 = phi i16 [ poison, %vector.body ], [ %423, %pred.load.if ]
  br i1 %cmp4.not.us.i, label %pred.load.continue304, label %pred.load.if303

pred.load.if303:                                  ; preds = %pred.load.continue
  %425 = getelementptr inbounds i16, ptr %add.ptr.us.i, i64 %416
  %426 = load i16, ptr %425, align 2, !alias.scope !63
  br label %pred.load.continue304

pred.load.continue304:                            ; preds = %pred.load.if303, %pred.load.continue
  %427 = phi i16 [ poison, %pred.load.continue ], [ %426, %pred.load.if303 ]
  br i1 %cmp4.not.us.i, label %pred.load.continue306, label %pred.load.if305

pred.load.if305:                                  ; preds = %pred.load.continue304
  %428 = getelementptr inbounds i16, ptr %add.ptr.us.i, i64 %417
  %429 = load i16, ptr %428, align 2, !alias.scope !63
  br label %pred.load.continue306

pred.load.continue306:                            ; preds = %pred.load.if305, %pred.load.continue304
  %430 = phi i16 [ poison, %pred.load.continue304 ], [ %429, %pred.load.if305 ]
  br i1 %cmp4.not.us.i, label %pred.load.continue308, label %pred.load.if307

pred.load.if307:                                  ; preds = %pred.load.continue306
  %431 = getelementptr inbounds i16, ptr %add.ptr.us.i, i64 %418
  %432 = load i16, ptr %431, align 2, !alias.scope !63
  br label %pred.load.continue308

pred.load.continue308:                            ; preds = %pred.load.if307, %pred.load.continue306
  %predphi312 = phi i32 [ 0, %pred.load.continue306 ], [ %409, %pred.load.if307 ]
  %433 = phi i16 [ poison, %pred.load.continue306 ], [ %432, %pred.load.if307 ]
  %434 = sub i32 %mul107, %419
  %435 = add i32 %mul107, %.neg
  %436 = sub i32 %mul107, %420
  %437 = sub i32 %mul107, %421
  %438 = add nsw i32 %predphi312, %434
  %439 = add nsw i32 %predphi312, %435
  %440 = add nsw i32 %predphi312, %436
  %441 = add nsw i32 %predphi312, %437
  br i1 %cmp28.not.us.i, label %pred.load.continue317, label %pred.load.if316

pred.load.if316:                                  ; preds = %pred.load.continue308
  %442 = getelementptr inbounds i16, ptr %src.sroa.11.0, i64 %index
  %443 = load i16, ptr %442, align 2, !alias.scope !65
  br label %pred.load.continue317

pred.load.continue317:                            ; preds = %pred.load.if316, %pred.load.continue308
  %444 = phi i16 [ poison, %pred.load.continue308 ], [ %443, %pred.load.if316 ]
  br i1 %cmp28.not.us.i, label %pred.load.continue319, label %pred.load.if318

pred.load.if318:                                  ; preds = %pred.load.continue317
  %445 = getelementptr inbounds i16, ptr %src.sroa.11.0, i64 %416
  %446 = load i16, ptr %445, align 2, !alias.scope !65
  br label %pred.load.continue319

pred.load.continue319:                            ; preds = %pred.load.if318, %pred.load.continue317
  %447 = phi i16 [ poison, %pred.load.continue317 ], [ %446, %pred.load.if318 ]
  br i1 %cmp28.not.us.i, label %pred.load.continue321, label %pred.load.if320

pred.load.if320:                                  ; preds = %pred.load.continue319
  %448 = getelementptr inbounds i16, ptr %src.sroa.11.0, i64 %417
  %449 = load i16, ptr %448, align 2, !alias.scope !65
  br label %pred.load.continue321

pred.load.continue321:                            ; preds = %pred.load.if320, %pred.load.continue319
  %450 = phi i16 [ poison, %pred.load.continue319 ], [ %449, %pred.load.if320 ]
  br i1 %cmp28.not.us.i, label %pred.load.continue323, label %pred.load.if322

pred.load.if322:                                  ; preds = %pred.load.continue321
  %451 = getelementptr inbounds i16, ptr %src.sroa.11.0, i64 %418
  %452 = load i16, ptr %451, align 2, !alias.scope !65
  br label %pred.load.continue323

pred.load.continue323:                            ; preds = %pred.load.if322, %pred.load.continue321
  %453 = phi i32 [ 0, %pred.load.continue321 ], [ %410, %pred.load.if322 ]
  %454 = phi i16 [ poison, %pred.load.continue321 ], [ %452, %pred.load.if322 ]
  %predphi328 = add nsw i32 %438, %453
  %predphi329 = add nsw i32 %439, %453
  %predphi330 = add nsw i32 %440, %453
  %predphi331 = add nsw i32 %441, %453
  br i1 %cmp41.not.us.i, label %pred.load.continue333, label %pred.load.if332

pred.load.if332:                                  ; preds = %pred.load.continue323
  %455 = load i16, ptr %add.ptr48.us.i, align 2, !alias.scope !67
  br label %pred.load.continue333

pred.load.continue333:                            ; preds = %pred.load.if332, %pred.load.continue323
  %456 = phi i16 [ poison, %pred.load.continue323 ], [ %455, %pred.load.if332 ]
  br i1 %cmp41.not.us.i, label %pred.load.continue335, label %pred.load.if334

pred.load.if334:                                  ; preds = %pred.load.continue333
  %457 = load i16, ptr %add.ptr48.us.i, align 2, !alias.scope !67
  br label %pred.load.continue335

pred.load.continue335:                            ; preds = %pred.load.if334, %pred.load.continue333
  %458 = phi i16 [ poison, %pred.load.continue333 ], [ %457, %pred.load.if334 ]
  br i1 %cmp41.not.us.i, label %pred.load.continue337, label %pred.load.if336

pred.load.if336:                                  ; preds = %pred.load.continue335
  %459 = load i16, ptr %add.ptr48.us.i, align 2, !alias.scope !67
  br label %pred.load.continue337

pred.load.continue337:                            ; preds = %pred.load.if336, %pred.load.continue335
  %460 = phi i16 [ poison, %pred.load.continue335 ], [ %459, %pred.load.if336 ]
  br i1 %cmp41.not.us.i, label %pred.load.continue339, label %pred.load.if338

pred.load.if338:                                  ; preds = %pred.load.continue337
  %461 = load i16, ptr %add.ptr48.us.i, align 2, !alias.scope !67
  br label %pred.load.continue339

pred.load.continue339:                            ; preds = %pred.load.if338, %pred.load.continue337
  %462 = phi i16 [ poison, %pred.load.continue337 ], [ %461, %pred.load.if338 ]
  %463 = or disjoint i32 %419, 1
  %464 = or disjoint i32 %419, 2
  %465 = or disjoint i32 %419, 3
  %466 = add i32 %419, 4
  %467 = select i1 %cmp41.not.us.i, i32 0, i32 %463
  %predphi344 = add nsw i32 %predphi328, %467
  %468 = select i1 %cmp41.not.us.i, i32 0, i32 %464
  %predphi345 = add nsw i32 %predphi329, %468
  %469 = select i1 %cmp41.not.us.i, i32 0, i32 %465
  %predphi346 = add nsw i32 %predphi330, %469
  %470 = select i1 %cmp41.not.us.i, i32 0, i32 %466
  %predphi347 = add nsw i32 %predphi331, %470
  %471 = icmp sgt i32 %predphi344, 0
  %472 = icmp sgt i32 %predphi345, 0
  %473 = icmp sgt i32 %predphi346, 0
  %474 = icmp sgt i32 %predphi347, 0
  br i1 %471, label %pred.load.continue349, label %pred.load.if348

pred.load.if348:                                  ; preds = %pred.load.continue339
  %475 = load i32, ptr %cond.in.i, align 4, !alias.scope !69
  br label %pred.load.continue349

pred.load.continue349:                            ; preds = %pred.load.if348, %pred.load.continue339
  %476 = phi i32 [ poison, %pred.load.continue339 ], [ %475, %pred.load.if348 ]
  br i1 %472, label %pred.load.continue351, label %pred.load.if350

pred.load.if350:                                  ; preds = %pred.load.continue349
  %477 = load i32, ptr %cond.in.i, align 4, !alias.scope !69
  br label %pred.load.continue351

pred.load.continue351:                            ; preds = %pred.load.if350, %pred.load.continue349
  %478 = phi i32 [ poison, %pred.load.continue349 ], [ %477, %pred.load.if350 ]
  br i1 %473, label %pred.load.continue353, label %pred.load.if352

pred.load.if352:                                  ; preds = %pred.load.continue351
  %479 = load i32, ptr %cond.in.i, align 4, !alias.scope !69
  br label %pred.load.continue353

pred.load.continue353:                            ; preds = %pred.load.if352, %pred.load.continue351
  %480 = phi i32 [ poison, %pred.load.continue351 ], [ %479, %pred.load.if352 ]
  br i1 %474, label %pred.load.continue355, label %pred.load.if354

pred.load.if354:                                  ; preds = %pred.load.continue353
  %481 = load i32, ptr %cond.in.i, align 4, !alias.scope !69
  br label %pred.load.continue355

pred.load.continue355:                            ; preds = %pred.load.if354, %pred.load.continue353
  %482 = phi i32 [ poison, %pred.load.continue353 ], [ %481, %pred.load.if354 ]
  br i1 %471, label %pred.sdiv.if, label %pred.sdiv.continue

pred.sdiv.if:                                     ; preds = %pred.load.continue355
  %483 = mul nsw i32 %434, %412
  %484 = zext i16 %424 to i32
  %485 = mul nsw i32 %409, %484
  %predphi = select i1 %cmp4.not.us.i, i32 0, i32 %485
  %486 = add nsw i32 %483, %predphi
  %487 = zext i16 %444 to i32
  %488 = mul nuw nsw i32 %487, %410
  %489 = select i1 %cmp28.not.us.i, i32 0, i32 %488
  %predphi324 = add nsw i32 %486, %489
  %490 = zext i16 %456 to i32
  %491 = mul nuw nsw i32 %463, %490
  %492 = select i1 %cmp41.not.us.i, i32 0, i32 %491
  %predphi340 = add nsw i32 %predphi324, %492
  %493 = sdiv i32 %predphi340, %predphi344
  br label %pred.sdiv.continue

pred.sdiv.continue:                               ; preds = %pred.sdiv.if, %pred.load.continue355
  %predphi362 = phi i32 [ %476, %pred.load.continue355 ], [ %493, %pred.sdiv.if ]
  br i1 %472, label %pred.sdiv.if356, label %pred.sdiv.continue357

pred.sdiv.if356:                                  ; preds = %pred.sdiv.continue
  %494 = mul nsw i32 %435, %413
  %495 = zext i16 %427 to i32
  %496 = mul nsw i32 %409, %495
  %predphi309 = select i1 %cmp4.not.us.i, i32 0, i32 %496
  %497 = add nsw i32 %494, %predphi309
  %498 = zext i16 %447 to i32
  %499 = mul nuw nsw i32 %498, %410
  %500 = select i1 %cmp28.not.us.i, i32 0, i32 %499
  %predphi325 = add nsw i32 %497, %500
  %501 = zext i16 %458 to i32
  %502 = mul nuw nsw i32 %464, %501
  %503 = select i1 %cmp41.not.us.i, i32 0, i32 %502
  %predphi341 = add nsw i32 %predphi325, %503
  %504 = sdiv i32 %predphi341, %predphi345
  br label %pred.sdiv.continue357

pred.sdiv.continue357:                            ; preds = %pred.sdiv.if356, %pred.sdiv.continue
  %predphi363 = phi i32 [ %478, %pred.sdiv.continue ], [ %504, %pred.sdiv.if356 ]
  br i1 %473, label %pred.sdiv.if358, label %pred.sdiv.continue359

pred.sdiv.if358:                                  ; preds = %pred.sdiv.continue357
  %505 = mul nsw i32 %436, %414
  %506 = zext i16 %430 to i32
  %507 = mul nsw i32 %409, %506
  %predphi310 = select i1 %cmp4.not.us.i, i32 0, i32 %507
  %508 = add nsw i32 %505, %predphi310
  %509 = zext i16 %450 to i32
  %510 = mul nuw nsw i32 %509, %410
  %511 = select i1 %cmp28.not.us.i, i32 0, i32 %510
  %predphi326 = add nsw i32 %508, %511
  %512 = zext i16 %460 to i32
  %513 = mul nuw nsw i32 %465, %512
  %514 = select i1 %cmp41.not.us.i, i32 0, i32 %513
  %predphi342 = add nsw i32 %predphi326, %514
  %515 = sdiv i32 %predphi342, %predphi346
  br label %pred.sdiv.continue359

pred.sdiv.continue359:                            ; preds = %pred.sdiv.if358, %pred.sdiv.continue357
  %predphi364 = phi i32 [ %480, %pred.sdiv.continue357 ], [ %515, %pred.sdiv.if358 ]
  br i1 %474, label %pred.sdiv.if360, label %pred.sdiv.continue361

pred.sdiv.if360:                                  ; preds = %pred.sdiv.continue359
  %516 = mul nsw i32 %437, %415
  %517 = zext i16 %433 to i32
  %518 = mul nsw i32 %409, %517
  %predphi311 = select i1 %cmp4.not.us.i, i32 0, i32 %518
  %519 = add nsw i32 %516, %predphi311
  %520 = zext i16 %454 to i32
  %521 = mul nuw nsw i32 %520, %410
  %522 = select i1 %cmp28.not.us.i, i32 0, i32 %521
  %predphi327 = add nsw i32 %519, %522
  %523 = zext i16 %462 to i32
  %524 = mul nuw nsw i32 %466, %523
  %525 = select i1 %cmp41.not.us.i, i32 0, i32 %524
  %predphi343 = add nsw i32 %predphi327, %525
  %526 = sdiv i32 %predphi343, %predphi347
  br label %pred.sdiv.continue361

pred.sdiv.continue361:                            ; preds = %pred.sdiv.if360, %pred.sdiv.continue359
  %predphi365 = phi i32 [ %482, %pred.sdiv.continue359 ], [ %526, %pred.sdiv.if360 ]
  %527 = trunc i32 %predphi362 to i16
  %528 = trunc i32 %predphi363 to i16
  %529 = trunc i32 %predphi364 to i16
  %530 = trunc i32 %predphi365 to i16
  %531 = getelementptr i16, ptr %invariant.gep147.sink.i, i64 %index
  %532 = getelementptr i16, ptr %invariant.gep147.sink.i, i64 %416
  %533 = getelementptr i16, ptr %invariant.gep147.sink.i, i64 %417
  %534 = getelementptr i16, ptr %invariant.gep147.sink.i, i64 %418
  store i16 %527, ptr %531, align 2, !alias.scope !71, !noalias !73
  store i16 %528, ptr %532, align 2, !alias.scope !71, !noalias !73
  store i16 %529, ptr %533, align 2, !alias.scope !71, !noalias !73
  store i16 %530, ptr %534, align 2, !alias.scope !71, !noalias !73
  %index.next = add nuw i64 %index, 4
  %535 = icmp eq i64 %index.next, %wide.trip.count145.i
  br i1 %535, label %for.cond1.for.end_crit_edge.us.i.split, label %vector.body, !llvm.loop !74

for.body3.us.i:                                   ; preds = %for.cond1.preheader.us.i, %for.inc.us.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.inc.us.i ], [ 0, %for.cond1.preheader.us.i ]
  br i1 %cmp4.not.us.i, label %if.end.us.i, label %if.then.us.i

if.then.us.i:                                     ; preds = %for.body3.us.i
  %add.ptr8.us.i = getelementptr inbounds i16, ptr %add.ptr.us.i, i64 %indvars.iv.i
  %536 = load i16, ptr %add.ptr8.us.i, align 2
  %conv.us.i = zext i16 %536 to i32
  %mul9.us.i = mul nsw i32 %409, %conv.us.i
  br label %if.end.us.i

if.end.us.i:                                      ; preds = %if.then.us.i, %for.body3.us.i
  %tmp.0.us.i = phi i32 [ %mul9.us.i, %if.then.us.i ], [ 0, %for.body3.us.i ]
  %srcCounter.0.us.i = phi i32 [ %409, %if.then.us.i ], [ 0, %for.body3.us.i ]
  %537 = load i16, ptr %gep, align 2
  %conv22.us.i = zext i16 %537 to i32
  %538 = trunc i64 %indvars.iv.i to i32
  %539 = sub i32 %mul107, %538
  %mul23.us.i = mul nsw i32 %539, %conv22.us.i
  %add24.us.i = add nsw i32 %mul23.us.i, %tmp.0.us.i
  %add25.us.i = add nsw i32 %srcCounter.0.us.i, %539
  br i1 %cmp28.not.us.i, label %if.end39.us.i, label %if.then30.us.i

if.then30.us.i:                                   ; preds = %if.end.us.i
  %add.ptr34.us.i = getelementptr inbounds i16, ptr %src.sroa.11.0, i64 %indvars.iv.i
  %540 = load i16, ptr %add.ptr34.us.i, align 2
  %conv35.us.i = zext i16 %540 to i32
  %mul36.us.i = mul nuw nsw i32 %conv35.us.i, %410
  %add37.us.i = add nsw i32 %mul36.us.i, %add24.us.i
  %add38.us.i = add nsw i32 %add25.us.i, %410
  br label %if.end39.us.i

if.end39.us.i:                                    ; preds = %if.then30.us.i, %if.end.us.i
  %tmp.2.us.i = phi i32 [ %add37.us.i, %if.then30.us.i ], [ %add24.us.i, %if.end.us.i ]
  %srcCounter.2.us.i = phi i32 [ %add38.us.i, %if.then30.us.i ], [ %add25.us.i, %if.end.us.i ]
  br i1 %cmp41.not.us.i, label %if.end53.us.i, label %if.then43.us.i

if.then43.us.i:                                   ; preds = %if.end39.us.i
  %541 = load i16, ptr %add.ptr48.us.i, align 2
  %conv49.us.i = zext i16 %541 to i32
  %542 = add i32 %538, 1
  %mul50.us.i = mul nuw nsw i32 %542, %conv49.us.i
  %add51.us.i = add nsw i32 %mul50.us.i, %tmp.2.us.i
  %add52.us.i = add nsw i32 %srcCounter.2.us.i, %542
  br label %if.end53.us.i

if.end53.us.i:                                    ; preds = %if.then43.us.i, %if.end39.us.i
  %tmp.3.us.i = phi i32 [ %add51.us.i, %if.then43.us.i ], [ %tmp.2.us.i, %if.end39.us.i ]
  %srcCounter.3.us.i = phi i32 [ %add52.us.i, %if.then43.us.i ], [ %srcCounter.2.us.i, %if.end39.us.i ]
  %cmp54.us.i = icmp sgt i32 %srcCounter.3.us.i, 0
  br i1 %cmp54.us.i, label %if.then56.us.i, label %if.else.us.i

if.else.us.i:                                     ; preds = %if.end53.us.i
  %cond.us.i = load i32, ptr %cond.in.i, align 4
  br label %for.inc.us.i

if.then56.us.i:                                   ; preds = %if.end53.us.i
  %div.us.i = sdiv i32 %tmp.3.us.i, %srcCounter.3.us.i
  br label %for.inc.us.i

for.inc.us.i:                                     ; preds = %if.then56.us.i, %if.else.us.i
  %div.us.sink.i = phi i32 [ %div.us.i, %if.then56.us.i ], [ %cond.us.i, %if.else.us.i ]
  %conv57.us.i = trunc i32 %div.us.sink.i to i16
  %gep148.i = getelementptr i16, ptr %invariant.gep147.sink.i, i64 %indvars.iv.i
  store i16 %conv57.us.i, ptr %gep148.i, align 2
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count145.i
  br i1 %exitcond.not.i, label %for.cond1.for.end_crit_edge.us.i.split, label %for.body3.us.i, !llvm.loop !75

for.cond1.for.end_crit_edge.us.i.split:           ; preds = %pred.sdiv.continue361, %for.inc.us.i
  %indvars.iv.next141.i = add nsw i64 %indvars.iv140.i, %4
  %exitcond146.not.i = icmp eq i64 %indvars.iv.next136.i, %wide.trip.count145.i
  br i1 %exitcond146.not.i, label %pixMeanInterpolateBlock.exit, label %for.cond1.preheader.us.i

pixMeanInterpolateBlock.exit:                     ; preds = %for.cond1.for.end_crit_edge.us.i.split, %for.cond1.for.end_crit_edge.us.i.split.us.us.split.split, %for.cond1.for.end_crit_edge.us.i.split.us.us.split.split.us.us.split, %for.cond1.for.end_crit_edge.us.i.split.us.us.split.split.us.us.split.us.us, %for.cond1.for.end_crit_edge.us.i.split.us.us.split.us.us.split.split, %for.cond1.for.end_crit_edge.us.i.split.us.us.split.us.us.split.split.us.us, %for.cond1.for.end_crit_edge.us.i.split.us.us.split.us.us.split.us.us.split, %for.cond1.for.end_crit_edge.us.i.split.us.us.split.us.us.split.us.us.split.us.us, %if.end86
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local i32 @ercCollect8PredBlocks(ptr nocapture noundef writeonly %predBlocks, i32 noundef %currRow, i32 noundef %currColumn, ptr nocapture noundef readonly %condition, i32 noundef %maxRow, i32 noundef %maxColumn, i32 noundef %step, i8 noundef zeroext %fNoCornerNeigh) local_unnamed_addr #4 {
entry:
  %tobool.not = icmp eq i8 %fNoCornerNeigh, 0
  %cond = select i1 %tobool.not, i32 4, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %predBlocks, i8 0, i64 32, i1 false)
  %cmp = icmp sgt i32 %currRow, 0
  %sub12 = sub nsw i32 %maxRow, %step
  %cmp13 = icmp sgt i32 %sub12, %currRow
  %cmp34 = icmp sgt i32 %currColumn, 0
  %invariant.gep = getelementptr i8, ptr %condition, i64 -1
  %sub106 = sub nsw i32 %maxColumn, %step
  %cmp107 = icmp sgt i32 %sub106, %currColumn
  %sub = add nsw i32 %currRow, -1
  %mul = mul nsw i32 %sub, %maxColumn
  %add = add nsw i32 %mul, %currColumn
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds i8, ptr %condition, i64 %idxprom
  %arrayidx11 = getelementptr inbounds i8, ptr %predBlocks, i64 16
  %add16 = add nsw i32 %step, %currRow
  %mul17 = mul nsw i32 %add16, %maxColumn
  %add18 = add nsw i32 %mul17, %currColumn
  %idxprom19 = sext i32 %add18 to i64
  %arrayidx20 = getelementptr inbounds i8, ptr %condition, i64 %idxprom19
  %arrayidx31 = getelementptr inbounds i8, ptr %predBlocks, i64 24
  %mul37 = mul nsw i32 %maxColumn, %currRow
  %add38 = add nsw i32 %mul37, %currColumn
  %0 = sext i32 %add38 to i64
  %gep = getelementptr i8, ptr %invariant.gep, i64 %0
  %arrayidx52 = getelementptr inbounds i8, ptr %predBlocks, i64 20
  %gep300 = getelementptr i8, ptr %invariant.gep, i64 %idxprom
  %arrayidx77 = getelementptr inbounds i8, ptr %predBlocks, i64 4
  %gep302 = getelementptr i8, ptr %invariant.gep, i64 %idxprom19
  %arrayidx101 = getelementptr inbounds i8, ptr %predBlocks, i64 8
  %add112 = add nsw i32 %add38, %step
  %idxprom113 = sext i32 %add112 to i64
  %arrayidx114 = getelementptr inbounds i8, ptr %condition, i64 %idxprom113
  %arrayidx125 = getelementptr inbounds i8, ptr %predBlocks, i64 28
  %add136 = add nsw i32 %add, %step
  %idxprom137 = sext i32 %add136 to i64
  %arrayidx138 = getelementptr inbounds i8, ptr %condition, i64 %idxprom137
  %add159 = add i32 %step, %currColumn
  %add160 = add i32 %add159, %mul17
  %idxprom161 = sext i32 %add160 to i64
  %arrayidx162 = getelementptr inbounds i8, ptr %condition, i64 %idxprom161
  %arrayidx174 = getelementptr inbounds i8, ptr %predBlocks, i64 12
  br i1 %cmp, label %land.lhs.true.peel, label %if.end.peel

land.lhs.true.peel:                               ; preds = %entry
  %1 = load i8, ptr %arrayidx, align 1
  %cmp3.not.peel = icmp slt i8 %1, 3
  br i1 %cmp3.not.peel, label %if.end.peel, label %if.then.peel

if.then.peel:                                     ; preds = %land.lhs.true.peel
  %conv2.peel = zext nneg i8 %1 to i32
  store i32 %conv2.peel, ptr %arrayidx11, align 4
  br label %if.end.peel

if.end.peel:                                      ; preds = %if.then.peel, %land.lhs.true.peel, %entry
  %srcCounter.0.peel = phi i32 [ 1, %if.then.peel ], [ 0, %land.lhs.true.peel ], [ 0, %entry ]
  br i1 %cmp13, label %land.lhs.true15.peel, label %if.end33.peel

land.lhs.true15.peel:                             ; preds = %if.end.peel
  %2 = load i8, ptr %arrayidx20, align 1
  %cmp22.not.peel = icmp slt i8 %2, 3
  br i1 %cmp22.not.peel, label %if.end33.peel, label %if.then24.peel

if.then24.peel:                                   ; preds = %land.lhs.true15.peel
  %conv21.peel = zext nneg i8 %2 to i32
  store i32 %conv21.peel, ptr %arrayidx31, align 4
  %inc32.peel = add nuw nsw i32 %srcCounter.0.peel, 1
  br label %if.end33.peel

if.end33.peel:                                    ; preds = %if.then24.peel, %land.lhs.true15.peel, %if.end.peel
  %srcCounter.1.peel = phi i32 [ %inc32.peel, %if.then24.peel ], [ %srcCounter.0.peel, %land.lhs.true15.peel ], [ %srcCounter.0.peel, %if.end.peel ]
  br i1 %cmp34, label %if.then36.peel, label %if.end105.peel

if.then36.peel:                                   ; preds = %if.end33.peel
  %3 = load i8, ptr %gep, align 1
  %cmp43.not.peel = icmp slt i8 %3, 3
  br i1 %cmp43.not.peel, label %if.end54.peel, label %if.then45.peel

if.then45.peel:                                   ; preds = %if.then36.peel
  %conv42.peel = zext nneg i8 %3 to i32
  store i32 %conv42.peel, ptr %arrayidx52, align 4
  %inc53.peel = add nuw nsw i32 %srcCounter.1.peel, 1
  br label %if.end54.peel

if.end54.peel:                                    ; preds = %if.then45.peel, %if.then36.peel
  %srcCounter.2.peel = phi i32 [ %inc53.peel, %if.then45.peel ], [ %srcCounter.1.peel, %if.then36.peel ]
  br i1 %tobool.not, label %if.then56.peel, label %if.end105.peel

if.then56.peel:                                   ; preds = %if.end54.peel
  br i1 %cmp, label %land.lhs.true59.peel, label %if.end79.peel

land.lhs.true59.peel:                             ; preds = %if.then56.peel
  %4 = load i8, ptr %gep300, align 1
  %cmp67.not.peel = icmp slt i8 %4, 3
  br i1 %cmp67.not.peel, label %if.end79.peel, label %if.then69.peel

if.then69.peel:                                   ; preds = %land.lhs.true59.peel
  %conv66.peel = zext nneg i8 %4 to i32
  store i32 %conv66.peel, ptr %arrayidx77, align 4
  %inc78.peel = add nuw nsw i32 %srcCounter.2.peel, 1
  br label %if.end79.peel

if.end79.peel:                                    ; preds = %if.then69.peel, %land.lhs.true59.peel, %if.then56.peel
  %srcCounter.3.peel = phi i32 [ %inc78.peel, %if.then69.peel ], [ %srcCounter.2.peel, %land.lhs.true59.peel ], [ %srcCounter.2.peel, %if.then56.peel ]
  br i1 %cmp13, label %land.lhs.true83.peel, label %if.end105.peel

land.lhs.true83.peel:                             ; preds = %if.end79.peel
  %5 = load i8, ptr %gep302, align 1
  %cmp91.not.peel = icmp slt i8 %5, 3
  br i1 %cmp91.not.peel, label %if.end105.peel, label %if.then93.peel

if.then93.peel:                                   ; preds = %land.lhs.true83.peel
  %conv90.peel = zext nneg i8 %5 to i32
  store i32 %conv90.peel, ptr %arrayidx101, align 4
  %inc102.peel = add nuw nsw i32 %srcCounter.3.peel, 1
  br label %if.end105.peel

if.end105.peel:                                   ; preds = %if.then93.peel, %land.lhs.true83.peel, %if.end79.peel, %if.end54.peel, %if.end33.peel
  %srcCounter.4.peel = phi i32 [ %srcCounter.2.peel, %if.end54.peel ], [ %inc102.peel, %if.then93.peel ], [ %srcCounter.3.peel, %land.lhs.true83.peel ], [ %srcCounter.3.peel, %if.end79.peel ], [ %srcCounter.1.peel, %if.end33.peel ]
  br i1 %cmp107, label %if.then109.peel, label %if.end178.peel

if.then109.peel:                                  ; preds = %if.end105.peel
  %6 = load i8, ptr %arrayidx114, align 1
  %cmp116.not.peel = icmp slt i8 %6, 3
  br i1 %cmp116.not.peel, label %if.end127.peel, label %if.then118.peel

if.then118.peel:                                  ; preds = %if.then109.peel
  %conv115.peel = zext nneg i8 %6 to i32
  store i32 %conv115.peel, ptr %arrayidx125, align 4
  %inc126.peel = add nuw nsw i32 %srcCounter.4.peel, 1
  br label %if.end127.peel

if.end127.peel:                                   ; preds = %if.then118.peel, %if.then109.peel
  %srcCounter.5.peel = phi i32 [ %inc126.peel, %if.then118.peel ], [ %srcCounter.4.peel, %if.then109.peel ]
  br i1 %tobool.not, label %if.then129.peel, label %if.end178.peel

if.then129.peel:                                  ; preds = %if.end127.peel
  br i1 %cmp, label %land.lhs.true132.peel, label %if.end152.peel

land.lhs.true132.peel:                            ; preds = %if.then129.peel
  %7 = load i8, ptr %arrayidx138, align 1
  %cmp140.not.peel = icmp slt i8 %7, 3
  br i1 %cmp140.not.peel, label %if.end152.peel, label %if.then142.peel

if.then142.peel:                                  ; preds = %land.lhs.true132.peel
  %conv139.peel = zext nneg i8 %7 to i32
  store i32 %conv139.peel, ptr %predBlocks, align 4
  %inc151.peel = add nuw nsw i32 %srcCounter.5.peel, 1
  br label %if.end152.peel

if.end152.peel:                                   ; preds = %if.then142.peel, %land.lhs.true132.peel, %if.then129.peel
  %srcCounter.6.peel = phi i32 [ %inc151.peel, %if.then142.peel ], [ %srcCounter.5.peel, %land.lhs.true132.peel ], [ %srcCounter.5.peel, %if.then129.peel ]
  br i1 %cmp13, label %land.lhs.true156.peel, label %if.end178.peel

land.lhs.true156.peel:                            ; preds = %if.end152.peel
  %8 = load i8, ptr %arrayidx162, align 1
  %cmp164.not.peel = icmp slt i8 %8, 3
  br i1 %cmp164.not.peel, label %if.end178.peel, label %if.then166.peel

if.then166.peel:                                  ; preds = %land.lhs.true156.peel
  %conv163.peel = zext nneg i8 %8 to i32
  store i32 %conv163.peel, ptr %arrayidx174, align 4
  %inc175.peel = add nuw nsw i32 %srcCounter.6.peel, 1
  br label %if.end178.peel

if.end178.peel:                                   ; preds = %if.then166.peel, %land.lhs.true156.peel, %if.end152.peel, %if.end127.peel, %if.end105.peel
  %srcCounter.7.peel = phi i32 [ %srcCounter.5.peel, %if.end127.peel ], [ %inc175.peel, %if.then166.peel ], [ %srcCounter.6.peel, %land.lhs.true156.peel ], [ %srcCounter.6.peel, %if.end152.peel ], [ %srcCounter.4.peel, %if.end105.peel ]
  %cmp183.peel = icmp ult i32 %srcCounter.7.peel, %cond
  br i1 %cmp183.peel, label %do.body, label %do.end

do.body:                                          ; preds = %if.end178.peel
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.body
  %9 = load i8, ptr %arrayidx, align 1
  %cmp3.not = icmp slt i8 %9, 2
  br i1 %cmp3.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %conv2 = zext nneg i8 %9 to i32
  store i32 %conv2, ptr %arrayidx11, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %do.body
  %srcCounter.0 = phi i32 [ 1, %if.then ], [ 0, %land.lhs.true ], [ 0, %do.body ]
  br i1 %cmp13, label %land.lhs.true15, label %if.end33

land.lhs.true15:                                  ; preds = %if.end
  %10 = load i8, ptr %arrayidx20, align 1
  %cmp22.not = icmp slt i8 %10, 2
  br i1 %cmp22.not, label %if.end33, label %if.then24

if.then24:                                        ; preds = %land.lhs.true15
  %conv21 = zext nneg i8 %10 to i32
  store i32 %conv21, ptr %arrayidx31, align 4
  %inc32 = add nuw nsw i32 %srcCounter.0, 1
  br label %if.end33

if.end33:                                         ; preds = %if.then24, %land.lhs.true15, %if.end
  %srcCounter.1 = phi i32 [ %inc32, %if.then24 ], [ %srcCounter.0, %land.lhs.true15 ], [ %srcCounter.0, %if.end ]
  br i1 %cmp34, label %if.then36, label %if.end105

if.then36:                                        ; preds = %if.end33
  %11 = load i8, ptr %gep, align 1
  %cmp43.not = icmp slt i8 %11, 2
  br i1 %cmp43.not, label %if.end54, label %if.then45

if.then45:                                        ; preds = %if.then36
  %conv42 = zext nneg i8 %11 to i32
  store i32 %conv42, ptr %arrayidx52, align 4
  %inc53 = add nuw nsw i32 %srcCounter.1, 1
  br label %if.end54

if.end54:                                         ; preds = %if.then45, %if.then36
  %srcCounter.2 = phi i32 [ %inc53, %if.then45 ], [ %srcCounter.1, %if.then36 ]
  br i1 %tobool.not, label %if.then56, label %if.end105

if.then56:                                        ; preds = %if.end54
  br i1 %cmp, label %land.lhs.true59, label %if.end79

land.lhs.true59:                                  ; preds = %if.then56
  %12 = load i8, ptr %gep300, align 1
  %cmp67.not = icmp slt i8 %12, 2
  br i1 %cmp67.not, label %if.end79, label %if.then69

if.then69:                                        ; preds = %land.lhs.true59
  %conv66 = zext nneg i8 %12 to i32
  store i32 %conv66, ptr %arrayidx77, align 4
  %inc78 = add nuw nsw i32 %srcCounter.2, 1
  br label %if.end79

if.end79:                                         ; preds = %if.then69, %land.lhs.true59, %if.then56
  %srcCounter.3 = phi i32 [ %inc78, %if.then69 ], [ %srcCounter.2, %land.lhs.true59 ], [ %srcCounter.2, %if.then56 ]
  br i1 %cmp13, label %land.lhs.true83, label %if.end105

land.lhs.true83:                                  ; preds = %if.end79
  %13 = load i8, ptr %gep302, align 1
  %cmp91.not = icmp slt i8 %13, 2
  br i1 %cmp91.not, label %if.end105, label %if.then93

if.then93:                                        ; preds = %land.lhs.true83
  %conv90 = zext nneg i8 %13 to i32
  store i32 %conv90, ptr %arrayidx101, align 4
  %inc102 = add nuw nsw i32 %srcCounter.3, 1
  br label %if.end105

if.end105:                                        ; preds = %if.end54, %if.then93, %land.lhs.true83, %if.end79, %if.end33
  %srcCounter.4 = phi i32 [ %srcCounter.2, %if.end54 ], [ %inc102, %if.then93 ], [ %srcCounter.3, %land.lhs.true83 ], [ %srcCounter.3, %if.end79 ], [ %srcCounter.1, %if.end33 ]
  br i1 %cmp107, label %if.then109, label %do.end

if.then109:                                       ; preds = %if.end105
  %14 = load i8, ptr %arrayidx114, align 1
  %cmp116.not = icmp slt i8 %14, 2
  br i1 %cmp116.not, label %if.end127, label %if.then118

if.then118:                                       ; preds = %if.then109
  %conv115 = zext nneg i8 %14 to i32
  store i32 %conv115, ptr %arrayidx125, align 4
  %inc126 = add nuw nsw i32 %srcCounter.4, 1
  br label %if.end127

if.end127:                                        ; preds = %if.then118, %if.then109
  %srcCounter.5 = phi i32 [ %inc126, %if.then118 ], [ %srcCounter.4, %if.then109 ]
  br i1 %tobool.not, label %if.then129, label %do.end

if.then129:                                       ; preds = %if.end127
  br i1 %cmp, label %land.lhs.true132, label %if.end152

land.lhs.true132:                                 ; preds = %if.then129
  %15 = load i8, ptr %arrayidx138, align 1
  %cmp140.not = icmp slt i8 %15, 2
  br i1 %cmp140.not, label %if.end152, label %if.then142

if.then142:                                       ; preds = %land.lhs.true132
  %conv139 = zext nneg i8 %15 to i32
  store i32 %conv139, ptr %predBlocks, align 4
  %inc151 = add nuw nsw i32 %srcCounter.5, 1
  br label %if.end152

if.end152:                                        ; preds = %if.then142, %land.lhs.true132, %if.then129
  %srcCounter.6 = phi i32 [ %inc151, %if.then142 ], [ %srcCounter.5, %land.lhs.true132 ], [ %srcCounter.5, %if.then129 ]
  br i1 %cmp13, label %land.lhs.true156, label %do.end

land.lhs.true156:                                 ; preds = %if.end152
  %16 = load i8, ptr %arrayidx162, align 1
  %cmp164.not = icmp slt i8 %16, 2
  br i1 %cmp164.not, label %do.end, label %if.then166

if.then166:                                       ; preds = %land.lhs.true156
  %conv163 = zext nneg i8 %16 to i32
  store i32 %conv163, ptr %arrayidx174, align 4
  %inc175 = add nuw nsw i32 %srcCounter.6, 1
  br label %do.end

do.end:                                           ; preds = %if.end127, %if.then166, %land.lhs.true156, %if.end152, %if.end105, %if.end178.peel
  %srcCounter.7.lcssa = phi i32 [ %srcCounter.7.peel, %if.end178.peel ], [ %srcCounter.5, %if.end127 ], [ %inc175, %if.then166 ], [ %srcCounter.6, %land.lhs.true156 ], [ %srcCounter.6, %if.end152 ], [ %srcCounter.4, %if.end105 ]
  ret i32 %srcCounter.7.lcssa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i32 0, 3) i32 @ercCollectColumnBlocks(ptr nocapture noundef writeonly %predBlocks, i32 noundef %currRow, i32 noundef %currColumn, ptr nocapture noundef readonly %condition, i32 noundef %maxRow, i32 noundef %maxColumn, i32 noundef %step) local_unnamed_addr #4 {
entry:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %predBlocks, i8 0, i64 32, i1 false)
  %sub = add nsw i32 %currRow, -1
  %mul = mul nsw i32 %sub, %maxColumn
  %add = add nsw i32 %mul, %currColumn
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds i8, ptr %condition, i64 %idxprom
  %0 = load i8, ptr %arrayidx, align 1
  %cmp = icmp sgt i8 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %arrayidx2 = getelementptr inbounds i8, ptr %predBlocks, i64 16
  store i32 1, ptr %arrayidx2, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %srcCounter.0 = phi i32 [ 1, %if.then ], [ 0, %entry ]
  %add3 = add nsw i32 %step, %currRow
  %mul4 = mul nsw i32 %add3, %maxColumn
  %add5 = add nsw i32 %mul4, %currColumn
  %idxprom6 = sext i32 %add5 to i64
  %arrayidx7 = getelementptr inbounds i8, ptr %condition, i64 %idxprom6
  %1 = load i8, ptr %arrayidx7, align 1
  %cmp9 = icmp sgt i8 %1, 1
  br i1 %cmp9, label %if.then11, label %if.end14

if.then11:                                        ; preds = %if.end
  %arrayidx12 = getelementptr inbounds i8, ptr %predBlocks, i64 24
  store i32 1, ptr %arrayidx12, align 4
  %inc13 = add nuw nsw i32 %srcCounter.0, 1
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.end
  %srcCounter.1 = phi i32 [ %inc13, %if.then11 ], [ %srcCounter.0, %if.end ]
  ret i32 %srcCounter.1
}

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!5 = !{!6}
!6 = distinct !{!6, !7}
!7 = distinct !{!7, !"LVerDomain"}
!8 = !{!9}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.isvectorized", i32 1}
!12 = !{!"llvm.loop.unroll.runtime.disable"}
!13 = distinct !{!13, !11}
!14 = !{!15}
!15 = distinct !{!15, !16}
!16 = distinct !{!16, !"LVerDomain"}
!17 = !{!18}
!18 = distinct !{!18, !16}
!19 = distinct !{!19, !11, !12}
!20 = distinct !{!20, !11, !12}
!21 = distinct !{!21, !11}
!22 = distinct !{!22, !11}
!23 = distinct !{!23, !11, !12}
!24 = distinct !{!24, !11}
!25 = !{!26}
!26 = distinct !{!26, !27}
!27 = distinct !{!27, !"LVerDomain"}
!28 = !{!29}
!29 = distinct !{!29, !27}
!30 = distinct !{!30, !11, !12}
!31 = distinct !{!31, !11, !12}
!32 = distinct !{!32, !11}
!33 = distinct !{!33, !11}
!34 = !{!35}
!35 = distinct !{!35, !36}
!36 = distinct !{!36, !"LVerDomain"}
!37 = !{!38}
!38 = distinct !{!38, !36}
!39 = !{!40}
!40 = distinct !{!40, !36}
!41 = !{!42}
!42 = distinct !{!42, !36}
!43 = !{!35, !38, !40}
!44 = distinct !{!44, !11, !12}
!45 = distinct !{!45, !11}
!46 = !{!47}
!47 = distinct !{!47, !48}
!48 = distinct !{!48, !"LVerDomain"}
!49 = !{!50}
!50 = distinct !{!50, !48}
!51 = !{!52}
!52 = distinct !{!52, !48}
!53 = !{!54}
!54 = distinct !{!54, !48}
!55 = !{!56}
!56 = distinct !{!56, !48}
!57 = !{!47, !50, !52, !54}
!58 = distinct !{!58, !11, !12}
!59 = distinct !{!59, !11}
!60 = !{!61}
!61 = distinct !{!61, !62}
!62 = distinct !{!62, !"LVerDomain"}
!63 = !{!64}
!64 = distinct !{!64, !62}
!65 = !{!66}
!66 = distinct !{!66, !62}
!67 = !{!68}
!68 = distinct !{!68, !62}
!69 = !{!70}
!70 = distinct !{!70, !62}
!71 = !{!72}
!72 = distinct !{!72, !62}
!73 = !{!64, !61, !66, !68, !70}
!74 = distinct !{!74, !11, !12}
!75 = distinct !{!75, !11}
