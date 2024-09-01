; ModuleID = 'ldecod_src/blk_prediction.c'
source_filename = "ldecod_src/blk_prediction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @compute_residue(ptr nocapture noundef readonly %curImg, ptr nocapture noundef readonly %mpr, ptr nocapture noundef readonly %mb_rres, i32 noundef %mb_x, i32 noundef %opix_x, i32 noundef %width, i32 noundef %height) local_unnamed_addr #0 !dbg !15 {
entry:
    #dbg_value(ptr %curImg, !24, !DIExpression(), !36)
    #dbg_value(ptr %mpr, !25, !DIExpression(), !36)
    #dbg_value(ptr %mb_rres, !26, !DIExpression(), !36)
    #dbg_value(i32 %mb_x, !27, !DIExpression(), !36)
    #dbg_value(i32 %opix_x, !28, !DIExpression(), !36)
    #dbg_value(i32 %width, !29, !DIExpression(), !36)
    #dbg_value(i32 %height, !30, !DIExpression(), !36)
    #dbg_value(i32 0, !35, !DIExpression(), !36)
  %cmp31 = icmp sgt i32 %height, 0, !dbg !37
  br i1 %cmp31, label %for.body.lr.ph, label %for.end19, !dbg !40

for.body.lr.ph:                                   ; preds = %entry
  %idxprom1 = sext i32 %opix_x to i64
  %idxprom5 = sext i32 %mb_x to i64
  %cmp1226 = icmp sgt i32 %width, 0
  br i1 %cmp1226, label %for.body.us.preheader, label %for.end19

for.body.us.preheader:                            ; preds = %for.body.lr.ph
  %wide.trip.count = zext nneg i32 %height to i64, !dbg !37
  %0 = add nsw i32 %width, -1, !dbg !40
  %1 = zext i32 %0 to i64, !dbg !40
  %2 = add nsw i64 %idxprom5, %1, !dbg !40
  %3 = shl nsw i64 %2, 2, !dbg !40
  %4 = add nsw i64 %idxprom1, %1, !dbg !40
  %5 = shl nsw i64 %4, 1, !dbg !40
  %6 = add nsw i64 %idxprom5, %1, !dbg !40
  %7 = shl nsw i64 %6, 1, !dbg !40
  %8 = zext nneg i32 %width to i64, !dbg !40
  %min.iters.check = icmp ult i32 %width, 16
  %n.vec = and i64 %8, 2147483632
  %ind.end = trunc nuw nsw i64 %n.vec to i32
  %9 = shl nuw nsw i64 %n.vec, 2
  %10 = shl nuw nsw i64 %n.vec, 1
  %11 = shl nuw nsw i64 %n.vec, 1
  %cmp.n = icmp eq i64 %n.vec, %8
  br label %for.body.us, !dbg !40

for.body.us:                                      ; preds = %for.body.us.preheader, %for.cond11.for.inc17_crit_edge.us
  %indvars.iv = phi i64 [ 0, %for.body.us.preheader ], [ %indvars.iv.next, %for.cond11.for.inc17_crit_edge.us ]
    #dbg_value(i64 %indvars.iv, !35, !DIExpression(), !36)
  %arrayidx.us = getelementptr inbounds ptr, ptr %curImg, i64 %indvars.iv, !dbg !41
  %12 = load ptr, ptr %arrayidx.us, align 8, !dbg !41
  %arrayidx2.us = getelementptr i16, ptr %12, i64 %idxprom1, !dbg !41
    #dbg_value(ptr %arrayidx2.us, !31, !DIExpression(), !36)
  %arrayidx4.us = getelementptr inbounds ptr, ptr %mpr, i64 %indvars.iv, !dbg !43
  %13 = load ptr, ptr %arrayidx4.us, align 8, !dbg !43
  %arrayidx6.us = getelementptr i16, ptr %13, i64 %idxprom5, !dbg !43
    #dbg_value(ptr %arrayidx6.us, !32, !DIExpression(), !36)
  %arrayidx8.us = getelementptr inbounds ptr, ptr %mb_rres, i64 %indvars.iv, !dbg !44
  %14 = load ptr, ptr %arrayidx8.us, align 8, !dbg !44
  %arrayidx10.us = getelementptr i32, ptr %14, i64 %idxprom5, !dbg !44
    #dbg_value(ptr %arrayidx10.us, !33, !DIExpression(), !36)
    #dbg_value(i32 0, !34, !DIExpression(), !36)
  br i1 %min.iters.check, label %for.body13.us.preheader, label %vector.memcheck, !dbg !45

vector.memcheck:                                  ; preds = %for.body.us
  %15 = getelementptr i8, ptr %14, i64 %3, !dbg !45
  %scevgep = getelementptr i8, ptr %15, i64 4, !dbg !45
  %16 = getelementptr i8, ptr %12, i64 %5, !dbg !45
  %scevgep36 = getelementptr i8, ptr %16, i64 2, !dbg !45
  %17 = getelementptr i8, ptr %13, i64 %7, !dbg !45
  %scevgep37 = getelementptr i8, ptr %17, i64 2, !dbg !45
  %bound0 = icmp ult ptr %arrayidx10.us, %scevgep36, !dbg !45
  %bound1 = icmp ult ptr %arrayidx2.us, %scevgep, !dbg !45
  %found.conflict = and i1 %bound0, %bound1, !dbg !45
  %bound038 = icmp ult ptr %arrayidx10.us, %scevgep37, !dbg !45
  %bound139 = icmp ult ptr %arrayidx6.us, %scevgep, !dbg !45
  %found.conflict40 = and i1 %bound038, %bound139, !dbg !45
  %conflict.rdx = or i1 %found.conflict, %found.conflict40, !dbg !45
  br i1 %conflict.rdx, label %for.body13.us.preheader, label %vector.ph, !dbg !45

