; ModuleID = 'x264_src/common/pixel.c'
source_filename = "x264_src/common/pixel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i64 @x264_pixel_ssd_wxh(ptr nocapture noundef readonly %pf, ptr noundef %pix1, i32 noundef %i_pix1, ptr noundef %pix2, i32 noundef %i_pix2, i32 noundef %i_width, i32 noundef %i_height) local_unnamed_addr #0 {
entry:
  %sub = add nsw i32 %i_height, -15
  %cmp231 = icmp sgt i32 %i_height, 15
  br i1 %cmp231, label %for.body.lr.ph, label %for.end45

for.body.lr.ph:                                   ; preds = %entry
  %conv = zext i32 %i_pix1 to i64
  %0 = ptrtoint ptr %pix1 to i64
  %or = or i64 %conv, %0
  %1 = ptrtoint ptr %pix2 to i64
  %or1 = or i64 %or, %1
  %conv2 = zext i32 %i_pix2 to i64
  %or3 = or i64 %or1, %conv2
  %and = and i64 %or3, 15
  %tobool.not = icmp eq i64 %and, 0
  %sub7 = add nsw i32 %i_width, -15
  %cmp8223 = icmp sgt i32 %i_width, 15
  %ssd = getelementptr inbounds i8, ptr %pf, i64 56
  %sub21 = add nsw i32 %i_width, -7
  %arrayidx26 = getelementptr inbounds i8, ptr %pf, i64 72
  br i1 %tobool.not, label %for.body.us.preheader, label %for.body.lr.ph.split

for.body.us.preheader:                            ; preds = %for.body.lr.ph
  %2 = sext i32 %i_pix1 to i64
  %3 = sext i32 %i_pix2 to i64
  %4 = zext nneg i32 %sub to i64
  br label %for.body.us

for.body.us:                                      ; preds = %for.body.us.preheader, %for.end42.us
  %indvars.iv306 = phi i64 [ 0, %for.body.us.preheader ], [ %indvars.iv.next307, %for.end42.us ]
  %i_ssd.0234.us = phi i64 [ 0, %for.body.us.preheader ], [ %i_ssd.3.lcssa.us, %for.end42.us ]
  br i1 %cmp8223, label %for.body10.lr.ph.us, label %if.end.loopexit.us

for.end42.us:                                     ; preds = %for.body24.us, %if.end.loopexit.us
  %i_ssd.3.lcssa.us = phi i64 [ %i_ssd.1.lcssa.us, %if.end.loopexit.us ], [ %add39.us, %for.body24.us ]
  %indvars.iv.next307 = add nuw nsw i64 %indvars.iv306, 16
  %cmp.us = icmp ult i64 %indvars.iv.next307, %4
  br i1 %cmp.us, label %for.body.us, label %for.end45.loopexit

for.body24.us:                                    ; preds = %for.body24.lr.ph.us, %for.body24.us
  %indvars.iv303 = phi i64 [ %13, %for.body24.lr.ph.us ], [ %indvars.iv.next304, %for.body24.us ]
  %i_ssd.3229.us = phi i64 [ %i_ssd.1.lcssa.us, %for.body24.lr.ph.us ], [ %add39.us, %for.body24.us ]
  %5 = load ptr, ptr %arrayidx26, align 8
  %add.ptr31.us = getelementptr inbounds i8, ptr %add.ptr29.us, i64 %indvars.iv303
  %add.ptr36.us = getelementptr inbounds i8, ptr %add.ptr34.us, i64 %indvars.iv303
  %call37.us = tail call i32 %5(ptr noundef %add.ptr31.us, i32 noundef %i_pix1, ptr noundef %add.ptr36.us, i32 noundef %i_pix2) #13
  %conv38.us = sext i32 %call37.us to i64
  %add39.us = add nsw i64 %i_ssd.3229.us, %conv38.us
  %indvars.iv.next304 = add nuw nsw i64 %indvars.iv303, 8
  %6 = trunc nuw i64 %indvars.iv.next304 to i32
  %cmp22.us = icmp sgt i32 %sub21, %6
  br i1 %cmp22.us, label %for.body24.us, label %for.end42.us

for.body10.us:                                    ; preds = %for.body10.lr.ph.us, %for.body10.us
  %indvars.iv300 = phi i64 [ 0, %for.body10.lr.ph.us ], [ %indvars.iv.next301, %for.body10.us ]
  %i_ssd.1225.us = phi i64 [ %i_ssd.0234.us, %for.body10.lr.ph.us ], [ %add.us, %for.body10.us ]
  %7 = load ptr, ptr %ssd, align 8
  %add.ptr12.us = getelementptr inbounds i8, ptr %add.ptr.us, i64 %indvars.iv300
  %add.ptr17.us = getelementptr inbounds i8, ptr %add.ptr15.us, i64 %indvars.iv300
  %call.us = tail call i32 %7(ptr noundef %add.ptr12.us, i32 noundef %i_pix1, ptr noundef %add.ptr17.us, i32 noundef %i_pix2) #13
  %conv18.us = sext i32 %call.us to i64
  %add.us = add nsw i64 %i_ssd.1225.us, %conv18.us
  %indvars.iv.next301 = add nuw nsw i64 %indvars.iv300, 16
  %8 = trunc nuw i64 %indvars.iv.next301 to i32
  %cmp8.us = icmp sgt i32 %sub7, %8
  br i1 %cmp8.us, label %for.body10.us, label %if.end.loopexit.us

if.end.loopexit.us:                               ; preds = %for.body10.us, %for.body.us
  %x.0.lcssa.us = phi i32 [ 0, %for.body.us ], [ %8, %for.body10.us ]
  %i_ssd.1.lcssa.us = phi i64 [ %i_ssd.0234.us, %for.body.us ], [ %add.us, %for.body10.us ]
  %cmp22227.us = icmp slt i32 %x.0.lcssa.us, %sub21
  br i1 %cmp22227.us, label %for.body24.lr.ph.us, label %for.end42.us

for.body10.lr.ph.us:                              ; preds = %for.body.us
  %9 = mul nsw i64 %indvars.iv306, %2
  %add.ptr.us = getelementptr inbounds i8, ptr %pix1, i64 %9
  %10 = mul nsw i64 %indvars.iv306, %3
  %add.ptr15.us = getelementptr inbounds i8, ptr %pix2, i64 %10
  br label %for.body10.us

for.body24.lr.ph.us:                              ; preds = %if.end.loopexit.us
  %11 = mul nsw i64 %indvars.iv306, %2
  %add.ptr29.us = getelementptr inbounds i8, ptr %pix1, i64 %11
  %12 = mul nsw i64 %indvars.iv306, %3
  %add.ptr34.us = getelementptr inbounds i8, ptr %pix2, i64 %12
  %13 = zext i32 %x.0.lcssa.us to i64
  br label %for.body24.us

for.body.lr.ph.split:                             ; preds = %for.body.lr.ph
  %cmp22227 = icmp sgt i32 %i_width, 7
  br i1 %cmp22227, label %for.body.us238.preheader, label %for.body.preheader

for.body.preheader:                               ; preds = %for.body.lr.ph.split
  %14 = and i32 %i_height, 2147483632
  br label %for.end45

for.body.us238.preheader:                         ; preds = %for.body.lr.ph.split
  %15 = zext nneg i32 %sub to i64
  %16 = sext i32 %i_pix1 to i64
  %17 = sext i32 %i_pix2 to i64
  br label %for.body.us238

for.body.us238:                                   ; preds = %for.body.us238.preheader, %for.cond20.for.end42_crit_edge.us263
  %indvars.iv295 = phi i64 [ 0, %for.body.us238.preheader ], [ %indvars.iv.next296, %for.cond20.for.end42_crit_edge.us263 ]
  %i_ssd.0234.us239 = phi i64 [ 0, %for.body.us238.preheader ], [ %add39.us253, %for.cond20.for.end42_crit_edge.us263 ]
  %18 = mul nsw i64 %indvars.iv295, %16
  %add.ptr29.us259 = getelementptr inbounds i8, ptr %pix1, i64 %18
  %19 = mul nsw i64 %indvars.iv295, %17
  %add.ptr34.us262 = getelementptr inbounds i8, ptr %pix2, i64 %19
  br label %for.body24.us245

for.body24.us245:                                 ; preds = %for.body.us238, %for.body24.us245
  %indvars.iv = phi i64 [ 0, %for.body.us238 ], [ %indvars.iv.next, %for.body24.us245 ]
  %i_ssd.3229.us246 = phi i64 [ %i_ssd.0234.us239, %for.body.us238 ], [ %add39.us253, %for.body24.us245 ]
  %20 = load ptr, ptr %arrayidx26, align 8
  %add.ptr31.us249 = getelementptr inbounds i8, ptr %add.ptr29.us259, i64 %indvars.iv
  %add.ptr36.us250 = getelementptr inbounds i8, ptr %add.ptr34.us262, i64 %indvars.iv
  %call37.us251 = tail call i32 %20(ptr noundef %add.ptr31.us249, i32 noundef %i_pix1, ptr noundef %add.ptr36.us250, i32 noundef %i_pix2) #13
  %conv38.us252 = sext i32 %call37.us251 to i64
  %add39.us253 = add nsw i64 %i_ssd.3229.us246, %conv38.us252
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8
  %21 = trunc nuw i64 %indvars.iv.next to i32
  %cmp22.us255 = icmp sgt i32 %sub21, %21
  br i1 %cmp22.us255, label %for.body24.us245, label %for.cond20.for.end42_crit_edge.us263

for.cond20.for.end42_crit_edge.us263:             ; preds = %for.body24.us245
  %indvars.iv.next296 = add nuw nsw i64 %indvars.iv295, 16
  %cmp.us244 = icmp ult i64 %indvars.iv.next296, %15
  br i1 %cmp.us244, label %for.body.us238, label %for.end45.loopexit292

for.end45.loopexit:                               ; preds = %for.end42.us
  %22 = trunc nsw i64 %indvars.iv.next307 to i32
  br label %for.end45

for.end45.loopexit292:                            ; preds = %for.cond20.for.end42_crit_edge.us263
  %23 = trunc nsw i64 %indvars.iv.next296 to i32
  br label %for.end45

for.end45:                                        ; preds = %for.body.preheader, %for.end45.loopexit292, %for.end45.loopexit, %entry
  %y.0.lcssa = phi i32 [ 0, %entry ], [ %22, %for.end45.loopexit ], [ %23, %for.end45.loopexit292 ], [ %14, %for.body.preheader ]
  %i_ssd.0.lcssa = phi i64 [ 0, %entry ], [ %i_ssd.3.lcssa.us, %for.end45.loopexit ], [ %add39.us253, %for.end45.loopexit292 ], [ 0, %for.body.preheader ]
  %sub46 = add nsw i32 %i_height, -7
  %cmp47 = icmp slt i32 %y.0.lcssa, %sub46
  br i1 %cmp47, label %for.cond51.preheader, label %if.end74

for.cond51.preheader:                             ; preds = %for.end45
  %sub52 = add nsw i32 %i_width, -7
  %cmp53269 = icmp sgt i32 %i_width, 7
  br i1 %cmp53269, label %for.body55.lr.ph, label %if.end74

for.body55.lr.ph:                                 ; preds = %for.cond51.preheader
  %arrayidx57 = getelementptr inbounds i8, ptr %pf, i64 80
  %mul58 = mul nsw i32 %y.0.lcssa, %i_pix1
  %idx.ext59 = sext i32 %mul58 to i64
  %add.ptr60 = getelementptr inbounds i8, ptr %pix1, i64 %idx.ext59
  %mul63 = mul nsw i32 %y.0.lcssa, %i_pix2
  %idx.ext64 = sext i32 %mul63 to i64
  %add.ptr65 = getelementptr inbounds i8, ptr %pix2, i64 %idx.ext64
  br label %for.body55

for.body55:                                       ; preds = %for.body55.lr.ph, %for.body55
  %indvars.iv313 = phi i64 [ 0, %for.body55.lr.ph ], [ %indvars.iv.next314, %for.body55 ]
  %i_ssd.4271 = phi i64 [ %i_ssd.0.lcssa, %for.body55.lr.ph ], [ %add70, %for.body55 ]
  %24 = load ptr, ptr %arrayidx57, align 8
  %add.ptr62 = getelementptr inbounds i8, ptr %add.ptr60, i64 %indvars.iv313
  %add.ptr67 = getelementptr inbounds i8, ptr %add.ptr65, i64 %indvars.iv313
  %call68 = tail call i32 %24(ptr noundef %add.ptr62, i32 noundef %i_pix1, ptr noundef %add.ptr67, i32 noundef %i_pix2) #13
  %conv69 = sext i32 %call68 to i64
  %add70 = add nsw i64 %i_ssd.4271, %conv69
  %indvars.iv.next314 = add nuw nsw i64 %indvars.iv313, 8
  %25 = trunc nuw i64 %indvars.iv.next314 to i32
  %cmp53 = icmp sgt i32 %sub52, %25
  br i1 %cmp53, label %for.body55, label %if.end74

if.end74:                                         ; preds = %for.body55, %for.cond51.preheader, %for.end45
  %i_ssd.5 = phi i64 [ %i_ssd.0.lcssa, %for.end45 ], [ %i_ssd.0.lcssa, %for.cond51.preheader ], [ %add70, %for.body55 ]
  %and75 = and i32 %i_width, 7
  %tobool76.not = icmp eq i32 %and75, 0
  br i1 %tobool76.not, label %if.end108, label %for.cond78.preheader

for.cond78.preheader:                             ; preds = %if.end74
  %and79 = and i32 %i_height, -8
  %cmp80276 = icmp sgt i32 %and79, 0
  br i1 %cmp80276, label %for.body82.lr.ph, label %if.end108

for.body82.lr.ph:                                 ; preds = %for.cond78.preheader
  %and84 = and i32 %i_width, -8
  %cmp86272.not = icmp eq i32 %and84, %i_width
  br i1 %cmp86272.not, label %if.end108, label %for.body82.us.preheader

for.body82.us.preheader:                          ; preds = %for.body82.lr.ph
  %26 = sext i32 %and84 to i64
  %27 = sext i32 %i_width to i64
  %28 = sext i32 %i_pix1 to i64
  %29 = sext i32 %i_pix2 to i64
  %wide.trip.count = zext nneg i32 %and79 to i64
  %30 = or disjoint i64 %26, 1
  %smax = tail call i64 @llvm.smax.i64(i64 %30, i64 %27)
  %31 = sub i64 %smax, %26
  %min.iters.check = icmp ult i64 %31, 4
  %n.mod.vf = and i64 %smax, 3
  %n.vec = sub i64 %31, %n.mod.vf
  %ind.end = add i64 %n.vec, %26
  %cmp.n = icmp eq i64 %n.mod.vf, 0
  br label %for.body82.us

for.body82.us:                                    ; preds = %for.body82.us.preheader, %for.cond85.for.cond.cleanup88_crit_edge.us
  %indvars.iv321 = phi i64 [ 0, %for.body82.us.preheader ], [ %indvars.iv.next322, %for.cond85.for.cond.cleanup88_crit_edge.us ]
  %i_ssd.6278.us = phi i64 [ %i_ssd.5, %for.body82.us.preheader ], [ %add102.us.lcssa, %for.cond85.for.cond.cleanup88_crit_edge.us ]
  %32 = mul nsw i64 %indvars.iv321, %28
  %33 = mul nsw i64 %indvars.iv321, %29
  %invariant.gep = getelementptr i8, ptr %pix1, i64 %32
  %invariant.gep338 = getelementptr i8, ptr %pix2, i64 %33
  br i1 %min.iters.check, label %for.body89.us.preheader, label %vector.body

vector.body:                                      ; preds = %for.body82.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %for.body82.us ]
  %vec.phi = phi i64 [ %73, %vector.body ], [ %i_ssd.6278.us, %for.body82.us ]
  %vec.phi344 = phi i64 [ %74, %vector.body ], [ 0, %for.body82.us ]
  %vec.phi345 = phi i64 [ %75, %vector.body ], [ 0, %for.body82.us ]
  %vec.phi346 = phi i64 [ %76, %vector.body ], [ 0, %for.body82.us ]
  %offset.idx = add i64 %index, %26
  %34 = or disjoint i64 %offset.idx, 1
  %35 = or disjoint i64 %offset.idx, 2
  %36 = or disjoint i64 %offset.idx, 3
  %37 = getelementptr i8, ptr %invariant.gep, i64 %offset.idx
  %38 = getelementptr i8, ptr %invariant.gep, i64 %34
  %39 = getelementptr i8, ptr %invariant.gep, i64 %35
  %40 = getelementptr i8, ptr %invariant.gep, i64 %36
  %41 = load i8, ptr %37, align 1
  %42 = load i8, ptr %38, align 1
  %43 = load i8, ptr %39, align 1
  %44 = load i8, ptr %40, align 1
  %45 = zext i8 %41 to i32
  %46 = zext i8 %42 to i32
  %47 = zext i8 %43 to i32
  %48 = zext i8 %44 to i32
  %49 = getelementptr i8, ptr %invariant.gep338, i64 %offset.idx
  %50 = getelementptr i8, ptr %invariant.gep338, i64 %34
  %51 = getelementptr i8, ptr %invariant.gep338, i64 %35
  %52 = getelementptr i8, ptr %invariant.gep338, i64 %36
  %53 = load i8, ptr %49, align 1
  %54 = load i8, ptr %50, align 1
  %55 = load i8, ptr %51, align 1
  %56 = load i8, ptr %52, align 1
  %57 = zext i8 %53 to i32
  %58 = zext i8 %54 to i32
  %59 = zext i8 %55 to i32
  %60 = zext i8 %56 to i32
  %61 = sub nsw i32 %45, %57
  %62 = sub nsw i32 %46, %58
  %63 = sub nsw i32 %47, %59
  %64 = sub nsw i32 %48, %60
  %65 = mul nsw i32 %61, %61
  %66 = mul nsw i32 %62, %62
  %67 = mul nsw i32 %63, %63
  %68 = mul nsw i32 %64, %64
  %69 = zext nneg i32 %65 to i64
  %70 = zext nneg i32 %66 to i64
  %71 = zext nneg i32 %67 to i64
  %72 = zext nneg i32 %68 to i64
  %73 = add i64 %vec.phi, %69
  %74 = add i64 %vec.phi344, %70
  %75 = add i64 %vec.phi345, %71
  %76 = add i64 %vec.phi346, %72
  %index.next = add nuw i64 %index, 4
  %77 = icmp eq i64 %index.next, %n.vec
  br i1 %77, label %middle.block, label %vector.body, !llvm.loop !5

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add i64 %74, %73
  %bin.rdx347 = add i64 %75, %bin.rdx
  %bin.rdx348 = add i64 %76, %bin.rdx347
  br i1 %cmp.n, label %for.cond85.for.cond.cleanup88_crit_edge.us, label %for.body89.us.preheader

for.body89.us.preheader:                          ; preds = %middle.block, %for.body82.us
  %indvars.iv316.ph = phi i64 [ %26, %for.body82.us ], [ %ind.end, %middle.block ]
  %i_ssd.7274.us.ph = phi i64 [ %i_ssd.6278.us, %for.body82.us ], [ %bin.rdx348, %middle.block ]
  br label %for.body89.us

for.body89.us:                                    ; preds = %for.body89.us.preheader, %for.body89.us
  %indvars.iv316 = phi i64 [ %indvars.iv.next317, %for.body89.us ], [ %indvars.iv316.ph, %for.body89.us.preheader ]
  %i_ssd.7274.us = phi i64 [ %add102.us, %for.body89.us ], [ %i_ssd.7274.us.ph, %for.body89.us.preheader ]
  %gep = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv316
  %78 = load i8, ptr %gep, align 1
  %conv93.us = zext i8 %78 to i32
  %gep339 = getelementptr i8, ptr %invariant.gep338, i64 %indvars.iv316
  %79 = load i8, ptr %gep339, align 1
  %conv98.us = zext i8 %79 to i32
  %sub99.us = sub nsw i32 %conv93.us, %conv98.us
  %mul100.us = mul nsw i32 %sub99.us, %sub99.us
  %conv101.us = zext nneg i32 %mul100.us to i64
  %add102.us = add nsw i64 %i_ssd.7274.us, %conv101.us
  %indvars.iv.next317 = add nsw i64 %indvars.iv316, 1
  %cmp86.us = icmp slt i64 %indvars.iv.next317, %27
  br i1 %cmp86.us, label %for.body89.us, label %for.cond85.for.cond.cleanup88_crit_edge.us, !llvm.loop !8

for.cond85.for.cond.cleanup88_crit_edge.us:       ; preds = %for.body89.us, %middle.block
  %add102.us.lcssa = phi i64 [ %bin.rdx348, %middle.block ], [ %add102.us, %for.body89.us ]
  %indvars.iv.next322 = add nuw nsw i64 %indvars.iv321, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next322, %wide.trip.count
  br i1 %exitcond.not, label %if.end108, label %for.body82.us

if.end108:                                        ; preds = %for.cond85.for.cond.cleanup88_crit_edge.us, %for.body82.lr.ph, %for.cond78.preheader, %if.end74
  %i_ssd.8 = phi i64 [ %i_ssd.5, %if.end74 ], [ %i_ssd.5, %for.cond78.preheader ], [ %i_ssd.5, %for.body82.lr.ph ], [ %add102.us.lcssa, %for.cond85.for.cond.cleanup88_crit_edge.us ]
  %and109 = and i32 %i_height, 7
  %tobool110.not = icmp eq i32 %and109, 0
  br i1 %tobool110.not, label %if.end144, label %if.then111

if.then111:                                       ; preds = %if.end108
  %and112 = and i32 %i_height, -8
  %cmp114285.not = icmp ne i32 %and112, %i_height
  %cmp119281 = icmp sgt i32 %i_width, 0
  %or.cond = and i1 %cmp114285.not, %cmp119281
  br i1 %or.cond, label %for.cond118.preheader.us.preheader, label %if.end144

for.cond118.preheader.us.preheader:               ; preds = %if.then111
  %80 = sext i32 %and112 to i64
  %81 = sext i32 %i_height to i64
  %82 = sext i32 %i_pix1 to i64
  %83 = sext i32 %i_pix2 to i64
  %wide.trip.count331 = zext nneg i32 %i_width to i64
  %min.iters.check351 = icmp ult i32 %i_width, 4
  %n.vec354 = and i64 %wide.trip.count331, 2147483644
  %cmp.n366 = icmp eq i64 %n.vec354, %wide.trip.count331
  %xtraiter = and i64 %wide.trip.count331, 3
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %for.cond118.preheader.us

for.cond118.preheader.us:                         ; preds = %for.cond118.preheader.us.preheader, %for.cond118.for.cond.cleanup121_crit_edge.us
  %indvars.iv333 = phi i64 [ %80, %for.cond118.preheader.us.preheader ], [ %indvars.iv.next334, %for.cond118.for.cond.cleanup121_crit_edge.us ]
  %i_ssd.9287.us = phi i64 [ %i_ssd.8, %for.cond118.preheader.us.preheader ], [ %add137.us.lcssa, %for.cond118.for.cond.cleanup121_crit_edge.us ]
  %84 = mul nsw i64 %indvars.iv333, %82
  %85 = mul nsw i64 %indvars.iv333, %83
  %invariant.gep340 = getelementptr i8, ptr %pix1, i64 %84
  %invariant.gep342 = getelementptr i8, ptr %pix2, i64 %85
  br i1 %min.iters.check351, label %for.body122.us.preheader, label %vector.body356

vector.body356:                                   ; preds = %for.cond118.preheader.us, %vector.body356
  %index357 = phi i64 [ %index.next362, %vector.body356 ], [ 0, %for.cond118.preheader.us ]
  %vec.phi358 = phi i64 [ %125, %vector.body356 ], [ %i_ssd.9287.us, %for.cond118.preheader.us ]
  %vec.phi359 = phi i64 [ %126, %vector.body356 ], [ 0, %for.cond118.preheader.us ]
  %vec.phi360 = phi i64 [ %127, %vector.body356 ], [ 0, %for.cond118.preheader.us ]
  %vec.phi361 = phi i64 [ %128, %vector.body356 ], [ 0, %for.cond118.preheader.us ]
  %86 = or disjoint i64 %index357, 1
  %87 = or disjoint i64 %index357, 2
  %88 = or disjoint i64 %index357, 3
  %89 = getelementptr i8, ptr %invariant.gep340, i64 %index357
  %90 = getelementptr i8, ptr %invariant.gep340, i64 %86
  %91 = getelementptr i8, ptr %invariant.gep340, i64 %87
  %92 = getelementptr i8, ptr %invariant.gep340, i64 %88
  %93 = load i8, ptr %89, align 1
  %94 = load i8, ptr %90, align 1
  %95 = load i8, ptr %91, align 1
  %96 = load i8, ptr %92, align 1
  %97 = zext i8 %93 to i32
  %98 = zext i8 %94 to i32
  %99 = zext i8 %95 to i32
  %100 = zext i8 %96 to i32
  %101 = getelementptr i8, ptr %invariant.gep342, i64 %index357
  %102 = getelementptr i8, ptr %invariant.gep342, i64 %86
  %103 = getelementptr i8, ptr %invariant.gep342, i64 %87
  %104 = getelementptr i8, ptr %invariant.gep342, i64 %88
  %105 = load i8, ptr %101, align 1
  %106 = load i8, ptr %102, align 1
  %107 = load i8, ptr %103, align 1
  %108 = load i8, ptr %104, align 1
  %109 = zext i8 %105 to i32
  %110 = zext i8 %106 to i32
  %111 = zext i8 %107 to i32
  %112 = zext i8 %108 to i32
  %113 = sub nsw i32 %97, %109
  %114 = sub nsw i32 %98, %110
  %115 = sub nsw i32 %99, %111
  %116 = sub nsw i32 %100, %112
  %117 = mul nsw i32 %113, %113
  %118 = mul nsw i32 %114, %114
  %119 = mul nsw i32 %115, %115
  %120 = mul nsw i32 %116, %116
  %121 = zext nneg i32 %117 to i64
  %122 = zext nneg i32 %118 to i64
  %123 = zext nneg i32 %119 to i64
  %124 = zext nneg i32 %120 to i64
  %125 = add i64 %vec.phi358, %121
  %126 = add i64 %vec.phi359, %122
  %127 = add i64 %vec.phi360, %123
  %128 = add i64 %vec.phi361, %124
  %index.next362 = add nuw i64 %index357, 4
  %129 = icmp eq i64 %index.next362, %n.vec354
  br i1 %129, label %middle.block349, label %vector.body356, !llvm.loop !9

middle.block349:                                  ; preds = %vector.body356
  %bin.rdx363 = add i64 %126, %125
  %bin.rdx364 = add i64 %127, %bin.rdx363
  %bin.rdx365 = add i64 %128, %bin.rdx364
  br i1 %cmp.n366, label %for.cond118.for.cond.cleanup121_crit_edge.us, label %for.body122.us.preheader

for.body122.us.preheader:                         ; preds = %middle.block349, %for.cond118.preheader.us
  %indvars.iv326.ph = phi i64 [ 0, %for.cond118.preheader.us ], [ %n.vec354, %middle.block349 ]
  %i_ssd.10283.us.ph = phi i64 [ %i_ssd.9287.us, %for.cond118.preheader.us ], [ %bin.rdx365, %middle.block349 ]
  br i1 %lcmp.mod.not, label %for.body122.us.prol.loopexit, label %for.body122.us.prol

for.body122.us.prol:                              ; preds = %for.body122.us.preheader, %for.body122.us.prol
  %indvars.iv326.prol = phi i64 [ %indvars.iv.next327.prol, %for.body122.us.prol ], [ %indvars.iv326.ph, %for.body122.us.preheader ]
  %i_ssd.10283.us.prol = phi i64 [ %add137.us.prol, %for.body122.us.prol ], [ %i_ssd.10283.us.ph, %for.body122.us.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %for.body122.us.prol ], [ 0, %for.body122.us.preheader ]
  %gep341.prol = getelementptr i8, ptr %invariant.gep340, i64 %indvars.iv326.prol
  %130 = load i8, ptr %gep341.prol, align 1
  %conv128.us.prol = zext i8 %130 to i32
  %gep343.prol = getelementptr i8, ptr %invariant.gep342, i64 %indvars.iv326.prol
  %131 = load i8, ptr %gep343.prol, align 1
  %conv133.us.prol = zext i8 %131 to i32
  %sub134.us.prol = sub nsw i32 %conv128.us.prol, %conv133.us.prol
  %mul135.us.prol = mul nsw i32 %sub134.us.prol, %sub134.us.prol
  %conv136.us.prol = zext nneg i32 %mul135.us.prol to i64
  %add137.us.prol = add nsw i64 %i_ssd.10283.us.prol, %conv136.us.prol
  %indvars.iv.next327.prol = add nuw nsw i64 %indvars.iv326.prol, 1
  %prol.iter.next = add i64 %prol.iter, 1
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %for.body122.us.prol.loopexit, label %for.body122.us.prol, !llvm.loop !10

for.body122.us.prol.loopexit:                     ; preds = %for.body122.us.prol, %for.body122.us.preheader
  %add137.us.lcssa371.unr = phi i64 [ poison, %for.body122.us.preheader ], [ %add137.us.prol, %for.body122.us.prol ]
  %indvars.iv326.unr = phi i64 [ %indvars.iv326.ph, %for.body122.us.preheader ], [ %indvars.iv.next327.prol, %for.body122.us.prol ]
  %i_ssd.10283.us.unr = phi i64 [ %i_ssd.10283.us.ph, %for.body122.us.preheader ], [ %add137.us.prol, %for.body122.us.prol ]
  %132 = sub nsw i64 %indvars.iv326.ph, %wide.trip.count331
  %133 = icmp ugt i64 %132, -4
  br i1 %133, label %for.cond118.for.cond.cleanup121_crit_edge.us, label %for.body122.us

for.body122.us:                                   ; preds = %for.body122.us.prol.loopexit, %for.body122.us
  %indvars.iv326 = phi i64 [ %indvars.iv.next327.3, %for.body122.us ], [ %indvars.iv326.unr, %for.body122.us.prol.loopexit ]
  %i_ssd.10283.us = phi i64 [ %add137.us.3, %for.body122.us ], [ %i_ssd.10283.us.unr, %for.body122.us.prol.loopexit ]
  %gep341 = getelementptr i8, ptr %invariant.gep340, i64 %indvars.iv326
  %134 = load i8, ptr %gep341, align 1
  %conv128.us = zext i8 %134 to i32
  %gep343 = getelementptr i8, ptr %invariant.gep342, i64 %indvars.iv326
  %135 = load i8, ptr %gep343, align 1
  %conv133.us = zext i8 %135 to i32
  %sub134.us = sub nsw i32 %conv128.us, %conv133.us
  %mul135.us = mul nsw i32 %sub134.us, %sub134.us
  %conv136.us = zext nneg i32 %mul135.us to i64
  %add137.us = add nsw i64 %i_ssd.10283.us, %conv136.us
  %indvars.iv.next327 = add nuw nsw i64 %indvars.iv326, 1
  %gep341.1 = getelementptr i8, ptr %invariant.gep340, i64 %indvars.iv.next327
  %136 = load i8, ptr %gep341.1, align 1
  %conv128.us.1 = zext i8 %136 to i32
  %gep343.1 = getelementptr i8, ptr %invariant.gep342, i64 %indvars.iv.next327
  %137 = load i8, ptr %gep343.1, align 1
  %conv133.us.1 = zext i8 %137 to i32
  %sub134.us.1 = sub nsw i32 %conv128.us.1, %conv133.us.1
  %mul135.us.1 = mul nsw i32 %sub134.us.1, %sub134.us.1
  %conv136.us.1 = zext nneg i32 %mul135.us.1 to i64
  %add137.us.1 = add nsw i64 %add137.us, %conv136.us.1
  %indvars.iv.next327.1 = add nuw nsw i64 %indvars.iv326, 2
  %gep341.2 = getelementptr i8, ptr %invariant.gep340, i64 %indvars.iv.next327.1
  %138 = load i8, ptr %gep341.2, align 1
  %conv128.us.2 = zext i8 %138 to i32
  %gep343.2 = getelementptr i8, ptr %invariant.gep342, i64 %indvars.iv.next327.1
  %139 = load i8, ptr %gep343.2, align 1
  %conv133.us.2 = zext i8 %139 to i32
  %sub134.us.2 = sub nsw i32 %conv128.us.2, %conv133.us.2
  %mul135.us.2 = mul nsw i32 %sub134.us.2, %sub134.us.2
  %conv136.us.2 = zext nneg i32 %mul135.us.2 to i64
  %add137.us.2 = add nsw i64 %add137.us.1, %conv136.us.2
  %indvars.iv.next327.2 = add nuw nsw i64 %indvars.iv326, 3
  %gep341.3 = getelementptr i8, ptr %invariant.gep340, i64 %indvars.iv.next327.2
  %140 = load i8, ptr %gep341.3, align 1
  %conv128.us.3 = zext i8 %140 to i32
  %gep343.3 = getelementptr i8, ptr %invariant.gep342, i64 %indvars.iv.next327.2
  %141 = load i8, ptr %gep343.3, align 1
  %conv133.us.3 = zext i8 %141 to i32
  %sub134.us.3 = sub nsw i32 %conv128.us.3, %conv133.us.3
  %mul135.us.3 = mul nsw i32 %sub134.us.3, %sub134.us.3
  %conv136.us.3 = zext nneg i32 %mul135.us.3 to i64
  %add137.us.3 = add nsw i64 %add137.us.2, %conv136.us.3
  %indvars.iv.next327.3 = add nuw nsw i64 %indvars.iv326, 4
  %exitcond332.not.3 = icmp eq i64 %indvars.iv.next327.3, %wide.trip.count331
  br i1 %exitcond332.not.3, label %for.cond118.for.cond.cleanup121_crit_edge.us, label %for.body122.us, !llvm.loop !12

for.cond118.for.cond.cleanup121_crit_edge.us:     ; preds = %for.body122.us.prol.loopexit, %for.body122.us, %middle.block349
  %add137.us.lcssa = phi i64 [ %bin.rdx365, %middle.block349 ], [ %add137.us.lcssa371.unr, %for.body122.us.prol.loopexit ], [ %add137.us.3, %for.body122.us ]
  %indvars.iv.next334 = add nsw i64 %indvars.iv333, 1
  %cmp114.us = icmp slt i64 %indvars.iv.next334, %81
  br i1 %cmp114.us, label %for.cond118.preheader.us, label %if.end144

if.end144:                                        ; preds = %for.cond118.for.cond.cleanup121_crit_edge.us, %if.then111, %if.end108
  %i_ssd.11 = phi i64 [ %i_ssd.8, %if.end108 ], [ %i_ssd.8, %if.then111 ], [ %add137.us.lcssa, %for.cond118.for.cond.cleanup121_crit_edge.us ]
  ret i64 %i_ssd.11
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local float @x264_pixel_ssim_wxh(ptr nocapture noundef readonly %pf, ptr noundef %pix1, i32 noundef %stride1, ptr noundef %pix2, i32 noundef %stride2, i32 noundef %width, i32 noundef %height, ptr noundef %buf) local_unnamed_addr #0 {
entry:
  %div = sdiv i32 %width, 4
  %idx.ext = sext i32 %div to i64
  %add.ptr = getelementptr inbounds [4 x i32], ptr %buf, i64 %idx.ext
  %add.ptr1 = getelementptr inbounds i8, ptr %add.ptr, i64 48
  %shr = ashr i32 %width, 2
  %shr2 = ashr i32 %height, 2
  %cmp84 = icmp sgt i32 %shr2, 1
  br i1 %cmp84, label %for.cond3.preheader.lr.ph, label %for.cond.cleanup

for.cond3.preheader.lr.ph:                        ; preds = %entry
  %cmp770 = icmp sgt i32 %shr, 0
  %ssim_4x4x2_core = getelementptr inbounds i8, ptr %pf, i64 664
  %sub = add nsw i32 %shr, -1
  %ssim_end4 = getelementptr inbounds i8, ptr %pf, i64 672
  br i1 %cmp770, label %for.cond3.preheader.lr.ph.split.us, label %for.cond.cleanup

for.cond3.preheader.lr.ph.split.us:               ; preds = %for.cond3.preheader.lr.ph
  %cmp2380.not = icmp eq i32 %shr, 1
  %0 = zext nneg i32 %shr to i64
  %1 = sext i32 %stride1 to i64
  %2 = sext i32 %stride2 to i64
  br i1 %cmp2380.not, label %for.cond3.preheader.us.preheader, label %for.cond3.preheader.us.us.preheader

for.cond3.preheader.us.preheader:                 ; preds = %for.cond3.preheader.lr.ph.split.us
  %wide.trip.count = zext nneg i32 %shr2 to i64
  br label %for.cond3.preheader.us

for.cond3.preheader.us.us.preheader:              ; preds = %for.cond3.preheader.lr.ph.split.us
  %3 = zext nneg i32 %sub to i64
  %wide.trip.count167 = zext nneg i32 %shr2 to i64
  br label %for.cond3.preheader.us.us

for.cond3.preheader.us.us:                        ; preds = %for.cond3.preheader.us.us.preheader, %for.cond22.for.cond.cleanup24_crit_edge.us.us
  %indvars.iv164 = phi i64 [ 1, %for.cond3.preheader.us.us.preheader ], [ %indvars.iv.next165, %for.cond22.for.cond.cleanup24_crit_edge.us.us ]
  %sum1.088.us.us = phi ptr [ %add.ptr1, %for.cond3.preheader.us.us.preheader ], [ %sum1.1.lcssa.us.us, %for.cond22.for.cond.cleanup24_crit_edge.us.us ]
  %sum0.087.us.us = phi ptr [ %buf, %for.cond3.preheader.us.us.preheader ], [ %sum0.1.lcssa.us.us, %for.cond22.for.cond.cleanup24_crit_edge.us.us ]
  %ssim.086.us.us = phi float [ 0.000000e+00, %for.cond3.preheader.us.us.preheader ], [ %add35.us.us, %for.cond22.for.cond.cleanup24_crit_edge.us.us ]
  %z.085.us.us = phi i32 [ 0, %for.cond3.preheader.us.us.preheader ], [ %z.1.lcssa.us.us, %for.cond22.for.cond.cleanup24_crit_edge.us.us ]
  %4 = sext i32 %z.085.us.us to i64
  %cmp4.not72.us.us = icmp slt i64 %indvars.iv164, %4
  br i1 %cmp4.not72.us.us, label %for.cond22.preheader.us.us, label %for.cond6.preheader.us.us.us

for.body25.us.us:                                 ; preds = %for.cond22.preheader.us.us, %for.body25.us.us
  %indvars.iv161 = phi i64 [ 0, %for.cond22.preheader.us.us ], [ %indvars.iv.next162, %for.body25.us.us ]
  %ssim.181.us.us = phi float [ %ssim.086.us.us, %for.cond22.preheader.us.us ], [ %add35.us.us, %for.body25.us.us ]
  %5 = load ptr, ptr %ssim_end4, align 8
  %add.ptr27.us.us = getelementptr inbounds [4 x i32], ptr %sum0.1.lcssa.us.us, i64 %indvars.iv161
  %add.ptr29.us.us = getelementptr inbounds [4 x i32], ptr %sum1.1.lcssa.us.us, i64 %indvars.iv161
  %6 = trunc nuw nsw i64 %indvars.iv161 to i32
  %7 = xor i32 %6, -1
  %sub31.us.us = add nsw i32 %shr, %7
  %cond.us.us = tail call i32 @llvm.smin.i32(i32 %sub31.us.us, i32 4)
  %call.us.us = tail call float %5(ptr noundef %add.ptr27.us.us, ptr noundef %add.ptr29.us.us, i32 noundef %cond.us.us) #13
  %add35.us.us = fadd float %ssim.181.us.us, %call.us.us
  %indvars.iv.next162 = add nuw nsw i64 %indvars.iv161, 4
  %cmp23.us.us = icmp ult i64 %indvars.iv.next162, %3
  br i1 %cmp23.us.us, label %for.body25.us.us, label %for.cond22.for.cond.cleanup24_crit_edge.us.us

for.cond22.preheader.us.us.loopexit:              ; preds = %for.cond6.for.cond.cleanup8_crit_edge.us.us.us
  %8 = trunc nsw i64 %indvars.iv.next157 to i32
  br label %for.cond22.preheader.us.us

for.cond22.preheader.us.us:                       ; preds = %for.cond22.preheader.us.us.loopexit, %for.cond3.preheader.us.us
  %z.1.lcssa.us.us = phi i32 [ %z.085.us.us, %for.cond3.preheader.us.us ], [ %8, %for.cond22.preheader.us.us.loopexit ]
  %sum0.1.lcssa.us.us = phi ptr [ %sum0.087.us.us, %for.cond3.preheader.us.us ], [ %sum1.175.us.us.us, %for.cond22.preheader.us.us.loopexit ]
  %sum1.1.lcssa.us.us = phi ptr [ %sum1.088.us.us, %for.cond3.preheader.us.us ], [ %sum0.174.us.us.us, %for.cond22.preheader.us.us.loopexit ]
  br label %for.body25.us.us

for.cond6.preheader.us.us.us:                     ; preds = %for.cond3.preheader.us.us, %for.cond6.for.cond.cleanup8_crit_edge.us.us.us
  %indvars.iv156 = phi i64 [ %indvars.iv.next157, %for.cond6.for.cond.cleanup8_crit_edge.us.us.us ], [ %4, %for.cond3.preheader.us.us ]
  %sum1.175.us.us.us = phi ptr [ %sum0.174.us.us.us, %for.cond6.for.cond.cleanup8_crit_edge.us.us.us ], [ %sum1.088.us.us, %for.cond3.preheader.us.us ]
  %sum0.174.us.us.us = phi ptr [ %sum1.175.us.us.us, %for.cond6.for.cond.cleanup8_crit_edge.us.us.us ], [ %sum0.087.us.us, %for.cond3.preheader.us.us ]
  %9 = mul nsw i64 %indvars.iv156, %1
  %10 = mul nsw i64 %indvars.iv156, %2
  br label %for.body9.us.us.us

for.body9.us.us.us:                               ; preds = %for.body9.us.us.us, %for.cond6.preheader.us.us.us
  %indvars.iv149 = phi i64 [ %indvars.iv.next150, %for.body9.us.us.us ], [ 0, %for.cond6.preheader.us.us.us ]
  %11 = load ptr, ptr %ssim_4x4x2_core, align 8
  %12 = add nsw i64 %indvars.iv149, %9
  %13 = shl nsw i64 %12, 2
  %arrayidx.us.us.us = getelementptr inbounds i8, ptr %pix1, i64 %13
  %14 = add nsw i64 %indvars.iv149, %10
  %15 = shl nsw i64 %14, 2
  %arrayidx15.us.us.us = getelementptr inbounds i8, ptr %pix2, i64 %15
  %arrayidx17.us.us.us = getelementptr inbounds [4 x i32], ptr %sum1.175.us.us.us, i64 %indvars.iv149
  tail call void %11(ptr noundef %arrayidx.us.us.us, i32 noundef %stride1, ptr noundef %arrayidx15.us.us.us, i32 noundef %stride2, ptr noundef %arrayidx17.us.us.us) #13
  %indvars.iv.next150 = add nuw nsw i64 %indvars.iv149, 2
  %cmp7.us.us.us = icmp ult i64 %indvars.iv.next150, %0
  br i1 %cmp7.us.us.us, label %for.body9.us.us.us, label %for.cond6.for.cond.cleanup8_crit_edge.us.us.us

for.cond6.for.cond.cleanup8_crit_edge.us.us.us:   ; preds = %for.body9.us.us.us
  %indvars.iv.next157 = add nsw i64 %indvars.iv156, 1
  %cmp4.not.us.us.us.not = icmp slt i64 %indvars.iv156, %indvars.iv164
  br i1 %cmp4.not.us.us.us.not, label %for.cond6.preheader.us.us.us, label %for.cond22.preheader.us.us.loopexit

for.cond22.for.cond.cleanup24_crit_edge.us.us:    ; preds = %for.body25.us.us
  %indvars.iv.next165 = add nuw nsw i64 %indvars.iv164, 1
  %exitcond168.not = icmp eq i64 %indvars.iv.next165, %wide.trip.count167
  br i1 %exitcond168.not, label %for.cond.cleanup, label %for.cond3.preheader.us.us

for.cond3.preheader.us:                           ; preds = %for.cond3.preheader.us.preheader, %for.cond22.preheader.us
  %indvars.iv145 = phi i64 [ 1, %for.cond3.preheader.us.preheader ], [ %indvars.iv.next146, %for.cond22.preheader.us ]
  %sum1.088.us = phi ptr [ %add.ptr1, %for.cond3.preheader.us.preheader ], [ %sum1.1.lcssa.us, %for.cond22.preheader.us ]
  %sum0.087.us = phi ptr [ %buf, %for.cond3.preheader.us.preheader ], [ %sum0.1.lcssa.us, %for.cond22.preheader.us ]
  %z.085.us = phi i32 [ 0, %for.cond3.preheader.us.preheader ], [ %z.1.lcssa.us, %for.cond22.preheader.us ]
  %16 = sext i32 %z.085.us to i64
  %cmp4.not72.us = icmp slt i64 %indvars.iv145, %16
  br i1 %cmp4.not72.us, label %for.cond22.preheader.us, label %for.cond6.preheader.us.us

for.cond22.preheader.us.loopexit:                 ; preds = %for.cond6.for.cond.cleanup8_crit_edge.us.us
  %17 = trunc nsw i64 %indvars.iv.next141 to i32
  br label %for.cond22.preheader.us

for.cond22.preheader.us:                          ; preds = %for.cond22.preheader.us.loopexit, %for.cond3.preheader.us
  %z.1.lcssa.us = phi i32 [ %z.085.us, %for.cond3.preheader.us ], [ %17, %for.cond22.preheader.us.loopexit ]
  %sum0.1.lcssa.us = phi ptr [ %sum0.087.us, %for.cond3.preheader.us ], [ %sum1.175.us.us, %for.cond22.preheader.us.loopexit ]
  %sum1.1.lcssa.us = phi ptr [ %sum1.088.us, %for.cond3.preheader.us ], [ %sum0.174.us.us, %for.cond22.preheader.us.loopexit ]
  %indvars.iv.next146 = add nuw nsw i64 %indvars.iv145, 1
  %exitcond148.not = icmp eq i64 %indvars.iv.next146, %wide.trip.count
  br i1 %exitcond148.not, label %for.cond.cleanup, label %for.cond3.preheader.us

for.cond6.preheader.us.us:                        ; preds = %for.cond3.preheader.us, %for.cond6.for.cond.cleanup8_crit_edge.us.us
  %indvars.iv140 = phi i64 [ %indvars.iv.next141, %for.cond6.for.cond.cleanup8_crit_edge.us.us ], [ %16, %for.cond3.preheader.us ]
  %sum1.175.us.us = phi ptr [ %sum0.174.us.us, %for.cond6.for.cond.cleanup8_crit_edge.us.us ], [ %sum1.088.us, %for.cond3.preheader.us ]
  %sum0.174.us.us = phi ptr [ %sum1.175.us.us, %for.cond6.for.cond.cleanup8_crit_edge.us.us ], [ %sum0.087.us, %for.cond3.preheader.us ]
  %18 = mul nsw i64 %indvars.iv140, %1
  %19 = mul nsw i64 %indvars.iv140, %2
  br label %for.body9.us.us

for.body9.us.us:                                  ; preds = %for.body9.us.us, %for.cond6.preheader.us.us
  %indvars.iv133 = phi i64 [ %indvars.iv.next134, %for.body9.us.us ], [ 0, %for.cond6.preheader.us.us ]
  %20 = load ptr, ptr %ssim_4x4x2_core, align 8
  %21 = add nsw i64 %indvars.iv133, %18
  %22 = shl nsw i64 %21, 2
  %arrayidx.us.us = getelementptr inbounds i8, ptr %pix1, i64 %22
  %23 = add nsw i64 %indvars.iv133, %19
  %24 = shl nsw i64 %23, 2
  %arrayidx15.us.us = getelementptr inbounds i8, ptr %pix2, i64 %24
  %arrayidx17.us.us = getelementptr inbounds [4 x i32], ptr %sum1.175.us.us, i64 %indvars.iv133
  tail call void %20(ptr noundef %arrayidx.us.us, i32 noundef %stride1, ptr noundef %arrayidx15.us.us, i32 noundef %stride2, ptr noundef %arrayidx17.us.us) #13
  %indvars.iv.next134 = add nuw nsw i64 %indvars.iv133, 2
  %cmp7.us.us = icmp ult i64 %indvars.iv.next134, %0
  br i1 %cmp7.us.us, label %for.body9.us.us, label %for.cond6.for.cond.cleanup8_crit_edge.us.us

for.cond6.for.cond.cleanup8_crit_edge.us.us:      ; preds = %for.body9.us.us
  %indvars.iv.next141 = add nsw i64 %indvars.iv140, 1
  %cmp4.not.us.us.not = icmp slt i64 %indvars.iv140, %indvars.iv145
  br i1 %cmp4.not.us.us.not, label %for.cond6.preheader.us.us, label %for.cond22.preheader.us.loopexit

for.cond.cleanup:                                 ; preds = %for.cond22.for.cond.cleanup24_crit_edge.us.us, %for.cond22.preheader.us, %for.cond3.preheader.lr.ph, %entry
  %ssim.0.lcssa = phi float [ 0.000000e+00, %entry ], [ 0.000000e+00, %for.cond3.preheader.lr.ph ], [ 0.000000e+00, %for.cond22.preheader.us ], [ %add35.us.us, %for.cond22.for.cond.cleanup24_crit_edge.us.us ]
  ret float %ssim.0.lcssa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @x264_pixel_init(i32 noundef %cpu, ptr noundef writeonly %pixf) local_unnamed_addr #2 {
entry:
  %0 = getelementptr inbounds i8, ptr %pixf, i64 168
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 0, i64 888, i1 false)
  store ptr @x264_pixel_sad_16x16, ptr %pixf, align 8
  %arrayidx2 = getelementptr inbounds i8, ptr %pixf, i64 8
  store ptr @x264_pixel_sad_16x8, ptr %arrayidx2, align 8
  %arrayidx4 = getelementptr inbounds i8, ptr %pixf, i64 16
  store ptr @x264_pixel_sad_8x16, ptr %arrayidx4, align 8
  %arrayidx6 = getelementptr inbounds i8, ptr %pixf, i64 24
  store ptr @x264_pixel_sad_8x8, ptr %arrayidx6, align 8
  %arrayidx8 = getelementptr inbounds i8, ptr %pixf, i64 32
  store ptr @x264_pixel_sad_8x4, ptr %arrayidx8, align 8
  %arrayidx10 = getelementptr inbounds i8, ptr %pixf, i64 40
  store ptr @x264_pixel_sad_4x8, ptr %arrayidx10, align 8
  %arrayidx12 = getelementptr inbounds i8, ptr %pixf, i64 48
  store ptr @x264_pixel_sad_4x4, ptr %arrayidx12, align 8
  %sad_aligned = getelementptr inbounds i8, ptr %pixf, i64 536
  store ptr @x264_pixel_sad_16x16, ptr %sad_aligned, align 8
  %arrayidx15 = getelementptr inbounds i8, ptr %pixf, i64 544
  store ptr @x264_pixel_sad_16x8, ptr %arrayidx15, align 8
  %arrayidx17 = getelementptr inbounds i8, ptr %pixf, i64 552
  store ptr @x264_pixel_sad_8x16, ptr %arrayidx17, align 8
  %arrayidx19 = getelementptr inbounds i8, ptr %pixf, i64 560
  store ptr @x264_pixel_sad_8x8, ptr %arrayidx19, align 8
  %arrayidx21 = getelementptr inbounds i8, ptr %pixf, i64 568
  store ptr @x264_pixel_sad_8x4, ptr %arrayidx21, align 8
  %arrayidx23 = getelementptr inbounds i8, ptr %pixf, i64 576
  store ptr @x264_pixel_sad_4x8, ptr %arrayidx23, align 8
  %arrayidx25 = getelementptr inbounds i8, ptr %pixf, i64 584
  store ptr @x264_pixel_sad_4x4, ptr %arrayidx25, align 8
  %sad_x3 = getelementptr inbounds i8, ptr %pixf, i64 680
  store ptr @x264_pixel_sad_x3_16x16, ptr %sad_x3, align 8
  %arrayidx28 = getelementptr inbounds i8, ptr %pixf, i64 688
  store ptr @x264_pixel_sad_x3_16x8, ptr %arrayidx28, align 8
  %arrayidx30 = getelementptr inbounds i8, ptr %pixf, i64 696
  store ptr @x264_pixel_sad_x3_8x16, ptr %arrayidx30, align 8
  %arrayidx32 = getelementptr inbounds i8, ptr %pixf, i64 704
  store ptr @x264_pixel_sad_x3_8x8, ptr %arrayidx32, align 8
  %arrayidx34 = getelementptr inbounds i8, ptr %pixf, i64 712
  store ptr @x264_pixel_sad_x3_8x4, ptr %arrayidx34, align 8
  %arrayidx36 = getelementptr inbounds i8, ptr %pixf, i64 720
  store ptr @x264_pixel_sad_x3_4x8, ptr %arrayidx36, align 8
  %arrayidx38 = getelementptr inbounds i8, ptr %pixf, i64 728
  store ptr @x264_pixel_sad_x3_4x4, ptr %arrayidx38, align 8
  %sad_x4 = getelementptr inbounds i8, ptr %pixf, i64 736
  store ptr @x264_pixel_sad_x4_16x16, ptr %sad_x4, align 8
  %arrayidx41 = getelementptr inbounds i8, ptr %pixf, i64 744
  store ptr @x264_pixel_sad_x4_16x8, ptr %arrayidx41, align 8
  %arrayidx43 = getelementptr inbounds i8, ptr %pixf, i64 752
  store ptr @x264_pixel_sad_x4_8x16, ptr %arrayidx43, align 8
  %arrayidx45 = getelementptr inbounds i8, ptr %pixf, i64 760
  store ptr @x264_pixel_sad_x4_8x8, ptr %arrayidx45, align 8
  %arrayidx47 = getelementptr inbounds i8, ptr %pixf, i64 768
  store ptr @x264_pixel_sad_x4_8x4, ptr %arrayidx47, align 8
  %arrayidx49 = getelementptr inbounds i8, ptr %pixf, i64 776
  store ptr @x264_pixel_sad_x4_4x8, ptr %arrayidx49, align 8
  %arrayidx51 = getelementptr inbounds i8, ptr %pixf, i64 784
  store ptr @x264_pixel_sad_x4_4x4, ptr %arrayidx51, align 8
  %ssd = getelementptr inbounds i8, ptr %pixf, i64 56
  store ptr @x264_pixel_ssd_16x16, ptr %ssd, align 8
  %arrayidx54 = getelementptr inbounds i8, ptr %pixf, i64 64
  store ptr @x264_pixel_ssd_16x8, ptr %arrayidx54, align 8
  %arrayidx56 = getelementptr inbounds i8, ptr %pixf, i64 72
  store ptr @x264_pixel_ssd_8x16, ptr %arrayidx56, align 8
  %arrayidx58 = getelementptr inbounds i8, ptr %pixf, i64 80
  store ptr @x264_pixel_ssd_8x8, ptr %arrayidx58, align 8
  %arrayidx60 = getelementptr inbounds i8, ptr %pixf, i64 88
  store ptr @x264_pixel_ssd_8x4, ptr %arrayidx60, align 8
  %arrayidx62 = getelementptr inbounds i8, ptr %pixf, i64 96
  store ptr @x264_pixel_ssd_4x8, ptr %arrayidx62, align 8
  %arrayidx64 = getelementptr inbounds i8, ptr %pixf, i64 104
  store ptr @x264_pixel_ssd_4x4, ptr %arrayidx64, align 8
  %satd = getelementptr inbounds i8, ptr %pixf, i64 112
  store ptr @x264_pixel_satd_16x16, ptr %satd, align 8
  %arrayidx67 = getelementptr inbounds i8, ptr %pixf, i64 120
  store ptr @x264_pixel_satd_16x8, ptr %arrayidx67, align 8
  %arrayidx69 = getelementptr inbounds i8, ptr %pixf, i64 128
  store ptr @x264_pixel_satd_8x16, ptr %arrayidx69, align 8
  %arrayidx71 = getelementptr inbounds i8, ptr %pixf, i64 136
  store ptr @x264_pixel_satd_8x8, ptr %arrayidx71, align 8
  %arrayidx73 = getelementptr inbounds i8, ptr %pixf, i64 144
  store ptr @x264_pixel_satd_8x4, ptr %arrayidx73, align 8
  %arrayidx75 = getelementptr inbounds i8, ptr %pixf, i64 152
  store ptr @x264_pixel_satd_4x8, ptr %arrayidx75, align 8
  %arrayidx77 = getelementptr inbounds i8, ptr %pixf, i64 160
  store ptr @x264_pixel_satd_4x4, ptr %arrayidx77, align 8
  %satd_x3 = getelementptr inbounds i8, ptr %pixf, i64 792
  store ptr @x264_pixel_satd_x3_16x16, ptr %satd_x3, align 8
  %arrayidx80 = getelementptr inbounds i8, ptr %pixf, i64 800
  store ptr @x264_pixel_satd_x3_16x8, ptr %arrayidx80, align 8
  %arrayidx82 = getelementptr inbounds i8, ptr %pixf, i64 808
  store ptr @x264_pixel_satd_x3_8x16, ptr %arrayidx82, align 8
  %arrayidx84 = getelementptr inbounds i8, ptr %pixf, i64 816
  store ptr @x264_pixel_satd_x3_8x8, ptr %arrayidx84, align 8
  %arrayidx86 = getelementptr inbounds i8, ptr %pixf, i64 824
  store ptr @x264_pixel_satd_x3_8x4, ptr %arrayidx86, align 8
  %arrayidx88 = getelementptr inbounds i8, ptr %pixf, i64 832
  store ptr @x264_pixel_satd_x3_4x8, ptr %arrayidx88, align 8
  %arrayidx90 = getelementptr inbounds i8, ptr %pixf, i64 840
  store ptr @x264_pixel_satd_x3_4x4, ptr %arrayidx90, align 8
  %satd_x4 = getelementptr inbounds i8, ptr %pixf, i64 848
  store ptr @x264_pixel_satd_x4_16x16, ptr %satd_x4, align 8
  %arrayidx93 = getelementptr inbounds i8, ptr %pixf, i64 856
  store ptr @x264_pixel_satd_x4_16x8, ptr %arrayidx93, align 8
  %arrayidx95 = getelementptr inbounds i8, ptr %pixf, i64 864
  store ptr @x264_pixel_satd_x4_8x16, ptr %arrayidx95, align 8
  %arrayidx97 = getelementptr inbounds i8, ptr %pixf, i64 872
  store ptr @x264_pixel_satd_x4_8x8, ptr %arrayidx97, align 8
  %arrayidx99 = getelementptr inbounds i8, ptr %pixf, i64 880
  store ptr @x264_pixel_satd_x4_8x4, ptr %arrayidx99, align 8
  %arrayidx101 = getelementptr inbounds i8, ptr %pixf, i64 888
  store ptr @x264_pixel_satd_x4_4x8, ptr %arrayidx101, align 8
  %arrayidx103 = getelementptr inbounds i8, ptr %pixf, i64 896
  store ptr @x264_pixel_satd_x4_4x4, ptr %arrayidx103, align 8
  %hadamard_ac = getelementptr inbounds i8, ptr %pixf, i64 632
  store ptr @x264_pixel_hadamard_ac_16x16, ptr %hadamard_ac, align 8
  %arrayidx106 = getelementptr inbounds i8, ptr %pixf, i64 640
  store ptr @x264_pixel_hadamard_ac_16x8, ptr %arrayidx106, align 8
  %arrayidx108 = getelementptr inbounds i8, ptr %pixf, i64 648
  store ptr @x264_pixel_hadamard_ac_8x16, ptr %arrayidx108, align 8
  %arrayidx110 = getelementptr inbounds i8, ptr %pixf, i64 656
  store ptr @x264_pixel_hadamard_ac_8x8, ptr %arrayidx110, align 8
  %ads = getelementptr inbounds i8, ptr %pixf, i64 904
  store ptr @x264_pixel_ads4, ptr %ads, align 8
  %arrayidx113 = getelementptr inbounds i8, ptr %pixf, i64 912
  store ptr @x264_pixel_ads2, ptr %arrayidx113, align 8
  %arrayidx115 = getelementptr inbounds i8, ptr %pixf, i64 928
  store ptr @x264_pixel_ads1, ptr %arrayidx115, align 8
  %sa8d = getelementptr inbounds i8, ptr %pixf, i64 224
  store ptr @x264_pixel_sa8d_16x16, ptr %sa8d, align 8
  %arrayidx118 = getelementptr inbounds i8, ptr %pixf, i64 248
  store ptr @x264_pixel_sa8d_8x8, ptr %arrayidx118, align 8
  %var = getelementptr inbounds i8, ptr %pixf, i64 600
  store ptr @x264_pixel_var_16x16, ptr %var, align 8
  %arrayidx121 = getelementptr inbounds i8, ptr %pixf, i64 624
  store ptr @x264_pixel_var_8x8, ptr %arrayidx121, align 8
  %ssim_4x4x2_core = getelementptr inbounds i8, ptr %pixf, i64 664
  store ptr @ssim_4x4x2_core, ptr %ssim_4x4x2_core, align 8
  %ssim_end4 = getelementptr inbounds i8, ptr %pixf, i64 672
  store ptr @ssim_end4, ptr %ssim_end4, align 8
  %var2_8x8 = getelementptr inbounds i8, ptr %pixf, i64 592
  store ptr @pixel_var2_8x8, ptr %var2_8x8, align 8
  %arrayidx125 = getelementptr inbounds i8, ptr %pixf, i64 944
  store ptr @x264_pixel_ads2, ptr %arrayidx125, align 8
  %arrayidx127 = getelementptr inbounds i8, ptr %pixf, i64 936
  store ptr @x264_pixel_ads2, ptr %arrayidx127, align 8
  %arrayidx129 = getelementptr inbounds i8, ptr %pixf, i64 920
  store ptr @x264_pixel_ads2, ptr %arrayidx129, align 8
  %arrayidx133 = getelementptr inbounds i8, ptr %pixf, i64 952
  store ptr @x264_pixel_ads1, ptr %arrayidx133, align 8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define internal i32 @x264_pixel_sad_16x16(ptr nocapture noundef readonly %pix1, i32 noundef %i_stride_pix1, ptr nocapture noundef readonly %pix2, i32 noundef %i_stride_pix2) #4 {
entry:
  %idx.ext = sext i32 %i_stride_pix1 to i64
  %idx.ext8 = sext i32 %i_stride_pix2 to i64
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %entry, %for.cond1.preheader
  %y.025 = phi i32 [ 0, %entry ], [ %inc11, %for.cond1.preheader ]
  %i_sum.024 = phi i32 [ 0, %entry ], [ %op.rdx, %for.cond1.preheader ]
  %pix1.addr.023 = phi ptr [ %pix1, %entry ], [ %add.ptr, %for.cond1.preheader ]
  %pix2.addr.022 = phi ptr [ %pix2, %entry ], [ %add.ptr9, %for.cond1.preheader ]
  %0 = load <16 x i8>, ptr %pix1.addr.023, align 1
  %1 = zext <16 x i8> %0 to <16 x i16>
  %2 = load <16 x i8>, ptr %pix2.addr.022, align 1
  %3 = zext <16 x i8> %2 to <16 x i16>
  %4 = sub nsw <16 x i16> %1, %3
  %5 = tail call <16 x i16> @llvm.abs.v16i16(<16 x i16> %4, i1 false)
  %6 = zext <16 x i16> %5 to <16 x i32>
  %7 = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %6)
  %op.rdx = add i32 %7, %i_sum.024
  %add.ptr = getelementptr inbounds i8, ptr %pix1.addr.023, i64 %idx.ext
  %add.ptr9 = getelementptr inbounds i8, ptr %pix2.addr.022, i64 %idx.ext8
  %inc11 = add nuw nsw i32 %y.025, 1
  %exitcond.not = icmp eq i32 %inc11, 16
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.cond1.preheader

for.cond.cleanup:                                 ; preds = %for.cond1.preheader
  ret i32 %op.rdx
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define internal i32 @x264_pixel_sad_16x8(ptr nocapture noundef readonly %pix1, i32 noundef %i_stride_pix1, ptr nocapture noundef readonly %pix2, i32 noundef %i_stride_pix2) #4 {
entry:
  %idx.ext8 = sext i32 %i_stride_pix2 to i64
  %idx.ext = sext i32 %i_stride_pix1 to i64
  %0 = load <16 x i8>, ptr %pix1, align 1
  %1 = zext <16 x i8> %0 to <16 x i16>
  %2 = load <16 x i8>, ptr %pix2, align 1
  %3 = zext <16 x i8> %2 to <16 x i16>
  %4 = sub nsw <16 x i16> %1, %3
  %5 = tail call <16 x i16> @llvm.abs.v16i16(<16 x i16> %4, i1 false)
  %6 = zext <16 x i16> %5 to <16 x i32>
  %7 = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %6)
  %add.ptr = getelementptr inbounds i8, ptr %pix1, i64 %idx.ext
  %add.ptr9 = getelementptr inbounds i8, ptr %pix2, i64 %idx.ext8
  %8 = load <16 x i8>, ptr %add.ptr, align 1
  %9 = zext <16 x i8> %8 to <16 x i16>
  %10 = load <16 x i8>, ptr %add.ptr9, align 1
  %11 = zext <16 x i8> %10 to <16 x i16>
  %12 = sub nsw <16 x i16> %9, %11
  %13 = tail call <16 x i16> @llvm.abs.v16i16(<16 x i16> %12, i1 false)
  %14 = zext <16 x i16> %13 to <16 x i32>
  %15 = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %14)
  %op.rdx.1 = add i32 %15, %7
  %add.ptr.1 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.ext
  %add.ptr9.1 = getelementptr inbounds i8, ptr %add.ptr9, i64 %idx.ext8
  %16 = load <16 x i8>, ptr %add.ptr.1, align 1
  %17 = zext <16 x i8> %16 to <16 x i16>
  %18 = load <16 x i8>, ptr %add.ptr9.1, align 1
  %19 = zext <16 x i8> %18 to <16 x i16>
  %20 = sub nsw <16 x i16> %17, %19
  %21 = tail call <16 x i16> @llvm.abs.v16i16(<16 x i16> %20, i1 false)
  %22 = zext <16 x i16> %21 to <16 x i32>
  %23 = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %22)
  %op.rdx.2 = add i32 %23, %op.rdx.1
  %add.ptr.2 = getelementptr inbounds i8, ptr %add.ptr.1, i64 %idx.ext
  %add.ptr9.2 = getelementptr inbounds i8, ptr %add.ptr9.1, i64 %idx.ext8
  %24 = load <16 x i8>, ptr %add.ptr.2, align 1
  %25 = zext <16 x i8> %24 to <16 x i16>
  %26 = load <16 x i8>, ptr %add.ptr9.2, align 1
  %27 = zext <16 x i8> %26 to <16 x i16>
  %28 = sub nsw <16 x i16> %25, %27
  %29 = tail call <16 x i16> @llvm.abs.v16i16(<16 x i16> %28, i1 false)
  %30 = zext <16 x i16> %29 to <16 x i32>
  %31 = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %30)
  %op.rdx.3 = add i32 %31, %op.rdx.2
  %add.ptr.3 = getelementptr inbounds i8, ptr %add.ptr.2, i64 %idx.ext
  %add.ptr9.3 = getelementptr inbounds i8, ptr %add.ptr9.2, i64 %idx.ext8
  %32 = load <16 x i8>, ptr %add.ptr.3, align 1
  %33 = zext <16 x i8> %32 to <16 x i16>
  %34 = load <16 x i8>, ptr %add.ptr9.3, align 1
  %35 = zext <16 x i8> %34 to <16 x i16>
  %36 = sub nsw <16 x i16> %33, %35
  %37 = tail call <16 x i16> @llvm.abs.v16i16(<16 x i16> %36, i1 false)
  %38 = zext <16 x i16> %37 to <16 x i32>
  %39 = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %38)
  %op.rdx.4 = add i32 %39, %op.rdx.3
  %add.ptr.4 = getelementptr inbounds i8, ptr %add.ptr.3, i64 %idx.ext
  %add.ptr9.4 = getelementptr inbounds i8, ptr %add.ptr9.3, i64 %idx.ext8
  %40 = load <16 x i8>, ptr %add.ptr.4, align 1
  %41 = zext <16 x i8> %40 to <16 x i16>
  %42 = load <16 x i8>, ptr %add.ptr9.4, align 1
  %43 = zext <16 x i8> %42 to <16 x i16>
  %44 = sub nsw <16 x i16> %41, %43
  %45 = tail call <16 x i16> @llvm.abs.v16i16(<16 x i16> %44, i1 false)
  %46 = zext <16 x i16> %45 to <16 x i32>
  %47 = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %46)
  %op.rdx.5 = add i32 %47, %op.rdx.4
  %add.ptr.5 = getelementptr inbounds i8, ptr %add.ptr.4, i64 %idx.ext
  %add.ptr9.5 = getelementptr inbounds i8, ptr %add.ptr9.4, i64 %idx.ext8
  %48 = load <16 x i8>, ptr %add.ptr.5, align 1
  %49 = zext <16 x i8> %48 to <16 x i16>
  %50 = load <16 x i8>, ptr %add.ptr9.5, align 1
  %51 = zext <16 x i8> %50 to <16 x i16>
  %52 = sub nsw <16 x i16> %49, %51
  %53 = tail call <16 x i16> @llvm.abs.v16i16(<16 x i16> %52, i1 false)
  %54 = zext <16 x i16> %53 to <16 x i32>
  %55 = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %54)
  %op.rdx.6 = add i32 %55, %op.rdx.5
  %add.ptr.6 = getelementptr inbounds i8, ptr %add.ptr.5, i64 %idx.ext
  %add.ptr9.6 = getelementptr inbounds i8, ptr %add.ptr9.5, i64 %idx.ext8
  %56 = load <16 x i8>, ptr %add.ptr.6, align 1
  %57 = zext <16 x i8> %56 to <16 x i16>
  %58 = load <16 x i8>, ptr %add.ptr9.6, align 1
  %59 = zext <16 x i8> %58 to <16 x i16>
  %60 = sub nsw <16 x i16> %57, %59
  %61 = tail call <16 x i16> @llvm.abs.v16i16(<16 x i16> %60, i1 false)
  %62 = zext <16 x i16> %61 to <16 x i32>
  %63 = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %62)
  %op.rdx.7 = add i32 %63, %op.rdx.6
  ret i32 %op.rdx.7
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define internal i32 @x264_pixel_sad_8x16(ptr nocapture noundef readonly %pix1, i32 noundef %i_stride_pix1, ptr nocapture noundef readonly %pix2, i32 noundef %i_stride_pix2) #4 {
entry:
  %idx.ext8 = sext i32 %i_stride_pix2 to i64
  %idx.ext = sext i32 %i_stride_pix1 to i64
  %0 = load <8 x i8>, ptr %pix1, align 1
  %1 = zext <8 x i8> %0 to <8 x i16>
  %2 = load <8 x i8>, ptr %pix2, align 1
  %3 = zext <8 x i8> %2 to <8 x i16>
  %4 = sub nsw <8 x i16> %1, %3
  %5 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %4, i1 false)
  %6 = zext <8 x i16> %5 to <8 x i32>
  %7 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %6)
  %add.ptr = getelementptr inbounds i8, ptr %pix1, i64 %idx.ext
  %add.ptr9 = getelementptr inbounds i8, ptr %pix2, i64 %idx.ext8
  %8 = load <8 x i8>, ptr %add.ptr, align 1
  %9 = zext <8 x i8> %8 to <8 x i16>
  %10 = load <8 x i8>, ptr %add.ptr9, align 1
  %11 = zext <8 x i8> %10 to <8 x i16>
  %12 = sub nsw <8 x i16> %9, %11
  %13 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %12, i1 false)
  %14 = zext <8 x i16> %13 to <8 x i32>
  %15 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %14)
  %op.rdx.1 = add i32 %15, %7
  %add.ptr.1 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.ext
  %add.ptr9.1 = getelementptr inbounds i8, ptr %add.ptr9, i64 %idx.ext8
  %16 = load <8 x i8>, ptr %add.ptr.1, align 1
  %17 = zext <8 x i8> %16 to <8 x i16>
  %18 = load <8 x i8>, ptr %add.ptr9.1, align 1
  %19 = zext <8 x i8> %18 to <8 x i16>
  %20 = sub nsw <8 x i16> %17, %19
  %21 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %20, i1 false)
  %22 = zext <8 x i16> %21 to <8 x i32>
  %23 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %22)
  %op.rdx.2 = add i32 %23, %op.rdx.1
  %add.ptr.2 = getelementptr inbounds i8, ptr %add.ptr.1, i64 %idx.ext
  %add.ptr9.2 = getelementptr inbounds i8, ptr %add.ptr9.1, i64 %idx.ext8
  %24 = load <8 x i8>, ptr %add.ptr.2, align 1
  %25 = zext <8 x i8> %24 to <8 x i16>
  %26 = load <8 x i8>, ptr %add.ptr9.2, align 1
  %27 = zext <8 x i8> %26 to <8 x i16>
  %28 = sub nsw <8 x i16> %25, %27
  %29 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %28, i1 false)
  %30 = zext <8 x i16> %29 to <8 x i32>
  %31 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %30)
  %op.rdx.3 = add i32 %31, %op.rdx.2
  %add.ptr.3 = getelementptr inbounds i8, ptr %add.ptr.2, i64 %idx.ext
  %add.ptr9.3 = getelementptr inbounds i8, ptr %add.ptr9.2, i64 %idx.ext8
  %32 = load <8 x i8>, ptr %add.ptr.3, align 1
  %33 = zext <8 x i8> %32 to <8 x i16>
  %34 = load <8 x i8>, ptr %add.ptr9.3, align 1
  %35 = zext <8 x i8> %34 to <8 x i16>
  %36 = sub nsw <8 x i16> %33, %35
  %37 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %36, i1 false)
  %38 = zext <8 x i16> %37 to <8 x i32>
  %39 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %38)
  %op.rdx.4 = add i32 %39, %op.rdx.3
  %add.ptr.4 = getelementptr inbounds i8, ptr %add.ptr.3, i64 %idx.ext
  %add.ptr9.4 = getelementptr inbounds i8, ptr %add.ptr9.3, i64 %idx.ext8
  %40 = load <8 x i8>, ptr %add.ptr.4, align 1
  %41 = zext <8 x i8> %40 to <8 x i16>
  %42 = load <8 x i8>, ptr %add.ptr9.4, align 1
  %43 = zext <8 x i8> %42 to <8 x i16>
  %44 = sub nsw <8 x i16> %41, %43
  %45 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %44, i1 false)
  %46 = zext <8 x i16> %45 to <8 x i32>
  %47 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %46)
  %op.rdx.5 = add i32 %47, %op.rdx.4
  %add.ptr.5 = getelementptr inbounds i8, ptr %add.ptr.4, i64 %idx.ext
  %add.ptr9.5 = getelementptr inbounds i8, ptr %add.ptr9.4, i64 %idx.ext8
  %48 = load <8 x i8>, ptr %add.ptr.5, align 1
  %49 = zext <8 x i8> %48 to <8 x i16>
  %50 = load <8 x i8>, ptr %add.ptr9.5, align 1
  %51 = zext <8 x i8> %50 to <8 x i16>
  %52 = sub nsw <8 x i16> %49, %51
  %53 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %52, i1 false)
  %54 = zext <8 x i16> %53 to <8 x i32>
  %55 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %54)
  %op.rdx.6 = add i32 %55, %op.rdx.5
  %add.ptr.6 = getelementptr inbounds i8, ptr %add.ptr.5, i64 %idx.ext
  %add.ptr9.6 = getelementptr inbounds i8, ptr %add.ptr9.5, i64 %idx.ext8
  %56 = load <8 x i8>, ptr %add.ptr.6, align 1
  %57 = zext <8 x i8> %56 to <8 x i16>
  %58 = load <8 x i8>, ptr %add.ptr9.6, align 1
  %59 = zext <8 x i8> %58 to <8 x i16>
  %60 = sub nsw <8 x i16> %57, %59
  %61 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %60, i1 false)
  %62 = zext <8 x i16> %61 to <8 x i32>
  %63 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %62)
  %op.rdx.7 = add i32 %63, %op.rdx.6
  %add.ptr.7 = getelementptr inbounds i8, ptr %add.ptr.6, i64 %idx.ext
  %add.ptr9.7 = getelementptr inbounds i8, ptr %add.ptr9.6, i64 %idx.ext8
  %64 = load <8 x i8>, ptr %add.ptr.7, align 1
  %65 = zext <8 x i8> %64 to <8 x i16>
  %66 = load <8 x i8>, ptr %add.ptr9.7, align 1
  %67 = zext <8 x i8> %66 to <8 x i16>
  %68 = sub nsw <8 x i16> %65, %67
  %69 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %68, i1 false)
  %70 = zext <8 x i16> %69 to <8 x i32>
  %71 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %70)
  %op.rdx.8 = add i32 %71, %op.rdx.7
  %add.ptr.8 = getelementptr inbounds i8, ptr %add.ptr.7, i64 %idx.ext
  %add.ptr9.8 = getelementptr inbounds i8, ptr %add.ptr9.7, i64 %idx.ext8
  %72 = load <8 x i8>, ptr %add.ptr.8, align 1
  %73 = zext <8 x i8> %72 to <8 x i16>
  %74 = load <8 x i8>, ptr %add.ptr9.8, align 1
  %75 = zext <8 x i8> %74 to <8 x i16>
  %76 = sub nsw <8 x i16> %73, %75
  %77 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %76, i1 false)
  %78 = zext <8 x i16> %77 to <8 x i32>
  %79 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %78)
  %op.rdx.9 = add i32 %79, %op.rdx.8
  %add.ptr.9 = getelementptr inbounds i8, ptr %add.ptr.8, i64 %idx.ext
  %add.ptr9.9 = getelementptr inbounds i8, ptr %add.ptr9.8, i64 %idx.ext8
  %80 = load <8 x i8>, ptr %add.ptr.9, align 1
  %81 = zext <8 x i8> %80 to <8 x i16>
  %82 = load <8 x i8>, ptr %add.ptr9.9, align 1
  %83 = zext <8 x i8> %82 to <8 x i16>
  %84 = sub nsw <8 x i16> %81, %83
  %85 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %84, i1 false)
  %86 = zext <8 x i16> %85 to <8 x i32>
  %87 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %86)
  %op.rdx.10 = add i32 %87, %op.rdx.9
  %add.ptr.10 = getelementptr inbounds i8, ptr %add.ptr.9, i64 %idx.ext
  %add.ptr9.10 = getelementptr inbounds i8, ptr %add.ptr9.9, i64 %idx.ext8
  %88 = load <8 x i8>, ptr %add.ptr.10, align 1
  %89 = zext <8 x i8> %88 to <8 x i16>
  %90 = load <8 x i8>, ptr %add.ptr9.10, align 1
  %91 = zext <8 x i8> %90 to <8 x i16>
  %92 = sub nsw <8 x i16> %89, %91
  %93 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %92, i1 false)
  %94 = zext <8 x i16> %93 to <8 x i32>
  %95 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %94)
  %op.rdx.11 = add i32 %95, %op.rdx.10
  %add.ptr.11 = getelementptr inbounds i8, ptr %add.ptr.10, i64 %idx.ext
  %add.ptr9.11 = getelementptr inbounds i8, ptr %add.ptr9.10, i64 %idx.ext8
  %96 = load <8 x i8>, ptr %add.ptr.11, align 1
  %97 = zext <8 x i8> %96 to <8 x i16>
  %98 = load <8 x i8>, ptr %add.ptr9.11, align 1
  %99 = zext <8 x i8> %98 to <8 x i16>
  %100 = sub nsw <8 x i16> %97, %99
  %101 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %100, i1 false)
  %102 = zext <8 x i16> %101 to <8 x i32>
  %103 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %102)
  %op.rdx.12 = add i32 %103, %op.rdx.11
  %add.ptr.12 = getelementptr inbounds i8, ptr %add.ptr.11, i64 %idx.ext
  %add.ptr9.12 = getelementptr inbounds i8, ptr %add.ptr9.11, i64 %idx.ext8
  %104 = load <8 x i8>, ptr %add.ptr.12, align 1
  %105 = zext <8 x i8> %104 to <8 x i16>
  %106 = load <8 x i8>, ptr %add.ptr9.12, align 1
  %107 = zext <8 x i8> %106 to <8 x i16>
  %108 = sub nsw <8 x i16> %105, %107
  %109 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %108, i1 false)
  %110 = zext <8 x i16> %109 to <8 x i32>
  %111 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %110)
  %op.rdx.13 = add i32 %111, %op.rdx.12
  %add.ptr.13 = getelementptr inbounds i8, ptr %add.ptr.12, i64 %idx.ext
  %add.ptr9.13 = getelementptr inbounds i8, ptr %add.ptr9.12, i64 %idx.ext8
  %112 = load <8 x i8>, ptr %add.ptr.13, align 1
  %113 = zext <8 x i8> %112 to <8 x i16>
  %114 = load <8 x i8>, ptr %add.ptr9.13, align 1
  %115 = zext <8 x i8> %114 to <8 x i16>
  %116 = sub nsw <8 x i16> %113, %115
  %117 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %116, i1 false)
  %118 = zext <8 x i16> %117 to <8 x i32>
  %119 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %118)
  %op.rdx.14 = add i32 %119, %op.rdx.13
  %add.ptr.14 = getelementptr inbounds i8, ptr %add.ptr.13, i64 %idx.ext
  %add.ptr9.14 = getelementptr inbounds i8, ptr %add.ptr9.13, i64 %idx.ext8
  %120 = load <8 x i8>, ptr %add.ptr.14, align 1
  %121 = zext <8 x i8> %120 to <8 x i16>
  %122 = load <8 x i8>, ptr %add.ptr9.14, align 1
  %123 = zext <8 x i8> %122 to <8 x i16>
  %124 = sub nsw <8 x i16> %121, %123
  %125 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %124, i1 false)
  %126 = zext <8 x i16> %125 to <8 x i32>
  %127 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %126)
  %op.rdx.15 = add i32 %127, %op.rdx.14
  ret i32 %op.rdx.15
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define internal i32 @x264_pixel_sad_8x8(ptr nocapture noundef readonly %pix1, i32 noundef %i_stride_pix1, ptr nocapture noundef readonly %pix2, i32 noundef %i_stride_pix2) #4 {
entry:
  %idx.ext8 = sext i32 %i_stride_pix2 to i64
  %idx.ext = sext i32 %i_stride_pix1 to i64
  %0 = load <8 x i8>, ptr %pix1, align 1
  %1 = zext <8 x i8> %0 to <8 x i16>
  %2 = load <8 x i8>, ptr %pix2, align 1
  %3 = zext <8 x i8> %2 to <8 x i16>
  %4 = sub nsw <8 x i16> %1, %3
  %5 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %4, i1 false)
  %6 = zext <8 x i16> %5 to <8 x i32>
  %7 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %6)
  %add.ptr = getelementptr inbounds i8, ptr %pix1, i64 %idx.ext
  %add.ptr9 = getelementptr inbounds i8, ptr %pix2, i64 %idx.ext8
  %8 = load <8 x i8>, ptr %add.ptr, align 1
  %9 = zext <8 x i8> %8 to <8 x i16>
  %10 = load <8 x i8>, ptr %add.ptr9, align 1
  %11 = zext <8 x i8> %10 to <8 x i16>
  %12 = sub nsw <8 x i16> %9, %11
  %13 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %12, i1 false)
  %14 = zext <8 x i16> %13 to <8 x i32>
  %15 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %14)
  %op.rdx.1 = add i32 %15, %7
  %add.ptr.1 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.ext
  %add.ptr9.1 = getelementptr inbounds i8, ptr %add.ptr9, i64 %idx.ext8
  %16 = load <8 x i8>, ptr %add.ptr.1, align 1
  %17 = zext <8 x i8> %16 to <8 x i16>
  %18 = load <8 x i8>, ptr %add.ptr9.1, align 1
  %19 = zext <8 x i8> %18 to <8 x i16>
  %20 = sub nsw <8 x i16> %17, %19
  %21 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %20, i1 false)
  %22 = zext <8 x i16> %21 to <8 x i32>
  %23 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %22)
  %op.rdx.2 = add i32 %23, %op.rdx.1
  %add.ptr.2 = getelementptr inbounds i8, ptr %add.ptr.1, i64 %idx.ext
  %add.ptr9.2 = getelementptr inbounds i8, ptr %add.ptr9.1, i64 %idx.ext8
  %24 = load <8 x i8>, ptr %add.ptr.2, align 1
  %25 = zext <8 x i8> %24 to <8 x i16>
  %26 = load <8 x i8>, ptr %add.ptr9.2, align 1
  %27 = zext <8 x i8> %26 to <8 x i16>
  %28 = sub nsw <8 x i16> %25, %27
  %29 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %28, i1 false)
  %30 = zext <8 x i16> %29 to <8 x i32>
  %31 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %30)
  %op.rdx.3 = add i32 %31, %op.rdx.2
  %add.ptr.3 = getelementptr inbounds i8, ptr %add.ptr.2, i64 %idx.ext
  %add.ptr9.3 = getelementptr inbounds i8, ptr %add.ptr9.2, i64 %idx.ext8
  %32 = load <8 x i8>, ptr %add.ptr.3, align 1
  %33 = zext <8 x i8> %32 to <8 x i16>
  %34 = load <8 x i8>, ptr %add.ptr9.3, align 1
  %35 = zext <8 x i8> %34 to <8 x i16>
  %36 = sub nsw <8 x i16> %33, %35
  %37 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %36, i1 false)
  %38 = zext <8 x i16> %37 to <8 x i32>
  %39 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %38)
  %op.rdx.4 = add i32 %39, %op.rdx.3
  %add.ptr.4 = getelementptr inbounds i8, ptr %add.ptr.3, i64 %idx.ext
  %add.ptr9.4 = getelementptr inbounds i8, ptr %add.ptr9.3, i64 %idx.ext8
  %40 = load <8 x i8>, ptr %add.ptr.4, align 1
  %41 = zext <8 x i8> %40 to <8 x i16>
  %42 = load <8 x i8>, ptr %add.ptr9.4, align 1
  %43 = zext <8 x i8> %42 to <8 x i16>
  %44 = sub nsw <8 x i16> %41, %43
  %45 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %44, i1 false)
  %46 = zext <8 x i16> %45 to <8 x i32>
  %47 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %46)
  %op.rdx.5 = add i32 %47, %op.rdx.4
  %add.ptr.5 = getelementptr inbounds i8, ptr %add.ptr.4, i64 %idx.ext
  %add.ptr9.5 = getelementptr inbounds i8, ptr %add.ptr9.4, i64 %idx.ext8
  %48 = load <8 x i8>, ptr %add.ptr.5, align 1
  %49 = zext <8 x i8> %48 to <8 x i16>
  %50 = load <8 x i8>, ptr %add.ptr9.5, align 1
  %51 = zext <8 x i8> %50 to <8 x i16>
  %52 = sub nsw <8 x i16> %49, %51
  %53 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %52, i1 false)
  %54 = zext <8 x i16> %53 to <8 x i32>
  %55 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %54)
  %op.rdx.6 = add i32 %55, %op.rdx.5
  %add.ptr.6 = getelementptr inbounds i8, ptr %add.ptr.5, i64 %idx.ext
  %add.ptr9.6 = getelementptr inbounds i8, ptr %add.ptr9.5, i64 %idx.ext8
  %56 = load <8 x i8>, ptr %add.ptr.6, align 1
  %57 = zext <8 x i8> %56 to <8 x i16>
  %58 = load <8 x i8>, ptr %add.ptr9.6, align 1
  %59 = zext <8 x i8> %58 to <8 x i16>
  %60 = sub nsw <8 x i16> %57, %59
  %61 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %60, i1 false)
  %62 = zext <8 x i16> %61 to <8 x i32>
  %63 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %62)
  %op.rdx.7 = add i32 %63, %op.rdx.6
  ret i32 %op.rdx.7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @x264_pixel_sad_8x4(ptr nocapture noundef readonly %pix1, i32 noundef %i_stride_pix1, ptr nocapture noundef readonly %pix2, i32 noundef %i_stride_pix2) #5 {
entry:
  %idx.ext = sext i32 %i_stride_pix1 to i64
  %idx.ext8 = sext i32 %i_stride_pix2 to i64
  %0 = load <8 x i8>, ptr %pix1, align 1
  %1 = load <8 x i8>, ptr %pix2, align 1
  %add.ptr = getelementptr inbounds i8, ptr %pix1, i64 %idx.ext
  %add.ptr9 = getelementptr inbounds i8, ptr %pix2, i64 %idx.ext8
  %2 = load <8 x i8>, ptr %add.ptr, align 1
  %3 = load <8 x i8>, ptr %add.ptr9, align 1
  %4 = shufflevector <8 x i8> %0, <8 x i8> %2, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %5 = zext <16 x i8> %4 to <16 x i16>
  %6 = shufflevector <8 x i8> %1, <8 x i8> %3, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %7 = zext <16 x i8> %6 to <16 x i16>
  %8 = sub nsw <16 x i16> %5, %7
  %9 = tail call <16 x i16> @llvm.abs.v16i16(<16 x i16> %8, i1 false)
  %add.ptr.1 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.ext
  %add.ptr9.1 = getelementptr inbounds i8, ptr %add.ptr9, i64 %idx.ext8
  %10 = load <8 x i8>, ptr %add.ptr.1, align 1
  %11 = load <8 x i8>, ptr %add.ptr9.1, align 1
  %add.ptr.2 = getelementptr inbounds i8, ptr %add.ptr.1, i64 %idx.ext
  %add.ptr9.2 = getelementptr inbounds i8, ptr %add.ptr9.1, i64 %idx.ext8
  %12 = load <8 x i8>, ptr %add.ptr.2, align 1
  %13 = load <8 x i8>, ptr %add.ptr9.2, align 1
  %14 = shufflevector <8 x i8> %10, <8 x i8> %12, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %15 = zext <16 x i8> %14 to <16 x i16>
  %16 = shufflevector <8 x i8> %11, <8 x i8> %13, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %17 = zext <16 x i8> %16 to <16 x i16>
  %18 = sub nsw <16 x i16> %15, %17
  %19 = tail call <16 x i16> @llvm.abs.v16i16(<16 x i16> %18, i1 false)
  %20 = zext <16 x i16> %9 to <16 x i32>
  %21 = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %20)
  %22 = zext <16 x i16> %19 to <16 x i32>
  %23 = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %22)
  %op.rdx = add i32 %21, %23
  ret i32 %op.rdx
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @x264_pixel_sad_4x8(ptr nocapture noundef readonly %pix1, i32 noundef %i_stride_pix1, ptr nocapture noundef readonly %pix2, i32 noundef %i_stride_pix2) #6 {
entry:
  %idx.ext = sext i32 %i_stride_pix1 to i64
  %idx.ext8 = sext i32 %i_stride_pix2 to i64
  %0 = load <4 x i8>, ptr %pix1, align 1
  %1 = zext <4 x i8> %0 to <4 x i16>
  %2 = load <4 x i8>, ptr %pix2, align 1
  %3 = zext <4 x i8> %2 to <4 x i16>
  %4 = sub nsw <4 x i16> %1, %3
  %5 = tail call <4 x i16> @llvm.abs.v4i16(<4 x i16> %4, i1 false)
  %add.ptr = getelementptr inbounds i8, ptr %pix1, i64 %idx.ext
  %add.ptr9 = getelementptr inbounds i8, ptr %pix2, i64 %idx.ext8
  %6 = load <4 x i8>, ptr %add.ptr, align 1
  %7 = zext <4 x i8> %6 to <4 x i16>
  %8 = load <4 x i8>, ptr %add.ptr9, align 1
  %9 = zext <4 x i8> %8 to <4 x i16>
  %10 = sub nsw <4 x i16> %7, %9
  %11 = tail call <4 x i16> @llvm.abs.v4i16(<4 x i16> %10, i1 false)
  %add.ptr.1 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.ext
  %add.ptr9.1 = getelementptr inbounds i8, ptr %add.ptr9, i64 %idx.ext8
  %12 = load <4 x i8>, ptr %add.ptr.1, align 1
  %13 = zext <4 x i8> %12 to <4 x i16>
  %14 = load <4 x i8>, ptr %add.ptr9.1, align 1
  %15 = zext <4 x i8> %14 to <4 x i16>
  %16 = sub nsw <4 x i16> %13, %15
  %17 = tail call <4 x i16> @llvm.abs.v4i16(<4 x i16> %16, i1 false)
  %add.ptr.2 = getelementptr inbounds i8, ptr %add.ptr.1, i64 %idx.ext
  %add.ptr9.2 = getelementptr inbounds i8, ptr %add.ptr9.1, i64 %idx.ext8
  %18 = load <4 x i8>, ptr %add.ptr.2, align 1
  %19 = zext <4 x i8> %18 to <4 x i16>
  %20 = load <4 x i8>, ptr %add.ptr9.2, align 1
  %21 = zext <4 x i8> %20 to <4 x i16>
  %22 = sub nsw <4 x i16> %19, %21
  %23 = tail call <4 x i16> @llvm.abs.v4i16(<4 x i16> %22, i1 false)
  %add.ptr.3 = getelementptr inbounds i8, ptr %add.ptr.2, i64 %idx.ext
  %add.ptr9.3 = getelementptr inbounds i8, ptr %add.ptr9.2, i64 %idx.ext8
  %24 = load <4 x i8>, ptr %add.ptr.3, align 1
  %25 = zext <4 x i8> %24 to <4 x i16>
  %26 = load <4 x i8>, ptr %add.ptr9.3, align 1
  %27 = zext <4 x i8> %26 to <4 x i16>
  %28 = sub nsw <4 x i16> %25, %27
  %29 = tail call <4 x i16> @llvm.abs.v4i16(<4 x i16> %28, i1 false)
  %add.ptr.4 = getelementptr inbounds i8, ptr %add.ptr.3, i64 %idx.ext
  %add.ptr9.4 = getelementptr inbounds i8, ptr %add.ptr9.3, i64 %idx.ext8
  %30 = load <4 x i8>, ptr %add.ptr.4, align 1
  %31 = zext <4 x i8> %30 to <4 x i16>
  %32 = load <4 x i8>, ptr %add.ptr9.4, align 1
  %33 = zext <4 x i8> %32 to <4 x i16>
  %34 = sub nsw <4 x i16> %31, %33
  %35 = tail call <4 x i16> @llvm.abs.v4i16(<4 x i16> %34, i1 false)
  %add.ptr.5 = getelementptr inbounds i8, ptr %add.ptr.4, i64 %idx.ext
  %add.ptr9.5 = getelementptr inbounds i8, ptr %add.ptr9.4, i64 %idx.ext8
  %36 = load <4 x i8>, ptr %add.ptr.5, align 1
  %37 = zext <4 x i8> %36 to <4 x i16>
  %38 = load <4 x i8>, ptr %add.ptr9.5, align 1
  %39 = zext <4 x i8> %38 to <4 x i16>
  %40 = sub nsw <4 x i16> %37, %39
  %41 = tail call <4 x i16> @llvm.abs.v4i16(<4 x i16> %40, i1 false)
  %add.ptr.6 = getelementptr inbounds i8, ptr %add.ptr.5, i64 %idx.ext
  %add.ptr9.6 = getelementptr inbounds i8, ptr %add.ptr9.5, i64 %idx.ext8
  %42 = load <4 x i8>, ptr %add.ptr.6, align 1
  %43 = zext <4 x i8> %42 to <4 x i16>
  %44 = load <4 x i8>, ptr %add.ptr9.6, align 1
  %45 = zext <4 x i8> %44 to <4 x i16>
  %46 = sub nsw <4 x i16> %43, %45
  %47 = tail call <4 x i16> @llvm.abs.v4i16(<4 x i16> %46, i1 false)
  %48 = zext <4 x i16> %5 to <4 x i32>
  %49 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %48)
  %50 = zext <4 x i16> %11 to <4 x i32>
  %51 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %50)
  %op.rdx = add i32 %49, %51
  %52 = zext <4 x i16> %17 to <4 x i32>
  %53 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %52)
  %op.rdx39 = add i32 %op.rdx, %53
  %54 = zext <4 x i16> %23 to <4 x i32>
  %55 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %54)
  %op.rdx40 = add i32 %op.rdx39, %55
  %56 = zext <4 x i16> %29 to <4 x i32>
  %57 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %56)
  %op.rdx41 = add i32 %op.rdx40, %57
  %58 = zext <4 x i16> %35 to <4 x i32>
  %59 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %58)
  %op.rdx42 = add i32 %op.rdx41, %59
  %60 = zext <4 x i16> %41 to <4 x i32>
  %61 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %60)
  %op.rdx43 = add i32 %op.rdx42, %61
  %62 = zext <4 x i16> %47 to <4 x i32>
  %63 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %62)
  %op.rdx44 = add i32 %op.rdx43, %63
  ret i32 %op.rdx44
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @x264_pixel_sad_4x4(ptr nocapture noundef readonly %pix1, i32 noundef %i_stride_pix1, ptr nocapture noundef readonly %pix2, i32 noundef %i_stride_pix2) #5 {
entry:
  %idx.ext = sext i32 %i_stride_pix1 to i64
  %idx.ext8 = sext i32 %i_stride_pix2 to i64
  %0 = load <4 x i8>, ptr %pix1, align 1
  %1 = zext <4 x i8> %0 to <4 x i16>
  %2 = load <4 x i8>, ptr %pix2, align 1
  %3 = zext <4 x i8> %2 to <4 x i16>
  %4 = sub nsw <4 x i16> %1, %3
  %5 = tail call <4 x i16> @llvm.abs.v4i16(<4 x i16> %4, i1 false)
  %add.ptr = getelementptr inbounds i8, ptr %pix1, i64 %idx.ext
  %add.ptr9 = getelementptr inbounds i8, ptr %pix2, i64 %idx.ext8
  %6 = load <4 x i8>, ptr %add.ptr, align 1
  %7 = zext <4 x i8> %6 to <4 x i16>
  %8 = load <4 x i8>, ptr %add.ptr9, align 1
  %9 = zext <4 x i8> %8 to <4 x i16>
  %10 = sub nsw <4 x i16> %7, %9
  %11 = tail call <4 x i16> @llvm.abs.v4i16(<4 x i16> %10, i1 false)
  %add.ptr.1 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.ext
  %add.ptr9.1 = getelementptr inbounds i8, ptr %add.ptr9, i64 %idx.ext8
  %12 = load <4 x i8>, ptr %add.ptr.1, align 1
  %13 = zext <4 x i8> %12 to <4 x i16>
  %14 = load <4 x i8>, ptr %add.ptr9.1, align 1
  %15 = zext <4 x i8> %14 to <4 x i16>
  %16 = sub nsw <4 x i16> %13, %15
  %17 = tail call <4 x i16> @llvm.abs.v4i16(<4 x i16> %16, i1 false)
  %add.ptr.2 = getelementptr inbounds i8, ptr %add.ptr.1, i64 %idx.ext
  %add.ptr9.2 = getelementptr inbounds i8, ptr %add.ptr9.1, i64 %idx.ext8
  %18 = load <4 x i8>, ptr %add.ptr.2, align 1
  %19 = zext <4 x i8> %18 to <4 x i16>
  %20 = load <4 x i8>, ptr %add.ptr9.2, align 1
  %21 = zext <4 x i8> %20 to <4 x i16>
  %22 = sub nsw <4 x i16> %19, %21
  %23 = tail call <4 x i16> @llvm.abs.v4i16(<4 x i16> %22, i1 false)
  %24 = zext <4 x i16> %5 to <4 x i32>
  %25 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %24)
  %26 = zext <4 x i16> %11 to <4 x i32>
  %27 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %26)
  %op.rdx = add i32 %25, %27
  %28 = zext <4 x i16> %17 to <4 x i32>
  %29 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %28)
  %op.rdx39 = add i32 %op.rdx, %29
  %30 = zext <4 x i16> %23 to <4 x i32>
  %31 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %30)
  %op.rdx40 = add i32 %op.rdx39, %31
  ret i32 %op.rdx40
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @x264_pixel_sad_x3_16x16(ptr nocapture noundef readonly %fenc, ptr nocapture noundef readonly %pix0, ptr nocapture noundef readonly %pix1, ptr nocapture noundef readonly %pix2, i32 noundef %i_stride, ptr nocapture noundef writeonly %scores) #7 {
entry:
  %call = tail call i32 @x264_pixel_sad_16x16(ptr noundef %fenc, i32 noundef 16, ptr noundef %pix0, i32 noundef %i_stride)
  store i32 %call, ptr %scores, align 4
  %call1 = tail call i32 @x264_pixel_sad_16x16(ptr noundef %fenc, i32 noundef 16, ptr noundef %pix1, i32 noundef %i_stride)
  %arrayidx2 = getelementptr inbounds i8, ptr %scores, i64 4
  store i32 %call1, ptr %arrayidx2, align 4
  %call3 = tail call i32 @x264_pixel_sad_16x16(ptr noundef %fenc, i32 noundef 16, ptr noundef %pix2, i32 noundef %i_stride)
  %arrayidx4 = getelementptr inbounds i8, ptr %scores, i64 8
  store i32 %call3, ptr %arrayidx4, align 4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @x264_pixel_sad_x3_16x8(ptr nocapture noundef readonly %fenc, ptr nocapture noundef readonly %pix0, ptr nocapture noundef readonly %pix1, ptr nocapture noundef readonly %pix2, i32 noundef %i_stride, ptr nocapture noundef writeonly %scores) #7 {
entry:
  %call = tail call i32 @x264_pixel_sad_16x8(ptr noundef %fenc, i32 noundef 16, ptr noundef %pix0, i32 noundef %i_stride)
  store i32 %call, ptr %scores, align 4
  %call1 = tail call i32 @x264_pixel_sad_16x8(ptr noundef %fenc, i32 noundef 16, ptr noundef %pix1, i32 noundef %i_stride)
  %arrayidx2 = getelementptr inbounds i8, ptr %scores, i64 4
  store i32 %call1, ptr %arrayidx2, align 4
  %call3 = tail call i32 @x264_pixel_sad_16x8(ptr noundef %fenc, i32 noundef 16, ptr noundef %pix2, i32 noundef %i_stride)
  %arrayidx4 = getelementptr inbounds i8, ptr %scores, i64 8
  store i32 %call3, ptr %arrayidx4, align 4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @x264_pixel_sad_x3_8x16(ptr nocapture noundef readonly %fenc, ptr nocapture noundef readonly %pix0, ptr nocapture noundef readonly %pix1, ptr nocapture noundef readonly %pix2, i32 noundef %i_stride, ptr nocapture noundef writeonly %scores) #7 {
entry:
  %idx.ext8.i = sext i32 %i_stride to i64
  %0 = load <8 x i8>, ptr %fenc, align 1
  %1 = zext <8 x i8> %0 to <8 x i16>
  %2 = load <8 x i8>, ptr %pix0, align 1
  %3 = zext <8 x i8> %2 to <8 x i16>
  %4 = sub nsw <8 x i16> %1, %3
  %5 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %4, i1 false)
  %6 = zext <8 x i16> %5 to <8 x i32>
  %7 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %6)
  %add.ptr.i = getelementptr inbounds i8, ptr %fenc, i64 16
  %add.ptr9.i = getelementptr inbounds i8, ptr %pix0, i64 %idx.ext8.i
  %8 = load <8 x i8>, ptr %add.ptr.i, align 1
  %9 = zext <8 x i8> %8 to <8 x i16>
  %10 = load <8 x i8>, ptr %add.ptr9.i, align 1
  %11 = zext <8 x i8> %10 to <8 x i16>
  %12 = sub nsw <8 x i16> %9, %11
  %13 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %12, i1 false)
  %14 = zext <8 x i16> %13 to <8 x i32>
  %15 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %14)
  %op.rdx126.1 = add i32 %15, %7
  %add.ptr.i.1 = getelementptr inbounds i8, ptr %fenc, i64 32
  %add.ptr9.i.1 = getelementptr inbounds i8, ptr %add.ptr9.i, i64 %idx.ext8.i
  %16 = load <8 x i8>, ptr %add.ptr.i.1, align 1
  %17 = zext <8 x i8> %16 to <8 x i16>
  %18 = load <8 x i8>, ptr %add.ptr9.i.1, align 1
  %19 = zext <8 x i8> %18 to <8 x i16>
  %20 = sub nsw <8 x i16> %17, %19
  %21 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %20, i1 false)
  %22 = zext <8 x i16> %21 to <8 x i32>
  %23 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %22)
  %op.rdx126.2 = add i32 %23, %op.rdx126.1
  %add.ptr.i.2 = getelementptr inbounds i8, ptr %fenc, i64 48
  %add.ptr9.i.2 = getelementptr inbounds i8, ptr %add.ptr9.i.1, i64 %idx.ext8.i
  %24 = load <8 x i8>, ptr %add.ptr.i.2, align 1
  %25 = zext <8 x i8> %24 to <8 x i16>
  %26 = load <8 x i8>, ptr %add.ptr9.i.2, align 1
  %27 = zext <8 x i8> %26 to <8 x i16>
  %28 = sub nsw <8 x i16> %25, %27
  %29 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %28, i1 false)
  %30 = zext <8 x i16> %29 to <8 x i32>
  %31 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %30)
  %op.rdx126.3 = add i32 %31, %op.rdx126.2
  %add.ptr.i.3 = getelementptr inbounds i8, ptr %fenc, i64 64
  %add.ptr9.i.3 = getelementptr inbounds i8, ptr %add.ptr9.i.2, i64 %idx.ext8.i
  %32 = load <8 x i8>, ptr %add.ptr.i.3, align 1
  %33 = zext <8 x i8> %32 to <8 x i16>
  %34 = load <8 x i8>, ptr %add.ptr9.i.3, align 1
  %35 = zext <8 x i8> %34 to <8 x i16>
  %36 = sub nsw <8 x i16> %33, %35
  %37 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %36, i1 false)
  %38 = zext <8 x i16> %37 to <8 x i32>
  %39 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %38)
  %op.rdx126.4 = add i32 %39, %op.rdx126.3
  %add.ptr.i.4 = getelementptr inbounds i8, ptr %fenc, i64 80
  %add.ptr9.i.4 = getelementptr inbounds i8, ptr %add.ptr9.i.3, i64 %idx.ext8.i
  %40 = load <8 x i8>, ptr %add.ptr.i.4, align 1
  %41 = zext <8 x i8> %40 to <8 x i16>
  %42 = load <8 x i8>, ptr %add.ptr9.i.4, align 1
  %43 = zext <8 x i8> %42 to <8 x i16>
  %44 = sub nsw <8 x i16> %41, %43
  %45 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %44, i1 false)
  %46 = zext <8 x i16> %45 to <8 x i32>
  %47 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %46)
  %op.rdx126.5 = add i32 %47, %op.rdx126.4
  %add.ptr.i.5 = getelementptr inbounds i8, ptr %fenc, i64 96
  %add.ptr9.i.5 = getelementptr inbounds i8, ptr %add.ptr9.i.4, i64 %idx.ext8.i
  %48 = load <8 x i8>, ptr %add.ptr.i.5, align 1
  %49 = zext <8 x i8> %48 to <8 x i16>
  %50 = load <8 x i8>, ptr %add.ptr9.i.5, align 1
  %51 = zext <8 x i8> %50 to <8 x i16>
  %52 = sub nsw <8 x i16> %49, %51
  %53 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %52, i1 false)
  %54 = zext <8 x i16> %53 to <8 x i32>
  %55 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %54)
  %op.rdx126.6 = add i32 %55, %op.rdx126.5
  %add.ptr.i.6 = getelementptr inbounds i8, ptr %fenc, i64 112
  %add.ptr9.i.6 = getelementptr inbounds i8, ptr %add.ptr9.i.5, i64 %idx.ext8.i
  %56 = load <8 x i8>, ptr %add.ptr.i.6, align 1
  %57 = zext <8 x i8> %56 to <8 x i16>
  %58 = load <8 x i8>, ptr %add.ptr9.i.6, align 1
  %59 = zext <8 x i8> %58 to <8 x i16>
  %60 = sub nsw <8 x i16> %57, %59
  %61 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %60, i1 false)
  %62 = zext <8 x i16> %61 to <8 x i32>
  %63 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %62)
  %op.rdx126.7 = add i32 %63, %op.rdx126.6
  %add.ptr.i.7 = getelementptr inbounds i8, ptr %fenc, i64 128
  %add.ptr9.i.7 = getelementptr inbounds i8, ptr %add.ptr9.i.6, i64 %idx.ext8.i
  %64 = load <8 x i8>, ptr %add.ptr.i.7, align 1
  %65 = zext <8 x i8> %64 to <8 x i16>
  %66 = load <8 x i8>, ptr %add.ptr9.i.7, align 1
  %67 = zext <8 x i8> %66 to <8 x i16>
  %68 = sub nsw <8 x i16> %65, %67
  %69 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %68, i1 false)
  %70 = zext <8 x i16> %69 to <8 x i32>
  %71 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %70)
  %op.rdx126.8 = add i32 %71, %op.rdx126.7
  %add.ptr.i.8 = getelementptr inbounds i8, ptr %fenc, i64 144
  %add.ptr9.i.8 = getelementptr inbounds i8, ptr %add.ptr9.i.7, i64 %idx.ext8.i
  %72 = load <8 x i8>, ptr %add.ptr.i.8, align 1
  %73 = zext <8 x i8> %72 to <8 x i16>
  %74 = load <8 x i8>, ptr %add.ptr9.i.8, align 1
  %75 = zext <8 x i8> %74 to <8 x i16>
  %76 = sub nsw <8 x i16> %73, %75
  %77 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %76, i1 false)
  %78 = zext <8 x i16> %77 to <8 x i32>
  %79 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %78)
  %op.rdx126.9 = add i32 %79, %op.rdx126.8
  %add.ptr.i.9 = getelementptr inbounds i8, ptr %fenc, i64 160
  %add.ptr9.i.9 = getelementptr inbounds i8, ptr %add.ptr9.i.8, i64 %idx.ext8.i
  %80 = load <8 x i8>, ptr %add.ptr.i.9, align 1
  %81 = zext <8 x i8> %80 to <8 x i16>
  %82 = load <8 x i8>, ptr %add.ptr9.i.9, align 1
  %83 = zext <8 x i8> %82 to <8 x i16>
  %84 = sub nsw <8 x i16> %81, %83
  %85 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %84, i1 false)
  %86 = zext <8 x i16> %85 to <8 x i32>
  %87 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %86)
  %op.rdx126.10 = add i32 %87, %op.rdx126.9
  %add.ptr.i.10 = getelementptr inbounds i8, ptr %fenc, i64 176
  %add.ptr9.i.10 = getelementptr inbounds i8, ptr %add.ptr9.i.9, i64 %idx.ext8.i
  %88 = load <8 x i8>, ptr %add.ptr.i.10, align 1
  %89 = zext <8 x i8> %88 to <8 x i16>
  %90 = load <8 x i8>, ptr %add.ptr9.i.10, align 1
  %91 = zext <8 x i8> %90 to <8 x i16>
  %92 = sub nsw <8 x i16> %89, %91
  %93 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %92, i1 false)
  %94 = zext <8 x i16> %93 to <8 x i32>
  %95 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %94)
  %op.rdx126.11 = add i32 %95, %op.rdx126.10
  %add.ptr.i.11 = getelementptr inbounds i8, ptr %fenc, i64 192
  %add.ptr9.i.11 = getelementptr inbounds i8, ptr %add.ptr9.i.10, i64 %idx.ext8.i
  %96 = load <8 x i8>, ptr %add.ptr.i.11, align 1
  %97 = zext <8 x i8> %96 to <8 x i16>
  %98 = load <8 x i8>, ptr %add.ptr9.i.11, align 1
  %99 = zext <8 x i8> %98 to <8 x i16>
  %100 = sub nsw <8 x i16> %97, %99
  %101 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %100, i1 false)
  %102 = zext <8 x i16> %101 to <8 x i32>
  %103 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %102)
  %op.rdx126.12 = add i32 %103, %op.rdx126.11
  %add.ptr.i.12 = getelementptr inbounds i8, ptr %fenc, i64 208
  %add.ptr9.i.12 = getelementptr inbounds i8, ptr %add.ptr9.i.11, i64 %idx.ext8.i
  %104 = load <8 x i8>, ptr %add.ptr.i.12, align 1
  %105 = zext <8 x i8> %104 to <8 x i16>
  %106 = load <8 x i8>, ptr %add.ptr9.i.12, align 1
  %107 = zext <8 x i8> %106 to <8 x i16>
  %108 = sub nsw <8 x i16> %105, %107
  %109 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %108, i1 false)
  %110 = zext <8 x i16> %109 to <8 x i32>
  %111 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %110)
  %op.rdx126.13 = add i32 %111, %op.rdx126.12
  %add.ptr.i.13 = getelementptr inbounds i8, ptr %fenc, i64 224
  %add.ptr9.i.13 = getelementptr inbounds i8, ptr %add.ptr9.i.12, i64 %idx.ext8.i
  %112 = load <8 x i8>, ptr %add.ptr.i.13, align 1
  %113 = zext <8 x i8> %112 to <8 x i16>
  %114 = load <8 x i8>, ptr %add.ptr9.i.13, align 1
  %115 = zext <8 x i8> %114 to <8 x i16>
  %116 = sub nsw <8 x i16> %113, %115
  %117 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %116, i1 false)
  %118 = zext <8 x i16> %117 to <8 x i32>
  %119 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %118)
  %op.rdx126.14 = add i32 %119, %op.rdx126.13
  %add.ptr.i.14 = getelementptr inbounds i8, ptr %fenc, i64 240
  %add.ptr9.i.14 = getelementptr inbounds i8, ptr %add.ptr9.i.13, i64 %idx.ext8.i
  %120 = load <8 x i8>, ptr %add.ptr.i.14, align 1
  %121 = zext <8 x i8> %120 to <8 x i16>
  %122 = load <8 x i8>, ptr %add.ptr9.i.14, align 1
  %123 = zext <8 x i8> %122 to <8 x i16>
  %124 = sub nsw <8 x i16> %121, %123
  %125 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %124, i1 false)
  %126 = zext <8 x i16> %125 to <8 x i32>
  %127 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %126)
  %op.rdx126.15 = add i32 %127, %op.rdx126.14
  store i32 %op.rdx126.15, ptr %scores, align 4
  %128 = load <8 x i8>, ptr %fenc, align 1
  %129 = zext <8 x i8> %128 to <8 x i16>
  %130 = load <8 x i8>, ptr %pix1, align 1
  %131 = zext <8 x i8> %130 to <8 x i16>
  %132 = sub nsw <8 x i16> %129, %131
  %133 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %132, i1 false)
  %134 = zext <8 x i16> %133 to <8 x i32>
  %135 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %134)
  %add.ptr.i63 = getelementptr inbounds i8, ptr %fenc, i64 16
  %add.ptr9.i64 = getelementptr inbounds i8, ptr %pix1, i64 %idx.ext8.i
  %136 = load <8 x i8>, ptr %add.ptr.i63, align 1
  %137 = zext <8 x i8> %136 to <8 x i16>
  %138 = load <8 x i8>, ptr %add.ptr9.i64, align 1
  %139 = zext <8 x i8> %138 to <8 x i16>
  %140 = sub nsw <8 x i16> %137, %139
  %141 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %140, i1 false)
  %142 = zext <8 x i16> %141 to <8 x i32>
  %143 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %142)
  %op.rdx125.1 = add i32 %143, %135
  %add.ptr.i63.1 = getelementptr inbounds i8, ptr %fenc, i64 32
  %add.ptr9.i64.1 = getelementptr inbounds i8, ptr %add.ptr9.i64, i64 %idx.ext8.i
  %144 = load <8 x i8>, ptr %add.ptr.i63.1, align 1
  %145 = zext <8 x i8> %144 to <8 x i16>
  %146 = load <8 x i8>, ptr %add.ptr9.i64.1, align 1
  %147 = zext <8 x i8> %146 to <8 x i16>
  %148 = sub nsw <8 x i16> %145, %147
  %149 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %148, i1 false)
  %150 = zext <8 x i16> %149 to <8 x i32>
  %151 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %150)
  %op.rdx125.2 = add i32 %151, %op.rdx125.1
  %add.ptr.i63.2 = getelementptr inbounds i8, ptr %fenc, i64 48
  %add.ptr9.i64.2 = getelementptr inbounds i8, ptr %add.ptr9.i64.1, i64 %idx.ext8.i
  %152 = load <8 x i8>, ptr %add.ptr.i63.2, align 1
  %153 = zext <8 x i8> %152 to <8 x i16>
  %154 = load <8 x i8>, ptr %add.ptr9.i64.2, align 1
  %155 = zext <8 x i8> %154 to <8 x i16>
  %156 = sub nsw <8 x i16> %153, %155
  %157 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %156, i1 false)
  %158 = zext <8 x i16> %157 to <8 x i32>
  %159 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %158)
  %op.rdx125.3 = add i32 %159, %op.rdx125.2
  %add.ptr.i63.3 = getelementptr inbounds i8, ptr %fenc, i64 64
  %add.ptr9.i64.3 = getelementptr inbounds i8, ptr %add.ptr9.i64.2, i64 %idx.ext8.i
  %160 = load <8 x i8>, ptr %add.ptr.i63.3, align 1
  %161 = zext <8 x i8> %160 to <8 x i16>
  %162 = load <8 x i8>, ptr %add.ptr9.i64.3, align 1
  %163 = zext <8 x i8> %162 to <8 x i16>
  %164 = sub nsw <8 x i16> %161, %163
  %165 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %164, i1 false)
  %166 = zext <8 x i16> %165 to <8 x i32>
  %167 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %166)
  %op.rdx125.4 = add i32 %167, %op.rdx125.3
  %add.ptr.i63.4 = getelementptr inbounds i8, ptr %fenc, i64 80
  %add.ptr9.i64.4 = getelementptr inbounds i8, ptr %add.ptr9.i64.3, i64 %idx.ext8.i
  %168 = load <8 x i8>, ptr %add.ptr.i63.4, align 1
  %169 = zext <8 x i8> %168 to <8 x i16>
  %170 = load <8 x i8>, ptr %add.ptr9.i64.4, align 1
  %171 = zext <8 x i8> %170 to <8 x i16>
  %172 = sub nsw <8 x i16> %169, %171
  %173 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %172, i1 false)
  %174 = zext <8 x i16> %173 to <8 x i32>
  %175 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %174)
  %op.rdx125.5 = add i32 %175, %op.rdx125.4
  %add.ptr.i63.5 = getelementptr inbounds i8, ptr %fenc, i64 96
  %add.ptr9.i64.5 = getelementptr inbounds i8, ptr %add.ptr9.i64.4, i64 %idx.ext8.i
  %176 = load <8 x i8>, ptr %add.ptr.i63.5, align 1
  %177 = zext <8 x i8> %176 to <8 x i16>
  %178 = load <8 x i8>, ptr %add.ptr9.i64.5, align 1
  %179 = zext <8 x i8> %178 to <8 x i16>
  %180 = sub nsw <8 x i16> %177, %179
  %181 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %180, i1 false)
  %182 = zext <8 x i16> %181 to <8 x i32>
  %183 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %182)
  %op.rdx125.6 = add i32 %183, %op.rdx125.5
  %add.ptr.i63.6 = getelementptr inbounds i8, ptr %fenc, i64 112
  %add.ptr9.i64.6 = getelementptr inbounds i8, ptr %add.ptr9.i64.5, i64 %idx.ext8.i
  %184 = load <8 x i8>, ptr %add.ptr.i63.6, align 1
  %185 = zext <8 x i8> %184 to <8 x i16>
  %186 = load <8 x i8>, ptr %add.ptr9.i64.6, align 1
  %187 = zext <8 x i8> %186 to <8 x i16>
  %188 = sub nsw <8 x i16> %185, %187
  %189 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %188, i1 false)
  %190 = zext <8 x i16> %189 to <8 x i32>
  %191 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %190)
  %op.rdx125.7 = add i32 %191, %op.rdx125.6
  %add.ptr.i63.7 = getelementptr inbounds i8, ptr %fenc, i64 128
  %add.ptr9.i64.7 = getelementptr inbounds i8, ptr %add.ptr9.i64.6, i64 %idx.ext8.i
  %192 = load <8 x i8>, ptr %add.ptr.i63.7, align 1
  %193 = zext <8 x i8> %192 to <8 x i16>
  %194 = load <8 x i8>, ptr %add.ptr9.i64.7, align 1
  %195 = zext <8 x i8> %194 to <8 x i16>
  %196 = sub nsw <8 x i16> %193, %195
  %197 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %196, i1 false)
  %198 = zext <8 x i16> %197 to <8 x i32>
  %199 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %198)
  %op.rdx125.8 = add i32 %199, %op.rdx125.7
  %add.ptr.i63.8 = getelementptr inbounds i8, ptr %fenc, i64 144
  %add.ptr9.i64.8 = getelementptr inbounds i8, ptr %add.ptr9.i64.7, i64 %idx.ext8.i
  %200 = load <8 x i8>, ptr %add.ptr.i63.8, align 1
  %201 = zext <8 x i8> %200 to <8 x i16>
  %202 = load <8 x i8>, ptr %add.ptr9.i64.8, align 1
  %203 = zext <8 x i8> %202 to <8 x i16>
  %204 = sub nsw <8 x i16> %201, %203
  %205 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %204, i1 false)
  %206 = zext <8 x i16> %205 to <8 x i32>
  %207 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %206)
  %op.rdx125.9 = add i32 %207, %op.rdx125.8
  %add.ptr.i63.9 = getelementptr inbounds i8, ptr %fenc, i64 160
  %add.ptr9.i64.9 = getelementptr inbounds i8, ptr %add.ptr9.i64.8, i64 %idx.ext8.i
  %208 = load <8 x i8>, ptr %add.ptr.i63.9, align 1
  %209 = zext <8 x i8> %208 to <8 x i16>
  %210 = load <8 x i8>, ptr %add.ptr9.i64.9, align 1
  %211 = zext <8 x i8> %210 to <8 x i16>
  %212 = sub nsw <8 x i16> %209, %211
  %213 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %212, i1 false)
  %214 = zext <8 x i16> %213 to <8 x i32>
  %215 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %214)
  %op.rdx125.10 = add i32 %215, %op.rdx125.9
  %add.ptr.i63.10 = getelementptr inbounds i8, ptr %fenc, i64 176
  %add.ptr9.i64.10 = getelementptr inbounds i8, ptr %add.ptr9.i64.9, i64 %idx.ext8.i
  %216 = load <8 x i8>, ptr %add.ptr.i63.10, align 1
  %217 = zext <8 x i8> %216 to <8 x i16>
  %218 = load <8 x i8>, ptr %add.ptr9.i64.10, align 1
  %219 = zext <8 x i8> %218 to <8 x i16>
  %220 = sub nsw <8 x i16> %217, %219
  %221 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %220, i1 false)
  %222 = zext <8 x i16> %221 to <8 x i32>
  %223 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %222)
  %op.rdx125.11 = add i32 %223, %op.rdx125.10
  %add.ptr.i63.11 = getelementptr inbounds i8, ptr %fenc, i64 192
  %add.ptr9.i64.11 = getelementptr inbounds i8, ptr %add.ptr9.i64.10, i64 %idx.ext8.i
  %224 = load <8 x i8>, ptr %add.ptr.i63.11, align 1
  %225 = zext <8 x i8> %224 to <8 x i16>
  %226 = load <8 x i8>, ptr %add.ptr9.i64.11, align 1
  %227 = zext <8 x i8> %226 to <8 x i16>
  %228 = sub nsw <8 x i16> %225, %227
  %229 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %228, i1 false)
  %230 = zext <8 x i16> %229 to <8 x i32>
  %231 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %230)
  %op.rdx125.12 = add i32 %231, %op.rdx125.11
  %add.ptr.i63.12 = getelementptr inbounds i8, ptr %fenc, i64 208
  %add.ptr9.i64.12 = getelementptr inbounds i8, ptr %add.ptr9.i64.11, i64 %idx.ext8.i
  %232 = load <8 x i8>, ptr %add.ptr.i63.12, align 1
  %233 = zext <8 x i8> %232 to <8 x i16>
  %234 = load <8 x i8>, ptr %add.ptr9.i64.12, align 1
  %235 = zext <8 x i8> %234 to <8 x i16>
  %236 = sub nsw <8 x i16> %233, %235
  %237 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %236, i1 false)
  %238 = zext <8 x i16> %237 to <8 x i32>
  %239 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %238)
  %op.rdx125.13 = add i32 %239, %op.rdx125.12
  %add.ptr.i63.13 = getelementptr inbounds i8, ptr %fenc, i64 224
  %add.ptr9.i64.13 = getelementptr inbounds i8, ptr %add.ptr9.i64.12, i64 %idx.ext8.i
  %240 = load <8 x i8>, ptr %add.ptr.i63.13, align 1
  %241 = zext <8 x i8> %240 to <8 x i16>
  %242 = load <8 x i8>, ptr %add.ptr9.i64.13, align 1
  %243 = zext <8 x i8> %242 to <8 x i16>
  %244 = sub nsw <8 x i16> %241, %243
  %245 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %244, i1 false)
  %246 = zext <8 x i16> %245 to <8 x i32>
  %247 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %246)
  %op.rdx125.14 = add i32 %247, %op.rdx125.13
  %add.ptr.i63.14 = getelementptr inbounds i8, ptr %fenc, i64 240
  %add.ptr9.i64.14 = getelementptr inbounds i8, ptr %add.ptr9.i64.13, i64 %idx.ext8.i
  %248 = load <8 x i8>, ptr %add.ptr.i63.14, align 1
  %249 = zext <8 x i8> %248 to <8 x i16>
  %250 = load <8 x i8>, ptr %add.ptr9.i64.14, align 1
  %251 = zext <8 x i8> %250 to <8 x i16>
  %252 = sub nsw <8 x i16> %249, %251
  %253 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %252, i1 false)
  %254 = zext <8 x i16> %253 to <8 x i32>
  %255 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %254)
  %op.rdx125.15 = add i32 %255, %op.rdx125.14
  %arrayidx2 = getelementptr inbounds i8, ptr %scores, i64 4
  store i32 %op.rdx125.15, ptr %arrayidx2, align 4
  %256 = load <8 x i8>, ptr %fenc, align 1
  %257 = zext <8 x i8> %256 to <8 x i16>
  %258 = load <8 x i8>, ptr %pix2, align 1
  %259 = zext <8 x i8> %258 to <8 x i16>
  %260 = sub nsw <8 x i16> %257, %259
  %261 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %260, i1 false)
  %262 = zext <8 x i16> %261 to <8 x i32>
  %263 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %262)
  %add.ptr.i120 = getelementptr inbounds i8, ptr %fenc, i64 16
  %add.ptr9.i121 = getelementptr inbounds i8, ptr %pix2, i64 %idx.ext8.i
  %264 = load <8 x i8>, ptr %add.ptr.i120, align 1
  %265 = zext <8 x i8> %264 to <8 x i16>
  %266 = load <8 x i8>, ptr %add.ptr9.i121, align 1
  %267 = zext <8 x i8> %266 to <8 x i16>
  %268 = sub nsw <8 x i16> %265, %267
  %269 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %268, i1 false)
  %270 = zext <8 x i16> %269 to <8 x i32>
  %271 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %270)
  %op.rdx.1 = add i32 %271, %263
  %add.ptr.i120.1 = getelementptr inbounds i8, ptr %fenc, i64 32
  %add.ptr9.i121.1 = getelementptr inbounds i8, ptr %add.ptr9.i121, i64 %idx.ext8.i
  %272 = load <8 x i8>, ptr %add.ptr.i120.1, align 1
  %273 = zext <8 x i8> %272 to <8 x i16>
  %274 = load <8 x i8>, ptr %add.ptr9.i121.1, align 1
  %275 = zext <8 x i8> %274 to <8 x i16>
  %276 = sub nsw <8 x i16> %273, %275
  %277 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %276, i1 false)
  %278 = zext <8 x i16> %277 to <8 x i32>
  %279 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %278)
  %op.rdx.2 = add i32 %279, %op.rdx.1
  %add.ptr.i120.2 = getelementptr inbounds i8, ptr %fenc, i64 48
  %add.ptr9.i121.2 = getelementptr inbounds i8, ptr %add.ptr9.i121.1, i64 %idx.ext8.i
  %280 = load <8 x i8>, ptr %add.ptr.i120.2, align 1
  %281 = zext <8 x i8> %280 to <8 x i16>
  %282 = load <8 x i8>, ptr %add.ptr9.i121.2, align 1
  %283 = zext <8 x i8> %282 to <8 x i16>
  %284 = sub nsw <8 x i16> %281, %283
  %285 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %284, i1 false)
  %286 = zext <8 x i16> %285 to <8 x i32>
  %287 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %286)
  %op.rdx.3 = add i32 %287, %op.rdx.2
  %add.ptr.i120.3 = getelementptr inbounds i8, ptr %fenc, i64 64
  %add.ptr9.i121.3 = getelementptr inbounds i8, ptr %add.ptr9.i121.2, i64 %idx.ext8.i
  %288 = load <8 x i8>, ptr %add.ptr.i120.3, align 1
  %289 = zext <8 x i8> %288 to <8 x i16>
  %290 = load <8 x i8>, ptr %add.ptr9.i121.3, align 1
  %291 = zext <8 x i8> %290 to <8 x i16>
  %292 = sub nsw <8 x i16> %289, %291
  %293 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %292, i1 false)
  %294 = zext <8 x i16> %293 to <8 x i32>
  %295 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %294)
  %op.rdx.4 = add i32 %295, %op.rdx.3
  %add.ptr.i120.4 = getelementptr inbounds i8, ptr %fenc, i64 80
  %add.ptr9.i121.4 = getelementptr inbounds i8, ptr %add.ptr9.i121.3, i64 %idx.ext8.i
  %296 = load <8 x i8>, ptr %add.ptr.i120.4, align 1
  %297 = zext <8 x i8> %296 to <8 x i16>
  %298 = load <8 x i8>, ptr %add.ptr9.i121.4, align 1
  %299 = zext <8 x i8> %298 to <8 x i16>
  %300 = sub nsw <8 x i16> %297, %299
  %301 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %300, i1 false)
  %302 = zext <8 x i16> %301 to <8 x i32>
  %303 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %302)
  %op.rdx.5 = add i32 %303, %op.rdx.4
  %add.ptr.i120.5 = getelementptr inbounds i8, ptr %fenc, i64 96
  %add.ptr9.i121.5 = getelementptr inbounds i8, ptr %add.ptr9.i121.4, i64 %idx.ext8.i
  %304 = load <8 x i8>, ptr %add.ptr.i120.5, align 1
  %305 = zext <8 x i8> %304 to <8 x i16>
  %306 = load <8 x i8>, ptr %add.ptr9.i121.5, align 1
  %307 = zext <8 x i8> %306 to <8 x i16>
  %308 = sub nsw <8 x i16> %305, %307
  %309 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %308, i1 false)
  %310 = zext <8 x i16> %309 to <8 x i32>
  %311 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %310)
  %op.rdx.6 = add i32 %311, %op.rdx.5
  %add.ptr.i120.6 = getelementptr inbounds i8, ptr %fenc, i64 112
  %add.ptr9.i121.6 = getelementptr inbounds i8, ptr %add.ptr9.i121.5, i64 %idx.ext8.i
  %312 = load <8 x i8>, ptr %add.ptr.i120.6, align 1
  %313 = zext <8 x i8> %312 to <8 x i16>
  %314 = load <8 x i8>, ptr %add.ptr9.i121.6, align 1
  %315 = zext <8 x i8> %314 to <8 x i16>
  %316 = sub nsw <8 x i16> %313, %315
  %317 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %316, i1 false)
  %318 = zext <8 x i16> %317 to <8 x i32>
  %319 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %318)
  %op.rdx.7 = add i32 %319, %op.rdx.6
  %add.ptr.i120.7 = getelementptr inbounds i8, ptr %fenc, i64 128
  %add.ptr9.i121.7 = getelementptr inbounds i8, ptr %add.ptr9.i121.6, i64 %idx.ext8.i
  %320 = load <8 x i8>, ptr %add.ptr.i120.7, align 1
  %321 = zext <8 x i8> %320 to <8 x i16>
  %322 = load <8 x i8>, ptr %add.ptr9.i121.7, align 1
  %323 = zext <8 x i8> %322 to <8 x i16>
  %324 = sub nsw <8 x i16> %321, %323
  %325 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %324, i1 false)
  %326 = zext <8 x i16> %325 to <8 x i32>
  %327 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %326)
  %op.rdx.8 = add i32 %327, %op.rdx.7
  %add.ptr.i120.8 = getelementptr inbounds i8, ptr %fenc, i64 144
  %add.ptr9.i121.8 = getelementptr inbounds i8, ptr %add.ptr9.i121.7, i64 %idx.ext8.i
  %328 = load <8 x i8>, ptr %add.ptr.i120.8, align 1
  %329 = zext <8 x i8> %328 to <8 x i16>
  %330 = load <8 x i8>, ptr %add.ptr9.i121.8, align 1
  %331 = zext <8 x i8> %330 to <8 x i16>
  %332 = sub nsw <8 x i16> %329, %331
  %333 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %332, i1 false)
  %334 = zext <8 x i16> %333 to <8 x i32>
  %335 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %334)
  %op.rdx.9 = add i32 %335, %op.rdx.8
  %add.ptr.i120.9 = getelementptr inbounds i8, ptr %fenc, i64 160
  %add.ptr9.i121.9 = getelementptr inbounds i8, ptr %add.ptr9.i121.8, i64 %idx.ext8.i
  %336 = load <8 x i8>, ptr %add.ptr.i120.9, align 1
  %337 = zext <8 x i8> %336 to <8 x i16>
  %338 = load <8 x i8>, ptr %add.ptr9.i121.9, align 1
  %339 = zext <8 x i8> %338 to <8 x i16>
  %340 = sub nsw <8 x i16> %337, %339
  %341 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %340, i1 false)
  %342 = zext <8 x i16> %341 to <8 x i32>
  %343 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %342)
  %op.rdx.10 = add i32 %343, %op.rdx.9
  %add.ptr.i120.10 = getelementptr inbounds i8, ptr %fenc, i64 176
  %add.ptr9.i121.10 = getelementptr inbounds i8, ptr %add.ptr9.i121.9, i64 %idx.ext8.i
  %344 = load <8 x i8>, ptr %add.ptr.i120.10, align 1
  %345 = zext <8 x i8> %344 to <8 x i16>
  %346 = load <8 x i8>, ptr %add.ptr9.i121.10, align 1
  %347 = zext <8 x i8> %346 to <8 x i16>
  %348 = sub nsw <8 x i16> %345, %347
  %349 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %348, i1 false)
  %350 = zext <8 x i16> %349 to <8 x i32>
  %351 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %350)
  %op.rdx.11 = add i32 %351, %op.rdx.10
  %add.ptr.i120.11 = getelementptr inbounds i8, ptr %fenc, i64 192
  %add.ptr9.i121.11 = getelementptr inbounds i8, ptr %add.ptr9.i121.10, i64 %idx.ext8.i
  %352 = load <8 x i8>, ptr %add.ptr.i120.11, align 1
  %353 = zext <8 x i8> %352 to <8 x i16>
  %354 = load <8 x i8>, ptr %add.ptr9.i121.11, align 1
  %355 = zext <8 x i8> %354 to <8 x i16>
  %356 = sub nsw <8 x i16> %353, %355
  %357 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %356, i1 false)
  %358 = zext <8 x i16> %357 to <8 x i32>
  %359 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %358)
  %op.rdx.12 = add i32 %359, %op.rdx.11
  %add.ptr.i120.12 = getelementptr inbounds i8, ptr %fenc, i64 208
  %add.ptr9.i121.12 = getelementptr inbounds i8, ptr %add.ptr9.i121.11, i64 %idx.ext8.i
  %360 = load <8 x i8>, ptr %add.ptr.i120.12, align 1
  %361 = zext <8 x i8> %360 to <8 x i16>
  %362 = load <8 x i8>, ptr %add.ptr9.i121.12, align 1
  %363 = zext <8 x i8> %362 to <8 x i16>
  %364 = sub nsw <8 x i16> %361, %363
  %365 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %364, i1 false)
  %366 = zext <8 x i16> %365 to <8 x i32>
  %367 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %366)
  %op.rdx.13 = add i32 %367, %op.rdx.12
  %add.ptr.i120.13 = getelementptr inbounds i8, ptr %fenc, i64 224
  %add.ptr9.i121.13 = getelementptr inbounds i8, ptr %add.ptr9.i121.12, i64 %idx.ext8.i
  %368 = load <8 x i8>, ptr %add.ptr.i120.13, align 1
  %369 = zext <8 x i8> %368 to <8 x i16>
  %370 = load <8 x i8>, ptr %add.ptr9.i121.13, align 1
  %371 = zext <8 x i8> %370 to <8 x i16>
  %372 = sub nsw <8 x i16> %369, %371
  %373 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %372, i1 false)
  %374 = zext <8 x i16> %373 to <8 x i32>
  %375 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %374)
  %op.rdx.14 = add i32 %375, %op.rdx.13
  %add.ptr.i120.14 = getelementptr inbounds i8, ptr %fenc, i64 240
  %add.ptr9.i121.14 = getelementptr inbounds i8, ptr %add.ptr9.i121.13, i64 %idx.ext8.i
  %376 = load <8 x i8>, ptr %add.ptr.i120.14, align 1
  %377 = zext <8 x i8> %376 to <8 x i16>
  %378 = load <8 x i8>, ptr %add.ptr9.i121.14, align 1
  %379 = zext <8 x i8> %378 to <8 x i16>
  %380 = sub nsw <8 x i16> %377, %379
  %381 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %380, i1 false)
  %382 = zext <8 x i16> %381 to <8 x i32>
  %383 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %382)
  %op.rdx.15 = add i32 %383, %op.rdx.14
  %arrayidx4 = getelementptr inbounds i8, ptr %scores, i64 8
  store i32 %op.rdx.15, ptr %arrayidx4, align 4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @x264_pixel_sad_x3_8x8(ptr nocapture noundef readonly %fenc, ptr nocapture noundef readonly %pix0, ptr nocapture noundef readonly %pix1, ptr nocapture noundef readonly %pix2, i32 noundef %i_stride, ptr nocapture noundef writeonly %scores) #7 {
entry:
  %idx.ext8.i = sext i32 %i_stride to i64
  %0 = load <8 x i8>, ptr %fenc, align 1
  %1 = zext <8 x i8> %0 to <8 x i16>
  %2 = load <8 x i8>, ptr %pix0, align 1
  %3 = zext <8 x i8> %2 to <8 x i16>
  %4 = sub nsw <8 x i16> %1, %3
  %5 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %4, i1 false)
  %6 = zext <8 x i16> %5 to <8 x i32>
  %7 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %6)
  %add.ptr.i = getelementptr inbounds i8, ptr %fenc, i64 16
  %add.ptr9.i = getelementptr inbounds i8, ptr %pix0, i64 %idx.ext8.i
  %8 = load <8 x i8>, ptr %add.ptr.i, align 1
  %9 = zext <8 x i8> %8 to <8 x i16>
  %10 = load <8 x i8>, ptr %add.ptr9.i, align 1
  %11 = zext <8 x i8> %10 to <8 x i16>
  %12 = sub nsw <8 x i16> %9, %11
  %13 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %12, i1 false)
  %14 = zext <8 x i16> %13 to <8 x i32>
  %15 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %14)
  %op.rdx126.1 = add i32 %15, %7
  %add.ptr.i.1 = getelementptr inbounds i8, ptr %fenc, i64 32
  %add.ptr9.i.1 = getelementptr inbounds i8, ptr %add.ptr9.i, i64 %idx.ext8.i
  %16 = load <8 x i8>, ptr %add.ptr.i.1, align 1
  %17 = zext <8 x i8> %16 to <8 x i16>
  %18 = load <8 x i8>, ptr %add.ptr9.i.1, align 1
  %19 = zext <8 x i8> %18 to <8 x i16>
  %20 = sub nsw <8 x i16> %17, %19
  %21 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %20, i1 false)
  %22 = zext <8 x i16> %21 to <8 x i32>
  %23 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %22)
  %op.rdx126.2 = add i32 %23, %op.rdx126.1
  %add.ptr.i.2 = getelementptr inbounds i8, ptr %fenc, i64 48
  %add.ptr9.i.2 = getelementptr inbounds i8, ptr %add.ptr9.i.1, i64 %idx.ext8.i
  %24 = load <8 x i8>, ptr %add.ptr.i.2, align 1
  %25 = zext <8 x i8> %24 to <8 x i16>
  %26 = load <8 x i8>, ptr %add.ptr9.i.2, align 1
  %27 = zext <8 x i8> %26 to <8 x i16>
  %28 = sub nsw <8 x i16> %25, %27
  %29 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %28, i1 false)
  %30 = zext <8 x i16> %29 to <8 x i32>
  %31 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %30)
  %op.rdx126.3 = add i32 %31, %op.rdx126.2
  %add.ptr.i.3 = getelementptr inbounds i8, ptr %fenc, i64 64
  %add.ptr9.i.3 = getelementptr inbounds i8, ptr %add.ptr9.i.2, i64 %idx.ext8.i
  %32 = load <8 x i8>, ptr %add.ptr.i.3, align 1
  %33 = zext <8 x i8> %32 to <8 x i16>
  %34 = load <8 x i8>, ptr %add.ptr9.i.3, align 1
  %35 = zext <8 x i8> %34 to <8 x i16>
  %36 = sub nsw <8 x i16> %33, %35
  %37 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %36, i1 false)
  %38 = zext <8 x i16> %37 to <8 x i32>
  %39 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %38)
  %op.rdx126.4 = add i32 %39, %op.rdx126.3
  %add.ptr.i.4 = getelementptr inbounds i8, ptr %fenc, i64 80
  %add.ptr9.i.4 = getelementptr inbounds i8, ptr %add.ptr9.i.3, i64 %idx.ext8.i
  %40 = load <8 x i8>, ptr %add.ptr.i.4, align 1
  %41 = zext <8 x i8> %40 to <8 x i16>
  %42 = load <8 x i8>, ptr %add.ptr9.i.4, align 1
  %43 = zext <8 x i8> %42 to <8 x i16>
  %44 = sub nsw <8 x i16> %41, %43
  %45 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %44, i1 false)
  %46 = zext <8 x i16> %45 to <8 x i32>
  %47 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %46)
  %op.rdx126.5 = add i32 %47, %op.rdx126.4
  %add.ptr.i.5 = getelementptr inbounds i8, ptr %fenc, i64 96
  %add.ptr9.i.5 = getelementptr inbounds i8, ptr %add.ptr9.i.4, i64 %idx.ext8.i
  %48 = load <8 x i8>, ptr %add.ptr.i.5, align 1
  %49 = zext <8 x i8> %48 to <8 x i16>
  %50 = load <8 x i8>, ptr %add.ptr9.i.5, align 1
  %51 = zext <8 x i8> %50 to <8 x i16>
  %52 = sub nsw <8 x i16> %49, %51
  %53 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %52, i1 false)
  %54 = zext <8 x i16> %53 to <8 x i32>
  %55 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %54)
  %op.rdx126.6 = add i32 %55, %op.rdx126.5
  %add.ptr.i.6 = getelementptr inbounds i8, ptr %fenc, i64 112
  %add.ptr9.i.6 = getelementptr inbounds i8, ptr %add.ptr9.i.5, i64 %idx.ext8.i
  %56 = load <8 x i8>, ptr %add.ptr.i.6, align 1
  %57 = zext <8 x i8> %56 to <8 x i16>
  %58 = load <8 x i8>, ptr %add.ptr9.i.6, align 1
  %59 = zext <8 x i8> %58 to <8 x i16>
  %60 = sub nsw <8 x i16> %57, %59
  %61 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %60, i1 false)
  %62 = zext <8 x i16> %61 to <8 x i32>
  %63 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %62)
  %op.rdx126.7 = add i32 %63, %op.rdx126.6
  store i32 %op.rdx126.7, ptr %scores, align 4
  %64 = load <8 x i8>, ptr %fenc, align 1
  %65 = zext <8 x i8> %64 to <8 x i16>
  %66 = load <8 x i8>, ptr %pix1, align 1
  %67 = zext <8 x i8> %66 to <8 x i16>
  %68 = sub nsw <8 x i16> %65, %67
  %69 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %68, i1 false)
  %70 = zext <8 x i16> %69 to <8 x i32>
  %71 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %70)
  %add.ptr.i63 = getelementptr inbounds i8, ptr %fenc, i64 16
  %add.ptr9.i64 = getelementptr inbounds i8, ptr %pix1, i64 %idx.ext8.i
  %72 = load <8 x i8>, ptr %add.ptr.i63, align 1
  %73 = zext <8 x i8> %72 to <8 x i16>
  %74 = load <8 x i8>, ptr %add.ptr9.i64, align 1
  %75 = zext <8 x i8> %74 to <8 x i16>
  %76 = sub nsw <8 x i16> %73, %75
  %77 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %76, i1 false)
  %78 = zext <8 x i16> %77 to <8 x i32>
  %79 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %78)
  %op.rdx125.1 = add i32 %79, %71
  %add.ptr.i63.1 = getelementptr inbounds i8, ptr %fenc, i64 32
  %add.ptr9.i64.1 = getelementptr inbounds i8, ptr %add.ptr9.i64, i64 %idx.ext8.i
  %80 = load <8 x i8>, ptr %add.ptr.i63.1, align 1
  %81 = zext <8 x i8> %80 to <8 x i16>
  %82 = load <8 x i8>, ptr %add.ptr9.i64.1, align 1
  %83 = zext <8 x i8> %82 to <8 x i16>
  %84 = sub nsw <8 x i16> %81, %83
  %85 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %84, i1 false)
  %86 = zext <8 x i16> %85 to <8 x i32>
  %87 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %86)
  %op.rdx125.2 = add i32 %87, %op.rdx125.1
  %add.ptr.i63.2 = getelementptr inbounds i8, ptr %fenc, i64 48
  %add.ptr9.i64.2 = getelementptr inbounds i8, ptr %add.ptr9.i64.1, i64 %idx.ext8.i
  %88 = load <8 x i8>, ptr %add.ptr.i63.2, align 1
  %89 = zext <8 x i8> %88 to <8 x i16>
  %90 = load <8 x i8>, ptr %add.ptr9.i64.2, align 1
  %91 = zext <8 x i8> %90 to <8 x i16>
  %92 = sub nsw <8 x i16> %89, %91
  %93 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %92, i1 false)
  %94 = zext <8 x i16> %93 to <8 x i32>
  %95 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %94)
  %op.rdx125.3 = add i32 %95, %op.rdx125.2
  %add.ptr.i63.3 = getelementptr inbounds i8, ptr %fenc, i64 64
  %add.ptr9.i64.3 = getelementptr inbounds i8, ptr %add.ptr9.i64.2, i64 %idx.ext8.i
  %96 = load <8 x i8>, ptr %add.ptr.i63.3, align 1
  %97 = zext <8 x i8> %96 to <8 x i16>
  %98 = load <8 x i8>, ptr %add.ptr9.i64.3, align 1
  %99 = zext <8 x i8> %98 to <8 x i16>
  %100 = sub nsw <8 x i16> %97, %99
  %101 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %100, i1 false)
  %102 = zext <8 x i16> %101 to <8 x i32>
  %103 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %102)
  %op.rdx125.4 = add i32 %103, %op.rdx125.3
  %add.ptr.i63.4 = getelementptr inbounds i8, ptr %fenc, i64 80
  %add.ptr9.i64.4 = getelementptr inbounds i8, ptr %add.ptr9.i64.3, i64 %idx.ext8.i
  %104 = load <8 x i8>, ptr %add.ptr.i63.4, align 1
  %105 = zext <8 x i8> %104 to <8 x i16>
  %106 = load <8 x i8>, ptr %add.ptr9.i64.4, align 1
  %107 = zext <8 x i8> %106 to <8 x i16>
  %108 = sub nsw <8 x i16> %105, %107
  %109 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %108, i1 false)
  %110 = zext <8 x i16> %109 to <8 x i32>
  %111 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %110)
  %op.rdx125.5 = add i32 %111, %op.rdx125.4
  %add.ptr.i63.5 = getelementptr inbounds i8, ptr %fenc, i64 96
  %add.ptr9.i64.5 = getelementptr inbounds i8, ptr %add.ptr9.i64.4, i64 %idx.ext8.i
  %112 = load <8 x i8>, ptr %add.ptr.i63.5, align 1
  %113 = zext <8 x i8> %112 to <8 x i16>
  %114 = load <8 x i8>, ptr %add.ptr9.i64.5, align 1
  %115 = zext <8 x i8> %114 to <8 x i16>
  %116 = sub nsw <8 x i16> %113, %115
  %117 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %116, i1 false)
  %118 = zext <8 x i16> %117 to <8 x i32>
  %119 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %118)
  %op.rdx125.6 = add i32 %119, %op.rdx125.5
  %add.ptr.i63.6 = getelementptr inbounds i8, ptr %fenc, i64 112
  %add.ptr9.i64.6 = getelementptr inbounds i8, ptr %add.ptr9.i64.5, i64 %idx.ext8.i
  %120 = load <8 x i8>, ptr %add.ptr.i63.6, align 1
  %121 = zext <8 x i8> %120 to <8 x i16>
  %122 = load <8 x i8>, ptr %add.ptr9.i64.6, align 1
  %123 = zext <8 x i8> %122 to <8 x i16>
  %124 = sub nsw <8 x i16> %121, %123
  %125 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %124, i1 false)
  %126 = zext <8 x i16> %125 to <8 x i32>
  %127 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %126)
  %op.rdx125.7 = add i32 %127, %op.rdx125.6
  %arrayidx2 = getelementptr inbounds i8, ptr %scores, i64 4
  store i32 %op.rdx125.7, ptr %arrayidx2, align 4
  %128 = load <8 x i8>, ptr %fenc, align 1
  %129 = zext <8 x i8> %128 to <8 x i16>
  %130 = load <8 x i8>, ptr %pix2, align 1
  %131 = zext <8 x i8> %130 to <8 x i16>
  %132 = sub nsw <8 x i16> %129, %131
  %133 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %132, i1 false)
  %134 = zext <8 x i16> %133 to <8 x i32>
  %135 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %134)
  %add.ptr.i120 = getelementptr inbounds i8, ptr %fenc, i64 16
  %add.ptr9.i121 = getelementptr inbounds i8, ptr %pix2, i64 %idx.ext8.i
  %136 = load <8 x i8>, ptr %add.ptr.i120, align 1
  %137 = zext <8 x i8> %136 to <8 x i16>
  %138 = load <8 x i8>, ptr %add.ptr9.i121, align 1
  %139 = zext <8 x i8> %138 to <8 x i16>
  %140 = sub nsw <8 x i16> %137, %139
  %141 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %140, i1 false)
  %142 = zext <8 x i16> %141 to <8 x i32>
  %143 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %142)
  %op.rdx.1 = add i32 %143, %135
  %add.ptr.i120.1 = getelementptr inbounds i8, ptr %fenc, i64 32
  %add.ptr9.i121.1 = getelementptr inbounds i8, ptr %add.ptr9.i121, i64 %idx.ext8.i
  %144 = load <8 x i8>, ptr %add.ptr.i120.1, align 1
  %145 = zext <8 x i8> %144 to <8 x i16>
  %146 = load <8 x i8>, ptr %add.ptr9.i121.1, align 1
  %147 = zext <8 x i8> %146 to <8 x i16>
  %148 = sub nsw <8 x i16> %145, %147
  %149 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %148, i1 false)
  %150 = zext <8 x i16> %149 to <8 x i32>
  %151 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %150)
  %op.rdx.2 = add i32 %151, %op.rdx.1
  %add.ptr.i120.2 = getelementptr inbounds i8, ptr %fenc, i64 48
  %add.ptr9.i121.2 = getelementptr inbounds i8, ptr %add.ptr9.i121.1, i64 %idx.ext8.i
  %152 = load <8 x i8>, ptr %add.ptr.i120.2, align 1
  %153 = zext <8 x i8> %152 to <8 x i16>
  %154 = load <8 x i8>, ptr %add.ptr9.i121.2, align 1
  %155 = zext <8 x i8> %154 to <8 x i16>
  %156 = sub nsw <8 x i16> %153, %155
  %157 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %156, i1 false)
  %158 = zext <8 x i16> %157 to <8 x i32>
  %159 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %158)
  %op.rdx.3 = add i32 %159, %op.rdx.2
  %add.ptr.i120.3 = getelementptr inbounds i8, ptr %fenc, i64 64
  %add.ptr9.i121.3 = getelementptr inbounds i8, ptr %add.ptr9.i121.2, i64 %idx.ext8.i
  %160 = load <8 x i8>, ptr %add.ptr.i120.3, align 1
  %161 = zext <8 x i8> %160 to <8 x i16>
  %162 = load <8 x i8>, ptr %add.ptr9.i121.3, align 1
  %163 = zext <8 x i8> %162 to <8 x i16>
  %164 = sub nsw <8 x i16> %161, %163
  %165 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %164, i1 false)
  %166 = zext <8 x i16> %165 to <8 x i32>
  %167 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %166)
  %op.rdx.4 = add i32 %167, %op.rdx.3
  %add.ptr.i120.4 = getelementptr inbounds i8, ptr %fenc, i64 80
  %add.ptr9.i121.4 = getelementptr inbounds i8, ptr %add.ptr9.i121.3, i64 %idx.ext8.i
  %168 = load <8 x i8>, ptr %add.ptr.i120.4, align 1
  %169 = zext <8 x i8> %168 to <8 x i16>
  %170 = load <8 x i8>, ptr %add.ptr9.i121.4, align 1
  %171 = zext <8 x i8> %170 to <8 x i16>
  %172 = sub nsw <8 x i16> %169, %171
  %173 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %172, i1 false)
  %174 = zext <8 x i16> %173 to <8 x i32>
  %175 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %174)
  %op.rdx.5 = add i32 %175, %op.rdx.4
  %add.ptr.i120.5 = getelementptr inbounds i8, ptr %fenc, i64 96
  %add.ptr9.i121.5 = getelementptr inbounds i8, ptr %add.ptr9.i121.4, i64 %idx.ext8.i
  %176 = load <8 x i8>, ptr %add.ptr.i120.5, align 1
  %177 = zext <8 x i8> %176 to <8 x i16>
  %178 = load <8 x i8>, ptr %add.ptr9.i121.5, align 1
  %179 = zext <8 x i8> %178 to <8 x i16>
  %180 = sub nsw <8 x i16> %177, %179
  %181 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %180, i1 false)
  %182 = zext <8 x i16> %181 to <8 x i32>
  %183 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %182)
  %op.rdx.6 = add i32 %183, %op.rdx.5
  %add.ptr.i120.6 = getelementptr inbounds i8, ptr %fenc, i64 112
  %add.ptr9.i121.6 = getelementptr inbounds i8, ptr %add.ptr9.i121.5, i64 %idx.ext8.i
  %184 = load <8 x i8>, ptr %add.ptr.i120.6, align 1
  %185 = zext <8 x i8> %184 to <8 x i16>
  %186 = load <8 x i8>, ptr %add.ptr9.i121.6, align 1
  %187 = zext <8 x i8> %186 to <8 x i16>
  %188 = sub nsw <8 x i16> %185, %187
  %189 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %188, i1 false)
  %190 = zext <8 x i16> %189 to <8 x i32>
  %191 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %190)
  %op.rdx.7 = add i32 %191, %op.rdx.6
  %arrayidx4 = getelementptr inbounds i8, ptr %scores, i64 8
  store i32 %op.rdx.7, ptr %arrayidx4, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @x264_pixel_sad_x3_8x4(ptr nocapture noundef readonly %fenc, ptr nocapture noundef readonly %pix0, ptr nocapture noundef readonly %pix1, ptr nocapture noundef readonly %pix2, i32 noundef %i_stride, ptr nocapture noundef writeonly %scores) #8 {
entry:
  %call = tail call i32 @x264_pixel_sad_8x4(ptr noundef %fenc, i32 noundef 16, ptr noundef %pix0, i32 noundef %i_stride)
  store i32 %call, ptr %scores, align 4
  %call1 = tail call i32 @x264_pixel_sad_8x4(ptr noundef %fenc, i32 noundef 16, ptr noundef %pix1, i32 noundef %i_stride)
  %arrayidx2 = getelementptr inbounds i8, ptr %scores, i64 4
  store i32 %call1, ptr %arrayidx2, align 4
  %call3 = tail call i32 @x264_pixel_sad_8x4(ptr noundef %fenc, i32 noundef 16, ptr noundef %pix2, i32 noundef %i_stride)
  %arrayidx4 = getelementptr inbounds i8, ptr %scores, i64 8
  store i32 %call3, ptr %arrayidx4, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @x264_pixel_sad_x3_4x8(ptr nocapture noundef readonly %fenc, ptr nocapture noundef readonly %pix0, ptr nocapture noundef readonly %pix1, ptr nocapture noundef readonly %pix2, i32 noundef %i_stride, ptr nocapture noundef writeonly %scores) #9 {
entry:
  %call = tail call i32 @x264_pixel_sad_4x8(ptr noundef %fenc, i32 noundef 16, ptr noundef %pix0, i32 noundef %i_stride)
  store i32 %call, ptr %scores, align 4
  %call1 = tail call i32 @x264_pixel_sad_4x8(ptr noundef %fenc, i32 noundef 16, ptr noundef %pix1, i32 noundef %i_stride)
  %arrayidx2 = getelementptr inbounds i8, ptr %scores, i64 4
  store i32 %call1, ptr %arrayidx2, align 4
  %call3 = tail call i32 @x264_pixel_sad_4x8(ptr noundef %fenc, i32 noundef 16, ptr noundef %pix2, i32 noundef %i_stride)
  %arrayidx4 = getelementptr inbounds i8, ptr %scores, i64 8
  store i32 %call3, ptr %arrayidx4, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @x264_pixel_sad_x3_4x4(ptr nocapture noundef readonly %fenc, ptr nocapture noundef readonly %pix0, ptr nocapture noundef readonly %pix1, ptr nocapture noundef readonly %pix2, i32 noundef %i_stride, ptr nocapture noundef writeonly %scores) #8 {
entry:
  %idx.ext8.i = sext i32 %i_stride to i64
  %0 = load i8, ptr %fenc, align 1
  %conv.i = zext i8 %0 to i32
  %1 = load i8, ptr %pix0, align 1
  %conv7.i = zext i8 %1 to i32
  %sub.i = sub nsw i32 %conv.i, %conv7.i
  %2 = tail call i32 @llvm.abs.i32(i32 %sub.i, i1 true)
  %arrayidx.1.i = getelementptr inbounds i8, ptr %fenc, i64 1
  %3 = load i8, ptr %arrayidx.1.i, align 1
  %conv.1.i = zext i8 %3 to i32
  %arrayidx6.1.i = getelementptr inbounds i8, ptr %pix0, i64 1
  %4 = load i8, ptr %arrayidx6.1.i, align 1
  %conv7.1.i = zext i8 %4 to i32
  %sub.1.i = sub nsw i32 %conv.1.i, %conv7.1.i
  %5 = tail call i32 @llvm.abs.i32(i32 %sub.1.i, i1 true)
  %add.1.i = add nuw nsw i32 %5, %2
  %arrayidx.2.i = getelementptr inbounds i8, ptr %fenc, i64 2
  %6 = load i8, ptr %arrayidx.2.i, align 1
  %conv.2.i = zext i8 %6 to i32
  %arrayidx6.2.i = getelementptr inbounds i8, ptr %pix0, i64 2
  %7 = load i8, ptr %arrayidx6.2.i, align 1
  %conv7.2.i = zext i8 %7 to i32
  %sub.2.i = sub nsw i32 %conv.2.i, %conv7.2.i
  %8 = tail call i32 @llvm.abs.i32(i32 %sub.2.i, i1 true)
  %add.2.i = add nuw nsw i32 %add.1.i, %8
  %arrayidx.3.i = getelementptr inbounds i8, ptr %fenc, i64 3
  %9 = load i8, ptr %arrayidx.3.i, align 1
  %conv.3.i = zext i8 %9 to i32
  %arrayidx6.3.i = getelementptr inbounds i8, ptr %pix0, i64 3
  %10 = load i8, ptr %arrayidx6.3.i, align 1
  %conv7.3.i = zext i8 %10 to i32
  %sub.3.i = sub nsw i32 %conv.3.i, %conv7.3.i
  %11 = tail call i32 @llvm.abs.i32(i32 %sub.3.i, i1 true)
  %add.3.i = add nuw nsw i32 %add.2.i, %11
  %add.ptr.i = getelementptr inbounds i8, ptr %fenc, i64 16
  %add.ptr9.i = getelementptr inbounds i8, ptr %pix0, i64 %idx.ext8.i
  %12 = load i8, ptr %add.ptr.i, align 1
  %conv.127.i = zext i8 %12 to i32
  %13 = load i8, ptr %add.ptr9.i, align 1
  %conv7.128.i = zext i8 %13 to i32
  %sub.129.i = sub nsw i32 %conv.127.i, %conv7.128.i
  %14 = tail call i32 @llvm.abs.i32(i32 %sub.129.i, i1 true)
  %add.130.i = add nuw nsw i32 %add.3.i, %14
  %arrayidx.1.1.i = getelementptr inbounds i8, ptr %fenc, i64 17
  %15 = load i8, ptr %arrayidx.1.1.i, align 1
  %conv.1.1.i = zext i8 %15 to i32
  %arrayidx6.1.1.i = getelementptr inbounds i8, ptr %add.ptr9.i, i64 1
  %16 = load i8, ptr %arrayidx6.1.1.i, align 1
  %conv7.1.1.i = zext i8 %16 to i32
  %sub.1.1.i = sub nsw i32 %conv.1.1.i, %conv7.1.1.i
  %17 = tail call i32 @llvm.abs.i32(i32 %sub.1.1.i, i1 true)
  %add.1.1.i = add nuw nsw i32 %add.130.i, %17
  %arrayidx.2.1.i = getelementptr inbounds i8, ptr %fenc, i64 18
  %18 = load i8, ptr %arrayidx.2.1.i, align 1
  %conv.2.1.i = zext i8 %18 to i32
  %arrayidx6.2.1.i = getelementptr inbounds i8, ptr %add.ptr9.i, i64 2
  %19 = load i8, ptr %arrayidx6.2.1.i, align 1
  %conv7.2.1.i = zext i8 %19 to i32
  %sub.2.1.i = sub nsw i32 %conv.2.1.i, %conv7.2.1.i
  %20 = tail call i32 @llvm.abs.i32(i32 %sub.2.1.i, i1 true)
  %add.2.1.i = add nuw nsw i32 %add.1.1.i, %20
  %arrayidx.3.1.i = getelementptr inbounds i8, ptr %fenc, i64 19
  %21 = load i8, ptr %arrayidx.3.1.i, align 1
  %conv.3.1.i = zext i8 %21 to i32
  %arrayidx6.3.1.i = getelementptr inbounds i8, ptr %add.ptr9.i, i64 3
  %22 = load i8, ptr %arrayidx6.3.1.i, align 1
  %conv7.3.1.i = zext i8 %22 to i32
  %sub.3.1.i = sub nsw i32 %conv.3.1.i, %conv7.3.1.i
  %23 = tail call i32 @llvm.abs.i32(i32 %sub.3.1.i, i1 true)
  %add.3.1.i = add nuw nsw i32 %add.2.1.i, %23
  %add.ptr.1.i = getelementptr inbounds i8, ptr %fenc, i64 32
  %add.ptr9.1.i = getelementptr inbounds i8, ptr %add.ptr9.i, i64 %idx.ext8.i
  %24 = load i8, ptr %add.ptr.1.i, align 1
  %conv.231.i = zext i8 %24 to i32
  %25 = load i8, ptr %add.ptr9.1.i, align 1
  %conv7.232.i = zext i8 %25 to i32
  %sub.233.i = sub nsw i32 %conv.231.i, %conv7.232.i
  %26 = tail call i32 @llvm.abs.i32(i32 %sub.233.i, i1 true)
  %add.234.i = add nuw nsw i32 %add.3.1.i, %26
  %arrayidx.1.2.i = getelementptr inbounds i8, ptr %fenc, i64 33
  %27 = load i8, ptr %arrayidx.1.2.i, align 1
  %conv.1.2.i = zext i8 %27 to i32
  %arrayidx6.1.2.i = getelementptr inbounds i8, ptr %add.ptr9.1.i, i64 1
  %28 = load i8, ptr %arrayidx6.1.2.i, align 1
  %conv7.1.2.i = zext i8 %28 to i32
  %sub.1.2.i = sub nsw i32 %conv.1.2.i, %conv7.1.2.i
  %29 = tail call i32 @llvm.abs.i32(i32 %sub.1.2.i, i1 true)
  %add.1.2.i = add nuw nsw i32 %add.234.i, %29
  %arrayidx.2.2.i = getelementptr inbounds i8, ptr %fenc, i64 34
  %30 = load i8, ptr %arrayidx.2.2.i, align 1
  %conv.2.2.i = zext i8 %30 to i32
  %arrayidx6.2.2.i = getelementptr inbounds i8, ptr %add.ptr9.1.i, i64 2
  %31 = load i8, ptr %arrayidx6.2.2.i, align 1
  %conv7.2.2.i = zext i8 %31 to i32
  %sub.2.2.i = sub nsw i32 %conv.2.2.i, %conv7.2.2.i
  %32 = tail call i32 @llvm.abs.i32(i32 %sub.2.2.i, i1 true)
  %add.2.2.i = add nuw nsw i32 %add.1.2.i, %32
  %arrayidx.3.2.i = getelementptr inbounds i8, ptr %fenc, i64 35
  %33 = load i8, ptr %arrayidx.3.2.i, align 1
  %conv.3.2.i = zext i8 %33 to i32
  %arrayidx6.3.2.i = getelementptr inbounds i8, ptr %add.ptr9.1.i, i64 3
  %34 = load i8, ptr %arrayidx6.3.2.i, align 1
  %conv7.3.2.i = zext i8 %34 to i32
  %sub.3.2.i = sub nsw i32 %conv.3.2.i, %conv7.3.2.i
  %35 = tail call i32 @llvm.abs.i32(i32 %sub.3.2.i, i1 true)
  %add.3.2.i = add nuw nsw i32 %add.2.2.i, %35
  %add.ptr.2.i = getelementptr inbounds i8, ptr %fenc, i64 48
  %add.ptr9.2.i = getelementptr inbounds i8, ptr %add.ptr9.1.i, i64 %idx.ext8.i
  %36 = load i8, ptr %add.ptr.2.i, align 1
  %conv.335.i = zext i8 %36 to i32
  %37 = load i8, ptr %add.ptr9.2.i, align 1
  %conv7.336.i = zext i8 %37 to i32
  %sub.337.i = sub nsw i32 %conv.335.i, %conv7.336.i
  %38 = tail call i32 @llvm.abs.i32(i32 %sub.337.i, i1 true)
  %add.338.i = add nuw nsw i32 %add.3.2.i, %38
  %arrayidx.1.3.i = getelementptr inbounds i8, ptr %fenc, i64 49
  %39 = load i8, ptr %arrayidx.1.3.i, align 1
  %conv.1.3.i = zext i8 %39 to i32
  %arrayidx6.1.3.i = getelementptr inbounds i8, ptr %add.ptr9.2.i, i64 1
  %40 = load i8, ptr %arrayidx6.1.3.i, align 1
  %conv7.1.3.i = zext i8 %40 to i32
  %sub.1.3.i = sub nsw i32 %conv.1.3.i, %conv7.1.3.i
  %41 = tail call i32 @llvm.abs.i32(i32 %sub.1.3.i, i1 true)
  %add.1.3.i = add nuw nsw i32 %add.338.i, %41
  %arrayidx.2.3.i = getelementptr inbounds i8, ptr %fenc, i64 50
  %42 = load i8, ptr %arrayidx.2.3.i, align 1
  %conv.2.3.i = zext i8 %42 to i32
  %arrayidx6.2.3.i = getelementptr inbounds i8, ptr %add.ptr9.2.i, i64 2
  %43 = load i8, ptr %arrayidx6.2.3.i, align 1
  %conv7.2.3.i = zext i8 %43 to i32
  %sub.2.3.i = sub nsw i32 %conv.2.3.i, %conv7.2.3.i
  %44 = tail call i32 @llvm.abs.i32(i32 %sub.2.3.i, i1 true)
  %add.2.3.i = add nuw nsw i32 %add.1.3.i, %44
  %arrayidx.3.3.i = getelementptr inbounds i8, ptr %fenc, i64 51
  %45 = load i8, ptr %arrayidx.3.3.i, align 1
  %conv.3.3.i = zext i8 %45 to i32
  %arrayidx6.3.3.i = getelementptr inbounds i8, ptr %add.ptr9.2.i, i64 3
  %46 = load i8, ptr %arrayidx6.3.3.i, align 1
  %conv7.3.3.i = zext i8 %46 to i32
  %sub.3.3.i = sub nsw i32 %conv.3.3.i, %conv7.3.3.i
  %47 = tail call i32 @llvm.abs.i32(i32 %sub.3.3.i, i1 true)
  %add.3.3.i = add nuw nsw i32 %add.2.3.i, %47
  store i32 %add.3.3.i, ptr %scores, align 4
  %48 = load i8, ptr %fenc, align 1
  %conv.i12 = zext i8 %48 to i32
  %49 = load i8, ptr %pix1, align 1
  %conv7.i13 = zext i8 %49 to i32
  %sub.i14 = sub nsw i32 %conv.i12, %conv7.i13
  %50 = tail call i32 @llvm.abs.i32(i32 %sub.i14, i1 true)
  %51 = load i8, ptr %arrayidx.1.i, align 1
  %conv.1.i16 = zext i8 %51 to i32
  %arrayidx6.1.i17 = getelementptr inbounds i8, ptr %pix1, i64 1
  %52 = load i8, ptr %arrayidx6.1.i17, align 1
  %conv7.1.i18 = zext i8 %52 to i32
  %sub.1.i19 = sub nsw i32 %conv.1.i16, %conv7.1.i18
  %53 = tail call i32 @llvm.abs.i32(i32 %sub.1.i19, i1 true)
  %add.1.i20 = add nuw nsw i32 %53, %50
  %54 = load i8, ptr %arrayidx.2.i, align 1
  %conv.2.i22 = zext i8 %54 to i32
  %arrayidx6.2.i23 = getelementptr inbounds i8, ptr %pix1, i64 2
  %55 = load i8, ptr %arrayidx6.2.i23, align 1
  %conv7.2.i24 = zext i8 %55 to i32
  %sub.2.i25 = sub nsw i32 %conv.2.i22, %conv7.2.i24
  %56 = tail call i32 @llvm.abs.i32(i32 %sub.2.i25, i1 true)
  %add.2.i26 = add nuw nsw i32 %add.1.i20, %56
  %57 = load i8, ptr %arrayidx.3.i, align 1
  %conv.3.i28 = zext i8 %57 to i32
  %arrayidx6.3.i29 = getelementptr inbounds i8, ptr %pix1, i64 3
  %58 = load i8, ptr %arrayidx6.3.i29, align 1
  %conv7.3.i30 = zext i8 %58 to i32
  %sub.3.i31 = sub nsw i32 %conv.3.i28, %conv7.3.i30
  %59 = tail call i32 @llvm.abs.i32(i32 %sub.3.i31, i1 true)
  %add.3.i32 = add nuw nsw i32 %add.2.i26, %59
  %add.ptr9.i34 = getelementptr inbounds i8, ptr %pix1, i64 %idx.ext8.i
  %60 = load i8, ptr %add.ptr.i, align 1
  %conv.127.i35 = zext i8 %60 to i32
  %61 = load i8, ptr %add.ptr9.i34, align 1
  %conv7.128.i36 = zext i8 %61 to i32
  %sub.129.i37 = sub nsw i32 %conv.127.i35, %conv7.128.i36
  %62 = tail call i32 @llvm.abs.i32(i32 %sub.129.i37, i1 true)
  %add.130.i38 = add nuw nsw i32 %add.3.i32, %62
  %63 = load i8, ptr %arrayidx.1.1.i, align 1
  %conv.1.1.i40 = zext i8 %63 to i32
  %arrayidx6.1.1.i41 = getelementptr inbounds i8, ptr %add.ptr9.i34, i64 1
  %64 = load i8, ptr %arrayidx6.1.1.i41, align 1
  %conv7.1.1.i42 = zext i8 %64 to i32
  %sub.1.1.i43 = sub nsw i32 %conv.1.1.i40, %conv7.1.1.i42
  %65 = tail call i32 @llvm.abs.i32(i32 %sub.1.1.i43, i1 true)
  %add.1.1.i44 = add nuw nsw i32 %add.130.i38, %65
  %66 = load i8, ptr %arrayidx.2.1.i, align 1
  %conv.2.1.i46 = zext i8 %66 to i32
  %arrayidx6.2.1.i47 = getelementptr inbounds i8, ptr %add.ptr9.i34, i64 2
  %67 = load i8, ptr %arrayidx6.2.1.i47, align 1
  %conv7.2.1.i48 = zext i8 %67 to i32
  %sub.2.1.i49 = sub nsw i32 %conv.2.1.i46, %conv7.2.1.i48
  %68 = tail call i32 @llvm.abs.i32(i32 %sub.2.1.i49, i1 true)
  %add.2.1.i50 = add nuw nsw i32 %add.1.1.i44, %68
  %69 = load i8, ptr %arrayidx.3.1.i, align 1
  %conv.3.1.i52 = zext i8 %69 to i32
  %arrayidx6.3.1.i53 = getelementptr inbounds i8, ptr %add.ptr9.i34, i64 3
  %70 = load i8, ptr %arrayidx6.3.1.i53, align 1
  %conv7.3.1.i54 = zext i8 %70 to i32
  %sub.3.1.i55 = sub nsw i32 %conv.3.1.i52, %conv7.3.1.i54
  %71 = tail call i32 @llvm.abs.i32(i32 %sub.3.1.i55, i1 true)
  %add.3.1.i56 = add nuw nsw i32 %add.2.1.i50, %71
  %add.ptr9.1.i58 = getelementptr inbounds i8, ptr %add.ptr9.i34, i64 %idx.ext8.i
  %72 = load i8, ptr %add.ptr.1.i, align 1
  %conv.231.i59 = zext i8 %72 to i32
  %73 = load i8, ptr %add.ptr9.1.i58, align 1
  %conv7.232.i60 = zext i8 %73 to i32
  %sub.233.i61 = sub nsw i32 %conv.231.i59, %conv7.232.i60
  %74 = tail call i32 @llvm.abs.i32(i32 %sub.233.i61, i1 true)
  %add.234.i62 = add nuw nsw i32 %add.3.1.i56, %74
  %75 = load i8, ptr %arrayidx.1.2.i, align 1
  %conv.1.2.i64 = zext i8 %75 to i32
  %arrayidx6.1.2.i65 = getelementptr inbounds i8, ptr %add.ptr9.1.i58, i64 1
  %76 = load i8, ptr %arrayidx6.1.2.i65, align 1
  %conv7.1.2.i66 = zext i8 %76 to i32
  %sub.1.2.i67 = sub nsw i32 %conv.1.2.i64, %conv7.1.2.i66
  %77 = tail call i32 @llvm.abs.i32(i32 %sub.1.2.i67, i1 true)
  %add.1.2.i68 = add nuw nsw i32 %add.234.i62, %77
  %78 = load i8, ptr %arrayidx.2.2.i, align 1
  %conv.2.2.i70 = zext i8 %78 to i32
  %arrayidx6.2.2.i71 = getelementptr inbounds i8, ptr %add.ptr9.1.i58, i64 2
  %79 = load i8, ptr %arrayidx6.2.2.i71, align 1
  %conv7.2.2.i72 = zext i8 %79 to i32
  %sub.2.2.i73 = sub nsw i32 %conv.2.2.i70, %conv7.2.2.i72
  %80 = tail call i32 @llvm.abs.i32(i32 %sub.2.2.i73, i1 true)
  %add.2.2.i74 = add nuw nsw i32 %add.1.2.i68, %80
  %81 = load i8, ptr %arrayidx.3.2.i, align 1
  %conv.3.2.i76 = zext i8 %81 to i32
  %arrayidx6.3.2.i77 = getelementptr inbounds i8, ptr %add.ptr9.1.i58, i64 3
  %82 = load i8, ptr %arrayidx6.3.2.i77, align 1
  %conv7.3.2.i78 = zext i8 %82 to i32
  %sub.3.2.i79 = sub nsw i32 %conv.3.2.i76, %conv7.3.2.i78
  %83 = tail call i32 @llvm.abs.i32(i32 %sub.3.2.i79, i1 true)
  %add.3.2.i80 = add nuw nsw i32 %add.2.2.i74, %83
  %add.ptr9.2.i82 = getelementptr inbounds i8, ptr %add.ptr9.1.i58, i64 %idx.ext8.i
  %84 = load i8, ptr %add.ptr.2.i, align 1
  %conv.335.i83 = zext i8 %84 to i32
  %85 = load i8, ptr %add.ptr9.2.i82, align 1
  %conv7.336.i84 = zext i8 %85 to i32
  %sub.337.i85 = sub nsw i32 %conv.335.i83, %conv7.336.i84
  %86 = tail call i32 @llvm.abs.i32(i32 %sub.337.i85, i1 true)
  %add.338.i86 = add nuw nsw i32 %add.3.2.i80, %86
  %87 = load i8, ptr %arrayidx.1.3.i, align 1
  %conv.1.3.i88 = zext i8 %87 to i32
  %arrayidx6.1.3.i89 = getelementptr inbounds i8, ptr %add.ptr9.2.i82, i64 1
  %88 = load i8, ptr %arrayidx6.1.3.i89, align 1
  %conv7.1.3.i90 = zext i8 %88 to i32
  %sub.1.3.i91 = sub nsw i32 %conv.1.3.i88, %conv7.1.3.i90
  %89 = tail call i32 @llvm.abs.i32(i32 %sub.1.3.i91, i1 true)
  %add.1.3.i92 = add nuw nsw i32 %add.338.i86, %89
  %90 = load i8, ptr %arrayidx.2.3.i, align 1
  %conv.2.3.i94 = zext i8 %90 to i32
  %arrayidx6.2.3.i95 = getelementptr inbounds i8, ptr %add.ptr9.2.i82, i64 2
  %91 = load i8, ptr %arrayidx6.2.3.i95, align 1
  %conv7.2.3.i96 = zext i8 %91 to i32
  %sub.2.3.i97 = sub nsw i32 %conv.2.3.i94, %conv7.2.3.i96
  %92 = tail call i32 @llvm.abs.i32(i32 %sub.2.3.i97, i1 true)
  %add.2.3.i98 = add nuw nsw i32 %add.1.3.i92, %92
  %93 = load i8, ptr %arrayidx.3.3.i, align 1
  %conv.3.3.i100 = zext i8 %93 to i32
  %arrayidx6.3.3.i101 = getelementptr inbounds i8, ptr %add.ptr9.2.i82, i64 3
  %94 = load i8, ptr %arrayidx6.3.3.i101, align 1
  %conv7.3.3.i102 = zext i8 %94 to i32
  %sub.3.3.i103 = sub nsw i32 %conv.3.3.i100, %conv7.3.3.i102
  %95 = tail call i32 @llvm.abs.i32(i32 %sub.3.3.i103, i1 true)
  %add.3.3.i104 = add nuw nsw i32 %add.2.3.i98, %95
  %arrayidx2 = getelementptr inbounds i8, ptr %scores, i64 4
  store i32 %add.3.3.i104, ptr %arrayidx2, align 4
  %96 = load i8, ptr %fenc, align 1
  %conv.i106 = zext i8 %96 to i32
  %97 = load i8, ptr %pix2, align 1
  %conv7.i107 = zext i8 %97 to i32
  %sub.i108 = sub nsw i32 %conv.i106, %conv7.i107
  %98 = tail call i32 @llvm.abs.i32(i32 %sub.i108, i1 true)
  %99 = load i8, ptr %arrayidx.1.i, align 1
  %conv.1.i110 = zext i8 %99 to i32
  %arrayidx6.1.i111 = getelementptr inbounds i8, ptr %pix2, i64 1
  %100 = load i8, ptr %arrayidx6.1.i111, align 1
  %conv7.1.i112 = zext i8 %100 to i32
  %sub.1.i113 = sub nsw i32 %conv.1.i110, %conv7.1.i112
  %101 = tail call i32 @llvm.abs.i32(i32 %sub.1.i113, i1 true)
  %add.1.i114 = add nuw nsw i32 %101, %98
  %102 = load i8, ptr %arrayidx.2.i, align 1
  %conv.2.i116 = zext i8 %102 to i32
  %arrayidx6.2.i117 = getelementptr inbounds i8, ptr %pix2, i64 2
  %103 = load i8, ptr %arrayidx6.2.i117, align 1
  %conv7.2.i118 = zext i8 %103 to i32
  %sub.2.i119 = sub nsw i32 %conv.2.i116, %conv7.2.i118
  %104 = tail call i32 @llvm.abs.i32(i32 %sub.2.i119, i1 true)
  %add.2.i120 = add nuw nsw i32 %add.1.i114, %104
  %105 = load i8, ptr %arrayidx.3.i, align 1
  %conv.3.i122 = zext i8 %105 to i32
  %arrayidx6.3.i123 = getelementptr inbounds i8, ptr %pix2, i64 3
  %106 = load i8, ptr %arrayidx6.3.i123, align 1
  %conv7.3.i124 = zext i8 %106 to i32
  %sub.3.i125 = sub nsw i32 %conv.3.i122, %conv7.3.i124
  %107 = tail call i32 @llvm.abs.i32(i32 %sub.3.i125, i1 true)
  %add.3.i126 = add nuw nsw i32 %add.2.i120, %107
  %add.ptr9.i128 = getelementptr inbounds i8, ptr %pix2, i64 %idx.ext8.i
  %108 = load i8, ptr %add.ptr.i, align 1
  %conv.127.i129 = zext i8 %108 to i32
  %109 = load i8, ptr %add.ptr9.i128, align 1
  %conv7.128.i130 = zext i8 %109 to i32
  %sub.129.i131 = sub nsw i32 %conv.127.i129, %conv7.128.i130
  %110 = tail call i32 @llvm.abs.i32(i32 %sub.129.i131, i1 true)
  %add.130.i132 = add nuw nsw i32 %add.3.i126, %110
  %111 = load i8, ptr %arrayidx.1.1.i, align 1
  %conv.1.1.i134 = zext i8 %111 to i32
  %arrayidx6.1.1.i135 = getelementptr inbounds i8, ptr %add.ptr9.i128, i64 1
  %112 = load i8, ptr %arrayidx6.1.1.i135, align 1
  %conv7.1.1.i136 = zext i8 %112 to i32
  %sub.1.1.i137 = sub nsw i32 %conv.1.1.i134, %conv7.1.1.i136
  %113 = tail call i32 @llvm.abs.i32(i32 %sub.1.1.i137, i1 true)
  %add.1.1.i138 = add nuw nsw i32 %add.130.i132, %113
  %114 = load i8, ptr %arrayidx.2.1.i, align 1
  %conv.2.1.i140 = zext i8 %114 to i32
  %arrayidx6.2.1.i141 = getelementptr inbounds i8, ptr %add.ptr9.i128, i64 2
  %115 = load i8, ptr %arrayidx6.2.1.i141, align 1
  %conv7.2.1.i142 = zext i8 %115 to i32
  %sub.2.1.i143 = sub nsw i32 %conv.2.1.i140, %conv7.2.1.i142
  %116 = tail call i32 @llvm.abs.i32(i32 %sub.2.1.i143, i1 true)
  %add.2.1.i144 = add nuw nsw i32 %add.1.1.i138, %116
  %117 = load i8, ptr %arrayidx.3.1.i, align 1
  %conv.3.1.i146 = zext i8 %117 to i32
  %arrayidx6.3.1.i147 = getelementptr inbounds i8, ptr %add.ptr9.i128, i64 3
  %118 = load i8, ptr %arrayidx6.3.1.i147, align 1
  %conv7.3.1.i148 = zext i8 %118 to i32
  %sub.3.1.i149 = sub nsw i32 %conv.3.1.i146, %conv7.3.1.i148
  %119 = tail call i32 @llvm.abs.i32(i32 %sub.3.1.i149, i1 true)
  %add.3.1.i150 = add nuw nsw i32 %add.2.1.i144, %119
  %add.ptr9.1.i152 = getelementptr inbounds i8, ptr %add.ptr9.i128, i64 %idx.ext8.i
  %120 = load i8, ptr %add.ptr.1.i, align 1
  %conv.231.i153 = zext i8 %120 to i32
  %121 = load i8, ptr %add.ptr9.1.i152, align 1
  %conv7.232.i154 = zext i8 %121 to i32
  %sub.233.i155 = sub nsw i32 %conv.231.i153, %conv7.232.i154
  %122 = tail call i32 @llvm.abs.i32(i32 %sub.233.i155, i1 true)
  %add.234.i156 = add nuw nsw i32 %add.3.1.i150, %122
  %123 = load i8, ptr %arrayidx.1.2.i, align 1
  %conv.1.2.i158 = zext i8 %123 to i32
  %arrayidx6.1.2.i159 = getelementptr inbounds i8, ptr %add.ptr9.1.i152, i64 1
  %124 = load i8, ptr %arrayidx6.1.2.i159, align 1
  %conv7.1.2.i160 = zext i8 %124 to i32
  %sub.1.2.i161 = sub nsw i32 %conv.1.2.i158, %conv7.1.2.i160
  %125 = tail call i32 @llvm.abs.i32(i32 %sub.1.2.i161, i1 true)
  %add.1.2.i162 = add nuw nsw i32 %add.234.i156, %125
  %126 = load i8, ptr %arrayidx.2.2.i, align 1
  %conv.2.2.i164 = zext i8 %126 to i32
  %arrayidx6.2.2.i165 = getelementptr inbounds i8, ptr %add.ptr9.1.i152, i64 2
  %127 = load i8, ptr %arrayidx6.2.2.i165, align 1
  %conv7.2.2.i166 = zext i8 %127 to i32
  %sub.2.2.i167 = sub nsw i32 %conv.2.2.i164, %conv7.2.2.i166
  %128 = tail call i32 @llvm.abs.i32(i32 %sub.2.2.i167, i1 true)
  %add.2.2.i168 = add nuw nsw i32 %add.1.2.i162, %128
  %129 = load i8, ptr %arrayidx.3.2.i, align 1
  %conv.3.2.i170 = zext i8 %129 to i32
  %arrayidx6.3.2.i171 = getelementptr inbounds i8, ptr %add.ptr9.1.i152, i64 3
  %130 = load i8, ptr %arrayidx6.3.2.i171, align 1
  %conv7.3.2.i172 = zext i8 %130 to i32
  %sub.3.2.i173 = sub nsw i32 %conv.3.2.i170, %conv7.3.2.i172
  %131 = tail call i32 @llvm.abs.i32(i32 %sub.3.2.i173, i1 true)
  %add.3.2.i174 = add nuw nsw i32 %add.2.2.i168, %131
  %add.ptr9.2.i176 = getelementptr inbounds i8, ptr %add.ptr9.1.i152, i64 %idx.ext8.i
  %132 = load i8, ptr %add.ptr.2.i, align 1
  %conv.335.i177 = zext i8 %132 to i32
  %133 = load i8, ptr %add.ptr9.2.i176, align 1
  %conv7.336.i178 = zext i8 %133 to i32
  %sub.337.i179 = sub nsw i32 %conv.335.i177, %conv7.336.i178
  %134 = tail call i32 @llvm.abs.i32(i32 %sub.337.i179, i1 true)
  %add.338.i180 = add nuw nsw i32 %add.3.2.i174, %134
  %135 = load i8, ptr %arrayidx.1.3.i, align 1
  %conv.1.3.i182 = zext i8 %135 to i32
  %arrayidx6.1.3.i183 = getelementptr inbounds i8, ptr %add.ptr9.2.i176, i64 1
  %136 = load i8, ptr %arrayidx6.1.3.i183, align 1
  %conv7.1.3.i184 = zext i8 %136 to i32
  %sub.1.3.i185 = sub nsw i32 %conv.1.3.i182, %conv7.1.3.i184
  %137 = tail call i32 @llvm.abs.i32(i32 %sub.1.3.i185, i1 true)
  %add.1.3.i186 = add nuw nsw i32 %add.338.i180, %137
  %138 = load i8, ptr %arrayidx.2.3.i, align 1
  %conv.2.3.i188 = zext i8 %138 to i32
  %arrayidx6.2.3.i189 = getelementptr inbounds i8, ptr %add.ptr9.2.i176, i64 2
  %139 = load i8, ptr %arrayidx6.2.3.i189, align 1
  %conv7.2.3.i190 = zext i8 %139 to i32
  %sub.2.3.i191 = sub nsw i32 %conv.2.3.i188, %conv7.2.3.i190
  %140 = tail call i32 @llvm.abs.i32(i32 %sub.2.3.i191, i1 true)
  %add.2.3.i192 = add nuw nsw i32 %add.1.3.i186, %140
  %141 = load i8, ptr %arrayidx.3.3.i, align 1
  %conv.3.3.i194 = zext i8 %141 to i32
  %arrayidx6.3.3.i195 = getelementptr inbounds i8, ptr %add.ptr9.2.i176, i64 3
  %142 = load i8, ptr %arrayidx6.3.3.i195, align 1
  %conv7.3.3.i196 = zext i8 %142 to i32
  %sub.3.3.i197 = sub nsw i32 %conv.3.3.i194, %conv7.3.3.i196
  %143 = tail call i32 @llvm.abs.i32(i32 %sub.3.3.i197, i1 true)
  %add.3.3.i198 = add nuw nsw i32 %add.2.3.i192, %143
  %arrayidx4 = getelementptr inbounds i8, ptr %scores, i64 8
  store i32 %add.3.3.i198, ptr %arrayidx4, align 4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @x264_pixel_sad_x4_16x16(ptr nocapture noundef readonly %fenc, ptr nocapture noundef readonly %pix0, ptr nocapture noundef readonly %pix1, ptr nocapture noundef readonly %pix2, ptr nocapture noundef readonly %pix3, i32 noundef %i_stride, ptr nocapture noundef writeonly %scores) #7 {
entry:
  %call = tail call i32 @x264_pixel_sad_16x16(ptr noundef %fenc, i32 noundef 16, ptr noundef %pix0, i32 noundef %i_stride)
  store i32 %call, ptr %scores, align 4
  %call1 = tail call i32 @x264_pixel_sad_16x16(ptr noundef %fenc, i32 noundef 16, ptr noundef %pix1, i32 noundef %i_stride)
  %arrayidx2 = getelementptr inbounds i8, ptr %scores, i64 4
  store i32 %call1, ptr %arrayidx2, align 4
  %call3 = tail call i32 @x264_pixel_sad_16x16(ptr noundef %fenc, i32 noundef 16, ptr noundef %pix2, i32 noundef %i_stride)
  %arrayidx4 = getelementptr inbounds i8, ptr %scores, i64 8
  store i32 %call3, ptr %arrayidx4, align 4
  %call5 = tail call i32 @x264_pixel_sad_16x16(ptr noundef %fenc, i32 noundef 16, ptr noundef %pix3, i32 noundef %i_stride)
  %arrayidx6 = getelementptr inbounds i8, ptr %scores, i64 12
  store i32 %call5, ptr %arrayidx6, align 4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @x264_pixel_sad_x4_16x8(ptr nocapture noundef readonly %fenc, ptr nocapture noundef readonly %pix0, ptr nocapture noundef readonly %pix1, ptr nocapture noundef readonly %pix2, ptr nocapture noundef readonly %pix3, i32 noundef %i_stride, ptr nocapture noundef writeonly %scores) #7 {
entry:
  %call = tail call i32 @x264_pixel_sad_16x8(ptr noundef %fenc, i32 noundef 16, ptr noundef %pix0, i32 noundef %i_stride)
  store i32 %call, ptr %scores, align 4
  %call1 = tail call i32 @x264_pixel_sad_16x8(ptr noundef %fenc, i32 noundef 16, ptr noundef %pix1, i32 noundef %i_stride)
  %arrayidx2 = getelementptr inbounds i8, ptr %scores, i64 4
  store i32 %call1, ptr %arrayidx2, align 4
  %call3 = tail call i32 @x264_pixel_sad_16x8(ptr noundef %fenc, i32 noundef 16, ptr noundef %pix2, i32 noundef %i_stride)
  %arrayidx4 = getelementptr inbounds i8, ptr %scores, i64 8
  store i32 %call3, ptr %arrayidx4, align 4
  %call5 = tail call i32 @x264_pixel_sad_16x8(ptr noundef %fenc, i32 noundef 16, ptr noundef %pix3, i32 noundef %i_stride)
  %arrayidx6 = getelementptr inbounds i8, ptr %scores, i64 12
  store i32 %call5, ptr %arrayidx6, align 4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @x264_pixel_sad_x4_8x16(ptr nocapture noundef readonly %fenc, ptr nocapture noundef readonly %pix0, ptr nocapture noundef readonly %pix1, ptr nocapture noundef readonly %pix2, ptr nocapture noundef readonly %pix3, i32 noundef %i_stride, ptr nocapture noundef writeonly %scores) #7 {
entry:
  %idx.ext8.i = sext i32 %i_stride to i64
  %0 = load <8 x i8>, ptr %fenc, align 1
  %1 = zext <8 x i8> %0 to <8 x i16>
  %2 = load <8 x i8>, ptr %pix0, align 1
  %3 = zext <8 x i8> %2 to <8 x i16>
  %4 = sub nsw <8 x i16> %1, %3
  %5 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %4, i1 false)
  %6 = zext <8 x i16> %5 to <8 x i32>
  %7 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %6)
  %add.ptr.i = getelementptr inbounds i8, ptr %fenc, i64 16
  %add.ptr9.i = getelementptr inbounds i8, ptr %pix0, i64 %idx.ext8.i
  %8 = load <8 x i8>, ptr %add.ptr.i, align 1
  %9 = zext <8 x i8> %8 to <8 x i16>
  %10 = load <8 x i8>, ptr %add.ptr9.i, align 1
  %11 = zext <8 x i8> %10 to <8 x i16>
  %12 = sub nsw <8 x i16> %9, %11
  %13 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %12, i1 false)
  %14 = zext <8 x i16> %13 to <8 x i32>
  %15 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %14)
  %op.rdx189.1 = add i32 %15, %7
  %add.ptr.i.1 = getelementptr inbounds i8, ptr %fenc, i64 32
  %add.ptr9.i.1 = getelementptr inbounds i8, ptr %add.ptr9.i, i64 %idx.ext8.i
  %16 = load <8 x i8>, ptr %add.ptr.i.1, align 1
  %17 = zext <8 x i8> %16 to <8 x i16>
  %18 = load <8 x i8>, ptr %add.ptr9.i.1, align 1
  %19 = zext <8 x i8> %18 to <8 x i16>
  %20 = sub nsw <8 x i16> %17, %19
  %21 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %20, i1 false)
  %22 = zext <8 x i16> %21 to <8 x i32>
  %23 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %22)
  %op.rdx189.2 = add i32 %23, %op.rdx189.1
  %add.ptr.i.2 = getelementptr inbounds i8, ptr %fenc, i64 48
  %add.ptr9.i.2 = getelementptr inbounds i8, ptr %add.ptr9.i.1, i64 %idx.ext8.i
  %24 = load <8 x i8>, ptr %add.ptr.i.2, align 1
  %25 = zext <8 x i8> %24 to <8 x i16>
  %26 = load <8 x i8>, ptr %add.ptr9.i.2, align 1
  %27 = zext <8 x i8> %26 to <8 x i16>
  %28 = sub nsw <8 x i16> %25, %27
  %29 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %28, i1 false)
  %30 = zext <8 x i16> %29 to <8 x i32>
  %31 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %30)
  %op.rdx189.3 = add i32 %31, %op.rdx189.2
  %add.ptr.i.3 = getelementptr inbounds i8, ptr %fenc, i64 64
  %add.ptr9.i.3 = getelementptr inbounds i8, ptr %add.ptr9.i.2, i64 %idx.ext8.i
  %32 = load <8 x i8>, ptr %add.ptr.i.3, align 1
  %33 = zext <8 x i8> %32 to <8 x i16>
  %34 = load <8 x i8>, ptr %add.ptr9.i.3, align 1
  %35 = zext <8 x i8> %34 to <8 x i16>
  %36 = sub nsw <8 x i16> %33, %35
  %37 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %36, i1 false)
  %38 = zext <8 x i16> %37 to <8 x i32>
  %39 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %38)
  %op.rdx189.4 = add i32 %39, %op.rdx189.3
  %add.ptr.i.4 = getelementptr inbounds i8, ptr %fenc, i64 80
  %add.ptr9.i.4 = getelementptr inbounds i8, ptr %add.ptr9.i.3, i64 %idx.ext8.i
  %40 = load <8 x i8>, ptr %add.ptr.i.4, align 1
  %41 = zext <8 x i8> %40 to <8 x i16>
  %42 = load <8 x i8>, ptr %add.ptr9.i.4, align 1
  %43 = zext <8 x i8> %42 to <8 x i16>
  %44 = sub nsw <8 x i16> %41, %43
  %45 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %44, i1 false)
  %46 = zext <8 x i16> %45 to <8 x i32>
  %47 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %46)
  %op.rdx189.5 = add i32 %47, %op.rdx189.4
  %add.ptr.i.5 = getelementptr inbounds i8, ptr %fenc, i64 96
  %add.ptr9.i.5 = getelementptr inbounds i8, ptr %add.ptr9.i.4, i64 %idx.ext8.i
  %48 = load <8 x i8>, ptr %add.ptr.i.5, align 1
  %49 = zext <8 x i8> %48 to <8 x i16>
  %50 = load <8 x i8>, ptr %add.ptr9.i.5, align 1
  %51 = zext <8 x i8> %50 to <8 x i16>
  %52 = sub nsw <8 x i16> %49, %51
  %53 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %52, i1 false)
  %54 = zext <8 x i16> %53 to <8 x i32>
  %55 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %54)
  %op.rdx189.6 = add i32 %55, %op.rdx189.5
  %add.ptr.i.6 = getelementptr inbounds i8, ptr %fenc, i64 112
  %add.ptr9.i.6 = getelementptr inbounds i8, ptr %add.ptr9.i.5, i64 %idx.ext8.i
  %56 = load <8 x i8>, ptr %add.ptr.i.6, align 1
  %57 = zext <8 x i8> %56 to <8 x i16>
  %58 = load <8 x i8>, ptr %add.ptr9.i.6, align 1
  %59 = zext <8 x i8> %58 to <8 x i16>
  %60 = sub nsw <8 x i16> %57, %59
  %61 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %60, i1 false)
  %62 = zext <8 x i16> %61 to <8 x i32>
  %63 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %62)
  %op.rdx189.7 = add i32 %63, %op.rdx189.6
  %add.ptr.i.7 = getelementptr inbounds i8, ptr %fenc, i64 128
  %add.ptr9.i.7 = getelementptr inbounds i8, ptr %add.ptr9.i.6, i64 %idx.ext8.i
  %64 = load <8 x i8>, ptr %add.ptr.i.7, align 1
  %65 = zext <8 x i8> %64 to <8 x i16>
  %66 = load <8 x i8>, ptr %add.ptr9.i.7, align 1
  %67 = zext <8 x i8> %66 to <8 x i16>
  %68 = sub nsw <8 x i16> %65, %67
  %69 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %68, i1 false)
  %70 = zext <8 x i16> %69 to <8 x i32>
  %71 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %70)
  %op.rdx189.8 = add i32 %71, %op.rdx189.7
  %add.ptr.i.8 = getelementptr inbounds i8, ptr %fenc, i64 144
  %add.ptr9.i.8 = getelementptr inbounds i8, ptr %add.ptr9.i.7, i64 %idx.ext8.i
  %72 = load <8 x i8>, ptr %add.ptr.i.8, align 1
  %73 = zext <8 x i8> %72 to <8 x i16>
  %74 = load <8 x i8>, ptr %add.ptr9.i.8, align 1
  %75 = zext <8 x i8> %74 to <8 x i16>
  %76 = sub nsw <8 x i16> %73, %75
  %77 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %76, i1 false)
  %78 = zext <8 x i16> %77 to <8 x i32>
  %79 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %78)
  %op.rdx189.9 = add i32 %79, %op.rdx189.8
  %add.ptr.i.9 = getelementptr inbounds i8, ptr %fenc, i64 160
  %add.ptr9.i.9 = getelementptr inbounds i8, ptr %add.ptr9.i.8, i64 %idx.ext8.i
  %80 = load <8 x i8>, ptr %add.ptr.i.9, align 1
  %81 = zext <8 x i8> %80 to <8 x i16>
  %82 = load <8 x i8>, ptr %add.ptr9.i.9, align 1
  %83 = zext <8 x i8> %82 to <8 x i16>
  %84 = sub nsw <8 x i16> %81, %83
  %85 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %84, i1 false)
  %86 = zext <8 x i16> %85 to <8 x i32>
  %87 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %86)
  %op.rdx189.10 = add i32 %87, %op.rdx189.9
  %add.ptr.i.10 = getelementptr inbounds i8, ptr %fenc, i64 176
  %add.ptr9.i.10 = getelementptr inbounds i8, ptr %add.ptr9.i.9, i64 %idx.ext8.i
  %88 = load <8 x i8>, ptr %add.ptr.i.10, align 1
  %89 = zext <8 x i8> %88 to <8 x i16>
  %90 = load <8 x i8>, ptr %add.ptr9.i.10, align 1
  %91 = zext <8 x i8> %90 to <8 x i16>
  %92 = sub nsw <8 x i16> %89, %91
  %93 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %92, i1 false)
  %94 = zext <8 x i16> %93 to <8 x i32>
  %95 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %94)
  %op.rdx189.11 = add i32 %95, %op.rdx189.10
  %add.ptr.i.11 = getelementptr inbounds i8, ptr %fenc, i64 192
  %add.ptr9.i.11 = getelementptr inbounds i8, ptr %add.ptr9.i.10, i64 %idx.ext8.i
  %96 = load <8 x i8>, ptr %add.ptr.i.11, align 1
  %97 = zext <8 x i8> %96 to <8 x i16>
  %98 = load <8 x i8>, ptr %add.ptr9.i.11, align 1
  %99 = zext <8 x i8> %98 to <8 x i16>
  %100 = sub nsw <8 x i16> %97, %99
  %101 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %100, i1 false)
  %102 = zext <8 x i16> %101 to <8 x i32>
  %103 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %102)
  %op.rdx189.12 = add i32 %103, %op.rdx189.11
  %add.ptr.i.12 = getelementptr inbounds i8, ptr %fenc, i64 208
  %add.ptr9.i.12 = getelementptr inbounds i8, ptr %add.ptr9.i.11, i64 %idx.ext8.i
  %104 = load <8 x i8>, ptr %add.ptr.i.12, align 1
  %105 = zext <8 x i8> %104 to <8 x i16>
  %106 = load <8 x i8>, ptr %add.ptr9.i.12, align 1
  %107 = zext <8 x i8> %106 to <8 x i16>
  %108 = sub nsw <8 x i16> %105, %107
  %109 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %108, i1 false)
  %110 = zext <8 x i16> %109 to <8 x i32>
  %111 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %110)
  %op.rdx189.13 = add i32 %111, %op.rdx189.12
  %add.ptr.i.13 = getelementptr inbounds i8, ptr %fenc, i64 224
  %add.ptr9.i.13 = getelementptr inbounds i8, ptr %add.ptr9.i.12, i64 %idx.ext8.i
  %112 = load <8 x i8>, ptr %add.ptr.i.13, align 1
  %113 = zext <8 x i8> %112 to <8 x i16>
  %114 = load <8 x i8>, ptr %add.ptr9.i.13, align 1
  %115 = zext <8 x i8> %114 to <8 x i16>
  %116 = sub nsw <8 x i16> %113, %115
  %117 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %116, i1 false)
  %118 = zext <8 x i16> %117 to <8 x i32>
  %119 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %118)
  %op.rdx189.14 = add i32 %119, %op.rdx189.13
  %add.ptr.i.14 = getelementptr inbounds i8, ptr %fenc, i64 240
  %add.ptr9.i.14 = getelementptr inbounds i8, ptr %add.ptr9.i.13, i64 %idx.ext8.i
  %120 = load <8 x i8>, ptr %add.ptr.i.14, align 1
  %121 = zext <8 x i8> %120 to <8 x i16>
  %122 = load <8 x i8>, ptr %add.ptr9.i.14, align 1
  %123 = zext <8 x i8> %122 to <8 x i16>
  %124 = sub nsw <8 x i16> %121, %123
  %125 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %124, i1 false)
  %126 = zext <8 x i16> %125 to <8 x i32>
  %127 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %126)
  %op.rdx189.15 = add i32 %127, %op.rdx189.14
  store i32 %op.rdx189.15, ptr %scores, align 4
  %128 = load <8 x i8>, ptr %fenc, align 1
  %129 = zext <8 x i8> %128 to <8 x i16>
  %130 = load <8 x i8>, ptr %pix1, align 1
  %131 = zext <8 x i8> %130 to <8 x i16>
  %132 = sub nsw <8 x i16> %129, %131
  %133 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %132, i1 false)
  %134 = zext <8 x i16> %133 to <8 x i32>
  %135 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %134)
  %add.ptr.i68 = getelementptr inbounds i8, ptr %fenc, i64 16
  %add.ptr9.i69 = getelementptr inbounds i8, ptr %pix1, i64 %idx.ext8.i
  %136 = load <8 x i8>, ptr %add.ptr.i68, align 1
  %137 = zext <8 x i8> %136 to <8 x i16>
  %138 = load <8 x i8>, ptr %add.ptr9.i69, align 1
  %139 = zext <8 x i8> %138 to <8 x i16>
  %140 = sub nsw <8 x i16> %137, %139
  %141 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %140, i1 false)
  %142 = zext <8 x i16> %141 to <8 x i32>
  %143 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %142)
  %op.rdx188.1 = add i32 %143, %135
  %add.ptr.i68.1 = getelementptr inbounds i8, ptr %fenc, i64 32
  %add.ptr9.i69.1 = getelementptr inbounds i8, ptr %add.ptr9.i69, i64 %idx.ext8.i
  %144 = load <8 x i8>, ptr %add.ptr.i68.1, align 1
  %145 = zext <8 x i8> %144 to <8 x i16>
  %146 = load <8 x i8>, ptr %add.ptr9.i69.1, align 1
  %147 = zext <8 x i8> %146 to <8 x i16>
  %148 = sub nsw <8 x i16> %145, %147
  %149 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %148, i1 false)
  %150 = zext <8 x i16> %149 to <8 x i32>
  %151 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %150)
  %op.rdx188.2 = add i32 %151, %op.rdx188.1
  %add.ptr.i68.2 = getelementptr inbounds i8, ptr %fenc, i64 48
  %add.ptr9.i69.2 = getelementptr inbounds i8, ptr %add.ptr9.i69.1, i64 %idx.ext8.i
  %152 = load <8 x i8>, ptr %add.ptr.i68.2, align 1
  %153 = zext <8 x i8> %152 to <8 x i16>
  %154 = load <8 x i8>, ptr %add.ptr9.i69.2, align 1
  %155 = zext <8 x i8> %154 to <8 x i16>
  %156 = sub nsw <8 x i16> %153, %155
  %157 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %156, i1 false)
  %158 = zext <8 x i16> %157 to <8 x i32>
  %159 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %158)
  %op.rdx188.3 = add i32 %159, %op.rdx188.2
  %add.ptr.i68.3 = getelementptr inbounds i8, ptr %fenc, i64 64
  %add.ptr9.i69.3 = getelementptr inbounds i8, ptr %add.ptr9.i69.2, i64 %idx.ext8.i
  %160 = load <8 x i8>, ptr %add.ptr.i68.3, align 1
  %161 = zext <8 x i8> %160 to <8 x i16>
  %162 = load <8 x i8>, ptr %add.ptr9.i69.3, align 1
  %163 = zext <8 x i8> %162 to <8 x i16>
  %164 = sub nsw <8 x i16> %161, %163
  %165 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %164, i1 false)
  %166 = zext <8 x i16> %165 to <8 x i32>
  %167 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %166)
  %op.rdx188.4 = add i32 %167, %op.rdx188.3
  %add.ptr.i68.4 = getelementptr inbounds i8, ptr %fenc, i64 80
  %add.ptr9.i69.4 = getelementptr inbounds i8, ptr %add.ptr9.i69.3, i64 %idx.ext8.i
  %168 = load <8 x i8>, ptr %add.ptr.i68.4, align 1
  %169 = zext <8 x i8> %168 to <8 x i16>
  %170 = load <8 x i8>, ptr %add.ptr9.i69.4, align 1
  %171 = zext <8 x i8> %170 to <8 x i16>
  %172 = sub nsw <8 x i16> %169, %171
  %173 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %172, i1 false)
  %174 = zext <8 x i16> %173 to <8 x i32>
  %175 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %174)
  %op.rdx188.5 = add i32 %175, %op.rdx188.4
  %add.ptr.i68.5 = getelementptr inbounds i8, ptr %fenc, i64 96
  %add.ptr9.i69.5 = getelementptr inbounds i8, ptr %add.ptr9.i69.4, i64 %idx.ext8.i
  %176 = load <8 x i8>, ptr %add.ptr.i68.5, align 1
  %177 = zext <8 x i8> %176 to <8 x i16>
  %178 = load <8 x i8>, ptr %add.ptr9.i69.5, align 1
  %179 = zext <8 x i8> %178 to <8 x i16>
  %180 = sub nsw <8 x i16> %177, %179
  %181 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %180, i1 false)
  %182 = zext <8 x i16> %181 to <8 x i32>
  %183 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %182)
  %op.rdx188.6 = add i32 %183, %op.rdx188.5
  %add.ptr.i68.6 = getelementptr inbounds i8, ptr %fenc, i64 112
  %add.ptr9.i69.6 = getelementptr inbounds i8, ptr %add.ptr9.i69.5, i64 %idx.ext8.i
  %184 = load <8 x i8>, ptr %add.ptr.i68.6, align 1
  %185 = zext <8 x i8> %184 to <8 x i16>
  %186 = load <8 x i8>, ptr %add.ptr9.i69.6, align 1
  %187 = zext <8 x i8> %186 to <8 x i16>
  %188 = sub nsw <8 x i16> %185, %187
  %189 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %188, i1 false)
  %190 = zext <8 x i16> %189 to <8 x i32>
  %191 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %190)
  %op.rdx188.7 = add i32 %191, %op.rdx188.6
  %add.ptr.i68.7 = getelementptr inbounds i8, ptr %fenc, i64 128
  %add.ptr9.i69.7 = getelementptr inbounds i8, ptr %add.ptr9.i69.6, i64 %idx.ext8.i
  %192 = load <8 x i8>, ptr %add.ptr.i68.7, align 1
  %193 = zext <8 x i8> %192 to <8 x i16>
  %194 = load <8 x i8>, ptr %add.ptr9.i69.7, align 1
  %195 = zext <8 x i8> %194 to <8 x i16>
  %196 = sub nsw <8 x i16> %193, %195
  %197 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %196, i1 false)
  %198 = zext <8 x i16> %197 to <8 x i32>
  %199 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %198)
  %op.rdx188.8 = add i32 %199, %op.rdx188.7
  %add.ptr.i68.8 = getelementptr inbounds i8, ptr %fenc, i64 144
  %add.ptr9.i69.8 = getelementptr inbounds i8, ptr %add.ptr9.i69.7, i64 %idx.ext8.i
  %200 = load <8 x i8>, ptr %add.ptr.i68.8, align 1
  %201 = zext <8 x i8> %200 to <8 x i16>
  %202 = load <8 x i8>, ptr %add.ptr9.i69.8, align 1
  %203 = zext <8 x i8> %202 to <8 x i16>
  %204 = sub nsw <8 x i16> %201, %203
  %205 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %204, i1 false)
  %206 = zext <8 x i16> %205 to <8 x i32>
  %207 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %206)
  %op.rdx188.9 = add i32 %207, %op.rdx188.8
  %add.ptr.i68.9 = getelementptr inbounds i8, ptr %fenc, i64 160
  %add.ptr9.i69.9 = getelementptr inbounds i8, ptr %add.ptr9.i69.8, i64 %idx.ext8.i
  %208 = load <8 x i8>, ptr %add.ptr.i68.9, align 1
  %209 = zext <8 x i8> %208 to <8 x i16>
  %210 = load <8 x i8>, ptr %add.ptr9.i69.9, align 1
  %211 = zext <8 x i8> %210 to <8 x i16>
  %212 = sub nsw <8 x i16> %209, %211
  %213 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %212, i1 false)
  %214 = zext <8 x i16> %213 to <8 x i32>
  %215 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %214)
  %op.rdx188.10 = add i32 %215, %op.rdx188.9
  %add.ptr.i68.10 = getelementptr inbounds i8, ptr %fenc, i64 176
  %add.ptr9.i69.10 = getelementptr inbounds i8, ptr %add.ptr9.i69.9, i64 %idx.ext8.i
  %216 = load <8 x i8>, ptr %add.ptr.i68.10, align 1
  %217 = zext <8 x i8> %216 to <8 x i16>
  %218 = load <8 x i8>, ptr %add.ptr9.i69.10, align 1
  %219 = zext <8 x i8> %218 to <8 x i16>
  %220 = sub nsw <8 x i16> %217, %219
  %221 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %220, i1 false)
  %222 = zext <8 x i16> %221 to <8 x i32>
  %223 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %222)
  %op.rdx188.11 = add i32 %223, %op.rdx188.10
  %add.ptr.i68.11 = getelementptr inbounds i8, ptr %fenc, i64 192
  %add.ptr9.i69.11 = getelementptr inbounds i8, ptr %add.ptr9.i69.10, i64 %idx.ext8.i
  %224 = load <8 x i8>, ptr %add.ptr.i68.11, align 1
  %225 = zext <8 x i8> %224 to <8 x i16>
  %226 = load <8 x i8>, ptr %add.ptr9.i69.11, align 1
  %227 = zext <8 x i8> %226 to <8 x i16>
  %228 = sub nsw <8 x i16> %225, %227
  %229 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %228, i1 false)
  %230 = zext <8 x i16> %229 to <8 x i32>
  %231 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %230)
  %op.rdx188.12 = add i32 %231, %op.rdx188.11
  %add.ptr.i68.12 = getelementptr inbounds i8, ptr %fenc, i64 208
  %add.ptr9.i69.12 = getelementptr inbounds i8, ptr %add.ptr9.i69.11, i64 %idx.ext8.i
  %232 = load <8 x i8>, ptr %add.ptr.i68.12, align 1
  %233 = zext <8 x i8> %232 to <8 x i16>
  %234 = load <8 x i8>, ptr %add.ptr9.i69.12, align 1
  %235 = zext <8 x i8> %234 to <8 x i16>
  %236 = sub nsw <8 x i16> %233, %235
  %237 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %236, i1 false)
  %238 = zext <8 x i16> %237 to <8 x i32>
  %239 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %238)
  %op.rdx188.13 = add i32 %239, %op.rdx188.12
  %add.ptr.i68.13 = getelementptr inbounds i8, ptr %fenc, i64 224
  %add.ptr9.i69.13 = getelementptr inbounds i8, ptr %add.ptr9.i69.12, i64 %idx.ext8.i
  %240 = load <8 x i8>, ptr %add.ptr.i68.13, align 1
  %241 = zext <8 x i8> %240 to <8 x i16>
  %242 = load <8 x i8>, ptr %add.ptr9.i69.13, align 1
  %243 = zext <8 x i8> %242 to <8 x i16>
  %244 = sub nsw <8 x i16> %241, %243
  %245 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %244, i1 false)
  %246 = zext <8 x i16> %245 to <8 x i32>
  %247 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %246)
  %op.rdx188.14 = add i32 %247, %op.rdx188.13
  %add.ptr.i68.14 = getelementptr inbounds i8, ptr %fenc, i64 240
  %add.ptr9.i69.14 = getelementptr inbounds i8, ptr %add.ptr9.i69.13, i64 %idx.ext8.i
  %248 = load <8 x i8>, ptr %add.ptr.i68.14, align 1
  %249 = zext <8 x i8> %248 to <8 x i16>
  %250 = load <8 x i8>, ptr %add.ptr9.i69.14, align 1
  %251 = zext <8 x i8> %250 to <8 x i16>
  %252 = sub nsw <8 x i16> %249, %251
  %253 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %252, i1 false)
  %254 = zext <8 x i16> %253 to <8 x i32>
  %255 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %254)
  %op.rdx188.15 = add i32 %255, %op.rdx188.14
  %arrayidx2 = getelementptr inbounds i8, ptr %scores, i64 4
  store i32 %op.rdx188.15, ptr %arrayidx2, align 4
  %256 = load <8 x i8>, ptr %fenc, align 1
  %257 = zext <8 x i8> %256 to <8 x i16>
  %258 = load <8 x i8>, ptr %pix2, align 1
  %259 = zext <8 x i8> %258 to <8 x i16>
  %260 = sub nsw <8 x i16> %257, %259
  %261 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %260, i1 false)
  %262 = zext <8 x i16> %261 to <8 x i32>
  %263 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %262)
  %add.ptr.i125 = getelementptr inbounds i8, ptr %fenc, i64 16
  %add.ptr9.i126 = getelementptr inbounds i8, ptr %pix2, i64 %idx.ext8.i
  %264 = load <8 x i8>, ptr %add.ptr.i125, align 1
  %265 = zext <8 x i8> %264 to <8 x i16>
  %266 = load <8 x i8>, ptr %add.ptr9.i126, align 1
  %267 = zext <8 x i8> %266 to <8 x i16>
  %268 = sub nsw <8 x i16> %265, %267
  %269 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %268, i1 false)
  %270 = zext <8 x i16> %269 to <8 x i32>
  %271 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %270)
  %op.rdx187.1 = add i32 %271, %263
  %add.ptr.i125.1 = getelementptr inbounds i8, ptr %fenc, i64 32
  %add.ptr9.i126.1 = getelementptr inbounds i8, ptr %add.ptr9.i126, i64 %idx.ext8.i
  %272 = load <8 x i8>, ptr %add.ptr.i125.1, align 1
  %273 = zext <8 x i8> %272 to <8 x i16>
  %274 = load <8 x i8>, ptr %add.ptr9.i126.1, align 1
  %275 = zext <8 x i8> %274 to <8 x i16>
  %276 = sub nsw <8 x i16> %273, %275
  %277 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %276, i1 false)
  %278 = zext <8 x i16> %277 to <8 x i32>
  %279 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %278)
  %op.rdx187.2 = add i32 %279, %op.rdx187.1
  %add.ptr.i125.2 = getelementptr inbounds i8, ptr %fenc, i64 48
  %add.ptr9.i126.2 = getelementptr inbounds i8, ptr %add.ptr9.i126.1, i64 %idx.ext8.i
  %280 = load <8 x i8>, ptr %add.ptr.i125.2, align 1
  %281 = zext <8 x i8> %280 to <8 x i16>
  %282 = load <8 x i8>, ptr %add.ptr9.i126.2, align 1
  %283 = zext <8 x i8> %282 to <8 x i16>
  %284 = sub nsw <8 x i16> %281, %283
  %285 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %284, i1 false)
  %286 = zext <8 x i16> %285 to <8 x i32>
  %287 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %286)
  %op.rdx187.3 = add i32 %287, %op.rdx187.2
  %add.ptr.i125.3 = getelementptr inbounds i8, ptr %fenc, i64 64
  %add.ptr9.i126.3 = getelementptr inbounds i8, ptr %add.ptr9.i126.2, i64 %idx.ext8.i
  %288 = load <8 x i8>, ptr %add.ptr.i125.3, align 1
  %289 = zext <8 x i8> %288 to <8 x i16>
  %290 = load <8 x i8>, ptr %add.ptr9.i126.3, align 1
  %291 = zext <8 x i8> %290 to <8 x i16>
  %292 = sub nsw <8 x i16> %289, %291
  %293 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %292, i1 false)
  %294 = zext <8 x i16> %293 to <8 x i32>
  %295 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %294)
  %op.rdx187.4 = add i32 %295, %op.rdx187.3
  %add.ptr.i125.4 = getelementptr inbounds i8, ptr %fenc, i64 80
  %add.ptr9.i126.4 = getelementptr inbounds i8, ptr %add.ptr9.i126.3, i64 %idx.ext8.i
  %296 = load <8 x i8>, ptr %add.ptr.i125.4, align 1
  %297 = zext <8 x i8> %296 to <8 x i16>
  %298 = load <8 x i8>, ptr %add.ptr9.i126.4, align 1
  %299 = zext <8 x i8> %298 to <8 x i16>
  %300 = sub nsw <8 x i16> %297, %299
  %301 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %300, i1 false)
  %302 = zext <8 x i16> %301 to <8 x i32>
  %303 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %302)
  %op.rdx187.5 = add i32 %303, %op.rdx187.4
  %add.ptr.i125.5 = getelementptr inbounds i8, ptr %fenc, i64 96
  %add.ptr9.i126.5 = getelementptr inbounds i8, ptr %add.ptr9.i126.4, i64 %idx.ext8.i
  %304 = load <8 x i8>, ptr %add.ptr.i125.5, align 1
  %305 = zext <8 x i8> %304 to <8 x i16>
  %306 = load <8 x i8>, ptr %add.ptr9.i126.5, align 1
  %307 = zext <8 x i8> %306 to <8 x i16>
  %308 = sub nsw <8 x i16> %305, %307
  %309 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %308, i1 false)
  %310 = zext <8 x i16> %309 to <8 x i32>
  %311 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %310)
  %op.rdx187.6 = add i32 %311, %op.rdx187.5
  %add.ptr.i125.6 = getelementptr inbounds i8, ptr %fenc, i64 112
  %add.ptr9.i126.6 = getelementptr inbounds i8, ptr %add.ptr9.i126.5, i64 %idx.ext8.i
  %312 = load <8 x i8>, ptr %add.ptr.i125.6, align 1
  %313 = zext <8 x i8> %312 to <8 x i16>
  %314 = load <8 x i8>, ptr %add.ptr9.i126.6, align 1
  %315 = zext <8 x i8> %314 to <8 x i16>
  %316 = sub nsw <8 x i16> %313, %315
  %317 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %316, i1 false)
  %318 = zext <8 x i16> %317 to <8 x i32>
  %319 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %318)
  %op.rdx187.7 = add i32 %319, %op.rdx187.6
  %add.ptr.i125.7 = getelementptr inbounds i8, ptr %fenc, i64 128
  %add.ptr9.i126.7 = getelementptr inbounds i8, ptr %add.ptr9.i126.6, i64 %idx.ext8.i
  %320 = load <8 x i8>, ptr %add.ptr.i125.7, align 1
  %321 = zext <8 x i8> %320 to <8 x i16>
  %322 = load <8 x i8>, ptr %add.ptr9.i126.7, align 1
  %323 = zext <8 x i8> %322 to <8 x i16>
  %324 = sub nsw <8 x i16> %321, %323
  %325 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %324, i1 false)
  %326 = zext <8 x i16> %325 to <8 x i32>
  %327 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %326)
  %op.rdx187.8 = add i32 %327, %op.rdx187.7
  %add.ptr.i125.8 = getelementptr inbounds i8, ptr %fenc, i64 144
  %add.ptr9.i126.8 = getelementptr inbounds i8, ptr %add.ptr9.i126.7, i64 %idx.ext8.i
  %328 = load <8 x i8>, ptr %add.ptr.i125.8, align 1
  %329 = zext <8 x i8> %328 to <8 x i16>
  %330 = load <8 x i8>, ptr %add.ptr9.i126.8, align 1
  %331 = zext <8 x i8> %330 to <8 x i16>
  %332 = sub nsw <8 x i16> %329, %331
  %333 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %332, i1 false)
  %334 = zext <8 x i16> %333 to <8 x i32>
  %335 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %334)
  %op.rdx187.9 = add i32 %335, %op.rdx187.8
  %add.ptr.i125.9 = getelementptr inbounds i8, ptr %fenc, i64 160
  %add.ptr9.i126.9 = getelementptr inbounds i8, ptr %add.ptr9.i126.8, i64 %idx.ext8.i
  %336 = load <8 x i8>, ptr %add.ptr.i125.9, align 1
  %337 = zext <8 x i8> %336 to <8 x i16>
  %338 = load <8 x i8>, ptr %add.ptr9.i126.9, align 1
  %339 = zext <8 x i8> %338 to <8 x i16>
  %340 = sub nsw <8 x i16> %337, %339
  %341 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %340, i1 false)
  %342 = zext <8 x i16> %341 to <8 x i32>
  %343 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %342)
  %op.rdx187.10 = add i32 %343, %op.rdx187.9
  %add.ptr.i125.10 = getelementptr inbounds i8, ptr %fenc, i64 176
  %add.ptr9.i126.10 = getelementptr inbounds i8, ptr %add.ptr9.i126.9, i64 %idx.ext8.i
  %344 = load <8 x i8>, ptr %add.ptr.i125.10, align 1
  %345 = zext <8 x i8> %344 to <8 x i16>
  %346 = load <8 x i8>, ptr %add.ptr9.i126.10, align 1
  %347 = zext <8 x i8> %346 to <8 x i16>
  %348 = sub nsw <8 x i16> %345, %347
  %349 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %348, i1 false)
  %350 = zext <8 x i16> %349 to <8 x i32>
  %351 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %350)
  %op.rdx187.11 = add i32 %351, %op.rdx187.10
  %add.ptr.i125.11 = getelementptr inbounds i8, ptr %fenc, i64 192
  %add.ptr9.i126.11 = getelementptr inbounds i8, ptr %add.ptr9.i126.10, i64 %idx.ext8.i
  %352 = load <8 x i8>, ptr %add.ptr.i125.11, align 1
  %353 = zext <8 x i8> %352 to <8 x i16>
  %354 = load <8 x i8>, ptr %add.ptr9.i126.11, align 1
  %355 = zext <8 x i8> %354 to <8 x i16>
  %356 = sub nsw <8 x i16> %353, %355
  %357 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %356, i1 false)
  %358 = zext <8 x i16> %357 to <8 x i32>
  %359 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %358)
  %op.rdx187.12 = add i32 %359, %op.rdx187.11
  %add.ptr.i125.12 = getelementptr inbounds i8, ptr %fenc, i64 208
  %add.ptr9.i126.12 = getelementptr inbounds i8, ptr %add.ptr9.i126.11, i64 %idx.ext8.i
  %360 = load <8 x i8>, ptr %add.ptr.i125.12, align 1
  %361 = zext <8 x i8> %360 to <8 x i16>
  %362 = load <8 x i8>, ptr %add.ptr9.i126.12, align 1
  %363 = zext <8 x i8> %362 to <8 x i16>
  %364 = sub nsw <8 x i16> %361, %363
  %365 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %364, i1 false)
  %366 = zext <8 x i16> %365 to <8 x i32>
  %367 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %366)
  %op.rdx187.13 = add i32 %367, %op.rdx187.12
  %add.ptr.i125.13 = getelementptr inbounds i8, ptr %fenc, i64 224
  %add.ptr9.i126.13 = getelementptr inbounds i8, ptr %add.ptr9.i126.12, i64 %idx.ext8.i
  %368 = load <8 x i8>, ptr %add.ptr.i125.13, align 1
  %369 = zext <8 x i8> %368 to <8 x i16>
  %370 = load <8 x i8>, ptr %add.ptr9.i126.13, align 1
  %371 = zext <8 x i8> %370 to <8 x i16>
  %372 = sub nsw <8 x i16> %369, %371
  %373 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %372, i1 false)
  %374 = zext <8 x i16> %373 to <8 x i32>
  %375 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %374)
  %op.rdx187.14 = add i32 %375, %op.rdx187.13
  %add.ptr.i125.14 = getelementptr inbounds i8, ptr %fenc, i64 240
  %add.ptr9.i126.14 = getelementptr inbounds i8, ptr %add.ptr9.i126.13, i64 %idx.ext8.i
  %376 = load <8 x i8>, ptr %add.ptr.i125.14, align 1
  %377 = zext <8 x i8> %376 to <8 x i16>
  %378 = load <8 x i8>, ptr %add.ptr9.i126.14, align 1
  %379 = zext <8 x i8> %378 to <8 x i16>
  %380 = sub nsw <8 x i16> %377, %379
  %381 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %380, i1 false)
  %382 = zext <8 x i16> %381 to <8 x i32>
  %383 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %382)
  %op.rdx187.15 = add i32 %383, %op.rdx187.14
  %arrayidx4 = getelementptr inbounds i8, ptr %scores, i64 8
  store i32 %op.rdx187.15, ptr %arrayidx4, align 4
  %384 = load <8 x i8>, ptr %fenc, align 1
  %385 = zext <8 x i8> %384 to <8 x i16>
  %386 = load <8 x i8>, ptr %pix3, align 1
  %387 = zext <8 x i8> %386 to <8 x i16>
  %388 = sub nsw <8 x i16> %385, %387
  %389 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %388, i1 false)
  %390 = zext <8 x i16> %389 to <8 x i32>
  %391 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %390)
  %add.ptr.i182 = getelementptr inbounds i8, ptr %fenc, i64 16
  %add.ptr9.i183 = getelementptr inbounds i8, ptr %pix3, i64 %idx.ext8.i
  %392 = load <8 x i8>, ptr %add.ptr.i182, align 1
  %393 = zext <8 x i8> %392 to <8 x i16>
  %394 = load <8 x i8>, ptr %add.ptr9.i183, align 1
  %395 = zext <8 x i8> %394 to <8 x i16>
  %396 = sub nsw <8 x i16> %393, %395
  %397 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %396, i1 false)
  %398 = zext <8 x i16> %397 to <8 x i32>
  %399 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %398)
  %op.rdx.1 = add i32 %399, %391
  %add.ptr.i182.1 = getelementptr inbounds i8, ptr %fenc, i64 32
  %add.ptr9.i183.1 = getelementptr inbounds i8, ptr %add.ptr9.i183, i64 %idx.ext8.i
  %400 = load <8 x i8>, ptr %add.ptr.i182.1, align 1
  %401 = zext <8 x i8> %400 to <8 x i16>
  %402 = load <8 x i8>, ptr %add.ptr9.i183.1, align 1
  %403 = zext <8 x i8> %402 to <8 x i16>
  %404 = sub nsw <8 x i16> %401, %403
  %405 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %404, i1 false)
  %406 = zext <8 x i16> %405 to <8 x i32>
  %407 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %406)
  %op.rdx.2 = add i32 %407, %op.rdx.1
  %add.ptr.i182.2 = getelementptr inbounds i8, ptr %fenc, i64 48
  %add.ptr9.i183.2 = getelementptr inbounds i8, ptr %add.ptr9.i183.1, i64 %idx.ext8.i
  %408 = load <8 x i8>, ptr %add.ptr.i182.2, align 1
  %409 = zext <8 x i8> %408 to <8 x i16>
  %410 = load <8 x i8>, ptr %add.ptr9.i183.2, align 1
  %411 = zext <8 x i8> %410 to <8 x i16>
  %412 = sub nsw <8 x i16> %409, %411
  %413 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %412, i1 false)
  %414 = zext <8 x i16> %413 to <8 x i32>
  %415 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %414)
  %op.rdx.3 = add i32 %415, %op.rdx.2
  %add.ptr.i182.3 = getelementptr inbounds i8, ptr %fenc, i64 64
  %add.ptr9.i183.3 = getelementptr inbounds i8, ptr %add.ptr9.i183.2, i64 %idx.ext8.i
  %416 = load <8 x i8>, ptr %add.ptr.i182.3, align 1
  %417 = zext <8 x i8> %416 to <8 x i16>
  %418 = load <8 x i8>, ptr %add.ptr9.i183.3, align 1
  %419 = zext <8 x i8> %418 to <8 x i16>
  %420 = sub nsw <8 x i16> %417, %419
  %421 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %420, i1 false)
  %422 = zext <8 x i16> %421 to <8 x i32>
  %423 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %422)
  %op.rdx.4 = add i32 %423, %op.rdx.3
  %add.ptr.i182.4 = getelementptr inbounds i8, ptr %fenc, i64 80
  %add.ptr9.i183.4 = getelementptr inbounds i8, ptr %add.ptr9.i183.3, i64 %idx.ext8.i
  %424 = load <8 x i8>, ptr %add.ptr.i182.4, align 1
  %425 = zext <8 x i8> %424 to <8 x i16>
  %426 = load <8 x i8>, ptr %add.ptr9.i183.4, align 1
  %427 = zext <8 x i8> %426 to <8 x i16>
  %428 = sub nsw <8 x i16> %425, %427
  %429 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %428, i1 false)
  %430 = zext <8 x i16> %429 to <8 x i32>
  %431 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %430)
  %op.rdx.5 = add i32 %431, %op.rdx.4
  %add.ptr.i182.5 = getelementptr inbounds i8, ptr %fenc, i64 96
  %add.ptr9.i183.5 = getelementptr inbounds i8, ptr %add.ptr9.i183.4, i64 %idx.ext8.i
  %432 = load <8 x i8>, ptr %add.ptr.i182.5, align 1
  %433 = zext <8 x i8> %432 to <8 x i16>
  %434 = load <8 x i8>, ptr %add.ptr9.i183.5, align 1
  %435 = zext <8 x i8> %434 to <8 x i16>
  %436 = sub nsw <8 x i16> %433, %435
  %437 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %436, i1 false)
  %438 = zext <8 x i16> %437 to <8 x i32>
  %439 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %438)
  %op.rdx.6 = add i32 %439, %op.rdx.5
  %add.ptr.i182.6 = getelementptr inbounds i8, ptr %fenc, i64 112
  %add.ptr9.i183.6 = getelementptr inbounds i8, ptr %add.ptr9.i183.5, i64 %idx.ext8.i
  %440 = load <8 x i8>, ptr %add.ptr.i182.6, align 1
  %441 = zext <8 x i8> %440 to <8 x i16>
  %442 = load <8 x i8>, ptr %add.ptr9.i183.6, align 1
  %443 = zext <8 x i8> %442 to <8 x i16>
  %444 = sub nsw <8 x i16> %441, %443
  %445 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %444, i1 false)
  %446 = zext <8 x i16> %445 to <8 x i32>
  %447 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %446)
  %op.rdx.7 = add i32 %447, %op.rdx.6
  %add.ptr.i182.7 = getelementptr inbounds i8, ptr %fenc, i64 128
  %add.ptr9.i183.7 = getelementptr inbounds i8, ptr %add.ptr9.i183.6, i64 %idx.ext8.i
  %448 = load <8 x i8>, ptr %add.ptr.i182.7, align 1
  %449 = zext <8 x i8> %448 to <8 x i16>
  %450 = load <8 x i8>, ptr %add.ptr9.i183.7, align 1
  %451 = zext <8 x i8> %450 to <8 x i16>
  %452 = sub nsw <8 x i16> %449, %451
  %453 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %452, i1 false)
  %454 = zext <8 x i16> %453 to <8 x i32>
  %455 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %454)
  %op.rdx.8 = add i32 %455, %op.rdx.7
  %add.ptr.i182.8 = getelementptr inbounds i8, ptr %fenc, i64 144
  %add.ptr9.i183.8 = getelementptr inbounds i8, ptr %add.ptr9.i183.7, i64 %idx.ext8.i
  %456 = load <8 x i8>, ptr %add.ptr.i182.8, align 1
  %457 = zext <8 x i8> %456 to <8 x i16>
  %458 = load <8 x i8>, ptr %add.ptr9.i183.8, align 1
  %459 = zext <8 x i8> %458 to <8 x i16>
  %460 = sub nsw <8 x i16> %457, %459
  %461 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %460, i1 false)
  %462 = zext <8 x i16> %461 to <8 x i32>
  %463 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %462)
  %op.rdx.9 = add i32 %463, %op.rdx.8
  %add.ptr.i182.9 = getelementptr inbounds i8, ptr %fenc, i64 160
  %add.ptr9.i183.9 = getelementptr inbounds i8, ptr %add.ptr9.i183.8, i64 %idx.ext8.i
  %464 = load <8 x i8>, ptr %add.ptr.i182.9, align 1
  %465 = zext <8 x i8> %464 to <8 x i16>
  %466 = load <8 x i8>, ptr %add.ptr9.i183.9, align 1
  %467 = zext <8 x i8> %466 to <8 x i16>
  %468 = sub nsw <8 x i16> %465, %467
  %469 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %468, i1 false)
  %470 = zext <8 x i16> %469 to <8 x i32>
  %471 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %470)
  %op.rdx.10 = add i32 %471, %op.rdx.9
  %add.ptr.i182.10 = getelementptr inbounds i8, ptr %fenc, i64 176
  %add.ptr9.i183.10 = getelementptr inbounds i8, ptr %add.ptr9.i183.9, i64 %idx.ext8.i
  %472 = load <8 x i8>, ptr %add.ptr.i182.10, align 1
  %473 = zext <8 x i8> %472 to <8 x i16>
  %474 = load <8 x i8>, ptr %add.ptr9.i183.10, align 1
  %475 = zext <8 x i8> %474 to <8 x i16>
  %476 = sub nsw <8 x i16> %473, %475
  %477 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %476, i1 false)
  %478 = zext <8 x i16> %477 to <8 x i32>
  %479 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %478)
  %op.rdx.11 = add i32 %479, %op.rdx.10
  %add.ptr.i182.11 = getelementptr inbounds i8, ptr %fenc, i64 192
  %add.ptr9.i183.11 = getelementptr inbounds i8, ptr %add.ptr9.i183.10, i64 %idx.ext8.i
  %480 = load <8 x i8>, ptr %add.ptr.i182.11, align 1
  %481 = zext <8 x i8> %480 to <8 x i16>
  %482 = load <8 x i8>, ptr %add.ptr9.i183.11, align 1
  %483 = zext <8 x i8> %482 to <8 x i16>
  %484 = sub nsw <8 x i16> %481, %483
  %485 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %484, i1 false)
  %486 = zext <8 x i16> %485 to <8 x i32>
  %487 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %486)
  %op.rdx.12 = add i32 %487, %op.rdx.11
  %add.ptr.i182.12 = getelementptr inbounds i8, ptr %fenc, i64 208
  %add.ptr9.i183.12 = getelementptr inbounds i8, ptr %add.ptr9.i183.11, i64 %idx.ext8.i
  %488 = load <8 x i8>, ptr %add.ptr.i182.12, align 1
  %489 = zext <8 x i8> %488 to <8 x i16>
  %490 = load <8 x i8>, ptr %add.ptr9.i183.12, align 1
  %491 = zext <8 x i8> %490 to <8 x i16>
  %492 = sub nsw <8 x i16> %489, %491
  %493 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %492, i1 false)
  %494 = zext <8 x i16> %493 to <8 x i32>
  %495 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %494)
  %op.rdx.13 = add i32 %495, %op.rdx.12
  %add.ptr.i182.13 = getelementptr inbounds i8, ptr %fenc, i64 224
  %add.ptr9.i183.13 = getelementptr inbounds i8, ptr %add.ptr9.i183.12, i64 %idx.ext8.i
  %496 = load <8 x i8>, ptr %add.ptr.i182.13, align 1
  %497 = zext <8 x i8> %496 to <8 x i16>
  %498 = load <8 x i8>, ptr %add.ptr9.i183.13, align 1
  %499 = zext <8 x i8> %498 to <8 x i16>
  %500 = sub nsw <8 x i16> %497, %499
  %501 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %500, i1 false)
  %502 = zext <8 x i16> %501 to <8 x i32>
  %503 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %502)
  %op.rdx.14 = add i32 %503, %op.rdx.13
  %add.ptr.i182.14 = getelementptr inbounds i8, ptr %fenc, i64 240
  %add.ptr9.i183.14 = getelementptr inbounds i8, ptr %add.ptr9.i183.13, i64 %idx.ext8.i
  %504 = load <8 x i8>, ptr %add.ptr.i182.14, align 1
  %505 = zext <8 x i8> %504 to <8 x i16>
  %506 = load <8 x i8>, ptr %add.ptr9.i183.14, align 1
  %507 = zext <8 x i8> %506 to <8 x i16>
  %508 = sub nsw <8 x i16> %505, %507
  %509 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %508, i1 false)
  %510 = zext <8 x i16> %509 to <8 x i32>
  %511 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %510)
  %op.rdx.15 = add i32 %511, %op.rdx.14
  %arrayidx6 = getelementptr inbounds i8, ptr %scores, i64 12
  store i32 %op.rdx.15, ptr %arrayidx6, align 4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @x264_pixel_sad_x4_8x8(ptr nocapture noundef readonly %fenc, ptr nocapture noundef readonly %pix0, ptr nocapture noundef readonly %pix1, ptr nocapture noundef readonly %pix2, ptr nocapture noundef readonly %pix3, i32 noundef %i_stride, ptr nocapture noundef writeonly %scores) #7 {
entry:
  %idx.ext8.i = sext i32 %i_stride to i64
  %0 = load <8 x i8>, ptr %fenc, align 1
  %1 = zext <8 x i8> %0 to <8 x i16>
  %2 = load <8 x i8>, ptr %pix0, align 1
  %3 = zext <8 x i8> %2 to <8 x i16>
  %4 = sub nsw <8 x i16> %1, %3
  %5 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %4, i1 false)
  %6 = zext <8 x i16> %5 to <8 x i32>
  %7 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %6)
  %add.ptr.i = getelementptr inbounds i8, ptr %fenc, i64 16
  %add.ptr9.i = getelementptr inbounds i8, ptr %pix0, i64 %idx.ext8.i
  %8 = load <8 x i8>, ptr %add.ptr.i, align 1
  %9 = zext <8 x i8> %8 to <8 x i16>
  %10 = load <8 x i8>, ptr %add.ptr9.i, align 1
  %11 = zext <8 x i8> %10 to <8 x i16>
  %12 = sub nsw <8 x i16> %9, %11
  %13 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %12, i1 false)
  %14 = zext <8 x i16> %13 to <8 x i32>
  %15 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %14)
  %op.rdx189.1 = add i32 %15, %7
  %add.ptr.i.1 = getelementptr inbounds i8, ptr %fenc, i64 32
  %add.ptr9.i.1 = getelementptr inbounds i8, ptr %add.ptr9.i, i64 %idx.ext8.i
  %16 = load <8 x i8>, ptr %add.ptr.i.1, align 1
  %17 = zext <8 x i8> %16 to <8 x i16>
  %18 = load <8 x i8>, ptr %add.ptr9.i.1, align 1
  %19 = zext <8 x i8> %18 to <8 x i16>
  %20 = sub nsw <8 x i16> %17, %19
  %21 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %20, i1 false)
  %22 = zext <8 x i16> %21 to <8 x i32>
  %23 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %22)
  %op.rdx189.2 = add i32 %23, %op.rdx189.1
  %add.ptr.i.2 = getelementptr inbounds i8, ptr %fenc, i64 48
  %add.ptr9.i.2 = getelementptr inbounds i8, ptr %add.ptr9.i.1, i64 %idx.ext8.i
  %24 = load <8 x i8>, ptr %add.ptr.i.2, align 1
  %25 = zext <8 x i8> %24 to <8 x i16>
  %26 = load <8 x i8>, ptr %add.ptr9.i.2, align 1
  %27 = zext <8 x i8> %26 to <8 x i16>
  %28 = sub nsw <8 x i16> %25, %27
  %29 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %28, i1 false)
  %30 = zext <8 x i16> %29 to <8 x i32>
  %31 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %30)
  %op.rdx189.3 = add i32 %31, %op.rdx189.2
  %add.ptr.i.3 = getelementptr inbounds i8, ptr %fenc, i64 64
  %add.ptr9.i.3 = getelementptr inbounds i8, ptr %add.ptr9.i.2, i64 %idx.ext8.i
  %32 = load <8 x i8>, ptr %add.ptr.i.3, align 1
  %33 = zext <8 x i8> %32 to <8 x i16>
  %34 = load <8 x i8>, ptr %add.ptr9.i.3, align 1
  %35 = zext <8 x i8> %34 to <8 x i16>
  %36 = sub nsw <8 x i16> %33, %35
  %37 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %36, i1 false)
  %38 = zext <8 x i16> %37 to <8 x i32>
  %39 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %38)
  %op.rdx189.4 = add i32 %39, %op.rdx189.3
  %add.ptr.i.4 = getelementptr inbounds i8, ptr %fenc, i64 80
  %add.ptr9.i.4 = getelementptr inbounds i8, ptr %add.ptr9.i.3, i64 %idx.ext8.i
  %40 = load <8 x i8>, ptr %add.ptr.i.4, align 1
  %41 = zext <8 x i8> %40 to <8 x i16>
  %42 = load <8 x i8>, ptr %add.ptr9.i.4, align 1
  %43 = zext <8 x i8> %42 to <8 x i16>
  %44 = sub nsw <8 x i16> %41, %43
  %45 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %44, i1 false)
  %46 = zext <8 x i16> %45 to <8 x i32>
  %47 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %46)
  %op.rdx189.5 = add i32 %47, %op.rdx189.4
  %add.ptr.i.5 = getelementptr inbounds i8, ptr %fenc, i64 96
  %add.ptr9.i.5 = getelementptr inbounds i8, ptr %add.ptr9.i.4, i64 %idx.ext8.i
  %48 = load <8 x i8>, ptr %add.ptr.i.5, align 1
  %49 = zext <8 x i8> %48 to <8 x i16>
  %50 = load <8 x i8>, ptr %add.ptr9.i.5, align 1
  %51 = zext <8 x i8> %50 to <8 x i16>
  %52 = sub nsw <8 x i16> %49, %51
  %53 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %52, i1 false)
  %54 = zext <8 x i16> %53 to <8 x i32>
  %55 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %54)
  %op.rdx189.6 = add i32 %55, %op.rdx189.5
  %add.ptr.i.6 = getelementptr inbounds i8, ptr %fenc, i64 112
  %add.ptr9.i.6 = getelementptr inbounds i8, ptr %add.ptr9.i.5, i64 %idx.ext8.i
  %56 = load <8 x i8>, ptr %add.ptr.i.6, align 1
  %57 = zext <8 x i8> %56 to <8 x i16>
  %58 = load <8 x i8>, ptr %add.ptr9.i.6, align 1
  %59 = zext <8 x i8> %58 to <8 x i16>
  %60 = sub nsw <8 x i16> %57, %59
  %61 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %60, i1 false)
  %62 = zext <8 x i16> %61 to <8 x i32>
  %63 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %62)
  %op.rdx189.7 = add i32 %63, %op.rdx189.6
  store i32 %op.rdx189.7, ptr %scores, align 4
  %64 = load <8 x i8>, ptr %fenc, align 1
  %65 = zext <8 x i8> %64 to <8 x i16>
  %66 = load <8 x i8>, ptr %pix1, align 1
  %67 = zext <8 x i8> %66 to <8 x i16>
  %68 = sub nsw <8 x i16> %65, %67
  %69 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %68, i1 false)
  %70 = zext <8 x i16> %69 to <8 x i32>
  %71 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %70)
  %add.ptr.i68 = getelementptr inbounds i8, ptr %fenc, i64 16
  %add.ptr9.i69 = getelementptr inbounds i8, ptr %pix1, i64 %idx.ext8.i
  %72 = load <8 x i8>, ptr %add.ptr.i68, align 1
  %73 = zext <8 x i8> %72 to <8 x i16>
  %74 = load <8 x i8>, ptr %add.ptr9.i69, align 1
  %75 = zext <8 x i8> %74 to <8 x i16>
  %76 = sub nsw <8 x i16> %73, %75
  %77 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %76, i1 false)
  %78 = zext <8 x i16> %77 to <8 x i32>
  %79 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %78)
  %op.rdx188.1 = add i32 %79, %71
  %add.ptr.i68.1 = getelementptr inbounds i8, ptr %fenc, i64 32
  %add.ptr9.i69.1 = getelementptr inbounds i8, ptr %add.ptr9.i69, i64 %idx.ext8.i
  %80 = load <8 x i8>, ptr %add.ptr.i68.1, align 1
  %81 = zext <8 x i8> %80 to <8 x i16>
  %82 = load <8 x i8>, ptr %add.ptr9.i69.1, align 1
  %83 = zext <8 x i8> %82 to <8 x i16>
  %84 = sub nsw <8 x i16> %81, %83
  %85 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %84, i1 false)
  %86 = zext <8 x i16> %85 to <8 x i32>
  %87 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %86)
  %op.rdx188.2 = add i32 %87, %op.rdx188.1
  %add.ptr.i68.2 = getelementptr inbounds i8, ptr %fenc, i64 48
  %add.ptr9.i69.2 = getelementptr inbounds i8, ptr %add.ptr9.i69.1, i64 %idx.ext8.i
  %88 = load <8 x i8>, ptr %add.ptr.i68.2, align 1
  %89 = zext <8 x i8> %88 to <8 x i16>
  %90 = load <8 x i8>, ptr %add.ptr9.i69.2, align 1
  %91 = zext <8 x i8> %90 to <8 x i16>
  %92 = sub nsw <8 x i16> %89, %91
  %93 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %92, i1 false)
  %94 = zext <8 x i16> %93 to <8 x i32>
  %95 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %94)
  %op.rdx188.3 = add i32 %95, %op.rdx188.2
  %add.ptr.i68.3 = getelementptr inbounds i8, ptr %fenc, i64 64
  %add.ptr9.i69.3 = getelementptr inbounds i8, ptr %add.ptr9.i69.2, i64 %idx.ext8.i
  %96 = load <8 x i8>, ptr %add.ptr.i68.3, align 1
  %97 = zext <8 x i8> %96 to <8 x i16>
  %98 = load <8 x i8>, ptr %add.ptr9.i69.3, align 1
  %99 = zext <8 x i8> %98 to <8 x i16>
  %100 = sub nsw <8 x i16> %97, %99
  %101 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %100, i1 false)
  %102 = zext <8 x i16> %101 to <8 x i32>
  %103 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %102)
  %op.rdx188.4 = add i32 %103, %op.rdx188.3
  %add.ptr.i68.4 = getelementptr inbounds i8, ptr %fenc, i64 80
  %add.ptr9.i69.4 = getelementptr inbounds i8, ptr %add.ptr9.i69.3, i64 %idx.ext8.i
  %104 = load <8 x i8>, ptr %add.ptr.i68.4, align 1
  %105 = zext <8 x i8> %104 to <8 x i16>
  %106 = load <8 x i8>, ptr %add.ptr9.i69.4, align 1
  %107 = zext <8 x i8> %106 to <8 x i16>
  %108 = sub nsw <8 x i16> %105, %107
  %109 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %108, i1 false)
  %110 = zext <8 x i16> %109 to <8 x i32>
  %111 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %110)
  %op.rdx188.5 = add i32 %111, %op.rdx188.4
  %add.ptr.i68.5 = getelementptr inbounds i8, ptr %fenc, i64 96
  %add.ptr9.i69.5 = getelementptr inbounds i8, ptr %add.ptr9.i69.4, i64 %idx.ext8.i
  %112 = load <8 x i8>, ptr %add.ptr.i68.5, align 1
  %113 = zext <8 x i8> %112 to <8 x i16>
  %114 = load <8 x i8>, ptr %add.ptr9.i69.5, align 1
  %115 = zext <8 x i8> %114 to <8 x i16>
  %116 = sub nsw <8 x i16> %113, %115
  %117 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %116, i1 false)
  %118 = zext <8 x i16> %117 to <8 x i32>
  %119 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %118)
  %op.rdx188.6 = add i32 %119, %op.rdx188.5
  %add.ptr.i68.6 = getelementptr inbounds i8, ptr %fenc, i64 112
  %add.ptr9.i69.6 = getelementptr inbounds i8, ptr %add.ptr9.i69.5, i64 %idx.ext8.i
  %120 = load <8 x i8>, ptr %add.ptr.i68.6, align 1
  %121 = zext <8 x i8> %120 to <8 x i16>
  %122 = load <8 x i8>, ptr %add.ptr9.i69.6, align 1
  %123 = zext <8 x i8> %122 to <8 x i16>
  %124 = sub nsw <8 x i16> %121, %123
  %125 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %124, i1 false)
  %126 = zext <8 x i16> %125 to <8 x i32>
  %127 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %126)
  %op.rdx188.7 = add i32 %127, %op.rdx188.6
  %arrayidx2 = getelementptr inbounds i8, ptr %scores, i64 4
  store i32 %op.rdx188.7, ptr %arrayidx2, align 4
  %128 = load <8 x i8>, ptr %fenc, align 1
  %129 = zext <8 x i8> %128 to <8 x i16>
  %130 = load <8 x i8>, ptr %pix2, align 1
  %131 = zext <8 x i8> %130 to <8 x i16>
  %132 = sub nsw <8 x i16> %129, %131
  %133 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %132, i1 false)
  %134 = zext <8 x i16> %133 to <8 x i32>
  %135 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %134)
  %add.ptr.i125 = getelementptr inbounds i8, ptr %fenc, i64 16
  %add.ptr9.i126 = getelementptr inbounds i8, ptr %pix2, i64 %idx.ext8.i
  %136 = load <8 x i8>, ptr %add.ptr.i125, align 1
  %137 = zext <8 x i8> %136 to <8 x i16>
  %138 = load <8 x i8>, ptr %add.ptr9.i126, align 1
  %139 = zext <8 x i8> %138 to <8 x i16>
  %140 = sub nsw <8 x i16> %137, %139
  %141 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %140, i1 false)
  %142 = zext <8 x i16> %141 to <8 x i32>
  %143 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %142)
  %op.rdx187.1 = add i32 %143, %135
  %add.ptr.i125.1 = getelementptr inbounds i8, ptr %fenc, i64 32
  %add.ptr9.i126.1 = getelementptr inbounds i8, ptr %add.ptr9.i126, i64 %idx.ext8.i
  %144 = load <8 x i8>, ptr %add.ptr.i125.1, align 1
  %145 = zext <8 x i8> %144 to <8 x i16>
  %146 = load <8 x i8>, ptr %add.ptr9.i126.1, align 1
  %147 = zext <8 x i8> %146 to <8 x i16>
  %148 = sub nsw <8 x i16> %145, %147
  %149 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %148, i1 false)
  %150 = zext <8 x i16> %149 to <8 x i32>
  %151 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %150)
  %op.rdx187.2 = add i32 %151, %op.rdx187.1
  %add.ptr.i125.2 = getelementptr inbounds i8, ptr %fenc, i64 48
  %add.ptr9.i126.2 = getelementptr inbounds i8, ptr %add.ptr9.i126.1, i64 %idx.ext8.i
  %152 = load <8 x i8>, ptr %add.ptr.i125.2, align 1
  %153 = zext <8 x i8> %152 to <8 x i16>
  %154 = load <8 x i8>, ptr %add.ptr9.i126.2, align 1
  %155 = zext <8 x i8> %154 to <8 x i16>
  %156 = sub nsw <8 x i16> %153, %155
  %157 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %156, i1 false)
  %158 = zext <8 x i16> %157 to <8 x i32>
  %159 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %158)
  %op.rdx187.3 = add i32 %159, %op.rdx187.2
  %add.ptr.i125.3 = getelementptr inbounds i8, ptr %fenc, i64 64
  %add.ptr9.i126.3 = getelementptr inbounds i8, ptr %add.ptr9.i126.2, i64 %idx.ext8.i
  %160 = load <8 x i8>, ptr %add.ptr.i125.3, align 1
  %161 = zext <8 x i8> %160 to <8 x i16>
  %162 = load <8 x i8>, ptr %add.ptr9.i126.3, align 1
  %163 = zext <8 x i8> %162 to <8 x i16>
  %164 = sub nsw <8 x i16> %161, %163
  %165 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %164, i1 false)
  %166 = zext <8 x i16> %165 to <8 x i32>
  %167 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %166)
  %op.rdx187.4 = add i32 %167, %op.rdx187.3
  %add.ptr.i125.4 = getelementptr inbounds i8, ptr %fenc, i64 80
  %add.ptr9.i126.4 = getelementptr inbounds i8, ptr %add.ptr9.i126.3, i64 %idx.ext8.i
  %168 = load <8 x i8>, ptr %add.ptr.i125.4, align 1
  %169 = zext <8 x i8> %168 to <8 x i16>
  %170 = load <8 x i8>, ptr %add.ptr9.i126.4, align 1
  %171 = zext <8 x i8> %170 to <8 x i16>
  %172 = sub nsw <8 x i16> %169, %171
  %173 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %172, i1 false)
  %174 = zext <8 x i16> %173 to <8 x i32>
  %175 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %174)
  %op.rdx187.5 = add i32 %175, %op.rdx187.4
  %add.ptr.i125.5 = getelementptr inbounds i8, ptr %fenc, i64 96
  %add.ptr9.i126.5 = getelementptr inbounds i8, ptr %add.ptr9.i126.4, i64 %idx.ext8.i
  %176 = load <8 x i8>, ptr %add.ptr.i125.5, align 1
  %177 = zext <8 x i8> %176 to <8 x i16>
  %178 = load <8 x i8>, ptr %add.ptr9.i126.5, align 1
  %179 = zext <8 x i8> %178 to <8 x i16>
  %180 = sub nsw <8 x i16> %177, %179
  %181 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %180, i1 false)
  %182 = zext <8 x i16> %181 to <8 x i32>
  %183 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %182)
  %op.rdx187.6 = add i32 %183, %op.rdx187.5
  %add.ptr.i125.6 = getelementptr inbounds i8, ptr %fenc, i64 112
  %add.ptr9.i126.6 = getelementptr inbounds i8, ptr %add.ptr9.i126.5, i64 %idx.ext8.i
  %184 = load <8 x i8>, ptr %add.ptr.i125.6, align 1
  %185 = zext <8 x i8> %184 to <8 x i16>
  %186 = load <8 x i8>, ptr %add.ptr9.i126.6, align 1
  %187 = zext <8 x i8> %186 to <8 x i16>
  %188 = sub nsw <8 x i16> %185, %187
  %189 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %188, i1 false)
  %190 = zext <8 x i16> %189 to <8 x i32>
  %191 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %190)
  %op.rdx187.7 = add i32 %191, %op.rdx187.6
  %arrayidx4 = getelementptr inbounds i8, ptr %scores, i64 8
  store i32 %op.rdx187.7, ptr %arrayidx4, align 4
  %192 = load <8 x i8>, ptr %fenc, align 1
  %193 = zext <8 x i8> %192 to <8 x i16>
  %194 = load <8 x i8>, ptr %pix3, align 1
  %195 = zext <8 x i8> %194 to <8 x i16>
  %196 = sub nsw <8 x i16> %193, %195
  %197 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %196, i1 false)
  %198 = zext <8 x i16> %197 to <8 x i32>
  %199 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %198)
  %add.ptr.i182 = getelementptr inbounds i8, ptr %fenc, i64 16
  %add.ptr9.i183 = getelementptr inbounds i8, ptr %pix3, i64 %idx.ext8.i
  %200 = load <8 x i8>, ptr %add.ptr.i182, align 1
  %201 = zext <8 x i8> %200 to <8 x i16>
  %202 = load <8 x i8>, ptr %add.ptr9.i183, align 1
  %203 = zext <8 x i8> %202 to <8 x i16>
  %204 = sub nsw <8 x i16> %201, %203
  %205 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %204, i1 false)
  %206 = zext <8 x i16> %205 to <8 x i32>
  %207 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %206)
  %op.rdx.1 = add i32 %207, %199
  %add.ptr.i182.1 = getelementptr inbounds i8, ptr %fenc, i64 32
  %add.ptr9.i183.1 = getelementptr inbounds i8, ptr %add.ptr9.i183, i64 %idx.ext8.i
  %208 = load <8 x i8>, ptr %add.ptr.i182.1, align 1
  %209 = zext <8 x i8> %208 to <8 x i16>
  %210 = load <8 x i8>, ptr %add.ptr9.i183.1, align 1
  %211 = zext <8 x i8> %210 to <8 x i16>
  %212 = sub nsw <8 x i16> %209, %211
  %213 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %212, i1 false)
  %214 = zext <8 x i16> %213 to <8 x i32>
  %215 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %214)
  %op.rdx.2 = add i32 %215, %op.rdx.1
  %add.ptr.i182.2 = getelementptr inbounds i8, ptr %fenc, i64 48
  %add.ptr9.i183.2 = getelementptr inbounds i8, ptr %add.ptr9.i183.1, i64 %idx.ext8.i
  %216 = load <8 x i8>, ptr %add.ptr.i182.2, align 1
  %217 = zext <8 x i8> %216 to <8 x i16>
  %218 = load <8 x i8>, ptr %add.ptr9.i183.2, align 1
  %219 = zext <8 x i8> %218 to <8 x i16>
  %220 = sub nsw <8 x i16> %217, %219
  %221 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %220, i1 false)
  %222 = zext <8 x i16> %221 to <8 x i32>
  %223 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %222)
  %op.rdx.3 = add i32 %223, %op.rdx.2
  %add.ptr.i182.3 = getelementptr inbounds i8, ptr %fenc, i64 64
  %add.ptr9.i183.3 = getelementptr inbounds i8, ptr %add.ptr9.i183.2, i64 %idx.ext8.i
  %224 = load <8 x i8>, ptr %add.ptr.i182.3, align 1
  %225 = zext <8 x i8> %224 to <8 x i16>
  %226 = load <8 x i8>, ptr %add.ptr9.i183.3, align 1
  %227 = zext <8 x i8> %226 to <8 x i16>
  %228 = sub nsw <8 x i16> %225, %227
  %229 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %228, i1 false)
  %230 = zext <8 x i16> %229 to <8 x i32>
  %231 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %230)
  %op.rdx.4 = add i32 %231, %op.rdx.3
  %add.ptr.i182.4 = getelementptr inbounds i8, ptr %fenc, i64 80
  %add.ptr9.i183.4 = getelementptr inbounds i8, ptr %add.ptr9.i183.3, i64 %idx.ext8.i
  %232 = load <8 x i8>, ptr %add.ptr.i182.4, align 1
  %233 = zext <8 x i8> %232 to <8 x i16>
  %234 = load <8 x i8>, ptr %add.ptr9.i183.4, align 1
  %235 = zext <8 x i8> %234 to <8 x i16>
  %236 = sub nsw <8 x i16> %233, %235
  %237 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %236, i1 false)
  %238 = zext <8 x i16> %237 to <8 x i32>
  %239 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %238)
  %op.rdx.5 = add i32 %239, %op.rdx.4
  %add.ptr.i182.5 = getelementptr inbounds i8, ptr %fenc, i64 96
  %add.ptr9.i183.5 = getelementptr inbounds i8, ptr %add.ptr9.i183.4, i64 %idx.ext8.i
  %240 = load <8 x i8>, ptr %add.ptr.i182.5, align 1
  %241 = zext <8 x i8> %240 to <8 x i16>
  %242 = load <8 x i8>, ptr %add.ptr9.i183.5, align 1
  %243 = zext <8 x i8> %242 to <8 x i16>
  %244 = sub nsw <8 x i16> %241, %243
  %245 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %244, i1 false)
  %246 = zext <8 x i16> %245 to <8 x i32>
  %247 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %246)
  %op.rdx.6 = add i32 %247, %op.rdx.5
  %add.ptr.i182.6 = getelementptr inbounds i8, ptr %fenc, i64 112
  %add.ptr9.i183.6 = getelementptr inbounds i8, ptr %add.ptr9.i183.5, i64 %idx.ext8.i
  %248 = load <8 x i8>, ptr %add.ptr.i182.6, align 1
  %249 = zext <8 x i8> %248 to <8 x i16>
  %250 = load <8 x i8>, ptr %add.ptr9.i183.6, align 1
  %251 = zext <8 x i8> %250 to <8 x i16>
  %252 = sub nsw <8 x i16> %249, %251
  %253 = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %252, i1 false)
  %254 = zext <8 x i16> %253 to <8 x i32>
  %255 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %254)
  %op.rdx.7 = add i32 %255, %op.rdx.6
  %arrayidx6 = getelementptr inbounds i8, ptr %scores, i64 12
  store i32 %op.rdx.7, ptr %arrayidx6, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @x264_pixel_sad_x4_8x4(ptr nocapture noundef readonly %fenc, ptr nocapture noundef readonly %pix0, ptr nocapture noundef readonly %pix1, ptr nocapture noundef readonly %pix2, ptr nocapture noundef readonly %pix3, i32 noundef %i_stride, ptr nocapture noundef writeonly %scores) #8 {
entry:
  %call = tail call i32 @x264_pixel_sad_8x4(ptr noundef %fenc, i32 noundef 16, ptr noundef %pix0, i32 noundef %i_stride)
  store i32 %call, ptr %scores, align 4
  %call1 = tail call i32 @x264_pixel_sad_8x4(ptr noundef %fenc, i32 noundef 16, ptr noundef %pix1, i32 noundef %i_stride)
  %arrayidx2 = getelementptr inbounds i8, ptr %scores, i64 4
  store i32 %call1, ptr %arrayidx2, align 4
  %call3 = tail call i32 @x264_pixel_sad_8x4(ptr noundef %fenc, i32 noundef 16, ptr noundef %pix2, i32 noundef %i_stride)
  %arrayidx4 = getelementptr inbounds i8, ptr %scores, i64 8
  store i32 %call3, ptr %arrayidx4, align 4
  %call5 = tail call i32 @x264_pixel_sad_8x4(ptr noundef %fenc, i32 noundef 16, ptr noundef %pix3, i32 noundef %i_stride)
  %arrayidx6 = getelementptr inbounds i8, ptr %scores, i64 12
  store i32 %call5, ptr %arrayidx6, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @x264_pixel_sad_x4_4x8(ptr nocapture noundef readonly %fenc, ptr nocapture noundef readonly %pix0, ptr nocapture noundef readonly %pix1, ptr nocapture noundef readonly %pix2, ptr nocapture noundef readonly %pix3, i32 noundef %i_stride, ptr nocapture noundef writeonly %scores) #9 {
entry:
  %call = tail call i32 @x264_pixel_sad_4x8(ptr noundef %fenc, i32 noundef 16, ptr noundef %pix0, i32 noundef %i_stride)
  store i32 %call, ptr %scores, align 4
  %call1 = tail call i32 @x264_pixel_sad_4x8(ptr noundef %fenc, i32 noundef 16, ptr noundef %pix1, i32 noundef %i_stride)
  %arrayidx2 = getelementptr inbounds i8, ptr %scores, i64 4
  store i32 %call1, ptr %arrayidx2, align 4
  %call3 = tail call i32 @x264_pixel_sad_4x8(ptr noundef %fenc, i32 noundef 16, ptr noundef %pix2, i32 noundef %i_stride)
  %arrayidx4 = getelementptr inbounds i8, ptr %scores, i64 8
  store i32 %call3, ptr %arrayidx4, align 4
  %call5 = tail call i32 @x264_pixel_sad_4x8(ptr noundef %fenc, i32 noundef 16, ptr noundef %pix3, i32 noundef %i_stride)
  %arrayidx6 = getelementptr inbounds i8, ptr %scores, i64 12
  store i32 %call5, ptr %arrayidx6, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @x264_pixel_sad_x4_4x4(ptr nocapture noundef readonly %fenc, ptr nocapture noundef readonly %pix0, ptr nocapture noundef readonly %pix1, ptr nocapture noundef readonly %pix2, ptr nocapture noundef readonly %pix3, i32 noundef %i_stride, ptr nocapture noundef writeonly %scores) #8 {
entry:
  %idx.ext8.i = sext i32 %i_stride to i64
  %0 = load i8, ptr %fenc, align 1
  %conv.i = zext i8 %0 to i32
  %1 = load i8, ptr %pix0, align 1
  %conv7.i = zext i8 %1 to i32
  %sub.i = sub nsw i32 %conv.i, %conv7.i
  %2 = tail call i32 @llvm.abs.i32(i32 %sub.i, i1 true)
  %arrayidx.1.i = getelementptr inbounds i8, ptr %fenc, i64 1
  %3 = load i8, ptr %arrayidx.1.i, align 1
  %conv.1.i = zext i8 %3 to i32
  %arrayidx6.1.i = getelementptr inbounds i8, ptr %pix0, i64 1
  %4 = load i8, ptr %arrayidx6.1.i, align 1
  %conv7.1.i = zext i8 %4 to i32
  %sub.1.i = sub nsw i32 %conv.1.i, %conv7.1.i
  %5 = tail call i32 @llvm.abs.i32(i32 %sub.1.i, i1 true)
  %add.1.i = add nuw nsw i32 %5, %2
  %arrayidx.2.i = getelementptr inbounds i8, ptr %fenc, i64 2
  %6 = load i8, ptr %arrayidx.2.i, align 1
  %conv.2.i = zext i8 %6 to i32
  %arrayidx6.2.i = getelementptr inbounds i8, ptr %pix0, i64 2
  %7 = load i8, ptr %arrayidx6.2.i, align 1
  %conv7.2.i = zext i8 %7 to i32
  %sub.2.i = sub nsw i32 %conv.2.i, %conv7.2.i
  %8 = tail call i32 @llvm.abs.i32(i32 %sub.2.i, i1 true)
  %add.2.i = add nuw nsw i32 %add.1.i, %8
  %arrayidx.3.i = getelementptr inbounds i8, ptr %fenc, i64 3
  %9 = load i8, ptr %arrayidx.3.i, align 1
  %conv.3.i = zext i8 %9 to i32
  %arrayidx6.3.i = getelementptr inbounds i8, ptr %pix0, i64 3
  %10 = load i8, ptr %arrayidx6.3.i, align 1
  %conv7.3.i = zext i8 %10 to i32
  %sub.3.i = sub nsw i32 %conv.3.i, %conv7.3.i
  %11 = tail call i32 @llvm.abs.i32(i32 %sub.3.i, i1 true)
  %add.3.i = add nuw nsw i32 %add.2.i, %11
  %add.ptr.i = getelementptr inbounds i8, ptr %fenc, i64 16
  %add.ptr9.i = getelementptr inbounds i8, ptr %pix0, i64 %idx.ext8.i
  %12 = load i8, ptr %add.ptr.i, align 1
  %conv.127.i = zext i8 %12 to i32
  %13 = load i8, ptr %add.ptr9.i, align 1
  %conv7.128.i = zext i8 %13 to i32
  %sub.129.i = sub nsw i32 %conv.127.i, %conv7.128.i
  %14 = tail call i32 @llvm.abs.i32(i32 %sub.129.i, i1 true)
  %add.130.i = add nuw nsw i32 %add.3.i, %14
  %arrayidx.1.1.i = getelementptr inbounds i8, ptr %fenc, i64 17
  %15 = load i8, ptr %arrayidx.1.1.i, align 1
  %conv.1.1.i = zext i8 %15 to i32
  %arrayidx6.1.1.i = getelementptr inbounds i8, ptr %add.ptr9.i, i64 1
  %16 = load i8, ptr %arrayidx6.1.1.i, align 1
  %conv7.1.1.i = zext i8 %16 to i32
  %sub.1.1.i = sub nsw i32 %conv.1.1.i, %conv7.1.1.i
  %17 = tail call i32 @llvm.abs.i32(i32 %sub.1.1.i, i1 true)
  %add.1.1.i = add nuw nsw i32 %add.130.i, %17
  %arrayidx.2.1.i = getelementptr inbounds i8, ptr %fenc, i64 18
  %18 = load i8, ptr %arrayidx.2.1.i, align 1
  %conv.2.1.i = zext i8 %18 to i32
  %arrayidx6.2.1.i = getelementptr inbounds i8, ptr %add.ptr9.i, i64 2
  %19 = load i8, ptr %arrayidx6.2.1.i, align 1
  %conv7.2.1.i = zext i8 %19 to i32
  %sub.2.1.i = sub nsw i32 %conv.2.1.i, %conv7.2.1.i
  %20 = tail call i32 @llvm.abs.i32(i32 %sub.2.1.i, i1 true)
  %add.2.1.i = add nuw nsw i32 %add.1.1.i, %20
  %arrayidx.3.1.i = getelementptr inbounds i8, ptr %fenc, i64 19
  %21 = load i8, ptr %arrayidx.3.1.i, align 1
  %conv.3.1.i = zext i8 %21 to i32
  %arrayidx6.3.1.i = getelementptr inbounds i8, ptr %add.ptr9.i, i64 3
  %22 = load i8, ptr %arrayidx6.3.1.i, align 1
  %conv7.3.1.i = zext i8 %22 to i32
  %sub.3.1.i = sub nsw i32 %conv.3.1.i, %conv7.3.1.i
  %23 = tail call i32 @llvm.abs.i32(i32 %sub.3.1.i, i1 true)
  %add.3.1.i = add nuw nsw i32 %add.2.1.i, %23
  %add.ptr.1.i = getelementptr inbounds i8, ptr %fenc, i64 32
  %add.ptr9.1.i = getelementptr inbounds i8, ptr %add.ptr9.i, i64 %idx.ext8.i
  %24 = load i8, ptr %add.ptr.1.i, align 1
  %conv.231.i = zext i8 %24 to i32
  %25 = load i8, ptr %add.ptr9.1.i, align 1
  %conv7.232.i = zext i8 %25 to i32
  %sub.233.i = sub nsw i32 %conv.231.i, %conv7.232.i
  %26 = tail call i32 @llvm.abs.i32(i32 %sub.233.i, i1 true)
  %add.234.i = add nuw nsw i32 %add.3.1.i, %26
  %arrayidx.1.2.i = getelementptr inbounds i8, ptr %fenc, i64 33
  %27 = load i8, ptr %arrayidx.1.2.i, align 1
  %conv.1.2.i = zext i8 %27 to i32
  %arrayidx6.1.2.i = getelementptr inbounds i8, ptr %add.ptr9.1.i, i64 1
  %28 = load i8, ptr %arrayidx6.1.2.i, align 1
  %conv7.1.2.i = zext i8 %28 to i32
  %sub.1.2.i = sub nsw i32 %conv.1.2.i, %conv7.1.2.i
  %29 = tail call i32 @llvm.abs.i32(i32 %sub.1.2.i, i1 true)
  %add.1.2.i = add nuw nsw i32 %add.234.i, %29
  %arrayidx.2.2.i = getelementptr inbounds i8, ptr %fenc, i64 34
  %30 = load i8, ptr %arrayidx.2.2.i, align 1
  %conv.2.2.i = zext i8 %30 to i32
  %arrayidx6.2.2.i = getelementptr inbounds i8, ptr %add.ptr9.1.i, i64 2
  %31 = load i8, ptr %arrayidx6.2.2.i, align 1
  %conv7.2.2.i = zext i8 %31 to i32
  %sub.2.2.i = sub nsw i32 %conv.2.2.i, %conv7.2.2.i
  %32 = tail call i32 @llvm.abs.i32(i32 %sub.2.2.i, i1 true)
  %add.2.2.i = add nuw nsw i32 %add.1.2.i, %32
  %arrayidx.3.2.i = getelementptr inbounds i8, ptr %fenc, i64 35
  %33 = load i8, ptr %arrayidx.3.2.i, align 1
  %conv.3.2.i = zext i8 %33 to i32
  %arrayidx6.3.2.i = getelementptr inbounds i8, ptr %add.ptr9.1.i, i64 3
  %34 = load i8, ptr %arrayidx6.3.2.i, align 1
  %conv7.3.2.i = zext i8 %34 to i32
  %sub.3.2.i = sub nsw i32 %conv.3.2.i, %conv7.3.2.i
  %35 = tail call i32 @llvm.abs.i32(i32 %sub.3.2.i, i1 true)
  %add.3.2.i = add nuw nsw i32 %add.2.2.i, %35
  %add.ptr.2.i = getelementptr inbounds i8, ptr %fenc, i64 48
  %add.ptr9.2.i = getelementptr inbounds i8, ptr %add.ptr9.1.i, i64 %idx.ext8.i
  %36 = load i8, ptr %add.ptr.2.i, align 1
  %conv.335.i = zext i8 %36 to i32
  %37 = load i8, ptr %add.ptr9.2.i, align 1
  %conv7.336.i = zext i8 %37 to i32
  %sub.337.i = sub nsw i32 %conv.335.i, %conv7.336.i
  %38 = tail call i32 @llvm.abs.i32(i32 %sub.337.i, i1 true)
  %add.338.i = add nuw nsw i32 %add.3.2.i, %38
  %arrayidx.1.3.i = getelementptr inbounds i8, ptr %fenc, i64 49
  %39 = load i8, ptr %arrayidx.1.3.i, align 1
  %conv.1.3.i = zext i8 %39 to i32
  %arrayidx6.1.3.i = getelementptr inbounds i8, ptr %add.ptr9.2.i, i64 1
  %40 = load i8, ptr %arrayidx6.1.3.i, align 1
  %conv7.1.3.i = zext i8 %40 to i32
  %sub.1.3.i = sub nsw i32 %conv.1.3.i, %conv7.1.3.i
  %41 = tail call i32 @llvm.abs.i32(i32 %sub.1.3.i, i1 true)
  %add.1.3.i = add nuw nsw i32 %add.338.i, %41
  %arrayidx.2.3.i = getelementptr inbounds i8, ptr %fenc, i64 50
  %42 = load i8, ptr %arrayidx.2.3.i, align 1
  %conv.2.3.i = zext i8 %42 to i32
  %arrayidx6.2.3.i = getelementptr inbounds i8, ptr %add.ptr9.2.i, i64 2
  %43 = load i8, ptr %arrayidx6.2.3.i, align 1
  %conv7.2.3.i = zext i8 %43 to i32
  %sub.2.3.i = sub nsw i32 %conv.2.3.i, %conv7.2.3.i
  %44 = tail call i32 @llvm.abs.i32(i32 %sub.2.3.i, i1 true)
  %add.2.3.i = add nuw nsw i32 %add.1.3.i, %44
  %arrayidx.3.3.i = getelementptr inbounds i8, ptr %fenc, i64 51
  %45 = load i8, ptr %arrayidx.3.3.i, align 1
  %conv.3.3.i = zext i8 %45 to i32
  %arrayidx6.3.3.i = getelementptr inbounds i8, ptr %add.ptr9.2.i, i64 3
  %46 = load i8, ptr %arrayidx6.3.3.i, align 1
  %conv7.3.3.i = zext i8 %46 to i32
  %sub.3.3.i = sub nsw i32 %conv.3.3.i, %conv7.3.3.i
  %47 = tail call i32 @llvm.abs.i32(i32 %sub.3.3.i, i1 true)
  %add.3.3.i = add nuw nsw i32 %add.2.3.i, %47
  store i32 %add.3.3.i, ptr %scores, align 4
  %48 = load i8, ptr %fenc, align 1
  %conv.i17 = zext i8 %48 to i32
  %49 = load i8, ptr %pix1, align 1
  %conv7.i18 = zext i8 %49 to i32
  %sub.i19 = sub nsw i32 %conv.i17, %conv7.i18
  %50 = tail call i32 @llvm.abs.i32(i32 %sub.i19, i1 true)
  %51 = load i8, ptr %arrayidx.1.i, align 1
  %conv.1.i21 = zext i8 %51 to i32
  %arrayidx6.1.i22 = getelementptr inbounds i8, ptr %pix1, i64 1
  %52 = load i8, ptr %arrayidx6.1.i22, align 1
  %conv7.1.i23 = zext i8 %52 to i32
  %sub.1.i24 = sub nsw i32 %conv.1.i21, %conv7.1.i23
  %53 = tail call i32 @llvm.abs.i32(i32 %sub.1.i24, i1 true)
  %add.1.i25 = add nuw nsw i32 %53, %50
  %54 = load i8, ptr %arrayidx.2.i, align 1
  %conv.2.i27 = zext i8 %54 to i32
  %arrayidx6.2.i28 = getelementptr inbounds i8, ptr %pix1, i64 2
  %55 = load i8, ptr %arrayidx6.2.i28, align 1
  %conv7.2.i29 = zext i8 %55 to i32
  %sub.2.i30 = sub nsw i32 %conv.2.i27, %conv7.2.i29
  %56 = tail call i32 @llvm.abs.i32(i32 %sub.2.i30, i1 true)
  %add.2.i31 = add nuw nsw i32 %add.1.i25, %56
  %57 = load i8, ptr %arrayidx.3.i, align 1
  %conv.3.i33 = zext i8 %57 to i32
  %arrayidx6.3.i34 = getelementptr inbounds i8, ptr %pix1, i64 3
  %58 = load i8, ptr %arrayidx6.3.i34, align 1
  %conv7.3.i35 = zext i8 %58 to i32
  %sub.3.i36 = sub nsw i32 %conv.3.i33, %conv7.3.i35
  %59 = tail call i32 @llvm.abs.i32(i32 %sub.3.i36, i1 true)
  %add.3.i37 = add nuw nsw i32 %add.2.i31, %59
  %add.ptr9.i39 = getelementptr inbounds i8, ptr %pix1, i64 %idx.ext8.i
  %60 = load i8, ptr %add.ptr.i, align 1
  %conv.127.i40 = zext i8 %60 to i32
  %61 = load i8, ptr %add.ptr9.i39, align 1
  %conv7.128.i41 = zext i8 %61 to i32
  %sub.129.i42 = sub nsw i32 %conv.127.i40, %conv7.128.i41
  %62 = tail call i32 @llvm.abs.i32(i32 %sub.129.i42, i1 true)
  %add.130.i43 = add nuw nsw i32 %add.3.i37, %62
  %63 = load i8, ptr %arrayidx.1.1.i, align 1
  %conv.1.1.i45 = zext i8 %63 to i32
  %arrayidx6.1.1.i46 = getelementptr inbounds i8, ptr %add.ptr9.i39, i64 1
  %64 = load i8, ptr %arrayidx6.1.1.i46, align 1
  %conv7.1.1.i47 = zext i8 %64 to i32
  %sub.1.1.i48 = sub nsw i32 %conv.1.1.i45, %conv7.1.1.i47
  %65 = tail call i32 @llvm.abs.i32(i32 %sub.1.1.i48, i1 true)
  %add.1.1.i49 = add nuw nsw i32 %add.130.i43, %65
  %66 = load i8, ptr %arrayidx.2.1.i, align 1
  %conv.2.1.i51 = zext i8 %66 to i32
  %arrayidx6.2.1.i52 = getelementptr inbounds i8, ptr %add.ptr9.i39, i64 2
  %67 = load i8, ptr %arrayidx6.2.1.i52, align 1
  %conv7.2.1.i53 = zext i8 %67 to i32
  %sub.2.1.i54 = sub nsw i32 %conv.2.1.i51, %conv7.2.1.i53
  %68 = tail call i32 @llvm.abs.i32(i32 %sub.2.1.i54, i1 true)
  %add.2.1.i55 = add nuw nsw i32 %add.1.1.i49, %68
  %69 = load i8, ptr %arrayidx.3.1.i, align 1
  %conv.3.1.i57 = zext i8 %69 to i32
  %arrayidx6.3.1.i58 = getelementptr inbounds i8, ptr %add.ptr9.i39, i64 3
  %70 = load i8, ptr %arrayidx6.3.1.i58, align 1
  %conv7.3.1.i59 = zext i8 %70 to i32
  %sub.3.1.i60 = sub nsw i32 %conv.3.1.i57, %conv7.3.1.i59
  %71 = tail call i32 @llvm.abs.i32(i32 %sub.3.1.i60, i1 true)
  %add.3.1.i61 = add nuw nsw i32 %add.2.1.i55, %71
  %add.ptr9.1.i63 = getelementptr inbounds i8, ptr %add.ptr9.i39, i64 %idx.ext8.i
  %72 = load i8, ptr %add.ptr.1.i, align 1
  %conv.231.i64 = zext i8 %72 to i32
  %73 = load i8, ptr %add.ptr9.1.i63, align 1
  %conv7.232.i65 = zext i8 %73 to i32
  %sub.233.i66 = sub nsw i32 %conv.231.i64, %conv7.232.i65
  %74 = tail call i32 @llvm.abs.i32(i32 %sub.233.i66, i1 true)
  %add.234.i67 = add nuw nsw i32 %add.3.1.i61, %74
  %75 = load i8, ptr %arrayidx.1.2.i, align 1
  %conv.1.2.i69 = zext i8 %75 to i32
  %arrayidx6.1.2.i70 = getelementptr inbounds i8, ptr %add.ptr9.1.i63, i64 1
  %76 = load i8, ptr %arrayidx6.1.2.i70, align 1
  %conv7.1.2.i71 = zext i8 %76 to i32
  %sub.1.2.i72 = sub nsw i32 %conv.1.2.i69, %conv7.1.2.i71
  %77 = tail call i32 @llvm.abs.i32(i32 %sub.1.2.i72, i1 true)
  %add.1.2.i73 = add nuw nsw i32 %add.234.i67, %77
  %78 = load i8, ptr %arrayidx.2.2.i, align 1
  %conv.2.2.i75 = zext i8 %78 to i32
  %arrayidx6.2.2.i76 = getelementptr inbounds i8, ptr %add.ptr9.1.i63, i64 2
  %79 = load i8, ptr %arrayidx6.2.2.i76, align 1
  %conv7.2.2.i77 = zext i8 %79 to i32
  %sub.2.2.i78 = sub nsw i32 %conv.2.2.i75, %conv7.2.2.i77
  %80 = tail call i32 @llvm.abs.i32(i32 %sub.2.2.i78, i1 true)
  %add.2.2.i79 = add nuw nsw i32 %add.1.2.i73, %80
  %81 = load i8, ptr %arrayidx.3.2.i, align 1
  %conv.3.2.i81 = zext i8 %81 to i32
  %arrayidx6.3.2.i82 = getelementptr inbounds i8, ptr %add.ptr9.1.i63, i64 3
  %82 = load i8, ptr %arrayidx6.3.2.i82, align 1
  %conv7.3.2.i83 = zext i8 %82 to i32
  %sub.3.2.i84 = sub nsw i32 %conv.3.2.i81, %conv7.3.2.i83
  %83 = tail call i32 @llvm.abs.i32(i32 %sub.3.2.i84, i1 true)
  %add.3.2.i85 = add nuw nsw i32 %add.2.2.i79, %83
  %add.ptr9.2.i87 = getelementptr inbounds i8, ptr %add.ptr9.1.i63, i64 %idx.ext8.i
  %84 = load i8, ptr %add.ptr.2.i, align 1
  %conv.335.i88 = zext i8 %84 to i32
  %85 = load i8, ptr %add.ptr9.2.i87, align 1
  %conv7.336.i89 = zext i8 %85 to i32
  %sub.337.i90 = sub nsw i32 %conv.335.i88, %conv7.336.i89
  %86 = tail call i32 @llvm.abs.i32(i32 %sub.337.i90, i1 true)
  %add.338.i91 = add nuw nsw i32 %add.3.2.i85, %86
  %87 = load i8, ptr %arrayidx.1.3.i, align 1
  %conv.1.3.i93 = zext i8 %87 to i32
  %arrayidx6.1.3.i94 = getelementptr inbounds i8, ptr %add.ptr9.2.i87, i64 1
  %88 = load i8, ptr %arrayidx6.1.3.i94, align 1
  %conv7.1.3.i95 = zext i8 %88 to i32
  %sub.1.3.i96 = sub nsw i32 %conv.1.3.i93, %conv7.1.3.i95
  %89 = tail call i32 @llvm.abs.i32(i32 %sub.1.3.i96, i1 true)
  %add.1.3.i97 = add nuw nsw i32 %add.338.i91, %89
  %90 = load i8, ptr %arrayidx.2.3.i, align 1
  %conv.2.3.i99 = zext i8 %90 to i32
  %arrayidx6.2.3.i100 = getelementptr inbounds i8, ptr %add.ptr9.2.i87, i64 2
  %91 = load i8, ptr %arrayidx6.2.3.i100, align 1
  %conv7.2.3.i101 = zext i8 %91 to i32
  %sub.2.3.i102 = sub nsw i32 %conv.2.3.i99, %conv7.2.3.i101
  %92 = tail call i32 @llvm.abs.i32(i32 %sub.2.3.i102, i1 true)
  %add.2.3.i103 = add nuw nsw i32 %add.1.3.i97, %92
  %93 = load i8, ptr %arrayidx.3.3.i, align 1
  %conv.3.3.i105 = zext i8 %93 to i32
  %arrayidx6.3.3.i106 = getelementptr inbounds i8, ptr %add.ptr9.2.i87, i64 3
  %94 = load i8, ptr %arrayidx6.3.3.i106, align 1
  %conv7.3.3.i107 = zext i8 %94 to i32
  %sub.3.3.i108 = sub nsw i32 %conv.3.3.i105, %conv7.3.3.i107
  %95 = tail call i32 @llvm.abs.i32(i32 %sub.3.3.i108, i1 true)
  %add.3.3.i109 = add nuw nsw i32 %add.2.3.i103, %95
  %arrayidx2 = getelementptr inbounds i8, ptr %scores, i64 4
  store i32 %add.3.3.i109, ptr %arrayidx2, align 4
  %96 = load i8, ptr %fenc, align 1
  %conv.i111 = zext i8 %96 to i32
  %97 = load i8, ptr %pix2, align 1
  %conv7.i112 = zext i8 %97 to i32
  %sub.i113 = sub nsw i32 %conv.i111, %conv7.i112
  %98 = tail call i32 @llvm.abs.i32(i32 %sub.i113, i1 true)
  %99 = load i8, ptr %arrayidx.1.i, align 1
  %conv.1.i115 = zext i8 %99 to i32
  %arrayidx6.1.i116 = getelementptr inbounds i8, ptr %pix2, i64 1
  %100 = load i8, ptr %arrayidx6.1.i116, align 1
  %conv7.1.i117 = zext i8 %100 to i32
  %sub.1.i118 = sub nsw i32 %conv.1.i115, %conv7.1.i117
  %101 = tail call i32 @llvm.abs.i32(i32 %sub.1.i118, i1 true)
  %add.1.i119 = add nuw nsw i32 %101, %98
  %102 = load i8, ptr %arrayidx.2.i, align 1
  %conv.2.i121 = zext i8 %102 to i32
  %arrayidx6.2.i122 = getelementptr inbounds i8, ptr %pix2, i64 2
  %103 = load i8, ptr %arrayidx6.2.i122, align 1
  %conv7.2.i123 = zext i8 %103 to i32
  %sub.2.i124 = sub nsw i32 %conv.2.i121, %conv7.2.i123
  %104 = tail call i32 @llvm.abs.i32(i32 %sub.2.i124, i1 true)
  %add.2.i125 = add nuw nsw i32 %add.1.i119, %104
  %105 = load i8, ptr %arrayidx.3.i, align 1
  %conv.3.i127 = zext i8 %105 to i32
  %arrayidx6.3.i128 = getelementptr inbounds i8, ptr %pix2, i64 3
  %106 = load i8, ptr %arrayidx6.3.i128, align 1
  %conv7.3.i129 = zext i8 %106 to i32
  %sub.3.i130 = sub nsw i32 %conv.3.i127, %conv7.3.i129
  %107 = tail call i32 @llvm.abs.i32(i32 %sub.3.i130, i1 true)
  %add.3.i131 = add nuw nsw i32 %add.2.i125, %107
  %add.ptr9.i133 = getelementptr inbounds i8, ptr %pix2, i64 %idx.ext8.i
  %108 = load i8, ptr %add.ptr.i, align 1
  %conv.127.i134 = zext i8 %108 to i32
  %109 = load i8, ptr %add.ptr9.i133, align 1
  %conv7.128.i135 = zext i8 %109 to i32
  %sub.129.i136 = sub nsw i32 %conv.127.i134, %conv7.128.i135
  %110 = tail call i32 @llvm.abs.i32(i32 %sub.129.i136, i1 true)
  %add.130.i137 = add nuw nsw i32 %add.3.i131, %110
  %111 = load i8, ptr %arrayidx.1.1.i, align 1
  %conv.1.1.i139 = zext i8 %111 to i32
  %arrayidx6.1.1.i140 = getelementptr inbounds i8, ptr %add.ptr9.i133, i64 1
  %112 = load i8, ptr %arrayidx6.1.1.i140, align 1
  %conv7.1.1.i141 = zext i8 %112 to i32
  %sub.1.1.i142 = sub nsw i32 %conv.1.1.i139, %conv7.1.1.i141
  %113 = tail call i32 @llvm.abs.i32(i32 %sub.1.1.i142, i1 true)
  %add.1.1.i143 = add nuw nsw i32 %add.130.i137, %113
  %114 = load i8, ptr %arrayidx.2.1.i, align 1
  %conv.2.1.i145 = zext i8 %114 to i32
  %arrayidx6.2.1.i146 = getelementptr inbounds i8, ptr %add.ptr9.i133, i64 2
  %115 = load i8, ptr %arrayidx6.2.1.i146, align 1
  %conv7.2.1.i147 = zext i8 %115 to i32
  %sub.2.1.i148 = sub nsw i32 %conv.2.1.i145, %conv7.2.1.i147
  %116 = tail call i32 @llvm.abs.i32(i32 %sub.2.1.i148, i1 true)
  %add.2.1.i149 = add nuw nsw i32 %add.1.1.i143, %116
  %117 = load i8, ptr %arrayidx.3.1.i, align 1
  %conv.3.1.i151 = zext i8 %117 to i32
  %arrayidx6.3.1.i152 = getelementptr inbounds i8, ptr %add.ptr9.i133, i64 3
  %118 = load i8, ptr %arrayidx6.3.1.i152, align 1
  %conv7.3.1.i153 = zext i8 %118 to i32
  %sub.3.1.i154 = sub nsw i32 %conv.3.1.i151, %conv7.3.1.i153
  %119 = tail call i32 @llvm.abs.i32(i32 %sub.3.1.i154, i1 true)
  %add.3.1.i155 = add nuw nsw i32 %add.2.1.i149, %119
  %add.ptr9.1.i157 = getelementptr inbounds i8, ptr %add.ptr9.i133, i64 %idx.ext8.i
  %120 = load i8, ptr %add.ptr.1.i, align 1
  %conv.231.i158 = zext i8 %120 to i32
  %121 = load i8, ptr %add.ptr9.1.i157, align 1
  %conv7.232.i159 = zext i8 %121 to i32
  %sub.233.i160 = sub nsw i32 %conv.231.i158, %conv7.232.i159
  %122 = tail call i32 @llvm.abs.i32(i32 %sub.233.i160, i1 true)
  %add.234.i161 = add nuw nsw i32 %add.3.1.i155, %122
  %123 = load i8, ptr %arrayidx.1.2.i, align 1
  %conv.1.2.i163 = zext i8 %123 to i32
  %arrayidx6.1.2.i164 = getelementptr inbounds i8, ptr %add.ptr9.1.i157, i64 1
  %124 = load i8, ptr %arrayidx6.1.2.i164, align 1
  %conv7.1.2.i165 = zext i8 %124 to i32
  %sub.1.2.i166 = sub nsw i32 %conv.1.2.i163, %conv7.1.2.i165
  %125 = tail call i32 @llvm.abs.i32(i32 %sub.1.2.i166, i1 true)
  %add.1.2.i167 = add nuw nsw i32 %add.234.i161, %125
  %126 = load i8, ptr %arrayidx.2.2.i, align 1
  %conv.2.2.i169 = zext i8 %126 to i32
  %arrayidx6.2.2.i170 = getelementptr inbounds i8, ptr %add.ptr9.1.i157, i64 2
  %127 = load i8, ptr %arrayidx6.2.2.i170, align 1
  %conv7.2.2.i171 = zext i8 %127 to i32
  %sub.2.2.i172 = sub nsw i32 %conv.2.2.i169, %conv7.2.2.i171
  %128 = tail call i32 @llvm.abs.i32(i32 %sub.2.2.i172, i1 true)
  %add.2.2.i173 = add nuw nsw i32 %add.1.2.i167, %128
  %129 = load i8, ptr %arrayidx.3.2.i, align 1
  %conv.3.2.i175 = zext i8 %129 to i32
  %arrayidx6.3.2.i176 = getelementptr inbounds i8, ptr %add.ptr9.1.i157, i64 3
  %130 = load i8, ptr %arrayidx6.3.2.i176, align 1
  %conv7.3.2.i177 = zext i8 %130 to i32
  %sub.3.2.i178 = sub nsw i32 %conv.3.2.i175, %conv7.3.2.i177
  %131 = tail call i32 @llvm.abs.i32(i32 %sub.3.2.i178, i1 true)
  %add.3.2.i179 = add nuw nsw i32 %add.2.2.i173, %131
  %add.ptr9.2.i181 = getelementptr inbounds i8, ptr %add.ptr9.1.i157, i64 %idx.ext8.i
  %132 = load i8, ptr %add.ptr.2.i, align 1
  %conv.335.i182 = zext i8 %132 to i32
  %133 = load i8, ptr %add.ptr9.2.i181, align 1
  %conv7.336.i183 = zext i8 %133 to i32
  %sub.337.i184 = sub nsw i32 %conv.335.i182, %conv7.336.i183
  %134 = tail call i32 @llvm.abs.i32(i32 %sub.337.i184, i1 true)
  %add.338.i185 = add nuw nsw i32 %add.3.2.i179, %134
  %135 = load i8, ptr %arrayidx.1.3.i, align 1
  %conv.1.3.i187 = zext i8 %135 to i32
  %arrayidx6.1.3.i188 = getelementptr inbounds i8, ptr %add.ptr9.2.i181, i64 1
  %136 = load i8, ptr %arrayidx6.1.3.i188, align 1
  %conv7.1.3.i189 = zext i8 %136 to i32
  %sub.1.3.i190 = sub nsw i32 %conv.1.3.i187, %conv7.1.3.i189
  %137 = tail call i32 @llvm.abs.i32(i32 %sub.1.3.i190, i1 true)
  %add.1.3.i191 = add nuw nsw i32 %add.338.i185, %137
  %138 = load i8, ptr %arrayidx.2.3.i, align 1
  %conv.2.3.i193 = zext i8 %138 to i32
  %arrayidx6.2.3.i194 = getelementptr inbounds i8, ptr %add.ptr9.2.i181, i64 2
  %139 = load i8, ptr %arrayidx6.2.3.i194, align 1
  %conv7.2.3.i195 = zext i8 %139 to i32
  %sub.2.3.i196 = sub nsw i32 %conv.2.3.i193, %conv7.2.3.i195
  %140 = tail call i32 @llvm.abs.i32(i32 %sub.2.3.i196, i1 true)
  %add.2.3.i197 = add nuw nsw i32 %add.1.3.i191, %140
  %141 = load i8, ptr %arrayidx.3.3.i, align 1
  %conv.3.3.i199 = zext i8 %141 to i32
  %arrayidx6.3.3.i200 = getelementptr inbounds i8, ptr %add.ptr9.2.i181, i64 3
  %142 = load i8, ptr %arrayidx6.3.3.i200, align 1
  %conv7.3.3.i201 = zext i8 %142 to i32
  %sub.3.3.i202 = sub nsw i32 %conv.3.3.i199, %conv7.3.3.i201
  %143 = tail call i32 @llvm.abs.i32(i32 %sub.3.3.i202, i1 true)
  %add.3.3.i203 = add nuw nsw i32 %add.2.3.i197, %143
  %arrayidx4 = getelementptr inbounds i8, ptr %scores, i64 8
  store i32 %add.3.3.i203, ptr %arrayidx4, align 4
  %144 = load i8, ptr %fenc, align 1
  %conv.i205 = zext i8 %144 to i32
  %145 = load i8, ptr %pix3, align 1
  %conv7.i206 = zext i8 %145 to i32
  %sub.i207 = sub nsw i32 %conv.i205, %conv7.i206
  %146 = tail call i32 @llvm.abs.i32(i32 %sub.i207, i1 true)
  %147 = load i8, ptr %arrayidx.1.i, align 1
  %conv.1.i209 = zext i8 %147 to i32
  %arrayidx6.1.i210 = getelementptr inbounds i8, ptr %pix3, i64 1
  %148 = load i8, ptr %arrayidx6.1.i210, align 1
  %conv7.1.i211 = zext i8 %148 to i32
  %sub.1.i212 = sub nsw i32 %conv.1.i209, %conv7.1.i211
  %149 = tail call i32 @llvm.abs.i32(i32 %sub.1.i212, i1 true)
  %add.1.i213 = add nuw nsw i32 %149, %146
  %150 = load i8, ptr %arrayidx.2.i, align 1
  %conv.2.i215 = zext i8 %150 to i32
  %arrayidx6.2.i216 = getelementptr inbounds i8, ptr %pix3, i64 2
  %151 = load i8, ptr %arrayidx6.2.i216, align 1
  %conv7.2.i217 = zext i8 %151 to i32
  %sub.2.i218 = sub nsw i32 %conv.2.i215, %conv7.2.i217
  %152 = tail call i32 @llvm.abs.i32(i32 %sub.2.i218, i1 true)
  %add.2.i219 = add nuw nsw i32 %add.1.i213, %152
  %153 = load i8, ptr %arrayidx.3.i, align 1
  %conv.3.i221 = zext i8 %153 to i32
  %arrayidx6.3.i222 = getelementptr inbounds i8, ptr %pix3, i64 3
  %154 = load i8, ptr %arrayidx6.3.i222, align 1
  %conv7.3.i223 = zext i8 %154 to i32
  %sub.3.i224 = sub nsw i32 %conv.3.i221, %conv7.3.i223
  %155 = tail call i32 @llvm.abs.i32(i32 %sub.3.i224, i1 true)
  %add.3.i225 = add nuw nsw i32 %add.2.i219, %155
  %add.ptr9.i227 = getelementptr inbounds i8, ptr %pix3, i64 %idx.ext8.i
  %156 = load i8, ptr %add.ptr.i, align 1
  %conv.127.i228 = zext i8 %156 to i32
  %157 = load i8, ptr %add.ptr9.i227, align 1
  %conv7.128.i229 = zext i8 %157 to i32
  %sub.129.i230 = sub nsw i32 %conv.127.i228, %conv7.128.i229
  %158 = tail call i32 @llvm.abs.i32(i32 %sub.129.i230, i1 true)
  %add.130.i231 = add nuw nsw i32 %add.3.i225, %158
  %159 = load i8, ptr %arrayidx.1.1.i, align 1
  %conv.1.1.i233 = zext i8 %159 to i32
  %arrayidx6.1.1.i234 = getelementptr inbounds i8, ptr %add.ptr9.i227, i64 1
  %160 = load i8, ptr %arrayidx6.1.1.i234, align 1
  %conv7.1.1.i235 = zext i8 %160 to i32
  %sub.1.1.i236 = sub nsw i32 %conv.1.1.i233, %conv7.1.1.i235
  %161 = tail call i32 @llvm.abs.i32(i32 %sub.1.1.i236, i1 true)
  %add.1.1.i237 = add nuw nsw i32 %add.130.i231, %161
  %162 = load i8, ptr %arrayidx.2.1.i, align 1
  %conv.2.1.i239 = zext i8 %162 to i32
  %arrayidx6.2.1.i240 = getelementptr inbounds i8, ptr %add.ptr9.i227, i64 2
  %163 = load i8, ptr %arrayidx6.2.1.i240, align 1
  %conv7.2.1.i241 = zext i8 %163 to i32
  %sub.2.1.i242 = sub nsw i32 %conv.2.1.i239, %conv7.2.1.i241
  %164 = tail call i32 @llvm.abs.i32(i32 %sub.2.1.i242, i1 true)
  %add.2.1.i243 = add nuw nsw i32 %add.1.1.i237, %164
  %165 = load i8, ptr %arrayidx.3.1.i, align 1
  %conv.3.1.i245 = zext i8 %165 to i32
  %arrayidx6.3.1.i246 = getelementptr inbounds i8, ptr %add.ptr9.i227, i64 3
  %166 = load i8, ptr %arrayidx6.3.1.i246, align 1
  %conv7.3.1.i247 = zext i8 %166 to i32
  %sub.3.1.i248 = sub nsw i32 %conv.3.1.i245, %conv7.3.1.i247
  %167 = tail call i32 @llvm.abs.i32(i32 %sub.3.1.i248, i1 true)
  %add.3.1.i249 = add nuw nsw i32 %add.2.1.i243, %167
  %add.ptr9.1.i251 = getelementptr inbounds i8, ptr %add.ptr9.i227, i64 %idx.ext8.i
  %168 = load i8, ptr %add.ptr.1.i, align 1
  %conv.231.i252 = zext i8 %168 to i32
  %169 = load i8, ptr %add.ptr9.1.i251, align 1
  %conv7.232.i253 = zext i8 %169 to i32
  %sub.233.i254 = sub nsw i32 %conv.231.i252, %conv7.232.i253
  %170 = tail call i32 @llvm.abs.i32(i32 %sub.233.i254, i1 true)
  %add.234.i255 = add nuw nsw i32 %add.3.1.i249, %170
  %171 = load i8, ptr %arrayidx.1.2.i, align 1
  %conv.1.2.i257 = zext i8 %171 to i32
  %arrayidx6.1.2.i258 = getelementptr inbounds i8, ptr %add.ptr9.1.i251, i64 1
  %172 = load i8, ptr %arrayidx6.1.2.i258, align 1
  %conv7.1.2.i259 = zext i8 %172 to i32
  %sub.1.2.i260 = sub nsw i32 %conv.1.2.i257, %conv7.1.2.i259
  %173 = tail call i32 @llvm.abs.i32(i32 %sub.1.2.i260, i1 true)
  %add.1.2.i261 = add nuw nsw i32 %add.234.i255, %173
  %174 = load i8, ptr %arrayidx.2.2.i, align 1
  %conv.2.2.i263 = zext i8 %174 to i32
  %arrayidx6.2.2.i264 = getelementptr inbounds i8, ptr %add.ptr9.1.i251, i64 2
  %175 = load i8, ptr %arrayidx6.2.2.i264, align 1
  %conv7.2.2.i265 = zext i8 %175 to i32
  %sub.2.2.i266 = sub nsw i32 %conv.2.2.i263, %conv7.2.2.i265
  %176 = tail call i32 @llvm.abs.i32(i32 %sub.2.2.i266, i1 true)
  %add.2.2.i267 = add nuw nsw i32 %add.1.2.i261, %176
  %177 = load i8, ptr %arrayidx.3.2.i, align 1
  %conv.3.2.i269 = zext i8 %177 to i32
  %arrayidx6.3.2.i270 = getelementptr inbounds i8, ptr %add.ptr9.1.i251, i64 3
  %178 = load i8, ptr %arrayidx6.3.2.i270, align 1
  %conv7.3.2.i271 = zext i8 %178 to i32
  %sub.3.2.i272 = sub nsw i32 %conv.3.2.i269, %conv7.3.2.i271
  %179 = tail call i32 @llvm.abs.i32(i32 %sub.3.2.i272, i1 true)
  %add.3.2.i273 = add nuw nsw i32 %add.2.2.i267, %179
  %add.ptr9.2.i275 = getelementptr inbounds i8, ptr %add.ptr9.1.i251, i64 %idx.ext8.i
  %180 = load i8, ptr %add.ptr.2.i, align 1
  %conv.335.i276 = zext i8 %180 to i32
  %181 = load i8, ptr %add.ptr9.2.i275, align 1
  %conv7.336.i277 = zext i8 %181 to i32
  %sub.337.i278 = sub nsw i32 %conv.335.i276, %conv7.336.i277
  %182 = tail call i32 @llvm.abs.i32(i32 %sub.337.i278, i1 true)
  %add.338.i279 = add nuw nsw i32 %add.3.2.i273, %182
  %183 = load i8, ptr %arrayidx.1.3.i, align 1
  %conv.1.3.i281 = zext i8 %183 to i32
  %arrayidx6.1.3.i282 = getelementptr inbounds i8, ptr %add.ptr9.2.i275, i64 1
  %184 = load i8, ptr %arrayidx6.1.3.i282, align 1
  %conv7.1.3.i283 = zext i8 %184 to i32
  %sub.1.3.i284 = sub nsw i32 %conv.1.3.i281, %conv7.1.3.i283
  %185 = tail call i32 @llvm.abs.i32(i32 %sub.1.3.i284, i1 true)
  %add.1.3.i285 = add nuw nsw i32 %add.338.i279, %185
  %186 = load i8, ptr %arrayidx.2.3.i, align 1
  %conv.2.3.i287 = zext i8 %186 to i32
  %arrayidx6.2.3.i288 = getelementptr inbounds i8, ptr %add.ptr9.2.i275, i64 2
  %187 = load i8, ptr %arrayidx6.2.3.i288, align 1
  %conv7.2.3.i289 = zext i8 %187 to i32
  %sub.2.3.i290 = sub nsw i32 %conv.2.3.i287, %conv7.2.3.i289
  %188 = tail call i32 @llvm.abs.i32(i32 %sub.2.3.i290, i1 true)
  %add.2.3.i291 = add nuw nsw i32 %add.1.3.i285, %188
  %189 = load i8, ptr %arrayidx.3.3.i, align 1
  %conv.3.3.i293 = zext i8 %189 to i32
  %arrayidx6.3.3.i294 = getelementptr inbounds i8, ptr %add.ptr9.2.i275, i64 3
  %190 = load i8, ptr %arrayidx6.3.3.i294, align 1
  %conv7.3.3.i295 = zext i8 %190 to i32
  %sub.3.3.i296 = sub nsw i32 %conv.3.3.i293, %conv7.3.3.i295
  %191 = tail call i32 @llvm.abs.i32(i32 %sub.3.3.i296, i1 true)
  %add.3.3.i297 = add nuw nsw i32 %add.2.3.i291, %191
  %arrayidx6 = getelementptr inbounds i8, ptr %scores, i64 12
  store i32 %add.3.3.i297, ptr %arrayidx6, align 4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define internal i32 @x264_pixel_ssd_16x16(ptr nocapture noundef readonly %pix1, i32 noundef %i_stride_pix1, ptr nocapture noundef readonly %pix2, i32 noundef %i_stride_pix2) #4 {
entry:
  %idx.ext = sext i32 %i_stride_pix1 to i64
  %idx.ext8 = sext i32 %i_stride_pix2 to i64
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %entry, %for.cond1.preheader
  %pix1.addr.026 = phi ptr [ %pix1, %entry ], [ %add.ptr, %for.cond1.preheader ]
  %y.025 = phi i32 [ 0, %entry ], [ %inc11, %for.cond1.preheader ]
  %i_sum.024 = phi i32 [ 0, %entry ], [ %op.rdx, %for.cond1.preheader ]
  %pix2.addr.023 = phi ptr [ %pix2, %entry ], [ %add.ptr9, %for.cond1.preheader ]
  %0 = load <16 x i8>, ptr %pix1.addr.026, align 1
  %1 = zext <16 x i8> %0 to <16 x i32>
  %2 = load <16 x i8>, ptr %pix2.addr.023, align 1
  %3 = zext <16 x i8> %2 to <16 x i32>
  %4 = sub nsw <16 x i32> %1, %3
  %5 = mul nsw <16 x i32> %4, %4
  %6 = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %5)
  %op.rdx = add i32 %6, %i_sum.024
  %add.ptr = getelementptr inbounds i8, ptr %pix1.addr.026, i64 %idx.ext
  %add.ptr9 = getelementptr inbounds i8, ptr %pix2.addr.023, i64 %idx.ext8
  %inc11 = add nuw nsw i32 %y.025, 1
  %exitcond.not = icmp eq i32 %inc11, 16
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.cond1.preheader

for.cond.cleanup:                                 ; preds = %for.cond1.preheader
  ret i32 %op.rdx
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define internal i32 @x264_pixel_ssd_16x8(ptr nocapture noundef readonly %pix1, i32 noundef %i_stride_pix1, ptr nocapture noundef readonly %pix2, i32 noundef %i_stride_pix2) #4 {
entry:
  %idx.ext = sext i32 %i_stride_pix1 to i64
  %idx.ext8 = sext i32 %i_stride_pix2 to i64
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %entry, %for.cond1.preheader
  %pix1.addr.026 = phi ptr [ %pix1, %entry ], [ %add.ptr, %for.cond1.preheader ]
  %y.025 = phi i32 [ 0, %entry ], [ %inc11, %for.cond1.preheader ]
  %i_sum.024 = phi i32 [ 0, %entry ], [ %op.rdx, %for.cond1.preheader ]
  %pix2.addr.023 = phi ptr [ %pix2, %entry ], [ %add.ptr9, %for.cond1.preheader ]
  %0 = load <16 x i8>, ptr %pix1.addr.026, align 1
  %1 = zext <16 x i8> %0 to <16 x i32>
  %2 = load <16 x i8>, ptr %pix2.addr.023, align 1
  %3 = zext <16 x i8> %2 to <16 x i32>
  %4 = sub nsw <16 x i32> %1, %3
  %5 = mul nsw <16 x i32> %4, %4
  %6 = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %5)
  %op.rdx = add i32 %6, %i_sum.024
  %add.ptr = getelementptr inbounds i8, ptr %pix1.addr.026, i64 %idx.ext
  %add.ptr9 = getelementptr inbounds i8, ptr %pix2.addr.023, i64 %idx.ext8
  %inc11 = add nuw nsw i32 %y.025, 1
  %exitcond.not = icmp eq i32 %inc11, 8
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.cond1.preheader

for.cond.cleanup:                                 ; preds = %for.cond1.preheader
  ret i32 %op.rdx
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define internal i32 @x264_pixel_ssd_8x16(ptr nocapture noundef readonly %pix1, i32 noundef %i_stride_pix1, ptr nocapture noundef readonly %pix2, i32 noundef %i_stride_pix2) #4 {
entry:
  %idx.ext = sext i32 %i_stride_pix1 to i64
  %idx.ext8 = sext i32 %i_stride_pix2 to i64
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %entry, %for.cond1.preheader
  %pix1.addr.026 = phi ptr [ %pix1, %entry ], [ %add.ptr, %for.cond1.preheader ]
  %y.025 = phi i32 [ 0, %entry ], [ %inc11, %for.cond1.preheader ]
  %i_sum.024 = phi i32 [ 0, %entry ], [ %op.rdx, %for.cond1.preheader ]
  %pix2.addr.023 = phi ptr [ %pix2, %entry ], [ %add.ptr9, %for.cond1.preheader ]
  %0 = load <8 x i8>, ptr %pix1.addr.026, align 1
  %1 = zext <8 x i8> %0 to <8 x i32>
  %2 = load <8 x i8>, ptr %pix2.addr.023, align 1
  %3 = zext <8 x i8> %2 to <8 x i32>
  %4 = sub nsw <8 x i32> %1, %3
  %5 = mul nsw <8 x i32> %4, %4
  %6 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %5)
  %op.rdx = add i32 %6, %i_sum.024
  %add.ptr = getelementptr inbounds i8, ptr %pix1.addr.026, i64 %idx.ext
  %add.ptr9 = getelementptr inbounds i8, ptr %pix2.addr.023, i64 %idx.ext8
  %inc11 = add nuw nsw i32 %y.025, 1
  %exitcond.not = icmp eq i32 %inc11, 16
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.cond1.preheader

for.cond.cleanup:                                 ; preds = %for.cond1.preheader
  ret i32 %op.rdx
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define internal i32 @x264_pixel_ssd_8x8(ptr nocapture noundef readonly %pix1, i32 noundef %i_stride_pix1, ptr nocapture noundef readonly %pix2, i32 noundef %i_stride_pix2) #4 {
entry:
  %idx.ext8 = sext i32 %i_stride_pix2 to i64
  %idx.ext = sext i32 %i_stride_pix1 to i64
  %0 = load <8 x i8>, ptr %pix1, align 1
  %1 = zext <8 x i8> %0 to <8 x i32>
  %2 = load <8 x i8>, ptr %pix2, align 1
  %3 = zext <8 x i8> %2 to <8 x i32>
  %4 = sub nsw <8 x i32> %1, %3
  %5 = mul nsw <8 x i32> %4, %4
  %6 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %5)
  %add.ptr = getelementptr inbounds i8, ptr %pix1, i64 %idx.ext
  %add.ptr9 = getelementptr inbounds i8, ptr %pix2, i64 %idx.ext8
  %7 = load <8 x i8>, ptr %add.ptr, align 1
  %8 = zext <8 x i8> %7 to <8 x i32>
  %9 = load <8 x i8>, ptr %add.ptr9, align 1
  %10 = zext <8 x i8> %9 to <8 x i32>
  %11 = sub nsw <8 x i32> %8, %10
  %12 = mul nsw <8 x i32> %11, %11
  %13 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %12)
  %op.rdx.1 = add i32 %13, %6
  %add.ptr.1 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.ext
  %add.ptr9.1 = getelementptr inbounds i8, ptr %add.ptr9, i64 %idx.ext8
  %14 = load <8 x i8>, ptr %add.ptr.1, align 1
  %15 = zext <8 x i8> %14 to <8 x i32>
  %16 = load <8 x i8>, ptr %add.ptr9.1, align 1
  %17 = zext <8 x i8> %16 to <8 x i32>
  %18 = sub nsw <8 x i32> %15, %17
  %19 = mul nsw <8 x i32> %18, %18
  %20 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %19)
  %op.rdx.2 = add i32 %20, %op.rdx.1
  %add.ptr.2 = getelementptr inbounds i8, ptr %add.ptr.1, i64 %idx.ext
  %add.ptr9.2 = getelementptr inbounds i8, ptr %add.ptr9.1, i64 %idx.ext8
  %21 = load <8 x i8>, ptr %add.ptr.2, align 1
  %22 = zext <8 x i8> %21 to <8 x i32>
  %23 = load <8 x i8>, ptr %add.ptr9.2, align 1
  %24 = zext <8 x i8> %23 to <8 x i32>
  %25 = sub nsw <8 x i32> %22, %24
  %26 = mul nsw <8 x i32> %25, %25
  %27 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %26)
  %op.rdx.3 = add i32 %27, %op.rdx.2
  %add.ptr.3 = getelementptr inbounds i8, ptr %add.ptr.2, i64 %idx.ext
  %add.ptr9.3 = getelementptr inbounds i8, ptr %add.ptr9.2, i64 %idx.ext8
  %28 = load <8 x i8>, ptr %add.ptr.3, align 1
  %29 = zext <8 x i8> %28 to <8 x i32>
  %30 = load <8 x i8>, ptr %add.ptr9.3, align 1
  %31 = zext <8 x i8> %30 to <8 x i32>
  %32 = sub nsw <8 x i32> %29, %31
  %33 = mul nsw <8 x i32> %32, %32
  %34 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %33)
  %op.rdx.4 = add i32 %34, %op.rdx.3
  %add.ptr.4 = getelementptr inbounds i8, ptr %add.ptr.3, i64 %idx.ext
  %add.ptr9.4 = getelementptr inbounds i8, ptr %add.ptr9.3, i64 %idx.ext8
  %35 = load <8 x i8>, ptr %add.ptr.4, align 1
  %36 = zext <8 x i8> %35 to <8 x i32>
  %37 = load <8 x i8>, ptr %add.ptr9.4, align 1
  %38 = zext <8 x i8> %37 to <8 x i32>
  %39 = sub nsw <8 x i32> %36, %38
  %40 = mul nsw <8 x i32> %39, %39
  %41 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %40)
  %op.rdx.5 = add i32 %41, %op.rdx.4
  %add.ptr.5 = getelementptr inbounds i8, ptr %add.ptr.4, i64 %idx.ext
  %add.ptr9.5 = getelementptr inbounds i8, ptr %add.ptr9.4, i64 %idx.ext8
  %42 = load <8 x i8>, ptr %add.ptr.5, align 1
  %43 = zext <8 x i8> %42 to <8 x i32>
  %44 = load <8 x i8>, ptr %add.ptr9.5, align 1
  %45 = zext <8 x i8> %44 to <8 x i32>
  %46 = sub nsw <8 x i32> %43, %45
  %47 = mul nsw <8 x i32> %46, %46
  %48 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %47)
  %op.rdx.6 = add i32 %48, %op.rdx.5
  %add.ptr.6 = getelementptr inbounds i8, ptr %add.ptr.5, i64 %idx.ext
  %add.ptr9.6 = getelementptr inbounds i8, ptr %add.ptr9.5, i64 %idx.ext8
  %49 = load <8 x i8>, ptr %add.ptr.6, align 1
  %50 = zext <8 x i8> %49 to <8 x i32>
  %51 = load <8 x i8>, ptr %add.ptr9.6, align 1
  %52 = zext <8 x i8> %51 to <8 x i32>
  %53 = sub nsw <8 x i32> %50, %52
  %54 = mul nsw <8 x i32> %53, %53
  %55 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %54)
  %op.rdx.7 = add i32 %55, %op.rdx.6
  ret i32 %op.rdx.7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @x264_pixel_ssd_8x4(ptr nocapture noundef readonly %pix1, i32 noundef %i_stride_pix1, ptr nocapture noundef readonly %pix2, i32 noundef %i_stride_pix2) #5 {
entry:
  %idx.ext = sext i32 %i_stride_pix1 to i64
  %idx.ext8 = sext i32 %i_stride_pix2 to i64
  %0 = load <8 x i8>, ptr %pix1, align 1
  %1 = zext <8 x i8> %0 to <8 x i32>
  %2 = load <8 x i8>, ptr %pix2, align 1
  %3 = zext <8 x i8> %2 to <8 x i32>
  %4 = sub nsw <8 x i32> %1, %3
  %5 = mul nsw <8 x i32> %4, %4
  %add.ptr = getelementptr inbounds i8, ptr %pix1, i64 %idx.ext
  %add.ptr9 = getelementptr inbounds i8, ptr %pix2, i64 %idx.ext8
  %6 = load <8 x i8>, ptr %add.ptr, align 1
  %7 = zext <8 x i8> %6 to <8 x i32>
  %8 = load <8 x i8>, ptr %add.ptr9, align 1
  %9 = zext <8 x i8> %8 to <8 x i32>
  %10 = sub nsw <8 x i32> %7, %9
  %11 = mul nsw <8 x i32> %10, %10
  %add.ptr.1 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.ext
  %add.ptr9.1 = getelementptr inbounds i8, ptr %add.ptr9, i64 %idx.ext8
  %12 = load <8 x i8>, ptr %add.ptr.1, align 1
  %13 = zext <8 x i8> %12 to <8 x i32>
  %14 = load <8 x i8>, ptr %add.ptr9.1, align 1
  %15 = zext <8 x i8> %14 to <8 x i32>
  %16 = sub nsw <8 x i32> %13, %15
  %17 = mul nsw <8 x i32> %16, %16
  %add.ptr.2 = getelementptr inbounds i8, ptr %add.ptr.1, i64 %idx.ext
  %add.ptr9.2 = getelementptr inbounds i8, ptr %add.ptr9.1, i64 %idx.ext8
  %18 = load <8 x i8>, ptr %add.ptr.2, align 1
  %19 = zext <8 x i8> %18 to <8 x i32>
  %20 = load <8 x i8>, ptr %add.ptr9.2, align 1
  %21 = zext <8 x i8> %20 to <8 x i32>
  %22 = sub nsw <8 x i32> %19, %21
  %23 = mul nsw <8 x i32> %22, %22
  %24 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %5)
  %25 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %11)
  %op.rdx = add i32 %24, %25
  %26 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %17)
  %op.rdx43 = add i32 %op.rdx, %26
  %27 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %23)
  %op.rdx44 = add i32 %op.rdx43, %27
  ret i32 %op.rdx44
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @x264_pixel_ssd_4x8(ptr nocapture noundef readonly %pix1, i32 noundef %i_stride_pix1, ptr nocapture noundef readonly %pix2, i32 noundef %i_stride_pix2) #6 {
entry:
  %idx.ext = sext i32 %i_stride_pix1 to i64
  %idx.ext8 = sext i32 %i_stride_pix2 to i64
  %0 = load <4 x i8>, ptr %pix1, align 1
  %1 = zext <4 x i8> %0 to <4 x i32>
  %2 = load <4 x i8>, ptr %pix2, align 1
  %3 = zext <4 x i8> %2 to <4 x i32>
  %4 = sub nsw <4 x i32> %1, %3
  %5 = mul nsw <4 x i32> %4, %4
  %add.ptr = getelementptr inbounds i8, ptr %pix1, i64 %idx.ext
  %add.ptr9 = getelementptr inbounds i8, ptr %pix2, i64 %idx.ext8
  %6 = load <4 x i8>, ptr %add.ptr, align 1
  %7 = zext <4 x i8> %6 to <4 x i32>
  %8 = load <4 x i8>, ptr %add.ptr9, align 1
  %9 = zext <4 x i8> %8 to <4 x i32>
  %10 = sub nsw <4 x i32> %7, %9
  %11 = mul nsw <4 x i32> %10, %10
  %add.ptr.1 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.ext
  %add.ptr9.1 = getelementptr inbounds i8, ptr %add.ptr9, i64 %idx.ext8
  %12 = load <4 x i8>, ptr %add.ptr.1, align 1
  %13 = zext <4 x i8> %12 to <4 x i32>
  %14 = load <4 x i8>, ptr %add.ptr9.1, align 1
  %15 = zext <4 x i8> %14 to <4 x i32>
  %16 = sub nsw <4 x i32> %13, %15
  %17 = mul nsw <4 x i32> %16, %16
  %add.ptr.2 = getelementptr inbounds i8, ptr %add.ptr.1, i64 %idx.ext
  %add.ptr9.2 = getelementptr inbounds i8, ptr %add.ptr9.1, i64 %idx.ext8
  %18 = load <4 x i8>, ptr %add.ptr.2, align 1
  %19 = zext <4 x i8> %18 to <4 x i32>
  %20 = load <4 x i8>, ptr %add.ptr9.2, align 1
  %21 = zext <4 x i8> %20 to <4 x i32>
  %22 = sub nsw <4 x i32> %19, %21
  %23 = mul nsw <4 x i32> %22, %22
  %add.ptr.3 = getelementptr inbounds i8, ptr %add.ptr.2, i64 %idx.ext
  %add.ptr9.3 = getelementptr inbounds i8, ptr %add.ptr9.2, i64 %idx.ext8
  %24 = load <4 x i8>, ptr %add.ptr.3, align 1
  %25 = zext <4 x i8> %24 to <4 x i32>
  %26 = load <4 x i8>, ptr %add.ptr9.3, align 1
  %27 = zext <4 x i8> %26 to <4 x i32>
  %28 = sub nsw <4 x i32> %25, %27
  %29 = mul nsw <4 x i32> %28, %28
  %add.ptr.4 = getelementptr inbounds i8, ptr %add.ptr.3, i64 %idx.ext
  %add.ptr9.4 = getelementptr inbounds i8, ptr %add.ptr9.3, i64 %idx.ext8
  %30 = load <4 x i8>, ptr %add.ptr.4, align 1
  %31 = zext <4 x i8> %30 to <4 x i32>
  %32 = load <4 x i8>, ptr %add.ptr9.4, align 1
  %33 = zext <4 x i8> %32 to <4 x i32>
  %34 = sub nsw <4 x i32> %31, %33
  %35 = mul nsw <4 x i32> %34, %34
  %add.ptr.5 = getelementptr inbounds i8, ptr %add.ptr.4, i64 %idx.ext
  %add.ptr9.5 = getelementptr inbounds i8, ptr %add.ptr9.4, i64 %idx.ext8
  %36 = load <4 x i8>, ptr %add.ptr.5, align 1
  %37 = zext <4 x i8> %36 to <4 x i32>
  %38 = load <4 x i8>, ptr %add.ptr9.5, align 1
  %39 = zext <4 x i8> %38 to <4 x i32>
  %40 = sub nsw <4 x i32> %37, %39
  %41 = mul nsw <4 x i32> %40, %40
  %add.ptr.6 = getelementptr inbounds i8, ptr %add.ptr.5, i64 %idx.ext
  %add.ptr9.6 = getelementptr inbounds i8, ptr %add.ptr9.5, i64 %idx.ext8
  %42 = load <4 x i8>, ptr %add.ptr.6, align 1
  %43 = zext <4 x i8> %42 to <4 x i32>
  %44 = load <4 x i8>, ptr %add.ptr9.6, align 1
  %45 = zext <4 x i8> %44 to <4 x i32>
  %46 = sub nsw <4 x i32> %43, %45
  %47 = mul nsw <4 x i32> %46, %46
  %48 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %5)
  %49 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %11)
  %op.rdx = add i32 %48, %49
  %50 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %17)
  %op.rdx43 = add i32 %op.rdx, %50
  %51 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %23)
  %op.rdx44 = add i32 %op.rdx43, %51
  %52 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %29)
  %op.rdx45 = add i32 %op.rdx44, %52
  %53 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %35)
  %op.rdx46 = add i32 %op.rdx45, %53
  %54 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %41)
  %op.rdx47 = add i32 %op.rdx46, %54
  %55 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %47)
  %op.rdx48 = add i32 %op.rdx47, %55
  ret i32 %op.rdx48
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @x264_pixel_ssd_4x4(ptr nocapture noundef readonly %pix1, i32 noundef %i_stride_pix1, ptr nocapture noundef readonly %pix2, i32 noundef %i_stride_pix2) #5 {
entry:
  %idx.ext = sext i32 %i_stride_pix1 to i64
  %idx.ext8 = sext i32 %i_stride_pix2 to i64
  %0 = load <4 x i8>, ptr %pix1, align 1
  %1 = zext <4 x i8> %0 to <4 x i32>
  %2 = load <4 x i8>, ptr %pix2, align 1
  %3 = zext <4 x i8> %2 to <4 x i32>
  %4 = sub nsw <4 x i32> %1, %3
  %5 = mul nsw <4 x i32> %4, %4
  %add.ptr = getelementptr inbounds i8, ptr %pix1, i64 %idx.ext
  %add.ptr9 = getelementptr inbounds i8, ptr %pix2, i64 %idx.ext8
  %6 = load <4 x i8>, ptr %add.ptr, align 1
  %7 = zext <4 x i8> %6 to <4 x i32>
  %8 = load <4 x i8>, ptr %add.ptr9, align 1
  %9 = zext <4 x i8> %8 to <4 x i32>
  %10 = sub nsw <4 x i32> %7, %9
  %11 = mul nsw <4 x i32> %10, %10
  %add.ptr.1 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.ext
  %add.ptr9.1 = getelementptr inbounds i8, ptr %add.ptr9, i64 %idx.ext8
  %12 = load <4 x i8>, ptr %add.ptr.1, align 1
  %13 = zext <4 x i8> %12 to <4 x i32>
  %14 = load <4 x i8>, ptr %add.ptr9.1, align 1
  %15 = zext <4 x i8> %14 to <4 x i32>
  %16 = sub nsw <4 x i32> %13, %15
  %17 = mul nsw <4 x i32> %16, %16
  %add.ptr.2 = getelementptr inbounds i8, ptr %add.ptr.1, i64 %idx.ext
  %add.ptr9.2 = getelementptr inbounds i8, ptr %add.ptr9.1, i64 %idx.ext8
  %18 = load <4 x i8>, ptr %add.ptr.2, align 1
  %19 = zext <4 x i8> %18 to <4 x i32>
  %20 = load <4 x i8>, ptr %add.ptr9.2, align 1
  %21 = zext <4 x i8> %20 to <4 x i32>
  %22 = sub nsw <4 x i32> %19, %21
  %23 = mul nsw <4 x i32> %22, %22
  %24 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %5)
  %25 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %11)
  %op.rdx = add i32 %24, %25
  %26 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %17)
  %op.rdx43 = add i32 %op.rdx, %26
  %27 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %23)
  %op.rdx44 = add i32 %op.rdx43, %27
  ret i32 %op.rdx44
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 0, 524281) i32 @x264_pixel_satd_16x16(ptr nocapture noundef readonly %pix1, i32 noundef %i_pix1, ptr nocapture noundef readonly %pix2, i32 noundef %i_pix2) #5 {
entry:
  %call = tail call i32 @x264_pixel_satd_8x4(ptr noundef %pix1, i32 noundef %i_pix1, ptr noundef %pix2, i32 noundef %i_pix2)
  %mul = shl nsw i32 %i_pix1, 2
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, ptr %pix1, i64 %idx.ext
  %mul1 = shl nsw i32 %i_pix2, 2
  %idx.ext2 = sext i32 %mul1 to i64
  %add.ptr3 = getelementptr inbounds i8, ptr %pix2, i64 %idx.ext2
  %call4 = tail call i32 @x264_pixel_satd_8x4(ptr noundef %add.ptr, i32 noundef %i_pix1, ptr noundef %add.ptr3, i32 noundef %i_pix2)
  %add.ptr5 = getelementptr inbounds i8, ptr %pix1, i64 8
  %add.ptr6 = getelementptr inbounds i8, ptr %pix2, i64 8
  %call7 = tail call i32 @x264_pixel_satd_8x4(ptr noundef nonnull %add.ptr5, i32 noundef %i_pix1, ptr noundef nonnull %add.ptr6, i32 noundef %i_pix2)
  %add.ptr11 = getelementptr inbounds i8, ptr %add.ptr5, i64 %idx.ext
  %add.ptr15 = getelementptr inbounds i8, ptr %add.ptr6, i64 %idx.ext2
  %call16 = tail call i32 @x264_pixel_satd_8x4(ptr noundef nonnull %add.ptr11, i32 noundef %i_pix1, ptr noundef nonnull %add.ptr15, i32 noundef %i_pix2)
  %mul19 = shl nsw i32 %i_pix1, 3
  %idx.ext20 = sext i32 %mul19 to i64
  %add.ptr21 = getelementptr inbounds i8, ptr %pix1, i64 %idx.ext20
  %mul22 = shl nsw i32 %i_pix2, 3
  %idx.ext23 = sext i32 %mul22 to i64
  %add.ptr24 = getelementptr inbounds i8, ptr %pix2, i64 %idx.ext23
  %call25 = tail call i32 @x264_pixel_satd_8x4(ptr noundef %add.ptr21, i32 noundef %i_pix1, ptr noundef %add.ptr24, i32 noundef %i_pix2)
  %mul26 = mul nsw i32 %i_pix1, 12
  %idx.ext27 = sext i32 %mul26 to i64
  %add.ptr28 = getelementptr inbounds i8, ptr %pix1, i64 %idx.ext27
  %mul29 = mul nsw i32 %i_pix2, 12
  %idx.ext30 = sext i32 %mul29 to i64
  %add.ptr31 = getelementptr inbounds i8, ptr %pix2, i64 %idx.ext30
  %call32 = tail call i32 @x264_pixel_satd_8x4(ptr noundef %add.ptr28, i32 noundef %i_pix1, ptr noundef %add.ptr31, i32 noundef %i_pix2)
  %add.ptr38 = getelementptr inbounds i8, ptr %add.ptr5, i64 %idx.ext20
  %add.ptr42 = getelementptr inbounds i8, ptr %add.ptr6, i64 %idx.ext23
  %call43 = tail call i32 @x264_pixel_satd_8x4(ptr noundef nonnull %add.ptr38, i32 noundef %i_pix1, ptr noundef nonnull %add.ptr42, i32 noundef %i_pix2)
  %add.ptr47 = getelementptr inbounds i8, ptr %add.ptr5, i64 %idx.ext27
  %add.ptr51 = getelementptr inbounds i8, ptr %add.ptr6, i64 %idx.ext30
  %call52 = tail call i32 @x264_pixel_satd_8x4(ptr noundef nonnull %add.ptr47, i32 noundef %i_pix1, ptr noundef nonnull %add.ptr51, i32 noundef %i_pix2)
  %add53 = add nuw nsw i32 %call4, %call
  %add33 = add nuw nsw i32 %add53, %call7
  %add17 = add nuw nsw i32 %add33, %call16
  %add = add nuw nsw i32 %add17, %call25
  %add18 = add nuw nsw i32 %add, %call32
  %add34 = add nuw nsw i32 %add18, %call43
  %add54 = add nuw nsw i32 %add34, %call52
  ret i32 %add54
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 0, 262141) i32 @x264_pixel_satd_16x8(ptr nocapture noundef readonly %pix1, i32 noundef %i_pix1, ptr nocapture noundef readonly %pix2, i32 noundef %i_pix2) #5 {
entry:
  %call = tail call i32 @x264_pixel_satd_8x4(ptr noundef %pix1, i32 noundef %i_pix1, ptr noundef %pix2, i32 noundef %i_pix2)
  %mul = shl nsw i32 %i_pix1, 2
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, ptr %pix1, i64 %idx.ext
  %mul1 = shl nsw i32 %i_pix2, 2
  %idx.ext2 = sext i32 %mul1 to i64
  %add.ptr3 = getelementptr inbounds i8, ptr %pix2, i64 %idx.ext2
  %call4 = tail call i32 @x264_pixel_satd_8x4(ptr noundef %add.ptr, i32 noundef %i_pix1, ptr noundef %add.ptr3, i32 noundef %i_pix2)
  %add.ptr5 = getelementptr inbounds i8, ptr %pix1, i64 8
  %add.ptr6 = getelementptr inbounds i8, ptr %pix2, i64 8
  %call7 = tail call i32 @x264_pixel_satd_8x4(ptr noundef nonnull %add.ptr5, i32 noundef %i_pix1, ptr noundef nonnull %add.ptr6, i32 noundef %i_pix2)
  %add.ptr11 = getelementptr inbounds i8, ptr %add.ptr5, i64 %idx.ext
  %add.ptr15 = getelementptr inbounds i8, ptr %add.ptr6, i64 %idx.ext2
  %call16 = tail call i32 @x264_pixel_satd_8x4(ptr noundef nonnull %add.ptr11, i32 noundef %i_pix1, ptr noundef nonnull %add.ptr15, i32 noundef %i_pix2)
  %add17 = add nuw nsw i32 %call4, %call
  %add = add nuw nsw i32 %add17, %call7
  %add18 = add nuw nsw i32 %add, %call16
  ret i32 %add18
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 0, 262141) i32 @x264_pixel_satd_8x16(ptr nocapture noundef readonly %pix1, i32 noundef %i_pix1, ptr nocapture noundef readonly %pix2, i32 noundef %i_pix2) #5 {
entry:
  %call = tail call i32 @x264_pixel_satd_8x4(ptr noundef %pix1, i32 noundef %i_pix1, ptr noundef %pix2, i32 noundef %i_pix2)
  %mul = shl nsw i32 %i_pix1, 2
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, ptr %pix1, i64 %idx.ext
  %mul1 = shl nsw i32 %i_pix2, 2
  %idx.ext2 = sext i32 %mul1 to i64
  %add.ptr3 = getelementptr inbounds i8, ptr %pix2, i64 %idx.ext2
  %call4 = tail call i32 @x264_pixel_satd_8x4(ptr noundef %add.ptr, i32 noundef %i_pix1, ptr noundef %add.ptr3, i32 noundef %i_pix2)
  %mul5 = shl nsw i32 %i_pix1, 3
  %idx.ext6 = sext i32 %mul5 to i64
  %add.ptr7 = getelementptr inbounds i8, ptr %pix1, i64 %idx.ext6
  %mul8 = shl nsw i32 %i_pix2, 3
  %idx.ext9 = sext i32 %mul8 to i64
  %add.ptr10 = getelementptr inbounds i8, ptr %pix2, i64 %idx.ext9
  %call11 = tail call i32 @x264_pixel_satd_8x4(ptr noundef %add.ptr7, i32 noundef %i_pix1, ptr noundef %add.ptr10, i32 noundef %i_pix2)
  %mul12 = mul nsw i32 %i_pix1, 12
  %idx.ext13 = sext i32 %mul12 to i64
  %add.ptr14 = getelementptr inbounds i8, ptr %pix1, i64 %idx.ext13
  %mul15 = mul nsw i32 %i_pix2, 12
  %idx.ext16 = sext i32 %mul15 to i64
  %add.ptr17 = getelementptr inbounds i8, ptr %pix2, i64 %idx.ext16
  %call18 = tail call i32 @x264_pixel_satd_8x4(ptr noundef %add.ptr14, i32 noundef %i_pix1, ptr noundef %add.ptr17, i32 noundef %i_pix2)
  %add19 = add nuw nsw i32 %call4, %call
  %add = add nuw nsw i32 %add19, %call11
  %add20 = add nuw nsw i32 %add, %call18
  ret i32 %add20
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 0, 131071) i32 @x264_pixel_satd_8x8(ptr nocapture noundef readonly %pix1, i32 noundef %i_pix1, ptr nocapture noundef readonly %pix2, i32 noundef %i_pix2) #5 {
entry:
  %call = tail call i32 @x264_pixel_satd_8x4(ptr noundef %pix1, i32 noundef %i_pix1, ptr noundef %pix2, i32 noundef %i_pix2)
  %mul = shl nsw i32 %i_pix1, 2
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, ptr %pix1, i64 %idx.ext
  %mul1 = shl nsw i32 %i_pix2, 2
  %idx.ext2 = sext i32 %mul1 to i64
  %add.ptr3 = getelementptr inbounds i8, ptr %pix2, i64 %idx.ext2
  %call4 = tail call i32 @x264_pixel_satd_8x4(ptr noundef %add.ptr, i32 noundef %i_pix1, ptr noundef %add.ptr3, i32 noundef %i_pix2)
  %add = add nuw nsw i32 %call4, %call
  ret i32 %add
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 0, 65536) i32 @x264_pixel_satd_8x4(ptr nocapture noundef readonly %pix1, i32 noundef %i_pix1, ptr nocapture noundef readonly %pix2, i32 noundef %i_pix2) #5 {
entry:
  %idx.ext = sext i32 %i_pix1 to i64
  %idx.ext63 = sext i32 %i_pix2 to i64
  %0 = load i8, ptr %pix1, align 1
  %conv = zext i8 %0 to i32
  %1 = load i8, ptr %pix2, align 1
  %conv2 = zext i8 %1 to i32
  %sub = sub nsw i32 %conv, %conv2
  %arrayidx3 = getelementptr inbounds i8, ptr %pix1, i64 4
  %2 = load i8, ptr %arrayidx3, align 1
  %conv4 = zext i8 %2 to i32
  %arrayidx5 = getelementptr inbounds i8, ptr %pix2, i64 4
  %3 = load i8, ptr %arrayidx5, align 1
  %conv6 = zext i8 %3 to i32
  %sub7 = sub nsw i32 %conv4, %conv6
  %shl = shl nsw i32 %sub7, 16
  %add = add nsw i32 %shl, %sub
  %arrayidx8 = getelementptr inbounds i8, ptr %pix1, i64 1
  %4 = load i8, ptr %arrayidx8, align 1
  %conv9 = zext i8 %4 to i32
  %arrayidx10 = getelementptr inbounds i8, ptr %pix2, i64 1
  %5 = load i8, ptr %arrayidx10, align 1
  %conv11 = zext i8 %5 to i32
  %sub12 = sub nsw i32 %conv9, %conv11
  %arrayidx13 = getelementptr inbounds i8, ptr %pix1, i64 5
  %6 = load i8, ptr %arrayidx13, align 1
  %conv14 = zext i8 %6 to i32
  %arrayidx15 = getelementptr inbounds i8, ptr %pix2, i64 5
  %7 = load i8, ptr %arrayidx15, align 1
  %conv16 = zext i8 %7 to i32
  %sub17 = sub nsw i32 %conv14, %conv16
  %shl18 = shl nsw i32 %sub17, 16
  %add19 = add nsw i32 %shl18, %sub12
  %arrayidx20 = getelementptr inbounds i8, ptr %pix1, i64 2
  %8 = load i8, ptr %arrayidx20, align 1
  %conv21 = zext i8 %8 to i32
  %arrayidx22 = getelementptr inbounds i8, ptr %pix2, i64 2
  %9 = load i8, ptr %arrayidx22, align 1
  %conv23 = zext i8 %9 to i32
  %sub24 = sub nsw i32 %conv21, %conv23
  %arrayidx25 = getelementptr inbounds i8, ptr %pix1, i64 6
  %10 = load i8, ptr %arrayidx25, align 1
  %conv26 = zext i8 %10 to i32
  %arrayidx27 = getelementptr inbounds i8, ptr %pix2, i64 6
  %11 = load i8, ptr %arrayidx27, align 1
  %conv28 = zext i8 %11 to i32
  %sub29 = sub nsw i32 %conv26, %conv28
  %shl30 = shl nsw i32 %sub29, 16
  %add31 = add nsw i32 %shl30, %sub24
  %arrayidx32 = getelementptr inbounds i8, ptr %pix1, i64 3
  %12 = load i8, ptr %arrayidx32, align 1
  %conv33 = zext i8 %12 to i32
  %arrayidx34 = getelementptr inbounds i8, ptr %pix2, i64 3
  %13 = load i8, ptr %arrayidx34, align 1
  %conv35 = zext i8 %13 to i32
  %sub36 = sub nsw i32 %conv33, %conv35
  %arrayidx37 = getelementptr inbounds i8, ptr %pix1, i64 7
  %14 = load i8, ptr %arrayidx37, align 1
  %conv38 = zext i8 %14 to i32
  %arrayidx39 = getelementptr inbounds i8, ptr %pix2, i64 7
  %15 = load i8, ptr %arrayidx39, align 1
  %conv40 = zext i8 %15 to i32
  %sub41 = sub nsw i32 %conv38, %conv40
  %shl42 = shl nsw i32 %sub41, 16
  %add43 = add nsw i32 %shl42, %sub36
  %add44 = add nsw i32 %add19, %add
  %sub45 = sub nsw i32 %add, %add19
  %add46 = add nsw i32 %add43, %add31
  %sub47 = sub nsw i32 %add31, %add43
  %add48 = add nsw i32 %add46, %add44
  %sub51 = sub nsw i32 %add44, %add46
  %add55 = add nsw i32 %sub47, %sub45
  %sub59 = sub nsw i32 %sub45, %sub47
  %add.ptr = getelementptr inbounds i8, ptr %pix1, i64 %idx.ext
  %add.ptr64 = getelementptr inbounds i8, ptr %pix2, i64 %idx.ext63
  %16 = load i8, ptr %add.ptr, align 1
  %conv.1 = zext i8 %16 to i32
  %17 = load i8, ptr %add.ptr64, align 1
  %conv2.1 = zext i8 %17 to i32
  %sub.1 = sub nsw i32 %conv.1, %conv2.1
  %arrayidx3.1 = getelementptr inbounds i8, ptr %add.ptr, i64 4
  %18 = load i8, ptr %arrayidx3.1, align 1
  %conv4.1 = zext i8 %18 to i32
  %arrayidx5.1 = getelementptr inbounds i8, ptr %add.ptr64, i64 4
  %19 = load i8, ptr %arrayidx5.1, align 1
  %conv6.1 = zext i8 %19 to i32
  %sub7.1 = sub nsw i32 %conv4.1, %conv6.1
  %shl.1 = shl nsw i32 %sub7.1, 16
  %add.1 = add nsw i32 %shl.1, %sub.1
  %arrayidx8.1 = getelementptr inbounds i8, ptr %add.ptr, i64 1
  %20 = load i8, ptr %arrayidx8.1, align 1
  %conv9.1 = zext i8 %20 to i32
  %arrayidx10.1 = getelementptr inbounds i8, ptr %add.ptr64, i64 1
  %21 = load i8, ptr %arrayidx10.1, align 1
  %conv11.1 = zext i8 %21 to i32
  %sub12.1 = sub nsw i32 %conv9.1, %conv11.1
  %arrayidx13.1 = getelementptr inbounds i8, ptr %add.ptr, i64 5
  %22 = load i8, ptr %arrayidx13.1, align 1
  %conv14.1 = zext i8 %22 to i32
  %arrayidx15.1 = getelementptr inbounds i8, ptr %add.ptr64, i64 5
  %23 = load i8, ptr %arrayidx15.1, align 1
  %conv16.1 = zext i8 %23 to i32
  %sub17.1 = sub nsw i32 %conv14.1, %conv16.1
  %shl18.1 = shl nsw i32 %sub17.1, 16
  %add19.1 = add nsw i32 %shl18.1, %sub12.1
  %arrayidx20.1 = getelementptr inbounds i8, ptr %add.ptr, i64 2
  %24 = load i8, ptr %arrayidx20.1, align 1
  %conv21.1 = zext i8 %24 to i32
  %arrayidx22.1 = getelementptr inbounds i8, ptr %add.ptr64, i64 2
  %25 = load i8, ptr %arrayidx22.1, align 1
  %conv23.1 = zext i8 %25 to i32
  %sub24.1 = sub nsw i32 %conv21.1, %conv23.1
  %arrayidx25.1 = getelementptr inbounds i8, ptr %add.ptr, i64 6
  %26 = load i8, ptr %arrayidx25.1, align 1
  %conv26.1 = zext i8 %26 to i32
  %arrayidx27.1 = getelementptr inbounds i8, ptr %add.ptr64, i64 6
  %27 = load i8, ptr %arrayidx27.1, align 1
  %conv28.1 = zext i8 %27 to i32
  %sub29.1 = sub nsw i32 %conv26.1, %conv28.1
  %shl30.1 = shl nsw i32 %sub29.1, 16
  %add31.1 = add nsw i32 %shl30.1, %sub24.1
  %arrayidx32.1 = getelementptr inbounds i8, ptr %add.ptr, i64 3
  %28 = load i8, ptr %arrayidx32.1, align 1
  %conv33.1 = zext i8 %28 to i32
  %arrayidx34.1 = getelementptr inbounds i8, ptr %add.ptr64, i64 3
  %29 = load i8, ptr %arrayidx34.1, align 1
  %conv35.1 = zext i8 %29 to i32
  %sub36.1 = sub nsw i32 %conv33.1, %conv35.1
  %arrayidx37.1 = getelementptr inbounds i8, ptr %add.ptr, i64 7
  %30 = load i8, ptr %arrayidx37.1, align 1
  %conv38.1 = zext i8 %30 to i32
  %arrayidx39.1 = getelementptr inbounds i8, ptr %add.ptr64, i64 7
  %31 = load i8, ptr %arrayidx39.1, align 1
  %conv40.1 = zext i8 %31 to i32
  %sub41.1 = sub nsw i32 %conv38.1, %conv40.1
  %shl42.1 = shl nsw i32 %sub41.1, 16
  %add43.1 = add nsw i32 %shl42.1, %sub36.1
  %add44.1 = add nsw i32 %add19.1, %add.1
  %sub45.1 = sub nsw i32 %add.1, %add19.1
  %add46.1 = add nsw i32 %add43.1, %add31.1
  %sub47.1 = sub nsw i32 %add31.1, %add43.1
  %add48.1 = add nsw i32 %add46.1, %add44.1
  %sub51.1 = sub nsw i32 %add44.1, %add46.1
  %add55.1 = add nsw i32 %sub47.1, %sub45.1
  %sub59.1 = sub nsw i32 %sub45.1, %sub47.1
  %add.ptr.1 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.ext
  %add.ptr64.1 = getelementptr inbounds i8, ptr %add.ptr64, i64 %idx.ext63
  %32 = load i8, ptr %add.ptr.1, align 1
  %conv.2 = zext i8 %32 to i32
  %33 = load i8, ptr %add.ptr64.1, align 1
  %conv2.2 = zext i8 %33 to i32
  %sub.2 = sub nsw i32 %conv.2, %conv2.2
  %arrayidx3.2 = getelementptr inbounds i8, ptr %add.ptr.1, i64 4
  %34 = load i8, ptr %arrayidx3.2, align 1
  %conv4.2 = zext i8 %34 to i32
  %arrayidx5.2 = getelementptr inbounds i8, ptr %add.ptr64.1, i64 4
  %35 = load i8, ptr %arrayidx5.2, align 1
  %conv6.2 = zext i8 %35 to i32
  %sub7.2 = sub nsw i32 %conv4.2, %conv6.2
  %shl.2 = shl nsw i32 %sub7.2, 16
  %add.2 = add nsw i32 %shl.2, %sub.2
  %arrayidx8.2 = getelementptr inbounds i8, ptr %add.ptr.1, i64 1
  %36 = load i8, ptr %arrayidx8.2, align 1
  %conv9.2 = zext i8 %36 to i32
  %arrayidx10.2 = getelementptr inbounds i8, ptr %add.ptr64.1, i64 1
  %37 = load i8, ptr %arrayidx10.2, align 1
  %conv11.2 = zext i8 %37 to i32
  %sub12.2 = sub nsw i32 %conv9.2, %conv11.2
  %arrayidx13.2 = getelementptr inbounds i8, ptr %add.ptr.1, i64 5
  %38 = load i8, ptr %arrayidx13.2, align 1
  %conv14.2 = zext i8 %38 to i32
  %arrayidx15.2 = getelementptr inbounds i8, ptr %add.ptr64.1, i64 5
  %39 = load i8, ptr %arrayidx15.2, align 1
  %conv16.2 = zext i8 %39 to i32
  %sub17.2 = sub nsw i32 %conv14.2, %conv16.2
  %shl18.2 = shl nsw i32 %sub17.2, 16
  %add19.2 = add nsw i32 %shl18.2, %sub12.2
  %arrayidx20.2 = getelementptr inbounds i8, ptr %add.ptr.1, i64 2
  %40 = load i8, ptr %arrayidx20.2, align 1
  %conv21.2 = zext i8 %40 to i32
  %arrayidx22.2 = getelementptr inbounds i8, ptr %add.ptr64.1, i64 2
  %41 = load i8, ptr %arrayidx22.2, align 1
  %conv23.2 = zext i8 %41 to i32
  %sub24.2 = sub nsw i32 %conv21.2, %conv23.2
  %arrayidx25.2 = getelementptr inbounds i8, ptr %add.ptr.1, i64 6
  %42 = load i8, ptr %arrayidx25.2, align 1
  %conv26.2 = zext i8 %42 to i32
  %arrayidx27.2 = getelementptr inbounds i8, ptr %add.ptr64.1, i64 6
  %43 = load i8, ptr %arrayidx27.2, align 1
  %conv28.2 = zext i8 %43 to i32
  %sub29.2 = sub nsw i32 %conv26.2, %conv28.2
  %shl30.2 = shl nsw i32 %sub29.2, 16
  %add31.2 = add nsw i32 %shl30.2, %sub24.2
  %arrayidx32.2 = getelementptr inbounds i8, ptr %add.ptr.1, i64 3
  %44 = load i8, ptr %arrayidx32.2, align 1
  %conv33.2 = zext i8 %44 to i32
  %arrayidx34.2 = getelementptr inbounds i8, ptr %add.ptr64.1, i64 3
  %45 = load i8, ptr %arrayidx34.2, align 1
  %conv35.2 = zext i8 %45 to i32
  %sub36.2 = sub nsw i32 %conv33.2, %conv35.2
  %arrayidx37.2 = getelementptr inbounds i8, ptr %add.ptr.1, i64 7
  %46 = load i8, ptr %arrayidx37.2, align 1
  %conv38.2 = zext i8 %46 to i32
  %arrayidx39.2 = getelementptr inbounds i8, ptr %add.ptr64.1, i64 7
  %47 = load i8, ptr %arrayidx39.2, align 1
  %conv40.2 = zext i8 %47 to i32
  %sub41.2 = sub nsw i32 %conv38.2, %conv40.2
  %shl42.2 = shl nsw i32 %sub41.2, 16
  %add43.2 = add nsw i32 %shl42.2, %sub36.2
  %add44.2 = add nsw i32 %add19.2, %add.2
  %sub45.2 = sub nsw i32 %add.2, %add19.2
  %add46.2 = add nsw i32 %add43.2, %add31.2
  %sub47.2 = sub nsw i32 %add31.2, %add43.2
  %add48.2 = add nsw i32 %add46.2, %add44.2
  %sub51.2 = sub nsw i32 %add44.2, %add46.2
  %add55.2 = add nsw i32 %sub47.2, %sub45.2
  %sub59.2 = sub nsw i32 %sub45.2, %sub47.2
  %add.ptr.2 = getelementptr inbounds i8, ptr %add.ptr.1, i64 %idx.ext
  %add.ptr64.2 = getelementptr inbounds i8, ptr %add.ptr64.1, i64 %idx.ext63
  %48 = load i8, ptr %add.ptr.2, align 1
  %conv.3 = zext i8 %48 to i32
  %49 = load i8, ptr %add.ptr64.2, align 1
  %conv2.3 = zext i8 %49 to i32
  %sub.3 = sub nsw i32 %conv.3, %conv2.3
  %arrayidx3.3 = getelementptr inbounds i8, ptr %add.ptr.2, i64 4
  %50 = load i8, ptr %arrayidx3.3, align 1
  %conv4.3 = zext i8 %50 to i32
  %arrayidx5.3 = getelementptr inbounds i8, ptr %add.ptr64.2, i64 4
  %51 = load i8, ptr %arrayidx5.3, align 1
  %conv6.3 = zext i8 %51 to i32
  %sub7.3 = sub nsw i32 %conv4.3, %conv6.3
  %shl.3 = shl nsw i32 %sub7.3, 16
  %add.3 = add nsw i32 %shl.3, %sub.3
  %arrayidx8.3 = getelementptr inbounds i8, ptr %add.ptr.2, i64 1
  %52 = load i8, ptr %arrayidx8.3, align 1
  %conv9.3 = zext i8 %52 to i32
  %arrayidx10.3 = getelementptr inbounds i8, ptr %add.ptr64.2, i64 1
  %53 = load i8, ptr %arrayidx10.3, align 1
  %conv11.3 = zext i8 %53 to i32
  %sub12.3 = sub nsw i32 %conv9.3, %conv11.3
  %arrayidx13.3 = getelementptr inbounds i8, ptr %add.ptr.2, i64 5
  %54 = load i8, ptr %arrayidx13.3, align 1
  %conv14.3 = zext i8 %54 to i32
  %arrayidx15.3 = getelementptr inbounds i8, ptr %add.ptr64.2, i64 5
  %55 = load i8, ptr %arrayidx15.3, align 1
  %conv16.3 = zext i8 %55 to i32
  %sub17.3 = sub nsw i32 %conv14.3, %conv16.3
  %shl18.3 = shl nsw i32 %sub17.3, 16
  %add19.3 = add nsw i32 %shl18.3, %sub12.3
  %arrayidx20.3 = getelementptr inbounds i8, ptr %add.ptr.2, i64 2
  %56 = load i8, ptr %arrayidx20.3, align 1
  %conv21.3 = zext i8 %56 to i32
  %arrayidx22.3 = getelementptr inbounds i8, ptr %add.ptr64.2, i64 2
  %57 = load i8, ptr %arrayidx22.3, align 1
  %conv23.3 = zext i8 %57 to i32
  %sub24.3 = sub nsw i32 %conv21.3, %conv23.3
  %arrayidx25.3 = getelementptr inbounds i8, ptr %add.ptr.2, i64 6
  %58 = load i8, ptr %arrayidx25.3, align 1
  %conv26.3 = zext i8 %58 to i32
  %arrayidx27.3 = getelementptr inbounds i8, ptr %add.ptr64.2, i64 6
  %59 = load i8, ptr %arrayidx27.3, align 1
  %conv28.3 = zext i8 %59 to i32
  %sub29.3 = sub nsw i32 %conv26.3, %conv28.3
  %shl30.3 = shl nsw i32 %sub29.3, 16
  %add31.3 = add nsw i32 %shl30.3, %sub24.3
  %arrayidx32.3 = getelementptr inbounds i8, ptr %add.ptr.2, i64 3
  %60 = load i8, ptr %arrayidx32.3, align 1
  %conv33.3 = zext i8 %60 to i32
  %arrayidx34.3 = getelementptr inbounds i8, ptr %add.ptr64.2, i64 3
  %61 = load i8, ptr %arrayidx34.3, align 1
  %conv35.3 = zext i8 %61 to i32
  %sub36.3 = sub nsw i32 %conv33.3, %conv35.3
  %arrayidx37.3 = getelementptr inbounds i8, ptr %add.ptr.2, i64 7
  %62 = load i8, ptr %arrayidx37.3, align 1
  %conv38.3 = zext i8 %62 to i32
  %arrayidx39.3 = getelementptr inbounds i8, ptr %add.ptr64.2, i64 7
  %63 = load i8, ptr %arrayidx39.3, align 1
  %conv40.3 = zext i8 %63 to i32
  %sub41.3 = sub nsw i32 %conv38.3, %conv40.3
  %shl42.3 = shl nsw i32 %sub41.3, 16
  %add43.3 = add nsw i32 %shl42.3, %sub36.3
  %add44.3 = add nsw i32 %add19.3, %add.3
  %sub45.3 = sub nsw i32 %add.3, %add19.3
  %add46.3 = add nsw i32 %add43.3, %add31.3
  %sub47.3 = sub nsw i32 %add31.3, %add43.3
  %add48.3 = add nsw i32 %add46.3, %add44.3
  %sub51.3 = sub nsw i32 %add44.3, %add46.3
  %add55.3 = add nsw i32 %sub47.3, %sub45.3
  %sub59.3 = sub nsw i32 %sub45.3, %sub47.3
  %add78 = add nsw i32 %add48.1, %add48
  %sub86 = sub nsw i32 %add48, %add48.1
  %add94 = add nsw i32 %add48.3, %add48.2
  %sub102 = sub nsw i32 %add48.2, %add48.3
  %add103 = add nsw i32 %add94, %add78
  %sub104 = sub nsw i32 %add78, %add94
  %add105 = add nsw i32 %sub102, %sub86
  %sub106 = sub nsw i32 %sub86, %sub102
  %shr.i = lshr i32 %add103, 15
  %and.i = and i32 %shr.i, 65537
  %mul.i = mul nuw i32 %and.i, 65535
  %add.i = add i32 %mul.i, %add103
  %xor.i = xor i32 %add.i, %mul.i
  %shr.i169 = lshr i32 %add105, 15
  %and.i170 = and i32 %shr.i169, 65537
  %mul.i171 = mul nuw i32 %and.i170, 65535
  %add.i172 = add i32 %mul.i171, %add105
  %xor.i173 = xor i32 %add.i172, %mul.i171
  %shr.i174 = lshr i32 %sub104, 15
  %and.i175 = and i32 %shr.i174, 65537
  %mul.i176 = mul nuw i32 %and.i175, 65535
  %add.i177 = add i32 %mul.i176, %sub104
  %xor.i178 = xor i32 %add.i177, %mul.i176
  %shr.i179 = lshr i32 %sub106, 15
  %and.i180 = and i32 %shr.i179, 65537
  %mul.i181 = mul nuw i32 %and.i180, 65535
  %add.i182 = add i32 %mul.i181, %sub106
  %xor.i183 = xor i32 %add.i182, %mul.i181
  %add110 = add i32 %xor.i173, %xor.i
  %add112 = add i32 %add110, %xor.i178
  %add113 = add i32 %add112, %xor.i183
  %add78.1 = add nsw i32 %add55.1, %add55
  %sub86.1 = sub nsw i32 %add55, %add55.1
  %add94.1 = add nsw i32 %add55.3, %add55.2
  %sub102.1 = sub nsw i32 %add55.2, %add55.3
  %add103.1 = add nsw i32 %add94.1, %add78.1
  %sub104.1 = sub nsw i32 %add78.1, %add94.1
  %add105.1 = add nsw i32 %sub102.1, %sub86.1
  %sub106.1 = sub nsw i32 %sub86.1, %sub102.1
  %shr.i.1 = lshr i32 %add103.1, 15
  %and.i.1 = and i32 %shr.i.1, 65537
  %mul.i.1 = mul nuw i32 %and.i.1, 65535
  %add.i.1 = add i32 %mul.i.1, %add103.1
  %xor.i.1 = xor i32 %add.i.1, %mul.i.1
  %shr.i169.1 = lshr i32 %add105.1, 15
  %and.i170.1 = and i32 %shr.i169.1, 65537
  %mul.i171.1 = mul nuw i32 %and.i170.1, 65535
  %add.i172.1 = add i32 %mul.i171.1, %add105.1
  %xor.i173.1 = xor i32 %add.i172.1, %mul.i171.1
  %shr.i174.1 = lshr i32 %sub104.1, 15
  %and.i175.1 = and i32 %shr.i174.1, 65537
  %mul.i176.1 = mul nuw i32 %and.i175.1, 65535
  %add.i177.1 = add i32 %mul.i176.1, %sub104.1
  %xor.i178.1 = xor i32 %add.i177.1, %mul.i176.1
  %shr.i179.1 = lshr i32 %sub106.1, 15
  %and.i180.1 = and i32 %shr.i179.1, 65537
  %mul.i181.1 = mul nuw i32 %and.i180.1, 65535
  %add.i182.1 = add i32 %mul.i181.1, %sub106.1
  %xor.i183.1 = xor i32 %add.i182.1, %mul.i181.1
  %add108.1 = add i32 %xor.i173.1, %add113
  %add110.1 = add i32 %add108.1, %xor.i.1
  %add112.1 = add i32 %add110.1, %xor.i178.1
  %add113.1 = add i32 %add112.1, %xor.i183.1
  %add78.2 = add nsw i32 %sub51.1, %sub51
  %sub86.2 = sub nsw i32 %sub51, %sub51.1
  %add94.2 = add nsw i32 %sub51.3, %sub51.2
  %sub102.2 = sub nsw i32 %sub51.2, %sub51.3
  %add103.2 = add nsw i32 %add94.2, %add78.2
  %sub104.2 = sub nsw i32 %add78.2, %add94.2
  %add105.2 = add nsw i32 %sub102.2, %sub86.2
  %sub106.2 = sub nsw i32 %sub86.2, %sub102.2
  %shr.i.2 = lshr i32 %add103.2, 15
  %and.i.2 = and i32 %shr.i.2, 65537
  %mul.i.2 = mul nuw i32 %and.i.2, 65535
  %add.i.2 = add i32 %mul.i.2, %add103.2
  %xor.i.2 = xor i32 %add.i.2, %mul.i.2
  %shr.i169.2 = lshr i32 %add105.2, 15
  %and.i170.2 = and i32 %shr.i169.2, 65537
  %mul.i171.2 = mul nuw i32 %and.i170.2, 65535
  %add.i172.2 = add i32 %mul.i171.2, %add105.2
  %xor.i173.2 = xor i32 %add.i172.2, %mul.i171.2
  %shr.i174.2 = lshr i32 %sub104.2, 15
  %and.i175.2 = and i32 %shr.i174.2, 65537
  %mul.i176.2 = mul nuw i32 %and.i175.2, 65535
  %add.i177.2 = add i32 %mul.i176.2, %sub104.2
  %xor.i178.2 = xor i32 %add.i177.2, %mul.i176.2
  %shr.i179.2 = lshr i32 %sub106.2, 15
  %and.i180.2 = and i32 %shr.i179.2, 65537
  %mul.i181.2 = mul nuw i32 %and.i180.2, 65535
  %add.i182.2 = add i32 %mul.i181.2, %sub106.2
  %xor.i183.2 = xor i32 %add.i182.2, %mul.i181.2
  %add108.2 = add i32 %xor.i173.2, %add113.1
  %add110.2 = add i32 %add108.2, %xor.i.2
  %add112.2 = add i32 %add110.2, %xor.i178.2
  %add113.2 = add i32 %add112.2, %xor.i183.2
  %add78.3 = add nsw i32 %sub59.1, %sub59
  %sub86.3 = sub nsw i32 %sub59, %sub59.1
  %add94.3 = add nsw i32 %sub59.3, %sub59.2
  %sub102.3 = sub nsw i32 %sub59.2, %sub59.3
  %add103.3 = add nsw i32 %add94.3, %add78.3
  %sub104.3 = sub nsw i32 %add78.3, %add94.3
  %add105.3 = add nsw i32 %sub102.3, %sub86.3
  %sub106.3 = sub nsw i32 %sub86.3, %sub102.3
  %shr.i.3 = lshr i32 %add103.3, 15
  %and.i.3 = and i32 %shr.i.3, 65537
  %mul.i.3 = mul nuw i32 %and.i.3, 65535
  %add.i.3 = add i32 %mul.i.3, %add103.3
  %xor.i.3 = xor i32 %add.i.3, %mul.i.3
  %shr.i169.3 = lshr i32 %add105.3, 15
  %and.i170.3 = and i32 %shr.i169.3, 65537
  %mul.i171.3 = mul nuw i32 %and.i170.3, 65535
  %add.i172.3 = add i32 %mul.i171.3, %add105.3
  %xor.i173.3 = xor i32 %add.i172.3, %mul.i171.3
  %shr.i174.3 = lshr i32 %sub104.3, 15
  %and.i175.3 = and i32 %shr.i174.3, 65537
  %mul.i176.3 = mul nuw i32 %and.i175.3, 65535
  %add.i177.3 = add i32 %mul.i176.3, %sub104.3
  %xor.i178.3 = xor i32 %add.i177.3, %mul.i176.3
  %shr.i179.3 = lshr i32 %sub106.3, 15
  %and.i180.3 = and i32 %shr.i179.3, 65537
  %mul.i181.3 = mul nuw i32 %and.i180.3, 65535
  %add.i182.3 = add i32 %mul.i181.3, %sub106.3
  %xor.i183.3 = xor i32 %add.i182.3, %mul.i181.3
  %add108.3 = add i32 %xor.i173.3, %add113.2
  %add110.3 = add i32 %add108.3, %xor.i.3
  %add112.3 = add i32 %add110.3, %xor.i178.3
  %add113.3 = add i32 %add112.3, %xor.i183.3
  %conv118 = and i32 %add113.3, 65535
  %shr = lshr i32 %add113.3, 16
  %add119 = add nuw nsw i32 %conv118, %shr
  %shr120 = lshr i32 %add119, 1
  ret i32 %shr120
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 -2147483648, 2147483647) i32 @x264_pixel_satd_4x8(ptr nocapture noundef readonly %pix1, i32 noundef %i_pix1, ptr nocapture noundef readonly %pix2, i32 noundef %i_pix2) #5 {
entry:
  %call = tail call i32 @x264_pixel_satd_4x4(ptr noundef %pix1, i32 noundef %i_pix1, ptr noundef %pix2, i32 noundef %i_pix2)
  %mul = shl nsw i32 %i_pix1, 2
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, ptr %pix1, i64 %idx.ext
  %mul1 = shl nsw i32 %i_pix2, 2
  %idx.ext2 = sext i32 %mul1 to i64
  %add.ptr3 = getelementptr inbounds i8, ptr %pix2, i64 %idx.ext2
  %call4 = tail call i32 @x264_pixel_satd_4x4(ptr noundef %add.ptr, i32 noundef %i_pix1, ptr noundef %add.ptr3, i32 noundef %i_pix2)
  %add = add nsw i32 %call4, %call
  ret i32 %add
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 -1073741824, 1073741824) i32 @x264_pixel_satd_4x4(ptr nocapture noundef readonly %pix1, i32 noundef %i_pix1, ptr nocapture noundef readonly %pix2, i32 noundef %i_pix2) #5 {
entry:
  %idx.ext = sext i32 %i_pix1 to i64
  %idx.ext31 = sext i32 %i_pix2 to i64
  %0 = load i8, ptr %pix1, align 1
  %conv = zext i8 %0 to i32
  %1 = load i8, ptr %pix2, align 1
  %conv2 = zext i8 %1 to i32
  %sub = sub nsw i32 %conv, %conv2
  %arrayidx3 = getelementptr inbounds i8, ptr %pix1, i64 1
  %2 = load i8, ptr %arrayidx3, align 1
  %conv4 = zext i8 %2 to i32
  %arrayidx5 = getelementptr inbounds i8, ptr %pix2, i64 1
  %3 = load i8, ptr %arrayidx5, align 1
  %conv6 = zext i8 %3 to i32
  %sub7 = sub nsw i32 %conv4, %conv6
  %add = add nsw i32 %sub7, %sub
  %sub8 = sub nsw i32 %sub, %sub7
  %shl = shl nsw i32 %sub8, 16
  %add9 = add nsw i32 %add, %shl
  %arrayidx10 = getelementptr inbounds i8, ptr %pix1, i64 2
  %4 = load i8, ptr %arrayidx10, align 1
  %conv11 = zext i8 %4 to i32
  %arrayidx12 = getelementptr inbounds i8, ptr %pix2, i64 2
  %5 = load i8, ptr %arrayidx12, align 1
  %conv13 = zext i8 %5 to i32
  %sub14 = sub nsw i32 %conv11, %conv13
  %arrayidx15 = getelementptr inbounds i8, ptr %pix1, i64 3
  %6 = load i8, ptr %arrayidx15, align 1
  %conv16 = zext i8 %6 to i32
  %arrayidx17 = getelementptr inbounds i8, ptr %pix2, i64 3
  %7 = load i8, ptr %arrayidx17, align 1
  %conv18 = zext i8 %7 to i32
  %sub19 = sub nsw i32 %conv16, %conv18
  %add20 = add nsw i32 %sub19, %sub14
  %sub21 = sub nsw i32 %sub14, %sub19
  %shl22 = shl nsw i32 %sub21, 16
  %add23 = add nsw i32 %add20, %shl22
  %add24 = add nsw i32 %add23, %add9
  %sub27 = sub nsw i32 %add9, %add23
  %add.ptr = getelementptr inbounds i8, ptr %pix1, i64 %idx.ext
  %add.ptr32 = getelementptr inbounds i8, ptr %pix2, i64 %idx.ext31
  %8 = load i8, ptr %add.ptr, align 1
  %conv.1 = zext i8 %8 to i32
  %9 = load i8, ptr %add.ptr32, align 1
  %conv2.1 = zext i8 %9 to i32
  %sub.1 = sub nsw i32 %conv.1, %conv2.1
  %arrayidx3.1 = getelementptr inbounds i8, ptr %add.ptr, i64 1
  %10 = load i8, ptr %arrayidx3.1, align 1
  %conv4.1 = zext i8 %10 to i32
  %arrayidx5.1 = getelementptr inbounds i8, ptr %add.ptr32, i64 1
  %11 = load i8, ptr %arrayidx5.1, align 1
  %conv6.1 = zext i8 %11 to i32
  %sub7.1 = sub nsw i32 %conv4.1, %conv6.1
  %add.1 = add nsw i32 %sub7.1, %sub.1
  %sub8.1 = sub nsw i32 %sub.1, %sub7.1
  %shl.1 = shl nsw i32 %sub8.1, 16
  %add9.1 = add nsw i32 %add.1, %shl.1
  %arrayidx10.1 = getelementptr inbounds i8, ptr %add.ptr, i64 2
  %12 = load i8, ptr %arrayidx10.1, align 1
  %conv11.1 = zext i8 %12 to i32
  %arrayidx12.1 = getelementptr inbounds i8, ptr %add.ptr32, i64 2
  %13 = load i8, ptr %arrayidx12.1, align 1
  %conv13.1 = zext i8 %13 to i32
  %sub14.1 = sub nsw i32 %conv11.1, %conv13.1
  %arrayidx15.1 = getelementptr inbounds i8, ptr %add.ptr, i64 3
  %14 = load i8, ptr %arrayidx15.1, align 1
  %conv16.1 = zext i8 %14 to i32
  %arrayidx17.1 = getelementptr inbounds i8, ptr %add.ptr32, i64 3
  %15 = load i8, ptr %arrayidx17.1, align 1
  %conv18.1 = zext i8 %15 to i32
  %sub19.1 = sub nsw i32 %conv16.1, %conv18.1
  %add20.1 = add nsw i32 %sub19.1, %sub14.1
  %sub21.1 = sub nsw i32 %sub14.1, %sub19.1
  %shl22.1 = shl nsw i32 %sub21.1, 16
  %add23.1 = add nsw i32 %add20.1, %shl22.1
  %add24.1 = add nsw i32 %add23.1, %add9.1
  %sub27.1 = sub nsw i32 %add9.1, %add23.1
  %add.ptr.1 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.ext
  %add.ptr32.1 = getelementptr inbounds i8, ptr %add.ptr32, i64 %idx.ext31
  %16 = load i8, ptr %add.ptr.1, align 1
  %conv.2 = zext i8 %16 to i32
  %17 = load i8, ptr %add.ptr32.1, align 1
  %conv2.2 = zext i8 %17 to i32
  %sub.2 = sub nsw i32 %conv.2, %conv2.2
  %arrayidx3.2 = getelementptr inbounds i8, ptr %add.ptr.1, i64 1
  %18 = load i8, ptr %arrayidx3.2, align 1
  %conv4.2 = zext i8 %18 to i32
  %arrayidx5.2 = getelementptr inbounds i8, ptr %add.ptr32.1, i64 1
  %19 = load i8, ptr %arrayidx5.2, align 1
  %conv6.2 = zext i8 %19 to i32
  %sub7.2 = sub nsw i32 %conv4.2, %conv6.2
  %add.2 = add nsw i32 %sub7.2, %sub.2
  %sub8.2 = sub nsw i32 %sub.2, %sub7.2
  %shl.2 = shl nsw i32 %sub8.2, 16
  %add9.2 = add nsw i32 %add.2, %shl.2
  %arrayidx10.2 = getelementptr inbounds i8, ptr %add.ptr.1, i64 2
  %20 = load i8, ptr %arrayidx10.2, align 1
  %conv11.2 = zext i8 %20 to i32
  %arrayidx12.2 = getelementptr inbounds i8, ptr %add.ptr32.1, i64 2
  %21 = load i8, ptr %arrayidx12.2, align 1
  %conv13.2 = zext i8 %21 to i32
  %sub14.2 = sub nsw i32 %conv11.2, %conv13.2
  %arrayidx15.2 = getelementptr inbounds i8, ptr %add.ptr.1, i64 3
  %22 = load i8, ptr %arrayidx15.2, align 1
  %conv16.2 = zext i8 %22 to i32
  %arrayidx17.2 = getelementptr inbounds i8, ptr %add.ptr32.1, i64 3
  %23 = load i8, ptr %arrayidx17.2, align 1
  %conv18.2 = zext i8 %23 to i32
  %sub19.2 = sub nsw i32 %conv16.2, %conv18.2
  %add20.2 = add nsw i32 %sub19.2, %sub14.2
  %sub21.2 = sub nsw i32 %sub14.2, %sub19.2
  %shl22.2 = shl nsw i32 %sub21.2, 16
  %add23.2 = add nsw i32 %add20.2, %shl22.2
  %add24.2 = add nsw i32 %add23.2, %add9.2
  %sub27.2 = sub nsw i32 %add9.2, %add23.2
  %add.ptr.2 = getelementptr inbounds i8, ptr %add.ptr.1, i64 %idx.ext
  %add.ptr32.2 = getelementptr inbounds i8, ptr %add.ptr32.1, i64 %idx.ext31
  %24 = load i8, ptr %add.ptr.2, align 1
  %conv.3 = zext i8 %24 to i32
  %25 = load i8, ptr %add.ptr32.2, align 1
  %conv2.3 = zext i8 %25 to i32
  %sub.3 = sub nsw i32 %conv.3, %conv2.3
  %arrayidx3.3 = getelementptr inbounds i8, ptr %add.ptr.2, i64 1
  %26 = load i8, ptr %arrayidx3.3, align 1
  %conv4.3 = zext i8 %26 to i32
  %arrayidx5.3 = getelementptr inbounds i8, ptr %add.ptr32.2, i64 1
  %27 = load i8, ptr %arrayidx5.3, align 1
  %conv6.3 = zext i8 %27 to i32
  %sub7.3 = sub nsw i32 %conv4.3, %conv6.3
  %add.3 = add nsw i32 %sub7.3, %sub.3
  %sub8.3 = sub nsw i32 %sub.3, %sub7.3
  %shl.3 = shl nsw i32 %sub8.3, 16
  %add9.3 = add nsw i32 %add.3, %shl.3
  %arrayidx10.3 = getelementptr inbounds i8, ptr %add.ptr.2, i64 2
  %28 = load i8, ptr %arrayidx10.3, align 1
  %conv11.3 = zext i8 %28 to i32
  %arrayidx12.3 = getelementptr inbounds i8, ptr %add.ptr32.2, i64 2
  %29 = load i8, ptr %arrayidx12.3, align 1
  %conv13.3 = zext i8 %29 to i32
  %sub14.3 = sub nsw i32 %conv11.3, %conv13.3
  %arrayidx15.3 = getelementptr inbounds i8, ptr %add.ptr.2, i64 3
  %30 = load i8, ptr %arrayidx15.3, align 1
  %conv16.3 = zext i8 %30 to i32
  %arrayidx17.3 = getelementptr inbounds i8, ptr %add.ptr32.2, i64 3
  %31 = load i8, ptr %arrayidx17.3, align 1
  %conv18.3 = zext i8 %31 to i32
  %sub19.3 = sub nsw i32 %conv16.3, %conv18.3
  %add20.3 = add nsw i32 %sub19.3, %sub14.3
  %sub21.3 = sub nsw i32 %sub14.3, %sub19.3
  %shl22.3 = shl nsw i32 %sub21.3, 16
  %add23.3 = add nsw i32 %add20.3, %shl22.3
  %add24.3 = add nsw i32 %add23.3, %add9.3
  %sub27.3 = sub nsw i32 %add9.3, %add23.3
  %add45 = add nsw i32 %add24.1, %add24
  %sub52 = sub nsw i32 %add24, %add24.1
  %add59 = add nsw i32 %add24.3, %add24.2
  %sub66 = sub nsw i32 %add24.2, %add24.3
  %add67 = add nsw i32 %add59, %add45
  %sub68 = sub nsw i32 %add45, %add59
  %add69 = add nsw i32 %sub66, %sub52
  %sub70 = sub nsw i32 %sub52, %sub66
  %shr.i = lshr i32 %add67, 15
  %and.i = and i32 %shr.i, 65537
  %mul.i = mul nuw i32 %and.i, 65535
  %add.i = add i32 %mul.i, %add67
  %xor.i = xor i32 %add.i, %mul.i
  %shr.i122 = lshr i32 %add69, 15
  %and.i123 = and i32 %shr.i122, 65537
  %mul.i124 = mul nuw i32 %and.i123, 65535
  %add.i125 = add i32 %mul.i124, %add69
  %xor.i126 = xor i32 %add.i125, %mul.i124
  %add72 = add i32 %xor.i, %xor.i126
  %shr.i127 = lshr i32 %sub68, 15
  %and.i128 = and i32 %shr.i127, 65537
  %mul.i129 = mul nuw i32 %and.i128, 65535
  %add.i130 = add i32 %mul.i129, %sub68
  %xor.i131 = xor i32 %add.i130, %mul.i129
  %add74 = add i32 %add72, %xor.i131
  %shr.i132 = lshr i32 %sub70, 15
  %and.i133 = and i32 %shr.i132, 65537
  %mul.i134 = mul nuw i32 %and.i133, 65535
  %add.i135 = add i32 %mul.i134, %sub70
  %xor.i136 = xor i32 %add.i135, %mul.i134
  %add76 = add i32 %add74, %xor.i136
  %conv78 = and i32 %add76, 65535
  %shr = lshr i32 %add76, 16
  %add80 = add nuw nsw i32 %shr, %conv78
  %add45.1 = add nsw i32 %sub27.1, %sub27
  %sub52.1 = sub nsw i32 %sub27, %sub27.1
  %add59.1 = add nsw i32 %sub27.3, %sub27.2
  %sub66.1 = sub nsw i32 %sub27.2, %sub27.3
  %add67.1 = add nsw i32 %add59.1, %add45.1
  %sub68.1 = sub nsw i32 %add45.1, %add59.1
  %add69.1 = add nsw i32 %sub66.1, %sub52.1
  %sub70.1 = sub nsw i32 %sub52.1, %sub66.1
  %shr.i.1 = lshr i32 %add67.1, 15
  %and.i.1 = and i32 %shr.i.1, 65537
  %mul.i.1 = mul nuw i32 %and.i.1, 65535
  %add.i.1 = add i32 %mul.i.1, %add67.1
  %xor.i.1 = xor i32 %add.i.1, %mul.i.1
  %shr.i122.1 = lshr i32 %add69.1, 15
  %and.i123.1 = and i32 %shr.i122.1, 65537
  %mul.i124.1 = mul nuw i32 %and.i123.1, 65535
  %add.i125.1 = add i32 %mul.i124.1, %add69.1
  %xor.i126.1 = xor i32 %add.i125.1, %mul.i124.1
  %add72.1 = add i32 %xor.i.1, %xor.i126.1
  %shr.i127.1 = lshr i32 %sub68.1, 15
  %and.i128.1 = and i32 %shr.i127.1, 65537
  %mul.i129.1 = mul nuw i32 %and.i128.1, 65535
  %add.i130.1 = add i32 %mul.i129.1, %sub68.1
  %xor.i131.1 = xor i32 %add.i130.1, %mul.i129.1
  %add74.1 = add i32 %add72.1, %xor.i131.1
  %shr.i132.1 = lshr i32 %sub70.1, 15
  %and.i133.1 = and i32 %shr.i132.1, 65537
  %mul.i134.1 = mul nuw i32 %and.i133.1, 65535
  %add.i135.1 = add i32 %mul.i134.1, %sub70.1
  %xor.i136.1 = xor i32 %add.i135.1, %mul.i134.1
  %add76.1 = add i32 %add74.1, %xor.i136.1
  %conv78.1 = and i32 %add76.1, 65535
  %shr.1 = lshr i32 %add76.1, 16
  %add79.1 = add nuw nsw i32 %shr.1, %add80
  %add80.1 = add nuw nsw i32 %add79.1, %conv78.1
  %shr84 = lshr i32 %add80.1, 1
  ret i32 %shr84
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @x264_pixel_satd_x3_16x16(ptr nocapture noundef readonly %fenc, ptr nocapture noundef readonly %pix0, ptr nocapture noundef readonly %pix1, ptr nocapture noundef readonly %pix2, i32 noundef %i_stride, ptr nocapture noundef writeonly %scores) #8 {
entry:
  %call = tail call i32 @x264_pixel_satd_16x16(ptr noundef %fenc, i32 noundef 16, ptr noundef %pix0, i32 noundef %i_stride)
  store i32 %call, ptr %scores, align 4
  %call1 = tail call i32 @x264_pixel_satd_16x16(ptr noundef %fenc, i32 noundef 16, ptr noundef %pix1, i32 noundef %i_stride)
  %arrayidx2 = getelementptr inbounds i8, ptr %scores, i64 4
  store i32 %call1, ptr %arrayidx2, align 4
  %call3 = tail call i32 @x264_pixel_satd_16x16(ptr noundef %fenc, i32 noundef 16, ptr noundef %pix2, i32 noundef %i_stride)
  %arrayidx4 = getelementptr inbounds i8, ptr %scores, i64 8
  store i32 %call3, ptr %arrayidx4, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @x264_pixel_satd_x3_16x8(ptr nocapture noundef readonly %fenc, ptr nocapture noundef readonly %pix0, ptr nocapture noundef readonly %pix1, ptr nocapture noundef readonly %pix2, i32 noundef %i_stride, ptr nocapture noundef writeonly %scores) #8 {
entry:
  %call.i = tail call i32 @x264_pixel_satd_8x4(ptr noundef readonly %fenc, i32 noundef 16, ptr noundef readonly %pix0, i32 noundef %i_stride)
  %add.ptr.i = getelementptr inbounds i8, ptr %fenc, i64 64
  %mul1.i = shl nsw i32 %i_stride, 2
  %idx.ext2.i = sext i32 %mul1.i to i64
  %add.ptr3.i = getelementptr inbounds i8, ptr %pix0, i64 %idx.ext2.i
  %call4.i = tail call i32 @x264_pixel_satd_8x4(ptr noundef nonnull readonly %add.ptr.i, i32 noundef 16, ptr noundef readonly %add.ptr3.i, i32 noundef %i_stride)
  %add.ptr5.i = getelementptr inbounds i8, ptr %fenc, i64 8
  %add.ptr6.i = getelementptr inbounds i8, ptr %pix0, i64 8
  %call7.i = tail call i32 @x264_pixel_satd_8x4(ptr noundef nonnull readonly %add.ptr5.i, i32 noundef 16, ptr noundef nonnull readonly %add.ptr6.i, i32 noundef %i_stride)
  %add.ptr11.i = getelementptr inbounds i8, ptr %fenc, i64 72
  %add.ptr15.i = getelementptr inbounds i8, ptr %add.ptr6.i, i64 %idx.ext2.i
  %call16.i = tail call i32 @x264_pixel_satd_8x4(ptr noundef nonnull readonly %add.ptr11.i, i32 noundef 16, ptr noundef nonnull readonly %add.ptr15.i, i32 noundef %i_stride)
  %add17.i = add nuw nsw i32 %call4.i, %call.i
  %add.i = add nuw nsw i32 %add17.i, %call7.i
  %add18.i = add nuw nsw i32 %add.i, %call16.i
  store i32 %add18.i, ptr %scores, align 4
  %call.i11 = tail call i32 @x264_pixel_satd_8x4(ptr noundef readonly %fenc, i32 noundef 16, ptr noundef readonly %pix1, i32 noundef %i_stride)
  %add.ptr3.i15 = getelementptr inbounds i8, ptr %pix1, i64 %idx.ext2.i
  %call4.i16 = tail call i32 @x264_pixel_satd_8x4(ptr noundef nonnull readonly %add.ptr.i, i32 noundef 16, ptr noundef readonly %add.ptr3.i15, i32 noundef %i_stride)
  %add.ptr6.i18 = getelementptr inbounds i8, ptr %pix1, i64 8
  %call7.i19 = tail call i32 @x264_pixel_satd_8x4(ptr noundef nonnull readonly %add.ptr5.i, i32 noundef 16, ptr noundef nonnull readonly %add.ptr6.i18, i32 noundef %i_stride)
  %add.ptr15.i21 = getelementptr inbounds i8, ptr %add.ptr6.i18, i64 %idx.ext2.i
  %call16.i22 = tail call i32 @x264_pixel_satd_8x4(ptr noundef nonnull readonly %add.ptr11.i, i32 noundef 16, ptr noundef nonnull readonly %add.ptr15.i21, i32 noundef %i_stride)
  %add17.i23 = add nuw nsw i32 %call4.i16, %call.i11
  %add.i24 = add nuw nsw i32 %add17.i23, %call7.i19
  %add18.i25 = add nuw nsw i32 %add.i24, %call16.i22
  %arrayidx2 = getelementptr inbounds i8, ptr %scores, i64 4
  store i32 %add18.i25, ptr %arrayidx2, align 4
  %call.i26 = tail call i32 @x264_pixel_satd_8x4(ptr noundef readonly %fenc, i32 noundef 16, ptr noundef readonly %pix2, i32 noundef %i_stride)
  %add.ptr3.i30 = getelementptr inbounds i8, ptr %pix2, i64 %idx.ext2.i
  %call4.i31 = tail call i32 @x264_pixel_satd_8x4(ptr noundef nonnull readonly %add.ptr.i, i32 noundef 16, ptr noundef readonly %add.ptr3.i30, i32 noundef %i_stride)
  %add.ptr6.i33 = getelementptr inbounds i8, ptr %pix2, i64 8
  %call7.i34 = tail call i32 @x264_pixel_satd_8x4(ptr noundef nonnull readonly %add.ptr5.i, i32 noundef 16, ptr noundef nonnull readonly %add.ptr6.i33, i32 noundef %i_stride)
  %add.ptr15.i36 = getelementptr inbounds i8, ptr %add.ptr6.i33, i64 %idx.ext2.i
  %call16.i37 = tail call i32 @x264_pixel_satd_8x4(ptr noundef nonnull readonly %add.ptr11.i, i32 noundef 16, ptr noundef nonnull readonly %add.ptr15.i36, i32 noundef %i_stride)
  %add17.i38 = add nuw nsw i32 %call4.i31, %call.i26
  %add.i39 = add nuw nsw i32 %add17.i38, %call7.i34
  %add18.i40 = add nuw nsw i32 %add.i39, %call16.i37
  %arrayidx4 = getelementptr inbounds i8, ptr %scores, i64 8
  store i32 %add18.i40, ptr %arrayidx4, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @x264_pixel_satd_x3_8x16(ptr nocapture noundef readonly %fenc, ptr nocapture noundef readonly %pix0, ptr nocapture noundef readonly %pix1, ptr nocapture noundef readonly %pix2, i32 noundef %i_stride, ptr nocapture noundef writeonly %scores) #8 {
entry:
  %call.i = tail call i32 @x264_pixel_satd_8x4(ptr noundef readonly %fenc, i32 noundef 16, ptr noundef readonly %pix0, i32 noundef %i_stride)
  %add.ptr.i = getelementptr inbounds i8, ptr %fenc, i64 64
  %mul1.i = shl nsw i32 %i_stride, 2
  %idx.ext2.i = sext i32 %mul1.i to i64
  %add.ptr3.i = getelementptr inbounds i8, ptr %pix0, i64 %idx.ext2.i
  %call4.i = tail call i32 @x264_pixel_satd_8x4(ptr noundef nonnull readonly %add.ptr.i, i32 noundef 16, ptr noundef readonly %add.ptr3.i, i32 noundef %i_stride)
  %add.ptr7.i = getelementptr inbounds i8, ptr %fenc, i64 128
  %mul8.i = shl nsw i32 %i_stride, 3
  %idx.ext9.i = sext i32 %mul8.i to i64
  %add.ptr10.i = getelementptr inbounds i8, ptr %pix0, i64 %idx.ext9.i
  %call11.i = tail call i32 @x264_pixel_satd_8x4(ptr noundef nonnull readonly %add.ptr7.i, i32 noundef 16, ptr noundef readonly %add.ptr10.i, i32 noundef %i_stride)
  %add.ptr14.i = getelementptr inbounds i8, ptr %fenc, i64 192
  %mul15.i = mul nsw i32 %i_stride, 12
  %idx.ext16.i = sext i32 %mul15.i to i64
  %add.ptr17.i = getelementptr inbounds i8, ptr %pix0, i64 %idx.ext16.i
  %call18.i = tail call i32 @x264_pixel_satd_8x4(ptr noundef nonnull readonly %add.ptr14.i, i32 noundef 16, ptr noundef readonly %add.ptr17.i, i32 noundef %i_stride)
  %add19.i = add nuw nsw i32 %call4.i, %call.i
  %add.i = add nuw nsw i32 %add19.i, %call11.i
  %add20.i = add nuw nsw i32 %add.i, %call18.i
  store i32 %add20.i, ptr %scores, align 4
  %call.i11 = tail call i32 @x264_pixel_satd_8x4(ptr noundef readonly %fenc, i32 noundef 16, ptr noundef readonly %pix1, i32 noundef %i_stride)
  %add.ptr3.i15 = getelementptr inbounds i8, ptr %pix1, i64 %idx.ext2.i
  %call4.i16 = tail call i32 @x264_pixel_satd_8x4(ptr noundef nonnull readonly %add.ptr.i, i32 noundef 16, ptr noundef readonly %add.ptr3.i15, i32 noundef %i_stride)
  %add.ptr10.i20 = getelementptr inbounds i8, ptr %pix1, i64 %idx.ext9.i
  %call11.i21 = tail call i32 @x264_pixel_satd_8x4(ptr noundef nonnull readonly %add.ptr7.i, i32 noundef 16, ptr noundef readonly %add.ptr10.i20, i32 noundef %i_stride)
  %add.ptr17.i25 = getelementptr inbounds i8, ptr %pix1, i64 %idx.ext16.i
  %call18.i26 = tail call i32 @x264_pixel_satd_8x4(ptr noundef nonnull readonly %add.ptr14.i, i32 noundef 16, ptr noundef readonly %add.ptr17.i25, i32 noundef %i_stride)
  %add19.i27 = add nuw nsw i32 %call4.i16, %call.i11
  %add.i28 = add nuw nsw i32 %add19.i27, %call11.i21
  %add20.i29 = add nuw nsw i32 %add.i28, %call18.i26
  %arrayidx2 = getelementptr inbounds i8, ptr %scores, i64 4
  store i32 %add20.i29, ptr %arrayidx2, align 4
  %call.i30 = tail call i32 @x264_pixel_satd_8x4(ptr noundef readonly %fenc, i32 noundef 16, ptr noundef readonly %pix2, i32 noundef %i_stride)
  %add.ptr3.i34 = getelementptr inbounds i8, ptr %pix2, i64 %idx.ext2.i
  %call4.i35 = tail call i32 @x264_pixel_satd_8x4(ptr noundef nonnull readonly %add.ptr.i, i32 noundef 16, ptr noundef readonly %add.ptr3.i34, i32 noundef %i_stride)
  %add.ptr10.i39 = getelementptr inbounds i8, ptr %pix2, i64 %idx.ext9.i
  %call11.i40 = tail call i32 @x264_pixel_satd_8x4(ptr noundef nonnull readonly %add.ptr7.i, i32 noundef 16, ptr noundef readonly %add.ptr10.i39, i32 noundef %i_stride)
  %add.ptr17.i44 = getelementptr inbounds i8, ptr %pix2, i64 %idx.ext16.i
  %call18.i45 = tail call i32 @x264_pixel_satd_8x4(ptr noundef nonnull readonly %add.ptr14.i, i32 noundef 16, ptr noundef readonly %add.ptr17.i44, i32 noundef %i_stride)
  %add19.i46 = add nuw nsw i32 %call4.i35, %call.i30
  %add.i47 = add nuw nsw i32 %add19.i46, %call11.i40
  %add20.i48 = add nuw nsw i32 %add.i47, %call18.i45
  %arrayidx4 = getelementptr inbounds i8, ptr %scores, i64 8
  store i32 %add20.i48, ptr %arrayidx4, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @x264_pixel_satd_x3_8x8(ptr nocapture noundef readonly %fenc, ptr nocapture noundef readonly %pix0, ptr nocapture noundef readonly %pix1, ptr nocapture noundef readonly %pix2, i32 noundef %i_stride, ptr nocapture noundef writeonly %scores) #8 {
entry:
  %call.i = tail call i32 @x264_pixel_satd_8x4(ptr noundef readonly %fenc, i32 noundef 16, ptr noundef readonly %pix0, i32 noundef %i_stride)
  %add.ptr.i = getelementptr inbounds i8, ptr %fenc, i64 64
  %mul1.i = shl nsw i32 %i_stride, 2
  %idx.ext2.i = sext i32 %mul1.i to i64
  %add.ptr3.i = getelementptr inbounds i8, ptr %pix0, i64 %idx.ext2.i
  %call4.i = tail call i32 @x264_pixel_satd_8x4(ptr noundef nonnull readonly %add.ptr.i, i32 noundef 16, ptr noundef readonly %add.ptr3.i, i32 noundef %i_stride)
  %add.i = add nuw nsw i32 %call4.i, %call.i
  store i32 %add.i, ptr %scores, align 4
  %call.i11 = tail call i32 @x264_pixel_satd_8x4(ptr noundef readonly %fenc, i32 noundef 16, ptr noundef readonly %pix1, i32 noundef %i_stride)
  %add.ptr3.i15 = getelementptr inbounds i8, ptr %pix1, i64 %idx.ext2.i
  %call4.i16 = tail call i32 @x264_pixel_satd_8x4(ptr noundef nonnull readonly %add.ptr.i, i32 noundef 16, ptr noundef readonly %add.ptr3.i15, i32 noundef %i_stride)
  %add.i17 = add nuw nsw i32 %call4.i16, %call.i11
  %arrayidx2 = getelementptr inbounds i8, ptr %scores, i64 4
  store i32 %add.i17, ptr %arrayidx2, align 4
  %call.i18 = tail call i32 @x264_pixel_satd_8x4(ptr noundef readonly %fenc, i32 noundef 16, ptr noundef readonly %pix2, i32 noundef %i_stride)
  %add.ptr3.i22 = getelementptr inbounds i8, ptr %pix2, i64 %idx.ext2.i
  %call4.i23 = tail call i32 @x264_pixel_satd_8x4(ptr noundef nonnull readonly %add.ptr.i, i32 noundef 16, ptr noundef readonly %add.ptr3.i22, i32 noundef %i_stride)
  %add.i24 = add nuw nsw i32 %call4.i23, %call.i18
  %arrayidx4 = getelementptr inbounds i8, ptr %scores, i64 8
  store i32 %add.i24, ptr %arrayidx4, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @x264_pixel_satd_x3_8x4(ptr nocapture noundef readonly %fenc, ptr nocapture noundef readonly %pix0, ptr nocapture noundef readonly %pix1, ptr nocapture noundef readonly %pix2, i32 noundef %i_stride, ptr nocapture noundef writeonly %scores) #8 {
entry:
  %call = tail call i32 @x264_pixel_satd_8x4(ptr noundef %fenc, i32 noundef 16, ptr noundef %pix0, i32 noundef %i_stride)
  store i32 %call, ptr %scores, align 4
  %call1 = tail call i32 @x264_pixel_satd_8x4(ptr noundef %fenc, i32 noundef 16, ptr noundef %pix1, i32 noundef %i_stride)
  %arrayidx2 = getelementptr inbounds i8, ptr %scores, i64 4
  store i32 %call1, ptr %arrayidx2, align 4
  %call3 = tail call i32 @x264_pixel_satd_8x4(ptr noundef %fenc, i32 noundef 16, ptr noundef %pix2, i32 noundef %i_stride)
  %arrayidx4 = getelementptr inbounds i8, ptr %scores, i64 8
  store i32 %call3, ptr %arrayidx4, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @x264_pixel_satd_x3_4x8(ptr nocapture noundef readonly %fenc, ptr nocapture noundef readonly %pix0, ptr nocapture noundef readonly %pix1, ptr nocapture noundef readonly %pix2, i32 noundef %i_stride, ptr nocapture noundef writeonly %scores) #8 {
entry:
  %call.i = tail call i32 @x264_pixel_satd_4x4(ptr noundef readonly %fenc, i32 noundef 16, ptr noundef readonly %pix0, i32 noundef %i_stride)
  %add.ptr.i = getelementptr inbounds i8, ptr %fenc, i64 64
  %mul1.i = shl nsw i32 %i_stride, 2
  %idx.ext2.i = sext i32 %mul1.i to i64
  %add.ptr3.i = getelementptr inbounds i8, ptr %pix0, i64 %idx.ext2.i
  %call4.i = tail call i32 @x264_pixel_satd_4x4(ptr noundef nonnull readonly %add.ptr.i, i32 noundef 16, ptr noundef readonly %add.ptr3.i, i32 noundef %i_stride)
  %add.i = add nsw i32 %call4.i, %call.i
  store i32 %add.i, ptr %scores, align 4
  %call.i11 = tail call i32 @x264_pixel_satd_4x4(ptr noundef readonly %fenc, i32 noundef 16, ptr noundef readonly %pix1, i32 noundef %i_stride)
  %add.ptr3.i15 = getelementptr inbounds i8, ptr %pix1, i64 %idx.ext2.i
  %call4.i16 = tail call i32 @x264_pixel_satd_4x4(ptr noundef nonnull readonly %add.ptr.i, i32 noundef 16, ptr noundef readonly %add.ptr3.i15, i32 noundef %i_stride)
  %add.i17 = add nsw i32 %call4.i16, %call.i11
  %arrayidx2 = getelementptr inbounds i8, ptr %scores, i64 4
  store i32 %add.i17, ptr %arrayidx2, align 4
  %call.i18 = tail call i32 @x264_pixel_satd_4x4(ptr noundef readonly %fenc, i32 noundef 16, ptr noundef readonly %pix2, i32 noundef %i_stride)
  %add.ptr3.i22 = getelementptr inbounds i8, ptr %pix2, i64 %idx.ext2.i
  %call4.i23 = tail call i32 @x264_pixel_satd_4x4(ptr noundef nonnull readonly %add.ptr.i, i32 noundef 16, ptr noundef readonly %add.ptr3.i22, i32 noundef %i_stride)
  %add.i24 = add nsw i32 %call4.i23, %call.i18
  %arrayidx4 = getelementptr inbounds i8, ptr %scores, i64 8
  store i32 %add.i24, ptr %arrayidx4, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @x264_pixel_satd_x3_4x4(ptr nocapture noundef readonly %fenc, ptr nocapture noundef readonly %pix0, ptr nocapture noundef readonly %pix1, ptr nocapture noundef readonly %pix2, i32 noundef %i_stride, ptr nocapture noundef writeonly %scores) #8 {
entry:
  %call = tail call i32 @x264_pixel_satd_4x4(ptr noundef %fenc, i32 noundef 16, ptr noundef %pix0, i32 noundef %i_stride)
  store i32 %call, ptr %scores, align 4
  %call1 = tail call i32 @x264_pixel_satd_4x4(ptr noundef %fenc, i32 noundef 16, ptr noundef %pix1, i32 noundef %i_stride)
  %arrayidx2 = getelementptr inbounds i8, ptr %scores, i64 4
  store i32 %call1, ptr %arrayidx2, align 4
  %call3 = tail call i32 @x264_pixel_satd_4x4(ptr noundef %fenc, i32 noundef 16, ptr noundef %pix2, i32 noundef %i_stride)
  %arrayidx4 = getelementptr inbounds i8, ptr %scores, i64 8
  store i32 %call3, ptr %arrayidx4, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @x264_pixel_satd_x4_16x16(ptr nocapture noundef readonly %fenc, ptr nocapture noundef readonly %pix0, ptr nocapture noundef readonly %pix1, ptr nocapture noundef readonly %pix2, ptr nocapture noundef readonly %pix3, i32 noundef %i_stride, ptr nocapture noundef writeonly %scores) #8 {
entry:
  %call = tail call i32 @x264_pixel_satd_16x16(ptr noundef %fenc, i32 noundef 16, ptr noundef %pix0, i32 noundef %i_stride)
  store i32 %call, ptr %scores, align 4
  %call1 = tail call i32 @x264_pixel_satd_16x16(ptr noundef %fenc, i32 noundef 16, ptr noundef %pix1, i32 noundef %i_stride)
  %arrayidx2 = getelementptr inbounds i8, ptr %scores, i64 4
  store i32 %call1, ptr %arrayidx2, align 4
  %call3 = tail call i32 @x264_pixel_satd_16x16(ptr noundef %fenc, i32 noundef 16, ptr noundef %pix2, i32 noundef %i_stride)
  %arrayidx4 = getelementptr inbounds i8, ptr %scores, i64 8
  store i32 %call3, ptr %arrayidx4, align 4
  %call5 = tail call i32 @x264_pixel_satd_16x16(ptr noundef %fenc, i32 noundef 16, ptr noundef %pix3, i32 noundef %i_stride)
  %arrayidx6 = getelementptr inbounds i8, ptr %scores, i64 12
  store i32 %call5, ptr %arrayidx6, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @x264_pixel_satd_x4_16x8(ptr nocapture noundef readonly %fenc, ptr nocapture noundef readonly %pix0, ptr nocapture noundef readonly %pix1, ptr nocapture noundef readonly %pix2, ptr nocapture noundef readonly %pix3, i32 noundef %i_stride, ptr nocapture noundef writeonly %scores) #8 {
entry:
  %call.i = tail call i32 @x264_pixel_satd_8x4(ptr noundef readonly %fenc, i32 noundef 16, ptr noundef readonly %pix0, i32 noundef %i_stride)
  %add.ptr.i = getelementptr inbounds i8, ptr %fenc, i64 64
  %mul1.i = shl nsw i32 %i_stride, 2
  %idx.ext2.i = sext i32 %mul1.i to i64
  %add.ptr3.i = getelementptr inbounds i8, ptr %pix0, i64 %idx.ext2.i
  %call4.i = tail call i32 @x264_pixel_satd_8x4(ptr noundef nonnull readonly %add.ptr.i, i32 noundef 16, ptr noundef readonly %add.ptr3.i, i32 noundef %i_stride)
  %add.ptr5.i = getelementptr inbounds i8, ptr %fenc, i64 8
  %add.ptr6.i = getelementptr inbounds i8, ptr %pix0, i64 8
  %call7.i = tail call i32 @x264_pixel_satd_8x4(ptr noundef nonnull readonly %add.ptr5.i, i32 noundef 16, ptr noundef nonnull readonly %add.ptr6.i, i32 noundef %i_stride)
  %add.ptr11.i = getelementptr inbounds i8, ptr %fenc, i64 72
  %add.ptr15.i = getelementptr inbounds i8, ptr %add.ptr6.i, i64 %idx.ext2.i
  %call16.i = tail call i32 @x264_pixel_satd_8x4(ptr noundef nonnull readonly %add.ptr11.i, i32 noundef 16, ptr noundef nonnull readonly %add.ptr15.i, i32 noundef %i_stride)
  %add17.i = add nuw nsw i32 %call4.i, %call.i
  %add.i = add nuw nsw i32 %add17.i, %call7.i
  %add18.i = add nuw nsw i32 %add.i, %call16.i
  store i32 %add18.i, ptr %scores, align 4
  %call.i16 = tail call i32 @x264_pixel_satd_8x4(ptr noundef readonly %fenc, i32 noundef 16, ptr noundef readonly %pix1, i32 noundef %i_stride)
  %add.ptr3.i20 = getelementptr inbounds i8, ptr %pix1, i64 %idx.ext2.i
  %call4.i21 = tail call i32 @x264_pixel_satd_8x4(ptr noundef nonnull readonly %add.ptr.i, i32 noundef 16, ptr noundef readonly %add.ptr3.i20, i32 noundef %i_stride)
  %add.ptr6.i23 = getelementptr inbounds i8, ptr %pix1, i64 8
  %call7.i24 = tail call i32 @x264_pixel_satd_8x4(ptr noundef nonnull readonly %add.ptr5.i, i32 noundef 16, ptr noundef nonnull readonly %add.ptr6.i23, i32 noundef %i_stride)
  %add.ptr15.i26 = getelementptr inbounds i8, ptr %add.ptr6.i23, i64 %idx.ext2.i
  %call16.i27 = tail call i32 @x264_pixel_satd_8x4(ptr noundef nonnull readonly %add.ptr11.i, i32 noundef 16, ptr noundef nonnull readonly %add.ptr15.i26, i32 noundef %i_stride)
  %add17.i28 = add nuw nsw i32 %call4.i21, %call.i16
  %add.i29 = add nuw nsw i32 %add17.i28, %call7.i24
  %add18.i30 = add nuw nsw i32 %add.i29, %call16.i27
  %arrayidx2 = getelementptr inbounds i8, ptr %scores, i64 4
  store i32 %add18.i30, ptr %arrayidx2, align 4
  %call.i31 = tail call i32 @x264_pixel_satd_8x4(ptr noundef readonly %fenc, i32 noundef 16, ptr noundef readonly %pix2, i32 noundef %i_stride)
  %add.ptr3.i35 = getelementptr inbounds i8, ptr %pix2, i64 %idx.ext2.i
  %call4.i36 = tail call i32 @x264_pixel_satd_8x4(ptr noundef nonnull readonly %add.ptr.i, i32 noundef 16, ptr noundef readonly %add.ptr3.i35, i32 noundef %i_stride)
  %add.ptr6.i38 = getelementptr inbounds i8, ptr %pix2, i64 8
  %call7.i39 = tail call i32 @x264_pixel_satd_8x4(ptr noundef nonnull readonly %add.ptr5.i, i32 noundef 16, ptr noundef nonnull readonly %add.ptr6.i38, i32 noundef %i_stride)
  %add.ptr15.i41 = getelementptr inbounds i8, ptr %add.ptr6.i38, i64 %idx.ext2.i
  %call16.i42 = tail call i32 @x264_pixel_satd_8x4(ptr noundef nonnull readonly %add.ptr11.i, i32 noundef 16, ptr noundef nonnull readonly %add.ptr15.i41, i32 noundef %i_stride)
  %add17.i43 = add nuw nsw i32 %call4.i36, %call.i31
  %add.i44 = add nuw nsw i32 %add17.i43, %call7.i39
  %add18.i45 = add nuw nsw i32 %add.i44, %call16.i42
  %arrayidx4 = getelementptr inbounds i8, ptr %scores, i64 8
  store i32 %add18.i45, ptr %arrayidx4, align 4
  %call.i46 = tail call i32 @x264_pixel_satd_8x4(ptr noundef readonly %fenc, i32 noundef 16, ptr noundef readonly %pix3, i32 noundef %i_stride)
  %add.ptr3.i50 = getelementptr inbounds i8, ptr %pix3, i64 %idx.ext2.i
  %call4.i51 = tail call i32 @x264_pixel_satd_8x4(ptr noundef nonnull readonly %add.ptr.i, i32 noundef 16, ptr noundef readonly %add.ptr3.i50, i32 noundef %i_stride)
  %add.ptr6.i53 = getelementptr inbounds i8, ptr %pix3, i64 8
  %call7.i54 = tail call i32 @x264_pixel_satd_8x4(ptr noundef nonnull readonly %add.ptr5.i, i32 noundef 16, ptr noundef nonnull readonly %add.ptr6.i53, i32 noundef %i_stride)
  %add.ptr15.i56 = getelementptr inbounds i8, ptr %add.ptr6.i53, i64 %idx.ext2.i
  %call16.i57 = tail call i32 @x264_pixel_satd_8x4(ptr noundef nonnull readonly %add.ptr11.i, i32 noundef 16, ptr noundef nonnull readonly %add.ptr15.i56, i32 noundef %i_stride)
  %add17.i58 = add nuw nsw i32 %call4.i51, %call.i46
  %add.i59 = add nuw nsw i32 %add17.i58, %call7.i54
  %add18.i60 = add nuw nsw i32 %add.i59, %call16.i57
  %arrayidx6 = getelementptr inbounds i8, ptr %scores, i64 12
  store i32 %add18.i60, ptr %arrayidx6, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @x264_pixel_satd_x4_8x16(ptr nocapture noundef readonly %fenc, ptr nocapture noundef readonly %pix0, ptr nocapture noundef readonly %pix1, ptr nocapture noundef readonly %pix2, ptr nocapture noundef readonly %pix3, i32 noundef %i_stride, ptr nocapture noundef writeonly %scores) #8 {
entry:
  %call.i = tail call i32 @x264_pixel_satd_8x4(ptr noundef readonly %fenc, i32 noundef 16, ptr noundef readonly %pix0, i32 noundef %i_stride)
  %add.ptr.i = getelementptr inbounds i8, ptr %fenc, i64 64
  %mul1.i = shl nsw i32 %i_stride, 2
  %idx.ext2.i = sext i32 %mul1.i to i64
  %add.ptr3.i = getelementptr inbounds i8, ptr %pix0, i64 %idx.ext2.i
  %call4.i = tail call i32 @x264_pixel_satd_8x4(ptr noundef nonnull readonly %add.ptr.i, i32 noundef 16, ptr noundef readonly %add.ptr3.i, i32 noundef %i_stride)
  %add.ptr7.i = getelementptr inbounds i8, ptr %fenc, i64 128
  %mul8.i = shl nsw i32 %i_stride, 3
  %idx.ext9.i = sext i32 %mul8.i to i64
  %add.ptr10.i = getelementptr inbounds i8, ptr %pix0, i64 %idx.ext9.i
  %call11.i = tail call i32 @x264_pixel_satd_8x4(ptr noundef nonnull readonly %add.ptr7.i, i32 noundef 16, ptr noundef readonly %add.ptr10.i, i32 noundef %i_stride)
  %add.ptr14.i = getelementptr inbounds i8, ptr %fenc, i64 192
  %mul15.i = mul nsw i32 %i_stride, 12
  %idx.ext16.i = sext i32 %mul15.i to i64
  %add.ptr17.i = getelementptr inbounds i8, ptr %pix0, i64 %idx.ext16.i
  %call18.i = tail call i32 @x264_pixel_satd_8x4(ptr noundef nonnull readonly %add.ptr14.i, i32 noundef 16, ptr noundef readonly %add.ptr17.i, i32 noundef %i_stride)
  %add19.i = add nuw nsw i32 %call4.i, %call.i
  %add.i = add nuw nsw i32 %add19.i, %call11.i
  %add20.i = add nuw nsw i32 %add.i, %call18.i
  store i32 %add20.i, ptr %scores, align 4
  %call.i16 = tail call i32 @x264_pixel_satd_8x4(ptr noundef readonly %fenc, i32 noundef 16, ptr noundef readonly %pix1, i32 noundef %i_stride)
  %add.ptr3.i20 = getelementptr inbounds i8, ptr %pix1, i64 %idx.ext2.i
  %call4.i21 = tail call i32 @x264_pixel_satd_8x4(ptr noundef nonnull readonly %add.ptr.i, i32 noundef 16, ptr noundef readonly %add.ptr3.i20, i32 noundef %i_stride)
  %add.ptr10.i25 = getelementptr inbounds i8, ptr %pix1, i64 %idx.ext9.i
  %call11.i26 = tail call i32 @x264_pixel_satd_8x4(ptr noundef nonnull readonly %add.ptr7.i, i32 noundef 16, ptr noundef readonly %add.ptr10.i25, i32 noundef %i_stride)
  %add.ptr17.i30 = getelementptr inbounds i8, ptr %pix1, i64 %idx.ext16.i
  %call18.i31 = tail call i32 @x264_pixel_satd_8x4(ptr noundef nonnull readonly %add.ptr14.i, i32 noundef 16, ptr noundef readonly %add.ptr17.i30, i32 noundef %i_stride)
  %add19.i32 = add nuw nsw i32 %call4.i21, %call.i16
  %add.i33 = add nuw nsw i32 %add19.i32, %call11.i26
  %add20.i34 = add nuw nsw i32 %add.i33, %call18.i31
  %arrayidx2 = getelementptr inbounds i8, ptr %scores, i64 4
  store i32 %add20.i34, ptr %arrayidx2, align 4
  %call.i35 = tail call i32 @x264_pixel_satd_8x4(ptr noundef readonly %fenc, i32 noundef 16, ptr noundef readonly %pix2, i32 noundef %i_stride)
  %add.ptr3.i39 = getelementptr inbounds i8, ptr %pix2, i64 %idx.ext2.i
  %call4.i40 = tail call i32 @x264_pixel_satd_8x4(ptr noundef nonnull readonly %add.ptr.i, i32 noundef 16, ptr noundef readonly %add.ptr3.i39, i32 noundef %i_stride)
  %add.ptr10.i44 = getelementptr inbounds i8, ptr %pix2, i64 %idx.ext9.i
  %call11.i45 = tail call i32 @x264_pixel_satd_8x4(ptr noundef nonnull readonly %add.ptr7.i, i32 noundef 16, ptr noundef readonly %add.ptr10.i44, i32 noundef %i_stride)
  %add.ptr17.i49 = getelementptr inbounds i8, ptr %pix2, i64 %idx.ext16.i
  %call18.i50 = tail call i32 @x264_pixel_satd_8x4(ptr noundef nonnull readonly %add.ptr14.i, i32 noundef 16, ptr noundef readonly %add.ptr17.i49, i32 noundef %i_stride)
  %add19.i51 = add nuw nsw i32 %call4.i40, %call.i35
  %add.i52 = add nuw nsw i32 %add19.i51, %call11.i45
  %add20.i53 = add nuw nsw i32 %add.i52, %call18.i50
  %arrayidx4 = getelementptr inbounds i8, ptr %scores, i64 8
  store i32 %add20.i53, ptr %arrayidx4, align 4
  %call.i54 = tail call i32 @x264_pixel_satd_8x4(ptr noundef readonly %fenc, i32 noundef 16, ptr noundef readonly %pix3, i32 noundef %i_stride)
  %add.ptr3.i58 = getelementptr inbounds i8, ptr %pix3, i64 %idx.ext2.i
  %call4.i59 = tail call i32 @x264_pixel_satd_8x4(ptr noundef nonnull readonly %add.ptr.i, i32 noundef 16, ptr noundef readonly %add.ptr3.i58, i32 noundef %i_stride)
  %add.ptr10.i63 = getelementptr inbounds i8, ptr %pix3, i64 %idx.ext9.i
  %call11.i64 = tail call i32 @x264_pixel_satd_8x4(ptr noundef nonnull readonly %add.ptr7.i, i32 noundef 16, ptr noundef readonly %add.ptr10.i63, i32 noundef %i_stride)
  %add.ptr17.i68 = getelementptr inbounds i8, ptr %pix3, i64 %idx.ext16.i
  %call18.i69 = tail call i32 @x264_pixel_satd_8x4(ptr noundef nonnull readonly %add.ptr14.i, i32 noundef 16, ptr noundef readonly %add.ptr17.i68, i32 noundef %i_stride)
  %add19.i70 = add nuw nsw i32 %call4.i59, %call.i54
  %add.i71 = add nuw nsw i32 %add19.i70, %call11.i64
  %add20.i72 = add nuw nsw i32 %add.i71, %call18.i69
  %arrayidx6 = getelementptr inbounds i8, ptr %scores, i64 12
  store i32 %add20.i72, ptr %arrayidx6, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @x264_pixel_satd_x4_8x8(ptr nocapture noundef readonly %fenc, ptr nocapture noundef readonly %pix0, ptr nocapture noundef readonly %pix1, ptr nocapture noundef readonly %pix2, ptr nocapture noundef readonly %pix3, i32 noundef %i_stride, ptr nocapture noundef writeonly %scores) #8 {
entry:
  %call.i = tail call i32 @x264_pixel_satd_8x4(ptr noundef readonly %fenc, i32 noundef 16, ptr noundef readonly %pix0, i32 noundef %i_stride)
  %add.ptr.i = getelementptr inbounds i8, ptr %fenc, i64 64
  %mul1.i = shl nsw i32 %i_stride, 2
  %idx.ext2.i = sext i32 %mul1.i to i64
  %add.ptr3.i = getelementptr inbounds i8, ptr %pix0, i64 %idx.ext2.i
  %call4.i = tail call i32 @x264_pixel_satd_8x4(ptr noundef nonnull readonly %add.ptr.i, i32 noundef 16, ptr noundef readonly %add.ptr3.i, i32 noundef %i_stride)
  %add.i = add nuw nsw i32 %call4.i, %call.i
  store i32 %add.i, ptr %scores, align 4
  %call.i16 = tail call i32 @x264_pixel_satd_8x4(ptr noundef readonly %fenc, i32 noundef 16, ptr noundef readonly %pix1, i32 noundef %i_stride)
  %add.ptr3.i20 = getelementptr inbounds i8, ptr %pix1, i64 %idx.ext2.i
  %call4.i21 = tail call i32 @x264_pixel_satd_8x4(ptr noundef nonnull readonly %add.ptr.i, i32 noundef 16, ptr noundef readonly %add.ptr3.i20, i32 noundef %i_stride)
  %add.i22 = add nuw nsw i32 %call4.i21, %call.i16
  %arrayidx2 = getelementptr inbounds i8, ptr %scores, i64 4
  store i32 %add.i22, ptr %arrayidx2, align 4
  %call.i23 = tail call i32 @x264_pixel_satd_8x4(ptr noundef readonly %fenc, i32 noundef 16, ptr noundef readonly %pix2, i32 noundef %i_stride)
  %add.ptr3.i27 = getelementptr inbounds i8, ptr %pix2, i64 %idx.ext2.i
  %call4.i28 = tail call i32 @x264_pixel_satd_8x4(ptr noundef nonnull readonly %add.ptr.i, i32 noundef 16, ptr noundef readonly %add.ptr3.i27, i32 noundef %i_stride)
  %add.i29 = add nuw nsw i32 %call4.i28, %call.i23
  %arrayidx4 = getelementptr inbounds i8, ptr %scores, i64 8
  store i32 %add.i29, ptr %arrayidx4, align 4
  %call.i30 = tail call i32 @x264_pixel_satd_8x4(ptr noundef readonly %fenc, i32 noundef 16, ptr noundef readonly %pix3, i32 noundef %i_stride)
  %add.ptr3.i34 = getelementptr inbounds i8, ptr %pix3, i64 %idx.ext2.i
  %call4.i35 = tail call i32 @x264_pixel_satd_8x4(ptr noundef nonnull readonly %add.ptr.i, i32 noundef 16, ptr noundef readonly %add.ptr3.i34, i32 noundef %i_stride)
  %add.i36 = add nuw nsw i32 %call4.i35, %call.i30
  %arrayidx6 = getelementptr inbounds i8, ptr %scores, i64 12
  store i32 %add.i36, ptr %arrayidx6, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @x264_pixel_satd_x4_8x4(ptr nocapture noundef readonly %fenc, ptr nocapture noundef readonly %pix0, ptr nocapture noundef readonly %pix1, ptr nocapture noundef readonly %pix2, ptr nocapture noundef readonly %pix3, i32 noundef %i_stride, ptr nocapture noundef writeonly %scores) #8 {
entry:
  %call = tail call i32 @x264_pixel_satd_8x4(ptr noundef %fenc, i32 noundef 16, ptr noundef %pix0, i32 noundef %i_stride)
  store i32 %call, ptr %scores, align 4
  %call1 = tail call i32 @x264_pixel_satd_8x4(ptr noundef %fenc, i32 noundef 16, ptr noundef %pix1, i32 noundef %i_stride)
  %arrayidx2 = getelementptr inbounds i8, ptr %scores, i64 4
  store i32 %call1, ptr %arrayidx2, align 4
  %call3 = tail call i32 @x264_pixel_satd_8x4(ptr noundef %fenc, i32 noundef 16, ptr noundef %pix2, i32 noundef %i_stride)
  %arrayidx4 = getelementptr inbounds i8, ptr %scores, i64 8
  store i32 %call3, ptr %arrayidx4, align 4
  %call5 = tail call i32 @x264_pixel_satd_8x4(ptr noundef %fenc, i32 noundef 16, ptr noundef %pix3, i32 noundef %i_stride)
  %arrayidx6 = getelementptr inbounds i8, ptr %scores, i64 12
  store i32 %call5, ptr %arrayidx6, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @x264_pixel_satd_x4_4x8(ptr nocapture noundef readonly %fenc, ptr nocapture noundef readonly %pix0, ptr nocapture noundef readonly %pix1, ptr nocapture noundef readonly %pix2, ptr nocapture noundef readonly %pix3, i32 noundef %i_stride, ptr nocapture noundef writeonly %scores) #8 {
entry:
  %call.i = tail call i32 @x264_pixel_satd_4x4(ptr noundef readonly %fenc, i32 noundef 16, ptr noundef readonly %pix0, i32 noundef %i_stride)
  %add.ptr.i = getelementptr inbounds i8, ptr %fenc, i64 64
  %mul1.i = shl nsw i32 %i_stride, 2
  %idx.ext2.i = sext i32 %mul1.i to i64
  %add.ptr3.i = getelementptr inbounds i8, ptr %pix0, i64 %idx.ext2.i
  %call4.i = tail call i32 @x264_pixel_satd_4x4(ptr noundef nonnull readonly %add.ptr.i, i32 noundef 16, ptr noundef readonly %add.ptr3.i, i32 noundef %i_stride)
  %add.i = add nsw i32 %call4.i, %call.i
  store i32 %add.i, ptr %scores, align 4
  %call.i16 = tail call i32 @x264_pixel_satd_4x4(ptr noundef readonly %fenc, i32 noundef 16, ptr noundef readonly %pix1, i32 noundef %i_stride)
  %add.ptr3.i20 = getelementptr inbounds i8, ptr %pix1, i64 %idx.ext2.i
  %call4.i21 = tail call i32 @x264_pixel_satd_4x4(ptr noundef nonnull readonly %add.ptr.i, i32 noundef 16, ptr noundef readonly %add.ptr3.i20, i32 noundef %i_stride)
  %add.i22 = add nsw i32 %call4.i21, %call.i16
  %arrayidx2 = getelementptr inbounds i8, ptr %scores, i64 4
  store i32 %add.i22, ptr %arrayidx2, align 4
  %call.i23 = tail call i32 @x264_pixel_satd_4x4(ptr noundef readonly %fenc, i32 noundef 16, ptr noundef readonly %pix2, i32 noundef %i_stride)
  %add.ptr3.i27 = getelementptr inbounds i8, ptr %pix2, i64 %idx.ext2.i
  %call4.i28 = tail call i32 @x264_pixel_satd_4x4(ptr noundef nonnull readonly %add.ptr.i, i32 noundef 16, ptr noundef readonly %add.ptr3.i27, i32 noundef %i_stride)
  %add.i29 = add nsw i32 %call4.i28, %call.i23
  %arrayidx4 = getelementptr inbounds i8, ptr %scores, i64 8
  store i32 %add.i29, ptr %arrayidx4, align 4
  %call.i30 = tail call i32 @x264_pixel_satd_4x4(ptr noundef readonly %fenc, i32 noundef 16, ptr noundef readonly %pix3, i32 noundef %i_stride)
  %add.ptr3.i34 = getelementptr inbounds i8, ptr %pix3, i64 %idx.ext2.i
  %call4.i35 = tail call i32 @x264_pixel_satd_4x4(ptr noundef nonnull readonly %add.ptr.i, i32 noundef 16, ptr noundef readonly %add.ptr3.i34, i32 noundef %i_stride)
  %add.i36 = add nsw i32 %call4.i35, %call.i30
  %arrayidx6 = getelementptr inbounds i8, ptr %scores, i64 12
  store i32 %add.i36, ptr %arrayidx6, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @x264_pixel_satd_x4_4x4(ptr nocapture noundef readonly %fenc, ptr nocapture noundef readonly %pix0, ptr nocapture noundef readonly %pix1, ptr nocapture noundef readonly %pix2, ptr nocapture noundef readonly %pix3, i32 noundef %i_stride, ptr nocapture noundef writeonly %scores) #8 {
entry:
  %call = tail call i32 @x264_pixel_satd_4x4(ptr noundef %fenc, i32 noundef 16, ptr noundef %pix0, i32 noundef %i_stride)
  store i32 %call, ptr %scores, align 4
  %call1 = tail call i32 @x264_pixel_satd_4x4(ptr noundef %fenc, i32 noundef 16, ptr noundef %pix1, i32 noundef %i_stride)
  %arrayidx2 = getelementptr inbounds i8, ptr %scores, i64 4
  store i32 %call1, ptr %arrayidx2, align 4
  %call3 = tail call i32 @x264_pixel_satd_4x4(ptr noundef %fenc, i32 noundef 16, ptr noundef %pix2, i32 noundef %i_stride)
  %arrayidx4 = getelementptr inbounds i8, ptr %scores, i64 8
  store i32 %call3, ptr %arrayidx4, align 4
  %call5 = tail call i32 @x264_pixel_satd_4x4(ptr noundef %fenc, i32 noundef 16, ptr noundef %pix3, i32 noundef %i_stride)
  %arrayidx6 = getelementptr inbounds i8, ptr %scores, i64 12
  store i32 %call5, ptr %arrayidx6, align 4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define internal range(i64 0, 4611686016279904256) i64 @x264_pixel_hadamard_ac_16x16(ptr nocapture noundef readonly %pix, i32 noundef %stride) #4 {
entry:
  %call = tail call fastcc i64 @pixel_hadamard_ac(ptr noundef %pix, i32 noundef %stride)
  %add.ptr = getelementptr inbounds i8, ptr %pix, i64 8
  %call1 = tail call fastcc i64 @pixel_hadamard_ac(ptr noundef nonnull %add.ptr, i32 noundef %stride)
  %add = add i64 %call1, %call
  %mul = shl nsw i32 %stride, 3
  %idx.ext = sext i32 %mul to i64
  %add.ptr2 = getelementptr inbounds i8, ptr %pix, i64 %idx.ext
  %call3 = tail call fastcc i64 @pixel_hadamard_ac(ptr noundef %add.ptr2, i32 noundef %stride)
  %add4 = add i64 %add, %call3
  %add.ptr8 = getelementptr inbounds i8, ptr %add.ptr2, i64 8
  %call9 = tail call fastcc i64 @pixel_hadamard_ac(ptr noundef nonnull %add.ptr8, i32 noundef %stride)
  %add10 = add i64 %add4, %call9
  %0 = lshr i64 %add10, 2
  %shl = and i64 %0, 4611686014132420608
  %shr11 = lshr i64 %add10, 1
  %conv12 = and i64 %shr11, 2147483647
  %add13 = or disjoint i64 %shl, %conv12
  ret i64 %add13
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define internal range(i64 0, 4611686016279904256) i64 @x264_pixel_hadamard_ac_16x8(ptr nocapture noundef readonly %pix, i32 noundef %stride) #4 {
entry:
  %call = tail call fastcc i64 @pixel_hadamard_ac(ptr noundef %pix, i32 noundef %stride)
  %add.ptr = getelementptr inbounds i8, ptr %pix, i64 8
  %call1 = tail call fastcc i64 @pixel_hadamard_ac(ptr noundef nonnull %add.ptr, i32 noundef %stride)
  %add = add i64 %call1, %call
  %0 = lshr i64 %add, 2
  %shl = and i64 %0, 4611686014132420608
  %shr2 = lshr i64 %add, 1
  %conv3 = and i64 %shr2, 2147483647
  %add4 = or disjoint i64 %shl, %conv3
  ret i64 %add4
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define internal range(i64 0, 4611686016279904256) i64 @x264_pixel_hadamard_ac_8x16(ptr nocapture noundef readonly %pix, i32 noundef %stride) #4 {
entry:
  %call = tail call fastcc i64 @pixel_hadamard_ac(ptr noundef %pix, i32 noundef %stride)
  %mul = shl nsw i32 %stride, 3
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, ptr %pix, i64 %idx.ext
  %call1 = tail call fastcc i64 @pixel_hadamard_ac(ptr noundef %add.ptr, i32 noundef %stride)
  %add = add i64 %call1, %call
  %0 = lshr i64 %add, 2
  %shl = and i64 %0, 4611686014132420608
  %shr2 = lshr i64 %add, 1
  %conv3 = and i64 %shr2, 2147483647
  %add4 = or disjoint i64 %shl, %conv3
  ret i64 %add4
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define internal range(i64 0, 4611686016279904256) i64 @x264_pixel_hadamard_ac_8x8(ptr nocapture noundef readonly %pix, i32 noundef %stride) #4 {
entry:
  %call = tail call fastcc i64 @pixel_hadamard_ac(ptr noundef %pix, i32 noundef %stride)
  %0 = lshr i64 %call, 2
  %shl = and i64 %0, 4611686014132420608
  %shr1 = lshr i64 %call, 1
  %conv2 = and i64 %shr1, 2147483647
  %add = or disjoint i64 %shl, %conv2
  ret i64 %add
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal i32 @x264_pixel_ads4(ptr nocapture noundef readonly %enc_dc, ptr nocapture noundef readonly %sums, i32 noundef %delta, ptr nocapture noundef readonly %cost_mvx, ptr nocapture noundef writeonly %mvs, i32 noundef %width, i32 noundef %thresh) #7 {
entry:
  %cmp40 = icmp sgt i32 %width, 0
  br i1 %cmp40, label %for.body.lr.ph, label %for.cond.cleanup

for.body.lr.ph:                                   ; preds = %entry
  %idxprom = sext i32 %delta to i64
  %add12 = add nsw i32 %delta, 8
  %idxprom13 = sext i32 %add12 to i64
  %wide.trip.count = zext nneg i32 %width to i64
  br label %for.body

for.cond.cleanup:                                 ; preds = %if.end, %entry
  %nmv.0.lcssa = phi i32 [ 0, %entry ], [ %nmv.1, %if.end ]
  ret i32 %nmv.0.lcssa

for.body:                                         ; preds = %for.body.lr.ph, %if.end
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %if.end ]
  %sums.addr.043 = phi ptr [ %sums, %for.body.lr.ph ], [ %incdec.ptr, %if.end ]
  %nmv.041 = phi i32 [ 0, %for.body.lr.ph ], [ %nmv.1, %if.end ]
  %0 = load i16, ptr %sums.addr.043, align 2
  %arrayidx3 = getelementptr inbounds i8, ptr %sums.addr.043, i64 16
  %1 = load i16, ptr %arrayidx3, align 2
  %arrayidx7 = getelementptr inbounds i16, ptr %sums.addr.043, i64 %idxprom
  %2 = load i16, ptr %arrayidx7, align 2
  %arrayidx14 = getelementptr inbounds i16, ptr %sums.addr.043, i64 %idxprom13
  %3 = load i16, ptr %arrayidx14, align 2
  %4 = load <4 x i32>, ptr %enc_dc, align 4
  %5 = insertelement <4 x i16> poison, i16 %0, i64 0
  %6 = insertelement <4 x i16> %5, i16 %1, i64 1
  %7 = insertelement <4 x i16> %6, i16 %2, i64 2
  %8 = insertelement <4 x i16> %7, i16 %3, i64 3
  %9 = zext <4 x i16> %8 to <4 x i32>
  %10 = sub nsw <4 x i32> %4, %9
  %11 = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %10, i1 true)
  %arrayidx19 = getelementptr inbounds i16, ptr %cost_mvx, i64 %indvars.iv
  %12 = load i16, ptr %arrayidx19, align 2
  %conv20 = zext i16 %12 to i32
  %13 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %11)
  %op.rdx = add i32 %13, %conv20
  %cmp22 = icmp slt i32 %op.rdx, %thresh
  br i1 %cmp22, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %conv24 = trunc i64 %indvars.iv to i16
  %inc = add nsw i32 %nmv.041, 1
  %idxprom25 = sext i32 %nmv.041 to i64
  %arrayidx26 = getelementptr inbounds i16, ptr %mvs, i64 %idxprom25
  store i16 %conv24, ptr %arrayidx26, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %nmv.1 = phi i32 [ %inc, %if.then ], [ %nmv.041, %for.body ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %incdec.ptr = getelementptr inbounds i8, ptr %sums.addr.043, i64 2
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal i32 @x264_pixel_ads2(ptr nocapture noundef readonly %enc_dc, ptr nocapture noundef readonly %sums, i32 noundef %delta, ptr nocapture noundef readonly %cost_mvx, ptr nocapture noundef writeonly %mvs, i32 noundef %width, i32 noundef %thresh) #7 {
entry:
  %cmp23 = icmp sgt i32 %width, 0
  br i1 %cmp23, label %for.body.lr.ph, label %for.cond.cleanup

for.body.lr.ph:                                   ; preds = %entry
  %arrayidx2 = getelementptr inbounds i8, ptr %enc_dc, i64 4
  %idxprom = sext i32 %delta to i64
  %wide.trip.count = zext nneg i32 %width to i64
  br label %for.body

for.cond.cleanup:                                 ; preds = %if.end, %entry
  %nmv.0.lcssa = phi i32 [ 0, %entry ], [ %nmv.1, %if.end ]
  ret i32 %nmv.0.lcssa

for.body:                                         ; preds = %for.body.lr.ph, %if.end
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %if.end ]
  %sums.addr.026 = phi ptr [ %sums, %for.body.lr.ph ], [ %incdec.ptr, %if.end ]
  %nmv.024 = phi i32 [ 0, %for.body.lr.ph ], [ %nmv.1, %if.end ]
  %0 = load i32, ptr %enc_dc, align 4
  %1 = load i16, ptr %sums.addr.026, align 2
  %conv = zext i16 %1 to i32
  %sub = sub nsw i32 %0, %conv
  %2 = tail call i32 @llvm.abs.i32(i32 %sub, i1 true)
  %3 = load i32, ptr %arrayidx2, align 4
  %arrayidx3 = getelementptr inbounds i16, ptr %sums.addr.026, i64 %idxprom
  %4 = load i16, ptr %arrayidx3, align 2
  %conv4 = zext i16 %4 to i32
  %sub5 = sub nsw i32 %3, %conv4
  %5 = tail call i32 @llvm.abs.i32(i32 %sub5, i1 true)
  %arrayidx7 = getelementptr inbounds i16, ptr %cost_mvx, i64 %indvars.iv
  %6 = load i16, ptr %arrayidx7, align 2
  %conv8 = zext i16 %6 to i32
  %add = add nuw nsw i32 %2, %conv8
  %add9 = add nuw nsw i32 %add, %5
  %cmp10 = icmp slt i32 %add9, %thresh
  br i1 %cmp10, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %conv12 = trunc i64 %indvars.iv to i16
  %inc = add nsw i32 %nmv.024, 1
  %idxprom13 = sext i32 %nmv.024 to i64
  %arrayidx14 = getelementptr inbounds i16, ptr %mvs, i64 %idxprom13
  store i16 %conv12, ptr %arrayidx14, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %nmv.1 = phi i32 [ %inc, %if.then ], [ %nmv.024, %for.body ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %incdec.ptr = getelementptr inbounds i8, ptr %sums.addr.026, i64 2
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal i32 @x264_pixel_ads1(ptr nocapture noundef readonly %enc_dc, ptr nocapture noundef readonly %sums, i32 %delta, ptr nocapture noundef readonly %cost_mvx, ptr nocapture noundef writeonly %mvs, i32 noundef %width, i32 noundef %thresh) #7 {
entry:
  %cmp15 = icmp sgt i32 %width, 0
  br i1 %cmp15, label %for.body.preheader, label %for.cond.cleanup

for.body.preheader:                               ; preds = %entry
  %wide.trip.count = zext nneg i32 %width to i64
  br label %for.body

for.cond.cleanup:                                 ; preds = %if.end, %entry
  %nmv.0.lcssa = phi i32 [ 0, %entry ], [ %nmv.1, %if.end ]
  ret i32 %nmv.0.lcssa

for.body:                                         ; preds = %for.body.preheader, %if.end
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %if.end ]
  %sums.addr.018 = phi ptr [ %sums, %for.body.preheader ], [ %incdec.ptr, %if.end ]
  %nmv.016 = phi i32 [ 0, %for.body.preheader ], [ %nmv.1, %if.end ]
  %0 = load i32, ptr %enc_dc, align 4
  %1 = load i16, ptr %sums.addr.018, align 2
  %conv = zext i16 %1 to i32
  %sub = sub nsw i32 %0, %conv
  %2 = tail call i32 @llvm.abs.i32(i32 %sub, i1 true)
  %arrayidx2 = getelementptr inbounds i16, ptr %cost_mvx, i64 %indvars.iv
  %3 = load i16, ptr %arrayidx2, align 2
  %conv3 = zext i16 %3 to i32
  %add = add nuw nsw i32 %2, %conv3
  %cmp4 = icmp slt i32 %add, %thresh
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %conv6 = trunc i64 %indvars.iv to i16
  %inc = add nsw i32 %nmv.016, 1
  %idxprom7 = sext i32 %nmv.016 to i64
  %arrayidx8 = getelementptr inbounds i16, ptr %mvs, i64 %idxprom7
  store i16 %conv6, ptr %arrayidx8, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %nmv.1 = phi i32 [ %inc, %if.then ], [ %nmv.016, %for.body ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %incdec.ptr = getelementptr inbounds i8, ptr %sums.addr.018, i64 2
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define internal range(i32 -536870912, 536870912) i32 @x264_pixel_sa8d_16x16(ptr nocapture noundef readonly %pix1, i32 noundef %i_pix1, ptr nocapture noundef readonly %pix2, i32 noundef %i_pix2) #4 {
entry:
  %call = tail call fastcc i32 @sa8d_8x8(ptr noundef %pix1, i32 noundef %i_pix1, ptr noundef %pix2, i32 noundef %i_pix2)
  %add.ptr = getelementptr inbounds i8, ptr %pix1, i64 8
  %add.ptr1 = getelementptr inbounds i8, ptr %pix2, i64 8
  %call2 = tail call fastcc i32 @sa8d_8x8(ptr noundef nonnull %add.ptr, i32 noundef %i_pix1, ptr noundef nonnull %add.ptr1, i32 noundef %i_pix2)
  %mul = shl nsw i32 %i_pix1, 3
  %idx.ext = sext i32 %mul to i64
  %add.ptr3 = getelementptr inbounds i8, ptr %pix1, i64 %idx.ext
  %mul4 = shl nsw i32 %i_pix2, 3
  %idx.ext5 = sext i32 %mul4 to i64
  %add.ptr6 = getelementptr inbounds i8, ptr %pix2, i64 %idx.ext5
  %call7 = tail call fastcc i32 @sa8d_8x8(ptr noundef %add.ptr3, i32 noundef %i_pix1, ptr noundef %add.ptr6, i32 noundef %i_pix2)
  %add.ptr12 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.ext
  %add.ptr16 = getelementptr inbounds i8, ptr %add.ptr1, i64 %idx.ext5
  %call17 = tail call fastcc i32 @sa8d_8x8(ptr noundef nonnull %add.ptr12, i32 noundef %i_pix1, ptr noundef nonnull %add.ptr16, i32 noundef %i_pix2)
  %add = add i32 %call, 2
  %add8 = add i32 %add, %call2
  %add18 = add i32 %add8, %call7
  %add19 = add i32 %add18, %call17
  %shr = ashr i32 %add19, 2
  ret i32 %shr
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define internal range(i32 -536870912, 536870912) i32 @x264_pixel_sa8d_8x8(ptr nocapture noundef readonly %pix1, i32 noundef %i_pix1, ptr nocapture noundef readonly %pix2, i32 noundef %i_pix2) #4 {
entry:
  %call = tail call fastcc i32 @sa8d_8x8(ptr noundef %pix1, i32 noundef %i_pix1, ptr noundef %pix2, i32 noundef %i_pix2)
  %add = add nsw i32 %call, 2
  %shr = ashr i32 %add, 2
  ret i32 %shr
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define internal i64 @x264_pixel_var_16x16(ptr nocapture noundef readonly %pix, i32 noundef %i_stride) #4 {
entry:
  %idx.ext = sext i32 %i_stride to i64
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %entry, %for.cond1.preheader
  %y.034 = phi i32 [ 0, %entry ], [ %inc13, %for.cond1.preheader ]
  %sqr.033 = phi i32 [ 0, %entry ], [ %add11.15, %for.cond1.preheader ]
  %sum.032 = phi i32 [ 0, %entry ], [ %add.15, %for.cond1.preheader ]
  %pix.addr.031 = phi ptr [ %pix, %entry ], [ %add.ptr, %for.cond1.preheader ]
  %0 = load i8, ptr %pix.addr.031, align 1
  %conv = zext i8 %0 to i32
  %add = add i32 %sum.032, %conv
  %mul = mul nuw nsw i32 %conv, %conv
  %add11 = add i32 %mul, %sqr.033
  %arrayidx.1 = getelementptr inbounds i8, ptr %pix.addr.031, i64 1
  %1 = load i8, ptr %arrayidx.1, align 1
  %conv.1 = zext i8 %1 to i32
  %add.1 = add i32 %add, %conv.1
  %mul.1 = mul nuw nsw i32 %conv.1, %conv.1
  %add11.1 = add i32 %mul.1, %add11
  %arrayidx.2 = getelementptr inbounds i8, ptr %pix.addr.031, i64 2
  %2 = load i8, ptr %arrayidx.2, align 1
  %conv.2 = zext i8 %2 to i32
  %add.2 = add i32 %add.1, %conv.2
  %mul.2 = mul nuw nsw i32 %conv.2, %conv.2
  %add11.2 = add i32 %mul.2, %add11.1
  %arrayidx.3 = getelementptr inbounds i8, ptr %pix.addr.031, i64 3
  %3 = load i8, ptr %arrayidx.3, align 1
  %conv.3 = zext i8 %3 to i32
  %add.3 = add i32 %add.2, %conv.3
  %mul.3 = mul nuw nsw i32 %conv.3, %conv.3
  %add11.3 = add i32 %mul.3, %add11.2
  %arrayidx.4 = getelementptr inbounds i8, ptr %pix.addr.031, i64 4
  %4 = load i8, ptr %arrayidx.4, align 1
  %conv.4 = zext i8 %4 to i32
  %add.4 = add i32 %add.3, %conv.4
  %mul.4 = mul nuw nsw i32 %conv.4, %conv.4
  %add11.4 = add i32 %mul.4, %add11.3
  %arrayidx.5 = getelementptr inbounds i8, ptr %pix.addr.031, i64 5
  %5 = load i8, ptr %arrayidx.5, align 1
  %conv.5 = zext i8 %5 to i32
  %add.5 = add i32 %add.4, %conv.5
  %mul.5 = mul nuw nsw i32 %conv.5, %conv.5
  %add11.5 = add i32 %mul.5, %add11.4
  %arrayidx.6 = getelementptr inbounds i8, ptr %pix.addr.031, i64 6
  %6 = load i8, ptr %arrayidx.6, align 1
  %conv.6 = zext i8 %6 to i32
  %add.6 = add i32 %add.5, %conv.6
  %mul.6 = mul nuw nsw i32 %conv.6, %conv.6
  %add11.6 = add i32 %mul.6, %add11.5
  %arrayidx.7 = getelementptr inbounds i8, ptr %pix.addr.031, i64 7
  %7 = load i8, ptr %arrayidx.7, align 1
  %conv.7 = zext i8 %7 to i32
  %add.7 = add i32 %add.6, %conv.7
  %mul.7 = mul nuw nsw i32 %conv.7, %conv.7
  %add11.7 = add i32 %mul.7, %add11.6
  %arrayidx.8 = getelementptr inbounds i8, ptr %pix.addr.031, i64 8
  %8 = load i8, ptr %arrayidx.8, align 1
  %conv.8 = zext i8 %8 to i32
  %add.8 = add i32 %add.7, %conv.8
  %mul.8 = mul nuw nsw i32 %conv.8, %conv.8
  %add11.8 = add i32 %mul.8, %add11.7
  %arrayidx.9 = getelementptr inbounds i8, ptr %pix.addr.031, i64 9
  %9 = load i8, ptr %arrayidx.9, align 1
  %conv.9 = zext i8 %9 to i32
  %add.9 = add i32 %add.8, %conv.9
  %mul.9 = mul nuw nsw i32 %conv.9, %conv.9
  %add11.9 = add i32 %mul.9, %add11.8
  %arrayidx.10 = getelementptr inbounds i8, ptr %pix.addr.031, i64 10
  %10 = load i8, ptr %arrayidx.10, align 1
  %conv.10 = zext i8 %10 to i32
  %add.10 = add i32 %add.9, %conv.10
  %mul.10 = mul nuw nsw i32 %conv.10, %conv.10
  %add11.10 = add i32 %mul.10, %add11.9
  %arrayidx.11 = getelementptr inbounds i8, ptr %pix.addr.031, i64 11
  %11 = load i8, ptr %arrayidx.11, align 1
  %conv.11 = zext i8 %11 to i32
  %add.11 = add i32 %add.10, %conv.11
  %mul.11 = mul nuw nsw i32 %conv.11, %conv.11
  %add11.11 = add i32 %mul.11, %add11.10
  %arrayidx.12 = getelementptr inbounds i8, ptr %pix.addr.031, i64 12
  %12 = load i8, ptr %arrayidx.12, align 1
  %conv.12 = zext i8 %12 to i32
  %add.12 = add i32 %add.11, %conv.12
  %mul.12 = mul nuw nsw i32 %conv.12, %conv.12
  %add11.12 = add i32 %mul.12, %add11.11
  %arrayidx.13 = getelementptr inbounds i8, ptr %pix.addr.031, i64 13
  %13 = load i8, ptr %arrayidx.13, align 1
  %conv.13 = zext i8 %13 to i32
  %add.13 = add i32 %add.12, %conv.13
  %mul.13 = mul nuw nsw i32 %conv.13, %conv.13
  %add11.13 = add i32 %mul.13, %add11.12
  %arrayidx.14 = getelementptr inbounds i8, ptr %pix.addr.031, i64 14
  %14 = load i8, ptr %arrayidx.14, align 1
  %conv.14 = zext i8 %14 to i32
  %add.14 = add i32 %add.13, %conv.14
  %mul.14 = mul nuw nsw i32 %conv.14, %conv.14
  %add11.14 = add i32 %mul.14, %add11.13
  %arrayidx.15 = getelementptr inbounds i8, ptr %pix.addr.031, i64 15
  %15 = load i8, ptr %arrayidx.15, align 1
  %conv.15 = zext i8 %15 to i32
  %add.15 = add i32 %add.14, %conv.15
  %mul.15 = mul nuw nsw i32 %conv.15, %conv.15
  %add11.15 = add i32 %mul.15, %add11.14
  %add.ptr = getelementptr inbounds i8, ptr %pix.addr.031, i64 %idx.ext
  %inc13 = add nuw nsw i32 %y.034, 1
  %exitcond.not = icmp eq i32 %inc13, 16
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.cond1.preheader

for.cond.cleanup:                                 ; preds = %for.cond1.preheader
  %conv15 = zext i32 %add.15 to i64
  %conv16 = zext i32 %add11.15 to i64
  %shl = shl nuw i64 %conv16, 32
  %add17 = or disjoint i64 %shl, %conv15
  ret i64 %add17
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal i64 @x264_pixel_var_8x8(ptr nocapture noundef readonly %pix, i32 noundef %i_stride) #6 {
entry:
  %idx.ext = sext i32 %i_stride to i64
  %0 = load i8, ptr %pix, align 1
  %conv = zext i8 %0 to i32
  %mul = mul nuw nsw i32 %conv, %conv
  %arrayidx.1 = getelementptr inbounds i8, ptr %pix, i64 1
  %1 = load i8, ptr %arrayidx.1, align 1
  %conv.1 = zext i8 %1 to i32
  %add.1 = add nuw nsw i32 %conv, %conv.1
  %mul.1 = mul nuw nsw i32 %conv.1, %conv.1
  %add11.1 = add nuw nsw i32 %mul.1, %mul
  %arrayidx.2 = getelementptr inbounds i8, ptr %pix, i64 2
  %2 = load i8, ptr %arrayidx.2, align 1
  %conv.2 = zext i8 %2 to i32
  %add.2 = add nuw nsw i32 %add.1, %conv.2
  %mul.2 = mul nuw nsw i32 %conv.2, %conv.2
  %add11.2 = add nuw nsw i32 %mul.2, %add11.1
  %arrayidx.3 = getelementptr inbounds i8, ptr %pix, i64 3
  %3 = load i8, ptr %arrayidx.3, align 1
  %conv.3 = zext i8 %3 to i32
  %add.3 = add nuw nsw i32 %add.2, %conv.3
  %mul.3 = mul nuw nsw i32 %conv.3, %conv.3
  %add11.3 = add nuw nsw i32 %mul.3, %add11.2
  %arrayidx.4 = getelementptr inbounds i8, ptr %pix, i64 4
  %4 = load i8, ptr %arrayidx.4, align 1
  %conv.4 = zext i8 %4 to i32
  %add.4 = add nuw nsw i32 %add.3, %conv.4
  %mul.4 = mul nuw nsw i32 %conv.4, %conv.4
  %add11.4 = add nuw nsw i32 %mul.4, %add11.3
  %arrayidx.5 = getelementptr inbounds i8, ptr %pix, i64 5
  %5 = load i8, ptr %arrayidx.5, align 1
  %conv.5 = zext i8 %5 to i32
  %add.5 = add nuw nsw i32 %add.4, %conv.5
  %mul.5 = mul nuw nsw i32 %conv.5, %conv.5
  %add11.5 = add nuw nsw i32 %mul.5, %add11.4
  %arrayidx.6 = getelementptr inbounds i8, ptr %pix, i64 6
  %6 = load i8, ptr %arrayidx.6, align 1
  %conv.6 = zext i8 %6 to i32
  %add.6 = add nuw nsw i32 %add.5, %conv.6
  %mul.6 = mul nuw nsw i32 %conv.6, %conv.6
  %add11.6 = add nuw nsw i32 %mul.6, %add11.5
  %arrayidx.7 = getelementptr inbounds i8, ptr %pix, i64 7
  %7 = load i8, ptr %arrayidx.7, align 1
  %conv.7 = zext i8 %7 to i32
  %add.7 = add nuw nsw i32 %add.6, %conv.7
  %mul.7 = mul nuw nsw i32 %conv.7, %conv.7
  %add11.7 = add nuw nsw i32 %mul.7, %add11.6
  %add.ptr = getelementptr inbounds i8, ptr %pix, i64 %idx.ext
  %8 = load i8, ptr %add.ptr, align 1
  %conv.136 = zext i8 %8 to i32
  %add.137 = add nuw nsw i32 %add.7, %conv.136
  %mul.138 = mul nuw nsw i32 %conv.136, %conv.136
  %add11.139 = add nuw nsw i32 %mul.138, %add11.7
  %arrayidx.1.1 = getelementptr inbounds i8, ptr %add.ptr, i64 1
  %9 = load i8, ptr %arrayidx.1.1, align 1
  %conv.1.1 = zext i8 %9 to i32
  %add.1.1 = add nuw nsw i32 %add.137, %conv.1.1
  %mul.1.1 = mul nuw nsw i32 %conv.1.1, %conv.1.1
  %add11.1.1 = add nuw nsw i32 %mul.1.1, %add11.139
  %arrayidx.2.1 = getelementptr inbounds i8, ptr %add.ptr, i64 2
  %10 = load i8, ptr %arrayidx.2.1, align 1
  %conv.2.1 = zext i8 %10 to i32
  %add.2.1 = add nuw nsw i32 %add.1.1, %conv.2.1
  %mul.2.1 = mul nuw nsw i32 %conv.2.1, %conv.2.1
  %add11.2.1 = add nuw nsw i32 %mul.2.1, %add11.1.1
  %arrayidx.3.1 = getelementptr inbounds i8, ptr %add.ptr, i64 3
  %11 = load i8, ptr %arrayidx.3.1, align 1
  %conv.3.1 = zext i8 %11 to i32
  %add.3.1 = add nuw nsw i32 %add.2.1, %conv.3.1
  %mul.3.1 = mul nuw nsw i32 %conv.3.1, %conv.3.1
  %add11.3.1 = add nuw nsw i32 %mul.3.1, %add11.2.1
  %arrayidx.4.1 = getelementptr inbounds i8, ptr %add.ptr, i64 4
  %12 = load i8, ptr %arrayidx.4.1, align 1
  %conv.4.1 = zext i8 %12 to i32
  %add.4.1 = add nuw nsw i32 %add.3.1, %conv.4.1
  %mul.4.1 = mul nuw nsw i32 %conv.4.1, %conv.4.1
  %add11.4.1 = add nuw nsw i32 %mul.4.1, %add11.3.1
  %arrayidx.5.1 = getelementptr inbounds i8, ptr %add.ptr, i64 5
  %13 = load i8, ptr %arrayidx.5.1, align 1
  %conv.5.1 = zext i8 %13 to i32
  %add.5.1 = add nuw nsw i32 %add.4.1, %conv.5.1
  %mul.5.1 = mul nuw nsw i32 %conv.5.1, %conv.5.1
  %add11.5.1 = add nuw nsw i32 %mul.5.1, %add11.4.1
  %arrayidx.6.1 = getelementptr inbounds i8, ptr %add.ptr, i64 6
  %14 = load i8, ptr %arrayidx.6.1, align 1
  %conv.6.1 = zext i8 %14 to i32
  %add.6.1 = add nuw nsw i32 %add.5.1, %conv.6.1
  %mul.6.1 = mul nuw nsw i32 %conv.6.1, %conv.6.1
  %add11.6.1 = add nuw nsw i32 %mul.6.1, %add11.5.1
  %arrayidx.7.1 = getelementptr inbounds i8, ptr %add.ptr, i64 7
  %15 = load i8, ptr %arrayidx.7.1, align 1
  %conv.7.1 = zext i8 %15 to i32
  %add.7.1 = add nuw nsw i32 %add.6.1, %conv.7.1
  %mul.7.1 = mul nuw nsw i32 %conv.7.1, %conv.7.1
  %add11.7.1 = add nuw nsw i32 %mul.7.1, %add11.6.1
  %add.ptr.1 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.ext
  %16 = load i8, ptr %add.ptr.1, align 1
  %conv.240 = zext i8 %16 to i32
  %add.241 = add nuw nsw i32 %add.7.1, %conv.240
  %mul.242 = mul nuw nsw i32 %conv.240, %conv.240
  %add11.243 = add nuw nsw i32 %mul.242, %add11.7.1
  %arrayidx.1.2 = getelementptr inbounds i8, ptr %add.ptr.1, i64 1
  %17 = load i8, ptr %arrayidx.1.2, align 1
  %conv.1.2 = zext i8 %17 to i32
  %add.1.2 = add nuw nsw i32 %add.241, %conv.1.2
  %mul.1.2 = mul nuw nsw i32 %conv.1.2, %conv.1.2
  %add11.1.2 = add nuw nsw i32 %mul.1.2, %add11.243
  %arrayidx.2.2 = getelementptr inbounds i8, ptr %add.ptr.1, i64 2
  %18 = load i8, ptr %arrayidx.2.2, align 1
  %conv.2.2 = zext i8 %18 to i32
  %add.2.2 = add nuw nsw i32 %add.1.2, %conv.2.2
  %mul.2.2 = mul nuw nsw i32 %conv.2.2, %conv.2.2
  %add11.2.2 = add nuw nsw i32 %mul.2.2, %add11.1.2
  %arrayidx.3.2 = getelementptr inbounds i8, ptr %add.ptr.1, i64 3
  %19 = load i8, ptr %arrayidx.3.2, align 1
  %conv.3.2 = zext i8 %19 to i32
  %add.3.2 = add nuw nsw i32 %add.2.2, %conv.3.2
  %mul.3.2 = mul nuw nsw i32 %conv.3.2, %conv.3.2
  %add11.3.2 = add nuw nsw i32 %mul.3.2, %add11.2.2
  %arrayidx.4.2 = getelementptr inbounds i8, ptr %add.ptr.1, i64 4
  %20 = load i8, ptr %arrayidx.4.2, align 1
  %conv.4.2 = zext i8 %20 to i32
  %add.4.2 = add nuw nsw i32 %add.3.2, %conv.4.2
  %mul.4.2 = mul nuw nsw i32 %conv.4.2, %conv.4.2
  %add11.4.2 = add nuw nsw i32 %mul.4.2, %add11.3.2
  %arrayidx.5.2 = getelementptr inbounds i8, ptr %add.ptr.1, i64 5
  %21 = load i8, ptr %arrayidx.5.2, align 1
  %conv.5.2 = zext i8 %21 to i32
  %add.5.2 = add nuw nsw i32 %add.4.2, %conv.5.2
  %mul.5.2 = mul nuw nsw i32 %conv.5.2, %conv.5.2
  %add11.5.2 = add nuw nsw i32 %mul.5.2, %add11.4.2
  %arrayidx.6.2 = getelementptr inbounds i8, ptr %add.ptr.1, i64 6
  %22 = load i8, ptr %arrayidx.6.2, align 1
  %conv.6.2 = zext i8 %22 to i32
  %add.6.2 = add nuw nsw i32 %add.5.2, %conv.6.2
  %mul.6.2 = mul nuw nsw i32 %conv.6.2, %conv.6.2
  %add11.6.2 = add nuw nsw i32 %mul.6.2, %add11.5.2
  %arrayidx.7.2 = getelementptr inbounds i8, ptr %add.ptr.1, i64 7
  %23 = load i8, ptr %arrayidx.7.2, align 1
  %conv.7.2 = zext i8 %23 to i32
  %add.7.2 = add nuw nsw i32 %add.6.2, %conv.7.2
  %mul.7.2 = mul nuw nsw i32 %conv.7.2, %conv.7.2
  %add11.7.2 = add nuw nsw i32 %mul.7.2, %add11.6.2
  %add.ptr.2 = getelementptr inbounds i8, ptr %add.ptr.1, i64 %idx.ext
  %24 = load i8, ptr %add.ptr.2, align 1
  %conv.344 = zext i8 %24 to i32
  %add.345 = add nuw nsw i32 %add.7.2, %conv.344
  %mul.346 = mul nuw nsw i32 %conv.344, %conv.344
  %add11.347 = add nuw nsw i32 %mul.346, %add11.7.2
  %arrayidx.1.3 = getelementptr inbounds i8, ptr %add.ptr.2, i64 1
  %25 = load i8, ptr %arrayidx.1.3, align 1
  %conv.1.3 = zext i8 %25 to i32
  %add.1.3 = add nuw nsw i32 %add.345, %conv.1.3
  %mul.1.3 = mul nuw nsw i32 %conv.1.3, %conv.1.3
  %add11.1.3 = add nuw nsw i32 %mul.1.3, %add11.347
  %arrayidx.2.3 = getelementptr inbounds i8, ptr %add.ptr.2, i64 2
  %26 = load i8, ptr %arrayidx.2.3, align 1
  %conv.2.3 = zext i8 %26 to i32
  %add.2.3 = add nuw nsw i32 %add.1.3, %conv.2.3
  %mul.2.3 = mul nuw nsw i32 %conv.2.3, %conv.2.3
  %add11.2.3 = add nuw nsw i32 %mul.2.3, %add11.1.3
  %arrayidx.3.3 = getelementptr inbounds i8, ptr %add.ptr.2, i64 3
  %27 = load i8, ptr %arrayidx.3.3, align 1
  %conv.3.3 = zext i8 %27 to i32
  %add.3.3 = add nuw nsw i32 %add.2.3, %conv.3.3
  %mul.3.3 = mul nuw nsw i32 %conv.3.3, %conv.3.3
  %add11.3.3 = add nuw nsw i32 %mul.3.3, %add11.2.3
  %arrayidx.4.3 = getelementptr inbounds i8, ptr %add.ptr.2, i64 4
  %28 = load i8, ptr %arrayidx.4.3, align 1
  %conv.4.3 = zext i8 %28 to i32
  %add.4.3 = add nuw nsw i32 %add.3.3, %conv.4.3
  %mul.4.3 = mul nuw nsw i32 %conv.4.3, %conv.4.3
  %add11.4.3 = add nuw nsw i32 %mul.4.3, %add11.3.3
  %arrayidx.5.3 = getelementptr inbounds i8, ptr %add.ptr.2, i64 5
  %29 = load i8, ptr %arrayidx.5.3, align 1
  %conv.5.3 = zext i8 %29 to i32
  %add.5.3 = add nuw nsw i32 %add.4.3, %conv.5.3
  %mul.5.3 = mul nuw nsw i32 %conv.5.3, %conv.5.3
  %add11.5.3 = add nuw nsw i32 %mul.5.3, %add11.4.3
  %arrayidx.6.3 = getelementptr inbounds i8, ptr %add.ptr.2, i64 6
  %30 = load i8, ptr %arrayidx.6.3, align 1
  %conv.6.3 = zext i8 %30 to i32
  %add.6.3 = add nuw nsw i32 %add.5.3, %conv.6.3
  %mul.6.3 = mul nuw nsw i32 %conv.6.3, %conv.6.3
  %add11.6.3 = add nuw nsw i32 %mul.6.3, %add11.5.3
  %arrayidx.7.3 = getelementptr inbounds i8, ptr %add.ptr.2, i64 7
  %31 = load i8, ptr %arrayidx.7.3, align 1
  %conv.7.3 = zext i8 %31 to i32
  %add.7.3 = add nuw nsw i32 %add.6.3, %conv.7.3
  %mul.7.3 = mul nuw nsw i32 %conv.7.3, %conv.7.3
  %add11.7.3 = add nuw nsw i32 %mul.7.3, %add11.6.3
  %add.ptr.3 = getelementptr inbounds i8, ptr %add.ptr.2, i64 %idx.ext
  %32 = load i8, ptr %add.ptr.3, align 1
  %conv.448 = zext i8 %32 to i32
  %add.449 = add nuw nsw i32 %add.7.3, %conv.448
  %mul.450 = mul nuw nsw i32 %conv.448, %conv.448
  %add11.451 = add nuw nsw i32 %mul.450, %add11.7.3
  %arrayidx.1.4 = getelementptr inbounds i8, ptr %add.ptr.3, i64 1
  %33 = load i8, ptr %arrayidx.1.4, align 1
  %conv.1.4 = zext i8 %33 to i32
  %add.1.4 = add nuw nsw i32 %add.449, %conv.1.4
  %mul.1.4 = mul nuw nsw i32 %conv.1.4, %conv.1.4
  %add11.1.4 = add nuw nsw i32 %mul.1.4, %add11.451
  %arrayidx.2.4 = getelementptr inbounds i8, ptr %add.ptr.3, i64 2
  %34 = load i8, ptr %arrayidx.2.4, align 1
  %conv.2.4 = zext i8 %34 to i32
  %add.2.4 = add nuw nsw i32 %add.1.4, %conv.2.4
  %mul.2.4 = mul nuw nsw i32 %conv.2.4, %conv.2.4
  %add11.2.4 = add nuw nsw i32 %mul.2.4, %add11.1.4
  %arrayidx.3.4 = getelementptr inbounds i8, ptr %add.ptr.3, i64 3
  %35 = load i8, ptr %arrayidx.3.4, align 1
  %conv.3.4 = zext i8 %35 to i32
  %add.3.4 = add nuw nsw i32 %add.2.4, %conv.3.4
  %mul.3.4 = mul nuw nsw i32 %conv.3.4, %conv.3.4
  %add11.3.4 = add nuw nsw i32 %mul.3.4, %add11.2.4
  %arrayidx.4.4 = getelementptr inbounds i8, ptr %add.ptr.3, i64 4
  %36 = load i8, ptr %arrayidx.4.4, align 1
  %conv.4.4 = zext i8 %36 to i32
  %add.4.4 = add nuw nsw i32 %add.3.4, %conv.4.4
  %mul.4.4 = mul nuw nsw i32 %conv.4.4, %conv.4.4
  %add11.4.4 = add nuw nsw i32 %mul.4.4, %add11.3.4
  %arrayidx.5.4 = getelementptr inbounds i8, ptr %add.ptr.3, i64 5
  %37 = load i8, ptr %arrayidx.5.4, align 1
  %conv.5.4 = zext i8 %37 to i32
  %add.5.4 = add nuw nsw i32 %add.4.4, %conv.5.4
  %mul.5.4 = mul nuw nsw i32 %conv.5.4, %conv.5.4
  %add11.5.4 = add nuw nsw i32 %mul.5.4, %add11.4.4
  %arrayidx.6.4 = getelementptr inbounds i8, ptr %add.ptr.3, i64 6
  %38 = load i8, ptr %arrayidx.6.4, align 1
  %conv.6.4 = zext i8 %38 to i32
  %add.6.4 = add nuw nsw i32 %add.5.4, %conv.6.4
  %mul.6.4 = mul nuw nsw i32 %conv.6.4, %conv.6.4
  %add11.6.4 = add nuw nsw i32 %mul.6.4, %add11.5.4
  %arrayidx.7.4 = getelementptr inbounds i8, ptr %add.ptr.3, i64 7
  %39 = load i8, ptr %arrayidx.7.4, align 1
  %conv.7.4 = zext i8 %39 to i32
  %add.7.4 = add nuw nsw i32 %add.6.4, %conv.7.4
  %mul.7.4 = mul nuw nsw i32 %conv.7.4, %conv.7.4
  %add11.7.4 = add nuw nsw i32 %mul.7.4, %add11.6.4
  %add.ptr.4 = getelementptr inbounds i8, ptr %add.ptr.3, i64 %idx.ext
  %40 = load i8, ptr %add.ptr.4, align 1
  %conv.552 = zext i8 %40 to i32
  %add.553 = add nuw nsw i32 %add.7.4, %conv.552
  %mul.554 = mul nuw nsw i32 %conv.552, %conv.552
  %add11.555 = add nuw nsw i32 %mul.554, %add11.7.4
  %arrayidx.1.5 = getelementptr inbounds i8, ptr %add.ptr.4, i64 1
  %41 = load i8, ptr %arrayidx.1.5, align 1
  %conv.1.5 = zext i8 %41 to i32
  %add.1.5 = add nuw nsw i32 %add.553, %conv.1.5
  %mul.1.5 = mul nuw nsw i32 %conv.1.5, %conv.1.5
  %add11.1.5 = add nuw nsw i32 %mul.1.5, %add11.555
  %arrayidx.2.5 = getelementptr inbounds i8, ptr %add.ptr.4, i64 2
  %42 = load i8, ptr %arrayidx.2.5, align 1
  %conv.2.5 = zext i8 %42 to i32
  %add.2.5 = add nuw nsw i32 %add.1.5, %conv.2.5
  %mul.2.5 = mul nuw nsw i32 %conv.2.5, %conv.2.5
  %add11.2.5 = add nuw nsw i32 %mul.2.5, %add11.1.5
  %arrayidx.3.5 = getelementptr inbounds i8, ptr %add.ptr.4, i64 3
  %43 = load i8, ptr %arrayidx.3.5, align 1
  %conv.3.5 = zext i8 %43 to i32
  %add.3.5 = add nuw nsw i32 %add.2.5, %conv.3.5
  %mul.3.5 = mul nuw nsw i32 %conv.3.5, %conv.3.5
  %add11.3.5 = add nuw nsw i32 %mul.3.5, %add11.2.5
  %arrayidx.4.5 = getelementptr inbounds i8, ptr %add.ptr.4, i64 4
  %44 = load i8, ptr %arrayidx.4.5, align 1
  %conv.4.5 = zext i8 %44 to i32
  %add.4.5 = add nuw nsw i32 %add.3.5, %conv.4.5
  %mul.4.5 = mul nuw nsw i32 %conv.4.5, %conv.4.5
  %add11.4.5 = add nuw nsw i32 %mul.4.5, %add11.3.5
  %arrayidx.5.5 = getelementptr inbounds i8, ptr %add.ptr.4, i64 5
  %45 = load i8, ptr %arrayidx.5.5, align 1
  %conv.5.5 = zext i8 %45 to i32
  %add.5.5 = add nuw nsw i32 %add.4.5, %conv.5.5
  %mul.5.5 = mul nuw nsw i32 %conv.5.5, %conv.5.5
  %add11.5.5 = add nuw nsw i32 %mul.5.5, %add11.4.5
  %arrayidx.6.5 = getelementptr inbounds i8, ptr %add.ptr.4, i64 6
  %46 = load i8, ptr %arrayidx.6.5, align 1
  %conv.6.5 = zext i8 %46 to i32
  %add.6.5 = add nuw nsw i32 %add.5.5, %conv.6.5
  %mul.6.5 = mul nuw nsw i32 %conv.6.5, %conv.6.5
  %add11.6.5 = add nuw nsw i32 %mul.6.5, %add11.5.5
  %arrayidx.7.5 = getelementptr inbounds i8, ptr %add.ptr.4, i64 7
  %47 = load i8, ptr %arrayidx.7.5, align 1
  %conv.7.5 = zext i8 %47 to i32
  %add.7.5 = add nuw nsw i32 %add.6.5, %conv.7.5
  %mul.7.5 = mul nuw nsw i32 %conv.7.5, %conv.7.5
  %add11.7.5 = add nuw nsw i32 %mul.7.5, %add11.6.5
  %add.ptr.5 = getelementptr inbounds i8, ptr %add.ptr.4, i64 %idx.ext
  %48 = load i8, ptr %add.ptr.5, align 1
  %conv.656 = zext i8 %48 to i32
  %add.657 = add nuw nsw i32 %add.7.5, %conv.656
  %mul.658 = mul nuw nsw i32 %conv.656, %conv.656
  %add11.659 = add nuw nsw i32 %mul.658, %add11.7.5
  %arrayidx.1.6 = getelementptr inbounds i8, ptr %add.ptr.5, i64 1
  %49 = load i8, ptr %arrayidx.1.6, align 1
  %conv.1.6 = zext i8 %49 to i32
  %add.1.6 = add nuw nsw i32 %add.657, %conv.1.6
  %mul.1.6 = mul nuw nsw i32 %conv.1.6, %conv.1.6
  %add11.1.6 = add nuw nsw i32 %mul.1.6, %add11.659
  %arrayidx.2.6 = getelementptr inbounds i8, ptr %add.ptr.5, i64 2
  %50 = load i8, ptr %arrayidx.2.6, align 1
  %conv.2.6 = zext i8 %50 to i32
  %add.2.6 = add nuw nsw i32 %add.1.6, %conv.2.6
  %mul.2.6 = mul nuw nsw i32 %conv.2.6, %conv.2.6
  %add11.2.6 = add nuw nsw i32 %mul.2.6, %add11.1.6
  %arrayidx.3.6 = getelementptr inbounds i8, ptr %add.ptr.5, i64 3
  %51 = load i8, ptr %arrayidx.3.6, align 1
  %conv.3.6 = zext i8 %51 to i32
  %add.3.6 = add nuw nsw i32 %add.2.6, %conv.3.6
  %mul.3.6 = mul nuw nsw i32 %conv.3.6, %conv.3.6
  %add11.3.6 = add nuw nsw i32 %mul.3.6, %add11.2.6
  %arrayidx.4.6 = getelementptr inbounds i8, ptr %add.ptr.5, i64 4
  %52 = load i8, ptr %arrayidx.4.6, align 1
  %conv.4.6 = zext i8 %52 to i32
  %add.4.6 = add nuw nsw i32 %add.3.6, %conv.4.6
  %mul.4.6 = mul nuw nsw i32 %conv.4.6, %conv.4.6
  %add11.4.6 = add nuw nsw i32 %mul.4.6, %add11.3.6
  %arrayidx.5.6 = getelementptr inbounds i8, ptr %add.ptr.5, i64 5
  %53 = load i8, ptr %arrayidx.5.6, align 1
  %conv.5.6 = zext i8 %53 to i32
  %add.5.6 = add nuw nsw i32 %add.4.6, %conv.5.6
  %mul.5.6 = mul nuw nsw i32 %conv.5.6, %conv.5.6
  %add11.5.6 = add nuw nsw i32 %mul.5.6, %add11.4.6
  %arrayidx.6.6 = getelementptr inbounds i8, ptr %add.ptr.5, i64 6
  %54 = load i8, ptr %arrayidx.6.6, align 1
  %conv.6.6 = zext i8 %54 to i32
  %add.6.6 = add nuw nsw i32 %add.5.6, %conv.6.6
  %mul.6.6 = mul nuw nsw i32 %conv.6.6, %conv.6.6
  %add11.6.6 = add nuw nsw i32 %mul.6.6, %add11.5.6
  %arrayidx.7.6 = getelementptr inbounds i8, ptr %add.ptr.5, i64 7
  %55 = load i8, ptr %arrayidx.7.6, align 1
  %conv.7.6 = zext i8 %55 to i32
  %add.7.6 = add nuw nsw i32 %add.6.6, %conv.7.6
  %mul.7.6 = mul nuw nsw i32 %conv.7.6, %conv.7.6
  %add11.7.6 = add nuw nsw i32 %mul.7.6, %add11.6.6
  %add.ptr.6 = getelementptr inbounds i8, ptr %add.ptr.5, i64 %idx.ext
  %56 = load i8, ptr %add.ptr.6, align 1
  %conv.760 = zext i8 %56 to i32
  %add.761 = add nuw nsw i32 %add.7.6, %conv.760
  %mul.762 = mul nuw nsw i32 %conv.760, %conv.760
  %add11.763 = add nuw nsw i32 %mul.762, %add11.7.6
  %arrayidx.1.7 = getelementptr inbounds i8, ptr %add.ptr.6, i64 1
  %57 = load i8, ptr %arrayidx.1.7, align 1
  %conv.1.7 = zext i8 %57 to i32
  %add.1.7 = add nuw nsw i32 %add.761, %conv.1.7
  %mul.1.7 = mul nuw nsw i32 %conv.1.7, %conv.1.7
  %add11.1.7 = add nuw nsw i32 %mul.1.7, %add11.763
  %arrayidx.2.7 = getelementptr inbounds i8, ptr %add.ptr.6, i64 2
  %58 = load i8, ptr %arrayidx.2.7, align 1
  %conv.2.7 = zext i8 %58 to i32
  %add.2.7 = add nuw nsw i32 %add.1.7, %conv.2.7
  %mul.2.7 = mul nuw nsw i32 %conv.2.7, %conv.2.7
  %add11.2.7 = add nuw nsw i32 %mul.2.7, %add11.1.7
  %arrayidx.3.7 = getelementptr inbounds i8, ptr %add.ptr.6, i64 3
  %59 = load i8, ptr %arrayidx.3.7, align 1
  %conv.3.7 = zext i8 %59 to i32
  %add.3.7 = add nuw nsw i32 %add.2.7, %conv.3.7
  %mul.3.7 = mul nuw nsw i32 %conv.3.7, %conv.3.7
  %add11.3.7 = add nuw nsw i32 %mul.3.7, %add11.2.7
  %arrayidx.4.7 = getelementptr inbounds i8, ptr %add.ptr.6, i64 4
  %60 = load i8, ptr %arrayidx.4.7, align 1
  %conv.4.7 = zext i8 %60 to i32
  %add.4.7 = add nuw nsw i32 %add.3.7, %conv.4.7
  %mul.4.7 = mul nuw nsw i32 %conv.4.7, %conv.4.7
  %add11.4.7 = add nuw nsw i32 %mul.4.7, %add11.3.7
  %arrayidx.5.7 = getelementptr inbounds i8, ptr %add.ptr.6, i64 5
  %61 = load i8, ptr %arrayidx.5.7, align 1
  %conv.5.7 = zext i8 %61 to i32
  %add.5.7 = add nuw nsw i32 %add.4.7, %conv.5.7
  %mul.5.7 = mul nuw nsw i32 %conv.5.7, %conv.5.7
  %add11.5.7 = add nuw nsw i32 %mul.5.7, %add11.4.7
  %arrayidx.6.7 = getelementptr inbounds i8, ptr %add.ptr.6, i64 6
  %62 = load i8, ptr %arrayidx.6.7, align 1
  %conv.6.7 = zext i8 %62 to i32
  %add.6.7 = add nuw nsw i32 %add.5.7, %conv.6.7
  %mul.6.7 = mul nuw nsw i32 %conv.6.7, %conv.6.7
  %add11.6.7 = add nuw nsw i32 %mul.6.7, %add11.5.7
  %arrayidx.7.7 = getelementptr inbounds i8, ptr %add.ptr.6, i64 7
  %63 = load i8, ptr %arrayidx.7.7, align 1
  %conv.7.7 = zext i8 %63 to i32
  %add.7.7 = add nuw nsw i32 %add.6.7, %conv.7.7
  %mul.7.7 = mul nuw nsw i32 %conv.7.7, %conv.7.7
  %add11.7.7 = add nuw nsw i32 %mul.7.7, %add11.6.7
  %conv15 = zext nneg i32 %add.7.7 to i64
  %conv16 = zext nneg i32 %add11.7.7 to i64
  %shl = shl nuw nsw i64 %conv16, 32
  %add17 = or disjoint i64 %shl, %conv15
  ret i64 %add17
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @ssim_4x4x2_core(ptr nocapture noundef readonly %pix1, i32 noundef %stride1, ptr nocapture noundef readonly %pix2, i32 noundef %stride2, ptr nocapture noundef writeonly %sums) #7 {
entry:
  %0 = sext i32 %stride1 to i64
  %1 = sext i32 %stride2 to i64
  %2 = add nsw i64 %0, 1
  %3 = add nsw i64 %1, 1
  %4 = add nsw i64 %0, 2
  %5 = add nsw i64 %1, 2
  %6 = add nsw i64 %0, 3
  %7 = add nsw i64 %1, 3
  %8 = shl nsw i64 %0, 1
  %9 = shl nsw i64 %1, 1
  %10 = or disjoint i64 %8, 1
  %11 = or disjoint i64 %9, 1
  %12 = add nsw i64 %8, 2
  %13 = add nsw i64 %9, 2
  %14 = add nsw i64 %8, 3
  %15 = add nsw i64 %9, 3
  %16 = mul nsw i64 %0, 3
  %17 = mul nsw i64 %1, 3
  %18 = add nsw i64 %16, 1
  %19 = add nsw i64 %17, 1
  %20 = add nsw i64 %16, 2
  %21 = add nsw i64 %17, 2
  %22 = add nsw i64 %16, 3
  %23 = add nsw i64 %17, 3
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %entry, %for.cond1.preheader
  %cmp = phi i1 [ true, %entry ], [ false, %for.cond1.preheader ]
  %indvars.iv = phi i64 [ 0, %entry ], [ 1, %for.cond1.preheader ]
  %pix1.addr.080 = phi ptr [ %pix1, %entry ], [ %add.ptr, %for.cond1.preheader ]
  %pix2.addr.079 = phi ptr [ %pix2, %entry ], [ %add.ptr37, %for.cond1.preheader ]
  %24 = load i8, ptr %pix1.addr.080, align 1
  %conv = zext i8 %24 to i32
  %25 = load i8, ptr %pix2.addr.079, align 1
  %conv13 = zext i8 %25 to i32
  %mul16 = mul nuw nsw i32 %conv, %conv
  %mul18 = mul nuw nsw i32 %conv13, %conv13
  %add19 = add nuw nsw i32 %mul16, %mul18
  %mul20 = mul nuw nsw i32 %conv13, %conv
  %arrayidx.1 = getelementptr inbounds i8, ptr %pix1.addr.080, i64 1
  %26 = load i8, ptr %arrayidx.1, align 1
  %conv.1 = zext i8 %26 to i32
  %arrayidx12.1 = getelementptr inbounds i8, ptr %pix2.addr.079, i64 1
  %27 = load i8, ptr %arrayidx12.1, align 1
  %conv13.1 = zext i8 %27 to i32
  %add14.1 = add nuw nsw i32 %conv, %conv.1
  %add15.1 = add nuw nsw i32 %conv13, %conv13.1
  %mul16.1 = mul nuw nsw i32 %conv.1, %conv.1
  %add17.1 = add nuw nsw i32 %mul16.1, %add19
  %mul18.1 = mul nuw nsw i32 %conv13.1, %conv13.1
  %add19.1 = add nuw nsw i32 %add17.1, %mul18.1
  %mul20.1 = mul nuw nsw i32 %conv13.1, %conv.1
  %add21.1 = add nuw nsw i32 %mul20.1, %mul20
  %arrayidx.2 = getelementptr inbounds i8, ptr %pix1.addr.080, i64 2
  %28 = load i8, ptr %arrayidx.2, align 1
  %conv.2 = zext i8 %28 to i32
  %arrayidx12.2 = getelementptr inbounds i8, ptr %pix2.addr.079, i64 2
  %29 = load i8, ptr %arrayidx12.2, align 1
  %conv13.2 = zext i8 %29 to i32
  %add14.2 = add nuw nsw i32 %add14.1, %conv.2
  %add15.2 = add nuw nsw i32 %add15.1, %conv13.2
  %mul16.2 = mul nuw nsw i32 %conv.2, %conv.2
  %add17.2 = add nuw nsw i32 %mul16.2, %add19.1
  %mul18.2 = mul nuw nsw i32 %conv13.2, %conv13.2
  %add19.2 = add nuw nsw i32 %add17.2, %mul18.2
  %mul20.2 = mul nuw nsw i32 %conv13.2, %conv.2
  %add21.2 = add nuw nsw i32 %mul20.2, %add21.1
  %arrayidx.3 = getelementptr inbounds i8, ptr %pix1.addr.080, i64 3
  %30 = load i8, ptr %arrayidx.3, align 1
  %conv.3 = zext i8 %30 to i32
  %arrayidx12.3 = getelementptr inbounds i8, ptr %pix2.addr.079, i64 3
  %31 = load i8, ptr %arrayidx12.3, align 1
  %conv13.3 = zext i8 %31 to i32
  %add14.3 = add nuw nsw i32 %add14.2, %conv.3
  %add15.3 = add nuw nsw i32 %add15.2, %conv13.3
  %mul16.3 = mul nuw nsw i32 %conv.3, %conv.3
  %add17.3 = add nuw nsw i32 %mul16.3, %add19.2
  %mul18.3 = mul nuw nsw i32 %conv13.3, %conv13.3
  %add19.3 = add nuw nsw i32 %add17.3, %mul18.3
  %mul20.3 = mul nuw nsw i32 %conv13.3, %conv.3
  %add21.3 = add nuw nsw i32 %mul20.3, %add21.2
  %arrayidx.187 = getelementptr inbounds i8, ptr %pix1.addr.080, i64 %0
  %32 = load i8, ptr %arrayidx.187, align 1
  %conv.188 = zext i8 %32 to i32
  %arrayidx12.189 = getelementptr inbounds i8, ptr %pix2.addr.079, i64 %1
  %33 = load i8, ptr %arrayidx12.189, align 1
  %conv13.190 = zext i8 %33 to i32
  %add14.191 = add nuw nsw i32 %add14.3, %conv.188
  %add15.192 = add nuw nsw i32 %add15.3, %conv13.190
  %mul16.193 = mul nuw nsw i32 %conv.188, %conv.188
  %add17.194 = add nuw nsw i32 %mul16.193, %add19.3
  %mul18.195 = mul nuw nsw i32 %conv13.190, %conv13.190
  %add19.196 = add nuw nsw i32 %add17.194, %mul18.195
  %mul20.197 = mul nuw nsw i32 %conv13.190, %conv.188
  %add21.198 = add nuw nsw i32 %mul20.197, %add21.3
  %arrayidx.1.1 = getelementptr inbounds i8, ptr %pix1.addr.080, i64 %2
  %34 = load i8, ptr %arrayidx.1.1, align 1
  %conv.1.1 = zext i8 %34 to i32
  %arrayidx12.1.1 = getelementptr inbounds i8, ptr %pix2.addr.079, i64 %3
  %35 = load i8, ptr %arrayidx12.1.1, align 1
  %conv13.1.1 = zext i8 %35 to i32
  %add14.1.1 = add nuw nsw i32 %add14.191, %conv.1.1
  %add15.1.1 = add nuw nsw i32 %add15.192, %conv13.1.1
  %mul16.1.1 = mul nuw nsw i32 %conv.1.1, %conv.1.1
  %add17.1.1 = add nuw nsw i32 %mul16.1.1, %add19.196
  %mul18.1.1 = mul nuw nsw i32 %conv13.1.1, %conv13.1.1
  %add19.1.1 = add nuw nsw i32 %add17.1.1, %mul18.1.1
  %mul20.1.1 = mul nuw nsw i32 %conv13.1.1, %conv.1.1
  %add21.1.1 = add nuw nsw i32 %mul20.1.1, %add21.198
  %arrayidx.2.1 = getelementptr inbounds i8, ptr %pix1.addr.080, i64 %4
  %36 = load i8, ptr %arrayidx.2.1, align 1
  %conv.2.1 = zext i8 %36 to i32
  %arrayidx12.2.1 = getelementptr inbounds i8, ptr %pix2.addr.079, i64 %5
  %37 = load i8, ptr %arrayidx12.2.1, align 1
  %conv13.2.1 = zext i8 %37 to i32
  %add14.2.1 = add nuw nsw i32 %add14.1.1, %conv.2.1
  %add15.2.1 = add nuw nsw i32 %add15.1.1, %conv13.2.1
  %mul16.2.1 = mul nuw nsw i32 %conv.2.1, %conv.2.1
  %add17.2.1 = add nuw nsw i32 %mul16.2.1, %add19.1.1
  %mul18.2.1 = mul nuw nsw i32 %conv13.2.1, %conv13.2.1
  %add19.2.1 = add nuw nsw i32 %add17.2.1, %mul18.2.1
  %mul20.2.1 = mul nuw nsw i32 %conv13.2.1, %conv.2.1
  %add21.2.1 = add nuw nsw i32 %mul20.2.1, %add21.1.1
  %arrayidx.3.1 = getelementptr inbounds i8, ptr %pix1.addr.080, i64 %6
  %38 = load i8, ptr %arrayidx.3.1, align 1
  %conv.3.1 = zext i8 %38 to i32
  %arrayidx12.3.1 = getelementptr inbounds i8, ptr %pix2.addr.079, i64 %7
  %39 = load i8, ptr %arrayidx12.3.1, align 1
  %conv13.3.1 = zext i8 %39 to i32
  %add14.3.1 = add nuw nsw i32 %add14.2.1, %conv.3.1
  %add15.3.1 = add nuw nsw i32 %add15.2.1, %conv13.3.1
  %mul16.3.1 = mul nuw nsw i32 %conv.3.1, %conv.3.1
  %add17.3.1 = add nuw nsw i32 %mul16.3.1, %add19.2.1
  %mul18.3.1 = mul nuw nsw i32 %conv13.3.1, %conv13.3.1
  %add19.3.1 = add nuw nsw i32 %add17.3.1, %mul18.3.1
  %mul20.3.1 = mul nuw nsw i32 %conv13.3.1, %conv.3.1
  %add21.3.1 = add nuw nsw i32 %mul20.3.1, %add21.2.1
  %arrayidx.299 = getelementptr inbounds i8, ptr %pix1.addr.080, i64 %8
  %40 = load i8, ptr %arrayidx.299, align 1
  %conv.2100 = zext i8 %40 to i32
  %arrayidx12.2101 = getelementptr inbounds i8, ptr %pix2.addr.079, i64 %9
  %41 = load i8, ptr %arrayidx12.2101, align 1
  %conv13.2102 = zext i8 %41 to i32
  %add14.2103 = add nuw nsw i32 %add14.3.1, %conv.2100
  %add15.2104 = add nuw nsw i32 %add15.3.1, %conv13.2102
  %mul16.2105 = mul nuw nsw i32 %conv.2100, %conv.2100
  %add17.2106 = add nuw nsw i32 %mul16.2105, %add19.3.1
  %mul18.2107 = mul nuw nsw i32 %conv13.2102, %conv13.2102
  %add19.2108 = add nuw nsw i32 %add17.2106, %mul18.2107
  %mul20.2109 = mul nuw nsw i32 %conv13.2102, %conv.2100
  %add21.2110 = add nuw nsw i32 %mul20.2109, %add21.3.1
  %arrayidx.1.2 = getelementptr inbounds i8, ptr %pix1.addr.080, i64 %10
  %42 = load i8, ptr %arrayidx.1.2, align 1
  %conv.1.2 = zext i8 %42 to i32
  %arrayidx12.1.2 = getelementptr inbounds i8, ptr %pix2.addr.079, i64 %11
  %43 = load i8, ptr %arrayidx12.1.2, align 1
  %conv13.1.2 = zext i8 %43 to i32
  %add14.1.2 = add nuw nsw i32 %add14.2103, %conv.1.2
  %add15.1.2 = add nuw nsw i32 %add15.2104, %conv13.1.2
  %mul16.1.2 = mul nuw nsw i32 %conv.1.2, %conv.1.2
  %add17.1.2 = add nuw nsw i32 %mul16.1.2, %add19.2108
  %mul18.1.2 = mul nuw nsw i32 %conv13.1.2, %conv13.1.2
  %add19.1.2 = add nuw nsw i32 %add17.1.2, %mul18.1.2
  %mul20.1.2 = mul nuw nsw i32 %conv13.1.2, %conv.1.2
  %add21.1.2 = add nuw nsw i32 %mul20.1.2, %add21.2110
  %arrayidx.2.2 = getelementptr inbounds i8, ptr %pix1.addr.080, i64 %12
  %44 = load i8, ptr %arrayidx.2.2, align 1
  %conv.2.2 = zext i8 %44 to i32
  %arrayidx12.2.2 = getelementptr inbounds i8, ptr %pix2.addr.079, i64 %13
  %45 = load i8, ptr %arrayidx12.2.2, align 1
  %conv13.2.2 = zext i8 %45 to i32
  %add14.2.2 = add nuw nsw i32 %add14.1.2, %conv.2.2
  %add15.2.2 = add nuw nsw i32 %add15.1.2, %conv13.2.2
  %mul16.2.2 = mul nuw nsw i32 %conv.2.2, %conv.2.2
  %add17.2.2 = add nuw nsw i32 %mul16.2.2, %add19.1.2
  %mul18.2.2 = mul nuw nsw i32 %conv13.2.2, %conv13.2.2
  %add19.2.2 = add nuw nsw i32 %add17.2.2, %mul18.2.2
  %mul20.2.2 = mul nuw nsw i32 %conv13.2.2, %conv.2.2
  %add21.2.2 = add nuw nsw i32 %mul20.2.2, %add21.1.2
  %arrayidx.3.2 = getelementptr inbounds i8, ptr %pix1.addr.080, i64 %14
  %46 = load i8, ptr %arrayidx.3.2, align 1
  %conv.3.2 = zext i8 %46 to i32
  %arrayidx12.3.2 = getelementptr inbounds i8, ptr %pix2.addr.079, i64 %15
  %47 = load i8, ptr %arrayidx12.3.2, align 1
  %conv13.3.2 = zext i8 %47 to i32
  %add14.3.2 = add nuw nsw i32 %add14.2.2, %conv.3.2
  %add15.3.2 = add nuw nsw i32 %add15.2.2, %conv13.3.2
  %mul16.3.2 = mul nuw nsw i32 %conv.3.2, %conv.3.2
  %add17.3.2 = add nuw nsw i32 %mul16.3.2, %add19.2.2
  %mul18.3.2 = mul nuw nsw i32 %conv13.3.2, %conv13.3.2
  %add19.3.2 = add nuw nsw i32 %add17.3.2, %mul18.3.2
  %mul20.3.2 = mul nuw nsw i32 %conv13.3.2, %conv.3.2
  %add21.3.2 = add nuw nsw i32 %mul20.3.2, %add21.2.2
  %arrayidx.3111 = getelementptr inbounds i8, ptr %pix1.addr.080, i64 %16
  %48 = load i8, ptr %arrayidx.3111, align 1
  %conv.3112 = zext i8 %48 to i32
  %arrayidx12.3113 = getelementptr inbounds i8, ptr %pix2.addr.079, i64 %17
  %49 = load i8, ptr %arrayidx12.3113, align 1
  %conv13.3114 = zext i8 %49 to i32
  %add14.3115 = add nuw nsw i32 %add14.3.2, %conv.3112
  %add15.3116 = add nuw nsw i32 %add15.3.2, %conv13.3114
  %mul16.3117 = mul nuw nsw i32 %conv.3112, %conv.3112
  %add17.3118 = add nuw nsw i32 %mul16.3117, %add19.3.2
  %mul18.3119 = mul nuw nsw i32 %conv13.3114, %conv13.3114
  %add19.3120 = add nuw nsw i32 %add17.3118, %mul18.3119
  %mul20.3121 = mul nuw nsw i32 %conv13.3114, %conv.3112
  %add21.3122 = add nuw nsw i32 %mul20.3121, %add21.3.2
  %arrayidx.1.3 = getelementptr inbounds i8, ptr %pix1.addr.080, i64 %18
  %50 = load i8, ptr %arrayidx.1.3, align 1
  %conv.1.3 = zext i8 %50 to i32
  %arrayidx12.1.3 = getelementptr inbounds i8, ptr %pix2.addr.079, i64 %19
  %51 = load i8, ptr %arrayidx12.1.3, align 1
  %conv13.1.3 = zext i8 %51 to i32
  %add14.1.3 = add nuw nsw i32 %add14.3115, %conv.1.3
  %add15.1.3 = add nuw nsw i32 %add15.3116, %conv13.1.3
  %mul16.1.3 = mul nuw nsw i32 %conv.1.3, %conv.1.3
  %add17.1.3 = add nuw nsw i32 %mul16.1.3, %add19.3120
  %mul18.1.3 = mul nuw nsw i32 %conv13.1.3, %conv13.1.3
  %add19.1.3 = add nuw nsw i32 %add17.1.3, %mul18.1.3
  %mul20.1.3 = mul nuw nsw i32 %conv13.1.3, %conv.1.3
  %add21.1.3 = add nuw nsw i32 %mul20.1.3, %add21.3122
  %arrayidx.2.3 = getelementptr inbounds i8, ptr %pix1.addr.080, i64 %20
  %52 = load i8, ptr %arrayidx.2.3, align 1
  %conv.2.3 = zext i8 %52 to i32
  %arrayidx12.2.3 = getelementptr inbounds i8, ptr %pix2.addr.079, i64 %21
  %53 = load i8, ptr %arrayidx12.2.3, align 1
  %conv13.2.3 = zext i8 %53 to i32
  %add14.2.3 = add nuw nsw i32 %add14.1.3, %conv.2.3
  %add15.2.3 = add nuw nsw i32 %add15.1.3, %conv13.2.3
  %mul16.2.3 = mul nuw nsw i32 %conv.2.3, %conv.2.3
  %add17.2.3 = add nuw nsw i32 %mul16.2.3, %add19.1.3
  %mul18.2.3 = mul nuw nsw i32 %conv13.2.3, %conv13.2.3
  %add19.2.3 = add nuw nsw i32 %add17.2.3, %mul18.2.3
  %mul20.2.3 = mul nuw nsw i32 %conv13.2.3, %conv.2.3
  %add21.2.3 = add nuw nsw i32 %mul20.2.3, %add21.1.3
  %arrayidx.3.3 = getelementptr inbounds i8, ptr %pix1.addr.080, i64 %22
  %54 = load i8, ptr %arrayidx.3.3, align 1
  %conv.3.3 = zext i8 %54 to i32
  %arrayidx12.3.3 = getelementptr inbounds i8, ptr %pix2.addr.079, i64 %23
  %55 = load i8, ptr %arrayidx12.3.3, align 1
  %conv13.3.3 = zext i8 %55 to i32
  %add14.3.3 = add nuw nsw i32 %add14.2.3, %conv.3.3
  %add15.3.3 = add nuw nsw i32 %add15.2.3, %conv13.3.3
  %mul16.3.3 = mul nuw nsw i32 %conv.3.3, %conv.3.3
  %add17.3.3 = add nuw nsw i32 %mul16.3.3, %add19.2.3
  %mul18.3.3 = mul nuw nsw i32 %conv13.3.3, %conv13.3.3
  %add19.3.3 = add nuw nsw i32 %add17.3.3, %mul18.3.3
  %mul20.3.3 = mul nuw nsw i32 %conv13.3.3, %conv.3.3
  %add21.3.3 = add nuw nsw i32 %mul20.3.3, %add21.2.3
  %arrayidx26 = getelementptr inbounds [4 x i32], ptr %sums, i64 %indvars.iv
  store i32 %add14.3.3, ptr %arrayidx26, align 4
  %arrayidx30 = getelementptr inbounds i8, ptr %arrayidx26, i64 4
  store i32 %add15.3.3, ptr %arrayidx30, align 4
  %arrayidx33 = getelementptr inbounds i8, ptr %arrayidx26, i64 8
  store i32 %add19.3.3, ptr %arrayidx33, align 4
  %arrayidx36 = getelementptr inbounds i8, ptr %arrayidx26, i64 12
  store i32 %add21.3.3, ptr %arrayidx36, align 4
  %add.ptr = getelementptr inbounds i8, ptr %pix1.addr.080, i64 4
  %add.ptr37 = getelementptr inbounds i8, ptr %pix2.addr.079, i64 4
  br i1 %cmp, label %for.cond1.preheader, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond1.preheader
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal float @ssim_end4(ptr nocapture noundef readonly %sum0, ptr nocapture noundef readonly %sum1, i32 noundef %width) #10 {
entry:
  %cmp99 = icmp sgt i32 %width, 0
  br i1 %cmp99, label %for.body.preheader, label %for.cond.cleanup

for.body.preheader:                               ; preds = %entry
  %wide.trip.count = zext nneg i32 %width to i64
  %0 = load <2 x i32>, ptr %sum0, align 4
  %1 = load <2 x i32>, ptr %sum1, align 4
  %arrayidx34.phi.trans.insert = getelementptr inbounds i8, ptr %sum0, i64 8
  %.pre106 = load i32, ptr %arrayidx34.phi.trans.insert, align 4
  %arrayidx42.phi.trans.insert = getelementptr inbounds i8, ptr %sum1, i64 8
  %.pre107 = load i32, ptr %arrayidx42.phi.trans.insert, align 4
  %arrayidx51.phi.trans.insert = getelementptr inbounds i8, ptr %sum0, i64 12
  %.pre108 = load i32, ptr %arrayidx51.phi.trans.insert, align 4
  %arrayidx59.phi.trans.insert = getelementptr inbounds i8, ptr %sum1, i64 12
  %.pre109 = load i32, ptr %arrayidx59.phi.trans.insert, align 4
  br label %for.body

for.cond.cleanup:                                 ; preds = %for.body, %entry
  %ssim.0.lcssa = phi float [ 0.000000e+00, %entry ], [ %add66, %for.body ]
  ret float %ssim.0.lcssa

for.body:                                         ; preds = %for.body.preheader, %for.body
  %2 = phi i32 [ %.pre109, %for.body.preheader ], [ %16, %for.body ]
  %3 = phi i32 [ %.pre108, %for.body.preheader ], [ %15, %for.body ]
  %4 = phi i32 [ %.pre107, %for.body.preheader ], [ %14, %for.body ]
  %5 = phi i32 [ %.pre106, %for.body.preheader ], [ %13, %for.body ]
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.body ]
  %ssim.0100 = phi float [ 0.000000e+00, %for.body.preheader ], [ %add66, %for.body ]
  %6 = phi <2 x i32> [ %0, %for.body.preheader ], [ %8, %for.body ]
  %7 = phi <2 x i32> [ %1, %for.body.preheader ], [ %11, %for.body ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %arrayidx3 = getelementptr inbounds [4 x i32], ptr %sum0, i64 %indvars.iv.next
  %arrayidx12 = getelementptr inbounds [4 x i32], ptr %sum1, i64 %indvars.iv.next
  %8 = load <2 x i32>, ptr %arrayidx3, align 4
  %9 = add nsw <2 x i32> %8, %6
  %10 = add nsw <2 x i32> %9, %7
  %11 = load <2 x i32>, ptr %arrayidx12, align 4
  %12 = add nsw <2 x i32> %10, %11
  %arrayidx38 = getelementptr inbounds i8, ptr %arrayidx3, i64 8
  %13 = load i32, ptr %arrayidx38, align 4
  %add39 = add nsw i32 %13, %5
  %add43 = add nsw i32 %add39, %4
  %arrayidx47 = getelementptr inbounds i8, ptr %arrayidx12, i64 8
  %14 = load i32, ptr %arrayidx47, align 4
  %add48 = add nsw i32 %add43, %14
  %arrayidx55 = getelementptr inbounds i8, ptr %arrayidx3, i64 12
  %15 = load i32, ptr %arrayidx55, align 4
  %add56 = add nsw i32 %15, %3
  %add60 = add nsw i32 %add56, %2
  %arrayidx64 = getelementptr inbounds i8, ptr %arrayidx12, i64 12
  %16 = load i32, ptr %arrayidx64, align 4
  %add65 = add nsw i32 %add60, %16
  %mul.i = shl nsw i32 %add48, 6
  %17 = extractelement <2 x i32> %12, i64 0
  %mul1.i = mul nsw i32 %17, %17
  %18 = extractelement <2 x i32> %12, i64 1
  %mul2.i = mul nsw i32 %18, %18
  %19 = add nuw i32 %mul2.i, %mul1.i
  %mul7.i = shl nsw i32 %17, 1
  %mul8.i = mul nsw i32 %mul7.i, %18
  %add.i = add nsw i32 %mul8.i, 416
  %conv.i = sitofp i32 %add.i to float
  %20 = shl i32 %add65, 7
  %21 = mul i32 %17, -2
  %.neg31.i = mul i32 %21, %18
  %mul9.i = add i32 %.neg31.i, 235963
  %add10.i = add i32 %mul9.i, %20
  %conv11.i = sitofp i32 %add10.i to float
  %mul12.i = fmul float %conv.i, %conv11.i
  %add16.i = add nuw nsw i32 %19, 416
  %conv17.i = uitofp nneg i32 %add16.i to float
  %reass.sub = sub i32 %mul.i, %19
  %add18.i = add i32 %reass.sub, 235963
  %conv19.i = sitofp i32 %add18.i to float
  %mul20.i = fmul float %conv17.i, %conv19.i
  %div.i = fdiv float %mul12.i, %mul20.i
  %add66 = fadd float %ssim.0100, %div.i
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal i32 @pixel_var2_8x8(ptr nocapture noundef readonly %pix1, i32 noundef %i_stride1, ptr nocapture noundef readonly %pix2, i32 noundef %i_stride2, ptr nocapture noundef writeonly %ssd) #7 {
entry:
  %idx.ext = sext i32 %i_stride1 to i64
  %idx.ext9 = sext i32 %i_stride2 to i64
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %entry, %for.cond1.preheader
  %pix1.addr.036 = phi ptr [ %pix1, %entry ], [ %add.ptr, %for.cond1.preheader ]
  %y.035 = phi i32 [ 0, %entry ], [ %inc12, %for.cond1.preheader ]
  %sqr.034 = phi i32 [ 0, %entry ], [ %add8.7, %for.cond1.preheader ]
  %sum.033 = phi i32 [ 0, %entry ], [ %op.rdx, %for.cond1.preheader ]
  %pix2.addr.032 = phi ptr [ %pix2, %entry ], [ %add.ptr10, %for.cond1.preheader ]
  %0 = load <8 x i8>, ptr %pix1.addr.036, align 1
  %1 = zext <8 x i8> %0 to <8 x i32>
  %2 = load <8 x i8>, ptr %pix2.addr.032, align 1
  %3 = zext <8 x i8> %2 to <8 x i32>
  %4 = sub nsw <8 x i32> %1, %3
  %5 = extractelement <8 x i32> %4, i64 0
  %mul = mul nsw i32 %5, %5
  %add8 = add i32 %mul, %sqr.034
  %6 = extractelement <8 x i32> %4, i64 1
  %mul.1 = mul nsw i32 %6, %6
  %add8.1 = add i32 %mul.1, %add8
  %7 = extractelement <8 x i32> %4, i64 2
  %mul.2 = mul nsw i32 %7, %7
  %add8.2 = add i32 %mul.2, %add8.1
  %8 = extractelement <8 x i32> %4, i64 3
  %mul.3 = mul nsw i32 %8, %8
  %add8.3 = add i32 %mul.3, %add8.2
  %9 = extractelement <8 x i32> %4, i64 4
  %mul.4 = mul nsw i32 %9, %9
  %add8.4 = add i32 %mul.4, %add8.3
  %10 = extractelement <8 x i32> %4, i64 5
  %mul.5 = mul nsw i32 %10, %10
  %add8.5 = add i32 %mul.5, %add8.4
  %11 = extractelement <8 x i32> %4, i64 6
  %mul.6 = mul nsw i32 %11, %11
  %add8.6 = add i32 %mul.6, %add8.5
  %12 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %4)
  %op.rdx = add i32 %12, %sum.033
  %13 = extractelement <8 x i32> %4, i64 7
  %mul.7 = mul nsw i32 %13, %13
  %add8.7 = add i32 %mul.7, %add8.6
  %add.ptr = getelementptr inbounds i8, ptr %pix1.addr.036, i64 %idx.ext
  %add.ptr10 = getelementptr inbounds i8, ptr %pix2.addr.032, i64 %idx.ext9
  %inc12 = add nuw nsw i32 %y.035, 1
  %exitcond.not = icmp eq i32 %inc12, 8
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.cond1.preheader

for.cond.cleanup:                                 ; preds = %for.cond1.preheader
  %mul14 = mul i32 %op.rdx, %op.rdx
  %shr = lshr i32 %mul14, 6
  %sub15 = sub i32 %add8.7, %shr
  store i32 %add8.7, ptr %ssd, align 4
  ret i32 %sub15
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #11

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define internal fastcc range(i64 -65535, -4294836225) i64 @pixel_hadamard_ac(ptr nocapture noundef readonly %pix, i32 noundef %stride) unnamed_addr #4 {
entry:
  %tmp = alloca [32 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %tmp) #13
  %idx.ext55 = sext i32 %stride to i64
  %0 = load i8, ptr %pix, align 1
  %conv = zext i8 %0 to i32
  %arrayidx4 = getelementptr inbounds i8, ptr %pix, i64 1
  %1 = load i8, ptr %arrayidx4, align 1
  %conv5 = zext i8 %1 to i32
  %add = add nuw nsw i32 %conv5, %conv
  %sub = sub nsw i32 %conv, %conv5
  %shl = shl nsw i32 %sub, 16
  %add10 = or disjoint i32 %shl, %add
  %arrayidx11 = getelementptr inbounds i8, ptr %pix, i64 2
  %2 = load i8, ptr %arrayidx11, align 1
  %conv12 = zext i8 %2 to i32
  %arrayidx13 = getelementptr inbounds i8, ptr %pix, i64 3
  %3 = load i8, ptr %arrayidx13, align 1
  %conv14 = zext i8 %3 to i32
  %add15 = add nuw nsw i32 %conv14, %conv12
  %sub20 = sub nsw i32 %conv12, %conv14
  %shl21 = shl nsw i32 %sub20, 16
  %add22 = or disjoint i32 %shl21, %add15
  %add23 = add nsw i32 %add22, %add10
  store i32 %add23, ptr %tmp, align 16
  %sub25 = sub nsw i32 %add10, %add22
  %arrayidx26 = getelementptr inbounds i8, ptr %tmp, i64 16
  store i32 %sub25, ptr %arrayidx26, align 16
  %arrayidx27 = getelementptr inbounds i8, ptr %pix, i64 4
  %4 = load i8, ptr %arrayidx27, align 1
  %conv28 = zext i8 %4 to i32
  %arrayidx29 = getelementptr inbounds i8, ptr %pix, i64 5
  %5 = load i8, ptr %arrayidx29, align 1
  %conv30 = zext i8 %5 to i32
  %add31 = add nuw nsw i32 %conv30, %conv28
  %sub36 = sub nsw i32 %conv28, %conv30
  %shl37 = shl nsw i32 %sub36, 16
  %add38 = or disjoint i32 %shl37, %add31
  %arrayidx39 = getelementptr inbounds i8, ptr %pix, i64 6
  %6 = load i8, ptr %arrayidx39, align 1
  %conv40 = zext i8 %6 to i32
  %arrayidx41 = getelementptr inbounds i8, ptr %pix, i64 7
  %7 = load i8, ptr %arrayidx41, align 1
  %conv42 = zext i8 %7 to i32
  %add43 = add nuw nsw i32 %conv42, %conv40
  %sub48 = sub nsw i32 %conv40, %conv42
  %shl49 = shl nsw i32 %sub48, 16
  %add50 = or disjoint i32 %shl49, %add43
  %add51 = add nsw i32 %add50, %add38
  %arrayidx52 = getelementptr inbounds i8, ptr %tmp, i64 32
  store i32 %add51, ptr %arrayidx52, align 16
  %sub53 = sub nsw i32 %add38, %add50
  %arrayidx54 = getelementptr inbounds i8, ptr %tmp, i64 48
  store i32 %sub53, ptr %arrayidx54, align 16
  %add.ptr56 = getelementptr inbounds i8, ptr %pix, i64 %idx.ext55
  %add.ptr.1 = getelementptr inbounds i8, ptr %tmp, i64 4
  %8 = load i8, ptr %add.ptr56, align 1
  %conv.1 = zext i8 %8 to i32
  %arrayidx4.1 = getelementptr inbounds i8, ptr %add.ptr56, i64 1
  %9 = load i8, ptr %arrayidx4.1, align 1
  %conv5.1 = zext i8 %9 to i32
  %add.1 = add nuw nsw i32 %conv5.1, %conv.1
  %sub.1 = sub nsw i32 %conv.1, %conv5.1
  %shl.1 = shl nsw i32 %sub.1, 16
  %add10.1 = or disjoint i32 %shl.1, %add.1
  %arrayidx11.1 = getelementptr inbounds i8, ptr %add.ptr56, i64 2
  %10 = load i8, ptr %arrayidx11.1, align 1
  %conv12.1 = zext i8 %10 to i32
  %arrayidx13.1 = getelementptr inbounds i8, ptr %add.ptr56, i64 3
  %11 = load i8, ptr %arrayidx13.1, align 1
  %conv14.1 = zext i8 %11 to i32
  %add15.1 = add nuw nsw i32 %conv14.1, %conv12.1
  %sub20.1 = sub nsw i32 %conv12.1, %conv14.1
  %shl21.1 = shl nsw i32 %sub20.1, 16
  %add22.1 = or disjoint i32 %shl21.1, %add15.1
  %add23.1 = add nsw i32 %add22.1, %add10.1
  store i32 %add23.1, ptr %add.ptr.1, align 4
  %sub25.1 = sub nsw i32 %add10.1, %add22.1
  %arrayidx26.1 = getelementptr inbounds i8, ptr %tmp, i64 20
  store i32 %sub25.1, ptr %arrayidx26.1, align 4
  %arrayidx27.1 = getelementptr inbounds i8, ptr %add.ptr56, i64 4
  %12 = load i8, ptr %arrayidx27.1, align 1
  %conv28.1 = zext i8 %12 to i32
  %arrayidx29.1 = getelementptr inbounds i8, ptr %add.ptr56, i64 5
  %13 = load i8, ptr %arrayidx29.1, align 1
  %conv30.1 = zext i8 %13 to i32
  %add31.1 = add nuw nsw i32 %conv30.1, %conv28.1
  %sub36.1 = sub nsw i32 %conv28.1, %conv30.1
  %shl37.1 = shl nsw i32 %sub36.1, 16
  %add38.1 = or disjoint i32 %shl37.1, %add31.1
  %arrayidx39.1 = getelementptr inbounds i8, ptr %add.ptr56, i64 6
  %14 = load i8, ptr %arrayidx39.1, align 1
  %conv40.1 = zext i8 %14 to i32
  %arrayidx41.1 = getelementptr inbounds i8, ptr %add.ptr56, i64 7
  %15 = load i8, ptr %arrayidx41.1, align 1
  %conv42.1 = zext i8 %15 to i32
  %add43.1 = add nuw nsw i32 %conv42.1, %conv40.1
  %sub48.1 = sub nsw i32 %conv40.1, %conv42.1
  %shl49.1 = shl nsw i32 %sub48.1, 16
  %add50.1 = or disjoint i32 %shl49.1, %add43.1
  %add51.1 = add nsw i32 %add50.1, %add38.1
  %arrayidx52.1 = getelementptr inbounds i8, ptr %tmp, i64 36
  store i32 %add51.1, ptr %arrayidx52.1, align 4
  %sub53.1 = sub nsw i32 %add38.1, %add50.1
  %arrayidx54.1 = getelementptr inbounds i8, ptr %tmp, i64 52
  store i32 %sub53.1, ptr %arrayidx54.1, align 4
  %add.ptr56.1 = getelementptr inbounds i8, ptr %add.ptr56, i64 %idx.ext55
  %add.ptr.2 = getelementptr inbounds i8, ptr %tmp, i64 8
  %16 = load i8, ptr %add.ptr56.1, align 1
  %conv.2 = zext i8 %16 to i32
  %arrayidx4.2 = getelementptr inbounds i8, ptr %add.ptr56.1, i64 1
  %17 = load i8, ptr %arrayidx4.2, align 1
  %conv5.2 = zext i8 %17 to i32
  %add.2 = add nuw nsw i32 %conv5.2, %conv.2
  %sub.2 = sub nsw i32 %conv.2, %conv5.2
  %shl.2 = shl nsw i32 %sub.2, 16
  %add10.2 = or disjoint i32 %shl.2, %add.2
  %arrayidx11.2 = getelementptr inbounds i8, ptr %add.ptr56.1, i64 2
  %18 = load i8, ptr %arrayidx11.2, align 1
  %conv12.2 = zext i8 %18 to i32
  %arrayidx13.2 = getelementptr inbounds i8, ptr %add.ptr56.1, i64 3
  %19 = load i8, ptr %arrayidx13.2, align 1
  %conv14.2 = zext i8 %19 to i32
  %add15.2 = add nuw nsw i32 %conv14.2, %conv12.2
  %sub20.2 = sub nsw i32 %conv12.2, %conv14.2
  %shl21.2 = shl nsw i32 %sub20.2, 16
  %add22.2 = or disjoint i32 %shl21.2, %add15.2
  %add23.2 = add nsw i32 %add22.2, %add10.2
  store i32 %add23.2, ptr %add.ptr.2, align 8
  %sub25.2 = sub nsw i32 %add10.2, %add22.2
  %arrayidx26.2 = getelementptr inbounds i8, ptr %tmp, i64 24
  store i32 %sub25.2, ptr %arrayidx26.2, align 8
  %arrayidx27.2 = getelementptr inbounds i8, ptr %add.ptr56.1, i64 4
  %20 = load i8, ptr %arrayidx27.2, align 1
  %conv28.2 = zext i8 %20 to i32
  %arrayidx29.2 = getelementptr inbounds i8, ptr %add.ptr56.1, i64 5
  %21 = load i8, ptr %arrayidx29.2, align 1
  %conv30.2 = zext i8 %21 to i32
  %add31.2 = add nuw nsw i32 %conv30.2, %conv28.2
  %sub36.2 = sub nsw i32 %conv28.2, %conv30.2
  %shl37.2 = shl nsw i32 %sub36.2, 16
  %add38.2 = or disjoint i32 %shl37.2, %add31.2
  %arrayidx39.2 = getelementptr inbounds i8, ptr %add.ptr56.1, i64 6
  %22 = load i8, ptr %arrayidx39.2, align 1
  %conv40.2 = zext i8 %22 to i32
  %arrayidx41.2 = getelementptr inbounds i8, ptr %add.ptr56.1, i64 7
  %23 = load i8, ptr %arrayidx41.2, align 1
  %conv42.2 = zext i8 %23 to i32
  %add43.2 = add nuw nsw i32 %conv42.2, %conv40.2
  %sub48.2 = sub nsw i32 %conv40.2, %conv42.2
  %shl49.2 = shl nsw i32 %sub48.2, 16
  %add50.2 = or disjoint i32 %shl49.2, %add43.2
  %add51.2 = add nsw i32 %add50.2, %add38.2
  %arrayidx52.2 = getelementptr inbounds i8, ptr %tmp, i64 40
  store i32 %add51.2, ptr %arrayidx52.2, align 8
  %sub53.2 = sub nsw i32 %add38.2, %add50.2
  %arrayidx54.2 = getelementptr inbounds i8, ptr %tmp, i64 56
  store i32 %sub53.2, ptr %arrayidx54.2, align 8
  %add.ptr56.2 = getelementptr inbounds i8, ptr %add.ptr56.1, i64 %idx.ext55
  %add.ptr.3 = getelementptr inbounds i8, ptr %tmp, i64 12
  %24 = load i8, ptr %add.ptr56.2, align 1
  %conv.3 = zext i8 %24 to i32
  %arrayidx4.3 = getelementptr inbounds i8, ptr %add.ptr56.2, i64 1
  %25 = load i8, ptr %arrayidx4.3, align 1
  %conv5.3 = zext i8 %25 to i32
  %add.3 = add nuw nsw i32 %conv5.3, %conv.3
  %sub.3 = sub nsw i32 %conv.3, %conv5.3
  %shl.3 = shl nsw i32 %sub.3, 16
  %add10.3 = or disjoint i32 %shl.3, %add.3
  %arrayidx11.3 = getelementptr inbounds i8, ptr %add.ptr56.2, i64 2
  %26 = load i8, ptr %arrayidx11.3, align 1
  %conv12.3 = zext i8 %26 to i32
  %arrayidx13.3 = getelementptr inbounds i8, ptr %add.ptr56.2, i64 3
  %27 = load i8, ptr %arrayidx13.3, align 1
  %conv14.3 = zext i8 %27 to i32
  %add15.3 = add nuw nsw i32 %conv14.3, %conv12.3
  %sub20.3 = sub nsw i32 %conv12.3, %conv14.3
  %shl21.3 = shl nsw i32 %sub20.3, 16
  %add22.3 = or disjoint i32 %shl21.3, %add15.3
  %add23.3 = add nsw i32 %add22.3, %add10.3
  store i32 %add23.3, ptr %add.ptr.3, align 4
  %sub25.3 = sub nsw i32 %add10.3, %add22.3
  %arrayidx26.3 = getelementptr inbounds i8, ptr %tmp, i64 28
  store i32 %sub25.3, ptr %arrayidx26.3, align 4
  %arrayidx27.3 = getelementptr inbounds i8, ptr %add.ptr56.2, i64 4
  %28 = load i8, ptr %arrayidx27.3, align 1
  %conv28.3 = zext i8 %28 to i32
  %arrayidx29.3 = getelementptr inbounds i8, ptr %add.ptr56.2, i64 5
  %29 = load i8, ptr %arrayidx29.3, align 1
  %conv30.3 = zext i8 %29 to i32
  %add31.3 = add nuw nsw i32 %conv30.3, %conv28.3
  %sub36.3 = sub nsw i32 %conv28.3, %conv30.3
  %shl37.3 = shl nsw i32 %sub36.3, 16
  %add38.3 = or disjoint i32 %shl37.3, %add31.3
  %arrayidx39.3 = getelementptr inbounds i8, ptr %add.ptr56.2, i64 6
  %30 = load i8, ptr %arrayidx39.3, align 1
  %conv40.3 = zext i8 %30 to i32
  %arrayidx41.3 = getelementptr inbounds i8, ptr %add.ptr56.2, i64 7
  %31 = load i8, ptr %arrayidx41.3, align 1
  %conv42.3 = zext i8 %31 to i32
  %add43.3 = add nuw nsw i32 %conv42.3, %conv40.3
  %sub48.3 = sub nsw i32 %conv40.3, %conv42.3
  %shl49.3 = shl nsw i32 %sub48.3, 16
  %add50.3 = or disjoint i32 %shl49.3, %add43.3
  %add51.3 = add nsw i32 %add50.3, %add38.3
  %arrayidx52.3 = getelementptr inbounds i8, ptr %tmp, i64 44
  store i32 %add51.3, ptr %arrayidx52.3, align 4
  %sub53.3 = sub nsw i32 %add38.3, %add50.3
  %arrayidx54.3 = getelementptr inbounds i8, ptr %tmp, i64 60
  store i32 %sub53.3, ptr %arrayidx54.3, align 4
  %add.ptr56.3 = getelementptr inbounds i8, ptr %add.ptr56.2, i64 %idx.ext55
  %add.ptr3.4 = getelementptr inbounds i8, ptr %tmp, i64 64
  %32 = load i8, ptr %add.ptr56.3, align 1
  %conv.4 = zext i8 %32 to i32
  %arrayidx4.4 = getelementptr inbounds i8, ptr %add.ptr56.3, i64 1
  %33 = load i8, ptr %arrayidx4.4, align 1
  %conv5.4 = zext i8 %33 to i32
  %add.4 = add nuw nsw i32 %conv5.4, %conv.4
  %sub.4 = sub nsw i32 %conv.4, %conv5.4
  %shl.4 = shl nsw i32 %sub.4, 16
  %add10.4 = or disjoint i32 %shl.4, %add.4
  %arrayidx11.4 = getelementptr inbounds i8, ptr %add.ptr56.3, i64 2
  %34 = load i8, ptr %arrayidx11.4, align 1
  %conv12.4 = zext i8 %34 to i32
  %arrayidx13.4 = getelementptr inbounds i8, ptr %add.ptr56.3, i64 3
  %35 = load i8, ptr %arrayidx13.4, align 1
  %conv14.4 = zext i8 %35 to i32
  %add15.4 = add nuw nsw i32 %conv14.4, %conv12.4
  %sub20.4 = sub nsw i32 %conv12.4, %conv14.4
  %shl21.4 = shl nsw i32 %sub20.4, 16
  %add22.4 = or disjoint i32 %shl21.4, %add15.4
  %add23.4 = add nsw i32 %add22.4, %add10.4
  store i32 %add23.4, ptr %add.ptr3.4, align 16
  %sub25.4 = sub nsw i32 %add10.4, %add22.4
  %arrayidx26.4 = getelementptr inbounds i8, ptr %tmp, i64 80
  store i32 %sub25.4, ptr %arrayidx26.4, align 16
  %arrayidx27.4 = getelementptr inbounds i8, ptr %add.ptr56.3, i64 4
  %36 = load i8, ptr %arrayidx27.4, align 1
  %conv28.4 = zext i8 %36 to i32
  %arrayidx29.4 = getelementptr inbounds i8, ptr %add.ptr56.3, i64 5
  %37 = load i8, ptr %arrayidx29.4, align 1
  %conv30.4 = zext i8 %37 to i32
  %add31.4 = add nuw nsw i32 %conv30.4, %conv28.4
  %sub36.4 = sub nsw i32 %conv28.4, %conv30.4
  %shl37.4 = shl nsw i32 %sub36.4, 16
  %add38.4 = or disjoint i32 %shl37.4, %add31.4
  %arrayidx39.4 = getelementptr inbounds i8, ptr %add.ptr56.3, i64 6
  %38 = load i8, ptr %arrayidx39.4, align 1
  %conv40.4 = zext i8 %38 to i32
  %arrayidx41.4 = getelementptr inbounds i8, ptr %add.ptr56.3, i64 7
  %39 = load i8, ptr %arrayidx41.4, align 1
  %conv42.4 = zext i8 %39 to i32
  %add43.4 = add nuw nsw i32 %conv42.4, %conv40.4
  %sub48.4 = sub nsw i32 %conv40.4, %conv42.4
  %shl49.4 = shl nsw i32 %sub48.4, 16
  %add50.4 = or disjoint i32 %shl49.4, %add43.4
  %add51.4 = add nsw i32 %add50.4, %add38.4
  %arrayidx52.4 = getelementptr inbounds i8, ptr %tmp, i64 96
  store i32 %add51.4, ptr %arrayidx52.4, align 16
  %sub53.4 = sub nsw i32 %add38.4, %add50.4
  %arrayidx54.4 = getelementptr inbounds i8, ptr %tmp, i64 112
  store i32 %sub53.4, ptr %arrayidx54.4, align 16
  %add.ptr56.4 = getelementptr inbounds i8, ptr %add.ptr56.3, i64 %idx.ext55
  %add.ptr3.5 = getelementptr inbounds i8, ptr %tmp, i64 68
  %40 = load i8, ptr %add.ptr56.4, align 1
  %conv.5 = zext i8 %40 to i32
  %arrayidx4.5 = getelementptr inbounds i8, ptr %add.ptr56.4, i64 1
  %41 = load i8, ptr %arrayidx4.5, align 1
  %conv5.5 = zext i8 %41 to i32
  %add.5 = add nuw nsw i32 %conv5.5, %conv.5
  %sub.5 = sub nsw i32 %conv.5, %conv5.5
  %shl.5 = shl nsw i32 %sub.5, 16
  %add10.5 = or disjoint i32 %shl.5, %add.5
  %arrayidx11.5 = getelementptr inbounds i8, ptr %add.ptr56.4, i64 2
  %42 = load i8, ptr %arrayidx11.5, align 1
  %conv12.5 = zext i8 %42 to i32
  %arrayidx13.5 = getelementptr inbounds i8, ptr %add.ptr56.4, i64 3
  %43 = load i8, ptr %arrayidx13.5, align 1
  %conv14.5 = zext i8 %43 to i32
  %add15.5 = add nuw nsw i32 %conv14.5, %conv12.5
  %sub20.5 = sub nsw i32 %conv12.5, %conv14.5
  %shl21.5 = shl nsw i32 %sub20.5, 16
  %add22.5 = or disjoint i32 %shl21.5, %add15.5
  %add23.5 = add nsw i32 %add22.5, %add10.5
  store i32 %add23.5, ptr %add.ptr3.5, align 4
  %sub25.5 = sub nsw i32 %add10.5, %add22.5
  %arrayidx26.5 = getelementptr inbounds i8, ptr %tmp, i64 84
  store i32 %sub25.5, ptr %arrayidx26.5, align 4
  %arrayidx27.5 = getelementptr inbounds i8, ptr %add.ptr56.4, i64 4
  %44 = load i8, ptr %arrayidx27.5, align 1
  %conv28.5 = zext i8 %44 to i32
  %arrayidx29.5 = getelementptr inbounds i8, ptr %add.ptr56.4, i64 5
  %45 = load i8, ptr %arrayidx29.5, align 1
  %conv30.5 = zext i8 %45 to i32
  %add31.5 = add nuw nsw i32 %conv30.5, %conv28.5
  %sub36.5 = sub nsw i32 %conv28.5, %conv30.5
  %shl37.5 = shl nsw i32 %sub36.5, 16
  %add38.5 = or disjoint i32 %shl37.5, %add31.5
  %arrayidx39.5 = getelementptr inbounds i8, ptr %add.ptr56.4, i64 6
  %46 = load i8, ptr %arrayidx39.5, align 1
  %conv40.5 = zext i8 %46 to i32
  %arrayidx41.5 = getelementptr inbounds i8, ptr %add.ptr56.4, i64 7
  %47 = load i8, ptr %arrayidx41.5, align 1
  %conv42.5 = zext i8 %47 to i32
  %add43.5 = add nuw nsw i32 %conv42.5, %conv40.5
  %sub48.5 = sub nsw i32 %conv40.5, %conv42.5
  %shl49.5 = shl nsw i32 %sub48.5, 16
  %add50.5 = or disjoint i32 %shl49.5, %add43.5
  %add51.5 = add nsw i32 %add50.5, %add38.5
  %arrayidx52.5 = getelementptr inbounds i8, ptr %tmp, i64 100
  store i32 %add51.5, ptr %arrayidx52.5, align 4
  %sub53.5 = sub nsw i32 %add38.5, %add50.5
  %arrayidx54.5 = getelementptr inbounds i8, ptr %tmp, i64 116
  store i32 %sub53.5, ptr %arrayidx54.5, align 4
  %add.ptr56.5 = getelementptr inbounds i8, ptr %add.ptr56.4, i64 %idx.ext55
  %add.ptr3.6 = getelementptr inbounds i8, ptr %tmp, i64 72
  %48 = load i8, ptr %add.ptr56.5, align 1
  %conv.6 = zext i8 %48 to i32
  %arrayidx4.6 = getelementptr inbounds i8, ptr %add.ptr56.5, i64 1
  %49 = load i8, ptr %arrayidx4.6, align 1
  %conv5.6 = zext i8 %49 to i32
  %add.6 = add nuw nsw i32 %conv5.6, %conv.6
  %sub.6 = sub nsw i32 %conv.6, %conv5.6
  %shl.6 = shl nsw i32 %sub.6, 16
  %add10.6 = or disjoint i32 %shl.6, %add.6
  %arrayidx11.6 = getelementptr inbounds i8, ptr %add.ptr56.5, i64 2
  %50 = load i8, ptr %arrayidx11.6, align 1
  %conv12.6 = zext i8 %50 to i32
  %arrayidx13.6 = getelementptr inbounds i8, ptr %add.ptr56.5, i64 3
  %51 = load i8, ptr %arrayidx13.6, align 1
  %conv14.6 = zext i8 %51 to i32
  %add15.6 = add nuw nsw i32 %conv14.6, %conv12.6
  %sub20.6 = sub nsw i32 %conv12.6, %conv14.6
  %shl21.6 = shl nsw i32 %sub20.6, 16
  %add22.6 = or disjoint i32 %shl21.6, %add15.6
  %add23.6 = add nsw i32 %add22.6, %add10.6
  store i32 %add23.6, ptr %add.ptr3.6, align 8
  %sub25.6 = sub nsw i32 %add10.6, %add22.6
  %arrayidx26.6 = getelementptr inbounds i8, ptr %tmp, i64 88
  store i32 %sub25.6, ptr %arrayidx26.6, align 8
  %arrayidx27.6 = getelementptr inbounds i8, ptr %add.ptr56.5, i64 4
  %52 = load i8, ptr %arrayidx27.6, align 1
  %conv28.6 = zext i8 %52 to i32
  %arrayidx29.6 = getelementptr inbounds i8, ptr %add.ptr56.5, i64 5
  %53 = load i8, ptr %arrayidx29.6, align 1
  %conv30.6 = zext i8 %53 to i32
  %add31.6 = add nuw nsw i32 %conv30.6, %conv28.6
  %sub36.6 = sub nsw i32 %conv28.6, %conv30.6
  %shl37.6 = shl nsw i32 %sub36.6, 16
  %add38.6 = or disjoint i32 %shl37.6, %add31.6
  %arrayidx39.6 = getelementptr inbounds i8, ptr %add.ptr56.5, i64 6
  %54 = load i8, ptr %arrayidx39.6, align 1
  %conv40.6 = zext i8 %54 to i32
  %arrayidx41.6 = getelementptr inbounds i8, ptr %add.ptr56.5, i64 7
  %55 = load i8, ptr %arrayidx41.6, align 1
  %conv42.6 = zext i8 %55 to i32
  %add43.6 = add nuw nsw i32 %conv42.6, %conv40.6
  %sub48.6 = sub nsw i32 %conv40.6, %conv42.6
  %shl49.6 = shl nsw i32 %sub48.6, 16
  %add50.6 = or disjoint i32 %shl49.6, %add43.6
  %add51.6 = add nsw i32 %add50.6, %add38.6
  %arrayidx52.6 = getelementptr inbounds i8, ptr %tmp, i64 104
  store i32 %add51.6, ptr %arrayidx52.6, align 8
  %sub53.6 = sub nsw i32 %add38.6, %add50.6
  %arrayidx54.6 = getelementptr inbounds i8, ptr %tmp, i64 120
  store i32 %sub53.6, ptr %arrayidx54.6, align 8
  %add.ptr56.6 = getelementptr inbounds i8, ptr %add.ptr56.5, i64 %idx.ext55
  %add.ptr3.7 = getelementptr inbounds i8, ptr %tmp, i64 76
  %56 = load i8, ptr %add.ptr56.6, align 1
  %conv.7 = zext i8 %56 to i32
  %arrayidx4.7 = getelementptr inbounds i8, ptr %add.ptr56.6, i64 1
  %57 = load i8, ptr %arrayidx4.7, align 1
  %conv5.7 = zext i8 %57 to i32
  %add.7 = add nuw nsw i32 %conv5.7, %conv.7
  %sub.7 = sub nsw i32 %conv.7, %conv5.7
  %shl.7 = shl nsw i32 %sub.7, 16
  %add10.7 = or disjoint i32 %shl.7, %add.7
  %arrayidx11.7 = getelementptr inbounds i8, ptr %add.ptr56.6, i64 2
  %58 = load i8, ptr %arrayidx11.7, align 1
  %conv12.7 = zext i8 %58 to i32
  %arrayidx13.7 = getelementptr inbounds i8, ptr %add.ptr56.6, i64 3
  %59 = load i8, ptr %arrayidx13.7, align 1
  %conv14.7 = zext i8 %59 to i32
  %add15.7 = add nuw nsw i32 %conv14.7, %conv12.7
  %sub20.7 = sub nsw i32 %conv12.7, %conv14.7
  %shl21.7 = shl nsw i32 %sub20.7, 16
  %add22.7 = or disjoint i32 %shl21.7, %add15.7
  %add23.7 = add nsw i32 %add22.7, %add10.7
  store i32 %add23.7, ptr %add.ptr3.7, align 4
  %sub25.7 = sub nsw i32 %add10.7, %add22.7
  %arrayidx26.7 = getelementptr inbounds i8, ptr %tmp, i64 92
  store i32 %sub25.7, ptr %arrayidx26.7, align 4
  %arrayidx27.7 = getelementptr inbounds i8, ptr %add.ptr56.6, i64 4
  %60 = load i8, ptr %arrayidx27.7, align 1
  %conv28.7 = zext i8 %60 to i32
  %arrayidx29.7 = getelementptr inbounds i8, ptr %add.ptr56.6, i64 5
  %61 = load i8, ptr %arrayidx29.7, align 1
  %conv30.7 = zext i8 %61 to i32
  %add31.7 = add nuw nsw i32 %conv30.7, %conv28.7
  %sub36.7 = sub nsw i32 %conv28.7, %conv30.7
  %shl37.7 = shl nsw i32 %sub36.7, 16
  %add38.7 = or disjoint i32 %shl37.7, %add31.7
  %arrayidx39.7 = getelementptr inbounds i8, ptr %add.ptr56.6, i64 6
  %62 = load i8, ptr %arrayidx39.7, align 1
  %conv40.7 = zext i8 %62 to i32
  %arrayidx41.7 = getelementptr inbounds i8, ptr %add.ptr56.6, i64 7
  %63 = load i8, ptr %arrayidx41.7, align 1
  %conv42.7 = zext i8 %63 to i32
  %add43.7 = add nuw nsw i32 %conv42.7, %conv40.7
  %sub48.7 = sub nsw i32 %conv40.7, %conv42.7
  %shl49.7 = shl nsw i32 %sub48.7, 16
  %add50.7 = or disjoint i32 %shl49.7, %add43.7
  %add51.7 = add nsw i32 %add50.7, %add38.7
  %arrayidx52.7 = getelementptr inbounds i8, ptr %tmp, i64 108
  store i32 %add51.7, ptr %arrayidx52.7, align 4
  %sub53.7 = sub nsw i32 %add38.7, %add50.7
  %arrayidx54.7 = getelementptr inbounds i8, ptr %tmp, i64 124
  store i32 %sub53.7, ptr %arrayidx54.7, align 4
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue370, %entry
  %index = phi i64 [ 0, %entry ], [ %index.next, %pred.store.continue370 ]
  %64 = phi <4 x i32> [ zeroinitializer, %entry ], [ %193, %pred.store.continue370 ]
  %65 = insertelement <4 x i64> poison, i64 %index, i64 0
  %66 = icmp ult <4 x i64> %65, <i64 8, i64 8, i64 8, i64 8>
  %67 = shl nuw nsw i64 %index, 2
  %68 = shl i64 %index, 2
  %69 = or disjoint i64 %68, 4
  %70 = shl i64 %index, 2
  %71 = or disjoint i64 %70, 8
  %72 = shl i64 %index, 2
  %73 = or disjoint i64 %72, 12
  %74 = getelementptr inbounds [32 x i32], ptr %tmp, i64 0, i64 %67
  %75 = getelementptr inbounds [32 x i32], ptr %tmp, i64 0, i64 %69
  %76 = getelementptr inbounds [32 x i32], ptr %tmp, i64 0, i64 %71
  %77 = getelementptr inbounds [32 x i32], ptr %tmp, i64 0, i64 %73
  %78 = extractelement <4 x i1> %66, i64 0
  br i1 %78, label %pred.load.if, label %pred.load.continue

pred.load.if:                                     ; preds = %vector.body
  %79 = load i32, ptr %74, align 16
  br label %pred.load.continue

pred.load.continue:                               ; preds = %pred.load.if, %vector.body
  %80 = phi i32 [ poison, %vector.body ], [ %79, %pred.load.if ]
  %81 = extractelement <4 x i1> %66, i64 0
  br i1 %81, label %pred.load.if335, label %pred.load.continue336

pred.load.if335:                                  ; preds = %pred.load.continue
  %82 = load i32, ptr %75, align 16
  br label %pred.load.continue336

pred.load.continue336:                            ; preds = %pred.load.if335, %pred.load.continue
  %83 = phi i32 [ poison, %pred.load.continue ], [ %82, %pred.load.if335 ]
  %84 = extractelement <4 x i1> %66, i64 0
  br i1 %84, label %pred.load.if337, label %pred.load.continue338

pred.load.if337:                                  ; preds = %pred.load.continue336
  %85 = load i32, ptr %76, align 16
  br label %pred.load.continue338

pred.load.continue338:                            ; preds = %pred.load.if337, %pred.load.continue336
  %86 = phi i32 [ poison, %pred.load.continue336 ], [ %85, %pred.load.if337 ]
  %87 = extractelement <4 x i1> %66, i64 0
  br i1 %87, label %pred.load.if339, label %pred.load.continue340

pred.load.if339:                                  ; preds = %pred.load.continue338
  %88 = load i32, ptr %77, align 16
  br label %pred.load.continue340

pred.load.continue340:                            ; preds = %pred.load.if339, %pred.load.continue338
  %89 = phi i32 [ poison, %pred.load.continue338 ], [ %88, %pred.load.if339 ]
  %90 = or disjoint i64 %68, 5
  %91 = or disjoint i64 %70, 9
  %92 = or disjoint i64 %72, 13
  %93 = getelementptr inbounds [32 x i32], ptr %tmp, i64 0, i64 %90
  %94 = getelementptr inbounds [32 x i32], ptr %tmp, i64 0, i64 %91
  %95 = getelementptr inbounds [32 x i32], ptr %tmp, i64 0, i64 %92
  br i1 %78, label %pred.load.if341, label %pred.load.continue342

pred.load.if341:                                  ; preds = %pred.load.continue340
  %96 = or disjoint i64 %67, 1
  %97 = getelementptr inbounds [32 x i32], ptr %tmp, i64 0, i64 %96
  %98 = load i32, ptr %97, align 4
  br label %pred.load.continue342

pred.load.continue342:                            ; preds = %pred.load.if341, %pred.load.continue340
  %99 = phi i32 [ poison, %pred.load.continue340 ], [ %98, %pred.load.if341 ]
  br i1 %81, label %pred.load.if343, label %pred.load.continue344

pred.load.if343:                                  ; preds = %pred.load.continue342
  %100 = load i32, ptr %93, align 4
  br label %pred.load.continue344

pred.load.continue344:                            ; preds = %pred.load.if343, %pred.load.continue342
  %101 = phi i32 [ poison, %pred.load.continue342 ], [ %100, %pred.load.if343 ]
  br i1 %84, label %pred.load.if345, label %pred.load.continue346

pred.load.if345:                                  ; preds = %pred.load.continue344
  %102 = load i32, ptr %94, align 4
  br label %pred.load.continue346

pred.load.continue346:                            ; preds = %pred.load.if345, %pred.load.continue344
  %103 = phi i32 [ poison, %pred.load.continue344 ], [ %102, %pred.load.if345 ]
  br i1 %87, label %pred.load.if347, label %pred.load.continue348

pred.load.if347:                                  ; preds = %pred.load.continue346
  %104 = load i32, ptr %95, align 4
  br label %pred.load.continue348

pred.load.continue348:                            ; preds = %pred.load.if347, %pred.load.continue346
  %105 = phi i32 [ poison, %pred.load.continue346 ], [ %104, %pred.load.if347 ]
  %106 = insertelement <4 x i32> poison, i32 %101, i64 0
  %107 = insertelement <4 x i32> %106, i32 %99, i64 1
  %108 = insertelement <4 x i32> %107, i32 %103, i64 2
  %109 = insertelement <4 x i32> %108, i32 %105, i64 3
  %110 = insertelement <4 x i32> poison, i32 %83, i64 0
  %111 = insertelement <4 x i32> %110, i32 %80, i64 1
  %112 = insertelement <4 x i32> %111, i32 %86, i64 2
  %113 = insertelement <4 x i32> %112, i32 %89, i64 3
  %114 = add <4 x i32> %109, %113
  %115 = sub <4 x i32> %113, %109
  %116 = or disjoint i64 %67, 2
  %117 = or disjoint i64 %68, 6
  %118 = or disjoint i64 %70, 10
  %119 = or disjoint i64 %72, 14
  %120 = getelementptr inbounds [32 x i32], ptr %tmp, i64 0, i64 %116
  %121 = getelementptr inbounds [32 x i32], ptr %tmp, i64 0, i64 %117
  %122 = getelementptr inbounds [32 x i32], ptr %tmp, i64 0, i64 %118
  %123 = getelementptr inbounds [32 x i32], ptr %tmp, i64 0, i64 %119
  br i1 %78, label %pred.load.if349, label %pred.load.continue350

pred.load.if349:                                  ; preds = %pred.load.continue348
  %124 = load i32, ptr %120, align 8
  br label %pred.load.continue350

pred.load.continue350:                            ; preds = %pred.load.if349, %pred.load.continue348
  %125 = phi i32 [ poison, %pred.load.continue348 ], [ %124, %pred.load.if349 ]
  br i1 %81, label %pred.load.if351, label %pred.load.continue352

pred.load.if351:                                  ; preds = %pred.load.continue350
  %126 = load i32, ptr %121, align 8
  br label %pred.load.continue352

pred.load.continue352:                            ; preds = %pred.load.if351, %pred.load.continue350
  %127 = phi i32 [ poison, %pred.load.continue350 ], [ %126, %pred.load.if351 ]
  br i1 %84, label %pred.load.if353, label %pred.load.continue354

pred.load.if353:                                  ; preds = %pred.load.continue352
  %128 = load i32, ptr %122, align 8
  br label %pred.load.continue354

pred.load.continue354:                            ; preds = %pred.load.if353, %pred.load.continue352
  %129 = phi i32 [ poison, %pred.load.continue352 ], [ %128, %pred.load.if353 ]
  br i1 %87, label %pred.load.if355, label %pred.load.continue356

pred.load.if355:                                  ; preds = %pred.load.continue354
  %130 = load i32, ptr %123, align 8
  br label %pred.load.continue356

pred.load.continue356:                            ; preds = %pred.load.if355, %pred.load.continue354
  %131 = phi i32 [ poison, %pred.load.continue354 ], [ %130, %pred.load.if355 ]
  %132 = or disjoint i64 %68, 7
  %133 = or disjoint i64 %70, 11
  %134 = or disjoint i64 %72, 15
  %135 = getelementptr inbounds [32 x i32], ptr %tmp, i64 0, i64 %132
  %136 = getelementptr inbounds [32 x i32], ptr %tmp, i64 0, i64 %133
  %137 = getelementptr inbounds [32 x i32], ptr %tmp, i64 0, i64 %134
  br i1 %78, label %pred.load.if357, label %pred.load.continue358

pred.load.if357:                                  ; preds = %pred.load.continue356
  %138 = or disjoint i64 %67, 3
  %139 = getelementptr inbounds [32 x i32], ptr %tmp, i64 0, i64 %138
  %140 = load i32, ptr %139, align 4
  br label %pred.load.continue358

pred.load.continue358:                            ; preds = %pred.load.if357, %pred.load.continue356
  %141 = phi i32 [ poison, %pred.load.continue356 ], [ %140, %pred.load.if357 ]
  br i1 %81, label %pred.load.if359, label %pred.load.continue360

pred.load.if359:                                  ; preds = %pred.load.continue358
  %142 = load i32, ptr %135, align 4
  br label %pred.load.continue360

pred.load.continue360:                            ; preds = %pred.load.if359, %pred.load.continue358
  %143 = phi i32 [ poison, %pred.load.continue358 ], [ %142, %pred.load.if359 ]
  br i1 %84, label %pred.load.if361, label %pred.load.continue362

pred.load.if361:                                  ; preds = %pred.load.continue360
  %144 = load i32, ptr %136, align 4
  br label %pred.load.continue362

pred.load.continue362:                            ; preds = %pred.load.if361, %pred.load.continue360
  %145 = phi i32 [ poison, %pred.load.continue360 ], [ %144, %pred.load.if361 ]
  br i1 %87, label %pred.load.if363, label %pred.load.continue364

pred.load.if363:                                  ; preds = %pred.load.continue362
  %146 = load i32, ptr %137, align 4
  br label %pred.load.continue364

pred.load.continue364:                            ; preds = %pred.load.if363, %pred.load.continue362
  %147 = phi i32 [ poison, %pred.load.continue362 ], [ %146, %pred.load.if363 ]
  %148 = insertelement <4 x i32> poison, i32 %143, i64 0
  %149 = insertelement <4 x i32> %148, i32 %141, i64 1
  %150 = insertelement <4 x i32> %149, i32 %145, i64 2
  %151 = insertelement <4 x i32> %150, i32 %147, i64 3
  %152 = insertelement <4 x i32> poison, i32 %127, i64 0
  %153 = insertelement <4 x i32> %152, i32 %125, i64 1
  %154 = insertelement <4 x i32> %153, i32 %129, i64 2
  %155 = insertelement <4 x i32> %154, i32 %131, i64 3
  %156 = add <4 x i32> %151, %155
  %157 = sub <4 x i32> %155, %151
  %158 = add nsw <4 x i32> %156, %114
  %159 = sub nsw <4 x i32> %114, %156
  %160 = add nsw <4 x i32> %157, %115
  %161 = sub nsw <4 x i32> %115, %157
  br i1 %78, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %pred.load.continue364
  %162 = shufflevector <4 x i32> %158, <4 x i32> %160, <2 x i32> <i32 1, i32 5>
  store <2 x i32> %162, ptr %74, align 16
  %163 = shufflevector <4 x i32> %159, <4 x i32> %161, <2 x i32> <i32 1, i32 5>
  store <2 x i32> %163, ptr %120, align 8
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %pred.load.continue364
  br i1 %81, label %pred.store.if365, label %pred.store.continue366

pred.store.if365:                                 ; preds = %pred.store.continue
  %164 = shufflevector <4 x i32> %158, <4 x i32> %160, <2 x i32> <i32 0, i32 4>
  store <2 x i32> %164, ptr %75, align 16
  %165 = shufflevector <4 x i32> %159, <4 x i32> %161, <2 x i32> <i32 0, i32 4>
  store <2 x i32> %165, ptr %121, align 8
  br label %pred.store.continue366

pred.store.continue366:                           ; preds = %pred.store.if365, %pred.store.continue
  br i1 %84, label %pred.store.if367, label %pred.store.continue368

pred.store.if367:                                 ; preds = %pred.store.continue366
  %166 = shufflevector <4 x i32> %158, <4 x i32> %160, <2 x i32> <i32 2, i32 6>
  store <2 x i32> %166, ptr %76, align 16
  %167 = shufflevector <4 x i32> %159, <4 x i32> %161, <2 x i32> <i32 2, i32 6>
  store <2 x i32> %167, ptr %122, align 8
  br label %pred.store.continue368

pred.store.continue368:                           ; preds = %pred.store.if367, %pred.store.continue366
  br i1 %87, label %pred.store.if369, label %pred.store.continue370

pred.store.if369:                                 ; preds = %pred.store.continue368
  %168 = shufflevector <4 x i32> %158, <4 x i32> %160, <2 x i32> <i32 3, i32 7>
  store <2 x i32> %168, ptr %77, align 16
  %169 = shufflevector <4 x i32> %159, <4 x i32> %161, <2 x i32> <i32 3, i32 7>
  store <2 x i32> %169, ptr %123, align 8
  br label %pred.store.continue370

pred.store.continue370:                           ; preds = %pred.store.if369, %pred.store.continue368
  %170 = lshr <4 x i32> %158, <i32 15, i32 15, i32 15, i32 15>
  %171 = lshr <4 x i32> %160, <i32 15, i32 15, i32 15, i32 15>
  %172 = lshr <4 x i32> %159, <i32 15, i32 15, i32 15, i32 15>
  %173 = lshr <4 x i32> %161, <i32 15, i32 15, i32 15, i32 15>
  %174 = and <4 x i32> %170, <i32 65537, i32 65537, i32 65537, i32 65537>
  %175 = mul nuw <4 x i32> %174, <i32 65535, i32 65535, i32 65535, i32 65535>
  %176 = add <4 x i32> %175, %158
  %177 = xor <4 x i32> %176, %175
  %178 = and <4 x i32> %171, <i32 65537, i32 65537, i32 65537, i32 65537>
  %179 = mul nuw <4 x i32> %178, <i32 65535, i32 65535, i32 65535, i32 65535>
  %180 = add <4 x i32> %179, %160
  %181 = xor <4 x i32> %180, %179
  %182 = and <4 x i32> %172, <i32 65537, i32 65537, i32 65537, i32 65537>
  %183 = mul nuw <4 x i32> %182, <i32 65535, i32 65535, i32 65535, i32 65535>
  %184 = add <4 x i32> %183, %159
  %185 = xor <4 x i32> %184, %183
  %186 = and <4 x i32> %173, <i32 65537, i32 65537, i32 65537, i32 65537>
  %187 = mul nuw <4 x i32> %186, <i32 65535, i32 65535, i32 65535, i32 65535>
  %188 = add <4 x i32> %187, %161
  %189 = xor <4 x i32> %188, %187
  %190 = add <4 x i32> %181, %64
  %191 = add <4 x i32> %190, %177
  %192 = add <4 x i32> %191, %185
  %193 = add <4 x i32> %192, %189
  %index.next = add i64 %index, 4
  %194 = icmp eq i64 %index.next, 8
  br i1 %194, label %middle.block, label %vector.body, !llvm.loop !13

middle.block:                                     ; preds = %pred.store.continue370
  %195 = shufflevector <4 x i1> %66, <4 x i1> poison, <4 x i32> zeroinitializer
  %196 = select <4 x i1> %195, <4 x i32> %193, <4 x i32> %64
  %197 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %196)
  %198 = load i32, ptr %tmp, align 16
  %199 = load i32, ptr %arrayidx52, align 16
  %add140 = add i32 %199, %198
  %sub147 = sub i32 %198, %199
  %200 = load i32, ptr %add.ptr3.4, align 16
  %arrayidx154 = getelementptr inbounds i8, ptr %tmp, i64 96
  %201 = load i32, ptr %arrayidx154, align 16
  %add155 = add i32 %201, %200
  %sub163 = sub i32 %200, %201
  %add164 = add nsw i32 %add155, %add140
  %sub165 = sub nsw i32 %add140, %add155
  %add166 = add nsw i32 %sub163, %sub147
  %sub167 = sub nsw i32 %sub147, %sub163
  %shr.i291 = lshr i32 %add164, 15
  %and.i292 = and i32 %shr.i291, 65537
  %mul.i293 = mul nuw i32 %and.i292, 65535
  %add.i294 = add i32 %mul.i293, %add164
  %xor.i295 = xor i32 %add.i294, %mul.i293
  %shr.i296 = lshr i32 %add166, 15
  %and.i297 = and i32 %shr.i296, 65537
  %mul.i298 = mul nuw i32 %and.i297, 65535
  %add.i299 = add i32 %mul.i298, %add166
  %xor.i300 = xor i32 %add.i299, %mul.i298
  %shr.i301 = lshr i32 %sub165, 15
  %and.i302 = and i32 %shr.i301, 65537
  %mul.i303 = mul nuw i32 %and.i302, 65535
  %add.i304 = add i32 %mul.i303, %sub165
  %xor.i305 = xor i32 %add.i304, %mul.i303
  %shr.i306 = lshr i32 %sub167, 15
  %and.i307 = and i32 %shr.i306, 65537
  %mul.i308 = mul nuw i32 %and.i307, 65535
  %add.i309 = add i32 %mul.i308, %sub167
  %xor.i310 = xor i32 %add.i309, %mul.i308
  %add172 = add i32 %xor.i300, %xor.i295
  %add174 = add i32 %add172, %xor.i305
  %add175 = add i32 %add174, %xor.i310
  %202 = load i32, ptr %add.ptr.1, align 4
  %arrayidx139.1 = getelementptr inbounds i8, ptr %tmp, i64 36
  %203 = load i32, ptr %arrayidx139.1, align 4
  %add140.1 = add i32 %203, %202
  %sub147.1 = sub i32 %202, %203
  %arrayidx151.1 = getelementptr inbounds i8, ptr %tmp, i64 68
  %204 = load i32, ptr %arrayidx151.1, align 4
  %arrayidx154.1 = getelementptr inbounds i8, ptr %tmp, i64 100
  %205 = load i32, ptr %arrayidx154.1, align 4
  %add155.1 = add i32 %205, %204
  %sub163.1 = sub i32 %204, %205
  %add164.1 = add nsw i32 %add155.1, %add140.1
  %sub165.1 = sub nsw i32 %add140.1, %add155.1
  %add166.1 = add nsw i32 %sub163.1, %sub147.1
  %sub167.1 = sub nsw i32 %sub147.1, %sub163.1
  %shr.i291.1 = lshr i32 %add164.1, 15
  %and.i292.1 = and i32 %shr.i291.1, 65537
  %mul.i293.1 = mul nuw i32 %and.i292.1, 65535
  %add.i294.1 = add i32 %mul.i293.1, %add164.1
  %xor.i295.1 = xor i32 %add.i294.1, %mul.i293.1
  %shr.i296.1 = lshr i32 %add166.1, 15
  %and.i297.1 = and i32 %shr.i296.1, 65537
  %mul.i298.1 = mul nuw i32 %and.i297.1, 65535
  %add.i299.1 = add i32 %mul.i298.1, %add166.1
  %xor.i300.1 = xor i32 %add.i299.1, %mul.i298.1
  %shr.i301.1 = lshr i32 %sub165.1, 15
  %and.i302.1 = and i32 %shr.i301.1, 65537
  %mul.i303.1 = mul nuw i32 %and.i302.1, 65535
  %add.i304.1 = add i32 %mul.i303.1, %sub165.1
  %xor.i305.1 = xor i32 %add.i304.1, %mul.i303.1
  %shr.i306.1 = lshr i32 %sub167.1, 15
  %and.i307.1 = and i32 %shr.i306.1, 65537
  %mul.i308.1 = mul nuw i32 %and.i307.1, 65535
  %add.i309.1 = add i32 %mul.i308.1, %sub167.1
  %xor.i310.1 = xor i32 %add.i309.1, %mul.i308.1
  %add170.1 = add i32 %xor.i300.1, %add175
  %add172.1 = add i32 %add170.1, %xor.i295.1
  %add174.1 = add i32 %add172.1, %xor.i305.1
  %add175.1 = add i32 %add174.1, %xor.i310.1
  %206 = load i32, ptr %add.ptr.2, align 8
  %arrayidx139.2 = getelementptr inbounds i8, ptr %tmp, i64 40
  %207 = load i32, ptr %arrayidx139.2, align 8
  %add140.2 = add i32 %207, %206
  %sub147.2 = sub i32 %206, %207
  %arrayidx151.2 = getelementptr inbounds i8, ptr %tmp, i64 72
  %208 = load i32, ptr %arrayidx151.2, align 8
  %arrayidx154.2 = getelementptr inbounds i8, ptr %tmp, i64 104
  %209 = load i32, ptr %arrayidx154.2, align 8
  %add155.2 = add i32 %209, %208
  %sub163.2 = sub i32 %208, %209
  %add164.2 = add nsw i32 %add155.2, %add140.2
  %sub165.2 = sub nsw i32 %add140.2, %add155.2
  %add166.2 = add nsw i32 %sub163.2, %sub147.2
  %sub167.2 = sub nsw i32 %sub147.2, %sub163.2
  %shr.i291.2 = lshr i32 %add164.2, 15
  %and.i292.2 = and i32 %shr.i291.2, 65537
  %mul.i293.2 = mul nuw i32 %and.i292.2, 65535
  %add.i294.2 = add i32 %mul.i293.2, %add164.2
  %xor.i295.2 = xor i32 %add.i294.2, %mul.i293.2
  %shr.i296.2 = lshr i32 %add166.2, 15
  %and.i297.2 = and i32 %shr.i296.2, 65537
  %mul.i298.2 = mul nuw i32 %and.i297.2, 65535
  %add.i299.2 = add i32 %mul.i298.2, %add166.2
  %xor.i300.2 = xor i32 %add.i299.2, %mul.i298.2
  %shr.i301.2 = lshr i32 %sub165.2, 15
  %and.i302.2 = and i32 %shr.i301.2, 65537
  %mul.i303.2 = mul nuw i32 %and.i302.2, 65535
  %add.i304.2 = add i32 %mul.i303.2, %sub165.2
  %xor.i305.2 = xor i32 %add.i304.2, %mul.i303.2
  %shr.i306.2 = lshr i32 %sub167.2, 15
  %and.i307.2 = and i32 %shr.i306.2, 65537
  %mul.i308.2 = mul nuw i32 %and.i307.2, 65535
  %add.i309.2 = add i32 %mul.i308.2, %sub167.2
  %xor.i310.2 = xor i32 %add.i309.2, %mul.i308.2
  %add170.2 = add i32 %xor.i300.2, %add175.1
  %add172.2 = add i32 %add170.2, %xor.i295.2
  %add174.2 = add i32 %add172.2, %xor.i305.2
  %add175.2 = add i32 %add174.2, %xor.i310.2
  %210 = load i32, ptr %add.ptr.3, align 4
  %arrayidx139.3 = getelementptr inbounds i8, ptr %tmp, i64 44
  %211 = load i32, ptr %arrayidx139.3, align 4
  %add140.3 = add i32 %211, %210
  %sub147.3 = sub i32 %210, %211
  %arrayidx151.3 = getelementptr inbounds i8, ptr %tmp, i64 76
  %212 = load i32, ptr %arrayidx151.3, align 4
  %arrayidx154.3 = getelementptr inbounds i8, ptr %tmp, i64 108
  %213 = load i32, ptr %arrayidx154.3, align 4
  %add155.3 = add i32 %213, %212
  %sub163.3 = sub i32 %212, %213
  %add164.3 = add nsw i32 %add155.3, %add140.3
  %sub165.3 = sub nsw i32 %add140.3, %add155.3
  %add166.3 = add nsw i32 %sub163.3, %sub147.3
  %sub167.3 = sub nsw i32 %sub147.3, %sub163.3
  %shr.i291.3 = lshr i32 %add164.3, 15
  %and.i292.3 = and i32 %shr.i291.3, 65537
  %mul.i293.3 = mul nuw i32 %and.i292.3, 65535
  %add.i294.3 = add i32 %mul.i293.3, %add164.3
  %xor.i295.3 = xor i32 %add.i294.3, %mul.i293.3
  %shr.i296.3 = lshr i32 %add166.3, 15
  %and.i297.3 = and i32 %shr.i296.3, 65537
  %mul.i298.3 = mul nuw i32 %and.i297.3, 65535
  %add.i299.3 = add i32 %mul.i298.3, %add166.3
  %xor.i300.3 = xor i32 %add.i299.3, %mul.i298.3
  %shr.i301.3 = lshr i32 %sub165.3, 15
  %and.i302.3 = and i32 %shr.i301.3, 65537
  %mul.i303.3 = mul nuw i32 %and.i302.3, 65535
  %add.i304.3 = add i32 %mul.i303.3, %sub165.3
  %xor.i305.3 = xor i32 %add.i304.3, %mul.i303.3
  %shr.i306.3 = lshr i32 %sub167.3, 15
  %and.i307.3 = and i32 %shr.i306.3, 65537
  %mul.i308.3 = mul nuw i32 %and.i307.3, 65535
  %add.i309.3 = add i32 %mul.i308.3, %sub167.3
  %xor.i310.3 = xor i32 %add.i309.3, %mul.i308.3
  %add170.3 = add i32 %xor.i300.3, %add175.2
  %add172.3 = add i32 %add170.3, %xor.i295.3
  %add174.3 = add i32 %add172.3, %xor.i305.3
  %add175.3 = add i32 %add174.3, %xor.i310.3
  %214 = load i32, ptr %arrayidx26, align 16
  %215 = load i32, ptr %arrayidx54, align 16
  %add140.4 = add i32 %215, %214
  %sub147.4 = sub i32 %214, %215
  %arrayidx151.4 = getelementptr inbounds i8, ptr %tmp, i64 80
  %216 = load i32, ptr %arrayidx151.4, align 16
  %arrayidx154.4 = getelementptr inbounds i8, ptr %tmp, i64 112
  %217 = load i32, ptr %arrayidx154.4, align 16
  %add155.4 = add i32 %217, %216
  %sub163.4 = sub i32 %216, %217
  %add164.4 = add nsw i32 %add155.4, %add140.4
  %sub165.4 = sub nsw i32 %add140.4, %add155.4
  %add166.4 = add nsw i32 %sub163.4, %sub147.4
  %sub167.4 = sub nsw i32 %sub147.4, %sub163.4
  %shr.i291.4 = lshr i32 %add164.4, 15
  %and.i292.4 = and i32 %shr.i291.4, 65537
  %mul.i293.4 = mul nuw i32 %and.i292.4, 65535
  %add.i294.4 = add i32 %mul.i293.4, %add164.4
  %xor.i295.4 = xor i32 %add.i294.4, %mul.i293.4
  %shr.i296.4 = lshr i32 %add166.4, 15
  %and.i297.4 = and i32 %shr.i296.4, 65537
  %mul.i298.4 = mul nuw i32 %and.i297.4, 65535
  %add.i299.4 = add i32 %mul.i298.4, %add166.4
  %xor.i300.4 = xor i32 %add.i299.4, %mul.i298.4
  %shr.i301.4 = lshr i32 %sub165.4, 15
  %and.i302.4 = and i32 %shr.i301.4, 65537
  %mul.i303.4 = mul nuw i32 %and.i302.4, 65535
  %add.i304.4 = add i32 %mul.i303.4, %sub165.4
  %xor.i305.4 = xor i32 %add.i304.4, %mul.i303.4
  %shr.i306.4 = lshr i32 %sub167.4, 15
  %and.i307.4 = and i32 %shr.i306.4, 65537
  %mul.i308.4 = mul nuw i32 %and.i307.4, 65535
  %add.i309.4 = add i32 %mul.i308.4, %sub167.4
  %xor.i310.4 = xor i32 %add.i309.4, %mul.i308.4
  %add170.4 = add i32 %xor.i300.4, %add175.3
  %add172.4 = add i32 %add170.4, %xor.i295.4
  %add174.4 = add i32 %add172.4, %xor.i305.4
  %add175.4 = add i32 %add174.4, %xor.i310.4
  %arrayidx136.5 = getelementptr inbounds i8, ptr %tmp, i64 20
  %218 = load i32, ptr %arrayidx136.5, align 4
  %arrayidx139.5 = getelementptr inbounds i8, ptr %tmp, i64 52
  %219 = load i32, ptr %arrayidx139.5, align 4
  %add140.5 = add i32 %219, %218
  %sub147.5 = sub i32 %218, %219
  %arrayidx151.5 = getelementptr inbounds i8, ptr %tmp, i64 84
  %220 = load i32, ptr %arrayidx151.5, align 4
  %arrayidx154.5 = getelementptr inbounds i8, ptr %tmp, i64 116
  %221 = load i32, ptr %arrayidx154.5, align 4
  %add155.5 = add i32 %221, %220
  %sub163.5 = sub i32 %220, %221
  %add164.5 = add nsw i32 %add155.5, %add140.5
  %sub165.5 = sub nsw i32 %add140.5, %add155.5
  %add166.5 = add nsw i32 %sub163.5, %sub147.5
  %sub167.5 = sub nsw i32 %sub147.5, %sub163.5
  %shr.i291.5 = lshr i32 %add164.5, 15
  %and.i292.5 = and i32 %shr.i291.5, 65537
  %mul.i293.5 = mul nuw i32 %and.i292.5, 65535
  %add.i294.5 = add i32 %mul.i293.5, %add164.5
  %xor.i295.5 = xor i32 %add.i294.5, %mul.i293.5
  %shr.i296.5 = lshr i32 %add166.5, 15
  %and.i297.5 = and i32 %shr.i296.5, 65537
  %mul.i298.5 = mul nuw i32 %and.i297.5, 65535
  %add.i299.5 = add i32 %mul.i298.5, %add166.5
  %xor.i300.5 = xor i32 %add.i299.5, %mul.i298.5
  %shr.i301.5 = lshr i32 %sub165.5, 15
  %and.i302.5 = and i32 %shr.i301.5, 65537
  %mul.i303.5 = mul nuw i32 %and.i302.5, 65535
  %add.i304.5 = add i32 %mul.i303.5, %sub165.5
  %xor.i305.5 = xor i32 %add.i304.5, %mul.i303.5
  %shr.i306.5 = lshr i32 %sub167.5, 15
  %and.i307.5 = and i32 %shr.i306.5, 65537
  %mul.i308.5 = mul nuw i32 %and.i307.5, 65535
  %add.i309.5 = add i32 %mul.i308.5, %sub167.5
  %xor.i310.5 = xor i32 %add.i309.5, %mul.i308.5
  %add170.5 = add i32 %xor.i300.5, %add175.4
  %add172.5 = add i32 %add170.5, %xor.i295.5
  %add174.5 = add i32 %add172.5, %xor.i305.5
  %add175.5 = add i32 %add174.5, %xor.i310.5
  %arrayidx136.6 = getelementptr inbounds i8, ptr %tmp, i64 24
  %222 = load i32, ptr %arrayidx136.6, align 8
  %arrayidx139.6 = getelementptr inbounds i8, ptr %tmp, i64 56
  %223 = load i32, ptr %arrayidx139.6, align 8
  %add140.6 = add i32 %223, %222
  %sub147.6 = sub i32 %222, %223
  %arrayidx151.6 = getelementptr inbounds i8, ptr %tmp, i64 88
  %224 = load i32, ptr %arrayidx151.6, align 8
  %arrayidx154.6 = getelementptr inbounds i8, ptr %tmp, i64 120
  %225 = load i32, ptr %arrayidx154.6, align 8
  %add155.6 = add i32 %225, %224
  %sub163.6 = sub i32 %224, %225
  %add164.6 = add nsw i32 %add155.6, %add140.6
  %sub165.6 = sub nsw i32 %add140.6, %add155.6
  %add166.6 = add nsw i32 %sub163.6, %sub147.6
  %sub167.6 = sub nsw i32 %sub147.6, %sub163.6
  %shr.i291.6 = lshr i32 %add164.6, 15
  %and.i292.6 = and i32 %shr.i291.6, 65537
  %mul.i293.6 = mul nuw i32 %and.i292.6, 65535
  %add.i294.6 = add i32 %mul.i293.6, %add164.6
  %xor.i295.6 = xor i32 %add.i294.6, %mul.i293.6
  %shr.i296.6 = lshr i32 %add166.6, 15
  %and.i297.6 = and i32 %shr.i296.6, 65537
  %mul.i298.6 = mul nuw i32 %and.i297.6, 65535
  %add.i299.6 = add i32 %mul.i298.6, %add166.6
  %xor.i300.6 = xor i32 %add.i299.6, %mul.i298.6
  %shr.i301.6 = lshr i32 %sub165.6, 15
  %and.i302.6 = and i32 %shr.i301.6, 65537
  %mul.i303.6 = mul nuw i32 %and.i302.6, 65535
  %add.i304.6 = add i32 %mul.i303.6, %sub165.6
  %xor.i305.6 = xor i32 %add.i304.6, %mul.i303.6
  %shr.i306.6 = lshr i32 %sub167.6, 15
  %and.i307.6 = and i32 %shr.i306.6, 65537
  %mul.i308.6 = mul nuw i32 %and.i307.6, 65535
  %add.i309.6 = add i32 %mul.i308.6, %sub167.6
  %xor.i310.6 = xor i32 %add.i309.6, %mul.i308.6
  %add170.6 = add i32 %xor.i300.6, %add175.5
  %add172.6 = add i32 %add170.6, %xor.i295.6
  %add174.6 = add i32 %add172.6, %xor.i305.6
  %add175.6 = add i32 %add174.6, %xor.i310.6
  %arrayidx136.7 = getelementptr inbounds i8, ptr %tmp, i64 28
  %226 = load i32, ptr %arrayidx136.7, align 4
  %arrayidx139.7 = getelementptr inbounds i8, ptr %tmp, i64 60
  %227 = load i32, ptr %arrayidx139.7, align 4
  %add140.7 = add i32 %227, %226
  %sub147.7 = sub i32 %226, %227
  %arrayidx151.7 = getelementptr inbounds i8, ptr %tmp, i64 92
  %228 = load i32, ptr %arrayidx151.7, align 4
  %arrayidx154.7 = getelementptr inbounds i8, ptr %tmp, i64 124
  %229 = load i32, ptr %arrayidx154.7, align 4
  %add155.7 = add i32 %229, %228
  %sub163.7 = sub i32 %228, %229
  %add164.7 = add nsw i32 %add155.7, %add140.7
  %sub165.7 = sub nsw i32 %add140.7, %add155.7
  %add166.7 = add nsw i32 %sub163.7, %sub147.7
  %sub167.7 = sub nsw i32 %sub147.7, %sub163.7
  %shr.i291.7 = lshr i32 %add164.7, 15
  %and.i292.7 = and i32 %shr.i291.7, 65537
  %mul.i293.7 = mul nuw i32 %and.i292.7, 65535
  %add.i294.7 = add i32 %mul.i293.7, %add164.7
  %xor.i295.7 = xor i32 %add.i294.7, %mul.i293.7
  %shr.i296.7 = lshr i32 %add166.7, 15
  %and.i297.7 = and i32 %shr.i296.7, 65537
  %mul.i298.7 = mul nuw i32 %and.i297.7, 65535
  %add.i299.7 = add i32 %mul.i298.7, %add166.7
  %xor.i300.7 = xor i32 %add.i299.7, %mul.i298.7
  %shr.i301.7 = lshr i32 %sub165.7, 15
  %and.i302.7 = and i32 %shr.i301.7, 65537
  %mul.i303.7 = mul nuw i32 %and.i302.7, 65535
  %add.i304.7 = add i32 %mul.i303.7, %sub165.7
  %xor.i305.7 = xor i32 %add.i304.7, %mul.i303.7
  %shr.i306.7 = lshr i32 %sub167.7, 15
  %and.i307.7 = and i32 %shr.i306.7, 65537
  %mul.i308.7 = mul nuw i32 %and.i307.7, 65535
  %add.i309.7 = add i32 %mul.i308.7, %sub167.7
  %xor.i310.7 = xor i32 %add.i309.7, %mul.i308.7
  %add170.7 = add i32 %xor.i300.7, %add175.6
  %add172.7 = add i32 %add170.7, %xor.i295.7
  %add174.7 = add i32 %add172.7, %xor.i305.7
  %add175.7 = add i32 %add174.7, %xor.i310.7
  %230 = load i32, ptr %tmp, align 16
  %231 = load i32, ptr %arrayidx52, align 16
  %add181 = add i32 %231, %230
  %232 = load i32, ptr %add.ptr3.4, align 16
  %add183 = add i32 %add181, %232
  %233 = load i32, ptr %arrayidx154, align 16
  %add185 = add i32 %add183, %233
  %conv187 = and i32 %add185, 65535
  %conv189 = and i32 %197, 65535
  %shr = lshr i32 %197, 16
  %add190 = add nuw nsw i32 %conv189, %shr
  %sub191 = sub nsw i32 %add190, %conv187
  %conv193 = and i32 %add175.7, 65535
  %shr194 = lshr i32 %add175.7, 16
  %add195 = add nuw nsw i32 %conv193, %shr194
  %sub196 = sub nsw i32 %add195, %conv187
  %conv197 = sext i32 %sub196 to i64
  %shl198 = shl nsw i64 %conv197, 32
  %conv199 = sext i32 %sub191 to i64
  %add200 = add nsw i64 %shl198, %conv199
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %tmp) #13
  ret i64 %add200
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @sa8d_8x8(ptr nocapture noundef readonly %pix1, i32 noundef %i_pix1, ptr nocapture noundef readonly %pix2, i32 noundef %i_pix2) unnamed_addr #4 {
entry:
  %tmp = alloca [8 x [4 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %tmp) #13
  %idx.ext = sext i32 %i_pix1 to i64
  %idx.ext71 = sext i32 %i_pix2 to i64
  br label %for.body

for.cond74.preheader:                             ; preds = %for.body
  %arrayidx83 = getelementptr inbounds i8, ptr %tmp, i64 16
  %arrayidx96 = getelementptr inbounds i8, ptr %tmp, i64 32
  %arrayidx99 = getelementptr inbounds i8, ptr %tmp, i64 48
  %arrayidx116 = getelementptr inbounds i8, ptr %tmp, i64 64
  %arrayidx119 = getelementptr inbounds i8, ptr %tmp, i64 80
  %arrayidx132 = getelementptr inbounds i8, ptr %tmp, i64 96
  %arrayidx135 = getelementptr inbounds i8, ptr %tmp, i64 112
  %0 = load <4 x i32>, ptr %tmp, align 16
  %1 = shufflevector <4 x i32> %0, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %2 = load <4 x i32>, ptr %arrayidx83, align 16
  %3 = shufflevector <4 x i32> %2, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %4 = add <4 x i32> %3, %1
  %5 = sub <4 x i32> %1, %3
  %6 = load <4 x i32>, ptr %arrayidx96, align 16
  %7 = shufflevector <4 x i32> %6, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %8 = load <4 x i32>, ptr %arrayidx99, align 16
  %9 = shufflevector <4 x i32> %8, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %10 = add <4 x i32> %9, %7
  %11 = sub <4 x i32> %7, %9
  %12 = add nsw <4 x i32> %10, %4
  %13 = sub nsw <4 x i32> %4, %10
  %14 = add nsw <4 x i32> %11, %5
  %15 = sub nsw <4 x i32> %5, %11
  %16 = load <4 x i32>, ptr %arrayidx116, align 16
  %17 = shufflevector <4 x i32> %16, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %18 = load <4 x i32>, ptr %arrayidx119, align 16
  %19 = shufflevector <4 x i32> %18, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %20 = add <4 x i32> %19, %17
  %21 = sub <4 x i32> %17, %19
  %22 = load <4 x i32>, ptr %arrayidx132, align 16
  %23 = shufflevector <4 x i32> %22, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %24 = load <4 x i32>, ptr %arrayidx135, align 16
  %25 = shufflevector <4 x i32> %24, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %26 = sub <4 x i32> %23, %25
  %27 = sub nsw <4 x i32> %21, %26
  %28 = add <4 x i32> %27, %15
  %29 = sub <4 x i32> %15, %27
  %30 = lshr <4 x i32> %28, <i32 15, i32 15, i32 15, i32 15>
  %31 = and <4 x i32> %30, <i32 65537, i32 65537, i32 65537, i32 65537>
  %32 = mul nuw <4 x i32> %31, <i32 65535, i32 65535, i32 65535, i32 65535>
  %33 = add <4 x i32> %32, %28
  %34 = xor <4 x i32> %33, %32
  %35 = lshr <4 x i32> %29, <i32 15, i32 15, i32 15, i32 15>
  %36 = and <4 x i32> %35, <i32 65537, i32 65537, i32 65537, i32 65537>
  %37 = mul nuw <4 x i32> %36, <i32 65535, i32 65535, i32 65535, i32 65535>
  %38 = add <4 x i32> %37, %29
  %39 = xor <4 x i32> %38, %37
  %40 = add <4 x i32> %34, %39
  %41 = add <4 x i32> %25, %23
  %42 = sub nsw <4 x i32> %20, %41
  %43 = sub <4 x i32> %13, %42
  %44 = lshr <4 x i32> %43, <i32 15, i32 15, i32 15, i32 15>
  %45 = and <4 x i32> %44, <i32 65537, i32 65537, i32 65537, i32 65537>
  %46 = mul nuw <4 x i32> %45, <i32 65535, i32 65535, i32 65535, i32 65535>
  %47 = add <4 x i32> %46, %43
  %48 = xor <4 x i32> %47, %46
  %49 = add <4 x i32> %40, %48
  %50 = add <4 x i32> %42, %13
  %51 = lshr <4 x i32> %50, <i32 15, i32 15, i32 15, i32 15>
  %52 = and <4 x i32> %51, <i32 65537, i32 65537, i32 65537, i32 65537>
  %53 = mul nuw <4 x i32> %52, <i32 65535, i32 65535, i32 65535, i32 65535>
  %54 = add <4 x i32> %53, %50
  %55 = xor <4 x i32> %54, %53
  %56 = add <4 x i32> %49, %55
  %57 = add nsw <4 x i32> %41, %20
  %58 = sub <4 x i32> %12, %57
  %59 = lshr <4 x i32> %58, <i32 15, i32 15, i32 15, i32 15>
  %60 = and <4 x i32> %59, <i32 65537, i32 65537, i32 65537, i32 65537>
  %61 = mul nuw <4 x i32> %60, <i32 65535, i32 65535, i32 65535, i32 65535>
  %62 = add <4 x i32> %61, %58
  %63 = xor <4 x i32> %62, %61
  %64 = add <4 x i32> %56, %63
  %65 = add <4 x i32> %57, %12
  %66 = lshr <4 x i32> %65, <i32 15, i32 15, i32 15, i32 15>
  %67 = and <4 x i32> %66, <i32 65537, i32 65537, i32 65537, i32 65537>
  %68 = mul nuw <4 x i32> %67, <i32 65535, i32 65535, i32 65535, i32 65535>
  %69 = add <4 x i32> %68, %65
  %70 = xor <4 x i32> %69, %68
  %71 = add <4 x i32> %64, %70
  %72 = add nsw <4 x i32> %26, %21
  %73 = sub <4 x i32> %14, %72
  %74 = lshr <4 x i32> %73, <i32 15, i32 15, i32 15, i32 15>
  %75 = and <4 x i32> %74, <i32 65537, i32 65537, i32 65537, i32 65537>
  %76 = mul nuw <4 x i32> %75, <i32 65535, i32 65535, i32 65535, i32 65535>
  %77 = add <4 x i32> %76, %73
  %78 = xor <4 x i32> %77, %76
  %79 = add <4 x i32> %71, %78
  %80 = add <4 x i32> %72, %14
  %81 = lshr <4 x i32> %80, <i32 15, i32 15, i32 15, i32 15>
  %82 = and <4 x i32> %81, <i32 65537, i32 65537, i32 65537, i32 65537>
  %83 = mul nuw <4 x i32> %82, <i32 65535, i32 65535, i32 65535, i32 65535>
  %84 = add <4 x i32> %83, %80
  %85 = xor <4 x i32> %84, %83
  %86 = add <4 x i32> %79, %85
  %87 = and <4 x i32> %86, <i32 65535, i32 65535, i32 65535, i32 65535>
  %88 = lshr <4 x i32> %86, <i32 16, i32 16, i32 16, i32 16>
  %89 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %87)
  %90 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %88)
  %op.rdx = add i32 %89, %90
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %tmp) #13
  ret i32 %op.rdx

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %pix1.addr.0301 = phi ptr [ %pix1, %entry ], [ %add.ptr, %for.body ]
  %pix2.addr.0300 = phi ptr [ %pix2, %entry ], [ %add.ptr72, %for.body ]
  %91 = load i8, ptr %pix1.addr.0301, align 1
  %conv = zext i8 %91 to i32
  %92 = load i8, ptr %pix2.addr.0300, align 1
  %conv2 = zext i8 %92 to i32
  %sub = sub nsw i32 %conv, %conv2
  %arrayidx3 = getelementptr inbounds i8, ptr %pix1.addr.0301, i64 1
  %93 = load i8, ptr %arrayidx3, align 1
  %conv4 = zext i8 %93 to i32
  %arrayidx5 = getelementptr inbounds i8, ptr %pix2.addr.0300, i64 1
  %94 = load i8, ptr %arrayidx5, align 1
  %conv6 = zext i8 %94 to i32
  %sub7 = sub nsw i32 %conv4, %conv6
  %add = add nsw i32 %sub7, %sub
  %sub8 = sub nsw i32 %sub, %sub7
  %shl = shl nsw i32 %sub8, 16
  %add9 = add nsw i32 %add, %shl
  %arrayidx10 = getelementptr inbounds i8, ptr %pix1.addr.0301, i64 2
  %95 = load i8, ptr %arrayidx10, align 1
  %conv11 = zext i8 %95 to i32
  %arrayidx12 = getelementptr inbounds i8, ptr %pix2.addr.0300, i64 2
  %96 = load i8, ptr %arrayidx12, align 1
  %conv13 = zext i8 %96 to i32
  %sub14 = sub nsw i32 %conv11, %conv13
  %arrayidx15 = getelementptr inbounds i8, ptr %pix1.addr.0301, i64 3
  %97 = load i8, ptr %arrayidx15, align 1
  %conv16 = zext i8 %97 to i32
  %arrayidx17 = getelementptr inbounds i8, ptr %pix2.addr.0300, i64 3
  %98 = load i8, ptr %arrayidx17, align 1
  %conv18 = zext i8 %98 to i32
  %sub19 = sub nsw i32 %conv16, %conv18
  %add20 = add nsw i32 %sub19, %sub14
  %sub21 = sub nsw i32 %sub14, %sub19
  %shl22 = shl nsw i32 %sub21, 16
  %add23 = add nsw i32 %add20, %shl22
  %arrayidx24 = getelementptr inbounds i8, ptr %pix1.addr.0301, i64 4
  %99 = load i8, ptr %arrayidx24, align 1
  %conv25 = zext i8 %99 to i32
  %arrayidx26 = getelementptr inbounds i8, ptr %pix2.addr.0300, i64 4
  %100 = load i8, ptr %arrayidx26, align 1
  %conv27 = zext i8 %100 to i32
  %sub28 = sub nsw i32 %conv25, %conv27
  %arrayidx29 = getelementptr inbounds i8, ptr %pix1.addr.0301, i64 5
  %101 = load i8, ptr %arrayidx29, align 1
  %conv30 = zext i8 %101 to i32
  %arrayidx31 = getelementptr inbounds i8, ptr %pix2.addr.0300, i64 5
  %102 = load i8, ptr %arrayidx31, align 1
  %conv32 = zext i8 %102 to i32
  %sub33 = sub nsw i32 %conv30, %conv32
  %add34 = add nsw i32 %sub33, %sub28
  %sub35 = sub nsw i32 %sub28, %sub33
  %shl36 = shl nsw i32 %sub35, 16
  %add37 = add nsw i32 %add34, %shl36
  %arrayidx38 = getelementptr inbounds i8, ptr %pix1.addr.0301, i64 6
  %103 = load i8, ptr %arrayidx38, align 1
  %conv39 = zext i8 %103 to i32
  %arrayidx40 = getelementptr inbounds i8, ptr %pix2.addr.0300, i64 6
  %104 = load i8, ptr %arrayidx40, align 1
  %conv41 = zext i8 %104 to i32
  %sub42 = sub nsw i32 %conv39, %conv41
  %arrayidx43 = getelementptr inbounds i8, ptr %pix1.addr.0301, i64 7
  %105 = load i8, ptr %arrayidx43, align 1
  %conv44 = zext i8 %105 to i32
  %arrayidx45 = getelementptr inbounds i8, ptr %pix2.addr.0300, i64 7
  %106 = load i8, ptr %arrayidx45, align 1
  %conv46 = zext i8 %106 to i32
  %sub47 = sub nsw i32 %conv44, %conv46
  %add48 = add nsw i32 %sub47, %sub42
  %sub49 = sub nsw i32 %sub42, %sub47
  %shl50 = shl nsw i32 %sub49, 16
  %add51 = add nsw i32 %add48, %shl50
  %add52 = add nsw i32 %add23, %add9
  %sub53 = sub nsw i32 %add9, %add23
  %add54 = add nsw i32 %add51, %add37
  %sub55 = sub nsw i32 %add37, %add51
  %add56 = add nsw i32 %add54, %add52
  %arrayidx57 = getelementptr inbounds [8 x [4 x i32]], ptr %tmp, i64 0, i64 %indvars.iv
  store i32 %add56, ptr %arrayidx57, align 16
  %sub59 = sub nsw i32 %add52, %add54
  %arrayidx62 = getelementptr inbounds i8, ptr %arrayidx57, i64 8
  store i32 %sub59, ptr %arrayidx62, align 8
  %add63 = add nsw i32 %sub55, %sub53
  %arrayidx66 = getelementptr inbounds i8, ptr %arrayidx57, i64 4
  store i32 %add63, ptr %arrayidx66, align 4
  %sub67 = sub nsw i32 %sub53, %sub55
  %arrayidx70 = getelementptr inbounds i8, ptr %arrayidx57, i64 12
  store i32 %sub67, ptr %arrayidx70, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %add.ptr = getelementptr inbounds i8, ptr %pix1.addr.0301, i64 %idx.ext
  %add.ptr72 = getelementptr inbounds i8, ptr %pix2.addr.0300, i64 %idx.ext71
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8
  br i1 %exitcond.not, label %for.cond74.preheader, label %for.body
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i16> @llvm.abs.v16i16(<16 x i16>, i1 immarg) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v16i32(<16 x i32>) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.abs.v8i16(<8 x i16>, i1 immarg) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v8i32(<8 x i32>) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i16> @llvm.abs.v4i16(<4 x i16>, i1 immarg) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.abs.v4i32(<4 x i32>, i1 immarg) #12

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!5 = distinct !{!5, !6, !7}
!6 = !{!"llvm.loop.isvectorized", i32 1}
!7 = !{!"llvm.loop.unroll.runtime.disable"}
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6, !7}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !6}
!13 = distinct !{!13, !6, !7}
