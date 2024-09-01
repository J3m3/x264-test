; ModuleID = 'ldecod_src/blk_prediction.c'
source_filename = "ldecod_src/blk_prediction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @compute_residue(ptr nocapture noundef readonly %curImg, ptr nocapture noundef readonly %mpr, ptr nocapture noundef readonly %mb_rres, i32 noundef %mb_x, i32 noundef %opix_x, i32 noundef %width, i32 noundef %height) local_unnamed_addr #0 {
entry:
  %cmp31 = icmp sgt i32 %height, 0
  br i1 %cmp31, label %for.body.lr.ph, label %for.end19

for.body.lr.ph:                                   ; preds = %entry
  %idxprom1 = sext i32 %opix_x to i64
  %idxprom5 = sext i32 %mb_x to i64
  %cmp1226 = icmp sgt i32 %width, 0
  br i1 %cmp1226, label %for.body.us.preheader, label %for.end19

for.body.us.preheader:                            ; preds = %for.body.lr.ph
  %wide.trip.count = zext nneg i32 %height to i64
  %0 = add nsw i32 %width, -1
  %1 = zext i32 %0 to i64
  %2 = add nsw i64 %idxprom5, %1
  %3 = shl nsw i64 %2, 2
  %4 = add nsw i64 %idxprom1, %1
  %5 = shl nsw i64 %4, 1
  %6 = add nsw i64 %idxprom5, %1
  %7 = shl nsw i64 %6, 1
  %8 = zext nneg i32 %width to i64
  %min.iters.check = icmp ult i32 %width, 16
  %n.vec = and i64 %8, 2147483632
  %ind.end = trunc nuw nsw i64 %n.vec to i32
  %9 = shl nuw nsw i64 %n.vec, 2
  %10 = shl nuw nsw i64 %n.vec, 1
  %11 = shl nuw nsw i64 %n.vec, 1
  %cmp.n = icmp eq i64 %n.vec, %8
  br label %for.body.us