vector.ph:                                        ; preds = %vector.memcheck
  %ind.end41 = getelementptr i8, ptr %arrayidx10.us, i64 %9, !dbg !45
  %ind.end43 = getelementptr i8, ptr %arrayidx6.us, i64 %10, !dbg !45
  %ind.end45 = getelementptr i8, ptr %arrayidx2.us, i64 %11, !dbg !45
  br label %vector.body, !dbg !45

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %offset.idx = shl i64 %index, 2, !dbg !45
  %next.gep = getelementptr i8, ptr %arrayidx10.us, i64 %offset.idx
  %offset.idx50 = shl i64 %index, 1
  %next.gep51 = getelementptr i8, ptr %arrayidx6.us, i64 %offset.idx50
  %offset.idx55 = shl i64 %index, 1
  %next.gep56 = getelementptr i8, ptr %arrayidx2.us, i64 %offset.idx55
  %18 = getelementptr i8, ptr %next.gep56, i64 8, !dbg !47
  %19 = getelementptr i8, ptr %next.gep56, i64 16, !dbg !47
  %20 = getelementptr i8, ptr %next.gep56, i64 24, !dbg !47
  %wide.load = load <4 x i16>, ptr %next.gep56, align 2, !dbg !47, !alias.scope !50
  %wide.load60 = load <4 x i16>, ptr %18, align 2, !dbg !47, !alias.scope !50
  %wide.load61 = load <4 x i16>, ptr %19, align 2, !dbg !47, !alias.scope !50
  %wide.load62 = load <4 x i16>, ptr %20, align 2, !dbg !47, !alias.scope !50
  %21 = zext <4 x i16> %wide.load to <4 x i32>, !dbg !47
  %22 = zext <4 x i16> %wide.load60 to <4 x i32>, !dbg !47
  %23 = zext <4 x i16> %wide.load61 to <4 x i32>, !dbg !47
  %24 = zext <4 x i16> %wide.load62 to <4 x i32>, !dbg !47
  %25 = getelementptr i8, ptr %next.gep51, i64 8, !dbg !53
  %26 = getelementptr i8, ptr %next.gep51, i64 16, !dbg !53
  %27 = getelementptr i8, ptr %next.gep51, i64 24, !dbg !53
  %wide.load63 = load <4 x i16>, ptr %next.gep51, align 2, !dbg !53, !alias.scope !54
  %wide.load64 = load <4 x i16>, ptr %25, align 2, !dbg !53, !alias.scope !54
  %wide.load65 = load <4 x i16>, ptr %26, align 2, !dbg !53, !alias.scope !54
  %wide.load66 = load <4 x i16>, ptr %27, align 2, !dbg !53, !alias.scope !54
  %28 = zext <4 x i16> %wide.load63 to <4 x i32>, !dbg !53
  %29 = zext <4 x i16> %wide.load64 to <4 x i32>, !dbg !53
  %30 = zext <4 x i16> %wide.load65 to <4 x i32>, !dbg !53
  %31 = zext <4 x i16> %wide.load66 to <4 x i32>, !dbg !53
  %32 = sub nsw <4 x i32> %21, %28, !dbg !56
  %33 = sub nsw <4 x i32> %22, %29, !dbg !56
  %34 = sub nsw <4 x i32> %23, %30, !dbg !56
  %35 = sub nsw <4 x i32> %24, %31, !dbg !56
  %36 = getelementptr i8, ptr %next.gep, i64 16, !dbg !57
  %37 = getelementptr i8, ptr %next.gep, i64 32, !dbg !57
  %38 = getelementptr i8, ptr %next.gep, i64 48, !dbg !57
  store <4 x i32> %32, ptr %next.gep, align 4, !dbg !57, !alias.scope !58, !noalias !60
  store <4 x i32> %33, ptr %36, align 4, !dbg !57, !alias.scope !58, !noalias !60
  store <4 x i32> %34, ptr %37, align 4, !dbg !57, !alias.scope !58, !noalias !60
  store <4 x i32> %35, ptr %38, align 4, !dbg !57, !alias.scope !58, !noalias !60
  %index.next = add nuw i64 %index, 16
  %39 = icmp eq i64 %index.next, %n.vec
  br i1 %39, label %middle.block, label %vector.body, !llvm.loop !61

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %for.cond11.for.inc17_crit_edge.us, label %for.body13.us.preheader, !dbg !45

for.body13.us.preheader:                          ; preds = %middle.block, %vector.memcheck, %for.body.us
  %i.030.us.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %for.body.us ], [ %ind.end, %middle.block ]
  %m7.029.us.ph = phi ptr [ %arrayidx10.us, %vector.memcheck ], [ %arrayidx10.us, %for.body.us ], [ %ind.end41, %middle.block ]
  %imgPred.028.us.ph = phi ptr [ %arrayidx6.us, %vector.memcheck ], [ %arrayidx6.us, %for.body.us ], [ %ind.end43, %middle.block ]
  %imgOrg.027.us.ph = phi ptr [ %arrayidx2.us, %vector.memcheck ], [ %arrayidx2.us, %for.body.us ], [ %ind.end45, %middle.block ]
  %40 = sub i32 %width, %i.030.us.ph, !dbg !45
  %xtraiter = and i32 %40, 3, !dbg !45
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0, !dbg !45
  br i1 %lcmp.mod.not, label %for.body13.us.prol.loopexit, label %for.body13.us.prol, !dbg !45

for.body13.us.prol:                               ; preds = %for.body13.us.preheader, %for.body13.us.prol
  %i.030.us.prol = phi i32 [ %inc.us.prol, %for.body13.us.prol ], [ %i.030.us.ph, %for.body13.us.preheader ]
  %m7.029.us.prol = phi ptr [ %incdec.ptr16.us.prol, %for.body13.us.prol ], [ %m7.029.us.ph, %for.body13.us.preheader ]
  %imgPred.028.us.prol = phi ptr [ %incdec.ptr14.us.prol, %for.body13.us.prol ], [ %imgPred.028.us.ph, %for.body13.us.preheader ]
  %imgOrg.027.us.prol = phi ptr [ %incdec.ptr.us.prol, %for.body13.us.prol ], [ %imgOrg.027.us.ph, %for.body13.us.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %for.body13.us.prol ], [ 0, %for.body13.us.preheader ]
    #dbg_value(i32 %i.030.us.prol, !34, !DIExpression(), !36)
    #dbg_value(ptr %m7.029.us.prol, !33, !DIExpression(), !36)
    #dbg_value(ptr %imgPred.028.us.prol, !32, !DIExpression(), !36)
    #dbg_value(ptr %imgOrg.027.us.prol, !31, !DIExpression(), !36)
  %incdec.ptr.us.prol = getelementptr inbounds i8, ptr %imgOrg.027.us.prol, i64 2, !dbg !65
    #dbg_value(ptr %incdec.ptr.us.prol, !31, !DIExpression(), !36)
  %41 = load i16, ptr %imgOrg.027.us.prol, align 2, !dbg !47
  %conv.us.prol = zext i16 %41 to i32, !dbg !47
  %incdec.ptr14.us.prol = getelementptr inbounds i8, ptr %imgPred.028.us.prol, i64 2, !dbg !66
    #dbg_value(ptr %incdec.ptr14.us.prol, !32, !DIExpression(), !36)
  %42 = load i16, ptr %imgPred.028.us.prol, align 2, !dbg !53
  %conv15.us.prol = zext i16 %42 to i32, !dbg !53
  %sub.us.prol = sub nsw i32 %conv.us.prol, %conv15.us.prol, !dbg !56
  %incdec.ptr16.us.prol = getelementptr inbounds i8, ptr %m7.029.us.prol, i64 4, !dbg !67
    #dbg_value(ptr %incdec.ptr16.us.prol, !33, !DIExpression(), !36)
  store i32 %sub.us.prol, ptr %m7.029.us.prol, align 4, !dbg !57
  %inc.us.prol = add nuw nsw i32 %i.030.us.prol, 1, !dbg !68
    #dbg_value(i32 %inc.us.prol, !34, !DIExpression(), !36)
  %prol.iter.next = add i32 %prol.iter, 1, !dbg !45
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter, !dbg !45
  br i1 %prol.iter.cmp.not, label %for.body13.us.prol.loopexit, label %for.body13.us.prol, !dbg !45, !llvm.loop !69

