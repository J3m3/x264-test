; ModuleID = 'ldecod_src/intra4x4_pred_normal.c'
source_filename = "ldecod_src/intra4x4_pred_normal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pix_pos = type { i32, i32, i16, i16, i16, i16 }

@.str = private unnamed_addr constant [46 x i8] c"Error: illegal intra_4x4 prediction mode: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [66 x i8] c"warning: Intra_4x4_Vertical prediction mode not allowed at mb %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [68 x i8] c"warning: Intra_4x4_Horizontal prediction mode not allowed at mb %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [77 x i8] c"warning: Intra_4x4_Diagonal_Down_Right prediction mode not allowed at mb %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [76 x i8] c"warning: Intra_4x4_Diagonal_Down_Left prediction mode not allowed at mb %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [72 x i8] c"warning: Intra_4x4_Vertical_Right prediction mode not allowed at mb %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [71 x i8] c"warning: Intra_4x4_Vertical_Left prediction mode not allowed at mb %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [71 x i8] c"warning: Intra_4x4_Horizontal_Up prediction mode not allowed at mb %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [73 x i8] c"warning: Intra_4x4_Horizontal_Down prediction mode not allowed at mb %d\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @intra4x4_pred_normal(ptr noundef %currMB, i32 noundef %pl, i32 noundef %ioff, i32 noundef %joff, i32 noundef %img_block_x, i32 noundef %img_block_y) local_unnamed_addr #0 {
entry:
  %pix_a.i398 = alloca %struct.pix_pos, align 4
  %pix_b.i399 = alloca %struct.pix_pos, align 4
  %pix_d.i400 = alloca %struct.pix_pos, align 4
  %pix_a.i359 = alloca %struct.pix_pos, align 4
  %pix_b.i260 = alloca %struct.pix_pos, align 4
  %pix_c.i261 = alloca %struct.pix_pos, align 4
  %pix_a.i192 = alloca %struct.pix_pos, align 4
  %pix_b.i193 = alloca %struct.pix_pos, align 4
  %pix_d.i194 = alloca %struct.pix_pos, align 4
  %pix_b.i145 = alloca %struct.pix_pos, align 4
  %pix_c.i = alloca %struct.pix_pos, align 4
  %pix_a.i102 = alloca %struct.pix_pos, align 4
  %pix_b.i103 = alloca %struct.pix_pos, align 4
  %pix_d.i = alloca %struct.pix_pos, align 4
  %pix_a.i78 = alloca %struct.pix_pos, align 4
  %pix_b.i59 = alloca %struct.pix_pos, align 4
  %pix_a.i = alloca %struct.pix_pos, align 4
  %pix_b.i = alloca %struct.pix_pos, align 4
  %p_Vid1 = getelementptr inbounds i8, ptr %currMB, i64 8
  %0 = load ptr, ptr %p_Vid1, align 8
  %ipredmode = getelementptr inbounds i8, ptr %0, i64 848800
  %1 = load ptr, ptr %ipredmode, align 8
  %idxprom = sext i32 %img_block_y to i64
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 %idxprom
  %2 = load ptr, ptr %arrayidx, align 8
  %idxprom2 = sext i32 %img_block_x to i64
  %arrayidx3 = getelementptr inbounds i8, ptr %2, i64 %idxprom2
  %3 = load i8, ptr %arrayidx3, align 1
  %ipmode_DPCM = getelementptr inbounds i8, ptr %currMB, i64 372
  store i8 %3, ptr %ipmode_DPCM, align 4
  switch i8 %3, label %sw.default [
    i8 2, label %sw.bb
    i8 0, label %sw.bb4
    i8 1, label %sw.bb6
    i8 4, label %sw.bb8
    i8 3, label %sw.bb10
    i8 5, label %sw.bb12
    i8 7, label %sw.bb14
    i8 8, label %sw.bb16
    i8 6, label %sw.bb18
  ]

sw.bb:                                            ; preds = %entry
  %4 = load ptr, ptr %currMB, align 8
  %tobool.not.i = icmp eq i32 %pl, 0
  %dec_picture2.i = getelementptr inbounds i8, ptr %4, i64 13520
  %5 = load ptr, ptr %dec_picture2.i, align 8
  br i1 %tobool.not.i, label %cond.false.i, label %cond.true.i

cond.true.i:                                      ; preds = %sw.bb
  %imgUV.i = getelementptr inbounds i8, ptr %5, i64 136
  %6 = load ptr, ptr %imgUV.i, align 8
  %sub.i = add i32 %pl, -1
  %idxprom.i = zext i32 %sub.i to i64
  %arrayidx.i = getelementptr inbounds ptr, ptr %6, i64 %idxprom.i
  br label %cond.end.i

cond.false.i:                                     ; preds = %sw.bb
  %imgY3.i = getelementptr inbounds i8, ptr %5, i64 128
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %cond.true.i
  %cond.in.i = phi ptr [ %arrayidx.i, %cond.true.i ], [ %imgY3.i, %cond.false.i ]
  %cond.i = load ptr, ptr %cond.in.i, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pix_a.i) #5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pix_b.i) #5
  %mb_pred4.i = getelementptr inbounds i8, ptr %4, i64 1248
  %7 = load ptr, ptr %mb_pred4.i, align 8
  %idxprom5.i = zext i32 %pl to i64
  %arrayidx6.i = getelementptr inbounds ptr, ptr %7, i64 %idxprom5.i
  %8 = load ptr, ptr %arrayidx6.i, align 8
  %sub7.i = add nsw i32 %ioff, -1
  %mb_size.i = getelementptr inbounds i8, ptr %0, i64 849124
  call void @getNonAffNeighbour(ptr noundef nonnull %currMB, i32 noundef %sub7.i, i32 noundef %joff, ptr noundef nonnull %mb_size.i, ptr noundef nonnull %pix_a.i) #5
  %sub9.i = add nsw i32 %joff, -1
  call void @getNonAffNeighbour(ptr noundef nonnull %currMB, i32 noundef %ioff, i32 noundef %sub9.i, ptr noundef nonnull %mb_size.i, ptr noundef nonnull %pix_b.i) #5
  %active_pps.i = getelementptr inbounds i8, ptr %0, i64 8
  %9 = load ptr, ptr %active_pps.i, align 8
  %constrained_intra_pred_flag.i = getelementptr inbounds i8, ptr %9, i64 2204
  %10 = load i32, ptr %constrained_intra_pred_flag.i, align 4
  %tobool13.not.i = icmp eq i32 %10, 0
  %11 = load i32, ptr %pix_a.i, align 4
  br i1 %tobool13.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %cond.end.i
  %tobool14.not.i = icmp eq i32 %11, 0
  br i1 %tobool14.not.i, label %cond.end19.i, label %cond.true15.i

cond.true15.i:                                    ; preds = %if.then.i
  %intra_block.i = getelementptr inbounds i8, ptr %4, i64 13544
  %12 = load ptr, ptr %intra_block.i, align 8
  %mb_addr.i = getelementptr inbounds i8, ptr %pix_a.i, i64 4
  %13 = load i32, ptr %mb_addr.i, align 4
  %idxprom16.i = sext i32 %13 to i64
  %arrayidx17.i = getelementptr inbounds i8, ptr %12, i64 %idxprom16.i
  %14 = load i8, ptr %arrayidx17.i, align 1
  %conv.i = sext i8 %14 to i32
  br label %cond.end19.i

cond.end19.i:                                     ; preds = %cond.true15.i, %if.then.i
  %cond20.i = phi i32 [ %conv.i, %cond.true15.i ], [ 0, %if.then.i ]
  %15 = load i32, ptr %pix_b.i, align 4
  %tobool22.not.i = icmp eq i32 %15, 0
  br i1 %tobool22.not.i, label %if.end49.i, label %cond.true23.i

cond.true23.i:                                    ; preds = %cond.end19.i
  %intra_block24.i = getelementptr inbounds i8, ptr %4, i64 13544
  %16 = load ptr, ptr %intra_block24.i, align 8
  %mb_addr25.i = getelementptr inbounds i8, ptr %pix_b.i, i64 4
  %17 = load i32, ptr %mb_addr25.i, align 4
  %idxprom26.i = sext i32 %17 to i64
  %arrayidx27.i = getelementptr inbounds i8, ptr %16, i64 %idxprom26.i
  %18 = load i8, ptr %arrayidx27.i, align 1
  %conv28.i = sext i8 %18 to i32
  br label %if.end.i

if.else.i:                                        ; preds = %cond.end.i
  %19 = load i32, ptr %pix_b.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %cond.true23.i
  %block_available_up.0.i = phi i32 [ %19, %if.else.i ], [ %conv28.i, %cond.true23.i ]
  %block_available_left.0.i = phi i32 [ %11, %if.else.i ], [ %cond20.i, %cond.true23.i ]
  %tobool34.not.i = icmp eq i32 %block_available_up.0.i, 0
  br i1 %tobool34.not.i, label %if.end49.i, label %if.end49.thread.i

if.end49.i:                                       ; preds = %if.end.i, %cond.end19.i
  %block_available_left.0190.i = phi i32 [ %block_available_left.0.i, %if.end.i ], [ %cond20.i, %cond.end19.i ]
  %tobool50.not.i = icmp eq i32 %block_available_left.0190.i, 0
  br i1 %tobool50.not.i, label %if.else94.i, label %if.end75.i

if.end49.thread.i:                                ; preds = %if.end.i
  %pos_y.i = getelementptr inbounds i8, ptr %pix_b.i, i64 14
  %20 = load i16, ptr %pos_y.i, align 2
  %idxprom36.i = sext i16 %20 to i64
  %arrayidx37.i = getelementptr inbounds ptr, ptr %cond.i, i64 %idxprom36.i
  %21 = load ptr, ptr %arrayidx37.i, align 8
  %pos_x.i = getelementptr inbounds i8, ptr %pix_b.i, i64 12
  %22 = load i16, ptr %pos_x.i, align 4
  %idxprom38.i = sext i16 %22 to i64
  %arrayidx39.i = getelementptr inbounds i16, ptr %21, i64 %idxprom38.i
  %23 = load <4 x i16>, ptr %arrayidx39.i, align 2
  %24 = zext <4 x i16> %23 to <4 x i32>
  %25 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %24)
  %tobool50.not209.i = icmp eq i32 %block_available_left.0.i, 0
  br i1 %tobool50.not209.i, label %if.then91.i, label %if.end75.i

if.end75.i:                                       ; preds = %if.end49.thread.i, %if.end49.i
  %s0.0213.i = phi i32 [ %25, %if.end49.thread.i ], [ 0, %if.end49.i ]
  %tobool81196212.i = phi i1 [ false, %if.end49.thread.i ], [ true, %if.end49.i ]
  %tobool34191210.i = phi i1 [ true, %if.end49.thread.i ], [ false, %if.end49.i ]
  %pos_y52.i = getelementptr inbounds i8, ptr %pix_a.i, i64 14
  %26 = load i16, ptr %pos_y52.i, align 2
  %idxprom53.i = sext i16 %26 to i64
  %arrayidx54.i = getelementptr inbounds ptr, ptr %cond.i, i64 %idxprom53.i
  %pos_x56.i = getelementptr inbounds i8, ptr %pix_a.i, i64 12
  %27 = load i16, ptr %pos_x56.i, align 4
  %incdec.ptr58.i = getelementptr inbounds i8, ptr %arrayidx54.i, i64 8
  %28 = load ptr, ptr %arrayidx54.i, align 8
  %idx.ext.i = sext i16 %27 to i64
  %add.ptr.i = getelementptr inbounds i16, ptr %28, i64 %idx.ext.i
  %29 = load i16, ptr %add.ptr.i, align 2
  %conv59.i = zext i16 %29 to i32
  %add60.i = add nuw nsw i32 %s0.0213.i, %conv59.i
  %incdec.ptr61.i = getelementptr inbounds i8, ptr %arrayidx54.i, i64 16
  %30 = load ptr, ptr %incdec.ptr58.i, align 8
  %add.ptr63.i = getelementptr inbounds i16, ptr %30, i64 %idx.ext.i
  %31 = load i16, ptr %add.ptr63.i, align 2
  %conv64.i = zext i16 %31 to i32
  %add65.i = add nuw nsw i32 %add60.i, %conv64.i
  %incdec.ptr66.i = getelementptr inbounds i8, ptr %arrayidx54.i, i64 24
  %32 = load ptr, ptr %incdec.ptr61.i, align 8
  %add.ptr68.i = getelementptr inbounds i16, ptr %32, i64 %idx.ext.i
  %33 = load i16, ptr %add.ptr68.i, align 2
  %conv69.i = zext i16 %33 to i32
  %add70.i = add nuw nsw i32 %add65.i, %conv69.i
  %34 = load ptr, ptr %incdec.ptr66.i, align 8
  %add.ptr72.i = getelementptr inbounds i16, ptr %34, i64 %idx.ext.i
  %35 = load i16, ptr %add.ptr72.i, align 2
  %conv73.i = zext i16 %35 to i32
  %add74.i = add nuw nsw i32 %add70.i, %conv73.i
  br i1 %tobool34191210.i, label %if.then78.i, label %if.else80.i

if.then78.i:                                      ; preds = %if.end75.i
  %add79.i = add nuw nsw i32 %add74.i, 4
  %shr.i = lshr i32 %add79.i, 3
  br label %intra4x4_dc_pred.exit

if.else80.i:                                      ; preds = %if.end75.i
  br i1 %tobool81196212.i, label %if.then84.i, label %if.else94.i

if.then84.i:                                      ; preds = %if.else80.i
  %add85.i = add nuw nsw i32 %add74.i, 2
  %shr86.i = lshr i32 %add85.i, 2
  br label %intra4x4_dc_pred.exit

if.then91.i:                                      ; preds = %if.end49.thread.i
  %add92.i = add nuw nsw i32 %25, 2
  %shr93.i = lshr i32 %add92.i, 2
  br label %intra4x4_dc_pred.exit

if.else94.i:                                      ; preds = %if.else80.i, %if.end49.i
  %dc_pred_value_comp.i = getelementptr inbounds i8, ptr %0, i64 849060
  %arrayidx96.i = getelementptr inbounds [3 x i32], ptr %dc_pred_value_comp.i, i64 0, i64 %idxprom5.i
  %36 = load i32, ptr %arrayidx96.i, align 4
  br label %intra4x4_dc_pred.exit

intra4x4_dc_pred.exit:                            ; preds = %if.then78.i, %if.then84.i, %if.then91.i, %if.else94.i
  %s0.2.i = phi i32 [ %shr.i, %if.then78.i ], [ %shr86.i, %if.then84.i ], [ %36, %if.else94.i ], [ %shr93.i, %if.then91.i ]
  %conv102.i = trunc i32 %s0.2.i to i16
  %idxprom105.i = sext i32 %ioff to i64
  %37 = sext i32 %joff to i64
  %arrayidx104.i = getelementptr inbounds ptr, ptr %8, i64 %37
  %38 = load ptr, ptr %arrayidx104.i, align 8
  %arrayidx106.i = getelementptr inbounds i16, ptr %38, i64 %idxprom105.i
  store i16 %conv102.i, ptr %arrayidx106.i, align 2
  %39 = load ptr, ptr %arrayidx104.i, align 8
  %40 = getelementptr i16, ptr %39, i64 %idxprom105.i
  %arrayidx112.i = getelementptr i8, ptr %40, i64 2
  store i16 %conv102.i, ptr %arrayidx112.i, align 2
  %41 = load ptr, ptr %arrayidx104.i, align 8
  %42 = getelementptr i16, ptr %41, i64 %idxprom105.i
  %arrayidx118.i = getelementptr i8, ptr %42, i64 4
  store i16 %conv102.i, ptr %arrayidx118.i, align 2
  %43 = load ptr, ptr %arrayidx104.i, align 8
  %44 = getelementptr i16, ptr %43, i64 %idxprom105.i
  %arrayidx124.i = getelementptr i8, ptr %44, i64 6
  store i16 %conv102.i, ptr %arrayidx124.i, align 2
  %arrayidx104.1.i = getelementptr i8, ptr %arrayidx104.i, i64 8
  %45 = load ptr, ptr %arrayidx104.1.i, align 8
  %arrayidx106.1.i = getelementptr inbounds i16, ptr %45, i64 %idxprom105.i
  store i16 %conv102.i, ptr %arrayidx106.1.i, align 2
  %46 = load ptr, ptr %arrayidx104.1.i, align 8
  %47 = getelementptr i16, ptr %46, i64 %idxprom105.i
  %arrayidx112.1.i = getelementptr i8, ptr %47, i64 2
  store i16 %conv102.i, ptr %arrayidx112.1.i, align 2
  %48 = load ptr, ptr %arrayidx104.1.i, align 8
  %49 = getelementptr i16, ptr %48, i64 %idxprom105.i
  %arrayidx118.1.i = getelementptr i8, ptr %49, i64 4
  store i16 %conv102.i, ptr %arrayidx118.1.i, align 2
  %50 = load ptr, ptr %arrayidx104.1.i, align 8
  %51 = getelementptr i16, ptr %50, i64 %idxprom105.i
  %arrayidx124.1.i = getelementptr i8, ptr %51, i64 6
  store i16 %conv102.i, ptr %arrayidx124.1.i, align 2
  %arrayidx104.2.i = getelementptr i8, ptr %arrayidx104.i, i64 16
  %52 = load ptr, ptr %arrayidx104.2.i, align 8
  %arrayidx106.2.i = getelementptr inbounds i16, ptr %52, i64 %idxprom105.i
  store i16 %conv102.i, ptr %arrayidx106.2.i, align 2
  %53 = load ptr, ptr %arrayidx104.2.i, align 8
  %54 = getelementptr i16, ptr %53, i64 %idxprom105.i
  %arrayidx112.2.i = getelementptr i8, ptr %54, i64 2
  store i16 %conv102.i, ptr %arrayidx112.2.i, align 2
  %55 = load ptr, ptr %arrayidx104.2.i, align 8
  %56 = getelementptr i16, ptr %55, i64 %idxprom105.i
  %arrayidx118.2.i = getelementptr i8, ptr %56, i64 4
  store i16 %conv102.i, ptr %arrayidx118.2.i, align 2
  %57 = load ptr, ptr %arrayidx104.2.i, align 8
  %58 = getelementptr i16, ptr %57, i64 %idxprom105.i
  %arrayidx124.2.i = getelementptr i8, ptr %58, i64 6
  store i16 %conv102.i, ptr %arrayidx124.2.i, align 2
  %arrayidx104.3.i = getelementptr i8, ptr %arrayidx104.i, i64 24
  %59 = load ptr, ptr %arrayidx104.3.i, align 8
  %arrayidx106.3.i = getelementptr inbounds i16, ptr %59, i64 %idxprom105.i
  store i16 %conv102.i, ptr %arrayidx106.3.i, align 2
  %60 = load ptr, ptr %arrayidx104.3.i, align 8
  %61 = getelementptr i16, ptr %60, i64 %idxprom105.i
  %arrayidx112.3.i = getelementptr i8, ptr %61, i64 2
  store i16 %conv102.i, ptr %arrayidx112.3.i, align 2
  %62 = load ptr, ptr %arrayidx104.3.i, align 8
  %63 = getelementptr i16, ptr %62, i64 %idxprom105.i
  %arrayidx118.3.i = getelementptr i8, ptr %63, i64 4
  store i16 %conv102.i, ptr %arrayidx118.3.i, align 2
  %64 = load ptr, ptr %arrayidx104.3.i, align 8
  %65 = getelementptr i16, ptr %64, i64 %idxprom105.i
  %arrayidx124.3.i = getelementptr i8, ptr %65, i64 6
  store i16 %conv102.i, ptr %arrayidx124.3.i, align 2
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pix_b.i) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pix_a.i) #5
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  %66 = load ptr, ptr %currMB, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pix_b.i59) #5
  %sub.i61 = add nsw i32 %joff, -1
  %mb_size.i62 = getelementptr inbounds i8, ptr %0, i64 849124
  call void @getNonAffNeighbour(ptr noundef nonnull %currMB, i32 noundef %ioff, i32 noundef %sub.i61, ptr noundef nonnull %mb_size.i62, ptr noundef nonnull %pix_b.i59) #5
  %active_pps.i63 = getelementptr inbounds i8, ptr %0, i64 8
  %67 = load ptr, ptr %active_pps.i63, align 8
  %constrained_intra_pred_flag.i64 = getelementptr inbounds i8, ptr %67, i64 2204
  %68 = load i32, ptr %constrained_intra_pred_flag.i64, align 4
  %tobool.not.i65 = icmp eq i32 %68, 0
  %69 = load i32, ptr %pix_b.i59, align 4
  br i1 %tobool.not.i65, label %if.end.i72, label %if.then.i66

