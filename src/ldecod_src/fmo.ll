; ModuleID = 'ldecod_src/fmo.c'
source_filename = "ldecod_src/fmo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [68 x i8] c"wrong pps->pic_size_in_map_units_minus1 for used SPS and FMO type 6\00", align 1
@.str.1 = private unnamed_addr constant [67 x i8] c"cannot allocated %d bytes for p_Vid->MapUnitToSliceGroupMap, exit\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"Illegal slice_group_map_type %d , exit \0A\00", align 1
@.str.3 = private unnamed_addr constant [61 x i8] c"cannot allocate %d bytes for p_Vid->MbToSliceGroupMap, exit\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @fmo_init(ptr nocapture noundef %p_Vid, ptr nocapture noundef readonly %pSlice) local_unnamed_addr #0 {
entry:
  %active_pps = getelementptr inbounds i8, ptr %p_Vid, i64 8
  %0 = load ptr, ptr %active_pps, align 8
  %active_sps.i = getelementptr inbounds i8, ptr %p_Vid, i64 16
  %1 = load ptr, ptr %active_sps.i, align 8
  %pic_height_in_map_units_minus1.i = getelementptr inbounds i8, ptr %1, i64 3132
  %2 = load i32, ptr %pic_height_in_map_units_minus1.i, align 4
  %add.i = add i32 %2, 1
  %pic_width_in_mbs_minus1.i = getelementptr inbounds i8, ptr %1, i64 3128
  %3 = load i32, ptr %pic_width_in_mbs_minus1.i, align 4
  %add1.i = add i32 %3, 1
  %mul.i = mul i32 %add1.i, %add.i
  %slice_group_map_type.i = getelementptr inbounds i8, ptr %0, i64 2048
  %4 = load i32, ptr %slice_group_map_type.i, align 8
  %cmp.i = icmp eq i32 %4, 6
  br i1 %cmp.i, label %if.then.i, label %if.end5.i

if.then.i:                                        ; preds = %entry
  %pic_size_in_map_units_minus1.i = getelementptr inbounds i8, ptr %0, i64 2156
  %5 = load i32, ptr %pic_size_in_map_units_minus1.i, align 4
  %add2.i = add i32 %5, 1
  %cmp3.not.i = icmp eq i32 %add2.i, %mul.i
  br i1 %cmp3.not.i, label %if.end5.i, label %if.then4.i

if.then4.i:                                       ; preds = %if.then.i
  tail call void @error(ptr noundef nonnull @.str, i32 noundef 500) #12
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then4.i, %if.then.i, %entry
  %MapUnitToSliceGroupMap.i = getelementptr inbounds i8, ptr %p_Vid, i64 856712
  %6 = load ptr, ptr %MapUnitToSliceGroupMap.i, align 8
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %if.end8.i, label %if.then6.i

if.then6.i:                                       ; preds = %if.end5.i
  tail call void @free(ptr noundef nonnull %6) #12
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then6.i, %if.end5.i
  %conv.i = zext i32 %mul.i to i64
  %mul9.i = shl nuw nsw i64 %conv.i, 2
  %call.i = tail call noalias ptr @malloc(i64 noundef %mul9.i) #13
  store ptr %call.i, ptr %MapUnitToSliceGroupMap.i, align 8
  %cmp11.i = icmp eq ptr %call.i, null
  br i1 %cmp11.i, label %if.then13.i, label %if.end20.i

if.then13.i:                                      ; preds = %if.end8.i
  %pic_size_in_map_units_minus114.i = getelementptr inbounds i8, ptr %0, i64 2156
  %7 = load i32, ptr %pic_size_in_map_units_minus114.i, align 4
  %add15.i = shl i32 %7, 2
  %mul17.i = add i32 %add15.i, 4
  %call19.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %mul17.i)
  tail call void @exit(i32 noundef -1) #14
  unreachable

if.end20.i:                                       ; preds = %if.end8.i
  %num_slice_groups_minus1.i = getelementptr inbounds i8, ptr %0, i64 2044
  %8 = load i32, ptr %num_slice_groups_minus1.i, align 4
  %cmp21.i = icmp eq i32 %8, 0
  br i1 %cmp21.i, label %if.then23.i, label %if.end28.i

if.then23.i:                                      ; preds = %if.end20.i
  %sext.i = shl i64 %conv.i, 34
  %conv.i.i = ashr exact i64 %sext.i, 32
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %call.i, i8 0, i64 %conv.i.i, i1 false)
  br label %FmoGenerateMapUnitToSliceGroupMap.exit

if.end28.i:                                       ; preds = %if.end20.i
  %9 = load i32, ptr %slice_group_map_type.i, align 8
  switch i32 %9, label %sw.default.i [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb30.i
    i32 2, label %sw.bb31.i
    i32 3, label %sw.bb32.i
    i32 4, label %sw.bb33.i
    i32 5, label %sw.bb34.i
    i32 6, label %sw.bb35.i
  ]

sw.bb.i:                                          ; preds = %if.end28.i
  %10 = load ptr, ptr %active_pps, align 8
  %num_slice_groups_minus1.i.i = getelementptr inbounds i8, ptr %10, i64 2044
  %run_length_minus1.i.i = getelementptr inbounds i8, ptr %10, i64 2052
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.cond.i.i, %sw.bb.i
  %i.0.i.i = phi i32 [ 0, %sw.bb.i ], [ %add17.i.i, %do.cond.i.i ]
  %cmp136.i.i = icmp ult i32 %i.0.i.i, %mul.i
  br i1 %cmp136.i.i, label %for.cond2.preheader.i.i, label %FmoGenerateMapUnitToSliceGroupMap.exit

for.cond2.preheader.i.i:                          ; preds = %do.body.i.i, %for.inc11.i.i
  %i.138.i.i = phi i32 [ %add17.i.i, %for.inc11.i.i ], [ %i.0.i.i, %do.body.i.i ]
  %iGroup.037.i.i = phi i32 [ %inc13.i.i, %for.inc11.i.i ], [ 0, %do.body.i.i ]
  %idxprom.i.i = zext i32 %iGroup.037.i.i to i64
  %arrayidx.i.i = getelementptr inbounds [8 x i32], ptr %run_length_minus1.i.i, i64 0, i64 %idxprom.i.i
  %11 = load i32, ptr %arrayidx.i.i, align 4
  %12 = zext i32 %i.138.i.i to i64
  %13 = tail call i32 @llvm.usub.sat.i32(i32 %mul.i, i32 %i.138.i.i)
  %wide.trip.count.i.i = zext i32 %13 to i64
  %exitcond.not.i159.not.i = icmp ugt i32 %mul.i, %i.138.i.i
  br i1 %exitcond.not.i159.not.i, label %for.body7.i.i, label %for.inc11.i.i

for.body7.i.i:                                    ; preds = %for.cond2.preheader.i.i, %for.body7.i.i
  %indvars.iv.i160.i = phi i64 [ %indvars.iv.next.i.i, %for.body7.i.i ], [ 0, %for.cond2.preheader.i.i ]
  %14 = load ptr, ptr %MapUnitToSliceGroupMap.i, align 8
  %15 = getelementptr inbounds i32, ptr %14, i64 %indvars.iv.i160.i
  %arrayidx10.i.i = getelementptr inbounds i32, ptr %15, i64 %12
  store i32 %iGroup.037.i.i, ptr %arrayidx10.i.i, align 4
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i160.i, 1
  %16 = load i32, ptr %arrayidx.i.i, align 4
  %17 = zext i32 %16 to i64
  %cmp3.not.not.i.i = icmp uge i64 %indvars.iv.i160.i, %17
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  %or.cond.i = select i1 %cmp3.not.not.i.i, i1 true, i1 %exitcond.not.i.i
  br i1 %or.cond.i, label %for.inc11.i.i, label %for.body7.i.i

for.inc11.i.i:                                    ; preds = %for.body7.i.i, %for.cond2.preheader.i.i
  %.lcssa.i.i = phi i32 [ %11, %for.cond2.preheader.i.i ], [ %16, %for.body7.i.i ]
  %inc13.i.i = add i32 %iGroup.037.i.i, 1
  %add16.i.i = add i32 %i.138.i.i, 1
  %add17.i.i = add i32 %add16.i.i, %.lcssa.i.i
  %18 = load i32, ptr %num_slice_groups_minus1.i.i, align 4
  %cmp.i.i = icmp ule i32 %inc13.i.i, %18
  %cmp1.i.i = icmp ult i32 %add17.i.i, %mul.i
  %19 = select i1 %cmp.i.i, i1 %cmp1.i.i, i1 false
  br i1 %19, label %for.cond2.preheader.i.i, label %do.cond.i.i

do.cond.i.i:                                      ; preds = %for.inc11.i.i
  br i1 %cmp1.i.i, label %do.body.i.i, label %FmoGenerateMapUnitToSliceGroupMap.exit

sw.bb30.i:                                        ; preds = %if.end28.i
  %cmp16.not.i.i = icmp eq i32 %mul.i, 0
  br i1 %cmp16.not.i.i, label %FmoGenerateMapUnitToSliceGroupMap.exit, label %for.body.lr.ph.i.i

for.body.lr.ph.i.i:                               ; preds = %sw.bb30.i
  %20 = load ptr, ptr %active_pps, align 8
  %PicWidthInMbs.i.i = getelementptr inbounds i8, ptr %p_Vid, i64 848996
  %num_slice_groups_minus1.i72.i = getelementptr inbounds i8, ptr %20, i64 2044
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i, %for.body.lr.ph.i.i
  %indvars.iv.i75.i = phi i64 [ 0, %for.body.lr.ph.i.i ], [ %indvars.iv.next.i77.i, %for.body.i.i ]
  %21 = load i32, ptr %PicWidthInMbs.i.i, align 4
  %22 = trunc nuw i64 %indvars.iv.i75.i to i32
  %rem.i.i = urem i32 %22, %21
  %div.i.i = udiv i32 %22, %21
  %23 = load i32, ptr %num_slice_groups_minus1.i72.i, align 4
  %add.i.i = add i32 %23, 1
  %mul.i.i = mul i32 %add.i.i, %div.i.i
  %div215.i.i = lshr i32 %mul.i.i, 1
  %add3.i.i = add i32 %div215.i.i, %rem.i.i
  %rem6.i.i = urem i32 %add3.i.i, %add.i.i
  %24 = load ptr, ptr %MapUnitToSliceGroupMap.i, align 8
  %arrayidx.i76.i = getelementptr inbounds i32, ptr %24, i64 %indvars.iv.i75.i
  store i32 %rem6.i.i, ptr %arrayidx.i76.i, align 4
  %indvars.iv.next.i77.i = add nuw nsw i64 %indvars.iv.i75.i, 1
  %exitcond.not.i78.i = icmp eq i64 %indvars.iv.next.i77.i, %conv.i
  br i1 %exitcond.not.i78.i, label %FmoGenerateMapUnitToSliceGroupMap.exit, label %for.body.i.i