for.body13.us.prol.loopexit:                      ; preds = %for.body13.us.prol, %for.body13.us.preheader
  %i.030.us.unr = phi i32 [ %i.030.us.ph, %for.body13.us.preheader ], [ %inc.us.prol, %for.body13.us.prol ]
  %m7.029.us.unr = phi ptr [ %m7.029.us.ph, %for.body13.us.preheader ], [ %incdec.ptr16.us.prol, %for.body13.us.prol ]
  %imgPred.028.us.unr = phi ptr [ %imgPred.028.us.ph, %for.body13.us.preheader ], [ %incdec.ptr14.us.prol, %for.body13.us.prol ]
  %imgOrg.027.us.unr = phi ptr [ %imgOrg.027.us.ph, %for.body13.us.preheader ], [ %incdec.ptr.us.prol, %for.body13.us.prol ]
  %43 = sub i32 %i.030.us.ph, %width, !dbg !45
  %44 = icmp ugt i32 %43, -4, !dbg !45
  br i1 %44, label %for.cond11.for.inc17_crit_edge.us, label %for.body13.us, !dbg !45

for.body13.us:                                    ; preds = %for.body13.us.prol.loopexit, %for.body13.us
  %i.030.us = phi i32 [ %inc.us.3, %for.body13.us ], [ %i.030.us.unr, %for.body13.us.prol.loopexit ]
  %m7.029.us = phi ptr [ %incdec.ptr16.us.3, %for.body13.us ], [ %m7.029.us.unr, %for.body13.us.prol.loopexit ]
  %imgPred.028.us = phi ptr [ %incdec.ptr14.us.3, %for.body13.us ], [ %imgPred.028.us.unr, %for.body13.us.prol.loopexit ]
  %imgOrg.027.us = phi ptr [ %incdec.ptr.us.3, %for.body13.us ], [ %imgOrg.027.us.unr, %for.body13.us.prol.loopexit ]
    #dbg_value(i32 %i.030.us, !34, !DIExpression(), !36)
    #dbg_value(ptr %m7.029.us, !33, !DIExpression(), !36)
    #dbg_value(ptr %imgPred.028.us, !32, !DIExpression(), !36)
    #dbg_value(ptr %imgOrg.027.us, !31, !DIExpression(), !36)
  %incdec.ptr.us = getelementptr inbounds i8, ptr %imgOrg.027.us, i64 2, !dbg !65
    #dbg_value(ptr %incdec.ptr.us, !31, !DIExpression(), !36)
  %45 = load i16, ptr %imgOrg.027.us, align 2, !dbg !47
  %conv.us = zext i16 %45 to i32, !dbg !47
  %incdec.ptr14.us = getelementptr inbounds i8, ptr %imgPred.028.us, i64 2, !dbg !66
    #dbg_value(ptr %incdec.ptr14.us, !32, !DIExpression(), !36)
  %46 = load i16, ptr %imgPred.028.us, align 2, !dbg !53
  %conv15.us = zext i16 %46 to i32, !dbg !53
  %sub.us = sub nsw i32 %conv.us, %conv15.us, !dbg !56
  %incdec.ptr16.us = getelementptr inbounds i8, ptr %m7.029.us, i64 4, !dbg !67
    #dbg_value(ptr %incdec.ptr16.us, !33, !DIExpression(), !36)
  store i32 %sub.us, ptr %m7.029.us, align 4, !dbg !57
    #dbg_value(i32 %i.030.us, !34, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !36)
  %incdec.ptr.us.1 = getelementptr inbounds i8, ptr %imgOrg.027.us, i64 4, !dbg !65
    #dbg_value(ptr %incdec.ptr.us.1, !31, !DIExpression(), !36)
  %47 = load i16, ptr %incdec.ptr.us, align 2, !dbg !47
  %conv.us.1 = zext i16 %47 to i32, !dbg !47
  %incdec.ptr14.us.1 = getelementptr inbounds i8, ptr %imgPred.028.us, i64 4, !dbg !66
    #dbg_value(ptr %incdec.ptr14.us.1, !32, !DIExpression(), !36)
  %48 = load i16, ptr %incdec.ptr14.us, align 2, !dbg !53
  %conv15.us.1 = zext i16 %48 to i32, !dbg !53
  %sub.us.1 = sub nsw i32 %conv.us.1, %conv15.us.1, !dbg !56
  %incdec.ptr16.us.1 = getelementptr inbounds i8, ptr %m7.029.us, i64 8, !dbg !67
    #dbg_value(ptr %incdec.ptr16.us.1, !33, !DIExpression(), !36)
  store i32 %sub.us.1, ptr %incdec.ptr16.us, align 4, !dbg !57
    #dbg_value(i32 %i.030.us, !34, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value), !36)
  %incdec.ptr.us.2 = getelementptr inbounds i8, ptr %imgOrg.027.us, i64 6, !dbg !65
    #dbg_value(ptr %incdec.ptr.us.2, !31, !DIExpression(), !36)
  %49 = load i16, ptr %incdec.ptr.us.1, align 2, !dbg !47
  %conv.us.2 = zext i16 %49 to i32, !dbg !47
  %incdec.ptr14.us.2 = getelementptr inbounds i8, ptr %imgPred.028.us, i64 6, !dbg !66
    #dbg_value(ptr %incdec.ptr14.us.2, !32, !DIExpression(), !36)
  %50 = load i16, ptr %incdec.ptr14.us.1, align 2, !dbg !53
  %conv15.us.2 = zext i16 %50 to i32, !dbg !53
  %sub.us.2 = sub nsw i32 %conv.us.2, %conv15.us.2, !dbg !56
  %incdec.ptr16.us.2 = getelementptr inbounds i8, ptr %m7.029.us, i64 12, !dbg !67
    #dbg_value(ptr %incdec.ptr16.us.2, !33, !DIExpression(), !36)
  store i32 %sub.us.2, ptr %incdec.ptr16.us.1, align 4, !dbg !57
    #dbg_value(i32 %i.030.us, !34, !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value), !36)
  %incdec.ptr.us.3 = getelementptr inbounds i8, ptr %imgOrg.027.us, i64 8, !dbg !65
    #dbg_value(ptr %incdec.ptr.us.3, !31, !DIExpression(), !36)
  %51 = load i16, ptr %incdec.ptr.us.2, align 2, !dbg !47
  %conv.us.3 = zext i16 %51 to i32, !dbg !47
  %incdec.ptr14.us.3 = getelementptr inbounds i8, ptr %imgPred.028.us, i64 8, !dbg !66
    #dbg_value(ptr %incdec.ptr14.us.3, !32, !DIExpression(), !36)
  %52 = load i16, ptr %incdec.ptr14.us.2, align 2, !dbg !53
  %conv15.us.3 = zext i16 %52 to i32, !dbg !53
  %sub.us.3 = sub nsw i32 %conv.us.3, %conv15.us.3, !dbg !56
  %incdec.ptr16.us.3 = getelementptr inbounds i8, ptr %m7.029.us, i64 16, !dbg !67
    #dbg_value(ptr %incdec.ptr16.us.3, !33, !DIExpression(), !36)
  store i32 %sub.us.3, ptr %incdec.ptr16.us.2, align 4, !dbg !57
  %inc.us.3 = add nuw nsw i32 %i.030.us, 4, !dbg !68
    #dbg_value(i32 %inc.us.3, !34, !DIExpression(), !36)
  %exitcond.not.3 = icmp eq i32 %inc.us.3, %width, !dbg !71
  br i1 %exitcond.not.3, label %for.cond11.for.inc17_crit_edge.us, label %for.body13.us, !dbg !45, !llvm.loop !72