if.then.i66:                                      ; preds = %sw.bb4
  %tobool2.not.i = icmp eq i32 %69, 0
  br i1 %tobool2.not.i, label %if.then6.i, label %cond.true.i67

cond.true.i67:                                    ; preds = %if.then.i66
  %intra_block.i68 = getelementptr inbounds i8, ptr %66, i64 13544
  %70 = load ptr, ptr %intra_block.i68, align 8
  %mb_addr.i69 = getelementptr inbounds i8, ptr %pix_b.i59, i64 4
  %71 = load i32, ptr %mb_addr.i69, align 4
  %idxprom.i70 = sext i32 %71 to i64
  %arrayidx3.i = getelementptr inbounds i8, ptr %70, i64 %idxprom.i70
  %72 = load i8, ptr %arrayidx3.i, align 1
  %conv.i71 = sext i8 %72 to i32
  br label %if.end.i72

if.end.i72:                                       ; preds = %cond.true.i67, %sw.bb4
  %block_available_up.0.i73 = phi i32 [ %conv.i71, %cond.true.i67 ], [ %69, %sw.bb4 ]
  %tobool5.not.i = icmp eq i32 %block_available_up.0.i73, 0
  br i1 %tobool5.not.i, label %if.then6.i, label %if.else7.i

if.then6.i:                                       ; preds = %if.end.i72, %if.then.i66
  %current_mb_nr.i = getelementptr inbounds i8, ptr %66, i64 108
  %73 = load i32, ptr %current_mb_nr.i, align 4
  %call.i = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %73)
  br label %intra4x4_vert_pred.exit

if.else7.i:                                       ; preds = %if.end.i72
  %mb_pred8.i = getelementptr inbounds i8, ptr %66, i64 1248
  %74 = load ptr, ptr %mb_pred8.i, align 8
  %idxprom9.i = zext i32 %pl to i64
  %arrayidx10.i = getelementptr inbounds ptr, ptr %74, i64 %idxprom9.i
  %75 = load ptr, ptr %arrayidx10.i, align 8
  %tobool11.not.i = icmp eq i32 %pl, 0
  %dec_picture21.i = getelementptr inbounds i8, ptr %66, i64 13520
  %76 = load ptr, ptr %dec_picture21.i, align 8
  br i1 %tobool11.not.i, label %cond.false20.i, label %cond.true12.i

cond.true12.i:                                    ; preds = %if.else7.i
  %imgUV.i74 = getelementptr inbounds i8, ptr %76, i64 136
  %77 = load ptr, ptr %imgUV.i74, align 8
  %sub13.i = add i32 %pl, -1
  %idxprom14.i = zext i32 %sub13.i to i64
  %arrayidx15.i = getelementptr inbounds ptr, ptr %77, i64 %idxprom14.i
  br label %cond.end29.i

cond.false20.i:                                   ; preds = %if.else7.i
  %imgY22.i = getelementptr inbounds i8, ptr %76, i64 128
  br label %cond.end29.i

cond.end29.i:                                     ; preds = %cond.false20.i, %cond.true12.i
  %imgY22.sink.i = phi ptr [ %imgY22.i, %cond.false20.i ], [ %arrayidx15.i, %cond.true12.i ]
  %78 = load ptr, ptr %imgY22.sink.i, align 8
  %pos_y23.i = getelementptr inbounds i8, ptr %pix_b.i59, i64 14
  %79 = load i16, ptr %pos_y23.i, align 2
  %idxprom24.i = sext i16 %79 to i64
  %arrayidx25.i = getelementptr inbounds ptr, ptr %78, i64 %idxprom24.i
  %80 = load ptr, ptr %arrayidx25.i, align 8
  %pos_x26.i = getelementptr inbounds i8, ptr %pix_b.i59, i64 12
  %81 = load i16, ptr %pos_x26.i, align 4
  %idxprom27.i = sext i16 %81 to i64
  %arrayidx28.i = getelementptr inbounds i16, ptr %80, i64 %idxprom27.i
  %idxprom31.i = sext i32 %joff to i64
  %arrayidx32.i = getelementptr inbounds ptr, ptr %75, i64 %idxprom31.i
  %82 = load ptr, ptr %arrayidx32.i, align 8
  %idxprom33.i = sext i32 %ioff to i64
  %arrayidx34.i = getelementptr inbounds i16, ptr %82, i64 %idxprom33.i
  %83 = load i64, ptr %arrayidx28.i, align 2
  store i64 %83, ptr %arrayidx34.i, align 2
  %arrayidx37.i75 = getelementptr i8, ptr %arrayidx32.i, i64 8
  %84 = load ptr, ptr %arrayidx37.i75, align 8
  %arrayidx39.i76 = getelementptr inbounds i16, ptr %84, i64 %idxprom33.i
  %85 = load i64, ptr %arrayidx28.i, align 2
  store i64 %85, ptr %arrayidx39.i76, align 2
  %arrayidx42.i = getelementptr i8, ptr %arrayidx32.i, i64 16
  %86 = load ptr, ptr %arrayidx42.i, align 8
  %arrayidx44.i = getelementptr inbounds i16, ptr %86, i64 %idxprom33.i
  %87 = load i64, ptr %arrayidx28.i, align 2
  store i64 %87, ptr %arrayidx44.i, align 2
  %arrayidx46.i = getelementptr i8, ptr %arrayidx32.i, i64 24
  %88 = load ptr, ptr %arrayidx46.i, align 8
  %arrayidx48.i = getelementptr inbounds i16, ptr %88, i64 %idxprom33.i
  %89 = load i64, ptr %arrayidx28.i, align 2
  store i64 %89, ptr %arrayidx48.i, align 2
  br label %intra4x4_vert_pred.exit

intra4x4_vert_pred.exit:                          ; preds = %if.then6.i, %cond.end29.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pix_b.i59) #5
  br label %cleanup

sw.bb6:                                           ; preds = %entry
  %90 = load ptr, ptr %currMB, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pix_a.i78) #5
  %sub.i80 = add nsw i32 %ioff, -1
  %mb_size.i81 = getelementptr inbounds i8, ptr %0, i64 849124
  call void @getNonAffNeighbour(ptr noundef nonnull %currMB, i32 noundef %sub.i80, i32 noundef %joff, ptr noundef nonnull %mb_size.i81, ptr noundef nonnull %pix_a.i78) #5
  %active_pps.i82 = getelementptr inbounds i8, ptr %0, i64 8
  %91 = load ptr, ptr %active_pps.i82, align 8
  %constrained_intra_pred_flag.i83 = getelementptr inbounds i8, ptr %91, i64 2204
  %92 = load i32, ptr %constrained_intra_pred_flag.i83, align 4
  %tobool.not.i84 = icmp eq i32 %92, 0
  %93 = load i32, ptr %pix_a.i78, align 4
  br i1 %tobool.not.i84, label %if.end.i93, label %if.then.i85

if.then.i85:                                      ; preds = %sw.bb6
  %tobool2.not.i86 = icmp eq i32 %93, 0
  br i1 %tobool2.not.i86, label %if.then6.i99, label %cond.true.i87

cond.true.i87:                                    ; preds = %if.then.i85
  %intra_block.i88 = getelementptr inbounds i8, ptr %90, i64 13544
  %94 = load ptr, ptr %intra_block.i88, align 8
  %mb_addr.i89 = getelementptr inbounds i8, ptr %pix_a.i78, i64 4
  %95 = load i32, ptr %mb_addr.i89, align 4
  %idxprom.i90 = sext i32 %95 to i64
  %arrayidx3.i91 = getelementptr inbounds i8, ptr %94, i64 %idxprom.i90
  %96 = load i8, ptr %arrayidx3.i91, align 1
  %conv.i92 = sext i8 %96 to i32
  br label %if.end.i93

if.end.i93:                                       ; preds = %cond.true.i87, %sw.bb6
  %block_available_left.0.i94 = phi i32 [ %conv.i92, %cond.true.i87 ], [ %93, %sw.bb6 ]
  %tobool5.not.i95 = icmp eq i32 %block_available_left.0.i94, 0
  br i1 %tobool5.not.i95, label %if.then6.i99, label %if.else7.i96

if.then6.i99:                                     ; preds = %if.end.i93, %if.then.i85
  %current_mb_nr.i100 = getelementptr inbounds i8, ptr %90, i64 108
  %97 = load i32, ptr %current_mb_nr.i100, align 4
  %call.i101 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %97)
  br label %intra4x4_hor_pred.exit

if.else7.i96:                                     ; preds = %if.end.i93
  %pos_y8.i = getelementptr inbounds i8, ptr %pix_a.i78, i64 14
  %98 = load i16, ptr %pos_y8.i, align 2
  %pos_x10.i = getelementptr inbounds i8, ptr %pix_a.i78, i64 12
  %99 = load i16, ptr %pos_x10.i, align 4
  %mb_pred12.i = getelementptr inbounds i8, ptr %90, i64 1248
  %100 = load ptr, ptr %mb_pred12.i, align 8
  %idxprom13.i = zext i32 %pl to i64
  %arrayidx14.i = getelementptr inbounds ptr, ptr %100, i64 %idxprom13.i
  %101 = load ptr, ptr %arrayidx14.i, align 8
  %idxprom15.i = sext i32 %joff to i64
  %arrayidx16.i = getelementptr inbounds ptr, ptr %101, i64 %idxprom15.i
  %tobool17.not.i = icmp eq i32 %pl, 0
  %dec_picture23.i = getelementptr inbounds i8, ptr %90, i64 13520
  %102 = load ptr, ptr %dec_picture23.i, align 8
  br i1 %tobool17.not.i, label %cond.false22.i, label %cond.true18.i

cond.true18.i:                                    ; preds = %if.else7.i96
  %imgUV.i97 = getelementptr inbounds i8, ptr %102, i64 136
  %103 = load ptr, ptr %imgUV.i97, align 8
  %sub19.i = add i32 %pl, -1
  %idxprom20.i = zext i32 %sub19.i to i64
  %arrayidx21.i = getelementptr inbounds ptr, ptr %103, i64 %idxprom20.i
  br label %cond.end25.i

cond.false22.i:                                   ; preds = %if.else7.i96
  %imgY24.i = getelementptr inbounds i8, ptr %102, i64 128
  br label %cond.end25.i

cond.end25.i:                                     ; preds = %cond.false22.i, %cond.true18.i
  %cond26.in.i = phi ptr [ %arrayidx21.i, %cond.true18.i ], [ %imgY24.i, %cond.false22.i ]
  %cond26.i = load ptr, ptr %cond26.in.i, align 8
  %idxprom32.i = sext i16 %99 to i64
  %idxprom34.i = sext i32 %ioff to i64
  %104 = sext i16 %98 to i64
  %105 = load ptr, ptr %arrayidx16.i, align 8
  %arrayidx31.i = getelementptr inbounds ptr, ptr %cond26.i, i64 %104
  %106 = load ptr, ptr %arrayidx31.i, align 8
  %arrayidx33.i = getelementptr inbounds i16, ptr %106, i64 %idxprom32.i
  %107 = load i16, ptr %arrayidx33.i, align 2
  %arrayidx35.i = getelementptr inbounds i16, ptr %105, i64 %idxprom34.i
  %108 = insertelement <4 x i16> poison, i16 %107, i64 0
  %109 = shufflevector <4 x i16> %108, <4 x i16> poison, <4 x i32> zeroinitializer
  store <4 x i16> %109, ptr %arrayidx35.i, align 2
  %arrayidx29.1.i = getelementptr inbounds i8, ptr %arrayidx16.i, i64 8
  %110 = load ptr, ptr %arrayidx29.1.i, align 8
  %arrayidx31.1.i = getelementptr i8, ptr %arrayidx31.i, i64 8
  %111 = load ptr, ptr %arrayidx31.1.i, align 8
  %arrayidx33.1.i = getelementptr inbounds i16, ptr %111, i64 %idxprom32.i
  %112 = load i16, ptr %arrayidx33.1.i, align 2
  %arrayidx35.1.i = getelementptr inbounds i16, ptr %110, i64 %idxprom34.i
  %113 = insertelement <4 x i16> poison, i16 %112, i64 0
  %114 = shufflevector <4 x i16> %113, <4 x i16> poison, <4 x i32> zeroinitializer
  store <4 x i16> %114, ptr %arrayidx35.1.i, align 2
  %arrayidx29.2.i = getelementptr inbounds i8, ptr %arrayidx16.i, i64 16
  %115 = load ptr, ptr %arrayidx29.2.i, align 8
  %arrayidx31.2.i = getelementptr i8, ptr %arrayidx31.i, i64 16
  %116 = load ptr, ptr %arrayidx31.2.i, align 8
  %arrayidx33.2.i = getelementptr inbounds i16, ptr %116, i64 %idxprom32.i
  %117 = load i16, ptr %arrayidx33.2.i, align 2
  %arrayidx35.2.i = getelementptr inbounds i16, ptr %115, i64 %idxprom34.i
  %118 = insertelement <4 x i16> poison, i16 %117, i64 0
  %119 = shufflevector <4 x i16> %118, <4 x i16> poison, <4 x i32> zeroinitializer
  store <4 x i16> %119, ptr %arrayidx35.2.i, align 2
  %arrayidx29.3.i = getelementptr inbounds i8, ptr %arrayidx16.i, i64 24
  %120 = load ptr, ptr %arrayidx29.3.i, align 8
  %arrayidx31.3.i = getelementptr i8, ptr %arrayidx31.i, i64 24
  %121 = load ptr, ptr %arrayidx31.3.i, align 8
  %arrayidx33.3.i = getelementptr inbounds i16, ptr %121, i64 %idxprom32.i
  %122 = load i16, ptr %arrayidx33.3.i, align 2
  %arrayidx35.3.i = getelementptr inbounds i16, ptr %120, i64 %idxprom34.i
  %123 = insertelement <4 x i16> poison, i16 %122, i64 0
  %124 = shufflevector <4 x i16> %123, <4 x i16> poison, <4 x i32> zeroinitializer
  store <4 x i16> %124, ptr %arrayidx35.3.i, align 2
  br label %intra4x4_hor_pred.exit

intra4x4_hor_pred.exit:                           ; preds = %if.then6.i99, %cond.end25.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pix_a.i78) #5
  br label %cleanup

sw.bb8:                                           ; preds = %entry
  %125 = load ptr, ptr %currMB, align 8
  %tobool.not.i105 = icmp eq i32 %pl, 0
  %dec_picture2.i106 = getelementptr inbounds i8, ptr %125, i64 13520
  %126 = load ptr, ptr %dec_picture2.i106, align 8
  br i1 %tobool.not.i105, label %cond.false.i143, label %cond.true.i107

