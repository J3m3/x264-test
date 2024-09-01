; ModuleID = 'ldecod_src/intra4x4_pred_mbaff.c'
source_filename = "ldecod_src/intra4x4_pred_mbaff.c"
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
define dso_local range(i32 0, 2) i32 @intra4x4_pred_mbaff(ptr noundef %currMB, i32 noundef %pl, i32 noundef %ioff, i32 noundef %joff, i32 noundef %img_block_x, i32 noundef %img_block_y) local_unnamed_addr #0 {
entry:
  %pix_a.i556 = alloca [4 x %struct.pix_pos], align 16
  %pix_b.i557 = alloca %struct.pix_pos, align 4
  %pix_d.i558 = alloca %struct.pix_pos, align 4
  %pix_a.i463 = alloca [4 x %struct.pix_pos], align 16
  %pix_b.i368 = alloca %struct.pix_pos, align 4
  %pix_c.i369 = alloca %struct.pix_pos, align 4
  %pix_a.i212 = alloca [4 x %struct.pix_pos], align 16
  %pix_b.i213 = alloca %struct.pix_pos, align 4
  %pix_d.i214 = alloca %struct.pix_pos, align 4
  %pix_b.i170 = alloca %struct.pix_pos, align 4
  %pix_c.i = alloca %struct.pix_pos, align 4
  %pix_a.i119 = alloca [4 x %struct.pix_pos], align 16
  %pix_b.i120 = alloca %struct.pix_pos, align 4
  %pix_d.i = alloca %struct.pix_pos, align 4
  %pix_a.i74 = alloca [4 x %struct.pix_pos], align 16
  %pix_b.i59 = alloca %struct.pix_pos, align 4
  %pix_a.i = alloca [4 x %struct.pix_pos], align 16
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
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %pix_a.i) #5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pix_b.i) #5
  %mb_pred4.i = getelementptr inbounds i8, ptr %4, i64 1248
  %7 = load ptr, ptr %mb_pred4.i, align 8
  %idxprom5.i = zext i32 %pl to i64
  %arrayidx6.i = getelementptr inbounds ptr, ptr %7, i64 %idxprom5.i
  %8 = load ptr, ptr %arrayidx6.i, align 8
  %getNeighbour.i = getelementptr inbounds i8, ptr %0, i64 856744
  %sub7.i = add nsw i32 %ioff, -1
  %mb_size.i = getelementptr inbounds i8, ptr %0, i64 849124
  %9 = sext i32 %joff to i64
  %10 = load ptr, ptr %getNeighbour.i, align 8
  call void %10(ptr noundef nonnull %currMB, i32 noundef %sub7.i, i32 noundef %joff, ptr noundef nonnull %mb_size.i, ptr noundef nonnull %pix_a.i) #5
  %11 = load ptr, ptr %getNeighbour.i, align 8
  %12 = add nsw i64 %9, 1
  %arrayidx10.1.i = getelementptr inbounds i8, ptr %pix_a.i, i64 16
  %13 = trunc nsw i64 %12 to i32
  call void %11(ptr noundef nonnull %currMB, i32 noundef %sub7.i, i32 noundef %13, ptr noundef nonnull %mb_size.i, ptr noundef nonnull %arrayidx10.1.i) #5
  %14 = load ptr, ptr %getNeighbour.i, align 8
  %15 = add nsw i64 %9, 2
  %arrayidx10.2.i = getelementptr inbounds i8, ptr %pix_a.i, i64 32
  %16 = trunc nsw i64 %15 to i32
  call void %14(ptr noundef nonnull %currMB, i32 noundef %sub7.i, i32 noundef %16, ptr noundef nonnull %mb_size.i, ptr noundef nonnull %arrayidx10.2.i) #5
  %17 = load ptr, ptr %getNeighbour.i, align 8
  %18 = add nsw i64 %9, 3
  %arrayidx10.3.i = getelementptr inbounds i8, ptr %pix_a.i, i64 48
  %19 = trunc nsw i64 %18 to i32
  call void %17(ptr noundef nonnull %currMB, i32 noundef %sub7.i, i32 noundef %19, ptr noundef nonnull %mb_size.i, ptr noundef nonnull %arrayidx10.3.i) #5
  %20 = load ptr, ptr %getNeighbour.i, align 8
  %sub12.i = add nsw i32 %joff, -1
  call void %20(ptr noundef nonnull %currMB, i32 noundef %ioff, i32 noundef %sub12.i, ptr noundef nonnull %mb_size.i, ptr noundef nonnull %pix_b.i) #5
  %active_pps.i = getelementptr inbounds i8, ptr %0, i64 8
  %21 = load ptr, ptr %active_pps.i, align 8
  %constrained_intra_pred_flag.i = getelementptr inbounds i8, ptr %21, i64 2204
  %22 = load i32, ptr %constrained_intra_pred_flag.i, align 4
  %tobool16.not.i = icmp eq i32 %22, 0
  br i1 %tobool16.not.i, label %if.else.i, label %for.cond17.preheader.i

for.cond17.preheader.i:                           ; preds = %cond.end.i
  %intra_block.i = getelementptr inbounds i8, ptr %4, i64 13544
  %23 = load i32, ptr %pix_a.i, align 16
  %tobool22.not.i = icmp eq i32 %23, 0
  br i1 %tobool22.not.i, label %cond.end29.i, label %cond.true23.i

cond.true23.i:                                    ; preds = %for.cond17.preheader.i
  %24 = load ptr, ptr %intra_block.i, align 8
  %mb_addr.i = getelementptr inbounds i8, ptr %pix_a.i, i64 4
  %25 = load i32, ptr %mb_addr.i, align 4
  %idxprom26.i = sext i32 %25 to i64
  %arrayidx27.i = getelementptr inbounds i8, ptr %24, i64 %idxprom26.i
  %26 = load i8, ptr %arrayidx27.i, align 1
  %27 = and i8 %26, 1
  %28 = zext nneg i8 %27 to i32
  br label %cond.end29.i

cond.end29.i:                                     ; preds = %cond.true23.i, %for.cond17.preheader.i
  %cond30.i = phi i32 [ %28, %cond.true23.i ], [ 0, %for.cond17.preheader.i ]
  %29 = load i32, ptr %arrayidx10.1.i, align 16
  %tobool22.not.1.i = icmp eq i32 %29, 0
  br i1 %tobool22.not.1.i, label %cond.end29.1.i, label %cond.true23.1.i

cond.true23.1.i:                                  ; preds = %cond.end29.i
  %30 = load ptr, ptr %intra_block.i, align 8
  %mb_addr.1.i = getelementptr inbounds i8, ptr %pix_a.i, i64 20
  %31 = load i32, ptr %mb_addr.1.i, align 4
  %idxprom26.1.i = sext i32 %31 to i64
  %arrayidx27.1.i = getelementptr inbounds i8, ptr %30, i64 %idxprom26.1.i
  %32 = load i8, ptr %arrayidx27.1.i, align 1
  %conv.1281.i = zext i8 %32 to i32
  br label %cond.end29.1.i

cond.end29.1.i:                                   ; preds = %cond.true23.1.i, %cond.end29.i
  %cond30.1.i = phi i32 [ %conv.1281.i, %cond.true23.1.i ], [ 0, %cond.end29.i ]
  %and.1.i = and i32 %cond30.1.i, %cond30.i
  %33 = load i32, ptr %arrayidx10.2.i, align 16
  %tobool22.not.2.i = icmp eq i32 %33, 0
  br i1 %tobool22.not.2.i, label %cond.end29.2.i, label %cond.true23.2.i

cond.true23.2.i:                                  ; preds = %cond.end29.1.i
  %34 = load ptr, ptr %intra_block.i, align 8
  %mb_addr.2.i = getelementptr inbounds i8, ptr %pix_a.i, i64 36
  %35 = load i32, ptr %mb_addr.2.i, align 4
  %idxprom26.2.i = sext i32 %35 to i64
  %arrayidx27.2.i = getelementptr inbounds i8, ptr %34, i64 %idxprom26.2.i
  %36 = load i8, ptr %arrayidx27.2.i, align 1
  %conv.2282.i = zext i8 %36 to i32
  br label %cond.end29.2.i

cond.end29.2.i:                                   ; preds = %cond.true23.2.i, %cond.end29.1.i
  %cond30.2.i = phi i32 [ %conv.2282.i, %cond.true23.2.i ], [ 0, %cond.end29.1.i ]
  %and.2.i = and i32 %and.1.i, %cond30.2.i
  %37 = load i32, ptr %arrayidx10.3.i, align 16
  %tobool22.not.3.i = icmp eq i32 %37, 0
  br i1 %tobool22.not.3.i, label %cond.end29.3.i, label %cond.true23.3.i

cond.true23.3.i:                                  ; preds = %cond.end29.2.i
  %38 = load ptr, ptr %intra_block.i, align 8
  %mb_addr.3.i = getelementptr inbounds i8, ptr %pix_a.i, i64 52
  %39 = load i32, ptr %mb_addr.3.i, align 4
  %idxprom26.3.i = sext i32 %39 to i64
  %arrayidx27.3.i = getelementptr inbounds i8, ptr %38, i64 %idxprom26.3.i
  %40 = load i8, ptr %arrayidx27.3.i, align 1
  %conv.3283.i = zext i8 %40 to i32
  br label %cond.end29.3.i

cond.end29.3.i:                                   ; preds = %cond.true23.3.i, %cond.end29.2.i
  %cond30.3.i = phi i32 [ %conv.3283.i, %cond.true23.3.i ], [ 0, %cond.end29.2.i ]
  %and.3.i = and i32 %and.2.i, %cond30.3.i
  %41 = load i32, ptr %pix_b.i, align 4
  %tobool35.not.i = icmp eq i32 %41, 0
  br i1 %tobool35.not.i, label %if.end88.i, label %cond.true36.i

cond.true36.i:                                    ; preds = %cond.end29.3.i
  %42 = load ptr, ptr %intra_block.i, align 8
  %mb_addr38.i = getelementptr inbounds i8, ptr %pix_b.i, i64 4
  %43 = load i32, ptr %mb_addr38.i, align 4
  %idxprom39.i = sext i32 %43 to i64
  %arrayidx40.i = getelementptr inbounds i8, ptr %42, i64 %idxprom39.i
  %44 = load i8, ptr %arrayidx40.i, align 1
  %conv41.i = sext i8 %44 to i32
  br label %if.end.i

if.else.i:                                        ; preds = %cond.end.i
  %45 = load i32, ptr %pix_a.i, align 16
  %46 = load i32, ptr %pix_b.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %cond.true36.i
  %block_available_up.0.i = phi i32 [ %46, %if.else.i ], [ %conv41.i, %cond.true36.i ]
  %block_available_left.1.i = phi i32 [ %45, %if.else.i ], [ %and.3.i, %cond.true36.i ]
  %tobool48.not.i = icmp eq i32 %block_available_up.0.i, 0
  br i1 %tobool48.not.i, label %if.end88.i, label %if.end88.thread.i

if.end88.i:                                       ; preds = %if.end.i, %cond.end29.3.i
  %block_available_left.1259.i = phi i32 [ %block_available_left.1.i, %if.end.i ], [ %and.3.i, %cond.end29.3.i ]
  %tobool89.not.i = icmp eq i32 %block_available_left.1259.i, 0
  br i1 %tobool89.not.i, label %if.else150.i, label %if.end131.i

if.end88.thread.i:                                ; preds = %if.end.i
  %pos_y.i = getelementptr inbounds i8, ptr %pix_b.i, i64 14
  %47 = load i16, ptr %pos_y.i, align 2
  %idxprom50.i = sext i16 %47 to i64
  %arrayidx51.i = getelementptr inbounds ptr, ptr %cond.i, i64 %idxprom50.i
  %48 = load ptr, ptr %arrayidx51.i, align 8
  %pos_x.i = getelementptr inbounds i8, ptr %pix_b.i, i64 12
  %49 = load i16, ptr %pos_x.i, align 4
  %conv52.i = sext i16 %49 to i64
  %arrayidx55.i = getelementptr inbounds i16, ptr %48, i64 %conv52.i
  %50 = load <4 x i16>, ptr %arrayidx55.i, align 2
  %51 = zext <4 x i16> %50 to <4 x i32>
  %52 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %51)
  %tobool89.not288.i = icmp eq i32 %block_available_left.1.i, 0
  br i1 %tobool89.not288.i, label %if.then147.i, label %if.end131.i

if.end131.i:                                      ; preds = %if.end88.thread.i, %if.end88.i
  %s0.0292.i = phi i32 [ %52, %if.end88.thread.i ], [ 0, %if.end88.i ]
  %tobool137265291.i = phi i1 [ false, %if.end88.thread.i ], [ true, %if.end88.i ]
  %tobool48260289.i = phi i1 [ true, %if.end88.thread.i ], [ false, %if.end88.i ]
  %pos_y92.i = getelementptr inbounds i8, ptr %pix_a.i, i64 14
  %53 = load i16, ptr %pos_y92.i, align 2
  %idxprom93.i = sext i16 %53 to i64
  %arrayidx94.i = getelementptr inbounds ptr, ptr %cond.i, i64 %idxprom93.i
  %54 = load ptr, ptr %arrayidx94.i, align 8
  %pos_x96.i = getelementptr inbounds i8, ptr %pix_a.i, i64 12
  %55 = load i16, ptr %pos_x96.i, align 4
  %idxprom97.i = sext i16 %55 to i64
  %arrayidx98.i = getelementptr inbounds i16, ptr %54, i64 %idxprom97.i
  %56 = load i16, ptr %arrayidx98.i, align 2
  %conv99.i = zext i16 %56 to i32
  %add100.i = add nuw nsw i32 %s0.0292.i, %conv99.i
  %pos_y102.i = getelementptr inbounds i8, ptr %pix_a.i, i64 30
  %57 = load i16, ptr %pos_y102.i, align 2
  %idxprom103.i = sext i16 %57 to i64
  %arrayidx104.i = getelementptr inbounds ptr, ptr %cond.i, i64 %idxprom103.i
  %58 = load ptr, ptr %arrayidx104.i, align 8
  %pos_x106.i = getelementptr inbounds i8, ptr %pix_a.i, i64 28
  %59 = load i16, ptr %pos_x106.i, align 4
  %idxprom107.i = sext i16 %59 to i64
  %arrayidx108.i = getelementptr inbounds i16, ptr %58, i64 %idxprom107.i
  %60 = load i16, ptr %arrayidx108.i, align 2
  %conv109.i = zext i16 %60 to i32
  %add110.i = add nuw nsw i32 %add100.i, %conv109.i
  %pos_y112.i = getelementptr inbounds i8, ptr %pix_a.i, i64 46
  %61 = load i16, ptr %pos_y112.i, align 2
  %idxprom113.i = sext i16 %61 to i64
  %arrayidx114.i = getelementptr inbounds ptr, ptr %cond.i, i64 %idxprom113.i
  %62 = load ptr, ptr %arrayidx114.i, align 8
  %pos_x116.i = getelementptr inbounds i8, ptr %pix_a.i, i64 44
  %63 = load i16, ptr %pos_x116.i, align 4
  %idxprom117.i = sext i16 %63 to i64
  %arrayidx118.i = getelementptr inbounds i16, ptr %62, i64 %idxprom117.i
  %64 = load i16, ptr %arrayidx118.i, align 2
  %conv119.i = zext i16 %64 to i32
  %add120.i = add nuw nsw i32 %add110.i, %conv119.i
  %pos_y122.i = getelementptr inbounds i8, ptr %pix_a.i, i64 62
  %65 = load i16, ptr %pos_y122.i, align 2
  %idxprom123.i = sext i16 %65 to i64
  %arrayidx124.i = getelementptr inbounds ptr, ptr %cond.i, i64 %idxprom123.i
  %66 = load ptr, ptr %arrayidx124.i, align 8
  %pos_x126.i = getelementptr inbounds i8, ptr %pix_a.i, i64 60
  %67 = load i16, ptr %pos_x126.i, align 4
  %idxprom127.i = sext i16 %67 to i64
  %arrayidx128.i = getelementptr inbounds i16, ptr %66, i64 %idxprom127.i
  %68 = load i16, ptr %arrayidx128.i, align 2
  %conv129.i = zext i16 %68 to i32
  %add130.i = add nuw nsw i32 %add120.i, %conv129.i
  br i1 %tobool48260289.i, label %if.then134.i, label %if.else136.i

if.then134.i:                                     ; preds = %if.end131.i
  %add135.i = add nuw nsw i32 %add130.i, 4
  %shr.i = lshr i32 %add135.i, 3
  br label %intra4x4_dc_pred_mbaff.exit

if.else136.i:                                     ; preds = %if.end131.i
  br i1 %tobool137265291.i, label %if.then140.i, label %if.else150.i

if.then140.i:                                     ; preds = %if.else136.i
  %add141.i = add nuw nsw i32 %add130.i, 2
  %shr142.i = lshr i32 %add141.i, 2
  br label %intra4x4_dc_pred_mbaff.exit

if.then147.i:                                     ; preds = %if.end88.thread.i
  %add148.i = add nuw nsw i32 %52, 2
  %shr149.i = lshr i32 %add148.i, 2
  br label %intra4x4_dc_pred_mbaff.exit

if.else150.i:                                     ; preds = %if.else136.i, %if.end88.i
  %dc_pred_value_comp.i = getelementptr inbounds i8, ptr %0, i64 849060
  %arrayidx152.i = getelementptr inbounds [3 x i32], ptr %dc_pred_value_comp.i, i64 0, i64 %idxprom5.i
  %69 = load i32, ptr %arrayidx152.i, align 4
  br label %intra4x4_dc_pred_mbaff.exit

intra4x4_dc_pred_mbaff.exit:                      ; preds = %if.then134.i, %if.then140.i, %if.then147.i, %if.else150.i
  %s0.2.i = phi i32 [ %shr.i, %if.then134.i ], [ %shr142.i, %if.then140.i ], [ %69, %if.else150.i ], [ %shr149.i, %if.then147.i ]
  %conv161.i = trunc i32 %s0.2.i to i16
  %idxprom164.i = sext i32 %ioff to i64
  %arrayidx163.i = getelementptr inbounds ptr, ptr %8, i64 %9
  %70 = load ptr, ptr %arrayidx163.i, align 8
  %arrayidx165.i = getelementptr inbounds i16, ptr %70, i64 %idxprom164.i
  store i16 %conv161.i, ptr %arrayidx165.i, align 2
  %71 = load ptr, ptr %arrayidx163.i, align 8
  %72 = getelementptr i16, ptr %71, i64 %idxprom164.i
  %arrayidx171.i = getelementptr i8, ptr %72, i64 2
  store i16 %conv161.i, ptr %arrayidx171.i, align 2
  %73 = load ptr, ptr %arrayidx163.i, align 8
  %74 = getelementptr i16, ptr %73, i64 %idxprom164.i
  %arrayidx177.i = getelementptr i8, ptr %74, i64 4
  store i16 %conv161.i, ptr %arrayidx177.i, align 2
  %75 = load ptr, ptr %arrayidx163.i, align 8
  %76 = getelementptr i16, ptr %75, i64 %idxprom164.i
  %arrayidx183.i = getelementptr i8, ptr %76, i64 6
  store i16 %conv161.i, ptr %arrayidx183.i, align 2
  %arrayidx163.1.i = getelementptr inbounds ptr, ptr %8, i64 %12
  %77 = load ptr, ptr %arrayidx163.1.i, align 8
  %arrayidx165.1.i = getelementptr inbounds i16, ptr %77, i64 %idxprom164.i
  store i16 %conv161.i, ptr %arrayidx165.1.i, align 2
  %78 = load ptr, ptr %arrayidx163.1.i, align 8
  %79 = getelementptr i16, ptr %78, i64 %idxprom164.i
  %arrayidx171.1.i = getelementptr i8, ptr %79, i64 2
  store i16 %conv161.i, ptr %arrayidx171.1.i, align 2
  %80 = load ptr, ptr %arrayidx163.1.i, align 8
  %81 = getelementptr i16, ptr %80, i64 %idxprom164.i
  %arrayidx177.1.i = getelementptr i8, ptr %81, i64 4
  store i16 %conv161.i, ptr %arrayidx177.1.i, align 2
  %82 = load ptr, ptr %arrayidx163.1.i, align 8
  %83 = getelementptr i16, ptr %82, i64 %idxprom164.i
  %arrayidx183.1.i = getelementptr i8, ptr %83, i64 6
  store i16 %conv161.i, ptr %arrayidx183.1.i, align 2
  %arrayidx163.2.i = getelementptr inbounds ptr, ptr %8, i64 %15
  %84 = load ptr, ptr %arrayidx163.2.i, align 8
  %arrayidx165.2.i = getelementptr inbounds i16, ptr %84, i64 %idxprom164.i
  store i16 %conv161.i, ptr %arrayidx165.2.i, align 2
  %85 = load ptr, ptr %arrayidx163.2.i, align 8
  %86 = getelementptr i16, ptr %85, i64 %idxprom164.i
  %arrayidx171.2.i = getelementptr i8, ptr %86, i64 2
  store i16 %conv161.i, ptr %arrayidx171.2.i, align 2
  %87 = load ptr, ptr %arrayidx163.2.i, align 8
  %88 = getelementptr i16, ptr %87, i64 %idxprom164.i
  %arrayidx177.2.i = getelementptr i8, ptr %88, i64 4
  store i16 %conv161.i, ptr %arrayidx177.2.i, align 2
  %89 = load ptr, ptr %arrayidx163.2.i, align 8
  %90 = getelementptr i16, ptr %89, i64 %idxprom164.i
  %arrayidx183.2.i = getelementptr i8, ptr %90, i64 6
  store i16 %conv161.i, ptr %arrayidx183.2.i, align 2
  %arrayidx163.3.i = getelementptr inbounds ptr, ptr %8, i64 %18
  %91 = load ptr, ptr %arrayidx163.3.i, align 8
  %arrayidx165.3.i = getelementptr inbounds i16, ptr %91, i64 %idxprom164.i
  store i16 %conv161.i, ptr %arrayidx165.3.i, align 2
  %92 = load ptr, ptr %arrayidx163.3.i, align 8
  %93 = getelementptr i16, ptr %92, i64 %idxprom164.i
  %arrayidx171.3.i = getelementptr i8, ptr %93, i64 2
  store i16 %conv161.i, ptr %arrayidx171.3.i, align 2
  %94 = load ptr, ptr %arrayidx163.3.i, align 8
  %95 = getelementptr i16, ptr %94, i64 %idxprom164.i
  %arrayidx177.3.i = getelementptr i8, ptr %95, i64 4
  store i16 %conv161.i, ptr %arrayidx177.3.i, align 2
  %96 = load ptr, ptr %arrayidx163.3.i, align 8
  %97 = getelementptr i16, ptr %96, i64 %idxprom164.i
  %arrayidx183.3.i = getelementptr i8, ptr %97, i64 6
  store i16 %conv161.i, ptr %arrayidx183.3.i, align 2
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pix_b.i) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %pix_a.i) #5
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  %98 = load ptr, ptr %currMB, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pix_b.i59) #5
  %sub.i61 = add nsw i32 %joff, -1
  %mb_size.i62 = getelementptr inbounds i8, ptr %0, i64 849124
  call void @getAffNeighbour(ptr noundef nonnull %currMB, i32 noundef %ioff, i32 noundef %sub.i61, ptr noundef nonnull %mb_size.i62, ptr noundef nonnull %pix_b.i59) #5
  %active_pps.i63 = getelementptr inbounds i8, ptr %0, i64 8
  %99 = load ptr, ptr %active_pps.i63, align 8
  %constrained_intra_pred_flag.i64 = getelementptr inbounds i8, ptr %99, i64 2204
  %100 = load i32, ptr %constrained_intra_pred_flag.i64, align 4
  %tobool.not.i65 = icmp eq i32 %100, 0
  %101 = load i32, ptr %pix_b.i59, align 4
  br i1 %tobool.not.i65, label %if.end.i70, label %if.then.i