sw.bb31.i:                                        ; preds = %if.end28.i
  %25 = load ptr, ptr %active_pps, align 8
  %cmp62.not.i.i = icmp eq i32 %mul.i, 0
  br i1 %cmp62.not.i.i, label %for.end.i.i, label %for.body.lr.ph.i80.i

for.body.lr.ph.i80.i:                             ; preds = %sw.bb31.i
  %num_slice_groups_minus1.i81.i = getelementptr inbounds i8, ptr %25, i64 2044
  %.pre.i.i = load i32, ptr %num_slice_groups_minus1.i81.i, align 4
  %xtraiter107 = and i64 %conv.i, 3
  %26 = icmp ult i32 %mul.i, 4
  br i1 %26, label %for.end.i.i.loopexit.unr-lcssa, label %for.body.lr.ph.i80.i.new

for.body.lr.ph.i80.i.new:                         ; preds = %for.body.lr.ph.i80.i
  %unroll_iter110 = and i64 %conv.i, 4294967292
  br label %for.body.i84.i

for.body.i84.i:                                   ; preds = %for.body.i84.i, %for.body.lr.ph.i80.i.new
  %indvars.iv.i85.i = phi i64 [ 0, %for.body.lr.ph.i80.i.new ], [ %indvars.iv.next.i87.i.3, %for.body.i84.i ]
  %niter111 = phi i64 [ 0, %for.body.lr.ph.i80.i.new ], [ %niter111.next.3, %for.body.i84.i ]
  %27 = load ptr, ptr %MapUnitToSliceGroupMap.i, align 8
  %arrayidx.i86.i = getelementptr inbounds i32, ptr %27, i64 %indvars.iv.i85.i
  store i32 %.pre.i.i, ptr %arrayidx.i86.i, align 4
  %indvars.iv.next.i87.i = or disjoint i64 %indvars.iv.i85.i, 1
  %28 = load ptr, ptr %MapUnitToSliceGroupMap.i, align 8
  %arrayidx.i86.i.1 = getelementptr inbounds i32, ptr %28, i64 %indvars.iv.next.i87.i
  store i32 %.pre.i.i, ptr %arrayidx.i86.i.1, align 4
  %indvars.iv.next.i87.i.1 = or disjoint i64 %indvars.iv.i85.i, 2
  %29 = load ptr, ptr %MapUnitToSliceGroupMap.i, align 8
  %arrayidx.i86.i.2 = getelementptr inbounds i32, ptr %29, i64 %indvars.iv.next.i87.i.1
  store i32 %.pre.i.i, ptr %arrayidx.i86.i.2, align 4
  %indvars.iv.next.i87.i.2 = or disjoint i64 %indvars.iv.i85.i, 3
  %30 = load ptr, ptr %MapUnitToSliceGroupMap.i, align 8
  %arrayidx.i86.i.3 = getelementptr inbounds i32, ptr %30, i64 %indvars.iv.next.i87.i.2
  store i32 %.pre.i.i, ptr %arrayidx.i86.i.3, align 4
  %indvars.iv.next.i87.i.3 = add nuw nsw i64 %indvars.iv.i85.i, 4
  %niter111.next.3 = add i64 %niter111, 4
  %niter111.ncmp.3 = icmp eq i64 %niter111.next.3, %unroll_iter110
  br i1 %niter111.ncmp.3, label %for.end.i.i.loopexit.unr-lcssa, label %for.body.i84.i

for.end.i.i.loopexit.unr-lcssa:                   ; preds = %for.body.i84.i, %for.body.lr.ph.i80.i
  %indvars.iv.i85.i.unr = phi i64 [ 0, %for.body.lr.ph.i80.i ], [ %indvars.iv.next.i87.i.3, %for.body.i84.i ]
  %lcmp.mod109.not = icmp eq i64 %xtraiter107, 0
  br i1 %lcmp.mod109.not, label %for.end.i.i, label %for.body.i84.i.epil

for.body.i84.i.epil:                              ; preds = %for.end.i.i.loopexit.unr-lcssa, %for.body.i84.i.epil
  %indvars.iv.i85.i.epil = phi i64 [ %indvars.iv.next.i87.i.epil, %for.body.i84.i.epil ], [ %indvars.iv.i85.i.unr, %for.end.i.i.loopexit.unr-lcssa ]
  %epil.iter108 = phi i64 [ %epil.iter108.next, %for.body.i84.i.epil ], [ 0, %for.end.i.i.loopexit.unr-lcssa ]
  %31 = load ptr, ptr %MapUnitToSliceGroupMap.i, align 8
  %arrayidx.i86.i.epil = getelementptr inbounds i32, ptr %31, i64 %indvars.iv.i85.i.epil
  store i32 %.pre.i.i, ptr %arrayidx.i86.i.epil, align 4
  %indvars.iv.next.i87.i.epil = add nuw nsw i64 %indvars.iv.i85.i.epil, 1
  %epil.iter108.next = add i64 %epil.iter108, 1
  %epil.iter108.cmp.not = icmp eq i64 %epil.iter108.next, %xtraiter107
  br i1 %epil.iter108.cmp.not, label %for.end.i.i, label %for.body.i84.i.epil, !llvm.loop !5

for.end.i.i:                                      ; preds = %for.end.i.i.loopexit.unr-lcssa, %for.body.i84.i.epil, %sw.bb31.i
  %num_slice_groups_minus11.i.i = getelementptr inbounds i8, ptr %25, i64 2044
  %32 = load i32, ptr %num_slice_groups_minus11.i.i, align 4
  %iGroup.068.i.i = add i32 %32, -1
  %cmp369.i.i = icmp sgt i32 %iGroup.068.i.i, -1
  br i1 %cmp369.i.i, label %for.body4.lr.ph.i.i, label %FmoGenerateMapUnitToSliceGroupMap.exit

for.body4.lr.ph.i.i:                              ; preds = %for.end.i.i
  %top_left.i.i = getelementptr inbounds i8, ptr %25, i64 2084
  %PicWidthInMbs.i89.i = getelementptr inbounds i8, ptr %p_Vid, i64 848996
  %bottom_right.i.i = getelementptr inbounds i8, ptr %25, i64 2116
  %33 = zext nneg i32 %iGroup.068.i.i to i64
  br label %for.body4.i.i

for.cond2.loopexit.i.i:                           ; preds = %for.cond23.for.inc33_crit_edge.i.i, %for.cond23.preheader.us.i.i, %middle.block, %for.body4.i.i
  %indvars.iv.next74.i.i = add nsw i64 %indvars.iv73.i.i, -1
  %cmp3.i.i = icmp sgt i64 %indvars.iv73.i.i, 0
  br i1 %cmp3.i.i, label %for.body4.i.i, label %FmoGenerateMapUnitToSliceGroupMap.exit

for.body4.i.i:                                    ; preds = %for.cond2.loopexit.i.i, %for.body4.lr.ph.i.i
  %indvars.iv73.i.i = phi i64 [ %33, %for.body4.lr.ph.i.i ], [ %indvars.iv.next74.i.i, %for.cond2.loopexit.i.i ]
  %arrayidx6.i.i = getelementptr inbounds [8 x i32], ptr %top_left.i.i, i64 0, i64 %indvars.iv73.i.i
  %34 = load i32, ptr %arrayidx6.i.i, align 4
  %35 = load i32, ptr %PicWidthInMbs.i89.i, align 4
  %div.i90.i = udiv i32 %34, %35
  %rem.i91.i = urem i32 %34, %35
  %arrayidx12.i.i = getelementptr inbounds [8 x i32], ptr %bottom_right.i.i, i64 0, i64 %indvars.iv73.i.i
  %36 = load i32, ptr %arrayidx12.i.i, align 4
  %div14.i.i = udiv i32 %36, %35
  %rem19.i.i = urem i32 %36, %35
  %37 = udiv i32 %36, %35
  %cmp21.not66.i.i = icmp ugt i32 %div.i90.i, %div14.i.i
  br i1 %cmp21.not66.i.i, label %for.cond2.loopexit.i.i, label %for.cond23.preheader.lr.ph.i.i

for.cond23.preheader.lr.ph.i.i:                   ; preds = %for.body4.i.i
  %cmp24.not64.i.i = icmp ugt i32 %rem.i91.i, %rem19.i.i
  br i1 %cmp24.not64.i.i, label %for.cond23.preheader.us.i.i.preheader, label %for.cond23.preheader.preheader.i.i

for.cond23.preheader.us.i.i.preheader:            ; preds = %for.cond23.preheader.lr.ph.i.i
  %38 = udiv i32 %36, %35
  %39 = zext i32 %38 to i64
  %40 = add nuw nsw i64 %39, 1
  %41 = add i32 %div.i90.i, 1
  %42 = zext i32 %41 to i64
  %umax56 = tail call i64 @llvm.umax.i64(i64 %40, i64 %42)
  %43 = trunc i64 %umax56 to i32
  %44 = sub i32 %43, %div.i90.i
  %min.iters.check = icmp ult i32 %44, 4
  br i1 %min.iters.check, label %for.cond23.preheader.us.i.i.preheader89, label %vector.scevcheck

for.cond23.preheader.us.i.i.preheader89:          ; preds = %middle.block, %vector.scevcheck, %for.cond23.preheader.us.i.i.preheader
  %y.067.us.i.i.ph = phi i32 [ %div.i90.i, %vector.scevcheck ], [ %div.i90.i, %for.cond23.preheader.us.i.i.preheader ], [ %ind.end, %middle.block ]
  br label %for.cond23.preheader.us.i.i

vector.scevcheck:                                 ; preds = %for.cond23.preheader.us.i.i.preheader
  %45 = zext i32 %37 to i64
  %46 = add nuw nsw i64 %45, 1
  %47 = add i32 %div.i90.i, 1
  %48 = zext i32 %47 to i64
  %49 = tail call i64 @llvm.usub.sat.i64(i64 %46, i64 %48)
  %50 = trunc i64 %49 to i32
  %51 = sub i32 -2, %div.i90.i
  %52 = icmp ult i32 %51, %50
  %53 = icmp ugt i64 %49, 4294967295
  %54 = or i1 %52, %53
  br i1 %54, label %for.cond23.preheader.us.i.i.preheader89, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i32 %44, -4
  %ind.end = add i32 %div.i90.i, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %index.next = add nuw i32 %index, 4
  %55 = icmp eq i32 %index.next, %n.vec
  br i1 %55, label %middle.block, label %vector.body, !llvm.loop !7

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i32 %44, %n.vec
  br i1 %cmp.n, label %for.cond2.loopexit.i.i, label %for.cond23.preheader.us.i.i.preheader89