for.cond11.for.inc17_crit_edge.us:                ; preds = %for.body13.us.prol.loopexit, %for.body13.us, %middle.block
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !73
    #dbg_value(i64 %indvars.iv.next, !35, !DIExpression(), !36)
  %exitcond35.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !37
  br i1 %exitcond35.not, label %for.end19, label %for.body.us, !dbg !40, !llvm.loop !74

for.end19:                                        ; preds = %for.cond11.for.inc17_crit_edge.us, %for.body.lr.ph, %entry
  ret void, !dbg !76
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @sample_reconstruct(ptr nocapture noundef readonly %curImg, ptr nocapture noundef readonly %mpr, ptr nocapture noundef readonly %mb_rres, i32 noundef %mb_x, i32 noundef %opix_x, i32 noundef %width, i32 noundef %height, i32 noundef %max_imgpel_value, i32 noundef %dq_bits) local_unnamed_addr #0 !dbg !77 {
entry:
    #dbg_value(ptr %curImg, !81, !DIExpression(), !95)
    #dbg_value(ptr %mpr, !82, !DIExpression(), !95)
    #dbg_value(ptr %mb_rres, !83, !DIExpression(), !95)
    #dbg_value(i32 %mb_x, !84, !DIExpression(), !95)
    #dbg_value(i32 %opix_x, !85, !DIExpression(), !95)
    #dbg_value(i32 %width, !86, !DIExpression(), !95)
    #dbg_value(i32 %height, !87, !DIExpression(), !95)
    #dbg_value(i32 %max_imgpel_value, !88, !DIExpression(), !95)
    #dbg_value(i32 %dq_bits, !89, !DIExpression(), !95)
    #dbg_value(i32 0, !94, !DIExpression(), !95)
  %cmp32 = icmp sgt i32 %height, 0, !dbg !96
  br i1 %cmp32, label %for.body.lr.ph, label %for.end20, !dbg !99

for.body.lr.ph:                                   ; preds = %entry
  %idxprom1 = sext i32 %opix_x to i64
  %idxprom5 = sext i32 %mb_x to i64
  %cmp1227 = icmp sgt i32 %width, 0
  %sub.i = add nsw i32 %dq_bits, -1
  %shl.i = shl nuw i32 1, %sub.i
  br i1 %cmp1227, label %for.body.us.preheader, label %for.end20

for.body.us.preheader:                            ; preds = %for.body.lr.ph
  %wide.trip.count = zext nneg i32 %height to i64, !dbg !96
  %0 = add nsw i32 %width, -1, !dbg !99
  %1 = zext i32 %0 to i64, !dbg !99
  %2 = add nsw i64 %idxprom1, %1, !dbg !99
  %3 = shl nsw i64 %2, 1, !dbg !99
  %4 = add nsw i64 %idxprom5, %1, !dbg !99
  %5 = shl nsw i64 %4, 2, !dbg !99
  %6 = add nsw i64 %idxprom5, %1, !dbg !99
  %7 = shl nsw i64 %6, 1, !dbg !99
  %8 = zext nneg i32 %width to i64, !dbg !99
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
  br label %for.body.us, !dbg !99

for.body.us:                                      ; preds = %for.body.us.preheader, %for.cond11.for.inc18_crit_edge.us
  %indvars.iv = phi i64 [ 0, %for.body.us.preheader ], [ %indvars.iv.next, %for.cond11.for.inc18_crit_edge.us ]
    #dbg_value(i64 %indvars.iv, !94, !DIExpression(), !95)
  %arrayidx.us = getelementptr inbounds ptr, ptr %curImg, i64 %indvars.iv, !dbg !100
  %13 = load ptr, ptr %arrayidx.us, align 8, !dbg !100
  %arrayidx2.us = getelementptr i16, ptr %13, i64 %idxprom1, !dbg !100
    #dbg_value(ptr %arrayidx2.us, !90, !DIExpression(), !95)
  %arrayidx4.us = getelementptr inbounds ptr, ptr %mpr, i64 %indvars.iv, !dbg !102
  %14 = load ptr, ptr %arrayidx4.us, align 8, !dbg !102
  %arrayidx6.us = getelementptr i16, ptr %14, i64 %idxprom5, !dbg !102
    #dbg_value(ptr %arrayidx6.us, !91, !DIExpression(), !95)
  %arrayidx8.us = getelementptr inbounds ptr, ptr %mb_rres, i64 %indvars.iv, !dbg !103
  %15 = load ptr, ptr %arrayidx8.us, align 8, !dbg !103
  %arrayidx10.us = getelementptr i32, ptr %15, i64 %idxprom5, !dbg !103
    #dbg_value(ptr %arrayidx10.us, !92, !DIExpression(), !95)
    #dbg_value(i32 0, !93, !DIExpression(), !95)
  br i1 %min.iters.check, label %for.body13.us.preheader, label %vector.memcheck, !dbg !104

vector.memcheck:                                  ; preds = %for.body.us
  %16 = getelementptr i8, ptr %13, i64 %3, !dbg !104
  %scevgep = getelementptr i8, ptr %16, i64 2, !dbg !104
  %17 = getelementptr i8, ptr %15, i64 %5, !dbg !104
  %scevgep37 = getelementptr i8, ptr %17, i64 4, !dbg !104
  %18 = getelementptr i8, ptr %14, i64 %7, !dbg !104
  %scevgep38 = getelementptr i8, ptr %18, i64 2, !dbg !104
  %bound0 = icmp ult ptr %arrayidx2.us, %scevgep37, !dbg !104
  %bound1 = icmp ult ptr %arrayidx10.us, %scevgep, !dbg !104
  %found.conflict = and i1 %bound0, %bound1, !dbg !104
  %bound039 = icmp ult ptr %arrayidx2.us, %scevgep38, !dbg !104
  %bound140 = icmp ult ptr %arrayidx6.us, %scevgep, !dbg !104
  %found.conflict41 = and i1 %bound039, %bound140, !dbg !104
  %conflict.rdx = or i1 %found.conflict, %found.conflict41, !dbg !104
  br i1 %conflict.rdx, label %for.body13.us.preheader, label %vector.ph, !dbg !104