for.body.us:                                      ; preds = %for.body.us.preheader, %for.cond11.for.inc17_crit_edge.us
  %indvars.iv = phi i64 [ 0, %for.body.us.preheader ], [ %indvars.iv.next, %for.cond11.for.inc17_crit_edge.us ]
  %arrayidx.us = getelementptr inbounds ptr, ptr %curImg, i64 %indvars.iv
  %12 = load ptr, ptr %arrayidx.us, align 8
  %arrayidx2.us = getelementptr i16, ptr %12, i64 %idxprom1
  %arrayidx4.us = getelementptr inbounds ptr, ptr %mpr, i64 %indvars.iv
  %13 = load ptr, ptr %arrayidx4.us, align 8
  %arrayidx6.us = getelementptr i16, ptr %13, i64 %idxprom5
  %arrayidx8.us = getelementptr inbounds ptr, ptr %mb_rres, i64 %indvars.iv
  %14 = load ptr, ptr %arrayidx8.us, align 8
  %arrayidx10.us = getelementptr i32, ptr %14, i64 %idxprom5
  br i1 %min.iters.check, label %for.body13.us.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %for.body.us
  %15 = getelementptr i8, ptr %14, i64 %3
  %scevgep = getelementptr i8, ptr %15, i64 4
  %16 = getelementptr i8, ptr %12, i64 %5
  %scevgep36 = getelementptr i8, ptr %16, i64 2
  %17 = getelementptr i8, ptr %13, i64 %7
  %scevgep37 = getelementptr i8, ptr %17, i64 2
  %bound0 = icmp ult ptr %arrayidx10.us, %scevgep36
  %bound1 = icmp ult ptr %arrayidx2.us, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound038 = icmp ult ptr %arrayidx10.us, %scevgep37
  %bound139 = icmp ult ptr %arrayidx6.us, %scevgep
  %found.conflict40 = and i1 %bound038, %bound139
  %conflict.rdx = or i1 %found.conflict, %found.conflict40
  br i1 %conflict.rdx, label %for.body13.us.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %ind.end41 = getelementptr i8, ptr %arrayidx10.us, i64 %9
  %ind.end43 = getelementptr i8, ptr %arrayidx6.us, i64 %10
  %ind.end45 = getelementptr i8, ptr %arrayidx2.us, i64 %11
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %offset.idx = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %arrayidx10.us, i64 %offset.idx
  %offset.idx50 = shl i64 %index, 1
  %next.gep51 = getelementptr i8, ptr %arrayidx6.us, i64 %offset.idx50
  %offset.idx55 = shl i64 %index, 1
  %next.gep56 = getelementptr i8, ptr %arrayidx2.us, i64 %offset.idx55
  %18 = getelementptr i8, ptr %next.gep56, i64 8
  %19 = getelementptr i8, ptr %next.gep56, i64 16
  %20 = getelementptr i8, ptr %next.gep56, i64 24
  %wide.load = load <4 x i16>, ptr %next.gep56, align 2, !alias.scope !5
  %wide.load60 = load <4 x i16>, ptr %18, align 2, !alias.scope !5
  %wide.load61 = load <4 x i16>, ptr %19, align 2, !alias.scope !5
  %wide.load62 = load <4 x i16>, ptr %20, align 2, !alias.scope !5
  %21 = zext <4 x i16> %wide.load to <4 x i32>
  %22 = zext <4 x i16> %wide.load60 to <4 x i32>
  %23 = zext <4 x i16> %wide.load61 to <4 x i32>
  %24 = zext <4 x i16> %wide.load62 to <4 x i32>
  %25 = getelementptr i8, ptr %next.gep51, i64 8
  %26 = getelementptr i8, ptr %next.gep51, i64 16
  %27 = getelementptr i8, ptr %next.gep51, i64 24
  %wide.load63 = load <4 x i16>, ptr %next.gep51, align 2, !alias.scope !8
  %wide.load64 = load <4 x i16>, ptr %25, align 2, !alias.scope !8
  %wide.load65 = load <4 x i16>, ptr %26, align 2, !alias.scope !8
  %wide.load66 = load <4 x i16>, ptr %27, align 2, !alias.scope !8
  %28 = zext <4 x i16> %wide.load63 to <4 x i32>
  %29 = zext <4 x i16> %wide.load64 to <4 x i32>
  %30 = zext <4 x i16> %wide.load65 to <4 x i32>
  %31 = zext <4 x i16> %wide.load66 to <4 x i32>
  %32 = sub nsw <4 x i32> %21, %28
  %33 = sub nsw <4 x i32> %22, %29
  %34 = sub nsw <4 x i32> %23, %30
  %35 = sub nsw <4 x i32> %24, %31
  %36 = getelementptr i8, ptr %next.gep, i64 16
  %37 = getelementptr i8, ptr %next.gep, i64 32
  %38 = getelementptr i8, ptr %next.gep, i64 48
  store <4 x i32> %32, ptr %next.gep, align 4, !alias.scope !10, !noalias !12
  store <4 x i32> %33, ptr %36, align 4, !alias.scope !10, !noalias !12
  store <4 x i32> %34, ptr %37, align 4, !alias.scope !10, !noalias !12
  store <4 x i32> %35, ptr %38, align 4, !alias.scope !10, !noalias !12
  %index.next = add nuw i64 %index, 16
  %39 = icmp eq i64 %index.next, %n.vec
  br i1 %39, label %middle.block, label %vector.body, !llvm.loop !13

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %for.cond11.for.inc17_crit_edge.us, label %for.body13.us.preheader

for.body13.us.preheader:                          ; preds = %middle.block, %vector.memcheck, %for.body.us
  %i.030.us.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %for.body.us ], [ %ind.end, %middle.block ]
  %m7.029.us.ph = phi ptr [ %arrayidx10.us, %vector.memcheck ], [ %arrayidx10.us, %for.body.us ], [ %ind.end41, %middle.block ]
  %imgPred.028.us.ph = phi ptr [ %arrayidx6.us, %vector.memcheck ], [ %arrayidx6.us, %for.body.us ], [ %ind.end43, %middle.block ]
  %imgOrg.027.us.ph = phi ptr [ %arrayidx2.us, %vector.memcheck ], [ %arrayidx2.us, %for.body.us ], [ %ind.end45, %middle.block ]
  %40 = sub i32 %width, %i.030.us.ph
  %xtraiter = and i32 %40, 3
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.body13.us.prol.loopexit, label %for.body13.us.prol