for.cond23.preheader.preheader.i.i:               ; preds = %for.cond23.preheader.lr.ph.i.i
  %56 = trunc nuw nsw i64 %indvars.iv73.i.i to i32
  br label %for.cond23.preheader.i.i

for.cond23.preheader.us.i.i:                      ; preds = %for.cond23.preheader.us.i.i.preheader89, %for.cond23.preheader.us.i.i
  %y.067.us.i.i = phi i32 [ %inc34.us.i.i, %for.cond23.preheader.us.i.i ], [ %y.067.us.i.i.ph, %for.cond23.preheader.us.i.i.preheader89 ]
  %inc34.us.i.i = add i32 %y.067.us.i.i, 1
  %cmp21.not.us.i.i = icmp ugt i32 %inc34.us.i.i, %div14.i.i
  br i1 %cmp21.not.us.i.i, label %for.cond2.loopexit.i.i, label %for.cond23.preheader.us.i.i, !llvm.loop !10

for.cond23.preheader.i.i:                         ; preds = %for.cond23.for.inc33_crit_edge.i.i, %for.cond23.preheader.preheader.i.i
  %y.067.i.i = phi i32 [ %inc34.i.i, %for.cond23.for.inc33_crit_edge.i.i ], [ %div.i90.i, %for.cond23.preheader.preheader.i.i ]
  br label %for.body25.i.i

for.body25.i.i:                                   ; preds = %for.body25.i.i, %for.cond23.preheader.i.i
  %x.065.i.i = phi i32 [ %rem.i91.i, %for.cond23.preheader.i.i ], [ %inc31.i.i, %for.body25.i.i ]
  %57 = load ptr, ptr %MapUnitToSliceGroupMap.i, align 8
  %58 = load i32, ptr %PicWidthInMbs.i89.i, align 4
  %mul.i92.i = mul i32 %58, %y.067.i.i
  %add.i93.i = add i32 %mul.i92.i, %x.065.i.i
  %idxprom28.i.i = zext i32 %add.i93.i to i64
  %arrayidx29.i.i = getelementptr inbounds i32, ptr %57, i64 %idxprom28.i.i
  store i32 %56, ptr %arrayidx29.i.i, align 4
  %inc31.i.i = add i32 %x.065.i.i, 1
  %cmp24.not.i.i = icmp ugt i32 %inc31.i.i, %rem19.i.i
  br i1 %cmp24.not.i.i, label %for.cond23.for.inc33_crit_edge.i.i, label %for.body25.i.i

for.cond23.for.inc33_crit_edge.i.i:               ; preds = %for.body25.i.i
  %inc34.i.i = add i32 %y.067.i.i, 1
  %cmp21.not.i.i = icmp ugt i32 %inc34.i.i, %div14.i.i
  br i1 %cmp21.not.i.i, label %for.cond2.loopexit.i.i, label %for.cond23.preheader.i.i

sw.bb32.i:                                        ; preds = %if.end28.i
  %59 = getelementptr i8, ptr %pSlice, i64 228
  %currSlice.val.i = load i32, ptr %59, align 4
  %60 = load ptr, ptr %active_pps, align 8
  %slice_group_change_rate_minus1.i.i = getelementptr inbounds i8, ptr %60, i64 2152
  %61 = load i32, ptr %slice_group_change_rate_minus1.i.i, align 8
  %add.i95.i = add i32 %61, 1
  %mul.i96.i = mul i32 %add.i95.i, %currSlice.val.i
  %cond.i.i.i = tail call noundef i32 @llvm.smin.i32(i32 %mul.i96.i, i32 %mul.i)
  %cmp1.not.i.i = icmp eq i32 %mul.i, 0
  br i1 %cmp1.not.i.i, label %FmoGenerateMapUnitToSliceGroupMap.exit, label %for.body.i100.i.preheader

for.body.i100.i.preheader:                        ; preds = %sw.bb32.i
  %xtraiter102 = and i64 %conv.i, 3
  %62 = icmp ult i32 %mul.i, 4
  br i1 %62, label %for.body9.lr.ph.i.i.unr-lcssa, label %for.body.i100.i.preheader.new

for.body.i100.i.preheader.new:                    ; preds = %for.body.i100.i.preheader
  %unroll_iter105 = and i64 %conv.i, 4294967292
  br label %for.body.i100.i

for.body.i100.i:                                  ; preds = %for.body.i100.i, %for.body.i100.i.preheader.new
  %indvars.iv.i101.i = phi i64 [ 0, %for.body.i100.i.preheader.new ], [ %indvars.iv.next.i103.i.3, %for.body.i100.i ]
  %niter106 = phi i64 [ 0, %for.body.i100.i.preheader.new ], [ %niter106.next.3, %for.body.i100.i ]
  %63 = load ptr, ptr %MapUnitToSliceGroupMap.i, align 8
  %arrayidx.i102.i = getelementptr inbounds i32, ptr %63, i64 %indvars.iv.i101.i
  store i32 2, ptr %arrayidx.i102.i, align 4
  %indvars.iv.next.i103.i = or disjoint i64 %indvars.iv.i101.i, 1
  %64 = load ptr, ptr %MapUnitToSliceGroupMap.i, align 8
  %arrayidx.i102.i.1 = getelementptr inbounds i32, ptr %64, i64 %indvars.iv.next.i103.i
  store i32 2, ptr %arrayidx.i102.i.1, align 4
  %indvars.iv.next.i103.i.1 = or disjoint i64 %indvars.iv.i101.i, 2
  %65 = load ptr, ptr %MapUnitToSliceGroupMap.i, align 8
  %arrayidx.i102.i.2 = getelementptr inbounds i32, ptr %65, i64 %indvars.iv.next.i103.i.1
  store i32 2, ptr %arrayidx.i102.i.2, align 4
  %indvars.iv.next.i103.i.2 = or disjoint i64 %indvars.iv.i101.i, 3
  %66 = load ptr, ptr %MapUnitToSliceGroupMap.i, align 8
  %arrayidx.i102.i.3 = getelementptr inbounds i32, ptr %66, i64 %indvars.iv.next.i103.i.2
  store i32 2, ptr %arrayidx.i102.i.3, align 4
  %indvars.iv.next.i103.i.3 = add nuw nsw i64 %indvars.iv.i101.i, 4
  %niter106.next.3 = add i64 %niter106, 4
  %niter106.ncmp.3 = icmp eq i64 %niter106.next.3, %unroll_iter105
  br i1 %niter106.ncmp.3, label %for.body9.lr.ph.i.i.unr-lcssa, label %for.body.i100.i

for.body9.lr.ph.i.i.unr-lcssa:                    ; preds = %for.body.i100.i, %for.body.i100.i.preheader
  %indvars.iv.i101.i.unr = phi i64 [ 0, %for.body.i100.i.preheader ], [ %indvars.iv.next.i103.i.3, %for.body.i100.i ]
  %lcmp.mod104.not = icmp eq i64 %xtraiter102, 0
  br i1 %lcmp.mod104.not, label %for.body9.lr.ph.i.i, label %for.body.i100.i.epil

for.body.i100.i.epil:                             ; preds = %for.body9.lr.ph.i.i.unr-lcssa, %for.body.i100.i.epil
  %indvars.iv.i101.i.epil = phi i64 [ %indvars.iv.next.i103.i.epil, %for.body.i100.i.epil ], [ %indvars.iv.i101.i.unr, %for.body9.lr.ph.i.i.unr-lcssa ]
  %epil.iter103 = phi i64 [ %epil.iter103.next, %for.body.i100.i.epil ], [ 0, %for.body9.lr.ph.i.i.unr-lcssa ]
  %67 = load ptr, ptr %MapUnitToSliceGroupMap.i, align 8
  %arrayidx.i102.i.epil = getelementptr inbounds i32, ptr %67, i64 %indvars.iv.i101.i.epil
  store i32 2, ptr %arrayidx.i102.i.epil, align 4
  %indvars.iv.next.i103.i.epil = add nuw nsw i64 %indvars.iv.i101.i.epil, 1
  %epil.iter103.next = add i64 %epil.iter103, 1
  %epil.iter103.cmp.not = icmp eq i64 %epil.iter103.next, %xtraiter102
  br i1 %epil.iter103.cmp.not, label %for.body9.lr.ph.i.i, label %for.body.i100.i.epil, !llvm.loop !11

for.body9.lr.ph.i.i:                              ; preds = %for.body.i100.i.epil, %for.body9.lr.ph.i.i.unr-lcssa
  %PicWidthInMbs.i106.i = getelementptr inbounds i8, ptr %p_Vid, i64 848996
  %slice_group_change_direction_flag.i.i = getelementptr inbounds i8, ptr %60, i64 2148
  %PicHeightInMapUnits.i.i = getelementptr inbounds i8, ptr %p_Vid, i64 849000
  %68 = load i32, ptr %slice_group_change_direction_flag.i.i, align 4
  %sub5.i.i = add nsw i32 %68, -1
  %69 = load i32, ptr %PicHeightInMapUnits.i.i, align 8
  %sub2.i.i = sub i32 %69, %68
  %div3133.i.i = lshr i32 %sub2.i.i, 1
  %70 = load i32, ptr %PicWidthInMbs.i106.i, align 4
  %sub.i.i = sub i32 %70, %68
  %div132.i.i = lshr i32 %sub.i.i, 1
  br label %for.body9.i.i