if.then.i:                                        ; preds = %sw.bb4
  %tobool2.not.i = icmp eq i32 %101, 0
  br i1 %tobool2.not.i, label %if.then6.i, label %cond.true.i66

cond.true.i66:                                    ; preds = %if.then.i
  %intra_block.i67 = getelementptr inbounds i8, ptr %98, i64 13544
  %102 = load ptr, ptr %intra_block.i67, align 8
  %mb_addr.i68 = getelementptr inbounds i8, ptr %pix_b.i59, i64 4
  %103 = load i32, ptr %mb_addr.i68, align 4
  %idxprom.i69 = sext i32 %103 to i64
  %arrayidx3.i = getelementptr inbounds i8, ptr %102, i64 %idxprom.i69
  %104 = load i8, ptr %arrayidx3.i, align 1
  %conv.i = sext i8 %104 to i32
  br label %if.end.i70

if.end.i70:                                       ; preds = %cond.true.i66, %sw.bb4
  %block_available_up.0.i71 = phi i32 [ %conv.i, %cond.true.i66 ], [ %101, %sw.bb4 ]
  %tobool5.not.i = icmp eq i32 %block_available_up.0.i71, 0
  br i1 %tobool5.not.i, label %if.then6.i, label %if.else7.i

if.then6.i:                                       ; preds = %if.end.i70, %if.then.i
  %current_mb_nr.i = getelementptr inbounds i8, ptr %98, i64 108
  %105 = load i32, ptr %current_mb_nr.i, align 4
  %call.i = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %105)
  br label %intra4x4_vert_pred_mbaff.exit

if.else7.i:                                       ; preds = %if.end.i70
  %mb_pred8.i = getelementptr inbounds i8, ptr %98, i64 1248
  %106 = load ptr, ptr %mb_pred8.i, align 8
  %idxprom9.i = zext i32 %pl to i64
  %arrayidx10.i = getelementptr inbounds ptr, ptr %106, i64 %idxprom9.i
  %107 = load ptr, ptr %arrayidx10.i, align 8
  %tobool11.not.i = icmp eq i32 %pl, 0
  %dec_picture21.i = getelementptr inbounds i8, ptr %98, i64 13520
  %108 = load ptr, ptr %dec_picture21.i, align 8
  br i1 %tobool11.not.i, label %cond.false20.i, label %cond.true12.i

cond.true12.i:                                    ; preds = %if.else7.i
  %imgUV.i72 = getelementptr inbounds i8, ptr %108, i64 136
  %109 = load ptr, ptr %imgUV.i72, align 8
  %sub13.i = add i32 %pl, -1
  %idxprom14.i = zext i32 %sub13.i to i64
  %arrayidx15.i = getelementptr inbounds ptr, ptr %109, i64 %idxprom14.i
  br label %cond.end29.i73

cond.false20.i:                                   ; preds = %if.else7.i
  %imgY22.i = getelementptr inbounds i8, ptr %108, i64 128
  br label %cond.end29.i73

cond.end29.i73:                                   ; preds = %cond.false20.i, %cond.true12.i
  %imgY22.sink.i = phi ptr [ %imgY22.i, %cond.false20.i ], [ %arrayidx15.i, %cond.true12.i ]
  %110 = load ptr, ptr %imgY22.sink.i, align 8
  %pos_y23.i = getelementptr inbounds i8, ptr %pix_b.i59, i64 14
  %111 = load i16, ptr %pos_y23.i, align 2
  %idxprom24.i = sext i16 %111 to i64
  %arrayidx25.i = getelementptr inbounds ptr, ptr %110, i64 %idxprom24.i
  %112 = load ptr, ptr %arrayidx25.i, align 8
  %pos_x26.i = getelementptr inbounds i8, ptr %pix_b.i59, i64 12
  %113 = load i16, ptr %pos_x26.i, align 4
  %idxprom27.i = sext i16 %113 to i64
  %arrayidx28.i = getelementptr inbounds i16, ptr %112, i64 %idxprom27.i
  %idxprom31.i = sext i32 %joff to i64
  %arrayidx32.i = getelementptr inbounds ptr, ptr %107, i64 %idxprom31.i
  %114 = load ptr, ptr %arrayidx32.i, align 8
  %idxprom33.i = sext i32 %ioff to i64
  %arrayidx34.i = getelementptr inbounds i16, ptr %114, i64 %idxprom33.i
  %115 = load i64, ptr %arrayidx28.i, align 2
  store i64 %115, ptr %arrayidx34.i, align 2
  %arrayidx37.i = getelementptr i8, ptr %arrayidx32.i, i64 8
  %116 = load ptr, ptr %arrayidx37.i, align 8
  %arrayidx39.i = getelementptr inbounds i16, ptr %116, i64 %idxprom33.i
  %117 = load i64, ptr %arrayidx28.i, align 2
  store i64 %117, ptr %arrayidx39.i, align 2
  %arrayidx42.i = getelementptr i8, ptr %arrayidx32.i, i64 16
  %118 = load ptr, ptr %arrayidx42.i, align 8
  %arrayidx44.i = getelementptr inbounds i16, ptr %118, i64 %idxprom33.i
  %119 = load i64, ptr %arrayidx28.i, align 2
  store i64 %119, ptr %arrayidx44.i, align 2
  %arrayidx46.i = getelementptr i8, ptr %arrayidx32.i, i64 24
  %120 = load ptr, ptr %arrayidx46.i, align 8
  %arrayidx48.i = getelementptr inbounds i16, ptr %120, i64 %idxprom33.i
  %121 = load i64, ptr %arrayidx28.i, align 2
  store i64 %121, ptr %arrayidx48.i, align 2
  br label %intra4x4_vert_pred_mbaff.exit

intra4x4_vert_pred_mbaff.exit:                    ; preds = %if.then6.i, %cond.end29.i73
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pix_b.i59) #5
  br label %cleanup

sw.bb6:                                           ; preds = %entry
  %122 = load ptr, ptr %currMB, align 8
  %tobool.not.i76 = icmp eq i32 %pl, 0
  %dec_picture2.i77 = getelementptr inbounds i8, ptr %122, i64 13520
  %123 = load ptr, ptr %dec_picture2.i77, align 8
  br i1 %tobool.not.i76, label %cond.false.i117, label %cond.true.i78

cond.true.i78:                                    ; preds = %sw.bb6
  %imgUV.i79 = getelementptr inbounds i8, ptr %123, i64 136
  %124 = load ptr, ptr %imgUV.i79, align 8
  %sub.i80 = add i32 %pl, -1
  %idxprom.i81 = zext i32 %sub.i80 to i64
  %arrayidx.i82 = getelementptr inbounds ptr, ptr %124, i64 %idxprom.i81
  br label %cond.end.i83

cond.false.i117:                                  ; preds = %sw.bb6
  %imgY3.i118 = getelementptr inbounds i8, ptr %123, i64 128
  br label %cond.end.i83

cond.end.i83:                                     ; preds = %cond.false.i117, %cond.true.i78
  %cond.in.i84 = phi ptr [ %arrayidx.i82, %cond.true.i78 ], [ %imgY3.i118, %cond.false.i117 ]
  %cond.i85 = load ptr, ptr %cond.in.i84, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %pix_a.i74) #5
  %mb_pred4.i86 = getelementptr inbounds i8, ptr %122, i64 1248
  %125 = load ptr, ptr %mb_pred4.i86, align 8
  %idxprom5.i87 = zext i32 %pl to i64
  %arrayidx6.i88 = getelementptr inbounds ptr, ptr %125, i64 %idxprom5.i87
  %126 = load ptr, ptr %arrayidx6.i88, align 8
  %getNeighbour.i89 = getelementptr inbounds i8, ptr %0, i64 856744
  %sub7.i90 = add nsw i32 %ioff, -1
  %mb_size.i91 = getelementptr inbounds i8, ptr %0, i64 849124
  %127 = sext i32 %joff to i64
  %128 = load ptr, ptr %getNeighbour.i89, align 8
  call void %128(ptr noundef nonnull %currMB, i32 noundef %sub7.i90, i32 noundef %joff, ptr noundef nonnull %mb_size.i91, ptr noundef nonnull %pix_a.i74) #5
  %129 = load ptr, ptr %getNeighbour.i89, align 8
  %130 = add nsw i64 %127, 1
  %arrayidx10.1.i92 = getelementptr inbounds i8, ptr %pix_a.i74, i64 16
  %131 = trunc nsw i64 %130 to i32
  call void %129(ptr noundef nonnull %currMB, i32 noundef %sub7.i90, i32 noundef %131, ptr noundef nonnull %mb_size.i91, ptr noundef nonnull %arrayidx10.1.i92) #5
  %132 = load ptr, ptr %getNeighbour.i89, align 8
  %133 = add nsw i64 %127, 2
  %arrayidx10.2.i93 = getelementptr inbounds i8, ptr %pix_a.i74, i64 32
  %134 = trunc nsw i64 %133 to i32
  call void %132(ptr noundef nonnull %currMB, i32 noundef %sub7.i90, i32 noundef %134, ptr noundef nonnull %mb_size.i91, ptr noundef nonnull %arrayidx10.2.i93) #5
  %135 = load ptr, ptr %getNeighbour.i89, align 8
  %136 = add nsw i64 %127, 3
  %arrayidx10.3.i94 = getelementptr inbounds i8, ptr %pix_a.i74, i64 48
  %137 = trunc nsw i64 %136 to i32
  call void %135(ptr noundef nonnull %currMB, i32 noundef %sub7.i90, i32 noundef %137, ptr noundef nonnull %mb_size.i91, ptr noundef nonnull %arrayidx10.3.i94) #5
  %active_pps.i95 = getelementptr inbounds i8, ptr %0, i64 8
  %138 = load ptr, ptr %active_pps.i95, align 8
  %constrained_intra_pred_flag.i96 = getelementptr inbounds i8, ptr %138, i64 2204
  %139 = load i32, ptr %constrained_intra_pred_flag.i96, align 4
  %tobool11.not.i97 = icmp eq i32 %139, 0
  br i1 %tobool11.not.i97, label %if.else.i116, label %for.cond12.preheader.i

for.cond12.preheader.i:                           ; preds = %cond.end.i83
  %intra_block.i98 = getelementptr inbounds i8, ptr %122, i64 13544
  %140 = load i32, ptr %pix_a.i74, align 16
  %tobool17.not.i = icmp eq i32 %140, 0
  br i1 %tobool17.not.i, label %cond.end24.i, label %cond.true18.i

cond.true18.i:                                    ; preds = %for.cond12.preheader.i
  %141 = load ptr, ptr %intra_block.i98, align 8
  %mb_addr.i99 = getelementptr inbounds i8, ptr %pix_a.i74, i64 4
  %142 = load i32, ptr %mb_addr.i99, align 4
  %idxprom21.i = sext i32 %142 to i64
  %arrayidx22.i = getelementptr inbounds i8, ptr %141, i64 %idxprom21.i
  %143 = load i8, ptr %arrayidx22.i, align 1
  %144 = and i8 %143, 1
  %145 = zext nneg i8 %144 to i32
  br label %cond.end24.i

cond.end24.i:                                     ; preds = %cond.true18.i, %for.cond12.preheader.i
  %cond25.i = phi i32 [ %145, %cond.true18.i ], [ 0, %for.cond12.preheader.i ]
  %146 = load i32, ptr %arrayidx10.1.i92, align 16
  %tobool17.not.1.i = icmp eq i32 %146, 0
  br i1 %tobool17.not.1.i, label %cond.end24.1.i, label %cond.true18.1.i

cond.true18.1.i:                                  ; preds = %cond.end24.i
  %147 = load ptr, ptr %intra_block.i98, align 8
  %mb_addr.1.i100 = getelementptr inbounds i8, ptr %pix_a.i74, i64 20
  %148 = load i32, ptr %mb_addr.1.i100, align 4
  %idxprom21.1.i = sext i32 %148 to i64
  %arrayidx22.1.i = getelementptr inbounds i8, ptr %147, i64 %idxprom21.1.i
  %149 = load i8, ptr %arrayidx22.1.i, align 1
  %conv.1109.i = zext i8 %149 to i32
  br label %cond.end24.1.i

cond.end24.1.i:                                   ; preds = %cond.true18.1.i, %cond.end24.i
  %cond25.1.i = phi i32 [ %conv.1109.i, %cond.true18.1.i ], [ 0, %cond.end24.i ]
  %and.1.i101 = and i32 %cond25.1.i, %cond25.i
  %150 = load i32, ptr %arrayidx10.2.i93, align 16
  %tobool17.not.2.i = icmp eq i32 %150, 0
  br i1 %tobool17.not.2.i, label %cond.end24.2.i, label %cond.true18.2.i

cond.true18.2.i:                                  ; preds = %cond.end24.1.i
  %151 = load ptr, ptr %intra_block.i98, align 8
  %mb_addr.2.i102 = getelementptr inbounds i8, ptr %pix_a.i74, i64 36
  %152 = load i32, ptr %mb_addr.2.i102, align 4
  %idxprom21.2.i = sext i32 %152 to i64
  %arrayidx22.2.i = getelementptr inbounds i8, ptr %151, i64 %idxprom21.2.i
  %153 = load i8, ptr %arrayidx22.2.i, align 1
  %conv.2110.i = zext i8 %153 to i32
  br label %cond.end24.2.i

cond.end24.2.i:                                   ; preds = %cond.true18.2.i, %cond.end24.1.i
  %cond25.2.i = phi i32 [ %conv.2110.i, %cond.true18.2.i ], [ 0, %cond.end24.1.i ]
  %and.2.i103 = and i32 %and.1.i101, %cond25.2.i
  %154 = load i32, ptr %arrayidx10.3.i94, align 16
  %tobool17.not.3.i = icmp eq i32 %154, 0
  br i1 %tobool17.not.3.i, label %cond.end24.3.i, label %cond.true18.3.i

cond.true18.3.i:                                  ; preds = %cond.end24.2.i
  %155 = load ptr, ptr %intra_block.i98, align 8
  %mb_addr.3.i104 = getelementptr inbounds i8, ptr %pix_a.i74, i64 52
  %156 = load i32, ptr %mb_addr.3.i104, align 4
  %idxprom21.3.i = sext i32 %156 to i64
  %arrayidx22.3.i = getelementptr inbounds i8, ptr %155, i64 %idxprom21.3.i
  %157 = load i8, ptr %arrayidx22.3.i, align 1
  %conv.3111.i = zext i8 %157 to i32
  br label %cond.end24.3.i

cond.end24.3.i:                                   ; preds = %cond.true18.3.i, %cond.end24.2.i
  %cond25.3.i = phi i32 [ %conv.3111.i, %cond.true18.3.i ], [ 0, %cond.end24.2.i ]
  %and.3.i105 = and i32 %and.2.i103, %cond25.3.i
  br label %if.end.i106

if.else.i116:                                     ; preds = %cond.end.i83
  %158 = load i32, ptr %pix_a.i74, align 16
  br label %if.end.i106

if.end.i106:                                      ; preds = %if.else.i116, %cond.end24.3.i
  %block_available_left.1.i107 = phi i32 [ %158, %if.else.i116 ], [ %and.3.i105, %cond.end24.3.i ]
  %tobool31.not.i = icmp eq i32 %block_available_left.1.i107, 0
  br i1 %tobool31.not.i, label %if.then32.i, label %intra4x4_hor_pred_mbaff.exit

if.then32.i:                                      ; preds = %if.end.i106
  %current_mb_nr.i114 = getelementptr inbounds i8, ptr %122, i64 108
  %159 = load i32, ptr %current_mb_nr.i114, align 4
  %call.i115 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %159)
  br label %intra4x4_hor_pred_mbaff.exit

intra4x4_hor_pred_mbaff.exit:                     ; preds = %if.end.i106, %if.then32.i
  %160 = sext i32 %ioff to i64
  %arrayidx40.i108 = getelementptr inbounds ptr, ptr %126, i64 %127
  %161 = load ptr, ptr %arrayidx40.i108, align 8
  %pos_y.i109 = getelementptr inbounds i8, ptr %pix_a.i74, i64 14
  %162 = load i16, ptr %pos_y.i109, align 2
  %idxprom43.i = sext i16 %162 to i64
  %arrayidx44.i110 = getelementptr inbounds ptr, ptr %cond.i85, i64 %idxprom43.i
  %163 = load ptr, ptr %arrayidx44.i110, align 8
  %pos_x.i111 = getelementptr inbounds i8, ptr %pix_a.i74, i64 12
  %164 = load i16, ptr %pos_x.i111, align 4
  %idxprom47.i = sext i16 %164 to i64
  %arrayidx48.i112 = getelementptr inbounds i16, ptr %163, i64 %idxprom47.i
  %165 = load i16, ptr %arrayidx48.i112, align 2
  %arrayidx55.i113 = getelementptr inbounds i16, ptr %161, i64 %160
  %166 = insertelement <4 x i16> poison, i16 %165, i64 0
  %167 = shufflevector <4 x i16> %166, <4 x i16> poison, <4 x i32> zeroinitializer
  store <4 x i16> %167, ptr %arrayidx55.i113, align 2
  %arrayidx40.1.i = getelementptr inbounds ptr, ptr %126, i64 %130
  %168 = load ptr, ptr %arrayidx40.1.i, align 8
  %pos_y.1.i = getelementptr inbounds i8, ptr %pix_a.i74, i64 30
  %169 = load i16, ptr %pos_y.1.i, align 2
  %idxprom43.1.i = sext i16 %169 to i64
  %arrayidx44.1.i = getelementptr inbounds ptr, ptr %cond.i85, i64 %idxprom43.1.i
  %170 = load ptr, ptr %arrayidx44.1.i, align 8
  %pos_x.1.i = getelementptr inbounds i8, ptr %pix_a.i74, i64 28
  %171 = load i16, ptr %pos_x.1.i, align 4
  %idxprom47.1.i = sext i16 %171 to i64
  %arrayidx48.1.i = getelementptr inbounds i16, ptr %170, i64 %idxprom47.1.i
  %172 = load i16, ptr %arrayidx48.1.i, align 2
  %arrayidx55.1102.i = getelementptr inbounds i16, ptr %168, i64 %160
  %173 = insertelement <4 x i16> poison, i16 %172, i64 0
  %174 = shufflevector <4 x i16> %173, <4 x i16> poison, <4 x i32> zeroinitializer
  store <4 x i16> %174, ptr %arrayidx55.1102.i, align 2
  %arrayidx40.2.i = getelementptr inbounds ptr, ptr %126, i64 %133
  %175 = load ptr, ptr %arrayidx40.2.i, align 8
  %pos_y.2.i = getelementptr inbounds i8, ptr %pix_a.i74, i64 46
  %176 = load i16, ptr %pos_y.2.i, align 2
  %idxprom43.2.i = sext i16 %176 to i64
  %arrayidx44.2.i = getelementptr inbounds ptr, ptr %cond.i85, i64 %idxprom43.2.i
  %177 = load ptr, ptr %arrayidx44.2.i, align 8
  %pos_x.2.i = getelementptr inbounds i8, ptr %pix_a.i74, i64 44
  %178 = load i16, ptr %pos_x.2.i, align 4
  %idxprom47.2.i = sext i16 %178 to i64
  %arrayidx48.2.i = getelementptr inbounds i16, ptr %177, i64 %idxprom47.2.i
  %179 = load i16, ptr %arrayidx48.2.i, align 2
  %arrayidx55.2105.i = getelementptr inbounds i16, ptr %175, i64 %160
  %180 = insertelement <4 x i16> poison, i16 %179, i64 0
  %181 = shufflevector <4 x i16> %180, <4 x i16> poison, <4 x i32> zeroinitializer
  store <4 x i16> %181, ptr %arrayidx55.2105.i, align 2
  %arrayidx40.3.i = getelementptr inbounds ptr, ptr %126, i64 %136
  %182 = load ptr, ptr %arrayidx40.3.i, align 8
  %pos_y.3.i = getelementptr inbounds i8, ptr %pix_a.i74, i64 62
  %183 = load i16, ptr %pos_y.3.i, align 2
  %idxprom43.3.i = sext i16 %183 to i64
  %arrayidx44.3.i = getelementptr inbounds ptr, ptr %cond.i85, i64 %idxprom43.3.i
  %184 = load ptr, ptr %arrayidx44.3.i, align 8
  %pos_x.3.i = getelementptr inbounds i8, ptr %pix_a.i74, i64 60
  %185 = load i16, ptr %pos_x.3.i, align 4
  %idxprom47.3.i = sext i16 %185 to i64
  %arrayidx48.3.i = getelementptr inbounds i16, ptr %184, i64 %idxprom47.3.i
  %186 = load i16, ptr %arrayidx48.3.i, align 2
  %arrayidx55.3107.i = getelementptr inbounds i16, ptr %182, i64 %160
  %187 = insertelement <4 x i16> poison, i16 %186, i64 0
  %188 = shufflevector <4 x i16> %187, <4 x i16> poison, <4 x i32> zeroinitializer
  store <4 x i16> %188, ptr %arrayidx55.3107.i, align 2
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %pix_a.i74) #5
  br label %cleanup