for.body13.us.prol:                               ; preds = %for.body13.us.preheader, %for.body13.us.prol
  %i.030.us.prol = phi i32 [ %inc.us.prol, %for.body13.us.prol ], [ %i.030.us.ph, %for.body13.us.preheader ]
  %m7.029.us.prol = phi ptr [ %incdec.ptr16.us.prol, %for.body13.us.prol ], [ %m7.029.us.ph, %for.body13.us.preheader ]
  %imgPred.028.us.prol = phi ptr [ %incdec.ptr14.us.prol, %for.body13.us.prol ], [ %imgPred.028.us.ph, %for.body13.us.preheader ]
  %imgOrg.027.us.prol = phi ptr [ %incdec.ptr.us.prol, %for.body13.us.prol ], [ %imgOrg.027.us.ph, %for.body13.us.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %for.body13.us.prol ], [ 0, %for.body13.us.preheader ]
  %incdec.ptr.us.prol = getelementptr inbounds i8, ptr %imgOrg.027.us.prol, i64 2
  %41 = load i16, ptr %imgOrg.027.us.prol, align 2
  %conv.us.prol = zext i16 %41 to i32
  %incdec.ptr14.us.prol = getelementptr inbounds i8, ptr %imgPred.028.us.prol, i64 2
  %42 = load i16, ptr %imgPred.028.us.prol, align 2
  %conv15.us.prol = zext i16 %42 to i32
  %sub.us.prol = sub nsw i32 %conv.us.prol, %conv15.us.prol
  %incdec.ptr16.us.prol = getelementptr inbounds i8, ptr %m7.029.us.prol, i64 4
  store i32 %sub.us.prol, ptr %m7.029.us.prol, align 4
  %inc.us.prol = add nuw nsw i32 %i.030.us.prol, 1
  %prol.iter.next = add i32 %prol.iter, 1
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %for.body13.us.prol.loopexit, label %for.body13.us.prol, !llvm.loop !16

for.body13.us.prol.loopexit:                      ; preds = %for.body13.us.prol, %for.body13.us.preheader
  %i.030.us.unr = phi i32 [ %i.030.us.ph, %for.body13.us.preheader ], [ %inc.us.prol, %for.body13.us.prol ]
  %m7.029.us.unr = phi ptr [ %m7.029.us.ph, %for.body13.us.preheader ], [ %incdec.ptr16.us.prol, %for.body13.us.prol ]
  %imgPred.028.us.unr = phi ptr [ %imgPred.028.us.ph, %for.body13.us.preheader ], [ %incdec.ptr14.us.prol, %for.body13.us.prol ]
  %imgOrg.027.us.unr = phi ptr [ %imgOrg.027.us.ph, %for.body13.us.preheader ], [ %incdec.ptr.us.prol, %for.body13.us.prol ]
  %43 = sub i32 %i.030.us.ph, %width
  %44 = icmp ugt i32 %43, -4
  br i1 %44, label %for.cond11.for.inc17_crit_edge.us, label %for.body13.us