vector.ph:                                        ; preds = %vector.memcheck
  %ind.end42 = getelementptr i8, ptr %arrayidx10.us, i64 %9, !dbg !104
  %ind.end44 = getelementptr i8, ptr %arrayidx6.us, i64 %10, !dbg !104
  %ind.end46 = getelementptr i8, ptr %arrayidx2.us, i64 %11, !dbg !104
  br label %vector.body, !dbg !104

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %offset.idx = shl i64 %index, 2, !dbg !104
  %next.gep = getelementptr i8, ptr %arrayidx10.us, i64 %offset.idx
  %offset.idx51 = shl i64 %index, 1
  %next.gep52 = getelementptr i8, ptr %arrayidx6.us, i64 %offset.idx51
  %offset.idx56 = shl i64 %index, 1
  %next.gep57 = getelementptr i8, ptr %arrayidx2.us, i64 %offset.idx56
  %19 = getelementptr i8, ptr %next.gep, i64 16, !dbg !106
  %20 = getelementptr i8, ptr %next.gep, i64 32, !dbg !106
  %21 = getelementptr i8, ptr %next.gep, i64 48, !dbg !106
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !dbg !106, !alias.scope !108
  %wide.load61 = load <4 x i32>, ptr %19, align 4, !dbg !106, !alias.scope !108
  %wide.load62 = load <4 x i32>, ptr %20, align 4, !dbg !106, !alias.scope !108
  %wide.load63 = load <4 x i32>, ptr %21, align 4, !dbg !106, !alias.scope !108
  %22 = add nsw <4 x i32> %wide.load, %broadcast.splat, !dbg !111
  %23 = add nsw <4 x i32> %wide.load61, %broadcast.splat, !dbg !111
  %24 = add nsw <4 x i32> %wide.load62, %broadcast.splat, !dbg !111
  %25 = add nsw <4 x i32> %wide.load63, %broadcast.splat, !dbg !111
  %26 = ashr <4 x i32> %22, %broadcast.splat65, !dbg !120
  %27 = ashr <4 x i32> %23, %broadcast.splat65, !dbg !120
  %28 = ashr <4 x i32> %24, %broadcast.splat65, !dbg !120
  %29 = ashr <4 x i32> %25, %broadcast.splat65, !dbg !120
  %30 = getelementptr i8, ptr %next.gep52, i64 8, !dbg !121
  %31 = getelementptr i8, ptr %next.gep52, i64 16, !dbg !121
  %32 = getelementptr i8, ptr %next.gep52, i64 24, !dbg !121
  %wide.load66 = load <4 x i16>, ptr %next.gep52, align 2, !dbg !121, !alias.scope !122
  %wide.load67 = load <4 x i16>, ptr %30, align 2, !dbg !121, !alias.scope !122
  %wide.load68 = load <4 x i16>, ptr %31, align 2, !dbg !121, !alias.scope !122
  %wide.load69 = load <4 x i16>, ptr %32, align 2, !dbg !121, !alias.scope !122
  %33 = zext <4 x i16> %wide.load66 to <4 x i32>, !dbg !121
  %34 = zext <4 x i16> %wide.load67 to <4 x i32>, !dbg !121
  %35 = zext <4 x i16> %wide.load68 to <4 x i32>, !dbg !121
  %36 = zext <4 x i16> %wide.load69 to <4 x i32>, !dbg !121
  %37 = add nsw <4 x i32> %26, %33, !dbg !124
  %38 = add nsw <4 x i32> %27, %34, !dbg !124
  %39 = add nsw <4 x i32> %28, %35, !dbg !124
  %40 = add nsw <4 x i32> %29, %36, !dbg !124
  %41 = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %37, <4 x i32> zeroinitializer), !dbg !125
  %42 = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %38, <4 x i32> zeroinitializer), !dbg !125
  %43 = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %39, <4 x i32> zeroinitializer), !dbg !125
  %44 = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %40, <4 x i32> zeroinitializer), !dbg !125
  %45 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %41, <4 x i32> %broadcast.splat71), !dbg !136
  %46 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %42, <4 x i32> %broadcast.splat71), !dbg !136
  %47 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %43, <4 x i32> %broadcast.splat71), !dbg !136
  %48 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %44, <4 x i32> %broadcast.splat71), !dbg !136
  %49 = trunc <4 x i32> %45 to <4 x i16>, !dbg !142
  %50 = trunc <4 x i32> %46 to <4 x i16>, !dbg !142
  %51 = trunc <4 x i32> %47 to <4 x i16>, !dbg !142
  %52 = trunc <4 x i32> %48 to <4 x i16>, !dbg !142
  %53 = getelementptr i8, ptr %next.gep57, i64 8, !dbg !143
  %54 = getelementptr i8, ptr %next.gep57, i64 16, !dbg !143
  %55 = getelementptr i8, ptr %next.gep57, i64 24, !dbg !143
  store <4 x i16> %49, ptr %next.gep57, align 2, !dbg !143, !alias.scope !144, !noalias !146
  store <4 x i16> %50, ptr %53, align 2, !dbg !143, !alias.scope !144, !noalias !146
  store <4 x i16> %51, ptr %54, align 2, !dbg !143, !alias.scope !144, !noalias !146
  store <4 x i16> %52, ptr %55, align 2, !dbg !143, !alias.scope !144, !noalias !146
  %index.next = add nuw i64 %index, 16
  %56 = icmp eq i64 %index.next, %n.vec
  br i1 %56, label %middle.block, label %vector.body, !llvm.loop !147

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %for.cond11.for.inc18_crit_edge.us, label %for.body13.us.preheader, !dbg !104

for.body13.us.preheader:                          ; preds = %middle.block, %vector.memcheck, %for.body.us
  %i.031.us.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %for.body.us ], [ %ind.end, %middle.block ]
  %m7.030.us.ph = phi ptr [ %arrayidx10.us, %vector.memcheck ], [ %arrayidx10.us, %for.body.us ], [ %ind.end42, %middle.block ]
  %imgPred.029.us.ph = phi ptr [ %arrayidx6.us, %vector.memcheck ], [ %arrayidx6.us, %for.body.us ], [ %ind.end44, %middle.block ]
  %imgOrg.028.us.ph = phi ptr [ %arrayidx2.us, %vector.memcheck ], [ %arrayidx2.us, %for.body.us ], [ %ind.end46, %middle.block ]
  %57 = sub i32 %width, %i.031.us.ph, !dbg !104
  %xtraiter = and i32 %57, 1, !dbg !104
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0, !dbg !104
  br i1 %lcmp.mod.not, label %for.body13.us.prol.loopexit, label %for.body13.us.prol, !dbg !104