for.body9.i.i:                                    ; preds = %for.inc81.i.i, %for.body9.lr.ph.i.i
  %k.012.i.i = phi i32 [ 0, %for.body9.lr.ph.i.i ], [ %add82.i.i, %for.inc81.i.i ]
  %yDir.011.i.i = phi i32 [ %68, %for.body9.lr.ph.i.i ], [ %yDir.1.i.i, %for.inc81.i.i ]
  %xDir.010.i.i = phi i32 [ %sub5.i.i, %for.body9.lr.ph.i.i ], [ %xDir.1.i.i, %for.inc81.i.i ]
  %y.09.i.i = phi i32 [ %div3133.i.i, %for.body9.lr.ph.i.i ], [ %y.1.i.i, %for.inc81.i.i ]
  %x.08.i.i = phi i32 [ %div132.i.i, %for.body9.lr.ph.i.i ], [ %x.1.i.i, %for.inc81.i.i ]
  %bottomBound.07.i.i = phi i32 [ %div3133.i.i, %for.body9.lr.ph.i.i ], [ %bottomBound.1.i.i, %for.inc81.i.i ]
  %rightBound.06.i.i = phi i32 [ %div132.i.i, %for.body9.lr.ph.i.i ], [ %rightBound.1.i.i, %for.inc81.i.i ]
  %topBound.05.i.i = phi i32 [ %div3133.i.i, %for.body9.lr.ph.i.i ], [ %topBound.1.i.i, %for.inc81.i.i ]
  %leftBound.04.i.i = phi i32 [ %div132.i.i, %for.body9.lr.ph.i.i ], [ %leftBound.1.i.i, %for.inc81.i.i ]
  %71 = load ptr, ptr %MapUnitToSliceGroupMap.i, align 8
  %72 = load i32, ptr %PicWidthInMbs.i106.i, align 4
  %mul12.i.i = mul i32 %72, %y.09.i.i
  %add13.i.i = add i32 %mul12.i.i, %x.08.i.i
  %idxprom14.i.i = zext i32 %add13.i.i to i64
  %arrayidx15.i.i = getelementptr inbounds i32, ptr %71, i64 %idxprom14.i.i
  %73 = load i32, ptr %arrayidx15.i.i, align 4
  %cmp16.i.i = icmp eq i32 %73, 2
  %conv.i107.i = zext i1 %cmp16.i.i to i32
  br i1 %cmp16.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %for.body9.i.i
  %cmp17.i.i = icmp uge i32 %k.012.i.i, %cond.i.i.i
  %conv18.i.i = zext i1 %cmp17.i.i to i32
  store i32 %conv18.i.i, ptr %arrayidx15.i.i, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %for.body9.i.i
  %cmp25.i.i = icmp eq i32 %xDir.010.i.i, -1
  %cmp27.i.i = icmp eq i32 %x.08.i.i, %leftBound.04.i.i
  %or.cond.i.i = select i1 %cmp25.i.i, i1 %cmp27.i.i, i1 false
  br i1 %or.cond.i.i, label %if.then29.i.i, label %if.else.i.i

if.then29.i.i:                                    ; preds = %if.end.i.i
  %74 = tail call i32 @llvm.smax.i32(i32 %x.08.i.i, i32 1)
  %cond.i137.i.i = add nsw i32 %74, -1
  %75 = load i32, ptr %slice_group_change_direction_flag.i.i, align 4
  %mul33.i.i = shl nsw i32 %75, 1
  %sub34.i.i = add nsw i32 %mul33.i.i, -1
  br label %for.inc81.i.i

if.else.i.i:                                      ; preds = %if.end.i.i
  %cmp35.i.i = icmp eq i32 %xDir.010.i.i, 1
  %cmp38.i.i = icmp eq i32 %x.08.i.i, %rightBound.06.i.i
  %or.cond134.i.i = select i1 %cmp35.i.i, i1 %cmp38.i.i, i1 false
  br i1 %or.cond134.i.i, label %if.then40.i.i, label %if.else48.i.i

if.then40.i.i:                                    ; preds = %if.else.i.i
  %add41.i.i = add nsw i32 %x.08.i.i, 1
  %76 = load i32, ptr %PicWidthInMbs.i106.i, align 4
  %sub43.i.i = add nsw i32 %76, -1
  %cond.i138.i.i = tail call noundef i32 @llvm.smin.i32(i32 %add41.i.i, i32 %sub43.i.i)
  %77 = load i32, ptr %slice_group_change_direction_flag.i.i, align 4
  %mul46.i.i = shl nsw i32 %77, 1
  %sub47.i.i = sub nsw i32 1, %mul46.i.i
  br label %for.inc81.i.i

if.else48.i.i:                                    ; preds = %if.else.i.i
  %cmp49.i.i = icmp eq i32 %yDir.011.i.i, -1
  %cmp52.i.i = icmp eq i32 %y.09.i.i, %topBound.05.i.i
  %or.cond135.i.i = select i1 %cmp49.i.i, i1 %cmp52.i.i, i1 false
  br i1 %or.cond135.i.i, label %if.then54.i.i, label %if.else60.i.i

if.then54.i.i:                                    ; preds = %if.else48.i.i
  %78 = tail call i32 @llvm.smax.i32(i32 %y.09.i.i, i32 1)
  %cond.i139.i.i = add nsw i32 %78, -1
  %79 = load i32, ptr %slice_group_change_direction_flag.i.i, align 4
  %mul58.i.i = shl nsw i32 %79, 1
  %sub59.i.i = sub nsw i32 1, %mul58.i.i
  br label %for.inc81.i.i

if.else60.i.i:                                    ; preds = %if.else48.i.i
  %cmp61.i.i = icmp eq i32 %yDir.011.i.i, 1
  %cmp64.i.i = icmp eq i32 %y.09.i.i, %bottomBound.07.i.i
  %or.cond136.i.i = select i1 %cmp61.i.i, i1 %cmp64.i.i, i1 false
  br i1 %or.cond136.i.i, label %if.then66.i.i, label %if.else74.i.i

if.then66.i.i:                                    ; preds = %if.else60.i.i
  %add67.i.i = add nsw i32 %y.09.i.i, 1
  %80 = load i32, ptr %PicHeightInMapUnits.i.i, align 8
  %sub69.i.i = add nsw i32 %80, -1
  %cond.i140.i.i = tail call noundef i32 @llvm.smin.i32(i32 %add67.i.i, i32 %sub69.i.i)
  %81 = load i32, ptr %slice_group_change_direction_flag.i.i, align 4
  %mul72.i.i = shl nsw i32 %81, 1
  %sub73.i.i = add nsw i32 %mul72.i.i, -1
  br label %for.inc81.i.i

if.else74.i.i:                                    ; preds = %if.else60.i.i
  %add75.i.i = add nsw i32 %x.08.i.i, %xDir.010.i.i
  %add76.i.i = add nsw i32 %y.09.i.i, %yDir.011.i.i
  br label %for.inc81.i.i

for.inc81.i.i:                                    ; preds = %if.else74.i.i, %if.then66.i.i, %if.then54.i.i, %if.then40.i.i, %if.then29.i.i
  %leftBound.1.i.i = phi i32 [ %cond.i137.i.i, %if.then29.i.i ], [ %leftBound.04.i.i, %if.then40.i.i ], [ %leftBound.04.i.i, %if.then54.i.i ], [ %leftBound.04.i.i, %if.then66.i.i ], [ %leftBound.04.i.i, %if.else74.i.i ]
  %topBound.1.i.i = phi i32 [ %topBound.05.i.i, %if.then29.i.i ], [ %topBound.05.i.i, %if.then40.i.i ], [ %cond.i139.i.i, %if.then54.i.i ], [ %topBound.05.i.i, %if.then66.i.i ], [ %topBound.05.i.i, %if.else74.i.i ]
  %rightBound.1.i.i = phi i32 [ %rightBound.06.i.i, %if.then29.i.i ], [ %cond.i138.i.i, %if.then40.i.i ], [ %rightBound.06.i.i, %if.then54.i.i ], [ %rightBound.06.i.i, %if.then66.i.i ], [ %rightBound.06.i.i, %if.else74.i.i ]
  %bottomBound.1.i.i = phi i32 [ %bottomBound.07.i.i, %if.then29.i.i ], [ %bottomBound.07.i.i, %if.then40.i.i ], [ %bottomBound.07.i.i, %if.then54.i.i ], [ %cond.i140.i.i, %if.then66.i.i ], [ %bottomBound.07.i.i, %if.else74.i.i ]
  %x.1.i.i = phi i32 [ %cond.i137.i.i, %if.then29.i.i ], [ %cond.i138.i.i, %if.then40.i.i ], [ %x.08.i.i, %if.then54.i.i ], [ %x.08.i.i, %if.then66.i.i ], [ %add75.i.i, %if.else74.i.i ]
  %y.1.i.i = phi i32 [ %y.09.i.i, %if.then29.i.i ], [ %y.09.i.i, %if.then40.i.i ], [ %cond.i139.i.i, %if.then54.i.i ], [ %cond.i140.i.i, %if.then66.i.i ], [ %add76.i.i, %if.else74.i.i ]
  %xDir.1.i.i = phi i32 [ 0, %if.then29.i.i ], [ 0, %if.then40.i.i ], [ %sub59.i.i, %if.then54.i.i ], [ %sub73.i.i, %if.then66.i.i ], [ %xDir.010.i.i, %if.else74.i.i ]
  %yDir.1.i.i = phi i32 [ %sub34.i.i, %if.then29.i.i ], [ %sub47.i.i, %if.then40.i.i ], [ 0, %if.then54.i.i ], [ 0, %if.then66.i.i ], [ %yDir.011.i.i, %if.else74.i.i ]
  %add82.i.i = add nuw i32 %k.012.i.i, %conv.i107.i
  %cmp8.i.i = icmp ult i32 %add82.i.i, %mul.i
  br i1 %cmp8.i.i, label %for.body9.i.i, label %FmoGenerateMapUnitToSliceGroupMap.exit

sw.bb33.i:                                        ; preds = %if.end28.i
  %82 = load ptr, ptr %active_pps, align 8
  %slice_group_change_direction_flag.i109.i = getelementptr inbounds i8, ptr %82, i64 2148
  %cmp2.not.i.i = icmp eq i32 %mul.i, 0
  br i1 %cmp2.not.i.i, label %FmoGenerateMapUnitToSliceGroupMap.exit, label %for.body.lr.ph.i110.i

for.body.lr.ph.i110.i:                            ; preds = %sw.bb33.i
  %83 = getelementptr i8, ptr %pSlice, i64 228
  %currSlice.val69.i = load i32, ptr %83, align 4
  %84 = load i32, ptr %slice_group_change_direction_flag.i109.i, align 4
  %tobool.not.i.i = icmp eq i32 %84, 0
  %slice_group_change_rate_minus1.i111.i = getelementptr inbounds i8, ptr %82, i64 2152
  %85 = load i32, ptr %slice_group_change_rate_minus1.i111.i, align 8
  %add.i112.i = add i32 %85, 1
  %mul.i113.i = mul i32 %add.i112.i, %currSlice.val69.i
  %cond.i.i114.i = tail call noundef i32 @llvm.smin.i32(i32 %mul.i113.i, i32 %mul.i)
  %sub.i115.i = sub i32 %mul.i, %cond.i.i114.i
  %cond.i.i = select i1 %tobool.not.i.i, i32 %cond.i.i114.i, i32 %sub.i115.i
  %86 = zext i32 %cond.i.i to i64
  %xtraiter97 = and i64 %conv.i, 1
  %87 = icmp eq i32 %mul.i, 1
  br i1 %87, label %FmoGenerateMapUnitToSliceGroupMap.exit.loopexit93.unr-lcssa, label %for.body.lr.ph.i110.i.new