for.body13.us:                                    ; preds = %for.body13.us.prol.loopexit, %for.body13.us
  %i.030.us = phi i32 [ %inc.us.3, %for.body13.us ], [ %i.030.us.unr, %for.body13.us.prol.loopexit ]
  %m7.029.us = phi ptr [ %incdec.ptr16.us.3, %for.body13.us ], [ %m7.029.us.unr, %for.body13.us.prol.loopexit ]
  %imgPred.028.us = phi ptr [ %incdec.ptr14.us.3, %for.body13.us ], [ %imgPred.028.us.unr, %for.body13.us.prol.loopexit ]
  %imgOrg.027.us = phi ptr [ %incdec.ptr.us.3, %for.body13.us ], [ %imgOrg.027.us.unr, %for.body13.us.prol.loopexit ]
  %incdec.ptr.us = getelementptr inbounds i8, ptr %imgOrg.027.us, i64 2
  %45 = load i16, ptr %imgOrg.027.us, align 2
  %conv.us = zext i16 %45 to i32
  %incdec.ptr14.us = getelementptr inbounds i8, ptr %imgPred.028.us, i64 2
  %46 = load i16, ptr %imgPred.028.us, align 2
  %conv15.us = zext i16 %46 to i32
  %sub.us = sub nsw i32 %conv.us, %conv15.us
  %incdec.ptr16.us = getelementptr inbounds i8, ptr %m7.029.us, i64 4
  store i32 %sub.us, ptr %m7.029.us, align 4
  %incdec.ptr.us.1 = getelementptr inbounds i8, ptr %imgOrg.027.us, i64 4
  %47 = load i16, ptr %incdec.ptr.us, align 2
  %conv.us.1 = zext i16 %47 to i32
  %incdec.ptr14.us.1 = getelementptr inbounds i8, ptr %imgPred.028.us, i64 4
  %48 = load i16, ptr %incdec.ptr14.us, align 2
  %conv15.us.1 = zext i16 %48 to i32
  %sub.us.1 = sub nsw i32 %conv.us.1, %conv15.us.1
  %incdec.ptr16.us.1 = getelementptr inbounds i8, ptr %m7.029.us, i64 8
  store i32 %sub.us.1, ptr %incdec.ptr16.us, align 4
  %incdec.ptr.us.2 = getelementptr inbounds i8, ptr %imgOrg.027.us, i64 6
  %49 = load i16, ptr %incdec.ptr.us.1, align 2
  %conv.us.2 = zext i16 %49 to i32
  %incdec.ptr14.us.2 = getelementptr inbounds i8, ptr %imgPred.028.us, i64 6
  %50 = load i16, ptr %incdec.ptr14.us.1, align 2
  %conv15.us.2 = zext i16 %50 to i32
  %sub.us.2 = sub nsw i32 %conv.us.2, %conv15.us.2
  %incdec.ptr16.us.2 = getelementptr inbounds i8, ptr %m7.029.us, i64 12
  store i32 %sub.us.2, ptr %incdec.ptr16.us.1, align 4
  %incdec.ptr.us.3 = getelementptr inbounds i8, ptr %imgOrg.027.us, i64 8
  %51 = load i16, ptr %incdec.ptr.us.2, align 2
  %conv.us.3 = zext i16 %51 to i32
  %incdec.ptr14.us.3 = getelementptr inbounds i8, ptr %imgPred.028.us, i64 8
  %52 = load i16, ptr %incdec.ptr14.us.2, align 2
  %conv15.us.3 = zext i16 %52 to i32
  %sub.us.3 = sub nsw i32 %conv.us.3, %conv15.us.3
  %incdec.ptr16.us.3 = getelementptr inbounds i8, ptr %m7.029.us, i64 16
  store i32 %sub.us.3, ptr %incdec.ptr16.us.2, align 4
  %inc.us.3 = add nuw nsw i32 %i.030.us, 4
  %exitcond.not.3 = icmp eq i32 %inc.us.3, %width
  br i1 %exitcond.not.3, label %for.cond11.for.inc17_crit_edge.us, label %for.body13.us, !llvm.loop !18

for.cond11.for.inc17_crit_edge.us:                ; preds = %for.body13.us.prol.loopexit, %for.body13.us, %middle.block
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond35.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond35.not, label %for.end19, label %for.body.us

for.end19:                                        ; preds = %for.cond11.for.inc17_crit_edge.us, %for.body.lr.ph, %entry
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @sample_reconstruct(ptr nocapture noundef readonly %curImg, ptr nocapture noundef readonly %mpr, ptr nocapture noundef readonly %mb_rres, i32 noundef %mb_x, i32 noundef %opix_x, i32 noundef %width, i32 noundef %height, i32 noundef %max_imgpel_value, i32 noundef %dq_bits) local_unnamed_addr #0 {
entry:
  %cmp32 = icmp sgt i32 %height, 0
  br i1 %cmp32, label %for.body.lr.ph, label %for.end20

