; ModuleID = 'ldecod_src/mc_prediction.c'
source_filename = "ldecod_src/mc_prediction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pix_pos = type { i32, i32, i16, i16, i16, i16 }
%struct.pic_motion_params = type { [2 x ptr], [2 x %struct.MotionVector], [2 x i8] }
%struct.MotionVector = type { i16, i16 }
%struct.macroblock = type { ptr, ptr, ptr, i32, %struct.BlockPos, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], [3 x i32], i32, i32, i32, i32, i16, i8, i8, i16, i16, ptr, ptr, ptr, ptr, i16, [2 x [4 x [4 x [2 x i16]]]], i32, [3 x i64], [3 x i64], [3 x i64], i32, [4 x i8], [4 x i8], i8, i8, i8, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.BlockPos = type { i16, i16 }

@subblk_offset_y = internal unnamed_addr constant [3 x [8 x [4 x i8]]] [[8 x [4 x i8]] [[4 x i8] c"\00\00\04\04", [4 x i8] c"\00\00\04\04", [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer], [8 x [4 x i8]] [[4 x i8] c"\00\00\04\04", [4 x i8] c"\08\08\0C\0C", [4 x i8] c"\00\00\04\04", [4 x i8] c"\08\08\0C\0C", [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer], [8 x [4 x i8]] [[4 x i8] c"\00\00\04\04", [4 x i8] c"\00\00\04\04", [4 x i8] c"\08\08\0C\0C", [4 x i8] c"\08\08\0C\0C", [4 x i8] c"\00\00\04\04", [4 x i8] c"\00\00\04\04", [4 x i8] c"\08\08\0C\0C", [4 x i8] c"\08\08\0C\0C"]], align 16
@subblk_offset_x = internal unnamed_addr constant [3 x [8 x [4 x i8]]] [[8 x [4 x i8]] [[4 x i8] c"\00\04\00\04", [4 x i8] c"\00\04\00\04", [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer], [8 x [4 x i8]] [[4 x i8] c"\00\04\00\04", [4 x i8] c"\00\04\00\04", [4 x i8] c"\00\04\00\04", [4 x i8] c"\00\04\00\04", [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer], [8 x [4 x i8]] [[4 x i8] c"\00\04\00\04", [4 x i8] c"\08\0C\08\0C", [4 x i8] c"\00\04\00\04", [4 x i8] c"\08\0C\08\0C", [4 x i8] c"\00\04\00\04", [4 x i8] c"\08\0C\08\0C", [4 x i8] c"\00\04\00\04", [4 x i8] c"\08\0C\08\0C"]], align 16
@stderr = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [105 x i8] c"WARNING! Horizontal motion vector %d is out of allowed range {-8192, 8191} in picture %d, macroblock %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [98 x i8] c"WARNING! Vertical motion vector %d is out of allowed range {%d, %d} in picture %d, macroblock %d\0A\00", align 1
@str.3 = private unnamed_addr constant [62 x i8] c"list[ref_frame] is equal to 'no reference picture' before RAP\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @allocate_pred_mem(ptr noundef %currSlice) local_unnamed_addr #0 {
entry:
  %tmp_block_l0 = getelementptr inbounds i8, ptr %currSlice, i64 1352
  %call = tail call i32 @get_mem2Dpel(ptr noundef nonnull %tmp_block_l0, i32 noundef 16, i32 noundef 16) #10
  %tmp_block_l1 = getelementptr inbounds i8, ptr %currSlice, i64 1360
  %call1 = tail call i32 @get_mem2Dpel(ptr noundef nonnull %tmp_block_l1, i32 noundef 16, i32 noundef 16) #10
  %add2 = add nsw i32 %call1, %call
  %tmp_block_l2 = getelementptr inbounds i8, ptr %currSlice, i64 1376
  %call3 = tail call i32 @get_mem2Dpel(ptr noundef nonnull %tmp_block_l2, i32 noundef 16, i32 noundef 16) #10
  %add4 = add nsw i32 %add2, %call3
  %tmp_block_l3 = getelementptr inbounds i8, ptr %currSlice, i64 1384
  %call5 = tail call i32 @get_mem2Dpel(ptr noundef nonnull %tmp_block_l3, i32 noundef 16, i32 noundef 16) #10
  %add6 = add nsw i32 %add4, %call5
  %tmp_res = getelementptr inbounds i8, ptr %currSlice, i64 1368
  %call7 = tail call i32 @get_mem2Dint(ptr noundef nonnull %tmp_res, i32 noundef 21, i32 noundef 21) #10
  %add8 = add nsw i32 %add6, %call7
  ret i32 %add8
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @get_mem2Dpel(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @get_mem2Dint(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @free_pred_mem(ptr nocapture noundef readonly %currSlice) local_unnamed_addr #0 {
entry:
  %tmp_res = getelementptr inbounds i8, ptr %currSlice, i64 1368
  %0 = load ptr, ptr %tmp_res, align 8
  tail call void @free_mem2Dint(ptr noundef %0) #10
  %tmp_block_l0 = getelementptr inbounds i8, ptr %currSlice, i64 1352
  %1 = load ptr, ptr %tmp_block_l0, align 8
  tail call void @free_mem2Dpel(ptr noundef %1) #10
  %tmp_block_l1 = getelementptr inbounds i8, ptr %currSlice, i64 1360
  %2 = load ptr, ptr %tmp_block_l1, align 8
  tail call void @free_mem2Dpel(ptr noundef %2) #10
  %tmp_block_l2 = getelementptr inbounds i8, ptr %currSlice, i64 1376
  %3 = load ptr, ptr %tmp_block_l2, align 8
  tail call void @free_mem2Dpel(ptr noundef %3) #10
  %tmp_block_l3 = getelementptr inbounds i8, ptr %currSlice, i64 1384
  %4 = load ptr, ptr %tmp_block_l3, align 8
  tail call void @free_mem2Dpel(ptr noundef %4) #10
  ret void
}

declare void @free_mem2Dint(ptr noundef) local_unnamed_addr #2

declare void @free_mem2Dpel(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind uwtable
define dso_local void @get_block_luma(ptr nocapture noundef readonly %curr_ref, i32 noundef %x_pos, i32 noundef %y_pos, i32 noundef %hor_block_size, i32 noundef %ver_block_size, ptr nocapture noundef readonly %block, i32 noundef %shift_x, i32 noundef %maxold_x, i32 noundef %maxold_y, ptr nocapture noundef readonly %tmp_res, i32 noundef %max_imgpel_value, i16 noundef zeroext %no_ref_value, ptr nocapture noundef readonly %currMB) local_unnamed_addr #3 {
entry:
  %no_ref = getelementptr inbounds i8, ptr %curr_ref, i64 384
  %0 = load i32, ptr %no_ref, align 8
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.3)
  %1 = load ptr, ptr %block, align 8
  %2 = trunc i16 %no_ref_value to i8
  %mul = mul nsw i32 %ver_block_size, %hor_block_size
  %conv1 = sext i32 %mul to i64
  %mul2 = shl nsw i64 %conv1, 1
  tail call void @llvm.memset.p0.i64(ptr align 2 %1, i8 %2, i64 %mul2, i1 false)
  br label %if.end127

if.else:                                          ; preds = %entry
  %p_Vid = getelementptr inbounds i8, ptr %currMB, i64 8
  %3 = load ptr, ptr %p_Vid, align 8
  %separate_colour_plane_flag = getelementptr inbounds i8, ptr %3, i64 849280
  %4 = load i32, ptr %separate_colour_plane_flag, align 8
  %tobool3.not = icmp eq i32 %4, 0
  br i1 %tobool3.not, label %cond.false, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.else
  %5 = load ptr, ptr %currMB, align 8
  %colour_plane_id = getelementptr inbounds i8, ptr %5, i64 216
  %6 = load i32, ptr %colour_plane_id, align 8
  %cmp = icmp sgt i32 %6, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %imgUV = getelementptr inbounds i8, ptr %curr_ref, i64 136
  %7 = load ptr, ptr %imgUV, align 8
  %8 = zext nneg i32 %6 to i64
  %9 = getelementptr ptr, ptr %7, i64 %8
  %arrayidx7 = getelementptr i8, ptr %9, i64 -8
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %if.else
  %cur_imgY8 = getelementptr inbounds i8, ptr %curr_ref, i64 376
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.in = phi ptr [ %arrayidx7, %cond.true ], [ %cur_imgY8, %cond.false ]
  %cond = load ptr, ptr %cond.in, align 8
  %and = and i32 %x_pos, 3
  %and9 = and i32 %y_pos, 3
  %shr = ashr i32 %x_pos, 2
  %shr10 = ashr i32 %y_pos, 2
  %add = add nsw i32 %maxold_x, 2
  %cond.i.i = tail call noundef i32 @llvm.smax.i32(i32 %shr, i32 -18)
  %cond.i4.i = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i, i32 %add)
  %add12 = add nsw i32 %maxold_y, 2
  %cond.i.i271 = tail call noundef i32 @llvm.smax.i32(i32 %shr10, i32 -10)
  %cond.i4.i272 = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i271, i32 %add12)
  %10 = or i32 %y_pos, %x_pos
  %11 = and i32 %10, 3
  %or.cond = icmp eq i32 %11, 0
  br i1 %or.cond, label %if.then19, label %if.else26

if.then19:                                        ; preds = %cond.end
  %cmp13.i = icmp sgt i32 %ver_block_size, 0
  br i1 %cmp13.i, label %for.body.lr.ph.i, label %if.end127

for.body.lr.ph.i:                                 ; preds = %if.then19
  %iLumaStride = getelementptr inbounds i8, ptr %curr_ref, i64 356
  %12 = load i32, ptr %iLumaStride, align 4
  %idxprom22 = sext i32 %cond.i4.i272 to i64
  %arrayidx23 = getelementptr inbounds ptr, ptr %cond, i64 %idxprom22
  %13 = load ptr, ptr %arrayidx23, align 8
  %idxprom24 = sext i32 %cond.i4.i to i64
  %arrayidx25 = getelementptr inbounds i16, ptr %13, i64 %idxprom24
  %14 = load ptr, ptr %block, align 8
  %idx.ext.i = sext i32 %12 to i64
  %15 = add nsw i32 %ver_block_size, -1
  %16 = icmp ult i32 %ver_block_size, 3
  br i1 %16, label %if.end127.loopexit.unr-lcssa, label %for.body.lr.ph.i.new

for.body.lr.ph.i.new:                             ; preds = %for.body.lr.ph.i
  %17 = lshr i32 %15, 1
  %18 = add nuw i32 %17, 1
  %unroll_iter = and i32 %18, -2
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %for.body.lr.ph.i.new
  %block.addr.015.i = phi ptr [ %14, %for.body.lr.ph.i.new ], [ %add.ptr2.i.1, %for.body.i ]
  %cur_img.addr.014.i = phi ptr [ %arrayidx25, %for.body.lr.ph.i.new ], [ %add.ptr4.i.1, %for.body.i ]
  %niter = phi i32 [ 0, %for.body.lr.ph.i.new ], [ %niter.next.1, %for.body.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %block.addr.015.i, ptr noundef nonnull align 2 dereferenceable(32) %cur_img.addr.014.i, i64 32, i1 false)
  %add.ptr.i = getelementptr inbounds i8, ptr %block.addr.015.i, i64 32
  %add.ptr1.i = getelementptr inbounds i16, ptr %cur_img.addr.014.i, i64 %idx.ext.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %add.ptr.i, ptr noundef nonnull align 2 dereferenceable(32) %add.ptr1.i, i64 32, i1 false)
  %add.ptr2.i = getelementptr inbounds i8, ptr %block.addr.015.i, i64 64
  %add.ptr4.i = getelementptr inbounds i16, ptr %add.ptr1.i, i64 %idx.ext.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %add.ptr2.i, ptr noundef nonnull align 2 dereferenceable(32) %add.ptr4.i, i64 32, i1 false)
  %add.ptr.i.1 = getelementptr inbounds i8, ptr %block.addr.015.i, i64 96
  %add.ptr1.i.1 = getelementptr inbounds i16, ptr %add.ptr4.i, i64 %idx.ext.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %add.ptr.i.1, ptr noundef nonnull align 2 dereferenceable(32) %add.ptr1.i.1, i64 32, i1 false)
  %add.ptr2.i.1 = getelementptr inbounds i8, ptr %block.addr.015.i, i64 128
  %add.ptr4.i.1 = getelementptr inbounds i16, ptr %add.ptr1.i.1, i64 %idx.ext.i
  %niter.next.1 = add nuw nsw i32 %niter, 2
  %niter.ncmp.1.not = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %if.end127.loopexit.unr-lcssa, label %for.body.i

if.else26:                                        ; preds = %cond.end
  %cmp17 = icmp eq i32 %and9, 0
  br i1 %cmp17, label %if.then29, label %if.else45

if.then29:                                        ; preds = %if.else26
  %idxprom42 = sext i32 %cond.i4.i272 to i64
  %arrayidx43 = getelementptr inbounds ptr, ptr %cond, i64 %idxprom42
  %cmp71.i = icmp sgt i32 %ver_block_size, 0
  switch i32 %and, label %if.else41 [
    i32 1, label %if.then32
    i32 2, label %if.then38
  ]

if.then32:                                        ; preds = %if.then29
  br i1 %cmp71.i, label %for.body.lr.ph.i273, label %if.end127

for.body.lr.ph.i273:                              ; preds = %if.then32
  %idxprom1.i = sext i32 %cond.i4.i to i64
  %cmp1459.i = icmp sgt i32 %hor_block_size, 0
  br i1 %cmp1459.i, label %for.body.us.preheader.i, label %if.end127

for.body.us.preheader.i:                          ; preds = %for.body.lr.ph.i273
  %wide.trip.count.i = zext nneg i32 %ver_block_size to i64
  %19 = add nsw i32 %hor_block_size, -1
  %20 = zext i32 %19 to i64
  %21 = shl nuw nsw i64 %20, 1
  %22 = add nsw i64 %idxprom1.i, %20
  %23 = shl nsw i64 %22, 1
  %24 = zext nneg i32 %hor_block_size to i64
  %min.iters.check407 = icmp ult i32 %hor_block_size, 32
  %n.vec410 = and i64 %24, 2147483616
  %25 = shl nuw nsw i64 %n.vec410, 1
  %ind.end413 = trunc nuw nsw i64 %n.vec410 to i32
  %26 = shl nuw nsw i64 %n.vec410, 1
  %27 = shl nuw nsw i64 %n.vec410, 1
  %28 = shl nuw nsw i64 %n.vec410, 1
  %29 = shl nuw nsw i64 %n.vec410, 1
  %30 = shl nuw nsw i64 %n.vec410, 1
  %broadcast.splatinsert481 = insertelement <8 x i32> poison, i32 %max_imgpel_value, i64 0
  %broadcast.splat482 = shufflevector <8 x i32> %broadcast.splatinsert481, <8 x i32> poison, <8 x i32> zeroinitializer
  %cmp.n488 = icmp eq i64 %n.vec410, %24
  br label %for.body.us.i

for.body.us.i:                                    ; preds = %for.cond13.for.inc41_crit_edge.us.i, %for.body.us.preheader.i
  %indvars.iv.i = phi i64 [ 0, %for.body.us.preheader.i ], [ %indvars.iv.next.i, %for.cond13.for.inc41_crit_edge.us.i ]
  %arrayidx.us.i = getelementptr inbounds ptr, ptr %arrayidx43, i64 %indvars.iv.i
  %31 = load ptr, ptr %arrayidx.us.i, align 8
  %arrayidx2.us.i = getelementptr i16, ptr %31, i64 %idxprom1.i
  %arrayidx6.us.i = getelementptr i8, ptr %arrayidx2.us.i, i64 -4
  %add.ptr.us.i = getelementptr i8, ptr %arrayidx2.us.i, i64 -2
  %add.ptr9.us.i = getelementptr inbounds i8, ptr %arrayidx2.us.i, i64 4
  %add.ptr10.us.i = getelementptr inbounds i8, ptr %arrayidx2.us.i, i64 6
  %arrayidx12.us.i = getelementptr inbounds ptr, ptr %block, i64 %indvars.iv.i
  %32 = load ptr, ptr %arrayidx12.us.i, align 8
  br i1 %min.iters.check407, label %for.body15.us.i.preheader, label %vector.memcheck399

vector.memcheck399:                               ; preds = %for.body.us.i
  %33 = getelementptr i8, ptr %32, i64 %21
  %scevgep400 = getelementptr i8, ptr %33, i64 2
  %34 = getelementptr i8, ptr %31, i64 %23
  %scevgep401 = getelementptr i8, ptr %34, i64 8
  %bound0402 = icmp ult ptr %32, %scevgep401
  %bound1403 = icmp ult ptr %arrayidx6.us.i, %scevgep400
  %found.conflict404 = and i1 %bound0402, %bound1403
  br i1 %found.conflict404, label %for.body15.us.i.preheader, label %vector.ph408

vector.ph408:                                     ; preds = %vector.memcheck399
  %ind.end411 = getelementptr i8, ptr %arrayidx6.us.i, i64 %25
  %ind.end415 = getelementptr i8, ptr %arrayidx2.us.i, i64 %26
  %ind.end417 = getelementptr i8, ptr %32, i64 %27
  %ind.end419 = getelementptr i8, ptr %add.ptr10.us.i, i64 %28
  %ind.end421 = getelementptr i8, ptr %add.ptr9.us.i, i64 %29
  %ind.end423 = getelementptr i8, ptr %add.ptr.us.i, i64 %30
  br label %vector.body425

vector.body425:                                   ; preds = %vector.body425, %vector.ph408
  %index426 = phi i64 [ 0, %vector.ph408 ], [ %index.next487, %vector.body425 ]
  %offset.idx427 = shl i64 %index426, 1
  %next.gep428 = getelementptr i8, ptr %arrayidx6.us.i, i64 %offset.idx427
  %offset.idx432 = shl i64 %index426, 1
  %next.gep433 = getelementptr i8, ptr %arrayidx2.us.i, i64 %offset.idx432
  %offset.idx437 = shl i64 %index426, 1
  %next.gep438 = getelementptr i8, ptr %32, i64 %offset.idx437
  %offset.idx442 = shl i64 %index426, 1
  %next.gep443 = getelementptr i8, ptr %add.ptr10.us.i, i64 %offset.idx442
  %offset.idx447 = shl i64 %index426, 1
  %next.gep448 = getelementptr i8, ptr %add.ptr9.us.i, i64 %offset.idx447
  %offset.idx452 = shl i64 %index426, 1
  %next.gep453 = getelementptr i8, ptr %add.ptr.us.i, i64 %offset.idx452
  %35 = getelementptr i8, ptr %next.gep433, i64 2
  %36 = getelementptr i8, ptr %next.gep428, i64 16
  %37 = getelementptr i8, ptr %next.gep428, i64 32
  %38 = getelementptr i8, ptr %next.gep428, i64 48
  %wide.load457 = load <8 x i16>, ptr %next.gep428, align 2, !alias.scope !5
  %wide.load458 = load <8 x i16>, ptr %36, align 2, !alias.scope !5
  %wide.load459 = load <8 x i16>, ptr %37, align 2, !alias.scope !5
  %wide.load460 = load <8 x i16>, ptr %38, align 2, !alias.scope !5
  %39 = zext <8 x i16> %wide.load457 to <8 x i32>
  %40 = zext <8 x i16> %wide.load458 to <8 x i32>
  %41 = zext <8 x i16> %wide.load459 to <8 x i32>
  %42 = zext <8 x i16> %wide.load460 to <8 x i32>
  %43 = getelementptr i8, ptr %next.gep443, i64 16
  %44 = getelementptr i8, ptr %next.gep443, i64 32
  %45 = getelementptr i8, ptr %next.gep443, i64 48
  %wide.load461 = load <8 x i16>, ptr %next.gep443, align 2, !alias.scope !5
  %wide.load462 = load <8 x i16>, ptr %43, align 2, !alias.scope !5
  %wide.load463 = load <8 x i16>, ptr %44, align 2, !alias.scope !5
  %wide.load464 = load <8 x i16>, ptr %45, align 2, !alias.scope !5
  %46 = zext <8 x i16> %wide.load461 to <8 x i32>
  %47 = zext <8 x i16> %wide.load462 to <8 x i32>
  %48 = zext <8 x i16> %wide.load463 to <8 x i32>
  %49 = zext <8 x i16> %wide.load464 to <8 x i32>
  %50 = getelementptr i8, ptr %next.gep453, i64 16
  %51 = getelementptr i8, ptr %next.gep453, i64 32
  %52 = getelementptr i8, ptr %next.gep453, i64 48
  %wide.load465 = load <8 x i16>, ptr %next.gep453, align 2, !alias.scope !5
  %wide.load466 = load <8 x i16>, ptr %50, align 2, !alias.scope !5
  %wide.load467 = load <8 x i16>, ptr %51, align 2, !alias.scope !5
  %wide.load468 = load <8 x i16>, ptr %52, align 2, !alias.scope !5
  %53 = zext <8 x i16> %wide.load465 to <8 x i32>
  %54 = zext <8 x i16> %wide.load466 to <8 x i32>
  %55 = zext <8 x i16> %wide.load467 to <8 x i32>
  %56 = zext <8 x i16> %wide.load468 to <8 x i32>
  %57 = getelementptr i8, ptr %next.gep448, i64 16
  %58 = getelementptr i8, ptr %next.gep448, i64 32
  %59 = getelementptr i8, ptr %next.gep448, i64 48
  %wide.load469 = load <8 x i16>, ptr %next.gep448, align 2, !alias.scope !5
  %wide.load470 = load <8 x i16>, ptr %57, align 2, !alias.scope !5
  %wide.load471 = load <8 x i16>, ptr %58, align 2, !alias.scope !5
  %wide.load472 = load <8 x i16>, ptr %59, align 2, !alias.scope !5
  %60 = zext <8 x i16> %wide.load469 to <8 x i32>
  %61 = zext <8 x i16> %wide.load470 to <8 x i32>
  %62 = zext <8 x i16> %wide.load471 to <8 x i32>
  %63 = zext <8 x i16> %wide.load472 to <8 x i32>
  %64 = add nuw nsw <8 x i32> %60, %53
  %65 = add nuw nsw <8 x i32> %61, %54
  %66 = add nuw nsw <8 x i32> %62, %55
  %67 = add nuw nsw <8 x i32> %63, %56
  %68 = mul nsw <8 x i32> %64, <i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5>
  %69 = mul nsw <8 x i32> %65, <i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5>
  %70 = mul nsw <8 x i32> %66, <i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5>
  %71 = mul nsw <8 x i32> %67, <i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5>
  %72 = getelementptr i8, ptr %next.gep433, i64 16
  %73 = getelementptr i8, ptr %next.gep433, i64 32
  %74 = getelementptr i8, ptr %next.gep433, i64 48
  %wide.load473 = load <8 x i16>, ptr %next.gep433, align 2, !alias.scope !5
  %wide.load474 = load <8 x i16>, ptr %72, align 2, !alias.scope !5
  %wide.load475 = load <8 x i16>, ptr %73, align 2, !alias.scope !5
  %wide.load476 = load <8 x i16>, ptr %74, align 2, !alias.scope !5
  %75 = zext <8 x i16> %wide.load473 to <8 x i32>
  %76 = zext <8 x i16> %wide.load474 to <8 x i32>
  %77 = zext <8 x i16> %wide.load475 to <8 x i32>
  %78 = zext <8 x i16> %wide.load476 to <8 x i32>
  %79 = getelementptr i8, ptr %next.gep433, i64 18
  %80 = getelementptr i8, ptr %next.gep433, i64 34
  %81 = getelementptr i8, ptr %next.gep433, i64 50
  %wide.load477 = load <8 x i16>, ptr %35, align 2, !alias.scope !5
  %wide.load478 = load <8 x i16>, ptr %79, align 2, !alias.scope !5
  %wide.load479 = load <8 x i16>, ptr %80, align 2, !alias.scope !5
  %wide.load480 = load <8 x i16>, ptr %81, align 2, !alias.scope !5
  %82 = zext <8 x i16> %wide.load477 to <8 x i32>
  %83 = zext <8 x i16> %wide.load478 to <8 x i32>
  %84 = zext <8 x i16> %wide.load479 to <8 x i32>
  %85 = zext <8 x i16> %wide.load480 to <8 x i32>
  %86 = add nuw nsw <8 x i32> %82, %75
  %87 = add nuw nsw <8 x i32> %83, %76
  %88 = add nuw nsw <8 x i32> %84, %77
  %89 = add nuw nsw <8 x i32> %85, %78
  %90 = mul nuw nsw <8 x i32> %86, <i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20>
  %91 = mul nuw nsw <8 x i32> %87, <i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20>
  %92 = mul nuw nsw <8 x i32> %88, <i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20>
  %93 = mul nuw nsw <8 x i32> %89, <i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20>
  %94 = add nuw nsw <8 x i32> %39, <i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16>
  %95 = add nuw nsw <8 x i32> %40, <i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16>
  %96 = add nuw nsw <8 x i32> %41, <i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16>
  %97 = add nuw nsw <8 x i32> %42, <i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16>
  %98 = add nuw nsw <8 x i32> %94, %46
  %99 = add nuw nsw <8 x i32> %95, %47
  %100 = add nuw nsw <8 x i32> %96, %48
  %101 = add nuw nsw <8 x i32> %97, %49
  %102 = add nsw <8 x i32> %98, %68
  %103 = add nsw <8 x i32> %99, %69
  %104 = add nsw <8 x i32> %100, %70
  %105 = add nsw <8 x i32> %101, %71
  %106 = add nsw <8 x i32> %102, %90
  %107 = add nsw <8 x i32> %103, %91
  %108 = add nsw <8 x i32> %104, %92
  %109 = add nsw <8 x i32> %105, %93
  %110 = ashr <8 x i32> %106, <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  %111 = ashr <8 x i32> %107, <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  %112 = ashr <8 x i32> %108, <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  %113 = ashr <8 x i32> %109, <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  %114 = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %110, <8 x i32> zeroinitializer)
  %115 = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %111, <8 x i32> zeroinitializer)
  %116 = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %112, <8 x i32> zeroinitializer)
  %117 = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %113, <8 x i32> zeroinitializer)
  %118 = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %114, <8 x i32> %broadcast.splat482)
  %119 = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %115, <8 x i32> %broadcast.splat482)
  %120 = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %116, <8 x i32> %broadcast.splat482)
  %121 = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %117, <8 x i32> %broadcast.splat482)
  %122 = trunc <8 x i32> %118 to <8 x i16>
  %123 = trunc <8 x i32> %119 to <8 x i16>
  %124 = trunc <8 x i32> %120 to <8 x i16>
  %125 = trunc <8 x i32> %121 to <8 x i16>
  %126 = getelementptr i8, ptr %next.gep438, i64 16
  %127 = getelementptr i8, ptr %next.gep438, i64 32
  %128 = getelementptr i8, ptr %next.gep438, i64 48
  store <8 x i16> %122, ptr %next.gep438, align 2, !alias.scope !8, !noalias !5
  store <8 x i16> %123, ptr %126, align 2, !alias.scope !8, !noalias !5
  store <8 x i16> %124, ptr %127, align 2, !alias.scope !8, !noalias !5
  store <8 x i16> %125, ptr %128, align 2, !alias.scope !8, !noalias !5
  %129 = and <8 x i32> %118, <i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535>
  %130 = and <8 x i32> %119, <i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535>
  %131 = and <8 x i32> %120, <i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535>
  %132 = and <8 x i32> %121, <i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535>
  %wide.load483 = load <8 x i16>, ptr %next.gep433, align 2, !alias.scope !5
  %wide.load484 = load <8 x i16>, ptr %72, align 2, !alias.scope !5
  %wide.load485 = load <8 x i16>, ptr %73, align 2, !alias.scope !5
  %wide.load486 = load <8 x i16>, ptr %74, align 2, !alias.scope !5
  %133 = zext <8 x i16> %wide.load483 to <8 x i32>
  %134 = zext <8 x i16> %wide.load484 to <8 x i32>
  %135 = zext <8 x i16> %wide.load485 to <8 x i32>
  %136 = zext <8 x i16> %wide.load486 to <8 x i32>
  %137 = add nuw nsw <8 x i32> %133, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %138 = add nuw nsw <8 x i32> %134, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %139 = add nuw nsw <8 x i32> %135, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %140 = add nuw nsw <8 x i32> %136, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %141 = add nuw nsw <8 x i32> %137, %129
  %142 = add nuw nsw <8 x i32> %138, %130
  %143 = add nuw nsw <8 x i32> %139, %131
  %144 = add nuw nsw <8 x i32> %140, %132
  %145 = lshr <8 x i32> %141, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %146 = lshr <8 x i32> %142, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %147 = lshr <8 x i32> %143, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %148 = lshr <8 x i32> %144, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %149 = trunc <8 x i32> %145 to <8 x i16>
  %150 = trunc <8 x i32> %146 to <8 x i16>
  %151 = trunc <8 x i32> %147 to <8 x i16>
  %152 = trunc <8 x i32> %148 to <8 x i16>
  store <8 x i16> %149, ptr %next.gep438, align 2, !alias.scope !8, !noalias !5
  store <8 x i16> %150, ptr %126, align 2, !alias.scope !8, !noalias !5
  store <8 x i16> %151, ptr %127, align 2, !alias.scope !8, !noalias !5
  store <8 x i16> %152, ptr %128, align 2, !alias.scope !8, !noalias !5
  %index.next487 = add nuw i64 %index426, 32
  %153 = icmp eq i64 %index.next487, %n.vec410
  br i1 %153, label %middle.block405, label %vector.body425, !llvm.loop !10

middle.block405:                                  ; preds = %vector.body425
  br i1 %cmp.n488, label %for.cond13.for.inc41_crit_edge.us.i, label %for.body15.us.i.preheader

for.body15.us.i.preheader:                        ; preds = %middle.block405, %vector.memcheck399, %for.body.us.i
  %p0.068.us.i.ph = phi ptr [ %arrayidx6.us.i, %vector.memcheck399 ], [ %arrayidx6.us.i, %for.body.us.i ], [ %ind.end411, %middle.block405 ]
  %i.067.us.i.ph = phi i32 [ 0, %vector.memcheck399 ], [ 0, %for.body.us.i ], [ %ind.end413, %middle.block405 ]
  %cur_line.066.us.i.ph = phi ptr [ %arrayidx2.us.i, %vector.memcheck399 ], [ %arrayidx2.us.i, %for.body.us.i ], [ %ind.end415, %middle.block405 ]
  %orig_line.065.us.i.ph = phi ptr [ %32, %vector.memcheck399 ], [ %32, %for.body.us.i ], [ %ind.end417, %middle.block405 ]
  %p5.064.us.i.ph = phi ptr [ %add.ptr10.us.i, %vector.memcheck399 ], [ %add.ptr10.us.i, %for.body.us.i ], [ %ind.end419, %middle.block405 ]
  %p4.063.us.i.ph = phi ptr [ %add.ptr9.us.i, %vector.memcheck399 ], [ %add.ptr9.us.i, %for.body.us.i ], [ %ind.end421, %middle.block405 ]
  %p1.060.us.i.ph = phi ptr [ %add.ptr.us.i, %vector.memcheck399 ], [ %add.ptr.us.i, %for.body.us.i ], [ %ind.end423, %middle.block405 ]
  br label %for.body15.us.i

for.body15.us.i:                                  ; preds = %for.body15.us.i.preheader, %for.body15.us.i
  %p0.068.us.i = phi ptr [ %incdec.ptr.us.i, %for.body15.us.i ], [ %p0.068.us.i.ph, %for.body15.us.i.preheader ]
  %i.067.us.i = phi i32 [ %inc.us.i, %for.body15.us.i ], [ %i.067.us.i.ph, %for.body15.us.i.preheader ]
  %cur_line.066.us.i = phi ptr [ %incdec.ptr34.us.i, %for.body15.us.i ], [ %cur_line.066.us.i.ph, %for.body15.us.i.preheader ]
  %orig_line.065.us.i = phi ptr [ %incdec.ptr40.us.i, %for.body15.us.i ], [ %orig_line.065.us.i.ph, %for.body15.us.i.preheader ]
  %p5.064.us.i = phi ptr [ %incdec.ptr16.us.i, %for.body15.us.i ], [ %p5.064.us.i.ph, %for.body15.us.i.preheader ]
  %p4.063.us.i = phi ptr [ %incdec.ptr20.us.i, %for.body15.us.i ], [ %p4.063.us.i.ph, %for.body15.us.i.preheader ]
  %p1.060.us.i = phi ptr [ %incdec.ptr18.us.i, %for.body15.us.i ], [ %p1.060.us.i.ph, %for.body15.us.i.preheader ]
  %incdec.ptr34.us.i = getelementptr i8, ptr %cur_line.066.us.i, i64 2
  %incdec.ptr.us.i = getelementptr inbounds i8, ptr %p0.068.us.i, i64 2
  %154 = load i16, ptr %p0.068.us.i, align 2
  %conv.us.i = zext i16 %154 to i32
  %incdec.ptr16.us.i = getelementptr inbounds i8, ptr %p5.064.us.i, i64 2
  %155 = load i16, ptr %p5.064.us.i, align 2
  %conv17.us.i = zext i16 %155 to i32
  %incdec.ptr18.us.i = getelementptr inbounds i8, ptr %p1.060.us.i, i64 2
  %156 = load i16, ptr %p1.060.us.i, align 2
  %conv19.us.i = zext i16 %156 to i32
  %incdec.ptr20.us.i = getelementptr inbounds i8, ptr %p4.063.us.i, i64 2
  %157 = load i16, ptr %p4.063.us.i, align 2
  %conv21.us.i = zext i16 %157 to i32
  %add22.us.i = add nuw nsw i32 %conv21.us.i, %conv19.us.i
  %mul.neg.us.i = mul nsw i32 %add22.us.i, -5
  %158 = load i16, ptr %cur_line.066.us.i, align 2
  %conv25.us.i = zext i16 %158 to i32
  %159 = load i16, ptr %incdec.ptr34.us.i, align 2
  %conv27.us.i = zext i16 %159 to i32
  %add28.us.i = add nuw nsw i32 %conv27.us.i, %conv25.us.i
  %mul29.us.i = mul nuw nsw i32 %add28.us.i, 20
  %add.us.i = add nuw nsw i32 %conv.us.i, 16
  %sub23.us.i = add nuw nsw i32 %add.us.i, %conv17.us.i
  %add30.us.i = add nsw i32 %sub23.us.i, %mul.neg.us.i
  %add31.us.i = add nsw i32 %add30.us.i, %mul29.us.i
  %shr.us.i = ashr i32 %add31.us.i, 5
  %cond.i.i.us.i = tail call noundef i32 @llvm.smax.i32(i32 %shr.us.i, i32 0)
  %cond.i4.i.us.i = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i.us.i, i32 %max_imgpel_value)
  %conv32.us.i = trunc i32 %cond.i4.i.us.i to i16
  store i16 %conv32.us.i, ptr %orig_line.065.us.i, align 2
  %conv33.us.i = and i32 %cond.i4.i.us.i, 65535
  %160 = load i16, ptr %cur_line.066.us.i, align 2
  %conv35.us.i = zext i16 %160 to i32
  %add36.us.i = add nuw nsw i32 %conv35.us.i, 1
  %add37.us.i = add nuw nsw i32 %add36.us.i, %conv33.us.i
  %shr38.us.i = lshr i32 %add37.us.i, 1
  %conv39.us.i = trunc nuw i32 %shr38.us.i to i16
  store i16 %conv39.us.i, ptr %orig_line.065.us.i, align 2
  %incdec.ptr40.us.i = getelementptr inbounds i8, ptr %orig_line.065.us.i, i64 2
  %inc.us.i = add nuw nsw i32 %i.067.us.i, 1
  %exitcond.not.i = icmp eq i32 %inc.us.i, %hor_block_size
  br i1 %exitcond.not.i, label %for.cond13.for.inc41_crit_edge.us.i, label %for.body15.us.i, !llvm.loop !13

for.cond13.for.inc41_crit_edge.us.i:              ; preds = %for.body15.us.i, %middle.block405
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond73.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond73.not.i, label %if.end127, label %for.body.us.i

if.then38:                                        ; preds = %if.then29
  br i1 %cmp71.i, label %for.body.lr.ph.i274, label %if.end127

for.body.lr.ph.i274:                              ; preds = %if.then38
  %161 = sext i32 %cond.i4.i to i64
  %cmp1042.i = icmp sgt i32 %hor_block_size, 0
  br i1 %cmp1042.i, label %for.body.us.preheader.i275, label %if.end127

for.body.us.preheader.i275:                       ; preds = %for.body.lr.ph.i274
  %wide.trip.count.i276 = zext nneg i32 %ver_block_size to i64
  %162 = add nsw i32 %hor_block_size, -1
  %163 = zext i32 %162 to i64
  %164 = shl nuw nsw i64 %163, 1
  %165 = add nsw i64 %161, %163
  %166 = shl nsw i64 %165, 1
  %167 = zext nneg i32 %hor_block_size to i64
  %min.iters.check = icmp ult i32 %hor_block_size, 32
  %n.vec = and i64 %167, 2147483616
  %168 = shl nuw nsw i64 %n.vec, 1
  %ind.end336 = trunc nuw nsw i64 %n.vec to i32
  %169 = shl nuw nsw i64 %n.vec, 1
  %170 = shl nuw nsw i64 %n.vec, 1
  %171 = shl nuw nsw i64 %n.vec, 1
  %172 = shl nuw nsw i64 %n.vec, 1
  %173 = shl nuw nsw i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %max_imgpel_value, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %167
  br label %for.body.us.i277

for.body.us.i277:                                 ; preds = %for.cond9.for.inc30_crit_edge.us.i, %for.body.us.preheader.i275
  %indvars.iv.i278 = phi i64 [ 0, %for.body.us.preheader.i275 ], [ %indvars.iv.next.i294, %for.cond9.for.inc30_crit_edge.us.i ]
  %arrayidx.us.i279 = getelementptr inbounds ptr, ptr %arrayidx43, i64 %indvars.iv.i278
  %174 = load ptr, ptr %arrayidx.us.i279, align 8
  %175 = getelementptr i16, ptr %174, i64 %161
  %arrayidx2.us.i280 = getelementptr i8, ptr %175, i64 -4
  %add.ptr.us.i281 = getelementptr i8, ptr %175, i64 -2
  %add.ptr5.us.i = getelementptr inbounds i8, ptr %175, i64 4
  %add.ptr6.us.i = getelementptr inbounds i8, ptr %175, i64 6
  %arrayidx8.us.i = getelementptr inbounds ptr, ptr %block, i64 %indvars.iv.i278
  %176 = load ptr, ptr %arrayidx8.us.i, align 8
  br i1 %min.iters.check, label %for.body11.us.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %for.body.us.i277
  %177 = getelementptr i8, ptr %176, i64 %164
  %scevgep = getelementptr i8, ptr %177, i64 2
  %178 = getelementptr i8, ptr %174, i64 %166
  %scevgep335 = getelementptr i8, ptr %178, i64 8
  %bound0 = icmp ult ptr %176, %scevgep335
  %bound1 = icmp ult ptr %arrayidx2.us.i280, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %for.body11.us.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %ind.end = getelementptr i8, ptr %arrayidx2.us.i280, i64 %168
  %ind.end338 = getelementptr i8, ptr %176, i64 %169
  %ind.end340 = getelementptr i8, ptr %add.ptr6.us.i, i64 %170
  %ind.end342 = getelementptr i8, ptr %add.ptr5.us.i, i64 %171
  %ind.end344 = getelementptr i8, ptr %175, i64 %172
  %ind.end346 = getelementptr i8, ptr %add.ptr.us.i281, i64 %173
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %offset.idx = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %arrayidx2.us.i280, i64 %offset.idx
  %offset.idx351 = shl i64 %index, 1
  %next.gep352 = getelementptr i8, ptr %176, i64 %offset.idx351
  %offset.idx356 = shl i64 %index, 1
  %next.gep357 = getelementptr i8, ptr %add.ptr6.us.i, i64 %offset.idx356
  %offset.idx361 = shl i64 %index, 1
  %next.gep362 = getelementptr i8, ptr %add.ptr5.us.i, i64 %offset.idx361
  %offset.idx366 = shl i64 %index, 1
  %next.gep367 = getelementptr i8, ptr %175, i64 %offset.idx366
  %offset.idx371 = shl i64 %index, 1
  %next.gep372 = getelementptr i8, ptr %add.ptr.us.i281, i64 %offset.idx371
  %179 = getelementptr i8, ptr %next.gep367, i64 2
  %180 = getelementptr i8, ptr %next.gep, i64 16
  %181 = getelementptr i8, ptr %next.gep, i64 32
  %182 = getelementptr i8, ptr %next.gep, i64 48
  %wide.load = load <8 x i16>, ptr %next.gep, align 2, !alias.scope !14
  %wide.load376 = load <8 x i16>, ptr %180, align 2, !alias.scope !14
  %wide.load377 = load <8 x i16>, ptr %181, align 2, !alias.scope !14
  %wide.load378 = load <8 x i16>, ptr %182, align 2, !alias.scope !14
  %183 = zext <8 x i16> %wide.load to <8 x i32>
  %184 = zext <8 x i16> %wide.load376 to <8 x i32>
  %185 = zext <8 x i16> %wide.load377 to <8 x i32>
  %186 = zext <8 x i16> %wide.load378 to <8 x i32>
  %187 = getelementptr i8, ptr %next.gep357, i64 16
  %188 = getelementptr i8, ptr %next.gep357, i64 32
  %189 = getelementptr i8, ptr %next.gep357, i64 48
  %wide.load379 = load <8 x i16>, ptr %next.gep357, align 2, !alias.scope !14
  %wide.load380 = load <8 x i16>, ptr %187, align 2, !alias.scope !14
  %wide.load381 = load <8 x i16>, ptr %188, align 2, !alias.scope !14
  %wide.load382 = load <8 x i16>, ptr %189, align 2, !alias.scope !14
  %190 = zext <8 x i16> %wide.load379 to <8 x i32>
  %191 = zext <8 x i16> %wide.load380 to <8 x i32>
  %192 = zext <8 x i16> %wide.load381 to <8 x i32>
  %193 = zext <8 x i16> %wide.load382 to <8 x i32>
  %194 = getelementptr i8, ptr %next.gep372, i64 16
  %195 = getelementptr i8, ptr %next.gep372, i64 32
  %196 = getelementptr i8, ptr %next.gep372, i64 48
  %wide.load383 = load <8 x i16>, ptr %next.gep372, align 2, !alias.scope !14
  %wide.load384 = load <8 x i16>, ptr %194, align 2, !alias.scope !14
  %wide.load385 = load <8 x i16>, ptr %195, align 2, !alias.scope !14
  %wide.load386 = load <8 x i16>, ptr %196, align 2, !alias.scope !14
  %197 = zext <8 x i16> %wide.load383 to <8 x i32>
  %198 = zext <8 x i16> %wide.load384 to <8 x i32>
  %199 = zext <8 x i16> %wide.load385 to <8 x i32>
  %200 = zext <8 x i16> %wide.load386 to <8 x i32>
  %201 = getelementptr i8, ptr %next.gep362, i64 16
  %202 = getelementptr i8, ptr %next.gep362, i64 32
  %203 = getelementptr i8, ptr %next.gep362, i64 48
  %wide.load387 = load <8 x i16>, ptr %next.gep362, align 2, !alias.scope !14
  %wide.load388 = load <8 x i16>, ptr %201, align 2, !alias.scope !14
  %wide.load389 = load <8 x i16>, ptr %202, align 2, !alias.scope !14
  %wide.load390 = load <8 x i16>, ptr %203, align 2, !alias.scope !14
  %204 = zext <8 x i16> %wide.load387 to <8 x i32>
  %205 = zext <8 x i16> %wide.load388 to <8 x i32>
  %206 = zext <8 x i16> %wide.load389 to <8 x i32>
  %207 = zext <8 x i16> %wide.load390 to <8 x i32>
  %208 = add nuw nsw <8 x i32> %204, %197
  %209 = add nuw nsw <8 x i32> %205, %198
  %210 = add nuw nsw <8 x i32> %206, %199
  %211 = add nuw nsw <8 x i32> %207, %200
  %212 = mul nsw <8 x i32> %208, <i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5>
  %213 = mul nsw <8 x i32> %209, <i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5>
  %214 = mul nsw <8 x i32> %210, <i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5>
  %215 = mul nsw <8 x i32> %211, <i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5>
  %216 = getelementptr i8, ptr %next.gep367, i64 16
  %217 = getelementptr i8, ptr %next.gep367, i64 32
  %218 = getelementptr i8, ptr %next.gep367, i64 48
  %wide.load391 = load <8 x i16>, ptr %next.gep367, align 2, !alias.scope !14
  %wide.load392 = load <8 x i16>, ptr %216, align 2, !alias.scope !14
  %wide.load393 = load <8 x i16>, ptr %217, align 2, !alias.scope !14
  %wide.load394 = load <8 x i16>, ptr %218, align 2, !alias.scope !14
  %219 = zext <8 x i16> %wide.load391 to <8 x i32>
  %220 = zext <8 x i16> %wide.load392 to <8 x i32>
  %221 = zext <8 x i16> %wide.load393 to <8 x i32>
  %222 = zext <8 x i16> %wide.load394 to <8 x i32>
  %223 = getelementptr i8, ptr %next.gep367, i64 18
  %224 = getelementptr i8, ptr %next.gep367, i64 34
  %225 = getelementptr i8, ptr %next.gep367, i64 50
  %wide.load395 = load <8 x i16>, ptr %179, align 2, !alias.scope !14
  %wide.load396 = load <8 x i16>, ptr %223, align 2, !alias.scope !14
  %wide.load397 = load <8 x i16>, ptr %224, align 2, !alias.scope !14
  %wide.load398 = load <8 x i16>, ptr %225, align 2, !alias.scope !14
  %226 = zext <8 x i16> %wide.load395 to <8 x i32>
  %227 = zext <8 x i16> %wide.load396 to <8 x i32>
  %228 = zext <8 x i16> %wide.load397 to <8 x i32>
  %229 = zext <8 x i16> %wide.load398 to <8 x i32>
  %230 = add nuw nsw <8 x i32> %226, %219
  %231 = add nuw nsw <8 x i32> %227, %220
  %232 = add nuw nsw <8 x i32> %228, %221
  %233 = add nuw nsw <8 x i32> %229, %222
  %234 = mul nuw nsw <8 x i32> %230, <i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20>
  %235 = mul nuw nsw <8 x i32> %231, <i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20>
  %236 = mul nuw nsw <8 x i32> %232, <i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20>
  %237 = mul nuw nsw <8 x i32> %233, <i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20>
  %238 = add nuw nsw <8 x i32> %183, <i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16>
  %239 = add nuw nsw <8 x i32> %184, <i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16>
  %240 = add nuw nsw <8 x i32> %185, <i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16>
  %241 = add nuw nsw <8 x i32> %186, <i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16>
  %242 = add nuw nsw <8 x i32> %238, %190
  %243 = add nuw nsw <8 x i32> %239, %191
  %244 = add nuw nsw <8 x i32> %240, %192
  %245 = add nuw nsw <8 x i32> %241, %193
  %246 = add nsw <8 x i32> %242, %212
  %247 = add nsw <8 x i32> %243, %213
  %248 = add nsw <8 x i32> %244, %214
  %249 = add nsw <8 x i32> %245, %215
  %250 = add nsw <8 x i32> %246, %234
  %251 = add nsw <8 x i32> %247, %235
  %252 = add nsw <8 x i32> %248, %236
  %253 = add nsw <8 x i32> %249, %237
  %254 = ashr <8 x i32> %250, <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  %255 = ashr <8 x i32> %251, <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  %256 = ashr <8 x i32> %252, <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  %257 = ashr <8 x i32> %253, <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  %258 = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %254, <8 x i32> zeroinitializer)
  %259 = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %255, <8 x i32> zeroinitializer)
  %260 = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %256, <8 x i32> zeroinitializer)
  %261 = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %257, <8 x i32> zeroinitializer)
  %262 = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %258, <8 x i32> %broadcast.splat)
  %263 = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %259, <8 x i32> %broadcast.splat)
  %264 = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %260, <8 x i32> %broadcast.splat)
  %265 = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %261, <8 x i32> %broadcast.splat)
  %266 = trunc <8 x i32> %262 to <8 x i16>
  %267 = trunc <8 x i32> %263 to <8 x i16>
  %268 = trunc <8 x i32> %264 to <8 x i16>
  %269 = trunc <8 x i32> %265 to <8 x i16>
  %270 = getelementptr i8, ptr %next.gep352, i64 16
  %271 = getelementptr i8, ptr %next.gep352, i64 32
  %272 = getelementptr i8, ptr %next.gep352, i64 48
  store <8 x i16> %266, ptr %next.gep352, align 2, !alias.scope !17, !noalias !14
  store <8 x i16> %267, ptr %270, align 2, !alias.scope !17, !noalias !14
  store <8 x i16> %268, ptr %271, align 2, !alias.scope !17, !noalias !14
  store <8 x i16> %269, ptr %272, align 2, !alias.scope !17, !noalias !14
  %index.next = add nuw i64 %index, 32
  %273 = icmp eq i64 %index.next, %n.vec
  br i1 %273, label %middle.block, label %vector.body, !llvm.loop !19

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %for.cond9.for.inc30_crit_edge.us.i, label %for.body11.us.i.preheader

for.body11.us.i.preheader:                        ; preds = %middle.block, %vector.memcheck, %for.body.us.i277
  %p0.050.us.i.ph = phi ptr [ %arrayidx2.us.i280, %vector.memcheck ], [ %arrayidx2.us.i280, %for.body.us.i277 ], [ %ind.end, %middle.block ]
  %i.049.us.i.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %for.body.us.i277 ], [ %ind.end336, %middle.block ]
  %orig_line.048.us.i.ph = phi ptr [ %176, %vector.memcheck ], [ %176, %for.body.us.i277 ], [ %ind.end338, %middle.block ]
  %p5.047.us.i.ph = phi ptr [ %add.ptr6.us.i, %vector.memcheck ], [ %add.ptr6.us.i, %for.body.us.i277 ], [ %ind.end340, %middle.block ]
  %p4.046.us.i.ph = phi ptr [ %add.ptr5.us.i, %vector.memcheck ], [ %add.ptr5.us.i, %for.body.us.i277 ], [ %ind.end342, %middle.block ]
  %.pn45.us.i.ph = phi ptr [ %175, %vector.memcheck ], [ %175, %for.body.us.i277 ], [ %ind.end344, %middle.block ]
  %p1.043.us.i.ph = phi ptr [ %add.ptr.us.i281, %vector.memcheck ], [ %add.ptr.us.i281, %for.body.us.i277 ], [ %ind.end346, %middle.block ]
  br label %for.body11.us.i

for.body11.us.i:                                  ; preds = %for.body11.us.i.preheader, %for.body11.us.i
  %p0.050.us.i = phi ptr [ %incdec.ptr.us.i282, %for.body11.us.i ], [ %p0.050.us.i.ph, %for.body11.us.i.preheader ]
  %i.049.us.i = phi i32 [ %inc.us.i292, %for.body11.us.i ], [ %i.049.us.i.ph, %for.body11.us.i.preheader ]
  %orig_line.048.us.i = phi ptr [ %incdec.ptr29.us.i, %for.body11.us.i ], [ %orig_line.048.us.i.ph, %for.body11.us.i.preheader ]
  %p5.047.us.i = phi ptr [ %incdec.ptr12.us.i, %for.body11.us.i ], [ %p5.047.us.i.ph, %for.body11.us.i.preheader ]
  %p4.046.us.i = phi ptr [ %incdec.ptr16.us.i284, %for.body11.us.i ], [ %p4.046.us.i.ph, %for.body11.us.i.preheader ]
  %.pn45.us.i = phi ptr [ %p3.0.us.i, %for.body11.us.i ], [ %.pn45.us.i.ph, %for.body11.us.i.preheader ]
  %p1.043.us.i = phi ptr [ %incdec.ptr14.us.i, %for.body11.us.i ], [ %p1.043.us.i.ph, %for.body11.us.i.preheader ]
  %p3.0.us.i = getelementptr i8, ptr %.pn45.us.i, i64 2
  %incdec.ptr.us.i282 = getelementptr inbounds i8, ptr %p0.050.us.i, i64 2
  %274 = load i16, ptr %p0.050.us.i, align 2
  %conv.us.i283 = zext i16 %274 to i32
  %incdec.ptr12.us.i = getelementptr inbounds i8, ptr %p5.047.us.i, i64 2
  %275 = load i16, ptr %p5.047.us.i, align 2
  %conv13.us.i = zext i16 %275 to i32
  %incdec.ptr14.us.i = getelementptr inbounds i8, ptr %p1.043.us.i, i64 2
  %276 = load i16, ptr %p1.043.us.i, align 2
  %conv15.us.i = zext i16 %276 to i32
  %incdec.ptr16.us.i284 = getelementptr inbounds i8, ptr %p4.046.us.i, i64 2
  %277 = load i16, ptr %p4.046.us.i, align 2
  %conv17.us.i285 = zext i16 %277 to i32
  %add18.us.i = add nuw nsw i32 %conv17.us.i285, %conv15.us.i
  %mul.neg.us.i286 = mul nsw i32 %add18.us.i, -5
  %278 = load i16, ptr %.pn45.us.i, align 2
  %conv21.us.i287 = zext i16 %278 to i32
  %279 = load i16, ptr %p3.0.us.i, align 2
  %conv23.us.i = zext i16 %279 to i32
  %add24.us.i = add nuw nsw i32 %conv23.us.i, %conv21.us.i287
  %mul25.us.i = mul nuw nsw i32 %add24.us.i, 20
  %add.us.i288 = add nuw nsw i32 %conv.us.i283, 16
  %sub19.us.i = add nuw nsw i32 %add.us.i288, %conv13.us.i
  %add26.us.i = add nsw i32 %sub19.us.i, %mul.neg.us.i286
  %add27.us.i = add nsw i32 %add26.us.i, %mul25.us.i
  %shr.us.i289 = ashr i32 %add27.us.i, 5
  %cond.i.i.us.i290 = tail call noundef i32 @llvm.smax.i32(i32 %shr.us.i289, i32 0)
  %cond.i4.i.us.i291 = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i.us.i290, i32 %max_imgpel_value)
  %conv28.us.i = trunc i32 %cond.i4.i.us.i291 to i16
  %incdec.ptr29.us.i = getelementptr inbounds i8, ptr %orig_line.048.us.i, i64 2
  store i16 %conv28.us.i, ptr %orig_line.048.us.i, align 2
  %inc.us.i292 = add nuw nsw i32 %i.049.us.i, 1
  %exitcond.not.i293 = icmp eq i32 %inc.us.i292, %hor_block_size
  br i1 %exitcond.not.i293, label %for.cond9.for.inc30_crit_edge.us.i, label %for.body11.us.i, !llvm.loop !20

for.cond9.for.inc30_crit_edge.us.i:               ; preds = %for.body11.us.i, %middle.block
  %indvars.iv.next.i294 = add nuw nsw i64 %indvars.iv.i278, 1
  %exitcond55.not.i = icmp eq i64 %indvars.iv.next.i294, %wide.trip.count.i276
  br i1 %exitcond55.not.i, label %if.end127, label %for.body.us.i277

if.else41:                                        ; preds = %if.then29
  br i1 %cmp71.i, label %for.body.lr.ph.i295, label %if.end127

for.body.lr.ph.i295:                              ; preds = %if.else41
  %280 = sext i32 %cond.i4.i to i64
  %cmp1461.i = icmp sgt i32 %hor_block_size, 0
  br i1 %cmp1461.i, label %for.body.us.preheader.i296, label %if.end127

for.body.us.preheader.i296:                       ; preds = %for.body.lr.ph.i295
  %wide.trip.count.i297 = zext nneg i32 %ver_block_size to i64
  %281 = add nsw i32 %hor_block_size, -1
  %282 = zext i32 %281 to i64
  %283 = shl nuw nsw i64 %282, 1
  %284 = add nsw i64 %280, %282
  %285 = shl nsw i64 %284, 1
  %286 = zext nneg i32 %hor_block_size to i64
  %min.iters.check497 = icmp ult i32 %hor_block_size, 32
  %n.vec500 = and i64 %286, 2147483616
  %287 = shl nuw nsw i64 %n.vec500, 1
  %ind.end503 = trunc nuw nsw i64 %n.vec500 to i32
  %288 = shl nuw nsw i64 %n.vec500, 1
  %289 = shl nuw nsw i64 %n.vec500, 1
  %290 = shl nuw nsw i64 %n.vec500, 1
  %291 = shl nuw nsw i64 %n.vec500, 1
  %292 = shl nuw nsw i64 %n.vec500, 1
  %broadcast.splatinsert571 = insertelement <8 x i32> poison, i32 %max_imgpel_value, i64 0
  %broadcast.splat572 = shufflevector <8 x i32> %broadcast.splatinsert571, <8 x i32> poison, <8 x i32> zeroinitializer
  %cmp.n578 = icmp eq i64 %n.vec500, %286
  br label %for.body.us.i298

for.body.us.i298:                                 ; preds = %for.cond13.for.inc42_crit_edge.us.i, %for.body.us.preheader.i296
  %indvars.iv.i299 = phi i64 [ 0, %for.body.us.preheader.i296 ], [ %indvars.iv.next.i322, %for.cond13.for.inc42_crit_edge.us.i ]
  %arrayidx.us.i300 = getelementptr inbounds ptr, ptr %arrayidx43, i64 %indvars.iv.i299
  %293 = load ptr, ptr %arrayidx.us.i300, align 8
  %294 = getelementptr i16, ptr %293, i64 %280
  %arrayidx6.us.i301 = getelementptr i8, ptr %294, i64 -4
  %add.ptr.us.i302 = getelementptr i8, ptr %294, i64 -2
  %add.ptr9.us.i303 = getelementptr inbounds i8, ptr %294, i64 4
  %add.ptr10.us.i304 = getelementptr inbounds i8, ptr %294, i64 6
  %arrayidx12.us.i305 = getelementptr inbounds ptr, ptr %block, i64 %indvars.iv.i299
  %295 = load ptr, ptr %arrayidx12.us.i305, align 8
  br i1 %min.iters.check497, label %for.body15.us.i306.preheader, label %vector.memcheck489

vector.memcheck489:                               ; preds = %for.body.us.i298
  %296 = getelementptr i8, ptr %295, i64 %283
  %scevgep490 = getelementptr i8, ptr %296, i64 2
  %297 = getelementptr i8, ptr %293, i64 %285
  %scevgep491 = getelementptr i8, ptr %297, i64 8
  %bound0492 = icmp ult ptr %295, %scevgep491
  %bound1493 = icmp ult ptr %arrayidx6.us.i301, %scevgep490
  %found.conflict494 = and i1 %bound0492, %bound1493
  br i1 %found.conflict494, label %for.body15.us.i306.preheader, label %vector.ph498

vector.ph498:                                     ; preds = %vector.memcheck489
  %ind.end501 = getelementptr i8, ptr %arrayidx6.us.i301, i64 %287
  %ind.end505 = getelementptr i8, ptr %294, i64 %288
  %ind.end507 = getelementptr i8, ptr %295, i64 %289
  %ind.end509 = getelementptr i8, ptr %add.ptr10.us.i304, i64 %290
  %ind.end511 = getelementptr i8, ptr %add.ptr9.us.i303, i64 %291
  %ind.end513 = getelementptr i8, ptr %add.ptr.us.i302, i64 %292
  br label %vector.body515

vector.body515:                                   ; preds = %vector.body515, %vector.ph498
  %index516 = phi i64 [ 0, %vector.ph498 ], [ %index.next577, %vector.body515 ]
  %offset.idx517 = shl i64 %index516, 1
  %next.gep518 = getelementptr i8, ptr %arrayidx6.us.i301, i64 %offset.idx517
  %offset.idx522 = shl i64 %index516, 1
  %next.gep523 = getelementptr i8, ptr %294, i64 %offset.idx522
  %offset.idx527 = shl i64 %index516, 1
  %next.gep528 = getelementptr i8, ptr %295, i64 %offset.idx527
  %offset.idx532 = shl i64 %index516, 1
  %next.gep533 = getelementptr i8, ptr %add.ptr10.us.i304, i64 %offset.idx532
  %offset.idx537 = shl i64 %index516, 1
  %next.gep538 = getelementptr i8, ptr %add.ptr9.us.i303, i64 %offset.idx537
  %offset.idx542 = shl i64 %index516, 1
  %next.gep543 = getelementptr i8, ptr %add.ptr.us.i302, i64 %offset.idx542
  %298 = getelementptr i8, ptr %next.gep523, i64 2
  %299 = getelementptr i8, ptr %next.gep518, i64 16
  %300 = getelementptr i8, ptr %next.gep518, i64 32
  %301 = getelementptr i8, ptr %next.gep518, i64 48
  %wide.load547 = load <8 x i16>, ptr %next.gep518, align 2, !alias.scope !21
  %wide.load548 = load <8 x i16>, ptr %299, align 2, !alias.scope !21
  %wide.load549 = load <8 x i16>, ptr %300, align 2, !alias.scope !21
  %wide.load550 = load <8 x i16>, ptr %301, align 2, !alias.scope !21
  %302 = zext <8 x i16> %wide.load547 to <8 x i32>
  %303 = zext <8 x i16> %wide.load548 to <8 x i32>
  %304 = zext <8 x i16> %wide.load549 to <8 x i32>
  %305 = zext <8 x i16> %wide.load550 to <8 x i32>
  %306 = getelementptr i8, ptr %next.gep533, i64 16
  %307 = getelementptr i8, ptr %next.gep533, i64 32
  %308 = getelementptr i8, ptr %next.gep533, i64 48
  %wide.load551 = load <8 x i16>, ptr %next.gep533, align 2, !alias.scope !21
  %wide.load552 = load <8 x i16>, ptr %306, align 2, !alias.scope !21
  %wide.load553 = load <8 x i16>, ptr %307, align 2, !alias.scope !21
  %wide.load554 = load <8 x i16>, ptr %308, align 2, !alias.scope !21
  %309 = zext <8 x i16> %wide.load551 to <8 x i32>
  %310 = zext <8 x i16> %wide.load552 to <8 x i32>
  %311 = zext <8 x i16> %wide.load553 to <8 x i32>
  %312 = zext <8 x i16> %wide.load554 to <8 x i32>
  %313 = getelementptr i8, ptr %next.gep543, i64 16
  %314 = getelementptr i8, ptr %next.gep543, i64 32
  %315 = getelementptr i8, ptr %next.gep543, i64 48
  %wide.load555 = load <8 x i16>, ptr %next.gep543, align 2, !alias.scope !21
  %wide.load556 = load <8 x i16>, ptr %313, align 2, !alias.scope !21
  %wide.load557 = load <8 x i16>, ptr %314, align 2, !alias.scope !21
  %wide.load558 = load <8 x i16>, ptr %315, align 2, !alias.scope !21
  %316 = zext <8 x i16> %wide.load555 to <8 x i32>
  %317 = zext <8 x i16> %wide.load556 to <8 x i32>
  %318 = zext <8 x i16> %wide.load557 to <8 x i32>
  %319 = zext <8 x i16> %wide.load558 to <8 x i32>
  %320 = getelementptr i8, ptr %next.gep538, i64 16
  %321 = getelementptr i8, ptr %next.gep538, i64 32
  %322 = getelementptr i8, ptr %next.gep538, i64 48
  %wide.load559 = load <8 x i16>, ptr %next.gep538, align 2, !alias.scope !21
  %wide.load560 = load <8 x i16>, ptr %320, align 2, !alias.scope !21
  %wide.load561 = load <8 x i16>, ptr %321, align 2, !alias.scope !21
  %wide.load562 = load <8 x i16>, ptr %322, align 2, !alias.scope !21
  %323 = zext <8 x i16> %wide.load559 to <8 x i32>
  %324 = zext <8 x i16> %wide.load560 to <8 x i32>
  %325 = zext <8 x i16> %wide.load561 to <8 x i32>
  %326 = zext <8 x i16> %wide.load562 to <8 x i32>
  %327 = add nuw nsw <8 x i32> %323, %316
  %328 = add nuw nsw <8 x i32> %324, %317
  %329 = add nuw nsw <8 x i32> %325, %318
  %330 = add nuw nsw <8 x i32> %326, %319
  %331 = mul nsw <8 x i32> %327, <i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5>
  %332 = mul nsw <8 x i32> %328, <i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5>
  %333 = mul nsw <8 x i32> %329, <i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5>
  %334 = mul nsw <8 x i32> %330, <i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5>
  %335 = getelementptr i8, ptr %next.gep523, i64 16
  %336 = getelementptr i8, ptr %next.gep523, i64 32
  %337 = getelementptr i8, ptr %next.gep523, i64 48
  %wide.load563 = load <8 x i16>, ptr %next.gep523, align 2, !alias.scope !21
  %wide.load564 = load <8 x i16>, ptr %335, align 2, !alias.scope !21
  %wide.load565 = load <8 x i16>, ptr %336, align 2, !alias.scope !21
  %wide.load566 = load <8 x i16>, ptr %337, align 2, !alias.scope !21
  %338 = zext <8 x i16> %wide.load563 to <8 x i32>
  %339 = zext <8 x i16> %wide.load564 to <8 x i32>
  %340 = zext <8 x i16> %wide.load565 to <8 x i32>
  %341 = zext <8 x i16> %wide.load566 to <8 x i32>
  %342 = getelementptr i8, ptr %next.gep523, i64 18
  %343 = getelementptr i8, ptr %next.gep523, i64 34
  %344 = getelementptr i8, ptr %next.gep523, i64 50
  %wide.load567 = load <8 x i16>, ptr %298, align 2, !alias.scope !21
  %wide.load568 = load <8 x i16>, ptr %342, align 2, !alias.scope !21
  %wide.load569 = load <8 x i16>, ptr %343, align 2, !alias.scope !21
  %wide.load570 = load <8 x i16>, ptr %344, align 2, !alias.scope !21
  %345 = zext <8 x i16> %wide.load567 to <8 x i32>
  %346 = zext <8 x i16> %wide.load568 to <8 x i32>
  %347 = zext <8 x i16> %wide.load569 to <8 x i32>
  %348 = zext <8 x i16> %wide.load570 to <8 x i32>
  %349 = add nuw nsw <8 x i32> %345, %338
  %350 = add nuw nsw <8 x i32> %346, %339
  %351 = add nuw nsw <8 x i32> %347, %340
  %352 = add nuw nsw <8 x i32> %348, %341
  %353 = mul nuw nsw <8 x i32> %349, <i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20>
  %354 = mul nuw nsw <8 x i32> %350, <i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20>
  %355 = mul nuw nsw <8 x i32> %351, <i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20>
  %356 = mul nuw nsw <8 x i32> %352, <i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20>
  %357 = add nuw nsw <8 x i32> %302, <i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16>
  %358 = add nuw nsw <8 x i32> %303, <i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16>
  %359 = add nuw nsw <8 x i32> %304, <i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16>
  %360 = add nuw nsw <8 x i32> %305, <i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16>
  %361 = add nuw nsw <8 x i32> %357, %309
  %362 = add nuw nsw <8 x i32> %358, %310
  %363 = add nuw nsw <8 x i32> %359, %311
  %364 = add nuw nsw <8 x i32> %360, %312
  %365 = add nsw <8 x i32> %361, %331
  %366 = add nsw <8 x i32> %362, %332
  %367 = add nsw <8 x i32> %363, %333
  %368 = add nsw <8 x i32> %364, %334
  %369 = add nsw <8 x i32> %365, %353
  %370 = add nsw <8 x i32> %366, %354
  %371 = add nsw <8 x i32> %367, %355
  %372 = add nsw <8 x i32> %368, %356
  %373 = ashr <8 x i32> %369, <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  %374 = ashr <8 x i32> %370, <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  %375 = ashr <8 x i32> %371, <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  %376 = ashr <8 x i32> %372, <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  %377 = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %373, <8 x i32> zeroinitializer)
  %378 = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %374, <8 x i32> zeroinitializer)
  %379 = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %375, <8 x i32> zeroinitializer)
  %380 = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %376, <8 x i32> zeroinitializer)
  %381 = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %377, <8 x i32> %broadcast.splat572)
  %382 = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %378, <8 x i32> %broadcast.splat572)
  %383 = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %379, <8 x i32> %broadcast.splat572)
  %384 = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %380, <8 x i32> %broadcast.splat572)
  %385 = trunc <8 x i32> %381 to <8 x i16>
  %386 = trunc <8 x i32> %382 to <8 x i16>
  %387 = trunc <8 x i32> %383 to <8 x i16>
  %388 = trunc <8 x i32> %384 to <8 x i16>
  %389 = getelementptr i8, ptr %next.gep528, i64 16
  %390 = getelementptr i8, ptr %next.gep528, i64 32
  %391 = getelementptr i8, ptr %next.gep528, i64 48
  store <8 x i16> %385, ptr %next.gep528, align 2, !alias.scope !24, !noalias !21
  store <8 x i16> %386, ptr %389, align 2, !alias.scope !24, !noalias !21
  store <8 x i16> %387, ptr %390, align 2, !alias.scope !24, !noalias !21
  store <8 x i16> %388, ptr %391, align 2, !alias.scope !24, !noalias !21
  %392 = and <8 x i32> %381, <i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535>
  %393 = and <8 x i32> %382, <i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535>
  %394 = and <8 x i32> %383, <i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535>
  %395 = and <8 x i32> %384, <i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535>
  %wide.load573 = load <8 x i16>, ptr %298, align 2, !alias.scope !21
  %wide.load574 = load <8 x i16>, ptr %342, align 2, !alias.scope !21
  %wide.load575 = load <8 x i16>, ptr %343, align 2, !alias.scope !21
  %wide.load576 = load <8 x i16>, ptr %344, align 2, !alias.scope !21
  %396 = zext <8 x i16> %wide.load573 to <8 x i32>
  %397 = zext <8 x i16> %wide.load574 to <8 x i32>
  %398 = zext <8 x i16> %wide.load575 to <8 x i32>
  %399 = zext <8 x i16> %wide.load576 to <8 x i32>
  %400 = add nuw nsw <8 x i32> %396, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %401 = add nuw nsw <8 x i32> %397, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %402 = add nuw nsw <8 x i32> %398, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %403 = add nuw nsw <8 x i32> %399, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %404 = add nuw nsw <8 x i32> %400, %392
  %405 = add nuw nsw <8 x i32> %401, %393
  %406 = add nuw nsw <8 x i32> %402, %394
  %407 = add nuw nsw <8 x i32> %403, %395
  %408 = lshr <8 x i32> %404, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %409 = lshr <8 x i32> %405, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %410 = lshr <8 x i32> %406, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %411 = lshr <8 x i32> %407, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %412 = trunc <8 x i32> %408 to <8 x i16>
  %413 = trunc <8 x i32> %409 to <8 x i16>
  %414 = trunc <8 x i32> %410 to <8 x i16>
  %415 = trunc <8 x i32> %411 to <8 x i16>
  store <8 x i16> %412, ptr %next.gep528, align 2, !alias.scope !24, !noalias !21
  store <8 x i16> %413, ptr %389, align 2, !alias.scope !24, !noalias !21
  store <8 x i16> %414, ptr %390, align 2, !alias.scope !24, !noalias !21
  store <8 x i16> %415, ptr %391, align 2, !alias.scope !24, !noalias !21
  %index.next577 = add nuw i64 %index516, 32
  %416 = icmp eq i64 %index.next577, %n.vec500
  br i1 %416, label %middle.block495, label %vector.body515, !llvm.loop !26

middle.block495:                                  ; preds = %vector.body515
  br i1 %cmp.n578, label %for.cond13.for.inc42_crit_edge.us.i, label %for.body15.us.i306.preheader

for.body15.us.i306.preheader:                     ; preds = %middle.block495, %vector.memcheck489, %for.body.us.i298
  %p0.070.us.i.ph = phi ptr [ %arrayidx6.us.i301, %vector.memcheck489 ], [ %arrayidx6.us.i301, %for.body.us.i298 ], [ %ind.end501, %middle.block495 ]
  %i.069.us.i.ph = phi i32 [ 0, %vector.memcheck489 ], [ 0, %for.body.us.i298 ], [ %ind.end503, %middle.block495 ]
  %.pn6068.us.i.ph = phi ptr [ %294, %vector.memcheck489 ], [ %294, %for.body.us.i298 ], [ %ind.end505, %middle.block495 ]
  %orig_line.067.us.i.ph = phi ptr [ %295, %vector.memcheck489 ], [ %295, %for.body.us.i298 ], [ %ind.end507, %middle.block495 ]
  %p5.066.us.i.ph = phi ptr [ %add.ptr10.us.i304, %vector.memcheck489 ], [ %add.ptr10.us.i304, %for.body.us.i298 ], [ %ind.end509, %middle.block495 ]
  %p4.065.us.i.ph = phi ptr [ %add.ptr9.us.i303, %vector.memcheck489 ], [ %add.ptr9.us.i303, %for.body.us.i298 ], [ %ind.end511, %middle.block495 ]
  %p1.062.us.i.ph = phi ptr [ %add.ptr.us.i302, %vector.memcheck489 ], [ %add.ptr.us.i302, %for.body.us.i298 ], [ %ind.end513, %middle.block495 ]
  br label %for.body15.us.i306

for.body15.us.i306:                               ; preds = %for.body15.us.i306.preheader, %for.body15.us.i306
  %p0.070.us.i = phi ptr [ %incdec.ptr.us.i307, %for.body15.us.i306 ], [ %p0.070.us.i.ph, %for.body15.us.i306.preheader ]
  %i.069.us.i = phi i32 [ %inc.us.i320, %for.body15.us.i306 ], [ %i.069.us.i.ph, %for.body15.us.i306.preheader ]
  %.pn6068.us.i = phi ptr [ %cur_line.0.us.i, %for.body15.us.i306 ], [ %.pn6068.us.i.ph, %for.body15.us.i306.preheader ]
  %orig_line.067.us.i = phi ptr [ %incdec.ptr41.us.i, %for.body15.us.i306 ], [ %orig_line.067.us.i.ph, %for.body15.us.i306.preheader ]
  %p5.066.us.i = phi ptr [ %incdec.ptr16.us.i309, %for.body15.us.i306 ], [ %p5.066.us.i.ph, %for.body15.us.i306.preheader ]
  %p4.065.us.i = phi ptr [ %incdec.ptr21.us.i, %for.body15.us.i306 ], [ %p4.065.us.i.ph, %for.body15.us.i306.preheader ]
  %p1.062.us.i = phi ptr [ %incdec.ptr19.us.i, %for.body15.us.i306 ], [ %p1.062.us.i.ph, %for.body15.us.i306.preheader ]
  %cur_line.0.us.i = getelementptr i8, ptr %.pn6068.us.i, i64 2
  %incdec.ptr.us.i307 = getelementptr inbounds i8, ptr %p0.070.us.i, i64 2
  %417 = load i16, ptr %p0.070.us.i, align 2
  %conv.us.i308 = zext i16 %417 to i32
  %incdec.ptr16.us.i309 = getelementptr inbounds i8, ptr %p5.066.us.i, i64 2
  %418 = load i16, ptr %p5.066.us.i, align 2
  %conv17.us.i310 = zext i16 %418 to i32
  %incdec.ptr19.us.i = getelementptr inbounds i8, ptr %p1.062.us.i, i64 2
  %419 = load i16, ptr %p1.062.us.i, align 2
  %conv20.us.i = zext i16 %419 to i32
  %incdec.ptr21.us.i = getelementptr inbounds i8, ptr %p4.065.us.i, i64 2
  %420 = load i16, ptr %p4.065.us.i, align 2
  %conv22.us.i = zext i16 %420 to i32
  %add23.us.i = add nuw nsw i32 %conv22.us.i, %conv20.us.i
  %mul.neg.us.i311 = mul nsw i32 %add23.us.i, -5
  %421 = load i16, ptr %.pn6068.us.i, align 2
  %conv26.us.i = zext i16 %421 to i32
  %422 = load i16, ptr %cur_line.0.us.i, align 2
  %conv28.us.i312 = zext i16 %422 to i32
  %add29.us.i = add nuw nsw i32 %conv28.us.i312, %conv26.us.i
  %mul30.us.i = mul nuw nsw i32 %add29.us.i, 20
  %add18.us.i313 = add nuw nsw i32 %conv.us.i308, 16
  %sub24.us.i = add nuw nsw i32 %add18.us.i313, %conv17.us.i310
  %add31.us.i314 = add nsw i32 %sub24.us.i, %mul.neg.us.i311
  %add32.us.i = add nsw i32 %add31.us.i314, %mul30.us.i
  %shr.us.i315 = ashr i32 %add32.us.i, 5
  %cond.i.i.us.i316 = tail call noundef i32 @llvm.smax.i32(i32 %shr.us.i315, i32 0)
  %cond.i4.i.us.i317 = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i.us.i316, i32 %max_imgpel_value)
  %conv33.us.i318 = trunc i32 %cond.i4.i.us.i317 to i16
  store i16 %conv33.us.i318, ptr %orig_line.067.us.i, align 2
  %conv34.us.i = and i32 %cond.i4.i.us.i317, 65535
  %423 = load i16, ptr %cur_line.0.us.i, align 2
  %conv36.us.i = zext i16 %423 to i32
  %add37.us.i319 = add nuw nsw i32 %conv36.us.i, 1
  %add38.us.i = add nuw nsw i32 %add37.us.i319, %conv34.us.i
  %shr39.us.i = lshr i32 %add38.us.i, 1
  %conv40.us.i = trunc nuw i32 %shr39.us.i to i16
  store i16 %conv40.us.i, ptr %orig_line.067.us.i, align 2
  %incdec.ptr41.us.i = getelementptr inbounds i8, ptr %orig_line.067.us.i, i64 2
  %inc.us.i320 = add nuw nsw i32 %i.069.us.i, 1
  %exitcond.not.i321 = icmp eq i32 %inc.us.i320, %hor_block_size
  br i1 %exitcond.not.i321, label %for.cond13.for.inc42_crit_edge.us.i, label %for.body15.us.i306, !llvm.loop !27

for.cond13.for.inc42_crit_edge.us.i:              ; preds = %for.body15.us.i306, %middle.block495
  %indvars.iv.next.i322 = add nuw nsw i64 %indvars.iv.i299, 1
  %exitcond75.not.i = icmp eq i64 %indvars.iv.next.i322, %wide.trip.count.i297
  br i1 %exitcond75.not.i, label %if.end127, label %for.body.us.i298

if.else45:                                        ; preds = %if.else26
  switch i32 %and, label %if.else85 [
    i32 0, label %if.then48
    i32 2, label %if.then68
  ]

if.then48:                                        ; preds = %if.else45
  %idxprom61 = sext i32 %cond.i4.i272 to i64
  %arrayidx62 = getelementptr inbounds ptr, ptr %cond, i64 %idxprom61
  switch i32 %and9, label %if.else60 [
    i32 1, label %if.then51
    i32 2, label %if.then57
  ]

if.then51:                                        ; preds = %if.then48
  tail call fastcc void @get_luma_01(ptr noundef %block, ptr noundef %arrayidx62, i32 noundef %ver_block_size, i32 noundef %hor_block_size, i32 noundef %cond.i4.i, i32 noundef %shift_x, i32 noundef %max_imgpel_value)
  br label %if.end127

if.then57:                                        ; preds = %if.then48
  %424 = getelementptr i8, ptr %arrayidx62, i64 -16
  %arrayidx59.val = load ptr, ptr %424, align 8
  tail call fastcc void @get_luma_02(ptr noundef %block, ptr %arrayidx59.val, i32 noundef %ver_block_size, i32 noundef %hor_block_size, i32 noundef %cond.i4.i, i32 noundef %shift_x, i32 noundef %max_imgpel_value)
  br label %if.end127

if.else60:                                        ; preds = %if.then48
  tail call fastcc void @get_luma_03(ptr noundef %block, ptr noundef %arrayidx62, i32 noundef %ver_block_size, i32 noundef %hor_block_size, i32 noundef %cond.i4.i, i32 noundef %shift_x, i32 noundef %max_imgpel_value)
  br label %if.end127

if.then68:                                        ; preds = %if.else45
  %idxprom81 = sext i32 %cond.i4.i272 to i64
  %arrayidx82 = getelementptr inbounds ptr, ptr %cond, i64 %idxprom81
  switch i32 %and9, label %if.else80 [
    i32 1, label %if.then71
    i32 2, label %if.then77
  ]

if.then71:                                        ; preds = %if.then68
  tail call fastcc void @get_luma_21(ptr noundef %block, ptr noundef %arrayidx82, ptr noundef %tmp_res, i32 noundef %ver_block_size, i32 noundef %hor_block_size, i32 noundef %cond.i4.i, i32 noundef %max_imgpel_value)
  br label %if.end127

if.then77:                                        ; preds = %if.then68
  tail call fastcc void @get_luma_22(ptr noundef %block, ptr noundef %arrayidx82, ptr noundef %tmp_res, i32 noundef %ver_block_size, i32 noundef %hor_block_size, i32 noundef %cond.i4.i, i32 noundef %max_imgpel_value)
  br label %if.end127

if.else80:                                        ; preds = %if.then68
  tail call fastcc void @get_luma_23(ptr noundef %block, ptr noundef %arrayidx82, ptr noundef %tmp_res, i32 noundef %ver_block_size, i32 noundef %hor_block_size, i32 noundef %cond.i4.i, i32 noundef %max_imgpel_value)
  br label %if.end127

if.else85:                                        ; preds = %if.else45
  %cmp86 = icmp eq i32 %and9, 2
  %cmp89 = icmp eq i32 %and, 1
  br i1 %cmp86, label %if.then88, label %if.else98

if.then88:                                        ; preds = %if.else85
  %idxprom92 = sext i32 %cond.i4.i272 to i64
  %arrayidx93 = getelementptr inbounds ptr, ptr %cond, i64 %idxprom92
  %425 = getelementptr i8, ptr %arrayidx93, i64 -16
  %arrayidx93.val = load ptr, ptr %425, align 8
  br i1 %cmp89, label %if.then91, label %if.else94

if.then91:                                        ; preds = %if.then88
  tail call fastcc void @get_luma_12(ptr noundef %block, ptr %arrayidx93.val, ptr noundef %tmp_res, i32 noundef %ver_block_size, i32 noundef %hor_block_size, i32 noundef %cond.i4.i, i32 noundef %shift_x, i32 noundef %max_imgpel_value)
  br label %if.end127

if.else94:                                        ; preds = %if.then88
  tail call fastcc void @get_luma_32(ptr noundef %block, ptr %arrayidx93.val, ptr noundef %tmp_res, i32 noundef %ver_block_size, i32 noundef %hor_block_size, i32 noundef %cond.i4.i, i32 noundef %shift_x, i32 noundef %max_imgpel_value)
  br label %if.end127

if.else98:                                        ; preds = %if.else85
  %cmp102 = icmp eq i32 %and9, 1
  %idxprom105 = sext i32 %cond.i4.i272 to i64
  %arrayidx106 = getelementptr inbounds ptr, ptr %cond, i64 %idxprom105
  br i1 %cmp89, label %if.then101, label %if.else111

if.then101:                                       ; preds = %if.else98
  br i1 %cmp102, label %if.then104, label %if.else107

if.then104:                                       ; preds = %if.then101
  tail call fastcc void @get_luma_11(ptr noundef %block, ptr noundef %arrayidx106, i32 noundef %ver_block_size, i32 noundef %hor_block_size, i32 noundef %cond.i4.i, i32 noundef %shift_x, i32 noundef %max_imgpel_value)
  br label %if.end127

if.else107:                                       ; preds = %if.then101
  tail call fastcc void @get_luma_13(ptr noundef %block, ptr noundef %arrayidx106, i32 noundef %ver_block_size, i32 noundef %hor_block_size, i32 noundef %cond.i4.i, i32 noundef %shift_x, i32 noundef %max_imgpel_value)
  br label %if.end127

if.else111:                                       ; preds = %if.else98
  br i1 %cmp102, label %if.then114, label %if.else117

if.then114:                                       ; preds = %if.else111
  tail call fastcc void @get_luma_31(ptr noundef %block, ptr noundef %arrayidx106, i32 noundef %ver_block_size, i32 noundef %hor_block_size, i32 noundef %cond.i4.i, i32 noundef %shift_x, i32 noundef %max_imgpel_value)
  br label %if.end127

if.else117:                                       ; preds = %if.else111
  tail call fastcc void @get_luma_33(ptr noundef %block, ptr noundef %arrayidx106, i32 noundef %ver_block_size, i32 noundef %hor_block_size, i32 noundef %cond.i4.i, i32 noundef %shift_x, i32 noundef %max_imgpel_value)
  br label %if.end127

if.end127.loopexit.unr-lcssa:                     ; preds = %for.body.i, %for.body.lr.ph.i
  %block.addr.015.i.unr = phi ptr [ %14, %for.body.lr.ph.i ], [ %add.ptr2.i.1, %for.body.i ]
  %cur_img.addr.014.i.unr = phi ptr [ %arrayidx25, %for.body.lr.ph.i ], [ %add.ptr4.i.1, %for.body.i ]
  %426 = and i32 %15, 2
  %lcmp.mod.not.not = icmp eq i32 %426, 0
  br i1 %lcmp.mod.not.not, label %for.body.i.epil, label %if.end127

for.body.i.epil:                                  ; preds = %if.end127.loopexit.unr-lcssa
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %block.addr.015.i.unr, ptr noundef nonnull align 2 dereferenceable(32) %cur_img.addr.014.i.unr, i64 32, i1 false)
  %add.ptr.i.epil = getelementptr inbounds i8, ptr %block.addr.015.i.unr, i64 32
  %add.ptr1.i.epil = getelementptr inbounds i16, ptr %cur_img.addr.014.i.unr, i64 %idx.ext.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %add.ptr.i.epil, ptr noundef nonnull align 2 dereferenceable(32) %add.ptr1.i.epil, i64 32, i1 false)
  br label %if.end127

if.end127:                                        ; preds = %for.cond9.for.inc30_crit_edge.us.i, %for.cond13.for.inc41_crit_edge.us.i, %for.cond13.for.inc42_crit_edge.us.i, %for.body.i.epil, %if.end127.loopexit.unr-lcssa, %for.body.lr.ph.i295, %if.else41, %for.body.lr.ph.i274, %if.then38, %for.body.lr.ph.i273, %if.then32, %if.then19, %if.then57, %if.else60, %if.then51, %if.else94, %if.then91, %if.then114, %if.else117, %if.then104, %if.else107, %if.then71, %if.else80, %if.then77, %if.then
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @get_luma_01(ptr nocapture noundef readonly %block, ptr nocapture noundef readonly %cur_imgY, i32 noundef %ver_block_size, i32 noundef %hor_block_size, i32 noundef %x_pos, i32 noundef %shift_x, i32 noundef %max_imgpel_value) unnamed_addr #5 {
entry:
  %idxprom = sext i32 %x_pos to i64
  %cmp78 = icmp sgt i32 %ver_block_size, 0
  br i1 %cmp78, label %for.body.lr.ph, label %for.end48

for.body.lr.ph:                                   ; preds = %entry
  %idx.ext = sext i32 %shift_x to i64
  %cmp1768 = icmp sgt i32 %hor_block_size, 0
  %idx.ext44 = sext i32 %hor_block_size to i64
  %idx.neg = sub nsw i64 0, %idx.ext44
  br i1 %cmp1768, label %for.body.us.preheader, label %for.end48

for.body.us.preheader:                            ; preds = %for.body.lr.ph
  %arrayidx = getelementptr inbounds i8, ptr %cur_imgY, i64 -16
  %0 = load ptr, ptr %arrayidx, align 8
  %arrayidx1 = getelementptr inbounds i16, ptr %0, i64 %idxprom
  %wide.trip.count = zext nneg i32 %ver_block_size to i64
  %1 = add nsw i32 %hor_block_size, -1
  %2 = zext i32 %1 to i64
  %3 = shl nuw nsw i64 %2, 1
  %4 = add nuw nsw i64 %3, 2
  %5 = mul nsw i64 %idx.ext, 6
  %6 = add nsw i64 %5, %3
  %7 = add nsw i64 %6, 2
  %8 = shl nsw i64 %idx.ext, 2
  %9 = add nsw i64 %8, %3
  %10 = add nsw i64 %9, 2
  %11 = shl nsw i64 %idx.ext, 3
  %12 = add nsw i64 %11, %3
  %13 = add nsw i64 %12, 2
  %14 = add nsw i64 %idx.ext, %2
  %15 = shl nsw i64 %14, 1
  %16 = add nsw i64 %15, 2
  %17 = mul nsw i64 %idx.ext, 10
  %18 = add nsw i64 %17, %3
  %19 = add nsw i64 %18, 2
  %20 = add nsw i64 %idxprom, %2
  %21 = shl nsw i64 %20, 1
  %22 = zext nneg i32 %hor_block_size to i64
  %min.iters.check = icmp ult i32 %hor_block_size, 32
  %n.vec = and i64 %22, 2147483616
  %23 = shl nuw nsw i64 %n.vec, 1
  %ind.end117 = trunc nuw nsw i64 %n.vec to i32
  %24 = shl nuw nsw i64 %n.vec, 1
  %25 = shl nuw nsw i64 %n.vec, 1
  %26 = shl nuw nsw i64 %n.vec, 1
  %27 = shl nuw nsw i64 %n.vec, 1
  %28 = shl nuw nsw i64 %n.vec, 1
  %29 = shl nuw nsw i64 %n.vec, 1
  %30 = shl nuw nsw i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %max_imgpel_value, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %22
  br label %for.body.us

for.body.us:                                      ; preds = %for.body.us.preheader, %for.cond16.for.end_crit_edge.us
  %indvars.iv = phi i64 [ 0, %for.body.us.preheader ], [ %indvars.iv.next, %for.cond16.for.end_crit_edge.us ]
  %p0.080.us = phi ptr [ %arrayidx1, %for.body.us.preheader ], [ %add.ptr45.us, %for.cond16.for.end_crit_edge.us ]
  %add.ptr.us = getelementptr i16, ptr %p0.080.us, i64 %idx.ext
  %add.ptr3.us = getelementptr i16, ptr %add.ptr.us, i64 %idx.ext
  %add.ptr5.us = getelementptr i16, ptr %add.ptr3.us, i64 %idx.ext
  %add.ptr7.us = getelementptr i16, ptr %add.ptr5.us, i64 %idx.ext
  %add.ptr9.us = getelementptr i16, ptr %add.ptr7.us, i64 %idx.ext
  %arrayidx11.us = getelementptr inbounds ptr, ptr %block, i64 %indvars.iv
  %31 = load ptr, ptr %arrayidx11.us, align 8
  %arrayidx13.us = getelementptr inbounds ptr, ptr %cur_imgY, i64 %indvars.iv
  %32 = load ptr, ptr %arrayidx13.us, align 8
  %arrayidx15.us = getelementptr i16, ptr %32, i64 %idxprom
  br i1 %min.iters.check, label %for.body18.us.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %for.body.us
  %scevgep = getelementptr i8, ptr %31, i64 %4
  %scevgep87 = getelementptr i8, ptr %p0.080.us, i64 %7
  %scevgep88 = getelementptr i8, ptr %p0.080.us, i64 %10
  %scevgep89 = getelementptr i8, ptr %p0.080.us, i64 %13
  %scevgep90 = getelementptr i8, ptr %p0.080.us, i64 %16
  %scevgep91 = getelementptr i8, ptr %p0.080.us, i64 %19
  %scevgep92 = getelementptr i8, ptr %p0.080.us, i64 %4
  %33 = getelementptr i8, ptr %32, i64 %21
  %scevgep93 = getelementptr i8, ptr %33, i64 2
  %34 = insertelement <4 x ptr> poison, ptr %31, i64 0
  %35 = shufflevector <4 x ptr> %34, <4 x ptr> poison, <4 x i32> zeroinitializer
  %36 = insertelement <4 x ptr> poison, ptr %scevgep87, i64 0
  %37 = insertelement <4 x ptr> %36, ptr %scevgep88, i64 1
  %38 = insertelement <4 x ptr> %37, ptr %scevgep89, i64 2
  %39 = insertelement <4 x ptr> %38, ptr %scevgep90, i64 3
  %40 = icmp ult <4 x ptr> %35, %39
  %41 = insertelement <4 x ptr> poison, ptr %add.ptr5.us, i64 0
  %42 = insertelement <4 x ptr> %41, ptr %add.ptr3.us, i64 1
  %43 = insertelement <4 x ptr> %42, ptr %add.ptr7.us, i64 2
  %44 = insertelement <4 x ptr> %43, ptr %add.ptr.us, i64 3
  %45 = insertelement <4 x ptr> poison, ptr %scevgep, i64 0
  %46 = shufflevector <4 x ptr> %45, <4 x ptr> poison, <4 x i32> zeroinitializer
  %47 = icmp ult <4 x ptr> %44, %46
  %48 = and <4 x i1> %40, %47
  %bound0105 = icmp ult ptr %31, %scevgep91
  %bound1106 = icmp ult ptr %add.ptr9.us, %scevgep
  %found.conflict107 = and i1 %bound0105, %bound1106
  %bound0109 = icmp ult ptr %31, %scevgep92
  %bound1110 = icmp ult ptr %p0.080.us, %scevgep
  %found.conflict111 = and i1 %bound0109, %bound1110
  %bound0113 = icmp ult ptr %31, %scevgep93
  %bound1114 = icmp ult ptr %arrayidx15.us, %scevgep
  %found.conflict115 = and i1 %bound0113, %bound1114
  %49 = bitcast <4 x i1> %48 to i4
  %50 = icmp ne i4 %49, 0
  %op.rdx = or i1 %50, %found.conflict107
  %op.rdx198 = or i1 %found.conflict111, %found.conflict115
  %op.rdx199 = or i1 %op.rdx, %op.rdx198
  br i1 %op.rdx199, label %for.body18.us.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %ind.end = getelementptr i8, ptr %p0.080.us, i64 %23
  %ind.end119 = getelementptr i8, ptr %arrayidx15.us, i64 %24
  %ind.end121 = getelementptr i8, ptr %31, i64 %25
  %ind.end123 = getelementptr i8, ptr %add.ptr9.us, i64 %26
  %ind.end125 = getelementptr i8, ptr %add.ptr7.us, i64 %27
  %ind.end127 = getelementptr i8, ptr %add.ptr5.us, i64 %28
  %ind.end129 = getelementptr i8, ptr %add.ptr3.us, i64 %29
  %ind.end131 = getelementptr i8, ptr %add.ptr.us, i64 %30
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %offset.idx = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %p0.080.us, i64 %offset.idx
  %offset.idx136 = shl i64 %index, 1
  %next.gep137 = getelementptr i8, ptr %arrayidx15.us, i64 %offset.idx136
  %offset.idx141 = shl i64 %index, 1
  %next.gep142 = getelementptr i8, ptr %31, i64 %offset.idx141
  %offset.idx146 = shl i64 %index, 1
  %next.gep147 = getelementptr i8, ptr %add.ptr9.us, i64 %offset.idx146
  %offset.idx151 = shl i64 %index, 1
  %next.gep152 = getelementptr i8, ptr %add.ptr7.us, i64 %offset.idx151
  %offset.idx156 = shl i64 %index, 1
  %next.gep157 = getelementptr i8, ptr %add.ptr5.us, i64 %offset.idx156
  %offset.idx161 = shl i64 %index, 1
  %next.gep162 = getelementptr i8, ptr %add.ptr3.us, i64 %offset.idx161
  %offset.idx166 = shl i64 %index, 1
  %next.gep167 = getelementptr i8, ptr %add.ptr.us, i64 %offset.idx166
  %51 = getelementptr i8, ptr %next.gep, i64 16
  %52 = getelementptr i8, ptr %next.gep, i64 32
  %53 = getelementptr i8, ptr %next.gep, i64 48
  %wide.load = load <8 x i16>, ptr %next.gep, align 2, !alias.scope !28
  %wide.load171 = load <8 x i16>, ptr %51, align 2, !alias.scope !28
  %wide.load172 = load <8 x i16>, ptr %52, align 2, !alias.scope !28
  %wide.load173 = load <8 x i16>, ptr %53, align 2, !alias.scope !28
  %54 = zext <8 x i16> %wide.load to <8 x i32>
  %55 = zext <8 x i16> %wide.load171 to <8 x i32>
  %56 = zext <8 x i16> %wide.load172 to <8 x i32>
  %57 = zext <8 x i16> %wide.load173 to <8 x i32>
  %58 = getelementptr i8, ptr %next.gep147, i64 16
  %59 = getelementptr i8, ptr %next.gep147, i64 32
  %60 = getelementptr i8, ptr %next.gep147, i64 48
  %wide.load174 = load <8 x i16>, ptr %next.gep147, align 2, !alias.scope !31
  %wide.load175 = load <8 x i16>, ptr %58, align 2, !alias.scope !31
  %wide.load176 = load <8 x i16>, ptr %59, align 2, !alias.scope !31
  %wide.load177 = load <8 x i16>, ptr %60, align 2, !alias.scope !31
  %61 = zext <8 x i16> %wide.load174 to <8 x i32>
  %62 = zext <8 x i16> %wide.load175 to <8 x i32>
  %63 = zext <8 x i16> %wide.load176 to <8 x i32>
  %64 = zext <8 x i16> %wide.load177 to <8 x i32>
  %65 = getelementptr i8, ptr %next.gep167, i64 16
  %66 = getelementptr i8, ptr %next.gep167, i64 32
  %67 = getelementptr i8, ptr %next.gep167, i64 48
  %wide.load178 = load <8 x i16>, ptr %next.gep167, align 2, !alias.scope !33
  %wide.load179 = load <8 x i16>, ptr %65, align 2, !alias.scope !33
  %wide.load180 = load <8 x i16>, ptr %66, align 2, !alias.scope !33
  %wide.load181 = load <8 x i16>, ptr %67, align 2, !alias.scope !33
  %68 = zext <8 x i16> %wide.load178 to <8 x i32>
  %69 = zext <8 x i16> %wide.load179 to <8 x i32>
  %70 = zext <8 x i16> %wide.load180 to <8 x i32>
  %71 = zext <8 x i16> %wide.load181 to <8 x i32>
  %72 = getelementptr i8, ptr %next.gep152, i64 16
  %73 = getelementptr i8, ptr %next.gep152, i64 32
  %74 = getelementptr i8, ptr %next.gep152, i64 48
  %wide.load182 = load <8 x i16>, ptr %next.gep152, align 2, !alias.scope !35
  %wide.load183 = load <8 x i16>, ptr %72, align 2, !alias.scope !35
  %wide.load184 = load <8 x i16>, ptr %73, align 2, !alias.scope !35
  %wide.load185 = load <8 x i16>, ptr %74, align 2, !alias.scope !35
  %75 = zext <8 x i16> %wide.load182 to <8 x i32>
  %76 = zext <8 x i16> %wide.load183 to <8 x i32>
  %77 = zext <8 x i16> %wide.load184 to <8 x i32>
  %78 = zext <8 x i16> %wide.load185 to <8 x i32>
  %79 = add nuw nsw <8 x i32> %75, %68
  %80 = add nuw nsw <8 x i32> %76, %69
  %81 = add nuw nsw <8 x i32> %77, %70
  %82 = add nuw nsw <8 x i32> %78, %71
  %83 = mul nsw <8 x i32> %79, <i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5>
  %84 = mul nsw <8 x i32> %80, <i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5>
  %85 = mul nsw <8 x i32> %81, <i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5>
  %86 = mul nsw <8 x i32> %82, <i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5>
  %87 = getelementptr i8, ptr %next.gep162, i64 16
  %88 = getelementptr i8, ptr %next.gep162, i64 32
  %89 = getelementptr i8, ptr %next.gep162, i64 48
  %wide.load186 = load <8 x i16>, ptr %next.gep162, align 2, !alias.scope !37
  %wide.load187 = load <8 x i16>, ptr %87, align 2, !alias.scope !37
  %wide.load188 = load <8 x i16>, ptr %88, align 2, !alias.scope !37
  %wide.load189 = load <8 x i16>, ptr %89, align 2, !alias.scope !37
  %90 = zext <8 x i16> %wide.load186 to <8 x i32>
  %91 = zext <8 x i16> %wide.load187 to <8 x i32>
  %92 = zext <8 x i16> %wide.load188 to <8 x i32>
  %93 = zext <8 x i16> %wide.load189 to <8 x i32>
  %94 = getelementptr i8, ptr %next.gep157, i64 16
  %95 = getelementptr i8, ptr %next.gep157, i64 32
  %96 = getelementptr i8, ptr %next.gep157, i64 48
  %wide.load190 = load <8 x i16>, ptr %next.gep157, align 2, !alias.scope !39
  %wide.load191 = load <8 x i16>, ptr %94, align 2, !alias.scope !39
  %wide.load192 = load <8 x i16>, ptr %95, align 2, !alias.scope !39
  %wide.load193 = load <8 x i16>, ptr %96, align 2, !alias.scope !39
  %97 = zext <8 x i16> %wide.load190 to <8 x i32>
  %98 = zext <8 x i16> %wide.load191 to <8 x i32>
  %99 = zext <8 x i16> %wide.load192 to <8 x i32>
  %100 = zext <8 x i16> %wide.load193 to <8 x i32>
  %101 = add nuw nsw <8 x i32> %97, %90
  %102 = add nuw nsw <8 x i32> %98, %91
  %103 = add nuw nsw <8 x i32> %99, %92
  %104 = add nuw nsw <8 x i32> %100, %93
  %105 = mul nuw nsw <8 x i32> %101, <i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20>
  %106 = mul nuw nsw <8 x i32> %102, <i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20>
  %107 = mul nuw nsw <8 x i32> %103, <i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20>
  %108 = mul nuw nsw <8 x i32> %104, <i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20>
  %109 = add nuw nsw <8 x i32> %54, <i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16>
  %110 = add nuw nsw <8 x i32> %55, <i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16>
  %111 = add nuw nsw <8 x i32> %56, <i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16>
  %112 = add nuw nsw <8 x i32> %57, <i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16>
  %113 = add nuw nsw <8 x i32> %109, %61
  %114 = add nuw nsw <8 x i32> %110, %62
  %115 = add nuw nsw <8 x i32> %111, %63
  %116 = add nuw nsw <8 x i32> %112, %64
  %117 = add nsw <8 x i32> %113, %83
  %118 = add nsw <8 x i32> %114, %84
  %119 = add nsw <8 x i32> %115, %85
  %120 = add nsw <8 x i32> %116, %86
  %121 = add nsw <8 x i32> %117, %105
  %122 = add nsw <8 x i32> %118, %106
  %123 = add nsw <8 x i32> %119, %107
  %124 = add nsw <8 x i32> %120, %108
  %125 = ashr <8 x i32> %121, <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  %126 = ashr <8 x i32> %122, <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  %127 = ashr <8 x i32> %123, <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  %128 = ashr <8 x i32> %124, <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  %129 = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %125, <8 x i32> zeroinitializer)
  %130 = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %126, <8 x i32> zeroinitializer)
  %131 = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %127, <8 x i32> zeroinitializer)
  %132 = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %128, <8 x i32> zeroinitializer)
  %133 = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %129, <8 x i32> %broadcast.splat)
  %134 = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %130, <8 x i32> %broadcast.splat)
  %135 = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %131, <8 x i32> %broadcast.splat)
  %136 = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %132, <8 x i32> %broadcast.splat)
  %137 = trunc <8 x i32> %133 to <8 x i16>
  %138 = trunc <8 x i32> %134 to <8 x i16>
  %139 = trunc <8 x i32> %135 to <8 x i16>
  %140 = trunc <8 x i32> %136 to <8 x i16>
  %141 = getelementptr i8, ptr %next.gep142, i64 16
  %142 = getelementptr i8, ptr %next.gep142, i64 32
  %143 = getelementptr i8, ptr %next.gep142, i64 48
  store <8 x i16> %137, ptr %next.gep142, align 2, !alias.scope !41, !noalias !43
  store <8 x i16> %138, ptr %141, align 2, !alias.scope !41, !noalias !43
  store <8 x i16> %139, ptr %142, align 2, !alias.scope !41, !noalias !43
  store <8 x i16> %140, ptr %143, align 2, !alias.scope !41, !noalias !43
  %144 = and <8 x i32> %133, <i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535>
  %145 = and <8 x i32> %134, <i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535>
  %146 = and <8 x i32> %135, <i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535>
  %147 = and <8 x i32> %136, <i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535>
  %148 = getelementptr i8, ptr %next.gep137, i64 16
  %149 = getelementptr i8, ptr %next.gep137, i64 32
  %150 = getelementptr i8, ptr %next.gep137, i64 48
  %wide.load194 = load <8 x i16>, ptr %next.gep137, align 2, !alias.scope !45
  %wide.load195 = load <8 x i16>, ptr %148, align 2, !alias.scope !45
  %wide.load196 = load <8 x i16>, ptr %149, align 2, !alias.scope !45
  %wide.load197 = load <8 x i16>, ptr %150, align 2, !alias.scope !45
  %151 = zext <8 x i16> %wide.load194 to <8 x i32>
  %152 = zext <8 x i16> %wide.load195 to <8 x i32>
  %153 = zext <8 x i16> %wide.load196 to <8 x i32>
  %154 = zext <8 x i16> %wide.load197 to <8 x i32>
  %155 = add nuw nsw <8 x i32> %151, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %156 = add nuw nsw <8 x i32> %152, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %157 = add nuw nsw <8 x i32> %153, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %158 = add nuw nsw <8 x i32> %154, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %159 = add nuw nsw <8 x i32> %155, %144
  %160 = add nuw nsw <8 x i32> %156, %145
  %161 = add nuw nsw <8 x i32> %157, %146
  %162 = add nuw nsw <8 x i32> %158, %147
  %163 = lshr <8 x i32> %159, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %164 = lshr <8 x i32> %160, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %165 = lshr <8 x i32> %161, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %166 = lshr <8 x i32> %162, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %167 = trunc <8 x i32> %163 to <8 x i16>
  %168 = trunc <8 x i32> %164 to <8 x i16>
  %169 = trunc <8 x i32> %165 to <8 x i16>
  %170 = trunc <8 x i32> %166 to <8 x i16>
  store <8 x i16> %167, ptr %next.gep142, align 2, !alias.scope !41, !noalias !43
  store <8 x i16> %168, ptr %141, align 2, !alias.scope !41, !noalias !43
  store <8 x i16> %169, ptr %142, align 2, !alias.scope !41, !noalias !43
  store <8 x i16> %170, ptr %143, align 2, !alias.scope !41, !noalias !43
  %index.next = add nuw i64 %index, 32
  %171 = icmp eq i64 %index.next, %n.vec
  br i1 %171, label %middle.block, label %vector.body, !llvm.loop !46

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %for.cond16.for.end_crit_edge.us, label %for.body18.us.preheader

for.body18.us.preheader:                          ; preds = %middle.block, %vector.memcheck, %for.body.us
  %p0.177.us.ph = phi ptr [ %p0.080.us, %vector.memcheck ], [ %p0.080.us, %for.body.us ], [ %ind.end, %middle.block ]
  %i.076.us.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %for.body.us ], [ %ind.end117, %middle.block ]
  %cur_line.075.us.ph = phi ptr [ %arrayidx15.us, %vector.memcheck ], [ %arrayidx15.us, %for.body.us ], [ %ind.end119, %middle.block ]
  %orig_line.074.us.ph = phi ptr [ %31, %vector.memcheck ], [ %31, %for.body.us ], [ %ind.end121, %middle.block ]
  %p5.073.us.ph = phi ptr [ %add.ptr9.us, %vector.memcheck ], [ %add.ptr9.us, %for.body.us ], [ %ind.end123, %middle.block ]
  %p4.072.us.ph = phi ptr [ %add.ptr7.us, %vector.memcheck ], [ %add.ptr7.us, %for.body.us ], [ %ind.end125, %middle.block ]
  %p3.071.us.ph = phi ptr [ %add.ptr5.us, %vector.memcheck ], [ %add.ptr5.us, %for.body.us ], [ %ind.end127, %middle.block ]
  %p2.070.us.ph = phi ptr [ %add.ptr3.us, %vector.memcheck ], [ %add.ptr3.us, %for.body.us ], [ %ind.end129, %middle.block ]
  %p1.069.us.ph = phi ptr [ %add.ptr.us, %vector.memcheck ], [ %add.ptr.us, %for.body.us ], [ %ind.end131, %middle.block ]
  br label %for.body18.us

for.body18.us:                                    ; preds = %for.body18.us.preheader, %for.body18.us
  %p0.177.us = phi ptr [ %incdec.ptr.us, %for.body18.us ], [ %p0.177.us.ph, %for.body18.us.preheader ]
  %i.076.us = phi i32 [ %inc43.us, %for.body18.us ], [ %i.076.us.ph, %for.body18.us.preheader ]
  %cur_line.075.us = phi ptr [ %incdec.ptr36.us, %for.body18.us ], [ %cur_line.075.us.ph, %for.body18.us.preheader ]
  %orig_line.074.us = phi ptr [ %incdec.ptr42.us, %for.body18.us ], [ %orig_line.074.us.ph, %for.body18.us.preheader ]
  %p5.073.us = phi ptr [ %incdec.ptr19.us, %for.body18.us ], [ %p5.073.us.ph, %for.body18.us.preheader ]
  %p4.072.us = phi ptr [ %incdec.ptr23.us, %for.body18.us ], [ %p4.072.us.ph, %for.body18.us.preheader ]
  %p3.071.us = phi ptr [ %incdec.ptr28.us, %for.body18.us ], [ %p3.071.us.ph, %for.body18.us.preheader ]
  %p2.070.us = phi ptr [ %incdec.ptr26.us, %for.body18.us ], [ %p2.070.us.ph, %for.body18.us.preheader ]
  %p1.069.us = phi ptr [ %incdec.ptr21.us, %for.body18.us ], [ %p1.069.us.ph, %for.body18.us.preheader ]
  %incdec.ptr.us = getelementptr inbounds i8, ptr %p0.177.us, i64 2
  %172 = load i16, ptr %p0.177.us, align 2
  %conv.us = zext i16 %172 to i32
  %incdec.ptr19.us = getelementptr inbounds i8, ptr %p5.073.us, i64 2
  %173 = load i16, ptr %p5.073.us, align 2
  %conv20.us = zext i16 %173 to i32
  %incdec.ptr21.us = getelementptr inbounds i8, ptr %p1.069.us, i64 2
  %174 = load i16, ptr %p1.069.us, align 2
  %conv22.us = zext i16 %174 to i32
  %incdec.ptr23.us = getelementptr inbounds i8, ptr %p4.072.us, i64 2
  %175 = load i16, ptr %p4.072.us, align 2
  %conv24.us = zext i16 %175 to i32
  %add25.us = add nuw nsw i32 %conv24.us, %conv22.us
  %mul.neg.us = mul nsw i32 %add25.us, -5
  %incdec.ptr26.us = getelementptr inbounds i8, ptr %p2.070.us, i64 2
  %176 = load i16, ptr %p2.070.us, align 2
  %conv27.us = zext i16 %176 to i32
  %incdec.ptr28.us = getelementptr inbounds i8, ptr %p3.071.us, i64 2
  %177 = load i16, ptr %p3.071.us, align 2
  %conv29.us = zext i16 %177 to i32
  %add30.us = add nuw nsw i32 %conv29.us, %conv27.us
  %mul31.us = mul nuw nsw i32 %add30.us, 20
  %add.us = add nuw nsw i32 %conv.us, 16
  %sub.us = add nuw nsw i32 %add.us, %conv20.us
  %add32.us = add nsw i32 %sub.us, %mul.neg.us
  %add33.us = add nsw i32 %add32.us, %mul31.us
  %shr.us = ashr i32 %add33.us, 5
  %cond.i.i.us = tail call noundef i32 @llvm.smax.i32(i32 %shr.us, i32 0)
  %cond.i4.i.us = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i.us, i32 %max_imgpel_value)
  %conv34.us = trunc i32 %cond.i4.i.us to i16
  store i16 %conv34.us, ptr %orig_line.074.us, align 2
  %conv35.us = and i32 %cond.i4.i.us, 65535
  %incdec.ptr36.us = getelementptr inbounds i8, ptr %cur_line.075.us, i64 2
  %178 = load i16, ptr %cur_line.075.us, align 2
  %conv37.us = zext i16 %178 to i32
  %add38.us = add nuw nsw i32 %conv37.us, 1
  %add39.us = add nuw nsw i32 %add38.us, %conv35.us
  %shr40.us = lshr i32 %add39.us, 1
  %conv41.us = trunc nuw i32 %shr40.us to i16
  store i16 %conv41.us, ptr %orig_line.074.us, align 2
  %incdec.ptr42.us = getelementptr inbounds i8, ptr %orig_line.074.us, i64 2
  %inc43.us = add nuw nsw i32 %i.076.us, 1
  %exitcond.not = icmp eq i32 %inc43.us, %hor_block_size
  br i1 %exitcond.not, label %for.cond16.for.end_crit_edge.us, label %for.body18.us, !llvm.loop !47

for.cond16.for.end_crit_edge.us:                  ; preds = %for.body18.us, %middle.block
  %incdec.ptr21.us.lcssa = phi ptr [ %ind.end131, %middle.block ], [ %incdec.ptr21.us, %for.body18.us ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %add.ptr45.us = getelementptr inbounds i16, ptr %incdec.ptr21.us.lcssa, i64 %idx.neg
  %exitcond86.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond86.not, label %for.end48, label %for.body.us

for.end48:                                        ; preds = %for.cond16.for.end_crit_edge.us, %for.body.lr.ph, %entry
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @get_luma_02(ptr nocapture noundef readonly %block, ptr nocapture readonly %cur_imgY.-16.val, i32 noundef %ver_block_size, i32 noundef %hor_block_size, i32 noundef %x_pos, i32 noundef %shift_x, i32 noundef %max_imgpel_value) unnamed_addr #5 {
entry:
  %cmp10 = icmp sgt i32 %ver_block_size, 0
  br i1 %cmp10, label %for.body.lr.ph, label %for.end36

for.body.lr.ph:                                   ; preds = %entry
  %idx.ext = sext i32 %shift_x to i64
  %cmp131 = icmp sgt i32 %hor_block_size, 0
  %idx.ext32 = sext i32 %hor_block_size to i64
  %idx.neg = sub nsw i64 0, %idx.ext32
  br i1 %cmp131, label %for.body.us.preheader, label %for.end36

for.body.us.preheader:                            ; preds = %for.body.lr.ph
  %idxprom = sext i32 %x_pos to i64
  %arrayidx1 = getelementptr inbounds i16, ptr %cur_imgY.-16.val, i64 %idxprom
  %wide.trip.count = zext nneg i32 %ver_block_size to i64
  %0 = mul nsw i64 %idx.ext, -6
  %1 = mul nsw i64 %idx.ext, -10
  %2 = zext nneg i32 %hor_block_size to i64
  %min.iters.check = icmp ult i32 %hor_block_size, 32
  %3 = shl nsw i64 %idx.ext, 2
  %4 = shl nsw i64 %idx.ext, 3
  %5 = shl nsw i64 %idx.ext, 1
  %n.vec = and i64 %2, 2147483616
  %6 = shl nuw nsw i64 %n.vec, 1
  %ind.end26 = trunc nuw nsw i64 %n.vec to i32
  %7 = shl nuw nsw i64 %n.vec, 1
  %8 = shl nuw nsw i64 %n.vec, 1
  %9 = shl nuw nsw i64 %n.vec, 1
  %10 = shl nuw nsw i64 %n.vec, 1
  %11 = shl nuw nsw i64 %n.vec, 1
  %12 = shl nuw nsw i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %max_imgpel_value, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %2
  br label %for.body.us

for.body.us:                                      ; preds = %for.body.us.preheader, %for.cond12.for.end_crit_edge.us
  %indvars.iv = phi i64 [ 0, %for.body.us.preheader ], [ %indvars.iv.next, %for.cond12.for.end_crit_edge.us ]
  %p0.012.us = phi ptr [ %arrayidx1, %for.body.us.preheader ], [ %add.ptr33.us, %for.cond12.for.end_crit_edge.us ]
  %add.ptr.us = getelementptr inbounds i16, ptr %p0.012.us, i64 %idx.ext
  %add.ptr3.us = getelementptr inbounds i16, ptr %add.ptr.us, i64 %idx.ext
  %add.ptr5.us = getelementptr inbounds i16, ptr %add.ptr3.us, i64 %idx.ext
  %add.ptr7.us = getelementptr inbounds i16, ptr %add.ptr5.us, i64 %idx.ext
  %add.ptr9.us = getelementptr inbounds i16, ptr %add.ptr7.us, i64 %idx.ext
  %arrayidx11.us = getelementptr inbounds ptr, ptr %block, i64 %indvars.iv
  %13 = load ptr, ptr %arrayidx11.us, align 8
  br i1 %min.iters.check, label %for.body14.us.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %for.body.us
  %14 = ptrtoint ptr %13 to i64
  %p0.012.us16 = ptrtoint ptr %p0.012.us to i64
  %15 = add i64 %0, %14
  %16 = sub i64 %15, %p0.012.us16
  %diff.check = icmp ult i64 %16, 64
  %17 = add i64 %3, %p0.012.us16
  %18 = sub i64 %14, %17
  %diff.check17 = icmp ult i64 %18, 64
  %conflict.rdx = or i1 %diff.check, %diff.check17
  %19 = add i64 %4, %p0.012.us16
  %20 = sub i64 %14, %19
  %diff.check18 = icmp ult i64 %20, 64
  %conflict.rdx19 = or i1 %conflict.rdx, %diff.check18
  %21 = add i64 %5, %p0.012.us16
  %22 = sub i64 %14, %21
  %diff.check20 = icmp ult i64 %22, 64
  %conflict.rdx21 = or i1 %conflict.rdx19, %diff.check20
  %23 = add i64 %1, %14
  %24 = sub i64 %23, %p0.012.us16
  %diff.check22 = icmp ult i64 %24, 64
  %conflict.rdx23 = or i1 %conflict.rdx21, %diff.check22
  %25 = sub i64 %14, %p0.012.us16
  %diff.check24 = icmp ult i64 %25, 64
  %conflict.rdx25 = or i1 %conflict.rdx23, %diff.check24
  br i1 %conflict.rdx25, label %for.body14.us.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %ind.end = getelementptr i8, ptr %p0.012.us, i64 %6
  %ind.end28 = getelementptr i8, ptr %13, i64 %7
  %ind.end30 = getelementptr i8, ptr %add.ptr9.us, i64 %8
  %ind.end32 = getelementptr i8, ptr %add.ptr7.us, i64 %9
  %ind.end34 = getelementptr i8, ptr %add.ptr5.us, i64 %10
  %ind.end36 = getelementptr i8, ptr %add.ptr3.us, i64 %11
  %ind.end38 = getelementptr i8, ptr %add.ptr.us, i64 %12
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %offset.idx = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %p0.012.us, i64 %offset.idx
  %offset.idx43 = shl i64 %index, 1
  %next.gep44 = getelementptr i8, ptr %13, i64 %offset.idx43
  %offset.idx48 = shl i64 %index, 1
  %next.gep49 = getelementptr i8, ptr %add.ptr9.us, i64 %offset.idx48
  %offset.idx53 = shl i64 %index, 1
  %next.gep54 = getelementptr i8, ptr %add.ptr7.us, i64 %offset.idx53
  %offset.idx58 = shl i64 %index, 1
  %next.gep59 = getelementptr i8, ptr %add.ptr5.us, i64 %offset.idx58
  %offset.idx63 = shl i64 %index, 1
  %next.gep64 = getelementptr i8, ptr %add.ptr3.us, i64 %offset.idx63
  %offset.idx68 = shl i64 %index, 1
  %next.gep69 = getelementptr i8, ptr %add.ptr.us, i64 %offset.idx68
  %26 = getelementptr i8, ptr %next.gep, i64 16
  %27 = getelementptr i8, ptr %next.gep, i64 32
  %28 = getelementptr i8, ptr %next.gep, i64 48
  %wide.load = load <8 x i16>, ptr %next.gep, align 2
  %wide.load73 = load <8 x i16>, ptr %26, align 2
  %wide.load74 = load <8 x i16>, ptr %27, align 2
  %wide.load75 = load <8 x i16>, ptr %28, align 2
  %29 = zext <8 x i16> %wide.load to <8 x i32>
  %30 = zext <8 x i16> %wide.load73 to <8 x i32>
  %31 = zext <8 x i16> %wide.load74 to <8 x i32>
  %32 = zext <8 x i16> %wide.load75 to <8 x i32>
  %33 = getelementptr i8, ptr %next.gep49, i64 16
  %34 = getelementptr i8, ptr %next.gep49, i64 32
  %35 = getelementptr i8, ptr %next.gep49, i64 48
  %wide.load76 = load <8 x i16>, ptr %next.gep49, align 2
  %wide.load77 = load <8 x i16>, ptr %33, align 2
  %wide.load78 = load <8 x i16>, ptr %34, align 2
  %wide.load79 = load <8 x i16>, ptr %35, align 2
  %36 = zext <8 x i16> %wide.load76 to <8 x i32>
  %37 = zext <8 x i16> %wide.load77 to <8 x i32>
  %38 = zext <8 x i16> %wide.load78 to <8 x i32>
  %39 = zext <8 x i16> %wide.load79 to <8 x i32>
  %40 = getelementptr i8, ptr %next.gep69, i64 16
  %41 = getelementptr i8, ptr %next.gep69, i64 32
  %42 = getelementptr i8, ptr %next.gep69, i64 48
  %wide.load80 = load <8 x i16>, ptr %next.gep69, align 2
  %wide.load81 = load <8 x i16>, ptr %40, align 2
  %wide.load82 = load <8 x i16>, ptr %41, align 2
  %wide.load83 = load <8 x i16>, ptr %42, align 2
  %43 = zext <8 x i16> %wide.load80 to <8 x i32>
  %44 = zext <8 x i16> %wide.load81 to <8 x i32>
  %45 = zext <8 x i16> %wide.load82 to <8 x i32>
  %46 = zext <8 x i16> %wide.load83 to <8 x i32>
  %47 = getelementptr i8, ptr %next.gep54, i64 16
  %48 = getelementptr i8, ptr %next.gep54, i64 32
  %49 = getelementptr i8, ptr %next.gep54, i64 48
  %wide.load84 = load <8 x i16>, ptr %next.gep54, align 2
  %wide.load85 = load <8 x i16>, ptr %47, align 2
  %wide.load86 = load <8 x i16>, ptr %48, align 2
  %wide.load87 = load <8 x i16>, ptr %49, align 2
  %50 = zext <8 x i16> %wide.load84 to <8 x i32>
  %51 = zext <8 x i16> %wide.load85 to <8 x i32>
  %52 = zext <8 x i16> %wide.load86 to <8 x i32>
  %53 = zext <8 x i16> %wide.load87 to <8 x i32>
  %54 = add nuw nsw <8 x i32> %50, %43
  %55 = add nuw nsw <8 x i32> %51, %44
  %56 = add nuw nsw <8 x i32> %52, %45
  %57 = add nuw nsw <8 x i32> %53, %46
  %58 = mul nsw <8 x i32> %54, <i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5>
  %59 = mul nsw <8 x i32> %55, <i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5>
  %60 = mul nsw <8 x i32> %56, <i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5>
  %61 = mul nsw <8 x i32> %57, <i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5>
  %62 = getelementptr i8, ptr %next.gep64, i64 16
  %63 = getelementptr i8, ptr %next.gep64, i64 32
  %64 = getelementptr i8, ptr %next.gep64, i64 48
  %wide.load88 = load <8 x i16>, ptr %next.gep64, align 2
  %wide.load89 = load <8 x i16>, ptr %62, align 2
  %wide.load90 = load <8 x i16>, ptr %63, align 2
  %wide.load91 = load <8 x i16>, ptr %64, align 2
  %65 = zext <8 x i16> %wide.load88 to <8 x i32>
  %66 = zext <8 x i16> %wide.load89 to <8 x i32>
  %67 = zext <8 x i16> %wide.load90 to <8 x i32>
  %68 = zext <8 x i16> %wide.load91 to <8 x i32>
  %69 = getelementptr i8, ptr %next.gep59, i64 16
  %70 = getelementptr i8, ptr %next.gep59, i64 32
  %71 = getelementptr i8, ptr %next.gep59, i64 48
  %wide.load92 = load <8 x i16>, ptr %next.gep59, align 2
  %wide.load93 = load <8 x i16>, ptr %69, align 2
  %wide.load94 = load <8 x i16>, ptr %70, align 2
  %wide.load95 = load <8 x i16>, ptr %71, align 2
  %72 = zext <8 x i16> %wide.load92 to <8 x i32>
  %73 = zext <8 x i16> %wide.load93 to <8 x i32>
  %74 = zext <8 x i16> %wide.load94 to <8 x i32>
  %75 = zext <8 x i16> %wide.load95 to <8 x i32>
  %76 = add nuw nsw <8 x i32> %72, %65
  %77 = add nuw nsw <8 x i32> %73, %66
  %78 = add nuw nsw <8 x i32> %74, %67
  %79 = add nuw nsw <8 x i32> %75, %68
  %80 = mul nuw nsw <8 x i32> %76, <i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20>
  %81 = mul nuw nsw <8 x i32> %77, <i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20>
  %82 = mul nuw nsw <8 x i32> %78, <i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20>
  %83 = mul nuw nsw <8 x i32> %79, <i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20>
  %84 = add nuw nsw <8 x i32> %29, <i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16>
  %85 = add nuw nsw <8 x i32> %30, <i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16>
  %86 = add nuw nsw <8 x i32> %31, <i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16>
  %87 = add nuw nsw <8 x i32> %32, <i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16>
  %88 = add nuw nsw <8 x i32> %84, %36
  %89 = add nuw nsw <8 x i32> %85, %37
  %90 = add nuw nsw <8 x i32> %86, %38
  %91 = add nuw nsw <8 x i32> %87, %39
  %92 = add nsw <8 x i32> %88, %58
  %93 = add nsw <8 x i32> %89, %59
  %94 = add nsw <8 x i32> %90, %60
  %95 = add nsw <8 x i32> %91, %61
  %96 = add nsw <8 x i32> %92, %80
  %97 = add nsw <8 x i32> %93, %81
  %98 = add nsw <8 x i32> %94, %82
  %99 = add nsw <8 x i32> %95, %83
  %100 = ashr <8 x i32> %96, <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  %101 = ashr <8 x i32> %97, <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  %102 = ashr <8 x i32> %98, <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  %103 = ashr <8 x i32> %99, <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  %104 = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %100, <8 x i32> zeroinitializer)
  %105 = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %101, <8 x i32> zeroinitializer)
  %106 = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %102, <8 x i32> zeroinitializer)
  %107 = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %103, <8 x i32> zeroinitializer)
  %108 = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %104, <8 x i32> %broadcast.splat)
  %109 = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %105, <8 x i32> %broadcast.splat)
  %110 = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %106, <8 x i32> %broadcast.splat)
  %111 = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %107, <8 x i32> %broadcast.splat)
  %112 = trunc <8 x i32> %108 to <8 x i16>
  %113 = trunc <8 x i32> %109 to <8 x i16>
  %114 = trunc <8 x i32> %110 to <8 x i16>
  %115 = trunc <8 x i32> %111 to <8 x i16>
  %116 = getelementptr i8, ptr %next.gep44, i64 16
  %117 = getelementptr i8, ptr %next.gep44, i64 32
  %118 = getelementptr i8, ptr %next.gep44, i64 48
  store <8 x i16> %112, ptr %next.gep44, align 2
  store <8 x i16> %113, ptr %116, align 2
  store <8 x i16> %114, ptr %117, align 2
  store <8 x i16> %115, ptr %118, align 2
  %index.next = add nuw i64 %index, 32
  %119 = icmp eq i64 %index.next, %n.vec
  br i1 %119, label %middle.block, label %vector.body, !llvm.loop !48

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %for.cond12.for.end_crit_edge.us, label %for.body14.us.preheader

for.body14.us.preheader:                          ; preds = %middle.block, %vector.memcheck, %for.body.us
  %p0.19.us.ph = phi ptr [ %p0.012.us, %vector.memcheck ], [ %p0.012.us, %for.body.us ], [ %ind.end, %middle.block ]
  %i.08.us.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %for.body.us ], [ %ind.end26, %middle.block ]
  %orig_line.07.us.ph = phi ptr [ %13, %vector.memcheck ], [ %13, %for.body.us ], [ %ind.end28, %middle.block ]
  %p5.06.us.ph = phi ptr [ %add.ptr9.us, %vector.memcheck ], [ %add.ptr9.us, %for.body.us ], [ %ind.end30, %middle.block ]
  %p4.05.us.ph = phi ptr [ %add.ptr7.us, %vector.memcheck ], [ %add.ptr7.us, %for.body.us ], [ %ind.end32, %middle.block ]
  %p3.04.us.ph = phi ptr [ %add.ptr5.us, %vector.memcheck ], [ %add.ptr5.us, %for.body.us ], [ %ind.end34, %middle.block ]
  %p2.03.us.ph = phi ptr [ %add.ptr3.us, %vector.memcheck ], [ %add.ptr3.us, %for.body.us ], [ %ind.end36, %middle.block ]
  %p1.02.us.ph = phi ptr [ %add.ptr.us, %vector.memcheck ], [ %add.ptr.us, %for.body.us ], [ %ind.end38, %middle.block ]
  br label %for.body14.us

for.body14.us:                                    ; preds = %for.body14.us.preheader, %for.body14.us
  %p0.19.us = phi ptr [ %incdec.ptr.us, %for.body14.us ], [ %p0.19.us.ph, %for.body14.us.preheader ]
  %i.08.us = phi i32 [ %inc.us, %for.body14.us ], [ %i.08.us.ph, %for.body14.us.preheader ]
  %orig_line.07.us = phi ptr [ %incdec.ptr31.us, %for.body14.us ], [ %orig_line.07.us.ph, %for.body14.us.preheader ]
  %p5.06.us = phi ptr [ %incdec.ptr15.us, %for.body14.us ], [ %p5.06.us.ph, %for.body14.us.preheader ]
  %p4.05.us = phi ptr [ %incdec.ptr19.us, %for.body14.us ], [ %p4.05.us.ph, %for.body14.us.preheader ]
  %p3.04.us = phi ptr [ %incdec.ptr24.us, %for.body14.us ], [ %p3.04.us.ph, %for.body14.us.preheader ]
  %p2.03.us = phi ptr [ %incdec.ptr22.us, %for.body14.us ], [ %p2.03.us.ph, %for.body14.us.preheader ]
  %p1.02.us = phi ptr [ %incdec.ptr17.us, %for.body14.us ], [ %p1.02.us.ph, %for.body14.us.preheader ]
  %incdec.ptr.us = getelementptr inbounds i8, ptr %p0.19.us, i64 2
  %120 = load i16, ptr %p0.19.us, align 2
  %conv.us = zext i16 %120 to i32
  %incdec.ptr15.us = getelementptr inbounds i8, ptr %p5.06.us, i64 2
  %121 = load i16, ptr %p5.06.us, align 2
  %conv16.us = zext i16 %121 to i32
  %incdec.ptr17.us = getelementptr inbounds i8, ptr %p1.02.us, i64 2
  %122 = load i16, ptr %p1.02.us, align 2
  %conv18.us = zext i16 %122 to i32
  %incdec.ptr19.us = getelementptr inbounds i8, ptr %p4.05.us, i64 2
  %123 = load i16, ptr %p4.05.us, align 2
  %conv20.us = zext i16 %123 to i32
  %add21.us = add nuw nsw i32 %conv20.us, %conv18.us
  %mul.neg.us = mul nsw i32 %add21.us, -5
  %incdec.ptr22.us = getelementptr inbounds i8, ptr %p2.03.us, i64 2
  %124 = load i16, ptr %p2.03.us, align 2
  %conv23.us = zext i16 %124 to i32
  %incdec.ptr24.us = getelementptr inbounds i8, ptr %p3.04.us, i64 2
  %125 = load i16, ptr %p3.04.us, align 2
  %conv25.us = zext i16 %125 to i32
  %add26.us = add nuw nsw i32 %conv25.us, %conv23.us
  %mul27.us = mul nuw nsw i32 %add26.us, 20
  %add.us = add nuw nsw i32 %conv.us, 16
  %sub.us = add nuw nsw i32 %add.us, %conv16.us
  %add28.us = add nsw i32 %sub.us, %mul.neg.us
  %add29.us = add nsw i32 %add28.us, %mul27.us
  %shr.us = ashr i32 %add29.us, 5
  %cond.i.i.us = tail call noundef i32 @llvm.smax.i32(i32 %shr.us, i32 0)
  %cond.i4.i.us = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i.us, i32 %max_imgpel_value)
  %conv30.us = trunc i32 %cond.i4.i.us to i16
  %incdec.ptr31.us = getelementptr inbounds i8, ptr %orig_line.07.us, i64 2
  store i16 %conv30.us, ptr %orig_line.07.us, align 2
  %inc.us = add nuw nsw i32 %i.08.us, 1
  %exitcond.not = icmp eq i32 %inc.us, %hor_block_size
  br i1 %exitcond.not, label %for.cond12.for.end_crit_edge.us, label %for.body14.us, !llvm.loop !49

for.cond12.for.end_crit_edge.us:                  ; preds = %for.body14.us, %middle.block
  %incdec.ptr17.us.lcssa = phi ptr [ %ind.end38, %middle.block ], [ %incdec.ptr17.us, %for.body14.us ]
  %add.ptr33.us = getelementptr inbounds i16, ptr %incdec.ptr17.us.lcssa, i64 %idx.neg
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond15.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond15.not, label %for.end36, label %for.body.us

for.end36:                                        ; preds = %for.cond12.for.end_crit_edge.us, %for.body.lr.ph, %entry
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @get_luma_03(ptr nocapture noundef readonly %block, ptr nocapture noundef readonly %cur_imgY, i32 noundef %ver_block_size, i32 noundef %hor_block_size, i32 noundef %x_pos, i32 noundef %shift_x, i32 noundef %max_imgpel_value) unnamed_addr #5 {
entry:
  %idxprom = sext i32 %x_pos to i64
  %cmp78 = icmp sgt i32 %ver_block_size, 0
  br i1 %cmp78, label %for.body.lr.ph, label %for.end48

for.body.lr.ph:                                   ; preds = %entry
  %idx.ext = sext i32 %shift_x to i64
  %cmp1768 = icmp sgt i32 %hor_block_size, 0
  %idx.ext44 = sext i32 %hor_block_size to i64
  %idx.neg = sub nsw i64 0, %idx.ext44
  br i1 %cmp1768, label %for.body.us.preheader, label %for.end48

for.body.us.preheader:                            ; preds = %for.body.lr.ph
  %arrayidx = getelementptr inbounds i8, ptr %cur_imgY, i64 -16
  %0 = load ptr, ptr %arrayidx, align 8
  %arrayidx1 = getelementptr inbounds i16, ptr %0, i64 %idxprom
  %wide.trip.count = zext nneg i32 %ver_block_size to i64
  %1 = add nsw i32 %hor_block_size, -1
  %2 = zext i32 %1 to i64
  %3 = shl nuw nsw i64 %2, 1
  %4 = add nuw nsw i64 %3, 2
  %5 = mul nsw i64 %idx.ext, 6
  %6 = add nsw i64 %5, %3
  %7 = add nsw i64 %6, 2
  %8 = shl nsw i64 %idx.ext, 2
  %9 = add nsw i64 %8, %3
  %10 = add nsw i64 %9, 2
  %11 = shl nsw i64 %idx.ext, 3
  %12 = add nsw i64 %11, %3
  %13 = add nsw i64 %12, 2
  %14 = add nsw i64 %idx.ext, %2
  %15 = shl nsw i64 %14, 1
  %16 = add nsw i64 %15, 2
  %17 = mul nsw i64 %idx.ext, 10
  %18 = add nsw i64 %17, %3
  %19 = add nsw i64 %18, 2
  %20 = add nsw i64 %idxprom, %2
  %21 = shl nsw i64 %20, 1
  %22 = zext nneg i32 %hor_block_size to i64
  %min.iters.check = icmp ult i32 %hor_block_size, 32
  %n.vec = and i64 %22, 2147483616
  %23 = shl nuw nsw i64 %n.vec, 1
  %ind.end119 = trunc nuw nsw i64 %n.vec to i32
  %24 = shl nuw nsw i64 %n.vec, 1
  %25 = shl nuw nsw i64 %n.vec, 1
  %26 = shl nuw nsw i64 %n.vec, 1
  %27 = shl nuw nsw i64 %n.vec, 1
  %28 = shl nuw nsw i64 %n.vec, 1
  %29 = shl nuw nsw i64 %n.vec, 1
  %30 = shl nuw nsw i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %max_imgpel_value, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %22
  br label %for.body.us

for.body.us:                                      ; preds = %for.body.us.preheader, %for.cond16.for.end_crit_edge.us
  %indvars.iv83 = phi i64 [ 0, %for.body.us.preheader ], [ %indvars.iv.next84, %for.cond16.for.end_crit_edge.us ]
  %indvars.iv = phi i64 [ 1, %for.body.us.preheader ], [ %indvars.iv.next, %for.cond16.for.end_crit_edge.us ]
  %p0.080.us = phi ptr [ %arrayidx1, %for.body.us.preheader ], [ %add.ptr45.us, %for.cond16.for.end_crit_edge.us ]
  %add.ptr.us = getelementptr i16, ptr %p0.080.us, i64 %idx.ext
  %add.ptr3.us = getelementptr i16, ptr %add.ptr.us, i64 %idx.ext
  %add.ptr5.us = getelementptr i16, ptr %add.ptr3.us, i64 %idx.ext
  %add.ptr7.us = getelementptr i16, ptr %add.ptr5.us, i64 %idx.ext
  %add.ptr9.us = getelementptr i16, ptr %add.ptr7.us, i64 %idx.ext
  %arrayidx11.us = getelementptr inbounds ptr, ptr %block, i64 %indvars.iv83
  %31 = load ptr, ptr %arrayidx11.us, align 8
  %arrayidx13.us = getelementptr inbounds ptr, ptr %cur_imgY, i64 %indvars.iv
  %32 = load ptr, ptr %arrayidx13.us, align 8
  %arrayidx15.us = getelementptr i16, ptr %32, i64 %idxprom
  br i1 %min.iters.check, label %for.body18.us.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %for.body.us
  %scevgep = getelementptr i8, ptr %31, i64 %4
  %scevgep89 = getelementptr i8, ptr %p0.080.us, i64 %7
  %scevgep90 = getelementptr i8, ptr %p0.080.us, i64 %10
  %scevgep91 = getelementptr i8, ptr %p0.080.us, i64 %13
  %scevgep92 = getelementptr i8, ptr %p0.080.us, i64 %16
  %scevgep93 = getelementptr i8, ptr %p0.080.us, i64 %19
  %scevgep94 = getelementptr i8, ptr %p0.080.us, i64 %4
  %33 = getelementptr i8, ptr %32, i64 %21
  %scevgep95 = getelementptr i8, ptr %33, i64 2
  %34 = insertelement <4 x ptr> poison, ptr %31, i64 0
  %35 = shufflevector <4 x ptr> %34, <4 x ptr> poison, <4 x i32> zeroinitializer
  %36 = insertelement <4 x ptr> poison, ptr %scevgep89, i64 0
  %37 = insertelement <4 x ptr> %36, ptr %scevgep90, i64 1
  %38 = insertelement <4 x ptr> %37, ptr %scevgep91, i64 2
  %39 = insertelement <4 x ptr> %38, ptr %scevgep92, i64 3
  %40 = icmp ult <4 x ptr> %35, %39
  %41 = insertelement <4 x ptr> poison, ptr %add.ptr5.us, i64 0
  %42 = insertelement <4 x ptr> %41, ptr %add.ptr3.us, i64 1
  %43 = insertelement <4 x ptr> %42, ptr %add.ptr7.us, i64 2
  %44 = insertelement <4 x ptr> %43, ptr %add.ptr.us, i64 3
  %45 = insertelement <4 x ptr> poison, ptr %scevgep, i64 0
  %46 = shufflevector <4 x ptr> %45, <4 x ptr> poison, <4 x i32> zeroinitializer
  %47 = icmp ult <4 x ptr> %44, %46
  %48 = and <4 x i1> %40, %47
  %bound0107 = icmp ult ptr %31, %scevgep93
  %bound1108 = icmp ult ptr %add.ptr9.us, %scevgep
  %found.conflict109 = and i1 %bound0107, %bound1108
  %bound0111 = icmp ult ptr %31, %scevgep94
  %bound1112 = icmp ult ptr %p0.080.us, %scevgep
  %found.conflict113 = and i1 %bound0111, %bound1112
  %bound0115 = icmp ult ptr %31, %scevgep95
  %bound1116 = icmp ult ptr %arrayidx15.us, %scevgep
  %found.conflict117 = and i1 %bound0115, %bound1116
  %49 = bitcast <4 x i1> %48 to i4
  %50 = icmp ne i4 %49, 0
  %op.rdx = or i1 %50, %found.conflict109
  %op.rdx200 = or i1 %found.conflict113, %found.conflict117
  %op.rdx201 = or i1 %op.rdx, %op.rdx200
  br i1 %op.rdx201, label %for.body18.us.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %ind.end = getelementptr i8, ptr %p0.080.us, i64 %23
  %ind.end121 = getelementptr i8, ptr %arrayidx15.us, i64 %24
  %ind.end123 = getelementptr i8, ptr %31, i64 %25
  %ind.end125 = getelementptr i8, ptr %add.ptr9.us, i64 %26
  %ind.end127 = getelementptr i8, ptr %add.ptr7.us, i64 %27
  %ind.end129 = getelementptr i8, ptr %add.ptr5.us, i64 %28
  %ind.end131 = getelementptr i8, ptr %add.ptr3.us, i64 %29
  %ind.end133 = getelementptr i8, ptr %add.ptr.us, i64 %30
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %offset.idx = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %p0.080.us, i64 %offset.idx
  %offset.idx138 = shl i64 %index, 1
  %next.gep139 = getelementptr i8, ptr %arrayidx15.us, i64 %offset.idx138
  %offset.idx143 = shl i64 %index, 1
  %next.gep144 = getelementptr i8, ptr %31, i64 %offset.idx143
  %offset.idx148 = shl i64 %index, 1
  %next.gep149 = getelementptr i8, ptr %add.ptr9.us, i64 %offset.idx148
  %offset.idx153 = shl i64 %index, 1
  %next.gep154 = getelementptr i8, ptr %add.ptr7.us, i64 %offset.idx153
  %offset.idx158 = shl i64 %index, 1
  %next.gep159 = getelementptr i8, ptr %add.ptr5.us, i64 %offset.idx158
  %offset.idx163 = shl i64 %index, 1
  %next.gep164 = getelementptr i8, ptr %add.ptr3.us, i64 %offset.idx163
  %offset.idx168 = shl i64 %index, 1
  %next.gep169 = getelementptr i8, ptr %add.ptr.us, i64 %offset.idx168
  %51 = getelementptr i8, ptr %next.gep, i64 16
  %52 = getelementptr i8, ptr %next.gep, i64 32
  %53 = getelementptr i8, ptr %next.gep, i64 48
  %wide.load = load <8 x i16>, ptr %next.gep, align 2, !alias.scope !50
  %wide.load173 = load <8 x i16>, ptr %51, align 2, !alias.scope !50
  %wide.load174 = load <8 x i16>, ptr %52, align 2, !alias.scope !50
  %wide.load175 = load <8 x i16>, ptr %53, align 2, !alias.scope !50
  %54 = zext <8 x i16> %wide.load to <8 x i32>
  %55 = zext <8 x i16> %wide.load173 to <8 x i32>
  %56 = zext <8 x i16> %wide.load174 to <8 x i32>
  %57 = zext <8 x i16> %wide.load175 to <8 x i32>
  %58 = getelementptr i8, ptr %next.gep149, i64 16
  %59 = getelementptr i8, ptr %next.gep149, i64 32
  %60 = getelementptr i8, ptr %next.gep149, i64 48
  %wide.load176 = load <8 x i16>, ptr %next.gep149, align 2, !alias.scope !53
  %wide.load177 = load <8 x i16>, ptr %58, align 2, !alias.scope !53
  %wide.load178 = load <8 x i16>, ptr %59, align 2, !alias.scope !53
  %wide.load179 = load <8 x i16>, ptr %60, align 2, !alias.scope !53
  %61 = zext <8 x i16> %wide.load176 to <8 x i32>
  %62 = zext <8 x i16> %wide.load177 to <8 x i32>
  %63 = zext <8 x i16> %wide.load178 to <8 x i32>
  %64 = zext <8 x i16> %wide.load179 to <8 x i32>
  %65 = getelementptr i8, ptr %next.gep169, i64 16
  %66 = getelementptr i8, ptr %next.gep169, i64 32
  %67 = getelementptr i8, ptr %next.gep169, i64 48
  %wide.load180 = load <8 x i16>, ptr %next.gep169, align 2, !alias.scope !55
  %wide.load181 = load <8 x i16>, ptr %65, align 2, !alias.scope !55
  %wide.load182 = load <8 x i16>, ptr %66, align 2, !alias.scope !55
  %wide.load183 = load <8 x i16>, ptr %67, align 2, !alias.scope !55
  %68 = zext <8 x i16> %wide.load180 to <8 x i32>
  %69 = zext <8 x i16> %wide.load181 to <8 x i32>
  %70 = zext <8 x i16> %wide.load182 to <8 x i32>
  %71 = zext <8 x i16> %wide.load183 to <8 x i32>
  %72 = getelementptr i8, ptr %next.gep154, i64 16
  %73 = getelementptr i8, ptr %next.gep154, i64 32
  %74 = getelementptr i8, ptr %next.gep154, i64 48
  %wide.load184 = load <8 x i16>, ptr %next.gep154, align 2, !alias.scope !57
  %wide.load185 = load <8 x i16>, ptr %72, align 2, !alias.scope !57
  %wide.load186 = load <8 x i16>, ptr %73, align 2, !alias.scope !57
  %wide.load187 = load <8 x i16>, ptr %74, align 2, !alias.scope !57
  %75 = zext <8 x i16> %wide.load184 to <8 x i32>
  %76 = zext <8 x i16> %wide.load185 to <8 x i32>
  %77 = zext <8 x i16> %wide.load186 to <8 x i32>
  %78 = zext <8 x i16> %wide.load187 to <8 x i32>
  %79 = add nuw nsw <8 x i32> %75, %68
  %80 = add nuw nsw <8 x i32> %76, %69
  %81 = add nuw nsw <8 x i32> %77, %70
  %82 = add nuw nsw <8 x i32> %78, %71
  %83 = mul nsw <8 x i32> %79, <i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5>
  %84 = mul nsw <8 x i32> %80, <i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5>
  %85 = mul nsw <8 x i32> %81, <i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5>
  %86 = mul nsw <8 x i32> %82, <i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5>
  %87 = getelementptr i8, ptr %next.gep164, i64 16
  %88 = getelementptr i8, ptr %next.gep164, i64 32
  %89 = getelementptr i8, ptr %next.gep164, i64 48
  %wide.load188 = load <8 x i16>, ptr %next.gep164, align 2, !alias.scope !59
  %wide.load189 = load <8 x i16>, ptr %87, align 2, !alias.scope !59
  %wide.load190 = load <8 x i16>, ptr %88, align 2, !alias.scope !59
  %wide.load191 = load <8 x i16>, ptr %89, align 2, !alias.scope !59
  %90 = zext <8 x i16> %wide.load188 to <8 x i32>
  %91 = zext <8 x i16> %wide.load189 to <8 x i32>
  %92 = zext <8 x i16> %wide.load190 to <8 x i32>
  %93 = zext <8 x i16> %wide.load191 to <8 x i32>
  %94 = getelementptr i8, ptr %next.gep159, i64 16
  %95 = getelementptr i8, ptr %next.gep159, i64 32
  %96 = getelementptr i8, ptr %next.gep159, i64 48
  %wide.load192 = load <8 x i16>, ptr %next.gep159, align 2, !alias.scope !61
  %wide.load193 = load <8 x i16>, ptr %94, align 2, !alias.scope !61
  %wide.load194 = load <8 x i16>, ptr %95, align 2, !alias.scope !61
  %wide.load195 = load <8 x i16>, ptr %96, align 2, !alias.scope !61
  %97 = zext <8 x i16> %wide.load192 to <8 x i32>
  %98 = zext <8 x i16> %wide.load193 to <8 x i32>
  %99 = zext <8 x i16> %wide.load194 to <8 x i32>
  %100 = zext <8 x i16> %wide.load195 to <8 x i32>
  %101 = add nuw nsw <8 x i32> %97, %90
  %102 = add nuw nsw <8 x i32> %98, %91
  %103 = add nuw nsw <8 x i32> %99, %92
  %104 = add nuw nsw <8 x i32> %100, %93
  %105 = mul nuw nsw <8 x i32> %101, <i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20>
  %106 = mul nuw nsw <8 x i32> %102, <i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20>
  %107 = mul nuw nsw <8 x i32> %103, <i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20>
  %108 = mul nuw nsw <8 x i32> %104, <i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20>
  %109 = add nuw nsw <8 x i32> %54, <i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16>
  %110 = add nuw nsw <8 x i32> %55, <i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16>
  %111 = add nuw nsw <8 x i32> %56, <i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16>
  %112 = add nuw nsw <8 x i32> %57, <i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16>
  %113 = add nuw nsw <8 x i32> %109, %61
  %114 = add nuw nsw <8 x i32> %110, %62
  %115 = add nuw nsw <8 x i32> %111, %63
  %116 = add nuw nsw <8 x i32> %112, %64
  %117 = add nsw <8 x i32> %113, %83
  %118 = add nsw <8 x i32> %114, %84
  %119 = add nsw <8 x i32> %115, %85
  %120 = add nsw <8 x i32> %116, %86
  %121 = add nsw <8 x i32> %117, %105
  %122 = add nsw <8 x i32> %118, %106
  %123 = add nsw <8 x i32> %119, %107
  %124 = add nsw <8 x i32> %120, %108
  %125 = ashr <8 x i32> %121, <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  %126 = ashr <8 x i32> %122, <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  %127 = ashr <8 x i32> %123, <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  %128 = ashr <8 x i32> %124, <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  %129 = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %125, <8 x i32> zeroinitializer)
  %130 = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %126, <8 x i32> zeroinitializer)
  %131 = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %127, <8 x i32> zeroinitializer)
  %132 = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %128, <8 x i32> zeroinitializer)
  %133 = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %129, <8 x i32> %broadcast.splat)
  %134 = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %130, <8 x i32> %broadcast.splat)
  %135 = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %131, <8 x i32> %broadcast.splat)
  %136 = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %132, <8 x i32> %broadcast.splat)
  %137 = trunc <8 x i32> %133 to <8 x i16>
  %138 = trunc <8 x i32> %134 to <8 x i16>
  %139 = trunc <8 x i32> %135 to <8 x i16>
  %140 = trunc <8 x i32> %136 to <8 x i16>
  %141 = getelementptr i8, ptr %next.gep144, i64 16
  %142 = getelementptr i8, ptr %next.gep144, i64 32
  %143 = getelementptr i8, ptr %next.gep144, i64 48
  store <8 x i16> %137, ptr %next.gep144, align 2, !alias.scope !63, !noalias !65
  store <8 x i16> %138, ptr %141, align 2, !alias.scope !63, !noalias !65
  store <8 x i16> %139, ptr %142, align 2, !alias.scope !63, !noalias !65
  store <8 x i16> %140, ptr %143, align 2, !alias.scope !63, !noalias !65
  %144 = and <8 x i32> %133, <i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535>
  %145 = and <8 x i32> %134, <i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535>
  %146 = and <8 x i32> %135, <i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535>
  %147 = and <8 x i32> %136, <i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535>
  %148 = getelementptr i8, ptr %next.gep139, i64 16
  %149 = getelementptr i8, ptr %next.gep139, i64 32
  %150 = getelementptr i8, ptr %next.gep139, i64 48
  %wide.load196 = load <8 x i16>, ptr %next.gep139, align 2, !alias.scope !67
  %wide.load197 = load <8 x i16>, ptr %148, align 2, !alias.scope !67
  %wide.load198 = load <8 x i16>, ptr %149, align 2, !alias.scope !67
  %wide.load199 = load <8 x i16>, ptr %150, align 2, !alias.scope !67
  %151 = zext <8 x i16> %wide.load196 to <8 x i32>
  %152 = zext <8 x i16> %wide.load197 to <8 x i32>
  %153 = zext <8 x i16> %wide.load198 to <8 x i32>
  %154 = zext <8 x i16> %wide.load199 to <8 x i32>
  %155 = add nuw nsw <8 x i32> %151, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %156 = add nuw nsw <8 x i32> %152, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %157 = add nuw nsw <8 x i32> %153, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %158 = add nuw nsw <8 x i32> %154, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %159 = add nuw nsw <8 x i32> %155, %144
  %160 = add nuw nsw <8 x i32> %156, %145
  %161 = add nuw nsw <8 x i32> %157, %146
  %162 = add nuw nsw <8 x i32> %158, %147
  %163 = lshr <8 x i32> %159, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %164 = lshr <8 x i32> %160, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %165 = lshr <8 x i32> %161, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %166 = lshr <8 x i32> %162, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %167 = trunc <8 x i32> %163 to <8 x i16>
  %168 = trunc <8 x i32> %164 to <8 x i16>
  %169 = trunc <8 x i32> %165 to <8 x i16>
  %170 = trunc <8 x i32> %166 to <8 x i16>
  store <8 x i16> %167, ptr %next.gep144, align 2, !alias.scope !63, !noalias !65
  store <8 x i16> %168, ptr %141, align 2, !alias.scope !63, !noalias !65
  store <8 x i16> %169, ptr %142, align 2, !alias.scope !63, !noalias !65
  store <8 x i16> %170, ptr %143, align 2, !alias.scope !63, !noalias !65
  %index.next = add nuw i64 %index, 32
  %171 = icmp eq i64 %index.next, %n.vec
  br i1 %171, label %middle.block, label %vector.body, !llvm.loop !68

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %for.cond16.for.end_crit_edge.us, label %for.body18.us.preheader

for.body18.us.preheader:                          ; preds = %middle.block, %vector.memcheck, %for.body.us
  %p0.177.us.ph = phi ptr [ %p0.080.us, %vector.memcheck ], [ %p0.080.us, %for.body.us ], [ %ind.end, %middle.block ]
  %i.076.us.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %for.body.us ], [ %ind.end119, %middle.block ]
  %cur_line.075.us.ph = phi ptr [ %arrayidx15.us, %vector.memcheck ], [ %arrayidx15.us, %for.body.us ], [ %ind.end121, %middle.block ]
  %orig_line.074.us.ph = phi ptr [ %31, %vector.memcheck ], [ %31, %for.body.us ], [ %ind.end123, %middle.block ]
  %p5.073.us.ph = phi ptr [ %add.ptr9.us, %vector.memcheck ], [ %add.ptr9.us, %for.body.us ], [ %ind.end125, %middle.block ]
  %p4.072.us.ph = phi ptr [ %add.ptr7.us, %vector.memcheck ], [ %add.ptr7.us, %for.body.us ], [ %ind.end127, %middle.block ]
  %p3.071.us.ph = phi ptr [ %add.ptr5.us, %vector.memcheck ], [ %add.ptr5.us, %for.body.us ], [ %ind.end129, %middle.block ]
  %p2.070.us.ph = phi ptr [ %add.ptr3.us, %vector.memcheck ], [ %add.ptr3.us, %for.body.us ], [ %ind.end131, %middle.block ]
  %p1.069.us.ph = phi ptr [ %add.ptr.us, %vector.memcheck ], [ %add.ptr.us, %for.body.us ], [ %ind.end133, %middle.block ]
  br label %for.body18.us

for.body18.us:                                    ; preds = %for.body18.us.preheader, %for.body18.us
  %p0.177.us = phi ptr [ %incdec.ptr.us, %for.body18.us ], [ %p0.177.us.ph, %for.body18.us.preheader ]
  %i.076.us = phi i32 [ %inc43.us, %for.body18.us ], [ %i.076.us.ph, %for.body18.us.preheader ]
  %cur_line.075.us = phi ptr [ %incdec.ptr36.us, %for.body18.us ], [ %cur_line.075.us.ph, %for.body18.us.preheader ]
  %orig_line.074.us = phi ptr [ %incdec.ptr42.us, %for.body18.us ], [ %orig_line.074.us.ph, %for.body18.us.preheader ]
  %p5.073.us = phi ptr [ %incdec.ptr19.us, %for.body18.us ], [ %p5.073.us.ph, %for.body18.us.preheader ]
  %p4.072.us = phi ptr [ %incdec.ptr23.us, %for.body18.us ], [ %p4.072.us.ph, %for.body18.us.preheader ]
  %p3.071.us = phi ptr [ %incdec.ptr28.us, %for.body18.us ], [ %p3.071.us.ph, %for.body18.us.preheader ]
  %p2.070.us = phi ptr [ %incdec.ptr26.us, %for.body18.us ], [ %p2.070.us.ph, %for.body18.us.preheader ]
  %p1.069.us = phi ptr [ %incdec.ptr21.us, %for.body18.us ], [ %p1.069.us.ph, %for.body18.us.preheader ]
  %incdec.ptr.us = getelementptr inbounds i8, ptr %p0.177.us, i64 2
  %172 = load i16, ptr %p0.177.us, align 2
  %conv.us = zext i16 %172 to i32
  %incdec.ptr19.us = getelementptr inbounds i8, ptr %p5.073.us, i64 2
  %173 = load i16, ptr %p5.073.us, align 2
  %conv20.us = zext i16 %173 to i32
  %incdec.ptr21.us = getelementptr inbounds i8, ptr %p1.069.us, i64 2
  %174 = load i16, ptr %p1.069.us, align 2
  %conv22.us = zext i16 %174 to i32
  %incdec.ptr23.us = getelementptr inbounds i8, ptr %p4.072.us, i64 2
  %175 = load i16, ptr %p4.072.us, align 2
  %conv24.us = zext i16 %175 to i32
  %add25.us = add nuw nsw i32 %conv24.us, %conv22.us
  %mul.neg.us = mul nsw i32 %add25.us, -5
  %incdec.ptr26.us = getelementptr inbounds i8, ptr %p2.070.us, i64 2
  %176 = load i16, ptr %p2.070.us, align 2
  %conv27.us = zext i16 %176 to i32
  %incdec.ptr28.us = getelementptr inbounds i8, ptr %p3.071.us, i64 2
  %177 = load i16, ptr %p3.071.us, align 2
  %conv29.us = zext i16 %177 to i32
  %add30.us = add nuw nsw i32 %conv29.us, %conv27.us
  %mul31.us = mul nuw nsw i32 %add30.us, 20
  %add.us = add nuw nsw i32 %conv.us, 16
  %sub.us = add nuw nsw i32 %add.us, %conv20.us
  %add32.us = add nsw i32 %sub.us, %mul.neg.us
  %add33.us = add nsw i32 %add32.us, %mul31.us
  %shr.us = ashr i32 %add33.us, 5
  %cond.i.i.us = tail call noundef i32 @llvm.smax.i32(i32 %shr.us, i32 0)
  %cond.i4.i.us = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i.us, i32 %max_imgpel_value)
  %conv34.us = trunc i32 %cond.i4.i.us to i16
  store i16 %conv34.us, ptr %orig_line.074.us, align 2
  %conv35.us = and i32 %cond.i4.i.us, 65535
  %incdec.ptr36.us = getelementptr inbounds i8, ptr %cur_line.075.us, i64 2
  %178 = load i16, ptr %cur_line.075.us, align 2
  %conv37.us = zext i16 %178 to i32
  %add38.us = add nuw nsw i32 %conv37.us, 1
  %add39.us = add nuw nsw i32 %add38.us, %conv35.us
  %shr40.us = lshr i32 %add39.us, 1
  %conv41.us = trunc nuw i32 %shr40.us to i16
  store i16 %conv41.us, ptr %orig_line.074.us, align 2
  %incdec.ptr42.us = getelementptr inbounds i8, ptr %orig_line.074.us, i64 2
  %inc43.us = add nuw nsw i32 %i.076.us, 1
  %exitcond.not = icmp eq i32 %inc43.us, %hor_block_size
  br i1 %exitcond.not, label %for.cond16.for.end_crit_edge.us, label %for.body18.us, !llvm.loop !69

for.cond16.for.end_crit_edge.us:                  ; preds = %for.body18.us, %middle.block
  %incdec.ptr21.us.lcssa = phi ptr [ %ind.end133, %middle.block ], [ %incdec.ptr21.us, %for.body18.us ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %add.ptr45.us = getelementptr inbounds i16, ptr %incdec.ptr21.us.lcssa, i64 %idx.neg
  %indvars.iv.next84 = add nuw nsw i64 %indvars.iv83, 1
  %exitcond88.not = icmp eq i64 %indvars.iv.next84, %wide.trip.count
  br i1 %exitcond88.not, label %for.end48, label %for.body.us

for.end48:                                        ; preds = %for.cond16.for.end_crit_edge.us, %for.body.lr.ph, %entry
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @get_luma_21(ptr nocapture noundef readonly %block, ptr nocapture noundef readonly %cur_imgY, ptr nocapture noundef readonly %tmp_res, i32 noundef %ver_block_size, i32 noundef %hor_block_size, i32 noundef %x_pos, i32 noundef %max_imgpel_value) unnamed_addr #5 {
entry:
  %add = add i32 %ver_block_size, 5
  %cmp139 = icmp sgt i32 %ver_block_size, -5
  br i1 %cmp139, label %for.body.lr.ph, label %for.end93

for.body.lr.ph:                                   ; preds = %entry
  %0 = sext i32 %x_pos to i64
  %cmp10130 = icmp sgt i32 %hor_block_size, 0
  br i1 %cmp10130, label %for.body.us.preheader, label %for.cond33.preheader

for.body.us.preheader:                            ; preds = %for.body.lr.ph
  %smax = tail call i32 @llvm.smax.i32(i32 %add, i32 1)
  %wide.trip.count = zext nneg i32 %smax to i64
  %1 = add nsw i32 %hor_block_size, -1
  %2 = zext i32 %1 to i64
  %3 = shl nuw nsw i64 %2, 2
  %4 = add nsw i64 %0, %2
  %5 = shl nsw i64 %4, 1
  %6 = zext nneg i32 %hor_block_size to i64
  %min.iters.check = icmp ult i32 %hor_block_size, 16
  %n.vec = and i64 %6, 2147483632
  %ind.end = trunc nuw nsw i64 %n.vec to i32
  %7 = shl nuw nsw i64 %n.vec, 1
  %8 = shl nuw nsw i64 %n.vec, 1
  %9 = shl nuw nsw i64 %n.vec, 1
  %10 = shl nuw nsw i64 %n.vec, 1
  %11 = shl nuw nsw i64 %n.vec, 1
  %12 = shl nuw nsw i64 %n.vec, 2
  %cmp.n = icmp eq i64 %n.vec, %6
  br label %for.body.us

for.body.us:                                      ; preds = %for.body.us.preheader, %for.cond9.for.inc30_crit_edge.us
  %indvars.iv157 = phi i64 [ 0, %for.body.us.preheader ], [ %indvars.iv.next158, %for.cond9.for.inc30_crit_edge.us ]
  %indvars.iv = phi i64 [ -2, %for.body.us.preheader ], [ %indvars.iv.next, %for.cond9.for.inc30_crit_edge.us ]
  %arrayidx.us = getelementptr inbounds ptr, ptr %cur_imgY, i64 %indvars.iv
  %13 = load ptr, ptr %arrayidx.us, align 8
  %14 = getelementptr i16, ptr %13, i64 %0
  %arrayidx2.us = getelementptr i8, ptr %14, i64 -4
  %add.ptr.us = getelementptr i8, ptr %14, i64 -2
  %add.ptr5.us = getelementptr inbounds i8, ptr %14, i64 4
  %add.ptr6.us = getelementptr inbounds i8, ptr %14, i64 6
  %arrayidx8.us = getelementptr inbounds ptr, ptr %tmp_res, i64 %indvars.iv157
  %15 = load ptr, ptr %arrayidx8.us, align 8
  br i1 %min.iters.check, label %for.body11.us.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %for.body.us
  %16 = getelementptr i8, ptr %15, i64 %3
  %scevgep = getelementptr i8, ptr %16, i64 4
  %17 = getelementptr i8, ptr %13, i64 %5
  %scevgep174 = getelementptr i8, ptr %17, i64 8
  %bound0 = icmp ult ptr %15, %scevgep174
  %bound1 = icmp ult ptr %arrayidx2.us, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %for.body11.us.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %ind.end175 = getelementptr i8, ptr %add.ptr6.us, i64 %7
  %ind.end177 = getelementptr i8, ptr %add.ptr5.us, i64 %8
  %ind.end179 = getelementptr i8, ptr %14, i64 %9
  %ind.end181 = getelementptr i8, ptr %add.ptr.us, i64 %10
  %ind.end183 = getelementptr i8, ptr %arrayidx2.us, i64 %11
  %ind.end185 = getelementptr i8, ptr %15, i64 %12
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %offset.idx = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %add.ptr6.us, i64 %offset.idx
  %offset.idx190 = shl i64 %index, 1
  %next.gep191 = getelementptr i8, ptr %add.ptr5.us, i64 %offset.idx190
  %offset.idx195 = shl i64 %index, 1
  %next.gep196 = getelementptr i8, ptr %14, i64 %offset.idx195
  %offset.idx200 = shl i64 %index, 1
  %next.gep201 = getelementptr i8, ptr %add.ptr.us, i64 %offset.idx200
  %offset.idx205 = shl i64 %index, 1
  %next.gep206 = getelementptr i8, ptr %arrayidx2.us, i64 %offset.idx205
  %offset.idx210 = shl i64 %index, 2
  %next.gep211 = getelementptr i8, ptr %15, i64 %offset.idx210
  %18 = getelementptr i8, ptr %next.gep196, i64 2
  %19 = getelementptr i8, ptr %next.gep206, i64 8
  %20 = getelementptr i8, ptr %next.gep206, i64 16
  %21 = getelementptr i8, ptr %next.gep206, i64 24
  %wide.load = load <4 x i16>, ptr %next.gep206, align 2, !alias.scope !70
  %wide.load215 = load <4 x i16>, ptr %19, align 2, !alias.scope !70
  %wide.load216 = load <4 x i16>, ptr %20, align 2, !alias.scope !70
  %wide.load217 = load <4 x i16>, ptr %21, align 2, !alias.scope !70
  %22 = zext <4 x i16> %wide.load to <4 x i32>
  %23 = zext <4 x i16> %wide.load215 to <4 x i32>
  %24 = zext <4 x i16> %wide.load216 to <4 x i32>
  %25 = zext <4 x i16> %wide.load217 to <4 x i32>
  %26 = getelementptr i8, ptr %next.gep, i64 8
  %27 = getelementptr i8, ptr %next.gep, i64 16
  %28 = getelementptr i8, ptr %next.gep, i64 24
  %wide.load218 = load <4 x i16>, ptr %next.gep, align 2, !alias.scope !70
  %wide.load219 = load <4 x i16>, ptr %26, align 2, !alias.scope !70
  %wide.load220 = load <4 x i16>, ptr %27, align 2, !alias.scope !70
  %wide.load221 = load <4 x i16>, ptr %28, align 2, !alias.scope !70
  %29 = zext <4 x i16> %wide.load218 to <4 x i32>
  %30 = zext <4 x i16> %wide.load219 to <4 x i32>
  %31 = zext <4 x i16> %wide.load220 to <4 x i32>
  %32 = zext <4 x i16> %wide.load221 to <4 x i32>
  %33 = add nuw nsw <4 x i32> %29, %22
  %34 = add nuw nsw <4 x i32> %30, %23
  %35 = add nuw nsw <4 x i32> %31, %24
  %36 = add nuw nsw <4 x i32> %32, %25
  %37 = getelementptr i8, ptr %next.gep201, i64 8
  %38 = getelementptr i8, ptr %next.gep201, i64 16
  %39 = getelementptr i8, ptr %next.gep201, i64 24
  %wide.load222 = load <4 x i16>, ptr %next.gep201, align 2, !alias.scope !70
  %wide.load223 = load <4 x i16>, ptr %37, align 2, !alias.scope !70
  %wide.load224 = load <4 x i16>, ptr %38, align 2, !alias.scope !70
  %wide.load225 = load <4 x i16>, ptr %39, align 2, !alias.scope !70
  %40 = zext <4 x i16> %wide.load222 to <4 x i32>
  %41 = zext <4 x i16> %wide.load223 to <4 x i32>
  %42 = zext <4 x i16> %wide.load224 to <4 x i32>
  %43 = zext <4 x i16> %wide.load225 to <4 x i32>
  %44 = getelementptr i8, ptr %next.gep191, i64 8
  %45 = getelementptr i8, ptr %next.gep191, i64 16
  %46 = getelementptr i8, ptr %next.gep191, i64 24
  %wide.load226 = load <4 x i16>, ptr %next.gep191, align 2, !alias.scope !70
  %wide.load227 = load <4 x i16>, ptr %44, align 2, !alias.scope !70
  %wide.load228 = load <4 x i16>, ptr %45, align 2, !alias.scope !70
  %wide.load229 = load <4 x i16>, ptr %46, align 2, !alias.scope !70
  %47 = zext <4 x i16> %wide.load226 to <4 x i32>
  %48 = zext <4 x i16> %wide.load227 to <4 x i32>
  %49 = zext <4 x i16> %wide.load228 to <4 x i32>
  %50 = zext <4 x i16> %wide.load229 to <4 x i32>
  %51 = add nuw nsw <4 x i32> %47, %40
  %52 = add nuw nsw <4 x i32> %48, %41
  %53 = add nuw nsw <4 x i32> %49, %42
  %54 = add nuw nsw <4 x i32> %50, %43
  %55 = mul nsw <4 x i32> %51, <i32 -5, i32 -5, i32 -5, i32 -5>
  %56 = mul nsw <4 x i32> %52, <i32 -5, i32 -5, i32 -5, i32 -5>
  %57 = mul nsw <4 x i32> %53, <i32 -5, i32 -5, i32 -5, i32 -5>
  %58 = mul nsw <4 x i32> %54, <i32 -5, i32 -5, i32 -5, i32 -5>
  %59 = add nsw <4 x i32> %33, %55
  %60 = add nsw <4 x i32> %34, %56
  %61 = add nsw <4 x i32> %35, %57
  %62 = add nsw <4 x i32> %36, %58
  %63 = getelementptr i8, ptr %next.gep196, i64 8
  %64 = getelementptr i8, ptr %next.gep196, i64 16
  %65 = getelementptr i8, ptr %next.gep196, i64 24
  %wide.load230 = load <4 x i16>, ptr %next.gep196, align 2, !alias.scope !70
  %wide.load231 = load <4 x i16>, ptr %63, align 2, !alias.scope !70
  %wide.load232 = load <4 x i16>, ptr %64, align 2, !alias.scope !70
  %wide.load233 = load <4 x i16>, ptr %65, align 2, !alias.scope !70
  %66 = zext <4 x i16> %wide.load230 to <4 x i32>
  %67 = zext <4 x i16> %wide.load231 to <4 x i32>
  %68 = zext <4 x i16> %wide.load232 to <4 x i32>
  %69 = zext <4 x i16> %wide.load233 to <4 x i32>
  %70 = getelementptr i8, ptr %next.gep196, i64 10
  %71 = getelementptr i8, ptr %next.gep196, i64 18
  %72 = getelementptr i8, ptr %next.gep196, i64 26
  %wide.load234 = load <4 x i16>, ptr %18, align 2, !alias.scope !70
  %wide.load235 = load <4 x i16>, ptr %70, align 2, !alias.scope !70
  %wide.load236 = load <4 x i16>, ptr %71, align 2, !alias.scope !70
  %wide.load237 = load <4 x i16>, ptr %72, align 2, !alias.scope !70
  %73 = zext <4 x i16> %wide.load234 to <4 x i32>
  %74 = zext <4 x i16> %wide.load235 to <4 x i32>
  %75 = zext <4 x i16> %wide.load236 to <4 x i32>
  %76 = zext <4 x i16> %wide.load237 to <4 x i32>
  %77 = add nuw nsw <4 x i32> %73, %66
  %78 = add nuw nsw <4 x i32> %74, %67
  %79 = add nuw nsw <4 x i32> %75, %68
  %80 = add nuw nsw <4 x i32> %76, %69
  %81 = mul nuw nsw <4 x i32> %77, <i32 20, i32 20, i32 20, i32 20>
  %82 = mul nuw nsw <4 x i32> %78, <i32 20, i32 20, i32 20, i32 20>
  %83 = mul nuw nsw <4 x i32> %79, <i32 20, i32 20, i32 20, i32 20>
  %84 = mul nuw nsw <4 x i32> %80, <i32 20, i32 20, i32 20, i32 20>
  %85 = add nsw <4 x i32> %59, %81
  %86 = add nsw <4 x i32> %60, %82
  %87 = add nsw <4 x i32> %61, %83
  %88 = add nsw <4 x i32> %62, %84
  %89 = getelementptr i8, ptr %next.gep211, i64 16
  %90 = getelementptr i8, ptr %next.gep211, i64 32
  %91 = getelementptr i8, ptr %next.gep211, i64 48
  store <4 x i32> %85, ptr %next.gep211, align 4, !alias.scope !73, !noalias !70
  store <4 x i32> %86, ptr %89, align 4, !alias.scope !73, !noalias !70
  store <4 x i32> %87, ptr %90, align 4, !alias.scope !73, !noalias !70
  store <4 x i32> %88, ptr %91, align 4, !alias.scope !73, !noalias !70
  %index.next = add nuw i64 %index, 16
  %92 = icmp eq i64 %index.next, %n.vec
  br i1 %92, label %middle.block, label %vector.body, !llvm.loop !75

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %for.cond9.for.inc30_crit_edge.us, label %for.body11.us.preheader

for.body11.us.preheader:                          ; preds = %middle.block, %vector.memcheck, %for.body.us
  %i.0138.us.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %for.body.us ], [ %ind.end, %middle.block ]
  %p5.0137.us.ph = phi ptr [ %add.ptr6.us, %vector.memcheck ], [ %add.ptr6.us, %for.body.us ], [ %ind.end175, %middle.block ]
  %p4.0136.us.ph = phi ptr [ %add.ptr5.us, %vector.memcheck ], [ %add.ptr5.us, %for.body.us ], [ %ind.end177, %middle.block ]
  %.pn135.us.ph = phi ptr [ %14, %vector.memcheck ], [ %14, %for.body.us ], [ %ind.end179, %middle.block ]
  %p1.0133.us.ph = phi ptr [ %add.ptr.us, %vector.memcheck ], [ %add.ptr.us, %for.body.us ], [ %ind.end181, %middle.block ]
  %p0.0132.us.ph = phi ptr [ %arrayidx2.us, %vector.memcheck ], [ %arrayidx2.us, %for.body.us ], [ %ind.end183, %middle.block ]
  %tmp_line.0131.us.ph = phi ptr [ %15, %vector.memcheck ], [ %15, %for.body.us ], [ %ind.end185, %middle.block ]
  br label %for.body11.us

for.body11.us:                                    ; preds = %for.body11.us.preheader, %for.body11.us
  %i.0138.us = phi i32 [ %inc29.us, %for.body11.us ], [ %i.0138.us.ph, %for.body11.us.preheader ]
  %p5.0137.us = phi ptr [ %incdec.ptr12.us, %for.body11.us ], [ %p5.0137.us.ph, %for.body11.us.preheader ]
  %p4.0136.us = phi ptr [ %incdec.ptr17.us, %for.body11.us ], [ %p4.0136.us.ph, %for.body11.us.preheader ]
  %.pn135.us = phi ptr [ %p3.0.us, %for.body11.us ], [ %.pn135.us.ph, %for.body11.us.preheader ]
  %p1.0133.us = phi ptr [ %incdec.ptr15.us, %for.body11.us ], [ %p1.0133.us.ph, %for.body11.us.preheader ]
  %p0.0132.us = phi ptr [ %incdec.ptr.us, %for.body11.us ], [ %p0.0132.us.ph, %for.body11.us.preheader ]
  %tmp_line.0131.us = phi ptr [ %incdec.ptr28.us, %for.body11.us ], [ %tmp_line.0131.us.ph, %for.body11.us.preheader ]
  %p3.0.us = getelementptr i8, ptr %.pn135.us, i64 2
  %incdec.ptr.us = getelementptr inbounds i8, ptr %p0.0132.us, i64 2
  %93 = load i16, ptr %p0.0132.us, align 2
  %conv.us = zext i16 %93 to i32
  %incdec.ptr12.us = getelementptr inbounds i8, ptr %p5.0137.us, i64 2
  %94 = load i16, ptr %p5.0137.us, align 2
  %conv13.us = zext i16 %94 to i32
  %add14.us = add nuw nsw i32 %conv13.us, %conv.us
  %incdec.ptr15.us = getelementptr inbounds i8, ptr %p1.0133.us, i64 2
  %95 = load i16, ptr %p1.0133.us, align 2
  %conv16.us = zext i16 %95 to i32
  %incdec.ptr17.us = getelementptr inbounds i8, ptr %p4.0136.us, i64 2
  %96 = load i16, ptr %p4.0136.us, align 2
  %conv18.us = zext i16 %96 to i32
  %add19.us = add nuw nsw i32 %conv18.us, %conv16.us
  %mul.neg.us = mul nsw i32 %add19.us, -5
  %sub20.us = add nsw i32 %add14.us, %mul.neg.us
  %97 = load i16, ptr %.pn135.us, align 2
  %conv22.us = zext i16 %97 to i32
  %98 = load i16, ptr %p3.0.us, align 2
  %conv24.us = zext i16 %98 to i32
  %add25.us = add nuw nsw i32 %conv24.us, %conv22.us
  %mul26.us = mul nuw nsw i32 %add25.us, 20
  %add27.us = add nsw i32 %sub20.us, %mul26.us
  %incdec.ptr28.us = getelementptr inbounds i8, ptr %tmp_line.0131.us, i64 4
  store i32 %add27.us, ptr %tmp_line.0131.us, align 4
  %inc29.us = add nuw nsw i32 %i.0138.us, 1
  %exitcond.not = icmp eq i32 %inc29.us, %hor_block_size
  br i1 %exitcond.not, label %for.cond9.for.inc30_crit_edge.us, label %for.body11.us, !llvm.loop !76

for.cond9.for.inc30_crit_edge.us:                 ; preds = %for.body11.us, %middle.block
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %indvars.iv.next158 = add nuw nsw i64 %indvars.iv157, 1
  %exitcond162.not = icmp eq i64 %indvars.iv.next158, %wide.trip.count
  br i1 %exitcond162.not, label %for.cond33.preheader, label %for.body.us

for.cond33.preheader:                             ; preds = %for.cond9.for.inc30_crit_edge.us, %for.body.lr.ph
  %cmp34152 = icmp sgt i32 %ver_block_size, 0
  %cmp60142 = icmp sgt i32 %hor_block_size, 0
  %or.cond = and i1 %cmp34152, %cmp60142
  br i1 %or.cond, label %for.body36.us.preheader, label %for.end93

for.body36.us.preheader:                          ; preds = %for.cond33.preheader
  %wide.trip.count171 = zext nneg i32 %ver_block_size to i64
  %99 = add nsw i32 %hor_block_size, -1
  %100 = zext i32 %99 to i64
  %101 = shl nuw nsw i64 %100, 1
  %102 = shl nuw nsw i64 %100, 2
  %103 = add nuw nsw i64 %102, 4
  %104 = zext nneg i32 %hor_block_size to i64
  %min.iters.check275 = icmp ult i32 %hor_block_size, 16
  %n.vec278 = and i64 %104, 2147483632
  %ind.end279 = trunc nuw nsw i64 %n.vec278 to i32
  %105 = shl nuw nsw i64 %n.vec278, 1
  %106 = shl nuw nsw i64 %n.vec278, 2
  %107 = shl nuw nsw i64 %n.vec278, 2
  %108 = shl nuw nsw i64 %n.vec278, 2
  %109 = shl nuw nsw i64 %n.vec278, 2
  %110 = shl nuw nsw i64 %n.vec278, 2
  %111 = shl nuw nsw i64 %n.vec278, 2
  %112 = shl nuw nsw i64 %n.vec278, 2
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %max_imgpel_value, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %cmp.n368 = icmp eq i64 %n.vec278, %104
  br label %for.body36.us

for.body36.us:                                    ; preds = %for.body36.us.preheader, %for.cond59.for.cond33.loopexit_crit_edge.us
  %indvars.iv166 = phi i64 [ 0, %for.body36.us.preheader ], [ %indvars.iv.next167, %for.cond59.for.cond33.loopexit_crit_edge.us ]
  %indvars.iv164 = phi i64 [ 2, %for.body36.us.preheader ], [ %indvars.iv.next165, %for.cond59.for.cond33.loopexit_crit_edge.us ]
  %arrayidx39.us = getelementptr inbounds ptr, ptr %tmp_res, i64 %indvars.iv164
  %113 = load ptr, ptr %arrayidx39.us, align 8
  %arrayidx41.us = getelementptr inbounds ptr, ptr %tmp_res, i64 %indvars.iv166
  %114 = load ptr, ptr %arrayidx41.us, align 8
  %indvars.iv.next167 = add nuw nsw i64 %indvars.iv166, 1
  %arrayidx44.us = getelementptr inbounds ptr, ptr %tmp_res, i64 %indvars.iv.next167
  %115 = load ptr, ptr %arrayidx44.us, align 8
  %arrayidx47.us = getelementptr inbounds i8, ptr %arrayidx41.us, i64 16
  %116 = load ptr, ptr %arrayidx47.us, align 8
  %arrayidx50.us = getelementptr inbounds i8, ptr %arrayidx41.us, i64 24
  %117 = load ptr, ptr %arrayidx50.us, align 8
  %arrayidx53.us = getelementptr inbounds i8, ptr %arrayidx41.us, i64 32
  %118 = load ptr, ptr %arrayidx53.us, align 8
  %arrayidx56.us = getelementptr inbounds i8, ptr %arrayidx41.us, i64 40
  %119 = load ptr, ptr %arrayidx56.us, align 8
  %arrayidx58.us = getelementptr inbounds ptr, ptr %block, i64 %indvars.iv166
  %120 = load ptr, ptr %arrayidx58.us, align 8
  br i1 %min.iters.check275, label %for.body62.us.preheader, label %vector.memcheck238

vector.memcheck238:                               ; preds = %for.body36.us
  %121 = getelementptr i8, ptr %120, i64 %101
  %scevgep239 = getelementptr i8, ptr %121, i64 2
  %scevgep240 = getelementptr i8, ptr %114, i64 %103
  %scevgep241 = getelementptr i8, ptr %119, i64 %103
  %scevgep242 = getelementptr i8, ptr %115, i64 %103
  %scevgep243 = getelementptr i8, ptr %118, i64 %103
  %scevgep244 = getelementptr i8, ptr %116, i64 %103
  %scevgep245 = getelementptr i8, ptr %117, i64 %103
  %scevgep246 = getelementptr i8, ptr %113, i64 %103
  %122 = insertelement <4 x ptr> poison, ptr %120, i64 0
  %123 = shufflevector <4 x ptr> %122, <4 x ptr> poison, <4 x i32> zeroinitializer
  %124 = insertelement <4 x ptr> poison, ptr %scevgep240, i64 0
  %125 = insertelement <4 x ptr> %124, ptr %scevgep241, i64 1
  %126 = insertelement <4 x ptr> %125, ptr %scevgep242, i64 2
  %127 = insertelement <4 x ptr> %126, ptr %scevgep243, i64 3
  %128 = icmp ult <4 x ptr> %123, %127
  %129 = insertelement <4 x ptr> poison, ptr %114, i64 0
  %130 = insertelement <4 x ptr> %129, ptr %119, i64 1
  %131 = insertelement <4 x ptr> %130, ptr %115, i64 2
  %132 = insertelement <4 x ptr> %131, ptr %118, i64 3
  %133 = insertelement <4 x ptr> poison, ptr %scevgep239, i64 0
  %134 = shufflevector <4 x ptr> %133, <4 x ptr> poison, <4 x i32> zeroinitializer
  %135 = icmp ult <4 x ptr> %132, %134
  %136 = and <4 x i1> %128, %135
  %bound0261 = icmp ult ptr %120, %scevgep244
  %bound1262 = icmp ult ptr %116, %scevgep239
  %found.conflict263 = and i1 %bound0261, %bound1262
  %bound0265 = icmp ult ptr %120, %scevgep245
  %bound1266 = icmp ult ptr %117, %scevgep239
  %found.conflict267 = and i1 %bound0265, %bound1266
  %bound0269 = icmp ult ptr %120, %scevgep246
  %bound1270 = icmp ult ptr %113, %scevgep239
  %found.conflict271 = and i1 %bound0269, %bound1270
  %137 = bitcast <4 x i1> %136 to i4
  %138 = icmp ne i4 %137, 0
  %op.rdx = or i1 %138, %found.conflict263
  %op.rdx369 = or i1 %found.conflict267, %found.conflict271
  %op.rdx370 = or i1 %op.rdx, %op.rdx369
  br i1 %op.rdx370, label %for.body62.us.preheader, label %vector.ph276

vector.ph276:                                     ; preds = %vector.memcheck238
  %ind.end281 = getelementptr i8, ptr %120, i64 %105
  %ind.end283 = getelementptr i8, ptr %119, i64 %106
  %ind.end285 = getelementptr i8, ptr %118, i64 %107
  %ind.end287 = getelementptr i8, ptr %117, i64 %108
  %ind.end289 = getelementptr i8, ptr %116, i64 %109
  %ind.end291 = getelementptr i8, ptr %115, i64 %110
  %ind.end293 = getelementptr i8, ptr %114, i64 %111
  %ind.end295 = getelementptr i8, ptr %113, i64 %112
  br label %vector.body297

vector.body297:                                   ; preds = %vector.body297, %vector.ph276
  %index298 = phi i64 [ 0, %vector.ph276 ], [ %index.next367, %vector.body297 ]
  %offset.idx299 = shl i64 %index298, 1
  %next.gep300 = getelementptr i8, ptr %120, i64 %offset.idx299
  %offset.idx304 = shl i64 %index298, 2
  %next.gep305 = getelementptr i8, ptr %119, i64 %offset.idx304
  %offset.idx309 = shl i64 %index298, 2
  %next.gep310 = getelementptr i8, ptr %118, i64 %offset.idx309
  %offset.idx314 = shl i64 %index298, 2
  %next.gep315 = getelementptr i8, ptr %117, i64 %offset.idx314
  %offset.idx319 = shl i64 %index298, 2
  %next.gep320 = getelementptr i8, ptr %116, i64 %offset.idx319
  %offset.idx324 = shl i64 %index298, 2
  %next.gep325 = getelementptr i8, ptr %115, i64 %offset.idx324
  %offset.idx329 = shl i64 %index298, 2
  %next.gep330 = getelementptr i8, ptr %114, i64 %offset.idx329
  %offset.idx334 = shl i64 %index298, 2
  %next.gep335 = getelementptr i8, ptr %113, i64 %offset.idx334
  %139 = getelementptr i8, ptr %next.gep330, i64 16
  %140 = getelementptr i8, ptr %next.gep330, i64 32
  %141 = getelementptr i8, ptr %next.gep330, i64 48
  %wide.load339 = load <4 x i32>, ptr %next.gep330, align 4, !alias.scope !77
  %wide.load340 = load <4 x i32>, ptr %139, align 4, !alias.scope !77
  %wide.load341 = load <4 x i32>, ptr %140, align 4, !alias.scope !77
  %wide.load342 = load <4 x i32>, ptr %141, align 4, !alias.scope !77
  %142 = getelementptr i8, ptr %next.gep305, i64 16
  %143 = getelementptr i8, ptr %next.gep305, i64 32
  %144 = getelementptr i8, ptr %next.gep305, i64 48
  %wide.load343 = load <4 x i32>, ptr %next.gep305, align 4, !alias.scope !80
  %wide.load344 = load <4 x i32>, ptr %142, align 4, !alias.scope !80
  %wide.load345 = load <4 x i32>, ptr %143, align 4, !alias.scope !80
  %wide.load346 = load <4 x i32>, ptr %144, align 4, !alias.scope !80
  %145 = getelementptr i8, ptr %next.gep325, i64 16
  %146 = getelementptr i8, ptr %next.gep325, i64 32
  %147 = getelementptr i8, ptr %next.gep325, i64 48
  %wide.load347 = load <4 x i32>, ptr %next.gep325, align 4, !alias.scope !82
  %wide.load348 = load <4 x i32>, ptr %145, align 4, !alias.scope !82
  %wide.load349 = load <4 x i32>, ptr %146, align 4, !alias.scope !82
  %wide.load350 = load <4 x i32>, ptr %147, align 4, !alias.scope !82
  %148 = getelementptr i8, ptr %next.gep310, i64 16
  %149 = getelementptr i8, ptr %next.gep310, i64 32
  %150 = getelementptr i8, ptr %next.gep310, i64 48
  %wide.load351 = load <4 x i32>, ptr %next.gep310, align 4, !alias.scope !84
  %wide.load352 = load <4 x i32>, ptr %148, align 4, !alias.scope !84
  %wide.load353 = load <4 x i32>, ptr %149, align 4, !alias.scope !84
  %wide.load354 = load <4 x i32>, ptr %150, align 4, !alias.scope !84
  %151 = add nsw <4 x i32> %wide.load351, %wide.load347
  %152 = add nsw <4 x i32> %wide.load352, %wide.load348
  %153 = add nsw <4 x i32> %wide.load353, %wide.load349
  %154 = add nsw <4 x i32> %wide.load354, %wide.load350
  %155 = mul <4 x i32> %151, <i32 -5, i32 -5, i32 -5, i32 -5>
  %156 = mul <4 x i32> %152, <i32 -5, i32 -5, i32 -5, i32 -5>
  %157 = mul <4 x i32> %153, <i32 -5, i32 -5, i32 -5, i32 -5>
  %158 = mul <4 x i32> %154, <i32 -5, i32 -5, i32 -5, i32 -5>
  %159 = getelementptr i8, ptr %next.gep320, i64 16
  %160 = getelementptr i8, ptr %next.gep320, i64 32
  %161 = getelementptr i8, ptr %next.gep320, i64 48
  %wide.load355 = load <4 x i32>, ptr %next.gep320, align 4, !alias.scope !86
  %wide.load356 = load <4 x i32>, ptr %159, align 4, !alias.scope !86
  %wide.load357 = load <4 x i32>, ptr %160, align 4, !alias.scope !86
  %wide.load358 = load <4 x i32>, ptr %161, align 4, !alias.scope !86
  %162 = getelementptr i8, ptr %next.gep315, i64 16
  %163 = getelementptr i8, ptr %next.gep315, i64 32
  %164 = getelementptr i8, ptr %next.gep315, i64 48
  %wide.load359 = load <4 x i32>, ptr %next.gep315, align 4, !alias.scope !88
  %wide.load360 = load <4 x i32>, ptr %162, align 4, !alias.scope !88
  %wide.load361 = load <4 x i32>, ptr %163, align 4, !alias.scope !88
  %wide.load362 = load <4 x i32>, ptr %164, align 4, !alias.scope !88
  %165 = add nsw <4 x i32> %wide.load359, %wide.load355
  %166 = add nsw <4 x i32> %wide.load360, %wide.load356
  %167 = add nsw <4 x i32> %wide.load361, %wide.load357
  %168 = add nsw <4 x i32> %wide.load362, %wide.load358
  %169 = mul nsw <4 x i32> %165, <i32 20, i32 20, i32 20, i32 20>
  %170 = mul nsw <4 x i32> %166, <i32 20, i32 20, i32 20, i32 20>
  %171 = mul nsw <4 x i32> %167, <i32 20, i32 20, i32 20, i32 20>
  %172 = mul nsw <4 x i32> %168, <i32 20, i32 20, i32 20, i32 20>
  %173 = add <4 x i32> %wide.load339, <i32 512, i32 512, i32 512, i32 512>
  %174 = add <4 x i32> %wide.load340, <i32 512, i32 512, i32 512, i32 512>
  %175 = add <4 x i32> %wide.load341, <i32 512, i32 512, i32 512, i32 512>
  %176 = add <4 x i32> %wide.load342, <i32 512, i32 512, i32 512, i32 512>
  %177 = add <4 x i32> %173, %wide.load343
  %178 = add <4 x i32> %174, %wide.load344
  %179 = add <4 x i32> %175, %wide.load345
  %180 = add <4 x i32> %176, %wide.load346
  %181 = add <4 x i32> %177, %155
  %182 = add <4 x i32> %178, %156
  %183 = add <4 x i32> %179, %157
  %184 = add <4 x i32> %180, %158
  %185 = add <4 x i32> %181, %169
  %186 = add <4 x i32> %182, %170
  %187 = add <4 x i32> %183, %171
  %188 = add <4 x i32> %184, %172
  %189 = ashr <4 x i32> %185, <i32 10, i32 10, i32 10, i32 10>
  %190 = ashr <4 x i32> %186, <i32 10, i32 10, i32 10, i32 10>
  %191 = ashr <4 x i32> %187, <i32 10, i32 10, i32 10, i32 10>
  %192 = ashr <4 x i32> %188, <i32 10, i32 10, i32 10, i32 10>
  %193 = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %189, <4 x i32> zeroinitializer)
  %194 = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %190, <4 x i32> zeroinitializer)
  %195 = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %191, <4 x i32> zeroinitializer)
  %196 = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %192, <4 x i32> zeroinitializer)
  %197 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %193, <4 x i32> %broadcast.splat)
  %198 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %194, <4 x i32> %broadcast.splat)
  %199 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %195, <4 x i32> %broadcast.splat)
  %200 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %196, <4 x i32> %broadcast.splat)
  %201 = trunc <4 x i32> %197 to <4 x i16>
  %202 = trunc <4 x i32> %198 to <4 x i16>
  %203 = trunc <4 x i32> %199 to <4 x i16>
  %204 = trunc <4 x i32> %200 to <4 x i16>
  %205 = getelementptr i8, ptr %next.gep300, i64 8
  %206 = getelementptr i8, ptr %next.gep300, i64 16
  %207 = getelementptr i8, ptr %next.gep300, i64 24
  store <4 x i16> %201, ptr %next.gep300, align 2, !alias.scope !90, !noalias !92
  store <4 x i16> %202, ptr %205, align 2, !alias.scope !90, !noalias !92
  store <4 x i16> %203, ptr %206, align 2, !alias.scope !90, !noalias !92
  store <4 x i16> %204, ptr %207, align 2, !alias.scope !90, !noalias !92
  %208 = and <4 x i32> %197, <i32 65535, i32 65535, i32 65535, i32 65535>
  %209 = and <4 x i32> %198, <i32 65535, i32 65535, i32 65535, i32 65535>
  %210 = and <4 x i32> %199, <i32 65535, i32 65535, i32 65535, i32 65535>
  %211 = and <4 x i32> %200, <i32 65535, i32 65535, i32 65535, i32 65535>
  %212 = getelementptr i8, ptr %next.gep335, i64 16
  %213 = getelementptr i8, ptr %next.gep335, i64 32
  %214 = getelementptr i8, ptr %next.gep335, i64 48
  %wide.load363 = load <4 x i32>, ptr %next.gep335, align 4, !alias.scope !94
  %wide.load364 = load <4 x i32>, ptr %212, align 4, !alias.scope !94
  %wide.load365 = load <4 x i32>, ptr %213, align 4, !alias.scope !94
  %wide.load366 = load <4 x i32>, ptr %214, align 4, !alias.scope !94
  %215 = add nsw <4 x i32> %wide.load363, <i32 16, i32 16, i32 16, i32 16>
  %216 = add nsw <4 x i32> %wide.load364, <i32 16, i32 16, i32 16, i32 16>
  %217 = add nsw <4 x i32> %wide.load365, <i32 16, i32 16, i32 16, i32 16>
  %218 = add nsw <4 x i32> %wide.load366, <i32 16, i32 16, i32 16, i32 16>
  %219 = ashr <4 x i32> %215, <i32 5, i32 5, i32 5, i32 5>
  %220 = ashr <4 x i32> %216, <i32 5, i32 5, i32 5, i32 5>
  %221 = ashr <4 x i32> %217, <i32 5, i32 5, i32 5, i32 5>
  %222 = ashr <4 x i32> %218, <i32 5, i32 5, i32 5, i32 5>
  %223 = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %219, <4 x i32> zeroinitializer)
  %224 = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %220, <4 x i32> zeroinitializer)
  %225 = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %221, <4 x i32> zeroinitializer)
  %226 = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %222, <4 x i32> zeroinitializer)
  %227 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %223, <4 x i32> %broadcast.splat)
  %228 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %224, <4 x i32> %broadcast.splat)
  %229 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %225, <4 x i32> %broadcast.splat)
  %230 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %226, <4 x i32> %broadcast.splat)
  %231 = add nsw <4 x i32> %227, <i32 1, i32 1, i32 1, i32 1>
  %232 = add nsw <4 x i32> %228, <i32 1, i32 1, i32 1, i32 1>
  %233 = add nsw <4 x i32> %229, <i32 1, i32 1, i32 1, i32 1>
  %234 = add nsw <4 x i32> %230, <i32 1, i32 1, i32 1, i32 1>
  %235 = add nsw <4 x i32> %231, %208
  %236 = add nsw <4 x i32> %232, %209
  %237 = add nsw <4 x i32> %233, %210
  %238 = add nsw <4 x i32> %234, %211
  %239 = lshr <4 x i32> %235, <i32 1, i32 1, i32 1, i32 1>
  %240 = lshr <4 x i32> %236, <i32 1, i32 1, i32 1, i32 1>
  %241 = lshr <4 x i32> %237, <i32 1, i32 1, i32 1, i32 1>
  %242 = lshr <4 x i32> %238, <i32 1, i32 1, i32 1, i32 1>
  %243 = trunc <4 x i32> %239 to <4 x i16>
  %244 = trunc <4 x i32> %240 to <4 x i16>
  %245 = trunc <4 x i32> %241 to <4 x i16>
  %246 = trunc <4 x i32> %242 to <4 x i16>
  store <4 x i16> %243, ptr %next.gep300, align 2, !alias.scope !90, !noalias !92
  store <4 x i16> %244, ptr %205, align 2, !alias.scope !90, !noalias !92
  store <4 x i16> %245, ptr %206, align 2, !alias.scope !90, !noalias !92
  store <4 x i16> %246, ptr %207, align 2, !alias.scope !90, !noalias !92
  %index.next367 = add nuw i64 %index298, 16
  %247 = icmp eq i64 %index.next367, %n.vec278
  br i1 %247, label %middle.block273, label %vector.body297, !llvm.loop !95

middle.block273:                                  ; preds = %vector.body297
  br i1 %cmp.n368, label %for.cond59.for.cond33.loopexit_crit_edge.us, label %for.body62.us.preheader

for.body62.us.preheader:                          ; preds = %middle.block273, %vector.memcheck238, %for.body36.us
  %i.1151.us.ph = phi i32 [ 0, %vector.memcheck238 ], [ 0, %for.body36.us ], [ %ind.end279, %middle.block273 ]
  %orig_line.0150.us.ph = phi ptr [ %120, %vector.memcheck238 ], [ %120, %for.body36.us ], [ %ind.end281, %middle.block273 ]
  %x5.0149.us.ph = phi ptr [ %119, %vector.memcheck238 ], [ %119, %for.body36.us ], [ %ind.end283, %middle.block273 ]
  %x4.0148.us.ph = phi ptr [ %118, %vector.memcheck238 ], [ %118, %for.body36.us ], [ %ind.end285, %middle.block273 ]
  %x3.0147.us.ph = phi ptr [ %117, %vector.memcheck238 ], [ %117, %for.body36.us ], [ %ind.end287, %middle.block273 ]
  %x2.0146.us.ph = phi ptr [ %116, %vector.memcheck238 ], [ %116, %for.body36.us ], [ %ind.end289, %middle.block273 ]
  %x1.0145.us.ph = phi ptr [ %115, %vector.memcheck238 ], [ %115, %for.body36.us ], [ %ind.end291, %middle.block273 ]
  %x0.0144.us.ph = phi ptr [ %114, %vector.memcheck238 ], [ %114, %for.body36.us ], [ %ind.end293, %middle.block273 ]
  %tmp_line.1143.us.ph = phi ptr [ %113, %vector.memcheck238 ], [ %113, %for.body36.us ], [ %ind.end295, %middle.block273 ]
  br label %for.body62.us

for.body62.us:                                    ; preds = %for.body62.us.preheader, %for.body62.us
  %i.1151.us = phi i32 [ %inc89.us, %for.body62.us ], [ %i.1151.us.ph, %for.body62.us.preheader ]
  %orig_line.0150.us = phi ptr [ %incdec.ptr87.us, %for.body62.us ], [ %orig_line.0150.us.ph, %for.body62.us.preheader ]
  %x5.0149.us = phi ptr [ %incdec.ptr64.us, %for.body62.us ], [ %x5.0149.us.ph, %for.body62.us.preheader ]
  %x4.0148.us = phi ptr [ %incdec.ptr67.us, %for.body62.us ], [ %x4.0148.us.ph, %for.body62.us.preheader ]
  %x3.0147.us = phi ptr [ %incdec.ptr72.us, %for.body62.us ], [ %x3.0147.us.ph, %for.body62.us.preheader ]
  %x2.0146.us = phi ptr [ %incdec.ptr71.us, %for.body62.us ], [ %x2.0146.us.ph, %for.body62.us.preheader ]
  %x1.0145.us = phi ptr [ %incdec.ptr66.us, %for.body62.us ], [ %x1.0145.us.ph, %for.body62.us.preheader ]
  %x0.0144.us = phi ptr [ %incdec.ptr63.us, %for.body62.us ], [ %x0.0144.us.ph, %for.body62.us.preheader ]
  %tmp_line.1143.us = phi ptr [ %incdec.ptr79.us, %for.body62.us ], [ %tmp_line.1143.us.ph, %for.body62.us.preheader ]
  %incdec.ptr63.us = getelementptr inbounds i8, ptr %x0.0144.us, i64 4
  %248 = load i32, ptr %x0.0144.us, align 4
  %incdec.ptr64.us = getelementptr inbounds i8, ptr %x5.0149.us, i64 4
  %249 = load i32, ptr %x5.0149.us, align 4
  %incdec.ptr66.us = getelementptr inbounds i8, ptr %x1.0145.us, i64 4
  %250 = load i32, ptr %x1.0145.us, align 4
  %incdec.ptr67.us = getelementptr inbounds i8, ptr %x4.0148.us, i64 4
  %251 = load i32, ptr %x4.0148.us, align 4
  %add68.us = add nsw i32 %251, %250
  %mul69.neg.us = mul i32 %add68.us, -5
  %incdec.ptr71.us = getelementptr inbounds i8, ptr %x2.0146.us, i64 4
  %252 = load i32, ptr %x2.0146.us, align 4
  %incdec.ptr72.us = getelementptr inbounds i8, ptr %x3.0147.us, i64 4
  %253 = load i32, ptr %x3.0147.us, align 4
  %add73.us = add nsw i32 %253, %252
  %mul74.us = mul nsw i32 %add73.us, 20
  %add65.us = add i32 %248, 512
  %sub70.us = add i32 %add65.us, %249
  %add75.us = add i32 %sub70.us, %mul69.neg.us
  %add76.us = add i32 %add75.us, %mul74.us
  %shr.us = ashr i32 %add76.us, 10
  %cond.i.i.us = tail call noundef i32 @llvm.smax.i32(i32 %shr.us, i32 0)
  %cond.i4.i.us = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i.us, i32 %max_imgpel_value)
  %conv77.us = trunc i32 %cond.i4.i.us to i16
  store i16 %conv77.us, ptr %orig_line.0150.us, align 2
  %conv78.us = and i32 %cond.i4.i.us, 65535
  %incdec.ptr79.us = getelementptr inbounds i8, ptr %tmp_line.1143.us, i64 4
  %254 = load i32, ptr %tmp_line.1143.us, align 4
  %add80.us = add nsw i32 %254, 16
  %shr81.us = ashr i32 %add80.us, 5
  %cond.i.i128.us = tail call noundef i32 @llvm.smax.i32(i32 %shr81.us, i32 0)
  %cond.i4.i129.us = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i128.us, i32 %max_imgpel_value)
  %add83.us = add nsw i32 %cond.i4.i129.us, 1
  %add84.us = add nsw i32 %add83.us, %conv78.us
  %shr85.us = lshr i32 %add84.us, 1
  %conv86.us = trunc i32 %shr85.us to i16
  store i16 %conv86.us, ptr %orig_line.0150.us, align 2
  %incdec.ptr87.us = getelementptr inbounds i8, ptr %orig_line.0150.us, i64 2
  %inc89.us = add nuw nsw i32 %i.1151.us, 1
  %exitcond163.not = icmp eq i32 %inc89.us, %hor_block_size
  br i1 %exitcond163.not, label %for.cond59.for.cond33.loopexit_crit_edge.us, label %for.body62.us, !llvm.loop !96

for.cond59.for.cond33.loopexit_crit_edge.us:      ; preds = %for.body62.us, %middle.block273
  %indvars.iv.next165 = add nuw nsw i64 %indvars.iv164, 1
  %exitcond172.not = icmp eq i64 %indvars.iv.next167, %wide.trip.count171
  br i1 %exitcond172.not, label %for.end93, label %for.body36.us

for.end93:                                        ; preds = %for.cond59.for.cond33.loopexit_crit_edge.us, %entry, %for.cond33.preheader
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @get_luma_22(ptr nocapture noundef readonly %block, ptr nocapture noundef readonly %cur_imgY, ptr nocapture noundef readonly %tmp_res, i32 noundef %ver_block_size, i32 noundef %hor_block_size, i32 noundef %x_pos, i32 noundef %max_imgpel_value) unnamed_addr #5 {
entry:
  %add = add i32 %ver_block_size, 5
  %cmp118 = icmp sgt i32 %ver_block_size, -5
  br i1 %cmp118, label %for.body.lr.ph, label %for.end81

for.body.lr.ph:                                   ; preds = %entry
  %0 = sext i32 %x_pos to i64
  %cmp10109 = icmp sgt i32 %hor_block_size, 0
  br i1 %cmp10109, label %for.body.us.preheader, label %for.cond33.preheader

for.body.us.preheader:                            ; preds = %for.body.lr.ph
  %smax = tail call i32 @llvm.smax.i32(i32 %add, i32 1)
  %wide.trip.count = zext nneg i32 %smax to i64
  %1 = add nsw i32 %hor_block_size, -1
  %2 = zext i32 %1 to i64
  %3 = shl nuw nsw i64 %2, 2
  %4 = add nsw i64 %0, %2
  %5 = shl nsw i64 %4, 1
  %6 = zext nneg i32 %hor_block_size to i64
  %min.iters.check = icmp ult i32 %hor_block_size, 16
  %n.vec = and i64 %6, 2147483632
  %ind.end = trunc nuw nsw i64 %n.vec to i32
  %7 = shl nuw nsw i64 %n.vec, 1
  %8 = shl nuw nsw i64 %n.vec, 1
  %9 = shl nuw nsw i64 %n.vec, 1
  %10 = shl nuw nsw i64 %n.vec, 1
  %11 = shl nuw nsw i64 %n.vec, 1
  %12 = shl nuw nsw i64 %n.vec, 2
  %cmp.n = icmp eq i64 %n.vec, %6
  br label %for.body.us

for.body.us:                                      ; preds = %for.body.us.preheader, %for.cond9.for.inc30_crit_edge.us
  %indvars.iv134 = phi i64 [ 0, %for.body.us.preheader ], [ %indvars.iv.next135, %for.cond9.for.inc30_crit_edge.us ]
  %indvars.iv = phi i64 [ -2, %for.body.us.preheader ], [ %indvars.iv.next, %for.cond9.for.inc30_crit_edge.us ]
  %arrayidx.us = getelementptr inbounds ptr, ptr %cur_imgY, i64 %indvars.iv
  %13 = load ptr, ptr %arrayidx.us, align 8
  %14 = getelementptr i16, ptr %13, i64 %0
  %arrayidx2.us = getelementptr i8, ptr %14, i64 -4
  %add.ptr.us = getelementptr i8, ptr %14, i64 -2
  %add.ptr5.us = getelementptr inbounds i8, ptr %14, i64 4
  %add.ptr6.us = getelementptr inbounds i8, ptr %14, i64 6
  %arrayidx8.us = getelementptr inbounds ptr, ptr %tmp_res, i64 %indvars.iv134
  %15 = load ptr, ptr %arrayidx8.us, align 8
  br i1 %min.iters.check, label %for.body11.us.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %for.body.us
  %16 = getelementptr i8, ptr %15, i64 %3
  %scevgep = getelementptr i8, ptr %16, i64 4
  %17 = getelementptr i8, ptr %13, i64 %5
  %scevgep147 = getelementptr i8, ptr %17, i64 8
  %bound0 = icmp ult ptr %15, %scevgep147
  %bound1 = icmp ult ptr %arrayidx2.us, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %for.body11.us.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %ind.end148 = getelementptr i8, ptr %add.ptr6.us, i64 %7
  %ind.end150 = getelementptr i8, ptr %add.ptr5.us, i64 %8
  %ind.end152 = getelementptr i8, ptr %14, i64 %9
  %ind.end154 = getelementptr i8, ptr %add.ptr.us, i64 %10
  %ind.end156 = getelementptr i8, ptr %arrayidx2.us, i64 %11
  %ind.end158 = getelementptr i8, ptr %15, i64 %12
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %offset.idx = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %add.ptr6.us, i64 %offset.idx
  %offset.idx163 = shl i64 %index, 1
  %next.gep164 = getelementptr i8, ptr %add.ptr5.us, i64 %offset.idx163
  %offset.idx168 = shl i64 %index, 1
  %next.gep169 = getelementptr i8, ptr %14, i64 %offset.idx168
  %offset.idx173 = shl i64 %index, 1
  %next.gep174 = getelementptr i8, ptr %add.ptr.us, i64 %offset.idx173
  %offset.idx178 = shl i64 %index, 1
  %next.gep179 = getelementptr i8, ptr %arrayidx2.us, i64 %offset.idx178
  %offset.idx183 = shl i64 %index, 2
  %next.gep184 = getelementptr i8, ptr %15, i64 %offset.idx183
  %18 = getelementptr i8, ptr %next.gep169, i64 2
  %19 = getelementptr i8, ptr %next.gep179, i64 8
  %20 = getelementptr i8, ptr %next.gep179, i64 16
  %21 = getelementptr i8, ptr %next.gep179, i64 24
  %wide.load = load <4 x i16>, ptr %next.gep179, align 2, !alias.scope !97
  %wide.load188 = load <4 x i16>, ptr %19, align 2, !alias.scope !97
  %wide.load189 = load <4 x i16>, ptr %20, align 2, !alias.scope !97
  %wide.load190 = load <4 x i16>, ptr %21, align 2, !alias.scope !97
  %22 = zext <4 x i16> %wide.load to <4 x i32>
  %23 = zext <4 x i16> %wide.load188 to <4 x i32>
  %24 = zext <4 x i16> %wide.load189 to <4 x i32>
  %25 = zext <4 x i16> %wide.load190 to <4 x i32>
  %26 = getelementptr i8, ptr %next.gep, i64 8
  %27 = getelementptr i8, ptr %next.gep, i64 16
  %28 = getelementptr i8, ptr %next.gep, i64 24
  %wide.load191 = load <4 x i16>, ptr %next.gep, align 2, !alias.scope !97
  %wide.load192 = load <4 x i16>, ptr %26, align 2, !alias.scope !97
  %wide.load193 = load <4 x i16>, ptr %27, align 2, !alias.scope !97
  %wide.load194 = load <4 x i16>, ptr %28, align 2, !alias.scope !97
  %29 = zext <4 x i16> %wide.load191 to <4 x i32>
  %30 = zext <4 x i16> %wide.load192 to <4 x i32>
  %31 = zext <4 x i16> %wide.load193 to <4 x i32>
  %32 = zext <4 x i16> %wide.load194 to <4 x i32>
  %33 = add nuw nsw <4 x i32> %29, %22
  %34 = add nuw nsw <4 x i32> %30, %23
  %35 = add nuw nsw <4 x i32> %31, %24
  %36 = add nuw nsw <4 x i32> %32, %25
  %37 = getelementptr i8, ptr %next.gep174, i64 8
  %38 = getelementptr i8, ptr %next.gep174, i64 16
  %39 = getelementptr i8, ptr %next.gep174, i64 24
  %wide.load195 = load <4 x i16>, ptr %next.gep174, align 2, !alias.scope !97
  %wide.load196 = load <4 x i16>, ptr %37, align 2, !alias.scope !97
  %wide.load197 = load <4 x i16>, ptr %38, align 2, !alias.scope !97
  %wide.load198 = load <4 x i16>, ptr %39, align 2, !alias.scope !97
  %40 = zext <4 x i16> %wide.load195 to <4 x i32>
  %41 = zext <4 x i16> %wide.load196 to <4 x i32>
  %42 = zext <4 x i16> %wide.load197 to <4 x i32>
  %43 = zext <4 x i16> %wide.load198 to <4 x i32>
  %44 = getelementptr i8, ptr %next.gep164, i64 8
  %45 = getelementptr i8, ptr %next.gep164, i64 16
  %46 = getelementptr i8, ptr %next.gep164, i64 24
  %wide.load199 = load <4 x i16>, ptr %next.gep164, align 2, !alias.scope !97
  %wide.load200 = load <4 x i16>, ptr %44, align 2, !alias.scope !97
  %wide.load201 = load <4 x i16>, ptr %45, align 2, !alias.scope !97
  %wide.load202 = load <4 x i16>, ptr %46, align 2, !alias.scope !97
  %47 = zext <4 x i16> %wide.load199 to <4 x i32>
  %48 = zext <4 x i16> %wide.load200 to <4 x i32>
  %49 = zext <4 x i16> %wide.load201 to <4 x i32>
  %50 = zext <4 x i16> %wide.load202 to <4 x i32>
  %51 = add nuw nsw <4 x i32> %47, %40
  %52 = add nuw nsw <4 x i32> %48, %41
  %53 = add nuw nsw <4 x i32> %49, %42
  %54 = add nuw nsw <4 x i32> %50, %43
  %55 = mul nsw <4 x i32> %51, <i32 -5, i32 -5, i32 -5, i32 -5>
  %56 = mul nsw <4 x i32> %52, <i32 -5, i32 -5, i32 -5, i32 -5>
  %57 = mul nsw <4 x i32> %53, <i32 -5, i32 -5, i32 -5, i32 -5>
  %58 = mul nsw <4 x i32> %54, <i32 -5, i32 -5, i32 -5, i32 -5>
  %59 = add nsw <4 x i32> %33, %55
  %60 = add nsw <4 x i32> %34, %56
  %61 = add nsw <4 x i32> %35, %57
  %62 = add nsw <4 x i32> %36, %58
  %63 = getelementptr i8, ptr %next.gep169, i64 8
  %64 = getelementptr i8, ptr %next.gep169, i64 16
  %65 = getelementptr i8, ptr %next.gep169, i64 24
  %wide.load203 = load <4 x i16>, ptr %next.gep169, align 2, !alias.scope !97
  %wide.load204 = load <4 x i16>, ptr %63, align 2, !alias.scope !97
  %wide.load205 = load <4 x i16>, ptr %64, align 2, !alias.scope !97
  %wide.load206 = load <4 x i16>, ptr %65, align 2, !alias.scope !97
  %66 = zext <4 x i16> %wide.load203 to <4 x i32>
  %67 = zext <4 x i16> %wide.load204 to <4 x i32>
  %68 = zext <4 x i16> %wide.load205 to <4 x i32>
  %69 = zext <4 x i16> %wide.load206 to <4 x i32>
  %70 = getelementptr i8, ptr %next.gep169, i64 10
  %71 = getelementptr i8, ptr %next.gep169, i64 18
  %72 = getelementptr i8, ptr %next.gep169, i64 26
  %wide.load207 = load <4 x i16>, ptr %18, align 2, !alias.scope !97
  %wide.load208 = load <4 x i16>, ptr %70, align 2, !alias.scope !97
  %wide.load209 = load <4 x i16>, ptr %71, align 2, !alias.scope !97
  %wide.load210 = load <4 x i16>, ptr %72, align 2, !alias.scope !97
  %73 = zext <4 x i16> %wide.load207 to <4 x i32>
  %74 = zext <4 x i16> %wide.load208 to <4 x i32>
  %75 = zext <4 x i16> %wide.load209 to <4 x i32>
  %76 = zext <4 x i16> %wide.load210 to <4 x i32>
  %77 = add nuw nsw <4 x i32> %73, %66
  %78 = add nuw nsw <4 x i32> %74, %67
  %79 = add nuw nsw <4 x i32> %75, %68
  %80 = add nuw nsw <4 x i32> %76, %69
  %81 = mul nuw nsw <4 x i32> %77, <i32 20, i32 20, i32 20, i32 20>
  %82 = mul nuw nsw <4 x i32> %78, <i32 20, i32 20, i32 20, i32 20>
  %83 = mul nuw nsw <4 x i32> %79, <i32 20, i32 20, i32 20, i32 20>
  %84 = mul nuw nsw <4 x i32> %80, <i32 20, i32 20, i32 20, i32 20>
  %85 = add nsw <4 x i32> %59, %81
  %86 = add nsw <4 x i32> %60, %82
  %87 = add nsw <4 x i32> %61, %83
  %88 = add nsw <4 x i32> %62, %84
  %89 = getelementptr i8, ptr %next.gep184, i64 16
  %90 = getelementptr i8, ptr %next.gep184, i64 32
  %91 = getelementptr i8, ptr %next.gep184, i64 48
  store <4 x i32> %85, ptr %next.gep184, align 4, !alias.scope !100, !noalias !97
  store <4 x i32> %86, ptr %89, align 4, !alias.scope !100, !noalias !97
  store <4 x i32> %87, ptr %90, align 4, !alias.scope !100, !noalias !97
  store <4 x i32> %88, ptr %91, align 4, !alias.scope !100, !noalias !97
  %index.next = add nuw i64 %index, 16
  %92 = icmp eq i64 %index.next, %n.vec
  br i1 %92, label %middle.block, label %vector.body, !llvm.loop !102

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %for.cond9.for.inc30_crit_edge.us, label %for.body11.us.preheader

for.body11.us.preheader:                          ; preds = %middle.block, %vector.memcheck, %for.body.us
  %i.0117.us.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %for.body.us ], [ %ind.end, %middle.block ]
  %p5.0116.us.ph = phi ptr [ %add.ptr6.us, %vector.memcheck ], [ %add.ptr6.us, %for.body.us ], [ %ind.end148, %middle.block ]
  %p4.0115.us.ph = phi ptr [ %add.ptr5.us, %vector.memcheck ], [ %add.ptr5.us, %for.body.us ], [ %ind.end150, %middle.block ]
  %.pn114.us.ph = phi ptr [ %14, %vector.memcheck ], [ %14, %for.body.us ], [ %ind.end152, %middle.block ]
  %p1.0112.us.ph = phi ptr [ %add.ptr.us, %vector.memcheck ], [ %add.ptr.us, %for.body.us ], [ %ind.end154, %middle.block ]
  %p0.0111.us.ph = phi ptr [ %arrayidx2.us, %vector.memcheck ], [ %arrayidx2.us, %for.body.us ], [ %ind.end156, %middle.block ]
  %tmp_line.0110.us.ph = phi ptr [ %15, %vector.memcheck ], [ %15, %for.body.us ], [ %ind.end158, %middle.block ]
  br label %for.body11.us

for.body11.us:                                    ; preds = %for.body11.us.preheader, %for.body11.us
  %i.0117.us = phi i32 [ %inc29.us, %for.body11.us ], [ %i.0117.us.ph, %for.body11.us.preheader ]
  %p5.0116.us = phi ptr [ %incdec.ptr12.us, %for.body11.us ], [ %p5.0116.us.ph, %for.body11.us.preheader ]
  %p4.0115.us = phi ptr [ %incdec.ptr17.us, %for.body11.us ], [ %p4.0115.us.ph, %for.body11.us.preheader ]
  %.pn114.us = phi ptr [ %p3.0.us, %for.body11.us ], [ %.pn114.us.ph, %for.body11.us.preheader ]
  %p1.0112.us = phi ptr [ %incdec.ptr15.us, %for.body11.us ], [ %p1.0112.us.ph, %for.body11.us.preheader ]
  %p0.0111.us = phi ptr [ %incdec.ptr.us, %for.body11.us ], [ %p0.0111.us.ph, %for.body11.us.preheader ]
  %tmp_line.0110.us = phi ptr [ %incdec.ptr28.us, %for.body11.us ], [ %tmp_line.0110.us.ph, %for.body11.us.preheader ]
  %p3.0.us = getelementptr i8, ptr %.pn114.us, i64 2
  %incdec.ptr.us = getelementptr inbounds i8, ptr %p0.0111.us, i64 2
  %93 = load i16, ptr %p0.0111.us, align 2
  %conv.us = zext i16 %93 to i32
  %incdec.ptr12.us = getelementptr inbounds i8, ptr %p5.0116.us, i64 2
  %94 = load i16, ptr %p5.0116.us, align 2
  %conv13.us = zext i16 %94 to i32
  %add14.us = add nuw nsw i32 %conv13.us, %conv.us
  %incdec.ptr15.us = getelementptr inbounds i8, ptr %p1.0112.us, i64 2
  %95 = load i16, ptr %p1.0112.us, align 2
  %conv16.us = zext i16 %95 to i32
  %incdec.ptr17.us = getelementptr inbounds i8, ptr %p4.0115.us, i64 2
  %96 = load i16, ptr %p4.0115.us, align 2
  %conv18.us = zext i16 %96 to i32
  %add19.us = add nuw nsw i32 %conv18.us, %conv16.us
  %mul.neg.us = mul nsw i32 %add19.us, -5
  %sub20.us = add nsw i32 %add14.us, %mul.neg.us
  %97 = load i16, ptr %.pn114.us, align 2
  %conv22.us = zext i16 %97 to i32
  %98 = load i16, ptr %p3.0.us, align 2
  %conv24.us = zext i16 %98 to i32
  %add25.us = add nuw nsw i32 %conv24.us, %conv22.us
  %mul26.us = mul nuw nsw i32 %add25.us, 20
  %add27.us = add nsw i32 %sub20.us, %mul26.us
  %incdec.ptr28.us = getelementptr inbounds i8, ptr %tmp_line.0110.us, i64 4
  store i32 %add27.us, ptr %tmp_line.0110.us, align 4
  %inc29.us = add nuw nsw i32 %i.0117.us, 1
  %exitcond.not = icmp eq i32 %inc29.us, %hor_block_size
  br i1 %exitcond.not, label %for.cond9.for.inc30_crit_edge.us, label %for.body11.us, !llvm.loop !103

for.cond9.for.inc30_crit_edge.us:                 ; preds = %for.body11.us, %middle.block
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %indvars.iv.next135 = add nuw nsw i64 %indvars.iv134, 1
  %exitcond139.not = icmp eq i64 %indvars.iv.next135, %wide.trip.count
  br i1 %exitcond139.not, label %for.cond33.preheader, label %for.body.us

for.cond33.preheader:                             ; preds = %for.cond9.for.inc30_crit_edge.us, %for.body.lr.ph
  %cmp34130 = icmp sgt i32 %ver_block_size, 0
  %cmp57121 = icmp sgt i32 %hor_block_size, 0
  %or.cond = and i1 %cmp34130, %cmp57121
  br i1 %or.cond, label %for.body36.us.preheader, label %for.end81

for.body36.us.preheader:                          ; preds = %for.cond33.preheader
  %wide.trip.count144 = zext nneg i32 %ver_block_size to i64
  %99 = add nsw i32 %hor_block_size, -1
  %100 = zext i32 %99 to i64
  %101 = shl nuw nsw i64 %100, 1
  %102 = shl nuw nsw i64 %100, 2
  %103 = add nuw nsw i64 %102, 4
  %104 = zext nneg i32 %hor_block_size to i64
  %min.iters.check243 = icmp ult i32 %hor_block_size, 16
  %n.vec246 = and i64 %104, 2147483632
  %ind.end247 = trunc nuw nsw i64 %n.vec246 to i32
  %105 = shl nuw nsw i64 %n.vec246, 1
  %106 = shl nuw nsw i64 %n.vec246, 2
  %107 = shl nuw nsw i64 %n.vec246, 2
  %108 = shl nuw nsw i64 %n.vec246, 2
  %109 = shl nuw nsw i64 %n.vec246, 2
  %110 = shl nuw nsw i64 %n.vec246, 2
  %111 = shl nuw nsw i64 %n.vec246, 2
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %max_imgpel_value, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %cmp.n325 = icmp eq i64 %n.vec246, %104
  br label %for.body36.us

for.body36.us:                                    ; preds = %for.body36.us.preheader, %for.cond56.for.cond33.loopexit_crit_edge.us
  %indvars.iv141 = phi i64 [ 0, %for.body36.us.preheader ], [ %indvars.iv.next142, %for.cond56.for.cond33.loopexit_crit_edge.us ]
  %arrayidx38.us = getelementptr inbounds ptr, ptr %tmp_res, i64 %indvars.iv141
  %112 = load ptr, ptr %arrayidx38.us, align 8
  %indvars.iv.next142 = add nuw nsw i64 %indvars.iv141, 1
  %arrayidx41.us = getelementptr inbounds ptr, ptr %tmp_res, i64 %indvars.iv.next142
  %113 = load ptr, ptr %arrayidx41.us, align 8
  %arrayidx44.us = getelementptr inbounds i8, ptr %arrayidx38.us, i64 16
  %114 = load ptr, ptr %arrayidx44.us, align 8
  %arrayidx47.us = getelementptr inbounds i8, ptr %arrayidx38.us, i64 24
  %115 = load ptr, ptr %arrayidx47.us, align 8
  %arrayidx50.us = getelementptr inbounds i8, ptr %arrayidx38.us, i64 32
  %116 = load ptr, ptr %arrayidx50.us, align 8
  %arrayidx53.us = getelementptr inbounds i8, ptr %arrayidx38.us, i64 40
  %117 = load ptr, ptr %arrayidx53.us, align 8
  %arrayidx55.us = getelementptr inbounds ptr, ptr %block, i64 %indvars.iv141
  %118 = load ptr, ptr %arrayidx55.us, align 8
  br i1 %min.iters.check243, label %for.body59.us.preheader, label %vector.memcheck211

vector.memcheck211:                               ; preds = %for.body36.us
  %119 = getelementptr i8, ptr %118, i64 %101
  %scevgep212 = getelementptr i8, ptr %119, i64 2
  %scevgep213 = getelementptr i8, ptr %112, i64 %103
  %scevgep214 = getelementptr i8, ptr %117, i64 %103
  %scevgep215 = getelementptr i8, ptr %113, i64 %103
  %scevgep216 = getelementptr i8, ptr %116, i64 %103
  %scevgep217 = getelementptr i8, ptr %114, i64 %103
  %scevgep218 = getelementptr i8, ptr %115, i64 %103
  %120 = insertelement <4 x ptr> poison, ptr %118, i64 0
  %121 = shufflevector <4 x ptr> %120, <4 x ptr> poison, <4 x i32> zeroinitializer
  %122 = insertelement <4 x ptr> poison, ptr %scevgep213, i64 0
  %123 = insertelement <4 x ptr> %122, ptr %scevgep214, i64 1
  %124 = insertelement <4 x ptr> %123, ptr %scevgep215, i64 2
  %125 = insertelement <4 x ptr> %124, ptr %scevgep216, i64 3
  %126 = icmp ult <4 x ptr> %121, %125
  %127 = insertelement <4 x ptr> poison, ptr %112, i64 0
  %128 = insertelement <4 x ptr> %127, ptr %117, i64 1
  %129 = insertelement <4 x ptr> %128, ptr %113, i64 2
  %130 = insertelement <4 x ptr> %129, ptr %116, i64 3
  %131 = insertelement <4 x ptr> poison, ptr %scevgep212, i64 0
  %132 = shufflevector <4 x ptr> %131, <4 x ptr> poison, <4 x i32> zeroinitializer
  %133 = icmp ult <4 x ptr> %130, %132
  %134 = and <4 x i1> %126, %133
  %bound0233 = icmp ult ptr %118, %scevgep217
  %bound1234 = icmp ult ptr %114, %scevgep212
  %found.conflict235 = and i1 %bound0233, %bound1234
  %bound0237 = icmp ult ptr %118, %scevgep218
  %bound1238 = icmp ult ptr %115, %scevgep212
  %found.conflict239 = and i1 %bound0237, %bound1238
  %135 = bitcast <4 x i1> %134 to i4
  %136 = icmp ne i4 %135, 0
  %op.rdx = or i1 %136, %found.conflict235
  %op.rdx326 = or i1 %op.rdx, %found.conflict239
  br i1 %op.rdx326, label %for.body59.us.preheader, label %vector.ph244

vector.ph244:                                     ; preds = %vector.memcheck211
  %ind.end249 = getelementptr i8, ptr %118, i64 %105
  %ind.end251 = getelementptr i8, ptr %117, i64 %106
  %ind.end253 = getelementptr i8, ptr %116, i64 %107
  %ind.end255 = getelementptr i8, ptr %115, i64 %108
  %ind.end257 = getelementptr i8, ptr %114, i64 %109
  %ind.end259 = getelementptr i8, ptr %113, i64 %110
  %ind.end261 = getelementptr i8, ptr %112, i64 %111
  br label %vector.body263

vector.body263:                                   ; preds = %vector.body263, %vector.ph244
  %index264 = phi i64 [ 0, %vector.ph244 ], [ %index.next324, %vector.body263 ]
  %offset.idx265 = shl i64 %index264, 1
  %next.gep266 = getelementptr i8, ptr %118, i64 %offset.idx265
  %offset.idx270 = shl i64 %index264, 2
  %next.gep271 = getelementptr i8, ptr %117, i64 %offset.idx270
  %offset.idx275 = shl i64 %index264, 2
  %next.gep276 = getelementptr i8, ptr %116, i64 %offset.idx275
  %offset.idx280 = shl i64 %index264, 2
  %next.gep281 = getelementptr i8, ptr %115, i64 %offset.idx280
  %offset.idx285 = shl i64 %index264, 2
  %next.gep286 = getelementptr i8, ptr %114, i64 %offset.idx285
  %offset.idx290 = shl i64 %index264, 2
  %next.gep291 = getelementptr i8, ptr %113, i64 %offset.idx290
  %offset.idx295 = shl i64 %index264, 2
  %next.gep296 = getelementptr i8, ptr %112, i64 %offset.idx295
  %137 = getelementptr i8, ptr %next.gep296, i64 16
  %138 = getelementptr i8, ptr %next.gep296, i64 32
  %139 = getelementptr i8, ptr %next.gep296, i64 48
  %wide.load300 = load <4 x i32>, ptr %next.gep296, align 4, !alias.scope !104
  %wide.load301 = load <4 x i32>, ptr %137, align 4, !alias.scope !104
  %wide.load302 = load <4 x i32>, ptr %138, align 4, !alias.scope !104
  %wide.load303 = load <4 x i32>, ptr %139, align 4, !alias.scope !104
  %140 = getelementptr i8, ptr %next.gep271, i64 16
  %141 = getelementptr i8, ptr %next.gep271, i64 32
  %142 = getelementptr i8, ptr %next.gep271, i64 48
  %wide.load304 = load <4 x i32>, ptr %next.gep271, align 4, !alias.scope !107
  %wide.load305 = load <4 x i32>, ptr %140, align 4, !alias.scope !107
  %wide.load306 = load <4 x i32>, ptr %141, align 4, !alias.scope !107
  %wide.load307 = load <4 x i32>, ptr %142, align 4, !alias.scope !107
  %143 = getelementptr i8, ptr %next.gep291, i64 16
  %144 = getelementptr i8, ptr %next.gep291, i64 32
  %145 = getelementptr i8, ptr %next.gep291, i64 48
  %wide.load308 = load <4 x i32>, ptr %next.gep291, align 4, !alias.scope !109
  %wide.load309 = load <4 x i32>, ptr %143, align 4, !alias.scope !109
  %wide.load310 = load <4 x i32>, ptr %144, align 4, !alias.scope !109
  %wide.load311 = load <4 x i32>, ptr %145, align 4, !alias.scope !109
  %146 = getelementptr i8, ptr %next.gep276, i64 16
  %147 = getelementptr i8, ptr %next.gep276, i64 32
  %148 = getelementptr i8, ptr %next.gep276, i64 48
  %wide.load312 = load <4 x i32>, ptr %next.gep276, align 4, !alias.scope !111
  %wide.load313 = load <4 x i32>, ptr %146, align 4, !alias.scope !111
  %wide.load314 = load <4 x i32>, ptr %147, align 4, !alias.scope !111
  %wide.load315 = load <4 x i32>, ptr %148, align 4, !alias.scope !111
  %149 = add nsw <4 x i32> %wide.load312, %wide.load308
  %150 = add nsw <4 x i32> %wide.load313, %wide.load309
  %151 = add nsw <4 x i32> %wide.load314, %wide.load310
  %152 = add nsw <4 x i32> %wide.load315, %wide.load311
  %153 = mul <4 x i32> %149, <i32 -5, i32 -5, i32 -5, i32 -5>
  %154 = mul <4 x i32> %150, <i32 -5, i32 -5, i32 -5, i32 -5>
  %155 = mul <4 x i32> %151, <i32 -5, i32 -5, i32 -5, i32 -5>
  %156 = mul <4 x i32> %152, <i32 -5, i32 -5, i32 -5, i32 -5>
  %157 = getelementptr i8, ptr %next.gep286, i64 16
  %158 = getelementptr i8, ptr %next.gep286, i64 32
  %159 = getelementptr i8, ptr %next.gep286, i64 48
  %wide.load316 = load <4 x i32>, ptr %next.gep286, align 4, !alias.scope !113
  %wide.load317 = load <4 x i32>, ptr %157, align 4, !alias.scope !113
  %wide.load318 = load <4 x i32>, ptr %158, align 4, !alias.scope !113
  %wide.load319 = load <4 x i32>, ptr %159, align 4, !alias.scope !113
  %160 = getelementptr i8, ptr %next.gep281, i64 16
  %161 = getelementptr i8, ptr %next.gep281, i64 32
  %162 = getelementptr i8, ptr %next.gep281, i64 48
  %wide.load320 = load <4 x i32>, ptr %next.gep281, align 4, !alias.scope !115
  %wide.load321 = load <4 x i32>, ptr %160, align 4, !alias.scope !115
  %wide.load322 = load <4 x i32>, ptr %161, align 4, !alias.scope !115
  %wide.load323 = load <4 x i32>, ptr %162, align 4, !alias.scope !115
  %163 = add nsw <4 x i32> %wide.load320, %wide.load316
  %164 = add nsw <4 x i32> %wide.load321, %wide.load317
  %165 = add nsw <4 x i32> %wide.load322, %wide.load318
  %166 = add nsw <4 x i32> %wide.load323, %wide.load319
  %167 = mul nsw <4 x i32> %163, <i32 20, i32 20, i32 20, i32 20>
  %168 = mul nsw <4 x i32> %164, <i32 20, i32 20, i32 20, i32 20>
  %169 = mul nsw <4 x i32> %165, <i32 20, i32 20, i32 20, i32 20>
  %170 = mul nsw <4 x i32> %166, <i32 20, i32 20, i32 20, i32 20>
  %171 = add <4 x i32> %wide.load300, <i32 512, i32 512, i32 512, i32 512>
  %172 = add <4 x i32> %wide.load301, <i32 512, i32 512, i32 512, i32 512>
  %173 = add <4 x i32> %wide.load302, <i32 512, i32 512, i32 512, i32 512>
  %174 = add <4 x i32> %wide.load303, <i32 512, i32 512, i32 512, i32 512>
  %175 = add <4 x i32> %171, %wide.load304
  %176 = add <4 x i32> %172, %wide.load305
  %177 = add <4 x i32> %173, %wide.load306
  %178 = add <4 x i32> %174, %wide.load307
  %179 = add <4 x i32> %175, %153
  %180 = add <4 x i32> %176, %154
  %181 = add <4 x i32> %177, %155
  %182 = add <4 x i32> %178, %156
  %183 = add <4 x i32> %179, %167
  %184 = add <4 x i32> %180, %168
  %185 = add <4 x i32> %181, %169
  %186 = add <4 x i32> %182, %170
  %187 = ashr <4 x i32> %183, <i32 10, i32 10, i32 10, i32 10>
  %188 = ashr <4 x i32> %184, <i32 10, i32 10, i32 10, i32 10>
  %189 = ashr <4 x i32> %185, <i32 10, i32 10, i32 10, i32 10>
  %190 = ashr <4 x i32> %186, <i32 10, i32 10, i32 10, i32 10>
  %191 = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %187, <4 x i32> zeroinitializer)
  %192 = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %188, <4 x i32> zeroinitializer)
  %193 = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %189, <4 x i32> zeroinitializer)
  %194 = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %190, <4 x i32> zeroinitializer)
  %195 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %191, <4 x i32> %broadcast.splat)
  %196 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %192, <4 x i32> %broadcast.splat)
  %197 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %193, <4 x i32> %broadcast.splat)
  %198 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %194, <4 x i32> %broadcast.splat)
  %199 = trunc <4 x i32> %195 to <4 x i16>
  %200 = trunc <4 x i32> %196 to <4 x i16>
  %201 = trunc <4 x i32> %197 to <4 x i16>
  %202 = trunc <4 x i32> %198 to <4 x i16>
  %203 = getelementptr i8, ptr %next.gep266, i64 8
  %204 = getelementptr i8, ptr %next.gep266, i64 16
  %205 = getelementptr i8, ptr %next.gep266, i64 24
  store <4 x i16> %199, ptr %next.gep266, align 2, !alias.scope !117, !noalias !119
  store <4 x i16> %200, ptr %203, align 2, !alias.scope !117, !noalias !119
  store <4 x i16> %201, ptr %204, align 2, !alias.scope !117, !noalias !119
  store <4 x i16> %202, ptr %205, align 2, !alias.scope !117, !noalias !119
  %index.next324 = add nuw i64 %index264, 16
  %206 = icmp eq i64 %index.next324, %n.vec246
  br i1 %206, label %middle.block241, label %vector.body263, !llvm.loop !120

middle.block241:                                  ; preds = %vector.body263
  br i1 %cmp.n325, label %for.cond56.for.cond33.loopexit_crit_edge.us, label %for.body59.us.preheader

for.body59.us.preheader:                          ; preds = %middle.block241, %vector.memcheck211, %for.body36.us
  %i.1129.us.ph = phi i32 [ 0, %vector.memcheck211 ], [ 0, %for.body36.us ], [ %ind.end247, %middle.block241 ]
  %orig_line.0128.us.ph = phi ptr [ %118, %vector.memcheck211 ], [ %118, %for.body36.us ], [ %ind.end249, %middle.block241 ]
  %x5.0127.us.ph = phi ptr [ %117, %vector.memcheck211 ], [ %117, %for.body36.us ], [ %ind.end251, %middle.block241 ]
  %x4.0126.us.ph = phi ptr [ %116, %vector.memcheck211 ], [ %116, %for.body36.us ], [ %ind.end253, %middle.block241 ]
  %x3.0125.us.ph = phi ptr [ %115, %vector.memcheck211 ], [ %115, %for.body36.us ], [ %ind.end255, %middle.block241 ]
  %x2.0124.us.ph = phi ptr [ %114, %vector.memcheck211 ], [ %114, %for.body36.us ], [ %ind.end257, %middle.block241 ]
  %x1.0123.us.ph = phi ptr [ %113, %vector.memcheck211 ], [ %113, %for.body36.us ], [ %ind.end259, %middle.block241 ]
  %x0.0122.us.ph = phi ptr [ %112, %vector.memcheck211 ], [ %112, %for.body36.us ], [ %ind.end261, %middle.block241 ]
  br label %for.body59.us

for.body59.us:                                    ; preds = %for.body59.us.preheader, %for.body59.us
  %i.1129.us = phi i32 [ %inc77.us, %for.body59.us ], [ %i.1129.us.ph, %for.body59.us.preheader ]
  %orig_line.0128.us = phi ptr [ %incdec.ptr75.us, %for.body59.us ], [ %orig_line.0128.us.ph, %for.body59.us.preheader ]
  %x5.0127.us = phi ptr [ %incdec.ptr61.us, %for.body59.us ], [ %x5.0127.us.ph, %for.body59.us.preheader ]
  %x4.0126.us = phi ptr [ %incdec.ptr64.us, %for.body59.us ], [ %x4.0126.us.ph, %for.body59.us.preheader ]
  %x3.0125.us = phi ptr [ %incdec.ptr69.us, %for.body59.us ], [ %x3.0125.us.ph, %for.body59.us.preheader ]
  %x2.0124.us = phi ptr [ %incdec.ptr68.us, %for.body59.us ], [ %x2.0124.us.ph, %for.body59.us.preheader ]
  %x1.0123.us = phi ptr [ %incdec.ptr63.us, %for.body59.us ], [ %x1.0123.us.ph, %for.body59.us.preheader ]
  %x0.0122.us = phi ptr [ %incdec.ptr60.us, %for.body59.us ], [ %x0.0122.us.ph, %for.body59.us.preheader ]
  %incdec.ptr60.us = getelementptr inbounds i8, ptr %x0.0122.us, i64 4
  %207 = load i32, ptr %x0.0122.us, align 4
  %incdec.ptr61.us = getelementptr inbounds i8, ptr %x5.0127.us, i64 4
  %208 = load i32, ptr %x5.0127.us, align 4
  %incdec.ptr63.us = getelementptr inbounds i8, ptr %x1.0123.us, i64 4
  %209 = load i32, ptr %x1.0123.us, align 4
  %incdec.ptr64.us = getelementptr inbounds i8, ptr %x4.0126.us, i64 4
  %210 = load i32, ptr %x4.0126.us, align 4
  %add65.us = add nsw i32 %210, %209
  %mul66.neg.us = mul i32 %add65.us, -5
  %incdec.ptr68.us = getelementptr inbounds i8, ptr %x2.0124.us, i64 4
  %211 = load i32, ptr %x2.0124.us, align 4
  %incdec.ptr69.us = getelementptr inbounds i8, ptr %x3.0125.us, i64 4
  %212 = load i32, ptr %x3.0125.us, align 4
  %add70.us = add nsw i32 %212, %211
  %mul71.us = mul nsw i32 %add70.us, 20
  %add62.us = add i32 %207, 512
  %sub67.us = add i32 %add62.us, %208
  %add72.us = add i32 %sub67.us, %mul66.neg.us
  %add73.us = add i32 %add72.us, %mul71.us
  %shr.us = ashr i32 %add73.us, 10
  %cond.i.i.us = tail call noundef i32 @llvm.smax.i32(i32 %shr.us, i32 0)
  %cond.i4.i.us = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i.us, i32 %max_imgpel_value)
  %conv74.us = trunc i32 %cond.i4.i.us to i16
  %incdec.ptr75.us = getelementptr inbounds i8, ptr %orig_line.0128.us, i64 2
  store i16 %conv74.us, ptr %orig_line.0128.us, align 2
  %inc77.us = add nuw nsw i32 %i.1129.us, 1
  %exitcond140.not = icmp eq i32 %inc77.us, %hor_block_size
  br i1 %exitcond140.not, label %for.cond56.for.cond33.loopexit_crit_edge.us, label %for.body59.us, !llvm.loop !121

for.cond56.for.cond33.loopexit_crit_edge.us:      ; preds = %for.body59.us, %middle.block241
  %exitcond145.not = icmp eq i64 %indvars.iv.next142, %wide.trip.count144
  br i1 %exitcond145.not, label %for.end81, label %for.body36.us

for.end81:                                        ; preds = %for.cond56.for.cond33.loopexit_crit_edge.us, %entry, %for.cond33.preheader
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @get_luma_23(ptr nocapture noundef readonly %block, ptr nocapture noundef readonly %cur_imgY, ptr nocapture noundef readonly %tmp_res, i32 noundef %ver_block_size, i32 noundef %hor_block_size, i32 noundef %x_pos, i32 noundef %max_imgpel_value) unnamed_addr #5 {
entry:
  %add = add i32 %ver_block_size, 5
  %cmp139 = icmp sgt i32 %ver_block_size, -5
  br i1 %cmp139, label %for.body.lr.ph, label %for.end93

for.body.lr.ph:                                   ; preds = %entry
  %0 = sext i32 %x_pos to i64
  %cmp10130 = icmp sgt i32 %hor_block_size, 0
  br i1 %cmp10130, label %for.body.us.preheader, label %for.cond33.preheader

for.body.us.preheader:                            ; preds = %for.body.lr.ph
  %smax = tail call i32 @llvm.smax.i32(i32 %add, i32 1)
  %wide.trip.count = zext nneg i32 %smax to i64
  %1 = add nsw i32 %hor_block_size, -1
  %2 = zext i32 %1 to i64
  %3 = shl nuw nsw i64 %2, 2
  %4 = add nsw i64 %0, %2
  %5 = shl nsw i64 %4, 1
  %6 = zext nneg i32 %hor_block_size to i64
  %min.iters.check = icmp ult i32 %hor_block_size, 16
  %n.vec = and i64 %6, 2147483632
  %ind.end = trunc nuw nsw i64 %n.vec to i32
  %7 = shl nuw nsw i64 %n.vec, 1
  %8 = shl nuw nsw i64 %n.vec, 1
  %9 = shl nuw nsw i64 %n.vec, 1
  %10 = shl nuw nsw i64 %n.vec, 1
  %11 = shl nuw nsw i64 %n.vec, 1
  %12 = shl nuw nsw i64 %n.vec, 2
  %cmp.n = icmp eq i64 %n.vec, %6
  br label %for.body.us

for.body.us:                                      ; preds = %for.body.us.preheader, %for.cond9.for.inc30_crit_edge.us
  %indvars.iv157 = phi i64 [ 0, %for.body.us.preheader ], [ %indvars.iv.next158, %for.cond9.for.inc30_crit_edge.us ]
  %indvars.iv = phi i64 [ -2, %for.body.us.preheader ], [ %indvars.iv.next, %for.cond9.for.inc30_crit_edge.us ]
  %arrayidx.us = getelementptr inbounds ptr, ptr %cur_imgY, i64 %indvars.iv
  %13 = load ptr, ptr %arrayidx.us, align 8
  %14 = getelementptr i16, ptr %13, i64 %0
  %arrayidx2.us = getelementptr i8, ptr %14, i64 -4
  %add.ptr.us = getelementptr i8, ptr %14, i64 -2
  %add.ptr5.us = getelementptr inbounds i8, ptr %14, i64 4
  %add.ptr6.us = getelementptr inbounds i8, ptr %14, i64 6
  %arrayidx8.us = getelementptr inbounds ptr, ptr %tmp_res, i64 %indvars.iv157
  %15 = load ptr, ptr %arrayidx8.us, align 8
  br i1 %min.iters.check, label %for.body11.us.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %for.body.us
  %16 = getelementptr i8, ptr %15, i64 %3
  %scevgep = getelementptr i8, ptr %16, i64 4
  %17 = getelementptr i8, ptr %13, i64 %5
  %scevgep174 = getelementptr i8, ptr %17, i64 8
  %bound0 = icmp ult ptr %15, %scevgep174
  %bound1 = icmp ult ptr %arrayidx2.us, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %for.body11.us.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %ind.end175 = getelementptr i8, ptr %add.ptr6.us, i64 %7
  %ind.end177 = getelementptr i8, ptr %add.ptr5.us, i64 %8
  %ind.end179 = getelementptr i8, ptr %14, i64 %9
  %ind.end181 = getelementptr i8, ptr %add.ptr.us, i64 %10
  %ind.end183 = getelementptr i8, ptr %arrayidx2.us, i64 %11
  %ind.end185 = getelementptr i8, ptr %15, i64 %12
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %offset.idx = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %add.ptr6.us, i64 %offset.idx
  %offset.idx190 = shl i64 %index, 1
  %next.gep191 = getelementptr i8, ptr %add.ptr5.us, i64 %offset.idx190
  %offset.idx195 = shl i64 %index, 1
  %next.gep196 = getelementptr i8, ptr %14, i64 %offset.idx195
  %offset.idx200 = shl i64 %index, 1
  %next.gep201 = getelementptr i8, ptr %add.ptr.us, i64 %offset.idx200
  %offset.idx205 = shl i64 %index, 1
  %next.gep206 = getelementptr i8, ptr %arrayidx2.us, i64 %offset.idx205
  %offset.idx210 = shl i64 %index, 2
  %next.gep211 = getelementptr i8, ptr %15, i64 %offset.idx210
  %18 = getelementptr i8, ptr %next.gep196, i64 2
  %19 = getelementptr i8, ptr %next.gep206, i64 8
  %20 = getelementptr i8, ptr %next.gep206, i64 16
  %21 = getelementptr i8, ptr %next.gep206, i64 24
  %wide.load = load <4 x i16>, ptr %next.gep206, align 2, !alias.scope !122
  %wide.load215 = load <4 x i16>, ptr %19, align 2, !alias.scope !122
  %wide.load216 = load <4 x i16>, ptr %20, align 2, !alias.scope !122
  %wide.load217 = load <4 x i16>, ptr %21, align 2, !alias.scope !122
  %22 = zext <4 x i16> %wide.load to <4 x i32>
  %23 = zext <4 x i16> %wide.load215 to <4 x i32>
  %24 = zext <4 x i16> %wide.load216 to <4 x i32>
  %25 = zext <4 x i16> %wide.load217 to <4 x i32>
  %26 = getelementptr i8, ptr %next.gep, i64 8
  %27 = getelementptr i8, ptr %next.gep, i64 16
  %28 = getelementptr i8, ptr %next.gep, i64 24
  %wide.load218 = load <4 x i16>, ptr %next.gep, align 2, !alias.scope !122
  %wide.load219 = load <4 x i16>, ptr %26, align 2, !alias.scope !122
  %wide.load220 = load <4 x i16>, ptr %27, align 2, !alias.scope !122
  %wide.load221 = load <4 x i16>, ptr %28, align 2, !alias.scope !122
  %29 = zext <4 x i16> %wide.load218 to <4 x i32>
  %30 = zext <4 x i16> %wide.load219 to <4 x i32>
  %31 = zext <4 x i16> %wide.load220 to <4 x i32>
  %32 = zext <4 x i16> %wide.load221 to <4 x i32>
  %33 = add nuw nsw <4 x i32> %29, %22
  %34 = add nuw nsw <4 x i32> %30, %23
  %35 = add nuw nsw <4 x i32> %31, %24
  %36 = add nuw nsw <4 x i32> %32, %25
  %37 = getelementptr i8, ptr %next.gep201, i64 8
  %38 = getelementptr i8, ptr %next.gep201, i64 16
  %39 = getelementptr i8, ptr %next.gep201, i64 24
  %wide.load222 = load <4 x i16>, ptr %next.gep201, align 2, !alias.scope !122
  %wide.load223 = load <4 x i16>, ptr %37, align 2, !alias.scope !122
  %wide.load224 = load <4 x i16>, ptr %38, align 2, !alias.scope !122
  %wide.load225 = load <4 x i16>, ptr %39, align 2, !alias.scope !122
  %40 = zext <4 x i16> %wide.load222 to <4 x i32>
  %41 = zext <4 x i16> %wide.load223 to <4 x i32>
  %42 = zext <4 x i16> %wide.load224 to <4 x i32>
  %43 = zext <4 x i16> %wide.load225 to <4 x i32>
  %44 = getelementptr i8, ptr %next.gep191, i64 8
  %45 = getelementptr i8, ptr %next.gep191, i64 16
  %46 = getelementptr i8, ptr %next.gep191, i64 24
  %wide.load226 = load <4 x i16>, ptr %next.gep191, align 2, !alias.scope !122
  %wide.load227 = load <4 x i16>, ptr %44, align 2, !alias.scope !122
  %wide.load228 = load <4 x i16>, ptr %45, align 2, !alias.scope !122
  %wide.load229 = load <4 x i16>, ptr %46, align 2, !alias.scope !122
  %47 = zext <4 x i16> %wide.load226 to <4 x i32>
  %48 = zext <4 x i16> %wide.load227 to <4 x i32>
  %49 = zext <4 x i16> %wide.load228 to <4 x i32>
  %50 = zext <4 x i16> %wide.load229 to <4 x i32>
  %51 = add nuw nsw <4 x i32> %47, %40
  %52 = add nuw nsw <4 x i32> %48, %41
  %53 = add nuw nsw <4 x i32> %49, %42
  %54 = add nuw nsw <4 x i32> %50, %43
  %55 = mul nsw <4 x i32> %51, <i32 -5, i32 -5, i32 -5, i32 -5>
  %56 = mul nsw <4 x i32> %52, <i32 -5, i32 -5, i32 -5, i32 -5>
  %57 = mul nsw <4 x i32> %53, <i32 -5, i32 -5, i32 -5, i32 -5>
  %58 = mul nsw <4 x i32> %54, <i32 -5, i32 -5, i32 -5, i32 -5>
  %59 = add nsw <4 x i32> %33, %55
  %60 = add nsw <4 x i32> %34, %56
  %61 = add nsw <4 x i32> %35, %57
  %62 = add nsw <4 x i32> %36, %58
  %63 = getelementptr i8, ptr %next.gep196, i64 8
  %64 = getelementptr i8, ptr %next.gep196, i64 16
  %65 = getelementptr i8, ptr %next.gep196, i64 24
  %wide.load230 = load <4 x i16>, ptr %next.gep196, align 2, !alias.scope !122
  %wide.load231 = load <4 x i16>, ptr %63, align 2, !alias.scope !122
  %wide.load232 = load <4 x i16>, ptr %64, align 2, !alias.scope !122
  %wide.load233 = load <4 x i16>, ptr %65, align 2, !alias.scope !122
  %66 = zext <4 x i16> %wide.load230 to <4 x i32>
  %67 = zext <4 x i16> %wide.load231 to <4 x i32>
  %68 = zext <4 x i16> %wide.load232 to <4 x i32>
  %69 = zext <4 x i16> %wide.load233 to <4 x i32>
  %70 = getelementptr i8, ptr %next.gep196, i64 10
  %71 = getelementptr i8, ptr %next.gep196, i64 18
  %72 = getelementptr i8, ptr %next.gep196, i64 26
  %wide.load234 = load <4 x i16>, ptr %18, align 2, !alias.scope !122
  %wide.load235 = load <4 x i16>, ptr %70, align 2, !alias.scope !122
  %wide.load236 = load <4 x i16>, ptr %71, align 2, !alias.scope !122
  %wide.load237 = load <4 x i16>, ptr %72, align 2, !alias.scope !122
  %73 = zext <4 x i16> %wide.load234 to <4 x i32>
  %74 = zext <4 x i16> %wide.load235 to <4 x i32>
  %75 = zext <4 x i16> %wide.load236 to <4 x i32>
  %76 = zext <4 x i16> %wide.load237 to <4 x i32>
  %77 = add nuw nsw <4 x i32> %73, %66
  %78 = add nuw nsw <4 x i32> %74, %67
  %79 = add nuw nsw <4 x i32> %75, %68
  %80 = add nuw nsw <4 x i32> %76, %69
  %81 = mul nuw nsw <4 x i32> %77, <i32 20, i32 20, i32 20, i32 20>
  %82 = mul nuw nsw <4 x i32> %78, <i32 20, i32 20, i32 20, i32 20>
  %83 = mul nuw nsw <4 x i32> %79, <i32 20, i32 20, i32 20, i32 20>
  %84 = mul nuw nsw <4 x i32> %80, <i32 20, i32 20, i32 20, i32 20>
  %85 = add nsw <4 x i32> %59, %81
  %86 = add nsw <4 x i32> %60, %82
  %87 = add nsw <4 x i32> %61, %83
  %88 = add nsw <4 x i32> %62, %84
  %89 = getelementptr i8, ptr %next.gep211, i64 16
  %90 = getelementptr i8, ptr %next.gep211, i64 32
  %91 = getelementptr i8, ptr %next.gep211, i64 48
  store <4 x i32> %85, ptr %next.gep211, align 4, !alias.scope !125, !noalias !122
  store <4 x i32> %86, ptr %89, align 4, !alias.scope !125, !noalias !122
  store <4 x i32> %87, ptr %90, align 4, !alias.scope !125, !noalias !122
  store <4 x i32> %88, ptr %91, align 4, !alias.scope !125, !noalias !122
  %index.next = add nuw i64 %index, 16
  %92 = icmp eq i64 %index.next, %n.vec
  br i1 %92, label %middle.block, label %vector.body, !llvm.loop !127

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %for.cond9.for.inc30_crit_edge.us, label %for.body11.us.preheader

for.body11.us.preheader:                          ; preds = %middle.block, %vector.memcheck, %for.body.us
  %i.0138.us.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %for.body.us ], [ %ind.end, %middle.block ]
  %p5.0137.us.ph = phi ptr [ %add.ptr6.us, %vector.memcheck ], [ %add.ptr6.us, %for.body.us ], [ %ind.end175, %middle.block ]
  %p4.0136.us.ph = phi ptr [ %add.ptr5.us, %vector.memcheck ], [ %add.ptr5.us, %for.body.us ], [ %ind.end177, %middle.block ]
  %.pn135.us.ph = phi ptr [ %14, %vector.memcheck ], [ %14, %for.body.us ], [ %ind.end179, %middle.block ]
  %p1.0133.us.ph = phi ptr [ %add.ptr.us, %vector.memcheck ], [ %add.ptr.us, %for.body.us ], [ %ind.end181, %middle.block ]
  %p0.0132.us.ph = phi ptr [ %arrayidx2.us, %vector.memcheck ], [ %arrayidx2.us, %for.body.us ], [ %ind.end183, %middle.block ]
  %tmp_line.0131.us.ph = phi ptr [ %15, %vector.memcheck ], [ %15, %for.body.us ], [ %ind.end185, %middle.block ]
  br label %for.body11.us

for.body11.us:                                    ; preds = %for.body11.us.preheader, %for.body11.us
  %i.0138.us = phi i32 [ %inc29.us, %for.body11.us ], [ %i.0138.us.ph, %for.body11.us.preheader ]
  %p5.0137.us = phi ptr [ %incdec.ptr12.us, %for.body11.us ], [ %p5.0137.us.ph, %for.body11.us.preheader ]
  %p4.0136.us = phi ptr [ %incdec.ptr17.us, %for.body11.us ], [ %p4.0136.us.ph, %for.body11.us.preheader ]
  %.pn135.us = phi ptr [ %p3.0.us, %for.body11.us ], [ %.pn135.us.ph, %for.body11.us.preheader ]
  %p1.0133.us = phi ptr [ %incdec.ptr15.us, %for.body11.us ], [ %p1.0133.us.ph, %for.body11.us.preheader ]
  %p0.0132.us = phi ptr [ %incdec.ptr.us, %for.body11.us ], [ %p0.0132.us.ph, %for.body11.us.preheader ]
  %tmp_line.0131.us = phi ptr [ %incdec.ptr28.us, %for.body11.us ], [ %tmp_line.0131.us.ph, %for.body11.us.preheader ]
  %p3.0.us = getelementptr i8, ptr %.pn135.us, i64 2
  %incdec.ptr.us = getelementptr inbounds i8, ptr %p0.0132.us, i64 2
  %93 = load i16, ptr %p0.0132.us, align 2
  %conv.us = zext i16 %93 to i32
  %incdec.ptr12.us = getelementptr inbounds i8, ptr %p5.0137.us, i64 2
  %94 = load i16, ptr %p5.0137.us, align 2
  %conv13.us = zext i16 %94 to i32
  %add14.us = add nuw nsw i32 %conv13.us, %conv.us
  %incdec.ptr15.us = getelementptr inbounds i8, ptr %p1.0133.us, i64 2
  %95 = load i16, ptr %p1.0133.us, align 2
  %conv16.us = zext i16 %95 to i32
  %incdec.ptr17.us = getelementptr inbounds i8, ptr %p4.0136.us, i64 2
  %96 = load i16, ptr %p4.0136.us, align 2
  %conv18.us = zext i16 %96 to i32
  %add19.us = add nuw nsw i32 %conv18.us, %conv16.us
  %mul.neg.us = mul nsw i32 %add19.us, -5
  %sub20.us = add nsw i32 %add14.us, %mul.neg.us
  %97 = load i16, ptr %.pn135.us, align 2
  %conv22.us = zext i16 %97 to i32
  %98 = load i16, ptr %p3.0.us, align 2
  %conv24.us = zext i16 %98 to i32
  %add25.us = add nuw nsw i32 %conv24.us, %conv22.us
  %mul26.us = mul nuw nsw i32 %add25.us, 20
  %add27.us = add nsw i32 %sub20.us, %mul26.us
  %incdec.ptr28.us = getelementptr inbounds i8, ptr %tmp_line.0131.us, i64 4
  store i32 %add27.us, ptr %tmp_line.0131.us, align 4
  %inc29.us = add nuw nsw i32 %i.0138.us, 1
  %exitcond.not = icmp eq i32 %inc29.us, %hor_block_size
  br i1 %exitcond.not, label %for.cond9.for.inc30_crit_edge.us, label %for.body11.us, !llvm.loop !128

for.cond9.for.inc30_crit_edge.us:                 ; preds = %for.body11.us, %middle.block
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %indvars.iv.next158 = add nuw nsw i64 %indvars.iv157, 1
  %exitcond162.not = icmp eq i64 %indvars.iv.next158, %wide.trip.count
  br i1 %exitcond162.not, label %for.cond33.preheader, label %for.body.us

for.cond33.preheader:                             ; preds = %for.cond9.for.inc30_crit_edge.us, %for.body.lr.ph
  %cmp34152 = icmp sgt i32 %ver_block_size, 0
  %cmp60142 = icmp sgt i32 %hor_block_size, 0
  %or.cond = and i1 %cmp34152, %cmp60142
  br i1 %or.cond, label %for.body36.us.preheader, label %for.end93

for.body36.us.preheader:                          ; preds = %for.cond33.preheader
  %wide.trip.count171 = zext nneg i32 %ver_block_size to i64
  %99 = add nsw i32 %hor_block_size, -1
  %100 = zext i32 %99 to i64
  %101 = shl nuw nsw i64 %100, 1
  %102 = shl nuw nsw i64 %100, 2
  %103 = add nuw nsw i64 %102, 4
  %104 = zext nneg i32 %hor_block_size to i64
  %min.iters.check275 = icmp ult i32 %hor_block_size, 16
  %n.vec278 = and i64 %104, 2147483632
  %ind.end279 = trunc nuw nsw i64 %n.vec278 to i32
  %105 = shl nuw nsw i64 %n.vec278, 1
  %106 = shl nuw nsw i64 %n.vec278, 2
  %107 = shl nuw nsw i64 %n.vec278, 2
  %108 = shl nuw nsw i64 %n.vec278, 2
  %109 = shl nuw nsw i64 %n.vec278, 2
  %110 = shl nuw nsw i64 %n.vec278, 2
  %111 = shl nuw nsw i64 %n.vec278, 2
  %112 = shl nuw nsw i64 %n.vec278, 2
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %max_imgpel_value, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %cmp.n368 = icmp eq i64 %n.vec278, %104
  br label %for.body36.us

for.body36.us:                                    ; preds = %for.body36.us.preheader, %for.cond59.for.cond33.loopexit_crit_edge.us
  %indvars.iv166 = phi i64 [ 0, %for.body36.us.preheader ], [ %indvars.iv.next167, %for.cond59.for.cond33.loopexit_crit_edge.us ]
  %indvars.iv164 = phi i64 [ 3, %for.body36.us.preheader ], [ %indvars.iv.next165, %for.cond59.for.cond33.loopexit_crit_edge.us ]
  %arrayidx39.us = getelementptr inbounds ptr, ptr %tmp_res, i64 %indvars.iv164
  %113 = load ptr, ptr %arrayidx39.us, align 8
  %arrayidx41.us = getelementptr inbounds ptr, ptr %tmp_res, i64 %indvars.iv166
  %114 = load ptr, ptr %arrayidx41.us, align 8
  %indvars.iv.next167 = add nuw nsw i64 %indvars.iv166, 1
  %arrayidx44.us = getelementptr inbounds ptr, ptr %tmp_res, i64 %indvars.iv.next167
  %115 = load ptr, ptr %arrayidx44.us, align 8
  %arrayidx47.us = getelementptr inbounds i8, ptr %arrayidx41.us, i64 16
  %116 = load ptr, ptr %arrayidx47.us, align 8
  %arrayidx50.us = getelementptr inbounds i8, ptr %arrayidx41.us, i64 24
  %117 = load ptr, ptr %arrayidx50.us, align 8
  %arrayidx53.us = getelementptr inbounds i8, ptr %arrayidx41.us, i64 32
  %118 = load ptr, ptr %arrayidx53.us, align 8
  %arrayidx56.us = getelementptr inbounds i8, ptr %arrayidx41.us, i64 40
  %119 = load ptr, ptr %arrayidx56.us, align 8
  %arrayidx58.us = getelementptr inbounds ptr, ptr %block, i64 %indvars.iv166
  %120 = load ptr, ptr %arrayidx58.us, align 8
  br i1 %min.iters.check275, label %for.body62.us.preheader, label %vector.memcheck238

vector.memcheck238:                               ; preds = %for.body36.us
  %121 = getelementptr i8, ptr %120, i64 %101
  %scevgep239 = getelementptr i8, ptr %121, i64 2
  %scevgep240 = getelementptr i8, ptr %114, i64 %103
  %scevgep241 = getelementptr i8, ptr %119, i64 %103
  %scevgep242 = getelementptr i8, ptr %115, i64 %103
  %scevgep243 = getelementptr i8, ptr %118, i64 %103
  %scevgep244 = getelementptr i8, ptr %116, i64 %103
  %scevgep245 = getelementptr i8, ptr %117, i64 %103
  %scevgep246 = getelementptr i8, ptr %113, i64 %103
  %122 = insertelement <4 x ptr> poison, ptr %120, i64 0
  %123 = shufflevector <4 x ptr> %122, <4 x ptr> poison, <4 x i32> zeroinitializer
  %124 = insertelement <4 x ptr> poison, ptr %scevgep240, i64 0
  %125 = insertelement <4 x ptr> %124, ptr %scevgep241, i64 1
  %126 = insertelement <4 x ptr> %125, ptr %scevgep242, i64 2
  %127 = insertelement <4 x ptr> %126, ptr %scevgep243, i64 3
  %128 = icmp ult <4 x ptr> %123, %127
  %129 = insertelement <4 x ptr> poison, ptr %114, i64 0
  %130 = insertelement <4 x ptr> %129, ptr %119, i64 1
  %131 = insertelement <4 x ptr> %130, ptr %115, i64 2
  %132 = insertelement <4 x ptr> %131, ptr %118, i64 3
  %133 = insertelement <4 x ptr> poison, ptr %scevgep239, i64 0
  %134 = shufflevector <4 x ptr> %133, <4 x ptr> poison, <4 x i32> zeroinitializer
  %135 = icmp ult <4 x ptr> %132, %134
  %136 = and <4 x i1> %128, %135
  %bound0261 = icmp ult ptr %120, %scevgep244
  %bound1262 = icmp ult ptr %116, %scevgep239
  %found.conflict263 = and i1 %bound0261, %bound1262
  %bound0265 = icmp ult ptr %120, %scevgep245
  %bound1266 = icmp ult ptr %117, %scevgep239
  %found.conflict267 = and i1 %bound0265, %bound1266
  %bound0269 = icmp ult ptr %120, %scevgep246
  %bound1270 = icmp ult ptr %113, %scevgep239
  %found.conflict271 = and i1 %bound0269, %bound1270
  %137 = bitcast <4 x i1> %136 to i4
  %138 = icmp ne i4 %137, 0
  %op.rdx = or i1 %138, %found.conflict263
  %op.rdx369 = or i1 %found.conflict267, %found.conflict271
  %op.rdx370 = or i1 %op.rdx, %op.rdx369
  br i1 %op.rdx370, label %for.body62.us.preheader, label %vector.ph276

vector.ph276:                                     ; preds = %vector.memcheck238
  %ind.end281 = getelementptr i8, ptr %120, i64 %105
  %ind.end283 = getelementptr i8, ptr %119, i64 %106
  %ind.end285 = getelementptr i8, ptr %118, i64 %107
  %ind.end287 = getelementptr i8, ptr %117, i64 %108
  %ind.end289 = getelementptr i8, ptr %116, i64 %109
  %ind.end291 = getelementptr i8, ptr %115, i64 %110
  %ind.end293 = getelementptr i8, ptr %114, i64 %111
  %ind.end295 = getelementptr i8, ptr %113, i64 %112
  br label %vector.body297

vector.body297:                                   ; preds = %vector.body297, %vector.ph276
  %index298 = phi i64 [ 0, %vector.ph276 ], [ %index.next367, %vector.body297 ]
  %offset.idx299 = shl i64 %index298, 1
  %next.gep300 = getelementptr i8, ptr %120, i64 %offset.idx299
  %offset.idx304 = shl i64 %index298, 2
  %next.gep305 = getelementptr i8, ptr %119, i64 %offset.idx304
  %offset.idx309 = shl i64 %index298, 2
  %next.gep310 = getelementptr i8, ptr %118, i64 %offset.idx309
  %offset.idx314 = shl i64 %index298, 2
  %next.gep315 = getelementptr i8, ptr %117, i64 %offset.idx314
  %offset.idx319 = shl i64 %index298, 2
  %next.gep320 = getelementptr i8, ptr %116, i64 %offset.idx319
  %offset.idx324 = shl i64 %index298, 2
  %next.gep325 = getelementptr i8, ptr %115, i64 %offset.idx324
  %offset.idx329 = shl i64 %index298, 2
  %next.gep330 = getelementptr i8, ptr %114, i64 %offset.idx329
  %offset.idx334 = shl i64 %index298, 2
  %next.gep335 = getelementptr i8, ptr %113, i64 %offset.idx334
  %139 = getelementptr i8, ptr %next.gep330, i64 16
  %140 = getelementptr i8, ptr %next.gep330, i64 32
  %141 = getelementptr i8, ptr %next.gep330, i64 48
  %wide.load339 = load <4 x i32>, ptr %next.gep330, align 4, !alias.scope !129
  %wide.load340 = load <4 x i32>, ptr %139, align 4, !alias.scope !129
  %wide.load341 = load <4 x i32>, ptr %140, align 4, !alias.scope !129
  %wide.load342 = load <4 x i32>, ptr %141, align 4, !alias.scope !129
  %142 = getelementptr i8, ptr %next.gep305, i64 16
  %143 = getelementptr i8, ptr %next.gep305, i64 32
  %144 = getelementptr i8, ptr %next.gep305, i64 48
  %wide.load343 = load <4 x i32>, ptr %next.gep305, align 4, !alias.scope !132
  %wide.load344 = load <4 x i32>, ptr %142, align 4, !alias.scope !132
  %wide.load345 = load <4 x i32>, ptr %143, align 4, !alias.scope !132
  %wide.load346 = load <4 x i32>, ptr %144, align 4, !alias.scope !132
  %145 = getelementptr i8, ptr %next.gep325, i64 16
  %146 = getelementptr i8, ptr %next.gep325, i64 32
  %147 = getelementptr i8, ptr %next.gep325, i64 48
  %wide.load347 = load <4 x i32>, ptr %next.gep325, align 4, !alias.scope !134
  %wide.load348 = load <4 x i32>, ptr %145, align 4, !alias.scope !134
  %wide.load349 = load <4 x i32>, ptr %146, align 4, !alias.scope !134
  %wide.load350 = load <4 x i32>, ptr %147, align 4, !alias.scope !134
  %148 = getelementptr i8, ptr %next.gep310, i64 16
  %149 = getelementptr i8, ptr %next.gep310, i64 32
  %150 = getelementptr i8, ptr %next.gep310, i64 48
  %wide.load351 = load <4 x i32>, ptr %next.gep310, align 4, !alias.scope !136
  %wide.load352 = load <4 x i32>, ptr %148, align 4, !alias.scope !136
  %wide.load353 = load <4 x i32>, ptr %149, align 4, !alias.scope !136
  %wide.load354 = load <4 x i32>, ptr %150, align 4, !alias.scope !136
  %151 = add nsw <4 x i32> %wide.load351, %wide.load347
  %152 = add nsw <4 x i32> %wide.load352, %wide.load348
  %153 = add nsw <4 x i32> %wide.load353, %wide.load349
  %154 = add nsw <4 x i32> %wide.load354, %wide.load350
  %155 = mul <4 x i32> %151, <i32 -5, i32 -5, i32 -5, i32 -5>
  %156 = mul <4 x i32> %152, <i32 -5, i32 -5, i32 -5, i32 -5>
  %157 = mul <4 x i32> %153, <i32 -5, i32 -5, i32 -5, i32 -5>
  %158 = mul <4 x i32> %154, <i32 -5, i32 -5, i32 -5, i32 -5>
  %159 = getelementptr i8, ptr %next.gep320, i64 16
  %160 = getelementptr i8, ptr %next.gep320, i64 32
  %161 = getelementptr i8, ptr %next.gep320, i64 48
  %wide.load355 = load <4 x i32>, ptr %next.gep320, align 4, !alias.scope !138
  %wide.load356 = load <4 x i32>, ptr %159, align 4, !alias.scope !138
  %wide.load357 = load <4 x i32>, ptr %160, align 4, !alias.scope !138
  %wide.load358 = load <4 x i32>, ptr %161, align 4, !alias.scope !138
  %162 = getelementptr i8, ptr %next.gep315, i64 16
  %163 = getelementptr i8, ptr %next.gep315, i64 32
  %164 = getelementptr i8, ptr %next.gep315, i64 48
  %wide.load359 = load <4 x i32>, ptr %next.gep315, align 4, !alias.scope !140
  %wide.load360 = load <4 x i32>, ptr %162, align 4, !alias.scope !140
  %wide.load361 = load <4 x i32>, ptr %163, align 4, !alias.scope !140
  %wide.load362 = load <4 x i32>, ptr %164, align 4, !alias.scope !140
  %165 = add nsw <4 x i32> %wide.load359, %wide.load355
  %166 = add nsw <4 x i32> %wide.load360, %wide.load356
  %167 = add nsw <4 x i32> %wide.load361, %wide.load357
  %168 = add nsw <4 x i32> %wide.load362, %wide.load358
  %169 = mul nsw <4 x i32> %165, <i32 20, i32 20, i32 20, i32 20>
  %170 = mul nsw <4 x i32> %166, <i32 20, i32 20, i32 20, i32 20>
  %171 = mul nsw <4 x i32> %167, <i32 20, i32 20, i32 20, i32 20>
  %172 = mul nsw <4 x i32> %168, <i32 20, i32 20, i32 20, i32 20>
  %173 = add <4 x i32> %wide.load339, <i32 512, i32 512, i32 512, i32 512>
  %174 = add <4 x i32> %wide.load340, <i32 512, i32 512, i32 512, i32 512>
  %175 = add <4 x i32> %wide.load341, <i32 512, i32 512, i32 512, i32 512>
  %176 = add <4 x i32> %wide.load342, <i32 512, i32 512, i32 512, i32 512>
  %177 = add <4 x i32> %173, %wide.load343
  %178 = add <4 x i32> %174, %wide.load344
  %179 = add <4 x i32> %175, %wide.load345
  %180 = add <4 x i32> %176, %wide.load346
  %181 = add <4 x i32> %177, %155
  %182 = add <4 x i32> %178, %156
  %183 = add <4 x i32> %179, %157
  %184 = add <4 x i32> %180, %158
  %185 = add <4 x i32> %181, %169
  %186 = add <4 x i32> %182, %170
  %187 = add <4 x i32> %183, %171
  %188 = add <4 x i32> %184, %172
  %189 = ashr <4 x i32> %185, <i32 10, i32 10, i32 10, i32 10>
  %190 = ashr <4 x i32> %186, <i32 10, i32 10, i32 10, i32 10>
  %191 = ashr <4 x i32> %187, <i32 10, i32 10, i32 10, i32 10>
  %192 = ashr <4 x i32> %188, <i32 10, i32 10, i32 10, i32 10>
  %193 = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %189, <4 x i32> zeroinitializer)
  %194 = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %190, <4 x i32> zeroinitializer)
  %195 = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %191, <4 x i32> zeroinitializer)
  %196 = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %192, <4 x i32> zeroinitializer)
  %197 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %193, <4 x i32> %broadcast.splat)
  %198 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %194, <4 x i32> %broadcast.splat)
  %199 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %195, <4 x i32> %broadcast.splat)
  %200 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %196, <4 x i32> %broadcast.splat)
  %201 = trunc <4 x i32> %197 to <4 x i16>
  %202 = trunc <4 x i32> %198 to <4 x i16>
  %203 = trunc <4 x i32> %199 to <4 x i16>
  %204 = trunc <4 x i32> %200 to <4 x i16>
  %205 = getelementptr i8, ptr %next.gep300, i64 8
  %206 = getelementptr i8, ptr %next.gep300, i64 16
  %207 = getelementptr i8, ptr %next.gep300, i64 24
  store <4 x i16> %201, ptr %next.gep300, align 2, !alias.scope !142, !noalias !144
  store <4 x i16> %202, ptr %205, align 2, !alias.scope !142, !noalias !144
  store <4 x i16> %203, ptr %206, align 2, !alias.scope !142, !noalias !144
  store <4 x i16> %204, ptr %207, align 2, !alias.scope !142, !noalias !144
  %208 = and <4 x i32> %197, <i32 65535, i32 65535, i32 65535, i32 65535>
  %209 = and <4 x i32> %198, <i32 65535, i32 65535, i32 65535, i32 65535>
  %210 = and <4 x i32> %199, <i32 65535, i32 65535, i32 65535, i32 65535>
  %211 = and <4 x i32> %200, <i32 65535, i32 65535, i32 65535, i32 65535>
  %212 = getelementptr i8, ptr %next.gep335, i64 16
  %213 = getelementptr i8, ptr %next.gep335, i64 32
  %214 = getelementptr i8, ptr %next.gep335, i64 48
  %wide.load363 = load <4 x i32>, ptr %next.gep335, align 4, !alias.scope !146
  %wide.load364 = load <4 x i32>, ptr %212, align 4, !alias.scope !146
  %wide.load365 = load <4 x i32>, ptr %213, align 4, !alias.scope !146
  %wide.load366 = load <4 x i32>, ptr %214, align 4, !alias.scope !146
  %215 = add nsw <4 x i32> %wide.load363, <i32 16, i32 16, i32 16, i32 16>
  %216 = add nsw <4 x i32> %wide.load364, <i32 16, i32 16, i32 16, i32 16>
  %217 = add nsw <4 x i32> %wide.load365, <i32 16, i32 16, i32 16, i32 16>
  %218 = add nsw <4 x i32> %wide.load366, <i32 16, i32 16, i32 16, i32 16>
  %219 = ashr <4 x i32> %215, <i32 5, i32 5, i32 5, i32 5>
  %220 = ashr <4 x i32> %216, <i32 5, i32 5, i32 5, i32 5>
  %221 = ashr <4 x i32> %217, <i32 5, i32 5, i32 5, i32 5>
  %222 = ashr <4 x i32> %218, <i32 5, i32 5, i32 5, i32 5>
  %223 = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %219, <4 x i32> zeroinitializer)
  %224 = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %220, <4 x i32> zeroinitializer)
  %225 = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %221, <4 x i32> zeroinitializer)
  %226 = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %222, <4 x i32> zeroinitializer)
  %227 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %223, <4 x i32> %broadcast.splat)
  %228 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %224, <4 x i32> %broadcast.splat)
  %229 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %225, <4 x i32> %broadcast.splat)
  %230 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %226, <4 x i32> %broadcast.splat)
  %231 = add nsw <4 x i32> %227, <i32 1, i32 1, i32 1, i32 1>
  %232 = add nsw <4 x i32> %228, <i32 1, i32 1, i32 1, i32 1>
  %233 = add nsw <4 x i32> %229, <i32 1, i32 1, i32 1, i32 1>
  %234 = add nsw <4 x i32> %230, <i32 1, i32 1, i32 1, i32 1>
  %235 = add nsw <4 x i32> %231, %208
  %236 = add nsw <4 x i32> %232, %209
  %237 = add nsw <4 x i32> %233, %210
  %238 = add nsw <4 x i32> %234, %211
  %239 = lshr <4 x i32> %235, <i32 1, i32 1, i32 1, i32 1>
  %240 = lshr <4 x i32> %236, <i32 1, i32 1, i32 1, i32 1>
  %241 = lshr <4 x i32> %237, <i32 1, i32 1, i32 1, i32 1>
  %242 = lshr <4 x i32> %238, <i32 1, i32 1, i32 1, i32 1>
  %243 = trunc <4 x i32> %239 to <4 x i16>
  %244 = trunc <4 x i32> %240 to <4 x i16>
  %245 = trunc <4 x i32> %241 to <4 x i16>
  %246 = trunc <4 x i32> %242 to <4 x i16>
  store <4 x i16> %243, ptr %next.gep300, align 2, !alias.scope !142, !noalias !144
  store <4 x i16> %244, ptr %205, align 2, !alias.scope !142, !noalias !144
  store <4 x i16> %245, ptr %206, align 2, !alias.scope !142, !noalias !144
  store <4 x i16> %246, ptr %207, align 2, !alias.scope !142, !noalias !144
  %index.next367 = add nuw i64 %index298, 16
  %247 = icmp eq i64 %index.next367, %n.vec278
  br i1 %247, label %middle.block273, label %vector.body297, !llvm.loop !147

middle.block273:                                  ; preds = %vector.body297
  br i1 %cmp.n368, label %for.cond59.for.cond33.loopexit_crit_edge.us, label %for.body62.us.preheader

for.body62.us.preheader:                          ; preds = %middle.block273, %vector.memcheck238, %for.body36.us
  %i.1151.us.ph = phi i32 [ 0, %vector.memcheck238 ], [ 0, %for.body36.us ], [ %ind.end279, %middle.block273 ]
  %orig_line.0150.us.ph = phi ptr [ %120, %vector.memcheck238 ], [ %120, %for.body36.us ], [ %ind.end281, %middle.block273 ]
  %x5.0149.us.ph = phi ptr [ %119, %vector.memcheck238 ], [ %119, %for.body36.us ], [ %ind.end283, %middle.block273 ]
  %x4.0148.us.ph = phi ptr [ %118, %vector.memcheck238 ], [ %118, %for.body36.us ], [ %ind.end285, %middle.block273 ]
  %x3.0147.us.ph = phi ptr [ %117, %vector.memcheck238 ], [ %117, %for.body36.us ], [ %ind.end287, %middle.block273 ]
  %x2.0146.us.ph = phi ptr [ %116, %vector.memcheck238 ], [ %116, %for.body36.us ], [ %ind.end289, %middle.block273 ]
  %x1.0145.us.ph = phi ptr [ %115, %vector.memcheck238 ], [ %115, %for.body36.us ], [ %ind.end291, %middle.block273 ]
  %x0.0144.us.ph = phi ptr [ %114, %vector.memcheck238 ], [ %114, %for.body36.us ], [ %ind.end293, %middle.block273 ]
  %tmp_line.1143.us.ph = phi ptr [ %113, %vector.memcheck238 ], [ %113, %for.body36.us ], [ %ind.end295, %middle.block273 ]
  br label %for.body62.us

for.body62.us:                                    ; preds = %for.body62.us.preheader, %for.body62.us
  %i.1151.us = phi i32 [ %inc89.us, %for.body62.us ], [ %i.1151.us.ph, %for.body62.us.preheader ]
  %orig_line.0150.us = phi ptr [ %incdec.ptr87.us, %for.body62.us ], [ %orig_line.0150.us.ph, %for.body62.us.preheader ]
  %x5.0149.us = phi ptr [ %incdec.ptr64.us, %for.body62.us ], [ %x5.0149.us.ph, %for.body62.us.preheader ]
  %x4.0148.us = phi ptr [ %incdec.ptr67.us, %for.body62.us ], [ %x4.0148.us.ph, %for.body62.us.preheader ]
  %x3.0147.us = phi ptr [ %incdec.ptr72.us, %for.body62.us ], [ %x3.0147.us.ph, %for.body62.us.preheader ]
  %x2.0146.us = phi ptr [ %incdec.ptr71.us, %for.body62.us ], [ %x2.0146.us.ph, %for.body62.us.preheader ]
  %x1.0145.us = phi ptr [ %incdec.ptr66.us, %for.body62.us ], [ %x1.0145.us.ph, %for.body62.us.preheader ]
  %x0.0144.us = phi ptr [ %incdec.ptr63.us, %for.body62.us ], [ %x0.0144.us.ph, %for.body62.us.preheader ]
  %tmp_line.1143.us = phi ptr [ %incdec.ptr79.us, %for.body62.us ], [ %tmp_line.1143.us.ph, %for.body62.us.preheader ]
  %incdec.ptr63.us = getelementptr inbounds i8, ptr %x0.0144.us, i64 4
  %248 = load i32, ptr %x0.0144.us, align 4
  %incdec.ptr64.us = getelementptr inbounds i8, ptr %x5.0149.us, i64 4
  %249 = load i32, ptr %x5.0149.us, align 4
  %incdec.ptr66.us = getelementptr inbounds i8, ptr %x1.0145.us, i64 4
  %250 = load i32, ptr %x1.0145.us, align 4
  %incdec.ptr67.us = getelementptr inbounds i8, ptr %x4.0148.us, i64 4
  %251 = load i32, ptr %x4.0148.us, align 4
  %add68.us = add nsw i32 %251, %250
  %mul69.neg.us = mul i32 %add68.us, -5
  %incdec.ptr71.us = getelementptr inbounds i8, ptr %x2.0146.us, i64 4
  %252 = load i32, ptr %x2.0146.us, align 4
  %incdec.ptr72.us = getelementptr inbounds i8, ptr %x3.0147.us, i64 4
  %253 = load i32, ptr %x3.0147.us, align 4
  %add73.us = add nsw i32 %253, %252
  %mul74.us = mul nsw i32 %add73.us, 20
  %add65.us = add i32 %248, 512
  %sub70.us = add i32 %add65.us, %249
  %add75.us = add i32 %sub70.us, %mul69.neg.us
  %add76.us = add i32 %add75.us, %mul74.us
  %shr.us = ashr i32 %add76.us, 10
  %cond.i.i.us = tail call noundef i32 @llvm.smax.i32(i32 %shr.us, i32 0)
  %cond.i4.i.us = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i.us, i32 %max_imgpel_value)
  %conv77.us = trunc i32 %cond.i4.i.us to i16
  store i16 %conv77.us, ptr %orig_line.0150.us, align 2
  %conv78.us = and i32 %cond.i4.i.us, 65535
  %incdec.ptr79.us = getelementptr inbounds i8, ptr %tmp_line.1143.us, i64 4
  %254 = load i32, ptr %tmp_line.1143.us, align 4
  %add80.us = add nsw i32 %254, 16
  %shr81.us = ashr i32 %add80.us, 5
  %cond.i.i128.us = tail call noundef i32 @llvm.smax.i32(i32 %shr81.us, i32 0)
  %cond.i4.i129.us = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i128.us, i32 %max_imgpel_value)
  %add83.us = add nsw i32 %cond.i4.i129.us, 1
  %add84.us = add nsw i32 %add83.us, %conv78.us
  %shr85.us = lshr i32 %add84.us, 1
  %conv86.us = trunc i32 %shr85.us to i16
  store i16 %conv86.us, ptr %orig_line.0150.us, align 2
  %incdec.ptr87.us = getelementptr inbounds i8, ptr %orig_line.0150.us, i64 2
  %inc89.us = add nuw nsw i32 %i.1151.us, 1
  %exitcond163.not = icmp eq i32 %inc89.us, %hor_block_size
  br i1 %exitcond163.not, label %for.cond59.for.cond33.loopexit_crit_edge.us, label %for.body62.us, !llvm.loop !148

for.cond59.for.cond33.loopexit_crit_edge.us:      ; preds = %for.body62.us, %middle.block273
  %indvars.iv.next165 = add nuw nsw i64 %indvars.iv164, 1
  %exitcond172.not = icmp eq i64 %indvars.iv.next167, %wide.trip.count171
  br i1 %exitcond172.not, label %for.end93, label %for.body36.us

for.end93:                                        ; preds = %for.cond59.for.cond33.loopexit_crit_edge.us, %entry, %for.cond33.preheader
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @get_luma_12(ptr nocapture noundef readonly %block, ptr nocapture readonly %cur_imgY.-16.val, ptr nocapture noundef readonly %tmp_res, i32 noundef %ver_block_size, i32 noundef %hor_block_size, i32 noundef %x_pos, i32 noundef %shift_x, i32 noundef %max_imgpel_value) unnamed_addr #5 {
entry:
  %cmp10 = icmp sgt i32 %ver_block_size, 0
  br i1 %cmp10, label %for.body.lr.ph, label %for.end88

for.body.lr.ph:                                   ; preds = %entry
  %idx.ext = sext i32 %shift_x to i64
  %cmp131 = icmp sgt i32 %hor_block_size, -5
  %narrow = sub nsw i32 -5, %hor_block_size
  %idx.neg = sext i32 %narrow to i64
  br i1 %cmp131, label %for.body.us.preheader, label %for.end88

for.body.us.preheader:                            ; preds = %for.body.lr.ph
  %0 = sext i32 %x_pos to i64
  %1 = getelementptr i16, ptr %cur_imgY.-16.val, i64 %0
  %arrayidx1 = getelementptr i8, ptr %1, i64 -4
  %2 = add i32 %hor_block_size, 4
  %smax = tail call i32 @llvm.smax.i32(i32 %2, i32 0)
  %wide.trip.count = zext nneg i32 %ver_block_size to i64
  %3 = zext nneg i32 %smax to i64
  %4 = shl nuw nsw i64 %3, 2
  %5 = mul nsw i64 %idx.ext, 6
  %6 = shl nuw nsw i64 %3, 1
  %7 = add nsw i64 %5, %6
  %8 = add nsw i64 %7, 2
  %9 = shl nsw i64 %idx.ext, 2
  %10 = add nsw i64 %9, %6
  %11 = add nsw i64 %10, 2
  %12 = shl nsw i64 %idx.ext, 3
  %13 = add nsw i64 %12, %6
  %14 = add nsw i64 %13, 2
  %15 = add nsw i64 %idx.ext, %3
  %16 = shl nsw i64 %15, 1
  %17 = add nsw i64 %16, 2
  %18 = mul nsw i64 %idx.ext, 10
  %19 = add nsw i64 %18, %6
  %20 = add nsw i64 %19, 2
  %21 = add nuw nsw i64 %6, 2
  %narrow220 = add nuw i32 %smax, 1
  %22 = zext i32 %narrow220 to i64
  %min.iters.check = icmp slt i32 %2, 15
  %n.vec = and i64 %22, 4294967280
  %ind.end = trunc nuw i64 %n.vec to i32
  %23 = shl nuw nsw i64 %n.vec, 1
  %24 = shl nuw nsw i64 %n.vec, 1
  %25 = shl nuw nsw i64 %n.vec, 1
  %26 = shl nuw nsw i64 %n.vec, 1
  %27 = shl nuw nsw i64 %n.vec, 1
  %28 = shl nuw nsw i64 %n.vec, 1
  %29 = shl nuw nsw i64 %n.vec, 2
  %cmp.n = icmp eq i64 %n.vec, %22
  br label %for.body.us

for.body.us:                                      ; preds = %for.body.us.preheader, %for.cond12.for.end_crit_edge.us
  %indvars.iv = phi i64 [ 0, %for.body.us.preheader ], [ %indvars.iv.next, %for.cond12.for.end_crit_edge.us ]
  %p0.012.us = phi ptr [ %arrayidx1, %for.body.us.preheader ], [ %add.ptr34.us, %for.cond12.for.end_crit_edge.us ]
  %add.ptr.us = getelementptr i16, ptr %p0.012.us, i64 %idx.ext
  %add.ptr3.us = getelementptr i16, ptr %add.ptr.us, i64 %idx.ext
  %add.ptr5.us = getelementptr i16, ptr %add.ptr3.us, i64 %idx.ext
  %add.ptr7.us = getelementptr i16, ptr %add.ptr5.us, i64 %idx.ext
  %add.ptr9.us = getelementptr i16, ptr %add.ptr7.us, i64 %idx.ext
  %arrayidx11.us = getelementptr inbounds ptr, ptr %tmp_res, i64 %indvars.iv
  %30 = load ptr, ptr %arrayidx11.us, align 8
  br i1 %min.iters.check, label %for.body14.us.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %for.body.us
  %31 = getelementptr i8, ptr %30, i64 %4
  %scevgep = getelementptr i8, ptr %31, i64 4
  %scevgep37 = getelementptr i8, ptr %p0.012.us, i64 %8
  %scevgep38 = getelementptr i8, ptr %p0.012.us, i64 %11
  %scevgep39 = getelementptr i8, ptr %p0.012.us, i64 %14
  %scevgep40 = getelementptr i8, ptr %p0.012.us, i64 %17
  %scevgep41 = getelementptr i8, ptr %p0.012.us, i64 %20
  %scevgep42 = getelementptr i8, ptr %p0.012.us, i64 %21
  %32 = insertelement <4 x ptr> poison, ptr %30, i64 0
  %33 = shufflevector <4 x ptr> %32, <4 x ptr> poison, <4 x i32> zeroinitializer
  %34 = insertelement <4 x ptr> poison, ptr %scevgep37, i64 0
  %35 = insertelement <4 x ptr> %34, ptr %scevgep38, i64 1
  %36 = insertelement <4 x ptr> %35, ptr %scevgep39, i64 2
  %37 = insertelement <4 x ptr> %36, ptr %scevgep40, i64 3
  %38 = icmp ult <4 x ptr> %33, %37
  %39 = insertelement <4 x ptr> poison, ptr %add.ptr5.us, i64 0
  %40 = insertelement <4 x ptr> %39, ptr %add.ptr3.us, i64 1
  %41 = insertelement <4 x ptr> %40, ptr %add.ptr7.us, i64 2
  %42 = insertelement <4 x ptr> %41, ptr %add.ptr.us, i64 3
  %43 = insertelement <4 x ptr> poison, ptr %scevgep, i64 0
  %44 = shufflevector <4 x ptr> %43, <4 x ptr> poison, <4 x i32> zeroinitializer
  %45 = icmp ult <4 x ptr> %42, %44
  %46 = and <4 x i1> %38, %45
  %bound054 = icmp ult ptr %30, %scevgep41
  %bound155 = icmp ult ptr %add.ptr9.us, %scevgep
  %found.conflict56 = and i1 %bound054, %bound155
  %bound058 = icmp ult ptr %30, %scevgep42
  %bound159 = icmp ult ptr %p0.012.us, %scevgep
  %found.conflict60 = and i1 %bound058, %bound159
  %47 = bitcast <4 x i1> %46 to i4
  %48 = icmp ne i4 %47, 0
  %op.rdx = or i1 %48, %found.conflict56
  %op.rdx221 = or i1 %op.rdx, %found.conflict60
  br i1 %op.rdx221, label %for.body14.us.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %ind.end62 = getelementptr i8, ptr %add.ptr9.us, i64 %23
  %ind.end64 = getelementptr i8, ptr %add.ptr7.us, i64 %24
  %ind.end66 = getelementptr i8, ptr %add.ptr5.us, i64 %25
  %ind.end68 = getelementptr i8, ptr %add.ptr3.us, i64 %26
  %ind.end70 = getelementptr i8, ptr %add.ptr.us, i64 %27
  %ind.end72 = getelementptr i8, ptr %p0.012.us, i64 %28
  %ind.end74 = getelementptr i8, ptr %30, i64 %29
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %offset.idx = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %add.ptr9.us, i64 %offset.idx
  %offset.idx79 = shl i64 %index, 1
  %next.gep80 = getelementptr i8, ptr %add.ptr7.us, i64 %offset.idx79
  %offset.idx84 = shl i64 %index, 1
  %next.gep85 = getelementptr i8, ptr %add.ptr5.us, i64 %offset.idx84
  %offset.idx89 = shl i64 %index, 1
  %next.gep90 = getelementptr i8, ptr %add.ptr3.us, i64 %offset.idx89
  %offset.idx94 = shl i64 %index, 1
  %next.gep95 = getelementptr i8, ptr %add.ptr.us, i64 %offset.idx94
  %offset.idx99 = shl i64 %index, 1
  %next.gep100 = getelementptr i8, ptr %p0.012.us, i64 %offset.idx99
  %offset.idx104 = shl i64 %index, 2
  %next.gep105 = getelementptr i8, ptr %30, i64 %offset.idx104
  %49 = getelementptr i8, ptr %next.gep100, i64 8
  %50 = getelementptr i8, ptr %next.gep100, i64 16
  %51 = getelementptr i8, ptr %next.gep100, i64 24
  %wide.load = load <4 x i16>, ptr %next.gep100, align 2, !alias.scope !149
  %wide.load109 = load <4 x i16>, ptr %49, align 2, !alias.scope !149
  %wide.load110 = load <4 x i16>, ptr %50, align 2, !alias.scope !149
  %wide.load111 = load <4 x i16>, ptr %51, align 2, !alias.scope !149
  %52 = zext <4 x i16> %wide.load to <4 x i32>
  %53 = zext <4 x i16> %wide.load109 to <4 x i32>
  %54 = zext <4 x i16> %wide.load110 to <4 x i32>
  %55 = zext <4 x i16> %wide.load111 to <4 x i32>
  %56 = getelementptr i8, ptr %next.gep, i64 8
  %57 = getelementptr i8, ptr %next.gep, i64 16
  %58 = getelementptr i8, ptr %next.gep, i64 24
  %wide.load112 = load <4 x i16>, ptr %next.gep, align 2, !alias.scope !152
  %wide.load113 = load <4 x i16>, ptr %56, align 2, !alias.scope !152
  %wide.load114 = load <4 x i16>, ptr %57, align 2, !alias.scope !152
  %wide.load115 = load <4 x i16>, ptr %58, align 2, !alias.scope !152
  %59 = zext <4 x i16> %wide.load112 to <4 x i32>
  %60 = zext <4 x i16> %wide.load113 to <4 x i32>
  %61 = zext <4 x i16> %wide.load114 to <4 x i32>
  %62 = zext <4 x i16> %wide.load115 to <4 x i32>
  %63 = add nuw nsw <4 x i32> %59, %52
  %64 = add nuw nsw <4 x i32> %60, %53
  %65 = add nuw nsw <4 x i32> %61, %54
  %66 = add nuw nsw <4 x i32> %62, %55
  %67 = getelementptr i8, ptr %next.gep95, i64 8
  %68 = getelementptr i8, ptr %next.gep95, i64 16
  %69 = getelementptr i8, ptr %next.gep95, i64 24
  %wide.load116 = load <4 x i16>, ptr %next.gep95, align 2, !alias.scope !154
  %wide.load117 = load <4 x i16>, ptr %67, align 2, !alias.scope !154
  %wide.load118 = load <4 x i16>, ptr %68, align 2, !alias.scope !154
  %wide.load119 = load <4 x i16>, ptr %69, align 2, !alias.scope !154
  %70 = zext <4 x i16> %wide.load116 to <4 x i32>
  %71 = zext <4 x i16> %wide.load117 to <4 x i32>
  %72 = zext <4 x i16> %wide.load118 to <4 x i32>
  %73 = zext <4 x i16> %wide.load119 to <4 x i32>
  %74 = getelementptr i8, ptr %next.gep80, i64 8
  %75 = getelementptr i8, ptr %next.gep80, i64 16
  %76 = getelementptr i8, ptr %next.gep80, i64 24
  %wide.load120 = load <4 x i16>, ptr %next.gep80, align 2, !alias.scope !156
  %wide.load121 = load <4 x i16>, ptr %74, align 2, !alias.scope !156
  %wide.load122 = load <4 x i16>, ptr %75, align 2, !alias.scope !156
  %wide.load123 = load <4 x i16>, ptr %76, align 2, !alias.scope !156
  %77 = zext <4 x i16> %wide.load120 to <4 x i32>
  %78 = zext <4 x i16> %wide.load121 to <4 x i32>
  %79 = zext <4 x i16> %wide.load122 to <4 x i32>
  %80 = zext <4 x i16> %wide.load123 to <4 x i32>
  %81 = add nuw nsw <4 x i32> %77, %70
  %82 = add nuw nsw <4 x i32> %78, %71
  %83 = add nuw nsw <4 x i32> %79, %72
  %84 = add nuw nsw <4 x i32> %80, %73
  %85 = mul nsw <4 x i32> %81, <i32 -5, i32 -5, i32 -5, i32 -5>
  %86 = mul nsw <4 x i32> %82, <i32 -5, i32 -5, i32 -5, i32 -5>
  %87 = mul nsw <4 x i32> %83, <i32 -5, i32 -5, i32 -5, i32 -5>
  %88 = mul nsw <4 x i32> %84, <i32 -5, i32 -5, i32 -5, i32 -5>
  %89 = add nsw <4 x i32> %63, %85
  %90 = add nsw <4 x i32> %64, %86
  %91 = add nsw <4 x i32> %65, %87
  %92 = add nsw <4 x i32> %66, %88
  %93 = getelementptr i8, ptr %next.gep90, i64 8
  %94 = getelementptr i8, ptr %next.gep90, i64 16
  %95 = getelementptr i8, ptr %next.gep90, i64 24
  %wide.load124 = load <4 x i16>, ptr %next.gep90, align 2, !alias.scope !158
  %wide.load125 = load <4 x i16>, ptr %93, align 2, !alias.scope !158
  %wide.load126 = load <4 x i16>, ptr %94, align 2, !alias.scope !158
  %wide.load127 = load <4 x i16>, ptr %95, align 2, !alias.scope !158
  %96 = zext <4 x i16> %wide.load124 to <4 x i32>
  %97 = zext <4 x i16> %wide.load125 to <4 x i32>
  %98 = zext <4 x i16> %wide.load126 to <4 x i32>
  %99 = zext <4 x i16> %wide.load127 to <4 x i32>
  %100 = getelementptr i8, ptr %next.gep85, i64 8
  %101 = getelementptr i8, ptr %next.gep85, i64 16
  %102 = getelementptr i8, ptr %next.gep85, i64 24
  %wide.load128 = load <4 x i16>, ptr %next.gep85, align 2, !alias.scope !160
  %wide.load129 = load <4 x i16>, ptr %100, align 2, !alias.scope !160
  %wide.load130 = load <4 x i16>, ptr %101, align 2, !alias.scope !160
  %wide.load131 = load <4 x i16>, ptr %102, align 2, !alias.scope !160
  %103 = zext <4 x i16> %wide.load128 to <4 x i32>
  %104 = zext <4 x i16> %wide.load129 to <4 x i32>
  %105 = zext <4 x i16> %wide.load130 to <4 x i32>
  %106 = zext <4 x i16> %wide.load131 to <4 x i32>
  %107 = add nuw nsw <4 x i32> %103, %96
  %108 = add nuw nsw <4 x i32> %104, %97
  %109 = add nuw nsw <4 x i32> %105, %98
  %110 = add nuw nsw <4 x i32> %106, %99
  %111 = mul nuw nsw <4 x i32> %107, <i32 20, i32 20, i32 20, i32 20>
  %112 = mul nuw nsw <4 x i32> %108, <i32 20, i32 20, i32 20, i32 20>
  %113 = mul nuw nsw <4 x i32> %109, <i32 20, i32 20, i32 20, i32 20>
  %114 = mul nuw nsw <4 x i32> %110, <i32 20, i32 20, i32 20, i32 20>
  %115 = add nsw <4 x i32> %89, %111
  %116 = add nsw <4 x i32> %90, %112
  %117 = add nsw <4 x i32> %91, %113
  %118 = add nsw <4 x i32> %92, %114
  %119 = getelementptr i8, ptr %next.gep105, i64 16
  %120 = getelementptr i8, ptr %next.gep105, i64 32
  %121 = getelementptr i8, ptr %next.gep105, i64 48
  store <4 x i32> %115, ptr %next.gep105, align 4, !alias.scope !162, !noalias !164
  store <4 x i32> %116, ptr %119, align 4, !alias.scope !162, !noalias !164
  store <4 x i32> %117, ptr %120, align 4, !alias.scope !162, !noalias !164
  store <4 x i32> %118, ptr %121, align 4, !alias.scope !162, !noalias !164
  %index.next = add nuw i64 %index, 16
  %122 = icmp eq i64 %index.next, %n.vec
  br i1 %122, label %middle.block, label %vector.body, !llvm.loop !165

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %for.cond12.for.end_crit_edge.us, label %for.body14.us.preheader

for.body14.us.preheader:                          ; preds = %middle.block, %vector.memcheck, %for.body.us
  %i.09.us.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %for.body.us ], [ %ind.end, %middle.block ]
  %p5.08.us.ph = phi ptr [ %add.ptr9.us, %vector.memcheck ], [ %add.ptr9.us, %for.body.us ], [ %ind.end62, %middle.block ]
  %p4.07.us.ph = phi ptr [ %add.ptr7.us, %vector.memcheck ], [ %add.ptr7.us, %for.body.us ], [ %ind.end64, %middle.block ]
  %p3.06.us.ph = phi ptr [ %add.ptr5.us, %vector.memcheck ], [ %add.ptr5.us, %for.body.us ], [ %ind.end66, %middle.block ]
  %p2.05.us.ph = phi ptr [ %add.ptr3.us, %vector.memcheck ], [ %add.ptr3.us, %for.body.us ], [ %ind.end68, %middle.block ]
  %p1.04.us.ph = phi ptr [ %add.ptr.us, %vector.memcheck ], [ %add.ptr.us, %for.body.us ], [ %ind.end70, %middle.block ]
  %p0.13.us.ph = phi ptr [ %p0.012.us, %vector.memcheck ], [ %p0.012.us, %for.body.us ], [ %ind.end72, %middle.block ]
  %tmp_line.02.us.ph = phi ptr [ %30, %vector.memcheck ], [ %30, %for.body.us ], [ %ind.end74, %middle.block ]
  br label %for.body14.us

for.body14.us:                                    ; preds = %for.body14.us.preheader, %for.body14.us
  %i.09.us = phi i32 [ %inc.us, %for.body14.us ], [ %i.09.us.ph, %for.body14.us.preheader ]
  %p5.08.us = phi ptr [ %incdec.ptr15.us, %for.body14.us ], [ %p5.08.us.ph, %for.body14.us.preheader ]
  %p4.07.us = phi ptr [ %incdec.ptr20.us, %for.body14.us ], [ %p4.07.us.ph, %for.body14.us.preheader ]
  %p3.06.us = phi ptr [ %incdec.ptr26.us, %for.body14.us ], [ %p3.06.us.ph, %for.body14.us.preheader ]
  %p2.05.us = phi ptr [ %incdec.ptr24.us, %for.body14.us ], [ %p2.05.us.ph, %for.body14.us.preheader ]
  %p1.04.us = phi ptr [ %incdec.ptr18.us, %for.body14.us ], [ %p1.04.us.ph, %for.body14.us.preheader ]
  %p0.13.us = phi ptr [ %incdec.ptr.us, %for.body14.us ], [ %p0.13.us.ph, %for.body14.us.preheader ]
  %tmp_line.02.us = phi ptr [ %incdec.ptr31.us, %for.body14.us ], [ %tmp_line.02.us.ph, %for.body14.us.preheader ]
  %incdec.ptr.us = getelementptr inbounds i8, ptr %p0.13.us, i64 2
  %123 = load i16, ptr %p0.13.us, align 2
  %conv.us = zext i16 %123 to i32
  %incdec.ptr15.us = getelementptr inbounds i8, ptr %p5.08.us, i64 2
  %124 = load i16, ptr %p5.08.us, align 2
  %conv16.us = zext i16 %124 to i32
  %add17.us = add nuw nsw i32 %conv16.us, %conv.us
  %incdec.ptr18.us = getelementptr inbounds i8, ptr %p1.04.us, i64 2
  %125 = load i16, ptr %p1.04.us, align 2
  %conv19.us = zext i16 %125 to i32
  %incdec.ptr20.us = getelementptr inbounds i8, ptr %p4.07.us, i64 2
  %126 = load i16, ptr %p4.07.us, align 2
  %conv21.us = zext i16 %126 to i32
  %add22.us = add nuw nsw i32 %conv21.us, %conv19.us
  %mul.neg.us = mul nsw i32 %add22.us, -5
  %sub23.us = add nsw i32 %add17.us, %mul.neg.us
  %incdec.ptr24.us = getelementptr inbounds i8, ptr %p2.05.us, i64 2
  %127 = load i16, ptr %p2.05.us, align 2
  %conv25.us = zext i16 %127 to i32
  %incdec.ptr26.us = getelementptr inbounds i8, ptr %p3.06.us, i64 2
  %128 = load i16, ptr %p3.06.us, align 2
  %conv27.us = zext i16 %128 to i32
  %add28.us = add nuw nsw i32 %conv27.us, %conv25.us
  %mul29.us = mul nuw nsw i32 %add28.us, 20
  %add30.us = add nsw i32 %sub23.us, %mul29.us
  %incdec.ptr31.us = getelementptr inbounds i8, ptr %tmp_line.02.us, i64 4
  store i32 %add30.us, ptr %tmp_line.02.us, align 4
  %inc.us = add nuw i32 %i.09.us, 1
  %exitcond.not = icmp eq i32 %i.09.us, %smax
  br i1 %exitcond.not, label %for.cond12.for.end_crit_edge.us, label %for.body14.us, !llvm.loop !166

for.cond12.for.end_crit_edge.us:                  ; preds = %for.body14.us, %middle.block
  %incdec.ptr18.us.lcssa = phi ptr [ %ind.end70, %middle.block ], [ %incdec.ptr18.us, %for.body14.us ]
  %add.ptr34.us = getelementptr inbounds i16, ptr %incdec.ptr18.us.lcssa, i64 %idx.neg
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond28.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond28.not, label %for.cond38.preheader, label %for.body.us

for.cond38.preheader:                             ; preds = %for.cond12.for.end_crit_edge.us
  %cmp5513 = icmp sgt i32 %hor_block_size, 0
  %or.cond = and i1 %cmp10, %cmp5513
  br i1 %or.cond, label %for.body41.us.preheader, label %for.end88

for.body41.us.preheader:                          ; preds = %for.cond38.preheader
  %wide.trip.count33 = zext nneg i32 %ver_block_size to i64
  %129 = add nsw i32 %hor_block_size, -1
  %130 = zext i32 %129 to i64
  %131 = shl nuw nsw i64 %130, 1
  %132 = shl nuw nsw i64 %130, 2
  %133 = zext nneg i32 %hor_block_size to i64
  %min.iters.check140 = icmp ult i32 %hor_block_size, 16
  %n.vec143 = and i64 %133, 2147483632
  %ind.end144 = trunc nuw nsw i64 %n.vec143 to i32
  %134 = shl nuw nsw i64 %n.vec143, 1
  %135 = shl nuw nsw i64 %n.vec143, 2
  %136 = shl nuw nsw i64 %n.vec143, 2
  %137 = shl nuw nsw i64 %n.vec143, 2
  %138 = shl nuw nsw i64 %n.vec143, 2
  %139 = shl nuw nsw i64 %n.vec143, 2
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %max_imgpel_value, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %cmp.n219 = icmp eq i64 %n.vec143, %133
  br label %for.body41.us

for.body41.us:                                    ; preds = %for.body41.us.preheader, %for.cond54.for.inc86_crit_edge.us
  %indvars.iv30 = phi i64 [ 0, %for.body41.us.preheader ], [ %indvars.iv.next31, %for.cond54.for.inc86_crit_edge.us ]
  %arrayidx43.us = getelementptr inbounds ptr, ptr %tmp_res, i64 %indvars.iv30
  %140 = load ptr, ptr %arrayidx43.us, align 8
  %arrayidx44.us = getelementptr inbounds i8, ptr %140, i64 8
  %arrayidx46.us = getelementptr inbounds ptr, ptr %block, i64 %indvars.iv30
  %141 = load ptr, ptr %arrayidx46.us, align 8
  %add.ptr51.us = getelementptr inbounds i8, ptr %140, i64 12
  %add.ptr52.us = getelementptr inbounds i8, ptr %140, i64 16
  %add.ptr53.us = getelementptr inbounds i8, ptr %140, i64 20
  br i1 %min.iters.check140, label %for.body57.us.preheader, label %vector.memcheck132

vector.memcheck132:                               ; preds = %for.body41.us
  %142 = getelementptr i8, ptr %141, i64 %131
  %scevgep133 = getelementptr i8, ptr %142, i64 2
  %143 = getelementptr i8, ptr %140, i64 %132
  %scevgep134 = getelementptr i8, ptr %143, i64 24
  %bound0135 = icmp ult ptr %141, %scevgep134
  %bound1136 = icmp ult ptr %140, %scevgep133
  %found.conflict137 = and i1 %bound0135, %bound1136
  br i1 %found.conflict137, label %for.body57.us.preheader, label %vector.ph141

vector.ph141:                                     ; preds = %vector.memcheck132
  %ind.end146 = getelementptr i8, ptr %141, i64 %134
  %ind.end148 = getelementptr i8, ptr %add.ptr53.us, i64 %135
  %ind.end150 = getelementptr i8, ptr %add.ptr52.us, i64 %136
  %ind.end152 = getelementptr i8, ptr %add.ptr51.us, i64 %137
  %ind.end154 = getelementptr i8, ptr %arrayidx44.us, i64 %138
  %ind.end156 = getelementptr i8, ptr %140, i64 %139
  br label %vector.body158

vector.body158:                                   ; preds = %vector.body158, %vector.ph141
  %index159 = phi i64 [ 0, %vector.ph141 ], [ %index.next218, %vector.body158 ]
  %offset.idx160 = shl i64 %index159, 1
  %next.gep161 = getelementptr i8, ptr %141, i64 %offset.idx160
  %offset.idx165 = shl i64 %index159, 2
  %next.gep166 = getelementptr i8, ptr %add.ptr53.us, i64 %offset.idx165
  %offset.idx170 = shl i64 %index159, 2
  %next.gep171 = getelementptr i8, ptr %add.ptr52.us, i64 %offset.idx170
  %offset.idx175 = shl i64 %index159, 2
  %next.gep176 = getelementptr i8, ptr %add.ptr51.us, i64 %offset.idx175
  %offset.idx180 = shl i64 %index159, 2
  %next.gep181 = getelementptr i8, ptr %arrayidx44.us, i64 %offset.idx180
  %offset.idx185 = shl i64 %index159, 2
  %next.gep186 = getelementptr i8, ptr %140, i64 %offset.idx185
  %144 = getelementptr i8, ptr %next.gep186, i64 4
  %145 = getelementptr i8, ptr %next.gep186, i64 16
  %146 = getelementptr i8, ptr %next.gep186, i64 32
  %147 = getelementptr i8, ptr %next.gep186, i64 48
  %wide.load190 = load <4 x i32>, ptr %next.gep186, align 4, !alias.scope !167
  %wide.load191 = load <4 x i32>, ptr %145, align 4, !alias.scope !167
  %wide.load192 = load <4 x i32>, ptr %146, align 4, !alias.scope !167
  %wide.load193 = load <4 x i32>, ptr %147, align 4, !alias.scope !167
  %148 = getelementptr i8, ptr %next.gep166, i64 16
  %149 = getelementptr i8, ptr %next.gep166, i64 32
  %150 = getelementptr i8, ptr %next.gep166, i64 48
  %wide.load194 = load <4 x i32>, ptr %next.gep166, align 4, !alias.scope !167
  %wide.load195 = load <4 x i32>, ptr %148, align 4, !alias.scope !167
  %wide.load196 = load <4 x i32>, ptr %149, align 4, !alias.scope !167
  %wide.load197 = load <4 x i32>, ptr %150, align 4, !alias.scope !167
  %151 = getelementptr i8, ptr %next.gep186, i64 20
  %152 = getelementptr i8, ptr %next.gep186, i64 36
  %153 = getelementptr i8, ptr %next.gep186, i64 52
  %wide.load198 = load <4 x i32>, ptr %144, align 4, !alias.scope !167
  %wide.load199 = load <4 x i32>, ptr %151, align 4, !alias.scope !167
  %wide.load200 = load <4 x i32>, ptr %152, align 4, !alias.scope !167
  %wide.load201 = load <4 x i32>, ptr %153, align 4, !alias.scope !167
  %154 = getelementptr i8, ptr %next.gep171, i64 16
  %155 = getelementptr i8, ptr %next.gep171, i64 32
  %156 = getelementptr i8, ptr %next.gep171, i64 48
  %wide.load202 = load <4 x i32>, ptr %next.gep171, align 4, !alias.scope !167
  %wide.load203 = load <4 x i32>, ptr %154, align 4, !alias.scope !167
  %wide.load204 = load <4 x i32>, ptr %155, align 4, !alias.scope !167
  %wide.load205 = load <4 x i32>, ptr %156, align 4, !alias.scope !167
  %157 = add nsw <4 x i32> %wide.load202, %wide.load198
  %158 = add nsw <4 x i32> %wide.load203, %wide.load199
  %159 = add nsw <4 x i32> %wide.load204, %wide.load200
  %160 = add nsw <4 x i32> %wide.load205, %wide.load201
  %161 = mul <4 x i32> %157, <i32 -5, i32 -5, i32 -5, i32 -5>
  %162 = mul <4 x i32> %158, <i32 -5, i32 -5, i32 -5, i32 -5>
  %163 = mul <4 x i32> %159, <i32 -5, i32 -5, i32 -5, i32 -5>
  %164 = mul <4 x i32> %160, <i32 -5, i32 -5, i32 -5, i32 -5>
  %165 = getelementptr i8, ptr %next.gep181, i64 16
  %166 = getelementptr i8, ptr %next.gep181, i64 32
  %167 = getelementptr i8, ptr %next.gep181, i64 48
  %wide.load206 = load <4 x i32>, ptr %next.gep181, align 4, !alias.scope !167
  %wide.load207 = load <4 x i32>, ptr %165, align 4, !alias.scope !167
  %wide.load208 = load <4 x i32>, ptr %166, align 4, !alias.scope !167
  %wide.load209 = load <4 x i32>, ptr %167, align 4, !alias.scope !167
  %168 = getelementptr i8, ptr %next.gep176, i64 16
  %169 = getelementptr i8, ptr %next.gep176, i64 32
  %170 = getelementptr i8, ptr %next.gep176, i64 48
  %wide.load210 = load <4 x i32>, ptr %next.gep176, align 4, !alias.scope !167
  %wide.load211 = load <4 x i32>, ptr %168, align 4, !alias.scope !167
  %wide.load212 = load <4 x i32>, ptr %169, align 4, !alias.scope !167
  %wide.load213 = load <4 x i32>, ptr %170, align 4, !alias.scope !167
  %171 = add nsw <4 x i32> %wide.load210, %wide.load206
  %172 = add nsw <4 x i32> %wide.load211, %wide.load207
  %173 = add nsw <4 x i32> %wide.load212, %wide.load208
  %174 = add nsw <4 x i32> %wide.load213, %wide.load209
  %175 = mul nsw <4 x i32> %171, <i32 20, i32 20, i32 20, i32 20>
  %176 = mul nsw <4 x i32> %172, <i32 20, i32 20, i32 20, i32 20>
  %177 = mul nsw <4 x i32> %173, <i32 20, i32 20, i32 20, i32 20>
  %178 = mul nsw <4 x i32> %174, <i32 20, i32 20, i32 20, i32 20>
  %179 = add <4 x i32> %wide.load190, <i32 512, i32 512, i32 512, i32 512>
  %180 = add <4 x i32> %wide.load191, <i32 512, i32 512, i32 512, i32 512>
  %181 = add <4 x i32> %wide.load192, <i32 512, i32 512, i32 512, i32 512>
  %182 = add <4 x i32> %wide.load193, <i32 512, i32 512, i32 512, i32 512>
  %183 = add <4 x i32> %179, %wide.load194
  %184 = add <4 x i32> %180, %wide.load195
  %185 = add <4 x i32> %181, %wide.load196
  %186 = add <4 x i32> %182, %wide.load197
  %187 = add <4 x i32> %183, %161
  %188 = add <4 x i32> %184, %162
  %189 = add <4 x i32> %185, %163
  %190 = add <4 x i32> %186, %164
  %191 = add <4 x i32> %187, %175
  %192 = add <4 x i32> %188, %176
  %193 = add <4 x i32> %189, %177
  %194 = add <4 x i32> %190, %178
  %195 = ashr <4 x i32> %191, <i32 10, i32 10, i32 10, i32 10>
  %196 = ashr <4 x i32> %192, <i32 10, i32 10, i32 10, i32 10>
  %197 = ashr <4 x i32> %193, <i32 10, i32 10, i32 10, i32 10>
  %198 = ashr <4 x i32> %194, <i32 10, i32 10, i32 10, i32 10>
  %199 = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %195, <4 x i32> zeroinitializer)
  %200 = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %196, <4 x i32> zeroinitializer)
  %201 = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %197, <4 x i32> zeroinitializer)
  %202 = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %198, <4 x i32> zeroinitializer)
  %203 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %199, <4 x i32> %broadcast.splat)
  %204 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %200, <4 x i32> %broadcast.splat)
  %205 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %201, <4 x i32> %broadcast.splat)
  %206 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %202, <4 x i32> %broadcast.splat)
  %207 = trunc <4 x i32> %203 to <4 x i16>
  %208 = trunc <4 x i32> %204 to <4 x i16>
  %209 = trunc <4 x i32> %205 to <4 x i16>
  %210 = trunc <4 x i32> %206 to <4 x i16>
  %211 = getelementptr i8, ptr %next.gep161, i64 8
  %212 = getelementptr i8, ptr %next.gep161, i64 16
  %213 = getelementptr i8, ptr %next.gep161, i64 24
  store <4 x i16> %207, ptr %next.gep161, align 2, !alias.scope !170, !noalias !167
  store <4 x i16> %208, ptr %211, align 2, !alias.scope !170, !noalias !167
  store <4 x i16> %209, ptr %212, align 2, !alias.scope !170, !noalias !167
  store <4 x i16> %210, ptr %213, align 2, !alias.scope !170, !noalias !167
  %214 = and <4 x i32> %203, <i32 65535, i32 65535, i32 65535, i32 65535>
  %215 = and <4 x i32> %204, <i32 65535, i32 65535, i32 65535, i32 65535>
  %216 = and <4 x i32> %205, <i32 65535, i32 65535, i32 65535, i32 65535>
  %217 = and <4 x i32> %206, <i32 65535, i32 65535, i32 65535, i32 65535>
  %wide.load214 = load <4 x i32>, ptr %next.gep181, align 4, !alias.scope !167
  %wide.load215 = load <4 x i32>, ptr %165, align 4, !alias.scope !167
  %wide.load216 = load <4 x i32>, ptr %166, align 4, !alias.scope !167
  %wide.load217 = load <4 x i32>, ptr %167, align 4, !alias.scope !167
  %218 = add nsw <4 x i32> %wide.load214, <i32 16, i32 16, i32 16, i32 16>
  %219 = add nsw <4 x i32> %wide.load215, <i32 16, i32 16, i32 16, i32 16>
  %220 = add nsw <4 x i32> %wide.load216, <i32 16, i32 16, i32 16, i32 16>
  %221 = add nsw <4 x i32> %wide.load217, <i32 16, i32 16, i32 16, i32 16>
  %222 = ashr <4 x i32> %218, <i32 5, i32 5, i32 5, i32 5>
  %223 = ashr <4 x i32> %219, <i32 5, i32 5, i32 5, i32 5>
  %224 = ashr <4 x i32> %220, <i32 5, i32 5, i32 5, i32 5>
  %225 = ashr <4 x i32> %221, <i32 5, i32 5, i32 5, i32 5>
  %226 = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %222, <4 x i32> zeroinitializer)
  %227 = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %223, <4 x i32> zeroinitializer)
  %228 = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %224, <4 x i32> zeroinitializer)
  %229 = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %225, <4 x i32> zeroinitializer)
  %230 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %226, <4 x i32> %broadcast.splat)
  %231 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %227, <4 x i32> %broadcast.splat)
  %232 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %228, <4 x i32> %broadcast.splat)
  %233 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %229, <4 x i32> %broadcast.splat)
  %234 = add nsw <4 x i32> %230, <i32 1, i32 1, i32 1, i32 1>
  %235 = add nsw <4 x i32> %231, <i32 1, i32 1, i32 1, i32 1>
  %236 = add nsw <4 x i32> %232, <i32 1, i32 1, i32 1, i32 1>
  %237 = add nsw <4 x i32> %233, <i32 1, i32 1, i32 1, i32 1>
  %238 = add nsw <4 x i32> %234, %214
  %239 = add nsw <4 x i32> %235, %215
  %240 = add nsw <4 x i32> %236, %216
  %241 = add nsw <4 x i32> %237, %217
  %242 = lshr <4 x i32> %238, <i32 1, i32 1, i32 1, i32 1>
  %243 = lshr <4 x i32> %239, <i32 1, i32 1, i32 1, i32 1>
  %244 = lshr <4 x i32> %240, <i32 1, i32 1, i32 1, i32 1>
  %245 = lshr <4 x i32> %241, <i32 1, i32 1, i32 1, i32 1>
  %246 = trunc <4 x i32> %242 to <4 x i16>
  %247 = trunc <4 x i32> %243 to <4 x i16>
  %248 = trunc <4 x i32> %244 to <4 x i16>
  %249 = trunc <4 x i32> %245 to <4 x i16>
  store <4 x i16> %246, ptr %next.gep161, align 2, !alias.scope !170, !noalias !167
  store <4 x i16> %247, ptr %211, align 2, !alias.scope !170, !noalias !167
  store <4 x i16> %248, ptr %212, align 2, !alias.scope !170, !noalias !167
  store <4 x i16> %249, ptr %213, align 2, !alias.scope !170, !noalias !167
  %index.next218 = add nuw i64 %index159, 16
  %250 = icmp eq i64 %index.next218, %n.vec143
  br i1 %250, label %middle.block138, label %vector.body158, !llvm.loop !172

middle.block138:                                  ; preds = %vector.body158
  br i1 %cmp.n219, label %for.cond54.for.inc86_crit_edge.us, label %for.body57.us.preheader

for.body57.us.preheader:                          ; preds = %middle.block138, %vector.memcheck132, %for.body41.us
  %i.122.us.ph = phi i32 [ 0, %vector.memcheck132 ], [ 0, %for.body41.us ], [ %ind.end144, %middle.block138 ]
  %orig_line.021.us.ph = phi ptr [ %141, %vector.memcheck132 ], [ %141, %for.body41.us ], [ %ind.end146, %middle.block138 ]
  %x5.020.us.ph = phi ptr [ %add.ptr53.us, %vector.memcheck132 ], [ %add.ptr53.us, %for.body41.us ], [ %ind.end148, %middle.block138 ]
  %x4.019.us.ph = phi ptr [ %add.ptr52.us, %vector.memcheck132 ], [ %add.ptr52.us, %for.body41.us ], [ %ind.end150, %middle.block138 ]
  %x3.018.us.ph = phi ptr [ %add.ptr51.us, %vector.memcheck132 ], [ %add.ptr51.us, %for.body41.us ], [ %ind.end152, %middle.block138 ]
  %x2.017.us.ph = phi ptr [ %arrayidx44.us, %vector.memcheck132 ], [ %arrayidx44.us, %for.body41.us ], [ %ind.end154, %middle.block138 ]
  %.pn16.us.ph = phi ptr [ %140, %vector.memcheck132 ], [ %140, %for.body41.us ], [ %ind.end156, %middle.block138 ]
  br label %for.body57.us

for.body57.us:                                    ; preds = %for.body57.us.preheader, %for.body57.us
  %i.122.us = phi i32 [ %inc84.us, %for.body57.us ], [ %i.122.us.ph, %for.body57.us.preheader ]
  %orig_line.021.us = phi ptr [ %incdec.ptr82.us, %for.body57.us ], [ %orig_line.021.us.ph, %for.body57.us.preheader ]
  %x5.020.us = phi ptr [ %incdec.ptr59.us, %for.body57.us ], [ %x5.020.us.ph, %for.body57.us.preheader ]
  %x4.019.us = phi ptr [ %incdec.ptr62.us, %for.body57.us ], [ %x4.019.us.ph, %for.body57.us.preheader ]
  %x3.018.us = phi ptr [ %incdec.ptr67.us, %for.body57.us ], [ %x3.018.us.ph, %for.body57.us.preheader ]
  %x2.017.us = phi ptr [ %incdec.ptr66.us, %for.body57.us ], [ %x2.017.us.ph, %for.body57.us.preheader ]
  %.pn16.us = phi ptr [ %x1.0.us, %for.body57.us ], [ %.pn16.us.ph, %for.body57.us.preheader ]
  %x1.0.us = getelementptr i8, ptr %.pn16.us, i64 4
  %251 = load i32, ptr %.pn16.us, align 4
  %incdec.ptr59.us = getelementptr inbounds i8, ptr %x5.020.us, i64 4
  %252 = load i32, ptr %x5.020.us, align 4
  %253 = load i32, ptr %x1.0.us, align 4
  %incdec.ptr62.us = getelementptr inbounds i8, ptr %x4.019.us, i64 4
  %254 = load i32, ptr %x4.019.us, align 4
  %add63.us = add nsw i32 %254, %253
  %mul64.neg.us = mul i32 %add63.us, -5
  %incdec.ptr66.us = getelementptr i8, ptr %x2.017.us, i64 4
  %255 = load i32, ptr %x2.017.us, align 4
  %incdec.ptr67.us = getelementptr inbounds i8, ptr %x3.018.us, i64 4
  %256 = load i32, ptr %x3.018.us, align 4
  %add68.us = add nsw i32 %256, %255
  %mul69.us = mul nsw i32 %add68.us, 20
  %add60.us = add i32 %251, 512
  %sub65.us = add i32 %add60.us, %252
  %add70.us = add i32 %sub65.us, %mul64.neg.us
  %add71.us = add i32 %add70.us, %mul69.us
  %shr.us = ashr i32 %add71.us, 10
  %cond.i.i.us = tail call noundef i32 @llvm.smax.i32(i32 %shr.us, i32 0)
  %cond.i4.i.us = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i.us, i32 %max_imgpel_value)
  %conv72.us = trunc i32 %cond.i4.i.us to i16
  store i16 %conv72.us, ptr %orig_line.021.us, align 2
  %conv73.us = and i32 %cond.i4.i.us, 65535
  %257 = load i32, ptr %x2.017.us, align 4
  %add75.us = add nsw i32 %257, 16
  %shr76.us = ashr i32 %add75.us, 5
  %cond.i.i124.us = tail call noundef i32 @llvm.smax.i32(i32 %shr76.us, i32 0)
  %cond.i4.i125.us = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i124.us, i32 %max_imgpel_value)
  %add78.us = add nsw i32 %cond.i4.i125.us, 1
  %add79.us = add nsw i32 %add78.us, %conv73.us
  %shr80.us = lshr i32 %add79.us, 1
  %conv81.us = trunc i32 %shr80.us to i16
  store i16 %conv81.us, ptr %orig_line.021.us, align 2
  %incdec.ptr82.us = getelementptr inbounds i8, ptr %orig_line.021.us, i64 2
  %inc84.us = add nuw nsw i32 %i.122.us, 1
  %exitcond29.not = icmp eq i32 %inc84.us, %hor_block_size
  br i1 %exitcond29.not, label %for.cond54.for.inc86_crit_edge.us, label %for.body57.us, !llvm.loop !173

for.cond54.for.inc86_crit_edge.us:                ; preds = %for.body57.us, %middle.block138
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1
  %exitcond34.not = icmp eq i64 %indvars.iv.next31, %wide.trip.count33
  br i1 %exitcond34.not, label %for.end88, label %for.body41.us

for.end88:                                        ; preds = %for.cond54.for.inc86_crit_edge.us, %for.body.lr.ph, %entry, %for.cond38.preheader
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @get_luma_32(ptr nocapture noundef readonly %block, ptr nocapture readonly %cur_imgY.-16.val, ptr nocapture noundef readonly %tmp_res, i32 noundef %ver_block_size, i32 noundef %hor_block_size, i32 noundef %x_pos, i32 noundef %shift_x, i32 noundef %max_imgpel_value) unnamed_addr #5 {
entry:
  %cmp10 = icmp sgt i32 %ver_block_size, 0
  br i1 %cmp10, label %for.body.lr.ph, label %for.end88

for.body.lr.ph:                                   ; preds = %entry
  %idx.ext = sext i32 %shift_x to i64
  %cmp131 = icmp sgt i32 %hor_block_size, -5
  %narrow = sub nsw i32 -5, %hor_block_size
  %idx.neg = sext i32 %narrow to i64
  br i1 %cmp131, label %for.body.us.preheader, label %for.end88

for.body.us.preheader:                            ; preds = %for.body.lr.ph
  %0 = sext i32 %x_pos to i64
  %1 = getelementptr i16, ptr %cur_imgY.-16.val, i64 %0
  %arrayidx1 = getelementptr i8, ptr %1, i64 -4
  %2 = add i32 %hor_block_size, 4
  %smax = tail call i32 @llvm.smax.i32(i32 %2, i32 0)
  %wide.trip.count = zext nneg i32 %ver_block_size to i64
  %3 = zext nneg i32 %smax to i64
  %4 = shl nuw nsw i64 %3, 2
  %5 = mul nsw i64 %idx.ext, 6
  %6 = shl nuw nsw i64 %3, 1
  %7 = add nsw i64 %5, %6
  %8 = add nsw i64 %7, 2
  %9 = shl nsw i64 %idx.ext, 2
  %10 = add nsw i64 %9, %6
  %11 = add nsw i64 %10, 2
  %12 = shl nsw i64 %idx.ext, 3
  %13 = add nsw i64 %12, %6
  %14 = add nsw i64 %13, 2
  %15 = add nsw i64 %idx.ext, %3
  %16 = shl nsw i64 %15, 1
  %17 = add nsw i64 %16, 2
  %18 = mul nsw i64 %idx.ext, 10
  %19 = add nsw i64 %18, %6
  %20 = add nsw i64 %19, 2
  %21 = add nuw nsw i64 %6, 2
  %narrow220 = add nuw i32 %smax, 1
  %22 = zext i32 %narrow220 to i64
  %min.iters.check = icmp slt i32 %2, 15
  %n.vec = and i64 %22, 4294967280
  %ind.end = trunc nuw i64 %n.vec to i32
  %23 = shl nuw nsw i64 %n.vec, 1
  %24 = shl nuw nsw i64 %n.vec, 1
  %25 = shl nuw nsw i64 %n.vec, 1
  %26 = shl nuw nsw i64 %n.vec, 1
  %27 = shl nuw nsw i64 %n.vec, 1
  %28 = shl nuw nsw i64 %n.vec, 1
  %29 = shl nuw nsw i64 %n.vec, 2
  %cmp.n = icmp eq i64 %n.vec, %22
  br label %for.body.us

for.body.us:                                      ; preds = %for.body.us.preheader, %for.cond12.for.end_crit_edge.us
  %indvars.iv = phi i64 [ 0, %for.body.us.preheader ], [ %indvars.iv.next, %for.cond12.for.end_crit_edge.us ]
  %p0.012.us = phi ptr [ %arrayidx1, %for.body.us.preheader ], [ %add.ptr34.us, %for.cond12.for.end_crit_edge.us ]
  %add.ptr.us = getelementptr i16, ptr %p0.012.us, i64 %idx.ext
  %add.ptr3.us = getelementptr i16, ptr %add.ptr.us, i64 %idx.ext
  %add.ptr5.us = getelementptr i16, ptr %add.ptr3.us, i64 %idx.ext
  %add.ptr7.us = getelementptr i16, ptr %add.ptr5.us, i64 %idx.ext
  %add.ptr9.us = getelementptr i16, ptr %add.ptr7.us, i64 %idx.ext
  %arrayidx11.us = getelementptr inbounds ptr, ptr %tmp_res, i64 %indvars.iv
  %30 = load ptr, ptr %arrayidx11.us, align 8
  br i1 %min.iters.check, label %for.body14.us.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %for.body.us
  %31 = getelementptr i8, ptr %30, i64 %4
  %scevgep = getelementptr i8, ptr %31, i64 4
  %scevgep37 = getelementptr i8, ptr %p0.012.us, i64 %8
  %scevgep38 = getelementptr i8, ptr %p0.012.us, i64 %11
  %scevgep39 = getelementptr i8, ptr %p0.012.us, i64 %14
  %scevgep40 = getelementptr i8, ptr %p0.012.us, i64 %17
  %scevgep41 = getelementptr i8, ptr %p0.012.us, i64 %20
  %scevgep42 = getelementptr i8, ptr %p0.012.us, i64 %21
  %32 = insertelement <4 x ptr> poison, ptr %30, i64 0
  %33 = shufflevector <4 x ptr> %32, <4 x ptr> poison, <4 x i32> zeroinitializer
  %34 = insertelement <4 x ptr> poison, ptr %scevgep37, i64 0
  %35 = insertelement <4 x ptr> %34, ptr %scevgep38, i64 1
  %36 = insertelement <4 x ptr> %35, ptr %scevgep39, i64 2
  %37 = insertelement <4 x ptr> %36, ptr %scevgep40, i64 3
  %38 = icmp ult <4 x ptr> %33, %37
  %39 = insertelement <4 x ptr> poison, ptr %add.ptr5.us, i64 0
  %40 = insertelement <4 x ptr> %39, ptr %add.ptr3.us, i64 1
  %41 = insertelement <4 x ptr> %40, ptr %add.ptr7.us, i64 2
  %42 = insertelement <4 x ptr> %41, ptr %add.ptr.us, i64 3
  %43 = insertelement <4 x ptr> poison, ptr %scevgep, i64 0
  %44 = shufflevector <4 x ptr> %43, <4 x ptr> poison, <4 x i32> zeroinitializer
  %45 = icmp ult <4 x ptr> %42, %44
  %46 = and <4 x i1> %38, %45
  %bound054 = icmp ult ptr %30, %scevgep41
  %bound155 = icmp ult ptr %add.ptr9.us, %scevgep
  %found.conflict56 = and i1 %bound054, %bound155
  %bound058 = icmp ult ptr %30, %scevgep42
  %bound159 = icmp ult ptr %p0.012.us, %scevgep
  %found.conflict60 = and i1 %bound058, %bound159
  %47 = bitcast <4 x i1> %46 to i4
  %48 = icmp ne i4 %47, 0
  %op.rdx = or i1 %48, %found.conflict56
  %op.rdx221 = or i1 %op.rdx, %found.conflict60
  br i1 %op.rdx221, label %for.body14.us.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %ind.end62 = getelementptr i8, ptr %add.ptr9.us, i64 %23
  %ind.end64 = getelementptr i8, ptr %add.ptr7.us, i64 %24
  %ind.end66 = getelementptr i8, ptr %add.ptr5.us, i64 %25
  %ind.end68 = getelementptr i8, ptr %add.ptr3.us, i64 %26
  %ind.end70 = getelementptr i8, ptr %add.ptr.us, i64 %27
  %ind.end72 = getelementptr i8, ptr %p0.012.us, i64 %28
  %ind.end74 = getelementptr i8, ptr %30, i64 %29
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %offset.idx = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %add.ptr9.us, i64 %offset.idx
  %offset.idx79 = shl i64 %index, 1
  %next.gep80 = getelementptr i8, ptr %add.ptr7.us, i64 %offset.idx79
  %offset.idx84 = shl i64 %index, 1
  %next.gep85 = getelementptr i8, ptr %add.ptr5.us, i64 %offset.idx84
  %offset.idx89 = shl i64 %index, 1
  %next.gep90 = getelementptr i8, ptr %add.ptr3.us, i64 %offset.idx89
  %offset.idx94 = shl i64 %index, 1
  %next.gep95 = getelementptr i8, ptr %add.ptr.us, i64 %offset.idx94
  %offset.idx99 = shl i64 %index, 1
  %next.gep100 = getelementptr i8, ptr %p0.012.us, i64 %offset.idx99
  %offset.idx104 = shl i64 %index, 2
  %next.gep105 = getelementptr i8, ptr %30, i64 %offset.idx104
  %49 = getelementptr i8, ptr %next.gep100, i64 8
  %50 = getelementptr i8, ptr %next.gep100, i64 16
  %51 = getelementptr i8, ptr %next.gep100, i64 24
  %wide.load = load <4 x i16>, ptr %next.gep100, align 2, !alias.scope !174
  %wide.load109 = load <4 x i16>, ptr %49, align 2, !alias.scope !174
  %wide.load110 = load <4 x i16>, ptr %50, align 2, !alias.scope !174
  %wide.load111 = load <4 x i16>, ptr %51, align 2, !alias.scope !174
  %52 = zext <4 x i16> %wide.load to <4 x i32>
  %53 = zext <4 x i16> %wide.load109 to <4 x i32>
  %54 = zext <4 x i16> %wide.load110 to <4 x i32>
  %55 = zext <4 x i16> %wide.load111 to <4 x i32>
  %56 = getelementptr i8, ptr %next.gep, i64 8
  %57 = getelementptr i8, ptr %next.gep, i64 16
  %58 = getelementptr i8, ptr %next.gep, i64 24
  %wide.load112 = load <4 x i16>, ptr %next.gep, align 2, !alias.scope !177
  %wide.load113 = load <4 x i16>, ptr %56, align 2, !alias.scope !177
  %wide.load114 = load <4 x i16>, ptr %57, align 2, !alias.scope !177
  %wide.load115 = load <4 x i16>, ptr %58, align 2, !alias.scope !177
  %59 = zext <4 x i16> %wide.load112 to <4 x i32>
  %60 = zext <4 x i16> %wide.load113 to <4 x i32>
  %61 = zext <4 x i16> %wide.load114 to <4 x i32>
  %62 = zext <4 x i16> %wide.load115 to <4 x i32>
  %63 = add nuw nsw <4 x i32> %59, %52
  %64 = add nuw nsw <4 x i32> %60, %53
  %65 = add nuw nsw <4 x i32> %61, %54
  %66 = add nuw nsw <4 x i32> %62, %55
  %67 = getelementptr i8, ptr %next.gep95, i64 8
  %68 = getelementptr i8, ptr %next.gep95, i64 16
  %69 = getelementptr i8, ptr %next.gep95, i64 24
  %wide.load116 = load <4 x i16>, ptr %next.gep95, align 2, !alias.scope !179
  %wide.load117 = load <4 x i16>, ptr %67, align 2, !alias.scope !179
  %wide.load118 = load <4 x i16>, ptr %68, align 2, !alias.scope !179
  %wide.load119 = load <4 x i16>, ptr %69, align 2, !alias.scope !179
  %70 = zext <4 x i16> %wide.load116 to <4 x i32>
  %71 = zext <4 x i16> %wide.load117 to <4 x i32>
  %72 = zext <4 x i16> %wide.load118 to <4 x i32>
  %73 = zext <4 x i16> %wide.load119 to <4 x i32>
  %74 = getelementptr i8, ptr %next.gep80, i64 8
  %75 = getelementptr i8, ptr %next.gep80, i64 16
  %76 = getelementptr i8, ptr %next.gep80, i64 24
  %wide.load120 = load <4 x i16>, ptr %next.gep80, align 2, !alias.scope !181
  %wide.load121 = load <4 x i16>, ptr %74, align 2, !alias.scope !181
  %wide.load122 = load <4 x i16>, ptr %75, align 2, !alias.scope !181
  %wide.load123 = load <4 x i16>, ptr %76, align 2, !alias.scope !181
  %77 = zext <4 x i16> %wide.load120 to <4 x i32>
  %78 = zext <4 x i16> %wide.load121 to <4 x i32>
  %79 = zext <4 x i16> %wide.load122 to <4 x i32>
  %80 = zext <4 x i16> %wide.load123 to <4 x i32>
  %81 = add nuw nsw <4 x i32> %77, %70
  %82 = add nuw nsw <4 x i32> %78, %71
  %83 = add nuw nsw <4 x i32> %79, %72
  %84 = add nuw nsw <4 x i32> %80, %73
  %85 = mul nsw <4 x i32> %81, <i32 -5, i32 -5, i32 -5, i32 -5>
  %86 = mul nsw <4 x i32> %82, <i32 -5, i32 -5, i32 -5, i32 -5>
  %87 = mul nsw <4 x i32> %83, <i32 -5, i32 -5, i32 -5, i32 -5>
  %88 = mul nsw <4 x i32> %84, <i32 -5, i32 -5, i32 -5, i32 -5>
  %89 = add nsw <4 x i32> %63, %85
  %90 = add nsw <4 x i32> %64, %86
  %91 = add nsw <4 x i32> %65, %87
  %92 = add nsw <4 x i32> %66, %88
  %93 = getelementptr i8, ptr %next.gep90, i64 8
  %94 = getelementptr i8, ptr %next.gep90, i64 16
  %95 = getelementptr i8, ptr %next.gep90, i64 24
  %wide.load124 = load <4 x i16>, ptr %next.gep90, align 2, !alias.scope !183
  %wide.load125 = load <4 x i16>, ptr %93, align 2, !alias.scope !183
  %wide.load126 = load <4 x i16>, ptr %94, align 2, !alias.scope !183
  %wide.load127 = load <4 x i16>, ptr %95, align 2, !alias.scope !183
  %96 = zext <4 x i16> %wide.load124 to <4 x i32>
  %97 = zext <4 x i16> %wide.load125 to <4 x i32>
  %98 = zext <4 x i16> %wide.load126 to <4 x i32>
  %99 = zext <4 x i16> %wide.load127 to <4 x i32>
  %100 = getelementptr i8, ptr %next.gep85, i64 8
  %101 = getelementptr i8, ptr %next.gep85, i64 16
  %102 = getelementptr i8, ptr %next.gep85, i64 24
  %wide.load128 = load <4 x i16>, ptr %next.gep85, align 2, !alias.scope !185
  %wide.load129 = load <4 x i16>, ptr %100, align 2, !alias.scope !185
  %wide.load130 = load <4 x i16>, ptr %101, align 2, !alias.scope !185
  %wide.load131 = load <4 x i16>, ptr %102, align 2, !alias.scope !185
  %103 = zext <4 x i16> %wide.load128 to <4 x i32>
  %104 = zext <4 x i16> %wide.load129 to <4 x i32>
  %105 = zext <4 x i16> %wide.load130 to <4 x i32>
  %106 = zext <4 x i16> %wide.load131 to <4 x i32>
  %107 = add nuw nsw <4 x i32> %103, %96
  %108 = add nuw nsw <4 x i32> %104, %97
  %109 = add nuw nsw <4 x i32> %105, %98
  %110 = add nuw nsw <4 x i32> %106, %99
  %111 = mul nuw nsw <4 x i32> %107, <i32 20, i32 20, i32 20, i32 20>
  %112 = mul nuw nsw <4 x i32> %108, <i32 20, i32 20, i32 20, i32 20>
  %113 = mul nuw nsw <4 x i32> %109, <i32 20, i32 20, i32 20, i32 20>
  %114 = mul nuw nsw <4 x i32> %110, <i32 20, i32 20, i32 20, i32 20>
  %115 = add nsw <4 x i32> %89, %111
  %116 = add nsw <4 x i32> %90, %112
  %117 = add nsw <4 x i32> %91, %113
  %118 = add nsw <4 x i32> %92, %114
  %119 = getelementptr i8, ptr %next.gep105, i64 16
  %120 = getelementptr i8, ptr %next.gep105, i64 32
  %121 = getelementptr i8, ptr %next.gep105, i64 48
  store <4 x i32> %115, ptr %next.gep105, align 4, !alias.scope !187, !noalias !189
  store <4 x i32> %116, ptr %119, align 4, !alias.scope !187, !noalias !189
  store <4 x i32> %117, ptr %120, align 4, !alias.scope !187, !noalias !189
  store <4 x i32> %118, ptr %121, align 4, !alias.scope !187, !noalias !189
  %index.next = add nuw i64 %index, 16
  %122 = icmp eq i64 %index.next, %n.vec
  br i1 %122, label %middle.block, label %vector.body, !llvm.loop !190

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %for.cond12.for.end_crit_edge.us, label %for.body14.us.preheader

for.body14.us.preheader:                          ; preds = %middle.block, %vector.memcheck, %for.body.us
  %i.09.us.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %for.body.us ], [ %ind.end, %middle.block ]
  %p5.08.us.ph = phi ptr [ %add.ptr9.us, %vector.memcheck ], [ %add.ptr9.us, %for.body.us ], [ %ind.end62, %middle.block ]
  %p4.07.us.ph = phi ptr [ %add.ptr7.us, %vector.memcheck ], [ %add.ptr7.us, %for.body.us ], [ %ind.end64, %middle.block ]
  %p3.06.us.ph = phi ptr [ %add.ptr5.us, %vector.memcheck ], [ %add.ptr5.us, %for.body.us ], [ %ind.end66, %middle.block ]
  %p2.05.us.ph = phi ptr [ %add.ptr3.us, %vector.memcheck ], [ %add.ptr3.us, %for.body.us ], [ %ind.end68, %middle.block ]
  %p1.04.us.ph = phi ptr [ %add.ptr.us, %vector.memcheck ], [ %add.ptr.us, %for.body.us ], [ %ind.end70, %middle.block ]
  %p0.13.us.ph = phi ptr [ %p0.012.us, %vector.memcheck ], [ %p0.012.us, %for.body.us ], [ %ind.end72, %middle.block ]
  %tmp_line.02.us.ph = phi ptr [ %30, %vector.memcheck ], [ %30, %for.body.us ], [ %ind.end74, %middle.block ]
  br label %for.body14.us

for.body14.us:                                    ; preds = %for.body14.us.preheader, %for.body14.us
  %i.09.us = phi i32 [ %inc.us, %for.body14.us ], [ %i.09.us.ph, %for.body14.us.preheader ]
  %p5.08.us = phi ptr [ %incdec.ptr15.us, %for.body14.us ], [ %p5.08.us.ph, %for.body14.us.preheader ]
  %p4.07.us = phi ptr [ %incdec.ptr20.us, %for.body14.us ], [ %p4.07.us.ph, %for.body14.us.preheader ]
  %p3.06.us = phi ptr [ %incdec.ptr26.us, %for.body14.us ], [ %p3.06.us.ph, %for.body14.us.preheader ]
  %p2.05.us = phi ptr [ %incdec.ptr24.us, %for.body14.us ], [ %p2.05.us.ph, %for.body14.us.preheader ]
  %p1.04.us = phi ptr [ %incdec.ptr18.us, %for.body14.us ], [ %p1.04.us.ph, %for.body14.us.preheader ]
  %p0.13.us = phi ptr [ %incdec.ptr.us, %for.body14.us ], [ %p0.13.us.ph, %for.body14.us.preheader ]
  %tmp_line.02.us = phi ptr [ %incdec.ptr31.us, %for.body14.us ], [ %tmp_line.02.us.ph, %for.body14.us.preheader ]
  %incdec.ptr.us = getelementptr inbounds i8, ptr %p0.13.us, i64 2
  %123 = load i16, ptr %p0.13.us, align 2
  %conv.us = zext i16 %123 to i32
  %incdec.ptr15.us = getelementptr inbounds i8, ptr %p5.08.us, i64 2
  %124 = load i16, ptr %p5.08.us, align 2
  %conv16.us = zext i16 %124 to i32
  %add17.us = add nuw nsw i32 %conv16.us, %conv.us
  %incdec.ptr18.us = getelementptr inbounds i8, ptr %p1.04.us, i64 2
  %125 = load i16, ptr %p1.04.us, align 2
  %conv19.us = zext i16 %125 to i32
  %incdec.ptr20.us = getelementptr inbounds i8, ptr %p4.07.us, i64 2
  %126 = load i16, ptr %p4.07.us, align 2
  %conv21.us = zext i16 %126 to i32
  %add22.us = add nuw nsw i32 %conv21.us, %conv19.us
  %mul.neg.us = mul nsw i32 %add22.us, -5
  %sub23.us = add nsw i32 %add17.us, %mul.neg.us
  %incdec.ptr24.us = getelementptr inbounds i8, ptr %p2.05.us, i64 2
  %127 = load i16, ptr %p2.05.us, align 2
  %conv25.us = zext i16 %127 to i32
  %incdec.ptr26.us = getelementptr inbounds i8, ptr %p3.06.us, i64 2
  %128 = load i16, ptr %p3.06.us, align 2
  %conv27.us = zext i16 %128 to i32
  %add28.us = add nuw nsw i32 %conv27.us, %conv25.us
  %mul29.us = mul nuw nsw i32 %add28.us, 20
  %add30.us = add nsw i32 %sub23.us, %mul29.us
  %incdec.ptr31.us = getelementptr inbounds i8, ptr %tmp_line.02.us, i64 4
  store i32 %add30.us, ptr %tmp_line.02.us, align 4
  %inc.us = add nuw i32 %i.09.us, 1
  %exitcond.not = icmp eq i32 %i.09.us, %smax
  br i1 %exitcond.not, label %for.cond12.for.end_crit_edge.us, label %for.body14.us, !llvm.loop !191

for.cond12.for.end_crit_edge.us:                  ; preds = %for.body14.us, %middle.block
  %incdec.ptr18.us.lcssa = phi ptr [ %ind.end70, %middle.block ], [ %incdec.ptr18.us, %for.body14.us ]
  %add.ptr34.us = getelementptr inbounds i16, ptr %incdec.ptr18.us.lcssa, i64 %idx.neg
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond28.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond28.not, label %for.cond38.preheader, label %for.body.us

for.cond38.preheader:                             ; preds = %for.cond12.for.end_crit_edge.us
  %cmp5513 = icmp sgt i32 %hor_block_size, 0
  %or.cond = and i1 %cmp10, %cmp5513
  br i1 %or.cond, label %for.body41.us.preheader, label %for.end88

for.body41.us.preheader:                          ; preds = %for.cond38.preheader
  %wide.trip.count33 = zext nneg i32 %ver_block_size to i64
  %129 = add nsw i32 %hor_block_size, -1
  %130 = zext i32 %129 to i64
  %131 = shl nuw nsw i64 %130, 1
  %132 = shl nuw nsw i64 %130, 2
  %133 = zext nneg i32 %hor_block_size to i64
  %min.iters.check140 = icmp ult i32 %hor_block_size, 16
  %n.vec143 = and i64 %133, 2147483632
  %ind.end144 = trunc nuw nsw i64 %n.vec143 to i32
  %134 = shl nuw nsw i64 %n.vec143, 1
  %135 = shl nuw nsw i64 %n.vec143, 2
  %136 = shl nuw nsw i64 %n.vec143, 2
  %137 = shl nuw nsw i64 %n.vec143, 2
  %138 = shl nuw nsw i64 %n.vec143, 2
  %139 = shl nuw nsw i64 %n.vec143, 2
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %max_imgpel_value, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %cmp.n219 = icmp eq i64 %n.vec143, %133
  br label %for.body41.us

for.body41.us:                                    ; preds = %for.body41.us.preheader, %for.cond54.for.inc86_crit_edge.us
  %indvars.iv30 = phi i64 [ 0, %for.body41.us.preheader ], [ %indvars.iv.next31, %for.cond54.for.inc86_crit_edge.us ]
  %arrayidx43.us = getelementptr inbounds ptr, ptr %tmp_res, i64 %indvars.iv30
  %140 = load ptr, ptr %arrayidx43.us, align 8
  %arrayidx44.us = getelementptr inbounds i8, ptr %140, i64 12
  %arrayidx46.us = getelementptr inbounds ptr, ptr %block, i64 %indvars.iv30
  %141 = load ptr, ptr %arrayidx46.us, align 8
  %add.ptr50.us = getelementptr inbounds i8, ptr %140, i64 8
  %add.ptr52.us = getelementptr inbounds i8, ptr %140, i64 16
  %add.ptr53.us = getelementptr inbounds i8, ptr %140, i64 20
  br i1 %min.iters.check140, label %for.body57.us.preheader, label %vector.memcheck132

vector.memcheck132:                               ; preds = %for.body41.us
  %142 = getelementptr i8, ptr %141, i64 %131
  %scevgep133 = getelementptr i8, ptr %142, i64 2
  %143 = getelementptr i8, ptr %140, i64 %132
  %scevgep134 = getelementptr i8, ptr %143, i64 24
  %bound0135 = icmp ult ptr %141, %scevgep134
  %bound1136 = icmp ult ptr %140, %scevgep133
  %found.conflict137 = and i1 %bound0135, %bound1136
  br i1 %found.conflict137, label %for.body57.us.preheader, label %vector.ph141

vector.ph141:                                     ; preds = %vector.memcheck132
  %ind.end146 = getelementptr i8, ptr %141, i64 %134
  %ind.end148 = getelementptr i8, ptr %add.ptr53.us, i64 %135
  %ind.end150 = getelementptr i8, ptr %add.ptr52.us, i64 %136
  %ind.end152 = getelementptr i8, ptr %arrayidx44.us, i64 %137
  %ind.end154 = getelementptr i8, ptr %add.ptr50.us, i64 %138
  %ind.end156 = getelementptr i8, ptr %140, i64 %139
  br label %vector.body158

vector.body158:                                   ; preds = %vector.body158, %vector.ph141
  %index159 = phi i64 [ 0, %vector.ph141 ], [ %index.next218, %vector.body158 ]
  %offset.idx160 = shl i64 %index159, 1
  %next.gep161 = getelementptr i8, ptr %141, i64 %offset.idx160
  %offset.idx165 = shl i64 %index159, 2
  %next.gep166 = getelementptr i8, ptr %add.ptr53.us, i64 %offset.idx165
  %offset.idx170 = shl i64 %index159, 2
  %next.gep171 = getelementptr i8, ptr %add.ptr52.us, i64 %offset.idx170
  %offset.idx175 = shl i64 %index159, 2
  %next.gep176 = getelementptr i8, ptr %arrayidx44.us, i64 %offset.idx175
  %offset.idx180 = shl i64 %index159, 2
  %next.gep181 = getelementptr i8, ptr %add.ptr50.us, i64 %offset.idx180
  %offset.idx185 = shl i64 %index159, 2
  %next.gep186 = getelementptr i8, ptr %140, i64 %offset.idx185
  %144 = getelementptr i8, ptr %next.gep186, i64 4
  %145 = getelementptr i8, ptr %next.gep186, i64 16
  %146 = getelementptr i8, ptr %next.gep186, i64 32
  %147 = getelementptr i8, ptr %next.gep186, i64 48
  %wide.load190 = load <4 x i32>, ptr %next.gep186, align 4, !alias.scope !192
  %wide.load191 = load <4 x i32>, ptr %145, align 4, !alias.scope !192
  %wide.load192 = load <4 x i32>, ptr %146, align 4, !alias.scope !192
  %wide.load193 = load <4 x i32>, ptr %147, align 4, !alias.scope !192
  %148 = getelementptr i8, ptr %next.gep166, i64 16
  %149 = getelementptr i8, ptr %next.gep166, i64 32
  %150 = getelementptr i8, ptr %next.gep166, i64 48
  %wide.load194 = load <4 x i32>, ptr %next.gep166, align 4, !alias.scope !192
  %wide.load195 = load <4 x i32>, ptr %148, align 4, !alias.scope !192
  %wide.load196 = load <4 x i32>, ptr %149, align 4, !alias.scope !192
  %wide.load197 = load <4 x i32>, ptr %150, align 4, !alias.scope !192
  %151 = getelementptr i8, ptr %next.gep186, i64 20
  %152 = getelementptr i8, ptr %next.gep186, i64 36
  %153 = getelementptr i8, ptr %next.gep186, i64 52
  %wide.load198 = load <4 x i32>, ptr %144, align 4, !alias.scope !192
  %wide.load199 = load <4 x i32>, ptr %151, align 4, !alias.scope !192
  %wide.load200 = load <4 x i32>, ptr %152, align 4, !alias.scope !192
  %wide.load201 = load <4 x i32>, ptr %153, align 4, !alias.scope !192
  %154 = getelementptr i8, ptr %next.gep171, i64 16
  %155 = getelementptr i8, ptr %next.gep171, i64 32
  %156 = getelementptr i8, ptr %next.gep171, i64 48
  %wide.load202 = load <4 x i32>, ptr %next.gep171, align 4, !alias.scope !192
  %wide.load203 = load <4 x i32>, ptr %154, align 4, !alias.scope !192
  %wide.load204 = load <4 x i32>, ptr %155, align 4, !alias.scope !192
  %wide.load205 = load <4 x i32>, ptr %156, align 4, !alias.scope !192
  %157 = add nsw <4 x i32> %wide.load202, %wide.load198
  %158 = add nsw <4 x i32> %wide.load203, %wide.load199
  %159 = add nsw <4 x i32> %wide.load204, %wide.load200
  %160 = add nsw <4 x i32> %wide.load205, %wide.load201
  %161 = mul <4 x i32> %157, <i32 -5, i32 -5, i32 -5, i32 -5>
  %162 = mul <4 x i32> %158, <i32 -5, i32 -5, i32 -5, i32 -5>
  %163 = mul <4 x i32> %159, <i32 -5, i32 -5, i32 -5, i32 -5>
  %164 = mul <4 x i32> %160, <i32 -5, i32 -5, i32 -5, i32 -5>
  %165 = getelementptr i8, ptr %next.gep181, i64 16
  %166 = getelementptr i8, ptr %next.gep181, i64 32
  %167 = getelementptr i8, ptr %next.gep181, i64 48
  %wide.load206 = load <4 x i32>, ptr %next.gep181, align 4, !alias.scope !192
  %wide.load207 = load <4 x i32>, ptr %165, align 4, !alias.scope !192
  %wide.load208 = load <4 x i32>, ptr %166, align 4, !alias.scope !192
  %wide.load209 = load <4 x i32>, ptr %167, align 4, !alias.scope !192
  %168 = getelementptr i8, ptr %next.gep176, i64 16
  %169 = getelementptr i8, ptr %next.gep176, i64 32
  %170 = getelementptr i8, ptr %next.gep176, i64 48
  %wide.load210 = load <4 x i32>, ptr %next.gep176, align 4, !alias.scope !192
  %wide.load211 = load <4 x i32>, ptr %168, align 4, !alias.scope !192
  %wide.load212 = load <4 x i32>, ptr %169, align 4, !alias.scope !192
  %wide.load213 = load <4 x i32>, ptr %170, align 4, !alias.scope !192
  %171 = add nsw <4 x i32> %wide.load210, %wide.load206
  %172 = add nsw <4 x i32> %wide.load211, %wide.load207
  %173 = add nsw <4 x i32> %wide.load212, %wide.load208
  %174 = add nsw <4 x i32> %wide.load213, %wide.load209
  %175 = mul nsw <4 x i32> %171, <i32 20, i32 20, i32 20, i32 20>
  %176 = mul nsw <4 x i32> %172, <i32 20, i32 20, i32 20, i32 20>
  %177 = mul nsw <4 x i32> %173, <i32 20, i32 20, i32 20, i32 20>
  %178 = mul nsw <4 x i32> %174, <i32 20, i32 20, i32 20, i32 20>
  %179 = add <4 x i32> %wide.load190, <i32 512, i32 512, i32 512, i32 512>
  %180 = add <4 x i32> %wide.load191, <i32 512, i32 512, i32 512, i32 512>
  %181 = add <4 x i32> %wide.load192, <i32 512, i32 512, i32 512, i32 512>
  %182 = add <4 x i32> %wide.load193, <i32 512, i32 512, i32 512, i32 512>
  %183 = add <4 x i32> %179, %wide.load194
  %184 = add <4 x i32> %180, %wide.load195
  %185 = add <4 x i32> %181, %wide.load196
  %186 = add <4 x i32> %182, %wide.load197
  %187 = add <4 x i32> %183, %161
  %188 = add <4 x i32> %184, %162
  %189 = add <4 x i32> %185, %163
  %190 = add <4 x i32> %186, %164
  %191 = add <4 x i32> %187, %175
  %192 = add <4 x i32> %188, %176
  %193 = add <4 x i32> %189, %177
  %194 = add <4 x i32> %190, %178
  %195 = ashr <4 x i32> %191, <i32 10, i32 10, i32 10, i32 10>
  %196 = ashr <4 x i32> %192, <i32 10, i32 10, i32 10, i32 10>
  %197 = ashr <4 x i32> %193, <i32 10, i32 10, i32 10, i32 10>
  %198 = ashr <4 x i32> %194, <i32 10, i32 10, i32 10, i32 10>
  %199 = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %195, <4 x i32> zeroinitializer)
  %200 = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %196, <4 x i32> zeroinitializer)
  %201 = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %197, <4 x i32> zeroinitializer)
  %202 = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %198, <4 x i32> zeroinitializer)
  %203 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %199, <4 x i32> %broadcast.splat)
  %204 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %200, <4 x i32> %broadcast.splat)
  %205 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %201, <4 x i32> %broadcast.splat)
  %206 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %202, <4 x i32> %broadcast.splat)
  %207 = trunc <4 x i32> %203 to <4 x i16>
  %208 = trunc <4 x i32> %204 to <4 x i16>
  %209 = trunc <4 x i32> %205 to <4 x i16>
  %210 = trunc <4 x i32> %206 to <4 x i16>
  %211 = getelementptr i8, ptr %next.gep161, i64 8
  %212 = getelementptr i8, ptr %next.gep161, i64 16
  %213 = getelementptr i8, ptr %next.gep161, i64 24
  store <4 x i16> %207, ptr %next.gep161, align 2, !alias.scope !195, !noalias !192
  store <4 x i16> %208, ptr %211, align 2, !alias.scope !195, !noalias !192
  store <4 x i16> %209, ptr %212, align 2, !alias.scope !195, !noalias !192
  store <4 x i16> %210, ptr %213, align 2, !alias.scope !195, !noalias !192
  %214 = and <4 x i32> %203, <i32 65535, i32 65535, i32 65535, i32 65535>
  %215 = and <4 x i32> %204, <i32 65535, i32 65535, i32 65535, i32 65535>
  %216 = and <4 x i32> %205, <i32 65535, i32 65535, i32 65535, i32 65535>
  %217 = and <4 x i32> %206, <i32 65535, i32 65535, i32 65535, i32 65535>
  %wide.load214 = load <4 x i32>, ptr %next.gep176, align 4, !alias.scope !192
  %wide.load215 = load <4 x i32>, ptr %168, align 4, !alias.scope !192
  %wide.load216 = load <4 x i32>, ptr %169, align 4, !alias.scope !192
  %wide.load217 = load <4 x i32>, ptr %170, align 4, !alias.scope !192
  %218 = add nsw <4 x i32> %wide.load214, <i32 16, i32 16, i32 16, i32 16>
  %219 = add nsw <4 x i32> %wide.load215, <i32 16, i32 16, i32 16, i32 16>
  %220 = add nsw <4 x i32> %wide.load216, <i32 16, i32 16, i32 16, i32 16>
  %221 = add nsw <4 x i32> %wide.load217, <i32 16, i32 16, i32 16, i32 16>
  %222 = ashr <4 x i32> %218, <i32 5, i32 5, i32 5, i32 5>
  %223 = ashr <4 x i32> %219, <i32 5, i32 5, i32 5, i32 5>
  %224 = ashr <4 x i32> %220, <i32 5, i32 5, i32 5, i32 5>
  %225 = ashr <4 x i32> %221, <i32 5, i32 5, i32 5, i32 5>
  %226 = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %222, <4 x i32> zeroinitializer)
  %227 = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %223, <4 x i32> zeroinitializer)
  %228 = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %224, <4 x i32> zeroinitializer)
  %229 = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %225, <4 x i32> zeroinitializer)
  %230 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %226, <4 x i32> %broadcast.splat)
  %231 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %227, <4 x i32> %broadcast.splat)
  %232 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %228, <4 x i32> %broadcast.splat)
  %233 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %229, <4 x i32> %broadcast.splat)
  %234 = add nsw <4 x i32> %230, <i32 1, i32 1, i32 1, i32 1>
  %235 = add nsw <4 x i32> %231, <i32 1, i32 1, i32 1, i32 1>
  %236 = add nsw <4 x i32> %232, <i32 1, i32 1, i32 1, i32 1>
  %237 = add nsw <4 x i32> %233, <i32 1, i32 1, i32 1, i32 1>
  %238 = add nsw <4 x i32> %234, %214
  %239 = add nsw <4 x i32> %235, %215
  %240 = add nsw <4 x i32> %236, %216
  %241 = add nsw <4 x i32> %237, %217
  %242 = lshr <4 x i32> %238, <i32 1, i32 1, i32 1, i32 1>
  %243 = lshr <4 x i32> %239, <i32 1, i32 1, i32 1, i32 1>
  %244 = lshr <4 x i32> %240, <i32 1, i32 1, i32 1, i32 1>
  %245 = lshr <4 x i32> %241, <i32 1, i32 1, i32 1, i32 1>
  %246 = trunc <4 x i32> %242 to <4 x i16>
  %247 = trunc <4 x i32> %243 to <4 x i16>
  %248 = trunc <4 x i32> %244 to <4 x i16>
  %249 = trunc <4 x i32> %245 to <4 x i16>
  store <4 x i16> %246, ptr %next.gep161, align 2, !alias.scope !195, !noalias !192
  store <4 x i16> %247, ptr %211, align 2, !alias.scope !195, !noalias !192
  store <4 x i16> %248, ptr %212, align 2, !alias.scope !195, !noalias !192
  store <4 x i16> %249, ptr %213, align 2, !alias.scope !195, !noalias !192
  %index.next218 = add nuw i64 %index159, 16
  %250 = icmp eq i64 %index.next218, %n.vec143
  br i1 %250, label %middle.block138, label %vector.body158, !llvm.loop !197

middle.block138:                                  ; preds = %vector.body158
  br i1 %cmp.n219, label %for.cond54.for.inc86_crit_edge.us, label %for.body57.us.preheader

for.body57.us.preheader:                          ; preds = %middle.block138, %vector.memcheck132, %for.body41.us
  %i.122.us.ph = phi i32 [ 0, %vector.memcheck132 ], [ 0, %for.body41.us ], [ %ind.end144, %middle.block138 ]
  %orig_line.021.us.ph = phi ptr [ %141, %vector.memcheck132 ], [ %141, %for.body41.us ], [ %ind.end146, %middle.block138 ]
  %x5.020.us.ph = phi ptr [ %add.ptr53.us, %vector.memcheck132 ], [ %add.ptr53.us, %for.body41.us ], [ %ind.end148, %middle.block138 ]
  %x4.019.us.ph = phi ptr [ %add.ptr52.us, %vector.memcheck132 ], [ %add.ptr52.us, %for.body41.us ], [ %ind.end150, %middle.block138 ]
  %x3.018.us.ph = phi ptr [ %arrayidx44.us, %vector.memcheck132 ], [ %arrayidx44.us, %for.body41.us ], [ %ind.end152, %middle.block138 ]
  %x2.017.us.ph = phi ptr [ %add.ptr50.us, %vector.memcheck132 ], [ %add.ptr50.us, %for.body41.us ], [ %ind.end154, %middle.block138 ]
  %.pn16.us.ph = phi ptr [ %140, %vector.memcheck132 ], [ %140, %for.body41.us ], [ %ind.end156, %middle.block138 ]
  br label %for.body57.us

for.body57.us:                                    ; preds = %for.body57.us.preheader, %for.body57.us
  %i.122.us = phi i32 [ %inc84.us, %for.body57.us ], [ %i.122.us.ph, %for.body57.us.preheader ]
  %orig_line.021.us = phi ptr [ %incdec.ptr82.us, %for.body57.us ], [ %orig_line.021.us.ph, %for.body57.us.preheader ]
  %x5.020.us = phi ptr [ %incdec.ptr59.us, %for.body57.us ], [ %x5.020.us.ph, %for.body57.us.preheader ]
  %x4.019.us = phi ptr [ %incdec.ptr62.us, %for.body57.us ], [ %x4.019.us.ph, %for.body57.us.preheader ]
  %x3.018.us = phi ptr [ %incdec.ptr67.us, %for.body57.us ], [ %x3.018.us.ph, %for.body57.us.preheader ]
  %x2.017.us = phi ptr [ %incdec.ptr66.us, %for.body57.us ], [ %x2.017.us.ph, %for.body57.us.preheader ]
  %.pn16.us = phi ptr [ %x1.0.us, %for.body57.us ], [ %.pn16.us.ph, %for.body57.us.preheader ]
  %x1.0.us = getelementptr i8, ptr %.pn16.us, i64 4
  %251 = load i32, ptr %.pn16.us, align 4
  %incdec.ptr59.us = getelementptr inbounds i8, ptr %x5.020.us, i64 4
  %252 = load i32, ptr %x5.020.us, align 4
  %253 = load i32, ptr %x1.0.us, align 4
  %incdec.ptr62.us = getelementptr inbounds i8, ptr %x4.019.us, i64 4
  %254 = load i32, ptr %x4.019.us, align 4
  %add63.us = add nsw i32 %254, %253
  %mul64.neg.us = mul i32 %add63.us, -5
  %incdec.ptr66.us = getelementptr inbounds i8, ptr %x2.017.us, i64 4
  %255 = load i32, ptr %x2.017.us, align 4
  %incdec.ptr67.us = getelementptr i8, ptr %x3.018.us, i64 4
  %256 = load i32, ptr %x3.018.us, align 4
  %add68.us = add nsw i32 %256, %255
  %mul69.us = mul nsw i32 %add68.us, 20
  %add60.us = add i32 %251, 512
  %sub65.us = add i32 %add60.us, %252
  %add70.us = add i32 %sub65.us, %mul64.neg.us
  %add71.us = add i32 %add70.us, %mul69.us
  %shr.us = ashr i32 %add71.us, 10
  %cond.i.i.us = tail call noundef i32 @llvm.smax.i32(i32 %shr.us, i32 0)
  %cond.i4.i.us = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i.us, i32 %max_imgpel_value)
  %conv72.us = trunc i32 %cond.i4.i.us to i16
  store i16 %conv72.us, ptr %orig_line.021.us, align 2
  %conv73.us = and i32 %cond.i4.i.us, 65535
  %257 = load i32, ptr %x3.018.us, align 4
  %add75.us = add nsw i32 %257, 16
  %shr76.us = ashr i32 %add75.us, 5
  %cond.i.i124.us = tail call noundef i32 @llvm.smax.i32(i32 %shr76.us, i32 0)
  %cond.i4.i125.us = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i124.us, i32 %max_imgpel_value)
  %add78.us = add nsw i32 %cond.i4.i125.us, 1
  %add79.us = add nsw i32 %add78.us, %conv73.us
  %shr80.us = lshr i32 %add79.us, 1
  %conv81.us = trunc i32 %shr80.us to i16
  store i16 %conv81.us, ptr %orig_line.021.us, align 2
  %incdec.ptr82.us = getelementptr inbounds i8, ptr %orig_line.021.us, i64 2
  %inc84.us = add nuw nsw i32 %i.122.us, 1
  %exitcond29.not = icmp eq i32 %inc84.us, %hor_block_size
  br i1 %exitcond29.not, label %for.cond54.for.inc86_crit_edge.us, label %for.body57.us, !llvm.loop !198

for.cond54.for.inc86_crit_edge.us:                ; preds = %for.body57.us, %middle.block138
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1
  %exitcond34.not = icmp eq i64 %indvars.iv.next31, %wide.trip.count33
  br i1 %exitcond34.not, label %for.end88, label %for.body41.us

for.end88:                                        ; preds = %for.cond54.for.inc86_crit_edge.us, %for.body.lr.ph, %entry, %for.cond38.preheader
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @get_luma_11(ptr nocapture noundef readonly %block, ptr nocapture noundef readonly %cur_imgY, i32 noundef %ver_block_size, i32 noundef %hor_block_size, i32 noundef %x_pos, i32 noundef %shift_x, i32 noundef %max_imgpel_value) unnamed_addr #5 {
entry:
  %cmp143 = icmp sgt i32 %ver_block_size, 0
  br i1 %cmp143, label %for.body.lr.ph, label %for.end91

for.body.lr.ph:                                   ; preds = %entry
  %0 = sext i32 %x_pos to i64
  %cmp10134 = icmp sgt i32 %hor_block_size, 0
  br i1 %cmp10134, label %for.body.us.preheader, label %for.end91

for.body.us.preheader:                            ; preds = %for.body.lr.ph
  %wide.trip.count = zext nneg i32 %ver_block_size to i64
  %1 = add nsw i32 %hor_block_size, -1
  %2 = zext i32 %1 to i64
  %3 = shl nuw nsw i64 %2, 1
  %4 = add nsw i64 %0, %2
  %5 = shl nsw i64 %4, 1
  %6 = zext nneg i32 %hor_block_size to i64
  %min.iters.check = icmp ult i32 %hor_block_size, 32
  %n.vec = and i64 %6, 2147483616
  %7 = shl nuw nsw i64 %n.vec, 1
  %8 = shl nuw nsw i64 %n.vec, 1
  %9 = shl nuw nsw i64 %n.vec, 1
  %10 = shl nuw nsw i64 %n.vec, 1
  %11 = shl nuw nsw i64 %n.vec, 1
  %12 = shl nuw nsw i64 %n.vec, 1
  %ind.end186 = trunc nuw nsw i64 %n.vec to i32
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %max_imgpel_value, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %6
  br label %for.body.us

for.body.us:                                      ; preds = %for.body.us.preheader, %for.cond9.for.inc31_crit_edge.us
  %indvars.iv = phi i64 [ 0, %for.body.us.preheader ], [ %indvars.iv.next, %for.cond9.for.inc31_crit_edge.us ]
  %arrayidx.us = getelementptr inbounds ptr, ptr %cur_imgY, i64 %indvars.iv
  %13 = load ptr, ptr %arrayidx.us, align 8
  %14 = getelementptr i16, ptr %13, i64 %0
  %arrayidx2.us = getelementptr i8, ptr %14, i64 -4
  %add.ptr.us = getelementptr i8, ptr %14, i64 -2
  %add.ptr5.us = getelementptr inbounds i8, ptr %14, i64 4
  %add.ptr6.us = getelementptr inbounds i8, ptr %14, i64 6
  %arrayidx8.us = getelementptr inbounds ptr, ptr %block, i64 %indvars.iv
  %15 = load ptr, ptr %arrayidx8.us, align 8
  br i1 %min.iters.check, label %for.body11.us.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %for.body.us
  %16 = getelementptr i8, ptr %15, i64 %3
  %scevgep = getelementptr i8, ptr %16, i64 2
  %17 = getelementptr i8, ptr %13, i64 %5
  %scevgep175 = getelementptr i8, ptr %17, i64 8
  %bound0 = icmp ult ptr %15, %scevgep175
  %bound1 = icmp ult ptr %arrayidx2.us, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %for.body11.us.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %ind.end = getelementptr i8, ptr %15, i64 %7
  %ind.end176 = getelementptr i8, ptr %add.ptr6.us, i64 %8
  %ind.end178 = getelementptr i8, ptr %add.ptr5.us, i64 %9
  %ind.end180 = getelementptr i8, ptr %14, i64 %10
  %ind.end182 = getelementptr i8, ptr %add.ptr.us, i64 %11
  %ind.end184 = getelementptr i8, ptr %arrayidx2.us, i64 %12
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %offset.idx = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %15, i64 %offset.idx
  %offset.idx191 = shl i64 %index, 1
  %next.gep192 = getelementptr i8, ptr %add.ptr6.us, i64 %offset.idx191
  %offset.idx196 = shl i64 %index, 1
  %next.gep197 = getelementptr i8, ptr %add.ptr5.us, i64 %offset.idx196
  %offset.idx201 = shl i64 %index, 1
  %next.gep202 = getelementptr i8, ptr %14, i64 %offset.idx201
  %offset.idx206 = shl i64 %index, 1
  %next.gep207 = getelementptr i8, ptr %add.ptr.us, i64 %offset.idx206
  %offset.idx211 = shl i64 %index, 1
  %next.gep212 = getelementptr i8, ptr %arrayidx2.us, i64 %offset.idx211
  %18 = getelementptr i8, ptr %next.gep202, i64 2
  %19 = getelementptr i8, ptr %next.gep212, i64 16
  %20 = getelementptr i8, ptr %next.gep212, i64 32
  %21 = getelementptr i8, ptr %next.gep212, i64 48
  %wide.load = load <8 x i16>, ptr %next.gep212, align 2, !alias.scope !199
  %wide.load216 = load <8 x i16>, ptr %19, align 2, !alias.scope !199
  %wide.load217 = load <8 x i16>, ptr %20, align 2, !alias.scope !199
  %wide.load218 = load <8 x i16>, ptr %21, align 2, !alias.scope !199
  %22 = zext <8 x i16> %wide.load to <8 x i32>
  %23 = zext <8 x i16> %wide.load216 to <8 x i32>
  %24 = zext <8 x i16> %wide.load217 to <8 x i32>
  %25 = zext <8 x i16> %wide.load218 to <8 x i32>
  %26 = getelementptr i8, ptr %next.gep192, i64 16
  %27 = getelementptr i8, ptr %next.gep192, i64 32
  %28 = getelementptr i8, ptr %next.gep192, i64 48
  %wide.load219 = load <8 x i16>, ptr %next.gep192, align 2, !alias.scope !199
  %wide.load220 = load <8 x i16>, ptr %26, align 2, !alias.scope !199
  %wide.load221 = load <8 x i16>, ptr %27, align 2, !alias.scope !199
  %wide.load222 = load <8 x i16>, ptr %28, align 2, !alias.scope !199
  %29 = zext <8 x i16> %wide.load219 to <8 x i32>
  %30 = zext <8 x i16> %wide.load220 to <8 x i32>
  %31 = zext <8 x i16> %wide.load221 to <8 x i32>
  %32 = zext <8 x i16> %wide.load222 to <8 x i32>
  %33 = getelementptr i8, ptr %next.gep207, i64 16
  %34 = getelementptr i8, ptr %next.gep207, i64 32
  %35 = getelementptr i8, ptr %next.gep207, i64 48
  %wide.load223 = load <8 x i16>, ptr %next.gep207, align 2, !alias.scope !199
  %wide.load224 = load <8 x i16>, ptr %33, align 2, !alias.scope !199
  %wide.load225 = load <8 x i16>, ptr %34, align 2, !alias.scope !199
  %wide.load226 = load <8 x i16>, ptr %35, align 2, !alias.scope !199
  %36 = zext <8 x i16> %wide.load223 to <8 x i32>
  %37 = zext <8 x i16> %wide.load224 to <8 x i32>
  %38 = zext <8 x i16> %wide.load225 to <8 x i32>
  %39 = zext <8 x i16> %wide.load226 to <8 x i32>
  %40 = getelementptr i8, ptr %next.gep197, i64 16
  %41 = getelementptr i8, ptr %next.gep197, i64 32
  %42 = getelementptr i8, ptr %next.gep197, i64 48
  %wide.load227 = load <8 x i16>, ptr %next.gep197, align 2, !alias.scope !199
  %wide.load228 = load <8 x i16>, ptr %40, align 2, !alias.scope !199
  %wide.load229 = load <8 x i16>, ptr %41, align 2, !alias.scope !199
  %wide.load230 = load <8 x i16>, ptr %42, align 2, !alias.scope !199
  %43 = zext <8 x i16> %wide.load227 to <8 x i32>
  %44 = zext <8 x i16> %wide.load228 to <8 x i32>
  %45 = zext <8 x i16> %wide.load229 to <8 x i32>
  %46 = zext <8 x i16> %wide.load230 to <8 x i32>
  %47 = add nuw nsw <8 x i32> %43, %36
  %48 = add nuw nsw <8 x i32> %44, %37
  %49 = add nuw nsw <8 x i32> %45, %38
  %50 = add nuw nsw <8 x i32> %46, %39
  %51 = mul nsw <8 x i32> %47, <i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5>
  %52 = mul nsw <8 x i32> %48, <i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5>
  %53 = mul nsw <8 x i32> %49, <i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5>
  %54 = mul nsw <8 x i32> %50, <i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5>
  %55 = getelementptr i8, ptr %next.gep202, i64 16
  %56 = getelementptr i8, ptr %next.gep202, i64 32
  %57 = getelementptr i8, ptr %next.gep202, i64 48
  %wide.load231 = load <8 x i16>, ptr %next.gep202, align 2, !alias.scope !199
  %wide.load232 = load <8 x i16>, ptr %55, align 2, !alias.scope !199
  %wide.load233 = load <8 x i16>, ptr %56, align 2, !alias.scope !199
  %wide.load234 = load <8 x i16>, ptr %57, align 2, !alias.scope !199
  %58 = zext <8 x i16> %wide.load231 to <8 x i32>
  %59 = zext <8 x i16> %wide.load232 to <8 x i32>
  %60 = zext <8 x i16> %wide.load233 to <8 x i32>
  %61 = zext <8 x i16> %wide.load234 to <8 x i32>
  %62 = getelementptr i8, ptr %next.gep202, i64 18
  %63 = getelementptr i8, ptr %next.gep202, i64 34
  %64 = getelementptr i8, ptr %next.gep202, i64 50
  %wide.load235 = load <8 x i16>, ptr %18, align 2, !alias.scope !199
  %wide.load236 = load <8 x i16>, ptr %62, align 2, !alias.scope !199
  %wide.load237 = load <8 x i16>, ptr %63, align 2, !alias.scope !199
  %wide.load238 = load <8 x i16>, ptr %64, align 2, !alias.scope !199
  %65 = zext <8 x i16> %wide.load235 to <8 x i32>
  %66 = zext <8 x i16> %wide.load236 to <8 x i32>
  %67 = zext <8 x i16> %wide.load237 to <8 x i32>
  %68 = zext <8 x i16> %wide.load238 to <8 x i32>
  %69 = add nuw nsw <8 x i32> %65, %58
  %70 = add nuw nsw <8 x i32> %66, %59
  %71 = add nuw nsw <8 x i32> %67, %60
  %72 = add nuw nsw <8 x i32> %68, %61
  %73 = mul nuw nsw <8 x i32> %69, <i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20>
  %74 = mul nuw nsw <8 x i32> %70, <i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20>
  %75 = mul nuw nsw <8 x i32> %71, <i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20>
  %76 = mul nuw nsw <8 x i32> %72, <i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20>
  %77 = add nuw nsw <8 x i32> %22, <i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16>
  %78 = add nuw nsw <8 x i32> %23, <i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16>
  %79 = add nuw nsw <8 x i32> %24, <i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16>
  %80 = add nuw nsw <8 x i32> %25, <i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16>
  %81 = add nuw nsw <8 x i32> %77, %29
  %82 = add nuw nsw <8 x i32> %78, %30
  %83 = add nuw nsw <8 x i32> %79, %31
  %84 = add nuw nsw <8 x i32> %80, %32
  %85 = add nsw <8 x i32> %81, %51
  %86 = add nsw <8 x i32> %82, %52
  %87 = add nsw <8 x i32> %83, %53
  %88 = add nsw <8 x i32> %84, %54
  %89 = add nsw <8 x i32> %85, %73
  %90 = add nsw <8 x i32> %86, %74
  %91 = add nsw <8 x i32> %87, %75
  %92 = add nsw <8 x i32> %88, %76
  %93 = ashr <8 x i32> %89, <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  %94 = ashr <8 x i32> %90, <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  %95 = ashr <8 x i32> %91, <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  %96 = ashr <8 x i32> %92, <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  %97 = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %93, <8 x i32> zeroinitializer)
  %98 = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %94, <8 x i32> zeroinitializer)
  %99 = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %95, <8 x i32> zeroinitializer)
  %100 = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %96, <8 x i32> zeroinitializer)
  %101 = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %97, <8 x i32> %broadcast.splat)
  %102 = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %98, <8 x i32> %broadcast.splat)
  %103 = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %99, <8 x i32> %broadcast.splat)
  %104 = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %100, <8 x i32> %broadcast.splat)
  %105 = trunc <8 x i32> %101 to <8 x i16>
  %106 = trunc <8 x i32> %102 to <8 x i16>
  %107 = trunc <8 x i32> %103 to <8 x i16>
  %108 = trunc <8 x i32> %104 to <8 x i16>
  %109 = getelementptr i8, ptr %next.gep, i64 16
  %110 = getelementptr i8, ptr %next.gep, i64 32
  %111 = getelementptr i8, ptr %next.gep, i64 48
  store <8 x i16> %105, ptr %next.gep, align 2, !alias.scope !202, !noalias !199
  store <8 x i16> %106, ptr %109, align 2, !alias.scope !202, !noalias !199
  store <8 x i16> %107, ptr %110, align 2, !alias.scope !202, !noalias !199
  store <8 x i16> %108, ptr %111, align 2, !alias.scope !202, !noalias !199
  %index.next = add nuw i64 %index, 32
  %112 = icmp eq i64 %index.next, %n.vec
  br i1 %112, label %middle.block, label %vector.body, !llvm.loop !204

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %for.cond9.for.inc31_crit_edge.us, label %for.body11.us.preheader

for.body11.us.preheader:                          ; preds = %middle.block, %vector.memcheck, %for.body.us
  %orig_line.0142.us.ph = phi ptr [ %15, %vector.memcheck ], [ %15, %for.body.us ], [ %ind.end, %middle.block ]
  %p5.0141.us.ph = phi ptr [ %add.ptr6.us, %vector.memcheck ], [ %add.ptr6.us, %for.body.us ], [ %ind.end176, %middle.block ]
  %p4.0140.us.ph = phi ptr [ %add.ptr5.us, %vector.memcheck ], [ %add.ptr5.us, %for.body.us ], [ %ind.end178, %middle.block ]
  %.pn139.us.ph = phi ptr [ %14, %vector.memcheck ], [ %14, %for.body.us ], [ %ind.end180, %middle.block ]
  %p1.0137.us.ph = phi ptr [ %add.ptr.us, %vector.memcheck ], [ %add.ptr.us, %for.body.us ], [ %ind.end182, %middle.block ]
  %p0.0136.us.ph = phi ptr [ %arrayidx2.us, %vector.memcheck ], [ %arrayidx2.us, %for.body.us ], [ %ind.end184, %middle.block ]
  %i.0135.us.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %for.body.us ], [ %ind.end186, %middle.block ]
  br label %for.body11.us

for.body11.us:                                    ; preds = %for.body11.us.preheader, %for.body11.us
  %orig_line.0142.us = phi ptr [ %incdec.ptr29.us, %for.body11.us ], [ %orig_line.0142.us.ph, %for.body11.us.preheader ]
  %p5.0141.us = phi ptr [ %incdec.ptr12.us, %for.body11.us ], [ %p5.0141.us.ph, %for.body11.us.preheader ]
  %p4.0140.us = phi ptr [ %incdec.ptr16.us, %for.body11.us ], [ %p4.0140.us.ph, %for.body11.us.preheader ]
  %.pn139.us = phi ptr [ %p3.0.us, %for.body11.us ], [ %.pn139.us.ph, %for.body11.us.preheader ]
  %p1.0137.us = phi ptr [ %incdec.ptr14.us, %for.body11.us ], [ %p1.0137.us.ph, %for.body11.us.preheader ]
  %p0.0136.us = phi ptr [ %incdec.ptr.us, %for.body11.us ], [ %p0.0136.us.ph, %for.body11.us.preheader ]
  %i.0135.us = phi i32 [ %inc30.us, %for.body11.us ], [ %i.0135.us.ph, %for.body11.us.preheader ]
  %p3.0.us = getelementptr i8, ptr %.pn139.us, i64 2
  %incdec.ptr.us = getelementptr inbounds i8, ptr %p0.0136.us, i64 2
  %113 = load i16, ptr %p0.0136.us, align 2
  %conv.us = zext i16 %113 to i32
  %incdec.ptr12.us = getelementptr inbounds i8, ptr %p5.0141.us, i64 2
  %114 = load i16, ptr %p5.0141.us, align 2
  %conv13.us = zext i16 %114 to i32
  %incdec.ptr14.us = getelementptr inbounds i8, ptr %p1.0137.us, i64 2
  %115 = load i16, ptr %p1.0137.us, align 2
  %conv15.us = zext i16 %115 to i32
  %incdec.ptr16.us = getelementptr inbounds i8, ptr %p4.0140.us, i64 2
  %116 = load i16, ptr %p4.0140.us, align 2
  %conv17.us = zext i16 %116 to i32
  %add18.us = add nuw nsw i32 %conv17.us, %conv15.us
  %mul.neg.us = mul nsw i32 %add18.us, -5
  %117 = load i16, ptr %.pn139.us, align 2
  %conv21.us = zext i16 %117 to i32
  %118 = load i16, ptr %p3.0.us, align 2
  %conv23.us = zext i16 %118 to i32
  %add24.us = add nuw nsw i32 %conv23.us, %conv21.us
  %mul25.us = mul nuw nsw i32 %add24.us, 20
  %add.us = add nuw nsw i32 %conv.us, 16
  %sub19.us = add nuw nsw i32 %add.us, %conv13.us
  %add26.us = add nsw i32 %sub19.us, %mul.neg.us
  %add27.us = add nsw i32 %add26.us, %mul25.us
  %shr.us = ashr i32 %add27.us, 5
  %cond.i.i.us = tail call noundef i32 @llvm.smax.i32(i32 %shr.us, i32 0)
  %cond.i4.i.us = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i.us, i32 %max_imgpel_value)
  %conv28.us = trunc i32 %cond.i4.i.us to i16
  %incdec.ptr29.us = getelementptr inbounds i8, ptr %orig_line.0142.us, i64 2
  store i16 %conv28.us, ptr %orig_line.0142.us, align 2
  %inc30.us = add nuw nsw i32 %i.0135.us, 1
  %exitcond.not = icmp eq i32 %inc30.us, %hor_block_size
  br i1 %exitcond.not, label %for.cond9.for.inc31_crit_edge.us, label %for.body11.us, !llvm.loop !205

for.cond9.for.inc31_crit_edge.us:                 ; preds = %for.body11.us, %middle.block
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond163.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond163.not, label %for.end33, label %for.body.us

for.end33:                                        ; preds = %for.cond9.for.inc31_crit_edge.us
  br i1 %cmp143, label %for.body40.lr.ph, label %for.end91

for.body40.lr.ph:                                 ; preds = %for.end33
  %idx.ext = sext i32 %shift_x to i64
  %idx.ext87 = zext nneg i32 %hor_block_size to i64
  %idx.neg = sub nsw i64 0, %idx.ext87
  %arrayidx34 = getelementptr inbounds i8, ptr %cur_imgY, i64 -16
  %119 = load ptr, ptr %arrayidx34, align 8
  %idxprom35 = sext i32 %x_pos to i64
  %arrayidx36 = getelementptr inbounds i16, ptr %119, i64 %idxprom35
  %wide.trip.count168 = zext nneg i32 %ver_block_size to i64
  %120 = add nsw i32 %hor_block_size, -1
  %121 = zext i32 %120 to i64
  %122 = shl nuw nsw i64 %121, 1
  %123 = add nuw nsw i64 %122, 2
  %124 = mul nsw i64 %idx.ext, 6
  %125 = add nsw i64 %124, %122
  %126 = add nsw i64 %125, 2
  %127 = shl nsw i64 %idx.ext, 2
  %128 = add nsw i64 %127, %122
  %129 = add nsw i64 %128, 2
  %130 = shl nsw i64 %idx.ext, 3
  %131 = add nsw i64 %130, %122
  %132 = add nsw i64 %131, 2
  %133 = add nsw i64 %idx.ext, %121
  %134 = shl nsw i64 %133, 1
  %135 = add nsw i64 %134, 2
  %136 = mul nsw i64 %idx.ext, 10
  %137 = add nsw i64 %136, %122
  %138 = add nsw i64 %137, 2
  %min.iters.check271 = icmp ult i32 %hor_block_size, 32
  %n.vec274 = and i64 %idx.ext87, 2147483616
  %139 = shl nuw nsw i64 %n.vec274, 1
  %140 = shl nuw nsw i64 %n.vec274, 1
  %141 = shl nuw nsw i64 %n.vec274, 1
  %142 = shl nuw nsw i64 %n.vec274, 1
  %143 = shl nuw nsw i64 %n.vec274, 1
  %144 = shl nuw nsw i64 %n.vec274, 1
  %145 = shl nuw nsw i64 %n.vec274, 1
  %ind.end289 = trunc nuw nsw i64 %n.vec274 to i32
  %broadcast.splatinsert356 = insertelement <8 x i32> poison, i32 %max_imgpel_value, i64 0
  %broadcast.splat357 = shufflevector <8 x i32> %broadcast.splatinsert356, <8 x i32> poison, <8 x i32> zeroinitializer
  %cmp.n359 = icmp eq i64 %n.vec274, %idx.ext87
  br label %for.body40.us

for.body40.us:                                    ; preds = %for.body40.lr.ph, %for.cond52.for.end86_crit_edge.us
  %indvars.iv165 = phi i64 [ 0, %for.body40.lr.ph ], [ %indvars.iv.next166, %for.cond52.for.end86_crit_edge.us ]
  %p0.1157.us = phi ptr [ %arrayidx36, %for.body40.lr.ph ], [ %add.ptr88.us, %for.cond52.for.end86_crit_edge.us ]
  %add.ptr41.us = getelementptr i16, ptr %p0.1157.us, i64 %idx.ext
  %add.ptr43.us = getelementptr i16, ptr %add.ptr41.us, i64 %idx.ext
  %add.ptr45.us = getelementptr i16, ptr %add.ptr43.us, i64 %idx.ext
  %add.ptr47.us = getelementptr i16, ptr %add.ptr45.us, i64 %idx.ext
  %add.ptr49.us = getelementptr i16, ptr %add.ptr47.us, i64 %idx.ext
  %arrayidx51.us = getelementptr inbounds ptr, ptr %block, i64 %indvars.iv165
  %146 = load ptr, ptr %arrayidx51.us, align 8
  br i1 %min.iters.check271, label %for.body55.us.preheader, label %vector.memcheck239

vector.memcheck239:                               ; preds = %for.body40.us
  %scevgep240 = getelementptr i8, ptr %146, i64 %123
  %scevgep241 = getelementptr i8, ptr %p0.1157.us, i64 %126
  %scevgep242 = getelementptr i8, ptr %p0.1157.us, i64 %129
  %scevgep243 = getelementptr i8, ptr %p0.1157.us, i64 %132
  %scevgep244 = getelementptr i8, ptr %p0.1157.us, i64 %135
  %scevgep245 = getelementptr i8, ptr %p0.1157.us, i64 %138
  %scevgep246 = getelementptr i8, ptr %p0.1157.us, i64 %123
  %147 = insertelement <4 x ptr> poison, ptr %146, i64 0
  %148 = shufflevector <4 x ptr> %147, <4 x ptr> poison, <4 x i32> zeroinitializer
  %149 = insertelement <4 x ptr> poison, ptr %scevgep241, i64 0
  %150 = insertelement <4 x ptr> %149, ptr %scevgep242, i64 1
  %151 = insertelement <4 x ptr> %150, ptr %scevgep243, i64 2
  %152 = insertelement <4 x ptr> %151, ptr %scevgep244, i64 3
  %153 = icmp ult <4 x ptr> %148, %152
  %154 = insertelement <4 x ptr> poison, ptr %add.ptr45.us, i64 0
  %155 = insertelement <4 x ptr> %154, ptr %add.ptr43.us, i64 1
  %156 = insertelement <4 x ptr> %155, ptr %add.ptr47.us, i64 2
  %157 = insertelement <4 x ptr> %156, ptr %add.ptr41.us, i64 3
  %158 = insertelement <4 x ptr> poison, ptr %scevgep240, i64 0
  %159 = shufflevector <4 x ptr> %158, <4 x ptr> poison, <4 x i32> zeroinitializer
  %160 = icmp ult <4 x ptr> %157, %159
  %161 = and <4 x i1> %153, %160
  %bound0261 = icmp ult ptr %146, %scevgep245
  %bound1262 = icmp ult ptr %add.ptr49.us, %scevgep240
  %found.conflict263 = and i1 %bound0261, %bound1262
  %bound0265 = icmp ult ptr %146, %scevgep246
  %bound1266 = icmp ult ptr %p0.1157.us, %scevgep240
  %found.conflict267 = and i1 %bound0265, %bound1266
  %162 = bitcast <4 x i1> %161 to i4
  %163 = icmp ne i4 %162, 0
  %op.rdx = or i1 %163, %found.conflict263
  %op.rdx360 = or i1 %op.rdx, %found.conflict267
  br i1 %op.rdx360, label %for.body55.us.preheader, label %vector.ph272

vector.ph272:                                     ; preds = %vector.memcheck239
  %ind.end275 = getelementptr i8, ptr %146, i64 %139
  %ind.end277 = getelementptr i8, ptr %add.ptr49.us, i64 %140
  %ind.end279 = getelementptr i8, ptr %add.ptr47.us, i64 %141
  %ind.end281 = getelementptr i8, ptr %add.ptr45.us, i64 %142
  %ind.end283 = getelementptr i8, ptr %add.ptr43.us, i64 %143
  %ind.end285 = getelementptr i8, ptr %add.ptr41.us, i64 %144
  %ind.end287 = getelementptr i8, ptr %p0.1157.us, i64 %145
  br label %vector.body291

vector.body291:                                   ; preds = %vector.body291, %vector.ph272
  %index292 = phi i64 [ 0, %vector.ph272 ], [ %index.next358, %vector.body291 ]
  %offset.idx293 = shl i64 %index292, 1
  %next.gep294 = getelementptr i8, ptr %146, i64 %offset.idx293
  %offset.idx298 = shl i64 %index292, 1
  %next.gep299 = getelementptr i8, ptr %add.ptr49.us, i64 %offset.idx298
  %offset.idx303 = shl i64 %index292, 1
  %next.gep304 = getelementptr i8, ptr %add.ptr47.us, i64 %offset.idx303
  %offset.idx308 = shl i64 %index292, 1
  %next.gep309 = getelementptr i8, ptr %add.ptr45.us, i64 %offset.idx308
  %offset.idx313 = shl i64 %index292, 1
  %next.gep314 = getelementptr i8, ptr %add.ptr43.us, i64 %offset.idx313
  %offset.idx318 = shl i64 %index292, 1
  %next.gep319 = getelementptr i8, ptr %add.ptr41.us, i64 %offset.idx318
  %offset.idx323 = shl i64 %index292, 1
  %next.gep324 = getelementptr i8, ptr %p0.1157.us, i64 %offset.idx323
  %164 = getelementptr i8, ptr %next.gep324, i64 16
  %165 = getelementptr i8, ptr %next.gep324, i64 32
  %166 = getelementptr i8, ptr %next.gep324, i64 48
  %wide.load328 = load <8 x i16>, ptr %next.gep324, align 2, !alias.scope !206
  %wide.load329 = load <8 x i16>, ptr %164, align 2, !alias.scope !206
  %wide.load330 = load <8 x i16>, ptr %165, align 2, !alias.scope !206
  %wide.load331 = load <8 x i16>, ptr %166, align 2, !alias.scope !206
  %167 = zext <8 x i16> %wide.load328 to <8 x i32>
  %168 = zext <8 x i16> %wide.load329 to <8 x i32>
  %169 = zext <8 x i16> %wide.load330 to <8 x i32>
  %170 = zext <8 x i16> %wide.load331 to <8 x i32>
  %171 = getelementptr i8, ptr %next.gep299, i64 16
  %172 = getelementptr i8, ptr %next.gep299, i64 32
  %173 = getelementptr i8, ptr %next.gep299, i64 48
  %wide.load332 = load <8 x i16>, ptr %next.gep299, align 2, !alias.scope !209
  %wide.load333 = load <8 x i16>, ptr %171, align 2, !alias.scope !209
  %wide.load334 = load <8 x i16>, ptr %172, align 2, !alias.scope !209
  %wide.load335 = load <8 x i16>, ptr %173, align 2, !alias.scope !209
  %174 = zext <8 x i16> %wide.load332 to <8 x i32>
  %175 = zext <8 x i16> %wide.load333 to <8 x i32>
  %176 = zext <8 x i16> %wide.load334 to <8 x i32>
  %177 = zext <8 x i16> %wide.load335 to <8 x i32>
  %178 = getelementptr i8, ptr %next.gep319, i64 16
  %179 = getelementptr i8, ptr %next.gep319, i64 32
  %180 = getelementptr i8, ptr %next.gep319, i64 48
  %wide.load336 = load <8 x i16>, ptr %next.gep319, align 2, !alias.scope !211
  %wide.load337 = load <8 x i16>, ptr %178, align 2, !alias.scope !211
  %wide.load338 = load <8 x i16>, ptr %179, align 2, !alias.scope !211
  %wide.load339 = load <8 x i16>, ptr %180, align 2, !alias.scope !211
  %181 = zext <8 x i16> %wide.load336 to <8 x i32>
  %182 = zext <8 x i16> %wide.load337 to <8 x i32>
  %183 = zext <8 x i16> %wide.load338 to <8 x i32>
  %184 = zext <8 x i16> %wide.load339 to <8 x i32>
  %185 = getelementptr i8, ptr %next.gep304, i64 16
  %186 = getelementptr i8, ptr %next.gep304, i64 32
  %187 = getelementptr i8, ptr %next.gep304, i64 48
  %wide.load340 = load <8 x i16>, ptr %next.gep304, align 2, !alias.scope !213
  %wide.load341 = load <8 x i16>, ptr %185, align 2, !alias.scope !213
  %wide.load342 = load <8 x i16>, ptr %186, align 2, !alias.scope !213
  %wide.load343 = load <8 x i16>, ptr %187, align 2, !alias.scope !213
  %188 = zext <8 x i16> %wide.load340 to <8 x i32>
  %189 = zext <8 x i16> %wide.load341 to <8 x i32>
  %190 = zext <8 x i16> %wide.load342 to <8 x i32>
  %191 = zext <8 x i16> %wide.load343 to <8 x i32>
  %192 = add nuw nsw <8 x i32> %188, %181
  %193 = add nuw nsw <8 x i32> %189, %182
  %194 = add nuw nsw <8 x i32> %190, %183
  %195 = add nuw nsw <8 x i32> %191, %184
  %196 = mul nsw <8 x i32> %192, <i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5>
  %197 = mul nsw <8 x i32> %193, <i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5>
  %198 = mul nsw <8 x i32> %194, <i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5>
  %199 = mul nsw <8 x i32> %195, <i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5>
  %200 = getelementptr i8, ptr %next.gep314, i64 16
  %201 = getelementptr i8, ptr %next.gep314, i64 32
  %202 = getelementptr i8, ptr %next.gep314, i64 48
  %wide.load344 = load <8 x i16>, ptr %next.gep314, align 2, !alias.scope !215
  %wide.load345 = load <8 x i16>, ptr %200, align 2, !alias.scope !215
  %wide.load346 = load <8 x i16>, ptr %201, align 2, !alias.scope !215
  %wide.load347 = load <8 x i16>, ptr %202, align 2, !alias.scope !215
  %203 = zext <8 x i16> %wide.load344 to <8 x i32>
  %204 = zext <8 x i16> %wide.load345 to <8 x i32>
  %205 = zext <8 x i16> %wide.load346 to <8 x i32>
  %206 = zext <8 x i16> %wide.load347 to <8 x i32>
  %207 = getelementptr i8, ptr %next.gep309, i64 16
  %208 = getelementptr i8, ptr %next.gep309, i64 32
  %209 = getelementptr i8, ptr %next.gep309, i64 48
  %wide.load348 = load <8 x i16>, ptr %next.gep309, align 2, !alias.scope !217
  %wide.load349 = load <8 x i16>, ptr %207, align 2, !alias.scope !217
  %wide.load350 = load <8 x i16>, ptr %208, align 2, !alias.scope !217
  %wide.load351 = load <8 x i16>, ptr %209, align 2, !alias.scope !217
  %210 = zext <8 x i16> %wide.load348 to <8 x i32>
  %211 = zext <8 x i16> %wide.load349 to <8 x i32>
  %212 = zext <8 x i16> %wide.load350 to <8 x i32>
  %213 = zext <8 x i16> %wide.load351 to <8 x i32>
  %214 = add nuw nsw <8 x i32> %210, %203
  %215 = add nuw nsw <8 x i32> %211, %204
  %216 = add nuw nsw <8 x i32> %212, %205
  %217 = add nuw nsw <8 x i32> %213, %206
  %218 = mul nuw nsw <8 x i32> %214, <i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20>
  %219 = mul nuw nsw <8 x i32> %215, <i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20>
  %220 = mul nuw nsw <8 x i32> %216, <i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20>
  %221 = mul nuw nsw <8 x i32> %217, <i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20>
  %222 = getelementptr i8, ptr %next.gep294, i64 16
  %223 = getelementptr i8, ptr %next.gep294, i64 32
  %224 = getelementptr i8, ptr %next.gep294, i64 48
  %wide.load352 = load <8 x i16>, ptr %next.gep294, align 2, !alias.scope !219, !noalias !221
  %wide.load353 = load <8 x i16>, ptr %222, align 2, !alias.scope !219, !noalias !221
  %wide.load354 = load <8 x i16>, ptr %223, align 2, !alias.scope !219, !noalias !221
  %wide.load355 = load <8 x i16>, ptr %224, align 2, !alias.scope !219, !noalias !221
  %225 = zext <8 x i16> %wide.load352 to <8 x i32>
  %226 = zext <8 x i16> %wide.load353 to <8 x i32>
  %227 = zext <8 x i16> %wide.load354 to <8 x i32>
  %228 = zext <8 x i16> %wide.load355 to <8 x i32>
  %229 = add nuw nsw <8 x i32> %167, <i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16>
  %230 = add nuw nsw <8 x i32> %168, <i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16>
  %231 = add nuw nsw <8 x i32> %169, <i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16>
  %232 = add nuw nsw <8 x i32> %170, <i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16>
  %233 = add nuw nsw <8 x i32> %229, %174
  %234 = add nuw nsw <8 x i32> %230, %175
  %235 = add nuw nsw <8 x i32> %231, %176
  %236 = add nuw nsw <8 x i32> %232, %177
  %237 = add nsw <8 x i32> %233, %196
  %238 = add nsw <8 x i32> %234, %197
  %239 = add nsw <8 x i32> %235, %198
  %240 = add nsw <8 x i32> %236, %199
  %241 = add nsw <8 x i32> %237, %218
  %242 = add nsw <8 x i32> %238, %219
  %243 = add nsw <8 x i32> %239, %220
  %244 = add nsw <8 x i32> %240, %221
  %245 = ashr <8 x i32> %241, <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  %246 = ashr <8 x i32> %242, <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  %247 = ashr <8 x i32> %243, <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  %248 = ashr <8 x i32> %244, <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  %249 = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %245, <8 x i32> zeroinitializer)
  %250 = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %246, <8 x i32> zeroinitializer)
  %251 = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %247, <8 x i32> zeroinitializer)
  %252 = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %248, <8 x i32> zeroinitializer)
  %253 = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %249, <8 x i32> %broadcast.splat357)
  %254 = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %250, <8 x i32> %broadcast.splat357)
  %255 = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %251, <8 x i32> %broadcast.splat357)
  %256 = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %252, <8 x i32> %broadcast.splat357)
  %257 = add nuw nsw <8 x i32> %225, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %258 = add nuw nsw <8 x i32> %226, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %259 = add nuw nsw <8 x i32> %227, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %260 = add nuw nsw <8 x i32> %228, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %261 = add nsw <8 x i32> %257, %253
  %262 = add nsw <8 x i32> %258, %254
  %263 = add nsw <8 x i32> %259, %255
  %264 = add nsw <8 x i32> %260, %256
  %265 = lshr <8 x i32> %261, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %266 = lshr <8 x i32> %262, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %267 = lshr <8 x i32> %263, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %268 = lshr <8 x i32> %264, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %269 = trunc <8 x i32> %265 to <8 x i16>
  %270 = trunc <8 x i32> %266 to <8 x i16>
  %271 = trunc <8 x i32> %267 to <8 x i16>
  %272 = trunc <8 x i32> %268 to <8 x i16>
  store <8 x i16> %269, ptr %next.gep294, align 2, !alias.scope !219, !noalias !221
  store <8 x i16> %270, ptr %222, align 2, !alias.scope !219, !noalias !221
  store <8 x i16> %271, ptr %223, align 2, !alias.scope !219, !noalias !221
  store <8 x i16> %272, ptr %224, align 2, !alias.scope !219, !noalias !221
  %index.next358 = add nuw i64 %index292, 32
  %273 = icmp eq i64 %index.next358, %n.vec274
  br i1 %273, label %middle.block269, label %vector.body291, !llvm.loop !222

middle.block269:                                  ; preds = %vector.body291
  br i1 %cmp.n359, label %for.cond52.for.end86_crit_edge.us, label %for.body55.us.preheader

for.body55.us.preheader:                          ; preds = %middle.block269, %vector.memcheck239, %for.body40.us
  %orig_line.1154.us.ph = phi ptr [ %146, %vector.memcheck239 ], [ %146, %for.body40.us ], [ %ind.end275, %middle.block269 ]
  %p5.1153.us.ph = phi ptr [ %add.ptr49.us, %vector.memcheck239 ], [ %add.ptr49.us, %for.body40.us ], [ %ind.end277, %middle.block269 ]
  %p4.1152.us.ph = phi ptr [ %add.ptr47.us, %vector.memcheck239 ], [ %add.ptr47.us, %for.body40.us ], [ %ind.end279, %middle.block269 ]
  %p3.1151.us.ph = phi ptr [ %add.ptr45.us, %vector.memcheck239 ], [ %add.ptr45.us, %for.body40.us ], [ %ind.end281, %middle.block269 ]
  %p2.1150.us.ph = phi ptr [ %add.ptr43.us, %vector.memcheck239 ], [ %add.ptr43.us, %for.body40.us ], [ %ind.end283, %middle.block269 ]
  %p1.1149.us.ph = phi ptr [ %add.ptr41.us, %vector.memcheck239 ], [ %add.ptr41.us, %for.body40.us ], [ %ind.end285, %middle.block269 ]
  %p0.2148.us.ph = phi ptr [ %p0.1157.us, %vector.memcheck239 ], [ %p0.1157.us, %for.body40.us ], [ %ind.end287, %middle.block269 ]
  %i.1147.us.ph = phi i32 [ 0, %vector.memcheck239 ], [ 0, %for.body40.us ], [ %ind.end289, %middle.block269 ]
  br label %for.body55.us

for.body55.us:                                    ; preds = %for.body55.us.preheader, %for.body55.us
  %orig_line.1154.us = phi ptr [ %incdec.ptr83.us, %for.body55.us ], [ %orig_line.1154.us.ph, %for.body55.us.preheader ]
  %p5.1153.us = phi ptr [ %incdec.ptr58.us, %for.body55.us ], [ %p5.1153.us.ph, %for.body55.us.preheader ]
  %p4.1152.us = phi ptr [ %incdec.ptr63.us, %for.body55.us ], [ %p4.1152.us.ph, %for.body55.us.preheader ]
  %p3.1151.us = phi ptr [ %incdec.ptr70.us, %for.body55.us ], [ %p3.1151.us.ph, %for.body55.us.preheader ]
  %p2.1150.us = phi ptr [ %incdec.ptr68.us, %for.body55.us ], [ %p2.1150.us.ph, %for.body55.us.preheader ]
  %p1.1149.us = phi ptr [ %incdec.ptr61.us, %for.body55.us ], [ %p1.1149.us.ph, %for.body55.us.preheader ]
  %p0.2148.us = phi ptr [ %incdec.ptr56.us, %for.body55.us ], [ %p0.2148.us.ph, %for.body55.us.preheader ]
  %i.1147.us = phi i32 [ %inc85.us, %for.body55.us ], [ %i.1147.us.ph, %for.body55.us.preheader ]
  %incdec.ptr56.us = getelementptr inbounds i8, ptr %p0.2148.us, i64 2
  %274 = load i16, ptr %p0.2148.us, align 2
  %conv57.us = zext i16 %274 to i32
  %incdec.ptr58.us = getelementptr inbounds i8, ptr %p5.1153.us, i64 2
  %275 = load i16, ptr %p5.1153.us, align 2
  %conv59.us = zext i16 %275 to i32
  %incdec.ptr61.us = getelementptr inbounds i8, ptr %p1.1149.us, i64 2
  %276 = load i16, ptr %p1.1149.us, align 2
  %conv62.us = zext i16 %276 to i32
  %incdec.ptr63.us = getelementptr inbounds i8, ptr %p4.1152.us, i64 2
  %277 = load i16, ptr %p4.1152.us, align 2
  %conv64.us = zext i16 %277 to i32
  %add65.us = add nuw nsw i32 %conv64.us, %conv62.us
  %mul66.neg.us = mul nsw i32 %add65.us, -5
  %incdec.ptr68.us = getelementptr inbounds i8, ptr %p2.1150.us, i64 2
  %278 = load i16, ptr %p2.1150.us, align 2
  %conv69.us = zext i16 %278 to i32
  %incdec.ptr70.us = getelementptr inbounds i8, ptr %p3.1151.us, i64 2
  %279 = load i16, ptr %p3.1151.us, align 2
  %conv71.us = zext i16 %279 to i32
  %add72.us = add nuw nsw i32 %conv71.us, %conv69.us
  %mul73.us = mul nuw nsw i32 %add72.us, 20
  %280 = load i16, ptr %orig_line.1154.us, align 2
  %conv75.us = zext i16 %280 to i32
  %add60.us = add nuw nsw i32 %conv57.us, 16
  %sub67.us = add nuw nsw i32 %add60.us, %conv59.us
  %add74.us = add nsw i32 %sub67.us, %mul66.neg.us
  %add76.us = add nsw i32 %add74.us, %mul73.us
  %shr77.us = ashr i32 %add76.us, 5
  %cond.i.i132.us = tail call noundef i32 @llvm.smax.i32(i32 %shr77.us, i32 0)
  %cond.i4.i133.us = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i132.us, i32 %max_imgpel_value)
  %add79.us = add nuw nsw i32 %conv75.us, 1
  %add80.us = add nsw i32 %add79.us, %cond.i4.i133.us
  %shr81.us = lshr i32 %add80.us, 1
  %conv82.us = trunc i32 %shr81.us to i16
  store i16 %conv82.us, ptr %orig_line.1154.us, align 2
  %incdec.ptr83.us = getelementptr inbounds i8, ptr %orig_line.1154.us, i64 2
  %inc85.us = add nuw nsw i32 %i.1147.us, 1
  %exitcond164.not = icmp eq i32 %inc85.us, %hor_block_size
  br i1 %exitcond164.not, label %for.cond52.for.end86_crit_edge.us, label %for.body55.us, !llvm.loop !223

for.cond52.for.end86_crit_edge.us:                ; preds = %for.body55.us, %middle.block269
  %incdec.ptr61.us.lcssa = phi ptr [ %ind.end285, %middle.block269 ], [ %incdec.ptr61.us, %for.body55.us ]
  %add.ptr88.us = getelementptr inbounds i16, ptr %incdec.ptr61.us.lcssa, i64 %idx.neg
  %indvars.iv.next166 = add nuw nsw i64 %indvars.iv165, 1
  %exitcond169.not = icmp eq i64 %indvars.iv.next166, %wide.trip.count168
  br i1 %exitcond169.not, label %for.end91, label %for.body40.us

for.end91:                                        ; preds = %for.cond52.for.end86_crit_edge.us, %for.body.lr.ph, %entry, %for.end33
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @get_luma_13(ptr nocapture noundef readonly %block, ptr nocapture noundef readonly %cur_imgY, i32 noundef %ver_block_size, i32 noundef %hor_block_size, i32 noundef %x_pos, i32 noundef %shift_x, i32 noundef %max_imgpel_value) unnamed_addr #5 {
entry:
  %cmp143 = icmp sgt i32 %ver_block_size, 0
  br i1 %cmp143, label %for.body.lr.ph, label %for.end91

for.body.lr.ph:                                   ; preds = %entry
  %0 = sext i32 %x_pos to i64
  %cmp10134 = icmp sgt i32 %hor_block_size, 0
  br i1 %cmp10134, label %for.body.us.preheader, label %for.end91

for.body.us.preheader:                            ; preds = %for.body.lr.ph
  %wide.trip.count = zext nneg i32 %ver_block_size to i64
  %1 = add nsw i32 %hor_block_size, -1
  %2 = zext i32 %1 to i64
  %3 = shl nuw nsw i64 %2, 1
  %4 = add nsw i64 %0, %2
  %5 = shl nsw i64 %4, 1
  %6 = zext nneg i32 %hor_block_size to i64
  %min.iters.check = icmp ult i32 %hor_block_size, 32
  %n.vec = and i64 %6, 2147483616
  %7 = shl nuw nsw i64 %n.vec, 1
  %8 = shl nuw nsw i64 %n.vec, 1
  %9 = shl nuw nsw i64 %n.vec, 1
  %10 = shl nuw nsw i64 %n.vec, 1
  %11 = shl nuw nsw i64 %n.vec, 1
  %12 = shl nuw nsw i64 %n.vec, 1
  %ind.end188 = trunc nuw nsw i64 %n.vec to i32
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %max_imgpel_value, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %6
  br label %for.body.us

for.body.us:                                      ; preds = %for.body.us.preheader, %for.cond9.for.inc31_crit_edge.us
  %indvars.iv160 = phi i64 [ 0, %for.body.us.preheader ], [ %indvars.iv.next161, %for.cond9.for.inc31_crit_edge.us ]
  %indvars.iv = phi i64 [ 1, %for.body.us.preheader ], [ %indvars.iv.next, %for.cond9.for.inc31_crit_edge.us ]
  %arrayidx.us = getelementptr inbounds ptr, ptr %cur_imgY, i64 %indvars.iv
  %13 = load ptr, ptr %arrayidx.us, align 8
  %14 = getelementptr i16, ptr %13, i64 %0
  %arrayidx2.us = getelementptr i8, ptr %14, i64 -4
  %add.ptr.us = getelementptr i8, ptr %14, i64 -2
  %add.ptr5.us = getelementptr inbounds i8, ptr %14, i64 4
  %add.ptr6.us = getelementptr inbounds i8, ptr %14, i64 6
  %arrayidx8.us = getelementptr inbounds ptr, ptr %block, i64 %indvars.iv160
  %15 = load ptr, ptr %arrayidx8.us, align 8
  br i1 %min.iters.check, label %for.body11.us.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %for.body.us
  %16 = getelementptr i8, ptr %15, i64 %3
  %scevgep = getelementptr i8, ptr %16, i64 2
  %17 = getelementptr i8, ptr %13, i64 %5
  %scevgep177 = getelementptr i8, ptr %17, i64 8
  %bound0 = icmp ult ptr %15, %scevgep177
  %bound1 = icmp ult ptr %arrayidx2.us, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %for.body11.us.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %ind.end = getelementptr i8, ptr %15, i64 %7
  %ind.end178 = getelementptr i8, ptr %add.ptr6.us, i64 %8
  %ind.end180 = getelementptr i8, ptr %add.ptr5.us, i64 %9
  %ind.end182 = getelementptr i8, ptr %14, i64 %10
  %ind.end184 = getelementptr i8, ptr %add.ptr.us, i64 %11
  %ind.end186 = getelementptr i8, ptr %arrayidx2.us, i64 %12
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %offset.idx = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %15, i64 %offset.idx
  %offset.idx193 = shl i64 %index, 1
  %next.gep194 = getelementptr i8, ptr %add.ptr6.us, i64 %offset.idx193
  %offset.idx198 = shl i64 %index, 1
  %next.gep199 = getelementptr i8, ptr %add.ptr5.us, i64 %offset.idx198
  %offset.idx203 = shl i64 %index, 1
  %next.gep204 = getelementptr i8, ptr %14, i64 %offset.idx203
  %offset.idx208 = shl i64 %index, 1
  %next.gep209 = getelementptr i8, ptr %add.ptr.us, i64 %offset.idx208
  %offset.idx213 = shl i64 %index, 1
  %next.gep214 = getelementptr i8, ptr %arrayidx2.us, i64 %offset.idx213
  %18 = getelementptr i8, ptr %next.gep204, i64 2
  %19 = getelementptr i8, ptr %next.gep214, i64 16
  %20 = getelementptr i8, ptr %next.gep214, i64 32
  %21 = getelementptr i8, ptr %next.gep214, i64 48
  %wide.load = load <8 x i16>, ptr %next.gep214, align 2, !alias.scope !224
  %wide.load218 = load <8 x i16>, ptr %19, align 2, !alias.scope !224
  %wide.load219 = load <8 x i16>, ptr %20, align 2, !alias.scope !224
  %wide.load220 = load <8 x i16>, ptr %21, align 2, !alias.scope !224
  %22 = zext <8 x i16> %wide.load to <8 x i32>
  %23 = zext <8 x i16> %wide.load218 to <8 x i32>
  %24 = zext <8 x i16> %wide.load219 to <8 x i32>
  %25 = zext <8 x i16> %wide.load220 to <8 x i32>
  %26 = getelementptr i8, ptr %next.gep194, i64 16
  %27 = getelementptr i8, ptr %next.gep194, i64 32
  %28 = getelementptr i8, ptr %next.gep194, i64 48
  %wide.load221 = load <8 x i16>, ptr %next.gep194, align 2, !alias.scope !224
  %wide.load222 = load <8 x i16>, ptr %26, align 2, !alias.scope !224
  %wide.load223 = load <8 x i16>, ptr %27, align 2, !alias.scope !224
  %wide.load224 = load <8 x i16>, ptr %28, align 2, !alias.scope !224
  %29 = zext <8 x i16> %wide.load221 to <8 x i32>
  %30 = zext <8 x i16> %wide.load222 to <8 x i32>
  %31 = zext <8 x i16> %wide.load223 to <8 x i32>
  %32 = zext <8 x i16> %wide.load224 to <8 x i32>
  %33 = getelementptr i8, ptr %next.gep209, i64 16
  %34 = getelementptr i8, ptr %next.gep209, i64 32
  %35 = getelementptr i8, ptr %next.gep209, i64 48
  %wide.load225 = load <8 x i16>, ptr %next.gep209, align 2, !alias.scope !224
  %wide.load226 = load <8 x i16>, ptr %33, align 2, !alias.scope !224
  %wide.load227 = load <8 x i16>, ptr %34, align 2, !alias.scope !224
  %wide.load228 = load <8 x i16>, ptr %35, align 2, !alias.scope !224
  %36 = zext <8 x i16> %wide.load225 to <8 x i32>
  %37 = zext <8 x i16> %wide.load226 to <8 x i32>
  %38 = zext <8 x i16> %wide.load227 to <8 x i32>
  %39 = zext <8 x i16> %wide.load228 to <8 x i32>
  %40 = getelementptr i8, ptr %next.gep199, i64 16
  %41 = getelementptr i8, ptr %next.gep199, i64 32
  %42 = getelementptr i8, ptr %next.gep199, i64 48
  %wide.load229 = load <8 x i16>, ptr %next.gep199, align 2, !alias.scope !224
  %wide.load230 = load <8 x i16>, ptr %40, align 2, !alias.scope !224
  %wide.load231 = load <8 x i16>, ptr %41, align 2, !alias.scope !224
  %wide.load232 = load <8 x i16>, ptr %42, align 2, !alias.scope !224
  %43 = zext <8 x i16> %wide.load229 to <8 x i32>
  %44 = zext <8 x i16> %wide.load230 to <8 x i32>
  %45 = zext <8 x i16> %wide.load231 to <8 x i32>
  %46 = zext <8 x i16> %wide.load232 to <8 x i32>
  %47 = add nuw nsw <8 x i32> %43, %36
  %48 = add nuw nsw <8 x i32> %44, %37
  %49 = add nuw nsw <8 x i32> %45, %38
  %50 = add nuw nsw <8 x i32> %46, %39
  %51 = mul nsw <8 x i32> %47, <i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5>
  %52 = mul nsw <8 x i32> %48, <i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5>
  %53 = mul nsw <8 x i32> %49, <i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5>
  %54 = mul nsw <8 x i32> %50, <i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5>
  %55 = getelementptr i8, ptr %next.gep204, i64 16
  %56 = getelementptr i8, ptr %next.gep204, i64 32
  %57 = getelementptr i8, ptr %next.gep204, i64 48
  %wide.load233 = load <8 x i16>, ptr %next.gep204, align 2, !alias.scope !224
  %wide.load234 = load <8 x i16>, ptr %55, align 2, !alias.scope !224
  %wide.load235 = load <8 x i16>, ptr %56, align 2, !alias.scope !224
  %wide.load236 = load <8 x i16>, ptr %57, align 2, !alias.scope !224
  %58 = zext <8 x i16> %wide.load233 to <8 x i32>
  %59 = zext <8 x i16> %wide.load234 to <8 x i32>
  %60 = zext <8 x i16> %wide.load235 to <8 x i32>
  %61 = zext <8 x i16> %wide.load236 to <8 x i32>
  %62 = getelementptr i8, ptr %next.gep204, i64 18
  %63 = getelementptr i8, ptr %next.gep204, i64 34
  %64 = getelementptr i8, ptr %next.gep204, i64 50
  %wide.load237 = load <8 x i16>, ptr %18, align 2, !alias.scope !224
  %wide.load238 = load <8 x i16>, ptr %62, align 2, !alias.scope !224
  %wide.load239 = load <8 x i16>, ptr %63, align 2, !alias.scope !224
  %wide.load240 = load <8 x i16>, ptr %64, align 2, !alias.scope !224
  %65 = zext <8 x i16> %wide.load237 to <8 x i32>
  %66 = zext <8 x i16> %wide.load238 to <8 x i32>
  %67 = zext <8 x i16> %wide.load239 to <8 x i32>
  %68 = zext <8 x i16> %wide.load240 to <8 x i32>
  %69 = add nuw nsw <8 x i32> %65, %58
  %70 = add nuw nsw <8 x i32> %66, %59
  %71 = add nuw nsw <8 x i32> %67, %60
  %72 = add nuw nsw <8 x i32> %68, %61
  %73 = mul nuw nsw <8 x i32> %69, <i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20>
  %74 = mul nuw nsw <8 x i32> %70, <i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20>
  %75 = mul nuw nsw <8 x i32> %71, <i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20>
  %76 = mul nuw nsw <8 x i32> %72, <i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20>
  %77 = add nuw nsw <8 x i32> %22, <i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16>
  %78 = add nuw nsw <8 x i32> %23, <i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16>
  %79 = add nuw nsw <8 x i32> %24, <i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16>
  %80 = add nuw nsw <8 x i32> %25, <i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16>
  %81 = add nuw nsw <8 x i32> %77, %29
  %82 = add nuw nsw <8 x i32> %78, %30
  %83 = add nuw nsw <8 x i32> %79, %31
  %84 = add nuw nsw <8 x i32> %80, %32
  %85 = add nsw <8 x i32> %81, %51
  %86 = add nsw <8 x i32> %82, %52
  %87 = add nsw <8 x i32> %83, %53
  %88 = add nsw <8 x i32> %84, %54
  %89 = add nsw <8 x i32> %85, %73
  %90 = add nsw <8 x i32> %86, %74
  %91 = add nsw <8 x i32> %87, %75
  %92 = add nsw <8 x i32> %88, %76
  %93 = ashr <8 x i32> %89, <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  %94 = ashr <8 x i32> %90, <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  %95 = ashr <8 x i32> %91, <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  %96 = ashr <8 x i32> %92, <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  %97 = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %93, <8 x i32> zeroinitializer)
  %98 = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %94, <8 x i32> zeroinitializer)
  %99 = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %95, <8 x i32> zeroinitializer)
  %100 = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %96, <8 x i32> zeroinitializer)
  %101 = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %97, <8 x i32> %broadcast.splat)
  %102 = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %98, <8 x i32> %broadcast.splat)
  %103 = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %99, <8 x i32> %broadcast.splat)
  %104 = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %100, <8 x i32> %broadcast.splat)
  %105 = trunc <8 x i32> %101 to <8 x i16>
  %106 = trunc <8 x i32> %102 to <8 x i16>
  %107 = trunc <8 x i32> %103 to <8 x i16>
  %108 = trunc <8 x i32> %104 to <8 x i16>
  %109 = getelementptr i8, ptr %next.gep, i64 16
  %110 = getelementptr i8, ptr %next.gep, i64 32
  %111 = getelementptr i8, ptr %next.gep, i64 48
  store <8 x i16> %105, ptr %next.gep, align 2, !alias.scope !227, !noalias !224
  store <8 x i16> %106, ptr %109, align 2, !alias.scope !227, !noalias !224
  store <8 x i16> %107, ptr %110, align 2, !alias.scope !227, !noalias !224
  store <8 x i16> %108, ptr %111, align 2, !alias.scope !227, !noalias !224
  %index.next = add nuw i64 %index, 32
  %112 = icmp eq i64 %index.next, %n.vec
  br i1 %112, label %middle.block, label %vector.body, !llvm.loop !229

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %for.cond9.for.inc31_crit_edge.us, label %for.body11.us.preheader

for.body11.us.preheader:                          ; preds = %middle.block, %vector.memcheck, %for.body.us
  %orig_line.0142.us.ph = phi ptr [ %15, %vector.memcheck ], [ %15, %for.body.us ], [ %ind.end, %middle.block ]
  %p5.0141.us.ph = phi ptr [ %add.ptr6.us, %vector.memcheck ], [ %add.ptr6.us, %for.body.us ], [ %ind.end178, %middle.block ]
  %p4.0140.us.ph = phi ptr [ %add.ptr5.us, %vector.memcheck ], [ %add.ptr5.us, %for.body.us ], [ %ind.end180, %middle.block ]
  %.pn139.us.ph = phi ptr [ %14, %vector.memcheck ], [ %14, %for.body.us ], [ %ind.end182, %middle.block ]
  %p1.0137.us.ph = phi ptr [ %add.ptr.us, %vector.memcheck ], [ %add.ptr.us, %for.body.us ], [ %ind.end184, %middle.block ]
  %p0.0136.us.ph = phi ptr [ %arrayidx2.us, %vector.memcheck ], [ %arrayidx2.us, %for.body.us ], [ %ind.end186, %middle.block ]
  %i.0135.us.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %for.body.us ], [ %ind.end188, %middle.block ]
  br label %for.body11.us

for.body11.us:                                    ; preds = %for.body11.us.preheader, %for.body11.us
  %orig_line.0142.us = phi ptr [ %incdec.ptr29.us, %for.body11.us ], [ %orig_line.0142.us.ph, %for.body11.us.preheader ]
  %p5.0141.us = phi ptr [ %incdec.ptr12.us, %for.body11.us ], [ %p5.0141.us.ph, %for.body11.us.preheader ]
  %p4.0140.us = phi ptr [ %incdec.ptr16.us, %for.body11.us ], [ %p4.0140.us.ph, %for.body11.us.preheader ]
  %.pn139.us = phi ptr [ %p3.0.us, %for.body11.us ], [ %.pn139.us.ph, %for.body11.us.preheader ]
  %p1.0137.us = phi ptr [ %incdec.ptr14.us, %for.body11.us ], [ %p1.0137.us.ph, %for.body11.us.preheader ]
  %p0.0136.us = phi ptr [ %incdec.ptr.us, %for.body11.us ], [ %p0.0136.us.ph, %for.body11.us.preheader ]
  %i.0135.us = phi i32 [ %inc30.us, %for.body11.us ], [ %i.0135.us.ph, %for.body11.us.preheader ]
  %p3.0.us = getelementptr i8, ptr %.pn139.us, i64 2
  %incdec.ptr.us = getelementptr inbounds i8, ptr %p0.0136.us, i64 2
  %113 = load i16, ptr %p0.0136.us, align 2
  %conv.us = zext i16 %113 to i32
  %incdec.ptr12.us = getelementptr inbounds i8, ptr %p5.0141.us, i64 2
  %114 = load i16, ptr %p5.0141.us, align 2
  %conv13.us = zext i16 %114 to i32
  %incdec.ptr14.us = getelementptr inbounds i8, ptr %p1.0137.us, i64 2
  %115 = load i16, ptr %p1.0137.us, align 2
  %conv15.us = zext i16 %115 to i32
  %incdec.ptr16.us = getelementptr inbounds i8, ptr %p4.0140.us, i64 2
  %116 = load i16, ptr %p4.0140.us, align 2
  %conv17.us = zext i16 %116 to i32
  %add18.us = add nuw nsw i32 %conv17.us, %conv15.us
  %mul.neg.us = mul nsw i32 %add18.us, -5
  %117 = load i16, ptr %.pn139.us, align 2
  %conv21.us = zext i16 %117 to i32
  %118 = load i16, ptr %p3.0.us, align 2
  %conv23.us = zext i16 %118 to i32
  %add24.us = add nuw nsw i32 %conv23.us, %conv21.us
  %mul25.us = mul nuw nsw i32 %add24.us, 20
  %add.us = add nuw nsw i32 %conv.us, 16
  %sub19.us = add nuw nsw i32 %add.us, %conv13.us
  %add26.us = add nsw i32 %sub19.us, %mul.neg.us
  %add27.us = add nsw i32 %add26.us, %mul25.us
  %shr.us = ashr i32 %add27.us, 5
  %cond.i.i.us = tail call noundef i32 @llvm.smax.i32(i32 %shr.us, i32 0)
  %cond.i4.i.us = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i.us, i32 %max_imgpel_value)
  %conv28.us = trunc i32 %cond.i4.i.us to i16
  %incdec.ptr29.us = getelementptr inbounds i8, ptr %orig_line.0142.us, i64 2
  store i16 %conv28.us, ptr %orig_line.0142.us, align 2
  %inc30.us = add nuw nsw i32 %i.0135.us, 1
  %exitcond.not = icmp eq i32 %inc30.us, %hor_block_size
  br i1 %exitcond.not, label %for.cond9.for.inc31_crit_edge.us, label %for.body11.us, !llvm.loop !230

for.cond9.for.inc31_crit_edge.us:                 ; preds = %for.body11.us, %middle.block
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %indvars.iv.next161 = add nuw nsw i64 %indvars.iv160, 1
  %exitcond165.not = icmp eq i64 %indvars.iv.next161, %wide.trip.count
  br i1 %exitcond165.not, label %for.end33, label %for.body.us

for.end33:                                        ; preds = %for.cond9.for.inc31_crit_edge.us
  br i1 %cmp143, label %for.body40.lr.ph, label %for.end91

for.body40.lr.ph:                                 ; preds = %for.end33
  %idx.ext = sext i32 %shift_x to i64
  %idx.ext87 = zext nneg i32 %hor_block_size to i64
  %idx.neg = sub nsw i64 0, %idx.ext87
  %arrayidx34 = getelementptr inbounds i8, ptr %cur_imgY, i64 -16
  %119 = load ptr, ptr %arrayidx34, align 8
  %idxprom35 = sext i32 %x_pos to i64
  %arrayidx36 = getelementptr inbounds i16, ptr %119, i64 %idxprom35
  %wide.trip.count170 = zext nneg i32 %ver_block_size to i64
  %120 = add nsw i32 %hor_block_size, -1
  %121 = zext i32 %120 to i64
  %122 = shl nuw nsw i64 %121, 1
  %123 = add nuw nsw i64 %122, 2
  %124 = mul nsw i64 %idx.ext, 6
  %125 = add nsw i64 %124, %122
  %126 = add nsw i64 %125, 2
  %127 = shl nsw i64 %idx.ext, 2
  %128 = add nsw i64 %127, %122
  %129 = add nsw i64 %128, 2
  %130 = shl nsw i64 %idx.ext, 3
  %131 = add nsw i64 %130, %122
  %132 = add nsw i64 %131, 2
  %133 = add nsw i64 %idx.ext, %121
  %134 = shl nsw i64 %133, 1
  %135 = add nsw i64 %134, 2
  %136 = mul nsw i64 %idx.ext, 10
  %137 = add nsw i64 %136, %122
  %138 = add nsw i64 %137, 2
  %min.iters.check273 = icmp ult i32 %hor_block_size, 32
  %n.vec276 = and i64 %idx.ext87, 2147483616
  %139 = shl nuw nsw i64 %n.vec276, 1
  %140 = shl nuw nsw i64 %n.vec276, 1
  %141 = shl nuw nsw i64 %n.vec276, 1
  %142 = shl nuw nsw i64 %n.vec276, 1
  %143 = shl nuw nsw i64 %n.vec276, 1
  %144 = shl nuw nsw i64 %n.vec276, 1
  %145 = shl nuw nsw i64 %n.vec276, 1
  %ind.end291 = trunc nuw nsw i64 %n.vec276 to i32
  %broadcast.splatinsert358 = insertelement <8 x i32> poison, i32 %max_imgpel_value, i64 0
  %broadcast.splat359 = shufflevector <8 x i32> %broadcast.splatinsert358, <8 x i32> poison, <8 x i32> zeroinitializer
  %cmp.n361 = icmp eq i64 %n.vec276, %idx.ext87
  br label %for.body40.us

for.body40.us:                                    ; preds = %for.body40.lr.ph, %for.cond52.for.end86_crit_edge.us
  %indvars.iv167 = phi i64 [ 0, %for.body40.lr.ph ], [ %indvars.iv.next168, %for.cond52.for.end86_crit_edge.us ]
  %p0.1157.us = phi ptr [ %arrayidx36, %for.body40.lr.ph ], [ %add.ptr88.us, %for.cond52.for.end86_crit_edge.us ]
  %add.ptr41.us = getelementptr i16, ptr %p0.1157.us, i64 %idx.ext
  %add.ptr43.us = getelementptr i16, ptr %add.ptr41.us, i64 %idx.ext
  %add.ptr45.us = getelementptr i16, ptr %add.ptr43.us, i64 %idx.ext
  %add.ptr47.us = getelementptr i16, ptr %add.ptr45.us, i64 %idx.ext
  %add.ptr49.us = getelementptr i16, ptr %add.ptr47.us, i64 %idx.ext
  %arrayidx51.us = getelementptr inbounds ptr, ptr %block, i64 %indvars.iv167
  %146 = load ptr, ptr %arrayidx51.us, align 8
  br i1 %min.iters.check273, label %for.body55.us.preheader, label %vector.memcheck241

vector.memcheck241:                               ; preds = %for.body40.us
  %scevgep242 = getelementptr i8, ptr %146, i64 %123
  %scevgep243 = getelementptr i8, ptr %p0.1157.us, i64 %126
  %scevgep244 = getelementptr i8, ptr %p0.1157.us, i64 %129
  %scevgep245 = getelementptr i8, ptr %p0.1157.us, i64 %132
  %scevgep246 = getelementptr i8, ptr %p0.1157.us, i64 %135
  %scevgep247 = getelementptr i8, ptr %p0.1157.us, i64 %138
  %scevgep248 = getelementptr i8, ptr %p0.1157.us, i64 %123
  %147 = insertelement <4 x ptr> poison, ptr %146, i64 0
  %148 = shufflevector <4 x ptr> %147, <4 x ptr> poison, <4 x i32> zeroinitializer
  %149 = insertelement <4 x ptr> poison, ptr %scevgep243, i64 0
  %150 = insertelement <4 x ptr> %149, ptr %scevgep244, i64 1
  %151 = insertelement <4 x ptr> %150, ptr %scevgep245, i64 2
  %152 = insertelement <4 x ptr> %151, ptr %scevgep246, i64 3
  %153 = icmp ult <4 x ptr> %148, %152
  %154 = insertelement <4 x ptr> poison, ptr %add.ptr45.us, i64 0
  %155 = insertelement <4 x ptr> %154, ptr %add.ptr43.us, i64 1
  %156 = insertelement <4 x ptr> %155, ptr %add.ptr47.us, i64 2
  %157 = insertelement <4 x ptr> %156, ptr %add.ptr41.us, i64 3
  %158 = insertelement <4 x ptr> poison, ptr %scevgep242, i64 0
  %159 = shufflevector <4 x ptr> %158, <4 x ptr> poison, <4 x i32> zeroinitializer
  %160 = icmp ult <4 x ptr> %157, %159
  %161 = and <4 x i1> %153, %160
  %bound0263 = icmp ult ptr %146, %scevgep247
  %bound1264 = icmp ult ptr %add.ptr49.us, %scevgep242
  %found.conflict265 = and i1 %bound0263, %bound1264
  %bound0267 = icmp ult ptr %146, %scevgep248
  %bound1268 = icmp ult ptr %p0.1157.us, %scevgep242
  %found.conflict269 = and i1 %bound0267, %bound1268
  %162 = bitcast <4 x i1> %161 to i4
  %163 = icmp ne i4 %162, 0
  %op.rdx = or i1 %163, %found.conflict265
  %op.rdx362 = or i1 %op.rdx, %found.conflict269
  br i1 %op.rdx362, label %for.body55.us.preheader, label %vector.ph274

vector.ph274:                                     ; preds = %vector.memcheck241
  %ind.end277 = getelementptr i8, ptr %146, i64 %139
  %ind.end279 = getelementptr i8, ptr %add.ptr49.us, i64 %140
  %ind.end281 = getelementptr i8, ptr %add.ptr47.us, i64 %141
  %ind.end283 = getelementptr i8, ptr %add.ptr45.us, i64 %142
  %ind.end285 = getelementptr i8, ptr %add.ptr43.us, i64 %143
  %ind.end287 = getelementptr i8, ptr %add.ptr41.us, i64 %144
  %ind.end289 = getelementptr i8, ptr %p0.1157.us, i64 %145
  br label %vector.body293

vector.body293:                                   ; preds = %vector.body293, %vector.ph274
  %index294 = phi i64 [ 0, %vector.ph274 ], [ %index.next360, %vector.body293 ]
  %offset.idx295 = shl i64 %index294, 1
  %next.gep296 = getelementptr i8, ptr %146, i64 %offset.idx295
  %offset.idx300 = shl i64 %index294, 1
  %next.gep301 = getelementptr i8, ptr %add.ptr49.us, i64 %offset.idx300
  %offset.idx305 = shl i64 %index294, 1
  %next.gep306 = getelementptr i8, ptr %add.ptr47.us, i64 %offset.idx305
  %offset.idx310 = shl i64 %index294, 1
  %next.gep311 = getelementptr i8, ptr %add.ptr45.us, i64 %offset.idx310
  %offset.idx315 = shl i64 %index294, 1
  %next.gep316 = getelementptr i8, ptr %add.ptr43.us, i64 %offset.idx315
  %offset.idx320 = shl i64 %index294, 1
  %next.gep321 = getelementptr i8, ptr %add.ptr41.us, i64 %offset.idx320
  %offset.idx325 = shl i64 %index294, 1
  %next.gep326 = getelementptr i8, ptr %p0.1157.us, i64 %offset.idx325
  %164 = getelementptr i8, ptr %next.gep326, i64 16
  %165 = getelementptr i8, ptr %next.gep326, i64 32
  %166 = getelementptr i8, ptr %next.gep326, i64 48
  %wide.load330 = load <8 x i16>, ptr %next.gep326, align 2, !alias.scope !231
  %wide.load331 = load <8 x i16>, ptr %164, align 2, !alias.scope !231
  %wide.load332 = load <8 x i16>, ptr %165, align 2, !alias.scope !231
  %wide.load333 = load <8 x i16>, ptr %166, align 2, !alias.scope !231
  %167 = zext <8 x i16> %wide.load330 to <8 x i32>
  %168 = zext <8 x i16> %wide.load331 to <8 x i32>
  %169 = zext <8 x i16> %wide.load332 to <8 x i32>
  %170 = zext <8 x i16> %wide.load333 to <8 x i32>
  %171 = getelementptr i8, ptr %next.gep301, i64 16
  %172 = getelementptr i8, ptr %next.gep301, i64 32
  %173 = getelementptr i8, ptr %next.gep301, i64 48
  %wide.load334 = load <8 x i16>, ptr %next.gep301, align 2, !alias.scope !234
  %wide.load335 = load <8 x i16>, ptr %171, align 2, !alias.scope !234
  %wide.load336 = load <8 x i16>, ptr %172, align 2, !alias.scope !234
  %wide.load337 = load <8 x i16>, ptr %173, align 2, !alias.scope !234
  %174 = zext <8 x i16> %wide.load334 to <8 x i32>
  %175 = zext <8 x i16> %wide.load335 to <8 x i32>
  %176 = zext <8 x i16> %wide.load336 to <8 x i32>
  %177 = zext <8 x i16> %wide.load337 to <8 x i32>
  %178 = getelementptr i8, ptr %next.gep321, i64 16
  %179 = getelementptr i8, ptr %next.gep321, i64 32
  %180 = getelementptr i8, ptr %next.gep321, i64 48
  %wide.load338 = load <8 x i16>, ptr %next.gep321, align 2, !alias.scope !236
  %wide.load339 = load <8 x i16>, ptr %178, align 2, !alias.scope !236
  %wide.load340 = load <8 x i16>, ptr %179, align 2, !alias.scope !236
  %wide.load341 = load <8 x i16>, ptr %180, align 2, !alias.scope !236
  %181 = zext <8 x i16> %wide.load338 to <8 x i32>
  %182 = zext <8 x i16> %wide.load339 to <8 x i32>
  %183 = zext <8 x i16> %wide.load340 to <8 x i32>
  %184 = zext <8 x i16> %wide.load341 to <8 x i32>
  %185 = getelementptr i8, ptr %next.gep306, i64 16
  %186 = getelementptr i8, ptr %next.gep306, i64 32
  %187 = getelementptr i8, ptr %next.gep306, i64 48
  %wide.load342 = load <8 x i16>, ptr %next.gep306, align 2, !alias.scope !238
  %wide.load343 = load <8 x i16>, ptr %185, align 2, !alias.scope !238
  %wide.load344 = load <8 x i16>, ptr %186, align 2, !alias.scope !238
  %wide.load345 = load <8 x i16>, ptr %187, align 2, !alias.scope !238
  %188 = zext <8 x i16> %wide.load342 to <8 x i32>
  %189 = zext <8 x i16> %wide.load343 to <8 x i32>
  %190 = zext <8 x i16> %wide.load344 to <8 x i32>
  %191 = zext <8 x i16> %wide.load345 to <8 x i32>
  %192 = add nuw nsw <8 x i32> %188, %181
  %193 = add nuw nsw <8 x i32> %189, %182
  %194 = add nuw nsw <8 x i32> %190, %183
  %195 = add nuw nsw <8 x i32> %191, %184
  %196 = mul nsw <8 x i32> %192, <i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5>
  %197 = mul nsw <8 x i32> %193, <i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5>
  %198 = mul nsw <8 x i32> %194, <i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5>
  %199 = mul nsw <8 x i32> %195, <i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5>
  %200 = getelementptr i8, ptr %next.gep316, i64 16
  %201 = getelementptr i8, ptr %next.gep316, i64 32
  %202 = getelementptr i8, ptr %next.gep316, i64 48
  %wide.load346 = load <8 x i16>, ptr %next.gep316, align 2, !alias.scope !240
  %wide.load347 = load <8 x i16>, ptr %200, align 2, !alias.scope !240
  %wide.load348 = load <8 x i16>, ptr %201, align 2, !alias.scope !240
  %wide.load349 = load <8 x i16>, ptr %202, align 2, !alias.scope !240
  %203 = zext <8 x i16> %wide.load346 to <8 x i32>
  %204 = zext <8 x i16> %wide.load347 to <8 x i32>
  %205 = zext <8 x i16> %wide.load348 to <8 x i32>
  %206 = zext <8 x i16> %wide.load349 to <8 x i32>
  %207 = getelementptr i8, ptr %next.gep311, i64 16
  %208 = getelementptr i8, ptr %next.gep311, i64 32
  %209 = getelementptr i8, ptr %next.gep311, i64 48
  %wide.load350 = load <8 x i16>, ptr %next.gep311, align 2, !alias.scope !242
  %wide.load351 = load <8 x i16>, ptr %207, align 2, !alias.scope !242
  %wide.load352 = load <8 x i16>, ptr %208, align 2, !alias.scope !242
  %wide.load353 = load <8 x i16>, ptr %209, align 2, !alias.scope !242
  %210 = zext <8 x i16> %wide.load350 to <8 x i32>
  %211 = zext <8 x i16> %wide.load351 to <8 x i32>
  %212 = zext <8 x i16> %wide.load352 to <8 x i32>
  %213 = zext <8 x i16> %wide.load353 to <8 x i32>
  %214 = add nuw nsw <8 x i32> %210, %203
  %215 = add nuw nsw <8 x i32> %211, %204
  %216 = add nuw nsw <8 x i32> %212, %205
  %217 = add nuw nsw <8 x i32> %213, %206
  %218 = mul nuw nsw <8 x i32> %214, <i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20>
  %219 = mul nuw nsw <8 x i32> %215, <i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20>
  %220 = mul nuw nsw <8 x i32> %216, <i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20>
  %221 = mul nuw nsw <8 x i32> %217, <i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20>
  %222 = getelementptr i8, ptr %next.gep296, i64 16
  %223 = getelementptr i8, ptr %next.gep296, i64 32
  %224 = getelementptr i8, ptr %next.gep296, i64 48
  %wide.load354 = load <8 x i16>, ptr %next.gep296, align 2, !alias.scope !244, !noalias !246
  %wide.load355 = load <8 x i16>, ptr %222, align 2, !alias.scope !244, !noalias !246
  %wide.load356 = load <8 x i16>, ptr %223, align 2, !alias.scope !244, !noalias !246
  %wide.load357 = load <8 x i16>, ptr %224, align 2, !alias.scope !244, !noalias !246
  %225 = zext <8 x i16> %wide.load354 to <8 x i32>
  %226 = zext <8 x i16> %wide.load355 to <8 x i32>
  %227 = zext <8 x i16> %wide.load356 to <8 x i32>
  %228 = zext <8 x i16> %wide.load357 to <8 x i32>
  %229 = add nuw nsw <8 x i32> %167, <i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16>
  %230 = add nuw nsw <8 x i32> %168, <i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16>
  %231 = add nuw nsw <8 x i32> %169, <i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16>
  %232 = add nuw nsw <8 x i32> %170, <i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16>
  %233 = add nuw nsw <8 x i32> %229, %174
  %234 = add nuw nsw <8 x i32> %230, %175
  %235 = add nuw nsw <8 x i32> %231, %176
  %236 = add nuw nsw <8 x i32> %232, %177
  %237 = add nsw <8 x i32> %233, %196
  %238 = add nsw <8 x i32> %234, %197
  %239 = add nsw <8 x i32> %235, %198
  %240 = add nsw <8 x i32> %236, %199
  %241 = add nsw <8 x i32> %237, %218
  %242 = add nsw <8 x i32> %238, %219
  %243 = add nsw <8 x i32> %239, %220
  %244 = add nsw <8 x i32> %240, %221
  %245 = ashr <8 x i32> %241, <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  %246 = ashr <8 x i32> %242, <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  %247 = ashr <8 x i32> %243, <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  %248 = ashr <8 x i32> %244, <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  %249 = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %245, <8 x i32> zeroinitializer)
  %250 = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %246, <8 x i32> zeroinitializer)
  %251 = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %247, <8 x i32> zeroinitializer)
  %252 = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %248, <8 x i32> zeroinitializer)
  %253 = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %249, <8 x i32> %broadcast.splat359)
  %254 = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %250, <8 x i32> %broadcast.splat359)
  %255 = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %251, <8 x i32> %broadcast.splat359)
  %256 = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %252, <8 x i32> %broadcast.splat359)
  %257 = add nuw nsw <8 x i32> %225, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %258 = add nuw nsw <8 x i32> %226, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %259 = add nuw nsw <8 x i32> %227, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %260 = add nuw nsw <8 x i32> %228, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %261 = add nsw <8 x i32> %257, %253
  %262 = add nsw <8 x i32> %258, %254
  %263 = add nsw <8 x i32> %259, %255
  %264 = add nsw <8 x i32> %260, %256
  %265 = lshr <8 x i32> %261, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %266 = lshr <8 x i32> %262, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %267 = lshr <8 x i32> %263, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %268 = lshr <8 x i32> %264, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %269 = trunc <8 x i32> %265 to <8 x i16>
  %270 = trunc <8 x i32> %266 to <8 x i16>
  %271 = trunc <8 x i32> %267 to <8 x i16>
  %272 = trunc <8 x i32> %268 to <8 x i16>
  store <8 x i16> %269, ptr %next.gep296, align 2, !alias.scope !244, !noalias !246
  store <8 x i16> %270, ptr %222, align 2, !alias.scope !244, !noalias !246
  store <8 x i16> %271, ptr %223, align 2, !alias.scope !244, !noalias !246
  store <8 x i16> %272, ptr %224, align 2, !alias.scope !244, !noalias !246
  %index.next360 = add nuw i64 %index294, 32
  %273 = icmp eq i64 %index.next360, %n.vec276
  br i1 %273, label %middle.block271, label %vector.body293, !llvm.loop !247

middle.block271:                                  ; preds = %vector.body293
  br i1 %cmp.n361, label %for.cond52.for.end86_crit_edge.us, label %for.body55.us.preheader

for.body55.us.preheader:                          ; preds = %middle.block271, %vector.memcheck241, %for.body40.us
  %orig_line.1154.us.ph = phi ptr [ %146, %vector.memcheck241 ], [ %146, %for.body40.us ], [ %ind.end277, %middle.block271 ]
  %p5.1153.us.ph = phi ptr [ %add.ptr49.us, %vector.memcheck241 ], [ %add.ptr49.us, %for.body40.us ], [ %ind.end279, %middle.block271 ]
  %p4.1152.us.ph = phi ptr [ %add.ptr47.us, %vector.memcheck241 ], [ %add.ptr47.us, %for.body40.us ], [ %ind.end281, %middle.block271 ]
  %p3.1151.us.ph = phi ptr [ %add.ptr45.us, %vector.memcheck241 ], [ %add.ptr45.us, %for.body40.us ], [ %ind.end283, %middle.block271 ]
  %p2.1150.us.ph = phi ptr [ %add.ptr43.us, %vector.memcheck241 ], [ %add.ptr43.us, %for.body40.us ], [ %ind.end285, %middle.block271 ]
  %p1.1149.us.ph = phi ptr [ %add.ptr41.us, %vector.memcheck241 ], [ %add.ptr41.us, %for.body40.us ], [ %ind.end287, %middle.block271 ]
  %p0.2148.us.ph = phi ptr [ %p0.1157.us, %vector.memcheck241 ], [ %p0.1157.us, %for.body40.us ], [ %ind.end289, %middle.block271 ]
  %i.1147.us.ph = phi i32 [ 0, %vector.memcheck241 ], [ 0, %for.body40.us ], [ %ind.end291, %middle.block271 ]
  br label %for.body55.us

for.body55.us:                                    ; preds = %for.body55.us.preheader, %for.body55.us
  %orig_line.1154.us = phi ptr [ %incdec.ptr83.us, %for.body55.us ], [ %orig_line.1154.us.ph, %for.body55.us.preheader ]
  %p5.1153.us = phi ptr [ %incdec.ptr58.us, %for.body55.us ], [ %p5.1153.us.ph, %for.body55.us.preheader ]
  %p4.1152.us = phi ptr [ %incdec.ptr63.us, %for.body55.us ], [ %p4.1152.us.ph, %for.body55.us.preheader ]
  %p3.1151.us = phi ptr [ %incdec.ptr70.us, %for.body55.us ], [ %p3.1151.us.ph, %for.body55.us.preheader ]
  %p2.1150.us = phi ptr [ %incdec.ptr68.us, %for.body55.us ], [ %p2.1150.us.ph, %for.body55.us.preheader ]
  %p1.1149.us = phi ptr [ %incdec.ptr61.us, %for.body55.us ], [ %p1.1149.us.ph, %for.body55.us.preheader ]
  %p0.2148.us = phi ptr [ %incdec.ptr56.us, %for.body55.us ], [ %p0.2148.us.ph, %for.body55.us.preheader ]
  %i.1147.us = phi i32 [ %inc85.us, %for.body55.us ], [ %i.1147.us.ph, %for.body55.us.preheader ]
  %incdec.ptr56.us = getelementptr inbounds i8, ptr %p0.2148.us, i64 2
  %274 = load i16, ptr %p0.2148.us, align 2
  %conv57.us = zext i16 %274 to i32
  %incdec.ptr58.us = getelementptr inbounds i8, ptr %p5.1153.us, i64 2
  %275 = load i16, ptr %p5.1153.us, align 2
  %conv59.us = zext i16 %275 to i32
  %incdec.ptr61.us = getelementptr inbounds i8, ptr %p1.1149.us, i64 2
  %276 = load i16, ptr %p1.1149.us, align 2
  %conv62.us = zext i16 %276 to i32
  %incdec.ptr63.us = getelementptr inbounds i8, ptr %p4.1152.us, i64 2
  %277 = load i16, ptr %p4.1152.us, align 2
  %conv64.us = zext i16 %277 to i32
  %add65.us = add nuw nsw i32 %conv64.us, %conv62.us
  %mul66.neg.us = mul nsw i32 %add65.us, -5
  %incdec.ptr68.us = getelementptr inbounds i8, ptr %p2.1150.us, i64 2
  %278 = load i16, ptr %p2.1150.us, align 2
  %conv69.us = zext i16 %278 to i32
  %incdec.ptr70.us = getelementptr inbounds i8, ptr %p3.1151.us, i64 2
  %279 = load i16, ptr %p3.1151.us, align 2
  %conv71.us = zext i16 %279 to i32
  %add72.us = add nuw nsw i32 %conv71.us, %conv69.us
  %mul73.us = mul nuw nsw i32 %add72.us, 20
  %280 = load i16, ptr %orig_line.1154.us, align 2
  %conv75.us = zext i16 %280 to i32
  %add60.us = add nuw nsw i32 %conv57.us, 16
  %sub67.us = add nuw nsw i32 %add60.us, %conv59.us
  %add74.us = add nsw i32 %sub67.us, %mul66.neg.us
  %add76.us = add nsw i32 %add74.us, %mul73.us
  %shr77.us = ashr i32 %add76.us, 5
  %cond.i.i132.us = tail call noundef i32 @llvm.smax.i32(i32 %shr77.us, i32 0)
  %cond.i4.i133.us = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i132.us, i32 %max_imgpel_value)
  %add79.us = add nuw nsw i32 %conv75.us, 1
  %add80.us = add nsw i32 %add79.us, %cond.i4.i133.us
  %shr81.us = lshr i32 %add80.us, 1
  %conv82.us = trunc i32 %shr81.us to i16
  store i16 %conv82.us, ptr %orig_line.1154.us, align 2
  %incdec.ptr83.us = getelementptr inbounds i8, ptr %orig_line.1154.us, i64 2
  %inc85.us = add nuw nsw i32 %i.1147.us, 1
  %exitcond166.not = icmp eq i32 %inc85.us, %hor_block_size
  br i1 %exitcond166.not, label %for.cond52.for.end86_crit_edge.us, label %for.body55.us, !llvm.loop !248

for.cond52.for.end86_crit_edge.us:                ; preds = %for.body55.us, %middle.block271
  %incdec.ptr61.us.lcssa = phi ptr [ %ind.end287, %middle.block271 ], [ %incdec.ptr61.us, %for.body55.us ]
  %add.ptr88.us = getelementptr inbounds i16, ptr %incdec.ptr61.us.lcssa, i64 %idx.neg
  %indvars.iv.next168 = add nuw nsw i64 %indvars.iv167, 1
  %exitcond171.not = icmp eq i64 %indvars.iv.next168, %wide.trip.count170
  br i1 %exitcond171.not, label %for.end91, label %for.body40.us

for.end91:                                        ; preds = %for.cond52.for.end86_crit_edge.us, %for.body.lr.ph, %entry, %for.end33
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @get_luma_31(ptr nocapture noundef readonly %block, ptr nocapture noundef readonly %cur_imgY, i32 noundef %ver_block_size, i32 noundef %hor_block_size, i32 noundef %x_pos, i32 noundef %shift_x, i32 noundef %max_imgpel_value) unnamed_addr #5 {
entry:
  %cmp144 = icmp sgt i32 %ver_block_size, 0
  br i1 %cmp144, label %for.body.lr.ph, label %for.end92

for.body.lr.ph:                                   ; preds = %entry
  %0 = sext i32 %x_pos to i64
  %cmp10135 = icmp sgt i32 %hor_block_size, 0
  br i1 %cmp10135, label %for.body.us.preheader, label %for.end92

for.body.us.preheader:                            ; preds = %for.body.lr.ph
  %wide.trip.count = zext nneg i32 %ver_block_size to i64
  %1 = add nsw i32 %hor_block_size, -1
  %2 = zext i32 %1 to i64
  %3 = shl nuw nsw i64 %2, 1
  %4 = add nsw i64 %0, %2
  %5 = shl nsw i64 %4, 1
  %6 = zext nneg i32 %hor_block_size to i64
  %min.iters.check = icmp ult i32 %hor_block_size, 32
  %n.vec = and i64 %6, 2147483616
  %7 = shl nuw nsw i64 %n.vec, 1
  %8 = shl nuw nsw i64 %n.vec, 1
  %9 = shl nuw nsw i64 %n.vec, 1
  %10 = shl nuw nsw i64 %n.vec, 1
  %11 = shl nuw nsw i64 %n.vec, 1
  %12 = shl nuw nsw i64 %n.vec, 1
  %ind.end187 = trunc nuw nsw i64 %n.vec to i32
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %max_imgpel_value, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %6
  br label %for.body.us

for.body.us:                                      ; preds = %for.body.us.preheader, %for.cond9.for.inc31_crit_edge.us
  %indvars.iv = phi i64 [ 0, %for.body.us.preheader ], [ %indvars.iv.next, %for.cond9.for.inc31_crit_edge.us ]
  %arrayidx.us = getelementptr inbounds ptr, ptr %cur_imgY, i64 %indvars.iv
  %13 = load ptr, ptr %arrayidx.us, align 8
  %14 = getelementptr i16, ptr %13, i64 %0
  %arrayidx2.us = getelementptr i8, ptr %14, i64 -4
  %add.ptr.us = getelementptr i8, ptr %14, i64 -2
  %add.ptr5.us = getelementptr inbounds i8, ptr %14, i64 4
  %add.ptr6.us = getelementptr inbounds i8, ptr %14, i64 6
  %arrayidx8.us = getelementptr inbounds ptr, ptr %block, i64 %indvars.iv
  %15 = load ptr, ptr %arrayidx8.us, align 8
  br i1 %min.iters.check, label %for.body11.us.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %for.body.us
  %16 = getelementptr i8, ptr %15, i64 %3
  %scevgep = getelementptr i8, ptr %16, i64 2
  %17 = getelementptr i8, ptr %13, i64 %5
  %scevgep176 = getelementptr i8, ptr %17, i64 8
  %bound0 = icmp ult ptr %15, %scevgep176
  %bound1 = icmp ult ptr %arrayidx2.us, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %for.body11.us.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %ind.end = getelementptr i8, ptr %15, i64 %7
  %ind.end177 = getelementptr i8, ptr %add.ptr6.us, i64 %8
  %ind.end179 = getelementptr i8, ptr %add.ptr5.us, i64 %9
  %ind.end181 = getelementptr i8, ptr %14, i64 %10
  %ind.end183 = getelementptr i8, ptr %add.ptr.us, i64 %11
  %ind.end185 = getelementptr i8, ptr %arrayidx2.us, i64 %12
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %offset.idx = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %15, i64 %offset.idx
  %offset.idx192 = shl i64 %index, 1
  %next.gep193 = getelementptr i8, ptr %add.ptr6.us, i64 %offset.idx192
  %offset.idx197 = shl i64 %index, 1
  %next.gep198 = getelementptr i8, ptr %add.ptr5.us, i64 %offset.idx197
  %offset.idx202 = shl i64 %index, 1
  %next.gep203 = getelementptr i8, ptr %14, i64 %offset.idx202
  %offset.idx207 = shl i64 %index, 1
  %next.gep208 = getelementptr i8, ptr %add.ptr.us, i64 %offset.idx207
  %offset.idx212 = shl i64 %index, 1
  %next.gep213 = getelementptr i8, ptr %arrayidx2.us, i64 %offset.idx212
  %18 = getelementptr i8, ptr %next.gep203, i64 2
  %19 = getelementptr i8, ptr %next.gep213, i64 16
  %20 = getelementptr i8, ptr %next.gep213, i64 32
  %21 = getelementptr i8, ptr %next.gep213, i64 48
  %wide.load = load <8 x i16>, ptr %next.gep213, align 2, !alias.scope !249
  %wide.load217 = load <8 x i16>, ptr %19, align 2, !alias.scope !249
  %wide.load218 = load <8 x i16>, ptr %20, align 2, !alias.scope !249
  %wide.load219 = load <8 x i16>, ptr %21, align 2, !alias.scope !249
  %22 = zext <8 x i16> %wide.load to <8 x i32>
  %23 = zext <8 x i16> %wide.load217 to <8 x i32>
  %24 = zext <8 x i16> %wide.load218 to <8 x i32>
  %25 = zext <8 x i16> %wide.load219 to <8 x i32>
  %26 = getelementptr i8, ptr %next.gep193, i64 16
  %27 = getelementptr i8, ptr %next.gep193, i64 32
  %28 = getelementptr i8, ptr %next.gep193, i64 48
  %wide.load220 = load <8 x i16>, ptr %next.gep193, align 2, !alias.scope !249
  %wide.load221 = load <8 x i16>, ptr %26, align 2, !alias.scope !249
  %wide.load222 = load <8 x i16>, ptr %27, align 2, !alias.scope !249
  %wide.load223 = load <8 x i16>, ptr %28, align 2, !alias.scope !249
  %29 = zext <8 x i16> %wide.load220 to <8 x i32>
  %30 = zext <8 x i16> %wide.load221 to <8 x i32>
  %31 = zext <8 x i16> %wide.load222 to <8 x i32>
  %32 = zext <8 x i16> %wide.load223 to <8 x i32>
  %33 = getelementptr i8, ptr %next.gep208, i64 16
  %34 = getelementptr i8, ptr %next.gep208, i64 32
  %35 = getelementptr i8, ptr %next.gep208, i64 48
  %wide.load224 = load <8 x i16>, ptr %next.gep208, align 2, !alias.scope !249
  %wide.load225 = load <8 x i16>, ptr %33, align 2, !alias.scope !249
  %wide.load226 = load <8 x i16>, ptr %34, align 2, !alias.scope !249
  %wide.load227 = load <8 x i16>, ptr %35, align 2, !alias.scope !249
  %36 = zext <8 x i16> %wide.load224 to <8 x i32>
  %37 = zext <8 x i16> %wide.load225 to <8 x i32>
  %38 = zext <8 x i16> %wide.load226 to <8 x i32>
  %39 = zext <8 x i16> %wide.load227 to <8 x i32>
  %40 = getelementptr i8, ptr %next.gep198, i64 16
  %41 = getelementptr i8, ptr %next.gep198, i64 32
  %42 = getelementptr i8, ptr %next.gep198, i64 48
  %wide.load228 = load <8 x i16>, ptr %next.gep198, align 2, !alias.scope !249
  %wide.load229 = load <8 x i16>, ptr %40, align 2, !alias.scope !249
  %wide.load230 = load <8 x i16>, ptr %41, align 2, !alias.scope !249
  %wide.load231 = load <8 x i16>, ptr %42, align 2, !alias.scope !249
  %43 = zext <8 x i16> %wide.load228 to <8 x i32>
  %44 = zext <8 x i16> %wide.load229 to <8 x i32>
  %45 = zext <8 x i16> %wide.load230 to <8 x i32>
  %46 = zext <8 x i16> %wide.load231 to <8 x i32>
  %47 = add nuw nsw <8 x i32> %43, %36
  %48 = add nuw nsw <8 x i32> %44, %37
  %49 = add nuw nsw <8 x i32> %45, %38
  %50 = add nuw nsw <8 x i32> %46, %39
  %51 = mul nsw <8 x i32> %47, <i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5>
  %52 = mul nsw <8 x i32> %48, <i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5>
  %53 = mul nsw <8 x i32> %49, <i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5>
  %54 = mul nsw <8 x i32> %50, <i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5>
  %55 = getelementptr i8, ptr %next.gep203, i64 16
  %56 = getelementptr i8, ptr %next.gep203, i64 32
  %57 = getelementptr i8, ptr %next.gep203, i64 48
  %wide.load232 = load <8 x i16>, ptr %next.gep203, align 2, !alias.scope !249
  %wide.load233 = load <8 x i16>, ptr %55, align 2, !alias.scope !249
  %wide.load234 = load <8 x i16>, ptr %56, align 2, !alias.scope !249
  %wide.load235 = load <8 x i16>, ptr %57, align 2, !alias.scope !249
  %58 = zext <8 x i16> %wide.load232 to <8 x i32>
  %59 = zext <8 x i16> %wide.load233 to <8 x i32>
  %60 = zext <8 x i16> %wide.load234 to <8 x i32>
  %61 = zext <8 x i16> %wide.load235 to <8 x i32>
  %62 = getelementptr i8, ptr %next.gep203, i64 18
  %63 = getelementptr i8, ptr %next.gep203, i64 34
  %64 = getelementptr i8, ptr %next.gep203, i64 50
  %wide.load236 = load <8 x i16>, ptr %18, align 2, !alias.scope !249
  %wide.load237 = load <8 x i16>, ptr %62, align 2, !alias.scope !249
  %wide.load238 = load <8 x i16>, ptr %63, align 2, !alias.scope !249
  %wide.load239 = load <8 x i16>, ptr %64, align 2, !alias.scope !249
  %65 = zext <8 x i16> %wide.load236 to <8 x i32>
  %66 = zext <8 x i16> %wide.load237 to <8 x i32>
  %67 = zext <8 x i16> %wide.load238 to <8 x i32>
  %68 = zext <8 x i16> %wide.load239 to <8 x i32>
  %69 = add nuw nsw <8 x i32> %65, %58
  %70 = add nuw nsw <8 x i32> %66, %59
  %71 = add nuw nsw <8 x i32> %67, %60
  %72 = add nuw nsw <8 x i32> %68, %61
  %73 = mul nuw nsw <8 x i32> %69, <i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20>
  %74 = mul nuw nsw <8 x i32> %70, <i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20>
  %75 = mul nuw nsw <8 x i32> %71, <i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20>
  %76 = mul nuw nsw <8 x i32> %72, <i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20>
  %77 = add nuw nsw <8 x i32> %22, <i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16>
  %78 = add nuw nsw <8 x i32> %23, <i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16>
  %79 = add nuw nsw <8 x i32> %24, <i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16>
  %80 = add nuw nsw <8 x i32> %25, <i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16>
  %81 = add nuw nsw <8 x i32> %77, %29
  %82 = add nuw nsw <8 x i32> %78, %30
  %83 = add nuw nsw <8 x i32> %79, %31
  %84 = add nuw nsw <8 x i32> %80, %32
  %85 = add nsw <8 x i32> %81, %51
  %86 = add nsw <8 x i32> %82, %52
  %87 = add nsw <8 x i32> %83, %53
  %88 = add nsw <8 x i32> %84, %54
  %89 = add nsw <8 x i32> %85, %73
  %90 = add nsw <8 x i32> %86, %74
  %91 = add nsw <8 x i32> %87, %75
  %92 = add nsw <8 x i32> %88, %76
  %93 = ashr <8 x i32> %89, <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  %94 = ashr <8 x i32> %90, <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  %95 = ashr <8 x i32> %91, <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  %96 = ashr <8 x i32> %92, <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  %97 = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %93, <8 x i32> zeroinitializer)
  %98 = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %94, <8 x i32> zeroinitializer)
  %99 = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %95, <8 x i32> zeroinitializer)
  %100 = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %96, <8 x i32> zeroinitializer)
  %101 = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %97, <8 x i32> %broadcast.splat)
  %102 = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %98, <8 x i32> %broadcast.splat)
  %103 = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %99, <8 x i32> %broadcast.splat)
  %104 = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %100, <8 x i32> %broadcast.splat)
  %105 = trunc <8 x i32> %101 to <8 x i16>
  %106 = trunc <8 x i32> %102 to <8 x i16>
  %107 = trunc <8 x i32> %103 to <8 x i16>
  %108 = trunc <8 x i32> %104 to <8 x i16>
  %109 = getelementptr i8, ptr %next.gep, i64 16
  %110 = getelementptr i8, ptr %next.gep, i64 32
  %111 = getelementptr i8, ptr %next.gep, i64 48
  store <8 x i16> %105, ptr %next.gep, align 2, !alias.scope !252, !noalias !249
  store <8 x i16> %106, ptr %109, align 2, !alias.scope !252, !noalias !249
  store <8 x i16> %107, ptr %110, align 2, !alias.scope !252, !noalias !249
  store <8 x i16> %108, ptr %111, align 2, !alias.scope !252, !noalias !249
  %index.next = add nuw i64 %index, 32
  %112 = icmp eq i64 %index.next, %n.vec
  br i1 %112, label %middle.block, label %vector.body, !llvm.loop !254

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %for.cond9.for.inc31_crit_edge.us, label %for.body11.us.preheader

for.body11.us.preheader:                          ; preds = %middle.block, %vector.memcheck, %for.body.us
  %orig_line.0143.us.ph = phi ptr [ %15, %vector.memcheck ], [ %15, %for.body.us ], [ %ind.end, %middle.block ]
  %p5.0142.us.ph = phi ptr [ %add.ptr6.us, %vector.memcheck ], [ %add.ptr6.us, %for.body.us ], [ %ind.end177, %middle.block ]
  %p4.0141.us.ph = phi ptr [ %add.ptr5.us, %vector.memcheck ], [ %add.ptr5.us, %for.body.us ], [ %ind.end179, %middle.block ]
  %.pn140.us.ph = phi ptr [ %14, %vector.memcheck ], [ %14, %for.body.us ], [ %ind.end181, %middle.block ]
  %p1.0138.us.ph = phi ptr [ %add.ptr.us, %vector.memcheck ], [ %add.ptr.us, %for.body.us ], [ %ind.end183, %middle.block ]
  %p0.0137.us.ph = phi ptr [ %arrayidx2.us, %vector.memcheck ], [ %arrayidx2.us, %for.body.us ], [ %ind.end185, %middle.block ]
  %i.0136.us.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %for.body.us ], [ %ind.end187, %middle.block ]
  br label %for.body11.us

for.body11.us:                                    ; preds = %for.body11.us.preheader, %for.body11.us
  %orig_line.0143.us = phi ptr [ %incdec.ptr29.us, %for.body11.us ], [ %orig_line.0143.us.ph, %for.body11.us.preheader ]
  %p5.0142.us = phi ptr [ %incdec.ptr12.us, %for.body11.us ], [ %p5.0142.us.ph, %for.body11.us.preheader ]
  %p4.0141.us = phi ptr [ %incdec.ptr16.us, %for.body11.us ], [ %p4.0141.us.ph, %for.body11.us.preheader ]
  %.pn140.us = phi ptr [ %p3.0.us, %for.body11.us ], [ %.pn140.us.ph, %for.body11.us.preheader ]
  %p1.0138.us = phi ptr [ %incdec.ptr14.us, %for.body11.us ], [ %p1.0138.us.ph, %for.body11.us.preheader ]
  %p0.0137.us = phi ptr [ %incdec.ptr.us, %for.body11.us ], [ %p0.0137.us.ph, %for.body11.us.preheader ]
  %i.0136.us = phi i32 [ %inc30.us, %for.body11.us ], [ %i.0136.us.ph, %for.body11.us.preheader ]
  %p3.0.us = getelementptr i8, ptr %.pn140.us, i64 2
  %incdec.ptr.us = getelementptr inbounds i8, ptr %p0.0137.us, i64 2
  %113 = load i16, ptr %p0.0137.us, align 2
  %conv.us = zext i16 %113 to i32
  %incdec.ptr12.us = getelementptr inbounds i8, ptr %p5.0142.us, i64 2
  %114 = load i16, ptr %p5.0142.us, align 2
  %conv13.us = zext i16 %114 to i32
  %incdec.ptr14.us = getelementptr inbounds i8, ptr %p1.0138.us, i64 2
  %115 = load i16, ptr %p1.0138.us, align 2
  %conv15.us = zext i16 %115 to i32
  %incdec.ptr16.us = getelementptr inbounds i8, ptr %p4.0141.us, i64 2
  %116 = load i16, ptr %p4.0141.us, align 2
  %conv17.us = zext i16 %116 to i32
  %add18.us = add nuw nsw i32 %conv17.us, %conv15.us
  %mul.neg.us = mul nsw i32 %add18.us, -5
  %117 = load i16, ptr %.pn140.us, align 2
  %conv21.us = zext i16 %117 to i32
  %118 = load i16, ptr %p3.0.us, align 2
  %conv23.us = zext i16 %118 to i32
  %add24.us = add nuw nsw i32 %conv23.us, %conv21.us
  %mul25.us = mul nuw nsw i32 %add24.us, 20
  %add.us = add nuw nsw i32 %conv.us, 16
  %sub19.us = add nuw nsw i32 %add.us, %conv13.us
  %add26.us = add nsw i32 %sub19.us, %mul.neg.us
  %add27.us = add nsw i32 %add26.us, %mul25.us
  %shr.us = ashr i32 %add27.us, 5
  %cond.i.i.us = tail call noundef i32 @llvm.smax.i32(i32 %shr.us, i32 0)
  %cond.i4.i.us = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i.us, i32 %max_imgpel_value)
  %conv28.us = trunc i32 %cond.i4.i.us to i16
  %incdec.ptr29.us = getelementptr inbounds i8, ptr %orig_line.0143.us, i64 2
  store i16 %conv28.us, ptr %orig_line.0143.us, align 2
  %inc30.us = add nuw nsw i32 %i.0136.us, 1
  %exitcond.not = icmp eq i32 %inc30.us, %hor_block_size
  br i1 %exitcond.not, label %for.cond9.for.inc31_crit_edge.us, label %for.body11.us, !llvm.loop !255

for.cond9.for.inc31_crit_edge.us:                 ; preds = %for.body11.us, %middle.block
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond164.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond164.not, label %for.end33, label %for.body.us

for.end33:                                        ; preds = %for.cond9.for.inc31_crit_edge.us
  br i1 %cmp144, label %for.body41.lr.ph, label %for.end92

for.body41.lr.ph:                                 ; preds = %for.end33
  %idx.ext = sext i32 %shift_x to i64
  %idx.ext88 = zext nneg i32 %hor_block_size to i64
  %idx.neg = sub nsw i64 0, %idx.ext88
  %arrayidx34 = getelementptr inbounds i8, ptr %cur_imgY, i64 -16
  %119 = load ptr, ptr %arrayidx34, align 8
  %120 = sext i32 %x_pos to i64
  %121 = getelementptr i16, ptr %119, i64 %120
  %arrayidx37 = getelementptr i8, ptr %121, i64 2
  %wide.trip.count169 = zext nneg i32 %ver_block_size to i64
  %122 = add nsw i32 %hor_block_size, -1
  %123 = zext i32 %122 to i64
  %124 = shl nuw nsw i64 %123, 1
  %125 = add nuw nsw i64 %124, 2
  %126 = mul nsw i64 %idx.ext, 6
  %127 = add nsw i64 %126, %124
  %128 = add nsw i64 %127, 2
  %129 = shl nsw i64 %idx.ext, 2
  %130 = add nsw i64 %129, %124
  %131 = add nsw i64 %130, 2
  %132 = shl nsw i64 %idx.ext, 3
  %133 = add nsw i64 %132, %124
  %134 = add nsw i64 %133, 2
  %135 = add nsw i64 %idx.ext, %123
  %136 = shl nsw i64 %135, 1
  %137 = add nsw i64 %136, 2
  %138 = mul nsw i64 %idx.ext, 10
  %139 = add nsw i64 %138, %124
  %140 = add nsw i64 %139, 2
  %min.iters.check272 = icmp ult i32 %hor_block_size, 32
  %n.vec275 = and i64 %idx.ext88, 2147483616
  %141 = shl nuw nsw i64 %n.vec275, 1
  %142 = shl nuw nsw i64 %n.vec275, 1
  %143 = shl nuw nsw i64 %n.vec275, 1
  %144 = shl nuw nsw i64 %n.vec275, 1
  %145 = shl nuw nsw i64 %n.vec275, 1
  %146 = shl nuw nsw i64 %n.vec275, 1
  %147 = shl nuw nsw i64 %n.vec275, 1
  %ind.end290 = trunc nuw nsw i64 %n.vec275 to i32
  %broadcast.splatinsert357 = insertelement <8 x i32> poison, i32 %max_imgpel_value, i64 0
  %broadcast.splat358 = shufflevector <8 x i32> %broadcast.splatinsert357, <8 x i32> poison, <8 x i32> zeroinitializer
  %cmp.n360 = icmp eq i64 %n.vec275, %idx.ext88
  br label %for.body41.us

for.body41.us:                                    ; preds = %for.body41.lr.ph, %for.cond53.for.end87_crit_edge.us
  %indvars.iv166 = phi i64 [ 0, %for.body41.lr.ph ], [ %indvars.iv.next167, %for.cond53.for.end87_crit_edge.us ]
  %p0.1158.us = phi ptr [ %arrayidx37, %for.body41.lr.ph ], [ %add.ptr89.us, %for.cond53.for.end87_crit_edge.us ]
  %add.ptr42.us = getelementptr i16, ptr %p0.1158.us, i64 %idx.ext
  %add.ptr44.us = getelementptr i16, ptr %add.ptr42.us, i64 %idx.ext
  %add.ptr46.us = getelementptr i16, ptr %add.ptr44.us, i64 %idx.ext
  %add.ptr48.us = getelementptr i16, ptr %add.ptr46.us, i64 %idx.ext
  %add.ptr50.us = getelementptr i16, ptr %add.ptr48.us, i64 %idx.ext
  %arrayidx52.us = getelementptr inbounds ptr, ptr %block, i64 %indvars.iv166
  %148 = load ptr, ptr %arrayidx52.us, align 8
  br i1 %min.iters.check272, label %for.body56.us.preheader, label %vector.memcheck240

vector.memcheck240:                               ; preds = %for.body41.us
  %scevgep241 = getelementptr i8, ptr %148, i64 %125
  %scevgep242 = getelementptr i8, ptr %p0.1158.us, i64 %128
  %scevgep243 = getelementptr i8, ptr %p0.1158.us, i64 %131
  %scevgep244 = getelementptr i8, ptr %p0.1158.us, i64 %134
  %scevgep245 = getelementptr i8, ptr %p0.1158.us, i64 %137
  %scevgep246 = getelementptr i8, ptr %p0.1158.us, i64 %140
  %scevgep247 = getelementptr i8, ptr %p0.1158.us, i64 %125
  %149 = insertelement <4 x ptr> poison, ptr %148, i64 0
  %150 = shufflevector <4 x ptr> %149, <4 x ptr> poison, <4 x i32> zeroinitializer
  %151 = insertelement <4 x ptr> poison, ptr %scevgep242, i64 0
  %152 = insertelement <4 x ptr> %151, ptr %scevgep243, i64 1
  %153 = insertelement <4 x ptr> %152, ptr %scevgep244, i64 2
  %154 = insertelement <4 x ptr> %153, ptr %scevgep245, i64 3
  %155 = icmp ult <4 x ptr> %150, %154
  %156 = insertelement <4 x ptr> poison, ptr %add.ptr46.us, i64 0
  %157 = insertelement <4 x ptr> %156, ptr %add.ptr44.us, i64 1
  %158 = insertelement <4 x ptr> %157, ptr %add.ptr48.us, i64 2
  %159 = insertelement <4 x ptr> %158, ptr %add.ptr42.us, i64 3
  %160 = insertelement <4 x ptr> poison, ptr %scevgep241, i64 0
  %161 = shufflevector <4 x ptr> %160, <4 x ptr> poison, <4 x i32> zeroinitializer
  %162 = icmp ult <4 x ptr> %159, %161
  %163 = and <4 x i1> %155, %162
  %bound0262 = icmp ult ptr %148, %scevgep246
  %bound1263 = icmp ult ptr %add.ptr50.us, %scevgep241
  %found.conflict264 = and i1 %bound0262, %bound1263
  %bound0266 = icmp ult ptr %148, %scevgep247
  %bound1267 = icmp ult ptr %p0.1158.us, %scevgep241
  %found.conflict268 = and i1 %bound0266, %bound1267
  %164 = bitcast <4 x i1> %163 to i4
  %165 = icmp ne i4 %164, 0
  %op.rdx = or i1 %165, %found.conflict264
  %op.rdx361 = or i1 %op.rdx, %found.conflict268
  br i1 %op.rdx361, label %for.body56.us.preheader, label %vector.ph273

vector.ph273:                                     ; preds = %vector.memcheck240
  %ind.end276 = getelementptr i8, ptr %148, i64 %141
  %ind.end278 = getelementptr i8, ptr %add.ptr50.us, i64 %142
  %ind.end280 = getelementptr i8, ptr %add.ptr48.us, i64 %143
  %ind.end282 = getelementptr i8, ptr %add.ptr46.us, i64 %144
  %ind.end284 = getelementptr i8, ptr %add.ptr44.us, i64 %145
  %ind.end286 = getelementptr i8, ptr %add.ptr42.us, i64 %146
  %ind.end288 = getelementptr i8, ptr %p0.1158.us, i64 %147
  br label %vector.body292

vector.body292:                                   ; preds = %vector.body292, %vector.ph273
  %index293 = phi i64 [ 0, %vector.ph273 ], [ %index.next359, %vector.body292 ]
  %offset.idx294 = shl i64 %index293, 1
  %next.gep295 = getelementptr i8, ptr %148, i64 %offset.idx294
  %offset.idx299 = shl i64 %index293, 1
  %next.gep300 = getelementptr i8, ptr %add.ptr50.us, i64 %offset.idx299
  %offset.idx304 = shl i64 %index293, 1
  %next.gep305 = getelementptr i8, ptr %add.ptr48.us, i64 %offset.idx304
  %offset.idx309 = shl i64 %index293, 1
  %next.gep310 = getelementptr i8, ptr %add.ptr46.us, i64 %offset.idx309
  %offset.idx314 = shl i64 %index293, 1
  %next.gep315 = getelementptr i8, ptr %add.ptr44.us, i64 %offset.idx314
  %offset.idx319 = shl i64 %index293, 1
  %next.gep320 = getelementptr i8, ptr %add.ptr42.us, i64 %offset.idx319
  %offset.idx324 = shl i64 %index293, 1
  %next.gep325 = getelementptr i8, ptr %p0.1158.us, i64 %offset.idx324
  %166 = getelementptr i8, ptr %next.gep325, i64 16
  %167 = getelementptr i8, ptr %next.gep325, i64 32
  %168 = getelementptr i8, ptr %next.gep325, i64 48
  %wide.load329 = load <8 x i16>, ptr %next.gep325, align 2, !alias.scope !256
  %wide.load330 = load <8 x i16>, ptr %166, align 2, !alias.scope !256
  %wide.load331 = load <8 x i16>, ptr %167, align 2, !alias.scope !256
  %wide.load332 = load <8 x i16>, ptr %168, align 2, !alias.scope !256
  %169 = zext <8 x i16> %wide.load329 to <8 x i32>
  %170 = zext <8 x i16> %wide.load330 to <8 x i32>
  %171 = zext <8 x i16> %wide.load331 to <8 x i32>
  %172 = zext <8 x i16> %wide.load332 to <8 x i32>
  %173 = getelementptr i8, ptr %next.gep300, i64 16
  %174 = getelementptr i8, ptr %next.gep300, i64 32
  %175 = getelementptr i8, ptr %next.gep300, i64 48
  %wide.load333 = load <8 x i16>, ptr %next.gep300, align 2, !alias.scope !259
  %wide.load334 = load <8 x i16>, ptr %173, align 2, !alias.scope !259
  %wide.load335 = load <8 x i16>, ptr %174, align 2, !alias.scope !259
  %wide.load336 = load <8 x i16>, ptr %175, align 2, !alias.scope !259
  %176 = zext <8 x i16> %wide.load333 to <8 x i32>
  %177 = zext <8 x i16> %wide.load334 to <8 x i32>
  %178 = zext <8 x i16> %wide.load335 to <8 x i32>
  %179 = zext <8 x i16> %wide.load336 to <8 x i32>
  %180 = getelementptr i8, ptr %next.gep320, i64 16
  %181 = getelementptr i8, ptr %next.gep320, i64 32
  %182 = getelementptr i8, ptr %next.gep320, i64 48
  %wide.load337 = load <8 x i16>, ptr %next.gep320, align 2, !alias.scope !261
  %wide.load338 = load <8 x i16>, ptr %180, align 2, !alias.scope !261
  %wide.load339 = load <8 x i16>, ptr %181, align 2, !alias.scope !261
  %wide.load340 = load <8 x i16>, ptr %182, align 2, !alias.scope !261
  %183 = zext <8 x i16> %wide.load337 to <8 x i32>
  %184 = zext <8 x i16> %wide.load338 to <8 x i32>
  %185 = zext <8 x i16> %wide.load339 to <8 x i32>
  %186 = zext <8 x i16> %wide.load340 to <8 x i32>
  %187 = getelementptr i8, ptr %next.gep305, i64 16
  %188 = getelementptr i8, ptr %next.gep305, i64 32
  %189 = getelementptr i8, ptr %next.gep305, i64 48
  %wide.load341 = load <8 x i16>, ptr %next.gep305, align 2, !alias.scope !263
  %wide.load342 = load <8 x i16>, ptr %187, align 2, !alias.scope !263
  %wide.load343 = load <8 x i16>, ptr %188, align 2, !alias.scope !263
  %wide.load344 = load <8 x i16>, ptr %189, align 2, !alias.scope !263
  %190 = zext <8 x i16> %wide.load341 to <8 x i32>
  %191 = zext <8 x i16> %wide.load342 to <8 x i32>
  %192 = zext <8 x i16> %wide.load343 to <8 x i32>
  %193 = zext <8 x i16> %wide.load344 to <8 x i32>
  %194 = add nuw nsw <8 x i32> %190, %183
  %195 = add nuw nsw <8 x i32> %191, %184
  %196 = add nuw nsw <8 x i32> %192, %185
  %197 = add nuw nsw <8 x i32> %193, %186
  %198 = mul nsw <8 x i32> %194, <i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5>
  %199 = mul nsw <8 x i32> %195, <i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5>
  %200 = mul nsw <8 x i32> %196, <i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5>
  %201 = mul nsw <8 x i32> %197, <i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5>
  %202 = getelementptr i8, ptr %next.gep315, i64 16
  %203 = getelementptr i8, ptr %next.gep315, i64 32
  %204 = getelementptr i8, ptr %next.gep315, i64 48
  %wide.load345 = load <8 x i16>, ptr %next.gep315, align 2, !alias.scope !265
  %wide.load346 = load <8 x i16>, ptr %202, align 2, !alias.scope !265
  %wide.load347 = load <8 x i16>, ptr %203, align 2, !alias.scope !265
  %wide.load348 = load <8 x i16>, ptr %204, align 2, !alias.scope !265
  %205 = zext <8 x i16> %wide.load345 to <8 x i32>
  %206 = zext <8 x i16> %wide.load346 to <8 x i32>
  %207 = zext <8 x i16> %wide.load347 to <8 x i32>
  %208 = zext <8 x i16> %wide.load348 to <8 x i32>
  %209 = getelementptr i8, ptr %next.gep310, i64 16
  %210 = getelementptr i8, ptr %next.gep310, i64 32
  %211 = getelementptr i8, ptr %next.gep310, i64 48
  %wide.load349 = load <8 x i16>, ptr %next.gep310, align 2, !alias.scope !267
  %wide.load350 = load <8 x i16>, ptr %209, align 2, !alias.scope !267
  %wide.load351 = load <8 x i16>, ptr %210, align 2, !alias.scope !267
  %wide.load352 = load <8 x i16>, ptr %211, align 2, !alias.scope !267
  %212 = zext <8 x i16> %wide.load349 to <8 x i32>
  %213 = zext <8 x i16> %wide.load350 to <8 x i32>
  %214 = zext <8 x i16> %wide.load351 to <8 x i32>
  %215 = zext <8 x i16> %wide.load352 to <8 x i32>
  %216 = add nuw nsw <8 x i32> %212, %205
  %217 = add nuw nsw <8 x i32> %213, %206
  %218 = add nuw nsw <8 x i32> %214, %207
  %219 = add nuw nsw <8 x i32> %215, %208
  %220 = mul nuw nsw <8 x i32> %216, <i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20>
  %221 = mul nuw nsw <8 x i32> %217, <i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20>
  %222 = mul nuw nsw <8 x i32> %218, <i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20>
  %223 = mul nuw nsw <8 x i32> %219, <i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20>
  %224 = getelementptr i8, ptr %next.gep295, i64 16
  %225 = getelementptr i8, ptr %next.gep295, i64 32
  %226 = getelementptr i8, ptr %next.gep295, i64 48
  %wide.load353 = load <8 x i16>, ptr %next.gep295, align 2, !alias.scope !269, !noalias !271
  %wide.load354 = load <8 x i16>, ptr %224, align 2, !alias.scope !269, !noalias !271
  %wide.load355 = load <8 x i16>, ptr %225, align 2, !alias.scope !269, !noalias !271
  %wide.load356 = load <8 x i16>, ptr %226, align 2, !alias.scope !269, !noalias !271
  %227 = zext <8 x i16> %wide.load353 to <8 x i32>
  %228 = zext <8 x i16> %wide.load354 to <8 x i32>
  %229 = zext <8 x i16> %wide.load355 to <8 x i32>
  %230 = zext <8 x i16> %wide.load356 to <8 x i32>
  %231 = add nuw nsw <8 x i32> %169, <i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16>
  %232 = add nuw nsw <8 x i32> %170, <i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16>
  %233 = add nuw nsw <8 x i32> %171, <i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16>
  %234 = add nuw nsw <8 x i32> %172, <i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16>
  %235 = add nuw nsw <8 x i32> %231, %176
  %236 = add nuw nsw <8 x i32> %232, %177
  %237 = add nuw nsw <8 x i32> %233, %178
  %238 = add nuw nsw <8 x i32> %234, %179
  %239 = add nsw <8 x i32> %235, %198
  %240 = add nsw <8 x i32> %236, %199
  %241 = add nsw <8 x i32> %237, %200
  %242 = add nsw <8 x i32> %238, %201
  %243 = add nsw <8 x i32> %239, %220
  %244 = add nsw <8 x i32> %240, %221
  %245 = add nsw <8 x i32> %241, %222
  %246 = add nsw <8 x i32> %242, %223
  %247 = ashr <8 x i32> %243, <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  %248 = ashr <8 x i32> %244, <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  %249 = ashr <8 x i32> %245, <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  %250 = ashr <8 x i32> %246, <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  %251 = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %247, <8 x i32> zeroinitializer)
  %252 = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %248, <8 x i32> zeroinitializer)
  %253 = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %249, <8 x i32> zeroinitializer)
  %254 = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %250, <8 x i32> zeroinitializer)
  %255 = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %251, <8 x i32> %broadcast.splat358)
  %256 = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %252, <8 x i32> %broadcast.splat358)
  %257 = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %253, <8 x i32> %broadcast.splat358)
  %258 = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %254, <8 x i32> %broadcast.splat358)
  %259 = add nuw nsw <8 x i32> %227, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %260 = add nuw nsw <8 x i32> %228, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %261 = add nuw nsw <8 x i32> %229, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %262 = add nuw nsw <8 x i32> %230, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %263 = add nsw <8 x i32> %259, %255
  %264 = add nsw <8 x i32> %260, %256
  %265 = add nsw <8 x i32> %261, %257
  %266 = add nsw <8 x i32> %262, %258
  %267 = lshr <8 x i32> %263, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %268 = lshr <8 x i32> %264, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %269 = lshr <8 x i32> %265, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %270 = lshr <8 x i32> %266, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %271 = trunc <8 x i32> %267 to <8 x i16>
  %272 = trunc <8 x i32> %268 to <8 x i16>
  %273 = trunc <8 x i32> %269 to <8 x i16>
  %274 = trunc <8 x i32> %270 to <8 x i16>
  store <8 x i16> %271, ptr %next.gep295, align 2, !alias.scope !269, !noalias !271
  store <8 x i16> %272, ptr %224, align 2, !alias.scope !269, !noalias !271
  store <8 x i16> %273, ptr %225, align 2, !alias.scope !269, !noalias !271
  store <8 x i16> %274, ptr %226, align 2, !alias.scope !269, !noalias !271
  %index.next359 = add nuw i64 %index293, 32
  %275 = icmp eq i64 %index.next359, %n.vec275
  br i1 %275, label %middle.block270, label %vector.body292, !llvm.loop !272

middle.block270:                                  ; preds = %vector.body292
  br i1 %cmp.n360, label %for.cond53.for.end87_crit_edge.us, label %for.body56.us.preheader

for.body56.us.preheader:                          ; preds = %middle.block270, %vector.memcheck240, %for.body41.us
  %orig_line.1155.us.ph = phi ptr [ %148, %vector.memcheck240 ], [ %148, %for.body41.us ], [ %ind.end276, %middle.block270 ]
  %p5.1154.us.ph = phi ptr [ %add.ptr50.us, %vector.memcheck240 ], [ %add.ptr50.us, %for.body41.us ], [ %ind.end278, %middle.block270 ]
  %p4.1153.us.ph = phi ptr [ %add.ptr48.us, %vector.memcheck240 ], [ %add.ptr48.us, %for.body41.us ], [ %ind.end280, %middle.block270 ]
  %p3.1152.us.ph = phi ptr [ %add.ptr46.us, %vector.memcheck240 ], [ %add.ptr46.us, %for.body41.us ], [ %ind.end282, %middle.block270 ]
  %p2.1151.us.ph = phi ptr [ %add.ptr44.us, %vector.memcheck240 ], [ %add.ptr44.us, %for.body41.us ], [ %ind.end284, %middle.block270 ]
  %p1.1150.us.ph = phi ptr [ %add.ptr42.us, %vector.memcheck240 ], [ %add.ptr42.us, %for.body41.us ], [ %ind.end286, %middle.block270 ]
  %p0.2149.us.ph = phi ptr [ %p0.1158.us, %vector.memcheck240 ], [ %p0.1158.us, %for.body41.us ], [ %ind.end288, %middle.block270 ]
  %i.1148.us.ph = phi i32 [ 0, %vector.memcheck240 ], [ 0, %for.body41.us ], [ %ind.end290, %middle.block270 ]
  br label %for.body56.us

for.body56.us:                                    ; preds = %for.body56.us.preheader, %for.body56.us
  %orig_line.1155.us = phi ptr [ %incdec.ptr84.us, %for.body56.us ], [ %orig_line.1155.us.ph, %for.body56.us.preheader ]
  %p5.1154.us = phi ptr [ %incdec.ptr59.us, %for.body56.us ], [ %p5.1154.us.ph, %for.body56.us.preheader ]
  %p4.1153.us = phi ptr [ %incdec.ptr64.us, %for.body56.us ], [ %p4.1153.us.ph, %for.body56.us.preheader ]
  %p3.1152.us = phi ptr [ %incdec.ptr71.us, %for.body56.us ], [ %p3.1152.us.ph, %for.body56.us.preheader ]
  %p2.1151.us = phi ptr [ %incdec.ptr69.us, %for.body56.us ], [ %p2.1151.us.ph, %for.body56.us.preheader ]
  %p1.1150.us = phi ptr [ %incdec.ptr62.us, %for.body56.us ], [ %p1.1150.us.ph, %for.body56.us.preheader ]
  %p0.2149.us = phi ptr [ %incdec.ptr57.us, %for.body56.us ], [ %p0.2149.us.ph, %for.body56.us.preheader ]
  %i.1148.us = phi i32 [ %inc86.us, %for.body56.us ], [ %i.1148.us.ph, %for.body56.us.preheader ]
  %incdec.ptr57.us = getelementptr inbounds i8, ptr %p0.2149.us, i64 2
  %276 = load i16, ptr %p0.2149.us, align 2
  %conv58.us = zext i16 %276 to i32
  %incdec.ptr59.us = getelementptr inbounds i8, ptr %p5.1154.us, i64 2
  %277 = load i16, ptr %p5.1154.us, align 2
  %conv60.us = zext i16 %277 to i32
  %incdec.ptr62.us = getelementptr inbounds i8, ptr %p1.1150.us, i64 2
  %278 = load i16, ptr %p1.1150.us, align 2
  %conv63.us = zext i16 %278 to i32
  %incdec.ptr64.us = getelementptr inbounds i8, ptr %p4.1153.us, i64 2
  %279 = load i16, ptr %p4.1153.us, align 2
  %conv65.us = zext i16 %279 to i32
  %add66.us = add nuw nsw i32 %conv65.us, %conv63.us
  %mul67.neg.us = mul nsw i32 %add66.us, -5
  %incdec.ptr69.us = getelementptr inbounds i8, ptr %p2.1151.us, i64 2
  %280 = load i16, ptr %p2.1151.us, align 2
  %conv70.us = zext i16 %280 to i32
  %incdec.ptr71.us = getelementptr inbounds i8, ptr %p3.1152.us, i64 2
  %281 = load i16, ptr %p3.1152.us, align 2
  %conv72.us = zext i16 %281 to i32
  %add73.us = add nuw nsw i32 %conv72.us, %conv70.us
  %mul74.us = mul nuw nsw i32 %add73.us, 20
  %282 = load i16, ptr %orig_line.1155.us, align 2
  %conv76.us = zext i16 %282 to i32
  %add61.us = add nuw nsw i32 %conv58.us, 16
  %sub68.us = add nuw nsw i32 %add61.us, %conv60.us
  %add75.us = add nsw i32 %sub68.us, %mul67.neg.us
  %add77.us = add nsw i32 %add75.us, %mul74.us
  %shr78.us = ashr i32 %add77.us, 5
  %cond.i.i133.us = tail call noundef i32 @llvm.smax.i32(i32 %shr78.us, i32 0)
  %cond.i4.i134.us = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i133.us, i32 %max_imgpel_value)
  %add80.us = add nuw nsw i32 %conv76.us, 1
  %add81.us = add nsw i32 %add80.us, %cond.i4.i134.us
  %shr82.us = lshr i32 %add81.us, 1
  %conv83.us = trunc i32 %shr82.us to i16
  store i16 %conv83.us, ptr %orig_line.1155.us, align 2
  %incdec.ptr84.us = getelementptr inbounds i8, ptr %orig_line.1155.us, i64 2
  %inc86.us = add nuw nsw i32 %i.1148.us, 1
  %exitcond165.not = icmp eq i32 %inc86.us, %hor_block_size
  br i1 %exitcond165.not, label %for.cond53.for.end87_crit_edge.us, label %for.body56.us, !llvm.loop !273

for.cond53.for.end87_crit_edge.us:                ; preds = %for.body56.us, %middle.block270
  %incdec.ptr62.us.lcssa = phi ptr [ %ind.end286, %middle.block270 ], [ %incdec.ptr62.us, %for.body56.us ]
  %add.ptr89.us = getelementptr inbounds i16, ptr %incdec.ptr62.us.lcssa, i64 %idx.neg
  %indvars.iv.next167 = add nuw nsw i64 %indvars.iv166, 1
  %exitcond170.not = icmp eq i64 %indvars.iv.next167, %wide.trip.count169
  br i1 %exitcond170.not, label %for.end92, label %for.body41.us

for.end92:                                        ; preds = %for.cond53.for.end87_crit_edge.us, %for.body.lr.ph, %entry, %for.end33
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @get_luma_33(ptr nocapture noundef readonly %block, ptr nocapture noundef readonly %cur_imgY, i32 noundef %ver_block_size, i32 noundef %hor_block_size, i32 noundef %x_pos, i32 noundef %shift_x, i32 noundef %max_imgpel_value) unnamed_addr #5 {
entry:
  %cmp144 = icmp sgt i32 %ver_block_size, 0
  br i1 %cmp144, label %for.body.lr.ph, label %for.end92

for.body.lr.ph:                                   ; preds = %entry
  %0 = sext i32 %x_pos to i64
  %cmp10135 = icmp sgt i32 %hor_block_size, 0
  br i1 %cmp10135, label %for.body.us.preheader, label %for.end92

for.body.us.preheader:                            ; preds = %for.body.lr.ph
  %wide.trip.count = zext nneg i32 %ver_block_size to i64
  %1 = add nsw i32 %hor_block_size, -1
  %2 = zext i32 %1 to i64
  %3 = shl nuw nsw i64 %2, 1
  %4 = add nsw i64 %0, %2
  %5 = shl nsw i64 %4, 1
  %6 = zext nneg i32 %hor_block_size to i64
  %min.iters.check = icmp ult i32 %hor_block_size, 32
  %n.vec = and i64 %6, 2147483616
  %7 = shl nuw nsw i64 %n.vec, 1
  %8 = shl nuw nsw i64 %n.vec, 1
  %9 = shl nuw nsw i64 %n.vec, 1
  %10 = shl nuw nsw i64 %n.vec, 1
  %11 = shl nuw nsw i64 %n.vec, 1
  %12 = shl nuw nsw i64 %n.vec, 1
  %ind.end189 = trunc nuw nsw i64 %n.vec to i32
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %max_imgpel_value, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %6
  br label %for.body.us

for.body.us:                                      ; preds = %for.body.us.preheader, %for.cond9.for.inc31_crit_edge.us
  %indvars.iv161 = phi i64 [ 0, %for.body.us.preheader ], [ %indvars.iv.next162, %for.cond9.for.inc31_crit_edge.us ]
  %indvars.iv = phi i64 [ 1, %for.body.us.preheader ], [ %indvars.iv.next, %for.cond9.for.inc31_crit_edge.us ]
  %arrayidx.us = getelementptr inbounds ptr, ptr %cur_imgY, i64 %indvars.iv
  %13 = load ptr, ptr %arrayidx.us, align 8
  %14 = getelementptr i16, ptr %13, i64 %0
  %arrayidx2.us = getelementptr i8, ptr %14, i64 -4
  %add.ptr.us = getelementptr i8, ptr %14, i64 -2
  %add.ptr5.us = getelementptr inbounds i8, ptr %14, i64 4
  %add.ptr6.us = getelementptr inbounds i8, ptr %14, i64 6
  %arrayidx8.us = getelementptr inbounds ptr, ptr %block, i64 %indvars.iv161
  %15 = load ptr, ptr %arrayidx8.us, align 8
  br i1 %min.iters.check, label %for.body11.us.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %for.body.us
  %16 = getelementptr i8, ptr %15, i64 %3
  %scevgep = getelementptr i8, ptr %16, i64 2
  %17 = getelementptr i8, ptr %13, i64 %5
  %scevgep178 = getelementptr i8, ptr %17, i64 8
  %bound0 = icmp ult ptr %15, %scevgep178
  %bound1 = icmp ult ptr %arrayidx2.us, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %for.body11.us.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %ind.end = getelementptr i8, ptr %15, i64 %7
  %ind.end179 = getelementptr i8, ptr %add.ptr6.us, i64 %8
  %ind.end181 = getelementptr i8, ptr %add.ptr5.us, i64 %9
  %ind.end183 = getelementptr i8, ptr %14, i64 %10
  %ind.end185 = getelementptr i8, ptr %add.ptr.us, i64 %11
  %ind.end187 = getelementptr i8, ptr %arrayidx2.us, i64 %12
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %offset.idx = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %15, i64 %offset.idx
  %offset.idx194 = shl i64 %index, 1
  %next.gep195 = getelementptr i8, ptr %add.ptr6.us, i64 %offset.idx194
  %offset.idx199 = shl i64 %index, 1
  %next.gep200 = getelementptr i8, ptr %add.ptr5.us, i64 %offset.idx199
  %offset.idx204 = shl i64 %index, 1
  %next.gep205 = getelementptr i8, ptr %14, i64 %offset.idx204
  %offset.idx209 = shl i64 %index, 1
  %next.gep210 = getelementptr i8, ptr %add.ptr.us, i64 %offset.idx209
  %offset.idx214 = shl i64 %index, 1
  %next.gep215 = getelementptr i8, ptr %arrayidx2.us, i64 %offset.idx214
  %18 = getelementptr i8, ptr %next.gep205, i64 2
  %19 = getelementptr i8, ptr %next.gep215, i64 16
  %20 = getelementptr i8, ptr %next.gep215, i64 32
  %21 = getelementptr i8, ptr %next.gep215, i64 48
  %wide.load = load <8 x i16>, ptr %next.gep215, align 2, !alias.scope !274
  %wide.load219 = load <8 x i16>, ptr %19, align 2, !alias.scope !274
  %wide.load220 = load <8 x i16>, ptr %20, align 2, !alias.scope !274
  %wide.load221 = load <8 x i16>, ptr %21, align 2, !alias.scope !274
  %22 = zext <8 x i16> %wide.load to <8 x i32>
  %23 = zext <8 x i16> %wide.load219 to <8 x i32>
  %24 = zext <8 x i16> %wide.load220 to <8 x i32>
  %25 = zext <8 x i16> %wide.load221 to <8 x i32>
  %26 = getelementptr i8, ptr %next.gep195, i64 16
  %27 = getelementptr i8, ptr %next.gep195, i64 32
  %28 = getelementptr i8, ptr %next.gep195, i64 48
  %wide.load222 = load <8 x i16>, ptr %next.gep195, align 2, !alias.scope !274
  %wide.load223 = load <8 x i16>, ptr %26, align 2, !alias.scope !274
  %wide.load224 = load <8 x i16>, ptr %27, align 2, !alias.scope !274
  %wide.load225 = load <8 x i16>, ptr %28, align 2, !alias.scope !274
  %29 = zext <8 x i16> %wide.load222 to <8 x i32>
  %30 = zext <8 x i16> %wide.load223 to <8 x i32>
  %31 = zext <8 x i16> %wide.load224 to <8 x i32>
  %32 = zext <8 x i16> %wide.load225 to <8 x i32>
  %33 = getelementptr i8, ptr %next.gep210, i64 16
  %34 = getelementptr i8, ptr %next.gep210, i64 32
  %35 = getelementptr i8, ptr %next.gep210, i64 48
  %wide.load226 = load <8 x i16>, ptr %next.gep210, align 2, !alias.scope !274
  %wide.load227 = load <8 x i16>, ptr %33, align 2, !alias.scope !274
  %wide.load228 = load <8 x i16>, ptr %34, align 2, !alias.scope !274
  %wide.load229 = load <8 x i16>, ptr %35, align 2, !alias.scope !274
  %36 = zext <8 x i16> %wide.load226 to <8 x i32>
  %37 = zext <8 x i16> %wide.load227 to <8 x i32>
  %38 = zext <8 x i16> %wide.load228 to <8 x i32>
  %39 = zext <8 x i16> %wide.load229 to <8 x i32>
  %40 = getelementptr i8, ptr %next.gep200, i64 16
  %41 = getelementptr i8, ptr %next.gep200, i64 32
  %42 = getelementptr i8, ptr %next.gep200, i64 48
  %wide.load230 = load <8 x i16>, ptr %next.gep200, align 2, !alias.scope !274
  %wide.load231 = load <8 x i16>, ptr %40, align 2, !alias.scope !274
  %wide.load232 = load <8 x i16>, ptr %41, align 2, !alias.scope !274
  %wide.load233 = load <8 x i16>, ptr %42, align 2, !alias.scope !274
  %43 = zext <8 x i16> %wide.load230 to <8 x i32>
  %44 = zext <8 x i16> %wide.load231 to <8 x i32>
  %45 = zext <8 x i16> %wide.load232 to <8 x i32>
  %46 = zext <8 x i16> %wide.load233 to <8 x i32>
  %47 = add nuw nsw <8 x i32> %43, %36
  %48 = add nuw nsw <8 x i32> %44, %37
  %49 = add nuw nsw <8 x i32> %45, %38
  %50 = add nuw nsw <8 x i32> %46, %39
  %51 = mul nsw <8 x i32> %47, <i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5>
  %52 = mul nsw <8 x i32> %48, <i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5>
  %53 = mul nsw <8 x i32> %49, <i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5>
  %54 = mul nsw <8 x i32> %50, <i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5>
  %55 = getelementptr i8, ptr %next.gep205, i64 16
  %56 = getelementptr i8, ptr %next.gep205, i64 32
  %57 = getelementptr i8, ptr %next.gep205, i64 48
  %wide.load234 = load <8 x i16>, ptr %next.gep205, align 2, !alias.scope !274
  %wide.load235 = load <8 x i16>, ptr %55, align 2, !alias.scope !274
  %wide.load236 = load <8 x i16>, ptr %56, align 2, !alias.scope !274
  %wide.load237 = load <8 x i16>, ptr %57, align 2, !alias.scope !274
  %58 = zext <8 x i16> %wide.load234 to <8 x i32>
  %59 = zext <8 x i16> %wide.load235 to <8 x i32>
  %60 = zext <8 x i16> %wide.load236 to <8 x i32>
  %61 = zext <8 x i16> %wide.load237 to <8 x i32>
  %62 = getelementptr i8, ptr %next.gep205, i64 18
  %63 = getelementptr i8, ptr %next.gep205, i64 34
  %64 = getelementptr i8, ptr %next.gep205, i64 50
  %wide.load238 = load <8 x i16>, ptr %18, align 2, !alias.scope !274
  %wide.load239 = load <8 x i16>, ptr %62, align 2, !alias.scope !274
  %wide.load240 = load <8 x i16>, ptr %63, align 2, !alias.scope !274
  %wide.load241 = load <8 x i16>, ptr %64, align 2, !alias.scope !274
  %65 = zext <8 x i16> %wide.load238 to <8 x i32>
  %66 = zext <8 x i16> %wide.load239 to <8 x i32>
  %67 = zext <8 x i16> %wide.load240 to <8 x i32>
  %68 = zext <8 x i16> %wide.load241 to <8 x i32>
  %69 = add nuw nsw <8 x i32> %65, %58
  %70 = add nuw nsw <8 x i32> %66, %59
  %71 = add nuw nsw <8 x i32> %67, %60
  %72 = add nuw nsw <8 x i32> %68, %61
  %73 = mul nuw nsw <8 x i32> %69, <i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20>
  %74 = mul nuw nsw <8 x i32> %70, <i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20>
  %75 = mul nuw nsw <8 x i32> %71, <i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20>
  %76 = mul nuw nsw <8 x i32> %72, <i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20>
  %77 = add nuw nsw <8 x i32> %22, <i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16>
  %78 = add nuw nsw <8 x i32> %23, <i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16>
  %79 = add nuw nsw <8 x i32> %24, <i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16>
  %80 = add nuw nsw <8 x i32> %25, <i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16>
  %81 = add nuw nsw <8 x i32> %77, %29
  %82 = add nuw nsw <8 x i32> %78, %30
  %83 = add nuw nsw <8 x i32> %79, %31
  %84 = add nuw nsw <8 x i32> %80, %32
  %85 = add nsw <8 x i32> %81, %51
  %86 = add nsw <8 x i32> %82, %52
  %87 = add nsw <8 x i32> %83, %53
  %88 = add nsw <8 x i32> %84, %54
  %89 = add nsw <8 x i32> %85, %73
  %90 = add nsw <8 x i32> %86, %74
  %91 = add nsw <8 x i32> %87, %75
  %92 = add nsw <8 x i32> %88, %76
  %93 = ashr <8 x i32> %89, <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  %94 = ashr <8 x i32> %90, <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  %95 = ashr <8 x i32> %91, <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  %96 = ashr <8 x i32> %92, <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  %97 = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %93, <8 x i32> zeroinitializer)
  %98 = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %94, <8 x i32> zeroinitializer)
  %99 = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %95, <8 x i32> zeroinitializer)
  %100 = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %96, <8 x i32> zeroinitializer)
  %101 = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %97, <8 x i32> %broadcast.splat)
  %102 = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %98, <8 x i32> %broadcast.splat)
  %103 = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %99, <8 x i32> %broadcast.splat)
  %104 = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %100, <8 x i32> %broadcast.splat)
  %105 = trunc <8 x i32> %101 to <8 x i16>
  %106 = trunc <8 x i32> %102 to <8 x i16>
  %107 = trunc <8 x i32> %103 to <8 x i16>
  %108 = trunc <8 x i32> %104 to <8 x i16>
  %109 = getelementptr i8, ptr %next.gep, i64 16
  %110 = getelementptr i8, ptr %next.gep, i64 32
  %111 = getelementptr i8, ptr %next.gep, i64 48
  store <8 x i16> %105, ptr %next.gep, align 2, !alias.scope !277, !noalias !274
  store <8 x i16> %106, ptr %109, align 2, !alias.scope !277, !noalias !274
  store <8 x i16> %107, ptr %110, align 2, !alias.scope !277, !noalias !274
  store <8 x i16> %108, ptr %111, align 2, !alias.scope !277, !noalias !274
  %index.next = add nuw i64 %index, 32
  %112 = icmp eq i64 %index.next, %n.vec
  br i1 %112, label %middle.block, label %vector.body, !llvm.loop !279

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %for.cond9.for.inc31_crit_edge.us, label %for.body11.us.preheader

for.body11.us.preheader:                          ; preds = %middle.block, %vector.memcheck, %for.body.us
  %orig_line.0143.us.ph = phi ptr [ %15, %vector.memcheck ], [ %15, %for.body.us ], [ %ind.end, %middle.block ]
  %p5.0142.us.ph = phi ptr [ %add.ptr6.us, %vector.memcheck ], [ %add.ptr6.us, %for.body.us ], [ %ind.end179, %middle.block ]
  %p4.0141.us.ph = phi ptr [ %add.ptr5.us, %vector.memcheck ], [ %add.ptr5.us, %for.body.us ], [ %ind.end181, %middle.block ]
  %.pn140.us.ph = phi ptr [ %14, %vector.memcheck ], [ %14, %for.body.us ], [ %ind.end183, %middle.block ]
  %p1.0138.us.ph = phi ptr [ %add.ptr.us, %vector.memcheck ], [ %add.ptr.us, %for.body.us ], [ %ind.end185, %middle.block ]
  %p0.0137.us.ph = phi ptr [ %arrayidx2.us, %vector.memcheck ], [ %arrayidx2.us, %for.body.us ], [ %ind.end187, %middle.block ]
  %i.0136.us.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %for.body.us ], [ %ind.end189, %middle.block ]
  br label %for.body11.us

for.body11.us:                                    ; preds = %for.body11.us.preheader, %for.body11.us
  %orig_line.0143.us = phi ptr [ %incdec.ptr29.us, %for.body11.us ], [ %orig_line.0143.us.ph, %for.body11.us.preheader ]
  %p5.0142.us = phi ptr [ %incdec.ptr12.us, %for.body11.us ], [ %p5.0142.us.ph, %for.body11.us.preheader ]
  %p4.0141.us = phi ptr [ %incdec.ptr16.us, %for.body11.us ], [ %p4.0141.us.ph, %for.body11.us.preheader ]
  %.pn140.us = phi ptr [ %p3.0.us, %for.body11.us ], [ %.pn140.us.ph, %for.body11.us.preheader ]
  %p1.0138.us = phi ptr [ %incdec.ptr14.us, %for.body11.us ], [ %p1.0138.us.ph, %for.body11.us.preheader ]
  %p0.0137.us = phi ptr [ %incdec.ptr.us, %for.body11.us ], [ %p0.0137.us.ph, %for.body11.us.preheader ]
  %i.0136.us = phi i32 [ %inc30.us, %for.body11.us ], [ %i.0136.us.ph, %for.body11.us.preheader ]
  %p3.0.us = getelementptr i8, ptr %.pn140.us, i64 2
  %incdec.ptr.us = getelementptr inbounds i8, ptr %p0.0137.us, i64 2
  %113 = load i16, ptr %p0.0137.us, align 2
  %conv.us = zext i16 %113 to i32
  %incdec.ptr12.us = getelementptr inbounds i8, ptr %p5.0142.us, i64 2
  %114 = load i16, ptr %p5.0142.us, align 2
  %conv13.us = zext i16 %114 to i32
  %incdec.ptr14.us = getelementptr inbounds i8, ptr %p1.0138.us, i64 2
  %115 = load i16, ptr %p1.0138.us, align 2
  %conv15.us = zext i16 %115 to i32
  %incdec.ptr16.us = getelementptr inbounds i8, ptr %p4.0141.us, i64 2
  %116 = load i16, ptr %p4.0141.us, align 2
  %conv17.us = zext i16 %116 to i32
  %add18.us = add nuw nsw i32 %conv17.us, %conv15.us
  %mul.neg.us = mul nsw i32 %add18.us, -5
  %117 = load i16, ptr %.pn140.us, align 2
  %conv21.us = zext i16 %117 to i32
  %118 = load i16, ptr %p3.0.us, align 2
  %conv23.us = zext i16 %118 to i32
  %add24.us = add nuw nsw i32 %conv23.us, %conv21.us
  %mul25.us = mul nuw nsw i32 %add24.us, 20
  %add.us = add nuw nsw i32 %conv.us, 16
  %sub19.us = add nuw nsw i32 %add.us, %conv13.us
  %add26.us = add nsw i32 %sub19.us, %mul.neg.us
  %add27.us = add nsw i32 %add26.us, %mul25.us
  %shr.us = ashr i32 %add27.us, 5
  %cond.i.i.us = tail call noundef i32 @llvm.smax.i32(i32 %shr.us, i32 0)
  %cond.i4.i.us = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i.us, i32 %max_imgpel_value)
  %conv28.us = trunc i32 %cond.i4.i.us to i16
  %incdec.ptr29.us = getelementptr inbounds i8, ptr %orig_line.0143.us, i64 2
  store i16 %conv28.us, ptr %orig_line.0143.us, align 2
  %inc30.us = add nuw nsw i32 %i.0136.us, 1
  %exitcond.not = icmp eq i32 %inc30.us, %hor_block_size
  br i1 %exitcond.not, label %for.cond9.for.inc31_crit_edge.us, label %for.body11.us, !llvm.loop !280

for.cond9.for.inc31_crit_edge.us:                 ; preds = %for.body11.us, %middle.block
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %indvars.iv.next162 = add nuw nsw i64 %indvars.iv161, 1
  %exitcond166.not = icmp eq i64 %indvars.iv.next162, %wide.trip.count
  br i1 %exitcond166.not, label %for.end33, label %for.body.us

for.end33:                                        ; preds = %for.cond9.for.inc31_crit_edge.us
  br i1 %cmp144, label %for.body41.lr.ph, label %for.end92

for.body41.lr.ph:                                 ; preds = %for.end33
  %idx.ext = sext i32 %shift_x to i64
  %idx.ext88 = zext nneg i32 %hor_block_size to i64
  %idx.neg = sub nsw i64 0, %idx.ext88
  %arrayidx34 = getelementptr inbounds i8, ptr %cur_imgY, i64 -16
  %119 = load ptr, ptr %arrayidx34, align 8
  %120 = sext i32 %x_pos to i64
  %121 = getelementptr i16, ptr %119, i64 %120
  %arrayidx37 = getelementptr i8, ptr %121, i64 2
  %wide.trip.count171 = zext nneg i32 %ver_block_size to i64
  %122 = add nsw i32 %hor_block_size, -1
  %123 = zext i32 %122 to i64
  %124 = shl nuw nsw i64 %123, 1
  %125 = add nuw nsw i64 %124, 2
  %126 = mul nsw i64 %idx.ext, 6
  %127 = add nsw i64 %126, %124
  %128 = add nsw i64 %127, 2
  %129 = shl nsw i64 %idx.ext, 2
  %130 = add nsw i64 %129, %124
  %131 = add nsw i64 %130, 2
  %132 = shl nsw i64 %idx.ext, 3
  %133 = add nsw i64 %132, %124
  %134 = add nsw i64 %133, 2
  %135 = add nsw i64 %idx.ext, %123
  %136 = shl nsw i64 %135, 1
  %137 = add nsw i64 %136, 2
  %138 = mul nsw i64 %idx.ext, 10
  %139 = add nsw i64 %138, %124
  %140 = add nsw i64 %139, 2
  %min.iters.check274 = icmp ult i32 %hor_block_size, 32
  %n.vec277 = and i64 %idx.ext88, 2147483616
  %141 = shl nuw nsw i64 %n.vec277, 1
  %142 = shl nuw nsw i64 %n.vec277, 1
  %143 = shl nuw nsw i64 %n.vec277, 1
  %144 = shl nuw nsw i64 %n.vec277, 1
  %145 = shl nuw nsw i64 %n.vec277, 1
  %146 = shl nuw nsw i64 %n.vec277, 1
  %147 = shl nuw nsw i64 %n.vec277, 1
  %ind.end292 = trunc nuw nsw i64 %n.vec277 to i32
  %broadcast.splatinsert359 = insertelement <8 x i32> poison, i32 %max_imgpel_value, i64 0
  %broadcast.splat360 = shufflevector <8 x i32> %broadcast.splatinsert359, <8 x i32> poison, <8 x i32> zeroinitializer
  %cmp.n362 = icmp eq i64 %n.vec277, %idx.ext88
  br label %for.body41.us

for.body41.us:                                    ; preds = %for.body41.lr.ph, %for.cond53.for.end87_crit_edge.us
  %indvars.iv168 = phi i64 [ 0, %for.body41.lr.ph ], [ %indvars.iv.next169, %for.cond53.for.end87_crit_edge.us ]
  %p0.1158.us = phi ptr [ %arrayidx37, %for.body41.lr.ph ], [ %add.ptr89.us, %for.cond53.for.end87_crit_edge.us ]
  %add.ptr42.us = getelementptr i16, ptr %p0.1158.us, i64 %idx.ext
  %add.ptr44.us = getelementptr i16, ptr %add.ptr42.us, i64 %idx.ext
  %add.ptr46.us = getelementptr i16, ptr %add.ptr44.us, i64 %idx.ext
  %add.ptr48.us = getelementptr i16, ptr %add.ptr46.us, i64 %idx.ext
  %add.ptr50.us = getelementptr i16, ptr %add.ptr48.us, i64 %idx.ext
  %arrayidx52.us = getelementptr inbounds ptr, ptr %block, i64 %indvars.iv168
  %148 = load ptr, ptr %arrayidx52.us, align 8
  br i1 %min.iters.check274, label %for.body56.us.preheader, label %vector.memcheck242

vector.memcheck242:                               ; preds = %for.body41.us
  %scevgep243 = getelementptr i8, ptr %148, i64 %125
  %scevgep244 = getelementptr i8, ptr %p0.1158.us, i64 %128
  %scevgep245 = getelementptr i8, ptr %p0.1158.us, i64 %131
  %scevgep246 = getelementptr i8, ptr %p0.1158.us, i64 %134
  %scevgep247 = getelementptr i8, ptr %p0.1158.us, i64 %137
  %scevgep248 = getelementptr i8, ptr %p0.1158.us, i64 %140
  %scevgep249 = getelementptr i8, ptr %p0.1158.us, i64 %125
  %149 = insertelement <4 x ptr> poison, ptr %148, i64 0
  %150 = shufflevector <4 x ptr> %149, <4 x ptr> poison, <4 x i32> zeroinitializer
  %151 = insertelement <4 x ptr> poison, ptr %scevgep244, i64 0
  %152 = insertelement <4 x ptr> %151, ptr %scevgep245, i64 1
  %153 = insertelement <4 x ptr> %152, ptr %scevgep246, i64 2
  %154 = insertelement <4 x ptr> %153, ptr %scevgep247, i64 3
  %155 = icmp ult <4 x ptr> %150, %154
  %156 = insertelement <4 x ptr> poison, ptr %add.ptr46.us, i64 0
  %157 = insertelement <4 x ptr> %156, ptr %add.ptr44.us, i64 1
  %158 = insertelement <4 x ptr> %157, ptr %add.ptr48.us, i64 2
  %159 = insertelement <4 x ptr> %158, ptr %add.ptr42.us, i64 3
  %160 = insertelement <4 x ptr> poison, ptr %scevgep243, i64 0
  %161 = shufflevector <4 x ptr> %160, <4 x ptr> poison, <4 x i32> zeroinitializer
  %162 = icmp ult <4 x ptr> %159, %161
  %163 = and <4 x i1> %155, %162
  %bound0264 = icmp ult ptr %148, %scevgep248
  %bound1265 = icmp ult ptr %add.ptr50.us, %scevgep243
  %found.conflict266 = and i1 %bound0264, %bound1265
  %bound0268 = icmp ult ptr %148, %scevgep249
  %bound1269 = icmp ult ptr %p0.1158.us, %scevgep243
  %found.conflict270 = and i1 %bound0268, %bound1269
  %164 = bitcast <4 x i1> %163 to i4
  %165 = icmp ne i4 %164, 0
  %op.rdx = or i1 %165, %found.conflict266
  %op.rdx363 = or i1 %op.rdx, %found.conflict270
  br i1 %op.rdx363, label %for.body56.us.preheader, label %vector.ph275

vector.ph275:                                     ; preds = %vector.memcheck242
  %ind.end278 = getelementptr i8, ptr %148, i64 %141
  %ind.end280 = getelementptr i8, ptr %add.ptr50.us, i64 %142
  %ind.end282 = getelementptr i8, ptr %add.ptr48.us, i64 %143
  %ind.end284 = getelementptr i8, ptr %add.ptr46.us, i64 %144
  %ind.end286 = getelementptr i8, ptr %add.ptr44.us, i64 %145
  %ind.end288 = getelementptr i8, ptr %add.ptr42.us, i64 %146
  %ind.end290 = getelementptr i8, ptr %p0.1158.us, i64 %147
  br label %vector.body294

vector.body294:                                   ; preds = %vector.body294, %vector.ph275
  %index295 = phi i64 [ 0, %vector.ph275 ], [ %index.next361, %vector.body294 ]
  %offset.idx296 = shl i64 %index295, 1
  %next.gep297 = getelementptr i8, ptr %148, i64 %offset.idx296
  %offset.idx301 = shl i64 %index295, 1
  %next.gep302 = getelementptr i8, ptr %add.ptr50.us, i64 %offset.idx301
  %offset.idx306 = shl i64 %index295, 1
  %next.gep307 = getelementptr i8, ptr %add.ptr48.us, i64 %offset.idx306
  %offset.idx311 = shl i64 %index295, 1
  %next.gep312 = getelementptr i8, ptr %add.ptr46.us, i64 %offset.idx311
  %offset.idx316 = shl i64 %index295, 1
  %next.gep317 = getelementptr i8, ptr %add.ptr44.us, i64 %offset.idx316
  %offset.idx321 = shl i64 %index295, 1
  %next.gep322 = getelementptr i8, ptr %add.ptr42.us, i64 %offset.idx321
  %offset.idx326 = shl i64 %index295, 1
  %next.gep327 = getelementptr i8, ptr %p0.1158.us, i64 %offset.idx326
  %166 = getelementptr i8, ptr %next.gep327, i64 16
  %167 = getelementptr i8, ptr %next.gep327, i64 32
  %168 = getelementptr i8, ptr %next.gep327, i64 48
  %wide.load331 = load <8 x i16>, ptr %next.gep327, align 2, !alias.scope !281
  %wide.load332 = load <8 x i16>, ptr %166, align 2, !alias.scope !281
  %wide.load333 = load <8 x i16>, ptr %167, align 2, !alias.scope !281
  %wide.load334 = load <8 x i16>, ptr %168, align 2, !alias.scope !281
  %169 = zext <8 x i16> %wide.load331 to <8 x i32>
  %170 = zext <8 x i16> %wide.load332 to <8 x i32>
  %171 = zext <8 x i16> %wide.load333 to <8 x i32>
  %172 = zext <8 x i16> %wide.load334 to <8 x i32>
  %173 = getelementptr i8, ptr %next.gep302, i64 16
  %174 = getelementptr i8, ptr %next.gep302, i64 32
  %175 = getelementptr i8, ptr %next.gep302, i64 48
  %wide.load335 = load <8 x i16>, ptr %next.gep302, align 2, !alias.scope !284
  %wide.load336 = load <8 x i16>, ptr %173, align 2, !alias.scope !284
  %wide.load337 = load <8 x i16>, ptr %174, align 2, !alias.scope !284
  %wide.load338 = load <8 x i16>, ptr %175, align 2, !alias.scope !284
  %176 = zext <8 x i16> %wide.load335 to <8 x i32>
  %177 = zext <8 x i16> %wide.load336 to <8 x i32>
  %178 = zext <8 x i16> %wide.load337 to <8 x i32>
  %179 = zext <8 x i16> %wide.load338 to <8 x i32>
  %180 = getelementptr i8, ptr %next.gep322, i64 16
  %181 = getelementptr i8, ptr %next.gep322, i64 32
  %182 = getelementptr i8, ptr %next.gep322, i64 48
  %wide.load339 = load <8 x i16>, ptr %next.gep322, align 2, !alias.scope !286
  %wide.load340 = load <8 x i16>, ptr %180, align 2, !alias.scope !286
  %wide.load341 = load <8 x i16>, ptr %181, align 2, !alias.scope !286
  %wide.load342 = load <8 x i16>, ptr %182, align 2, !alias.scope !286
  %183 = zext <8 x i16> %wide.load339 to <8 x i32>
  %184 = zext <8 x i16> %wide.load340 to <8 x i32>
  %185 = zext <8 x i16> %wide.load341 to <8 x i32>
  %186 = zext <8 x i16> %wide.load342 to <8 x i32>
  %187 = getelementptr i8, ptr %next.gep307, i64 16
  %188 = getelementptr i8, ptr %next.gep307, i64 32
  %189 = getelementptr i8, ptr %next.gep307, i64 48
  %wide.load343 = load <8 x i16>, ptr %next.gep307, align 2, !alias.scope !288
  %wide.load344 = load <8 x i16>, ptr %187, align 2, !alias.scope !288
  %wide.load345 = load <8 x i16>, ptr %188, align 2, !alias.scope !288
  %wide.load346 = load <8 x i16>, ptr %189, align 2, !alias.scope !288
  %190 = zext <8 x i16> %wide.load343 to <8 x i32>
  %191 = zext <8 x i16> %wide.load344 to <8 x i32>
  %192 = zext <8 x i16> %wide.load345 to <8 x i32>
  %193 = zext <8 x i16> %wide.load346 to <8 x i32>
  %194 = add nuw nsw <8 x i32> %190, %183
  %195 = add nuw nsw <8 x i32> %191, %184
  %196 = add nuw nsw <8 x i32> %192, %185
  %197 = add nuw nsw <8 x i32> %193, %186
  %198 = mul nsw <8 x i32> %194, <i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5>
  %199 = mul nsw <8 x i32> %195, <i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5>
  %200 = mul nsw <8 x i32> %196, <i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5>
  %201 = mul nsw <8 x i32> %197, <i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5>
  %202 = getelementptr i8, ptr %next.gep317, i64 16
  %203 = getelementptr i8, ptr %next.gep317, i64 32
  %204 = getelementptr i8, ptr %next.gep317, i64 48
  %wide.load347 = load <8 x i16>, ptr %next.gep317, align 2, !alias.scope !290
  %wide.load348 = load <8 x i16>, ptr %202, align 2, !alias.scope !290
  %wide.load349 = load <8 x i16>, ptr %203, align 2, !alias.scope !290
  %wide.load350 = load <8 x i16>, ptr %204, align 2, !alias.scope !290
  %205 = zext <8 x i16> %wide.load347 to <8 x i32>
  %206 = zext <8 x i16> %wide.load348 to <8 x i32>
  %207 = zext <8 x i16> %wide.load349 to <8 x i32>
  %208 = zext <8 x i16> %wide.load350 to <8 x i32>
  %209 = getelementptr i8, ptr %next.gep312, i64 16
  %210 = getelementptr i8, ptr %next.gep312, i64 32
  %211 = getelementptr i8, ptr %next.gep312, i64 48
  %wide.load351 = load <8 x i16>, ptr %next.gep312, align 2, !alias.scope !292
  %wide.load352 = load <8 x i16>, ptr %209, align 2, !alias.scope !292
  %wide.load353 = load <8 x i16>, ptr %210, align 2, !alias.scope !292
  %wide.load354 = load <8 x i16>, ptr %211, align 2, !alias.scope !292
  %212 = zext <8 x i16> %wide.load351 to <8 x i32>
  %213 = zext <8 x i16> %wide.load352 to <8 x i32>
  %214 = zext <8 x i16> %wide.load353 to <8 x i32>
  %215 = zext <8 x i16> %wide.load354 to <8 x i32>
  %216 = add nuw nsw <8 x i32> %212, %205
  %217 = add nuw nsw <8 x i32> %213, %206
  %218 = add nuw nsw <8 x i32> %214, %207
  %219 = add nuw nsw <8 x i32> %215, %208
  %220 = mul nuw nsw <8 x i32> %216, <i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20>
  %221 = mul nuw nsw <8 x i32> %217, <i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20>
  %222 = mul nuw nsw <8 x i32> %218, <i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20>
  %223 = mul nuw nsw <8 x i32> %219, <i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20>
  %224 = getelementptr i8, ptr %next.gep297, i64 16
  %225 = getelementptr i8, ptr %next.gep297, i64 32
  %226 = getelementptr i8, ptr %next.gep297, i64 48
  %wide.load355 = load <8 x i16>, ptr %next.gep297, align 2, !alias.scope !294, !noalias !296
  %wide.load356 = load <8 x i16>, ptr %224, align 2, !alias.scope !294, !noalias !296
  %wide.load357 = load <8 x i16>, ptr %225, align 2, !alias.scope !294, !noalias !296
  %wide.load358 = load <8 x i16>, ptr %226, align 2, !alias.scope !294, !noalias !296
  %227 = zext <8 x i16> %wide.load355 to <8 x i32>
  %228 = zext <8 x i16> %wide.load356 to <8 x i32>
  %229 = zext <8 x i16> %wide.load357 to <8 x i32>
  %230 = zext <8 x i16> %wide.load358 to <8 x i32>
  %231 = add nuw nsw <8 x i32> %169, <i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16>
  %232 = add nuw nsw <8 x i32> %170, <i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16>
  %233 = add nuw nsw <8 x i32> %171, <i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16>
  %234 = add nuw nsw <8 x i32> %172, <i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16>
  %235 = add nuw nsw <8 x i32> %231, %176
  %236 = add nuw nsw <8 x i32> %232, %177
  %237 = add nuw nsw <8 x i32> %233, %178
  %238 = add nuw nsw <8 x i32> %234, %179
  %239 = add nsw <8 x i32> %235, %198
  %240 = add nsw <8 x i32> %236, %199
  %241 = add nsw <8 x i32> %237, %200
  %242 = add nsw <8 x i32> %238, %201
  %243 = add nsw <8 x i32> %239, %220
  %244 = add nsw <8 x i32> %240, %221
  %245 = add nsw <8 x i32> %241, %222
  %246 = add nsw <8 x i32> %242, %223
  %247 = ashr <8 x i32> %243, <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  %248 = ashr <8 x i32> %244, <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  %249 = ashr <8 x i32> %245, <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  %250 = ashr <8 x i32> %246, <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  %251 = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %247, <8 x i32> zeroinitializer)
  %252 = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %248, <8 x i32> zeroinitializer)
  %253 = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %249, <8 x i32> zeroinitializer)
  %254 = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %250, <8 x i32> zeroinitializer)
  %255 = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %251, <8 x i32> %broadcast.splat360)
  %256 = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %252, <8 x i32> %broadcast.splat360)
  %257 = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %253, <8 x i32> %broadcast.splat360)
  %258 = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %254, <8 x i32> %broadcast.splat360)
  %259 = add nuw nsw <8 x i32> %227, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %260 = add nuw nsw <8 x i32> %228, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %261 = add nuw nsw <8 x i32> %229, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %262 = add nuw nsw <8 x i32> %230, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %263 = add nsw <8 x i32> %259, %255
  %264 = add nsw <8 x i32> %260, %256
  %265 = add nsw <8 x i32> %261, %257
  %266 = add nsw <8 x i32> %262, %258
  %267 = lshr <8 x i32> %263, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %268 = lshr <8 x i32> %264, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %269 = lshr <8 x i32> %265, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %270 = lshr <8 x i32> %266, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %271 = trunc <8 x i32> %267 to <8 x i16>
  %272 = trunc <8 x i32> %268 to <8 x i16>
  %273 = trunc <8 x i32> %269 to <8 x i16>
  %274 = trunc <8 x i32> %270 to <8 x i16>
  store <8 x i16> %271, ptr %next.gep297, align 2, !alias.scope !294, !noalias !296
  store <8 x i16> %272, ptr %224, align 2, !alias.scope !294, !noalias !296
  store <8 x i16> %273, ptr %225, align 2, !alias.scope !294, !noalias !296
  store <8 x i16> %274, ptr %226, align 2, !alias.scope !294, !noalias !296
  %index.next361 = add nuw i64 %index295, 32
  %275 = icmp eq i64 %index.next361, %n.vec277
  br i1 %275, label %middle.block272, label %vector.body294, !llvm.loop !297

middle.block272:                                  ; preds = %vector.body294
  br i1 %cmp.n362, label %for.cond53.for.end87_crit_edge.us, label %for.body56.us.preheader

for.body56.us.preheader:                          ; preds = %middle.block272, %vector.memcheck242, %for.body41.us
  %orig_line.1155.us.ph = phi ptr [ %148, %vector.memcheck242 ], [ %148, %for.body41.us ], [ %ind.end278, %middle.block272 ]
  %p5.1154.us.ph = phi ptr [ %add.ptr50.us, %vector.memcheck242 ], [ %add.ptr50.us, %for.body41.us ], [ %ind.end280, %middle.block272 ]
  %p4.1153.us.ph = phi ptr [ %add.ptr48.us, %vector.memcheck242 ], [ %add.ptr48.us, %for.body41.us ], [ %ind.end282, %middle.block272 ]
  %p3.1152.us.ph = phi ptr [ %add.ptr46.us, %vector.memcheck242 ], [ %add.ptr46.us, %for.body41.us ], [ %ind.end284, %middle.block272 ]
  %p2.1151.us.ph = phi ptr [ %add.ptr44.us, %vector.memcheck242 ], [ %add.ptr44.us, %for.body41.us ], [ %ind.end286, %middle.block272 ]
  %p1.1150.us.ph = phi ptr [ %add.ptr42.us, %vector.memcheck242 ], [ %add.ptr42.us, %for.body41.us ], [ %ind.end288, %middle.block272 ]
  %p0.2149.us.ph = phi ptr [ %p0.1158.us, %vector.memcheck242 ], [ %p0.1158.us, %for.body41.us ], [ %ind.end290, %middle.block272 ]
  %i.1148.us.ph = phi i32 [ 0, %vector.memcheck242 ], [ 0, %for.body41.us ], [ %ind.end292, %middle.block272 ]
  br label %for.body56.us

for.body56.us:                                    ; preds = %for.body56.us.preheader, %for.body56.us
  %orig_line.1155.us = phi ptr [ %incdec.ptr84.us, %for.body56.us ], [ %orig_line.1155.us.ph, %for.body56.us.preheader ]
  %p5.1154.us = phi ptr [ %incdec.ptr59.us, %for.body56.us ], [ %p5.1154.us.ph, %for.body56.us.preheader ]
  %p4.1153.us = phi ptr [ %incdec.ptr64.us, %for.body56.us ], [ %p4.1153.us.ph, %for.body56.us.preheader ]
  %p3.1152.us = phi ptr [ %incdec.ptr71.us, %for.body56.us ], [ %p3.1152.us.ph, %for.body56.us.preheader ]
  %p2.1151.us = phi ptr [ %incdec.ptr69.us, %for.body56.us ], [ %p2.1151.us.ph, %for.body56.us.preheader ]
  %p1.1150.us = phi ptr [ %incdec.ptr62.us, %for.body56.us ], [ %p1.1150.us.ph, %for.body56.us.preheader ]
  %p0.2149.us = phi ptr [ %incdec.ptr57.us, %for.body56.us ], [ %p0.2149.us.ph, %for.body56.us.preheader ]
  %i.1148.us = phi i32 [ %inc86.us, %for.body56.us ], [ %i.1148.us.ph, %for.body56.us.preheader ]
  %incdec.ptr57.us = getelementptr inbounds i8, ptr %p0.2149.us, i64 2
  %276 = load i16, ptr %p0.2149.us, align 2
  %conv58.us = zext i16 %276 to i32
  %incdec.ptr59.us = getelementptr inbounds i8, ptr %p5.1154.us, i64 2
  %277 = load i16, ptr %p5.1154.us, align 2
  %conv60.us = zext i16 %277 to i32
  %incdec.ptr62.us = getelementptr inbounds i8, ptr %p1.1150.us, i64 2
  %278 = load i16, ptr %p1.1150.us, align 2
  %conv63.us = zext i16 %278 to i32
  %incdec.ptr64.us = getelementptr inbounds i8, ptr %p4.1153.us, i64 2
  %279 = load i16, ptr %p4.1153.us, align 2
  %conv65.us = zext i16 %279 to i32
  %add66.us = add nuw nsw i32 %conv65.us, %conv63.us
  %mul67.neg.us = mul nsw i32 %add66.us, -5
  %incdec.ptr69.us = getelementptr inbounds i8, ptr %p2.1151.us, i64 2
  %280 = load i16, ptr %p2.1151.us, align 2
  %conv70.us = zext i16 %280 to i32
  %incdec.ptr71.us = getelementptr inbounds i8, ptr %p3.1152.us, i64 2
  %281 = load i16, ptr %p3.1152.us, align 2
  %conv72.us = zext i16 %281 to i32
  %add73.us = add nuw nsw i32 %conv72.us, %conv70.us
  %mul74.us = mul nuw nsw i32 %add73.us, 20
  %282 = load i16, ptr %orig_line.1155.us, align 2
  %conv76.us = zext i16 %282 to i32
  %add61.us = add nuw nsw i32 %conv58.us, 16
  %sub68.us = add nuw nsw i32 %add61.us, %conv60.us
  %add75.us = add nsw i32 %sub68.us, %mul67.neg.us
  %add77.us = add nsw i32 %add75.us, %mul74.us
  %shr78.us = ashr i32 %add77.us, 5
  %cond.i.i133.us = tail call noundef i32 @llvm.smax.i32(i32 %shr78.us, i32 0)
  %cond.i4.i134.us = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i133.us, i32 %max_imgpel_value)
  %add80.us = add nuw nsw i32 %conv76.us, 1
  %add81.us = add nsw i32 %add80.us, %cond.i4.i134.us
  %shr82.us = lshr i32 %add81.us, 1
  %conv83.us = trunc i32 %shr82.us to i16
  store i16 %conv83.us, ptr %orig_line.1155.us, align 2
  %incdec.ptr84.us = getelementptr inbounds i8, ptr %orig_line.1155.us, i64 2
  %inc86.us = add nuw nsw i32 %i.1148.us, 1
  %exitcond167.not = icmp eq i32 %inc86.us, %hor_block_size
  br i1 %exitcond167.not, label %for.cond53.for.end87_crit_edge.us, label %for.body56.us, !llvm.loop !298

for.cond53.for.end87_crit_edge.us:                ; preds = %for.body56.us, %middle.block272
  %incdec.ptr62.us.lcssa = phi ptr [ %ind.end288, %middle.block272 ], [ %incdec.ptr62.us, %for.body56.us ]
  %add.ptr89.us = getelementptr inbounds i16, ptr %incdec.ptr62.us.lcssa, i64 %idx.neg
  %indvars.iv.next169 = add nuw nsw i64 %indvars.iv168, 1
  %exitcond172.not = icmp eq i64 %indvars.iv.next169, %wide.trip.count171
  br i1 %exitcond172.not, label %for.end92, label %for.body41.us

for.end92:                                        ; preds = %for.cond53.for.end87_crit_edge.us, %for.body.lr.ph, %entry, %for.end33
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @intra_cr_decoding(ptr noundef %currMB, i32 noundef %yuv) local_unnamed_addr #0 {
entry:
  %p_Vid1 = getelementptr inbounds i8, ptr %currMB, i64 8
  %0 = load ptr, ptr %p_Vid1, align 8
  %1 = load ptr, ptr %currMB, align 8
  %dec_picture2 = getelementptr inbounds i8, ptr %1, i64 13520
  %2 = load ptr, ptr %dec_picture2, align 8
  %intrapred_chroma = getelementptr inbounds i8, ptr %1, i64 13472
  %3 = load ptr, ptr %intrapred_chroma, align 8
  tail call void %3(ptr noundef nonnull %currMB) #10
  %is_lossless = getelementptr inbounds i8, ptr %currMB, i64 92
  %itrans_4x4 = getelementptr inbounds i8, ptr %currMB, i64 432
  %imgUV = getelementptr inbounds i8, ptr %2, i64 136
  %c_ipred_mode = getelementptr inbounds i8, ptr %currMB, i64 373
  %mb_cr_size_y = getelementptr inbounds i8, ptr %0, i64 849112
  %mb_cr_size_x = getelementptr inbounds i8, ptr %0, i64 849108
  %cof = getelementptr inbounds i8, ptr %1, i64 1272
  %mb_rres = getelementptr inbounds i8, ptr %1, i64 1264
  %mb_type = getelementptr inbounds i8, ptr %currMB, i64 152
  %cbp = getelementptr inbounds i8, ptr %currMB, i64 284
  %num_uv_blocks = getelementptr inbounds i8, ptr %0, i64 849100
  %idxprom50 = sext i32 %yuv to i64
  %pix_c_y = getelementptr inbounds i8, ptr %currMB, i64 56
  %mb_rec = getelementptr inbounds i8, ptr %1, i64 1256
  %pix_c_x = getelementptr inbounds i8, ptr %currMB, i64 52
  %mb_pred = getelementptr inbounds i8, ptr %1, i64 1248
  br label %for.body

for.body:                                         ; preds = %entry, %for.inc158
  %cmp = phi i1 [ true, %entry ], [ false, %for.inc158 ]
  %indvars.iv289 = phi i64 [ 0, %entry ], [ 1, %for.inc158 ]
  %4 = load i32, ptr %is_lossless, align 4
  %cmp3 = icmp eq i32 %4, 0
  %cond = select i1 %cmp3, ptr @itrans4x4, ptr @itrans4x4_ls
  store ptr %cond, ptr %itrans_4x4, align 8
  %5 = load ptr, ptr %imgUV, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %5, i64 %indvars.iv289
  %6 = load ptr, ptr %arrayidx, align 8
  br i1 %cmp3, label %if.end36, label %if.then

if.then:                                          ; preds = %for.body
  %7 = load i8, ptr %c_ipred_mode, align 1
  %.off = add i8 %7, -1
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %if.then11, label %for.cond12.preheader

for.cond12.preheader:                             ; preds = %if.then
  %8 = load i32, ptr %mb_cr_size_y, align 8
  %cmp13250 = icmp sgt i32 %8, 0
  br i1 %cmp13250, label %for.cond16.preheader.lr.ph, label %if.end36

for.cond16.preheader.lr.ph:                       ; preds = %for.cond12.preheader
  %9 = add nuw nsw i64 %indvars.iv289, 1
  %10 = load i32, ptr %mb_cr_size_x, align 4
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %for.cond16.preheader, label %if.end36

if.then11:                                        ; preds = %if.then
  %12 = trunc nuw nsw i64 %indvars.iv289 to i32
  tail call void @Inv_Residual_trans_Chroma(ptr noundef nonnull %currMB, i32 noundef %12) #10
  br label %if.end36

for.cond16.preheader:                             ; preds = %for.cond16.preheader.lr.ph, %for.inc33
  %13 = phi i32 [ %24, %for.inc33 ], [ %8, %for.cond16.preheader.lr.ph ]
  %14 = phi i32 [ %25, %for.inc33 ], [ %10, %for.cond16.preheader.lr.ph ]
  %indvars.iv266 = phi i64 [ %indvars.iv.next267, %for.inc33 ], [ 0, %for.cond16.preheader.lr.ph ]
  %cmp17248 = icmp sgt i32 %14, 0
  br i1 %cmp17248, label %for.body19, label %for.inc33

for.body19:                                       ; preds = %for.cond16.preheader, %for.body19
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body19 ], [ 0, %for.cond16.preheader ]
  %15 = load ptr, ptr %cof, align 8
  %arrayidx21 = getelementptr inbounds ptr, ptr %15, i64 %9
  %16 = load ptr, ptr %arrayidx21, align 8
  %arrayidx23 = getelementptr inbounds ptr, ptr %16, i64 %indvars.iv266
  %17 = load ptr, ptr %arrayidx23, align 8
  %arrayidx25 = getelementptr inbounds i32, ptr %17, i64 %indvars.iv
  %18 = load i32, ptr %arrayidx25, align 4
  %19 = load ptr, ptr %mb_rres, align 8
  %arrayidx28 = getelementptr inbounds ptr, ptr %19, i64 %9
  %20 = load ptr, ptr %arrayidx28, align 8
  %arrayidx30 = getelementptr inbounds ptr, ptr %20, i64 %indvars.iv266
  %21 = load ptr, ptr %arrayidx30, align 8
  %arrayidx32 = getelementptr inbounds i32, ptr %21, i64 %indvars.iv
  store i32 %18, ptr %arrayidx32, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %22 = load i32, ptr %mb_cr_size_x, align 4
  %23 = sext i32 %22 to i64
  %cmp17 = icmp slt i64 %indvars.iv.next, %23
  br i1 %cmp17, label %for.body19, label %for.inc33.loopexit

for.inc33.loopexit:                               ; preds = %for.body19
  %.pre = load i32, ptr %mb_cr_size_y, align 8
  br label %for.inc33

for.inc33:                                        ; preds = %for.inc33.loopexit, %for.cond16.preheader
  %24 = phi i32 [ %.pre, %for.inc33.loopexit ], [ %13, %for.cond16.preheader ]
  %25 = phi i32 [ %22, %for.inc33.loopexit ], [ %14, %for.cond16.preheader ]
  %indvars.iv.next267 = add nuw nsw i64 %indvars.iv266, 1
  %26 = sext i32 %24 to i64
  %cmp13 = icmp slt i64 %indvars.iv.next267, %26
  br i1 %cmp13, label %for.cond16.preheader, label %if.end36, !llvm.loop !299

if.end36:                                         ; preds = %for.inc33, %for.cond16.preheader.lr.ph, %for.cond12.preheader, %if.then11, %for.body
  %27 = load i16, ptr %mb_type, align 8
  %cmp38 = icmp eq i16 %27, 12
  br i1 %cmp38, label %if.then86, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end36
  %28 = load i32, ptr %cbp, align 4
  %tobool40.not = icmp ult i32 %28, 16
  %29 = load i32, ptr %num_uv_blocks, align 4
  %cmp118256 = icmp sgt i32 %29, 0
  br i1 %tobool40.not, label %for.cond116.preheader, label %for.cond42.preheader

for.cond42.preheader:                             ; preds = %land.lhs.true
  br i1 %cmp118256, label %for.cond46.preheader.lr.ph, label %for.inc158

for.cond46.preheader.lr.ph:                       ; preds = %for.cond42.preheader
  %30 = add nuw nsw i64 %indvars.iv289, 1
  %31 = trunc nuw nsw i64 %30 to i32
  br label %for.cond46.preheader

for.cond116.preheader:                            ; preds = %land.lhs.true
  br i1 %cmp118256, label %for.cond121.preheader, label %for.inc158

for.cond46.preheader:                             ; preds = %for.cond46.preheader.lr.ph, %for.cond46.preheader
  %indvars.iv272 = phi i64 [ 0, %for.cond46.preheader.lr.ph ], [ %indvars.iv.next273, %for.cond46.preheader ]
  %arrayidx55 = getelementptr inbounds [3 x [8 x [4 x i8]]], ptr @subblk_offset_y, i64 0, i64 %idxprom50, i64 %indvars.iv272, i64 0
  %32 = load i8, ptr %arrayidx55, align 4
  %conv56 = zext i8 %32 to i32
  %arrayidx62 = getelementptr inbounds [3 x [8 x [4 x i8]]], ptr @subblk_offset_x, i64 0, i64 %idxprom50, i64 %indvars.iv272, i64 0
  %33 = load i8, ptr %arrayidx62, align 4
  %conv63 = zext i8 %33 to i32
  %34 = load ptr, ptr %itrans_4x4, align 8
  tail call void %34(ptr noundef nonnull %currMB, i32 noundef %31, i32 noundef %conv63, i32 noundef %conv56) #10
  %35 = load i32, ptr %pix_c_y, align 8
  %add66 = add nsw i32 %35, %conv56
  %idxprom67 = sext i32 %add66 to i64
  %arrayidx68 = getelementptr inbounds ptr, ptr %6, i64 %idxprom67
  %36 = load ptr, ptr %mb_rec, align 8
  %arrayidx71 = getelementptr inbounds ptr, ptr %36, i64 %30
  %37 = load ptr, ptr %arrayidx71, align 8
  %idxprom72 = zext i8 %32 to i64
  %arrayidx73 = getelementptr inbounds ptr, ptr %37, i64 %idxprom72
  %38 = load i32, ptr %pix_c_x, align 4
  %add74 = add nsw i32 %38, %conv63
  tail call void @copy_image_data_4x4(ptr noundef %arrayidx68, ptr noundef %arrayidx73, i32 noundef %add74, i32 noundef %conv63) #10
  %arrayidx55.1 = getelementptr inbounds [3 x [8 x [4 x i8]]], ptr @subblk_offset_y, i64 0, i64 %idxprom50, i64 %indvars.iv272, i64 1
  %39 = load i8, ptr %arrayidx55.1, align 1
  %conv56.1 = zext i8 %39 to i32
  %arrayidx62.1 = getelementptr inbounds [3 x [8 x [4 x i8]]], ptr @subblk_offset_x, i64 0, i64 %idxprom50, i64 %indvars.iv272, i64 1
  %40 = load i8, ptr %arrayidx62.1, align 1
  %conv63.1 = zext i8 %40 to i32
  %41 = load ptr, ptr %itrans_4x4, align 8
  tail call void %41(ptr noundef nonnull %currMB, i32 noundef %31, i32 noundef %conv63.1, i32 noundef %conv56.1) #10
  %42 = load i32, ptr %pix_c_y, align 8
  %add66.1 = add nsw i32 %42, %conv56.1
  %idxprom67.1 = sext i32 %add66.1 to i64
  %arrayidx68.1 = getelementptr inbounds ptr, ptr %6, i64 %idxprom67.1
  %43 = load ptr, ptr %mb_rec, align 8
  %arrayidx71.1 = getelementptr inbounds ptr, ptr %43, i64 %30
  %44 = load ptr, ptr %arrayidx71.1, align 8
  %idxprom72.1 = zext i8 %39 to i64
  %arrayidx73.1 = getelementptr inbounds ptr, ptr %44, i64 %idxprom72.1
  %45 = load i32, ptr %pix_c_x, align 4
  %add74.1 = add nsw i32 %45, %conv63.1
  tail call void @copy_image_data_4x4(ptr noundef %arrayidx68.1, ptr noundef %arrayidx73.1, i32 noundef %add74.1, i32 noundef %conv63.1) #10
  %arrayidx55.2 = getelementptr inbounds [3 x [8 x [4 x i8]]], ptr @subblk_offset_y, i64 0, i64 %idxprom50, i64 %indvars.iv272, i64 2
  %46 = load i8, ptr %arrayidx55.2, align 2
  %conv56.2 = zext i8 %46 to i32
  %arrayidx62.2 = getelementptr inbounds [3 x [8 x [4 x i8]]], ptr @subblk_offset_x, i64 0, i64 %idxprom50, i64 %indvars.iv272, i64 2
  %47 = load i8, ptr %arrayidx62.2, align 2
  %conv63.2 = zext i8 %47 to i32
  %48 = load ptr, ptr %itrans_4x4, align 8
  tail call void %48(ptr noundef nonnull %currMB, i32 noundef %31, i32 noundef %conv63.2, i32 noundef %conv56.2) #10
  %49 = load i32, ptr %pix_c_y, align 8
  %add66.2 = add nsw i32 %49, %conv56.2
  %idxprom67.2 = sext i32 %add66.2 to i64
  %arrayidx68.2 = getelementptr inbounds ptr, ptr %6, i64 %idxprom67.2
  %50 = load ptr, ptr %mb_rec, align 8
  %arrayidx71.2 = getelementptr inbounds ptr, ptr %50, i64 %30
  %51 = load ptr, ptr %arrayidx71.2, align 8
  %idxprom72.2 = zext i8 %46 to i64
  %arrayidx73.2 = getelementptr inbounds ptr, ptr %51, i64 %idxprom72.2
  %52 = load i32, ptr %pix_c_x, align 4
  %add74.2 = add nsw i32 %52, %conv63.2
  tail call void @copy_image_data_4x4(ptr noundef %arrayidx68.2, ptr noundef %arrayidx73.2, i32 noundef %add74.2, i32 noundef %conv63.2) #10
  %arrayidx55.3 = getelementptr inbounds [3 x [8 x [4 x i8]]], ptr @subblk_offset_y, i64 0, i64 %idxprom50, i64 %indvars.iv272, i64 3
  %53 = load i8, ptr %arrayidx55.3, align 1
  %conv56.3 = zext i8 %53 to i32
  %arrayidx62.3 = getelementptr inbounds [3 x [8 x [4 x i8]]], ptr @subblk_offset_x, i64 0, i64 %idxprom50, i64 %indvars.iv272, i64 3
  %54 = load i8, ptr %arrayidx62.3, align 1
  %conv63.3 = zext i8 %54 to i32
  %55 = load ptr, ptr %itrans_4x4, align 8
  tail call void %55(ptr noundef nonnull %currMB, i32 noundef %31, i32 noundef %conv63.3, i32 noundef %conv56.3) #10
  %56 = load i32, ptr %pix_c_y, align 8
  %add66.3 = add nsw i32 %56, %conv56.3
  %idxprom67.3 = sext i32 %add66.3 to i64
  %arrayidx68.3 = getelementptr inbounds ptr, ptr %6, i64 %idxprom67.3
  %57 = load ptr, ptr %mb_rec, align 8
  %arrayidx71.3 = getelementptr inbounds ptr, ptr %57, i64 %30
  %58 = load ptr, ptr %arrayidx71.3, align 8
  %idxprom72.3 = zext i8 %53 to i64
  %arrayidx73.3 = getelementptr inbounds ptr, ptr %58, i64 %idxprom72.3
  %59 = load i32, ptr %pix_c_x, align 4
  %add74.3 = add nsw i32 %59, %conv63.3
  tail call void @copy_image_data_4x4(ptr noundef %arrayidx68.3, ptr noundef %arrayidx73.3, i32 noundef %add74.3, i32 noundef %conv63.3) #10
  %indvars.iv.next273 = add nuw nsw i64 %indvars.iv272, 1
  %60 = load i32, ptr %num_uv_blocks, align 4
  %61 = sext i32 %60 to i64
  %cmp43 = icmp slt i64 %indvars.iv.next273, %61
  br i1 %cmp43, label %for.cond46.preheader, label %for.inc158

if.then86:                                        ; preds = %if.end36
  %62 = trunc nuw nsw i64 %indvars.iv289 to i32
  tail call void @itrans_sp_cr(ptr noundef nonnull %currMB, i32 noundef %62) #10
  %63 = add nuw nsw i64 %indvars.iv289, 1
  %64 = load ptr, ptr %itrans_4x4, align 8
  %65 = trunc nuw nsw i64 %63 to i32
  tail call void %64(ptr noundef nonnull %currMB, i32 noundef %65, i32 noundef 0, i32 noundef 0) #10
  %66 = load i32, ptr %pix_c_y, align 8
  %idxprom99 = sext i32 %66 to i64
  %arrayidx100 = getelementptr inbounds ptr, ptr %6, i64 %idxprom99
  %67 = load ptr, ptr %mb_rec, align 8
  %arrayidx104 = getelementptr inbounds ptr, ptr %67, i64 %63
  %68 = load ptr, ptr %arrayidx104, align 8
  %69 = load i32, ptr %pix_c_x, align 4
  tail call void @copy_image_data_4x4(ptr noundef %arrayidx100, ptr noundef %68, i32 noundef %69, i32 noundef 0) #10
  %70 = load ptr, ptr %itrans_4x4, align 8
  tail call void %70(ptr noundef nonnull %currMB, i32 noundef %65, i32 noundef 4, i32 noundef 0) #10
  %71 = load i32, ptr %pix_c_y, align 8
  %idxprom99.1 = sext i32 %71 to i64
  %arrayidx100.1 = getelementptr inbounds ptr, ptr %6, i64 %idxprom99.1
  %72 = load ptr, ptr %mb_rec, align 8
  %arrayidx104.1 = getelementptr inbounds ptr, ptr %72, i64 %63
  %73 = load ptr, ptr %arrayidx104.1, align 8
  %74 = load i32, ptr %pix_c_x, align 4
  %add108.1 = add nsw i32 %74, 4
  tail call void @copy_image_data_4x4(ptr noundef %arrayidx100.1, ptr noundef %73, i32 noundef %add108.1, i32 noundef 4) #10
  %75 = load ptr, ptr %itrans_4x4, align 8
  tail call void %75(ptr noundef nonnull %currMB, i32 noundef %65, i32 noundef 0, i32 noundef 4) #10
  %76 = load i32, ptr %pix_c_y, align 8
  %77 = sext i32 %76 to i64
  %78 = getelementptr ptr, ptr %6, i64 %77
  %arrayidx100.1286 = getelementptr i8, ptr %78, i64 32
  %79 = load ptr, ptr %mb_rec, align 8
  %arrayidx104.1287 = getelementptr inbounds ptr, ptr %79, i64 %63
  %80 = load ptr, ptr %arrayidx104.1287, align 8
  %arrayidx106.1288 = getelementptr inbounds i8, ptr %80, i64 32
  %81 = load i32, ptr %pix_c_x, align 4
  tail call void @copy_image_data_4x4(ptr noundef %arrayidx100.1286, ptr noundef nonnull %arrayidx106.1288, i32 noundef %81, i32 noundef 0) #10
  %82 = load ptr, ptr %itrans_4x4, align 8
  tail call void %82(ptr noundef nonnull %currMB, i32 noundef %65, i32 noundef 4, i32 noundef 4) #10
  %83 = load i32, ptr %pix_c_y, align 8
  %84 = sext i32 %83 to i64
  %85 = getelementptr ptr, ptr %6, i64 %84
  %arrayidx100.1.1 = getelementptr i8, ptr %85, i64 32
  %86 = load ptr, ptr %mb_rec, align 8
  %arrayidx104.1.1 = getelementptr inbounds ptr, ptr %86, i64 %63
  %87 = load ptr, ptr %arrayidx104.1.1, align 8
  %arrayidx106.1.1 = getelementptr inbounds i8, ptr %87, i64 32
  %88 = load i32, ptr %pix_c_x, align 4
  %add108.1.1 = add nsw i32 %88, 4
  tail call void @copy_image_data_4x4(ptr noundef %arrayidx100.1.1, ptr noundef nonnull %arrayidx106.1.1, i32 noundef %add108.1.1, i32 noundef 4) #10
  br label %for.inc158

for.cond121.preheader:                            ; preds = %for.cond116.preheader, %for.cond121.preheader
  %indvars.iv278 = phi i64 [ %indvars.iv.next279, %for.cond121.preheader ], [ 0, %for.cond116.preheader ]
  %arrayidx130 = getelementptr inbounds [3 x [8 x [4 x i8]]], ptr @subblk_offset_y, i64 0, i64 %idxprom50, i64 %indvars.iv278, i64 0
  %89 = load i8, ptr %arrayidx130, align 4
  %conv131 = zext i8 %89 to i32
  %arrayidx137 = getelementptr inbounds [3 x [8 x [4 x i8]]], ptr @subblk_offset_x, i64 0, i64 %idxprom50, i64 %indvars.iv278, i64 0
  %90 = load i8, ptr %arrayidx137, align 4
  %conv138 = zext i8 %90 to i32
  %91 = load i32, ptr %pix_c_y, align 8
  %add140 = add nsw i32 %91, %conv131
  %idxprom141 = sext i32 %add140 to i64
  %arrayidx142 = getelementptr inbounds ptr, ptr %6, i64 %idxprom141
  %92 = load ptr, ptr %mb_pred, align 8
  %93 = getelementptr inbounds ptr, ptr %92, i64 %indvars.iv289
  %arrayidx145 = getelementptr inbounds i8, ptr %93, i64 8
  %94 = load ptr, ptr %arrayidx145, align 8
  %idxprom146 = zext i8 %89 to i64
  %arrayidx147 = getelementptr inbounds ptr, ptr %94, i64 %idxprom146
  %95 = load i32, ptr %pix_c_x, align 4
  %add149 = add nsw i32 %95, %conv138
  tail call void @copy_image_data_4x4(ptr noundef %arrayidx142, ptr noundef %arrayidx147, i32 noundef %add149, i32 noundef %conv138) #10
  %arrayidx130.1 = getelementptr inbounds [3 x [8 x [4 x i8]]], ptr @subblk_offset_y, i64 0, i64 %idxprom50, i64 %indvars.iv278, i64 1
  %96 = load i8, ptr %arrayidx130.1, align 1
  %conv131.1 = zext i8 %96 to i32
  %arrayidx137.1 = getelementptr inbounds [3 x [8 x [4 x i8]]], ptr @subblk_offset_x, i64 0, i64 %idxprom50, i64 %indvars.iv278, i64 1
  %97 = load i8, ptr %arrayidx137.1, align 1
  %conv138.1 = zext i8 %97 to i32
  %98 = load i32, ptr %pix_c_y, align 8
  %add140.1 = add nsw i32 %98, %conv131.1
  %idxprom141.1 = sext i32 %add140.1 to i64
  %arrayidx142.1 = getelementptr inbounds ptr, ptr %6, i64 %idxprom141.1
  %99 = load ptr, ptr %mb_pred, align 8
  %100 = getelementptr inbounds ptr, ptr %99, i64 %indvars.iv289
  %arrayidx145.1 = getelementptr inbounds i8, ptr %100, i64 8
  %101 = load ptr, ptr %arrayidx145.1, align 8
  %idxprom146.1 = zext i8 %96 to i64
  %arrayidx147.1 = getelementptr inbounds ptr, ptr %101, i64 %idxprom146.1
  %102 = load i32, ptr %pix_c_x, align 4
  %add149.1 = add nsw i32 %102, %conv138.1
  tail call void @copy_image_data_4x4(ptr noundef %arrayidx142.1, ptr noundef %arrayidx147.1, i32 noundef %add149.1, i32 noundef %conv138.1) #10
  %arrayidx130.2 = getelementptr inbounds [3 x [8 x [4 x i8]]], ptr @subblk_offset_y, i64 0, i64 %idxprom50, i64 %indvars.iv278, i64 2
  %103 = load i8, ptr %arrayidx130.2, align 2
  %conv131.2 = zext i8 %103 to i32
  %arrayidx137.2 = getelementptr inbounds [3 x [8 x [4 x i8]]], ptr @subblk_offset_x, i64 0, i64 %idxprom50, i64 %indvars.iv278, i64 2
  %104 = load i8, ptr %arrayidx137.2, align 2
  %conv138.2 = zext i8 %104 to i32
  %105 = load i32, ptr %pix_c_y, align 8
  %add140.2 = add nsw i32 %105, %conv131.2
  %idxprom141.2 = sext i32 %add140.2 to i64
  %arrayidx142.2 = getelementptr inbounds ptr, ptr %6, i64 %idxprom141.2
  %106 = load ptr, ptr %mb_pred, align 8
  %107 = getelementptr inbounds ptr, ptr %106, i64 %indvars.iv289
  %arrayidx145.2 = getelementptr inbounds i8, ptr %107, i64 8
  %108 = load ptr, ptr %arrayidx145.2, align 8
  %idxprom146.2 = zext i8 %103 to i64
  %arrayidx147.2 = getelementptr inbounds ptr, ptr %108, i64 %idxprom146.2
  %109 = load i32, ptr %pix_c_x, align 4
  %add149.2 = add nsw i32 %109, %conv138.2
  tail call void @copy_image_data_4x4(ptr noundef %arrayidx142.2, ptr noundef %arrayidx147.2, i32 noundef %add149.2, i32 noundef %conv138.2) #10
  %arrayidx130.3 = getelementptr inbounds [3 x [8 x [4 x i8]]], ptr @subblk_offset_y, i64 0, i64 %idxprom50, i64 %indvars.iv278, i64 3
  %110 = load i8, ptr %arrayidx130.3, align 1
  %conv131.3 = zext i8 %110 to i32
  %arrayidx137.3 = getelementptr inbounds [3 x [8 x [4 x i8]]], ptr @subblk_offset_x, i64 0, i64 %idxprom50, i64 %indvars.iv278, i64 3
  %111 = load i8, ptr %arrayidx137.3, align 1
  %conv138.3 = zext i8 %111 to i32
  %112 = load i32, ptr %pix_c_y, align 8
  %add140.3 = add nsw i32 %112, %conv131.3
  %idxprom141.3 = sext i32 %add140.3 to i64
  %arrayidx142.3 = getelementptr inbounds ptr, ptr %6, i64 %idxprom141.3
  %113 = load ptr, ptr %mb_pred, align 8
  %114 = getelementptr inbounds ptr, ptr %113, i64 %indvars.iv289
  %arrayidx145.3 = getelementptr inbounds i8, ptr %114, i64 8
  %115 = load ptr, ptr %arrayidx145.3, align 8
  %idxprom146.3 = zext i8 %110 to i64
  %arrayidx147.3 = getelementptr inbounds ptr, ptr %115, i64 %idxprom146.3
  %116 = load i32, ptr %pix_c_x, align 4
  %add149.3 = add nsw i32 %116, %conv138.3
  tail call void @copy_image_data_4x4(ptr noundef %arrayidx142.3, ptr noundef %arrayidx147.3, i32 noundef %add149.3, i32 noundef %conv138.3) #10
  %indvars.iv.next279 = add nuw nsw i64 %indvars.iv278, 1
  %117 = load i32, ptr %num_uv_blocks, align 4
  %118 = sext i32 %117 to i64
  %cmp118 = icmp slt i64 %indvars.iv.next279, %118
  br i1 %cmp118, label %for.cond121.preheader, label %for.inc158

for.inc158:                                       ; preds = %for.cond46.preheader, %for.cond121.preheader, %if.then86, %for.cond42.preheader, %for.cond116.preheader
  br i1 %cmp, label %for.body, label %for.end160

for.end160:                                       ; preds = %for.inc158
  ret void
}

declare void @itrans4x4(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #2

declare void @itrans4x4_ls(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #2

declare void @Inv_Residual_trans_Chroma(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @copy_image_data_4x4(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @itrans_sp_cr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @prepare_direct_params(ptr noundef %currMB, ptr nocapture noundef readonly %dec_picture, ptr noundef %pmvl0, ptr noundef %pmvl1, ptr nocapture noundef %l0_rFrame, ptr nocapture noundef %l1_rFrame) local_unnamed_addr #0 {
entry:
  %mb = alloca [4 x %struct.pix_pos], align 16
  %0 = load ptr, ptr %currMB, align 8
  %mv_info1 = getelementptr inbounds i8, ptr %dec_picture, i64 152
  %1 = load ptr, ptr %mv_info1, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %mb) #10
  call void @get_neighbors(ptr noundef nonnull %currMB, ptr noundef nonnull %mb, i32 noundef 0, i32 noundef 0, i32 noundef 16) #10
  %mb_aff_frame_flag = getelementptr inbounds i8, ptr %0, i64 128
  %2 = load i32, ptr %mb_aff_frame_flag, align 8
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %mb, align 16
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %set_direct_references.exit, label %if.then.i

if.then.i:                                        ; preds = %if.then
  %pos_y.i = getelementptr inbounds i8, ptr %mb, i64 14
  %4 = load i16, ptr %pos_y.i, align 2
  %idxprom.i = sext i16 %4 to i64
  %arrayidx.i = getelementptr inbounds ptr, ptr %1, i64 %idxprom.i
  %5 = load ptr, ptr %arrayidx.i, align 8
  %pos_x.i = getelementptr inbounds i8, ptr %mb, i64 12
  %6 = load i16, ptr %pos_x.i, align 4
  %idxprom1.i = sext i16 %6 to i64
  %ref_idx3.i = getelementptr inbounds %struct.pic_motion_params, ptr %5, i64 %idxprom1.i, i32 2
  %7 = load i8, ptr %ref_idx3.i, align 1
  %arrayidx5.i = getelementptr inbounds i8, ptr %ref_idx3.i, i64 1
  %8 = load i8, ptr %arrayidx5.i, align 1
  br label %set_direct_references.exit

set_direct_references.exit:                       ; preds = %if.then, %if.then.i
  %l0_refA.0 = phi i8 [ %7, %if.then.i ], [ -1, %if.then ]
  %storemerge.i = phi i8 [ %8, %if.then.i ], [ -1, %if.then ]
  %arrayidx2 = getelementptr inbounds i8, ptr %mb, i64 16
  %9 = load i32, ptr %arrayidx2, align 16
  %tobool.not.i70 = icmp eq i32 %9, 0
  br i1 %tobool.not.i70, label %set_direct_references.exit81, label %if.then.i71

if.then.i71:                                      ; preds = %set_direct_references.exit
  %pos_y.i72 = getelementptr inbounds i8, ptr %mb, i64 30
  %10 = load i16, ptr %pos_y.i72, align 2
  %idxprom.i73 = sext i16 %10 to i64
  %arrayidx.i74 = getelementptr inbounds ptr, ptr %1, i64 %idxprom.i73
  %11 = load ptr, ptr %arrayidx.i74, align 8
  %pos_x.i75 = getelementptr inbounds i8, ptr %mb, i64 28
  %12 = load i16, ptr %pos_x.i75, align 4
  %idxprom1.i76 = sext i16 %12 to i64
  %ref_idx3.i77 = getelementptr inbounds %struct.pic_motion_params, ptr %11, i64 %idxprom1.i76, i32 2
  %13 = load i8, ptr %ref_idx3.i77, align 1
  %arrayidx5.i78 = getelementptr inbounds i8, ptr %ref_idx3.i77, i64 1
  %14 = load i8, ptr %arrayidx5.i78, align 1
  br label %set_direct_references.exit81

set_direct_references.exit81:                     ; preds = %set_direct_references.exit, %if.then.i71
  %l0_refB.0 = phi i8 [ %13, %if.then.i71 ], [ -1, %set_direct_references.exit ]
  %storemerge.i79 = phi i8 [ %14, %if.then.i71 ], [ -1, %set_direct_references.exit ]
  %arrayidx3 = getelementptr inbounds i8, ptr %mb, i64 32
  %15 = load i32, ptr %arrayidx3, align 16
  %tobool.not.i82 = icmp eq i32 %15, 0
  br i1 %tobool.not.i82, label %if.end19, label %if.then.i83

if.then.i83:                                      ; preds = %set_direct_references.exit81
  %pos_y.i84 = getelementptr inbounds i8, ptr %mb, i64 46
  %16 = load i16, ptr %pos_y.i84, align 2
  %idxprom.i85 = sext i16 %16 to i64
  %arrayidx.i86 = getelementptr inbounds ptr, ptr %1, i64 %idxprom.i85
  %17 = load ptr, ptr %arrayidx.i86, align 8
  %pos_x.i87 = getelementptr inbounds i8, ptr %mb, i64 44
  %18 = load i16, ptr %pos_x.i87, align 4
  %idxprom1.i88 = sext i16 %18 to i64
  %ref_idx3.i89 = getelementptr inbounds %struct.pic_motion_params, ptr %17, i64 %idxprom1.i88, i32 2
  %19 = load i8, ptr %ref_idx3.i89, align 1
  %arrayidx5.i90 = getelementptr inbounds i8, ptr %ref_idx3.i89, i64 1
  %20 = load i8, ptr %arrayidx5.i90, align 1
  br label %if.end19

if.else:                                          ; preds = %entry
  %p_Vid4 = getelementptr inbounds i8, ptr %currMB, i64 8
  %21 = load ptr, ptr %p_Vid4, align 8
  %mb_field = getelementptr inbounds i8, ptr %currMB, i64 384
  %22 = load i32, ptr %mb_field, align 8
  %tobool5.not = icmp eq i32 %22, 0
  %mb_data14 = getelementptr inbounds i8, ptr %21, i64 848888
  %23 = load ptr, ptr %mb_data14, align 8
  %24 = load i32, ptr %mb, align 16
  %tobool.not.i153 = icmp eq i32 %24, 0
  br i1 %tobool5.not, label %if.else12, label %if.then6

if.then6:                                         ; preds = %if.else
  br i1 %tobool.not.i153, label %set_direct_references_mb_field.exit, label %if.then.i95

if.then.i95:                                      ; preds = %if.then6
  %pos_y.i96 = getelementptr inbounds i8, ptr %mb, i64 14
  %25 = load i16, ptr %pos_y.i96, align 2
  %idxprom.i97 = sext i16 %25 to i64
  %arrayidx.i98 = getelementptr inbounds ptr, ptr %1, i64 %idxprom.i97
  %26 = load ptr, ptr %arrayidx.i98, align 8
  %pos_x.i99 = getelementptr inbounds i8, ptr %mb, i64 12
  %27 = load i16, ptr %pos_x.i99, align 4
  %idxprom1.i100 = sext i16 %27 to i64
  %ref_idx3.i101 = getelementptr inbounds %struct.pic_motion_params, ptr %26, i64 %idxprom1.i100, i32 2
  %mb_addr.i = getelementptr inbounds i8, ptr %mb, i64 4
  %28 = load i32, ptr %mb_addr.i, align 4
  %idxprom4.i = sext i32 %28 to i64
  %mb_field.i = getelementptr inbounds %struct.macroblock, ptr %23, i64 %idxprom4.i, i32 45
  %29 = load i32, ptr %mb_field.i, align 8
  %tobool6.not.i = icmp eq i32 %29, 0
  %30 = load i8, ptr %ref_idx3.i101, align 1
  br i1 %tobool6.not.i, label %if.else.i102, label %if.then7.i

if.then7.i:                                       ; preds = %if.then.i95
  %arrayidx9.i = getelementptr inbounds i8, ptr %ref_idx3.i101, i64 1
  %31 = load i8, ptr %arrayidx9.i, align 1
  br label %set_direct_references_mb_field.exit

if.else.i102:                                     ; preds = %if.then.i95
  %cmp.i = icmp sgt i8 %30, -1
  %mul.i = zext i1 %cmp.i to i8
  %cond.i = shl nuw i8 %30, %mul.i
  %arrayidx17.i = getelementptr inbounds i8, ptr %ref_idx3.i101, i64 1
  %32 = load i8, ptr %arrayidx17.i, align 1
  %cmp19.i = icmp sgt i8 %32, -1
  %mul27.i = zext i1 %cmp19.i to i8
  %cond29.i = shl nuw i8 %32, %mul27.i
  br label %set_direct_references_mb_field.exit

set_direct_references_mb_field.exit:              ; preds = %if.then6, %if.then7.i, %if.else.i102
  %l0_refA.1 = phi i8 [ %cond.i, %if.else.i102 ], [ %30, %if.then7.i ], [ -1, %if.then6 ]
  %storemerge47.i = phi i8 [ %cond29.i, %if.else.i102 ], [ %31, %if.then7.i ], [ -1, %if.then6 ]
  %arrayidx8 = getelementptr inbounds i8, ptr %mb, i64 16
  %33 = load i32, ptr %arrayidx8, align 16
  %tobool.not.i103 = icmp eq i32 %33, 0
  br i1 %tobool.not.i103, label %set_direct_references_mb_field.exit127, label %if.then.i104

if.then.i104:                                     ; preds = %set_direct_references_mb_field.exit
  %pos_y.i105 = getelementptr inbounds i8, ptr %mb, i64 30
  %34 = load i16, ptr %pos_y.i105, align 2
  %idxprom.i106 = sext i16 %34 to i64
  %arrayidx.i107 = getelementptr inbounds ptr, ptr %1, i64 %idxprom.i106
  %35 = load ptr, ptr %arrayidx.i107, align 8
  %pos_x.i108 = getelementptr inbounds i8, ptr %mb, i64 28
  %36 = load i16, ptr %pos_x.i108, align 4
  %idxprom1.i109 = sext i16 %36 to i64
  %ref_idx3.i110 = getelementptr inbounds %struct.pic_motion_params, ptr %35, i64 %idxprom1.i109, i32 2
  %mb_addr.i111 = getelementptr inbounds i8, ptr %mb, i64 20
  %37 = load i32, ptr %mb_addr.i111, align 4
  %idxprom4.i112 = sext i32 %37 to i64
  %mb_field.i113 = getelementptr inbounds %struct.macroblock, ptr %23, i64 %idxprom4.i112, i32 45
  %38 = load i32, ptr %mb_field.i113, align 8
  %tobool6.not.i114 = icmp eq i32 %38, 0
  %39 = load i8, ptr %ref_idx3.i110, align 1
  br i1 %tobool6.not.i114, label %if.else.i118, label %if.then7.i115

if.then7.i115:                                    ; preds = %if.then.i104
  %arrayidx9.i116 = getelementptr inbounds i8, ptr %ref_idx3.i110, i64 1
  %40 = load i8, ptr %arrayidx9.i116, align 1
  br label %set_direct_references_mb_field.exit127

if.else.i118:                                     ; preds = %if.then.i104
  %cmp.i119 = icmp sgt i8 %39, -1
  %mul.i120 = zext i1 %cmp.i119 to i8
  %cond.i121 = shl nuw i8 %39, %mul.i120
  %arrayidx17.i122 = getelementptr inbounds i8, ptr %ref_idx3.i110, i64 1
  %41 = load i8, ptr %arrayidx17.i122, align 1
  %cmp19.i123 = icmp sgt i8 %41, -1
  %mul27.i124 = zext i1 %cmp19.i123 to i8
  %cond29.i125 = shl nuw i8 %41, %mul27.i124
  br label %set_direct_references_mb_field.exit127

set_direct_references_mb_field.exit127:           ; preds = %set_direct_references_mb_field.exit, %if.then7.i115, %if.else.i118
  %l0_refB.1 = phi i8 [ %cond.i121, %if.else.i118 ], [ %39, %if.then7.i115 ], [ -1, %set_direct_references_mb_field.exit ]
  %storemerge47.i117 = phi i8 [ %cond29.i125, %if.else.i118 ], [ %40, %if.then7.i115 ], [ -1, %set_direct_references_mb_field.exit ]
  %arrayidx10 = getelementptr inbounds i8, ptr %mb, i64 32
  %42 = load i32, ptr %arrayidx10, align 16
  %tobool.not.i128 = icmp eq i32 %42, 0
  br i1 %tobool.not.i128, label %if.end19, label %if.then.i129

if.then.i129:                                     ; preds = %set_direct_references_mb_field.exit127
  %pos_y.i130 = getelementptr inbounds i8, ptr %mb, i64 46
  %43 = load i16, ptr %pos_y.i130, align 2
  %idxprom.i131 = sext i16 %43 to i64
  %arrayidx.i132 = getelementptr inbounds ptr, ptr %1, i64 %idxprom.i131
  %44 = load ptr, ptr %arrayidx.i132, align 8
  %pos_x.i133 = getelementptr inbounds i8, ptr %mb, i64 44
  %45 = load i16, ptr %pos_x.i133, align 4
  %idxprom1.i134 = sext i16 %45 to i64
  %ref_idx3.i135 = getelementptr inbounds %struct.pic_motion_params, ptr %44, i64 %idxprom1.i134, i32 2
  %mb_addr.i136 = getelementptr inbounds i8, ptr %mb, i64 36
  %46 = load i32, ptr %mb_addr.i136, align 4
  %idxprom4.i137 = sext i32 %46 to i64
  %mb_field.i138 = getelementptr inbounds %struct.macroblock, ptr %23, i64 %idxprom4.i137, i32 45
  %47 = load i32, ptr %mb_field.i138, align 8
  %tobool6.not.i139 = icmp eq i32 %47, 0
  %48 = load i8, ptr %ref_idx3.i135, align 1
  br i1 %tobool6.not.i139, label %if.else.i143, label %if.then7.i140

if.then7.i140:                                    ; preds = %if.then.i129
  %arrayidx9.i141 = getelementptr inbounds i8, ptr %ref_idx3.i135, i64 1
  %49 = load i8, ptr %arrayidx9.i141, align 1
  br label %if.end19

if.else.i143:                                     ; preds = %if.then.i129
  %cmp.i144 = icmp sgt i8 %48, -1
  %mul.i145 = zext i1 %cmp.i144 to i8
  %cond.i146 = shl nuw i8 %48, %mul.i145
  %arrayidx17.i147 = getelementptr inbounds i8, ptr %ref_idx3.i135, i64 1
  %50 = load i8, ptr %arrayidx17.i147, align 1
  %cmp19.i148 = icmp sgt i8 %50, -1
  %mul27.i149 = zext i1 %cmp19.i148 to i8
  %cond29.i150 = shl nuw i8 %50, %mul27.i149
  br label %if.end19

if.else12:                                        ; preds = %if.else
  br i1 %tobool.not.i153, label %set_direct_references_mb_frame.exit, label %if.then.i154

if.then.i154:                                     ; preds = %if.else12
  %pos_y.i155 = getelementptr inbounds i8, ptr %mb, i64 14
  %51 = load i16, ptr %pos_y.i155, align 2
  %idxprom.i156 = sext i16 %51 to i64
  %arrayidx.i157 = getelementptr inbounds ptr, ptr %1, i64 %idxprom.i156
  %52 = load ptr, ptr %arrayidx.i157, align 8
  %pos_x.i158 = getelementptr inbounds i8, ptr %mb, i64 12
  %53 = load i16, ptr %pos_x.i158, align 4
  %idxprom1.i159 = sext i16 %53 to i64
  %ref_idx3.i160 = getelementptr inbounds %struct.pic_motion_params, ptr %52, i64 %idxprom1.i159, i32 2
  %mb_addr.i161 = getelementptr inbounds i8, ptr %mb, i64 4
  %54 = load i32, ptr %mb_addr.i161, align 4
  %idxprom4.i162 = sext i32 %54 to i64
  %mb_field.i163 = getelementptr inbounds %struct.macroblock, ptr %23, i64 %idxprom4.i162, i32 45
  %55 = load i32, ptr %mb_field.i163, align 8
  %tobool6.not.i164 = icmp eq i32 %55, 0
  %56 = load i8, ptr %ref_idx3.i160, align 1
  br i1 %tobool6.not.i164, label %if.else.i166, label %if.then7.i165

if.then7.i165:                                    ; preds = %if.then.i154
  %57 = ashr i8 %56, 1
  %arrayidx10.i = getelementptr inbounds i8, ptr %ref_idx3.i160, i64 1
  %58 = load i8, ptr %arrayidx10.i, align 1
  %59 = ashr i8 %58, 1
  br label %set_direct_references_mb_frame.exit

if.else.i166:                                     ; preds = %if.then.i154
  %arrayidx15.i = getelementptr inbounds i8, ptr %ref_idx3.i160, i64 1
  %60 = load i8, ptr %arrayidx15.i, align 1
  br label %set_direct_references_mb_frame.exit

set_direct_references_mb_frame.exit:              ; preds = %if.else12, %if.then7.i165, %if.else.i166
  %l0_refA.2 = phi i8 [ %56, %if.else.i166 ], [ %57, %if.then7.i165 ], [ -1, %if.else12 ]
  %storemerge28.i = phi i8 [ %60, %if.else.i166 ], [ %59, %if.then7.i165 ], [ -1, %if.else12 ]
  %arrayidx15 = getelementptr inbounds i8, ptr %mb, i64 16
  %61 = load i32, ptr %arrayidx15, align 16
  %tobool.not.i167 = icmp eq i32 %61, 0
  br i1 %tobool.not.i167, label %set_direct_references_mb_frame.exit185, label %if.then.i168

if.then.i168:                                     ; preds = %set_direct_references_mb_frame.exit
  %pos_y.i169 = getelementptr inbounds i8, ptr %mb, i64 30
  %62 = load i16, ptr %pos_y.i169, align 2
  %idxprom.i170 = sext i16 %62 to i64
  %arrayidx.i171 = getelementptr inbounds ptr, ptr %1, i64 %idxprom.i170
  %63 = load ptr, ptr %arrayidx.i171, align 8
  %pos_x.i172 = getelementptr inbounds i8, ptr %mb, i64 28
  %64 = load i16, ptr %pos_x.i172, align 4
  %idxprom1.i173 = sext i16 %64 to i64
  %ref_idx3.i174 = getelementptr inbounds %struct.pic_motion_params, ptr %63, i64 %idxprom1.i173, i32 2
  %mb_addr.i175 = getelementptr inbounds i8, ptr %mb, i64 20
  %65 = load i32, ptr %mb_addr.i175, align 4
  %idxprom4.i176 = sext i32 %65 to i64
  %mb_field.i177 = getelementptr inbounds %struct.macroblock, ptr %23, i64 %idxprom4.i176, i32 45
  %66 = load i32, ptr %mb_field.i177, align 8
  %tobool6.not.i178 = icmp eq i32 %66, 0
  %67 = load i8, ptr %ref_idx3.i174, align 1
  br i1 %tobool6.not.i178, label %if.else.i182, label %if.then7.i179

if.then7.i179:                                    ; preds = %if.then.i168
  %68 = ashr i8 %67, 1
  %arrayidx10.i180 = getelementptr inbounds i8, ptr %ref_idx3.i174, i64 1
  %69 = load i8, ptr %arrayidx10.i180, align 1
  %70 = ashr i8 %69, 1
  br label %set_direct_references_mb_frame.exit185

if.else.i182:                                     ; preds = %if.then.i168
  %arrayidx15.i183 = getelementptr inbounds i8, ptr %ref_idx3.i174, i64 1
  %71 = load i8, ptr %arrayidx15.i183, align 1
  br label %set_direct_references_mb_frame.exit185

set_direct_references_mb_frame.exit185:           ; preds = %set_direct_references_mb_frame.exit, %if.then7.i179, %if.else.i182
  %l0_refB.2 = phi i8 [ %67, %if.else.i182 ], [ %68, %if.then7.i179 ], [ -1, %set_direct_references_mb_frame.exit ]
  %storemerge28.i181 = phi i8 [ %71, %if.else.i182 ], [ %70, %if.then7.i179 ], [ -1, %set_direct_references_mb_frame.exit ]
  %arrayidx17 = getelementptr inbounds i8, ptr %mb, i64 32
  %72 = load i32, ptr %arrayidx17, align 16
  %tobool.not.i186 = icmp eq i32 %72, 0
  br i1 %tobool.not.i186, label %if.end19, label %if.then.i187

if.then.i187:                                     ; preds = %set_direct_references_mb_frame.exit185
  %pos_y.i188 = getelementptr inbounds i8, ptr %mb, i64 46
  %73 = load i16, ptr %pos_y.i188, align 2
  %idxprom.i189 = sext i16 %73 to i64
  %arrayidx.i190 = getelementptr inbounds ptr, ptr %1, i64 %idxprom.i189
  %74 = load ptr, ptr %arrayidx.i190, align 8
  %pos_x.i191 = getelementptr inbounds i8, ptr %mb, i64 44
  %75 = load i16, ptr %pos_x.i191, align 4
  %idxprom1.i192 = sext i16 %75 to i64
  %ref_idx3.i193 = getelementptr inbounds %struct.pic_motion_params, ptr %74, i64 %idxprom1.i192, i32 2
  %mb_addr.i194 = getelementptr inbounds i8, ptr %mb, i64 36
  %76 = load i32, ptr %mb_addr.i194, align 4
  %idxprom4.i195 = sext i32 %76 to i64
  %mb_field.i196 = getelementptr inbounds %struct.macroblock, ptr %23, i64 %idxprom4.i195, i32 45
  %77 = load i32, ptr %mb_field.i196, align 8
  %tobool6.not.i197 = icmp eq i32 %77, 0
  %78 = load i8, ptr %ref_idx3.i193, align 1
  br i1 %tobool6.not.i197, label %if.else.i201, label %if.then7.i198

if.then7.i198:                                    ; preds = %if.then.i187
  %79 = ashr i8 %78, 1
  %arrayidx10.i199 = getelementptr inbounds i8, ptr %ref_idx3.i193, i64 1
  %80 = load i8, ptr %arrayidx10.i199, align 1
  %81 = ashr i8 %80, 1
  br label %if.end19

if.else.i201:                                     ; preds = %if.then.i187
  %arrayidx15.i202 = getelementptr inbounds i8, ptr %ref_idx3.i193, i64 1
  %82 = load i8, ptr %arrayidx15.i202, align 1
  br label %if.end19

if.end19:                                         ; preds = %if.else.i201, %if.then7.i198, %set_direct_references_mb_frame.exit185, %if.else.i143, %if.then7.i140, %set_direct_references_mb_field.exit127, %if.then.i83, %set_direct_references.exit81
  %l0_refA.3 = phi i8 [ %l0_refA.0, %set_direct_references.exit81 ], [ %l0_refA.0, %if.then.i83 ], [ %l0_refA.1, %set_direct_references_mb_field.exit127 ], [ %l0_refA.1, %if.then7.i140 ], [ %l0_refA.1, %if.else.i143 ], [ %l0_refA.2, %set_direct_references_mb_frame.exit185 ], [ %l0_refA.2, %if.then7.i198 ], [ %l0_refA.2, %if.else.i201 ]
  %l0_refB.3 = phi i8 [ %l0_refB.0, %set_direct_references.exit81 ], [ %l0_refB.0, %if.then.i83 ], [ %l0_refB.1, %set_direct_references_mb_field.exit127 ], [ %l0_refB.1, %if.then7.i140 ], [ %l0_refB.1, %if.else.i143 ], [ %l0_refB.2, %set_direct_references_mb_frame.exit185 ], [ %l0_refB.2, %if.then7.i198 ], [ %l0_refB.2, %if.else.i201 ]
  %l0_refC.3 = phi i8 [ -1, %set_direct_references.exit81 ], [ %19, %if.then.i83 ], [ -1, %set_direct_references_mb_field.exit127 ], [ %48, %if.then7.i140 ], [ %cond.i146, %if.else.i143 ], [ -1, %set_direct_references_mb_frame.exit185 ], [ %79, %if.then7.i198 ], [ %78, %if.else.i201 ]
  %l1_refA.0 = phi i8 [ %storemerge.i, %set_direct_references.exit81 ], [ %storemerge.i, %if.then.i83 ], [ %storemerge47.i, %set_direct_references_mb_field.exit127 ], [ %storemerge47.i, %if.then7.i140 ], [ %storemerge47.i, %if.else.i143 ], [ %storemerge28.i, %set_direct_references_mb_frame.exit185 ], [ %storemerge28.i, %if.then7.i198 ], [ %storemerge28.i, %if.else.i201 ]
  %l1_refB.0 = phi i8 [ %storemerge.i79, %set_direct_references.exit81 ], [ %storemerge.i79, %if.then.i83 ], [ %storemerge47.i117, %set_direct_references_mb_field.exit127 ], [ %storemerge47.i117, %if.then7.i140 ], [ %storemerge47.i117, %if.else.i143 ], [ %storemerge28.i181, %set_direct_references_mb_frame.exit185 ], [ %storemerge28.i181, %if.then7.i198 ], [ %storemerge28.i181, %if.else.i201 ]
  %l1_refC.0 = phi i8 [ -1, %set_direct_references.exit81 ], [ %20, %if.then.i83 ], [ -1, %set_direct_references_mb_field.exit127 ], [ %49, %if.then7.i140 ], [ %cond29.i150, %if.else.i143 ], [ -1, %set_direct_references_mb_frame.exit185 ], [ %81, %if.then7.i198 ], [ %82, %if.else.i201 ]
  %83 = call i8 @llvm.umin.i8(i8 %l0_refA.3, i8 %l0_refB.3)
  %84 = call i8 @llvm.umin.i8(i8 %83, i8 %l0_refC.3)
  store i8 %84, ptr %l0_rFrame, align 1
  %85 = call i8 @llvm.umin.i8(i8 %l1_refA.0, i8 %l1_refB.0)
  %86 = call i8 @llvm.umin.i8(i8 %85, i8 %l1_refC.0)
  store i8 %86, ptr %l1_rFrame, align 1
  %87 = load i8, ptr %l0_rFrame, align 1
  %cmp = icmp sgt i8 %87, -1
  br i1 %cmp, label %if.then32, label %if.end35

if.then32:                                        ; preds = %if.end19
  %GetMVPredictor = getelementptr inbounds i8, ptr %currMB, i64 448
  %88 = load ptr, ptr %GetMVPredictor, align 8
  %conv34 = zext nneg i8 %87 to i16
  call void %88(ptr noundef nonnull %currMB, ptr noundef nonnull %mb, ptr noundef %pmvl0, i16 noundef signext %conv34, ptr noundef %1, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 16, i32 noundef 16) #10
  %.pr = load i8, ptr %l1_rFrame, align 1
  br label %if.end35

if.end35:                                         ; preds = %if.then32, %if.end19
  %89 = phi i8 [ %.pr, %if.then32 ], [ %86, %if.end19 ]
  %cmp37 = icmp sgt i8 %89, -1
  br i1 %cmp37, label %if.then39, label %if.end43

if.then39:                                        ; preds = %if.end35
  %GetMVPredictor40 = getelementptr inbounds i8, ptr %currMB, i64 448
  %90 = load ptr, ptr %GetMVPredictor40, align 8
  %conv42 = zext nneg i8 %89 to i16
  call void %90(ptr noundef nonnull %currMB, ptr noundef nonnull %mb, ptr noundef %pmvl1, i16 noundef signext %conv42, ptr noundef %1, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 16, i32 noundef 16) #10
  br label %if.end43

if.end43:                                         ; preds = %if.then39, %if.end35
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %mb) #10
  ret void
}

declare void @get_neighbors(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @perform_mc(ptr noundef %currMB, i32 noundef %pl, ptr nocapture noundef readonly %dec_picture, i32 noundef %pred_dir, i32 noundef %i, i32 noundef %j, i32 noundef %block_size_x, i32 noundef %block_size_y) local_unnamed_addr #0 {
entry:
  %0 = load ptr, ptr %currMB, align 8
  %cmp.not = icmp eq i32 %pred_dir, 2
  %p_Vid1.i205 = getelementptr inbounds i8, ptr %currMB, i64 8
  %1 = load ptr, ptr %p_Vid1.i205, align 8
  br i1 %cmp.not, label %if.else2, label %if.then

if.then:                                          ; preds = %entry
  %weighted_pred_flag = getelementptr inbounds i8, ptr %0, i64 13272
  %2 = load i16, ptr %weighted_pred_flag, align 8
  %tobool.not = icmp eq i16 %2, 0
  %active_sps2.i34 = getelementptr inbounds i8, ptr %0, i64 24
  %3 = load ptr, ptr %active_sps2.i34, align 8
  %tmp_block_l03.i35 = getelementptr inbounds i8, ptr %0, i64 1352
  %4 = load ptr, ptr %tmp_block_l03.i35, align 8
  %tmp_block_l14.i36 = getelementptr inbounds i8, ptr %0, i64 1360
  %5 = load ptr, ptr %tmp_block_l14.i36, align 8
  %block_x.i37 = getelementptr inbounds i8, ptr %currMB, i64 32
  %6 = load i32, ptr %block_x.i37, align 8
  %add.i38 = add nsw i32 %6, %i
  %block_y.i39 = getelementptr inbounds i8, ptr %currMB, i64 36
  %7 = load i32, ptr %block_y.i39, align 4
  %add5.i40 = add nsw i32 %7, %j
  br i1 %tobool.not, label %if.else, label %if.then1

if.then1:                                         ; preds = %if.then
  %slice_type.i = getelementptr inbounds i8, ptr %0, i64 164
  %8 = load i32, ptr %slice_type.i, align 4
  %chroma_format_idc6.i = getelementptr inbounds i8, ptr %dec_picture, i64 268
  %9 = load i32, ptr %chroma_format_idc6.i, align 4
  %shl.i = shl i32 %i, 2
  %shl7.i = shl i32 %j, 2
  %mv_info8.i = getelementptr inbounds i8, ptr %dec_picture, i64 152
  %10 = load ptr, ptr %mv_info8.i, align 8
  %idxprom.i = sext i32 %add5.i40 to i64
  %arrayidx.i = getelementptr inbounds ptr, ptr %10, i64 %idxprom.i
  %11 = load ptr, ptr %arrayidx.i, align 8
  %idxprom9.i = sext i32 %add.i38 to i64
  %arrayidx10.i = getelementptr inbounds %struct.pic_motion_params, ptr %11, i64 %idxprom9.i
  %ref_idx11.i = getelementptr inbounds i8, ptr %arrayidx10.i, i64 24
  %idxprom12.i = sext i32 %pred_dir to i64
  %arrayidx13.i = getelementptr inbounds [2 x i8], ptr %ref_idx11.i, i64 0, i64 %idxprom12.i
  %12 = load i8, ptr %arrayidx13.i, align 1
  %mv.i = getelementptr inbounds i8, ptr %arrayidx10.i, i64 16
  %arrayidx15.i = getelementptr inbounds [2 x %struct.MotionVector], ptr %mv.i, i64 0, i64 %idxprom12.i
  %list_offset16.i = getelementptr inbounds i8, ptr %currMB, i64 114
  %13 = load i16, ptr %list_offset16.i, align 2
  %conv17.i = sext i16 %13 to i32
  %listX.i = getelementptr inbounds i8, ptr %0, i64 264
  %add18.i = add nsw i32 %conv17.i, %pred_dir
  %idxprom19.i = sext i32 %add18.i to i64
  %arrayidx20.i = getelementptr inbounds [6 x ptr], ptr %listX.i, i64 0, i64 %idxprom19.i
  %14 = load ptr, ptr %arrayidx20.i, align 8
  %idxprom21.i = sext i8 %12 to i64
  %arrayidx22.i = getelementptr inbounds ptr, ptr %14, i64 %idxprom21.i
  %15 = load ptr, ptr %arrayidx22.i, align 8
  %size_x_m1.i = getelementptr inbounds i8, ptr %dec_picture, i64 80
  %16 = load i32, ptr %size_x_m1.i, align 8
  %mb_field.i = getelementptr inbounds i8, ptr %currMB, i64 384
  %17 = load i32, ptr %mb_field.i, align 8
  %tobool.not.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i, label %cond.false.i, label %cond.true.i

cond.true.i:                                      ; preds = %if.then1
  %size_y.i = getelementptr inbounds i8, ptr %dec_picture, i64 68
  %18 = load i32, ptr %size_y.i, align 4
  %shr.i = ashr i32 %18, 1
  %sub.i = add nsw i32 %shr.i, -1
  br label %cond.end.i

cond.false.i:                                     ; preds = %if.then1
  %size_y_m1.i = getelementptr inbounds i8, ptr %dec_picture, i64 84
  %19 = load i32, ptr %size_y_m1.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i32 [ %sub.i, %cond.true.i ], [ %19, %cond.false.i ]
  %iLumaStride.i = getelementptr inbounds i8, ptr %dec_picture, i64 356
  %20 = load i32, ptr %iLumaStride.i, align 4
  %tmp_res23.i = getelementptr inbounds i8, ptr %0, i64 1368
  %21 = load ptr, ptr %tmp_res23.i, align 8
  %max_pel_value_comp.i = getelementptr inbounds i8, ptr %1, i64 849072
  %idxprom24.i = zext i32 %pl to i64
  %arrayidx25.i = getelementptr inbounds [3 x i32], ptr %max_pel_value_comp.i, i64 0, i64 %idxprom24.i
  %22 = load i32, ptr %arrayidx25.i, align 4
  %dc_pred_value_comp.i = getelementptr inbounds i8, ptr %1, i64 849060
  %arrayidx27.i = getelementptr inbounds [3 x i32], ptr %dc_pred_value_comp.i, i64 0, i64 %idxprom24.i
  %23 = load i32, ptr %arrayidx27.i, align 4
  %conv28.i = trunc i32 %23 to i16
  %24 = load i16, ptr %arrayidx15.i, align 2
  %25 = add i16 %24, -8192
  %or.cond.i.i = icmp ult i16 %25, -16384
  br i1 %or.cond.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %cond.end.i
  %26 = load ptr, ptr @stderr, align 8
  %conv7.i.i = sext i16 %24 to i32
  %27 = load ptr, ptr %0, align 8
  %number.i.i = getelementptr inbounds i8, ptr %27, i64 848712
  %28 = load i32, ptr %number.i.i, align 8
  %current_mb_nr.i.i = getelementptr inbounds i8, ptr %0, i64 108
  %29 = load i32, ptr %current_mb_nr.i.i, align 4
  %call.i.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %26, ptr noundef nonnull @.str.1, i32 noundef %conv7.i.i, i32 noundef %28, i32 noundef %29) #11
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %cond.end.i
  %mv_y.i.i = getelementptr inbounds i8, ptr %arrayidx15.i, i64 2
  %30 = load i16, ptr %mv_y.i.i, align 2
  %conv8.i.i = sext i16 %30 to i32
  %max_mb_vmv_r.i.i = getelementptr inbounds i8, ptr %0, i64 13336
  %31 = load i32, ptr %max_mb_vmv_r.i.i, align 8
  %cmp9.not.i.i = icmp sle i32 %31, %conv8.i.i
  %sub15.i.i = sub nsw i32 0, %31
  %cmp16.i.i = icmp slt i32 %conv8.i.i, %sub15.i.i
  %or.cond42.i.i = select i1 %cmp9.not.i.i, i1 true, i1 %cmp16.i.i
  br i1 %or.cond42.i.i, label %if.then18.i.i, label %check_motion_vector_range.exit.i

if.then18.i.i:                                    ; preds = %if.end.i.i
  %32 = load ptr, ptr @stderr, align 8
  %sub24.i.i = add nsw i32 %31, -1
  %33 = load ptr, ptr %0, align 8
  %number26.i.i = getelementptr inbounds i8, ptr %33, i64 848712
  %34 = load i32, ptr %number26.i.i, align 8
  %current_mb_nr27.i.i = getelementptr inbounds i8, ptr %0, i64 108
  %35 = load i32, ptr %current_mb_nr27.i.i, align 4
  %call28.i.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef nonnull @.str.2, i32 noundef %conv8.i.i, i32 noundef %sub15.i.i, i32 noundef %sub24.i.i, i32 noundef %34, i32 noundef %35) #11
  %.pre.i = load i16, ptr %mv_y.i.i, align 2
  %.pre417.i = sext i16 %.pre.i to i32
  br label %check_motion_vector_range.exit.i

check_motion_vector_range.exit.i:                 ; preds = %if.then18.i.i, %if.end.i.i
  %conv33.pre-phi.i = phi i32 [ %conv8.i.i, %if.end.i.i ], [ %.pre417.i, %if.then18.i.i ]
  %mul.i = shl nsw i32 %add.i38, 4
  %36 = load i16, ptr %arrayidx15.i, align 2
  %conv29.i = sext i16 %36 to i32
  %add30.i = add nsw i32 %mul.i, %conv29.i
  %block_y_aff.i = getelementptr inbounds i8, ptr %currMB, i64 40
  %37 = load i32, ptr %block_y_aff.i, align 8
  %add31.i = add nsw i32 %37, %j
  %mul32.i = shl nsw i32 %add31.i, 4
  %add34.i = add nsw i32 %mul32.i, %conv33.pre-phi.i
  %iLumaPadY.i = getelementptr inbounds i8, ptr %1, i64 856844
  %38 = load i32, ptr %iLumaPadY.i, align 4
  %sub35.i = add nsw i32 %38, -4
  %cmp.i = icmp slt i32 %sub35.i, %block_size_y
  br i1 %cmp.i, label %land.lhs.true.i, label %if.else.i

land.lhs.true.i:                                  ; preds = %check_motion_vector_range.exit.i
  %call.i = tail call i32 @CheckVertMV(ptr noundef nonnull %currMB, i32 noundef %add34.i, i32 noundef %block_size_y) #10
  %tobool37.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool37.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %land.lhs.true.i
  tail call void @get_block_luma(ptr noundef %15, i32 noundef %add30.i, i32 noundef %add34.i, i32 noundef %block_size_x, i32 noundef 8, ptr noundef %4, i32 noundef %20, i32 noundef %16, i32 noundef %cond.i, ptr noundef %21, i32 noundef %22, i16 noundef zeroext %conv28.i, ptr noundef nonnull %currMB)
  %add38.i = add nsw i32 %add34.i, 32
  %sub39.i = add nsw i32 %block_size_y, -8
  %add.ptr.i = getelementptr inbounds i8, ptr %4, i64 64
  tail call void @get_block_luma(ptr noundef %15, i32 noundef %add30.i, i32 noundef %add38.i, i32 noundef %block_size_x, i32 noundef %sub39.i, ptr noundef nonnull %add.ptr.i, i32 noundef %20, i32 noundef %16, i32 noundef %cond.i, ptr noundef %21, i32 noundef %22, i16 noundef zeroext %conv28.i, ptr noundef nonnull %currMB)
  br label %if.end.i

if.else.i:                                        ; preds = %land.lhs.true.i, %check_motion_vector_range.exit.i
  tail call void @get_block_luma(ptr noundef %15, i32 noundef %add30.i, i32 noundef %add34.i, i32 noundef %block_size_x, i32 noundef %block_size_y, ptr noundef %4, i32 noundef %20, i32 noundef %16, i32 noundef %cond.i, ptr noundef %21, i32 noundef %22, i16 noundef zeroext %conv28.i, ptr noundef nonnull %currMB)
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %39 = load i32, ptr %mb_field.i, align 8
  %tobool41.not.i = icmp eq i32 %39, 0
  br i1 %tobool41.not.i, label %if.end60.i, label %land.lhs.true42.i

land.lhs.true42.i:                                ; preds = %if.end.i
  %active_pps.i = getelementptr inbounds i8, ptr %1, i64 8
  %40 = load ptr, ptr %active_pps.i, align 8
  %weighted_pred_flag.i = getelementptr inbounds i8, ptr %40, i64 2176
  %41 = load i32, ptr %weighted_pred_flag.i, align 8
  %tobool43.not.i = icmp eq i32 %41, 0
  br i1 %tobool43.not.i, label %lor.lhs.false49.i, label %land.lhs.true44.i

land.lhs.true44.i:                                ; preds = %land.lhs.true42.i
  switch i32 %8, label %lor.lhs.false49.i [
    i32 3, label %if.then56.i
    i32 0, label %if.then56.i
  ]

lor.lhs.false49.i:                                ; preds = %land.lhs.true44.i, %land.lhs.true42.i
  %weighted_bipred_idc.i = getelementptr inbounds i8, ptr %40, i64 2180
  %42 = load i32, ptr %weighted_bipred_idc.i, align 4
  %cmp51.i = icmp eq i32 %42, 1
  %cmp54.i = icmp eq i32 %8, 1
  %or.cond161.i = select i1 %cmp51.i, i1 %cmp54.i, i1 false
  br i1 %or.cond161.i, label %if.then56.i, label %if.end60.i

if.then56.i:                                      ; preds = %lor.lhs.false49.i, %land.lhs.true44.i, %land.lhs.true44.i
  %43 = ashr i8 %12, 1
  %.pre416.i = sext i8 %43 to i64
  br label %if.end60.i

if.end60.i:                                       ; preds = %if.then56.i, %lor.lhs.false49.i, %if.end.i
  %idxprom63.pre-phi.i = phi i64 [ %.pre416.i, %if.then56.i ], [ %idxprom21.i, %lor.lhs.false49.i ], [ %idxprom21.i, %if.end.i ]
  %wp_weight.i = getelementptr inbounds i8, ptr %0, i64 13280
  %44 = load ptr, ptr %wp_weight.i, align 8
  %arrayidx62.i = getelementptr inbounds ptr, ptr %44, i64 %idxprom12.i
  %45 = load ptr, ptr %arrayidx62.i, align 8
  %arrayidx64.i = getelementptr inbounds ptr, ptr %45, i64 %idxprom63.pre-phi.i
  %46 = load ptr, ptr %arrayidx64.i, align 8
  %47 = load i32, ptr %46, align 4
  %wp_offset66.i = getelementptr inbounds i8, ptr %0, i64 13288
  %48 = load ptr, ptr %wp_offset66.i, align 8
  %arrayidx68.i = getelementptr inbounds ptr, ptr %48, i64 %idxprom12.i
  %49 = load ptr, ptr %arrayidx68.i, align 8
  %arrayidx70.i = getelementptr inbounds ptr, ptr %49, i64 %idxprom63.pre-phi.i
  %50 = load ptr, ptr %arrayidx70.i, align 8
  %51 = load i32, ptr %50, align 4
  %mb_pred.i = getelementptr inbounds i8, ptr %0, i64 1248
  %52 = load ptr, ptr %mb_pred.i, align 8
  %arrayidx73.i = getelementptr inbounds ptr, ptr %52, i64 %idxprom24.i
  %53 = load ptr, ptr %arrayidx73.i, align 8
  %idxprom74.i = sext i32 %shl7.i to i64
  %arrayidx75.i = getelementptr inbounds ptr, ptr %53, i64 %idxprom74.i
  %luma_log2_weight_denom.i = getelementptr inbounds i8, ptr %0, i64 13276
  %54 = load i16, ptr %luma_log2_weight_denom.i, align 4
  %conv76.i = zext i16 %54 to i32
  %cmp24.i.i = icmp sgt i32 %block_size_y, 0
  br i1 %cmp24.i.i, label %for.cond1.preheader.lr.ph.i.i, label %weighted_mc_prediction.exit.i

for.cond1.preheader.lr.ph.i.i:                    ; preds = %if.end60.i
  %cmp222.i.i = icmp sgt i32 %block_size_x, 0
  %sub.i.i.i = add nsw i32 %conv76.i, -1
  %shl.i.i.i = shl nuw i32 1, %sub.i.i.i
  br i1 %cmp222.i.i, label %for.cond1.preheader.lr.ph.split.us.i.i, label %weighted_mc_prediction.exit.i

for.cond1.preheader.lr.ph.split.us.i.i:           ; preds = %for.cond1.preheader.lr.ph.i.i
  %cmp.i.i.not.i = icmp eq i16 %54, 0
  %55 = sext i32 %shl.i to i64
  %wide.trip.count61.i.i = zext nneg i32 %block_size_y to i64
  %wide.trip.count56.i.i = zext nneg i32 %block_size_x to i64
  br i1 %cmp.i.i.not.i, label %for.cond1.preheader.us.i.i.preheader, label %for.cond1.preheader.us.us.i.i

for.cond1.preheader.us.i.i.preheader:             ; preds = %for.cond1.preheader.lr.ph.split.us.i.i
  %xtraiter = and i64 %wide.trip.count56.i.i, 1
  %56 = icmp eq i32 %block_size_x, 1
  %unroll_iter = and i64 %wide.trip.count56.i.i, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %for.cond1.preheader.us.i.i

for.cond1.preheader.us.us.i.i:                    ; preds = %for.cond1.preheader.lr.ph.split.us.i.i, %for.cond1.for.inc13_crit_edge.split.us.us.us.i.i
  %indvars.iv58.i.i = phi i64 [ %indvars.iv.next59.i.i, %for.cond1.for.inc13_crit_edge.split.us.us.us.i.i ], [ 0, %for.cond1.preheader.lr.ph.split.us.i.i ]
  %arrayidx.us.us.i.i = getelementptr inbounds ptr, ptr %4, i64 %indvars.iv58.i.i
  %arrayidx9.us.us.i.i = getelementptr inbounds ptr, ptr %arrayidx75.i, i64 %indvars.iv58.i.i
  br label %for.body3.us.us.us.i.i

for.body3.us.us.us.i.i:                           ; preds = %for.body3.us.us.us.i.i, %for.cond1.preheader.us.us.i.i
  %indvars.iv52.i.i = phi i64 [ %indvars.iv.next53.i.i, %for.body3.us.us.us.i.i ], [ 0, %for.cond1.preheader.us.us.i.i ]
  %57 = load ptr, ptr %arrayidx.us.us.i.i, align 8
  %arrayidx5.us.us.us.i.i = getelementptr inbounds i16, ptr %57, i64 %indvars.iv52.i.i
  %58 = load i16, ptr %arrayidx5.us.us.us.i.i, align 2
  %conv.us.us.us.i.i = zext i16 %58 to i32
  %mul.us.us.us.i.i = mul nsw i32 %47, %conv.us.us.us.i.i
  %add.i.us.us.us.i.i = add nsw i32 %mul.us.us.us.i.i, %shl.i.i.i
  %shr.i.us.us.us.i.i = ashr i32 %add.i.us.us.us.i.i, %conv76.i
  %add.us.us.us.i.i = add nsw i32 %shr.i.us.us.us.i.i, %51
  %cond.i.i.us.us.us.i.i = tail call noundef i32 @llvm.smax.i32(i32 %add.us.us.us.i.i, i32 0)
  %cond.i4.i.us.us.us.i.i = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i.us.us.us.i.i, i32 %22)
  %conv7.us.us.us.i.i = trunc i32 %cond.i4.i.us.us.us.i.i to i16
  %59 = load ptr, ptr %arrayidx9.us.us.i.i, align 8
  %60 = getelementptr i16, ptr %59, i64 %indvars.iv52.i.i
  %arrayidx12.us.us.us.i.i = getelementptr i16, ptr %60, i64 %55
  store i16 %conv7.us.us.us.i.i, ptr %arrayidx12.us.us.us.i.i, align 2
  %indvars.iv.next53.i.i = add nuw nsw i64 %indvars.iv52.i.i, 1
  %exitcond57.not.i.i = icmp eq i64 %indvars.iv.next53.i.i, %wide.trip.count56.i.i
  br i1 %exitcond57.not.i.i, label %for.cond1.for.inc13_crit_edge.split.us.us.us.i.i, label %for.body3.us.us.us.i.i

for.cond1.for.inc13_crit_edge.split.us.us.us.i.i: ; preds = %for.body3.us.us.us.i.i
  %indvars.iv.next59.i.i = add nuw nsw i64 %indvars.iv58.i.i, 1
  %exitcond62.not.i.i = icmp eq i64 %indvars.iv.next59.i.i, %wide.trip.count61.i.i
  br i1 %exitcond62.not.i.i, label %weighted_mc_prediction.exit.i, label %for.cond1.preheader.us.us.i.i

for.cond1.preheader.us.i.i:                       ; preds = %for.cond1.preheader.us.i.i.preheader, %for.cond1.for.inc13_crit_edge.split.us41.i.i
  %indvars.iv47.i.i = phi i64 [ %indvars.iv.next48.i.i, %for.cond1.for.inc13_crit_edge.split.us41.i.i ], [ 0, %for.cond1.preheader.us.i.i.preheader ]
  %arrayidx.us.i.i = getelementptr inbounds ptr, ptr %4, i64 %indvars.iv47.i.i
  %arrayidx9.us.i.i = getelementptr inbounds ptr, ptr %arrayidx75.i, i64 %indvars.iv47.i.i
  br i1 %56, label %for.cond1.for.inc13_crit_edge.split.us41.i.i.unr-lcssa, label %for.body3.us26.i.i

for.body3.us26.i.i:                               ; preds = %for.cond1.preheader.us.i.i, %for.body3.us26.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.1, %for.body3.us26.i.i ], [ 0, %for.cond1.preheader.us.i.i ]
  %niter = phi i64 [ %niter.next.1, %for.body3.us26.i.i ], [ 0, %for.cond1.preheader.us.i.i ]
  %61 = load ptr, ptr %arrayidx.us.i.i, align 8
  %arrayidx5.us29.i.i = getelementptr inbounds i16, ptr %61, i64 %indvars.iv.i.i
  %62 = load i16, ptr %arrayidx5.us29.i.i, align 2
  %conv.us30.i.i = zext i16 %62 to i32
  %mul.us31.i.i = mul nsw i32 %47, %conv.us30.i.i
  %add.us32.i.i = add nsw i32 %mul.us31.i.i, %51
  %cond.i.i.us33.i.i = tail call noundef i32 @llvm.smax.i32(i32 %add.us32.i.i, i32 0)
  %cond.i4.i.us34.i.i = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i.us33.i.i, i32 %22)
  %conv7.us35.i.i = trunc i32 %cond.i4.i.us34.i.i to i16
  %63 = load ptr, ptr %arrayidx9.us.i.i, align 8
  %64 = getelementptr i16, ptr %63, i64 %indvars.iv.i.i
  %arrayidx12.us38.i.i = getelementptr i16, ptr %64, i64 %55
  store i16 %conv7.us35.i.i, ptr %arrayidx12.us38.i.i, align 2
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1
  %65 = load ptr, ptr %arrayidx.us.i.i, align 8
  %arrayidx5.us29.i.i.1 = getelementptr inbounds i16, ptr %65, i64 %indvars.iv.next.i.i
  %66 = load i16, ptr %arrayidx5.us29.i.i.1, align 2
  %conv.us30.i.i.1 = zext i16 %66 to i32
  %mul.us31.i.i.1 = mul nsw i32 %47, %conv.us30.i.i.1
  %add.us32.i.i.1 = add nsw i32 %mul.us31.i.i.1, %51
  %cond.i.i.us33.i.i.1 = tail call noundef i32 @llvm.smax.i32(i32 %add.us32.i.i.1, i32 0)
  %cond.i4.i.us34.i.i.1 = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i.us33.i.i.1, i32 %22)
  %conv7.us35.i.i.1 = trunc i32 %cond.i4.i.us34.i.i.1 to i16
  %67 = load ptr, ptr %arrayidx9.us.i.i, align 8
  %68 = getelementptr i16, ptr %67, i64 %indvars.iv.next.i.i
  %arrayidx12.us38.i.i.1 = getelementptr i16, ptr %68, i64 %55
  store i16 %conv7.us35.i.i.1, ptr %arrayidx12.us38.i.i.1, align 2
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %for.cond1.for.inc13_crit_edge.split.us41.i.i.unr-lcssa, label %for.body3.us26.i.i

for.cond1.for.inc13_crit_edge.split.us41.i.i.unr-lcssa: ; preds = %for.body3.us26.i.i, %for.cond1.preheader.us.i.i
  %indvars.iv.i.i.unr = phi i64 [ 0, %for.cond1.preheader.us.i.i ], [ %indvars.iv.next.i.i.1, %for.body3.us26.i.i ]
  br i1 %lcmp.mod.not, label %for.cond1.for.inc13_crit_edge.split.us41.i.i, label %for.body3.us26.i.i.epil

for.body3.us26.i.i.epil:                          ; preds = %for.cond1.for.inc13_crit_edge.split.us41.i.i.unr-lcssa
  %69 = load ptr, ptr %arrayidx.us.i.i, align 8
  %arrayidx5.us29.i.i.epil = getelementptr inbounds i16, ptr %69, i64 %indvars.iv.i.i.unr
  %70 = load i16, ptr %arrayidx5.us29.i.i.epil, align 2
  %conv.us30.i.i.epil = zext i16 %70 to i32
  %mul.us31.i.i.epil = mul nsw i32 %47, %conv.us30.i.i.epil
  %add.us32.i.i.epil = add nsw i32 %mul.us31.i.i.epil, %51
  %cond.i.i.us33.i.i.epil = tail call noundef i32 @llvm.smax.i32(i32 %add.us32.i.i.epil, i32 0)
  %cond.i4.i.us34.i.i.epil = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i.us33.i.i.epil, i32 %22)
  %conv7.us35.i.i.epil = trunc i32 %cond.i4.i.us34.i.i.epil to i16
  %71 = load ptr, ptr %arrayidx9.us.i.i, align 8
  %72 = getelementptr i16, ptr %71, i64 %indvars.iv.i.i.unr
  %arrayidx12.us38.i.i.epil = getelementptr i16, ptr %72, i64 %55
  store i16 %conv7.us35.i.i.epil, ptr %arrayidx12.us38.i.i.epil, align 2
  br label %for.cond1.for.inc13_crit_edge.split.us41.i.i

for.cond1.for.inc13_crit_edge.split.us41.i.i:     ; preds = %for.cond1.for.inc13_crit_edge.split.us41.i.i.unr-lcssa, %for.body3.us26.i.i.epil
  %indvars.iv.next48.i.i = add nuw nsw i64 %indvars.iv47.i.i, 1
  %exitcond51.not.i.i = icmp eq i64 %indvars.iv.next48.i.i, %wide.trip.count61.i.i
  br i1 %exitcond51.not.i.i, label %weighted_mc_prediction.exit.i, label %for.cond1.preheader.us.i.i

weighted_mc_prediction.exit.i:                    ; preds = %for.cond1.for.inc13_crit_edge.split.us.us.us.i.i, %for.cond1.for.inc13_crit_edge.split.us41.i.i, %for.cond1.preheader.lr.ph.i.i, %if.end60.i
  switch i32 %9, label %if.then82.i [
    i32 3, label %if.end7
    i32 0, label %if.end7
  ]

if.then82.i:                                      ; preds = %weighted_mc_prediction.exit.i
  %chroma_format_idc83.i = getelementptr inbounds i8, ptr %3, i64 36
  %73 = load i32, ptr %chroma_format_idc83.i, align 4
  %cmp84.i = icmp eq i32 %73, 1
  br i1 %cmp84.i, label %cond.true86.i, label %cond.end94.i

cond.true86.i:                                    ; preds = %if.then82.i
  %chroma_vector_adjustment.i = getelementptr inbounds i8, ptr %0, i64 13552
  %arrayidx91.i = getelementptr inbounds [6 x [16 x i8]], ptr %chroma_vector_adjustment.i, i64 0, i64 %idxprom19.i, i64 %idxprom21.i
  %74 = load i8, ptr %arrayidx91.i, align 1
  %conv92.i = sext i8 %74 to i32
  br label %cond.end94.i

cond.end94.i:                                     ; preds = %cond.true86.i, %if.then82.i
  %cond95.i = phi i32 [ %conv92.i, %cond.true86.i ], [ 0, %if.then82.i ]
  %add96.i = add nsw i32 %cond95.i, %add34.i
  %total_scale97.i = getelementptr inbounds i8, ptr %1, i64 849212
  %75 = load i32, ptr %total_scale97.i, align 4
  %subpel_x98.i = getelementptr inbounds i8, ptr %1, i64 849196
  %76 = load i32, ptr %subpel_x98.i, align 4
  %subpel_y99.i = getelementptr inbounds i8, ptr %1, i64 849200
  %77 = load i32, ptr %subpel_y99.i, align 8
  %shiftpel_x100.i = getelementptr inbounds i8, ptr %1, i64 849204
  %78 = load i32, ptr %shiftpel_x100.i, align 4
  %shiftpel_y101.i = getelementptr inbounds i8, ptr %1, i64 849208
  %79 = load i32, ptr %shiftpel_y101.i, align 8
  %size_x_cr_m1.i = getelementptr inbounds i8, ptr %dec_picture, i64 88
  %80 = load i32, ptr %size_x_cr_m1.i, align 8
  %81 = load i32, ptr %mb_field.i, align 8
  %tobool105.not.i = icmp eq i32 %81, 0
  br i1 %tobool105.not.i, label %cond.false109.i, label %cond.true106.i

cond.true106.i:                                   ; preds = %cond.end94.i
  %size_y_cr.i = getelementptr inbounds i8, ptr %dec_picture, i64 76
  %82 = load i32, ptr %size_y_cr.i, align 4
  %shr107.i = ashr i32 %82, 1
  %sub108.i = add nsw i32 %shr107.i, -1
  br label %cond.end110.i

cond.false109.i:                                  ; preds = %cond.end94.i
  %size_y_cr_m1.i = getelementptr inbounds i8, ptr %dec_picture, i64 92
  %83 = load i32, ptr %size_y_cr_m1.i, align 4
  br label %cond.end110.i

cond.end110.i:                                    ; preds = %cond.false109.i, %cond.true106.i
  %cond111.i = phi i32 [ %sub108.i, %cond.true106.i ], [ %83, %cond.false109.i ]
  %chroma_log2_weight_denom.i = getelementptr inbounds i8, ptr %0, i64 13278
  %84 = load i16, ptr %chroma_log2_weight_denom.i, align 2
  %conv112.i = zext i16 %84 to i32
  %mb_cr_size_x.i = getelementptr inbounds i8, ptr %1, i64 849108
  %85 = load i32, ptr %mb_cr_size_x.i, align 4
  %cmp113.i = icmp ne i32 %85, 16
  %shr118.i = zext i1 %cmp113.i to i32
  %block_size_x_cr.0.i = ashr i32 %block_size_x, %shr118.i
  %ioff_cr.0.i = ashr exact i32 %shl.i, %shr118.i
  %mb_cr_size_y.i = getelementptr inbounds i8, ptr %1, i64 849112
  %86 = load i32, ptr %mb_cr_size_y.i, align 8
  %cmp120.i = icmp ne i32 %86, 16
  %shr125.i = zext i1 %cmp120.i to i32
  %block_size_y_cr.0.i = ashr i32 %block_size_y, %shr125.i
  %joff_cr.0.i = ashr exact i32 %shl7.i, %shr125.i
  %arrayidx128.i = getelementptr inbounds i8, ptr %1, i64 849064
  %87 = load i32, ptr %arrayidx128.i, align 4
  %conv129.i = trunc i32 %87 to i16
  %88 = load ptr, ptr %wp_weight.i, align 8
  %arrayidx132.i = getelementptr inbounds ptr, ptr %88, i64 %idxprom12.i
  %89 = load ptr, ptr %arrayidx132.i, align 8
  %arrayidx134.i = getelementptr inbounds ptr, ptr %89, i64 %idxprom63.pre-phi.i
  %90 = load ptr, ptr %arrayidx134.i, align 8
  %91 = load ptr, ptr %wp_offset66.i, align 8
  %arrayidx137.i = getelementptr inbounds ptr, ptr %91, i64 %idxprom12.i
  %92 = load ptr, ptr %arrayidx137.i, align 8
  %arrayidx139.i = getelementptr inbounds ptr, ptr %92, i64 %idxprom63.pre-phi.i
  %93 = load ptr, ptr %arrayidx139.i, align 8
  %94 = load ptr, ptr %4, align 8
  %95 = load ptr, ptr %5, align 8
  tail call fastcc void @get_block_chroma(ptr noundef %15, i32 noundef %add30.i, i32 noundef %add96.i, i32 noundef %76, i32 noundef %77, i32 noundef %80, i32 noundef %cond111.i, i32 noundef %block_size_x_cr.0.i, i32 noundef %block_size_y_cr.0.i, i32 noundef %78, i32 noundef %79, ptr noundef %94, ptr noundef %95, i32 noundef %75, i16 noundef zeroext %conv129.i, ptr noundef nonnull %1)
  %96 = load ptr, ptr %mb_pred.i, align 8
  %arrayidx145.i = getelementptr inbounds i8, ptr %96, i64 8
  %97 = load ptr, ptr %arrayidx145.i, align 8
  %idxprom146.i = sext i32 %joff_cr.0.i to i64
  %arrayidx147.i = getelementptr inbounds ptr, ptr %97, i64 %idxprom146.i
  %arrayidx148.i = getelementptr inbounds i8, ptr %90, i64 4
  %98 = load i32, ptr %arrayidx148.i, align 4
  %arrayidx149.i = getelementptr inbounds i8, ptr %93, i64 4
  %99 = load i32, ptr %arrayidx149.i, align 4
  %arrayidx151.i = getelementptr inbounds i8, ptr %1, i64 849076
  %100 = load i32, ptr %arrayidx151.i, align 4
  %cmp24.i294.i = icmp sgt i32 %block_size_y_cr.0.i, 0
  br i1 %cmp24.i294.i, label %for.cond1.preheader.lr.ph.i295.i, label %if.end7

for.cond1.preheader.lr.ph.i295.i:                 ; preds = %cond.end110.i
  %cmp222.i296.i = icmp sgt i32 %block_size_x_cr.0.i, 0
  %sub.i.i297.i = add nsw i32 %conv112.i, -1
  %shl.i.i298.i = shl nuw i32 1, %sub.i.i297.i
  br i1 %cmp222.i296.i, label %for.cond1.preheader.lr.ph.split.us.i299.i, label %if.end7

for.cond1.preheader.lr.ph.split.us.i299.i:        ; preds = %for.cond1.preheader.lr.ph.i295.i
  %cmp.i.i300.not.i = icmp eq i16 %84, 0
  %101 = sext i32 %ioff_cr.0.i to i64
  %wide.trip.count61.i301.i = zext nneg i32 %block_size_y_cr.0.i to i64
  %wide.trip.count56.i302.i = zext nneg i32 %block_size_x_cr.0.i to i64
  br i1 %cmp.i.i300.not.i, label %for.cond1.preheader.us.i303.i.preheader, label %for.cond1.preheader.us.us.i322.i

for.cond1.preheader.us.i303.i.preheader:          ; preds = %for.cond1.preheader.lr.ph.split.us.i299.i
  %xtraiter712 = and i64 %wide.trip.count56.i302.i, 1
  %102 = icmp eq i32 %block_size_x_cr.0.i, 1
  %unroll_iter714 = and i64 %wide.trip.count56.i302.i, 2147483646
  %lcmp.mod713.not = icmp eq i64 %xtraiter712, 0
  br label %for.cond1.preheader.us.i303.i

for.cond1.preheader.us.us.i322.i:                 ; preds = %for.cond1.preheader.lr.ph.split.us.i299.i, %for.cond1.for.inc13_crit_edge.split.us.us.us.i340.i
  %indvars.iv58.i323.i = phi i64 [ %indvars.iv.next59.i341.i, %for.cond1.for.inc13_crit_edge.split.us.us.us.i340.i ], [ 0, %for.cond1.preheader.lr.ph.split.us.i299.i ]
  %arrayidx.us.us.i324.i = getelementptr inbounds ptr, ptr %4, i64 %indvars.iv58.i323.i
  %arrayidx9.us.us.i325.i = getelementptr inbounds ptr, ptr %arrayidx147.i, i64 %indvars.iv58.i323.i
  br label %for.body3.us.us.us.i326.i

for.body3.us.us.us.i326.i:                        ; preds = %for.body3.us.us.us.i326.i, %for.cond1.preheader.us.us.i322.i
  %indvars.iv52.i327.i = phi i64 [ %indvars.iv.next53.i338.i, %for.body3.us.us.us.i326.i ], [ 0, %for.cond1.preheader.us.us.i322.i ]
  %103 = load ptr, ptr %arrayidx.us.us.i324.i, align 8
  %arrayidx5.us.us.us.i328.i = getelementptr inbounds i16, ptr %103, i64 %indvars.iv52.i327.i
  %104 = load i16, ptr %arrayidx5.us.us.us.i328.i, align 2
  %conv.us.us.us.i329.i = zext i16 %104 to i32
  %mul.us.us.us.i330.i = mul nsw i32 %98, %conv.us.us.us.i329.i
  %add.i.us.us.us.i331.i = add nsw i32 %mul.us.us.us.i330.i, %shl.i.i298.i
  %shr.i.us.us.us.i332.i = ashr i32 %add.i.us.us.us.i331.i, %conv112.i
  %add.us.us.us.i333.i = add nsw i32 %shr.i.us.us.us.i332.i, %99
  %cond.i.i.us.us.us.i334.i = tail call noundef i32 @llvm.smax.i32(i32 %add.us.us.us.i333.i, i32 0)
  %cond.i4.i.us.us.us.i335.i = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i.us.us.us.i334.i, i32 %100)
  %conv7.us.us.us.i336.i = trunc i32 %cond.i4.i.us.us.us.i335.i to i16
  %105 = load ptr, ptr %arrayidx9.us.us.i325.i, align 8
  %106 = getelementptr i16, ptr %105, i64 %indvars.iv52.i327.i
  %arrayidx12.us.us.us.i337.i = getelementptr i16, ptr %106, i64 %101
  store i16 %conv7.us.us.us.i336.i, ptr %arrayidx12.us.us.us.i337.i, align 2
  %indvars.iv.next53.i338.i = add nuw nsw i64 %indvars.iv52.i327.i, 1
  %exitcond57.not.i339.i = icmp eq i64 %indvars.iv.next53.i338.i, %wide.trip.count56.i302.i
  br i1 %exitcond57.not.i339.i, label %for.cond1.for.inc13_crit_edge.split.us.us.us.i340.i, label %for.body3.us.us.us.i326.i

for.cond1.for.inc13_crit_edge.split.us.us.us.i340.i: ; preds = %for.body3.us.us.us.i326.i
  %indvars.iv.next59.i341.i = add nuw nsw i64 %indvars.iv58.i323.i, 1
  %exitcond62.not.i342.i = icmp eq i64 %indvars.iv.next59.i341.i, %wide.trip.count61.i301.i
  br i1 %exitcond62.not.i342.i, label %weighted_mc_prediction.exit343.i, label %for.cond1.preheader.us.us.i322.i

for.cond1.preheader.us.i303.i:                    ; preds = %for.cond1.preheader.us.i303.i.preheader, %for.cond1.for.inc13_crit_edge.split.us41.i319.i
  %indvars.iv47.i304.i = phi i64 [ %indvars.iv.next48.i320.i, %for.cond1.for.inc13_crit_edge.split.us41.i319.i ], [ 0, %for.cond1.preheader.us.i303.i.preheader ]
  %arrayidx.us.i305.i = getelementptr inbounds ptr, ptr %4, i64 %indvars.iv47.i304.i
  %arrayidx9.us.i306.i = getelementptr inbounds ptr, ptr %arrayidx147.i, i64 %indvars.iv47.i304.i
  br i1 %102, label %for.cond1.for.inc13_crit_edge.split.us41.i319.i.unr-lcssa, label %for.body3.us26.i307.i

for.body3.us26.i307.i:                            ; preds = %for.cond1.preheader.us.i303.i, %for.body3.us26.i307.i
  %indvars.iv.i308.i = phi i64 [ %indvars.iv.next.i317.i.1, %for.body3.us26.i307.i ], [ 0, %for.cond1.preheader.us.i303.i ]
  %niter715 = phi i64 [ %niter715.next.1, %for.body3.us26.i307.i ], [ 0, %for.cond1.preheader.us.i303.i ]
  %107 = load ptr, ptr %arrayidx.us.i305.i, align 8
  %arrayidx5.us29.i309.i = getelementptr inbounds i16, ptr %107, i64 %indvars.iv.i308.i
  %108 = load i16, ptr %arrayidx5.us29.i309.i, align 2
  %conv.us30.i310.i = zext i16 %108 to i32
  %mul.us31.i311.i = mul nsw i32 %98, %conv.us30.i310.i
  %add.us32.i312.i = add nsw i32 %mul.us31.i311.i, %99
  %cond.i.i.us33.i313.i = tail call noundef i32 @llvm.smax.i32(i32 %add.us32.i312.i, i32 0)
  %cond.i4.i.us34.i314.i = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i.us33.i313.i, i32 %100)
  %conv7.us35.i315.i = trunc i32 %cond.i4.i.us34.i314.i to i16
  %109 = load ptr, ptr %arrayidx9.us.i306.i, align 8
  %110 = getelementptr i16, ptr %109, i64 %indvars.iv.i308.i
  %arrayidx12.us38.i316.i = getelementptr i16, ptr %110, i64 %101
  store i16 %conv7.us35.i315.i, ptr %arrayidx12.us38.i316.i, align 2
  %indvars.iv.next.i317.i = or disjoint i64 %indvars.iv.i308.i, 1
  %111 = load ptr, ptr %arrayidx.us.i305.i, align 8
  %arrayidx5.us29.i309.i.1 = getelementptr inbounds i16, ptr %111, i64 %indvars.iv.next.i317.i
  %112 = load i16, ptr %arrayidx5.us29.i309.i.1, align 2
  %conv.us30.i310.i.1 = zext i16 %112 to i32
  %mul.us31.i311.i.1 = mul nsw i32 %98, %conv.us30.i310.i.1
  %add.us32.i312.i.1 = add nsw i32 %mul.us31.i311.i.1, %99
  %cond.i.i.us33.i313.i.1 = tail call noundef i32 @llvm.smax.i32(i32 %add.us32.i312.i.1, i32 0)
  %cond.i4.i.us34.i314.i.1 = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i.us33.i313.i.1, i32 %100)
  %conv7.us35.i315.i.1 = trunc i32 %cond.i4.i.us34.i314.i.1 to i16
  %113 = load ptr, ptr %arrayidx9.us.i306.i, align 8
  %114 = getelementptr i16, ptr %113, i64 %indvars.iv.next.i317.i
  %arrayidx12.us38.i316.i.1 = getelementptr i16, ptr %114, i64 %101
  store i16 %conv7.us35.i315.i.1, ptr %arrayidx12.us38.i316.i.1, align 2
  %indvars.iv.next.i317.i.1 = add nuw nsw i64 %indvars.iv.i308.i, 2
  %niter715.next.1 = add i64 %niter715, 2
  %niter715.ncmp.1 = icmp eq i64 %niter715.next.1, %unroll_iter714
  br i1 %niter715.ncmp.1, label %for.cond1.for.inc13_crit_edge.split.us41.i319.i.unr-lcssa, label %for.body3.us26.i307.i

for.cond1.for.inc13_crit_edge.split.us41.i319.i.unr-lcssa: ; preds = %for.body3.us26.i307.i, %for.cond1.preheader.us.i303.i
  %indvars.iv.i308.i.unr = phi i64 [ 0, %for.cond1.preheader.us.i303.i ], [ %indvars.iv.next.i317.i.1, %for.body3.us26.i307.i ]
  br i1 %lcmp.mod713.not, label %for.cond1.for.inc13_crit_edge.split.us41.i319.i, label %for.body3.us26.i307.i.epil

for.body3.us26.i307.i.epil:                       ; preds = %for.cond1.for.inc13_crit_edge.split.us41.i319.i.unr-lcssa
  %115 = load ptr, ptr %arrayidx.us.i305.i, align 8
  %arrayidx5.us29.i309.i.epil = getelementptr inbounds i16, ptr %115, i64 %indvars.iv.i308.i.unr
  %116 = load i16, ptr %arrayidx5.us29.i309.i.epil, align 2
  %conv.us30.i310.i.epil = zext i16 %116 to i32
  %mul.us31.i311.i.epil = mul nsw i32 %98, %conv.us30.i310.i.epil
  %add.us32.i312.i.epil = add nsw i32 %mul.us31.i311.i.epil, %99
  %cond.i.i.us33.i313.i.epil = tail call noundef i32 @llvm.smax.i32(i32 %add.us32.i312.i.epil, i32 0)
  %cond.i4.i.us34.i314.i.epil = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i.us33.i313.i.epil, i32 %100)
  %conv7.us35.i315.i.epil = trunc i32 %cond.i4.i.us34.i314.i.epil to i16
  %117 = load ptr, ptr %arrayidx9.us.i306.i, align 8
  %118 = getelementptr i16, ptr %117, i64 %indvars.iv.i308.i.unr
  %arrayidx12.us38.i316.i.epil = getelementptr i16, ptr %118, i64 %101
  store i16 %conv7.us35.i315.i.epil, ptr %arrayidx12.us38.i316.i.epil, align 2
  br label %for.cond1.for.inc13_crit_edge.split.us41.i319.i

for.cond1.for.inc13_crit_edge.split.us41.i319.i:  ; preds = %for.cond1.for.inc13_crit_edge.split.us41.i319.i.unr-lcssa, %for.body3.us26.i307.i.epil
  %indvars.iv.next48.i320.i = add nuw nsw i64 %indvars.iv47.i304.i, 1
  %exitcond51.not.i321.i = icmp eq i64 %indvars.iv.next48.i320.i, %wide.trip.count61.i301.i
  br i1 %exitcond51.not.i321.i, label %weighted_mc_prediction.exit343.i, label %for.cond1.preheader.us.i303.i

weighted_mc_prediction.exit343.i:                 ; preds = %for.cond1.for.inc13_crit_edge.split.us.us.us.i340.i, %for.cond1.for.inc13_crit_edge.split.us41.i319.i
  %119 = load ptr, ptr %mb_pred.i, align 8
  %arrayidx153.i = getelementptr inbounds i8, ptr %119, i64 16
  %120 = load ptr, ptr %arrayidx153.i, align 8
  %arrayidx155.i = getelementptr inbounds ptr, ptr %120, i64 %idxprom146.i
  %arrayidx156.i = getelementptr inbounds i8, ptr %90, i64 8
  %121 = load i32, ptr %arrayidx156.i, align 4
  %arrayidx157.i = getelementptr inbounds i8, ptr %93, i64 8
  %122 = load i32, ptr %arrayidx157.i, align 4
  %arrayidx159.i = getelementptr inbounds i8, ptr %1, i64 849080
  %123 = load i32, ptr %arrayidx159.i, align 8
  br i1 %cmp.i.i300.not.i, label %for.cond1.preheader.us.i353.i.preheader, label %for.cond1.preheader.us.us.i372.i

for.cond1.preheader.us.i353.i.preheader:          ; preds = %weighted_mc_prediction.exit343.i
  %xtraiter716 = and i64 %wide.trip.count56.i302.i, 1
  %124 = icmp eq i32 %block_size_x_cr.0.i, 1
  %unroll_iter718 = and i64 %wide.trip.count56.i302.i, 2147483646
  %lcmp.mod717.not = icmp eq i64 %xtraiter716, 0
  br label %for.cond1.preheader.us.i353.i

for.cond1.preheader.us.us.i372.i:                 ; preds = %weighted_mc_prediction.exit343.i, %for.cond1.for.inc13_crit_edge.split.us.us.us.i390.i
  %indvars.iv58.i373.i = phi i64 [ %indvars.iv.next59.i391.i, %for.cond1.for.inc13_crit_edge.split.us.us.us.i390.i ], [ 0, %weighted_mc_prediction.exit343.i ]
  %arrayidx.us.us.i374.i = getelementptr inbounds ptr, ptr %5, i64 %indvars.iv58.i373.i
  %arrayidx9.us.us.i375.i = getelementptr inbounds ptr, ptr %arrayidx155.i, i64 %indvars.iv58.i373.i
  br label %for.body3.us.us.us.i376.i

for.body3.us.us.us.i376.i:                        ; preds = %for.body3.us.us.us.i376.i, %for.cond1.preheader.us.us.i372.i
  %indvars.iv52.i377.i = phi i64 [ %indvars.iv.next53.i388.i, %for.body3.us.us.us.i376.i ], [ 0, %for.cond1.preheader.us.us.i372.i ]
  %125 = load ptr, ptr %arrayidx.us.us.i374.i, align 8
  %arrayidx5.us.us.us.i378.i = getelementptr inbounds i16, ptr %125, i64 %indvars.iv52.i377.i
  %126 = load i16, ptr %arrayidx5.us.us.us.i378.i, align 2
  %conv.us.us.us.i379.i = zext i16 %126 to i32
  %mul.us.us.us.i380.i = mul nsw i32 %121, %conv.us.us.us.i379.i
  %add.i.us.us.us.i381.i = add nsw i32 %mul.us.us.us.i380.i, %shl.i.i298.i
  %shr.i.us.us.us.i382.i = ashr i32 %add.i.us.us.us.i381.i, %conv112.i
  %add.us.us.us.i383.i = add nsw i32 %shr.i.us.us.us.i382.i, %122
  %cond.i.i.us.us.us.i384.i = tail call noundef i32 @llvm.smax.i32(i32 %add.us.us.us.i383.i, i32 0)
  %cond.i4.i.us.us.us.i385.i = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i.us.us.us.i384.i, i32 %123)
  %conv7.us.us.us.i386.i = trunc i32 %cond.i4.i.us.us.us.i385.i to i16
  %127 = load ptr, ptr %arrayidx9.us.us.i375.i, align 8
  %128 = getelementptr i16, ptr %127, i64 %indvars.iv52.i377.i
  %arrayidx12.us.us.us.i387.i = getelementptr i16, ptr %128, i64 %101
  store i16 %conv7.us.us.us.i386.i, ptr %arrayidx12.us.us.us.i387.i, align 2
  %indvars.iv.next53.i388.i = add nuw nsw i64 %indvars.iv52.i377.i, 1
  %exitcond57.not.i389.i = icmp eq i64 %indvars.iv.next53.i388.i, %wide.trip.count56.i302.i
  br i1 %exitcond57.not.i389.i, label %for.cond1.for.inc13_crit_edge.split.us.us.us.i390.i, label %for.body3.us.us.us.i376.i

for.cond1.for.inc13_crit_edge.split.us.us.us.i390.i: ; preds = %for.body3.us.us.us.i376.i
  %indvars.iv.next59.i391.i = add nuw nsw i64 %indvars.iv58.i373.i, 1
  %exitcond62.not.i392.i = icmp eq i64 %indvars.iv.next59.i391.i, %wide.trip.count61.i301.i
  br i1 %exitcond62.not.i392.i, label %if.end7, label %for.cond1.preheader.us.us.i372.i

for.cond1.preheader.us.i353.i:                    ; preds = %for.cond1.preheader.us.i353.i.preheader, %for.cond1.for.inc13_crit_edge.split.us41.i369.i
  %indvars.iv47.i354.i = phi i64 [ %indvars.iv.next48.i370.i, %for.cond1.for.inc13_crit_edge.split.us41.i369.i ], [ 0, %for.cond1.preheader.us.i353.i.preheader ]
  %arrayidx.us.i355.i = getelementptr inbounds ptr, ptr %5, i64 %indvars.iv47.i354.i
  %arrayidx9.us.i356.i = getelementptr inbounds ptr, ptr %arrayidx155.i, i64 %indvars.iv47.i354.i
  br i1 %124, label %for.cond1.for.inc13_crit_edge.split.us41.i369.i.unr-lcssa, label %for.body3.us26.i357.i

for.body3.us26.i357.i:                            ; preds = %for.cond1.preheader.us.i353.i, %for.body3.us26.i357.i
  %indvars.iv.i358.i = phi i64 [ %indvars.iv.next.i367.i.1, %for.body3.us26.i357.i ], [ 0, %for.cond1.preheader.us.i353.i ]
  %niter719 = phi i64 [ %niter719.next.1, %for.body3.us26.i357.i ], [ 0, %for.cond1.preheader.us.i353.i ]
  %129 = load ptr, ptr %arrayidx.us.i355.i, align 8
  %arrayidx5.us29.i359.i = getelementptr inbounds i16, ptr %129, i64 %indvars.iv.i358.i
  %130 = load i16, ptr %arrayidx5.us29.i359.i, align 2
  %conv.us30.i360.i = zext i16 %130 to i32
  %mul.us31.i361.i = mul nsw i32 %121, %conv.us30.i360.i
  %add.us32.i362.i = add nsw i32 %mul.us31.i361.i, %122
  %cond.i.i.us33.i363.i = tail call noundef i32 @llvm.smax.i32(i32 %add.us32.i362.i, i32 0)
  %cond.i4.i.us34.i364.i = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i.us33.i363.i, i32 %123)
  %conv7.us35.i365.i = trunc i32 %cond.i4.i.us34.i364.i to i16
  %131 = load ptr, ptr %arrayidx9.us.i356.i, align 8
  %132 = getelementptr i16, ptr %131, i64 %indvars.iv.i358.i
  %arrayidx12.us38.i366.i = getelementptr i16, ptr %132, i64 %101
  store i16 %conv7.us35.i365.i, ptr %arrayidx12.us38.i366.i, align 2
  %indvars.iv.next.i367.i = or disjoint i64 %indvars.iv.i358.i, 1
  %133 = load ptr, ptr %arrayidx.us.i355.i, align 8
  %arrayidx5.us29.i359.i.1 = getelementptr inbounds i16, ptr %133, i64 %indvars.iv.next.i367.i
  %134 = load i16, ptr %arrayidx5.us29.i359.i.1, align 2
  %conv.us30.i360.i.1 = zext i16 %134 to i32
  %mul.us31.i361.i.1 = mul nsw i32 %121, %conv.us30.i360.i.1
  %add.us32.i362.i.1 = add nsw i32 %mul.us31.i361.i.1, %122
  %cond.i.i.us33.i363.i.1 = tail call noundef i32 @llvm.smax.i32(i32 %add.us32.i362.i.1, i32 0)
  %cond.i4.i.us34.i364.i.1 = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i.us33.i363.i.1, i32 %123)
  %conv7.us35.i365.i.1 = trunc i32 %cond.i4.i.us34.i364.i.1 to i16
  %135 = load ptr, ptr %arrayidx9.us.i356.i, align 8
  %136 = getelementptr i16, ptr %135, i64 %indvars.iv.next.i367.i
  %arrayidx12.us38.i366.i.1 = getelementptr i16, ptr %136, i64 %101
  store i16 %conv7.us35.i365.i.1, ptr %arrayidx12.us38.i366.i.1, align 2
  %indvars.iv.next.i367.i.1 = add nuw nsw i64 %indvars.iv.i358.i, 2
  %niter719.next.1 = add i64 %niter719, 2
  %niter719.ncmp.1 = icmp eq i64 %niter719.next.1, %unroll_iter718
  br i1 %niter719.ncmp.1, label %for.cond1.for.inc13_crit_edge.split.us41.i369.i.unr-lcssa, label %for.body3.us26.i357.i

for.cond1.for.inc13_crit_edge.split.us41.i369.i.unr-lcssa: ; preds = %for.body3.us26.i357.i, %for.cond1.preheader.us.i353.i
  %indvars.iv.i358.i.unr = phi i64 [ 0, %for.cond1.preheader.us.i353.i ], [ %indvars.iv.next.i367.i.1, %for.body3.us26.i357.i ]
  br i1 %lcmp.mod717.not, label %for.cond1.for.inc13_crit_edge.split.us41.i369.i, label %for.body3.us26.i357.i.epil

for.body3.us26.i357.i.epil:                       ; preds = %for.cond1.for.inc13_crit_edge.split.us41.i369.i.unr-lcssa
  %137 = load ptr, ptr %arrayidx.us.i355.i, align 8
  %arrayidx5.us29.i359.i.epil = getelementptr inbounds i16, ptr %137, i64 %indvars.iv.i358.i.unr
  %138 = load i16, ptr %arrayidx5.us29.i359.i.epil, align 2
  %conv.us30.i360.i.epil = zext i16 %138 to i32
  %mul.us31.i361.i.epil = mul nsw i32 %121, %conv.us30.i360.i.epil
  %add.us32.i362.i.epil = add nsw i32 %mul.us31.i361.i.epil, %122
  %cond.i.i.us33.i363.i.epil = tail call noundef i32 @llvm.smax.i32(i32 %add.us32.i362.i.epil, i32 0)
  %cond.i4.i.us34.i364.i.epil = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i.us33.i363.i.epil, i32 %123)
  %conv7.us35.i365.i.epil = trunc i32 %cond.i4.i.us34.i364.i.epil to i16
  %139 = load ptr, ptr %arrayidx9.us.i356.i, align 8
  %140 = getelementptr i16, ptr %139, i64 %indvars.iv.i358.i.unr
  %arrayidx12.us38.i366.i.epil = getelementptr i16, ptr %140, i64 %101
  store i16 %conv7.us35.i365.i.epil, ptr %arrayidx12.us38.i366.i.epil, align 2
  br label %for.cond1.for.inc13_crit_edge.split.us41.i369.i

for.cond1.for.inc13_crit_edge.split.us41.i369.i:  ; preds = %for.cond1.for.inc13_crit_edge.split.us41.i369.i.unr-lcssa, %for.body3.us26.i357.i.epil
  %indvars.iv.next48.i370.i = add nuw nsw i64 %indvars.iv47.i354.i, 1
  %exitcond51.not.i371.i = icmp eq i64 %indvars.iv.next48.i370.i, %wide.trip.count61.i301.i
  br i1 %exitcond51.not.i371.i, label %if.end7, label %for.cond1.preheader.us.i353.i

if.else:                                          ; preds = %if.then
  %chroma_format_idc6.i41 = getelementptr inbounds i8, ptr %dec_picture, i64 268
  %141 = load i32, ptr %chroma_format_idc6.i41, align 4
  %shl.i42 = shl i32 %i, 2
  %shl7.i43 = shl i32 %j, 2
  %mv_info8.i44 = getelementptr inbounds i8, ptr %dec_picture, i64 152
  %142 = load ptr, ptr %mv_info8.i44, align 8
  %idxprom.i45 = sext i32 %add5.i40 to i64
  %arrayidx.i46 = getelementptr inbounds ptr, ptr %142, i64 %idxprom.i45
  %143 = load ptr, ptr %arrayidx.i46, align 8
  %idxprom9.i47 = sext i32 %add.i38 to i64
  %arrayidx10.i48 = getelementptr inbounds %struct.pic_motion_params, ptr %143, i64 %idxprom9.i47
  %mv.i49 = getelementptr inbounds i8, ptr %arrayidx10.i48, i64 16
  %idxprom11.i = sext i32 %pred_dir to i64
  %arrayidx12.i = getelementptr inbounds [2 x %struct.MotionVector], ptr %mv.i49, i64 0, i64 %idxprom11.i
  %ref_idx13.i = getelementptr inbounds i8, ptr %arrayidx10.i48, i64 24
  %arrayidx15.i50 = getelementptr inbounds [2 x i8], ptr %ref_idx13.i, i64 0, i64 %idxprom11.i
  %144 = load i8, ptr %arrayidx15.i50, align 1
  %list_offset16.i51 = getelementptr inbounds i8, ptr %currMB, i64 114
  %145 = load i16, ptr %list_offset16.i51, align 2
  %conv17.i52 = sext i16 %145 to i32
  %listX.i53 = getelementptr inbounds i8, ptr %0, i64 264
  %add18.i54 = add nsw i32 %conv17.i52, %pred_dir
  %idxprom19.i55 = sext i32 %add18.i54 to i64
  %arrayidx20.i56 = getelementptr inbounds [6 x ptr], ptr %listX.i53, i64 0, i64 %idxprom19.i55
  %146 = load ptr, ptr %arrayidx20.i56, align 8
  %idxprom21.i57 = sext i8 %144 to i64
  %arrayidx22.i58 = getelementptr inbounds ptr, ptr %146, i64 %idxprom21.i57
  %147 = load ptr, ptr %arrayidx22.i58, align 8
  %size_x_m1.i59 = getelementptr inbounds i8, ptr %dec_picture, i64 80
  %148 = load i32, ptr %size_x_m1.i59, align 8
  %mb_field.i60 = getelementptr inbounds i8, ptr %currMB, i64 384
  %149 = load i32, ptr %mb_field.i60, align 8
  %tobool.not.i61 = icmp eq i32 %149, 0
  br i1 %tobool.not.i61, label %cond.false.i132, label %cond.true.i62

cond.true.i62:                                    ; preds = %if.else
  %size_y.i63 = getelementptr inbounds i8, ptr %dec_picture, i64 68
  %150 = load i32, ptr %size_y.i63, align 4
  %shr.i64 = ashr i32 %150, 1
  %sub.i65 = add nsw i32 %shr.i64, -1
  br label %cond.end.i66

cond.false.i132:                                  ; preds = %if.else
  %size_y_m1.i133 = getelementptr inbounds i8, ptr %dec_picture, i64 84
  %151 = load i32, ptr %size_y_m1.i133, align 4
  br label %cond.end.i66

cond.end.i66:                                     ; preds = %cond.false.i132, %cond.true.i62
  %cond.i67 = phi i32 [ %sub.i65, %cond.true.i62 ], [ %151, %cond.false.i132 ]
  %iLumaStride.i68 = getelementptr inbounds i8, ptr %dec_picture, i64 356
  %152 = load i32, ptr %iLumaStride.i68, align 4
  %tmp_res23.i69 = getelementptr inbounds i8, ptr %0, i64 1368
  %153 = load ptr, ptr %tmp_res23.i69, align 8
  %max_pel_value_comp.i70 = getelementptr inbounds i8, ptr %1, i64 849072
  %idxprom24.i71 = zext i32 %pl to i64
  %arrayidx25.i72 = getelementptr inbounds [3 x i32], ptr %max_pel_value_comp.i70, i64 0, i64 %idxprom24.i71
  %154 = load i32, ptr %arrayidx25.i72, align 4
  %dc_pred_value_comp.i73 = getelementptr inbounds i8, ptr %1, i64 849060
  %arrayidx27.i74 = getelementptr inbounds [3 x i32], ptr %dc_pred_value_comp.i73, i64 0, i64 %idxprom24.i71
  %155 = load i32, ptr %arrayidx27.i74, align 4
  %conv28.i75 = trunc i32 %155 to i16
  %156 = load i16, ptr %arrayidx12.i, align 2
  %157 = add i16 %156, -8192
  %or.cond.i.i76 = icmp ult i16 %157, -16384
  br i1 %or.cond.i.i76, label %if.then.i.i127, label %if.end.i.i77

if.then.i.i127:                                   ; preds = %cond.end.i66
  %158 = load ptr, ptr @stderr, align 8
  %conv7.i.i128 = sext i16 %156 to i32
  %159 = load ptr, ptr %0, align 8
  %number.i.i129 = getelementptr inbounds i8, ptr %159, i64 848712
  %160 = load i32, ptr %number.i.i129, align 8
  %current_mb_nr.i.i130 = getelementptr inbounds i8, ptr %0, i64 108
  %161 = load i32, ptr %current_mb_nr.i.i130, align 4
  %call.i.i131 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %158, ptr noundef nonnull @.str.1, i32 noundef %conv7.i.i128, i32 noundef %160, i32 noundef %161) #11
  br label %if.end.i.i77

if.end.i.i77:                                     ; preds = %if.then.i.i127, %cond.end.i66
  %mv_y.i.i78 = getelementptr inbounds i8, ptr %arrayidx12.i, i64 2
  %162 = load i16, ptr %mv_y.i.i78, align 2
  %conv8.i.i79 = sext i16 %162 to i32
  %max_mb_vmv_r.i.i80 = getelementptr inbounds i8, ptr %0, i64 13336
  %163 = load i32, ptr %max_mb_vmv_r.i.i80, align 8
  %cmp9.not.i.i81 = icmp sle i32 %163, %conv8.i.i79
  %sub15.i.i82 = sub nsw i32 0, %163
  %cmp16.i.i83 = icmp slt i32 %conv8.i.i79, %sub15.i.i82
  %or.cond42.i.i84 = select i1 %cmp9.not.i.i81, i1 true, i1 %cmp16.i.i83
  br i1 %or.cond42.i.i84, label %if.then18.i.i121, label %check_motion_vector_range.exit.i85

if.then18.i.i121:                                 ; preds = %if.end.i.i77
  %164 = load ptr, ptr @stderr, align 8
  %sub24.i.i122 = add nsw i32 %163, -1
  %165 = load ptr, ptr %0, align 8
  %number26.i.i123 = getelementptr inbounds i8, ptr %165, i64 848712
  %166 = load i32, ptr %number26.i.i123, align 8
  %current_mb_nr27.i.i124 = getelementptr inbounds i8, ptr %0, i64 108
  %167 = load i32, ptr %current_mb_nr27.i.i124, align 4
  %call28.i.i125 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %164, ptr noundef nonnull @.str.2, i32 noundef %conv8.i.i79, i32 noundef %sub15.i.i82, i32 noundef %sub24.i.i122, i32 noundef %166, i32 noundef %167) #11
  %.pre.i126 = load i16, ptr %mv_y.i.i78, align 2
  %.pre243.i = sext i16 %.pre.i126 to i32
  br label %check_motion_vector_range.exit.i85

check_motion_vector_range.exit.i85:               ; preds = %if.then18.i.i121, %if.end.i.i77
  %conv33.pre-phi.i86 = phi i32 [ %conv8.i.i79, %if.end.i.i77 ], [ %.pre243.i, %if.then18.i.i121 ]
  %mul.i87 = shl nsw i32 %add.i38, 4
  %168 = load i16, ptr %arrayidx12.i, align 2
  %conv29.i88 = sext i16 %168 to i32
  %add30.i89 = add nsw i32 %mul.i87, %conv29.i88
  %block_y_aff.i90 = getelementptr inbounds i8, ptr %currMB, i64 40
  %169 = load i32, ptr %block_y_aff.i90, align 8
  %add31.i91 = add nsw i32 %169, %j
  %mul32.i92 = shl nsw i32 %add31.i91, 4
  %add34.i93 = add nsw i32 %mul32.i92, %conv33.pre-phi.i86
  %iLumaPadY.i94 = getelementptr inbounds i8, ptr %1, i64 856844
  %170 = load i32, ptr %iLumaPadY.i94, align 4
  %sub35.i95 = add nsw i32 %170, -4
  %cmp.i96 = icmp slt i32 %sub35.i95, %block_size_y
  br i1 %cmp.i96, label %land.lhs.true.i114, label %if.else.i97

land.lhs.true.i114:                               ; preds = %check_motion_vector_range.exit.i85
  %call.i115 = tail call i32 @CheckVertMV(ptr noundef nonnull %currMB, i32 noundef %add34.i93, i32 noundef %block_size_y) #10
  %tobool37.not.i116 = icmp eq i32 %call.i115, 0
  br i1 %tobool37.not.i116, label %if.else.i97, label %if.then.i117

if.then.i117:                                     ; preds = %land.lhs.true.i114
  tail call void @get_block_luma(ptr noundef %147, i32 noundef %add30.i89, i32 noundef %add34.i93, i32 noundef %block_size_x, i32 noundef 8, ptr noundef %4, i32 noundef %152, i32 noundef %148, i32 noundef %cond.i67, ptr noundef %153, i32 noundef %154, i16 noundef zeroext %conv28.i75, ptr noundef nonnull %currMB)
  %add38.i118 = add nsw i32 %add34.i93, 32
  %sub39.i119 = add nsw i32 %block_size_y, -8
  %add.ptr.i120 = getelementptr inbounds i8, ptr %4, i64 64
  tail call void @get_block_luma(ptr noundef %147, i32 noundef %add30.i89, i32 noundef %add38.i118, i32 noundef %block_size_x, i32 noundef %sub39.i119, ptr noundef nonnull %add.ptr.i120, i32 noundef %152, i32 noundef %148, i32 noundef %cond.i67, ptr noundef %153, i32 noundef %154, i16 noundef zeroext %conv28.i75, ptr noundef nonnull %currMB)
  br label %if.end.i98

if.else.i97:                                      ; preds = %land.lhs.true.i114, %check_motion_vector_range.exit.i85
  tail call void @get_block_luma(ptr noundef %147, i32 noundef %add30.i89, i32 noundef %add34.i93, i32 noundef %block_size_x, i32 noundef %block_size_y, ptr noundef %4, i32 noundef %152, i32 noundef %148, i32 noundef %cond.i67, ptr noundef %153, i32 noundef %154, i16 noundef zeroext %conv28.i75, ptr noundef nonnull %currMB)
  br label %if.end.i98

if.end.i98:                                       ; preds = %if.else.i97, %if.then.i117
  %mb_pred.i99 = getelementptr inbounds i8, ptr %0, i64 1248
  %171 = load ptr, ptr %mb_pred.i99, align 8
  %arrayidx41.i = getelementptr inbounds ptr, ptr %171, i64 %idxprom24.i71
  %172 = load ptr, ptr %arrayidx41.i, align 8
  %idxprom42.i = sext i32 %shl7.i43 to i64
  %arrayidx43.i = getelementptr inbounds ptr, ptr %172, i64 %idxprom42.i
  %cmp8.i.i = icmp sgt i32 %block_size_y, 0
  br i1 %cmp8.i.i, label %for.body.lr.ph.i.i, label %mc_prediction.exit.i

for.body.lr.ph.i.i:                               ; preds = %if.end.i98
  %idxprom1.i.i = sext i32 %shl.i42 to i64
  %conv.i.i = sext i32 %block_size_x to i64
  %mul.i.i = shl nsw i64 %conv.i.i, 1
  %wide.trip.count.i.i = zext nneg i32 %block_size_y to i64
  %xtraiter720 = and i64 %wide.trip.count.i.i, 1
  %173 = icmp eq i32 %block_size_y, 1
  br i1 %173, label %mc_prediction.exit.i.loopexit.unr-lcssa, label %for.body.lr.ph.i.i.new

for.body.lr.ph.i.i.new:                           ; preds = %for.body.lr.ph.i.i
  %unroll_iter722 = and i64 %wide.trip.count.i.i, 2147483646
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i, %for.body.lr.ph.i.i.new
  %indvars.iv.i.i111 = phi i64 [ 0, %for.body.lr.ph.i.i.new ], [ %indvars.iv.next.i.i112.1, %for.body.i.i ]
  %niter723 = phi i64 [ 0, %for.body.lr.ph.i.i.new ], [ %niter723.next.1, %for.body.i.i ]
  %arrayidx.i.i = getelementptr inbounds ptr, ptr %arrayidx43.i, i64 %indvars.iv.i.i111
  %174 = load ptr, ptr %arrayidx.i.i, align 8
  %arrayidx2.i.i = getelementptr inbounds i16, ptr %174, i64 %idxprom1.i.i
  %arrayidx4.i.i = getelementptr inbounds ptr, ptr %4, i64 %indvars.iv.i.i111
  %175 = load ptr, ptr %arrayidx4.i.i, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %arrayidx2.i.i, ptr align 2 %175, i64 %mul.i.i, i1 false)
  %indvars.iv.next.i.i112 = or disjoint i64 %indvars.iv.i.i111, 1
  %arrayidx.i.i.1 = getelementptr inbounds ptr, ptr %arrayidx43.i, i64 %indvars.iv.next.i.i112
  %176 = load ptr, ptr %arrayidx.i.i.1, align 8
  %arrayidx2.i.i.1 = getelementptr inbounds i16, ptr %176, i64 %idxprom1.i.i
  %arrayidx4.i.i.1 = getelementptr inbounds ptr, ptr %4, i64 %indvars.iv.next.i.i112
  %177 = load ptr, ptr %arrayidx4.i.i.1, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %arrayidx2.i.i.1, ptr align 2 %177, i64 %mul.i.i, i1 false)
  %indvars.iv.next.i.i112.1 = add nuw nsw i64 %indvars.iv.i.i111, 2
  %niter723.next.1 = add i64 %niter723, 2
  %niter723.ncmp.1 = icmp eq i64 %niter723.next.1, %unroll_iter722
  br i1 %niter723.ncmp.1, label %mc_prediction.exit.i.loopexit.unr-lcssa, label %for.body.i.i

mc_prediction.exit.i.loopexit.unr-lcssa:          ; preds = %for.body.i.i, %for.body.lr.ph.i.i
  %indvars.iv.i.i111.unr = phi i64 [ 0, %for.body.lr.ph.i.i ], [ %indvars.iv.next.i.i112.1, %for.body.i.i ]
  %lcmp.mod721.not = icmp eq i64 %xtraiter720, 0
  br i1 %lcmp.mod721.not, label %mc_prediction.exit.i, label %for.body.i.i.epil

for.body.i.i.epil:                                ; preds = %mc_prediction.exit.i.loopexit.unr-lcssa
  %arrayidx.i.i.epil = getelementptr inbounds ptr, ptr %arrayidx43.i, i64 %indvars.iv.i.i111.unr
  %178 = load ptr, ptr %arrayidx.i.i.epil, align 8
  %arrayidx2.i.i.epil = getelementptr inbounds i16, ptr %178, i64 %idxprom1.i.i
  %arrayidx4.i.i.epil = getelementptr inbounds ptr, ptr %4, i64 %indvars.iv.i.i111.unr
  %179 = load ptr, ptr %arrayidx4.i.i.epil, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %arrayidx2.i.i.epil, ptr align 2 %179, i64 %mul.i.i, i1 false)
  br label %mc_prediction.exit.i

mc_prediction.exit.i:                             ; preds = %for.body.i.i.epil, %mc_prediction.exit.i.loopexit.unr-lcssa, %if.end.i98
  switch i32 %141, label %if.then49.i [
    i32 3, label %if.end7
    i32 0, label %if.end7
  ]

if.then49.i:                                      ; preds = %mc_prediction.exit.i
  %chroma_format_idc50.i = getelementptr inbounds i8, ptr %3, i64 36
  %180 = load i32, ptr %chroma_format_idc50.i, align 4
  %cmp51.i100 = icmp eq i32 %180, 1
  br i1 %cmp51.i100, label %cond.true53.i, label %cond.end61.i

cond.true53.i:                                    ; preds = %if.then49.i
  %chroma_vector_adjustment.i110 = getelementptr inbounds i8, ptr %0, i64 13552
  %arrayidx58.i = getelementptr inbounds [6 x [16 x i8]], ptr %chroma_vector_adjustment.i110, i64 0, i64 %idxprom19.i55, i64 %idxprom21.i57
  %181 = load i8, ptr %arrayidx58.i, align 1
  %conv59.i = sext i8 %181 to i32
  br label %cond.end61.i

cond.end61.i:                                     ; preds = %cond.true53.i, %if.then49.i
  %cond62.i = phi i32 [ %conv59.i, %cond.true53.i ], [ 0, %if.then49.i ]
  %add63.i = add nsw i32 %cond62.i, %add34.i93
  %total_scale64.i = getelementptr inbounds i8, ptr %1, i64 849212
  %182 = load i32, ptr %total_scale64.i, align 4
  %subpel_x65.i = getelementptr inbounds i8, ptr %1, i64 849196
  %183 = load i32, ptr %subpel_x65.i, align 4
  %subpel_y66.i = getelementptr inbounds i8, ptr %1, i64 849200
  %184 = load i32, ptr %subpel_y66.i, align 8
  %shiftpel_x67.i = getelementptr inbounds i8, ptr %1, i64 849204
  %185 = load i32, ptr %shiftpel_x67.i, align 4
  %shiftpel_y68.i = getelementptr inbounds i8, ptr %1, i64 849208
  %186 = load i32, ptr %shiftpel_y68.i, align 8
  %size_x_cr_m1.i101 = getelementptr inbounds i8, ptr %dec_picture, i64 88
  %187 = load i32, ptr %size_x_cr_m1.i101, align 8
  %188 = load i32, ptr %mb_field.i60, align 8
  %tobool72.not.i = icmp eq i32 %188, 0
  br i1 %tobool72.not.i, label %cond.false76.i, label %cond.true73.i

cond.true73.i:                                    ; preds = %cond.end61.i
  %size_y_cr.i102 = getelementptr inbounds i8, ptr %dec_picture, i64 76
  %189 = load i32, ptr %size_y_cr.i102, align 4
  %shr74.i = ashr i32 %189, 1
  %sub75.i = add nsw i32 %shr74.i, -1
  br label %cond.end77.i

cond.false76.i:                                   ; preds = %cond.end61.i
  %size_y_cr_m1.i109 = getelementptr inbounds i8, ptr %dec_picture, i64 92
  %190 = load i32, ptr %size_y_cr_m1.i109, align 4
  br label %cond.end77.i

cond.end77.i:                                     ; preds = %cond.false76.i, %cond.true73.i
  %cond78.i = phi i32 [ %sub75.i, %cond.true73.i ], [ %190, %cond.false76.i ]
  %mb_cr_size_x.i103 = getelementptr inbounds i8, ptr %1, i64 849108
  %191 = load i32, ptr %mb_cr_size_x.i103, align 4
  %cmp79.i = icmp ne i32 %191, 16
  %shr84.i = zext i1 %cmp79.i to i32
  %block_size_x_cr.0.i104 = ashr i32 %block_size_x, %shr84.i
  %mb_cr_size_y.i105 = getelementptr inbounds i8, ptr %1, i64 849112
  %192 = load i32, ptr %mb_cr_size_y.i105, align 8
  %cmp86.i = icmp ne i32 %192, 16
  %shr91.i = zext i1 %cmp86.i to i32
  %block_size_y_cr.0.i106 = ashr i32 %block_size_y, %shr91.i
  %joff_cr.0.i107 = ashr exact i32 %shl7.i43, %shr91.i
  %arrayidx94.i = getelementptr inbounds i8, ptr %1, i64 849064
  %193 = load i32, ptr %arrayidx94.i, align 4
  %conv95.i = trunc i32 %193 to i16
  %194 = load ptr, ptr %4, align 8
  %195 = load ptr, ptr %5, align 8
  tail call fastcc void @get_block_chroma(ptr noundef %147, i32 noundef %add30.i89, i32 noundef %add63.i, i32 noundef %183, i32 noundef %184, i32 noundef %187, i32 noundef %cond78.i, i32 noundef %block_size_x_cr.0.i104, i32 noundef %block_size_y_cr.0.i106, i32 noundef %185, i32 noundef %186, ptr noundef %194, ptr noundef %195, i32 noundef %182, i16 noundef zeroext %conv95.i, ptr noundef nonnull %1)
  %196 = load ptr, ptr %mb_pred.i99, align 8
  %arrayidx101.i = getelementptr inbounds i8, ptr %196, i64 8
  %197 = load ptr, ptr %arrayidx101.i, align 8
  %idxprom102.i = sext i32 %joff_cr.0.i107 to i64
  %arrayidx103.i = getelementptr inbounds ptr, ptr %197, i64 %idxprom102.i
  %cmp8.i213.i = icmp sgt i32 %block_size_y_cr.0.i106, 0
  br i1 %cmp8.i213.i, label %for.body.lr.ph.i214.i, label %if.end7

for.body.lr.ph.i214.i:                            ; preds = %cond.end77.i
  %ioff_cr.0.i108 = ashr exact i32 %shl.i42, %shr84.i
  %idxprom1.i215.i = sext i32 %ioff_cr.0.i108 to i64
  %conv.i216.i = sext i32 %block_size_x_cr.0.i104 to i64
  %mul.i217.i = shl nsw i64 %conv.i216.i, 1
  %wide.trip.count.i218.i = zext nneg i32 %block_size_y_cr.0.i106 to i64
  %198 = add nsw i64 %wide.trip.count.i218.i, -1
  %xtraiter724 = and i64 %wide.trip.count.i218.i, 1
  %199 = icmp eq i64 %198, 0
  br i1 %199, label %mc_prediction.exit226.i.unr-lcssa, label %for.body.lr.ph.i214.i.new

for.body.lr.ph.i214.i.new:                        ; preds = %for.body.lr.ph.i214.i
  %unroll_iter726 = and i64 %wide.trip.count.i218.i, 2147483646
  br label %for.body.i219.i

for.body.i219.i:                                  ; preds = %for.body.i219.i, %for.body.lr.ph.i214.i.new
  %indvars.iv.i220.i = phi i64 [ 0, %for.body.lr.ph.i214.i.new ], [ %indvars.iv.next.i224.i.1, %for.body.i219.i ]
  %niter727 = phi i64 [ 0, %for.body.lr.ph.i214.i.new ], [ %niter727.next.1, %for.body.i219.i ]
  %arrayidx.i221.i = getelementptr inbounds ptr, ptr %arrayidx103.i, i64 %indvars.iv.i220.i
  %200 = load ptr, ptr %arrayidx.i221.i, align 8
  %arrayidx2.i222.i = getelementptr inbounds i16, ptr %200, i64 %idxprom1.i215.i
  %arrayidx4.i223.i = getelementptr inbounds ptr, ptr %4, i64 %indvars.iv.i220.i
  %201 = load ptr, ptr %arrayidx4.i223.i, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %arrayidx2.i222.i, ptr align 2 %201, i64 %mul.i217.i, i1 false)
  %indvars.iv.next.i224.i = or disjoint i64 %indvars.iv.i220.i, 1
  %arrayidx.i221.i.1 = getelementptr inbounds ptr, ptr %arrayidx103.i, i64 %indvars.iv.next.i224.i
  %202 = load ptr, ptr %arrayidx.i221.i.1, align 8
  %arrayidx2.i222.i.1 = getelementptr inbounds i16, ptr %202, i64 %idxprom1.i215.i
  %arrayidx4.i223.i.1 = getelementptr inbounds ptr, ptr %4, i64 %indvars.iv.next.i224.i
  %203 = load ptr, ptr %arrayidx4.i223.i.1, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %arrayidx2.i222.i.1, ptr align 2 %203, i64 %mul.i217.i, i1 false)
  %indvars.iv.next.i224.i.1 = add nuw nsw i64 %indvars.iv.i220.i, 2
  %niter727.next.1 = add i64 %niter727, 2
  %niter727.ncmp.1 = icmp eq i64 %niter727.next.1, %unroll_iter726
  br i1 %niter727.ncmp.1, label %mc_prediction.exit226.i.unr-lcssa, label %for.body.i219.i

mc_prediction.exit226.i.unr-lcssa:                ; preds = %for.body.i219.i, %for.body.lr.ph.i214.i
  %indvars.iv.i220.i.unr = phi i64 [ 0, %for.body.lr.ph.i214.i ], [ %indvars.iv.next.i224.i.1, %for.body.i219.i ]
  %lcmp.mod725.not = icmp eq i64 %xtraiter724, 0
  br i1 %lcmp.mod725.not, label %mc_prediction.exit226.i, label %for.body.i219.i.epil

for.body.i219.i.epil:                             ; preds = %mc_prediction.exit226.i.unr-lcssa
  %arrayidx.i221.i.epil = getelementptr inbounds ptr, ptr %arrayidx103.i, i64 %indvars.iv.i220.i.unr
  %204 = load ptr, ptr %arrayidx.i221.i.epil, align 8
  %arrayidx2.i222.i.epil = getelementptr inbounds i16, ptr %204, i64 %idxprom1.i215.i
  %arrayidx4.i223.i.epil = getelementptr inbounds ptr, ptr %4, i64 %indvars.iv.i220.i.unr
  %205 = load ptr, ptr %arrayidx4.i223.i.epil, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %arrayidx2.i222.i.epil, ptr align 2 %205, i64 %mul.i217.i, i1 false)
  br label %mc_prediction.exit226.i

mc_prediction.exit226.i:                          ; preds = %mc_prediction.exit226.i.unr-lcssa, %for.body.i219.i.epil
  %206 = load ptr, ptr %mb_pred.i99, align 8
  %arrayidx105.i = getelementptr inbounds i8, ptr %206, i64 16
  %207 = load ptr, ptr %arrayidx105.i, align 8
  %arrayidx107.i = getelementptr inbounds ptr, ptr %207, i64 %idxprom102.i
  %xtraiter728 = and i64 %wide.trip.count.i218.i, 1
  %208 = icmp eq i64 %198, 0
  br i1 %208, label %if.end7.loopexit707.unr-lcssa, label %mc_prediction.exit226.i.new

mc_prediction.exit226.i.new:                      ; preds = %mc_prediction.exit226.i
  %unroll_iter730 = and i64 %wide.trip.count.i218.i, 2147483646
  br label %for.body.i233.i

for.body.i233.i:                                  ; preds = %for.body.i233.i, %mc_prediction.exit226.i.new
  %indvars.iv.i234.i = phi i64 [ 0, %mc_prediction.exit226.i.new ], [ %indvars.iv.next.i238.i.1, %for.body.i233.i ]
  %niter731 = phi i64 [ 0, %mc_prediction.exit226.i.new ], [ %niter731.next.1, %for.body.i233.i ]
  %arrayidx.i235.i = getelementptr inbounds ptr, ptr %arrayidx107.i, i64 %indvars.iv.i234.i
  %209 = load ptr, ptr %arrayidx.i235.i, align 8
  %arrayidx2.i236.i = getelementptr inbounds i16, ptr %209, i64 %idxprom1.i215.i
  %arrayidx4.i237.i = getelementptr inbounds ptr, ptr %5, i64 %indvars.iv.i234.i
  %210 = load ptr, ptr %arrayidx4.i237.i, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %arrayidx2.i236.i, ptr align 2 %210, i64 %mul.i217.i, i1 false)
  %indvars.iv.next.i238.i = or disjoint i64 %indvars.iv.i234.i, 1
  %arrayidx.i235.i.1 = getelementptr inbounds ptr, ptr %arrayidx107.i, i64 %indvars.iv.next.i238.i
  %211 = load ptr, ptr %arrayidx.i235.i.1, align 8
  %arrayidx2.i236.i.1 = getelementptr inbounds i16, ptr %211, i64 %idxprom1.i215.i
  %arrayidx4.i237.i.1 = getelementptr inbounds ptr, ptr %5, i64 %indvars.iv.next.i238.i
  %212 = load ptr, ptr %arrayidx4.i237.i.1, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %arrayidx2.i236.i.1, ptr align 2 %212, i64 %mul.i217.i, i1 false)
  %indvars.iv.next.i238.i.1 = add nuw nsw i64 %indvars.iv.i234.i, 2
  %niter731.next.1 = add i64 %niter731, 2
  %niter731.ncmp.1 = icmp eq i64 %niter731.next.1, %unroll_iter730
  br i1 %niter731.ncmp.1, label %if.end7.loopexit707.unr-lcssa, label %for.body.i233.i

if.else2:                                         ; preds = %entry
  %weighted_bipred_idc = getelementptr inbounds i8, ptr %0, i64 13274
  %213 = load i16, ptr %weighted_bipred_idc, align 2
  %tobool3.not = icmp eq i16 %213, 0
  br i1 %tobool3.not, label %if.else5, label %if.then4

if.then4:                                         ; preds = %if.else2
  %active_pps.i135 = getelementptr inbounds i8, ptr %1, i64 8
  %214 = load ptr, ptr %active_pps.i135, align 8
  %weighted_bipred_idc2.i = getelementptr inbounds i8, ptr %214, i64 2180
  %215 = load i32, ptr %weighted_bipred_idc2.i, align 4
  %block_y_aff3.i = getelementptr inbounds i8, ptr %currMB, i64 40
  %216 = load i32, ptr %block_y_aff3.i, align 8
  %block_x.i136 = getelementptr inbounds i8, ptr %currMB, i64 32
  %217 = load i32, ptr %block_x.i136, align 8
  %add.i137 = add nsw i32 %217, %i
  %block_y.i138 = getelementptr inbounds i8, ptr %currMB, i64 36
  %218 = load i32, ptr %block_y.i138, align 4
  %add4.i = add nsw i32 %218, %j
  %shl.i139 = shl i32 %i, 2
  %shl5.i = shl i32 %j, 2
  %chroma_format_idc6.i140 = getelementptr inbounds i8, ptr %dec_picture, i64 268
  %219 = load i32, ptr %chroma_format_idc6.i140, align 4
  %list_offset7.i = getelementptr inbounds i8, ptr %currMB, i64 114
  %220 = load i16, ptr %list_offset7.i, align 2
  %conv.i = sext i16 %220 to i32
  %mv_info8.i141 = getelementptr inbounds i8, ptr %dec_picture, i64 152
  %221 = load ptr, ptr %mv_info8.i141, align 8
  %idxprom.i142 = sext i32 %add4.i to i64
  %arrayidx.i143 = getelementptr inbounds ptr, ptr %221, i64 %idxprom.i142
  %222 = load ptr, ptr %arrayidx.i143, align 8
  %idxprom9.i144 = sext i32 %add.i137 to i64
  %arrayidx10.i145 = getelementptr inbounds %struct.pic_motion_params, ptr %222, i64 %idxprom9.i144
  %mv.i146 = getelementptr inbounds i8, ptr %arrayidx10.i145, i64 16
  %arrayidx13.i147 = getelementptr inbounds i8, ptr %arrayidx10.i145, i64 20
  %ref_idx.i = getelementptr inbounds i8, ptr %arrayidx10.i145, i64 24
  %223 = load i8, ptr %ref_idx.i, align 8
  %arrayidx17.i = getelementptr inbounds i8, ptr %arrayidx10.i145, i64 25
  %224 = load i8, ptr %arrayidx17.i, align 1
  %mb_field.i148 = getelementptr inbounds i8, ptr %currMB, i64 384
  %225 = load i32, ptr %mb_field.i148, align 8
  %tobool.i = icmp ne i32 %225, 0
  %cmp.i149 = icmp eq i32 %215, 1
  %or.cond.i = select i1 %tobool.i, i1 %cmp.i149, i1 false
  %conv20.i = sext i8 %223 to i32
  %shr.i150 = zext i1 %or.cond.i to i32
  %cond.i151 = ashr i32 %conv20.i, %shr.i150
  %conv28.i152 = sext i8 %224 to i32
  %cond33.i = ashr i32 %conv28.i152, %shr.i150
  %cmp34.i = icmp eq i32 %215, 2
  %cond39.i = select i1 %cmp34.i, i32 %conv.i, i32 0
  %wbp_weight.i = getelementptr inbounds i8, ptr %0, i64 13296
  %226 = load ptr, ptr %wbp_weight.i, align 8
  %idxprom41.i = sext i32 %cond39.i to i64
  %arrayidx42.i = getelementptr inbounds ptr, ptr %226, i64 %idxprom41.i
  %227 = load ptr, ptr %arrayidx42.i, align 8
  %idxprom43.i = sext i32 %cond.i151 to i64
  %arrayidx44.i = getelementptr inbounds ptr, ptr %227, i64 %idxprom43.i
  %228 = load ptr, ptr %arrayidx44.i, align 8
  %idxprom45.i = sext i32 %cond33.i to i64
  %arrayidx46.i = getelementptr inbounds ptr, ptr %228, i64 %idxprom45.i
  %229 = load ptr, ptr %arrayidx46.i, align 8
  %add48.i = add nsw i32 %cond39.i, 1
  %idxprom49.i = sext i32 %add48.i to i64
  %arrayidx50.i = getelementptr inbounds ptr, ptr %226, i64 %idxprom49.i
  %230 = load ptr, ptr %arrayidx50.i, align 8
  %arrayidx52.i = getelementptr inbounds ptr, ptr %230, i64 %idxprom43.i
  %231 = load ptr, ptr %arrayidx52.i, align 8
  %arrayidx54.i = getelementptr inbounds ptr, ptr %231, i64 %idxprom45.i
  %232 = load ptr, ptr %arrayidx54.i, align 8
  %wp_offset.i = getelementptr inbounds i8, ptr %0, i64 13288
  %233 = load ptr, ptr %wp_offset.i, align 8
  %arrayidx57.i = getelementptr inbounds ptr, ptr %233, i64 %idxprom41.i
  %234 = load ptr, ptr %arrayidx57.i, align 8
  %arrayidx59.i = getelementptr inbounds ptr, ptr %234, i64 %idxprom43.i
  %235 = load ptr, ptr %arrayidx59.i, align 8
  %arrayidx63.i = getelementptr inbounds ptr, ptr %233, i64 %idxprom49.i
  %236 = load ptr, ptr %arrayidx63.i, align 8
  %arrayidx65.i = getelementptr inbounds ptr, ptr %236, i64 %idxprom45.i
  %237 = load ptr, ptr %arrayidx65.i, align 8
  br i1 %tobool.i, label %cond.true68.i, label %cond.false70.i

cond.true68.i:                                    ; preds = %if.then4
  %size_y.i203 = getelementptr inbounds i8, ptr %dec_picture, i64 68
  %238 = load i32, ptr %size_y.i203, align 4
  %shr69.i = ashr i32 %238, 1
  %sub.i204 = add nsw i32 %shr69.i, -1
  br label %cond.end71.i

cond.false70.i:                                   ; preds = %if.then4
  %size_y_m1.i153 = getelementptr inbounds i8, ptr %dec_picture, i64 84
  %239 = load i32, ptr %size_y_m1.i153, align 4
  br label %cond.end71.i

cond.end71.i:                                     ; preds = %cond.false70.i, %cond.true68.i
  %cond72.i = phi i32 [ %sub.i204, %cond.true68.i ], [ %239, %cond.false70.i ]
  %iLumaPadY.i154 = getelementptr inbounds i8, ptr %1, i64 856844
  %240 = load i32, ptr %iLumaPadY.i154, align 4
  %reass.sub = sub i32 %cond72.i, %block_size_y
  %sub74.i = add i32 %reass.sub, -2
  %sub75.i155 = add i32 %sub74.i, %240
  %sub76.i = sub nsw i32 2, %240
  %sub77.i = add nsw i32 %240, -4
  %cmp78.i = icmp slt i32 %sub77.i, %block_size_y
  %listX.i156 = getelementptr inbounds i8, ptr %0, i64 264
  %idxprom81.i = sext i16 %220 to i64
  %arrayidx82.i = getelementptr inbounds [6 x ptr], ptr %listX.i156, i64 0, i64 %idxprom81.i
  %241 = load ptr, ptr %arrayidx82.i, align 8
  %idxprom83.i = sext i8 %223 to i64
  %arrayidx84.i = getelementptr inbounds ptr, ptr %241, i64 %idxprom83.i
  %242 = load ptr, ptr %arrayidx84.i, align 8
  %add86.i = add nsw i32 %conv.i, 1
  %idxprom87.i = sext i32 %add86.i to i64
  %arrayidx88.i = getelementptr inbounds [6 x ptr], ptr %listX.i156, i64 0, i64 %idxprom87.i
  %243 = load ptr, ptr %arrayidx88.i, align 8
  %idxprom89.i = sext i8 %224 to i64
  %arrayidx90.i = getelementptr inbounds ptr, ptr %243, i64 %idxprom89.i
  %244 = load ptr, ptr %arrayidx90.i, align 8
  %tmp_block_l091.i = getelementptr inbounds i8, ptr %0, i64 1352
  %245 = load ptr, ptr %tmp_block_l091.i, align 8
  %246 = load ptr, ptr %245, align 8
  %tmp_block_l194.i = getelementptr inbounds i8, ptr %0, i64 1360
  %247 = load ptr, ptr %tmp_block_l194.i, align 8
  %248 = load ptr, ptr %247, align 8
  %tmp_block_l297.i = getelementptr inbounds i8, ptr %0, i64 1376
  %249 = load ptr, ptr %tmp_block_l297.i, align 8
  %250 = load ptr, ptr %249, align 8
  %tmp_block_l3100.i = getelementptr inbounds i8, ptr %0, i64 1384
  %251 = load ptr, ptr %tmp_block_l3100.i, align 8
  %252 = load ptr, ptr %251, align 8
  %size_x_m1.i157 = getelementptr inbounds i8, ptr %dec_picture, i64 80
  %253 = load i32, ptr %size_x_m1.i157, align 8
  %iLumaStride.i158 = getelementptr inbounds i8, ptr %dec_picture, i64 356
  %254 = load i32, ptr %iLumaStride.i158, align 4
  %tmp_res104.i = getelementptr inbounds i8, ptr %0, i64 1368
  %255 = load ptr, ptr %tmp_res104.i, align 8
  %max_pel_value_comp.i159 = getelementptr inbounds i8, ptr %1, i64 849072
  %idxprom105.i = zext i32 %pl to i64
  %arrayidx106.i = getelementptr inbounds [3 x i32], ptr %max_pel_value_comp.i159, i64 0, i64 %idxprom105.i
  %256 = load i32, ptr %arrayidx106.i, align 4
  %dc_pred_value_comp.i160 = getelementptr inbounds i8, ptr %1, i64 849060
  %arrayidx108.i = getelementptr inbounds [3 x i32], ptr %dc_pred_value_comp.i160, i64 0, i64 %idxprom105.i
  %257 = load i32, ptr %arrayidx108.i, align 4
  %conv109.i = trunc i32 %257 to i16
  %258 = load i16, ptr %mv.i146, align 2
  %259 = add i16 %258, -8192
  %or.cond.i.i161 = icmp ult i16 %259, -16384
  br i1 %or.cond.i.i161, label %if.then.i.i198, label %if.end.i.i162

if.then.i.i198:                                   ; preds = %cond.end71.i
  %260 = load ptr, ptr @stderr, align 8
  %conv7.i.i199 = sext i16 %258 to i32
  %261 = load ptr, ptr %0, align 8
  %number.i.i200 = getelementptr inbounds i8, ptr %261, i64 848712
  %262 = load i32, ptr %number.i.i200, align 8
  %current_mb_nr.i.i201 = getelementptr inbounds i8, ptr %0, i64 108
  %263 = load i32, ptr %current_mb_nr.i.i201, align 4
  %call.i.i202 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %260, ptr noundef nonnull @.str.1, i32 noundef %conv7.i.i199, i32 noundef %262, i32 noundef %263) #11
  br label %if.end.i.i162

if.end.i.i162:                                    ; preds = %if.then.i.i198, %cond.end71.i
  %mv_y.i.i163 = getelementptr inbounds i8, ptr %arrayidx10.i145, i64 18
  %264 = load i16, ptr %mv_y.i.i163, align 2
  %conv8.i.i164 = sext i16 %264 to i32
  %max_mb_vmv_r.i.i165 = getelementptr inbounds i8, ptr %0, i64 13336
  %265 = load i32, ptr %max_mb_vmv_r.i.i165, align 8
  %cmp9.not.i.i166 = icmp sle i32 %265, %conv8.i.i164
  %sub15.i.i167 = sub nsw i32 0, %265
  %cmp16.i.i168 = icmp slt i32 %conv8.i.i164, %sub15.i.i167
  %or.cond42.i.i169 = select i1 %cmp9.not.i.i166, i1 true, i1 %cmp16.i.i168
  br i1 %or.cond42.i.i169, label %if.then18.i.i193, label %check_motion_vector_range.exit.i170

if.then18.i.i193:                                 ; preds = %if.end.i.i162
  %266 = load ptr, ptr @stderr, align 8
  %sub24.i.i194 = add nsw i32 %265, -1
  %267 = load ptr, ptr %0, align 8
  %number26.i.i195 = getelementptr inbounds i8, ptr %267, i64 848712
  %268 = load i32, ptr %number26.i.i195, align 8
  %current_mb_nr27.i.i196 = getelementptr inbounds i8, ptr %0, i64 108
  %269 = load i32, ptr %current_mb_nr27.i.i196, align 4
  %call28.i.i197 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %266, ptr noundef nonnull @.str.2, i32 noundef %conv8.i.i164, i32 noundef %sub15.i.i167, i32 noundef %sub24.i.i194, i32 noundef %268, i32 noundef %269) #11
  br label %check_motion_vector_range.exit.i170

check_motion_vector_range.exit.i170:              ; preds = %if.then18.i.i193, %if.end.i.i162
  %270 = load i16, ptr %arrayidx13.i147, align 2
  %271 = add i16 %270, -8192
  %or.cond.i461.i = icmp ult i16 %271, -16384
  br i1 %or.cond.i461.i, label %if.then.i475.i, label %if.end.i462.i

if.then.i475.i:                                   ; preds = %check_motion_vector_range.exit.i170
  %272 = load ptr, ptr @stderr, align 8
  %conv7.i476.i = sext i16 %270 to i32
  %273 = load ptr, ptr %0, align 8
  %number.i477.i = getelementptr inbounds i8, ptr %273, i64 848712
  %274 = load i32, ptr %number.i477.i, align 8
  %current_mb_nr.i478.i = getelementptr inbounds i8, ptr %0, i64 108
  %275 = load i32, ptr %current_mb_nr.i478.i, align 4
  %call.i479.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %272, ptr noundef nonnull @.str.1, i32 noundef %conv7.i476.i, i32 noundef %274, i32 noundef %275) #11
  br label %if.end.i462.i

if.end.i462.i:                                    ; preds = %if.then.i475.i, %check_motion_vector_range.exit.i170
  %mv_y.i463.i = getelementptr inbounds i8, ptr %arrayidx10.i145, i64 22
  %276 = load i16, ptr %mv_y.i463.i, align 2
  %conv8.i464.i = sext i16 %276 to i32
  %277 = load i32, ptr %max_mb_vmv_r.i.i165, align 8
  %cmp9.not.i466.i = icmp sle i32 %277, %conv8.i464.i
  %sub15.i467.i = sub nsw i32 0, %277
  %cmp16.i468.i = icmp slt i32 %conv8.i464.i, %sub15.i467.i
  %or.cond42.i469.i = select i1 %cmp9.not.i466.i, i1 true, i1 %cmp16.i468.i
  br i1 %or.cond42.i469.i, label %if.then18.i470.i, label %check_motion_vector_range.exit480.i

if.then18.i470.i:                                 ; preds = %if.end.i462.i
  %278 = load ptr, ptr @stderr, align 8
  %sub24.i471.i = add nsw i32 %277, -1
  %279 = load ptr, ptr %0, align 8
  %number26.i472.i = getelementptr inbounds i8, ptr %279, i64 848712
  %280 = load i32, ptr %number26.i472.i, align 8
  %current_mb_nr27.i473.i = getelementptr inbounds i8, ptr %0, i64 108
  %281 = load i32, ptr %current_mb_nr27.i473.i, align 4
  %call28.i474.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %278, ptr noundef nonnull @.str.2, i32 noundef %conv8.i464.i, i32 noundef %sub15.i467.i, i32 noundef %sub24.i471.i, i32 noundef %280, i32 noundef %281) #11
  %.pre.i192 = load i16, ptr %mv_y.i463.i, align 2
  %.pre566.i = sext i16 %.pre.i192 to i32
  br label %check_motion_vector_range.exit480.i

check_motion_vector_range.exit480.i:              ; preds = %if.then18.i470.i, %if.end.i462.i
  %conv123.pre-phi.i = phi i32 [ %conv8.i464.i, %if.end.i462.i ], [ %.pre566.i, %if.then18.i470.i ]
  %mul.i171 = shl nsw i32 %add.i137, 4
  %282 = load i16, ptr %mv.i146, align 2
  %conv110.i = sext i16 %282 to i32
  %add111.i = add nsw i32 %mul.i171, %conv110.i
  %283 = load i16, ptr %arrayidx13.i147, align 2
  %conv114.i = sext i16 %283 to i32
  %add115.i = add nsw i32 %mul.i171, %conv114.i
  %add116.i = add nsw i32 %216, %j
  %mul117.i = shl nsw i32 %add116.i, 4
  %284 = load i16, ptr %mv_y.i.i163, align 2
  %conv118.i = sext i16 %284 to i32
  %add119.i = add nsw i32 %mul117.i, %conv118.i
  %add124.i = add nsw i32 %conv123.pre-phi.i, %mul117.i
  br i1 %cmp78.i, label %land.lhs.true126.i, label %if.end.i172

land.lhs.true126.i:                               ; preds = %check_motion_vector_range.exit480.i
  %shr.i.i = ashr i32 %add119.i, 2
  %cmp.i.i = icmp sge i32 %shr.i.i, %sub76.i
  %cmp1.i.i = icmp sle i32 %shr.i.i, %sub75.i155
  %or.cond.i481.not.i = and i1 %cmp.i.i, %cmp1.i.i
  br i1 %or.cond.i481.not.i, label %if.end.thread565.i, label %if.end.thread.i

if.end.thread565.i:                               ; preds = %land.lhs.true126.i
  tail call void @get_block_luma(ptr noundef %242, i32 noundef %add111.i, i32 noundef %add119.i, i32 noundef %block_size_x, i32 noundef %block_size_y, ptr noundef nonnull %245, i32 noundef %254, i32 noundef %253, i32 noundef %cond72.i, ptr noundef %255, i32 noundef %256, i16 noundef zeroext %conv109.i, ptr noundef nonnull readonly %currMB)
  br label %land.lhs.true131.i

if.end.thread.i:                                  ; preds = %land.lhs.true126.i
  tail call void @get_block_luma(ptr noundef %242, i32 noundef %add111.i, i32 noundef %add119.i, i32 noundef %block_size_x, i32 noundef 8, ptr noundef nonnull %245, i32 noundef %254, i32 noundef %253, i32 noundef %cond72.i, ptr noundef %255, i32 noundef %256, i16 noundef zeroext %conv109.i, ptr noundef nonnull readonly %currMB)
  %add128.i = add nsw i32 %add119.i, 32
  %sub129.i = add nsw i32 %block_size_y, -8
  %add.ptr.i191 = getelementptr inbounds i8, ptr %245, i64 64
  tail call void @get_block_luma(ptr noundef %242, i32 noundef %add111.i, i32 noundef %add128.i, i32 noundef %block_size_x, i32 noundef %sub129.i, ptr noundef nonnull %add.ptr.i191, i32 noundef %254, i32 noundef %253, i32 noundef %cond72.i, ptr noundef %255, i32 noundef %256, i16 noundef zeroext %conv109.i, ptr noundef nonnull readonly %currMB)
  br label %land.lhs.true131.i

if.end.i172:                                      ; preds = %check_motion_vector_range.exit480.i
  tail call void @get_block_luma(ptr noundef %242, i32 noundef %add111.i, i32 noundef %add119.i, i32 noundef %block_size_x, i32 noundef %block_size_y, ptr noundef nonnull %245, i32 noundef %254, i32 noundef %253, i32 noundef %cond72.i, ptr noundef %255, i32 noundef %256, i16 noundef zeroext %conv109.i, ptr noundef nonnull readonly %currMB)
  br label %if.else138.i

land.lhs.true131.i:                               ; preds = %if.end.thread.i, %if.end.thread565.i
  %shr.i482.i = ashr i32 %add124.i, 2
  %cmp.i483.i = icmp sge i32 %shr.i482.i, %sub76.i
  %cmp1.i484.i = icmp sle i32 %shr.i482.i, %sub75.i155
  %or.cond.i485.not.i = and i1 %cmp.i483.i, %cmp1.i484.i
  br i1 %or.cond.i485.not.i, label %if.else138.i, label %if.then134.i

if.then134.i:                                     ; preds = %land.lhs.true131.i
  tail call void @get_block_luma(ptr noundef %244, i32 noundef %add115.i, i32 noundef %add124.i, i32 noundef %block_size_x, i32 noundef 8, ptr noundef nonnull %247, i32 noundef %254, i32 noundef %253, i32 noundef %cond72.i, ptr noundef %255, i32 noundef %256, i16 noundef zeroext %conv109.i, ptr noundef nonnull readonly %currMB)
  %add135.i = add nsw i32 %add124.i, 32
  %sub136.i = add nsw i32 %block_size_y, -8
  %add.ptr137.i = getelementptr inbounds i8, ptr %247, i64 64
  tail call void @get_block_luma(ptr noundef %244, i32 noundef %add115.i, i32 noundef %add135.i, i32 noundef %block_size_x, i32 noundef %sub136.i, ptr noundef nonnull %add.ptr137.i, i32 noundef %254, i32 noundef %253, i32 noundef %cond72.i, ptr noundef %255, i32 noundef %256, i16 noundef zeroext %conv109.i, ptr noundef nonnull readonly %currMB)
  br label %if.end139.i

if.else138.i:                                     ; preds = %land.lhs.true131.i, %if.end.i172
  tail call void @get_block_luma(ptr noundef %244, i32 noundef %add115.i, i32 noundef %add124.i, i32 noundef %block_size_x, i32 noundef %block_size_y, ptr noundef nonnull %247, i32 noundef %254, i32 noundef %253, i32 noundef %cond72.i, ptr noundef %255, i32 noundef %256, i16 noundef zeroext %conv109.i, ptr noundef nonnull readonly %currMB)
  br label %if.end139.i

if.end139.i:                                      ; preds = %if.else138.i, %if.then134.i
  %285 = load i32, ptr %235, align 4
  %286 = load i32, ptr %237, align 4
  %add142.i = add i32 %285, 1
  %add143.i = add i32 %add142.i, %286
  %shr144.i = ashr i32 %add143.i, 1
  %mb_pred.i173 = getelementptr inbounds i8, ptr %0, i64 1248
  %287 = load i32, ptr %229, align 4
  %288 = load i32, ptr %232, align 4
  %luma_log2_weight_denom.i174 = getelementptr inbounds i8, ptr %0, i64 13276
  %289 = load i16, ptr %luma_log2_weight_denom.i174, align 4
  %conv153.i = zext i16 %289 to i32
  %add154.i = add nuw nsw i32 %conv153.i, 1
  %cmp33.i.i = icmp sgt i32 %block_size_y, 0
  br i1 %cmp33.i.i, label %for.cond1.preheader.lr.ph.i.i186, label %weighted_bi_prediction.exit.i

for.cond1.preheader.lr.ph.i.i186:                 ; preds = %if.end139.i
  %sub.i.i = sub nsw i32 16, %block_size_x
  %cmp226.i.i = icmp sgt i32 %block_size_x, 0
  %shl.i.i.i187 = shl nuw i32 1, %conv153.i
  %idx.ext.i.i = sext i32 %sub.i.i to i64
  br i1 %cmp226.i.i, label %for.cond1.preheader.us.i.preheader.i, label %weighted_bi_prediction.exit.i

for.cond1.preheader.us.i.preheader.i:             ; preds = %for.cond1.preheader.lr.ph.i.i186
  %290 = load ptr, ptr %mb_pred.i173, align 8
  %arrayidx146.i = getelementptr inbounds ptr, ptr %290, i64 %idxprom105.i
  %291 = load ptr, ptr %arrayidx146.i, align 8
  %idxprom147.i = sext i32 %shl5.i to i64
  %arrayidx148.i188 = getelementptr inbounds ptr, ptr %291, i64 %idxprom147.i
  %292 = load ptr, ptr %arrayidx148.i188, align 8
  %idxprom149.i = sext i32 %shl.i139 to i64
  %arrayidx150.i = getelementptr inbounds i16, ptr %292, i64 %idxprom149.i
  %293 = zext nneg i32 %block_size_x to i64
  %min.iters.check = icmp ult i32 %block_size_x, 32
  %n.vec = and i64 %293, 2147483616
  %294 = shl nuw nsw i64 %n.vec, 1
  %295 = shl nuw nsw i64 %n.vec, 1
  %ind.end321 = trunc nuw nsw i64 %n.vec to i32
  %296 = shl nuw nsw i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %287, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert345 = insertelement <8 x i32> poison, i32 %288, i64 0
  %broadcast.splat346 = shufflevector <8 x i32> %broadcast.splatinsert345, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert347 = insertelement <8 x i32> poison, i32 %shl.i.i.i187, i64 0
  %broadcast.splat348 = shufflevector <8 x i32> %broadcast.splatinsert347, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert349 = insertelement <8 x i32> poison, i32 %add154.i, i64 0
  %broadcast.splat350 = shufflevector <8 x i32> %broadcast.splatinsert349, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert351 = insertelement <8 x i32> poison, i32 %shr144.i, i64 0
  %broadcast.splat352 = shufflevector <8 x i32> %broadcast.splatinsert351, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert353 = insertelement <8 x i32> poison, i32 %256, i64 0
  %broadcast.splat354 = shufflevector <8 x i32> %broadcast.splatinsert353, <8 x i32> poison, <8 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %293
  br label %for.cond1.preheader.us.i.i189

for.cond1.preheader.us.i.i189:                    ; preds = %for.cond1.for.end_crit_edge.us.i.i, %for.cond1.preheader.us.i.preheader.i
  %mb_pred.addr.037.us.i.i = phi ptr [ %add.ptr.us.i.i, %for.cond1.for.end_crit_edge.us.i.i ], [ %arrayidx150.i, %for.cond1.preheader.us.i.preheader.i ]
  %block_l0.addr.036.us.i.i = phi ptr [ %add.ptr12.us.i.i, %for.cond1.for.end_crit_edge.us.i.i ], [ %246, %for.cond1.preheader.us.i.preheader.i ]
  %jj.035.us.i.i = phi i32 [ %inc16.us.i.i, %for.cond1.for.end_crit_edge.us.i.i ], [ 0, %for.cond1.preheader.us.i.preheader.i ]
  %block_l1.addr.034.us.i.i = phi ptr [ %add.ptr14.us.i.i, %for.cond1.for.end_crit_edge.us.i.i ], [ %248, %for.cond1.preheader.us.i.preheader.i ]
  br i1 %min.iters.check, label %for.body3.us.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %for.cond1.preheader.us.i.i189
  %block_l1.addr.034.us.i.i317 = ptrtoint ptr %block_l1.addr.034.us.i.i to i64
  %block_l0.addr.036.us.i.i316 = ptrtoint ptr %block_l0.addr.036.us.i.i to i64
  %mb_pred.addr.037.us.i.i315 = ptrtoint ptr %mb_pred.addr.037.us.i.i to i64
  %297 = sub i64 %mb_pred.addr.037.us.i.i315, %block_l0.addr.036.us.i.i316
  %diff.check = icmp ult i64 %297, 64
  %298 = sub i64 %mb_pred.addr.037.us.i.i315, %block_l1.addr.034.us.i.i317
  %diff.check318 = icmp ult i64 %298, 64
  %conflict.rdx = or i1 %diff.check, %diff.check318
  br i1 %conflict.rdx, label %for.body3.us.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %ind.end = getelementptr i8, ptr %mb_pred.addr.037.us.i.i, i64 %294
  %ind.end319 = getelementptr i8, ptr %block_l0.addr.036.us.i.i, i64 %295
  %ind.end323 = getelementptr i8, ptr %block_l1.addr.034.us.i.i, i64 %296
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %offset.idx = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %mb_pred.addr.037.us.i.i, i64 %offset.idx
  %offset.idx328 = shl i64 %index, 1
  %next.gep329 = getelementptr i8, ptr %block_l0.addr.036.us.i.i, i64 %offset.idx328
  %offset.idx333 = shl i64 %index, 1
  %next.gep334 = getelementptr i8, ptr %block_l1.addr.034.us.i.i, i64 %offset.idx333
  %299 = getelementptr i8, ptr %next.gep329, i64 16
  %300 = getelementptr i8, ptr %next.gep329, i64 32
  %301 = getelementptr i8, ptr %next.gep329, i64 48
  %wide.load = load <8 x i16>, ptr %next.gep329, align 2
  %wide.load338 = load <8 x i16>, ptr %299, align 2
  %wide.load339 = load <8 x i16>, ptr %300, align 2
  %wide.load340 = load <8 x i16>, ptr %301, align 2
  %302 = zext <8 x i16> %wide.load to <8 x i32>
  %303 = zext <8 x i16> %wide.load338 to <8 x i32>
  %304 = zext <8 x i16> %wide.load339 to <8 x i32>
  %305 = zext <8 x i16> %wide.load340 to <8 x i32>
  %306 = mul nsw <8 x i32> %broadcast.splat, %302
  %307 = mul nsw <8 x i32> %broadcast.splat, %303
  %308 = mul nsw <8 x i32> %broadcast.splat, %304
  %309 = mul nsw <8 x i32> %broadcast.splat, %305
  %310 = getelementptr i8, ptr %next.gep334, i64 16
  %311 = getelementptr i8, ptr %next.gep334, i64 32
  %312 = getelementptr i8, ptr %next.gep334, i64 48
  %wide.load341 = load <8 x i16>, ptr %next.gep334, align 2
  %wide.load342 = load <8 x i16>, ptr %310, align 2
  %wide.load343 = load <8 x i16>, ptr %311, align 2
  %wide.load344 = load <8 x i16>, ptr %312, align 2
  %313 = zext <8 x i16> %wide.load341 to <8 x i32>
  %314 = zext <8 x i16> %wide.load342 to <8 x i32>
  %315 = zext <8 x i16> %wide.load343 to <8 x i32>
  %316 = zext <8 x i16> %wide.load344 to <8 x i32>
  %317 = mul nsw <8 x i32> %broadcast.splat346, %313
  %318 = mul nsw <8 x i32> %broadcast.splat346, %314
  %319 = mul nsw <8 x i32> %broadcast.splat346, %315
  %320 = mul nsw <8 x i32> %broadcast.splat346, %316
  %321 = add <8 x i32> %306, %broadcast.splat348
  %322 = add <8 x i32> %307, %broadcast.splat348
  %323 = add <8 x i32> %308, %broadcast.splat348
  %324 = add <8 x i32> %309, %broadcast.splat348
  %325 = add <8 x i32> %321, %317
  %326 = add <8 x i32> %322, %318
  %327 = add <8 x i32> %323, %319
  %328 = add <8 x i32> %324, %320
  %329 = ashr <8 x i32> %325, %broadcast.splat350
  %330 = ashr <8 x i32> %326, %broadcast.splat350
  %331 = ashr <8 x i32> %327, %broadcast.splat350
  %332 = ashr <8 x i32> %328, %broadcast.splat350
  %333 = add nsw <8 x i32> %329, %broadcast.splat352
  %334 = add nsw <8 x i32> %330, %broadcast.splat352
  %335 = add nsw <8 x i32> %331, %broadcast.splat352
  %336 = add nsw <8 x i32> %332, %broadcast.splat352
  %337 = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %333, <8 x i32> zeroinitializer)
  %338 = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %334, <8 x i32> zeroinitializer)
  %339 = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %335, <8 x i32> zeroinitializer)
  %340 = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %336, <8 x i32> zeroinitializer)
  %341 = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %337, <8 x i32> %broadcast.splat354)
  %342 = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %338, <8 x i32> %broadcast.splat354)
  %343 = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %339, <8 x i32> %broadcast.splat354)
  %344 = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %340, <8 x i32> %broadcast.splat354)
  %345 = trunc <8 x i32> %341 to <8 x i16>
  %346 = trunc <8 x i32> %342 to <8 x i16>
  %347 = trunc <8 x i32> %343 to <8 x i16>
  %348 = trunc <8 x i32> %344 to <8 x i16>
  %349 = getelementptr i8, ptr %next.gep, i64 16
  %350 = getelementptr i8, ptr %next.gep, i64 32
  %351 = getelementptr i8, ptr %next.gep, i64 48
  store <8 x i16> %345, ptr %next.gep, align 2
  store <8 x i16> %346, ptr %349, align 2
  store <8 x i16> %347, ptr %350, align 2
  store <8 x i16> %348, ptr %351, align 2
  %index.next = add nuw i64 %index, 32
  %352 = icmp eq i64 %index.next, %n.vec
  br i1 %352, label %middle.block, label %vector.body, !llvm.loop !301

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %for.cond1.for.end_crit_edge.us.i.i, label %for.body3.us.i.i.preheader

for.body3.us.i.i.preheader:                       ; preds = %middle.block, %vector.memcheck, %for.cond1.preheader.us.i.i189
  %mb_pred.addr.130.us.i.i.ph = phi ptr [ %mb_pred.addr.037.us.i.i, %vector.memcheck ], [ %mb_pred.addr.037.us.i.i, %for.cond1.preheader.us.i.i189 ], [ %ind.end, %middle.block ]
  %block_l0.addr.129.us.i.i.ph = phi ptr [ %block_l0.addr.036.us.i.i, %vector.memcheck ], [ %block_l0.addr.036.us.i.i, %for.cond1.preheader.us.i.i189 ], [ %ind.end319, %middle.block ]
  %ii.028.us.i.i.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %for.cond1.preheader.us.i.i189 ], [ %ind.end321, %middle.block ]
  %block_l1.addr.127.us.i.i.ph = phi ptr [ %block_l1.addr.034.us.i.i, %vector.memcheck ], [ %block_l1.addr.034.us.i.i, %for.cond1.preheader.us.i.i189 ], [ %ind.end323, %middle.block ]
  br label %for.body3.us.i.i

for.body3.us.i.i:                                 ; preds = %for.body3.us.i.i.preheader, %for.body3.us.i.i
  %mb_pred.addr.130.us.i.i = phi ptr [ %incdec.ptr10.us.i.i, %for.body3.us.i.i ], [ %mb_pred.addr.130.us.i.i.ph, %for.body3.us.i.i.preheader ]
  %block_l0.addr.129.us.i.i = phi ptr [ %incdec.ptr.us.i.i, %for.body3.us.i.i ], [ %block_l0.addr.129.us.i.i.ph, %for.body3.us.i.i.preheader ]
  %ii.028.us.i.i = phi i32 [ %inc.us.i.i, %for.body3.us.i.i ], [ %ii.028.us.i.i.ph, %for.body3.us.i.i.preheader ]
  %block_l1.addr.127.us.i.i = phi ptr [ %incdec.ptr4.us.i.i, %for.body3.us.i.i ], [ %block_l1.addr.127.us.i.i.ph, %for.body3.us.i.i.preheader ]
  %incdec.ptr.us.i.i = getelementptr inbounds i8, ptr %block_l0.addr.129.us.i.i, i64 2
  %353 = load i16, ptr %block_l0.addr.129.us.i.i, align 2
  %conv.us.i.i = zext i16 %353 to i32
  %mul.us.i.i = mul nsw i32 %287, %conv.us.i.i
  %incdec.ptr4.us.i.i = getelementptr inbounds i8, ptr %block_l1.addr.127.us.i.i, i64 2
  %354 = load i16, ptr %block_l1.addr.127.us.i.i, align 2
  %conv5.us.i.i = zext i16 %354 to i32
  %mul6.us.i.i = mul nsw i32 %288, %conv5.us.i.i
  %add.us.i.i = add i32 %mul.us.i.i, %shl.i.i.i187
  %add.i.us.i.i = add i32 %add.us.i.i, %mul6.us.i.i
  %shr.i.us.i.i = ashr i32 %add.i.us.i.i, %add154.i
  %add7.us.i.i = add nsw i32 %shr.i.us.i.i, %shr144.i
  %cond.i.i.us.i.i = tail call noundef i32 @llvm.smax.i32(i32 %add7.us.i.i, i32 0)
  %cond.i4.i.us.i.i = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i.us.i.i, i32 %256)
  %conv9.us.i.i = trunc i32 %cond.i4.i.us.i.i to i16
  %incdec.ptr10.us.i.i = getelementptr inbounds i8, ptr %mb_pred.addr.130.us.i.i, i64 2
  store i16 %conv9.us.i.i, ptr %mb_pred.addr.130.us.i.i, align 2
  %inc.us.i.i = add nuw nsw i32 %ii.028.us.i.i, 1
  %exitcond.not.i.i190 = icmp eq i32 %inc.us.i.i, %block_size_x
  br i1 %exitcond.not.i.i190, label %for.cond1.for.end_crit_edge.us.i.i, label %for.body3.us.i.i, !llvm.loop !302

for.cond1.for.end_crit_edge.us.i.i:               ; preds = %for.body3.us.i.i, %middle.block
  %incdec.ptr.us.i.i.lcssa = phi ptr [ %ind.end319, %middle.block ], [ %incdec.ptr.us.i.i, %for.body3.us.i.i ]
  %incdec.ptr4.us.i.i.lcssa = phi ptr [ %ind.end323, %middle.block ], [ %incdec.ptr4.us.i.i, %for.body3.us.i.i ]
  %incdec.ptr10.us.i.i.lcssa = phi ptr [ %ind.end, %middle.block ], [ %incdec.ptr10.us.i.i, %for.body3.us.i.i ]
  %add.ptr.us.i.i = getelementptr inbounds i16, ptr %incdec.ptr10.us.i.i.lcssa, i64 %idx.ext.i.i
  %add.ptr12.us.i.i = getelementptr inbounds i16, ptr %incdec.ptr.us.i.i.lcssa, i64 %idx.ext.i.i
  %add.ptr14.us.i.i = getelementptr inbounds i16, ptr %incdec.ptr4.us.i.i.lcssa, i64 %idx.ext.i.i
  %inc16.us.i.i = add nuw nsw i32 %jj.035.us.i.i, 1
  %exitcond39.not.i.i = icmp eq i32 %inc16.us.i.i, %block_size_y
  br i1 %exitcond39.not.i.i, label %weighted_bi_prediction.exit.i, label %for.cond1.preheader.us.i.i189

weighted_bi_prediction.exit.i:                    ; preds = %for.cond1.for.end_crit_edge.us.i.i, %for.cond1.preheader.lr.ph.i.i186, %if.end139.i
  switch i32 %219, label %if.then160.i [
    i32 3, label %if.end7
    i32 0, label %if.end7
  ]

if.then160.i:                                     ; preds = %weighted_bi_prediction.exit.i
  %size_x_cr_m1.i175 = getelementptr inbounds i8, ptr %dec_picture, i64 88
  %355 = load i32, ptr %size_x_cr_m1.i175, align 8
  %356 = load i32, ptr %mb_field.i148, align 8
  %tobool164.not.i = icmp eq i32 %356, 0
  br i1 %tobool164.not.i, label %cond.false168.i, label %cond.true165.i

cond.true165.i:                                   ; preds = %if.then160.i
  %size_y_cr.i176 = getelementptr inbounds i8, ptr %dec_picture, i64 76
  %357 = load i32, ptr %size_y_cr.i176, align 4
  %shr166.i = ashr i32 %357, 1
  %sub167.i = add nsw i32 %shr166.i, -1
  br label %cond.end169.i

cond.false168.i:                                  ; preds = %if.then160.i
  %size_y_cr_m1.i185 = getelementptr inbounds i8, ptr %dec_picture, i64 92
  %358 = load i32, ptr %size_y_cr_m1.i185, align 4
  br label %cond.end169.i

cond.end169.i:                                    ; preds = %cond.false168.i, %cond.true165.i
  %cond170.i = phi i32 [ %sub167.i, %cond.true165.i ], [ %358, %cond.false168.i ]
  %shiftpel_x171.i = getelementptr inbounds i8, ptr %1, i64 849204
  %359 = load i32, ptr %shiftpel_x171.i, align 4
  %shiftpel_y172.i = getelementptr inbounds i8, ptr %1, i64 849208
  %360 = load i32, ptr %shiftpel_y172.i, align 8
  %subpel_x173.i = getelementptr inbounds i8, ptr %1, i64 849196
  %361 = load i32, ptr %subpel_x173.i, align 4
  %subpel_y174.i = getelementptr inbounds i8, ptr %1, i64 849200
  %362 = load i32, ptr %subpel_y174.i, align 8
  %total_scale175.i = getelementptr inbounds i8, ptr %1, i64 849212
  %363 = load i32, ptr %total_scale175.i, align 4
  %chroma_log2_weight_denom.i177 = getelementptr inbounds i8, ptr %0, i64 13278
  %364 = load i16, ptr %chroma_log2_weight_denom.i177, align 2
  %conv176.i = zext i16 %364 to i32
  %add177.i = add nuw nsw i32 %conv176.i, 1
  %mb_cr_size_x.i178 = getelementptr inbounds i8, ptr %1, i64 849108
  %365 = load i32, ptr %mb_cr_size_x.i178, align 4
  %cmp178.i = icmp ne i32 %365, 16
  %shr183.i = zext i1 %cmp178.i to i32
  %block_size_x_cr.0.i179 = ashr i32 %block_size_x, %shr183.i
  %ioff_cr.0.i180 = ashr exact i32 %shl.i139, %shr183.i
  %mb_cr_size_y.i181 = getelementptr inbounds i8, ptr %1, i64 849112
  %366 = load i32, ptr %mb_cr_size_y.i181, align 8
  %cmp185.i = icmp ne i32 %366, 16
  %shr190.i = zext i1 %cmp185.i to i32
  %block_size_y_cr.0.i182 = ashr i32 %block_size_y, %shr190.i
  %joff_cr.0.i183 = ashr exact i32 %shl5.i, %shr190.i
  %cmp192.i = icmp eq i32 %219, 1
  br i1 %cmp192.i, label %if.then194.i, label %if.end211.i

if.then194.i:                                     ; preds = %cond.end169.i
  %chroma_vector_adjustment.i184 = getelementptr inbounds i8, ptr %0, i64 13552
  %arrayidx199.i = getelementptr inbounds [6 x [16 x i8]], ptr %chroma_vector_adjustment.i184, i64 0, i64 %idxprom81.i, i64 %idxprom83.i
  %367 = load i8, ptr %arrayidx199.i, align 1
  %conv200.i = sext i8 %367 to i32
  %add201.i = add nsw i32 %add119.i, %conv200.i
  %arrayidx207.i = getelementptr inbounds [6 x [16 x i8]], ptr %chroma_vector_adjustment.i184, i64 0, i64 %idxprom87.i, i64 %idxprom89.i
  %368 = load i8, ptr %arrayidx207.i, align 1
  %conv208.i = sext i8 %368 to i32
  %add209.i = add nsw i32 %add124.i, %conv208.i
  br label %if.end211.i

if.end211.i:                                      ; preds = %if.then194.i, %cond.end169.i
  %vec1_y_cr.0.i = phi i32 [ %add201.i, %if.then194.i ], [ %add119.i, %cond.end169.i ]
  %vec2_y_cr.0.i = phi i32 [ %add209.i, %if.then194.i ], [ %add124.i, %cond.end169.i ]
  %arrayidx213.i = getelementptr inbounds i8, ptr %1, i64 849064
  %369 = load i32, ptr %arrayidx213.i, align 4
  %conv214.i = trunc i32 %369 to i16
  %arrayidx215.i = getelementptr inbounds i8, ptr %235, i64 4
  %370 = load i32, ptr %arrayidx215.i, align 4
  %arrayidx216.i = getelementptr inbounds i8, ptr %237, i64 4
  %371 = load i32, ptr %arrayidx216.i, align 4
  %add217.i = add i32 %370, 1
  %add218.i = add i32 %add217.i, %371
  %shr219.i = ashr i32 %add218.i, 1
  tail call fastcc void @get_block_chroma(ptr noundef %242, i32 noundef %add111.i, i32 noundef %vec1_y_cr.0.i, i32 noundef %361, i32 noundef %362, i32 noundef %355, i32 noundef %cond170.i, i32 noundef %block_size_x_cr.0.i179, i32 noundef %block_size_y_cr.0.i182, i32 noundef %359, i32 noundef %360, ptr noundef %246, ptr noundef %250, i32 noundef %363, i16 noundef zeroext %conv214.i, ptr noundef nonnull %1)
  tail call fastcc void @get_block_chroma(ptr noundef %244, i32 noundef %add115.i, i32 noundef %vec2_y_cr.0.i, i32 noundef %361, i32 noundef %362, i32 noundef %355, i32 noundef %cond170.i, i32 noundef %block_size_x_cr.0.i179, i32 noundef %block_size_y_cr.0.i182, i32 noundef %359, i32 noundef %360, ptr noundef %248, ptr noundef %252, i32 noundef %363, i16 noundef zeroext %conv214.i, ptr noundef nonnull %1)
  %idxprom222.i = sext i32 %joff_cr.0.i183 to i64
  %idxprom224.i = sext i32 %ioff_cr.0.i180 to i64
  %arrayidx226.i = getelementptr inbounds i8, ptr %229, i64 4
  %372 = load i32, ptr %arrayidx226.i, align 4
  %arrayidx227.i = getelementptr inbounds i8, ptr %232, i64 4
  %373 = load i32, ptr %arrayidx227.i, align 4
  %arrayidx229.i = getelementptr inbounds i8, ptr %1, i64 849076
  %374 = load i32, ptr %arrayidx229.i, align 4
  %cmp33.i487.i = icmp sgt i32 %block_size_y_cr.0.i182, 0
  br i1 %cmp33.i487.i, label %for.cond1.preheader.lr.ph.i488.i, label %weighted_bi_prediction.exit525.i

for.cond1.preheader.lr.ph.i488.i:                 ; preds = %if.end211.i
  %sub.i489.i = sub nsw i32 16, %block_size_x_cr.0.i179
  %cmp226.i490.i = icmp sgt i32 %block_size_x_cr.0.i179, 0
  %shl.i.i491.i = shl nuw i32 1, %conv176.i
  %idx.ext.i492.i = sext i32 %sub.i489.i to i64
  br i1 %cmp226.i490.i, label %for.cond1.preheader.us.i493.preheader.i, label %weighted_bi_prediction.exit525.i

for.cond1.preheader.us.i493.preheader.i:          ; preds = %for.cond1.preheader.lr.ph.i488.i
  %375 = load ptr, ptr %mb_pred.i173, align 8
  %arrayidx221.i = getelementptr inbounds i8, ptr %375, i64 8
  %376 = load ptr, ptr %arrayidx221.i, align 8
  %arrayidx223.i = getelementptr inbounds ptr, ptr %376, i64 %idxprom222.i
  %377 = load ptr, ptr %arrayidx223.i, align 8
  %arrayidx225.i = getelementptr inbounds i16, ptr %377, i64 %idxprom224.i
  %378 = zext nneg i32 %block_size_x_cr.0.i179 to i64
  %min.iters.check364 = icmp ult i32 %block_size_x_cr.0.i179, 32
  %n.vec367 = and i64 %378, 2147483616
  %379 = shl nuw nsw i64 %n.vec367, 1
  %380 = shl nuw nsw i64 %n.vec367, 1
  %ind.end372 = trunc nuw nsw i64 %n.vec367 to i32
  %381 = shl nuw nsw i64 %n.vec367, 1
  %broadcast.splatinsert397 = insertelement <8 x i32> poison, i32 %372, i64 0
  %broadcast.splat398 = shufflevector <8 x i32> %broadcast.splatinsert397, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert403 = insertelement <8 x i32> poison, i32 %373, i64 0
  %broadcast.splat404 = shufflevector <8 x i32> %broadcast.splatinsert403, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert405 = insertelement <8 x i32> poison, i32 %shl.i.i491.i, i64 0
  %broadcast.splat406 = shufflevector <8 x i32> %broadcast.splatinsert405, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert407 = insertelement <8 x i32> poison, i32 %add177.i, i64 0
  %broadcast.splat408 = shufflevector <8 x i32> %broadcast.splatinsert407, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert409 = insertelement <8 x i32> poison, i32 %shr219.i, i64 0
  %broadcast.splat410 = shufflevector <8 x i32> %broadcast.splatinsert409, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert411 = insertelement <8 x i32> poison, i32 %374, i64 0
  %broadcast.splat412 = shufflevector <8 x i32> %broadcast.splatinsert411, <8 x i32> poison, <8 x i32> zeroinitializer
  %cmp.n414 = icmp eq i64 %n.vec367, %378
  br label %for.cond1.preheader.us.i493.i

for.cond1.preheader.us.i493.i:                    ; preds = %for.cond1.for.end_crit_edge.us.i519.i, %for.cond1.preheader.us.i493.preheader.i
  %mb_pred.addr.037.us.i494.i = phi ptr [ %add.ptr.us.i520.i, %for.cond1.for.end_crit_edge.us.i519.i ], [ %arrayidx225.i, %for.cond1.preheader.us.i493.preheader.i ]
  %block_l0.addr.036.us.i495.i = phi ptr [ %add.ptr12.us.i521.i, %for.cond1.for.end_crit_edge.us.i519.i ], [ %246, %for.cond1.preheader.us.i493.preheader.i ]
  %jj.035.us.i496.i = phi i32 [ %inc16.us.i523.i, %for.cond1.for.end_crit_edge.us.i519.i ], [ 0, %for.cond1.preheader.us.i493.preheader.i ]
  %block_l1.addr.034.us.i497.i = phi ptr [ %add.ptr14.us.i522.i, %for.cond1.for.end_crit_edge.us.i519.i ], [ %248, %for.cond1.preheader.us.i493.preheader.i ]
  br i1 %min.iters.check364, label %for.body3.us.i498.i.preheader, label %vector.memcheck355

vector.memcheck355:                               ; preds = %for.cond1.preheader.us.i493.i
  %block_l1.addr.034.us.i497.i359 = ptrtoint ptr %block_l1.addr.034.us.i497.i to i64
  %block_l0.addr.036.us.i495.i357 = ptrtoint ptr %block_l0.addr.036.us.i495.i to i64
  %mb_pred.addr.037.us.i494.i356 = ptrtoint ptr %mb_pred.addr.037.us.i494.i to i64
  %382 = sub i64 %mb_pred.addr.037.us.i494.i356, %block_l0.addr.036.us.i495.i357
  %diff.check358 = icmp ult i64 %382, 64
  %383 = sub i64 %mb_pred.addr.037.us.i494.i356, %block_l1.addr.034.us.i497.i359
  %diff.check360 = icmp ult i64 %383, 64
  %conflict.rdx361 = or i1 %diff.check358, %diff.check360
  br i1 %conflict.rdx361, label %for.body3.us.i498.i.preheader, label %vector.ph365

vector.ph365:                                     ; preds = %vector.memcheck355
  %ind.end368 = getelementptr i8, ptr %mb_pred.addr.037.us.i494.i, i64 %379
  %ind.end370 = getelementptr i8, ptr %block_l0.addr.036.us.i495.i, i64 %380
  %ind.end374 = getelementptr i8, ptr %block_l1.addr.034.us.i497.i, i64 %381
  br label %vector.body376

vector.body376:                                   ; preds = %vector.body376, %vector.ph365
  %index377 = phi i64 [ 0, %vector.ph365 ], [ %index.next413, %vector.body376 ]
  %offset.idx378 = shl i64 %index377, 1
  %next.gep379 = getelementptr i8, ptr %mb_pred.addr.037.us.i494.i, i64 %offset.idx378
  %offset.idx383 = shl i64 %index377, 1
  %next.gep384 = getelementptr i8, ptr %block_l0.addr.036.us.i495.i, i64 %offset.idx383
  %offset.idx388 = shl i64 %index377, 1
  %next.gep389 = getelementptr i8, ptr %block_l1.addr.034.us.i497.i, i64 %offset.idx388
  %384 = getelementptr i8, ptr %next.gep384, i64 16
  %385 = getelementptr i8, ptr %next.gep384, i64 32
  %386 = getelementptr i8, ptr %next.gep384, i64 48
  %wide.load393 = load <8 x i16>, ptr %next.gep384, align 2
  %wide.load394 = load <8 x i16>, ptr %384, align 2
  %wide.load395 = load <8 x i16>, ptr %385, align 2
  %wide.load396 = load <8 x i16>, ptr %386, align 2
  %387 = zext <8 x i16> %wide.load393 to <8 x i32>
  %388 = zext <8 x i16> %wide.load394 to <8 x i32>
  %389 = zext <8 x i16> %wide.load395 to <8 x i32>
  %390 = zext <8 x i16> %wide.load396 to <8 x i32>
  %391 = mul nsw <8 x i32> %broadcast.splat398, %387
  %392 = mul nsw <8 x i32> %broadcast.splat398, %388
  %393 = mul nsw <8 x i32> %broadcast.splat398, %389
  %394 = mul nsw <8 x i32> %broadcast.splat398, %390
  %395 = getelementptr i8, ptr %next.gep389, i64 16
  %396 = getelementptr i8, ptr %next.gep389, i64 32
  %397 = getelementptr i8, ptr %next.gep389, i64 48
  %wide.load399 = load <8 x i16>, ptr %next.gep389, align 2
  %wide.load400 = load <8 x i16>, ptr %395, align 2
  %wide.load401 = load <8 x i16>, ptr %396, align 2
  %wide.load402 = load <8 x i16>, ptr %397, align 2
  %398 = zext <8 x i16> %wide.load399 to <8 x i32>
  %399 = zext <8 x i16> %wide.load400 to <8 x i32>
  %400 = zext <8 x i16> %wide.load401 to <8 x i32>
  %401 = zext <8 x i16> %wide.load402 to <8 x i32>
  %402 = mul nsw <8 x i32> %broadcast.splat404, %398
  %403 = mul nsw <8 x i32> %broadcast.splat404, %399
  %404 = mul nsw <8 x i32> %broadcast.splat404, %400
  %405 = mul nsw <8 x i32> %broadcast.splat404, %401
  %406 = add <8 x i32> %391, %broadcast.splat406
  %407 = add <8 x i32> %392, %broadcast.splat406
  %408 = add <8 x i32> %393, %broadcast.splat406
  %409 = add <8 x i32> %394, %broadcast.splat406
  %410 = add <8 x i32> %406, %402
  %411 = add <8 x i32> %407, %403
  %412 = add <8 x i32> %408, %404
  %413 = add <8 x i32> %409, %405
  %414 = ashr <8 x i32> %410, %broadcast.splat408
  %415 = ashr <8 x i32> %411, %broadcast.splat408
  %416 = ashr <8 x i32> %412, %broadcast.splat408
  %417 = ashr <8 x i32> %413, %broadcast.splat408
  %418 = add nsw <8 x i32> %414, %broadcast.splat410
  %419 = add nsw <8 x i32> %415, %broadcast.splat410
  %420 = add nsw <8 x i32> %416, %broadcast.splat410
  %421 = add nsw <8 x i32> %417, %broadcast.splat410
  %422 = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %418, <8 x i32> zeroinitializer)
  %423 = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %419, <8 x i32> zeroinitializer)
  %424 = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %420, <8 x i32> zeroinitializer)
  %425 = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %421, <8 x i32> zeroinitializer)
  %426 = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %422, <8 x i32> %broadcast.splat412)
  %427 = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %423, <8 x i32> %broadcast.splat412)
  %428 = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %424, <8 x i32> %broadcast.splat412)
  %429 = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %425, <8 x i32> %broadcast.splat412)
  %430 = trunc <8 x i32> %426 to <8 x i16>
  %431 = trunc <8 x i32> %427 to <8 x i16>
  %432 = trunc <8 x i32> %428 to <8 x i16>
  %433 = trunc <8 x i32> %429 to <8 x i16>
  %434 = getelementptr i8, ptr %next.gep379, i64 16
  %435 = getelementptr i8, ptr %next.gep379, i64 32
  %436 = getelementptr i8, ptr %next.gep379, i64 48
  store <8 x i16> %430, ptr %next.gep379, align 2
  store <8 x i16> %431, ptr %434, align 2
  store <8 x i16> %432, ptr %435, align 2
  store <8 x i16> %433, ptr %436, align 2
  %index.next413 = add nuw i64 %index377, 32
  %437 = icmp eq i64 %index.next413, %n.vec367
  br i1 %437, label %middle.block362, label %vector.body376, !llvm.loop !303

middle.block362:                                  ; preds = %vector.body376
  br i1 %cmp.n414, label %for.cond1.for.end_crit_edge.us.i519.i, label %for.body3.us.i498.i.preheader

for.body3.us.i498.i.preheader:                    ; preds = %middle.block362, %vector.memcheck355, %for.cond1.preheader.us.i493.i
  %mb_pred.addr.130.us.i499.i.ph = phi ptr [ %mb_pred.addr.037.us.i494.i, %vector.memcheck355 ], [ %mb_pred.addr.037.us.i494.i, %for.cond1.preheader.us.i493.i ], [ %ind.end368, %middle.block362 ]
  %block_l0.addr.129.us.i500.i.ph = phi ptr [ %block_l0.addr.036.us.i495.i, %vector.memcheck355 ], [ %block_l0.addr.036.us.i495.i, %for.cond1.preheader.us.i493.i ], [ %ind.end370, %middle.block362 ]
  %ii.028.us.i501.i.ph = phi i32 [ 0, %vector.memcheck355 ], [ 0, %for.cond1.preheader.us.i493.i ], [ %ind.end372, %middle.block362 ]
  %block_l1.addr.127.us.i502.i.ph = phi ptr [ %block_l1.addr.034.us.i497.i, %vector.memcheck355 ], [ %block_l1.addr.034.us.i497.i, %for.cond1.preheader.us.i493.i ], [ %ind.end374, %middle.block362 ]
  br label %for.body3.us.i498.i

for.body3.us.i498.i:                              ; preds = %for.body3.us.i498.i.preheader, %for.body3.us.i498.i
  %mb_pred.addr.130.us.i499.i = phi ptr [ %incdec.ptr10.us.i516.i, %for.body3.us.i498.i ], [ %mb_pred.addr.130.us.i499.i.ph, %for.body3.us.i498.i.preheader ]
  %block_l0.addr.129.us.i500.i = phi ptr [ %incdec.ptr.us.i503.i, %for.body3.us.i498.i ], [ %block_l0.addr.129.us.i500.i.ph, %for.body3.us.i498.i.preheader ]
  %ii.028.us.i501.i = phi i32 [ %inc.us.i517.i, %for.body3.us.i498.i ], [ %ii.028.us.i501.i.ph, %for.body3.us.i498.i.preheader ]
  %block_l1.addr.127.us.i502.i = phi ptr [ %incdec.ptr4.us.i506.i, %for.body3.us.i498.i ], [ %block_l1.addr.127.us.i502.i.ph, %for.body3.us.i498.i.preheader ]
  %incdec.ptr.us.i503.i = getelementptr inbounds i8, ptr %block_l0.addr.129.us.i500.i, i64 2
  %438 = load i16, ptr %block_l0.addr.129.us.i500.i, align 2
  %conv.us.i504.i = zext i16 %438 to i32
  %mul.us.i505.i = mul nsw i32 %372, %conv.us.i504.i
  %incdec.ptr4.us.i506.i = getelementptr inbounds i8, ptr %block_l1.addr.127.us.i502.i, i64 2
  %439 = load i16, ptr %block_l1.addr.127.us.i502.i, align 2
  %conv5.us.i507.i = zext i16 %439 to i32
  %mul6.us.i508.i = mul nsw i32 %373, %conv5.us.i507.i
  %add.us.i509.i = add i32 %mul.us.i505.i, %shl.i.i491.i
  %add.i.us.i510.i = add i32 %add.us.i509.i, %mul6.us.i508.i
  %shr.i.us.i511.i = ashr i32 %add.i.us.i510.i, %add177.i
  %add7.us.i512.i = add nsw i32 %shr.i.us.i511.i, %shr219.i
  %cond.i.i.us.i513.i = tail call noundef i32 @llvm.smax.i32(i32 %add7.us.i512.i, i32 0)
  %cond.i4.i.us.i514.i = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i.us.i513.i, i32 %374)
  %conv9.us.i515.i = trunc i32 %cond.i4.i.us.i514.i to i16
  %incdec.ptr10.us.i516.i = getelementptr inbounds i8, ptr %mb_pred.addr.130.us.i499.i, i64 2
  store i16 %conv9.us.i515.i, ptr %mb_pred.addr.130.us.i499.i, align 2
  %inc.us.i517.i = add nuw nsw i32 %ii.028.us.i501.i, 1
  %exitcond.not.i518.i = icmp eq i32 %inc.us.i517.i, %block_size_x_cr.0.i179
  br i1 %exitcond.not.i518.i, label %for.cond1.for.end_crit_edge.us.i519.i, label %for.body3.us.i498.i, !llvm.loop !304

for.cond1.for.end_crit_edge.us.i519.i:            ; preds = %for.body3.us.i498.i, %middle.block362
  %incdec.ptr.us.i503.i.lcssa = phi ptr [ %ind.end370, %middle.block362 ], [ %incdec.ptr.us.i503.i, %for.body3.us.i498.i ]
  %incdec.ptr4.us.i506.i.lcssa = phi ptr [ %ind.end374, %middle.block362 ], [ %incdec.ptr4.us.i506.i, %for.body3.us.i498.i ]
  %incdec.ptr10.us.i516.i.lcssa = phi ptr [ %ind.end368, %middle.block362 ], [ %incdec.ptr10.us.i516.i, %for.body3.us.i498.i ]
  %add.ptr.us.i520.i = getelementptr inbounds i16, ptr %incdec.ptr10.us.i516.i.lcssa, i64 %idx.ext.i492.i
  %add.ptr12.us.i521.i = getelementptr inbounds i16, ptr %incdec.ptr.us.i503.i.lcssa, i64 %idx.ext.i492.i
  %add.ptr14.us.i522.i = getelementptr inbounds i16, ptr %incdec.ptr4.us.i506.i.lcssa, i64 %idx.ext.i492.i
  %inc16.us.i523.i = add nuw nsw i32 %jj.035.us.i496.i, 1
  %exitcond39.not.i524.i = icmp eq i32 %inc16.us.i523.i, %block_size_y_cr.0.i182
  br i1 %exitcond39.not.i524.i, label %weighted_bi_prediction.exit525.i, label %for.cond1.preheader.us.i493.i

weighted_bi_prediction.exit525.i:                 ; preds = %for.cond1.for.end_crit_edge.us.i519.i, %for.cond1.preheader.lr.ph.i488.i, %if.end211.i
  %arrayidx230.i = getelementptr inbounds i8, ptr %235, i64 8
  %440 = load i32, ptr %arrayidx230.i, align 4
  %arrayidx231.i = getelementptr inbounds i8, ptr %237, i64 8
  %441 = load i32, ptr %arrayidx231.i, align 4
  %add232.i = add i32 %440, 1
  %add233.i = add i32 %add232.i, %441
  %shr234.i = ashr i32 %add233.i, 1
  %arrayidx241.i = getelementptr inbounds i8, ptr %229, i64 8
  %442 = load i32, ptr %arrayidx241.i, align 4
  %arrayidx242.i = getelementptr inbounds i8, ptr %232, i64 8
  %443 = load i32, ptr %arrayidx242.i, align 4
  %arrayidx244.i = getelementptr inbounds i8, ptr %1, i64 849080
  %444 = load i32, ptr %arrayidx244.i, align 8
  br i1 %cmp33.i487.i, label %for.cond1.preheader.lr.ph.i527.i, label %if.end7

for.cond1.preheader.lr.ph.i527.i:                 ; preds = %weighted_bi_prediction.exit525.i
  %sub.i528.i = sub nsw i32 16, %block_size_x_cr.0.i179
  %cmp226.i529.i = icmp sgt i32 %block_size_x_cr.0.i179, 0
  %shl.i.i530.i = shl nuw i32 1, %conv176.i
  %idx.ext.i531.i = sext i32 %sub.i528.i to i64
  br i1 %cmp226.i529.i, label %for.cond1.preheader.us.i532.preheader.i, label %if.end7

for.cond1.preheader.us.i532.preheader.i:          ; preds = %for.cond1.preheader.lr.ph.i527.i
  %445 = load ptr, ptr %mb_pred.i173, align 8
  %arrayidx236.i = getelementptr inbounds i8, ptr %445, i64 16
  %446 = load ptr, ptr %arrayidx236.i, align 8
  %arrayidx238.i = getelementptr inbounds ptr, ptr %446, i64 %idxprom222.i
  %447 = load ptr, ptr %arrayidx238.i, align 8
  %arrayidx240.i = getelementptr inbounds i16, ptr %447, i64 %idxprom224.i
  %448 = zext nneg i32 %block_size_x_cr.0.i179 to i64
  %min.iters.check424 = icmp ult i32 %block_size_x_cr.0.i179, 32
  %n.vec427 = and i64 %448, 2147483616
  %449 = shl nuw nsw i64 %n.vec427, 1
  %450 = shl nuw nsw i64 %n.vec427, 1
  %ind.end432 = trunc nuw nsw i64 %n.vec427 to i32
  %451 = shl nuw nsw i64 %n.vec427, 1
  %broadcast.splatinsert457 = insertelement <8 x i32> poison, i32 %442, i64 0
  %broadcast.splat458 = shufflevector <8 x i32> %broadcast.splatinsert457, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert463 = insertelement <8 x i32> poison, i32 %443, i64 0
  %broadcast.splat464 = shufflevector <8 x i32> %broadcast.splatinsert463, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert465 = insertelement <8 x i32> poison, i32 %shl.i.i530.i, i64 0
  %broadcast.splat466 = shufflevector <8 x i32> %broadcast.splatinsert465, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert467 = insertelement <8 x i32> poison, i32 %add177.i, i64 0
  %broadcast.splat468 = shufflevector <8 x i32> %broadcast.splatinsert467, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert469 = insertelement <8 x i32> poison, i32 %shr234.i, i64 0
  %broadcast.splat470 = shufflevector <8 x i32> %broadcast.splatinsert469, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert471 = insertelement <8 x i32> poison, i32 %444, i64 0
  %broadcast.splat472 = shufflevector <8 x i32> %broadcast.splatinsert471, <8 x i32> poison, <8 x i32> zeroinitializer
  %cmp.n474 = icmp eq i64 %n.vec427, %448
  br label %for.cond1.preheader.us.i532.i

for.cond1.preheader.us.i532.i:                    ; preds = %for.cond1.for.end_crit_edge.us.i558.i, %for.cond1.preheader.us.i532.preheader.i
  %mb_pred.addr.037.us.i533.i = phi ptr [ %add.ptr.us.i559.i, %for.cond1.for.end_crit_edge.us.i558.i ], [ %arrayidx240.i, %for.cond1.preheader.us.i532.preheader.i ]
  %block_l0.addr.036.us.i534.i = phi ptr [ %add.ptr12.us.i560.i, %for.cond1.for.end_crit_edge.us.i558.i ], [ %250, %for.cond1.preheader.us.i532.preheader.i ]
  %jj.035.us.i535.i = phi i32 [ %inc16.us.i562.i, %for.cond1.for.end_crit_edge.us.i558.i ], [ 0, %for.cond1.preheader.us.i532.preheader.i ]
  %block_l1.addr.034.us.i536.i = phi ptr [ %add.ptr14.us.i561.i, %for.cond1.for.end_crit_edge.us.i558.i ], [ %252, %for.cond1.preheader.us.i532.preheader.i ]
  br i1 %min.iters.check424, label %for.body3.us.i537.i.preheader, label %vector.memcheck415

vector.memcheck415:                               ; preds = %for.cond1.preheader.us.i532.i
  %block_l1.addr.034.us.i536.i419 = ptrtoint ptr %block_l1.addr.034.us.i536.i to i64
  %block_l0.addr.036.us.i534.i417 = ptrtoint ptr %block_l0.addr.036.us.i534.i to i64
  %mb_pred.addr.037.us.i533.i416 = ptrtoint ptr %mb_pred.addr.037.us.i533.i to i64
  %452 = sub i64 %mb_pred.addr.037.us.i533.i416, %block_l0.addr.036.us.i534.i417
  %diff.check418 = icmp ult i64 %452, 64
  %453 = sub i64 %mb_pred.addr.037.us.i533.i416, %block_l1.addr.034.us.i536.i419
  %diff.check420 = icmp ult i64 %453, 64
  %conflict.rdx421 = or i1 %diff.check418, %diff.check420
  br i1 %conflict.rdx421, label %for.body3.us.i537.i.preheader, label %vector.ph425

vector.ph425:                                     ; preds = %vector.memcheck415
  %ind.end428 = getelementptr i8, ptr %mb_pred.addr.037.us.i533.i, i64 %449
  %ind.end430 = getelementptr i8, ptr %block_l0.addr.036.us.i534.i, i64 %450
  %ind.end434 = getelementptr i8, ptr %block_l1.addr.034.us.i536.i, i64 %451
  br label %vector.body436

vector.body436:                                   ; preds = %vector.body436, %vector.ph425
  %index437 = phi i64 [ 0, %vector.ph425 ], [ %index.next473, %vector.body436 ]
  %offset.idx438 = shl i64 %index437, 1
  %next.gep439 = getelementptr i8, ptr %mb_pred.addr.037.us.i533.i, i64 %offset.idx438
  %offset.idx443 = shl i64 %index437, 1
  %next.gep444 = getelementptr i8, ptr %block_l0.addr.036.us.i534.i, i64 %offset.idx443
  %offset.idx448 = shl i64 %index437, 1
  %next.gep449 = getelementptr i8, ptr %block_l1.addr.034.us.i536.i, i64 %offset.idx448
  %454 = getelementptr i8, ptr %next.gep444, i64 16
  %455 = getelementptr i8, ptr %next.gep444, i64 32
  %456 = getelementptr i8, ptr %next.gep444, i64 48
  %wide.load453 = load <8 x i16>, ptr %next.gep444, align 2
  %wide.load454 = load <8 x i16>, ptr %454, align 2
  %wide.load455 = load <8 x i16>, ptr %455, align 2
  %wide.load456 = load <8 x i16>, ptr %456, align 2
  %457 = zext <8 x i16> %wide.load453 to <8 x i32>
  %458 = zext <8 x i16> %wide.load454 to <8 x i32>
  %459 = zext <8 x i16> %wide.load455 to <8 x i32>
  %460 = zext <8 x i16> %wide.load456 to <8 x i32>
  %461 = mul nsw <8 x i32> %broadcast.splat458, %457
  %462 = mul nsw <8 x i32> %broadcast.splat458, %458
  %463 = mul nsw <8 x i32> %broadcast.splat458, %459
  %464 = mul nsw <8 x i32> %broadcast.splat458, %460
  %465 = getelementptr i8, ptr %next.gep449, i64 16
  %466 = getelementptr i8, ptr %next.gep449, i64 32
  %467 = getelementptr i8, ptr %next.gep449, i64 48
  %wide.load459 = load <8 x i16>, ptr %next.gep449, align 2
  %wide.load460 = load <8 x i16>, ptr %465, align 2
  %wide.load461 = load <8 x i16>, ptr %466, align 2
  %wide.load462 = load <8 x i16>, ptr %467, align 2
  %468 = zext <8 x i16> %wide.load459 to <8 x i32>
  %469 = zext <8 x i16> %wide.load460 to <8 x i32>
  %470 = zext <8 x i16> %wide.load461 to <8 x i32>
  %471 = zext <8 x i16> %wide.load462 to <8 x i32>
  %472 = mul nsw <8 x i32> %broadcast.splat464, %468
  %473 = mul nsw <8 x i32> %broadcast.splat464, %469
  %474 = mul nsw <8 x i32> %broadcast.splat464, %470
  %475 = mul nsw <8 x i32> %broadcast.splat464, %471
  %476 = add <8 x i32> %461, %broadcast.splat466
  %477 = add <8 x i32> %462, %broadcast.splat466
  %478 = add <8 x i32> %463, %broadcast.splat466
  %479 = add <8 x i32> %464, %broadcast.splat466
  %480 = add <8 x i32> %476, %472
  %481 = add <8 x i32> %477, %473
  %482 = add <8 x i32> %478, %474
  %483 = add <8 x i32> %479, %475
  %484 = ashr <8 x i32> %480, %broadcast.splat468
  %485 = ashr <8 x i32> %481, %broadcast.splat468
  %486 = ashr <8 x i32> %482, %broadcast.splat468
  %487 = ashr <8 x i32> %483, %broadcast.splat468
  %488 = add nsw <8 x i32> %484, %broadcast.splat470
  %489 = add nsw <8 x i32> %485, %broadcast.splat470
  %490 = add nsw <8 x i32> %486, %broadcast.splat470
  %491 = add nsw <8 x i32> %487, %broadcast.splat470
  %492 = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %488, <8 x i32> zeroinitializer)
  %493 = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %489, <8 x i32> zeroinitializer)
  %494 = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %490, <8 x i32> zeroinitializer)
  %495 = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %491, <8 x i32> zeroinitializer)
  %496 = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %492, <8 x i32> %broadcast.splat472)
  %497 = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %493, <8 x i32> %broadcast.splat472)
  %498 = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %494, <8 x i32> %broadcast.splat472)
  %499 = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %495, <8 x i32> %broadcast.splat472)
  %500 = trunc <8 x i32> %496 to <8 x i16>
  %501 = trunc <8 x i32> %497 to <8 x i16>
  %502 = trunc <8 x i32> %498 to <8 x i16>
  %503 = trunc <8 x i32> %499 to <8 x i16>
  %504 = getelementptr i8, ptr %next.gep439, i64 16
  %505 = getelementptr i8, ptr %next.gep439, i64 32
  %506 = getelementptr i8, ptr %next.gep439, i64 48
  store <8 x i16> %500, ptr %next.gep439, align 2
  store <8 x i16> %501, ptr %504, align 2
  store <8 x i16> %502, ptr %505, align 2
  store <8 x i16> %503, ptr %506, align 2
  %index.next473 = add nuw i64 %index437, 32
  %507 = icmp eq i64 %index.next473, %n.vec427
  br i1 %507, label %middle.block422, label %vector.body436, !llvm.loop !305

middle.block422:                                  ; preds = %vector.body436
  br i1 %cmp.n474, label %for.cond1.for.end_crit_edge.us.i558.i, label %for.body3.us.i537.i.preheader

for.body3.us.i537.i.preheader:                    ; preds = %middle.block422, %vector.memcheck415, %for.cond1.preheader.us.i532.i
  %mb_pred.addr.130.us.i538.i.ph = phi ptr [ %mb_pred.addr.037.us.i533.i, %vector.memcheck415 ], [ %mb_pred.addr.037.us.i533.i, %for.cond1.preheader.us.i532.i ], [ %ind.end428, %middle.block422 ]
  %block_l0.addr.129.us.i539.i.ph = phi ptr [ %block_l0.addr.036.us.i534.i, %vector.memcheck415 ], [ %block_l0.addr.036.us.i534.i, %for.cond1.preheader.us.i532.i ], [ %ind.end430, %middle.block422 ]
  %ii.028.us.i540.i.ph = phi i32 [ 0, %vector.memcheck415 ], [ 0, %for.cond1.preheader.us.i532.i ], [ %ind.end432, %middle.block422 ]
  %block_l1.addr.127.us.i541.i.ph = phi ptr [ %block_l1.addr.034.us.i536.i, %vector.memcheck415 ], [ %block_l1.addr.034.us.i536.i, %for.cond1.preheader.us.i532.i ], [ %ind.end434, %middle.block422 ]
  br label %for.body3.us.i537.i

for.body3.us.i537.i:                              ; preds = %for.body3.us.i537.i.preheader, %for.body3.us.i537.i
  %mb_pred.addr.130.us.i538.i = phi ptr [ %incdec.ptr10.us.i555.i, %for.body3.us.i537.i ], [ %mb_pred.addr.130.us.i538.i.ph, %for.body3.us.i537.i.preheader ]
  %block_l0.addr.129.us.i539.i = phi ptr [ %incdec.ptr.us.i542.i, %for.body3.us.i537.i ], [ %block_l0.addr.129.us.i539.i.ph, %for.body3.us.i537.i.preheader ]
  %ii.028.us.i540.i = phi i32 [ %inc.us.i556.i, %for.body3.us.i537.i ], [ %ii.028.us.i540.i.ph, %for.body3.us.i537.i.preheader ]
  %block_l1.addr.127.us.i541.i = phi ptr [ %incdec.ptr4.us.i545.i, %for.body3.us.i537.i ], [ %block_l1.addr.127.us.i541.i.ph, %for.body3.us.i537.i.preheader ]
  %incdec.ptr.us.i542.i = getelementptr inbounds i8, ptr %block_l0.addr.129.us.i539.i, i64 2
  %508 = load i16, ptr %block_l0.addr.129.us.i539.i, align 2
  %conv.us.i543.i = zext i16 %508 to i32
  %mul.us.i544.i = mul nsw i32 %442, %conv.us.i543.i
  %incdec.ptr4.us.i545.i = getelementptr inbounds i8, ptr %block_l1.addr.127.us.i541.i, i64 2
  %509 = load i16, ptr %block_l1.addr.127.us.i541.i, align 2
  %conv5.us.i546.i = zext i16 %509 to i32
  %mul6.us.i547.i = mul nsw i32 %443, %conv5.us.i546.i
  %add.us.i548.i = add i32 %mul.us.i544.i, %shl.i.i530.i
  %add.i.us.i549.i = add i32 %add.us.i548.i, %mul6.us.i547.i
  %shr.i.us.i550.i = ashr i32 %add.i.us.i549.i, %add177.i
  %add7.us.i551.i = add nsw i32 %shr.i.us.i550.i, %shr234.i
  %cond.i.i.us.i552.i = tail call noundef i32 @llvm.smax.i32(i32 %add7.us.i551.i, i32 0)
  %cond.i4.i.us.i553.i = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i.us.i552.i, i32 %444)
  %conv9.us.i554.i = trunc i32 %cond.i4.i.us.i553.i to i16
  %incdec.ptr10.us.i555.i = getelementptr inbounds i8, ptr %mb_pred.addr.130.us.i538.i, i64 2
  store i16 %conv9.us.i554.i, ptr %mb_pred.addr.130.us.i538.i, align 2
  %inc.us.i556.i = add nuw nsw i32 %ii.028.us.i540.i, 1
  %exitcond.not.i557.i = icmp eq i32 %inc.us.i556.i, %block_size_x_cr.0.i179
  br i1 %exitcond.not.i557.i, label %for.cond1.for.end_crit_edge.us.i558.i, label %for.body3.us.i537.i, !llvm.loop !306

for.cond1.for.end_crit_edge.us.i558.i:            ; preds = %for.body3.us.i537.i, %middle.block422
  %incdec.ptr.us.i542.i.lcssa = phi ptr [ %ind.end430, %middle.block422 ], [ %incdec.ptr.us.i542.i, %for.body3.us.i537.i ]
  %incdec.ptr4.us.i545.i.lcssa = phi ptr [ %ind.end434, %middle.block422 ], [ %incdec.ptr4.us.i545.i, %for.body3.us.i537.i ]
  %incdec.ptr10.us.i555.i.lcssa = phi ptr [ %ind.end428, %middle.block422 ], [ %incdec.ptr10.us.i555.i, %for.body3.us.i537.i ]
  %add.ptr.us.i559.i = getelementptr inbounds i16, ptr %incdec.ptr10.us.i555.i.lcssa, i64 %idx.ext.i531.i
  %add.ptr12.us.i560.i = getelementptr inbounds i16, ptr %incdec.ptr.us.i542.i.lcssa, i64 %idx.ext.i531.i
  %add.ptr14.us.i561.i = getelementptr inbounds i16, ptr %incdec.ptr4.us.i545.i.lcssa, i64 %idx.ext.i531.i
  %inc16.us.i562.i = add nuw nsw i32 %jj.035.us.i535.i, 1
  %exitcond39.not.i563.i = icmp eq i32 %inc16.us.i562.i, %block_size_y_cr.0.i182
  br i1 %exitcond39.not.i563.i, label %if.end7, label %for.cond1.preheader.us.i532.i

if.else5:                                         ; preds = %if.else2
  %block_y_aff2.i = getelementptr inbounds i8, ptr %currMB, i64 40
  %510 = load i32, ptr %block_y_aff2.i, align 8
  %block_x.i206 = getelementptr inbounds i8, ptr %currMB, i64 32
  %511 = load i32, ptr %block_x.i206, align 8
  %add.i207 = add nsw i32 %511, %i
  %block_y.i208 = getelementptr inbounds i8, ptr %currMB, i64 36
  %512 = load i32, ptr %block_y.i208, align 4
  %add3.i = add nsw i32 %512, %j
  %shl.i209 = shl i32 %i, 2
  %shl4.i = shl i32 %j, 2
  %chroma_format_idc5.i = getelementptr inbounds i8, ptr %dec_picture, i64 268
  %513 = load i32, ptr %chroma_format_idc5.i, align 4
  %mv_info6.i = getelementptr inbounds i8, ptr %dec_picture, i64 152
  %514 = load ptr, ptr %mv_info6.i, align 8
  %idxprom.i210 = sext i32 %add3.i to i64
  %arrayidx.i211 = getelementptr inbounds ptr, ptr %514, i64 %idxprom.i210
  %515 = load ptr, ptr %arrayidx.i211, align 8
  %idxprom7.i = sext i32 %add.i207 to i64
  %arrayidx8.i = getelementptr inbounds %struct.pic_motion_params, ptr %515, i64 %idxprom7.i
  %mv.i212 = getelementptr inbounds i8, ptr %arrayidx8.i, i64 16
  %arrayidx11.i = getelementptr inbounds i8, ptr %arrayidx8.i, i64 20
  %ref_idx.i213 = getelementptr inbounds i8, ptr %arrayidx8.i, i64 24
  %516 = load i8, ptr %ref_idx.i213, align 8
  %arrayidx14.i = getelementptr inbounds i8, ptr %arrayidx8.i, i64 25
  %517 = load i8, ptr %arrayidx14.i, align 1
  %list_offset16.i214 = getelementptr inbounds i8, ptr %currMB, i64 114
  %518 = load i16, ptr %list_offset16.i214, align 2
  %conv17.i215 = sext i16 %518 to i64
  %mb_field.i216 = getelementptr inbounds i8, ptr %currMB, i64 384
  %519 = load i32, ptr %mb_field.i216, align 8
  %tobool.not.i217 = icmp eq i32 %519, 0
  br i1 %tobool.not.i217, label %cond.false.i288, label %cond.true.i218

cond.true.i218:                                   ; preds = %if.else5
  %size_y.i219 = getelementptr inbounds i8, ptr %dec_picture, i64 68
  %520 = load i32, ptr %size_y.i219, align 4
  %shr.i220 = ashr i32 %520, 1
  %sub.i221 = add nsw i32 %shr.i220, -1
  br label %cond.end.i222

cond.false.i288:                                  ; preds = %if.else5
  %size_y_m1.i289 = getelementptr inbounds i8, ptr %dec_picture, i64 84
  %521 = load i32, ptr %size_y_m1.i289, align 4
  br label %cond.end.i222

cond.end.i222:                                    ; preds = %cond.false.i288, %cond.true.i218
  %cond.i223 = phi i32 [ %sub.i221, %cond.true.i218 ], [ %521, %cond.false.i288 ]
  %iLumaPadY.i224 = getelementptr inbounds i8, ptr %1, i64 856844
  %522 = load i32, ptr %iLumaPadY.i224, align 4
  %reass.sub296 = sub i32 %cond.i223, %block_size_y
  %sub19.i = add i32 %reass.sub296, -2
  %sub20.i = add i32 %sub19.i, %522
  %sub21.i = sub nsw i32 2, %522
  %sub22.i = add nsw i32 %522, -4
  %cmp.i226 = icmp slt i32 %sub22.i, %block_size_y
  %listX.i227 = getelementptr inbounds i8, ptr %0, i64 264
  %arrayidx26.i = getelementptr inbounds [6 x ptr], ptr %listX.i227, i64 0, i64 %conv17.i215
  %523 = load ptr, ptr %arrayidx26.i, align 8
  %idxprom27.i = sext i8 %516 to i64
  %arrayidx28.i = getelementptr inbounds ptr, ptr %523, i64 %idxprom27.i
  %524 = load ptr, ptr %arrayidx28.i, align 8
  %add30.i228 = add nsw i64 %conv17.i215, 1
  %arrayidx32.i = getelementptr inbounds [6 x ptr], ptr %listX.i227, i64 0, i64 %add30.i228
  %525 = load ptr, ptr %arrayidx32.i, align 8
  %idxprom33.i = sext i8 %517 to i64
  %arrayidx34.i = getelementptr inbounds ptr, ptr %525, i64 %idxprom33.i
  %526 = load ptr, ptr %arrayidx34.i, align 8
  %tmp_block_l035.i = getelementptr inbounds i8, ptr %0, i64 1352
  %527 = load ptr, ptr %tmp_block_l035.i, align 8
  %528 = load ptr, ptr %527, align 8
  %tmp_block_l138.i = getelementptr inbounds i8, ptr %0, i64 1360
  %529 = load ptr, ptr %tmp_block_l138.i, align 8
  %530 = load ptr, ptr %529, align 8
  %tmp_block_l241.i = getelementptr inbounds i8, ptr %0, i64 1376
  %531 = load ptr, ptr %tmp_block_l241.i, align 8
  %532 = load ptr, ptr %531, align 8
  %tmp_block_l344.i = getelementptr inbounds i8, ptr %0, i64 1384
  %533 = load ptr, ptr %tmp_block_l344.i, align 8
  %534 = load ptr, ptr %533, align 8
  %size_x_m1.i229 = getelementptr inbounds i8, ptr %dec_picture, i64 80
  %535 = load i32, ptr %size_x_m1.i229, align 8
  %iLumaStride.i230 = getelementptr inbounds i8, ptr %dec_picture, i64 356
  %536 = load i32, ptr %iLumaStride.i230, align 4
  %tmp_res47.i = getelementptr inbounds i8, ptr %0, i64 1368
  %537 = load ptr, ptr %tmp_res47.i, align 8
  %max_pel_value_comp.i231 = getelementptr inbounds i8, ptr %1, i64 849072
  %idxprom48.i = zext i32 %pl to i64
  %arrayidx49.i = getelementptr inbounds [3 x i32], ptr %max_pel_value_comp.i231, i64 0, i64 %idxprom48.i
  %538 = load i32, ptr %arrayidx49.i, align 4
  %dc_pred_value_comp.i232 = getelementptr inbounds i8, ptr %1, i64 849060
  %arrayidx51.i = getelementptr inbounds [3 x i32], ptr %dc_pred_value_comp.i232, i64 0, i64 %idxprom48.i
  %539 = load i32, ptr %arrayidx51.i, align 4
  %conv52.i = trunc i32 %539 to i16
  %540 = load i16, ptr %mv.i212, align 2
  %541 = add i16 %540, -8192
  %or.cond.i.i233 = icmp ult i16 %541, -16384
  br i1 %or.cond.i.i233, label %if.then.i.i283, label %if.end.i.i234

if.then.i.i283:                                   ; preds = %cond.end.i222
  %542 = load ptr, ptr @stderr, align 8
  %conv7.i.i284 = sext i16 %540 to i32
  %543 = load ptr, ptr %0, align 8
  %number.i.i285 = getelementptr inbounds i8, ptr %543, i64 848712
  %544 = load i32, ptr %number.i.i285, align 8
  %current_mb_nr.i.i286 = getelementptr inbounds i8, ptr %0, i64 108
  %545 = load i32, ptr %current_mb_nr.i.i286, align 4
  %call.i.i287 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %542, ptr noundef nonnull @.str.1, i32 noundef %conv7.i.i284, i32 noundef %544, i32 noundef %545) #11
  br label %if.end.i.i234

if.end.i.i234:                                    ; preds = %if.then.i.i283, %cond.end.i222
  %mv_y.i.i235 = getelementptr inbounds i8, ptr %arrayidx8.i, i64 18
  %546 = load i16, ptr %mv_y.i.i235, align 2
  %conv8.i.i236 = sext i16 %546 to i32
  %max_mb_vmv_r.i.i237 = getelementptr inbounds i8, ptr %0, i64 13336
  %547 = load i32, ptr %max_mb_vmv_r.i.i237, align 8
  %cmp9.not.i.i238 = icmp sle i32 %547, %conv8.i.i236
  %sub15.i.i239 = sub nsw i32 0, %547
  %cmp16.i.i240 = icmp slt i32 %conv8.i.i236, %sub15.i.i239
  %or.cond42.i.i241 = select i1 %cmp9.not.i.i238, i1 true, i1 %cmp16.i.i240
  br i1 %or.cond42.i.i241, label %if.then18.i.i278, label %check_motion_vector_range.exit.i242

if.then18.i.i278:                                 ; preds = %if.end.i.i234
  %548 = load ptr, ptr @stderr, align 8
  %sub24.i.i279 = add nsw i32 %547, -1
  %549 = load ptr, ptr %0, align 8
  %number26.i.i280 = getelementptr inbounds i8, ptr %549, i64 848712
  %550 = load i32, ptr %number26.i.i280, align 8
  %current_mb_nr27.i.i281 = getelementptr inbounds i8, ptr %0, i64 108
  %551 = load i32, ptr %current_mb_nr27.i.i281, align 4
  %call28.i.i282 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %548, ptr noundef nonnull @.str.2, i32 noundef %conv8.i.i236, i32 noundef %sub15.i.i239, i32 noundef %sub24.i.i279, i32 noundef %550, i32 noundef %551) #11
  br label %check_motion_vector_range.exit.i242

check_motion_vector_range.exit.i242:              ; preds = %if.then18.i.i278, %if.end.i.i234
  %552 = load i16, ptr %arrayidx11.i, align 2
  %553 = add i16 %552, -8192
  %or.cond.i336.i = icmp ult i16 %553, -16384
  br i1 %or.cond.i336.i, label %if.then.i350.i, label %if.end.i337.i

if.then.i350.i:                                   ; preds = %check_motion_vector_range.exit.i242
  %554 = load ptr, ptr @stderr, align 8
  %conv7.i351.i = sext i16 %552 to i32
  %555 = load ptr, ptr %0, align 8
  %number.i352.i = getelementptr inbounds i8, ptr %555, i64 848712
  %556 = load i32, ptr %number.i352.i, align 8
  %current_mb_nr.i353.i = getelementptr inbounds i8, ptr %0, i64 108
  %557 = load i32, ptr %current_mb_nr.i353.i, align 4
  %call.i354.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %554, ptr noundef nonnull @.str.1, i32 noundef %conv7.i351.i, i32 noundef %556, i32 noundef %557) #11
  br label %if.end.i337.i

if.end.i337.i:                                    ; preds = %if.then.i350.i, %check_motion_vector_range.exit.i242
  %mv_y.i338.i = getelementptr inbounds i8, ptr %arrayidx8.i, i64 22
  %558 = load i16, ptr %mv_y.i338.i, align 2
  %conv8.i339.i = sext i16 %558 to i32
  %559 = load i32, ptr %max_mb_vmv_r.i.i237, align 8
  %cmp9.not.i341.i = icmp sle i32 %559, %conv8.i339.i
  %sub15.i342.i = sub nsw i32 0, %559
  %cmp16.i343.i = icmp slt i32 %conv8.i339.i, %sub15.i342.i
  %or.cond42.i344.i = select i1 %cmp9.not.i341.i, i1 true, i1 %cmp16.i343.i
  br i1 %or.cond42.i344.i, label %if.then18.i345.i, label %check_motion_vector_range.exit355.i

if.then18.i345.i:                                 ; preds = %if.end.i337.i
  %560 = load ptr, ptr @stderr, align 8
  %sub24.i346.i = add nsw i32 %559, -1
  %561 = load ptr, ptr %0, align 8
  %number26.i347.i = getelementptr inbounds i8, ptr %561, i64 848712
  %562 = load i32, ptr %number26.i347.i, align 8
  %current_mb_nr27.i348.i = getelementptr inbounds i8, ptr %0, i64 108
  %563 = load i32, ptr %current_mb_nr27.i348.i, align 4
  %call28.i349.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %560, ptr noundef nonnull @.str.2, i32 noundef %conv8.i339.i, i32 noundef %sub15.i342.i, i32 noundef %sub24.i346.i, i32 noundef %562, i32 noundef %563) #11
  %.pre.i277 = load i16, ptr %mv_y.i338.i, align 2
  %.pre473.i = sext i16 %.pre.i277 to i32
  br label %check_motion_vector_range.exit355.i

check_motion_vector_range.exit355.i:              ; preds = %if.then18.i345.i, %if.end.i337.i
  %conv66.pre-phi.i = phi i32 [ %conv8.i339.i, %if.end.i337.i ], [ %.pre473.i, %if.then18.i345.i ]
  %mul.i243 = shl nsw i32 %add.i207, 4
  %564 = load i16, ptr %mv.i212, align 2
  %conv53.i = sext i16 %564 to i32
  %add54.i = add nsw i32 %mul.i243, %conv53.i
  %565 = load i16, ptr %arrayidx11.i, align 2
  %conv57.i = sext i16 %565 to i32
  %add58.i = add nsw i32 %mul.i243, %conv57.i
  %add59.i = add nsw i32 %510, %j
  %mul60.i = shl nsw i32 %add59.i, 4
  %566 = load i16, ptr %mv_y.i.i235, align 2
  %conv61.i = sext i16 %566 to i32
  %add62.i = add nsw i32 %mul60.i, %conv61.i
  %add67.i = add nsw i32 %conv66.pre-phi.i, %mul60.i
  br i1 %cmp.i226, label %land.lhs.true.i271, label %if.end.i244

land.lhs.true.i271:                               ; preds = %check_motion_vector_range.exit355.i
  %shr.i.i272 = ashr i32 %add62.i, 2
  %cmp.i.i273 = icmp sge i32 %shr.i.i272, %sub21.i
  %cmp1.i.i274 = icmp sle i32 %shr.i.i272, %sub20.i
  %or.cond.i356.not.i = and i1 %cmp.i.i273, %cmp1.i.i274
  br i1 %or.cond.i356.not.i, label %if.end.thread452.i, label %if.end.thread.i275

if.end.thread452.i:                               ; preds = %land.lhs.true.i271
  tail call void @get_block_luma(ptr noundef %524, i32 noundef %add54.i, i32 noundef %add62.i, i32 noundef %block_size_x, i32 noundef %block_size_y, ptr noundef nonnull %527, i32 noundef %536, i32 noundef %535, i32 noundef %cond.i223, ptr noundef %537, i32 noundef %538, i16 noundef zeroext %conv52.i, ptr noundef nonnull readonly %currMB)
  br label %land.lhs.true73.i

if.end.thread.i275:                               ; preds = %land.lhs.true.i271
  tail call void @get_block_luma(ptr noundef %524, i32 noundef %add54.i, i32 noundef %add62.i, i32 noundef %block_size_x, i32 noundef 8, ptr noundef nonnull %527, i32 noundef %536, i32 noundef %535, i32 noundef %cond.i223, ptr noundef %537, i32 noundef %538, i16 noundef zeroext %conv52.i, ptr noundef nonnull readonly %currMB)
  %add70.i = add nsw i32 %add62.i, 32
  %sub71.i = add nsw i32 %block_size_y, -8
  %add.ptr.i276 = getelementptr inbounds i8, ptr %527, i64 64
  tail call void @get_block_luma(ptr noundef %524, i32 noundef %add54.i, i32 noundef %add70.i, i32 noundef %block_size_x, i32 noundef %sub71.i, ptr noundef nonnull %add.ptr.i276, i32 noundef %536, i32 noundef %535, i32 noundef %cond.i223, ptr noundef %537, i32 noundef %538, i16 noundef zeroext %conv52.i, ptr noundef nonnull readonly %currMB)
  br label %land.lhs.true73.i

if.end.i244:                                      ; preds = %check_motion_vector_range.exit355.i
  tail call void @get_block_luma(ptr noundef %524, i32 noundef %add54.i, i32 noundef %add62.i, i32 noundef %block_size_x, i32 noundef %block_size_y, ptr noundef nonnull %527, i32 noundef %536, i32 noundef %535, i32 noundef %cond.i223, ptr noundef %537, i32 noundef %538, i16 noundef zeroext %conv52.i, ptr noundef nonnull readonly %currMB)
  br label %if.else80.i

land.lhs.true73.i:                                ; preds = %if.end.thread.i275, %if.end.thread452.i
  %shr.i357.i = ashr i32 %add67.i, 2
  %cmp.i358.i = icmp sge i32 %shr.i357.i, %sub21.i
  %cmp1.i359.i = icmp sle i32 %shr.i357.i, %sub20.i
  %or.cond.i360.not.i = and i1 %cmp.i358.i, %cmp1.i359.i
  br i1 %or.cond.i360.not.i, label %if.else80.i, label %if.then76.i

if.then76.i:                                      ; preds = %land.lhs.true73.i
  tail call void @get_block_luma(ptr noundef %526, i32 noundef %add58.i, i32 noundef %add67.i, i32 noundef %block_size_x, i32 noundef 8, ptr noundef nonnull %529, i32 noundef %536, i32 noundef %535, i32 noundef %cond.i223, ptr noundef %537, i32 noundef %538, i16 noundef zeroext %conv52.i, ptr noundef nonnull readonly %currMB)
  %add77.i = add nsw i32 %add67.i, 32
  %sub78.i = add nsw i32 %block_size_y, -8
  %add.ptr79.i = getelementptr inbounds i8, ptr %529, i64 64
  tail call void @get_block_luma(ptr noundef %526, i32 noundef %add58.i, i32 noundef %add77.i, i32 noundef %block_size_x, i32 noundef %sub78.i, ptr noundef nonnull %add.ptr79.i, i32 noundef %536, i32 noundef %535, i32 noundef %cond.i223, ptr noundef %537, i32 noundef %538, i16 noundef zeroext %conv52.i, ptr noundef nonnull readonly %currMB)
  br label %if.end81.i

if.else80.i:                                      ; preds = %land.lhs.true73.i, %if.end.i244
  tail call void @get_block_luma(ptr noundef %526, i32 noundef %add58.i, i32 noundef %add67.i, i32 noundef %block_size_x, i32 noundef %block_size_y, ptr noundef nonnull %529, i32 noundef %536, i32 noundef %535, i32 noundef %cond.i223, ptr noundef %537, i32 noundef %538, i16 noundef zeroext %conv52.i, ptr noundef nonnull readonly %currMB)
  br label %if.end81.i

if.end81.i:                                       ; preds = %if.else80.i, %if.then76.i
  %mb_pred.i245 = getelementptr inbounds i8, ptr %0, i64 1248
  %567 = load ptr, ptr %mb_pred.i245, align 8
  %arrayidx83.i = getelementptr inbounds ptr, ptr %567, i64 %idxprom48.i
  %568 = load ptr, ptr %arrayidx83.i, align 8
  %idxprom84.i = sext i32 %shl4.i to i64
  %arrayidx85.i = getelementptr inbounds ptr, ptr %568, i64 %idxprom84.i
  %arrayidx85.val.i = load ptr, ptr %arrayidx85.i, align 8
  %.val334.i = load ptr, ptr %527, align 8
  %.val335.i = load ptr, ptr %529, align 8
  %cmp8.i.i246 = icmp sgt i32 %block_size_y, 0
  br i1 %cmp8.i.i246, label %for.cond4.preheader.lr.ph.i.i, label %bi_prediction.exit.i

for.cond4.preheader.lr.ph.i.i:                    ; preds = %if.end81.i
  %sub.i.i263 = sub nsw i32 16, %block_size_x
  %cmp51.i.i = icmp sgt i32 %block_size_x, 0
  %idx.ext.i.i264 = sext i32 %sub.i.i263 to i64
  br i1 %cmp51.i.i, label %for.cond4.preheader.us.preheader.i.i, label %bi_prediction.exit.i

for.cond4.preheader.us.preheader.i.i:             ; preds = %for.cond4.preheader.lr.ph.i.i
  %idxprom.i.i = sext i32 %shl.i209 to i64
  %arrayidx1.i.i = getelementptr inbounds i16, ptr %arrayidx85.val.i, i64 %idxprom.i.i
  %569 = add nsw i32 %block_size_x, -1
  %570 = lshr i32 %569, 1
  %571 = zext nneg i32 %570 to i64
  %572 = shl nuw nsw i64 %571, 2
  %573 = add nuw nsw i64 %572, 4
  %574 = lshr i32 %569, 1
  %narrow = add nuw i32 %574, 1
  %575 = zext i32 %narrow to i64
  %min.iters.check484 = icmp ult i32 %block_size_x, 31
  %n.vec487 = and i64 %575, 4294967280
  %576 = shl nuw nsw i64 %n.vec487, 2
  %.cast = trunc nuw i64 %n.vec487 to i32
  %ind.end490 = shl i32 %.cast, 1
  %577 = shl nuw nsw i64 %n.vec487, 2
  %578 = shl nuw nsw i64 %n.vec487, 2
  %cmp.n539 = icmp eq i64 %n.vec487, %575
  br label %for.cond4.preheader.us.i.i

for.cond4.preheader.us.i.i:                       ; preds = %for.cond4.for.end_crit_edge.us.i.i, %for.cond4.preheader.us.preheader.i.i
  %mpr.012.us.i.i = phi ptr [ %add.ptr.us.i.i268, %for.cond4.for.end_crit_edge.us.i.i ], [ %arrayidx1.i.i, %for.cond4.preheader.us.preheader.i.i ]
  %jj.011.us.i.i = phi i32 [ %inc.us.i.i269, %for.cond4.for.end_crit_edge.us.i.i ], [ 0, %for.cond4.preheader.us.preheader.i.i ]
  %b1.010.us.i.i = phi ptr [ %add.ptr25.us.i.i, %for.cond4.for.end_crit_edge.us.i.i ], [ %.val335.i, %for.cond4.preheader.us.preheader.i.i ]
  %b0.09.us.i.i = phi ptr [ %add.ptr23.us.i.i, %for.cond4.for.end_crit_edge.us.i.i ], [ %.val334.i, %for.cond4.preheader.us.preheader.i.i ]
  br i1 %min.iters.check484, label %for.body6.us.i.i.preheader, label %vector.memcheck475

vector.memcheck475:                               ; preds = %for.cond4.preheader.us.i.i
  %scevgep = getelementptr i8, ptr %mpr.012.us.i.i, i64 %573
  %scevgep476 = getelementptr i8, ptr %b0.09.us.i.i, i64 %573
  %scevgep477 = getelementptr i8, ptr %b1.010.us.i.i, i64 %573
  %bound0 = icmp ult ptr %mpr.012.us.i.i, %scevgep476
  %bound1 = icmp ult ptr %b0.09.us.i.i, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0478 = icmp ult ptr %mpr.012.us.i.i, %scevgep477
  %bound1479 = icmp ult ptr %b1.010.us.i.i, %scevgep
  %found.conflict480 = and i1 %bound0478, %bound1479
  %conflict.rdx481 = or i1 %found.conflict, %found.conflict480
  br i1 %conflict.rdx481, label %for.body6.us.i.i.preheader, label %vector.ph485

vector.ph485:                                     ; preds = %vector.memcheck475
  %ind.end488 = getelementptr i8, ptr %mpr.012.us.i.i, i64 %576
  %ind.end492 = getelementptr i8, ptr %b1.010.us.i.i, i64 %577
  %ind.end494 = getelementptr i8, ptr %b0.09.us.i.i, i64 %578
  br label %vector.body496

vector.body496:                                   ; preds = %vector.body496, %vector.ph485
  %index497 = phi i64 [ 0, %vector.ph485 ], [ %index.next538, %vector.body496 ]
  %offset.idx498 = shl i64 %index497, 2
  %579 = or disjoint i64 %offset.idx498, 16
  %580 = or disjoint i64 %offset.idx498, 32
  %581 = or disjoint i64 %offset.idx498, 48
  %next.gep499 = getelementptr i8, ptr %mpr.012.us.i.i, i64 %offset.idx498
  %next.gep500 = getelementptr i8, ptr %mpr.012.us.i.i, i64 %579
  %next.gep501 = getelementptr i8, ptr %mpr.012.us.i.i, i64 %580
  %next.gep502 = getelementptr i8, ptr %mpr.012.us.i.i, i64 %581
  %offset.idx503 = shl i64 %index497, 2
  %582 = or disjoint i64 %offset.idx503, 16
  %583 = or disjoint i64 %offset.idx503, 32
  %584 = or disjoint i64 %offset.idx503, 48
  %next.gep504 = getelementptr i8, ptr %b1.010.us.i.i, i64 %offset.idx503
  %next.gep505 = getelementptr i8, ptr %b1.010.us.i.i, i64 %582
  %next.gep506 = getelementptr i8, ptr %b1.010.us.i.i, i64 %583
  %next.gep507 = getelementptr i8, ptr %b1.010.us.i.i, i64 %584
  %offset.idx508 = shl i64 %index497, 2
  %585 = or disjoint i64 %offset.idx508, 16
  %586 = or disjoint i64 %offset.idx508, 32
  %587 = or disjoint i64 %offset.idx508, 48
  %next.gep509 = getelementptr i8, ptr %b0.09.us.i.i, i64 %offset.idx508
  %next.gep510 = getelementptr i8, ptr %b0.09.us.i.i, i64 %585
  %next.gep511 = getelementptr i8, ptr %b0.09.us.i.i, i64 %586
  %next.gep512 = getelementptr i8, ptr %b0.09.us.i.i, i64 %587
  %wide.vec = load <8 x i16>, ptr %next.gep509, align 2
  %wide.vec513 = load <8 x i16>, ptr %next.gep510, align 2
  %wide.vec514 = load <8 x i16>, ptr %next.gep511, align 2
  %wide.vec515 = load <8 x i16>, ptr %next.gep512, align 2
  %wide.vec523 = load <8 x i16>, ptr %next.gep504, align 2
  %wide.vec524 = load <8 x i16>, ptr %next.gep505, align 2
  %wide.vec525 = load <8 x i16>, ptr %next.gep506, align 2
  %wide.vec526 = load <8 x i16>, ptr %next.gep507, align 2
  %588 = zext <8 x i16> %wide.vec to <8 x i32>
  %589 = add nuw nsw <8 x i32> %588, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %590 = zext <8 x i16> %wide.vec523 to <8 x i32>
  %591 = add nuw nsw <8 x i32> %589, %590
  %592 = lshr <8 x i32> %591, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %interleaved.vec = trunc <8 x i32> %592 to <8 x i16>
  store <8 x i16> %interleaved.vec, ptr %next.gep499, align 2
  %593 = zext <8 x i16> %wide.vec513 to <8 x i32>
  %594 = add nuw nsw <8 x i32> %593, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %595 = zext <8 x i16> %wide.vec524 to <8 x i32>
  %596 = add nuw nsw <8 x i32> %594, %595
  %597 = lshr <8 x i32> %596, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %interleaved.vec535 = trunc <8 x i32> %597 to <8 x i16>
  store <8 x i16> %interleaved.vec535, ptr %next.gep500, align 2
  %598 = zext <8 x i16> %wide.vec514 to <8 x i32>
  %599 = add nuw nsw <8 x i32> %598, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %600 = zext <8 x i16> %wide.vec525 to <8 x i32>
  %601 = add nuw nsw <8 x i32> %599, %600
  %602 = lshr <8 x i32> %601, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %interleaved.vec536 = trunc <8 x i32> %602 to <8 x i16>
  store <8 x i16> %interleaved.vec536, ptr %next.gep501, align 2
  %603 = zext <8 x i16> %wide.vec515 to <8 x i32>
  %604 = add nuw nsw <8 x i32> %603, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %605 = zext <8 x i16> %wide.vec526 to <8 x i32>
  %606 = add nuw nsw <8 x i32> %604, %605
  %607 = lshr <8 x i32> %606, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %interleaved.vec537 = trunc <8 x i32> %607 to <8 x i16>
  store <8 x i16> %interleaved.vec537, ptr %next.gep502, align 2
  %index.next538 = add nuw i64 %index497, 16
  %608 = icmp eq i64 %index.next538, %n.vec487
  br i1 %608, label %middle.block482, label %vector.body496, !llvm.loop !307

middle.block482:                                  ; preds = %vector.body496
  br i1 %cmp.n539, label %for.cond4.for.end_crit_edge.us.i.i, label %for.body6.us.i.i.preheader

for.body6.us.i.i.preheader:                       ; preds = %middle.block482, %vector.memcheck475, %for.cond4.preheader.us.i.i
  %mpr.15.us.i.i.ph = phi ptr [ %mpr.012.us.i.i, %vector.memcheck475 ], [ %mpr.012.us.i.i, %for.cond4.preheader.us.i.i ], [ %ind.end488, %middle.block482 ]
  %ii.04.us.i.i.ph = phi i32 [ 0, %vector.memcheck475 ], [ 0, %for.cond4.preheader.us.i.i ], [ %ind.end490, %middle.block482 ]
  %b1.13.us.i.i.ph = phi ptr [ %b1.010.us.i.i, %vector.memcheck475 ], [ %b1.010.us.i.i, %for.cond4.preheader.us.i.i ], [ %ind.end492, %middle.block482 ]
  %b0.12.us.i.i.ph = phi ptr [ %b0.09.us.i.i, %vector.memcheck475 ], [ %b0.09.us.i.i, %for.cond4.preheader.us.i.i ], [ %ind.end494, %middle.block482 ]
  br label %for.body6.us.i.i

for.body6.us.i.i:                                 ; preds = %for.body6.us.i.i.preheader, %for.body6.us.i.i
  %mpr.15.us.i.i = phi ptr [ %incdec.ptr20.us.i.i, %for.body6.us.i.i ], [ %mpr.15.us.i.i.ph, %for.body6.us.i.i.preheader ]
  %ii.04.us.i.i = phi i32 [ %add21.us.i.i, %for.body6.us.i.i ], [ %ii.04.us.i.i.ph, %for.body6.us.i.i.preheader ]
  %b1.13.us.i.i = phi ptr [ %incdec.ptr14.us.i.i, %for.body6.us.i.i ], [ %b1.13.us.i.i.ph, %for.body6.us.i.i.preheader ]
  %b0.12.us.i.i = phi ptr [ %incdec.ptr12.us.i.i, %for.body6.us.i.i ], [ %b0.12.us.i.i.ph, %for.body6.us.i.i.preheader ]
  %incdec.ptr.us.i.i265 = getelementptr inbounds i8, ptr %b0.12.us.i.i, i64 2
  %609 = load i16, ptr %b0.12.us.i.i, align 2
  %conv.us.i.i266 = zext i16 %609 to i32
  %incdec.ptr7.us.i.i = getelementptr inbounds i8, ptr %b1.13.us.i.i, i64 2
  %610 = load i16, ptr %b1.13.us.i.i, align 2
  %conv8.us.i.i = zext i16 %610 to i32
  %add.us.i.i267 = add nuw nsw i32 %conv.us.i.i266, 1
  %add9.us.i.i = add nuw nsw i32 %add.us.i.i267, %conv8.us.i.i
  %shr.us.i.i = lshr i32 %add9.us.i.i, 1
  %conv10.us.i.i = trunc nuw i32 %shr.us.i.i to i16
  %incdec.ptr11.us.i.i = getelementptr inbounds i8, ptr %mpr.15.us.i.i, i64 2
  store i16 %conv10.us.i.i, ptr %mpr.15.us.i.i, align 2
  %incdec.ptr12.us.i.i = getelementptr inbounds i8, ptr %b0.12.us.i.i, i64 4
  %611 = load i16, ptr %incdec.ptr.us.i.i265, align 2
  %conv13.us.i.i = zext i16 %611 to i32
  %incdec.ptr14.us.i.i = getelementptr inbounds i8, ptr %b1.13.us.i.i, i64 4
  %612 = load i16, ptr %incdec.ptr7.us.i.i, align 2
  %conv15.us.i.i = zext i16 %612 to i32
  %add16.us.i.i = add nuw nsw i32 %conv13.us.i.i, 1
  %add17.us.i.i = add nuw nsw i32 %add16.us.i.i, %conv15.us.i.i
  %shr18.us.i.i = lshr i32 %add17.us.i.i, 1
  %conv19.us.i.i = trunc nuw i32 %shr18.us.i.i to i16
  %incdec.ptr20.us.i.i = getelementptr inbounds i8, ptr %mpr.15.us.i.i, i64 4
  store i16 %conv19.us.i.i, ptr %incdec.ptr11.us.i.i, align 2
  %add21.us.i.i = add nuw nsw i32 %ii.04.us.i.i, 2
  %cmp5.us.i.i = icmp slt i32 %add21.us.i.i, %block_size_x
  br i1 %cmp5.us.i.i, label %for.body6.us.i.i, label %for.cond4.for.end_crit_edge.us.i.i, !llvm.loop !308

for.cond4.for.end_crit_edge.us.i.i:               ; preds = %for.body6.us.i.i, %middle.block482
  %incdec.ptr12.us.i.i.lcssa = phi ptr [ %ind.end494, %middle.block482 ], [ %incdec.ptr12.us.i.i, %for.body6.us.i.i ]
  %incdec.ptr14.us.i.i.lcssa = phi ptr [ %ind.end492, %middle.block482 ], [ %incdec.ptr14.us.i.i, %for.body6.us.i.i ]
  %incdec.ptr20.us.i.i.lcssa = phi ptr [ %ind.end488, %middle.block482 ], [ %incdec.ptr20.us.i.i, %for.body6.us.i.i ]
  %add.ptr.us.i.i268 = getelementptr inbounds i16, ptr %incdec.ptr20.us.i.i.lcssa, i64 %idx.ext.i.i264
  %add.ptr23.us.i.i = getelementptr inbounds i16, ptr %incdec.ptr12.us.i.i.lcssa, i64 %idx.ext.i.i264
  %add.ptr25.us.i.i = getelementptr inbounds i16, ptr %incdec.ptr14.us.i.i.lcssa, i64 %idx.ext.i.i264
  %inc.us.i.i269 = add nuw nsw i32 %jj.011.us.i.i, 1
  %exitcond.not.i.i270 = icmp eq i32 %inc.us.i.i269, %block_size_y
  br i1 %exitcond.not.i.i270, label %bi_prediction.exit.i, label %for.cond4.preheader.us.i.i

bi_prediction.exit.i:                             ; preds = %for.cond4.for.end_crit_edge.us.i.i, %for.cond4.preheader.lr.ph.i.i, %if.end81.i
  switch i32 %513, label %if.then91.i [
    i32 3, label %if.end7
    i32 0, label %if.end7
  ]

if.then91.i:                                      ; preds = %bi_prediction.exit.i
  %active_sps.i = getelementptr inbounds i8, ptr %1, i64 16
  %613 = load ptr, ptr %active_sps.i, align 8
  %chroma_format_idc93.i = getelementptr inbounds i8, ptr %613, i64 36
  %614 = load i32, ptr %chroma_format_idc93.i, align 4
  %size_x_cr_m1.i247 = getelementptr inbounds i8, ptr %dec_picture, i64 88
  %615 = load i32, ptr %size_x_cr_m1.i247, align 8
  %616 = load i32, ptr %mb_field.i216, align 8
  %tobool97.not.i = icmp eq i32 %616, 0
  br i1 %tobool97.not.i, label %cond.false101.i, label %cond.true98.i

cond.true98.i:                                    ; preds = %if.then91.i
  %size_y_cr.i248 = getelementptr inbounds i8, ptr %dec_picture, i64 76
  %617 = load i32, ptr %size_y_cr.i248, align 4
  %shr99.i = ashr i32 %617, 1
  %sub100.i = add nsw i32 %shr99.i, -1
  br label %cond.end102.i

cond.false101.i:                                  ; preds = %if.then91.i
  %size_y_cr_m1.i262 = getelementptr inbounds i8, ptr %dec_picture, i64 92
  %618 = load i32, ptr %size_y_cr_m1.i262, align 4
  br label %cond.end102.i

cond.end102.i:                                    ; preds = %cond.false101.i, %cond.true98.i
  %cond103.i = phi i32 [ %sub100.i, %cond.true98.i ], [ %618, %cond.false101.i ]
  %shiftpel_x104.i = getelementptr inbounds i8, ptr %1, i64 849204
  %619 = load i32, ptr %shiftpel_x104.i, align 4
  %shiftpel_y105.i = getelementptr inbounds i8, ptr %1, i64 849208
  %620 = load i32, ptr %shiftpel_y105.i, align 8
  %subpel_x106.i = getelementptr inbounds i8, ptr %1, i64 849196
  %621 = load i32, ptr %subpel_x106.i, align 4
  %subpel_y107.i = getelementptr inbounds i8, ptr %1, i64 849200
  %622 = load i32, ptr %subpel_y107.i, align 8
  %total_scale108.i = getelementptr inbounds i8, ptr %1, i64 849212
  %623 = load i32, ptr %total_scale108.i, align 4
  %mb_cr_size_x.i249 = getelementptr inbounds i8, ptr %1, i64 849108
  %624 = load i32, ptr %mb_cr_size_x.i249, align 4
  %cmp109.i = icmp ne i32 %624, 16
  %shr114.i = zext i1 %cmp109.i to i32
  %block_size_x_cr.0.i250 = ashr i32 %block_size_x, %shr114.i
  %ioff_cr.0.i251 = ashr exact i32 %shl.i209, %shr114.i
  %mb_cr_size_y.i252 = getelementptr inbounds i8, ptr %1, i64 849112
  %625 = load i32, ptr %mb_cr_size_y.i252, align 8
  %cmp116.i = icmp ne i32 %625, 16
  %shr121.i = zext i1 %cmp116.i to i32
  %block_size_y_cr.0.i253 = ashr i32 %block_size_y, %shr121.i
  %joff_cr.0.i254 = ashr exact i32 %shl4.i, %shr121.i
  %cmp123.i = icmp eq i32 %614, 1
  br i1 %cmp123.i, label %if.then125.i, label %if.end142.i

if.then125.i:                                     ; preds = %cond.end102.i
  %chroma_vector_adjustment.i261 = getelementptr inbounds i8, ptr %0, i64 13552
  %arrayidx130.i = getelementptr inbounds [6 x [16 x i8]], ptr %chroma_vector_adjustment.i261, i64 0, i64 %conv17.i215, i64 %idxprom27.i
  %626 = load i8, ptr %arrayidx130.i, align 1
  %conv131.i = sext i8 %626 to i32
  %add132.i = add nsw i32 %add62.i, %conv131.i
  %arrayidx138.i = getelementptr inbounds [6 x [16 x i8]], ptr %chroma_vector_adjustment.i261, i64 0, i64 %add30.i228, i64 %idxprom33.i
  %627 = load i8, ptr %arrayidx138.i, align 1
  %conv139.i = sext i8 %627 to i32
  %add140.i = add nsw i32 %add67.i, %conv139.i
  br label %if.end142.i

if.end142.i:                                      ; preds = %if.then125.i, %cond.end102.i
  %vec2_y_cr.0.i255 = phi i32 [ %add140.i, %if.then125.i ], [ %add67.i, %cond.end102.i ]
  %vec1_y_cr.0.i256 = phi i32 [ %add132.i, %if.then125.i ], [ %add62.i, %cond.end102.i ]
  %arrayidx144.i = getelementptr inbounds i8, ptr %1, i64 849064
  %628 = load i32, ptr %arrayidx144.i, align 4
  %conv145.i = trunc i32 %628 to i16
  tail call fastcc void @get_block_chroma(ptr noundef %524, i32 noundef %add54.i, i32 noundef %vec1_y_cr.0.i256, i32 noundef %621, i32 noundef %622, i32 noundef %615, i32 noundef %cond103.i, i32 noundef %block_size_x_cr.0.i250, i32 noundef %block_size_y_cr.0.i253, i32 noundef %619, i32 noundef %620, ptr noundef %528, ptr noundef %532, i32 noundef %623, i16 noundef zeroext %conv145.i, ptr noundef nonnull %1)
  tail call fastcc void @get_block_chroma(ptr noundef %526, i32 noundef %add58.i, i32 noundef %vec2_y_cr.0.i255, i32 noundef %621, i32 noundef %622, i32 noundef %615, i32 noundef %cond103.i, i32 noundef %block_size_x_cr.0.i250, i32 noundef %block_size_y_cr.0.i253, i32 noundef %619, i32 noundef %620, ptr noundef %530, ptr noundef %534, i32 noundef %623, i16 noundef zeroext %conv145.i, ptr noundef nonnull %1)
  %629 = load ptr, ptr %mb_pred.i245, align 8
  %arrayidx147.i257 = getelementptr inbounds i8, ptr %629, i64 8
  %630 = load ptr, ptr %arrayidx147.i257, align 8
  %idxprom148.i = sext i32 %joff_cr.0.i254 to i64
  %arrayidx149.i258 = getelementptr inbounds ptr, ptr %630, i64 %idxprom148.i
  %arrayidx149.val.i = load ptr, ptr %arrayidx149.i258, align 8
  %.val332.i = load ptr, ptr %527, align 8
  %.val333.i = load ptr, ptr %529, align 8
  %cmp8.i362.i = icmp sgt i32 %block_size_y_cr.0.i253, 0
  br i1 %cmp8.i362.i, label %for.cond4.preheader.lr.ph.i363.i, label %if.end7

for.cond4.preheader.lr.ph.i363.i:                 ; preds = %if.end142.i
  %sub.i364.i = sub nsw i32 16, %block_size_x_cr.0.i250
  %cmp51.i365.i = icmp sgt i32 %block_size_x_cr.0.i250, 0
  %idx.ext.i366.i = sext i32 %sub.i364.i to i64
  br i1 %cmp51.i365.i, label %for.cond4.preheader.us.preheader.i367.i, label %if.end7

for.cond4.preheader.us.preheader.i367.i:          ; preds = %for.cond4.preheader.lr.ph.i363.i
  %idxprom.i368.i = sext i32 %ioff_cr.0.i251 to i64
  %arrayidx1.i369.i = getelementptr inbounds i16, ptr %arrayidx149.val.i, i64 %idxprom.i368.i
  %631 = add nsw i32 %block_size_x_cr.0.i250, -1
  %632 = lshr i32 %631, 1
  %633 = zext nneg i32 %632 to i64
  %634 = shl nuw nsw i64 %633, 2
  %635 = add nuw nsw i64 %634, 4
  %636 = lshr i32 %631, 1
  %narrow686 = add nuw i32 %636, 1
  %637 = zext i32 %narrow686 to i64
  %min.iters.check553 = icmp ult i32 %block_size_x_cr.0.i250, 31
  %n.vec556 = and i64 %637, 4294967280
  %638 = shl nuw nsw i64 %n.vec556, 2
  %.cast559 = trunc nuw i64 %n.vec556 to i32
  %ind.end560 = shl i32 %.cast559, 1
  %639 = shl nuw nsw i64 %n.vec556, 2
  %640 = shl nuw nsw i64 %n.vec556, 2
  %cmp.n612 = icmp eq i64 %n.vec556, %637
  br label %for.cond4.preheader.us.i370.i

for.cond4.preheader.us.i370.i:                    ; preds = %for.cond4.for.end_crit_edge.us.i400.i, %for.cond4.preheader.us.preheader.i367.i
  %mpr.012.us.i371.i = phi ptr [ %add.ptr.us.i401.i, %for.cond4.for.end_crit_edge.us.i400.i ], [ %arrayidx1.i369.i, %for.cond4.preheader.us.preheader.i367.i ]
  %jj.011.us.i372.i = phi i32 [ %inc.us.i404.i, %for.cond4.for.end_crit_edge.us.i400.i ], [ 0, %for.cond4.preheader.us.preheader.i367.i ]
  %b1.010.us.i373.i = phi ptr [ %add.ptr25.us.i403.i, %for.cond4.for.end_crit_edge.us.i400.i ], [ %.val333.i, %for.cond4.preheader.us.preheader.i367.i ]
  %b0.09.us.i374.i = phi ptr [ %add.ptr23.us.i402.i, %for.cond4.for.end_crit_edge.us.i400.i ], [ %.val332.i, %for.cond4.preheader.us.preheader.i367.i ]
  br i1 %min.iters.check553, label %for.body6.us.i375.i.preheader, label %vector.memcheck540

vector.memcheck540:                               ; preds = %for.cond4.preheader.us.i370.i
  %scevgep541 = getelementptr i8, ptr %mpr.012.us.i371.i, i64 %635
  %scevgep542 = getelementptr i8, ptr %b0.09.us.i374.i, i64 %635
  %scevgep543 = getelementptr i8, ptr %b1.010.us.i373.i, i64 %635
  %bound0544 = icmp ult ptr %mpr.012.us.i371.i, %scevgep542
  %bound1545 = icmp ult ptr %b0.09.us.i374.i, %scevgep541
  %found.conflict546 = and i1 %bound0544, %bound1545
  %bound0547 = icmp ult ptr %mpr.012.us.i371.i, %scevgep543
  %bound1548 = icmp ult ptr %b1.010.us.i373.i, %scevgep541
  %found.conflict549 = and i1 %bound0547, %bound1548
  %conflict.rdx550 = or i1 %found.conflict546, %found.conflict549
  br i1 %conflict.rdx550, label %for.body6.us.i375.i.preheader, label %vector.ph554

vector.ph554:                                     ; preds = %vector.memcheck540
  %ind.end557 = getelementptr i8, ptr %mpr.012.us.i371.i, i64 %638
  %ind.end562 = getelementptr i8, ptr %b1.010.us.i373.i, i64 %639
  %ind.end564 = getelementptr i8, ptr %b0.09.us.i374.i, i64 %640
  br label %vector.body566

vector.body566:                                   ; preds = %vector.body566, %vector.ph554
  %index567 = phi i64 [ 0, %vector.ph554 ], [ %index.next611, %vector.body566 ]
  %offset.idx568 = shl i64 %index567, 2
  %641 = or disjoint i64 %offset.idx568, 16
  %642 = or disjoint i64 %offset.idx568, 32
  %643 = or disjoint i64 %offset.idx568, 48
  %next.gep569 = getelementptr i8, ptr %mpr.012.us.i371.i, i64 %offset.idx568
  %next.gep570 = getelementptr i8, ptr %mpr.012.us.i371.i, i64 %641
  %next.gep571 = getelementptr i8, ptr %mpr.012.us.i371.i, i64 %642
  %next.gep572 = getelementptr i8, ptr %mpr.012.us.i371.i, i64 %643
  %offset.idx573 = shl i64 %index567, 2
  %644 = or disjoint i64 %offset.idx573, 16
  %645 = or disjoint i64 %offset.idx573, 32
  %646 = or disjoint i64 %offset.idx573, 48
  %next.gep574 = getelementptr i8, ptr %b1.010.us.i373.i, i64 %offset.idx573
  %next.gep575 = getelementptr i8, ptr %b1.010.us.i373.i, i64 %644
  %next.gep576 = getelementptr i8, ptr %b1.010.us.i373.i, i64 %645
  %next.gep577 = getelementptr i8, ptr %b1.010.us.i373.i, i64 %646
  %offset.idx578 = shl i64 %index567, 2
  %647 = or disjoint i64 %offset.idx578, 16
  %648 = or disjoint i64 %offset.idx578, 32
  %649 = or disjoint i64 %offset.idx578, 48
  %next.gep579 = getelementptr i8, ptr %b0.09.us.i374.i, i64 %offset.idx578
  %next.gep580 = getelementptr i8, ptr %b0.09.us.i374.i, i64 %647
  %next.gep581 = getelementptr i8, ptr %b0.09.us.i374.i, i64 %648
  %next.gep582 = getelementptr i8, ptr %b0.09.us.i374.i, i64 %649
  %wide.vec583 = load <8 x i16>, ptr %next.gep579, align 2
  %wide.vec584 = load <8 x i16>, ptr %next.gep580, align 2
  %wide.vec585 = load <8 x i16>, ptr %next.gep581, align 2
  %wide.vec586 = load <8 x i16>, ptr %next.gep582, align 2
  %wide.vec595 = load <8 x i16>, ptr %next.gep574, align 2
  %wide.vec596 = load <8 x i16>, ptr %next.gep575, align 2
  %wide.vec597 = load <8 x i16>, ptr %next.gep576, align 2
  %wide.vec598 = load <8 x i16>, ptr %next.gep577, align 2
  %650 = zext <8 x i16> %wide.vec583 to <8 x i32>
  %651 = add nuw nsw <8 x i32> %650, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %652 = zext <8 x i16> %wide.vec595 to <8 x i32>
  %653 = add nuw nsw <8 x i32> %651, %652
  %654 = lshr <8 x i32> %653, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %interleaved.vec607 = trunc <8 x i32> %654 to <8 x i16>
  store <8 x i16> %interleaved.vec607, ptr %next.gep569, align 2
  %655 = zext <8 x i16> %wide.vec584 to <8 x i32>
  %656 = add nuw nsw <8 x i32> %655, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %657 = zext <8 x i16> %wide.vec596 to <8 x i32>
  %658 = add nuw nsw <8 x i32> %656, %657
  %659 = lshr <8 x i32> %658, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %interleaved.vec608 = trunc <8 x i32> %659 to <8 x i16>
  store <8 x i16> %interleaved.vec608, ptr %next.gep570, align 2
  %660 = zext <8 x i16> %wide.vec585 to <8 x i32>
  %661 = add nuw nsw <8 x i32> %660, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %662 = zext <8 x i16> %wide.vec597 to <8 x i32>
  %663 = add nuw nsw <8 x i32> %661, %662
  %664 = lshr <8 x i32> %663, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %interleaved.vec609 = trunc <8 x i32> %664 to <8 x i16>
  store <8 x i16> %interleaved.vec609, ptr %next.gep571, align 2
  %665 = zext <8 x i16> %wide.vec586 to <8 x i32>
  %666 = add nuw nsw <8 x i32> %665, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %667 = zext <8 x i16> %wide.vec598 to <8 x i32>
  %668 = add nuw nsw <8 x i32> %666, %667
  %669 = lshr <8 x i32> %668, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %interleaved.vec610 = trunc <8 x i32> %669 to <8 x i16>
  store <8 x i16> %interleaved.vec610, ptr %next.gep572, align 2
  %index.next611 = add nuw i64 %index567, 16
  %670 = icmp eq i64 %index.next611, %n.vec556
  br i1 %670, label %middle.block551, label %vector.body566, !llvm.loop !309

middle.block551:                                  ; preds = %vector.body566
  br i1 %cmp.n612, label %for.cond4.for.end_crit_edge.us.i400.i, label %for.body6.us.i375.i.preheader

for.body6.us.i375.i.preheader:                    ; preds = %middle.block551, %vector.memcheck540, %for.cond4.preheader.us.i370.i
  %mpr.15.us.i376.i.ph = phi ptr [ %mpr.012.us.i371.i, %vector.memcheck540 ], [ %mpr.012.us.i371.i, %for.cond4.preheader.us.i370.i ], [ %ind.end557, %middle.block551 ]
  %ii.04.us.i377.i.ph = phi i32 [ 0, %vector.memcheck540 ], [ 0, %for.cond4.preheader.us.i370.i ], [ %ind.end560, %middle.block551 ]
  %b1.13.us.i378.i.ph = phi ptr [ %b1.010.us.i373.i, %vector.memcheck540 ], [ %b1.010.us.i373.i, %for.cond4.preheader.us.i370.i ], [ %ind.end562, %middle.block551 ]
  %b0.12.us.i379.i.ph = phi ptr [ %b0.09.us.i374.i, %vector.memcheck540 ], [ %b0.09.us.i374.i, %for.cond4.preheader.us.i370.i ], [ %ind.end564, %middle.block551 ]
  br label %for.body6.us.i375.i

for.body6.us.i375.i:                              ; preds = %for.body6.us.i375.i.preheader, %for.body6.us.i375.i
  %mpr.15.us.i376.i = phi ptr [ %incdec.ptr20.us.i397.i, %for.body6.us.i375.i ], [ %mpr.15.us.i376.i.ph, %for.body6.us.i375.i.preheader ]
  %ii.04.us.i377.i = phi i32 [ %add21.us.i398.i, %for.body6.us.i375.i ], [ %ii.04.us.i377.i.ph, %for.body6.us.i375.i.preheader ]
  %b1.13.us.i378.i = phi ptr [ %incdec.ptr14.us.i391.i, %for.body6.us.i375.i ], [ %b1.13.us.i378.i.ph, %for.body6.us.i375.i.preheader ]
  %b0.12.us.i379.i = phi ptr [ %incdec.ptr12.us.i389.i, %for.body6.us.i375.i ], [ %b0.12.us.i379.i.ph, %for.body6.us.i375.i.preheader ]
  %incdec.ptr.us.i380.i = getelementptr inbounds i8, ptr %b0.12.us.i379.i, i64 2
  %671 = load i16, ptr %b0.12.us.i379.i, align 2
  %conv.us.i381.i = zext i16 %671 to i32
  %incdec.ptr7.us.i382.i = getelementptr inbounds i8, ptr %b1.13.us.i378.i, i64 2
  %672 = load i16, ptr %b1.13.us.i378.i, align 2
  %conv8.us.i383.i = zext i16 %672 to i32
  %add.us.i384.i = add nuw nsw i32 %conv.us.i381.i, 1
  %add9.us.i385.i = add nuw nsw i32 %add.us.i384.i, %conv8.us.i383.i
  %shr.us.i386.i = lshr i32 %add9.us.i385.i, 1
  %conv10.us.i387.i = trunc nuw i32 %shr.us.i386.i to i16
  %incdec.ptr11.us.i388.i = getelementptr inbounds i8, ptr %mpr.15.us.i376.i, i64 2
  store i16 %conv10.us.i387.i, ptr %mpr.15.us.i376.i, align 2
  %incdec.ptr12.us.i389.i = getelementptr inbounds i8, ptr %b0.12.us.i379.i, i64 4
  %673 = load i16, ptr %incdec.ptr.us.i380.i, align 2
  %conv13.us.i390.i = zext i16 %673 to i32
  %incdec.ptr14.us.i391.i = getelementptr inbounds i8, ptr %b1.13.us.i378.i, i64 4
  %674 = load i16, ptr %incdec.ptr7.us.i382.i, align 2
  %conv15.us.i392.i = zext i16 %674 to i32
  %add16.us.i393.i = add nuw nsw i32 %conv13.us.i390.i, 1
  %add17.us.i394.i = add nuw nsw i32 %add16.us.i393.i, %conv15.us.i392.i
  %shr18.us.i395.i = lshr i32 %add17.us.i394.i, 1
  %conv19.us.i396.i = trunc nuw i32 %shr18.us.i395.i to i16
  %incdec.ptr20.us.i397.i = getelementptr inbounds i8, ptr %mpr.15.us.i376.i, i64 4
  store i16 %conv19.us.i396.i, ptr %incdec.ptr11.us.i388.i, align 2
  %add21.us.i398.i = add nuw nsw i32 %ii.04.us.i377.i, 2
  %cmp5.us.i399.i = icmp slt i32 %add21.us.i398.i, %block_size_x_cr.0.i250
  br i1 %cmp5.us.i399.i, label %for.body6.us.i375.i, label %for.cond4.for.end_crit_edge.us.i400.i, !llvm.loop !310

for.cond4.for.end_crit_edge.us.i400.i:            ; preds = %for.body6.us.i375.i, %middle.block551
  %incdec.ptr12.us.i389.i.lcssa = phi ptr [ %ind.end564, %middle.block551 ], [ %incdec.ptr12.us.i389.i, %for.body6.us.i375.i ]
  %incdec.ptr14.us.i391.i.lcssa = phi ptr [ %ind.end562, %middle.block551 ], [ %incdec.ptr14.us.i391.i, %for.body6.us.i375.i ]
  %incdec.ptr20.us.i397.i.lcssa = phi ptr [ %ind.end557, %middle.block551 ], [ %incdec.ptr20.us.i397.i, %for.body6.us.i375.i ]
  %add.ptr.us.i401.i = getelementptr inbounds i16, ptr %incdec.ptr20.us.i397.i.lcssa, i64 %idx.ext.i366.i
  %add.ptr23.us.i402.i = getelementptr inbounds i16, ptr %incdec.ptr12.us.i389.i.lcssa, i64 %idx.ext.i366.i
  %add.ptr25.us.i403.i = getelementptr inbounds i16, ptr %incdec.ptr14.us.i391.i.lcssa, i64 %idx.ext.i366.i
  %inc.us.i404.i = add nuw nsw i32 %jj.011.us.i372.i, 1
  %exitcond.not.i405.i = icmp eq i32 %inc.us.i404.i, %block_size_y_cr.0.i253
  br i1 %exitcond.not.i405.i, label %bi_prediction.exit406.i, label %for.cond4.preheader.us.i370.i

bi_prediction.exit406.i:                          ; preds = %for.cond4.for.end_crit_edge.us.i400.i
  %675 = load ptr, ptr %mb_pred.i245, align 8
  %arrayidx151.i259 = getelementptr inbounds i8, ptr %675, i64 16
  %676 = load ptr, ptr %arrayidx151.i259, align 8
  %arrayidx153.i260 = getelementptr inbounds ptr, ptr %676, i64 %idxprom148.i
  %arrayidx153.val.i = load ptr, ptr %arrayidx153.i260, align 8
  %.val.i = load ptr, ptr %531, align 8
  %.val331.i = load ptr, ptr %533, align 8
  %arrayidx1.i414.i = getelementptr inbounds i16, ptr %arrayidx153.val.i, i64 %idxprom.i368.i
  %677 = add nsw i32 %block_size_x_cr.0.i250, -1
  %678 = lshr i32 %677, 1
  %679 = zext nneg i32 %678 to i64
  %680 = shl nuw nsw i64 %679, 2
  %681 = add nuw nsw i64 %680, 4
  %682 = lshr i32 %677, 1
  %narrow687 = add nuw i32 %682, 1
  %683 = zext i32 %narrow687 to i64
  %min.iters.check626 = icmp ult i32 %block_size_x_cr.0.i250, 31
  %n.vec629 = and i64 %683, 4294967280
  %684 = shl nuw nsw i64 %n.vec629, 2
  %.cast632 = trunc nuw i64 %n.vec629 to i32
  %ind.end633 = shl i32 %.cast632, 1
  %685 = shl nuw nsw i64 %n.vec629, 2
  %686 = shl nuw nsw i64 %n.vec629, 2
  %cmp.n685 = icmp eq i64 %n.vec629, %683
  br label %for.cond4.preheader.us.i415.i

for.cond4.preheader.us.i415.i:                    ; preds = %for.cond4.for.end_crit_edge.us.i445.i, %bi_prediction.exit406.i
  %mpr.012.us.i416.i = phi ptr [ %add.ptr.us.i446.i, %for.cond4.for.end_crit_edge.us.i445.i ], [ %arrayidx1.i414.i, %bi_prediction.exit406.i ]
  %jj.011.us.i417.i = phi i32 [ %inc.us.i449.i, %for.cond4.for.end_crit_edge.us.i445.i ], [ 0, %bi_prediction.exit406.i ]
  %b1.010.us.i418.i = phi ptr [ %add.ptr25.us.i448.i, %for.cond4.for.end_crit_edge.us.i445.i ], [ %.val331.i, %bi_prediction.exit406.i ]
  %b0.09.us.i419.i = phi ptr [ %add.ptr23.us.i447.i, %for.cond4.for.end_crit_edge.us.i445.i ], [ %.val.i, %bi_prediction.exit406.i ]
  br i1 %min.iters.check626, label %for.body6.us.i420.i.preheader, label %vector.memcheck613

vector.memcheck613:                               ; preds = %for.cond4.preheader.us.i415.i
  %scevgep614 = getelementptr i8, ptr %mpr.012.us.i416.i, i64 %681
  %scevgep615 = getelementptr i8, ptr %b0.09.us.i419.i, i64 %681
  %scevgep616 = getelementptr i8, ptr %b1.010.us.i418.i, i64 %681
  %bound0617 = icmp ult ptr %mpr.012.us.i416.i, %scevgep615
  %bound1618 = icmp ult ptr %b0.09.us.i419.i, %scevgep614
  %found.conflict619 = and i1 %bound0617, %bound1618
  %bound0620 = icmp ult ptr %mpr.012.us.i416.i, %scevgep616
  %bound1621 = icmp ult ptr %b1.010.us.i418.i, %scevgep614
  %found.conflict622 = and i1 %bound0620, %bound1621
  %conflict.rdx623 = or i1 %found.conflict619, %found.conflict622
  br i1 %conflict.rdx623, label %for.body6.us.i420.i.preheader, label %vector.ph627

vector.ph627:                                     ; preds = %vector.memcheck613
  %ind.end630 = getelementptr i8, ptr %mpr.012.us.i416.i, i64 %684
  %ind.end635 = getelementptr i8, ptr %b1.010.us.i418.i, i64 %685
  %ind.end637 = getelementptr i8, ptr %b0.09.us.i419.i, i64 %686
  br label %vector.body639

vector.body639:                                   ; preds = %vector.body639, %vector.ph627
  %index640 = phi i64 [ 0, %vector.ph627 ], [ %index.next684, %vector.body639 ]
  %offset.idx641 = shl i64 %index640, 2
  %687 = or disjoint i64 %offset.idx641, 16
  %688 = or disjoint i64 %offset.idx641, 32
  %689 = or disjoint i64 %offset.idx641, 48
  %next.gep642 = getelementptr i8, ptr %mpr.012.us.i416.i, i64 %offset.idx641
  %next.gep643 = getelementptr i8, ptr %mpr.012.us.i416.i, i64 %687
  %next.gep644 = getelementptr i8, ptr %mpr.012.us.i416.i, i64 %688
  %next.gep645 = getelementptr i8, ptr %mpr.012.us.i416.i, i64 %689
  %offset.idx646 = shl i64 %index640, 2
  %690 = or disjoint i64 %offset.idx646, 16
  %691 = or disjoint i64 %offset.idx646, 32
  %692 = or disjoint i64 %offset.idx646, 48
  %next.gep647 = getelementptr i8, ptr %b1.010.us.i418.i, i64 %offset.idx646
  %next.gep648 = getelementptr i8, ptr %b1.010.us.i418.i, i64 %690
  %next.gep649 = getelementptr i8, ptr %b1.010.us.i418.i, i64 %691
  %next.gep650 = getelementptr i8, ptr %b1.010.us.i418.i, i64 %692
  %offset.idx651 = shl i64 %index640, 2
  %693 = or disjoint i64 %offset.idx651, 16
  %694 = or disjoint i64 %offset.idx651, 32
  %695 = or disjoint i64 %offset.idx651, 48
  %next.gep652 = getelementptr i8, ptr %b0.09.us.i419.i, i64 %offset.idx651
  %next.gep653 = getelementptr i8, ptr %b0.09.us.i419.i, i64 %693
  %next.gep654 = getelementptr i8, ptr %b0.09.us.i419.i, i64 %694
  %next.gep655 = getelementptr i8, ptr %b0.09.us.i419.i, i64 %695
  %wide.vec656 = load <8 x i16>, ptr %next.gep652, align 2
  %wide.vec657 = load <8 x i16>, ptr %next.gep653, align 2
  %wide.vec658 = load <8 x i16>, ptr %next.gep654, align 2
  %wide.vec659 = load <8 x i16>, ptr %next.gep655, align 2
  %wide.vec668 = load <8 x i16>, ptr %next.gep647, align 2
  %wide.vec669 = load <8 x i16>, ptr %next.gep648, align 2
  %wide.vec670 = load <8 x i16>, ptr %next.gep649, align 2
  %wide.vec671 = load <8 x i16>, ptr %next.gep650, align 2
  %696 = zext <8 x i16> %wide.vec656 to <8 x i32>
  %697 = add nuw nsw <8 x i32> %696, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %698 = zext <8 x i16> %wide.vec668 to <8 x i32>
  %699 = add nuw nsw <8 x i32> %697, %698
  %700 = lshr <8 x i32> %699, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %interleaved.vec680 = trunc <8 x i32> %700 to <8 x i16>
  store <8 x i16> %interleaved.vec680, ptr %next.gep642, align 2
  %701 = zext <8 x i16> %wide.vec657 to <8 x i32>
  %702 = add nuw nsw <8 x i32> %701, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %703 = zext <8 x i16> %wide.vec669 to <8 x i32>
  %704 = add nuw nsw <8 x i32> %702, %703
  %705 = lshr <8 x i32> %704, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %interleaved.vec681 = trunc <8 x i32> %705 to <8 x i16>
  store <8 x i16> %interleaved.vec681, ptr %next.gep643, align 2
  %706 = zext <8 x i16> %wide.vec658 to <8 x i32>
  %707 = add nuw nsw <8 x i32> %706, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %708 = zext <8 x i16> %wide.vec670 to <8 x i32>
  %709 = add nuw nsw <8 x i32> %707, %708
  %710 = lshr <8 x i32> %709, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %interleaved.vec682 = trunc <8 x i32> %710 to <8 x i16>
  store <8 x i16> %interleaved.vec682, ptr %next.gep644, align 2
  %711 = zext <8 x i16> %wide.vec659 to <8 x i32>
  %712 = add nuw nsw <8 x i32> %711, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %713 = zext <8 x i16> %wide.vec671 to <8 x i32>
  %714 = add nuw nsw <8 x i32> %712, %713
  %715 = lshr <8 x i32> %714, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %interleaved.vec683 = trunc <8 x i32> %715 to <8 x i16>
  store <8 x i16> %interleaved.vec683, ptr %next.gep645, align 2
  %index.next684 = add nuw i64 %index640, 16
  %716 = icmp eq i64 %index.next684, %n.vec629
  br i1 %716, label %middle.block624, label %vector.body639, !llvm.loop !311

middle.block624:                                  ; preds = %vector.body639
  br i1 %cmp.n685, label %for.cond4.for.end_crit_edge.us.i445.i, label %for.body6.us.i420.i.preheader

for.body6.us.i420.i.preheader:                    ; preds = %middle.block624, %vector.memcheck613, %for.cond4.preheader.us.i415.i
  %mpr.15.us.i421.i.ph = phi ptr [ %mpr.012.us.i416.i, %vector.memcheck613 ], [ %mpr.012.us.i416.i, %for.cond4.preheader.us.i415.i ], [ %ind.end630, %middle.block624 ]
  %ii.04.us.i422.i.ph = phi i32 [ 0, %vector.memcheck613 ], [ 0, %for.cond4.preheader.us.i415.i ], [ %ind.end633, %middle.block624 ]
  %b1.13.us.i423.i.ph = phi ptr [ %b1.010.us.i418.i, %vector.memcheck613 ], [ %b1.010.us.i418.i, %for.cond4.preheader.us.i415.i ], [ %ind.end635, %middle.block624 ]
  %b0.12.us.i424.i.ph = phi ptr [ %b0.09.us.i419.i, %vector.memcheck613 ], [ %b0.09.us.i419.i, %for.cond4.preheader.us.i415.i ], [ %ind.end637, %middle.block624 ]
  br label %for.body6.us.i420.i

for.body6.us.i420.i:                              ; preds = %for.body6.us.i420.i.preheader, %for.body6.us.i420.i
  %mpr.15.us.i421.i = phi ptr [ %incdec.ptr20.us.i442.i, %for.body6.us.i420.i ], [ %mpr.15.us.i421.i.ph, %for.body6.us.i420.i.preheader ]
  %ii.04.us.i422.i = phi i32 [ %add21.us.i443.i, %for.body6.us.i420.i ], [ %ii.04.us.i422.i.ph, %for.body6.us.i420.i.preheader ]
  %b1.13.us.i423.i = phi ptr [ %incdec.ptr14.us.i436.i, %for.body6.us.i420.i ], [ %b1.13.us.i423.i.ph, %for.body6.us.i420.i.preheader ]
  %b0.12.us.i424.i = phi ptr [ %incdec.ptr12.us.i434.i, %for.body6.us.i420.i ], [ %b0.12.us.i424.i.ph, %for.body6.us.i420.i.preheader ]
  %incdec.ptr.us.i425.i = getelementptr inbounds i8, ptr %b0.12.us.i424.i, i64 2
  %717 = load i16, ptr %b0.12.us.i424.i, align 2
  %conv.us.i426.i = zext i16 %717 to i32
  %incdec.ptr7.us.i427.i = getelementptr inbounds i8, ptr %b1.13.us.i423.i, i64 2
  %718 = load i16, ptr %b1.13.us.i423.i, align 2
  %conv8.us.i428.i = zext i16 %718 to i32
  %add.us.i429.i = add nuw nsw i32 %conv.us.i426.i, 1
  %add9.us.i430.i = add nuw nsw i32 %add.us.i429.i, %conv8.us.i428.i
  %shr.us.i431.i = lshr i32 %add9.us.i430.i, 1
  %conv10.us.i432.i = trunc nuw i32 %shr.us.i431.i to i16
  %incdec.ptr11.us.i433.i = getelementptr inbounds i8, ptr %mpr.15.us.i421.i, i64 2
  store i16 %conv10.us.i432.i, ptr %mpr.15.us.i421.i, align 2
  %incdec.ptr12.us.i434.i = getelementptr inbounds i8, ptr %b0.12.us.i424.i, i64 4
  %719 = load i16, ptr %incdec.ptr.us.i425.i, align 2
  %conv13.us.i435.i = zext i16 %719 to i32
  %incdec.ptr14.us.i436.i = getelementptr inbounds i8, ptr %b1.13.us.i423.i, i64 4
  %720 = load i16, ptr %incdec.ptr7.us.i427.i, align 2
  %conv15.us.i437.i = zext i16 %720 to i32
  %add16.us.i438.i = add nuw nsw i32 %conv13.us.i435.i, 1
  %add17.us.i439.i = add nuw nsw i32 %add16.us.i438.i, %conv15.us.i437.i
  %shr18.us.i440.i = lshr i32 %add17.us.i439.i, 1
  %conv19.us.i441.i = trunc nuw i32 %shr18.us.i440.i to i16
  %incdec.ptr20.us.i442.i = getelementptr inbounds i8, ptr %mpr.15.us.i421.i, i64 4
  store i16 %conv19.us.i441.i, ptr %incdec.ptr11.us.i433.i, align 2
  %add21.us.i443.i = add nuw nsw i32 %ii.04.us.i422.i, 2
  %cmp5.us.i444.i = icmp slt i32 %add21.us.i443.i, %block_size_x_cr.0.i250
  br i1 %cmp5.us.i444.i, label %for.body6.us.i420.i, label %for.cond4.for.end_crit_edge.us.i445.i, !llvm.loop !312

for.cond4.for.end_crit_edge.us.i445.i:            ; preds = %for.body6.us.i420.i, %middle.block624
  %incdec.ptr12.us.i434.i.lcssa = phi ptr [ %ind.end637, %middle.block624 ], [ %incdec.ptr12.us.i434.i, %for.body6.us.i420.i ]
  %incdec.ptr14.us.i436.i.lcssa = phi ptr [ %ind.end635, %middle.block624 ], [ %incdec.ptr14.us.i436.i, %for.body6.us.i420.i ]
  %incdec.ptr20.us.i442.i.lcssa = phi ptr [ %ind.end630, %middle.block624 ], [ %incdec.ptr20.us.i442.i, %for.body6.us.i420.i ]
  %add.ptr.us.i446.i = getelementptr inbounds i16, ptr %incdec.ptr20.us.i442.i.lcssa, i64 %idx.ext.i366.i
  %add.ptr23.us.i447.i = getelementptr inbounds i16, ptr %incdec.ptr12.us.i434.i.lcssa, i64 %idx.ext.i366.i
  %add.ptr25.us.i448.i = getelementptr inbounds i16, ptr %incdec.ptr14.us.i436.i.lcssa, i64 %idx.ext.i366.i
  %inc.us.i449.i = add nuw nsw i32 %jj.011.us.i417.i, 1
  %exitcond.not.i450.i = icmp eq i32 %inc.us.i449.i, %block_size_y_cr.0.i253
  br i1 %exitcond.not.i450.i, label %if.end7, label %for.cond4.preheader.us.i415.i

if.end7.loopexit707.unr-lcssa:                    ; preds = %for.body.i233.i, %mc_prediction.exit226.i
  %indvars.iv.i234.i.unr = phi i64 [ 0, %mc_prediction.exit226.i ], [ %indvars.iv.next.i238.i.1, %for.body.i233.i ]
  %lcmp.mod729.not = icmp eq i64 %xtraiter728, 0
  br i1 %lcmp.mod729.not, label %if.end7, label %for.body.i233.i.epil

for.body.i233.i.epil:                             ; preds = %if.end7.loopexit707.unr-lcssa
  %arrayidx.i235.i.epil = getelementptr inbounds ptr, ptr %arrayidx107.i, i64 %indvars.iv.i234.i.unr
  %721 = load ptr, ptr %arrayidx.i235.i.epil, align 8
  %arrayidx2.i236.i.epil = getelementptr inbounds i16, ptr %721, i64 %idxprom1.i215.i
  %arrayidx4.i237.i.epil = getelementptr inbounds ptr, ptr %5, i64 %indvars.iv.i234.i.unr
  %722 = load ptr, ptr %arrayidx4.i237.i.epil, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %arrayidx2.i236.i.epil, ptr align 2 %722, i64 %mul.i217.i, i1 false)
  br label %if.end7

if.end7:                                          ; preds = %for.cond1.for.inc13_crit_edge.split.us.us.us.i390.i, %for.cond1.for.inc13_crit_edge.split.us41.i369.i, %for.body.i233.i.epil, %if.end7.loopexit707.unr-lcssa, %for.cond1.for.end_crit_edge.us.i558.i, %for.cond4.for.end_crit_edge.us.i445.i, %for.cond4.preheader.lr.ph.i363.i, %if.end142.i, %bi_prediction.exit.i, %bi_prediction.exit.i, %for.cond1.preheader.lr.ph.i527.i, %weighted_bi_prediction.exit525.i, %weighted_bi_prediction.exit.i, %weighted_bi_prediction.exit.i, %cond.end77.i, %mc_prediction.exit.i, %mc_prediction.exit.i, %for.cond1.preheader.lr.ph.i295.i, %cond.end110.i, %weighted_mc_prediction.exit.i, %weighted_mc_prediction.exit.i
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

declare i32 @CheckVertMV(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind uwtable
define internal fastcc void @get_block_chroma(ptr nocapture noundef readonly %curr_ref, i32 noundef %x_pos, i32 noundef %y_pos, i32 noundef %subpel_x, i32 noundef %subpel_y, i32 noundef %maxold_x, i32 noundef %maxold_y, i32 noundef %hor_block_size, i32 noundef %vert_block_size, i32 noundef %shiftpel_x, i32 noundef %shiftpel_y, ptr nocapture noundef writeonly %block1, ptr nocapture noundef writeonly %block2, i32 noundef %total_scale, i16 noundef zeroext %no_ref_value, ptr nocapture noundef readonly %p_Vid) unnamed_addr #3 {
entry:
  %iChromaStride = getelementptr inbounds i8, ptr %curr_ref, i64 360
  %0 = load i32, ptr %iChromaStride, align 8
  %no_ref = getelementptr inbounds i8, ptr %curr_ref, i64 384
  %1 = load i32, ptr %no_ref, align 8
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.3)
  %2 = trunc i16 %no_ref_value to i8
  %mul = mul nsw i32 %vert_block_size, %hor_block_size
  %conv1 = sext i32 %mul to i64
  %mul2 = shl nsw i64 %conv1, 1
  tail call void @llvm.memset.p0.i64(ptr align 2 %block1, i8 %2, i64 %mul2, i1 false)
  tail call void @llvm.memset.p0.i64(ptr align 2 %block2, i8 %2, i64 %mul2, i1 false)
  br label %if.end91

if.else:                                          ; preds = %entry
  %and = and i32 %subpel_x, %x_pos
  %and8 = and i32 %subpel_y, %y_pos
  %shr = ashr i32 %x_pos, %shiftpel_x
  %shr10 = ashr i32 %y_pos, %shiftpel_y
  %iChromaPadX = getelementptr inbounds i8, ptr %p_Vid, i64 856848
  %3 = load i32, ptr %iChromaPadX, align 8
  %sub = sub nsw i32 0, %3
  %cond.i.i = tail call noundef i32 @llvm.smax.i32(i32 %shr, i32 %sub)
  %cond.i4.i = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i, i32 %maxold_x)
  %iChromaPadY = getelementptr inbounds i8, ptr %p_Vid, i64 856852
  %4 = load i32, ptr %iChromaPadY, align 4
  %sub12 = sub nsw i32 0, %4
  %cond.i.i184 = tail call noundef i32 @llvm.smax.i32(i32 %shr10, i32 %sub12)
  %cond.i4.i185 = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i184, i32 %maxold_y)
  %imgUV = getelementptr inbounds i8, ptr %curr_ref, i64 136
  %5 = load ptr, ptr %imgUV, align 8
  %6 = load ptr, ptr %5, align 8
  %idxprom = sext i32 %cond.i4.i185 to i64
  %arrayidx14 = getelementptr inbounds ptr, ptr %6, i64 %idxprom
  %7 = load ptr, ptr %arrayidx14, align 8
  %idxprom15 = sext i32 %cond.i4.i to i64
  %arrayidx16 = getelementptr i16, ptr %7, i64 %idxprom15
  %arrayidx18 = getelementptr inbounds i8, ptr %5, i64 8
  %8 = load ptr, ptr %arrayidx18, align 8
  %arrayidx20 = getelementptr inbounds ptr, ptr %8, i64 %idxprom
  %9 = load ptr, ptr %arrayidx20, align 8
  %arrayidx22 = getelementptr i16, ptr %9, i64 %idxprom15
  %sext = shl i32 %and, 16
  %sext173 = shl i32 %and8, 16
  %cmp26 = icmp eq i32 %sext173, 0
  %10 = or i32 %sext173, %sext
  %or.cond = icmp eq i32 %10, 0
  br i1 %or.cond, label %if.then28, label %if.else29

if.then28:                                        ; preds = %if.else
  %cmp13.i = icmp sgt i32 %vert_block_size, 0
  br i1 %cmp13.i, label %for.body.lr.ph.i, label %if.end91

for.body.lr.ph.i:                                 ; preds = %if.then28
  %idx.ext.i = sext i32 %0 to i64
  %11 = add nsw i32 %vert_block_size, -1
  %12 = icmp ult i32 %vert_block_size, 3
  br i1 %12, label %for.body.i189.preheader.unr-lcssa, label %for.body.lr.ph.i.new

for.body.lr.ph.i.new:                             ; preds = %for.body.lr.ph.i
  %13 = lshr i32 %11, 1
  %14 = add nuw i32 %13, 1
  %unroll_iter = and i32 %14, -2
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %for.body.lr.ph.i.new
  %block.addr.015.i = phi ptr [ %block1, %for.body.lr.ph.i.new ], [ %add.ptr2.i.1, %for.body.i ]
  %cur_img.addr.014.i = phi ptr [ %arrayidx16, %for.body.lr.ph.i.new ], [ %add.ptr4.i.1, %for.body.i ]
  %niter = phi i32 [ 0, %for.body.lr.ph.i.new ], [ %niter.next.1, %for.body.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %block.addr.015.i, ptr noundef nonnull align 2 dereferenceable(32) %cur_img.addr.014.i, i64 32, i1 false)
  %add.ptr.i = getelementptr inbounds i8, ptr %block.addr.015.i, i64 32
  %add.ptr1.i = getelementptr inbounds i16, ptr %cur_img.addr.014.i, i64 %idx.ext.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %add.ptr.i, ptr noundef nonnull align 2 dereferenceable(32) %add.ptr1.i, i64 32, i1 false)
  %add.ptr2.i = getelementptr inbounds i8, ptr %block.addr.015.i, i64 64
  %add.ptr4.i = getelementptr inbounds i16, ptr %add.ptr1.i, i64 %idx.ext.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %add.ptr2.i, ptr noundef nonnull align 2 dereferenceable(32) %add.ptr4.i, i64 32, i1 false)
  %add.ptr.i.1 = getelementptr inbounds i8, ptr %block.addr.015.i, i64 96
  %add.ptr1.i.1 = getelementptr inbounds i16, ptr %add.ptr4.i, i64 %idx.ext.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %add.ptr.i.1, ptr noundef nonnull align 2 dereferenceable(32) %add.ptr1.i.1, i64 32, i1 false)
  %add.ptr2.i.1 = getelementptr inbounds i8, ptr %block.addr.015.i, i64 128
  %add.ptr4.i.1 = getelementptr inbounds i16, ptr %add.ptr1.i.1, i64 %idx.ext.i
  %niter.next.1 = add nuw nsw i32 %niter, 2
  %niter.ncmp.1.not = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %for.body.i189.preheader.unr-lcssa, label %for.body.i

for.body.i189.preheader.unr-lcssa:                ; preds = %for.body.i, %for.body.lr.ph.i
  %block.addr.015.i.unr = phi ptr [ %block1, %for.body.lr.ph.i ], [ %add.ptr2.i.1, %for.body.i ]
  %cur_img.addr.014.i.unr = phi ptr [ %arrayidx16, %for.body.lr.ph.i ], [ %add.ptr4.i.1, %for.body.i ]
  %15 = and i32 %11, 2
  %lcmp.mod725.not.not = icmp eq i32 %15, 0
  br i1 %lcmp.mod725.not.not, label %for.body.i.epil, label %for.body.i189.preheader

for.body.i.epil:                                  ; preds = %for.body.i189.preheader.unr-lcssa
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %block.addr.015.i.unr, ptr noundef nonnull align 2 dereferenceable(32) %cur_img.addr.014.i.unr, i64 32, i1 false)
  %add.ptr.i.epil = getelementptr inbounds i8, ptr %block.addr.015.i.unr, i64 32
  %add.ptr1.i.epil = getelementptr inbounds i16, ptr %cur_img.addr.014.i.unr, i64 %idx.ext.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %add.ptr.i.epil, ptr noundef nonnull align 2 dereferenceable(32) %add.ptr1.i.epil, i64 32, i1 false)
  br label %for.body.i189.preheader

for.body.i189.preheader:                          ; preds = %for.body.i189.preheader.unr-lcssa, %for.body.i.epil
  br label %for.body.i189

for.body.i189:                                    ; preds = %for.body.i189.preheader, %for.body.i189
  %j.016.i190 = phi i32 [ %add.i197, %for.body.i189 ], [ 0, %for.body.i189.preheader ]
  %block.addr.015.i191 = phi ptr [ %add.ptr2.i195, %for.body.i189 ], [ %block2, %for.body.i189.preheader ]
  %cur_img.addr.014.i192 = phi ptr [ %add.ptr4.i196, %for.body.i189 ], [ %arrayidx22, %for.body.i189.preheader ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %block.addr.015.i191, ptr noundef nonnull align 2 dereferenceable(32) %cur_img.addr.014.i192, i64 32, i1 false)
  %add.ptr.i193 = getelementptr inbounds i8, ptr %block.addr.015.i191, i64 32
  %add.ptr1.i194 = getelementptr inbounds i16, ptr %cur_img.addr.014.i192, i64 %idx.ext.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %add.ptr.i193, ptr noundef nonnull align 2 dereferenceable(32) %add.ptr1.i194, i64 32, i1 false)
  %add.ptr2.i195 = getelementptr inbounds i8, ptr %block.addr.015.i191, i64 64
  %add.ptr4.i196 = getelementptr inbounds i16, ptr %add.ptr1.i194, i64 %idx.ext.i
  %add.i197 = add nuw nsw i32 %j.016.i190, 2
  %cmp.i198 = icmp slt i32 %add.i197, %vert_block_size
  br i1 %cmp.i198, label %for.body.i189, label %if.end91

if.else29:                                        ; preds = %if.else
  %cmp = icmp eq i32 %sext, 0
  %add = add nsw i32 %subpel_x, 1
  %sub31 = sub i32 %add, %and
  %add33 = add nsw i32 %subpel_y, 1
  %sub35 = sub i32 %add33, %and8
  %mul39 = mul i32 %sub35, %sub31
  %sext182 = shl i32 %mul39, 16
  %conv49 = ashr exact i32 %sext182, 16
  br i1 %cmp, label %if.then44, label %if.else53

if.then44:                                        ; preds = %if.else29
  %mul47 = shl i32 %add, 16
  %sext183 = mul i32 %mul47, %and8
  %conv50 = ashr exact i32 %sext183, 16
  %idx.ext.i200 = sext i32 %0 to i64
  %cmp28.i = icmp sgt i32 %vert_block_size, 0
  br i1 %cmp28.i, label %for.body.lr.ph.i201, label %if.end91

for.body.lr.ph.i201:                              ; preds = %if.then44
  %cmp522.i = icmp sgt i32 %hor_block_size, 0
  %sub.i.i = add nsw i32 %total_scale, -1
  %shl.i.i = shl nuw i32 1, %sub.i.i
  br i1 %cmp522.i, label %for.body.us.i.preheader, label %if.end91

for.body.us.i.preheader:                          ; preds = %for.body.lr.ph.i201
  %16 = add nsw i32 %vert_block_size, -1
  %17 = zext i32 %16 to i64
  %18 = shl nuw nsw i64 %17, 5
  %19 = add nsw i32 %hor_block_size, -1
  %20 = zext i32 %19 to i64
  %21 = shl nuw nsw i64 %20, 1
  %22 = getelementptr i8, ptr %block1, i64 %18
  %23 = getelementptr i8, ptr %22, i64 %21
  %scevgep590 = getelementptr i8, ptr %23, i64 2
  %24 = shl nsw i64 %idxprom15, 1
  %25 = shl nsw i64 %idx.ext.i200, 1
  %26 = getelementptr i8, ptr %7, i64 %24
  %scevgep591 = getelementptr i8, ptr %26, i64 %25
  %27 = shl nuw nsw i64 %17, 1
  %28 = add nuw nsw i64 %27, 2
  %29 = mul i64 %28, %idx.ext.i200
  %30 = getelementptr i8, ptr %7, i64 %29
  %31 = getelementptr i8, ptr %30, i64 %24
  %32 = getelementptr i8, ptr %31, i64 %21
  %scevgep592 = getelementptr i8, ptr %32, i64 2
  %33 = mul nsw i64 %idx.ext.i200, %17
  %34 = add i64 %33, %idxprom15
  %35 = add i64 %34, %20
  %36 = shl i64 %35, 1
  %37 = getelementptr i8, ptr %7, i64 %36
  %scevgep593 = getelementptr i8, ptr %37, i64 2
  %38 = zext nneg i32 %hor_block_size to i64
  %min.iters.check605 = icmp ult i32 %hor_block_size, 32
  %bound0594 = icmp ugt ptr %scevgep592, %block1
  %bound1595 = icmp ult ptr %scevgep591, %scevgep590
  %found.conflict596 = and i1 %bound0594, %bound1595
  %bound0598 = icmp ugt ptr %scevgep593, %block1
  %bound1599 = icmp ult ptr %arrayidx16, %scevgep590
  %found.conflict600 = and i1 %bound0598, %bound1599
  %stride.check601 = icmp slt i32 %0, 0
  %39 = or i1 %found.conflict600, %stride.check601
  %conflict.rdx602 = or i1 %found.conflict596, %39
  %n.vec608 = and i64 %38, 2147483616
  %ind.end609 = trunc nuw nsw i64 %n.vec608 to i32
  %40 = shl nuw nsw i64 %n.vec608, 1
  %41 = shl nuw nsw i64 %n.vec608, 1
  %42 = shl nuw nsw i64 %n.vec608, 1
  %broadcast.splatinsert638 = insertelement <8 x i32> poison, i32 %conv49, i64 0
  %broadcast.splat639 = shufflevector <8 x i32> %broadcast.splatinsert638, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert644 = insertelement <8 x i32> poison, i32 %conv50, i64 0
  %broadcast.splat645 = shufflevector <8 x i32> %broadcast.splatinsert644, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert646 = insertelement <8 x i32> poison, i32 %shl.i.i, i64 0
  %broadcast.splat647 = shufflevector <8 x i32> %broadcast.splatinsert646, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert648 = insertelement <8 x i32> poison, i32 %total_scale, i64 0
  %broadcast.splat649 = shufflevector <8 x i32> %broadcast.splatinsert648, <8 x i32> poison, <8 x i32> zeroinitializer
  %cmp.n651 = icmp eq i64 %n.vec608, %38
  %43 = add nsw i32 %hor_block_size, -1
  br label %for.body.us.i

for.body.us.i:                                    ; preds = %for.body.us.i.preheader, %for.cond4.for.inc12_crit_edge.us.i
  %j.031.us.i = phi i32 [ %inc13.us.i, %for.cond4.for.inc12_crit_edge.us.i ], [ 0, %for.body.us.i.preheader ]
  %block.addr.030.us.i = phi ptr [ %add.ptr1.us.i, %for.cond4.for.inc12_crit_edge.us.i ], [ %block1, %for.body.us.i.preheader ]
  %cur_row.029.us.i = phi ptr [ %nxt_row.032.us.i, %for.cond4.for.inc12_crit_edge.us.i ], [ %arrayidx16, %for.body.us.i.preheader ]
  %nxt_row.032.us.i = getelementptr inbounds i16, ptr %cur_row.029.us.i, i64 %idx.ext.i200
  br i1 %min.iters.check605, label %for.body6.us.i.preheader, label %vector.memcheck589

vector.memcheck589:                               ; preds = %for.body.us.i
  br i1 %conflict.rdx602, label %for.body6.us.i.preheader, label %vector.ph606

vector.ph606:                                     ; preds = %vector.memcheck589
  %ind.end611 = getelementptr i8, ptr %block.addr.030.us.i, i64 %40
  %ind.end613 = getelementptr i8, ptr %nxt_row.032.us.i, i64 %41
  %ind.end615 = getelementptr i8, ptr %cur_row.029.us.i, i64 %42
  br label %vector.body617

vector.body617:                                   ; preds = %vector.body617, %vector.ph606
  %index618 = phi i64 [ 0, %vector.ph606 ], [ %index.next650, %vector.body617 ]
  %offset.idx619 = shl i64 %index618, 1
  %next.gep620 = getelementptr i8, ptr %block.addr.030.us.i, i64 %offset.idx619
  %offset.idx624 = shl i64 %index618, 1
  %next.gep625 = getelementptr i8, ptr %nxt_row.032.us.i, i64 %offset.idx624
  %offset.idx629 = shl i64 %index618, 1
  %next.gep630 = getelementptr i8, ptr %cur_row.029.us.i, i64 %offset.idx629
  %44 = getelementptr i8, ptr %next.gep630, i64 16
  %45 = getelementptr i8, ptr %next.gep630, i64 32
  %46 = getelementptr i8, ptr %next.gep630, i64 48
  %wide.load634 = load <8 x i16>, ptr %next.gep630, align 2, !alias.scope !313
  %wide.load635 = load <8 x i16>, ptr %44, align 2, !alias.scope !313
  %wide.load636 = load <8 x i16>, ptr %45, align 2, !alias.scope !313
  %wide.load637 = load <8 x i16>, ptr %46, align 2, !alias.scope !313
  %47 = zext <8 x i16> %wide.load634 to <8 x i32>
  %48 = zext <8 x i16> %wide.load635 to <8 x i32>
  %49 = zext <8 x i16> %wide.load636 to <8 x i32>
  %50 = zext <8 x i16> %wide.load637 to <8 x i32>
  %51 = mul nsw <8 x i32> %broadcast.splat639, %47
  %52 = mul nsw <8 x i32> %broadcast.splat639, %48
  %53 = mul nsw <8 x i32> %broadcast.splat639, %49
  %54 = mul nsw <8 x i32> %broadcast.splat639, %50
  %55 = getelementptr i8, ptr %next.gep625, i64 16
  %56 = getelementptr i8, ptr %next.gep625, i64 32
  %57 = getelementptr i8, ptr %next.gep625, i64 48
  %wide.load640 = load <8 x i16>, ptr %next.gep625, align 2, !alias.scope !316
  %wide.load641 = load <8 x i16>, ptr %55, align 2, !alias.scope !316
  %wide.load642 = load <8 x i16>, ptr %56, align 2, !alias.scope !316
  %wide.load643 = load <8 x i16>, ptr %57, align 2, !alias.scope !316
  %58 = zext <8 x i16> %wide.load640 to <8 x i32>
  %59 = zext <8 x i16> %wide.load641 to <8 x i32>
  %60 = zext <8 x i16> %wide.load642 to <8 x i32>
  %61 = zext <8 x i16> %wide.load643 to <8 x i32>
  %62 = mul nsw <8 x i32> %broadcast.splat645, %58
  %63 = mul nsw <8 x i32> %broadcast.splat645, %59
  %64 = mul nsw <8 x i32> %broadcast.splat645, %60
  %65 = mul nsw <8 x i32> %broadcast.splat645, %61
  %66 = add <8 x i32> %51, %broadcast.splat647
  %67 = add <8 x i32> %52, %broadcast.splat647
  %68 = add <8 x i32> %53, %broadcast.splat647
  %69 = add <8 x i32> %54, %broadcast.splat647
  %70 = add <8 x i32> %66, %62
  %71 = add <8 x i32> %67, %63
  %72 = add <8 x i32> %68, %64
  %73 = add <8 x i32> %69, %65
  %74 = ashr <8 x i32> %70, %broadcast.splat649
  %75 = ashr <8 x i32> %71, %broadcast.splat649
  %76 = ashr <8 x i32> %72, %broadcast.splat649
  %77 = ashr <8 x i32> %73, %broadcast.splat649
  %78 = trunc <8 x i32> %74 to <8 x i16>
  %79 = trunc <8 x i32> %75 to <8 x i16>
  %80 = trunc <8 x i32> %76 to <8 x i16>
  %81 = trunc <8 x i32> %77 to <8 x i16>
  %82 = getelementptr i8, ptr %next.gep620, i64 16
  %83 = getelementptr i8, ptr %next.gep620, i64 32
  %84 = getelementptr i8, ptr %next.gep620, i64 48
  store <8 x i16> %78, ptr %next.gep620, align 2, !alias.scope !318, !noalias !320
  store <8 x i16> %79, ptr %82, align 2, !alias.scope !318, !noalias !320
  store <8 x i16> %80, ptr %83, align 2, !alias.scope !318, !noalias !320
  store <8 x i16> %81, ptr %84, align 2, !alias.scope !318, !noalias !320
  %index.next650 = add nuw i64 %index618, 32
  %85 = icmp eq i64 %index.next650, %n.vec608
  br i1 %85, label %middle.block603, label %vector.body617, !llvm.loop !321

middle.block603:                                  ; preds = %vector.body617
  br i1 %cmp.n651, label %for.cond4.for.inc12_crit_edge.us.i, label %for.body6.us.i.preheader

for.body6.us.i.preheader:                         ; preds = %middle.block603, %vector.memcheck589, %for.body.us.i
  %i.026.us.i.ph = phi i32 [ 0, %vector.memcheck589 ], [ 0, %for.body.us.i ], [ %ind.end609, %middle.block603 ]
  %blk_line.025.us.i.ph = phi ptr [ %block.addr.030.us.i, %vector.memcheck589 ], [ %block.addr.030.us.i, %for.body.us.i ], [ %ind.end611, %middle.block603 ]
  %cur_line_p1.024.us.i.ph = phi ptr [ %nxt_row.032.us.i, %vector.memcheck589 ], [ %nxt_row.032.us.i, %for.body.us.i ], [ %ind.end613, %middle.block603 ]
  %cur_line.023.us.i.ph = phi ptr [ %cur_row.029.us.i, %vector.memcheck589 ], [ %cur_row.029.us.i, %for.body.us.i ], [ %ind.end615, %middle.block603 ]
  %86 = sub i32 %hor_block_size, %i.026.us.i.ph
  %xtraiter720 = and i32 %86, 1
  %lcmp.mod721.not = icmp eq i32 %xtraiter720, 0
  br i1 %lcmp.mod721.not, label %for.body6.us.i.prol.loopexit, label %for.body6.us.i.prol

for.body6.us.i.prol:                              ; preds = %for.body6.us.i.preheader
  %incdec.ptr.us.i.prol = getelementptr inbounds i8, ptr %cur_line.023.us.i.ph, i64 2
  %87 = load i16, ptr %cur_line.023.us.i.ph, align 2
  %conv.us.i.prol = zext i16 %87 to i32
  %mul.us.i.prol = mul nsw i32 %conv49, %conv.us.i.prol
  %incdec.ptr7.us.i.prol = getelementptr inbounds i8, ptr %cur_line_p1.024.us.i.ph, i64 2
  %88 = load i16, ptr %cur_line_p1.024.us.i.ph, align 2
  %conv8.us.i.prol = zext i16 %88 to i32
  %mul9.us.i.prol = mul nsw i32 %conv50, %conv8.us.i.prol
  %add.us.i.prol = add i32 %mul.us.i.prol, %shl.i.i
  %add.i.us.i.prol = add i32 %add.us.i.prol, %mul9.us.i.prol
  %shr.i.us.i.prol = ashr i32 %add.i.us.i.prol, %total_scale
  %conv10.us.i.prol = trunc i32 %shr.i.us.i.prol to i16
  %incdec.ptr11.us.i.prol = getelementptr inbounds i8, ptr %blk_line.025.us.i.ph, i64 2
  store i16 %conv10.us.i.prol, ptr %blk_line.025.us.i.ph, align 2
  %inc.us.i.prol = add nuw nsw i32 %i.026.us.i.ph, 1
  br label %for.body6.us.i.prol.loopexit

for.body6.us.i.prol.loopexit:                     ; preds = %for.body6.us.i.prol, %for.body6.us.i.preheader
  %i.026.us.i.unr = phi i32 [ %i.026.us.i.ph, %for.body6.us.i.preheader ], [ %inc.us.i.prol, %for.body6.us.i.prol ]
  %blk_line.025.us.i.unr = phi ptr [ %blk_line.025.us.i.ph, %for.body6.us.i.preheader ], [ %incdec.ptr11.us.i.prol, %for.body6.us.i.prol ]
  %cur_line_p1.024.us.i.unr = phi ptr [ %cur_line_p1.024.us.i.ph, %for.body6.us.i.preheader ], [ %incdec.ptr7.us.i.prol, %for.body6.us.i.prol ]
  %cur_line.023.us.i.unr = phi ptr [ %cur_line.023.us.i.ph, %for.body6.us.i.preheader ], [ %incdec.ptr.us.i.prol, %for.body6.us.i.prol ]
  %89 = icmp eq i32 %i.026.us.i.ph, %43
  br i1 %89, label %for.cond4.for.inc12_crit_edge.us.i, label %for.body6.us.i

for.body6.us.i:                                   ; preds = %for.body6.us.i.prol.loopexit, %for.body6.us.i
  %i.026.us.i = phi i32 [ %inc.us.i.1, %for.body6.us.i ], [ %i.026.us.i.unr, %for.body6.us.i.prol.loopexit ]
  %blk_line.025.us.i = phi ptr [ %incdec.ptr11.us.i.1, %for.body6.us.i ], [ %blk_line.025.us.i.unr, %for.body6.us.i.prol.loopexit ]
  %cur_line_p1.024.us.i = phi ptr [ %incdec.ptr7.us.i.1, %for.body6.us.i ], [ %cur_line_p1.024.us.i.unr, %for.body6.us.i.prol.loopexit ]
  %cur_line.023.us.i = phi ptr [ %incdec.ptr.us.i.1, %for.body6.us.i ], [ %cur_line.023.us.i.unr, %for.body6.us.i.prol.loopexit ]
  %incdec.ptr.us.i = getelementptr inbounds i8, ptr %cur_line.023.us.i, i64 2
  %90 = load i16, ptr %cur_line.023.us.i, align 2
  %conv.us.i = zext i16 %90 to i32
  %mul.us.i = mul nsw i32 %conv49, %conv.us.i
  %incdec.ptr7.us.i = getelementptr inbounds i8, ptr %cur_line_p1.024.us.i, i64 2
  %91 = load i16, ptr %cur_line_p1.024.us.i, align 2
  %conv8.us.i = zext i16 %91 to i32
  %mul9.us.i = mul nsw i32 %conv50, %conv8.us.i
  %add.us.i = add i32 %mul.us.i, %shl.i.i
  %add.i.us.i = add i32 %add.us.i, %mul9.us.i
  %shr.i.us.i = ashr i32 %add.i.us.i, %total_scale
  %conv10.us.i = trunc i32 %shr.i.us.i to i16
  %incdec.ptr11.us.i = getelementptr inbounds i8, ptr %blk_line.025.us.i, i64 2
  store i16 %conv10.us.i, ptr %blk_line.025.us.i, align 2
  %incdec.ptr.us.i.1 = getelementptr inbounds i8, ptr %cur_line.023.us.i, i64 4
  %92 = load i16, ptr %incdec.ptr.us.i, align 2
  %conv.us.i.1 = zext i16 %92 to i32
  %mul.us.i.1 = mul nsw i32 %conv49, %conv.us.i.1
  %incdec.ptr7.us.i.1 = getelementptr inbounds i8, ptr %cur_line_p1.024.us.i, i64 4
  %93 = load i16, ptr %incdec.ptr7.us.i, align 2
  %conv8.us.i.1 = zext i16 %93 to i32
  %mul9.us.i.1 = mul nsw i32 %conv50, %conv8.us.i.1
  %add.us.i.1 = add i32 %mul.us.i.1, %shl.i.i
  %add.i.us.i.1 = add i32 %add.us.i.1, %mul9.us.i.1
  %shr.i.us.i.1 = ashr i32 %add.i.us.i.1, %total_scale
  %conv10.us.i.1 = trunc i32 %shr.i.us.i.1 to i16
  %incdec.ptr11.us.i.1 = getelementptr inbounds i8, ptr %blk_line.025.us.i, i64 4
  store i16 %conv10.us.i.1, ptr %incdec.ptr11.us.i, align 2
  %inc.us.i.1 = add nuw nsw i32 %i.026.us.i, 2
  %exitcond.not.i.1 = icmp eq i32 %inc.us.i.1, %hor_block_size
  br i1 %exitcond.not.i.1, label %for.cond4.for.inc12_crit_edge.us.i, label %for.body6.us.i, !llvm.loop !322

for.cond4.for.inc12_crit_edge.us.i:               ; preds = %for.body6.us.i.prol.loopexit, %for.body6.us.i, %middle.block603
  %add.ptr1.us.i = getelementptr inbounds i8, ptr %block.addr.030.us.i, i64 32
  %inc13.us.i = add nuw nsw i32 %j.031.us.i, 1
  %exitcond34.not.i = icmp eq i32 %inc13.us.i, %vert_block_size
  br i1 %exitcond34.not.i, label %for.body.us.i208.preheader, label %for.body.us.i

for.body.us.i208.preheader:                       ; preds = %for.cond4.for.inc12_crit_edge.us.i
  %94 = add nsw i32 %vert_block_size, -1
  %95 = zext i32 %94 to i64
  %96 = shl nuw nsw i64 %95, 5
  %97 = add nsw i32 %hor_block_size, -1
  %98 = zext i32 %97 to i64
  %99 = shl nuw nsw i64 %98, 1
  %100 = getelementptr i8, ptr %block2, i64 %96
  %101 = getelementptr i8, ptr %100, i64 %99
  %scevgep653 = getelementptr i8, ptr %101, i64 2
  %102 = shl nsw i64 %idxprom15, 1
  %103 = shl nsw i64 %idx.ext.i200, 1
  %104 = getelementptr i8, ptr %9, i64 %102
  %scevgep654 = getelementptr i8, ptr %104, i64 %103
  %105 = shl nuw nsw i64 %95, 1
  %106 = add nuw nsw i64 %105, 2
  %107 = mul i64 %106, %idx.ext.i200
  %108 = getelementptr i8, ptr %9, i64 %107
  %109 = getelementptr i8, ptr %108, i64 %102
  %110 = getelementptr i8, ptr %109, i64 %99
  %scevgep655 = getelementptr i8, ptr %110, i64 2
  %111 = mul nsw i64 %idx.ext.i200, %95
  %112 = add i64 %111, %idxprom15
  %113 = add i64 %112, %98
  %114 = shl i64 %113, 1
  %115 = getelementptr i8, ptr %9, i64 %114
  %scevgep656 = getelementptr i8, ptr %115, i64 2
  %116 = zext nneg i32 %hor_block_size to i64
  %min.iters.check668 = icmp ult i32 %hor_block_size, 32
  %bound0657 = icmp ugt ptr %scevgep655, %block2
  %bound1658 = icmp ult ptr %scevgep654, %scevgep653
  %found.conflict659 = and i1 %bound0657, %bound1658
  %bound0661 = icmp ugt ptr %scevgep656, %block2
  %bound1662 = icmp ult ptr %arrayidx22, %scevgep653
  %found.conflict663 = and i1 %bound0661, %bound1662
  %stride.check664 = icmp slt i32 %0, 0
  %117 = or i1 %found.conflict663, %stride.check664
  %conflict.rdx665 = or i1 %found.conflict659, %117
  %n.vec671 = and i64 %116, 2147483616
  %ind.end672 = trunc nuw nsw i64 %n.vec671 to i32
  %118 = shl nuw nsw i64 %n.vec671, 1
  %119 = shl nuw nsw i64 %n.vec671, 1
  %120 = shl nuw nsw i64 %n.vec671, 1
  %broadcast.splatinsert701 = insertelement <8 x i32> poison, i32 %conv49, i64 0
  %broadcast.splat702 = shufflevector <8 x i32> %broadcast.splatinsert701, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert707 = insertelement <8 x i32> poison, i32 %conv50, i64 0
  %broadcast.splat708 = shufflevector <8 x i32> %broadcast.splatinsert707, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert709 = insertelement <8 x i32> poison, i32 %shl.i.i, i64 0
  %broadcast.splat710 = shufflevector <8 x i32> %broadcast.splatinsert709, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert711 = insertelement <8 x i32> poison, i32 %total_scale, i64 0
  %broadcast.splat712 = shufflevector <8 x i32> %broadcast.splatinsert711, <8 x i32> poison, <8 x i32> zeroinitializer
  %cmp.n714 = icmp eq i64 %n.vec671, %116
  %121 = add nsw i32 %hor_block_size, -1
  br label %for.body.us.i208

for.body.us.i208:                                 ; preds = %for.body.us.i208.preheader, %for.cond4.for.inc12_crit_edge.us.i231
  %j.031.us.i209 = phi i32 [ %inc13.us.i233, %for.cond4.for.inc12_crit_edge.us.i231 ], [ 0, %for.body.us.i208.preheader ]
  %block.addr.030.us.i210 = phi ptr [ %add.ptr1.us.i232, %for.cond4.for.inc12_crit_edge.us.i231 ], [ %block2, %for.body.us.i208.preheader ]
  %cur_row.029.us.i211 = phi ptr [ %nxt_row.032.us.i212, %for.cond4.for.inc12_crit_edge.us.i231 ], [ %arrayidx22, %for.body.us.i208.preheader ]
  %nxt_row.032.us.i212 = getelementptr inbounds i16, ptr %cur_row.029.us.i211, i64 %idx.ext.i200
  br i1 %min.iters.check668, label %for.body6.us.i213.preheader, label %vector.memcheck652

vector.memcheck652:                               ; preds = %for.body.us.i208
  br i1 %conflict.rdx665, label %for.body6.us.i213.preheader, label %vector.ph669

vector.ph669:                                     ; preds = %vector.memcheck652
  %ind.end674 = getelementptr i8, ptr %block.addr.030.us.i210, i64 %118
  %ind.end676 = getelementptr i8, ptr %nxt_row.032.us.i212, i64 %119
  %ind.end678 = getelementptr i8, ptr %cur_row.029.us.i211, i64 %120
  br label %vector.body680

vector.body680:                                   ; preds = %vector.body680, %vector.ph669
  %index681 = phi i64 [ 0, %vector.ph669 ], [ %index.next713, %vector.body680 ]
  %offset.idx682 = shl i64 %index681, 1
  %next.gep683 = getelementptr i8, ptr %block.addr.030.us.i210, i64 %offset.idx682
  %offset.idx687 = shl i64 %index681, 1
  %next.gep688 = getelementptr i8, ptr %nxt_row.032.us.i212, i64 %offset.idx687
  %offset.idx692 = shl i64 %index681, 1
  %next.gep693 = getelementptr i8, ptr %cur_row.029.us.i211, i64 %offset.idx692
  %122 = getelementptr i8, ptr %next.gep693, i64 16
  %123 = getelementptr i8, ptr %next.gep693, i64 32
  %124 = getelementptr i8, ptr %next.gep693, i64 48
  %wide.load697 = load <8 x i16>, ptr %next.gep693, align 2, !alias.scope !323
  %wide.load698 = load <8 x i16>, ptr %122, align 2, !alias.scope !323
  %wide.load699 = load <8 x i16>, ptr %123, align 2, !alias.scope !323
  %wide.load700 = load <8 x i16>, ptr %124, align 2, !alias.scope !323
  %125 = zext <8 x i16> %wide.load697 to <8 x i32>
  %126 = zext <8 x i16> %wide.load698 to <8 x i32>
  %127 = zext <8 x i16> %wide.load699 to <8 x i32>
  %128 = zext <8 x i16> %wide.load700 to <8 x i32>
  %129 = mul nsw <8 x i32> %broadcast.splat702, %125
  %130 = mul nsw <8 x i32> %broadcast.splat702, %126
  %131 = mul nsw <8 x i32> %broadcast.splat702, %127
  %132 = mul nsw <8 x i32> %broadcast.splat702, %128
  %133 = getelementptr i8, ptr %next.gep688, i64 16
  %134 = getelementptr i8, ptr %next.gep688, i64 32
  %135 = getelementptr i8, ptr %next.gep688, i64 48
  %wide.load703 = load <8 x i16>, ptr %next.gep688, align 2, !alias.scope !326
  %wide.load704 = load <8 x i16>, ptr %133, align 2, !alias.scope !326
  %wide.load705 = load <8 x i16>, ptr %134, align 2, !alias.scope !326
  %wide.load706 = load <8 x i16>, ptr %135, align 2, !alias.scope !326
  %136 = zext <8 x i16> %wide.load703 to <8 x i32>
  %137 = zext <8 x i16> %wide.load704 to <8 x i32>
  %138 = zext <8 x i16> %wide.load705 to <8 x i32>
  %139 = zext <8 x i16> %wide.load706 to <8 x i32>
  %140 = mul nsw <8 x i32> %broadcast.splat708, %136
  %141 = mul nsw <8 x i32> %broadcast.splat708, %137
  %142 = mul nsw <8 x i32> %broadcast.splat708, %138
  %143 = mul nsw <8 x i32> %broadcast.splat708, %139
  %144 = add <8 x i32> %129, %broadcast.splat710
  %145 = add <8 x i32> %130, %broadcast.splat710
  %146 = add <8 x i32> %131, %broadcast.splat710
  %147 = add <8 x i32> %132, %broadcast.splat710
  %148 = add <8 x i32> %144, %140
  %149 = add <8 x i32> %145, %141
  %150 = add <8 x i32> %146, %142
  %151 = add <8 x i32> %147, %143
  %152 = ashr <8 x i32> %148, %broadcast.splat712
  %153 = ashr <8 x i32> %149, %broadcast.splat712
  %154 = ashr <8 x i32> %150, %broadcast.splat712
  %155 = ashr <8 x i32> %151, %broadcast.splat712
  %156 = trunc <8 x i32> %152 to <8 x i16>
  %157 = trunc <8 x i32> %153 to <8 x i16>
  %158 = trunc <8 x i32> %154 to <8 x i16>
  %159 = trunc <8 x i32> %155 to <8 x i16>
  %160 = getelementptr i8, ptr %next.gep683, i64 16
  %161 = getelementptr i8, ptr %next.gep683, i64 32
  %162 = getelementptr i8, ptr %next.gep683, i64 48
  store <8 x i16> %156, ptr %next.gep683, align 2, !alias.scope !328, !noalias !330
  store <8 x i16> %157, ptr %160, align 2, !alias.scope !328, !noalias !330
  store <8 x i16> %158, ptr %161, align 2, !alias.scope !328, !noalias !330
  store <8 x i16> %159, ptr %162, align 2, !alias.scope !328, !noalias !330
  %index.next713 = add nuw i64 %index681, 32
  %163 = icmp eq i64 %index.next713, %n.vec671
  br i1 %163, label %middle.block666, label %vector.body680, !llvm.loop !331

middle.block666:                                  ; preds = %vector.body680
  br i1 %cmp.n714, label %for.cond4.for.inc12_crit_edge.us.i231, label %for.body6.us.i213.preheader

for.body6.us.i213.preheader:                      ; preds = %middle.block666, %vector.memcheck652, %for.body.us.i208
  %i.026.us.i214.ph = phi i32 [ 0, %vector.memcheck652 ], [ 0, %for.body.us.i208 ], [ %ind.end672, %middle.block666 ]
  %blk_line.025.us.i215.ph = phi ptr [ %block.addr.030.us.i210, %vector.memcheck652 ], [ %block.addr.030.us.i210, %for.body.us.i208 ], [ %ind.end674, %middle.block666 ]
  %cur_line_p1.024.us.i216.ph = phi ptr [ %nxt_row.032.us.i212, %vector.memcheck652 ], [ %nxt_row.032.us.i212, %for.body.us.i208 ], [ %ind.end676, %middle.block666 ]
  %cur_line.023.us.i217.ph = phi ptr [ %cur_row.029.us.i211, %vector.memcheck652 ], [ %cur_row.029.us.i211, %for.body.us.i208 ], [ %ind.end678, %middle.block666 ]
  %164 = sub i32 %hor_block_size, %i.026.us.i214.ph
  %xtraiter722 = and i32 %164, 1
  %lcmp.mod723.not = icmp eq i32 %xtraiter722, 0
  br i1 %lcmp.mod723.not, label %for.body6.us.i213.prol.loopexit, label %for.body6.us.i213.prol

for.body6.us.i213.prol:                           ; preds = %for.body6.us.i213.preheader
  %incdec.ptr.us.i218.prol = getelementptr inbounds i8, ptr %cur_line.023.us.i217.ph, i64 2
  %165 = load i16, ptr %cur_line.023.us.i217.ph, align 2
  %conv.us.i219.prol = zext i16 %165 to i32
  %mul.us.i220.prol = mul nsw i32 %conv49, %conv.us.i219.prol
  %incdec.ptr7.us.i221.prol = getelementptr inbounds i8, ptr %cur_line_p1.024.us.i216.ph, i64 2
  %166 = load i16, ptr %cur_line_p1.024.us.i216.ph, align 2
  %conv8.us.i222.prol = zext i16 %166 to i32
  %mul9.us.i223.prol = mul nsw i32 %conv50, %conv8.us.i222.prol
  %add.us.i224.prol = add i32 %mul.us.i220.prol, %shl.i.i
  %add.i.us.i225.prol = add i32 %add.us.i224.prol, %mul9.us.i223.prol
  %shr.i.us.i226.prol = ashr i32 %add.i.us.i225.prol, %total_scale
  %conv10.us.i227.prol = trunc i32 %shr.i.us.i226.prol to i16
  %incdec.ptr11.us.i228.prol = getelementptr inbounds i8, ptr %blk_line.025.us.i215.ph, i64 2
  store i16 %conv10.us.i227.prol, ptr %blk_line.025.us.i215.ph, align 2
  %inc.us.i229.prol = add nuw nsw i32 %i.026.us.i214.ph, 1
  br label %for.body6.us.i213.prol.loopexit

for.body6.us.i213.prol.loopexit:                  ; preds = %for.body6.us.i213.prol, %for.body6.us.i213.preheader
  %i.026.us.i214.unr = phi i32 [ %i.026.us.i214.ph, %for.body6.us.i213.preheader ], [ %inc.us.i229.prol, %for.body6.us.i213.prol ]
  %blk_line.025.us.i215.unr = phi ptr [ %blk_line.025.us.i215.ph, %for.body6.us.i213.preheader ], [ %incdec.ptr11.us.i228.prol, %for.body6.us.i213.prol ]
  %cur_line_p1.024.us.i216.unr = phi ptr [ %cur_line_p1.024.us.i216.ph, %for.body6.us.i213.preheader ], [ %incdec.ptr7.us.i221.prol, %for.body6.us.i213.prol ]
  %cur_line.023.us.i217.unr = phi ptr [ %cur_line.023.us.i217.ph, %for.body6.us.i213.preheader ], [ %incdec.ptr.us.i218.prol, %for.body6.us.i213.prol ]
  %167 = icmp eq i32 %i.026.us.i214.ph, %121
  br i1 %167, label %for.cond4.for.inc12_crit_edge.us.i231, label %for.body6.us.i213

for.body6.us.i213:                                ; preds = %for.body6.us.i213.prol.loopexit, %for.body6.us.i213
  %i.026.us.i214 = phi i32 [ %inc.us.i229.1, %for.body6.us.i213 ], [ %i.026.us.i214.unr, %for.body6.us.i213.prol.loopexit ]
  %blk_line.025.us.i215 = phi ptr [ %incdec.ptr11.us.i228.1, %for.body6.us.i213 ], [ %blk_line.025.us.i215.unr, %for.body6.us.i213.prol.loopexit ]
  %cur_line_p1.024.us.i216 = phi ptr [ %incdec.ptr7.us.i221.1, %for.body6.us.i213 ], [ %cur_line_p1.024.us.i216.unr, %for.body6.us.i213.prol.loopexit ]
  %cur_line.023.us.i217 = phi ptr [ %incdec.ptr.us.i218.1, %for.body6.us.i213 ], [ %cur_line.023.us.i217.unr, %for.body6.us.i213.prol.loopexit ]
  %incdec.ptr.us.i218 = getelementptr inbounds i8, ptr %cur_line.023.us.i217, i64 2
  %168 = load i16, ptr %cur_line.023.us.i217, align 2
  %conv.us.i219 = zext i16 %168 to i32
  %mul.us.i220 = mul nsw i32 %conv49, %conv.us.i219
  %incdec.ptr7.us.i221 = getelementptr inbounds i8, ptr %cur_line_p1.024.us.i216, i64 2
  %169 = load i16, ptr %cur_line_p1.024.us.i216, align 2
  %conv8.us.i222 = zext i16 %169 to i32
  %mul9.us.i223 = mul nsw i32 %conv50, %conv8.us.i222
  %add.us.i224 = add i32 %mul.us.i220, %shl.i.i
  %add.i.us.i225 = add i32 %add.us.i224, %mul9.us.i223
  %shr.i.us.i226 = ashr i32 %add.i.us.i225, %total_scale
  %conv10.us.i227 = trunc i32 %shr.i.us.i226 to i16
  %incdec.ptr11.us.i228 = getelementptr inbounds i8, ptr %blk_line.025.us.i215, i64 2
  store i16 %conv10.us.i227, ptr %blk_line.025.us.i215, align 2
  %incdec.ptr.us.i218.1 = getelementptr inbounds i8, ptr %cur_line.023.us.i217, i64 4
  %170 = load i16, ptr %incdec.ptr.us.i218, align 2
  %conv.us.i219.1 = zext i16 %170 to i32
  %mul.us.i220.1 = mul nsw i32 %conv49, %conv.us.i219.1
  %incdec.ptr7.us.i221.1 = getelementptr inbounds i8, ptr %cur_line_p1.024.us.i216, i64 4
  %171 = load i16, ptr %incdec.ptr7.us.i221, align 2
  %conv8.us.i222.1 = zext i16 %171 to i32
  %mul9.us.i223.1 = mul nsw i32 %conv50, %conv8.us.i222.1
  %add.us.i224.1 = add i32 %mul.us.i220.1, %shl.i.i
  %add.i.us.i225.1 = add i32 %add.us.i224.1, %mul9.us.i223.1
  %shr.i.us.i226.1 = ashr i32 %add.i.us.i225.1, %total_scale
  %conv10.us.i227.1 = trunc i32 %shr.i.us.i226.1 to i16
  %incdec.ptr11.us.i228.1 = getelementptr inbounds i8, ptr %blk_line.025.us.i215, i64 4
  store i16 %conv10.us.i227.1, ptr %incdec.ptr11.us.i228, align 2
  %inc.us.i229.1 = add nuw nsw i32 %i.026.us.i214, 2
  %exitcond.not.i230.1 = icmp eq i32 %inc.us.i229.1, %hor_block_size
  br i1 %exitcond.not.i230.1, label %for.cond4.for.inc12_crit_edge.us.i231, label %for.body6.us.i213, !llvm.loop !332

for.cond4.for.inc12_crit_edge.us.i231:            ; preds = %for.body6.us.i213.prol.loopexit, %for.body6.us.i213, %middle.block666
  %add.ptr1.us.i232 = getelementptr inbounds i8, ptr %block.addr.030.us.i210, i64 32
  %inc13.us.i233 = add nuw nsw i32 %j.031.us.i209, 1
  %exitcond34.not.i234 = icmp eq i32 %inc13.us.i233, %vert_block_size
  br i1 %exitcond34.not.i234, label %if.end91, label %for.body.us.i208

if.else53:                                        ; preds = %if.else29
  br i1 %cmp26, label %if.then57, label %if.else66

if.then57:                                        ; preds = %if.else53
  %sext181 = mul i32 %sext, %add33
  %conv63 = ashr exact i32 %sext181, 16
  %cmp24.i = icmp sgt i32 %vert_block_size, 0
  br i1 %cmp24.i, label %for.body.lr.ph.i236, label %if.end91

for.body.lr.ph.i236:                              ; preds = %if.then57
  %idx.ext.i237 = sext i32 %0 to i64
  %cmp419.i = icmp sgt i32 %hor_block_size, 0
  %sub.i.i238 = add nsw i32 %total_scale, -1
  %shl.i.i239 = shl nuw i32 1, %sub.i.i238
  br i1 %cmp419.i, label %for.body.us.i240.preheader, label %if.end91

for.body.us.i240.preheader:                       ; preds = %for.body.lr.ph.i236
  %172 = add nsw i32 %vert_block_size, -1
  %173 = zext i32 %172 to i64
  %174 = shl nuw nsw i64 %173, 5
  %175 = add nsw i32 %hor_block_size, -1
  %176 = zext i32 %175 to i64
  %177 = shl nuw nsw i64 %176, 1
  %178 = getelementptr i8, ptr %block1, i64 %174
  %179 = getelementptr i8, ptr %178, i64 %177
  %scevgep492 = getelementptr i8, ptr %179, i64 2
  %180 = mul nsw i64 %idx.ext.i237, %173
  %181 = add i64 %180, %idxprom15
  %182 = add i64 %181, %176
  %183 = shl i64 %182, 1
  %184 = getelementptr i8, ptr %7, i64 %183
  %scevgep493 = getelementptr i8, ptr %184, i64 4
  %185 = zext nneg i32 %hor_block_size to i64
  %min.iters.check500 = icmp ult i32 %hor_block_size, 32
  %bound0494 = icmp ugt ptr %scevgep493, %block1
  %bound1495 = icmp ult ptr %arrayidx16, %scevgep492
  %found.conflict496 = and i1 %bound0494, %bound1495
  %stride.check497 = icmp slt i32 %0, 0
  %186 = or i1 %found.conflict496, %stride.check497
  %n.vec503 = and i64 %185, 2147483616
  %ind.end504 = trunc nuw nsw i64 %n.vec503 to i32
  %187 = shl nuw nsw i64 %n.vec503, 1
  %188 = shl nuw nsw i64 %n.vec503, 1
  %broadcast.splatinsert526 = insertelement <8 x i32> poison, i32 %conv49, i64 0
  %broadcast.splat527 = shufflevector <8 x i32> %broadcast.splatinsert526, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert532 = insertelement <8 x i32> poison, i32 %conv63, i64 0
  %broadcast.splat533 = shufflevector <8 x i32> %broadcast.splatinsert532, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert534 = insertelement <8 x i32> poison, i32 %shl.i.i239, i64 0
  %broadcast.splat535 = shufflevector <8 x i32> %broadcast.splatinsert534, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert536 = insertelement <8 x i32> poison, i32 %total_scale, i64 0
  %broadcast.splat537 = shufflevector <8 x i32> %broadcast.splatinsert536, <8 x i32> poison, <8 x i32> zeroinitializer
  %cmp.n539 = icmp eq i64 %n.vec503, %185
  %189 = add nsw i32 %hor_block_size, -1
  br label %for.body.us.i240

for.body.us.i240:                                 ; preds = %for.body.us.i240.preheader, %for.cond3.for.inc11_crit_edge.us.i
  %j.027.us.i = phi i32 [ %inc12.us.i, %for.cond3.for.inc11_crit_edge.us.i ], [ 0, %for.body.us.i240.preheader ]
  %block.addr.026.us.i = phi ptr [ %add.ptr1.us.i241, %for.cond3.for.inc11_crit_edge.us.i ], [ %block1, %for.body.us.i240.preheader ]
  %cur_row.025.us.i = phi ptr [ %add.ptr2.us.i, %for.cond3.for.inc11_crit_edge.us.i ], [ %arrayidx16, %for.body.us.i240.preheader ]
  %brmerge = select i1 %min.iters.check500, i1 true, i1 %186
  br i1 %brmerge, label %for.body5.us.i.preheader, label %vector.ph501

vector.ph501:                                     ; preds = %for.body.us.i240
  %ind.end506 = getelementptr i8, ptr %block.addr.026.us.i, i64 %187
  %ind.end508 = getelementptr i8, ptr %cur_row.025.us.i, i64 %188
  br label %vector.body510

vector.body510:                                   ; preds = %vector.body510, %vector.ph501
  %index511 = phi i64 [ 0, %vector.ph501 ], [ %index.next538, %vector.body510 ]
  %offset.idx512 = shl i64 %index511, 1
  %next.gep513 = getelementptr i8, ptr %block.addr.026.us.i, i64 %offset.idx512
  %offset.idx517 = shl i64 %index511, 1
  %next.gep518 = getelementptr i8, ptr %cur_row.025.us.i, i64 %offset.idx517
  %190 = getelementptr i8, ptr %next.gep518, i64 2
  %191 = getelementptr i8, ptr %next.gep518, i64 16
  %192 = getelementptr i8, ptr %next.gep518, i64 32
  %193 = getelementptr i8, ptr %next.gep518, i64 48
  %wide.load522 = load <8 x i16>, ptr %next.gep518, align 2, !alias.scope !333
  %wide.load523 = load <8 x i16>, ptr %191, align 2, !alias.scope !333
  %wide.load524 = load <8 x i16>, ptr %192, align 2, !alias.scope !333
  %wide.load525 = load <8 x i16>, ptr %193, align 2, !alias.scope !333
  %194 = zext <8 x i16> %wide.load522 to <8 x i32>
  %195 = zext <8 x i16> %wide.load523 to <8 x i32>
  %196 = zext <8 x i16> %wide.load524 to <8 x i32>
  %197 = zext <8 x i16> %wide.load525 to <8 x i32>
  %198 = mul nsw <8 x i32> %broadcast.splat527, %194
  %199 = mul nsw <8 x i32> %broadcast.splat527, %195
  %200 = mul nsw <8 x i32> %broadcast.splat527, %196
  %201 = mul nsw <8 x i32> %broadcast.splat527, %197
  %202 = getelementptr i8, ptr %next.gep518, i64 18
  %203 = getelementptr i8, ptr %next.gep518, i64 34
  %204 = getelementptr i8, ptr %next.gep518, i64 50
  %wide.load528 = load <8 x i16>, ptr %190, align 2, !alias.scope !333
  %wide.load529 = load <8 x i16>, ptr %202, align 2, !alias.scope !333
  %wide.load530 = load <8 x i16>, ptr %203, align 2, !alias.scope !333
  %wide.load531 = load <8 x i16>, ptr %204, align 2, !alias.scope !333
  %205 = zext <8 x i16> %wide.load528 to <8 x i32>
  %206 = zext <8 x i16> %wide.load529 to <8 x i32>
  %207 = zext <8 x i16> %wide.load530 to <8 x i32>
  %208 = zext <8 x i16> %wide.load531 to <8 x i32>
  %209 = mul nsw <8 x i32> %broadcast.splat533, %205
  %210 = mul nsw <8 x i32> %broadcast.splat533, %206
  %211 = mul nsw <8 x i32> %broadcast.splat533, %207
  %212 = mul nsw <8 x i32> %broadcast.splat533, %208
  %213 = add <8 x i32> %198, %broadcast.splat535
  %214 = add <8 x i32> %199, %broadcast.splat535
  %215 = add <8 x i32> %200, %broadcast.splat535
  %216 = add <8 x i32> %201, %broadcast.splat535
  %217 = add <8 x i32> %213, %209
  %218 = add <8 x i32> %214, %210
  %219 = add <8 x i32> %215, %211
  %220 = add <8 x i32> %216, %212
  %221 = ashr <8 x i32> %217, %broadcast.splat537
  %222 = ashr <8 x i32> %218, %broadcast.splat537
  %223 = ashr <8 x i32> %219, %broadcast.splat537
  %224 = ashr <8 x i32> %220, %broadcast.splat537
  %225 = trunc <8 x i32> %221 to <8 x i16>
  %226 = trunc <8 x i32> %222 to <8 x i16>
  %227 = trunc <8 x i32> %223 to <8 x i16>
  %228 = trunc <8 x i32> %224 to <8 x i16>
  %229 = getelementptr i8, ptr %next.gep513, i64 16
  %230 = getelementptr i8, ptr %next.gep513, i64 32
  %231 = getelementptr i8, ptr %next.gep513, i64 48
  store <8 x i16> %225, ptr %next.gep513, align 2, !alias.scope !336, !noalias !333
  store <8 x i16> %226, ptr %229, align 2, !alias.scope !336, !noalias !333
  store <8 x i16> %227, ptr %230, align 2, !alias.scope !336, !noalias !333
  store <8 x i16> %228, ptr %231, align 2, !alias.scope !336, !noalias !333
  %index.next538 = add nuw i64 %index511, 32
  %232 = icmp eq i64 %index.next538, %n.vec503
  br i1 %232, label %middle.block498, label %vector.body510, !llvm.loop !338

middle.block498:                                  ; preds = %vector.body510
  br i1 %cmp.n539, label %for.cond3.for.inc11_crit_edge.us.i, label %for.body5.us.i.preheader

for.body5.us.i.preheader:                         ; preds = %for.body.us.i240, %middle.block498
  %i.023.us.i.ph = phi i32 [ 0, %for.body.us.i240 ], [ %ind.end504, %middle.block498 ]
  %blk_line.022.us.i.ph = phi ptr [ %block.addr.026.us.i, %for.body.us.i240 ], [ %ind.end506, %middle.block498 ]
  %cur_row.0.pn21.us.i.ph = phi ptr [ %cur_row.025.us.i, %for.body.us.i240 ], [ %ind.end508, %middle.block498 ]
  %233 = sub i32 %hor_block_size, %i.023.us.i.ph
  %xtraiter = and i32 %233, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.body5.us.i.prol.loopexit, label %for.body5.us.i.prol

for.body5.us.i.prol:                              ; preds = %for.body5.us.i.preheader
  %cur_line_p1.0.us.i.prol = getelementptr i8, ptr %cur_row.0.pn21.us.i.ph, i64 2
  %234 = load i16, ptr %cur_row.0.pn21.us.i.ph, align 2
  %conv.us.i242.prol = zext i16 %234 to i32
  %mul.us.i243.prol = mul nsw i32 %conv49, %conv.us.i242.prol
  %235 = load i16, ptr %cur_line_p1.0.us.i.prol, align 2
  %conv7.us.i.prol = zext i16 %235 to i32
  %mul8.us.i.prol = mul nsw i32 %conv63, %conv7.us.i.prol
  %add.us.i244.prol = add i32 %mul.us.i243.prol, %shl.i.i239
  %add.i.us.i245.prol = add i32 %add.us.i244.prol, %mul8.us.i.prol
  %shr.i.us.i246.prol = ashr i32 %add.i.us.i245.prol, %total_scale
  %conv9.us.i.prol = trunc i32 %shr.i.us.i246.prol to i16
  %incdec.ptr10.us.i.prol = getelementptr inbounds i8, ptr %blk_line.022.us.i.ph, i64 2
  store i16 %conv9.us.i.prol, ptr %blk_line.022.us.i.ph, align 2
  %inc.us.i247.prol = add nuw nsw i32 %i.023.us.i.ph, 1
  br label %for.body5.us.i.prol.loopexit

for.body5.us.i.prol.loopexit:                     ; preds = %for.body5.us.i.prol, %for.body5.us.i.preheader
  %i.023.us.i.unr = phi i32 [ %i.023.us.i.ph, %for.body5.us.i.preheader ], [ %inc.us.i247.prol, %for.body5.us.i.prol ]
  %blk_line.022.us.i.unr = phi ptr [ %blk_line.022.us.i.ph, %for.body5.us.i.preheader ], [ %incdec.ptr10.us.i.prol, %for.body5.us.i.prol ]
  %cur_row.0.pn21.us.i.unr = phi ptr [ %cur_row.0.pn21.us.i.ph, %for.body5.us.i.preheader ], [ %cur_line_p1.0.us.i.prol, %for.body5.us.i.prol ]
  %236 = icmp eq i32 %i.023.us.i.ph, %189
  br i1 %236, label %for.cond3.for.inc11_crit_edge.us.i, label %for.body5.us.i

for.body5.us.i:                                   ; preds = %for.body5.us.i.prol.loopexit, %for.body5.us.i
  %i.023.us.i = phi i32 [ %inc.us.i247.1, %for.body5.us.i ], [ %i.023.us.i.unr, %for.body5.us.i.prol.loopexit ]
  %blk_line.022.us.i = phi ptr [ %incdec.ptr10.us.i.1, %for.body5.us.i ], [ %blk_line.022.us.i.unr, %for.body5.us.i.prol.loopexit ]
  %cur_row.0.pn21.us.i = phi ptr [ %cur_line_p1.0.us.i.1, %for.body5.us.i ], [ %cur_row.0.pn21.us.i.unr, %for.body5.us.i.prol.loopexit ]
  %cur_line_p1.0.us.i = getelementptr i8, ptr %cur_row.0.pn21.us.i, i64 2
  %237 = load i16, ptr %cur_row.0.pn21.us.i, align 2
  %conv.us.i242 = zext i16 %237 to i32
  %mul.us.i243 = mul nsw i32 %conv49, %conv.us.i242
  %238 = load i16, ptr %cur_line_p1.0.us.i, align 2
  %conv7.us.i = zext i16 %238 to i32
  %mul8.us.i = mul nsw i32 %conv63, %conv7.us.i
  %add.us.i244 = add i32 %mul.us.i243, %shl.i.i239
  %add.i.us.i245 = add i32 %add.us.i244, %mul8.us.i
  %shr.i.us.i246 = ashr i32 %add.i.us.i245, %total_scale
  %conv9.us.i = trunc i32 %shr.i.us.i246 to i16
  %incdec.ptr10.us.i = getelementptr inbounds i8, ptr %blk_line.022.us.i, i64 2
  store i16 %conv9.us.i, ptr %blk_line.022.us.i, align 2
  %cur_line_p1.0.us.i.1 = getelementptr i8, ptr %cur_row.0.pn21.us.i, i64 4
  %239 = load i16, ptr %cur_line_p1.0.us.i, align 2
  %conv.us.i242.1 = zext i16 %239 to i32
  %mul.us.i243.1 = mul nsw i32 %conv49, %conv.us.i242.1
  %240 = load i16, ptr %cur_line_p1.0.us.i.1, align 2
  %conv7.us.i.1 = zext i16 %240 to i32
  %mul8.us.i.1 = mul nsw i32 %conv63, %conv7.us.i.1
  %add.us.i244.1 = add i32 %mul.us.i243.1, %shl.i.i239
  %add.i.us.i245.1 = add i32 %add.us.i244.1, %mul8.us.i.1
  %shr.i.us.i246.1 = ashr i32 %add.i.us.i245.1, %total_scale
  %conv9.us.i.1 = trunc i32 %shr.i.us.i246.1 to i16
  %incdec.ptr10.us.i.1 = getelementptr inbounds i8, ptr %blk_line.022.us.i, i64 4
  store i16 %conv9.us.i.1, ptr %incdec.ptr10.us.i, align 2
  %inc.us.i247.1 = add nuw nsw i32 %i.023.us.i, 2
  %exitcond.not.i248.1 = icmp eq i32 %inc.us.i247.1, %hor_block_size
  br i1 %exitcond.not.i248.1, label %for.cond3.for.inc11_crit_edge.us.i, label %for.body5.us.i, !llvm.loop !339

for.cond3.for.inc11_crit_edge.us.i:               ; preds = %for.body5.us.i.prol.loopexit, %for.body5.us.i, %middle.block498
  %add.ptr1.us.i241 = getelementptr inbounds i8, ptr %block.addr.026.us.i, i64 32
  %add.ptr2.us.i = getelementptr inbounds i16, ptr %cur_row.025.us.i, i64 %idx.ext.i237
  %inc12.us.i = add nuw nsw i32 %j.027.us.i, 1
  %exitcond29.not.i = icmp eq i32 %inc12.us.i, %vert_block_size
  br i1 %exitcond29.not.i, label %for.body.us.i255.preheader, label %for.body.us.i240

for.body.us.i255.preheader:                       ; preds = %for.cond3.for.inc11_crit_edge.us.i
  %241 = add nsw i32 %vert_block_size, -1
  %242 = zext i32 %241 to i64
  %243 = shl nuw nsw i64 %242, 5
  %244 = add nsw i32 %hor_block_size, -1
  %245 = zext i32 %244 to i64
  %246 = shl nuw nsw i64 %245, 1
  %247 = getelementptr i8, ptr %block2, i64 %243
  %248 = getelementptr i8, ptr %247, i64 %246
  %scevgep541 = getelementptr i8, ptr %248, i64 2
  %249 = mul nsw i64 %idx.ext.i237, %242
  %250 = add i64 %249, %idxprom15
  %251 = add i64 %250, %245
  %252 = shl i64 %251, 1
  %253 = getelementptr i8, ptr %9, i64 %252
  %scevgep542 = getelementptr i8, ptr %253, i64 4
  %254 = zext nneg i32 %hor_block_size to i64
  %min.iters.check549 = icmp ult i32 %hor_block_size, 32
  %bound0543 = icmp ugt ptr %scevgep542, %block2
  %bound1544 = icmp ult ptr %arrayidx22, %scevgep541
  %found.conflict545 = and i1 %bound0543, %bound1544
  %stride.check546 = icmp slt i32 %0, 0
  %255 = or i1 %found.conflict545, %stride.check546
  %n.vec552 = and i64 %254, 2147483616
  %ind.end553 = trunc nuw nsw i64 %n.vec552 to i32
  %256 = shl nuw nsw i64 %n.vec552, 1
  %257 = shl nuw nsw i64 %n.vec552, 1
  %broadcast.splatinsert575 = insertelement <8 x i32> poison, i32 %conv49, i64 0
  %broadcast.splat576 = shufflevector <8 x i32> %broadcast.splatinsert575, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert581 = insertelement <8 x i32> poison, i32 %conv63, i64 0
  %broadcast.splat582 = shufflevector <8 x i32> %broadcast.splatinsert581, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert583 = insertelement <8 x i32> poison, i32 %shl.i.i239, i64 0
  %broadcast.splat584 = shufflevector <8 x i32> %broadcast.splatinsert583, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert585 = insertelement <8 x i32> poison, i32 %total_scale, i64 0
  %broadcast.splat586 = shufflevector <8 x i32> %broadcast.splatinsert585, <8 x i32> poison, <8 x i32> zeroinitializer
  %cmp.n588 = icmp eq i64 %n.vec552, %254
  %258 = add nsw i32 %hor_block_size, -1
  br label %for.body.us.i255

for.body.us.i255:                                 ; preds = %for.body.us.i255.preheader, %for.cond3.for.inc11_crit_edge.us.i276
  %j.027.us.i256 = phi i32 [ %inc12.us.i278, %for.cond3.for.inc11_crit_edge.us.i276 ], [ 0, %for.body.us.i255.preheader ]
  %block.addr.026.us.i257 = phi ptr [ %add.ptr1.us.i259, %for.cond3.for.inc11_crit_edge.us.i276 ], [ %block2, %for.body.us.i255.preheader ]
  %cur_row.025.us.i258 = phi ptr [ %add.ptr2.us.i277, %for.cond3.for.inc11_crit_edge.us.i276 ], [ %arrayidx22, %for.body.us.i255.preheader ]
  %brmerge726 = select i1 %min.iters.check549, i1 true, i1 %255
  br i1 %brmerge726, label %for.body5.us.i260.preheader, label %vector.ph550

vector.ph550:                                     ; preds = %for.body.us.i255
  %ind.end555 = getelementptr i8, ptr %block.addr.026.us.i257, i64 %256
  %ind.end557 = getelementptr i8, ptr %cur_row.025.us.i258, i64 %257
  br label %vector.body559

vector.body559:                                   ; preds = %vector.body559, %vector.ph550
  %index560 = phi i64 [ 0, %vector.ph550 ], [ %index.next587, %vector.body559 ]
  %offset.idx561 = shl i64 %index560, 1
  %next.gep562 = getelementptr i8, ptr %block.addr.026.us.i257, i64 %offset.idx561
  %offset.idx566 = shl i64 %index560, 1
  %next.gep567 = getelementptr i8, ptr %cur_row.025.us.i258, i64 %offset.idx566
  %259 = getelementptr i8, ptr %next.gep567, i64 2
  %260 = getelementptr i8, ptr %next.gep567, i64 16
  %261 = getelementptr i8, ptr %next.gep567, i64 32
  %262 = getelementptr i8, ptr %next.gep567, i64 48
  %wide.load571 = load <8 x i16>, ptr %next.gep567, align 2, !alias.scope !340
  %wide.load572 = load <8 x i16>, ptr %260, align 2, !alias.scope !340
  %wide.load573 = load <8 x i16>, ptr %261, align 2, !alias.scope !340
  %wide.load574 = load <8 x i16>, ptr %262, align 2, !alias.scope !340
  %263 = zext <8 x i16> %wide.load571 to <8 x i32>
  %264 = zext <8 x i16> %wide.load572 to <8 x i32>
  %265 = zext <8 x i16> %wide.load573 to <8 x i32>
  %266 = zext <8 x i16> %wide.load574 to <8 x i32>
  %267 = mul nsw <8 x i32> %broadcast.splat576, %263
  %268 = mul nsw <8 x i32> %broadcast.splat576, %264
  %269 = mul nsw <8 x i32> %broadcast.splat576, %265
  %270 = mul nsw <8 x i32> %broadcast.splat576, %266
  %271 = getelementptr i8, ptr %next.gep567, i64 18
  %272 = getelementptr i8, ptr %next.gep567, i64 34
  %273 = getelementptr i8, ptr %next.gep567, i64 50
  %wide.load577 = load <8 x i16>, ptr %259, align 2, !alias.scope !340
  %wide.load578 = load <8 x i16>, ptr %271, align 2, !alias.scope !340
  %wide.load579 = load <8 x i16>, ptr %272, align 2, !alias.scope !340
  %wide.load580 = load <8 x i16>, ptr %273, align 2, !alias.scope !340
  %274 = zext <8 x i16> %wide.load577 to <8 x i32>
  %275 = zext <8 x i16> %wide.load578 to <8 x i32>
  %276 = zext <8 x i16> %wide.load579 to <8 x i32>
  %277 = zext <8 x i16> %wide.load580 to <8 x i32>
  %278 = mul nsw <8 x i32> %broadcast.splat582, %274
  %279 = mul nsw <8 x i32> %broadcast.splat582, %275
  %280 = mul nsw <8 x i32> %broadcast.splat582, %276
  %281 = mul nsw <8 x i32> %broadcast.splat582, %277
  %282 = add <8 x i32> %267, %broadcast.splat584
  %283 = add <8 x i32> %268, %broadcast.splat584
  %284 = add <8 x i32> %269, %broadcast.splat584
  %285 = add <8 x i32> %270, %broadcast.splat584
  %286 = add <8 x i32> %282, %278
  %287 = add <8 x i32> %283, %279
  %288 = add <8 x i32> %284, %280
  %289 = add <8 x i32> %285, %281
  %290 = ashr <8 x i32> %286, %broadcast.splat586
  %291 = ashr <8 x i32> %287, %broadcast.splat586
  %292 = ashr <8 x i32> %288, %broadcast.splat586
  %293 = ashr <8 x i32> %289, %broadcast.splat586
  %294 = trunc <8 x i32> %290 to <8 x i16>
  %295 = trunc <8 x i32> %291 to <8 x i16>
  %296 = trunc <8 x i32> %292 to <8 x i16>
  %297 = trunc <8 x i32> %293 to <8 x i16>
  %298 = getelementptr i8, ptr %next.gep562, i64 16
  %299 = getelementptr i8, ptr %next.gep562, i64 32
  %300 = getelementptr i8, ptr %next.gep562, i64 48
  store <8 x i16> %294, ptr %next.gep562, align 2, !alias.scope !343, !noalias !340
  store <8 x i16> %295, ptr %298, align 2, !alias.scope !343, !noalias !340
  store <8 x i16> %296, ptr %299, align 2, !alias.scope !343, !noalias !340
  store <8 x i16> %297, ptr %300, align 2, !alias.scope !343, !noalias !340
  %index.next587 = add nuw i64 %index560, 32
  %301 = icmp eq i64 %index.next587, %n.vec552
  br i1 %301, label %middle.block547, label %vector.body559, !llvm.loop !345

middle.block547:                                  ; preds = %vector.body559
  br i1 %cmp.n588, label %for.cond3.for.inc11_crit_edge.us.i276, label %for.body5.us.i260.preheader

for.body5.us.i260.preheader:                      ; preds = %for.body.us.i255, %middle.block547
  %i.023.us.i261.ph = phi i32 [ 0, %for.body.us.i255 ], [ %ind.end553, %middle.block547 ]
  %blk_line.022.us.i262.ph = phi ptr [ %block.addr.026.us.i257, %for.body.us.i255 ], [ %ind.end555, %middle.block547 ]
  %cur_row.0.pn21.us.i263.ph = phi ptr [ %cur_row.025.us.i258, %for.body.us.i255 ], [ %ind.end557, %middle.block547 ]
  %302 = sub i32 %hor_block_size, %i.023.us.i261.ph
  %xtraiter718 = and i32 %302, 1
  %lcmp.mod719.not = icmp eq i32 %xtraiter718, 0
  br i1 %lcmp.mod719.not, label %for.body5.us.i260.prol.loopexit, label %for.body5.us.i260.prol

for.body5.us.i260.prol:                           ; preds = %for.body5.us.i260.preheader
  %cur_line_p1.0.us.i264.prol = getelementptr i8, ptr %cur_row.0.pn21.us.i263.ph, i64 2
  %303 = load i16, ptr %cur_row.0.pn21.us.i263.ph, align 2
  %conv.us.i265.prol = zext i16 %303 to i32
  %mul.us.i266.prol = mul nsw i32 %conv49, %conv.us.i265.prol
  %304 = load i16, ptr %cur_line_p1.0.us.i264.prol, align 2
  %conv7.us.i267.prol = zext i16 %304 to i32
  %mul8.us.i268.prol = mul nsw i32 %conv63, %conv7.us.i267.prol
  %add.us.i269.prol = add i32 %mul.us.i266.prol, %shl.i.i239
  %add.i.us.i270.prol = add i32 %add.us.i269.prol, %mul8.us.i268.prol
  %shr.i.us.i271.prol = ashr i32 %add.i.us.i270.prol, %total_scale
  %conv9.us.i272.prol = trunc i32 %shr.i.us.i271.prol to i16
  %incdec.ptr10.us.i273.prol = getelementptr inbounds i8, ptr %blk_line.022.us.i262.ph, i64 2
  store i16 %conv9.us.i272.prol, ptr %blk_line.022.us.i262.ph, align 2
  %inc.us.i274.prol = add nuw nsw i32 %i.023.us.i261.ph, 1
  br label %for.body5.us.i260.prol.loopexit

for.body5.us.i260.prol.loopexit:                  ; preds = %for.body5.us.i260.prol, %for.body5.us.i260.preheader
  %i.023.us.i261.unr = phi i32 [ %i.023.us.i261.ph, %for.body5.us.i260.preheader ], [ %inc.us.i274.prol, %for.body5.us.i260.prol ]
  %blk_line.022.us.i262.unr = phi ptr [ %blk_line.022.us.i262.ph, %for.body5.us.i260.preheader ], [ %incdec.ptr10.us.i273.prol, %for.body5.us.i260.prol ]
  %cur_row.0.pn21.us.i263.unr = phi ptr [ %cur_row.0.pn21.us.i263.ph, %for.body5.us.i260.preheader ], [ %cur_line_p1.0.us.i264.prol, %for.body5.us.i260.prol ]
  %305 = icmp eq i32 %i.023.us.i261.ph, %258
  br i1 %305, label %for.cond3.for.inc11_crit_edge.us.i276, label %for.body5.us.i260

for.body5.us.i260:                                ; preds = %for.body5.us.i260.prol.loopexit, %for.body5.us.i260
  %i.023.us.i261 = phi i32 [ %inc.us.i274.1, %for.body5.us.i260 ], [ %i.023.us.i261.unr, %for.body5.us.i260.prol.loopexit ]
  %blk_line.022.us.i262 = phi ptr [ %incdec.ptr10.us.i273.1, %for.body5.us.i260 ], [ %blk_line.022.us.i262.unr, %for.body5.us.i260.prol.loopexit ]
  %cur_row.0.pn21.us.i263 = phi ptr [ %cur_line_p1.0.us.i264.1, %for.body5.us.i260 ], [ %cur_row.0.pn21.us.i263.unr, %for.body5.us.i260.prol.loopexit ]
  %cur_line_p1.0.us.i264 = getelementptr i8, ptr %cur_row.0.pn21.us.i263, i64 2
  %306 = load i16, ptr %cur_row.0.pn21.us.i263, align 2
  %conv.us.i265 = zext i16 %306 to i32
  %mul.us.i266 = mul nsw i32 %conv49, %conv.us.i265
  %307 = load i16, ptr %cur_line_p1.0.us.i264, align 2
  %conv7.us.i267 = zext i16 %307 to i32
  %mul8.us.i268 = mul nsw i32 %conv63, %conv7.us.i267
  %add.us.i269 = add i32 %mul.us.i266, %shl.i.i239
  %add.i.us.i270 = add i32 %add.us.i269, %mul8.us.i268
  %shr.i.us.i271 = ashr i32 %add.i.us.i270, %total_scale
  %conv9.us.i272 = trunc i32 %shr.i.us.i271 to i16
  %incdec.ptr10.us.i273 = getelementptr inbounds i8, ptr %blk_line.022.us.i262, i64 2
  store i16 %conv9.us.i272, ptr %blk_line.022.us.i262, align 2
  %cur_line_p1.0.us.i264.1 = getelementptr i8, ptr %cur_row.0.pn21.us.i263, i64 4
  %308 = load i16, ptr %cur_line_p1.0.us.i264, align 2
  %conv.us.i265.1 = zext i16 %308 to i32
  %mul.us.i266.1 = mul nsw i32 %conv49, %conv.us.i265.1
  %309 = load i16, ptr %cur_line_p1.0.us.i264.1, align 2
  %conv7.us.i267.1 = zext i16 %309 to i32
  %mul8.us.i268.1 = mul nsw i32 %conv63, %conv7.us.i267.1
  %add.us.i269.1 = add i32 %mul.us.i266.1, %shl.i.i239
  %add.i.us.i270.1 = add i32 %add.us.i269.1, %mul8.us.i268.1
  %shr.i.us.i271.1 = ashr i32 %add.i.us.i270.1, %total_scale
  %conv9.us.i272.1 = trunc i32 %shr.i.us.i271.1 to i16
  %incdec.ptr10.us.i273.1 = getelementptr inbounds i8, ptr %blk_line.022.us.i262, i64 4
  store i16 %conv9.us.i272.1, ptr %incdec.ptr10.us.i273, align 2
  %inc.us.i274.1 = add nuw nsw i32 %i.023.us.i261, 2
  %exitcond.not.i275.1 = icmp eq i32 %inc.us.i274.1, %hor_block_size
  br i1 %exitcond.not.i275.1, label %for.cond3.for.inc11_crit_edge.us.i276, label %for.body5.us.i260, !llvm.loop !346

for.cond3.for.inc11_crit_edge.us.i276:            ; preds = %for.body5.us.i260.prol.loopexit, %for.body5.us.i260, %middle.block547
  %add.ptr1.us.i259 = getelementptr inbounds i8, ptr %block.addr.026.us.i257, i64 32
  %add.ptr2.us.i277 = getelementptr inbounds i16, ptr %cur_row.025.us.i258, i64 %idx.ext.i237
  %inc12.us.i278 = add nuw nsw i32 %j.027.us.i256, 1
  %exitcond29.not.i279 = icmp eq i32 %inc12.us.i278, %vert_block_size
  br i1 %exitcond29.not.i279, label %if.end91, label %for.body.us.i255

if.else66:                                        ; preds = %if.else53
  %sext177 = mul i32 %sext173, %sub31
  %conv82 = ashr exact i32 %sext177, 16
  %310 = insertelement <2 x i32> poison, i32 %sext, i64 0
  %311 = shufflevector <2 x i32> %310, <2 x i32> poison, <2 x i32> zeroinitializer
  %312 = insertelement <2 x i32> poison, i32 %sub35, i64 0
  %313 = insertelement <2 x i32> %312, i32 %and8, i64 1
  %314 = mul <2 x i32> %311, %313
  %315 = ashr exact <2 x i32> %314, <i32 16, i32 16>
  %idx.ext.i281 = sext i32 %0 to i64
  %cmp37.i = icmp sgt i32 %vert_block_size, 0
  br i1 %cmp37.i, label %for.body.lr.ph.i282, label %if.end91

for.body.lr.ph.i282:                              ; preds = %if.else66
  %cmp531.i = icmp sgt i32 %hor_block_size, 0
  %sub.i.i283 = add nsw i32 %total_scale, -1
  %shl.i.i284 = shl nuw i32 1, %sub.i.i283
  br i1 %cmp531.i, label %for.body.us.i285.preheader, label %if.end91

for.body.us.i285.preheader:                       ; preds = %for.body.lr.ph.i282
  %316 = add nsw i32 %vert_block_size, -1
  %317 = zext i32 %316 to i64
  %318 = shl nuw nsw i64 %317, 5
  %319 = add nsw i32 %hor_block_size, -1
  %320 = zext i32 %319 to i64
  %321 = shl nuw nsw i64 %320, 1
  %322 = getelementptr i8, ptr %block1, i64 %318
  %323 = getelementptr i8, ptr %322, i64 %321
  %scevgep = getelementptr i8, ptr %323, i64 2
  %324 = shl nsw i64 %idxprom15, 1
  %325 = shl nsw i64 %idx.ext.i281, 1
  %326 = getelementptr i8, ptr %7, i64 %324
  %scevgep365 = getelementptr i8, ptr %326, i64 %325
  %327 = shl nuw nsw i64 %317, 1
  %328 = add nuw nsw i64 %327, 2
  %329 = mul i64 %328, %idx.ext.i281
  %330 = getelementptr i8, ptr %7, i64 %329
  %331 = getelementptr i8, ptr %330, i64 %324
  %332 = getelementptr i8, ptr %331, i64 %321
  %scevgep366 = getelementptr i8, ptr %332, i64 4
  %333 = mul nsw i64 %idx.ext.i281, %317
  %334 = add i64 %333, %idxprom15
  %335 = add i64 %334, %320
  %336 = shl i64 %335, 1
  %337 = getelementptr i8, ptr %7, i64 %336
  %scevgep367 = getelementptr i8, ptr %337, i64 4
  %338 = zext nneg i32 %hor_block_size to i64
  %min.iters.check = icmp ult i32 %hor_block_size, 32
  %bound0 = icmp ugt ptr %scevgep366, %block1
  %bound1 = icmp ult ptr %scevgep365, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0368 = icmp ugt ptr %scevgep367, %block1
  %bound1369 = icmp ult ptr %arrayidx16, %scevgep
  %found.conflict370 = and i1 %bound0368, %bound1369
  %stride.check371 = icmp slt i32 %0, 0
  %339 = or i1 %found.conflict370, %stride.check371
  %conflict.rdx = or i1 %found.conflict, %339
  %n.vec = and i64 %338, 2147483616
  %ind.end = trunc nuw nsw i64 %n.vec to i32
  %340 = shl nuw nsw i64 %n.vec, 1
  %341 = shl nuw nsw i64 %n.vec, 1
  %342 = shl nuw nsw i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %conv49, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert398 = insertelement <8 x i32> poison, i32 %conv82, i64 0
  %broadcast.splat399 = shufflevector <8 x i32> %broadcast.splatinsert398, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splat405 = shufflevector <2 x i32> %315, <2 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splat411 = shufflevector <2 x i32> %315, <2 x i32> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splatinsert412 = insertelement <8 x i32> poison, i32 %shl.i.i284, i64 0
  %broadcast.splat413 = shufflevector <8 x i32> %broadcast.splatinsert412, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert414 = insertelement <8 x i32> poison, i32 %total_scale, i64 0
  %broadcast.splat415 = shufflevector <8 x i32> %broadcast.splatinsert414, <8 x i32> poison, <8 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %338
  %343 = extractelement <2 x i32> %315, i64 0
  %344 = extractelement <2 x i32> %315, i64 1
  br label %for.body.us.i285

for.body.us.i285:                                 ; preds = %for.body.us.i285.preheader, %for.cond4.for.inc18_crit_edge.us.i
  %j.040.us.i = phi i32 [ %inc19.us.i, %for.cond4.for.inc18_crit_edge.us.i ], [ 0, %for.body.us.i285.preheader ]
  %block.addr.039.us.i = phi ptr [ %add.ptr1.us.i299, %for.cond4.for.inc18_crit_edge.us.i ], [ %block1, %for.body.us.i285.preheader ]
  %cur_row.038.us.i = phi ptr [ %nxt_row.041.us.i, %for.cond4.for.inc18_crit_edge.us.i ], [ %arrayidx16, %for.body.us.i285.preheader ]
  %nxt_row.041.us.i = getelementptr inbounds i16, ptr %cur_row.038.us.i, i64 %idx.ext.i281
  br i1 %min.iters.check, label %for.body6.us.i286.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %for.body.us.i285
  br i1 %conflict.rdx, label %for.body6.us.i286.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %ind.end372 = getelementptr i8, ptr %block.addr.039.us.i, i64 %340
  %ind.end374 = getelementptr i8, ptr %nxt_row.041.us.i, i64 %341
  %ind.end376 = getelementptr i8, ptr %cur_row.038.us.i, i64 %342
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %offset.idx = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %block.addr.039.us.i, i64 %offset.idx
  %offset.idx381 = shl i64 %index, 1
  %next.gep382 = getelementptr i8, ptr %nxt_row.041.us.i, i64 %offset.idx381
  %offset.idx386 = shl i64 %index, 1
  %next.gep387 = getelementptr i8, ptr %cur_row.038.us.i, i64 %offset.idx386
  %345 = getelementptr inbounds i8, ptr %next.gep387, i64 2
  %346 = getelementptr i8, ptr %next.gep387, i64 16
  %347 = getelementptr i8, ptr %next.gep387, i64 32
  %348 = getelementptr i8, ptr %next.gep387, i64 48
  %wide.load = load <8 x i16>, ptr %next.gep387, align 2, !alias.scope !347
  %wide.load391 = load <8 x i16>, ptr %346, align 2, !alias.scope !347
  %wide.load392 = load <8 x i16>, ptr %347, align 2, !alias.scope !347
  %wide.load393 = load <8 x i16>, ptr %348, align 2, !alias.scope !347
  %349 = zext <8 x i16> %wide.load to <8 x i32>
  %350 = zext <8 x i16> %wide.load391 to <8 x i32>
  %351 = zext <8 x i16> %wide.load392 to <8 x i32>
  %352 = zext <8 x i16> %wide.load393 to <8 x i32>
  %353 = mul nsw <8 x i32> %broadcast.splat, %349
  %354 = mul nsw <8 x i32> %broadcast.splat, %350
  %355 = mul nsw <8 x i32> %broadcast.splat, %351
  %356 = mul nsw <8 x i32> %broadcast.splat, %352
  %357 = getelementptr inbounds i8, ptr %next.gep382, i64 2
  %358 = getelementptr i8, ptr %next.gep382, i64 16
  %359 = getelementptr i8, ptr %next.gep382, i64 32
  %360 = getelementptr i8, ptr %next.gep382, i64 48
  %wide.load394 = load <8 x i16>, ptr %next.gep382, align 2, !alias.scope !350
  %wide.load395 = load <8 x i16>, ptr %358, align 2, !alias.scope !350
  %wide.load396 = load <8 x i16>, ptr %359, align 2, !alias.scope !350
  %wide.load397 = load <8 x i16>, ptr %360, align 2, !alias.scope !350
  %361 = zext <8 x i16> %wide.load394 to <8 x i32>
  %362 = zext <8 x i16> %wide.load395 to <8 x i32>
  %363 = zext <8 x i16> %wide.load396 to <8 x i32>
  %364 = zext <8 x i16> %wide.load397 to <8 x i32>
  %365 = mul nsw <8 x i32> %broadcast.splat399, %361
  %366 = mul nsw <8 x i32> %broadcast.splat399, %362
  %367 = mul nsw <8 x i32> %broadcast.splat399, %363
  %368 = mul nsw <8 x i32> %broadcast.splat399, %364
  %369 = getelementptr inbounds i8, ptr %next.gep387, i64 18
  %370 = getelementptr inbounds i8, ptr %next.gep387, i64 34
  %371 = getelementptr inbounds i8, ptr %next.gep387, i64 50
  %wide.load400 = load <8 x i16>, ptr %345, align 2, !alias.scope !347
  %wide.load401 = load <8 x i16>, ptr %369, align 2, !alias.scope !347
  %wide.load402 = load <8 x i16>, ptr %370, align 2, !alias.scope !347
  %wide.load403 = load <8 x i16>, ptr %371, align 2, !alias.scope !347
  %372 = zext <8 x i16> %wide.load400 to <8 x i32>
  %373 = zext <8 x i16> %wide.load401 to <8 x i32>
  %374 = zext <8 x i16> %wide.load402 to <8 x i32>
  %375 = zext <8 x i16> %wide.load403 to <8 x i32>
  %376 = mul nsw <8 x i32> %broadcast.splat405, %372
  %377 = mul nsw <8 x i32> %broadcast.splat405, %373
  %378 = mul nsw <8 x i32> %broadcast.splat405, %374
  %379 = mul nsw <8 x i32> %broadcast.splat405, %375
  %380 = getelementptr inbounds i8, ptr %next.gep382, i64 18
  %381 = getelementptr inbounds i8, ptr %next.gep382, i64 34
  %382 = getelementptr inbounds i8, ptr %next.gep382, i64 50
  %wide.load406 = load <8 x i16>, ptr %357, align 2, !alias.scope !350
  %wide.load407 = load <8 x i16>, ptr %380, align 2, !alias.scope !350
  %wide.load408 = load <8 x i16>, ptr %381, align 2, !alias.scope !350
  %wide.load409 = load <8 x i16>, ptr %382, align 2, !alias.scope !350
  %383 = zext <8 x i16> %wide.load406 to <8 x i32>
  %384 = zext <8 x i16> %wide.load407 to <8 x i32>
  %385 = zext <8 x i16> %wide.load408 to <8 x i32>
  %386 = zext <8 x i16> %wide.load409 to <8 x i32>
  %387 = mul nsw <8 x i32> %broadcast.splat411, %383
  %388 = mul nsw <8 x i32> %broadcast.splat411, %384
  %389 = mul nsw <8 x i32> %broadcast.splat411, %385
  %390 = mul nsw <8 x i32> %broadcast.splat411, %386
  %391 = add <8 x i32> %353, %broadcast.splat413
  %392 = add <8 x i32> %354, %broadcast.splat413
  %393 = add <8 x i32> %355, %broadcast.splat413
  %394 = add <8 x i32> %356, %broadcast.splat413
  %395 = add <8 x i32> %391, %365
  %396 = add <8 x i32> %392, %366
  %397 = add <8 x i32> %393, %367
  %398 = add <8 x i32> %394, %368
  %399 = add <8 x i32> %395, %376
  %400 = add <8 x i32> %396, %377
  %401 = add <8 x i32> %397, %378
  %402 = add <8 x i32> %398, %379
  %403 = add <8 x i32> %399, %387
  %404 = add <8 x i32> %400, %388
  %405 = add <8 x i32> %401, %389
  %406 = add <8 x i32> %402, %390
  %407 = ashr <8 x i32> %403, %broadcast.splat415
  %408 = ashr <8 x i32> %404, %broadcast.splat415
  %409 = ashr <8 x i32> %405, %broadcast.splat415
  %410 = ashr <8 x i32> %406, %broadcast.splat415
  %411 = trunc <8 x i32> %407 to <8 x i16>
  %412 = trunc <8 x i32> %408 to <8 x i16>
  %413 = trunc <8 x i32> %409 to <8 x i16>
  %414 = trunc <8 x i32> %410 to <8 x i16>
  %415 = getelementptr i8, ptr %next.gep, i64 16
  %416 = getelementptr i8, ptr %next.gep, i64 32
  %417 = getelementptr i8, ptr %next.gep, i64 48
  store <8 x i16> %411, ptr %next.gep, align 2, !alias.scope !352, !noalias !354
  store <8 x i16> %412, ptr %415, align 2, !alias.scope !352, !noalias !354
  store <8 x i16> %413, ptr %416, align 2, !alias.scope !352, !noalias !354
  store <8 x i16> %414, ptr %417, align 2, !alias.scope !352, !noalias !354
  %index.next = add nuw i64 %index, 32
  %418 = icmp eq i64 %index.next, %n.vec
  br i1 %418, label %middle.block, label %vector.body, !llvm.loop !355

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %for.cond4.for.inc18_crit_edge.us.i, label %for.body6.us.i286.preheader

for.body6.us.i286.preheader:                      ; preds = %middle.block, %vector.memcheck, %for.body.us.i285
  %i.035.us.i.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %for.body.us.i285 ], [ %ind.end, %middle.block ]
  %blk_line.034.us.i.ph = phi ptr [ %block.addr.039.us.i, %vector.memcheck ], [ %block.addr.039.us.i, %for.body.us.i285 ], [ %ind.end372, %middle.block ]
  %cur_line_p1.033.us.i.ph = phi ptr [ %nxt_row.041.us.i, %vector.memcheck ], [ %nxt_row.041.us.i, %for.body.us.i285 ], [ %ind.end374, %middle.block ]
  %cur_line.032.us.i.ph = phi ptr [ %cur_row.038.us.i, %vector.memcheck ], [ %cur_row.038.us.i, %for.body.us.i285 ], [ %ind.end376, %middle.block ]
  br label %for.body6.us.i286

for.body6.us.i286:                                ; preds = %for.body6.us.i286.preheader, %for.body6.us.i286
  %i.035.us.i = phi i32 [ %inc.us.i297, %for.body6.us.i286 ], [ %i.035.us.i.ph, %for.body6.us.i286.preheader ]
  %blk_line.034.us.i = phi ptr [ %incdec.ptr17.us.i, %for.body6.us.i286 ], [ %blk_line.034.us.i.ph, %for.body6.us.i286.preheader ]
  %cur_line_p1.033.us.i = phi ptr [ %incdec.ptr7.us.i290, %for.body6.us.i286 ], [ %cur_line_p1.033.us.i.ph, %for.body6.us.i286.preheader ]
  %cur_line.032.us.i = phi ptr [ %incdec.ptr.us.i287, %for.body6.us.i286 ], [ %cur_line.032.us.i.ph, %for.body6.us.i286.preheader ]
  %incdec.ptr.us.i287 = getelementptr inbounds i8, ptr %cur_line.032.us.i, i64 2
  %419 = load i16, ptr %cur_line.032.us.i, align 2
  %conv.us.i288 = zext i16 %419 to i32
  %mul.us.i289 = mul nsw i32 %conv49, %conv.us.i288
  %incdec.ptr7.us.i290 = getelementptr inbounds i8, ptr %cur_line_p1.033.us.i, i64 2
  %420 = load i16, ptr %cur_line_p1.033.us.i, align 2
  %conv8.us.i291 = zext i16 %420 to i32
  %mul9.us.i292 = mul nsw i32 %conv82, %conv8.us.i291
  %421 = load i16, ptr %incdec.ptr.us.i287, align 2
  %conv10.us.i293 = zext i16 %421 to i32
  %mul11.us.i = mul nsw i32 %343, %conv10.us.i293
  %422 = load i16, ptr %incdec.ptr7.us.i290, align 2
  %conv12.us.i = zext i16 %422 to i32
  %mul13.us.i = mul nsw i32 %344, %conv12.us.i
  %add14.us.i = add i32 %mul.us.i289, %shl.i.i284
  %add.us.i294 = add i32 %add14.us.i, %mul9.us.i292
  %add15.us.i = add i32 %add.us.i294, %mul11.us.i
  %add.i.us.i295 = add i32 %add15.us.i, %mul13.us.i
  %shr.i.us.i296 = ashr i32 %add.i.us.i295, %total_scale
  %conv16.us.i = trunc i32 %shr.i.us.i296 to i16
  %incdec.ptr17.us.i = getelementptr inbounds i8, ptr %blk_line.034.us.i, i64 2
  store i16 %conv16.us.i, ptr %blk_line.034.us.i, align 2
  %inc.us.i297 = add nuw nsw i32 %i.035.us.i, 1
  %exitcond.not.i298 = icmp eq i32 %inc.us.i297, %hor_block_size
  br i1 %exitcond.not.i298, label %for.cond4.for.inc18_crit_edge.us.i, label %for.body6.us.i286, !llvm.loop !356

for.cond4.for.inc18_crit_edge.us.i:               ; preds = %for.body6.us.i286, %middle.block
  %add.ptr1.us.i299 = getelementptr inbounds i8, ptr %block.addr.039.us.i, i64 32
  %inc19.us.i = add nuw nsw i32 %j.040.us.i, 1
  %exitcond43.not.i = icmp eq i32 %inc19.us.i, %vert_block_size
  br i1 %exitcond43.not.i, label %for.body.us.i306.preheader, label %for.body.us.i285

for.body.us.i306.preheader:                       ; preds = %for.cond4.for.inc18_crit_edge.us.i
  %423 = add nsw i32 %vert_block_size, -1
  %424 = zext i32 %423 to i64
  %425 = shl nuw nsw i64 %424, 5
  %426 = add nsw i32 %hor_block_size, -1
  %427 = zext i32 %426 to i64
  %428 = shl nuw nsw i64 %427, 1
  %429 = getelementptr i8, ptr %block2, i64 %425
  %430 = getelementptr i8, ptr %429, i64 %428
  %scevgep417 = getelementptr i8, ptr %430, i64 2
  %431 = shl nsw i64 %idxprom15, 1
  %432 = shl nsw i64 %idx.ext.i281, 1
  %433 = getelementptr i8, ptr %9, i64 %431
  %scevgep418 = getelementptr i8, ptr %433, i64 %432
  %434 = shl nuw nsw i64 %424, 1
  %435 = add nuw nsw i64 %434, 2
  %436 = mul i64 %435, %idx.ext.i281
  %437 = getelementptr i8, ptr %9, i64 %436
  %438 = getelementptr i8, ptr %437, i64 %431
  %439 = getelementptr i8, ptr %438, i64 %428
  %scevgep419 = getelementptr i8, ptr %439, i64 4
  %440 = mul nsw i64 %idx.ext.i281, %424
  %441 = add i64 %440, %idxprom15
  %442 = add i64 %441, %427
  %443 = shl i64 %442, 1
  %444 = getelementptr i8, ptr %9, i64 %443
  %scevgep420 = getelementptr i8, ptr %444, i64 4
  %445 = zext nneg i32 %hor_block_size to i64
  %min.iters.check432 = icmp ult i32 %hor_block_size, 32
  %bound0421 = icmp ugt ptr %scevgep419, %block2
  %bound1422 = icmp ult ptr %scevgep418, %scevgep417
  %found.conflict423 = and i1 %bound0421, %bound1422
  %bound0425 = icmp ugt ptr %scevgep420, %block2
  %bound1426 = icmp ult ptr %arrayidx22, %scevgep417
  %found.conflict427 = and i1 %bound0425, %bound1426
  %stride.check428 = icmp slt i32 %0, 0
  %446 = or i1 %found.conflict427, %stride.check428
  %conflict.rdx429 = or i1 %found.conflict423, %446
  %n.vec435 = and i64 %445, 2147483616
  %ind.end436 = trunc nuw nsw i64 %n.vec435 to i32
  %447 = shl nuw nsw i64 %n.vec435, 1
  %448 = shl nuw nsw i64 %n.vec435, 1
  %449 = shl nuw nsw i64 %n.vec435, 1
  %broadcast.splatinsert465 = insertelement <8 x i32> poison, i32 %conv49, i64 0
  %broadcast.splat466 = shufflevector <8 x i32> %broadcast.splatinsert465, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert471 = insertelement <8 x i32> poison, i32 %conv82, i64 0
  %broadcast.splat472 = shufflevector <8 x i32> %broadcast.splatinsert471, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splat478 = shufflevector <2 x i32> %315, <2 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splat484 = shufflevector <2 x i32> %315, <2 x i32> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splatinsert485 = insertelement <8 x i32> poison, i32 %shl.i.i284, i64 0
  %broadcast.splat486 = shufflevector <8 x i32> %broadcast.splatinsert485, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert487 = insertelement <8 x i32> poison, i32 %total_scale, i64 0
  %broadcast.splat488 = shufflevector <8 x i32> %broadcast.splatinsert487, <8 x i32> poison, <8 x i32> zeroinitializer
  %cmp.n490 = icmp eq i64 %n.vec435, %445
  br label %for.body.us.i306

for.body.us.i306:                                 ; preds = %for.body.us.i306.preheader, %for.cond4.for.inc18_crit_edge.us.i335
  %j.040.us.i307 = phi i32 [ %inc19.us.i337, %for.cond4.for.inc18_crit_edge.us.i335 ], [ 0, %for.body.us.i306.preheader ]
  %block.addr.039.us.i308 = phi ptr [ %add.ptr1.us.i336, %for.cond4.for.inc18_crit_edge.us.i335 ], [ %block2, %for.body.us.i306.preheader ]
  %cur_row.038.us.i309 = phi ptr [ %nxt_row.041.us.i310, %for.cond4.for.inc18_crit_edge.us.i335 ], [ %arrayidx22, %for.body.us.i306.preheader ]
  %nxt_row.041.us.i310 = getelementptr inbounds i16, ptr %cur_row.038.us.i309, i64 %idx.ext.i281
  br i1 %min.iters.check432, label %for.body6.us.i311.preheader, label %vector.memcheck416

vector.memcheck416:                               ; preds = %for.body.us.i306
  br i1 %conflict.rdx429, label %for.body6.us.i311.preheader, label %vector.ph433

vector.ph433:                                     ; preds = %vector.memcheck416
  %ind.end438 = getelementptr i8, ptr %block.addr.039.us.i308, i64 %447
  %ind.end440 = getelementptr i8, ptr %nxt_row.041.us.i310, i64 %448
  %ind.end442 = getelementptr i8, ptr %cur_row.038.us.i309, i64 %449
  br label %vector.body444

vector.body444:                                   ; preds = %vector.body444, %vector.ph433
  %index445 = phi i64 [ 0, %vector.ph433 ], [ %index.next489, %vector.body444 ]
  %offset.idx446 = shl i64 %index445, 1
  %next.gep447 = getelementptr i8, ptr %block.addr.039.us.i308, i64 %offset.idx446
  %offset.idx451 = shl i64 %index445, 1
  %next.gep452 = getelementptr i8, ptr %nxt_row.041.us.i310, i64 %offset.idx451
  %offset.idx456 = shl i64 %index445, 1
  %next.gep457 = getelementptr i8, ptr %cur_row.038.us.i309, i64 %offset.idx456
  %450 = getelementptr inbounds i8, ptr %next.gep457, i64 2
  %451 = getelementptr i8, ptr %next.gep457, i64 16
  %452 = getelementptr i8, ptr %next.gep457, i64 32
  %453 = getelementptr i8, ptr %next.gep457, i64 48
  %wide.load461 = load <8 x i16>, ptr %next.gep457, align 2, !alias.scope !357
  %wide.load462 = load <8 x i16>, ptr %451, align 2, !alias.scope !357
  %wide.load463 = load <8 x i16>, ptr %452, align 2, !alias.scope !357
  %wide.load464 = load <8 x i16>, ptr %453, align 2, !alias.scope !357
  %454 = zext <8 x i16> %wide.load461 to <8 x i32>
  %455 = zext <8 x i16> %wide.load462 to <8 x i32>
  %456 = zext <8 x i16> %wide.load463 to <8 x i32>
  %457 = zext <8 x i16> %wide.load464 to <8 x i32>
  %458 = mul nsw <8 x i32> %broadcast.splat466, %454
  %459 = mul nsw <8 x i32> %broadcast.splat466, %455
  %460 = mul nsw <8 x i32> %broadcast.splat466, %456
  %461 = mul nsw <8 x i32> %broadcast.splat466, %457
  %462 = getelementptr inbounds i8, ptr %next.gep452, i64 2
  %463 = getelementptr i8, ptr %next.gep452, i64 16
  %464 = getelementptr i8, ptr %next.gep452, i64 32
  %465 = getelementptr i8, ptr %next.gep452, i64 48
  %wide.load467 = load <8 x i16>, ptr %next.gep452, align 2, !alias.scope !360
  %wide.load468 = load <8 x i16>, ptr %463, align 2, !alias.scope !360
  %wide.load469 = load <8 x i16>, ptr %464, align 2, !alias.scope !360
  %wide.load470 = load <8 x i16>, ptr %465, align 2, !alias.scope !360
  %466 = zext <8 x i16> %wide.load467 to <8 x i32>
  %467 = zext <8 x i16> %wide.load468 to <8 x i32>
  %468 = zext <8 x i16> %wide.load469 to <8 x i32>
  %469 = zext <8 x i16> %wide.load470 to <8 x i32>
  %470 = mul nsw <8 x i32> %broadcast.splat472, %466
  %471 = mul nsw <8 x i32> %broadcast.splat472, %467
  %472 = mul nsw <8 x i32> %broadcast.splat472, %468
  %473 = mul nsw <8 x i32> %broadcast.splat472, %469
  %474 = getelementptr inbounds i8, ptr %next.gep457, i64 18
  %475 = getelementptr inbounds i8, ptr %next.gep457, i64 34
  %476 = getelementptr inbounds i8, ptr %next.gep457, i64 50
  %wide.load473 = load <8 x i16>, ptr %450, align 2, !alias.scope !357
  %wide.load474 = load <8 x i16>, ptr %474, align 2, !alias.scope !357
  %wide.load475 = load <8 x i16>, ptr %475, align 2, !alias.scope !357
  %wide.load476 = load <8 x i16>, ptr %476, align 2, !alias.scope !357
  %477 = zext <8 x i16> %wide.load473 to <8 x i32>
  %478 = zext <8 x i16> %wide.load474 to <8 x i32>
  %479 = zext <8 x i16> %wide.load475 to <8 x i32>
  %480 = zext <8 x i16> %wide.load476 to <8 x i32>
  %481 = mul nsw <8 x i32> %broadcast.splat478, %477
  %482 = mul nsw <8 x i32> %broadcast.splat478, %478
  %483 = mul nsw <8 x i32> %broadcast.splat478, %479
  %484 = mul nsw <8 x i32> %broadcast.splat478, %480
  %485 = getelementptr inbounds i8, ptr %next.gep452, i64 18
  %486 = getelementptr inbounds i8, ptr %next.gep452, i64 34
  %487 = getelementptr inbounds i8, ptr %next.gep452, i64 50
  %wide.load479 = load <8 x i16>, ptr %462, align 2, !alias.scope !360
  %wide.load480 = load <8 x i16>, ptr %485, align 2, !alias.scope !360
  %wide.load481 = load <8 x i16>, ptr %486, align 2, !alias.scope !360
  %wide.load482 = load <8 x i16>, ptr %487, align 2, !alias.scope !360
  %488 = zext <8 x i16> %wide.load479 to <8 x i32>
  %489 = zext <8 x i16> %wide.load480 to <8 x i32>
  %490 = zext <8 x i16> %wide.load481 to <8 x i32>
  %491 = zext <8 x i16> %wide.load482 to <8 x i32>
  %492 = mul nsw <8 x i32> %broadcast.splat484, %488
  %493 = mul nsw <8 x i32> %broadcast.splat484, %489
  %494 = mul nsw <8 x i32> %broadcast.splat484, %490
  %495 = mul nsw <8 x i32> %broadcast.splat484, %491
  %496 = add <8 x i32> %458, %broadcast.splat486
  %497 = add <8 x i32> %459, %broadcast.splat486
  %498 = add <8 x i32> %460, %broadcast.splat486
  %499 = add <8 x i32> %461, %broadcast.splat486
  %500 = add <8 x i32> %496, %470
  %501 = add <8 x i32> %497, %471
  %502 = add <8 x i32> %498, %472
  %503 = add <8 x i32> %499, %473
  %504 = add <8 x i32> %500, %481
  %505 = add <8 x i32> %501, %482
  %506 = add <8 x i32> %502, %483
  %507 = add <8 x i32> %503, %484
  %508 = add <8 x i32> %504, %492
  %509 = add <8 x i32> %505, %493
  %510 = add <8 x i32> %506, %494
  %511 = add <8 x i32> %507, %495
  %512 = ashr <8 x i32> %508, %broadcast.splat488
  %513 = ashr <8 x i32> %509, %broadcast.splat488
  %514 = ashr <8 x i32> %510, %broadcast.splat488
  %515 = ashr <8 x i32> %511, %broadcast.splat488
  %516 = trunc <8 x i32> %512 to <8 x i16>
  %517 = trunc <8 x i32> %513 to <8 x i16>
  %518 = trunc <8 x i32> %514 to <8 x i16>
  %519 = trunc <8 x i32> %515 to <8 x i16>
  %520 = getelementptr i8, ptr %next.gep447, i64 16
  %521 = getelementptr i8, ptr %next.gep447, i64 32
  %522 = getelementptr i8, ptr %next.gep447, i64 48
  store <8 x i16> %516, ptr %next.gep447, align 2, !alias.scope !362, !noalias !364
  store <8 x i16> %517, ptr %520, align 2, !alias.scope !362, !noalias !364
  store <8 x i16> %518, ptr %521, align 2, !alias.scope !362, !noalias !364
  store <8 x i16> %519, ptr %522, align 2, !alias.scope !362, !noalias !364
  %index.next489 = add nuw i64 %index445, 32
  %523 = icmp eq i64 %index.next489, %n.vec435
  br i1 %523, label %middle.block430, label %vector.body444, !llvm.loop !365

middle.block430:                                  ; preds = %vector.body444
  br i1 %cmp.n490, label %for.cond4.for.inc18_crit_edge.us.i335, label %for.body6.us.i311.preheader

for.body6.us.i311.preheader:                      ; preds = %middle.block430, %vector.memcheck416, %for.body.us.i306
  %i.035.us.i312.ph = phi i32 [ 0, %vector.memcheck416 ], [ 0, %for.body.us.i306 ], [ %ind.end436, %middle.block430 ]
  %blk_line.034.us.i313.ph = phi ptr [ %block.addr.039.us.i308, %vector.memcheck416 ], [ %block.addr.039.us.i308, %for.body.us.i306 ], [ %ind.end438, %middle.block430 ]
  %cur_line_p1.033.us.i314.ph = phi ptr [ %nxt_row.041.us.i310, %vector.memcheck416 ], [ %nxt_row.041.us.i310, %for.body.us.i306 ], [ %ind.end440, %middle.block430 ]
  %cur_line.032.us.i315.ph = phi ptr [ %cur_row.038.us.i309, %vector.memcheck416 ], [ %cur_row.038.us.i309, %for.body.us.i306 ], [ %ind.end442, %middle.block430 ]
  br label %for.body6.us.i311

for.body6.us.i311:                                ; preds = %for.body6.us.i311.preheader, %for.body6.us.i311
  %i.035.us.i312 = phi i32 [ %inc.us.i333, %for.body6.us.i311 ], [ %i.035.us.i312.ph, %for.body6.us.i311.preheader ]
  %blk_line.034.us.i313 = phi ptr [ %incdec.ptr17.us.i332, %for.body6.us.i311 ], [ %blk_line.034.us.i313.ph, %for.body6.us.i311.preheader ]
  %cur_line_p1.033.us.i314 = phi ptr [ %incdec.ptr7.us.i319, %for.body6.us.i311 ], [ %cur_line_p1.033.us.i314.ph, %for.body6.us.i311.preheader ]
  %cur_line.032.us.i315 = phi ptr [ %incdec.ptr.us.i316, %for.body6.us.i311 ], [ %cur_line.032.us.i315.ph, %for.body6.us.i311.preheader ]
  %incdec.ptr.us.i316 = getelementptr inbounds i8, ptr %cur_line.032.us.i315, i64 2
  %524 = load i16, ptr %cur_line.032.us.i315, align 2
  %conv.us.i317 = zext i16 %524 to i32
  %mul.us.i318 = mul nsw i32 %conv49, %conv.us.i317
  %incdec.ptr7.us.i319 = getelementptr inbounds i8, ptr %cur_line_p1.033.us.i314, i64 2
  %525 = load i16, ptr %cur_line_p1.033.us.i314, align 2
  %conv8.us.i320 = zext i16 %525 to i32
  %mul9.us.i321 = mul nsw i32 %conv82, %conv8.us.i320
  %526 = load i16, ptr %incdec.ptr.us.i316, align 2
  %527 = load i16, ptr %incdec.ptr7.us.i319, align 2
  %528 = insertelement <2 x i16> poison, i16 %526, i64 0
  %529 = insertelement <2 x i16> %528, i16 %527, i64 1
  %530 = zext <2 x i16> %529 to <2 x i32>
  %531 = mul nsw <2 x i32> %315, %530
  %add14.us.i326 = add i32 %mul.us.i318, %shl.i.i284
  %add.us.i327 = add i32 %add14.us.i326, %mul9.us.i321
  %532 = extractelement <2 x i32> %531, i64 0
  %add15.us.i328 = add i32 %add.us.i327, %532
  %533 = extractelement <2 x i32> %531, i64 1
  %add.i.us.i329 = add i32 %add15.us.i328, %533
  %shr.i.us.i330 = ashr i32 %add.i.us.i329, %total_scale
  %conv16.us.i331 = trunc i32 %shr.i.us.i330 to i16
  %incdec.ptr17.us.i332 = getelementptr inbounds i8, ptr %blk_line.034.us.i313, i64 2
  store i16 %conv16.us.i331, ptr %blk_line.034.us.i313, align 2
  %inc.us.i333 = add nuw nsw i32 %i.035.us.i312, 1
  %exitcond.not.i334 = icmp eq i32 %inc.us.i333, %hor_block_size
  br i1 %exitcond.not.i334, label %for.cond4.for.inc18_crit_edge.us.i335, label %for.body6.us.i311, !llvm.loop !366

for.cond4.for.inc18_crit_edge.us.i335:            ; preds = %for.body6.us.i311, %middle.block430
  %add.ptr1.us.i336 = getelementptr inbounds i8, ptr %block.addr.039.us.i308, i64 32
  %inc19.us.i337 = add nuw nsw i32 %j.040.us.i307, 1
  %exitcond43.not.i338 = icmp eq i32 %inc19.us.i337, %vert_block_size
  br i1 %exitcond43.not.i338, label %if.end91, label %for.body.us.i306

if.end91:                                         ; preds = %for.cond4.for.inc18_crit_edge.us.i335, %for.cond3.for.inc11_crit_edge.us.i276, %for.cond4.for.inc12_crit_edge.us.i231, %for.body.i189, %for.body.lr.ph.i282, %if.else66, %for.body.lr.ph.i236, %if.then57, %for.body.lr.ph.i201, %if.then44, %if.then28, %if.then
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.smax.v8i32(<8 x i32>, <8 x i32>) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.smin.v8i32(<8 x i32>, <8 x i32>) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smin.v4i32(<4 x i32>, <4 x i32>) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind }
attributes #11 = { cold nounwind }

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
!20 = distinct !{!20, !11}
!21 = !{!22}
!22 = distinct !{!22, !23}
!23 = distinct !{!23, !"LVerDomain"}
!24 = !{!25}
!25 = distinct !{!25, !23}
!26 = distinct !{!26, !11, !12}
!27 = distinct !{!27, !11}
!28 = !{!29}
!29 = distinct !{!29, !30}
!30 = distinct !{!30, !"LVerDomain"}
!31 = !{!32}
!32 = distinct !{!32, !30}
!33 = !{!34}
!34 = distinct !{!34, !30}
!35 = !{!36}
!36 = distinct !{!36, !30}
!37 = !{!38}
!38 = distinct !{!38, !30}
!39 = !{!40}
!40 = distinct !{!40, !30}
!41 = !{!42}
!42 = distinct !{!42, !30}
!43 = !{!40, !38, !36, !34, !32, !29, !44}
!44 = distinct !{!44, !30}
!45 = !{!44}
!46 = distinct !{!46, !11, !12}
!47 = distinct !{!47, !11}
!48 = distinct !{!48, !11, !12}
!49 = distinct !{!49, !11}
!50 = !{!51}
!51 = distinct !{!51, !52}
!52 = distinct !{!52, !"LVerDomain"}
!53 = !{!54}
!54 = distinct !{!54, !52}
!55 = !{!56}
!56 = distinct !{!56, !52}
!57 = !{!58}
!58 = distinct !{!58, !52}
!59 = !{!60}
!60 = distinct !{!60, !52}
!61 = !{!62}
!62 = distinct !{!62, !52}
!63 = !{!64}
!64 = distinct !{!64, !52}
!65 = !{!62, !60, !58, !56, !54, !51, !66}
!66 = distinct !{!66, !52}
!67 = !{!66}
!68 = distinct !{!68, !11, !12}
!69 = distinct !{!69, !11}
!70 = !{!71}
!71 = distinct !{!71, !72}
!72 = distinct !{!72, !"LVerDomain"}
!73 = !{!74}
!74 = distinct !{!74, !72}
!75 = distinct !{!75, !11, !12}
!76 = distinct !{!76, !11}
!77 = !{!78}
!78 = distinct !{!78, !79}
!79 = distinct !{!79, !"LVerDomain"}
!80 = !{!81}
!81 = distinct !{!81, !79}
!82 = !{!83}
!83 = distinct !{!83, !79}
!84 = !{!85}
!85 = distinct !{!85, !79}
!86 = !{!87}
!87 = distinct !{!87, !79}
!88 = !{!89}
!89 = distinct !{!89, !79}
!90 = !{!91}
!91 = distinct !{!91, !79}
!92 = !{!78, !81, !83, !85, !87, !89, !93}
!93 = distinct !{!93, !79}
!94 = !{!93}
!95 = distinct !{!95, !11, !12}
!96 = distinct !{!96, !11}
!97 = !{!98}
!98 = distinct !{!98, !99}
!99 = distinct !{!99, !"LVerDomain"}
!100 = !{!101}
!101 = distinct !{!101, !99}
!102 = distinct !{!102, !11, !12}
!103 = distinct !{!103, !11}
!104 = !{!105}
!105 = distinct !{!105, !106}
!106 = distinct !{!106, !"LVerDomain"}
!107 = !{!108}
!108 = distinct !{!108, !106}
!109 = !{!110}
!110 = distinct !{!110, !106}
!111 = !{!112}
!112 = distinct !{!112, !106}
!113 = !{!114}
!114 = distinct !{!114, !106}
!115 = !{!116}
!116 = distinct !{!116, !106}
!117 = !{!118}
!118 = distinct !{!118, !106}
!119 = !{!105, !108, !110, !112, !114, !116}
!120 = distinct !{!120, !11, !12}
!121 = distinct !{!121, !11}
!122 = !{!123}
!123 = distinct !{!123, !124}
!124 = distinct !{!124, !"LVerDomain"}
!125 = !{!126}
!126 = distinct !{!126, !124}
!127 = distinct !{!127, !11, !12}
!128 = distinct !{!128, !11}
!129 = !{!130}
!130 = distinct !{!130, !131}
!131 = distinct !{!131, !"LVerDomain"}
!132 = !{!133}
!133 = distinct !{!133, !131}
!134 = !{!135}
!135 = distinct !{!135, !131}
!136 = !{!137}
!137 = distinct !{!137, !131}
!138 = !{!139}
!139 = distinct !{!139, !131}
!140 = !{!141}
!141 = distinct !{!141, !131}
!142 = !{!143}
!143 = distinct !{!143, !131}
!144 = !{!130, !133, !135, !137, !139, !141, !145}
!145 = distinct !{!145, !131}
!146 = !{!145}
!147 = distinct !{!147, !11, !12}
!148 = distinct !{!148, !11}
!149 = !{!150}
!150 = distinct !{!150, !151}
!151 = distinct !{!151, !"LVerDomain"}
!152 = !{!153}
!153 = distinct !{!153, !151}
!154 = !{!155}
!155 = distinct !{!155, !151}
!156 = !{!157}
!157 = distinct !{!157, !151}
!158 = !{!159}
!159 = distinct !{!159, !151}
!160 = !{!161}
!161 = distinct !{!161, !151}
!162 = !{!163}
!163 = distinct !{!163, !151}
!164 = !{!161, !159, !157, !155, !153, !150}
!165 = distinct !{!165, !11, !12}
!166 = distinct !{!166, !11}
!167 = !{!168}
!168 = distinct !{!168, !169}
!169 = distinct !{!169, !"LVerDomain"}
!170 = !{!171}
!171 = distinct !{!171, !169}
!172 = distinct !{!172, !11, !12}
!173 = distinct !{!173, !11}
!174 = !{!175}
!175 = distinct !{!175, !176}
!176 = distinct !{!176, !"LVerDomain"}
!177 = !{!178}
!178 = distinct !{!178, !176}
!179 = !{!180}
!180 = distinct !{!180, !176}
!181 = !{!182}
!182 = distinct !{!182, !176}
!183 = !{!184}
!184 = distinct !{!184, !176}
!185 = !{!186}
!186 = distinct !{!186, !176}
!187 = !{!188}
!188 = distinct !{!188, !176}
!189 = !{!186, !184, !182, !180, !178, !175}
!190 = distinct !{!190, !11, !12}
!191 = distinct !{!191, !11}
!192 = !{!193}
!193 = distinct !{!193, !194}
!194 = distinct !{!194, !"LVerDomain"}
!195 = !{!196}
!196 = distinct !{!196, !194}
!197 = distinct !{!197, !11, !12}
!198 = distinct !{!198, !11}
!199 = !{!200}
!200 = distinct !{!200, !201}
!201 = distinct !{!201, !"LVerDomain"}
!202 = !{!203}
!203 = distinct !{!203, !201}
!204 = distinct !{!204, !11, !12}
!205 = distinct !{!205, !11}
!206 = !{!207}
!207 = distinct !{!207, !208}
!208 = distinct !{!208, !"LVerDomain"}
!209 = !{!210}
!210 = distinct !{!210, !208}
!211 = !{!212}
!212 = distinct !{!212, !208}
!213 = !{!214}
!214 = distinct !{!214, !208}
!215 = !{!216}
!216 = distinct !{!216, !208}
!217 = !{!218}
!218 = distinct !{!218, !208}
!219 = !{!220}
!220 = distinct !{!220, !208}
!221 = !{!218, !216, !214, !212, !210, !207}
!222 = distinct !{!222, !11, !12}
!223 = distinct !{!223, !11}
!224 = !{!225}
!225 = distinct !{!225, !226}
!226 = distinct !{!226, !"LVerDomain"}
!227 = !{!228}
!228 = distinct !{!228, !226}
!229 = distinct !{!229, !11, !12}
!230 = distinct !{!230, !11}
!231 = !{!232}
!232 = distinct !{!232, !233}
!233 = distinct !{!233, !"LVerDomain"}
!234 = !{!235}
!235 = distinct !{!235, !233}
!236 = !{!237}
!237 = distinct !{!237, !233}
!238 = !{!239}
!239 = distinct !{!239, !233}
!240 = !{!241}
!241 = distinct !{!241, !233}
!242 = !{!243}
!243 = distinct !{!243, !233}
!244 = !{!245}
!245 = distinct !{!245, !233}
!246 = !{!243, !241, !239, !237, !235, !232}
!247 = distinct !{!247, !11, !12}
!248 = distinct !{!248, !11}
!249 = !{!250}
!250 = distinct !{!250, !251}
!251 = distinct !{!251, !"LVerDomain"}
!252 = !{!253}
!253 = distinct !{!253, !251}
!254 = distinct !{!254, !11, !12}
!255 = distinct !{!255, !11}
!256 = !{!257}
!257 = distinct !{!257, !258}
!258 = distinct !{!258, !"LVerDomain"}
!259 = !{!260}
!260 = distinct !{!260, !258}
!261 = !{!262}
!262 = distinct !{!262, !258}
!263 = !{!264}
!264 = distinct !{!264, !258}
!265 = !{!266}
!266 = distinct !{!266, !258}
!267 = !{!268}
!268 = distinct !{!268, !258}
!269 = !{!270}
!270 = distinct !{!270, !258}
!271 = !{!268, !266, !264, !262, !260, !257}
!272 = distinct !{!272, !11, !12}
!273 = distinct !{!273, !11}
!274 = !{!275}
!275 = distinct !{!275, !276}
!276 = distinct !{!276, !"LVerDomain"}
!277 = !{!278}
!278 = distinct !{!278, !276}
!279 = distinct !{!279, !11, !12}
!280 = distinct !{!280, !11}
!281 = !{!282}
!282 = distinct !{!282, !283}
!283 = distinct !{!283, !"LVerDomain"}
!284 = !{!285}
!285 = distinct !{!285, !283}
!286 = !{!287}
!287 = distinct !{!287, !283}
!288 = !{!289}
!289 = distinct !{!289, !283}
!290 = !{!291}
!291 = distinct !{!291, !283}
!292 = !{!293}
!293 = distinct !{!293, !283}
!294 = !{!295}
!295 = distinct !{!295, !283}
!296 = !{!293, !291, !289, !287, !285, !282}
!297 = distinct !{!297, !11, !12}
!298 = distinct !{!298, !11}
!299 = distinct !{!299, !300}
!300 = !{!"llvm.loop.unswitch.partial.disable"}
!301 = distinct !{!301, !11, !12}
!302 = distinct !{!302, !11}
!303 = distinct !{!303, !11, !12}
!304 = distinct !{!304, !11}
!305 = distinct !{!305, !11, !12}
!306 = distinct !{!306, !11}
!307 = distinct !{!307, !11, !12}
!308 = distinct !{!308, !11}
!309 = distinct !{!309, !11, !12}
!310 = distinct !{!310, !11}
!311 = distinct !{!311, !11, !12}
!312 = distinct !{!312, !11}
!313 = !{!314}
!314 = distinct !{!314, !315}
!315 = distinct !{!315, !"LVerDomain"}
!316 = !{!317}
!317 = distinct !{!317, !315}
!318 = !{!319}
!319 = distinct !{!319, !315}
!320 = !{!317, !314}
!321 = distinct !{!321, !11, !12}
!322 = distinct !{!322, !11}
!323 = !{!324}
!324 = distinct !{!324, !325}
!325 = distinct !{!325, !"LVerDomain"}
!326 = !{!327}
!327 = distinct !{!327, !325}
!328 = !{!329}
!329 = distinct !{!329, !325}
!330 = !{!327, !324}
!331 = distinct !{!331, !11, !12}
!332 = distinct !{!332, !11}
!333 = !{!334}
!334 = distinct !{!334, !335}
!335 = distinct !{!335, !"LVerDomain"}
!336 = !{!337}
!337 = distinct !{!337, !335}
!338 = distinct !{!338, !11, !12}
!339 = distinct !{!339, !11}
!340 = !{!341}
!341 = distinct !{!341, !342}
!342 = distinct !{!342, !"LVerDomain"}
!343 = !{!344}
!344 = distinct !{!344, !342}
!345 = distinct !{!345, !11, !12}
!346 = distinct !{!346, !11}
!347 = !{!348}
!348 = distinct !{!348, !349}
!349 = distinct !{!349, !"LVerDomain"}
!350 = !{!351}
!351 = distinct !{!351, !349}
!352 = !{!353}
!353 = distinct !{!353, !349}
!354 = !{!351, !348}
!355 = distinct !{!355, !11, !12}
!356 = distinct !{!356, !11}
!357 = !{!358}
!358 = distinct !{!358, !359}
!359 = distinct !{!359, !"LVerDomain"}
!360 = !{!361}
!361 = distinct !{!361, !359}
!362 = !{!363}
!363 = distinct !{!363, !359}
!364 = !{!361, !358}
!365 = distinct !{!365, !11, !12}
!366 = distinct !{!366, !11}