for.body.lr.ph.i110.i.new:                        ; preds = %for.body.lr.ph.i110.i
  %unroll_iter100 = and i64 %conv.i, 4294967294
  br label %for.body.i117.i

for.body.i117.i:                                  ; preds = %for.body.i117.i, %for.body.lr.ph.i110.i.new
  %indvars.iv.i118.i = phi i64 [ 0, %for.body.lr.ph.i110.i.new ], [ %indvars.iv.next.i121.i.1, %for.body.i117.i ]
  %niter101 = phi i64 [ 0, %for.body.lr.ph.i110.i.new ], [ %niter101.next.1, %for.body.i117.i ]
  %cmp1.i119.i = icmp ult i64 %indvars.iv.i118.i, %86
  %88 = load i32, ptr %slice_group_change_direction_flag.i109.i, align 4
  %sub4.i.i = sub nsw i32 1, %88
  %.sink.i.i = select i1 %cmp1.i119.i, i32 %88, i32 %sub4.i.i
  %89 = load ptr, ptr %MapUnitToSliceGroupMap.i, align 8
  %arrayidx.i120.i = getelementptr inbounds i32, ptr %89, i64 %indvars.iv.i118.i
  store i32 %.sink.i.i, ptr %arrayidx.i120.i, align 4
  %indvars.iv.next.i121.i = or disjoint i64 %indvars.iv.i118.i, 1
  %cmp1.i119.i.1 = icmp ult i64 %indvars.iv.next.i121.i, %86
  %90 = load i32, ptr %slice_group_change_direction_flag.i109.i, align 4
  %sub4.i.i.1 = sub nsw i32 1, %90
  %.sink.i.i.1 = select i1 %cmp1.i119.i.1, i32 %90, i32 %sub4.i.i.1
  %91 = load ptr, ptr %MapUnitToSliceGroupMap.i, align 8
  %arrayidx.i120.i.1 = getelementptr inbounds i32, ptr %91, i64 %indvars.iv.next.i121.i
  store i32 %.sink.i.i.1, ptr %arrayidx.i120.i.1, align 4
  %indvars.iv.next.i121.i.1 = add nuw nsw i64 %indvars.iv.i118.i, 2
  %niter101.next.1 = add i64 %niter101, 2
  %niter101.ncmp.1 = icmp eq i64 %niter101.next.1, %unroll_iter100
  br i1 %niter101.ncmp.1, label %FmoGenerateMapUnitToSliceGroupMap.exit.loopexit93.unr-lcssa, label %for.body.i117.i

sw.bb34.i:                                        ; preds = %if.end28.i
  %92 = getelementptr i8, ptr %pSlice, i64 228
  %currSlice.val70.i = load i32, ptr %92, align 4
  %93 = load ptr, ptr %active_pps, align 8
  %slice_group_change_rate_minus1.i125.i = getelementptr inbounds i8, ptr %93, i64 2152
  %94 = load i32, ptr %slice_group_change_rate_minus1.i125.i, align 8
  %add.i126.i = add i32 %94, 1
  %mul.i127.i = mul i32 %add.i126.i, %currSlice.val70.i
  %cond.i.i128.i = tail call noundef i32 @llvm.smin.i32(i32 %mul.i127.i, i32 %mul.i)
  %slice_group_change_direction_flag.i129.i = getelementptr inbounds i8, ptr %93, i64 2148
  %95 = load i32, ptr %slice_group_change_direction_flag.i129.i, align 4
  %tobool.not.i130.i = icmp eq i32 %95, 0
  %sub.i131.i = sub i32 %mul.i, %cond.i.i128.i
  %cond.i132.i = select i1 %tobool.not.i130.i, i32 %cond.i.i128.i, i32 %sub.i131.i
  %PicWidthInMbs.i133.i = getelementptr inbounds i8, ptr %p_Vid, i64 848996
  %96 = load i32, ptr %PicWidthInMbs.i133.i, align 4
  %cmp5.not.i.i = icmp eq i32 %96, 0
  br i1 %cmp5.not.i.i, label %FmoGenerateMapUnitToSliceGroupMap.exit, label %for.cond1.preheader.lr.ph.i.i

for.cond1.preheader.lr.ph.i.i:                    ; preds = %sw.bb34.i
  %PicHeightInMapUnits.i134.i = getelementptr inbounds i8, ptr %p_Vid, i64 849000
  %97 = load i32, ptr %PicHeightInMapUnits.i134.i, align 8
  %.not.i.i = icmp eq i32 %97, 0
  br i1 %.not.i.i, label %FmoGenerateMapUnitToSliceGroupMap.exit, label %for.cond1.preheader.i.i

for.cond1.preheader.i.i:                          ; preds = %for.cond1.preheader.lr.ph.i.i, %for.inc18.i.i
  %98 = phi i32 [ %104, %for.inc18.i.i ], [ %96, %for.cond1.preheader.lr.ph.i.i ]
  %99 = phi i32 [ %105, %for.inc18.i.i ], [ 1, %for.cond1.preheader.lr.ph.i.i ]
  %k.07.i.i = phi i32 [ %k.1.lcssa.i.i, %for.inc18.i.i ], [ 0, %for.cond1.preheader.lr.ph.i.i ]
  %j.06.i.i = phi i32 [ %inc19.i.i, %for.inc18.i.i ], [ 0, %for.cond1.preheader.lr.ph.i.i ]
  %cmp21.not.i135.i = icmp eq i32 %99, 0
  br i1 %cmp21.not.i135.i, label %for.inc18.i.i, label %for.body3.i.i

for.body3.i.i:                                    ; preds = %for.cond1.preheader.i.i, %for.body3.i.i
  %k.13.i.i = phi i32 [ %inc.i.i, %for.body3.i.i ], [ %k.07.i.i, %for.cond1.preheader.i.i ]
  %i.02.i.i = phi i32 [ %inc17.i.i, %for.body3.i.i ], [ 0, %for.cond1.preheader.i.i ]
  %inc.i.i = add i32 %k.13.i.i, 1
  %cmp4.i.i = icmp ult i32 %k.13.i.i, %cond.i132.i
  %100 = load i32, ptr %slice_group_change_direction_flag.i129.i, align 4
  %sub10.i.i = sub nsw i32 1, %100
  %.sink.i136.i = select i1 %cmp4.i.i, i32 %100, i32 %sub10.i.i
  %101 = load ptr, ptr %MapUnitToSliceGroupMap.i, align 8
  %102 = load i32, ptr %PicWidthInMbs.i133.i, align 4
  %mul7.i.i = mul i32 %102, %i.02.i.i
  %add8.i.i = add i32 %mul7.i.i, %j.06.i.i
  %idxprom.i137.i = zext i32 %add8.i.i to i64
  %arrayidx.i138.i = getelementptr inbounds i32, ptr %101, i64 %idxprom.i137.i
  store i32 %.sink.i136.i, ptr %arrayidx.i138.i, align 4
  %inc17.i.i = add nuw i32 %i.02.i.i, 1
  %103 = load i32, ptr %PicHeightInMapUnits.i134.i, align 8
  %cmp2.i.i = icmp ult i32 %inc17.i.i, %103
  br i1 %cmp2.i.i, label %for.body3.i.i, label %for.inc18.loopexit.i.i

for.inc18.loopexit.i.i:                           ; preds = %for.body3.i.i
  %.pre.i139.i = load i32, ptr %PicWidthInMbs.i133.i, align 4
  br label %for.inc18.i.i

for.inc18.i.i:                                    ; preds = %for.inc18.loopexit.i.i, %for.cond1.preheader.i.i
  %104 = phi i32 [ %98, %for.cond1.preheader.i.i ], [ %.pre.i139.i, %for.inc18.loopexit.i.i ]
  %105 = phi i32 [ 0, %for.cond1.preheader.i.i ], [ %103, %for.inc18.loopexit.i.i ]
  %k.1.lcssa.i.i = phi i32 [ %k.07.i.i, %for.cond1.preheader.i.i ], [ %inc.i.i, %for.inc18.loopexit.i.i ]
  %inc19.i.i = add nuw i32 %j.06.i.i, 1
  %cmp.i140.i = icmp ult i32 %inc19.i.i, %104
  br i1 %cmp.i140.i, label %for.cond1.preheader.i.i, label %FmoGenerateMapUnitToSliceGroupMap.exit, !llvm.loop !12

sw.bb35.i:                                        ; preds = %if.end28.i
  %cmp7.not.i.i = icmp eq i32 %mul.i, 0
  br i1 %cmp7.not.i.i, label %FmoGenerateMapUnitToSliceGroupMap.exit, label %for.body.lr.ph.i141.i

for.body.lr.ph.i141.i:                            ; preds = %sw.bb35.i
  %106 = load ptr, ptr %active_pps, align 8
  %slice_group_id.i.i = getelementptr inbounds i8, ptr %106, i64 2160
  %xtraiter = and i64 %conv.i, 3
  %107 = icmp ult i32 %mul.i, 4
  br i1 %107, label %FmoGenerateMapUnitToSliceGroupMap.exit.loopexit96.unr-lcssa, label %for.body.lr.ph.i141.i.new

for.body.lr.ph.i141.i.new:                        ; preds = %for.body.lr.ph.i141.i
  %unroll_iter = and i64 %conv.i, 4294967292
  br label %for.body.i145.i