for.body.lr.ph:                                   ; preds = %entry
  %idxprom1 = sext i32 %opix_x to i64
  %idxprom5 = sext i32 %mb_x to i64
  %cmp1227 = icmp sgt i32 %width, 0
  %sub.i = add nsw i32 %dq_bits, -1
  %shl.i = shl nuw i32 1, %sub.i
  br i1 %cmp1227, label %for.body.us.preheader, label %for.end20

for.body.us.preheader:                            ; preds = %for.body.lr.ph
  %wide.trip.count = zext nneg i32 %height to i64
  %0 = add nsw i32 %width, -1
  %1 = zext i32 %0 to i64
  %2 = add nsw i64 %idxprom1, %1
  %3 = shl nsw i64 %2, 1
  %4 = add nsw i64 %idxprom5, %1
  %5 = shl nsw i64 %4, 2
  %6 = add nsw i64 %idxprom5, %1
  %7 = shl nsw i64 %6, 1
  %8 = zext nneg i32 %width to i64
  %min.iters.check = icmp ult i32 %width, 16
  %n.vec = and i64 %8, 2147483632
  %ind.end = trunc nuw nsw i64 %n.vec to i32
  %9 = shl nuw nsw i64 %n.vec, 2
  %10 = shl nuw nsw i64 %n.vec, 1
  %11 = shl nuw nsw i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %shl.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert64 = insertelement <4 x i32> poison, i32 %dq_bits, i64 0
  %broadcast.splat65 = shufflevector <4 x i32> %broadcast.splatinsert64, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert70 = insertelement <4 x i32> poison, i32 %max_imgpel_value, i64 0
  %broadcast.splat71 = shufflevector <4 x i32> %broadcast.splatinsert70, <4 x i32> poison, <4 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %8
  %12 = add nsw i32 %width, -1
  br label %for.body.us