cond.true.i107:                                   ; preds = %sw.bb8
  %imgUV.i108 = getelementptr inbounds i8, ptr %126, i64 136
  %127 = load ptr, ptr %imgUV.i108, align 8
  %sub.i109 = add i32 %pl, -1
  %idxprom.i110 = zext i32 %sub.i109 to i64
  %arrayidx.i111 = getelementptr inbounds ptr, ptr %127, i64 %idxprom.i110
  br label %cond.end.i112

cond.false.i143:                                  ; preds = %sw.bb8
  %imgY3.i144 = getelementptr inbounds i8, ptr %126, i64 128
  br label %cond.end.i112

cond.end.i112:                                    ; preds = %cond.false.i143, %cond.true.i107
  %cond.in.i113 = phi ptr [ %arrayidx.i111, %cond.true.i107 ], [ %imgY3.i144, %cond.false.i143 ]
  %cond.i114 = load ptr, ptr %cond.in.i113, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pix_a.i102) #5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pix_b.i103) #5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pix_d.i) #5
  %mb_pred4.i115 = getelementptr inbounds i8, ptr %125, i64 1248
  %128 = load ptr, ptr %mb_pred4.i115, align 8
  %idxprom5.i116 = zext i32 %pl to i64
  %arrayidx6.i117 = getelementptr inbounds ptr, ptr %128, i64 %idxprom5.i116
  %129 = load ptr, ptr %arrayidx6.i117, align 8
  %sub7.i118 = add nsw i32 %ioff, -1
  %mb_size.i119 = getelementptr inbounds i8, ptr %0, i64 849124
  call void @getNonAffNeighbour(ptr noundef nonnull %currMB, i32 noundef %sub7.i118, i32 noundef %joff, ptr noundef nonnull %mb_size.i119, ptr noundef nonnull %pix_a.i102) #5
  %sub9.i120 = add nsw i32 %joff, -1
  call void @getNonAffNeighbour(ptr noundef nonnull %currMB, i32 noundef %ioff, i32 noundef %sub9.i120, ptr noundef nonnull %mb_size.i119, ptr noundef nonnull %pix_b.i103) #5
  call void @getNonAffNeighbour(ptr noundef nonnull %currMB, i32 noundef %sub7.i118, i32 noundef %sub9.i120, ptr noundef nonnull %mb_size.i119, ptr noundef nonnull %pix_d.i) #5
  %active_pps.i121 = getelementptr inbounds i8, ptr %0, i64 8
  %130 = load ptr, ptr %active_pps.i121, align 8
  %constrained_intra_pred_flag.i122 = getelementptr inbounds i8, ptr %130, i64 2204
  %131 = load i32, ptr %constrained_intra_pred_flag.i122, align 4
  %tobool18.not.i = icmp eq i32 %131, 0
  %132 = load i32, ptr %pix_a.i102, align 4
  br i1 %tobool18.not.i, label %if.else.i142, label %if.then.i123

if.then.i123:                                     ; preds = %cond.end.i112
  %tobool19.not.i = icmp eq i32 %132, 0
  br i1 %tobool19.not.i, label %cond.end24.i, label %cond.true20.i

cond.true20.i:                                    ; preds = %if.then.i123
  %intra_block.i124 = getelementptr inbounds i8, ptr %125, i64 13544
  %133 = load ptr, ptr %intra_block.i124, align 8
  %mb_addr.i125 = getelementptr inbounds i8, ptr %pix_a.i102, i64 4
  %134 = load i32, ptr %mb_addr.i125, align 4
  %idxprom21.i = sext i32 %134 to i64
  %arrayidx22.i = getelementptr inbounds i8, ptr %133, i64 %idxprom21.i
  %135 = load i8, ptr %arrayidx22.i, align 1
  %conv.i126 = sext i8 %135 to i32
  br label %cond.end24.i

cond.end24.i:                                     ; preds = %cond.true20.i, %if.then.i123
  %cond25.i = phi i32 [ %conv.i126, %cond.true20.i ], [ 0, %if.then.i123 ]
  %136 = load i32, ptr %pix_b.i103, align 4
  %tobool27.not.i = icmp eq i32 %136, 0
  br i1 %tobool27.not.i, label %cond.end35.i, label %cond.true28.i

cond.true28.i:                                    ; preds = %cond.end24.i
  %intra_block29.i = getelementptr inbounds i8, ptr %125, i64 13544
  %137 = load ptr, ptr %intra_block29.i, align 8
  %mb_addr30.i = getelementptr inbounds i8, ptr %pix_b.i103, i64 4
  %138 = load i32, ptr %mb_addr30.i, align 4
  %idxprom31.i127 = sext i32 %138 to i64
  %arrayidx32.i128 = getelementptr inbounds i8, ptr %137, i64 %idxprom31.i127
  %139 = load i8, ptr %arrayidx32.i128, align 1
  %conv33.i = sext i8 %139 to i32
  br label %cond.end35.i

cond.end35.i:                                     ; preds = %cond.true28.i, %cond.end24.i
  %cond36.i = phi i32 [ %conv33.i, %cond.true28.i ], [ 0, %cond.end24.i ]
  %140 = load i32, ptr %pix_d.i, align 4
  %tobool38.not.i = icmp eq i32 %140, 0
  br i1 %tobool38.not.i, label %if.then55.i, label %cond.true39.i

cond.true39.i:                                    ; preds = %cond.end35.i
  %intra_block40.i = getelementptr inbounds i8, ptr %125, i64 13544
  %141 = load ptr, ptr %intra_block40.i, align 8
  %mb_addr41.i = getelementptr inbounds i8, ptr %pix_d.i, i64 4
  %142 = load i32, ptr %mb_addr41.i, align 4
  %idxprom42.i = sext i32 %142 to i64
  %arrayidx43.i129 = getelementptr inbounds i8, ptr %141, i64 %idxprom42.i
  %143 = load i8, ptr %arrayidx43.i129, align 1
  %conv44.i = sext i8 %143 to i32
  br label %if.end.i130

if.else.i142:                                     ; preds = %cond.end.i112
  %144 = load i32, ptr %pix_b.i103, align 4
  %145 = load i32, ptr %pix_d.i, align 4
  br label %if.end.i130

if.end.i130:                                      ; preds = %if.else.i142, %cond.true39.i
  %block_available_up_left.0.i = phi i32 [ %145, %if.else.i142 ], [ %conv44.i, %cond.true39.i ]
  %block_available_left.0.i131 = phi i32 [ %132, %if.else.i142 ], [ %cond25.i, %cond.true39.i ]
  %block_available_up.0.i132 = phi i32 [ %144, %if.else.i142 ], [ %cond36.i, %cond.true39.i ]
  %tobool51.i = icmp ne i32 %block_available_up.0.i132, 0
  %tobool52.i = icmp ne i32 %block_available_left.0.i131, 0
  %or.cond.i = select i1 %tobool51.i, i1 %tobool52.i, i1 false
  %tobool54.i = icmp ne i32 %block_available_up_left.0.i, 0
  %or.cond173.i = select i1 %or.cond.i, i1 %tobool54.i, i1 false
  br i1 %or.cond173.i, label %if.else56.i, label %if.then55.i

if.then55.i:                                      ; preds = %if.end.i130, %cond.end35.i
  %current_mb_nr.i133 = getelementptr inbounds i8, ptr %125, i64 108
  %146 = load i32, ptr %current_mb_nr.i133, align 4
  %call.i134 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %146)
  br label %intra4x4_diag_down_right_pred.exit

if.else56.i:                                      ; preds = %if.end.i130
  %pos_y.i135 = getelementptr inbounds i8, ptr %pix_a.i102, i64 14
  %147 = load i16, ptr %pos_y.i135, align 2
  %idxprom57.i = sext i16 %147 to i64
  %arrayidx58.i = getelementptr inbounds ptr, ptr %cond.i114, i64 %idxprom57.i
  %pos_x.i136 = getelementptr inbounds i8, ptr %pix_a.i102, i64 12
  %148 = load i16, ptr %pos_x.i136, align 4
  %pos_y60.i = getelementptr inbounds i8, ptr %pix_b.i103, i64 14
  %149 = load i16, ptr %pos_y60.i, align 2
  %idxprom61.i = sext i16 %149 to i64
  %arrayidx62.i = getelementptr inbounds ptr, ptr %cond.i114, i64 %idxprom61.i
  %150 = load ptr, ptr %arrayidx62.i, align 8
  %pos_x63.i = getelementptr inbounds i8, ptr %pix_b.i103, i64 12
  %151 = load i16, ptr %pos_x63.i, align 4
  %idxprom64.i = sext i16 %151 to i64
  %arrayidx65.i = getelementptr inbounds i16, ptr %150, i64 %idxprom64.i
  %incdec.ptr.i137 = getelementptr inbounds i8, ptr %arrayidx65.i, i64 2
  %152 = load i16, ptr %arrayidx65.i, align 2
  %incdec.ptr66.i138 = getelementptr inbounds i8, ptr %arrayidx65.i, i64 4
  %153 = load i16, ptr %incdec.ptr.i137, align 2
  %incdec.ptr67.i = getelementptr inbounds i8, ptr %arrayidx65.i, i64 6
  %154 = load i16, ptr %incdec.ptr66.i138, align 2
  %155 = load i16, ptr %incdec.ptr67.i, align 2
  %incdec.ptr68.i = getelementptr inbounds i8, ptr %arrayidx58.i, i64 8
  %156 = load ptr, ptr %arrayidx58.i, align 8
  %idx.ext.i139 = sext i16 %148 to i64
  %add.ptr.i140 = getelementptr inbounds i16, ptr %156, i64 %idx.ext.i139
  %157 = load i16, ptr %add.ptr.i140, align 2
  %incdec.ptr69.i = getelementptr inbounds i8, ptr %arrayidx58.i, i64 16
  %158 = load ptr, ptr %incdec.ptr68.i, align 8
  %add.ptr71.i = getelementptr inbounds i16, ptr %158, i64 %idx.ext.i139
  %159 = load i16, ptr %add.ptr71.i, align 2
  %incdec.ptr72.i = getelementptr inbounds i8, ptr %arrayidx58.i, i64 24
  %160 = load ptr, ptr %incdec.ptr69.i, align 8
  %add.ptr74.i = getelementptr inbounds i16, ptr %160, i64 %idx.ext.i139
  %161 = load i16, ptr %add.ptr74.i, align 2
  %162 = load ptr, ptr %incdec.ptr72.i, align 8
  %add.ptr76.i = getelementptr inbounds i16, ptr %162, i64 %idx.ext.i139
  %163 = load i16, ptr %add.ptr76.i, align 2
  %pos_y77.i = getelementptr inbounds i8, ptr %pix_d.i, i64 14
  %164 = load i16, ptr %pos_y77.i, align 2
  %idxprom78.i = sext i16 %164 to i64
  %arrayidx79.i = getelementptr inbounds ptr, ptr %cond.i114, i64 %idxprom78.i
  %165 = load ptr, ptr %arrayidx79.i, align 8
  %pos_x80.i = getelementptr inbounds i8, ptr %pix_d.i, i64 12
  %166 = load i16, ptr %pos_x80.i, align 4
  %idxprom81.i = sext i16 %166 to i64
  %arrayidx82.i = getelementptr inbounds i16, ptr %165, i64 %idxprom81.i
  %167 = load i16, ptr %arrayidx82.i, align 2
  %conv83.i = zext i16 %163 to i32
  %conv84.i = zext i16 %161 to i32
  %mul.i = shl nuw nsw i32 %conv84.i, 1
  %conv85.i = zext i16 %159 to i32
  %add.i = add nuw nsw i32 %conv85.i, 2
  %add86.i = add nuw nsw i32 %mul.i, %add.i
  %add87.i = add nuw nsw i32 %add86.i, %conv83.i
  %shr.i141 = lshr i32 %add87.i, 2
  %conv88.i = trunc nuw i32 %shr.i141 to i16
  %mul92.i = shl nuw nsw i32 %conv85.i, 1
  %conv94.i = zext i16 %157 to i32
  %add93.i = add nuw nsw i32 %conv94.i, 2
  %add95.i = add nuw nsw i32 %add93.i, %mul92.i
  %add96.i = add nuw nsw i32 %add95.i, %conv84.i
  %shr97.i = lshr i32 %add96.i, 2
  %conv98.i = trunc nuw i32 %shr97.i to i16
  %mul102.i = shl nuw nsw i32 %conv94.i, 1
  %conv104.i = zext i16 %167 to i32
  %add105.i = add nuw nsw i32 %add.i, %mul102.i
  %add106.i = add nuw nsw i32 %add105.i, %conv104.i
  %shr107.i = lshr i32 %add106.i, 2
  %conv108.i = trunc nuw i32 %shr107.i to i16
  %mul112.i = shl nuw nsw i32 %conv104.i, 1
  %conv114.i = zext i16 %152 to i32
  %add113.i = add nuw nsw i32 %conv114.i, 2
  %add115.i = add nuw nsw i32 %add113.i, %conv94.i
  %add116.i = add nuw nsw i32 %add115.i, %mul112.i
  %shr117.i = lshr i32 %add116.i, 2
  %conv118.i = trunc nuw i32 %shr117.i to i16
  %mul122.i = shl nuw nsw i32 %conv114.i, 1
  %conv124.i = zext i16 %153 to i32
  %add123.i = add nuw nsw i32 %conv124.i, 2
  %add125.i = add nuw nsw i32 %add123.i, %mul122.i
  %add126.i = add nuw nsw i32 %add125.i, %conv104.i
  %shr127.i = lshr i32 %add126.i, 2
  %conv128.i = trunc nuw i32 %shr127.i to i16
  %mul132.i = shl nuw nsw i32 %conv124.i, 1
  %conv134.i = zext i16 %154 to i32
  %add135.i = add nuw nsw i32 %mul132.i, %add113.i
  %add136.i = add nuw nsw i32 %add135.i, %conv134.i
  %shr137.i = lshr i32 %add136.i, 2
  %conv138.i = trunc nuw i32 %shr137.i to i16
  %mul142.i = shl nuw nsw i32 %conv134.i, 1
  %conv144.i = zext i16 %155 to i32
  %add145.i = add nuw nsw i32 %mul142.i, %add123.i
  %add146.i = add nuw nsw i32 %add145.i, %conv144.i
  %shr147.i = lshr i32 %add146.i, 2
  %conv148.i = trunc nuw i32 %shr147.i to i16
  %idxprom150.i = sext i32 %joff to i64
  %arrayidx151.i = getelementptr inbounds ptr, ptr %129, i64 %idxprom150.i
  %168 = load ptr, ptr %arrayidx151.i, align 8
  %idxprom152.i = sext i32 %ioff to i64
  %arrayidx153.i = getelementptr inbounds i16, ptr %168, i64 %idxprom152.i
  store i16 %conv118.i, ptr %arrayidx153.i, align 2
  %PredPixel.sroa.10.6.arrayidx153.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx153.i, i64 2
  store i16 %conv128.i, ptr %PredPixel.sroa.10.6.arrayidx153.sroa_idx.i, align 2
  %PredPixel.sroa.11.6.arrayidx153.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx153.i, i64 4
  store i16 %conv138.i, ptr %PredPixel.sroa.11.6.arrayidx153.sroa_idx.i, align 2
  %PredPixel.sroa.12.6.arrayidx153.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx153.i, i64 6
  store i16 %conv148.i, ptr %PredPixel.sroa.12.6.arrayidx153.sroa_idx.i, align 2
  %arrayidx157.i = getelementptr i8, ptr %arrayidx151.i, i64 8
  %169 = load ptr, ptr %arrayidx157.i, align 8
  %arrayidx159.i = getelementptr inbounds i16, ptr %169, i64 %idxprom152.i
  store i16 %conv108.i, ptr %arrayidx159.i, align 2
  %PredPixel.sroa.8.4.arrayidx159.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx159.i, i64 2
  store i16 %conv118.i, ptr %PredPixel.sroa.8.4.arrayidx159.sroa_idx.i, align 2
  %PredPixel.sroa.10.4.arrayidx159.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx159.i, i64 4
  store i16 %conv128.i, ptr %PredPixel.sroa.10.4.arrayidx159.sroa_idx.i, align 2
  %PredPixel.sroa.11.4.arrayidx159.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx159.i, i64 6
  store i16 %conv138.i, ptr %PredPixel.sroa.11.4.arrayidx159.sroa_idx.i, align 2
  %arrayidx163.i = getelementptr i8, ptr %arrayidx151.i, i64 16
  %170 = load ptr, ptr %arrayidx163.i, align 8
  %arrayidx165.i = getelementptr inbounds i16, ptr %170, i64 %idxprom152.i
  store i16 %conv98.i, ptr %arrayidx165.i, align 2
  %PredPixel.sroa.6.2.arrayidx165.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx165.i, i64 2
  store i16 %conv108.i, ptr %PredPixel.sroa.6.2.arrayidx165.sroa_idx.i, align 2
  %PredPixel.sroa.8.2.arrayidx165.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx165.i, i64 4
  store i16 %conv118.i, ptr %PredPixel.sroa.8.2.arrayidx165.sroa_idx.i, align 2
  %PredPixel.sroa.10.2.arrayidx165.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx165.i, i64 6
  store i16 %conv128.i, ptr %PredPixel.sroa.10.2.arrayidx165.sroa_idx.i, align 2
  %arrayidx168.i = getelementptr i8, ptr %arrayidx151.i, i64 24
  %171 = load ptr, ptr %arrayidx168.i, align 8
  %arrayidx170.i = getelementptr inbounds i16, ptr %171, i64 %idxprom152.i
  store i16 %conv88.i, ptr %arrayidx170.i, align 2
  %PredPixel.sroa.4.0.arrayidx170.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx170.i, i64 2
  store i16 %conv98.i, ptr %PredPixel.sroa.4.0.arrayidx170.sroa_idx.i, align 2
  %PredPixel.sroa.6.0.arrayidx170.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx170.i, i64 4
  store i16 %conv108.i, ptr %PredPixel.sroa.6.0.arrayidx170.sroa_idx.i, align 2
  %PredPixel.sroa.8.0.arrayidx170.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx170.i, i64 6
  store i16 %conv118.i, ptr %PredPixel.sroa.8.0.arrayidx170.sroa_idx.i, align 2
  br label %intra4x4_diag_down_right_pred.exit