sw.bb8:                                           ; preds = %entry
  %189 = load ptr, ptr %currMB, align 8
  %tobool.not.i122 = icmp eq i32 %pl, 0
  %dec_picture2.i123 = getelementptr inbounds i8, ptr %189, i64 13520
  %190 = load ptr, ptr %dec_picture2.i123, align 8
  br i1 %tobool.not.i122, label %cond.false.i168, label %cond.true.i124

cond.true.i124:                                   ; preds = %sw.bb8
  %imgUV.i125 = getelementptr inbounds i8, ptr %190, i64 136
  %191 = load ptr, ptr %imgUV.i125, align 8
  %sub.i126 = add i32 %pl, -1
  %idxprom.i127 = zext i32 %sub.i126 to i64
  %arrayidx.i128 = getelementptr inbounds ptr, ptr %191, i64 %idxprom.i127
  br label %cond.end.i129

cond.false.i168:                                  ; preds = %sw.bb8
  %imgY3.i169 = getelementptr inbounds i8, ptr %190, i64 128
  br label %cond.end.i129

cond.end.i129:                                    ; preds = %cond.false.i168, %cond.true.i124
  %cond.in.i130 = phi ptr [ %arrayidx.i128, %cond.true.i124 ], [ %imgY3.i169, %cond.false.i168 ]
  %cond.i131 = load ptr, ptr %cond.in.i130, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %pix_a.i119) #5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pix_b.i120) #5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pix_d.i) #5
  %mb_pred4.i132 = getelementptr inbounds i8, ptr %189, i64 1248
  %192 = load ptr, ptr %mb_pred4.i132, align 8
  %idxprom5.i133 = zext i32 %pl to i64
  %arrayidx6.i134 = getelementptr inbounds ptr, ptr %192, i64 %idxprom5.i133
  %193 = load ptr, ptr %arrayidx6.i134, align 8
  %getNeighbour.i135 = getelementptr inbounds i8, ptr %0, i64 856744
  %sub7.i136 = add nsw i32 %ioff, -1
  %mb_size.i137 = getelementptr inbounds i8, ptr %0, i64 849124
  %194 = sext i32 %joff to i64
  %195 = load ptr, ptr %getNeighbour.i135, align 8
  call void %195(ptr noundef nonnull %currMB, i32 noundef %sub7.i136, i32 noundef %joff, ptr noundef nonnull %mb_size.i137, ptr noundef nonnull %pix_a.i119) #5
  %196 = load ptr, ptr %getNeighbour.i135, align 8
  %197 = add i32 %joff, 1
  %arrayidx10.1.i138 = getelementptr inbounds i8, ptr %pix_a.i119, i64 16
  call void %196(ptr noundef nonnull %currMB, i32 noundef %sub7.i136, i32 noundef %197, ptr noundef nonnull %mb_size.i137, ptr noundef nonnull %arrayidx10.1.i138) #5
  %198 = load ptr, ptr %getNeighbour.i135, align 8
  %199 = add i32 %joff, 2
  %arrayidx10.2.i139 = getelementptr inbounds i8, ptr %pix_a.i119, i64 32
  call void %198(ptr noundef nonnull %currMB, i32 noundef %sub7.i136, i32 noundef %199, ptr noundef nonnull %mb_size.i137, ptr noundef nonnull %arrayidx10.2.i139) #5
  %200 = load ptr, ptr %getNeighbour.i135, align 8
  %201 = add i32 %joff, 3
  %arrayidx10.3.i140 = getelementptr inbounds i8, ptr %pix_a.i119, i64 48
  call void %200(ptr noundef nonnull %currMB, i32 noundef %sub7.i136, i32 noundef %201, ptr noundef nonnull %mb_size.i137, ptr noundef nonnull %arrayidx10.3.i140) #5
  %202 = load ptr, ptr %getNeighbour.i135, align 8
  %sub12.i141 = add nsw i32 %joff, -1
  call void %202(ptr noundef nonnull %currMB, i32 noundef %ioff, i32 noundef %sub12.i141, ptr noundef nonnull %mb_size.i137, ptr noundef nonnull %pix_b.i120) #5
  %203 = load ptr, ptr %getNeighbour.i135, align 8
  call void %203(ptr noundef nonnull %currMB, i32 noundef %sub7.i136, i32 noundef %sub12.i141, ptr noundef nonnull %mb_size.i137, ptr noundef nonnull %pix_d.i) #5
  %active_pps.i142 = getelementptr inbounds i8, ptr %0, i64 8
  %204 = load ptr, ptr %active_pps.i142, align 8
  %constrained_intra_pred_flag.i143 = getelementptr inbounds i8, ptr %204, i64 2204
  %205 = load i32, ptr %constrained_intra_pred_flag.i143, align 4
  %tobool22.not.i144 = icmp eq i32 %205, 0
  br i1 %tobool22.not.i144, label %if.else.i167, label %for.cond23.preheader.i

for.cond23.preheader.i:                           ; preds = %cond.end.i129
  %intra_block.i145 = getelementptr inbounds i8, ptr %189, i64 13544
  %206 = load i32, ptr %pix_a.i119, align 16
  %tobool28.not.i = icmp eq i32 %206, 0
  br i1 %tobool28.not.i, label %cond.end35.i, label %cond.true29.i

cond.true29.i:                                    ; preds = %for.cond23.preheader.i
  %207 = load ptr, ptr %intra_block.i145, align 8
  %mb_addr.i146 = getelementptr inbounds i8, ptr %pix_a.i119, i64 4
  %208 = load i32, ptr %mb_addr.i146, align 4
  %idxprom32.i = sext i32 %208 to i64
  %arrayidx33.i = getelementptr inbounds i8, ptr %207, i64 %idxprom32.i
  %209 = load i8, ptr %arrayidx33.i, align 1
  %210 = and i8 %209, 1
  %211 = zext nneg i8 %210 to i32
  br label %cond.end35.i

cond.end35.i:                                     ; preds = %cond.true29.i, %for.cond23.preheader.i
  %cond36.i = phi i32 [ %211, %cond.true29.i ], [ 0, %for.cond23.preheader.i ]
  %212 = load i32, ptr %arrayidx10.1.i138, align 16
  %tobool28.not.1.i = icmp eq i32 %212, 0
  br i1 %tobool28.not.1.i, label %cond.end35.1.i, label %cond.true29.1.i

cond.true29.1.i:                                  ; preds = %cond.end35.i
  %213 = load ptr, ptr %intra_block.i145, align 8
  %mb_addr.1.i147 = getelementptr inbounds i8, ptr %pix_a.i119, i64 20
  %214 = load i32, ptr %mb_addr.1.i147, align 4
  %idxprom32.1.i = sext i32 %214 to i64
  %arrayidx33.1.i = getelementptr inbounds i8, ptr %213, i64 %idxprom32.1.i
  %215 = load i8, ptr %arrayidx33.1.i, align 1
  %conv.1285.i = zext i8 %215 to i32
  br label %cond.end35.1.i

cond.end35.1.i:                                   ; preds = %cond.true29.1.i, %cond.end35.i
  %cond36.1.i = phi i32 [ %conv.1285.i, %cond.true29.1.i ], [ 0, %cond.end35.i ]
  %and.1.i148 = and i32 %cond36.1.i, %cond36.i
  %216 = load i32, ptr %arrayidx10.2.i139, align 16
  %tobool28.not.2.i = icmp eq i32 %216, 0
  br i1 %tobool28.not.2.i, label %cond.end35.2.i, label %cond.true29.2.i

cond.true29.2.i:                                  ; preds = %cond.end35.1.i
  %217 = load ptr, ptr %intra_block.i145, align 8
  %mb_addr.2.i149 = getelementptr inbounds i8, ptr %pix_a.i119, i64 36
  %218 = load i32, ptr %mb_addr.2.i149, align 4
  %idxprom32.2.i = sext i32 %218 to i64
  %arrayidx33.2.i = getelementptr inbounds i8, ptr %217, i64 %idxprom32.2.i
  %219 = load i8, ptr %arrayidx33.2.i, align 1
  %conv.2286.i = zext i8 %219 to i32
  br label %cond.end35.2.i

cond.end35.2.i:                                   ; preds = %cond.true29.2.i, %cond.end35.1.i
  %cond36.2.i = phi i32 [ %conv.2286.i, %cond.true29.2.i ], [ 0, %cond.end35.1.i ]
  %and.2.i150 = and i32 %and.1.i148, %cond36.2.i
  %220 = load i32, ptr %arrayidx10.3.i140, align 16
  %tobool28.not.3.i = icmp eq i32 %220, 0
  br i1 %tobool28.not.3.i, label %cond.end35.3.i, label %cond.true29.3.i

cond.true29.3.i:                                  ; preds = %cond.end35.2.i
  %221 = load ptr, ptr %intra_block.i145, align 8
  %mb_addr.3.i151 = getelementptr inbounds i8, ptr %pix_a.i119, i64 52
  %222 = load i32, ptr %mb_addr.3.i151, align 4
  %idxprom32.3.i = sext i32 %222 to i64
  %arrayidx33.3.i = getelementptr inbounds i8, ptr %221, i64 %idxprom32.3.i
  %223 = load i8, ptr %arrayidx33.3.i, align 1
  %conv.3287.i = zext i8 %223 to i32
  br label %cond.end35.3.i

cond.end35.3.i:                                   ; preds = %cond.true29.3.i, %cond.end35.2.i
  %cond36.3.i = phi i32 [ %conv.3287.i, %cond.true29.3.i ], [ 0, %cond.end35.2.i ]
  %and.3.i152 = and i32 %and.2.i150, %cond36.3.i
  %224 = load i32, ptr %pix_b.i120, align 4
  %tobool41.not.i = icmp eq i32 %224, 0
  br i1 %tobool41.not.i, label %cond.end49.i, label %cond.true42.i

cond.true42.i:                                    ; preds = %cond.end35.3.i
  %225 = load ptr, ptr %intra_block.i145, align 8
  %mb_addr44.i = getelementptr inbounds i8, ptr %pix_b.i120, i64 4
  %226 = load i32, ptr %mb_addr44.i, align 4
  %idxprom45.i = sext i32 %226 to i64
  %arrayidx46.i153 = getelementptr inbounds i8, ptr %225, i64 %idxprom45.i
  %227 = load i8, ptr %arrayidx46.i153, align 1
  %conv47.i = sext i8 %227 to i32
  br label %cond.end49.i

cond.end49.i:                                     ; preds = %cond.true42.i, %cond.end35.3.i
  %cond50.i = phi i32 [ %conv47.i, %cond.true42.i ], [ 0, %cond.end35.3.i ]
  %228 = load i32, ptr %pix_d.i, align 4
  %tobool52.not.i = icmp eq i32 %228, 0
  br i1 %tobool52.not.i, label %if.then70.i, label %cond.true53.i

cond.true53.i:                                    ; preds = %cond.end49.i
  %229 = load ptr, ptr %intra_block.i145, align 8
  %mb_addr55.i = getelementptr inbounds i8, ptr %pix_d.i, i64 4
  %230 = load i32, ptr %mb_addr55.i, align 4
  %idxprom56.i = sext i32 %230 to i64
  %arrayidx57.i = getelementptr inbounds i8, ptr %229, i64 %idxprom56.i
  %231 = load i8, ptr %arrayidx57.i, align 1
  %conv58.i = sext i8 %231 to i32
  br label %if.end.i154

if.else.i167:                                     ; preds = %cond.end.i129
  %232 = load i32, ptr %pix_a.i119, align 16
  %233 = load i32, ptr %pix_b.i120, align 4
  %234 = load i32, ptr %pix_d.i, align 4
  br label %if.end.i154

if.end.i154:                                      ; preds = %if.else.i167, %cond.true53.i
  %block_available_up_left.0.i = phi i32 [ %234, %if.else.i167 ], [ %conv58.i, %cond.true53.i ]
  %block_available_left.1.i155 = phi i32 [ %232, %if.else.i167 ], [ %and.3.i152, %cond.true53.i ]
  %block_available_up.0.i156 = phi i32 [ %233, %if.else.i167 ], [ %cond50.i, %cond.true53.i ]
  %tobool66.i = icmp ne i32 %block_available_up.0.i156, 0
  %tobool67.i = icmp ne i32 %block_available_left.1.i155, 0
  %or.cond.i = select i1 %tobool66.i, i1 %tobool67.i, i1 false
  %tobool69.i = icmp ne i32 %block_available_up_left.0.i, 0
  %or.cond208.i = select i1 %or.cond.i, i1 %tobool69.i, i1 false
  br i1 %or.cond208.i, label %if.else71.i, label %if.then70.i

if.then70.i:                                      ; preds = %if.end.i154, %cond.end49.i
  %current_mb_nr.i157 = getelementptr inbounds i8, ptr %189, i64 108
  %235 = load i32, ptr %current_mb_nr.i157, align 4
  %call.i158 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %235)
  br label %intra4x4_diag_down_right_pred_mbaff.exit

if.else71.i:                                      ; preds = %if.end.i154
  %pos_y.i159 = getelementptr inbounds i8, ptr %pix_b.i120, i64 14
  %236 = load i16, ptr %pos_y.i159, align 2
  %idxprom72.i = sext i16 %236 to i64
  %arrayidx73.i = getelementptr inbounds ptr, ptr %cond.i131, i64 %idxprom72.i
  %237 = load ptr, ptr %arrayidx73.i, align 8
  %pos_x.i160 = getelementptr inbounds i8, ptr %pix_b.i120, i64 12
  %238 = load i16, ptr %pos_x.i160, align 4
  %idxprom74.i = sext i16 %238 to i64
  %arrayidx75.i161 = getelementptr inbounds i16, ptr %237, i64 %idxprom74.i
  %incdec.ptr.i = getelementptr inbounds i8, ptr %arrayidx75.i161, i64 2
  %239 = load i16, ptr %arrayidx75.i161, align 2
  %incdec.ptr76.i = getelementptr inbounds i8, ptr %arrayidx75.i161, i64 4
  %240 = load i16, ptr %incdec.ptr.i, align 2
  %incdec.ptr77.i = getelementptr inbounds i8, ptr %arrayidx75.i161, i64 6
  %241 = load i16, ptr %incdec.ptr76.i, align 2
  %242 = load i16, ptr %incdec.ptr77.i, align 2
  %pos_y79.i = getelementptr inbounds i8, ptr %pix_a.i119, i64 14
  %243 = load i16, ptr %pos_y79.i, align 2
  %idxprom80.i = sext i16 %243 to i64
  %arrayidx81.i = getelementptr inbounds ptr, ptr %cond.i131, i64 %idxprom80.i
  %244 = load ptr, ptr %arrayidx81.i, align 8
  %pos_x83.i = getelementptr inbounds i8, ptr %pix_a.i119, i64 12
  %245 = load i16, ptr %pos_x83.i, align 4
  %idxprom84.i = sext i16 %245 to i64
  %arrayidx85.i162 = getelementptr inbounds i16, ptr %244, i64 %idxprom84.i
  %246 = load i16, ptr %arrayidx85.i162, align 2
  %pos_y87.i = getelementptr inbounds i8, ptr %pix_a.i119, i64 30
  %247 = load i16, ptr %pos_y87.i, align 2
  %idxprom88.i = sext i16 %247 to i64
  %arrayidx89.i = getelementptr inbounds ptr, ptr %cond.i131, i64 %idxprom88.i
  %248 = load ptr, ptr %arrayidx89.i, align 8
  %pos_x91.i = getelementptr inbounds i8, ptr %pix_a.i119, i64 28
  %249 = load i16, ptr %pos_x91.i, align 4
  %idxprom92.i = sext i16 %249 to i64
  %arrayidx93.i = getelementptr inbounds i16, ptr %248, i64 %idxprom92.i
  %250 = load i16, ptr %arrayidx93.i, align 2
  %pos_y95.i = getelementptr inbounds i8, ptr %pix_a.i119, i64 46
  %251 = load i16, ptr %pos_y95.i, align 2
  %idxprom96.i = sext i16 %251 to i64
  %arrayidx97.i = getelementptr inbounds ptr, ptr %cond.i131, i64 %idxprom96.i
  %252 = load ptr, ptr %arrayidx97.i, align 8
  %pos_x99.i = getelementptr inbounds i8, ptr %pix_a.i119, i64 44
  %253 = load i16, ptr %pos_x99.i, align 4
  %idxprom100.i = sext i16 %253 to i64
  %arrayidx101.i = getelementptr inbounds i16, ptr %252, i64 %idxprom100.i
  %254 = load i16, ptr %arrayidx101.i, align 2
  %pos_y103.i = getelementptr inbounds i8, ptr %pix_a.i119, i64 62
  %255 = load i16, ptr %pos_y103.i, align 2
  %idxprom104.i = sext i16 %255 to i64
  %arrayidx105.i = getelementptr inbounds ptr, ptr %cond.i131, i64 %idxprom104.i
  %256 = load ptr, ptr %arrayidx105.i, align 8
  %pos_x107.i = getelementptr inbounds i8, ptr %pix_a.i119, i64 60
  %257 = load i16, ptr %pos_x107.i, align 4
  %idxprom108.i = sext i16 %257 to i64
  %arrayidx109.i = getelementptr inbounds i16, ptr %256, i64 %idxprom108.i
  %258 = load i16, ptr %arrayidx109.i, align 2
  %pos_y110.i = getelementptr inbounds i8, ptr %pix_d.i, i64 14
  %259 = load i16, ptr %pos_y110.i, align 2
  %idxprom111.i = sext i16 %259 to i64
  %arrayidx112.i = getelementptr inbounds ptr, ptr %cond.i131, i64 %idxprom111.i
  %260 = load ptr, ptr %arrayidx112.i, align 8
  %pos_x113.i = getelementptr inbounds i8, ptr %pix_d.i, i64 12
  %261 = load i16, ptr %pos_x113.i, align 4
  %idxprom114.i = sext i16 %261 to i64
  %arrayidx115.i = getelementptr inbounds i16, ptr %260, i64 %idxprom114.i
  %262 = load i16, ptr %arrayidx115.i, align 2
  %conv116.i = zext i16 %258 to i32
  %conv117.i = zext i16 %254 to i32
  %mul.i = shl nuw nsw i32 %conv117.i, 1
  %conv119.i163 = zext i16 %250 to i32
  %add118.i = add nuw nsw i32 %conv119.i163, 2
  %add120.i164 = add nuw nsw i32 %mul.i, %add118.i
  %add121.i = add nuw nsw i32 %add120.i164, %conv116.i
  %shr.i165 = lshr i32 %add121.i, 2
  %conv122.i = trunc nuw i32 %shr.i165 to i16
  %mul126.i = shl nuw nsw i32 %conv119.i163, 1
  %conv128.i = zext i16 %246 to i32
  %add127.i = add nuw nsw i32 %conv128.i, 2
  %add129.i = add nuw nsw i32 %add127.i, %mul126.i
  %add130.i166 = add nuw nsw i32 %add129.i, %conv117.i
  %shr131.i = lshr i32 %add130.i166, 2
  %conv132.i = trunc nuw i32 %shr131.i to i16
  %mul136.i = shl nuw nsw i32 %conv128.i, 1
  %conv138.i = zext i16 %262 to i32
  %add139.i = add nuw nsw i32 %add118.i, %mul136.i
  %add140.i = add nuw nsw i32 %add139.i, %conv138.i
  %shr141.i = lshr i32 %add140.i, 2
  %conv142.i = trunc nuw i32 %shr141.i to i16
  %mul146.i = shl nuw nsw i32 %conv138.i, 1
  %conv148.i = zext i16 %239 to i32
  %add147.i = add nuw nsw i32 %conv148.i, 2
  %add149.i = add nuw nsw i32 %add147.i, %conv128.i
  %add150.i = add nuw nsw i32 %add149.i, %mul146.i
  %shr151.i = lshr i32 %add150.i, 2
  %conv152.i = trunc nuw i32 %shr151.i to i16
  %mul156.i = shl nuw nsw i32 %conv148.i, 1
  %conv158.i = zext i16 %240 to i32
  %add157.i = add nuw nsw i32 %conv158.i, 2
  %add159.i = add nuw nsw i32 %add157.i, %mul156.i
  %add160.i = add nuw nsw i32 %add159.i, %conv138.i
  %shr161.i = lshr i32 %add160.i, 2
  %conv162.i = trunc nuw i32 %shr161.i to i16
  %mul166.i = shl nuw nsw i32 %conv158.i, 1
  %conv168.i = zext i16 %241 to i32
  %add169.i = add nuw nsw i32 %mul166.i, %add147.i
  %add170.i = add nuw nsw i32 %add169.i, %conv168.i
  %shr171.i = lshr i32 %add170.i, 2
  %conv172.i = trunc nuw i32 %shr171.i to i16
  %mul176.i = shl nuw nsw i32 %conv168.i, 1
  %conv178.i = zext i16 %242 to i32
  %add179.i = add nuw nsw i32 %mul176.i, %add157.i
  %add180.i = add nuw nsw i32 %add179.i, %conv178.i
  %shr181.i = lshr i32 %add180.i, 2
  %conv182.i = trunc nuw i32 %shr181.i to i16
  %arrayidx186.i = getelementptr inbounds ptr, ptr %193, i64 %194
  %263 = load ptr, ptr %arrayidx186.i, align 8
  %idxprom187.i = sext i32 %ioff to i64
  %arrayidx188.i = getelementptr inbounds i16, ptr %263, i64 %idxprom187.i
  store i16 %conv152.i, ptr %arrayidx188.i, align 2
  %PredPixel.sroa.10.6.arrayidx188.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx188.i, i64 2
  store i16 %conv162.i, ptr %PredPixel.sroa.10.6.arrayidx188.sroa_idx.i, align 2
  %PredPixel.sroa.11.6.arrayidx188.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx188.i, i64 4
  store i16 %conv172.i, ptr %PredPixel.sroa.11.6.arrayidx188.sroa_idx.i, align 2
  %PredPixel.sroa.12.6.arrayidx188.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx188.i, i64 6
  store i16 %conv182.i, ptr %PredPixel.sroa.12.6.arrayidx188.sroa_idx.i, align 2
  %arrayidx192.i = getelementptr i8, ptr %arrayidx186.i, i64 8
  %264 = load ptr, ptr %arrayidx192.i, align 8
  %arrayidx194.i = getelementptr inbounds i16, ptr %264, i64 %idxprom187.i
  store i16 %conv142.i, ptr %arrayidx194.i, align 2
  %PredPixel.sroa.8.4.arrayidx194.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx194.i, i64 2
  store i16 %conv152.i, ptr %PredPixel.sroa.8.4.arrayidx194.sroa_idx.i, align 2
  %PredPixel.sroa.10.4.arrayidx194.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx194.i, i64 4
  store i16 %conv162.i, ptr %PredPixel.sroa.10.4.arrayidx194.sroa_idx.i, align 2
  %PredPixel.sroa.11.4.arrayidx194.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx194.i, i64 6
  store i16 %conv172.i, ptr %PredPixel.sroa.11.4.arrayidx194.sroa_idx.i, align 2
  %arrayidx198.i = getelementptr i8, ptr %arrayidx186.i, i64 16
  %265 = load ptr, ptr %arrayidx198.i, align 8
  %arrayidx200.i = getelementptr inbounds i16, ptr %265, i64 %idxprom187.i
  store i16 %conv132.i, ptr %arrayidx200.i, align 2
  %PredPixel.sroa.6.2.arrayidx200.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx200.i, i64 2
  store i16 %conv142.i, ptr %PredPixel.sroa.6.2.arrayidx200.sroa_idx.i, align 2
  %PredPixel.sroa.8.2.arrayidx200.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx200.i, i64 4
  store i16 %conv152.i, ptr %PredPixel.sroa.8.2.arrayidx200.sroa_idx.i, align 2
  %PredPixel.sroa.10.2.arrayidx200.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx200.i, i64 6
  store i16 %conv162.i, ptr %PredPixel.sroa.10.2.arrayidx200.sroa_idx.i, align 2
  %arrayidx203.i = getelementptr i8, ptr %arrayidx186.i, i64 24
  %266 = load ptr, ptr %arrayidx203.i, align 8
  %arrayidx205.i = getelementptr inbounds i16, ptr %266, i64 %idxprom187.i
  store i16 %conv122.i, ptr %arrayidx205.i, align 2
  %PredPixel.sroa.4.0.arrayidx205.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx205.i, i64 2
  store i16 %conv132.i, ptr %PredPixel.sroa.4.0.arrayidx205.sroa_idx.i, align 2
  %PredPixel.sroa.6.0.arrayidx205.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx205.i, i64 4
  store i16 %conv142.i, ptr %PredPixel.sroa.6.0.arrayidx205.sroa_idx.i, align 2
  %PredPixel.sroa.8.0.arrayidx205.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx205.i, i64 6
  store i16 %conv152.i, ptr %PredPixel.sroa.8.0.arrayidx205.sroa_idx.i, align 2
  br label %intra4x4_diag_down_right_pred_mbaff.exit