for.body.i145.i:                                  ; preds = %for.body.i145.i, %for.body.lr.ph.i141.i.new
  %indvars.iv.i146.i = phi i64 [ 0, %for.body.lr.ph.i141.i.new ], [ %indvars.iv.next.i149.i.3, %for.body.i145.i ]
  %niter = phi i64 [ 0, %for.body.lr.ph.i141.i.new ], [ %niter.next.3, %for.body.i145.i ]
  %108 = load ptr, ptr %slice_group_id.i.i, align 8
  %arrayidx.i147.i = getelementptr inbounds i8, ptr %108, i64 %indvars.iv.i146.i
  %109 = load i8, ptr %arrayidx.i147.i, align 1
  %conv.i148.i = zext i8 %109 to i32
  %110 = load ptr, ptr %MapUnitToSliceGroupMap.i, align 8
  %arrayidx2.i.i = getelementptr inbounds i32, ptr %110, i64 %indvars.iv.i146.i
  store i32 %conv.i148.i, ptr %arrayidx2.i.i, align 4
  %indvars.iv.next.i149.i = or disjoint i64 %indvars.iv.i146.i, 1
  %111 = load ptr, ptr %slice_group_id.i.i, align 8
  %arrayidx.i147.i.1 = getelementptr inbounds i8, ptr %111, i64 %indvars.iv.next.i149.i
  %112 = load i8, ptr %arrayidx.i147.i.1, align 1
  %conv.i148.i.1 = zext i8 %112 to i32
  %113 = load ptr, ptr %MapUnitToSliceGroupMap.i, align 8
  %arrayidx2.i.i.1 = getelementptr inbounds i32, ptr %113, i64 %indvars.iv.next.i149.i
  store i32 %conv.i148.i.1, ptr %arrayidx2.i.i.1, align 4
  %indvars.iv.next.i149.i.1 = or disjoint i64 %indvars.iv.i146.i, 2
  %114 = load ptr, ptr %slice_group_id.i.i, align 8
  %arrayidx.i147.i.2 = getelementptr inbounds i8, ptr %114, i64 %indvars.iv.next.i149.i.1
  %115 = load i8, ptr %arrayidx.i147.i.2, align 1
  %conv.i148.i.2 = zext i8 %115 to i32
  %116 = load ptr, ptr %MapUnitToSliceGroupMap.i, align 8
  %arrayidx2.i.i.2 = getelementptr inbounds i32, ptr %116, i64 %indvars.iv.next.i149.i.1
  store i32 %conv.i148.i.2, ptr %arrayidx2.i.i.2, align 4
  %indvars.iv.next.i149.i.2 = or disjoint i64 %indvars.iv.i146.i, 3
  %117 = load ptr, ptr %slice_group_id.i.i, align 8
  %arrayidx.i147.i.3 = getelementptr inbounds i8, ptr %117, i64 %indvars.iv.next.i149.i.2
  %118 = load i8, ptr %arrayidx.i147.i.3, align 1
  %conv.i148.i.3 = zext i8 %118 to i32
  %119 = load ptr, ptr %MapUnitToSliceGroupMap.i, align 8
  %arrayidx2.i.i.3 = getelementptr inbounds i32, ptr %119, i64 %indvars.iv.next.i149.i.2
  store i32 %conv.i148.i.3, ptr %arrayidx2.i.i.3, align 4
  %indvars.iv.next.i149.i.3 = add nuw nsw i64 %indvars.iv.i146.i, 4
  %niter.next.3 = add i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %FmoGenerateMapUnitToSliceGroupMap.exit.loopexit96.unr-lcssa, label %for.body.i145.i

sw.default.i:                                     ; preds = %if.end28.i
  %call37.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %9)
  tail call void @exit(i32 noundef -1) #14
  unreachable

FmoGenerateMapUnitToSliceGroupMap.exit.loopexit93.unr-lcssa: ; preds = %for.body.i117.i, %for.body.lr.ph.i110.i
  %indvars.iv.i118.i.unr = phi i64 [ 0, %for.body.lr.ph.i110.i ], [ %indvars.iv.next.i121.i.1, %for.body.i117.i ]
  %lcmp.mod99.not = icmp eq i64 %xtraiter97, 0
  br i1 %lcmp.mod99.not, label %FmoGenerateMapUnitToSliceGroupMap.exit, label %for.body.i117.i.epil

for.body.i117.i.epil:                             ; preds = %FmoGenerateMapUnitToSliceGroupMap.exit.loopexit93.unr-lcssa
  %cmp1.i119.i.epil = icmp ult i64 %indvars.iv.i118.i.unr, %86
  %120 = load i32, ptr %slice_group_change_direction_flag.i109.i, align 4
  %sub4.i.i.epil = sub nsw i32 1, %120
  %.sink.i.i.epil = select i1 %cmp1.i119.i.epil, i32 %120, i32 %sub4.i.i.epil
  %121 = load ptr, ptr %MapUnitToSliceGroupMap.i, align 8
  %arrayidx.i120.i.epil = getelementptr inbounds i32, ptr %121, i64 %indvars.iv.i118.i.unr
  store i32 %.sink.i.i.epil, ptr %arrayidx.i120.i.epil, align 4
  br label %FmoGenerateMapUnitToSliceGroupMap.exit

FmoGenerateMapUnitToSliceGroupMap.exit.loopexit96.unr-lcssa: ; preds = %for.body.i145.i, %for.body.lr.ph.i141.i
  %indvars.iv.i146.i.unr = phi i64 [ 0, %for.body.lr.ph.i141.i ], [ %indvars.iv.next.i149.i.3, %for.body.i145.i ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %FmoGenerateMapUnitToSliceGroupMap.exit, label %for.body.i145.i.epil

for.body.i145.i.epil:                             ; preds = %FmoGenerateMapUnitToSliceGroupMap.exit.loopexit96.unr-lcssa, %for.body.i145.i.epil
  %indvars.iv.i146.i.epil = phi i64 [ %indvars.iv.next.i149.i.epil, %for.body.i145.i.epil ], [ %indvars.iv.i146.i.unr, %FmoGenerateMapUnitToSliceGroupMap.exit.loopexit96.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %for.body.i145.i.epil ], [ 0, %FmoGenerateMapUnitToSliceGroupMap.exit.loopexit96.unr-lcssa ]
  %122 = load ptr, ptr %slice_group_id.i.i, align 8
  %arrayidx.i147.i.epil = getelementptr inbounds i8, ptr %122, i64 %indvars.iv.i146.i.epil
  %123 = load i8, ptr %arrayidx.i147.i.epil, align 1
  %conv.i148.i.epil = zext i8 %123 to i32
  %124 = load ptr, ptr %MapUnitToSliceGroupMap.i, align 8
  %arrayidx2.i.i.epil = getelementptr inbounds i32, ptr %124, i64 %indvars.iv.i146.i.epil
  store i32 %conv.i148.i.epil, ptr %arrayidx2.i.i.epil, align 4
  %indvars.iv.next.i149.i.epil = add nuw nsw i64 %indvars.iv.i146.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %FmoGenerateMapUnitToSliceGroupMap.exit, label %for.body.i145.i.epil, !llvm.loop !14

FmoGenerateMapUnitToSliceGroupMap.exit:           ; preds = %FmoGenerateMapUnitToSliceGroupMap.exit.loopexit96.unr-lcssa, %for.body.i145.i.epil, %for.inc18.i.i, %for.body.i117.i.epil, %FmoGenerateMapUnitToSliceGroupMap.exit.loopexit93.unr-lcssa, %for.inc81.i.i, %for.cond2.loopexit.i.i, %for.body.i.i, %do.body.i.i, %do.cond.i.i, %if.then23.i, %sw.bb30.i, %for.end.i.i, %sw.bb32.i, %sw.bb33.i, %sw.bb34.i, %for.cond1.preheader.lr.ph.i.i, %sw.bb35.i
  %125 = load ptr, ptr %active_sps.i, align 8
  %MbToSliceGroupMap.i = getelementptr inbounds i8, ptr %p_Vid, i64 856704
  %126 = load ptr, ptr %MbToSliceGroupMap.i, align 8
  %tobool.not.i7 = icmp eq ptr %126, null
  br i1 %tobool.not.i7, label %if.end.i, label %if.then.i8

if.then.i8:                                       ; preds = %FmoGenerateMapUnitToSliceGroupMap.exit
  tail call void @free(ptr noundef nonnull %126) #12
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i8, %FmoGenerateMapUnitToSliceGroupMap.exit
  %PicSizeInMbs.i = getelementptr inbounds i8, ptr %p_Vid, i64 849012
  %127 = load i32, ptr %PicSizeInMbs.i, align 4
  %conv.i9 = zext i32 %127 to i64
  %mul.i10 = shl nuw nsw i64 %conv.i9, 2
  %call.i11 = tail call noalias ptr @malloc(i64 noundef %mul.i10) #13
  %call.i1157 = ptrtoint ptr %call.i11 to i64
  store ptr %call.i11, ptr %MbToSliceGroupMap.i, align 8
  %cmp.i12 = icmp eq ptr %call.i11, null
  br i1 %cmp.i12, label %if.then4.i15, label %if.end10.i

if.then4.i15:                                     ; preds = %if.end.i
  %mul7.i = shl i32 %127, 2
  %call9.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %mul7.i)
  tail call void @exit(i32 noundef -1) #14
  unreachable

if.end10.i:                                       ; preds = %if.end.i
  %frame_mbs_only_flag.i = getelementptr inbounds i8, ptr %125, i64 3136
  %128 = load i32, ptr %frame_mbs_only_flag.i, align 4
  %tobool11.not.i = icmp eq i32 %128, 0
  br i1 %tobool11.not.i, label %lor.lhs.false.i, label %if.then13.i13

lor.lhs.false.i:                                  ; preds = %if.end10.i
  %field_pic_flag.i = getelementptr inbounds i8, ptr %pSlice, i64 176
  %129 = load i32, ptr %field_pic_flag.i, align 8
  %tobool12.not.i = icmp eq i32 %129, 0
  br i1 %tobool12.not.i, label %if.else.i, label %if.then13.i13

if.then13.i13:                                    ; preds = %lor.lhs.false.i, %if.end10.i
  %cmp1891.not.i = icmp eq i32 %127, 0
  br i1 %cmp1891.not.i, label %FmoGenerateMbToSliceGroupMap.exit, label %for.body.preheader.i

for.body.preheader.i:                             ; preds = %if.then13.i13
  %130 = load ptr, ptr %MapUnitToSliceGroupMap.i, align 8
  %131 = zext i32 %127 to i64
  %min.iters.check60 = icmp ult i32 %127, 16
  %132 = ptrtoint ptr %130 to i64
  %133 = sub i64 %call.i1157, %132
  %diff.check = icmp ult i64 %133, 64
  %or.cond = select i1 %min.iters.check60, i1 true, i1 %diff.check
  br i1 %or.cond, label %for.body.i.preheader, label %vector.ph61

vector.ph61:                                      ; preds = %for.body.preheader.i
  %n.vec63 = and i64 %131, 4294967280
  %134 = shl nuw nsw i64 %n.vec63, 2
  %ind.end64 = getelementptr i8, ptr %130, i64 %134
  %135 = shl nuw nsw i64 %n.vec63, 2
  %ind.end66 = getelementptr i8, ptr %call.i11, i64 %135
  %ind.end68 = trunc nuw i64 %n.vec63 to i32
  br label %vector.body70