intra4x4_diag_down_right_pred.exit:               ; preds = %if.then55.i, %if.else56.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pix_d.i) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pix_b.i103) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pix_a.i102) #5
  br label %cleanup

sw.bb10:                                          ; preds = %entry
  %172 = load ptr, ptr %currMB, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pix_b.i145) #5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pix_c.i) #5
  %getNeighbour.i = getelementptr inbounds i8, ptr %0, i64 856744
  %173 = load ptr, ptr %getNeighbour.i, align 8
  %sub.i147 = add nsw i32 %joff, -1
  %mb_size.i148 = getelementptr inbounds i8, ptr %0, i64 849124
  call void %173(ptr noundef nonnull %currMB, i32 noundef %ioff, i32 noundef %sub.i147, ptr noundef nonnull %mb_size.i148, ptr noundef nonnull %pix_b.i145) #5
  %174 = load ptr, ptr %getNeighbour.i, align 8
  %add.i149 = add nsw i32 %ioff, 4
  call void %174(ptr noundef nonnull %currMB, i32 noundef %add.i149, i32 noundef %sub.i147, ptr noundef nonnull %mb_size.i148, ptr noundef nonnull %pix_c.i) #5
  %175 = load i32, ptr %pix_c.i, align 4
  %tobool.not.i150 = icmp eq i32 %175, 0
  br i1 %tobool.not.i150, label %land.end10.i, label %land.rhs.i

land.rhs.i:                                       ; preds = %sw.bb10
  %cmp.i = icmp ne i32 %ioff, 4
  %176 = and i32 %joff, -9
  %177 = icmp ne i32 %176, 4
  %narrow.i = or i1 %cmp.i, %177
  %lnot.i = zext i1 %narrow.i to i32
  br label %land.end10.i

land.end10.i:                                     ; preds = %land.rhs.i, %sw.bb10
  %land.ext.i = phi i32 [ 0, %sw.bb10 ], [ %lnot.i, %land.rhs.i ]
  store i32 %land.ext.i, ptr %pix_c.i, align 4
  %active_pps.i151 = getelementptr inbounds i8, ptr %0, i64 8
  %178 = load ptr, ptr %active_pps.i151, align 8
  %constrained_intra_pred_flag.i152 = getelementptr inbounds i8, ptr %178, i64 2204
  %179 = load i32, ptr %constrained_intra_pred_flag.i152, align 4
  %tobool12.not.i = icmp eq i32 %179, 0
  %180 = load i32, ptr %pix_b.i145, align 4
  br i1 %tobool12.not.i, label %if.end.i167, label %if.then.i153

if.then.i153:                                     ; preds = %land.end10.i
  %tobool14.not.i154 = icmp eq i32 %180, 0
  br i1 %tobool14.not.i154, label %cond.end.i161, label %cond.true.i155

cond.true.i155:                                   ; preds = %if.then.i153
  %intra_block.i156 = getelementptr inbounds i8, ptr %172, i64 13544
  %181 = load ptr, ptr %intra_block.i156, align 8
  %mb_addr.i157 = getelementptr inbounds i8, ptr %pix_b.i145, i64 4
  %182 = load i32, ptr %mb_addr.i157, align 4
  %idxprom.i158 = sext i32 %182 to i64
  %arrayidx15.i159 = getelementptr inbounds i8, ptr %181, i64 %idxprom.i158
  %183 = load i8, ptr %arrayidx15.i159, align 1
  %conv.i160 = sext i8 %183 to i32
  br label %cond.end.i161

cond.end.i161:                                    ; preds = %cond.true.i155, %if.then.i153
  %cond.i162 = phi i32 [ %conv.i160, %cond.true.i155 ], [ 0, %if.then.i153 ]
  %tobool17.not.i163 = icmp eq i32 %land.ext.i, 0
  br i1 %tobool17.not.i163, label %if.end.i167, label %cond.true18.i164

cond.true18.i164:                                 ; preds = %cond.end.i161
  %intra_block19.i = getelementptr inbounds i8, ptr %172, i64 13544
  %184 = load ptr, ptr %intra_block19.i, align 8
  %mb_addr20.i = getelementptr inbounds i8, ptr %pix_c.i, i64 4
  %185 = load i32, ptr %mb_addr20.i, align 4
  %idxprom21.i165 = sext i32 %185 to i64
  %arrayidx22.i166 = getelementptr inbounds i8, ptr %184, i64 %idxprom21.i165
  %186 = load i8, ptr %arrayidx22.i166, align 1
  %conv23.i = sext i8 %186 to i32
  br label %if.end.i167

if.end.i167:                                      ; preds = %cond.true18.i164, %cond.end.i161, %land.end10.i
  %block_available_up_right.0.i = phi i32 [ %conv23.i, %cond.true18.i164 ], [ 0, %cond.end.i161 ], [ %land.ext.i, %land.end10.i ]
  %block_available_up.0.i168 = phi i32 [ %cond.i162, %cond.true18.i164 ], [ %cond.i162, %cond.end.i161 ], [ %180, %land.end10.i ]
  %tobool29.not.i = icmp eq i32 %block_available_up.0.i168, 0
  br i1 %tobool29.not.i, label %if.then30.i, label %if.else31.i

if.then30.i:                                      ; preds = %if.end.i167
  %current_mb_nr.i190 = getelementptr inbounds i8, ptr %172, i64 108
  %187 = load i32, ptr %current_mb_nr.i190, align 4
  %call.i191 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %187)
  br label %intra4x4_diag_down_left_pred.exit

if.else31.i:                                      ; preds = %if.end.i167
  %tobool32.not.i = icmp eq i32 %pl, 0
  %dec_picture38.i = getelementptr inbounds i8, ptr %172, i64 13520
  %188 = load ptr, ptr %dec_picture38.i, align 8
  br i1 %tobool32.not.i, label %cond.false37.i, label %cond.true33.i

cond.true33.i:                                    ; preds = %if.else31.i
  %imgUV.i169 = getelementptr inbounds i8, ptr %188, i64 136
  %189 = load ptr, ptr %imgUV.i169, align 8
  %sub34.i = add i32 %pl, -1
  %idxprom35.i = zext i32 %sub34.i to i64
  %arrayidx36.i = getelementptr inbounds ptr, ptr %189, i64 %idxprom35.i
  br label %cond.end40.i

cond.false37.i:                                   ; preds = %if.else31.i
  %imgY39.i = getelementptr inbounds i8, ptr %188, i64 128
  br label %cond.end40.i

cond.end40.i:                                     ; preds = %cond.false37.i, %cond.true33.i
  %cond41.in.i = phi ptr [ %arrayidx36.i, %cond.true33.i ], [ %imgY39.i, %cond.false37.i ]
  %cond41.i = load ptr, ptr %cond41.in.i, align 8
  %mb_pred42.i = getelementptr inbounds i8, ptr %172, i64 1248
  %190 = load ptr, ptr %mb_pred42.i, align 8
  %idxprom43.i = zext i32 %pl to i64
  %arrayidx44.i170 = getelementptr inbounds ptr, ptr %190, i64 %idxprom43.i
  %191 = load ptr, ptr %arrayidx44.i170, align 8
  %pos_y.i171 = getelementptr inbounds i8, ptr %pix_b.i145, i64 14
  %192 = load i16, ptr %pos_y.i171, align 2
  %idxprom45.i = sext i16 %192 to i64
  %arrayidx46.i172 = getelementptr inbounds ptr, ptr %cond41.i, i64 %idxprom45.i
  %193 = load ptr, ptr %arrayidx46.i172, align 8
  %pos_x.i173 = getelementptr inbounds i8, ptr %pix_b.i145, i64 12
  %194 = load i16, ptr %pos_x.i173, align 4
  %idxprom47.i = sext i16 %194 to i64
  %arrayidx48.i174 = getelementptr inbounds i16, ptr %193, i64 %idxprom47.i
  %incdec.ptr.i175 = getelementptr inbounds i8, ptr %arrayidx48.i174, i64 2
  %195 = load i16, ptr %arrayidx48.i174, align 2
  %incdec.ptr49.i = getelementptr inbounds i8, ptr %arrayidx48.i174, i64 4
  %196 = load i16, ptr %incdec.ptr.i175, align 2
  %incdec.ptr50.i = getelementptr inbounds i8, ptr %arrayidx48.i174, i64 6
  %197 = load i16, ptr %incdec.ptr49.i, align 2
  %198 = load i16, ptr %incdec.ptr50.i, align 2
  %tobool51.not.i = icmp eq i32 %block_available_up_right.0.i, 0
  br i1 %tobool51.not.i, label %if.end63.i, label %if.then52.i

if.then52.i:                                      ; preds = %cond.end40.i
  %pos_y53.i = getelementptr inbounds i8, ptr %pix_c.i, i64 14
  %199 = load i16, ptr %pos_y53.i, align 2
  %idxprom54.i = sext i16 %199 to i64
  %arrayidx55.i = getelementptr inbounds ptr, ptr %cond41.i, i64 %idxprom54.i
  %200 = load ptr, ptr %arrayidx55.i, align 8
  %pos_x56.i176 = getelementptr inbounds i8, ptr %pix_c.i, i64 12
  %201 = load i16, ptr %pos_x56.i176, align 4
  %idxprom57.i177 = sext i16 %201 to i64
  %arrayidx58.i178 = getelementptr inbounds i16, ptr %200, i64 %idxprom57.i177
  %incdec.ptr59.i = getelementptr inbounds i8, ptr %arrayidx58.i178, i64 2
  %202 = load i16, ptr %arrayidx58.i178, align 2
  %incdec.ptr60.i = getelementptr inbounds i8, ptr %arrayidx58.i178, i64 4
  %203 = load i16, ptr %incdec.ptr59.i, align 2
  %incdec.ptr61.i179 = getelementptr inbounds i8, ptr %arrayidx58.i178, i64 6
  %204 = load i16, ptr %incdec.ptr60.i, align 2
  %205 = load i16, ptr %incdec.ptr61.i179, align 2
  br label %if.end63.i

if.end63.i:                                       ; preds = %if.then52.i, %cond.end40.i
  %p_h.0.i = phi i16 [ %205, %if.then52.i ], [ %198, %cond.end40.i ]
  %p_g.0.i = phi i16 [ %204, %if.then52.i ], [ %198, %cond.end40.i ]
  %p_f.0.i = phi i16 [ %203, %if.then52.i ], [ %198, %cond.end40.i ]
  %p_e.0.i = phi i16 [ %202, %if.then52.i ], [ %198, %cond.end40.i ]
  %conv64.i180 = zext i16 %195 to i32
  %conv65.i = zext i16 %197 to i32
  %conv67.i = zext i16 %196 to i32
  %mul.i181 = shl nuw nsw i32 %conv67.i, 1
  %add66.i = add nuw nsw i32 %conv65.i, 2
  %add68.i = add nuw nsw i32 %mul.i181, %conv64.i180
  %add69.i = add nuw nsw i32 %add68.i, %add66.i
  %shr.i182 = lshr i32 %add69.i, 2
  %conv70.i = trunc nuw i32 %shr.i182 to i16
  %conv73.i183 = zext i16 %198 to i32
  %mul76.i = shl nuw nsw i32 %conv65.i, 1
  %add74.i184 = add nuw nsw i32 %conv73.i183, 2
  %add77.i = add nuw nsw i32 %mul76.i, %conv67.i
  %add78.i = add nuw nsw i32 %add77.i, %add74.i184
  %shr79.i = lshr i32 %add78.i, 2
  %conv80.i = trunc nuw i32 %shr79.i to i16
  %conv83.i185 = zext i16 %p_e.0.i to i32
  %mul86.i = shl nuw nsw i32 %conv73.i183, 1
  %add87.i186 = add nuw nsw i32 %mul86.i, %add66.i
  %add88.i = add nuw nsw i32 %add87.i186, %conv83.i185
  %shr89.i = lshr i32 %add88.i, 2
  %conv90.i = trunc nuw i32 %shr89.i to i16
  %conv93.i = zext i16 %p_f.0.i to i32
  %mul96.i = shl nuw nsw i32 %conv83.i185, 1
  %add97.i = add nuw nsw i32 %add74.i184, %conv93.i
  %add98.i = add nuw nsw i32 %add97.i, %mul96.i
  %shr99.i = lshr i32 %add98.i, 2
  %conv100.i = trunc nuw i32 %shr99.i to i16
  %conv103.i = zext i16 %p_g.0.i to i32
  %mul106.i = shl nuw nsw i32 %conv93.i, 1
  %add104.i = add nuw nsw i32 %conv103.i, 2
  %add107.i = add nuw nsw i32 %add104.i, %conv83.i185
  %add108.i = add nuw nsw i32 %add107.i, %mul106.i
  %shr109.i = lshr i32 %add108.i, 2
  %conv110.i = trunc nuw i32 %shr109.i to i16
  %conv113.i = zext i16 %p_h.0.i to i32
  %mul116.i = shl nuw nsw i32 %conv103.i, 1
  %add114.i = add nuw nsw i32 %conv113.i, 2
  %add117.i = add nuw nsw i32 %add114.i, %conv93.i
  %add118.i = add nuw nsw i32 %add117.i, %mul116.i
  %shr119.i = lshr i32 %add118.i, 2
  %conv120.i = trunc nuw i32 %shr119.i to i16
  %mul124.i = mul nuw nsw i32 %conv113.i, 3
  %add126.i187 = add nuw nsw i32 %add104.i, %mul124.i
  %shr127.i188 = lshr i32 %add126.i187, 2
  %conv128.i189 = trunc nuw i32 %shr127.i188 to i16
  %idxprom130.i = sext i32 %joff to i64
  %arrayidx131.i = getelementptr inbounds ptr, ptr %191, i64 %idxprom130.i
  %206 = load ptr, ptr %arrayidx131.i, align 8
  %idxprom132.i = sext i32 %ioff to i64
  %arrayidx133.i = getelementptr inbounds i16, ptr %206, i64 %idxprom132.i
  store i16 %conv70.i, ptr %arrayidx133.i, align 2
  %PredPixel.sroa.4.0.arrayidx133.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx133.i, i64 2
  store i16 %conv80.i, ptr %PredPixel.sroa.4.0.arrayidx133.sroa_idx.i, align 2
  %PredPixel.sroa.6.0.arrayidx133.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx133.i, i64 4
  store i16 %conv90.i, ptr %PredPixel.sroa.6.0.arrayidx133.sroa_idx.i, align 2
  %PredPixel.sroa.8.0.arrayidx133.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx133.i, i64 6
  store i16 %conv100.i, ptr %PredPixel.sroa.8.0.arrayidx133.sroa_idx.i, align 2
  %arrayidx137.i = getelementptr i8, ptr %arrayidx131.i, i64 8
  %207 = load ptr, ptr %arrayidx137.i, align 8
  %arrayidx139.i = getelementptr inbounds i16, ptr %207, i64 %idxprom132.i
  store i16 %conv80.i, ptr %arrayidx139.i, align 2
  %PredPixel.sroa.6.2.arrayidx139.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx139.i, i64 2
  store i16 %conv90.i, ptr %PredPixel.sroa.6.2.arrayidx139.sroa_idx.i, align 2
  %PredPixel.sroa.8.2.arrayidx139.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx139.i, i64 4
  store i16 %conv100.i, ptr %PredPixel.sroa.8.2.arrayidx139.sroa_idx.i, align 2
  %PredPixel.sroa.10.2.arrayidx139.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx139.i, i64 6
  store i16 %conv110.i, ptr %PredPixel.sroa.10.2.arrayidx139.sroa_idx.i, align 2
  %arrayidx143.i = getelementptr i8, ptr %arrayidx131.i, i64 16
  %208 = load ptr, ptr %arrayidx143.i, align 8
  %arrayidx145.i = getelementptr inbounds i16, ptr %208, i64 %idxprom132.i
  store i16 %conv90.i, ptr %arrayidx145.i, align 2
  %PredPixel.sroa.8.4.arrayidx145.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx145.i, i64 2
  store i16 %conv100.i, ptr %PredPixel.sroa.8.4.arrayidx145.sroa_idx.i, align 2
  %PredPixel.sroa.10.4.arrayidx145.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx145.i, i64 4
  store i16 %conv110.i, ptr %PredPixel.sroa.10.4.arrayidx145.sroa_idx.i, align 2
  %PredPixel.sroa.11.4.arrayidx145.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx145.i, i64 6
  store i16 %conv120.i, ptr %PredPixel.sroa.11.4.arrayidx145.sroa_idx.i, align 2
  %arrayidx148.i = getelementptr i8, ptr %arrayidx131.i, i64 24
  %209 = load ptr, ptr %arrayidx148.i, align 8
  %arrayidx150.i = getelementptr inbounds i16, ptr %209, i64 %idxprom132.i
  store i16 %conv100.i, ptr %arrayidx150.i, align 2
  %PredPixel.sroa.10.6.arrayidx150.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx150.i, i64 2
  store i16 %conv110.i, ptr %PredPixel.sroa.10.6.arrayidx150.sroa_idx.i, align 2
  %PredPixel.sroa.11.6.arrayidx150.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx150.i, i64 4
  store i16 %conv120.i, ptr %PredPixel.sroa.11.6.arrayidx150.sroa_idx.i, align 2
  %PredPixel.sroa.12.6.arrayidx150.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx150.i, i64 6
  store i16 %conv128.i189, ptr %PredPixel.sroa.12.6.arrayidx150.sroa_idx.i, align 2
  br label %intra4x4_diag_down_left_pred.exit