intra4x4_diag_down_right_pred_mbaff.exit:         ; preds = %if.then70.i, %if.else71.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pix_d.i) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pix_b.i120) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %pix_a.i119) #5
  br label %cleanup

sw.bb10:                                          ; preds = %entry
  %267 = load ptr, ptr %currMB, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pix_b.i170) #5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pix_c.i) #5
  %getNeighbour.i172 = getelementptr inbounds i8, ptr %0, i64 856744
  %268 = load ptr, ptr %getNeighbour.i172, align 8
  %sub.i173 = add nsw i32 %joff, -1
  %mb_size.i174 = getelementptr inbounds i8, ptr %0, i64 849124
  call void %268(ptr noundef nonnull %currMB, i32 noundef %ioff, i32 noundef %sub.i173, ptr noundef nonnull %mb_size.i174, ptr noundef nonnull %pix_b.i170) #5
  %269 = load ptr, ptr %getNeighbour.i172, align 8
  %add.i = add nsw i32 %ioff, 4
  call void %269(ptr noundef nonnull %currMB, i32 noundef %add.i, i32 noundef %sub.i173, ptr noundef nonnull %mb_size.i174, ptr noundef nonnull %pix_c.i) #5
  %270 = load i32, ptr %pix_c.i, align 4
  %tobool.not.i175 = icmp eq i32 %270, 0
  br i1 %tobool.not.i175, label %land.end10.i, label %land.rhs.i

land.rhs.i:                                       ; preds = %sw.bb10
  %cmp.i = icmp ne i32 %ioff, 4
  %271 = and i32 %joff, -9
  %272 = icmp ne i32 %271, 4
  %narrow.i = or i1 %cmp.i, %272
  %lnot.i = zext i1 %narrow.i to i32
  br label %land.end10.i

land.end10.i:                                     ; preds = %land.rhs.i, %sw.bb10
  %land.ext.i = phi i32 [ 0, %sw.bb10 ], [ %lnot.i, %land.rhs.i ]
  store i32 %land.ext.i, ptr %pix_c.i, align 4
  %active_pps.i176 = getelementptr inbounds i8, ptr %0, i64 8
  %273 = load ptr, ptr %active_pps.i176, align 8
  %constrained_intra_pred_flag.i177 = getelementptr inbounds i8, ptr %273, i64 2204
  %274 = load i32, ptr %constrained_intra_pred_flag.i177, align 4
  %tobool12.not.i = icmp eq i32 %274, 0
  %275 = load i32, ptr %pix_b.i170, align 4
  br i1 %tobool12.not.i, label %if.end.i191, label %if.then.i178

if.then.i178:                                     ; preds = %land.end10.i
  %tobool14.not.i = icmp eq i32 %275, 0
  br i1 %tobool14.not.i, label %cond.end.i185, label %cond.true.i179

cond.true.i179:                                   ; preds = %if.then.i178
  %intra_block.i180 = getelementptr inbounds i8, ptr %267, i64 13544
  %276 = load ptr, ptr %intra_block.i180, align 8
  %mb_addr.i181 = getelementptr inbounds i8, ptr %pix_b.i170, i64 4
  %277 = load i32, ptr %mb_addr.i181, align 4
  %idxprom.i182 = sext i32 %277 to i64
  %arrayidx15.i183 = getelementptr inbounds i8, ptr %276, i64 %idxprom.i182
  %278 = load i8, ptr %arrayidx15.i183, align 1
  %conv.i184 = sext i8 %278 to i32
  br label %cond.end.i185

cond.end.i185:                                    ; preds = %cond.true.i179, %if.then.i178
  %cond.i186 = phi i32 [ %conv.i184, %cond.true.i179 ], [ 0, %if.then.i178 ]
  %tobool17.not.i187 = icmp eq i32 %land.ext.i, 0
  br i1 %tobool17.not.i187, label %if.end.i191, label %cond.true18.i188

cond.true18.i188:                                 ; preds = %cond.end.i185
  %intra_block19.i = getelementptr inbounds i8, ptr %267, i64 13544
  %279 = load ptr, ptr %intra_block19.i, align 8
  %mb_addr20.i = getelementptr inbounds i8, ptr %pix_c.i, i64 4
  %280 = load i32, ptr %mb_addr20.i, align 4
  %idxprom21.i189 = sext i32 %280 to i64
  %arrayidx22.i190 = getelementptr inbounds i8, ptr %279, i64 %idxprom21.i189
  %281 = load i8, ptr %arrayidx22.i190, align 1
  %conv23.i = sext i8 %281 to i32
  br label %if.end.i191

if.end.i191:                                      ; preds = %cond.true18.i188, %cond.end.i185, %land.end10.i
  %block_available_up_right.0.i = phi i32 [ %conv23.i, %cond.true18.i188 ], [ 0, %cond.end.i185 ], [ %land.ext.i, %land.end10.i ]
  %block_available_up.0.i192 = phi i32 [ %cond.i186, %cond.true18.i188 ], [ %cond.i186, %cond.end.i185 ], [ %275, %land.end10.i ]
  %tobool29.not.i = icmp eq i32 %block_available_up.0.i192, 0
  br i1 %tobool29.not.i, label %if.then30.i, label %if.else31.i

if.then30.i:                                      ; preds = %if.end.i191
  %current_mb_nr.i210 = getelementptr inbounds i8, ptr %267, i64 108
  %282 = load i32, ptr %current_mb_nr.i210, align 4
  %call.i211 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %282)
  br label %intra4x4_diag_down_left_pred_mbaff.exit

if.else31.i:                                      ; preds = %if.end.i191
  %tobool32.not.i = icmp eq i32 %pl, 0
  %dec_picture38.i = getelementptr inbounds i8, ptr %267, i64 13520
  %283 = load ptr, ptr %dec_picture38.i, align 8
  br i1 %tobool32.not.i, label %cond.false37.i, label %cond.true33.i

cond.true33.i:                                    ; preds = %if.else31.i
  %imgUV.i193 = getelementptr inbounds i8, ptr %283, i64 136
  %284 = load ptr, ptr %imgUV.i193, align 8
  %sub34.i = add i32 %pl, -1
  %idxprom35.i = zext i32 %sub34.i to i64
  %arrayidx36.i = getelementptr inbounds ptr, ptr %284, i64 %idxprom35.i
  br label %cond.end40.i

cond.false37.i:                                   ; preds = %if.else31.i
  %imgY39.i = getelementptr inbounds i8, ptr %283, i64 128
  br label %cond.end40.i

cond.end40.i:                                     ; preds = %cond.false37.i, %cond.true33.i
  %cond41.in.i = phi ptr [ %arrayidx36.i, %cond.true33.i ], [ %imgY39.i, %cond.false37.i ]
  %cond41.i = load ptr, ptr %cond41.in.i, align 8
  %mb_pred42.i = getelementptr inbounds i8, ptr %267, i64 1248
  %285 = load ptr, ptr %mb_pred42.i, align 8
  %idxprom43.i194 = zext i32 %pl to i64
  %arrayidx44.i195 = getelementptr inbounds ptr, ptr %285, i64 %idxprom43.i194
  %286 = load ptr, ptr %arrayidx44.i195, align 8
  %pos_y.i196 = getelementptr inbounds i8, ptr %pix_b.i170, i64 14
  %287 = load i16, ptr %pos_y.i196, align 2
  %idxprom45.i197 = sext i16 %287 to i64
  %arrayidx46.i198 = getelementptr inbounds ptr, ptr %cond41.i, i64 %idxprom45.i197
  %288 = load ptr, ptr %arrayidx46.i198, align 8
  %pos_x.i199 = getelementptr inbounds i8, ptr %pix_b.i170, i64 12
  %289 = load i16, ptr %pos_x.i199, align 4
  %idxprom47.i200 = sext i16 %289 to i64
  %arrayidx48.i201 = getelementptr inbounds i16, ptr %288, i64 %idxprom47.i200
  %incdec.ptr.i202 = getelementptr inbounds i8, ptr %arrayidx48.i201, i64 2
  %290 = load i16, ptr %arrayidx48.i201, align 2
  %incdec.ptr49.i = getelementptr inbounds i8, ptr %arrayidx48.i201, i64 4
  %291 = load i16, ptr %incdec.ptr.i202, align 2
  %incdec.ptr50.i = getelementptr inbounds i8, ptr %arrayidx48.i201, i64 6
  %292 = load i16, ptr %incdec.ptr49.i, align 2
  %293 = load i16, ptr %incdec.ptr50.i, align 2
  %tobool51.not.i = icmp eq i32 %block_available_up_right.0.i, 0
  br i1 %tobool51.not.i, label %if.end63.i, label %if.then52.i

if.then52.i:                                      ; preds = %cond.end40.i
  %pos_y53.i = getelementptr inbounds i8, ptr %pix_c.i, i64 14
  %294 = load i16, ptr %pos_y53.i, align 2
  %idxprom54.i = sext i16 %294 to i64
  %arrayidx55.i203 = getelementptr inbounds ptr, ptr %cond41.i, i64 %idxprom54.i
  %295 = load ptr, ptr %arrayidx55.i203, align 8
  %pos_x56.i = getelementptr inbounds i8, ptr %pix_c.i, i64 12
  %296 = load i16, ptr %pos_x56.i, align 4
  %idxprom57.i = sext i16 %296 to i64
  %arrayidx58.i = getelementptr inbounds i16, ptr %295, i64 %idxprom57.i
  %incdec.ptr59.i = getelementptr inbounds i8, ptr %arrayidx58.i, i64 2
  %297 = load i16, ptr %arrayidx58.i, align 2
  %incdec.ptr60.i = getelementptr inbounds i8, ptr %arrayidx58.i, i64 4
  %298 = load i16, ptr %incdec.ptr59.i, align 2
  %incdec.ptr61.i = getelementptr inbounds i8, ptr %arrayidx58.i, i64 6
  %299 = load i16, ptr %incdec.ptr60.i, align 2
  %300 = load i16, ptr %incdec.ptr61.i, align 2
  br label %if.end63.i

if.end63.i:                                       ; preds = %if.then52.i, %cond.end40.i
  %p_h.0.i = phi i16 [ %300, %if.then52.i ], [ %293, %cond.end40.i ]
  %p_g.0.i = phi i16 [ %299, %if.then52.i ], [ %293, %cond.end40.i ]
  %p_f.0.i = phi i16 [ %298, %if.then52.i ], [ %293, %cond.end40.i ]
  %p_e.0.i = phi i16 [ %297, %if.then52.i ], [ %293, %cond.end40.i ]
  %conv64.i = zext i16 %290 to i32
  %conv65.i = zext i16 %292 to i32
  %conv67.i = zext i16 %291 to i32
  %mul.i204 = shl nuw nsw i32 %conv67.i, 1
  %add66.i = add nuw nsw i32 %conv65.i, 2
  %add68.i = add nuw nsw i32 %mul.i204, %conv64.i
  %add69.i = add nuw nsw i32 %add68.i, %add66.i
  %shr.i205 = lshr i32 %add69.i, 2
  %conv70.i = trunc nuw i32 %shr.i205 to i16
  %conv73.i = zext i16 %293 to i32
  %mul76.i = shl nuw nsw i32 %conv65.i, 1
  %add74.i = add nuw nsw i32 %conv73.i, 2
  %add77.i206 = add nuw nsw i32 %mul76.i, %conv67.i
  %add78.i = add nuw nsw i32 %add77.i206, %add74.i
  %shr79.i = lshr i32 %add78.i, 2
  %conv80.i = trunc nuw i32 %shr79.i to i16
  %conv83.i = zext i16 %p_e.0.i to i32
  %mul86.i = shl nuw nsw i32 %conv73.i, 1
  %add87.i207 = add nuw nsw i32 %mul86.i, %add66.i
  %add88.i = add nuw nsw i32 %add87.i207, %conv83.i
  %shr89.i = lshr i32 %add88.i, 2
  %conv90.i = trunc nuw i32 %shr89.i to i16
  %conv93.i = zext i16 %p_f.0.i to i32
  %mul96.i = shl nuw nsw i32 %conv83.i, 1
  %add97.i = add nuw nsw i32 %add74.i, %conv93.i
  %add98.i = add nuw nsw i32 %add97.i, %mul96.i
  %shr99.i = lshr i32 %add98.i, 2
  %conv100.i = trunc nuw i32 %shr99.i to i16
  %conv103.i = zext i16 %p_g.0.i to i32
  %mul106.i = shl nuw nsw i32 %conv93.i, 1
  %add104.i = add nuw nsw i32 %conv103.i, 2
  %add107.i = add nuw nsw i32 %add104.i, %conv83.i
  %add108.i = add nuw nsw i32 %add107.i, %mul106.i
  %shr109.i = lshr i32 %add108.i, 2
  %conv110.i = trunc nuw i32 %shr109.i to i16
  %conv113.i = zext i16 %p_h.0.i to i32
  %mul116.i = shl nuw nsw i32 %conv103.i, 1
  %add114.i = add nuw nsw i32 %conv113.i, 2
  %add117.i = add nuw nsw i32 %add114.i, %conv93.i
  %add118.i208 = add nuw nsw i32 %add117.i, %mul116.i
  %shr119.i = lshr i32 %add118.i208, 2
  %conv120.i = trunc nuw i32 %shr119.i to i16
  %mul124.i = mul nuw nsw i32 %conv113.i, 3
  %add126.i = add nuw nsw i32 %add104.i, %mul124.i
  %shr127.i = lshr i32 %add126.i, 2
  %conv128.i209 = trunc nuw i32 %shr127.i to i16
  %idxprom130.i = sext i32 %joff to i64
  %arrayidx131.i = getelementptr inbounds ptr, ptr %286, i64 %idxprom130.i
  %301 = load ptr, ptr %arrayidx131.i, align 8
  %idxprom132.i = sext i32 %ioff to i64
  %arrayidx133.i = getelementptr inbounds i16, ptr %301, i64 %idxprom132.i
  store i16 %conv70.i, ptr %arrayidx133.i, align 2
  %PredPixel.sroa.4.0.arrayidx133.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx133.i, i64 2
  store i16 %conv80.i, ptr %PredPixel.sroa.4.0.arrayidx133.sroa_idx.i, align 2
  %PredPixel.sroa.6.0.arrayidx133.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx133.i, i64 4
  store i16 %conv90.i, ptr %PredPixel.sroa.6.0.arrayidx133.sroa_idx.i, align 2
  %PredPixel.sroa.8.0.arrayidx133.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx133.i, i64 6
  store i16 %conv100.i, ptr %PredPixel.sroa.8.0.arrayidx133.sroa_idx.i, align 2
  %arrayidx137.i = getelementptr i8, ptr %arrayidx131.i, i64 8
  %302 = load ptr, ptr %arrayidx137.i, align 8
  %arrayidx139.i = getelementptr inbounds i16, ptr %302, i64 %idxprom132.i
  store i16 %conv80.i, ptr %arrayidx139.i, align 2
  %PredPixel.sroa.6.2.arrayidx139.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx139.i, i64 2
  store i16 %conv90.i, ptr %PredPixel.sroa.6.2.arrayidx139.sroa_idx.i, align 2
  %PredPixel.sroa.8.2.arrayidx139.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx139.i, i64 4
  store i16 %conv100.i, ptr %PredPixel.sroa.8.2.arrayidx139.sroa_idx.i, align 2
  %PredPixel.sroa.10.2.arrayidx139.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx139.i, i64 6
  store i16 %conv110.i, ptr %PredPixel.sroa.10.2.arrayidx139.sroa_idx.i, align 2
  %arrayidx143.i = getelementptr i8, ptr %arrayidx131.i, i64 16
  %303 = load ptr, ptr %arrayidx143.i, align 8
  %arrayidx145.i = getelementptr inbounds i16, ptr %303, i64 %idxprom132.i
  store i16 %conv90.i, ptr %arrayidx145.i, align 2
  %PredPixel.sroa.8.4.arrayidx145.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx145.i, i64 2
  store i16 %conv100.i, ptr %PredPixel.sroa.8.4.arrayidx145.sroa_idx.i, align 2
  %PredPixel.sroa.10.4.arrayidx145.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx145.i, i64 4
  store i16 %conv110.i, ptr %PredPixel.sroa.10.4.arrayidx145.sroa_idx.i, align 2
  %PredPixel.sroa.11.4.arrayidx145.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx145.i, i64 6
  store i16 %conv120.i, ptr %PredPixel.sroa.11.4.arrayidx145.sroa_idx.i, align 2
  %arrayidx148.i = getelementptr i8, ptr %arrayidx131.i, i64 24
  %304 = load ptr, ptr %arrayidx148.i, align 8
  %arrayidx150.i = getelementptr inbounds i16, ptr %304, i64 %idxprom132.i
  store i16 %conv100.i, ptr %arrayidx150.i, align 2
  %PredPixel.sroa.10.6.arrayidx150.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx150.i, i64 2
  store i16 %conv110.i, ptr %PredPixel.sroa.10.6.arrayidx150.sroa_idx.i, align 2
  %PredPixel.sroa.11.6.arrayidx150.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx150.i, i64 4
  store i16 %conv120.i, ptr %PredPixel.sroa.11.6.arrayidx150.sroa_idx.i, align 2
  %PredPixel.sroa.12.6.arrayidx150.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx150.i, i64 6
  store i16 %conv128.i209, ptr %PredPixel.sroa.12.6.arrayidx150.sroa_idx.i, align 2
  br label %intra4x4_diag_down_left_pred_mbaff.exit

intra4x4_diag_down_left_pred_mbaff.exit:          ; preds = %if.then30.i, %if.end63.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pix_c.i) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pix_b.i170) #5
  br label %cleanup

sw.bb12:                                          ; preds = %entry
  %305 = load ptr, ptr %currMB, align 8
  %tobool.not.i216 = icmp eq i32 %pl, 0
  %dec_picture2.i217 = getelementptr inbounds i8, ptr %305, i64 13520
  %306 = load ptr, ptr %dec_picture2.i217, align 8
  br i1 %tobool.not.i216, label %cond.false.i366, label %cond.true.i218

cond.true.i218:                                   ; preds = %sw.bb12
  %imgUV.i219 = getelementptr inbounds i8, ptr %306, i64 136
  %307 = load ptr, ptr %imgUV.i219, align 8
  %sub.i220 = add i32 %pl, -1
  %idxprom.i221 = zext i32 %sub.i220 to i64
  %arrayidx.i222 = getelementptr inbounds ptr, ptr %307, i64 %idxprom.i221
  br label %cond.end.i223

cond.false.i366:                                  ; preds = %sw.bb12
  %imgY3.i367 = getelementptr inbounds i8, ptr %306, i64 128
  br label %cond.end.i223