for.body.us:                                      ; preds = %for.body.us.preheader, %for.cond11.for.inc18_crit_edge.us
  %indvars.iv = phi i64 [ 0, %for.body.us.preheader ], [ %indvars.iv.next, %for.cond11.for.inc18_crit_edge.us ]
  %arrayidx.us = getelementptr inbounds ptr, ptr %curImg, i64 %indvars.iv
  %13 = load ptr, ptr %arrayidx.us, align 8
  %arrayidx2.us = getelementptr i16, ptr %13, i64 %idxprom1
  %arrayidx4.us = getelementptr inbounds ptr, ptr %mpr, i64 %indvars.iv
  %14 = load ptr, ptr %arrayidx4.us, align 8
  %arrayidx6.us = getelementptr i16, ptr %14, i64 %idxprom5
  %arrayidx8.us = getelementptr inbounds ptr, ptr %mb_rres, i64 %indvars.iv
  %15 = load ptr, ptr %arrayidx8.us, align 8
  %arrayidx10.us = getelementptr i32, ptr %15, i64 %idxprom5
  br i1 %min.iters.check, label %for.body13.us.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %for.body.us
  %16 = getelementptr i8, ptr %13, i64 %3
  %scevgep = getelementptr i8, ptr %16, i64 2
  %17 = getelementptr i8, ptr %15, i64 %5
  %scevgep37 = getelementptr i8, ptr %17, i64 4
  %18 = getelementptr i8, ptr %14, i64 %7
  %scevgep38 = getelementptr i8, ptr %18, i64 2
  %bound0 = icmp ult ptr %arrayidx2.us, %scevgep37
  %bound1 = icmp ult ptr %arrayidx10.us, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound039 = icmp ult ptr %arrayidx2.us, %scevgep38
  %bound140 = icmp ult ptr %arrayidx6.us, %scevgep
  %found.conflict41 = and i1 %bound039, %bound140
  %conflict.rdx = or i1 %found.conflict, %found.conflict41
  br i1 %conflict.rdx, label %for.body13.us.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %ind.end42 = getelementptr i8, ptr %arrayidx10.us, i64 %9
  %ind.end44 = getelementptr i8, ptr %arrayidx6.us, i64 %10
  %ind.end46 = getelementptr i8, ptr %arrayidx2.us, i64 %11
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %offset.idx = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %arrayidx10.us, i64 %offset.idx
  %offset.idx51 = shl i64 %index, 1
  %next.gep52 = getelementptr i8, ptr %arrayidx6.us, i64 %offset.idx51
  %offset.idx56 = shl i64 %index, 1
  %next.gep57 = getelementptr i8, ptr %arrayidx2.us, i64 %offset.idx56
  %19 = getelementptr i8, ptr %next.gep, i64 16
  %20 = getelementptr i8, ptr %next.gep, i64 32
  %21 = getelementptr i8, ptr %next.gep, i64 48
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !alias.scope !19
  %wide.load61 = load <4 x i32>, ptr %19, align 4, !alias.scope !19
  %wide.load62 = load <4 x i32>, ptr %20, align 4, !alias.scope !19
  %wide.load63 = load <4 x i32>, ptr %21, align 4, !alias.scope !19
  %22 = add nsw <4 x i32> %wide.load, %broadcast.splat
  %23 = add nsw <4 x i32> %wide.load61, %broadcast.splat
  %24 = add nsw <4 x i32> %wide.load62, %broadcast.splat
  %25 = add nsw <4 x i32> %wide.load63, %broadcast.splat
  %26 = ashr <4 x i32> %22, %broadcast.splat65
  %27 = ashr <4 x i32> %23, %broadcast.splat65
  %28 = ashr <4 x i32> %24, %broadcast.splat65
  %29 = ashr <4 x i32> %25, %broadcast.splat65
  %30 = getelementptr i8, ptr %next.gep52, i64 8
  %31 = getelementptr i8, ptr %next.gep52, i64 16
  %32 = getelementptr i8, ptr %next.gep52, i64 24
  %wide.load66 = load <4 x i16>, ptr %next.gep52, align 2, !alias.scope !22
  %wide.load67 = load <4 x i16>, ptr %30, align 2, !alias.scope !22
  %wide.load68 = load <4 x i16>, ptr %31, align 2, !alias.scope !22
  %wide.load69 = load <4 x i16>, ptr %32, align 2, !alias.scope !22
  %33 = zext <4 x i16> %wide.load66 to <4 x i32>
  %34 = zext <4 x i16> %wide.load67 to <4 x i32>
  %35 = zext <4 x i16> %wide.load68 to <4 x i32>
  %36 = zext <4 x i16> %wide.load69 to <4 x i32>
  %37 = add nsw <4 x i32> %26, %33
  %38 = add nsw <4 x i32> %27, %34
  %39 = add nsw <4 x i32> %28, %35
  %40 = add nsw <4 x i32> %29, %36
  %41 = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %37, <4 x i32> zeroinitializer)
  %42 = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %38, <4 x i32> zeroinitializer)
  %43 = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %39, <4 x i32> zeroinitializer)
  %44 = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %40, <4 x i32> zeroinitializer)
  %45 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %41, <4 x i32> %broadcast.splat71)
  %46 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %42, <4 x i32> %broadcast.splat71)
  %47 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %43, <4 x i32> %broadcast.splat71)
  %48 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %44, <4 x i32> %broadcast.splat71)
  %49 = trunc <4 x i32> %45 to <4 x i16>
  %50 = trunc <4 x i32> %46 to <4 x i16>
  %51 = trunc <4 x i32> %47 to <4 x i16>
  %52 = trunc <4 x i32> %48 to <4 x i16>
  %53 = getelementptr i8, ptr %next.gep57, i64 8
  %54 = getelementptr i8, ptr %next.gep57, i64 16
  %55 = getelementptr i8, ptr %next.gep57, i64 24
  store <4 x i16> %49, ptr %next.gep57, align 2, !alias.scope !24, !noalias !26
  store <4 x i16> %50, ptr %53, align 2, !alias.scope !24, !noalias !26
  store <4 x i16> %51, ptr %54, align 2, !alias.scope !24, !noalias !26
  store <4 x i16> %52, ptr %55, align 2, !alias.scope !24, !noalias !26
  %index.next = add nuw i64 %index, 16
  %56 = icmp eq i64 %index.next, %n.vec
  br i1 %56, label %middle.block, label %vector.body, !llvm.loop !27

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %for.cond11.for.inc18_crit_edge.us, label %for.body13.us.preheader