intra4x4_diag_down_left_pred.exit:                ; preds = %if.then30.i, %if.end63.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pix_c.i) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pix_b.i145) #5
  br label %cleanup

sw.bb12:                                          ; preds = %entry
  %210 = load ptr, ptr %currMB, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pix_a.i192) #5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pix_b.i193) #5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pix_d.i194) #5
  %sub.i196 = add nsw i32 %ioff, -1
  %mb_size.i197 = getelementptr inbounds i8, ptr %0, i64 849124
  call void @getNonAffNeighbour(ptr noundef nonnull %currMB, i32 noundef %sub.i196, i32 noundef %joff, ptr noundef nonnull %mb_size.i197, ptr noundef nonnull %pix_a.i192) #5
  %sub2.i = add nsw i32 %joff, -1
  call void @getNonAffNeighbour(ptr noundef nonnull %currMB, i32 noundef %ioff, i32 noundef %sub2.i, ptr noundef nonnull %mb_size.i197, ptr noundef nonnull %pix_b.i193) #5
  call void @getNonAffNeighbour(ptr noundef nonnull %currMB, i32 noundef %sub.i196, i32 noundef %sub2.i, ptr noundef nonnull %mb_size.i197, ptr noundef nonnull %pix_d.i194) #5
  %active_pps.i198 = getelementptr inbounds i8, ptr %0, i64 8
  %211 = load ptr, ptr %active_pps.i198, align 8
  %constrained_intra_pred_flag.i199 = getelementptr inbounds i8, ptr %211, i64 2204
  %212 = load i32, ptr %constrained_intra_pred_flag.i199, align 4
  %tobool.not.i200 = icmp eq i32 %212, 0
  %213 = load i32, ptr %pix_a.i192, align 4
  br i1 %tobool.not.i200, label %if.else.i259, label %if.then.i201

if.then.i201:                                     ; preds = %sw.bb12
  %tobool11.not.i202 = icmp eq i32 %213, 0
  br i1 %tobool11.not.i202, label %cond.end.i208, label %cond.true.i203

cond.true.i203:                                   ; preds = %if.then.i201
  %intra_block.i204 = getelementptr inbounds i8, ptr %210, i64 13544
  %214 = load ptr, ptr %intra_block.i204, align 8
  %mb_addr.i205 = getelementptr inbounds i8, ptr %pix_a.i192, i64 4
  %215 = load i32, ptr %mb_addr.i205, align 4
  %idxprom.i206 = sext i32 %215 to i64
  %arrayidx12.i = getelementptr inbounds i8, ptr %214, i64 %idxprom.i206
  %216 = load i8, ptr %arrayidx12.i, align 1
  %conv.i207 = sext i8 %216 to i32
  br label %cond.end.i208

cond.end.i208:                                    ; preds = %cond.true.i203, %if.then.i201
  %cond.i209 = phi i32 [ %conv.i207, %cond.true.i203 ], [ 0, %if.then.i201 ]
  %217 = load i32, ptr %pix_b.i193, align 4
  %tobool14.not.i210 = icmp eq i32 %217, 0
  br i1 %tobool14.not.i210, label %cond.end22.i, label %cond.true15.i211

cond.true15.i211:                                 ; preds = %cond.end.i208
  %intra_block16.i = getelementptr inbounds i8, ptr %210, i64 13544
  %218 = load ptr, ptr %intra_block16.i, align 8
  %mb_addr17.i = getelementptr inbounds i8, ptr %pix_b.i193, i64 4
  %219 = load i32, ptr %mb_addr17.i, align 4
  %idxprom18.i = sext i32 %219 to i64
  %arrayidx19.i = getelementptr inbounds i8, ptr %218, i64 %idxprom18.i
  %220 = load i8, ptr %arrayidx19.i, align 1
  %conv20.i = sext i8 %220 to i32
  br label %cond.end22.i

cond.end22.i:                                     ; preds = %cond.true15.i211, %cond.end.i208
  %cond23.i = phi i32 [ %conv20.i, %cond.true15.i211 ], [ 0, %cond.end.i208 ]
  %221 = load i32, ptr %pix_d.i194, align 4
  %tobool25.not.i = icmp eq i32 %221, 0
  br i1 %tobool25.not.i, label %if.then42.i, label %cond.true26.i

cond.true26.i:                                    ; preds = %cond.end22.i
  %intra_block27.i = getelementptr inbounds i8, ptr %210, i64 13544
  %222 = load ptr, ptr %intra_block27.i, align 8
  %mb_addr28.i = getelementptr inbounds i8, ptr %pix_d.i194, i64 4
  %223 = load i32, ptr %mb_addr28.i, align 4
  %idxprom29.i = sext i32 %223 to i64
  %arrayidx30.i = getelementptr inbounds i8, ptr %222, i64 %idxprom29.i
  %224 = load i8, ptr %arrayidx30.i, align 1
  %conv31.i = sext i8 %224 to i32
  br label %if.end.i212

if.else.i259:                                     ; preds = %sw.bb12
  %225 = load i32, ptr %pix_b.i193, align 4
  %226 = load i32, ptr %pix_d.i194, align 4
  br label %if.end.i212

if.end.i212:                                      ; preds = %if.else.i259, %cond.true26.i
  %block_available_up_left.0.i213 = phi i32 [ %226, %if.else.i259 ], [ %conv31.i, %cond.true26.i ]
  %block_available_left.0.i214 = phi i32 [ %213, %if.else.i259 ], [ %cond.i209, %cond.true26.i ]
  %block_available_up.0.i215 = phi i32 [ %225, %if.else.i259 ], [ %cond23.i, %cond.true26.i ]
  %tobool38.i = icmp ne i32 %block_available_up.0.i215, 0
  %tobool39.i = icmp ne i32 %block_available_left.0.i214, 0
  %or.cond.i216 = select i1 %tobool38.i, i1 %tobool39.i, i1 false
  %tobool41.i = icmp ne i32 %block_available_up_left.0.i213, 0
  %or.cond188.i = select i1 %or.cond.i216, i1 %tobool41.i, i1 false
  br i1 %or.cond188.i, label %if.end43.i, label %if.then42.i

if.then42.i:                                      ; preds = %if.end.i212, %cond.end22.i
  %current_mb_nr.i217 = getelementptr inbounds i8, ptr %210, i64 108
  %227 = load i32, ptr %current_mb_nr.i217, align 4
  %call.i218 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef %227)
  br label %if.end43.i

if.end43.i:                                       ; preds = %if.then42.i, %if.end.i212
  %tobool44.not.i = icmp eq i32 %pl, 0
  %dec_picture50.i = getelementptr inbounds i8, ptr %210, i64 13520
  %228 = load ptr, ptr %dec_picture50.i, align 8
  br i1 %tobool44.not.i, label %cond.false49.i, label %cond.true45.i

cond.true45.i:                                    ; preds = %if.end43.i
  %imgUV.i219 = getelementptr inbounds i8, ptr %228, i64 136
  %229 = load ptr, ptr %imgUV.i219, align 8
  %sub46.i = add i32 %pl, -1
  %idxprom47.i220 = zext i32 %sub46.i to i64
  %arrayidx48.i221 = getelementptr inbounds ptr, ptr %229, i64 %idxprom47.i220
  br label %intra4x4_vert_right_pred.exit

cond.false49.i:                                   ; preds = %if.end43.i
  %imgY51.i = getelementptr inbounds i8, ptr %228, i64 128
  br label %intra4x4_vert_right_pred.exit

intra4x4_vert_right_pred.exit:                    ; preds = %cond.true45.i, %cond.false49.i
  %cond53.in.i = phi ptr [ %arrayidx48.i221, %cond.true45.i ], [ %imgY51.i, %cond.false49.i ]
  %cond53.i = load ptr, ptr %cond53.in.i, align 8
  %mb_pred54.i = getelementptr inbounds i8, ptr %210, i64 1248
  %230 = load ptr, ptr %mb_pred54.i, align 8
  %idxprom55.i = zext i32 %pl to i64
  %arrayidx56.i = getelementptr inbounds ptr, ptr %230, i64 %idxprom55.i
  %231 = load ptr, ptr %arrayidx56.i, align 8
  %pos_y.i222 = getelementptr inbounds i8, ptr %pix_a.i192, i64 14
  %232 = load i16, ptr %pos_y.i222, align 2
  %idxprom57.i223 = sext i16 %232 to i64
  %arrayidx58.i224 = getelementptr inbounds ptr, ptr %cond53.i, i64 %idxprom57.i223
  %pos_x.i225 = getelementptr inbounds i8, ptr %pix_a.i192, i64 12
  %233 = load i16, ptr %pos_x.i225, align 4
  %pos_y60.i226 = getelementptr inbounds i8, ptr %pix_b.i193, i64 14
  %234 = load i16, ptr %pos_y60.i226, align 2
  %idxprom61.i227 = sext i16 %234 to i64
  %arrayidx62.i228 = getelementptr inbounds ptr, ptr %cond53.i, i64 %idxprom61.i227
  %235 = load ptr, ptr %arrayidx62.i228, align 8
  %pos_x63.i229 = getelementptr inbounds i8, ptr %pix_b.i193, i64 12
  %236 = load i16, ptr %pos_x63.i229, align 4
  %idxprom64.i230 = sext i16 %236 to i64
  %arrayidx65.i231 = getelementptr inbounds i16, ptr %235, i64 %idxprom64.i230
  %incdec.ptr.i232 = getelementptr inbounds i8, ptr %arrayidx65.i231, i64 2
  %237 = load i16, ptr %arrayidx65.i231, align 2
  %incdec.ptr66.i233 = getelementptr inbounds i8, ptr %arrayidx65.i231, i64 4
  %238 = load i16, ptr %incdec.ptr.i232, align 2
  %incdec.ptr67.i234 = getelementptr inbounds i8, ptr %arrayidx65.i231, i64 6
  %239 = load i16, ptr %incdec.ptr66.i233, align 2
  %240 = load i16, ptr %incdec.ptr67.i234, align 2
  %incdec.ptr68.i235 = getelementptr inbounds i8, ptr %arrayidx58.i224, i64 8
  %241 = load ptr, ptr %arrayidx58.i224, align 8
  %idx.ext.i236 = sext i16 %233 to i64
  %add.ptr.i237 = getelementptr inbounds i16, ptr %241, i64 %idx.ext.i236
  %242 = load i16, ptr %add.ptr.i237, align 2
  %incdec.ptr69.i238 = getelementptr inbounds i8, ptr %arrayidx58.i224, i64 16
  %243 = load ptr, ptr %incdec.ptr68.i235, align 8
  %add.ptr71.i239 = getelementptr inbounds i16, ptr %243, i64 %idx.ext.i236
  %244 = load i16, ptr %add.ptr71.i239, align 2
  %245 = load ptr, ptr %incdec.ptr69.i238, align 8
  %add.ptr74.i240 = getelementptr inbounds i16, ptr %245, i64 %idx.ext.i236
  %246 = load i16, ptr %add.ptr74.i240, align 2
  %pos_y75.i = getelementptr inbounds i8, ptr %pix_d.i194, i64 14
  %247 = load i16, ptr %pos_y75.i, align 2
  %idxprom76.i = sext i16 %247 to i64
  %arrayidx77.i = getelementptr inbounds ptr, ptr %cond53.i, i64 %idxprom76.i
  %248 = load ptr, ptr %arrayidx77.i, align 8
  %pos_x78.i = getelementptr inbounds i8, ptr %pix_d.i194, i64 12
  %249 = load i16, ptr %pos_x78.i, align 4
  %idxprom79.i = sext i16 %249 to i64
  %arrayidx80.i = getelementptr inbounds i16, ptr %248, i64 %idxprom79.i
  %250 = load i16, ptr %arrayidx80.i, align 2
  %conv81.i = zext i16 %250 to i32
  %conv82.i = zext i16 %242 to i32
  %mul.i241 = shl nuw nsw i32 %conv82.i, 1
  %conv83.i242 = zext i16 %244 to i32
  %add.i243 = add nuw nsw i32 %mul.i241, 2
  %add84.i = add nuw nsw i32 %add.i243, %conv83.i242
  %add85.i244 = add nuw nsw i32 %add84.i, %conv81.i
  %shr.i245 = lshr i32 %add85.i244, 2
  %conv86.i = trunc nuw i32 %shr.i245 to i16
  %conv89.i = zext i16 %237 to i32
  %add90.i = add nuw nsw i32 %conv89.i, 1
  %add91.i = add nuw nsw i32 %add90.i, %conv81.i
  %shr92.i = lshr i32 %add91.i, 1
  %conv93.i246 = trunc nuw i32 %shr92.i to i16
  %conv96.i = zext i16 %238 to i32
  %add98.i247 = add nuw nsw i32 %add90.i, %conv96.i
  %shr99.i248 = lshr i32 %add98.i247, 1
  %conv100.i249 = trunc nuw i32 %shr99.i248 to i16
  %conv103.i250 = zext i16 %239 to i32
  %add104.i251 = add nuw nsw i32 %conv103.i250, 1
  %add105.i252 = add nuw nsw i32 %add104.i251, %conv96.i
  %shr106.i = lshr i32 %add105.i252, 1
  %conv107.i = trunc nuw i32 %shr106.i to i16
  %conv110.i253 = zext i16 %240 to i32
  %add112.i = add nuw nsw i32 %add104.i251, %conv110.i253
  %shr113.i = lshr i32 %add112.i, 1
  %conv114.i254 = trunc nuw i32 %shr113.i to i16
  %mul118.i = shl nuw nsw i32 %conv83.i242, 1
  %conv120.i255 = zext i16 %246 to i32
  %add119.i = add nuw nsw i32 %conv82.i, 2
  %add121.i = add nuw nsw i32 %add119.i, %mul118.i
  %add122.i = add nuw nsw i32 %add121.i, %conv120.i255
  %shr123.i = lshr i32 %add122.i, 2
  %conv124.i256 = trunc nuw i32 %shr123.i to i16
  %mul128.i = shl nuw nsw i32 %conv81.i, 1
  %add129.i = add nuw nsw i32 %conv89.i, 2
  %add131.i = add nuw nsw i32 %add129.i, %conv82.i
  %add132.i = add nuw nsw i32 %add131.i, %mul128.i
  %shr133.i = lshr i32 %add132.i, 2
  %conv134.i257 = trunc nuw i32 %shr133.i to i16
  %mul138.i = shl nuw nsw i32 %conv89.i, 1
  %add139.i = add nuw nsw i32 %conv96.i, 2
  %add141.i = add nuw nsw i32 %add139.i, %mul138.i
  %add142.i = add nuw nsw i32 %add141.i, %conv81.i
  %shr143.i = lshr i32 %add142.i, 2
  %conv144.i258 = trunc nuw i32 %shr143.i to i16
  %mul148.i = shl nuw nsw i32 %conv96.i, 1
  %add151.i = add nuw nsw i32 %mul148.i, %add129.i
  %add152.i = add nuw nsw i32 %add151.i, %conv103.i250
  %shr153.i = lshr i32 %add152.i, 2
  %conv154.i = trunc nuw i32 %shr153.i to i16
  %mul158.i = shl nuw nsw i32 %conv103.i250, 1
  %add161.i = add nuw nsw i32 %mul158.i, %add139.i
  %add162.i = add nuw nsw i32 %add161.i, %conv110.i253
  %shr163.i = lshr i32 %add162.i, 2
  %conv164.i = trunc nuw i32 %shr163.i to i16
  %idxprom166.i = sext i32 %joff to i64
  %arrayidx167.i = getelementptr inbounds ptr, ptr %231, i64 %idxprom166.i
  %251 = load ptr, ptr %arrayidx167.i, align 8
  %idxprom168.i = sext i32 %ioff to i64
  %arrayidx169.i = getelementptr inbounds i16, ptr %251, i64 %idxprom168.i
  store i16 %conv93.i246, ptr %arrayidx169.i, align 2
  %PredPixel.sroa.6.2.arrayidx169.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx169.i, i64 2
  store i16 %conv100.i249, ptr %PredPixel.sroa.6.2.arrayidx169.sroa_idx.i, align 2
  %PredPixel.sroa.7.2.arrayidx169.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx169.i, i64 4
  store i16 %conv107.i, ptr %PredPixel.sroa.7.2.arrayidx169.sroa_idx.i, align 2
  %PredPixel.sroa.8.2.arrayidx169.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx169.i, i64 6
  store i16 %conv114.i254, ptr %PredPixel.sroa.8.2.arrayidx169.sroa_idx.i, align 2
  %arrayidx173.i = getelementptr i8, ptr %arrayidx167.i, i64 8
  %252 = load ptr, ptr %arrayidx173.i, align 8
  %arrayidx175.i = getelementptr inbounds i16, ptr %252, i64 %idxprom168.i
  store i16 %conv134.i257, ptr %arrayidx175.i, align 2
  %PredPixel.sroa.13.12.arrayidx175.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx175.i, i64 2
  store i16 %conv144.i258, ptr %PredPixel.sroa.13.12.arrayidx175.sroa_idx.i, align 2
  %PredPixel.sroa.14.12.arrayidx175.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx175.i, i64 4
  store i16 %conv154.i, ptr %PredPixel.sroa.14.12.arrayidx175.sroa_idx.i, align 2
  %PredPixel.sroa.15.12.arrayidx175.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx175.i, i64 6
  store i16 %conv164.i, ptr %PredPixel.sroa.15.12.arrayidx175.sroa_idx.i, align 2
  %arrayidx179.i = getelementptr i8, ptr %arrayidx167.i, i64 16
  %253 = load ptr, ptr %arrayidx179.i, align 8
  %arrayidx181.i = getelementptr inbounds i16, ptr %253, i64 %idxprom168.i
  store i16 %conv86.i, ptr %arrayidx181.i, align 2
  %PredPixel.sroa.4.0.arrayidx181.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx181.i, i64 2
  store i16 %conv93.i246, ptr %PredPixel.sroa.4.0.arrayidx181.sroa_idx.i, align 2
  %PredPixel.sroa.6.0.arrayidx181.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx181.i, i64 4
  store i16 %conv100.i249, ptr %PredPixel.sroa.6.0.arrayidx181.sroa_idx.i, align 2
  %PredPixel.sroa.7.0.arrayidx181.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx181.i, i64 6
  store i16 %conv107.i, ptr %PredPixel.sroa.7.0.arrayidx181.sroa_idx.i, align 2
  %arrayidx184.i = getelementptr i8, ptr %arrayidx167.i, i64 24
  %254 = load ptr, ptr %arrayidx184.i, align 8
  %arrayidx186.i = getelementptr inbounds i16, ptr %254, i64 %idxprom168.i
  store i16 %conv124.i256, ptr %arrayidx186.i, align 2
  %PredPixel.sroa.11.10.arrayidx186.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx186.i, i64 2
  store i16 %conv134.i257, ptr %PredPixel.sroa.11.10.arrayidx186.sroa_idx.i, align 2
  %PredPixel.sroa.13.10.arrayidx186.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx186.i, i64 4
  store i16 %conv144.i258, ptr %PredPixel.sroa.13.10.arrayidx186.sroa_idx.i, align 2
  %PredPixel.sroa.14.10.arrayidx186.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx186.i, i64 6
  store i16 %conv154.i, ptr %PredPixel.sroa.14.10.arrayidx186.sroa_idx.i, align 2
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pix_d.i194) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pix_b.i193) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pix_a.i192) #5
  br label %cleanup