cond.end.i223:                                    ; preds = %cond.false.i366, %cond.true.i218
  %cond.in.i224 = phi ptr [ %arrayidx.i222, %cond.true.i218 ], [ %imgY3.i367, %cond.false.i366 ]
  %cond.i225 = load ptr, ptr %cond.in.i224, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %pix_a.i212) #5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pix_b.i213) #5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pix_d.i214) #5
  %mb_pred4.i226 = getelementptr inbounds i8, ptr %305, i64 1248
  %308 = load ptr, ptr %mb_pred4.i226, align 8
  %idxprom5.i227 = zext i32 %pl to i64
  %arrayidx6.i228 = getelementptr inbounds ptr, ptr %308, i64 %idxprom5.i227
  %309 = load ptr, ptr %arrayidx6.i228, align 8
  %getNeighbour.i229 = getelementptr inbounds i8, ptr %0, i64 856744
  %sub7.i230 = add nsw i32 %ioff, -1
  %mb_size.i231 = getelementptr inbounds i8, ptr %0, i64 849124
  %310 = load ptr, ptr %getNeighbour.i229, align 8
  call void %310(ptr noundef nonnull %currMB, i32 noundef %sub7.i230, i32 noundef %joff, ptr noundef nonnull %mb_size.i231, ptr noundef nonnull %pix_a.i212) #5
  %311 = load ptr, ptr %getNeighbour.i229, align 8
  %312 = add i32 %joff, 1
  %arrayidx10.1.i232 = getelementptr inbounds i8, ptr %pix_a.i212, i64 16
  call void %311(ptr noundef nonnull %currMB, i32 noundef %sub7.i230, i32 noundef %312, ptr noundef nonnull %mb_size.i231, ptr noundef nonnull %arrayidx10.1.i232) #5
  %313 = load ptr, ptr %getNeighbour.i229, align 8
  %314 = add i32 %joff, 2
  %arrayidx10.2.i233 = getelementptr inbounds i8, ptr %pix_a.i212, i64 32
  call void %313(ptr noundef nonnull %currMB, i32 noundef %sub7.i230, i32 noundef %314, ptr noundef nonnull %mb_size.i231, ptr noundef nonnull %arrayidx10.2.i233) #5
  %315 = load ptr, ptr %getNeighbour.i229, align 8
  %316 = add i32 %joff, 3
  %arrayidx10.3.i234 = getelementptr inbounds i8, ptr %pix_a.i212, i64 48
  call void %315(ptr noundef nonnull %currMB, i32 noundef %sub7.i230, i32 noundef %316, ptr noundef nonnull %mb_size.i231, ptr noundef nonnull %arrayidx10.3.i234) #5
  %317 = load ptr, ptr %getNeighbour.i229, align 8
  %sub12.i235 = add nsw i32 %joff, -1
  call void %317(ptr noundef nonnull %currMB, i32 noundef %ioff, i32 noundef %sub12.i235, ptr noundef nonnull %mb_size.i231, ptr noundef nonnull %pix_b.i213) #5
  %318 = load ptr, ptr %getNeighbour.i229, align 8
  call void %318(ptr noundef nonnull %currMB, i32 noundef %sub7.i230, i32 noundef %sub12.i235, ptr noundef nonnull %mb_size.i231, ptr noundef nonnull %pix_d.i214) #5
  %active_pps.i236 = getelementptr inbounds i8, ptr %0, i64 8
  %319 = load ptr, ptr %active_pps.i236, align 8
  %constrained_intra_pred_flag.i237 = getelementptr inbounds i8, ptr %319, i64 2204
  %320 = load i32, ptr %constrained_intra_pred_flag.i237, align 4
  %tobool22.not.i238 = icmp eq i32 %320, 0
  br i1 %tobool22.not.i238, label %if.else.i365, label %for.cond23.preheader.i239

for.cond23.preheader.i239:                        ; preds = %cond.end.i223
  %intra_block.i240 = getelementptr inbounds i8, ptr %305, i64 13544
  %321 = load i32, ptr %pix_a.i212, align 16
  %tobool28.not.i241 = icmp eq i32 %321, 0
  br i1 %tobool28.not.i241, label %cond.end35.i246, label %cond.true29.i242

cond.true29.i242:                                 ; preds = %for.cond23.preheader.i239
  %322 = load ptr, ptr %intra_block.i240, align 8
  %mb_addr.i243 = getelementptr inbounds i8, ptr %pix_a.i212, i64 4
  %323 = load i32, ptr %mb_addr.i243, align 4
  %idxprom32.i244 = sext i32 %323 to i64
  %arrayidx33.i245 = getelementptr inbounds i8, ptr %322, i64 %idxprom32.i244
  %324 = load i8, ptr %arrayidx33.i245, align 1
  %325 = and i8 %324, 1
  %326 = zext nneg i8 %325 to i32
  br label %cond.end35.i246

cond.end35.i246:                                  ; preds = %cond.true29.i242, %for.cond23.preheader.i239
  %cond36.i247 = phi i32 [ %326, %cond.true29.i242 ], [ 0, %for.cond23.preheader.i239 ]
  %327 = load i32, ptr %arrayidx10.1.i232, align 16
  %tobool28.not.1.i248 = icmp eq i32 %327, 0
  br i1 %tobool28.not.1.i248, label %cond.end35.1.i253, label %cond.true29.1.i249

cond.true29.1.i249:                               ; preds = %cond.end35.i246
  %328 = load ptr, ptr %intra_block.i240, align 8
  %mb_addr.1.i250 = getelementptr inbounds i8, ptr %pix_a.i212, i64 20
  %329 = load i32, ptr %mb_addr.1.i250, align 4
  %idxprom32.1.i251 = sext i32 %329 to i64
  %arrayidx33.1.i252 = getelementptr inbounds i8, ptr %328, i64 %idxprom32.1.i251
  %330 = load i8, ptr %arrayidx33.1.i252, align 1
  %conv.1299.i = zext i8 %330 to i32
  br label %cond.end35.1.i253

cond.end35.1.i253:                                ; preds = %cond.true29.1.i249, %cond.end35.i246
  %cond36.1.i254 = phi i32 [ %conv.1299.i, %cond.true29.1.i249 ], [ 0, %cond.end35.i246 ]
  %and.1.i255 = and i32 %cond36.1.i254, %cond36.i247
  %331 = load i32, ptr %arrayidx10.2.i233, align 16
  %tobool28.not.2.i256 = icmp eq i32 %331, 0
  br i1 %tobool28.not.2.i256, label %cond.end35.2.i261, label %cond.true29.2.i257

cond.true29.2.i257:                               ; preds = %cond.end35.1.i253
  %332 = load ptr, ptr %intra_block.i240, align 8
  %mb_addr.2.i258 = getelementptr inbounds i8, ptr %pix_a.i212, i64 36
  %333 = load i32, ptr %mb_addr.2.i258, align 4
  %idxprom32.2.i259 = sext i32 %333 to i64
  %arrayidx33.2.i260 = getelementptr inbounds i8, ptr %332, i64 %idxprom32.2.i259
  %334 = load i8, ptr %arrayidx33.2.i260, align 1
  %conv.2300.i = zext i8 %334 to i32
  br label %cond.end35.2.i261

cond.end35.2.i261:                                ; preds = %cond.true29.2.i257, %cond.end35.1.i253
  %cond36.2.i262 = phi i32 [ %conv.2300.i, %cond.true29.2.i257 ], [ 0, %cond.end35.1.i253 ]
  %and.2.i263 = and i32 %and.1.i255, %cond36.2.i262
  %335 = load i32, ptr %arrayidx10.3.i234, align 16
  %tobool28.not.3.i264 = icmp eq i32 %335, 0
  br i1 %tobool28.not.3.i264, label %cond.end35.3.i269, label %cond.true29.3.i265

cond.true29.3.i265:                               ; preds = %cond.end35.2.i261
  %336 = load ptr, ptr %intra_block.i240, align 8
  %mb_addr.3.i266 = getelementptr inbounds i8, ptr %pix_a.i212, i64 52
  %337 = load i32, ptr %mb_addr.3.i266, align 4
  %idxprom32.3.i267 = sext i32 %337 to i64
  %arrayidx33.3.i268 = getelementptr inbounds i8, ptr %336, i64 %idxprom32.3.i267
  %338 = load i8, ptr %arrayidx33.3.i268, align 1
  %conv.3301.i = zext i8 %338 to i32
  br label %cond.end35.3.i269

cond.end35.3.i269:                                ; preds = %cond.true29.3.i265, %cond.end35.2.i261
  %cond36.3.i270 = phi i32 [ %conv.3301.i, %cond.true29.3.i265 ], [ 0, %cond.end35.2.i261 ]
  %and.3.i271 = and i32 %and.2.i263, %cond36.3.i270
  %339 = load i32, ptr %pix_b.i213, align 4
  %tobool41.not.i272 = icmp eq i32 %339, 0
  br i1 %tobool41.not.i272, label %cond.end49.i278, label %cond.true42.i273

cond.true42.i273:                                 ; preds = %cond.end35.3.i269
  %340 = load ptr, ptr %intra_block.i240, align 8
  %mb_addr44.i274 = getelementptr inbounds i8, ptr %pix_b.i213, i64 4
  %341 = load i32, ptr %mb_addr44.i274, align 4
  %idxprom45.i275 = sext i32 %341 to i64
  %arrayidx46.i276 = getelementptr inbounds i8, ptr %340, i64 %idxprom45.i275
  %342 = load i8, ptr %arrayidx46.i276, align 1
  %conv47.i277 = sext i8 %342 to i32
  br label %cond.end49.i278

cond.end49.i278:                                  ; preds = %cond.true42.i273, %cond.end35.3.i269
  %cond50.i279 = phi i32 [ %conv47.i277, %cond.true42.i273 ], [ 0, %cond.end35.3.i269 ]
  %343 = load i32, ptr %pix_d.i214, align 4
  %tobool52.not.i280 = icmp eq i32 %343, 0
  br i1 %tobool52.not.i280, label %if.then70.i294, label %cond.true53.i281

cond.true53.i281:                                 ; preds = %cond.end49.i278
  %344 = load ptr, ptr %intra_block.i240, align 8
  %mb_addr55.i282 = getelementptr inbounds i8, ptr %pix_d.i214, i64 4
  %345 = load i32, ptr %mb_addr55.i282, align 4
  %idxprom56.i283 = sext i32 %345 to i64
  %arrayidx57.i284 = getelementptr inbounds i8, ptr %344, i64 %idxprom56.i283
  %346 = load i8, ptr %arrayidx57.i284, align 1
  %conv58.i285 = sext i8 %346 to i32
  br label %if.end.i286

if.else.i365:                                     ; preds = %cond.end.i223
  %347 = load i32, ptr %pix_a.i212, align 16
  %348 = load i32, ptr %pix_b.i213, align 4
  %349 = load i32, ptr %pix_d.i214, align 4
  br label %if.end.i286

if.end.i286:                                      ; preds = %if.else.i365, %cond.true53.i281
  %block_available_up_left.0.i287 = phi i32 [ %349, %if.else.i365 ], [ %conv58.i285, %cond.true53.i281 ]
  %block_available_left.1.i288 = phi i32 [ %347, %if.else.i365 ], [ %and.3.i271, %cond.true53.i281 ]
  %block_available_up.0.i289 = phi i32 [ %348, %if.else.i365 ], [ %cond50.i279, %cond.true53.i281 ]
  %tobool66.i290 = icmp ne i32 %block_available_up.0.i289, 0
  %tobool67.i291 = icmp ne i32 %block_available_left.1.i288, 0
  %or.cond.i292 = select i1 %tobool66.i290, i1 %tobool67.i291, i1 false
  %tobool69.i293 = icmp ne i32 %block_available_up_left.0.i287, 0
  %or.cond217.i = select i1 %or.cond.i292, i1 %tobool69.i293, i1 false
  br i1 %or.cond217.i, label %intra4x4_vert_right_pred_mbaff.exit, label %if.then70.i294

if.then70.i294:                                   ; preds = %if.end.i286, %cond.end49.i278
  %current_mb_nr.i295 = getelementptr inbounds i8, ptr %305, i64 108
  %350 = load i32, ptr %current_mb_nr.i295, align 4
  %call.i296 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef %350)
  br label %intra4x4_vert_right_pred_mbaff.exit

intra4x4_vert_right_pred_mbaff.exit:              ; preds = %if.end.i286, %if.then70.i294
  %351 = sext i32 %joff to i64
  %pos_y.i297 = getelementptr inbounds i8, ptr %pix_b.i213, i64 14
  %352 = load i16, ptr %pos_y.i297, align 2
  %idxprom72.i298 = sext i16 %352 to i64
  %arrayidx73.i299 = getelementptr inbounds ptr, ptr %cond.i225, i64 %idxprom72.i298
  %353 = load ptr, ptr %arrayidx73.i299, align 8
  %pos_x.i300 = getelementptr inbounds i8, ptr %pix_b.i213, i64 12
  %354 = load i16, ptr %pos_x.i300, align 4
  %idxprom74.i301 = sext i16 %354 to i64
  %arrayidx75.i302 = getelementptr inbounds i16, ptr %353, i64 %idxprom74.i301
  %incdec.ptr.i303 = getelementptr inbounds i8, ptr %arrayidx75.i302, i64 2
  %355 = load i16, ptr %arrayidx75.i302, align 2
  %incdec.ptr76.i304 = getelementptr inbounds i8, ptr %arrayidx75.i302, i64 4
  %356 = load i16, ptr %incdec.ptr.i303, align 2
  %incdec.ptr77.i305 = getelementptr inbounds i8, ptr %arrayidx75.i302, i64 6
  %357 = load i16, ptr %incdec.ptr76.i304, align 2
  %358 = load i16, ptr %incdec.ptr77.i305, align 2
  %pos_y79.i306 = getelementptr inbounds i8, ptr %pix_a.i212, i64 14
  %359 = load i16, ptr %pos_y79.i306, align 2
  %idxprom80.i307 = sext i16 %359 to i64
  %arrayidx81.i308 = getelementptr inbounds ptr, ptr %cond.i225, i64 %idxprom80.i307
  %360 = load ptr, ptr %arrayidx81.i308, align 8
  %pos_x83.i309 = getelementptr inbounds i8, ptr %pix_a.i212, i64 12
  %361 = load i16, ptr %pos_x83.i309, align 4
  %idxprom84.i310 = sext i16 %361 to i64
  %arrayidx85.i311 = getelementptr inbounds i16, ptr %360, i64 %idxprom84.i310
  %362 = load i16, ptr %arrayidx85.i311, align 2
  %pos_y87.i312 = getelementptr inbounds i8, ptr %pix_a.i212, i64 30
  %363 = load i16, ptr %pos_y87.i312, align 2
  %idxprom88.i313 = sext i16 %363 to i64
  %arrayidx89.i314 = getelementptr inbounds ptr, ptr %cond.i225, i64 %idxprom88.i313
  %364 = load ptr, ptr %arrayidx89.i314, align 8
  %pos_x91.i315 = getelementptr inbounds i8, ptr %pix_a.i212, i64 28
  %365 = load i16, ptr %pos_x91.i315, align 4
  %idxprom92.i316 = sext i16 %365 to i64
  %arrayidx93.i317 = getelementptr inbounds i16, ptr %364, i64 %idxprom92.i316
  %366 = load i16, ptr %arrayidx93.i317, align 2
  %pos_y95.i318 = getelementptr inbounds i8, ptr %pix_a.i212, i64 46
  %367 = load i16, ptr %pos_y95.i318, align 2
  %idxprom96.i319 = sext i16 %367 to i64
  %arrayidx97.i320 = getelementptr inbounds ptr, ptr %cond.i225, i64 %idxprom96.i319
  %368 = load ptr, ptr %arrayidx97.i320, align 8
  %pos_x99.i321 = getelementptr inbounds i8, ptr %pix_a.i212, i64 44
  %369 = load i16, ptr %pos_x99.i321, align 4
  %idxprom100.i322 = sext i16 %369 to i64
  %arrayidx101.i323 = getelementptr inbounds i16, ptr %368, i64 %idxprom100.i322
  %370 = load i16, ptr %arrayidx101.i323, align 2
  %pos_y102.i324 = getelementptr inbounds i8, ptr %pix_d.i214, i64 14
  %371 = load i16, ptr %pos_y102.i324, align 2
  %idxprom103.i325 = sext i16 %371 to i64
  %arrayidx104.i326 = getelementptr inbounds ptr, ptr %cond.i225, i64 %idxprom103.i325
  %372 = load ptr, ptr %arrayidx104.i326, align 8
  %pos_x105.i = getelementptr inbounds i8, ptr %pix_d.i214, i64 12
  %373 = load i16, ptr %pos_x105.i, align 4
  %idxprom106.i = sext i16 %373 to i64
  %arrayidx107.i = getelementptr inbounds i16, ptr %372, i64 %idxprom106.i
  %374 = load i16, ptr %arrayidx107.i, align 2
  %conv108.i = zext i16 %374 to i32
  %conv109.i327 = zext i16 %362 to i32
  %mul.i328 = shl nuw nsw i32 %conv109.i327, 1
  %conv111.i = zext i16 %366 to i32
  %add110.i329 = add nuw nsw i32 %mul.i328, 2
  %add112.i = add nuw nsw i32 %add110.i329, %conv111.i
  %add113.i = add nuw nsw i32 %add112.i, %conv108.i
  %shr.i330 = lshr i32 %add113.i, 2
  %conv114.i = trunc nuw i32 %shr.i330 to i16
  %conv117.i331 = zext i16 %355 to i32
  %add118.i332 = add nuw nsw i32 %conv117.i331, 1
  %add119.i = add nuw nsw i32 %add118.i332, %conv108.i
  %shr120.i = lshr i32 %add119.i, 1
  %conv121.i = trunc nuw i32 %shr120.i to i16
  %conv124.i = zext i16 %356 to i32
  %add126.i333 = add nuw nsw i32 %add118.i332, %conv124.i
  %shr127.i334 = lshr i32 %add126.i333, 1
  %conv128.i335 = trunc nuw i32 %shr127.i334 to i16
  %conv131.i = zext i16 %357 to i32
  %add132.i = add nuw nsw i32 %conv131.i, 1
  %add133.i = add nuw nsw i32 %add132.i, %conv124.i
  %shr134.i = lshr i32 %add133.i, 1
  %conv135.i = trunc nuw i32 %shr134.i to i16
  %conv138.i336 = zext i16 %358 to i32
  %add140.i338 = add nuw nsw i32 %add132.i, %conv138.i336
  %shr141.i339 = lshr i32 %add140.i338, 1
  %conv142.i340 = trunc nuw i32 %shr141.i339 to i16
  %mul146.i341 = shl nuw nsw i32 %conv111.i, 1
  %conv148.i342 = zext i16 %370 to i32
  %add147.i343 = add nuw nsw i32 %conv109.i327, 2
  %add149.i344 = add nuw nsw i32 %add147.i343, %mul146.i341
  %add150.i345 = add nuw nsw i32 %add149.i344, %conv148.i342
  %shr151.i346 = lshr i32 %add150.i345, 2
  %conv152.i347 = trunc nuw i32 %shr151.i346 to i16
  %mul156.i348 = shl nuw nsw i32 %conv108.i, 1
  %add157.i349 = add nuw nsw i32 %conv117.i331, 2
  %add159.i350 = add nuw nsw i32 %add157.i349, %conv109.i327
  %add160.i351 = add nuw nsw i32 %add159.i350, %mul156.i348
  %shr161.i352 = lshr i32 %add160.i351, 2
  %conv162.i353 = trunc nuw i32 %shr161.i352 to i16
  %mul166.i354 = shl nuw nsw i32 %conv117.i331, 1
  %add167.i = add nuw nsw i32 %conv124.i, 2
  %add169.i355 = add nuw nsw i32 %add167.i, %mul166.i354
  %add170.i356 = add nuw nsw i32 %add169.i355, %conv108.i
  %shr171.i357 = lshr i32 %add170.i356, 2
  %conv172.i358 = trunc nuw i32 %shr171.i357 to i16
  %mul176.i359 = shl nuw nsw i32 %conv124.i, 1
  %add179.i360 = add nuw nsw i32 %mul176.i359, %add157.i349
  %add180.i361 = add nuw nsw i32 %add179.i360, %conv131.i
  %shr181.i362 = lshr i32 %add180.i361, 2
  %conv182.i363 = trunc nuw i32 %shr181.i362 to i16
  %mul186.i = shl nuw nsw i32 %conv131.i, 1
  %add189.i = add nuw nsw i32 %mul186.i, %add167.i
  %add190.i = add nuw nsw i32 %add189.i, %conv138.i336
  %shr191.i = lshr i32 %add190.i, 2
  %conv192.i = trunc nuw i32 %shr191.i to i16
  %arrayidx196.i = getelementptr inbounds ptr, ptr %309, i64 %351
  %375 = load ptr, ptr %arrayidx196.i, align 8
  %idxprom197.i = sext i32 %ioff to i64
  %arrayidx198.i364 = getelementptr inbounds i16, ptr %375, i64 %idxprom197.i
  store i16 %conv121.i, ptr %arrayidx198.i364, align 2
  %PredPixel.sroa.6.2.arrayidx198.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx198.i364, i64 2
  store i16 %conv128.i335, ptr %PredPixel.sroa.6.2.arrayidx198.sroa_idx.i, align 2
  %PredPixel.sroa.7.2.arrayidx198.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx198.i364, i64 4
  store i16 %conv135.i, ptr %PredPixel.sroa.7.2.arrayidx198.sroa_idx.i, align 2
  %PredPixel.sroa.8.2.arrayidx198.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx198.i364, i64 6
  store i16 %conv142.i340, ptr %PredPixel.sroa.8.2.arrayidx198.sroa_idx.i, align 2
  %arrayidx202.i = getelementptr i8, ptr %arrayidx196.i, i64 8
  %376 = load ptr, ptr %arrayidx202.i, align 8
  %arrayidx204.i = getelementptr inbounds i16, ptr %376, i64 %idxprom197.i
  store i16 %conv162.i353, ptr %arrayidx204.i, align 2
  %PredPixel.sroa.13.12.arrayidx204.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx204.i, i64 2
  store i16 %conv172.i358, ptr %PredPixel.sroa.13.12.arrayidx204.sroa_idx.i, align 2
  %PredPixel.sroa.14.12.arrayidx204.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx204.i, i64 4
  store i16 %conv182.i363, ptr %PredPixel.sroa.14.12.arrayidx204.sroa_idx.i, align 2
  %PredPixel.sroa.15.12.arrayidx204.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx204.i, i64 6
  store i16 %conv192.i, ptr %PredPixel.sroa.15.12.arrayidx204.sroa_idx.i, align 2
  %arrayidx208.i = getelementptr i8, ptr %arrayidx196.i, i64 16
  %377 = load ptr, ptr %arrayidx208.i, align 8
  %arrayidx210.i = getelementptr inbounds i16, ptr %377, i64 %idxprom197.i
  store i16 %conv114.i, ptr %arrayidx210.i, align 2
  %PredPixel.sroa.4.0.arrayidx210.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx210.i, i64 2
  store i16 %conv121.i, ptr %PredPixel.sroa.4.0.arrayidx210.sroa_idx.i, align 2
  %PredPixel.sroa.6.0.arrayidx210.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx210.i, i64 4
  store i16 %conv128.i335, ptr %PredPixel.sroa.6.0.arrayidx210.sroa_idx.i, align 2
  %PredPixel.sroa.7.0.arrayidx210.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx210.i, i64 6
  store i16 %conv135.i, ptr %PredPixel.sroa.7.0.arrayidx210.sroa_idx.i, align 2
  %arrayidx213.i = getelementptr i8, ptr %arrayidx196.i, i64 24
  %378 = load ptr, ptr %arrayidx213.i, align 8
  %arrayidx215.i = getelementptr inbounds i16, ptr %378, i64 %idxprom197.i
  store i16 %conv152.i347, ptr %arrayidx215.i, align 2
  %PredPixel.sroa.11.10.arrayidx215.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx215.i, i64 2
  store i16 %conv162.i353, ptr %PredPixel.sroa.11.10.arrayidx215.sroa_idx.i, align 2
  %PredPixel.sroa.13.10.arrayidx215.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx215.i, i64 4
  store i16 %conv172.i358, ptr %PredPixel.sroa.13.10.arrayidx215.sroa_idx.i, align 2
  %PredPixel.sroa.14.10.arrayidx215.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx215.i, i64 6
  store i16 %conv182.i363, ptr %PredPixel.sroa.14.10.arrayidx215.sroa_idx.i, align 2
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pix_d.i214) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pix_b.i213) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %pix_a.i212) #5
  br label %cleanup