for.body13.us.preheader:                          ; preds = %middle.block, %vector.memcheck, %for.body.us
  %i.031.us.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %for.body.us ], [ %ind.end, %middle.block ]
  %m7.030.us.ph = phi ptr [ %arrayidx10.us, %vector.memcheck ], [ %arrayidx10.us, %for.body.us ], [ %ind.end42, %middle.block ]
  %imgPred.029.us.ph = phi ptr [ %arrayidx6.us, %vector.memcheck ], [ %arrayidx6.us, %for.body.us ], [ %ind.end44, %middle.block ]
  %imgOrg.028.us.ph = phi ptr [ %arrayidx2.us, %vector.memcheck ], [ %arrayidx2.us, %for.body.us ], [ %ind.end46, %middle.block ]
  %57 = sub i32 %width, %i.031.us.ph
  %xtraiter = and i32 %57, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.body13.us.prol.loopexit, label %for.body13.us.prol

for.body13.us.prol:                               ; preds = %for.body13.us.preheader
  %incdec.ptr.us.prol = getelementptr inbounds i8, ptr %m7.030.us.ph, i64 4
  %58 = load i32, ptr %m7.030.us.ph, align 4
  %add.i.us.prol = add nsw i32 %58, %shl.i
  %shr.i.us.prol = ashr i32 %add.i.us.prol, %dq_bits
  %incdec.ptr14.us.prol = getelementptr inbounds i8, ptr %imgPred.029.us.ph, i64 2
  %59 = load i16, ptr %imgPred.029.us.ph, align 2
  %conv.us.prol = zext i16 %59 to i32
  %add.us.prol = add nsw i32 %shr.i.us.prol, %conv.us.prol
  %cond.i.i.us.prol = tail call noundef i32 @llvm.smax.i32(i32 %add.us.prol, i32 0)
  %cond.i4.i.us.prol = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i.us.prol, i32 %max_imgpel_value)
  %conv16.us.prol = trunc i32 %cond.i4.i.us.prol to i16
  %incdec.ptr17.us.prol = getelementptr inbounds i8, ptr %imgOrg.028.us.ph, i64 2
  store i16 %conv16.us.prol, ptr %imgOrg.028.us.ph, align 2
  %inc.us.prol = add nuw nsw i32 %i.031.us.ph, 1
  br label %for.body13.us.prol.loopexit

for.body13.us.prol.loopexit:                      ; preds = %for.body13.us.prol, %for.body13.us.preheader
  %i.031.us.unr = phi i32 [ %i.031.us.ph, %for.body13.us.preheader ], [ %inc.us.prol, %for.body13.us.prol ]
  %m7.030.us.unr = phi ptr [ %m7.030.us.ph, %for.body13.us.preheader ], [ %incdec.ptr.us.prol, %for.body13.us.prol ]
  %imgPred.029.us.unr = phi ptr [ %imgPred.029.us.ph, %for.body13.us.preheader ], [ %incdec.ptr14.us.prol, %for.body13.us.prol ]
  %imgOrg.028.us.unr = phi ptr [ %imgOrg.028.us.ph, %for.body13.us.preheader ], [ %incdec.ptr17.us.prol, %for.body13.us.prol ]
  %60 = icmp eq i32 %i.031.us.ph, %12
  br i1 %60, label %for.cond11.for.inc18_crit_edge.us, label %for.body13.us