vector.body70:                                    ; preds = %vector.body70, %vector.ph61
  %index71 = phi i64 [ 0, %vector.ph61 ], [ %index.next83, %vector.body70 ]
  %offset.idx = shl i64 %index71, 2
  %next.gep = getelementptr i8, ptr %130, i64 %offset.idx
  %offset.idx75 = shl i64 %index71, 2
  %next.gep76 = getelementptr i8, ptr %call.i11, i64 %offset.idx75
  %136 = getelementptr i8, ptr %next.gep, i64 16
  %137 = getelementptr i8, ptr %next.gep, i64 32
  %138 = getelementptr i8, ptr %next.gep, i64 48
  %wide.load = load <4 x i32>, ptr %next.gep, align 4
  %wide.load80 = load <4 x i32>, ptr %136, align 4
  %wide.load81 = load <4 x i32>, ptr %137, align 4
  %wide.load82 = load <4 x i32>, ptr %138, align 4
  %139 = getelementptr i8, ptr %next.gep76, i64 16
  %140 = getelementptr i8, ptr %next.gep76, i64 32
  %141 = getelementptr i8, ptr %next.gep76, i64 48
  store <4 x i32> %wide.load, ptr %next.gep76, align 4
  store <4 x i32> %wide.load80, ptr %139, align 4
  store <4 x i32> %wide.load81, ptr %140, align 4
  store <4 x i32> %wide.load82, ptr %141, align 4
  %index.next83 = add nuw i64 %index71, 16
  %142 = icmp eq i64 %index.next83, %n.vec63
  br i1 %142, label %middle.block58, label %vector.body70, !llvm.loop !15

middle.block58:                                   ; preds = %vector.body70
  %cmp.n84 = icmp eq i64 %n.vec63, %131
  br i1 %cmp.n84, label %FmoGenerateMbToSliceGroupMap.exit, label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %middle.block58, %for.body.preheader.i
  %MapUnitToSliceGroupMap.094.i.ph = phi ptr [ %130, %for.body.preheader.i ], [ %ind.end64, %middle.block58 ]
  %MbToSliceGroupMap14.093.i.ph = phi ptr [ %call.i11, %for.body.preheader.i ], [ %ind.end66, %middle.block58 ]
  %i.092.i.ph = phi i32 [ 0, %for.body.preheader.i ], [ %ind.end68, %middle.block58 ]
  %143 = sub i32 %127, %i.092.i.ph
  %xtraiter112 = and i32 %143, 7
  %lcmp.mod113.not = icmp eq i32 %xtraiter112, 0
  br i1 %lcmp.mod113.not, label %for.body.i.prol.loopexit, label %for.body.i.prol

for.body.i.prol:                                  ; preds = %for.body.i.preheader, %for.body.i.prol
  %MapUnitToSliceGroupMap.094.i.prol = phi ptr [ %incdec.ptr.i.prol, %for.body.i.prol ], [ %MapUnitToSliceGroupMap.094.i.ph, %for.body.i.preheader ]
  %MbToSliceGroupMap14.093.i.prol = phi ptr [ %incdec.ptr20.i.prol, %for.body.i.prol ], [ %MbToSliceGroupMap14.093.i.ph, %for.body.i.preheader ]
  %i.092.i.prol = phi i32 [ %inc.i.prol, %for.body.i.prol ], [ %i.092.i.ph, %for.body.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %for.body.i.prol ], [ 0, %for.body.i.preheader ]
  %incdec.ptr.i.prol = getelementptr inbounds i8, ptr %MapUnitToSliceGroupMap.094.i.prol, i64 4
  %144 = load i32, ptr %MapUnitToSliceGroupMap.094.i.prol, align 4
  %incdec.ptr20.i.prol = getelementptr inbounds i8, ptr %MbToSliceGroupMap14.093.i.prol, i64 4
  store i32 %144, ptr %MbToSliceGroupMap14.093.i.prol, align 4
  %inc.i.prol = add nuw i32 %i.092.i.prol, 1
  %prol.iter.next = add i32 %prol.iter, 1
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter112
  br i1 %prol.iter.cmp.not, label %for.body.i.prol.loopexit, label %for.body.i.prol, !llvm.loop !16

for.body.i.prol.loopexit:                         ; preds = %for.body.i.prol, %for.body.i.preheader
  %MapUnitToSliceGroupMap.094.i.unr = phi ptr [ %MapUnitToSliceGroupMap.094.i.ph, %for.body.i.preheader ], [ %incdec.ptr.i.prol, %for.body.i.prol ]
  %MbToSliceGroupMap14.093.i.unr = phi ptr [ %MbToSliceGroupMap14.093.i.ph, %for.body.i.preheader ], [ %incdec.ptr20.i.prol, %for.body.i.prol ]
  %i.092.i.unr = phi i32 [ %i.092.i.ph, %for.body.i.preheader ], [ %inc.i.prol, %for.body.i.prol ]
  %145 = sub i32 %i.092.i.ph, %127
  %146 = icmp ugt i32 %145, -8
  br i1 %146, label %FmoGenerateMbToSliceGroupMap.exit, label %for.body.i

for.body.i:                                       ; preds = %for.body.i.prol.loopexit, %for.body.i
  %MapUnitToSliceGroupMap.094.i = phi ptr [ %incdec.ptr.i.7, %for.body.i ], [ %MapUnitToSliceGroupMap.094.i.unr, %for.body.i.prol.loopexit ]
  %MbToSliceGroupMap14.093.i = phi ptr [ %incdec.ptr20.i.7, %for.body.i ], [ %MbToSliceGroupMap14.093.i.unr, %for.body.i.prol.loopexit ]
  %i.092.i = phi i32 [ %inc.i.7, %for.body.i ], [ %i.092.i.unr, %for.body.i.prol.loopexit ]
  %incdec.ptr.i = getelementptr inbounds i8, ptr %MapUnitToSliceGroupMap.094.i, i64 4
  %147 = load i32, ptr %MapUnitToSliceGroupMap.094.i, align 4
  %incdec.ptr20.i = getelementptr inbounds i8, ptr %MbToSliceGroupMap14.093.i, i64 4
  store i32 %147, ptr %MbToSliceGroupMap14.093.i, align 4
  %incdec.ptr.i.1 = getelementptr inbounds i8, ptr %MapUnitToSliceGroupMap.094.i, i64 8
  %148 = load i32, ptr %incdec.ptr.i, align 4
  %incdec.ptr20.i.1 = getelementptr inbounds i8, ptr %MbToSliceGroupMap14.093.i, i64 8
  store i32 %148, ptr %incdec.ptr20.i, align 4
  %incdec.ptr.i.2 = getelementptr inbounds i8, ptr %MapUnitToSliceGroupMap.094.i, i64 12
  %149 = load i32, ptr %incdec.ptr.i.1, align 4
  %incdec.ptr20.i.2 = getelementptr inbounds i8, ptr %MbToSliceGroupMap14.093.i, i64 12
  store i32 %149, ptr %incdec.ptr20.i.1, align 4
  %incdec.ptr.i.3 = getelementptr inbounds i8, ptr %MapUnitToSliceGroupMap.094.i, i64 16
  %150 = load i32, ptr %incdec.ptr.i.2, align 4
  %incdec.ptr20.i.3 = getelementptr inbounds i8, ptr %MbToSliceGroupMap14.093.i, i64 16
  store i32 %150, ptr %incdec.ptr20.i.2, align 4
  %incdec.ptr.i.4 = getelementptr inbounds i8, ptr %MapUnitToSliceGroupMap.094.i, i64 20
  %151 = load i32, ptr %incdec.ptr.i.3, align 4
  %incdec.ptr20.i.4 = getelementptr inbounds i8, ptr %MbToSliceGroupMap14.093.i, i64 20
  store i32 %151, ptr %incdec.ptr20.i.3, align 4
  %incdec.ptr.i.5 = getelementptr inbounds i8, ptr %MapUnitToSliceGroupMap.094.i, i64 24
  %152 = load i32, ptr %incdec.ptr.i.4, align 4
  %incdec.ptr20.i.5 = getelementptr inbounds i8, ptr %MbToSliceGroupMap14.093.i, i64 24
  store i32 %152, ptr %incdec.ptr20.i.4, align 4
  %incdec.ptr.i.6 = getelementptr inbounds i8, ptr %MapUnitToSliceGroupMap.094.i, i64 28
  %153 = load i32, ptr %incdec.ptr.i.5, align 4
  %incdec.ptr20.i.6 = getelementptr inbounds i8, ptr %MbToSliceGroupMap14.093.i, i64 28
  store i32 %153, ptr %incdec.ptr20.i.5, align 4
  %incdec.ptr.i.7 = getelementptr inbounds i8, ptr %MapUnitToSliceGroupMap.094.i, i64 32
  %154 = load i32, ptr %incdec.ptr.i.6, align 4
  %incdec.ptr20.i.7 = getelementptr inbounds i8, ptr %MbToSliceGroupMap14.093.i, i64 32
  store i32 %154, ptr %incdec.ptr20.i.6, align 4
  %inc.i.7 = add nuw i32 %i.092.i, 8
  %exitcond.not.i.7 = icmp eq i32 %inc.i.7, %127
  br i1 %exitcond.not.i.7, label %FmoGenerateMbToSliceGroupMap.exit, label %for.body.i, !llvm.loop !17

if.else.i:                                        ; preds = %lor.lhs.false.i
  %mb_adaptive_frame_field_flag.i = getelementptr inbounds i8, ptr %125, i64 3140
  %155 = load i32, ptr %mb_adaptive_frame_field_flag.i, align 4
  %tobool21.not.i = icmp eq i32 %155, 0
  %cmp4097.not.i = icmp eq i32 %127, 0
  br i1 %tobool21.not.i, label %for.cond38.preheader.i, label %for.cond25.preheader.i

for.cond25.preheader.i:                           ; preds = %if.else.i
  br i1 %cmp4097.not.i, label %FmoGenerateMbToSliceGroupMap.exit, label %for.body29.i

for.cond38.preheader.i:                           ; preds = %if.else.i
  br i1 %cmp4097.not.i, label %FmoGenerateMbToSliceGroupMap.exit, label %for.body42.lr.ph.i

for.body42.lr.ph.i:                               ; preds = %for.cond38.preheader.i
  %PicWidthInMbs.i = getelementptr inbounds i8, ptr %p_Vid, i64 848996
  br label %for.body42.i