sw.bb14:                                          ; preds = %entry
  %379 = load ptr, ptr %currMB, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pix_b.i368) #5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pix_c.i369) #5
  %getNeighbour.i371 = getelementptr inbounds i8, ptr %0, i64 856744
  %380 = load ptr, ptr %getNeighbour.i371, align 8
  %sub.i372 = add nsw i32 %joff, -1
  %mb_size.i373 = getelementptr inbounds i8, ptr %0, i64 849124
  call void %380(ptr noundef nonnull %currMB, i32 noundef %ioff, i32 noundef %sub.i372, ptr noundef nonnull %mb_size.i373, ptr noundef nonnull %pix_b.i368) #5
  %381 = load ptr, ptr %getNeighbour.i371, align 8
  %add.i374 = add nsw i32 %ioff, 4
  call void %381(ptr noundef nonnull %currMB, i32 noundef %add.i374, i32 noundef %sub.i372, ptr noundef nonnull %mb_size.i373, ptr noundef nonnull %pix_c.i369) #5
  %382 = load i32, ptr %pix_c.i369, align 4
  %tobool.not.i375 = icmp eq i32 %382, 0
  br i1 %tobool.not.i375, label %land.end10.i380, label %land.rhs.i376

land.rhs.i376:                                    ; preds = %sw.bb14
  %cmp.i377 = icmp ne i32 %ioff, 4
  %383 = and i32 %joff, -9
  %384 = icmp ne i32 %383, 4
  %narrow.i378 = or i1 %cmp.i377, %384
  %lnot.i379 = zext i1 %narrow.i378 to i32
  br label %land.end10.i380

land.end10.i380:                                  ; preds = %land.rhs.i376, %sw.bb14
  %land.ext.i381 = phi i32 [ 0, %sw.bb14 ], [ %lnot.i379, %land.rhs.i376 ]
  store i32 %land.ext.i381, ptr %pix_c.i369, align 4
  %active_pps.i382 = getelementptr inbounds i8, ptr %0, i64 8
  %385 = load ptr, ptr %active_pps.i382, align 8
  %constrained_intra_pred_flag.i383 = getelementptr inbounds i8, ptr %385, i64 2204
  %386 = load i32, ptr %constrained_intra_pred_flag.i383, align 4
  %tobool12.not.i384 = icmp eq i32 %386, 0
  %387 = load i32, ptr %pix_b.i368, align 4
  br i1 %tobool12.not.i384, label %if.end.i402, label %if.then.i385

if.then.i385:                                     ; preds = %land.end10.i380
  %tobool14.not.i386 = icmp eq i32 %387, 0
  br i1 %tobool14.not.i386, label %cond.end.i393, label %cond.true.i387

cond.true.i387:                                   ; preds = %if.then.i385
  %intra_block.i388 = getelementptr inbounds i8, ptr %379, i64 13544
  %388 = load ptr, ptr %intra_block.i388, align 8
  %mb_addr.i389 = getelementptr inbounds i8, ptr %pix_b.i368, i64 4
  %389 = load i32, ptr %mb_addr.i389, align 4
  %idxprom.i390 = sext i32 %389 to i64
  %arrayidx15.i391 = getelementptr inbounds i8, ptr %388, i64 %idxprom.i390
  %390 = load i8, ptr %arrayidx15.i391, align 1
  %conv.i392 = sext i8 %390 to i32
  br label %cond.end.i393

cond.end.i393:                                    ; preds = %cond.true.i387, %if.then.i385
  %cond.i394 = phi i32 [ %conv.i392, %cond.true.i387 ], [ 0, %if.then.i385 ]
  %tobool17.not.i395 = icmp eq i32 %land.ext.i381, 0
  br i1 %tobool17.not.i395, label %if.end.i402, label %cond.true18.i396

cond.true18.i396:                                 ; preds = %cond.end.i393
  %intra_block19.i397 = getelementptr inbounds i8, ptr %379, i64 13544
  %391 = load ptr, ptr %intra_block19.i397, align 8
  %mb_addr20.i398 = getelementptr inbounds i8, ptr %pix_c.i369, i64 4
  %392 = load i32, ptr %mb_addr20.i398, align 4
  %idxprom21.i399 = sext i32 %392 to i64
  %arrayidx22.i400 = getelementptr inbounds i8, ptr %391, i64 %idxprom21.i399
  %393 = load i8, ptr %arrayidx22.i400, align 1
  %conv23.i401 = sext i8 %393 to i32
  br label %if.end.i402

if.end.i402:                                      ; preds = %cond.true18.i396, %cond.end.i393, %land.end10.i380
  %block_available_up_right.0.i403 = phi i32 [ %conv23.i401, %cond.true18.i396 ], [ 0, %cond.end.i393 ], [ %land.ext.i381, %land.end10.i380 ]
  %block_available_up.0.i404 = phi i32 [ %cond.i394, %cond.true18.i396 ], [ %cond.i394, %cond.end.i393 ], [ %387, %land.end10.i380 ]
  %tobool29.not.i405 = icmp eq i32 %block_available_up.0.i404, 0
  br i1 %tobool29.not.i405, label %if.then30.i460, label %if.end31.i

if.then30.i460:                                   ; preds = %if.end.i402
  %current_mb_nr.i461 = getelementptr inbounds i8, ptr %379, i64 108
  %394 = load i32, ptr %current_mb_nr.i461, align 4
  %call.i462 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %394)
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.then30.i460, %if.end.i402
  %tobool32.not.i406 = icmp eq i32 %pl, 0
  %dec_picture38.i407 = getelementptr inbounds i8, ptr %379, i64 13520
  %395 = load ptr, ptr %dec_picture38.i407, align 8
  br i1 %tobool32.not.i406, label %cond.false37.i458, label %cond.true33.i408

cond.true33.i408:                                 ; preds = %if.end31.i
  %imgUV.i409 = getelementptr inbounds i8, ptr %395, i64 136
  %396 = load ptr, ptr %imgUV.i409, align 8
  %sub34.i410 = add i32 %pl, -1
  %idxprom35.i411 = zext i32 %sub34.i410 to i64
  %arrayidx36.i412 = getelementptr inbounds ptr, ptr %396, i64 %idxprom35.i411
  br label %cond.end40.i413

cond.false37.i458:                                ; preds = %if.end31.i
  %imgY39.i459 = getelementptr inbounds i8, ptr %395, i64 128
  br label %cond.end40.i413

cond.end40.i413:                                  ; preds = %cond.false37.i458, %cond.true33.i408
  %cond41.in.i414 = phi ptr [ %arrayidx36.i412, %cond.true33.i408 ], [ %imgY39.i459, %cond.false37.i458 ]
  %cond41.i415 = load ptr, ptr %cond41.in.i414, align 8
  %mb_pred42.i416 = getelementptr inbounds i8, ptr %379, i64 1248
  %397 = load ptr, ptr %mb_pred42.i416, align 8
  %idxprom43.i417 = zext i32 %pl to i64
  %arrayidx44.i418 = getelementptr inbounds ptr, ptr %397, i64 %idxprom43.i417
  %398 = load ptr, ptr %arrayidx44.i418, align 8
  %pos_y.i419 = getelementptr inbounds i8, ptr %pix_b.i368, i64 14
  %399 = load i16, ptr %pos_y.i419, align 2
  %idxprom45.i420 = sext i16 %399 to i64
  %arrayidx46.i421 = getelementptr inbounds ptr, ptr %cond41.i415, i64 %idxprom45.i420
  %400 = load ptr, ptr %arrayidx46.i421, align 8
  %pos_x.i422 = getelementptr inbounds i8, ptr %pix_b.i368, i64 12
  %401 = load i16, ptr %pos_x.i422, align 4
  %idxprom47.i423 = sext i16 %401 to i64
  %arrayidx48.i424 = getelementptr inbounds i16, ptr %400, i64 %idxprom47.i423
  %incdec.ptr.i425 = getelementptr inbounds i8, ptr %arrayidx48.i424, i64 2
  %402 = load i16, ptr %arrayidx48.i424, align 2
  %incdec.ptr49.i426 = getelementptr inbounds i8, ptr %arrayidx48.i424, i64 4
  %403 = load i16, ptr %incdec.ptr.i425, align 2
  %incdec.ptr50.i427 = getelementptr inbounds i8, ptr %arrayidx48.i424, i64 6
  %404 = load i16, ptr %incdec.ptr49.i426, align 2
  %405 = load i16, ptr %incdec.ptr50.i427, align 2
  %tobool51.not.i428 = icmp eq i32 %block_available_up_right.0.i403, 0
  br i1 %tobool51.not.i428, label %intra4x4_vert_left_pred_mbaff.exit, label %if.then52.i429

if.then52.i429:                                   ; preds = %cond.end40.i413
  %pos_y54.i = getelementptr inbounds i8, ptr %pix_c.i369, i64 14
  %406 = load i16, ptr %pos_y54.i, align 2
  %idxprom55.i = sext i16 %406 to i64
  %arrayidx56.i = getelementptr inbounds ptr, ptr %cond41.i415, i64 %idxprom55.i
  %407 = load ptr, ptr %arrayidx56.i, align 8
  %pos_x57.i = getelementptr inbounds i8, ptr %pix_c.i369, i64 12
  %408 = load i16, ptr %pos_x57.i, align 4
  %idxprom58.i = sext i16 %408 to i64
  %arrayidx59.i = getelementptr inbounds i16, ptr %407, i64 %idxprom58.i
  %incdec.ptr60.i430 = getelementptr inbounds i8, ptr %arrayidx59.i, i64 2
  %409 = load i16, ptr %arrayidx59.i, align 2
  %incdec.ptr61.i431 = getelementptr inbounds i8, ptr %arrayidx59.i, i64 4
  %410 = load i16, ptr %incdec.ptr60.i430, align 2
  %411 = load i16, ptr %incdec.ptr61.i431, align 2
  br label %intra4x4_vert_left_pred_mbaff.exit

intra4x4_vert_left_pred_mbaff.exit:               ; preds = %cond.end40.i413, %if.then52.i429
  %p_e.0.i432 = phi i16 [ %409, %if.then52.i429 ], [ %405, %cond.end40.i413 ]
  %p_f.0.i433 = phi i16 [ %410, %if.then52.i429 ], [ %405, %cond.end40.i413 ]
  %p_g.0.i434 = phi i16 [ %411, %if.then52.i429 ], [ %405, %cond.end40.i413 ]
  %conv65.i435 = zext i16 %402 to i32
  %conv66.i436 = zext i16 %403 to i32
  %add67.i437 = add nuw nsw i32 %conv66.i436, 1
  %add68.i438 = add nuw nsw i32 %add67.i437, %conv65.i435
  %shr.i439 = lshr i32 %add68.i438, 1
  %conv69.i = trunc nuw i32 %shr.i439 to i16
  %conv72.i = zext i16 %404 to i32
  %add74.i440 = add nuw nsw i32 %add67.i437, %conv72.i
  %shr75.i = lshr i32 %add74.i440, 1
  %conv76.i441 = trunc nuw i32 %shr75.i to i16
  %conv79.i = zext i16 %405 to i32
  %add80.i = add nuw nsw i32 %conv79.i, 1
  %add81.i = add nuw nsw i32 %add80.i, %conv72.i
  %shr82.i = lshr i32 %add81.i, 1
  %conv83.i442 = trunc nuw i32 %shr82.i to i16
  %conv86.i443 = zext i16 %p_e.0.i432 to i32
  %add88.i445 = add nuw nsw i32 %add80.i, %conv86.i443
  %shr89.i446 = lshr i32 %add88.i445, 1
  %conv90.i447 = trunc nuw i32 %shr89.i446 to i16
  %conv93.i448 = zext i16 %p_f.0.i433 to i32
  %add94.i = add nuw nsw i32 %conv86.i443, 1
  %add95.i = add nuw nsw i32 %add94.i, %conv93.i448
  %shr96.i = lshr i32 %add95.i, 1
  %conv97.i = trunc nuw i32 %shr96.i to i16
  %mul.i449 = shl nuw nsw i32 %conv66.i436, 1
  %add101.i = add nuw nsw i32 %conv72.i, 2
  %add103.i = add nuw nsw i32 %mul.i449, %conv65.i435
  %add104.i450 = add nuw nsw i32 %add103.i, %add101.i
  %shr105.i = lshr i32 %add104.i450, 2
  %conv106.i = trunc nuw i32 %shr105.i to i16
  %mul110.i = shl nuw nsw i32 %conv72.i, 1
  %add111.i = add nuw nsw i32 %conv79.i, 2
  %add113.i451 = add nuw nsw i32 %mul110.i, %conv66.i436
  %add114.i452 = add nuw nsw i32 %add113.i451, %add111.i
  %shr115.i = lshr i32 %add114.i452, 2
  %conv116.i453 = trunc nuw i32 %shr115.i to i16
  %mul120.i = shl nuw nsw i32 %conv79.i, 1
  %add123.i = add nuw nsw i32 %mul120.i, %add101.i
  %add124.i = add nuw nsw i32 %add123.i, %conv86.i443
  %shr125.i = lshr i32 %add124.i, 2
  %conv126.i = trunc nuw i32 %shr125.i to i16
  %mul130.i = shl nuw nsw i32 %conv86.i443, 1
  %add133.i454 = add nuw nsw i32 %mul130.i, %add111.i
  %add134.i = add nuw nsw i32 %add133.i454, %conv93.i448
  %shr135.i = lshr i32 %add134.i, 2
  %conv136.i = trunc nuw i32 %shr135.i to i16
  %mul140.i = shl nuw nsw i32 %conv93.i448, 1
  %conv142.i455 = zext i16 %p_g.0.i434 to i32
  %add141.i456 = add nuw nsw i32 %conv86.i443, 2
  %add143.i = add nuw nsw i32 %add141.i456, %mul140.i
  %add144.i = add nuw nsw i32 %add143.i, %conv142.i455
  %shr145.i = lshr i32 %add144.i, 2
  %conv146.i = trunc nuw i32 %shr145.i to i16
  %idxprom148.i = sext i32 %joff to i64
  %arrayidx149.i = getelementptr inbounds ptr, ptr %398, i64 %idxprom148.i
  %412 = load ptr, ptr %arrayidx149.i, align 8
  %idxprom150.i = sext i32 %ioff to i64
  %arrayidx151.i = getelementptr inbounds i16, ptr %412, i64 %idxprom150.i
  store i16 %conv69.i, ptr %arrayidx151.i, align 2
  %PredPixel.sroa.4.0.arrayidx151.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx151.i, i64 2
  store i16 %conv76.i441, ptr %PredPixel.sroa.4.0.arrayidx151.sroa_idx.i, align 2
  %PredPixel.sroa.6.0.arrayidx151.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx151.i, i64 4
  store i16 %conv83.i442, ptr %PredPixel.sroa.6.0.arrayidx151.sroa_idx.i, align 2
  %PredPixel.sroa.7.0.arrayidx151.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx151.i, i64 6
  store i16 %conv90.i447, ptr %PredPixel.sroa.7.0.arrayidx151.sroa_idx.i, align 2
  %arrayidx155.i = getelementptr i8, ptr %arrayidx149.i, i64 8
  %413 = load ptr, ptr %arrayidx155.i, align 8
  %arrayidx157.i = getelementptr inbounds i16, ptr %413, i64 %idxprom150.i
  store i16 %conv106.i, ptr %arrayidx157.i, align 2
  %PredPixel.sroa.11.10.arrayidx157.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx157.i, i64 2
  store i16 %conv116.i453, ptr %PredPixel.sroa.11.10.arrayidx157.sroa_idx.i, align 2
  %PredPixel.sroa.13.10.arrayidx157.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx157.i, i64 4
  store i16 %conv126.i, ptr %PredPixel.sroa.13.10.arrayidx157.sroa_idx.i, align 2
  %PredPixel.sroa.14.10.arrayidx157.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx157.i, i64 6
  store i16 %conv136.i, ptr %PredPixel.sroa.14.10.arrayidx157.sroa_idx.i, align 2
  %arrayidx161.i = getelementptr i8, ptr %arrayidx149.i, i64 16
  %414 = load ptr, ptr %arrayidx161.i, align 8
  %arrayidx163.i457 = getelementptr inbounds i16, ptr %414, i64 %idxprom150.i
  store i16 %conv76.i441, ptr %arrayidx163.i457, align 2
  %PredPixel.sroa.6.2.arrayidx163.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx163.i457, i64 2
  store i16 %conv83.i442, ptr %PredPixel.sroa.6.2.arrayidx163.sroa_idx.i, align 2
  %PredPixel.sroa.7.2.arrayidx163.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx163.i457, i64 4
  store i16 %conv90.i447, ptr %PredPixel.sroa.7.2.arrayidx163.sroa_idx.i, align 2
  %PredPixel.sroa.8.2.arrayidx163.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx163.i457, i64 6
  store i16 %conv97.i, ptr %PredPixel.sroa.8.2.arrayidx163.sroa_idx.i, align 2
  %arrayidx166.i = getelementptr i8, ptr %arrayidx149.i, i64 24
  %415 = load ptr, ptr %arrayidx166.i, align 8
  %arrayidx168.i = getelementptr inbounds i16, ptr %415, i64 %idxprom150.i
  store i16 %conv116.i453, ptr %arrayidx168.i, align 2
  %PredPixel.sroa.13.12.arrayidx168.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx168.i, i64 2
  store i16 %conv126.i, ptr %PredPixel.sroa.13.12.arrayidx168.sroa_idx.i, align 2
  %PredPixel.sroa.14.12.arrayidx168.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx168.i, i64 4
  store i16 %conv136.i, ptr %PredPixel.sroa.14.12.arrayidx168.sroa_idx.i, align 2
  %PredPixel.sroa.15.12.arrayidx168.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx168.i, i64 6
  store i16 %conv146.i, ptr %PredPixel.sroa.15.12.arrayidx168.sroa_idx.i, align 2
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pix_c.i369) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pix_b.i368) #5
  br label %cleanup

sw.bb16:                                          ; preds = %entry
  %416 = load ptr, ptr %currMB, align 8
  %tobool.not.i465 = icmp eq i32 %pl, 0
  %dec_picture2.i466 = getelementptr inbounds i8, ptr %416, i64 13520
  %417 = load ptr, ptr %dec_picture2.i466, align 8
  br i1 %tobool.not.i465, label %cond.false.i554, label %cond.true.i467

cond.true.i467:                                   ; preds = %sw.bb16
  %imgUV.i468 = getelementptr inbounds i8, ptr %417, i64 136
  %418 = load ptr, ptr %imgUV.i468, align 8
  %sub.i469 = add i32 %pl, -1
  %idxprom.i470 = zext i32 %sub.i469 to i64
  %arrayidx.i471 = getelementptr inbounds ptr, ptr %418, i64 %idxprom.i470
  br label %cond.end.i472

cond.false.i554:                                  ; preds = %sw.bb16
  %imgY3.i555 = getelementptr inbounds i8, ptr %417, i64 128
  br label %cond.end.i472