for.body13.us:                                    ; preds = %for.body13.us.prol.loopexit, %for.body13.us
  %i.031.us = phi i32 [ %inc.us.1, %for.body13.us ], [ %i.031.us.unr, %for.body13.us.prol.loopexit ]
  %m7.030.us = phi ptr [ %incdec.ptr.us.1, %for.body13.us ], [ %m7.030.us.unr, %for.body13.us.prol.loopexit ]
  %imgPred.029.us = phi ptr [ %incdec.ptr14.us.1, %for.body13.us ], [ %imgPred.029.us.unr, %for.body13.us.prol.loopexit ]
  %imgOrg.028.us = phi ptr [ %incdec.ptr17.us.1, %for.body13.us ], [ %imgOrg.028.us.unr, %for.body13.us.prol.loopexit ]
  %incdec.ptr.us = getelementptr inbounds i8, ptr %m7.030.us, i64 4
  %61 = load i32, ptr %m7.030.us, align 4
  %add.i.us = add nsw i32 %61, %shl.i
  %shr.i.us = ashr i32 %add.i.us, %dq_bits
  %incdec.ptr14.us = getelementptr inbounds i8, ptr %imgPred.029.us, i64 2
  %62 = load i16, ptr %imgPred.029.us, align 2
  %conv.us = zext i16 %62 to i32
  %add.us = add nsw i32 %shr.i.us, %conv.us
  %cond.i.i.us = tail call noundef i32 @llvm.smax.i32(i32 %add.us, i32 0)
  %cond.i4.i.us = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i.us, i32 %max_imgpel_value)
  %conv16.us = trunc i32 %cond.i4.i.us to i16
  %incdec.ptr17.us = getelementptr inbounds i8, ptr %imgOrg.028.us, i64 2
  store i16 %conv16.us, ptr %imgOrg.028.us, align 2
  %incdec.ptr.us.1 = getelementptr inbounds i8, ptr %m7.030.us, i64 8
  %63 = load i32, ptr %incdec.ptr.us, align 4
  %add.i.us.1 = add nsw i32 %63, %shl.i
  %shr.i.us.1 = ashr i32 %add.i.us.1, %dq_bits
  %incdec.ptr14.us.1 = getelementptr inbounds i8, ptr %imgPred.029.us, i64 4
  %64 = load i16, ptr %incdec.ptr14.us, align 2
  %conv.us.1 = zext i16 %64 to i32
  %add.us.1 = add nsw i32 %shr.i.us.1, %conv.us.1
  %cond.i.i.us.1 = tail call noundef i32 @llvm.smax.i32(i32 %add.us.1, i32 0)
  %cond.i4.i.us.1 = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i.us.1, i32 %max_imgpel_value)
  %conv16.us.1 = trunc i32 %cond.i4.i.us.1 to i16
  %incdec.ptr17.us.1 = getelementptr inbounds i8, ptr %imgOrg.028.us, i64 4
  store i16 %conv16.us.1, ptr %incdec.ptr17.us, align 2
  %inc.us.1 = add nuw nsw i32 %i.031.us, 2
  %exitcond.not.1 = icmp eq i32 %inc.us.1, %width
  br i1 %exitcond.not.1, label %for.cond11.for.inc18_crit_edge.us, label %for.body13.us, !llvm.loop !28

for.cond11.for.inc18_crit_edge.us:                ; preds = %for.body13.us.prol.loopexit, %for.body13.us, %middle.block
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond36.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond36.not, label %for.end20, label %for.body.us

for.end20:                                        ; preds = %for.cond11.for.inc18_crit_edge.us, %for.body.lr.ph, %entry
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smin.v4i32(<4 x i32>, <4 x i32>) #1

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

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
!10 = !{!11}
!11 = distinct !{!11, !7}
!12 = !{!6, !9}
!13 = distinct !{!13, !14, !15}
!14 = !{!"llvm.loop.isvectorized", i32 1}
!15 = !{!"llvm.loop.unroll.runtime.disable"}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.unroll.disable"}
!18 = distinct !{!18, !14}
!19 = !{!20}
!20 = distinct !{!20, !21}
!21 = distinct !{!21, !"LVerDomain"}
!22 = !{!23}
!23 = distinct !{!23, !21}
!24 = !{!25}
!25 = distinct !{!25, !21}
!26 = !{!20, !23}
!27 = distinct !{!27, !14, !15}
!28 = distinct !{!28, !14}