sw.bb14:                                          ; preds = %entry
  %255 = load ptr, ptr %currMB, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pix_b.i260) #5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pix_c.i261) #5
  %getNeighbour.i263 = getelementptr inbounds i8, ptr %0, i64 856744
  %256 = load ptr, ptr %getNeighbour.i263, align 8
  %sub.i264 = add nsw i32 %joff, -1
  %mb_size.i265 = getelementptr inbounds i8, ptr %0, i64 849124
  call void %256(ptr noundef nonnull %currMB, i32 noundef %ioff, i32 noundef %sub.i264, ptr noundef nonnull %mb_size.i265, ptr noundef nonnull %pix_b.i260) #5
  %257 = load ptr, ptr %getNeighbour.i263, align 8
  %add.i266 = add nsw i32 %ioff, 4
  call void %257(ptr noundef nonnull %currMB, i32 noundef %add.i266, i32 noundef %sub.i264, ptr noundef nonnull %mb_size.i265, ptr noundef nonnull %pix_c.i261) #5
  %258 = load i32, ptr %pix_c.i261, align 4
  %tobool.not.i267 = icmp eq i32 %258, 0
  br i1 %tobool.not.i267, label %land.end10.i272, label %land.rhs.i268

land.rhs.i268:                                    ; preds = %sw.bb14
  %cmp.i269 = icmp ne i32 %ioff, 4
  %259 = and i32 %joff, -9
  %260 = icmp ne i32 %259, 4
  %narrow.i270 = or i1 %cmp.i269, %260
  %lnot.i271 = zext i1 %narrow.i270 to i32
  br label %land.end10.i272

land.end10.i272:                                  ; preds = %land.rhs.i268, %sw.bb14
  %land.ext.i273 = phi i32 [ 0, %sw.bb14 ], [ %lnot.i271, %land.rhs.i268 ]
  store i32 %land.ext.i273, ptr %pix_c.i261, align 4
  %active_pps.i274 = getelementptr inbounds i8, ptr %0, i64 8
  %261 = load ptr, ptr %active_pps.i274, align 8
  %constrained_intra_pred_flag.i275 = getelementptr inbounds i8, ptr %261, i64 2204
  %262 = load i32, ptr %constrained_intra_pred_flag.i275, align 4
  %tobool12.not.i276 = icmp eq i32 %262, 0
  %263 = load i32, ptr %pix_b.i260, align 4
  br i1 %tobool12.not.i276, label %if.end.i294, label %if.then.i277

if.then.i277:                                     ; preds = %land.end10.i272
  %tobool14.not.i278 = icmp eq i32 %263, 0
  br i1 %tobool14.not.i278, label %cond.end.i285, label %cond.true.i279

cond.true.i279:                                   ; preds = %if.then.i277
  %intra_block.i280 = getelementptr inbounds i8, ptr %255, i64 13544
  %264 = load ptr, ptr %intra_block.i280, align 8
  %mb_addr.i281 = getelementptr inbounds i8, ptr %pix_b.i260, i64 4
  %265 = load i32, ptr %mb_addr.i281, align 4
  %idxprom.i282 = sext i32 %265 to i64
  %arrayidx15.i283 = getelementptr inbounds i8, ptr %264, i64 %idxprom.i282
  %266 = load i8, ptr %arrayidx15.i283, align 1
  %conv.i284 = sext i8 %266 to i32
  br label %cond.end.i285

cond.end.i285:                                    ; preds = %cond.true.i279, %if.then.i277
  %cond.i286 = phi i32 [ %conv.i284, %cond.true.i279 ], [ 0, %if.then.i277 ]
  %tobool17.not.i287 = icmp eq i32 %land.ext.i273, 0
  br i1 %tobool17.not.i287, label %if.end.i294, label %cond.true18.i288

cond.true18.i288:                                 ; preds = %cond.end.i285
  %intra_block19.i289 = getelementptr inbounds i8, ptr %255, i64 13544
  %267 = load ptr, ptr %intra_block19.i289, align 8
  %mb_addr20.i290 = getelementptr inbounds i8, ptr %pix_c.i261, i64 4
  %268 = load i32, ptr %mb_addr20.i290, align 4
  %idxprom21.i291 = sext i32 %268 to i64
  %arrayidx22.i292 = getelementptr inbounds i8, ptr %267, i64 %idxprom21.i291
  %269 = load i8, ptr %arrayidx22.i292, align 1
  %conv23.i293 = sext i8 %269 to i32
  br label %if.end.i294

if.end.i294:                                      ; preds = %cond.true18.i288, %cond.end.i285, %land.end10.i272
  %block_available_up_right.0.i295 = phi i32 [ %conv23.i293, %cond.true18.i288 ], [ 0, %cond.end.i285 ], [ %land.ext.i273, %land.end10.i272 ]
  %block_available_up.0.i296 = phi i32 [ %cond.i286, %cond.true18.i288 ], [ %cond.i286, %cond.end.i285 ], [ %263, %land.end10.i272 ]
  %tobool29.not.i297 = icmp eq i32 %block_available_up.0.i296, 0
  br i1 %tobool29.not.i297, label %if.then30.i356, label %if.end31.i

if.then30.i356:                                   ; preds = %if.end.i294
  %current_mb_nr.i357 = getelementptr inbounds i8, ptr %255, i64 108
  %270 = load i32, ptr %current_mb_nr.i357, align 4
  %call.i358 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %270)
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.then30.i356, %if.end.i294
  %tobool32.not.i298 = icmp eq i32 %pl, 0
  %dec_picture38.i299 = getelementptr inbounds i8, ptr %255, i64 13520
  %271 = load ptr, ptr %dec_picture38.i299, align 8
  br i1 %tobool32.not.i298, label %cond.false37.i354, label %cond.true33.i300

cond.true33.i300:                                 ; preds = %if.end31.i
  %imgUV.i301 = getelementptr inbounds i8, ptr %271, i64 136
  %272 = load ptr, ptr %imgUV.i301, align 8
  %sub34.i302 = add i32 %pl, -1
  %idxprom35.i303 = zext i32 %sub34.i302 to i64
  %arrayidx36.i304 = getelementptr inbounds ptr, ptr %272, i64 %idxprom35.i303
  br label %cond.end40.i305

cond.false37.i354:                                ; preds = %if.end31.i
  %imgY39.i355 = getelementptr inbounds i8, ptr %271, i64 128
  br label %cond.end40.i305

cond.end40.i305:                                  ; preds = %cond.false37.i354, %cond.true33.i300
  %cond41.in.i306 = phi ptr [ %arrayidx36.i304, %cond.true33.i300 ], [ %imgY39.i355, %cond.false37.i354 ]
  %cond41.i307 = load ptr, ptr %cond41.in.i306, align 8
  %mb_pred42.i308 = getelementptr inbounds i8, ptr %255, i64 1248
  %273 = load ptr, ptr %mb_pred42.i308, align 8
  %idxprom43.i309 = zext i32 %pl to i64
  %arrayidx44.i310 = getelementptr inbounds ptr, ptr %273, i64 %idxprom43.i309
  %274 = load ptr, ptr %arrayidx44.i310, align 8
  %pos_y.i311 = getelementptr inbounds i8, ptr %pix_b.i260, i64 14
  %275 = load i16, ptr %pos_y.i311, align 2
  %idxprom45.i312 = sext i16 %275 to i64
  %arrayidx46.i313 = getelementptr inbounds ptr, ptr %cond41.i307, i64 %idxprom45.i312
  %276 = load ptr, ptr %arrayidx46.i313, align 8
  %pos_x.i314 = getelementptr inbounds i8, ptr %pix_b.i260, i64 12
  %277 = load i16, ptr %pos_x.i314, align 4
  %idxprom47.i315 = sext i16 %277 to i64
  %arrayidx48.i316 = getelementptr inbounds i16, ptr %276, i64 %idxprom47.i315
  %incdec.ptr.i317 = getelementptr inbounds i8, ptr %arrayidx48.i316, i64 2
  %278 = load i16, ptr %arrayidx48.i316, align 2
  %incdec.ptr49.i318 = getelementptr inbounds i8, ptr %arrayidx48.i316, i64 4
  %279 = load i16, ptr %incdec.ptr.i317, align 2
  %incdec.ptr50.i319 = getelementptr inbounds i8, ptr %arrayidx48.i316, i64 6
  %280 = load i16, ptr %incdec.ptr49.i318, align 2
  %281 = load i16, ptr %incdec.ptr50.i319, align 2
  %tobool51.not.i320 = icmp eq i32 %block_available_up_right.0.i295, 0
  br i1 %tobool51.not.i320, label %intra4x4_vert_left_pred.exit, label %if.then52.i321

if.then52.i321:                                   ; preds = %cond.end40.i305
  %pos_y54.i = getelementptr inbounds i8, ptr %pix_c.i261, i64 14
  %282 = load i16, ptr %pos_y54.i, align 2
  %idxprom55.i322 = sext i16 %282 to i64
  %arrayidx56.i323 = getelementptr inbounds ptr, ptr %cond41.i307, i64 %idxprom55.i322
  %283 = load ptr, ptr %arrayidx56.i323, align 8
  %pos_x57.i = getelementptr inbounds i8, ptr %pix_c.i261, i64 12
  %284 = load i16, ptr %pos_x57.i, align 4
  %idxprom58.i = sext i16 %284 to i64
  %arrayidx59.i = getelementptr inbounds i16, ptr %283, i64 %idxprom58.i
  %incdec.ptr60.i324 = getelementptr inbounds i8, ptr %arrayidx59.i, i64 2
  %285 = load i16, ptr %arrayidx59.i, align 2
  %incdec.ptr61.i325 = getelementptr inbounds i8, ptr %arrayidx59.i, i64 4
  %286 = load i16, ptr %incdec.ptr60.i324, align 2
  %287 = load i16, ptr %incdec.ptr61.i325, align 2
  br label %intra4x4_vert_left_pred.exit

intra4x4_vert_left_pred.exit:                     ; preds = %cond.end40.i305, %if.then52.i321
  %p_e.0.i326 = phi i16 [ %285, %if.then52.i321 ], [ %281, %cond.end40.i305 ]
  %p_f.0.i327 = phi i16 [ %286, %if.then52.i321 ], [ %281, %cond.end40.i305 ]
  %p_g.0.i328 = phi i16 [ %287, %if.then52.i321 ], [ %281, %cond.end40.i305 ]
  %conv65.i329 = zext i16 %278 to i32
  %conv66.i = zext i16 %279 to i32
  %add67.i = add nuw nsw i32 %conv66.i, 1
  %add68.i330 = add nuw nsw i32 %add67.i, %conv65.i329
  %shr.i331 = lshr i32 %add68.i330, 1
  %conv69.i332 = trunc nuw i32 %shr.i331 to i16
  %conv72.i = zext i16 %280 to i32
  %add74.i333 = add nuw nsw i32 %add67.i, %conv72.i
  %shr75.i = lshr i32 %add74.i333, 1
  %conv76.i = trunc nuw i32 %shr75.i to i16
  %conv79.i = zext i16 %281 to i32
  %add80.i = add nuw nsw i32 %conv79.i, 1
  %add81.i = add nuw nsw i32 %add80.i, %conv72.i
  %shr82.i = lshr i32 %add81.i, 1
  %conv83.i334 = trunc nuw i32 %shr82.i to i16
  %conv86.i335 = zext i16 %p_e.0.i326 to i32
  %add88.i337 = add nuw nsw i32 %add80.i, %conv86.i335
  %shr89.i338 = lshr i32 %add88.i337, 1
  %conv90.i339 = trunc nuw i32 %shr89.i338 to i16
  %conv93.i340 = zext i16 %p_f.0.i327 to i32
  %add94.i = add nuw nsw i32 %conv86.i335, 1
  %add95.i341 = add nuw nsw i32 %add94.i, %conv93.i340
  %shr96.i = lshr i32 %add95.i341, 1
  %conv97.i = trunc nuw i32 %shr96.i to i16
  %mul.i342 = shl nuw nsw i32 %conv66.i, 1
  %add101.i = add nuw nsw i32 %conv72.i, 2
  %add103.i = add nuw nsw i32 %mul.i342, %conv65.i329
  %add104.i343 = add nuw nsw i32 %add103.i, %add101.i
  %shr105.i = lshr i32 %add104.i343, 2
  %conv106.i = trunc nuw i32 %shr105.i to i16
  %mul110.i = shl nuw nsw i32 %conv72.i, 1
  %add111.i344 = add nuw nsw i32 %conv79.i, 2
  %add113.i345 = add nuw nsw i32 %mul110.i, %conv66.i
  %add114.i346 = add nuw nsw i32 %add113.i345, %add111.i344
  %shr115.i = lshr i32 %add114.i346, 2
  %conv116.i = trunc nuw i32 %shr115.i to i16
  %mul120.i = shl nuw nsw i32 %conv79.i, 1
  %add123.i347 = add nuw nsw i32 %mul120.i, %add101.i
  %add124.i = add nuw nsw i32 %add123.i347, %conv86.i335
  %shr125.i = lshr i32 %add124.i, 2
  %conv126.i = trunc nuw i32 %shr125.i to i16
  %mul130.i = shl nuw nsw i32 %conv86.i335, 1
  %add133.i = add nuw nsw i32 %mul130.i, %add111.i344
  %add134.i = add nuw nsw i32 %add133.i, %conv93.i340
  %shr135.i = lshr i32 %add134.i, 2
  %conv136.i = trunc nuw i32 %shr135.i to i16
  %mul140.i = shl nuw nsw i32 %conv93.i340, 1
  %conv142.i = zext i16 %p_g.0.i328 to i32
  %add141.i348 = add nuw nsw i32 %conv86.i335, 2
  %add143.i = add nuw nsw i32 %add141.i348, %mul140.i
  %add144.i = add nuw nsw i32 %add143.i, %conv142.i
  %shr145.i = lshr i32 %add144.i, 2
  %conv146.i = trunc nuw i32 %shr145.i to i16
  %idxprom148.i = sext i32 %joff to i64
  %arrayidx149.i = getelementptr inbounds ptr, ptr %274, i64 %idxprom148.i
  %288 = load ptr, ptr %arrayidx149.i, align 8
  %idxprom150.i349 = sext i32 %ioff to i64
  %arrayidx151.i350 = getelementptr inbounds i16, ptr %288, i64 %idxprom150.i349
  store i16 %conv69.i332, ptr %arrayidx151.i350, align 2
  %PredPixel.sroa.4.0.arrayidx151.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx151.i350, i64 2
  store i16 %conv76.i, ptr %PredPixel.sroa.4.0.arrayidx151.sroa_idx.i, align 2
  %PredPixel.sroa.6.0.arrayidx151.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx151.i350, i64 4
  store i16 %conv83.i334, ptr %PredPixel.sroa.6.0.arrayidx151.sroa_idx.i, align 2
  %PredPixel.sroa.7.0.arrayidx151.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx151.i350, i64 6
  store i16 %conv90.i339, ptr %PredPixel.sroa.7.0.arrayidx151.sroa_idx.i, align 2
  %arrayidx155.i = getelementptr i8, ptr %arrayidx149.i, i64 8
  %289 = load ptr, ptr %arrayidx155.i, align 8
  %arrayidx157.i351 = getelementptr inbounds i16, ptr %289, i64 %idxprom150.i349
  store i16 %conv106.i, ptr %arrayidx157.i351, align 2
  %PredPixel.sroa.11.10.arrayidx157.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx157.i351, i64 2
  store i16 %conv116.i, ptr %PredPixel.sroa.11.10.arrayidx157.sroa_idx.i, align 2
  %PredPixel.sroa.13.10.arrayidx157.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx157.i351, i64 4
  store i16 %conv126.i, ptr %PredPixel.sroa.13.10.arrayidx157.sroa_idx.i, align 2
  %PredPixel.sroa.14.10.arrayidx157.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx157.i351, i64 6
  store i16 %conv136.i, ptr %PredPixel.sroa.14.10.arrayidx157.sroa_idx.i, align 2
  %arrayidx161.i = getelementptr i8, ptr %arrayidx149.i, i64 16
  %290 = load ptr, ptr %arrayidx161.i, align 8
  %arrayidx163.i352 = getelementptr inbounds i16, ptr %290, i64 %idxprom150.i349
  store i16 %conv76.i, ptr %arrayidx163.i352, align 2
  %PredPixel.sroa.6.2.arrayidx163.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx163.i352, i64 2
  store i16 %conv83.i334, ptr %PredPixel.sroa.6.2.arrayidx163.sroa_idx.i, align 2
  %PredPixel.sroa.7.2.arrayidx163.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx163.i352, i64 4
  store i16 %conv90.i339, ptr %PredPixel.sroa.7.2.arrayidx163.sroa_idx.i, align 2
  %PredPixel.sroa.8.2.arrayidx163.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx163.i352, i64 6
  store i16 %conv97.i, ptr %PredPixel.sroa.8.2.arrayidx163.sroa_idx.i, align 2
  %arrayidx166.i = getelementptr i8, ptr %arrayidx149.i, i64 24
  %291 = load ptr, ptr %arrayidx166.i, align 8
  %arrayidx168.i353 = getelementptr inbounds i16, ptr %291, i64 %idxprom150.i349
  store i16 %conv116.i, ptr %arrayidx168.i353, align 2
  %PredPixel.sroa.13.12.arrayidx168.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx168.i353, i64 2
  store i16 %conv126.i, ptr %PredPixel.sroa.13.12.arrayidx168.sroa_idx.i, align 2
  %PredPixel.sroa.14.12.arrayidx168.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx168.i353, i64 4
  store i16 %conv136.i, ptr %PredPixel.sroa.14.12.arrayidx168.sroa_idx.i, align 2
  %PredPixel.sroa.15.12.arrayidx168.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx168.i353, i64 6
  store i16 %conv146.i, ptr %PredPixel.sroa.15.12.arrayidx168.sroa_idx.i, align 2
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pix_c.i261) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pix_b.i260) #5
  br label %cleanup