cond.end.i472:                                    ; preds = %cond.false.i554, %cond.true.i467
  %cond.in.i473 = phi ptr [ %arrayidx.i471, %cond.true.i467 ], [ %imgY3.i555, %cond.false.i554 ]
  %cond.i474 = load ptr, ptr %cond.in.i473, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %pix_a.i463) #5
  %mb_pred4.i475 = getelementptr inbounds i8, ptr %416, i64 1248
  %419 = load ptr, ptr %mb_pred4.i475, align 8
  %idxprom5.i476 = zext i32 %pl to i64
  %arrayidx6.i477 = getelementptr inbounds ptr, ptr %419, i64 %idxprom5.i476
  %420 = load ptr, ptr %arrayidx6.i477, align 8
  %getNeighbour.i478 = getelementptr inbounds i8, ptr %0, i64 856744
  %sub7.i479 = add nsw i32 %ioff, -1
  %mb_size.i480 = getelementptr inbounds i8, ptr %0, i64 849124
  %421 = sext i32 %joff to i64
  %422 = load ptr, ptr %getNeighbour.i478, align 8
  call void %422(ptr noundef nonnull %currMB, i32 noundef %sub7.i479, i32 noundef %joff, ptr noundef nonnull %mb_size.i480, ptr noundef nonnull %pix_a.i463) #5
  %423 = load ptr, ptr %getNeighbour.i478, align 8
  %424 = add i32 %joff, 1
  %arrayidx10.1.i481 = getelementptr inbounds i8, ptr %pix_a.i463, i64 16
  call void %423(ptr noundef nonnull %currMB, i32 noundef %sub7.i479, i32 noundef %424, ptr noundef nonnull %mb_size.i480, ptr noundef nonnull %arrayidx10.1.i481) #5
  %425 = load ptr, ptr %getNeighbour.i478, align 8
  %426 = add i32 %joff, 2
  %arrayidx10.2.i482 = getelementptr inbounds i8, ptr %pix_a.i463, i64 32
  call void %425(ptr noundef nonnull %currMB, i32 noundef %sub7.i479, i32 noundef %426, ptr noundef nonnull %mb_size.i480, ptr noundef nonnull %arrayidx10.2.i482) #5
  %427 = load ptr, ptr %getNeighbour.i478, align 8
  %428 = add i32 %joff, 3
  %arrayidx10.3.i483 = getelementptr inbounds i8, ptr %pix_a.i463, i64 48
  call void %427(ptr noundef nonnull %currMB, i32 noundef %sub7.i479, i32 noundef %428, ptr noundef nonnull %mb_size.i480, ptr noundef nonnull %arrayidx10.3.i483) #5
  %active_pps.i484 = getelementptr inbounds i8, ptr %0, i64 8
  %429 = load ptr, ptr %active_pps.i484, align 8
  %constrained_intra_pred_flag.i485 = getelementptr inbounds i8, ptr %429, i64 2204
  %430 = load i32, ptr %constrained_intra_pred_flag.i485, align 4
  %tobool11.not.i486 = icmp eq i32 %430, 0
  br i1 %tobool11.not.i486, label %if.else.i553, label %for.cond12.preheader.i487

for.cond12.preheader.i487:                        ; preds = %cond.end.i472
  %intra_block.i488 = getelementptr inbounds i8, ptr %416, i64 13544
  %431 = load i32, ptr %pix_a.i463, align 16
  %tobool17.not.i489 = icmp eq i32 %431, 0
  br i1 %tobool17.not.i489, label %cond.end24.i494, label %cond.true18.i490

cond.true18.i490:                                 ; preds = %for.cond12.preheader.i487
  %432 = load ptr, ptr %intra_block.i488, align 8
  %mb_addr.i491 = getelementptr inbounds i8, ptr %pix_a.i463, i64 4
  %433 = load i32, ptr %mb_addr.i491, align 4
  %idxprom21.i492 = sext i32 %433 to i64
  %arrayidx22.i493 = getelementptr inbounds i8, ptr %432, i64 %idxprom21.i492
  %434 = load i8, ptr %arrayidx22.i493, align 1
  %435 = and i8 %434, 1
  %436 = zext nneg i8 %435 to i32
  br label %cond.end24.i494

cond.end24.i494:                                  ; preds = %cond.true18.i490, %for.cond12.preheader.i487
  %cond25.i495 = phi i32 [ %436, %cond.true18.i490 ], [ 0, %for.cond12.preheader.i487 ]
  %437 = load i32, ptr %arrayidx10.1.i481, align 16
  %tobool17.not.1.i496 = icmp eq i32 %437, 0
  br i1 %tobool17.not.1.i496, label %cond.end24.1.i501, label %cond.true18.1.i497

cond.true18.1.i497:                               ; preds = %cond.end24.i494
  %438 = load ptr, ptr %intra_block.i488, align 8
  %mb_addr.1.i498 = getelementptr inbounds i8, ptr %pix_a.i463, i64 20
  %439 = load i32, ptr %mb_addr.1.i498, align 4
  %idxprom21.1.i499 = sext i32 %439 to i64
  %arrayidx22.1.i500 = getelementptr inbounds i8, ptr %438, i64 %idxprom21.1.i499
  %440 = load i8, ptr %arrayidx22.1.i500, align 1
  %conv.1196.i = zext i8 %440 to i32
  br label %cond.end24.1.i501

cond.end24.1.i501:                                ; preds = %cond.true18.1.i497, %cond.end24.i494
  %cond25.1.i502 = phi i32 [ %conv.1196.i, %cond.true18.1.i497 ], [ 0, %cond.end24.i494 ]
  %and.1.i503 = and i32 %cond25.1.i502, %cond25.i495
  %441 = load i32, ptr %arrayidx10.2.i482, align 16
  %tobool17.not.2.i504 = icmp eq i32 %441, 0
  br i1 %tobool17.not.2.i504, label %cond.end24.2.i509, label %cond.true18.2.i505

cond.true18.2.i505:                               ; preds = %cond.end24.1.i501
  %442 = load ptr, ptr %intra_block.i488, align 8
  %mb_addr.2.i506 = getelementptr inbounds i8, ptr %pix_a.i463, i64 36
  %443 = load i32, ptr %mb_addr.2.i506, align 4
  %idxprom21.2.i507 = sext i32 %443 to i64
  %arrayidx22.2.i508 = getelementptr inbounds i8, ptr %442, i64 %idxprom21.2.i507
  %444 = load i8, ptr %arrayidx22.2.i508, align 1
  %conv.2197.i = zext i8 %444 to i32
  br label %cond.end24.2.i509

cond.end24.2.i509:                                ; preds = %cond.true18.2.i505, %cond.end24.1.i501
  %cond25.2.i510 = phi i32 [ %conv.2197.i, %cond.true18.2.i505 ], [ 0, %cond.end24.1.i501 ]
  %and.2.i511 = and i32 %and.1.i503, %cond25.2.i510
  %445 = load i32, ptr %arrayidx10.3.i483, align 16
  %tobool17.not.3.i512 = icmp eq i32 %445, 0
  br i1 %tobool17.not.3.i512, label %cond.end24.3.i517, label %cond.true18.3.i513

cond.true18.3.i513:                               ; preds = %cond.end24.2.i509
  %446 = load ptr, ptr %intra_block.i488, align 8
  %mb_addr.3.i514 = getelementptr inbounds i8, ptr %pix_a.i463, i64 52
  %447 = load i32, ptr %mb_addr.3.i514, align 4
  %idxprom21.3.i515 = sext i32 %447 to i64
  %arrayidx22.3.i516 = getelementptr inbounds i8, ptr %446, i64 %idxprom21.3.i515
  %448 = load i8, ptr %arrayidx22.3.i516, align 1
  %conv.3198.i = zext i8 %448 to i32
  br label %cond.end24.3.i517

cond.end24.3.i517:                                ; preds = %cond.true18.3.i513, %cond.end24.2.i509
  %cond25.3.i518 = phi i32 [ %conv.3198.i, %cond.true18.3.i513 ], [ 0, %cond.end24.2.i509 ]
  %and.3.i519 = and i32 %and.2.i511, %cond25.3.i518
  br label %if.end.i520

if.else.i553:                                     ; preds = %cond.end.i472
  %449 = load i32, ptr %pix_a.i463, align 16
  br label %if.end.i520

if.end.i520:                                      ; preds = %if.else.i553, %cond.end24.3.i517
  %block_available_left.1.i521 = phi i32 [ %449, %if.else.i553 ], [ %and.3.i519, %cond.end24.3.i517 ]
  %tobool31.not.i522 = icmp eq i32 %block_available_left.1.i521, 0
  br i1 %tobool31.not.i522, label %if.then32.i550, label %if.else33.i

if.then32.i550:                                   ; preds = %if.end.i520
  %current_mb_nr.i551 = getelementptr inbounds i8, ptr %416, i64 108
  %450 = load i32, ptr %current_mb_nr.i551, align 4
  %call.i552 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %450)
  br label %intra4x4_hor_up_pred_mbaff.exit

if.else33.i:                                      ; preds = %if.end.i520
  %pos_y.i523 = getelementptr inbounds i8, ptr %pix_a.i463, i64 14
  %451 = load i16, ptr %pos_y.i523, align 2
  %idxprom35.i524 = sext i16 %451 to i64
  %arrayidx36.i525 = getelementptr inbounds ptr, ptr %cond.i474, i64 %idxprom35.i524
  %452 = load ptr, ptr %arrayidx36.i525, align 8
  %pos_x.i526 = getelementptr inbounds i8, ptr %pix_a.i463, i64 12
  %453 = load i16, ptr %pos_x.i526, align 4
  %idxprom38.i = sext i16 %453 to i64
  %arrayidx39.i527 = getelementptr inbounds i16, ptr %452, i64 %idxprom38.i
  %454 = load i16, ptr %arrayidx39.i527, align 2
  %pos_y41.i = getelementptr inbounds i8, ptr %pix_a.i463, i64 30
  %455 = load i16, ptr %pos_y41.i, align 2
  %idxprom42.i = sext i16 %455 to i64
  %arrayidx43.i = getelementptr inbounds ptr, ptr %cond.i474, i64 %idxprom42.i
  %456 = load ptr, ptr %arrayidx43.i, align 8
  %pos_x45.i = getelementptr inbounds i8, ptr %pix_a.i463, i64 28
  %457 = load i16, ptr %pos_x45.i, align 4
  %idxprom46.i = sext i16 %457 to i64
  %arrayidx47.i = getelementptr inbounds i16, ptr %456, i64 %idxprom46.i
  %458 = load i16, ptr %arrayidx47.i, align 2
  %pos_y49.i = getelementptr inbounds i8, ptr %pix_a.i463, i64 46
  %459 = load i16, ptr %pos_y49.i, align 2
  %idxprom50.i528 = sext i16 %459 to i64
  %arrayidx51.i529 = getelementptr inbounds ptr, ptr %cond.i474, i64 %idxprom50.i528
  %460 = load ptr, ptr %arrayidx51.i529, align 8
  %pos_x53.i = getelementptr inbounds i8, ptr %pix_a.i463, i64 44
  %461 = load i16, ptr %pos_x53.i, align 4
  %idxprom54.i530 = sext i16 %461 to i64
  %arrayidx55.i531 = getelementptr inbounds i16, ptr %460, i64 %idxprom54.i530
  %462 = load i16, ptr %arrayidx55.i531, align 2
  %pos_y57.i = getelementptr inbounds i8, ptr %pix_a.i463, i64 62
  %463 = load i16, ptr %pos_y57.i, align 2
  %idxprom58.i532 = sext i16 %463 to i64
  %arrayidx59.i533 = getelementptr inbounds ptr, ptr %cond.i474, i64 %idxprom58.i532
  %464 = load ptr, ptr %arrayidx59.i533, align 8
  %pos_x61.i = getelementptr inbounds i8, ptr %pix_a.i463, i64 60
  %465 = load i16, ptr %pos_x61.i, align 4
  %idxprom62.i = sext i16 %465 to i64
  %arrayidx63.i = getelementptr inbounds i16, ptr %464, i64 %idxprom62.i
  %466 = load i16, ptr %arrayidx63.i, align 2
  %conv64.i534 = zext i16 %454 to i32
  %conv65.i535 = zext i16 %458 to i32
  %add66.i536 = add nuw nsw i32 %conv65.i535, 1
  %add67.i537 = add nuw nsw i32 %add66.i536, %conv64.i534
  %shr.i538 = lshr i32 %add67.i537, 1
  %conv68.i = trunc nuw i32 %shr.i538 to i16
  %mul.i539 = shl nuw nsw i32 %conv65.i535, 1
  %conv73.i540 = zext i16 %462 to i32
  %add72.i = add nuw nsw i32 %conv73.i540, 2
  %add74.i541 = add nuw nsw i32 %mul.i539, %conv64.i534
  %add75.i = add nuw nsw i32 %add74.i541, %add72.i
  %shr76.i = lshr i32 %add75.i, 2
  %conv77.i = trunc nuw i32 %shr76.i to i16
  %add82.i = add nuw nsw i32 %add66.i536, %conv73.i540
  %shr83.i = lshr i32 %add82.i, 1
  %conv84.i = trunc nuw i32 %shr83.i to i16
  %mul88.i = shl nuw nsw i32 %conv73.i540, 1
  %conv90.i542 = zext i16 %466 to i32
  %add89.i = add nuw nsw i32 %conv65.i535, 2
  %add91.i = add nuw nsw i32 %add89.i, %mul88.i
  %add92.i = add nuw nsw i32 %add91.i, %conv90.i542
  %shr93.i = lshr i32 %add92.i, 2
  %conv94.i = trunc nuw i32 %shr93.i to i16
  %add98.i543 = add nuw nsw i32 %conv73.i540, 1
  %add99.i = add nuw nsw i32 %add98.i543, %conv90.i542
  %shr100.i = lshr i32 %add99.i, 1
  %conv101.i = trunc nuw i32 %shr100.i to i16
  %mul105.i = shl nuw nsw i32 %conv90.i542, 1
  %add108.i544 = add nuw nsw i32 %add72.i, %conv90.i542
  %add109.i = add nuw nsw i32 %add108.i544, %mul105.i
  %shr110.i = lshr i32 %add109.i, 2
  %conv111.i545 = trunc nuw i32 %shr110.i to i16
  %arrayidx119.i = getelementptr inbounds ptr, ptr %420, i64 %421
  %467 = load ptr, ptr %arrayidx119.i, align 8
  %idxprom120.i = sext i32 %ioff to i64
  %arrayidx121.i = getelementptr inbounds i16, ptr %467, i64 %idxprom120.i
  store i16 %conv68.i, ptr %arrayidx121.i, align 2
  %PredPixel.sroa.4.0.arrayidx121.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx121.i, i64 2
  store i16 %conv77.i, ptr %PredPixel.sroa.4.0.arrayidx121.sroa_idx.i, align 2
  %PredPixel.sroa.5.0.arrayidx121.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx121.i, i64 4
  store i16 %conv84.i, ptr %PredPixel.sroa.5.0.arrayidx121.sroa_idx.i, align 2
  %PredPixel.sroa.7.0.arrayidx121.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx121.i, i64 6
  store i16 %conv94.i, ptr %PredPixel.sroa.7.0.arrayidx121.sroa_idx.i, align 2
  %arrayidx125.i = getelementptr i8, ptr %arrayidx119.i, i64 8
  %468 = load ptr, ptr %arrayidx125.i, align 8
  %arrayidx127.i = getelementptr inbounds i16, ptr %468, i64 %idxprom120.i
  store i16 %conv84.i, ptr %arrayidx127.i, align 2
  %PredPixel.sroa.7.4.arrayidx127.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx127.i, i64 2
  store i16 %conv94.i, ptr %PredPixel.sroa.7.4.arrayidx127.sroa_idx.i, align 2
  %PredPixel.sroa.8.4.arrayidx127.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx127.i, i64 4
  store i16 %conv101.i, ptr %PredPixel.sroa.8.4.arrayidx127.sroa_idx.i, align 2
  %PredPixel.sroa.10.4.arrayidx127.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx127.i, i64 6
  store i16 %conv111.i545, ptr %PredPixel.sroa.10.4.arrayidx127.sroa_idx.i, align 2
  %arrayidx131.i546 = getelementptr i8, ptr %arrayidx119.i, i64 16
  %469 = load ptr, ptr %arrayidx131.i546, align 8
  %arrayidx133.i547 = getelementptr inbounds i16, ptr %469, i64 %idxprom120.i
  store i16 %conv101.i, ptr %arrayidx133.i547, align 2
  %PredPixel.sroa.10.8.arrayidx133.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx133.i547, i64 2
  store i16 %conv111.i545, ptr %PredPixel.sroa.10.8.arrayidx133.sroa_idx.i, align 2
  %PredPixel.sroa.11.8.arrayidx133.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx133.i547, i64 4
  store i16 %466, ptr %PredPixel.sroa.11.8.arrayidx133.sroa_idx.i, align 2
  %PredPixel.sroa.13.8.arrayidx133.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx133.i547, i64 6
  store i16 %466, ptr %PredPixel.sroa.13.8.arrayidx133.sroa_idx.i, align 2
  %arrayidx137.i548 = getelementptr i8, ptr %arrayidx119.i, i64 24
  %470 = load ptr, ptr %arrayidx137.i548, align 8
  %arrayidx139.i549 = getelementptr inbounds i16, ptr %470, i64 %idxprom120.i
  %471 = insertelement <4 x i16> poison, i16 %466, i64 0
  %472 = shufflevector <4 x i16> %471, <4 x i16> poison, <4 x i32> zeroinitializer
  store <4 x i16> %472, ptr %arrayidx139.i549, align 2
  br label %intra4x4_hor_up_pred_mbaff.exit

intra4x4_hor_up_pred_mbaff.exit:                  ; preds = %if.then32.i550, %if.else33.i
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %pix_a.i463) #5
  br label %cleanup

sw.bb18:                                          ; preds = %entry
  %473 = load ptr, ptr %currMB, align 8
  %tobool.not.i560 = icmp eq i32 %pl, 0
  %dec_picture2.i561 = getelementptr inbounds i8, ptr %473, i64 13520
  %474 = load ptr, ptr %dec_picture2.i561, align 8
  br i1 %tobool.not.i560, label %cond.false.i708, label %cond.true.i562

cond.true.i562:                                   ; preds = %sw.bb18
  %imgUV.i563 = getelementptr inbounds i8, ptr %474, i64 136
  %475 = load ptr, ptr %imgUV.i563, align 8
  %sub.i564 = add i32 %pl, -1
  %idxprom.i565 = zext i32 %sub.i564 to i64
  %arrayidx.i566 = getelementptr inbounds ptr, ptr %475, i64 %idxprom.i565
  br label %cond.end.i567

cond.false.i708:                                  ; preds = %sw.bb18
  %imgY3.i709 = getelementptr inbounds i8, ptr %474, i64 128
  br label %cond.end.i567

cond.end.i567:                                    ; preds = %cond.false.i708, %cond.true.i562
  %cond.in.i568 = phi ptr [ %arrayidx.i566, %cond.true.i562 ], [ %imgY3.i709, %cond.false.i708 ]
  %cond.i569 = load ptr, ptr %cond.in.i568, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %pix_a.i556) #5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pix_b.i557) #5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pix_d.i558) #5
  %mb_pred4.i570 = getelementptr inbounds i8, ptr %473, i64 1248
  %476 = load ptr, ptr %mb_pred4.i570, align 8
  %idxprom5.i571 = zext i32 %pl to i64
  %arrayidx6.i572 = getelementptr inbounds ptr, ptr %476, i64 %idxprom5.i571
  %477 = load ptr, ptr %arrayidx6.i572, align 8
  %getNeighbour.i573 = getelementptr inbounds i8, ptr %0, i64 856744
  %sub7.i574 = add nsw i32 %ioff, -1
  %mb_size.i575 = getelementptr inbounds i8, ptr %0, i64 849124
  %478 = sext i32 %joff to i64
  %479 = load ptr, ptr %getNeighbour.i573, align 8
  call void %479(ptr noundef nonnull %currMB, i32 noundef %sub7.i574, i32 noundef %joff, ptr noundef nonnull %mb_size.i575, ptr noundef nonnull %pix_a.i556) #5
  %480 = load ptr, ptr %getNeighbour.i573, align 8
  %481 = add i32 %joff, 1
  %arrayidx10.1.i576 = getelementptr inbounds i8, ptr %pix_a.i556, i64 16
  call void %480(ptr noundef nonnull %currMB, i32 noundef %sub7.i574, i32 noundef %481, ptr noundef nonnull %mb_size.i575, ptr noundef nonnull %arrayidx10.1.i576) #5
  %482 = load ptr, ptr %getNeighbour.i573, align 8
  %483 = add i32 %joff, 2
  %arrayidx10.2.i577 = getelementptr inbounds i8, ptr %pix_a.i556, i64 32
  call void %482(ptr noundef nonnull %currMB, i32 noundef %sub7.i574, i32 noundef %483, ptr noundef nonnull %mb_size.i575, ptr noundef nonnull %arrayidx10.2.i577) #5
  %484 = load ptr, ptr %getNeighbour.i573, align 8
  %485 = add i32 %joff, 3
  %arrayidx10.3.i578 = getelementptr inbounds i8, ptr %pix_a.i556, i64 48
  call void %484(ptr noundef nonnull %currMB, i32 noundef %sub7.i574, i32 noundef %485, ptr noundef nonnull %mb_size.i575, ptr noundef nonnull %arrayidx10.3.i578) #5
  %486 = load ptr, ptr %getNeighbour.i573, align 8
  %sub12.i579 = add nsw i32 %joff, -1
  call void %486(ptr noundef nonnull %currMB, i32 noundef %ioff, i32 noundef %sub12.i579, ptr noundef nonnull %mb_size.i575, ptr noundef nonnull %pix_b.i557) #5
  %487 = load ptr, ptr %getNeighbour.i573, align 8
  call void %487(ptr noundef nonnull %currMB, i32 noundef %sub7.i574, i32 noundef %sub12.i579, ptr noundef nonnull %mb_size.i575, ptr noundef nonnull %pix_d.i558) #5
  %active_pps.i580 = getelementptr inbounds i8, ptr %0, i64 8
  %488 = load ptr, ptr %active_pps.i580, align 8
  %constrained_intra_pred_flag.i581 = getelementptr inbounds i8, ptr %488, i64 2204
  %489 = load i32, ptr %constrained_intra_pred_flag.i581, align 4
  %tobool22.not.i582 = icmp eq i32 %489, 0
  br i1 %tobool22.not.i582, label %if.else.i707, label %for.cond23.preheader.i583

for.cond23.preheader.i583:                        ; preds = %cond.end.i567
  %intra_block.i584 = getelementptr inbounds i8, ptr %473, i64 13544
  %490 = load i32, ptr %pix_a.i556, align 16
  %tobool28.not.i585 = icmp eq i32 %490, 0
  br i1 %tobool28.not.i585, label %cond.end35.i590, label %cond.true29.i586

cond.true29.i586:                                 ; preds = %for.cond23.preheader.i583
  %491 = load ptr, ptr %intra_block.i584, align 8
  %mb_addr.i587 = getelementptr inbounds i8, ptr %pix_a.i556, i64 4
  %492 = load i32, ptr %mb_addr.i587, align 4
  %idxprom32.i588 = sext i32 %492 to i64
  %arrayidx33.i589 = getelementptr inbounds i8, ptr %491, i64 %idxprom32.i588
  %493 = load i8, ptr %arrayidx33.i589, align 1
  %494 = and i8 %493, 1
  %495 = zext nneg i8 %494 to i32
  br label %cond.end35.i590

