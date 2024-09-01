; ModuleID = 'ldecod_src/intra_chroma_pred.c'
source_filename = "ldecod_src/intra_chroma_pred.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pix_pos = type { i32, i32, i16, i16, i16, i16 }

@.str = private unnamed_addr constant [52 x i8] c"unexpected VERT_PRED_8 chroma intra prediction mode\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"illegal chroma intra prediction mode\00", align 1
@subblk_offset_y = internal unnamed_addr constant [3 x [8 x [4 x i8]]] [[8 x [4 x i8]] [[4 x i8] c"\00\00\04\04", [4 x i8] c"\00\00\04\04", [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer], [8 x [4 x i8]] [[4 x i8] c"\00\00\04\04", [4 x i8] c"\08\08\0C\0C", [4 x i8] c"\00\00\04\04", [4 x i8] c"\08\08\0C\0C", [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer], [8 x [4 x i8]] [[4 x i8] c"\00\00\04\04", [4 x i8] c"\00\00\04\04", [4 x i8] c"\08\08\0C\0C", [4 x i8] c"\08\08\0C\0C", [4 x i8] c"\00\00\04\04", [4 x i8] c"\00\00\04\04", [4 x i8] c"\08\08\0C\0C", [4 x i8] c"\08\08\0C\0C"]], align 16
@subblk_offset_x = internal unnamed_addr constant [3 x [8 x [4 x i8]]] [[8 x [4 x i8]] [[4 x i8] c"\00\04\00\04", [4 x i8] c"\00\04\00\04", [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer], [8 x [4 x i8]] [[4 x i8] c"\00\04\00\04", [4 x i8] c"\00\04\00\04", [4 x i8] c"\00\04\00\04", [4 x i8] c"\00\04\00\04", [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer], [8 x [4 x i8]] [[4 x i8] c"\00\04\00\04", [4 x i8] c"\08\0C\08\0C", [4 x i8] c"\00\04\00\04", [4 x i8] c"\08\0C\08\0C", [4 x i8] c"\00\04\00\04", [4 x i8] c"\08\0C\08\0C", [4 x i8] c"\00\04\00\04", [4 x i8] c"\08\0C\08\0C"]], align 16
@.str.2 = private unnamed_addr constant [51 x i8] c"unexpected HOR_PRED_8 chroma intra prediction mode\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"unexpected PLANE_8 chroma intra prediction mode\00", align 1
@intrapred_chroma_dc.block_pos = internal unnamed_addr constant [3 x [4 x [4 x i32]]] [[4 x [4 x i32]] [[4 x i32] [i32 0, i32 1, i32 2, i32 3], [4 x i32] zeroinitializer, [4 x i32] zeroinitializer, [4 x i32] zeroinitializer], [4 x [4 x i32]] [[4 x i32] [i32 0, i32 1, i32 2, i32 3], [4 x i32] [i32 2, i32 3, i32 2, i32 3], [4 x i32] zeroinitializer, [4 x i32] zeroinitializer], [4 x [4 x i32]] [[4 x i32] [i32 0, i32 1, i32 2, i32 3], [4 x i32] [i32 1, i32 1, i32 3, i32 3], [4 x i32] [i32 2, i32 3, i32 2, i32 3], [4 x i32] [i32 3, i32 3, i32 3, i32 3]]], align 16

; Function Attrs: nounwind uwtable
define dso_local void @intrapred_chroma_ver_mbaff(ptr noundef %currMB) local_unnamed_addr #0 {
entry:
  %up = alloca %struct.pix_pos, align 4
  %0 = load ptr, ptr %currMB, align 8
  %p_Vid1 = getelementptr inbounds i8, ptr %currMB, i64 8
  %1 = load ptr, ptr %p_Vid1, align 8
  %dec_picture2 = getelementptr inbounds i8, ptr %0, i64 13520
  %2 = load ptr, ptr %dec_picture2, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %up) #5
  %mb_cr_size_x = getelementptr inbounds i8, ptr %1, i64 849108
  %3 = load i32, ptr %mb_cr_size_x, align 4
  %mb_cr_size_y = getelementptr inbounds i8, ptr %1, i64 849112
  %4 = load i32, ptr %mb_cr_size_y, align 8
  %arrayidx = getelementptr inbounds i8, ptr %1, i64 849132
  call void @getAffNeighbour(ptr noundef nonnull %currMB, i32 noundef 0, i32 noundef -1, ptr noundef nonnull %arrayidx, ptr noundef nonnull %up) #5
  %active_pps = getelementptr inbounds i8, ptr %1, i64 8
  %5 = load ptr, ptr %active_pps, align 8
  %constrained_intra_pred_flag = getelementptr inbounds i8, ptr %5, i64 2204
  %6 = load i32, ptr %constrained_intra_pred_flag, align 4
  %tobool.not = icmp eq i32 %6, 0
  %7 = load i32, ptr %up, align 4
  br i1 %tobool.not, label %if.end, label %if.else

if.else:                                          ; preds = %entry
  %tobool4.not = icmp eq i32 %7, 0
  br i1 %tobool4.not, label %if.then7, label %cond.true

cond.true:                                        ; preds = %if.else
  %intra_block = getelementptr inbounds i8, ptr %0, i64 13544
  %8 = load ptr, ptr %intra_block, align 8
  %mb_addr = getelementptr inbounds i8, ptr %up, i64 4
  %9 = load i32, ptr %mb_addr, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx5 = getelementptr inbounds i8, ptr %8, i64 %idxprom
  %10 = load i8, ptr %arrayidx5, align 1
  %conv = sext i8 %10 to i32
  br label %if.end

if.end:                                           ; preds = %entry, %cond.true
  %up_avail.0 = phi i32 [ %conv, %cond.true ], [ %7, %entry ]
  %tobool6.not = icmp eq i32 %up_avail.0, 0
  br i1 %tobool6.not, label %if.then7, label %if.else8

if.then7:                                         ; preds = %if.else, %if.end
  call void @error(ptr noundef nonnull @.str, i32 noundef -1) #5
  br label %if.end35

if.else8:                                         ; preds = %if.end
  %mb_pred = getelementptr inbounds i8, ptr %0, i64 1248
  %11 = load ptr, ptr %mb_pred, align 8
  %arrayidx9 = getelementptr inbounds i8, ptr %11, i64 8
  %12 = load ptr, ptr %arrayidx9, align 8
  %arrayidx11 = getelementptr inbounds i8, ptr %11, i64 16
  %13 = load ptr, ptr %arrayidx11, align 8
  %imgUV = getelementptr inbounds i8, ptr %2, i64 136
  %14 = load ptr, ptr %imgUV, align 8
  %15 = load ptr, ptr %14, align 8
  %pos_y = getelementptr inbounds i8, ptr %up, i64 14
  %16 = load i16, ptr %pos_y, align 2
  %idxprom13 = sext i16 %16 to i64
  %arrayidx14 = getelementptr inbounds ptr, ptr %15, i64 %idxprom13
  %17 = load ptr, ptr %arrayidx14, align 8
  %pos_x = getelementptr inbounds i8, ptr %up, i64 12
  %18 = load i16, ptr %pos_x, align 4
  %idxprom15 = sext i16 %18 to i64
  %arrayidx16 = getelementptr inbounds i16, ptr %17, i64 %idxprom15
  %arrayidx18 = getelementptr inbounds i8, ptr %14, i64 8
  %19 = load ptr, ptr %arrayidx18, align 8
  %arrayidx21 = getelementptr inbounds ptr, ptr %19, i64 %idxprom13
  %20 = load ptr, ptr %arrayidx21, align 8
  %arrayidx24 = getelementptr inbounds i16, ptr %20, i64 %idxprom15
  %cmp51 = icmp sgt i32 %4, 0
  br i1 %cmp51, label %for.body.lr.ph, label %if.end35

for.body.lr.ph:                                   ; preds = %if.else8
  %conv29 = sext i32 %3 to i64
  %mul = shl nsw i64 %conv29, 1
  %wide.trip.count = zext nneg i32 %4 to i64
  %xtraiter = and i64 %wide.trip.count, 1
  %21 = icmp eq i32 %4, 1
  br i1 %21, label %if.end35.loopexit.unr-lcssa, label %for.body.lr.ph.new

for.body.lr.ph.new:                               ; preds = %for.body.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph.new
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph.new ], [ %indvars.iv.next.1, %for.body ]
  %niter = phi i64 [ 0, %for.body.lr.ph.new ], [ %niter.next.1, %for.body ]
  %arrayidx27 = getelementptr inbounds ptr, ptr %12, i64 %indvars.iv
  %22 = load ptr, ptr %arrayidx27, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %22, ptr align 2 %arrayidx16, i64 %mul, i1 false)
  %arrayidx31 = getelementptr inbounds ptr, ptr %13, i64 %indvars.iv
  %23 = load ptr, ptr %arrayidx31, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %23, ptr align 2 %arrayidx24, i64 %mul, i1 false)
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1
  %arrayidx27.1 = getelementptr inbounds ptr, ptr %12, i64 %indvars.iv.next
  %24 = load ptr, ptr %arrayidx27.1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %24, ptr align 2 %arrayidx16, i64 %mul, i1 false)
  %arrayidx31.1 = getelementptr inbounds ptr, ptr %13, i64 %indvars.iv.next
  %25 = load ptr, ptr %arrayidx31.1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %25, ptr align 2 %arrayidx24, i64 %mul, i1 false)
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %if.end35.loopexit.unr-lcssa, label %for.body

if.end35.loopexit.unr-lcssa:                      ; preds = %for.body, %for.body.lr.ph
  %indvars.iv.unr = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next.1, %for.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %if.end35, label %for.body.epil

for.body.epil:                                    ; preds = %if.end35.loopexit.unr-lcssa
  %arrayidx27.epil = getelementptr inbounds ptr, ptr %12, i64 %indvars.iv.unr
  %26 = load ptr, ptr %arrayidx27.epil, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %26, ptr align 2 %arrayidx16, i64 %mul, i1 false)
  %arrayidx31.epil = getelementptr inbounds ptr, ptr %13, i64 %indvars.iv.unr
  %27 = load ptr, ptr %arrayidx31.epil, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %27, ptr align 2 %arrayidx24, i64 %mul, i1 false)
  br label %if.end35

if.end35:                                         ; preds = %for.body.epil, %if.end35.loopexit.unr-lcssa, %if.else8, %if.then7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %up) #5
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare void @getAffNeighbour(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @error(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @intrapred_chroma(ptr noundef %currMB) local_unnamed_addr #0 {
entry:
  %up.i53 = alloca %struct.pix_pos, align 4
  %up_left.i54 = alloca %struct.pix_pos, align 4
  %left.i55 = alloca %struct.pix_pos, align 4
  %up.i26 = alloca %struct.pix_pos, align 4
  %a.i = alloca %struct.pix_pos, align 4
  %up.i = alloca %struct.pix_pos, align 4
  %up_left.i = alloca %struct.pix_pos, align 4
  %left.i = alloca %struct.pix_pos, align 8
  %c_ipred_mode = getelementptr inbounds i8, ptr %currMB, i64 373
  %0 = load i8, ptr %c_ipred_mode, align 1
  switch i8 %0, label %sw.default [
    i8 0, label %sw.bb
    i8 1, label %sw.bb1
    i8 2, label %sw.bb2
    i8 3, label %sw.bb3
  ]

sw.bb:                                            ; preds = %entry
  %1 = load ptr, ptr %currMB, align 8
  %p_Vid1.i = getelementptr inbounds i8, ptr %currMB, i64 8
  %2 = load ptr, ptr %p_Vid1.i, align 8
  %dec_picture2.i = getelementptr inbounds i8, ptr %1, i64 13520
  %3 = load ptr, ptr %dec_picture2.i, align 8
  %chroma_format_idc.i = getelementptr inbounds i8, ptr %3, i64 268
  %4 = load i32, ptr %chroma_format_idc.i, align 4
  %sub.i = add nsw i32 %4, -1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %up.i) #5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %up_left.i) #5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %left.i) #5
  %imgUV.i = getelementptr inbounds i8, ptr %3, i64 136
  %5 = load ptr, ptr %imgUV.i, align 8
  %6 = load ptr, ptr %5, align 8
  %arrayidx4.i = getelementptr inbounds i8, ptr %5, i64 8
  %7 = load ptr, ptr %arrayidx4.i, align 8
  %mb_pred.i = getelementptr inbounds i8, ptr %1, i64 1248
  %8 = load ptr, ptr %mb_pred.i, align 8
  %arrayidx5.i = getelementptr inbounds i8, ptr %8, i64 8
  %9 = load ptr, ptr %arrayidx5.i, align 8
  %arrayidx7.i = getelementptr inbounds i8, ptr %8, i64 16
  %10 = load ptr, ptr %arrayidx7.i, align 8
  %arrayidx8.i = getelementptr inbounds i8, ptr %2, i64 849132
  call void @getNonAffNeighbour(ptr noundef nonnull %currMB, i32 noundef -1, i32 noundef -1, ptr noundef nonnull %arrayidx8.i, ptr noundef nonnull %up_left.i) #5
  call void @getNonAffNeighbour(ptr noundef nonnull %currMB, i32 noundef -1, i32 noundef 0, ptr noundef nonnull %arrayidx8.i, ptr noundef nonnull %left.i) #5
  call void @getNonAffNeighbour(ptr noundef nonnull %currMB, i32 noundef 0, i32 noundef -1, ptr noundef nonnull %arrayidx8.i, ptr noundef nonnull %up.i) #5
  %active_pps.i = getelementptr inbounds i8, ptr %2, i64 8
  %11 = load ptr, ptr %active_pps.i, align 8
  %constrained_intra_pred_flag.i = getelementptr inbounds i8, ptr %11, i64 2204
  %12 = load i32, ptr %constrained_intra_pred_flag.i, align 4
  %tobool.not.i = icmp eq i32 %12, 0
  %13 = load i32, ptr %up.i, align 4
  br i1 %tobool.not.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %sw.bb
  %14 = load i32, ptr %left.i, align 8
  br label %if.end.i

if.else.i:                                        ; preds = %sw.bb
  %tobool18.not.i = icmp eq i32 %13, 0
  br i1 %tobool18.not.i, label %cond.end.i, label %cond.true.i

cond.true.i:                                      ; preds = %if.else.i
  %intra_block.i = getelementptr inbounds i8, ptr %1, i64 13544
  %15 = load ptr, ptr %intra_block.i, align 8
  %mb_addr.i = getelementptr inbounds i8, ptr %up.i, i64 4
  %16 = load i32, ptr %mb_addr.i, align 4
  %idxprom.i = sext i32 %16 to i64
  %arrayidx19.i = getelementptr inbounds i8, ptr %15, i64 %idxprom.i
  %17 = load i8, ptr %arrayidx19.i, align 1
  %conv.i = sext i8 %17 to i32
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %if.else.i
  %cond.i = phi i32 [ %conv.i, %cond.true.i ], [ 0, %if.else.i ]
  %18 = load i32, ptr %left.i, align 8
  %tobool21.not.i = icmp eq i32 %18, 0
  br i1 %tobool21.not.i, label %if.end.i, label %cond.true22.i

cond.true22.i:                                    ; preds = %cond.end.i
  %intra_block23.i = getelementptr inbounds i8, ptr %1, i64 13544
  %19 = load ptr, ptr %intra_block23.i, align 8
  %mb_addr24.i = getelementptr inbounds i8, ptr %left.i, i64 4
  %20 = load i32, ptr %mb_addr24.i, align 4
  %idxprom25.i = sext i32 %20 to i64
  %arrayidx26.i = getelementptr inbounds i8, ptr %19, i64 %idxprom25.i
  %21 = load i8, ptr %arrayidx26.i, align 1
  %conv27.i = sext i8 %21 to i32
  br label %if.end.i

if.end.i:                                         ; preds = %cond.true22.i, %cond.end.i, %if.then.i
  %up_avail.0.i = phi i32 [ %13, %if.then.i ], [ %cond.i, %cond.end.i ], [ %cond.i, %cond.true22.i ]
  %left_avail.0.i = phi i32 [ %14, %if.then.i ], [ 0, %cond.end.i ], [ %conv27.i, %cond.true22.i ]
  %num_uv_blocks.i = getelementptr inbounds i8, ptr %2, i64 849100
  %22 = load i32, ptr %num_uv_blocks.i, align 4
  %cmp552.i = icmp sgt i32 %22, 0
  br i1 %cmp552.i, label %for.cond43.preheader.lr.ph.i, label %intrapred_chroma_dc.exit

for.cond43.preheader.lr.ph.i:                     ; preds = %if.end.i
  %idxprom47.i = sext i32 %sub.i to i64
  %arrayidx61.i = getelementptr inbounds i8, ptr %2, i64 849064
  %arrayidx63.i = getelementptr inbounds i8, ptr %2, i64 849068
  %23 = getelementptr inbounds i8, ptr %up.i, i64 8
  %24 = getelementptr inbounds i8, ptr %left.i, i64 12
  %25 = getelementptr inbounds i8, ptr %left.i, i64 14
  %tobool.not.i399.i = icmp eq i32 %up_avail.0.i, 0
  %tobool6.not.i419.i = icmp eq i32 %left_avail.0.i, 0
  %tobool1.i310.i = icmp ne i32 %up_avail.0.i, 0
  %or.cond46.i.i = and i1 %tobool1.i310.i, %tobool6.not.i419.i
  br label %for.cond43.preheader.i

for.cond43.preheader.i:                           ; preds = %sw.epilog.3.i, %for.cond43.preheader.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %for.cond43.preheader.lr.ph.i ], [ %indvars.iv.next611.i, %sw.epilog.3.i ]
  %arrayidx52.i = getelementptr inbounds [3 x [8 x [4 x i8]]], ptr @subblk_offset_y, i64 0, i64 %idxprom47.i, i64 %indvars.iv.i, i64 0
  %26 = load i8, ptr %arrayidx52.i, align 4
  %conv53.i = zext i8 %26 to i32
  %arrayidx59.i = getelementptr inbounds [3 x [8 x [4 x i8]]], ptr @subblk_offset_x, i64 0, i64 %idxprom47.i, i64 %indvars.iv.i, i64 0
  %27 = load i8, ptr %arrayidx59.i, align 4
  %conv60.i = zext i8 %27 to i32
  %28 = load i32, ptr %arrayidx61.i, align 4
  %29 = load i32, ptr %arrayidx63.i, align 4
  %arrayidx69.i = getelementptr inbounds [3 x [4 x [4 x i32]]], ptr @intrapred_chroma_dc.block_pos, i64 0, i64 %idxprom47.i, i64 %indvars.iv.i, i64 0
  %30 = load i32, ptr %arrayidx69.i, align 16
  switch i32 %30, label %sw.epilog.i [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb71.i
    i32 2, label %sw.bb74.i
    i32 3, label %sw.bb77.i
  ]

sw.bb.i:                                          ; preds = %for.cond43.preheader.i
  %add.i = add nuw nsw i32 %conv53.i, 1
  %31 = load i64, ptr %23, align 4
  %left.val185.i = load i16, ptr %24, align 4
  %left.val186.i = load i16, ptr %25, align 2
  br i1 %tobool.not.i399.i, label %if.end.thread.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %sw.bb.i
  %idxprom.i.i = ashr i64 %31, 48
  %arrayidx.i.i = getelementptr inbounds ptr, ptr %6, i64 %idxprom.i.i
  %32 = load ptr, ptr %arrayidx.i.i, align 8
  %sh.diff.i.i = lshr i64 %31, 16
  %tr.sh.diff.i.i = trunc i64 %sh.diff.i.i to i32
  %conv.i.i = ashr i32 %tr.sh.diff.i.i, 16
  %add.i.i = add nsw i32 %conv.i.i, %conv60.i
  %idxprom1.i.i = sext i32 %add.i.i to i64
  %arrayidx2.i.i = getelementptr inbounds i16, ptr %32, i64 %idxprom1.i.i
  %33 = load <4 x i16>, ptr %arrayidx2.i.i, align 2
  %34 = zext <4 x i16> %33 to <4 x i32>
  %35 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %34)
  br i1 %tobool6.not.i419.i, label %if.then34.i.i, label %if.then7.i.i

if.end.thread.i.i:                                ; preds = %sw.bb.i
  br i1 %tobool6.not.i419.i, label %sw.epilog.i, label %if.then7.i.i

if.then7.i.i:                                     ; preds = %if.end.thread.i.i, %if.then.i.i
  %s0.19.i.i = phi i32 [ 0, %if.end.thread.i.i ], [ %35, %if.then.i.i ]
  %conv10.i.i = sext i16 %left.val186.i to i32
  %add11.i.i = add nsw i32 %add.i, %conv10.i.i
  %36 = sext i32 %add11.i.i to i64
  %37 = getelementptr ptr, ptr %6, i64 %36
  %arrayidx13.i.i = getelementptr i8, ptr %37, i64 -8
  %idx.ext.i.i = sext i16 %left.val185.i to i64
  %38 = load ptr, ptr %arrayidx13.i.i, align 8
  %add.ptr.i.i = getelementptr inbounds i16, ptr %38, i64 %idx.ext.i.i
  %39 = load i16, ptr %add.ptr.i.i, align 2
  %conv22.i.i = zext i16 %39 to i32
  %incdec.ptr21.1.i.i = getelementptr inbounds i8, ptr %37, i64 8
  %40 = load ptr, ptr %37, align 8
  %add.ptr.1.i.i = getelementptr inbounds i16, ptr %40, i64 %idx.ext.i.i
  %41 = load i16, ptr %add.ptr.1.i.i, align 2
  %conv22.1.i.i = zext i16 %41 to i32
  %add23.1.i.i = add nuw nsw i32 %conv22.1.i.i, %conv22.i.i
  %incdec.ptr21.2.i.i = getelementptr inbounds i8, ptr %37, i64 16
  %42 = load ptr, ptr %incdec.ptr21.1.i.i, align 8
  %add.ptr.2.i.i = getelementptr inbounds i16, ptr %42, i64 %idx.ext.i.i
  %43 = load i16, ptr %add.ptr.2.i.i, align 2
  %conv22.2.i.i = zext i16 %43 to i32
  %add23.2.i.i = add nuw nsw i32 %add23.1.i.i, %conv22.2.i.i
  %44 = load ptr, ptr %incdec.ptr21.2.i.i, align 8
  %add.ptr.3.i.i = getelementptr inbounds i16, ptr %44, i64 %idx.ext.i.i
  %45 = load i16, ptr %add.ptr.3.i.i, align 2
  %conv22.3.i.i = zext i16 %45 to i32
  %add23.3.i.i = add nuw nsw i32 %add23.2.i.i, %conv22.3.i.i
  br i1 %tobool.not.i399.i, label %if.end.thread.i247.i, label %if.then30.i.i

if.then30.i.i:                                    ; preds = %if.then7.i.i
  %add31.i.i = add nuw nsw i32 %s0.19.i.i, 4
  %add32.i.i = add nuw nsw i32 %add31.i.i, %add23.3.i.i
  %shr.i.i = lshr i32 %add32.i.i, 3
  %.pre613.i = ashr i64 %31, 48
  %.pre650.i = lshr i64 %31, 16
  %.pre651.i = trunc i64 %.pre650.i to i32
  %.pre652.i = ashr i32 %.pre651.i, 16
  %.pre653.i = add nsw i32 %.pre652.i, %conv60.i
  %.pre654.i = sext i32 %.pre653.i to i64
  br label %if.then.i196.i

if.then34.i.i:                                    ; preds = %if.then.i.i
  %add35.i.i = add nuw nsw i32 %35, 2
  %shr36.i.i = lshr i32 %add35.i.i, 2
  br label %if.then.i196.i

if.then.i196.i:                                   ; preds = %if.then34.i.i, %if.then30.i.i
  %idxprom1.i203.pre-phi.i = phi i64 [ %idxprom1.i.i, %if.then34.i.i ], [ %.pre654.i, %if.then30.i.i ]
  %idxprom.i197.pre-phi.i = phi i64 [ %idxprom.i.i, %if.then34.i.i ], [ %.pre613.i, %if.then30.i.i ]
  %pred.0.i = phi i32 [ %shr36.i.i, %if.then34.i.i ], [ %shr.i.i, %if.then30.i.i ]
  %arrayidx.i198.i = getelementptr inbounds ptr, ptr %7, i64 %idxprom.i197.pre-phi.i
  %46 = load ptr, ptr %arrayidx.i198.i, align 8
  %arrayidx2.i204.i = getelementptr inbounds i16, ptr %46, i64 %idxprom1.i203.pre-phi.i
  %incdec.ptr.i205.i = getelementptr inbounds i8, ptr %arrayidx2.i204.i, i64 2
  %47 = load i16, ptr %arrayidx2.i204.i, align 2
  %conv4.i206.i = zext i16 %47 to i32
  %incdec.ptr.1.i207.i = getelementptr inbounds i8, ptr %arrayidx2.i204.i, i64 4
  %48 = load i16, ptr %incdec.ptr.i205.i, align 2
  %conv4.1.i208.i = zext i16 %48 to i32
  %add5.1.i209.i = add nuw nsw i32 %conv4.1.i208.i, %conv4.i206.i
  %incdec.ptr.2.i210.i = getelementptr inbounds i8, ptr %arrayidx2.i204.i, i64 6
  %49 = load i16, ptr %incdec.ptr.1.i207.i, align 2
  %conv4.2.i211.i = zext i16 %49 to i32
  %add5.2.i212.i = add nuw nsw i32 %add5.1.i209.i, %conv4.2.i211.i
  %50 = load i16, ptr %incdec.ptr.2.i210.i, align 2
  %conv4.3.i213.i = zext i16 %50 to i32
  %add5.3.i214.i = add nuw nsw i32 %add5.2.i212.i, %conv4.3.i213.i
  br i1 %tobool6.not.i419.i, label %if.then34.i244.i, label %if.then.i196.if.then7.i216_crit_edge.i

if.then.i196.if.then7.i216_crit_edge.i:           ; preds = %if.then.i196.i
  %.pre689.i = sext i16 %left.val186.i to i32
  %.pre690.i = add nsw i32 %add.i, %.pre689.i
  %.pre691.i = sext i32 %.pre690.i to i64
  %.pre693.i = sext i16 %left.val185.i to i64
  br label %if.then7.i216.i

if.end.thread.i247.i:                             ; preds = %if.then7.i.i
  %add40.i.i = add nuw nsw i32 %add23.3.i.i, 2
  %shr41.i.i = lshr i32 %add40.i.i, 2
  br label %if.then7.i216.i

if.then7.i216.i:                                  ; preds = %if.end.thread.i247.i, %if.then.i196.if.then7.i216_crit_edge.i
  %idx.ext.i221.pre-phi.i = phi i64 [ %.pre693.i, %if.then.i196.if.then7.i216_crit_edge.i ], [ %idx.ext.i.i, %if.end.thread.i247.i ]
  %.pre-phi692.i = phi i64 [ %.pre691.i, %if.then.i196.if.then7.i216_crit_edge.i ], [ %36, %if.end.thread.i247.i ]
  %pred.0512.i = phi i32 [ %pred.0.i, %if.then.i196.if.then7.i216_crit_edge.i ], [ %shr41.i.i, %if.end.thread.i247.i ]
  %s0.19.i217.i = phi i32 [ %add5.3.i214.i, %if.then.i196.if.then7.i216_crit_edge.i ], [ 0, %if.end.thread.i247.i ]
  %51 = getelementptr ptr, ptr %7, i64 %.pre-phi692.i
  %arrayidx13.i220.i = getelementptr i8, ptr %51, i64 -8
  %52 = load ptr, ptr %arrayidx13.i220.i, align 8
  %add.ptr.i222.i = getelementptr inbounds i16, ptr %52, i64 %idx.ext.i221.pre-phi.i
  %53 = load i16, ptr %add.ptr.i222.i, align 2
  %conv22.i223.i = zext i16 %53 to i32
  %incdec.ptr21.1.i224.i = getelementptr inbounds i8, ptr %51, i64 8
  %54 = load ptr, ptr %51, align 8
  %add.ptr.1.i225.i = getelementptr inbounds i16, ptr %54, i64 %idx.ext.i221.pre-phi.i
  %55 = load i16, ptr %add.ptr.1.i225.i, align 2
  %conv22.1.i226.i = zext i16 %55 to i32
  %add23.1.i227.i = add nuw nsw i32 %conv22.1.i226.i, %conv22.i223.i
  %incdec.ptr21.2.i228.i = getelementptr inbounds i8, ptr %51, i64 16
  %56 = load ptr, ptr %incdec.ptr21.1.i224.i, align 8
  %add.ptr.2.i229.i = getelementptr inbounds i16, ptr %56, i64 %idx.ext.i221.pre-phi.i
  %57 = load i16, ptr %add.ptr.2.i229.i, align 2
  %conv22.2.i230.i = zext i16 %57 to i32
  %add23.2.i231.i = add nuw nsw i32 %add23.1.i227.i, %conv22.2.i230.i
  %58 = load ptr, ptr %incdec.ptr21.2.i228.i, align 8
  %add.ptr.3.i232.i = getelementptr inbounds i16, ptr %58, i64 %idx.ext.i221.pre-phi.i
  %59 = load i16, ptr %add.ptr.3.i232.i, align 2
  %conv22.3.i233.i = zext i16 %59 to i32
  %add23.3.i234.i = add nuw nsw i32 %add23.2.i231.i, %conv22.3.i233.i
  br i1 %tobool.not.i399.i, label %if.then39.i241.i, label %if.then30.i235.i

if.then30.i235.i:                                 ; preds = %if.then7.i216.i
  %add31.i236.i = add nuw nsw i32 %s0.19.i217.i, 4
  %add32.i237.i = add nuw nsw i32 %add31.i236.i, %add23.3.i234.i
  %shr.i238.i = lshr i32 %add32.i237.i, 3
  br label %sw.epilog.i

if.then34.i244.i:                                 ; preds = %if.then.i196.i
  %add35.i245.i = add nuw nsw i32 %add5.3.i214.i, 2
  %shr36.i246.i = lshr i32 %add35.i245.i, 2
  br label %sw.epilog.i

if.then39.i241.i:                                 ; preds = %if.then7.i216.i
  %add40.i242.i = add nuw nsw i32 %add23.3.i234.i, 2
  %shr41.i243.i = lshr i32 %add40.i242.i, 2
  br label %sw.epilog.i

sw.bb71.i:                                        ; preds = %for.cond43.preheader.i
  %add72.i = add nuw nsw i32 %conv53.i, 1
  %left.val193.i = load i16, ptr %24, align 4
  %left.val194.i = load i16, ptr %25, align 2
  br i1 %tobool.not.i399.i, label %if.else.i.i, label %if.then.i292.i

if.else.i.i:                                      ; preds = %sw.bb71.i
  br i1 %tobool6.not.i419.i, label %sw.epilog.i, label %if.then12.i269.i

if.then.i292.i:                                   ; preds = %sw.bb71.i
  %60 = load i64, ptr %23, align 4
  %idxprom.i257.i = ashr i64 %60, 48
  %arrayidx.i258.i = getelementptr inbounds ptr, ptr %6, i64 %idxprom.i257.i
  %61 = load ptr, ptr %arrayidx.i258.i, align 8
  %sh.diff.i259.i = lshr i64 %60, 16
  %tr.sh.diff.i260.i = trunc i64 %sh.diff.i259.i to i32
  %conv.i261.i = ashr i32 %tr.sh.diff.i260.i, 16
  %add.i262.i = add nsw i32 %conv.i261.i, %conv60.i
  %idxprom5.i.i = sext i32 %add.i262.i to i64
  %arrayidx6.i.i = getelementptr inbounds i16, ptr %61, i64 %idxprom5.i.i
  %62 = load <4 x i16>, ptr %arrayidx6.i.i, align 2
  %63 = zext <4 x i16> %62 to <4 x i32>
  %64 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %63)
  %arrayidx.i294.i = getelementptr inbounds ptr, ptr %7, i64 %idxprom.i257.i
  %65 = load ptr, ptr %arrayidx.i294.i, align 8
  %arrayidx6.i300.i = getelementptr inbounds i16, ptr %65, i64 %idxprom5.i.i
  %incdec.ptr.i301.i = getelementptr inbounds i8, ptr %arrayidx6.i300.i, i64 2
  %66 = load i16, ptr %arrayidx6.i300.i, align 2
  %conv8.i302.i = zext i16 %66 to i32
  %incdec.ptr.1.i303.i = getelementptr inbounds i8, ptr %arrayidx6.i300.i, i64 4
  %67 = load i16, ptr %incdec.ptr.i301.i, align 2
  %conv8.1.i304.i = zext i16 %67 to i32
  %add9.1.i305.i = add nuw nsw i32 %conv8.1.i304.i, %conv8.i302.i
  %incdec.ptr.2.i306.i = getelementptr inbounds i8, ptr %arrayidx6.i300.i, i64 6
  %68 = load i16, ptr %incdec.ptr.1.i303.i, align 2
  %conv8.2.i307.i = zext i16 %68 to i32
  %add9.2.i308.i = add nuw nsw i32 %add9.1.i305.i, %conv8.2.i307.i
  br label %if.end34.sink.split.i285.i

if.then12.i269.i:                                 ; preds = %if.else.i.i
  %conv15.i.i = sext i16 %left.val194.i to i32
  %add16.i.i = add nsw i32 %add72.i, %conv15.i.i
  %69 = sext i32 %add16.i.i to i64
  %70 = getelementptr ptr, ptr %6, i64 %69
  %arrayidx18.i.i = getelementptr i8, ptr %70, i64 -8
  %idx.ext.i250.i = sext i16 %left.val193.i to i64
  %71 = load ptr, ptr %arrayidx18.i.i, align 8
  %add.ptr.i251.i = getelementptr inbounds i16, ptr %71, i64 %idx.ext.i250.i
  %72 = load i16, ptr %add.ptr.i251.i, align 2
  %conv27.i.i = zext i16 %72 to i32
  %incdec.ptr26.1.i.i = getelementptr inbounds i8, ptr %70, i64 8
  %73 = load ptr, ptr %70, align 8
  %add.ptr.1.i252.i = getelementptr inbounds i16, ptr %73, i64 %idx.ext.i250.i
  %74 = load i16, ptr %add.ptr.1.i252.i, align 2
  %conv27.1.i.i = zext i16 %74 to i32
  %add28.1.i.i = add nuw nsw i32 %conv27.1.i.i, %conv27.i.i
  %incdec.ptr26.2.i.i = getelementptr inbounds i8, ptr %70, i64 16
  %75 = load ptr, ptr %incdec.ptr26.1.i.i, align 8
  %add.ptr.2.i253.i = getelementptr inbounds i16, ptr %75, i64 %idx.ext.i250.i
  %76 = load i16, ptr %add.ptr.2.i253.i, align 2
  %conv27.2.i.i = zext i16 %76 to i32
  %add28.2.i.i = add nuw nsw i32 %add28.1.i.i, %conv27.2.i.i
  %77 = load ptr, ptr %incdec.ptr26.2.i.i, align 8
  %add.ptr.3.i254.i = getelementptr inbounds i16, ptr %77, i64 %idx.ext.i250.i
  %78 = load i16, ptr %add.ptr.3.i254.i, align 2
  %conv27.3.i.i = zext i16 %78 to i32
  %add28.3.i.i = add nuw nsw i32 %add28.2.i.i, %conv27.3.i.i
  %79 = getelementptr ptr, ptr %7, i64 %69
  %arrayidx18.i272.i = getelementptr i8, ptr %79, i64 -8
  %80 = load ptr, ptr %arrayidx18.i272.i, align 8
  %add.ptr.i274.i = getelementptr inbounds i16, ptr %80, i64 %idx.ext.i250.i
  %81 = load i16, ptr %add.ptr.i274.i, align 2
  %conv27.i275.i = zext i16 %81 to i32
  %incdec.ptr26.1.i276.i = getelementptr inbounds i8, ptr %79, i64 8
  %82 = load ptr, ptr %79, align 8
  %add.ptr.1.i277.i = getelementptr inbounds i16, ptr %82, i64 %idx.ext.i250.i
  %83 = load i16, ptr %add.ptr.1.i277.i, align 2
  %conv27.1.i278.i = zext i16 %83 to i32
  %add28.1.i279.i = add nuw nsw i32 %conv27.1.i278.i, %conv27.i275.i
  %incdec.ptr26.2.i280.i = getelementptr inbounds i8, ptr %79, i64 16
  %84 = load ptr, ptr %incdec.ptr26.1.i276.i, align 8
  %add.ptr.2.i281.i = getelementptr inbounds i16, ptr %84, i64 %idx.ext.i250.i
  %85 = load i16, ptr %add.ptr.2.i281.i, align 2
  %conv27.2.i282.i = zext i16 %85 to i32
  %add28.2.i283.i = add nuw nsw i32 %add28.1.i279.i, %conv27.2.i282.i
  %86 = load ptr, ptr %incdec.ptr26.2.i280.i, align 8
  %add.ptr.3.i284.i = getelementptr inbounds i16, ptr %86, i64 %idx.ext.i250.i
  br label %if.end34.sink.split.i285.i

if.end34.sink.split.i285.i:                       ; preds = %if.then12.i269.i, %if.then.i292.i
  %pred.1517.in.in.i = phi i32 [ %add28.3.i.i, %if.then12.i269.i ], [ %64, %if.then.i292.i ]
  %add.ptr.3.sink.i286.i = phi ptr [ %add.ptr.3.i284.i, %if.then12.i269.i ], [ %incdec.ptr.2.i306.i, %if.then.i292.i ]
  %add28.2.sink.i287.i = phi i32 [ %add28.2.i283.i, %if.then12.i269.i ], [ %add9.2.i308.i, %if.then.i292.i ]
  %pred.1517.in.i = add nuw nsw i32 %pred.1517.in.in.i, 2
  %pred.1517.i = lshr i32 %pred.1517.in.i, 2
  %87 = load i16, ptr %add.ptr.3.sink.i286.i, align 2
  %conv27.3.i288.i = zext i16 %87 to i32
  %add28.3.i289.i = add nuw nsw i32 %add28.2.sink.i287.i, 2
  %add32.i290.i = add nuw nsw i32 %add28.3.i289.i, %conv27.3.i288.i
  %shr33.i291.i = lshr i32 %add32.i290.i, 2
  br label %sw.epilog.i

sw.bb74.i:                                        ; preds = %for.cond43.preheader.i
  %add75.i = add nuw nsw i32 %conv53.i, 1
  %left.val189.i = load i16, ptr %24, align 4
  %left.val190.i = load i16, ptr %25, align 2
  br i1 %or.cond46.i.i, label %if.then.i381.i, label %if.else.i312.i

if.else.i312.i:                                   ; preds = %sw.bb74.i
  br i1 %tobool6.not.i419.i, label %sw.epilog.i, label %if.then12.i358.i

if.then.i381.i:                                   ; preds = %sw.bb74.i
  %88 = load i64, ptr %23, align 4
  %idxprom.i337.i = ashr i64 %88, 48
  %arrayidx.i338.i = getelementptr inbounds ptr, ptr %6, i64 %idxprom.i337.i
  %89 = load ptr, ptr %arrayidx.i338.i, align 8
  %sh.diff.i339.i = lshr i64 %88, 16
  %tr.sh.diff.i340.i = trunc i64 %sh.diff.i339.i to i32
  %conv.i341.i = ashr i32 %tr.sh.diff.i340.i, 16
  %add.i342.i = add nsw i32 %conv.i341.i, %conv60.i
  %idxprom5.i343.i = sext i32 %add.i342.i to i64
  %arrayidx6.i344.i = getelementptr inbounds i16, ptr %89, i64 %idxprom5.i343.i
  %90 = load <4 x i16>, ptr %arrayidx6.i344.i, align 2
  %91 = zext <4 x i16> %90 to <4 x i32>
  %92 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %91)
  %arrayidx.i383.i = getelementptr inbounds ptr, ptr %7, i64 %idxprom.i337.i
  %93 = load ptr, ptr %arrayidx.i383.i, align 8
  %arrayidx6.i389.i = getelementptr inbounds i16, ptr %93, i64 %idxprom5.i343.i
  %incdec.ptr.i390.i = getelementptr inbounds i8, ptr %arrayidx6.i389.i, i64 2
  %94 = load i16, ptr %arrayidx6.i389.i, align 2
  %conv8.i391.i = zext i16 %94 to i32
  %incdec.ptr.1.i392.i = getelementptr inbounds i8, ptr %arrayidx6.i389.i, i64 4
  %95 = load i16, ptr %incdec.ptr.i390.i, align 2
  %conv8.1.i393.i = zext i16 %95 to i32
  %add9.1.i394.i = add nuw nsw i32 %conv8.1.i393.i, %conv8.i391.i
  %incdec.ptr.2.i395.i = getelementptr inbounds i8, ptr %arrayidx6.i389.i, i64 6
  %96 = load i16, ptr %incdec.ptr.1.i392.i, align 2
  %conv8.2.i396.i = zext i16 %96 to i32
  %add9.2.i397.i = add nuw nsw i32 %add9.1.i394.i, %conv8.2.i396.i
  br label %if.end34.sink.split.i374.i

if.then12.i358.i:                                 ; preds = %if.else.i312.i
  %conv15.i314.i = sext i16 %left.val190.i to i32
  %add16.i315.i = add nsw i32 %add75.i, %conv15.i314.i
  %97 = sext i32 %add16.i315.i to i64
  %98 = getelementptr ptr, ptr %6, i64 %97
  %arrayidx18.i316.i = getelementptr i8, ptr %98, i64 -8
  %idx.ext.i317.i = sext i16 %left.val189.i to i64
  %99 = load ptr, ptr %arrayidx18.i316.i, align 8
  %add.ptr.i318.i = getelementptr inbounds i16, ptr %99, i64 %idx.ext.i317.i
  %100 = load i16, ptr %add.ptr.i318.i, align 2
  %conv27.i319.i = zext i16 %100 to i32
  %incdec.ptr26.1.i320.i = getelementptr inbounds i8, ptr %98, i64 8
  %101 = load ptr, ptr %98, align 8
  %add.ptr.1.i321.i = getelementptr inbounds i16, ptr %101, i64 %idx.ext.i317.i
  %102 = load i16, ptr %add.ptr.1.i321.i, align 2
  %conv27.1.i322.i = zext i16 %102 to i32
  %add28.1.i323.i = add nuw nsw i32 %conv27.1.i322.i, %conv27.i319.i
  %incdec.ptr26.2.i324.i = getelementptr inbounds i8, ptr %98, i64 16
  %103 = load ptr, ptr %incdec.ptr26.1.i320.i, align 8
  %add.ptr.2.i325.i = getelementptr inbounds i16, ptr %103, i64 %idx.ext.i317.i
  %104 = load i16, ptr %add.ptr.2.i325.i, align 2
  %conv27.2.i326.i = zext i16 %104 to i32
  %add28.2.i327.i = add nuw nsw i32 %add28.1.i323.i, %conv27.2.i326.i
  %105 = load ptr, ptr %incdec.ptr26.2.i324.i, align 8
  %add.ptr.3.i328.i = getelementptr inbounds i16, ptr %105, i64 %idx.ext.i317.i
  %106 = load i16, ptr %add.ptr.3.i328.i, align 2
  %conv27.3.i332.i = zext i16 %106 to i32
  %add28.3.i333.i = add nuw nsw i32 %add28.2.i327.i, %conv27.3.i332.i
  %107 = getelementptr ptr, ptr %7, i64 %97
  %arrayidx18.i361.i = getelementptr i8, ptr %107, i64 -8
  %108 = load ptr, ptr %arrayidx18.i361.i, align 8
  %add.ptr.i363.i = getelementptr inbounds i16, ptr %108, i64 %idx.ext.i317.i
  %109 = load i16, ptr %add.ptr.i363.i, align 2
  %conv27.i364.i = zext i16 %109 to i32
  %incdec.ptr26.1.i365.i = getelementptr inbounds i8, ptr %107, i64 8
  %110 = load ptr, ptr %107, align 8
  %add.ptr.1.i366.i = getelementptr inbounds i16, ptr %110, i64 %idx.ext.i317.i
  %111 = load i16, ptr %add.ptr.1.i366.i, align 2
  %conv27.1.i367.i = zext i16 %111 to i32
  %add28.1.i368.i = add nuw nsw i32 %conv27.1.i367.i, %conv27.i364.i
  %incdec.ptr26.2.i369.i = getelementptr inbounds i8, ptr %107, i64 16
  %112 = load ptr, ptr %incdec.ptr26.1.i365.i, align 8
  %add.ptr.2.i370.i = getelementptr inbounds i16, ptr %112, i64 %idx.ext.i317.i
  %113 = load i16, ptr %add.ptr.2.i370.i, align 2
  %conv27.2.i371.i = zext i16 %113 to i32
  %add28.2.i372.i = add nuw nsw i32 %add28.1.i368.i, %conv27.2.i371.i
  %114 = load ptr, ptr %incdec.ptr26.2.i369.i, align 8
  %add.ptr.3.i373.i = getelementptr inbounds i16, ptr %114, i64 %idx.ext.i317.i
  br label %if.end34.sink.split.i374.i

if.end34.sink.split.i374.i:                       ; preds = %if.then12.i358.i, %if.then.i381.i
  %pred.2530.in.in.i = phi i32 [ %add28.3.i333.i, %if.then12.i358.i ], [ %92, %if.then.i381.i ]
  %add.ptr.3.sink.i375.i = phi ptr [ %add.ptr.3.i373.i, %if.then12.i358.i ], [ %incdec.ptr.2.i395.i, %if.then.i381.i ]
  %add28.2.sink.i376.i = phi i32 [ %add28.2.i372.i, %if.then12.i358.i ], [ %add9.2.i397.i, %if.then.i381.i ]
  %pred.2530.in.i = add nuw nsw i32 %pred.2530.in.in.i, 2
  %pred.2530.i = lshr i32 %pred.2530.in.i, 2
  %115 = load i16, ptr %add.ptr.3.sink.i375.i, align 2
  %conv27.3.i377.i = zext i16 %115 to i32
  %add28.3.i378.i = add nuw nsw i32 %add28.2.sink.i376.i, 2
  %add32.i379.i = add nuw nsw i32 %add28.3.i378.i, %conv27.3.i377.i
  %shr33.i380.i = lshr i32 %add32.i379.i, 2
  br label %sw.epilog.i

sw.bb77.i:                                        ; preds = %for.cond43.preheader.i
  %add78.i = add nuw nsw i32 %conv53.i, 1
  %116 = load i64, ptr %23, align 4
  %left.val181.i = load i16, ptr %24, align 4
  %left.val182.i = load i16, ptr %25, align 2
  br i1 %tobool.not.i399.i, label %if.end.thread.i451.i, label %if.then.i400.i

if.then.i400.i:                                   ; preds = %sw.bb77.i
  %idxprom.i401.i = ashr i64 %116, 48
  %arrayidx.i402.i = getelementptr inbounds ptr, ptr %6, i64 %idxprom.i401.i
  %117 = load ptr, ptr %arrayidx.i402.i, align 8
  %sh.diff.i403.i = lshr i64 %116, 16
  %tr.sh.diff.i404.i = trunc i64 %sh.diff.i403.i to i32
  %conv.i405.i = ashr i32 %tr.sh.diff.i404.i, 16
  %add.i406.i = add nsw i32 %conv.i405.i, %conv60.i
  %idxprom1.i407.i = sext i32 %add.i406.i to i64
  %arrayidx2.i408.i = getelementptr inbounds i16, ptr %117, i64 %idxprom1.i407.i
  %118 = load <4 x i16>, ptr %arrayidx2.i408.i, align 2
  %119 = zext <4 x i16> %118 to <4 x i32>
  %120 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %119)
  br i1 %tobool6.not.i419.i, label %if.then34.i448.i, label %if.then7.i420.i

if.end.thread.i451.i:                             ; preds = %sw.bb77.i
  br i1 %tobool6.not.i419.i, label %sw.epilog.i, label %if.then7.i420.i

if.then7.i420.i:                                  ; preds = %if.end.thread.i451.i, %if.then.i400.i
  %s0.19.i421.i = phi i32 [ 0, %if.end.thread.i451.i ], [ %120, %if.then.i400.i ]
  %conv10.i422.i = sext i16 %left.val182.i to i32
  %add11.i423.i = add nsw i32 %add78.i, %conv10.i422.i
  %121 = sext i32 %add11.i423.i to i64
  %122 = getelementptr ptr, ptr %6, i64 %121
  %arrayidx13.i424.i = getelementptr i8, ptr %122, i64 -8
  %idx.ext.i425.i = sext i16 %left.val181.i to i64
  %123 = load ptr, ptr %arrayidx13.i424.i, align 8
  %add.ptr.i426.i = getelementptr inbounds i16, ptr %123, i64 %idx.ext.i425.i
  %124 = load i16, ptr %add.ptr.i426.i, align 2
  %conv22.i427.i = zext i16 %124 to i32
  %incdec.ptr21.1.i428.i = getelementptr inbounds i8, ptr %122, i64 8
  %125 = load ptr, ptr %122, align 8
  %add.ptr.1.i429.i = getelementptr inbounds i16, ptr %125, i64 %idx.ext.i425.i
  %126 = load i16, ptr %add.ptr.1.i429.i, align 2
  %conv22.1.i430.i = zext i16 %126 to i32
  %add23.1.i431.i = add nuw nsw i32 %conv22.1.i430.i, %conv22.i427.i
  %incdec.ptr21.2.i432.i = getelementptr inbounds i8, ptr %122, i64 16
  %127 = load ptr, ptr %incdec.ptr21.1.i428.i, align 8
  %add.ptr.2.i433.i = getelementptr inbounds i16, ptr %127, i64 %idx.ext.i425.i
  %128 = load i16, ptr %add.ptr.2.i433.i, align 2
  %conv22.2.i434.i = zext i16 %128 to i32
  %add23.2.i435.i = add nuw nsw i32 %add23.1.i431.i, %conv22.2.i434.i
  %129 = load ptr, ptr %incdec.ptr21.2.i432.i, align 8
  %add.ptr.3.i436.i = getelementptr inbounds i16, ptr %129, i64 %idx.ext.i425.i
  %130 = load i16, ptr %add.ptr.3.i436.i, align 2
  %conv22.3.i437.i = zext i16 %130 to i32
  %add23.3.i438.i = add nuw nsw i32 %add23.2.i435.i, %conv22.3.i437.i
  br i1 %tobool.not.i399.i, label %if.end.thread.i506.i, label %if.then30.i439.i

if.then30.i439.i:                                 ; preds = %if.then7.i420.i
  %add31.i440.i = add nuw nsw i32 %s0.19.i421.i, 4
  %add32.i441.i = add nuw nsw i32 %add31.i440.i, %add23.3.i438.i
  %shr.i442.i = lshr i32 %add32.i441.i, 3
  %.pre.i = ashr i64 %116, 48
  %.pre655.i = lshr i64 %116, 16
  %.pre656.i = trunc i64 %.pre655.i to i32
  %.pre657.i = ashr i32 %.pre656.i, 16
  %.pre658.i = add nsw i32 %.pre657.i, %conv60.i
  %.pre659.i = sext i32 %.pre658.i to i64
  br label %if.then.i455.i

if.then34.i448.i:                                 ; preds = %if.then.i400.i
  %add35.i449.i = add nuw nsw i32 %120, 2
  %shr36.i450.i = lshr i32 %add35.i449.i, 2
  br label %if.then.i455.i

if.then.i455.i:                                   ; preds = %if.then34.i448.i, %if.then30.i439.i
  %idxprom1.i462.pre-phi.i = phi i64 [ %idxprom1.i407.i, %if.then34.i448.i ], [ %.pre659.i, %if.then30.i439.i ]
  %idxprom.i456.pre-phi.i = phi i64 [ %idxprom.i401.i, %if.then34.i448.i ], [ %.pre.i, %if.then30.i439.i ]
  %pred.3.i = phi i32 [ %shr36.i450.i, %if.then34.i448.i ], [ %shr.i442.i, %if.then30.i439.i ]
  %arrayidx.i457.i = getelementptr inbounds ptr, ptr %7, i64 %idxprom.i456.pre-phi.i
  %131 = load ptr, ptr %arrayidx.i457.i, align 8
  %arrayidx2.i463.i = getelementptr inbounds i16, ptr %131, i64 %idxprom1.i462.pre-phi.i
  %incdec.ptr.i464.i = getelementptr inbounds i8, ptr %arrayidx2.i463.i, i64 2
  %132 = load i16, ptr %arrayidx2.i463.i, align 2
  %conv4.i465.i = zext i16 %132 to i32
  %incdec.ptr.1.i466.i = getelementptr inbounds i8, ptr %arrayidx2.i463.i, i64 4
  %133 = load i16, ptr %incdec.ptr.i464.i, align 2
  %conv4.1.i467.i = zext i16 %133 to i32
  %add5.1.i468.i = add nuw nsw i32 %conv4.1.i467.i, %conv4.i465.i
  %incdec.ptr.2.i469.i = getelementptr inbounds i8, ptr %arrayidx2.i463.i, i64 6
  %134 = load i16, ptr %incdec.ptr.1.i466.i, align 2
  %conv4.2.i470.i = zext i16 %134 to i32
  %add5.2.i471.i = add nuw nsw i32 %add5.1.i468.i, %conv4.2.i470.i
  %135 = load i16, ptr %incdec.ptr.2.i469.i, align 2
  %conv4.3.i472.i = zext i16 %135 to i32
  %add5.3.i473.i = add nuw nsw i32 %add5.2.i471.i, %conv4.3.i472.i
  br i1 %tobool6.not.i419.i, label %if.then34.i503.i, label %if.then.i455.if.then7.i475_crit_edge.i

if.then.i455.if.then7.i475_crit_edge.i:           ; preds = %if.then.i455.i
  %.pre694.i = sext i16 %left.val182.i to i32
  %.pre695.i = add nsw i32 %add78.i, %.pre694.i
  %.pre696.i = sext i32 %.pre695.i to i64
  %.pre698.i = sext i16 %left.val181.i to i64
  br label %if.then7.i475.i

if.end.thread.i506.i:                             ; preds = %if.then7.i420.i
  %add40.i446.i = add nuw nsw i32 %add23.3.i438.i, 2
  %shr41.i447.i = lshr i32 %add40.i446.i, 2
  br label %if.then7.i475.i

if.then7.i475.i:                                  ; preds = %if.end.thread.i506.i, %if.then.i455.if.then7.i475_crit_edge.i
  %idx.ext.i480.pre-phi.i = phi i64 [ %.pre698.i, %if.then.i455.if.then7.i475_crit_edge.i ], [ %idx.ext.i425.i, %if.end.thread.i506.i ]
  %.pre-phi697.i = phi i64 [ %.pre696.i, %if.then.i455.if.then7.i475_crit_edge.i ], [ %121, %if.end.thread.i506.i ]
  %pred.3545.i = phi i32 [ %pred.3.i, %if.then.i455.if.then7.i475_crit_edge.i ], [ %shr41.i447.i, %if.end.thread.i506.i ]
  %s0.19.i476.i = phi i32 [ %add5.3.i473.i, %if.then.i455.if.then7.i475_crit_edge.i ], [ 0, %if.end.thread.i506.i ]
  %136 = getelementptr ptr, ptr %7, i64 %.pre-phi697.i
  %arrayidx13.i479.i = getelementptr i8, ptr %136, i64 -8
  %137 = load ptr, ptr %arrayidx13.i479.i, align 8
  %add.ptr.i481.i = getelementptr inbounds i16, ptr %137, i64 %idx.ext.i480.pre-phi.i
  %138 = load i16, ptr %add.ptr.i481.i, align 2
  %conv22.i482.i = zext i16 %138 to i32
  %incdec.ptr21.1.i483.i = getelementptr inbounds i8, ptr %136, i64 8
  %139 = load ptr, ptr %136, align 8
  %add.ptr.1.i484.i = getelementptr inbounds i16, ptr %139, i64 %idx.ext.i480.pre-phi.i
  %140 = load i16, ptr %add.ptr.1.i484.i, align 2
  %conv22.1.i485.i = zext i16 %140 to i32
  %add23.1.i486.i = add nuw nsw i32 %conv22.1.i485.i, %conv22.i482.i
  %incdec.ptr21.2.i487.i = getelementptr inbounds i8, ptr %136, i64 16
  %141 = load ptr, ptr %incdec.ptr21.1.i483.i, align 8
  %add.ptr.2.i488.i = getelementptr inbounds i16, ptr %141, i64 %idx.ext.i480.pre-phi.i
  %142 = load i16, ptr %add.ptr.2.i488.i, align 2
  %conv22.2.i489.i = zext i16 %142 to i32
  %add23.2.i490.i = add nuw nsw i32 %add23.1.i486.i, %conv22.2.i489.i
  %143 = load ptr, ptr %incdec.ptr21.2.i487.i, align 8
  %add.ptr.3.i491.i = getelementptr inbounds i16, ptr %143, i64 %idx.ext.i480.pre-phi.i
  %144 = load i16, ptr %add.ptr.3.i491.i, align 2
  %conv22.3.i492.i = zext i16 %144 to i32
  %add23.3.i493.i = add nuw nsw i32 %add23.2.i490.i, %conv22.3.i492.i
  br i1 %tobool.not.i399.i, label %if.then39.i500.i, label %if.then30.i494.i

if.then30.i494.i:                                 ; preds = %if.then7.i475.i
  %add31.i495.i = add nuw nsw i32 %s0.19.i476.i, 4
  %add32.i496.i = add nuw nsw i32 %add31.i495.i, %add23.3.i493.i
  %shr.i497.i = lshr i32 %add32.i496.i, 3
  br label %sw.epilog.i

if.then34.i503.i:                                 ; preds = %if.then.i455.i
  %add35.i504.i = add nuw nsw i32 %add5.3.i473.i, 2
  %shr36.i505.i = lshr i32 %add35.i504.i, 2
  br label %sw.epilog.i

if.then39.i500.i:                                 ; preds = %if.then7.i475.i
  %add40.i501.i = add nuw nsw i32 %add23.3.i493.i, 2
  %shr41.i502.i = lshr i32 %add40.i501.i, 2
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %if.then39.i500.i, %if.then34.i503.i, %if.then30.i494.i, %if.end.thread.i451.i, %if.end34.sink.split.i374.i, %if.else.i312.i, %if.end34.sink.split.i285.i, %if.else.i.i, %if.then39.i241.i, %if.then34.i244.i, %if.then30.i235.i, %if.end.thread.i.i, %for.cond43.preheader.i
  %pred.4.i = phi i32 [ %28, %for.cond43.preheader.i ], [ %pred.0.i, %if.then34.i244.i ], [ %pred.0512.i, %if.then39.i241.i ], [ %pred.0512.i, %if.then30.i235.i ], [ %pred.1517.i, %if.end34.sink.split.i285.i ], [ %pred.2530.i, %if.end34.sink.split.i374.i ], [ %pred.3.i, %if.then34.i503.i ], [ %pred.3545.i, %if.then39.i500.i ], [ %pred.3545.i, %if.then30.i494.i ], [ %28, %if.end.thread.i.i ], [ %28, %if.else.i.i ], [ %28, %if.else.i312.i ], [ %28, %if.end.thread.i451.i ]
  %pred1.4.i = phi i32 [ %29, %for.cond43.preheader.i ], [ %shr36.i246.i, %if.then34.i244.i ], [ %shr41.i243.i, %if.then39.i241.i ], [ %shr.i238.i, %if.then30.i235.i ], [ %shr33.i291.i, %if.end34.sink.split.i285.i ], [ %shr33.i380.i, %if.end34.sink.split.i374.i ], [ %shr36.i505.i, %if.then34.i503.i ], [ %shr41.i502.i, %if.then39.i500.i ], [ %shr.i497.i, %if.then30.i494.i ], [ %29, %if.end.thread.i.i ], [ %29, %if.else.i.i ], [ %29, %if.else.i312.i ], [ %29, %if.end.thread.i451.i ]
  %conv90.i = trunc i32 %pred.4.i to i16
  %conv95.i = trunc i32 %pred1.4.i to i16
  %145 = zext i8 %27 to i64
  %146 = zext i8 %26 to i64
  %arrayidx92.i = getelementptr inbounds ptr, ptr %9, i64 %146
  %arrayidx97.i = getelementptr inbounds ptr, ptr %10, i64 %146
  %147 = load ptr, ptr %arrayidx92.i, align 8
  %arrayidx94.i = getelementptr inbounds i16, ptr %147, i64 %145
  store i16 %conv90.i, ptr %arrayidx94.i, align 2
  %148 = load ptr, ptr %arrayidx97.i, align 8
  %arrayidx99.i = getelementptr inbounds i16, ptr %148, i64 %145
  store i16 %conv95.i, ptr %arrayidx99.i, align 2
  %indvars.iv.next.i = add nuw nsw i64 %145, 1
  %149 = load ptr, ptr %arrayidx92.i, align 8
  %arrayidx94.1.i = getelementptr inbounds i16, ptr %149, i64 %indvars.iv.next.i
  store i16 %conv90.i, ptr %arrayidx94.1.i, align 2
  %150 = load ptr, ptr %arrayidx97.i, align 8
  %arrayidx99.1.i = getelementptr inbounds i16, ptr %150, i64 %indvars.iv.next.i
  store i16 %conv95.i, ptr %arrayidx99.1.i, align 2
  %indvars.iv.next.1.i = add nuw nsw i64 %145, 2
  %151 = load ptr, ptr %arrayidx92.i, align 8
  %arrayidx94.2.i = getelementptr inbounds i16, ptr %151, i64 %indvars.iv.next.1.i
  store i16 %conv90.i, ptr %arrayidx94.2.i, align 2
  %152 = load ptr, ptr %arrayidx97.i, align 8
  %arrayidx99.2.i = getelementptr inbounds i16, ptr %152, i64 %indvars.iv.next.1.i
  store i16 %conv95.i, ptr %arrayidx99.2.i, align 2
  %indvars.iv.next.2.i = add nuw nsw i64 %145, 3
  %153 = load ptr, ptr %arrayidx92.i, align 8
  %arrayidx94.3.i = getelementptr inbounds i16, ptr %153, i64 %indvars.iv.next.2.i
  store i16 %conv90.i, ptr %arrayidx94.3.i, align 2
  %154 = load ptr, ptr %arrayidx97.i, align 8
  %arrayidx99.3.i = getelementptr inbounds i16, ptr %154, i64 %indvars.iv.next.2.i
  store i16 %conv95.i, ptr %arrayidx99.3.i, align 2
  %indvars.iv.next555.i = add nuw nsw i64 %146, 1
  %arrayidx92.1.i = getelementptr inbounds ptr, ptr %9, i64 %indvars.iv.next555.i
  %arrayidx97.1.i = getelementptr inbounds ptr, ptr %10, i64 %indvars.iv.next555.i
  %155 = load ptr, ptr %arrayidx92.1.i, align 8
  %arrayidx94.1557.i = getelementptr inbounds i16, ptr %155, i64 %145
  store i16 %conv90.i, ptr %arrayidx94.1557.i, align 2
  %156 = load ptr, ptr %arrayidx97.1.i, align 8
  %arrayidx99.1558.i = getelementptr inbounds i16, ptr %156, i64 %145
  store i16 %conv95.i, ptr %arrayidx99.1558.i, align 2
  %157 = load ptr, ptr %arrayidx92.1.i, align 8
  %arrayidx94.1.1.i = getelementptr inbounds i16, ptr %157, i64 %indvars.iv.next.i
  store i16 %conv90.i, ptr %arrayidx94.1.1.i, align 2
  %158 = load ptr, ptr %arrayidx97.1.i, align 8
  %arrayidx99.1.1.i = getelementptr inbounds i16, ptr %158, i64 %indvars.iv.next.i
  store i16 %conv95.i, ptr %arrayidx99.1.1.i, align 2
  %159 = load ptr, ptr %arrayidx92.1.i, align 8
  %arrayidx94.2.1.i = getelementptr inbounds i16, ptr %159, i64 %indvars.iv.next.1.i
  store i16 %conv90.i, ptr %arrayidx94.2.1.i, align 2
  %160 = load ptr, ptr %arrayidx97.1.i, align 8
  %arrayidx99.2.1.i = getelementptr inbounds i16, ptr %160, i64 %indvars.iv.next.1.i
  store i16 %conv95.i, ptr %arrayidx99.2.1.i, align 2
  %161 = load ptr, ptr %arrayidx92.1.i, align 8
  %arrayidx94.3.1.i = getelementptr inbounds i16, ptr %161, i64 %indvars.iv.next.2.i
  store i16 %conv90.i, ptr %arrayidx94.3.1.i, align 2
  %162 = load ptr, ptr %arrayidx97.1.i, align 8
  %arrayidx99.3.1.i = getelementptr inbounds i16, ptr %162, i64 %indvars.iv.next.2.i
  store i16 %conv95.i, ptr %arrayidx99.3.1.i, align 2
  %indvars.iv.next555.1.i = add nuw nsw i64 %146, 2
  %arrayidx92.2.i = getelementptr inbounds ptr, ptr %9, i64 %indvars.iv.next555.1.i
  %arrayidx97.2.i = getelementptr inbounds ptr, ptr %10, i64 %indvars.iv.next555.1.i
  %163 = load ptr, ptr %arrayidx92.2.i, align 8
  %arrayidx94.2560.i = getelementptr inbounds i16, ptr %163, i64 %145
  store i16 %conv90.i, ptr %arrayidx94.2560.i, align 2
  %164 = load ptr, ptr %arrayidx97.2.i, align 8
  %arrayidx99.2561.i = getelementptr inbounds i16, ptr %164, i64 %145
  store i16 %conv95.i, ptr %arrayidx99.2561.i, align 2
  %165 = load ptr, ptr %arrayidx92.2.i, align 8
  %arrayidx94.1.2.i = getelementptr inbounds i16, ptr %165, i64 %indvars.iv.next.i
  store i16 %conv90.i, ptr %arrayidx94.1.2.i, align 2
  %166 = load ptr, ptr %arrayidx97.2.i, align 8
  %arrayidx99.1.2.i = getelementptr inbounds i16, ptr %166, i64 %indvars.iv.next.i
  store i16 %conv95.i, ptr %arrayidx99.1.2.i, align 2
  %167 = load ptr, ptr %arrayidx92.2.i, align 8
  %arrayidx94.2.2.i = getelementptr inbounds i16, ptr %167, i64 %indvars.iv.next.1.i
  store i16 %conv90.i, ptr %arrayidx94.2.2.i, align 2
  %168 = load ptr, ptr %arrayidx97.2.i, align 8
  %arrayidx99.2.2.i = getelementptr inbounds i16, ptr %168, i64 %indvars.iv.next.1.i
  store i16 %conv95.i, ptr %arrayidx99.2.2.i, align 2
  %169 = load ptr, ptr %arrayidx92.2.i, align 8
  %arrayidx94.3.2.i = getelementptr inbounds i16, ptr %169, i64 %indvars.iv.next.2.i
  store i16 %conv90.i, ptr %arrayidx94.3.2.i, align 2
  %170 = load ptr, ptr %arrayidx97.2.i, align 8
  %arrayidx99.3.2.i = getelementptr inbounds i16, ptr %170, i64 %indvars.iv.next.2.i
  store i16 %conv95.i, ptr %arrayidx99.3.2.i, align 2
  %indvars.iv.next555.2.i = add nuw nsw i64 %146, 3
  %arrayidx92.3.i = getelementptr inbounds ptr, ptr %9, i64 %indvars.iv.next555.2.i
  %arrayidx97.3.i = getelementptr inbounds ptr, ptr %10, i64 %indvars.iv.next555.2.i
  %171 = load ptr, ptr %arrayidx92.3.i, align 8
  %arrayidx94.3563.i = getelementptr inbounds i16, ptr %171, i64 %145
  store i16 %conv90.i, ptr %arrayidx94.3563.i, align 2
  %172 = load ptr, ptr %arrayidx97.3.i, align 8
  %arrayidx99.3564.i = getelementptr inbounds i16, ptr %172, i64 %145
  store i16 %conv95.i, ptr %arrayidx99.3564.i, align 2
  %173 = load ptr, ptr %arrayidx92.3.i, align 8
  %arrayidx94.1.3.i = getelementptr inbounds i16, ptr %173, i64 %indvars.iv.next.i
  store i16 %conv90.i, ptr %arrayidx94.1.3.i, align 2
  %174 = load ptr, ptr %arrayidx97.3.i, align 8
  %arrayidx99.1.3.i = getelementptr inbounds i16, ptr %174, i64 %indvars.iv.next.i
  store i16 %conv95.i, ptr %arrayidx99.1.3.i, align 2
  %175 = load ptr, ptr %arrayidx92.3.i, align 8
  %arrayidx94.2.3.i = getelementptr inbounds i16, ptr %175, i64 %indvars.iv.next.1.i
  store i16 %conv90.i, ptr %arrayidx94.2.3.i, align 2
  %176 = load ptr, ptr %arrayidx97.3.i, align 8
  %arrayidx99.2.3.i = getelementptr inbounds i16, ptr %176, i64 %indvars.iv.next.1.i
  store i16 %conv95.i, ptr %arrayidx99.2.3.i, align 2
  %177 = load ptr, ptr %arrayidx92.3.i, align 8
  %arrayidx94.3.3.i = getelementptr inbounds i16, ptr %177, i64 %indvars.iv.next.2.i
  store i16 %conv90.i, ptr %arrayidx94.3.3.i, align 2
  %178 = load ptr, ptr %arrayidx97.3.i, align 8
  %arrayidx99.3.3.i = getelementptr inbounds i16, ptr %178, i64 %indvars.iv.next.2.i
  store i16 %conv95.i, ptr %arrayidx99.3.3.i, align 2
  %arrayidx52.1.i = getelementptr inbounds [3 x [8 x [4 x i8]]], ptr @subblk_offset_y, i64 0, i64 %idxprom47.i, i64 %indvars.iv.i, i64 1
  %179 = load i8, ptr %arrayidx52.1.i, align 1
  %conv53.1.i = zext i8 %179 to i32
  %arrayidx59.1.i = getelementptr inbounds [3 x [8 x [4 x i8]]], ptr @subblk_offset_x, i64 0, i64 %idxprom47.i, i64 %indvars.iv.i, i64 1
  %180 = load i8, ptr %arrayidx59.1.i, align 1
  %conv60.1.i = zext i8 %180 to i32
  %181 = load i32, ptr %arrayidx61.i, align 4
  %182 = load i32, ptr %arrayidx63.i, align 4
  %arrayidx69.1.i = getelementptr inbounds [3 x [4 x [4 x i32]]], ptr @intrapred_chroma_dc.block_pos, i64 0, i64 %idxprom47.i, i64 %indvars.iv.i, i64 1
  %183 = load i32, ptr %arrayidx69.1.i, align 4
  switch i32 %183, label %sw.epilog.1.i [
    i32 0, label %sw.bb.1.i
    i32 1, label %sw.bb71.1.i
    i32 2, label %sw.bb74.1.i
    i32 3, label %sw.bb77.1.i
  ]

sw.bb77.1.i:                                      ; preds = %sw.epilog.i
  %add78.1.i = add nuw nsw i32 %conv53.1.i, 1
  %184 = load i64, ptr %23, align 4
  %left.val181.1.i = load i16, ptr %24, align 4
  %left.val182.1.i = load i16, ptr %25, align 2
  br i1 %tobool.not.i399.i, label %if.end.thread.i451.1.i, label %if.then.i400.1.i

if.then.i400.1.i:                                 ; preds = %sw.bb77.1.i
  %idxprom.i401.1.i = ashr i64 %184, 48
  %arrayidx.i402.1.i = getelementptr inbounds ptr, ptr %6, i64 %idxprom.i401.1.i
  %185 = load ptr, ptr %arrayidx.i402.1.i, align 8
  %sh.diff.i403.1.i = lshr i64 %184, 16
  %tr.sh.diff.i404.1.i = trunc i64 %sh.diff.i403.1.i to i32
  %conv.i405.1.i = ashr i32 %tr.sh.diff.i404.1.i, 16
  %add.i406.1.i = add nsw i32 %conv.i405.1.i, %conv60.1.i
  %idxprom1.i407.1.i = sext i32 %add.i406.1.i to i64
  %arrayidx2.i408.1.i = getelementptr inbounds i16, ptr %185, i64 %idxprom1.i407.1.i
  %186 = load <4 x i16>, ptr %arrayidx2.i408.1.i, align 2
  %187 = zext <4 x i16> %186 to <4 x i32>
  %188 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %187)
  br i1 %tobool6.not.i419.i, label %if.then34.i448.1.i, label %if.then7.i420.1.i

if.then34.i448.1.i:                               ; preds = %if.then.i400.1.i
  %add35.i449.1.i = add nuw nsw i32 %188, 2
  %shr36.i450.1.i = lshr i32 %add35.i449.1.i, 2
  br label %if.then.i455.1.i

if.end.thread.i451.1.i:                           ; preds = %sw.bb77.1.i
  br i1 %tobool6.not.i419.i, label %sw.epilog.1.i, label %if.then7.i420.1.i

if.then7.i420.1.i:                                ; preds = %if.end.thread.i451.1.i, %if.then.i400.1.i
  %s0.19.i421.1.i = phi i32 [ 0, %if.end.thread.i451.1.i ], [ %188, %if.then.i400.1.i ]
  %conv10.i422.1.i = sext i16 %left.val182.1.i to i32
  %add11.i423.1.i = add nsw i32 %add78.1.i, %conv10.i422.1.i
  %189 = sext i32 %add11.i423.1.i to i64
  %190 = getelementptr ptr, ptr %6, i64 %189
  %arrayidx13.i424.1.i = getelementptr i8, ptr %190, i64 -8
  %idx.ext.i425.1.i = sext i16 %left.val181.1.i to i64
  %191 = load ptr, ptr %arrayidx13.i424.1.i, align 8
  %add.ptr.i426.1.i = getelementptr inbounds i16, ptr %191, i64 %idx.ext.i425.1.i
  %192 = load i16, ptr %add.ptr.i426.1.i, align 2
  %conv22.i427.1.i = zext i16 %192 to i32
  %incdec.ptr21.1.i428.1.i = getelementptr inbounds i8, ptr %190, i64 8
  %193 = load ptr, ptr %190, align 8
  %add.ptr.1.i429.1.i = getelementptr inbounds i16, ptr %193, i64 %idx.ext.i425.1.i
  %194 = load i16, ptr %add.ptr.1.i429.1.i, align 2
  %conv22.1.i430.1.i = zext i16 %194 to i32
  %add23.1.i431.1.i = add nuw nsw i32 %conv22.1.i430.1.i, %conv22.i427.1.i
  %incdec.ptr21.2.i432.1.i = getelementptr inbounds i8, ptr %190, i64 16
  %195 = load ptr, ptr %incdec.ptr21.1.i428.1.i, align 8
  %add.ptr.2.i433.1.i = getelementptr inbounds i16, ptr %195, i64 %idx.ext.i425.1.i
  %196 = load i16, ptr %add.ptr.2.i433.1.i, align 2
  %conv22.2.i434.1.i = zext i16 %196 to i32
  %add23.2.i435.1.i = add nuw nsw i32 %add23.1.i431.1.i, %conv22.2.i434.1.i
  %197 = load ptr, ptr %incdec.ptr21.2.i432.1.i, align 8
  %add.ptr.3.i436.1.i = getelementptr inbounds i16, ptr %197, i64 %idx.ext.i425.1.i
  %198 = load i16, ptr %add.ptr.3.i436.1.i, align 2
  %conv22.3.i437.1.i = zext i16 %198 to i32
  %add23.3.i438.1.i = add nuw nsw i32 %add23.2.i435.1.i, %conv22.3.i437.1.i
  br i1 %tobool.not.i399.i, label %if.end.thread.i506.1.i, label %if.then30.i439.1.i

if.then30.i439.1.i:                               ; preds = %if.then7.i420.1.i
  %add31.i440.1.i = add nuw nsw i32 %s0.19.i421.1.i, 4
  %add32.i441.1.i = add nuw nsw i32 %add31.i440.1.i, %add23.3.i438.1.i
  %shr.i442.1.i = lshr i32 %add32.i441.1.i, 3
  %.pre614.i = ashr i64 %184, 48
  %.pre645.i = lshr i64 %184, 16
  %.pre646.i = trunc i64 %.pre645.i to i32
  %.pre647.i = ashr i32 %.pre646.i, 16
  %.pre648.i = add nsw i32 %.pre647.i, %conv60.1.i
  %.pre649.i = sext i32 %.pre648.i to i64
  br label %if.then.i455.1.i

if.then.i455.1.i:                                 ; preds = %if.then30.i439.1.i, %if.then34.i448.1.i
  %idxprom1.i462.1.pre-phi.i = phi i64 [ %.pre649.i, %if.then30.i439.1.i ], [ %idxprom1.i407.1.i, %if.then34.i448.1.i ]
  %idxprom.i456.1.pre-phi.i = phi i64 [ %.pre614.i, %if.then30.i439.1.i ], [ %idxprom.i401.1.i, %if.then34.i448.1.i ]
  %pred.3.1.i = phi i32 [ %shr.i442.1.i, %if.then30.i439.1.i ], [ %shr36.i450.1.i, %if.then34.i448.1.i ]
  %arrayidx.i457.1.i = getelementptr inbounds ptr, ptr %7, i64 %idxprom.i456.1.pre-phi.i
  %199 = load ptr, ptr %arrayidx.i457.1.i, align 8
  %arrayidx2.i463.1.i = getelementptr inbounds i16, ptr %199, i64 %idxprom1.i462.1.pre-phi.i
  %incdec.ptr.i464.1.i = getelementptr inbounds i8, ptr %arrayidx2.i463.1.i, i64 2
  %200 = load i16, ptr %arrayidx2.i463.1.i, align 2
  %conv4.i465.1.i = zext i16 %200 to i32
  %incdec.ptr.1.i466.1.i = getelementptr inbounds i8, ptr %arrayidx2.i463.1.i, i64 4
  %201 = load i16, ptr %incdec.ptr.i464.1.i, align 2
  %conv4.1.i467.1.i = zext i16 %201 to i32
  %add5.1.i468.1.i = add nuw nsw i32 %conv4.1.i467.1.i, %conv4.i465.1.i
  %incdec.ptr.2.i469.1.i = getelementptr inbounds i8, ptr %arrayidx2.i463.1.i, i64 6
  %202 = load i16, ptr %incdec.ptr.1.i466.1.i, align 2
  %conv4.2.i470.1.i = zext i16 %202 to i32
  %add5.2.i471.1.i = add nuw nsw i32 %add5.1.i468.1.i, %conv4.2.i470.1.i
  %203 = load i16, ptr %incdec.ptr.2.i469.1.i, align 2
  %conv4.3.i472.1.i = zext i16 %203 to i32
  %add5.3.i473.1.i = add nuw nsw i32 %add5.2.i471.1.i, %conv4.3.i472.1.i
  br i1 %tobool6.not.i419.i, label %if.then34.i503.1.i, label %if.then.i455.1.if.then7.i475.1_crit_edge.i

if.then.i455.1.if.then7.i475.1_crit_edge.i:       ; preds = %if.then.i455.1.i
  %.pre684.i = sext i16 %left.val182.1.i to i32
  %.pre685.i = add nsw i32 %add78.1.i, %.pre684.i
  %.pre686.i = sext i32 %.pre685.i to i64
  %.pre688.i = sext i16 %left.val181.1.i to i64
  br label %if.then7.i475.1.i

if.then34.i503.1.i:                               ; preds = %if.then.i455.1.i
  %add35.i504.1.i = add nuw nsw i32 %add5.3.i473.1.i, 2
  %shr36.i505.1.i = lshr i32 %add35.i504.1.i, 2
  br label %sw.epilog.1.i

if.end.thread.i506.1.i:                           ; preds = %if.then7.i420.1.i
  %add40.i446.1.i = add nuw nsw i32 %add23.3.i438.1.i, 2
  %shr41.i447.1.i = lshr i32 %add40.i446.1.i, 2
  br label %if.then7.i475.1.i

if.then7.i475.1.i:                                ; preds = %if.end.thread.i506.1.i, %if.then.i455.1.if.then7.i475.1_crit_edge.i
  %idx.ext.i480.1.pre-phi.i = phi i64 [ %.pre688.i, %if.then.i455.1.if.then7.i475.1_crit_edge.i ], [ %idx.ext.i425.1.i, %if.end.thread.i506.1.i ]
  %.pre-phi687.i = phi i64 [ %.pre686.i, %if.then.i455.1.if.then7.i475.1_crit_edge.i ], [ %189, %if.end.thread.i506.1.i ]
  %pred.3545.1.i = phi i32 [ %pred.3.1.i, %if.then.i455.1.if.then7.i475.1_crit_edge.i ], [ %shr41.i447.1.i, %if.end.thread.i506.1.i ]
  %s0.19.i476.1.i = phi i32 [ %add5.3.i473.1.i, %if.then.i455.1.if.then7.i475.1_crit_edge.i ], [ 0, %if.end.thread.i506.1.i ]
  %204 = getelementptr ptr, ptr %7, i64 %.pre-phi687.i
  %arrayidx13.i479.1.i = getelementptr i8, ptr %204, i64 -8
  %205 = load ptr, ptr %arrayidx13.i479.1.i, align 8
  %add.ptr.i481.1.i = getelementptr inbounds i16, ptr %205, i64 %idx.ext.i480.1.pre-phi.i
  %206 = load i16, ptr %add.ptr.i481.1.i, align 2
  %conv22.i482.1.i = zext i16 %206 to i32
  %incdec.ptr21.1.i483.1.i = getelementptr inbounds i8, ptr %204, i64 8
  %207 = load ptr, ptr %204, align 8
  %add.ptr.1.i484.1.i = getelementptr inbounds i16, ptr %207, i64 %idx.ext.i480.1.pre-phi.i
  %208 = load i16, ptr %add.ptr.1.i484.1.i, align 2
  %conv22.1.i485.1.i = zext i16 %208 to i32
  %add23.1.i486.1.i = add nuw nsw i32 %conv22.1.i485.1.i, %conv22.i482.1.i
  %incdec.ptr21.2.i487.1.i = getelementptr inbounds i8, ptr %204, i64 16
  %209 = load ptr, ptr %incdec.ptr21.1.i483.1.i, align 8
  %add.ptr.2.i488.1.i = getelementptr inbounds i16, ptr %209, i64 %idx.ext.i480.1.pre-phi.i
  %210 = load i16, ptr %add.ptr.2.i488.1.i, align 2
  %conv22.2.i489.1.i = zext i16 %210 to i32
  %add23.2.i490.1.i = add nuw nsw i32 %add23.1.i486.1.i, %conv22.2.i489.1.i
  %211 = load ptr, ptr %incdec.ptr21.2.i487.1.i, align 8
  %add.ptr.3.i491.1.i = getelementptr inbounds i16, ptr %211, i64 %idx.ext.i480.1.pre-phi.i
  %212 = load i16, ptr %add.ptr.3.i491.1.i, align 2
  %conv22.3.i492.1.i = zext i16 %212 to i32
  %add23.3.i493.1.i = add nuw nsw i32 %add23.2.i490.1.i, %conv22.3.i492.1.i
  br i1 %tobool.not.i399.i, label %if.then39.i500.1.i, label %if.then30.i494.1.i

if.then30.i494.1.i:                               ; preds = %if.then7.i475.1.i
  %add31.i495.1.i = add nuw nsw i32 %s0.19.i476.1.i, 4
  %add32.i496.1.i = add nuw nsw i32 %add31.i495.1.i, %add23.3.i493.1.i
  %shr.i497.1.i = lshr i32 %add32.i496.1.i, 3
  br label %sw.epilog.1.i

if.then39.i500.1.i:                               ; preds = %if.then7.i475.1.i
  %add40.i501.1.i = add nuw nsw i32 %add23.3.i493.1.i, 2
  %shr41.i502.1.i = lshr i32 %add40.i501.1.i, 2
  br label %sw.epilog.1.i

sw.bb74.1.i:                                      ; preds = %sw.epilog.i
  %add75.1.i = add nuw nsw i32 %conv53.1.i, 1
  %left.val189.1.i = load i16, ptr %24, align 4
  %left.val190.1.i = load i16, ptr %25, align 2
  br i1 %or.cond46.i.i, label %if.then.i381.1.i, label %if.else.i312.1.i

if.else.i312.1.i:                                 ; preds = %sw.bb74.1.i
  br i1 %tobool6.not.i419.i, label %sw.epilog.1.i, label %if.then12.i358.1.i

if.then12.i358.1.i:                               ; preds = %if.else.i312.1.i
  %conv15.i314.1.i = sext i16 %left.val190.1.i to i32
  %add16.i315.1.i = add nsw i32 %add75.1.i, %conv15.i314.1.i
  %213 = sext i32 %add16.i315.1.i to i64
  %214 = getelementptr ptr, ptr %6, i64 %213
  %arrayidx18.i316.1.i = getelementptr i8, ptr %214, i64 -8
  %idx.ext.i317.1.i = sext i16 %left.val189.1.i to i64
  %215 = load ptr, ptr %arrayidx18.i316.1.i, align 8
  %add.ptr.i318.1.i = getelementptr inbounds i16, ptr %215, i64 %idx.ext.i317.1.i
  %216 = load i16, ptr %add.ptr.i318.1.i, align 2
  %conv27.i319.1.i = zext i16 %216 to i32
  %incdec.ptr26.1.i320.1.i = getelementptr inbounds i8, ptr %214, i64 8
  %217 = load ptr, ptr %214, align 8
  %add.ptr.1.i321.1.i = getelementptr inbounds i16, ptr %217, i64 %idx.ext.i317.1.i
  %218 = load i16, ptr %add.ptr.1.i321.1.i, align 2
  %conv27.1.i322.1.i = zext i16 %218 to i32
  %add28.1.i323.1.i = add nuw nsw i32 %conv27.1.i322.1.i, %conv27.i319.1.i
  %incdec.ptr26.2.i324.1.i = getelementptr inbounds i8, ptr %214, i64 16
  %219 = load ptr, ptr %incdec.ptr26.1.i320.1.i, align 8
  %add.ptr.2.i325.1.i = getelementptr inbounds i16, ptr %219, i64 %idx.ext.i317.1.i
  %220 = load i16, ptr %add.ptr.2.i325.1.i, align 2
  %conv27.2.i326.1.i = zext i16 %220 to i32
  %add28.2.i327.1.i = add nuw nsw i32 %add28.1.i323.1.i, %conv27.2.i326.1.i
  %221 = load ptr, ptr %incdec.ptr26.2.i324.1.i, align 8
  %add.ptr.3.i328.1.i = getelementptr inbounds i16, ptr %221, i64 %idx.ext.i317.1.i
  %222 = load i16, ptr %add.ptr.3.i328.1.i, align 2
  %conv27.3.i332.1.i = zext i16 %222 to i32
  %add28.3.i333.1.i = add nuw nsw i32 %add28.2.i327.1.i, %conv27.3.i332.1.i
  %223 = getelementptr ptr, ptr %7, i64 %213
  %arrayidx18.i361.1.i = getelementptr i8, ptr %223, i64 -8
  %224 = load ptr, ptr %arrayidx18.i361.1.i, align 8
  %add.ptr.i363.1.i = getelementptr inbounds i16, ptr %224, i64 %idx.ext.i317.1.i
  %225 = load i16, ptr %add.ptr.i363.1.i, align 2
  %conv27.i364.1.i = zext i16 %225 to i32
  %incdec.ptr26.1.i365.1.i = getelementptr inbounds i8, ptr %223, i64 8
  %226 = load ptr, ptr %223, align 8
  %add.ptr.1.i366.1.i = getelementptr inbounds i16, ptr %226, i64 %idx.ext.i317.1.i
  %227 = load i16, ptr %add.ptr.1.i366.1.i, align 2
  %conv27.1.i367.1.i = zext i16 %227 to i32
  %add28.1.i368.1.i = add nuw nsw i32 %conv27.1.i367.1.i, %conv27.i364.1.i
  %incdec.ptr26.2.i369.1.i = getelementptr inbounds i8, ptr %223, i64 16
  %228 = load ptr, ptr %incdec.ptr26.1.i365.1.i, align 8
  %add.ptr.2.i370.1.i = getelementptr inbounds i16, ptr %228, i64 %idx.ext.i317.1.i
  %229 = load i16, ptr %add.ptr.2.i370.1.i, align 2
  %conv27.2.i371.1.i = zext i16 %229 to i32
  %add28.2.i372.1.i = add nuw nsw i32 %add28.1.i368.1.i, %conv27.2.i371.1.i
  %230 = load ptr, ptr %incdec.ptr26.2.i369.1.i, align 8
  %add.ptr.3.i373.1.i = getelementptr inbounds i16, ptr %230, i64 %idx.ext.i317.1.i
  br label %if.end34.sink.split.i374.1.i

if.then.i381.1.i:                                 ; preds = %sw.bb74.1.i
  %231 = load i64, ptr %23, align 4
  %idxprom.i337.1.i = ashr i64 %231, 48
  %arrayidx.i338.1.i = getelementptr inbounds ptr, ptr %6, i64 %idxprom.i337.1.i
  %232 = load ptr, ptr %arrayidx.i338.1.i, align 8
  %sh.diff.i339.1.i = lshr i64 %231, 16
  %tr.sh.diff.i340.1.i = trunc i64 %sh.diff.i339.1.i to i32
  %conv.i341.1.i = ashr i32 %tr.sh.diff.i340.1.i, 16
  %add.i342.1.i = add nsw i32 %conv.i341.1.i, %conv60.1.i
  %idxprom5.i343.1.i = sext i32 %add.i342.1.i to i64
  %arrayidx6.i344.1.i = getelementptr inbounds i16, ptr %232, i64 %idxprom5.i343.1.i
  %233 = load <4 x i16>, ptr %arrayidx6.i344.1.i, align 2
  %234 = zext <4 x i16> %233 to <4 x i32>
  %235 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %234)
  %arrayidx.i383.1.i = getelementptr inbounds ptr, ptr %7, i64 %idxprom.i337.1.i
  %236 = load ptr, ptr %arrayidx.i383.1.i, align 8
  %arrayidx6.i389.1.i = getelementptr inbounds i16, ptr %236, i64 %idxprom5.i343.1.i
  %incdec.ptr.i390.1.i = getelementptr inbounds i8, ptr %arrayidx6.i389.1.i, i64 2
  %237 = load i16, ptr %arrayidx6.i389.1.i, align 2
  %conv8.i391.1.i = zext i16 %237 to i32
  %incdec.ptr.1.i392.1.i = getelementptr inbounds i8, ptr %arrayidx6.i389.1.i, i64 4
  %238 = load i16, ptr %incdec.ptr.i390.1.i, align 2
  %conv8.1.i393.1.i = zext i16 %238 to i32
  %add9.1.i394.1.i = add nuw nsw i32 %conv8.1.i393.1.i, %conv8.i391.1.i
  %incdec.ptr.2.i395.1.i = getelementptr inbounds i8, ptr %arrayidx6.i389.1.i, i64 6
  %239 = load i16, ptr %incdec.ptr.1.i392.1.i, align 2
  %conv8.2.i396.1.i = zext i16 %239 to i32
  %add9.2.i397.1.i = add nuw nsw i32 %add9.1.i394.1.i, %conv8.2.i396.1.i
  br label %if.end34.sink.split.i374.1.i

if.end34.sink.split.i374.1.i:                     ; preds = %if.then.i381.1.i, %if.then12.i358.1.i
  %pred.2530.in.in.1.i = phi i32 [ %add28.3.i333.1.i, %if.then12.i358.1.i ], [ %235, %if.then.i381.1.i ]
  %add.ptr.3.sink.i375.1.i = phi ptr [ %add.ptr.3.i373.1.i, %if.then12.i358.1.i ], [ %incdec.ptr.2.i395.1.i, %if.then.i381.1.i ]
  %add28.2.sink.i376.1.i = phi i32 [ %add28.2.i372.1.i, %if.then12.i358.1.i ], [ %add9.2.i397.1.i, %if.then.i381.1.i ]
  %pred.2530.in.1.i = add nuw nsw i32 %pred.2530.in.in.1.i, 2
  %pred.2530.1.i = lshr i32 %pred.2530.in.1.i, 2
  %240 = load i16, ptr %add.ptr.3.sink.i375.1.i, align 2
  %conv27.3.i377.1.i = zext i16 %240 to i32
  %add28.3.i378.1.i = add nuw nsw i32 %add28.2.sink.i376.1.i, 2
  %add32.i379.1.i = add nuw nsw i32 %add28.3.i378.1.i, %conv27.3.i377.1.i
  %shr33.i380.1.i = lshr i32 %add32.i379.1.i, 2
  br label %sw.epilog.1.i

sw.bb71.1.i:                                      ; preds = %sw.epilog.i
  %add72.1.i = add nuw nsw i32 %conv53.1.i, 1
  %left.val193.1.i = load i16, ptr %24, align 4
  %left.val194.1.i = load i16, ptr %25, align 2
  br i1 %tobool.not.i399.i, label %if.else.i.1.i, label %if.then.i292.1.i

if.then.i292.1.i:                                 ; preds = %sw.bb71.1.i
  %241 = load i64, ptr %23, align 4
  %idxprom.i257.1.i = ashr i64 %241, 48
  %arrayidx.i258.1.i = getelementptr inbounds ptr, ptr %6, i64 %idxprom.i257.1.i
  %242 = load ptr, ptr %arrayidx.i258.1.i, align 8
  %sh.diff.i259.1.i = lshr i64 %241, 16
  %tr.sh.diff.i260.1.i = trunc i64 %sh.diff.i259.1.i to i32
  %conv.i261.1.i = ashr i32 %tr.sh.diff.i260.1.i, 16
  %add.i262.1.i = add nsw i32 %conv.i261.1.i, %conv60.1.i
  %idxprom5.i.1.i = sext i32 %add.i262.1.i to i64
  %arrayidx6.i.1.i = getelementptr inbounds i16, ptr %242, i64 %idxprom5.i.1.i
  %243 = load <4 x i16>, ptr %arrayidx6.i.1.i, align 2
  %244 = zext <4 x i16> %243 to <4 x i32>
  %245 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %244)
  %arrayidx.i294.1.i = getelementptr inbounds ptr, ptr %7, i64 %idxprom.i257.1.i
  %246 = load ptr, ptr %arrayidx.i294.1.i, align 8
  %arrayidx6.i300.1.i = getelementptr inbounds i16, ptr %246, i64 %idxprom5.i.1.i
  %incdec.ptr.i301.1.i = getelementptr inbounds i8, ptr %arrayidx6.i300.1.i, i64 2
  %247 = load i16, ptr %arrayidx6.i300.1.i, align 2
  %conv8.i302.1.i = zext i16 %247 to i32
  %incdec.ptr.1.i303.1.i = getelementptr inbounds i8, ptr %arrayidx6.i300.1.i, i64 4
  %248 = load i16, ptr %incdec.ptr.i301.1.i, align 2
  %conv8.1.i304.1.i = zext i16 %248 to i32
  %add9.1.i305.1.i = add nuw nsw i32 %conv8.1.i304.1.i, %conv8.i302.1.i
  %incdec.ptr.2.i306.1.i = getelementptr inbounds i8, ptr %arrayidx6.i300.1.i, i64 6
  %249 = load i16, ptr %incdec.ptr.1.i303.1.i, align 2
  %conv8.2.i307.1.i = zext i16 %249 to i32
  %add9.2.i308.1.i = add nuw nsw i32 %add9.1.i305.1.i, %conv8.2.i307.1.i
  br label %if.end34.sink.split.i285.1.i

if.else.i.1.i:                                    ; preds = %sw.bb71.1.i
  br i1 %tobool6.not.i419.i, label %sw.epilog.1.i, label %if.then12.i269.1.i

if.then12.i269.1.i:                               ; preds = %if.else.i.1.i
  %conv15.i.1.i = sext i16 %left.val194.1.i to i32
  %add16.i.1.i = add nsw i32 %add72.1.i, %conv15.i.1.i
  %250 = sext i32 %add16.i.1.i to i64
  %251 = getelementptr ptr, ptr %6, i64 %250
  %arrayidx18.i.1.i = getelementptr i8, ptr %251, i64 -8
  %idx.ext.i250.1.i = sext i16 %left.val193.1.i to i64
  %252 = load ptr, ptr %arrayidx18.i.1.i, align 8
  %add.ptr.i251.1.i = getelementptr inbounds i16, ptr %252, i64 %idx.ext.i250.1.i
  %253 = load i16, ptr %add.ptr.i251.1.i, align 2
  %conv27.i.1.i = zext i16 %253 to i32
  %incdec.ptr26.1.i.1.i = getelementptr inbounds i8, ptr %251, i64 8
  %254 = load ptr, ptr %251, align 8
  %add.ptr.1.i252.1.i = getelementptr inbounds i16, ptr %254, i64 %idx.ext.i250.1.i
  %255 = load i16, ptr %add.ptr.1.i252.1.i, align 2
  %conv27.1.i.1.i = zext i16 %255 to i32
  %add28.1.i.1.i = add nuw nsw i32 %conv27.1.i.1.i, %conv27.i.1.i
  %incdec.ptr26.2.i.1.i = getelementptr inbounds i8, ptr %251, i64 16
  %256 = load ptr, ptr %incdec.ptr26.1.i.1.i, align 8
  %add.ptr.2.i253.1.i = getelementptr inbounds i16, ptr %256, i64 %idx.ext.i250.1.i
  %257 = load i16, ptr %add.ptr.2.i253.1.i, align 2
  %conv27.2.i.1.i = zext i16 %257 to i32
  %add28.2.i.1.i = add nuw nsw i32 %add28.1.i.1.i, %conv27.2.i.1.i
  %258 = load ptr, ptr %incdec.ptr26.2.i.1.i, align 8
  %add.ptr.3.i254.1.i = getelementptr inbounds i16, ptr %258, i64 %idx.ext.i250.1.i
  %259 = load i16, ptr %add.ptr.3.i254.1.i, align 2
  %conv27.3.i.1.i = zext i16 %259 to i32
  %add28.3.i.1.i = add nuw nsw i32 %add28.2.i.1.i, %conv27.3.i.1.i
  %260 = getelementptr ptr, ptr %7, i64 %250
  %arrayidx18.i272.1.i = getelementptr i8, ptr %260, i64 -8
  %261 = load ptr, ptr %arrayidx18.i272.1.i, align 8
  %add.ptr.i274.1.i = getelementptr inbounds i16, ptr %261, i64 %idx.ext.i250.1.i
  %262 = load i16, ptr %add.ptr.i274.1.i, align 2
  %conv27.i275.1.i = zext i16 %262 to i32
  %incdec.ptr26.1.i276.1.i = getelementptr inbounds i8, ptr %260, i64 8
  %263 = load ptr, ptr %260, align 8
  %add.ptr.1.i277.1.i = getelementptr inbounds i16, ptr %263, i64 %idx.ext.i250.1.i
  %264 = load i16, ptr %add.ptr.1.i277.1.i, align 2
  %conv27.1.i278.1.i = zext i16 %264 to i32
  %add28.1.i279.1.i = add nuw nsw i32 %conv27.1.i278.1.i, %conv27.i275.1.i
  %incdec.ptr26.2.i280.1.i = getelementptr inbounds i8, ptr %260, i64 16
  %265 = load ptr, ptr %incdec.ptr26.1.i276.1.i, align 8
  %add.ptr.2.i281.1.i = getelementptr inbounds i16, ptr %265, i64 %idx.ext.i250.1.i
  %266 = load i16, ptr %add.ptr.2.i281.1.i, align 2
  %conv27.2.i282.1.i = zext i16 %266 to i32
  %add28.2.i283.1.i = add nuw nsw i32 %add28.1.i279.1.i, %conv27.2.i282.1.i
  %267 = load ptr, ptr %incdec.ptr26.2.i280.1.i, align 8
  %add.ptr.3.i284.1.i = getelementptr inbounds i16, ptr %267, i64 %idx.ext.i250.1.i
  br label %if.end34.sink.split.i285.1.i

if.end34.sink.split.i285.1.i:                     ; preds = %if.then12.i269.1.i, %if.then.i292.1.i
  %pred.1517.in.in.1.i = phi i32 [ %add28.3.i.1.i, %if.then12.i269.1.i ], [ %245, %if.then.i292.1.i ]
  %add.ptr.3.sink.i286.1.i = phi ptr [ %add.ptr.3.i284.1.i, %if.then12.i269.1.i ], [ %incdec.ptr.2.i306.1.i, %if.then.i292.1.i ]
  %add28.2.sink.i287.1.i = phi i32 [ %add28.2.i283.1.i, %if.then12.i269.1.i ], [ %add9.2.i308.1.i, %if.then.i292.1.i ]
  %pred.1517.in.1.i = add nuw nsw i32 %pred.1517.in.in.1.i, 2
  %pred.1517.1.i = lshr i32 %pred.1517.in.1.i, 2
  %268 = load i16, ptr %add.ptr.3.sink.i286.1.i, align 2
  %conv27.3.i288.1.i = zext i16 %268 to i32
  %add28.3.i289.1.i = add nuw nsw i32 %add28.2.sink.i287.1.i, 2
  %add32.i290.1.i = add nuw nsw i32 %add28.3.i289.1.i, %conv27.3.i288.1.i
  %shr33.i291.1.i = lshr i32 %add32.i290.1.i, 2
  br label %sw.epilog.1.i

sw.bb.1.i:                                        ; preds = %sw.epilog.i
  %add.1.i = add nuw nsw i32 %conv53.1.i, 1
  %269 = load i64, ptr %23, align 4
  %left.val185.1.i = load i16, ptr %24, align 4
  %left.val186.1.i = load i16, ptr %25, align 2
  br i1 %tobool.not.i399.i, label %if.end.thread.i.1.i, label %if.then.i.1.i

if.then.i.1.i:                                    ; preds = %sw.bb.1.i
  %idxprom.i.1.i = ashr i64 %269, 48
  %arrayidx.i.1.i = getelementptr inbounds ptr, ptr %6, i64 %idxprom.i.1.i
  %270 = load ptr, ptr %arrayidx.i.1.i, align 8
  %sh.diff.i.1.i = lshr i64 %269, 16
  %tr.sh.diff.i.1.i = trunc i64 %sh.diff.i.1.i to i32
  %conv.i.1.i = ashr i32 %tr.sh.diff.i.1.i, 16
  %add.i.1.i = add nsw i32 %conv.i.1.i, %conv60.1.i
  %idxprom1.i.1.i = sext i32 %add.i.1.i to i64
  %arrayidx2.i.1.i = getelementptr inbounds i16, ptr %270, i64 %idxprom1.i.1.i
  %271 = load <4 x i16>, ptr %arrayidx2.i.1.i, align 2
  %272 = zext <4 x i16> %271 to <4 x i32>
  %273 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %272)
  br i1 %tobool6.not.i419.i, label %if.then34.i.1.i, label %if.then7.i.1.i

if.then34.i.1.i:                                  ; preds = %if.then.i.1.i
  %add35.i.1.i = add nuw nsw i32 %273, 2
  %shr36.i.1.i = lshr i32 %add35.i.1.i, 2
  br label %if.then.i196.1.i

if.end.thread.i.1.i:                              ; preds = %sw.bb.1.i
  br i1 %tobool6.not.i419.i, label %sw.epilog.1.i, label %if.then7.i.1.i

if.then7.i.1.i:                                   ; preds = %if.end.thread.i.1.i, %if.then.i.1.i
  %s0.19.i.1.i = phi i32 [ 0, %if.end.thread.i.1.i ], [ %273, %if.then.i.1.i ]
  %conv10.i.1.i = sext i16 %left.val186.1.i to i32
  %add11.i.1.i = add nsw i32 %add.1.i, %conv10.i.1.i
  %274 = sext i32 %add11.i.1.i to i64
  %275 = getelementptr ptr, ptr %6, i64 %274
  %arrayidx13.i.1.i = getelementptr i8, ptr %275, i64 -8
  %idx.ext.i.1.i = sext i16 %left.val185.1.i to i64
  %276 = load ptr, ptr %arrayidx13.i.1.i, align 8
  %add.ptr.i.1.i = getelementptr inbounds i16, ptr %276, i64 %idx.ext.i.1.i
  %277 = load i16, ptr %add.ptr.i.1.i, align 2
  %conv22.i.1.i = zext i16 %277 to i32
  %incdec.ptr21.1.i.1.i = getelementptr inbounds i8, ptr %275, i64 8
  %278 = load ptr, ptr %275, align 8
  %add.ptr.1.i.1.i = getelementptr inbounds i16, ptr %278, i64 %idx.ext.i.1.i
  %279 = load i16, ptr %add.ptr.1.i.1.i, align 2
  %conv22.1.i.1.i = zext i16 %279 to i32
  %add23.1.i.1.i = add nuw nsw i32 %conv22.1.i.1.i, %conv22.i.1.i
  %incdec.ptr21.2.i.1.i = getelementptr inbounds i8, ptr %275, i64 16
  %280 = load ptr, ptr %incdec.ptr21.1.i.1.i, align 8
  %add.ptr.2.i.1.i = getelementptr inbounds i16, ptr %280, i64 %idx.ext.i.1.i
  %281 = load i16, ptr %add.ptr.2.i.1.i, align 2
  %conv22.2.i.1.i = zext i16 %281 to i32
  %add23.2.i.1.i = add nuw nsw i32 %add23.1.i.1.i, %conv22.2.i.1.i
  %282 = load ptr, ptr %incdec.ptr21.2.i.1.i, align 8
  %add.ptr.3.i.1.i = getelementptr inbounds i16, ptr %282, i64 %idx.ext.i.1.i
  %283 = load i16, ptr %add.ptr.3.i.1.i, align 2
  %conv22.3.i.1.i = zext i16 %283 to i32
  %add23.3.i.1.i = add nuw nsw i32 %add23.2.i.1.i, %conv22.3.i.1.i
  br i1 %tobool.not.i399.i, label %if.end.thread.i247.1.i, label %if.then30.i.1.i

if.then30.i.1.i:                                  ; preds = %if.then7.i.1.i
  %add31.i.1.i = add nuw nsw i32 %s0.19.i.1.i, 4
  %add32.i.1.i = add nuw nsw i32 %add31.i.1.i, %add23.3.i.1.i
  %shr.i.1.i = lshr i32 %add32.i.1.i, 3
  %.pre615.i = ashr i64 %269, 48
  %.pre640.i = lshr i64 %269, 16
  %.pre641.i = trunc i64 %.pre640.i to i32
  %.pre642.i = ashr i32 %.pre641.i, 16
  %.pre643.i = add nsw i32 %.pre642.i, %conv60.1.i
  %.pre644.i = sext i32 %.pre643.i to i64
  br label %if.then.i196.1.i

if.then.i196.1.i:                                 ; preds = %if.then30.i.1.i, %if.then34.i.1.i
  %idxprom1.i203.1.pre-phi.i = phi i64 [ %.pre644.i, %if.then30.i.1.i ], [ %idxprom1.i.1.i, %if.then34.i.1.i ]
  %idxprom.i197.1.pre-phi.i = phi i64 [ %.pre615.i, %if.then30.i.1.i ], [ %idxprom.i.1.i, %if.then34.i.1.i ]
  %pred.0.1.i = phi i32 [ %shr.i.1.i, %if.then30.i.1.i ], [ %shr36.i.1.i, %if.then34.i.1.i ]
  %arrayidx.i198.1.i = getelementptr inbounds ptr, ptr %7, i64 %idxprom.i197.1.pre-phi.i
  %284 = load ptr, ptr %arrayidx.i198.1.i, align 8
  %arrayidx2.i204.1.i = getelementptr inbounds i16, ptr %284, i64 %idxprom1.i203.1.pre-phi.i
  %incdec.ptr.i205.1.i = getelementptr inbounds i8, ptr %arrayidx2.i204.1.i, i64 2
  %285 = load i16, ptr %arrayidx2.i204.1.i, align 2
  %conv4.i206.1.i = zext i16 %285 to i32
  %incdec.ptr.1.i207.1.i = getelementptr inbounds i8, ptr %arrayidx2.i204.1.i, i64 4
  %286 = load i16, ptr %incdec.ptr.i205.1.i, align 2
  %conv4.1.i208.1.i = zext i16 %286 to i32
  %add5.1.i209.1.i = add nuw nsw i32 %conv4.1.i208.1.i, %conv4.i206.1.i
  %incdec.ptr.2.i210.1.i = getelementptr inbounds i8, ptr %arrayidx2.i204.1.i, i64 6
  %287 = load i16, ptr %incdec.ptr.1.i207.1.i, align 2
  %conv4.2.i211.1.i = zext i16 %287 to i32
  %add5.2.i212.1.i = add nuw nsw i32 %add5.1.i209.1.i, %conv4.2.i211.1.i
  %288 = load i16, ptr %incdec.ptr.2.i210.1.i, align 2
  %conv4.3.i213.1.i = zext i16 %288 to i32
  %add5.3.i214.1.i = add nuw nsw i32 %add5.2.i212.1.i, %conv4.3.i213.1.i
  br i1 %tobool6.not.i419.i, label %if.then34.i244.1.i, label %if.then.i196.1.if.then7.i216.1_crit_edge.i

if.then.i196.1.if.then7.i216.1_crit_edge.i:       ; preds = %if.then.i196.1.i
  %.pre679.i = sext i16 %left.val186.1.i to i32
  %.pre680.i = add nsw i32 %add.1.i, %.pre679.i
  %.pre681.i = sext i32 %.pre680.i to i64
  %.pre683.i = sext i16 %left.val185.1.i to i64
  br label %if.then7.i216.1.i

if.then34.i244.1.i:                               ; preds = %if.then.i196.1.i
  %add35.i245.1.i = add nuw nsw i32 %add5.3.i214.1.i, 2
  %shr36.i246.1.i = lshr i32 %add35.i245.1.i, 2
  br label %sw.epilog.1.i

if.end.thread.i247.1.i:                           ; preds = %if.then7.i.1.i
  %add40.i.1.i = add nuw nsw i32 %add23.3.i.1.i, 2
  %shr41.i.1.i = lshr i32 %add40.i.1.i, 2
  br label %if.then7.i216.1.i

if.then7.i216.1.i:                                ; preds = %if.end.thread.i247.1.i, %if.then.i196.1.if.then7.i216.1_crit_edge.i
  %idx.ext.i221.1.pre-phi.i = phi i64 [ %.pre683.i, %if.then.i196.1.if.then7.i216.1_crit_edge.i ], [ %idx.ext.i.1.i, %if.end.thread.i247.1.i ]
  %.pre-phi682.i = phi i64 [ %.pre681.i, %if.then.i196.1.if.then7.i216.1_crit_edge.i ], [ %274, %if.end.thread.i247.1.i ]
  %pred.0512.1.i = phi i32 [ %pred.0.1.i, %if.then.i196.1.if.then7.i216.1_crit_edge.i ], [ %shr41.i.1.i, %if.end.thread.i247.1.i ]
  %s0.19.i217.1.i = phi i32 [ %add5.3.i214.1.i, %if.then.i196.1.if.then7.i216.1_crit_edge.i ], [ 0, %if.end.thread.i247.1.i ]
  %289 = getelementptr ptr, ptr %7, i64 %.pre-phi682.i
  %arrayidx13.i220.1.i = getelementptr i8, ptr %289, i64 -8
  %290 = load ptr, ptr %arrayidx13.i220.1.i, align 8
  %add.ptr.i222.1.i = getelementptr inbounds i16, ptr %290, i64 %idx.ext.i221.1.pre-phi.i
  %291 = load i16, ptr %add.ptr.i222.1.i, align 2
  %conv22.i223.1.i = zext i16 %291 to i32
  %incdec.ptr21.1.i224.1.i = getelementptr inbounds i8, ptr %289, i64 8
  %292 = load ptr, ptr %289, align 8
  %add.ptr.1.i225.1.i = getelementptr inbounds i16, ptr %292, i64 %idx.ext.i221.1.pre-phi.i
  %293 = load i16, ptr %add.ptr.1.i225.1.i, align 2
  %conv22.1.i226.1.i = zext i16 %293 to i32
  %add23.1.i227.1.i = add nuw nsw i32 %conv22.1.i226.1.i, %conv22.i223.1.i
  %incdec.ptr21.2.i228.1.i = getelementptr inbounds i8, ptr %289, i64 16
  %294 = load ptr, ptr %incdec.ptr21.1.i224.1.i, align 8
  %add.ptr.2.i229.1.i = getelementptr inbounds i16, ptr %294, i64 %idx.ext.i221.1.pre-phi.i
  %295 = load i16, ptr %add.ptr.2.i229.1.i, align 2
  %conv22.2.i230.1.i = zext i16 %295 to i32
  %add23.2.i231.1.i = add nuw nsw i32 %add23.1.i227.1.i, %conv22.2.i230.1.i
  %296 = load ptr, ptr %incdec.ptr21.2.i228.1.i, align 8
  %add.ptr.3.i232.1.i = getelementptr inbounds i16, ptr %296, i64 %idx.ext.i221.1.pre-phi.i
  %297 = load i16, ptr %add.ptr.3.i232.1.i, align 2
  %conv22.3.i233.1.i = zext i16 %297 to i32
  %add23.3.i234.1.i = add nuw nsw i32 %add23.2.i231.1.i, %conv22.3.i233.1.i
  br i1 %tobool.not.i399.i, label %if.then39.i241.1.i, label %if.then30.i235.1.i

if.then30.i235.1.i:                               ; preds = %if.then7.i216.1.i
  %add31.i236.1.i = add nuw nsw i32 %s0.19.i217.1.i, 4
  %add32.i237.1.i = add nuw nsw i32 %add31.i236.1.i, %add23.3.i234.1.i
  %shr.i238.1.i = lshr i32 %add32.i237.1.i, 3
  br label %sw.epilog.1.i

if.then39.i241.1.i:                               ; preds = %if.then7.i216.1.i
  %add40.i242.1.i = add nuw nsw i32 %add23.3.i234.1.i, 2
  %shr41.i243.1.i = lshr i32 %add40.i242.1.i, 2
  br label %sw.epilog.1.i

sw.epilog.1.i:                                    ; preds = %if.then39.i241.1.i, %if.then30.i235.1.i, %if.then34.i244.1.i, %if.end.thread.i.1.i, %if.end34.sink.split.i285.1.i, %if.else.i.1.i, %if.end34.sink.split.i374.1.i, %if.else.i312.1.i, %if.then39.i500.1.i, %if.then30.i494.1.i, %if.then34.i503.1.i, %if.end.thread.i451.1.i, %sw.epilog.i
  %pred.4.1.i = phi i32 [ %181, %sw.epilog.i ], [ %pred.0.1.i, %if.then34.i244.1.i ], [ %pred.0512.1.i, %if.then39.i241.1.i ], [ %pred.0512.1.i, %if.then30.i235.1.i ], [ %pred.1517.1.i, %if.end34.sink.split.i285.1.i ], [ %pred.2530.1.i, %if.end34.sink.split.i374.1.i ], [ %pred.3.1.i, %if.then34.i503.1.i ], [ %pred.3545.1.i, %if.then39.i500.1.i ], [ %pred.3545.1.i, %if.then30.i494.1.i ], [ %181, %if.end.thread.i.1.i ], [ %181, %if.else.i.1.i ], [ %181, %if.else.i312.1.i ], [ %181, %if.end.thread.i451.1.i ]
  %pred1.4.1.i = phi i32 [ %182, %sw.epilog.i ], [ %shr36.i246.1.i, %if.then34.i244.1.i ], [ %shr41.i243.1.i, %if.then39.i241.1.i ], [ %shr.i238.1.i, %if.then30.i235.1.i ], [ %shr33.i291.1.i, %if.end34.sink.split.i285.1.i ], [ %shr33.i380.1.i, %if.end34.sink.split.i374.1.i ], [ %shr36.i505.1.i, %if.then34.i503.1.i ], [ %shr41.i502.1.i, %if.then39.i500.1.i ], [ %shr.i497.1.i, %if.then30.i494.1.i ], [ %182, %if.end.thread.i.1.i ], [ %182, %if.else.i.1.i ], [ %182, %if.else.i312.1.i ], [ %182, %if.end.thread.i451.1.i ]
  %conv90.1.i = trunc i32 %pred.4.1.i to i16
  %conv95.1.i = trunc i32 %pred1.4.1.i to i16
  %298 = zext i8 %180 to i64
  %299 = zext i8 %179 to i64
  %arrayidx92.1567.i = getelementptr inbounds ptr, ptr %9, i64 %299
  %arrayidx97.1568.i = getelementptr inbounds ptr, ptr %10, i64 %299
  %300 = load ptr, ptr %arrayidx92.1567.i, align 8
  %arrayidx94.1569.i = getelementptr inbounds i16, ptr %300, i64 %298
  store i16 %conv90.1.i, ptr %arrayidx94.1569.i, align 2
  %301 = load ptr, ptr %arrayidx97.1568.i, align 8
  %arrayidx99.1570.i = getelementptr inbounds i16, ptr %301, i64 %298
  store i16 %conv95.1.i, ptr %arrayidx99.1570.i, align 2
  %indvars.iv.next.1571.i = add nuw nsw i64 %298, 1
  %302 = load ptr, ptr %arrayidx92.1567.i, align 8
  %arrayidx94.1.1572.i = getelementptr inbounds i16, ptr %302, i64 %indvars.iv.next.1571.i
  store i16 %conv90.1.i, ptr %arrayidx94.1.1572.i, align 2
  %303 = load ptr, ptr %arrayidx97.1568.i, align 8
  %arrayidx99.1.1573.i = getelementptr inbounds i16, ptr %303, i64 %indvars.iv.next.1571.i
  store i16 %conv95.1.i, ptr %arrayidx99.1.1573.i, align 2
  %indvars.iv.next.1.1574.i = add nuw nsw i64 %298, 2
  %304 = load ptr, ptr %arrayidx92.1567.i, align 8
  %arrayidx94.2.1575.i = getelementptr inbounds i16, ptr %304, i64 %indvars.iv.next.1.1574.i
  store i16 %conv90.1.i, ptr %arrayidx94.2.1575.i, align 2
  %305 = load ptr, ptr %arrayidx97.1568.i, align 8
  %arrayidx99.2.1576.i = getelementptr inbounds i16, ptr %305, i64 %indvars.iv.next.1.1574.i
  store i16 %conv95.1.i, ptr %arrayidx99.2.1576.i, align 2
  %indvars.iv.next.2.1577.i = add nuw nsw i64 %298, 3
  %306 = load ptr, ptr %arrayidx92.1567.i, align 8
  %arrayidx94.3.1578.i = getelementptr inbounds i16, ptr %306, i64 %indvars.iv.next.2.1577.i
  store i16 %conv90.1.i, ptr %arrayidx94.3.1578.i, align 2
  %307 = load ptr, ptr %arrayidx97.1568.i, align 8
  %arrayidx99.3.1579.i = getelementptr inbounds i16, ptr %307, i64 %indvars.iv.next.2.1577.i
  store i16 %conv95.1.i, ptr %arrayidx99.3.1579.i, align 2
  %indvars.iv.next555.1580.i = add nuw nsw i64 %299, 1
  %arrayidx92.1.1.i = getelementptr inbounds ptr, ptr %9, i64 %indvars.iv.next555.1580.i
  %arrayidx97.1.1.i = getelementptr inbounds ptr, ptr %10, i64 %indvars.iv.next555.1580.i
  %308 = load ptr, ptr %arrayidx92.1.1.i, align 8
  %arrayidx94.1557.1.i = getelementptr inbounds i16, ptr %308, i64 %298
  store i16 %conv90.1.i, ptr %arrayidx94.1557.1.i, align 2
  %309 = load ptr, ptr %arrayidx97.1.1.i, align 8
  %arrayidx99.1558.1.i = getelementptr inbounds i16, ptr %309, i64 %298
  store i16 %conv95.1.i, ptr %arrayidx99.1558.1.i, align 2
  %310 = load ptr, ptr %arrayidx92.1.1.i, align 8
  %arrayidx94.1.1.1.i = getelementptr inbounds i16, ptr %310, i64 %indvars.iv.next.1571.i
  store i16 %conv90.1.i, ptr %arrayidx94.1.1.1.i, align 2
  %311 = load ptr, ptr %arrayidx97.1.1.i, align 8
  %arrayidx99.1.1.1.i = getelementptr inbounds i16, ptr %311, i64 %indvars.iv.next.1571.i
  store i16 %conv95.1.i, ptr %arrayidx99.1.1.1.i, align 2
  %312 = load ptr, ptr %arrayidx92.1.1.i, align 8
  %arrayidx94.2.1.1.i = getelementptr inbounds i16, ptr %312, i64 %indvars.iv.next.1.1574.i
  store i16 %conv90.1.i, ptr %arrayidx94.2.1.1.i, align 2
  %313 = load ptr, ptr %arrayidx97.1.1.i, align 8
  %arrayidx99.2.1.1.i = getelementptr inbounds i16, ptr %313, i64 %indvars.iv.next.1.1574.i
  store i16 %conv95.1.i, ptr %arrayidx99.2.1.1.i, align 2
  %314 = load ptr, ptr %arrayidx92.1.1.i, align 8
  %arrayidx94.3.1.1.i = getelementptr inbounds i16, ptr %314, i64 %indvars.iv.next.2.1577.i
  store i16 %conv90.1.i, ptr %arrayidx94.3.1.1.i, align 2
  %315 = load ptr, ptr %arrayidx97.1.1.i, align 8
  %arrayidx99.3.1.1.i = getelementptr inbounds i16, ptr %315, i64 %indvars.iv.next.2.1577.i
  store i16 %conv95.1.i, ptr %arrayidx99.3.1.1.i, align 2
  %indvars.iv.next555.1.1.i = add nuw nsw i64 %299, 2
  %arrayidx92.2.1.i = getelementptr inbounds ptr, ptr %9, i64 %indvars.iv.next555.1.1.i
  %arrayidx97.2.1.i = getelementptr inbounds ptr, ptr %10, i64 %indvars.iv.next555.1.1.i
  %316 = load ptr, ptr %arrayidx92.2.1.i, align 8
  %arrayidx94.2560.1.i = getelementptr inbounds i16, ptr %316, i64 %298
  store i16 %conv90.1.i, ptr %arrayidx94.2560.1.i, align 2
  %317 = load ptr, ptr %arrayidx97.2.1.i, align 8
  %arrayidx99.2561.1.i = getelementptr inbounds i16, ptr %317, i64 %298
  store i16 %conv95.1.i, ptr %arrayidx99.2561.1.i, align 2
  %318 = load ptr, ptr %arrayidx92.2.1.i, align 8
  %arrayidx94.1.2.1.i = getelementptr inbounds i16, ptr %318, i64 %indvars.iv.next.1571.i
  store i16 %conv90.1.i, ptr %arrayidx94.1.2.1.i, align 2
  %319 = load ptr, ptr %arrayidx97.2.1.i, align 8
  %arrayidx99.1.2.1.i = getelementptr inbounds i16, ptr %319, i64 %indvars.iv.next.1571.i
  store i16 %conv95.1.i, ptr %arrayidx99.1.2.1.i, align 2
  %320 = load ptr, ptr %arrayidx92.2.1.i, align 8
  %arrayidx94.2.2.1.i = getelementptr inbounds i16, ptr %320, i64 %indvars.iv.next.1.1574.i
  store i16 %conv90.1.i, ptr %arrayidx94.2.2.1.i, align 2
  %321 = load ptr, ptr %arrayidx97.2.1.i, align 8
  %arrayidx99.2.2.1.i = getelementptr inbounds i16, ptr %321, i64 %indvars.iv.next.1.1574.i
  store i16 %conv95.1.i, ptr %arrayidx99.2.2.1.i, align 2
  %322 = load ptr, ptr %arrayidx92.2.1.i, align 8
  %arrayidx94.3.2.1.i = getelementptr inbounds i16, ptr %322, i64 %indvars.iv.next.2.1577.i
  store i16 %conv90.1.i, ptr %arrayidx94.3.2.1.i, align 2
  %323 = load ptr, ptr %arrayidx97.2.1.i, align 8
  %arrayidx99.3.2.1.i = getelementptr inbounds i16, ptr %323, i64 %indvars.iv.next.2.1577.i
  store i16 %conv95.1.i, ptr %arrayidx99.3.2.1.i, align 2
  %indvars.iv.next555.2.1.i = add nuw nsw i64 %299, 3
  %arrayidx92.3.1.i = getelementptr inbounds ptr, ptr %9, i64 %indvars.iv.next555.2.1.i
  %arrayidx97.3.1.i = getelementptr inbounds ptr, ptr %10, i64 %indvars.iv.next555.2.1.i
  %324 = load ptr, ptr %arrayidx92.3.1.i, align 8
  %arrayidx94.3563.1.i = getelementptr inbounds i16, ptr %324, i64 %298
  store i16 %conv90.1.i, ptr %arrayidx94.3563.1.i, align 2
  %325 = load ptr, ptr %arrayidx97.3.1.i, align 8
  %arrayidx99.3564.1.i = getelementptr inbounds i16, ptr %325, i64 %298
  store i16 %conv95.1.i, ptr %arrayidx99.3564.1.i, align 2
  %326 = load ptr, ptr %arrayidx92.3.1.i, align 8
  %arrayidx94.1.3.1.i = getelementptr inbounds i16, ptr %326, i64 %indvars.iv.next.1571.i
  store i16 %conv90.1.i, ptr %arrayidx94.1.3.1.i, align 2
  %327 = load ptr, ptr %arrayidx97.3.1.i, align 8
  %arrayidx99.1.3.1.i = getelementptr inbounds i16, ptr %327, i64 %indvars.iv.next.1571.i
  store i16 %conv95.1.i, ptr %arrayidx99.1.3.1.i, align 2
  %328 = load ptr, ptr %arrayidx92.3.1.i, align 8
  %arrayidx94.2.3.1.i = getelementptr inbounds i16, ptr %328, i64 %indvars.iv.next.1.1574.i
  store i16 %conv90.1.i, ptr %arrayidx94.2.3.1.i, align 2
  %329 = load ptr, ptr %arrayidx97.3.1.i, align 8
  %arrayidx99.2.3.1.i = getelementptr inbounds i16, ptr %329, i64 %indvars.iv.next.1.1574.i
  store i16 %conv95.1.i, ptr %arrayidx99.2.3.1.i, align 2
  %330 = load ptr, ptr %arrayidx92.3.1.i, align 8
  %arrayidx94.3.3.1.i = getelementptr inbounds i16, ptr %330, i64 %indvars.iv.next.2.1577.i
  store i16 %conv90.1.i, ptr %arrayidx94.3.3.1.i, align 2
  %331 = load ptr, ptr %arrayidx97.3.1.i, align 8
  %arrayidx99.3.3.1.i = getelementptr inbounds i16, ptr %331, i64 %indvars.iv.next.2.1577.i
  store i16 %conv95.1.i, ptr %arrayidx99.3.3.1.i, align 2
  %arrayidx52.2.i = getelementptr inbounds [3 x [8 x [4 x i8]]], ptr @subblk_offset_y, i64 0, i64 %idxprom47.i, i64 %indvars.iv.i, i64 2
  %332 = load i8, ptr %arrayidx52.2.i, align 2
  %conv53.2.i = zext i8 %332 to i32
  %arrayidx59.2.i = getelementptr inbounds [3 x [8 x [4 x i8]]], ptr @subblk_offset_x, i64 0, i64 %idxprom47.i, i64 %indvars.iv.i, i64 2
  %333 = load i8, ptr %arrayidx59.2.i, align 2
  %conv60.2.i = zext i8 %333 to i32
  %334 = load i32, ptr %arrayidx61.i, align 4
  %335 = load i32, ptr %arrayidx63.i, align 4
  %arrayidx69.2.i = getelementptr inbounds [3 x [4 x [4 x i32]]], ptr @intrapred_chroma_dc.block_pos, i64 0, i64 %idxprom47.i, i64 %indvars.iv.i, i64 2
  %336 = load i32, ptr %arrayidx69.2.i, align 8
  switch i32 %336, label %sw.epilog.2.i [
    i32 0, label %sw.bb.2.i
    i32 1, label %sw.bb71.2.i
    i32 2, label %sw.bb74.2.i
    i32 3, label %sw.bb77.2.i
  ]

sw.bb77.2.i:                                      ; preds = %sw.epilog.1.i
  %add78.2.i = add nuw nsw i32 %conv53.2.i, 1
  %337 = load i64, ptr %23, align 4
  %left.val181.2.i = load i16, ptr %24, align 4
  %left.val182.2.i = load i16, ptr %25, align 2
  br i1 %tobool.not.i399.i, label %if.end.thread.i451.2.i, label %if.then.i400.2.i

if.then.i400.2.i:                                 ; preds = %sw.bb77.2.i
  %idxprom.i401.2.i = ashr i64 %337, 48
  %arrayidx.i402.2.i = getelementptr inbounds ptr, ptr %6, i64 %idxprom.i401.2.i
  %338 = load ptr, ptr %arrayidx.i402.2.i, align 8
  %sh.diff.i403.2.i = lshr i64 %337, 16
  %tr.sh.diff.i404.2.i = trunc i64 %sh.diff.i403.2.i to i32
  %conv.i405.2.i = ashr i32 %tr.sh.diff.i404.2.i, 16
  %add.i406.2.i = add nsw i32 %conv.i405.2.i, %conv60.2.i
  %idxprom1.i407.2.i = sext i32 %add.i406.2.i to i64
  %arrayidx2.i408.2.i = getelementptr inbounds i16, ptr %338, i64 %idxprom1.i407.2.i
  %339 = load <4 x i16>, ptr %arrayidx2.i408.2.i, align 2
  %340 = zext <4 x i16> %339 to <4 x i32>
  %341 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %340)
  br i1 %tobool6.not.i419.i, label %if.then34.i448.2.i, label %if.then7.i420.2.i

if.then34.i448.2.i:                               ; preds = %if.then.i400.2.i
  %add35.i449.2.i = add nuw nsw i32 %341, 2
  %shr36.i450.2.i = lshr i32 %add35.i449.2.i, 2
  br label %if.then.i455.2.i

if.end.thread.i451.2.i:                           ; preds = %sw.bb77.2.i
  br i1 %tobool6.not.i419.i, label %sw.epilog.2.i, label %if.then7.i420.2.i

if.then7.i420.2.i:                                ; preds = %if.end.thread.i451.2.i, %if.then.i400.2.i
  %s0.19.i421.2.i = phi i32 [ 0, %if.end.thread.i451.2.i ], [ %341, %if.then.i400.2.i ]
  %conv10.i422.2.i = sext i16 %left.val182.2.i to i32
  %add11.i423.2.i = add nsw i32 %add78.2.i, %conv10.i422.2.i
  %342 = sext i32 %add11.i423.2.i to i64
  %343 = getelementptr ptr, ptr %6, i64 %342
  %arrayidx13.i424.2.i = getelementptr i8, ptr %343, i64 -8
  %idx.ext.i425.2.i = sext i16 %left.val181.2.i to i64
  %344 = load ptr, ptr %arrayidx13.i424.2.i, align 8
  %add.ptr.i426.2.i = getelementptr inbounds i16, ptr %344, i64 %idx.ext.i425.2.i
  %345 = load i16, ptr %add.ptr.i426.2.i, align 2
  %conv22.i427.2.i = zext i16 %345 to i32
  %incdec.ptr21.1.i428.2.i = getelementptr inbounds i8, ptr %343, i64 8
  %346 = load ptr, ptr %343, align 8
  %add.ptr.1.i429.2.i = getelementptr inbounds i16, ptr %346, i64 %idx.ext.i425.2.i
  %347 = load i16, ptr %add.ptr.1.i429.2.i, align 2
  %conv22.1.i430.2.i = zext i16 %347 to i32
  %add23.1.i431.2.i = add nuw nsw i32 %conv22.1.i430.2.i, %conv22.i427.2.i
  %incdec.ptr21.2.i432.2.i = getelementptr inbounds i8, ptr %343, i64 16
  %348 = load ptr, ptr %incdec.ptr21.1.i428.2.i, align 8
  %add.ptr.2.i433.2.i = getelementptr inbounds i16, ptr %348, i64 %idx.ext.i425.2.i
  %349 = load i16, ptr %add.ptr.2.i433.2.i, align 2
  %conv22.2.i434.2.i = zext i16 %349 to i32
  %add23.2.i435.2.i = add nuw nsw i32 %add23.1.i431.2.i, %conv22.2.i434.2.i
  %350 = load ptr, ptr %incdec.ptr21.2.i432.2.i, align 8
  %add.ptr.3.i436.2.i = getelementptr inbounds i16, ptr %350, i64 %idx.ext.i425.2.i
  %351 = load i16, ptr %add.ptr.3.i436.2.i, align 2
  %conv22.3.i437.2.i = zext i16 %351 to i32
  %add23.3.i438.2.i = add nuw nsw i32 %add23.2.i435.2.i, %conv22.3.i437.2.i
  br i1 %tobool.not.i399.i, label %if.end.thread.i506.2.i, label %if.then30.i439.2.i

if.then30.i439.2.i:                               ; preds = %if.then7.i420.2.i
  %add31.i440.2.i = add nuw nsw i32 %s0.19.i421.2.i, 4
  %add32.i441.2.i = add nuw nsw i32 %add31.i440.2.i, %add23.3.i438.2.i
  %shr.i442.2.i = lshr i32 %add32.i441.2.i, 3
  %.pre616.i = ashr i64 %337, 48
  %.pre635.i = lshr i64 %337, 16
  %.pre636.i = trunc i64 %.pre635.i to i32
  %.pre637.i = ashr i32 %.pre636.i, 16
  %.pre638.i = add nsw i32 %.pre637.i, %conv60.2.i
  %.pre639.i = sext i32 %.pre638.i to i64
  br label %if.then.i455.2.i

if.then.i455.2.i:                                 ; preds = %if.then30.i439.2.i, %if.then34.i448.2.i
  %idxprom1.i462.2.pre-phi.i = phi i64 [ %.pre639.i, %if.then30.i439.2.i ], [ %idxprom1.i407.2.i, %if.then34.i448.2.i ]
  %idxprom.i456.2.pre-phi.i = phi i64 [ %.pre616.i, %if.then30.i439.2.i ], [ %idxprom.i401.2.i, %if.then34.i448.2.i ]
  %pred.3.2.i = phi i32 [ %shr.i442.2.i, %if.then30.i439.2.i ], [ %shr36.i450.2.i, %if.then34.i448.2.i ]
  %arrayidx.i457.2.i = getelementptr inbounds ptr, ptr %7, i64 %idxprom.i456.2.pre-phi.i
  %352 = load ptr, ptr %arrayidx.i457.2.i, align 8
  %arrayidx2.i463.2.i = getelementptr inbounds i16, ptr %352, i64 %idxprom1.i462.2.pre-phi.i
  %incdec.ptr.i464.2.i = getelementptr inbounds i8, ptr %arrayidx2.i463.2.i, i64 2
  %353 = load i16, ptr %arrayidx2.i463.2.i, align 2
  %conv4.i465.2.i = zext i16 %353 to i32
  %incdec.ptr.1.i466.2.i = getelementptr inbounds i8, ptr %arrayidx2.i463.2.i, i64 4
  %354 = load i16, ptr %incdec.ptr.i464.2.i, align 2
  %conv4.1.i467.2.i = zext i16 %354 to i32
  %add5.1.i468.2.i = add nuw nsw i32 %conv4.1.i467.2.i, %conv4.i465.2.i
  %incdec.ptr.2.i469.2.i = getelementptr inbounds i8, ptr %arrayidx2.i463.2.i, i64 6
  %355 = load i16, ptr %incdec.ptr.1.i466.2.i, align 2
  %conv4.2.i470.2.i = zext i16 %355 to i32
  %add5.2.i471.2.i = add nuw nsw i32 %add5.1.i468.2.i, %conv4.2.i470.2.i
  %356 = load i16, ptr %incdec.ptr.2.i469.2.i, align 2
  %conv4.3.i472.2.i = zext i16 %356 to i32
  %add5.3.i473.2.i = add nuw nsw i32 %add5.2.i471.2.i, %conv4.3.i472.2.i
  br i1 %tobool6.not.i419.i, label %if.then34.i503.2.i, label %if.then.i455.2.if.then7.i475.2_crit_edge.i

if.then.i455.2.if.then7.i475.2_crit_edge.i:       ; preds = %if.then.i455.2.i
  %.pre674.i = sext i16 %left.val182.2.i to i32
  %.pre675.i = add nsw i32 %add78.2.i, %.pre674.i
  %.pre676.i = sext i32 %.pre675.i to i64
  %.pre678.i = sext i16 %left.val181.2.i to i64
  br label %if.then7.i475.2.i

if.then34.i503.2.i:                               ; preds = %if.then.i455.2.i
  %add35.i504.2.i = add nuw nsw i32 %add5.3.i473.2.i, 2
  %shr36.i505.2.i = lshr i32 %add35.i504.2.i, 2
  br label %sw.epilog.2.i

if.end.thread.i506.2.i:                           ; preds = %if.then7.i420.2.i
  %add40.i446.2.i = add nuw nsw i32 %add23.3.i438.2.i, 2
  %shr41.i447.2.i = lshr i32 %add40.i446.2.i, 2
  br label %if.then7.i475.2.i

if.then7.i475.2.i:                                ; preds = %if.end.thread.i506.2.i, %if.then.i455.2.if.then7.i475.2_crit_edge.i
  %idx.ext.i480.2.pre-phi.i = phi i64 [ %.pre678.i, %if.then.i455.2.if.then7.i475.2_crit_edge.i ], [ %idx.ext.i425.2.i, %if.end.thread.i506.2.i ]
  %.pre-phi677.i = phi i64 [ %.pre676.i, %if.then.i455.2.if.then7.i475.2_crit_edge.i ], [ %342, %if.end.thread.i506.2.i ]
  %pred.3545.2.i = phi i32 [ %pred.3.2.i, %if.then.i455.2.if.then7.i475.2_crit_edge.i ], [ %shr41.i447.2.i, %if.end.thread.i506.2.i ]
  %s0.19.i476.2.i = phi i32 [ %add5.3.i473.2.i, %if.then.i455.2.if.then7.i475.2_crit_edge.i ], [ 0, %if.end.thread.i506.2.i ]
  %357 = getelementptr ptr, ptr %7, i64 %.pre-phi677.i
  %arrayidx13.i479.2.i = getelementptr i8, ptr %357, i64 -8
  %358 = load ptr, ptr %arrayidx13.i479.2.i, align 8
  %add.ptr.i481.2.i = getelementptr inbounds i16, ptr %358, i64 %idx.ext.i480.2.pre-phi.i
  %359 = load i16, ptr %add.ptr.i481.2.i, align 2
  %conv22.i482.2.i = zext i16 %359 to i32
  %incdec.ptr21.1.i483.2.i = getelementptr inbounds i8, ptr %357, i64 8
  %360 = load ptr, ptr %357, align 8
  %add.ptr.1.i484.2.i = getelementptr inbounds i16, ptr %360, i64 %idx.ext.i480.2.pre-phi.i
  %361 = load i16, ptr %add.ptr.1.i484.2.i, align 2
  %conv22.1.i485.2.i = zext i16 %361 to i32
  %add23.1.i486.2.i = add nuw nsw i32 %conv22.1.i485.2.i, %conv22.i482.2.i
  %incdec.ptr21.2.i487.2.i = getelementptr inbounds i8, ptr %357, i64 16
  %362 = load ptr, ptr %incdec.ptr21.1.i483.2.i, align 8
  %add.ptr.2.i488.2.i = getelementptr inbounds i16, ptr %362, i64 %idx.ext.i480.2.pre-phi.i
  %363 = load i16, ptr %add.ptr.2.i488.2.i, align 2
  %conv22.2.i489.2.i = zext i16 %363 to i32
  %add23.2.i490.2.i = add nuw nsw i32 %add23.1.i486.2.i, %conv22.2.i489.2.i
  %364 = load ptr, ptr %incdec.ptr21.2.i487.2.i, align 8
  %add.ptr.3.i491.2.i = getelementptr inbounds i16, ptr %364, i64 %idx.ext.i480.2.pre-phi.i
  %365 = load i16, ptr %add.ptr.3.i491.2.i, align 2
  %conv22.3.i492.2.i = zext i16 %365 to i32
  %add23.3.i493.2.i = add nuw nsw i32 %add23.2.i490.2.i, %conv22.3.i492.2.i
  br i1 %tobool.not.i399.i, label %if.then39.i500.2.i, label %if.then30.i494.2.i

if.then30.i494.2.i:                               ; preds = %if.then7.i475.2.i
  %add31.i495.2.i = add nuw nsw i32 %s0.19.i476.2.i, 4
  %add32.i496.2.i = add nuw nsw i32 %add31.i495.2.i, %add23.3.i493.2.i
  %shr.i497.2.i = lshr i32 %add32.i496.2.i, 3
  br label %sw.epilog.2.i

if.then39.i500.2.i:                               ; preds = %if.then7.i475.2.i
  %add40.i501.2.i = add nuw nsw i32 %add23.3.i493.2.i, 2
  %shr41.i502.2.i = lshr i32 %add40.i501.2.i, 2
  br label %sw.epilog.2.i

sw.bb74.2.i:                                      ; preds = %sw.epilog.1.i
  %add75.2.i = add nuw nsw i32 %conv53.2.i, 1
  %left.val189.2.i = load i16, ptr %24, align 4
  %left.val190.2.i = load i16, ptr %25, align 2
  br i1 %or.cond46.i.i, label %if.then.i381.2.i, label %if.else.i312.2.i

if.else.i312.2.i:                                 ; preds = %sw.bb74.2.i
  br i1 %tobool6.not.i419.i, label %sw.epilog.2.i, label %if.then12.i358.2.i

if.then12.i358.2.i:                               ; preds = %if.else.i312.2.i
  %conv15.i314.2.i = sext i16 %left.val190.2.i to i32
  %add16.i315.2.i = add nsw i32 %add75.2.i, %conv15.i314.2.i
  %366 = sext i32 %add16.i315.2.i to i64
  %367 = getelementptr ptr, ptr %6, i64 %366
  %arrayidx18.i316.2.i = getelementptr i8, ptr %367, i64 -8
  %idx.ext.i317.2.i = sext i16 %left.val189.2.i to i64
  %368 = load ptr, ptr %arrayidx18.i316.2.i, align 8
  %add.ptr.i318.2.i = getelementptr inbounds i16, ptr %368, i64 %idx.ext.i317.2.i
  %369 = load i16, ptr %add.ptr.i318.2.i, align 2
  %conv27.i319.2.i = zext i16 %369 to i32
  %incdec.ptr26.1.i320.2.i = getelementptr inbounds i8, ptr %367, i64 8
  %370 = load ptr, ptr %367, align 8
  %add.ptr.1.i321.2.i = getelementptr inbounds i16, ptr %370, i64 %idx.ext.i317.2.i
  %371 = load i16, ptr %add.ptr.1.i321.2.i, align 2
  %conv27.1.i322.2.i = zext i16 %371 to i32
  %add28.1.i323.2.i = add nuw nsw i32 %conv27.1.i322.2.i, %conv27.i319.2.i
  %incdec.ptr26.2.i324.2.i = getelementptr inbounds i8, ptr %367, i64 16
  %372 = load ptr, ptr %incdec.ptr26.1.i320.2.i, align 8
  %add.ptr.2.i325.2.i = getelementptr inbounds i16, ptr %372, i64 %idx.ext.i317.2.i
  %373 = load i16, ptr %add.ptr.2.i325.2.i, align 2
  %conv27.2.i326.2.i = zext i16 %373 to i32
  %add28.2.i327.2.i = add nuw nsw i32 %add28.1.i323.2.i, %conv27.2.i326.2.i
  %374 = load ptr, ptr %incdec.ptr26.2.i324.2.i, align 8
  %add.ptr.3.i328.2.i = getelementptr inbounds i16, ptr %374, i64 %idx.ext.i317.2.i
  %375 = load i16, ptr %add.ptr.3.i328.2.i, align 2
  %conv27.3.i332.2.i = zext i16 %375 to i32
  %add28.3.i333.2.i = add nuw nsw i32 %add28.2.i327.2.i, %conv27.3.i332.2.i
  %376 = getelementptr ptr, ptr %7, i64 %366
  %arrayidx18.i361.2.i = getelementptr i8, ptr %376, i64 -8
  %377 = load ptr, ptr %arrayidx18.i361.2.i, align 8
  %add.ptr.i363.2.i = getelementptr inbounds i16, ptr %377, i64 %idx.ext.i317.2.i
  %378 = load i16, ptr %add.ptr.i363.2.i, align 2
  %conv27.i364.2.i = zext i16 %378 to i32
  %incdec.ptr26.1.i365.2.i = getelementptr inbounds i8, ptr %376, i64 8
  %379 = load ptr, ptr %376, align 8
  %add.ptr.1.i366.2.i = getelementptr inbounds i16, ptr %379, i64 %idx.ext.i317.2.i
  %380 = load i16, ptr %add.ptr.1.i366.2.i, align 2
  %conv27.1.i367.2.i = zext i16 %380 to i32
  %add28.1.i368.2.i = add nuw nsw i32 %conv27.1.i367.2.i, %conv27.i364.2.i
  %incdec.ptr26.2.i369.2.i = getelementptr inbounds i8, ptr %376, i64 16
  %381 = load ptr, ptr %incdec.ptr26.1.i365.2.i, align 8
  %add.ptr.2.i370.2.i = getelementptr inbounds i16, ptr %381, i64 %idx.ext.i317.2.i
  %382 = load i16, ptr %add.ptr.2.i370.2.i, align 2
  %conv27.2.i371.2.i = zext i16 %382 to i32
  %add28.2.i372.2.i = add nuw nsw i32 %add28.1.i368.2.i, %conv27.2.i371.2.i
  %383 = load ptr, ptr %incdec.ptr26.2.i369.2.i, align 8
  %add.ptr.3.i373.2.i = getelementptr inbounds i16, ptr %383, i64 %idx.ext.i317.2.i
  br label %if.end34.sink.split.i374.2.i

if.then.i381.2.i:                                 ; preds = %sw.bb74.2.i
  %384 = load i64, ptr %23, align 4
  %idxprom.i337.2.i = ashr i64 %384, 48
  %arrayidx.i338.2.i = getelementptr inbounds ptr, ptr %6, i64 %idxprom.i337.2.i
  %385 = load ptr, ptr %arrayidx.i338.2.i, align 8
  %sh.diff.i339.2.i = lshr i64 %384, 16
  %tr.sh.diff.i340.2.i = trunc i64 %sh.diff.i339.2.i to i32
  %conv.i341.2.i = ashr i32 %tr.sh.diff.i340.2.i, 16
  %add.i342.2.i = add nsw i32 %conv.i341.2.i, %conv60.2.i
  %idxprom5.i343.2.i = sext i32 %add.i342.2.i to i64
  %arrayidx6.i344.2.i = getelementptr inbounds i16, ptr %385, i64 %idxprom5.i343.2.i
  %386 = load <4 x i16>, ptr %arrayidx6.i344.2.i, align 2
  %387 = zext <4 x i16> %386 to <4 x i32>
  %388 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %387)
  %arrayidx.i383.2.i = getelementptr inbounds ptr, ptr %7, i64 %idxprom.i337.2.i
  %389 = load ptr, ptr %arrayidx.i383.2.i, align 8
  %arrayidx6.i389.2.i = getelementptr inbounds i16, ptr %389, i64 %idxprom5.i343.2.i
  %incdec.ptr.i390.2.i = getelementptr inbounds i8, ptr %arrayidx6.i389.2.i, i64 2
  %390 = load i16, ptr %arrayidx6.i389.2.i, align 2
  %conv8.i391.2.i = zext i16 %390 to i32
  %incdec.ptr.1.i392.2.i = getelementptr inbounds i8, ptr %arrayidx6.i389.2.i, i64 4
  %391 = load i16, ptr %incdec.ptr.i390.2.i, align 2
  %conv8.1.i393.2.i = zext i16 %391 to i32
  %add9.1.i394.2.i = add nuw nsw i32 %conv8.1.i393.2.i, %conv8.i391.2.i
  %incdec.ptr.2.i395.2.i = getelementptr inbounds i8, ptr %arrayidx6.i389.2.i, i64 6
  %392 = load i16, ptr %incdec.ptr.1.i392.2.i, align 2
  %conv8.2.i396.2.i = zext i16 %392 to i32
  %add9.2.i397.2.i = add nuw nsw i32 %add9.1.i394.2.i, %conv8.2.i396.2.i
  br label %if.end34.sink.split.i374.2.i

if.end34.sink.split.i374.2.i:                     ; preds = %if.then.i381.2.i, %if.then12.i358.2.i
  %pred.2530.in.in.2.i = phi i32 [ %add28.3.i333.2.i, %if.then12.i358.2.i ], [ %388, %if.then.i381.2.i ]
  %add.ptr.3.sink.i375.2.i = phi ptr [ %add.ptr.3.i373.2.i, %if.then12.i358.2.i ], [ %incdec.ptr.2.i395.2.i, %if.then.i381.2.i ]
  %add28.2.sink.i376.2.i = phi i32 [ %add28.2.i372.2.i, %if.then12.i358.2.i ], [ %add9.2.i397.2.i, %if.then.i381.2.i ]
  %pred.2530.in.2.i = add nuw nsw i32 %pred.2530.in.in.2.i, 2
  %pred.2530.2.i = lshr i32 %pred.2530.in.2.i, 2
  %393 = load i16, ptr %add.ptr.3.sink.i375.2.i, align 2
  %conv27.3.i377.2.i = zext i16 %393 to i32
  %add28.3.i378.2.i = add nuw nsw i32 %add28.2.sink.i376.2.i, 2
  %add32.i379.2.i = add nuw nsw i32 %add28.3.i378.2.i, %conv27.3.i377.2.i
  %shr33.i380.2.i = lshr i32 %add32.i379.2.i, 2
  br label %sw.epilog.2.i

sw.bb71.2.i:                                      ; preds = %sw.epilog.1.i
  %add72.2.i = add nuw nsw i32 %conv53.2.i, 1
  %left.val193.2.i = load i16, ptr %24, align 4
  %left.val194.2.i = load i16, ptr %25, align 2
  br i1 %tobool.not.i399.i, label %if.else.i.2.i, label %if.then.i292.2.i

if.then.i292.2.i:                                 ; preds = %sw.bb71.2.i
  %394 = load i64, ptr %23, align 4
  %idxprom.i257.2.i = ashr i64 %394, 48
  %arrayidx.i258.2.i = getelementptr inbounds ptr, ptr %6, i64 %idxprom.i257.2.i
  %395 = load ptr, ptr %arrayidx.i258.2.i, align 8
  %sh.diff.i259.2.i = lshr i64 %394, 16
  %tr.sh.diff.i260.2.i = trunc i64 %sh.diff.i259.2.i to i32
  %conv.i261.2.i = ashr i32 %tr.sh.diff.i260.2.i, 16
  %add.i262.2.i = add nsw i32 %conv.i261.2.i, %conv60.2.i
  %idxprom5.i.2.i = sext i32 %add.i262.2.i to i64
  %arrayidx6.i.2.i = getelementptr inbounds i16, ptr %395, i64 %idxprom5.i.2.i
  %396 = load <4 x i16>, ptr %arrayidx6.i.2.i, align 2
  %397 = zext <4 x i16> %396 to <4 x i32>
  %398 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %397)
  %arrayidx.i294.2.i = getelementptr inbounds ptr, ptr %7, i64 %idxprom.i257.2.i
  %399 = load ptr, ptr %arrayidx.i294.2.i, align 8
  %arrayidx6.i300.2.i = getelementptr inbounds i16, ptr %399, i64 %idxprom5.i.2.i
  %incdec.ptr.i301.2.i = getelementptr inbounds i8, ptr %arrayidx6.i300.2.i, i64 2
  %400 = load i16, ptr %arrayidx6.i300.2.i, align 2
  %conv8.i302.2.i = zext i16 %400 to i32
  %incdec.ptr.1.i303.2.i = getelementptr inbounds i8, ptr %arrayidx6.i300.2.i, i64 4
  %401 = load i16, ptr %incdec.ptr.i301.2.i, align 2
  %conv8.1.i304.2.i = zext i16 %401 to i32
  %add9.1.i305.2.i = add nuw nsw i32 %conv8.1.i304.2.i, %conv8.i302.2.i
  %incdec.ptr.2.i306.2.i = getelementptr inbounds i8, ptr %arrayidx6.i300.2.i, i64 6
  %402 = load i16, ptr %incdec.ptr.1.i303.2.i, align 2
  %conv8.2.i307.2.i = zext i16 %402 to i32
  %add9.2.i308.2.i = add nuw nsw i32 %add9.1.i305.2.i, %conv8.2.i307.2.i
  br label %if.end34.sink.split.i285.2.i

if.else.i.2.i:                                    ; preds = %sw.bb71.2.i
  br i1 %tobool6.not.i419.i, label %sw.epilog.2.i, label %if.then12.i269.2.i

if.then12.i269.2.i:                               ; preds = %if.else.i.2.i
  %conv15.i.2.i = sext i16 %left.val194.2.i to i32
  %add16.i.2.i = add nsw i32 %add72.2.i, %conv15.i.2.i
  %403 = sext i32 %add16.i.2.i to i64
  %404 = getelementptr ptr, ptr %6, i64 %403
  %arrayidx18.i.2.i = getelementptr i8, ptr %404, i64 -8
  %idx.ext.i250.2.i = sext i16 %left.val193.2.i to i64
  %405 = load ptr, ptr %arrayidx18.i.2.i, align 8
  %add.ptr.i251.2.i = getelementptr inbounds i16, ptr %405, i64 %idx.ext.i250.2.i
  %406 = load i16, ptr %add.ptr.i251.2.i, align 2
  %conv27.i.2.i = zext i16 %406 to i32
  %incdec.ptr26.1.i.2.i = getelementptr inbounds i8, ptr %404, i64 8
  %407 = load ptr, ptr %404, align 8
  %add.ptr.1.i252.2.i = getelementptr inbounds i16, ptr %407, i64 %idx.ext.i250.2.i
  %408 = load i16, ptr %add.ptr.1.i252.2.i, align 2
  %conv27.1.i.2.i = zext i16 %408 to i32
  %add28.1.i.2.i = add nuw nsw i32 %conv27.1.i.2.i, %conv27.i.2.i
  %incdec.ptr26.2.i.2.i = getelementptr inbounds i8, ptr %404, i64 16
  %409 = load ptr, ptr %incdec.ptr26.1.i.2.i, align 8
  %add.ptr.2.i253.2.i = getelementptr inbounds i16, ptr %409, i64 %idx.ext.i250.2.i
  %410 = load i16, ptr %add.ptr.2.i253.2.i, align 2
  %conv27.2.i.2.i = zext i16 %410 to i32
  %add28.2.i.2.i = add nuw nsw i32 %add28.1.i.2.i, %conv27.2.i.2.i
  %411 = load ptr, ptr %incdec.ptr26.2.i.2.i, align 8
  %add.ptr.3.i254.2.i = getelementptr inbounds i16, ptr %411, i64 %idx.ext.i250.2.i
  %412 = load i16, ptr %add.ptr.3.i254.2.i, align 2
  %conv27.3.i.2.i = zext i16 %412 to i32
  %add28.3.i.2.i = add nuw nsw i32 %add28.2.i.2.i, %conv27.3.i.2.i
  %413 = getelementptr ptr, ptr %7, i64 %403
  %arrayidx18.i272.2.i = getelementptr i8, ptr %413, i64 -8
  %414 = load ptr, ptr %arrayidx18.i272.2.i, align 8
  %add.ptr.i274.2.i = getelementptr inbounds i16, ptr %414, i64 %idx.ext.i250.2.i
  %415 = load i16, ptr %add.ptr.i274.2.i, align 2
  %conv27.i275.2.i = zext i16 %415 to i32
  %incdec.ptr26.1.i276.2.i = getelementptr inbounds i8, ptr %413, i64 8
  %416 = load ptr, ptr %413, align 8
  %add.ptr.1.i277.2.i = getelementptr inbounds i16, ptr %416, i64 %idx.ext.i250.2.i
  %417 = load i16, ptr %add.ptr.1.i277.2.i, align 2
  %conv27.1.i278.2.i = zext i16 %417 to i32
  %add28.1.i279.2.i = add nuw nsw i32 %conv27.1.i278.2.i, %conv27.i275.2.i
  %incdec.ptr26.2.i280.2.i = getelementptr inbounds i8, ptr %413, i64 16
  %418 = load ptr, ptr %incdec.ptr26.1.i276.2.i, align 8
  %add.ptr.2.i281.2.i = getelementptr inbounds i16, ptr %418, i64 %idx.ext.i250.2.i
  %419 = load i16, ptr %add.ptr.2.i281.2.i, align 2
  %conv27.2.i282.2.i = zext i16 %419 to i32
  %add28.2.i283.2.i = add nuw nsw i32 %add28.1.i279.2.i, %conv27.2.i282.2.i
  %420 = load ptr, ptr %incdec.ptr26.2.i280.2.i, align 8
  %add.ptr.3.i284.2.i = getelementptr inbounds i16, ptr %420, i64 %idx.ext.i250.2.i
  br label %if.end34.sink.split.i285.2.i

if.end34.sink.split.i285.2.i:                     ; preds = %if.then12.i269.2.i, %if.then.i292.2.i
  %pred.1517.in.in.2.i = phi i32 [ %add28.3.i.2.i, %if.then12.i269.2.i ], [ %398, %if.then.i292.2.i ]
  %add.ptr.3.sink.i286.2.i = phi ptr [ %add.ptr.3.i284.2.i, %if.then12.i269.2.i ], [ %incdec.ptr.2.i306.2.i, %if.then.i292.2.i ]
  %add28.2.sink.i287.2.i = phi i32 [ %add28.2.i283.2.i, %if.then12.i269.2.i ], [ %add9.2.i308.2.i, %if.then.i292.2.i ]
  %pred.1517.in.2.i = add nuw nsw i32 %pred.1517.in.in.2.i, 2
  %pred.1517.2.i = lshr i32 %pred.1517.in.2.i, 2
  %421 = load i16, ptr %add.ptr.3.sink.i286.2.i, align 2
  %conv27.3.i288.2.i = zext i16 %421 to i32
  %add28.3.i289.2.i = add nuw nsw i32 %add28.2.sink.i287.2.i, 2
  %add32.i290.2.i = add nuw nsw i32 %add28.3.i289.2.i, %conv27.3.i288.2.i
  %shr33.i291.2.i = lshr i32 %add32.i290.2.i, 2
  br label %sw.epilog.2.i

sw.bb.2.i:                                        ; preds = %sw.epilog.1.i
  %add.2.i = add nuw nsw i32 %conv53.2.i, 1
  %422 = load i64, ptr %23, align 4
  %left.val185.2.i = load i16, ptr %24, align 4
  %left.val186.2.i = load i16, ptr %25, align 2
  br i1 %tobool.not.i399.i, label %if.end.thread.i.2.i, label %if.then.i.2.i

if.then.i.2.i:                                    ; preds = %sw.bb.2.i
  %idxprom.i.2.i = ashr i64 %422, 48
  %arrayidx.i.2.i = getelementptr inbounds ptr, ptr %6, i64 %idxprom.i.2.i
  %423 = load ptr, ptr %arrayidx.i.2.i, align 8
  %sh.diff.i.2.i = lshr i64 %422, 16
  %tr.sh.diff.i.2.i = trunc i64 %sh.diff.i.2.i to i32
  %conv.i.2.i = ashr i32 %tr.sh.diff.i.2.i, 16
  %add.i.2.i = add nsw i32 %conv.i.2.i, %conv60.2.i
  %idxprom1.i.2.i = sext i32 %add.i.2.i to i64
  %arrayidx2.i.2.i = getelementptr inbounds i16, ptr %423, i64 %idxprom1.i.2.i
  %424 = load <4 x i16>, ptr %arrayidx2.i.2.i, align 2
  %425 = zext <4 x i16> %424 to <4 x i32>
  %426 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %425)
  br i1 %tobool6.not.i419.i, label %if.then34.i.2.i, label %if.then7.i.2.i

if.then34.i.2.i:                                  ; preds = %if.then.i.2.i
  %add35.i.2.i = add nuw nsw i32 %426, 2
  %shr36.i.2.i = lshr i32 %add35.i.2.i, 2
  br label %if.then.i196.2.i

if.end.thread.i.2.i:                              ; preds = %sw.bb.2.i
  br i1 %tobool6.not.i419.i, label %sw.epilog.2.i, label %if.then7.i.2.i

if.then7.i.2.i:                                   ; preds = %if.end.thread.i.2.i, %if.then.i.2.i
  %s0.19.i.2.i = phi i32 [ 0, %if.end.thread.i.2.i ], [ %426, %if.then.i.2.i ]
  %conv10.i.2.i = sext i16 %left.val186.2.i to i32
  %add11.i.2.i = add nsw i32 %add.2.i, %conv10.i.2.i
  %427 = sext i32 %add11.i.2.i to i64
  %428 = getelementptr ptr, ptr %6, i64 %427
  %arrayidx13.i.2.i = getelementptr i8, ptr %428, i64 -8
  %idx.ext.i.2.i = sext i16 %left.val185.2.i to i64
  %429 = load ptr, ptr %arrayidx13.i.2.i, align 8
  %add.ptr.i.2.i = getelementptr inbounds i16, ptr %429, i64 %idx.ext.i.2.i
  %430 = load i16, ptr %add.ptr.i.2.i, align 2
  %conv22.i.2.i = zext i16 %430 to i32
  %incdec.ptr21.1.i.2.i = getelementptr inbounds i8, ptr %428, i64 8
  %431 = load ptr, ptr %428, align 8
  %add.ptr.1.i.2.i = getelementptr inbounds i16, ptr %431, i64 %idx.ext.i.2.i
  %432 = load i16, ptr %add.ptr.1.i.2.i, align 2
  %conv22.1.i.2.i = zext i16 %432 to i32
  %add23.1.i.2.i = add nuw nsw i32 %conv22.1.i.2.i, %conv22.i.2.i
  %incdec.ptr21.2.i.2.i = getelementptr inbounds i8, ptr %428, i64 16
  %433 = load ptr, ptr %incdec.ptr21.1.i.2.i, align 8
  %add.ptr.2.i.2.i = getelementptr inbounds i16, ptr %433, i64 %idx.ext.i.2.i
  %434 = load i16, ptr %add.ptr.2.i.2.i, align 2
  %conv22.2.i.2.i = zext i16 %434 to i32
  %add23.2.i.2.i = add nuw nsw i32 %add23.1.i.2.i, %conv22.2.i.2.i
  %435 = load ptr, ptr %incdec.ptr21.2.i.2.i, align 8
  %add.ptr.3.i.2.i = getelementptr inbounds i16, ptr %435, i64 %idx.ext.i.2.i
  %436 = load i16, ptr %add.ptr.3.i.2.i, align 2
  %conv22.3.i.2.i = zext i16 %436 to i32
  %add23.3.i.2.i = add nuw nsw i32 %add23.2.i.2.i, %conv22.3.i.2.i
  br i1 %tobool.not.i399.i, label %if.end.thread.i247.2.i, label %if.then30.i.2.i

if.then30.i.2.i:                                  ; preds = %if.then7.i.2.i
  %add31.i.2.i = add nuw nsw i32 %s0.19.i.2.i, 4
  %add32.i.2.i = add nuw nsw i32 %add31.i.2.i, %add23.3.i.2.i
  %shr.i.2.i = lshr i32 %add32.i.2.i, 3
  %.pre617.i = ashr i64 %422, 48
  %.pre630.i = lshr i64 %422, 16
  %.pre631.i = trunc i64 %.pre630.i to i32
  %.pre632.i = ashr i32 %.pre631.i, 16
  %.pre633.i = add nsw i32 %.pre632.i, %conv60.2.i
  %.pre634.i = sext i32 %.pre633.i to i64
  br label %if.then.i196.2.i

if.then.i196.2.i:                                 ; preds = %if.then30.i.2.i, %if.then34.i.2.i
  %idxprom1.i203.2.pre-phi.i = phi i64 [ %.pre634.i, %if.then30.i.2.i ], [ %idxprom1.i.2.i, %if.then34.i.2.i ]
  %idxprom.i197.2.pre-phi.i = phi i64 [ %.pre617.i, %if.then30.i.2.i ], [ %idxprom.i.2.i, %if.then34.i.2.i ]
  %pred.0.2.i = phi i32 [ %shr.i.2.i, %if.then30.i.2.i ], [ %shr36.i.2.i, %if.then34.i.2.i ]
  %arrayidx.i198.2.i = getelementptr inbounds ptr, ptr %7, i64 %idxprom.i197.2.pre-phi.i
  %437 = load ptr, ptr %arrayidx.i198.2.i, align 8
  %arrayidx2.i204.2.i = getelementptr inbounds i16, ptr %437, i64 %idxprom1.i203.2.pre-phi.i
  %incdec.ptr.i205.2.i = getelementptr inbounds i8, ptr %arrayidx2.i204.2.i, i64 2
  %438 = load i16, ptr %arrayidx2.i204.2.i, align 2
  %conv4.i206.2.i = zext i16 %438 to i32
  %incdec.ptr.1.i207.2.i = getelementptr inbounds i8, ptr %arrayidx2.i204.2.i, i64 4
  %439 = load i16, ptr %incdec.ptr.i205.2.i, align 2
  %conv4.1.i208.2.i = zext i16 %439 to i32
  %add5.1.i209.2.i = add nuw nsw i32 %conv4.1.i208.2.i, %conv4.i206.2.i
  %incdec.ptr.2.i210.2.i = getelementptr inbounds i8, ptr %arrayidx2.i204.2.i, i64 6
  %440 = load i16, ptr %incdec.ptr.1.i207.2.i, align 2
  %conv4.2.i211.2.i = zext i16 %440 to i32
  %add5.2.i212.2.i = add nuw nsw i32 %add5.1.i209.2.i, %conv4.2.i211.2.i
  %441 = load i16, ptr %incdec.ptr.2.i210.2.i, align 2
  %conv4.3.i213.2.i = zext i16 %441 to i32
  %add5.3.i214.2.i = add nuw nsw i32 %add5.2.i212.2.i, %conv4.3.i213.2.i
  br i1 %tobool6.not.i419.i, label %if.then34.i244.2.i, label %if.then.i196.2.if.then7.i216.2_crit_edge.i

if.then.i196.2.if.then7.i216.2_crit_edge.i:       ; preds = %if.then.i196.2.i
  %.pre669.i = sext i16 %left.val186.2.i to i32
  %.pre670.i = add nsw i32 %add.2.i, %.pre669.i
  %.pre671.i = sext i32 %.pre670.i to i64
  %.pre673.i = sext i16 %left.val185.2.i to i64
  br label %if.then7.i216.2.i

if.then34.i244.2.i:                               ; preds = %if.then.i196.2.i
  %add35.i245.2.i = add nuw nsw i32 %add5.3.i214.2.i, 2
  %shr36.i246.2.i = lshr i32 %add35.i245.2.i, 2
  br label %sw.epilog.2.i

if.end.thread.i247.2.i:                           ; preds = %if.then7.i.2.i
  %add40.i.2.i = add nuw nsw i32 %add23.3.i.2.i, 2
  %shr41.i.2.i = lshr i32 %add40.i.2.i, 2
  br label %if.then7.i216.2.i

if.then7.i216.2.i:                                ; preds = %if.end.thread.i247.2.i, %if.then.i196.2.if.then7.i216.2_crit_edge.i
  %idx.ext.i221.2.pre-phi.i = phi i64 [ %.pre673.i, %if.then.i196.2.if.then7.i216.2_crit_edge.i ], [ %idx.ext.i.2.i, %if.end.thread.i247.2.i ]
  %.pre-phi672.i = phi i64 [ %.pre671.i, %if.then.i196.2.if.then7.i216.2_crit_edge.i ], [ %427, %if.end.thread.i247.2.i ]
  %pred.0512.2.i = phi i32 [ %pred.0.2.i, %if.then.i196.2.if.then7.i216.2_crit_edge.i ], [ %shr41.i.2.i, %if.end.thread.i247.2.i ]
  %s0.19.i217.2.i = phi i32 [ %add5.3.i214.2.i, %if.then.i196.2.if.then7.i216.2_crit_edge.i ], [ 0, %if.end.thread.i247.2.i ]
  %442 = getelementptr ptr, ptr %7, i64 %.pre-phi672.i
  %arrayidx13.i220.2.i = getelementptr i8, ptr %442, i64 -8
  %443 = load ptr, ptr %arrayidx13.i220.2.i, align 8
  %add.ptr.i222.2.i = getelementptr inbounds i16, ptr %443, i64 %idx.ext.i221.2.pre-phi.i
  %444 = load i16, ptr %add.ptr.i222.2.i, align 2
  %conv22.i223.2.i = zext i16 %444 to i32
  %incdec.ptr21.1.i224.2.i = getelementptr inbounds i8, ptr %442, i64 8
  %445 = load ptr, ptr %442, align 8
  %add.ptr.1.i225.2.i = getelementptr inbounds i16, ptr %445, i64 %idx.ext.i221.2.pre-phi.i
  %446 = load i16, ptr %add.ptr.1.i225.2.i, align 2
  %conv22.1.i226.2.i = zext i16 %446 to i32
  %add23.1.i227.2.i = add nuw nsw i32 %conv22.1.i226.2.i, %conv22.i223.2.i
  %incdec.ptr21.2.i228.2.i = getelementptr inbounds i8, ptr %442, i64 16
  %447 = load ptr, ptr %incdec.ptr21.1.i224.2.i, align 8
  %add.ptr.2.i229.2.i = getelementptr inbounds i16, ptr %447, i64 %idx.ext.i221.2.pre-phi.i
  %448 = load i16, ptr %add.ptr.2.i229.2.i, align 2
  %conv22.2.i230.2.i = zext i16 %448 to i32
  %add23.2.i231.2.i = add nuw nsw i32 %add23.1.i227.2.i, %conv22.2.i230.2.i
  %449 = load ptr, ptr %incdec.ptr21.2.i228.2.i, align 8
  %add.ptr.3.i232.2.i = getelementptr inbounds i16, ptr %449, i64 %idx.ext.i221.2.pre-phi.i
  %450 = load i16, ptr %add.ptr.3.i232.2.i, align 2
  %conv22.3.i233.2.i = zext i16 %450 to i32
  %add23.3.i234.2.i = add nuw nsw i32 %add23.2.i231.2.i, %conv22.3.i233.2.i
  br i1 %tobool.not.i399.i, label %if.then39.i241.2.i, label %if.then30.i235.2.i

if.then30.i235.2.i:                               ; preds = %if.then7.i216.2.i
  %add31.i236.2.i = add nuw nsw i32 %s0.19.i217.2.i, 4
  %add32.i237.2.i = add nuw nsw i32 %add31.i236.2.i, %add23.3.i234.2.i
  %shr.i238.2.i = lshr i32 %add32.i237.2.i, 3
  br label %sw.epilog.2.i

if.then39.i241.2.i:                               ; preds = %if.then7.i216.2.i
  %add40.i242.2.i = add nuw nsw i32 %add23.3.i234.2.i, 2
  %shr41.i243.2.i = lshr i32 %add40.i242.2.i, 2
  br label %sw.epilog.2.i

sw.epilog.2.i:                                    ; preds = %if.then39.i241.2.i, %if.then30.i235.2.i, %if.then34.i244.2.i, %if.end.thread.i.2.i, %if.end34.sink.split.i285.2.i, %if.else.i.2.i, %if.end34.sink.split.i374.2.i, %if.else.i312.2.i, %if.then39.i500.2.i, %if.then30.i494.2.i, %if.then34.i503.2.i, %if.end.thread.i451.2.i, %sw.epilog.1.i
  %pred.4.2.i = phi i32 [ %334, %sw.epilog.1.i ], [ %pred.0.2.i, %if.then34.i244.2.i ], [ %pred.0512.2.i, %if.then39.i241.2.i ], [ %pred.0512.2.i, %if.then30.i235.2.i ], [ %pred.1517.2.i, %if.end34.sink.split.i285.2.i ], [ %pred.2530.2.i, %if.end34.sink.split.i374.2.i ], [ %pred.3.2.i, %if.then34.i503.2.i ], [ %pred.3545.2.i, %if.then39.i500.2.i ], [ %pred.3545.2.i, %if.then30.i494.2.i ], [ %334, %if.end.thread.i.2.i ], [ %334, %if.else.i.2.i ], [ %334, %if.else.i312.2.i ], [ %334, %if.end.thread.i451.2.i ]
  %pred1.4.2.i = phi i32 [ %335, %sw.epilog.1.i ], [ %shr36.i246.2.i, %if.then34.i244.2.i ], [ %shr41.i243.2.i, %if.then39.i241.2.i ], [ %shr.i238.2.i, %if.then30.i235.2.i ], [ %shr33.i291.2.i, %if.end34.sink.split.i285.2.i ], [ %shr33.i380.2.i, %if.end34.sink.split.i374.2.i ], [ %shr36.i505.2.i, %if.then34.i503.2.i ], [ %shr41.i502.2.i, %if.then39.i500.2.i ], [ %shr.i497.2.i, %if.then30.i494.2.i ], [ %335, %if.end.thread.i.2.i ], [ %335, %if.else.i.2.i ], [ %335, %if.else.i312.2.i ], [ %335, %if.end.thread.i451.2.i ]
  %conv90.2.i = trunc i32 %pred.4.2.i to i16
  %conv95.2.i = trunc i32 %pred1.4.2.i to i16
  %451 = zext i8 %333 to i64
  %452 = zext i8 %332 to i64
  %arrayidx92.2582.i = getelementptr inbounds ptr, ptr %9, i64 %452
  %arrayidx97.2583.i = getelementptr inbounds ptr, ptr %10, i64 %452
  %453 = load ptr, ptr %arrayidx92.2582.i, align 8
  %arrayidx94.2584.i = getelementptr inbounds i16, ptr %453, i64 %451
  store i16 %conv90.2.i, ptr %arrayidx94.2584.i, align 2
  %454 = load ptr, ptr %arrayidx97.2583.i, align 8
  %arrayidx99.2585.i = getelementptr inbounds i16, ptr %454, i64 %451
  store i16 %conv95.2.i, ptr %arrayidx99.2585.i, align 2
  %indvars.iv.next.2586.i = add nuw nsw i64 %451, 1
  %455 = load ptr, ptr %arrayidx92.2582.i, align 8
  %arrayidx94.1.2587.i = getelementptr inbounds i16, ptr %455, i64 %indvars.iv.next.2586.i
  store i16 %conv90.2.i, ptr %arrayidx94.1.2587.i, align 2
  %456 = load ptr, ptr %arrayidx97.2583.i, align 8
  %arrayidx99.1.2588.i = getelementptr inbounds i16, ptr %456, i64 %indvars.iv.next.2586.i
  store i16 %conv95.2.i, ptr %arrayidx99.1.2588.i, align 2
  %indvars.iv.next.1.2589.i = add nuw nsw i64 %451, 2
  %457 = load ptr, ptr %arrayidx92.2582.i, align 8
  %arrayidx94.2.2590.i = getelementptr inbounds i16, ptr %457, i64 %indvars.iv.next.1.2589.i
  store i16 %conv90.2.i, ptr %arrayidx94.2.2590.i, align 2
  %458 = load ptr, ptr %arrayidx97.2583.i, align 8
  %arrayidx99.2.2591.i = getelementptr inbounds i16, ptr %458, i64 %indvars.iv.next.1.2589.i
  store i16 %conv95.2.i, ptr %arrayidx99.2.2591.i, align 2
  %indvars.iv.next.2.2592.i = add nuw nsw i64 %451, 3
  %459 = load ptr, ptr %arrayidx92.2582.i, align 8
  %arrayidx94.3.2593.i = getelementptr inbounds i16, ptr %459, i64 %indvars.iv.next.2.2592.i
  store i16 %conv90.2.i, ptr %arrayidx94.3.2593.i, align 2
  %460 = load ptr, ptr %arrayidx97.2583.i, align 8
  %arrayidx99.3.2594.i = getelementptr inbounds i16, ptr %460, i64 %indvars.iv.next.2.2592.i
  store i16 %conv95.2.i, ptr %arrayidx99.3.2594.i, align 2
  %indvars.iv.next555.2595.i = add nuw nsw i64 %452, 1
  %arrayidx92.1.2.i = getelementptr inbounds ptr, ptr %9, i64 %indvars.iv.next555.2595.i
  %arrayidx97.1.2.i = getelementptr inbounds ptr, ptr %10, i64 %indvars.iv.next555.2595.i
  %461 = load ptr, ptr %arrayidx92.1.2.i, align 8
  %arrayidx94.1557.2.i = getelementptr inbounds i16, ptr %461, i64 %451
  store i16 %conv90.2.i, ptr %arrayidx94.1557.2.i, align 2
  %462 = load ptr, ptr %arrayidx97.1.2.i, align 8
  %arrayidx99.1558.2.i = getelementptr inbounds i16, ptr %462, i64 %451
  store i16 %conv95.2.i, ptr %arrayidx99.1558.2.i, align 2
  %463 = load ptr, ptr %arrayidx92.1.2.i, align 8
  %arrayidx94.1.1.2.i = getelementptr inbounds i16, ptr %463, i64 %indvars.iv.next.2586.i
  store i16 %conv90.2.i, ptr %arrayidx94.1.1.2.i, align 2
  %464 = load ptr, ptr %arrayidx97.1.2.i, align 8
  %arrayidx99.1.1.2.i = getelementptr inbounds i16, ptr %464, i64 %indvars.iv.next.2586.i
  store i16 %conv95.2.i, ptr %arrayidx99.1.1.2.i, align 2
  %465 = load ptr, ptr %arrayidx92.1.2.i, align 8
  %arrayidx94.2.1.2.i = getelementptr inbounds i16, ptr %465, i64 %indvars.iv.next.1.2589.i
  store i16 %conv90.2.i, ptr %arrayidx94.2.1.2.i, align 2
  %466 = load ptr, ptr %arrayidx97.1.2.i, align 8
  %arrayidx99.2.1.2.i = getelementptr inbounds i16, ptr %466, i64 %indvars.iv.next.1.2589.i
  store i16 %conv95.2.i, ptr %arrayidx99.2.1.2.i, align 2
  %467 = load ptr, ptr %arrayidx92.1.2.i, align 8
  %arrayidx94.3.1.2.i = getelementptr inbounds i16, ptr %467, i64 %indvars.iv.next.2.2592.i
  store i16 %conv90.2.i, ptr %arrayidx94.3.1.2.i, align 2
  %468 = load ptr, ptr %arrayidx97.1.2.i, align 8
  %arrayidx99.3.1.2.i = getelementptr inbounds i16, ptr %468, i64 %indvars.iv.next.2.2592.i
  store i16 %conv95.2.i, ptr %arrayidx99.3.1.2.i, align 2
  %indvars.iv.next555.1.2.i = add nuw nsw i64 %452, 2
  %arrayidx92.2.2.i = getelementptr inbounds ptr, ptr %9, i64 %indvars.iv.next555.1.2.i
  %arrayidx97.2.2.i = getelementptr inbounds ptr, ptr %10, i64 %indvars.iv.next555.1.2.i
  %469 = load ptr, ptr %arrayidx92.2.2.i, align 8
  %arrayidx94.2560.2.i = getelementptr inbounds i16, ptr %469, i64 %451
  store i16 %conv90.2.i, ptr %arrayidx94.2560.2.i, align 2
  %470 = load ptr, ptr %arrayidx97.2.2.i, align 8
  %arrayidx99.2561.2.i = getelementptr inbounds i16, ptr %470, i64 %451
  store i16 %conv95.2.i, ptr %arrayidx99.2561.2.i, align 2
  %471 = load ptr, ptr %arrayidx92.2.2.i, align 8
  %arrayidx94.1.2.2.i = getelementptr inbounds i16, ptr %471, i64 %indvars.iv.next.2586.i
  store i16 %conv90.2.i, ptr %arrayidx94.1.2.2.i, align 2
  %472 = load ptr, ptr %arrayidx97.2.2.i, align 8
  %arrayidx99.1.2.2.i = getelementptr inbounds i16, ptr %472, i64 %indvars.iv.next.2586.i
  store i16 %conv95.2.i, ptr %arrayidx99.1.2.2.i, align 2
  %473 = load ptr, ptr %arrayidx92.2.2.i, align 8
  %arrayidx94.2.2.2.i = getelementptr inbounds i16, ptr %473, i64 %indvars.iv.next.1.2589.i
  store i16 %conv90.2.i, ptr %arrayidx94.2.2.2.i, align 2
  %474 = load ptr, ptr %arrayidx97.2.2.i, align 8
  %arrayidx99.2.2.2.i = getelementptr inbounds i16, ptr %474, i64 %indvars.iv.next.1.2589.i
  store i16 %conv95.2.i, ptr %arrayidx99.2.2.2.i, align 2
  %475 = load ptr, ptr %arrayidx92.2.2.i, align 8
  %arrayidx94.3.2.2.i = getelementptr inbounds i16, ptr %475, i64 %indvars.iv.next.2.2592.i
  store i16 %conv90.2.i, ptr %arrayidx94.3.2.2.i, align 2
  %476 = load ptr, ptr %arrayidx97.2.2.i, align 8
  %arrayidx99.3.2.2.i = getelementptr inbounds i16, ptr %476, i64 %indvars.iv.next.2.2592.i
  store i16 %conv95.2.i, ptr %arrayidx99.3.2.2.i, align 2
  %indvars.iv.next555.2.2.i = add nuw nsw i64 %452, 3
  %arrayidx92.3.2.i = getelementptr inbounds ptr, ptr %9, i64 %indvars.iv.next555.2.2.i
  %arrayidx97.3.2.i = getelementptr inbounds ptr, ptr %10, i64 %indvars.iv.next555.2.2.i
  %477 = load ptr, ptr %arrayidx92.3.2.i, align 8
  %arrayidx94.3563.2.i = getelementptr inbounds i16, ptr %477, i64 %451
  store i16 %conv90.2.i, ptr %arrayidx94.3563.2.i, align 2
  %478 = load ptr, ptr %arrayidx97.3.2.i, align 8
  %arrayidx99.3564.2.i = getelementptr inbounds i16, ptr %478, i64 %451
  store i16 %conv95.2.i, ptr %arrayidx99.3564.2.i, align 2
  %479 = load ptr, ptr %arrayidx92.3.2.i, align 8
  %arrayidx94.1.3.2.i = getelementptr inbounds i16, ptr %479, i64 %indvars.iv.next.2586.i
  store i16 %conv90.2.i, ptr %arrayidx94.1.3.2.i, align 2
  %480 = load ptr, ptr %arrayidx97.3.2.i, align 8
  %arrayidx99.1.3.2.i = getelementptr inbounds i16, ptr %480, i64 %indvars.iv.next.2586.i
  store i16 %conv95.2.i, ptr %arrayidx99.1.3.2.i, align 2
  %481 = load ptr, ptr %arrayidx92.3.2.i, align 8
  %arrayidx94.2.3.2.i = getelementptr inbounds i16, ptr %481, i64 %indvars.iv.next.1.2589.i
  store i16 %conv90.2.i, ptr %arrayidx94.2.3.2.i, align 2
  %482 = load ptr, ptr %arrayidx97.3.2.i, align 8
  %arrayidx99.2.3.2.i = getelementptr inbounds i16, ptr %482, i64 %indvars.iv.next.1.2589.i
  store i16 %conv95.2.i, ptr %arrayidx99.2.3.2.i, align 2
  %483 = load ptr, ptr %arrayidx92.3.2.i, align 8
  %arrayidx94.3.3.2.i = getelementptr inbounds i16, ptr %483, i64 %indvars.iv.next.2.2592.i
  store i16 %conv90.2.i, ptr %arrayidx94.3.3.2.i, align 2
  %484 = load ptr, ptr %arrayidx97.3.2.i, align 8
  %arrayidx99.3.3.2.i = getelementptr inbounds i16, ptr %484, i64 %indvars.iv.next.2.2592.i
  store i16 %conv95.2.i, ptr %arrayidx99.3.3.2.i, align 2
  %arrayidx52.3.i = getelementptr inbounds [3 x [8 x [4 x i8]]], ptr @subblk_offset_y, i64 0, i64 %idxprom47.i, i64 %indvars.iv.i, i64 3
  %485 = load i8, ptr %arrayidx52.3.i, align 1
  %conv53.3.i = zext i8 %485 to i32
  %arrayidx59.3.i = getelementptr inbounds [3 x [8 x [4 x i8]]], ptr @subblk_offset_x, i64 0, i64 %idxprom47.i, i64 %indvars.iv.i, i64 3
  %486 = load i8, ptr %arrayidx59.3.i, align 1
  %conv60.3.i = zext i8 %486 to i32
  %487 = load i32, ptr %arrayidx61.i, align 4
  %488 = load i32, ptr %arrayidx63.i, align 4
  %arrayidx69.3.i = getelementptr inbounds [3 x [4 x [4 x i32]]], ptr @intrapred_chroma_dc.block_pos, i64 0, i64 %idxprom47.i, i64 %indvars.iv.i, i64 3
  %489 = load i32, ptr %arrayidx69.3.i, align 4
  switch i32 %489, label %sw.epilog.3.i [
    i32 0, label %sw.bb.3.i
    i32 1, label %sw.bb71.3.i
    i32 2, label %sw.bb74.3.i
    i32 3, label %sw.bb77.3.i
  ]

sw.bb77.3.i:                                      ; preds = %sw.epilog.2.i
  %add78.3.i = add nuw nsw i32 %conv53.3.i, 1
  %490 = load i64, ptr %23, align 4
  %left.val181.3.i = load i16, ptr %24, align 4
  %left.val182.3.i = load i16, ptr %25, align 2
  br i1 %tobool.not.i399.i, label %if.end.thread.i451.3.i, label %if.then.i400.3.i

if.then.i400.3.i:                                 ; preds = %sw.bb77.3.i
  %idxprom.i401.3.i = ashr i64 %490, 48
  %arrayidx.i402.3.i = getelementptr inbounds ptr, ptr %6, i64 %idxprom.i401.3.i
  %491 = load ptr, ptr %arrayidx.i402.3.i, align 8
  %sh.diff.i403.3.i = lshr i64 %490, 16
  %tr.sh.diff.i404.3.i = trunc i64 %sh.diff.i403.3.i to i32
  %conv.i405.3.i = ashr i32 %tr.sh.diff.i404.3.i, 16
  %add.i406.3.i = add nsw i32 %conv.i405.3.i, %conv60.3.i
  %idxprom1.i407.3.i = sext i32 %add.i406.3.i to i64
  %arrayidx2.i408.3.i = getelementptr inbounds i16, ptr %491, i64 %idxprom1.i407.3.i
  %492 = load <4 x i16>, ptr %arrayidx2.i408.3.i, align 2
  %493 = zext <4 x i16> %492 to <4 x i32>
  %494 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %493)
  br i1 %tobool6.not.i419.i, label %if.then34.i448.3.i, label %if.then7.i420.3.i

if.then34.i448.3.i:                               ; preds = %if.then.i400.3.i
  %add35.i449.3.i = add nuw nsw i32 %494, 2
  %shr36.i450.3.i = lshr i32 %add35.i449.3.i, 2
  br label %if.then.i455.3.i

if.end.thread.i451.3.i:                           ; preds = %sw.bb77.3.i
  br i1 %tobool6.not.i419.i, label %sw.epilog.3.i, label %if.then7.i420.3.i

if.then7.i420.3.i:                                ; preds = %if.end.thread.i451.3.i, %if.then.i400.3.i
  %s0.19.i421.3.i = phi i32 [ 0, %if.end.thread.i451.3.i ], [ %494, %if.then.i400.3.i ]
  %conv10.i422.3.i = sext i16 %left.val182.3.i to i32
  %add11.i423.3.i = add nsw i32 %add78.3.i, %conv10.i422.3.i
  %495 = sext i32 %add11.i423.3.i to i64
  %496 = getelementptr ptr, ptr %6, i64 %495
  %arrayidx13.i424.3.i = getelementptr i8, ptr %496, i64 -8
  %idx.ext.i425.3.i = sext i16 %left.val181.3.i to i64
  %497 = load ptr, ptr %arrayidx13.i424.3.i, align 8
  %add.ptr.i426.3.i = getelementptr inbounds i16, ptr %497, i64 %idx.ext.i425.3.i
  %498 = load i16, ptr %add.ptr.i426.3.i, align 2
  %conv22.i427.3.i = zext i16 %498 to i32
  %incdec.ptr21.1.i428.3.i = getelementptr inbounds i8, ptr %496, i64 8
  %499 = load ptr, ptr %496, align 8
  %add.ptr.1.i429.3.i = getelementptr inbounds i16, ptr %499, i64 %idx.ext.i425.3.i
  %500 = load i16, ptr %add.ptr.1.i429.3.i, align 2
  %conv22.1.i430.3.i = zext i16 %500 to i32
  %add23.1.i431.3.i = add nuw nsw i32 %conv22.1.i430.3.i, %conv22.i427.3.i
  %incdec.ptr21.2.i432.3.i = getelementptr inbounds i8, ptr %496, i64 16
  %501 = load ptr, ptr %incdec.ptr21.1.i428.3.i, align 8
  %add.ptr.2.i433.3.i = getelementptr inbounds i16, ptr %501, i64 %idx.ext.i425.3.i
  %502 = load i16, ptr %add.ptr.2.i433.3.i, align 2
  %conv22.2.i434.3.i = zext i16 %502 to i32
  %add23.2.i435.3.i = add nuw nsw i32 %add23.1.i431.3.i, %conv22.2.i434.3.i
  %503 = load ptr, ptr %incdec.ptr21.2.i432.3.i, align 8
  %add.ptr.3.i436.3.i = getelementptr inbounds i16, ptr %503, i64 %idx.ext.i425.3.i
  %504 = load i16, ptr %add.ptr.3.i436.3.i, align 2
  %conv22.3.i437.3.i = zext i16 %504 to i32
  %add23.3.i438.3.i = add nuw nsw i32 %add23.2.i435.3.i, %conv22.3.i437.3.i
  br i1 %tobool.not.i399.i, label %if.end.thread.i506.3.i, label %if.then30.i439.3.i

if.then30.i439.3.i:                               ; preds = %if.then7.i420.3.i
  %add31.i440.3.i = add nuw nsw i32 %s0.19.i421.3.i, 4
  %add32.i441.3.i = add nuw nsw i32 %add31.i440.3.i, %add23.3.i438.3.i
  %shr.i442.3.i = lshr i32 %add32.i441.3.i, 3
  %.pre618.i = ashr i64 %490, 48
  %.pre625.i = lshr i64 %490, 16
  %.pre626.i = trunc i64 %.pre625.i to i32
  %.pre627.i = ashr i32 %.pre626.i, 16
  %.pre628.i = add nsw i32 %.pre627.i, %conv60.3.i
  %.pre629.i = sext i32 %.pre628.i to i64
  br label %if.then.i455.3.i

if.then.i455.3.i:                                 ; preds = %if.then30.i439.3.i, %if.then34.i448.3.i
  %idxprom1.i462.3.pre-phi.i = phi i64 [ %.pre629.i, %if.then30.i439.3.i ], [ %idxprom1.i407.3.i, %if.then34.i448.3.i ]
  %idxprom.i456.3.pre-phi.i = phi i64 [ %.pre618.i, %if.then30.i439.3.i ], [ %idxprom.i401.3.i, %if.then34.i448.3.i ]
  %pred.3.3.i = phi i32 [ %shr.i442.3.i, %if.then30.i439.3.i ], [ %shr36.i450.3.i, %if.then34.i448.3.i ]
  %arrayidx.i457.3.i = getelementptr inbounds ptr, ptr %7, i64 %idxprom.i456.3.pre-phi.i
  %505 = load ptr, ptr %arrayidx.i457.3.i, align 8
  %arrayidx2.i463.3.i = getelementptr inbounds i16, ptr %505, i64 %idxprom1.i462.3.pre-phi.i
  %incdec.ptr.i464.3.i = getelementptr inbounds i8, ptr %arrayidx2.i463.3.i, i64 2
  %506 = load i16, ptr %arrayidx2.i463.3.i, align 2
  %conv4.i465.3.i = zext i16 %506 to i32
  %incdec.ptr.1.i466.3.i = getelementptr inbounds i8, ptr %arrayidx2.i463.3.i, i64 4
  %507 = load i16, ptr %incdec.ptr.i464.3.i, align 2
  %conv4.1.i467.3.i = zext i16 %507 to i32
  %add5.1.i468.3.i = add nuw nsw i32 %conv4.1.i467.3.i, %conv4.i465.3.i
  %incdec.ptr.2.i469.3.i = getelementptr inbounds i8, ptr %arrayidx2.i463.3.i, i64 6
  %508 = load i16, ptr %incdec.ptr.1.i466.3.i, align 2
  %conv4.2.i470.3.i = zext i16 %508 to i32
  %add5.2.i471.3.i = add nuw nsw i32 %add5.1.i468.3.i, %conv4.2.i470.3.i
  %509 = load i16, ptr %incdec.ptr.2.i469.3.i, align 2
  %conv4.3.i472.3.i = zext i16 %509 to i32
  %add5.3.i473.3.i = add nuw nsw i32 %add5.2.i471.3.i, %conv4.3.i472.3.i
  br i1 %tobool6.not.i419.i, label %if.then34.i503.3.i, label %if.then.i455.3.if.then7.i475.3_crit_edge.i

if.then.i455.3.if.then7.i475.3_crit_edge.i:       ; preds = %if.then.i455.3.i
  %.pre664.i = sext i16 %left.val182.3.i to i32
  %.pre665.i = add nsw i32 %add78.3.i, %.pre664.i
  %.pre666.i = sext i32 %.pre665.i to i64
  %.pre668.i = sext i16 %left.val181.3.i to i64
  br label %if.then7.i475.3.i

if.then34.i503.3.i:                               ; preds = %if.then.i455.3.i
  %add35.i504.3.i = add nuw nsw i32 %add5.3.i473.3.i, 2
  %shr36.i505.3.i = lshr i32 %add35.i504.3.i, 2
  br label %sw.epilog.3.i

if.end.thread.i506.3.i:                           ; preds = %if.then7.i420.3.i
  %add40.i446.3.i = add nuw nsw i32 %add23.3.i438.3.i, 2
  %shr41.i447.3.i = lshr i32 %add40.i446.3.i, 2
  br label %if.then7.i475.3.i

if.then7.i475.3.i:                                ; preds = %if.end.thread.i506.3.i, %if.then.i455.3.if.then7.i475.3_crit_edge.i
  %idx.ext.i480.3.pre-phi.i = phi i64 [ %.pre668.i, %if.then.i455.3.if.then7.i475.3_crit_edge.i ], [ %idx.ext.i425.3.i, %if.end.thread.i506.3.i ]
  %.pre-phi667.i = phi i64 [ %.pre666.i, %if.then.i455.3.if.then7.i475.3_crit_edge.i ], [ %495, %if.end.thread.i506.3.i ]
  %pred.3545.3.i = phi i32 [ %pred.3.3.i, %if.then.i455.3.if.then7.i475.3_crit_edge.i ], [ %shr41.i447.3.i, %if.end.thread.i506.3.i ]
  %s0.19.i476.3.i = phi i32 [ %add5.3.i473.3.i, %if.then.i455.3.if.then7.i475.3_crit_edge.i ], [ 0, %if.end.thread.i506.3.i ]
  %510 = getelementptr ptr, ptr %7, i64 %.pre-phi667.i
  %arrayidx13.i479.3.i = getelementptr i8, ptr %510, i64 -8
  %511 = load ptr, ptr %arrayidx13.i479.3.i, align 8
  %add.ptr.i481.3.i = getelementptr inbounds i16, ptr %511, i64 %idx.ext.i480.3.pre-phi.i
  %512 = load i16, ptr %add.ptr.i481.3.i, align 2
  %conv22.i482.3.i = zext i16 %512 to i32
  %incdec.ptr21.1.i483.3.i = getelementptr inbounds i8, ptr %510, i64 8
  %513 = load ptr, ptr %510, align 8
  %add.ptr.1.i484.3.i = getelementptr inbounds i16, ptr %513, i64 %idx.ext.i480.3.pre-phi.i
  %514 = load i16, ptr %add.ptr.1.i484.3.i, align 2
  %conv22.1.i485.3.i = zext i16 %514 to i32
  %add23.1.i486.3.i = add nuw nsw i32 %conv22.1.i485.3.i, %conv22.i482.3.i
  %incdec.ptr21.2.i487.3.i = getelementptr inbounds i8, ptr %510, i64 16
  %515 = load ptr, ptr %incdec.ptr21.1.i483.3.i, align 8
  %add.ptr.2.i488.3.i = getelementptr inbounds i16, ptr %515, i64 %idx.ext.i480.3.pre-phi.i
  %516 = load i16, ptr %add.ptr.2.i488.3.i, align 2
  %conv22.2.i489.3.i = zext i16 %516 to i32
  %add23.2.i490.3.i = add nuw nsw i32 %add23.1.i486.3.i, %conv22.2.i489.3.i
  %517 = load ptr, ptr %incdec.ptr21.2.i487.3.i, align 8
  %add.ptr.3.i491.3.i = getelementptr inbounds i16, ptr %517, i64 %idx.ext.i480.3.pre-phi.i
  %518 = load i16, ptr %add.ptr.3.i491.3.i, align 2
  %conv22.3.i492.3.i = zext i16 %518 to i32
  %add23.3.i493.3.i = add nuw nsw i32 %add23.2.i490.3.i, %conv22.3.i492.3.i
  br i1 %tobool.not.i399.i, label %if.then39.i500.3.i, label %if.then30.i494.3.i

if.then30.i494.3.i:                               ; preds = %if.then7.i475.3.i
  %add31.i495.3.i = add nuw nsw i32 %s0.19.i476.3.i, 4
  %add32.i496.3.i = add nuw nsw i32 %add31.i495.3.i, %add23.3.i493.3.i
  %shr.i497.3.i = lshr i32 %add32.i496.3.i, 3
  br label %sw.epilog.3.i

if.then39.i500.3.i:                               ; preds = %if.then7.i475.3.i
  %add40.i501.3.i = add nuw nsw i32 %add23.3.i493.3.i, 2
  %shr41.i502.3.i = lshr i32 %add40.i501.3.i, 2
  br label %sw.epilog.3.i

sw.bb74.3.i:                                      ; preds = %sw.epilog.2.i
  %add75.3.i = add nuw nsw i32 %conv53.3.i, 1
  %left.val189.3.i = load i16, ptr %24, align 4
  %left.val190.3.i = load i16, ptr %25, align 2
  br i1 %or.cond46.i.i, label %if.then.i381.3.i, label %if.else.i312.3.i

if.else.i312.3.i:                                 ; preds = %sw.bb74.3.i
  br i1 %tobool6.not.i419.i, label %sw.epilog.3.i, label %if.then12.i358.3.i

if.then12.i358.3.i:                               ; preds = %if.else.i312.3.i
  %conv15.i314.3.i = sext i16 %left.val190.3.i to i32
  %add16.i315.3.i = add nsw i32 %add75.3.i, %conv15.i314.3.i
  %519 = sext i32 %add16.i315.3.i to i64
  %520 = getelementptr ptr, ptr %6, i64 %519
  %arrayidx18.i316.3.i = getelementptr i8, ptr %520, i64 -8
  %idx.ext.i317.3.i = sext i16 %left.val189.3.i to i64
  %521 = load ptr, ptr %arrayidx18.i316.3.i, align 8
  %add.ptr.i318.3.i = getelementptr inbounds i16, ptr %521, i64 %idx.ext.i317.3.i
  %522 = load i16, ptr %add.ptr.i318.3.i, align 2
  %conv27.i319.3.i = zext i16 %522 to i32
  %incdec.ptr26.1.i320.3.i = getelementptr inbounds i8, ptr %520, i64 8
  %523 = load ptr, ptr %520, align 8
  %add.ptr.1.i321.3.i = getelementptr inbounds i16, ptr %523, i64 %idx.ext.i317.3.i
  %524 = load i16, ptr %add.ptr.1.i321.3.i, align 2
  %conv27.1.i322.3.i = zext i16 %524 to i32
  %add28.1.i323.3.i = add nuw nsw i32 %conv27.1.i322.3.i, %conv27.i319.3.i
  %incdec.ptr26.2.i324.3.i = getelementptr inbounds i8, ptr %520, i64 16
  %525 = load ptr, ptr %incdec.ptr26.1.i320.3.i, align 8
  %add.ptr.2.i325.3.i = getelementptr inbounds i16, ptr %525, i64 %idx.ext.i317.3.i
  %526 = load i16, ptr %add.ptr.2.i325.3.i, align 2
  %conv27.2.i326.3.i = zext i16 %526 to i32
  %add28.2.i327.3.i = add nuw nsw i32 %add28.1.i323.3.i, %conv27.2.i326.3.i
  %527 = load ptr, ptr %incdec.ptr26.2.i324.3.i, align 8
  %add.ptr.3.i328.3.i = getelementptr inbounds i16, ptr %527, i64 %idx.ext.i317.3.i
  %528 = load i16, ptr %add.ptr.3.i328.3.i, align 2
  %conv27.3.i332.3.i = zext i16 %528 to i32
  %add28.3.i333.3.i = add nuw nsw i32 %add28.2.i327.3.i, %conv27.3.i332.3.i
  %529 = getelementptr ptr, ptr %7, i64 %519
  %arrayidx18.i361.3.i = getelementptr i8, ptr %529, i64 -8
  %530 = load ptr, ptr %arrayidx18.i361.3.i, align 8
  %add.ptr.i363.3.i = getelementptr inbounds i16, ptr %530, i64 %idx.ext.i317.3.i
  %531 = load i16, ptr %add.ptr.i363.3.i, align 2
  %conv27.i364.3.i = zext i16 %531 to i32
  %incdec.ptr26.1.i365.3.i = getelementptr inbounds i8, ptr %529, i64 8
  %532 = load ptr, ptr %529, align 8
  %add.ptr.1.i366.3.i = getelementptr inbounds i16, ptr %532, i64 %idx.ext.i317.3.i
  %533 = load i16, ptr %add.ptr.1.i366.3.i, align 2
  %conv27.1.i367.3.i = zext i16 %533 to i32
  %add28.1.i368.3.i = add nuw nsw i32 %conv27.1.i367.3.i, %conv27.i364.3.i
  %incdec.ptr26.2.i369.3.i = getelementptr inbounds i8, ptr %529, i64 16
  %534 = load ptr, ptr %incdec.ptr26.1.i365.3.i, align 8
  %add.ptr.2.i370.3.i = getelementptr inbounds i16, ptr %534, i64 %idx.ext.i317.3.i
  %535 = load i16, ptr %add.ptr.2.i370.3.i, align 2
  %conv27.2.i371.3.i = zext i16 %535 to i32
  %add28.2.i372.3.i = add nuw nsw i32 %add28.1.i368.3.i, %conv27.2.i371.3.i
  %536 = load ptr, ptr %incdec.ptr26.2.i369.3.i, align 8
  %add.ptr.3.i373.3.i = getelementptr inbounds i16, ptr %536, i64 %idx.ext.i317.3.i
  br label %if.end34.sink.split.i374.3.i

if.then.i381.3.i:                                 ; preds = %sw.bb74.3.i
  %537 = load i64, ptr %23, align 4
  %idxprom.i337.3.i = ashr i64 %537, 48
  %arrayidx.i338.3.i = getelementptr inbounds ptr, ptr %6, i64 %idxprom.i337.3.i
  %538 = load ptr, ptr %arrayidx.i338.3.i, align 8
  %sh.diff.i339.3.i = lshr i64 %537, 16
  %tr.sh.diff.i340.3.i = trunc i64 %sh.diff.i339.3.i to i32
  %conv.i341.3.i = ashr i32 %tr.sh.diff.i340.3.i, 16
  %add.i342.3.i = add nsw i32 %conv.i341.3.i, %conv60.3.i
  %idxprom5.i343.3.i = sext i32 %add.i342.3.i to i64
  %arrayidx6.i344.3.i = getelementptr inbounds i16, ptr %538, i64 %idxprom5.i343.3.i
  %539 = load <4 x i16>, ptr %arrayidx6.i344.3.i, align 2
  %540 = zext <4 x i16> %539 to <4 x i32>
  %541 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %540)
  %arrayidx.i383.3.i = getelementptr inbounds ptr, ptr %7, i64 %idxprom.i337.3.i
  %542 = load ptr, ptr %arrayidx.i383.3.i, align 8
  %arrayidx6.i389.3.i = getelementptr inbounds i16, ptr %542, i64 %idxprom5.i343.3.i
  %incdec.ptr.i390.3.i = getelementptr inbounds i8, ptr %arrayidx6.i389.3.i, i64 2
  %543 = load i16, ptr %arrayidx6.i389.3.i, align 2
  %conv8.i391.3.i = zext i16 %543 to i32
  %incdec.ptr.1.i392.3.i = getelementptr inbounds i8, ptr %arrayidx6.i389.3.i, i64 4
  %544 = load i16, ptr %incdec.ptr.i390.3.i, align 2
  %conv8.1.i393.3.i = zext i16 %544 to i32
  %add9.1.i394.3.i = add nuw nsw i32 %conv8.1.i393.3.i, %conv8.i391.3.i
  %incdec.ptr.2.i395.3.i = getelementptr inbounds i8, ptr %arrayidx6.i389.3.i, i64 6
  %545 = load i16, ptr %incdec.ptr.1.i392.3.i, align 2
  %conv8.2.i396.3.i = zext i16 %545 to i32
  %add9.2.i397.3.i = add nuw nsw i32 %add9.1.i394.3.i, %conv8.2.i396.3.i
  br label %if.end34.sink.split.i374.3.i

if.end34.sink.split.i374.3.i:                     ; preds = %if.then.i381.3.i, %if.then12.i358.3.i
  %pred.2530.in.in.3.i = phi i32 [ %add28.3.i333.3.i, %if.then12.i358.3.i ], [ %541, %if.then.i381.3.i ]
  %add.ptr.3.sink.i375.3.i = phi ptr [ %add.ptr.3.i373.3.i, %if.then12.i358.3.i ], [ %incdec.ptr.2.i395.3.i, %if.then.i381.3.i ]
  %add28.2.sink.i376.3.i = phi i32 [ %add28.2.i372.3.i, %if.then12.i358.3.i ], [ %add9.2.i397.3.i, %if.then.i381.3.i ]
  %pred.2530.in.3.i = add nuw nsw i32 %pred.2530.in.in.3.i, 2
  %pred.2530.3.i = lshr i32 %pred.2530.in.3.i, 2
  %546 = load i16, ptr %add.ptr.3.sink.i375.3.i, align 2
  %conv27.3.i377.3.i = zext i16 %546 to i32
  %add28.3.i378.3.i = add nuw nsw i32 %add28.2.sink.i376.3.i, 2
  %add32.i379.3.i = add nuw nsw i32 %add28.3.i378.3.i, %conv27.3.i377.3.i
  %shr33.i380.3.i = lshr i32 %add32.i379.3.i, 2
  br label %sw.epilog.3.i

sw.bb71.3.i:                                      ; preds = %sw.epilog.2.i
  %add72.3.i = add nuw nsw i32 %conv53.3.i, 1
  %left.val193.3.i = load i16, ptr %24, align 4
  %left.val194.3.i = load i16, ptr %25, align 2
  br i1 %tobool.not.i399.i, label %if.else.i.3.i, label %if.then.i292.3.i

if.then.i292.3.i:                                 ; preds = %sw.bb71.3.i
  %547 = load i64, ptr %23, align 4
  %idxprom.i257.3.i = ashr i64 %547, 48
  %arrayidx.i258.3.i = getelementptr inbounds ptr, ptr %6, i64 %idxprom.i257.3.i
  %548 = load ptr, ptr %arrayidx.i258.3.i, align 8
  %sh.diff.i259.3.i = lshr i64 %547, 16
  %tr.sh.diff.i260.3.i = trunc i64 %sh.diff.i259.3.i to i32
  %conv.i261.3.i = ashr i32 %tr.sh.diff.i260.3.i, 16
  %add.i262.3.i = add nsw i32 %conv.i261.3.i, %conv60.3.i
  %idxprom5.i.3.i = sext i32 %add.i262.3.i to i64
  %arrayidx6.i.3.i = getelementptr inbounds i16, ptr %548, i64 %idxprom5.i.3.i
  %549 = load <4 x i16>, ptr %arrayidx6.i.3.i, align 2
  %550 = zext <4 x i16> %549 to <4 x i32>
  %551 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %550)
  %arrayidx.i294.3.i = getelementptr inbounds ptr, ptr %7, i64 %idxprom.i257.3.i
  %552 = load ptr, ptr %arrayidx.i294.3.i, align 8
  %arrayidx6.i300.3.i = getelementptr inbounds i16, ptr %552, i64 %idxprom5.i.3.i
  %incdec.ptr.i301.3.i = getelementptr inbounds i8, ptr %arrayidx6.i300.3.i, i64 2
  %553 = load i16, ptr %arrayidx6.i300.3.i, align 2
  %conv8.i302.3.i = zext i16 %553 to i32
  %incdec.ptr.1.i303.3.i = getelementptr inbounds i8, ptr %arrayidx6.i300.3.i, i64 4
  %554 = load i16, ptr %incdec.ptr.i301.3.i, align 2
  %conv8.1.i304.3.i = zext i16 %554 to i32
  %add9.1.i305.3.i = add nuw nsw i32 %conv8.1.i304.3.i, %conv8.i302.3.i
  %incdec.ptr.2.i306.3.i = getelementptr inbounds i8, ptr %arrayidx6.i300.3.i, i64 6
  %555 = load i16, ptr %incdec.ptr.1.i303.3.i, align 2
  %conv8.2.i307.3.i = zext i16 %555 to i32
  %add9.2.i308.3.i = add nuw nsw i32 %add9.1.i305.3.i, %conv8.2.i307.3.i
  br label %if.end34.sink.split.i285.3.i

if.else.i.3.i:                                    ; preds = %sw.bb71.3.i
  br i1 %tobool6.not.i419.i, label %sw.epilog.3.i, label %if.then12.i269.3.i

if.then12.i269.3.i:                               ; preds = %if.else.i.3.i
  %conv15.i.3.i = sext i16 %left.val194.3.i to i32
  %add16.i.3.i = add nsw i32 %add72.3.i, %conv15.i.3.i
  %556 = sext i32 %add16.i.3.i to i64
  %557 = getelementptr ptr, ptr %6, i64 %556
  %arrayidx18.i.3.i = getelementptr i8, ptr %557, i64 -8
  %idx.ext.i250.3.i = sext i16 %left.val193.3.i to i64
  %558 = load ptr, ptr %arrayidx18.i.3.i, align 8
  %add.ptr.i251.3.i = getelementptr inbounds i16, ptr %558, i64 %idx.ext.i250.3.i
  %559 = load i16, ptr %add.ptr.i251.3.i, align 2
  %conv27.i.3.i = zext i16 %559 to i32
  %incdec.ptr26.1.i.3.i = getelementptr inbounds i8, ptr %557, i64 8
  %560 = load ptr, ptr %557, align 8
  %add.ptr.1.i252.3.i = getelementptr inbounds i16, ptr %560, i64 %idx.ext.i250.3.i
  %561 = load i16, ptr %add.ptr.1.i252.3.i, align 2
  %conv27.1.i.3.i = zext i16 %561 to i32
  %add28.1.i.3.i = add nuw nsw i32 %conv27.1.i.3.i, %conv27.i.3.i
  %incdec.ptr26.2.i.3.i = getelementptr inbounds i8, ptr %557, i64 16
  %562 = load ptr, ptr %incdec.ptr26.1.i.3.i, align 8
  %add.ptr.2.i253.3.i = getelementptr inbounds i16, ptr %562, i64 %idx.ext.i250.3.i
  %563 = load i16, ptr %add.ptr.2.i253.3.i, align 2
  %conv27.2.i.3.i = zext i16 %563 to i32
  %add28.2.i.3.i = add nuw nsw i32 %add28.1.i.3.i, %conv27.2.i.3.i
  %564 = load ptr, ptr %incdec.ptr26.2.i.3.i, align 8
  %add.ptr.3.i254.3.i = getelementptr inbounds i16, ptr %564, i64 %idx.ext.i250.3.i
  %565 = load i16, ptr %add.ptr.3.i254.3.i, align 2
  %conv27.3.i.3.i = zext i16 %565 to i32
  %add28.3.i.3.i = add nuw nsw i32 %add28.2.i.3.i, %conv27.3.i.3.i
  %566 = getelementptr ptr, ptr %7, i64 %556
  %arrayidx18.i272.3.i = getelementptr i8, ptr %566, i64 -8
  %567 = load ptr, ptr %arrayidx18.i272.3.i, align 8
  %add.ptr.i274.3.i = getelementptr inbounds i16, ptr %567, i64 %idx.ext.i250.3.i
  %568 = load i16, ptr %add.ptr.i274.3.i, align 2
  %conv27.i275.3.i = zext i16 %568 to i32
  %incdec.ptr26.1.i276.3.i = getelementptr inbounds i8, ptr %566, i64 8
  %569 = load ptr, ptr %566, align 8
  %add.ptr.1.i277.3.i = getelementptr inbounds i16, ptr %569, i64 %idx.ext.i250.3.i
  %570 = load i16, ptr %add.ptr.1.i277.3.i, align 2
  %conv27.1.i278.3.i = zext i16 %570 to i32
  %add28.1.i279.3.i = add nuw nsw i32 %conv27.1.i278.3.i, %conv27.i275.3.i
  %incdec.ptr26.2.i280.3.i = getelementptr inbounds i8, ptr %566, i64 16
  %571 = load ptr, ptr %incdec.ptr26.1.i276.3.i, align 8
  %add.ptr.2.i281.3.i = getelementptr inbounds i16, ptr %571, i64 %idx.ext.i250.3.i
  %572 = load i16, ptr %add.ptr.2.i281.3.i, align 2
  %conv27.2.i282.3.i = zext i16 %572 to i32
  %add28.2.i283.3.i = add nuw nsw i32 %add28.1.i279.3.i, %conv27.2.i282.3.i
  %573 = load ptr, ptr %incdec.ptr26.2.i280.3.i, align 8
  %add.ptr.3.i284.3.i = getelementptr inbounds i16, ptr %573, i64 %idx.ext.i250.3.i
  br label %if.end34.sink.split.i285.3.i

if.end34.sink.split.i285.3.i:                     ; preds = %if.then12.i269.3.i, %if.then.i292.3.i
  %pred.1517.in.in.3.i = phi i32 [ %add28.3.i.3.i, %if.then12.i269.3.i ], [ %551, %if.then.i292.3.i ]
  %add.ptr.3.sink.i286.3.i = phi ptr [ %add.ptr.3.i284.3.i, %if.then12.i269.3.i ], [ %incdec.ptr.2.i306.3.i, %if.then.i292.3.i ]
  %add28.2.sink.i287.3.i = phi i32 [ %add28.2.i283.3.i, %if.then12.i269.3.i ], [ %add9.2.i308.3.i, %if.then.i292.3.i ]
  %pred.1517.in.3.i = add nuw nsw i32 %pred.1517.in.in.3.i, 2
  %pred.1517.3.i = lshr i32 %pred.1517.in.3.i, 2
  %574 = load i16, ptr %add.ptr.3.sink.i286.3.i, align 2
  %conv27.3.i288.3.i = zext i16 %574 to i32
  %add28.3.i289.3.i = add nuw nsw i32 %add28.2.sink.i287.3.i, 2
  %add32.i290.3.i = add nuw nsw i32 %add28.3.i289.3.i, %conv27.3.i288.3.i
  %shr33.i291.3.i = lshr i32 %add32.i290.3.i, 2
  br label %sw.epilog.3.i

sw.bb.3.i:                                        ; preds = %sw.epilog.2.i
  %add.3.i = add nuw nsw i32 %conv53.3.i, 1
  %575 = load i64, ptr %23, align 4
  %left.val185.3.i = load i16, ptr %24, align 4
  %left.val186.3.i = load i16, ptr %25, align 2
  br i1 %tobool.not.i399.i, label %if.end.thread.i.3.i, label %if.then.i.3.i

if.then.i.3.i:                                    ; preds = %sw.bb.3.i
  %idxprom.i.3.i = ashr i64 %575, 48
  %arrayidx.i.3.i = getelementptr inbounds ptr, ptr %6, i64 %idxprom.i.3.i
  %576 = load ptr, ptr %arrayidx.i.3.i, align 8
  %sh.diff.i.3.i = lshr i64 %575, 16
  %tr.sh.diff.i.3.i = trunc i64 %sh.diff.i.3.i to i32
  %conv.i.3.i = ashr i32 %tr.sh.diff.i.3.i, 16
  %add.i.3.i = add nsw i32 %conv.i.3.i, %conv60.3.i
  %idxprom1.i.3.i = sext i32 %add.i.3.i to i64
  %arrayidx2.i.3.i = getelementptr inbounds i16, ptr %576, i64 %idxprom1.i.3.i
  %577 = load <4 x i16>, ptr %arrayidx2.i.3.i, align 2
  %578 = zext <4 x i16> %577 to <4 x i32>
  %579 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %578)
  br i1 %tobool6.not.i419.i, label %if.then34.i.3.i, label %if.then7.i.3.i

if.then34.i.3.i:                                  ; preds = %if.then.i.3.i
  %add35.i.3.i = add nuw nsw i32 %579, 2
  %shr36.i.3.i = lshr i32 %add35.i.3.i, 2
  br label %if.then.i196.3.i

if.end.thread.i.3.i:                              ; preds = %sw.bb.3.i
  br i1 %tobool6.not.i419.i, label %sw.epilog.3.i, label %if.then7.i.3.i

if.then7.i.3.i:                                   ; preds = %if.end.thread.i.3.i, %if.then.i.3.i
  %s0.19.i.3.i = phi i32 [ 0, %if.end.thread.i.3.i ], [ %579, %if.then.i.3.i ]
  %conv10.i.3.i = sext i16 %left.val186.3.i to i32
  %add11.i.3.i = add nsw i32 %add.3.i, %conv10.i.3.i
  %580 = sext i32 %add11.i.3.i to i64
  %581 = getelementptr ptr, ptr %6, i64 %580
  %arrayidx13.i.3.i = getelementptr i8, ptr %581, i64 -8
  %idx.ext.i.3.i = sext i16 %left.val185.3.i to i64
  %582 = load ptr, ptr %arrayidx13.i.3.i, align 8
  %add.ptr.i.3.i = getelementptr inbounds i16, ptr %582, i64 %idx.ext.i.3.i
  %583 = load i16, ptr %add.ptr.i.3.i, align 2
  %conv22.i.3.i = zext i16 %583 to i32
  %incdec.ptr21.1.i.3.i = getelementptr inbounds i8, ptr %581, i64 8
  %584 = load ptr, ptr %581, align 8
  %add.ptr.1.i.3.i = getelementptr inbounds i16, ptr %584, i64 %idx.ext.i.3.i
  %585 = load i16, ptr %add.ptr.1.i.3.i, align 2
  %conv22.1.i.3.i = zext i16 %585 to i32
  %add23.1.i.3.i = add nuw nsw i32 %conv22.1.i.3.i, %conv22.i.3.i
  %incdec.ptr21.2.i.3.i = getelementptr inbounds i8, ptr %581, i64 16
  %586 = load ptr, ptr %incdec.ptr21.1.i.3.i, align 8
  %add.ptr.2.i.3.i = getelementptr inbounds i16, ptr %586, i64 %idx.ext.i.3.i
  %587 = load i16, ptr %add.ptr.2.i.3.i, align 2
  %conv22.2.i.3.i = zext i16 %587 to i32
  %add23.2.i.3.i = add nuw nsw i32 %add23.1.i.3.i, %conv22.2.i.3.i
  %588 = load ptr, ptr %incdec.ptr21.2.i.3.i, align 8
  %add.ptr.3.i.3.i = getelementptr inbounds i16, ptr %588, i64 %idx.ext.i.3.i
  %589 = load i16, ptr %add.ptr.3.i.3.i, align 2
  %conv22.3.i.3.i = zext i16 %589 to i32
  %add23.3.i.3.i = add nuw nsw i32 %add23.2.i.3.i, %conv22.3.i.3.i
  br i1 %tobool.not.i399.i, label %if.end.thread.i247.3.i, label %if.then30.i.3.i

if.then30.i.3.i:                                  ; preds = %if.then7.i.3.i
  %add31.i.3.i = add nuw nsw i32 %s0.19.i.3.i, 4
  %add32.i.3.i = add nuw nsw i32 %add31.i.3.i, %add23.3.i.3.i
  %shr.i.3.i = lshr i32 %add32.i.3.i, 3
  %.pre619.i = ashr i64 %575, 48
  %.pre620.i = lshr i64 %575, 16
  %.pre621.i = trunc i64 %.pre620.i to i32
  %.pre622.i = ashr i32 %.pre621.i, 16
  %.pre623.i = add nsw i32 %.pre622.i, %conv60.3.i
  %.pre624.i = sext i32 %.pre623.i to i64
  br label %if.then.i196.3.i

if.then.i196.3.i:                                 ; preds = %if.then30.i.3.i, %if.then34.i.3.i
  %idxprom1.i203.3.pre-phi.i = phi i64 [ %.pre624.i, %if.then30.i.3.i ], [ %idxprom1.i.3.i, %if.then34.i.3.i ]
  %idxprom.i197.3.pre-phi.i = phi i64 [ %.pre619.i, %if.then30.i.3.i ], [ %idxprom.i.3.i, %if.then34.i.3.i ]
  %pred.0.3.i = phi i32 [ %shr.i.3.i, %if.then30.i.3.i ], [ %shr36.i.3.i, %if.then34.i.3.i ]
  %arrayidx.i198.3.i = getelementptr inbounds ptr, ptr %7, i64 %idxprom.i197.3.pre-phi.i
  %590 = load ptr, ptr %arrayidx.i198.3.i, align 8
  %arrayidx2.i204.3.i = getelementptr inbounds i16, ptr %590, i64 %idxprom1.i203.3.pre-phi.i
  %incdec.ptr.i205.3.i = getelementptr inbounds i8, ptr %arrayidx2.i204.3.i, i64 2
  %591 = load i16, ptr %arrayidx2.i204.3.i, align 2
  %conv4.i206.3.i = zext i16 %591 to i32
  %incdec.ptr.1.i207.3.i = getelementptr inbounds i8, ptr %arrayidx2.i204.3.i, i64 4
  %592 = load i16, ptr %incdec.ptr.i205.3.i, align 2
  %conv4.1.i208.3.i = zext i16 %592 to i32
  %add5.1.i209.3.i = add nuw nsw i32 %conv4.1.i208.3.i, %conv4.i206.3.i
  %incdec.ptr.2.i210.3.i = getelementptr inbounds i8, ptr %arrayidx2.i204.3.i, i64 6
  %593 = load i16, ptr %incdec.ptr.1.i207.3.i, align 2
  %conv4.2.i211.3.i = zext i16 %593 to i32
  %add5.2.i212.3.i = add nuw nsw i32 %add5.1.i209.3.i, %conv4.2.i211.3.i
  %594 = load i16, ptr %incdec.ptr.2.i210.3.i, align 2
  %conv4.3.i213.3.i = zext i16 %594 to i32
  %add5.3.i214.3.i = add nuw nsw i32 %add5.2.i212.3.i, %conv4.3.i213.3.i
  br i1 %tobool6.not.i419.i, label %if.then34.i244.3.i, label %if.then.i196.3.if.then7.i216.3_crit_edge.i

if.then.i196.3.if.then7.i216.3_crit_edge.i:       ; preds = %if.then.i196.3.i
  %.pre660.i = sext i16 %left.val186.3.i to i32
  %.pre661.i = add nsw i32 %add.3.i, %.pre660.i
  %.pre662.i = sext i32 %.pre661.i to i64
  %.pre663.i = sext i16 %left.val185.3.i to i64
  br label %if.then7.i216.3.i

if.then34.i244.3.i:                               ; preds = %if.then.i196.3.i
  %add35.i245.3.i = add nuw nsw i32 %add5.3.i214.3.i, 2
  %shr36.i246.3.i = lshr i32 %add35.i245.3.i, 2
  br label %sw.epilog.3.i

if.end.thread.i247.3.i:                           ; preds = %if.then7.i.3.i
  %add40.i.3.i = add nuw nsw i32 %add23.3.i.3.i, 2
  %shr41.i.3.i = lshr i32 %add40.i.3.i, 2
  br label %if.then7.i216.3.i

if.then7.i216.3.i:                                ; preds = %if.end.thread.i247.3.i, %if.then.i196.3.if.then7.i216.3_crit_edge.i
  %idx.ext.i221.3.pre-phi.i = phi i64 [ %.pre663.i, %if.then.i196.3.if.then7.i216.3_crit_edge.i ], [ %idx.ext.i.3.i, %if.end.thread.i247.3.i ]
  %.pre-phi.i = phi i64 [ %.pre662.i, %if.then.i196.3.if.then7.i216.3_crit_edge.i ], [ %580, %if.end.thread.i247.3.i ]
  %pred.0512.3.i = phi i32 [ %pred.0.3.i, %if.then.i196.3.if.then7.i216.3_crit_edge.i ], [ %shr41.i.3.i, %if.end.thread.i247.3.i ]
  %s0.19.i217.3.i = phi i32 [ %add5.3.i214.3.i, %if.then.i196.3.if.then7.i216.3_crit_edge.i ], [ 0, %if.end.thread.i247.3.i ]
  %595 = getelementptr ptr, ptr %7, i64 %.pre-phi.i
  %arrayidx13.i220.3.i = getelementptr i8, ptr %595, i64 -8
  %596 = load ptr, ptr %arrayidx13.i220.3.i, align 8
  %add.ptr.i222.3.i = getelementptr inbounds i16, ptr %596, i64 %idx.ext.i221.3.pre-phi.i
  %597 = load i16, ptr %add.ptr.i222.3.i, align 2
  %conv22.i223.3.i = zext i16 %597 to i32
  %incdec.ptr21.1.i224.3.i = getelementptr inbounds i8, ptr %595, i64 8
  %598 = load ptr, ptr %595, align 8
  %add.ptr.1.i225.3.i = getelementptr inbounds i16, ptr %598, i64 %idx.ext.i221.3.pre-phi.i
  %599 = load i16, ptr %add.ptr.1.i225.3.i, align 2
  %conv22.1.i226.3.i = zext i16 %599 to i32
  %add23.1.i227.3.i = add nuw nsw i32 %conv22.1.i226.3.i, %conv22.i223.3.i
  %incdec.ptr21.2.i228.3.i = getelementptr inbounds i8, ptr %595, i64 16
  %600 = load ptr, ptr %incdec.ptr21.1.i224.3.i, align 8
  %add.ptr.2.i229.3.i = getelementptr inbounds i16, ptr %600, i64 %idx.ext.i221.3.pre-phi.i
  %601 = load i16, ptr %add.ptr.2.i229.3.i, align 2
  %conv22.2.i230.3.i = zext i16 %601 to i32
  %add23.2.i231.3.i = add nuw nsw i32 %add23.1.i227.3.i, %conv22.2.i230.3.i
  %602 = load ptr, ptr %incdec.ptr21.2.i228.3.i, align 8
  %add.ptr.3.i232.3.i = getelementptr inbounds i16, ptr %602, i64 %idx.ext.i221.3.pre-phi.i
  %603 = load i16, ptr %add.ptr.3.i232.3.i, align 2
  %conv22.3.i233.3.i = zext i16 %603 to i32
  %add23.3.i234.3.i = add nuw nsw i32 %add23.2.i231.3.i, %conv22.3.i233.3.i
  br i1 %tobool.not.i399.i, label %if.then39.i241.3.i, label %if.then30.i235.3.i

if.then30.i235.3.i:                               ; preds = %if.then7.i216.3.i
  %add31.i236.3.i = add nuw nsw i32 %s0.19.i217.3.i, 4
  %add32.i237.3.i = add nuw nsw i32 %add31.i236.3.i, %add23.3.i234.3.i
  %shr.i238.3.i = lshr i32 %add32.i237.3.i, 3
  br label %sw.epilog.3.i

if.then39.i241.3.i:                               ; preds = %if.then7.i216.3.i
  %add40.i242.3.i = add nuw nsw i32 %add23.3.i234.3.i, 2
  %shr41.i243.3.i = lshr i32 %add40.i242.3.i, 2
  br label %sw.epilog.3.i

sw.epilog.3.i:                                    ; preds = %if.then39.i241.3.i, %if.then30.i235.3.i, %if.then34.i244.3.i, %if.end.thread.i.3.i, %if.end34.sink.split.i285.3.i, %if.else.i.3.i, %if.end34.sink.split.i374.3.i, %if.else.i312.3.i, %if.then39.i500.3.i, %if.then30.i494.3.i, %if.then34.i503.3.i, %if.end.thread.i451.3.i, %sw.epilog.2.i
  %pred.4.3.i = phi i32 [ %487, %sw.epilog.2.i ], [ %pred.0.3.i, %if.then34.i244.3.i ], [ %pred.0512.3.i, %if.then39.i241.3.i ], [ %pred.0512.3.i, %if.then30.i235.3.i ], [ %pred.1517.3.i, %if.end34.sink.split.i285.3.i ], [ %pred.2530.3.i, %if.end34.sink.split.i374.3.i ], [ %pred.3.3.i, %if.then34.i503.3.i ], [ %pred.3545.3.i, %if.then39.i500.3.i ], [ %pred.3545.3.i, %if.then30.i494.3.i ], [ %487, %if.end.thread.i.3.i ], [ %487, %if.else.i.3.i ], [ %487, %if.else.i312.3.i ], [ %487, %if.end.thread.i451.3.i ]
  %pred1.4.3.i = phi i32 [ %488, %sw.epilog.2.i ], [ %shr36.i246.3.i, %if.then34.i244.3.i ], [ %shr41.i243.3.i, %if.then39.i241.3.i ], [ %shr.i238.3.i, %if.then30.i235.3.i ], [ %shr33.i291.3.i, %if.end34.sink.split.i285.3.i ], [ %shr33.i380.3.i, %if.end34.sink.split.i374.3.i ], [ %shr36.i505.3.i, %if.then34.i503.3.i ], [ %shr41.i502.3.i, %if.then39.i500.3.i ], [ %shr.i497.3.i, %if.then30.i494.3.i ], [ %488, %if.end.thread.i.3.i ], [ %488, %if.else.i.3.i ], [ %488, %if.else.i312.3.i ], [ %488, %if.end.thread.i451.3.i ]
  %conv90.3.i = trunc i32 %pred.4.3.i to i16
  %conv95.3.i = trunc i32 %pred1.4.3.i to i16
  %604 = zext i8 %486 to i64
  %605 = zext i8 %485 to i64
  %arrayidx92.3597.i = getelementptr inbounds ptr, ptr %9, i64 %605
  %arrayidx97.3598.i = getelementptr inbounds ptr, ptr %10, i64 %605
  %606 = load ptr, ptr %arrayidx92.3597.i, align 8
  %arrayidx94.3599.i = getelementptr inbounds i16, ptr %606, i64 %604
  store i16 %conv90.3.i, ptr %arrayidx94.3599.i, align 2
  %607 = load ptr, ptr %arrayidx97.3598.i, align 8
  %arrayidx99.3600.i = getelementptr inbounds i16, ptr %607, i64 %604
  store i16 %conv95.3.i, ptr %arrayidx99.3600.i, align 2
  %indvars.iv.next.3601.i = add nuw nsw i64 %604, 1
  %608 = load ptr, ptr %arrayidx92.3597.i, align 8
  %arrayidx94.1.3602.i = getelementptr inbounds i16, ptr %608, i64 %indvars.iv.next.3601.i
  store i16 %conv90.3.i, ptr %arrayidx94.1.3602.i, align 2
  %609 = load ptr, ptr %arrayidx97.3598.i, align 8
  %arrayidx99.1.3603.i = getelementptr inbounds i16, ptr %609, i64 %indvars.iv.next.3601.i
  store i16 %conv95.3.i, ptr %arrayidx99.1.3603.i, align 2
  %indvars.iv.next.1.3604.i = add nuw nsw i64 %604, 2
  %610 = load ptr, ptr %arrayidx92.3597.i, align 8
  %arrayidx94.2.3605.i = getelementptr inbounds i16, ptr %610, i64 %indvars.iv.next.1.3604.i
  store i16 %conv90.3.i, ptr %arrayidx94.2.3605.i, align 2
  %611 = load ptr, ptr %arrayidx97.3598.i, align 8
  %arrayidx99.2.3606.i = getelementptr inbounds i16, ptr %611, i64 %indvars.iv.next.1.3604.i
  store i16 %conv95.3.i, ptr %arrayidx99.2.3606.i, align 2
  %indvars.iv.next.2.3607.i = add nuw nsw i64 %604, 3
  %612 = load ptr, ptr %arrayidx92.3597.i, align 8
  %arrayidx94.3.3608.i = getelementptr inbounds i16, ptr %612, i64 %indvars.iv.next.2.3607.i
  store i16 %conv90.3.i, ptr %arrayidx94.3.3608.i, align 2
  %613 = load ptr, ptr %arrayidx97.3598.i, align 8
  %arrayidx99.3.3609.i = getelementptr inbounds i16, ptr %613, i64 %indvars.iv.next.2.3607.i
  store i16 %conv95.3.i, ptr %arrayidx99.3.3609.i, align 2
  %indvars.iv.next555.3.i = add nuw nsw i64 %605, 1
  %arrayidx92.1.3.i = getelementptr inbounds ptr, ptr %9, i64 %indvars.iv.next555.3.i
  %arrayidx97.1.3.i = getelementptr inbounds ptr, ptr %10, i64 %indvars.iv.next555.3.i
  %614 = load ptr, ptr %arrayidx92.1.3.i, align 8
  %arrayidx94.1557.3.i = getelementptr inbounds i16, ptr %614, i64 %604
  store i16 %conv90.3.i, ptr %arrayidx94.1557.3.i, align 2
  %615 = load ptr, ptr %arrayidx97.1.3.i, align 8
  %arrayidx99.1558.3.i = getelementptr inbounds i16, ptr %615, i64 %604
  store i16 %conv95.3.i, ptr %arrayidx99.1558.3.i, align 2
  %616 = load ptr, ptr %arrayidx92.1.3.i, align 8
  %arrayidx94.1.1.3.i = getelementptr inbounds i16, ptr %616, i64 %indvars.iv.next.3601.i
  store i16 %conv90.3.i, ptr %arrayidx94.1.1.3.i, align 2
  %617 = load ptr, ptr %arrayidx97.1.3.i, align 8
  %arrayidx99.1.1.3.i = getelementptr inbounds i16, ptr %617, i64 %indvars.iv.next.3601.i
  store i16 %conv95.3.i, ptr %arrayidx99.1.1.3.i, align 2
  %618 = load ptr, ptr %arrayidx92.1.3.i, align 8
  %arrayidx94.2.1.3.i = getelementptr inbounds i16, ptr %618, i64 %indvars.iv.next.1.3604.i
  store i16 %conv90.3.i, ptr %arrayidx94.2.1.3.i, align 2
  %619 = load ptr, ptr %arrayidx97.1.3.i, align 8
  %arrayidx99.2.1.3.i = getelementptr inbounds i16, ptr %619, i64 %indvars.iv.next.1.3604.i
  store i16 %conv95.3.i, ptr %arrayidx99.2.1.3.i, align 2
  %620 = load ptr, ptr %arrayidx92.1.3.i, align 8
  %arrayidx94.3.1.3.i = getelementptr inbounds i16, ptr %620, i64 %indvars.iv.next.2.3607.i
  store i16 %conv90.3.i, ptr %arrayidx94.3.1.3.i, align 2
  %621 = load ptr, ptr %arrayidx97.1.3.i, align 8
  %arrayidx99.3.1.3.i = getelementptr inbounds i16, ptr %621, i64 %indvars.iv.next.2.3607.i
  store i16 %conv95.3.i, ptr %arrayidx99.3.1.3.i, align 2
  %indvars.iv.next555.1.3.i = add nuw nsw i64 %605, 2
  %arrayidx92.2.3.i = getelementptr inbounds ptr, ptr %9, i64 %indvars.iv.next555.1.3.i
  %arrayidx97.2.3.i = getelementptr inbounds ptr, ptr %10, i64 %indvars.iv.next555.1.3.i
  %622 = load ptr, ptr %arrayidx92.2.3.i, align 8
  %arrayidx94.2560.3.i = getelementptr inbounds i16, ptr %622, i64 %604
  store i16 %conv90.3.i, ptr %arrayidx94.2560.3.i, align 2
  %623 = load ptr, ptr %arrayidx97.2.3.i, align 8
  %arrayidx99.2561.3.i = getelementptr inbounds i16, ptr %623, i64 %604
  store i16 %conv95.3.i, ptr %arrayidx99.2561.3.i, align 2
  %624 = load ptr, ptr %arrayidx92.2.3.i, align 8
  %arrayidx94.1.2.3.i = getelementptr inbounds i16, ptr %624, i64 %indvars.iv.next.3601.i
  store i16 %conv90.3.i, ptr %arrayidx94.1.2.3.i, align 2
  %625 = load ptr, ptr %arrayidx97.2.3.i, align 8
  %arrayidx99.1.2.3.i = getelementptr inbounds i16, ptr %625, i64 %indvars.iv.next.3601.i
  store i16 %conv95.3.i, ptr %arrayidx99.1.2.3.i, align 2
  %626 = load ptr, ptr %arrayidx92.2.3.i, align 8
  %arrayidx94.2.2.3.i = getelementptr inbounds i16, ptr %626, i64 %indvars.iv.next.1.3604.i
  store i16 %conv90.3.i, ptr %arrayidx94.2.2.3.i, align 2
  %627 = load ptr, ptr %arrayidx97.2.3.i, align 8
  %arrayidx99.2.2.3.i = getelementptr inbounds i16, ptr %627, i64 %indvars.iv.next.1.3604.i
  store i16 %conv95.3.i, ptr %arrayidx99.2.2.3.i, align 2
  %628 = load ptr, ptr %arrayidx92.2.3.i, align 8
  %arrayidx94.3.2.3.i = getelementptr inbounds i16, ptr %628, i64 %indvars.iv.next.2.3607.i
  store i16 %conv90.3.i, ptr %arrayidx94.3.2.3.i, align 2
  %629 = load ptr, ptr %arrayidx97.2.3.i, align 8
  %arrayidx99.3.2.3.i = getelementptr inbounds i16, ptr %629, i64 %indvars.iv.next.2.3607.i
  store i16 %conv95.3.i, ptr %arrayidx99.3.2.3.i, align 2
  %indvars.iv.next555.2.3.i = add nuw nsw i64 %605, 3
  %arrayidx92.3.3.i = getelementptr inbounds ptr, ptr %9, i64 %indvars.iv.next555.2.3.i
  %arrayidx97.3.3.i = getelementptr inbounds ptr, ptr %10, i64 %indvars.iv.next555.2.3.i
  %630 = load ptr, ptr %arrayidx92.3.3.i, align 8
  %arrayidx94.3563.3.i = getelementptr inbounds i16, ptr %630, i64 %604
  store i16 %conv90.3.i, ptr %arrayidx94.3563.3.i, align 2
  %631 = load ptr, ptr %arrayidx97.3.3.i, align 8
  %arrayidx99.3564.3.i = getelementptr inbounds i16, ptr %631, i64 %604
  store i16 %conv95.3.i, ptr %arrayidx99.3564.3.i, align 2
  %632 = load ptr, ptr %arrayidx92.3.3.i, align 8
  %arrayidx94.1.3.3.i = getelementptr inbounds i16, ptr %632, i64 %indvars.iv.next.3601.i
  store i16 %conv90.3.i, ptr %arrayidx94.1.3.3.i, align 2
  %633 = load ptr, ptr %arrayidx97.3.3.i, align 8
  %arrayidx99.1.3.3.i = getelementptr inbounds i16, ptr %633, i64 %indvars.iv.next.3601.i
  store i16 %conv95.3.i, ptr %arrayidx99.1.3.3.i, align 2
  %634 = load ptr, ptr %arrayidx92.3.3.i, align 8
  %arrayidx94.2.3.3.i = getelementptr inbounds i16, ptr %634, i64 %indvars.iv.next.1.3604.i
  store i16 %conv90.3.i, ptr %arrayidx94.2.3.3.i, align 2
  %635 = load ptr, ptr %arrayidx97.3.3.i, align 8
  %arrayidx99.2.3.3.i = getelementptr inbounds i16, ptr %635, i64 %indvars.iv.next.1.3604.i
  store i16 %conv95.3.i, ptr %arrayidx99.2.3.3.i, align 2
  %636 = load ptr, ptr %arrayidx92.3.3.i, align 8
  %arrayidx94.3.3.3.i = getelementptr inbounds i16, ptr %636, i64 %indvars.iv.next.2.3607.i
  store i16 %conv90.3.i, ptr %arrayidx94.3.3.3.i, align 2
  %637 = load ptr, ptr %arrayidx97.3.3.i, align 8
  %arrayidx99.3.3.3.i = getelementptr inbounds i16, ptr %637, i64 %indvars.iv.next.2.3607.i
  store i16 %conv95.3.i, ptr %arrayidx99.3.3.3.i, align 2
  %indvars.iv.next611.i = add nuw nsw i64 %indvars.iv.i, 1
  %638 = load i32, ptr %num_uv_blocks.i, align 4
  %639 = sext i32 %638 to i64
  %cmp.i = icmp slt i64 %indvars.iv.next611.i, %639
  br i1 %cmp.i, label %for.cond43.preheader.i, label %intrapred_chroma_dc.exit

intrapred_chroma_dc.exit:                         ; preds = %sw.epilog.3.i, %if.end.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %left.i) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %up_left.i) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %up.i) #5
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %p_Vid1.i8 = getelementptr inbounds i8, ptr %currMB, i64 8
  %640 = load ptr, ptr %p_Vid1.i8, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %a.i) #5
  %arrayidx.i = getelementptr inbounds i8, ptr %640, i64 849132
  call void @getNonAffNeighbour(ptr noundef nonnull %currMB, i32 noundef -1, i32 noundef 0, ptr noundef nonnull %arrayidx.i, ptr noundef nonnull %a.i) #5
  %active_pps.i9 = getelementptr inbounds i8, ptr %640, i64 8
  %641 = load ptr, ptr %active_pps.i9, align 8
  %constrained_intra_pred_flag.i10 = getelementptr inbounds i8, ptr %641, i64 2204
  %642 = load i32, ptr %constrained_intra_pred_flag.i10, align 4
  %tobool.not.i11 = icmp eq i32 %642, 0
  %643 = load i32, ptr %a.i, align 4
  br i1 %tobool.not.i11, label %if.end.i19, label %if.else.i12

if.else.i12:                                      ; preds = %sw.bb1
  %tobool3.not.i = icmp eq i32 %643, 0
  br i1 %tobool3.not.i, label %if.then6.i, label %cond.true.i13

cond.true.i13:                                    ; preds = %if.else.i12
  %644 = load ptr, ptr %currMB, align 8
  %intra_block.i14 = getelementptr inbounds i8, ptr %644, i64 13544
  %645 = load ptr, ptr %intra_block.i14, align 8
  %mb_addr.i15 = getelementptr inbounds i8, ptr %a.i, i64 4
  %646 = load i32, ptr %mb_addr.i15, align 4
  %idxprom.i16 = sext i32 %646 to i64
  %arrayidx4.i17 = getelementptr inbounds i8, ptr %645, i64 %idxprom.i16
  %647 = load i8, ptr %arrayidx4.i17, align 1
  %conv.i18 = sext i8 %647 to i32
  br label %if.end.i19

if.end.i19:                                       ; preds = %cond.true.i13, %sw.bb1
  %left_avail.0.i20 = phi i32 [ %conv.i18, %cond.true.i13 ], [ %643, %sw.bb1 ]
  %tobool5.not.i = icmp eq i32 %left_avail.0.i20, 0
  br i1 %tobool5.not.i, label %if.then6.i, label %if.else7.i

if.then6.i:                                       ; preds = %if.end.i19, %if.else.i12
  call void @error(ptr noundef nonnull @.str.2, i32 noundef -1) #5
  br label %intrapred_chroma_hor.exit

if.else7.i:                                       ; preds = %if.end.i19
  %648 = load ptr, ptr %currMB, align 8
  %mb_cr_size_x.i = getelementptr inbounds i8, ptr %640, i64 849108
  %649 = load i32, ptr %mb_cr_size_x.i, align 4
  %mb_cr_size_y.i = getelementptr inbounds i8, ptr %640, i64 849112
  %650 = load i32, ptr %mb_cr_size_y.i, align 8
  %dec_picture9.i = getelementptr inbounds i8, ptr %648, i64 13520
  %651 = load ptr, ptr %dec_picture9.i, align 8
  %mb_pred.i21 = getelementptr inbounds i8, ptr %648, i64 1248
  %652 = load ptr, ptr %mb_pred.i21, align 8
  %arrayidx14.i = getelementptr inbounds i8, ptr %652, i64 8
  %653 = load ptr, ptr %arrayidx14.i, align 8
  %arrayidx16.i = getelementptr inbounds i8, ptr %652, i64 16
  %654 = load ptr, ptr %arrayidx16.i, align 8
  %imgUV.i22 = getelementptr inbounds i8, ptr %651, i64 136
  %655 = load ptr, ptr %imgUV.i22, align 8
  %656 = load ptr, ptr %655, align 8
  %arrayidx19.i23 = getelementptr inbounds i8, ptr %655, i64 8
  %657 = load ptr, ptr %arrayidx19.i23, align 8
  %cmp71.i = icmp sgt i32 %650, 0
  br i1 %cmp71.i, label %for.body.lr.ph.i, label %intrapred_chroma_hor.exit

for.body.lr.ph.i:                                 ; preds = %if.else7.i
  %pos_x12.i = getelementptr inbounds i8, ptr %a.i, i64 12
  %658 = load i16, ptr %pos_x12.i, align 4
  %idxprom23.i = sext i16 %658 to i64
  %cmp3269.i = icmp sgt i32 %649, 0
  br i1 %cmp3269.i, label %for.body.us.preheader.i, label %intrapred_chroma_hor.exit

for.body.us.preheader.i:                          ; preds = %for.body.lr.ph.i
  %pos_y10.i = getelementptr inbounds i8, ptr %a.i, i64 14
  %659 = load i16, ptr %pos_y10.i, align 2
  %660 = sext i16 %659 to i64
  %wide.trip.count83.i = zext nneg i32 %650 to i64
  %wide.trip.count.i = zext nneg i32 %649 to i64
  %xtraiter241 = and i64 %wide.trip.count.i, 1
  %661 = icmp eq i32 %649, 1
  %unroll_iter243 = and i64 %wide.trip.count.i, 2147483646
  %lcmp.mod242.not = icmp eq i64 %xtraiter241, 0
  br label %for.body.us.i

for.body.us.i:                                    ; preds = %for.cond31.for.inc46_crit_edge.us.i, %for.body.us.preheader.i
  %indvars.iv78.i = phi i64 [ %660, %for.body.us.preheader.i ], [ %indvars.iv.next79.i, %for.cond31.for.inc46_crit_edge.us.i ]
  %indvars.iv76.i = phi i64 [ 0, %for.body.us.preheader.i ], [ %indvars.iv.next77.i, %for.cond31.for.inc46_crit_edge.us.i ]
  %arrayidx22.us.i = getelementptr inbounds ptr, ptr %656, i64 %indvars.iv78.i
  %662 = load ptr, ptr %arrayidx22.us.i, align 8
  %arrayidx24.us.i = getelementptr inbounds i16, ptr %662, i64 %idxprom23.i
  %663 = load i16, ptr %arrayidx24.us.i, align 2
  %arrayidx27.us.i = getelementptr inbounds ptr, ptr %657, i64 %indvars.iv78.i
  %664 = load ptr, ptr %arrayidx27.us.i, align 8
  %arrayidx29.us.i = getelementptr inbounds i16, ptr %664, i64 %idxprom23.i
  %665 = load i16, ptr %arrayidx29.us.i, align 2
  %arrayidx37.us.i = getelementptr inbounds ptr, ptr %653, i64 %indvars.iv76.i
  %arrayidx42.us.i = getelementptr inbounds ptr, ptr %654, i64 %indvars.iv76.i
  br i1 %661, label %for.cond31.for.inc46_crit_edge.us.i.unr-lcssa, label %for.body34.us.i

for.body34.us.i:                                  ; preds = %for.body.us.i, %for.body34.us.i
  %indvars.iv.i24 = phi i64 [ %indvars.iv.next.i25.1, %for.body34.us.i ], [ 0, %for.body.us.i ]
  %niter244 = phi i64 [ %niter244.next.1, %for.body34.us.i ], [ 0, %for.body.us.i ]
  %666 = load ptr, ptr %arrayidx37.us.i, align 8
  %arrayidx39.us.i = getelementptr inbounds i16, ptr %666, i64 %indvars.iv.i24
  store i16 %663, ptr %arrayidx39.us.i, align 2
  %667 = load ptr, ptr %arrayidx42.us.i, align 8
  %arrayidx44.us.i = getelementptr inbounds i16, ptr %667, i64 %indvars.iv.i24
  store i16 %665, ptr %arrayidx44.us.i, align 2
  %indvars.iv.next.i25 = or disjoint i64 %indvars.iv.i24, 1
  %668 = load ptr, ptr %arrayidx37.us.i, align 8
  %arrayidx39.us.i.1 = getelementptr inbounds i16, ptr %668, i64 %indvars.iv.next.i25
  store i16 %663, ptr %arrayidx39.us.i.1, align 2
  %669 = load ptr, ptr %arrayidx42.us.i, align 8
  %arrayidx44.us.i.1 = getelementptr inbounds i16, ptr %669, i64 %indvars.iv.next.i25
  store i16 %665, ptr %arrayidx44.us.i.1, align 2
  %indvars.iv.next.i25.1 = add nuw nsw i64 %indvars.iv.i24, 2
  %niter244.next.1 = add i64 %niter244, 2
  %niter244.ncmp.1 = icmp eq i64 %niter244.next.1, %unroll_iter243
  br i1 %niter244.ncmp.1, label %for.cond31.for.inc46_crit_edge.us.i.unr-lcssa, label %for.body34.us.i

for.cond31.for.inc46_crit_edge.us.i.unr-lcssa:    ; preds = %for.body34.us.i, %for.body.us.i
  %indvars.iv.i24.unr = phi i64 [ 0, %for.body.us.i ], [ %indvars.iv.next.i25.1, %for.body34.us.i ]
  br i1 %lcmp.mod242.not, label %for.cond31.for.inc46_crit_edge.us.i, label %for.body34.us.i.epil

for.body34.us.i.epil:                             ; preds = %for.cond31.for.inc46_crit_edge.us.i.unr-lcssa
  %670 = load ptr, ptr %arrayidx37.us.i, align 8
  %arrayidx39.us.i.epil = getelementptr inbounds i16, ptr %670, i64 %indvars.iv.i24.unr
  store i16 %663, ptr %arrayidx39.us.i.epil, align 2
  %671 = load ptr, ptr %arrayidx42.us.i, align 8
  %arrayidx44.us.i.epil = getelementptr inbounds i16, ptr %671, i64 %indvars.iv.i24.unr
  store i16 %665, ptr %arrayidx44.us.i.epil, align 2
  br label %for.cond31.for.inc46_crit_edge.us.i

for.cond31.for.inc46_crit_edge.us.i:              ; preds = %for.cond31.for.inc46_crit_edge.us.i.unr-lcssa, %for.body34.us.i.epil
  %indvars.iv.next79.i = add nsw i64 %indvars.iv78.i, 1
  %indvars.iv.next77.i = add nuw nsw i64 %indvars.iv76.i, 1
  %exitcond84.not.i = icmp eq i64 %indvars.iv.next77.i, %wide.trip.count83.i
  br i1 %exitcond84.not.i, label %intrapred_chroma_hor.exit, label %for.body.us.i

intrapred_chroma_hor.exit:                        ; preds = %for.cond31.for.inc46_crit_edge.us.i, %if.then6.i, %if.else7.i, %for.body.lr.ph.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %a.i) #5
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %672 = load ptr, ptr %currMB, align 8
  %p_Vid1.i27 = getelementptr inbounds i8, ptr %currMB, i64 8
  %673 = load ptr, ptr %p_Vid1.i27, align 8
  %dec_picture2.i28 = getelementptr inbounds i8, ptr %672, i64 13520
  %674 = load ptr, ptr %dec_picture2.i28, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %up.i26) #5
  %mb_cr_size_x.i29 = getelementptr inbounds i8, ptr %673, i64 849108
  %675 = load i32, ptr %mb_cr_size_x.i29, align 4
  %mb_cr_size_y.i30 = getelementptr inbounds i8, ptr %673, i64 849112
  %676 = load i32, ptr %mb_cr_size_y.i30, align 8
  %arrayidx.i31 = getelementptr inbounds i8, ptr %673, i64 849132
  call void @getNonAffNeighbour(ptr noundef nonnull %currMB, i32 noundef 0, i32 noundef -1, ptr noundef nonnull %arrayidx.i31, ptr noundef nonnull %up.i26) #5
  %active_pps.i32 = getelementptr inbounds i8, ptr %673, i64 8
  %677 = load ptr, ptr %active_pps.i32, align 8
  %constrained_intra_pred_flag.i33 = getelementptr inbounds i8, ptr %677, i64 2204
  %678 = load i32, ptr %constrained_intra_pred_flag.i33, align 4
  %tobool.not.i34 = icmp eq i32 %678, 0
  %679 = load i32, ptr %up.i26, align 4
  br i1 %tobool.not.i34, label %if.end.i42, label %if.else.i35

if.else.i35:                                      ; preds = %sw.bb2
  %tobool4.not.i = icmp eq i32 %679, 0
  br i1 %tobool4.not.i, label %if.then7.i, label %cond.true.i36

cond.true.i36:                                    ; preds = %if.else.i35
  %intra_block.i37 = getelementptr inbounds i8, ptr %672, i64 13544
  %680 = load ptr, ptr %intra_block.i37, align 8
  %mb_addr.i38 = getelementptr inbounds i8, ptr %up.i26, i64 4
  %681 = load i32, ptr %mb_addr.i38, align 4
  %idxprom.i39 = sext i32 %681 to i64
  %arrayidx5.i40 = getelementptr inbounds i8, ptr %680, i64 %idxprom.i39
  %682 = load i8, ptr %arrayidx5.i40, align 1
  %conv.i41 = sext i8 %682 to i32
  br label %if.end.i42

if.end.i42:                                       ; preds = %cond.true.i36, %sw.bb2
  %up_avail.0.i43 = phi i32 [ %conv.i41, %cond.true.i36 ], [ %679, %sw.bb2 ]
  %tobool6.not.i = icmp eq i32 %up_avail.0.i43, 0
  br i1 %tobool6.not.i, label %if.then7.i, label %if.else8.i

if.then7.i:                                       ; preds = %if.end.i42, %if.else.i35
  call void @error(ptr noundef nonnull @.str, i32 noundef -1) #5
  br label %intrapred_chroma_ver.exit

if.else8.i:                                       ; preds = %if.end.i42
  %mb_pred.i44 = getelementptr inbounds i8, ptr %672, i64 1248
  %683 = load ptr, ptr %mb_pred.i44, align 8
  %arrayidx9.i = getelementptr inbounds i8, ptr %683, i64 8
  %684 = load ptr, ptr %arrayidx9.i, align 8
  %arrayidx11.i = getelementptr inbounds i8, ptr %683, i64 16
  %685 = load ptr, ptr %arrayidx11.i, align 8
  %imgUV.i45 = getelementptr inbounds i8, ptr %674, i64 136
  %686 = load ptr, ptr %imgUV.i45, align 8
  %687 = load ptr, ptr %686, align 8
  %pos_y.i = getelementptr inbounds i8, ptr %up.i26, i64 14
  %688 = load i16, ptr %pos_y.i, align 2
  %idxprom13.i = sext i16 %688 to i64
  %arrayidx14.i46 = getelementptr inbounds ptr, ptr %687, i64 %idxprom13.i
  %689 = load ptr, ptr %arrayidx14.i46, align 8
  %pos_x.i = getelementptr inbounds i8, ptr %up.i26, i64 12
  %690 = load i16, ptr %pos_x.i, align 4
  %idxprom15.i = sext i16 %690 to i64
  %arrayidx16.i47 = getelementptr inbounds i16, ptr %689, i64 %idxprom15.i
  %arrayidx18.i = getelementptr inbounds i8, ptr %686, i64 8
  %691 = load ptr, ptr %arrayidx18.i, align 8
  %arrayidx21.i = getelementptr inbounds ptr, ptr %691, i64 %idxprom13.i
  %692 = load ptr, ptr %arrayidx21.i, align 8
  %arrayidx24.i = getelementptr inbounds i16, ptr %692, i64 %idxprom15.i
  %cmp51.i = icmp sgt i32 %676, 0
  br i1 %cmp51.i, label %for.body.lr.ph.i48, label %intrapred_chroma_ver.exit

for.body.lr.ph.i48:                               ; preds = %if.else8.i
  %conv29.i = sext i32 %675 to i64
  %mul.i = shl nsw i64 %conv29.i, 1
  %wide.trip.count.i49 = zext nneg i32 %676 to i64
  %xtraiter237 = and i64 %wide.trip.count.i49, 1
  %693 = icmp eq i32 %676, 1
  br i1 %693, label %intrapred_chroma_ver.exit.loopexit.unr-lcssa, label %for.body.lr.ph.i48.new

for.body.lr.ph.i48.new:                           ; preds = %for.body.lr.ph.i48
  %unroll_iter239 = and i64 %wide.trip.count.i49, 2147483646
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %for.body.lr.ph.i48.new
  %indvars.iv.i50 = phi i64 [ 0, %for.body.lr.ph.i48.new ], [ %indvars.iv.next.i51.1, %for.body.i ]
  %niter240 = phi i64 [ 0, %for.body.lr.ph.i48.new ], [ %niter240.next.1, %for.body.i ]
  %arrayidx27.i = getelementptr inbounds ptr, ptr %684, i64 %indvars.iv.i50
  %694 = load ptr, ptr %arrayidx27.i, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %694, ptr align 2 %arrayidx16.i47, i64 %mul.i, i1 false)
  %arrayidx31.i = getelementptr inbounds ptr, ptr %685, i64 %indvars.iv.i50
  %695 = load ptr, ptr %arrayidx31.i, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %695, ptr align 2 %arrayidx24.i, i64 %mul.i, i1 false)
  %indvars.iv.next.i51 = or disjoint i64 %indvars.iv.i50, 1
  %arrayidx27.i.1 = getelementptr inbounds ptr, ptr %684, i64 %indvars.iv.next.i51
  %696 = load ptr, ptr %arrayidx27.i.1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %696, ptr align 2 %arrayidx16.i47, i64 %mul.i, i1 false)
  %arrayidx31.i.1 = getelementptr inbounds ptr, ptr %685, i64 %indvars.iv.next.i51
  %697 = load ptr, ptr %arrayidx31.i.1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %697, ptr align 2 %arrayidx24.i, i64 %mul.i, i1 false)
  %indvars.iv.next.i51.1 = add nuw nsw i64 %indvars.iv.i50, 2
  %niter240.next.1 = add i64 %niter240, 2
  %niter240.ncmp.1 = icmp eq i64 %niter240.next.1, %unroll_iter239
  br i1 %niter240.ncmp.1, label %intrapred_chroma_ver.exit.loopexit.unr-lcssa, label %for.body.i

intrapred_chroma_ver.exit.loopexit.unr-lcssa:     ; preds = %for.body.i, %for.body.lr.ph.i48
  %indvars.iv.i50.unr = phi i64 [ 0, %for.body.lr.ph.i48 ], [ %indvars.iv.next.i51.1, %for.body.i ]
  %lcmp.mod238.not = icmp eq i64 %xtraiter237, 0
  br i1 %lcmp.mod238.not, label %intrapred_chroma_ver.exit, label %for.body.i.epil

for.body.i.epil:                                  ; preds = %intrapred_chroma_ver.exit.loopexit.unr-lcssa
  %arrayidx27.i.epil = getelementptr inbounds ptr, ptr %684, i64 %indvars.iv.i50.unr
  %698 = load ptr, ptr %arrayidx27.i.epil, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %698, ptr align 2 %arrayidx16.i47, i64 %mul.i, i1 false)
  %arrayidx31.i.epil = getelementptr inbounds ptr, ptr %685, i64 %indvars.iv.i50.unr
  %699 = load ptr, ptr %arrayidx31.i.epil, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %699, ptr align 2 %arrayidx24.i, i64 %mul.i, i1 false)
  br label %intrapred_chroma_ver.exit

intrapred_chroma_ver.exit:                        ; preds = %for.body.i.epil, %intrapred_chroma_ver.exit.loopexit.unr-lcssa, %if.then7.i, %if.else8.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %up.i26) #5
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %700 = load ptr, ptr %currMB, align 8
  %p_Vid1.i56 = getelementptr inbounds i8, ptr %currMB, i64 8
  %701 = load ptr, ptr %p_Vid1.i56, align 8
  %dec_picture2.i57 = getelementptr inbounds i8, ptr %700, i64 13520
  %702 = load ptr, ptr %dec_picture2.i57, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %up.i53) #5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %up_left.i54) #5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %left.i55) #5
  %arrayidx.i58 = getelementptr inbounds i8, ptr %701, i64 849132
  call void @getNonAffNeighbour(ptr noundef nonnull %currMB, i32 noundef -1, i32 noundef -1, ptr noundef nonnull %arrayidx.i58, ptr noundef nonnull %up_left.i54) #5
  call void @getNonAffNeighbour(ptr noundef nonnull %currMB, i32 noundef -1, i32 noundef 0, ptr noundef nonnull %arrayidx.i58, ptr noundef nonnull %left.i55) #5
  call void @getNonAffNeighbour(ptr noundef nonnull %currMB, i32 noundef 0, i32 noundef -1, ptr noundef nonnull %arrayidx.i58, ptr noundef nonnull %up.i53) #5
  %active_pps.i59 = getelementptr inbounds i8, ptr %701, i64 8
  %703 = load ptr, ptr %active_pps.i59, align 8
  %constrained_intra_pred_flag.i60 = getelementptr inbounds i8, ptr %703, i64 2204
  %704 = load i32, ptr %constrained_intra_pred_flag.i60, align 4
  %tobool.not.i61 = icmp eq i32 %704, 0
  %705 = load i32, ptr %up.i53, align 4
  br i1 %tobool.not.i61, label %if.then.i92, label %if.else.i62

if.then.i92:                                      ; preds = %sw.bb3
  %706 = load i32, ptr %left.i55, align 4
  %707 = load i32, ptr %up_left.i54, align 4
  br label %if.end.i71

if.else.i62:                                      ; preds = %sw.bb3
  %tobool12.not.i = icmp eq i32 %705, 0
  br i1 %tobool12.not.i, label %cond.end.i68, label %cond.true.i63

cond.true.i63:                                    ; preds = %if.else.i62
  %intra_block.i64 = getelementptr inbounds i8, ptr %700, i64 13544
  %708 = load ptr, ptr %intra_block.i64, align 8
  %mb_addr.i65 = getelementptr inbounds i8, ptr %up.i53, i64 4
  %709 = load i32, ptr %mb_addr.i65, align 4
  %idxprom.i66 = sext i32 %709 to i64
  %arrayidx13.i = getelementptr inbounds i8, ptr %708, i64 %idxprom.i66
  %710 = load i8, ptr %arrayidx13.i, align 1
  %conv.i67 = sext i8 %710 to i32
  br label %cond.end.i68

cond.end.i68:                                     ; preds = %cond.true.i63, %if.else.i62
  %cond.i69 = phi i32 [ %conv.i67, %cond.true.i63 ], [ 0, %if.else.i62 ]
  %711 = load i32, ptr %left.i55, align 4
  %tobool15.not.i = icmp eq i32 %711, 0
  br i1 %tobool15.not.i, label %cond.end23.i, label %cond.true16.i

cond.true16.i:                                    ; preds = %cond.end.i68
  %intra_block17.i = getelementptr inbounds i8, ptr %700, i64 13544
  %712 = load ptr, ptr %intra_block17.i, align 8
  %mb_addr18.i = getelementptr inbounds i8, ptr %left.i55, i64 4
  %713 = load i32, ptr %mb_addr18.i, align 4
  %idxprom19.i = sext i32 %713 to i64
  %arrayidx20.i = getelementptr inbounds i8, ptr %712, i64 %idxprom19.i
  %714 = load i8, ptr %arrayidx20.i, align 1
  %conv21.i = sext i8 %714 to i32
  br label %cond.end23.i

cond.end23.i:                                     ; preds = %cond.true16.i, %cond.end.i68
  %cond24.i = phi i32 [ %conv21.i, %cond.true16.i ], [ 0, %cond.end.i68 ]
  %715 = load i32, ptr %up_left.i54, align 4
  %tobool26.not.i = icmp eq i32 %715, 0
  br i1 %tobool26.not.i, label %if.then40.i, label %cond.true27.i

cond.true27.i:                                    ; preds = %cond.end23.i
  %intra_block28.i = getelementptr inbounds i8, ptr %700, i64 13544
  %716 = load ptr, ptr %intra_block28.i, align 8
  %mb_addr29.i = getelementptr inbounds i8, ptr %up_left.i54, i64 4
  %717 = load i32, ptr %mb_addr29.i, align 4
  %idxprom30.i = sext i32 %717 to i64
  %arrayidx31.i70 = getelementptr inbounds i8, ptr %716, i64 %idxprom30.i
  %718 = load i8, ptr %arrayidx31.i70, align 1
  %conv32.i = sext i8 %718 to i32
  br label %if.end.i71

if.end.i71:                                       ; preds = %cond.true27.i, %if.then.i92
  %left_up_avail.0.i = phi i32 [ %707, %if.then.i92 ], [ %conv32.i, %cond.true27.i ]
  %left_avail.0.i72 = phi i32 [ %706, %if.then.i92 ], [ %cond24.i, %cond.true27.i ]
  %up_avail.0.i73 = phi i32 [ %705, %if.then.i92 ], [ %cond.i69, %cond.true27.i ]
  %tobool36.i = icmp ne i32 %left_up_avail.0.i, 0
  %tobool37.i = icmp ne i32 %left_avail.0.i72, 0
  %or.cond.i = select i1 %tobool36.i, i1 %tobool37.i, i1 false
  %tobool39.i = icmp ne i32 %up_avail.0.i73, 0
  %or.cond194.i = select i1 %or.cond.i, i1 %tobool39.i, i1 false
  br i1 %or.cond194.i, label %if.else41.i, label %if.then40.i

if.then40.i:                                      ; preds = %if.end.i71, %cond.end23.i
  call void @error(ptr noundef nonnull @.str.3, i32 noundef -1) #5
  br label %intrapred_chroma_plane.exit

if.else41.i:                                      ; preds = %if.end.i71
  %mb_cr_size_x.i74 = getelementptr inbounds i8, ptr %701, i64 849108
  %719 = load i32, ptr %mb_cr_size_x.i74, align 4
  %mb_cr_size_y.i75 = getelementptr inbounds i8, ptr %701, i64 849112
  %720 = load i32, ptr %mb_cr_size_y.i75, align 8
  %shr.i = ashr i32 %720, 1
  %shr42.i = ashr i32 %719, 1
  %imgUV44.i = getelementptr inbounds i8, ptr %702, i64 136
  %mb_pred47.i = getelementptr inbounds i8, ptr %700, i64 1248
  %pos_y.i76 = getelementptr inbounds i8, ptr %up.i53, i64 14
  %pos_x.i77 = getelementptr inbounds i8, ptr %up.i53, i64 12
  %pos_x58.i = getelementptr inbounds i8, ptr %up_left.i54, i64 12
  %pos_y60.i = getelementptr inbounds i8, ptr %left.i55, i64 14
  %721 = sext i32 %719 to i64
  %pos_y69.i = getelementptr inbounds i8, ptr %up_left.i54, i64 14
  %sub77.i = add nsw i32 %shr42.i, -1
  %cmp78272.i = icmp sgt i32 %shr42.i, 1
  %sub112.i = add nsw i32 %shr.i, -1
  %cmp113276.i = icmp sgt i32 %shr.i, 1
  %cmp130.i = icmp eq i32 %719, 8
  %cond132.i = select i1 %cmp130.i, i32 17, i32 5
  %mul134.i = shl nsw i32 %719, 1
  %cond138.i = select i1 %cmp130.i, i32 5, i32 6
  %cmp140.i = icmp eq i32 %720, 8
  %cond142.i = select i1 %cmp140.i, i32 17, i32 5
  %mul144.i = shl nsw i32 %720, 1
  %cond148.i = select i1 %cmp140.i, i32 5, i32 6
  %cmp161285.i = icmp sgt i32 %720, 0
  %sub86.i = add nsw i32 %shr42.i, -2
  %cmp173283.i = icmp sgt i32 %719, 0
  %722 = sext i32 %shr42.i to i64
  %723 = sext i32 %sub86.i to i64
  %724 = add nsw i32 %shr.i, -2
  %725 = zext i32 %724 to i64
  %726 = add nuw nsw i64 %725, 1
  %727 = load ptr, ptr %imgUV44.i, align 8
  %728 = load ptr, ptr %727, align 8
  %729 = load ptr, ptr %mb_pred47.i, align 8
  %arrayidx49.i = getelementptr inbounds i8, ptr %729, i64 8
  %730 = load ptr, ptr %arrayidx49.i, align 8
  %arrayidx52.i78 = getelementptr inbounds i8, ptr %701, i64 849076
  %731 = load i32, ptr %arrayidx52.i78, align 4
  %732 = load i16, ptr %pos_y.i76, align 2
  %idxprom53.i = sext i16 %732 to i64
  %arrayidx54.i = getelementptr inbounds ptr, ptr %728, i64 %idxprom53.i
  %733 = load ptr, ptr %arrayidx54.i, align 8
  %734 = load i16, ptr %pos_x.i77, align 4
  %idxprom55.i = sext i16 %734 to i64
  %arrayidx56.i = getelementptr inbounds i16, ptr %733, i64 %idxprom55.i
  %735 = load i16, ptr %pos_x58.i, align 4
  %736 = load i16, ptr %pos_y60.i, align 2
  %conv61.i = sext i16 %736 to i32
  %add62.i = add nsw i32 %shr.i, %conv61.i
  %737 = sext i32 %add62.i to i64
  %738 = getelementptr ptr, ptr %728, i64 %737
  %arrayidx64.i = getelementptr i8, ptr %738, i64 -16
  %739 = getelementptr i16, ptr %arrayidx56.i, i64 %721
  %arrayidx67.i = getelementptr i8, ptr %739, i64 -2
  %740 = load i16, ptr %arrayidx67.i, align 2
  %conv68.i = zext i16 %740 to i32
  %741 = load i16, ptr %pos_y69.i, align 2
  %idxprom70.i = sext i16 %741 to i64
  %arrayidx71.i = getelementptr inbounds ptr, ptr %728, i64 %idxprom70.i
  %742 = load ptr, ptr %arrayidx71.i, align 8
  %idxprom72.i = sext i16 %735 to i64
  %arrayidx73.i = getelementptr inbounds i16, ptr %742, i64 %idxprom72.i
  %743 = load i16, ptr %arrayidx73.i, align 2
  %conv74.i = zext i16 %743 to i32
  %sub75.i = sub nsw i32 %conv68.i, %conv74.i
  %mul.i79 = mul nsw i32 %sub75.i, %shr42.i
  br i1 %cmp78272.i, label %for.body80.preheader.i, label %for.end.i

for.cond.loopexit.loopexit.i:                     ; preds = %for.cond172.for.end186_crit_edge.us.i
  %.pre.i86 = load ptr, ptr %imgUV44.i, align 8
  %.pre312.i = load ptr, ptr %mb_pred47.i, align 8
  %.pre313.i = load i16, ptr %pos_y.i76, align 2
  %.pre314.i = load i16, ptr %pos_x.i77, align 4
  %.pre315.i = load i16, ptr %pos_x58.i, align 4
  %.pre316.i = load i16, ptr %pos_y60.i, align 2
  %.pre317.i = load i16, ptr %pos_y69.i, align 2
  %.pre318.i = sext i16 %.pre313.i to i64
  %.pre319.i = sext i16 %.pre317.i to i64
  %.pre320.i = sext i16 %.pre315.i to i64
  %.pre321.i = sext i16 %.pre314.i to i64
  %.pre322.i = sext i16 %.pre316.i to i32
  %.pre323.i = add nsw i32 %shr.i, %.pre322.i
  %.pre324.i = sext i32 %.pre323.i to i64
  br label %for.cond.loopexit.i

for.cond.loopexit.i:                              ; preds = %for.body163.lr.ph.i, %for.end129.i, %for.cond.loopexit.loopexit.i
  %.pre-phi.i81 = phi i64 [ %.pre324.i, %for.cond.loopexit.loopexit.i ], [ %737, %for.end129.i ], [ %737, %for.body163.lr.ph.i ]
  %add62.1.pre-phi.i = phi i32 [ %.pre323.i, %for.cond.loopexit.loopexit.i ], [ %add62.i, %for.end129.i ], [ %add62.i, %for.body163.lr.ph.i ]
  %conv61.1.pre-phi.i = phi i32 [ %.pre322.i, %for.cond.loopexit.loopexit.i ], [ %conv61.i, %for.end129.i ], [ %conv61.i, %for.body163.lr.ph.i ]
  %idxprom55.1.pre-phi.i = phi i64 [ %.pre321.i, %for.cond.loopexit.loopexit.i ], [ %idxprom55.i, %for.end129.i ], [ %idxprom55.i, %for.body163.lr.ph.i ]
  %idxprom72.1.pre-phi.i = phi i64 [ %.pre320.i, %for.cond.loopexit.loopexit.i ], [ %idxprom72.i, %for.end129.i ], [ %idxprom72.i, %for.body163.lr.ph.i ]
  %idxprom70.1.pre-phi.i = phi i64 [ %.pre319.i, %for.cond.loopexit.loopexit.i ], [ %idxprom70.i, %for.end129.i ], [ %idxprom70.i, %for.body163.lr.ph.i ]
  %idxprom53.1.pre-phi.i = phi i64 [ %.pre318.i, %for.cond.loopexit.loopexit.i ], [ %idxprom53.i, %for.end129.i ], [ %idxprom53.i, %for.body163.lr.ph.i ]
  %744 = phi ptr [ %.pre312.i, %for.cond.loopexit.loopexit.i ], [ %729, %for.end129.i ], [ %729, %for.body163.lr.ph.i ]
  %745 = phi ptr [ %.pre.i86, %for.cond.loopexit.loopexit.i ], [ %727, %for.end129.i ], [ %727, %for.body163.lr.ph.i ]
  %arrayidx46.1.i = getelementptr inbounds i8, ptr %745, i64 8
  %746 = load ptr, ptr %arrayidx46.1.i, align 8
  %arrayidx49.1.i = getelementptr inbounds i8, ptr %744, i64 16
  %747 = load ptr, ptr %arrayidx49.1.i, align 8
  %arrayidx52.1.i82 = getelementptr inbounds i8, ptr %701, i64 849080
  %748 = load i32, ptr %arrayidx52.1.i82, align 4
  %arrayidx54.1.i = getelementptr inbounds ptr, ptr %746, i64 %idxprom53.1.pre-phi.i
  %749 = load ptr, ptr %arrayidx54.1.i, align 8
  %arrayidx56.1.i = getelementptr inbounds i16, ptr %749, i64 %idxprom55.1.pre-phi.i
  %750 = getelementptr ptr, ptr %746, i64 %.pre-phi.i81
  %arrayidx64.1.i = getelementptr i8, ptr %750, i64 -16
  %751 = getelementptr i16, ptr %arrayidx56.1.i, i64 %721
  %arrayidx67.1.i = getelementptr i8, ptr %751, i64 -2
  %752 = load i16, ptr %arrayidx67.1.i, align 2
  %conv68.1.i = zext i16 %752 to i32
  %arrayidx71.1.i = getelementptr inbounds ptr, ptr %746, i64 %idxprom70.1.pre-phi.i
  %753 = load ptr, ptr %arrayidx71.1.i, align 8
  %arrayidx73.1.i = getelementptr inbounds i16, ptr %753, i64 %idxprom72.1.pre-phi.i
  %754 = load i16, ptr %arrayidx73.1.i, align 2
  %conv74.1.i = zext i16 %754 to i32
  %sub75.1.i = sub nsw i32 %conv68.1.i, %conv74.1.i
  %mul.1.i = mul nsw i32 %sub75.1.i, %shr42.i
  br i1 %cmp78272.i, label %for.body80.preheader.1.i, label %for.end.1.i

for.body80.preheader.1.i:                         ; preds = %for.cond.loopexit.i
  %wide.trip.count.1.i = zext nneg i32 %sub77.i to i64
  %invariant.gep325.i = getelementptr i16, ptr %arrayidx56.1.i, i64 %722
  %min.iters.check144 = icmp ult i32 %shr42.i, 17
  br i1 %min.iters.check144, label %for.body80.1.i.preheader, label %vector.ph145

vector.ph145:                                     ; preds = %for.body80.preheader.1.i
  %n.vec147 = and i64 %wide.trip.count.1.i, 2147483632
  %755 = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %mul.1.i, i64 0
  br label %vector.body149

vector.body149:                                   ; preds = %vector.body149, %vector.ph145
  %index150 = phi i64 [ 0, %vector.ph145 ], [ %index.next173, %vector.body149 ]
  %vec.ind151 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph145 ], [ %vec.ind.next156, %vector.body149 ]
  %vec.phi157 = phi <4 x i32> [ %755, %vector.ph145 ], [ %790, %vector.body149 ]
  %vec.phi158 = phi <4 x i32> [ zeroinitializer, %vector.ph145 ], [ %791, %vector.body149 ]
  %vec.phi159 = phi <4 x i32> [ zeroinitializer, %vector.ph145 ], [ %792, %vector.body149 ]
  %vec.phi160 = phi <4 x i32> [ zeroinitializer, %vector.ph145 ], [ %793, %vector.body149 ]
  %756 = getelementptr i16, ptr %invariant.gep325.i, i64 %index150
  %757 = getelementptr i8, ptr %756, i64 8
  %758 = getelementptr i8, ptr %756, i64 16
  %759 = getelementptr i8, ptr %756, i64 24
  %wide.load161 = load <4 x i16>, ptr %756, align 2
  %wide.load162 = load <4 x i16>, ptr %757, align 2
  %wide.load163 = load <4 x i16>, ptr %758, align 2
  %wide.load164 = load <4 x i16>, ptr %759, align 2
  %760 = zext <4 x i16> %wide.load161 to <4 x i32>
  %761 = zext <4 x i16> %wide.load162 to <4 x i32>
  %762 = zext <4 x i16> %wide.load163 to <4 x i32>
  %763 = zext <4 x i16> %wide.load164 to <4 x i32>
  %764 = sub nsw i64 %723, %index150
  %765 = getelementptr inbounds i16, ptr %arrayidx56.1.i, i64 %764
  %766 = getelementptr inbounds i8, ptr %765, i64 -6
  %767 = getelementptr inbounds i8, ptr %765, i64 -14
  %768 = getelementptr inbounds i8, ptr %765, i64 -22
  %769 = getelementptr inbounds i8, ptr %765, i64 -30
  %wide.load165 = load <4 x i16>, ptr %766, align 2
  %reverse166 = shufflevector <4 x i16> %wide.load165, <4 x i16> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %wide.load167 = load <4 x i16>, ptr %767, align 2
  %reverse168 = shufflevector <4 x i16> %wide.load167, <4 x i16> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %wide.load169 = load <4 x i16>, ptr %768, align 2
  %reverse170 = shufflevector <4 x i16> %wide.load169, <4 x i16> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %wide.load171 = load <4 x i16>, ptr %769, align 2
  %reverse172 = shufflevector <4 x i16> %wide.load171, <4 x i16> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %770 = zext <4 x i16> %reverse166 to <4 x i32>
  %771 = zext <4 x i16> %reverse168 to <4 x i32>
  %772 = zext <4 x i16> %reverse170 to <4 x i32>
  %773 = zext <4 x i16> %reverse172 to <4 x i32>
  %774 = sub nsw <4 x i32> %760, %770
  %775 = sub nsw <4 x i32> %761, %771
  %776 = sub nsw <4 x i32> %762, %772
  %777 = sub nsw <4 x i32> %763, %773
  %778 = trunc <4 x i64> %vec.ind151 to <4 x i32>
  %779 = add <4 x i32> %778, <i32 1, i32 1, i32 1, i32 1>
  %780 = trunc <4 x i64> %vec.ind151 to <4 x i32>
  %781 = add <4 x i32> %780, <i32 5, i32 5, i32 5, i32 5>
  %782 = trunc <4 x i64> %vec.ind151 to <4 x i32>
  %783 = add <4 x i32> %782, <i32 9, i32 9, i32 9, i32 9>
  %784 = trunc <4 x i64> %vec.ind151 to <4 x i32>
  %785 = add <4 x i32> %784, <i32 13, i32 13, i32 13, i32 13>
  %786 = mul nsw <4 x i32> %774, %779
  %787 = mul nsw <4 x i32> %775, %781
  %788 = mul nsw <4 x i32> %776, %783
  %789 = mul nsw <4 x i32> %777, %785
  %790 = add <4 x i32> %786, %vec.phi157
  %791 = add <4 x i32> %787, %vec.phi158
  %792 = add <4 x i32> %788, %vec.phi159
  %793 = add <4 x i32> %789, %vec.phi160
  %index.next173 = add nuw i64 %index150, 16
  %vec.ind.next156 = add <4 x i64> %vec.ind151, <i64 16, i64 16, i64 16, i64 16>
  %794 = icmp eq i64 %index.next173, %n.vec147
  br i1 %794, label %middle.block142, label %vector.body149, !llvm.loop !5

middle.block142:                                  ; preds = %vector.body149
  %bin.rdx174 = add <4 x i32> %791, %790
  %bin.rdx175 = add <4 x i32> %792, %bin.rdx174
  %bin.rdx176 = add <4 x i32> %793, %bin.rdx175
  %795 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx176)
  %cmp.n177 = icmp eq i64 %n.vec147, %wide.trip.count.1.i
  br i1 %cmp.n177, label %for.end.1.i, label %for.body80.1.i.preheader

for.body80.1.i.preheader:                         ; preds = %middle.block142, %for.body80.preheader.1.i
  %indvars.iv.1.i.ph = phi i64 [ 0, %for.body80.preheader.1.i ], [ %n.vec147, %middle.block142 ]
  %ih.0273.1.i.ph = phi i32 [ %mul.1.i, %for.body80.preheader.1.i ], [ %795, %middle.block142 ]
  br label %for.body80.1.i

for.body80.1.i:                                   ; preds = %for.body80.1.i.preheader, %for.body80.1.i
  %indvars.iv.1.i = phi i64 [ %indvars.iv.next.1.i84, %for.body80.1.i ], [ %indvars.iv.1.i.ph, %for.body80.1.i.preheader ]
  %ih.0273.1.i = phi i32 [ %add93.1.i, %for.body80.1.i ], [ %ih.0273.1.i.ph, %for.body80.1.i.preheader ]
  %indvars.iv.next.1.i84 = add nuw nsw i64 %indvars.iv.1.i, 1
  %gep326.i = getelementptr i16, ptr %invariant.gep325.i, i64 %indvars.iv.1.i
  %796 = load i16, ptr %gep326.i, align 2
  %conv85.1.i = zext i16 %796 to i32
  %797 = sub nsw i64 %723, %indvars.iv.1.i
  %arrayidx89.1.i = getelementptr inbounds i16, ptr %arrayidx56.1.i, i64 %797
  %798 = load i16, ptr %arrayidx89.1.i, align 2
  %conv90.1.i85 = zext i16 %798 to i32
  %sub91.1.i = sub nsw i32 %conv85.1.i, %conv90.1.i85
  %799 = trunc nuw nsw i64 %indvars.iv.next.1.i84 to i32
  %mul92.1.i = mul nsw i32 %sub91.1.i, %799
  %add93.1.i = add nsw i32 %mul92.1.i, %ih.0273.1.i
  %exitcond.1.not.i = icmp eq i64 %indvars.iv.next.1.i84, %wide.trip.count.1.i
  br i1 %exitcond.1.not.i, label %for.end.1.i, label %for.body80.1.i, !llvm.loop !8

for.end.1.i:                                      ; preds = %for.body80.1.i, %middle.block142, %for.cond.loopexit.i
  %ih.0.lcssa.1.i = phi i32 [ %mul.1.i, %for.cond.loopexit.i ], [ %795, %middle.block142 ], [ %add93.1.i, %for.body80.1.i ]
  %add96.1.i = add nsw i32 %conv61.1.pre-phi.i, %720
  %800 = sext i32 %add96.1.i to i64
  %801 = getelementptr ptr, ptr %746, i64 %800
  %arrayidx99.1.i83 = getelementptr i8, ptr %801, i64 -8
  %802 = load ptr, ptr %arrayidx99.1.i83, align 8
  %arrayidx101.1.i = getelementptr inbounds i16, ptr %802, i64 %idxprom72.1.pre-phi.i
  %803 = load i16, ptr %arrayidx101.1.i, align 2
  %conv102.1.i = zext i16 %803 to i32
  %sub109.1.i = sub nsw i32 %conv102.1.i, %conv74.1.i
  %mul110.1.i = mul nsw i32 %sub109.1.i, %shr.i
  br i1 %cmp113276.i, label %for.body115.1.i.preheader, label %for.end129.1.i

for.body115.1.i.preheader:                        ; preds = %for.end.1.i
  %804 = zext i32 %sub112.i to i64
  %min.iters.check181 = icmp ult i32 %shr.i, 5
  br i1 %min.iters.check181, label %for.body115.1.i.preheader210, label %vector.ph182

vector.ph182:                                     ; preds = %for.body115.1.i.preheader
  %n.vec184 = and i64 %804, 4294967292
  %ind.end185 = add nsw i64 %.pre-phi.i81, %n.vec184
  %805 = mul nsw i64 %n.vec184, -8
  %ind.end187 = getelementptr i8, ptr %arrayidx64.1.i, i64 %805
  %ind.end189 = trunc nuw i64 %n.vec184 to i32
  %invariant.gep272 = getelementptr i8, ptr %arrayidx64.1.i, i64 -8
  %invariant.gep274 = getelementptr i8, ptr %arrayidx64.1.i, i64 -16
  %invariant.gep276 = getelementptr i8, ptr %arrayidx64.1.i, i64 -24
  %invariant.gep278 = getelementptr i8, ptr %746, i64 8
  %invariant.gep280 = getelementptr i8, ptr %746, i64 16
  %invariant.gep282 = getelementptr i8, ptr %746, i64 24
  br label %vector.body191

vector.body191:                                   ; preds = %vector.body191, %vector.ph182
  %index192 = phi i64 [ 0, %vector.ph182 ], [ %index.next204, %vector.body191 ]
  %vec.phi193 = phi i32 [ %mul110.1.i, %vector.ph182 ], [ %851, %vector.body191 ]
  %vec.phi194 = phi i32 [ 0, %vector.ph182 ], [ %852, %vector.body191 ]
  %vec.phi195 = phi i32 [ 0, %vector.ph182 ], [ %853, %vector.body191 ]
  %vec.phi196 = phi i32 [ 0, %vector.ph182 ], [ %854, %vector.body191 ]
  %offset.idx197 = add i64 %.pre-phi.i81, %index192
  %offset.idx198 = mul i64 %index192, -8
  %next.gep199 = getelementptr i8, ptr %arrayidx64.1.i, i64 %offset.idx198
  %gep273 = getelementptr i8, ptr %invariant.gep272, i64 %offset.idx198
  %gep275 = getelementptr i8, ptr %invariant.gep274, i64 %offset.idx198
  %gep277 = getelementptr i8, ptr %invariant.gep276, i64 %offset.idx198
  %offset.idx203 = trunc i64 %index192 to i32
  %806 = or disjoint i32 %offset.idx203, 1
  %807 = or disjoint i32 %offset.idx203, 2
  %808 = or disjoint i32 %offset.idx203, 3
  %809 = add nuw nsw i32 %offset.idx203, 4
  %810 = getelementptr inbounds ptr, ptr %746, i64 %offset.idx197
  %gep279 = getelementptr ptr, ptr %invariant.gep278, i64 %offset.idx197
  %gep281 = getelementptr ptr, ptr %invariant.gep280, i64 %offset.idx197
  %gep283 = getelementptr ptr, ptr %invariant.gep282, i64 %offset.idx197
  %811 = load ptr, ptr %810, align 8
  %812 = load ptr, ptr %gep279, align 8
  %813 = load ptr, ptr %gep281, align 8
  %814 = load ptr, ptr %gep283, align 8
  %815 = getelementptr inbounds i16, ptr %811, i64 %idxprom72.1.pre-phi.i
  %816 = getelementptr inbounds i16, ptr %812, i64 %idxprom72.1.pre-phi.i
  %817 = getelementptr inbounds i16, ptr %813, i64 %idxprom72.1.pre-phi.i
  %818 = getelementptr inbounds i16, ptr %814, i64 %idxprom72.1.pre-phi.i
  %819 = load i16, ptr %815, align 2
  %820 = load i16, ptr %816, align 2
  %821 = load i16, ptr %817, align 2
  %822 = load i16, ptr %818, align 2
  %823 = zext i16 %819 to i32
  %824 = zext i16 %820 to i32
  %825 = zext i16 %821 to i32
  %826 = zext i16 %822 to i32
  %827 = load ptr, ptr %next.gep199, align 8
  %828 = load ptr, ptr %gep273, align 8
  %829 = load ptr, ptr %gep275, align 8
  %830 = load ptr, ptr %gep277, align 8
  %831 = getelementptr inbounds i16, ptr %827, i64 %idxprom72.1.pre-phi.i
  %832 = getelementptr inbounds i16, ptr %828, i64 %idxprom72.1.pre-phi.i
  %833 = getelementptr inbounds i16, ptr %829, i64 %idxprom72.1.pre-phi.i
  %834 = getelementptr inbounds i16, ptr %830, i64 %idxprom72.1.pre-phi.i
  %835 = load i16, ptr %831, align 2
  %836 = load i16, ptr %832, align 2
  %837 = load i16, ptr %833, align 2
  %838 = load i16, ptr %834, align 2
  %839 = zext i16 %835 to i32
  %840 = zext i16 %836 to i32
  %841 = zext i16 %837 to i32
  %842 = zext i16 %838 to i32
  %843 = sub nsw i32 %823, %839
  %844 = sub nsw i32 %824, %840
  %845 = sub nsw i32 %825, %841
  %846 = sub nsw i32 %826, %842
  %847 = mul nsw i32 %843, %806
  %848 = mul nsw i32 %844, %807
  %849 = mul nsw i32 %845, %808
  %850 = mul nsw i32 %846, %809
  %851 = add i32 %847, %vec.phi193
  %852 = add i32 %848, %vec.phi194
  %853 = add i32 %849, %vec.phi195
  %854 = add i32 %850, %vec.phi196
  %index.next204 = add nuw i64 %index192, 4
  %855 = icmp eq i64 %index.next204, %n.vec184
  br i1 %855, label %middle.block179, label %vector.body191, !llvm.loop !9

middle.block179:                                  ; preds = %vector.body191
  %bin.rdx205 = add i32 %852, %851
  %bin.rdx206 = add i32 %853, %bin.rdx205
  %bin.rdx207 = add i32 %854, %bin.rdx206
  %cmp.n208 = icmp eq i64 %n.vec184, %804
  br i1 %cmp.n208, label %for.end129.loopexit.1.i, label %for.body115.1.i.preheader210

for.body115.1.i.preheader210:                     ; preds = %middle.block179, %for.body115.1.i.preheader
  %indvars.iv293.1.i.ph = phi i64 [ %.pre-phi.i81, %for.body115.1.i.preheader ], [ %ind.end185, %middle.block179 ]
  %predU2.0280.1.i.ph = phi ptr [ %arrayidx64.1.i, %for.body115.1.i.preheader ], [ %ind.end187, %middle.block179 ]
  %i.1278.1.i.ph = phi i32 [ 0, %for.body115.1.i.preheader ], [ %ind.end189, %middle.block179 ]
  %iv.0277.1.i.ph = phi i32 [ %mul110.1.i, %for.body115.1.i.preheader ], [ %bin.rdx207, %middle.block179 ]
  %856 = add nsw i32 %shr.i, -2
  %857 = sub i32 %i.1278.1.i.ph, %shr.i
  %858 = and i32 %857, 1
  %lcmp.mod232.not.not = icmp eq i32 %858, 0
  br i1 %lcmp.mod232.not.not, label %for.body115.1.i.prol, label %for.body115.1.i.prol.loopexit

for.body115.1.i.prol:                             ; preds = %for.body115.1.i.preheader210
  %add116.1.i.prol = add nuw nsw i32 %i.1278.1.i.ph, 1
  %indvars.iv.next294.1.i.prol = add nsw i64 %indvars.iv293.1.i.ph, 1
  %arrayidx119.1.i.prol = getelementptr inbounds ptr, ptr %746, i64 %indvars.iv293.1.i.ph
  %859 = load ptr, ptr %arrayidx119.1.i.prol, align 8
  %add.ptr.1.i.prol = getelementptr inbounds i16, ptr %859, i64 %idxprom72.1.pre-phi.i
  %860 = load i16, ptr %add.ptr.1.i.prol, align 2
  %conv120.1.i.prol = zext i16 %860 to i32
  %incdec.ptr.1.i.prol = getelementptr inbounds i8, ptr %predU2.0280.1.i.ph, i64 -8
  %861 = load ptr, ptr %predU2.0280.1.i.ph, align 8
  %add.ptr122.1.i.prol = getelementptr inbounds i16, ptr %861, i64 %idxprom72.1.pre-phi.i
  %862 = load i16, ptr %add.ptr122.1.i.prol, align 2
  %conv123.1.i.prol = zext i16 %862 to i32
  %sub124.1.i.prol = sub nsw i32 %conv120.1.i.prol, %conv123.1.i.prol
  %mul125.1.i.prol = mul nsw i32 %sub124.1.i.prol, %add116.1.i.prol
  %add126.1.i.prol = add nsw i32 %mul125.1.i.prol, %iv.0277.1.i.ph
  br label %for.body115.1.i.prol.loopexit

for.body115.1.i.prol.loopexit:                    ; preds = %for.body115.1.i.prol, %for.body115.1.i.preheader210
  %add126.1.i.lcssa211.unr = phi i32 [ poison, %for.body115.1.i.preheader210 ], [ %add126.1.i.prol, %for.body115.1.i.prol ]
  %indvars.iv293.1.i.unr = phi i64 [ %indvars.iv293.1.i.ph, %for.body115.1.i.preheader210 ], [ %indvars.iv.next294.1.i.prol, %for.body115.1.i.prol ]
  %predU2.0280.1.i.unr = phi ptr [ %predU2.0280.1.i.ph, %for.body115.1.i.preheader210 ], [ %incdec.ptr.1.i.prol, %for.body115.1.i.prol ]
  %i.1278.1.i.unr = phi i32 [ %i.1278.1.i.ph, %for.body115.1.i.preheader210 ], [ %add116.1.i.prol, %for.body115.1.i.prol ]
  %iv.0277.1.i.unr = phi i32 [ %iv.0277.1.i.ph, %for.body115.1.i.preheader210 ], [ %add126.1.i.prol, %for.body115.1.i.prol ]
  %863 = icmp eq i32 %856, %i.1278.1.i.ph
  br i1 %863, label %for.end129.loopexit.1.i, label %for.body115.1.i.preheader210.new

for.body115.1.i.preheader210.new:                 ; preds = %for.body115.1.i.prol.loopexit
  %invariant.gep284 = getelementptr i8, ptr %746, i64 8
  br label %for.body115.1.i

for.body115.1.i:                                  ; preds = %for.body115.1.i, %for.body115.1.i.preheader210.new
  %indvars.iv293.1.i = phi i64 [ %indvars.iv293.1.i.unr, %for.body115.1.i.preheader210.new ], [ %indvars.iv.next294.1.i.1, %for.body115.1.i ]
  %predU2.0280.1.i = phi ptr [ %predU2.0280.1.i.unr, %for.body115.1.i.preheader210.new ], [ %incdec.ptr.1.i.1, %for.body115.1.i ]
  %i.1278.1.i = phi i32 [ %i.1278.1.i.unr, %for.body115.1.i.preheader210.new ], [ %add116.1.i.1, %for.body115.1.i ]
  %iv.0277.1.i = phi i32 [ %iv.0277.1.i.unr, %for.body115.1.i.preheader210.new ], [ %add126.1.i.1, %for.body115.1.i ]
  %add116.1.i = add nuw nsw i32 %i.1278.1.i, 1
  %arrayidx119.1.i = getelementptr inbounds ptr, ptr %746, i64 %indvars.iv293.1.i
  %864 = load ptr, ptr %arrayidx119.1.i, align 8
  %add.ptr.1.i = getelementptr inbounds i16, ptr %864, i64 %idxprom72.1.pre-phi.i
  %865 = load i16, ptr %add.ptr.1.i, align 2
  %conv120.1.i = zext i16 %865 to i32
  %incdec.ptr.1.i = getelementptr inbounds i8, ptr %predU2.0280.1.i, i64 -8
  %866 = load ptr, ptr %predU2.0280.1.i, align 8
  %add.ptr122.1.i = getelementptr inbounds i16, ptr %866, i64 %idxprom72.1.pre-phi.i
  %867 = load i16, ptr %add.ptr122.1.i, align 2
  %conv123.1.i = zext i16 %867 to i32
  %sub124.1.i = sub nsw i32 %conv120.1.i, %conv123.1.i
  %mul125.1.i = mul nsw i32 %sub124.1.i, %add116.1.i
  %add126.1.i = add nsw i32 %mul125.1.i, %iv.0277.1.i
  %add116.1.i.1 = add nuw nsw i32 %i.1278.1.i, 2
  %indvars.iv.next294.1.i.1 = add nsw i64 %indvars.iv293.1.i, 2
  %gep285 = getelementptr ptr, ptr %invariant.gep284, i64 %indvars.iv293.1.i
  %868 = load ptr, ptr %gep285, align 8
  %add.ptr.1.i.1 = getelementptr inbounds i16, ptr %868, i64 %idxprom72.1.pre-phi.i
  %869 = load i16, ptr %add.ptr.1.i.1, align 2
  %conv120.1.i.1 = zext i16 %869 to i32
  %incdec.ptr.1.i.1 = getelementptr inbounds i8, ptr %predU2.0280.1.i, i64 -16
  %870 = load ptr, ptr %incdec.ptr.1.i, align 8
  %add.ptr122.1.i.1 = getelementptr inbounds i16, ptr %870, i64 %idxprom72.1.pre-phi.i
  %871 = load i16, ptr %add.ptr122.1.i.1, align 2
  %conv123.1.i.1 = zext i16 %871 to i32
  %sub124.1.i.1 = sub nsw i32 %conv120.1.i.1, %conv123.1.i.1
  %mul125.1.i.1 = mul nsw i32 %sub124.1.i.1, %add116.1.i.1
  %add126.1.i.1 = add nsw i32 %mul125.1.i.1, %add126.1.i
  %exitcond296.1.not.i.1 = icmp eq i32 %add116.1.i.1, %sub112.i
  br i1 %exitcond296.1.not.i.1, label %for.end129.loopexit.1.i, label %for.body115.1.i, !llvm.loop !10

for.end129.loopexit.1.i:                          ; preds = %for.body115.1.i.prol.loopexit, %for.body115.1.i, %middle.block179
  %add126.1.i.lcssa = phi i32 [ %bin.rdx207, %middle.block179 ], [ %add126.1.i.lcssa211.unr, %for.body115.1.i.prol.loopexit ], [ %add126.1.i.1, %for.body115.1.i ]
  %872 = add nsw i64 %.pre-phi.i81, %726
  %873 = trunc nsw i64 %872 to i32
  br label %for.end129.1.i

for.end129.1.i:                                   ; preds = %for.end129.loopexit.1.i, %for.end.1.i
  %iv.0.lcssa.1.i = phi i32 [ %mul110.1.i, %for.end.1.i ], [ %add126.1.i.lcssa, %for.end129.loopexit.1.i ]
  %pos_y1.0.lcssa.1.i = phi i32 [ %add62.1.pre-phi.i, %for.end.1.i ], [ %873, %for.end129.loopexit.1.i ]
  %mul133.1.i = mul nsw i32 %ih.0.lcssa.1.i, %cond132.i
  %add135.1.i = add nsw i32 %mul133.1.i, %mul134.i
  %shr139.1.i = ashr i32 %add135.1.i, %cond138.i
  %mul143.1.i = mul nsw i32 %iv.0.lcssa.1.i, %cond142.i
  %add145.1.i = add nsw i32 %mul143.1.i, %mul144.i
  %shr149.1.i = ashr i32 %add145.1.i, %cond148.i
  br i1 %cmp161285.i, label %for.body163.lr.ph.1.i, label %intrapred_chroma_plane.exit

for.body163.lr.ph.1.i:                            ; preds = %for.end129.1.i
  %idxprom150.1.i = sext i32 %pos_y1.0.lcssa.1.i to i64
  %arrayidx151.1.i = getelementptr inbounds ptr, ptr %746, i64 %idxprom150.1.i
  %874 = load ptr, ptr %arrayidx151.1.i, align 8
  %arrayidx153.1.i = getelementptr inbounds i16, ptr %874, i64 %idxprom72.1.pre-phi.i
  %875 = load i16, ptr %arrayidx153.1.i, align 2
  %conv154.1.i = zext i16 %875 to i32
  %add159.1.i = add nuw nsw i32 %conv154.1.i, %conv68.1.i
  %shl.1.i = shl nuw nsw i32 %add159.1.i, 4
  %add168.1.i = add nuw nsw i32 %shl.1.i, 16
  br i1 %cmp173283.i, label %for.body163.us.preheader.1.i, label %intrapred_chroma_plane.exit

for.body163.us.preheader.1.i:                     ; preds = %for.body163.lr.ph.1.i
  %wide.trip.count307.1.i = zext nneg i32 %720 to i64
  %wide.trip.count301.1.i = zext nneg i32 %719 to i64
  %xtraiter233 = and i64 %wide.trip.count301.1.i, 1
  %876 = icmp eq i32 %719, 1
  %unroll_iter235 = and i64 %wide.trip.count301.1.i, 2147483646
  %lcmp.mod234.not = icmp eq i64 %xtraiter233, 0
  br label %for.body163.us.1.i

for.body163.us.1.i:                               ; preds = %for.cond172.for.end186_crit_edge.us.1.i, %for.body163.us.preheader.1.i
  %indvars.iv303.1.i = phi i64 [ 0, %for.body163.us.preheader.1.i ], [ %indvars.iv.next304.1.i, %for.cond172.for.end186_crit_edge.us.1.i ]
  %877 = trunc i64 %indvars.iv303.1.i to i32
  %reass.sub94 = sub i32 %877, %shr.i
  %add165.us.1.i = add i32 %reass.sub94, 1
  %mul166.us.1.i = mul nsw i32 %add165.us.1.i, %shr149.1.i
  %sub171.us.1.i = add i32 %add168.1.i, %mul166.us.1.i
  %arrayidx181.us.1.i = getelementptr inbounds ptr, ptr %747, i64 %indvars.iv303.1.i
  br i1 %876, label %for.cond172.for.end186_crit_edge.us.1.i.unr-lcssa, label %for.body175.us.1.i

for.body175.us.1.i:                               ; preds = %for.body163.us.1.i, %for.body175.us.1.i
  %indvars.iv297.1.i = phi i64 [ %indvars.iv.next298.1.i.1, %for.body175.us.1.i ], [ 0, %for.body163.us.1.i ]
  %niter236 = phi i64 [ %niter236.next.1, %for.body175.us.1.i ], [ 0, %for.body163.us.1.i ]
  %878 = trunc i64 %indvars.iv297.1.i to i32
  %reass.sub95 = sub i32 %878, %shr42.i
  %reass.add.us.1.i = add i32 %reass.sub95, 1
  %reass.mul.us.1.i = mul i32 %reass.add.us.1.i, %shr139.1.i
  %add177.us.1.i = add i32 %sub171.us.1.i, %reass.mul.us.1.i
  %shr178.us.1.i = ashr i32 %add177.us.1.i, 5
  %cond.i.i.us.1.i = call range(i32 -67108864, 67108864) i32 @llvm.smax.i32(i32 %shr178.us.1.i, i32 0)
  %cond.i4.i.us.1.i = call noundef i32 @llvm.smin.i32(i32 %cond.i.i.us.1.i, i32 %748)
  %conv179.us.1.i = trunc i32 %cond.i4.i.us.1.i to i16
  %879 = load ptr, ptr %arrayidx181.us.1.i, align 8
  %arrayidx183.us.1.i = getelementptr inbounds i16, ptr %879, i64 %indvars.iv297.1.i
  store i16 %conv179.us.1.i, ptr %arrayidx183.us.1.i, align 2
  %indvars.iv.next298.1.i = or disjoint i64 %indvars.iv297.1.i, 1
  %880 = trunc i64 %indvars.iv.next298.1.i to i32
  %reass.sub95.1 = sub i32 %880, %shr42.i
  %reass.add.us.1.i.1 = add i32 %reass.sub95.1, 1
  %reass.mul.us.1.i.1 = mul i32 %reass.add.us.1.i.1, %shr139.1.i
  %add177.us.1.i.1 = add i32 %sub171.us.1.i, %reass.mul.us.1.i.1
  %shr178.us.1.i.1 = ashr i32 %add177.us.1.i.1, 5
  %cond.i.i.us.1.i.1 = call range(i32 -67108864, 67108864) i32 @llvm.smax.i32(i32 %shr178.us.1.i.1, i32 0)
  %cond.i4.i.us.1.i.1 = call noundef i32 @llvm.smin.i32(i32 %cond.i.i.us.1.i.1, i32 %748)
  %conv179.us.1.i.1 = trunc i32 %cond.i4.i.us.1.i.1 to i16
  %881 = load ptr, ptr %arrayidx181.us.1.i, align 8
  %arrayidx183.us.1.i.1 = getelementptr inbounds i16, ptr %881, i64 %indvars.iv.next298.1.i
  store i16 %conv179.us.1.i.1, ptr %arrayidx183.us.1.i.1, align 2
  %indvars.iv.next298.1.i.1 = add nuw nsw i64 %indvars.iv297.1.i, 2
  %niter236.next.1 = add i64 %niter236, 2
  %niter236.ncmp.1 = icmp eq i64 %niter236.next.1, %unroll_iter235
  br i1 %niter236.ncmp.1, label %for.cond172.for.end186_crit_edge.us.1.i.unr-lcssa, label %for.body175.us.1.i

for.cond172.for.end186_crit_edge.us.1.i.unr-lcssa: ; preds = %for.body175.us.1.i, %for.body163.us.1.i
  %indvars.iv297.1.i.unr = phi i64 [ 0, %for.body163.us.1.i ], [ %indvars.iv.next298.1.i.1, %for.body175.us.1.i ]
  br i1 %lcmp.mod234.not, label %for.cond172.for.end186_crit_edge.us.1.i, label %for.body175.us.1.i.epil

for.body175.us.1.i.epil:                          ; preds = %for.cond172.for.end186_crit_edge.us.1.i.unr-lcssa
  %882 = trunc i64 %indvars.iv297.1.i.unr to i32
  %reass.sub95.epil = sub i32 %882, %shr42.i
  %reass.add.us.1.i.epil = add i32 %reass.sub95.epil, 1
  %reass.mul.us.1.i.epil = mul i32 %reass.add.us.1.i.epil, %shr139.1.i
  %add177.us.1.i.epil = add i32 %sub171.us.1.i, %reass.mul.us.1.i.epil
  %shr178.us.1.i.epil = ashr i32 %add177.us.1.i.epil, 5
  %cond.i.i.us.1.i.epil = call range(i32 -67108864, 67108864) i32 @llvm.smax.i32(i32 %shr178.us.1.i.epil, i32 0)
  %cond.i4.i.us.1.i.epil = call noundef i32 @llvm.smin.i32(i32 %cond.i.i.us.1.i.epil, i32 %748)
  %conv179.us.1.i.epil = trunc i32 %cond.i4.i.us.1.i.epil to i16
  %883 = load ptr, ptr %arrayidx181.us.1.i, align 8
  %arrayidx183.us.1.i.epil = getelementptr inbounds i16, ptr %883, i64 %indvars.iv297.1.i.unr
  store i16 %conv179.us.1.i.epil, ptr %arrayidx183.us.1.i.epil, align 2
  br label %for.cond172.for.end186_crit_edge.us.1.i

for.cond172.for.end186_crit_edge.us.1.i:          ; preds = %for.cond172.for.end186_crit_edge.us.1.i.unr-lcssa, %for.body175.us.1.i.epil
  %indvars.iv.next304.1.i = add nuw nsw i64 %indvars.iv303.1.i, 1
  %exitcond308.1.not.i = icmp eq i64 %indvars.iv.next304.1.i, %wide.trip.count307.1.i
  br i1 %exitcond308.1.not.i, label %intrapred_chroma_plane.exit, label %for.body163.us.1.i

for.body80.preheader.i:                           ; preds = %if.else41.i
  %wide.trip.count.i87 = zext nneg i32 %sub77.i to i64
  %invariant.gep.i = getelementptr i16, ptr %arrayidx56.i, i64 %722
  %min.iters.check = icmp ult i32 %shr42.i, 17
  br i1 %min.iters.check, label %for.body80.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %for.body80.preheader.i
  %n.vec = and i64 %wide.trip.count.i87, 2147483632
  %884 = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %mul.i79, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.ind = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph ], [ %vec.ind.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ %884, %vector.ph ], [ %919, %vector.body ]
  %vec.phi99 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %920, %vector.body ]
  %vec.phi100 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %921, %vector.body ]
  %vec.phi101 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %922, %vector.body ]
  %885 = getelementptr i16, ptr %invariant.gep.i, i64 %index
  %886 = getelementptr i8, ptr %885, i64 8
  %887 = getelementptr i8, ptr %885, i64 16
  %888 = getelementptr i8, ptr %885, i64 24
  %wide.load = load <4 x i16>, ptr %885, align 2
  %wide.load102 = load <4 x i16>, ptr %886, align 2
  %wide.load103 = load <4 x i16>, ptr %887, align 2
  %wide.load104 = load <4 x i16>, ptr %888, align 2
  %889 = zext <4 x i16> %wide.load to <4 x i32>
  %890 = zext <4 x i16> %wide.load102 to <4 x i32>
  %891 = zext <4 x i16> %wide.load103 to <4 x i32>
  %892 = zext <4 x i16> %wide.load104 to <4 x i32>
  %893 = sub nsw i64 %723, %index
  %894 = getelementptr inbounds i16, ptr %arrayidx56.i, i64 %893
  %895 = getelementptr inbounds i8, ptr %894, i64 -6
  %896 = getelementptr inbounds i8, ptr %894, i64 -14
  %897 = getelementptr inbounds i8, ptr %894, i64 -22
  %898 = getelementptr inbounds i8, ptr %894, i64 -30
  %wide.load105 = load <4 x i16>, ptr %895, align 2
  %reverse = shufflevector <4 x i16> %wide.load105, <4 x i16> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %wide.load106 = load <4 x i16>, ptr %896, align 2
  %reverse107 = shufflevector <4 x i16> %wide.load106, <4 x i16> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %wide.load108 = load <4 x i16>, ptr %897, align 2
  %reverse109 = shufflevector <4 x i16> %wide.load108, <4 x i16> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %wide.load110 = load <4 x i16>, ptr %898, align 2
  %reverse111 = shufflevector <4 x i16> %wide.load110, <4 x i16> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %899 = zext <4 x i16> %reverse to <4 x i32>
  %900 = zext <4 x i16> %reverse107 to <4 x i32>
  %901 = zext <4 x i16> %reverse109 to <4 x i32>
  %902 = zext <4 x i16> %reverse111 to <4 x i32>
  %903 = sub nsw <4 x i32> %889, %899
  %904 = sub nsw <4 x i32> %890, %900
  %905 = sub nsw <4 x i32> %891, %901
  %906 = sub nsw <4 x i32> %892, %902
  %907 = trunc <4 x i64> %vec.ind to <4 x i32>
  %908 = add <4 x i32> %907, <i32 1, i32 1, i32 1, i32 1>
  %909 = trunc <4 x i64> %vec.ind to <4 x i32>
  %910 = add <4 x i32> %909, <i32 5, i32 5, i32 5, i32 5>
  %911 = trunc <4 x i64> %vec.ind to <4 x i32>
  %912 = add <4 x i32> %911, <i32 9, i32 9, i32 9, i32 9>
  %913 = trunc <4 x i64> %vec.ind to <4 x i32>
  %914 = add <4 x i32> %913, <i32 13, i32 13, i32 13, i32 13>
  %915 = mul nsw <4 x i32> %903, %908
  %916 = mul nsw <4 x i32> %904, %910
  %917 = mul nsw <4 x i32> %905, %912
  %918 = mul nsw <4 x i32> %906, %914
  %919 = add <4 x i32> %915, %vec.phi
  %920 = add <4 x i32> %916, %vec.phi99
  %921 = add <4 x i32> %917, %vec.phi100
  %922 = add <4 x i32> %918, %vec.phi101
  %index.next = add nuw i64 %index, 16
  %vec.ind.next = add <4 x i64> %vec.ind, <i64 16, i64 16, i64 16, i64 16>
  %923 = icmp eq i64 %index.next, %n.vec
  br i1 %923, label %middle.block, label %vector.body, !llvm.loop !11

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %920, %919
  %bin.rdx112 = add <4 x i32> %921, %bin.rdx
  %bin.rdx113 = add <4 x i32> %922, %bin.rdx112
  %924 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx113)
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i87
  br i1 %cmp.n, label %for.end.i, label %for.body80.i.preheader

for.body80.i.preheader:                           ; preds = %middle.block, %for.body80.preheader.i
  %indvars.iv.i88.ph = phi i64 [ 0, %for.body80.preheader.i ], [ %n.vec, %middle.block ]
  %ih.0273.i.ph = phi i32 [ %mul.i79, %for.body80.preheader.i ], [ %924, %middle.block ]
  br label %for.body80.i

for.body80.i:                                     ; preds = %for.body80.i.preheader, %for.body80.i
  %indvars.iv.i88 = phi i64 [ %indvars.iv.next.i89, %for.body80.i ], [ %indvars.iv.i88.ph, %for.body80.i.preheader ]
  %ih.0273.i = phi i32 [ %add93.i, %for.body80.i ], [ %ih.0273.i.ph, %for.body80.i.preheader ]
  %indvars.iv.next.i89 = add nuw nsw i64 %indvars.iv.i88, 1
  %gep.i = getelementptr i16, ptr %invariant.gep.i, i64 %indvars.iv.i88
  %925 = load i16, ptr %gep.i, align 2
  %conv85.i = zext i16 %925 to i32
  %926 = sub nsw i64 %723, %indvars.iv.i88
  %arrayidx89.i = getelementptr inbounds i16, ptr %arrayidx56.i, i64 %926
  %927 = load i16, ptr %arrayidx89.i, align 2
  %conv90.i90 = zext i16 %927 to i32
  %sub91.i = sub nsw i32 %conv85.i, %conv90.i90
  %928 = trunc nuw nsw i64 %indvars.iv.next.i89 to i32
  %mul92.i = mul nsw i32 %sub91.i, %928
  %add93.i = add nsw i32 %mul92.i, %ih.0273.i
  %exitcond.not.i91 = icmp eq i64 %indvars.iv.next.i89, %wide.trip.count.i87
  br i1 %exitcond.not.i91, label %for.end.i, label %for.body80.i, !llvm.loop !12

for.end.i:                                        ; preds = %for.body80.i, %middle.block, %if.else41.i
  %ih.0.lcssa.i = phi i32 [ %mul.i79, %if.else41.i ], [ %924, %middle.block ], [ %add93.i, %for.body80.i ]
  %add96.i = add nsw i32 %720, %conv61.i
  %929 = sext i32 %add96.i to i64
  %930 = getelementptr ptr, ptr %728, i64 %929
  %arrayidx99.i80 = getelementptr i8, ptr %930, i64 -8
  %931 = load ptr, ptr %arrayidx99.i80, align 8
  %arrayidx101.i = getelementptr inbounds i16, ptr %931, i64 %idxprom72.i
  %932 = load i16, ptr %arrayidx101.i, align 2
  %conv102.i = zext i16 %932 to i32
  %sub109.i = sub nsw i32 %conv102.i, %conv74.i
  %mul110.i = mul nsw i32 %sub109.i, %shr.i
  br i1 %cmp113276.i, label %for.body115.i.preheader, label %for.end129.i

for.body115.i.preheader:                          ; preds = %for.end.i
  %933 = zext i32 %sub112.i to i64
  %min.iters.check116 = icmp ult i32 %shr.i, 5
  br i1 %min.iters.check116, label %for.body115.i.preheader219, label %vector.ph117

vector.ph117:                                     ; preds = %for.body115.i.preheader
  %n.vec119 = and i64 %933, 4294967292
  %ind.end = add nsw i64 %n.vec119, %737
  %934 = mul nsw i64 %n.vec119, -8
  %ind.end121 = getelementptr i8, ptr %arrayidx64.i, i64 %934
  %ind.end123 = trunc nuw i64 %n.vec119 to i32
  %invariant.gep = getelementptr i8, ptr %arrayidx64.i, i64 -8
  %invariant.gep260 = getelementptr i8, ptr %arrayidx64.i, i64 -16
  %invariant.gep262 = getelementptr i8, ptr %arrayidx64.i, i64 -24
  %invariant.gep264 = getelementptr i8, ptr %728, i64 8
  %invariant.gep266 = getelementptr i8, ptr %728, i64 16
  %invariant.gep268 = getelementptr i8, ptr %728, i64 24
  br label %vector.body125

vector.body125:                                   ; preds = %vector.body125, %vector.ph117
  %index126 = phi i64 [ 0, %vector.ph117 ], [ %index.next136, %vector.body125 ]
  %vec.phi127 = phi i32 [ %mul110.i, %vector.ph117 ], [ %980, %vector.body125 ]
  %vec.phi128 = phi i32 [ 0, %vector.ph117 ], [ %981, %vector.body125 ]
  %vec.phi129 = phi i32 [ 0, %vector.ph117 ], [ %982, %vector.body125 ]
  %vec.phi130 = phi i32 [ 0, %vector.ph117 ], [ %983, %vector.body125 ]
  %offset.idx = add i64 %index126, %737
  %offset.idx131 = mul i64 %index126, -8
  %next.gep = getelementptr i8, ptr %arrayidx64.i, i64 %offset.idx131
  %gep = getelementptr i8, ptr %invariant.gep, i64 %offset.idx131
  %gep261 = getelementptr i8, ptr %invariant.gep260, i64 %offset.idx131
  %gep263 = getelementptr i8, ptr %invariant.gep262, i64 %offset.idx131
  %offset.idx135 = trunc i64 %index126 to i32
  %935 = or disjoint i32 %offset.idx135, 1
  %936 = or disjoint i32 %offset.idx135, 2
  %937 = or disjoint i32 %offset.idx135, 3
  %938 = add nuw nsw i32 %offset.idx135, 4
  %939 = getelementptr inbounds ptr, ptr %728, i64 %offset.idx
  %gep265 = getelementptr ptr, ptr %invariant.gep264, i64 %offset.idx
  %gep267 = getelementptr ptr, ptr %invariant.gep266, i64 %offset.idx
  %gep269 = getelementptr ptr, ptr %invariant.gep268, i64 %offset.idx
  %940 = load ptr, ptr %939, align 8
  %941 = load ptr, ptr %gep265, align 8
  %942 = load ptr, ptr %gep267, align 8
  %943 = load ptr, ptr %gep269, align 8
  %944 = getelementptr inbounds i16, ptr %940, i64 %idxprom72.i
  %945 = getelementptr inbounds i16, ptr %941, i64 %idxprom72.i
  %946 = getelementptr inbounds i16, ptr %942, i64 %idxprom72.i
  %947 = getelementptr inbounds i16, ptr %943, i64 %idxprom72.i
  %948 = load i16, ptr %944, align 2
  %949 = load i16, ptr %945, align 2
  %950 = load i16, ptr %946, align 2
  %951 = load i16, ptr %947, align 2
  %952 = zext i16 %948 to i32
  %953 = zext i16 %949 to i32
  %954 = zext i16 %950 to i32
  %955 = zext i16 %951 to i32
  %956 = load ptr, ptr %next.gep, align 8
  %957 = load ptr, ptr %gep, align 8
  %958 = load ptr, ptr %gep261, align 8
  %959 = load ptr, ptr %gep263, align 8
  %960 = getelementptr inbounds i16, ptr %956, i64 %idxprom72.i
  %961 = getelementptr inbounds i16, ptr %957, i64 %idxprom72.i
  %962 = getelementptr inbounds i16, ptr %958, i64 %idxprom72.i
  %963 = getelementptr inbounds i16, ptr %959, i64 %idxprom72.i
  %964 = load i16, ptr %960, align 2
  %965 = load i16, ptr %961, align 2
  %966 = load i16, ptr %962, align 2
  %967 = load i16, ptr %963, align 2
  %968 = zext i16 %964 to i32
  %969 = zext i16 %965 to i32
  %970 = zext i16 %966 to i32
  %971 = zext i16 %967 to i32
  %972 = sub nsw i32 %952, %968
  %973 = sub nsw i32 %953, %969
  %974 = sub nsw i32 %954, %970
  %975 = sub nsw i32 %955, %971
  %976 = mul nsw i32 %972, %935
  %977 = mul nsw i32 %973, %936
  %978 = mul nsw i32 %974, %937
  %979 = mul nsw i32 %975, %938
  %980 = add i32 %976, %vec.phi127
  %981 = add i32 %977, %vec.phi128
  %982 = add i32 %978, %vec.phi129
  %983 = add i32 %979, %vec.phi130
  %index.next136 = add nuw i64 %index126, 4
  %984 = icmp eq i64 %index.next136, %n.vec119
  br i1 %984, label %middle.block114, label %vector.body125, !llvm.loop !13

middle.block114:                                  ; preds = %vector.body125
  %bin.rdx137 = add i32 %981, %980
  %bin.rdx138 = add i32 %982, %bin.rdx137
  %bin.rdx139 = add i32 %983, %bin.rdx138
  %cmp.n140 = icmp eq i64 %n.vec119, %933
  br i1 %cmp.n140, label %for.end129.loopexit.i, label %for.body115.i.preheader219

for.body115.i.preheader219:                       ; preds = %middle.block114, %for.body115.i.preheader
  %indvars.iv293.i.ph = phi i64 [ %737, %for.body115.i.preheader ], [ %ind.end, %middle.block114 ]
  %predU2.0280.i.ph = phi ptr [ %arrayidx64.i, %for.body115.i.preheader ], [ %ind.end121, %middle.block114 ]
  %i.1278.i.ph = phi i32 [ 0, %for.body115.i.preheader ], [ %ind.end123, %middle.block114 ]
  %iv.0277.i.ph = phi i32 [ %mul110.i, %for.body115.i.preheader ], [ %bin.rdx139, %middle.block114 ]
  %985 = add nsw i32 %shr.i, -2
  %986 = sub i32 %i.1278.i.ph, %shr.i
  %987 = and i32 %986, 1
  %lcmp.mod.not.not = icmp eq i32 %987, 0
  br i1 %lcmp.mod.not.not, label %for.body115.i.prol, label %for.body115.i.prol.loopexit

for.body115.i.prol:                               ; preds = %for.body115.i.preheader219
  %add116.i.prol = add nuw nsw i32 %i.1278.i.ph, 1
  %indvars.iv.next294.i.prol = add nsw i64 %indvars.iv293.i.ph, 1
  %arrayidx119.i.prol = getelementptr inbounds ptr, ptr %728, i64 %indvars.iv293.i.ph
  %988 = load ptr, ptr %arrayidx119.i.prol, align 8
  %add.ptr.i.prol = getelementptr inbounds i16, ptr %988, i64 %idxprom72.i
  %989 = load i16, ptr %add.ptr.i.prol, align 2
  %conv120.i.prol = zext i16 %989 to i32
  %incdec.ptr.i.prol = getelementptr inbounds i8, ptr %predU2.0280.i.ph, i64 -8
  %990 = load ptr, ptr %predU2.0280.i.ph, align 8
  %add.ptr122.i.prol = getelementptr inbounds i16, ptr %990, i64 %idxprom72.i
  %991 = load i16, ptr %add.ptr122.i.prol, align 2
  %conv123.i.prol = zext i16 %991 to i32
  %sub124.i.prol = sub nsw i32 %conv120.i.prol, %conv123.i.prol
  %mul125.i.prol = mul nsw i32 %sub124.i.prol, %add116.i.prol
  %add126.i.prol = add nsw i32 %mul125.i.prol, %iv.0277.i.ph
  br label %for.body115.i.prol.loopexit

for.body115.i.prol.loopexit:                      ; preds = %for.body115.i.prol, %for.body115.i.preheader219
  %add126.i.lcssa220.unr = phi i32 [ poison, %for.body115.i.preheader219 ], [ %add126.i.prol, %for.body115.i.prol ]
  %indvars.iv293.i.unr = phi i64 [ %indvars.iv293.i.ph, %for.body115.i.preheader219 ], [ %indvars.iv.next294.i.prol, %for.body115.i.prol ]
  %predU2.0280.i.unr = phi ptr [ %predU2.0280.i.ph, %for.body115.i.preheader219 ], [ %incdec.ptr.i.prol, %for.body115.i.prol ]
  %i.1278.i.unr = phi i32 [ %i.1278.i.ph, %for.body115.i.preheader219 ], [ %add116.i.prol, %for.body115.i.prol ]
  %iv.0277.i.unr = phi i32 [ %iv.0277.i.ph, %for.body115.i.preheader219 ], [ %add126.i.prol, %for.body115.i.prol ]
  %992 = icmp eq i32 %985, %i.1278.i.ph
  br i1 %992, label %for.end129.loopexit.i, label %for.body115.i.preheader219.new

for.body115.i.preheader219.new:                   ; preds = %for.body115.i.prol.loopexit
  %invariant.gep270 = getelementptr i8, ptr %728, i64 8
  br label %for.body115.i

for.body115.i:                                    ; preds = %for.body115.i, %for.body115.i.preheader219.new
  %indvars.iv293.i = phi i64 [ %indvars.iv293.i.unr, %for.body115.i.preheader219.new ], [ %indvars.iv.next294.i.1, %for.body115.i ]
  %predU2.0280.i = phi ptr [ %predU2.0280.i.unr, %for.body115.i.preheader219.new ], [ %incdec.ptr.i.1, %for.body115.i ]
  %i.1278.i = phi i32 [ %i.1278.i.unr, %for.body115.i.preheader219.new ], [ %add116.i.1, %for.body115.i ]
  %iv.0277.i = phi i32 [ %iv.0277.i.unr, %for.body115.i.preheader219.new ], [ %add126.i.1, %for.body115.i ]
  %add116.i = add nuw nsw i32 %i.1278.i, 1
  %arrayidx119.i = getelementptr inbounds ptr, ptr %728, i64 %indvars.iv293.i
  %993 = load ptr, ptr %arrayidx119.i, align 8
  %add.ptr.i = getelementptr inbounds i16, ptr %993, i64 %idxprom72.i
  %994 = load i16, ptr %add.ptr.i, align 2
  %conv120.i = zext i16 %994 to i32
  %incdec.ptr.i = getelementptr inbounds i8, ptr %predU2.0280.i, i64 -8
  %995 = load ptr, ptr %predU2.0280.i, align 8
  %add.ptr122.i = getelementptr inbounds i16, ptr %995, i64 %idxprom72.i
  %996 = load i16, ptr %add.ptr122.i, align 2
  %conv123.i = zext i16 %996 to i32
  %sub124.i = sub nsw i32 %conv120.i, %conv123.i
  %mul125.i = mul nsw i32 %sub124.i, %add116.i
  %add126.i = add nsw i32 %mul125.i, %iv.0277.i
  %add116.i.1 = add nuw nsw i32 %i.1278.i, 2
  %indvars.iv.next294.i.1 = add nsw i64 %indvars.iv293.i, 2
  %gep271 = getelementptr ptr, ptr %invariant.gep270, i64 %indvars.iv293.i
  %997 = load ptr, ptr %gep271, align 8
  %add.ptr.i.1 = getelementptr inbounds i16, ptr %997, i64 %idxprom72.i
  %998 = load i16, ptr %add.ptr.i.1, align 2
  %conv120.i.1 = zext i16 %998 to i32
  %incdec.ptr.i.1 = getelementptr inbounds i8, ptr %predU2.0280.i, i64 -16
  %999 = load ptr, ptr %incdec.ptr.i, align 8
  %add.ptr122.i.1 = getelementptr inbounds i16, ptr %999, i64 %idxprom72.i
  %1000 = load i16, ptr %add.ptr122.i.1, align 2
  %conv123.i.1 = zext i16 %1000 to i32
  %sub124.i.1 = sub nsw i32 %conv120.i.1, %conv123.i.1
  %mul125.i.1 = mul nsw i32 %sub124.i.1, %add116.i.1
  %add126.i.1 = add nsw i32 %mul125.i.1, %add126.i
  %exitcond296.not.i.1 = icmp eq i32 %add116.i.1, %sub112.i
  br i1 %exitcond296.not.i.1, label %for.end129.loopexit.i, label %for.body115.i, !llvm.loop !14

for.end129.loopexit.i:                            ; preds = %for.body115.i.prol.loopexit, %for.body115.i, %middle.block114
  %add126.i.lcssa = phi i32 [ %bin.rdx139, %middle.block114 ], [ %add126.i.lcssa220.unr, %for.body115.i.prol.loopexit ], [ %add126.i.1, %for.body115.i ]
  %1001 = trunc i64 %726 to i32
  %1002 = add i32 %add62.i, %1001
  br label %for.end129.i

for.end129.i:                                     ; preds = %for.end129.loopexit.i, %for.end.i
  %iv.0.lcssa.i = phi i32 [ %mul110.i, %for.end.i ], [ %add126.i.lcssa, %for.end129.loopexit.i ]
  %pos_y1.0.lcssa.i = phi i32 [ %add62.i, %for.end.i ], [ %1002, %for.end129.loopexit.i ]
  %mul133.i = mul nsw i32 %ih.0.lcssa.i, %cond132.i
  %add135.i = add nsw i32 %mul133.i, %mul134.i
  %shr139.i = ashr i32 %add135.i, %cond138.i
  %mul143.i = mul nsw i32 %iv.0.lcssa.i, %cond142.i
  %add145.i = add nsw i32 %mul143.i, %mul144.i
  %shr149.i = ashr i32 %add145.i, %cond148.i
  br i1 %cmp161285.i, label %for.body163.lr.ph.i, label %for.cond.loopexit.i

for.body163.lr.ph.i:                              ; preds = %for.end129.i
  %idxprom150.i = sext i32 %pos_y1.0.lcssa.i to i64
  %arrayidx151.i = getelementptr inbounds ptr, ptr %728, i64 %idxprom150.i
  %1003 = load ptr, ptr %arrayidx151.i, align 8
  %arrayidx153.i = getelementptr inbounds i16, ptr %1003, i64 %idxprom72.i
  %1004 = load i16, ptr %arrayidx153.i, align 2
  %conv154.i = zext i16 %1004 to i32
  %add159.i = add nuw nsw i32 %conv154.i, %conv68.i
  %shl.i = shl nuw nsw i32 %add159.i, 4
  %add168.i = add nuw nsw i32 %shl.i, 16
  br i1 %cmp173283.i, label %for.body163.us.preheader.i, label %for.cond.loopexit.i

for.body163.us.preheader.i:                       ; preds = %for.body163.lr.ph.i
  %wide.trip.count307.i = zext nneg i32 %720 to i64
  %wide.trip.count301.i = zext nneg i32 %719 to i64
  %xtraiter229 = and i64 %wide.trip.count301.i, 1
  %1005 = icmp eq i32 %719, 1
  %unroll_iter = and i64 %wide.trip.count301.i, 2147483646
  %lcmp.mod230.not = icmp eq i64 %xtraiter229, 0
  br label %for.body163.us.i

for.body163.us.i:                                 ; preds = %for.cond172.for.end186_crit_edge.us.i, %for.body163.us.preheader.i
  %indvars.iv303.i = phi i64 [ 0, %for.body163.us.preheader.i ], [ %indvars.iv.next304.i, %for.cond172.for.end186_crit_edge.us.i ]
  %1006 = trunc i64 %indvars.iv303.i to i32
  %reass.sub = sub i32 %1006, %shr.i
  %add165.us.i = add i32 %reass.sub, 1
  %mul166.us.i = mul nsw i32 %add165.us.i, %shr149.i
  %sub171.us.i = add i32 %add168.i, %mul166.us.i
  %arrayidx181.us.i = getelementptr inbounds ptr, ptr %730, i64 %indvars.iv303.i
  br i1 %1005, label %for.cond172.for.end186_crit_edge.us.i.unr-lcssa, label %for.body175.us.i

for.body175.us.i:                                 ; preds = %for.body163.us.i, %for.body175.us.i
  %indvars.iv297.i = phi i64 [ %indvars.iv.next298.i.1, %for.body175.us.i ], [ 0, %for.body163.us.i ]
  %niter = phi i64 [ %niter.next.1, %for.body175.us.i ], [ 0, %for.body163.us.i ]
  %1007 = trunc i64 %indvars.iv297.i to i32
  %reass.sub93 = sub i32 %1007, %shr42.i
  %reass.add.us.i = add i32 %reass.sub93, 1
  %reass.mul.us.i = mul i32 %reass.add.us.i, %shr139.i
  %add177.us.i = add i32 %sub171.us.i, %reass.mul.us.i
  %shr178.us.i = ashr i32 %add177.us.i, 5
  %cond.i.i.us.i = call range(i32 -67108864, 67108864) i32 @llvm.smax.i32(i32 %shr178.us.i, i32 0)
  %cond.i4.i.us.i = call noundef i32 @llvm.smin.i32(i32 %cond.i.i.us.i, i32 %731)
  %conv179.us.i = trunc i32 %cond.i4.i.us.i to i16
  %1008 = load ptr, ptr %arrayidx181.us.i, align 8
  %arrayidx183.us.i = getelementptr inbounds i16, ptr %1008, i64 %indvars.iv297.i
  store i16 %conv179.us.i, ptr %arrayidx183.us.i, align 2
  %indvars.iv.next298.i = or disjoint i64 %indvars.iv297.i, 1
  %1009 = trunc i64 %indvars.iv.next298.i to i32
  %reass.sub93.1 = sub i32 %1009, %shr42.i
  %reass.add.us.i.1 = add i32 %reass.sub93.1, 1
  %reass.mul.us.i.1 = mul i32 %reass.add.us.i.1, %shr139.i
  %add177.us.i.1 = add i32 %sub171.us.i, %reass.mul.us.i.1
  %shr178.us.i.1 = ashr i32 %add177.us.i.1, 5
  %cond.i.i.us.i.1 = call range(i32 -67108864, 67108864) i32 @llvm.smax.i32(i32 %shr178.us.i.1, i32 0)
  %cond.i4.i.us.i.1 = call noundef i32 @llvm.smin.i32(i32 %cond.i.i.us.i.1, i32 %731)
  %conv179.us.i.1 = trunc i32 %cond.i4.i.us.i.1 to i16
  %1010 = load ptr, ptr %arrayidx181.us.i, align 8
  %arrayidx183.us.i.1 = getelementptr inbounds i16, ptr %1010, i64 %indvars.iv.next298.i
  store i16 %conv179.us.i.1, ptr %arrayidx183.us.i.1, align 2
  %indvars.iv.next298.i.1 = add nuw nsw i64 %indvars.iv297.i, 2
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %for.cond172.for.end186_crit_edge.us.i.unr-lcssa, label %for.body175.us.i

for.cond172.for.end186_crit_edge.us.i.unr-lcssa:  ; preds = %for.body175.us.i, %for.body163.us.i
  %indvars.iv297.i.unr = phi i64 [ 0, %for.body163.us.i ], [ %indvars.iv.next298.i.1, %for.body175.us.i ]
  br i1 %lcmp.mod230.not, label %for.cond172.for.end186_crit_edge.us.i, label %for.body175.us.i.epil

for.body175.us.i.epil:                            ; preds = %for.cond172.for.end186_crit_edge.us.i.unr-lcssa
  %1011 = trunc i64 %indvars.iv297.i.unr to i32
  %reass.sub93.epil = sub i32 %1011, %shr42.i
  %reass.add.us.i.epil = add i32 %reass.sub93.epil, 1
  %reass.mul.us.i.epil = mul i32 %reass.add.us.i.epil, %shr139.i
  %add177.us.i.epil = add i32 %sub171.us.i, %reass.mul.us.i.epil
  %shr178.us.i.epil = ashr i32 %add177.us.i.epil, 5
  %cond.i.i.us.i.epil = call range(i32 -67108864, 67108864) i32 @llvm.smax.i32(i32 %shr178.us.i.epil, i32 0)
  %cond.i4.i.us.i.epil = call noundef i32 @llvm.smin.i32(i32 %cond.i.i.us.i.epil, i32 %731)
  %conv179.us.i.epil = trunc i32 %cond.i4.i.us.i.epil to i16
  %1012 = load ptr, ptr %arrayidx181.us.i, align 8
  %arrayidx183.us.i.epil = getelementptr inbounds i16, ptr %1012, i64 %indvars.iv297.i.unr
  store i16 %conv179.us.i.epil, ptr %arrayidx183.us.i.epil, align 2
  br label %for.cond172.for.end186_crit_edge.us.i

for.cond172.for.end186_crit_edge.us.i:            ; preds = %for.cond172.for.end186_crit_edge.us.i.unr-lcssa, %for.body175.us.i.epil
  %indvars.iv.next304.i = add nuw nsw i64 %indvars.iv303.i, 1
  %exitcond308.not.i = icmp eq i64 %indvars.iv.next304.i, %wide.trip.count307.i
  br i1 %exitcond308.not.i, label %for.cond.loopexit.loopexit.i, label %for.body163.us.i

intrapred_chroma_plane.exit:                      ; preds = %for.cond172.for.end186_crit_edge.us.1.i, %if.then40.i, %for.end129.1.i, %for.body163.lr.ph.1.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %left.i55) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %up_left.i54) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %up.i53) #5
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  tail call void @error(ptr noundef nonnull @.str.1, i32 noundef 600) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %intrapred_chroma_plane.exit, %intrapred_chroma_ver.exit, %intrapred_chroma_hor.exit, %intrapred_chroma_dc.exit
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @intrapred_chroma_mbaff(ptr noundef %currMB) local_unnamed_addr #0 {
entry:
  %up = alloca %struct.pix_pos, align 4
  %left = alloca [17 x %struct.pix_pos], align 16
  %left184 = alloca [17 x %struct.pix_pos], align 16
  %up351 = alloca %struct.pix_pos, align 4
  %up423 = alloca %struct.pix_pos, align 4
  %left424 = alloca [17 x %struct.pix_pos], align 16
  %0 = load ptr, ptr %currMB, align 8
  %p_Vid1 = getelementptr inbounds i8, ptr %currMB, i64 8
  %1 = load ptr, ptr %p_Vid1, align 8
  %dec_picture2 = getelementptr inbounds i8, ptr %0, i64 13520
  %2 = load ptr, ptr %dec_picture2, align 8
  %chroma_format_idc = getelementptr inbounds i8, ptr %2, i64 268
  %3 = load i32, ptr %chroma_format_idc, align 4
  %sub = add nsw i32 %3, -1
  %c_ipred_mode = getelementptr inbounds i8, ptr %currMB, i64 373
  %4 = load i8, ptr %c_ipred_mode, align 1
  switch i8 %4, label %sw.default [
    i8 0, label %sw.bb
    i8 1, label %sw.bb183
    i8 2, label %sw.bb350
    i8 3, label %sw.bb422
  ]

sw.bb:                                            ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %up) #5
  call void @llvm.lifetime.start.p0(i64 272, ptr nonnull %left) #5
  %mb_cr_size_y = getelementptr inbounds i8, ptr %1, i64 849112
  %5 = load i32, ptr %mb_cr_size_y, align 8
  %shr = ashr i32 %5, 1
  %cmp.not1458 = icmp slt i32 %5, 0
  br i1 %cmp.not1458, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %sw.bb
  %arrayidx = getelementptr inbounds i8, ptr %1, i64 849132
  %6 = add nuw i32 %5, 1
  %wide.trip.count1547 = zext i32 %6 to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv1543 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next1544, %for.body ]
  %arrayidx5 = getelementptr inbounds [17 x %struct.pix_pos], ptr %left, i64 0, i64 %indvars.iv1543
  %7 = trunc i64 %indvars.iv1543 to i32
  %8 = add i32 %7, -1
  call void @getAffNeighbour(ptr noundef nonnull %currMB, i32 noundef -1, i32 noundef %8, ptr noundef nonnull %arrayidx, ptr noundef nonnull %arrayidx5) #5
  %indvars.iv.next1544 = add nuw nsw i64 %indvars.iv1543, 1
  %exitcond1548.not = icmp eq i64 %indvars.iv.next1544, %wide.trip.count1547
  br i1 %exitcond1548.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %sw.bb
  %arrayidx7 = getelementptr inbounds i8, ptr %1, i64 849132
  call void @getAffNeighbour(ptr noundef nonnull %currMB, i32 noundef 0, i32 noundef -1, ptr noundef nonnull %arrayidx7, ptr noundef nonnull %up) #5
  %active_pps = getelementptr inbounds i8, ptr %1, i64 8
  %9 = load ptr, ptr %active_pps, align 8
  %constrained_intra_pred_flag = getelementptr inbounds i8, ptr %9, i64 2204
  %10 = load i32, ptr %constrained_intra_pred_flag, align 4
  %tobool.not = icmp eq i32 %10, 0
  %11 = load i32, ptr %up, align 4
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %for.end
  %arrayidx9 = getelementptr inbounds i8, ptr %left, i64 16
  %12 = load i32, ptr %arrayidx9, align 16
  br label %if.end

if.else:                                          ; preds = %for.end
  %tobool16.not = icmp eq i32 %11, 0
  br i1 %tobool16.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %if.else
  %intra_block = getelementptr inbounds i8, ptr %0, i64 13544
  %13 = load ptr, ptr %intra_block, align 8
  %mb_addr = getelementptr inbounds i8, ptr %up, i64 4
  %14 = load i32, ptr %mb_addr, align 4
  %idxprom17 = sext i32 %14 to i64
  %arrayidx18 = getelementptr inbounds i8, ptr %13, i64 %idxprom17
  %15 = load i8, ptr %arrayidx18, align 1
  %conv19 = sext i8 %15 to i32
  br label %cond.end

cond.end:                                         ; preds = %if.else, %cond.true
  %cond = phi i32 [ %conv19, %cond.true ], [ 0, %if.else ]
  %cmp221460 = icmp sgt i32 %shr, 0
  br i1 %cmp221460, label %for.body24.lr.ph, label %for.cond47.preheader

for.body24.lr.ph:                                 ; preds = %cond.end
  %intra_block31 = getelementptr inbounds i8, ptr %0, i64 13544
  %wide.trip.count1552 = zext nneg i32 %shr to i64
  %min.iters.check2174 = icmp ult i32 %shr, 4
  br i1 %min.iters.check2174, label %for.body24.preheader, label %vector.ph2175

for.body24.preheader:                             ; preds = %middle.block2172, %for.body24.lr.ph
  %indvars.iv1549.ph = phi i64 [ 0, %for.body24.lr.ph ], [ %n.vec2177, %middle.block2172 ]
  %left_avail.sroa.0.01461.ph = phi i32 [ 1, %for.body24.lr.ph ], [ %bin.rdx2200, %middle.block2172 ]
  %xtraiter2328 = and i64 %wide.trip.count1552, 1
  %lcmp.mod2329.not = icmp eq i64 %xtraiter2328, 0
  br i1 %lcmp.mod2329.not, label %for.body24.prol.loopexit, label %for.body24.prol

for.body24.prol:                                  ; preds = %for.body24.preheader
  %indvars.iv.next1550.prol = or disjoint i64 %indvars.iv1549.ph, 1
  %arrayidx27.prol = getelementptr inbounds [17 x %struct.pix_pos], ptr %left, i64 0, i64 %indvars.iv.next1550.prol
  %16 = load i32, ptr %arrayidx27.prol, align 16
  %tobool29.not.prol = icmp eq i32 %16, 0
  br i1 %tobool29.not.prol, label %cond.end40.prol, label %cond.true30.prol

cond.true30.prol:                                 ; preds = %for.body24.prol
  %17 = load ptr, ptr %intra_block31, align 8
  %mb_addr35.prol = getelementptr inbounds i8, ptr %arrayidx27.prol, i64 4
  %18 = load i32, ptr %mb_addr35.prol, align 4
  %idxprom36.prol = sext i32 %18 to i64
  %arrayidx37.prol = getelementptr inbounds i8, ptr %17, i64 %idxprom36.prol
  %19 = load i8, ptr %arrayidx37.prol, align 1
  %conv38.prol = sext i8 %19 to i32
  br label %cond.end40.prol

cond.end40.prol:                                  ; preds = %cond.true30.prol, %for.body24.prol
  %cond41.prol = phi i32 [ %conv38.prol, %cond.true30.prol ], [ 0, %for.body24.prol ]
  %and.prol = and i32 %cond41.prol, %left_avail.sroa.0.01461.ph
  br label %for.body24.prol.loopexit

for.body24.prol.loopexit:                         ; preds = %cond.end40.prol, %for.body24.preheader
  %and.lcssa.unr = phi i32 [ poison, %for.body24.preheader ], [ %and.prol, %cond.end40.prol ]
  %indvars.iv1549.unr = phi i64 [ %indvars.iv1549.ph, %for.body24.preheader ], [ %indvars.iv.next1550.prol, %cond.end40.prol ]
  %left_avail.sroa.0.01461.unr = phi i32 [ %left_avail.sroa.0.01461.ph, %for.body24.preheader ], [ %and.prol, %cond.end40.prol ]
  %20 = add nsw i64 %wide.trip.count1552, -1
  %21 = icmp eq i64 %indvars.iv1549.ph, %20
  br i1 %21, label %for.cond47.preheader, label %for.body24

vector.ph2175:                                    ; preds = %for.body24.lr.ph
  %n.vec2177 = and i64 %wide.trip.count1552, 2147483644
  br label %vector.body2179

vector.body2179:                                  ; preds = %pred.load.continue2192, %vector.ph2175
  %index2180 = phi i64 [ 0, %vector.ph2175 ], [ %index.next2197, %pred.load.continue2192 ]
  %vec.phi2181 = phi i32 [ 1, %vector.ph2175 ], [ %66, %pred.load.continue2192 ]
  %vec.phi2182 = phi i32 [ -1, %vector.ph2175 ], [ %67, %pred.load.continue2192 ]
  %vec.phi2183 = phi i32 [ -1, %vector.ph2175 ], [ %68, %pred.load.continue2192 ]
  %vec.phi2184 = phi i32 [ -1, %vector.ph2175 ], [ %69, %pred.load.continue2192 ]
  %22 = or disjoint i64 %index2180, 1
  %23 = or disjoint i64 %index2180, 2
  %24 = or disjoint i64 %index2180, 3
  %25 = add nuw nsw i64 %index2180, 4
  %26 = getelementptr inbounds [17 x %struct.pix_pos], ptr %left, i64 0, i64 %22
  %27 = getelementptr inbounds [17 x %struct.pix_pos], ptr %left, i64 0, i64 %23
  %28 = getelementptr inbounds [17 x %struct.pix_pos], ptr %left, i64 0, i64 %24
  %29 = getelementptr inbounds [17 x %struct.pix_pos], ptr %left, i64 0, i64 %25
  %30 = load i32, ptr %26, align 16
  %31 = load i32, ptr %27, align 16
  %32 = load i32, ptr %28, align 16
  %33 = load i32, ptr %29, align 16
  %.not2252 = icmp eq i32 %30, 0
  %.not2253 = icmp eq i32 %31, 0
  %.not2254 = icmp eq i32 %32, 0
  %.not2255 = icmp eq i32 %33, 0
  br i1 %.not2252, label %pred.load.continue2186, label %pred.load.if2185

pred.load.if2185:                                 ; preds = %vector.body2179
  %34 = load ptr, ptr %intra_block31, align 8
  %35 = getelementptr inbounds i8, ptr %26, i64 4
  %36 = load i32, ptr %35, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, ptr %34, i64 %37
  %39 = load i8, ptr %38, align 1
  br label %pred.load.continue2186

pred.load.continue2186:                           ; preds = %pred.load.if2185, %vector.body2179
  %40 = phi i8 [ poison, %vector.body2179 ], [ %39, %pred.load.if2185 ]
  br i1 %.not2253, label %pred.load.continue2188, label %pred.load.if2187

pred.load.if2187:                                 ; preds = %pred.load.continue2186
  %41 = load ptr, ptr %intra_block31, align 8
  %42 = getelementptr inbounds i8, ptr %27, i64 4
  %43 = load i32, ptr %42, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, ptr %41, i64 %44
  %46 = load i8, ptr %45, align 1
  br label %pred.load.continue2188

pred.load.continue2188:                           ; preds = %pred.load.if2187, %pred.load.continue2186
  %47 = phi i8 [ poison, %pred.load.continue2186 ], [ %46, %pred.load.if2187 ]
  br i1 %.not2254, label %pred.load.continue2190, label %pred.load.if2189

pred.load.if2189:                                 ; preds = %pred.load.continue2188
  %48 = load ptr, ptr %intra_block31, align 8
  %49 = getelementptr inbounds i8, ptr %28, i64 4
  %50 = load i32, ptr %49, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, ptr %48, i64 %51
  %53 = load i8, ptr %52, align 1
  br label %pred.load.continue2190

pred.load.continue2190:                           ; preds = %pred.load.if2189, %pred.load.continue2188
  %54 = phi i8 [ poison, %pred.load.continue2188 ], [ %53, %pred.load.if2189 ]
  br i1 %.not2255, label %pred.load.continue2192, label %pred.load.if2191

pred.load.if2191:                                 ; preds = %pred.load.continue2190
  %55 = load ptr, ptr %intra_block31, align 8
  %56 = getelementptr inbounds i8, ptr %29, i64 4
  %57 = load i32, ptr %56, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, ptr %55, i64 %58
  %60 = load i8, ptr %59, align 1
  br label %pred.load.continue2192

pred.load.continue2192:                           ; preds = %pred.load.if2191, %pred.load.continue2190
  %61 = phi i8 [ poison, %pred.load.continue2190 ], [ %60, %pred.load.if2191 ]
  %62 = sext i8 %40 to i32
  %63 = sext i8 %47 to i32
  %64 = sext i8 %54 to i32
  %65 = sext i8 %61 to i32
  %predphi2193 = select i1 %.not2252, i32 0, i32 %62
  %predphi2194 = select i1 %.not2253, i32 0, i32 %63
  %predphi2195 = select i1 %.not2254, i32 0, i32 %64
  %predphi2196 = select i1 %.not2255, i32 0, i32 %65
  %66 = and i32 %predphi2193, %vec.phi2181
  %67 = and i32 %predphi2194, %vec.phi2182
  %68 = and i32 %predphi2195, %vec.phi2183
  %69 = and i32 %predphi2196, %vec.phi2184
  %index.next2197 = add nuw i64 %index2180, 4
  %70 = icmp eq i64 %index.next2197, %n.vec2177
  br i1 %70, label %middle.block2172, label %vector.body2179, !llvm.loop !15

middle.block2172:                                 ; preds = %pred.load.continue2192
  %bin.rdx2198 = and i32 %67, %66
  %bin.rdx2199 = and i32 %68, %bin.rdx2198
  %bin.rdx2200 = and i32 %69, %bin.rdx2199
  %cmp.n2201 = icmp eq i64 %n.vec2177, %wide.trip.count1552
  br i1 %cmp.n2201, label %for.cond47.preheader, label %for.body24.preheader

for.cond47.preheader:                             ; preds = %for.body24.prol.loopexit, %cond.end40.1, %middle.block2172, %cond.end
  %left_avail.sroa.0.0.lcssa = phi i32 [ 1, %cond.end ], [ %bin.rdx2200, %middle.block2172 ], [ %and.lcssa.unr, %for.body24.prol.loopexit ], [ %and.1, %cond.end40.1 ]
  %cmp481464 = icmp sgt i32 %5, 0
  br i1 %cmp481464, label %for.body50.lr.ph, label %if.end

for.body50.lr.ph:                                 ; preds = %for.cond47.preheader
  %intra_block57 = getelementptr inbounds i8, ptr %0, i64 13544
  %71 = zext nneg i32 %shr to i64
  %72 = add nuw nsw i32 %shr, 1
  %smax2203 = call i32 @llvm.smax.i32(i32 %5, i32 %72)
  %73 = xor i32 %shr, -1
  %74 = add nsw i32 %smax2203, %73
  %75 = zext i32 %74 to i64
  %76 = add nuw nsw i64 %75, 1
  %min.iters.check2206 = icmp ult i32 %74, 3
  br i1 %min.iters.check2206, label %for.body50.preheader, label %vector.ph2207

for.body50.preheader:                             ; preds = %middle.block2204, %for.body50.lr.ph
  %indvars.iv1554.ph = phi i64 [ %71, %for.body50.lr.ph ], [ %ind.end2210, %middle.block2204 ]
  %left_avail.sroa.10.01465.ph = phi i32 [ 1, %for.body50.lr.ph ], [ %bin.rdx2234, %middle.block2204 ]
  br label %for.body50

vector.ph2207:                                    ; preds = %for.body50.lr.ph
  %n.vec2209 = and i64 %76, 8589934588
  %ind.end2210 = add nuw nsw i64 %n.vec2209, %71
  br label %vector.body2212

vector.body2212:                                  ; preds = %pred.load.continue2226, %vector.ph2207
  %index2213 = phi i64 [ 0, %vector.ph2207 ], [ %index.next2231, %pred.load.continue2226 ]
  %vec.phi2214 = phi i32 [ 1, %vector.ph2207 ], [ %121, %pred.load.continue2226 ]
  %vec.phi2215 = phi i32 [ -1, %vector.ph2207 ], [ %122, %pred.load.continue2226 ]
  %vec.phi2216 = phi i32 [ -1, %vector.ph2207 ], [ %123, %pred.load.continue2226 ]
  %vec.phi2217 = phi i32 [ -1, %vector.ph2207 ], [ %124, %pred.load.continue2226 ]
  %offset.idx2218 = add i64 %index2213, %71
  %77 = add nuw nsw i64 %offset.idx2218, 1
  %78 = add i64 %offset.idx2218, 2
  %79 = add i64 %offset.idx2218, 3
  %80 = add i64 %offset.idx2218, 4
  %81 = getelementptr inbounds [17 x %struct.pix_pos], ptr %left, i64 0, i64 %77
  %82 = getelementptr inbounds [17 x %struct.pix_pos], ptr %left, i64 0, i64 %78
  %83 = getelementptr inbounds [17 x %struct.pix_pos], ptr %left, i64 0, i64 %79
  %84 = getelementptr inbounds [17 x %struct.pix_pos], ptr %left, i64 0, i64 %80
  %85 = load i32, ptr %81, align 16
  %86 = load i32, ptr %82, align 16
  %87 = load i32, ptr %83, align 16
  %88 = load i32, ptr %84, align 16
  %.not2256 = icmp eq i32 %85, 0
  %.not2257 = icmp eq i32 %86, 0
  %.not2258 = icmp eq i32 %87, 0
  %.not2259 = icmp eq i32 %88, 0
  br i1 %.not2256, label %pred.load.continue2220, label %pred.load.if2219

pred.load.if2219:                                 ; preds = %vector.body2212
  %89 = load ptr, ptr %intra_block57, align 8
  %90 = getelementptr inbounds i8, ptr %81, i64 4
  %91 = load i32, ptr %90, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8, ptr %89, i64 %92
  %94 = load i8, ptr %93, align 1
  br label %pred.load.continue2220

pred.load.continue2220:                           ; preds = %pred.load.if2219, %vector.body2212
  %95 = phi i8 [ poison, %vector.body2212 ], [ %94, %pred.load.if2219 ]
  br i1 %.not2257, label %pred.load.continue2222, label %pred.load.if2221

pred.load.if2221:                                 ; preds = %pred.load.continue2220
  %96 = load ptr, ptr %intra_block57, align 8
  %97 = getelementptr inbounds i8, ptr %82, i64 4
  %98 = load i32, ptr %97, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8, ptr %96, i64 %99
  %101 = load i8, ptr %100, align 1
  br label %pred.load.continue2222

pred.load.continue2222:                           ; preds = %pred.load.if2221, %pred.load.continue2220
  %102 = phi i8 [ poison, %pred.load.continue2220 ], [ %101, %pred.load.if2221 ]
  br i1 %.not2258, label %pred.load.continue2224, label %pred.load.if2223

pred.load.if2223:                                 ; preds = %pred.load.continue2222
  %103 = load ptr, ptr %intra_block57, align 8
  %104 = getelementptr inbounds i8, ptr %83, i64 4
  %105 = load i32, ptr %104, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8, ptr %103, i64 %106
  %108 = load i8, ptr %107, align 1
  br label %pred.load.continue2224

pred.load.continue2224:                           ; preds = %pred.load.if2223, %pred.load.continue2222
  %109 = phi i8 [ poison, %pred.load.continue2222 ], [ %108, %pred.load.if2223 ]
  br i1 %.not2259, label %pred.load.continue2226, label %pred.load.if2225

pred.load.if2225:                                 ; preds = %pred.load.continue2224
  %110 = load ptr, ptr %intra_block57, align 8
  %111 = getelementptr inbounds i8, ptr %84, i64 4
  %112 = load i32, ptr %111, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8, ptr %110, i64 %113
  %115 = load i8, ptr %114, align 1
  br label %pred.load.continue2226

pred.load.continue2226:                           ; preds = %pred.load.if2225, %pred.load.continue2224
  %116 = phi i8 [ poison, %pred.load.continue2224 ], [ %115, %pred.load.if2225 ]
  %117 = sext i8 %95 to i32
  %118 = sext i8 %102 to i32
  %119 = sext i8 %109 to i32
  %120 = sext i8 %116 to i32
  %predphi2227 = select i1 %.not2256, i32 0, i32 %117
  %predphi2228 = select i1 %.not2257, i32 0, i32 %118
  %predphi2229 = select i1 %.not2258, i32 0, i32 %119
  %predphi2230 = select i1 %.not2259, i32 0, i32 %120
  %121 = and i32 %predphi2227, %vec.phi2214
  %122 = and i32 %predphi2228, %vec.phi2215
  %123 = and i32 %predphi2229, %vec.phi2216
  %124 = and i32 %predphi2230, %vec.phi2217
  %index.next2231 = add nuw i64 %index2213, 4
  %125 = icmp eq i64 %index.next2231, %n.vec2209
  br i1 %125, label %middle.block2204, label %vector.body2212, !llvm.loop !16

middle.block2204:                                 ; preds = %pred.load.continue2226
  %bin.rdx2232 = and i32 %122, %121
  %bin.rdx2233 = and i32 %123, %bin.rdx2232
  %bin.rdx2234 = and i32 %124, %bin.rdx2233
  %cmp.n2235 = icmp eq i64 %76, %n.vec2209
  br i1 %cmp.n2235, label %if.end, label %for.body50.preheader

for.body24:                                       ; preds = %for.body24.prol.loopexit, %cond.end40.1
  %indvars.iv1549 = phi i64 [ %indvars.iv.next1550.1, %cond.end40.1 ], [ %indvars.iv1549.unr, %for.body24.prol.loopexit ]
  %left_avail.sroa.0.01461 = phi i32 [ %and.1, %cond.end40.1 ], [ %left_avail.sroa.0.01461.unr, %for.body24.prol.loopexit ]
  %indvars.iv.next1550 = add nuw nsw i64 %indvars.iv1549, 1
  %arrayidx27 = getelementptr inbounds [17 x %struct.pix_pos], ptr %left, i64 0, i64 %indvars.iv.next1550
  %126 = load i32, ptr %arrayidx27, align 16
  %tobool29.not = icmp eq i32 %126, 0
  br i1 %tobool29.not, label %cond.end40, label %cond.true30

cond.true30:                                      ; preds = %for.body24
  %127 = load ptr, ptr %intra_block31, align 8
  %mb_addr35 = getelementptr inbounds i8, ptr %arrayidx27, i64 4
  %128 = load i32, ptr %mb_addr35, align 4
  %idxprom36 = sext i32 %128 to i64
  %arrayidx37 = getelementptr inbounds i8, ptr %127, i64 %idxprom36
  %129 = load i8, ptr %arrayidx37, align 1
  %conv38 = sext i8 %129 to i32
  br label %cond.end40

cond.end40:                                       ; preds = %for.body24, %cond.true30
  %cond41 = phi i32 [ %conv38, %cond.true30 ], [ 0, %for.body24 ]
  %and = and i32 %cond41, %left_avail.sroa.0.01461
  %indvars.iv.next1550.1 = add nuw nsw i64 %indvars.iv1549, 2
  %arrayidx27.1 = getelementptr inbounds [17 x %struct.pix_pos], ptr %left, i64 0, i64 %indvars.iv.next1550.1
  %130 = load i32, ptr %arrayidx27.1, align 16
  %tobool29.not.1 = icmp eq i32 %130, 0
  br i1 %tobool29.not.1, label %cond.end40.1, label %cond.true30.1

cond.true30.1:                                    ; preds = %cond.end40
  %131 = load ptr, ptr %intra_block31, align 8
  %mb_addr35.1 = getelementptr inbounds i8, ptr %arrayidx27.1, i64 4
  %132 = load i32, ptr %mb_addr35.1, align 4
  %idxprom36.1 = sext i32 %132 to i64
  %arrayidx37.1 = getelementptr inbounds i8, ptr %131, i64 %idxprom36.1
  %133 = load i8, ptr %arrayidx37.1, align 1
  %conv38.1 = sext i8 %133 to i32
  br label %cond.end40.1

cond.end40.1:                                     ; preds = %cond.true30.1, %cond.end40
  %cond41.1 = phi i32 [ %conv38.1, %cond.true30.1 ], [ 0, %cond.end40 ]
  %and.1 = and i32 %cond41.1, %and
  %exitcond1553.not.1 = icmp eq i64 %indvars.iv.next1550.1, %wide.trip.count1552
  br i1 %exitcond1553.not.1, label %for.cond47.preheader, label %for.body24, !llvm.loop !17

for.body50:                                       ; preds = %for.body50.preheader, %cond.end66
  %indvars.iv1554 = phi i64 [ %indvars.iv.next1555, %cond.end66 ], [ %indvars.iv1554.ph, %for.body50.preheader ]
  %left_avail.sroa.10.01465 = phi i32 [ %and69, %cond.end66 ], [ %left_avail.sroa.10.01465.ph, %for.body50.preheader ]
  %indvars.iv.next1555 = add nuw nsw i64 %indvars.iv1554, 1
  %arrayidx53 = getelementptr inbounds [17 x %struct.pix_pos], ptr %left, i64 0, i64 %indvars.iv.next1555
  %134 = load i32, ptr %arrayidx53, align 16
  %tobool55.not = icmp eq i32 %134, 0
  br i1 %tobool55.not, label %cond.end66, label %cond.true56

cond.true56:                                      ; preds = %for.body50
  %135 = load ptr, ptr %intra_block57, align 8
  %mb_addr61 = getelementptr inbounds i8, ptr %arrayidx53, i64 4
  %136 = load i32, ptr %mb_addr61, align 4
  %idxprom62 = sext i32 %136 to i64
  %arrayidx63 = getelementptr inbounds i8, ptr %135, i64 %idxprom62
  %137 = load i8, ptr %arrayidx63, align 1
  %conv64 = sext i8 %137 to i32
  br label %cond.end66

cond.end66:                                       ; preds = %for.body50, %cond.true56
  %cond67 = phi i32 [ %conv64, %cond.true56 ], [ 0, %for.body50 ]
  %and69 = and i32 %cond67, %left_avail.sroa.10.01465
  %138 = trunc nuw i64 %indvars.iv.next1555 to i32
  %cmp48 = icmp sgt i32 %5, %138
  br i1 %cmp48, label %for.body50, label %if.end, !llvm.loop !18

if.end:                                           ; preds = %cond.end66, %middle.block2204, %for.cond47.preheader, %if.then
  %left_avail.sroa.0.1 = phi i32 [ %12, %if.then ], [ %left_avail.sroa.0.0.lcssa, %for.cond47.preheader ], [ %left_avail.sroa.0.0.lcssa, %middle.block2204 ], [ %left_avail.sroa.0.0.lcssa, %cond.end66 ]
  %left_avail.sroa.10.1 = phi i32 [ %12, %if.then ], [ 1, %for.cond47.preheader ], [ %bin.rdx2234, %middle.block2204 ], [ %and69, %cond.end66 ]
  %up_avail.0 = phi i32 [ %11, %if.then ], [ %cond, %for.cond47.preheader ], [ %cond, %middle.block2204 ], [ %cond, %cond.end66 ]
  %imgUV = getelementptr inbounds i8, ptr %2, i64 136
  %139 = load ptr, ptr %imgUV, align 8
  %140 = load ptr, ptr %139, align 8
  %arrayidx88 = getelementptr inbounds i8, ptr %139, i64 8
  %141 = load ptr, ptr %arrayidx88, align 8
  %mb_pred = getelementptr inbounds i8, ptr %0, i64 1248
  %142 = load ptr, ptr %mb_pred, align 8
  %arrayidx89 = getelementptr inbounds i8, ptr %142, i64 8
  %143 = load ptr, ptr %arrayidx89, align 8
  %arrayidx91 = getelementptr inbounds i8, ptr %142, i64 16
  %144 = load ptr, ptr %arrayidx91, align 8
  %num_uv_blocks = getelementptr inbounds i8, ptr %1, i64 849100
  %145 = load i32, ptr %num_uv_blocks, align 4
  %cmp931471 = icmp sgt i32 %145, 0
  br i1 %cmp931471, label %for.cond96.preheader.lr.ph, label %for.end182

for.cond96.preheader.lr.ph:                       ; preds = %if.end
  %idxprom100 = sext i32 %sub to i64
  %arrayidx114 = getelementptr inbounds i8, ptr %1, i64 849064
  %arrayidx116 = getelementptr inbounds i8, ptr %1, i64 849068
  %146 = getelementptr inbounds i8, ptr %up, i64 8
  %tobool.not.i1241 = icmp eq i32 %up_avail.0, 0
  %tobool6.not.i1259 = icmp eq i32 %left_avail.sroa.10.1, 0
  %tobool1.i1126 = icmp ne i32 %up_avail.0, 0
  %or.cond53.i = and i1 %tobool6.not.i1259, %tobool1.i1126
  %tobool2.i = icmp eq i32 %left_avail.sroa.0.1, 0
  br label %for.cond96.preheader

for.cond96.preheader:                             ; preds = %for.cond96.preheader.lr.ph, %sw.epilog.3
  %indvars.iv1623 = phi i64 [ 0, %for.cond96.preheader.lr.ph ], [ %indvars.iv.next1624, %sw.epilog.3 ]
  %arrayidx105 = getelementptr inbounds [3 x [8 x [4 x i8]]], ptr @subblk_offset_y, i64 0, i64 %idxprom100, i64 %indvars.iv1623, i64 0
  %147 = load i8, ptr %arrayidx105, align 4
  %conv106 = zext i8 %147 to i32
  %arrayidx112 = getelementptr inbounds [3 x [8 x [4 x i8]]], ptr @subblk_offset_x, i64 0, i64 %idxprom100, i64 %indvars.iv1623, i64 0
  %148 = load i8, ptr %arrayidx112, align 4
  %149 = load i32, ptr %arrayidx114, align 4
  %150 = load i32, ptr %arrayidx116, align 4
  %arrayidx122 = getelementptr inbounds [3 x [4 x [4 x i32]]], ptr @intrapred_chroma_dc.block_pos, i64 0, i64 %idxprom100, i64 %indvars.iv1623, i64 0
  %151 = load i32, ptr %arrayidx122, align 16
  switch i32 %151, label %sw.epilog [
    i32 0, label %sw.bb123
    i32 1, label %sw.bb130
    i32 2, label %sw.bb137
    i32 3, label %sw.bb144
  ]

sw.bb123:                                         ; preds = %for.cond96.preheader
  %add126 = add nuw nsw i32 %conv106, 1
  %152 = load i64, ptr %146, align 4
  br i1 %tobool.not.i1241, label %if.end.thread.i, label %if.end.i

if.end.i:                                         ; preds = %sw.bb123
  %153 = zext i8 %148 to i64
  %idxprom.i = ashr i64 %152, 48
  %arrayidx.i = getelementptr inbounds ptr, ptr %140, i64 %idxprom.i
  %154 = load ptr, ptr %arrayidx.i, align 8
  %155 = getelementptr i16, ptr %154, i64 %153
  %sh.diff.i = lshr i64 %152, 16
  %tr.sh.diff.i = trunc i64 %sh.diff.i to i32
  %conv.i = ashr i32 %tr.sh.diff.i, 16
  %156 = sext i32 %conv.i to i64
  %arrayidx3.i = getelementptr i16, ptr %155, i64 %156
  %157 = load <4 x i16>, ptr %arrayidx3.i, align 2
  %158 = zext <4 x i16> %157 to <4 x i32>
  %159 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %158)
  br i1 %tobool2.i, label %if.then35.i, label %if.end28.i

if.end.thread.i:                                  ; preds = %sw.bb123
  br i1 %tobool2.i, label %sw.epilog, label %if.end28.i

if.end28.i:                                       ; preds = %if.end.thread.i, %if.end.i
  %s0.174.ph.i = phi i32 [ 0, %if.end.thread.i ], [ %159, %if.end.i ]
  %160 = zext nneg i32 %add126 to i64
  %arrayidx14.i = getelementptr inbounds %struct.pix_pos, ptr %left, i64 %160
  %pos_y15.i = getelementptr inbounds i8, ptr %arrayidx14.i, i64 14
  %161 = load i16, ptr %pos_y15.i, align 2
  %idxprom16.i = sext i16 %161 to i64
  %arrayidx17.i = getelementptr inbounds ptr, ptr %140, i64 %idxprom16.i
  %162 = load ptr, ptr %arrayidx17.i, align 8
  %pos_x20.i = getelementptr inbounds i8, ptr %arrayidx14.i, i64 12
  %163 = load i16, ptr %pos_x20.i, align 4
  %idxprom21.i = sext i16 %163 to i64
  %arrayidx22.i = getelementptr inbounds i16, ptr %162, i64 %idxprom21.i
  %164 = load i16, ptr %arrayidx22.i, align 2
  %conv23.i = zext i16 %164 to i32
  %pos_y15.1.i = getelementptr i8, ptr %arrayidx14.i, i64 30
  %165 = load i16, ptr %pos_y15.1.i, align 2
  %idxprom16.1.i = sext i16 %165 to i64
  %arrayidx17.1.i = getelementptr inbounds ptr, ptr %140, i64 %idxprom16.1.i
  %166 = load ptr, ptr %arrayidx17.1.i, align 8
  %pos_x20.1.i = getelementptr i8, ptr %arrayidx14.i, i64 28
  %167 = load i16, ptr %pos_x20.1.i, align 4
  %idxprom21.1.i = sext i16 %167 to i64
  %arrayidx22.1.i = getelementptr inbounds i16, ptr %166, i64 %idxprom21.1.i
  %168 = load i16, ptr %arrayidx22.1.i, align 2
  %conv23.1.i = zext i16 %168 to i32
  %add24.1.i = add nuw nsw i32 %conv23.1.i, %conv23.i
  %pos_y15.2.i = getelementptr i8, ptr %arrayidx14.i, i64 46
  %169 = load i16, ptr %pos_y15.2.i, align 2
  %idxprom16.2.i = sext i16 %169 to i64
  %arrayidx17.2.i = getelementptr inbounds ptr, ptr %140, i64 %idxprom16.2.i
  %170 = load ptr, ptr %arrayidx17.2.i, align 8
  %pos_x20.2.i = getelementptr i8, ptr %arrayidx14.i, i64 44
  %171 = load i16, ptr %pos_x20.2.i, align 4
  %idxprom21.2.i = sext i16 %171 to i64
  %arrayidx22.2.i = getelementptr inbounds i16, ptr %170, i64 %idxprom21.2.i
  %172 = load i16, ptr %arrayidx22.2.i, align 2
  %conv23.2.i = zext i16 %172 to i32
  %add24.2.i = add nuw nsw i32 %add24.1.i, %conv23.2.i
  %pos_y15.3.i = getelementptr i8, ptr %arrayidx14.i, i64 62
  %173 = load i16, ptr %pos_y15.3.i, align 2
  %idxprom16.3.i = sext i16 %173 to i64
  %arrayidx17.3.i = getelementptr inbounds ptr, ptr %140, i64 %idxprom16.3.i
  %174 = load ptr, ptr %arrayidx17.3.i, align 8
  %pos_x20.3.i = getelementptr i8, ptr %arrayidx14.i, i64 60
  %175 = load i16, ptr %pos_x20.3.i, align 4
  %idxprom21.3.i = sext i16 %175 to i64
  %arrayidx22.3.i = getelementptr inbounds i16, ptr %174, i64 %idxprom21.3.i
  %176 = load i16, ptr %arrayidx22.3.i, align 2
  %conv23.3.i = zext i16 %176 to i32
  %add24.3.i = add nuw nsw i32 %add24.2.i, %conv23.3.i
  br i1 %tobool.not.i1241, label %if.end.thread.i1052, label %if.then31.i

if.then31.i:                                      ; preds = %if.end28.i
  %add32.i = add nuw nsw i32 %s0.174.ph.i, 4
  %add33.i = add nuw nsw i32 %add32.i, %add24.3.i
  %shr.i = lshr i32 %add33.i, 3
  %.pre1654 = ashr i64 %152, 48
  %.pre1937 = zext i8 %148 to i64
  %.pre1939 = lshr i64 %152, 16
  %.pre1940 = trunc i64 %.pre1939 to i32
  %.pre1941 = ashr i32 %.pre1940, 16
  %.pre1942 = sext i32 %.pre1941 to i64
  br label %if.end.i988

if.then35.i:                                      ; preds = %if.end.i
  %add36.i = add nuw nsw i32 %159, 2
  %shr37.i = lshr i32 %add36.i, 2
  br label %if.end.i988

if.end.i988:                                      ; preds = %if.then35.i, %if.then31.i
  %.pre-phi1943 = phi i64 [ %156, %if.then35.i ], [ %.pre1942, %if.then31.i ]
  %.pre-phi1938 = phi i64 [ %153, %if.then35.i ], [ %.pre1937, %if.then31.i ]
  %idxprom.i989.pre-phi = phi i64 [ %idxprom.i, %if.then35.i ], [ %.pre1654, %if.then31.i ]
  %pred.0 = phi i32 [ %shr37.i, %if.then35.i ], [ %shr.i, %if.then31.i ]
  %arrayidx.i990 = getelementptr inbounds ptr, ptr %141, i64 %idxprom.i989.pre-phi
  %177 = load ptr, ptr %arrayidx.i990, align 8
  %178 = getelementptr i16, ptr %177, i64 %.pre-phi1938
  %arrayidx3.i994 = getelementptr i16, ptr %178, i64 %.pre-phi1943
  %179 = load i16, ptr %arrayidx3.i994, align 2
  %conv4.i995 = zext i16 %179 to i32
  %180 = getelementptr i8, ptr %178, i64 2
  %arrayidx3.1.i996 = getelementptr i16, ptr %180, i64 %.pre-phi1943
  %181 = load i16, ptr %arrayidx3.1.i996, align 2
  %conv4.1.i997 = zext i16 %181 to i32
  %add5.1.i998 = add nuw nsw i32 %conv4.1.i997, %conv4.i995
  %182 = getelementptr i8, ptr %178, i64 4
  %arrayidx3.2.i999 = getelementptr i16, ptr %182, i64 %.pre-phi1943
  %183 = load i16, ptr %arrayidx3.2.i999, align 2
  %conv4.2.i1000 = zext i16 %183 to i32
  %add5.2.i1001 = add nuw nsw i32 %add5.1.i998, %conv4.2.i1000
  %184 = getelementptr i8, ptr %178, i64 6
  %arrayidx3.3.i1002 = getelementptr i16, ptr %184, i64 %.pre-phi1943
  %185 = load i16, ptr %arrayidx3.3.i1002, align 2
  %conv4.3.i1003 = zext i16 %185 to i32
  %add5.3.i1004 = add nuw nsw i32 %add5.2.i1001, %conv4.3.i1003
  br i1 %tobool2.i, label %if.then35.i1049, label %if.end.i988.if.end28.i1006_crit_edge

if.end.i988.if.end28.i1006_crit_edge:             ; preds = %if.end.i988
  %.phi.trans.insert1655 = zext nneg i32 %add126 to i64
  %arrayidx14.i1008.phi.trans.insert = getelementptr inbounds %struct.pix_pos, ptr %left, i64 %.phi.trans.insert1655
  %pos_y15.i1009.phi.trans.insert = getelementptr inbounds i8, ptr %arrayidx14.i1008.phi.trans.insert, i64 14
  %.pre1656 = load i16, ptr %pos_y15.i1009.phi.trans.insert, align 2
  %pos_x20.i1012.phi.trans.insert = getelementptr inbounds i8, ptr %arrayidx14.i1008.phi.trans.insert, i64 12
  %.pre1659 = load i16, ptr %pos_x20.i1012.phi.trans.insert, align 4
  %pos_y15.1.i1016.phi.trans.insert = getelementptr i8, ptr %arrayidx14.i1008.phi.trans.insert, i64 30
  %.pre1662 = load i16, ptr %pos_y15.1.i1016.phi.trans.insert, align 2
  %pos_x20.1.i1019.phi.trans.insert = getelementptr i8, ptr %arrayidx14.i1008.phi.trans.insert, i64 28
  %.pre1665 = load i16, ptr %pos_x20.1.i1019.phi.trans.insert, align 4
  %pos_y15.2.i1024.phi.trans.insert = getelementptr i8, ptr %arrayidx14.i1008.phi.trans.insert, i64 46
  %.pre1668 = load i16, ptr %pos_y15.2.i1024.phi.trans.insert, align 2
  %pos_x20.2.i1027.phi.trans.insert = getelementptr i8, ptr %arrayidx14.i1008.phi.trans.insert, i64 44
  %.pre1671 = load i16, ptr %pos_x20.2.i1027.phi.trans.insert, align 4
  %pos_y15.3.i1032.phi.trans.insert = getelementptr i8, ptr %arrayidx14.i1008.phi.trans.insert, i64 62
  %.pre1674 = load i16, ptr %pos_y15.3.i1032.phi.trans.insert, align 2
  %pos_x20.3.i1035.phi.trans.insert = getelementptr i8, ptr %arrayidx14.i1008.phi.trans.insert, i64 60
  %.pre1677 = load i16, ptr %pos_x20.3.i1035.phi.trans.insert, align 4
  %.pre1833 = sext i16 %.pre1656 to i64
  %.pre1834 = sext i16 %.pre1659 to i64
  %.pre1835 = sext i16 %.pre1662 to i64
  %.pre1836 = sext i16 %.pre1665 to i64
  %.pre1837 = sext i16 %.pre1668 to i64
  %.pre1838 = sext i16 %.pre1671 to i64
  %.pre1839 = sext i16 %.pre1674 to i64
  %.pre1840 = sext i16 %.pre1677 to i64
  br label %if.end28.i1006

if.end.thread.i1052:                              ; preds = %if.end28.i
  %add41.i = add nuw nsw i32 %add24.3.i, 2
  %shr42.i = lshr i32 %add41.i, 2
  br label %if.end28.i1006

if.end28.i1006:                                   ; preds = %if.end.i988.if.end28.i1006_crit_edge, %if.end.thread.i1052
  %idxprom21.3.i1036.pre-phi = phi i64 [ %.pre1840, %if.end.i988.if.end28.i1006_crit_edge ], [ %idxprom21.3.i, %if.end.thread.i1052 ]
  %idxprom16.3.i1033.pre-phi = phi i64 [ %.pre1839, %if.end.i988.if.end28.i1006_crit_edge ], [ %idxprom16.3.i, %if.end.thread.i1052 ]
  %idxprom21.2.i1028.pre-phi = phi i64 [ %.pre1838, %if.end.i988.if.end28.i1006_crit_edge ], [ %idxprom21.2.i, %if.end.thread.i1052 ]
  %idxprom16.2.i1025.pre-phi = phi i64 [ %.pre1837, %if.end.i988.if.end28.i1006_crit_edge ], [ %idxprom16.2.i, %if.end.thread.i1052 ]
  %idxprom21.1.i1020.pre-phi = phi i64 [ %.pre1836, %if.end.i988.if.end28.i1006_crit_edge ], [ %idxprom21.1.i, %if.end.thread.i1052 ]
  %idxprom16.1.i1017.pre-phi = phi i64 [ %.pre1835, %if.end.i988.if.end28.i1006_crit_edge ], [ %idxprom16.1.i, %if.end.thread.i1052 ]
  %idxprom21.i1013.pre-phi = phi i64 [ %.pre1834, %if.end.i988.if.end28.i1006_crit_edge ], [ %idxprom21.i, %if.end.thread.i1052 ]
  %idxprom16.i1010.pre-phi = phi i64 [ %.pre1833, %if.end.i988.if.end28.i1006_crit_edge ], [ %idxprom16.i, %if.end.thread.i1052 ]
  %pred.01381 = phi i32 [ %pred.0, %if.end.i988.if.end28.i1006_crit_edge ], [ %shr42.i, %if.end.thread.i1052 ]
  %s0.174.ph.i1007 = phi i32 [ %add5.3.i1004, %if.end.i988.if.end28.i1006_crit_edge ], [ 0, %if.end.thread.i1052 ]
  %arrayidx17.i1011 = getelementptr inbounds ptr, ptr %141, i64 %idxprom16.i1010.pre-phi
  %186 = load ptr, ptr %arrayidx17.i1011, align 8
  %arrayidx22.i1014 = getelementptr inbounds i16, ptr %186, i64 %idxprom21.i1013.pre-phi
  %187 = load i16, ptr %arrayidx22.i1014, align 2
  %conv23.i1015 = zext i16 %187 to i32
  %arrayidx17.1.i1018 = getelementptr inbounds ptr, ptr %141, i64 %idxprom16.1.i1017.pre-phi
  %188 = load ptr, ptr %arrayidx17.1.i1018, align 8
  %arrayidx22.1.i1021 = getelementptr inbounds i16, ptr %188, i64 %idxprom21.1.i1020.pre-phi
  %189 = load i16, ptr %arrayidx22.1.i1021, align 2
  %conv23.1.i1022 = zext i16 %189 to i32
  %add24.1.i1023 = add nuw nsw i32 %conv23.1.i1022, %conv23.i1015
  %arrayidx17.2.i1026 = getelementptr inbounds ptr, ptr %141, i64 %idxprom16.2.i1025.pre-phi
  %190 = load ptr, ptr %arrayidx17.2.i1026, align 8
  %arrayidx22.2.i1029 = getelementptr inbounds i16, ptr %190, i64 %idxprom21.2.i1028.pre-phi
  %191 = load i16, ptr %arrayidx22.2.i1029, align 2
  %conv23.2.i1030 = zext i16 %191 to i32
  %add24.2.i1031 = add nuw nsw i32 %add24.1.i1023, %conv23.2.i1030
  %arrayidx17.3.i1034 = getelementptr inbounds ptr, ptr %141, i64 %idxprom16.3.i1033.pre-phi
  %192 = load ptr, ptr %arrayidx17.3.i1034, align 8
  %arrayidx22.3.i1037 = getelementptr inbounds i16, ptr %192, i64 %idxprom21.3.i1036.pre-phi
  %193 = load i16, ptr %arrayidx22.3.i1037, align 2
  %conv23.3.i1038 = zext i16 %193 to i32
  %add24.3.i1039 = add nuw nsw i32 %add24.2.i1031, %conv23.3.i1038
  br i1 %tobool.not.i1241, label %if.then40.i1046, label %if.then31.i1040

if.then31.i1040:                                  ; preds = %if.end28.i1006
  %add32.i1041 = add nuw nsw i32 %s0.174.ph.i1007, 4
  %add33.i1042 = add nuw nsw i32 %add32.i1041, %add24.3.i1039
  %shr.i1043 = lshr i32 %add33.i1042, 3
  br label %sw.epilog

if.then35.i1049:                                  ; preds = %if.end.i988
  %add36.i1050 = add nuw nsw i32 %add5.3.i1004, 2
  %shr37.i1051 = lshr i32 %add36.i1050, 2
  br label %sw.epilog

if.then40.i1046:                                  ; preds = %if.end28.i1006
  %add41.i1047 = add nuw nsw i32 %add24.3.i1039, 2
  %shr42.i1048 = lshr i32 %add41.i1047, 2
  br label %sw.epilog

sw.bb130:                                         ; preds = %for.cond96.preheader
  br i1 %tobool.not.i1241, label %if.else.i, label %for.end.i1110

if.else.i:                                        ; preds = %sw.bb130
  br i1 %tobool2.i, label %sw.epilog, label %for.end32.i1072

for.end.i1110:                                    ; preds = %sw.bb130
  %194 = load i64, ptr %146, align 4
  %idxprom.i1064 = ashr i64 %194, 48
  %arrayidx.i1065 = getelementptr inbounds ptr, ptr %140, i64 %idxprom.i1064
  %195 = load ptr, ptr %arrayidx.i1065, align 8
  %196 = zext i8 %148 to i64
  %197 = getelementptr i16, ptr %195, i64 %196
  %sh.diff.i1066 = lshr i64 %194, 16
  %tr.sh.diff.i1067 = trunc i64 %sh.diff.i1066 to i32
  %conv.i1068 = ashr i32 %tr.sh.diff.i1067, 16
  %198 = sext i32 %conv.i1068 to i64
  %arrayidx7.i = getelementptr i16, ptr %197, i64 %198
  %199 = load <4 x i16>, ptr %arrayidx7.i, align 2
  %200 = zext <4 x i16> %199 to <4 x i32>
  %201 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %200)
  %arrayidx.i1112 = getelementptr inbounds ptr, ptr %141, i64 %idxprom.i1064
  %202 = load ptr, ptr %arrayidx.i1112, align 8
  %203 = getelementptr i16, ptr %202, i64 %196
  %arrayidx7.i1116 = getelementptr i16, ptr %203, i64 %198
  %204 = load i16, ptr %arrayidx7.i1116, align 2
  %conv8.i1117 = zext i16 %204 to i32
  %205 = getelementptr i8, ptr %203, i64 2
  %arrayidx7.1.i1118 = getelementptr i16, ptr %205, i64 %198
  %206 = load i16, ptr %arrayidx7.1.i1118, align 2
  %conv8.1.i1119 = zext i16 %206 to i32
  %add9.1.i1120 = add nuw nsw i32 %conv8.1.i1119, %conv8.i1117
  %207 = getelementptr i8, ptr %203, i64 4
  %arrayidx7.2.i1121 = getelementptr i16, ptr %207, i64 %198
  %208 = load i16, ptr %arrayidx7.2.i1121, align 2
  %conv8.2.i1122 = zext i16 %208 to i32
  %add9.2.i1123 = add nuw nsw i32 %add9.1.i1120, %conv8.2.i1122
  %209 = getelementptr i8, ptr %203, i64 6
  %arrayidx7.3.i1124 = getelementptr i16, ptr %209, i64 %198
  br label %if.end35.sink.split.i1103

for.end32.i1072:                                  ; preds = %if.else.i
  %210 = zext i8 %147 to i64
  %211 = getelementptr inbounds %struct.pix_pos, ptr %left, i64 %210
  %pos_y20.i = getelementptr inbounds i8, ptr %211, i64 30
  %212 = load i16, ptr %pos_y20.i, align 2
  %idxprom21.i1055 = sext i16 %212 to i64
  %arrayidx22.i1056 = getelementptr inbounds ptr, ptr %140, i64 %idxprom21.i1055
  %213 = load ptr, ptr %arrayidx22.i1056, align 8
  %pos_x25.i = getelementptr inbounds i8, ptr %211, i64 28
  %214 = load i16, ptr %pos_x25.i, align 4
  %idxprom26.i = sext i16 %214 to i64
  %arrayidx27.i = getelementptr inbounds i16, ptr %213, i64 %idxprom26.i
  %215 = load i16, ptr %arrayidx27.i, align 2
  %conv28.i = zext i16 %215 to i32
  %pos_y20.1.i = getelementptr i8, ptr %211, i64 46
  %216 = load i16, ptr %pos_y20.1.i, align 2
  %idxprom21.1.i1057 = sext i16 %216 to i64
  %arrayidx22.1.i1058 = getelementptr inbounds ptr, ptr %140, i64 %idxprom21.1.i1057
  %217 = load ptr, ptr %arrayidx22.1.i1058, align 8
  %pos_x25.1.i = getelementptr i8, ptr %211, i64 44
  %218 = load i16, ptr %pos_x25.1.i, align 4
  %idxprom26.1.i = sext i16 %218 to i64
  %arrayidx27.1.i = getelementptr inbounds i16, ptr %217, i64 %idxprom26.1.i
  %219 = load i16, ptr %arrayidx27.1.i, align 2
  %conv28.1.i = zext i16 %219 to i32
  %add29.1.i = add nuw nsw i32 %conv28.1.i, %conv28.i
  %pos_y20.2.i = getelementptr i8, ptr %211, i64 62
  %220 = load i16, ptr %pos_y20.2.i, align 2
  %idxprom21.2.i1059 = sext i16 %220 to i64
  %arrayidx22.2.i1060 = getelementptr inbounds ptr, ptr %140, i64 %idxprom21.2.i1059
  %221 = load ptr, ptr %arrayidx22.2.i1060, align 8
  %pos_x25.2.i = getelementptr i8, ptr %211, i64 60
  %222 = load i16, ptr %pos_x25.2.i, align 4
  %idxprom26.2.i = sext i16 %222 to i64
  %arrayidx27.2.i = getelementptr inbounds i16, ptr %221, i64 %idxprom26.2.i
  %223 = load i16, ptr %arrayidx27.2.i, align 2
  %conv28.2.i = zext i16 %223 to i32
  %add29.2.i = add nuw nsw i32 %add29.1.i, %conv28.2.i
  %pos_y20.3.i = getelementptr i8, ptr %211, i64 78
  %224 = load i16, ptr %pos_y20.3.i, align 2
  %idxprom21.3.i1061 = sext i16 %224 to i64
  %arrayidx22.3.i1062 = getelementptr inbounds ptr, ptr %140, i64 %idxprom21.3.i1061
  %225 = load ptr, ptr %arrayidx22.3.i1062, align 8
  %pos_x25.3.i = getelementptr i8, ptr %211, i64 76
  %226 = load i16, ptr %pos_x25.3.i, align 4
  %idxprom26.3.i = sext i16 %226 to i64
  %arrayidx27.3.i = getelementptr inbounds i16, ptr %225, i64 %idxprom26.3.i
  %227 = load i16, ptr %arrayidx27.3.i, align 2
  %conv28.3.i = zext i16 %227 to i32
  %add29.3.i = add nuw nsw i32 %add29.2.i, %conv28.3.i
  %arrayidx22.i1076 = getelementptr inbounds ptr, ptr %141, i64 %idxprom21.i1055
  %228 = load ptr, ptr %arrayidx22.i1076, align 8
  %arrayidx27.i1079 = getelementptr inbounds i16, ptr %228, i64 %idxprom26.i
  %229 = load i16, ptr %arrayidx27.i1079, align 2
  %conv28.i1080 = zext i16 %229 to i32
  %arrayidx22.1.i1083 = getelementptr inbounds ptr, ptr %141, i64 %idxprom21.1.i1057
  %230 = load ptr, ptr %arrayidx22.1.i1083, align 8
  %arrayidx27.1.i1086 = getelementptr inbounds i16, ptr %230, i64 %idxprom26.1.i
  %231 = load i16, ptr %arrayidx27.1.i1086, align 2
  %conv28.1.i1087 = zext i16 %231 to i32
  %add29.1.i1088 = add nuw nsw i32 %conv28.1.i1087, %conv28.i1080
  %arrayidx22.2.i1091 = getelementptr inbounds ptr, ptr %141, i64 %idxprom21.2.i1059
  %232 = load ptr, ptr %arrayidx22.2.i1091, align 8
  %arrayidx27.2.i1094 = getelementptr inbounds i16, ptr %232, i64 %idxprom26.2.i
  %233 = load i16, ptr %arrayidx27.2.i1094, align 2
  %conv28.2.i1095 = zext i16 %233 to i32
  %add29.2.i1096 = add nuw nsw i32 %add29.1.i1088, %conv28.2.i1095
  %arrayidx22.3.i1099 = getelementptr inbounds ptr, ptr %141, i64 %idxprom21.3.i1061
  %234 = load ptr, ptr %arrayidx22.3.i1099, align 8
  %arrayidx27.3.i1102 = getelementptr inbounds i16, ptr %234, i64 %idxprom26.3.i
  br label %if.end35.sink.split.i1103

if.end35.sink.split.i1103:                        ; preds = %for.end32.i1072, %for.end.i1110
  %pred.11386.in.in = phi i32 [ %add29.3.i, %for.end32.i1072 ], [ %201, %for.end.i1110 ]
  %arrayidx27.3.sink.i1104 = phi ptr [ %arrayidx27.3.i1102, %for.end32.i1072 ], [ %arrayidx7.3.i1124, %for.end.i1110 ]
  %add29.2.sink.i1105 = phi i32 [ %add29.2.i1096, %for.end32.i1072 ], [ %add9.2.i1123, %for.end.i1110 ]
  %pred.11386.in = add nuw nsw i32 %pred.11386.in.in, 2
  %pred.11386 = lshr i32 %pred.11386.in, 2
  %235 = load i16, ptr %arrayidx27.3.sink.i1104, align 2
  %conv28.3.i1106 = zext i16 %235 to i32
  %add29.3.i1107 = add nuw nsw i32 %add29.2.sink.i1105, 2
  %add33.i1108 = add nuw nsw i32 %add29.3.i1107, %conv28.3.i1106
  %shr34.i1109 = lshr i32 %add33.i1108, 2
  br label %sw.epilog

sw.bb137:                                         ; preds = %for.cond96.preheader
  br i1 %or.cond53.i, label %for.end.i1225, label %if.else.i1128

if.else.i1128:                                    ; preds = %sw.bb137
  br i1 %tobool6.not.i1259, label %sw.epilog, label %for.end32.i1187

for.end.i1225:                                    ; preds = %sw.bb137
  %236 = load i64, ptr %146, align 4
  %idxprom.i1168 = ashr i64 %236, 48
  %arrayidx.i1169 = getelementptr inbounds ptr, ptr %140, i64 %idxprom.i1168
  %237 = load ptr, ptr %arrayidx.i1169, align 8
  %238 = zext i8 %148 to i64
  %239 = getelementptr i16, ptr %237, i64 %238
  %sh.diff.i1170 = lshr i64 %236, 16
  %tr.sh.diff.i1171 = trunc i64 %sh.diff.i1170 to i32
  %conv.i1172 = ashr i32 %tr.sh.diff.i1171, 16
  %240 = sext i32 %conv.i1172 to i64
  %arrayidx7.i1173 = getelementptr i16, ptr %239, i64 %240
  %241 = load <4 x i16>, ptr %arrayidx7.i1173, align 2
  %242 = zext <4 x i16> %241 to <4 x i32>
  %243 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %242)
  %arrayidx.i1227 = getelementptr inbounds ptr, ptr %141, i64 %idxprom.i1168
  %244 = load ptr, ptr %arrayidx.i1227, align 8
  %245 = getelementptr i16, ptr %244, i64 %238
  %arrayidx7.i1231 = getelementptr i16, ptr %245, i64 %240
  %246 = load i16, ptr %arrayidx7.i1231, align 2
  %conv8.i1232 = zext i16 %246 to i32
  %247 = getelementptr i8, ptr %245, i64 2
  %arrayidx7.1.i1233 = getelementptr i16, ptr %247, i64 %240
  %248 = load i16, ptr %arrayidx7.1.i1233, align 2
  %conv8.1.i1234 = zext i16 %248 to i32
  %add9.1.i1235 = add nuw nsw i32 %conv8.1.i1234, %conv8.i1232
  %249 = getelementptr i8, ptr %245, i64 4
  %arrayidx7.2.i1236 = getelementptr i16, ptr %249, i64 %240
  %250 = load i16, ptr %arrayidx7.2.i1236, align 2
  %conv8.2.i1237 = zext i16 %250 to i32
  %add9.2.i1238 = add nuw nsw i32 %add9.1.i1235, %conv8.2.i1237
  %251 = getelementptr i8, ptr %245, i64 6
  %arrayidx7.3.i1239 = getelementptr i16, ptr %251, i64 %240
  br label %if.end35.sink.split.i1218

for.end32.i1187:                                  ; preds = %if.else.i1128
  %252 = zext i8 %147 to i64
  %253 = getelementptr inbounds %struct.pix_pos, ptr %left, i64 %252
  %pos_y20.i1131 = getelementptr inbounds i8, ptr %253, i64 30
  %254 = load i16, ptr %pos_y20.i1131, align 2
  %idxprom21.i1132 = sext i16 %254 to i64
  %arrayidx22.i1133 = getelementptr inbounds ptr, ptr %140, i64 %idxprom21.i1132
  %255 = load ptr, ptr %arrayidx22.i1133, align 8
  %pos_x25.i1134 = getelementptr inbounds i8, ptr %253, i64 28
  %256 = load i16, ptr %pos_x25.i1134, align 4
  %idxprom26.i1135 = sext i16 %256 to i64
  %arrayidx27.i1136 = getelementptr inbounds i16, ptr %255, i64 %idxprom26.i1135
  %257 = load i16, ptr %arrayidx27.i1136, align 2
  %conv28.i1137 = zext i16 %257 to i32
  %pos_y20.1.i1138 = getelementptr i8, ptr %253, i64 46
  %258 = load i16, ptr %pos_y20.1.i1138, align 2
  %idxprom21.1.i1139 = sext i16 %258 to i64
  %arrayidx22.1.i1140 = getelementptr inbounds ptr, ptr %140, i64 %idxprom21.1.i1139
  %259 = load ptr, ptr %arrayidx22.1.i1140, align 8
  %pos_x25.1.i1141 = getelementptr i8, ptr %253, i64 44
  %260 = load i16, ptr %pos_x25.1.i1141, align 4
  %idxprom26.1.i1142 = sext i16 %260 to i64
  %arrayidx27.1.i1143 = getelementptr inbounds i16, ptr %259, i64 %idxprom26.1.i1142
  %261 = load i16, ptr %arrayidx27.1.i1143, align 2
  %conv28.1.i1144 = zext i16 %261 to i32
  %add29.1.i1145 = add nuw nsw i32 %conv28.1.i1144, %conv28.i1137
  %pos_y20.2.i1146 = getelementptr i8, ptr %253, i64 62
  %262 = load i16, ptr %pos_y20.2.i1146, align 2
  %idxprom21.2.i1147 = sext i16 %262 to i64
  %arrayidx22.2.i1148 = getelementptr inbounds ptr, ptr %140, i64 %idxprom21.2.i1147
  %263 = load ptr, ptr %arrayidx22.2.i1148, align 8
  %pos_x25.2.i1149 = getelementptr i8, ptr %253, i64 60
  %264 = load i16, ptr %pos_x25.2.i1149, align 4
  %idxprom26.2.i1150 = sext i16 %264 to i64
  %arrayidx27.2.i1151 = getelementptr inbounds i16, ptr %263, i64 %idxprom26.2.i1150
  %265 = load i16, ptr %arrayidx27.2.i1151, align 2
  %conv28.2.i1152 = zext i16 %265 to i32
  %add29.2.i1153 = add nuw nsw i32 %add29.1.i1145, %conv28.2.i1152
  %pos_y20.3.i1154 = getelementptr i8, ptr %253, i64 78
  %266 = load i16, ptr %pos_y20.3.i1154, align 2
  %idxprom21.3.i1155 = sext i16 %266 to i64
  %arrayidx22.3.i1156 = getelementptr inbounds ptr, ptr %140, i64 %idxprom21.3.i1155
  %267 = load ptr, ptr %arrayidx22.3.i1156, align 8
  %pos_x25.3.i1157 = getelementptr i8, ptr %253, i64 76
  %268 = load i16, ptr %pos_x25.3.i1157, align 4
  %idxprom26.3.i1158 = sext i16 %268 to i64
  %arrayidx27.3.i1159 = getelementptr inbounds i16, ptr %267, i64 %idxprom26.3.i1158
  %269 = load i16, ptr %arrayidx27.3.i1159, align 2
  %conv28.3.i1163 = zext i16 %269 to i32
  %add29.3.i1164 = add nuw nsw i32 %add29.2.i1153, %conv28.3.i1163
  %arrayidx22.i1191 = getelementptr inbounds ptr, ptr %141, i64 %idxprom21.i1132
  %270 = load ptr, ptr %arrayidx22.i1191, align 8
  %arrayidx27.i1194 = getelementptr inbounds i16, ptr %270, i64 %idxprom26.i1135
  %271 = load i16, ptr %arrayidx27.i1194, align 2
  %conv28.i1195 = zext i16 %271 to i32
  %arrayidx22.1.i1198 = getelementptr inbounds ptr, ptr %141, i64 %idxprom21.1.i1139
  %272 = load ptr, ptr %arrayidx22.1.i1198, align 8
  %arrayidx27.1.i1201 = getelementptr inbounds i16, ptr %272, i64 %idxprom26.1.i1142
  %273 = load i16, ptr %arrayidx27.1.i1201, align 2
  %conv28.1.i1202 = zext i16 %273 to i32
  %add29.1.i1203 = add nuw nsw i32 %conv28.1.i1202, %conv28.i1195
  %arrayidx22.2.i1206 = getelementptr inbounds ptr, ptr %141, i64 %idxprom21.2.i1147
  %274 = load ptr, ptr %arrayidx22.2.i1206, align 8
  %arrayidx27.2.i1209 = getelementptr inbounds i16, ptr %274, i64 %idxprom26.2.i1150
  %275 = load i16, ptr %arrayidx27.2.i1209, align 2
  %conv28.2.i1210 = zext i16 %275 to i32
  %add29.2.i1211 = add nuw nsw i32 %add29.1.i1203, %conv28.2.i1210
  %arrayidx22.3.i1214 = getelementptr inbounds ptr, ptr %141, i64 %idxprom21.3.i1155
  %276 = load ptr, ptr %arrayidx22.3.i1214, align 8
  %arrayidx27.3.i1217 = getelementptr inbounds i16, ptr %276, i64 %idxprom26.3.i1158
  br label %if.end35.sink.split.i1218

if.end35.sink.split.i1218:                        ; preds = %for.end32.i1187, %for.end.i1225
  %pred.21399.in.in = phi i32 [ %add29.3.i1164, %for.end32.i1187 ], [ %243, %for.end.i1225 ]
  %arrayidx27.3.sink.i1219 = phi ptr [ %arrayidx27.3.i1217, %for.end32.i1187 ], [ %arrayidx7.3.i1239, %for.end.i1225 ]
  %add29.2.sink.i1220 = phi i32 [ %add29.2.i1211, %for.end32.i1187 ], [ %add9.2.i1238, %for.end.i1225 ]
  %pred.21399.in = add nuw nsw i32 %pred.21399.in.in, 2
  %pred.21399 = lshr i32 %pred.21399.in, 2
  %277 = load i16, ptr %arrayidx27.3.sink.i1219, align 2
  %conv28.3.i1221 = zext i16 %277 to i32
  %add29.3.i1222 = add nuw nsw i32 %add29.2.sink.i1220, 2
  %add33.i1223 = add nuw nsw i32 %add29.3.i1222, %conv28.3.i1221
  %shr34.i1224 = lshr i32 %add33.i1223, 2
  br label %sw.epilog

sw.bb144:                                         ; preds = %for.cond96.preheader
  %add147 = add nuw nsw i32 %conv106, 1
  %278 = load i64, ptr %146, align 4
  br i1 %tobool.not.i1241, label %if.end.thread.i1306, label %if.end.i1242

if.end.i1242:                                     ; preds = %sw.bb144
  %279 = zext i8 %148 to i64
  %idxprom.i1243 = ashr i64 %278, 48
  %arrayidx.i1244 = getelementptr inbounds ptr, ptr %140, i64 %idxprom.i1243
  %280 = load ptr, ptr %arrayidx.i1244, align 8
  %281 = getelementptr i16, ptr %280, i64 %279
  %sh.diff.i1245 = lshr i64 %278, 16
  %tr.sh.diff.i1246 = trunc i64 %sh.diff.i1245 to i32
  %conv.i1247 = ashr i32 %tr.sh.diff.i1246, 16
  %282 = sext i32 %conv.i1247 to i64
  %arrayidx3.i1248 = getelementptr i16, ptr %281, i64 %282
  %283 = load <4 x i16>, ptr %arrayidx3.i1248, align 2
  %284 = zext <4 x i16> %283 to <4 x i32>
  %285 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %284)
  br i1 %tobool6.not.i1259, label %if.then35.i1303, label %if.end28.i1260

if.end.thread.i1306:                              ; preds = %sw.bb144
  br i1 %tobool6.not.i1259, label %sw.epilog, label %if.end28.i1260

if.end28.i1260:                                   ; preds = %if.end.thread.i1306, %if.end.i1242
  %s0.174.ph.i1261 = phi i32 [ 0, %if.end.thread.i1306 ], [ %285, %if.end.i1242 ]
  %286 = zext nneg i32 %add147 to i64
  %arrayidx14.i1262 = getelementptr inbounds %struct.pix_pos, ptr %left, i64 %286
  %pos_y15.i1263 = getelementptr inbounds i8, ptr %arrayidx14.i1262, i64 14
  %287 = load i16, ptr %pos_y15.i1263, align 2
  %idxprom16.i1264 = sext i16 %287 to i64
  %arrayidx17.i1265 = getelementptr inbounds ptr, ptr %140, i64 %idxprom16.i1264
  %288 = load ptr, ptr %arrayidx17.i1265, align 8
  %pos_x20.i1266 = getelementptr inbounds i8, ptr %arrayidx14.i1262, i64 12
  %289 = load i16, ptr %pos_x20.i1266, align 4
  %idxprom21.i1267 = sext i16 %289 to i64
  %arrayidx22.i1268 = getelementptr inbounds i16, ptr %288, i64 %idxprom21.i1267
  %290 = load i16, ptr %arrayidx22.i1268, align 2
  %conv23.i1269 = zext i16 %290 to i32
  %pos_y15.1.i1270 = getelementptr i8, ptr %arrayidx14.i1262, i64 30
  %291 = load i16, ptr %pos_y15.1.i1270, align 2
  %idxprom16.1.i1271 = sext i16 %291 to i64
  %arrayidx17.1.i1272 = getelementptr inbounds ptr, ptr %140, i64 %idxprom16.1.i1271
  %292 = load ptr, ptr %arrayidx17.1.i1272, align 8
  %pos_x20.1.i1273 = getelementptr i8, ptr %arrayidx14.i1262, i64 28
  %293 = load i16, ptr %pos_x20.1.i1273, align 4
  %idxprom21.1.i1274 = sext i16 %293 to i64
  %arrayidx22.1.i1275 = getelementptr inbounds i16, ptr %292, i64 %idxprom21.1.i1274
  %294 = load i16, ptr %arrayidx22.1.i1275, align 2
  %conv23.1.i1276 = zext i16 %294 to i32
  %add24.1.i1277 = add nuw nsw i32 %conv23.1.i1276, %conv23.i1269
  %pos_y15.2.i1278 = getelementptr i8, ptr %arrayidx14.i1262, i64 46
  %295 = load i16, ptr %pos_y15.2.i1278, align 2
  %idxprom16.2.i1279 = sext i16 %295 to i64
  %arrayidx17.2.i1280 = getelementptr inbounds ptr, ptr %140, i64 %idxprom16.2.i1279
  %296 = load ptr, ptr %arrayidx17.2.i1280, align 8
  %pos_x20.2.i1281 = getelementptr i8, ptr %arrayidx14.i1262, i64 44
  %297 = load i16, ptr %pos_x20.2.i1281, align 4
  %idxprom21.2.i1282 = sext i16 %297 to i64
  %arrayidx22.2.i1283 = getelementptr inbounds i16, ptr %296, i64 %idxprom21.2.i1282
  %298 = load i16, ptr %arrayidx22.2.i1283, align 2
  %conv23.2.i1284 = zext i16 %298 to i32
  %add24.2.i1285 = add nuw nsw i32 %add24.1.i1277, %conv23.2.i1284
  %pos_y15.3.i1286 = getelementptr i8, ptr %arrayidx14.i1262, i64 62
  %299 = load i16, ptr %pos_y15.3.i1286, align 2
  %idxprom16.3.i1287 = sext i16 %299 to i64
  %arrayidx17.3.i1288 = getelementptr inbounds ptr, ptr %140, i64 %idxprom16.3.i1287
  %300 = load ptr, ptr %arrayidx17.3.i1288, align 8
  %pos_x20.3.i1289 = getelementptr i8, ptr %arrayidx14.i1262, i64 60
  %301 = load i16, ptr %pos_x20.3.i1289, align 4
  %idxprom21.3.i1290 = sext i16 %301 to i64
  %arrayidx22.3.i1291 = getelementptr inbounds i16, ptr %300, i64 %idxprom21.3.i1290
  %302 = load i16, ptr %arrayidx22.3.i1291, align 2
  %conv23.3.i1292 = zext i16 %302 to i32
  %add24.3.i1293 = add nuw nsw i32 %add24.2.i1285, %conv23.3.i1292
  br i1 %tobool.not.i1241, label %if.end.thread.i1374, label %if.then31.i1294

if.then31.i1294:                                  ; preds = %if.end28.i1260
  %add32.i1295 = add nuw nsw i32 %s0.174.ph.i1261, 4
  %add33.i1296 = add nuw nsw i32 %add32.i1295, %add24.3.i1293
  %shr.i1297 = lshr i32 %add33.i1296, 3
  %.pre1631 = ashr i64 %278, 48
  %.pre1945 = zext i8 %148 to i64
  %.pre1947 = lshr i64 %278, 16
  %.pre1948 = trunc i64 %.pre1947 to i32
  %.pre1949 = ashr i32 %.pre1948, 16
  %.pre1950 = sext i32 %.pre1949 to i64
  br label %if.end.i1310

if.then35.i1303:                                  ; preds = %if.end.i1242
  %add36.i1304 = add nuw nsw i32 %285, 2
  %shr37.i1305 = lshr i32 %add36.i1304, 2
  br label %if.end.i1310

if.end.i1310:                                     ; preds = %if.then35.i1303, %if.then31.i1294
  %.pre-phi1951 = phi i64 [ %282, %if.then35.i1303 ], [ %.pre1950, %if.then31.i1294 ]
  %.pre-phi1946 = phi i64 [ %279, %if.then35.i1303 ], [ %.pre1945, %if.then31.i1294 ]
  %idxprom.i1311.pre-phi = phi i64 [ %idxprom.i1243, %if.then35.i1303 ], [ %.pre1631, %if.then31.i1294 ]
  %pred.3 = phi i32 [ %shr37.i1305, %if.then35.i1303 ], [ %shr.i1297, %if.then31.i1294 ]
  %arrayidx.i1312 = getelementptr inbounds ptr, ptr %141, i64 %idxprom.i1311.pre-phi
  %303 = load ptr, ptr %arrayidx.i1312, align 8
  %304 = getelementptr i16, ptr %303, i64 %.pre-phi1946
  %arrayidx3.i1316 = getelementptr i16, ptr %304, i64 %.pre-phi1951
  %305 = load i16, ptr %arrayidx3.i1316, align 2
  %conv4.i1317 = zext i16 %305 to i32
  %306 = getelementptr i8, ptr %304, i64 2
  %arrayidx3.1.i1318 = getelementptr i16, ptr %306, i64 %.pre-phi1951
  %307 = load i16, ptr %arrayidx3.1.i1318, align 2
  %conv4.1.i1319 = zext i16 %307 to i32
  %add5.1.i1320 = add nuw nsw i32 %conv4.1.i1319, %conv4.i1317
  %308 = getelementptr i8, ptr %304, i64 4
  %arrayidx3.2.i1321 = getelementptr i16, ptr %308, i64 %.pre-phi1951
  %309 = load i16, ptr %arrayidx3.2.i1321, align 2
  %conv4.2.i1322 = zext i16 %309 to i32
  %add5.2.i1323 = add nuw nsw i32 %add5.1.i1320, %conv4.2.i1322
  %310 = getelementptr i8, ptr %304, i64 6
  %arrayidx3.3.i1324 = getelementptr i16, ptr %310, i64 %.pre-phi1951
  %311 = load i16, ptr %arrayidx3.3.i1324, align 2
  %conv4.3.i1325 = zext i16 %311 to i32
  %add5.3.i1326 = add nuw nsw i32 %add5.2.i1323, %conv4.3.i1325
  br i1 %tobool6.not.i1259, label %if.then35.i1371, label %if.end.i1310.if.end28.i1328_crit_edge

if.end.i1310.if.end28.i1328_crit_edge:            ; preds = %if.end.i1310
  %.phi.trans.insert = zext nneg i32 %add147 to i64
  %arrayidx14.i1330.phi.trans.insert = getelementptr inbounds %struct.pix_pos, ptr %left, i64 %.phi.trans.insert
  %pos_y15.i1331.phi.trans.insert = getelementptr inbounds i8, ptr %arrayidx14.i1330.phi.trans.insert, i64 14
  %.pre1632 = load i16, ptr %pos_y15.i1331.phi.trans.insert, align 2
  %pos_x20.i1334.phi.trans.insert = getelementptr inbounds i8, ptr %arrayidx14.i1330.phi.trans.insert, i64 12
  %.pre1635 = load i16, ptr %pos_x20.i1334.phi.trans.insert, align 4
  %pos_y15.1.i1338.phi.trans.insert = getelementptr i8, ptr %arrayidx14.i1330.phi.trans.insert, i64 30
  %.pre1638 = load i16, ptr %pos_y15.1.i1338.phi.trans.insert, align 2
  %pos_x20.1.i1341.phi.trans.insert = getelementptr i8, ptr %arrayidx14.i1330.phi.trans.insert, i64 28
  %.pre1641 = load i16, ptr %pos_x20.1.i1341.phi.trans.insert, align 4
  %pos_y15.2.i1346.phi.trans.insert = getelementptr i8, ptr %arrayidx14.i1330.phi.trans.insert, i64 46
  %.pre1644 = load i16, ptr %pos_y15.2.i1346.phi.trans.insert, align 2
  %pos_x20.2.i1349.phi.trans.insert = getelementptr i8, ptr %arrayidx14.i1330.phi.trans.insert, i64 44
  %.pre1647 = load i16, ptr %pos_x20.2.i1349.phi.trans.insert, align 4
  %pos_y15.3.i1354.phi.trans.insert = getelementptr i8, ptr %arrayidx14.i1330.phi.trans.insert, i64 62
  %.pre1650 = load i16, ptr %pos_y15.3.i1354.phi.trans.insert, align 2
  %pos_x20.3.i1357.phi.trans.insert = getelementptr i8, ptr %arrayidx14.i1330.phi.trans.insert, i64 60
  %.pre1653 = load i16, ptr %pos_x20.3.i1357.phi.trans.insert, align 4
  %.pre1825 = sext i16 %.pre1632 to i64
  %.pre1826 = sext i16 %.pre1635 to i64
  %.pre1827 = sext i16 %.pre1638 to i64
  %.pre1828 = sext i16 %.pre1641 to i64
  %.pre1829 = sext i16 %.pre1644 to i64
  %.pre1830 = sext i16 %.pre1647 to i64
  %.pre1831 = sext i16 %.pre1650 to i64
  %.pre1832 = sext i16 %.pre1653 to i64
  br label %if.end28.i1328

if.end.thread.i1374:                              ; preds = %if.end28.i1260
  %add41.i1301 = add nuw nsw i32 %add24.3.i1293, 2
  %shr42.i1302 = lshr i32 %add41.i1301, 2
  br label %if.end28.i1328

if.end28.i1328:                                   ; preds = %if.end.i1310.if.end28.i1328_crit_edge, %if.end.thread.i1374
  %idxprom21.3.i1358.pre-phi = phi i64 [ %.pre1832, %if.end.i1310.if.end28.i1328_crit_edge ], [ %idxprom21.3.i1290, %if.end.thread.i1374 ]
  %idxprom16.3.i1355.pre-phi = phi i64 [ %.pre1831, %if.end.i1310.if.end28.i1328_crit_edge ], [ %idxprom16.3.i1287, %if.end.thread.i1374 ]
  %idxprom21.2.i1350.pre-phi = phi i64 [ %.pre1830, %if.end.i1310.if.end28.i1328_crit_edge ], [ %idxprom21.2.i1282, %if.end.thread.i1374 ]
  %idxprom16.2.i1347.pre-phi = phi i64 [ %.pre1829, %if.end.i1310.if.end28.i1328_crit_edge ], [ %idxprom16.2.i1279, %if.end.thread.i1374 ]
  %idxprom21.1.i1342.pre-phi = phi i64 [ %.pre1828, %if.end.i1310.if.end28.i1328_crit_edge ], [ %idxprom21.1.i1274, %if.end.thread.i1374 ]
  %idxprom16.1.i1339.pre-phi = phi i64 [ %.pre1827, %if.end.i1310.if.end28.i1328_crit_edge ], [ %idxprom16.1.i1271, %if.end.thread.i1374 ]
  %idxprom21.i1335.pre-phi = phi i64 [ %.pre1826, %if.end.i1310.if.end28.i1328_crit_edge ], [ %idxprom21.i1267, %if.end.thread.i1374 ]
  %idxprom16.i1332.pre-phi = phi i64 [ %.pre1825, %if.end.i1310.if.end28.i1328_crit_edge ], [ %idxprom16.i1264, %if.end.thread.i1374 ]
  %pred.31414 = phi i32 [ %pred.3, %if.end.i1310.if.end28.i1328_crit_edge ], [ %shr42.i1302, %if.end.thread.i1374 ]
  %s0.174.ph.i1329 = phi i32 [ %add5.3.i1326, %if.end.i1310.if.end28.i1328_crit_edge ], [ 0, %if.end.thread.i1374 ]
  %arrayidx17.i1333 = getelementptr inbounds ptr, ptr %141, i64 %idxprom16.i1332.pre-phi
  %312 = load ptr, ptr %arrayidx17.i1333, align 8
  %arrayidx22.i1336 = getelementptr inbounds i16, ptr %312, i64 %idxprom21.i1335.pre-phi
  %313 = load i16, ptr %arrayidx22.i1336, align 2
  %conv23.i1337 = zext i16 %313 to i32
  %arrayidx17.1.i1340 = getelementptr inbounds ptr, ptr %141, i64 %idxprom16.1.i1339.pre-phi
  %314 = load ptr, ptr %arrayidx17.1.i1340, align 8
  %arrayidx22.1.i1343 = getelementptr inbounds i16, ptr %314, i64 %idxprom21.1.i1342.pre-phi
  %315 = load i16, ptr %arrayidx22.1.i1343, align 2
  %conv23.1.i1344 = zext i16 %315 to i32
  %add24.1.i1345 = add nuw nsw i32 %conv23.1.i1344, %conv23.i1337
  %arrayidx17.2.i1348 = getelementptr inbounds ptr, ptr %141, i64 %idxprom16.2.i1347.pre-phi
  %316 = load ptr, ptr %arrayidx17.2.i1348, align 8
  %arrayidx22.2.i1351 = getelementptr inbounds i16, ptr %316, i64 %idxprom21.2.i1350.pre-phi
  %317 = load i16, ptr %arrayidx22.2.i1351, align 2
  %conv23.2.i1352 = zext i16 %317 to i32
  %add24.2.i1353 = add nuw nsw i32 %add24.1.i1345, %conv23.2.i1352
  %arrayidx17.3.i1356 = getelementptr inbounds ptr, ptr %141, i64 %idxprom16.3.i1355.pre-phi
  %318 = load ptr, ptr %arrayidx17.3.i1356, align 8
  %arrayidx22.3.i1359 = getelementptr inbounds i16, ptr %318, i64 %idxprom21.3.i1358.pre-phi
  %319 = load i16, ptr %arrayidx22.3.i1359, align 2
  %conv23.3.i1360 = zext i16 %319 to i32
  %add24.3.i1361 = add nuw nsw i32 %add24.2.i1353, %conv23.3.i1360
  br i1 %tobool.not.i1241, label %if.then40.i1368, label %if.then31.i1362

if.then31.i1362:                                  ; preds = %if.end28.i1328
  %add32.i1363 = add nuw nsw i32 %s0.174.ph.i1329, 4
  %add33.i1364 = add nuw nsw i32 %add32.i1363, %add24.3.i1361
  %shr.i1365 = lshr i32 %add33.i1364, 3
  br label %sw.epilog

if.then35.i1371:                                  ; preds = %if.end.i1310
  %add36.i1372 = add nuw nsw i32 %add5.3.i1326, 2
  %shr37.i1373 = lshr i32 %add36.i1372, 2
  br label %sw.epilog

if.then40.i1368:                                  ; preds = %if.end28.i1328
  %add41.i1369 = add nuw nsw i32 %add24.3.i1361, 2
  %shr42.i1370 = lshr i32 %add41.i1369, 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.thread.i1306, %if.else.i1128, %if.else.i, %if.end.thread.i, %if.then40.i1368, %if.then35.i1371, %if.then31.i1362, %if.end35.sink.split.i1218, %if.end35.sink.split.i1103, %if.then40.i1046, %if.then35.i1049, %if.then31.i1040, %for.cond96.preheader
  %pred.4 = phi i32 [ %149, %for.cond96.preheader ], [ %pred.0, %if.then35.i1049 ], [ %pred.01381, %if.then40.i1046 ], [ %pred.01381, %if.then31.i1040 ], [ %pred.11386, %if.end35.sink.split.i1103 ], [ %pred.21399, %if.end35.sink.split.i1218 ], [ %pred.3, %if.then35.i1371 ], [ %pred.31414, %if.then40.i1368 ], [ %pred.31414, %if.then31.i1362 ], [ %149, %if.end.thread.i ], [ %149, %if.else.i ], [ %149, %if.else.i1128 ], [ %149, %if.end.thread.i1306 ]
  %pred1.4 = phi i32 [ %150, %for.cond96.preheader ], [ %shr37.i1051, %if.then35.i1049 ], [ %shr42.i1048, %if.then40.i1046 ], [ %shr.i1043, %if.then31.i1040 ], [ %shr34.i1109, %if.end35.sink.split.i1103 ], [ %shr34.i1224, %if.end35.sink.split.i1218 ], [ %shr37.i1373, %if.then35.i1371 ], [ %shr42.i1370, %if.then40.i1368 ], [ %shr.i1365, %if.then31.i1362 ], [ %150, %if.end.thread.i ], [ %150, %if.else.i ], [ %150, %if.else.i1128 ], [ %150, %if.end.thread.i1306 ]
  %conv161 = trunc i32 %pred.4 to i16
  %conv166 = trunc i32 %pred1.4 to i16
  %320 = zext i8 %148 to i64
  %321 = zext i8 %147 to i64
  %arrayidx163 = getelementptr inbounds ptr, ptr %143, i64 %321
  %arrayidx168 = getelementptr inbounds ptr, ptr %144, i64 %321
  %322 = load ptr, ptr %arrayidx163, align 8
  %arrayidx165 = getelementptr inbounds i16, ptr %322, i64 %320
  store i16 %conv161, ptr %arrayidx165, align 2
  %323 = load ptr, ptr %arrayidx168, align 8
  %arrayidx170 = getelementptr inbounds i16, ptr %323, i64 %320
  store i16 %conv166, ptr %arrayidx170, align 2
  %indvars.iv.next1558 = add nuw nsw i64 %320, 1
  %324 = load ptr, ptr %arrayidx163, align 8
  %arrayidx165.1 = getelementptr inbounds i16, ptr %324, i64 %indvars.iv.next1558
  store i16 %conv161, ptr %arrayidx165.1, align 2
  %325 = load ptr, ptr %arrayidx168, align 8
  %arrayidx170.1 = getelementptr inbounds i16, ptr %325, i64 %indvars.iv.next1558
  store i16 %conv166, ptr %arrayidx170.1, align 2
  %indvars.iv.next1558.1 = add nuw nsw i64 %320, 2
  %326 = load ptr, ptr %arrayidx163, align 8
  %arrayidx165.2 = getelementptr inbounds i16, ptr %326, i64 %indvars.iv.next1558.1
  store i16 %conv161, ptr %arrayidx165.2, align 2
  %327 = load ptr, ptr %arrayidx168, align 8
  %arrayidx170.2 = getelementptr inbounds i16, ptr %327, i64 %indvars.iv.next1558.1
  store i16 %conv166, ptr %arrayidx170.2, align 2
  %indvars.iv.next1558.2 = add nuw nsw i64 %320, 3
  %328 = load ptr, ptr %arrayidx163, align 8
  %arrayidx165.3 = getelementptr inbounds i16, ptr %328, i64 %indvars.iv.next1558.2
  store i16 %conv161, ptr %arrayidx165.3, align 2
  %329 = load ptr, ptr %arrayidx168, align 8
  %arrayidx170.3 = getelementptr inbounds i16, ptr %329, i64 %indvars.iv.next1558.2
  store i16 %conv166, ptr %arrayidx170.3, align 2
  %indvars.iv.next1563 = add nuw nsw i64 %321, 1
  %arrayidx163.1 = getelementptr inbounds ptr, ptr %143, i64 %indvars.iv.next1563
  %arrayidx168.1 = getelementptr inbounds ptr, ptr %144, i64 %indvars.iv.next1563
  %330 = load ptr, ptr %arrayidx163.1, align 8
  %arrayidx165.11567 = getelementptr inbounds i16, ptr %330, i64 %320
  store i16 %conv161, ptr %arrayidx165.11567, align 2
  %331 = load ptr, ptr %arrayidx168.1, align 8
  %arrayidx170.11568 = getelementptr inbounds i16, ptr %331, i64 %320
  store i16 %conv166, ptr %arrayidx170.11568, align 2
  %332 = load ptr, ptr %arrayidx163.1, align 8
  %arrayidx165.1.1 = getelementptr inbounds i16, ptr %332, i64 %indvars.iv.next1558
  store i16 %conv161, ptr %arrayidx165.1.1, align 2
  %333 = load ptr, ptr %arrayidx168.1, align 8
  %arrayidx170.1.1 = getelementptr inbounds i16, ptr %333, i64 %indvars.iv.next1558
  store i16 %conv166, ptr %arrayidx170.1.1, align 2
  %334 = load ptr, ptr %arrayidx163.1, align 8
  %arrayidx165.2.1 = getelementptr inbounds i16, ptr %334, i64 %indvars.iv.next1558.1
  store i16 %conv161, ptr %arrayidx165.2.1, align 2
  %335 = load ptr, ptr %arrayidx168.1, align 8
  %arrayidx170.2.1 = getelementptr inbounds i16, ptr %335, i64 %indvars.iv.next1558.1
  store i16 %conv166, ptr %arrayidx170.2.1, align 2
  %336 = load ptr, ptr %arrayidx163.1, align 8
  %arrayidx165.3.1 = getelementptr inbounds i16, ptr %336, i64 %indvars.iv.next1558.2
  store i16 %conv161, ptr %arrayidx165.3.1, align 2
  %337 = load ptr, ptr %arrayidx168.1, align 8
  %arrayidx170.3.1 = getelementptr inbounds i16, ptr %337, i64 %indvars.iv.next1558.2
  store i16 %conv166, ptr %arrayidx170.3.1, align 2
  %indvars.iv.next1563.1 = add nuw nsw i64 %321, 2
  %arrayidx163.2 = getelementptr inbounds ptr, ptr %143, i64 %indvars.iv.next1563.1
  %arrayidx168.2 = getelementptr inbounds ptr, ptr %144, i64 %indvars.iv.next1563.1
  %338 = load ptr, ptr %arrayidx163.2, align 8
  %arrayidx165.21570 = getelementptr inbounds i16, ptr %338, i64 %320
  store i16 %conv161, ptr %arrayidx165.21570, align 2
  %339 = load ptr, ptr %arrayidx168.2, align 8
  %arrayidx170.21571 = getelementptr inbounds i16, ptr %339, i64 %320
  store i16 %conv166, ptr %arrayidx170.21571, align 2
  %340 = load ptr, ptr %arrayidx163.2, align 8
  %arrayidx165.1.2 = getelementptr inbounds i16, ptr %340, i64 %indvars.iv.next1558
  store i16 %conv161, ptr %arrayidx165.1.2, align 2
  %341 = load ptr, ptr %arrayidx168.2, align 8
  %arrayidx170.1.2 = getelementptr inbounds i16, ptr %341, i64 %indvars.iv.next1558
  store i16 %conv166, ptr %arrayidx170.1.2, align 2
  %342 = load ptr, ptr %arrayidx163.2, align 8
  %arrayidx165.2.2 = getelementptr inbounds i16, ptr %342, i64 %indvars.iv.next1558.1
  store i16 %conv161, ptr %arrayidx165.2.2, align 2
  %343 = load ptr, ptr %arrayidx168.2, align 8
  %arrayidx170.2.2 = getelementptr inbounds i16, ptr %343, i64 %indvars.iv.next1558.1
  store i16 %conv166, ptr %arrayidx170.2.2, align 2
  %344 = load ptr, ptr %arrayidx163.2, align 8
  %arrayidx165.3.2 = getelementptr inbounds i16, ptr %344, i64 %indvars.iv.next1558.2
  store i16 %conv161, ptr %arrayidx165.3.2, align 2
  %345 = load ptr, ptr %arrayidx168.2, align 8
  %arrayidx170.3.2 = getelementptr inbounds i16, ptr %345, i64 %indvars.iv.next1558.2
  store i16 %conv166, ptr %arrayidx170.3.2, align 2
  %indvars.iv.next1563.2 = add nuw nsw i64 %321, 3
  %arrayidx163.3 = getelementptr inbounds ptr, ptr %143, i64 %indvars.iv.next1563.2
  %arrayidx168.3 = getelementptr inbounds ptr, ptr %144, i64 %indvars.iv.next1563.2
  %346 = load ptr, ptr %arrayidx163.3, align 8
  %arrayidx165.31573 = getelementptr inbounds i16, ptr %346, i64 %320
  store i16 %conv161, ptr %arrayidx165.31573, align 2
  %347 = load ptr, ptr %arrayidx168.3, align 8
  %arrayidx170.31574 = getelementptr inbounds i16, ptr %347, i64 %320
  store i16 %conv166, ptr %arrayidx170.31574, align 2
  %348 = load ptr, ptr %arrayidx163.3, align 8
  %arrayidx165.1.3 = getelementptr inbounds i16, ptr %348, i64 %indvars.iv.next1558
  store i16 %conv161, ptr %arrayidx165.1.3, align 2
  %349 = load ptr, ptr %arrayidx168.3, align 8
  %arrayidx170.1.3 = getelementptr inbounds i16, ptr %349, i64 %indvars.iv.next1558
  store i16 %conv166, ptr %arrayidx170.1.3, align 2
  %350 = load ptr, ptr %arrayidx163.3, align 8
  %arrayidx165.2.3 = getelementptr inbounds i16, ptr %350, i64 %indvars.iv.next1558.1
  store i16 %conv161, ptr %arrayidx165.2.3, align 2
  %351 = load ptr, ptr %arrayidx168.3, align 8
  %arrayidx170.2.3 = getelementptr inbounds i16, ptr %351, i64 %indvars.iv.next1558.1
  store i16 %conv166, ptr %arrayidx170.2.3, align 2
  %352 = load ptr, ptr %arrayidx163.3, align 8
  %arrayidx165.3.3 = getelementptr inbounds i16, ptr %352, i64 %indvars.iv.next1558.2
  store i16 %conv161, ptr %arrayidx165.3.3, align 2
  %353 = load ptr, ptr %arrayidx168.3, align 8
  %arrayidx170.3.3 = getelementptr inbounds i16, ptr %353, i64 %indvars.iv.next1558.2
  store i16 %conv166, ptr %arrayidx170.3.3, align 2
  %arrayidx105.1 = getelementptr inbounds [3 x [8 x [4 x i8]]], ptr @subblk_offset_y, i64 0, i64 %idxprom100, i64 %indvars.iv1623, i64 1
  %354 = load i8, ptr %arrayidx105.1, align 1
  %conv106.1 = zext i8 %354 to i32
  %arrayidx112.1 = getelementptr inbounds [3 x [8 x [4 x i8]]], ptr @subblk_offset_x, i64 0, i64 %idxprom100, i64 %indvars.iv1623, i64 1
  %355 = load i8, ptr %arrayidx112.1, align 1
  %356 = load i32, ptr %arrayidx114, align 4
  %357 = load i32, ptr %arrayidx116, align 4
  %arrayidx122.1 = getelementptr inbounds [3 x [4 x [4 x i32]]], ptr @intrapred_chroma_dc.block_pos, i64 0, i64 %idxprom100, i64 %indvars.iv1623, i64 1
  %358 = load i32, ptr %arrayidx122.1, align 4
  switch i32 %358, label %sw.epilog.1 [
    i32 0, label %sw.bb123.1
    i32 1, label %sw.bb130.1
    i32 2, label %sw.bb137.1
    i32 3, label %sw.bb144.1
  ]

sw.bb144.1:                                       ; preds = %sw.epilog
  %add147.1 = add nuw nsw i32 %conv106.1, 1
  %359 = load i64, ptr %146, align 4
  br i1 %tobool.not.i1241, label %if.end.thread.i1306.1, label %if.end.i1242.1

if.end.i1242.1:                                   ; preds = %sw.bb144.1
  %360 = zext i8 %355 to i64
  %idxprom.i1243.1 = ashr i64 %359, 48
  %arrayidx.i1244.1 = getelementptr inbounds ptr, ptr %140, i64 %idxprom.i1243.1
  %361 = load ptr, ptr %arrayidx.i1244.1, align 8
  %362 = getelementptr i16, ptr %361, i64 %360
  %sh.diff.i1245.1 = lshr i64 %359, 16
  %tr.sh.diff.i1246.1 = trunc i64 %sh.diff.i1245.1 to i32
  %conv.i1247.1 = ashr i32 %tr.sh.diff.i1246.1, 16
  %363 = sext i32 %conv.i1247.1 to i64
  %arrayidx3.i1248.1 = getelementptr i16, ptr %362, i64 %363
  %364 = load <4 x i16>, ptr %arrayidx3.i1248.1, align 2
  %365 = zext <4 x i16> %364 to <4 x i32>
  %366 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %365)
  br i1 %tobool6.not.i1259, label %if.then35.i1303.1, label %if.end28.i1260.1

if.then35.i1303.1:                                ; preds = %if.end.i1242.1
  %add36.i1304.1 = add nuw nsw i32 %366, 2
  %shr37.i1305.1 = lshr i32 %add36.i1304.1, 2
  br label %if.end.i1310.1

if.end.thread.i1306.1:                            ; preds = %sw.bb144.1
  br i1 %tobool6.not.i1259, label %sw.epilog.1, label %if.end28.i1260.1

if.end28.i1260.1:                                 ; preds = %if.end.thread.i1306.1, %if.end.i1242.1
  %s0.174.ph.i1261.1 = phi i32 [ 0, %if.end.thread.i1306.1 ], [ %366, %if.end.i1242.1 ]
  %367 = zext nneg i32 %add147.1 to i64
  %arrayidx14.i1262.1 = getelementptr inbounds %struct.pix_pos, ptr %left, i64 %367
  %pos_y15.i1263.1 = getelementptr inbounds i8, ptr %arrayidx14.i1262.1, i64 14
  %368 = load i16, ptr %pos_y15.i1263.1, align 2
  %idxprom16.i1264.1 = sext i16 %368 to i64
  %arrayidx17.i1265.1 = getelementptr inbounds ptr, ptr %140, i64 %idxprom16.i1264.1
  %369 = load ptr, ptr %arrayidx17.i1265.1, align 8
  %pos_x20.i1266.1 = getelementptr inbounds i8, ptr %arrayidx14.i1262.1, i64 12
  %370 = load i16, ptr %pos_x20.i1266.1, align 4
  %idxprom21.i1267.1 = sext i16 %370 to i64
  %arrayidx22.i1268.1 = getelementptr inbounds i16, ptr %369, i64 %idxprom21.i1267.1
  %371 = load i16, ptr %arrayidx22.i1268.1, align 2
  %conv23.i1269.1 = zext i16 %371 to i32
  %pos_y15.1.i1270.1 = getelementptr i8, ptr %arrayidx14.i1262.1, i64 30
  %372 = load i16, ptr %pos_y15.1.i1270.1, align 2
  %idxprom16.1.i1271.1 = sext i16 %372 to i64
  %arrayidx17.1.i1272.1 = getelementptr inbounds ptr, ptr %140, i64 %idxprom16.1.i1271.1
  %373 = load ptr, ptr %arrayidx17.1.i1272.1, align 8
  %pos_x20.1.i1273.1 = getelementptr i8, ptr %arrayidx14.i1262.1, i64 28
  %374 = load i16, ptr %pos_x20.1.i1273.1, align 4
  %idxprom21.1.i1274.1 = sext i16 %374 to i64
  %arrayidx22.1.i1275.1 = getelementptr inbounds i16, ptr %373, i64 %idxprom21.1.i1274.1
  %375 = load i16, ptr %arrayidx22.1.i1275.1, align 2
  %conv23.1.i1276.1 = zext i16 %375 to i32
  %add24.1.i1277.1 = add nuw nsw i32 %conv23.1.i1276.1, %conv23.i1269.1
  %pos_y15.2.i1278.1 = getelementptr i8, ptr %arrayidx14.i1262.1, i64 46
  %376 = load i16, ptr %pos_y15.2.i1278.1, align 2
  %idxprom16.2.i1279.1 = sext i16 %376 to i64
  %arrayidx17.2.i1280.1 = getelementptr inbounds ptr, ptr %140, i64 %idxprom16.2.i1279.1
  %377 = load ptr, ptr %arrayidx17.2.i1280.1, align 8
  %pos_x20.2.i1281.1 = getelementptr i8, ptr %arrayidx14.i1262.1, i64 44
  %378 = load i16, ptr %pos_x20.2.i1281.1, align 4
  %idxprom21.2.i1282.1 = sext i16 %378 to i64
  %arrayidx22.2.i1283.1 = getelementptr inbounds i16, ptr %377, i64 %idxprom21.2.i1282.1
  %379 = load i16, ptr %arrayidx22.2.i1283.1, align 2
  %conv23.2.i1284.1 = zext i16 %379 to i32
  %add24.2.i1285.1 = add nuw nsw i32 %add24.1.i1277.1, %conv23.2.i1284.1
  %pos_y15.3.i1286.1 = getelementptr i8, ptr %arrayidx14.i1262.1, i64 62
  %380 = load i16, ptr %pos_y15.3.i1286.1, align 2
  %idxprom16.3.i1287.1 = sext i16 %380 to i64
  %arrayidx17.3.i1288.1 = getelementptr inbounds ptr, ptr %140, i64 %idxprom16.3.i1287.1
  %381 = load ptr, ptr %arrayidx17.3.i1288.1, align 8
  %pos_x20.3.i1289.1 = getelementptr i8, ptr %arrayidx14.i1262.1, i64 60
  %382 = load i16, ptr %pos_x20.3.i1289.1, align 4
  %idxprom21.3.i1290.1 = sext i16 %382 to i64
  %arrayidx22.3.i1291.1 = getelementptr inbounds i16, ptr %381, i64 %idxprom21.3.i1290.1
  %383 = load i16, ptr %arrayidx22.3.i1291.1, align 2
  %conv23.3.i1292.1 = zext i16 %383 to i32
  %add24.3.i1293.1 = add nuw nsw i32 %add24.2.i1285.1, %conv23.3.i1292.1
  br i1 %tobool.not.i1241, label %if.end.thread.i1374.1, label %if.then31.i1294.1

if.then31.i1294.1:                                ; preds = %if.end28.i1260.1
  %add32.i1295.1 = add nuw nsw i32 %s0.174.ph.i1261.1, 4
  %add33.i1296.1 = add nuw nsw i32 %add32.i1295.1, %add24.3.i1293.1
  %shr.i1297.1 = lshr i32 %add33.i1296.1, 3
  %.pre1678 = ashr i64 %359, 48
  %.pre1929 = zext i8 %355 to i64
  %.pre1931 = lshr i64 %359, 16
  %.pre1932 = trunc i64 %.pre1931 to i32
  %.pre1933 = ashr i32 %.pre1932, 16
  %.pre1934 = sext i32 %.pre1933 to i64
  br label %if.end.i1310.1

if.end.i1310.1:                                   ; preds = %if.then31.i1294.1, %if.then35.i1303.1
  %.pre-phi1935 = phi i64 [ %.pre1934, %if.then31.i1294.1 ], [ %363, %if.then35.i1303.1 ]
  %.pre-phi1930 = phi i64 [ %.pre1929, %if.then31.i1294.1 ], [ %360, %if.then35.i1303.1 ]
  %idxprom.i1311.1.pre-phi = phi i64 [ %.pre1678, %if.then31.i1294.1 ], [ %idxprom.i1243.1, %if.then35.i1303.1 ]
  %pred.3.1 = phi i32 [ %shr.i1297.1, %if.then31.i1294.1 ], [ %shr37.i1305.1, %if.then35.i1303.1 ]
  %arrayidx.i1312.1 = getelementptr inbounds ptr, ptr %141, i64 %idxprom.i1311.1.pre-phi
  %384 = load ptr, ptr %arrayidx.i1312.1, align 8
  %385 = getelementptr i16, ptr %384, i64 %.pre-phi1930
  %arrayidx3.i1316.1 = getelementptr i16, ptr %385, i64 %.pre-phi1935
  %386 = load i16, ptr %arrayidx3.i1316.1, align 2
  %conv4.i1317.1 = zext i16 %386 to i32
  %387 = getelementptr i8, ptr %385, i64 2
  %arrayidx3.1.i1318.1 = getelementptr i16, ptr %387, i64 %.pre-phi1935
  %388 = load i16, ptr %arrayidx3.1.i1318.1, align 2
  %conv4.1.i1319.1 = zext i16 %388 to i32
  %add5.1.i1320.1 = add nuw nsw i32 %conv4.1.i1319.1, %conv4.i1317.1
  %389 = getelementptr i8, ptr %385, i64 4
  %arrayidx3.2.i1321.1 = getelementptr i16, ptr %389, i64 %.pre-phi1935
  %390 = load i16, ptr %arrayidx3.2.i1321.1, align 2
  %conv4.2.i1322.1 = zext i16 %390 to i32
  %add5.2.i1323.1 = add nuw nsw i32 %add5.1.i1320.1, %conv4.2.i1322.1
  %391 = getelementptr i8, ptr %385, i64 6
  %arrayidx3.3.i1324.1 = getelementptr i16, ptr %391, i64 %.pre-phi1935
  %392 = load i16, ptr %arrayidx3.3.i1324.1, align 2
  %conv4.3.i1325.1 = zext i16 %392 to i32
  %add5.3.i1326.1 = add nuw nsw i32 %add5.2.i1323.1, %conv4.3.i1325.1
  br i1 %tobool6.not.i1259, label %if.then35.i1371.1, label %if.end.i1310.1.if.end28.i1328.1_crit_edge

if.end.i1310.1.if.end28.i1328.1_crit_edge:        ; preds = %if.end.i1310.1
  %.phi.trans.insert1679 = zext nneg i32 %add147.1 to i64
  %arrayidx14.i1330.1.phi.trans.insert = getelementptr inbounds %struct.pix_pos, ptr %left, i64 %.phi.trans.insert1679
  %pos_y15.i1331.1.phi.trans.insert = getelementptr inbounds i8, ptr %arrayidx14.i1330.1.phi.trans.insert, i64 14
  %.pre1680 = load i16, ptr %pos_y15.i1331.1.phi.trans.insert, align 2
  %pos_x20.i1334.1.phi.trans.insert = getelementptr inbounds i8, ptr %arrayidx14.i1330.1.phi.trans.insert, i64 12
  %.pre1683 = load i16, ptr %pos_x20.i1334.1.phi.trans.insert, align 4
  %pos_y15.1.i1338.1.phi.trans.insert = getelementptr i8, ptr %arrayidx14.i1330.1.phi.trans.insert, i64 30
  %.pre1686 = load i16, ptr %pos_y15.1.i1338.1.phi.trans.insert, align 2
  %pos_x20.1.i1341.1.phi.trans.insert = getelementptr i8, ptr %arrayidx14.i1330.1.phi.trans.insert, i64 28
  %.pre1689 = load i16, ptr %pos_x20.1.i1341.1.phi.trans.insert, align 4
  %pos_y15.2.i1346.1.phi.trans.insert = getelementptr i8, ptr %arrayidx14.i1330.1.phi.trans.insert, i64 46
  %.pre1692 = load i16, ptr %pos_y15.2.i1346.1.phi.trans.insert, align 2
  %pos_x20.2.i1349.1.phi.trans.insert = getelementptr i8, ptr %arrayidx14.i1330.1.phi.trans.insert, i64 44
  %.pre1695 = load i16, ptr %pos_x20.2.i1349.1.phi.trans.insert, align 4
  %pos_y15.3.i1354.1.phi.trans.insert = getelementptr i8, ptr %arrayidx14.i1330.1.phi.trans.insert, i64 62
  %.pre1698 = load i16, ptr %pos_y15.3.i1354.1.phi.trans.insert, align 2
  %pos_x20.3.i1357.1.phi.trans.insert = getelementptr i8, ptr %arrayidx14.i1330.1.phi.trans.insert, i64 60
  %.pre1701 = load i16, ptr %pos_x20.3.i1357.1.phi.trans.insert, align 4
  %.pre1841 = sext i16 %.pre1680 to i64
  %.pre1842 = sext i16 %.pre1683 to i64
  %.pre1843 = sext i16 %.pre1686 to i64
  %.pre1844 = sext i16 %.pre1689 to i64
  %.pre1845 = sext i16 %.pre1692 to i64
  %.pre1846 = sext i16 %.pre1695 to i64
  %.pre1847 = sext i16 %.pre1698 to i64
  %.pre1848 = sext i16 %.pre1701 to i64
  br label %if.end28.i1328.1

if.then35.i1371.1:                                ; preds = %if.end.i1310.1
  %add36.i1372.1 = add nuw nsw i32 %add5.3.i1326.1, 2
  %shr37.i1373.1 = lshr i32 %add36.i1372.1, 2
  br label %sw.epilog.1

if.end.thread.i1374.1:                            ; preds = %if.end28.i1260.1
  %add41.i1301.1 = add nuw nsw i32 %add24.3.i1293.1, 2
  %shr42.i1302.1 = lshr i32 %add41.i1301.1, 2
  br label %if.end28.i1328.1

if.end28.i1328.1:                                 ; preds = %if.end.i1310.1.if.end28.i1328.1_crit_edge, %if.end.thread.i1374.1
  %idxprom21.3.i1358.1.pre-phi = phi i64 [ %.pre1848, %if.end.i1310.1.if.end28.i1328.1_crit_edge ], [ %idxprom21.3.i1290.1, %if.end.thread.i1374.1 ]
  %idxprom16.3.i1355.1.pre-phi = phi i64 [ %.pre1847, %if.end.i1310.1.if.end28.i1328.1_crit_edge ], [ %idxprom16.3.i1287.1, %if.end.thread.i1374.1 ]
  %idxprom21.2.i1350.1.pre-phi = phi i64 [ %.pre1846, %if.end.i1310.1.if.end28.i1328.1_crit_edge ], [ %idxprom21.2.i1282.1, %if.end.thread.i1374.1 ]
  %idxprom16.2.i1347.1.pre-phi = phi i64 [ %.pre1845, %if.end.i1310.1.if.end28.i1328.1_crit_edge ], [ %idxprom16.2.i1279.1, %if.end.thread.i1374.1 ]
  %idxprom21.1.i1342.1.pre-phi = phi i64 [ %.pre1844, %if.end.i1310.1.if.end28.i1328.1_crit_edge ], [ %idxprom21.1.i1274.1, %if.end.thread.i1374.1 ]
  %idxprom16.1.i1339.1.pre-phi = phi i64 [ %.pre1843, %if.end.i1310.1.if.end28.i1328.1_crit_edge ], [ %idxprom16.1.i1271.1, %if.end.thread.i1374.1 ]
  %idxprom21.i1335.1.pre-phi = phi i64 [ %.pre1842, %if.end.i1310.1.if.end28.i1328.1_crit_edge ], [ %idxprom21.i1267.1, %if.end.thread.i1374.1 ]
  %idxprom16.i1332.1.pre-phi = phi i64 [ %.pre1841, %if.end.i1310.1.if.end28.i1328.1_crit_edge ], [ %idxprom16.i1264.1, %if.end.thread.i1374.1 ]
  %pred.31414.1 = phi i32 [ %pred.3.1, %if.end.i1310.1.if.end28.i1328.1_crit_edge ], [ %shr42.i1302.1, %if.end.thread.i1374.1 ]
  %s0.174.ph.i1329.1 = phi i32 [ %add5.3.i1326.1, %if.end.i1310.1.if.end28.i1328.1_crit_edge ], [ 0, %if.end.thread.i1374.1 ]
  %arrayidx17.i1333.1 = getelementptr inbounds ptr, ptr %141, i64 %idxprom16.i1332.1.pre-phi
  %393 = load ptr, ptr %arrayidx17.i1333.1, align 8
  %arrayidx22.i1336.1 = getelementptr inbounds i16, ptr %393, i64 %idxprom21.i1335.1.pre-phi
  %394 = load i16, ptr %arrayidx22.i1336.1, align 2
  %conv23.i1337.1 = zext i16 %394 to i32
  %arrayidx17.1.i1340.1 = getelementptr inbounds ptr, ptr %141, i64 %idxprom16.1.i1339.1.pre-phi
  %395 = load ptr, ptr %arrayidx17.1.i1340.1, align 8
  %arrayidx22.1.i1343.1 = getelementptr inbounds i16, ptr %395, i64 %idxprom21.1.i1342.1.pre-phi
  %396 = load i16, ptr %arrayidx22.1.i1343.1, align 2
  %conv23.1.i1344.1 = zext i16 %396 to i32
  %add24.1.i1345.1 = add nuw nsw i32 %conv23.1.i1344.1, %conv23.i1337.1
  %arrayidx17.2.i1348.1 = getelementptr inbounds ptr, ptr %141, i64 %idxprom16.2.i1347.1.pre-phi
  %397 = load ptr, ptr %arrayidx17.2.i1348.1, align 8
  %arrayidx22.2.i1351.1 = getelementptr inbounds i16, ptr %397, i64 %idxprom21.2.i1350.1.pre-phi
  %398 = load i16, ptr %arrayidx22.2.i1351.1, align 2
  %conv23.2.i1352.1 = zext i16 %398 to i32
  %add24.2.i1353.1 = add nuw nsw i32 %add24.1.i1345.1, %conv23.2.i1352.1
  %arrayidx17.3.i1356.1 = getelementptr inbounds ptr, ptr %141, i64 %idxprom16.3.i1355.1.pre-phi
  %399 = load ptr, ptr %arrayidx17.3.i1356.1, align 8
  %arrayidx22.3.i1359.1 = getelementptr inbounds i16, ptr %399, i64 %idxprom21.3.i1358.1.pre-phi
  %400 = load i16, ptr %arrayidx22.3.i1359.1, align 2
  %conv23.3.i1360.1 = zext i16 %400 to i32
  %add24.3.i1361.1 = add nuw nsw i32 %add24.2.i1353.1, %conv23.3.i1360.1
  br i1 %tobool.not.i1241, label %if.then40.i1368.1, label %if.then31.i1362.1

if.then31.i1362.1:                                ; preds = %if.end28.i1328.1
  %add32.i1363.1 = add nuw nsw i32 %s0.174.ph.i1329.1, 4
  %add33.i1364.1 = add nuw nsw i32 %add32.i1363.1, %add24.3.i1361.1
  %shr.i1365.1 = lshr i32 %add33.i1364.1, 3
  br label %sw.epilog.1

if.then40.i1368.1:                                ; preds = %if.end28.i1328.1
  %add41.i1369.1 = add nuw nsw i32 %add24.3.i1361.1, 2
  %shr42.i1370.1 = lshr i32 %add41.i1369.1, 2
  br label %sw.epilog.1

sw.bb137.1:                                       ; preds = %sw.epilog
  br i1 %or.cond53.i, label %for.end.i1225.1, label %if.else.i1128.1

if.else.i1128.1:                                  ; preds = %sw.bb137.1
  br i1 %tobool6.not.i1259, label %sw.epilog.1, label %for.end32.i1187.1

for.end32.i1187.1:                                ; preds = %if.else.i1128.1
  %401 = zext i8 %354 to i64
  %402 = getelementptr inbounds %struct.pix_pos, ptr %left, i64 %401
  %pos_y20.i1131.1 = getelementptr inbounds i8, ptr %402, i64 30
  %403 = load i16, ptr %pos_y20.i1131.1, align 2
  %idxprom21.i1132.1 = sext i16 %403 to i64
  %arrayidx22.i1133.1 = getelementptr inbounds ptr, ptr %140, i64 %idxprom21.i1132.1
  %404 = load ptr, ptr %arrayidx22.i1133.1, align 8
  %pos_x25.i1134.1 = getelementptr inbounds i8, ptr %402, i64 28
  %405 = load i16, ptr %pos_x25.i1134.1, align 4
  %idxprom26.i1135.1 = sext i16 %405 to i64
  %arrayidx27.i1136.1 = getelementptr inbounds i16, ptr %404, i64 %idxprom26.i1135.1
  %406 = load i16, ptr %arrayidx27.i1136.1, align 2
  %conv28.i1137.1 = zext i16 %406 to i32
  %pos_y20.1.i1138.1 = getelementptr i8, ptr %402, i64 46
  %407 = load i16, ptr %pos_y20.1.i1138.1, align 2
  %idxprom21.1.i1139.1 = sext i16 %407 to i64
  %arrayidx22.1.i1140.1 = getelementptr inbounds ptr, ptr %140, i64 %idxprom21.1.i1139.1
  %408 = load ptr, ptr %arrayidx22.1.i1140.1, align 8
  %pos_x25.1.i1141.1 = getelementptr i8, ptr %402, i64 44
  %409 = load i16, ptr %pos_x25.1.i1141.1, align 4
  %idxprom26.1.i1142.1 = sext i16 %409 to i64
  %arrayidx27.1.i1143.1 = getelementptr inbounds i16, ptr %408, i64 %idxprom26.1.i1142.1
  %410 = load i16, ptr %arrayidx27.1.i1143.1, align 2
  %conv28.1.i1144.1 = zext i16 %410 to i32
  %add29.1.i1145.1 = add nuw nsw i32 %conv28.1.i1144.1, %conv28.i1137.1
  %pos_y20.2.i1146.1 = getelementptr i8, ptr %402, i64 62
  %411 = load i16, ptr %pos_y20.2.i1146.1, align 2
  %idxprom21.2.i1147.1 = sext i16 %411 to i64
  %arrayidx22.2.i1148.1 = getelementptr inbounds ptr, ptr %140, i64 %idxprom21.2.i1147.1
  %412 = load ptr, ptr %arrayidx22.2.i1148.1, align 8
  %pos_x25.2.i1149.1 = getelementptr i8, ptr %402, i64 60
  %413 = load i16, ptr %pos_x25.2.i1149.1, align 4
  %idxprom26.2.i1150.1 = sext i16 %413 to i64
  %arrayidx27.2.i1151.1 = getelementptr inbounds i16, ptr %412, i64 %idxprom26.2.i1150.1
  %414 = load i16, ptr %arrayidx27.2.i1151.1, align 2
  %conv28.2.i1152.1 = zext i16 %414 to i32
  %add29.2.i1153.1 = add nuw nsw i32 %add29.1.i1145.1, %conv28.2.i1152.1
  %pos_y20.3.i1154.1 = getelementptr i8, ptr %402, i64 78
  %415 = load i16, ptr %pos_y20.3.i1154.1, align 2
  %idxprom21.3.i1155.1 = sext i16 %415 to i64
  %arrayidx22.3.i1156.1 = getelementptr inbounds ptr, ptr %140, i64 %idxprom21.3.i1155.1
  %416 = load ptr, ptr %arrayidx22.3.i1156.1, align 8
  %pos_x25.3.i1157.1 = getelementptr i8, ptr %402, i64 76
  %417 = load i16, ptr %pos_x25.3.i1157.1, align 4
  %idxprom26.3.i1158.1 = sext i16 %417 to i64
  %arrayidx27.3.i1159.1 = getelementptr inbounds i16, ptr %416, i64 %idxprom26.3.i1158.1
  %418 = load i16, ptr %arrayidx27.3.i1159.1, align 2
  %conv28.3.i1163.1 = zext i16 %418 to i32
  %add29.3.i1164.1 = add nuw nsw i32 %add29.2.i1153.1, %conv28.3.i1163.1
  %arrayidx22.i1191.1 = getelementptr inbounds ptr, ptr %141, i64 %idxprom21.i1132.1
  %419 = load ptr, ptr %arrayidx22.i1191.1, align 8
  %arrayidx27.i1194.1 = getelementptr inbounds i16, ptr %419, i64 %idxprom26.i1135.1
  %420 = load i16, ptr %arrayidx27.i1194.1, align 2
  %conv28.i1195.1 = zext i16 %420 to i32
  %arrayidx22.1.i1198.1 = getelementptr inbounds ptr, ptr %141, i64 %idxprom21.1.i1139.1
  %421 = load ptr, ptr %arrayidx22.1.i1198.1, align 8
  %arrayidx27.1.i1201.1 = getelementptr inbounds i16, ptr %421, i64 %idxprom26.1.i1142.1
  %422 = load i16, ptr %arrayidx27.1.i1201.1, align 2
  %conv28.1.i1202.1 = zext i16 %422 to i32
  %add29.1.i1203.1 = add nuw nsw i32 %conv28.1.i1202.1, %conv28.i1195.1
  %arrayidx22.2.i1206.1 = getelementptr inbounds ptr, ptr %141, i64 %idxprom21.2.i1147.1
  %423 = load ptr, ptr %arrayidx22.2.i1206.1, align 8
  %arrayidx27.2.i1209.1 = getelementptr inbounds i16, ptr %423, i64 %idxprom26.2.i1150.1
  %424 = load i16, ptr %arrayidx27.2.i1209.1, align 2
  %conv28.2.i1210.1 = zext i16 %424 to i32
  %add29.2.i1211.1 = add nuw nsw i32 %add29.1.i1203.1, %conv28.2.i1210.1
  %arrayidx22.3.i1214.1 = getelementptr inbounds ptr, ptr %141, i64 %idxprom21.3.i1155.1
  %425 = load ptr, ptr %arrayidx22.3.i1214.1, align 8
  %arrayidx27.3.i1217.1 = getelementptr inbounds i16, ptr %425, i64 %idxprom26.3.i1158.1
  br label %if.end35.sink.split.i1218.1

for.end.i1225.1:                                  ; preds = %sw.bb137.1
  %426 = load i64, ptr %146, align 4
  %idxprom.i1168.1 = ashr i64 %426, 48
  %arrayidx.i1169.1 = getelementptr inbounds ptr, ptr %140, i64 %idxprom.i1168.1
  %427 = load ptr, ptr %arrayidx.i1169.1, align 8
  %428 = zext i8 %355 to i64
  %429 = getelementptr i16, ptr %427, i64 %428
  %sh.diff.i1170.1 = lshr i64 %426, 16
  %tr.sh.diff.i1171.1 = trunc i64 %sh.diff.i1170.1 to i32
  %conv.i1172.1 = ashr i32 %tr.sh.diff.i1171.1, 16
  %430 = sext i32 %conv.i1172.1 to i64
  %arrayidx7.i1173.1 = getelementptr i16, ptr %429, i64 %430
  %431 = load <4 x i16>, ptr %arrayidx7.i1173.1, align 2
  %432 = zext <4 x i16> %431 to <4 x i32>
  %433 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %432)
  %arrayidx.i1227.1 = getelementptr inbounds ptr, ptr %141, i64 %idxprom.i1168.1
  %434 = load ptr, ptr %arrayidx.i1227.1, align 8
  %435 = getelementptr i16, ptr %434, i64 %428
  %arrayidx7.i1231.1 = getelementptr i16, ptr %435, i64 %430
  %436 = load i16, ptr %arrayidx7.i1231.1, align 2
  %conv8.i1232.1 = zext i16 %436 to i32
  %437 = getelementptr i8, ptr %435, i64 2
  %arrayidx7.1.i1233.1 = getelementptr i16, ptr %437, i64 %430
  %438 = load i16, ptr %arrayidx7.1.i1233.1, align 2
  %conv8.1.i1234.1 = zext i16 %438 to i32
  %add9.1.i1235.1 = add nuw nsw i32 %conv8.1.i1234.1, %conv8.i1232.1
  %439 = getelementptr i8, ptr %435, i64 4
  %arrayidx7.2.i1236.1 = getelementptr i16, ptr %439, i64 %430
  %440 = load i16, ptr %arrayidx7.2.i1236.1, align 2
  %conv8.2.i1237.1 = zext i16 %440 to i32
  %add9.2.i1238.1 = add nuw nsw i32 %add9.1.i1235.1, %conv8.2.i1237.1
  %441 = getelementptr i8, ptr %435, i64 6
  %arrayidx7.3.i1239.1 = getelementptr i16, ptr %441, i64 %430
  br label %if.end35.sink.split.i1218.1

if.end35.sink.split.i1218.1:                      ; preds = %for.end.i1225.1, %for.end32.i1187.1
  %pred.21399.in.in.1 = phi i32 [ %add29.3.i1164.1, %for.end32.i1187.1 ], [ %433, %for.end.i1225.1 ]
  %arrayidx27.3.sink.i1219.1 = phi ptr [ %arrayidx27.3.i1217.1, %for.end32.i1187.1 ], [ %arrayidx7.3.i1239.1, %for.end.i1225.1 ]
  %add29.2.sink.i1220.1 = phi i32 [ %add29.2.i1211.1, %for.end32.i1187.1 ], [ %add9.2.i1238.1, %for.end.i1225.1 ]
  %pred.21399.in.1 = add nuw nsw i32 %pred.21399.in.in.1, 2
  %pred.21399.1 = lshr i32 %pred.21399.in.1, 2
  %442 = load i16, ptr %arrayidx27.3.sink.i1219.1, align 2
  %conv28.3.i1221.1 = zext i16 %442 to i32
  %add29.3.i1222.1 = add nuw nsw i32 %add29.2.sink.i1220.1, 2
  %add33.i1223.1 = add nuw nsw i32 %add29.3.i1222.1, %conv28.3.i1221.1
  %shr34.i1224.1 = lshr i32 %add33.i1223.1, 2
  br label %sw.epilog.1

sw.bb130.1:                                       ; preds = %sw.epilog
  br i1 %tobool.not.i1241, label %if.else.i.1, label %for.end.i1110.1

for.end.i1110.1:                                  ; preds = %sw.bb130.1
  %443 = load i64, ptr %146, align 4
  %idxprom.i1064.1 = ashr i64 %443, 48
  %arrayidx.i1065.1 = getelementptr inbounds ptr, ptr %140, i64 %idxprom.i1064.1
  %444 = load ptr, ptr %arrayidx.i1065.1, align 8
  %445 = zext i8 %355 to i64
  %446 = getelementptr i16, ptr %444, i64 %445
  %sh.diff.i1066.1 = lshr i64 %443, 16
  %tr.sh.diff.i1067.1 = trunc i64 %sh.diff.i1066.1 to i32
  %conv.i1068.1 = ashr i32 %tr.sh.diff.i1067.1, 16
  %447 = sext i32 %conv.i1068.1 to i64
  %arrayidx7.i.1 = getelementptr i16, ptr %446, i64 %447
  %448 = load <4 x i16>, ptr %arrayidx7.i.1, align 2
  %449 = zext <4 x i16> %448 to <4 x i32>
  %450 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %449)
  %arrayidx.i1112.1 = getelementptr inbounds ptr, ptr %141, i64 %idxprom.i1064.1
  %451 = load ptr, ptr %arrayidx.i1112.1, align 8
  %452 = getelementptr i16, ptr %451, i64 %445
  %arrayidx7.i1116.1 = getelementptr i16, ptr %452, i64 %447
  %453 = load i16, ptr %arrayidx7.i1116.1, align 2
  %conv8.i1117.1 = zext i16 %453 to i32
  %454 = getelementptr i8, ptr %452, i64 2
  %arrayidx7.1.i1118.1 = getelementptr i16, ptr %454, i64 %447
  %455 = load i16, ptr %arrayidx7.1.i1118.1, align 2
  %conv8.1.i1119.1 = zext i16 %455 to i32
  %add9.1.i1120.1 = add nuw nsw i32 %conv8.1.i1119.1, %conv8.i1117.1
  %456 = getelementptr i8, ptr %452, i64 4
  %arrayidx7.2.i1121.1 = getelementptr i16, ptr %456, i64 %447
  %457 = load i16, ptr %arrayidx7.2.i1121.1, align 2
  %conv8.2.i1122.1 = zext i16 %457 to i32
  %add9.2.i1123.1 = add nuw nsw i32 %add9.1.i1120.1, %conv8.2.i1122.1
  %458 = getelementptr i8, ptr %452, i64 6
  %arrayidx7.3.i1124.1 = getelementptr i16, ptr %458, i64 %447
  br label %if.end35.sink.split.i1103.1

if.else.i.1:                                      ; preds = %sw.bb130.1
  br i1 %tobool2.i, label %sw.epilog.1, label %for.end32.i1072.1

for.end32.i1072.1:                                ; preds = %if.else.i.1
  %459 = zext i8 %354 to i64
  %460 = getelementptr inbounds %struct.pix_pos, ptr %left, i64 %459
  %pos_y20.i.1 = getelementptr inbounds i8, ptr %460, i64 30
  %461 = load i16, ptr %pos_y20.i.1, align 2
  %idxprom21.i1055.1 = sext i16 %461 to i64
  %arrayidx22.i1056.1 = getelementptr inbounds ptr, ptr %140, i64 %idxprom21.i1055.1
  %462 = load ptr, ptr %arrayidx22.i1056.1, align 8
  %pos_x25.i.1 = getelementptr inbounds i8, ptr %460, i64 28
  %463 = load i16, ptr %pos_x25.i.1, align 4
  %idxprom26.i.1 = sext i16 %463 to i64
  %arrayidx27.i.1 = getelementptr inbounds i16, ptr %462, i64 %idxprom26.i.1
  %464 = load i16, ptr %arrayidx27.i.1, align 2
  %conv28.i.1 = zext i16 %464 to i32
  %pos_y20.1.i.1 = getelementptr i8, ptr %460, i64 46
  %465 = load i16, ptr %pos_y20.1.i.1, align 2
  %idxprom21.1.i1057.1 = sext i16 %465 to i64
  %arrayidx22.1.i1058.1 = getelementptr inbounds ptr, ptr %140, i64 %idxprom21.1.i1057.1
  %466 = load ptr, ptr %arrayidx22.1.i1058.1, align 8
  %pos_x25.1.i.1 = getelementptr i8, ptr %460, i64 44
  %467 = load i16, ptr %pos_x25.1.i.1, align 4
  %idxprom26.1.i.1 = sext i16 %467 to i64
  %arrayidx27.1.i.1 = getelementptr inbounds i16, ptr %466, i64 %idxprom26.1.i.1
  %468 = load i16, ptr %arrayidx27.1.i.1, align 2
  %conv28.1.i.1 = zext i16 %468 to i32
  %add29.1.i.1 = add nuw nsw i32 %conv28.1.i.1, %conv28.i.1
  %pos_y20.2.i.1 = getelementptr i8, ptr %460, i64 62
  %469 = load i16, ptr %pos_y20.2.i.1, align 2
  %idxprom21.2.i1059.1 = sext i16 %469 to i64
  %arrayidx22.2.i1060.1 = getelementptr inbounds ptr, ptr %140, i64 %idxprom21.2.i1059.1
  %470 = load ptr, ptr %arrayidx22.2.i1060.1, align 8
  %pos_x25.2.i.1 = getelementptr i8, ptr %460, i64 60
  %471 = load i16, ptr %pos_x25.2.i.1, align 4
  %idxprom26.2.i.1 = sext i16 %471 to i64
  %arrayidx27.2.i.1 = getelementptr inbounds i16, ptr %470, i64 %idxprom26.2.i.1
  %472 = load i16, ptr %arrayidx27.2.i.1, align 2
  %conv28.2.i.1 = zext i16 %472 to i32
  %add29.2.i.1 = add nuw nsw i32 %add29.1.i.1, %conv28.2.i.1
  %pos_y20.3.i.1 = getelementptr i8, ptr %460, i64 78
  %473 = load i16, ptr %pos_y20.3.i.1, align 2
  %idxprom21.3.i1061.1 = sext i16 %473 to i64
  %arrayidx22.3.i1062.1 = getelementptr inbounds ptr, ptr %140, i64 %idxprom21.3.i1061.1
  %474 = load ptr, ptr %arrayidx22.3.i1062.1, align 8
  %pos_x25.3.i.1 = getelementptr i8, ptr %460, i64 76
  %475 = load i16, ptr %pos_x25.3.i.1, align 4
  %idxprom26.3.i.1 = sext i16 %475 to i64
  %arrayidx27.3.i.1 = getelementptr inbounds i16, ptr %474, i64 %idxprom26.3.i.1
  %476 = load i16, ptr %arrayidx27.3.i.1, align 2
  %conv28.3.i.1 = zext i16 %476 to i32
  %add29.3.i.1 = add nuw nsw i32 %add29.2.i.1, %conv28.3.i.1
  %arrayidx22.i1076.1 = getelementptr inbounds ptr, ptr %141, i64 %idxprom21.i1055.1
  %477 = load ptr, ptr %arrayidx22.i1076.1, align 8
  %arrayidx27.i1079.1 = getelementptr inbounds i16, ptr %477, i64 %idxprom26.i.1
  %478 = load i16, ptr %arrayidx27.i1079.1, align 2
  %conv28.i1080.1 = zext i16 %478 to i32
  %arrayidx22.1.i1083.1 = getelementptr inbounds ptr, ptr %141, i64 %idxprom21.1.i1057.1
  %479 = load ptr, ptr %arrayidx22.1.i1083.1, align 8
  %arrayidx27.1.i1086.1 = getelementptr inbounds i16, ptr %479, i64 %idxprom26.1.i.1
  %480 = load i16, ptr %arrayidx27.1.i1086.1, align 2
  %conv28.1.i1087.1 = zext i16 %480 to i32
  %add29.1.i1088.1 = add nuw nsw i32 %conv28.1.i1087.1, %conv28.i1080.1
  %arrayidx22.2.i1091.1 = getelementptr inbounds ptr, ptr %141, i64 %idxprom21.2.i1059.1
  %481 = load ptr, ptr %arrayidx22.2.i1091.1, align 8
  %arrayidx27.2.i1094.1 = getelementptr inbounds i16, ptr %481, i64 %idxprom26.2.i.1
  %482 = load i16, ptr %arrayidx27.2.i1094.1, align 2
  %conv28.2.i1095.1 = zext i16 %482 to i32
  %add29.2.i1096.1 = add nuw nsw i32 %add29.1.i1088.1, %conv28.2.i1095.1
  %arrayidx22.3.i1099.1 = getelementptr inbounds ptr, ptr %141, i64 %idxprom21.3.i1061.1
  %483 = load ptr, ptr %arrayidx22.3.i1099.1, align 8
  %arrayidx27.3.i1102.1 = getelementptr inbounds i16, ptr %483, i64 %idxprom26.3.i.1
  br label %if.end35.sink.split.i1103.1

if.end35.sink.split.i1103.1:                      ; preds = %for.end32.i1072.1, %for.end.i1110.1
  %pred.11386.in.in.1 = phi i32 [ %add29.3.i.1, %for.end32.i1072.1 ], [ %450, %for.end.i1110.1 ]
  %arrayidx27.3.sink.i1104.1 = phi ptr [ %arrayidx27.3.i1102.1, %for.end32.i1072.1 ], [ %arrayidx7.3.i1124.1, %for.end.i1110.1 ]
  %add29.2.sink.i1105.1 = phi i32 [ %add29.2.i1096.1, %for.end32.i1072.1 ], [ %add9.2.i1123.1, %for.end.i1110.1 ]
  %pred.11386.in.1 = add nuw nsw i32 %pred.11386.in.in.1, 2
  %pred.11386.1 = lshr i32 %pred.11386.in.1, 2
  %484 = load i16, ptr %arrayidx27.3.sink.i1104.1, align 2
  %conv28.3.i1106.1 = zext i16 %484 to i32
  %add29.3.i1107.1 = add nuw nsw i32 %add29.2.sink.i1105.1, 2
  %add33.i1108.1 = add nuw nsw i32 %add29.3.i1107.1, %conv28.3.i1106.1
  %shr34.i1109.1 = lshr i32 %add33.i1108.1, 2
  br label %sw.epilog.1

sw.bb123.1:                                       ; preds = %sw.epilog
  %add126.1 = add nuw nsw i32 %conv106.1, 1
  %485 = load i64, ptr %146, align 4
  br i1 %tobool.not.i1241, label %if.end.thread.i.1, label %if.end.i.1

if.end.i.1:                                       ; preds = %sw.bb123.1
  %486 = zext i8 %355 to i64
  %idxprom.i.1 = ashr i64 %485, 48
  %arrayidx.i.1 = getelementptr inbounds ptr, ptr %140, i64 %idxprom.i.1
  %487 = load ptr, ptr %arrayidx.i.1, align 8
  %488 = getelementptr i16, ptr %487, i64 %486
  %sh.diff.i.1 = lshr i64 %485, 16
  %tr.sh.diff.i.1 = trunc i64 %sh.diff.i.1 to i32
  %conv.i.1 = ashr i32 %tr.sh.diff.i.1, 16
  %489 = sext i32 %conv.i.1 to i64
  %arrayidx3.i.1 = getelementptr i16, ptr %488, i64 %489
  %490 = load <4 x i16>, ptr %arrayidx3.i.1, align 2
  %491 = zext <4 x i16> %490 to <4 x i32>
  %492 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %491)
  br i1 %tobool2.i, label %if.then35.i.1, label %if.end28.i.1

if.then35.i.1:                                    ; preds = %if.end.i.1
  %add36.i.1 = add nuw nsw i32 %492, 2
  %shr37.i.1 = lshr i32 %add36.i.1, 2
  br label %if.end.i988.1

if.end.thread.i.1:                                ; preds = %sw.bb123.1
  br i1 %tobool2.i, label %sw.epilog.1, label %if.end28.i.1

if.end28.i.1:                                     ; preds = %if.end.thread.i.1, %if.end.i.1
  %s0.174.ph.i.1 = phi i32 [ 0, %if.end.thread.i.1 ], [ %492, %if.end.i.1 ]
  %493 = zext nneg i32 %add126.1 to i64
  %arrayidx14.i.1 = getelementptr inbounds %struct.pix_pos, ptr %left, i64 %493
  %pos_y15.i.1 = getelementptr inbounds i8, ptr %arrayidx14.i.1, i64 14
  %494 = load i16, ptr %pos_y15.i.1, align 2
  %idxprom16.i.1 = sext i16 %494 to i64
  %arrayidx17.i.1 = getelementptr inbounds ptr, ptr %140, i64 %idxprom16.i.1
  %495 = load ptr, ptr %arrayidx17.i.1, align 8
  %pos_x20.i.1 = getelementptr inbounds i8, ptr %arrayidx14.i.1, i64 12
  %496 = load i16, ptr %pos_x20.i.1, align 4
  %idxprom21.i.1 = sext i16 %496 to i64
  %arrayidx22.i.1 = getelementptr inbounds i16, ptr %495, i64 %idxprom21.i.1
  %497 = load i16, ptr %arrayidx22.i.1, align 2
  %conv23.i.1 = zext i16 %497 to i32
  %pos_y15.1.i.1 = getelementptr i8, ptr %arrayidx14.i.1, i64 30
  %498 = load i16, ptr %pos_y15.1.i.1, align 2
  %idxprom16.1.i.1 = sext i16 %498 to i64
  %arrayidx17.1.i.1 = getelementptr inbounds ptr, ptr %140, i64 %idxprom16.1.i.1
  %499 = load ptr, ptr %arrayidx17.1.i.1, align 8
  %pos_x20.1.i.1 = getelementptr i8, ptr %arrayidx14.i.1, i64 28
  %500 = load i16, ptr %pos_x20.1.i.1, align 4
  %idxprom21.1.i.1 = sext i16 %500 to i64
  %arrayidx22.1.i.1 = getelementptr inbounds i16, ptr %499, i64 %idxprom21.1.i.1
  %501 = load i16, ptr %arrayidx22.1.i.1, align 2
  %conv23.1.i.1 = zext i16 %501 to i32
  %add24.1.i.1 = add nuw nsw i32 %conv23.1.i.1, %conv23.i.1
  %pos_y15.2.i.1 = getelementptr i8, ptr %arrayidx14.i.1, i64 46
  %502 = load i16, ptr %pos_y15.2.i.1, align 2
  %idxprom16.2.i.1 = sext i16 %502 to i64
  %arrayidx17.2.i.1 = getelementptr inbounds ptr, ptr %140, i64 %idxprom16.2.i.1
  %503 = load ptr, ptr %arrayidx17.2.i.1, align 8
  %pos_x20.2.i.1 = getelementptr i8, ptr %arrayidx14.i.1, i64 44
  %504 = load i16, ptr %pos_x20.2.i.1, align 4
  %idxprom21.2.i.1 = sext i16 %504 to i64
  %arrayidx22.2.i.1 = getelementptr inbounds i16, ptr %503, i64 %idxprom21.2.i.1
  %505 = load i16, ptr %arrayidx22.2.i.1, align 2
  %conv23.2.i.1 = zext i16 %505 to i32
  %add24.2.i.1 = add nuw nsw i32 %add24.1.i.1, %conv23.2.i.1
  %pos_y15.3.i.1 = getelementptr i8, ptr %arrayidx14.i.1, i64 62
  %506 = load i16, ptr %pos_y15.3.i.1, align 2
  %idxprom16.3.i.1 = sext i16 %506 to i64
  %arrayidx17.3.i.1 = getelementptr inbounds ptr, ptr %140, i64 %idxprom16.3.i.1
  %507 = load ptr, ptr %arrayidx17.3.i.1, align 8
  %pos_x20.3.i.1 = getelementptr i8, ptr %arrayidx14.i.1, i64 60
  %508 = load i16, ptr %pos_x20.3.i.1, align 4
  %idxprom21.3.i.1 = sext i16 %508 to i64
  %arrayidx22.3.i.1 = getelementptr inbounds i16, ptr %507, i64 %idxprom21.3.i.1
  %509 = load i16, ptr %arrayidx22.3.i.1, align 2
  %conv23.3.i.1 = zext i16 %509 to i32
  %add24.3.i.1 = add nuw nsw i32 %add24.2.i.1, %conv23.3.i.1
  br i1 %tobool.not.i1241, label %if.end.thread.i1052.1, label %if.then31.i.1

if.then31.i.1:                                    ; preds = %if.end28.i.1
  %add32.i.1 = add nuw nsw i32 %s0.174.ph.i.1, 4
  %add33.i.1 = add nuw nsw i32 %add32.i.1, %add24.3.i.1
  %shr.i.1 = lshr i32 %add33.i.1, 3
  %.pre1702 = ashr i64 %485, 48
  %.pre1921 = zext i8 %355 to i64
  %.pre1923 = lshr i64 %485, 16
  %.pre1924 = trunc i64 %.pre1923 to i32
  %.pre1925 = ashr i32 %.pre1924, 16
  %.pre1926 = sext i32 %.pre1925 to i64
  br label %if.end.i988.1

if.end.i988.1:                                    ; preds = %if.then31.i.1, %if.then35.i.1
  %.pre-phi1927 = phi i64 [ %.pre1926, %if.then31.i.1 ], [ %489, %if.then35.i.1 ]
  %.pre-phi1922 = phi i64 [ %.pre1921, %if.then31.i.1 ], [ %486, %if.then35.i.1 ]
  %idxprom.i989.1.pre-phi = phi i64 [ %.pre1702, %if.then31.i.1 ], [ %idxprom.i.1, %if.then35.i.1 ]
  %pred.0.1 = phi i32 [ %shr.i.1, %if.then31.i.1 ], [ %shr37.i.1, %if.then35.i.1 ]
  %arrayidx.i990.1 = getelementptr inbounds ptr, ptr %141, i64 %idxprom.i989.1.pre-phi
  %510 = load ptr, ptr %arrayidx.i990.1, align 8
  %511 = getelementptr i16, ptr %510, i64 %.pre-phi1922
  %arrayidx3.i994.1 = getelementptr i16, ptr %511, i64 %.pre-phi1927
  %512 = load i16, ptr %arrayidx3.i994.1, align 2
  %conv4.i995.1 = zext i16 %512 to i32
  %513 = getelementptr i8, ptr %511, i64 2
  %arrayidx3.1.i996.1 = getelementptr i16, ptr %513, i64 %.pre-phi1927
  %514 = load i16, ptr %arrayidx3.1.i996.1, align 2
  %conv4.1.i997.1 = zext i16 %514 to i32
  %add5.1.i998.1 = add nuw nsw i32 %conv4.1.i997.1, %conv4.i995.1
  %515 = getelementptr i8, ptr %511, i64 4
  %arrayidx3.2.i999.1 = getelementptr i16, ptr %515, i64 %.pre-phi1927
  %516 = load i16, ptr %arrayidx3.2.i999.1, align 2
  %conv4.2.i1000.1 = zext i16 %516 to i32
  %add5.2.i1001.1 = add nuw nsw i32 %add5.1.i998.1, %conv4.2.i1000.1
  %517 = getelementptr i8, ptr %511, i64 6
  %arrayidx3.3.i1002.1 = getelementptr i16, ptr %517, i64 %.pre-phi1927
  %518 = load i16, ptr %arrayidx3.3.i1002.1, align 2
  %conv4.3.i1003.1 = zext i16 %518 to i32
  %add5.3.i1004.1 = add nuw nsw i32 %add5.2.i1001.1, %conv4.3.i1003.1
  br i1 %tobool2.i, label %if.then35.i1049.1, label %if.end.i988.1.if.end28.i1006.1_crit_edge

if.end.i988.1.if.end28.i1006.1_crit_edge:         ; preds = %if.end.i988.1
  %.phi.trans.insert1703 = zext nneg i32 %add126.1 to i64
  %arrayidx14.i1008.1.phi.trans.insert = getelementptr inbounds %struct.pix_pos, ptr %left, i64 %.phi.trans.insert1703
  %pos_y15.i1009.1.phi.trans.insert = getelementptr inbounds i8, ptr %arrayidx14.i1008.1.phi.trans.insert, i64 14
  %.pre1704 = load i16, ptr %pos_y15.i1009.1.phi.trans.insert, align 2
  %pos_x20.i1012.1.phi.trans.insert = getelementptr inbounds i8, ptr %arrayidx14.i1008.1.phi.trans.insert, i64 12
  %.pre1707 = load i16, ptr %pos_x20.i1012.1.phi.trans.insert, align 4
  %pos_y15.1.i1016.1.phi.trans.insert = getelementptr i8, ptr %arrayidx14.i1008.1.phi.trans.insert, i64 30
  %.pre1710 = load i16, ptr %pos_y15.1.i1016.1.phi.trans.insert, align 2
  %pos_x20.1.i1019.1.phi.trans.insert = getelementptr i8, ptr %arrayidx14.i1008.1.phi.trans.insert, i64 28
  %.pre1713 = load i16, ptr %pos_x20.1.i1019.1.phi.trans.insert, align 4
  %pos_y15.2.i1024.1.phi.trans.insert = getelementptr i8, ptr %arrayidx14.i1008.1.phi.trans.insert, i64 46
  %.pre1716 = load i16, ptr %pos_y15.2.i1024.1.phi.trans.insert, align 2
  %pos_x20.2.i1027.1.phi.trans.insert = getelementptr i8, ptr %arrayidx14.i1008.1.phi.trans.insert, i64 44
  %.pre1719 = load i16, ptr %pos_x20.2.i1027.1.phi.trans.insert, align 4
  %pos_y15.3.i1032.1.phi.trans.insert = getelementptr i8, ptr %arrayidx14.i1008.1.phi.trans.insert, i64 62
  %.pre1722 = load i16, ptr %pos_y15.3.i1032.1.phi.trans.insert, align 2
  %pos_x20.3.i1035.1.phi.trans.insert = getelementptr i8, ptr %arrayidx14.i1008.1.phi.trans.insert, i64 60
  %.pre1725 = load i16, ptr %pos_x20.3.i1035.1.phi.trans.insert, align 4
  %.pre1849 = sext i16 %.pre1704 to i64
  %.pre1850 = sext i16 %.pre1707 to i64
  %.pre1851 = sext i16 %.pre1710 to i64
  %.pre1852 = sext i16 %.pre1713 to i64
  %.pre1853 = sext i16 %.pre1716 to i64
  %.pre1854 = sext i16 %.pre1719 to i64
  %.pre1855 = sext i16 %.pre1722 to i64
  %.pre1856 = sext i16 %.pre1725 to i64
  br label %if.end28.i1006.1

if.then35.i1049.1:                                ; preds = %if.end.i988.1
  %add36.i1050.1 = add nuw nsw i32 %add5.3.i1004.1, 2
  %shr37.i1051.1 = lshr i32 %add36.i1050.1, 2
  br label %sw.epilog.1

if.end.thread.i1052.1:                            ; preds = %if.end28.i.1
  %add41.i.1 = add nuw nsw i32 %add24.3.i.1, 2
  %shr42.i.1 = lshr i32 %add41.i.1, 2
  br label %if.end28.i1006.1

if.end28.i1006.1:                                 ; preds = %if.end.i988.1.if.end28.i1006.1_crit_edge, %if.end.thread.i1052.1
  %idxprom21.3.i1036.1.pre-phi = phi i64 [ %.pre1856, %if.end.i988.1.if.end28.i1006.1_crit_edge ], [ %idxprom21.3.i.1, %if.end.thread.i1052.1 ]
  %idxprom16.3.i1033.1.pre-phi = phi i64 [ %.pre1855, %if.end.i988.1.if.end28.i1006.1_crit_edge ], [ %idxprom16.3.i.1, %if.end.thread.i1052.1 ]
  %idxprom21.2.i1028.1.pre-phi = phi i64 [ %.pre1854, %if.end.i988.1.if.end28.i1006.1_crit_edge ], [ %idxprom21.2.i.1, %if.end.thread.i1052.1 ]
  %idxprom16.2.i1025.1.pre-phi = phi i64 [ %.pre1853, %if.end.i988.1.if.end28.i1006.1_crit_edge ], [ %idxprom16.2.i.1, %if.end.thread.i1052.1 ]
  %idxprom21.1.i1020.1.pre-phi = phi i64 [ %.pre1852, %if.end.i988.1.if.end28.i1006.1_crit_edge ], [ %idxprom21.1.i.1, %if.end.thread.i1052.1 ]
  %idxprom16.1.i1017.1.pre-phi = phi i64 [ %.pre1851, %if.end.i988.1.if.end28.i1006.1_crit_edge ], [ %idxprom16.1.i.1, %if.end.thread.i1052.1 ]
  %idxprom21.i1013.1.pre-phi = phi i64 [ %.pre1850, %if.end.i988.1.if.end28.i1006.1_crit_edge ], [ %idxprom21.i.1, %if.end.thread.i1052.1 ]
  %idxprom16.i1010.1.pre-phi = phi i64 [ %.pre1849, %if.end.i988.1.if.end28.i1006.1_crit_edge ], [ %idxprom16.i.1, %if.end.thread.i1052.1 ]
  %pred.01381.1 = phi i32 [ %pred.0.1, %if.end.i988.1.if.end28.i1006.1_crit_edge ], [ %shr42.i.1, %if.end.thread.i1052.1 ]
  %s0.174.ph.i1007.1 = phi i32 [ %add5.3.i1004.1, %if.end.i988.1.if.end28.i1006.1_crit_edge ], [ 0, %if.end.thread.i1052.1 ]
  %arrayidx17.i1011.1 = getelementptr inbounds ptr, ptr %141, i64 %idxprom16.i1010.1.pre-phi
  %519 = load ptr, ptr %arrayidx17.i1011.1, align 8
  %arrayidx22.i1014.1 = getelementptr inbounds i16, ptr %519, i64 %idxprom21.i1013.1.pre-phi
  %520 = load i16, ptr %arrayidx22.i1014.1, align 2
  %conv23.i1015.1 = zext i16 %520 to i32
  %arrayidx17.1.i1018.1 = getelementptr inbounds ptr, ptr %141, i64 %idxprom16.1.i1017.1.pre-phi
  %521 = load ptr, ptr %arrayidx17.1.i1018.1, align 8
  %arrayidx22.1.i1021.1 = getelementptr inbounds i16, ptr %521, i64 %idxprom21.1.i1020.1.pre-phi
  %522 = load i16, ptr %arrayidx22.1.i1021.1, align 2
  %conv23.1.i1022.1 = zext i16 %522 to i32
  %add24.1.i1023.1 = add nuw nsw i32 %conv23.1.i1022.1, %conv23.i1015.1
  %arrayidx17.2.i1026.1 = getelementptr inbounds ptr, ptr %141, i64 %idxprom16.2.i1025.1.pre-phi
  %523 = load ptr, ptr %arrayidx17.2.i1026.1, align 8
  %arrayidx22.2.i1029.1 = getelementptr inbounds i16, ptr %523, i64 %idxprom21.2.i1028.1.pre-phi
  %524 = load i16, ptr %arrayidx22.2.i1029.1, align 2
  %conv23.2.i1030.1 = zext i16 %524 to i32
  %add24.2.i1031.1 = add nuw nsw i32 %add24.1.i1023.1, %conv23.2.i1030.1
  %arrayidx17.3.i1034.1 = getelementptr inbounds ptr, ptr %141, i64 %idxprom16.3.i1033.1.pre-phi
  %525 = load ptr, ptr %arrayidx17.3.i1034.1, align 8
  %arrayidx22.3.i1037.1 = getelementptr inbounds i16, ptr %525, i64 %idxprom21.3.i1036.1.pre-phi
  %526 = load i16, ptr %arrayidx22.3.i1037.1, align 2
  %conv23.3.i1038.1 = zext i16 %526 to i32
  %add24.3.i1039.1 = add nuw nsw i32 %add24.2.i1031.1, %conv23.3.i1038.1
  br i1 %tobool.not.i1241, label %if.then40.i1046.1, label %if.then31.i1040.1

if.then31.i1040.1:                                ; preds = %if.end28.i1006.1
  %add32.i1041.1 = add nuw nsw i32 %s0.174.ph.i1007.1, 4
  %add33.i1042.1 = add nuw nsw i32 %add32.i1041.1, %add24.3.i1039.1
  %shr.i1043.1 = lshr i32 %add33.i1042.1, 3
  br label %sw.epilog.1

if.then40.i1046.1:                                ; preds = %if.end28.i1006.1
  %add41.i1047.1 = add nuw nsw i32 %add24.3.i1039.1, 2
  %shr42.i1048.1 = lshr i32 %add41.i1047.1, 2
  br label %sw.epilog.1

sw.epilog.1:                                      ; preds = %if.then40.i1046.1, %if.then31.i1040.1, %if.then35.i1049.1, %if.end.thread.i.1, %if.end35.sink.split.i1103.1, %if.else.i.1, %if.end35.sink.split.i1218.1, %if.else.i1128.1, %if.then40.i1368.1, %if.then31.i1362.1, %if.then35.i1371.1, %if.end.thread.i1306.1, %sw.epilog
  %pred.4.1 = phi i32 [ %356, %sw.epilog ], [ %pred.0.1, %if.then35.i1049.1 ], [ %pred.01381.1, %if.then40.i1046.1 ], [ %pred.01381.1, %if.then31.i1040.1 ], [ %pred.11386.1, %if.end35.sink.split.i1103.1 ], [ %pred.21399.1, %if.end35.sink.split.i1218.1 ], [ %pred.3.1, %if.then35.i1371.1 ], [ %pred.31414.1, %if.then40.i1368.1 ], [ %pred.31414.1, %if.then31.i1362.1 ], [ %356, %if.end.thread.i.1 ], [ %356, %if.else.i.1 ], [ %356, %if.else.i1128.1 ], [ %356, %if.end.thread.i1306.1 ]
  %pred1.4.1 = phi i32 [ %357, %sw.epilog ], [ %shr37.i1051.1, %if.then35.i1049.1 ], [ %shr42.i1048.1, %if.then40.i1046.1 ], [ %shr.i1043.1, %if.then31.i1040.1 ], [ %shr34.i1109.1, %if.end35.sink.split.i1103.1 ], [ %shr34.i1224.1, %if.end35.sink.split.i1218.1 ], [ %shr37.i1373.1, %if.then35.i1371.1 ], [ %shr42.i1370.1, %if.then40.i1368.1 ], [ %shr.i1365.1, %if.then31.i1362.1 ], [ %357, %if.end.thread.i.1 ], [ %357, %if.else.i.1 ], [ %357, %if.else.i1128.1 ], [ %357, %if.end.thread.i1306.1 ]
  %conv161.1 = trunc i32 %pred.4.1 to i16
  %conv166.1 = trunc i32 %pred1.4.1 to i16
  %527 = zext i8 %355 to i64
  %528 = zext i8 %354 to i64
  %arrayidx163.11579 = getelementptr inbounds ptr, ptr %143, i64 %528
  %arrayidx168.11580 = getelementptr inbounds ptr, ptr %144, i64 %528
  %529 = load ptr, ptr %arrayidx163.11579, align 8
  %arrayidx165.11581 = getelementptr inbounds i16, ptr %529, i64 %527
  store i16 %conv161.1, ptr %arrayidx165.11581, align 2
  %530 = load ptr, ptr %arrayidx168.11580, align 8
  %arrayidx170.11582 = getelementptr inbounds i16, ptr %530, i64 %527
  store i16 %conv166.1, ptr %arrayidx170.11582, align 2
  %indvars.iv.next1558.11583 = add nuw nsw i64 %527, 1
  %531 = load ptr, ptr %arrayidx163.11579, align 8
  %arrayidx165.1.11584 = getelementptr inbounds i16, ptr %531, i64 %indvars.iv.next1558.11583
  store i16 %conv161.1, ptr %arrayidx165.1.11584, align 2
  %532 = load ptr, ptr %arrayidx168.11580, align 8
  %arrayidx170.1.11585 = getelementptr inbounds i16, ptr %532, i64 %indvars.iv.next1558.11583
  store i16 %conv166.1, ptr %arrayidx170.1.11585, align 2
  %indvars.iv.next1558.1.11586 = add nuw nsw i64 %527, 2
  %533 = load ptr, ptr %arrayidx163.11579, align 8
  %arrayidx165.2.11587 = getelementptr inbounds i16, ptr %533, i64 %indvars.iv.next1558.1.11586
  store i16 %conv161.1, ptr %arrayidx165.2.11587, align 2
  %534 = load ptr, ptr %arrayidx168.11580, align 8
  %arrayidx170.2.11588 = getelementptr inbounds i16, ptr %534, i64 %indvars.iv.next1558.1.11586
  store i16 %conv166.1, ptr %arrayidx170.2.11588, align 2
  %indvars.iv.next1558.2.11589 = add nuw nsw i64 %527, 3
  %535 = load ptr, ptr %arrayidx163.11579, align 8
  %arrayidx165.3.11590 = getelementptr inbounds i16, ptr %535, i64 %indvars.iv.next1558.2.11589
  store i16 %conv161.1, ptr %arrayidx165.3.11590, align 2
  %536 = load ptr, ptr %arrayidx168.11580, align 8
  %arrayidx170.3.11591 = getelementptr inbounds i16, ptr %536, i64 %indvars.iv.next1558.2.11589
  store i16 %conv166.1, ptr %arrayidx170.3.11591, align 2
  %indvars.iv.next1563.11592 = add nuw nsw i64 %528, 1
  %arrayidx163.1.1 = getelementptr inbounds ptr, ptr %143, i64 %indvars.iv.next1563.11592
  %arrayidx168.1.1 = getelementptr inbounds ptr, ptr %144, i64 %indvars.iv.next1563.11592
  %537 = load ptr, ptr %arrayidx163.1.1, align 8
  %arrayidx165.11567.1 = getelementptr inbounds i16, ptr %537, i64 %527
  store i16 %conv161.1, ptr %arrayidx165.11567.1, align 2
  %538 = load ptr, ptr %arrayidx168.1.1, align 8
  %arrayidx170.11568.1 = getelementptr inbounds i16, ptr %538, i64 %527
  store i16 %conv166.1, ptr %arrayidx170.11568.1, align 2
  %539 = load ptr, ptr %arrayidx163.1.1, align 8
  %arrayidx165.1.1.1 = getelementptr inbounds i16, ptr %539, i64 %indvars.iv.next1558.11583
  store i16 %conv161.1, ptr %arrayidx165.1.1.1, align 2
  %540 = load ptr, ptr %arrayidx168.1.1, align 8
  %arrayidx170.1.1.1 = getelementptr inbounds i16, ptr %540, i64 %indvars.iv.next1558.11583
  store i16 %conv166.1, ptr %arrayidx170.1.1.1, align 2
  %541 = load ptr, ptr %arrayidx163.1.1, align 8
  %arrayidx165.2.1.1 = getelementptr inbounds i16, ptr %541, i64 %indvars.iv.next1558.1.11586
  store i16 %conv161.1, ptr %arrayidx165.2.1.1, align 2
  %542 = load ptr, ptr %arrayidx168.1.1, align 8
  %arrayidx170.2.1.1 = getelementptr inbounds i16, ptr %542, i64 %indvars.iv.next1558.1.11586
  store i16 %conv166.1, ptr %arrayidx170.2.1.1, align 2
  %543 = load ptr, ptr %arrayidx163.1.1, align 8
  %arrayidx165.3.1.1 = getelementptr inbounds i16, ptr %543, i64 %indvars.iv.next1558.2.11589
  store i16 %conv161.1, ptr %arrayidx165.3.1.1, align 2
  %544 = load ptr, ptr %arrayidx168.1.1, align 8
  %arrayidx170.3.1.1 = getelementptr inbounds i16, ptr %544, i64 %indvars.iv.next1558.2.11589
  store i16 %conv166.1, ptr %arrayidx170.3.1.1, align 2
  %indvars.iv.next1563.1.1 = add nuw nsw i64 %528, 2
  %arrayidx163.2.1 = getelementptr inbounds ptr, ptr %143, i64 %indvars.iv.next1563.1.1
  %arrayidx168.2.1 = getelementptr inbounds ptr, ptr %144, i64 %indvars.iv.next1563.1.1
  %545 = load ptr, ptr %arrayidx163.2.1, align 8
  %arrayidx165.21570.1 = getelementptr inbounds i16, ptr %545, i64 %527
  store i16 %conv161.1, ptr %arrayidx165.21570.1, align 2
  %546 = load ptr, ptr %arrayidx168.2.1, align 8
  %arrayidx170.21571.1 = getelementptr inbounds i16, ptr %546, i64 %527
  store i16 %conv166.1, ptr %arrayidx170.21571.1, align 2
  %547 = load ptr, ptr %arrayidx163.2.1, align 8
  %arrayidx165.1.2.1 = getelementptr inbounds i16, ptr %547, i64 %indvars.iv.next1558.11583
  store i16 %conv161.1, ptr %arrayidx165.1.2.1, align 2
  %548 = load ptr, ptr %arrayidx168.2.1, align 8
  %arrayidx170.1.2.1 = getelementptr inbounds i16, ptr %548, i64 %indvars.iv.next1558.11583
  store i16 %conv166.1, ptr %arrayidx170.1.2.1, align 2
  %549 = load ptr, ptr %arrayidx163.2.1, align 8
  %arrayidx165.2.2.1 = getelementptr inbounds i16, ptr %549, i64 %indvars.iv.next1558.1.11586
  store i16 %conv161.1, ptr %arrayidx165.2.2.1, align 2
  %550 = load ptr, ptr %arrayidx168.2.1, align 8
  %arrayidx170.2.2.1 = getelementptr inbounds i16, ptr %550, i64 %indvars.iv.next1558.1.11586
  store i16 %conv166.1, ptr %arrayidx170.2.2.1, align 2
  %551 = load ptr, ptr %arrayidx163.2.1, align 8
  %arrayidx165.3.2.1 = getelementptr inbounds i16, ptr %551, i64 %indvars.iv.next1558.2.11589
  store i16 %conv161.1, ptr %arrayidx165.3.2.1, align 2
  %552 = load ptr, ptr %arrayidx168.2.1, align 8
  %arrayidx170.3.2.1 = getelementptr inbounds i16, ptr %552, i64 %indvars.iv.next1558.2.11589
  store i16 %conv166.1, ptr %arrayidx170.3.2.1, align 2
  %indvars.iv.next1563.2.1 = add nuw nsw i64 %528, 3
  %arrayidx163.3.1 = getelementptr inbounds ptr, ptr %143, i64 %indvars.iv.next1563.2.1
  %arrayidx168.3.1 = getelementptr inbounds ptr, ptr %144, i64 %indvars.iv.next1563.2.1
  %553 = load ptr, ptr %arrayidx163.3.1, align 8
  %arrayidx165.31573.1 = getelementptr inbounds i16, ptr %553, i64 %527
  store i16 %conv161.1, ptr %arrayidx165.31573.1, align 2
  %554 = load ptr, ptr %arrayidx168.3.1, align 8
  %arrayidx170.31574.1 = getelementptr inbounds i16, ptr %554, i64 %527
  store i16 %conv166.1, ptr %arrayidx170.31574.1, align 2
  %555 = load ptr, ptr %arrayidx163.3.1, align 8
  %arrayidx165.1.3.1 = getelementptr inbounds i16, ptr %555, i64 %indvars.iv.next1558.11583
  store i16 %conv161.1, ptr %arrayidx165.1.3.1, align 2
  %556 = load ptr, ptr %arrayidx168.3.1, align 8
  %arrayidx170.1.3.1 = getelementptr inbounds i16, ptr %556, i64 %indvars.iv.next1558.11583
  store i16 %conv166.1, ptr %arrayidx170.1.3.1, align 2
  %557 = load ptr, ptr %arrayidx163.3.1, align 8
  %arrayidx165.2.3.1 = getelementptr inbounds i16, ptr %557, i64 %indvars.iv.next1558.1.11586
  store i16 %conv161.1, ptr %arrayidx165.2.3.1, align 2
  %558 = load ptr, ptr %arrayidx168.3.1, align 8
  %arrayidx170.2.3.1 = getelementptr inbounds i16, ptr %558, i64 %indvars.iv.next1558.1.11586
  store i16 %conv166.1, ptr %arrayidx170.2.3.1, align 2
  %559 = load ptr, ptr %arrayidx163.3.1, align 8
  %arrayidx165.3.3.1 = getelementptr inbounds i16, ptr %559, i64 %indvars.iv.next1558.2.11589
  store i16 %conv161.1, ptr %arrayidx165.3.3.1, align 2
  %560 = load ptr, ptr %arrayidx168.3.1, align 8
  %arrayidx170.3.3.1 = getelementptr inbounds i16, ptr %560, i64 %indvars.iv.next1558.2.11589
  store i16 %conv166.1, ptr %arrayidx170.3.3.1, align 2
  %arrayidx105.2 = getelementptr inbounds [3 x [8 x [4 x i8]]], ptr @subblk_offset_y, i64 0, i64 %idxprom100, i64 %indvars.iv1623, i64 2
  %561 = load i8, ptr %arrayidx105.2, align 2
  %conv106.2 = zext i8 %561 to i32
  %arrayidx112.2 = getelementptr inbounds [3 x [8 x [4 x i8]]], ptr @subblk_offset_x, i64 0, i64 %idxprom100, i64 %indvars.iv1623, i64 2
  %562 = load i8, ptr %arrayidx112.2, align 2
  %563 = load i32, ptr %arrayidx114, align 4
  %564 = load i32, ptr %arrayidx116, align 4
  %arrayidx122.2 = getelementptr inbounds [3 x [4 x [4 x i32]]], ptr @intrapred_chroma_dc.block_pos, i64 0, i64 %idxprom100, i64 %indvars.iv1623, i64 2
  %565 = load i32, ptr %arrayidx122.2, align 8
  switch i32 %565, label %sw.epilog.2 [
    i32 0, label %sw.bb123.2
    i32 1, label %sw.bb130.2
    i32 2, label %sw.bb137.2
    i32 3, label %sw.bb144.2
  ]

sw.bb144.2:                                       ; preds = %sw.epilog.1
  %add147.2 = add nuw nsw i32 %conv106.2, 1
  %566 = load i64, ptr %146, align 4
  br i1 %tobool.not.i1241, label %if.end.thread.i1306.2, label %if.end.i1242.2

if.end.i1242.2:                                   ; preds = %sw.bb144.2
  %567 = zext i8 %562 to i64
  %idxprom.i1243.2 = ashr i64 %566, 48
  %arrayidx.i1244.2 = getelementptr inbounds ptr, ptr %140, i64 %idxprom.i1243.2
  %568 = load ptr, ptr %arrayidx.i1244.2, align 8
  %569 = getelementptr i16, ptr %568, i64 %567
  %sh.diff.i1245.2 = lshr i64 %566, 16
  %tr.sh.diff.i1246.2 = trunc i64 %sh.diff.i1245.2 to i32
  %conv.i1247.2 = ashr i32 %tr.sh.diff.i1246.2, 16
  %570 = sext i32 %conv.i1247.2 to i64
  %arrayidx3.i1248.2 = getelementptr i16, ptr %569, i64 %570
  %571 = load <4 x i16>, ptr %arrayidx3.i1248.2, align 2
  %572 = zext <4 x i16> %571 to <4 x i32>
  %573 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %572)
  br i1 %tobool6.not.i1259, label %if.then35.i1303.2, label %if.end28.i1260.2

if.then35.i1303.2:                                ; preds = %if.end.i1242.2
  %add36.i1304.2 = add nuw nsw i32 %573, 2
  %shr37.i1305.2 = lshr i32 %add36.i1304.2, 2
  br label %if.end.i1310.2

if.end.thread.i1306.2:                            ; preds = %sw.bb144.2
  br i1 %tobool6.not.i1259, label %sw.epilog.2, label %if.end28.i1260.2

if.end28.i1260.2:                                 ; preds = %if.end.thread.i1306.2, %if.end.i1242.2
  %s0.174.ph.i1261.2 = phi i32 [ 0, %if.end.thread.i1306.2 ], [ %573, %if.end.i1242.2 ]
  %574 = zext nneg i32 %add147.2 to i64
  %arrayidx14.i1262.2 = getelementptr inbounds %struct.pix_pos, ptr %left, i64 %574
  %pos_y15.i1263.2 = getelementptr inbounds i8, ptr %arrayidx14.i1262.2, i64 14
  %575 = load i16, ptr %pos_y15.i1263.2, align 2
  %idxprom16.i1264.2 = sext i16 %575 to i64
  %arrayidx17.i1265.2 = getelementptr inbounds ptr, ptr %140, i64 %idxprom16.i1264.2
  %576 = load ptr, ptr %arrayidx17.i1265.2, align 8
  %pos_x20.i1266.2 = getelementptr inbounds i8, ptr %arrayidx14.i1262.2, i64 12
  %577 = load i16, ptr %pos_x20.i1266.2, align 4
  %idxprom21.i1267.2 = sext i16 %577 to i64
  %arrayidx22.i1268.2 = getelementptr inbounds i16, ptr %576, i64 %idxprom21.i1267.2
  %578 = load i16, ptr %arrayidx22.i1268.2, align 2
  %conv23.i1269.2 = zext i16 %578 to i32
  %pos_y15.1.i1270.2 = getelementptr i8, ptr %arrayidx14.i1262.2, i64 30
  %579 = load i16, ptr %pos_y15.1.i1270.2, align 2
  %idxprom16.1.i1271.2 = sext i16 %579 to i64
  %arrayidx17.1.i1272.2 = getelementptr inbounds ptr, ptr %140, i64 %idxprom16.1.i1271.2
  %580 = load ptr, ptr %arrayidx17.1.i1272.2, align 8
  %pos_x20.1.i1273.2 = getelementptr i8, ptr %arrayidx14.i1262.2, i64 28
  %581 = load i16, ptr %pos_x20.1.i1273.2, align 4
  %idxprom21.1.i1274.2 = sext i16 %581 to i64
  %arrayidx22.1.i1275.2 = getelementptr inbounds i16, ptr %580, i64 %idxprom21.1.i1274.2
  %582 = load i16, ptr %arrayidx22.1.i1275.2, align 2
  %conv23.1.i1276.2 = zext i16 %582 to i32
  %add24.1.i1277.2 = add nuw nsw i32 %conv23.1.i1276.2, %conv23.i1269.2
  %pos_y15.2.i1278.2 = getelementptr i8, ptr %arrayidx14.i1262.2, i64 46
  %583 = load i16, ptr %pos_y15.2.i1278.2, align 2
  %idxprom16.2.i1279.2 = sext i16 %583 to i64
  %arrayidx17.2.i1280.2 = getelementptr inbounds ptr, ptr %140, i64 %idxprom16.2.i1279.2
  %584 = load ptr, ptr %arrayidx17.2.i1280.2, align 8
  %pos_x20.2.i1281.2 = getelementptr i8, ptr %arrayidx14.i1262.2, i64 44
  %585 = load i16, ptr %pos_x20.2.i1281.2, align 4
  %idxprom21.2.i1282.2 = sext i16 %585 to i64
  %arrayidx22.2.i1283.2 = getelementptr inbounds i16, ptr %584, i64 %idxprom21.2.i1282.2
  %586 = load i16, ptr %arrayidx22.2.i1283.2, align 2
  %conv23.2.i1284.2 = zext i16 %586 to i32
  %add24.2.i1285.2 = add nuw nsw i32 %add24.1.i1277.2, %conv23.2.i1284.2
  %pos_y15.3.i1286.2 = getelementptr i8, ptr %arrayidx14.i1262.2, i64 62
  %587 = load i16, ptr %pos_y15.3.i1286.2, align 2
  %idxprom16.3.i1287.2 = sext i16 %587 to i64
  %arrayidx17.3.i1288.2 = getelementptr inbounds ptr, ptr %140, i64 %idxprom16.3.i1287.2
  %588 = load ptr, ptr %arrayidx17.3.i1288.2, align 8
  %pos_x20.3.i1289.2 = getelementptr i8, ptr %arrayidx14.i1262.2, i64 60
  %589 = load i16, ptr %pos_x20.3.i1289.2, align 4
  %idxprom21.3.i1290.2 = sext i16 %589 to i64
  %arrayidx22.3.i1291.2 = getelementptr inbounds i16, ptr %588, i64 %idxprom21.3.i1290.2
  %590 = load i16, ptr %arrayidx22.3.i1291.2, align 2
  %conv23.3.i1292.2 = zext i16 %590 to i32
  %add24.3.i1293.2 = add nuw nsw i32 %add24.2.i1285.2, %conv23.3.i1292.2
  br i1 %tobool.not.i1241, label %if.end.thread.i1374.2, label %if.then31.i1294.2

if.then31.i1294.2:                                ; preds = %if.end28.i1260.2
  %add32.i1295.2 = add nuw nsw i32 %s0.174.ph.i1261.2, 4
  %add33.i1296.2 = add nuw nsw i32 %add32.i1295.2, %add24.3.i1293.2
  %shr.i1297.2 = lshr i32 %add33.i1296.2, 3
  %.pre1726 = ashr i64 %566, 48
  %.pre1913 = zext i8 %562 to i64
  %.pre1915 = lshr i64 %566, 16
  %.pre1916 = trunc i64 %.pre1915 to i32
  %.pre1917 = ashr i32 %.pre1916, 16
  %.pre1918 = sext i32 %.pre1917 to i64
  br label %if.end.i1310.2

if.end.i1310.2:                                   ; preds = %if.then31.i1294.2, %if.then35.i1303.2
  %.pre-phi1919 = phi i64 [ %.pre1918, %if.then31.i1294.2 ], [ %570, %if.then35.i1303.2 ]
  %.pre-phi1914 = phi i64 [ %.pre1913, %if.then31.i1294.2 ], [ %567, %if.then35.i1303.2 ]
  %idxprom.i1311.2.pre-phi = phi i64 [ %.pre1726, %if.then31.i1294.2 ], [ %idxprom.i1243.2, %if.then35.i1303.2 ]
  %pred.3.2 = phi i32 [ %shr.i1297.2, %if.then31.i1294.2 ], [ %shr37.i1305.2, %if.then35.i1303.2 ]
  %arrayidx.i1312.2 = getelementptr inbounds ptr, ptr %141, i64 %idxprom.i1311.2.pre-phi
  %591 = load ptr, ptr %arrayidx.i1312.2, align 8
  %592 = getelementptr i16, ptr %591, i64 %.pre-phi1914
  %arrayidx3.i1316.2 = getelementptr i16, ptr %592, i64 %.pre-phi1919
  %593 = load i16, ptr %arrayidx3.i1316.2, align 2
  %conv4.i1317.2 = zext i16 %593 to i32
  %594 = getelementptr i8, ptr %592, i64 2
  %arrayidx3.1.i1318.2 = getelementptr i16, ptr %594, i64 %.pre-phi1919
  %595 = load i16, ptr %arrayidx3.1.i1318.2, align 2
  %conv4.1.i1319.2 = zext i16 %595 to i32
  %add5.1.i1320.2 = add nuw nsw i32 %conv4.1.i1319.2, %conv4.i1317.2
  %596 = getelementptr i8, ptr %592, i64 4
  %arrayidx3.2.i1321.2 = getelementptr i16, ptr %596, i64 %.pre-phi1919
  %597 = load i16, ptr %arrayidx3.2.i1321.2, align 2
  %conv4.2.i1322.2 = zext i16 %597 to i32
  %add5.2.i1323.2 = add nuw nsw i32 %add5.1.i1320.2, %conv4.2.i1322.2
  %598 = getelementptr i8, ptr %592, i64 6
  %arrayidx3.3.i1324.2 = getelementptr i16, ptr %598, i64 %.pre-phi1919
  %599 = load i16, ptr %arrayidx3.3.i1324.2, align 2
  %conv4.3.i1325.2 = zext i16 %599 to i32
  %add5.3.i1326.2 = add nuw nsw i32 %add5.2.i1323.2, %conv4.3.i1325.2
  br i1 %tobool6.not.i1259, label %if.then35.i1371.2, label %if.end.i1310.2.if.end28.i1328.2_crit_edge

if.end.i1310.2.if.end28.i1328.2_crit_edge:        ; preds = %if.end.i1310.2
  %.phi.trans.insert1727 = zext nneg i32 %add147.2 to i64
  %arrayidx14.i1330.2.phi.trans.insert = getelementptr inbounds %struct.pix_pos, ptr %left, i64 %.phi.trans.insert1727
  %pos_y15.i1331.2.phi.trans.insert = getelementptr inbounds i8, ptr %arrayidx14.i1330.2.phi.trans.insert, i64 14
  %.pre1728 = load i16, ptr %pos_y15.i1331.2.phi.trans.insert, align 2
  %pos_x20.i1334.2.phi.trans.insert = getelementptr inbounds i8, ptr %arrayidx14.i1330.2.phi.trans.insert, i64 12
  %.pre1731 = load i16, ptr %pos_x20.i1334.2.phi.trans.insert, align 4
  %pos_y15.1.i1338.2.phi.trans.insert = getelementptr i8, ptr %arrayidx14.i1330.2.phi.trans.insert, i64 30
  %.pre1734 = load i16, ptr %pos_y15.1.i1338.2.phi.trans.insert, align 2
  %pos_x20.1.i1341.2.phi.trans.insert = getelementptr i8, ptr %arrayidx14.i1330.2.phi.trans.insert, i64 28
  %.pre1737 = load i16, ptr %pos_x20.1.i1341.2.phi.trans.insert, align 4
  %pos_y15.2.i1346.2.phi.trans.insert = getelementptr i8, ptr %arrayidx14.i1330.2.phi.trans.insert, i64 46
  %.pre1740 = load i16, ptr %pos_y15.2.i1346.2.phi.trans.insert, align 2
  %pos_x20.2.i1349.2.phi.trans.insert = getelementptr i8, ptr %arrayidx14.i1330.2.phi.trans.insert, i64 44
  %.pre1743 = load i16, ptr %pos_x20.2.i1349.2.phi.trans.insert, align 4
  %pos_y15.3.i1354.2.phi.trans.insert = getelementptr i8, ptr %arrayidx14.i1330.2.phi.trans.insert, i64 62
  %.pre1746 = load i16, ptr %pos_y15.3.i1354.2.phi.trans.insert, align 2
  %pos_x20.3.i1357.2.phi.trans.insert = getelementptr i8, ptr %arrayidx14.i1330.2.phi.trans.insert, i64 60
  %.pre1749 = load i16, ptr %pos_x20.3.i1357.2.phi.trans.insert, align 4
  %.pre1857 = sext i16 %.pre1728 to i64
  %.pre1858 = sext i16 %.pre1731 to i64
  %.pre1859 = sext i16 %.pre1734 to i64
  %.pre1860 = sext i16 %.pre1737 to i64
  %.pre1861 = sext i16 %.pre1740 to i64
  %.pre1862 = sext i16 %.pre1743 to i64
  %.pre1863 = sext i16 %.pre1746 to i64
  %.pre1864 = sext i16 %.pre1749 to i64
  br label %if.end28.i1328.2

if.then35.i1371.2:                                ; preds = %if.end.i1310.2
  %add36.i1372.2 = add nuw nsw i32 %add5.3.i1326.2, 2
  %shr37.i1373.2 = lshr i32 %add36.i1372.2, 2
  br label %sw.epilog.2

if.end.thread.i1374.2:                            ; preds = %if.end28.i1260.2
  %add41.i1301.2 = add nuw nsw i32 %add24.3.i1293.2, 2
  %shr42.i1302.2 = lshr i32 %add41.i1301.2, 2
  br label %if.end28.i1328.2

if.end28.i1328.2:                                 ; preds = %if.end.i1310.2.if.end28.i1328.2_crit_edge, %if.end.thread.i1374.2
  %idxprom21.3.i1358.2.pre-phi = phi i64 [ %.pre1864, %if.end.i1310.2.if.end28.i1328.2_crit_edge ], [ %idxprom21.3.i1290.2, %if.end.thread.i1374.2 ]
  %idxprom16.3.i1355.2.pre-phi = phi i64 [ %.pre1863, %if.end.i1310.2.if.end28.i1328.2_crit_edge ], [ %idxprom16.3.i1287.2, %if.end.thread.i1374.2 ]
  %idxprom21.2.i1350.2.pre-phi = phi i64 [ %.pre1862, %if.end.i1310.2.if.end28.i1328.2_crit_edge ], [ %idxprom21.2.i1282.2, %if.end.thread.i1374.2 ]
  %idxprom16.2.i1347.2.pre-phi = phi i64 [ %.pre1861, %if.end.i1310.2.if.end28.i1328.2_crit_edge ], [ %idxprom16.2.i1279.2, %if.end.thread.i1374.2 ]
  %idxprom21.1.i1342.2.pre-phi = phi i64 [ %.pre1860, %if.end.i1310.2.if.end28.i1328.2_crit_edge ], [ %idxprom21.1.i1274.2, %if.end.thread.i1374.2 ]
  %idxprom16.1.i1339.2.pre-phi = phi i64 [ %.pre1859, %if.end.i1310.2.if.end28.i1328.2_crit_edge ], [ %idxprom16.1.i1271.2, %if.end.thread.i1374.2 ]
  %idxprom21.i1335.2.pre-phi = phi i64 [ %.pre1858, %if.end.i1310.2.if.end28.i1328.2_crit_edge ], [ %idxprom21.i1267.2, %if.end.thread.i1374.2 ]
  %idxprom16.i1332.2.pre-phi = phi i64 [ %.pre1857, %if.end.i1310.2.if.end28.i1328.2_crit_edge ], [ %idxprom16.i1264.2, %if.end.thread.i1374.2 ]
  %pred.31414.2 = phi i32 [ %pred.3.2, %if.end.i1310.2.if.end28.i1328.2_crit_edge ], [ %shr42.i1302.2, %if.end.thread.i1374.2 ]
  %s0.174.ph.i1329.2 = phi i32 [ %add5.3.i1326.2, %if.end.i1310.2.if.end28.i1328.2_crit_edge ], [ 0, %if.end.thread.i1374.2 ]
  %arrayidx17.i1333.2 = getelementptr inbounds ptr, ptr %141, i64 %idxprom16.i1332.2.pre-phi
  %600 = load ptr, ptr %arrayidx17.i1333.2, align 8
  %arrayidx22.i1336.2 = getelementptr inbounds i16, ptr %600, i64 %idxprom21.i1335.2.pre-phi
  %601 = load i16, ptr %arrayidx22.i1336.2, align 2
  %conv23.i1337.2 = zext i16 %601 to i32
  %arrayidx17.1.i1340.2 = getelementptr inbounds ptr, ptr %141, i64 %idxprom16.1.i1339.2.pre-phi
  %602 = load ptr, ptr %arrayidx17.1.i1340.2, align 8
  %arrayidx22.1.i1343.2 = getelementptr inbounds i16, ptr %602, i64 %idxprom21.1.i1342.2.pre-phi
  %603 = load i16, ptr %arrayidx22.1.i1343.2, align 2
  %conv23.1.i1344.2 = zext i16 %603 to i32
  %add24.1.i1345.2 = add nuw nsw i32 %conv23.1.i1344.2, %conv23.i1337.2
  %arrayidx17.2.i1348.2 = getelementptr inbounds ptr, ptr %141, i64 %idxprom16.2.i1347.2.pre-phi
  %604 = load ptr, ptr %arrayidx17.2.i1348.2, align 8
  %arrayidx22.2.i1351.2 = getelementptr inbounds i16, ptr %604, i64 %idxprom21.2.i1350.2.pre-phi
  %605 = load i16, ptr %arrayidx22.2.i1351.2, align 2
  %conv23.2.i1352.2 = zext i16 %605 to i32
  %add24.2.i1353.2 = add nuw nsw i32 %add24.1.i1345.2, %conv23.2.i1352.2
  %arrayidx17.3.i1356.2 = getelementptr inbounds ptr, ptr %141, i64 %idxprom16.3.i1355.2.pre-phi
  %606 = load ptr, ptr %arrayidx17.3.i1356.2, align 8
  %arrayidx22.3.i1359.2 = getelementptr inbounds i16, ptr %606, i64 %idxprom21.3.i1358.2.pre-phi
  %607 = load i16, ptr %arrayidx22.3.i1359.2, align 2
  %conv23.3.i1360.2 = zext i16 %607 to i32
  %add24.3.i1361.2 = add nuw nsw i32 %add24.2.i1353.2, %conv23.3.i1360.2
  br i1 %tobool.not.i1241, label %if.then40.i1368.2, label %if.then31.i1362.2

if.then31.i1362.2:                                ; preds = %if.end28.i1328.2
  %add32.i1363.2 = add nuw nsw i32 %s0.174.ph.i1329.2, 4
  %add33.i1364.2 = add nuw nsw i32 %add32.i1363.2, %add24.3.i1361.2
  %shr.i1365.2 = lshr i32 %add33.i1364.2, 3
  br label %sw.epilog.2

if.then40.i1368.2:                                ; preds = %if.end28.i1328.2
  %add41.i1369.2 = add nuw nsw i32 %add24.3.i1361.2, 2
  %shr42.i1370.2 = lshr i32 %add41.i1369.2, 2
  br label %sw.epilog.2

sw.bb137.2:                                       ; preds = %sw.epilog.1
  br i1 %or.cond53.i, label %for.end.i1225.2, label %if.else.i1128.2

if.else.i1128.2:                                  ; preds = %sw.bb137.2
  br i1 %tobool6.not.i1259, label %sw.epilog.2, label %for.end32.i1187.2

for.end32.i1187.2:                                ; preds = %if.else.i1128.2
  %608 = zext i8 %561 to i64
  %609 = getelementptr inbounds %struct.pix_pos, ptr %left, i64 %608
  %pos_y20.i1131.2 = getelementptr inbounds i8, ptr %609, i64 30
  %610 = load i16, ptr %pos_y20.i1131.2, align 2
  %idxprom21.i1132.2 = sext i16 %610 to i64
  %arrayidx22.i1133.2 = getelementptr inbounds ptr, ptr %140, i64 %idxprom21.i1132.2
  %611 = load ptr, ptr %arrayidx22.i1133.2, align 8
  %pos_x25.i1134.2 = getelementptr inbounds i8, ptr %609, i64 28
  %612 = load i16, ptr %pos_x25.i1134.2, align 4
  %idxprom26.i1135.2 = sext i16 %612 to i64
  %arrayidx27.i1136.2 = getelementptr inbounds i16, ptr %611, i64 %idxprom26.i1135.2
  %613 = load i16, ptr %arrayidx27.i1136.2, align 2
  %conv28.i1137.2 = zext i16 %613 to i32
  %pos_y20.1.i1138.2 = getelementptr i8, ptr %609, i64 46
  %614 = load i16, ptr %pos_y20.1.i1138.2, align 2
  %idxprom21.1.i1139.2 = sext i16 %614 to i64
  %arrayidx22.1.i1140.2 = getelementptr inbounds ptr, ptr %140, i64 %idxprom21.1.i1139.2
  %615 = load ptr, ptr %arrayidx22.1.i1140.2, align 8
  %pos_x25.1.i1141.2 = getelementptr i8, ptr %609, i64 44
  %616 = load i16, ptr %pos_x25.1.i1141.2, align 4
  %idxprom26.1.i1142.2 = sext i16 %616 to i64
  %arrayidx27.1.i1143.2 = getelementptr inbounds i16, ptr %615, i64 %idxprom26.1.i1142.2
  %617 = load i16, ptr %arrayidx27.1.i1143.2, align 2
  %conv28.1.i1144.2 = zext i16 %617 to i32
  %add29.1.i1145.2 = add nuw nsw i32 %conv28.1.i1144.2, %conv28.i1137.2
  %pos_y20.2.i1146.2 = getelementptr i8, ptr %609, i64 62
  %618 = load i16, ptr %pos_y20.2.i1146.2, align 2
  %idxprom21.2.i1147.2 = sext i16 %618 to i64
  %arrayidx22.2.i1148.2 = getelementptr inbounds ptr, ptr %140, i64 %idxprom21.2.i1147.2
  %619 = load ptr, ptr %arrayidx22.2.i1148.2, align 8
  %pos_x25.2.i1149.2 = getelementptr i8, ptr %609, i64 60
  %620 = load i16, ptr %pos_x25.2.i1149.2, align 4
  %idxprom26.2.i1150.2 = sext i16 %620 to i64
  %arrayidx27.2.i1151.2 = getelementptr inbounds i16, ptr %619, i64 %idxprom26.2.i1150.2
  %621 = load i16, ptr %arrayidx27.2.i1151.2, align 2
  %conv28.2.i1152.2 = zext i16 %621 to i32
  %add29.2.i1153.2 = add nuw nsw i32 %add29.1.i1145.2, %conv28.2.i1152.2
  %pos_y20.3.i1154.2 = getelementptr i8, ptr %609, i64 78
  %622 = load i16, ptr %pos_y20.3.i1154.2, align 2
  %idxprom21.3.i1155.2 = sext i16 %622 to i64
  %arrayidx22.3.i1156.2 = getelementptr inbounds ptr, ptr %140, i64 %idxprom21.3.i1155.2
  %623 = load ptr, ptr %arrayidx22.3.i1156.2, align 8
  %pos_x25.3.i1157.2 = getelementptr i8, ptr %609, i64 76
  %624 = load i16, ptr %pos_x25.3.i1157.2, align 4
  %idxprom26.3.i1158.2 = sext i16 %624 to i64
  %arrayidx27.3.i1159.2 = getelementptr inbounds i16, ptr %623, i64 %idxprom26.3.i1158.2
  %625 = load i16, ptr %arrayidx27.3.i1159.2, align 2
  %conv28.3.i1163.2 = zext i16 %625 to i32
  %add29.3.i1164.2 = add nuw nsw i32 %add29.2.i1153.2, %conv28.3.i1163.2
  %arrayidx22.i1191.2 = getelementptr inbounds ptr, ptr %141, i64 %idxprom21.i1132.2
  %626 = load ptr, ptr %arrayidx22.i1191.2, align 8
  %arrayidx27.i1194.2 = getelementptr inbounds i16, ptr %626, i64 %idxprom26.i1135.2
  %627 = load i16, ptr %arrayidx27.i1194.2, align 2
  %conv28.i1195.2 = zext i16 %627 to i32
  %arrayidx22.1.i1198.2 = getelementptr inbounds ptr, ptr %141, i64 %idxprom21.1.i1139.2
  %628 = load ptr, ptr %arrayidx22.1.i1198.2, align 8
  %arrayidx27.1.i1201.2 = getelementptr inbounds i16, ptr %628, i64 %idxprom26.1.i1142.2
  %629 = load i16, ptr %arrayidx27.1.i1201.2, align 2
  %conv28.1.i1202.2 = zext i16 %629 to i32
  %add29.1.i1203.2 = add nuw nsw i32 %conv28.1.i1202.2, %conv28.i1195.2
  %arrayidx22.2.i1206.2 = getelementptr inbounds ptr, ptr %141, i64 %idxprom21.2.i1147.2
  %630 = load ptr, ptr %arrayidx22.2.i1206.2, align 8
  %arrayidx27.2.i1209.2 = getelementptr inbounds i16, ptr %630, i64 %idxprom26.2.i1150.2
  %631 = load i16, ptr %arrayidx27.2.i1209.2, align 2
  %conv28.2.i1210.2 = zext i16 %631 to i32
  %add29.2.i1211.2 = add nuw nsw i32 %add29.1.i1203.2, %conv28.2.i1210.2
  %arrayidx22.3.i1214.2 = getelementptr inbounds ptr, ptr %141, i64 %idxprom21.3.i1155.2
  %632 = load ptr, ptr %arrayidx22.3.i1214.2, align 8
  %arrayidx27.3.i1217.2 = getelementptr inbounds i16, ptr %632, i64 %idxprom26.3.i1158.2
  br label %if.end35.sink.split.i1218.2

for.end.i1225.2:                                  ; preds = %sw.bb137.2
  %633 = load i64, ptr %146, align 4
  %idxprom.i1168.2 = ashr i64 %633, 48
  %arrayidx.i1169.2 = getelementptr inbounds ptr, ptr %140, i64 %idxprom.i1168.2
  %634 = load ptr, ptr %arrayidx.i1169.2, align 8
  %635 = zext i8 %562 to i64
  %636 = getelementptr i16, ptr %634, i64 %635
  %sh.diff.i1170.2 = lshr i64 %633, 16
  %tr.sh.diff.i1171.2 = trunc i64 %sh.diff.i1170.2 to i32
  %conv.i1172.2 = ashr i32 %tr.sh.diff.i1171.2, 16
  %637 = sext i32 %conv.i1172.2 to i64
  %arrayidx7.i1173.2 = getelementptr i16, ptr %636, i64 %637
  %638 = load <4 x i16>, ptr %arrayidx7.i1173.2, align 2
  %639 = zext <4 x i16> %638 to <4 x i32>
  %640 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %639)
  %arrayidx.i1227.2 = getelementptr inbounds ptr, ptr %141, i64 %idxprom.i1168.2
  %641 = load ptr, ptr %arrayidx.i1227.2, align 8
  %642 = getelementptr i16, ptr %641, i64 %635
  %arrayidx7.i1231.2 = getelementptr i16, ptr %642, i64 %637
  %643 = load i16, ptr %arrayidx7.i1231.2, align 2
  %conv8.i1232.2 = zext i16 %643 to i32
  %644 = getelementptr i8, ptr %642, i64 2
  %arrayidx7.1.i1233.2 = getelementptr i16, ptr %644, i64 %637
  %645 = load i16, ptr %arrayidx7.1.i1233.2, align 2
  %conv8.1.i1234.2 = zext i16 %645 to i32
  %add9.1.i1235.2 = add nuw nsw i32 %conv8.1.i1234.2, %conv8.i1232.2
  %646 = getelementptr i8, ptr %642, i64 4
  %arrayidx7.2.i1236.2 = getelementptr i16, ptr %646, i64 %637
  %647 = load i16, ptr %arrayidx7.2.i1236.2, align 2
  %conv8.2.i1237.2 = zext i16 %647 to i32
  %add9.2.i1238.2 = add nuw nsw i32 %add9.1.i1235.2, %conv8.2.i1237.2
  %648 = getelementptr i8, ptr %642, i64 6
  %arrayidx7.3.i1239.2 = getelementptr i16, ptr %648, i64 %637
  br label %if.end35.sink.split.i1218.2

if.end35.sink.split.i1218.2:                      ; preds = %for.end.i1225.2, %for.end32.i1187.2
  %pred.21399.in.in.2 = phi i32 [ %add29.3.i1164.2, %for.end32.i1187.2 ], [ %640, %for.end.i1225.2 ]
  %arrayidx27.3.sink.i1219.2 = phi ptr [ %arrayidx27.3.i1217.2, %for.end32.i1187.2 ], [ %arrayidx7.3.i1239.2, %for.end.i1225.2 ]
  %add29.2.sink.i1220.2 = phi i32 [ %add29.2.i1211.2, %for.end32.i1187.2 ], [ %add9.2.i1238.2, %for.end.i1225.2 ]
  %pred.21399.in.2 = add nuw nsw i32 %pred.21399.in.in.2, 2
  %pred.21399.2 = lshr i32 %pred.21399.in.2, 2
  %649 = load i16, ptr %arrayidx27.3.sink.i1219.2, align 2
  %conv28.3.i1221.2 = zext i16 %649 to i32
  %add29.3.i1222.2 = add nuw nsw i32 %add29.2.sink.i1220.2, 2
  %add33.i1223.2 = add nuw nsw i32 %add29.3.i1222.2, %conv28.3.i1221.2
  %shr34.i1224.2 = lshr i32 %add33.i1223.2, 2
  br label %sw.epilog.2

sw.bb130.2:                                       ; preds = %sw.epilog.1
  br i1 %tobool.not.i1241, label %if.else.i.2, label %for.end.i1110.2

for.end.i1110.2:                                  ; preds = %sw.bb130.2
  %650 = load i64, ptr %146, align 4
  %idxprom.i1064.2 = ashr i64 %650, 48
  %arrayidx.i1065.2 = getelementptr inbounds ptr, ptr %140, i64 %idxprom.i1064.2
  %651 = load ptr, ptr %arrayidx.i1065.2, align 8
  %652 = zext i8 %562 to i64
  %653 = getelementptr i16, ptr %651, i64 %652
  %sh.diff.i1066.2 = lshr i64 %650, 16
  %tr.sh.diff.i1067.2 = trunc i64 %sh.diff.i1066.2 to i32
  %conv.i1068.2 = ashr i32 %tr.sh.diff.i1067.2, 16
  %654 = sext i32 %conv.i1068.2 to i64
  %arrayidx7.i.2 = getelementptr i16, ptr %653, i64 %654
  %655 = load <4 x i16>, ptr %arrayidx7.i.2, align 2
  %656 = zext <4 x i16> %655 to <4 x i32>
  %657 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %656)
  %arrayidx.i1112.2 = getelementptr inbounds ptr, ptr %141, i64 %idxprom.i1064.2
  %658 = load ptr, ptr %arrayidx.i1112.2, align 8
  %659 = getelementptr i16, ptr %658, i64 %652
  %arrayidx7.i1116.2 = getelementptr i16, ptr %659, i64 %654
  %660 = load i16, ptr %arrayidx7.i1116.2, align 2
  %conv8.i1117.2 = zext i16 %660 to i32
  %661 = getelementptr i8, ptr %659, i64 2
  %arrayidx7.1.i1118.2 = getelementptr i16, ptr %661, i64 %654
  %662 = load i16, ptr %arrayidx7.1.i1118.2, align 2
  %conv8.1.i1119.2 = zext i16 %662 to i32
  %add9.1.i1120.2 = add nuw nsw i32 %conv8.1.i1119.2, %conv8.i1117.2
  %663 = getelementptr i8, ptr %659, i64 4
  %arrayidx7.2.i1121.2 = getelementptr i16, ptr %663, i64 %654
  %664 = load i16, ptr %arrayidx7.2.i1121.2, align 2
  %conv8.2.i1122.2 = zext i16 %664 to i32
  %add9.2.i1123.2 = add nuw nsw i32 %add9.1.i1120.2, %conv8.2.i1122.2
  %665 = getelementptr i8, ptr %659, i64 6
  %arrayidx7.3.i1124.2 = getelementptr i16, ptr %665, i64 %654
  br label %if.end35.sink.split.i1103.2

if.else.i.2:                                      ; preds = %sw.bb130.2
  br i1 %tobool2.i, label %sw.epilog.2, label %for.end32.i1072.2

for.end32.i1072.2:                                ; preds = %if.else.i.2
  %666 = zext i8 %561 to i64
  %667 = getelementptr inbounds %struct.pix_pos, ptr %left, i64 %666
  %pos_y20.i.2 = getelementptr inbounds i8, ptr %667, i64 30
  %668 = load i16, ptr %pos_y20.i.2, align 2
  %idxprom21.i1055.2 = sext i16 %668 to i64
  %arrayidx22.i1056.2 = getelementptr inbounds ptr, ptr %140, i64 %idxprom21.i1055.2
  %669 = load ptr, ptr %arrayidx22.i1056.2, align 8
  %pos_x25.i.2 = getelementptr inbounds i8, ptr %667, i64 28
  %670 = load i16, ptr %pos_x25.i.2, align 4
  %idxprom26.i.2 = sext i16 %670 to i64
  %arrayidx27.i.2 = getelementptr inbounds i16, ptr %669, i64 %idxprom26.i.2
  %671 = load i16, ptr %arrayidx27.i.2, align 2
  %conv28.i.2 = zext i16 %671 to i32
  %pos_y20.1.i.2 = getelementptr i8, ptr %667, i64 46
  %672 = load i16, ptr %pos_y20.1.i.2, align 2
  %idxprom21.1.i1057.2 = sext i16 %672 to i64
  %arrayidx22.1.i1058.2 = getelementptr inbounds ptr, ptr %140, i64 %idxprom21.1.i1057.2
  %673 = load ptr, ptr %arrayidx22.1.i1058.2, align 8
  %pos_x25.1.i.2 = getelementptr i8, ptr %667, i64 44
  %674 = load i16, ptr %pos_x25.1.i.2, align 4
  %idxprom26.1.i.2 = sext i16 %674 to i64
  %arrayidx27.1.i.2 = getelementptr inbounds i16, ptr %673, i64 %idxprom26.1.i.2
  %675 = load i16, ptr %arrayidx27.1.i.2, align 2
  %conv28.1.i.2 = zext i16 %675 to i32
  %add29.1.i.2 = add nuw nsw i32 %conv28.1.i.2, %conv28.i.2
  %pos_y20.2.i.2 = getelementptr i8, ptr %667, i64 62
  %676 = load i16, ptr %pos_y20.2.i.2, align 2
  %idxprom21.2.i1059.2 = sext i16 %676 to i64
  %arrayidx22.2.i1060.2 = getelementptr inbounds ptr, ptr %140, i64 %idxprom21.2.i1059.2
  %677 = load ptr, ptr %arrayidx22.2.i1060.2, align 8
  %pos_x25.2.i.2 = getelementptr i8, ptr %667, i64 60
  %678 = load i16, ptr %pos_x25.2.i.2, align 4
  %idxprom26.2.i.2 = sext i16 %678 to i64
  %arrayidx27.2.i.2 = getelementptr inbounds i16, ptr %677, i64 %idxprom26.2.i.2
  %679 = load i16, ptr %arrayidx27.2.i.2, align 2
  %conv28.2.i.2 = zext i16 %679 to i32
  %add29.2.i.2 = add nuw nsw i32 %add29.1.i.2, %conv28.2.i.2
  %pos_y20.3.i.2 = getelementptr i8, ptr %667, i64 78
  %680 = load i16, ptr %pos_y20.3.i.2, align 2
  %idxprom21.3.i1061.2 = sext i16 %680 to i64
  %arrayidx22.3.i1062.2 = getelementptr inbounds ptr, ptr %140, i64 %idxprom21.3.i1061.2
  %681 = load ptr, ptr %arrayidx22.3.i1062.2, align 8
  %pos_x25.3.i.2 = getelementptr i8, ptr %667, i64 76
  %682 = load i16, ptr %pos_x25.3.i.2, align 4
  %idxprom26.3.i.2 = sext i16 %682 to i64
  %arrayidx27.3.i.2 = getelementptr inbounds i16, ptr %681, i64 %idxprom26.3.i.2
  %683 = load i16, ptr %arrayidx27.3.i.2, align 2
  %conv28.3.i.2 = zext i16 %683 to i32
  %add29.3.i.2 = add nuw nsw i32 %add29.2.i.2, %conv28.3.i.2
  %arrayidx22.i1076.2 = getelementptr inbounds ptr, ptr %141, i64 %idxprom21.i1055.2
  %684 = load ptr, ptr %arrayidx22.i1076.2, align 8
  %arrayidx27.i1079.2 = getelementptr inbounds i16, ptr %684, i64 %idxprom26.i.2
  %685 = load i16, ptr %arrayidx27.i1079.2, align 2
  %conv28.i1080.2 = zext i16 %685 to i32
  %arrayidx22.1.i1083.2 = getelementptr inbounds ptr, ptr %141, i64 %idxprom21.1.i1057.2
  %686 = load ptr, ptr %arrayidx22.1.i1083.2, align 8
  %arrayidx27.1.i1086.2 = getelementptr inbounds i16, ptr %686, i64 %idxprom26.1.i.2
  %687 = load i16, ptr %arrayidx27.1.i1086.2, align 2
  %conv28.1.i1087.2 = zext i16 %687 to i32
  %add29.1.i1088.2 = add nuw nsw i32 %conv28.1.i1087.2, %conv28.i1080.2
  %arrayidx22.2.i1091.2 = getelementptr inbounds ptr, ptr %141, i64 %idxprom21.2.i1059.2
  %688 = load ptr, ptr %arrayidx22.2.i1091.2, align 8
  %arrayidx27.2.i1094.2 = getelementptr inbounds i16, ptr %688, i64 %idxprom26.2.i.2
  %689 = load i16, ptr %arrayidx27.2.i1094.2, align 2
  %conv28.2.i1095.2 = zext i16 %689 to i32
  %add29.2.i1096.2 = add nuw nsw i32 %add29.1.i1088.2, %conv28.2.i1095.2
  %arrayidx22.3.i1099.2 = getelementptr inbounds ptr, ptr %141, i64 %idxprom21.3.i1061.2
  %690 = load ptr, ptr %arrayidx22.3.i1099.2, align 8
  %arrayidx27.3.i1102.2 = getelementptr inbounds i16, ptr %690, i64 %idxprom26.3.i.2
  br label %if.end35.sink.split.i1103.2

if.end35.sink.split.i1103.2:                      ; preds = %for.end32.i1072.2, %for.end.i1110.2
  %pred.11386.in.in.2 = phi i32 [ %add29.3.i.2, %for.end32.i1072.2 ], [ %657, %for.end.i1110.2 ]
  %arrayidx27.3.sink.i1104.2 = phi ptr [ %arrayidx27.3.i1102.2, %for.end32.i1072.2 ], [ %arrayidx7.3.i1124.2, %for.end.i1110.2 ]
  %add29.2.sink.i1105.2 = phi i32 [ %add29.2.i1096.2, %for.end32.i1072.2 ], [ %add9.2.i1123.2, %for.end.i1110.2 ]
  %pred.11386.in.2 = add nuw nsw i32 %pred.11386.in.in.2, 2
  %pred.11386.2 = lshr i32 %pred.11386.in.2, 2
  %691 = load i16, ptr %arrayidx27.3.sink.i1104.2, align 2
  %conv28.3.i1106.2 = zext i16 %691 to i32
  %add29.3.i1107.2 = add nuw nsw i32 %add29.2.sink.i1105.2, 2
  %add33.i1108.2 = add nuw nsw i32 %add29.3.i1107.2, %conv28.3.i1106.2
  %shr34.i1109.2 = lshr i32 %add33.i1108.2, 2
  br label %sw.epilog.2

sw.bb123.2:                                       ; preds = %sw.epilog.1
  %add126.2 = add nuw nsw i32 %conv106.2, 1
  %692 = load i64, ptr %146, align 4
  br i1 %tobool.not.i1241, label %if.end.thread.i.2, label %if.end.i.2

if.end.i.2:                                       ; preds = %sw.bb123.2
  %693 = zext i8 %562 to i64
  %idxprom.i.2 = ashr i64 %692, 48
  %arrayidx.i.2 = getelementptr inbounds ptr, ptr %140, i64 %idxprom.i.2
  %694 = load ptr, ptr %arrayidx.i.2, align 8
  %695 = getelementptr i16, ptr %694, i64 %693
  %sh.diff.i.2 = lshr i64 %692, 16
  %tr.sh.diff.i.2 = trunc i64 %sh.diff.i.2 to i32
  %conv.i.2 = ashr i32 %tr.sh.diff.i.2, 16
  %696 = sext i32 %conv.i.2 to i64
  %arrayidx3.i.2 = getelementptr i16, ptr %695, i64 %696
  %697 = load <4 x i16>, ptr %arrayidx3.i.2, align 2
  %698 = zext <4 x i16> %697 to <4 x i32>
  %699 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %698)
  br i1 %tobool2.i, label %if.then35.i.2, label %if.end28.i.2

if.then35.i.2:                                    ; preds = %if.end.i.2
  %add36.i.2 = add nuw nsw i32 %699, 2
  %shr37.i.2 = lshr i32 %add36.i.2, 2
  br label %if.end.i988.2

if.end.thread.i.2:                                ; preds = %sw.bb123.2
  br i1 %tobool2.i, label %sw.epilog.2, label %if.end28.i.2

if.end28.i.2:                                     ; preds = %if.end.thread.i.2, %if.end.i.2
  %s0.174.ph.i.2 = phi i32 [ 0, %if.end.thread.i.2 ], [ %699, %if.end.i.2 ]
  %700 = zext nneg i32 %add126.2 to i64
  %arrayidx14.i.2 = getelementptr inbounds %struct.pix_pos, ptr %left, i64 %700
  %pos_y15.i.2 = getelementptr inbounds i8, ptr %arrayidx14.i.2, i64 14
  %701 = load i16, ptr %pos_y15.i.2, align 2
  %idxprom16.i.2 = sext i16 %701 to i64
  %arrayidx17.i.2 = getelementptr inbounds ptr, ptr %140, i64 %idxprom16.i.2
  %702 = load ptr, ptr %arrayidx17.i.2, align 8
  %pos_x20.i.2 = getelementptr inbounds i8, ptr %arrayidx14.i.2, i64 12
  %703 = load i16, ptr %pos_x20.i.2, align 4
  %idxprom21.i.2 = sext i16 %703 to i64
  %arrayidx22.i.2 = getelementptr inbounds i16, ptr %702, i64 %idxprom21.i.2
  %704 = load i16, ptr %arrayidx22.i.2, align 2
  %conv23.i.2 = zext i16 %704 to i32
  %pos_y15.1.i.2 = getelementptr i8, ptr %arrayidx14.i.2, i64 30
  %705 = load i16, ptr %pos_y15.1.i.2, align 2
  %idxprom16.1.i.2 = sext i16 %705 to i64
  %arrayidx17.1.i.2 = getelementptr inbounds ptr, ptr %140, i64 %idxprom16.1.i.2
  %706 = load ptr, ptr %arrayidx17.1.i.2, align 8
  %pos_x20.1.i.2 = getelementptr i8, ptr %arrayidx14.i.2, i64 28
  %707 = load i16, ptr %pos_x20.1.i.2, align 4
  %idxprom21.1.i.2 = sext i16 %707 to i64
  %arrayidx22.1.i.2 = getelementptr inbounds i16, ptr %706, i64 %idxprom21.1.i.2
  %708 = load i16, ptr %arrayidx22.1.i.2, align 2
  %conv23.1.i.2 = zext i16 %708 to i32
  %add24.1.i.2 = add nuw nsw i32 %conv23.1.i.2, %conv23.i.2
  %pos_y15.2.i.2 = getelementptr i8, ptr %arrayidx14.i.2, i64 46
  %709 = load i16, ptr %pos_y15.2.i.2, align 2
  %idxprom16.2.i.2 = sext i16 %709 to i64
  %arrayidx17.2.i.2 = getelementptr inbounds ptr, ptr %140, i64 %idxprom16.2.i.2
  %710 = load ptr, ptr %arrayidx17.2.i.2, align 8
  %pos_x20.2.i.2 = getelementptr i8, ptr %arrayidx14.i.2, i64 44
  %711 = load i16, ptr %pos_x20.2.i.2, align 4
  %idxprom21.2.i.2 = sext i16 %711 to i64
  %arrayidx22.2.i.2 = getelementptr inbounds i16, ptr %710, i64 %idxprom21.2.i.2
  %712 = load i16, ptr %arrayidx22.2.i.2, align 2
  %conv23.2.i.2 = zext i16 %712 to i32
  %add24.2.i.2 = add nuw nsw i32 %add24.1.i.2, %conv23.2.i.2
  %pos_y15.3.i.2 = getelementptr i8, ptr %arrayidx14.i.2, i64 62
  %713 = load i16, ptr %pos_y15.3.i.2, align 2
  %idxprom16.3.i.2 = sext i16 %713 to i64
  %arrayidx17.3.i.2 = getelementptr inbounds ptr, ptr %140, i64 %idxprom16.3.i.2
  %714 = load ptr, ptr %arrayidx17.3.i.2, align 8
  %pos_x20.3.i.2 = getelementptr i8, ptr %arrayidx14.i.2, i64 60
  %715 = load i16, ptr %pos_x20.3.i.2, align 4
  %idxprom21.3.i.2 = sext i16 %715 to i64
  %arrayidx22.3.i.2 = getelementptr inbounds i16, ptr %714, i64 %idxprom21.3.i.2
  %716 = load i16, ptr %arrayidx22.3.i.2, align 2
  %conv23.3.i.2 = zext i16 %716 to i32
  %add24.3.i.2 = add nuw nsw i32 %add24.2.i.2, %conv23.3.i.2
  br i1 %tobool.not.i1241, label %if.end.thread.i1052.2, label %if.then31.i.2

if.then31.i.2:                                    ; preds = %if.end28.i.2
  %add32.i.2 = add nuw nsw i32 %s0.174.ph.i.2, 4
  %add33.i.2 = add nuw nsw i32 %add32.i.2, %add24.3.i.2
  %shr.i.2 = lshr i32 %add33.i.2, 3
  %.pre1750 = ashr i64 %692, 48
  %.pre1905 = zext i8 %562 to i64
  %.pre1907 = lshr i64 %692, 16
  %.pre1908 = trunc i64 %.pre1907 to i32
  %.pre1909 = ashr i32 %.pre1908, 16
  %.pre1910 = sext i32 %.pre1909 to i64
  br label %if.end.i988.2

if.end.i988.2:                                    ; preds = %if.then31.i.2, %if.then35.i.2
  %.pre-phi1911 = phi i64 [ %.pre1910, %if.then31.i.2 ], [ %696, %if.then35.i.2 ]
  %.pre-phi1906 = phi i64 [ %.pre1905, %if.then31.i.2 ], [ %693, %if.then35.i.2 ]
  %idxprom.i989.2.pre-phi = phi i64 [ %.pre1750, %if.then31.i.2 ], [ %idxprom.i.2, %if.then35.i.2 ]
  %pred.0.2 = phi i32 [ %shr.i.2, %if.then31.i.2 ], [ %shr37.i.2, %if.then35.i.2 ]
  %arrayidx.i990.2 = getelementptr inbounds ptr, ptr %141, i64 %idxprom.i989.2.pre-phi
  %717 = load ptr, ptr %arrayidx.i990.2, align 8
  %718 = getelementptr i16, ptr %717, i64 %.pre-phi1906
  %arrayidx3.i994.2 = getelementptr i16, ptr %718, i64 %.pre-phi1911
  %719 = load i16, ptr %arrayidx3.i994.2, align 2
  %conv4.i995.2 = zext i16 %719 to i32
  %720 = getelementptr i8, ptr %718, i64 2
  %arrayidx3.1.i996.2 = getelementptr i16, ptr %720, i64 %.pre-phi1911
  %721 = load i16, ptr %arrayidx3.1.i996.2, align 2
  %conv4.1.i997.2 = zext i16 %721 to i32
  %add5.1.i998.2 = add nuw nsw i32 %conv4.1.i997.2, %conv4.i995.2
  %722 = getelementptr i8, ptr %718, i64 4
  %arrayidx3.2.i999.2 = getelementptr i16, ptr %722, i64 %.pre-phi1911
  %723 = load i16, ptr %arrayidx3.2.i999.2, align 2
  %conv4.2.i1000.2 = zext i16 %723 to i32
  %add5.2.i1001.2 = add nuw nsw i32 %add5.1.i998.2, %conv4.2.i1000.2
  %724 = getelementptr i8, ptr %718, i64 6
  %arrayidx3.3.i1002.2 = getelementptr i16, ptr %724, i64 %.pre-phi1911
  %725 = load i16, ptr %arrayidx3.3.i1002.2, align 2
  %conv4.3.i1003.2 = zext i16 %725 to i32
  %add5.3.i1004.2 = add nuw nsw i32 %add5.2.i1001.2, %conv4.3.i1003.2
  br i1 %tobool2.i, label %if.then35.i1049.2, label %if.end.i988.2.if.end28.i1006.2_crit_edge

if.end.i988.2.if.end28.i1006.2_crit_edge:         ; preds = %if.end.i988.2
  %.phi.trans.insert1751 = zext nneg i32 %add126.2 to i64
  %arrayidx14.i1008.2.phi.trans.insert = getelementptr inbounds %struct.pix_pos, ptr %left, i64 %.phi.trans.insert1751
  %pos_y15.i1009.2.phi.trans.insert = getelementptr inbounds i8, ptr %arrayidx14.i1008.2.phi.trans.insert, i64 14
  %.pre1752 = load i16, ptr %pos_y15.i1009.2.phi.trans.insert, align 2
  %pos_x20.i1012.2.phi.trans.insert = getelementptr inbounds i8, ptr %arrayidx14.i1008.2.phi.trans.insert, i64 12
  %.pre1755 = load i16, ptr %pos_x20.i1012.2.phi.trans.insert, align 4
  %pos_y15.1.i1016.2.phi.trans.insert = getelementptr i8, ptr %arrayidx14.i1008.2.phi.trans.insert, i64 30
  %.pre1758 = load i16, ptr %pos_y15.1.i1016.2.phi.trans.insert, align 2
  %pos_x20.1.i1019.2.phi.trans.insert = getelementptr i8, ptr %arrayidx14.i1008.2.phi.trans.insert, i64 28
  %.pre1761 = load i16, ptr %pos_x20.1.i1019.2.phi.trans.insert, align 4
  %pos_y15.2.i1024.2.phi.trans.insert = getelementptr i8, ptr %arrayidx14.i1008.2.phi.trans.insert, i64 46
  %.pre1764 = load i16, ptr %pos_y15.2.i1024.2.phi.trans.insert, align 2
  %pos_x20.2.i1027.2.phi.trans.insert = getelementptr i8, ptr %arrayidx14.i1008.2.phi.trans.insert, i64 44
  %.pre1767 = load i16, ptr %pos_x20.2.i1027.2.phi.trans.insert, align 4
  %pos_y15.3.i1032.2.phi.trans.insert = getelementptr i8, ptr %arrayidx14.i1008.2.phi.trans.insert, i64 62
  %.pre1770 = load i16, ptr %pos_y15.3.i1032.2.phi.trans.insert, align 2
  %pos_x20.3.i1035.2.phi.trans.insert = getelementptr i8, ptr %arrayidx14.i1008.2.phi.trans.insert, i64 60
  %.pre1773 = load i16, ptr %pos_x20.3.i1035.2.phi.trans.insert, align 4
  %.pre1865 = sext i16 %.pre1752 to i64
  %.pre1866 = sext i16 %.pre1755 to i64
  %.pre1867 = sext i16 %.pre1758 to i64
  %.pre1868 = sext i16 %.pre1761 to i64
  %.pre1869 = sext i16 %.pre1764 to i64
  %.pre1870 = sext i16 %.pre1767 to i64
  %.pre1871 = sext i16 %.pre1770 to i64
  %.pre1872 = sext i16 %.pre1773 to i64
  br label %if.end28.i1006.2

if.then35.i1049.2:                                ; preds = %if.end.i988.2
  %add36.i1050.2 = add nuw nsw i32 %add5.3.i1004.2, 2
  %shr37.i1051.2 = lshr i32 %add36.i1050.2, 2
  br label %sw.epilog.2

if.end.thread.i1052.2:                            ; preds = %if.end28.i.2
  %add41.i.2 = add nuw nsw i32 %add24.3.i.2, 2
  %shr42.i.2 = lshr i32 %add41.i.2, 2
  br label %if.end28.i1006.2

if.end28.i1006.2:                                 ; preds = %if.end.i988.2.if.end28.i1006.2_crit_edge, %if.end.thread.i1052.2
  %idxprom21.3.i1036.2.pre-phi = phi i64 [ %.pre1872, %if.end.i988.2.if.end28.i1006.2_crit_edge ], [ %idxprom21.3.i.2, %if.end.thread.i1052.2 ]
  %idxprom16.3.i1033.2.pre-phi = phi i64 [ %.pre1871, %if.end.i988.2.if.end28.i1006.2_crit_edge ], [ %idxprom16.3.i.2, %if.end.thread.i1052.2 ]
  %idxprom21.2.i1028.2.pre-phi = phi i64 [ %.pre1870, %if.end.i988.2.if.end28.i1006.2_crit_edge ], [ %idxprom21.2.i.2, %if.end.thread.i1052.2 ]
  %idxprom16.2.i1025.2.pre-phi = phi i64 [ %.pre1869, %if.end.i988.2.if.end28.i1006.2_crit_edge ], [ %idxprom16.2.i.2, %if.end.thread.i1052.2 ]
  %idxprom21.1.i1020.2.pre-phi = phi i64 [ %.pre1868, %if.end.i988.2.if.end28.i1006.2_crit_edge ], [ %idxprom21.1.i.2, %if.end.thread.i1052.2 ]
  %idxprom16.1.i1017.2.pre-phi = phi i64 [ %.pre1867, %if.end.i988.2.if.end28.i1006.2_crit_edge ], [ %idxprom16.1.i.2, %if.end.thread.i1052.2 ]
  %idxprom21.i1013.2.pre-phi = phi i64 [ %.pre1866, %if.end.i988.2.if.end28.i1006.2_crit_edge ], [ %idxprom21.i.2, %if.end.thread.i1052.2 ]
  %idxprom16.i1010.2.pre-phi = phi i64 [ %.pre1865, %if.end.i988.2.if.end28.i1006.2_crit_edge ], [ %idxprom16.i.2, %if.end.thread.i1052.2 ]
  %pred.01381.2 = phi i32 [ %pred.0.2, %if.end.i988.2.if.end28.i1006.2_crit_edge ], [ %shr42.i.2, %if.end.thread.i1052.2 ]
  %s0.174.ph.i1007.2 = phi i32 [ %add5.3.i1004.2, %if.end.i988.2.if.end28.i1006.2_crit_edge ], [ 0, %if.end.thread.i1052.2 ]
  %arrayidx17.i1011.2 = getelementptr inbounds ptr, ptr %141, i64 %idxprom16.i1010.2.pre-phi
  %726 = load ptr, ptr %arrayidx17.i1011.2, align 8
  %arrayidx22.i1014.2 = getelementptr inbounds i16, ptr %726, i64 %idxprom21.i1013.2.pre-phi
  %727 = load i16, ptr %arrayidx22.i1014.2, align 2
  %conv23.i1015.2 = zext i16 %727 to i32
  %arrayidx17.1.i1018.2 = getelementptr inbounds ptr, ptr %141, i64 %idxprom16.1.i1017.2.pre-phi
  %728 = load ptr, ptr %arrayidx17.1.i1018.2, align 8
  %arrayidx22.1.i1021.2 = getelementptr inbounds i16, ptr %728, i64 %idxprom21.1.i1020.2.pre-phi
  %729 = load i16, ptr %arrayidx22.1.i1021.2, align 2
  %conv23.1.i1022.2 = zext i16 %729 to i32
  %add24.1.i1023.2 = add nuw nsw i32 %conv23.1.i1022.2, %conv23.i1015.2
  %arrayidx17.2.i1026.2 = getelementptr inbounds ptr, ptr %141, i64 %idxprom16.2.i1025.2.pre-phi
  %730 = load ptr, ptr %arrayidx17.2.i1026.2, align 8
  %arrayidx22.2.i1029.2 = getelementptr inbounds i16, ptr %730, i64 %idxprom21.2.i1028.2.pre-phi
  %731 = load i16, ptr %arrayidx22.2.i1029.2, align 2
  %conv23.2.i1030.2 = zext i16 %731 to i32
  %add24.2.i1031.2 = add nuw nsw i32 %add24.1.i1023.2, %conv23.2.i1030.2
  %arrayidx17.3.i1034.2 = getelementptr inbounds ptr, ptr %141, i64 %idxprom16.3.i1033.2.pre-phi
  %732 = load ptr, ptr %arrayidx17.3.i1034.2, align 8
  %arrayidx22.3.i1037.2 = getelementptr inbounds i16, ptr %732, i64 %idxprom21.3.i1036.2.pre-phi
  %733 = load i16, ptr %arrayidx22.3.i1037.2, align 2
  %conv23.3.i1038.2 = zext i16 %733 to i32
  %add24.3.i1039.2 = add nuw nsw i32 %add24.2.i1031.2, %conv23.3.i1038.2
  br i1 %tobool.not.i1241, label %if.then40.i1046.2, label %if.then31.i1040.2

if.then31.i1040.2:                                ; preds = %if.end28.i1006.2
  %add32.i1041.2 = add nuw nsw i32 %s0.174.ph.i1007.2, 4
  %add33.i1042.2 = add nuw nsw i32 %add32.i1041.2, %add24.3.i1039.2
  %shr.i1043.2 = lshr i32 %add33.i1042.2, 3
  br label %sw.epilog.2

if.then40.i1046.2:                                ; preds = %if.end28.i1006.2
  %add41.i1047.2 = add nuw nsw i32 %add24.3.i1039.2, 2
  %shr42.i1048.2 = lshr i32 %add41.i1047.2, 2
  br label %sw.epilog.2

sw.epilog.2:                                      ; preds = %if.then40.i1046.2, %if.then31.i1040.2, %if.then35.i1049.2, %if.end.thread.i.2, %if.end35.sink.split.i1103.2, %if.else.i.2, %if.end35.sink.split.i1218.2, %if.else.i1128.2, %if.then40.i1368.2, %if.then31.i1362.2, %if.then35.i1371.2, %if.end.thread.i1306.2, %sw.epilog.1
  %pred.4.2 = phi i32 [ %563, %sw.epilog.1 ], [ %pred.0.2, %if.then35.i1049.2 ], [ %pred.01381.2, %if.then40.i1046.2 ], [ %pred.01381.2, %if.then31.i1040.2 ], [ %pred.11386.2, %if.end35.sink.split.i1103.2 ], [ %pred.21399.2, %if.end35.sink.split.i1218.2 ], [ %pred.3.2, %if.then35.i1371.2 ], [ %pred.31414.2, %if.then40.i1368.2 ], [ %pred.31414.2, %if.then31.i1362.2 ], [ %563, %if.end.thread.i.2 ], [ %563, %if.else.i.2 ], [ %563, %if.else.i1128.2 ], [ %563, %if.end.thread.i1306.2 ]
  %pred1.4.2 = phi i32 [ %564, %sw.epilog.1 ], [ %shr37.i1051.2, %if.then35.i1049.2 ], [ %shr42.i1048.2, %if.then40.i1046.2 ], [ %shr.i1043.2, %if.then31.i1040.2 ], [ %shr34.i1109.2, %if.end35.sink.split.i1103.2 ], [ %shr34.i1224.2, %if.end35.sink.split.i1218.2 ], [ %shr37.i1373.2, %if.then35.i1371.2 ], [ %shr42.i1370.2, %if.then40.i1368.2 ], [ %shr.i1365.2, %if.then31.i1362.2 ], [ %564, %if.end.thread.i.2 ], [ %564, %if.else.i.2 ], [ %564, %if.else.i1128.2 ], [ %564, %if.end.thread.i1306.2 ]
  %conv161.2 = trunc i32 %pred.4.2 to i16
  %conv166.2 = trunc i32 %pred1.4.2 to i16
  %734 = zext i8 %562 to i64
  %735 = zext i8 %561 to i64
  %arrayidx163.21594 = getelementptr inbounds ptr, ptr %143, i64 %735
  %arrayidx168.21595 = getelementptr inbounds ptr, ptr %144, i64 %735
  %736 = load ptr, ptr %arrayidx163.21594, align 8
  %arrayidx165.21596 = getelementptr inbounds i16, ptr %736, i64 %734
  store i16 %conv161.2, ptr %arrayidx165.21596, align 2
  %737 = load ptr, ptr %arrayidx168.21595, align 8
  %arrayidx170.21597 = getelementptr inbounds i16, ptr %737, i64 %734
  store i16 %conv166.2, ptr %arrayidx170.21597, align 2
  %indvars.iv.next1558.21598 = add nuw nsw i64 %734, 1
  %738 = load ptr, ptr %arrayidx163.21594, align 8
  %arrayidx165.1.21599 = getelementptr inbounds i16, ptr %738, i64 %indvars.iv.next1558.21598
  store i16 %conv161.2, ptr %arrayidx165.1.21599, align 2
  %739 = load ptr, ptr %arrayidx168.21595, align 8
  %arrayidx170.1.21600 = getelementptr inbounds i16, ptr %739, i64 %indvars.iv.next1558.21598
  store i16 %conv166.2, ptr %arrayidx170.1.21600, align 2
  %indvars.iv.next1558.1.21601 = add nuw nsw i64 %734, 2
  %740 = load ptr, ptr %arrayidx163.21594, align 8
  %arrayidx165.2.21602 = getelementptr inbounds i16, ptr %740, i64 %indvars.iv.next1558.1.21601
  store i16 %conv161.2, ptr %arrayidx165.2.21602, align 2
  %741 = load ptr, ptr %arrayidx168.21595, align 8
  %arrayidx170.2.21603 = getelementptr inbounds i16, ptr %741, i64 %indvars.iv.next1558.1.21601
  store i16 %conv166.2, ptr %arrayidx170.2.21603, align 2
  %indvars.iv.next1558.2.21604 = add nuw nsw i64 %734, 3
  %742 = load ptr, ptr %arrayidx163.21594, align 8
  %arrayidx165.3.21605 = getelementptr inbounds i16, ptr %742, i64 %indvars.iv.next1558.2.21604
  store i16 %conv161.2, ptr %arrayidx165.3.21605, align 2
  %743 = load ptr, ptr %arrayidx168.21595, align 8
  %arrayidx170.3.21606 = getelementptr inbounds i16, ptr %743, i64 %indvars.iv.next1558.2.21604
  store i16 %conv166.2, ptr %arrayidx170.3.21606, align 2
  %indvars.iv.next1563.21607 = add nuw nsw i64 %735, 1
  %arrayidx163.1.2 = getelementptr inbounds ptr, ptr %143, i64 %indvars.iv.next1563.21607
  %arrayidx168.1.2 = getelementptr inbounds ptr, ptr %144, i64 %indvars.iv.next1563.21607
  %744 = load ptr, ptr %arrayidx163.1.2, align 8
  %arrayidx165.11567.2 = getelementptr inbounds i16, ptr %744, i64 %734
  store i16 %conv161.2, ptr %arrayidx165.11567.2, align 2
  %745 = load ptr, ptr %arrayidx168.1.2, align 8
  %arrayidx170.11568.2 = getelementptr inbounds i16, ptr %745, i64 %734
  store i16 %conv166.2, ptr %arrayidx170.11568.2, align 2
  %746 = load ptr, ptr %arrayidx163.1.2, align 8
  %arrayidx165.1.1.2 = getelementptr inbounds i16, ptr %746, i64 %indvars.iv.next1558.21598
  store i16 %conv161.2, ptr %arrayidx165.1.1.2, align 2
  %747 = load ptr, ptr %arrayidx168.1.2, align 8
  %arrayidx170.1.1.2 = getelementptr inbounds i16, ptr %747, i64 %indvars.iv.next1558.21598
  store i16 %conv166.2, ptr %arrayidx170.1.1.2, align 2
  %748 = load ptr, ptr %arrayidx163.1.2, align 8
  %arrayidx165.2.1.2 = getelementptr inbounds i16, ptr %748, i64 %indvars.iv.next1558.1.21601
  store i16 %conv161.2, ptr %arrayidx165.2.1.2, align 2
  %749 = load ptr, ptr %arrayidx168.1.2, align 8
  %arrayidx170.2.1.2 = getelementptr inbounds i16, ptr %749, i64 %indvars.iv.next1558.1.21601
  store i16 %conv166.2, ptr %arrayidx170.2.1.2, align 2
  %750 = load ptr, ptr %arrayidx163.1.2, align 8
  %arrayidx165.3.1.2 = getelementptr inbounds i16, ptr %750, i64 %indvars.iv.next1558.2.21604
  store i16 %conv161.2, ptr %arrayidx165.3.1.2, align 2
  %751 = load ptr, ptr %arrayidx168.1.2, align 8
  %arrayidx170.3.1.2 = getelementptr inbounds i16, ptr %751, i64 %indvars.iv.next1558.2.21604
  store i16 %conv166.2, ptr %arrayidx170.3.1.2, align 2
  %indvars.iv.next1563.1.2 = add nuw nsw i64 %735, 2
  %arrayidx163.2.2 = getelementptr inbounds ptr, ptr %143, i64 %indvars.iv.next1563.1.2
  %arrayidx168.2.2 = getelementptr inbounds ptr, ptr %144, i64 %indvars.iv.next1563.1.2
  %752 = load ptr, ptr %arrayidx163.2.2, align 8
  %arrayidx165.21570.2 = getelementptr inbounds i16, ptr %752, i64 %734
  store i16 %conv161.2, ptr %arrayidx165.21570.2, align 2
  %753 = load ptr, ptr %arrayidx168.2.2, align 8
  %arrayidx170.21571.2 = getelementptr inbounds i16, ptr %753, i64 %734
  store i16 %conv166.2, ptr %arrayidx170.21571.2, align 2
  %754 = load ptr, ptr %arrayidx163.2.2, align 8
  %arrayidx165.1.2.2 = getelementptr inbounds i16, ptr %754, i64 %indvars.iv.next1558.21598
  store i16 %conv161.2, ptr %arrayidx165.1.2.2, align 2
  %755 = load ptr, ptr %arrayidx168.2.2, align 8
  %arrayidx170.1.2.2 = getelementptr inbounds i16, ptr %755, i64 %indvars.iv.next1558.21598
  store i16 %conv166.2, ptr %arrayidx170.1.2.2, align 2
  %756 = load ptr, ptr %arrayidx163.2.2, align 8
  %arrayidx165.2.2.2 = getelementptr inbounds i16, ptr %756, i64 %indvars.iv.next1558.1.21601
  store i16 %conv161.2, ptr %arrayidx165.2.2.2, align 2
  %757 = load ptr, ptr %arrayidx168.2.2, align 8
  %arrayidx170.2.2.2 = getelementptr inbounds i16, ptr %757, i64 %indvars.iv.next1558.1.21601
  store i16 %conv166.2, ptr %arrayidx170.2.2.2, align 2
  %758 = load ptr, ptr %arrayidx163.2.2, align 8
  %arrayidx165.3.2.2 = getelementptr inbounds i16, ptr %758, i64 %indvars.iv.next1558.2.21604
  store i16 %conv161.2, ptr %arrayidx165.3.2.2, align 2
  %759 = load ptr, ptr %arrayidx168.2.2, align 8
  %arrayidx170.3.2.2 = getelementptr inbounds i16, ptr %759, i64 %indvars.iv.next1558.2.21604
  store i16 %conv166.2, ptr %arrayidx170.3.2.2, align 2
  %indvars.iv.next1563.2.2 = add nuw nsw i64 %735, 3
  %arrayidx163.3.2 = getelementptr inbounds ptr, ptr %143, i64 %indvars.iv.next1563.2.2
  %arrayidx168.3.2 = getelementptr inbounds ptr, ptr %144, i64 %indvars.iv.next1563.2.2
  %760 = load ptr, ptr %arrayidx163.3.2, align 8
  %arrayidx165.31573.2 = getelementptr inbounds i16, ptr %760, i64 %734
  store i16 %conv161.2, ptr %arrayidx165.31573.2, align 2
  %761 = load ptr, ptr %arrayidx168.3.2, align 8
  %arrayidx170.31574.2 = getelementptr inbounds i16, ptr %761, i64 %734
  store i16 %conv166.2, ptr %arrayidx170.31574.2, align 2
  %762 = load ptr, ptr %arrayidx163.3.2, align 8
  %arrayidx165.1.3.2 = getelementptr inbounds i16, ptr %762, i64 %indvars.iv.next1558.21598
  store i16 %conv161.2, ptr %arrayidx165.1.3.2, align 2
  %763 = load ptr, ptr %arrayidx168.3.2, align 8
  %arrayidx170.1.3.2 = getelementptr inbounds i16, ptr %763, i64 %indvars.iv.next1558.21598
  store i16 %conv166.2, ptr %arrayidx170.1.3.2, align 2
  %764 = load ptr, ptr %arrayidx163.3.2, align 8
  %arrayidx165.2.3.2 = getelementptr inbounds i16, ptr %764, i64 %indvars.iv.next1558.1.21601
  store i16 %conv161.2, ptr %arrayidx165.2.3.2, align 2
  %765 = load ptr, ptr %arrayidx168.3.2, align 8
  %arrayidx170.2.3.2 = getelementptr inbounds i16, ptr %765, i64 %indvars.iv.next1558.1.21601
  store i16 %conv166.2, ptr %arrayidx170.2.3.2, align 2
  %766 = load ptr, ptr %arrayidx163.3.2, align 8
  %arrayidx165.3.3.2 = getelementptr inbounds i16, ptr %766, i64 %indvars.iv.next1558.2.21604
  store i16 %conv161.2, ptr %arrayidx165.3.3.2, align 2
  %767 = load ptr, ptr %arrayidx168.3.2, align 8
  %arrayidx170.3.3.2 = getelementptr inbounds i16, ptr %767, i64 %indvars.iv.next1558.2.21604
  store i16 %conv166.2, ptr %arrayidx170.3.3.2, align 2
  %arrayidx105.3 = getelementptr inbounds [3 x [8 x [4 x i8]]], ptr @subblk_offset_y, i64 0, i64 %idxprom100, i64 %indvars.iv1623, i64 3
  %768 = load i8, ptr %arrayidx105.3, align 1
  %conv106.3 = zext i8 %768 to i32
  %arrayidx112.3 = getelementptr inbounds [3 x [8 x [4 x i8]]], ptr @subblk_offset_x, i64 0, i64 %idxprom100, i64 %indvars.iv1623, i64 3
  %769 = load i8, ptr %arrayidx112.3, align 1
  %770 = load i32, ptr %arrayidx114, align 4
  %771 = load i32, ptr %arrayidx116, align 4
  %arrayidx122.3 = getelementptr inbounds [3 x [4 x [4 x i32]]], ptr @intrapred_chroma_dc.block_pos, i64 0, i64 %idxprom100, i64 %indvars.iv1623, i64 3
  %772 = load i32, ptr %arrayidx122.3, align 4
  switch i32 %772, label %sw.epilog.3 [
    i32 0, label %sw.bb123.3
    i32 1, label %sw.bb130.3
    i32 2, label %sw.bb137.3
    i32 3, label %sw.bb144.3
  ]

sw.bb144.3:                                       ; preds = %sw.epilog.2
  %add147.3 = add nuw nsw i32 %conv106.3, 1
  %773 = load i64, ptr %146, align 4
  br i1 %tobool.not.i1241, label %if.end.thread.i1306.3, label %if.end.i1242.3

if.end.i1242.3:                                   ; preds = %sw.bb144.3
  %774 = zext i8 %769 to i64
  %idxprom.i1243.3 = ashr i64 %773, 48
  %arrayidx.i1244.3 = getelementptr inbounds ptr, ptr %140, i64 %idxprom.i1243.3
  %775 = load ptr, ptr %arrayidx.i1244.3, align 8
  %776 = getelementptr i16, ptr %775, i64 %774
  %sh.diff.i1245.3 = lshr i64 %773, 16
  %tr.sh.diff.i1246.3 = trunc i64 %sh.diff.i1245.3 to i32
  %conv.i1247.3 = ashr i32 %tr.sh.diff.i1246.3, 16
  %777 = sext i32 %conv.i1247.3 to i64
  %arrayidx3.i1248.3 = getelementptr i16, ptr %776, i64 %777
  %778 = load <4 x i16>, ptr %arrayidx3.i1248.3, align 2
  %779 = zext <4 x i16> %778 to <4 x i32>
  %780 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %779)
  br i1 %tobool6.not.i1259, label %if.then35.i1303.3, label %if.end28.i1260.3

if.then35.i1303.3:                                ; preds = %if.end.i1242.3
  %add36.i1304.3 = add nuw nsw i32 %780, 2
  %shr37.i1305.3 = lshr i32 %add36.i1304.3, 2
  br label %if.end.i1310.3

if.end.thread.i1306.3:                            ; preds = %sw.bb144.3
  br i1 %tobool6.not.i1259, label %sw.epilog.3, label %if.end28.i1260.3

if.end28.i1260.3:                                 ; preds = %if.end.thread.i1306.3, %if.end.i1242.3
  %s0.174.ph.i1261.3 = phi i32 [ 0, %if.end.thread.i1306.3 ], [ %780, %if.end.i1242.3 ]
  %781 = zext nneg i32 %add147.3 to i64
  %arrayidx14.i1262.3 = getelementptr inbounds %struct.pix_pos, ptr %left, i64 %781
  %pos_y15.i1263.3 = getelementptr inbounds i8, ptr %arrayidx14.i1262.3, i64 14
  %782 = load i16, ptr %pos_y15.i1263.3, align 2
  %idxprom16.i1264.3 = sext i16 %782 to i64
  %arrayidx17.i1265.3 = getelementptr inbounds ptr, ptr %140, i64 %idxprom16.i1264.3
  %783 = load ptr, ptr %arrayidx17.i1265.3, align 8
  %pos_x20.i1266.3 = getelementptr inbounds i8, ptr %arrayidx14.i1262.3, i64 12
  %784 = load i16, ptr %pos_x20.i1266.3, align 4
  %idxprom21.i1267.3 = sext i16 %784 to i64
  %arrayidx22.i1268.3 = getelementptr inbounds i16, ptr %783, i64 %idxprom21.i1267.3
  %785 = load i16, ptr %arrayidx22.i1268.3, align 2
  %conv23.i1269.3 = zext i16 %785 to i32
  %pos_y15.1.i1270.3 = getelementptr i8, ptr %arrayidx14.i1262.3, i64 30
  %786 = load i16, ptr %pos_y15.1.i1270.3, align 2
  %idxprom16.1.i1271.3 = sext i16 %786 to i64
  %arrayidx17.1.i1272.3 = getelementptr inbounds ptr, ptr %140, i64 %idxprom16.1.i1271.3
  %787 = load ptr, ptr %arrayidx17.1.i1272.3, align 8
  %pos_x20.1.i1273.3 = getelementptr i8, ptr %arrayidx14.i1262.3, i64 28
  %788 = load i16, ptr %pos_x20.1.i1273.3, align 4
  %idxprom21.1.i1274.3 = sext i16 %788 to i64
  %arrayidx22.1.i1275.3 = getelementptr inbounds i16, ptr %787, i64 %idxprom21.1.i1274.3
  %789 = load i16, ptr %arrayidx22.1.i1275.3, align 2
  %conv23.1.i1276.3 = zext i16 %789 to i32
  %add24.1.i1277.3 = add nuw nsw i32 %conv23.1.i1276.3, %conv23.i1269.3
  %pos_y15.2.i1278.3 = getelementptr i8, ptr %arrayidx14.i1262.3, i64 46
  %790 = load i16, ptr %pos_y15.2.i1278.3, align 2
  %idxprom16.2.i1279.3 = sext i16 %790 to i64
  %arrayidx17.2.i1280.3 = getelementptr inbounds ptr, ptr %140, i64 %idxprom16.2.i1279.3
  %791 = load ptr, ptr %arrayidx17.2.i1280.3, align 8
  %pos_x20.2.i1281.3 = getelementptr i8, ptr %arrayidx14.i1262.3, i64 44
  %792 = load i16, ptr %pos_x20.2.i1281.3, align 4
  %idxprom21.2.i1282.3 = sext i16 %792 to i64
  %arrayidx22.2.i1283.3 = getelementptr inbounds i16, ptr %791, i64 %idxprom21.2.i1282.3
  %793 = load i16, ptr %arrayidx22.2.i1283.3, align 2
  %conv23.2.i1284.3 = zext i16 %793 to i32
  %add24.2.i1285.3 = add nuw nsw i32 %add24.1.i1277.3, %conv23.2.i1284.3
  %pos_y15.3.i1286.3 = getelementptr i8, ptr %arrayidx14.i1262.3, i64 62
  %794 = load i16, ptr %pos_y15.3.i1286.3, align 2
  %idxprom16.3.i1287.3 = sext i16 %794 to i64
  %arrayidx17.3.i1288.3 = getelementptr inbounds ptr, ptr %140, i64 %idxprom16.3.i1287.3
  %795 = load ptr, ptr %arrayidx17.3.i1288.3, align 8
  %pos_x20.3.i1289.3 = getelementptr i8, ptr %arrayidx14.i1262.3, i64 60
  %796 = load i16, ptr %pos_x20.3.i1289.3, align 4
  %idxprom21.3.i1290.3 = sext i16 %796 to i64
  %arrayidx22.3.i1291.3 = getelementptr inbounds i16, ptr %795, i64 %idxprom21.3.i1290.3
  %797 = load i16, ptr %arrayidx22.3.i1291.3, align 2
  %conv23.3.i1292.3 = zext i16 %797 to i32
  %add24.3.i1293.3 = add nuw nsw i32 %add24.2.i1285.3, %conv23.3.i1292.3
  br i1 %tobool.not.i1241, label %if.end.thread.i1374.3, label %if.then31.i1294.3

if.then31.i1294.3:                                ; preds = %if.end28.i1260.3
  %add32.i1295.3 = add nuw nsw i32 %s0.174.ph.i1261.3, 4
  %add33.i1296.3 = add nuw nsw i32 %add32.i1295.3, %add24.3.i1293.3
  %shr.i1297.3 = lshr i32 %add33.i1296.3, 3
  %.pre1774 = ashr i64 %773, 48
  %.pre1897 = zext i8 %769 to i64
  %.pre1899 = lshr i64 %773, 16
  %.pre1900 = trunc i64 %.pre1899 to i32
  %.pre1901 = ashr i32 %.pre1900, 16
  %.pre1902 = sext i32 %.pre1901 to i64
  br label %if.end.i1310.3

if.end.i1310.3:                                   ; preds = %if.then31.i1294.3, %if.then35.i1303.3
  %.pre-phi1903 = phi i64 [ %.pre1902, %if.then31.i1294.3 ], [ %777, %if.then35.i1303.3 ]
  %.pre-phi1898 = phi i64 [ %.pre1897, %if.then31.i1294.3 ], [ %774, %if.then35.i1303.3 ]
  %idxprom.i1311.3.pre-phi = phi i64 [ %.pre1774, %if.then31.i1294.3 ], [ %idxprom.i1243.3, %if.then35.i1303.3 ]
  %pred.3.3 = phi i32 [ %shr.i1297.3, %if.then31.i1294.3 ], [ %shr37.i1305.3, %if.then35.i1303.3 ]
  %arrayidx.i1312.3 = getelementptr inbounds ptr, ptr %141, i64 %idxprom.i1311.3.pre-phi
  %798 = load ptr, ptr %arrayidx.i1312.3, align 8
  %799 = getelementptr i16, ptr %798, i64 %.pre-phi1898
  %arrayidx3.i1316.3 = getelementptr i16, ptr %799, i64 %.pre-phi1903
  %800 = load i16, ptr %arrayidx3.i1316.3, align 2
  %conv4.i1317.3 = zext i16 %800 to i32
  %801 = getelementptr i8, ptr %799, i64 2
  %arrayidx3.1.i1318.3 = getelementptr i16, ptr %801, i64 %.pre-phi1903
  %802 = load i16, ptr %arrayidx3.1.i1318.3, align 2
  %conv4.1.i1319.3 = zext i16 %802 to i32
  %add5.1.i1320.3 = add nuw nsw i32 %conv4.1.i1319.3, %conv4.i1317.3
  %803 = getelementptr i8, ptr %799, i64 4
  %arrayidx3.2.i1321.3 = getelementptr i16, ptr %803, i64 %.pre-phi1903
  %804 = load i16, ptr %arrayidx3.2.i1321.3, align 2
  %conv4.2.i1322.3 = zext i16 %804 to i32
  %add5.2.i1323.3 = add nuw nsw i32 %add5.1.i1320.3, %conv4.2.i1322.3
  %805 = getelementptr i8, ptr %799, i64 6
  %arrayidx3.3.i1324.3 = getelementptr i16, ptr %805, i64 %.pre-phi1903
  %806 = load i16, ptr %arrayidx3.3.i1324.3, align 2
  %conv4.3.i1325.3 = zext i16 %806 to i32
  %add5.3.i1326.3 = add nuw nsw i32 %add5.2.i1323.3, %conv4.3.i1325.3
  br i1 %tobool6.not.i1259, label %if.then35.i1371.3, label %if.end.i1310.3.if.end28.i1328.3_crit_edge

if.end.i1310.3.if.end28.i1328.3_crit_edge:        ; preds = %if.end.i1310.3
  %.phi.trans.insert1775 = zext nneg i32 %add147.3 to i64
  %arrayidx14.i1330.3.phi.trans.insert = getelementptr inbounds %struct.pix_pos, ptr %left, i64 %.phi.trans.insert1775
  %pos_y15.i1331.3.phi.trans.insert = getelementptr inbounds i8, ptr %arrayidx14.i1330.3.phi.trans.insert, i64 14
  %.pre1776 = load i16, ptr %pos_y15.i1331.3.phi.trans.insert, align 2
  %pos_x20.i1334.3.phi.trans.insert = getelementptr inbounds i8, ptr %arrayidx14.i1330.3.phi.trans.insert, i64 12
  %.pre1779 = load i16, ptr %pos_x20.i1334.3.phi.trans.insert, align 4
  %pos_y15.1.i1338.3.phi.trans.insert = getelementptr i8, ptr %arrayidx14.i1330.3.phi.trans.insert, i64 30
  %.pre1782 = load i16, ptr %pos_y15.1.i1338.3.phi.trans.insert, align 2
  %pos_x20.1.i1341.3.phi.trans.insert = getelementptr i8, ptr %arrayidx14.i1330.3.phi.trans.insert, i64 28
  %.pre1785 = load i16, ptr %pos_x20.1.i1341.3.phi.trans.insert, align 4
  %pos_y15.2.i1346.3.phi.trans.insert = getelementptr i8, ptr %arrayidx14.i1330.3.phi.trans.insert, i64 46
  %.pre1788 = load i16, ptr %pos_y15.2.i1346.3.phi.trans.insert, align 2
  %pos_x20.2.i1349.3.phi.trans.insert = getelementptr i8, ptr %arrayidx14.i1330.3.phi.trans.insert, i64 44
  %.pre1791 = load i16, ptr %pos_x20.2.i1349.3.phi.trans.insert, align 4
  %pos_y15.3.i1354.3.phi.trans.insert = getelementptr i8, ptr %arrayidx14.i1330.3.phi.trans.insert, i64 62
  %.pre1794 = load i16, ptr %pos_y15.3.i1354.3.phi.trans.insert, align 2
  %pos_x20.3.i1357.3.phi.trans.insert = getelementptr i8, ptr %arrayidx14.i1330.3.phi.trans.insert, i64 60
  %.pre1797 = load i16, ptr %pos_x20.3.i1357.3.phi.trans.insert, align 4
  %.pre1873 = sext i16 %.pre1776 to i64
  %.pre1874 = sext i16 %.pre1779 to i64
  %.pre1875 = sext i16 %.pre1782 to i64
  %.pre1876 = sext i16 %.pre1785 to i64
  %.pre1877 = sext i16 %.pre1788 to i64
  %.pre1878 = sext i16 %.pre1791 to i64
  %.pre1879 = sext i16 %.pre1794 to i64
  %.pre1880 = sext i16 %.pre1797 to i64
  br label %if.end28.i1328.3

if.then35.i1371.3:                                ; preds = %if.end.i1310.3
  %add36.i1372.3 = add nuw nsw i32 %add5.3.i1326.3, 2
  %shr37.i1373.3 = lshr i32 %add36.i1372.3, 2
  br label %sw.epilog.3

if.end.thread.i1374.3:                            ; preds = %if.end28.i1260.3
  %add41.i1301.3 = add nuw nsw i32 %add24.3.i1293.3, 2
  %shr42.i1302.3 = lshr i32 %add41.i1301.3, 2
  br label %if.end28.i1328.3

if.end28.i1328.3:                                 ; preds = %if.end.i1310.3.if.end28.i1328.3_crit_edge, %if.end.thread.i1374.3
  %idxprom21.3.i1358.3.pre-phi = phi i64 [ %.pre1880, %if.end.i1310.3.if.end28.i1328.3_crit_edge ], [ %idxprom21.3.i1290.3, %if.end.thread.i1374.3 ]
  %idxprom16.3.i1355.3.pre-phi = phi i64 [ %.pre1879, %if.end.i1310.3.if.end28.i1328.3_crit_edge ], [ %idxprom16.3.i1287.3, %if.end.thread.i1374.3 ]
  %idxprom21.2.i1350.3.pre-phi = phi i64 [ %.pre1878, %if.end.i1310.3.if.end28.i1328.3_crit_edge ], [ %idxprom21.2.i1282.3, %if.end.thread.i1374.3 ]
  %idxprom16.2.i1347.3.pre-phi = phi i64 [ %.pre1877, %if.end.i1310.3.if.end28.i1328.3_crit_edge ], [ %idxprom16.2.i1279.3, %if.end.thread.i1374.3 ]
  %idxprom21.1.i1342.3.pre-phi = phi i64 [ %.pre1876, %if.end.i1310.3.if.end28.i1328.3_crit_edge ], [ %idxprom21.1.i1274.3, %if.end.thread.i1374.3 ]
  %idxprom16.1.i1339.3.pre-phi = phi i64 [ %.pre1875, %if.end.i1310.3.if.end28.i1328.3_crit_edge ], [ %idxprom16.1.i1271.3, %if.end.thread.i1374.3 ]
  %idxprom21.i1335.3.pre-phi = phi i64 [ %.pre1874, %if.end.i1310.3.if.end28.i1328.3_crit_edge ], [ %idxprom21.i1267.3, %if.end.thread.i1374.3 ]
  %idxprom16.i1332.3.pre-phi = phi i64 [ %.pre1873, %if.end.i1310.3.if.end28.i1328.3_crit_edge ], [ %idxprom16.i1264.3, %if.end.thread.i1374.3 ]
  %pred.31414.3 = phi i32 [ %pred.3.3, %if.end.i1310.3.if.end28.i1328.3_crit_edge ], [ %shr42.i1302.3, %if.end.thread.i1374.3 ]
  %s0.174.ph.i1329.3 = phi i32 [ %add5.3.i1326.3, %if.end.i1310.3.if.end28.i1328.3_crit_edge ], [ 0, %if.end.thread.i1374.3 ]
  %arrayidx17.i1333.3 = getelementptr inbounds ptr, ptr %141, i64 %idxprom16.i1332.3.pre-phi
  %807 = load ptr, ptr %arrayidx17.i1333.3, align 8
  %arrayidx22.i1336.3 = getelementptr inbounds i16, ptr %807, i64 %idxprom21.i1335.3.pre-phi
  %808 = load i16, ptr %arrayidx22.i1336.3, align 2
  %conv23.i1337.3 = zext i16 %808 to i32
  %arrayidx17.1.i1340.3 = getelementptr inbounds ptr, ptr %141, i64 %idxprom16.1.i1339.3.pre-phi
  %809 = load ptr, ptr %arrayidx17.1.i1340.3, align 8
  %arrayidx22.1.i1343.3 = getelementptr inbounds i16, ptr %809, i64 %idxprom21.1.i1342.3.pre-phi
  %810 = load i16, ptr %arrayidx22.1.i1343.3, align 2
  %conv23.1.i1344.3 = zext i16 %810 to i32
  %add24.1.i1345.3 = add nuw nsw i32 %conv23.1.i1344.3, %conv23.i1337.3
  %arrayidx17.2.i1348.3 = getelementptr inbounds ptr, ptr %141, i64 %idxprom16.2.i1347.3.pre-phi
  %811 = load ptr, ptr %arrayidx17.2.i1348.3, align 8
  %arrayidx22.2.i1351.3 = getelementptr inbounds i16, ptr %811, i64 %idxprom21.2.i1350.3.pre-phi
  %812 = load i16, ptr %arrayidx22.2.i1351.3, align 2
  %conv23.2.i1352.3 = zext i16 %812 to i32
  %add24.2.i1353.3 = add nuw nsw i32 %add24.1.i1345.3, %conv23.2.i1352.3
  %arrayidx17.3.i1356.3 = getelementptr inbounds ptr, ptr %141, i64 %idxprom16.3.i1355.3.pre-phi
  %813 = load ptr, ptr %arrayidx17.3.i1356.3, align 8
  %arrayidx22.3.i1359.3 = getelementptr inbounds i16, ptr %813, i64 %idxprom21.3.i1358.3.pre-phi
  %814 = load i16, ptr %arrayidx22.3.i1359.3, align 2
  %conv23.3.i1360.3 = zext i16 %814 to i32
  %add24.3.i1361.3 = add nuw nsw i32 %add24.2.i1353.3, %conv23.3.i1360.3
  br i1 %tobool.not.i1241, label %if.then40.i1368.3, label %if.then31.i1362.3

if.then31.i1362.3:                                ; preds = %if.end28.i1328.3
  %add32.i1363.3 = add nuw nsw i32 %s0.174.ph.i1329.3, 4
  %add33.i1364.3 = add nuw nsw i32 %add32.i1363.3, %add24.3.i1361.3
  %shr.i1365.3 = lshr i32 %add33.i1364.3, 3
  br label %sw.epilog.3

if.then40.i1368.3:                                ; preds = %if.end28.i1328.3
  %add41.i1369.3 = add nuw nsw i32 %add24.3.i1361.3, 2
  %shr42.i1370.3 = lshr i32 %add41.i1369.3, 2
  br label %sw.epilog.3

sw.bb137.3:                                       ; preds = %sw.epilog.2
  br i1 %or.cond53.i, label %for.end.i1225.3, label %if.else.i1128.3

if.else.i1128.3:                                  ; preds = %sw.bb137.3
  br i1 %tobool6.not.i1259, label %sw.epilog.3, label %for.end32.i1187.3

for.end32.i1187.3:                                ; preds = %if.else.i1128.3
  %815 = zext i8 %768 to i64
  %816 = getelementptr inbounds %struct.pix_pos, ptr %left, i64 %815
  %pos_y20.i1131.3 = getelementptr inbounds i8, ptr %816, i64 30
  %817 = load i16, ptr %pos_y20.i1131.3, align 2
  %idxprom21.i1132.3 = sext i16 %817 to i64
  %arrayidx22.i1133.3 = getelementptr inbounds ptr, ptr %140, i64 %idxprom21.i1132.3
  %818 = load ptr, ptr %arrayidx22.i1133.3, align 8
  %pos_x25.i1134.3 = getelementptr inbounds i8, ptr %816, i64 28
  %819 = load i16, ptr %pos_x25.i1134.3, align 4
  %idxprom26.i1135.3 = sext i16 %819 to i64
  %arrayidx27.i1136.3 = getelementptr inbounds i16, ptr %818, i64 %idxprom26.i1135.3
  %820 = load i16, ptr %arrayidx27.i1136.3, align 2
  %conv28.i1137.3 = zext i16 %820 to i32
  %pos_y20.1.i1138.3 = getelementptr i8, ptr %816, i64 46
  %821 = load i16, ptr %pos_y20.1.i1138.3, align 2
  %idxprom21.1.i1139.3 = sext i16 %821 to i64
  %arrayidx22.1.i1140.3 = getelementptr inbounds ptr, ptr %140, i64 %idxprom21.1.i1139.3
  %822 = load ptr, ptr %arrayidx22.1.i1140.3, align 8
  %pos_x25.1.i1141.3 = getelementptr i8, ptr %816, i64 44
  %823 = load i16, ptr %pos_x25.1.i1141.3, align 4
  %idxprom26.1.i1142.3 = sext i16 %823 to i64
  %arrayidx27.1.i1143.3 = getelementptr inbounds i16, ptr %822, i64 %idxprom26.1.i1142.3
  %824 = load i16, ptr %arrayidx27.1.i1143.3, align 2
  %conv28.1.i1144.3 = zext i16 %824 to i32
  %add29.1.i1145.3 = add nuw nsw i32 %conv28.1.i1144.3, %conv28.i1137.3
  %pos_y20.2.i1146.3 = getelementptr i8, ptr %816, i64 62
  %825 = load i16, ptr %pos_y20.2.i1146.3, align 2
  %idxprom21.2.i1147.3 = sext i16 %825 to i64
  %arrayidx22.2.i1148.3 = getelementptr inbounds ptr, ptr %140, i64 %idxprom21.2.i1147.3
  %826 = load ptr, ptr %arrayidx22.2.i1148.3, align 8
  %pos_x25.2.i1149.3 = getelementptr i8, ptr %816, i64 60
  %827 = load i16, ptr %pos_x25.2.i1149.3, align 4
  %idxprom26.2.i1150.3 = sext i16 %827 to i64
  %arrayidx27.2.i1151.3 = getelementptr inbounds i16, ptr %826, i64 %idxprom26.2.i1150.3
  %828 = load i16, ptr %arrayidx27.2.i1151.3, align 2
  %conv28.2.i1152.3 = zext i16 %828 to i32
  %add29.2.i1153.3 = add nuw nsw i32 %add29.1.i1145.3, %conv28.2.i1152.3
  %pos_y20.3.i1154.3 = getelementptr i8, ptr %816, i64 78
  %829 = load i16, ptr %pos_y20.3.i1154.3, align 2
  %idxprom21.3.i1155.3 = sext i16 %829 to i64
  %arrayidx22.3.i1156.3 = getelementptr inbounds ptr, ptr %140, i64 %idxprom21.3.i1155.3
  %830 = load ptr, ptr %arrayidx22.3.i1156.3, align 8
  %pos_x25.3.i1157.3 = getelementptr i8, ptr %816, i64 76
  %831 = load i16, ptr %pos_x25.3.i1157.3, align 4
  %idxprom26.3.i1158.3 = sext i16 %831 to i64
  %arrayidx27.3.i1159.3 = getelementptr inbounds i16, ptr %830, i64 %idxprom26.3.i1158.3
  %832 = load i16, ptr %arrayidx27.3.i1159.3, align 2
  %conv28.3.i1163.3 = zext i16 %832 to i32
  %add29.3.i1164.3 = add nuw nsw i32 %add29.2.i1153.3, %conv28.3.i1163.3
  %arrayidx22.i1191.3 = getelementptr inbounds ptr, ptr %141, i64 %idxprom21.i1132.3
  %833 = load ptr, ptr %arrayidx22.i1191.3, align 8
  %arrayidx27.i1194.3 = getelementptr inbounds i16, ptr %833, i64 %idxprom26.i1135.3
  %834 = load i16, ptr %arrayidx27.i1194.3, align 2
  %conv28.i1195.3 = zext i16 %834 to i32
  %arrayidx22.1.i1198.3 = getelementptr inbounds ptr, ptr %141, i64 %idxprom21.1.i1139.3
  %835 = load ptr, ptr %arrayidx22.1.i1198.3, align 8
  %arrayidx27.1.i1201.3 = getelementptr inbounds i16, ptr %835, i64 %idxprom26.1.i1142.3
  %836 = load i16, ptr %arrayidx27.1.i1201.3, align 2
  %conv28.1.i1202.3 = zext i16 %836 to i32
  %add29.1.i1203.3 = add nuw nsw i32 %conv28.1.i1202.3, %conv28.i1195.3
  %arrayidx22.2.i1206.3 = getelementptr inbounds ptr, ptr %141, i64 %idxprom21.2.i1147.3
  %837 = load ptr, ptr %arrayidx22.2.i1206.3, align 8
  %arrayidx27.2.i1209.3 = getelementptr inbounds i16, ptr %837, i64 %idxprom26.2.i1150.3
  %838 = load i16, ptr %arrayidx27.2.i1209.3, align 2
  %conv28.2.i1210.3 = zext i16 %838 to i32
  %add29.2.i1211.3 = add nuw nsw i32 %add29.1.i1203.3, %conv28.2.i1210.3
  %arrayidx22.3.i1214.3 = getelementptr inbounds ptr, ptr %141, i64 %idxprom21.3.i1155.3
  %839 = load ptr, ptr %arrayidx22.3.i1214.3, align 8
  %arrayidx27.3.i1217.3 = getelementptr inbounds i16, ptr %839, i64 %idxprom26.3.i1158.3
  br label %if.end35.sink.split.i1218.3

for.end.i1225.3:                                  ; preds = %sw.bb137.3
  %840 = load i64, ptr %146, align 4
  %idxprom.i1168.3 = ashr i64 %840, 48
  %arrayidx.i1169.3 = getelementptr inbounds ptr, ptr %140, i64 %idxprom.i1168.3
  %841 = load ptr, ptr %arrayidx.i1169.3, align 8
  %842 = zext i8 %769 to i64
  %843 = getelementptr i16, ptr %841, i64 %842
  %sh.diff.i1170.3 = lshr i64 %840, 16
  %tr.sh.diff.i1171.3 = trunc i64 %sh.diff.i1170.3 to i32
  %conv.i1172.3 = ashr i32 %tr.sh.diff.i1171.3, 16
  %844 = sext i32 %conv.i1172.3 to i64
  %arrayidx7.i1173.3 = getelementptr i16, ptr %843, i64 %844
  %845 = load <4 x i16>, ptr %arrayidx7.i1173.3, align 2
  %846 = zext <4 x i16> %845 to <4 x i32>
  %847 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %846)
  %arrayidx.i1227.3 = getelementptr inbounds ptr, ptr %141, i64 %idxprom.i1168.3
  %848 = load ptr, ptr %arrayidx.i1227.3, align 8
  %849 = getelementptr i16, ptr %848, i64 %842
  %arrayidx7.i1231.3 = getelementptr i16, ptr %849, i64 %844
  %850 = load i16, ptr %arrayidx7.i1231.3, align 2
  %conv8.i1232.3 = zext i16 %850 to i32
  %851 = getelementptr i8, ptr %849, i64 2
  %arrayidx7.1.i1233.3 = getelementptr i16, ptr %851, i64 %844
  %852 = load i16, ptr %arrayidx7.1.i1233.3, align 2
  %conv8.1.i1234.3 = zext i16 %852 to i32
  %add9.1.i1235.3 = add nuw nsw i32 %conv8.1.i1234.3, %conv8.i1232.3
  %853 = getelementptr i8, ptr %849, i64 4
  %arrayidx7.2.i1236.3 = getelementptr i16, ptr %853, i64 %844
  %854 = load i16, ptr %arrayidx7.2.i1236.3, align 2
  %conv8.2.i1237.3 = zext i16 %854 to i32
  %add9.2.i1238.3 = add nuw nsw i32 %add9.1.i1235.3, %conv8.2.i1237.3
  %855 = getelementptr i8, ptr %849, i64 6
  %arrayidx7.3.i1239.3 = getelementptr i16, ptr %855, i64 %844
  br label %if.end35.sink.split.i1218.3

if.end35.sink.split.i1218.3:                      ; preds = %for.end.i1225.3, %for.end32.i1187.3
  %pred.21399.in.in.3 = phi i32 [ %add29.3.i1164.3, %for.end32.i1187.3 ], [ %847, %for.end.i1225.3 ]
  %arrayidx27.3.sink.i1219.3 = phi ptr [ %arrayidx27.3.i1217.3, %for.end32.i1187.3 ], [ %arrayidx7.3.i1239.3, %for.end.i1225.3 ]
  %add29.2.sink.i1220.3 = phi i32 [ %add29.2.i1211.3, %for.end32.i1187.3 ], [ %add9.2.i1238.3, %for.end.i1225.3 ]
  %pred.21399.in.3 = add nuw nsw i32 %pred.21399.in.in.3, 2
  %pred.21399.3 = lshr i32 %pred.21399.in.3, 2
  %856 = load i16, ptr %arrayidx27.3.sink.i1219.3, align 2
  %conv28.3.i1221.3 = zext i16 %856 to i32
  %add29.3.i1222.3 = add nuw nsw i32 %add29.2.sink.i1220.3, 2
  %add33.i1223.3 = add nuw nsw i32 %add29.3.i1222.3, %conv28.3.i1221.3
  %shr34.i1224.3 = lshr i32 %add33.i1223.3, 2
  br label %sw.epilog.3

sw.bb130.3:                                       ; preds = %sw.epilog.2
  br i1 %tobool.not.i1241, label %if.else.i.3, label %for.end.i1110.3

for.end.i1110.3:                                  ; preds = %sw.bb130.3
  %857 = load i64, ptr %146, align 4
  %idxprom.i1064.3 = ashr i64 %857, 48
  %arrayidx.i1065.3 = getelementptr inbounds ptr, ptr %140, i64 %idxprom.i1064.3
  %858 = load ptr, ptr %arrayidx.i1065.3, align 8
  %859 = zext i8 %769 to i64
  %860 = getelementptr i16, ptr %858, i64 %859
  %sh.diff.i1066.3 = lshr i64 %857, 16
  %tr.sh.diff.i1067.3 = trunc i64 %sh.diff.i1066.3 to i32
  %conv.i1068.3 = ashr i32 %tr.sh.diff.i1067.3, 16
  %861 = sext i32 %conv.i1068.3 to i64
  %arrayidx7.i.3 = getelementptr i16, ptr %860, i64 %861
  %862 = load <4 x i16>, ptr %arrayidx7.i.3, align 2
  %863 = zext <4 x i16> %862 to <4 x i32>
  %864 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %863)
  %arrayidx.i1112.3 = getelementptr inbounds ptr, ptr %141, i64 %idxprom.i1064.3
  %865 = load ptr, ptr %arrayidx.i1112.3, align 8
  %866 = getelementptr i16, ptr %865, i64 %859
  %arrayidx7.i1116.3 = getelementptr i16, ptr %866, i64 %861
  %867 = load i16, ptr %arrayidx7.i1116.3, align 2
  %conv8.i1117.3 = zext i16 %867 to i32
  %868 = getelementptr i8, ptr %866, i64 2
  %arrayidx7.1.i1118.3 = getelementptr i16, ptr %868, i64 %861
  %869 = load i16, ptr %arrayidx7.1.i1118.3, align 2
  %conv8.1.i1119.3 = zext i16 %869 to i32
  %add9.1.i1120.3 = add nuw nsw i32 %conv8.1.i1119.3, %conv8.i1117.3
  %870 = getelementptr i8, ptr %866, i64 4
  %arrayidx7.2.i1121.3 = getelementptr i16, ptr %870, i64 %861
  %871 = load i16, ptr %arrayidx7.2.i1121.3, align 2
  %conv8.2.i1122.3 = zext i16 %871 to i32
  %add9.2.i1123.3 = add nuw nsw i32 %add9.1.i1120.3, %conv8.2.i1122.3
  %872 = getelementptr i8, ptr %866, i64 6
  %arrayidx7.3.i1124.3 = getelementptr i16, ptr %872, i64 %861
  br label %if.end35.sink.split.i1103.3

if.else.i.3:                                      ; preds = %sw.bb130.3
  br i1 %tobool2.i, label %sw.epilog.3, label %for.end32.i1072.3

for.end32.i1072.3:                                ; preds = %if.else.i.3
  %873 = zext i8 %768 to i64
  %874 = getelementptr inbounds %struct.pix_pos, ptr %left, i64 %873
  %pos_y20.i.3 = getelementptr inbounds i8, ptr %874, i64 30
  %875 = load i16, ptr %pos_y20.i.3, align 2
  %idxprom21.i1055.3 = sext i16 %875 to i64
  %arrayidx22.i1056.3 = getelementptr inbounds ptr, ptr %140, i64 %idxprom21.i1055.3
  %876 = load ptr, ptr %arrayidx22.i1056.3, align 8
  %pos_x25.i.3 = getelementptr inbounds i8, ptr %874, i64 28
  %877 = load i16, ptr %pos_x25.i.3, align 4
  %idxprom26.i.3 = sext i16 %877 to i64
  %arrayidx27.i.3 = getelementptr inbounds i16, ptr %876, i64 %idxprom26.i.3
  %878 = load i16, ptr %arrayidx27.i.3, align 2
  %conv28.i.3 = zext i16 %878 to i32
  %pos_y20.1.i.3 = getelementptr i8, ptr %874, i64 46
  %879 = load i16, ptr %pos_y20.1.i.3, align 2
  %idxprom21.1.i1057.3 = sext i16 %879 to i64
  %arrayidx22.1.i1058.3 = getelementptr inbounds ptr, ptr %140, i64 %idxprom21.1.i1057.3
  %880 = load ptr, ptr %arrayidx22.1.i1058.3, align 8
  %pos_x25.1.i.3 = getelementptr i8, ptr %874, i64 44
  %881 = load i16, ptr %pos_x25.1.i.3, align 4
  %idxprom26.1.i.3 = sext i16 %881 to i64
  %arrayidx27.1.i.3 = getelementptr inbounds i16, ptr %880, i64 %idxprom26.1.i.3
  %882 = load i16, ptr %arrayidx27.1.i.3, align 2
  %conv28.1.i.3 = zext i16 %882 to i32
  %add29.1.i.3 = add nuw nsw i32 %conv28.1.i.3, %conv28.i.3
  %pos_y20.2.i.3 = getelementptr i8, ptr %874, i64 62
  %883 = load i16, ptr %pos_y20.2.i.3, align 2
  %idxprom21.2.i1059.3 = sext i16 %883 to i64
  %arrayidx22.2.i1060.3 = getelementptr inbounds ptr, ptr %140, i64 %idxprom21.2.i1059.3
  %884 = load ptr, ptr %arrayidx22.2.i1060.3, align 8
  %pos_x25.2.i.3 = getelementptr i8, ptr %874, i64 60
  %885 = load i16, ptr %pos_x25.2.i.3, align 4
  %idxprom26.2.i.3 = sext i16 %885 to i64
  %arrayidx27.2.i.3 = getelementptr inbounds i16, ptr %884, i64 %idxprom26.2.i.3
  %886 = load i16, ptr %arrayidx27.2.i.3, align 2
  %conv28.2.i.3 = zext i16 %886 to i32
  %add29.2.i.3 = add nuw nsw i32 %add29.1.i.3, %conv28.2.i.3
  %pos_y20.3.i.3 = getelementptr i8, ptr %874, i64 78
  %887 = load i16, ptr %pos_y20.3.i.3, align 2
  %idxprom21.3.i1061.3 = sext i16 %887 to i64
  %arrayidx22.3.i1062.3 = getelementptr inbounds ptr, ptr %140, i64 %idxprom21.3.i1061.3
  %888 = load ptr, ptr %arrayidx22.3.i1062.3, align 8
  %pos_x25.3.i.3 = getelementptr i8, ptr %874, i64 76
  %889 = load i16, ptr %pos_x25.3.i.3, align 4
  %idxprom26.3.i.3 = sext i16 %889 to i64
  %arrayidx27.3.i.3 = getelementptr inbounds i16, ptr %888, i64 %idxprom26.3.i.3
  %890 = load i16, ptr %arrayidx27.3.i.3, align 2
  %conv28.3.i.3 = zext i16 %890 to i32
  %add29.3.i.3 = add nuw nsw i32 %add29.2.i.3, %conv28.3.i.3
  %arrayidx22.i1076.3 = getelementptr inbounds ptr, ptr %141, i64 %idxprom21.i1055.3
  %891 = load ptr, ptr %arrayidx22.i1076.3, align 8
  %arrayidx27.i1079.3 = getelementptr inbounds i16, ptr %891, i64 %idxprom26.i.3
  %892 = load i16, ptr %arrayidx27.i1079.3, align 2
  %conv28.i1080.3 = zext i16 %892 to i32
  %arrayidx22.1.i1083.3 = getelementptr inbounds ptr, ptr %141, i64 %idxprom21.1.i1057.3
  %893 = load ptr, ptr %arrayidx22.1.i1083.3, align 8
  %arrayidx27.1.i1086.3 = getelementptr inbounds i16, ptr %893, i64 %idxprom26.1.i.3
  %894 = load i16, ptr %arrayidx27.1.i1086.3, align 2
  %conv28.1.i1087.3 = zext i16 %894 to i32
  %add29.1.i1088.3 = add nuw nsw i32 %conv28.1.i1087.3, %conv28.i1080.3
  %arrayidx22.2.i1091.3 = getelementptr inbounds ptr, ptr %141, i64 %idxprom21.2.i1059.3
  %895 = load ptr, ptr %arrayidx22.2.i1091.3, align 8
  %arrayidx27.2.i1094.3 = getelementptr inbounds i16, ptr %895, i64 %idxprom26.2.i.3
  %896 = load i16, ptr %arrayidx27.2.i1094.3, align 2
  %conv28.2.i1095.3 = zext i16 %896 to i32
  %add29.2.i1096.3 = add nuw nsw i32 %add29.1.i1088.3, %conv28.2.i1095.3
  %arrayidx22.3.i1099.3 = getelementptr inbounds ptr, ptr %141, i64 %idxprom21.3.i1061.3
  %897 = load ptr, ptr %arrayidx22.3.i1099.3, align 8
  %arrayidx27.3.i1102.3 = getelementptr inbounds i16, ptr %897, i64 %idxprom26.3.i.3
  br label %if.end35.sink.split.i1103.3

if.end35.sink.split.i1103.3:                      ; preds = %for.end32.i1072.3, %for.end.i1110.3
  %pred.11386.in.in.3 = phi i32 [ %add29.3.i.3, %for.end32.i1072.3 ], [ %864, %for.end.i1110.3 ]
  %arrayidx27.3.sink.i1104.3 = phi ptr [ %arrayidx27.3.i1102.3, %for.end32.i1072.3 ], [ %arrayidx7.3.i1124.3, %for.end.i1110.3 ]
  %add29.2.sink.i1105.3 = phi i32 [ %add29.2.i1096.3, %for.end32.i1072.3 ], [ %add9.2.i1123.3, %for.end.i1110.3 ]
  %pred.11386.in.3 = add nuw nsw i32 %pred.11386.in.in.3, 2
  %pred.11386.3 = lshr i32 %pred.11386.in.3, 2
  %898 = load i16, ptr %arrayidx27.3.sink.i1104.3, align 2
  %conv28.3.i1106.3 = zext i16 %898 to i32
  %add29.3.i1107.3 = add nuw nsw i32 %add29.2.sink.i1105.3, 2
  %add33.i1108.3 = add nuw nsw i32 %add29.3.i1107.3, %conv28.3.i1106.3
  %shr34.i1109.3 = lshr i32 %add33.i1108.3, 2
  br label %sw.epilog.3

sw.bb123.3:                                       ; preds = %sw.epilog.2
  %add126.3 = add nuw nsw i32 %conv106.3, 1
  %899 = load i64, ptr %146, align 4
  br i1 %tobool.not.i1241, label %if.end.thread.i.3, label %if.end.i.3

if.end.i.3:                                       ; preds = %sw.bb123.3
  %900 = zext i8 %769 to i64
  %idxprom.i.3 = ashr i64 %899, 48
  %arrayidx.i.3 = getelementptr inbounds ptr, ptr %140, i64 %idxprom.i.3
  %901 = load ptr, ptr %arrayidx.i.3, align 8
  %902 = getelementptr i16, ptr %901, i64 %900
  %sh.diff.i.3 = lshr i64 %899, 16
  %tr.sh.diff.i.3 = trunc i64 %sh.diff.i.3 to i32
  %conv.i.3 = ashr i32 %tr.sh.diff.i.3, 16
  %903 = sext i32 %conv.i.3 to i64
  %arrayidx3.i.3 = getelementptr i16, ptr %902, i64 %903
  %904 = load <4 x i16>, ptr %arrayidx3.i.3, align 2
  %905 = zext <4 x i16> %904 to <4 x i32>
  %906 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %905)
  br i1 %tobool2.i, label %if.then35.i.3, label %if.end28.i.3

if.then35.i.3:                                    ; preds = %if.end.i.3
  %add36.i.3 = add nuw nsw i32 %906, 2
  %shr37.i.3 = lshr i32 %add36.i.3, 2
  br label %if.end.i988.3

if.end.thread.i.3:                                ; preds = %sw.bb123.3
  br i1 %tobool2.i, label %sw.epilog.3, label %if.end28.i.3

if.end28.i.3:                                     ; preds = %if.end.thread.i.3, %if.end.i.3
  %s0.174.ph.i.3 = phi i32 [ 0, %if.end.thread.i.3 ], [ %906, %if.end.i.3 ]
  %907 = zext nneg i32 %add126.3 to i64
  %arrayidx14.i.3 = getelementptr inbounds %struct.pix_pos, ptr %left, i64 %907
  %pos_y15.i.3 = getelementptr inbounds i8, ptr %arrayidx14.i.3, i64 14
  %908 = load i16, ptr %pos_y15.i.3, align 2
  %idxprom16.i.3 = sext i16 %908 to i64
  %arrayidx17.i.3 = getelementptr inbounds ptr, ptr %140, i64 %idxprom16.i.3
  %909 = load ptr, ptr %arrayidx17.i.3, align 8
  %pos_x20.i.3 = getelementptr inbounds i8, ptr %arrayidx14.i.3, i64 12
  %910 = load i16, ptr %pos_x20.i.3, align 4
  %idxprom21.i.3 = sext i16 %910 to i64
  %arrayidx22.i.3 = getelementptr inbounds i16, ptr %909, i64 %idxprom21.i.3
  %911 = load i16, ptr %arrayidx22.i.3, align 2
  %conv23.i.3 = zext i16 %911 to i32
  %pos_y15.1.i.3 = getelementptr i8, ptr %arrayidx14.i.3, i64 30
  %912 = load i16, ptr %pos_y15.1.i.3, align 2
  %idxprom16.1.i.3 = sext i16 %912 to i64
  %arrayidx17.1.i.3 = getelementptr inbounds ptr, ptr %140, i64 %idxprom16.1.i.3
  %913 = load ptr, ptr %arrayidx17.1.i.3, align 8
  %pos_x20.1.i.3 = getelementptr i8, ptr %arrayidx14.i.3, i64 28
  %914 = load i16, ptr %pos_x20.1.i.3, align 4
  %idxprom21.1.i.3 = sext i16 %914 to i64
  %arrayidx22.1.i.3 = getelementptr inbounds i16, ptr %913, i64 %idxprom21.1.i.3
  %915 = load i16, ptr %arrayidx22.1.i.3, align 2
  %conv23.1.i.3 = zext i16 %915 to i32
  %add24.1.i.3 = add nuw nsw i32 %conv23.1.i.3, %conv23.i.3
  %pos_y15.2.i.3 = getelementptr i8, ptr %arrayidx14.i.3, i64 46
  %916 = load i16, ptr %pos_y15.2.i.3, align 2
  %idxprom16.2.i.3 = sext i16 %916 to i64
  %arrayidx17.2.i.3 = getelementptr inbounds ptr, ptr %140, i64 %idxprom16.2.i.3
  %917 = load ptr, ptr %arrayidx17.2.i.3, align 8
  %pos_x20.2.i.3 = getelementptr i8, ptr %arrayidx14.i.3, i64 44
  %918 = load i16, ptr %pos_x20.2.i.3, align 4
  %idxprom21.2.i.3 = sext i16 %918 to i64
  %arrayidx22.2.i.3 = getelementptr inbounds i16, ptr %917, i64 %idxprom21.2.i.3
  %919 = load i16, ptr %arrayidx22.2.i.3, align 2
  %conv23.2.i.3 = zext i16 %919 to i32
  %add24.2.i.3 = add nuw nsw i32 %add24.1.i.3, %conv23.2.i.3
  %pos_y15.3.i.3 = getelementptr i8, ptr %arrayidx14.i.3, i64 62
  %920 = load i16, ptr %pos_y15.3.i.3, align 2
  %idxprom16.3.i.3 = sext i16 %920 to i64
  %arrayidx17.3.i.3 = getelementptr inbounds ptr, ptr %140, i64 %idxprom16.3.i.3
  %921 = load ptr, ptr %arrayidx17.3.i.3, align 8
  %pos_x20.3.i.3 = getelementptr i8, ptr %arrayidx14.i.3, i64 60
  %922 = load i16, ptr %pos_x20.3.i.3, align 4
  %idxprom21.3.i.3 = sext i16 %922 to i64
  %arrayidx22.3.i.3 = getelementptr inbounds i16, ptr %921, i64 %idxprom21.3.i.3
  %923 = load i16, ptr %arrayidx22.3.i.3, align 2
  %conv23.3.i.3 = zext i16 %923 to i32
  %add24.3.i.3 = add nuw nsw i32 %add24.2.i.3, %conv23.3.i.3
  br i1 %tobool.not.i1241, label %if.end.thread.i1052.3, label %if.then31.i.3

if.then31.i.3:                                    ; preds = %if.end28.i.3
  %add32.i.3 = add nuw nsw i32 %s0.174.ph.i.3, 4
  %add33.i.3 = add nuw nsw i32 %add32.i.3, %add24.3.i.3
  %shr.i.3 = lshr i32 %add33.i.3, 3
  %.pre1798 = ashr i64 %899, 48
  %.pre1889 = zext i8 %769 to i64
  %.pre1891 = lshr i64 %899, 16
  %.pre1892 = trunc i64 %.pre1891 to i32
  %.pre1893 = ashr i32 %.pre1892, 16
  %.pre1894 = sext i32 %.pre1893 to i64
  br label %if.end.i988.3

if.end.i988.3:                                    ; preds = %if.then31.i.3, %if.then35.i.3
  %.pre-phi1895 = phi i64 [ %.pre1894, %if.then31.i.3 ], [ %903, %if.then35.i.3 ]
  %.pre-phi1890 = phi i64 [ %.pre1889, %if.then31.i.3 ], [ %900, %if.then35.i.3 ]
  %idxprom.i989.3.pre-phi = phi i64 [ %.pre1798, %if.then31.i.3 ], [ %idxprom.i.3, %if.then35.i.3 ]
  %pred.0.3 = phi i32 [ %shr.i.3, %if.then31.i.3 ], [ %shr37.i.3, %if.then35.i.3 ]
  %arrayidx.i990.3 = getelementptr inbounds ptr, ptr %141, i64 %idxprom.i989.3.pre-phi
  %924 = load ptr, ptr %arrayidx.i990.3, align 8
  %925 = getelementptr i16, ptr %924, i64 %.pre-phi1890
  %arrayidx3.i994.3 = getelementptr i16, ptr %925, i64 %.pre-phi1895
  %926 = load i16, ptr %arrayidx3.i994.3, align 2
  %conv4.i995.3 = zext i16 %926 to i32
  %927 = getelementptr i8, ptr %925, i64 2
  %arrayidx3.1.i996.3 = getelementptr i16, ptr %927, i64 %.pre-phi1895
  %928 = load i16, ptr %arrayidx3.1.i996.3, align 2
  %conv4.1.i997.3 = zext i16 %928 to i32
  %add5.1.i998.3 = add nuw nsw i32 %conv4.1.i997.3, %conv4.i995.3
  %929 = getelementptr i8, ptr %925, i64 4
  %arrayidx3.2.i999.3 = getelementptr i16, ptr %929, i64 %.pre-phi1895
  %930 = load i16, ptr %arrayidx3.2.i999.3, align 2
  %conv4.2.i1000.3 = zext i16 %930 to i32
  %add5.2.i1001.3 = add nuw nsw i32 %add5.1.i998.3, %conv4.2.i1000.3
  %931 = getelementptr i8, ptr %925, i64 6
  %arrayidx3.3.i1002.3 = getelementptr i16, ptr %931, i64 %.pre-phi1895
  %932 = load i16, ptr %arrayidx3.3.i1002.3, align 2
  %conv4.3.i1003.3 = zext i16 %932 to i32
  %add5.3.i1004.3 = add nuw nsw i32 %add5.2.i1001.3, %conv4.3.i1003.3
  br i1 %tobool2.i, label %if.then35.i1049.3, label %if.end.i988.3.if.end28.i1006.3_crit_edge

if.end.i988.3.if.end28.i1006.3_crit_edge:         ; preds = %if.end.i988.3
  %.phi.trans.insert1799 = zext nneg i32 %add126.3 to i64
  %arrayidx14.i1008.3.phi.trans.insert = getelementptr inbounds %struct.pix_pos, ptr %left, i64 %.phi.trans.insert1799
  %pos_y15.i1009.3.phi.trans.insert = getelementptr inbounds i8, ptr %arrayidx14.i1008.3.phi.trans.insert, i64 14
  %.pre1800 = load i16, ptr %pos_y15.i1009.3.phi.trans.insert, align 2
  %pos_x20.i1012.3.phi.trans.insert = getelementptr inbounds i8, ptr %arrayidx14.i1008.3.phi.trans.insert, i64 12
  %.pre1803 = load i16, ptr %pos_x20.i1012.3.phi.trans.insert, align 4
  %pos_y15.1.i1016.3.phi.trans.insert = getelementptr i8, ptr %arrayidx14.i1008.3.phi.trans.insert, i64 30
  %.pre1806 = load i16, ptr %pos_y15.1.i1016.3.phi.trans.insert, align 2
  %pos_x20.1.i1019.3.phi.trans.insert = getelementptr i8, ptr %arrayidx14.i1008.3.phi.trans.insert, i64 28
  %.pre1809 = load i16, ptr %pos_x20.1.i1019.3.phi.trans.insert, align 4
  %pos_y15.2.i1024.3.phi.trans.insert = getelementptr i8, ptr %arrayidx14.i1008.3.phi.trans.insert, i64 46
  %.pre1812 = load i16, ptr %pos_y15.2.i1024.3.phi.trans.insert, align 2
  %pos_x20.2.i1027.3.phi.trans.insert = getelementptr i8, ptr %arrayidx14.i1008.3.phi.trans.insert, i64 44
  %.pre1815 = load i16, ptr %pos_x20.2.i1027.3.phi.trans.insert, align 4
  %pos_y15.3.i1032.3.phi.trans.insert = getelementptr i8, ptr %arrayidx14.i1008.3.phi.trans.insert, i64 62
  %.pre1818 = load i16, ptr %pos_y15.3.i1032.3.phi.trans.insert, align 2
  %pos_x20.3.i1035.3.phi.trans.insert = getelementptr i8, ptr %arrayidx14.i1008.3.phi.trans.insert, i64 60
  %.pre1821 = load i16, ptr %pos_x20.3.i1035.3.phi.trans.insert, align 4
  %.pre1881 = sext i16 %.pre1800 to i64
  %.pre1882 = sext i16 %.pre1803 to i64
  %.pre1883 = sext i16 %.pre1806 to i64
  %.pre1884 = sext i16 %.pre1809 to i64
  %.pre1885 = sext i16 %.pre1812 to i64
  %.pre1886 = sext i16 %.pre1815 to i64
  %.pre1887 = sext i16 %.pre1818 to i64
  %.pre1888 = sext i16 %.pre1821 to i64
  br label %if.end28.i1006.3

if.then35.i1049.3:                                ; preds = %if.end.i988.3
  %add36.i1050.3 = add nuw nsw i32 %add5.3.i1004.3, 2
  %shr37.i1051.3 = lshr i32 %add36.i1050.3, 2
  br label %sw.epilog.3

if.end.thread.i1052.3:                            ; preds = %if.end28.i.3
  %add41.i.3 = add nuw nsw i32 %add24.3.i.3, 2
  %shr42.i.3 = lshr i32 %add41.i.3, 2
  br label %if.end28.i1006.3

if.end28.i1006.3:                                 ; preds = %if.end.i988.3.if.end28.i1006.3_crit_edge, %if.end.thread.i1052.3
  %idxprom21.3.i1036.3.pre-phi = phi i64 [ %.pre1888, %if.end.i988.3.if.end28.i1006.3_crit_edge ], [ %idxprom21.3.i.3, %if.end.thread.i1052.3 ]
  %idxprom16.3.i1033.3.pre-phi = phi i64 [ %.pre1887, %if.end.i988.3.if.end28.i1006.3_crit_edge ], [ %idxprom16.3.i.3, %if.end.thread.i1052.3 ]
  %idxprom21.2.i1028.3.pre-phi = phi i64 [ %.pre1886, %if.end.i988.3.if.end28.i1006.3_crit_edge ], [ %idxprom21.2.i.3, %if.end.thread.i1052.3 ]
  %idxprom16.2.i1025.3.pre-phi = phi i64 [ %.pre1885, %if.end.i988.3.if.end28.i1006.3_crit_edge ], [ %idxprom16.2.i.3, %if.end.thread.i1052.3 ]
  %idxprom21.1.i1020.3.pre-phi = phi i64 [ %.pre1884, %if.end.i988.3.if.end28.i1006.3_crit_edge ], [ %idxprom21.1.i.3, %if.end.thread.i1052.3 ]
  %idxprom16.1.i1017.3.pre-phi = phi i64 [ %.pre1883, %if.end.i988.3.if.end28.i1006.3_crit_edge ], [ %idxprom16.1.i.3, %if.end.thread.i1052.3 ]
  %idxprom21.i1013.3.pre-phi = phi i64 [ %.pre1882, %if.end.i988.3.if.end28.i1006.3_crit_edge ], [ %idxprom21.i.3, %if.end.thread.i1052.3 ]
  %idxprom16.i1010.3.pre-phi = phi i64 [ %.pre1881, %if.end.i988.3.if.end28.i1006.3_crit_edge ], [ %idxprom16.i.3, %if.end.thread.i1052.3 ]
  %pred.01381.3 = phi i32 [ %pred.0.3, %if.end.i988.3.if.end28.i1006.3_crit_edge ], [ %shr42.i.3, %if.end.thread.i1052.3 ]
  %s0.174.ph.i1007.3 = phi i32 [ %add5.3.i1004.3, %if.end.i988.3.if.end28.i1006.3_crit_edge ], [ 0, %if.end.thread.i1052.3 ]
  %arrayidx17.i1011.3 = getelementptr inbounds ptr, ptr %141, i64 %idxprom16.i1010.3.pre-phi
  %933 = load ptr, ptr %arrayidx17.i1011.3, align 8
  %arrayidx22.i1014.3 = getelementptr inbounds i16, ptr %933, i64 %idxprom21.i1013.3.pre-phi
  %934 = load i16, ptr %arrayidx22.i1014.3, align 2
  %conv23.i1015.3 = zext i16 %934 to i32
  %arrayidx17.1.i1018.3 = getelementptr inbounds ptr, ptr %141, i64 %idxprom16.1.i1017.3.pre-phi
  %935 = load ptr, ptr %arrayidx17.1.i1018.3, align 8
  %arrayidx22.1.i1021.3 = getelementptr inbounds i16, ptr %935, i64 %idxprom21.1.i1020.3.pre-phi
  %936 = load i16, ptr %arrayidx22.1.i1021.3, align 2
  %conv23.1.i1022.3 = zext i16 %936 to i32
  %add24.1.i1023.3 = add nuw nsw i32 %conv23.1.i1022.3, %conv23.i1015.3
  %arrayidx17.2.i1026.3 = getelementptr inbounds ptr, ptr %141, i64 %idxprom16.2.i1025.3.pre-phi
  %937 = load ptr, ptr %arrayidx17.2.i1026.3, align 8
  %arrayidx22.2.i1029.3 = getelementptr inbounds i16, ptr %937, i64 %idxprom21.2.i1028.3.pre-phi
  %938 = load i16, ptr %arrayidx22.2.i1029.3, align 2
  %conv23.2.i1030.3 = zext i16 %938 to i32
  %add24.2.i1031.3 = add nuw nsw i32 %add24.1.i1023.3, %conv23.2.i1030.3
  %arrayidx17.3.i1034.3 = getelementptr inbounds ptr, ptr %141, i64 %idxprom16.3.i1033.3.pre-phi
  %939 = load ptr, ptr %arrayidx17.3.i1034.3, align 8
  %arrayidx22.3.i1037.3 = getelementptr inbounds i16, ptr %939, i64 %idxprom21.3.i1036.3.pre-phi
  %940 = load i16, ptr %arrayidx22.3.i1037.3, align 2
  %conv23.3.i1038.3 = zext i16 %940 to i32
  %add24.3.i1039.3 = add nuw nsw i32 %add24.2.i1031.3, %conv23.3.i1038.3
  br i1 %tobool.not.i1241, label %if.then40.i1046.3, label %if.then31.i1040.3

if.then31.i1040.3:                                ; preds = %if.end28.i1006.3
  %add32.i1041.3 = add nuw nsw i32 %s0.174.ph.i1007.3, 4
  %add33.i1042.3 = add nuw nsw i32 %add32.i1041.3, %add24.3.i1039.3
  %shr.i1043.3 = lshr i32 %add33.i1042.3, 3
  br label %sw.epilog.3

if.then40.i1046.3:                                ; preds = %if.end28.i1006.3
  %add41.i1047.3 = add nuw nsw i32 %add24.3.i1039.3, 2
  %shr42.i1048.3 = lshr i32 %add41.i1047.3, 2
  br label %sw.epilog.3

sw.epilog.3:                                      ; preds = %if.then40.i1046.3, %if.then31.i1040.3, %if.then35.i1049.3, %if.end.thread.i.3, %if.end35.sink.split.i1103.3, %if.else.i.3, %if.end35.sink.split.i1218.3, %if.else.i1128.3, %if.then40.i1368.3, %if.then31.i1362.3, %if.then35.i1371.3, %if.end.thread.i1306.3, %sw.epilog.2
  %pred.4.3 = phi i32 [ %770, %sw.epilog.2 ], [ %pred.0.3, %if.then35.i1049.3 ], [ %pred.01381.3, %if.then40.i1046.3 ], [ %pred.01381.3, %if.then31.i1040.3 ], [ %pred.11386.3, %if.end35.sink.split.i1103.3 ], [ %pred.21399.3, %if.end35.sink.split.i1218.3 ], [ %pred.3.3, %if.then35.i1371.3 ], [ %pred.31414.3, %if.then40.i1368.3 ], [ %pred.31414.3, %if.then31.i1362.3 ], [ %770, %if.end.thread.i.3 ], [ %770, %if.else.i.3 ], [ %770, %if.else.i1128.3 ], [ %770, %if.end.thread.i1306.3 ]
  %pred1.4.3 = phi i32 [ %771, %sw.epilog.2 ], [ %shr37.i1051.3, %if.then35.i1049.3 ], [ %shr42.i1048.3, %if.then40.i1046.3 ], [ %shr.i1043.3, %if.then31.i1040.3 ], [ %shr34.i1109.3, %if.end35.sink.split.i1103.3 ], [ %shr34.i1224.3, %if.end35.sink.split.i1218.3 ], [ %shr37.i1373.3, %if.then35.i1371.3 ], [ %shr42.i1370.3, %if.then40.i1368.3 ], [ %shr.i1365.3, %if.then31.i1362.3 ], [ %771, %if.end.thread.i.3 ], [ %771, %if.else.i.3 ], [ %771, %if.else.i1128.3 ], [ %771, %if.end.thread.i1306.3 ]
  %conv161.3 = trunc i32 %pred.4.3 to i16
  %conv166.3 = trunc i32 %pred1.4.3 to i16
  %941 = zext i8 %769 to i64
  %942 = zext i8 %768 to i64
  %arrayidx163.31609 = getelementptr inbounds ptr, ptr %143, i64 %942
  %arrayidx168.31610 = getelementptr inbounds ptr, ptr %144, i64 %942
  %943 = load ptr, ptr %arrayidx163.31609, align 8
  %arrayidx165.31611 = getelementptr inbounds i16, ptr %943, i64 %941
  store i16 %conv161.3, ptr %arrayidx165.31611, align 2
  %944 = load ptr, ptr %arrayidx168.31610, align 8
  %arrayidx170.31612 = getelementptr inbounds i16, ptr %944, i64 %941
  store i16 %conv166.3, ptr %arrayidx170.31612, align 2
  %indvars.iv.next1558.31613 = add nuw nsw i64 %941, 1
  %945 = load ptr, ptr %arrayidx163.31609, align 8
  %arrayidx165.1.31614 = getelementptr inbounds i16, ptr %945, i64 %indvars.iv.next1558.31613
  store i16 %conv161.3, ptr %arrayidx165.1.31614, align 2
  %946 = load ptr, ptr %arrayidx168.31610, align 8
  %arrayidx170.1.31615 = getelementptr inbounds i16, ptr %946, i64 %indvars.iv.next1558.31613
  store i16 %conv166.3, ptr %arrayidx170.1.31615, align 2
  %indvars.iv.next1558.1.31616 = add nuw nsw i64 %941, 2
  %947 = load ptr, ptr %arrayidx163.31609, align 8
  %arrayidx165.2.31617 = getelementptr inbounds i16, ptr %947, i64 %indvars.iv.next1558.1.31616
  store i16 %conv161.3, ptr %arrayidx165.2.31617, align 2
  %948 = load ptr, ptr %arrayidx168.31610, align 8
  %arrayidx170.2.31618 = getelementptr inbounds i16, ptr %948, i64 %indvars.iv.next1558.1.31616
  store i16 %conv166.3, ptr %arrayidx170.2.31618, align 2
  %indvars.iv.next1558.2.31619 = add nuw nsw i64 %941, 3
  %949 = load ptr, ptr %arrayidx163.31609, align 8
  %arrayidx165.3.31620 = getelementptr inbounds i16, ptr %949, i64 %indvars.iv.next1558.2.31619
  store i16 %conv161.3, ptr %arrayidx165.3.31620, align 2
  %950 = load ptr, ptr %arrayidx168.31610, align 8
  %arrayidx170.3.31621 = getelementptr inbounds i16, ptr %950, i64 %indvars.iv.next1558.2.31619
  store i16 %conv166.3, ptr %arrayidx170.3.31621, align 2
  %indvars.iv.next1563.3 = add nuw nsw i64 %942, 1
  %arrayidx163.1.3 = getelementptr inbounds ptr, ptr %143, i64 %indvars.iv.next1563.3
  %arrayidx168.1.3 = getelementptr inbounds ptr, ptr %144, i64 %indvars.iv.next1563.3
  %951 = load ptr, ptr %arrayidx163.1.3, align 8
  %arrayidx165.11567.3 = getelementptr inbounds i16, ptr %951, i64 %941
  store i16 %conv161.3, ptr %arrayidx165.11567.3, align 2
  %952 = load ptr, ptr %arrayidx168.1.3, align 8
  %arrayidx170.11568.3 = getelementptr inbounds i16, ptr %952, i64 %941
  store i16 %conv166.3, ptr %arrayidx170.11568.3, align 2
  %953 = load ptr, ptr %arrayidx163.1.3, align 8
  %arrayidx165.1.1.3 = getelementptr inbounds i16, ptr %953, i64 %indvars.iv.next1558.31613
  store i16 %conv161.3, ptr %arrayidx165.1.1.3, align 2
  %954 = load ptr, ptr %arrayidx168.1.3, align 8
  %arrayidx170.1.1.3 = getelementptr inbounds i16, ptr %954, i64 %indvars.iv.next1558.31613
  store i16 %conv166.3, ptr %arrayidx170.1.1.3, align 2
  %955 = load ptr, ptr %arrayidx163.1.3, align 8
  %arrayidx165.2.1.3 = getelementptr inbounds i16, ptr %955, i64 %indvars.iv.next1558.1.31616
  store i16 %conv161.3, ptr %arrayidx165.2.1.3, align 2
  %956 = load ptr, ptr %arrayidx168.1.3, align 8
  %arrayidx170.2.1.3 = getelementptr inbounds i16, ptr %956, i64 %indvars.iv.next1558.1.31616
  store i16 %conv166.3, ptr %arrayidx170.2.1.3, align 2
  %957 = load ptr, ptr %arrayidx163.1.3, align 8
  %arrayidx165.3.1.3 = getelementptr inbounds i16, ptr %957, i64 %indvars.iv.next1558.2.31619
  store i16 %conv161.3, ptr %arrayidx165.3.1.3, align 2
  %958 = load ptr, ptr %arrayidx168.1.3, align 8
  %arrayidx170.3.1.3 = getelementptr inbounds i16, ptr %958, i64 %indvars.iv.next1558.2.31619
  store i16 %conv166.3, ptr %arrayidx170.3.1.3, align 2
  %indvars.iv.next1563.1.3 = add nuw nsw i64 %942, 2
  %arrayidx163.2.3 = getelementptr inbounds ptr, ptr %143, i64 %indvars.iv.next1563.1.3
  %arrayidx168.2.3 = getelementptr inbounds ptr, ptr %144, i64 %indvars.iv.next1563.1.3
  %959 = load ptr, ptr %arrayidx163.2.3, align 8
  %arrayidx165.21570.3 = getelementptr inbounds i16, ptr %959, i64 %941
  store i16 %conv161.3, ptr %arrayidx165.21570.3, align 2
  %960 = load ptr, ptr %arrayidx168.2.3, align 8
  %arrayidx170.21571.3 = getelementptr inbounds i16, ptr %960, i64 %941
  store i16 %conv166.3, ptr %arrayidx170.21571.3, align 2
  %961 = load ptr, ptr %arrayidx163.2.3, align 8
  %arrayidx165.1.2.3 = getelementptr inbounds i16, ptr %961, i64 %indvars.iv.next1558.31613
  store i16 %conv161.3, ptr %arrayidx165.1.2.3, align 2
  %962 = load ptr, ptr %arrayidx168.2.3, align 8
  %arrayidx170.1.2.3 = getelementptr inbounds i16, ptr %962, i64 %indvars.iv.next1558.31613
  store i16 %conv166.3, ptr %arrayidx170.1.2.3, align 2
  %963 = load ptr, ptr %arrayidx163.2.3, align 8
  %arrayidx165.2.2.3 = getelementptr inbounds i16, ptr %963, i64 %indvars.iv.next1558.1.31616
  store i16 %conv161.3, ptr %arrayidx165.2.2.3, align 2
  %964 = load ptr, ptr %arrayidx168.2.3, align 8
  %arrayidx170.2.2.3 = getelementptr inbounds i16, ptr %964, i64 %indvars.iv.next1558.1.31616
  store i16 %conv166.3, ptr %arrayidx170.2.2.3, align 2
  %965 = load ptr, ptr %arrayidx163.2.3, align 8
  %arrayidx165.3.2.3 = getelementptr inbounds i16, ptr %965, i64 %indvars.iv.next1558.2.31619
  store i16 %conv161.3, ptr %arrayidx165.3.2.3, align 2
  %966 = load ptr, ptr %arrayidx168.2.3, align 8
  %arrayidx170.3.2.3 = getelementptr inbounds i16, ptr %966, i64 %indvars.iv.next1558.2.31619
  store i16 %conv166.3, ptr %arrayidx170.3.2.3, align 2
  %indvars.iv.next1563.2.3 = add nuw nsw i64 %942, 3
  %arrayidx163.3.3 = getelementptr inbounds ptr, ptr %143, i64 %indvars.iv.next1563.2.3
  %arrayidx168.3.3 = getelementptr inbounds ptr, ptr %144, i64 %indvars.iv.next1563.2.3
  %967 = load ptr, ptr %arrayidx163.3.3, align 8
  %arrayidx165.31573.3 = getelementptr inbounds i16, ptr %967, i64 %941
  store i16 %conv161.3, ptr %arrayidx165.31573.3, align 2
  %968 = load ptr, ptr %arrayidx168.3.3, align 8
  %arrayidx170.31574.3 = getelementptr inbounds i16, ptr %968, i64 %941
  store i16 %conv166.3, ptr %arrayidx170.31574.3, align 2
  %969 = load ptr, ptr %arrayidx163.3.3, align 8
  %arrayidx165.1.3.3 = getelementptr inbounds i16, ptr %969, i64 %indvars.iv.next1558.31613
  store i16 %conv161.3, ptr %arrayidx165.1.3.3, align 2
  %970 = load ptr, ptr %arrayidx168.3.3, align 8
  %arrayidx170.1.3.3 = getelementptr inbounds i16, ptr %970, i64 %indvars.iv.next1558.31613
  store i16 %conv166.3, ptr %arrayidx170.1.3.3, align 2
  %971 = load ptr, ptr %arrayidx163.3.3, align 8
  %arrayidx165.2.3.3 = getelementptr inbounds i16, ptr %971, i64 %indvars.iv.next1558.1.31616
  store i16 %conv161.3, ptr %arrayidx165.2.3.3, align 2
  %972 = load ptr, ptr %arrayidx168.3.3, align 8
  %arrayidx170.2.3.3 = getelementptr inbounds i16, ptr %972, i64 %indvars.iv.next1558.1.31616
  store i16 %conv166.3, ptr %arrayidx170.2.3.3, align 2
  %973 = load ptr, ptr %arrayidx163.3.3, align 8
  %arrayidx165.3.3.3 = getelementptr inbounds i16, ptr %973, i64 %indvars.iv.next1558.2.31619
  store i16 %conv161.3, ptr %arrayidx165.3.3.3, align 2
  %974 = load ptr, ptr %arrayidx168.3.3, align 8
  %arrayidx170.3.3.3 = getelementptr inbounds i16, ptr %974, i64 %indvars.iv.next1558.2.31619
  store i16 %conv166.3, ptr %arrayidx170.3.3.3, align 2
  %indvars.iv.next1624 = add nuw nsw i64 %indvars.iv1623, 1
  %975 = load i32, ptr %num_uv_blocks, align 4
  %976 = sext i32 %975 to i64
  %cmp93 = icmp slt i64 %indvars.iv.next1624, %976
  br i1 %cmp93, label %for.cond96.preheader, label %for.end182

for.end182:                                       ; preds = %sw.epilog.3, %if.end
  call void @llvm.lifetime.end.p0(i64 272, ptr nonnull %left) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %up) #5
  br label %sw.epilog747

sw.bb183:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 272, ptr nonnull %left184) #5
  %mb_cr_size_x = getelementptr inbounds i8, ptr %1, i64 849108
  %977 = load i32, ptr %mb_cr_size_x, align 4
  %mb_cr_size_y188 = getelementptr inbounds i8, ptr %1, i64 849112
  %978 = load i32, ptr %mb_cr_size_y188, align 8
  %shr190 = ashr i32 %978, 1
  %cmp193.not1444 = icmp slt i32 %978, 0
  br i1 %cmp193.not1444, label %for.end204, label %for.body195.lr.ph

for.body195.lr.ph:                                ; preds = %sw.bb183
  %arrayidx198 = getelementptr inbounds i8, ptr %1, i64 849132
  %979 = add nuw i32 %978, 1
  %wide.trip.count1523 = zext i32 %979 to i64
  br label %for.body195

for.body195:                                      ; preds = %for.body195.lr.ph, %for.body195
  %indvars.iv1519 = phi i64 [ 0, %for.body195.lr.ph ], [ %indvars.iv.next1520, %for.body195 ]
  %arrayidx201 = getelementptr inbounds [17 x %struct.pix_pos], ptr %left184, i64 0, i64 %indvars.iv1519
  %980 = trunc i64 %indvars.iv1519 to i32
  %981 = add i32 %980, -1
  call void @getAffNeighbour(ptr noundef nonnull %currMB, i32 noundef -1, i32 noundef %981, ptr noundef nonnull %arrayidx198, ptr noundef nonnull %arrayidx201) #5
  %indvars.iv.next1520 = add nuw nsw i64 %indvars.iv1519, 1
  %exitcond1524.not = icmp eq i64 %indvars.iv.next1520, %wide.trip.count1523
  br i1 %exitcond1524.not, label %for.end204, label %for.body195

for.end204:                                       ; preds = %for.body195, %sw.bb183
  %active_pps205 = getelementptr inbounds i8, ptr %1, i64 8
  %982 = load ptr, ptr %active_pps205, align 8
  %constrained_intra_pred_flag206 = getelementptr inbounds i8, ptr %982, i64 2204
  %983 = load i32, ptr %constrained_intra_pred_flag206, align 4
  %tobool207.not = icmp eq i32 %983, 0
  br i1 %tobool207.not, label %if.then208, label %for.cond217.preheader

for.cond217.preheader:                            ; preds = %for.end204
  %cmp2181446 = icmp sgt i32 %shr190, 0
  br i1 %cmp2181446, label %for.body220.lr.ph, label %for.cond244.preheader

for.body220.lr.ph:                                ; preds = %for.cond217.preheader
  %intra_block227 = getelementptr inbounds i8, ptr %0, i64 13544
  %wide.trip.count1528 = zext nneg i32 %shr190 to i64
  %min.iters.check2109 = icmp ult i32 %shr190, 4
  br i1 %min.iters.check2109, label %for.body220.preheader, label %vector.ph2110

for.body220.preheader:                            ; preds = %middle.block2107, %for.body220.lr.ph
  %indvars.iv1525.ph = phi i64 [ 0, %for.body220.lr.ph ], [ %n.vec2112, %middle.block2107 ]
  %left_avail185.sroa.0.01447.ph = phi i32 [ 1, %for.body220.lr.ph ], [ %bin.rdx2135, %middle.block2107 ]
  %xtraiter2322 = and i64 %wide.trip.count1528, 1
  %lcmp.mod2323.not = icmp eq i64 %xtraiter2322, 0
  br i1 %lcmp.mod2323.not, label %for.body220.prol.loopexit, label %for.body220.prol

for.body220.prol:                                 ; preds = %for.body220.preheader
  %indvars.iv.next1526.prol = or disjoint i64 %indvars.iv1525.ph, 1
  %arrayidx223.prol = getelementptr inbounds [17 x %struct.pix_pos], ptr %left184, i64 0, i64 %indvars.iv.next1526.prol
  %984 = load i32, ptr %arrayidx223.prol, align 16
  %tobool225.not.prol = icmp eq i32 %984, 0
  br i1 %tobool225.not.prol, label %cond.end236.prol, label %cond.true226.prol

cond.true226.prol:                                ; preds = %for.body220.prol
  %985 = load ptr, ptr %intra_block227, align 8
  %mb_addr231.prol = getelementptr inbounds i8, ptr %arrayidx223.prol, i64 4
  %986 = load i32, ptr %mb_addr231.prol, align 4
  %idxprom232.prol = sext i32 %986 to i64
  %arrayidx233.prol = getelementptr inbounds i8, ptr %985, i64 %idxprom232.prol
  %987 = load i8, ptr %arrayidx233.prol, align 1
  %conv234.prol = sext i8 %987 to i32
  br label %cond.end236.prol

cond.end236.prol:                                 ; preds = %cond.true226.prol, %for.body220.prol
  %cond237.prol = phi i32 [ %conv234.prol, %cond.true226.prol ], [ 0, %for.body220.prol ]
  %and239.prol = and i32 %cond237.prol, %left_avail185.sroa.0.01447.ph
  br label %for.body220.prol.loopexit

for.body220.prol.loopexit:                        ; preds = %cond.end236.prol, %for.body220.preheader
  %and239.lcssa.unr = phi i32 [ poison, %for.body220.preheader ], [ %and239.prol, %cond.end236.prol ]
  %indvars.iv1525.unr = phi i64 [ %indvars.iv1525.ph, %for.body220.preheader ], [ %indvars.iv.next1526.prol, %cond.end236.prol ]
  %left_avail185.sroa.0.01447.unr = phi i32 [ %left_avail185.sroa.0.01447.ph, %for.body220.preheader ], [ %and239.prol, %cond.end236.prol ]
  %988 = add nsw i64 %wide.trip.count1528, -1
  %989 = icmp eq i64 %indvars.iv1525.ph, %988
  br i1 %989, label %for.cond244.preheader, label %for.body220

vector.ph2110:                                    ; preds = %for.body220.lr.ph
  %n.vec2112 = and i64 %wide.trip.count1528, 2147483644
  br label %vector.body2114

vector.body2114:                                  ; preds = %pred.load.continue2127, %vector.ph2110
  %index2115 = phi i64 [ 0, %vector.ph2110 ], [ %index.next2132, %pred.load.continue2127 ]
  %vec.phi2116 = phi i32 [ 1, %vector.ph2110 ], [ %1034, %pred.load.continue2127 ]
  %vec.phi2117 = phi i32 [ -1, %vector.ph2110 ], [ %1035, %pred.load.continue2127 ]
  %vec.phi2118 = phi i32 [ -1, %vector.ph2110 ], [ %1036, %pred.load.continue2127 ]
  %vec.phi2119 = phi i32 [ -1, %vector.ph2110 ], [ %1037, %pred.load.continue2127 ]
  %990 = or disjoint i64 %index2115, 1
  %991 = or disjoint i64 %index2115, 2
  %992 = or disjoint i64 %index2115, 3
  %993 = add nuw nsw i64 %index2115, 4
  %994 = getelementptr inbounds [17 x %struct.pix_pos], ptr %left184, i64 0, i64 %990
  %995 = getelementptr inbounds [17 x %struct.pix_pos], ptr %left184, i64 0, i64 %991
  %996 = getelementptr inbounds [17 x %struct.pix_pos], ptr %left184, i64 0, i64 %992
  %997 = getelementptr inbounds [17 x %struct.pix_pos], ptr %left184, i64 0, i64 %993
  %998 = load i32, ptr %994, align 16
  %999 = load i32, ptr %995, align 16
  %1000 = load i32, ptr %996, align 16
  %1001 = load i32, ptr %997, align 16
  %.not2244 = icmp eq i32 %998, 0
  %.not2245 = icmp eq i32 %999, 0
  %.not2246 = icmp eq i32 %1000, 0
  %.not2247 = icmp eq i32 %1001, 0
  br i1 %.not2244, label %pred.load.continue2121, label %pred.load.if2120

pred.load.if2120:                                 ; preds = %vector.body2114
  %1002 = load ptr, ptr %intra_block227, align 8
  %1003 = getelementptr inbounds i8, ptr %994, i64 4
  %1004 = load i32, ptr %1003, align 4
  %1005 = sext i32 %1004 to i64
  %1006 = getelementptr inbounds i8, ptr %1002, i64 %1005
  %1007 = load i8, ptr %1006, align 1
  br label %pred.load.continue2121

pred.load.continue2121:                           ; preds = %pred.load.if2120, %vector.body2114
  %1008 = phi i8 [ poison, %vector.body2114 ], [ %1007, %pred.load.if2120 ]
  br i1 %.not2245, label %pred.load.continue2123, label %pred.load.if2122

pred.load.if2122:                                 ; preds = %pred.load.continue2121
  %1009 = load ptr, ptr %intra_block227, align 8
  %1010 = getelementptr inbounds i8, ptr %995, i64 4
  %1011 = load i32, ptr %1010, align 4
  %1012 = sext i32 %1011 to i64
  %1013 = getelementptr inbounds i8, ptr %1009, i64 %1012
  %1014 = load i8, ptr %1013, align 1
  br label %pred.load.continue2123

pred.load.continue2123:                           ; preds = %pred.load.if2122, %pred.load.continue2121
  %1015 = phi i8 [ poison, %pred.load.continue2121 ], [ %1014, %pred.load.if2122 ]
  br i1 %.not2246, label %pred.load.continue2125, label %pred.load.if2124

pred.load.if2124:                                 ; preds = %pred.load.continue2123
  %1016 = load ptr, ptr %intra_block227, align 8
  %1017 = getelementptr inbounds i8, ptr %996, i64 4
  %1018 = load i32, ptr %1017, align 4
  %1019 = sext i32 %1018 to i64
  %1020 = getelementptr inbounds i8, ptr %1016, i64 %1019
  %1021 = load i8, ptr %1020, align 1
  br label %pred.load.continue2125

pred.load.continue2125:                           ; preds = %pred.load.if2124, %pred.load.continue2123
  %1022 = phi i8 [ poison, %pred.load.continue2123 ], [ %1021, %pred.load.if2124 ]
  br i1 %.not2247, label %pred.load.continue2127, label %pred.load.if2126

pred.load.if2126:                                 ; preds = %pred.load.continue2125
  %1023 = load ptr, ptr %intra_block227, align 8
  %1024 = getelementptr inbounds i8, ptr %997, i64 4
  %1025 = load i32, ptr %1024, align 4
  %1026 = sext i32 %1025 to i64
  %1027 = getelementptr inbounds i8, ptr %1023, i64 %1026
  %1028 = load i8, ptr %1027, align 1
  br label %pred.load.continue2127

pred.load.continue2127:                           ; preds = %pred.load.if2126, %pred.load.continue2125
  %1029 = phi i8 [ poison, %pred.load.continue2125 ], [ %1028, %pred.load.if2126 ]
  %1030 = sext i8 %1008 to i32
  %1031 = sext i8 %1015 to i32
  %1032 = sext i8 %1022 to i32
  %1033 = sext i8 %1029 to i32
  %predphi2128 = select i1 %.not2244, i32 0, i32 %1030
  %predphi2129 = select i1 %.not2245, i32 0, i32 %1031
  %predphi2130 = select i1 %.not2246, i32 0, i32 %1032
  %predphi2131 = select i1 %.not2247, i32 0, i32 %1033
  %1034 = and i32 %predphi2128, %vec.phi2116
  %1035 = and i32 %predphi2129, %vec.phi2117
  %1036 = and i32 %predphi2130, %vec.phi2118
  %1037 = and i32 %predphi2131, %vec.phi2119
  %index.next2132 = add nuw i64 %index2115, 4
  %1038 = icmp eq i64 %index.next2132, %n.vec2112
  br i1 %1038, label %middle.block2107, label %vector.body2114, !llvm.loop !19

middle.block2107:                                 ; preds = %pred.load.continue2127
  %bin.rdx2133 = and i32 %1035, %1034
  %bin.rdx2134 = and i32 %1036, %bin.rdx2133
  %bin.rdx2135 = and i32 %1037, %bin.rdx2134
  %cmp.n2136 = icmp eq i64 %n.vec2112, %wide.trip.count1528
  br i1 %cmp.n2136, label %for.cond244.preheader, label %for.body220.preheader

if.then208:                                       ; preds = %for.end204
  %arrayidx209 = getelementptr inbounds i8, ptr %left184, i64 16
  %1039 = load i32, ptr %arrayidx209, align 16
  br label %if.end283

for.cond244.preheader:                            ; preds = %for.body220.prol.loopexit, %cond.end236.1, %middle.block2107, %for.cond217.preheader
  %left_avail185.sroa.0.0.lcssa = phi i32 [ 1, %for.cond217.preheader ], [ %bin.rdx2135, %middle.block2107 ], [ %and239.lcssa.unr, %for.body220.prol.loopexit ], [ %and239.1, %cond.end236.1 ]
  %cmp2451450 = icmp sgt i32 %978, 0
  br i1 %cmp2451450, label %for.body247.lr.ph, label %if.end283

for.body247.lr.ph:                                ; preds = %for.cond244.preheader
  %intra_block254 = getelementptr inbounds i8, ptr %0, i64 13544
  %1040 = zext nneg i32 %shr190 to i64
  %1041 = add nuw nsw i32 %shr190, 1
  %smax2138 = call i32 @llvm.smax.i32(i32 %978, i32 %1041)
  %1042 = xor i32 %shr190, -1
  %1043 = add nsw i32 %smax2138, %1042
  %1044 = zext i32 %1043 to i64
  %1045 = add nuw nsw i64 %1044, 1
  %min.iters.check2141 = icmp ult i32 %1043, 3
  br i1 %min.iters.check2141, label %for.body247.preheader, label %vector.ph2142

for.body247.preheader:                            ; preds = %middle.block2139, %for.body247.lr.ph
  %indvars.iv1530.ph = phi i64 [ %1040, %for.body247.lr.ph ], [ %ind.end2145, %middle.block2139 ]
  %left_avail185.sroa.7.01451.ph = phi i32 [ 1, %for.body247.lr.ph ], [ %bin.rdx2169, %middle.block2139 ]
  br label %for.body247

vector.ph2142:                                    ; preds = %for.body247.lr.ph
  %n.vec2144 = and i64 %1045, 8589934588
  %ind.end2145 = add nuw nsw i64 %n.vec2144, %1040
  br label %vector.body2147

vector.body2147:                                  ; preds = %pred.load.continue2161, %vector.ph2142
  %index2148 = phi i64 [ 0, %vector.ph2142 ], [ %index.next2166, %pred.load.continue2161 ]
  %vec.phi2149 = phi i32 [ 1, %vector.ph2142 ], [ %1090, %pred.load.continue2161 ]
  %vec.phi2150 = phi i32 [ -1, %vector.ph2142 ], [ %1091, %pred.load.continue2161 ]
  %vec.phi2151 = phi i32 [ -1, %vector.ph2142 ], [ %1092, %pred.load.continue2161 ]
  %vec.phi2152 = phi i32 [ -1, %vector.ph2142 ], [ %1093, %pred.load.continue2161 ]
  %offset.idx2153 = add i64 %index2148, %1040
  %1046 = add nuw nsw i64 %offset.idx2153, 1
  %1047 = add i64 %offset.idx2153, 2
  %1048 = add i64 %offset.idx2153, 3
  %1049 = add i64 %offset.idx2153, 4
  %1050 = getelementptr inbounds [17 x %struct.pix_pos], ptr %left184, i64 0, i64 %1046
  %1051 = getelementptr inbounds [17 x %struct.pix_pos], ptr %left184, i64 0, i64 %1047
  %1052 = getelementptr inbounds [17 x %struct.pix_pos], ptr %left184, i64 0, i64 %1048
  %1053 = getelementptr inbounds [17 x %struct.pix_pos], ptr %left184, i64 0, i64 %1049
  %1054 = load i32, ptr %1050, align 16
  %1055 = load i32, ptr %1051, align 16
  %1056 = load i32, ptr %1052, align 16
  %1057 = load i32, ptr %1053, align 16
  %.not2248 = icmp eq i32 %1054, 0
  %.not2249 = icmp eq i32 %1055, 0
  %.not2250 = icmp eq i32 %1056, 0
  %.not2251 = icmp eq i32 %1057, 0
  br i1 %.not2248, label %pred.load.continue2155, label %pred.load.if2154

pred.load.if2154:                                 ; preds = %vector.body2147
  %1058 = load ptr, ptr %intra_block254, align 8
  %1059 = getelementptr inbounds i8, ptr %1050, i64 4
  %1060 = load i32, ptr %1059, align 4
  %1061 = sext i32 %1060 to i64
  %1062 = getelementptr inbounds i8, ptr %1058, i64 %1061
  %1063 = load i8, ptr %1062, align 1
  br label %pred.load.continue2155

pred.load.continue2155:                           ; preds = %pred.load.if2154, %vector.body2147
  %1064 = phi i8 [ poison, %vector.body2147 ], [ %1063, %pred.load.if2154 ]
  br i1 %.not2249, label %pred.load.continue2157, label %pred.load.if2156

pred.load.if2156:                                 ; preds = %pred.load.continue2155
  %1065 = load ptr, ptr %intra_block254, align 8
  %1066 = getelementptr inbounds i8, ptr %1051, i64 4
  %1067 = load i32, ptr %1066, align 4
  %1068 = sext i32 %1067 to i64
  %1069 = getelementptr inbounds i8, ptr %1065, i64 %1068
  %1070 = load i8, ptr %1069, align 1
  br label %pred.load.continue2157

pred.load.continue2157:                           ; preds = %pred.load.if2156, %pred.load.continue2155
  %1071 = phi i8 [ poison, %pred.load.continue2155 ], [ %1070, %pred.load.if2156 ]
  br i1 %.not2250, label %pred.load.continue2159, label %pred.load.if2158

pred.load.if2158:                                 ; preds = %pred.load.continue2157
  %1072 = load ptr, ptr %intra_block254, align 8
  %1073 = getelementptr inbounds i8, ptr %1052, i64 4
  %1074 = load i32, ptr %1073, align 4
  %1075 = sext i32 %1074 to i64
  %1076 = getelementptr inbounds i8, ptr %1072, i64 %1075
  %1077 = load i8, ptr %1076, align 1
  br label %pred.load.continue2159

pred.load.continue2159:                           ; preds = %pred.load.if2158, %pred.load.continue2157
  %1078 = phi i8 [ poison, %pred.load.continue2157 ], [ %1077, %pred.load.if2158 ]
  br i1 %.not2251, label %pred.load.continue2161, label %pred.load.if2160

pred.load.if2160:                                 ; preds = %pred.load.continue2159
  %1079 = load ptr, ptr %intra_block254, align 8
  %1080 = getelementptr inbounds i8, ptr %1053, i64 4
  %1081 = load i32, ptr %1080, align 4
  %1082 = sext i32 %1081 to i64
  %1083 = getelementptr inbounds i8, ptr %1079, i64 %1082
  %1084 = load i8, ptr %1083, align 1
  br label %pred.load.continue2161

pred.load.continue2161:                           ; preds = %pred.load.if2160, %pred.load.continue2159
  %1085 = phi i8 [ poison, %pred.load.continue2159 ], [ %1084, %pred.load.if2160 ]
  %1086 = sext i8 %1064 to i32
  %1087 = sext i8 %1071 to i32
  %1088 = sext i8 %1078 to i32
  %1089 = sext i8 %1085 to i32
  %predphi2162 = select i1 %.not2248, i32 0, i32 %1086
  %predphi2163 = select i1 %.not2249, i32 0, i32 %1087
  %predphi2164 = select i1 %.not2250, i32 0, i32 %1088
  %predphi2165 = select i1 %.not2251, i32 0, i32 %1089
  %1090 = and i32 %predphi2162, %vec.phi2149
  %1091 = and i32 %predphi2163, %vec.phi2150
  %1092 = and i32 %predphi2164, %vec.phi2151
  %1093 = and i32 %predphi2165, %vec.phi2152
  %index.next2166 = add nuw i64 %index2148, 4
  %1094 = icmp eq i64 %index.next2166, %n.vec2144
  br i1 %1094, label %middle.block2139, label %vector.body2147, !llvm.loop !20

middle.block2139:                                 ; preds = %pred.load.continue2161
  %bin.rdx2167 = and i32 %1091, %1090
  %bin.rdx2168 = and i32 %1092, %bin.rdx2167
  %bin.rdx2169 = and i32 %1093, %bin.rdx2168
  %cmp.n2170 = icmp eq i64 %1045, %n.vec2144
  br i1 %cmp.n2170, label %if.end283, label %for.body247.preheader

for.body220:                                      ; preds = %for.body220.prol.loopexit, %cond.end236.1
  %indvars.iv1525 = phi i64 [ %indvars.iv.next1526.1, %cond.end236.1 ], [ %indvars.iv1525.unr, %for.body220.prol.loopexit ]
  %left_avail185.sroa.0.01447 = phi i32 [ %and239.1, %cond.end236.1 ], [ %left_avail185.sroa.0.01447.unr, %for.body220.prol.loopexit ]
  %indvars.iv.next1526 = add nuw nsw i64 %indvars.iv1525, 1
  %arrayidx223 = getelementptr inbounds [17 x %struct.pix_pos], ptr %left184, i64 0, i64 %indvars.iv.next1526
  %1095 = load i32, ptr %arrayidx223, align 16
  %tobool225.not = icmp eq i32 %1095, 0
  br i1 %tobool225.not, label %cond.end236, label %cond.true226

cond.true226:                                     ; preds = %for.body220
  %1096 = load ptr, ptr %intra_block227, align 8
  %mb_addr231 = getelementptr inbounds i8, ptr %arrayidx223, i64 4
  %1097 = load i32, ptr %mb_addr231, align 4
  %idxprom232 = sext i32 %1097 to i64
  %arrayidx233 = getelementptr inbounds i8, ptr %1096, i64 %idxprom232
  %1098 = load i8, ptr %arrayidx233, align 1
  %conv234 = sext i8 %1098 to i32
  br label %cond.end236

cond.end236:                                      ; preds = %for.body220, %cond.true226
  %cond237 = phi i32 [ %conv234, %cond.true226 ], [ 0, %for.body220 ]
  %and239 = and i32 %cond237, %left_avail185.sroa.0.01447
  %indvars.iv.next1526.1 = add nuw nsw i64 %indvars.iv1525, 2
  %arrayidx223.1 = getelementptr inbounds [17 x %struct.pix_pos], ptr %left184, i64 0, i64 %indvars.iv.next1526.1
  %1099 = load i32, ptr %arrayidx223.1, align 16
  %tobool225.not.1 = icmp eq i32 %1099, 0
  br i1 %tobool225.not.1, label %cond.end236.1, label %cond.true226.1

cond.true226.1:                                   ; preds = %cond.end236
  %1100 = load ptr, ptr %intra_block227, align 8
  %mb_addr231.1 = getelementptr inbounds i8, ptr %arrayidx223.1, i64 4
  %1101 = load i32, ptr %mb_addr231.1, align 4
  %idxprom232.1 = sext i32 %1101 to i64
  %arrayidx233.1 = getelementptr inbounds i8, ptr %1100, i64 %idxprom232.1
  %1102 = load i8, ptr %arrayidx233.1, align 1
  %conv234.1 = sext i8 %1102 to i32
  br label %cond.end236.1

cond.end236.1:                                    ; preds = %cond.true226.1, %cond.end236
  %cond237.1 = phi i32 [ %conv234.1, %cond.true226.1 ], [ 0, %cond.end236 ]
  %and239.1 = and i32 %cond237.1, %and239
  %exitcond1529.not.1 = icmp eq i64 %indvars.iv.next1526.1, %wide.trip.count1528
  br i1 %exitcond1529.not.1, label %for.cond244.preheader, label %for.body220, !llvm.loop !21

for.body247:                                      ; preds = %for.body247.preheader, %cond.end263
  %indvars.iv1530 = phi i64 [ %indvars.iv.next1531, %cond.end263 ], [ %indvars.iv1530.ph, %for.body247.preheader ]
  %left_avail185.sroa.7.01451 = phi i32 [ %and266, %cond.end263 ], [ %left_avail185.sroa.7.01451.ph, %for.body247.preheader ]
  %indvars.iv.next1531 = add nuw nsw i64 %indvars.iv1530, 1
  %arrayidx250 = getelementptr inbounds [17 x %struct.pix_pos], ptr %left184, i64 0, i64 %indvars.iv.next1531
  %1103 = load i32, ptr %arrayidx250, align 16
  %tobool252.not = icmp eq i32 %1103, 0
  br i1 %tobool252.not, label %cond.end263, label %cond.true253

cond.true253:                                     ; preds = %for.body247
  %1104 = load ptr, ptr %intra_block254, align 8
  %mb_addr258 = getelementptr inbounds i8, ptr %arrayidx250, i64 4
  %1105 = load i32, ptr %mb_addr258, align 4
  %idxprom259 = sext i32 %1105 to i64
  %arrayidx260 = getelementptr inbounds i8, ptr %1104, i64 %idxprom259
  %1106 = load i8, ptr %arrayidx260, align 1
  %conv261 = sext i8 %1106 to i32
  br label %cond.end263

cond.end263:                                      ; preds = %for.body247, %cond.true253
  %cond264 = phi i32 [ %conv261, %cond.true253 ], [ 0, %for.body247 ]
  %and266 = and i32 %cond264, %left_avail185.sroa.7.01451
  %1107 = trunc nuw i64 %indvars.iv.next1531 to i32
  %cmp245 = icmp sgt i32 %978, %1107
  br i1 %cmp245, label %for.body247, label %if.end283, !llvm.loop !22

if.end283:                                        ; preds = %cond.end263, %middle.block2139, %for.cond244.preheader, %if.then208
  %left_avail185.sroa.0.1 = phi i32 [ %1039, %if.then208 ], [ %left_avail185.sroa.0.0.lcssa, %for.cond244.preheader ], [ %left_avail185.sroa.0.0.lcssa, %middle.block2139 ], [ %left_avail185.sroa.0.0.lcssa, %cond.end263 ]
  %left_avail185.sroa.7.1 = phi i32 [ %1039, %if.then208 ], [ 1, %for.cond244.preheader ], [ %bin.rdx2169, %middle.block2139 ], [ %and266, %cond.end263 ]
  %tobool285 = icmp ne i32 %left_avail185.sroa.0.1, 0
  %tobool287 = icmp ne i32 %left_avail185.sroa.7.1, 0
  %or.cond = select i1 %tobool285, i1 %tobool287, i1 false
  br i1 %or.cond, label %if.else289, label %if.then288

if.then288:                                       ; preds = %if.end283
  call void @error(ptr noundef nonnull @.str.2, i32 noundef -1) #5
  br label %if.end349

if.else289:                                       ; preds = %if.end283
  %mb_pred292 = getelementptr inbounds i8, ptr %0, i64 1248
  %1108 = load ptr, ptr %mb_pred292, align 8
  %arrayidx293 = getelementptr inbounds i8, ptr %1108, i64 8
  %1109 = load ptr, ptr %arrayidx293, align 8
  %arrayidx296 = getelementptr inbounds i8, ptr %1108, i64 16
  %1110 = load ptr, ptr %arrayidx296, align 8
  %imgUV297 = getelementptr inbounds i8, ptr %2, i64 136
  %1111 = load ptr, ptr %imgUV297, align 8
  %1112 = load ptr, ptr %1111, align 8
  %arrayidx300 = getelementptr inbounds i8, ptr %1111, i64 8
  %1113 = load ptr, ptr %arrayidx300, align 8
  %cmp3021456 = icmp sgt i32 %978, 0
  br i1 %cmp3021456, label %for.body304.lr.ph, label %if.end349

for.body304.lr.ph:                                ; preds = %if.else289
  %cmp3301454 = icmp sgt i32 %977, 0
  %wide.trip.count1541 = zext nneg i32 %978 to i64
  %wide.trip.count1536 = zext i32 %977 to i64
  %xtraiter2324 = and i64 %wide.trip.count1536, 1
  %1114 = icmp eq i32 %977, 1
  %unroll_iter2326 = and i64 %wide.trip.count1536, 2147483646
  %lcmp.mod2325.not = icmp eq i64 %xtraiter2324, 0
  br label %for.body304

for.cond301.loopexit.loopexit.unr-lcssa:          ; preds = %for.body332, %for.body332.lr.ph
  %indvars.iv1533.unr = phi i64 [ 0, %for.body332.lr.ph ], [ %indvars.iv.next1534.1, %for.body332 ]
  br i1 %lcmp.mod2325.not, label %for.cond301.loopexit, label %for.body332.epil

for.body332.epil:                                 ; preds = %for.cond301.loopexit.loopexit.unr-lcssa
  %1115 = load ptr, ptr %arrayidx335, align 8
  %arrayidx337.epil = getelementptr inbounds i16, ptr %1115, i64 %indvars.iv1533.unr
  store i16 %1120, ptr %arrayidx337.epil, align 2
  %1116 = load ptr, ptr %arrayidx340, align 8
  %arrayidx342.epil = getelementptr inbounds i16, ptr %1116, i64 %indvars.iv1533.unr
  store i16 %1122, ptr %arrayidx342.epil, align 2
  br label %for.cond301.loopexit

for.cond301.loopexit:                             ; preds = %for.body332.epil, %for.cond301.loopexit.loopexit.unr-lcssa, %for.body304
  %exitcond1542.not = icmp eq i64 %indvars.iv.next1539, %wide.trip.count1541
  br i1 %exitcond1542.not, label %if.end349, label %for.body304

for.body304:                                      ; preds = %for.body304.lr.ph, %for.cond301.loopexit
  %indvars.iv1538 = phi i64 [ 0, %for.body304.lr.ph ], [ %indvars.iv.next1539, %for.cond301.loopexit ]
  %indvars.iv.next1539 = add nuw nsw i64 %indvars.iv1538, 1
  %arrayidx307 = getelementptr inbounds [17 x %struct.pix_pos], ptr %left184, i64 0, i64 %indvars.iv.next1539
  %pos_y = getelementptr inbounds i8, ptr %arrayidx307, i64 14
  %1117 = load i16, ptr %pos_y, align 2
  %idxprom308 = sext i16 %1117 to i64
  %arrayidx309 = getelementptr inbounds ptr, ptr %1112, i64 %idxprom308
  %1118 = load ptr, ptr %arrayidx309, align 8
  %pos_x = getelementptr inbounds i8, ptr %arrayidx307, i64 12
  %1119 = load i16, ptr %pos_x, align 4
  %idxprom313 = sext i16 %1119 to i64
  %arrayidx314 = getelementptr inbounds i16, ptr %1118, i64 %idxprom313
  %1120 = load i16, ptr %arrayidx314, align 2
  %arrayidx321 = getelementptr inbounds ptr, ptr %1113, i64 %idxprom308
  %1121 = load ptr, ptr %arrayidx321, align 8
  %arrayidx327 = getelementptr inbounds i16, ptr %1121, i64 %idxprom313
  %1122 = load i16, ptr %arrayidx327, align 2
  br i1 %cmp3301454, label %for.body332.lr.ph, label %for.cond301.loopexit

for.body332.lr.ph:                                ; preds = %for.body304
  %arrayidx335 = getelementptr inbounds ptr, ptr %1109, i64 %indvars.iv1538
  %arrayidx340 = getelementptr inbounds ptr, ptr %1110, i64 %indvars.iv1538
  br i1 %1114, label %for.cond301.loopexit.loopexit.unr-lcssa, label %for.body332

for.body332:                                      ; preds = %for.body332.lr.ph, %for.body332
  %indvars.iv1533 = phi i64 [ %indvars.iv.next1534.1, %for.body332 ], [ 0, %for.body332.lr.ph ]
  %niter2327 = phi i64 [ %niter2327.next.1, %for.body332 ], [ 0, %for.body332.lr.ph ]
  %1123 = load ptr, ptr %arrayidx335, align 8
  %arrayidx337 = getelementptr inbounds i16, ptr %1123, i64 %indvars.iv1533
  store i16 %1120, ptr %arrayidx337, align 2
  %1124 = load ptr, ptr %arrayidx340, align 8
  %arrayidx342 = getelementptr inbounds i16, ptr %1124, i64 %indvars.iv1533
  store i16 %1122, ptr %arrayidx342, align 2
  %indvars.iv.next1534 = or disjoint i64 %indvars.iv1533, 1
  %1125 = load ptr, ptr %arrayidx335, align 8
  %arrayidx337.1 = getelementptr inbounds i16, ptr %1125, i64 %indvars.iv.next1534
  store i16 %1120, ptr %arrayidx337.1, align 2
  %1126 = load ptr, ptr %arrayidx340, align 8
  %arrayidx342.1 = getelementptr inbounds i16, ptr %1126, i64 %indvars.iv.next1534
  store i16 %1122, ptr %arrayidx342.1, align 2
  %indvars.iv.next1534.1 = add nuw nsw i64 %indvars.iv1533, 2
  %niter2327.next.1 = add i64 %niter2327, 2
  %niter2327.ncmp.1 = icmp eq i64 %niter2327.next.1, %unroll_iter2326
  br i1 %niter2327.ncmp.1, label %for.cond301.loopexit.loopexit.unr-lcssa, label %for.body332

if.end349:                                        ; preds = %for.cond301.loopexit, %if.else289, %if.then288
  call void @llvm.lifetime.end.p0(i64 272, ptr nonnull %left184) #5
  br label %sw.epilog747

sw.bb350:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %up351) #5
  %mb_cr_size_x354 = getelementptr inbounds i8, ptr %1, i64 849108
  %1127 = load i32, ptr %mb_cr_size_x354, align 4
  %mb_cr_size_y356 = getelementptr inbounds i8, ptr %1, i64 849112
  %1128 = load i32, ptr %mb_cr_size_y356, align 8
  %arrayidx358 = getelementptr inbounds i8, ptr %1, i64 849132
  call void @getAffNeighbour(ptr noundef nonnull %currMB, i32 noundef 0, i32 noundef -1, ptr noundef nonnull %arrayidx358, ptr noundef nonnull %up351) #5
  %active_pps360 = getelementptr inbounds i8, ptr %1, i64 8
  %1129 = load ptr, ptr %active_pps360, align 8
  %constrained_intra_pred_flag361 = getelementptr inbounds i8, ptr %1129, i64 2204
  %1130 = load i32, ptr %constrained_intra_pred_flag361, align 4
  %tobool362.not = icmp eq i32 %1130, 0
  %1131 = load i32, ptr %up351, align 4
  br i1 %tobool362.not, label %if.end377, label %if.else365

if.else365:                                       ; preds = %sw.bb350
  %tobool367.not = icmp eq i32 %1131, 0
  br i1 %tobool367.not, label %if.then379, label %cond.true368

cond.true368:                                     ; preds = %if.else365
  %intra_block369 = getelementptr inbounds i8, ptr %0, i64 13544
  %1132 = load ptr, ptr %intra_block369, align 8
  %mb_addr370 = getelementptr inbounds i8, ptr %up351, i64 4
  %1133 = load i32, ptr %mb_addr370, align 4
  %idxprom371 = sext i32 %1133 to i64
  %arrayidx372 = getelementptr inbounds i8, ptr %1132, i64 %idxprom371
  %1134 = load i8, ptr %arrayidx372, align 1
  %conv373 = sext i8 %1134 to i32
  br label %if.end377

if.end377:                                        ; preds = %sw.bb350, %cond.true368
  %up_avail352.0 = phi i32 [ %conv373, %cond.true368 ], [ %1131, %sw.bb350 ]
  %tobool378.not = icmp eq i32 %up_avail352.0, 0
  br i1 %tobool378.not, label %if.then379, label %if.else380

if.then379:                                       ; preds = %if.else365, %if.end377
  call void @error(ptr noundef nonnull @.str, i32 noundef -1) #5
  br label %if.end421

if.else380:                                       ; preds = %if.end377
  %mb_pred382 = getelementptr inbounds i8, ptr %0, i64 1248
  %1135 = load ptr, ptr %mb_pred382, align 8
  %arrayidx383 = getelementptr inbounds i8, ptr %1135, i64 8
  %1136 = load ptr, ptr %arrayidx383, align 8
  %arrayidx386 = getelementptr inbounds i8, ptr %1135, i64 16
  %1137 = load ptr, ptr %arrayidx386, align 8
  %imgUV388 = getelementptr inbounds i8, ptr %2, i64 136
  %1138 = load ptr, ptr %imgUV388, align 8
  %1139 = load ptr, ptr %1138, align 8
  %pos_y390 = getelementptr inbounds i8, ptr %up351, i64 14
  %1140 = load i16, ptr %pos_y390, align 2
  %idxprom391 = sext i16 %1140 to i64
  %arrayidx392 = getelementptr inbounds ptr, ptr %1139, i64 %idxprom391
  %1141 = load ptr, ptr %arrayidx392, align 8
  %pos_x393 = getelementptr inbounds i8, ptr %up351, i64 12
  %1142 = load i16, ptr %pos_x393, align 4
  %idxprom394 = sext i16 %1142 to i64
  %arrayidx395 = getelementptr inbounds i16, ptr %1141, i64 %idxprom394
  %arrayidx398 = getelementptr inbounds i8, ptr %1138, i64 8
  %1143 = load ptr, ptr %arrayidx398, align 8
  %arrayidx401 = getelementptr inbounds ptr, ptr %1143, i64 %idxprom391
  %1144 = load ptr, ptr %arrayidx401, align 8
  %arrayidx404 = getelementptr inbounds i16, ptr %1144, i64 %idxprom394
  %cmp4061442 = icmp sgt i32 %1128, 0
  br i1 %cmp4061442, label %for.body408.lr.ph, label %if.end421

for.body408.lr.ph:                                ; preds = %if.else380
  %conv412 = sext i32 %1127 to i64
  %mul = shl nsw i64 %conv412, 1
  %wide.trip.count1517 = zext nneg i32 %1128 to i64
  %xtraiter2318 = and i64 %wide.trip.count1517, 1
  %1145 = icmp eq i32 %1128, 1
  br i1 %1145, label %if.end421.loopexit.unr-lcssa, label %for.body408.lr.ph.new

for.body408.lr.ph.new:                            ; preds = %for.body408.lr.ph
  %unroll_iter2320 = and i64 %wide.trip.count1517, 2147483646
  br label %for.body408

for.body408:                                      ; preds = %for.body408, %for.body408.lr.ph.new
  %indvars.iv1514 = phi i64 [ 0, %for.body408.lr.ph.new ], [ %indvars.iv.next1515.1, %for.body408 ]
  %niter2321 = phi i64 [ 0, %for.body408.lr.ph.new ], [ %niter2321.next.1, %for.body408 ]
  %arrayidx410 = getelementptr inbounds ptr, ptr %1136, i64 %indvars.iv1514
  %1146 = load ptr, ptr %arrayidx410, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %1146, ptr align 2 %arrayidx395, i64 %mul, i1 false)
  %arrayidx414 = getelementptr inbounds ptr, ptr %1137, i64 %indvars.iv1514
  %1147 = load ptr, ptr %arrayidx414, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %1147, ptr align 2 %arrayidx404, i64 %mul, i1 false)
  %indvars.iv.next1515 = or disjoint i64 %indvars.iv1514, 1
  %arrayidx410.1 = getelementptr inbounds ptr, ptr %1136, i64 %indvars.iv.next1515
  %1148 = load ptr, ptr %arrayidx410.1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %1148, ptr align 2 %arrayidx395, i64 %mul, i1 false)
  %arrayidx414.1 = getelementptr inbounds ptr, ptr %1137, i64 %indvars.iv.next1515
  %1149 = load ptr, ptr %arrayidx414.1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %1149, ptr align 2 %arrayidx404, i64 %mul, i1 false)
  %indvars.iv.next1515.1 = add nuw nsw i64 %indvars.iv1514, 2
  %niter2321.next.1 = add i64 %niter2321, 2
  %niter2321.ncmp.1 = icmp eq i64 %niter2321.next.1, %unroll_iter2320
  br i1 %niter2321.ncmp.1, label %if.end421.loopexit.unr-lcssa, label %for.body408

if.end421.loopexit.unr-lcssa:                     ; preds = %for.body408, %for.body408.lr.ph
  %indvars.iv1514.unr = phi i64 [ 0, %for.body408.lr.ph ], [ %indvars.iv.next1515.1, %for.body408 ]
  %lcmp.mod2319.not = icmp eq i64 %xtraiter2318, 0
  br i1 %lcmp.mod2319.not, label %if.end421, label %for.body408.epil

for.body408.epil:                                 ; preds = %if.end421.loopexit.unr-lcssa
  %arrayidx410.epil = getelementptr inbounds ptr, ptr %1136, i64 %indvars.iv1514.unr
  %1150 = load ptr, ptr %arrayidx410.epil, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %1150, ptr align 2 %arrayidx395, i64 %mul, i1 false)
  %arrayidx414.epil = getelementptr inbounds ptr, ptr %1137, i64 %indvars.iv1514.unr
  %1151 = load ptr, ptr %arrayidx414.epil, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %1151, ptr align 2 %arrayidx404, i64 %mul, i1 false)
  br label %if.end421

if.end421:                                        ; preds = %for.body408.epil, %if.end421.loopexit.unr-lcssa, %if.else380, %if.then379
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %up351) #5
  br label %sw.epilog747

sw.bb422:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %up423) #5
  call void @llvm.lifetime.start.p0(i64 272, ptr nonnull %left424) #5
  %mb_cr_size_x429 = getelementptr inbounds i8, ptr %1, i64 849108
  %1152 = load i32, ptr %mb_cr_size_x429, align 4
  %mb_cr_size_y431 = getelementptr inbounds i8, ptr %1, i64 849112
  %1153 = load i32, ptr %mb_cr_size_y431, align 8
  %shr433 = ashr i32 %1153, 1
  %shr434 = ashr i32 %1152, 1
  %cmp437.not1420 = icmp slt i32 %1153, 0
  br i1 %cmp437.not1420, label %for.end448, label %for.body439.lr.ph

for.body439.lr.ph:                                ; preds = %sw.bb422
  %getNeighbour = getelementptr inbounds i8, ptr %1, i64 856744
  %arrayidx442 = getelementptr inbounds i8, ptr %1, i64 849132
  %1154 = add nuw i32 %1153, 1
  %wide.trip.count = zext i32 %1154 to i64
  br label %for.body439

for.body439:                                      ; preds = %for.body439.lr.ph, %for.body439
  %indvars.iv = phi i64 [ 0, %for.body439.lr.ph ], [ %indvars.iv.next, %for.body439 ]
  %1155 = load ptr, ptr %getNeighbour, align 8
  %arrayidx445 = getelementptr inbounds [17 x %struct.pix_pos], ptr %left424, i64 0, i64 %indvars.iv
  %1156 = trunc i64 %indvars.iv to i32
  %1157 = add i32 %1156, -1
  call void %1155(ptr noundef nonnull %currMB, i32 noundef -1, i32 noundef %1157, ptr noundef nonnull %arrayidx442, ptr noundef nonnull %arrayidx445) #5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.end448, label %for.body439

for.end448:                                       ; preds = %for.body439, %sw.bb422
  %getNeighbour449 = getelementptr inbounds i8, ptr %1, i64 856744
  %1158 = load ptr, ptr %getNeighbour449, align 8
  %arrayidx451 = getelementptr inbounds i8, ptr %1, i64 849132
  call void %1158(ptr noundef nonnull %currMB, i32 noundef 0, i32 noundef -1, ptr noundef nonnull %arrayidx451, ptr noundef nonnull %up423) #5
  %active_pps453 = getelementptr inbounds i8, ptr %1, i64 8
  %1159 = load ptr, ptr %active_pps453, align 8
  %constrained_intra_pred_flag454 = getelementptr inbounds i8, ptr %1159, i64 2204
  %1160 = load i32, ptr %constrained_intra_pred_flag454, align 4
  %tobool455.not = icmp eq i32 %1160, 0
  %1161 = load i32, ptr %up423, align 4
  br i1 %tobool455.not, label %if.then456, label %if.else464

if.then456:                                       ; preds = %for.end448
  %arrayidx458 = getelementptr inbounds i8, ptr %left424, i64 16
  %1162 = load i32, ptr %arrayidx458, align 16
  %1163 = load i32, ptr %left424, align 16
  br label %if.end543

if.else464:                                       ; preds = %for.end448
  %tobool466.not = icmp eq i32 %1161, 0
  br i1 %tobool466.not, label %cond.end474, label %cond.true467

cond.true467:                                     ; preds = %if.else464
  %intra_block468 = getelementptr inbounds i8, ptr %0, i64 13544
  %1164 = load ptr, ptr %intra_block468, align 8
  %mb_addr469 = getelementptr inbounds i8, ptr %up423, i64 4
  %1165 = load i32, ptr %mb_addr469, align 4
  %idxprom470 = sext i32 %1165 to i64
  %arrayidx471 = getelementptr inbounds i8, ptr %1164, i64 %idxprom470
  %1166 = load i8, ptr %arrayidx471, align 1
  %conv472 = sext i8 %1166 to i32
  br label %cond.end474

cond.end474:                                      ; preds = %if.else464, %cond.true467
  %cond475 = phi i32 [ %conv472, %cond.true467 ], [ 0, %if.else464 ]
  %cmp4781422 = icmp sgt i32 %shr433, 0
  br i1 %cmp4781422, label %for.body480.lr.ph, label %for.cond504.preheader

for.body480.lr.ph:                                ; preds = %cond.end474
  %intra_block487 = getelementptr inbounds i8, ptr %0, i64 13544
  %wide.trip.count1480 = zext nneg i32 %shr433 to i64
  %min.iters.check = icmp ult i32 %shr433, 4
  br i1 %min.iters.check, label %for.body480.preheader, label %vector.ph

for.body480.preheader:                            ; preds = %middle.block, %for.body480.lr.ph
  %indvars.iv1477.ph = phi i64 [ 0, %for.body480.lr.ph ], [ %n.vec, %middle.block ]
  %left_avail426.sroa.0.01423.ph = phi i32 [ 1, %for.body480.lr.ph ], [ %bin.rdx1968, %middle.block ]
  %xtraiter = and i64 %wide.trip.count1480, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.body480.prol.loopexit, label %for.body480.prol

for.body480.prol:                                 ; preds = %for.body480.preheader
  %indvars.iv.next1478.prol = or disjoint i64 %indvars.iv1477.ph, 1
  %arrayidx483.prol = getelementptr inbounds [17 x %struct.pix_pos], ptr %left424, i64 0, i64 %indvars.iv.next1478.prol
  %1167 = load i32, ptr %arrayidx483.prol, align 16
  %tobool485.not.prol = icmp eq i32 %1167, 0
  br i1 %tobool485.not.prol, label %cond.end496.prol, label %cond.true486.prol

cond.true486.prol:                                ; preds = %for.body480.prol
  %1168 = load ptr, ptr %intra_block487, align 8
  %mb_addr491.prol = getelementptr inbounds i8, ptr %arrayidx483.prol, i64 4
  %1169 = load i32, ptr %mb_addr491.prol, align 4
  %idxprom492.prol = sext i32 %1169 to i64
  %arrayidx493.prol = getelementptr inbounds i8, ptr %1168, i64 %idxprom492.prol
  %1170 = load i8, ptr %arrayidx493.prol, align 1
  %conv494.prol = sext i8 %1170 to i32
  br label %cond.end496.prol

cond.end496.prol:                                 ; preds = %cond.true486.prol, %for.body480.prol
  %cond497.prol = phi i32 [ %conv494.prol, %cond.true486.prol ], [ 0, %for.body480.prol ]
  %and499.prol = and i32 %cond497.prol, %left_avail426.sroa.0.01423.ph
  br label %for.body480.prol.loopexit

for.body480.prol.loopexit:                        ; preds = %cond.end496.prol, %for.body480.preheader
  %and499.lcssa.unr = phi i32 [ poison, %for.body480.preheader ], [ %and499.prol, %cond.end496.prol ]
  %indvars.iv1477.unr = phi i64 [ %indvars.iv1477.ph, %for.body480.preheader ], [ %indvars.iv.next1478.prol, %cond.end496.prol ]
  %left_avail426.sroa.0.01423.unr = phi i32 [ %left_avail426.sroa.0.01423.ph, %for.body480.preheader ], [ %and499.prol, %cond.end496.prol ]
  %1171 = add nsw i64 %wide.trip.count1480, -1
  %1172 = icmp eq i64 %indvars.iv1477.ph, %1171
  br i1 %1172, label %for.cond504.preheader, label %for.body480

vector.ph:                                        ; preds = %for.body480.lr.ph
  %n.vec = and i64 %wide.trip.count1480, 2147483644
  br label %vector.body

vector.body:                                      ; preds = %pred.load.continue1963, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.load.continue1963 ]
  %vec.phi = phi i32 [ 1, %vector.ph ], [ %1217, %pred.load.continue1963 ]
  %vec.phi1955 = phi i32 [ -1, %vector.ph ], [ %1218, %pred.load.continue1963 ]
  %vec.phi1956 = phi i32 [ -1, %vector.ph ], [ %1219, %pred.load.continue1963 ]
  %vec.phi1957 = phi i32 [ -1, %vector.ph ], [ %1220, %pred.load.continue1963 ]
  %1173 = or disjoint i64 %index, 1
  %1174 = or disjoint i64 %index, 2
  %1175 = or disjoint i64 %index, 3
  %1176 = add nuw nsw i64 %index, 4
  %1177 = getelementptr inbounds [17 x %struct.pix_pos], ptr %left424, i64 0, i64 %1173
  %1178 = getelementptr inbounds [17 x %struct.pix_pos], ptr %left424, i64 0, i64 %1174
  %1179 = getelementptr inbounds [17 x %struct.pix_pos], ptr %left424, i64 0, i64 %1175
  %1180 = getelementptr inbounds [17 x %struct.pix_pos], ptr %left424, i64 0, i64 %1176
  %1181 = load i32, ptr %1177, align 16
  %1182 = load i32, ptr %1178, align 16
  %1183 = load i32, ptr %1179, align 16
  %1184 = load i32, ptr %1180, align 16
  %.not = icmp eq i32 %1181, 0
  %.not2237 = icmp eq i32 %1182, 0
  %.not2238 = icmp eq i32 %1183, 0
  %.not2239 = icmp eq i32 %1184, 0
  br i1 %.not, label %pred.load.continue, label %pred.load.if

pred.load.if:                                     ; preds = %vector.body
  %1185 = load ptr, ptr %intra_block487, align 8
  %1186 = getelementptr inbounds i8, ptr %1177, i64 4
  %1187 = load i32, ptr %1186, align 4
  %1188 = sext i32 %1187 to i64
  %1189 = getelementptr inbounds i8, ptr %1185, i64 %1188
  %1190 = load i8, ptr %1189, align 1
  br label %pred.load.continue

pred.load.continue:                               ; preds = %pred.load.if, %vector.body
  %1191 = phi i8 [ poison, %vector.body ], [ %1190, %pred.load.if ]
  br i1 %.not2237, label %pred.load.continue1959, label %pred.load.if1958

pred.load.if1958:                                 ; preds = %pred.load.continue
  %1192 = load ptr, ptr %intra_block487, align 8
  %1193 = getelementptr inbounds i8, ptr %1178, i64 4
  %1194 = load i32, ptr %1193, align 4
  %1195 = sext i32 %1194 to i64
  %1196 = getelementptr inbounds i8, ptr %1192, i64 %1195
  %1197 = load i8, ptr %1196, align 1
  br label %pred.load.continue1959

pred.load.continue1959:                           ; preds = %pred.load.if1958, %pred.load.continue
  %1198 = phi i8 [ poison, %pred.load.continue ], [ %1197, %pred.load.if1958 ]
  br i1 %.not2238, label %pred.load.continue1961, label %pred.load.if1960

pred.load.if1960:                                 ; preds = %pred.load.continue1959
  %1199 = load ptr, ptr %intra_block487, align 8
  %1200 = getelementptr inbounds i8, ptr %1179, i64 4
  %1201 = load i32, ptr %1200, align 4
  %1202 = sext i32 %1201 to i64
  %1203 = getelementptr inbounds i8, ptr %1199, i64 %1202
  %1204 = load i8, ptr %1203, align 1
  br label %pred.load.continue1961

pred.load.continue1961:                           ; preds = %pred.load.if1960, %pred.load.continue1959
  %1205 = phi i8 [ poison, %pred.load.continue1959 ], [ %1204, %pred.load.if1960 ]
  br i1 %.not2239, label %pred.load.continue1963, label %pred.load.if1962

pred.load.if1962:                                 ; preds = %pred.load.continue1961
  %1206 = load ptr, ptr %intra_block487, align 8
  %1207 = getelementptr inbounds i8, ptr %1180, i64 4
  %1208 = load i32, ptr %1207, align 4
  %1209 = sext i32 %1208 to i64
  %1210 = getelementptr inbounds i8, ptr %1206, i64 %1209
  %1211 = load i8, ptr %1210, align 1
  br label %pred.load.continue1963

pred.load.continue1963:                           ; preds = %pred.load.if1962, %pred.load.continue1961
  %1212 = phi i8 [ poison, %pred.load.continue1961 ], [ %1211, %pred.load.if1962 ]
  %1213 = sext i8 %1191 to i32
  %1214 = sext i8 %1198 to i32
  %1215 = sext i8 %1205 to i32
  %1216 = sext i8 %1212 to i32
  %predphi = select i1 %.not, i32 0, i32 %1213
  %predphi1964 = select i1 %.not2237, i32 0, i32 %1214
  %predphi1965 = select i1 %.not2238, i32 0, i32 %1215
  %predphi1966 = select i1 %.not2239, i32 0, i32 %1216
  %1217 = and i32 %predphi, %vec.phi
  %1218 = and i32 %predphi1964, %vec.phi1955
  %1219 = and i32 %predphi1965, %vec.phi1956
  %1220 = and i32 %predphi1966, %vec.phi1957
  %index.next = add nuw i64 %index, 4
  %1221 = icmp eq i64 %index.next, %n.vec
  br i1 %1221, label %middle.block, label %vector.body, !llvm.loop !23

middle.block:                                     ; preds = %pred.load.continue1963
  %bin.rdx = and i32 %1218, %1217
  %bin.rdx1967 = and i32 %1219, %bin.rdx
  %bin.rdx1968 = and i32 %1220, %bin.rdx1967
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count1480
  br i1 %cmp.n, label %for.cond504.preheader, label %for.body480.preheader

for.cond504.preheader:                            ; preds = %for.body480.prol.loopexit, %cond.end496.1, %middle.block, %cond.end474
  %left_avail426.sroa.0.0.lcssa = phi i32 [ 1, %cond.end474 ], [ %bin.rdx1968, %middle.block ], [ %and499.lcssa.unr, %for.body480.prol.loopexit ], [ %and499.1, %cond.end496.1 ]
  %cmp5051425 = icmp sgt i32 %1153, 0
  br i1 %cmp5051425, label %for.body507.lr.ph, label %for.end529

for.body507.lr.ph:                                ; preds = %for.cond504.preheader
  %intra_block514 = getelementptr inbounds i8, ptr %0, i64 13544
  %1222 = zext nneg i32 %shr433 to i64
  %1223 = add nuw nsw i32 %shr433, 1
  %smax = call i32 @llvm.smax.i32(i32 %1153, i32 %1223)
  %1224 = xor i32 %shr433, -1
  %1225 = add nsw i32 %smax, %1224
  %1226 = zext i32 %1225 to i64
  %1227 = add nuw nsw i64 %1226, 1
  %min.iters.check1971 = icmp ult i32 %1225, 3
  br i1 %min.iters.check1971, label %for.body507.preheader, label %vector.ph1972

for.body507.preheader:                            ; preds = %middle.block1969, %for.body507.lr.ph
  %indvars.iv1482.ph = phi i64 [ %1222, %for.body507.lr.ph ], [ %ind.end, %middle.block1969 ]
  %left_avail426.sroa.7.01426.ph = phi i32 [ 1, %for.body507.lr.ph ], [ %bin.rdx1997, %middle.block1969 ]
  br label %for.body507

vector.ph1972:                                    ; preds = %for.body507.lr.ph
  %n.vec1974 = and i64 %1227, 8589934588
  %ind.end = add nuw nsw i64 %n.vec1974, %1222
  br label %vector.body1976

vector.body1976:                                  ; preds = %pred.load.continue1989, %vector.ph1972
  %index1977 = phi i64 [ 0, %vector.ph1972 ], [ %index.next1994, %pred.load.continue1989 ]
  %vec.phi1978 = phi i32 [ 1, %vector.ph1972 ], [ %1272, %pred.load.continue1989 ]
  %vec.phi1979 = phi i32 [ -1, %vector.ph1972 ], [ %1273, %pred.load.continue1989 ]
  %vec.phi1980 = phi i32 [ -1, %vector.ph1972 ], [ %1274, %pred.load.continue1989 ]
  %vec.phi1981 = phi i32 [ -1, %vector.ph1972 ], [ %1275, %pred.load.continue1989 ]
  %offset.idx = add i64 %index1977, %1222
  %1228 = add nuw nsw i64 %offset.idx, 1
  %1229 = add i64 %offset.idx, 2
  %1230 = add i64 %offset.idx, 3
  %1231 = add i64 %offset.idx, 4
  %1232 = getelementptr inbounds [17 x %struct.pix_pos], ptr %left424, i64 0, i64 %1228
  %1233 = getelementptr inbounds [17 x %struct.pix_pos], ptr %left424, i64 0, i64 %1229
  %1234 = getelementptr inbounds [17 x %struct.pix_pos], ptr %left424, i64 0, i64 %1230
  %1235 = getelementptr inbounds [17 x %struct.pix_pos], ptr %left424, i64 0, i64 %1231
  %1236 = load i32, ptr %1232, align 16
  %1237 = load i32, ptr %1233, align 16
  %1238 = load i32, ptr %1234, align 16
  %1239 = load i32, ptr %1235, align 16
  %.not2240 = icmp eq i32 %1236, 0
  %.not2241 = icmp eq i32 %1237, 0
  %.not2242 = icmp eq i32 %1238, 0
  %.not2243 = icmp eq i32 %1239, 0
  br i1 %.not2240, label %pred.load.continue1983, label %pred.load.if1982

pred.load.if1982:                                 ; preds = %vector.body1976
  %1240 = load ptr, ptr %intra_block514, align 8
  %1241 = getelementptr inbounds i8, ptr %1232, i64 4
  %1242 = load i32, ptr %1241, align 4
  %1243 = sext i32 %1242 to i64
  %1244 = getelementptr inbounds i8, ptr %1240, i64 %1243
  %1245 = load i8, ptr %1244, align 1
  br label %pred.load.continue1983

pred.load.continue1983:                           ; preds = %pred.load.if1982, %vector.body1976
  %1246 = phi i8 [ poison, %vector.body1976 ], [ %1245, %pred.load.if1982 ]
  br i1 %.not2241, label %pred.load.continue1985, label %pred.load.if1984

pred.load.if1984:                                 ; preds = %pred.load.continue1983
  %1247 = load ptr, ptr %intra_block514, align 8
  %1248 = getelementptr inbounds i8, ptr %1233, i64 4
  %1249 = load i32, ptr %1248, align 4
  %1250 = sext i32 %1249 to i64
  %1251 = getelementptr inbounds i8, ptr %1247, i64 %1250
  %1252 = load i8, ptr %1251, align 1
  br label %pred.load.continue1985

pred.load.continue1985:                           ; preds = %pred.load.if1984, %pred.load.continue1983
  %1253 = phi i8 [ poison, %pred.load.continue1983 ], [ %1252, %pred.load.if1984 ]
  br i1 %.not2242, label %pred.load.continue1987, label %pred.load.if1986

pred.load.if1986:                                 ; preds = %pred.load.continue1985
  %1254 = load ptr, ptr %intra_block514, align 8
  %1255 = getelementptr inbounds i8, ptr %1234, i64 4
  %1256 = load i32, ptr %1255, align 4
  %1257 = sext i32 %1256 to i64
  %1258 = getelementptr inbounds i8, ptr %1254, i64 %1257
  %1259 = load i8, ptr %1258, align 1
  br label %pred.load.continue1987

pred.load.continue1987:                           ; preds = %pred.load.if1986, %pred.load.continue1985
  %1260 = phi i8 [ poison, %pred.load.continue1985 ], [ %1259, %pred.load.if1986 ]
  br i1 %.not2243, label %pred.load.continue1989, label %pred.load.if1988

pred.load.if1988:                                 ; preds = %pred.load.continue1987
  %1261 = load ptr, ptr %intra_block514, align 8
  %1262 = getelementptr inbounds i8, ptr %1235, i64 4
  %1263 = load i32, ptr %1262, align 4
  %1264 = sext i32 %1263 to i64
  %1265 = getelementptr inbounds i8, ptr %1261, i64 %1264
  %1266 = load i8, ptr %1265, align 1
  br label %pred.load.continue1989

pred.load.continue1989:                           ; preds = %pred.load.if1988, %pred.load.continue1987
  %1267 = phi i8 [ poison, %pred.load.continue1987 ], [ %1266, %pred.load.if1988 ]
  %1268 = sext i8 %1246 to i32
  %1269 = sext i8 %1253 to i32
  %1270 = sext i8 %1260 to i32
  %1271 = sext i8 %1267 to i32
  %predphi1990 = select i1 %.not2240, i32 0, i32 %1268
  %predphi1991 = select i1 %.not2241, i32 0, i32 %1269
  %predphi1992 = select i1 %.not2242, i32 0, i32 %1270
  %predphi1993 = select i1 %.not2243, i32 0, i32 %1271
  %1272 = and i32 %predphi1990, %vec.phi1978
  %1273 = and i32 %predphi1991, %vec.phi1979
  %1274 = and i32 %predphi1992, %vec.phi1980
  %1275 = and i32 %predphi1993, %vec.phi1981
  %index.next1994 = add nuw i64 %index1977, 4
  %1276 = icmp eq i64 %index.next1994, %n.vec1974
  br i1 %1276, label %middle.block1969, label %vector.body1976, !llvm.loop !24

middle.block1969:                                 ; preds = %pred.load.continue1989
  %bin.rdx1995 = and i32 %1273, %1272
  %bin.rdx1996 = and i32 %1274, %bin.rdx1995
  %bin.rdx1997 = and i32 %1275, %bin.rdx1996
  %cmp.n1998 = icmp eq i64 %1227, %n.vec1974
  br i1 %cmp.n1998, label %for.end529, label %for.body507.preheader

for.body480:                                      ; preds = %for.body480.prol.loopexit, %cond.end496.1
  %indvars.iv1477 = phi i64 [ %indvars.iv.next1478.1, %cond.end496.1 ], [ %indvars.iv1477.unr, %for.body480.prol.loopexit ]
  %left_avail426.sroa.0.01423 = phi i32 [ %and499.1, %cond.end496.1 ], [ %left_avail426.sroa.0.01423.unr, %for.body480.prol.loopexit ]
  %indvars.iv.next1478 = add nuw nsw i64 %indvars.iv1477, 1
  %arrayidx483 = getelementptr inbounds [17 x %struct.pix_pos], ptr %left424, i64 0, i64 %indvars.iv.next1478
  %1277 = load i32, ptr %arrayidx483, align 16
  %tobool485.not = icmp eq i32 %1277, 0
  br i1 %tobool485.not, label %cond.end496, label %cond.true486

cond.true486:                                     ; preds = %for.body480
  %1278 = load ptr, ptr %intra_block487, align 8
  %mb_addr491 = getelementptr inbounds i8, ptr %arrayidx483, i64 4
  %1279 = load i32, ptr %mb_addr491, align 4
  %idxprom492 = sext i32 %1279 to i64
  %arrayidx493 = getelementptr inbounds i8, ptr %1278, i64 %idxprom492
  %1280 = load i8, ptr %arrayidx493, align 1
  %conv494 = sext i8 %1280 to i32
  br label %cond.end496

cond.end496:                                      ; preds = %for.body480, %cond.true486
  %cond497 = phi i32 [ %conv494, %cond.true486 ], [ 0, %for.body480 ]
  %and499 = and i32 %cond497, %left_avail426.sroa.0.01423
  %indvars.iv.next1478.1 = add nuw nsw i64 %indvars.iv1477, 2
  %arrayidx483.1 = getelementptr inbounds [17 x %struct.pix_pos], ptr %left424, i64 0, i64 %indvars.iv.next1478.1
  %1281 = load i32, ptr %arrayidx483.1, align 16
  %tobool485.not.1 = icmp eq i32 %1281, 0
  br i1 %tobool485.not.1, label %cond.end496.1, label %cond.true486.1

cond.true486.1:                                   ; preds = %cond.end496
  %1282 = load ptr, ptr %intra_block487, align 8
  %mb_addr491.1 = getelementptr inbounds i8, ptr %arrayidx483.1, i64 4
  %1283 = load i32, ptr %mb_addr491.1, align 4
  %idxprom492.1 = sext i32 %1283 to i64
  %arrayidx493.1 = getelementptr inbounds i8, ptr %1282, i64 %idxprom492.1
  %1284 = load i8, ptr %arrayidx493.1, align 1
  %conv494.1 = sext i8 %1284 to i32
  br label %cond.end496.1

cond.end496.1:                                    ; preds = %cond.true486.1, %cond.end496
  %cond497.1 = phi i32 [ %conv494.1, %cond.true486.1 ], [ 0, %cond.end496 ]
  %and499.1 = and i32 %cond497.1, %and499
  %exitcond1481.not.1 = icmp eq i64 %indvars.iv.next1478.1, %wide.trip.count1480
  br i1 %exitcond1481.not.1, label %for.cond504.preheader, label %for.body480, !llvm.loop !25

for.body507:                                      ; preds = %for.body507.preheader, %cond.end523
  %indvars.iv1482 = phi i64 [ %indvars.iv.next1483, %cond.end523 ], [ %indvars.iv1482.ph, %for.body507.preheader ]
  %left_avail426.sroa.7.01426 = phi i32 [ %and526, %cond.end523 ], [ %left_avail426.sroa.7.01426.ph, %for.body507.preheader ]
  %indvars.iv.next1483 = add nuw nsw i64 %indvars.iv1482, 1
  %arrayidx510 = getelementptr inbounds [17 x %struct.pix_pos], ptr %left424, i64 0, i64 %indvars.iv.next1483
  %1285 = load i32, ptr %arrayidx510, align 16
  %tobool512.not = icmp eq i32 %1285, 0
  br i1 %tobool512.not, label %cond.end523, label %cond.true513

cond.true513:                                     ; preds = %for.body507
  %1286 = load ptr, ptr %intra_block514, align 8
  %mb_addr518 = getelementptr inbounds i8, ptr %arrayidx510, i64 4
  %1287 = load i32, ptr %mb_addr518, align 4
  %idxprom519 = sext i32 %1287 to i64
  %arrayidx520 = getelementptr inbounds i8, ptr %1286, i64 %idxprom519
  %1288 = load i8, ptr %arrayidx520, align 1
  %conv521 = sext i8 %1288 to i32
  br label %cond.end523

cond.end523:                                      ; preds = %for.body507, %cond.true513
  %cond524 = phi i32 [ %conv521, %cond.true513 ], [ 0, %for.body507 ]
  %and526 = and i32 %cond524, %left_avail426.sroa.7.01426
  %1289 = trunc nuw i64 %indvars.iv.next1483 to i32
  %cmp505 = icmp sgt i32 %1153, %1289
  br i1 %cmp505, label %for.body507, label %for.end529, !llvm.loop !26

for.end529:                                       ; preds = %cond.end523, %middle.block1969, %for.cond504.preheader
  %left_avail426.sroa.7.0.lcssa = phi i32 [ 1, %for.cond504.preheader ], [ %bin.rdx1997, %middle.block1969 ], [ %and526, %cond.end523 ]
  %1290 = load i32, ptr %left424, align 16
  %tobool532.not = icmp eq i32 %1290, 0
  br i1 %tobool532.not, label %if.end543, label %cond.true533

cond.true533:                                     ; preds = %for.end529
  %intra_block534 = getelementptr inbounds i8, ptr %0, i64 13544
  %1291 = load ptr, ptr %intra_block534, align 8
  %mb_addr536 = getelementptr inbounds i8, ptr %left424, i64 4
  %1292 = load i32, ptr %mb_addr536, align 4
  %idxprom537 = sext i32 %1292 to i64
  %arrayidx538 = getelementptr inbounds i8, ptr %1291, i64 %idxprom537
  %1293 = load i8, ptr %arrayidx538, align 1
  %conv539 = sext i8 %1293 to i32
  br label %if.end543

if.end543:                                        ; preds = %cond.true533, %for.end529, %if.then456
  %up_avail425.0 = phi i32 [ %1161, %if.then456 ], [ %cond475, %for.end529 ], [ %cond475, %cond.true533 ]
  %left_avail426.sroa.7.1 = phi i32 [ %1162, %if.then456 ], [ %left_avail426.sroa.7.0.lcssa, %for.end529 ], [ %left_avail426.sroa.7.0.lcssa, %cond.true533 ]
  %left_avail426.sroa.0.1 = phi i32 [ %1162, %if.then456 ], [ %left_avail426.sroa.0.0.lcssa, %for.end529 ], [ %left_avail426.sroa.0.0.lcssa, %cond.true533 ]
  %left_up_avail427.0 = phi i32 [ %1163, %if.then456 ], [ 0, %for.end529 ], [ %conv539, %cond.true533 ]
  %tobool544 = icmp ne i32 %left_up_avail427.0, 0
  %tobool547 = icmp ne i32 %left_avail426.sroa.0.1, 0
  %or.cond748 = select i1 %tobool544, i1 %tobool547, i1 false
  %tobool550 = icmp ne i32 %left_avail426.sroa.7.1, 0
  %or.cond749 = select i1 %or.cond748, i1 %tobool550, i1 false
  %tobool552 = icmp ne i32 %up_avail425.0, 0
  %or.cond750 = select i1 %or.cond749, i1 %tobool552, i1 false
  br i1 %or.cond750, label %for.cond555.preheader, label %if.then553

for.cond555.preheader:                            ; preds = %if.end543
  %imgUV560 = getelementptr inbounds i8, ptr %2, i64 136
  %mb_pred564 = getelementptr inbounds i8, ptr %0, i64 1248
  %pos_y571 = getelementptr inbounds i8, ptr %up423, i64 14
  %pos_x574 = getelementptr inbounds i8, ptr %up423, i64 12
  %1294 = sext i32 %1152 to i64
  %pos_y582 = getelementptr inbounds i8, ptr %left424, i64 14
  %pos_x586 = getelementptr inbounds i8, ptr %left424, i64 12
  %sub593 = add nsw i32 %shr434, -1
  %cmp5941429 = icmp sgt i32 %shr434, 1
  %idxprom613 = sext i32 %1153 to i64
  %arrayidx614 = getelementptr inbounds [17 x %struct.pix_pos], ptr %left424, i64 0, i64 %idxprom613
  %pos_y615 = getelementptr inbounds i8, ptr %arrayidx614, i64 14
  %pos_x620 = getelementptr inbounds i8, ptr %arrayidx614, i64 12
  %sub636 = add nsw i32 %shr433, -1
  %cmp6371433 = icmp sgt i32 %shr433, 1
  %cmp677 = icmp eq i32 %1152, 8
  %cond679 = select i1 %cmp677, i32 17, i32 5
  %mul681 = shl nsw i32 %1152, 1
  %cond685 = select i1 %cmp677, i32 5, i32 6
  %cmp687 = icmp eq i32 %1153, 8
  %cond689 = select i1 %cmp687, i32 17, i32 5
  %mul691 = shl nsw i32 %1153, 1
  %cond695 = select i1 %cmp687, i32 5, i32 6
  %cmp7151439 = icmp sgt i32 %1153, 0
  %sub602 = add nsw i32 %shr434, -2
  %add641 = add nsw i32 %shr433, 1
  %cmp7191437 = icmp sgt i32 %1152, 0
  %1295 = sext i32 %shr434 to i64
  %1296 = sext i32 %sub602 to i64
  %1297 = sext i32 %add641 to i64
  %1298 = sext i32 %sub636 to i64
  %1299 = load ptr, ptr %imgUV560, align 8
  %1300 = load ptr, ptr %1299, align 8
  %1301 = load ptr, ptr %mb_pred564, align 8
  %arrayidx567 = getelementptr inbounds i8, ptr %1301, i64 8
  %1302 = load ptr, ptr %arrayidx567, align 8
  %arrayidx570 = getelementptr inbounds i8, ptr %1, i64 849076
  %1303 = load i32, ptr %arrayidx570, align 4
  %1304 = load i16, ptr %pos_y571, align 2
  %idxprom572 = sext i16 %1304 to i64
  %arrayidx573 = getelementptr inbounds ptr, ptr %1300, i64 %idxprom572
  %1305 = load ptr, ptr %arrayidx573, align 8
  %1306 = load i16, ptr %pos_x574, align 4
  %idxprom575 = sext i16 %1306 to i64
  %arrayidx576 = getelementptr inbounds i16, ptr %1305, i64 %idxprom575
  %1307 = getelementptr i16, ptr %arrayidx576, i64 %1294
  %arrayidx579 = getelementptr i8, ptr %1307, i64 -2
  %1308 = load i16, ptr %arrayidx579, align 2
  %conv580 = zext i16 %1308 to i32
  %1309 = load i16, ptr %pos_y582, align 2
  %idxprom583 = sext i16 %1309 to i64
  %arrayidx584 = getelementptr inbounds ptr, ptr %1300, i64 %idxprom583
  %1310 = load ptr, ptr %arrayidx584, align 8
  %1311 = load i16, ptr %pos_x586, align 4
  %idxprom587 = sext i16 %1311 to i64
  %arrayidx588 = getelementptr inbounds i16, ptr %1310, i64 %idxprom587
  %1312 = load i16, ptr %arrayidx588, align 2
  %conv589 = zext i16 %1312 to i32
  %sub590 = sub nsw i32 %conv580, %conv589
  %mul591 = mul nsw i32 %sub590, %shr434
  br i1 %cmp5941429, label %for.body596.preheader, label %for.end612

if.then553:                                       ; preds = %if.end543
  call void @error(ptr noundef nonnull @.str.3, i32 noundef -1) #5
  br label %if.end746

for.cond555.loopexit.loopexit:                    ; preds = %for.cond718.for.inc740_crit_edge.us
  %.pre = load ptr, ptr %imgUV560, align 8
  %.pre1626 = load ptr, ptr %mb_pred564, align 8
  %.pre1627 = load i16, ptr %pos_y571, align 2
  %.pre1628 = load i16, ptr %pos_x574, align 4
  %.pre1629 = load i16, ptr %pos_y582, align 2
  %.pre1630 = load i16, ptr %pos_x586, align 4
  %.pre1822 = sext i16 %.pre1627 to i64
  %.pre1823 = sext i16 %.pre1629 to i64
  %.pre1824 = sext i16 %.pre1630 to i64
  %.pre1952 = sext i16 %.pre1628 to i64
  br label %for.cond555.loopexit

for.cond555.loopexit:                             ; preds = %for.cond718.preheader.lr.ph, %for.cond555.loopexit.loopexit, %for.end676
  %idxprom575.1.pre-phi = phi i64 [ %.pre1952, %for.cond555.loopexit.loopexit ], [ %idxprom575, %for.end676 ], [ %idxprom575, %for.cond718.preheader.lr.ph ]
  %idxprom587.1.pre-phi = phi i64 [ %.pre1824, %for.cond555.loopexit.loopexit ], [ %idxprom587, %for.end676 ], [ %idxprom587, %for.cond718.preheader.lr.ph ]
  %idxprom583.1.pre-phi = phi i64 [ %.pre1823, %for.cond555.loopexit.loopexit ], [ %idxprom583, %for.end676 ], [ %idxprom583, %for.cond718.preheader.lr.ph ]
  %idxprom572.1.pre-phi = phi i64 [ %.pre1822, %for.cond555.loopexit.loopexit ], [ %idxprom572, %for.end676 ], [ %idxprom572, %for.cond718.preheader.lr.ph ]
  %1313 = phi ptr [ %.pre1626, %for.cond555.loopexit.loopexit ], [ %1301, %for.end676 ], [ %1301, %for.cond718.preheader.lr.ph ]
  %1314 = phi ptr [ %.pre, %for.cond555.loopexit.loopexit ], [ %1299, %for.end676 ], [ %1299, %for.cond718.preheader.lr.ph ]
  %arrayidx562.1 = getelementptr inbounds i8, ptr %1314, i64 8
  %1315 = load ptr, ptr %arrayidx562.1, align 8
  %arrayidx567.1 = getelementptr inbounds i8, ptr %1313, i64 16
  %1316 = load ptr, ptr %arrayidx567.1, align 8
  %arrayidx570.1 = getelementptr inbounds i8, ptr %1, i64 849080
  %1317 = load i32, ptr %arrayidx570.1, align 4
  %arrayidx573.1 = getelementptr inbounds ptr, ptr %1315, i64 %idxprom572.1.pre-phi
  %1318 = load ptr, ptr %arrayidx573.1, align 8
  %arrayidx576.1 = getelementptr inbounds i16, ptr %1318, i64 %idxprom575.1.pre-phi
  %1319 = getelementptr i16, ptr %arrayidx576.1, i64 %1294
  %arrayidx579.1 = getelementptr i8, ptr %1319, i64 -2
  %1320 = load i16, ptr %arrayidx579.1, align 2
  %conv580.1 = zext i16 %1320 to i32
  %arrayidx584.1 = getelementptr inbounds ptr, ptr %1315, i64 %idxprom583.1.pre-phi
  %1321 = load ptr, ptr %arrayidx584.1, align 8
  %arrayidx588.1 = getelementptr inbounds i16, ptr %1321, i64 %idxprom587.1.pre-phi
  %1322 = load i16, ptr %arrayidx588.1, align 2
  %conv589.1 = zext i16 %1322 to i32
  %sub590.1 = sub nsw i32 %conv580.1, %conv589.1
  %mul591.1 = mul nsw i32 %sub590.1, %shr434
  br i1 %cmp5941429, label %for.body596.preheader.1, label %for.end612.1

for.body596.preheader.1:                          ; preds = %for.cond555.loopexit
  %wide.trip.count1490.1 = zext nneg i32 %sub593 to i64
  %invariant.gep1953 = getelementptr i16, ptr %arrayidx576.1, i64 %1295
  %min.iters.check2053 = icmp ult i32 %shr434, 17
  br i1 %min.iters.check2053, label %for.body596.1.preheader, label %vector.ph2054

vector.ph2054:                                    ; preds = %for.body596.preheader.1
  %n.vec2056 = and i64 %wide.trip.count1490.1, 2147483632
  %1323 = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %mul591.1, i64 0
  br label %vector.body2058

vector.body2058:                                  ; preds = %vector.body2058, %vector.ph2054
  %index2059 = phi i64 [ 0, %vector.ph2054 ], [ %index.next2082, %vector.body2058 ]
  %vec.ind2060 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph2054 ], [ %vec.ind.next2065, %vector.body2058 ]
  %vec.phi2066 = phi <4 x i32> [ %1323, %vector.ph2054 ], [ %1358, %vector.body2058 ]
  %vec.phi2067 = phi <4 x i32> [ zeroinitializer, %vector.ph2054 ], [ %1359, %vector.body2058 ]
  %vec.phi2068 = phi <4 x i32> [ zeroinitializer, %vector.ph2054 ], [ %1360, %vector.body2058 ]
  %vec.phi2069 = phi <4 x i32> [ zeroinitializer, %vector.ph2054 ], [ %1361, %vector.body2058 ]
  %1324 = getelementptr i16, ptr %invariant.gep1953, i64 %index2059
  %1325 = getelementptr i8, ptr %1324, i64 8
  %1326 = getelementptr i8, ptr %1324, i64 16
  %1327 = getelementptr i8, ptr %1324, i64 24
  %wide.load2070 = load <4 x i16>, ptr %1324, align 2
  %wide.load2071 = load <4 x i16>, ptr %1325, align 2
  %wide.load2072 = load <4 x i16>, ptr %1326, align 2
  %wide.load2073 = load <4 x i16>, ptr %1327, align 2
  %1328 = zext <4 x i16> %wide.load2070 to <4 x i32>
  %1329 = zext <4 x i16> %wide.load2071 to <4 x i32>
  %1330 = zext <4 x i16> %wide.load2072 to <4 x i32>
  %1331 = zext <4 x i16> %wide.load2073 to <4 x i32>
  %1332 = sub nsw i64 %1296, %index2059
  %1333 = getelementptr inbounds i16, ptr %arrayidx576.1, i64 %1332
  %1334 = getelementptr inbounds i8, ptr %1333, i64 -6
  %1335 = getelementptr inbounds i8, ptr %1333, i64 -14
  %1336 = getelementptr inbounds i8, ptr %1333, i64 -22
  %1337 = getelementptr inbounds i8, ptr %1333, i64 -30
  %wide.load2074 = load <4 x i16>, ptr %1334, align 2
  %reverse2075 = shufflevector <4 x i16> %wide.load2074, <4 x i16> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %wide.load2076 = load <4 x i16>, ptr %1335, align 2
  %reverse2077 = shufflevector <4 x i16> %wide.load2076, <4 x i16> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %wide.load2078 = load <4 x i16>, ptr %1336, align 2
  %reverse2079 = shufflevector <4 x i16> %wide.load2078, <4 x i16> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %wide.load2080 = load <4 x i16>, ptr %1337, align 2
  %reverse2081 = shufflevector <4 x i16> %wide.load2080, <4 x i16> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %1338 = zext <4 x i16> %reverse2075 to <4 x i32>
  %1339 = zext <4 x i16> %reverse2077 to <4 x i32>
  %1340 = zext <4 x i16> %reverse2079 to <4 x i32>
  %1341 = zext <4 x i16> %reverse2081 to <4 x i32>
  %1342 = sub nsw <4 x i32> %1328, %1338
  %1343 = sub nsw <4 x i32> %1329, %1339
  %1344 = sub nsw <4 x i32> %1330, %1340
  %1345 = sub nsw <4 x i32> %1331, %1341
  %1346 = trunc <4 x i64> %vec.ind2060 to <4 x i32>
  %1347 = add <4 x i32> %1346, <i32 1, i32 1, i32 1, i32 1>
  %1348 = trunc <4 x i64> %vec.ind2060 to <4 x i32>
  %1349 = add <4 x i32> %1348, <i32 5, i32 5, i32 5, i32 5>
  %1350 = trunc <4 x i64> %vec.ind2060 to <4 x i32>
  %1351 = add <4 x i32> %1350, <i32 9, i32 9, i32 9, i32 9>
  %1352 = trunc <4 x i64> %vec.ind2060 to <4 x i32>
  %1353 = add <4 x i32> %1352, <i32 13, i32 13, i32 13, i32 13>
  %1354 = mul nsw <4 x i32> %1342, %1347
  %1355 = mul nsw <4 x i32> %1343, %1349
  %1356 = mul nsw <4 x i32> %1344, %1351
  %1357 = mul nsw <4 x i32> %1345, %1353
  %1358 = add <4 x i32> %1354, %vec.phi2066
  %1359 = add <4 x i32> %1355, %vec.phi2067
  %1360 = add <4 x i32> %1356, %vec.phi2068
  %1361 = add <4 x i32> %1357, %vec.phi2069
  %index.next2082 = add nuw i64 %index2059, 16
  %vec.ind.next2065 = add <4 x i64> %vec.ind2060, <i64 16, i64 16, i64 16, i64 16>
  %1362 = icmp eq i64 %index.next2082, %n.vec2056
  br i1 %1362, label %middle.block2051, label %vector.body2058, !llvm.loop !27

middle.block2051:                                 ; preds = %vector.body2058
  %bin.rdx2083 = add <4 x i32> %1359, %1358
  %bin.rdx2084 = add <4 x i32> %1360, %bin.rdx2083
  %bin.rdx2085 = add <4 x i32> %1361, %bin.rdx2084
  %1363 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx2085)
  %cmp.n2086 = icmp eq i64 %n.vec2056, %wide.trip.count1490.1
  br i1 %cmp.n2086, label %for.end612.1, label %for.body596.1.preheader

for.body596.1.preheader:                          ; preds = %middle.block2051, %for.body596.preheader.1
  %indvars.iv1485.1.ph = phi i64 [ 0, %for.body596.preheader.1 ], [ %n.vec2056, %middle.block2051 ]
  %ih.01430.1.ph = phi i32 [ %mul591.1, %for.body596.preheader.1 ], [ %1363, %middle.block2051 ]
  br label %for.body596.1

for.body596.1:                                    ; preds = %for.body596.1.preheader, %for.body596.1
  %indvars.iv1485.1 = phi i64 [ %indvars.iv.next1486.1, %for.body596.1 ], [ %indvars.iv1485.1.ph, %for.body596.1.preheader ]
  %ih.01430.1 = phi i32 [ %add609.1, %for.body596.1 ], [ %ih.01430.1.ph, %for.body596.1.preheader ]
  %indvars.iv.next1486.1 = add nuw nsw i64 %indvars.iv1485.1, 1
  %gep1954 = getelementptr i16, ptr %invariant.gep1953, i64 %indvars.iv1485.1
  %1364 = load i16, ptr %gep1954, align 2
  %conv601.1 = zext i16 %1364 to i32
  %1365 = sub nsw i64 %1296, %indvars.iv1485.1
  %arrayidx605.1 = getelementptr inbounds i16, ptr %arrayidx576.1, i64 %1365
  %1366 = load i16, ptr %arrayidx605.1, align 2
  %conv606.1 = zext i16 %1366 to i32
  %sub607.1 = sub nsw i32 %conv601.1, %conv606.1
  %1367 = trunc nuw nsw i64 %indvars.iv.next1486.1 to i32
  %mul608.1 = mul nsw i32 %sub607.1, %1367
  %add609.1 = add nsw i32 %mul608.1, %ih.01430.1
  %exitcond1491.1.not = icmp eq i64 %indvars.iv.next1486.1, %wide.trip.count1490.1
  br i1 %exitcond1491.1.not, label %for.end612.1, label %for.body596.1, !llvm.loop !28

for.end612.1:                                     ; preds = %for.body596.1, %middle.block2051, %for.cond555.loopexit
  %ih.0.lcssa.1 = phi i32 [ %mul591.1, %for.cond555.loopexit ], [ %1363, %middle.block2051 ], [ %add609.1, %for.body596.1 ]
  %1368 = load i16, ptr %pos_y615, align 2
  %idxprom616.1 = sext i16 %1368 to i64
  %arrayidx617.1 = getelementptr inbounds ptr, ptr %1315, i64 %idxprom616.1
  %1369 = load ptr, ptr %arrayidx617.1, align 8
  %1370 = load i16, ptr %pos_x620, align 4
  %idxprom621.1 = sext i16 %1370 to i64
  %arrayidx622.1 = getelementptr inbounds i16, ptr %1369, i64 %idxprom621.1
  %1371 = load i16, ptr %arrayidx622.1, align 2
  %conv623.1 = zext i16 %1371 to i32
  %sub633.1 = sub nsw i32 %conv623.1, %conv589.1
  %mul634.1 = mul nsw i32 %sub633.1, %shr433
  br i1 %cmp6371433, label %for.body639.preheader.1, label %for.end676.1

for.body639.preheader.1:                          ; preds = %for.end612.1
  %wide.trip.count1497.1 = zext i32 %sub636 to i64
  %min.iters.check2090 = icmp ult i32 %shr433, 5
  br i1 %min.iters.check2090, label %for.body639.1.preheader, label %vector.ph2091

vector.ph2091:                                    ; preds = %for.body639.preheader.1
  %n.vec2093 = and i64 %wide.trip.count1497.1, 4294967292
  br label %vector.body2095

vector.body2095:                                  ; preds = %vector.body2095, %vector.ph2091
  %index2096 = phi i64 [ 0, %vector.ph2091 ], [ %index.next2101, %vector.body2095 ]
  %vec.phi2097 = phi i32 [ %mul634.1, %vector.ph2091 ], [ %1495, %vector.body2095 ]
  %vec.phi2098 = phi i32 [ 0, %vector.ph2091 ], [ %1496, %vector.body2095 ]
  %vec.phi2099 = phi i32 [ 0, %vector.ph2091 ], [ %1497, %vector.body2095 ]
  %vec.phi2100 = phi i32 [ 0, %vector.ph2091 ], [ %1498, %vector.body2095 ]
  %1372 = or disjoint i64 %index2096, 1
  %1373 = or disjoint i64 %index2096, 2
  %1374 = or disjoint i64 %index2096, 3
  %1375 = add nuw nsw i64 %index2096, %1297
  %1376 = add nuw nsw i64 %1372, %1297
  %1377 = add nuw nsw i64 %1373, %1297
  %1378 = add nuw nsw i64 %1374, %1297
  %1379 = getelementptr inbounds [17 x %struct.pix_pos], ptr %left424, i64 0, i64 %1375
  %1380 = getelementptr inbounds [17 x %struct.pix_pos], ptr %left424, i64 0, i64 %1376
  %1381 = getelementptr inbounds [17 x %struct.pix_pos], ptr %left424, i64 0, i64 %1377
  %1382 = getelementptr inbounds [17 x %struct.pix_pos], ptr %left424, i64 0, i64 %1378
  %1383 = getelementptr inbounds i8, ptr %1379, i64 14
  %1384 = getelementptr inbounds i8, ptr %1380, i64 14
  %1385 = getelementptr inbounds i8, ptr %1381, i64 14
  %1386 = getelementptr inbounds i8, ptr %1382, i64 14
  %1387 = load i16, ptr %1383, align 2
  %1388 = load i16, ptr %1384, align 2
  %1389 = load i16, ptr %1385, align 2
  %1390 = load i16, ptr %1386, align 2
  %1391 = sext i16 %1387 to i64
  %1392 = sext i16 %1388 to i64
  %1393 = sext i16 %1389 to i64
  %1394 = sext i16 %1390 to i64
  %1395 = getelementptr inbounds ptr, ptr %1315, i64 %1391
  %1396 = getelementptr inbounds ptr, ptr %1315, i64 %1392
  %1397 = getelementptr inbounds ptr, ptr %1315, i64 %1393
  %1398 = getelementptr inbounds ptr, ptr %1315, i64 %1394
  %1399 = load ptr, ptr %1395, align 8
  %1400 = load ptr, ptr %1396, align 8
  %1401 = load ptr, ptr %1397, align 8
  %1402 = load ptr, ptr %1398, align 8
  %1403 = getelementptr inbounds i8, ptr %1379, i64 12
  %1404 = getelementptr inbounds i8, ptr %1380, i64 12
  %1405 = getelementptr inbounds i8, ptr %1381, i64 12
  %1406 = getelementptr inbounds i8, ptr %1382, i64 12
  %1407 = load i16, ptr %1403, align 4
  %1408 = load i16, ptr %1404, align 4
  %1409 = load i16, ptr %1405, align 4
  %1410 = load i16, ptr %1406, align 4
  %1411 = sext i16 %1407 to i64
  %1412 = sext i16 %1408 to i64
  %1413 = sext i16 %1409 to i64
  %1414 = sext i16 %1410 to i64
  %1415 = getelementptr inbounds i16, ptr %1399, i64 %1411
  %1416 = getelementptr inbounds i16, ptr %1400, i64 %1412
  %1417 = getelementptr inbounds i16, ptr %1401, i64 %1413
  %1418 = getelementptr inbounds i16, ptr %1402, i64 %1414
  %1419 = load i16, ptr %1415, align 2
  %1420 = load i16, ptr %1416, align 2
  %1421 = load i16, ptr %1417, align 2
  %1422 = load i16, ptr %1418, align 2
  %1423 = zext i16 %1419 to i32
  %1424 = zext i16 %1420 to i32
  %1425 = zext i16 %1421 to i32
  %1426 = zext i16 %1422 to i32
  %1427 = sub nsw i64 %1298, %index2096
  %1428 = sub nsw i64 %1298, %1372
  %1429 = sub nsw i64 %1298, %1373
  %1430 = sub nsw i64 %1298, %1374
  %1431 = getelementptr inbounds [17 x %struct.pix_pos], ptr %left424, i64 0, i64 %1427
  %1432 = getelementptr inbounds [17 x %struct.pix_pos], ptr %left424, i64 0, i64 %1428
  %1433 = getelementptr inbounds [17 x %struct.pix_pos], ptr %left424, i64 0, i64 %1429
  %1434 = getelementptr inbounds [17 x %struct.pix_pos], ptr %left424, i64 0, i64 %1430
  %1435 = getelementptr inbounds i8, ptr %1431, i64 14
  %1436 = getelementptr inbounds i8, ptr %1432, i64 14
  %1437 = getelementptr inbounds i8, ptr %1433, i64 14
  %1438 = getelementptr inbounds i8, ptr %1434, i64 14
  %1439 = load i16, ptr %1435, align 2
  %1440 = load i16, ptr %1436, align 2
  %1441 = load i16, ptr %1437, align 2
  %1442 = load i16, ptr %1438, align 2
  %1443 = sext i16 %1439 to i64
  %1444 = sext i16 %1440 to i64
  %1445 = sext i16 %1441 to i64
  %1446 = sext i16 %1442 to i64
  %1447 = getelementptr inbounds ptr, ptr %1315, i64 %1443
  %1448 = getelementptr inbounds ptr, ptr %1315, i64 %1444
  %1449 = getelementptr inbounds ptr, ptr %1315, i64 %1445
  %1450 = getelementptr inbounds ptr, ptr %1315, i64 %1446
  %1451 = load ptr, ptr %1447, align 8
  %1452 = load ptr, ptr %1448, align 8
  %1453 = load ptr, ptr %1449, align 8
  %1454 = load ptr, ptr %1450, align 8
  %1455 = getelementptr inbounds i8, ptr %1431, i64 12
  %1456 = getelementptr inbounds i8, ptr %1432, i64 12
  %1457 = getelementptr inbounds i8, ptr %1433, i64 12
  %1458 = getelementptr inbounds i8, ptr %1434, i64 12
  %1459 = load i16, ptr %1455, align 4
  %1460 = load i16, ptr %1456, align 4
  %1461 = load i16, ptr %1457, align 4
  %1462 = load i16, ptr %1458, align 4
  %1463 = sext i16 %1459 to i64
  %1464 = sext i16 %1460 to i64
  %1465 = sext i16 %1461 to i64
  %1466 = sext i16 %1462 to i64
  %1467 = getelementptr inbounds i16, ptr %1451, i64 %1463
  %1468 = getelementptr inbounds i16, ptr %1452, i64 %1464
  %1469 = getelementptr inbounds i16, ptr %1453, i64 %1465
  %1470 = getelementptr inbounds i16, ptr %1454, i64 %1466
  %1471 = load i16, ptr %1467, align 2
  %1472 = load i16, ptr %1468, align 2
  %1473 = load i16, ptr %1469, align 2
  %1474 = load i16, ptr %1470, align 2
  %1475 = zext i16 %1471 to i32
  %1476 = zext i16 %1472 to i32
  %1477 = zext i16 %1473 to i32
  %1478 = zext i16 %1474 to i32
  %1479 = sub nsw i32 %1423, %1475
  %1480 = sub nsw i32 %1424, %1476
  %1481 = sub nsw i32 %1425, %1477
  %1482 = sub nsw i32 %1426, %1478
  %1483 = trunc i64 %index2096 to i32
  %1484 = or disjoint i32 %1483, 1
  %1485 = trunc i64 %index2096 to i32
  %1486 = or disjoint i32 %1485, 2
  %1487 = trunc i64 %index2096 to i32
  %1488 = or disjoint i32 %1487, 3
  %1489 = trunc i64 %index2096 to i32
  %1490 = add i32 %1489, 4
  %1491 = mul nsw i32 %1479, %1484
  %1492 = mul nsw i32 %1480, %1486
  %1493 = mul nsw i32 %1481, %1488
  %1494 = mul nsw i32 %1482, %1490
  %1495 = add i32 %1491, %vec.phi2097
  %1496 = add i32 %1492, %vec.phi2098
  %1497 = add i32 %1493, %vec.phi2099
  %1498 = add i32 %1494, %vec.phi2100
  %index.next2101 = add nuw i64 %index2096, 4
  %1499 = icmp eq i64 %index.next2101, %n.vec2093
  br i1 %1499, label %middle.block2088, label %vector.body2095, !llvm.loop !29

middle.block2088:                                 ; preds = %vector.body2095
  %bin.rdx2102 = add i32 %1496, %1495
  %bin.rdx2103 = add i32 %1497, %bin.rdx2102
  %bin.rdx2104 = add i32 %1498, %bin.rdx2103
  %cmp.n2105 = icmp eq i64 %n.vec2093, %wide.trip.count1497.1
  br i1 %cmp.n2105, label %for.end676.1, label %for.body639.1.preheader

for.body639.1.preheader:                          ; preds = %middle.block2088, %for.body639.preheader.1
  %indvars.iv1492.1.ph = phi i64 [ 0, %for.body639.preheader.1 ], [ %n.vec2093, %middle.block2088 ]
  %iv.01434.1.ph = phi i32 [ %mul634.1, %for.body639.preheader.1 ], [ %bin.rdx2104, %middle.block2088 ]
  br label %for.body639.1

for.body639.1:                                    ; preds = %for.body639.1.preheader, %for.body639.1
  %indvars.iv1492.1 = phi i64 [ %indvars.iv.next1493.1, %for.body639.1 ], [ %indvars.iv1492.1.ph, %for.body639.1.preheader ]
  %iv.01434.1 = phi i32 [ %add673.1, %for.body639.1 ], [ %iv.01434.1.ph, %for.body639.1.preheader ]
  %indvars.iv.next1493.1 = add nuw nsw i64 %indvars.iv1492.1, 1
  %1500 = add nuw nsw i64 %indvars.iv1492.1, %1297
  %arrayidx644.1 = getelementptr inbounds [17 x %struct.pix_pos], ptr %left424, i64 0, i64 %1500
  %pos_y645.1 = getelementptr inbounds i8, ptr %arrayidx644.1, i64 14
  %1501 = load i16, ptr %pos_y645.1, align 2
  %idxprom646.1 = sext i16 %1501 to i64
  %arrayidx647.1 = getelementptr inbounds ptr, ptr %1315, i64 %idxprom646.1
  %1502 = load ptr, ptr %arrayidx647.1, align 8
  %pos_x652.1 = getelementptr inbounds i8, ptr %arrayidx644.1, i64 12
  %1503 = load i16, ptr %pos_x652.1, align 4
  %idxprom653.1 = sext i16 %1503 to i64
  %arrayidx654.1 = getelementptr inbounds i16, ptr %1502, i64 %idxprom653.1
  %1504 = load i16, ptr %arrayidx654.1, align 2
  %conv655.1 = zext i16 %1504 to i32
  %1505 = sub nsw i64 %1298, %indvars.iv1492.1
  %arrayidx659.1 = getelementptr inbounds [17 x %struct.pix_pos], ptr %left424, i64 0, i64 %1505
  %pos_y660.1 = getelementptr inbounds i8, ptr %arrayidx659.1, i64 14
  %1506 = load i16, ptr %pos_y660.1, align 2
  %idxprom661.1 = sext i16 %1506 to i64
  %arrayidx662.1 = getelementptr inbounds ptr, ptr %1315, i64 %idxprom661.1
  %1507 = load ptr, ptr %arrayidx662.1, align 8
  %pos_x667.1 = getelementptr inbounds i8, ptr %arrayidx659.1, i64 12
  %1508 = load i16, ptr %pos_x667.1, align 4
  %idxprom668.1 = sext i16 %1508 to i64
  %arrayidx669.1 = getelementptr inbounds i16, ptr %1507, i64 %idxprom668.1
  %1509 = load i16, ptr %arrayidx669.1, align 2
  %conv670.1 = zext i16 %1509 to i32
  %sub671.1 = sub nsw i32 %conv655.1, %conv670.1
  %1510 = trunc nuw nsw i64 %indvars.iv.next1493.1 to i32
  %mul672.1 = mul nsw i32 %sub671.1, %1510
  %add673.1 = add nsw i32 %mul672.1, %iv.01434.1
  %exitcond1498.1.not = icmp eq i64 %indvars.iv.next1493.1, %wide.trip.count1497.1
  br i1 %exitcond1498.1.not, label %for.end676.1, label %for.body639.1, !llvm.loop !30

for.end676.1:                                     ; preds = %for.body639.1, %middle.block2088, %for.end612.1
  %iv.0.lcssa.1 = phi i32 [ %mul634.1, %for.end612.1 ], [ %bin.rdx2104, %middle.block2088 ], [ %add673.1, %for.body639.1 ]
  %mul680.1 = mul nsw i32 %ih.0.lcssa.1, %cond679
  %add682.1 = add nsw i32 %mul680.1, %mul681
  %shr686.1 = ashr i32 %add682.1, %cond685
  %mul690.1 = mul nsw i32 %iv.0.lcssa.1, %cond689
  %add692.1 = add nsw i32 %mul690.1, %mul691
  %shr696.1 = ashr i32 %add692.1, %cond695
  br i1 %cmp7151439, label %for.cond718.preheader.lr.ph.1, label %if.end746

for.cond718.preheader.lr.ph.1:                    ; preds = %for.end676.1
  %add712.1 = add nuw nsw i32 %conv623.1, %conv580.1
  %mul713.1 = shl nuw nsw i32 %add712.1, 4
  %add725.1 = add nuw nsw i32 %mul713.1, 16
  br i1 %cmp7191437, label %for.cond718.preheader.us.preheader.1, label %if.end746

for.cond718.preheader.us.preheader.1:             ; preds = %for.cond718.preheader.lr.ph.1
  %wide.trip.count1509.1 = zext nneg i32 %1153 to i64
  %wide.trip.count1503.1 = zext nneg i32 %1152 to i64
  %xtraiter2314 = and i64 %wide.trip.count1503.1, 1
  %1511 = icmp eq i32 %1152, 1
  %unroll_iter2316 = and i64 %wide.trip.count1503.1, 2147483646
  %lcmp.mod2315.not = icmp eq i64 %xtraiter2314, 0
  br label %for.cond718.preheader.us.1

for.cond718.preheader.us.1:                       ; preds = %for.cond718.for.inc740_crit_edge.us.1, %for.cond718.preheader.us.preheader.1
  %indvars.iv1505.1 = phi i64 [ 0, %for.cond718.preheader.us.preheader.1 ], [ %indvars.iv.next1506.1, %for.cond718.for.inc740_crit_edge.us.1 ]
  %1512 = trunc i64 %indvars.iv1505.1 to i32
  %1513 = sub i32 %1512, %shr433
  %add727.us.1 = add i32 %1513, 1
  %mul728.us.1 = mul nsw i32 %add727.us.1, %shr696.1
  %add729.us.1 = add i32 %add725.1, %mul728.us.1
  %arrayidx734.us.1 = getelementptr inbounds ptr, ptr %1316, i64 %indvars.iv1505.1
  br i1 %1511, label %for.cond718.for.inc740_crit_edge.us.1.unr-lcssa, label %for.body721.us.1

for.body721.us.1:                                 ; preds = %for.cond718.preheader.us.1, %for.body721.us.1
  %indvars.iv1499.1 = phi i64 [ %indvars.iv.next1500.1.1, %for.body721.us.1 ], [ 0, %for.cond718.preheader.us.1 ]
  %niter2317 = phi i64 [ %niter2317.next.1, %for.body721.us.1 ], [ 0, %for.cond718.preheader.us.1 ]
  %1514 = trunc i64 %indvars.iv1499.1 to i32
  %1515 = sub i32 %1514, %shr434
  %add723.us.1 = add i32 %1515, 1
  %mul724.us.1 = mul nsw i32 %add723.us.1, %shr686.1
  %add730.us.1 = add i32 %add729.us.1, %mul724.us.1
  %shr731.us.1 = ashr i32 %add730.us.1, 5
  %cond.i.i.us.1 = call range(i32 -67108864, 67108864) i32 @llvm.smax.i32(i32 %shr731.us.1, i32 0)
  %cond.i4.i.us.1 = call noundef i32 @llvm.smin.i32(i32 %cond.i.i.us.1, i32 %1317)
  %conv732.us.1 = trunc i32 %cond.i4.i.us.1 to i16
  %1516 = load ptr, ptr %arrayidx734.us.1, align 8
  %arrayidx736.us.1 = getelementptr inbounds i16, ptr %1516, i64 %indvars.iv1499.1
  store i16 %conv732.us.1, ptr %arrayidx736.us.1, align 2
  %indvars.iv.next1500.1 = or disjoint i64 %indvars.iv1499.1, 1
  %1517 = trunc i64 %indvars.iv.next1500.1 to i32
  %1518 = sub i32 %1517, %shr434
  %add723.us.1.1 = add i32 %1518, 1
  %mul724.us.1.1 = mul nsw i32 %add723.us.1.1, %shr686.1
  %add730.us.1.1 = add i32 %add729.us.1, %mul724.us.1.1
  %shr731.us.1.1 = ashr i32 %add730.us.1.1, 5
  %cond.i.i.us.1.1 = call range(i32 -67108864, 67108864) i32 @llvm.smax.i32(i32 %shr731.us.1.1, i32 0)
  %cond.i4.i.us.1.1 = call noundef i32 @llvm.smin.i32(i32 %cond.i.i.us.1.1, i32 %1317)
  %conv732.us.1.1 = trunc i32 %cond.i4.i.us.1.1 to i16
  %1519 = load ptr, ptr %arrayidx734.us.1, align 8
  %arrayidx736.us.1.1 = getelementptr inbounds i16, ptr %1519, i64 %indvars.iv.next1500.1
  store i16 %conv732.us.1.1, ptr %arrayidx736.us.1.1, align 2
  %indvars.iv.next1500.1.1 = add nuw nsw i64 %indvars.iv1499.1, 2
  %niter2317.next.1 = add i64 %niter2317, 2
  %niter2317.ncmp.1 = icmp eq i64 %niter2317.next.1, %unroll_iter2316
  br i1 %niter2317.ncmp.1, label %for.cond718.for.inc740_crit_edge.us.1.unr-lcssa, label %for.body721.us.1

for.cond718.for.inc740_crit_edge.us.1.unr-lcssa:  ; preds = %for.body721.us.1, %for.cond718.preheader.us.1
  %indvars.iv1499.1.unr = phi i64 [ 0, %for.cond718.preheader.us.1 ], [ %indvars.iv.next1500.1.1, %for.body721.us.1 ]
  br i1 %lcmp.mod2315.not, label %for.cond718.for.inc740_crit_edge.us.1, label %for.body721.us.1.epil

for.body721.us.1.epil:                            ; preds = %for.cond718.for.inc740_crit_edge.us.1.unr-lcssa
  %1520 = trunc i64 %indvars.iv1499.1.unr to i32
  %1521 = sub i32 %1520, %shr434
  %add723.us.1.epil = add i32 %1521, 1
  %mul724.us.1.epil = mul nsw i32 %add723.us.1.epil, %shr686.1
  %add730.us.1.epil = add i32 %add729.us.1, %mul724.us.1.epil
  %shr731.us.1.epil = ashr i32 %add730.us.1.epil, 5
  %cond.i.i.us.1.epil = call range(i32 -67108864, 67108864) i32 @llvm.smax.i32(i32 %shr731.us.1.epil, i32 0)
  %cond.i4.i.us.1.epil = call noundef i32 @llvm.smin.i32(i32 %cond.i.i.us.1.epil, i32 %1317)
  %conv732.us.1.epil = trunc i32 %cond.i4.i.us.1.epil to i16
  %1522 = load ptr, ptr %arrayidx734.us.1, align 8
  %arrayidx736.us.1.epil = getelementptr inbounds i16, ptr %1522, i64 %indvars.iv1499.1.unr
  store i16 %conv732.us.1.epil, ptr %arrayidx736.us.1.epil, align 2
  br label %for.cond718.for.inc740_crit_edge.us.1

for.cond718.for.inc740_crit_edge.us.1:            ; preds = %for.cond718.for.inc740_crit_edge.us.1.unr-lcssa, %for.body721.us.1.epil
  %indvars.iv.next1506.1 = add nuw nsw i64 %indvars.iv1505.1, 1
  %exitcond1510.1.not = icmp eq i64 %indvars.iv.next1506.1, %wide.trip.count1509.1
  br i1 %exitcond1510.1.not, label %if.end746, label %for.cond718.preheader.us.1

for.body596.preheader:                            ; preds = %for.cond555.preheader
  %wide.trip.count1490 = zext nneg i32 %sub593 to i64
  %invariant.gep = getelementptr i16, ptr %arrayidx576, i64 %1295
  %min.iters.check2002 = icmp ult i32 %shr434, 17
  br i1 %min.iters.check2002, label %for.body596.preheader2288, label %vector.ph2003

vector.ph2003:                                    ; preds = %for.body596.preheader
  %n.vec2005 = and i64 %wide.trip.count1490, 2147483632
  %1523 = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %mul591, i64 0
  br label %vector.body2007

vector.body2007:                                  ; preds = %vector.body2007, %vector.ph2003
  %index2008 = phi i64 [ 0, %vector.ph2003 ], [ %index.next2026, %vector.body2007 ]
  %vec.ind = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph2003 ], [ %vec.ind.next, %vector.body2007 ]
  %vec.phi2012 = phi <4 x i32> [ %1523, %vector.ph2003 ], [ %1558, %vector.body2007 ]
  %vec.phi2013 = phi <4 x i32> [ zeroinitializer, %vector.ph2003 ], [ %1559, %vector.body2007 ]
  %vec.phi2014 = phi <4 x i32> [ zeroinitializer, %vector.ph2003 ], [ %1560, %vector.body2007 ]
  %vec.phi2015 = phi <4 x i32> [ zeroinitializer, %vector.ph2003 ], [ %1561, %vector.body2007 ]
  %1524 = getelementptr i16, ptr %invariant.gep, i64 %index2008
  %1525 = getelementptr i8, ptr %1524, i64 8
  %1526 = getelementptr i8, ptr %1524, i64 16
  %1527 = getelementptr i8, ptr %1524, i64 24
  %wide.load = load <4 x i16>, ptr %1524, align 2
  %wide.load2016 = load <4 x i16>, ptr %1525, align 2
  %wide.load2017 = load <4 x i16>, ptr %1526, align 2
  %wide.load2018 = load <4 x i16>, ptr %1527, align 2
  %1528 = zext <4 x i16> %wide.load to <4 x i32>
  %1529 = zext <4 x i16> %wide.load2016 to <4 x i32>
  %1530 = zext <4 x i16> %wide.load2017 to <4 x i32>
  %1531 = zext <4 x i16> %wide.load2018 to <4 x i32>
  %1532 = sub nsw i64 %1296, %index2008
  %1533 = getelementptr inbounds i16, ptr %arrayidx576, i64 %1532
  %1534 = getelementptr inbounds i8, ptr %1533, i64 -6
  %1535 = getelementptr inbounds i8, ptr %1533, i64 -14
  %1536 = getelementptr inbounds i8, ptr %1533, i64 -22
  %1537 = getelementptr inbounds i8, ptr %1533, i64 -30
  %wide.load2019 = load <4 x i16>, ptr %1534, align 2
  %reverse = shufflevector <4 x i16> %wide.load2019, <4 x i16> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %wide.load2020 = load <4 x i16>, ptr %1535, align 2
  %reverse2021 = shufflevector <4 x i16> %wide.load2020, <4 x i16> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %wide.load2022 = load <4 x i16>, ptr %1536, align 2
  %reverse2023 = shufflevector <4 x i16> %wide.load2022, <4 x i16> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %wide.load2024 = load <4 x i16>, ptr %1537, align 2
  %reverse2025 = shufflevector <4 x i16> %wide.load2024, <4 x i16> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %1538 = zext <4 x i16> %reverse to <4 x i32>
  %1539 = zext <4 x i16> %reverse2021 to <4 x i32>
  %1540 = zext <4 x i16> %reverse2023 to <4 x i32>
  %1541 = zext <4 x i16> %reverse2025 to <4 x i32>
  %1542 = sub nsw <4 x i32> %1528, %1538
  %1543 = sub nsw <4 x i32> %1529, %1539
  %1544 = sub nsw <4 x i32> %1530, %1540
  %1545 = sub nsw <4 x i32> %1531, %1541
  %1546 = trunc <4 x i64> %vec.ind to <4 x i32>
  %1547 = add <4 x i32> %1546, <i32 1, i32 1, i32 1, i32 1>
  %1548 = trunc <4 x i64> %vec.ind to <4 x i32>
  %1549 = add <4 x i32> %1548, <i32 5, i32 5, i32 5, i32 5>
  %1550 = trunc <4 x i64> %vec.ind to <4 x i32>
  %1551 = add <4 x i32> %1550, <i32 9, i32 9, i32 9, i32 9>
  %1552 = trunc <4 x i64> %vec.ind to <4 x i32>
  %1553 = add <4 x i32> %1552, <i32 13, i32 13, i32 13, i32 13>
  %1554 = mul nsw <4 x i32> %1542, %1547
  %1555 = mul nsw <4 x i32> %1543, %1549
  %1556 = mul nsw <4 x i32> %1544, %1551
  %1557 = mul nsw <4 x i32> %1545, %1553
  %1558 = add <4 x i32> %1554, %vec.phi2012
  %1559 = add <4 x i32> %1555, %vec.phi2013
  %1560 = add <4 x i32> %1556, %vec.phi2014
  %1561 = add <4 x i32> %1557, %vec.phi2015
  %index.next2026 = add nuw i64 %index2008, 16
  %vec.ind.next = add <4 x i64> %vec.ind, <i64 16, i64 16, i64 16, i64 16>
  %1562 = icmp eq i64 %index.next2026, %n.vec2005
  br i1 %1562, label %middle.block2000, label %vector.body2007, !llvm.loop !31

middle.block2000:                                 ; preds = %vector.body2007
  %bin.rdx2027 = add <4 x i32> %1559, %1558
  %bin.rdx2028 = add <4 x i32> %1560, %bin.rdx2027
  %bin.rdx2029 = add <4 x i32> %1561, %bin.rdx2028
  %1563 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx2029)
  %cmp.n2030 = icmp eq i64 %n.vec2005, %wide.trip.count1490
  br i1 %cmp.n2030, label %for.end612, label %for.body596.preheader2288

for.body596.preheader2288:                        ; preds = %middle.block2000, %for.body596.preheader
  %indvars.iv1485.ph = phi i64 [ 0, %for.body596.preheader ], [ %n.vec2005, %middle.block2000 ]
  %ih.01430.ph = phi i32 [ %mul591, %for.body596.preheader ], [ %1563, %middle.block2000 ]
  br label %for.body596

for.body596:                                      ; preds = %for.body596.preheader2288, %for.body596
  %indvars.iv1485 = phi i64 [ %indvars.iv.next1486, %for.body596 ], [ %indvars.iv1485.ph, %for.body596.preheader2288 ]
  %ih.01430 = phi i32 [ %add609, %for.body596 ], [ %ih.01430.ph, %for.body596.preheader2288 ]
  %indvars.iv.next1486 = add nuw nsw i64 %indvars.iv1485, 1
  %gep = getelementptr i16, ptr %invariant.gep, i64 %indvars.iv1485
  %1564 = load i16, ptr %gep, align 2
  %conv601 = zext i16 %1564 to i32
  %1565 = sub nsw i64 %1296, %indvars.iv1485
  %arrayidx605 = getelementptr inbounds i16, ptr %arrayidx576, i64 %1565
  %1566 = load i16, ptr %arrayidx605, align 2
  %conv606 = zext i16 %1566 to i32
  %sub607 = sub nsw i32 %conv601, %conv606
  %1567 = trunc nuw nsw i64 %indvars.iv.next1486 to i32
  %mul608 = mul nsw i32 %sub607, %1567
  %add609 = add nsw i32 %mul608, %ih.01430
  %exitcond1491.not = icmp eq i64 %indvars.iv.next1486, %wide.trip.count1490
  br i1 %exitcond1491.not, label %for.end612, label %for.body596, !llvm.loop !32

for.end612:                                       ; preds = %for.body596, %middle.block2000, %for.cond555.preheader
  %ih.0.lcssa = phi i32 [ %mul591, %for.cond555.preheader ], [ %1563, %middle.block2000 ], [ %add609, %for.body596 ]
  %1568 = load i16, ptr %pos_y615, align 2
  %idxprom616 = sext i16 %1568 to i64
  %arrayidx617 = getelementptr inbounds ptr, ptr %1300, i64 %idxprom616
  %1569 = load ptr, ptr %arrayidx617, align 8
  %1570 = load i16, ptr %pos_x620, align 4
  %idxprom621 = sext i16 %1570 to i64
  %arrayidx622 = getelementptr inbounds i16, ptr %1569, i64 %idxprom621
  %1571 = load i16, ptr %arrayidx622, align 2
  %conv623 = zext i16 %1571 to i32
  %sub633 = sub nsw i32 %conv623, %conv589
  %mul634 = mul nsw i32 %sub633, %shr433
  br i1 %cmp6371433, label %for.body639.preheader, label %for.end676

for.body639.preheader:                            ; preds = %for.end612
  %wide.trip.count1497 = zext i32 %sub636 to i64
  %min.iters.check2034 = icmp ult i32 %shr433, 5
  br i1 %min.iters.check2034, label %for.body639.preheader2283, label %vector.ph2035

vector.ph2035:                                    ; preds = %for.body639.preheader
  %n.vec2037 = and i64 %wide.trip.count1497, 4294967292
  br label %vector.body2039

vector.body2039:                                  ; preds = %vector.body2039, %vector.ph2035
  %index2040 = phi i64 [ 0, %vector.ph2035 ], [ %index.next2045, %vector.body2039 ]
  %vec.phi2041 = phi i32 [ %mul634, %vector.ph2035 ], [ %1695, %vector.body2039 ]
  %vec.phi2042 = phi i32 [ 0, %vector.ph2035 ], [ %1696, %vector.body2039 ]
  %vec.phi2043 = phi i32 [ 0, %vector.ph2035 ], [ %1697, %vector.body2039 ]
  %vec.phi2044 = phi i32 [ 0, %vector.ph2035 ], [ %1698, %vector.body2039 ]
  %1572 = or disjoint i64 %index2040, 1
  %1573 = or disjoint i64 %index2040, 2
  %1574 = or disjoint i64 %index2040, 3
  %1575 = add nuw nsw i64 %index2040, %1297
  %1576 = add nuw nsw i64 %1572, %1297
  %1577 = add nuw nsw i64 %1573, %1297
  %1578 = add nuw nsw i64 %1574, %1297
  %1579 = getelementptr inbounds [17 x %struct.pix_pos], ptr %left424, i64 0, i64 %1575
  %1580 = getelementptr inbounds [17 x %struct.pix_pos], ptr %left424, i64 0, i64 %1576
  %1581 = getelementptr inbounds [17 x %struct.pix_pos], ptr %left424, i64 0, i64 %1577
  %1582 = getelementptr inbounds [17 x %struct.pix_pos], ptr %left424, i64 0, i64 %1578
  %1583 = getelementptr inbounds i8, ptr %1579, i64 14
  %1584 = getelementptr inbounds i8, ptr %1580, i64 14
  %1585 = getelementptr inbounds i8, ptr %1581, i64 14
  %1586 = getelementptr inbounds i8, ptr %1582, i64 14
  %1587 = load i16, ptr %1583, align 2
  %1588 = load i16, ptr %1584, align 2
  %1589 = load i16, ptr %1585, align 2
  %1590 = load i16, ptr %1586, align 2
  %1591 = sext i16 %1587 to i64
  %1592 = sext i16 %1588 to i64
  %1593 = sext i16 %1589 to i64
  %1594 = sext i16 %1590 to i64
  %1595 = getelementptr inbounds ptr, ptr %1300, i64 %1591
  %1596 = getelementptr inbounds ptr, ptr %1300, i64 %1592
  %1597 = getelementptr inbounds ptr, ptr %1300, i64 %1593
  %1598 = getelementptr inbounds ptr, ptr %1300, i64 %1594
  %1599 = load ptr, ptr %1595, align 8
  %1600 = load ptr, ptr %1596, align 8
  %1601 = load ptr, ptr %1597, align 8
  %1602 = load ptr, ptr %1598, align 8
  %1603 = getelementptr inbounds i8, ptr %1579, i64 12
  %1604 = getelementptr inbounds i8, ptr %1580, i64 12
  %1605 = getelementptr inbounds i8, ptr %1581, i64 12
  %1606 = getelementptr inbounds i8, ptr %1582, i64 12
  %1607 = load i16, ptr %1603, align 4
  %1608 = load i16, ptr %1604, align 4
  %1609 = load i16, ptr %1605, align 4
  %1610 = load i16, ptr %1606, align 4
  %1611 = sext i16 %1607 to i64
  %1612 = sext i16 %1608 to i64
  %1613 = sext i16 %1609 to i64
  %1614 = sext i16 %1610 to i64
  %1615 = getelementptr inbounds i16, ptr %1599, i64 %1611
  %1616 = getelementptr inbounds i16, ptr %1600, i64 %1612
  %1617 = getelementptr inbounds i16, ptr %1601, i64 %1613
  %1618 = getelementptr inbounds i16, ptr %1602, i64 %1614
  %1619 = load i16, ptr %1615, align 2
  %1620 = load i16, ptr %1616, align 2
  %1621 = load i16, ptr %1617, align 2
  %1622 = load i16, ptr %1618, align 2
  %1623 = zext i16 %1619 to i32
  %1624 = zext i16 %1620 to i32
  %1625 = zext i16 %1621 to i32
  %1626 = zext i16 %1622 to i32
  %1627 = sub nsw i64 %1298, %index2040
  %1628 = sub nsw i64 %1298, %1572
  %1629 = sub nsw i64 %1298, %1573
  %1630 = sub nsw i64 %1298, %1574
  %1631 = getelementptr inbounds [17 x %struct.pix_pos], ptr %left424, i64 0, i64 %1627
  %1632 = getelementptr inbounds [17 x %struct.pix_pos], ptr %left424, i64 0, i64 %1628
  %1633 = getelementptr inbounds [17 x %struct.pix_pos], ptr %left424, i64 0, i64 %1629
  %1634 = getelementptr inbounds [17 x %struct.pix_pos], ptr %left424, i64 0, i64 %1630
  %1635 = getelementptr inbounds i8, ptr %1631, i64 14
  %1636 = getelementptr inbounds i8, ptr %1632, i64 14
  %1637 = getelementptr inbounds i8, ptr %1633, i64 14
  %1638 = getelementptr inbounds i8, ptr %1634, i64 14
  %1639 = load i16, ptr %1635, align 2
  %1640 = load i16, ptr %1636, align 2
  %1641 = load i16, ptr %1637, align 2
  %1642 = load i16, ptr %1638, align 2
  %1643 = sext i16 %1639 to i64
  %1644 = sext i16 %1640 to i64
  %1645 = sext i16 %1641 to i64
  %1646 = sext i16 %1642 to i64
  %1647 = getelementptr inbounds ptr, ptr %1300, i64 %1643
  %1648 = getelementptr inbounds ptr, ptr %1300, i64 %1644
  %1649 = getelementptr inbounds ptr, ptr %1300, i64 %1645
  %1650 = getelementptr inbounds ptr, ptr %1300, i64 %1646
  %1651 = load ptr, ptr %1647, align 8
  %1652 = load ptr, ptr %1648, align 8
  %1653 = load ptr, ptr %1649, align 8
  %1654 = load ptr, ptr %1650, align 8
  %1655 = getelementptr inbounds i8, ptr %1631, i64 12
  %1656 = getelementptr inbounds i8, ptr %1632, i64 12
  %1657 = getelementptr inbounds i8, ptr %1633, i64 12
  %1658 = getelementptr inbounds i8, ptr %1634, i64 12
  %1659 = load i16, ptr %1655, align 4
  %1660 = load i16, ptr %1656, align 4
  %1661 = load i16, ptr %1657, align 4
  %1662 = load i16, ptr %1658, align 4
  %1663 = sext i16 %1659 to i64
  %1664 = sext i16 %1660 to i64
  %1665 = sext i16 %1661 to i64
  %1666 = sext i16 %1662 to i64
  %1667 = getelementptr inbounds i16, ptr %1651, i64 %1663
  %1668 = getelementptr inbounds i16, ptr %1652, i64 %1664
  %1669 = getelementptr inbounds i16, ptr %1653, i64 %1665
  %1670 = getelementptr inbounds i16, ptr %1654, i64 %1666
  %1671 = load i16, ptr %1667, align 2
  %1672 = load i16, ptr %1668, align 2
  %1673 = load i16, ptr %1669, align 2
  %1674 = load i16, ptr %1670, align 2
  %1675 = zext i16 %1671 to i32
  %1676 = zext i16 %1672 to i32
  %1677 = zext i16 %1673 to i32
  %1678 = zext i16 %1674 to i32
  %1679 = sub nsw i32 %1623, %1675
  %1680 = sub nsw i32 %1624, %1676
  %1681 = sub nsw i32 %1625, %1677
  %1682 = sub nsw i32 %1626, %1678
  %1683 = trunc i64 %index2040 to i32
  %1684 = or disjoint i32 %1683, 1
  %1685 = trunc i64 %index2040 to i32
  %1686 = or disjoint i32 %1685, 2
  %1687 = trunc i64 %index2040 to i32
  %1688 = or disjoint i32 %1687, 3
  %1689 = trunc i64 %index2040 to i32
  %1690 = add i32 %1689, 4
  %1691 = mul nsw i32 %1679, %1684
  %1692 = mul nsw i32 %1680, %1686
  %1693 = mul nsw i32 %1681, %1688
  %1694 = mul nsw i32 %1682, %1690
  %1695 = add i32 %1691, %vec.phi2041
  %1696 = add i32 %1692, %vec.phi2042
  %1697 = add i32 %1693, %vec.phi2043
  %1698 = add i32 %1694, %vec.phi2044
  %index.next2045 = add nuw i64 %index2040, 4
  %1699 = icmp eq i64 %index.next2045, %n.vec2037
  br i1 %1699, label %middle.block2032, label %vector.body2039, !llvm.loop !33

middle.block2032:                                 ; preds = %vector.body2039
  %bin.rdx2046 = add i32 %1696, %1695
  %bin.rdx2047 = add i32 %1697, %bin.rdx2046
  %bin.rdx2048 = add i32 %1698, %bin.rdx2047
  %cmp.n2049 = icmp eq i64 %n.vec2037, %wide.trip.count1497
  br i1 %cmp.n2049, label %for.end676, label %for.body639.preheader2283

for.body639.preheader2283:                        ; preds = %middle.block2032, %for.body639.preheader
  %indvars.iv1492.ph = phi i64 [ 0, %for.body639.preheader ], [ %n.vec2037, %middle.block2032 ]
  %iv.01434.ph = phi i32 [ %mul634, %for.body639.preheader ], [ %bin.rdx2048, %middle.block2032 ]
  br label %for.body639

for.body639:                                      ; preds = %for.body639.preheader2283, %for.body639
  %indvars.iv1492 = phi i64 [ %indvars.iv.next1493, %for.body639 ], [ %indvars.iv1492.ph, %for.body639.preheader2283 ]
  %iv.01434 = phi i32 [ %add673, %for.body639 ], [ %iv.01434.ph, %for.body639.preheader2283 ]
  %indvars.iv.next1493 = add nuw nsw i64 %indvars.iv1492, 1
  %1700 = add nuw nsw i64 %indvars.iv1492, %1297
  %arrayidx644 = getelementptr inbounds [17 x %struct.pix_pos], ptr %left424, i64 0, i64 %1700
  %pos_y645 = getelementptr inbounds i8, ptr %arrayidx644, i64 14
  %1701 = load i16, ptr %pos_y645, align 2
  %idxprom646 = sext i16 %1701 to i64
  %arrayidx647 = getelementptr inbounds ptr, ptr %1300, i64 %idxprom646
  %1702 = load ptr, ptr %arrayidx647, align 8
  %pos_x652 = getelementptr inbounds i8, ptr %arrayidx644, i64 12
  %1703 = load i16, ptr %pos_x652, align 4
  %idxprom653 = sext i16 %1703 to i64
  %arrayidx654 = getelementptr inbounds i16, ptr %1702, i64 %idxprom653
  %1704 = load i16, ptr %arrayidx654, align 2
  %conv655 = zext i16 %1704 to i32
  %1705 = sub nsw i64 %1298, %indvars.iv1492
  %arrayidx659 = getelementptr inbounds [17 x %struct.pix_pos], ptr %left424, i64 0, i64 %1705
  %pos_y660 = getelementptr inbounds i8, ptr %arrayidx659, i64 14
  %1706 = load i16, ptr %pos_y660, align 2
  %idxprom661 = sext i16 %1706 to i64
  %arrayidx662 = getelementptr inbounds ptr, ptr %1300, i64 %idxprom661
  %1707 = load ptr, ptr %arrayidx662, align 8
  %pos_x667 = getelementptr inbounds i8, ptr %arrayidx659, i64 12
  %1708 = load i16, ptr %pos_x667, align 4
  %idxprom668 = sext i16 %1708 to i64
  %arrayidx669 = getelementptr inbounds i16, ptr %1707, i64 %idxprom668
  %1709 = load i16, ptr %arrayidx669, align 2
  %conv670 = zext i16 %1709 to i32
  %sub671 = sub nsw i32 %conv655, %conv670
  %1710 = trunc nuw nsw i64 %indvars.iv.next1493 to i32
  %mul672 = mul nsw i32 %sub671, %1710
  %add673 = add nsw i32 %mul672, %iv.01434
  %exitcond1498.not = icmp eq i64 %indvars.iv.next1493, %wide.trip.count1497
  br i1 %exitcond1498.not, label %for.end676, label %for.body639, !llvm.loop !34

for.end676:                                       ; preds = %for.body639, %middle.block2032, %for.end612
  %iv.0.lcssa = phi i32 [ %mul634, %for.end612 ], [ %bin.rdx2048, %middle.block2032 ], [ %add673, %for.body639 ]
  %mul680 = mul nsw i32 %ih.0.lcssa, %cond679
  %add682 = add nsw i32 %mul680, %mul681
  %shr686 = ashr i32 %add682, %cond685
  %mul690 = mul nsw i32 %iv.0.lcssa, %cond689
  %add692 = add nsw i32 %mul690, %mul691
  %shr696 = ashr i32 %add692, %cond695
  br i1 %cmp7151439, label %for.cond718.preheader.lr.ph, label %for.cond555.loopexit

for.cond718.preheader.lr.ph:                      ; preds = %for.end676
  %add712 = add nuw nsw i32 %conv623, %conv580
  %mul713 = shl nuw nsw i32 %add712, 4
  %add725 = add nuw nsw i32 %mul713, 16
  br i1 %cmp7191437, label %for.cond718.preheader.us.preheader, label %for.cond555.loopexit

for.cond718.preheader.us.preheader:               ; preds = %for.cond718.preheader.lr.ph
  %wide.trip.count1509 = zext nneg i32 %1153 to i64
  %wide.trip.count1503 = zext nneg i32 %1152 to i64
  %xtraiter2301 = and i64 %wide.trip.count1503, 1
  %1711 = icmp eq i32 %1152, 1
  %unroll_iter = and i64 %wide.trip.count1503, 2147483646
  %lcmp.mod2302.not = icmp eq i64 %xtraiter2301, 0
  br label %for.cond718.preheader.us

for.cond718.preheader.us:                         ; preds = %for.cond718.preheader.us.preheader, %for.cond718.for.inc740_crit_edge.us
  %indvars.iv1505 = phi i64 [ 0, %for.cond718.preheader.us.preheader ], [ %indvars.iv.next1506, %for.cond718.for.inc740_crit_edge.us ]
  %1712 = trunc i64 %indvars.iv1505 to i32
  %1713 = sub i32 %1712, %shr433
  %add727.us = add i32 %1713, 1
  %mul728.us = mul nsw i32 %add727.us, %shr696
  %add729.us = add i32 %add725, %mul728.us
  %arrayidx734.us = getelementptr inbounds ptr, ptr %1302, i64 %indvars.iv1505
  br i1 %1711, label %for.cond718.for.inc740_crit_edge.us.unr-lcssa, label %for.body721.us

for.body721.us:                                   ; preds = %for.cond718.preheader.us, %for.body721.us
  %indvars.iv1499 = phi i64 [ %indvars.iv.next1500.12312, %for.body721.us ], [ 0, %for.cond718.preheader.us ]
  %niter = phi i64 [ %niter.next.1, %for.body721.us ], [ 0, %for.cond718.preheader.us ]
  %1714 = trunc i64 %indvars.iv1499 to i32
  %1715 = sub i32 %1714, %shr434
  %add723.us = add i32 %1715, 1
  %mul724.us = mul nsw i32 %add723.us, %shr686
  %add730.us = add i32 %add729.us, %mul724.us
  %shr731.us = ashr i32 %add730.us, 5
  %cond.i.i.us = call range(i32 -67108864, 67108864) i32 @llvm.smax.i32(i32 %shr731.us, i32 0)
  %cond.i4.i.us = call noundef i32 @llvm.smin.i32(i32 %cond.i.i.us, i32 %1303)
  %conv732.us = trunc i32 %cond.i4.i.us to i16
  %1716 = load ptr, ptr %arrayidx734.us, align 8
  %arrayidx736.us = getelementptr inbounds i16, ptr %1716, i64 %indvars.iv1499
  store i16 %conv732.us, ptr %arrayidx736.us, align 2
  %indvars.iv.next1500 = or disjoint i64 %indvars.iv1499, 1
  %1717 = trunc i64 %indvars.iv.next1500 to i32
  %1718 = sub i32 %1717, %shr434
  %add723.us.12304 = add i32 %1718, 1
  %mul724.us.12305 = mul nsw i32 %add723.us.12304, %shr686
  %add730.us.12306 = add i32 %add729.us, %mul724.us.12305
  %shr731.us.12307 = ashr i32 %add730.us.12306, 5
  %cond.i.i.us.12308 = call range(i32 -67108864, 67108864) i32 @llvm.smax.i32(i32 %shr731.us.12307, i32 0)
  %cond.i4.i.us.12309 = call noundef i32 @llvm.smin.i32(i32 %cond.i.i.us.12308, i32 %1303)
  %conv732.us.12310 = trunc i32 %cond.i4.i.us.12309 to i16
  %1719 = load ptr, ptr %arrayidx734.us, align 8
  %arrayidx736.us.12311 = getelementptr inbounds i16, ptr %1719, i64 %indvars.iv.next1500
  store i16 %conv732.us.12310, ptr %arrayidx736.us.12311, align 2
  %indvars.iv.next1500.12312 = add nuw nsw i64 %indvars.iv1499, 2
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %for.cond718.for.inc740_crit_edge.us.unr-lcssa, label %for.body721.us

for.cond718.for.inc740_crit_edge.us.unr-lcssa:    ; preds = %for.body721.us, %for.cond718.preheader.us
  %indvars.iv1499.unr = phi i64 [ 0, %for.cond718.preheader.us ], [ %indvars.iv.next1500.12312, %for.body721.us ]
  br i1 %lcmp.mod2302.not, label %for.cond718.for.inc740_crit_edge.us, label %for.body721.us.epil

for.body721.us.epil:                              ; preds = %for.cond718.for.inc740_crit_edge.us.unr-lcssa
  %1720 = trunc i64 %indvars.iv1499.unr to i32
  %1721 = sub i32 %1720, %shr434
  %add723.us.epil = add i32 %1721, 1
  %mul724.us.epil = mul nsw i32 %add723.us.epil, %shr686
  %add730.us.epil = add i32 %add729.us, %mul724.us.epil
  %shr731.us.epil = ashr i32 %add730.us.epil, 5
  %cond.i.i.us.epil = call range(i32 -67108864, 67108864) i32 @llvm.smax.i32(i32 %shr731.us.epil, i32 0)
  %cond.i4.i.us.epil = call noundef i32 @llvm.smin.i32(i32 %cond.i.i.us.epil, i32 %1303)
  %conv732.us.epil = trunc i32 %cond.i4.i.us.epil to i16
  %1722 = load ptr, ptr %arrayidx734.us, align 8
  %arrayidx736.us.epil = getelementptr inbounds i16, ptr %1722, i64 %indvars.iv1499.unr
  store i16 %conv732.us.epil, ptr %arrayidx736.us.epil, align 2
  br label %for.cond718.for.inc740_crit_edge.us

for.cond718.for.inc740_crit_edge.us:              ; preds = %for.cond718.for.inc740_crit_edge.us.unr-lcssa, %for.body721.us.epil
  %indvars.iv.next1506 = add nuw nsw i64 %indvars.iv1505, 1
  %exitcond1510.not = icmp eq i64 %indvars.iv.next1506, %wide.trip.count1509
  br i1 %exitcond1510.not, label %for.cond555.loopexit.loopexit, label %for.cond718.preheader.us

if.end746:                                        ; preds = %for.cond718.for.inc740_crit_edge.us.1, %for.end676.1, %for.cond718.preheader.lr.ph.1, %if.then553
  call void @llvm.lifetime.end.p0(i64 272, ptr nonnull %left424) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %up423) #5
  br label %sw.epilog747

sw.default:                                       ; preds = %entry
  tail call void @error(ptr noundef nonnull @.str.1, i32 noundef 600) #5
  br label %sw.epilog747

sw.epilog747:                                     ; preds = %sw.default, %if.end746, %if.end421, %if.end349, %for.end182
  ret void
}

declare void @getNonAffNeighbour(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #4

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
!5 = distinct !{!5, !6, !7}
!6 = !{!"llvm.loop.isvectorized", i32 1}
!7 = !{!"llvm.loop.unroll.runtime.disable"}
!8 = distinct !{!8, !7, !6}
!9 = distinct !{!9, !6, !7}
!10 = distinct !{!10, !6}
!11 = distinct !{!11, !6, !7}
!12 = distinct !{!12, !7, !6}
!13 = distinct !{!13, !6, !7}
!14 = distinct !{!14, !6}
!15 = distinct !{!15, !6, !7}
!16 = distinct !{!16, !6, !7}
!17 = distinct !{!17, !6}
!18 = distinct !{!18, !6}
!19 = distinct !{!19, !6, !7}
!20 = distinct !{!20, !6, !7}
!21 = distinct !{!21, !6}
!22 = distinct !{!22, !6}
!23 = distinct !{!23, !6, !7}
!24 = distinct !{!24, !6, !7}
!25 = distinct !{!25, !6}
!26 = distinct !{!26, !6}
!27 = distinct !{!27, !6, !7}
!28 = distinct !{!28, !7, !6}
!29 = distinct !{!29, !6, !7}
!30 = distinct !{!30, !6}
!31 = distinct !{!31, !6, !7}
!32 = distinct !{!32, !7, !6}
!33 = distinct !{!33, !6, !7}
!34 = distinct !{!34, !6}