sw.bb16:                                          ; preds = %entry
  %292 = load ptr, ptr %currMB, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pix_a.i359) #5
  %sub.i361 = add nsw i32 %ioff, -1
  %mb_size.i362 = getelementptr inbounds i8, ptr %0, i64 849124
  call void @getNonAffNeighbour(ptr noundef nonnull %currMB, i32 noundef %sub.i361, i32 noundef %joff, ptr noundef nonnull %mb_size.i362, ptr noundef nonnull %pix_a.i359) #5
  %active_pps.i363 = getelementptr inbounds i8, ptr %0, i64 8
  %293 = load ptr, ptr %active_pps.i363, align 8
  %constrained_intra_pred_flag.i364 = getelementptr inbounds i8, ptr %293, i64 2204
  %294 = load i32, ptr %constrained_intra_pred_flag.i364, align 4
  %tobool.not.i365 = icmp eq i32 %294, 0
  %295 = load i32, ptr %pix_a.i359, align 4
  br i1 %tobool.not.i365, label %if.end.i374, label %if.then.i366

if.then.i366:                                     ; preds = %sw.bb16
  %tobool2.not.i367 = icmp eq i32 %295, 0
  br i1 %tobool2.not.i367, label %if.then6.i395, label %cond.true.i368

cond.true.i368:                                   ; preds = %if.then.i366
  %intra_block.i369 = getelementptr inbounds i8, ptr %292, i64 13544
  %296 = load ptr, ptr %intra_block.i369, align 8
  %mb_addr.i370 = getelementptr inbounds i8, ptr %pix_a.i359, i64 4
  %297 = load i32, ptr %mb_addr.i370, align 4
  %idxprom.i371 = sext i32 %297 to i64
  %arrayidx3.i372 = getelementptr inbounds i8, ptr %296, i64 %idxprom.i371
  %298 = load i8, ptr %arrayidx3.i372, align 1
  %conv.i373 = sext i8 %298 to i32
  br label %if.end.i374

if.end.i374:                                      ; preds = %cond.true.i368, %sw.bb16
  %block_available_left.0.i375 = phi i32 [ %conv.i373, %cond.true.i368 ], [ %295, %sw.bb16 ]
  %tobool5.not.i376 = icmp eq i32 %block_available_left.0.i375, 0
  br i1 %tobool5.not.i376, label %if.then6.i395, label %if.else7.i377

if.then6.i395:                                    ; preds = %if.end.i374, %if.then.i366
  %current_mb_nr.i396 = getelementptr inbounds i8, ptr %292, i64 108
  %299 = load i32, ptr %current_mb_nr.i396, align 4
  %call.i397 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %299)
  br label %intra4x4_hor_up_pred.exit

if.else7.i377:                                    ; preds = %if.end.i374
  %tobool8.not.i = icmp eq i32 %pl, 0
  %dec_picture14.i = getelementptr inbounds i8, ptr %292, i64 13520
  %300 = load ptr, ptr %dec_picture14.i, align 8
  br i1 %tobool8.not.i, label %cond.false13.i, label %cond.true9.i

cond.true9.i:                                     ; preds = %if.else7.i377
  %imgUV.i378 = getelementptr inbounds i8, ptr %300, i64 136
  %301 = load ptr, ptr %imgUV.i378, align 8
  %sub10.i = add i32 %pl, -1
  %idxprom11.i = zext i32 %sub10.i to i64
  %arrayidx12.i379 = getelementptr inbounds ptr, ptr %301, i64 %idxprom11.i
  br label %cond.end16.i

cond.false13.i:                                   ; preds = %if.else7.i377
  %imgY15.i = getelementptr inbounds i8, ptr %300, i64 128
  br label %cond.end16.i

cond.end16.i:                                     ; preds = %cond.false13.i, %cond.true9.i
  %cond17.in.i = phi ptr [ %arrayidx12.i379, %cond.true9.i ], [ %imgY15.i, %cond.false13.i ]
  %cond17.i = load ptr, ptr %cond17.in.i, align 8
  %mb_pred18.i = getelementptr inbounds i8, ptr %292, i64 1248
  %302 = load ptr, ptr %mb_pred18.i, align 8
  %idxprom19.i = zext i32 %pl to i64
  %arrayidx20.i = getelementptr inbounds ptr, ptr %302, i64 %idxprom19.i
  %303 = load ptr, ptr %arrayidx20.i, align 8
  %pos_y.i380 = getelementptr inbounds i8, ptr %pix_a.i359, i64 14
  %304 = load i16, ptr %pos_y.i380, align 2
  %idxprom21.i381 = sext i16 %304 to i64
  %arrayidx22.i382 = getelementptr inbounds ptr, ptr %cond17.i, i64 %idxprom21.i381
  %pos_x.i383 = getelementptr inbounds i8, ptr %pix_a.i359, i64 12
  %305 = load i16, ptr %pos_x.i383, align 4
  %incdec.ptr.i384 = getelementptr inbounds i8, ptr %arrayidx22.i382, i64 8
  %306 = load ptr, ptr %arrayidx22.i382, align 8
  %idx.ext.i385 = sext i16 %305 to i64
  %add.ptr.i386 = getelementptr inbounds i16, ptr %306, i64 %idx.ext.i385
  %307 = load i16, ptr %add.ptr.i386, align 2
  %incdec.ptr24.i = getelementptr inbounds i8, ptr %arrayidx22.i382, i64 16
  %308 = load ptr, ptr %incdec.ptr.i384, align 8
  %add.ptr26.i = getelementptr inbounds i16, ptr %308, i64 %idx.ext.i385
  %309 = load i16, ptr %add.ptr26.i, align 2
  %incdec.ptr27.i = getelementptr inbounds i8, ptr %arrayidx22.i382, i64 24
  %310 = load ptr, ptr %incdec.ptr24.i, align 8
  %add.ptr29.i = getelementptr inbounds i16, ptr %310, i64 %idx.ext.i385
  %311 = load i16, ptr %add.ptr29.i, align 2
  %312 = load ptr, ptr %incdec.ptr27.i, align 8
  %add.ptr31.i = getelementptr inbounds i16, ptr %312, i64 %idx.ext.i385
  %313 = load i16, ptr %add.ptr31.i, align 2
  %conv32.i = zext i16 %307 to i32
  %conv33.i387 = zext i16 %309 to i32
  %add.i388 = add nuw nsw i32 %conv33.i387, 1
  %add34.i = add nuw nsw i32 %add.i388, %conv32.i
  %shr.i389 = lshr i32 %add34.i, 1
  %conv35.i = trunc nuw i32 %shr.i389 to i16
  %mul.i390 = shl nuw nsw i32 %conv33.i387, 1
  %conv40.i391 = zext i16 %311 to i32
  %add39.i = add nuw nsw i32 %conv40.i391, 2
  %add41.i = add nuw nsw i32 %mul.i390, %conv32.i
  %add42.i = add nuw nsw i32 %add41.i, %add39.i
  %shr43.i = lshr i32 %add42.i, 2
  %conv44.i392 = trunc nuw i32 %shr43.i to i16
  %add49.i = add nuw nsw i32 %add.i388, %conv40.i391
  %shr50.i = lshr i32 %add49.i, 1
  %conv51.i = trunc nuw i32 %shr50.i to i16
  %mul55.i = shl nuw nsw i32 %conv40.i391, 1
  %conv57.i = zext i16 %313 to i32
  %add56.i = add nuw nsw i32 %conv33.i387, 2
  %add58.i = add nuw nsw i32 %add56.i, %mul55.i
  %add59.i = add nuw nsw i32 %add58.i, %conv57.i
  %shr60.i = lshr i32 %add59.i, 2
  %conv61.i = trunc nuw i32 %shr60.i to i16
  %add65.i393 = add nuw nsw i32 %conv40.i391, 1
  %add66.i394 = add nuw nsw i32 %add65.i393, %conv57.i
  %shr67.i = lshr i32 %add66.i394, 1
  %conv68.i = trunc nuw i32 %shr67.i to i16
  %mul72.i = shl nuw nsw i32 %conv57.i, 1
  %add75.i = add nuw nsw i32 %add39.i, %conv57.i
  %add76.i = add nuw nsw i32 %add75.i, %mul72.i
  %shr77.i = lshr i32 %add76.i, 2
  %conv78.i = trunc nuw i32 %shr77.i to i16
  %idxprom84.i = sext i32 %joff to i64
  %arrayidx85.i = getelementptr inbounds ptr, ptr %303, i64 %idxprom84.i
  %314 = load ptr, ptr %arrayidx85.i, align 8
  %idxprom86.i = sext i32 %ioff to i64
  %arrayidx87.i = getelementptr inbounds i16, ptr %314, i64 %idxprom86.i
  store i16 %conv35.i, ptr %arrayidx87.i, align 2
  %PredPixel.sroa.4.0.arrayidx87.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx87.i, i64 2
  store i16 %conv44.i392, ptr %PredPixel.sroa.4.0.arrayidx87.sroa_idx.i, align 2
  %PredPixel.sroa.5.0.arrayidx87.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx87.i, i64 4
  store i16 %conv51.i, ptr %PredPixel.sroa.5.0.arrayidx87.sroa_idx.i, align 2
  %PredPixel.sroa.7.0.arrayidx87.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx87.i, i64 6
  store i16 %conv61.i, ptr %PredPixel.sroa.7.0.arrayidx87.sroa_idx.i, align 2
  %arrayidx91.i = getelementptr i8, ptr %arrayidx85.i, i64 8
  %315 = load ptr, ptr %arrayidx91.i, align 8
  %arrayidx93.i = getelementptr inbounds i16, ptr %315, i64 %idxprom86.i
  store i16 %conv51.i, ptr %arrayidx93.i, align 2
  %PredPixel.sroa.7.4.arrayidx93.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx93.i, i64 2
  store i16 %conv61.i, ptr %PredPixel.sroa.7.4.arrayidx93.sroa_idx.i, align 2
  %PredPixel.sroa.8.4.arrayidx93.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx93.i, i64 4
  store i16 %conv68.i, ptr %PredPixel.sroa.8.4.arrayidx93.sroa_idx.i, align 2
  %PredPixel.sroa.10.4.arrayidx93.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx93.i, i64 6
  store i16 %conv78.i, ptr %PredPixel.sroa.10.4.arrayidx93.sroa_idx.i, align 2
  %arrayidx97.i = getelementptr i8, ptr %arrayidx85.i, i64 16
  %316 = load ptr, ptr %arrayidx97.i, align 8
  %arrayidx99.i = getelementptr inbounds i16, ptr %316, i64 %idxprom86.i
  store i16 %conv68.i, ptr %arrayidx99.i, align 2
  %PredPixel.sroa.10.8.arrayidx99.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx99.i, i64 2
  store i16 %conv78.i, ptr %PredPixel.sroa.10.8.arrayidx99.sroa_idx.i, align 2
  %PredPixel.sroa.11.8.arrayidx99.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx99.i, i64 4
  store i16 %313, ptr %PredPixel.sroa.11.8.arrayidx99.sroa_idx.i, align 2
  %PredPixel.sroa.13.8.arrayidx99.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx99.i, i64 6
  store i16 %313, ptr %PredPixel.sroa.13.8.arrayidx99.sroa_idx.i, align 2
  %arrayidx103.i = getelementptr i8, ptr %arrayidx85.i, i64 24
  %317 = load ptr, ptr %arrayidx103.i, align 8
  %arrayidx105.i = getelementptr inbounds i16, ptr %317, i64 %idxprom86.i
  %318 = insertelement <4 x i16> poison, i16 %313, i64 0
  %319 = shufflevector <4 x i16> %318, <4 x i16> poison, <4 x i32> zeroinitializer
  store <4 x i16> %319, ptr %arrayidx105.i, align 2
  br label %intra4x4_hor_up_pred.exit

intra4x4_hor_up_pred.exit:                        ; preds = %if.then6.i395, %cond.end16.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pix_a.i359) #5
  br label %cleanup

sw.bb18:                                          ; preds = %entry
  %320 = load ptr, ptr %currMB, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pix_a.i398) #5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pix_b.i399) #5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pix_d.i400) #5
  %sub.i402 = add nsw i32 %ioff, -1
  %mb_size.i403 = getelementptr inbounds i8, ptr %0, i64 849124
  call void @getNonAffNeighbour(ptr noundef nonnull %currMB, i32 noundef %sub.i402, i32 noundef %joff, ptr noundef nonnull %mb_size.i403, ptr noundef nonnull %pix_a.i398) #5
  %sub2.i404 = add nsw i32 %joff, -1
  call void @getNonAffNeighbour(ptr noundef nonnull %currMB, i32 noundef %ioff, i32 noundef %sub2.i404, ptr noundef nonnull %mb_size.i403, ptr noundef nonnull %pix_b.i399) #5
  call void @getNonAffNeighbour(ptr noundef nonnull %currMB, i32 noundef %sub.i402, i32 noundef %sub2.i404, ptr noundef nonnull %mb_size.i403, ptr noundef nonnull %pix_d.i400) #5
  %active_pps.i405 = getelementptr inbounds i8, ptr %0, i64 8
  %321 = load ptr, ptr %active_pps.i405, align 8
  %constrained_intra_pred_flag.i406 = getelementptr inbounds i8, ptr %321, i64 2204
  %322 = load i32, ptr %constrained_intra_pred_flag.i406, align 4
  %tobool.not.i407 = icmp eq i32 %322, 0
  %323 = load i32, ptr %pix_a.i398, align 4
  br i1 %tobool.not.i407, label %if.else.i519, label %if.then.i408

if.then.i408:                                     ; preds = %sw.bb18
  %tobool11.not.i409 = icmp eq i32 %323, 0
  br i1 %tobool11.not.i409, label %cond.end.i416, label %cond.true.i410

cond.true.i410:                                   ; preds = %if.then.i408
  %intra_block.i411 = getelementptr inbounds i8, ptr %320, i64 13544
  %324 = load ptr, ptr %intra_block.i411, align 8
  %mb_addr.i412 = getelementptr inbounds i8, ptr %pix_a.i398, i64 4
  %325 = load i32, ptr %mb_addr.i412, align 4
  %idxprom.i413 = sext i32 %325 to i64
  %arrayidx12.i414 = getelementptr inbounds i8, ptr %324, i64 %idxprom.i413
  %326 = load i8, ptr %arrayidx12.i414, align 1
  %conv.i415 = sext i8 %326 to i32
  br label %cond.end.i416

cond.end.i416:                                    ; preds = %cond.true.i410, %if.then.i408
  %cond.i417 = phi i32 [ %conv.i415, %cond.true.i410 ], [ 0, %if.then.i408 ]
  %327 = load i32, ptr %pix_b.i399, align 4
  %tobool14.not.i418 = icmp eq i32 %327, 0
  br i1 %tobool14.not.i418, label %cond.end22.i425, label %cond.true15.i419

cond.true15.i419:                                 ; preds = %cond.end.i416
  %intra_block16.i420 = getelementptr inbounds i8, ptr %320, i64 13544
  %328 = load ptr, ptr %intra_block16.i420, align 8
  %mb_addr17.i421 = getelementptr inbounds i8, ptr %pix_b.i399, i64 4
  %329 = load i32, ptr %mb_addr17.i421, align 4
  %idxprom18.i422 = sext i32 %329 to i64
  %arrayidx19.i423 = getelementptr inbounds i8, ptr %328, i64 %idxprom18.i422
  %330 = load i8, ptr %arrayidx19.i423, align 1
  %conv20.i424 = sext i8 %330 to i32
  br label %cond.end22.i425