cond.end35.i590:                                  ; preds = %cond.true29.i586, %for.cond23.preheader.i583
  %cond36.i591 = phi i32 [ %495, %cond.true29.i586 ], [ 0, %for.cond23.preheader.i583 ]
  %496 = load i32, ptr %arrayidx10.1.i576, align 16
  %tobool28.not.1.i592 = icmp eq i32 %496, 0
  br i1 %tobool28.not.1.i592, label %cond.end35.1.i597, label %cond.true29.1.i593

cond.true29.1.i593:                               ; preds = %cond.end35.i590
  %497 = load ptr, ptr %intra_block.i584, align 8
  %mb_addr.1.i594 = getelementptr inbounds i8, ptr %pix_a.i556, i64 20
  %498 = load i32, ptr %mb_addr.1.i594, align 4
  %idxprom32.1.i595 = sext i32 %498 to i64
  %arrayidx33.1.i596 = getelementptr inbounds i8, ptr %497, i64 %idxprom32.1.i595
  %499 = load i8, ptr %arrayidx33.1.i596, align 1
  %conv.1308.i = zext i8 %499 to i32
  br label %cond.end35.1.i597

cond.end35.1.i597:                                ; preds = %cond.true29.1.i593, %cond.end35.i590
  %cond36.1.i598 = phi i32 [ %conv.1308.i, %cond.true29.1.i593 ], [ 0, %cond.end35.i590 ]
  %and.1.i599 = and i32 %cond36.1.i598, %cond36.i591
  %500 = load i32, ptr %arrayidx10.2.i577, align 16
  %tobool28.not.2.i600 = icmp eq i32 %500, 0
  br i1 %tobool28.not.2.i600, label %cond.end35.2.i605, label %cond.true29.2.i601

cond.true29.2.i601:                               ; preds = %cond.end35.1.i597
  %501 = load ptr, ptr %intra_block.i584, align 8
  %mb_addr.2.i602 = getelementptr inbounds i8, ptr %pix_a.i556, i64 36
  %502 = load i32, ptr %mb_addr.2.i602, align 4
  %idxprom32.2.i603 = sext i32 %502 to i64
  %arrayidx33.2.i604 = getelementptr inbounds i8, ptr %501, i64 %idxprom32.2.i603
  %503 = load i8, ptr %arrayidx33.2.i604, align 1
  %conv.2309.i = zext i8 %503 to i32
  br label %cond.end35.2.i605

cond.end35.2.i605:                                ; preds = %cond.true29.2.i601, %cond.end35.1.i597
  %cond36.2.i606 = phi i32 [ %conv.2309.i, %cond.true29.2.i601 ], [ 0, %cond.end35.1.i597 ]
  %and.2.i607 = and i32 %and.1.i599, %cond36.2.i606
  %504 = load i32, ptr %arrayidx10.3.i578, align 16
  %tobool28.not.3.i608 = icmp eq i32 %504, 0
  br i1 %tobool28.not.3.i608, label %cond.end35.3.i613, label %cond.true29.3.i609

cond.true29.3.i609:                               ; preds = %cond.end35.2.i605
  %505 = load ptr, ptr %intra_block.i584, align 8
  %mb_addr.3.i610 = getelementptr inbounds i8, ptr %pix_a.i556, i64 52
  %506 = load i32, ptr %mb_addr.3.i610, align 4
  %idxprom32.3.i611 = sext i32 %506 to i64
  %arrayidx33.3.i612 = getelementptr inbounds i8, ptr %505, i64 %idxprom32.3.i611
  %507 = load i8, ptr %arrayidx33.3.i612, align 1
  %conv.3310.i = zext i8 %507 to i32
  br label %cond.end35.3.i613

cond.end35.3.i613:                                ; preds = %cond.true29.3.i609, %cond.end35.2.i605
  %cond36.3.i614 = phi i32 [ %conv.3310.i, %cond.true29.3.i609 ], [ 0, %cond.end35.2.i605 ]
  %and.3.i615 = and i32 %and.2.i607, %cond36.3.i614
  %508 = load i32, ptr %pix_b.i557, align 4
  %tobool41.not.i616 = icmp eq i32 %508, 0
  br i1 %tobool41.not.i616, label %cond.end49.i622, label %cond.true42.i617

cond.true42.i617:                                 ; preds = %cond.end35.3.i613
  %509 = load ptr, ptr %intra_block.i584, align 8
  %mb_addr44.i618 = getelementptr inbounds i8, ptr %pix_b.i557, i64 4
  %510 = load i32, ptr %mb_addr44.i618, align 4
  %idxprom45.i619 = sext i32 %510 to i64
  %arrayidx46.i620 = getelementptr inbounds i8, ptr %509, i64 %idxprom45.i619
  %511 = load i8, ptr %arrayidx46.i620, align 1
  %conv47.i621 = sext i8 %511 to i32
  br label %cond.end49.i622

cond.end49.i622:                                  ; preds = %cond.true42.i617, %cond.end35.3.i613
  %cond50.i623 = phi i32 [ %conv47.i621, %cond.true42.i617 ], [ 0, %cond.end35.3.i613 ]
  %512 = load i32, ptr %pix_d.i558, align 4
  %tobool52.not.i624 = icmp eq i32 %512, 0
  br i1 %tobool52.not.i624, label %if.then70.i638, label %cond.true53.i625

cond.true53.i625:                                 ; preds = %cond.end49.i622
  %513 = load ptr, ptr %intra_block.i584, align 8
  %mb_addr55.i626 = getelementptr inbounds i8, ptr %pix_d.i558, i64 4
  %514 = load i32, ptr %mb_addr55.i626, align 4
  %idxprom56.i627 = sext i32 %514 to i64
  %arrayidx57.i628 = getelementptr inbounds i8, ptr %513, i64 %idxprom56.i627
  %515 = load i8, ptr %arrayidx57.i628, align 1
  %conv58.i629 = sext i8 %515 to i32
  br label %if.end.i630

if.else.i707:                                     ; preds = %cond.end.i567
  %516 = load i32, ptr %pix_a.i556, align 16
  %517 = load i32, ptr %pix_b.i557, align 4
  %518 = load i32, ptr %pix_d.i558, align 4
  br label %if.end.i630

if.end.i630:                                      ; preds = %if.else.i707, %cond.true53.i625
  %block_available_up_left.0.i631 = phi i32 [ %518, %if.else.i707 ], [ %conv58.i629, %cond.true53.i625 ]
  %block_available_left.1.i632 = phi i32 [ %516, %if.else.i707 ], [ %and.3.i615, %cond.true53.i625 ]
  %block_available_up.0.i633 = phi i32 [ %517, %if.else.i707 ], [ %cond50.i623, %cond.true53.i625 ]
  %tobool66.i634 = icmp ne i32 %block_available_up.0.i633, 0
  %tobool67.i635 = icmp ne i32 %block_available_left.1.i632, 0
  %or.cond.i636 = select i1 %tobool66.i634, i1 %tobool67.i635, i1 false
  %tobool69.i637 = icmp ne i32 %block_available_up_left.0.i631, 0
  %or.cond226.i = select i1 %or.cond.i636, i1 %tobool69.i637, i1 false
  br i1 %or.cond226.i, label %if.else71.i641, label %if.then70.i638

if.then70.i638:                                   ; preds = %if.end.i630, %cond.end49.i622
  %current_mb_nr.i639 = getelementptr inbounds i8, ptr %473, i64 108
  %519 = load i32, ptr %current_mb_nr.i639, align 4
  %call.i640 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, i32 noundef %519)
  br label %intra4x4_hor_down_pred_mbaff.exit

if.else71.i641:                                   ; preds = %if.end.i630
  %pos_y.i642 = getelementptr inbounds i8, ptr %pix_b.i557, i64 14
  %520 = load i16, ptr %pos_y.i642, align 2
  %idxprom72.i643 = sext i16 %520 to i64
  %arrayidx73.i644 = getelementptr inbounds ptr, ptr %cond.i569, i64 %idxprom72.i643
  %521 = load ptr, ptr %arrayidx73.i644, align 8
  %pos_x.i645 = getelementptr inbounds i8, ptr %pix_b.i557, i64 12
  %522 = load i16, ptr %pos_x.i645, align 4
  %idxprom74.i646 = sext i16 %522 to i64
  %arrayidx75.i647 = getelementptr inbounds i16, ptr %521, i64 %idxprom74.i646
  %incdec.ptr.i648 = getelementptr inbounds i8, ptr %arrayidx75.i647, i64 2
  %523 = load i16, ptr %arrayidx75.i647, align 2
  %incdec.ptr76.i649 = getelementptr inbounds i8, ptr %arrayidx75.i647, i64 4
  %524 = load i16, ptr %incdec.ptr.i648, align 2
  %525 = load i16, ptr %incdec.ptr76.i649, align 2
  %pos_y79.i650 = getelementptr inbounds i8, ptr %pix_a.i556, i64 14
  %526 = load i16, ptr %pos_y79.i650, align 2
  %idxprom80.i651 = sext i16 %526 to i64
  %arrayidx81.i652 = getelementptr inbounds ptr, ptr %cond.i569, i64 %idxprom80.i651
  %527 = load ptr, ptr %arrayidx81.i652, align 8
  %pos_x83.i653 = getelementptr inbounds i8, ptr %pix_a.i556, i64 12
  %528 = load i16, ptr %pos_x83.i653, align 4
  %idxprom84.i654 = sext i16 %528 to i64
  %arrayidx85.i655 = getelementptr inbounds i16, ptr %527, i64 %idxprom84.i654
  %529 = load i16, ptr %arrayidx85.i655, align 2
  %pos_y87.i656 = getelementptr inbounds i8, ptr %pix_a.i556, i64 30
  %530 = load i16, ptr %pos_y87.i656, align 2
  %idxprom88.i657 = sext i16 %530 to i64
  %arrayidx89.i658 = getelementptr inbounds ptr, ptr %cond.i569, i64 %idxprom88.i657
  %531 = load ptr, ptr %arrayidx89.i658, align 8
  %pos_x91.i659 = getelementptr inbounds i8, ptr %pix_a.i556, i64 28
  %532 = load i16, ptr %pos_x91.i659, align 4
  %idxprom92.i660 = sext i16 %532 to i64
  %arrayidx93.i661 = getelementptr inbounds i16, ptr %531, i64 %idxprom92.i660
  %533 = load i16, ptr %arrayidx93.i661, align 2
  %pos_y95.i662 = getelementptr inbounds i8, ptr %pix_a.i556, i64 46
  %534 = load i16, ptr %pos_y95.i662, align 2
  %idxprom96.i663 = sext i16 %534 to i64
  %arrayidx97.i664 = getelementptr inbounds ptr, ptr %cond.i569, i64 %idxprom96.i663
  %535 = load ptr, ptr %arrayidx97.i664, align 8
  %pos_x99.i665 = getelementptr inbounds i8, ptr %pix_a.i556, i64 44
  %536 = load i16, ptr %pos_x99.i665, align 4
  %idxprom100.i666 = sext i16 %536 to i64
  %arrayidx101.i667 = getelementptr inbounds i16, ptr %535, i64 %idxprom100.i666
  %537 = load i16, ptr %arrayidx101.i667, align 2
  %pos_y103.i668 = getelementptr inbounds i8, ptr %pix_a.i556, i64 62
  %538 = load i16, ptr %pos_y103.i668, align 2
  %idxprom104.i669 = sext i16 %538 to i64
  %arrayidx105.i670 = getelementptr inbounds ptr, ptr %cond.i569, i64 %idxprom104.i669
  %539 = load ptr, ptr %arrayidx105.i670, align 8
  %pos_x107.i671 = getelementptr inbounds i8, ptr %pix_a.i556, i64 60
  %540 = load i16, ptr %pos_x107.i671, align 4
  %idxprom108.i672 = sext i16 %540 to i64
  %arrayidx109.i673 = getelementptr inbounds i16, ptr %539, i64 %idxprom108.i672
  %541 = load i16, ptr %arrayidx109.i673, align 2
  %pos_y110.i674 = getelementptr inbounds i8, ptr %pix_d.i558, i64 14
  %542 = load i16, ptr %pos_y110.i674, align 2
  %idxprom111.i675 = sext i16 %542 to i64
  %arrayidx112.i676 = getelementptr inbounds ptr, ptr %cond.i569, i64 %idxprom111.i675
  %543 = load ptr, ptr %arrayidx112.i676, align 8
  %pos_x113.i677 = getelementptr inbounds i8, ptr %pix_d.i558, i64 12
  %544 = load i16, ptr %pos_x113.i677, align 4
  %idxprom114.i678 = sext i16 %544 to i64
  %arrayidx115.i679 = getelementptr inbounds i16, ptr %543, i64 %idxprom114.i678
  %545 = load i16, ptr %arrayidx115.i679, align 2
  %conv116.i680 = zext i16 %537 to i32
  %conv117.i681 = zext i16 %541 to i32
  %add118.i682 = add nuw nsw i32 %conv116.i680, 1
  %add119.i683 = add nuw nsw i32 %add118.i682, %conv117.i681
  %shr.i684 = lshr i32 %add119.i683, 1
  %conv120.i685 = trunc nuw i32 %shr.i684 to i16
  %conv122.i686 = zext i16 %533 to i32
  %mul.i687 = shl nuw nsw i32 %conv116.i680, 1
  %add124.i688 = add nuw nsw i32 %conv122.i686, 2
  %add126.i689 = add nuw nsw i32 %mul.i687, %add124.i688
  %add127.i690 = add nuw nsw i32 %add126.i689, %conv117.i681
  %shr128.i = lshr i32 %add127.i690, 2
  %conv129.i691 = trunc nuw i32 %shr128.i to i16
  %add134.i693 = add nuw nsw i32 %add118.i682, %conv122.i686
  %shr135.i694 = lshr i32 %add134.i693, 1
  %conv136.i695 = trunc nuw i32 %shr135.i694 to i16
  %conv138.i696 = zext i16 %529 to i32
  %mul140.i697 = shl nuw nsw i32 %conv122.i686, 1
  %add141.i698 = add nuw nsw i32 %conv138.i696, 2
  %add143.i699 = add nuw nsw i32 %add141.i698, %mul140.i697
  %add144.i700 = add nuw nsw i32 %add143.i699, %conv116.i680
  %shr145.i701 = lshr i32 %add144.i700, 2
  %conv146.i702 = trunc nuw i32 %shr145.i701 to i16
  %add150.i703 = add nuw nsw i32 %conv138.i696, 1
  %add151.i = add nuw nsw i32 %add150.i703, %conv122.i686
  %shr152.i = lshr i32 %add151.i, 1
  %conv153.i = trunc nuw i32 %shr152.i to i16
  %conv155.i = zext i16 %545 to i32
  %mul157.i = shl nuw nsw i32 %conv138.i696, 1
  %add160.i704 = add nuw nsw i32 %add124.i688, %mul157.i
  %add161.i = add nuw nsw i32 %add160.i704, %conv155.i
  %shr162.i = lshr i32 %add161.i, 2
  %conv163.i = trunc nuw i32 %shr162.i to i16
  %add168.i = add nuw nsw i32 %add150.i703, %conv155.i
  %shr169.i = lshr i32 %add168.i, 1
  %conv170.i = trunc nuw i32 %shr169.i to i16
  %mul174.i = shl nuw nsw i32 %conv155.i, 1
  %conv176.i = zext i16 %523 to i32
  %add175.i = add nuw nsw i32 %conv176.i, 2
  %add177.i = add nuw nsw i32 %add175.i, %conv138.i696
  %add178.i = add nuw nsw i32 %add177.i, %mul174.i
  %shr179.i = lshr i32 %add178.i, 2
  %conv180.i = trunc nuw i32 %shr179.i to i16
  %mul184.i = shl nuw nsw i32 %conv176.i, 1
  %conv186.i = zext i16 %524 to i32
  %add185.i = add nuw nsw i32 %mul184.i, 2
  %add187.i = add nuw nsw i32 %add185.i, %conv186.i
  %add188.i = add nuw nsw i32 %add187.i, %conv155.i
  %shr189.i = lshr i32 %add188.i, 2
  %conv190.i = trunc nuw i32 %shr189.i to i16
  %mul194.i = shl nuw nsw i32 %conv186.i, 1
  %conv196.i = zext i16 %525 to i32
  %add197.i = add nuw nsw i32 %mul194.i, %add175.i
  %add198.i = add nuw nsw i32 %add197.i, %conv196.i
  %shr199.i = lshr i32 %add198.i, 2
  %conv200.i = trunc nuw i32 %shr199.i to i16
  %arrayidx204.i705 = getelementptr inbounds ptr, ptr %477, i64 %478
  %546 = load ptr, ptr %arrayidx204.i705, align 8
  %idxprom205.i = sext i32 %ioff to i64
  %arrayidx206.i = getelementptr inbounds i16, ptr %546, i64 %idxprom205.i
  store i16 %conv170.i, ptr %arrayidx206.i, align 2
  %PredPixel.sroa.13.12.arrayidx206.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx206.i, i64 2
  store i16 %conv180.i, ptr %PredPixel.sroa.13.12.arrayidx206.sroa_idx.i, align 2
  %PredPixel.sroa.14.12.arrayidx206.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx206.i, i64 4
  store i16 %conv190.i, ptr %PredPixel.sroa.14.12.arrayidx206.sroa_idx.i, align 2
  %PredPixel.sroa.15.12.arrayidx206.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx206.i, i64 6
  store i16 %conv200.i, ptr %PredPixel.sroa.15.12.arrayidx206.sroa_idx.i, align 2
  %arrayidx210.i706 = getelementptr i8, ptr %arrayidx204.i705, i64 8
  %547 = load ptr, ptr %arrayidx210.i706, align 8
  %arrayidx212.i = getelementptr inbounds i16, ptr %547, i64 %idxprom205.i
  store i16 %conv153.i, ptr %arrayidx212.i, align 2
  %PredPixel.sroa.10.8.arrayidx212.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx212.i, i64 2
  store i16 %conv163.i, ptr %PredPixel.sroa.10.8.arrayidx212.sroa_idx.i, align 2
  %PredPixel.sroa.11.8.arrayidx212.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx212.i, i64 4
  store i16 %conv170.i, ptr %PredPixel.sroa.11.8.arrayidx212.sroa_idx.i, align 2
  %PredPixel.sroa.13.8.arrayidx212.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx212.i, i64 6
  store i16 %conv180.i, ptr %PredPixel.sroa.13.8.arrayidx212.sroa_idx.i, align 2
  %arrayidx216.i = getelementptr i8, ptr %arrayidx204.i705, i64 16
  %548 = load ptr, ptr %arrayidx216.i, align 8
  %arrayidx218.i = getelementptr inbounds i16, ptr %548, i64 %idxprom205.i
  store i16 %conv136.i695, ptr %arrayidx218.i, align 2
  %PredPixel.sroa.7.4.arrayidx218.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx218.i, i64 2
  store i16 %conv146.i702, ptr %PredPixel.sroa.7.4.arrayidx218.sroa_idx.i, align 2
  %PredPixel.sroa.8.4.arrayidx218.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx218.i, i64 4
  store i16 %conv153.i, ptr %PredPixel.sroa.8.4.arrayidx218.sroa_idx.i, align 2
  %PredPixel.sroa.10.4.arrayidx218.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx218.i, i64 6
  store i16 %conv163.i, ptr %PredPixel.sroa.10.4.arrayidx218.sroa_idx.i, align 2
  %arrayidx221.i = getelementptr i8, ptr %arrayidx204.i705, i64 24
  %549 = load ptr, ptr %arrayidx221.i, align 8
  %arrayidx223.i = getelementptr inbounds i16, ptr %549, i64 %idxprom205.i
  store i16 %conv120.i685, ptr %arrayidx223.i, align 2
  %PredPixel.sroa.4.0.arrayidx223.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx223.i, i64 2
  store i16 %conv129.i691, ptr %PredPixel.sroa.4.0.arrayidx223.sroa_idx.i, align 2
  %PredPixel.sroa.5.0.arrayidx223.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx223.i, i64 4
  store i16 %conv136.i695, ptr %PredPixel.sroa.5.0.arrayidx223.sroa_idx.i, align 2
  %PredPixel.sroa.7.0.arrayidx223.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx223.i, i64 6
  store i16 %conv146.i702, ptr %PredPixel.sroa.7.0.arrayidx223.sroa_idx.i, align 2
  br label %intra4x4_hor_down_pred_mbaff.exit

intra4x4_hor_down_pred_mbaff.exit:                ; preds = %if.then70.i638, %if.else71.i641
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pix_d.i558) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pix_b.i557) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %pix_a.i556) #5
  br label %cleanup

sw.default:                                       ; preds = %entry
  %conv = zext i8 %3 to i32
  %call21 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %conv)
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %intra4x4_hor_down_pred_mbaff.exit, %intra4x4_hor_up_pred_mbaff.exit, %intra4x4_vert_left_pred_mbaff.exit, %intra4x4_vert_right_pred_mbaff.exit, %intra4x4_diag_down_left_pred_mbaff.exit, %intra4x4_diag_down_right_pred_mbaff.exit, %intra4x4_hor_pred_mbaff.exit, %intra4x4_vert_pred_mbaff.exit, %intra4x4_dc_pred_mbaff.exit
  %retval.0 = phi i32 [ 1, %sw.default ], [ 0, %intra4x4_hor_down_pred_mbaff.exit ], [ 0, %intra4x4_hor_up_pred_mbaff.exit ], [ 0, %intra4x4_vert_left_pred_mbaff.exit ], [ 0, %intra4x4_vert_right_pred_mbaff.exit ], [ 0, %intra4x4_diag_down_left_pred_mbaff.exit ], [ 0, %intra4x4_diag_down_right_pred_mbaff.exit ], [ 0, %intra4x4_hor_pred_mbaff.exit ], [ 0, %intra4x4_vert_pred_mbaff.exit ], [ 0, %intra4x4_dc_pred_mbaff.exit ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare void @getAffNeighbour(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

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