for.body13.us.prol:                               ; preds = %for.body13.us.preheader
    #dbg_value(i32 %i.031.us.ph, !93, !DIExpression(), !95)
    #dbg_value(ptr %m7.030.us.ph, !92, !DIExpression(), !95)
    #dbg_value(ptr %imgPred.029.us.ph, !91, !DIExpression(), !95)
    #dbg_value(ptr %imgOrg.028.us.ph, !90, !DIExpression(), !95)
  %incdec.ptr.us.prol = getelementptr inbounds i8, ptr %m7.030.us.ph, i64 4, !dbg !149
    #dbg_value(ptr %incdec.ptr.us.prol, !92, !DIExpression(), !95)
  %58 = load i32, ptr %m7.030.us.ph, align 4, !dbg !106
    #dbg_value(i32 %58, !117, !DIExpression(), !150)
    #dbg_value(i32 %dq_bits, !118, !DIExpression(), !150)
  %add.i.us.prol = add nsw i32 %58, %shl.i, !dbg !111
  %shr.i.us.prol = ashr i32 %add.i.us.prol, %dq_bits, !dbg !120
  %incdec.ptr14.us.prol = getelementptr inbounds i8, ptr %imgPred.029.us.ph, i64 2, !dbg !151
    #dbg_value(ptr %incdec.ptr14.us.prol, !91, !DIExpression(), !95)
  %59 = load i16, ptr %imgPred.029.us.ph, align 2, !dbg !121
  %conv.us.prol = zext i16 %59 to i32, !dbg !121
  %add.us.prol = add nsw i32 %shr.i.us.prol, %conv.us.prol, !dbg !124
    #dbg_value(i32 %max_imgpel_value, !133, !DIExpression(), !152)
    #dbg_value(i32 %add.us.prol, !134, !DIExpression(), !152)
    #dbg_value(i32 %add.us.prol, !128, !DIExpression(), !153)
    #dbg_value(i32 0, !129, !DIExpression(), !153)
  %cond.i.i.us.prol = tail call noundef i32 @llvm.smax.i32(i32 %add.us.prol, i32 0), !dbg !125
    #dbg_value(i32 %cond.i.i.us.prol, !134, !DIExpression(), !152)
    #dbg_value(i32 %cond.i.i.us.prol, !139, !DIExpression(), !154)
    #dbg_value(i32 %max_imgpel_value, !140, !DIExpression(), !154)
  %cond.i4.i.us.prol = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i.us.prol, i32 %max_imgpel_value), !dbg !136
    #dbg_value(i32 %cond.i4.i.us.prol, !134, !DIExpression(), !152)
  %conv16.us.prol = trunc i32 %cond.i4.i.us.prol to i16, !dbg !142
  %incdec.ptr17.us.prol = getelementptr inbounds i8, ptr %imgOrg.028.us.ph, i64 2, !dbg !155
    #dbg_value(ptr %incdec.ptr17.us.prol, !90, !DIExpression(), !95)
  store i16 %conv16.us.prol, ptr %imgOrg.028.us.ph, align 2, !dbg !143
  %inc.us.prol = add nuw nsw i32 %i.031.us.ph, 1, !dbg !156
    #dbg_value(i32 %inc.us.prol, !93, !DIExpression(), !95)
  br label %for.body13.us.prol.loopexit, !dbg !104

for.body13.us.prol.loopexit:                      ; preds = %for.body13.us.prol, %for.body13.us.preheader
  %i.031.us.unr = phi i32 [ %i.031.us.ph, %for.body13.us.preheader ], [ %inc.us.prol, %for.body13.us.prol ]
  %m7.030.us.unr = phi ptr [ %m7.030.us.ph, %for.body13.us.preheader ], [ %incdec.ptr.us.prol, %for.body13.us.prol ]
  %imgPred.029.us.unr = phi ptr [ %imgPred.029.us.ph, %for.body13.us.preheader ], [ %incdec.ptr14.us.prol, %for.body13.us.prol ]
  %imgOrg.028.us.unr = phi ptr [ %imgOrg.028.us.ph, %for.body13.us.preheader ], [ %incdec.ptr17.us.prol, %for.body13.us.prol ]
  %60 = icmp eq i32 %i.031.us.ph, %12, !dbg !104
  br i1 %60, label %for.cond11.for.inc18_crit_edge.us, label %for.body13.us, !dbg !104

for.body13.us:                                    ; preds = %for.body13.us.prol.loopexit, %for.body13.us
  %i.031.us = phi i32 [ %inc.us.1, %for.body13.us ], [ %i.031.us.unr, %for.body13.us.prol.loopexit ]
  %m7.030.us = phi ptr [ %incdec.ptr.us.1, %for.body13.us ], [ %m7.030.us.unr, %for.body13.us.prol.loopexit ]
  %imgPred.029.us = phi ptr [ %incdec.ptr14.us.1, %for.body13.us ], [ %imgPred.029.us.unr, %for.body13.us.prol.loopexit ]
  %imgOrg.028.us = phi ptr [ %incdec.ptr17.us.1, %for.body13.us ], [ %imgOrg.028.us.unr, %for.body13.us.prol.loopexit ]
    #dbg_value(i32 %i.031.us, !93, !DIExpression(), !95)
    #dbg_value(ptr %m7.030.us, !92, !DIExpression(), !95)
    #dbg_value(ptr %imgPred.029.us, !91, !DIExpression(), !95)
    #dbg_value(ptr %imgOrg.028.us, !90, !DIExpression(), !95)
  %incdec.ptr.us = getelementptr inbounds i8, ptr %m7.030.us, i64 4, !dbg !149
    #dbg_value(ptr %incdec.ptr.us, !92, !DIExpression(), !95)
  %61 = load i32, ptr %m7.030.us, align 4, !dbg !106
    #dbg_value(i32 %61, !117, !DIExpression(), !150)
    #dbg_value(i32 %dq_bits, !118, !DIExpression(), !150)
  %add.i.us = add nsw i32 %61, %shl.i, !dbg !111
  %shr.i.us = ashr i32 %add.i.us, %dq_bits, !dbg !120
  %incdec.ptr14.us = getelementptr inbounds i8, ptr %imgPred.029.us, i64 2, !dbg !151
    #dbg_value(ptr %incdec.ptr14.us, !91, !DIExpression(), !95)
  %62 = load i16, ptr %imgPred.029.us, align 2, !dbg !121
  %conv.us = zext i16 %62 to i32, !dbg !121
  %add.us = add nsw i32 %shr.i.us, %conv.us, !dbg !124
    #dbg_value(i32 %max_imgpel_value, !133, !DIExpression(), !152)
    #dbg_value(i32 %add.us, !134, !DIExpression(), !152)
    #dbg_value(i32 %add.us, !128, !DIExpression(), !153)
    #dbg_value(i32 0, !129, !DIExpression(), !153)
  %cond.i.i.us = tail call noundef i32 @llvm.smax.i32(i32 %add.us, i32 0), !dbg !125
    #dbg_value(i32 %cond.i.i.us, !134, !DIExpression(), !152)
    #dbg_value(i32 %cond.i.i.us, !139, !DIExpression(), !154)
    #dbg_value(i32 %max_imgpel_value, !140, !DIExpression(), !154)
  %cond.i4.i.us = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i.us, i32 %max_imgpel_value), !dbg !136
    #dbg_value(i32 %cond.i4.i.us, !134, !DIExpression(), !152)
  %conv16.us = trunc i32 %cond.i4.i.us to i16, !dbg !142
  %incdec.ptr17.us = getelementptr inbounds i8, ptr %imgOrg.028.us, i64 2, !dbg !155
    #dbg_value(ptr %incdec.ptr17.us, !90, !DIExpression(), !95)
  store i16 %conv16.us, ptr %imgOrg.028.us, align 2, !dbg !143
    #dbg_value(i32 %i.031.us, !93, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !95)
  %incdec.ptr.us.1 = getelementptr inbounds i8, ptr %m7.030.us, i64 8, !dbg !149
    #dbg_value(ptr %incdec.ptr.us.1, !92, !DIExpression(), !95)
  %63 = load i32, ptr %incdec.ptr.us, align 4, !dbg !106
    #dbg_value(i32 %63, !117, !DIExpression(), !150)
  %add.i.us.1 = add nsw i32 %63, %shl.i, !dbg !111
  %shr.i.us.1 = ashr i32 %add.i.us.1, %dq_bits, !dbg !120
  %incdec.ptr14.us.1 = getelementptr inbounds i8, ptr %imgPred.029.us, i64 4, !dbg !151
    #dbg_value(ptr %incdec.ptr14.us.1, !91, !DIExpression(), !95)
  %64 = load i16, ptr %incdec.ptr14.us, align 2, !dbg !121
  %conv.us.1 = zext i16 %64 to i32, !dbg !121
  %add.us.1 = add nsw i32 %shr.i.us.1, %conv.us.1, !dbg !124
    #dbg_value(i32 %add.us.1, !134, !DIExpression(), !152)
    #dbg_value(i32 %add.us.1, !128, !DIExpression(), !153)
  %cond.i.i.us.1 = tail call noundef i32 @llvm.smax.i32(i32 %add.us.1, i32 0), !dbg !125
    #dbg_value(i32 %cond.i.i.us.1, !134, !DIExpression(), !152)
    #dbg_value(i32 %cond.i.i.us.1, !139, !DIExpression(), !154)
  %cond.i4.i.us.1 = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i.us.1, i32 %max_imgpel_value), !dbg !136
    #dbg_value(i32 %cond.i4.i.us.1, !134, !DIExpression(), !152)
  %conv16.us.1 = trunc i32 %cond.i4.i.us.1 to i16, !dbg !142
  %incdec.ptr17.us.1 = getelementptr inbounds i8, ptr %imgOrg.028.us, i64 4, !dbg !155
    #dbg_value(ptr %incdec.ptr17.us.1, !90, !DIExpression(), !95)
  store i16 %conv16.us.1, ptr %incdec.ptr17.us, align 2, !dbg !143
  %inc.us.1 = add nuw nsw i32 %i.031.us, 2, !dbg !156
    #dbg_value(i32 %inc.us.1, !93, !DIExpression(), !95)
  %exitcond.not.1 = icmp eq i32 %inc.us.1, %width, !dbg !157
  br i1 %exitcond.not.1, label %for.cond11.for.inc18_crit_edge.us, label %for.body13.us, !dbg !104, !llvm.loop !158