for.body29.i:                                     ; preds = %for.cond25.preheader.i, %for.body29.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body29.i ], [ 0, %for.cond25.preheader.i ]
  %156 = load ptr, ptr %MapUnitToSliceGroupMap.i, align 8
  %div88.i = lshr i64 %indvars.iv.i, 1
  %arrayidx.i = getelementptr inbounds i32, ptr %156, i64 %div88.i
  %157 = load i32, ptr %arrayidx.i, align 4
  %158 = load ptr, ptr %MbToSliceGroupMap.i, align 8
  %arrayidx33.i = getelementptr inbounds i32, ptr %158, i64 %indvars.iv.i
  store i32 %157, ptr %arrayidx33.i, align 4
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %159 = load i32, ptr %PicSizeInMbs.i, align 4
  %160 = zext i32 %159 to i64
  %cmp27.i = icmp ult i64 %indvars.iv.next.i, %160
  br i1 %cmp27.i, label %for.body29.i, label %FmoGenerateMbToSliceGroupMap.exit

for.body42.i:                                     ; preds = %for.body42.i, %for.body42.lr.ph.i
  %indvars.iv102.i = phi i64 [ 0, %for.body42.lr.ph.i ], [ %indvars.iv.next103.i, %for.body42.i ]
  %161 = load ptr, ptr %MapUnitToSliceGroupMap.i, align 8
  %162 = load i32, ptr %PicWidthInMbs.i, align 4
  %mul44.i = shl i32 %162, 1
  %163 = trunc nuw i64 %indvars.iv102.i to i32
  %div45.i = udiv i32 %163, %mul44.i
  %mul47.i = mul i32 %div45.i, %162
  %rem.i = urem i32 %163, %162
  %add.i14 = add i32 %mul47.i, %rem.i
  %idxprom49.i = zext i32 %add.i14 to i64
  %arrayidx50.i = getelementptr inbounds i32, ptr %161, i64 %idxprom49.i
  %164 = load i32, ptr %arrayidx50.i, align 4
  %165 = load ptr, ptr %MbToSliceGroupMap.i, align 8
  %arrayidx53.i = getelementptr inbounds i32, ptr %165, i64 %indvars.iv102.i
  store i32 %164, ptr %arrayidx53.i, align 4
  %indvars.iv.next103.i = add nuw nsw i64 %indvars.iv102.i, 1
  %166 = load i32, ptr %PicSizeInMbs.i, align 4
  %167 = zext i32 %166 to i64
  %cmp40.i = icmp ult i64 %indvars.iv.next103.i, %167
  br i1 %cmp40.i, label %for.body42.i, label %FmoGenerateMbToSliceGroupMap.exit

FmoGenerateMbToSliceGroupMap.exit:                ; preds = %for.body.i.prol.loopexit, %for.body.i, %for.body29.i, %for.body42.i, %middle.block58, %if.then13.i13, %for.cond25.preheader.i, %for.cond38.preheader.i
  %168 = load i32, ptr %num_slice_groups_minus1.i, align 4
  %add = add i32 %168, 1
  %NumberOfSliceGroups = getelementptr inbounds i8, ptr %p_Vid, i64 856720
  store i32 %add, ptr %NumberOfSliceGroups, align 8
  ret i32 0
}

; Function Attrs: mustprogress nounwind willreturn uwtable
define dso_local noundef i32 @FmoFinit(ptr nocapture noundef %p_Vid) local_unnamed_addr #1 {
entry:
  %MbToSliceGroupMap = getelementptr inbounds i8, ptr %p_Vid, i64 856704
  %0 = load ptr, ptr %MbToSliceGroupMap, align 8
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @free(ptr noundef nonnull %0) #12
  store ptr null, ptr %MbToSliceGroupMap, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %MapUnitToSliceGroupMap = getelementptr inbounds i8, ptr %p_Vid, i64 856712
  %1 = load ptr, ptr %MapUnitToSliceGroupMap, align 8
  %tobool3.not = icmp eq ptr %1, null
  br i1 %tobool3.not, label %if.end7, label %if.then4

if.then4:                                         ; preds = %if.end
  tail call void @free(ptr noundef nonnull %1) #12
  store ptr null, ptr %MapUnitToSliceGroupMap, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end
  ret i32 0
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @FmoGetNumberOfSliceGroup(ptr nocapture noundef readonly %p_Vid) local_unnamed_addr #3 {
entry:
  %NumberOfSliceGroups = getelementptr inbounds i8, ptr %p_Vid, i64 856720
  %0 = load i32, ptr %NumberOfSliceGroups, align 8
  ret i32 %0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local range(i32 -1, -2147483648) i32 @FmoGetLastMBOfPicture(ptr nocapture noundef readonly %p_Vid) local_unnamed_addr #4 {
entry:
  %NumberOfSliceGroups.i = getelementptr inbounds i8, ptr %p_Vid, i64 856720
  %0 = load i32, ptr %NumberOfSliceGroups.i, align 8
  %sub = add nsw i32 %0, -1
  %PicSizeInMbs.i = getelementptr inbounds i8, ptr %p_Vid, i64 849012
  %1 = load i32, ptr %PicSizeInMbs.i, align 4
  %MbToSliceGroupMap.i.i = getelementptr inbounds i8, ptr %p_Vid, i64 856704
  %2 = zext i32 %1 to i64
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i, %entry
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body.i ], [ %2, %entry ]
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %indvars.i = trunc i64 %indvars.iv.next.i to i32
  %cmp.i = icmp sgt i32 %indvars.i, -1
  br i1 %cmp.i, label %for.body.i, label %FmoGetLastMBInSliceGroup.exit

for.body.i:                                       ; preds = %for.cond.i
  %3 = load ptr, ptr %MbToSliceGroupMap.i.i, align 8
  %idxprom.i.i = and i64 %indvars.iv.next.i, 2147483647
  %arrayidx.i.i = getelementptr inbounds i32, ptr %3, i64 %idxprom.i.i
  %4 = load i32, ptr %arrayidx.i.i, align 4
  %cmp1.i = icmp eq i32 %4, %sub
  br i1 %cmp1.i, label %FmoGetLastMBInSliceGroup.exit, label %for.cond.i

FmoGetLastMBInSliceGroup.exit:                    ; preds = %for.cond.i, %for.body.i
  %retval.0.i = phi i32 [ %indvars.i, %for.body.i ], [ -1, %for.cond.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local range(i32 -1, -2147483648) i32 @FmoGetLastMBInSliceGroup(ptr nocapture noundef readonly %p_Vid, i32 noundef %SliceGroup) local_unnamed_addr #4 {
entry:
  %PicSizeInMbs = getelementptr inbounds i8, ptr %p_Vid, i64 849012
  %0 = load i32, ptr %PicSizeInMbs, align 4
  %MbToSliceGroupMap.i = getelementptr inbounds i8, ptr %p_Vid, i64 856704
  %1 = zext i32 %0 to i64
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ %1, %entry ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %indvars = trunc i64 %indvars.iv.next to i32
  %cmp = icmp sgt i32 %indvars, -1
  br i1 %cmp, label %for.body, label %cleanup

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %MbToSliceGroupMap.i, align 8
  %idxprom.i = and i64 %indvars.iv.next, 2147483647
  %arrayidx.i = getelementptr inbounds i32, ptr %2, i64 %idxprom.i
  %3 = load i32, ptr %arrayidx.i, align 4
  %cmp1 = icmp eq i32 %3, %SliceGroup
  br i1 %cmp1, label %cleanup, label %for.cond

cleanup:                                          ; preds = %for.cond, %for.body
  %retval.0 = phi i32 [ %indvars, %for.body ], [ -1, %for.cond ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @FmoGetSliceGroupId(ptr nocapture noundef readonly %p_Vid, i32 noundef %mb) local_unnamed_addr #5 {
entry:
  %MbToSliceGroupMap = getelementptr inbounds i8, ptr %p_Vid, i64 856704
  %0 = load ptr, ptr %MbToSliceGroupMap, align 8
  %idxprom = sext i32 %mb to i64
  %arrayidx = getelementptr inbounds i32, ptr %0, i64 %idxprom
  %1 = load i32, ptr %arrayidx, align 4
  ret i32 %1
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local range(i32 -2147483647, -2147483648) i32 @FmoGetNextMBNr(ptr nocapture noundef readonly %p_Vid, i32 noundef %CurrentMbNr) local_unnamed_addr #4 {
entry:
  %MbToSliceGroupMap.i = getelementptr inbounds i8, ptr %p_Vid, i64 856704
  %0 = load ptr, ptr %MbToSliceGroupMap.i, align 8
  %idxprom.i = sext i32 %CurrentMbNr to i64
  %arrayidx.i = getelementptr inbounds i32, ptr %0, i64 %idxprom.i
  %1 = load i32, ptr %arrayidx.i, align 4
  %PicSizeInMbs = getelementptr inbounds i8, ptr %p_Vid, i64 849012
  %2 = load i32, ptr %PicSizeInMbs, align 4
  %3 = sext i32 %2 to i64
  br label %while.cond

while.cond:                                       ; preds = %land.rhs, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %land.rhs ], [ %idxprom.i, %entry ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %cmp = icmp slt i64 %indvars.iv.next, %3
  br i1 %cmp, label %land.rhs, label %while.end

land.rhs:                                         ; preds = %while.cond
  %arrayidx = getelementptr inbounds i32, ptr %0, i64 %indvars.iv.next
  %4 = load i32, ptr %arrayidx, align 4
  %cmp1.not = icmp eq i32 %4, %1
  br i1 %cmp1.not, label %while.end.split.loop.exit12, label %while.cond

while.end.split.loop.exit12:                      ; preds = %land.rhs
  %5 = trunc nsw i64 %indvars.iv.next to i32
  br label %while.end

while.end:                                        ; preds = %while.cond, %while.end.split.loop.exit12
  %inc. = phi i32 [ %5, %while.end.split.loop.exit12 ], [ -1, %while.cond ]
  ret i32 %inc.
}

declare void @error(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #11

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nounwind }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.unroll.disable"}
!7 = distinct !{!7, !8, !9}
!8 = !{!"llvm.loop.isvectorized", i32 1}
!9 = !{!"llvm.loop.unroll.runtime.disable"}
!10 = distinct !{!10, !8}
!11 = distinct !{!11, !6}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.unswitch.partial.disable"}
!14 = distinct !{!14, !6}
!15 = distinct !{!15, !8, !9}
!16 = distinct !{!16, !6}
!17 = distinct !{!17, !8}