cond.end22.i425:                                  ; preds = %cond.true15.i419, %cond.end.i416
  %cond23.i426 = phi i32 [ %conv20.i424, %cond.true15.i419 ], [ 0, %cond.end.i416 ]
  %331 = load i32, ptr %pix_d.i400, align 4
  %tobool25.not.i427 = icmp eq i32 %331, 0
  br i1 %tobool25.not.i427, label %if.then42.i442, label %cond.true26.i428

cond.true26.i428:                                 ; preds = %cond.end22.i425
  %intra_block27.i429 = getelementptr inbounds i8, ptr %320, i64 13544
  %332 = load ptr, ptr %intra_block27.i429, align 8
  %mb_addr28.i430 = getelementptr inbounds i8, ptr %pix_d.i400, i64 4
  %333 = load i32, ptr %mb_addr28.i430, align 4
  %idxprom29.i431 = sext i32 %333 to i64
  %arrayidx30.i432 = getelementptr inbounds i8, ptr %332, i64 %idxprom29.i431
  %334 = load i8, ptr %arrayidx30.i432, align 1
  %conv31.i433 = sext i8 %334 to i32
  br label %if.end.i434

if.else.i519:                                     ; preds = %sw.bb18
  %335 = load i32, ptr %pix_b.i399, align 4
  %336 = load i32, ptr %pix_d.i400, align 4
  br label %if.end.i434

if.end.i434:                                      ; preds = %if.else.i519, %cond.true26.i428
  %block_available_up_left.0.i435 = phi i32 [ %336, %if.else.i519 ], [ %conv31.i433, %cond.true26.i428 ]
  %block_available_left.0.i436 = phi i32 [ %323, %if.else.i519 ], [ %cond.i417, %cond.true26.i428 ]
  %block_available_up.0.i437 = phi i32 [ %335, %if.else.i519 ], [ %cond23.i426, %cond.true26.i428 ]
  %tobool38.i438 = icmp ne i32 %block_available_up.0.i437, 0
  %tobool39.i439 = icmp ne i32 %block_available_left.0.i436, 0
  %or.cond.i440 = select i1 %tobool38.i438, i1 %tobool39.i439, i1 false
  %tobool41.i441 = icmp ne i32 %block_available_up_left.0.i435, 0
  %or.cond191.i = select i1 %or.cond.i440, i1 %tobool41.i441, i1 false
  br i1 %or.cond191.i, label %if.else43.i, label %if.then42.i442

if.then42.i442:                                   ; preds = %if.end.i434, %cond.end22.i425
  %current_mb_nr.i443 = getelementptr inbounds i8, ptr %320, i64 108
  %337 = load i32, ptr %current_mb_nr.i443, align 4
  %call.i444 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, i32 noundef %337)
  br label %intra4x4_hor_down_pred.exit

if.else43.i:                                      ; preds = %if.end.i434
  %tobool44.not.i445 = icmp eq i32 %pl, 0
  %dec_picture50.i446 = getelementptr inbounds i8, ptr %320, i64 13520
  %338 = load ptr, ptr %dec_picture50.i446, align 8
  br i1 %tobool44.not.i445, label %cond.false49.i517, label %cond.true45.i447

cond.true45.i447:                                 ; preds = %if.else43.i
  %imgUV.i448 = getelementptr inbounds i8, ptr %338, i64 136
  %339 = load ptr, ptr %imgUV.i448, align 8
  %sub46.i449 = add i32 %pl, -1
  %idxprom47.i450 = zext i32 %sub46.i449 to i64
  %arrayidx48.i451 = getelementptr inbounds ptr, ptr %339, i64 %idxprom47.i450
  br label %cond.end52.i

cond.false49.i517:                                ; preds = %if.else43.i
  %imgY51.i518 = getelementptr inbounds i8, ptr %338, i64 128
  br label %cond.end52.i

cond.end52.i:                                     ; preds = %cond.false49.i517, %cond.true45.i447
  %cond53.in.i452 = phi ptr [ %arrayidx48.i451, %cond.true45.i447 ], [ %imgY51.i518, %cond.false49.i517 ]
  %cond53.i453 = load ptr, ptr %cond53.in.i452, align 8
  %mb_pred54.i454 = getelementptr inbounds i8, ptr %320, i64 1248
  %340 = load ptr, ptr %mb_pred54.i454, align 8
  %idxprom55.i455 = zext i32 %pl to i64
  %arrayidx56.i456 = getelementptr inbounds ptr, ptr %340, i64 %idxprom55.i455
  %341 = load ptr, ptr %arrayidx56.i456, align 8
  %pos_y.i457 = getelementptr inbounds i8, ptr %pix_a.i398, i64 14
  %342 = load i16, ptr %pos_y.i457, align 2
  %idxprom57.i458 = sext i16 %342 to i64
  %arrayidx58.i459 = getelementptr inbounds ptr, ptr %cond53.i453, i64 %idxprom57.i458
  %pos_x.i460 = getelementptr inbounds i8, ptr %pix_a.i398, i64 12
  %343 = load i16, ptr %pos_x.i460, align 4
  %pos_y60.i461 = getelementptr inbounds i8, ptr %pix_b.i399, i64 14
  %344 = load i16, ptr %pos_y60.i461, align 2
  %idxprom61.i462 = sext i16 %344 to i64
  %arrayidx62.i463 = getelementptr inbounds ptr, ptr %cond53.i453, i64 %idxprom61.i462
  %345 = load ptr, ptr %arrayidx62.i463, align 8
  %pos_x63.i464 = getelementptr inbounds i8, ptr %pix_b.i399, i64 12
  %346 = load i16, ptr %pos_x63.i464, align 4
  %idxprom64.i465 = sext i16 %346 to i64
  %arrayidx65.i466 = getelementptr inbounds i16, ptr %345, i64 %idxprom64.i465
  %incdec.ptr.i467 = getelementptr inbounds i8, ptr %arrayidx65.i466, i64 2
  %347 = load i16, ptr %arrayidx65.i466, align 2
  %incdec.ptr66.i468 = getelementptr inbounds i8, ptr %arrayidx65.i466, i64 4
  %348 = load i16, ptr %incdec.ptr.i467, align 2
  %349 = load i16, ptr %incdec.ptr66.i468, align 2
  %incdec.ptr68.i469 = getelementptr inbounds i8, ptr %arrayidx58.i459, i64 8
  %350 = load ptr, ptr %arrayidx58.i459, align 8
  %idx.ext.i470 = sext i16 %343 to i64
  %add.ptr.i471 = getelementptr inbounds i16, ptr %350, i64 %idx.ext.i470
  %351 = load i16, ptr %add.ptr.i471, align 2
  %incdec.ptr69.i472 = getelementptr inbounds i8, ptr %arrayidx58.i459, i64 16
  %352 = load ptr, ptr %incdec.ptr68.i469, align 8
  %add.ptr71.i473 = getelementptr inbounds i16, ptr %352, i64 %idx.ext.i470
  %353 = load i16, ptr %add.ptr71.i473, align 2
  %incdec.ptr72.i474 = getelementptr inbounds i8, ptr %arrayidx58.i459, i64 24
  %354 = load ptr, ptr %incdec.ptr69.i472, align 8
  %add.ptr74.i475 = getelementptr inbounds i16, ptr %354, i64 %idx.ext.i470
  %355 = load i16, ptr %add.ptr74.i475, align 2
  %356 = load ptr, ptr %incdec.ptr72.i474, align 8
  %add.ptr76.i476 = getelementptr inbounds i16, ptr %356, i64 %idx.ext.i470
  %357 = load i16, ptr %add.ptr76.i476, align 2
  %pos_y77.i477 = getelementptr inbounds i8, ptr %pix_d.i400, i64 14
  %358 = load i16, ptr %pos_y77.i477, align 2
  %idxprom78.i478 = sext i16 %358 to i64
  %arrayidx79.i479 = getelementptr inbounds ptr, ptr %cond53.i453, i64 %idxprom78.i478
  %359 = load ptr, ptr %arrayidx79.i479, align 8
  %pos_x80.i480 = getelementptr inbounds i8, ptr %pix_d.i400, i64 12
  %360 = load i16, ptr %pos_x80.i480, align 4
  %idxprom81.i481 = sext i16 %360 to i64
  %arrayidx82.i482 = getelementptr inbounds i16, ptr %359, i64 %idxprom81.i481
  %361 = load i16, ptr %arrayidx82.i482, align 2
  %conv83.i483 = zext i16 %355 to i32
  %conv84.i484 = zext i16 %357 to i32
  %add.i485 = add nuw nsw i32 %conv83.i483, 1
  %add85.i486 = add nuw nsw i32 %add.i485, %conv84.i484
  %shr.i487 = lshr i32 %add85.i486, 1
  %conv86.i488 = trunc nuw i32 %shr.i487 to i16
  %conv88.i489 = zext i16 %353 to i32
  %mul.i490 = shl nuw nsw i32 %conv83.i483, 1
  %add90.i491 = add nuw nsw i32 %conv88.i489, 2
  %add92.i492 = add nuw nsw i32 %mul.i490, %add90.i491
  %add93.i493 = add nuw nsw i32 %add92.i492, %conv84.i484
  %shr94.i = lshr i32 %add93.i493, 2
  %conv95.i = trunc nuw i32 %shr94.i to i16
  %add100.i = add nuw nsw i32 %add.i485, %conv88.i489
  %shr101.i = lshr i32 %add100.i, 1
  %conv102.i494 = trunc nuw i32 %shr101.i to i16
  %conv104.i495 = zext i16 %351 to i32
  %mul106.i496 = shl nuw nsw i32 %conv88.i489, 1
  %add107.i497 = add nuw nsw i32 %conv104.i495, 2
  %add109.i = add nuw nsw i32 %add107.i497, %mul106.i496
  %add110.i = add nuw nsw i32 %add109.i, %conv83.i483
  %shr111.i = lshr i32 %add110.i, 2
  %conv112.i = trunc nuw i32 %shr111.i to i16
  %add116.i498 = add nuw nsw i32 %conv104.i495, 1
  %add117.i499 = add nuw nsw i32 %add116.i498, %conv88.i489
  %shr118.i = lshr i32 %add117.i499, 1
  %conv119.i = trunc nuw i32 %shr118.i to i16
  %conv121.i = zext i16 %361 to i32
  %mul123.i = shl nuw nsw i32 %conv104.i495, 1
  %add126.i500 = add nuw nsw i32 %add90.i491, %mul123.i
  %add127.i = add nuw nsw i32 %add126.i500, %conv121.i
  %shr128.i = lshr i32 %add127.i, 2
  %conv129.i = trunc nuw i32 %shr128.i to i16
  %add134.i501 = add nuw nsw i32 %add116.i498, %conv121.i
  %shr135.i502 = lshr i32 %add134.i501, 1
  %conv136.i503 = trunc nuw i32 %shr135.i502 to i16
  %mul140.i504 = shl nuw nsw i32 %conv121.i, 1
  %conv142.i505 = zext i16 %347 to i32
  %add141.i506 = add nuw nsw i32 %conv142.i505, 2
  %add143.i507 = add nuw nsw i32 %add141.i506, %conv104.i495
  %add144.i508 = add nuw nsw i32 %add143.i507, %mul140.i504
  %shr145.i509 = lshr i32 %add144.i508, 2
  %conv146.i510 = trunc nuw i32 %shr145.i509 to i16
  %mul150.i = shl nuw nsw i32 %conv142.i505, 1
  %conv152.i = zext i16 %348 to i32
  %add151.i511 = add nuw nsw i32 %mul150.i, 2
  %add153.i = add nuw nsw i32 %add151.i511, %conv152.i
  %add154.i = add nuw nsw i32 %add153.i, %conv121.i
  %shr155.i = lshr i32 %add154.i, 2
  %conv156.i = trunc nuw i32 %shr155.i to i16
  %mul160.i = shl nuw nsw i32 %conv152.i, 1
  %conv162.i = zext i16 %349 to i32
  %add163.i = add nuw nsw i32 %mul160.i, %add141.i506
  %add164.i = add nuw nsw i32 %add163.i, %conv162.i
  %shr165.i = lshr i32 %add164.i, 2
  %conv166.i = trunc nuw i32 %shr165.i to i16
  %idxprom168.i512 = sext i32 %joff to i64
  %arrayidx169.i513 = getelementptr inbounds ptr, ptr %341, i64 %idxprom168.i512
  %362 = load ptr, ptr %arrayidx169.i513, align 8
  %idxprom170.i = sext i32 %ioff to i64
  %arrayidx171.i = getelementptr inbounds i16, ptr %362, i64 %idxprom170.i
  store i16 %conv136.i503, ptr %arrayidx171.i, align 2
  %PredPixel.sroa.13.12.arrayidx171.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx171.i, i64 2
  store i16 %conv146.i510, ptr %PredPixel.sroa.13.12.arrayidx171.sroa_idx.i, align 2
  %PredPixel.sroa.14.12.arrayidx171.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx171.i, i64 4
  store i16 %conv156.i, ptr %PredPixel.sroa.14.12.arrayidx171.sroa_idx.i, align 2
  %PredPixel.sroa.15.12.arrayidx171.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx171.i, i64 6
  store i16 %conv166.i, ptr %PredPixel.sroa.15.12.arrayidx171.sroa_idx.i, align 2
  %arrayidx175.i514 = getelementptr i8, ptr %arrayidx169.i513, i64 8
  %363 = load ptr, ptr %arrayidx175.i514, align 8
  %arrayidx177.i = getelementptr inbounds i16, ptr %363, i64 %idxprom170.i
  store i16 %conv119.i, ptr %arrayidx177.i, align 2
  %PredPixel.sroa.10.8.arrayidx177.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx177.i, i64 2
  store i16 %conv129.i, ptr %PredPixel.sroa.10.8.arrayidx177.sroa_idx.i, align 2
  %PredPixel.sroa.11.8.arrayidx177.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx177.i, i64 4
  store i16 %conv136.i503, ptr %PredPixel.sroa.11.8.arrayidx177.sroa_idx.i, align 2
  %PredPixel.sroa.13.8.arrayidx177.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx177.i, i64 6
  store i16 %conv146.i510, ptr %PredPixel.sroa.13.8.arrayidx177.sroa_idx.i, align 2
  %arrayidx181.i515 = getelementptr i8, ptr %arrayidx169.i513, i64 16
  %364 = load ptr, ptr %arrayidx181.i515, align 8
  %arrayidx183.i = getelementptr inbounds i16, ptr %364, i64 %idxprom170.i
  store i16 %conv102.i494, ptr %arrayidx183.i, align 2
  %PredPixel.sroa.7.4.arrayidx183.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx183.i, i64 2
  store i16 %conv112.i, ptr %PredPixel.sroa.7.4.arrayidx183.sroa_idx.i, align 2
  %PredPixel.sroa.8.4.arrayidx183.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx183.i, i64 4
  store i16 %conv119.i, ptr %PredPixel.sroa.8.4.arrayidx183.sroa_idx.i, align 2
  %PredPixel.sroa.10.4.arrayidx183.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx183.i, i64 6
  store i16 %conv129.i, ptr %PredPixel.sroa.10.4.arrayidx183.sroa_idx.i, align 2
  %arrayidx186.i516 = getelementptr i8, ptr %arrayidx169.i513, i64 24
  %365 = load ptr, ptr %arrayidx186.i516, align 8
  %arrayidx188.i = getelementptr inbounds i16, ptr %365, i64 %idxprom170.i
  store i16 %conv86.i488, ptr %arrayidx188.i, align 2
  %PredPixel.sroa.4.0.arrayidx188.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx188.i, i64 2
  store i16 %conv95.i, ptr %PredPixel.sroa.4.0.arrayidx188.sroa_idx.i, align 2
  %PredPixel.sroa.5.0.arrayidx188.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx188.i, i64 4
  store i16 %conv102.i494, ptr %PredPixel.sroa.5.0.arrayidx188.sroa_idx.i, align 2
  %PredPixel.sroa.7.0.arrayidx188.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx188.i, i64 6
  store i16 %conv112.i, ptr %PredPixel.sroa.7.0.arrayidx188.sroa_idx.i, align 2
  br label %intra4x4_hor_down_pred.exit

intra4x4_hor_down_pred.exit:                      ; preds = %if.then42.i442, %cond.end52.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pix_d.i400) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pix_b.i399) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pix_a.i398) #5
  br label %cleanup

sw.default:                                       ; preds = %entry
  %conv = zext i8 %3 to i32
  %call21 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %conv)
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %intra4x4_hor_down_pred.exit, %intra4x4_hor_up_pred.exit, %intra4x4_vert_left_pred.exit, %intra4x4_vert_right_pred.exit, %intra4x4_diag_down_left_pred.exit, %intra4x4_diag_down_right_pred.exit, %intra4x4_hor_pred.exit, %intra4x4_vert_pred.exit, %intra4x4_dc_pred.exit
  %retval.0 = phi i32 [ 1, %sw.default ], [ 0, %intra4x4_hor_down_pred.exit ], [ 0, %intra4x4_hor_up_pred.exit ], [ 0, %intra4x4_vert_left_pred.exit ], [ 0, %intra4x4_vert_right_pred.exit ], [ 0, %intra4x4_diag_down_left_pred.exit ], [ 0, %intra4x4_diag_down_right_pred.exit ], [ 0, %intra4x4_hor_pred.exit ], [ 0, %intra4x4_vert_pred.exit ], [ 0, %intra4x4_dc_pred.exit ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare void @getNonAffNeighbour(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