for.cond11.for.inc18_crit_edge.us:                ; preds = %for.body13.us.prol.loopexit, %for.body13.us, %middle.block
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !159
    #dbg_value(i64 %indvars.iv.next, !94, !DIExpression(), !95)
  %exitcond36.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !96
  br i1 %exitcond36.not, label %for.end20, label %for.body.us, !dbg !99, !llvm.loop !160

for.end20:                                        ; preds = %for.cond11.for.inc18_crit_edge.us, %for.body.lr.ph, %entry
  ret void, !dbg !162
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

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "ldecod_src/blk_prediction.c", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "69dce5edb3c13ffef2f69f94b9303fa4")
!2 = !{!3}
!3 = !DIDerivedType(tag: DW_TAG_typedef, name: "imgpel", file: !4, line: 41, baseType: !5)
!4 = !DIFile(filename: "ldecod_src/inc/typedefs.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "e1393d024b72e653f4e6dbeffdb0b154")
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16", file: !4, line: 23, baseType: !6)
!6 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!7 = !{i32 7, !"Dwarf Version", i32 5}
!8 = !{i32 2, !"Debug Info Version", i32 3}
!9 = !{i32 1, !"wchar_size", i32 4}
!10 = !{i32 8, !"PIC Level", i32 2}
!11 = !{i32 7, !"PIE Level", i32 2}
!12 = !{i32 7, !"uwtable", i32 2}
!13 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!14 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!15 = distinct !DISubprogram(name: "compute_residue", scope: !1, file: !1, line: 30, type: !16, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !23)
!16 = !DISubroutineType(types: !17)
!17 = !{null, !18, !18, !20, !22, !22, !22, !22}
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!23 = !{!24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35}
!24 = !DILocalVariable(name: "curImg", arg: 1, scope: !15, file: !1, line: 30, type: !18)
!25 = !DILocalVariable(name: "mpr", arg: 2, scope: !15, file: !1, line: 30, type: !18)
!26 = !DILocalVariable(name: "mb_rres", arg: 3, scope: !15, file: !1, line: 30, type: !20)
!27 = !DILocalVariable(name: "mb_x", arg: 4, scope: !15, file: !1, line: 30, type: !22)
!28 = !DILocalVariable(name: "opix_x", arg: 5, scope: !15, file: !1, line: 30, type: !22)
!29 = !DILocalVariable(name: "width", arg: 6, scope: !15, file: !1, line: 30, type: !22)
!30 = !DILocalVariable(name: "height", arg: 7, scope: !15, file: !1, line: 30, type: !22)
!31 = !DILocalVariable(name: "imgOrg", scope: !15, file: !1, line: 32, type: !19)
!32 = !DILocalVariable(name: "imgPred", scope: !15, file: !1, line: 32, type: !19)
!33 = !DILocalVariable(name: "m7", scope: !15, file: !1, line: 33, type: !21)
!34 = !DILocalVariable(name: "i", scope: !15, file: !1, line: 34, type: !22)
!35 = !DILocalVariable(name: "j", scope: !15, file: !1, line: 34, type: !22)
!36 = !DILocation(line: 0, scope: !15)
!37 = !DILocation(line: 36, column: 17, scope: !38)
!38 = distinct !DILexicalBlock(scope: !39, file: !1, line: 36, column: 3)
!39 = distinct !DILexicalBlock(scope: !15, file: !1, line: 36, column: 3)
!40 = !DILocation(line: 36, column: 3, scope: !39)
!41 = !DILocation(line: 38, column: 15, scope: !42)
!42 = distinct !DILexicalBlock(scope: !38, file: !1, line: 37, column: 3)
!43 = !DILocation(line: 39, column: 16, scope: !42)
!44 = !DILocation(line: 40, column: 11, scope: !42)
!45 = !DILocation(line: 41, column: 5, scope: !46)
!46 = distinct !DILexicalBlock(scope: !42, file: !1, line: 41, column: 5)
!47 = !DILocation(line: 43, column: 15, scope: !48)
!48 = distinct !DILexicalBlock(scope: !49, file: !1, line: 42, column: 5)
!49 = distinct !DILexicalBlock(scope: !46, file: !1, line: 41, column: 5)
!50 = !{!51}
!51 = distinct !{!51, !52}
!52 = distinct !{!52, !"LVerDomain"}
!53 = !DILocation(line: 43, column: 27, scope: !48)
!54 = !{!55}
!55 = distinct !{!55, !52}
!56 = !DILocation(line: 43, column: 25, scope: !48)
!57 = !DILocation(line: 43, column: 13, scope: !48)
!58 = !{!59}
!59 = distinct !{!59, !52}
!60 = !{!51, !55}
!61 = distinct !{!61, !45, !62, !63, !64}
!62 = !DILocation(line: 44, column: 5, scope: !46)
!63 = !{!"llvm.loop.isvectorized", i32 1}
!64 = !{!"llvm.loop.unroll.runtime.disable"}
!65 = !DILocation(line: 43, column: 22, scope: !48)
!66 = !DILocation(line: 43, column: 35, scope: !48)
!67 = !DILocation(line: 43, column: 10, scope: !48)
!68 = !DILocation(line: 41, column: 29, scope: !49)
!69 = distinct !{!69, !70}
!70 = !{!"llvm.loop.unroll.disable"}
!71 = !DILocation(line: 41, column: 19, scope: !49)
!72 = distinct !{!72, !45, !62, !63}
!73 = !DILocation(line: 36, column: 28, scope: !38)
!74 = distinct !{!74, !40, !75}
!75 = !DILocation(line: 45, column: 3, scope: !39)
!76 = !DILocation(line: 46, column: 1, scope: !15)
!77 = distinct !DISubprogram(name: "sample_reconstruct", scope: !1, file: !1, line: 48, type: !78, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !80)
!78 = !DISubroutineType(types: !79)
!79 = !{null, !18, !18, !20, !22, !22, !22, !22, !22, !22}
!80 = !{!81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94}
!81 = !DILocalVariable(name: "curImg", arg: 1, scope: !77, file: !1, line: 48, type: !18)
!82 = !DILocalVariable(name: "mpr", arg: 2, scope: !77, file: !1, line: 48, type: !18)
!83 = !DILocalVariable(name: "mb_rres", arg: 3, scope: !77, file: !1, line: 48, type: !20)
!84 = !DILocalVariable(name: "mb_x", arg: 4, scope: !77, file: !1, line: 48, type: !22)
!85 = !DILocalVariable(name: "opix_x", arg: 5, scope: !77, file: !1, line: 48, type: !22)
!86 = !DILocalVariable(name: "width", arg: 6, scope: !77, file: !1, line: 48, type: !22)
!87 = !DILocalVariable(name: "height", arg: 7, scope: !77, file: !1, line: 48, type: !22)
!88 = !DILocalVariable(name: "max_imgpel_value", arg: 8, scope: !77, file: !1, line: 48, type: !22)
!89 = !DILocalVariable(name: "dq_bits", arg: 9, scope: !77, file: !1, line: 48, type: !22)
!90 = !DILocalVariable(name: "imgOrg", scope: !77, file: !1, line: 50, type: !19)
!91 = !DILocalVariable(name: "imgPred", scope: !77, file: !1, line: 50, type: !19)
!92 = !DILocalVariable(name: "m7", scope: !77, file: !1, line: 51, type: !21)
!93 = !DILocalVariable(name: "i", scope: !77, file: !1, line: 52, type: !22)
!94 = !DILocalVariable(name: "j", scope: !77, file: !1, line: 52, type: !22)
!95 = !DILocation(line: 0, scope: !77)
!96 = !DILocation(line: 54, column: 17, scope: !97)
!97 = distinct !DILexicalBlock(scope: !98, file: !1, line: 54, column: 3)
!98 = distinct !DILexicalBlock(scope: !77, file: !1, line: 54, column: 3)
!99 = !DILocation(line: 54, column: 3, scope: !98)
!100 = !DILocation(line: 56, column: 15, scope: !101)
!101 = distinct !DILexicalBlock(scope: !97, file: !1, line: 55, column: 3)
!102 = !DILocation(line: 57, column: 16, scope: !101)
!103 = !DILocation(line: 58, column: 11, scope: !101)
!104 = !DILocation(line: 59, column: 5, scope: !105)
!105 = distinct !DILexicalBlock(scope: !101, file: !1, line: 59, column: 5)
!106 = !DILocation(line: 60, column: 68, scope: !107)
!107 = distinct !DILexicalBlock(scope: !105, file: !1, line: 59, column: 5)
!108 = !{!109}
!109 = distinct !{!109, !110}
!110 = distinct !{!110, !"LVerDomain"}
!111 = !DILocation(line: 177, column: 14, scope: !112, inlinedAt: !119)
!112 = distinct !DISubprogram(name: "rshift_rnd_sf", scope: !113, file: !113, line: 175, type: !114, scopeLine: 176, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !116)
!113 = !DIFile(filename: "ldecod_src/inc/ifunctions.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "279401589ed56df99e287ad9e5fc564b")
!114 = !DISubroutineType(types: !115)
!115 = !{!22, !22, !22}
!116 = !{!117, !118}
!117 = !DILocalVariable(name: "x", arg: 1, scope: !112, file: !113, line: 175, type: !22)
!118 = !DILocalVariable(name: "a", arg: 2, scope: !112, file: !113, line: 175, type: !22)
!119 = distinct !DILocation(line: 60, column: 54, scope: !107)
!120 = !DILocation(line: 177, column: 31, scope: !112, inlinedAt: !119)
!121 = !DILocation(line: 60, column: 86, scope: !107)
!122 = !{!123}
!123 = distinct !{!123, !110}
!124 = !DILocation(line: 60, column: 84, scope: !107)
!125 = !DILocation(line: 49, column: 10, scope: !126, inlinedAt: !130)
!126 = distinct !DISubprogram(name: "imax", scope: !113, file: !113, line: 47, type: !114, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !127)
!127 = !{!128, !129}
!128 = !DILocalVariable(name: "a", arg: 1, scope: !126, file: !113, line: 47, type: !22)
!129 = !DILocalVariable(name: "b", arg: 2, scope: !126, file: !113, line: 47, type: !22)
!130 = distinct !DILocation(line: 192, column: 7, scope: !131, inlinedAt: !135)
!131 = distinct !DISubprogram(name: "iClip1", scope: !113, file: !113, line: 190, type: !114, scopeLine: 191, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !132)
!132 = !{!133, !134}
!133 = !DILocalVariable(name: "high", arg: 1, scope: !131, file: !113, line: 190, type: !22)
!134 = !DILocalVariable(name: "x", arg: 2, scope: !131, file: !113, line: 190, type: !22)
!135 = distinct !DILocation(line: 60, column: 28, scope: !107)
!136 = !DILocation(line: 44, column: 10, scope: !137, inlinedAt: !141)
!137 = distinct !DISubprogram(name: "imin", scope: !113, file: !113, line: 42, type: !114, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !138)
!138 = !{!139, !140}
!139 = !DILocalVariable(name: "a", arg: 1, scope: !137, file: !113, line: 42, type: !22)
!140 = !DILocalVariable(name: "b", arg: 2, scope: !137, file: !113, line: 42, type: !22)
!141 = distinct !DILocation(line: 193, column: 7, scope: !131, inlinedAt: !135)
!142 = !DILocation(line: 60, column: 19, scope: !107)
!143 = !DILocation(line: 60, column: 17, scope: !107)
!144 = !{!145}
!145 = distinct !{!145, !110}
!146 = !{!109, !123}
!147 = distinct !{!147, !104, !148, !63, !64}
!148 = !DILocation(line: 60, column: 96, scope: !105)
!149 = !DILocation(line: 60, column: 71, scope: !107)
!150 = !DILocation(line: 0, scope: !112, inlinedAt: !119)
!151 = !DILocation(line: 60, column: 94, scope: !107)
!152 = !DILocation(line: 0, scope: !131, inlinedAt: !135)
!153 = !DILocation(line: 0, scope: !126, inlinedAt: !130)
!154 = !DILocation(line: 0, scope: !137, inlinedAt: !141)
!155 = !DILocation(line: 60, column: 14, scope: !107)
!156 = !DILocation(line: 59, column: 23, scope: !107)
!157 = !DILocation(line: 59, column: 15, scope: !107)
!158 = distinct !{!158, !104, !148, !63}
!159 = !DILocation(line: 54, column: 28, scope: !97)
!160 = distinct !{!160, !99, !161}
!161 = !DILocation(line: 61, column: 3, scope: !98)
!162 = !DILocation(line: 62, column: 1, scope: !77)
