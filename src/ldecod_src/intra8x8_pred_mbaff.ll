; ModuleID = 'ldecod_src/intra8x8_pred_mbaff.c'
source_filename = "ldecod_src/intra8x8_pred_mbaff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pix_pos = type { i32, i32, i16, i16, i16, i16 }

@.str = private unnamed_addr constant [46 x i8] c"Error: illegal intra_8x8 prediction mode: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [66 x i8] c"warning: Intra_8x8_Vertical prediction mode not allowed at mb %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [68 x i8] c"warning: Intra_8x8_Horizontal prediction mode not allowed at mb %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [77 x i8] c"warning: Intra_8x8_Diagonal_Down_Right prediction mode not allowed at mb %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [76 x i8] c"warning: Intra_8x8_Diagonal_Down_Left prediction mode not allowed at mb %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [72 x i8] c"warning: Intra_8x8_Vertical_Right prediction mode not allowed at mb %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [71 x i8] c"warning: Intra_4x4_Vertical_Left prediction mode not allowed at mb %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [71 x i8] c"warning: Intra_8x8_Horizontal_Up prediction mode not allowed at mb %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [73 x i8] c"warning: Intra_8x8_Horizontal_Down prediction mode not allowed at mb %d\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @intrapred8x8_mbaff(ptr noundef %currMB, i32 noundef %pl, i32 noundef %ioff, i32 noundef %joff) local_unnamed_addr #0 {
entry:
  %PredPel.i1585 = alloca [25 x i16], align 16
  %pix_a.i1586 = alloca [8 x %struct.pix_pos], align 16
  %pix_b.i1587 = alloca %struct.pix_pos, align 4
  %pix_c.i1588 = alloca %struct.pix_pos, align 4
  %pix_d.i1589 = alloca %struct.pix_pos, align 4
  %PredPel.i1383 = alloca [25 x i16], align 16
  %pix_a.i1384 = alloca [8 x %struct.pix_pos], align 16
  %pix_b.i1385 = alloca %struct.pix_pos, align 4
  %pix_c.i1386 = alloca %struct.pix_pos, align 4
  %pix_d.i1387 = alloca %struct.pix_pos, align 4
  %PredPel.i1021 = alloca [25 x i16], align 16
  %pix_a.i1022 = alloca [8 x %struct.pix_pos], align 16
  %pix_b.i1023 = alloca %struct.pix_pos, align 4
  %pix_c.i1024 = alloca %struct.pix_pos, align 4
  %pix_d.i1025 = alloca %struct.pix_pos, align 4
  %PredPel.i673 = alloca [25 x i16], align 16
  %pix_a.i674 = alloca [8 x %struct.pix_pos], align 16
  %pix_b.i675 = alloca %struct.pix_pos, align 4
  %pix_c.i676 = alloca %struct.pix_pos, align 4
  %pix_d.i677 = alloca %struct.pix_pos, align 4
  %PredPel.i502 = alloca [25 x i16], align 16
  %pix_a.i503 = alloca [8 x %struct.pix_pos], align 16
  %pix_b.i504 = alloca %struct.pix_pos, align 4
  %pix_c.i505 = alloca %struct.pix_pos, align 4
  %pix_d.i506 = alloca %struct.pix_pos, align 4
  %PredPel.i288 = alloca [25 x i16], align 16
  %pix_a.i289 = alloca [8 x %struct.pix_pos], align 16
  %pix_b.i290 = alloca %struct.pix_pos, align 4
  %pix_c.i291 = alloca %struct.pix_pos, align 4
  %pix_d.i292 = alloca %struct.pix_pos, align 4
  %pix_a.i218 = alloca [8 x %struct.pix_pos], align 16
  %pix_b.i219 = alloca %struct.pix_pos, align 4
  %pix_c.i220 = alloca %struct.pix_pos, align 4
  %pix_d.i221 = alloca %struct.pix_pos, align 4
  %pix_a.i68 = alloca [8 x %struct.pix_pos], align 16
  %pix_b.i69 = alloca %struct.pix_pos, align 4
  %pix_c.i70 = alloca %struct.pix_pos, align 4
  %pix_d.i71 = alloca %struct.pix_pos, align 4
  %PredPel.i = alloca [25 x i16], align 16
  %pix_a.i = alloca [8 x %struct.pix_pos], align 16
  %pix_b.i = alloca %struct.pix_pos, align 4
  %pix_c.i = alloca %struct.pix_pos, align 4
  %pix_d.i = alloca %struct.pix_pos, align 4
  %block_x1 = getelementptr inbounds i8, ptr %currMB, i64 32
  %0 = load i32, ptr %block_x1, align 8
  %shr = ashr i32 %ioff, 2
  %add = add nsw i32 %0, %shr
  %block_y2 = getelementptr inbounds i8, ptr %currMB, i64 36
  %1 = load i32, ptr %block_y2, align 4
  %shr3 = ashr i32 %joff, 2
  %add4 = add nsw i32 %1, %shr3
  %2 = load ptr, ptr %currMB, align 8
  %ipredmode = getelementptr inbounds i8, ptr %2, i64 13536
  %3 = load ptr, ptr %ipredmode, align 8
  %idxprom = sext i32 %add4 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %3, i64 %idxprom
  %4 = load ptr, ptr %arrayidx, align 8
  %idxprom5 = sext i32 %add to i64
  %arrayidx6 = getelementptr inbounds i8, ptr %4, i64 %idxprom5
  %5 = load i8, ptr %arrayidx6, align 1
  %ipmode_DPCM = getelementptr inbounds i8, ptr %currMB, i64 372
  store i8 %5, ptr %ipmode_DPCM, align 4
  switch i8 %5, label %sw.default [
    i8 2, label %sw.bb
    i8 0, label %sw.bb7
    i8 1, label %sw.bb9
    i8 4, label %sw.bb11
    i8 3, label %sw.bb13
    i8 5, label %sw.bb15
    i8 7, label %sw.bb17
    i8 8, label %sw.bb19
    i8 6, label %sw.bb21
  ]

sw.bb:                                            ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %PredPel.i) #6
  %p_Vid1.i = getelementptr inbounds i8, ptr %currMB, i64 8
  %6 = load ptr, ptr %p_Vid1.i, align 8
  %dec_picture2.i = getelementptr inbounds i8, ptr %2, i64 13520
  %7 = load ptr, ptr %dec_picture2.i, align 8
  %tobool.not.i = icmp eq i32 %pl, 0
  br i1 %tobool.not.i, label %cond.false.i, label %cond.true.i

cond.true.i:                                      ; preds = %sw.bb
  %imgUV.i = getelementptr inbounds i8, ptr %7, i64 136
  %8 = load ptr, ptr %imgUV.i, align 8
  %sub.i = add i32 %pl, -1
  %idxprom.i = zext i32 %sub.i to i64
  %arrayidx.i = getelementptr inbounds ptr, ptr %8, i64 %idxprom.i
  br label %cond.end.i

cond.false.i:                                     ; preds = %sw.bb
  %imgY3.i = getelementptr inbounds i8, ptr %7, i64 128
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %cond.true.i
  %cond.in.i = phi ptr [ %arrayidx.i, %cond.true.i ], [ %imgY3.i, %cond.false.i ]
  %cond.i = load ptr, ptr %cond.in.i, align 8
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %pix_a.i) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pix_b.i) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pix_c.i) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pix_d.i) #6
  %mb_pred.i = getelementptr inbounds i8, ptr %2, i64 1248
  %9 = load ptr, ptr %mb_pred.i, align 8
  %idxprom4.i = zext i32 %pl to i64
  %arrayidx5.i = getelementptr inbounds ptr, ptr %9, i64 %idxprom4.i
  %10 = load ptr, ptr %arrayidx5.i, align 8
  %mb_size6.i = getelementptr inbounds i8, ptr %6, i64 849124
  %sub8.i = add nsw i32 %ioff, -1
  %11 = sext i32 %joff to i64
  call void @getAffNeighbour(ptr noundef nonnull %currMB, i32 noundef %sub8.i, i32 noundef %joff, ptr noundef nonnull %mb_size6.i, ptr noundef nonnull %pix_a.i) #6
  %12 = add nsw i64 %11, 1
  %arrayidx10.1.i = getelementptr inbounds i8, ptr %pix_a.i, i64 16
  %13 = trunc nsw i64 %12 to i32
  call void @getAffNeighbour(ptr noundef nonnull %currMB, i32 noundef %sub8.i, i32 noundef %13, ptr noundef nonnull %mb_size6.i, ptr noundef nonnull %arrayidx10.1.i) #6
  %14 = add nsw i64 %11, 2
  %arrayidx10.2.i = getelementptr inbounds i8, ptr %pix_a.i, i64 32
  %15 = trunc nsw i64 %14 to i32
  call void @getAffNeighbour(ptr noundef nonnull %currMB, i32 noundef %sub8.i, i32 noundef %15, ptr noundef nonnull %mb_size6.i, ptr noundef nonnull %arrayidx10.2.i) #6
  %16 = add nsw i64 %11, 3
  %arrayidx10.3.i = getelementptr inbounds i8, ptr %pix_a.i, i64 48
  %17 = trunc nsw i64 %16 to i32
  call void @getAffNeighbour(ptr noundef nonnull %currMB, i32 noundef %sub8.i, i32 noundef %17, ptr noundef nonnull %mb_size6.i, ptr noundef nonnull %arrayidx10.3.i) #6
  %18 = add nsw i64 %11, 4
  %arrayidx10.4.i = getelementptr inbounds i8, ptr %pix_a.i, i64 64
  %19 = trunc nsw i64 %18 to i32
  call void @getAffNeighbour(ptr noundef nonnull %currMB, i32 noundef %sub8.i, i32 noundef %19, ptr noundef nonnull %mb_size6.i, ptr noundef nonnull %arrayidx10.4.i) #6
  %20 = add nsw i64 %11, 5
  %arrayidx10.5.i = getelementptr inbounds i8, ptr %pix_a.i, i64 80
  %21 = trunc nsw i64 %20 to i32
  call void @getAffNeighbour(ptr noundef nonnull %currMB, i32 noundef %sub8.i, i32 noundef %21, ptr noundef nonnull %mb_size6.i, ptr noundef nonnull %arrayidx10.5.i) #6
  %22 = add nsw i64 %11, 6
  %arrayidx10.6.i = getelementptr inbounds i8, ptr %pix_a.i, i64 96
  %23 = trunc nsw i64 %22 to i32
  call void @getAffNeighbour(ptr noundef nonnull %currMB, i32 noundef %sub8.i, i32 noundef %23, ptr noundef nonnull %mb_size6.i, ptr noundef nonnull %arrayidx10.6.i) #6
  %24 = add nsw i64 %11, 7
  %arrayidx10.7.i = getelementptr inbounds i8, ptr %pix_a.i, i64 112
  %25 = trunc nsw i64 %24 to i32
  call void @getAffNeighbour(ptr noundef nonnull %currMB, i32 noundef %sub8.i, i32 noundef %25, ptr noundef nonnull %mb_size6.i, ptr noundef nonnull %arrayidx10.7.i) #6
  %sub11.i = add nsw i32 %joff, -1
  call void @getAffNeighbour(ptr noundef nonnull %currMB, i32 noundef %ioff, i32 noundef %sub11.i, ptr noundef nonnull %mb_size6.i, ptr noundef nonnull %pix_b.i) #6
  %add12.i = add nsw i32 %ioff, 8
  call void @getAffNeighbour(ptr noundef nonnull %currMB, i32 noundef %add12.i, i32 noundef %sub11.i, ptr noundef nonnull %mb_size6.i, ptr noundef nonnull %pix_c.i) #6
  call void @getAffNeighbour(ptr noundef nonnull %currMB, i32 noundef %sub8.i, i32 noundef %sub11.i, ptr noundef nonnull %mb_size6.i, ptr noundef nonnull %pix_d.i) #6
  %26 = load i32, ptr %pix_c.i, align 4
  %tobool16.not.i = icmp ne i32 %26, 0
  %cmp17.i = icmp ne i32 %ioff, 8
  %cmp19.i = icmp ne i32 %joff, 8
  %.not.i = or i1 %cmp17.i, %cmp19.i
  %narrow.i = and i1 %.not.i, %tobool16.not.i
  %land.ext.i = zext i1 %narrow.i to i32
  store i32 %land.ext.i, ptr %pix_c.i, align 4
  %active_pps.i = getelementptr inbounds i8, ptr %6, i64 8
  %27 = load ptr, ptr %active_pps.i, align 8
  %constrained_intra_pred_flag.i = getelementptr inbounds i8, ptr %27, i64 2204
  %28 = load i32, ptr %constrained_intra_pred_flag.i, align 4
  %tobool22.not.i = icmp eq i32 %28, 0
  br i1 %tobool22.not.i, label %if.else.i, label %for.cond23.preheader.i

for.cond23.preheader.i:                           ; preds = %cond.end.i
  %intra_block.i = getelementptr inbounds i8, ptr %2, i64 13544
  %29 = load i32, ptr %pix_a.i, align 16
  %tobool29.not.i = icmp eq i32 %29, 0
  br i1 %tobool29.not.i, label %cond.end36.i, label %cond.true30.i

cond.true30.i:                                    ; preds = %for.cond23.preheader.i
  %30 = load ptr, ptr %intra_block.i, align 8
  %mb_addr.i = getelementptr inbounds i8, ptr %pix_a.i, i64 4
  %31 = load i32, ptr %mb_addr.i, align 4
  %idxprom33.i = sext i32 %31 to i64
  %arrayidx34.i = getelementptr inbounds i8, ptr %30, i64 %idxprom33.i
  %32 = load i8, ptr %arrayidx34.i, align 1
  %conv504.i = zext i8 %32 to i32
  br label %cond.end36.i

cond.end36.i:                                     ; preds = %cond.true30.i, %for.cond23.preheader.i
  %cond37.i = phi i32 [ %conv504.i, %cond.true30.i ], [ 0, %for.cond23.preheader.i ]
  %and.i = and i32 %cond37.i, 1
  %33 = load i32, ptr %arrayidx10.1.i, align 16
  %tobool29.not.1.i = icmp eq i32 %33, 0
  br i1 %tobool29.not.1.i, label %cond.end36.1.i, label %cond.true30.1.i

cond.true30.1.i:                                  ; preds = %cond.end36.i
  %34 = load ptr, ptr %intra_block.i, align 8
  %mb_addr.1.i = getelementptr inbounds i8, ptr %pix_a.i, i64 20
  %35 = load i32, ptr %mb_addr.1.i, align 4
  %idxprom33.1.i = sext i32 %35 to i64
  %arrayidx34.1.i = getelementptr inbounds i8, ptr %34, i64 %idxprom33.1.i
  %36 = load i8, ptr %arrayidx34.1.i, align 1
  %conv.1505.i = zext i8 %36 to i32
  br label %cond.end36.1.i

cond.end36.1.i:                                   ; preds = %cond.true30.1.i, %cond.end36.i
  %cond37.1.i = phi i32 [ %conv.1505.i, %cond.true30.1.i ], [ 0, %cond.end36.i ]
  %and.1.i = and i32 %and.i, %cond37.1.i
  %37 = load i32, ptr %arrayidx10.2.i, align 16
  %tobool29.not.2.i = icmp eq i32 %37, 0
  br i1 %tobool29.not.2.i, label %cond.end36.2.i, label %cond.true30.2.i

cond.true30.2.i:                                  ; preds = %cond.end36.1.i
  %38 = load ptr, ptr %intra_block.i, align 8
  %mb_addr.2.i = getelementptr inbounds i8, ptr %pix_a.i, i64 36
  %39 = load i32, ptr %mb_addr.2.i, align 4
  %idxprom33.2.i = sext i32 %39 to i64
  %arrayidx34.2.i = getelementptr inbounds i8, ptr %38, i64 %idxprom33.2.i
  %40 = load i8, ptr %arrayidx34.2.i, align 1
  %conv.2506.i = zext i8 %40 to i32
  br label %cond.end36.2.i

cond.end36.2.i:                                   ; preds = %cond.true30.2.i, %cond.end36.1.i
  %cond37.2.i = phi i32 [ %conv.2506.i, %cond.true30.2.i ], [ 0, %cond.end36.1.i ]
  %and.2.i = and i32 %and.1.i, %cond37.2.i
  %41 = load i32, ptr %arrayidx10.3.i, align 16
  %tobool29.not.3.i = icmp eq i32 %41, 0
  br i1 %tobool29.not.3.i, label %cond.end36.3.i, label %cond.true30.3.i

cond.true30.3.i:                                  ; preds = %cond.end36.2.i
  %42 = load ptr, ptr %intra_block.i, align 8
  %mb_addr.3.i = getelementptr inbounds i8, ptr %pix_a.i, i64 52
  %43 = load i32, ptr %mb_addr.3.i, align 4
  %idxprom33.3.i = sext i32 %43 to i64
  %arrayidx34.3.i = getelementptr inbounds i8, ptr %42, i64 %idxprom33.3.i
  %44 = load i8, ptr %arrayidx34.3.i, align 1
  %conv.3507.i = zext i8 %44 to i32
  br label %cond.end36.3.i

cond.end36.3.i:                                   ; preds = %cond.true30.3.i, %cond.end36.2.i
  %cond37.3.i = phi i32 [ %conv.3507.i, %cond.true30.3.i ], [ 0, %cond.end36.2.i ]
  %and.3.i = and i32 %and.2.i, %cond37.3.i
  %45 = load i32, ptr %arrayidx10.4.i, align 16
  %tobool29.not.4.i = icmp eq i32 %45, 0
  br i1 %tobool29.not.4.i, label %cond.end36.4.i, label %cond.true30.4.i

cond.true30.4.i:                                  ; preds = %cond.end36.3.i
  %46 = load ptr, ptr %intra_block.i, align 8
  %mb_addr.4.i = getelementptr inbounds i8, ptr %pix_a.i, i64 68
  %47 = load i32, ptr %mb_addr.4.i, align 4
  %idxprom33.4.i = sext i32 %47 to i64
  %arrayidx34.4.i = getelementptr inbounds i8, ptr %46, i64 %idxprom33.4.i
  %48 = load i8, ptr %arrayidx34.4.i, align 1
  %conv.4508.i = zext i8 %48 to i32
  br label %cond.end36.4.i

cond.end36.4.i:                                   ; preds = %cond.true30.4.i, %cond.end36.3.i
  %cond37.4.i = phi i32 [ %conv.4508.i, %cond.true30.4.i ], [ 0, %cond.end36.3.i ]
  %and.4.i = and i32 %and.3.i, %cond37.4.i
  %49 = load i32, ptr %arrayidx10.5.i, align 16
  %tobool29.not.5.i = icmp eq i32 %49, 0
  br i1 %tobool29.not.5.i, label %cond.end36.5.i, label %cond.true30.5.i

cond.true30.5.i:                                  ; preds = %cond.end36.4.i
  %50 = load ptr, ptr %intra_block.i, align 8
  %mb_addr.5.i = getelementptr inbounds i8, ptr %pix_a.i, i64 84
  %51 = load i32, ptr %mb_addr.5.i, align 4
  %idxprom33.5.i = sext i32 %51 to i64
  %arrayidx34.5.i = getelementptr inbounds i8, ptr %50, i64 %idxprom33.5.i
  %52 = load i8, ptr %arrayidx34.5.i, align 1
  %conv.5509.i = zext i8 %52 to i32
  br label %cond.end36.5.i

cond.end36.5.i:                                   ; preds = %cond.true30.5.i, %cond.end36.4.i
  %cond37.5.i = phi i32 [ %conv.5509.i, %cond.true30.5.i ], [ 0, %cond.end36.4.i ]
  %and.5.i = and i32 %and.4.i, %cond37.5.i
  %53 = load i32, ptr %arrayidx10.6.i, align 16
  %tobool29.not.6.i = icmp eq i32 %53, 0
  br i1 %tobool29.not.6.i, label %cond.end36.6.i, label %cond.true30.6.i

cond.true30.6.i:                                  ; preds = %cond.end36.5.i
  %54 = load ptr, ptr %intra_block.i, align 8
  %mb_addr.6.i = getelementptr inbounds i8, ptr %pix_a.i, i64 100
  %55 = load i32, ptr %mb_addr.6.i, align 4
  %idxprom33.6.i = sext i32 %55 to i64
  %arrayidx34.6.i = getelementptr inbounds i8, ptr %54, i64 %idxprom33.6.i
  %56 = load i8, ptr %arrayidx34.6.i, align 1
  %conv.6510.i = zext i8 %56 to i32
  br label %cond.end36.6.i

cond.end36.6.i:                                   ; preds = %cond.true30.6.i, %cond.end36.5.i
  %cond37.6.i = phi i32 [ %conv.6510.i, %cond.true30.6.i ], [ 0, %cond.end36.5.i ]
  %and.6.i = and i32 %and.5.i, %cond37.6.i
  %57 = load i32, ptr %arrayidx10.7.i, align 16
  %tobool29.not.7.i = icmp eq i32 %57, 0
  br i1 %tobool29.not.7.i, label %cond.end36.7.i, label %cond.true30.7.i

cond.true30.7.i:                                  ; preds = %cond.end36.6.i
  %58 = load ptr, ptr %intra_block.i, align 8
  %mb_addr.7.i = getelementptr inbounds i8, ptr %pix_a.i, i64 116
  %59 = load i32, ptr %mb_addr.7.i, align 4
  %idxprom33.7.i = sext i32 %59 to i64
  %arrayidx34.7.i = getelementptr inbounds i8, ptr %58, i64 %idxprom33.7.i
  %60 = load i8, ptr %arrayidx34.7.i, align 1
  %conv.7.i1994 = zext i8 %60 to i32
  br label %cond.end36.7.i

cond.end36.7.i:                                   ; preds = %cond.true30.7.i, %cond.end36.6.i
  %cond37.7.i = phi i32 [ %conv.7.i1994, %cond.true30.7.i ], [ 0, %cond.end36.6.i ]
  %and.7.i = and i32 %and.6.i, %cond37.7.i
  %61 = load i32, ptr %pix_b.i, align 4
  %tobool42.not.i = icmp eq i32 %61, 0
  br i1 %tobool42.not.i, label %cond.end50.i, label %cond.true43.i

cond.true43.i:                                    ; preds = %cond.end36.7.i
  %62 = load ptr, ptr %intra_block.i, align 8
  %mb_addr45.i = getelementptr inbounds i8, ptr %pix_b.i, i64 4
  %63 = load i32, ptr %mb_addr45.i, align 4
  %idxprom46.i = sext i32 %63 to i64
  %arrayidx47.i = getelementptr inbounds i8, ptr %62, i64 %idxprom46.i
  %64 = load i8, ptr %arrayidx47.i, align 1
  %conv48.i = sext i8 %64 to i32
  br label %cond.end50.i

cond.end50.i:                                     ; preds = %cond.true43.i, %cond.end36.7.i
  %cond51.i = phi i32 [ %conv48.i, %cond.true43.i ], [ 0, %cond.end36.7.i ]
  br i1 %narrow.i, label %cond.true54.i, label %cond.end61.i

cond.true54.i:                                    ; preds = %cond.end50.i
  %65 = load ptr, ptr %intra_block.i, align 8
  %mb_addr56.i = getelementptr inbounds i8, ptr %pix_c.i, i64 4
  %66 = load i32, ptr %mb_addr56.i, align 4
  %idxprom57.i = sext i32 %66 to i64
  %arrayidx58.i = getelementptr inbounds i8, ptr %65, i64 %idxprom57.i
  %67 = load i8, ptr %arrayidx58.i, align 1
  %conv59.i = sext i8 %67 to i32
  br label %cond.end61.i

cond.end61.i:                                     ; preds = %cond.true54.i, %cond.end50.i
  %cond62.i = phi i32 [ %conv59.i, %cond.true54.i ], [ 0, %cond.end50.i ]
  %68 = load i32, ptr %pix_d.i, align 4
  %tobool64.not.i = icmp eq i32 %68, 0
  br i1 %tobool64.not.i, label %if.end.i, label %cond.true65.i

cond.true65.i:                                    ; preds = %cond.end61.i
  %69 = load ptr, ptr %intra_block.i, align 8
  %mb_addr67.i = getelementptr inbounds i8, ptr %pix_d.i, i64 4
  %70 = load i32, ptr %mb_addr67.i, align 4
  %idxprom68.i = sext i32 %70 to i64
  %arrayidx69.i = getelementptr inbounds i8, ptr %69, i64 %idxprom68.i
  %71 = load i8, ptr %arrayidx69.i, align 1
  %conv70.i = sext i8 %71 to i32
  br label %if.end.i

if.else.i:                                        ; preds = %cond.end.i
  %72 = load i32, ptr %pix_a.i, align 16
  %73 = load i32, ptr %pix_b.i, align 4
  %74 = load i32, ptr %pix_d.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %cond.true65.i, %cond.end61.i
  %block_available_up.0.i = phi i32 [ %73, %if.else.i ], [ %cond51.i, %cond.end61.i ], [ %cond51.i, %cond.true65.i ]
  %block_available_left.1.i = phi i32 [ %72, %if.else.i ], [ %and.7.i, %cond.end61.i ], [ %and.7.i, %cond.true65.i ]
  %block_available_up_left.0.i = phi i32 [ %74, %if.else.i ], [ 0, %cond.end61.i ], [ %conv70.i, %cond.true65.i ]
  %block_available_up_right.0.i = phi i32 [ %land.ext.i, %if.else.i ], [ %cond62.i, %cond.end61.i ], [ %cond62.i, %cond.true65.i ]
  %tobool79.i = icmp ne i32 %block_available_up.0.i, 0
  br i1 %tobool79.i, label %if.then80.i, label %if.else101.i

if.then80.i:                                      ; preds = %if.end.i
  %arrayidx88.i = getelementptr inbounds i8, ptr %PredPel.i, i64 4
  %pos_y.i = getelementptr inbounds i8, ptr %pix_b.i, i64 14
  %75 = load i16, ptr %pos_y.i, align 2
  %idxprom81.i = sext i16 %75 to i64
  %arrayidx82.i = getelementptr inbounds ptr, ptr %cond.i, i64 %idxprom81.i
  %76 = load ptr, ptr %arrayidx82.i, align 8
  %pos_x.i = getelementptr inbounds i8, ptr %pix_b.i, i64 12
  %77 = load i16, ptr %pos_x.i, align 4
  %idxprom83.i = sext i16 %77 to i64
  %arrayidx84.i = getelementptr inbounds i16, ptr %76, i64 %idxprom83.i
  %78 = load i16, ptr %arrayidx84.i, align 2
  %arrayidx86.i = getelementptr inbounds i8, ptr %PredPel.i, i64 2
  store i16 %78, ptr %arrayidx86.i, align 2
  %arrayidx87.i = getelementptr inbounds i8, ptr %arrayidx84.i, i64 2
  %79 = load i16, ptr %arrayidx87.i, align 2
  store i16 %79, ptr %arrayidx88.i, align 4
  %arrayidx89.i = getelementptr inbounds i8, ptr %arrayidx84.i, i64 4
  %80 = load i16, ptr %arrayidx89.i, align 2
  %arrayidx90.i = getelementptr inbounds i8, ptr %PredPel.i, i64 6
  store i16 %80, ptr %arrayidx90.i, align 2
  %arrayidx91.i = getelementptr inbounds i8, ptr %arrayidx84.i, i64 6
  %81 = load i16, ptr %arrayidx91.i, align 2
  %arrayidx92.i = getelementptr inbounds i8, ptr %PredPel.i, i64 8
  store i16 %81, ptr %arrayidx92.i, align 8
  %arrayidx93.i = getelementptr inbounds i8, ptr %arrayidx84.i, i64 8
  %82 = load i16, ptr %arrayidx93.i, align 2
  %arrayidx94.i = getelementptr inbounds i8, ptr %PredPel.i, i64 10
  store i16 %82, ptr %arrayidx94.i, align 2
  %arrayidx95.i = getelementptr inbounds i8, ptr %arrayidx84.i, i64 10
  %83 = load i16, ptr %arrayidx95.i, align 2
  %arrayidx96.i = getelementptr inbounds i8, ptr %PredPel.i, i64 12
  store i16 %83, ptr %arrayidx96.i, align 4
  %arrayidx97.i = getelementptr inbounds i8, ptr %arrayidx84.i, i64 12
  %84 = load i16, ptr %arrayidx97.i, align 2
  %arrayidx98.i = getelementptr inbounds i8, ptr %PredPel.i, i64 14
  store i16 %84, ptr %arrayidx98.i, align 2
  %arrayidx99.i = getelementptr inbounds i8, ptr %arrayidx84.i, i64 14
  %85 = load i16, ptr %arrayidx99.i, align 2
  br label %if.end113.i

if.else101.i:                                     ; preds = %if.end.i
  %dc_pred_value_comp.i = getelementptr inbounds i8, ptr %6, i64 849060
  %arrayidx103.i = getelementptr inbounds [3 x i32], ptr %dc_pred_value_comp.i, i64 0, i64 %idxprom4.i
  %86 = load i32, ptr %arrayidx103.i, align 4
  %conv104.i = trunc i32 %86 to i16
  %arrayidx106.i = getelementptr inbounds i8, ptr %PredPel.i, i64 14
  store i16 %conv104.i, ptr %arrayidx106.i, align 2
  %arrayidx107.i = getelementptr inbounds i8, ptr %PredPel.i, i64 12
  store i16 %conv104.i, ptr %arrayidx107.i, align 4
  %arrayidx108.i = getelementptr inbounds i8, ptr %PredPel.i, i64 10
  store i16 %conv104.i, ptr %arrayidx108.i, align 2
  %arrayidx112.i = getelementptr inbounds i8, ptr %PredPel.i, i64 2
  %87 = insertelement <4 x i16> poison, i16 %conv104.i, i64 0
  %88 = shufflevector <4 x i16> %87, <4 x i16> poison, <4 x i32> zeroinitializer
  store <4 x i16> %88, ptr %arrayidx112.i, align 2
  br label %if.end113.i

if.end113.i:                                      ; preds = %if.else101.i, %if.then80.i
  %89 = phi i16 [ %85, %if.then80.i ], [ %conv104.i, %if.else101.i ]
  %90 = getelementptr inbounds i8, ptr %PredPel.i, i64 16
  store i16 %89, ptr %90, align 16
  %tobool114.not.i = icmp eq i32 %block_available_up_right.0.i, 0
  br i1 %tobool114.not.i, label %if.else138.i, label %if.then115.i

if.then115.i:                                     ; preds = %if.end113.i
  %pos_y116.i = getelementptr inbounds i8, ptr %pix_c.i, i64 14
  %91 = load i16, ptr %pos_y116.i, align 2
  %idxprom117.i = sext i16 %91 to i64
  %arrayidx118.i = getelementptr inbounds ptr, ptr %cond.i, i64 %idxprom117.i
  %92 = load ptr, ptr %arrayidx118.i, align 8
  %pos_x119.i = getelementptr inbounds i8, ptr %pix_c.i, i64 12
  %93 = load i16, ptr %pos_x119.i, align 4
  %idxprom120.i = sext i16 %93 to i64
  %arrayidx121.i = getelementptr inbounds i16, ptr %92, i64 %idxprom120.i
  %94 = load i16, ptr %arrayidx121.i, align 2
  %arrayidx123.i = getelementptr inbounds i8, ptr %PredPel.i, i64 18
  store i16 %94, ptr %arrayidx123.i, align 2
  %arrayidx124.i = getelementptr inbounds i8, ptr %arrayidx121.i, i64 2
  %95 = load i16, ptr %arrayidx124.i, align 2
  %arrayidx125.i = getelementptr inbounds i8, ptr %PredPel.i, i64 20
  store i16 %95, ptr %arrayidx125.i, align 4
  %arrayidx126.i = getelementptr inbounds i8, ptr %arrayidx121.i, i64 4
  %96 = load i16, ptr %arrayidx126.i, align 2
  %arrayidx127.i = getelementptr inbounds i8, ptr %PredPel.i, i64 22
  store i16 %96, ptr %arrayidx127.i, align 2
  %arrayidx128.i = getelementptr inbounds i8, ptr %arrayidx121.i, i64 6
  %97 = load i16, ptr %arrayidx128.i, align 2
  %arrayidx129.i = getelementptr inbounds i8, ptr %PredPel.i, i64 24
  store i16 %97, ptr %arrayidx129.i, align 8
  %arrayidx130.i = getelementptr inbounds i8, ptr %arrayidx121.i, i64 8
  %98 = load i16, ptr %arrayidx130.i, align 2
  %arrayidx131.i = getelementptr inbounds i8, ptr %PredPel.i, i64 26
  store i16 %98, ptr %arrayidx131.i, align 2
  %arrayidx132.i = getelementptr inbounds i8, ptr %arrayidx121.i, i64 10
  %99 = load i16, ptr %arrayidx132.i, align 2
  %arrayidx133.i = getelementptr inbounds i8, ptr %PredPel.i, i64 28
  store i16 %99, ptr %arrayidx133.i, align 4
  %arrayidx134.i = getelementptr inbounds i8, ptr %arrayidx121.i, i64 12
  %100 = load i16, ptr %arrayidx134.i, align 2
  %arrayidx135.i = getelementptr inbounds i8, ptr %PredPel.i, i64 30
  store i16 %100, ptr %arrayidx135.i, align 2
  %arrayidx136.i = getelementptr inbounds i8, ptr %arrayidx121.i, i64 14
  %101 = load i16, ptr %arrayidx136.i, align 2
  %arrayidx137.i = getelementptr inbounds i8, ptr %PredPel.i, i64 32
  store i16 %101, ptr %arrayidx137.i, align 16
  br label %if.end148.i

if.else138.i:                                     ; preds = %if.end113.i
  %arrayidx147.i = getelementptr inbounds i8, ptr %PredPel.i, i64 18
  %102 = insertelement <8 x i16> poison, i16 %89, i64 0
  %103 = shufflevector <8 x i16> %102, <8 x i16> poison, <8 x i32> zeroinitializer
  store <8 x i16> %103, ptr %arrayidx147.i, align 2
  br label %if.end148.i

if.end148.i:                                      ; preds = %if.else138.i, %if.then115.i
  %tobool149.i = icmp ne i32 %block_available_left.1.i, 0
  br i1 %tobool149.i, label %if.then150.i, label %if.else223.i

if.then150.i:                                     ; preds = %if.end148.i
  %pos_y152.i = getelementptr inbounds i8, ptr %pix_a.i, i64 14
  %104 = load i16, ptr %pos_y152.i, align 2
  %idxprom153.i = sext i16 %104 to i64
  %arrayidx154.i = getelementptr inbounds ptr, ptr %cond.i, i64 %idxprom153.i
  %105 = load ptr, ptr %arrayidx154.i, align 8
  %pos_x156.i = getelementptr inbounds i8, ptr %pix_a.i, i64 12
  %106 = load i16, ptr %pos_x156.i, align 4
  %idxprom157.i = sext i16 %106 to i64
  %arrayidx158.i = getelementptr inbounds i16, ptr %105, i64 %idxprom157.i
  %107 = load i16, ptr %arrayidx158.i, align 2
  %arrayidx159.i = getelementptr inbounds i8, ptr %PredPel.i, i64 34
  store i16 %107, ptr %arrayidx159.i, align 2
  %pos_y161.i = getelementptr inbounds i8, ptr %pix_a.i, i64 30
  %108 = load i16, ptr %pos_y161.i, align 2
  %idxprom162.i = sext i16 %108 to i64
  %arrayidx163.i = getelementptr inbounds ptr, ptr %cond.i, i64 %idxprom162.i
  %109 = load ptr, ptr %arrayidx163.i, align 8
  %pos_x165.i = getelementptr inbounds i8, ptr %pix_a.i, i64 28
  %110 = load i16, ptr %pos_x165.i, align 4
  %idxprom166.i = sext i16 %110 to i64
  %arrayidx167.i = getelementptr inbounds i16, ptr %109, i64 %idxprom166.i
  %111 = load i16, ptr %arrayidx167.i, align 2
  %arrayidx168.i = getelementptr inbounds i8, ptr %PredPel.i, i64 36
  store i16 %111, ptr %arrayidx168.i, align 4
  %pos_y170.i = getelementptr inbounds i8, ptr %pix_a.i, i64 46
  %112 = load i16, ptr %pos_y170.i, align 2
  %idxprom171.i = sext i16 %112 to i64
  %arrayidx172.i = getelementptr inbounds ptr, ptr %cond.i, i64 %idxprom171.i
  %113 = load ptr, ptr %arrayidx172.i, align 8
  %pos_x174.i = getelementptr inbounds i8, ptr %pix_a.i, i64 44
  %114 = load i16, ptr %pos_x174.i, align 4
  %idxprom175.i = sext i16 %114 to i64
  %arrayidx176.i = getelementptr inbounds i16, ptr %113, i64 %idxprom175.i
  %115 = load i16, ptr %arrayidx176.i, align 2
  %arrayidx177.i = getelementptr inbounds i8, ptr %PredPel.i, i64 38
  store i16 %115, ptr %arrayidx177.i, align 2
  %pos_y179.i = getelementptr inbounds i8, ptr %pix_a.i, i64 62
  %116 = load i16, ptr %pos_y179.i, align 2
  %idxprom180.i = sext i16 %116 to i64
  %arrayidx181.i = getelementptr inbounds ptr, ptr %cond.i, i64 %idxprom180.i
  %117 = load ptr, ptr %arrayidx181.i, align 8
  %pos_x183.i = getelementptr inbounds i8, ptr %pix_a.i, i64 60
  %118 = load i16, ptr %pos_x183.i, align 4
  %idxprom184.i = sext i16 %118 to i64
  %arrayidx185.i = getelementptr inbounds i16, ptr %117, i64 %idxprom184.i
  %119 = load i16, ptr %arrayidx185.i, align 2
  %arrayidx186.i = getelementptr inbounds i8, ptr %PredPel.i, i64 40
  store i16 %119, ptr %arrayidx186.i, align 8
  %pos_y188.i = getelementptr inbounds i8, ptr %pix_a.i, i64 78
  %120 = load i16, ptr %pos_y188.i, align 2
  %idxprom189.i = sext i16 %120 to i64
  %arrayidx190.i = getelementptr inbounds ptr, ptr %cond.i, i64 %idxprom189.i
  %121 = load ptr, ptr %arrayidx190.i, align 8
  %pos_x192.i = getelementptr inbounds i8, ptr %pix_a.i, i64 76
  %122 = load i16, ptr %pos_x192.i, align 4
  %idxprom193.i = sext i16 %122 to i64
  %arrayidx194.i = getelementptr inbounds i16, ptr %121, i64 %idxprom193.i
  %123 = load i16, ptr %arrayidx194.i, align 2
  %arrayidx195.i = getelementptr inbounds i8, ptr %PredPel.i, i64 42
  store i16 %123, ptr %arrayidx195.i, align 2
  %pos_y197.i = getelementptr inbounds i8, ptr %pix_a.i, i64 94
  %124 = load i16, ptr %pos_y197.i, align 2
  %idxprom198.i = sext i16 %124 to i64
  %arrayidx199.i = getelementptr inbounds ptr, ptr %cond.i, i64 %idxprom198.i
  %125 = load ptr, ptr %arrayidx199.i, align 8
  %pos_x201.i = getelementptr inbounds i8, ptr %pix_a.i, i64 92
  %126 = load i16, ptr %pos_x201.i, align 4
  %idxprom202.i = sext i16 %126 to i64
  %arrayidx203.i = getelementptr inbounds i16, ptr %125, i64 %idxprom202.i
  %127 = load i16, ptr %arrayidx203.i, align 2
  %arrayidx204.i = getelementptr inbounds i8, ptr %PredPel.i, i64 44
  store i16 %127, ptr %arrayidx204.i, align 4
  %pos_y206.i = getelementptr inbounds i8, ptr %pix_a.i, i64 110
  %128 = load i16, ptr %pos_y206.i, align 2
  %idxprom207.i = sext i16 %128 to i64
  %arrayidx208.i = getelementptr inbounds ptr, ptr %cond.i, i64 %idxprom207.i
  %129 = load ptr, ptr %arrayidx208.i, align 8
  %pos_x210.i = getelementptr inbounds i8, ptr %pix_a.i, i64 108
  %130 = load i16, ptr %pos_x210.i, align 4
  %idxprom211.i = sext i16 %130 to i64
  %arrayidx212.i = getelementptr inbounds i16, ptr %129, i64 %idxprom211.i
  %131 = load i16, ptr %arrayidx212.i, align 2
  %arrayidx213.i = getelementptr inbounds i8, ptr %PredPel.i, i64 46
  store i16 %131, ptr %arrayidx213.i, align 2
  %pos_y215.i = getelementptr inbounds i8, ptr %pix_a.i, i64 126
  %132 = load i16, ptr %pos_y215.i, align 2
  %idxprom216.i = sext i16 %132 to i64
  %arrayidx217.i = getelementptr inbounds ptr, ptr %cond.i, i64 %idxprom216.i
  %133 = load ptr, ptr %arrayidx217.i, align 8
  %pos_x219.i = getelementptr inbounds i8, ptr %pix_a.i, i64 124
  %134 = load i16, ptr %pos_x219.i, align 4
  %idxprom220.i = sext i16 %134 to i64
  %arrayidx221.i = getelementptr inbounds i16, ptr %133, i64 %idxprom220.i
  %135 = load i16, ptr %arrayidx221.i, align 2
  br label %if.end236.i

if.else223.i:                                     ; preds = %if.end148.i
  %dc_pred_value_comp224.i = getelementptr inbounds i8, ptr %6, i64 849060
  %arrayidx226.i = getelementptr inbounds [3 x i32], ptr %dc_pred_value_comp224.i, i64 0, i64 %idxprom4.i
  %136 = load i32, ptr %arrayidx226.i, align 4
  %conv227.i = trunc i32 %136 to i16
  %arrayidx229.i = getelementptr inbounds i8, ptr %PredPel.i, i64 46
  store i16 %conv227.i, ptr %arrayidx229.i, align 2
  %arrayidx230.i = getelementptr inbounds i8, ptr %PredPel.i, i64 44
  store i16 %conv227.i, ptr %arrayidx230.i, align 4
  %arrayidx231.i = getelementptr inbounds i8, ptr %PredPel.i, i64 42
  store i16 %conv227.i, ptr %arrayidx231.i, align 2
  %arrayidx235.i = getelementptr inbounds i8, ptr %PredPel.i, i64 34
  %137 = insertelement <4 x i16> poison, i16 %conv227.i, i64 0
  %138 = shufflevector <4 x i16> %137, <4 x i16> poison, <4 x i32> zeroinitializer
  store <4 x i16> %138, ptr %arrayidx235.i, align 2
  br label %if.end236.i

if.end236.i:                                      ; preds = %if.else223.i, %if.then150.i
  %conv227.sink.i = phi i16 [ %135, %if.then150.i ], [ %conv227.i, %if.else223.i ]
  %139 = getelementptr inbounds i8, ptr %PredPel.i, i64 48
  store i16 %conv227.sink.i, ptr %139, align 16
  %tobool237.not.i = icmp eq i32 %block_available_up_left.0.i, 0
  br i1 %tobool237.not.i, label %if.else246.i, label %if.then238.i

if.then238.i:                                     ; preds = %if.end236.i
  %pos_y239.i = getelementptr inbounds i8, ptr %pix_d.i, i64 14
  %140 = load i16, ptr %pos_y239.i, align 2
  %idxprom240.i = sext i16 %140 to i64
  %arrayidx241.i = getelementptr inbounds ptr, ptr %cond.i, i64 %idxprom240.i
  %141 = load ptr, ptr %arrayidx241.i, align 8
  %pos_x242.i = getelementptr inbounds i8, ptr %pix_d.i, i64 12
  %142 = load i16, ptr %pos_x242.i, align 4
  %idxprom243.i = sext i16 %142 to i64
  %arrayidx244.i = getelementptr inbounds i16, ptr %141, i64 %idxprom243.i
  %143 = load i16, ptr %arrayidx244.i, align 2
  br label %if.end252.i

if.else246.i:                                     ; preds = %if.end236.i
  %dc_pred_value_comp247.i = getelementptr inbounds i8, ptr %6, i64 849060
  %arrayidx249.i = getelementptr inbounds [3 x i32], ptr %dc_pred_value_comp247.i, i64 0, i64 %idxprom4.i
  %144 = load i32, ptr %arrayidx249.i, align 4
  %conv250.i = trunc i32 %144 to i16
  br label %if.end252.i

if.end252.i:                                      ; preds = %if.else246.i, %if.then238.i
  %storemerge.i = phi i16 [ %143, %if.then238.i ], [ %conv250.i, %if.else246.i ]
  store i16 %storemerge.i, ptr %PredPel.i, align 16
  call fastcc void @LowPassForIntra8x8Pred(ptr noundef nonnull %PredPel.i, i32 noundef %block_available_up_left.0.i, i32 noundef %block_available_up.0.i, i32 noundef %block_available_left.1.i)
  %or.cond.i = and i1 %tobool79.i, %tobool149.i
  br i1 %or.cond.i, label %if.then256.i, label %if.else305.i

if.then256.i:                                     ; preds = %if.end252.i
  %arrayidx257.i = getelementptr inbounds i8, ptr %PredPel.i, i64 2
  %145 = load <8 x i16>, ptr %arrayidx257.i, align 2
  %arrayidx280.i = getelementptr inbounds i8, ptr %PredPel.i, i64 34
  %146 = load <8 x i16>, ptr %arrayidx280.i, align 2
  %147 = shufflevector <8 x i16> %145, <8 x i16> %146, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %148 = zext <16 x i16> %147 to <16 x i32>
  %149 = call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %148)
  %op.rdx = add i32 %149, 8
  %shr.i = lshr i32 %op.rdx, 4
  br label %if.end371.i

if.else305.i:                                     ; preds = %if.end252.i
  %tobool306.i = icmp eq i32 %block_available_up.0.i, 0
  %or.cond393.i = and i1 %tobool306.i, %tobool149.i
  br i1 %or.cond393.i, label %if.then309.i, label %if.else335.i

if.then309.i:                                     ; preds = %if.else305.i
  %arrayidx310.i = getelementptr inbounds i8, ptr %PredPel.i, i64 34
  %150 = load <8 x i16>, ptr %arrayidx310.i, align 2
  %151 = zext <8 x i16> %150 to <8 x i32>
  %152 = call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %151)
  %op.rdx2002 = add i32 %152, 4
  %shr334.i = lshr i32 %op.rdx2002, 3
  br label %if.end371.i

if.else335.i:                                     ; preds = %if.else305.i
  %or.cond394.i = or i1 %tobool306.i, %tobool149.i
  br i1 %or.cond394.i, label %if.else365.i, label %if.then339.i

if.then339.i:                                     ; preds = %if.else335.i
  %arrayidx340.i = getelementptr inbounds i8, ptr %PredPel.i, i64 2
  %153 = load <8 x i16>, ptr %arrayidx340.i, align 2
  %154 = zext <8 x i16> %153 to <8 x i32>
  %155 = call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %154)
  %op.rdx2003 = add i32 %155, 4
  %shr364.i = lshr i32 %op.rdx2003, 3
  br label %if.end371.i

if.else365.i:                                     ; preds = %if.else335.i
  %dc_pred_value_comp366.i = getelementptr inbounds i8, ptr %6, i64 849060
  %arrayidx368.i = getelementptr inbounds [3 x i32], ptr %dc_pred_value_comp366.i, i64 0, i64 %idxprom4.i
  %156 = load i32, ptr %arrayidx368.i, align 4
  br label %if.end371.i

if.end371.i:                                      ; preds = %if.else365.i, %if.then339.i, %if.then309.i, %if.then256.i
  %s0.0.i = phi i32 [ %shr.i, %if.then256.i ], [ %shr334.i, %if.then309.i ], [ %156, %if.else365.i ], [ %shr364.i, %if.then339.i ]
  %conv382.i = trunc i32 %s0.0.i to i16
  %157 = sext i32 %ioff to i64
  %arrayidx384.i = getelementptr inbounds ptr, ptr %10, i64 %11
  %158 = load ptr, ptr %arrayidx384.i, align 8
  %arrayidx386.i = getelementptr inbounds i16, ptr %158, i64 %157
  store i16 %conv382.i, ptr %arrayidx386.i, align 2
  %indvars.iv.next.i = add nsw i64 %157, 1
  %159 = load ptr, ptr %arrayidx384.i, align 8
  %arrayidx386.1.i = getelementptr inbounds i16, ptr %159, i64 %indvars.iv.next.i
  store i16 %conv382.i, ptr %arrayidx386.1.i, align 2
  %160 = load ptr, ptr %arrayidx384.i, align 8
  %161 = getelementptr i16, ptr %160, i64 %157
  %arrayidx386.2.i = getelementptr i8, ptr %161, i64 4
  store i16 %conv382.i, ptr %arrayidx386.2.i, align 2
  %162 = load ptr, ptr %arrayidx384.i, align 8
  %163 = getelementptr i16, ptr %162, i64 %157
  %arrayidx386.3.i = getelementptr i8, ptr %163, i64 6
  store i16 %conv382.i, ptr %arrayidx386.3.i, align 2
  %164 = load ptr, ptr %arrayidx384.i, align 8
  %165 = getelementptr i16, ptr %164, i64 %157
  %arrayidx386.4.i = getelementptr i8, ptr %165, i64 8
  store i16 %conv382.i, ptr %arrayidx386.4.i, align 2
  %166 = load ptr, ptr %arrayidx384.i, align 8
  %167 = getelementptr i16, ptr %166, i64 %157
  %arrayidx386.5.i = getelementptr i8, ptr %167, i64 10
  store i16 %conv382.i, ptr %arrayidx386.5.i, align 2
  %168 = load ptr, ptr %arrayidx384.i, align 8
  %169 = getelementptr i16, ptr %168, i64 %157
  %arrayidx386.6.i = getelementptr i8, ptr %169, i64 12
  store i16 %conv382.i, ptr %arrayidx386.6.i, align 2
  %170 = load ptr, ptr %arrayidx384.i, align 8
  %171 = getelementptr i16, ptr %170, i64 %157
  %arrayidx386.7.i = getelementptr i8, ptr %171, i64 14
  store i16 %conv382.i, ptr %arrayidx386.7.i, align 2
  %arrayidx384.1511.i = getelementptr inbounds ptr, ptr %10, i64 %12
  %172 = load ptr, ptr %arrayidx384.1511.i, align 8
  %arrayidx386.1490512.i = getelementptr inbounds i16, ptr %172, i64 %157
  store i16 %conv382.i, ptr %arrayidx386.1490512.i, align 2
  %173 = load ptr, ptr %arrayidx384.1511.i, align 8
  %arrayidx386.1.1.i = getelementptr inbounds i16, ptr %173, i64 %indvars.iv.next.i
  store i16 %conv382.i, ptr %arrayidx386.1.1.i, align 2
  %174 = load ptr, ptr %arrayidx384.1511.i, align 8
  %175 = getelementptr i16, ptr %174, i64 %157
  %arrayidx386.2.1.i = getelementptr i8, ptr %175, i64 4
  store i16 %conv382.i, ptr %arrayidx386.2.1.i, align 2
  %176 = load ptr, ptr %arrayidx384.1511.i, align 8
  %177 = getelementptr i16, ptr %176, i64 %157
  %arrayidx386.3.1.i = getelementptr i8, ptr %177, i64 6
  store i16 %conv382.i, ptr %arrayidx386.3.1.i, align 2
  %178 = load ptr, ptr %arrayidx384.1511.i, align 8
  %179 = getelementptr i16, ptr %178, i64 %157
  %arrayidx386.4.1.i = getelementptr i8, ptr %179, i64 8
  store i16 %conv382.i, ptr %arrayidx386.4.1.i, align 2
  %180 = load ptr, ptr %arrayidx384.1511.i, align 8
  %181 = getelementptr i16, ptr %180, i64 %157
  %arrayidx386.5.1.i = getelementptr i8, ptr %181, i64 10
  store i16 %conv382.i, ptr %arrayidx386.5.1.i, align 2
  %182 = load ptr, ptr %arrayidx384.1511.i, align 8
  %183 = getelementptr i16, ptr %182, i64 %157
  %arrayidx386.6.1.i = getelementptr i8, ptr %183, i64 12
  store i16 %conv382.i, ptr %arrayidx386.6.1.i, align 2
  %184 = load ptr, ptr %arrayidx384.1511.i, align 8
  %185 = getelementptr i16, ptr %184, i64 %157
  %arrayidx386.7.1.i = getelementptr i8, ptr %185, i64 14
  store i16 %conv382.i, ptr %arrayidx386.7.1.i, align 2
  %arrayidx384.2514.i = getelementptr inbounds ptr, ptr %10, i64 %14
  %186 = load ptr, ptr %arrayidx384.2514.i, align 8
  %arrayidx386.2493515.i = getelementptr inbounds i16, ptr %186, i64 %157
  store i16 %conv382.i, ptr %arrayidx386.2493515.i, align 2
  %187 = load ptr, ptr %arrayidx384.2514.i, align 8
  %arrayidx386.1.2.i = getelementptr inbounds i16, ptr %187, i64 %indvars.iv.next.i
  store i16 %conv382.i, ptr %arrayidx386.1.2.i, align 2
  %188 = load ptr, ptr %arrayidx384.2514.i, align 8
  %189 = getelementptr i16, ptr %188, i64 %157
  %arrayidx386.2.2.i = getelementptr i8, ptr %189, i64 4
  store i16 %conv382.i, ptr %arrayidx386.2.2.i, align 2
  %190 = load ptr, ptr %arrayidx384.2514.i, align 8
  %191 = getelementptr i16, ptr %190, i64 %157
  %arrayidx386.3.2.i = getelementptr i8, ptr %191, i64 6
  store i16 %conv382.i, ptr %arrayidx386.3.2.i, align 2
  %192 = load ptr, ptr %arrayidx384.2514.i, align 8
  %193 = getelementptr i16, ptr %192, i64 %157
  %arrayidx386.4.2.i = getelementptr i8, ptr %193, i64 8
  store i16 %conv382.i, ptr %arrayidx386.4.2.i, align 2
  %194 = load ptr, ptr %arrayidx384.2514.i, align 8
  %195 = getelementptr i16, ptr %194, i64 %157
  %arrayidx386.5.2.i = getelementptr i8, ptr %195, i64 10
  store i16 %conv382.i, ptr %arrayidx386.5.2.i, align 2
  %196 = load ptr, ptr %arrayidx384.2514.i, align 8
  %197 = getelementptr i16, ptr %196, i64 %157
  %arrayidx386.6.2.i = getelementptr i8, ptr %197, i64 12
  store i16 %conv382.i, ptr %arrayidx386.6.2.i, align 2
  %198 = load ptr, ptr %arrayidx384.2514.i, align 8
  %199 = getelementptr i16, ptr %198, i64 %157
  %arrayidx386.7.2.i = getelementptr i8, ptr %199, i64 14
  store i16 %conv382.i, ptr %arrayidx386.7.2.i, align 2
  %arrayidx384.3517.i = getelementptr inbounds ptr, ptr %10, i64 %16
  %200 = load ptr, ptr %arrayidx384.3517.i, align 8
  %arrayidx386.3495518.i = getelementptr inbounds i16, ptr %200, i64 %157
  store i16 %conv382.i, ptr %arrayidx386.3495518.i, align 2
  %201 = load ptr, ptr %arrayidx384.3517.i, align 8
  %arrayidx386.1.3.i = getelementptr inbounds i16, ptr %201, i64 %indvars.iv.next.i
  store i16 %conv382.i, ptr %arrayidx386.1.3.i, align 2
  %202 = load ptr, ptr %arrayidx384.3517.i, align 8
  %203 = getelementptr i16, ptr %202, i64 %157
  %arrayidx386.2.3.i = getelementptr i8, ptr %203, i64 4
  store i16 %conv382.i, ptr %arrayidx386.2.3.i, align 2
  %204 = load ptr, ptr %arrayidx384.3517.i, align 8
  %205 = getelementptr i16, ptr %204, i64 %157
  %arrayidx386.3.3.i = getelementptr i8, ptr %205, i64 6
  store i16 %conv382.i, ptr %arrayidx386.3.3.i, align 2
  %206 = load ptr, ptr %arrayidx384.3517.i, align 8
  %207 = getelementptr i16, ptr %206, i64 %157
  %arrayidx386.4.3.i = getelementptr i8, ptr %207, i64 8
  store i16 %conv382.i, ptr %arrayidx386.4.3.i, align 2
  %208 = load ptr, ptr %arrayidx384.3517.i, align 8
  %209 = getelementptr i16, ptr %208, i64 %157
  %arrayidx386.5.3.i = getelementptr i8, ptr %209, i64 10
  store i16 %conv382.i, ptr %arrayidx386.5.3.i, align 2
  %210 = load ptr, ptr %arrayidx384.3517.i, align 8
  %211 = getelementptr i16, ptr %210, i64 %157
  %arrayidx386.6.3.i = getelementptr i8, ptr %211, i64 12
  store i16 %conv382.i, ptr %arrayidx386.6.3.i, align 2
  %212 = load ptr, ptr %arrayidx384.3517.i, align 8
  %213 = getelementptr i16, ptr %212, i64 %157
  %arrayidx386.7.3.i = getelementptr i8, ptr %213, i64 14
  store i16 %conv382.i, ptr %arrayidx386.7.3.i, align 2
  %arrayidx384.4520.i = getelementptr inbounds ptr, ptr %10, i64 %18
  %214 = load ptr, ptr %arrayidx384.4520.i, align 8
  %arrayidx386.4497521.i = getelementptr inbounds i16, ptr %214, i64 %157
  store i16 %conv382.i, ptr %arrayidx386.4497521.i, align 2
  %215 = load ptr, ptr %arrayidx384.4520.i, align 8
  %arrayidx386.1.4.i = getelementptr inbounds i16, ptr %215, i64 %indvars.iv.next.i
  store i16 %conv382.i, ptr %arrayidx386.1.4.i, align 2
  %216 = load ptr, ptr %arrayidx384.4520.i, align 8
  %217 = getelementptr i16, ptr %216, i64 %157
  %arrayidx386.2.4.i = getelementptr i8, ptr %217, i64 4
  store i16 %conv382.i, ptr %arrayidx386.2.4.i, align 2
  %218 = load ptr, ptr %arrayidx384.4520.i, align 8
  %219 = getelementptr i16, ptr %218, i64 %157
  %arrayidx386.3.4.i = getelementptr i8, ptr %219, i64 6
  store i16 %conv382.i, ptr %arrayidx386.3.4.i, align 2
  %220 = load ptr, ptr %arrayidx384.4520.i, align 8
  %221 = getelementptr i16, ptr %220, i64 %157
  %arrayidx386.4.4.i = getelementptr i8, ptr %221, i64 8
  store i16 %conv382.i, ptr %arrayidx386.4.4.i, align 2
  %222 = load ptr, ptr %arrayidx384.4520.i, align 8
  %223 = getelementptr i16, ptr %222, i64 %157
  %arrayidx386.5.4.i = getelementptr i8, ptr %223, i64 10
  store i16 %conv382.i, ptr %arrayidx386.5.4.i, align 2
  %224 = load ptr, ptr %arrayidx384.4520.i, align 8
  %225 = getelementptr i16, ptr %224, i64 %157
  %arrayidx386.6.4.i = getelementptr i8, ptr %225, i64 12
  store i16 %conv382.i, ptr %arrayidx386.6.4.i, align 2
  %226 = load ptr, ptr %arrayidx384.4520.i, align 8
  %227 = getelementptr i16, ptr %226, i64 %157
  %arrayidx386.7.4.i = getelementptr i8, ptr %227, i64 14
  store i16 %conv382.i, ptr %arrayidx386.7.4.i, align 2
  %arrayidx384.5523.i = getelementptr inbounds ptr, ptr %10, i64 %20
  %228 = load ptr, ptr %arrayidx384.5523.i, align 8
  %arrayidx386.5499524.i = getelementptr inbounds i16, ptr %228, i64 %157
  store i16 %conv382.i, ptr %arrayidx386.5499524.i, align 2
  %229 = load ptr, ptr %arrayidx384.5523.i, align 8
  %arrayidx386.1.5.i = getelementptr inbounds i16, ptr %229, i64 %indvars.iv.next.i
  store i16 %conv382.i, ptr %arrayidx386.1.5.i, align 2
  %230 = load ptr, ptr %arrayidx384.5523.i, align 8
  %231 = getelementptr i16, ptr %230, i64 %157
  %arrayidx386.2.5.i = getelementptr i8, ptr %231, i64 4
  store i16 %conv382.i, ptr %arrayidx386.2.5.i, align 2
  %232 = load ptr, ptr %arrayidx384.5523.i, align 8
  %233 = getelementptr i16, ptr %232, i64 %157
  %arrayidx386.3.5.i = getelementptr i8, ptr %233, i64 6
  store i16 %conv382.i, ptr %arrayidx386.3.5.i, align 2
  %234 = load ptr, ptr %arrayidx384.5523.i, align 8
  %235 = getelementptr i16, ptr %234, i64 %157
  %arrayidx386.4.5.i = getelementptr i8, ptr %235, i64 8
  store i16 %conv382.i, ptr %arrayidx386.4.5.i, align 2
  %236 = load ptr, ptr %arrayidx384.5523.i, align 8
  %237 = getelementptr i16, ptr %236, i64 %157
  %arrayidx386.5.5.i = getelementptr i8, ptr %237, i64 10
  store i16 %conv382.i, ptr %arrayidx386.5.5.i, align 2
  %238 = load ptr, ptr %arrayidx384.5523.i, align 8
  %239 = getelementptr i16, ptr %238, i64 %157
  %arrayidx386.6.5.i = getelementptr i8, ptr %239, i64 12
  store i16 %conv382.i, ptr %arrayidx386.6.5.i, align 2
  %240 = load ptr, ptr %arrayidx384.5523.i, align 8
  %241 = getelementptr i16, ptr %240, i64 %157
  %arrayidx386.7.5.i = getelementptr i8, ptr %241, i64 14
  store i16 %conv382.i, ptr %arrayidx386.7.5.i, align 2
  %arrayidx384.6526.i = getelementptr inbounds ptr, ptr %10, i64 %22
  %242 = load ptr, ptr %arrayidx384.6526.i, align 8
  %arrayidx386.6501527.i = getelementptr inbounds i16, ptr %242, i64 %157
  store i16 %conv382.i, ptr %arrayidx386.6501527.i, align 2
  %243 = load ptr, ptr %arrayidx384.6526.i, align 8
  %arrayidx386.1.6.i = getelementptr inbounds i16, ptr %243, i64 %indvars.iv.next.i
  store i16 %conv382.i, ptr %arrayidx386.1.6.i, align 2
  %244 = load ptr, ptr %arrayidx384.6526.i, align 8
  %245 = getelementptr i16, ptr %244, i64 %157
  %arrayidx386.2.6.i = getelementptr i8, ptr %245, i64 4
  store i16 %conv382.i, ptr %arrayidx386.2.6.i, align 2
  %246 = load ptr, ptr %arrayidx384.6526.i, align 8
  %247 = getelementptr i16, ptr %246, i64 %157
  %arrayidx386.3.6.i = getelementptr i8, ptr %247, i64 6
  store i16 %conv382.i, ptr %arrayidx386.3.6.i, align 2
  %248 = load ptr, ptr %arrayidx384.6526.i, align 8
  %249 = getelementptr i16, ptr %248, i64 %157
  %arrayidx386.4.6.i = getelementptr i8, ptr %249, i64 8
  store i16 %conv382.i, ptr %arrayidx386.4.6.i, align 2
  %250 = load ptr, ptr %arrayidx384.6526.i, align 8
  %251 = getelementptr i16, ptr %250, i64 %157
  %arrayidx386.5.6.i = getelementptr i8, ptr %251, i64 10
  store i16 %conv382.i, ptr %arrayidx386.5.6.i, align 2
  %252 = load ptr, ptr %arrayidx384.6526.i, align 8
  %253 = getelementptr i16, ptr %252, i64 %157
  %arrayidx386.6.6.i = getelementptr i8, ptr %253, i64 12
  store i16 %conv382.i, ptr %arrayidx386.6.6.i, align 2
  %254 = load ptr, ptr %arrayidx384.6526.i, align 8
  %255 = getelementptr i16, ptr %254, i64 %157
  %arrayidx386.7.6.i = getelementptr i8, ptr %255, i64 14
  store i16 %conv382.i, ptr %arrayidx386.7.6.i, align 2
  %arrayidx384.7529.i = getelementptr inbounds ptr, ptr %10, i64 %24
  %256 = load ptr, ptr %arrayidx384.7529.i, align 8
  %arrayidx386.7503530.i = getelementptr inbounds i16, ptr %256, i64 %157
  store i16 %conv382.i, ptr %arrayidx386.7503530.i, align 2
  %257 = load ptr, ptr %arrayidx384.7529.i, align 8
  %arrayidx386.1.7.i = getelementptr inbounds i16, ptr %257, i64 %indvars.iv.next.i
  store i16 %conv382.i, ptr %arrayidx386.1.7.i, align 2
  %258 = load ptr, ptr %arrayidx384.7529.i, align 8
  %259 = getelementptr i16, ptr %258, i64 %157
  %arrayidx386.2.7.i = getelementptr i8, ptr %259, i64 4
  store i16 %conv382.i, ptr %arrayidx386.2.7.i, align 2
  %260 = load ptr, ptr %arrayidx384.7529.i, align 8
  %261 = getelementptr i16, ptr %260, i64 %157
  %arrayidx386.3.7.i = getelementptr i8, ptr %261, i64 6
  store i16 %conv382.i, ptr %arrayidx386.3.7.i, align 2
  %262 = load ptr, ptr %arrayidx384.7529.i, align 8
  %263 = getelementptr i16, ptr %262, i64 %157
  %arrayidx386.4.7.i = getelementptr i8, ptr %263, i64 8
  store i16 %conv382.i, ptr %arrayidx386.4.7.i, align 2
  %264 = load ptr, ptr %arrayidx384.7529.i, align 8
  %265 = getelementptr i16, ptr %264, i64 %157
  %arrayidx386.5.7.i = getelementptr i8, ptr %265, i64 10
  store i16 %conv382.i, ptr %arrayidx386.5.7.i, align 2
  %266 = load ptr, ptr %arrayidx384.7529.i, align 8
  %267 = getelementptr i16, ptr %266, i64 %157
  %arrayidx386.6.7.i = getelementptr i8, ptr %267, i64 12
  store i16 %conv382.i, ptr %arrayidx386.6.7.i, align 2
  %268 = load ptr, ptr %arrayidx384.7529.i, align 8
  %269 = getelementptr i16, ptr %268, i64 %157
  %arrayidx386.7.7.i = getelementptr i8, ptr %269, i64 14
  store i16 %conv382.i, ptr %arrayidx386.7.7.i, align 2
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pix_d.i) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pix_c.i) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pix_b.i) #6
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %pix_a.i) #6
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %PredPel.i) #6
  br label %cleanup

sw.bb7:                                           ; preds = %entry
  %p_Vid1.i72 = getelementptr inbounds i8, ptr %currMB, i64 8
  %270 = load ptr, ptr %p_Vid1.i72, align 8
  %tobool.not.i73 = icmp eq i32 %pl, 0
  %dec_picture2.i74 = getelementptr inbounds i8, ptr %2, i64 13520
  %271 = load ptr, ptr %dec_picture2.i74, align 8
  br i1 %tobool.not.i73, label %cond.false.i216, label %cond.true.i75

cond.true.i75:                                    ; preds = %sw.bb7
  %imgUV.i76 = getelementptr inbounds i8, ptr %271, i64 136
  %272 = load ptr, ptr %imgUV.i76, align 8
  %sub.i77 = add i32 %pl, -1
  %idxprom.i78 = zext i32 %sub.i77 to i64
  %arrayidx.i79 = getelementptr inbounds ptr, ptr %272, i64 %idxprom.i78
  br label %cond.end.i80

cond.false.i216:                                  ; preds = %sw.bb7
  %imgY3.i217 = getelementptr inbounds i8, ptr %271, i64 128
  br label %cond.end.i80

cond.end.i80:                                     ; preds = %cond.false.i216, %cond.true.i75
  %cond.in.i81 = phi ptr [ %arrayidx.i79, %cond.true.i75 ], [ %imgY3.i217, %cond.false.i216 ]
  %cond.i82 = load ptr, ptr %cond.in.i81, align 8
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %pix_a.i68) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pix_b.i69) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pix_c.i70) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pix_d.i71) #6
  %mb_pred.i83 = getelementptr inbounds i8, ptr %2, i64 1248
  %273 = load ptr, ptr %mb_pred.i83, align 8
  %idxprom4.i84 = zext i32 %pl to i64
  %arrayidx5.i85 = getelementptr inbounds ptr, ptr %273, i64 %idxprom4.i84
  %274 = load ptr, ptr %arrayidx5.i85, align 8
  %mb_size6.i86 = getelementptr inbounds i8, ptr %270, i64 849124
  %sub8.i87 = add nsw i32 %ioff, -1
  %275 = sext i32 %joff to i64
  call void @getAffNeighbour(ptr noundef nonnull %currMB, i32 noundef %sub8.i87, i32 noundef %joff, ptr noundef nonnull %mb_size6.i86, ptr noundef nonnull %pix_a.i68) #6
  %276 = add nsw i64 %275, 1
  %arrayidx10.1.i88 = getelementptr inbounds i8, ptr %pix_a.i68, i64 16
  %277 = trunc nsw i64 %276 to i32
  call void @getAffNeighbour(ptr noundef nonnull %currMB, i32 noundef %sub8.i87, i32 noundef %277, ptr noundef nonnull %mb_size6.i86, ptr noundef nonnull %arrayidx10.1.i88) #6
  %278 = add nsw i64 %275, 2
  %arrayidx10.2.i89 = getelementptr inbounds i8, ptr %pix_a.i68, i64 32
  %279 = trunc nsw i64 %278 to i32
  call void @getAffNeighbour(ptr noundef nonnull %currMB, i32 noundef %sub8.i87, i32 noundef %279, ptr noundef nonnull %mb_size6.i86, ptr noundef nonnull %arrayidx10.2.i89) #6
  %280 = add nsw i64 %275, 3
  %arrayidx10.3.i90 = getelementptr inbounds i8, ptr %pix_a.i68, i64 48
  %281 = trunc nsw i64 %280 to i32
  call void @getAffNeighbour(ptr noundef nonnull %currMB, i32 noundef %sub8.i87, i32 noundef %281, ptr noundef nonnull %mb_size6.i86, ptr noundef nonnull %arrayidx10.3.i90) #6
  %282 = add nsw i64 %275, 4
  %arrayidx10.4.i91 = getelementptr inbounds i8, ptr %pix_a.i68, i64 64
  %283 = trunc nsw i64 %282 to i32
  call void @getAffNeighbour(ptr noundef nonnull %currMB, i32 noundef %sub8.i87, i32 noundef %283, ptr noundef nonnull %mb_size6.i86, ptr noundef nonnull %arrayidx10.4.i91) #6
  %284 = add nsw i64 %275, 5
  %arrayidx10.5.i92 = getelementptr inbounds i8, ptr %pix_a.i68, i64 80
  %285 = trunc nsw i64 %284 to i32
  call void @getAffNeighbour(ptr noundef nonnull %currMB, i32 noundef %sub8.i87, i32 noundef %285, ptr noundef nonnull %mb_size6.i86, ptr noundef nonnull %arrayidx10.5.i92) #6
  %286 = add nsw i64 %275, 6
  %arrayidx10.6.i93 = getelementptr inbounds i8, ptr %pix_a.i68, i64 96
  %287 = trunc nsw i64 %286 to i32
  call void @getAffNeighbour(ptr noundef nonnull %currMB, i32 noundef %sub8.i87, i32 noundef %287, ptr noundef nonnull %mb_size6.i86, ptr noundef nonnull %arrayidx10.6.i93) #6
  %288 = add nsw i64 %275, 7
  %arrayidx10.7.i94 = getelementptr inbounds i8, ptr %pix_a.i68, i64 112
  %289 = trunc nsw i64 %288 to i32
  call void @getAffNeighbour(ptr noundef nonnull %currMB, i32 noundef %sub8.i87, i32 noundef %289, ptr noundef nonnull %mb_size6.i86, ptr noundef nonnull %arrayidx10.7.i94) #6
  %sub11.i95 = add nsw i32 %joff, -1
  call void @getAffNeighbour(ptr noundef nonnull %currMB, i32 noundef %ioff, i32 noundef %sub11.i95, ptr noundef nonnull %mb_size6.i86, ptr noundef nonnull %pix_b.i69) #6
  %add12.i96 = add nsw i32 %ioff, 8
  call void @getAffNeighbour(ptr noundef nonnull %currMB, i32 noundef %add12.i96, i32 noundef %sub11.i95, ptr noundef nonnull %mb_size6.i86, ptr noundef nonnull %pix_c.i70) #6
  call void @getAffNeighbour(ptr noundef nonnull %currMB, i32 noundef %sub8.i87, i32 noundef %sub11.i95, ptr noundef nonnull %mb_size6.i86, ptr noundef nonnull %pix_d.i71) #6
  %290 = load i32, ptr %pix_c.i70, align 4
  %tobool16.not.i97 = icmp ne i32 %290, 0
  %cmp17.i98 = icmp ne i32 %ioff, 8
  %cmp19.i99 = icmp ne i32 %joff, 8
  %.not.i100 = or i1 %cmp17.i98, %cmp19.i99
  %narrow.i101 = and i1 %.not.i100, %tobool16.not.i97
  %land.ext.i102 = zext i1 %narrow.i101 to i32
  store i32 %land.ext.i102, ptr %pix_c.i70, align 4
  %active_pps.i103 = getelementptr inbounds i8, ptr %270, i64 8
  %291 = load ptr, ptr %active_pps.i103, align 8
  %constrained_intra_pred_flag.i104 = getelementptr inbounds i8, ptr %291, i64 2204
  %292 = load i32, ptr %constrained_intra_pred_flag.i104, align 4
  %tobool22.not.i105 = icmp eq i32 %292, 0
  br i1 %tobool22.not.i105, label %if.else.i215, label %for.cond23.preheader.i106

for.cond23.preheader.i106:                        ; preds = %cond.end.i80
  %intra_block.i107 = getelementptr inbounds i8, ptr %2, i64 13544
  %293 = load i32, ptr %pix_b.i69, align 4
  %tobool42.not.i172 = icmp eq i32 %293, 0
  br i1 %tobool42.not.i172, label %cond.end50.i178, label %cond.true43.i173

cond.true43.i173:                                 ; preds = %for.cond23.preheader.i106
  %294 = load ptr, ptr %intra_block.i107, align 8
  %mb_addr45.i174 = getelementptr inbounds i8, ptr %pix_b.i69, i64 4
  %295 = load i32, ptr %mb_addr45.i174, align 4
  %idxprom46.i175 = sext i32 %295 to i64
  %arrayidx47.i176 = getelementptr inbounds i8, ptr %294, i64 %idxprom46.i175
  %296 = load i8, ptr %arrayidx47.i176, align 1
  %conv48.i177 = sext i8 %296 to i32
  br label %cond.end50.i178

cond.end50.i178:                                  ; preds = %cond.true43.i173, %for.cond23.preheader.i106
  %cond51.i179 = phi i32 [ %conv48.i177, %cond.true43.i173 ], [ 0, %for.cond23.preheader.i106 ]
  br i1 %narrow.i101, label %cond.true54.i210, label %cond.end61.i180

cond.true54.i210:                                 ; preds = %cond.end50.i178
  %297 = load ptr, ptr %intra_block.i107, align 8
  %mb_addr56.i211 = getelementptr inbounds i8, ptr %pix_c.i70, i64 4
  %298 = load i32, ptr %mb_addr56.i211, align 4
  %idxprom57.i212 = sext i32 %298 to i64
  %arrayidx58.i213 = getelementptr inbounds i8, ptr %297, i64 %idxprom57.i212
  %299 = load i8, ptr %arrayidx58.i213, align 1
  %conv59.i214 = sext i8 %299 to i32
  br label %cond.end61.i180

cond.end61.i180:                                  ; preds = %cond.true54.i210, %cond.end50.i178
  %cond62.i181 = phi i32 [ %conv59.i214, %cond.true54.i210 ], [ 0, %cond.end50.i178 ]
  %300 = load i32, ptr %pix_d.i71, align 4
  %tobool64.not.i182 = icmp eq i32 %300, 0
  br i1 %tobool64.not.i182, label %if.end.i188, label %cond.true65.i183

cond.true65.i183:                                 ; preds = %cond.end61.i180
  %301 = load ptr, ptr %intra_block.i107, align 8
  %mb_addr67.i184 = getelementptr inbounds i8, ptr %pix_d.i71, i64 4
  %302 = load i32, ptr %mb_addr67.i184, align 4
  %idxprom68.i185 = sext i32 %302 to i64
  %arrayidx69.i186 = getelementptr inbounds i8, ptr %301, i64 %idxprom68.i185
  %303 = load i8, ptr %arrayidx69.i186, align 1
  %conv70.i187 = sext i8 %303 to i32
  br label %if.end.i188

if.else.i215:                                     ; preds = %cond.end.i80
  %304 = load i32, ptr %pix_b.i69, align 4
  %305 = load i32, ptr %pix_d.i71, align 4
  br label %if.end.i188

if.end.i188:                                      ; preds = %if.else.i215, %cond.true65.i183, %cond.end61.i180
  %block_available_up_left.0.i190 = phi i32 [ %305, %if.else.i215 ], [ 0, %cond.end61.i180 ], [ %conv70.i187, %cond.true65.i183 ]
  %block_available_up_right.0.i191 = phi i32 [ %land.ext.i102, %if.else.i215 ], [ %cond62.i181, %cond.end61.i180 ], [ %cond62.i181, %cond.true65.i183 ]
  %block_available_up.0.i192 = phi i32 [ %304, %if.else.i215 ], [ %cond51.i179, %cond.end61.i180 ], [ %cond51.i179, %cond.true65.i183 ]
  %tobool79.not.i = icmp eq i32 %block_available_up.0.i192, 0
  br i1 %tobool79.not.i, label %if.then80.i206, label %if.then83.i

if.then80.i206:                                   ; preds = %if.end.i188
  %current_mb_nr.i = getelementptr inbounds i8, ptr %2, i64 108
  %306 = load i32, ptr %current_mb_nr.i, align 4
  %call.i = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %306)
  %dc_pred_value_comp.i207 = getelementptr inbounds i8, ptr %270, i64 849060
  %arrayidx104.i = getelementptr inbounds [3 x i32], ptr %dc_pred_value_comp.i207, i64 0, i64 %idxprom4.i84
  %307 = load i32, ptr %arrayidx104.i, align 4
  %conv105.i = trunc i32 %307 to i16
  br label %if.end114.i

if.then83.i:                                      ; preds = %if.end.i188
  %pos_y.i193 = getelementptr inbounds i8, ptr %pix_b.i69, i64 14
  %308 = load i16, ptr %pos_y.i193, align 2
  %idxprom84.i = sext i16 %308 to i64
  %arrayidx85.i = getelementptr inbounds ptr, ptr %cond.i82, i64 %idxprom84.i
  %309 = load ptr, ptr %arrayidx85.i, align 8
  %pos_x.i194 = getelementptr inbounds i8, ptr %pix_b.i69, i64 12
  %310 = load i16, ptr %pos_x.i194, align 4
  %idxprom86.i = sext i16 %310 to i64
  %arrayidx87.i195 = getelementptr inbounds i16, ptr %309, i64 %idxprom86.i
  %incdec.ptr.i = getelementptr inbounds i8, ptr %arrayidx87.i195, i64 2
  %311 = load i16, ptr %arrayidx87.i195, align 2
  %incdec.ptr89.i = getelementptr inbounds i8, ptr %arrayidx87.i195, i64 4
  %312 = load i16, ptr %incdec.ptr.i, align 2
  %incdec.ptr91.i = getelementptr inbounds i8, ptr %arrayidx87.i195, i64 6
  %313 = load i16, ptr %incdec.ptr89.i, align 2
  %incdec.ptr93.i = getelementptr inbounds i8, ptr %arrayidx87.i195, i64 8
  %314 = load i16, ptr %incdec.ptr91.i, align 2
  %incdec.ptr95.i = getelementptr inbounds i8, ptr %arrayidx87.i195, i64 10
  %315 = load i16, ptr %incdec.ptr93.i, align 2
  %incdec.ptr97.i = getelementptr inbounds i8, ptr %arrayidx87.i195, i64 12
  %316 = load i16, ptr %incdec.ptr95.i, align 2
  %incdec.ptr99.i = getelementptr inbounds i8, ptr %arrayidx87.i195, i64 14
  %317 = load i16, ptr %incdec.ptr97.i, align 2
  %318 = load i16, ptr %incdec.ptr99.i, align 2
  br label %if.end114.i

if.end114.i:                                      ; preds = %if.then83.i, %if.then80.i206
  %PredPel.i67.sroa.35.0 = phi i16 [ %conv105.i, %if.then80.i206 ], [ %318, %if.then83.i ]
  %PredPel.i67.sroa.31.0 = phi i16 [ %conv105.i, %if.then80.i206 ], [ %317, %if.then83.i ]
  %.sink255.i = phi i16 [ %conv105.i, %if.then80.i206 ], [ %316, %if.then83.i ]
  %.sink254.i = phi i16 [ %conv105.i, %if.then80.i206 ], [ %315, %if.then83.i ]
  %.sink253.i = phi i16 [ %conv105.i, %if.then80.i206 ], [ %314, %if.then83.i ]
  %.sink252.i = phi i16 [ %conv105.i, %if.then80.i206 ], [ %313, %if.then83.i ]
  %.sink251.i = phi i16 [ %conv105.i, %if.then80.i206 ], [ %312, %if.then83.i ]
  %.sink.i196 = phi i16 [ %conv105.i, %if.then80.i206 ], [ %311, %if.then83.i ]
  %tobool115.not.i = icmp eq i32 %block_available_up_right.0.i191, 0
  br i1 %tobool115.not.i, label %if.end148.i199, label %if.then116.i

if.then116.i:                                     ; preds = %if.end114.i
  %pos_y117.i = getelementptr inbounds i8, ptr %pix_c.i70, i64 14
  %319 = load i16, ptr %pos_y117.i, align 2
  %idxprom118.i = sext i16 %319 to i64
  %arrayidx119.i = getelementptr inbounds ptr, ptr %cond.i82, i64 %idxprom118.i
  %320 = load ptr, ptr %arrayidx119.i, align 8
  %pos_x120.i = getelementptr inbounds i8, ptr %pix_c.i70, i64 12
  %321 = load i16, ptr %pos_x120.i, align 4
  %idxprom121.i = sext i16 %321 to i64
  %arrayidx122.i = getelementptr inbounds i16, ptr %320, i64 %idxprom121.i
  %322 = load i16, ptr %arrayidx122.i, align 2
  br label %if.end148.i199

if.end148.i199:                                   ; preds = %if.end114.i, %if.then116.i
  %.sink256.i = phi i16 [ %322, %if.then116.i ], [ %PredPel.i67.sroa.35.0, %if.end114.i ]
  %tobool149.not.i = icmp eq i32 %block_available_up_left.0.i190, 0
  br i1 %tobool149.not.i, label %if.end47.i, label %if.then.i

if.then.i:                                        ; preds = %if.end148.i199
  br i1 %tobool79.not.i, label %LowPassForIntra8x8PredHor.exit, label %if.then51.i

if.end47.i:                                       ; preds = %if.end148.i199
  br i1 %tobool79.not.i, label %LowPassForIntra8x8PredHor.exit, label %if.else65.i

if.then51.i:                                      ; preds = %if.then.i
  %pos_y151.i = getelementptr inbounds i8, ptr %pix_d.i71, i64 14
  %323 = load i16, ptr %pos_y151.i, align 2
  %idxprom152.i = sext i16 %323 to i64
  %arrayidx153.i = getelementptr inbounds ptr, ptr %cond.i82, i64 %idxprom152.i
  %324 = load ptr, ptr %arrayidx153.i, align 8
  %pos_x154.i = getelementptr inbounds i8, ptr %pix_d.i71, i64 12
  %325 = load i16, ptr %pos_x154.i, align 4
  %idxprom155.i = sext i16 %325 to i64
  %arrayidx156.i = getelementptr inbounds i16, ptr %324, i64 %idxprom155.i
  %326 = load i16, ptr %arrayidx156.i, align 2
  %conv53.pre-phi.i = zext i16 %326 to i32
  %conv23.i = zext i16 %.sink.i196 to i32
  %shl56.i = shl nuw nsw i32 %conv23.i, 1
  %conv59.i1928 = zext i16 %.sink251.i to i32
  %add57.i = add nuw nsw i32 %conv59.i1928, 2
  %add60.i = add nuw nsw i32 %add57.i, %shl56.i
  %add61.i = add nuw nsw i32 %add60.i, %conv53.pre-phi.i
  br label %if.end79.i

if.else65.i:                                      ; preds = %if.end47.i
  %conv67.i = zext i16 %.sink.i196 to i32
  %add71.i = mul nuw nsw i32 %conv67.i, 3
  %conv73.i1929 = zext i16 %.sink251.i to i32
  %add74.i = add nuw nsw i32 %conv73.i1929, 2
  %add75.i = add nuw nsw i32 %add71.i, %add74.i
  br label %if.end79.i

if.end79.i:                                       ; preds = %if.else65.i, %if.then51.i
  %add87.1.pre-phi.i = phi i32 [ %add74.i, %if.else65.i ], [ %add57.i, %if.then51.i ]
  %conv85.pre-phi.i = phi i32 [ %conv73.i1929, %if.else65.i ], [ %conv59.i1928, %if.then51.i ]
  %conv82.pre-phi.i = phi i32 [ %conv67.i, %if.else65.i ], [ %conv23.i, %if.then51.i ]
  %LoopArray.sroa.6.0.in.in.i = phi i32 [ %add75.i, %if.else65.i ], [ %add61.i, %if.then51.i ]
  %LoopArray.sroa.6.0.in.i = lshr i32 %LoopArray.sroa.6.0.in.in.i, 2
  %LoopArray.sroa.6.0.i = trunc nuw i32 %LoopArray.sroa.6.0.in.i to i16
  %shl86.i = shl nuw nsw i32 %conv85.pre-phi.i, 1
  %conv91.i = zext i16 %.sink252.i to i32
  %add87.i = add nuw nsw i32 %conv91.i, 2
  %add92.i = add nuw nsw i32 %add87.i, %conv82.pre-phi.i
  %add93.i = add nuw nsw i32 %add92.i, %shl86.i
  %shr94.i = lshr i32 %add93.i, 2
  %conv95.i = trunc nuw i32 %shr94.i to i16
  %shl86.1.i = shl nuw nsw i32 %conv91.i, 1
  %conv91.1.i = zext i16 %.sink253.i to i32
  %add92.1.i = add nuw nsw i32 %shl86.1.i, %conv91.1.i
  %add93.1.i = add nuw nsw i32 %add92.1.i, %add87.1.pre-phi.i
  %shr94.1.i = lshr i32 %add93.1.i, 2
  %conv95.1.i = trunc nuw i32 %shr94.1.i to i16
  %shl86.2.i = shl nuw nsw i32 %conv91.1.i, 1
  %conv91.2.i = zext i16 %.sink254.i to i32
  %add87.2.i = add nuw nsw i32 %conv91.2.i, 2
  %add92.2.i = add nuw nsw i32 %add87.2.i, %conv91.i
  %add93.2.i = add nuw nsw i32 %add92.2.i, %shl86.2.i
  %shr94.2.i = lshr i32 %add93.2.i, 2
  %conv95.2.i = trunc nuw i32 %shr94.2.i to i16
  %shl86.3.i = shl nuw nsw i32 %conv91.2.i, 1
  %conv91.3.i = zext i16 %.sink255.i to i32
  %add87.3.i = add nuw nsw i32 %conv91.3.i, 2
  %add92.3.i = add nuw nsw i32 %add87.3.i, %conv91.1.i
  %add93.3.i = add nuw nsw i32 %add92.3.i, %shl86.3.i
  %shr94.3.i = lshr i32 %add93.3.i, 2
  %conv95.3.i = trunc nuw i32 %shr94.3.i to i16
  %shl86.4.i = shl nuw nsw i32 %conv91.3.i, 1
  %conv91.4.i = zext i16 %PredPel.i67.sroa.31.0 to i32
  %add87.4.i = add nuw nsw i32 %conv91.4.i, 2
  %add92.4.i = add nuw nsw i32 %add87.4.i, %conv91.2.i
  %add93.4.i = add nuw nsw i32 %add92.4.i, %shl86.4.i
  %shr94.4.i = lshr i32 %add93.4.i, 2
  %conv95.4.i = trunc nuw i32 %shr94.4.i to i16
  %shl86.5.i = shl nuw nsw i32 %conv91.4.i, 1
  %conv91.5.i = zext i16 %PredPel.i67.sroa.35.0 to i32
  %add92.5.i = add nuw nsw i32 %add87.3.i, %conv91.5.i
  %add93.5.i = add nuw nsw i32 %add92.5.i, %shl86.5.i
  %shr94.5.i = lshr i32 %add93.5.i, 2
  %conv95.5.i = trunc nuw i32 %shr94.5.i to i16
  %shl86.6.i = shl nuw nsw i32 %conv91.5.i, 1
  %conv91.6.i = zext i16 %.sink256.i to i32
  %add92.6.i = add nuw nsw i32 %add87.4.i, %shl86.6.i
  %add93.6.i = add nuw nsw i32 %add92.6.i, %conv91.6.i
  %shr94.6.i = lshr i32 %add93.6.i, 2
  %conv95.6.i = trunc nuw i32 %shr94.6.i to i16
  br label %LowPassForIntra8x8PredHor.exit

LowPassForIntra8x8PredHor.exit:                   ; preds = %if.then.i, %if.end47.i, %if.end79.i
  %LoopArray.sroa.14.0.i = phi i16 [ %PredPel.i67.sroa.35.0, %if.end47.i ], [ %conv95.6.i, %if.end79.i ], [ %PredPel.i67.sroa.35.0, %if.then.i ]
  %LoopArray.sroa.13.0.i = phi i16 [ %PredPel.i67.sroa.31.0, %if.end47.i ], [ %conv95.5.i, %if.end79.i ], [ %PredPel.i67.sroa.31.0, %if.then.i ]
  %LoopArray.sroa.12.0.i = phi i16 [ %.sink255.i, %if.end47.i ], [ %conv95.4.i, %if.end79.i ], [ %.sink255.i, %if.then.i ]
  %LoopArray.sroa.11.0.i = phi i16 [ %.sink254.i, %if.end47.i ], [ %conv95.3.i, %if.end79.i ], [ %.sink254.i, %if.then.i ]
  %LoopArray.sroa.10.0.i = phi i16 [ %.sink253.i, %if.end47.i ], [ %conv95.2.i, %if.end79.i ], [ %.sink253.i, %if.then.i ]
  %LoopArray.sroa.9.0.i = phi i16 [ %.sink252.i, %if.end47.i ], [ %conv95.1.i, %if.end79.i ], [ %.sink252.i, %if.then.i ]
  %LoopArray.sroa.8.0.i = phi i16 [ %.sink251.i, %if.end47.i ], [ %conv95.i, %if.end79.i ], [ %.sink251.i, %if.then.i ]
  %LoopArray.sroa.6.1.i = phi i16 [ %.sink.i196, %if.end47.i ], [ %LoopArray.sroa.6.0.i, %if.end79.i ], [ %.sink.i196, %if.then.i ]
  %idxprom173.i = sext i32 %ioff to i64
  %arrayidx172.i202 = getelementptr inbounds ptr, ptr %274, i64 %275
  %327 = load ptr, ptr %arrayidx172.i202, align 8
  %arrayidx174.i = getelementptr inbounds i16, ptr %327, i64 %idxprom173.i
  store i16 %LoopArray.sroa.6.1.i, ptr %arrayidx174.i, align 2
  %PredPel.i67.sroa.16.2.arrayidx174.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx174.i, i64 2
  store i16 %LoopArray.sroa.8.0.i, ptr %PredPel.i67.sroa.16.2.arrayidx174.i.sroa_idx, align 2
  %PredPel.i67.sroa.19.2.arrayidx174.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx174.i, i64 4
  store i16 %LoopArray.sroa.9.0.i, ptr %PredPel.i67.sroa.19.2.arrayidx174.i.sroa_idx, align 2
  %PredPel.i67.sroa.22.2.arrayidx174.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx174.i, i64 6
  store i16 %LoopArray.sroa.10.0.i, ptr %PredPel.i67.sroa.22.2.arrayidx174.i.sroa_idx, align 2
  %PredPel.i67.sroa.25.2.arrayidx174.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx174.i, i64 8
  store i16 %LoopArray.sroa.11.0.i, ptr %PredPel.i67.sroa.25.2.arrayidx174.i.sroa_idx, align 2
  %PredPel.i67.sroa.28.2.arrayidx174.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx174.i, i64 10
  store i16 %LoopArray.sroa.12.0.i, ptr %PredPel.i67.sroa.28.2.arrayidx174.i.sroa_idx, align 2
  %PredPel.i67.sroa.31.2.arrayidx174.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx174.i, i64 12
  store i16 %LoopArray.sroa.13.0.i, ptr %PredPel.i67.sroa.31.2.arrayidx174.i.sroa_idx, align 2
  %PredPel.i67.sroa.35.2.arrayidx174.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx174.i, i64 14
  store i16 %LoopArray.sroa.14.0.i, ptr %PredPel.i67.sroa.35.2.arrayidx174.i.sroa_idx, align 2
  %arrayidx172.1.i = getelementptr inbounds ptr, ptr %274, i64 %276
  %328 = load ptr, ptr %arrayidx172.1.i, align 8
  %arrayidx174.1.i = getelementptr inbounds i16, ptr %328, i64 %idxprom173.i
  store i16 %LoopArray.sroa.6.1.i, ptr %arrayidx174.1.i, align 2
  %PredPel.i67.sroa.16.2.arrayidx174.1.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx174.1.i, i64 2
  store i16 %LoopArray.sroa.8.0.i, ptr %PredPel.i67.sroa.16.2.arrayidx174.1.i.sroa_idx, align 2
  %PredPel.i67.sroa.19.2.arrayidx174.1.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx174.1.i, i64 4
  store i16 %LoopArray.sroa.9.0.i, ptr %PredPel.i67.sroa.19.2.arrayidx174.1.i.sroa_idx, align 2
  %PredPel.i67.sroa.22.2.arrayidx174.1.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx174.1.i, i64 6
  store i16 %LoopArray.sroa.10.0.i, ptr %PredPel.i67.sroa.22.2.arrayidx174.1.i.sroa_idx, align 2
  %PredPel.i67.sroa.25.2.arrayidx174.1.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx174.1.i, i64 8
  store i16 %LoopArray.sroa.11.0.i, ptr %PredPel.i67.sroa.25.2.arrayidx174.1.i.sroa_idx, align 2
  %PredPel.i67.sroa.28.2.arrayidx174.1.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx174.1.i, i64 10
  store i16 %LoopArray.sroa.12.0.i, ptr %PredPel.i67.sroa.28.2.arrayidx174.1.i.sroa_idx, align 2
  %PredPel.i67.sroa.31.2.arrayidx174.1.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx174.1.i, i64 12
  store i16 %LoopArray.sroa.13.0.i, ptr %PredPel.i67.sroa.31.2.arrayidx174.1.i.sroa_idx, align 2
  %PredPel.i67.sroa.35.2.arrayidx174.1.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx174.1.i, i64 14
  store i16 %LoopArray.sroa.14.0.i, ptr %PredPel.i67.sroa.35.2.arrayidx174.1.i.sroa_idx, align 2
  %arrayidx172.2.i = getelementptr inbounds ptr, ptr %274, i64 %278
  %329 = load ptr, ptr %arrayidx172.2.i, align 8
  %arrayidx174.2.i = getelementptr inbounds i16, ptr %329, i64 %idxprom173.i
  store i16 %LoopArray.sroa.6.1.i, ptr %arrayidx174.2.i, align 2
  %PredPel.i67.sroa.16.2.arrayidx174.2.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx174.2.i, i64 2
  store i16 %LoopArray.sroa.8.0.i, ptr %PredPel.i67.sroa.16.2.arrayidx174.2.i.sroa_idx, align 2
  %PredPel.i67.sroa.19.2.arrayidx174.2.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx174.2.i, i64 4
  store i16 %LoopArray.sroa.9.0.i, ptr %PredPel.i67.sroa.19.2.arrayidx174.2.i.sroa_idx, align 2
  %PredPel.i67.sroa.22.2.arrayidx174.2.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx174.2.i, i64 6
  store i16 %LoopArray.sroa.10.0.i, ptr %PredPel.i67.sroa.22.2.arrayidx174.2.i.sroa_idx, align 2
  %PredPel.i67.sroa.25.2.arrayidx174.2.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx174.2.i, i64 8
  store i16 %LoopArray.sroa.11.0.i, ptr %PredPel.i67.sroa.25.2.arrayidx174.2.i.sroa_idx, align 2
  %PredPel.i67.sroa.28.2.arrayidx174.2.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx174.2.i, i64 10
  store i16 %LoopArray.sroa.12.0.i, ptr %PredPel.i67.sroa.28.2.arrayidx174.2.i.sroa_idx, align 2
  %PredPel.i67.sroa.31.2.arrayidx174.2.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx174.2.i, i64 12
  store i16 %LoopArray.sroa.13.0.i, ptr %PredPel.i67.sroa.31.2.arrayidx174.2.i.sroa_idx, align 2
  %PredPel.i67.sroa.35.2.arrayidx174.2.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx174.2.i, i64 14
  store i16 %LoopArray.sroa.14.0.i, ptr %PredPel.i67.sroa.35.2.arrayidx174.2.i.sroa_idx, align 2
  %arrayidx172.3.i = getelementptr inbounds ptr, ptr %274, i64 %280
  %330 = load ptr, ptr %arrayidx172.3.i, align 8
  %arrayidx174.3.i = getelementptr inbounds i16, ptr %330, i64 %idxprom173.i
  store i16 %LoopArray.sroa.6.1.i, ptr %arrayidx174.3.i, align 2
  %PredPel.i67.sroa.16.2.arrayidx174.3.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx174.3.i, i64 2
  store i16 %LoopArray.sroa.8.0.i, ptr %PredPel.i67.sroa.16.2.arrayidx174.3.i.sroa_idx, align 2
  %PredPel.i67.sroa.19.2.arrayidx174.3.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx174.3.i, i64 4
  store i16 %LoopArray.sroa.9.0.i, ptr %PredPel.i67.sroa.19.2.arrayidx174.3.i.sroa_idx, align 2
  %PredPel.i67.sroa.22.2.arrayidx174.3.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx174.3.i, i64 6
  store i16 %LoopArray.sroa.10.0.i, ptr %PredPel.i67.sroa.22.2.arrayidx174.3.i.sroa_idx, align 2
  %PredPel.i67.sroa.25.2.arrayidx174.3.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx174.3.i, i64 8
  store i16 %LoopArray.sroa.11.0.i, ptr %PredPel.i67.sroa.25.2.arrayidx174.3.i.sroa_idx, align 2
  %PredPel.i67.sroa.28.2.arrayidx174.3.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx174.3.i, i64 10
  store i16 %LoopArray.sroa.12.0.i, ptr %PredPel.i67.sroa.28.2.arrayidx174.3.i.sroa_idx, align 2
  %PredPel.i67.sroa.31.2.arrayidx174.3.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx174.3.i, i64 12
  store i16 %LoopArray.sroa.13.0.i, ptr %PredPel.i67.sroa.31.2.arrayidx174.3.i.sroa_idx, align 2
  %PredPel.i67.sroa.35.2.arrayidx174.3.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx174.3.i, i64 14
  store i16 %LoopArray.sroa.14.0.i, ptr %PredPel.i67.sroa.35.2.arrayidx174.3.i.sroa_idx, align 2
  %arrayidx172.4.i = getelementptr inbounds ptr, ptr %274, i64 %282
  %331 = load ptr, ptr %arrayidx172.4.i, align 8
  %arrayidx174.4.i = getelementptr inbounds i16, ptr %331, i64 %idxprom173.i
  store i16 %LoopArray.sroa.6.1.i, ptr %arrayidx174.4.i, align 2
  %PredPel.i67.sroa.16.2.arrayidx174.4.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx174.4.i, i64 2
  store i16 %LoopArray.sroa.8.0.i, ptr %PredPel.i67.sroa.16.2.arrayidx174.4.i.sroa_idx, align 2
  %PredPel.i67.sroa.19.2.arrayidx174.4.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx174.4.i, i64 4
  store i16 %LoopArray.sroa.9.0.i, ptr %PredPel.i67.sroa.19.2.arrayidx174.4.i.sroa_idx, align 2
  %PredPel.i67.sroa.22.2.arrayidx174.4.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx174.4.i, i64 6
  store i16 %LoopArray.sroa.10.0.i, ptr %PredPel.i67.sroa.22.2.arrayidx174.4.i.sroa_idx, align 2
  %PredPel.i67.sroa.25.2.arrayidx174.4.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx174.4.i, i64 8
  store i16 %LoopArray.sroa.11.0.i, ptr %PredPel.i67.sroa.25.2.arrayidx174.4.i.sroa_idx, align 2
  %PredPel.i67.sroa.28.2.arrayidx174.4.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx174.4.i, i64 10
  store i16 %LoopArray.sroa.12.0.i, ptr %PredPel.i67.sroa.28.2.arrayidx174.4.i.sroa_idx, align 2
  %PredPel.i67.sroa.31.2.arrayidx174.4.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx174.4.i, i64 12
  store i16 %LoopArray.sroa.13.0.i, ptr %PredPel.i67.sroa.31.2.arrayidx174.4.i.sroa_idx, align 2
  %PredPel.i67.sroa.35.2.arrayidx174.4.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx174.4.i, i64 14
  store i16 %LoopArray.sroa.14.0.i, ptr %PredPel.i67.sroa.35.2.arrayidx174.4.i.sroa_idx, align 2
  %arrayidx172.5.i = getelementptr inbounds ptr, ptr %274, i64 %284
  %332 = load ptr, ptr %arrayidx172.5.i, align 8
  %arrayidx174.5.i = getelementptr inbounds i16, ptr %332, i64 %idxprom173.i
  store i16 %LoopArray.sroa.6.1.i, ptr %arrayidx174.5.i, align 2
  %PredPel.i67.sroa.16.2.arrayidx174.5.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx174.5.i, i64 2
  store i16 %LoopArray.sroa.8.0.i, ptr %PredPel.i67.sroa.16.2.arrayidx174.5.i.sroa_idx, align 2
  %PredPel.i67.sroa.19.2.arrayidx174.5.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx174.5.i, i64 4
  store i16 %LoopArray.sroa.9.0.i, ptr %PredPel.i67.sroa.19.2.arrayidx174.5.i.sroa_idx, align 2
  %PredPel.i67.sroa.22.2.arrayidx174.5.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx174.5.i, i64 6
  store i16 %LoopArray.sroa.10.0.i, ptr %PredPel.i67.sroa.22.2.arrayidx174.5.i.sroa_idx, align 2
  %PredPel.i67.sroa.25.2.arrayidx174.5.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx174.5.i, i64 8
  store i16 %LoopArray.sroa.11.0.i, ptr %PredPel.i67.sroa.25.2.arrayidx174.5.i.sroa_idx, align 2
  %PredPel.i67.sroa.28.2.arrayidx174.5.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx174.5.i, i64 10
  store i16 %LoopArray.sroa.12.0.i, ptr %PredPel.i67.sroa.28.2.arrayidx174.5.i.sroa_idx, align 2
  %PredPel.i67.sroa.31.2.arrayidx174.5.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx174.5.i, i64 12
  store i16 %LoopArray.sroa.13.0.i, ptr %PredPel.i67.sroa.31.2.arrayidx174.5.i.sroa_idx, align 2
  %PredPel.i67.sroa.35.2.arrayidx174.5.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx174.5.i, i64 14
  store i16 %LoopArray.sroa.14.0.i, ptr %PredPel.i67.sroa.35.2.arrayidx174.5.i.sroa_idx, align 2
  %arrayidx172.6.i = getelementptr inbounds ptr, ptr %274, i64 %286
  %333 = load ptr, ptr %arrayidx172.6.i, align 8
  %arrayidx174.6.i = getelementptr inbounds i16, ptr %333, i64 %idxprom173.i
  store i16 %LoopArray.sroa.6.1.i, ptr %arrayidx174.6.i, align 2
  %PredPel.i67.sroa.16.2.arrayidx174.6.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx174.6.i, i64 2
  store i16 %LoopArray.sroa.8.0.i, ptr %PredPel.i67.sroa.16.2.arrayidx174.6.i.sroa_idx, align 2
  %PredPel.i67.sroa.19.2.arrayidx174.6.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx174.6.i, i64 4
  store i16 %LoopArray.sroa.9.0.i, ptr %PredPel.i67.sroa.19.2.arrayidx174.6.i.sroa_idx, align 2
  %PredPel.i67.sroa.22.2.arrayidx174.6.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx174.6.i, i64 6
  store i16 %LoopArray.sroa.10.0.i, ptr %PredPel.i67.sroa.22.2.arrayidx174.6.i.sroa_idx, align 2
  %PredPel.i67.sroa.25.2.arrayidx174.6.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx174.6.i, i64 8
  store i16 %LoopArray.sroa.11.0.i, ptr %PredPel.i67.sroa.25.2.arrayidx174.6.i.sroa_idx, align 2
  %PredPel.i67.sroa.28.2.arrayidx174.6.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx174.6.i, i64 10
  store i16 %LoopArray.sroa.12.0.i, ptr %PredPel.i67.sroa.28.2.arrayidx174.6.i.sroa_idx, align 2
  %PredPel.i67.sroa.31.2.arrayidx174.6.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx174.6.i, i64 12
  store i16 %LoopArray.sroa.13.0.i, ptr %PredPel.i67.sroa.31.2.arrayidx174.6.i.sroa_idx, align 2
  %PredPel.i67.sroa.35.2.arrayidx174.6.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx174.6.i, i64 14
  store i16 %LoopArray.sroa.14.0.i, ptr %PredPel.i67.sroa.35.2.arrayidx174.6.i.sroa_idx, align 2
  %arrayidx172.7.i = getelementptr inbounds ptr, ptr %274, i64 %288
  %334 = load ptr, ptr %arrayidx172.7.i, align 8
  %arrayidx174.7.i = getelementptr inbounds i16, ptr %334, i64 %idxprom173.i
  store i16 %LoopArray.sroa.6.1.i, ptr %arrayidx174.7.i, align 2
  %PredPel.i67.sroa.16.2.arrayidx174.7.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx174.7.i, i64 2
  store i16 %LoopArray.sroa.8.0.i, ptr %PredPel.i67.sroa.16.2.arrayidx174.7.i.sroa_idx, align 2
  %PredPel.i67.sroa.19.2.arrayidx174.7.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx174.7.i, i64 4
  store i16 %LoopArray.sroa.9.0.i, ptr %PredPel.i67.sroa.19.2.arrayidx174.7.i.sroa_idx, align 2
  %PredPel.i67.sroa.22.2.arrayidx174.7.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx174.7.i, i64 6
  store i16 %LoopArray.sroa.10.0.i, ptr %PredPel.i67.sroa.22.2.arrayidx174.7.i.sroa_idx, align 2
  %PredPel.i67.sroa.25.2.arrayidx174.7.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx174.7.i, i64 8
  store i16 %LoopArray.sroa.11.0.i, ptr %PredPel.i67.sroa.25.2.arrayidx174.7.i.sroa_idx, align 2
  %PredPel.i67.sroa.28.2.arrayidx174.7.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx174.7.i, i64 10
  store i16 %LoopArray.sroa.12.0.i, ptr %PredPel.i67.sroa.28.2.arrayidx174.7.i.sroa_idx, align 2
  %PredPel.i67.sroa.31.2.arrayidx174.7.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx174.7.i, i64 12
  store i16 %LoopArray.sroa.13.0.i, ptr %PredPel.i67.sroa.31.2.arrayidx174.7.i.sroa_idx, align 2
  %PredPel.i67.sroa.35.2.arrayidx174.7.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx174.7.i, i64 14
  store i16 %LoopArray.sroa.14.0.i, ptr %PredPel.i67.sroa.35.2.arrayidx174.7.i.sroa_idx, align 2
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pix_d.i71) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pix_c.i70) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pix_b.i69) #6
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %pix_a.i68) #6
  br label %cleanup

sw.bb9:                                           ; preds = %entry
  %p_Vid1.i222 = getelementptr inbounds i8, ptr %currMB, i64 8
  %335 = load ptr, ptr %p_Vid1.i222, align 8
  %tobool.not.i223 = icmp eq i32 %pl, 0
  %dec_picture2.i224 = getelementptr inbounds i8, ptr %2, i64 13520
  %336 = load ptr, ptr %dec_picture2.i224, align 8
  br i1 %tobool.not.i223, label %cond.false.i286, label %cond.true.i225

cond.true.i225:                                   ; preds = %sw.bb9
  %imgUV.i226 = getelementptr inbounds i8, ptr %336, i64 136
  %337 = load ptr, ptr %imgUV.i226, align 8
  %sub.i227 = add i32 %pl, -1
  %idxprom.i228 = zext i32 %sub.i227 to i64
  %arrayidx.i229 = getelementptr inbounds ptr, ptr %337, i64 %idxprom.i228
  br label %cond.end.i230

cond.false.i286:                                  ; preds = %sw.bb9
  %imgY3.i287 = getelementptr inbounds i8, ptr %336, i64 128
  br label %cond.end.i230

cond.end.i230:                                    ; preds = %cond.false.i286, %cond.true.i225
  %cond.in.i231 = phi ptr [ %arrayidx.i229, %cond.true.i225 ], [ %imgY3.i287, %cond.false.i286 ]
  %cond.i232 = load ptr, ptr %cond.in.i231, align 8
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %pix_a.i218) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pix_b.i219) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pix_c.i220) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pix_d.i221) #6
  %mb_pred.i233 = getelementptr inbounds i8, ptr %2, i64 1248
  %338 = load ptr, ptr %mb_pred.i233, align 8
  %idxprom10.i = zext i32 %pl to i64
  %arrayidx11.i = getelementptr inbounds ptr, ptr %338, i64 %idxprom10.i
  %339 = load ptr, ptr %arrayidx11.i, align 8
  %mb_size12.i = getelementptr inbounds i8, ptr %335, i64 849124
  %sub14.i = add nsw i32 %ioff, -1
  %340 = sext i32 %joff to i64
  call void @getAffNeighbour(ptr noundef nonnull %currMB, i32 noundef %sub14.i, i32 noundef %joff, ptr noundef nonnull %mb_size12.i, ptr noundef nonnull %pix_a.i218) #6
  %341 = add nsw i64 %340, 1
  %arrayidx17.1.i = getelementptr inbounds i8, ptr %pix_a.i218, i64 16
  %342 = trunc nsw i64 %341 to i32
  call void @getAffNeighbour(ptr noundef nonnull %currMB, i32 noundef %sub14.i, i32 noundef %342, ptr noundef nonnull %mb_size12.i, ptr noundef nonnull %arrayidx17.1.i) #6
  %343 = add nsw i64 %340, 2
  %arrayidx17.2.i = getelementptr inbounds i8, ptr %pix_a.i218, i64 32
  %344 = trunc nsw i64 %343 to i32
  call void @getAffNeighbour(ptr noundef nonnull %currMB, i32 noundef %sub14.i, i32 noundef %344, ptr noundef nonnull %mb_size12.i, ptr noundef nonnull %arrayidx17.2.i) #6
  %345 = add nsw i64 %340, 3
  %arrayidx17.3.i = getelementptr inbounds i8, ptr %pix_a.i218, i64 48
  %346 = trunc nsw i64 %345 to i32
  call void @getAffNeighbour(ptr noundef nonnull %currMB, i32 noundef %sub14.i, i32 noundef %346, ptr noundef nonnull %mb_size12.i, ptr noundef nonnull %arrayidx17.3.i) #6
  %347 = add nsw i64 %340, 4
  %arrayidx17.4.i = getelementptr inbounds i8, ptr %pix_a.i218, i64 64
  %348 = trunc nsw i64 %347 to i32
  call void @getAffNeighbour(ptr noundef nonnull %currMB, i32 noundef %sub14.i, i32 noundef %348, ptr noundef nonnull %mb_size12.i, ptr noundef nonnull %arrayidx17.4.i) #6
  %349 = add nsw i64 %340, 5
  %arrayidx17.5.i = getelementptr inbounds i8, ptr %pix_a.i218, i64 80
  %350 = trunc nsw i64 %349 to i32
  call void @getAffNeighbour(ptr noundef nonnull %currMB, i32 noundef %sub14.i, i32 noundef %350, ptr noundef nonnull %mb_size12.i, ptr noundef nonnull %arrayidx17.5.i) #6
  %351 = add nsw i64 %340, 6
  %arrayidx17.6.i = getelementptr inbounds i8, ptr %pix_a.i218, i64 96
  %352 = trunc nsw i64 %351 to i32
  call void @getAffNeighbour(ptr noundef nonnull %currMB, i32 noundef %sub14.i, i32 noundef %352, ptr noundef nonnull %mb_size12.i, ptr noundef nonnull %arrayidx17.6.i) #6
  %353 = add nsw i64 %340, 7
  %arrayidx17.7.i = getelementptr inbounds i8, ptr %pix_a.i218, i64 112
  %354 = trunc nsw i64 %353 to i32
  call void @getAffNeighbour(ptr noundef nonnull %currMB, i32 noundef %sub14.i, i32 noundef %354, ptr noundef nonnull %mb_size12.i, ptr noundef nonnull %arrayidx17.7.i) #6
  %sub18.i = add nsw i32 %joff, -1
  call void @getAffNeighbour(ptr noundef nonnull %currMB, i32 noundef %ioff, i32 noundef %sub18.i, ptr noundef nonnull %mb_size12.i, ptr noundef nonnull %pix_b.i219) #6
  %add19.i = add nsw i32 %ioff, 8
  call void @getAffNeighbour(ptr noundef nonnull %currMB, i32 noundef %add19.i, i32 noundef %sub18.i, ptr noundef nonnull %mb_size12.i, ptr noundef nonnull %pix_c.i220) #6
  call void @getAffNeighbour(ptr noundef nonnull %currMB, i32 noundef %sub14.i, i32 noundef %sub18.i, ptr noundef nonnull %mb_size12.i, ptr noundef nonnull %pix_d.i221) #6
  %355 = load i32, ptr %pix_c.i220, align 4
  %tobool23.not.i = icmp ne i32 %355, 0
  %cmp24.i = icmp ne i32 %ioff, 8
  %cmp26.i = icmp ne i32 %joff, 8
  %.not.i234 = or i1 %cmp24.i, %cmp26.i
  %narrow.i235 = and i1 %.not.i234, %tobool23.not.i
  %land.ext.i236 = zext i1 %narrow.i235 to i32
  store i32 %land.ext.i236, ptr %pix_c.i220, align 4
  %active_pps.i237 = getelementptr inbounds i8, ptr %335, i64 8
  %356 = load ptr, ptr %active_pps.i237, align 8
  %constrained_intra_pred_flag.i238 = getelementptr inbounds i8, ptr %356, i64 2204
  %357 = load i32, ptr %constrained_intra_pred_flag.i238, align 4
  %tobool29.not.i239 = icmp eq i32 %357, 0
  br i1 %tobool29.not.i239, label %if.else.i285, label %for.cond30.preheader.i

for.cond30.preheader.i:                           ; preds = %cond.end.i230
  %intra_block.i240 = getelementptr inbounds i8, ptr %2, i64 13544
  %358 = load i32, ptr %pix_a.i218, align 16
  %tobool36.not.i = icmp eq i32 %358, 0
  br i1 %tobool36.not.i, label %cond.end43.i, label %cond.true37.i

cond.true37.i:                                    ; preds = %for.cond30.preheader.i
  %359 = load ptr, ptr %intra_block.i240, align 8
  %mb_addr.i241 = getelementptr inbounds i8, ptr %pix_a.i218, i64 4
  %360 = load i32, ptr %mb_addr.i241, align 4
  %idxprom40.i = sext i32 %360 to i64
  %arrayidx41.i = getelementptr inbounds i8, ptr %359, i64 %idxprom40.i
  %361 = load i8, ptr %arrayidx41.i, align 1
  %362 = and i8 %361, 1
  %363 = zext nneg i8 %362 to i32
  br label %cond.end43.i

cond.end43.i:                                     ; preds = %cond.true37.i, %for.cond30.preheader.i
  %cond44.i = phi i32 [ %363, %cond.true37.i ], [ 0, %for.cond30.preheader.i ]
  %364 = load i32, ptr %arrayidx17.1.i, align 16
  %tobool36.not.1.i = icmp eq i32 %364, 0
  br i1 %tobool36.not.1.i, label %cond.end43.1.i, label %cond.true37.1.i

cond.true37.1.i:                                  ; preds = %cond.end43.i
  %365 = load ptr, ptr %intra_block.i240, align 8
  %mb_addr.1.i242 = getelementptr inbounds i8, ptr %pix_a.i218, i64 20
  %366 = load i32, ptr %mb_addr.1.i242, align 4
  %idxprom40.1.i = sext i32 %366 to i64
  %arrayidx41.1.i = getelementptr inbounds i8, ptr %365, i64 %idxprom40.1.i
  %367 = load i8, ptr %arrayidx41.1.i, align 1
  %conv.1428.i = zext i8 %367 to i32
  br label %cond.end43.1.i

cond.end43.1.i:                                   ; preds = %cond.true37.1.i, %cond.end43.i
  %cond44.1.i = phi i32 [ %conv.1428.i, %cond.true37.1.i ], [ 0, %cond.end43.i ]
  %and.1.i243 = and i32 %cond44.1.i, %cond44.i
  %368 = load i32, ptr %arrayidx17.2.i, align 16
  %tobool36.not.2.i = icmp eq i32 %368, 0
  br i1 %tobool36.not.2.i, label %cond.end43.2.i, label %cond.true37.2.i

cond.true37.2.i:                                  ; preds = %cond.end43.1.i
  %369 = load ptr, ptr %intra_block.i240, align 8
  %mb_addr.2.i244 = getelementptr inbounds i8, ptr %pix_a.i218, i64 36
  %370 = load i32, ptr %mb_addr.2.i244, align 4
  %idxprom40.2.i = sext i32 %370 to i64
  %arrayidx41.2.i = getelementptr inbounds i8, ptr %369, i64 %idxprom40.2.i
  %371 = load i8, ptr %arrayidx41.2.i, align 1
  %conv.2429.i = zext i8 %371 to i32
  br label %cond.end43.2.i

cond.end43.2.i:                                   ; preds = %cond.true37.2.i, %cond.end43.1.i
  %cond44.2.i = phi i32 [ %conv.2429.i, %cond.true37.2.i ], [ 0, %cond.end43.1.i ]
  %and.2.i245 = and i32 %and.1.i243, %cond44.2.i
  %372 = load i32, ptr %arrayidx17.3.i, align 16
  %tobool36.not.3.i = icmp eq i32 %372, 0
  br i1 %tobool36.not.3.i, label %cond.end43.3.i, label %cond.true37.3.i

cond.true37.3.i:                                  ; preds = %cond.end43.2.i
  %373 = load ptr, ptr %intra_block.i240, align 8
  %mb_addr.3.i246 = getelementptr inbounds i8, ptr %pix_a.i218, i64 52
  %374 = load i32, ptr %mb_addr.3.i246, align 4
  %idxprom40.3.i = sext i32 %374 to i64
  %arrayidx41.3.i = getelementptr inbounds i8, ptr %373, i64 %idxprom40.3.i
  %375 = load i8, ptr %arrayidx41.3.i, align 1
  %conv.3430.i = zext i8 %375 to i32
  br label %cond.end43.3.i

cond.end43.3.i:                                   ; preds = %cond.true37.3.i, %cond.end43.2.i
  %cond44.3.i = phi i32 [ %conv.3430.i, %cond.true37.3.i ], [ 0, %cond.end43.2.i ]
  %and.3.i247 = and i32 %and.2.i245, %cond44.3.i
  %376 = load i32, ptr %arrayidx17.4.i, align 16
  %tobool36.not.4.i = icmp eq i32 %376, 0
  br i1 %tobool36.not.4.i, label %cond.end43.4.i, label %cond.true37.4.i

cond.true37.4.i:                                  ; preds = %cond.end43.3.i
  %377 = load ptr, ptr %intra_block.i240, align 8
  %mb_addr.4.i248 = getelementptr inbounds i8, ptr %pix_a.i218, i64 68
  %378 = load i32, ptr %mb_addr.4.i248, align 4
  %idxprom40.4.i = sext i32 %378 to i64
  %arrayidx41.4.i = getelementptr inbounds i8, ptr %377, i64 %idxprom40.4.i
  %379 = load i8, ptr %arrayidx41.4.i, align 1
  %conv.4431.i = zext i8 %379 to i32
  br label %cond.end43.4.i

cond.end43.4.i:                                   ; preds = %cond.true37.4.i, %cond.end43.3.i
  %cond44.4.i = phi i32 [ %conv.4431.i, %cond.true37.4.i ], [ 0, %cond.end43.3.i ]
  %and.4.i249 = and i32 %and.3.i247, %cond44.4.i
  %380 = load i32, ptr %arrayidx17.5.i, align 16
  %tobool36.not.5.i = icmp eq i32 %380, 0
  br i1 %tobool36.not.5.i, label %cond.end43.5.i, label %cond.true37.5.i

cond.true37.5.i:                                  ; preds = %cond.end43.4.i
  %381 = load ptr, ptr %intra_block.i240, align 8
  %mb_addr.5.i250 = getelementptr inbounds i8, ptr %pix_a.i218, i64 84
  %382 = load i32, ptr %mb_addr.5.i250, align 4
  %idxprom40.5.i = sext i32 %382 to i64
  %arrayidx41.5.i = getelementptr inbounds i8, ptr %381, i64 %idxprom40.5.i
  %383 = load i8, ptr %arrayidx41.5.i, align 1
  %conv.5432.i = zext i8 %383 to i32
  br label %cond.end43.5.i

cond.end43.5.i:                                   ; preds = %cond.true37.5.i, %cond.end43.4.i
  %cond44.5.i = phi i32 [ %conv.5432.i, %cond.true37.5.i ], [ 0, %cond.end43.4.i ]
  %and.5.i251 = and i32 %and.4.i249, %cond44.5.i
  %384 = load i32, ptr %arrayidx17.6.i, align 16
  %tobool36.not.6.i = icmp eq i32 %384, 0
  br i1 %tobool36.not.6.i, label %cond.end43.6.i, label %cond.true37.6.i

cond.true37.6.i:                                  ; preds = %cond.end43.5.i
  %385 = load ptr, ptr %intra_block.i240, align 8
  %mb_addr.6.i252 = getelementptr inbounds i8, ptr %pix_a.i218, i64 100
  %386 = load i32, ptr %mb_addr.6.i252, align 4
  %idxprom40.6.i = sext i32 %386 to i64
  %arrayidx41.6.i = getelementptr inbounds i8, ptr %385, i64 %idxprom40.6.i
  %387 = load i8, ptr %arrayidx41.6.i, align 1
  %conv.6433.i = zext i8 %387 to i32
  br label %cond.end43.6.i

cond.end43.6.i:                                   ; preds = %cond.true37.6.i, %cond.end43.5.i
  %cond44.6.i = phi i32 [ %conv.6433.i, %cond.true37.6.i ], [ 0, %cond.end43.5.i ]
  %and.6.i253 = and i32 %and.5.i251, %cond44.6.i
  %388 = load i32, ptr %arrayidx17.7.i, align 16
  %tobool36.not.7.i = icmp eq i32 %388, 0
  br i1 %tobool36.not.7.i, label %cond.end43.7.i, label %cond.true37.7.i

cond.true37.7.i:                                  ; preds = %cond.end43.6.i
  %389 = load ptr, ptr %intra_block.i240, align 8
  %mb_addr.7.i254 = getelementptr inbounds i8, ptr %pix_a.i218, i64 116
  %390 = load i32, ptr %mb_addr.7.i254, align 4
  %idxprom40.7.i = sext i32 %390 to i64
  %arrayidx41.7.i = getelementptr inbounds i8, ptr %389, i64 %idxprom40.7.i
  %391 = load i8, ptr %arrayidx41.7.i, align 1
  %conv.7.i2551995 = zext i8 %391 to i32
  br label %cond.end43.7.i

cond.end43.7.i:                                   ; preds = %cond.true37.7.i, %cond.end43.6.i
  %cond44.7.i = phi i32 [ %conv.7.i2551995, %cond.true37.7.i ], [ 0, %cond.end43.6.i ]
  %and.7.i256 = and i32 %and.6.i253, %cond44.7.i
  %392 = load i32, ptr %pix_b.i219, align 4
  %tobool49.not.i = icmp eq i32 %392, 0
  br i1 %tobool49.not.i, label %cond.end57.i, label %cond.true50.i

cond.true50.i:                                    ; preds = %cond.end43.7.i
  %393 = load ptr, ptr %intra_block.i240, align 8
  %mb_addr52.i = getelementptr inbounds i8, ptr %pix_b.i219, i64 4
  %394 = load i32, ptr %mb_addr52.i, align 4
  %idxprom53.i = sext i32 %394 to i64
  %arrayidx54.i = getelementptr inbounds i8, ptr %393, i64 %idxprom53.i
  %395 = load i8, ptr %arrayidx54.i, align 1
  %conv55.i = sext i8 %395 to i32
  br label %cond.end57.i

cond.end57.i:                                     ; preds = %cond.true50.i, %cond.end43.7.i
  %cond58.i = phi i32 [ %conv55.i, %cond.true50.i ], [ 0, %cond.end43.7.i ]
  %396 = load i32, ptr %pix_d.i221, align 4
  %tobool71.not.i = icmp eq i32 %396, 0
  br i1 %tobool71.not.i, label %if.end.i257, label %cond.true72.i

cond.true72.i:                                    ; preds = %cond.end57.i
  %397 = load ptr, ptr %intra_block.i240, align 8
  %mb_addr74.i = getelementptr inbounds i8, ptr %pix_d.i221, i64 4
  %398 = load i32, ptr %mb_addr74.i, align 4
  %idxprom75.i = sext i32 %398 to i64
  %arrayidx76.i = getelementptr inbounds i8, ptr %397, i64 %idxprom75.i
  %399 = load i8, ptr %arrayidx76.i, align 1
  %conv77.i = sext i8 %399 to i32
  br label %if.end.i257

if.else.i285:                                     ; preds = %cond.end.i230
  %400 = load i32, ptr %pix_a.i218, align 16
  %401 = load i32, ptr %pix_b.i219, align 4
  %402 = load i32, ptr %pix_d.i221, align 4
  br label %if.end.i257

if.end.i257:                                      ; preds = %if.else.i285, %cond.true72.i, %cond.end57.i
  %block_available_up_left.0.i258 = phi i32 [ %402, %if.else.i285 ], [ %conv77.i, %cond.true72.i ], [ 0, %cond.end57.i ]
  %block_available_left.1.i259 = phi i32 [ %400, %if.else.i285 ], [ %and.7.i256, %cond.true72.i ], [ %and.7.i256, %cond.end57.i ]
  %block_available_up.0.i260 = phi i32 [ %401, %if.else.i285 ], [ %cond58.i, %cond.true72.i ], [ %cond58.i, %cond.end57.i ]
  %tobool86.not.i = icmp eq i32 %block_available_left.1.i259, 0
  br i1 %tobool86.not.i, label %if.end173.i, label %if.end173.thread.i

if.end173.i:                                      ; preds = %if.end.i257
  %current_mb_nr.i281 = getelementptr inbounds i8, ptr %2, i64 108
  %403 = load i32, ptr %current_mb_nr.i281, align 4
  %call.i282 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %403)
  %dc_pred_value_comp.i283 = getelementptr inbounds i8, ptr %335, i64 849060
  %arrayidx163.i284 = getelementptr inbounds [3 x i32], ptr %dc_pred_value_comp.i283, i64 0, i64 %idxprom10.i
  %404 = load i32, ptr %arrayidx163.i284, align 4
  %conv164.i = trunc i32 %404 to i16
  %tobool174.not.i = icmp eq i32 %block_available_up_left.0.i258, 0
  br i1 %tobool174.not.i, label %intra8x8_hor_pred_mbaff.exit, label %if.then.i.i

if.end173.thread.i:                               ; preds = %if.end.i257
  %pos_y.i261 = getelementptr inbounds i8, ptr %pix_a.i218, i64 14
  %405 = load i16, ptr %pos_y.i261, align 2
  %idxprom92.i = sext i16 %405 to i64
  %arrayidx93.i262 = getelementptr inbounds ptr, ptr %cond.i232, i64 %idxprom92.i
  %406 = load ptr, ptr %arrayidx93.i262, align 8
  %pos_x.i263 = getelementptr inbounds i8, ptr %pix_a.i218, i64 12
  %407 = load i16, ptr %pos_x.i263, align 4
  %idxprom95.i = sext i16 %407 to i64
  %arrayidx96.i264 = getelementptr inbounds i16, ptr %406, i64 %idxprom95.i
  %408 = load i16, ptr %arrayidx96.i264, align 2
  %pos_y99.i = getelementptr inbounds i8, ptr %pix_a.i218, i64 30
  %409 = load i16, ptr %pos_y99.i, align 2
  %idxprom100.i = sext i16 %409 to i64
  %arrayidx101.i265 = getelementptr inbounds ptr, ptr %cond.i232, i64 %idxprom100.i
  %410 = load ptr, ptr %arrayidx101.i265, align 8
  %pos_x103.i = getelementptr inbounds i8, ptr %pix_a.i218, i64 28
  %411 = load i16, ptr %pos_x103.i, align 4
  %idxprom104.i = sext i16 %411 to i64
  %arrayidx105.i = getelementptr inbounds i16, ptr %410, i64 %idxprom104.i
  %412 = load i16, ptr %arrayidx105.i, align 2
  %pos_y108.i = getelementptr inbounds i8, ptr %pix_a.i218, i64 46
  %413 = load i16, ptr %pos_y108.i, align 2
  %idxprom109.i = sext i16 %413 to i64
  %arrayidx110.i266 = getelementptr inbounds ptr, ptr %cond.i232, i64 %idxprom109.i
  %414 = load ptr, ptr %arrayidx110.i266, align 8
  %pos_x112.i = getelementptr inbounds i8, ptr %pix_a.i218, i64 44
  %415 = load i16, ptr %pos_x112.i, align 4
  %idxprom113.i = sext i16 %415 to i64
  %arrayidx114.i = getelementptr inbounds i16, ptr %414, i64 %idxprom113.i
  %416 = load i16, ptr %arrayidx114.i, align 2
  %pos_y117.i267 = getelementptr inbounds i8, ptr %pix_a.i218, i64 62
  %417 = load i16, ptr %pos_y117.i267, align 2
  %idxprom118.i268 = sext i16 %417 to i64
  %arrayidx119.i269 = getelementptr inbounds ptr, ptr %cond.i232, i64 %idxprom118.i268
  %418 = load ptr, ptr %arrayidx119.i269, align 8
  %pos_x121.i = getelementptr inbounds i8, ptr %pix_a.i218, i64 60
  %419 = load i16, ptr %pos_x121.i, align 4
  %idxprom122.i = sext i16 %419 to i64
  %arrayidx123.i270 = getelementptr inbounds i16, ptr %418, i64 %idxprom122.i
  %420 = load i16, ptr %arrayidx123.i270, align 2
  %pos_y126.i = getelementptr inbounds i8, ptr %pix_a.i218, i64 78
  %421 = load i16, ptr %pos_y126.i, align 2
  %idxprom127.i = sext i16 %421 to i64
  %arrayidx128.i271 = getelementptr inbounds ptr, ptr %cond.i232, i64 %idxprom127.i
  %422 = load ptr, ptr %arrayidx128.i271, align 8
  %pos_x130.i = getelementptr inbounds i8, ptr %pix_a.i218, i64 76
  %423 = load i16, ptr %pos_x130.i, align 4
  %idxprom131.i = sext i16 %423 to i64
  %arrayidx132.i272 = getelementptr inbounds i16, ptr %422, i64 %idxprom131.i
  %424 = load i16, ptr %arrayidx132.i272, align 2
  %pos_y135.i = getelementptr inbounds i8, ptr %pix_a.i218, i64 94
  %425 = load i16, ptr %pos_y135.i, align 2
  %idxprom136.i = sext i16 %425 to i64
  %arrayidx137.i273 = getelementptr inbounds ptr, ptr %cond.i232, i64 %idxprom136.i
  %426 = load ptr, ptr %arrayidx137.i273, align 8
  %pos_x139.i = getelementptr inbounds i8, ptr %pix_a.i218, i64 92
  %427 = load i16, ptr %pos_x139.i, align 4
  %idxprom140.i = sext i16 %427 to i64
  %arrayidx141.i274 = getelementptr inbounds i16, ptr %426, i64 %idxprom140.i
  %428 = load i16, ptr %arrayidx141.i274, align 2
  %pos_y144.i = getelementptr inbounds i8, ptr %pix_a.i218, i64 110
  %429 = load i16, ptr %pos_y144.i, align 2
  %idxprom145.i = sext i16 %429 to i64
  %arrayidx146.i275 = getelementptr inbounds ptr, ptr %cond.i232, i64 %idxprom145.i
  %430 = load ptr, ptr %arrayidx146.i275, align 8
  %pos_x148.i = getelementptr inbounds i8, ptr %pix_a.i218, i64 108
  %431 = load i16, ptr %pos_x148.i, align 4
  %idxprom149.i = sext i16 %431 to i64
  %arrayidx150.i = getelementptr inbounds i16, ptr %430, i64 %idxprom149.i
  %432 = load i16, ptr %arrayidx150.i, align 2
  %pos_y153.i = getelementptr inbounds i8, ptr %pix_a.i218, i64 126
  %433 = load i16, ptr %pos_y153.i, align 2
  %idxprom154.i = sext i16 %433 to i64
  %arrayidx155.i = getelementptr inbounds ptr, ptr %cond.i232, i64 %idxprom154.i
  %434 = load ptr, ptr %arrayidx155.i, align 8
  %pos_x157.i = getelementptr inbounds i8, ptr %pix_a.i218, i64 124
  %435 = load i16, ptr %pos_x157.i, align 4
  %idxprom158.i = sext i16 %435 to i64
  %arrayidx159.i276 = getelementptr inbounds i16, ptr %434, i64 %idxprom158.i
  %436 = load i16, ptr %arrayidx159.i276, align 2
  %tobool174.not442.i = icmp eq i32 %block_available_up_left.0.i258, 0
  br i1 %tobool174.not442.i, label %if.else65.i329.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end173.thread.i, %if.end173.i
  %PredPel.sroa.57.0458.i = phi i16 [ %436, %if.end173.thread.i ], [ %conv164.i, %if.end173.i ]
  %PredPel.sroa.8410.0456.i = phi i16 [ %408, %if.end173.thread.i ], [ %conv164.i, %if.end173.i ]
  %PredPel.sroa.15.0454.i = phi i16 [ %412, %if.end173.thread.i ], [ %conv164.i, %if.end173.i ]
  %PredPel.sroa.22.0452.i = phi i16 [ %416, %if.end173.thread.i ], [ %conv164.i, %if.end173.i ]
  %PredPel.sroa.29.0450.i = phi i16 [ %420, %if.end173.thread.i ], [ %conv164.i, %if.end173.i ]
  %PredPel.sroa.36.0448.i = phi i16 [ %424, %if.end173.thread.i ], [ %conv164.i, %if.end173.i ]
  %PredPel.sroa.43.0446.i = phi i16 [ %428, %if.end173.thread.i ], [ %conv164.i, %if.end173.i ]
  %PredPel.sroa.50.0444.i = phi i16 [ %432, %if.end173.thread.i ], [ %conv164.i, %if.end173.i ]
  %pos_y176.i = getelementptr inbounds i8, ptr %pix_d.i221, i64 14
  %437 = load i16, ptr %pos_y176.i, align 2
  %idxprom177.i = sext i16 %437 to i64
  %arrayidx178.i = getelementptr inbounds ptr, ptr %cond.i232, i64 %idxprom177.i
  %438 = load ptr, ptr %arrayidx178.i, align 8
  %pos_x179.i = getelementptr inbounds i8, ptr %pix_d.i221, i64 12
  %439 = load i16, ptr %pos_x179.i, align 4
  %idxprom180.i277 = sext i16 %439 to i64
  %arrayidx181.i278 = getelementptr inbounds i16, ptr %438, i64 %idxprom180.i277
  %440 = load i16, ptr %arrayidx181.i278, align 2
  %tobool2.i.i = icmp ne i32 %block_available_up.0.i260, 0
  %tobool3.i.i = icmp ne i32 %block_available_left.1.i259, 0
  %or.cond.i.i = and i1 %tobool3.i.i, %tobool2.i.i
  br i1 %or.cond.i.i, label %if.end79.i.i, label %if.else.i.i

if.else.i.i:                                      ; preds = %if.then.i.i
  br i1 %tobool2.i.i, label %if.end47.thread148.i.i, label %if.else29.i.i

if.else29.i.i:                                    ; preds = %if.else.i.i
  br i1 %tobool3.i.i, label %if.end79.i.i, label %intra8x8_hor_pred_mbaff.exit

if.end47.thread148.i.i:                           ; preds = %if.else.i.i
  br i1 %tobool86.not.i, label %intra8x8_hor_pred_mbaff.exit, label %if.end79.i.i

if.end79.i.i:                                     ; preds = %if.end47.thread148.i.i, %if.else29.i.i, %if.then.i.i
  %conv53.pre-phi.i.i = zext i16 %440 to i32
  %conv55.pre-phi.i.i = zext i16 %PredPel.sroa.8410.0456.i to i32
  %shl56.i.i = shl nuw nsw i32 %conv55.pre-phi.i.i, 1
  %conv59.i.i = zext i16 %PredPel.sroa.15.0454.i to i32
  %add57.i.i = add nuw nsw i32 %conv59.i.i, 2
  %add60.i.i = add nuw nsw i32 %add57.i.i, %shl56.i.i
  %add61.i.i = add nuw nsw i32 %add60.i.i, %conv53.pre-phi.i.i
  %LoopArray.sroa.7155.0.in.i.i = lshr i32 %add61.i.i, 2
  %LoopArray.sroa.7155.0.i.i = trunc nuw i32 %LoopArray.sroa.7155.0.in.i.i to i16
  %shl86.i.i = shl nuw nsw i32 %conv59.i.i, 1
  %conv91.i.i = zext i16 %PredPel.sroa.22.0452.i to i32
  %add87.i.i = add nuw nsw i32 %conv91.i.i, 2
  %add92.i.i = add nuw nsw i32 %shl86.i.i, %conv55.pre-phi.i.i
  %add93.i.i = add nuw nsw i32 %add92.i.i, %add87.i.i
  %shr94.i.i = lshr i32 %add93.i.i, 2
  %conv95.i.i = trunc nuw i32 %shr94.i.i to i16
  %shl86.1.i.i = shl nuw nsw i32 %conv91.i.i, 1
  %conv91.1.i.i = zext i16 %PredPel.sroa.29.0450.i to i32
  %add92.1.i.i = add nuw nsw i32 %shl86.1.i.i, %add57.i.i
  %add93.1.i.i = add nuw nsw i32 %add92.1.i.i, %conv91.1.i.i
  %shr94.1.i.i = lshr i32 %add93.1.i.i, 2
  %conv95.1.i.i = trunc nuw i32 %shr94.1.i.i to i16
  %shl86.2.i.i = shl nuw nsw i32 %conv91.1.i.i, 1
  %conv91.2.i.i = zext i16 %PredPel.sroa.36.0448.i to i32
  %add92.2.i.i = add nuw nsw i32 %shl86.2.i.i, %add87.i.i
  %add93.2.i.i = add nuw nsw i32 %add92.2.i.i, %conv91.2.i.i
  %shr94.2.i.i = lshr i32 %add93.2.i.i, 2
  %conv95.2.i.i = trunc nuw i32 %shr94.2.i.i to i16
  %shl86.3.i.i = shl nuw nsw i32 %conv91.2.i.i, 1
  %conv91.3.i.i = zext i16 %PredPel.sroa.43.0446.i to i32
  %add87.3.i.i = add nuw nsw i32 %conv91.3.i.i, 2
  %add92.3.i.i = add nuw nsw i32 %add87.3.i.i, %conv91.1.i.i
  %add93.3.i.i = add nuw nsw i32 %add92.3.i.i, %shl86.3.i.i
  %shr94.3.i.i = lshr i32 %add93.3.i.i, 2
  %conv95.3.i.i = trunc nuw i32 %shr94.3.i.i to i16
  %shl86.4.i.i = shl nuw nsw i32 %conv91.3.i.i, 1
  %conv91.4.i.i = zext i16 %PredPel.sroa.50.0444.i to i32
  %add87.4.i.i = add nuw nsw i32 %conv91.4.i.i, 2
  %add92.4.i.i = add nuw nsw i32 %add87.4.i.i, %conv91.2.i.i
  %add93.4.i.i = add nuw nsw i32 %add92.4.i.i, %shl86.4.i.i
  %shr94.4.i.i = lshr i32 %add93.4.i.i, 2
  %conv95.4.i.i = trunc nuw i32 %shr94.4.i.i to i16
  %shl86.5.i.i = shl nuw nsw i32 %conv91.4.i.i, 1
  %conv91.5.i.i = zext i16 %PredPel.sroa.57.0458.i to i32
  %add87.5.i.i = add nuw nsw i32 %conv91.5.i.i, 2
  %add92.5.i.i = add nuw nsw i32 %add87.5.i.i, %conv91.3.i.i
  %add93.5.i.i = add nuw nsw i32 %add92.5.i.i, %shl86.5.i.i
  %shr94.5.i.i = lshr i32 %add93.5.i.i, 2
  %conv95.5.i.i = trunc nuw i32 %shr94.5.i.i to i16
  %shl102.i.i = shl nuw nsw i32 %conv91.5.i.i, 1
  %add106.i.i = add nuw nsw i32 %add87.5.i.i, %shl102.i.i
  %add107.i.i = add nuw nsw i32 %add106.i.i, %conv91.4.i.i
  %shr108.i.i = lshr i32 %add107.i.i, 2
  %conv109.i.i = trunc nuw i32 %shr108.i.i to i16
  br label %intra8x8_hor_pred_mbaff.exit

if.else65.i329.i:                                 ; preds = %if.end173.thread.i
  %conv67.i330.i = zext i16 %408 to i32
  %add71.i331.i = mul nuw nsw i32 %conv67.i330.i, 3
  %conv73.i332.i = zext i16 %412 to i32
  %add74.i333.i = add nuw nsw i32 %conv73.i332.i, 2
  %add75.i334.i = add nuw nsw i32 %add74.i333.i, %add71.i331.i
  %LoopArray.sroa.7155.0.in.i341.i = lshr i32 %add75.i334.i, 2
  %LoopArray.sroa.7155.0.i342.i = trunc nuw i32 %LoopArray.sroa.7155.0.in.i341.i to i16
  %shl86.i343.i = shl nuw nsw i32 %conv73.i332.i, 1
  %conv91.i344.i = zext i16 %416 to i32
  %add87.i345.i = add nuw nsw i32 %conv91.i344.i, 2
  %add92.i346.i = add nuw nsw i32 %shl86.i343.i, %conv67.i330.i
  %add93.i347.i = add nuw nsw i32 %add92.i346.i, %add87.i345.i
  %shr94.i348.i = lshr i32 %add93.i347.i, 2
  %conv95.i349.i = trunc nuw i32 %shr94.i348.i to i16
  %shl86.1.i350.i = shl nuw nsw i32 %conv91.i344.i, 1
  %conv91.1.i351.i = zext i16 %420 to i32
  %add92.1.i352.i = add nuw nsw i32 %shl86.1.i350.i, %add74.i333.i
  %add93.1.i353.i = add nuw nsw i32 %add92.1.i352.i, %conv91.1.i351.i
  %shr94.1.i354.i = lshr i32 %add93.1.i353.i, 2
  %conv95.1.i355.i = trunc nuw i32 %shr94.1.i354.i to i16
  %shl86.2.i356.i = shl nuw nsw i32 %conv91.1.i351.i, 1
  %conv91.2.i357.i = zext i16 %424 to i32
  %add92.2.i359.i = add nuw nsw i32 %shl86.2.i356.i, %add87.i345.i
  %add93.2.i360.i = add nuw nsw i32 %add92.2.i359.i, %conv91.2.i357.i
  %shr94.2.i361.i = lshr i32 %add93.2.i360.i, 2
  %conv95.2.i362.i = trunc nuw i32 %shr94.2.i361.i to i16
  %shl86.3.i363.i = shl nuw nsw i32 %conv91.2.i357.i, 1
  %conv91.3.i364.i = zext i16 %428 to i32
  %add87.3.i365.i = add nuw nsw i32 %conv91.3.i364.i, 2
  %add92.3.i366.i = add nuw nsw i32 %shl86.3.i363.i, %conv91.1.i351.i
  %add93.3.i367.i = add nuw nsw i32 %add92.3.i366.i, %add87.3.i365.i
  %shr94.3.i368.i = lshr i32 %add93.3.i367.i, 2
  %conv95.3.i369.i = trunc nuw i32 %shr94.3.i368.i to i16
  %shl86.4.i370.i = shl nuw nsw i32 %conv91.3.i364.i, 1
  %conv91.4.i371.i = zext i16 %432 to i32
  %add87.4.i372.i = add nuw nsw i32 %conv91.4.i371.i, 2
  %add92.4.i373.i = add nuw nsw i32 %add87.4.i372.i, %conv91.2.i357.i
  %add93.4.i374.i = add nuw nsw i32 %add92.4.i373.i, %shl86.4.i370.i
  %shr94.4.i375.i = lshr i32 %add93.4.i374.i, 2
  %conv95.4.i376.i = trunc nuw i32 %shr94.4.i375.i to i16
  %shl86.5.i377.i = shl nuw nsw i32 %conv91.4.i371.i, 1
  %conv91.5.i378.i = zext i16 %436 to i32
  %add92.5.i380.i = add nuw nsw i32 %shl86.5.i377.i, %add87.3.i365.i
  %add93.5.i381.i = add nuw nsw i32 %add92.5.i380.i, %conv91.5.i378.i
  %shr94.5.i382.i = lshr i32 %add93.5.i381.i, 2
  %conv95.5.i383.i = trunc nuw i32 %shr94.5.i382.i to i16
  %shl102.i384.i = shl nuw nsw i32 %conv91.5.i378.i, 1
  %add106.i386.i = add nuw nsw i32 %add87.4.i372.i, %conv91.5.i378.i
  %add107.i387.i = add nuw nsw i32 %add106.i386.i, %shl102.i384.i
  %shr108.i388.i = lshr i32 %add107.i387.i, 2
  %conv109.i389.i = trunc nuw i32 %shr108.i388.i to i16
  br label %intra8x8_hor_pred_mbaff.exit

intra8x8_hor_pred_mbaff.exit:                     ; preds = %if.end173.i, %if.else29.i.i, %if.end47.thread148.i.i, %if.end79.i.i, %if.else65.i329.i
  %PredPel.sroa.50.1.i = phi i16 [ %conv95.5.i.i, %if.end79.i.i ], [ %PredPel.sroa.50.0444.i, %if.end47.thread148.i.i ], [ %PredPel.sroa.50.0444.i, %if.else29.i.i ], [ %conv95.5.i383.i, %if.else65.i329.i ], [ %conv164.i, %if.end173.i ]
  %PredPel.sroa.43.1.i = phi i16 [ %conv95.4.i.i, %if.end79.i.i ], [ %PredPel.sroa.43.0446.i, %if.end47.thread148.i.i ], [ %PredPel.sroa.43.0446.i, %if.else29.i.i ], [ %conv95.4.i376.i, %if.else65.i329.i ], [ %conv164.i, %if.end173.i ]
  %PredPel.sroa.36.1.i = phi i16 [ %conv95.3.i.i, %if.end79.i.i ], [ %PredPel.sroa.36.0448.i, %if.end47.thread148.i.i ], [ %PredPel.sroa.36.0448.i, %if.else29.i.i ], [ %conv95.3.i369.i, %if.else65.i329.i ], [ %conv164.i, %if.end173.i ]
  %PredPel.sroa.29.1.i = phi i16 [ %conv95.2.i.i, %if.end79.i.i ], [ %PredPel.sroa.29.0450.i, %if.end47.thread148.i.i ], [ %PredPel.sroa.29.0450.i, %if.else29.i.i ], [ %conv95.2.i362.i, %if.else65.i329.i ], [ %conv164.i, %if.end173.i ]
  %PredPel.sroa.22.1.i = phi i16 [ %conv95.1.i.i, %if.end79.i.i ], [ %PredPel.sroa.22.0452.i, %if.end47.thread148.i.i ], [ %PredPel.sroa.22.0452.i, %if.else29.i.i ], [ %conv95.1.i355.i, %if.else65.i329.i ], [ %conv164.i, %if.end173.i ]
  %PredPel.sroa.15.1.i = phi i16 [ %conv95.i.i, %if.end79.i.i ], [ %PredPel.sroa.15.0454.i, %if.end47.thread148.i.i ], [ %PredPel.sroa.15.0454.i, %if.else29.i.i ], [ %conv95.i349.i, %if.else65.i329.i ], [ %conv164.i, %if.end173.i ]
  %PredPel.sroa.8410.1.i = phi i16 [ %LoopArray.sroa.7155.0.i.i, %if.end79.i.i ], [ %PredPel.sroa.8410.0456.i, %if.end47.thread148.i.i ], [ %PredPel.sroa.8410.0456.i, %if.else29.i.i ], [ %LoopArray.sroa.7155.0.i342.i, %if.else65.i329.i ], [ %conv164.i, %if.end173.i ]
  %PredPel.sroa.57.1.i = phi i16 [ %conv109.i.i, %if.end79.i.i ], [ %PredPel.sroa.57.0458.i, %if.end47.thread148.i.i ], [ %PredPel.sroa.57.0458.i, %if.else29.i.i ], [ %conv109.i389.i, %if.else65.i329.i ], [ %conv164.i, %if.end173.i ]
  %441 = sext i32 %ioff to i64
  %arrayidx200.i = getelementptr inbounds ptr, ptr %339, i64 %340
  %442 = load ptr, ptr %arrayidx200.i, align 8
  %443 = getelementptr i16, ptr %442, i64 %441
  %arrayidx202.i = getelementptr i8, ptr %443, i64 14
  store i16 %PredPel.sroa.8410.1.i, ptr %arrayidx202.i, align 2
  %444 = load ptr, ptr %arrayidx200.i, align 8
  %445 = getelementptr i16, ptr %444, i64 %441
  %arrayidx206.i = getelementptr i8, ptr %445, i64 12
  store i16 %PredPel.sroa.8410.1.i, ptr %arrayidx206.i, align 2
  %446 = load ptr, ptr %arrayidx200.i, align 8
  %447 = getelementptr i16, ptr %446, i64 %441
  %arrayidx210.i = getelementptr i8, ptr %447, i64 10
  store i16 %PredPel.sroa.8410.1.i, ptr %arrayidx210.i, align 2
  %448 = load ptr, ptr %arrayidx200.i, align 8
  %449 = getelementptr i16, ptr %448, i64 %441
  %arrayidx214.i = getelementptr i8, ptr %449, i64 8
  store i16 %PredPel.sroa.8410.1.i, ptr %arrayidx214.i, align 2
  %450 = load ptr, ptr %arrayidx200.i, align 8
  %451 = getelementptr i16, ptr %450, i64 %441
  %arrayidx218.i = getelementptr i8, ptr %451, i64 6
  store i16 %PredPel.sroa.8410.1.i, ptr %arrayidx218.i, align 2
  %452 = load ptr, ptr %arrayidx200.i, align 8
  %453 = getelementptr i16, ptr %452, i64 %441
  %arrayidx222.i = getelementptr i8, ptr %453, i64 4
  store i16 %PredPel.sroa.8410.1.i, ptr %arrayidx222.i, align 2
  %454 = load ptr, ptr %arrayidx200.i, align 8
  %455 = getelementptr i16, ptr %454, i64 %441
  %arrayidx226.i279 = getelementptr i8, ptr %455, i64 2
  store i16 %PredPel.sroa.8410.1.i, ptr %arrayidx226.i279, align 2
  %456 = load ptr, ptr %arrayidx200.i, align 8
  %arrayidx230.i280 = getelementptr inbounds i16, ptr %456, i64 %441
  store i16 %PredPel.sroa.8410.1.i, ptr %arrayidx230.i280, align 2
  %arrayidx200.1.i = getelementptr inbounds ptr, ptr %339, i64 %341
  %457 = load ptr, ptr %arrayidx200.1.i, align 8
  %458 = getelementptr i16, ptr %457, i64 %441
  %arrayidx202.1.i = getelementptr i8, ptr %458, i64 14
  store i16 %PredPel.sroa.15.1.i, ptr %arrayidx202.1.i, align 2
  %459 = load ptr, ptr %arrayidx200.1.i, align 8
  %460 = getelementptr i16, ptr %459, i64 %441
  %arrayidx206.1.i = getelementptr i8, ptr %460, i64 12
  store i16 %PredPel.sroa.15.1.i, ptr %arrayidx206.1.i, align 2
  %461 = load ptr, ptr %arrayidx200.1.i, align 8
  %462 = getelementptr i16, ptr %461, i64 %441
  %arrayidx210.1.i = getelementptr i8, ptr %462, i64 10
  store i16 %PredPel.sroa.15.1.i, ptr %arrayidx210.1.i, align 2
  %463 = load ptr, ptr %arrayidx200.1.i, align 8
  %464 = getelementptr i16, ptr %463, i64 %441
  %arrayidx214.1.i = getelementptr i8, ptr %464, i64 8
  store i16 %PredPel.sroa.15.1.i, ptr %arrayidx214.1.i, align 2
  %465 = load ptr, ptr %arrayidx200.1.i, align 8
  %466 = getelementptr i16, ptr %465, i64 %441
  %arrayidx218.1.i = getelementptr i8, ptr %466, i64 6
  store i16 %PredPel.sroa.15.1.i, ptr %arrayidx218.1.i, align 2
  %467 = load ptr, ptr %arrayidx200.1.i, align 8
  %468 = getelementptr i16, ptr %467, i64 %441
  %arrayidx222.1.i = getelementptr i8, ptr %468, i64 4
  store i16 %PredPel.sroa.15.1.i, ptr %arrayidx222.1.i, align 2
  %469 = load ptr, ptr %arrayidx200.1.i, align 8
  %470 = getelementptr i16, ptr %469, i64 %441
  %arrayidx226.1.i = getelementptr i8, ptr %470, i64 2
  store i16 %PredPel.sroa.15.1.i, ptr %arrayidx226.1.i, align 2
  %471 = load ptr, ptr %arrayidx200.1.i, align 8
  %arrayidx230.1.i = getelementptr inbounds i16, ptr %471, i64 %441
  store i16 %PredPel.sroa.15.1.i, ptr %arrayidx230.1.i, align 2
  %arrayidx200.2.i = getelementptr inbounds ptr, ptr %339, i64 %343
  %472 = load ptr, ptr %arrayidx200.2.i, align 8
  %473 = getelementptr i16, ptr %472, i64 %441
  %arrayidx202.2.i = getelementptr i8, ptr %473, i64 14
  store i16 %PredPel.sroa.22.1.i, ptr %arrayidx202.2.i, align 2
  %474 = load ptr, ptr %arrayidx200.2.i, align 8
  %475 = getelementptr i16, ptr %474, i64 %441
  %arrayidx206.2.i = getelementptr i8, ptr %475, i64 12
  store i16 %PredPel.sroa.22.1.i, ptr %arrayidx206.2.i, align 2
  %476 = load ptr, ptr %arrayidx200.2.i, align 8
  %477 = getelementptr i16, ptr %476, i64 %441
  %arrayidx210.2.i = getelementptr i8, ptr %477, i64 10
  store i16 %PredPel.sroa.22.1.i, ptr %arrayidx210.2.i, align 2
  %478 = load ptr, ptr %arrayidx200.2.i, align 8
  %479 = getelementptr i16, ptr %478, i64 %441
  %arrayidx214.2.i = getelementptr i8, ptr %479, i64 8
  store i16 %PredPel.sroa.22.1.i, ptr %arrayidx214.2.i, align 2
  %480 = load ptr, ptr %arrayidx200.2.i, align 8
  %481 = getelementptr i16, ptr %480, i64 %441
  %arrayidx218.2.i = getelementptr i8, ptr %481, i64 6
  store i16 %PredPel.sroa.22.1.i, ptr %arrayidx218.2.i, align 2
  %482 = load ptr, ptr %arrayidx200.2.i, align 8
  %483 = getelementptr i16, ptr %482, i64 %441
  %arrayidx222.2.i = getelementptr i8, ptr %483, i64 4
  store i16 %PredPel.sroa.22.1.i, ptr %arrayidx222.2.i, align 2
  %484 = load ptr, ptr %arrayidx200.2.i, align 8
  %485 = getelementptr i16, ptr %484, i64 %441
  %arrayidx226.2.i = getelementptr i8, ptr %485, i64 2
  store i16 %PredPel.sroa.22.1.i, ptr %arrayidx226.2.i, align 2
  %486 = load ptr, ptr %arrayidx200.2.i, align 8
  %arrayidx230.2.i = getelementptr inbounds i16, ptr %486, i64 %441
  store i16 %PredPel.sroa.22.1.i, ptr %arrayidx230.2.i, align 2
  %arrayidx200.3.i = getelementptr inbounds ptr, ptr %339, i64 %345
  %487 = load ptr, ptr %arrayidx200.3.i, align 8
  %488 = getelementptr i16, ptr %487, i64 %441
  %arrayidx202.3.i = getelementptr i8, ptr %488, i64 14
  store i16 %PredPel.sroa.29.1.i, ptr %arrayidx202.3.i, align 2
  %489 = load ptr, ptr %arrayidx200.3.i, align 8
  %490 = getelementptr i16, ptr %489, i64 %441
  %arrayidx206.3.i = getelementptr i8, ptr %490, i64 12
  store i16 %PredPel.sroa.29.1.i, ptr %arrayidx206.3.i, align 2
  %491 = load ptr, ptr %arrayidx200.3.i, align 8
  %492 = getelementptr i16, ptr %491, i64 %441
  %arrayidx210.3.i = getelementptr i8, ptr %492, i64 10
  store i16 %PredPel.sroa.29.1.i, ptr %arrayidx210.3.i, align 2
  %493 = load ptr, ptr %arrayidx200.3.i, align 8
  %494 = getelementptr i16, ptr %493, i64 %441
  %arrayidx214.3.i = getelementptr i8, ptr %494, i64 8
  store i16 %PredPel.sroa.29.1.i, ptr %arrayidx214.3.i, align 2
  %495 = load ptr, ptr %arrayidx200.3.i, align 8
  %496 = getelementptr i16, ptr %495, i64 %441
  %arrayidx218.3.i = getelementptr i8, ptr %496, i64 6
  store i16 %PredPel.sroa.29.1.i, ptr %arrayidx218.3.i, align 2
  %497 = load ptr, ptr %arrayidx200.3.i, align 8
  %498 = getelementptr i16, ptr %497, i64 %441
  %arrayidx222.3.i = getelementptr i8, ptr %498, i64 4
  store i16 %PredPel.sroa.29.1.i, ptr %arrayidx222.3.i, align 2
  %499 = load ptr, ptr %arrayidx200.3.i, align 8
  %500 = getelementptr i16, ptr %499, i64 %441
  %arrayidx226.3.i = getelementptr i8, ptr %500, i64 2
  store i16 %PredPel.sroa.29.1.i, ptr %arrayidx226.3.i, align 2
  %501 = load ptr, ptr %arrayidx200.3.i, align 8
  %arrayidx230.3.i = getelementptr inbounds i16, ptr %501, i64 %441
  store i16 %PredPel.sroa.29.1.i, ptr %arrayidx230.3.i, align 2
  %arrayidx200.4.i = getelementptr inbounds ptr, ptr %339, i64 %347
  %502 = load ptr, ptr %arrayidx200.4.i, align 8
  %503 = getelementptr i16, ptr %502, i64 %441
  %arrayidx202.4.i = getelementptr i8, ptr %503, i64 14
  store i16 %PredPel.sroa.36.1.i, ptr %arrayidx202.4.i, align 2
  %504 = load ptr, ptr %arrayidx200.4.i, align 8
  %505 = getelementptr i16, ptr %504, i64 %441
  %arrayidx206.4.i = getelementptr i8, ptr %505, i64 12
  store i16 %PredPel.sroa.36.1.i, ptr %arrayidx206.4.i, align 2
  %506 = load ptr, ptr %arrayidx200.4.i, align 8
  %507 = getelementptr i16, ptr %506, i64 %441
  %arrayidx210.4.i = getelementptr i8, ptr %507, i64 10
  store i16 %PredPel.sroa.36.1.i, ptr %arrayidx210.4.i, align 2
  %508 = load ptr, ptr %arrayidx200.4.i, align 8
  %509 = getelementptr i16, ptr %508, i64 %441
  %arrayidx214.4.i = getelementptr i8, ptr %509, i64 8
  store i16 %PredPel.sroa.36.1.i, ptr %arrayidx214.4.i, align 2
  %510 = load ptr, ptr %arrayidx200.4.i, align 8
  %511 = getelementptr i16, ptr %510, i64 %441
  %arrayidx218.4.i = getelementptr i8, ptr %511, i64 6
  store i16 %PredPel.sroa.36.1.i, ptr %arrayidx218.4.i, align 2
  %512 = load ptr, ptr %arrayidx200.4.i, align 8
  %513 = getelementptr i16, ptr %512, i64 %441
  %arrayidx222.4.i = getelementptr i8, ptr %513, i64 4
  store i16 %PredPel.sroa.36.1.i, ptr %arrayidx222.4.i, align 2
  %514 = load ptr, ptr %arrayidx200.4.i, align 8
  %515 = getelementptr i16, ptr %514, i64 %441
  %arrayidx226.4.i = getelementptr i8, ptr %515, i64 2
  store i16 %PredPel.sroa.36.1.i, ptr %arrayidx226.4.i, align 2
  %516 = load ptr, ptr %arrayidx200.4.i, align 8
  %arrayidx230.4.i = getelementptr inbounds i16, ptr %516, i64 %441
  store i16 %PredPel.sroa.36.1.i, ptr %arrayidx230.4.i, align 2
  %arrayidx200.5.i = getelementptr inbounds ptr, ptr %339, i64 %349
  %517 = load ptr, ptr %arrayidx200.5.i, align 8
  %518 = getelementptr i16, ptr %517, i64 %441
  %arrayidx202.5.i = getelementptr i8, ptr %518, i64 14
  store i16 %PredPel.sroa.43.1.i, ptr %arrayidx202.5.i, align 2
  %519 = load ptr, ptr %arrayidx200.5.i, align 8
  %520 = getelementptr i16, ptr %519, i64 %441
  %arrayidx206.5.i = getelementptr i8, ptr %520, i64 12
  store i16 %PredPel.sroa.43.1.i, ptr %arrayidx206.5.i, align 2
  %521 = load ptr, ptr %arrayidx200.5.i, align 8
  %522 = getelementptr i16, ptr %521, i64 %441
  %arrayidx210.5.i = getelementptr i8, ptr %522, i64 10
  store i16 %PredPel.sroa.43.1.i, ptr %arrayidx210.5.i, align 2
  %523 = load ptr, ptr %arrayidx200.5.i, align 8
  %524 = getelementptr i16, ptr %523, i64 %441
  %arrayidx214.5.i = getelementptr i8, ptr %524, i64 8
  store i16 %PredPel.sroa.43.1.i, ptr %arrayidx214.5.i, align 2
  %525 = load ptr, ptr %arrayidx200.5.i, align 8
  %526 = getelementptr i16, ptr %525, i64 %441
  %arrayidx218.5.i = getelementptr i8, ptr %526, i64 6
  store i16 %PredPel.sroa.43.1.i, ptr %arrayidx218.5.i, align 2
  %527 = load ptr, ptr %arrayidx200.5.i, align 8
  %528 = getelementptr i16, ptr %527, i64 %441
  %arrayidx222.5.i = getelementptr i8, ptr %528, i64 4
  store i16 %PredPel.sroa.43.1.i, ptr %arrayidx222.5.i, align 2
  %529 = load ptr, ptr %arrayidx200.5.i, align 8
  %530 = getelementptr i16, ptr %529, i64 %441
  %arrayidx226.5.i = getelementptr i8, ptr %530, i64 2
  store i16 %PredPel.sroa.43.1.i, ptr %arrayidx226.5.i, align 2
  %531 = load ptr, ptr %arrayidx200.5.i, align 8
  %arrayidx230.5.i = getelementptr inbounds i16, ptr %531, i64 %441
  store i16 %PredPel.sroa.43.1.i, ptr %arrayidx230.5.i, align 2
  %arrayidx200.6.i = getelementptr inbounds ptr, ptr %339, i64 %351
  %532 = load ptr, ptr %arrayidx200.6.i, align 8
  %533 = getelementptr i16, ptr %532, i64 %441
  %arrayidx202.6.i = getelementptr i8, ptr %533, i64 14
  store i16 %PredPel.sroa.50.1.i, ptr %arrayidx202.6.i, align 2
  %534 = load ptr, ptr %arrayidx200.6.i, align 8
  %535 = getelementptr i16, ptr %534, i64 %441
  %arrayidx206.6.i = getelementptr i8, ptr %535, i64 12
  store i16 %PredPel.sroa.50.1.i, ptr %arrayidx206.6.i, align 2
  %536 = load ptr, ptr %arrayidx200.6.i, align 8
  %537 = getelementptr i16, ptr %536, i64 %441
  %arrayidx210.6.i = getelementptr i8, ptr %537, i64 10
  store i16 %PredPel.sroa.50.1.i, ptr %arrayidx210.6.i, align 2
  %538 = load ptr, ptr %arrayidx200.6.i, align 8
  %539 = getelementptr i16, ptr %538, i64 %441
  %arrayidx214.6.i = getelementptr i8, ptr %539, i64 8
  store i16 %PredPel.sroa.50.1.i, ptr %arrayidx214.6.i, align 2
  %540 = load ptr, ptr %arrayidx200.6.i, align 8
  %541 = getelementptr i16, ptr %540, i64 %441
  %arrayidx218.6.i = getelementptr i8, ptr %541, i64 6
  store i16 %PredPel.sroa.50.1.i, ptr %arrayidx218.6.i, align 2
  %542 = load ptr, ptr %arrayidx200.6.i, align 8
  %543 = getelementptr i16, ptr %542, i64 %441
  %arrayidx222.6.i = getelementptr i8, ptr %543, i64 4
  store i16 %PredPel.sroa.50.1.i, ptr %arrayidx222.6.i, align 2
  %544 = load ptr, ptr %arrayidx200.6.i, align 8
  %545 = getelementptr i16, ptr %544, i64 %441
  %arrayidx226.6.i = getelementptr i8, ptr %545, i64 2
  store i16 %PredPel.sroa.50.1.i, ptr %arrayidx226.6.i, align 2
  %546 = load ptr, ptr %arrayidx200.6.i, align 8
  %arrayidx230.6.i = getelementptr inbounds i16, ptr %546, i64 %441
  store i16 %PredPel.sroa.50.1.i, ptr %arrayidx230.6.i, align 2
  %arrayidx200.7.i = getelementptr inbounds ptr, ptr %339, i64 %353
  %547 = load ptr, ptr %arrayidx200.7.i, align 8
  %548 = getelementptr i16, ptr %547, i64 %441
  %arrayidx202.7.i = getelementptr i8, ptr %548, i64 14
  store i16 %PredPel.sroa.57.1.i, ptr %arrayidx202.7.i, align 2
  %549 = load ptr, ptr %arrayidx200.7.i, align 8
  %550 = getelementptr i16, ptr %549, i64 %441
  %arrayidx206.7.i = getelementptr i8, ptr %550, i64 12
  store i16 %PredPel.sroa.57.1.i, ptr %arrayidx206.7.i, align 2
  %551 = load ptr, ptr %arrayidx200.7.i, align 8
  %552 = getelementptr i16, ptr %551, i64 %441
  %arrayidx210.7.i = getelementptr i8, ptr %552, i64 10
  store i16 %PredPel.sroa.57.1.i, ptr %arrayidx210.7.i, align 2
  %553 = load ptr, ptr %arrayidx200.7.i, align 8
  %554 = getelementptr i16, ptr %553, i64 %441
  %arrayidx214.7.i = getelementptr i8, ptr %554, i64 8
  store i16 %PredPel.sroa.57.1.i, ptr %arrayidx214.7.i, align 2
  %555 = load ptr, ptr %arrayidx200.7.i, align 8
  %556 = getelementptr i16, ptr %555, i64 %441
  %arrayidx218.7.i = getelementptr i8, ptr %556, i64 6
  store i16 %PredPel.sroa.57.1.i, ptr %arrayidx218.7.i, align 2
  %557 = load ptr, ptr %arrayidx200.7.i, align 8
  %558 = getelementptr i16, ptr %557, i64 %441
  %arrayidx222.7.i = getelementptr i8, ptr %558, i64 4
  store i16 %PredPel.sroa.57.1.i, ptr %arrayidx222.7.i, align 2
  %559 = load ptr, ptr %arrayidx200.7.i, align 8
  %560 = getelementptr i16, ptr %559, i64 %441
  %arrayidx226.7.i = getelementptr i8, ptr %560, i64 2
  store i16 %PredPel.sroa.57.1.i, ptr %arrayidx226.7.i, align 2
  %561 = load ptr, ptr %arrayidx200.7.i, align 8
  %arrayidx230.7.i = getelementptr inbounds i16, ptr %561, i64 %441
  store i16 %PredPel.sroa.57.1.i, ptr %arrayidx230.7.i, align 2
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pix_d.i221) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pix_c.i220) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pix_b.i219) #6
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %pix_a.i218) #6
  br label %cleanup

sw.bb11:                                          ; preds = %entry
  %p_Vid1.i293 = getelementptr inbounds i8, ptr %currMB, i64 8
  %562 = load ptr, ptr %p_Vid1.i293, align 8
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %PredPel.i288) #6
  %tobool.not.i294 = icmp eq i32 %pl, 0
  %dec_picture2.i295 = getelementptr inbounds i8, ptr %2, i64 13520
  %563 = load ptr, ptr %dec_picture2.i295, align 8
  br i1 %tobool.not.i294, label %cond.false.i500, label %cond.true.i296

cond.true.i296:                                   ; preds = %sw.bb11
  %imgUV.i297 = getelementptr inbounds i8, ptr %563, i64 136
  %564 = load ptr, ptr %imgUV.i297, align 8
  %sub.i298 = add i32 %pl, -1
  %idxprom.i299 = zext i32 %sub.i298 to i64
  %arrayidx.i300 = getelementptr inbounds ptr, ptr %564, i64 %idxprom.i299
  br label %cond.end.i301

cond.false.i500:                                  ; preds = %sw.bb11
  %imgY3.i501 = getelementptr inbounds i8, ptr %563, i64 128
  br label %cond.end.i301

cond.end.i301:                                    ; preds = %cond.false.i500, %cond.true.i296
  %cond.in.i302 = phi ptr [ %arrayidx.i300, %cond.true.i296 ], [ %imgY3.i501, %cond.false.i500 ]
  %cond.i303 = load ptr, ptr %cond.in.i302, align 8
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %pix_a.i289) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pix_b.i290) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pix_c.i291) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pix_d.i292) #6
  %mb_pred.i304 = getelementptr inbounds i8, ptr %2, i64 1248
  %565 = load ptr, ptr %mb_pred.i304, align 8
  %idxprom4.i305 = zext i32 %pl to i64
  %arrayidx5.i306 = getelementptr inbounds ptr, ptr %565, i64 %idxprom4.i305
  %566 = load ptr, ptr %arrayidx5.i306, align 8
  %mb_size6.i307 = getelementptr inbounds i8, ptr %562, i64 849124
  %sub8.i308 = add nsw i32 %ioff, -1
  call void @getAffNeighbour(ptr noundef nonnull %currMB, i32 noundef %sub8.i308, i32 noundef %joff, ptr noundef nonnull %mb_size6.i307, ptr noundef nonnull %pix_a.i289) #6
  %567 = add i32 %joff, 1
  %arrayidx10.1.i309 = getelementptr inbounds i8, ptr %pix_a.i289, i64 16
  call void @getAffNeighbour(ptr noundef nonnull %currMB, i32 noundef %sub8.i308, i32 noundef %567, ptr noundef nonnull %mb_size6.i307, ptr noundef nonnull %arrayidx10.1.i309) #6
  %568 = add i32 %joff, 2
  %arrayidx10.2.i310 = getelementptr inbounds i8, ptr %pix_a.i289, i64 32
  call void @getAffNeighbour(ptr noundef nonnull %currMB, i32 noundef %sub8.i308, i32 noundef %568, ptr noundef nonnull %mb_size6.i307, ptr noundef nonnull %arrayidx10.2.i310) #6
  %569 = add i32 %joff, 3
  %arrayidx10.3.i311 = getelementptr inbounds i8, ptr %pix_a.i289, i64 48
  call void @getAffNeighbour(ptr noundef nonnull %currMB, i32 noundef %sub8.i308, i32 noundef %569, ptr noundef nonnull %mb_size6.i307, ptr noundef nonnull %arrayidx10.3.i311) #6
  %570 = add i32 %joff, 4
  %arrayidx10.4.i312 = getelementptr inbounds i8, ptr %pix_a.i289, i64 64
  call void @getAffNeighbour(ptr noundef nonnull %currMB, i32 noundef %sub8.i308, i32 noundef %570, ptr noundef nonnull %mb_size6.i307, ptr noundef nonnull %arrayidx10.4.i312) #6
  %571 = add i32 %joff, 5
  %arrayidx10.5.i313 = getelementptr inbounds i8, ptr %pix_a.i289, i64 80
  call void @getAffNeighbour(ptr noundef nonnull %currMB, i32 noundef %sub8.i308, i32 noundef %571, ptr noundef nonnull %mb_size6.i307, ptr noundef nonnull %arrayidx10.5.i313) #6
  %572 = add i32 %joff, 6
  %arrayidx10.6.i314 = getelementptr inbounds i8, ptr %pix_a.i289, i64 96
  call void @getAffNeighbour(ptr noundef nonnull %currMB, i32 noundef %sub8.i308, i32 noundef %572, ptr noundef nonnull %mb_size6.i307, ptr noundef nonnull %arrayidx10.6.i314) #6
  %573 = add i32 %joff, 7
  %arrayidx10.7.i315 = getelementptr inbounds i8, ptr %pix_a.i289, i64 112
  call void @getAffNeighbour(ptr noundef nonnull %currMB, i32 noundef %sub8.i308, i32 noundef %573, ptr noundef nonnull %mb_size6.i307, ptr noundef nonnull %arrayidx10.7.i315) #6
  %sub11.i316 = add nsw i32 %joff, -1
  call void @getAffNeighbour(ptr noundef nonnull %currMB, i32 noundef %ioff, i32 noundef %sub11.i316, ptr noundef nonnull %mb_size6.i307, ptr noundef nonnull %pix_b.i290) #6
  %add12.i317 = add nsw i32 %ioff, 8
  call void @getAffNeighbour(ptr noundef nonnull %currMB, i32 noundef %add12.i317, i32 noundef %sub11.i316, ptr noundef nonnull %mb_size6.i307, ptr noundef nonnull %pix_c.i291) #6
  call void @getAffNeighbour(ptr noundef nonnull %currMB, i32 noundef %sub8.i308, i32 noundef %sub11.i316, ptr noundef nonnull %mb_size6.i307, ptr noundef nonnull %pix_d.i292) #6
  %574 = load i32, ptr %pix_c.i291, align 4
  %tobool16.not.i318 = icmp ne i32 %574, 0
  %cmp17.i319 = icmp ne i32 %ioff, 8
  %cmp19.i320 = icmp ne i32 %joff, 8
  %.not.i321 = or i1 %cmp17.i319, %cmp19.i320
  %narrow.i322 = and i1 %.not.i321, %tobool16.not.i318
  %land.ext.i323 = zext i1 %narrow.i322 to i32
  store i32 %land.ext.i323, ptr %pix_c.i291, align 4
  %active_pps.i324 = getelementptr inbounds i8, ptr %562, i64 8
  %575 = load ptr, ptr %active_pps.i324, align 8
  %constrained_intra_pred_flag.i325 = getelementptr inbounds i8, ptr %575, i64 2204
  %576 = load i32, ptr %constrained_intra_pred_flag.i325, align 4
  %tobool22.not.i326 = icmp eq i32 %576, 0
  br i1 %tobool22.not.i326, label %if.else.i499, label %for.cond23.preheader.i327

for.cond23.preheader.i327:                        ; preds = %cond.end.i301
  %intra_block.i328 = getelementptr inbounds i8, ptr %2, i64 13544
  %577 = load i32, ptr %pix_a.i289, align 16
  %tobool29.not.i329 = icmp eq i32 %577, 0
  br i1 %tobool29.not.i329, label %cond.end36.i334, label %cond.true30.i330

cond.true30.i330:                                 ; preds = %for.cond23.preheader.i327
  %578 = load ptr, ptr %intra_block.i328, align 8
  %mb_addr.i331 = getelementptr inbounds i8, ptr %pix_a.i289, i64 4
  %579 = load i32, ptr %mb_addr.i331, align 4
  %idxprom33.i332 = sext i32 %579 to i64
  %arrayidx34.i333 = getelementptr inbounds i8, ptr %578, i64 %idxprom33.i332
  %580 = load i8, ptr %arrayidx34.i333, align 1
  %conv644.i = zext i8 %580 to i32
  br label %cond.end36.i334

cond.end36.i334:                                  ; preds = %cond.true30.i330, %for.cond23.preheader.i327
  %cond37.i335 = phi i32 [ %conv644.i, %cond.true30.i330 ], [ 0, %for.cond23.preheader.i327 ]
  %and.i336 = and i32 %cond37.i335, 1
  %581 = load i32, ptr %arrayidx10.1.i309, align 16
  %tobool29.not.1.i337 = icmp eq i32 %581, 0
  br i1 %tobool29.not.1.i337, label %cond.end36.1.i342, label %cond.true30.1.i338

cond.true30.1.i338:                               ; preds = %cond.end36.i334
  %582 = load ptr, ptr %intra_block.i328, align 8
  %mb_addr.1.i339 = getelementptr inbounds i8, ptr %pix_a.i289, i64 20
  %583 = load i32, ptr %mb_addr.1.i339, align 4
  %idxprom33.1.i340 = sext i32 %583 to i64
  %arrayidx34.1.i341 = getelementptr inbounds i8, ptr %582, i64 %idxprom33.1.i340
  %584 = load i8, ptr %arrayidx34.1.i341, align 1
  %conv.1645.i = zext i8 %584 to i32
  br label %cond.end36.1.i342

cond.end36.1.i342:                                ; preds = %cond.true30.1.i338, %cond.end36.i334
  %cond37.1.i343 = phi i32 [ %conv.1645.i, %cond.true30.1.i338 ], [ 0, %cond.end36.i334 ]
  %and.1.i344 = and i32 %and.i336, %cond37.1.i343
  %585 = load i32, ptr %arrayidx10.2.i310, align 16
  %tobool29.not.2.i345 = icmp eq i32 %585, 0
  br i1 %tobool29.not.2.i345, label %cond.end36.2.i350, label %cond.true30.2.i346

cond.true30.2.i346:                               ; preds = %cond.end36.1.i342
  %586 = load ptr, ptr %intra_block.i328, align 8
  %mb_addr.2.i347 = getelementptr inbounds i8, ptr %pix_a.i289, i64 36
  %587 = load i32, ptr %mb_addr.2.i347, align 4
  %idxprom33.2.i348 = sext i32 %587 to i64
  %arrayidx34.2.i349 = getelementptr inbounds i8, ptr %586, i64 %idxprom33.2.i348
  %588 = load i8, ptr %arrayidx34.2.i349, align 1
  %conv.2646.i = zext i8 %588 to i32
  br label %cond.end36.2.i350

cond.end36.2.i350:                                ; preds = %cond.true30.2.i346, %cond.end36.1.i342
  %cond37.2.i351 = phi i32 [ %conv.2646.i, %cond.true30.2.i346 ], [ 0, %cond.end36.1.i342 ]
  %and.2.i352 = and i32 %and.1.i344, %cond37.2.i351
  %589 = load i32, ptr %arrayidx10.3.i311, align 16
  %tobool29.not.3.i353 = icmp eq i32 %589, 0
  br i1 %tobool29.not.3.i353, label %cond.end36.3.i358, label %cond.true30.3.i354

cond.true30.3.i354:                               ; preds = %cond.end36.2.i350
  %590 = load ptr, ptr %intra_block.i328, align 8
  %mb_addr.3.i355 = getelementptr inbounds i8, ptr %pix_a.i289, i64 52
  %591 = load i32, ptr %mb_addr.3.i355, align 4
  %idxprom33.3.i356 = sext i32 %591 to i64
  %arrayidx34.3.i357 = getelementptr inbounds i8, ptr %590, i64 %idxprom33.3.i356
  %592 = load i8, ptr %arrayidx34.3.i357, align 1
  %conv.3647.i = zext i8 %592 to i32
  br label %cond.end36.3.i358

cond.end36.3.i358:                                ; preds = %cond.true30.3.i354, %cond.end36.2.i350
  %cond37.3.i359 = phi i32 [ %conv.3647.i, %cond.true30.3.i354 ], [ 0, %cond.end36.2.i350 ]
  %and.3.i360 = and i32 %and.2.i352, %cond37.3.i359
  %593 = load i32, ptr %arrayidx10.4.i312, align 16
  %tobool29.not.4.i361 = icmp eq i32 %593, 0
  br i1 %tobool29.not.4.i361, label %cond.end36.4.i366, label %cond.true30.4.i362

cond.true30.4.i362:                               ; preds = %cond.end36.3.i358
  %594 = load ptr, ptr %intra_block.i328, align 8
  %mb_addr.4.i363 = getelementptr inbounds i8, ptr %pix_a.i289, i64 68
  %595 = load i32, ptr %mb_addr.4.i363, align 4
  %idxprom33.4.i364 = sext i32 %595 to i64
  %arrayidx34.4.i365 = getelementptr inbounds i8, ptr %594, i64 %idxprom33.4.i364
  %596 = load i8, ptr %arrayidx34.4.i365, align 1
  %conv.4648.i = zext i8 %596 to i32
  br label %cond.end36.4.i366

cond.end36.4.i366:                                ; preds = %cond.true30.4.i362, %cond.end36.3.i358
  %cond37.4.i367 = phi i32 [ %conv.4648.i, %cond.true30.4.i362 ], [ 0, %cond.end36.3.i358 ]
  %and.4.i368 = and i32 %and.3.i360, %cond37.4.i367
  %597 = load i32, ptr %arrayidx10.5.i313, align 16
  %tobool29.not.5.i369 = icmp eq i32 %597, 0
  br i1 %tobool29.not.5.i369, label %cond.end36.5.i374, label %cond.true30.5.i370

cond.true30.5.i370:                               ; preds = %cond.end36.4.i366
  %598 = load ptr, ptr %intra_block.i328, align 8
  %mb_addr.5.i371 = getelementptr inbounds i8, ptr %pix_a.i289, i64 84
  %599 = load i32, ptr %mb_addr.5.i371, align 4
  %idxprom33.5.i372 = sext i32 %599 to i64
  %arrayidx34.5.i373 = getelementptr inbounds i8, ptr %598, i64 %idxprom33.5.i372
  %600 = load i8, ptr %arrayidx34.5.i373, align 1
  %conv.5649.i = zext i8 %600 to i32
  br label %cond.end36.5.i374

cond.end36.5.i374:                                ; preds = %cond.true30.5.i370, %cond.end36.4.i366
  %cond37.5.i375 = phi i32 [ %conv.5649.i, %cond.true30.5.i370 ], [ 0, %cond.end36.4.i366 ]
  %and.5.i376 = and i32 %and.4.i368, %cond37.5.i375
  %601 = load i32, ptr %arrayidx10.6.i314, align 16
  %tobool29.not.6.i377 = icmp eq i32 %601, 0
  br i1 %tobool29.not.6.i377, label %cond.end36.6.i382, label %cond.true30.6.i378

cond.true30.6.i378:                               ; preds = %cond.end36.5.i374
  %602 = load ptr, ptr %intra_block.i328, align 8
  %mb_addr.6.i379 = getelementptr inbounds i8, ptr %pix_a.i289, i64 100
  %603 = load i32, ptr %mb_addr.6.i379, align 4
  %idxprom33.6.i380 = sext i32 %603 to i64
  %arrayidx34.6.i381 = getelementptr inbounds i8, ptr %602, i64 %idxprom33.6.i380
  %604 = load i8, ptr %arrayidx34.6.i381, align 1
  %conv.6650.i = zext i8 %604 to i32
  br label %cond.end36.6.i382

cond.end36.6.i382:                                ; preds = %cond.true30.6.i378, %cond.end36.5.i374
  %cond37.6.i383 = phi i32 [ %conv.6650.i, %cond.true30.6.i378 ], [ 0, %cond.end36.5.i374 ]
  %and.6.i384 = and i32 %and.5.i376, %cond37.6.i383
  %605 = load i32, ptr %arrayidx10.7.i315, align 16
  %tobool29.not.7.i385 = icmp eq i32 %605, 0
  br i1 %tobool29.not.7.i385, label %cond.end36.7.i391, label %cond.true30.7.i386

cond.true30.7.i386:                               ; preds = %cond.end36.6.i382
  %606 = load ptr, ptr %intra_block.i328, align 8
  %mb_addr.7.i387 = getelementptr inbounds i8, ptr %pix_a.i289, i64 116
  %607 = load i32, ptr %mb_addr.7.i387, align 4
  %idxprom33.7.i388 = sext i32 %607 to i64
  %arrayidx34.7.i389 = getelementptr inbounds i8, ptr %606, i64 %idxprom33.7.i388
  %608 = load i8, ptr %arrayidx34.7.i389, align 1
  %conv.7.i3901996 = zext i8 %608 to i32
  br label %cond.end36.7.i391

cond.end36.7.i391:                                ; preds = %cond.true30.7.i386, %cond.end36.6.i382
  %cond37.7.i392 = phi i32 [ %conv.7.i3901996, %cond.true30.7.i386 ], [ 0, %cond.end36.6.i382 ]
  %and.7.i393 = and i32 %and.6.i384, %cond37.7.i392
  %609 = load i32, ptr %pix_b.i290, align 4
  %tobool42.not.i394 = icmp eq i32 %609, 0
  br i1 %tobool42.not.i394, label %cond.end50.i400, label %cond.true43.i395

cond.true43.i395:                                 ; preds = %cond.end36.7.i391
  %610 = load ptr, ptr %intra_block.i328, align 8
  %mb_addr45.i396 = getelementptr inbounds i8, ptr %pix_b.i290, i64 4
  %611 = load i32, ptr %mb_addr45.i396, align 4
  %idxprom46.i397 = sext i32 %611 to i64
  %arrayidx47.i398 = getelementptr inbounds i8, ptr %610, i64 %idxprom46.i397
  %612 = load i8, ptr %arrayidx47.i398, align 1
  %conv48.i399 = sext i8 %612 to i32
  br label %cond.end50.i400

cond.end50.i400:                                  ; preds = %cond.true43.i395, %cond.end36.7.i391
  %cond51.i401 = phi i32 [ %conv48.i399, %cond.true43.i395 ], [ 0, %cond.end36.7.i391 ]
  br i1 %narrow.i322, label %cond.true54.i494, label %cond.end61.i402

cond.true54.i494:                                 ; preds = %cond.end50.i400
  %613 = load ptr, ptr %intra_block.i328, align 8
  %mb_addr56.i495 = getelementptr inbounds i8, ptr %pix_c.i291, i64 4
  %614 = load i32, ptr %mb_addr56.i495, align 4
  %idxprom57.i496 = sext i32 %614 to i64
  %arrayidx58.i497 = getelementptr inbounds i8, ptr %613, i64 %idxprom57.i496
  %615 = load i8, ptr %arrayidx58.i497, align 1
  %conv59.i498 = sext i8 %615 to i32
  br label %cond.end61.i402

cond.end61.i402:                                  ; preds = %cond.true54.i494, %cond.end50.i400
  %cond62.i403 = phi i32 [ %conv59.i498, %cond.true54.i494 ], [ 0, %cond.end50.i400 ]
  %616 = load i32, ptr %pix_d.i292, align 4
  %tobool64.not.i404 = icmp eq i32 %616, 0
  br i1 %tobool64.not.i404, label %if.end.thread.i, label %cond.true65.i405

if.end.thread.i:                                  ; preds = %cond.end61.i402
  %tobool79599.not.i = icmp eq i32 %cond51.i401, 0
  %tobool80600.i = icmp ne i32 %and.7.i393, 0
  %current_mb_nr636.i = getelementptr inbounds i8, ptr %2, i64 108
  %617 = load i32, ptr %current_mb_nr636.i, align 4
  %call637.i = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %617)
  br i1 %tobool79599.not.i, label %if.else107.i, label %if.then86.i

cond.true65.i405:                                 ; preds = %cond.end61.i402
  %618 = load ptr, ptr %intra_block.i328, align 8
  %mb_addr67.i406 = getelementptr inbounds i8, ptr %pix_d.i292, i64 4
  %619 = load i32, ptr %mb_addr67.i406, align 4
  %idxprom68.i407 = sext i32 %619 to i64
  %arrayidx69.i408 = getelementptr inbounds i8, ptr %618, i64 %idxprom68.i407
  %620 = load i8, ptr %arrayidx69.i408, align 1
  %conv70.i409 = sext i8 %620 to i32
  br label %if.end.i410

if.else.i499:                                     ; preds = %cond.end.i301
  %621 = load i32, ptr %pix_a.i289, align 16
  %622 = load i32, ptr %pix_b.i290, align 4
  %623 = load i32, ptr %pix_d.i292, align 4
  br label %if.end.i410

if.end.i410:                                      ; preds = %if.else.i499, %cond.true65.i405
  %block_available_up.0.i411 = phi i32 [ %622, %if.else.i499 ], [ %cond51.i401, %cond.true65.i405 ]
  %block_available_left.1.i412 = phi i32 [ %621, %if.else.i499 ], [ %and.7.i393, %cond.true65.i405 ]
  %block_available_up_left.0.i413 = phi i32 [ %623, %if.else.i499 ], [ %conv70.i409, %cond.true65.i405 ]
  %block_available_up_right.0.i414 = phi i32 [ %land.ext.i323, %if.else.i499 ], [ %cond62.i403, %cond.true65.i405 ]
  %tobool79.i415 = icmp ne i32 %block_available_up.0.i411, 0
  %tobool80.i = icmp ne i32 %block_available_left.1.i412, 0
  %or.cond.i416 = select i1 %tobool79.i415, i1 %tobool80.i, i1 false
  %tobool82.i = icmp ne i32 %block_available_up_left.0.i413, 0
  %or.cond500.i = select i1 %or.cond.i416, i1 %tobool82.i, i1 false
  br i1 %or.cond500.i, label %if.then86.i, label %if.then83.i417

if.then83.i417:                                   ; preds = %if.end.i410
  %current_mb_nr.i418 = getelementptr inbounds i8, ptr %2, i64 108
  %624 = load i32, ptr %current_mb_nr.i418, align 4
  %call.i419 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %624)
  br i1 %tobool79.i415, label %if.then86.i, label %if.else107.i

if.then86.i:                                      ; preds = %if.then83.i417, %if.end.i410, %if.end.thread.i
  %block_available_up.0605635.i = phi i32 [ %block_available_up.0.i411, %if.then83.i417 ], [ %cond51.i401, %if.end.thread.i ], [ %block_available_up.0.i411, %if.end.i410 ]
  %block_available_left.1607632.i = phi i32 [ %block_available_left.1.i412, %if.then83.i417 ], [ %and.7.i393, %if.end.thread.i ], [ %block_available_left.1.i412, %if.end.i410 ]
  %block_available_up_left.0609629.i = phi i32 [ %block_available_up_left.0.i413, %if.then83.i417 ], [ 0, %if.end.thread.i ], [ %block_available_up_left.0.i413, %if.end.i410 ]
  %block_available_up_right.0611626.i = phi i32 [ %block_available_up_right.0.i414, %if.then83.i417 ], [ %cond62.i403, %if.end.thread.i ], [ %block_available_up_right.0.i414, %if.end.i410 ]
  %tobool80615623.i = phi i1 [ %tobool80.i, %if.then83.i417 ], [ %tobool80600.i, %if.end.thread.i ], [ true, %if.end.i410 ]
  %tobool82617620.i = phi i1 [ %tobool82.i, %if.then83.i417 ], [ false, %if.end.thread.i ], [ true, %if.end.i410 ]
  %pos_y.i476 = getelementptr inbounds i8, ptr %pix_b.i290, i64 14
  %625 = load i16, ptr %pos_y.i476, align 2
  %idxprom87.i = sext i16 %625 to i64
  %arrayidx88.i477 = getelementptr inbounds ptr, ptr %cond.i303, i64 %idxprom87.i
  %626 = load ptr, ptr %arrayidx88.i477, align 8
  %pos_x.i478 = getelementptr inbounds i8, ptr %pix_b.i290, i64 12
  %627 = load i16, ptr %pos_x.i478, align 4
  %idxprom89.i = sext i16 %627 to i64
  %arrayidx90.i479 = getelementptr inbounds i16, ptr %626, i64 %idxprom89.i
  %628 = load i16, ptr %arrayidx90.i479, align 2
  %arrayidx92.i480 = getelementptr inbounds i8, ptr %PredPel.i288, i64 2
  store i16 %628, ptr %arrayidx92.i480, align 2
  %arrayidx93.i481 = getelementptr inbounds i8, ptr %arrayidx90.i479, i64 2
  %629 = load i16, ptr %arrayidx93.i481, align 2
  %arrayidx94.i482 = getelementptr inbounds i8, ptr %PredPel.i288, i64 4
  store i16 %629, ptr %arrayidx94.i482, align 4
  %arrayidx95.i483 = getelementptr inbounds i8, ptr %arrayidx90.i479, i64 4
  %630 = load i16, ptr %arrayidx95.i483, align 2
  %arrayidx96.i484 = getelementptr inbounds i8, ptr %PredPel.i288, i64 6
  store i16 %630, ptr %arrayidx96.i484, align 2
  %arrayidx97.i485 = getelementptr inbounds i8, ptr %arrayidx90.i479, i64 6
  %631 = load i16, ptr %arrayidx97.i485, align 2
  %arrayidx98.i486 = getelementptr inbounds i8, ptr %PredPel.i288, i64 8
  store i16 %631, ptr %arrayidx98.i486, align 8
  %arrayidx99.i487 = getelementptr inbounds i8, ptr %arrayidx90.i479, i64 8
  %632 = load i16, ptr %arrayidx99.i487, align 2
  %arrayidx100.i488 = getelementptr inbounds i8, ptr %PredPel.i288, i64 10
  store i16 %632, ptr %arrayidx100.i488, align 2
  %arrayidx101.i489 = getelementptr inbounds i8, ptr %arrayidx90.i479, i64 10
  %633 = load i16, ptr %arrayidx101.i489, align 2
  %arrayidx102.i = getelementptr inbounds i8, ptr %PredPel.i288, i64 12
  store i16 %633, ptr %arrayidx102.i, align 4
  %arrayidx103.i490 = getelementptr inbounds i8, ptr %arrayidx90.i479, i64 12
  %634 = load i16, ptr %arrayidx103.i490, align 2
  %arrayidx104.i491 = getelementptr inbounds i8, ptr %PredPel.i288, i64 14
  store i16 %634, ptr %arrayidx104.i491, align 2
  %arrayidx105.i492 = getelementptr inbounds i8, ptr %arrayidx90.i479, i64 14
  %635 = load i16, ptr %arrayidx105.i492, align 2
  %arrayidx106.i493 = getelementptr inbounds i8, ptr %PredPel.i288, i64 16
  store i16 %635, ptr %arrayidx106.i493, align 16
  br label %if.end119.i

if.else107.i:                                     ; preds = %if.then83.i417, %if.end.thread.i
  %block_available_left.1607631.i = phi i32 [ %block_available_left.1.i412, %if.then83.i417 ], [ %and.7.i393, %if.end.thread.i ]
  %block_available_up_left.0609628.i = phi i32 [ %block_available_up_left.0.i413, %if.then83.i417 ], [ 0, %if.end.thread.i ]
  %block_available_up_right.0611625.i = phi i32 [ %block_available_up_right.0.i414, %if.then83.i417 ], [ %cond62.i403, %if.end.thread.i ]
  %tobool80615622.i = phi i1 [ %tobool80.i, %if.then83.i417 ], [ %tobool80600.i, %if.end.thread.i ]
  %tobool82617619.i = phi i1 [ %tobool82.i, %if.then83.i417 ], [ false, %if.end.thread.i ]
  %dc_pred_value_comp.i420 = getelementptr inbounds i8, ptr %562, i64 849060
  %arrayidx109.i421 = getelementptr inbounds [3 x i32], ptr %dc_pred_value_comp.i420, i64 0, i64 %idxprom4.i305
  %636 = load i32, ptr %arrayidx109.i421, align 4
  %conv110.i = trunc i32 %636 to i16
  %arrayidx118.i424 = getelementptr inbounds i8, ptr %PredPel.i288, i64 2
  %637 = insertelement <8 x i16> poison, i16 %conv110.i, i64 0
  %638 = shufflevector <8 x i16> %637, <8 x i16> poison, <8 x i32> zeroinitializer
  store <8 x i16> %638, ptr %arrayidx118.i424, align 2
  br label %if.end119.i

if.end119.i:                                      ; preds = %if.else107.i, %if.then86.i
  %639 = phi i16 [ %conv110.i, %if.else107.i ], [ %635, %if.then86.i ]
  %block_available_up.0605633.i = phi i32 [ 0, %if.else107.i ], [ %block_available_up.0605635.i, %if.then86.i ]
  %block_available_left.1607630.i = phi i32 [ %block_available_left.1607631.i, %if.else107.i ], [ %block_available_left.1607632.i, %if.then86.i ]
  %block_available_up_left.0609627.i = phi i32 [ %block_available_up_left.0609628.i, %if.else107.i ], [ %block_available_up_left.0609629.i, %if.then86.i ]
  %block_available_up_right.0611624.i = phi i32 [ %block_available_up_right.0611625.i, %if.else107.i ], [ %block_available_up_right.0611626.i, %if.then86.i ]
  %tobool80615621.i = phi i1 [ %tobool80615622.i, %if.else107.i ], [ %tobool80615623.i, %if.then86.i ]
  %tobool82617618.i = phi i1 [ %tobool82617619.i, %if.else107.i ], [ %tobool82617620.i, %if.then86.i ]
  %tobool120.not.i = icmp eq i32 %block_available_up_right.0611624.i, 0
  br i1 %tobool120.not.i, label %if.else144.i, label %if.then121.i

if.then121.i:                                     ; preds = %if.end119.i
  %pos_y122.i = getelementptr inbounds i8, ptr %pix_c.i291, i64 14
  %640 = load i16, ptr %pos_y122.i, align 2
  %idxprom123.i = sext i16 %640 to i64
  %arrayidx124.i425 = getelementptr inbounds ptr, ptr %cond.i303, i64 %idxprom123.i
  %641 = load ptr, ptr %arrayidx124.i425, align 8
  %pos_x125.i = getelementptr inbounds i8, ptr %pix_c.i291, i64 12
  %642 = load i16, ptr %pos_x125.i, align 4
  %idxprom126.i = sext i16 %642 to i64
  %arrayidx127.i426 = getelementptr inbounds i16, ptr %641, i64 %idxprom126.i
  %643 = load i16, ptr %arrayidx127.i426, align 2
  %arrayidx129.i427 = getelementptr inbounds i8, ptr %PredPel.i288, i64 18
  store i16 %643, ptr %arrayidx129.i427, align 2
  %arrayidx130.i428 = getelementptr inbounds i8, ptr %arrayidx127.i426, i64 2
  %644 = load i16, ptr %arrayidx130.i428, align 2
  %arrayidx131.i429 = getelementptr inbounds i8, ptr %PredPel.i288, i64 20
  store i16 %644, ptr %arrayidx131.i429, align 4
  %arrayidx132.i430 = getelementptr inbounds i8, ptr %arrayidx127.i426, i64 4
  %645 = load i16, ptr %arrayidx132.i430, align 2
  %arrayidx133.i431 = getelementptr inbounds i8, ptr %PredPel.i288, i64 22
  store i16 %645, ptr %arrayidx133.i431, align 2
  %arrayidx134.i432 = getelementptr inbounds i8, ptr %arrayidx127.i426, i64 6
  %646 = load i16, ptr %arrayidx134.i432, align 2
  %arrayidx135.i433 = getelementptr inbounds i8, ptr %PredPel.i288, i64 24
  store i16 %646, ptr %arrayidx135.i433, align 8
  %arrayidx136.i434 = getelementptr inbounds i8, ptr %arrayidx127.i426, i64 8
  %647 = load i16, ptr %arrayidx136.i434, align 2
  %arrayidx137.i435 = getelementptr inbounds i8, ptr %PredPel.i288, i64 26
  store i16 %647, ptr %arrayidx137.i435, align 2
  %arrayidx138.i = getelementptr inbounds i8, ptr %arrayidx127.i426, i64 10
  %648 = load i16, ptr %arrayidx138.i, align 2
  %arrayidx139.i = getelementptr inbounds i8, ptr %PredPel.i288, i64 28
  store i16 %648, ptr %arrayidx139.i, align 4
  %arrayidx140.i436 = getelementptr inbounds i8, ptr %arrayidx127.i426, i64 12
  %649 = load i16, ptr %arrayidx140.i436, align 2
  %arrayidx141.i437 = getelementptr inbounds i8, ptr %PredPel.i288, i64 30
  store i16 %649, ptr %arrayidx141.i437, align 2
  %arrayidx142.i438 = getelementptr inbounds i8, ptr %arrayidx127.i426, i64 14
  %650 = load i16, ptr %arrayidx142.i438, align 2
  %arrayidx143.i439 = getelementptr inbounds i8, ptr %PredPel.i288, i64 32
  store i16 %650, ptr %arrayidx143.i439, align 16
  br label %if.end154.i

if.else144.i:                                     ; preds = %if.end119.i
  %arrayidx153.i475 = getelementptr inbounds i8, ptr %PredPel.i288, i64 18
  %651 = insertelement <8 x i16> poison, i16 %639, i64 0
  %652 = shufflevector <8 x i16> %651, <8 x i16> poison, <8 x i32> zeroinitializer
  store <8 x i16> %652, ptr %arrayidx153.i475, align 2
  br label %if.end154.i

if.end154.i:                                      ; preds = %if.else144.i, %if.then121.i
  br i1 %tobool80615621.i, label %if.then156.i, label %if.else229.i

if.then156.i:                                     ; preds = %if.end154.i
  %pos_y158.i = getelementptr inbounds i8, ptr %pix_a.i289, i64 14
  %653 = load i16, ptr %pos_y158.i, align 2
  %idxprom159.i = sext i16 %653 to i64
  %arrayidx160.i = getelementptr inbounds ptr, ptr %cond.i303, i64 %idxprom159.i
  %654 = load ptr, ptr %arrayidx160.i, align 8
  %pos_x162.i = getelementptr inbounds i8, ptr %pix_a.i289, i64 12
  %655 = load i16, ptr %pos_x162.i, align 4
  %idxprom163.i = sext i16 %655 to i64
  %arrayidx164.i = getelementptr inbounds i16, ptr %654, i64 %idxprom163.i
  %656 = load i16, ptr %arrayidx164.i, align 2
  %arrayidx165.i = getelementptr inbounds i8, ptr %PredPel.i288, i64 34
  store i16 %656, ptr %arrayidx165.i, align 2
  %pos_y167.i = getelementptr inbounds i8, ptr %pix_a.i289, i64 30
  %657 = load i16, ptr %pos_y167.i, align 2
  %idxprom168.i = sext i16 %657 to i64
  %arrayidx169.i = getelementptr inbounds ptr, ptr %cond.i303, i64 %idxprom168.i
  %658 = load ptr, ptr %arrayidx169.i, align 8
  %pos_x171.i = getelementptr inbounds i8, ptr %pix_a.i289, i64 28
  %659 = load i16, ptr %pos_x171.i, align 4
  %idxprom172.i = sext i16 %659 to i64
  %arrayidx173.i = getelementptr inbounds i16, ptr %658, i64 %idxprom172.i
  %660 = load i16, ptr %arrayidx173.i, align 2
  %arrayidx174.i464 = getelementptr inbounds i8, ptr %PredPel.i288, i64 36
  store i16 %660, ptr %arrayidx174.i464, align 4
  %pos_y176.i465 = getelementptr inbounds i8, ptr %pix_a.i289, i64 46
  %661 = load i16, ptr %pos_y176.i465, align 2
  %idxprom177.i466 = sext i16 %661 to i64
  %arrayidx178.i467 = getelementptr inbounds ptr, ptr %cond.i303, i64 %idxprom177.i466
  %662 = load ptr, ptr %arrayidx178.i467, align 8
  %pos_x180.i = getelementptr inbounds i8, ptr %pix_a.i289, i64 44
  %663 = load i16, ptr %pos_x180.i, align 4
  %idxprom181.i = sext i16 %663 to i64
  %arrayidx182.i = getelementptr inbounds i16, ptr %662, i64 %idxprom181.i
  %664 = load i16, ptr %arrayidx182.i, align 2
  %arrayidx183.i = getelementptr inbounds i8, ptr %PredPel.i288, i64 38
  store i16 %664, ptr %arrayidx183.i, align 2
  %pos_y185.i = getelementptr inbounds i8, ptr %pix_a.i289, i64 62
  %665 = load i16, ptr %pos_y185.i, align 2
  %idxprom186.i = sext i16 %665 to i64
  %arrayidx187.i = getelementptr inbounds ptr, ptr %cond.i303, i64 %idxprom186.i
  %666 = load ptr, ptr %arrayidx187.i, align 8
  %pos_x189.i = getelementptr inbounds i8, ptr %pix_a.i289, i64 60
  %667 = load i16, ptr %pos_x189.i, align 4
  %idxprom190.i = sext i16 %667 to i64
  %arrayidx191.i = getelementptr inbounds i16, ptr %666, i64 %idxprom190.i
  %668 = load i16, ptr %arrayidx191.i, align 2
  %arrayidx192.i = getelementptr inbounds i8, ptr %PredPel.i288, i64 40
  store i16 %668, ptr %arrayidx192.i, align 8
  %pos_y194.i = getelementptr inbounds i8, ptr %pix_a.i289, i64 78
  %669 = load i16, ptr %pos_y194.i, align 2
  %idxprom195.i = sext i16 %669 to i64
  %arrayidx196.i = getelementptr inbounds ptr, ptr %cond.i303, i64 %idxprom195.i
  %670 = load ptr, ptr %arrayidx196.i, align 8
  %pos_x198.i = getelementptr inbounds i8, ptr %pix_a.i289, i64 76
  %671 = load i16, ptr %pos_x198.i, align 4
  %idxprom199.i = sext i16 %671 to i64
  %arrayidx200.i468 = getelementptr inbounds i16, ptr %670, i64 %idxprom199.i
  %672 = load i16, ptr %arrayidx200.i468, align 2
  %arrayidx201.i = getelementptr inbounds i8, ptr %PredPel.i288, i64 42
  store i16 %672, ptr %arrayidx201.i, align 2
  %pos_y203.i = getelementptr inbounds i8, ptr %pix_a.i289, i64 94
  %673 = load i16, ptr %pos_y203.i, align 2
  %idxprom204.i = sext i16 %673 to i64
  %arrayidx205.i = getelementptr inbounds ptr, ptr %cond.i303, i64 %idxprom204.i
  %674 = load ptr, ptr %arrayidx205.i, align 8
  %pos_x207.i = getelementptr inbounds i8, ptr %pix_a.i289, i64 92
  %675 = load i16, ptr %pos_x207.i, align 4
  %idxprom208.i = sext i16 %675 to i64
  %arrayidx209.i = getelementptr inbounds i16, ptr %674, i64 %idxprom208.i
  %676 = load i16, ptr %arrayidx209.i, align 2
  %arrayidx210.i469 = getelementptr inbounds i8, ptr %PredPel.i288, i64 44
  store i16 %676, ptr %arrayidx210.i469, align 4
  %pos_y212.i = getelementptr inbounds i8, ptr %pix_a.i289, i64 110
  %677 = load i16, ptr %pos_y212.i, align 2
  %idxprom213.i = sext i16 %677 to i64
  %arrayidx214.i470 = getelementptr inbounds ptr, ptr %cond.i303, i64 %idxprom213.i
  %678 = load ptr, ptr %arrayidx214.i470, align 8
  %pos_x216.i = getelementptr inbounds i8, ptr %pix_a.i289, i64 108
  %679 = load i16, ptr %pos_x216.i, align 4
  %idxprom217.i = sext i16 %679 to i64
  %arrayidx218.i471 = getelementptr inbounds i16, ptr %678, i64 %idxprom217.i
  %680 = load i16, ptr %arrayidx218.i471, align 2
  %arrayidx219.i = getelementptr inbounds i8, ptr %PredPel.i288, i64 46
  store i16 %680, ptr %arrayidx219.i, align 2
  %pos_y221.i = getelementptr inbounds i8, ptr %pix_a.i289, i64 126
  %681 = load i16, ptr %pos_y221.i, align 2
  %idxprom222.i = sext i16 %681 to i64
  %arrayidx223.i = getelementptr inbounds ptr, ptr %cond.i303, i64 %idxprom222.i
  %682 = load ptr, ptr %arrayidx223.i, align 8
  %pos_x225.i = getelementptr inbounds i8, ptr %pix_a.i289, i64 124
  %683 = load i16, ptr %pos_x225.i, align 4
  %idxprom226.i = sext i16 %683 to i64
  %arrayidx227.i = getelementptr inbounds i16, ptr %682, i64 %idxprom226.i
  %684 = load i16, ptr %arrayidx227.i, align 2
  br label %if.end242.i

if.else229.i:                                     ; preds = %if.end154.i
  %dc_pred_value_comp230.i = getelementptr inbounds i8, ptr %562, i64 849060
  %arrayidx232.i440 = getelementptr inbounds [3 x i32], ptr %dc_pred_value_comp230.i, i64 0, i64 %idxprom4.i305
  %685 = load i32, ptr %arrayidx232.i440, align 4
  %conv233.i = trunc i32 %685 to i16
  %arrayidx235.i441 = getelementptr inbounds i8, ptr %PredPel.i288, i64 46
  store i16 %conv233.i, ptr %arrayidx235.i441, align 2
  %arrayidx236.i = getelementptr inbounds i8, ptr %PredPel.i288, i64 44
  store i16 %conv233.i, ptr %arrayidx236.i, align 4
  %arrayidx237.i = getelementptr inbounds i8, ptr %PredPel.i288, i64 42
  store i16 %conv233.i, ptr %arrayidx237.i, align 2
  %arrayidx241.i442 = getelementptr inbounds i8, ptr %PredPel.i288, i64 34
  %686 = insertelement <4 x i16> poison, i16 %conv233.i, i64 0
  %687 = shufflevector <4 x i16> %686, <4 x i16> poison, <4 x i32> zeroinitializer
  store <4 x i16> %687, ptr %arrayidx241.i442, align 2
  br label %if.end242.i

if.end242.i:                                      ; preds = %if.else229.i, %if.then156.i
  %conv233.sink.i = phi i16 [ %684, %if.then156.i ], [ %conv233.i, %if.else229.i ]
  %688 = getelementptr inbounds i8, ptr %PredPel.i288, i64 48
  store i16 %conv233.sink.i, ptr %688, align 16
  br i1 %tobool82617618.i, label %if.then244.i, label %if.else252.i

if.then244.i:                                     ; preds = %if.end242.i
  %pos_y245.i = getelementptr inbounds i8, ptr %pix_d.i292, i64 14
  %689 = load i16, ptr %pos_y245.i, align 2
  %idxprom246.i = sext i16 %689 to i64
  %arrayidx247.i = getelementptr inbounds ptr, ptr %cond.i303, i64 %idxprom246.i
  %690 = load ptr, ptr %arrayidx247.i, align 8
  %pos_x248.i = getelementptr inbounds i8, ptr %pix_d.i292, i64 12
  %691 = load i16, ptr %pos_x248.i, align 4
  %idxprom249.i = sext i16 %691 to i64
  %arrayidx250.i = getelementptr inbounds i16, ptr %690, i64 %idxprom249.i
  %692 = load i16, ptr %arrayidx250.i, align 2
  br label %intra8x8_diag_down_right_pred_mbaff.exit

if.else252.i:                                     ; preds = %if.end242.i
  %dc_pred_value_comp253.i = getelementptr inbounds i8, ptr %562, i64 849060
  %arrayidx255.i = getelementptr inbounds [3 x i32], ptr %dc_pred_value_comp253.i, i64 0, i64 %idxprom4.i305
  %693 = load i32, ptr %arrayidx255.i, align 4
  %conv256.i = trunc i32 %693 to i16
  br label %intra8x8_diag_down_right_pred_mbaff.exit

intra8x8_diag_down_right_pred_mbaff.exit:         ; preds = %if.then244.i, %if.else252.i
  %storemerge.i443 = phi i16 [ %conv256.i, %if.else252.i ], [ %692, %if.then244.i ]
  %.sink.i444 = phi i32 [ 0, %if.else252.i ], [ %block_available_up_left.0609627.i, %if.then244.i ]
  store i16 %storemerge.i443, ptr %PredPel.i288, align 16
  call fastcc void @LowPassForIntra8x8Pred(ptr noundef nonnull %PredPel.i288, i32 noundef %.sink.i444, i32 noundef %block_available_up.0605633.i, i32 noundef %block_available_left.1607630.i)
  %694 = sext i32 %joff to i64
  %695 = load i16, ptr %688, align 16
  %conv261.i = zext i16 %695 to i32
  %arrayidx262.i445 = getelementptr inbounds i8, ptr %PredPel.i288, i64 44
  %696 = load i16, ptr %arrayidx262.i445, align 4
  %conv263.i446 = zext i16 %696 to i32
  %arrayidx265.i447 = getelementptr inbounds i8, ptr %PredPel.i288, i64 46
  %697 = load i16, ptr %arrayidx265.i447, align 2
  %conv266.i448 = zext i16 %697 to i32
  %mul.i = shl nuw nsw i32 %conv266.i448, 1
  %add264.i449 = add nuw nsw i32 %conv263.i446, 2
  %add267.i450 = add nuw nsw i32 %add264.i449, %conv261.i
  %add268.i = add nuw nsw i32 %add267.i450, %mul.i
  %shr.i451 = lshr i32 %add268.i, 2
  %conv269.i452 = trunc nuw i32 %shr.i451 to i16
  %arrayidx273.i = getelementptr inbounds i8, ptr %PredPel.i288, i64 42
  %698 = load i16, ptr %arrayidx273.i, align 2
  %conv274.i = zext i16 %698 to i32
  %mul278.i = shl nuw nsw i32 %conv263.i446, 1
  %add275.i = add nuw nsw i32 %conv274.i, 2
  %add279.i453 = add nuw nsw i32 %mul278.i, %conv266.i448
  %add280.i = add nuw nsw i32 %add279.i453, %add275.i
  %shr281.i = lshr i32 %add280.i, 2
  %conv282.i = trunc nuw i32 %shr281.i to i16
  %arrayidx286.i454 = getelementptr inbounds i8, ptr %PredPel.i288, i64 40
  %699 = load i16, ptr %arrayidx286.i454, align 8
  %conv287.i455 = zext i16 %699 to i32
  %mul291.i = shl nuw nsw i32 %conv274.i, 1
  %add292.i = add nuw nsw i32 %add264.i449, %conv287.i455
  %add293.i = add nuw nsw i32 %add292.i, %mul291.i
  %shr294.i = lshr i32 %add293.i, 2
  %conv295.i = trunc nuw i32 %shr294.i to i16
  %arrayidx299.i = getelementptr inbounds i8, ptr %PredPel.i288, i64 38
  %700 = load i16, ptr %arrayidx299.i, align 2
  %conv300.i = zext i16 %700 to i32
  %mul304.i = shl nuw nsw i32 %conv287.i455, 1
  %add305.i = add nuw nsw i32 %add275.i, %conv300.i
  %add306.i = add nuw nsw i32 %add305.i, %mul304.i
  %shr307.i = lshr i32 %add306.i, 2
  %conv308.i = trunc nuw i32 %shr307.i to i16
  %arrayidx312.i456 = getelementptr inbounds i8, ptr %PredPel.i288, i64 36
  %701 = load i16, ptr %arrayidx312.i456, align 4
  %conv313.i457 = zext i16 %701 to i32
  %mul317.i = shl nuw nsw i32 %conv300.i, 1
  %add314.i458 = add nuw nsw i32 %conv313.i457, 2
  %add318.i = add nuw nsw i32 %add314.i458, %conv287.i455
  %add319.i = add nuw nsw i32 %add318.i, %mul317.i
  %shr320.i = lshr i32 %add319.i, 2
  %conv321.i = trunc nuw i32 %shr320.i to i16
  %arrayidx325.i = getelementptr inbounds i8, ptr %PredPel.i288, i64 34
  %702 = load i16, ptr %arrayidx325.i, align 2
  %conv326.i = zext i16 %702 to i32
  %mul330.i = shl nuw nsw i32 %conv313.i457, 1
  %add327.i = add nuw nsw i32 %conv326.i, 2
  %add331.i = add nuw nsw i32 %add327.i, %conv300.i
  %add332.i459 = add nuw nsw i32 %add331.i, %mul330.i
  %shr333.i = lshr i32 %add332.i459, 2
  %conv334.i = trunc nuw i32 %shr333.i to i16
  %703 = load i16, ptr %PredPel.i288, align 16
  %conv339.i = zext i16 %703 to i32
  %mul343.i = shl nuw nsw i32 %conv326.i, 1
  %add344.i460 = add nuw nsw i32 %add314.i458, %conv339.i
  %add345.i = add nuw nsw i32 %add344.i460, %mul343.i
  %shr346.i = lshr i32 %add345.i, 2
  %conv347.i = trunc nuw i32 %shr346.i to i16
  %arrayidx351.i461 = getelementptr inbounds i8, ptr %PredPel.i288, i64 2
  %704 = load i16, ptr %arrayidx351.i461, align 2
  %conv352.i462 = zext i16 %704 to i32
  %mul356.i = shl nuw nsw i32 %conv339.i, 1
  %add357.i = add nuw nsw i32 %add327.i, %conv352.i462
  %add358.i = add nuw nsw i32 %add357.i, %mul356.i
  %shr359.i = lshr i32 %add358.i, 2
  %conv360.i = trunc nuw i32 %shr359.i to i16
  %arrayidx364.i = getelementptr inbounds i8, ptr %PredPel.i288, i64 4
  %705 = load i16, ptr %arrayidx364.i, align 4
  %conv365.i = zext i16 %705 to i32
  %mul369.i = shl nuw nsw i32 %conv352.i462, 1
  %add366.i = add nuw nsw i32 %conv339.i, 2
  %add370.i = add nuw nsw i32 %add366.i, %conv365.i
  %add371.i = add nuw nsw i32 %add370.i, %mul369.i
  %shr372.i = lshr i32 %add371.i, 2
  %conv373.i = trunc nuw i32 %shr372.i to i16
  %arrayidx377.i = getelementptr inbounds i8, ptr %PredPel.i288, i64 6
  %mul382.i = shl nuw nsw i32 %conv365.i, 1
  %add379.i = add nuw nsw i32 %conv352.i462, 2
  %add392.i = add nuw nsw i32 %conv365.i, 2
  %arrayidx429.i = getelementptr inbounds i8, ptr %PredPel.i288, i64 14
  %706 = load i16, ptr %arrayidx429.i, align 2
  %conv430.i = zext i16 %706 to i32
  %arrayidx442.i = getelementptr inbounds i8, ptr %PredPel.i288, i64 16
  %707 = load i16, ptr %arrayidx442.i, align 16
  %conv443.i = zext i16 %707 to i32
  %arrayidx455.i = getelementptr inbounds ptr, ptr %566, i64 %694
  %708 = load ptr, ptr %arrayidx455.i, align 8
  %idxprom456.i = sext i32 %ioff to i64
  %arrayidx457.i = getelementptr inbounds i16, ptr %708, i64 %idxprom456.i
  %PredArray.sroa.18.14.arrayidx457.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx457.i, i64 2
  %PredArray.sroa.19.14.arrayidx457.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx457.i, i64 4
  %PredArray.sroa.20.14.arrayidx457.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx457.i, i64 6
  %PredArray.sroa.21.14.arrayidx457.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx457.i, i64 8
  %709 = load <4 x i16>, ptr %arrayidx377.i, align 2
  %710 = zext <4 x i16> %709 to <4 x i32>
  %711 = extractelement <4 x i32> %710, i64 0
  %add383.i = add nuw nsw i32 %add379.i, %711
  %add384.i = add nuw nsw i32 %add383.i, %mul382.i
  %shr385.i = lshr i32 %add384.i, 2
  %conv386.i = trunc nuw i32 %shr385.i to i16
  %mul395.i = shl nuw nsw i32 %711, 1
  %712 = extractelement <4 x i32> %710, i64 1
  %add396.i = add nuw nsw i32 %add392.i, %712
  %add397.i = add nuw nsw i32 %add396.i, %mul395.i
  %shr398.i = lshr i32 %add397.i, 2
  %conv399.i = trunc nuw i32 %shr398.i to i16
  %713 = insertelement <4 x i32> %710, i32 %conv430.i, i64 0
  %714 = shl nuw nsw <4 x i32> %713, <i32 1, i32 1, i32 1, i32 1>
  %715 = shufflevector <4 x i32> %714, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %716 = add nuw nsw <4 x i32> %710, <i32 2, i32 2, i32 2, i32 2>
  %717 = shufflevector <4 x i32> %713, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 poison>
  %718 = insertelement <4 x i32> %717, i32 %conv443.i, i64 3
  %719 = add nuw nsw <4 x i32> %716, %718
  %720 = add nuw nsw <4 x i32> %719, %715
  %721 = lshr <4 x i32> %720, <i32 2, i32 2, i32 2, i32 2>
  %722 = trunc <4 x i32> %721 to <4 x i16>
  store i16 %conv360.i, ptr %arrayidx457.i, align 2
  store i16 %conv373.i, ptr %PredArray.sroa.18.14.arrayidx457.sroa_idx.i, align 2
  store i16 %conv386.i, ptr %PredArray.sroa.19.14.arrayidx457.sroa_idx.i, align 2
  store i16 %conv399.i, ptr %PredArray.sroa.20.14.arrayidx457.sroa_idx.i, align 2
  store <4 x i16> %722, ptr %PredArray.sroa.21.14.arrayidx457.sroa_idx.i, align 2
  %arrayidx461.i = getelementptr i8, ptr %arrayidx455.i, i64 8
  %723 = load ptr, ptr %arrayidx461.i, align 8
  %arrayidx463.i = getelementptr inbounds i16, ptr %723, i64 %idxprom456.i
  store i16 %conv347.i, ptr %arrayidx463.i, align 2
  %PredArray.sroa.16.12.arrayidx463.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx463.i, i64 2
  store i16 %conv360.i, ptr %PredArray.sroa.16.12.arrayidx463.sroa_idx.i, align 2
  %PredArray.sroa.18.12.arrayidx463.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx463.i, i64 4
  store i16 %conv373.i, ptr %PredArray.sroa.18.12.arrayidx463.sroa_idx.i, align 2
  %PredArray.sroa.19.12.arrayidx463.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx463.i, i64 6
  store i16 %conv386.i, ptr %PredArray.sroa.19.12.arrayidx463.sroa_idx.i, align 2
  %PredArray.sroa.20.12.arrayidx463.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx463.i, i64 8
  store i16 %conv399.i, ptr %PredArray.sroa.20.12.arrayidx463.sroa_idx.i, align 2
  %PredArray.sroa.21.12.arrayidx463.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx463.i, i64 10
  %724 = extractelement <4 x i16> %722, i64 0
  %725 = shufflevector <4 x i16> %722, <4 x i16> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i16> %725, ptr %PredArray.sroa.21.12.arrayidx463.sroa_idx.i, align 2
  %PredArray.sroa.23.12.arrayidx463.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx463.i, i64 14
  %726 = extractelement <4 x i16> %722, i64 2
  store i16 %726, ptr %PredArray.sroa.23.12.arrayidx463.sroa_idx.i, align 2
  %arrayidx467.i = getelementptr i8, ptr %arrayidx455.i, i64 16
  %727 = load ptr, ptr %arrayidx467.i, align 8
  %arrayidx469.i = getelementptr inbounds i16, ptr %727, i64 %idxprom456.i
  store i16 %conv334.i, ptr %arrayidx469.i, align 2
  %PredArray.sroa.14.10.arrayidx469.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx469.i, i64 2
  store i16 %conv347.i, ptr %PredArray.sroa.14.10.arrayidx469.sroa_idx.i, align 2
  %PredArray.sroa.16.10.arrayidx469.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx469.i, i64 4
  store i16 %conv360.i, ptr %PredArray.sroa.16.10.arrayidx469.sroa_idx.i, align 2
  %PredArray.sroa.18.10.arrayidx469.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx469.i, i64 6
  store i16 %conv373.i, ptr %PredArray.sroa.18.10.arrayidx469.sroa_idx.i, align 2
  %PredArray.sroa.19.10.arrayidx469.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx469.i, i64 8
  store i16 %conv386.i, ptr %PredArray.sroa.19.10.arrayidx469.sroa_idx.i, align 2
  %PredArray.sroa.20.10.arrayidx469.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx469.i, i64 10
  store i16 %conv399.i, ptr %PredArray.sroa.20.10.arrayidx469.sroa_idx.i, align 2
  %PredArray.sroa.21.10.arrayidx469.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx469.i, i64 12
  store <2 x i16> %725, ptr %PredArray.sroa.21.10.arrayidx469.sroa_idx.i, align 2
  %arrayidx473.i = getelementptr i8, ptr %arrayidx455.i, i64 24
  %728 = load ptr, ptr %arrayidx473.i, align 8
  %arrayidx475.i = getelementptr inbounds i16, ptr %728, i64 %idxprom456.i
  store i16 %conv321.i, ptr %arrayidx475.i, align 2
  %PredArray.sroa.12.8.arrayidx475.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx475.i, i64 2
  store i16 %conv334.i, ptr %PredArray.sroa.12.8.arrayidx475.sroa_idx.i, align 2
  %PredArray.sroa.14.8.arrayidx475.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx475.i, i64 4
  store i16 %conv347.i, ptr %PredArray.sroa.14.8.arrayidx475.sroa_idx.i, align 2
  %PredArray.sroa.16.8.arrayidx475.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx475.i, i64 6
  store i16 %conv360.i, ptr %PredArray.sroa.16.8.arrayidx475.sroa_idx.i, align 2
  %PredArray.sroa.18.8.arrayidx475.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx475.i, i64 8
  store i16 %conv373.i, ptr %PredArray.sroa.18.8.arrayidx475.sroa_idx.i, align 2
  %PredArray.sroa.19.8.arrayidx475.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx475.i, i64 10
  store i16 %conv386.i, ptr %PredArray.sroa.19.8.arrayidx475.sroa_idx.i, align 2
  %PredArray.sroa.20.8.arrayidx475.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx475.i, i64 12
  store i16 %conv399.i, ptr %PredArray.sroa.20.8.arrayidx475.sroa_idx.i, align 2
  %PredArray.sroa.21.8.arrayidx475.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx475.i, i64 14
  store i16 %724, ptr %PredArray.sroa.21.8.arrayidx475.sroa_idx.i, align 2
  %arrayidx479.i = getelementptr i8, ptr %arrayidx455.i, i64 32
  %729 = load ptr, ptr %arrayidx479.i, align 8
  %arrayidx481.i = getelementptr inbounds i16, ptr %729, i64 %idxprom456.i
  store i16 %conv308.i, ptr %arrayidx481.i, align 2
  %PredArray.sroa.10.6.arrayidx481.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx481.i, i64 2
  store i16 %conv321.i, ptr %PredArray.sroa.10.6.arrayidx481.sroa_idx.i, align 2
  %PredArray.sroa.12.6.arrayidx481.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx481.i, i64 4
  store i16 %conv334.i, ptr %PredArray.sroa.12.6.arrayidx481.sroa_idx.i, align 2
  %PredArray.sroa.14.6.arrayidx481.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx481.i, i64 6
  store i16 %conv347.i, ptr %PredArray.sroa.14.6.arrayidx481.sroa_idx.i, align 2
  %PredArray.sroa.16.6.arrayidx481.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx481.i, i64 8
  store i16 %conv360.i, ptr %PredArray.sroa.16.6.arrayidx481.sroa_idx.i, align 2
  %PredArray.sroa.18.6.arrayidx481.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx481.i, i64 10
  store i16 %conv373.i, ptr %PredArray.sroa.18.6.arrayidx481.sroa_idx.i, align 2
  %PredArray.sroa.19.6.arrayidx481.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx481.i, i64 12
  store i16 %conv386.i, ptr %PredArray.sroa.19.6.arrayidx481.sroa_idx.i, align 2
  %PredArray.sroa.20.6.arrayidx481.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx481.i, i64 14
  store i16 %conv399.i, ptr %PredArray.sroa.20.6.arrayidx481.sroa_idx.i, align 2
  %arrayidx485.i = getelementptr i8, ptr %arrayidx455.i, i64 40
  %730 = load ptr, ptr %arrayidx485.i, align 8
  %arrayidx487.i = getelementptr inbounds i16, ptr %730, i64 %idxprom456.i
  store i16 %conv295.i, ptr %arrayidx487.i, align 2
  %PredArray.sroa.8.4.arrayidx487.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx487.i, i64 2
  store i16 %conv308.i, ptr %PredArray.sroa.8.4.arrayidx487.sroa_idx.i, align 2
  %PredArray.sroa.10.4.arrayidx487.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx487.i, i64 4
  store i16 %conv321.i, ptr %PredArray.sroa.10.4.arrayidx487.sroa_idx.i, align 2
  %PredArray.sroa.12.4.arrayidx487.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx487.i, i64 6
  store i16 %conv334.i, ptr %PredArray.sroa.12.4.arrayidx487.sroa_idx.i, align 2
  %PredArray.sroa.14.4.arrayidx487.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx487.i, i64 8
  store i16 %conv347.i, ptr %PredArray.sroa.14.4.arrayidx487.sroa_idx.i, align 2
  %PredArray.sroa.16.4.arrayidx487.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx487.i, i64 10
  store i16 %conv360.i, ptr %PredArray.sroa.16.4.arrayidx487.sroa_idx.i, align 2
  %PredArray.sroa.18.4.arrayidx487.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx487.i, i64 12
  store i16 %conv373.i, ptr %PredArray.sroa.18.4.arrayidx487.sroa_idx.i, align 2
  %PredArray.sroa.19.4.arrayidx487.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx487.i, i64 14
  store i16 %conv386.i, ptr %PredArray.sroa.19.4.arrayidx487.sroa_idx.i, align 2
  %arrayidx491.i = getelementptr i8, ptr %arrayidx455.i, i64 48
  %731 = load ptr, ptr %arrayidx491.i, align 8
  %arrayidx493.i = getelementptr inbounds i16, ptr %731, i64 %idxprom456.i
  store i16 %conv282.i, ptr %arrayidx493.i, align 2
  %PredArray.sroa.6.2.arrayidx493.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx493.i, i64 2
  store i16 %conv295.i, ptr %PredArray.sroa.6.2.arrayidx493.sroa_idx.i, align 2
  %PredArray.sroa.8.2.arrayidx493.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx493.i, i64 4
  store i16 %conv308.i, ptr %PredArray.sroa.8.2.arrayidx493.sroa_idx.i, align 2
  %PredArray.sroa.10.2.arrayidx493.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx493.i, i64 6
  store i16 %conv321.i, ptr %PredArray.sroa.10.2.arrayidx493.sroa_idx.i, align 2
  %PredArray.sroa.12.2.arrayidx493.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx493.i, i64 8
  store i16 %conv334.i, ptr %PredArray.sroa.12.2.arrayidx493.sroa_idx.i, align 2
  %PredArray.sroa.14.2.arrayidx493.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx493.i, i64 10
  store i16 %conv347.i, ptr %PredArray.sroa.14.2.arrayidx493.sroa_idx.i, align 2
  %PredArray.sroa.16.2.arrayidx493.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx493.i, i64 12
  store i16 %conv360.i, ptr %PredArray.sroa.16.2.arrayidx493.sroa_idx.i, align 2
  %PredArray.sroa.18.2.arrayidx493.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx493.i, i64 14
  store i16 %conv373.i, ptr %PredArray.sroa.18.2.arrayidx493.sroa_idx.i, align 2
  %arrayidx496.i = getelementptr i8, ptr %arrayidx455.i, i64 56
  %732 = load ptr, ptr %arrayidx496.i, align 8
  %arrayidx498.i = getelementptr inbounds i16, ptr %732, i64 %idxprom456.i
  store i16 %conv269.i452, ptr %arrayidx498.i, align 2
  %PredArray.sroa.4.0.arrayidx498.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx498.i, i64 2
  store i16 %conv282.i, ptr %PredArray.sroa.4.0.arrayidx498.sroa_idx.i, align 2
  %PredArray.sroa.6.0.arrayidx498.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx498.i, i64 4
  store i16 %conv295.i, ptr %PredArray.sroa.6.0.arrayidx498.sroa_idx.i, align 2
  %PredArray.sroa.8.0.arrayidx498.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx498.i, i64 6
  store i16 %conv308.i, ptr %PredArray.sroa.8.0.arrayidx498.sroa_idx.i, align 2
  %PredArray.sroa.10.0.arrayidx498.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx498.i, i64 8
  store i16 %conv321.i, ptr %PredArray.sroa.10.0.arrayidx498.sroa_idx.i, align 2
  %PredArray.sroa.12.0.arrayidx498.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx498.i, i64 10
  store i16 %conv334.i, ptr %PredArray.sroa.12.0.arrayidx498.sroa_idx.i, align 2
  %PredArray.sroa.14.0.arrayidx498.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx498.i, i64 12
  store i16 %conv347.i, ptr %PredArray.sroa.14.0.arrayidx498.sroa_idx.i, align 2
  %PredArray.sroa.16.0.arrayidx498.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx498.i, i64 14
  store i16 %conv360.i, ptr %PredArray.sroa.16.0.arrayidx498.sroa_idx.i, align 2
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pix_d.i292) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pix_c.i291) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pix_b.i290) #6
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %pix_a.i289) #6
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %PredPel.i288) #6
  br label %cleanup

sw.bb13:                                          ; preds = %entry
  %p_Vid1.i507 = getelementptr inbounds i8, ptr %currMB, i64 8
  %733 = load ptr, ptr %p_Vid1.i507, align 8
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %PredPel.i502) #6
  %tobool.not.i508 = icmp eq i32 %pl, 0
  %dec_picture3.i = getelementptr inbounds i8, ptr %2, i64 13520
  %734 = load ptr, ptr %dec_picture3.i, align 8
  br i1 %tobool.not.i508, label %cond.false.i672, label %cond.true.i509

cond.true.i509:                                   ; preds = %sw.bb13
  %imgUV.i510 = getelementptr inbounds i8, ptr %734, i64 136
  %735 = load ptr, ptr %imgUV.i510, align 8
  %sub.i511 = add i32 %pl, -1
  %idxprom.i512 = zext i32 %sub.i511 to i64
  %arrayidx2.i = getelementptr inbounds ptr, ptr %735, i64 %idxprom.i512
  br label %cond.end.i513

cond.false.i672:                                  ; preds = %sw.bb13
  %imgY4.i = getelementptr inbounds i8, ptr %734, i64 128
  br label %cond.end.i513

cond.end.i513:                                    ; preds = %cond.false.i672, %cond.true.i509
  %cond.in.i514 = phi ptr [ %arrayidx2.i, %cond.true.i509 ], [ %imgY4.i, %cond.false.i672 ]
  %cond.i515 = load ptr, ptr %cond.in.i514, align 8
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %pix_a.i503) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pix_b.i504) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pix_c.i505) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pix_d.i506) #6
  %mb_pred.i516 = getelementptr inbounds i8, ptr %2, i64 1248
  %736 = load ptr, ptr %mb_pred.i516, align 8
  %idxprom5.i = zext i32 %pl to i64
  %arrayidx6.i = getelementptr inbounds ptr, ptr %736, i64 %idxprom5.i
  %737 = load ptr, ptr %arrayidx6.i, align 8
  %mb_size7.i = getelementptr inbounds i8, ptr %733, i64 849124
  %sub9.i = add nsw i32 %ioff, -1
  call void @getAffNeighbour(ptr noundef nonnull %currMB, i32 noundef %sub9.i, i32 noundef %joff, ptr noundef nonnull %mb_size7.i, ptr noundef nonnull %pix_a.i503) #6
  %738 = add i32 %joff, 1
  %arrayidx11.1.i = getelementptr inbounds i8, ptr %pix_a.i503, i64 16
  call void @getAffNeighbour(ptr noundef nonnull %currMB, i32 noundef %sub9.i, i32 noundef %738, ptr noundef nonnull %mb_size7.i, ptr noundef nonnull %arrayidx11.1.i) #6
  %739 = add i32 %joff, 2
  %arrayidx11.2.i = getelementptr inbounds i8, ptr %pix_a.i503, i64 32
  call void @getAffNeighbour(ptr noundef nonnull %currMB, i32 noundef %sub9.i, i32 noundef %739, ptr noundef nonnull %mb_size7.i, ptr noundef nonnull %arrayidx11.2.i) #6
  %740 = add i32 %joff, 3
  %arrayidx11.3.i = getelementptr inbounds i8, ptr %pix_a.i503, i64 48
  call void @getAffNeighbour(ptr noundef nonnull %currMB, i32 noundef %sub9.i, i32 noundef %740, ptr noundef nonnull %mb_size7.i, ptr noundef nonnull %arrayidx11.3.i) #6
  %741 = add i32 %joff, 4
  %arrayidx11.4.i = getelementptr inbounds i8, ptr %pix_a.i503, i64 64
  call void @getAffNeighbour(ptr noundef nonnull %currMB, i32 noundef %sub9.i, i32 noundef %741, ptr noundef nonnull %mb_size7.i, ptr noundef nonnull %arrayidx11.4.i) #6
  %742 = add i32 %joff, 5
  %arrayidx11.5.i = getelementptr inbounds i8, ptr %pix_a.i503, i64 80
  call void @getAffNeighbour(ptr noundef nonnull %currMB, i32 noundef %sub9.i, i32 noundef %742, ptr noundef nonnull %mb_size7.i, ptr noundef nonnull %arrayidx11.5.i) #6
  %743 = add i32 %joff, 6
  %arrayidx11.6.i = getelementptr inbounds i8, ptr %pix_a.i503, i64 96
  call void @getAffNeighbour(ptr noundef nonnull %currMB, i32 noundef %sub9.i, i32 noundef %743, ptr noundef nonnull %mb_size7.i, ptr noundef nonnull %arrayidx11.6.i) #6
  %744 = add i32 %joff, 7
  %arrayidx11.7.i = getelementptr inbounds i8, ptr %pix_a.i503, i64 112
  call void @getAffNeighbour(ptr noundef nonnull %currMB, i32 noundef %sub9.i, i32 noundef %744, ptr noundef nonnull %mb_size7.i, ptr noundef nonnull %arrayidx11.7.i) #6
  %sub12.i = add nsw i32 %joff, -1
  call void @getAffNeighbour(ptr noundef nonnull %currMB, i32 noundef %ioff, i32 noundef %sub12.i, ptr noundef nonnull %mb_size7.i, ptr noundef nonnull %pix_b.i504) #6
  %add13.i = add nsw i32 %ioff, 8
  call void @getAffNeighbour(ptr noundef nonnull %currMB, i32 noundef %add13.i, i32 noundef %sub12.i, ptr noundef nonnull %mb_size7.i, ptr noundef nonnull %pix_c.i505) #6
  call void @getAffNeighbour(ptr noundef nonnull %currMB, i32 noundef %sub9.i, i32 noundef %sub12.i, ptr noundef nonnull %mb_size7.i, ptr noundef nonnull %pix_d.i506) #6
  %745 = load i32, ptr %pix_c.i505, align 4
  %tobool17.not.i = icmp ne i32 %745, 0
  %cmp18.i = icmp ne i32 %ioff, 8
  %cmp20.i = icmp ne i32 %joff, 8
  %.not.i517 = or i1 %cmp18.i, %cmp20.i
  %narrow.i518 = and i1 %.not.i517, %tobool17.not.i
  %land.ext.i519 = zext i1 %narrow.i518 to i32
  store i32 %land.ext.i519, ptr %pix_c.i505, align 4
  %active_pps.i520 = getelementptr inbounds i8, ptr %733, i64 8
  %746 = load ptr, ptr %active_pps.i520, align 8
  %constrained_intra_pred_flag.i521 = getelementptr inbounds i8, ptr %746, i64 2204
  %747 = load i32, ptr %constrained_intra_pred_flag.i521, align 4
  %tobool23.not.i522 = icmp eq i32 %747, 0
  br i1 %tobool23.not.i522, label %if.else.i671, label %for.cond24.preheader.i

for.cond24.preheader.i:                           ; preds = %cond.end.i513
  %intra_block.i523 = getelementptr inbounds i8, ptr %2, i64 13544
  %748 = load i32, ptr %pix_a.i503, align 16
  %tobool30.not.i = icmp eq i32 %748, 0
  br i1 %tobool30.not.i, label %cond.end37.i, label %cond.true31.i

cond.true31.i:                                    ; preds = %for.cond24.preheader.i
  %749 = load ptr, ptr %intra_block.i523, align 8
  %mb_addr.i524 = getelementptr inbounds i8, ptr %pix_a.i503, i64 4
  %750 = load i32, ptr %mb_addr.i524, align 4
  %idxprom34.i = sext i32 %750 to i64
  %arrayidx35.i = getelementptr inbounds i8, ptr %749, i64 %idxprom34.i
  %751 = load i8, ptr %arrayidx35.i, align 1
  %conv613.i = zext i8 %751 to i32
  br label %cond.end37.i

cond.end37.i:                                     ; preds = %cond.true31.i, %for.cond24.preheader.i
  %cond38.i = phi i32 [ %conv613.i, %cond.true31.i ], [ 0, %for.cond24.preheader.i ]
  %and.i525 = and i32 %cond38.i, 1
  %752 = load i32, ptr %arrayidx11.1.i, align 16
  %tobool30.not.1.i = icmp eq i32 %752, 0
  br i1 %tobool30.not.1.i, label %cond.end37.1.i, label %cond.true31.1.i

cond.true31.1.i:                                  ; preds = %cond.end37.i
  %753 = load ptr, ptr %intra_block.i523, align 8
  %mb_addr.1.i526 = getelementptr inbounds i8, ptr %pix_a.i503, i64 20
  %754 = load i32, ptr %mb_addr.1.i526, align 4
  %idxprom34.1.i = sext i32 %754 to i64
  %arrayidx35.1.i = getelementptr inbounds i8, ptr %753, i64 %idxprom34.1.i
  %755 = load i8, ptr %arrayidx35.1.i, align 1
  %conv.1614.i = zext i8 %755 to i32
  br label %cond.end37.1.i

cond.end37.1.i:                                   ; preds = %cond.true31.1.i, %cond.end37.i
  %cond38.1.i = phi i32 [ %conv.1614.i, %cond.true31.1.i ], [ 0, %cond.end37.i ]
  %and.1.i527 = and i32 %and.i525, %cond38.1.i
  %756 = load i32, ptr %arrayidx11.2.i, align 16
  %tobool30.not.2.i = icmp eq i32 %756, 0
  br i1 %tobool30.not.2.i, label %cond.end37.2.i, label %cond.true31.2.i

cond.true31.2.i:                                  ; preds = %cond.end37.1.i
  %757 = load ptr, ptr %intra_block.i523, align 8
  %mb_addr.2.i528 = getelementptr inbounds i8, ptr %pix_a.i503, i64 36
  %758 = load i32, ptr %mb_addr.2.i528, align 4
  %idxprom34.2.i = sext i32 %758 to i64
  %arrayidx35.2.i = getelementptr inbounds i8, ptr %757, i64 %idxprom34.2.i
  %759 = load i8, ptr %arrayidx35.2.i, align 1
  %conv.2615.i = zext i8 %759 to i32
  br label %cond.end37.2.i

cond.end37.2.i:                                   ; preds = %cond.true31.2.i, %cond.end37.1.i
  %cond38.2.i = phi i32 [ %conv.2615.i, %cond.true31.2.i ], [ 0, %cond.end37.1.i ]
  %and.2.i529 = and i32 %and.1.i527, %cond38.2.i
  %760 = load i32, ptr %arrayidx11.3.i, align 16
  %tobool30.not.3.i = icmp eq i32 %760, 0
  br i1 %tobool30.not.3.i, label %cond.end37.3.i, label %cond.true31.3.i

cond.true31.3.i:                                  ; preds = %cond.end37.2.i
  %761 = load ptr, ptr %intra_block.i523, align 8
  %mb_addr.3.i530 = getelementptr inbounds i8, ptr %pix_a.i503, i64 52
  %762 = load i32, ptr %mb_addr.3.i530, align 4
  %idxprom34.3.i = sext i32 %762 to i64
  %arrayidx35.3.i = getelementptr inbounds i8, ptr %761, i64 %idxprom34.3.i
  %763 = load i8, ptr %arrayidx35.3.i, align 1
  %conv.3616.i = zext i8 %763 to i32
  br label %cond.end37.3.i

cond.end37.3.i:                                   ; preds = %cond.true31.3.i, %cond.end37.2.i
  %cond38.3.i = phi i32 [ %conv.3616.i, %cond.true31.3.i ], [ 0, %cond.end37.2.i ]
  %and.3.i531 = and i32 %and.2.i529, %cond38.3.i
  %764 = load i32, ptr %arrayidx11.4.i, align 16
  %tobool30.not.4.i = icmp eq i32 %764, 0
  br i1 %tobool30.not.4.i, label %cond.end37.4.i, label %cond.true31.4.i

cond.true31.4.i:                                  ; preds = %cond.end37.3.i
  %765 = load ptr, ptr %intra_block.i523, align 8
  %mb_addr.4.i532 = getelementptr inbounds i8, ptr %pix_a.i503, i64 68
  %766 = load i32, ptr %mb_addr.4.i532, align 4
  %idxprom34.4.i = sext i32 %766 to i64
  %arrayidx35.4.i = getelementptr inbounds i8, ptr %765, i64 %idxprom34.4.i
  %767 = load i8, ptr %arrayidx35.4.i, align 1
  %conv.4617.i = zext i8 %767 to i32
  br label %cond.end37.4.i

cond.end37.4.i:                                   ; preds = %cond.true31.4.i, %cond.end37.3.i
  %cond38.4.i = phi i32 [ %conv.4617.i, %cond.true31.4.i ], [ 0, %cond.end37.3.i ]
  %and.4.i533 = and i32 %and.3.i531, %cond38.4.i
  %768 = load i32, ptr %arrayidx11.5.i, align 16
  %tobool30.not.5.i = icmp eq i32 %768, 0
  br i1 %tobool30.not.5.i, label %cond.end37.5.i, label %cond.true31.5.i

cond.true31.5.i:                                  ; preds = %cond.end37.4.i
  %769 = load ptr, ptr %intra_block.i523, align 8
  %mb_addr.5.i534 = getelementptr inbounds i8, ptr %pix_a.i503, i64 84
  %770 = load i32, ptr %mb_addr.5.i534, align 4
  %idxprom34.5.i = sext i32 %770 to i64
  %arrayidx35.5.i = getelementptr inbounds i8, ptr %769, i64 %idxprom34.5.i
  %771 = load i8, ptr %arrayidx35.5.i, align 1
  %conv.5618.i = zext i8 %771 to i32
  br label %cond.end37.5.i

cond.end37.5.i:                                   ; preds = %cond.true31.5.i, %cond.end37.4.i
  %cond38.5.i = phi i32 [ %conv.5618.i, %cond.true31.5.i ], [ 0, %cond.end37.4.i ]
  %and.5.i535 = and i32 %and.4.i533, %cond38.5.i
  %772 = load i32, ptr %arrayidx11.6.i, align 16
  %tobool30.not.6.i = icmp eq i32 %772, 0
  br i1 %tobool30.not.6.i, label %cond.end37.6.i, label %cond.true31.6.i

cond.true31.6.i:                                  ; preds = %cond.end37.5.i
  %773 = load ptr, ptr %intra_block.i523, align 8
  %mb_addr.6.i536 = getelementptr inbounds i8, ptr %pix_a.i503, i64 100
  %774 = load i32, ptr %mb_addr.6.i536, align 4
  %idxprom34.6.i = sext i32 %774 to i64
  %arrayidx35.6.i = getelementptr inbounds i8, ptr %773, i64 %idxprom34.6.i
  %775 = load i8, ptr %arrayidx35.6.i, align 1
  %conv.6619.i = zext i8 %775 to i32
  br label %cond.end37.6.i

cond.end37.6.i:                                   ; preds = %cond.true31.6.i, %cond.end37.5.i
  %cond38.6.i = phi i32 [ %conv.6619.i, %cond.true31.6.i ], [ 0, %cond.end37.5.i ]
  %and.6.i537 = and i32 %and.5.i535, %cond38.6.i
  %776 = load i32, ptr %arrayidx11.7.i, align 16
  %tobool30.not.7.i = icmp eq i32 %776, 0
  br i1 %tobool30.not.7.i, label %cond.end37.7.i, label %cond.true31.7.i

cond.true31.7.i:                                  ; preds = %cond.end37.6.i
  %777 = load ptr, ptr %intra_block.i523, align 8
  %mb_addr.7.i538 = getelementptr inbounds i8, ptr %pix_a.i503, i64 116
  %778 = load i32, ptr %mb_addr.7.i538, align 4
  %idxprom34.7.i = sext i32 %778 to i64
  %arrayidx35.7.i = getelementptr inbounds i8, ptr %777, i64 %idxprom34.7.i
  %779 = load i8, ptr %arrayidx35.7.i, align 1
  %conv.7.i5391997 = zext i8 %779 to i32
  br label %cond.end37.7.i

cond.end37.7.i:                                   ; preds = %cond.true31.7.i, %cond.end37.6.i
  %cond38.7.i = phi i32 [ %conv.7.i5391997, %cond.true31.7.i ], [ 0, %cond.end37.6.i ]
  %and.7.i540 = and i32 %and.6.i537, %cond38.7.i
  %780 = load i32, ptr %pix_b.i504, align 4
  %tobool43.not.i = icmp eq i32 %780, 0
  br i1 %tobool43.not.i, label %cond.end51.i, label %cond.true44.i

cond.true44.i:                                    ; preds = %cond.end37.7.i
  %781 = load ptr, ptr %intra_block.i523, align 8
  %mb_addr46.i = getelementptr inbounds i8, ptr %pix_b.i504, i64 4
  %782 = load i32, ptr %mb_addr46.i, align 4
  %idxprom47.i = sext i32 %782 to i64
  %arrayidx48.i = getelementptr inbounds i8, ptr %781, i64 %idxprom47.i
  %783 = load i8, ptr %arrayidx48.i, align 1
  %conv49.i = sext i8 %783 to i32
  br label %cond.end51.i

cond.end51.i:                                     ; preds = %cond.true44.i, %cond.end37.7.i
  %cond52.i = phi i32 [ %conv49.i, %cond.true44.i ], [ 0, %cond.end37.7.i ]
  br i1 %narrow.i518, label %cond.true55.i, label %cond.end62.i

cond.true55.i:                                    ; preds = %cond.end51.i
  %784 = load ptr, ptr %intra_block.i523, align 8
  %mb_addr57.i = getelementptr inbounds i8, ptr %pix_c.i505, i64 4
  %785 = load i32, ptr %mb_addr57.i, align 4
  %idxprom58.i = sext i32 %785 to i64
  %arrayidx59.i = getelementptr inbounds i8, ptr %784, i64 %idxprom58.i
  %786 = load i8, ptr %arrayidx59.i, align 1
  %conv60.i = sext i8 %786 to i32
  br label %cond.end62.i

cond.end62.i:                                     ; preds = %cond.true55.i, %cond.end51.i
  %cond63.i = phi i32 [ %conv60.i, %cond.true55.i ], [ 0, %cond.end51.i ]
  %787 = load i32, ptr %pix_d.i506, align 4
  %tobool65.not.i = icmp eq i32 %787, 0
  br i1 %tobool65.not.i, label %if.end.i541, label %cond.true66.i

cond.true66.i:                                    ; preds = %cond.end62.i
  %788 = load ptr, ptr %intra_block.i523, align 8
  %mb_addr68.i = getelementptr inbounds i8, ptr %pix_d.i506, i64 4
  %789 = load i32, ptr %mb_addr68.i, align 4
  %idxprom69.i = sext i32 %789 to i64
  %arrayidx70.i = getelementptr inbounds i8, ptr %788, i64 %idxprom69.i
  %790 = load i8, ptr %arrayidx70.i, align 1
  %conv71.i = sext i8 %790 to i32
  br label %if.end.i541

if.else.i671:                                     ; preds = %cond.end.i513
  %791 = load i32, ptr %pix_a.i503, align 16
  %792 = load i32, ptr %pix_b.i504, align 4
  %793 = load i32, ptr %pix_d.i506, align 4
  br label %if.end.i541

if.end.i541:                                      ; preds = %if.else.i671, %cond.true66.i, %cond.end62.i
  %block_available_up.0.i542 = phi i32 [ %792, %if.else.i671 ], [ %cond52.i, %cond.end62.i ], [ %cond52.i, %cond.true66.i ]
  %block_available_left.1.i543 = phi i32 [ %791, %if.else.i671 ], [ %and.7.i540, %cond.end62.i ], [ %and.7.i540, %cond.true66.i ]
  %block_available_up_left.0.i544 = phi i32 [ %793, %if.else.i671 ], [ 0, %cond.end62.i ], [ %conv71.i, %cond.true66.i ]
  %block_available_up_right.0.i545 = phi i32 [ %land.ext.i519, %if.else.i671 ], [ %cond63.i, %cond.end62.i ], [ %cond63.i, %cond.true66.i ]
  %tobool80.not.i = icmp eq i32 %block_available_up.0.i542, 0
  br i1 %tobool80.not.i, label %if.then81.i, label %if.then84.i

if.then81.i:                                      ; preds = %if.end.i541
  %current_mb_nr.i659 = getelementptr inbounds i8, ptr %2, i64 108
  %794 = load i32, ptr %current_mb_nr.i659, align 4
  %call.i660 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %794)
  %dc_pred_value_comp.i661 = getelementptr inbounds i8, ptr %733, i64 849060
  %arrayidx107.i662 = getelementptr inbounds [3 x i32], ptr %dc_pred_value_comp.i661, i64 0, i64 %idxprom5.i
  %795 = load i32, ptr %arrayidx107.i662, align 4
  %conv108.i = trunc i32 %795 to i16
  %arrayidx116.i670 = getelementptr inbounds i8, ptr %PredPel.i502, i64 2
  %796 = insertelement <8 x i16> poison, i16 %conv108.i, i64 0
  %797 = shufflevector <8 x i16> %796, <8 x i16> poison, <8 x i32> zeroinitializer
  store <8 x i16> %797, ptr %arrayidx116.i670, align 2
  br label %if.end117.i

if.then84.i:                                      ; preds = %if.end.i541
  %pos_y.i546 = getelementptr inbounds i8, ptr %pix_b.i504, i64 14
  %798 = load i16, ptr %pos_y.i546, align 2
  %idxprom85.i = sext i16 %798 to i64
  %arrayidx86.i547 = getelementptr inbounds ptr, ptr %cond.i515, i64 %idxprom85.i
  %799 = load ptr, ptr %arrayidx86.i547, align 8
  %pos_x.i548 = getelementptr inbounds i8, ptr %pix_b.i504, i64 12
  %800 = load i16, ptr %pos_x.i548, align 4
  %idxprom87.i549 = sext i16 %800 to i64
  %arrayidx88.i550 = getelementptr inbounds i16, ptr %799, i64 %idxprom87.i549
  %801 = load i16, ptr %arrayidx88.i550, align 2
  %arrayidx90.i551 = getelementptr inbounds i8, ptr %PredPel.i502, i64 2
  store i16 %801, ptr %arrayidx90.i551, align 2
  %arrayidx91.i552 = getelementptr inbounds i8, ptr %arrayidx88.i550, i64 2
  %802 = load i16, ptr %arrayidx91.i552, align 2
  %arrayidx92.i553 = getelementptr inbounds i8, ptr %PredPel.i502, i64 4
  store i16 %802, ptr %arrayidx92.i553, align 4
  %arrayidx93.i554 = getelementptr inbounds i8, ptr %arrayidx88.i550, i64 4
  %803 = load i16, ptr %arrayidx93.i554, align 2
  %arrayidx94.i555 = getelementptr inbounds i8, ptr %PredPel.i502, i64 6
  store i16 %803, ptr %arrayidx94.i555, align 2
  %arrayidx95.i556 = getelementptr inbounds i8, ptr %arrayidx88.i550, i64 6
  %804 = load i16, ptr %arrayidx95.i556, align 2
  %arrayidx96.i557 = getelementptr inbounds i8, ptr %PredPel.i502, i64 8
  store i16 %804, ptr %arrayidx96.i557, align 8
  %arrayidx97.i558 = getelementptr inbounds i8, ptr %arrayidx88.i550, i64 8
  %805 = load i16, ptr %arrayidx97.i558, align 2
  %arrayidx98.i559 = getelementptr inbounds i8, ptr %PredPel.i502, i64 10
  store i16 %805, ptr %arrayidx98.i559, align 2
  %arrayidx99.i560 = getelementptr inbounds i8, ptr %arrayidx88.i550, i64 10
  %806 = load i16, ptr %arrayidx99.i560, align 2
  %arrayidx100.i561 = getelementptr inbounds i8, ptr %PredPel.i502, i64 12
  store i16 %806, ptr %arrayidx100.i561, align 4
  %arrayidx101.i562 = getelementptr inbounds i8, ptr %arrayidx88.i550, i64 12
  %807 = load i16, ptr %arrayidx101.i562, align 2
  %arrayidx102.i563 = getelementptr inbounds i8, ptr %PredPel.i502, i64 14
  store i16 %807, ptr %arrayidx102.i563, align 2
  %arrayidx103.i564 = getelementptr inbounds i8, ptr %arrayidx88.i550, i64 14
  %808 = load i16, ptr %arrayidx103.i564, align 2
  %arrayidx104.i565 = getelementptr inbounds i8, ptr %PredPel.i502, i64 16
  store i16 %808, ptr %arrayidx104.i565, align 16
  br label %if.end117.i

if.end117.i:                                      ; preds = %if.then84.i, %if.then81.i
  %809 = phi i16 [ %conv108.i, %if.then81.i ], [ %808, %if.then84.i ]
  %tobool118.not.i = icmp eq i32 %block_available_up_right.0.i545, 0
  br i1 %tobool118.not.i, label %if.else142.i, label %if.then119.i

if.then119.i:                                     ; preds = %if.end117.i
  %pos_y120.i = getelementptr inbounds i8, ptr %pix_c.i505, i64 14
  %810 = load i16, ptr %pos_y120.i, align 2
  %idxprom121.i566 = sext i16 %810 to i64
  %arrayidx122.i567 = getelementptr inbounds ptr, ptr %cond.i515, i64 %idxprom121.i566
  %811 = load ptr, ptr %arrayidx122.i567, align 8
  %pos_x123.i = getelementptr inbounds i8, ptr %pix_c.i505, i64 12
  %812 = load i16, ptr %pos_x123.i, align 4
  %idxprom124.i = sext i16 %812 to i64
  %arrayidx125.i568 = getelementptr inbounds i16, ptr %811, i64 %idxprom124.i
  %813 = load i16, ptr %arrayidx125.i568, align 2
  %arrayidx127.i569 = getelementptr inbounds i8, ptr %PredPel.i502, i64 18
  store i16 %813, ptr %arrayidx127.i569, align 2
  %arrayidx128.i570 = getelementptr inbounds i8, ptr %arrayidx125.i568, i64 2
  %814 = load i16, ptr %arrayidx128.i570, align 2
  %arrayidx129.i571 = getelementptr inbounds i8, ptr %PredPel.i502, i64 20
  store i16 %814, ptr %arrayidx129.i571, align 4
  %arrayidx130.i572 = getelementptr inbounds i8, ptr %arrayidx125.i568, i64 4
  %815 = load i16, ptr %arrayidx130.i572, align 2
  %arrayidx131.i573 = getelementptr inbounds i8, ptr %PredPel.i502, i64 22
  store i16 %815, ptr %arrayidx131.i573, align 2
  %arrayidx132.i574 = getelementptr inbounds i8, ptr %arrayidx125.i568, i64 6
  %816 = load i16, ptr %arrayidx132.i574, align 2
  %arrayidx133.i575 = getelementptr inbounds i8, ptr %PredPel.i502, i64 24
  store i16 %816, ptr %arrayidx133.i575, align 8
  %arrayidx134.i576 = getelementptr inbounds i8, ptr %arrayidx125.i568, i64 8
  %817 = load i16, ptr %arrayidx134.i576, align 2
  %arrayidx135.i577 = getelementptr inbounds i8, ptr %PredPel.i502, i64 26
  store i16 %817, ptr %arrayidx135.i577, align 2
  %arrayidx136.i578 = getelementptr inbounds i8, ptr %arrayidx125.i568, i64 10
  %818 = load i16, ptr %arrayidx136.i578, align 2
  %arrayidx137.i579 = getelementptr inbounds i8, ptr %PredPel.i502, i64 28
  store i16 %818, ptr %arrayidx137.i579, align 4
  %arrayidx138.i580 = getelementptr inbounds i8, ptr %arrayidx125.i568, i64 12
  %819 = load i16, ptr %arrayidx138.i580, align 2
  %arrayidx139.i581 = getelementptr inbounds i8, ptr %PredPel.i502, i64 30
  store i16 %819, ptr %arrayidx139.i581, align 2
  %arrayidx140.i582 = getelementptr inbounds i8, ptr %arrayidx125.i568, i64 14
  %820 = load i16, ptr %arrayidx140.i582, align 2
  %arrayidx141.i583 = getelementptr inbounds i8, ptr %PredPel.i502, i64 32
  store i16 %820, ptr %arrayidx141.i583, align 16
  br label %if.end152.i

if.else142.i:                                     ; preds = %if.end117.i
  %arrayidx151.i658 = getelementptr inbounds i8, ptr %PredPel.i502, i64 18
  %821 = insertelement <8 x i16> poison, i16 %809, i64 0
  %822 = shufflevector <8 x i16> %821, <8 x i16> poison, <8 x i32> zeroinitializer
  store <8 x i16> %822, ptr %arrayidx151.i658, align 2
  br label %if.end152.i

if.end152.i:                                      ; preds = %if.else142.i, %if.then119.i
  %tobool153.not.i = icmp eq i32 %block_available_left.1.i543, 0
  br i1 %tobool153.not.i, label %if.else227.i, label %if.then154.i

if.then154.i:                                     ; preds = %if.end152.i
  %pos_y156.i = getelementptr inbounds i8, ptr %pix_a.i503, i64 14
  %823 = load i16, ptr %pos_y156.i, align 2
  %idxprom157.i584 = sext i16 %823 to i64
  %arrayidx158.i585 = getelementptr inbounds ptr, ptr %cond.i515, i64 %idxprom157.i584
  %824 = load ptr, ptr %arrayidx158.i585, align 8
  %pos_x160.i = getelementptr inbounds i8, ptr %pix_a.i503, i64 12
  %825 = load i16, ptr %pos_x160.i, align 4
  %idxprom161.i = sext i16 %825 to i64
  %arrayidx162.i = getelementptr inbounds i16, ptr %824, i64 %idxprom161.i
  %826 = load i16, ptr %arrayidx162.i, align 2
  %arrayidx163.i586 = getelementptr inbounds i8, ptr %PredPel.i502, i64 34
  store i16 %826, ptr %arrayidx163.i586, align 2
  %pos_y165.i = getelementptr inbounds i8, ptr %pix_a.i503, i64 30
  %827 = load i16, ptr %pos_y165.i, align 2
  %idxprom166.i587 = sext i16 %827 to i64
  %arrayidx167.i588 = getelementptr inbounds ptr, ptr %cond.i515, i64 %idxprom166.i587
  %828 = load ptr, ptr %arrayidx167.i588, align 8
  %pos_x169.i = getelementptr inbounds i8, ptr %pix_a.i503, i64 28
  %829 = load i16, ptr %pos_x169.i, align 4
  %idxprom170.i = sext i16 %829 to i64
  %arrayidx171.i = getelementptr inbounds i16, ptr %828, i64 %idxprom170.i
  %830 = load i16, ptr %arrayidx171.i, align 2
  %arrayidx172.i589 = getelementptr inbounds i8, ptr %PredPel.i502, i64 36
  store i16 %830, ptr %arrayidx172.i589, align 4
  %pos_y174.i = getelementptr inbounds i8, ptr %pix_a.i503, i64 46
  %831 = load i16, ptr %pos_y174.i, align 2
  %idxprom175.i590 = sext i16 %831 to i64
  %arrayidx176.i591 = getelementptr inbounds ptr, ptr %cond.i515, i64 %idxprom175.i590
  %832 = load ptr, ptr %arrayidx176.i591, align 8
  %pos_x178.i = getelementptr inbounds i8, ptr %pix_a.i503, i64 44
  %833 = load i16, ptr %pos_x178.i, align 4
  %idxprom179.i = sext i16 %833 to i64
  %arrayidx180.i = getelementptr inbounds i16, ptr %832, i64 %idxprom179.i
  %834 = load i16, ptr %arrayidx180.i, align 2
  %arrayidx181.i592 = getelementptr inbounds i8, ptr %PredPel.i502, i64 38
  store i16 %834, ptr %arrayidx181.i592, align 2
  %pos_y183.i = getelementptr inbounds i8, ptr %pix_a.i503, i64 62
  %835 = load i16, ptr %pos_y183.i, align 2
  %idxprom184.i593 = sext i16 %835 to i64
  %arrayidx185.i594 = getelementptr inbounds ptr, ptr %cond.i515, i64 %idxprom184.i593
  %836 = load ptr, ptr %arrayidx185.i594, align 8
  %pos_x187.i = getelementptr inbounds i8, ptr %pix_a.i503, i64 60
  %837 = load i16, ptr %pos_x187.i, align 4
  %idxprom188.i = sext i16 %837 to i64
  %arrayidx189.i = getelementptr inbounds i16, ptr %836, i64 %idxprom188.i
  %838 = load i16, ptr %arrayidx189.i, align 2
  %arrayidx190.i595 = getelementptr inbounds i8, ptr %PredPel.i502, i64 40
  store i16 %838, ptr %arrayidx190.i595, align 8
  %pos_y192.i = getelementptr inbounds i8, ptr %pix_a.i503, i64 78
  %839 = load i16, ptr %pos_y192.i, align 2
  %idxprom193.i596 = sext i16 %839 to i64
  %arrayidx194.i597 = getelementptr inbounds ptr, ptr %cond.i515, i64 %idxprom193.i596
  %840 = load ptr, ptr %arrayidx194.i597, align 8
  %pos_x196.i = getelementptr inbounds i8, ptr %pix_a.i503, i64 76
  %841 = load i16, ptr %pos_x196.i, align 4
  %idxprom197.i = sext i16 %841 to i64
  %arrayidx198.i = getelementptr inbounds i16, ptr %840, i64 %idxprom197.i
  %842 = load i16, ptr %arrayidx198.i, align 2
  %arrayidx199.i598 = getelementptr inbounds i8, ptr %PredPel.i502, i64 42
  store i16 %842, ptr %arrayidx199.i598, align 2
  %pos_y201.i = getelementptr inbounds i8, ptr %pix_a.i503, i64 94
  %843 = load i16, ptr %pos_y201.i, align 2
  %idxprom202.i599 = sext i16 %843 to i64
  %arrayidx203.i600 = getelementptr inbounds ptr, ptr %cond.i515, i64 %idxprom202.i599
  %844 = load ptr, ptr %arrayidx203.i600, align 8
  %pos_x205.i = getelementptr inbounds i8, ptr %pix_a.i503, i64 92
  %845 = load i16, ptr %pos_x205.i, align 4
  %idxprom206.i = sext i16 %845 to i64
  %arrayidx207.i = getelementptr inbounds i16, ptr %844, i64 %idxprom206.i
  %846 = load i16, ptr %arrayidx207.i, align 2
  %arrayidx208.i601 = getelementptr inbounds i8, ptr %PredPel.i502, i64 44
  store i16 %846, ptr %arrayidx208.i601, align 4
  %pos_y210.i = getelementptr inbounds i8, ptr %pix_a.i503, i64 110
  %847 = load i16, ptr %pos_y210.i, align 2
  %idxprom211.i602 = sext i16 %847 to i64
  %arrayidx212.i603 = getelementptr inbounds ptr, ptr %cond.i515, i64 %idxprom211.i602
  %848 = load ptr, ptr %arrayidx212.i603, align 8
  %pos_x214.i = getelementptr inbounds i8, ptr %pix_a.i503, i64 108
  %849 = load i16, ptr %pos_x214.i, align 4
  %idxprom215.i = sext i16 %849 to i64
  %arrayidx216.i = getelementptr inbounds i16, ptr %848, i64 %idxprom215.i
  %850 = load i16, ptr %arrayidx216.i, align 2
  %arrayidx217.i604 = getelementptr inbounds i8, ptr %PredPel.i502, i64 46
  store i16 %850, ptr %arrayidx217.i604, align 2
  %pos_y219.i = getelementptr inbounds i8, ptr %pix_a.i503, i64 126
  %851 = load i16, ptr %pos_y219.i, align 2
  %idxprom220.i605 = sext i16 %851 to i64
  %arrayidx221.i606 = getelementptr inbounds ptr, ptr %cond.i515, i64 %idxprom220.i605
  %852 = load ptr, ptr %arrayidx221.i606, align 8
  %pos_x223.i = getelementptr inbounds i8, ptr %pix_a.i503, i64 124
  %853 = load i16, ptr %pos_x223.i, align 4
  %idxprom224.i = sext i16 %853 to i64
  %arrayidx225.i = getelementptr inbounds i16, ptr %852, i64 %idxprom224.i
  %854 = load i16, ptr %arrayidx225.i, align 2
  %arrayidx226.i607 = getelementptr inbounds i8, ptr %PredPel.i502, i64 48
  store i16 %854, ptr %arrayidx226.i607, align 16
  br label %if.end240.i

if.else227.i:                                     ; preds = %if.end152.i
  %dc_pred_value_comp228.i = getelementptr inbounds i8, ptr %733, i64 849060
  %arrayidx230.i642 = getelementptr inbounds [3 x i32], ptr %dc_pred_value_comp228.i, i64 0, i64 %idxprom5.i
  %855 = load i32, ptr %arrayidx230.i642, align 4
  %conv231.i = trunc i32 %855 to i16
  %arrayidx239.i650 = getelementptr inbounds i8, ptr %PredPel.i502, i64 34
  %856 = insertelement <8 x i16> poison, i16 %conv231.i, i64 0
  %857 = shufflevector <8 x i16> %856, <8 x i16> poison, <8 x i32> zeroinitializer
  store <8 x i16> %857, ptr %arrayidx239.i650, align 2
  br label %if.end240.i

if.end240.i:                                      ; preds = %if.else227.i, %if.then154.i
  %tobool241.not.i = icmp eq i32 %block_available_up_left.0.i544, 0
  br i1 %tobool241.not.i, label %if.else250.i, label %if.then242.i

if.then242.i:                                     ; preds = %if.end240.i
  %pos_y243.i = getelementptr inbounds i8, ptr %pix_d.i506, i64 14
  %858 = load i16, ptr %pos_y243.i, align 2
  %idxprom244.i = sext i16 %858 to i64
  %arrayidx245.i = getelementptr inbounds ptr, ptr %cond.i515, i64 %idxprom244.i
  %859 = load ptr, ptr %arrayidx245.i, align 8
  %pos_x246.i = getelementptr inbounds i8, ptr %pix_d.i506, i64 12
  %860 = load i16, ptr %pos_x246.i, align 4
  %idxprom247.i = sext i16 %860 to i64
  %arrayidx248.i = getelementptr inbounds i16, ptr %859, i64 %idxprom247.i
  %861 = load i16, ptr %arrayidx248.i, align 2
  br label %intra8x8_diag_down_left_pred_mbaff.exit

if.else250.i:                                     ; preds = %if.end240.i
  %dc_pred_value_comp251.i = getelementptr inbounds i8, ptr %733, i64 849060
  %arrayidx253.i = getelementptr inbounds [3 x i32], ptr %dc_pred_value_comp251.i, i64 0, i64 %idxprom5.i
  %862 = load i32, ptr %arrayidx253.i, align 4
  %conv254.i = trunc i32 %862 to i16
  br label %intra8x8_diag_down_left_pred_mbaff.exit

intra8x8_diag_down_left_pred_mbaff.exit:          ; preds = %if.then242.i, %if.else250.i
  %storemerge.i608 = phi i16 [ %861, %if.then242.i ], [ %conv254.i, %if.else250.i ]
  store i16 %storemerge.i608, ptr %PredPel.i502, align 16
  call fastcc void @LowPassForIntra8x8Pred(ptr noundef nonnull %PredPel.i502, i32 noundef %block_available_up_left.0.i544, i32 noundef %block_available_up.0.i542, i32 noundef %block_available_left.1.i543)
  %863 = sext i32 %joff to i64
  %arrayidx258.i = getelementptr inbounds i8, ptr %PredPel.i502, i64 2
  %864 = load i16, ptr %arrayidx258.i, align 2
  %conv259.i = zext i16 %864 to i32
  %arrayidx260.i = getelementptr inbounds i8, ptr %PredPel.i502, i64 6
  %865 = load i16, ptr %arrayidx260.i, align 2
  %conv261.i610 = zext i16 %865 to i32
  %arrayidx263.i = getelementptr inbounds i8, ptr %PredPel.i502, i64 4
  %866 = load i16, ptr %arrayidx263.i, align 4
  %conv264.i = zext i16 %866 to i32
  %mul.i611 = shl nuw nsw i32 %conv264.i, 1
  %add262.i = add nuw nsw i32 %conv261.i610, 2
  %add265.i = add nuw nsw i32 %add262.i, %conv259.i
  %add266.i = add nuw nsw i32 %add265.i, %mul.i611
  %shr.i612 = lshr i32 %add266.i, 2
  %conv267.i = trunc nuw i32 %shr.i612 to i16
  %arrayidx270.i = getelementptr inbounds i8, ptr %PredPel.i502, i64 8
  %867 = load i16, ptr %arrayidx270.i, align 8
  %conv271.i = zext i16 %867 to i32
  %mul275.i = shl nuw nsw i32 %conv261.i610, 1
  %add272.i = add nuw nsw i32 %conv271.i, 2
  %add276.i613 = add nuw nsw i32 %mul275.i, %conv264.i
  %add277.i = add nuw nsw i32 %add276.i613, %add272.i
  %shr278.i = lshr i32 %add277.i, 2
  %conv279.i = trunc nuw i32 %shr278.i to i16
  %arrayidx283.i614 = getelementptr inbounds i8, ptr %PredPel.i502, i64 10
  %868 = load i16, ptr %arrayidx283.i614, align 2
  %conv284.i615 = zext i16 %868 to i32
  %mul288.i = shl nuw nsw i32 %conv271.i, 1
  %add289.i = add nuw nsw i32 %add262.i, %conv284.i615
  %add290.i = add nuw nsw i32 %add289.i, %mul288.i
  %shr291.i = lshr i32 %add290.i, 2
  %conv292.i = trunc nuw i32 %shr291.i to i16
  %arrayidx296.i = getelementptr inbounds i8, ptr %PredPel.i502, i64 12
  %869 = load i16, ptr %arrayidx296.i, align 4
  %conv297.i = zext i16 %869 to i32
  %mul301.i = shl nuw nsw i32 %conv284.i615, 1
  %add302.i = add nuw nsw i32 %add272.i, %conv297.i
  %add303.i616 = add nuw nsw i32 %add302.i, %mul301.i
  %shr304.i = lshr i32 %add303.i616, 2
  %conv305.i = trunc nuw i32 %shr304.i to i16
  %arrayidx309.i = getelementptr inbounds i8, ptr %PredPel.i502, i64 14
  %870 = load i16, ptr %arrayidx309.i, align 2
  %conv310.i = zext i16 %870 to i32
  %mul314.i = shl nuw nsw i32 %conv297.i, 1
  %add311.i = add nuw nsw i32 %conv310.i, 2
  %add315.i = add nuw nsw i32 %add311.i, %conv284.i615
  %add316.i = add nuw nsw i32 %add315.i, %mul314.i
  %shr317.i = lshr i32 %add316.i, 2
  %conv318.i = trunc nuw i32 %shr317.i to i16
  %arrayidx322.i = getelementptr inbounds i8, ptr %PredPel.i502, i64 16
  %871 = load i16, ptr %arrayidx322.i, align 16
  %conv323.i = zext i16 %871 to i32
  %mul327.i = shl nuw nsw i32 %conv310.i, 1
  %add324.i = add nuw nsw i32 %conv323.i, 2
  %add328.i = add nuw nsw i32 %add324.i, %conv297.i
  %add329.i617 = add nuw nsw i32 %add328.i, %mul327.i
  %shr330.i = lshr i32 %add329.i617, 2
  %conv331.i618 = trunc nuw i32 %shr330.i to i16
  %arrayidx335.i = getelementptr inbounds i8, ptr %PredPel.i502, i64 18
  %872 = load i16, ptr %arrayidx335.i, align 2
  %conv336.i = zext i16 %872 to i32
  %mul340.i = shl nuw nsw i32 %conv323.i, 1
  %add341.i = add nuw nsw i32 %add311.i, %conv336.i
  %add342.i = add nuw nsw i32 %add341.i, %mul340.i
  %shr343.i = lshr i32 %add342.i, 2
  %conv344.i = trunc nuw i32 %shr343.i to i16
  %arrayidx348.i619 = getelementptr inbounds i8, ptr %PredPel.i502, i64 20
  %873 = load i16, ptr %arrayidx348.i619, align 4
  %conv349.i620 = zext i16 %873 to i32
  %mul353.i = shl nuw nsw i32 %conv336.i, 1
  %add354.i = add nuw nsw i32 %add324.i, %conv349.i620
  %add355.i = add nuw nsw i32 %add354.i, %mul353.i
  %shr356.i = lshr i32 %add355.i, 2
  %conv357.i = trunc nuw i32 %shr356.i to i16
  %arrayidx361.i = getelementptr inbounds i8, ptr %PredPel.i502, i64 22
  %874 = load i16, ptr %arrayidx361.i, align 2
  %conv362.i = zext i16 %874 to i32
  %mul366.i = shl nuw nsw i32 %conv349.i620, 1
  %add363.i622 = add nuw nsw i32 %conv336.i, 2
  %add367.i = add nuw nsw i32 %add363.i622, %conv362.i
  %add368.i = add nuw nsw i32 %add367.i, %mul366.i
  %shr369.i = lshr i32 %add368.i, 2
  %conv370.i = trunc nuw i32 %shr369.i to i16
  %arrayidx374.i = getelementptr inbounds i8, ptr %PredPel.i502, i64 24
  %875 = load i16, ptr %arrayidx374.i, align 8
  %conv375.i = zext i16 %875 to i32
  %mul379.i = shl nuw nsw i32 %conv362.i, 1
  %add376.i = add nuw nsw i32 %conv349.i620, 2
  %add380.i = add nuw nsw i32 %add376.i, %conv375.i
  %add381.i = add nuw nsw i32 %add380.i, %mul379.i
  %shr382.i = lshr i32 %add381.i, 2
  %conv383.i = trunc nuw i32 %shr382.i to i16
  %arrayidx387.i = getelementptr inbounds i8, ptr %PredPel.i502, i64 26
  %876 = load i16, ptr %arrayidx387.i, align 2
  %conv388.i = zext i16 %876 to i32
  %mul392.i = shl nuw nsw i32 %conv375.i, 1
  %add389.i = add nuw nsw i32 %conv362.i, 2
  %add393.i = add nuw nsw i32 %add389.i, %conv388.i
  %add394.i = add nuw nsw i32 %add393.i, %mul392.i
  %shr395.i = lshr i32 %add394.i, 2
  %conv396.i = trunc nuw i32 %shr395.i to i16
  %arrayidx400.i = getelementptr inbounds i8, ptr %PredPel.i502, i64 28
  %877 = load i16, ptr %arrayidx400.i, align 4
  %conv401.i = zext i16 %877 to i32
  %mul405.i = shl nuw nsw i32 %conv388.i, 1
  %add402.i = add nuw nsw i32 %conv375.i, 2
  %add406.i = add nuw nsw i32 %add402.i, %conv401.i
  %add407.i = add nuw nsw i32 %add406.i, %mul405.i
  %shr408.i = lshr i32 %add407.i, 2
  %conv409.i = trunc nuw i32 %shr408.i to i16
  %arrayidx413.i = getelementptr inbounds i8, ptr %PredPel.i502, i64 30
  %878 = load i16, ptr %arrayidx413.i, align 2
  %conv414.i = zext i16 %878 to i32
  %mul418.i = shl nuw nsw i32 %conv401.i, 1
  %add415.i = add nuw nsw i32 %conv388.i, 2
  %add419.i = add nuw nsw i32 %add415.i, %conv414.i
  %add420.i = add nuw nsw i32 %add419.i, %mul418.i
  %shr421.i = lshr i32 %add420.i, 2
  %conv422.i = trunc nuw i32 %shr421.i to i16
  %arrayidx426.i = getelementptr inbounds i8, ptr %PredPel.i502, i64 32
  %879 = load i16, ptr %arrayidx426.i, align 16
  %conv427.i = zext i16 %879 to i32
  %mul431.i = shl nuw nsw i32 %conv414.i, 1
  %add428.i = add nuw nsw i32 %conv401.i, 2
  %add432.i = add nuw nsw i32 %add428.i, %conv427.i
  %add433.i = add nuw nsw i32 %add432.i, %mul431.i
  %shr434.i = lshr i32 %add433.i, 2
  %conv435.i = trunc nuw i32 %shr434.i to i16
  %mul441.i = mul nuw nsw i32 %conv427.i, 3
  %add442.i = add nuw nsw i32 %conv414.i, 2
  %add443.i = add nuw nsw i32 %add442.i, %mul441.i
  %shr444.i = lshr i32 %add443.i, 2
  %conv445.i = trunc nuw i32 %shr444.i to i16
  %arrayidx449.i = getelementptr inbounds ptr, ptr %737, i64 %863
  %880 = load ptr, ptr %arrayidx449.i, align 8
  %idxprom450.i = sext i32 %ioff to i64
  %arrayidx451.i = getelementptr inbounds i16, ptr %880, i64 %idxprom450.i
  store i16 %conv267.i, ptr %arrayidx451.i, align 2
  %PredArray.sroa.4.0.arrayidx451.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx451.i, i64 2
  store i16 %conv279.i, ptr %PredArray.sroa.4.0.arrayidx451.sroa_idx.i, align 2
  %PredArray.sroa.6.0.arrayidx451.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx451.i, i64 4
  store i16 %conv292.i, ptr %PredArray.sroa.6.0.arrayidx451.sroa_idx.i, align 2
  %PredArray.sroa.8.0.arrayidx451.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx451.i, i64 6
  store i16 %conv305.i, ptr %PredArray.sroa.8.0.arrayidx451.sroa_idx.i, align 2
  %PredArray.sroa.10.0.arrayidx451.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx451.i, i64 8
  store i16 %conv318.i, ptr %PredArray.sroa.10.0.arrayidx451.sroa_idx.i, align 2
  %PredArray.sroa.12.0.arrayidx451.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx451.i, i64 10
  store i16 %conv331.i618, ptr %PredArray.sroa.12.0.arrayidx451.sroa_idx.i, align 2
  %PredArray.sroa.14.0.arrayidx451.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx451.i, i64 12
  store i16 %conv344.i, ptr %PredArray.sroa.14.0.arrayidx451.sroa_idx.i, align 2
  %PredArray.sroa.16.0.arrayidx451.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx451.i, i64 14
  store i16 %conv357.i, ptr %PredArray.sroa.16.0.arrayidx451.sroa_idx.i, align 2
  %arrayidx455.i623 = getelementptr i8, ptr %arrayidx449.i, i64 8
  %881 = load ptr, ptr %arrayidx455.i623, align 8
  %arrayidx457.i624 = getelementptr inbounds i16, ptr %881, i64 %idxprom450.i
  store i16 %conv279.i, ptr %arrayidx457.i624, align 2
  %PredArray.sroa.6.2.arrayidx457.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx457.i624, i64 2
  store i16 %conv292.i, ptr %PredArray.sroa.6.2.arrayidx457.sroa_idx.i, align 2
  %PredArray.sroa.8.2.arrayidx457.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx457.i624, i64 4
  store i16 %conv305.i, ptr %PredArray.sroa.8.2.arrayidx457.sroa_idx.i, align 2
  %PredArray.sroa.10.2.arrayidx457.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx457.i624, i64 6
  store i16 %conv318.i, ptr %PredArray.sroa.10.2.arrayidx457.sroa_idx.i, align 2
  %PredArray.sroa.12.2.arrayidx457.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx457.i624, i64 8
  store i16 %conv331.i618, ptr %PredArray.sroa.12.2.arrayidx457.sroa_idx.i, align 2
  %PredArray.sroa.14.2.arrayidx457.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx457.i624, i64 10
  store i16 %conv344.i, ptr %PredArray.sroa.14.2.arrayidx457.sroa_idx.i, align 2
  %PredArray.sroa.16.2.arrayidx457.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx457.i624, i64 12
  store i16 %conv357.i, ptr %PredArray.sroa.16.2.arrayidx457.sroa_idx.i, align 2
  %PredArray.sroa.18.2.arrayidx457.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx457.i624, i64 14
  store i16 %conv370.i, ptr %PredArray.sroa.18.2.arrayidx457.sroa_idx.i, align 2
  %arrayidx461.i625 = getelementptr i8, ptr %arrayidx449.i, i64 16
  %882 = load ptr, ptr %arrayidx461.i625, align 8
  %arrayidx463.i626 = getelementptr inbounds i16, ptr %882, i64 %idxprom450.i
  store i16 %conv292.i, ptr %arrayidx463.i626, align 2
  %PredArray.sroa.8.4.arrayidx463.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx463.i626, i64 2
  store i16 %conv305.i, ptr %PredArray.sroa.8.4.arrayidx463.sroa_idx.i, align 2
  %PredArray.sroa.10.4.arrayidx463.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx463.i626, i64 4
  store i16 %conv318.i, ptr %PredArray.sroa.10.4.arrayidx463.sroa_idx.i, align 2
  %PredArray.sroa.12.4.arrayidx463.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx463.i626, i64 6
  store i16 %conv331.i618, ptr %PredArray.sroa.12.4.arrayidx463.sroa_idx.i, align 2
  %PredArray.sroa.14.4.arrayidx463.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx463.i626, i64 8
  store i16 %conv344.i, ptr %PredArray.sroa.14.4.arrayidx463.sroa_idx.i, align 2
  %PredArray.sroa.16.4.arrayidx463.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx463.i626, i64 10
  store i16 %conv357.i, ptr %PredArray.sroa.16.4.arrayidx463.sroa_idx.i, align 2
  %PredArray.sroa.18.4.arrayidx463.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx463.i626, i64 12
  store i16 %conv370.i, ptr %PredArray.sroa.18.4.arrayidx463.sroa_idx.i, align 2
  %PredArray.sroa.19.4.arrayidx463.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx463.i626, i64 14
  store i16 %conv383.i, ptr %PredArray.sroa.19.4.arrayidx463.sroa_idx.i, align 2
  %arrayidx467.i627 = getelementptr i8, ptr %arrayidx449.i, i64 24
  %883 = load ptr, ptr %arrayidx467.i627, align 8
  %arrayidx469.i628 = getelementptr inbounds i16, ptr %883, i64 %idxprom450.i
  store i16 %conv305.i, ptr %arrayidx469.i628, align 2
  %PredArray.sroa.10.6.arrayidx469.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx469.i628, i64 2
  store i16 %conv318.i, ptr %PredArray.sroa.10.6.arrayidx469.sroa_idx.i, align 2
  %PredArray.sroa.12.6.arrayidx469.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx469.i628, i64 4
  store i16 %conv331.i618, ptr %PredArray.sroa.12.6.arrayidx469.sroa_idx.i, align 2
  %PredArray.sroa.14.6.arrayidx469.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx469.i628, i64 6
  store i16 %conv344.i, ptr %PredArray.sroa.14.6.arrayidx469.sroa_idx.i, align 2
  %PredArray.sroa.16.6.arrayidx469.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx469.i628, i64 8
  store i16 %conv357.i, ptr %PredArray.sroa.16.6.arrayidx469.sroa_idx.i, align 2
  %PredArray.sroa.18.6.arrayidx469.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx469.i628, i64 10
  store i16 %conv370.i, ptr %PredArray.sroa.18.6.arrayidx469.sroa_idx.i, align 2
  %PredArray.sroa.19.6.arrayidx469.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx469.i628, i64 12
  store i16 %conv383.i, ptr %PredArray.sroa.19.6.arrayidx469.sroa_idx.i, align 2
  %PredArray.sroa.20.6.arrayidx469.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx469.i628, i64 14
  store i16 %conv396.i, ptr %PredArray.sroa.20.6.arrayidx469.sroa_idx.i, align 2
  %arrayidx473.i629 = getelementptr i8, ptr %arrayidx449.i, i64 32
  %884 = load ptr, ptr %arrayidx473.i629, align 8
  %arrayidx475.i630 = getelementptr inbounds i16, ptr %884, i64 %idxprom450.i
  store i16 %conv318.i, ptr %arrayidx475.i630, align 2
  %PredArray.sroa.12.8.arrayidx475.sroa_idx.i631 = getelementptr inbounds i8, ptr %arrayidx475.i630, i64 2
  store i16 %conv331.i618, ptr %PredArray.sroa.12.8.arrayidx475.sroa_idx.i631, align 2
  %PredArray.sroa.14.8.arrayidx475.sroa_idx.i632 = getelementptr inbounds i8, ptr %arrayidx475.i630, i64 4
  store i16 %conv344.i, ptr %PredArray.sroa.14.8.arrayidx475.sroa_idx.i632, align 2
  %PredArray.sroa.16.8.arrayidx475.sroa_idx.i633 = getelementptr inbounds i8, ptr %arrayidx475.i630, i64 6
  store i16 %conv357.i, ptr %PredArray.sroa.16.8.arrayidx475.sroa_idx.i633, align 2
  %PredArray.sroa.18.8.arrayidx475.sroa_idx.i634 = getelementptr inbounds i8, ptr %arrayidx475.i630, i64 8
  store i16 %conv370.i, ptr %PredArray.sroa.18.8.arrayidx475.sroa_idx.i634, align 2
  %PredArray.sroa.19.8.arrayidx475.sroa_idx.i635 = getelementptr inbounds i8, ptr %arrayidx475.i630, i64 10
  store i16 %conv383.i, ptr %PredArray.sroa.19.8.arrayidx475.sroa_idx.i635, align 2
  %PredArray.sroa.20.8.arrayidx475.sroa_idx.i636 = getelementptr inbounds i8, ptr %arrayidx475.i630, i64 12
  store i16 %conv396.i, ptr %PredArray.sroa.20.8.arrayidx475.sroa_idx.i636, align 2
  %PredArray.sroa.21.8.arrayidx475.sroa_idx.i637 = getelementptr inbounds i8, ptr %arrayidx475.i630, i64 14
  store i16 %conv409.i, ptr %PredArray.sroa.21.8.arrayidx475.sroa_idx.i637, align 2
  %arrayidx479.i638 = getelementptr i8, ptr %arrayidx449.i, i64 40
  %885 = load ptr, ptr %arrayidx479.i638, align 8
  %arrayidx481.i639 = getelementptr inbounds i16, ptr %885, i64 %idxprom450.i
  store i16 %conv331.i618, ptr %arrayidx481.i639, align 2
  %PredArray.sroa.14.10.arrayidx481.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx481.i639, i64 2
  store i16 %conv344.i, ptr %PredArray.sroa.14.10.arrayidx481.sroa_idx.i, align 2
  %PredArray.sroa.16.10.arrayidx481.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx481.i639, i64 4
  store i16 %conv357.i, ptr %PredArray.sroa.16.10.arrayidx481.sroa_idx.i, align 2
  %PredArray.sroa.18.10.arrayidx481.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx481.i639, i64 6
  store i16 %conv370.i, ptr %PredArray.sroa.18.10.arrayidx481.sroa_idx.i, align 2
  %PredArray.sroa.19.10.arrayidx481.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx481.i639, i64 8
  store i16 %conv383.i, ptr %PredArray.sroa.19.10.arrayidx481.sroa_idx.i, align 2
  %PredArray.sroa.20.10.arrayidx481.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx481.i639, i64 10
  store i16 %conv396.i, ptr %PredArray.sroa.20.10.arrayidx481.sroa_idx.i, align 2
  %PredArray.sroa.21.10.arrayidx481.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx481.i639, i64 12
  store i16 %conv409.i, ptr %PredArray.sroa.21.10.arrayidx481.sroa_idx.i, align 2
  %PredArray.sroa.22.10.arrayidx481.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx481.i639, i64 14
  store i16 %conv422.i, ptr %PredArray.sroa.22.10.arrayidx481.sroa_idx.i, align 2
  %arrayidx485.i640 = getelementptr i8, ptr %arrayidx449.i, i64 48
  %886 = load ptr, ptr %arrayidx485.i640, align 8
  %arrayidx487.i641 = getelementptr inbounds i16, ptr %886, i64 %idxprom450.i
  store i16 %conv344.i, ptr %arrayidx487.i641, align 2
  %PredArray.sroa.16.12.arrayidx487.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx487.i641, i64 2
  store i16 %conv357.i, ptr %PredArray.sroa.16.12.arrayidx487.sroa_idx.i, align 2
  %PredArray.sroa.18.12.arrayidx487.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx487.i641, i64 4
  store i16 %conv370.i, ptr %PredArray.sroa.18.12.arrayidx487.sroa_idx.i, align 2
  %PredArray.sroa.19.12.arrayidx487.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx487.i641, i64 6
  store i16 %conv383.i, ptr %PredArray.sroa.19.12.arrayidx487.sroa_idx.i, align 2
  %PredArray.sroa.20.12.arrayidx487.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx487.i641, i64 8
  store i16 %conv396.i, ptr %PredArray.sroa.20.12.arrayidx487.sroa_idx.i, align 2
  %PredArray.sroa.21.12.arrayidx487.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx487.i641, i64 10
  store i16 %conv409.i, ptr %PredArray.sroa.21.12.arrayidx487.sroa_idx.i, align 2
  %PredArray.sroa.22.12.arrayidx487.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx487.i641, i64 12
  store i16 %conv422.i, ptr %PredArray.sroa.22.12.arrayidx487.sroa_idx.i, align 2
  %PredArray.sroa.23.12.arrayidx487.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx487.i641, i64 14
  store i16 %conv435.i, ptr %PredArray.sroa.23.12.arrayidx487.sroa_idx.i, align 2
  %arrayidx490.i = getelementptr i8, ptr %arrayidx449.i, i64 56
  %887 = load ptr, ptr %arrayidx490.i, align 8
  %arrayidx492.i = getelementptr inbounds i16, ptr %887, i64 %idxprom450.i
  store i16 %conv357.i, ptr %arrayidx492.i, align 2
  %PredArray.sroa.18.14.arrayidx492.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx492.i, i64 2
  store i16 %conv370.i, ptr %PredArray.sroa.18.14.arrayidx492.sroa_idx.i, align 2
  %PredArray.sroa.19.14.arrayidx492.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx492.i, i64 4
  store i16 %conv383.i, ptr %PredArray.sroa.19.14.arrayidx492.sroa_idx.i, align 2
  %PredArray.sroa.20.14.arrayidx492.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx492.i, i64 6
  store i16 %conv396.i, ptr %PredArray.sroa.20.14.arrayidx492.sroa_idx.i, align 2
  %PredArray.sroa.21.14.arrayidx492.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx492.i, i64 8
  store i16 %conv409.i, ptr %PredArray.sroa.21.14.arrayidx492.sroa_idx.i, align 2
  %PredArray.sroa.22.14.arrayidx492.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx492.i, i64 10
  store i16 %conv422.i, ptr %PredArray.sroa.22.14.arrayidx492.sroa_idx.i, align 2
  %PredArray.sroa.23.14.arrayidx492.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx492.i, i64 12
  store i16 %conv435.i, ptr %PredArray.sroa.23.14.arrayidx492.sroa_idx.i, align 2
  %PredArray.sroa.24.14.arrayidx492.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx492.i, i64 14
  store i16 %conv445.i, ptr %PredArray.sroa.24.14.arrayidx492.sroa_idx.i, align 2
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pix_d.i506) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pix_c.i505) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pix_b.i504) #6
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %pix_a.i503) #6
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %PredPel.i502) #6
  br label %cleanup

sw.bb15:                                          ; preds = %entry
  %p_Vid1.i678 = getelementptr inbounds i8, ptr %currMB, i64 8
  %888 = load ptr, ptr %p_Vid1.i678, align 8
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %PredPel.i673) #6
  %tobool.not.i679 = icmp eq i32 %pl, 0
  %dec_picture2.i680 = getelementptr inbounds i8, ptr %2, i64 13520
  %889 = load ptr, ptr %dec_picture2.i680, align 8
  br i1 %tobool.not.i679, label %cond.false.i1019, label %cond.true.i681

cond.true.i681:                                   ; preds = %sw.bb15
  %imgUV.i682 = getelementptr inbounds i8, ptr %889, i64 136
  %890 = load ptr, ptr %imgUV.i682, align 8
  %sub.i683 = add i32 %pl, -1
  %idxprom.i684 = zext i32 %sub.i683 to i64
  %arrayidx.i685 = getelementptr inbounds ptr, ptr %890, i64 %idxprom.i684
  br label %cond.end.i686

cond.false.i1019:                                 ; preds = %sw.bb15
  %imgY3.i1020 = getelementptr inbounds i8, ptr %889, i64 128
  br label %cond.end.i686

cond.end.i686:                                    ; preds = %cond.false.i1019, %cond.true.i681
  %cond.in.i687 = phi ptr [ %arrayidx.i685, %cond.true.i681 ], [ %imgY3.i1020, %cond.false.i1019 ]
  %cond.i688 = load ptr, ptr %cond.in.i687, align 8
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %pix_a.i674) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pix_b.i675) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pix_c.i676) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pix_d.i677) #6
  %mb_pred.i689 = getelementptr inbounds i8, ptr %2, i64 1248
  %891 = load ptr, ptr %mb_pred.i689, align 8
  %idxprom4.i690 = zext i32 %pl to i64
  %arrayidx5.i691 = getelementptr inbounds ptr, ptr %891, i64 %idxprom4.i690
  %892 = load ptr, ptr %arrayidx5.i691, align 8
  %mb_size6.i692 = getelementptr inbounds i8, ptr %888, i64 849124
  %sub8.i693 = add nsw i32 %ioff, -1
  call void @getAffNeighbour(ptr noundef nonnull %currMB, i32 noundef %sub8.i693, i32 noundef %joff, ptr noundef nonnull %mb_size6.i692, ptr noundef nonnull %pix_a.i674) #6
  %893 = add i32 %joff, 1
  %arrayidx10.1.i694 = getelementptr inbounds i8, ptr %pix_a.i674, i64 16
  call void @getAffNeighbour(ptr noundef nonnull %currMB, i32 noundef %sub8.i693, i32 noundef %893, ptr noundef nonnull %mb_size6.i692, ptr noundef nonnull %arrayidx10.1.i694) #6
  %894 = add i32 %joff, 2
  %arrayidx10.2.i695 = getelementptr inbounds i8, ptr %pix_a.i674, i64 32
  call void @getAffNeighbour(ptr noundef nonnull %currMB, i32 noundef %sub8.i693, i32 noundef %894, ptr noundef nonnull %mb_size6.i692, ptr noundef nonnull %arrayidx10.2.i695) #6
  %895 = add i32 %joff, 3
  %arrayidx10.3.i696 = getelementptr inbounds i8, ptr %pix_a.i674, i64 48
  call void @getAffNeighbour(ptr noundef nonnull %currMB, i32 noundef %sub8.i693, i32 noundef %895, ptr noundef nonnull %mb_size6.i692, ptr noundef nonnull %arrayidx10.3.i696) #6
  %896 = add i32 %joff, 4
  %arrayidx10.4.i697 = getelementptr inbounds i8, ptr %pix_a.i674, i64 64
  call void @getAffNeighbour(ptr noundef nonnull %currMB, i32 noundef %sub8.i693, i32 noundef %896, ptr noundef nonnull %mb_size6.i692, ptr noundef nonnull %arrayidx10.4.i697) #6
  %897 = add i32 %joff, 5
  %arrayidx10.5.i698 = getelementptr inbounds i8, ptr %pix_a.i674, i64 80
  call void @getAffNeighbour(ptr noundef nonnull %currMB, i32 noundef %sub8.i693, i32 noundef %897, ptr noundef nonnull %mb_size6.i692, ptr noundef nonnull %arrayidx10.5.i698) #6
  %898 = add i32 %joff, 6
  %arrayidx10.6.i699 = getelementptr inbounds i8, ptr %pix_a.i674, i64 96
  call void @getAffNeighbour(ptr noundef nonnull %currMB, i32 noundef %sub8.i693, i32 noundef %898, ptr noundef nonnull %mb_size6.i692, ptr noundef nonnull %arrayidx10.6.i699) #6
  %899 = add i32 %joff, 7
  %arrayidx10.7.i700 = getelementptr inbounds i8, ptr %pix_a.i674, i64 112
  call void @getAffNeighbour(ptr noundef nonnull %currMB, i32 noundef %sub8.i693, i32 noundef %899, ptr noundef nonnull %mb_size6.i692, ptr noundef nonnull %arrayidx10.7.i700) #6
  %sub11.i701 = add nsw i32 %joff, -1
  call void @getAffNeighbour(ptr noundef nonnull %currMB, i32 noundef %ioff, i32 noundef %sub11.i701, ptr noundef nonnull %mb_size6.i692, ptr noundef nonnull %pix_b.i675) #6
  %add12.i702 = add nsw i32 %ioff, 8
  call void @getAffNeighbour(ptr noundef nonnull %currMB, i32 noundef %add12.i702, i32 noundef %sub11.i701, ptr noundef nonnull %mb_size6.i692, ptr noundef nonnull %pix_c.i676) #6
  call void @getAffNeighbour(ptr noundef nonnull %currMB, i32 noundef %sub8.i693, i32 noundef %sub11.i701, ptr noundef nonnull %mb_size6.i692, ptr noundef nonnull %pix_d.i677) #6
  %900 = load i32, ptr %pix_c.i676, align 4
  %tobool16.not.i703 = icmp ne i32 %900, 0
  %cmp17.i704 = icmp ne i32 %ioff, 8
  %cmp19.i705 = icmp ne i32 %joff, 8
  %.not.i706 = or i1 %cmp17.i704, %cmp19.i705
  %narrow.i707 = and i1 %.not.i706, %tobool16.not.i703
  %land.ext.i708 = zext i1 %narrow.i707 to i32
  store i32 %land.ext.i708, ptr %pix_c.i676, align 4
  %active_pps.i709 = getelementptr inbounds i8, ptr %888, i64 8
  %901 = load ptr, ptr %active_pps.i709, align 8
  %constrained_intra_pred_flag.i710 = getelementptr inbounds i8, ptr %901, i64 2204
  %902 = load i32, ptr %constrained_intra_pred_flag.i710, align 4
  %tobool22.not.i711 = icmp eq i32 %902, 0
  br i1 %tobool22.not.i711, label %if.else.i1018, label %for.cond23.preheader.i712

for.cond23.preheader.i712:                        ; preds = %cond.end.i686
  %intra_block.i713 = getelementptr inbounds i8, ptr %2, i64 13544
  %903 = load i32, ptr %pix_a.i674, align 16
  %tobool29.not.i714 = icmp eq i32 %903, 0
  br i1 %tobool29.not.i714, label %cond.end36.i719, label %cond.true30.i715

cond.true30.i715:                                 ; preds = %for.cond23.preheader.i712
  %904 = load ptr, ptr %intra_block.i713, align 8
  %mb_addr.i716 = getelementptr inbounds i8, ptr %pix_a.i674, i64 4
  %905 = load i32, ptr %mb_addr.i716, align 4
  %idxprom33.i717 = sext i32 %905 to i64
  %arrayidx34.i718 = getelementptr inbounds i8, ptr %904, i64 %idxprom33.i717
  %906 = load i8, ptr %arrayidx34.i718, align 1
  %conv703.i = zext i8 %906 to i32
  br label %cond.end36.i719

cond.end36.i719:                                  ; preds = %cond.true30.i715, %for.cond23.preheader.i712
  %cond37.i720 = phi i32 [ %conv703.i, %cond.true30.i715 ], [ 0, %for.cond23.preheader.i712 ]
  %and.i721 = and i32 %cond37.i720, 1
  %907 = load i32, ptr %arrayidx10.1.i694, align 16
  %tobool29.not.1.i722 = icmp eq i32 %907, 0
  br i1 %tobool29.not.1.i722, label %cond.end36.1.i727, label %cond.true30.1.i723

cond.true30.1.i723:                               ; preds = %cond.end36.i719
  %908 = load ptr, ptr %intra_block.i713, align 8
  %mb_addr.1.i724 = getelementptr inbounds i8, ptr %pix_a.i674, i64 20
  %909 = load i32, ptr %mb_addr.1.i724, align 4
  %idxprom33.1.i725 = sext i32 %909 to i64
  %arrayidx34.1.i726 = getelementptr inbounds i8, ptr %908, i64 %idxprom33.1.i725
  %910 = load i8, ptr %arrayidx34.1.i726, align 1
  %conv.1704.i = zext i8 %910 to i32
  br label %cond.end36.1.i727

cond.end36.1.i727:                                ; preds = %cond.true30.1.i723, %cond.end36.i719
  %cond37.1.i728 = phi i32 [ %conv.1704.i, %cond.true30.1.i723 ], [ 0, %cond.end36.i719 ]
  %and.1.i729 = and i32 %and.i721, %cond37.1.i728
  %911 = load i32, ptr %arrayidx10.2.i695, align 16
  %tobool29.not.2.i730 = icmp eq i32 %911, 0
  br i1 %tobool29.not.2.i730, label %cond.end36.2.i735, label %cond.true30.2.i731

cond.true30.2.i731:                               ; preds = %cond.end36.1.i727
  %912 = load ptr, ptr %intra_block.i713, align 8
  %mb_addr.2.i732 = getelementptr inbounds i8, ptr %pix_a.i674, i64 36
  %913 = load i32, ptr %mb_addr.2.i732, align 4
  %idxprom33.2.i733 = sext i32 %913 to i64
  %arrayidx34.2.i734 = getelementptr inbounds i8, ptr %912, i64 %idxprom33.2.i733
  %914 = load i8, ptr %arrayidx34.2.i734, align 1
  %conv.2705.i = zext i8 %914 to i32
  br label %cond.end36.2.i735

cond.end36.2.i735:                                ; preds = %cond.true30.2.i731, %cond.end36.1.i727
  %cond37.2.i736 = phi i32 [ %conv.2705.i, %cond.true30.2.i731 ], [ 0, %cond.end36.1.i727 ]
  %and.2.i737 = and i32 %and.1.i729, %cond37.2.i736
  %915 = load i32, ptr %arrayidx10.3.i696, align 16
  %tobool29.not.3.i738 = icmp eq i32 %915, 0
  br i1 %tobool29.not.3.i738, label %cond.end36.3.i743, label %cond.true30.3.i739

cond.true30.3.i739:                               ; preds = %cond.end36.2.i735
  %916 = load ptr, ptr %intra_block.i713, align 8
  %mb_addr.3.i740 = getelementptr inbounds i8, ptr %pix_a.i674, i64 52
  %917 = load i32, ptr %mb_addr.3.i740, align 4
  %idxprom33.3.i741 = sext i32 %917 to i64
  %arrayidx34.3.i742 = getelementptr inbounds i8, ptr %916, i64 %idxprom33.3.i741
  %918 = load i8, ptr %arrayidx34.3.i742, align 1
  %conv.3706.i = zext i8 %918 to i32
  br label %cond.end36.3.i743

cond.end36.3.i743:                                ; preds = %cond.true30.3.i739, %cond.end36.2.i735
  %cond37.3.i744 = phi i32 [ %conv.3706.i, %cond.true30.3.i739 ], [ 0, %cond.end36.2.i735 ]
  %and.3.i745 = and i32 %and.2.i737, %cond37.3.i744
  %919 = load i32, ptr %arrayidx10.4.i697, align 16
  %tobool29.not.4.i746 = icmp eq i32 %919, 0
  br i1 %tobool29.not.4.i746, label %cond.end36.4.i751, label %cond.true30.4.i747

cond.true30.4.i747:                               ; preds = %cond.end36.3.i743
  %920 = load ptr, ptr %intra_block.i713, align 8
  %mb_addr.4.i748 = getelementptr inbounds i8, ptr %pix_a.i674, i64 68
  %921 = load i32, ptr %mb_addr.4.i748, align 4
  %idxprom33.4.i749 = sext i32 %921 to i64
  %arrayidx34.4.i750 = getelementptr inbounds i8, ptr %920, i64 %idxprom33.4.i749
  %922 = load i8, ptr %arrayidx34.4.i750, align 1
  %conv.4707.i = zext i8 %922 to i32
  br label %cond.end36.4.i751

cond.end36.4.i751:                                ; preds = %cond.true30.4.i747, %cond.end36.3.i743
  %cond37.4.i752 = phi i32 [ %conv.4707.i, %cond.true30.4.i747 ], [ 0, %cond.end36.3.i743 ]
  %and.4.i753 = and i32 %and.3.i745, %cond37.4.i752
  %923 = load i32, ptr %arrayidx10.5.i698, align 16
  %tobool29.not.5.i754 = icmp eq i32 %923, 0
  br i1 %tobool29.not.5.i754, label %cond.end36.5.i759, label %cond.true30.5.i755

cond.true30.5.i755:                               ; preds = %cond.end36.4.i751
  %924 = load ptr, ptr %intra_block.i713, align 8
  %mb_addr.5.i756 = getelementptr inbounds i8, ptr %pix_a.i674, i64 84
  %925 = load i32, ptr %mb_addr.5.i756, align 4
  %idxprom33.5.i757 = sext i32 %925 to i64
  %arrayidx34.5.i758 = getelementptr inbounds i8, ptr %924, i64 %idxprom33.5.i757
  %926 = load i8, ptr %arrayidx34.5.i758, align 1
  %conv.5708.i = zext i8 %926 to i32
  br label %cond.end36.5.i759

cond.end36.5.i759:                                ; preds = %cond.true30.5.i755, %cond.end36.4.i751
  %cond37.5.i760 = phi i32 [ %conv.5708.i, %cond.true30.5.i755 ], [ 0, %cond.end36.4.i751 ]
  %and.5.i761 = and i32 %and.4.i753, %cond37.5.i760
  %927 = load i32, ptr %arrayidx10.6.i699, align 16
  %tobool29.not.6.i762 = icmp eq i32 %927, 0
  br i1 %tobool29.not.6.i762, label %cond.end36.6.i767, label %cond.true30.6.i763

cond.true30.6.i763:                               ; preds = %cond.end36.5.i759
  %928 = load ptr, ptr %intra_block.i713, align 8
  %mb_addr.6.i764 = getelementptr inbounds i8, ptr %pix_a.i674, i64 100
  %929 = load i32, ptr %mb_addr.6.i764, align 4
  %idxprom33.6.i765 = sext i32 %929 to i64
  %arrayidx34.6.i766 = getelementptr inbounds i8, ptr %928, i64 %idxprom33.6.i765
  %930 = load i8, ptr %arrayidx34.6.i766, align 1
  %conv.6709.i = zext i8 %930 to i32
  br label %cond.end36.6.i767

cond.end36.6.i767:                                ; preds = %cond.true30.6.i763, %cond.end36.5.i759
  %cond37.6.i768 = phi i32 [ %conv.6709.i, %cond.true30.6.i763 ], [ 0, %cond.end36.5.i759 ]
  %and.6.i769 = and i32 %and.5.i761, %cond37.6.i768
  %931 = load i32, ptr %arrayidx10.7.i700, align 16
  %tobool29.not.7.i770 = icmp eq i32 %931, 0
  br i1 %tobool29.not.7.i770, label %cond.end36.7.i776, label %cond.true30.7.i771

cond.true30.7.i771:                               ; preds = %cond.end36.6.i767
  %932 = load ptr, ptr %intra_block.i713, align 8
  %mb_addr.7.i772 = getelementptr inbounds i8, ptr %pix_a.i674, i64 116
  %933 = load i32, ptr %mb_addr.7.i772, align 4
  %idxprom33.7.i773 = sext i32 %933 to i64
  %arrayidx34.7.i774 = getelementptr inbounds i8, ptr %932, i64 %idxprom33.7.i773
  %934 = load i8, ptr %arrayidx34.7.i774, align 1
  %conv.7.i7751998 = zext i8 %934 to i32
  br label %cond.end36.7.i776

cond.end36.7.i776:                                ; preds = %cond.true30.7.i771, %cond.end36.6.i767
  %cond37.7.i777 = phi i32 [ %conv.7.i7751998, %cond.true30.7.i771 ], [ 0, %cond.end36.6.i767 ]
  %and.7.i778 = and i32 %and.6.i769, %cond37.7.i777
  %935 = load i32, ptr %pix_b.i675, align 4
  %tobool42.not.i779 = icmp eq i32 %935, 0
  br i1 %tobool42.not.i779, label %cond.end50.i785, label %cond.true43.i780

cond.true43.i780:                                 ; preds = %cond.end36.7.i776
  %936 = load ptr, ptr %intra_block.i713, align 8
  %mb_addr45.i781 = getelementptr inbounds i8, ptr %pix_b.i675, i64 4
  %937 = load i32, ptr %mb_addr45.i781, align 4
  %idxprom46.i782 = sext i32 %937 to i64
  %arrayidx47.i783 = getelementptr inbounds i8, ptr %936, i64 %idxprom46.i782
  %938 = load i8, ptr %arrayidx47.i783, align 1
  %conv48.i784 = sext i8 %938 to i32
  br label %cond.end50.i785

cond.end50.i785:                                  ; preds = %cond.true43.i780, %cond.end36.7.i776
  %cond51.i786 = phi i32 [ %conv48.i784, %cond.true43.i780 ], [ 0, %cond.end36.7.i776 ]
  br i1 %narrow.i707, label %cond.true54.i1013, label %cond.end61.i787

cond.true54.i1013:                                ; preds = %cond.end50.i785
  %939 = load ptr, ptr %intra_block.i713, align 8
  %mb_addr56.i1014 = getelementptr inbounds i8, ptr %pix_c.i676, i64 4
  %940 = load i32, ptr %mb_addr56.i1014, align 4
  %idxprom57.i1015 = sext i32 %940 to i64
  %arrayidx58.i1016 = getelementptr inbounds i8, ptr %939, i64 %idxprom57.i1015
  %941 = load i8, ptr %arrayidx58.i1016, align 1
  %conv59.i1017 = sext i8 %941 to i32
  br label %cond.end61.i787

cond.end61.i787:                                  ; preds = %cond.true54.i1013, %cond.end50.i785
  %cond62.i788 = phi i32 [ %conv59.i1017, %cond.true54.i1013 ], [ 0, %cond.end50.i785 ]
  %942 = load i32, ptr %pix_d.i677, align 4
  %tobool64.not.i789 = icmp eq i32 %942, 0
  br i1 %tobool64.not.i789, label %if.end.thread.i1012, label %cond.true65.i790

if.end.thread.i1012:                              ; preds = %cond.end61.i787
  %tobool79658.not.i = icmp eq i32 %cond51.i786, 0
  %tobool80659.i = icmp ne i32 %and.7.i778, 0
  %current_mb_nr695.i = getelementptr inbounds i8, ptr %2, i64 108
  %943 = load i32, ptr %current_mb_nr695.i, align 4
  %call696.i = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef %943)
  br i1 %tobool79658.not.i, label %if.else107.i807, label %if.then86.i990

cond.true65.i790:                                 ; preds = %cond.end61.i787
  %944 = load ptr, ptr %intra_block.i713, align 8
  %mb_addr67.i791 = getelementptr inbounds i8, ptr %pix_d.i677, i64 4
  %945 = load i32, ptr %mb_addr67.i791, align 4
  %idxprom68.i792 = sext i32 %945 to i64
  %arrayidx69.i793 = getelementptr inbounds i8, ptr %944, i64 %idxprom68.i792
  %946 = load i8, ptr %arrayidx69.i793, align 1
  %conv70.i794 = sext i8 %946 to i32
  br label %if.end.i795

if.else.i1018:                                    ; preds = %cond.end.i686
  %947 = load i32, ptr %pix_a.i674, align 16
  %948 = load i32, ptr %pix_b.i675, align 4
  %949 = load i32, ptr %pix_d.i677, align 4
  br label %if.end.i795

if.end.i795:                                      ; preds = %if.else.i1018, %cond.true65.i790
  %block_available_up.0.i796 = phi i32 [ %948, %if.else.i1018 ], [ %cond51.i786, %cond.true65.i790 ]
  %block_available_left.1.i797 = phi i32 [ %947, %if.else.i1018 ], [ %and.7.i778, %cond.true65.i790 ]
  %block_available_up_left.0.i798 = phi i32 [ %949, %if.else.i1018 ], [ %conv70.i794, %cond.true65.i790 ]
  %block_available_up_right.0.i799 = phi i32 [ %land.ext.i708, %if.else.i1018 ], [ %cond62.i788, %cond.true65.i790 ]
  %tobool79.i800 = icmp ne i32 %block_available_up.0.i796, 0
  %tobool80.i801 = icmp ne i32 %block_available_left.1.i797, 0
  %or.cond.i802 = select i1 %tobool79.i800, i1 %tobool80.i801, i1 false
  %tobool82.i803 = icmp ne i32 %block_available_up_left.0.i798, 0
  %or.cond559.i = select i1 %or.cond.i802, i1 %tobool82.i803, i1 false
  br i1 %or.cond559.i, label %if.then86.i990, label %if.then83.i804

if.then83.i804:                                   ; preds = %if.end.i795
  %current_mb_nr.i805 = getelementptr inbounds i8, ptr %2, i64 108
  %950 = load i32, ptr %current_mb_nr.i805, align 4
  %call.i806 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef %950)
  br i1 %tobool79.i800, label %if.then86.i990, label %if.else107.i807

if.then86.i990:                                   ; preds = %if.then83.i804, %if.end.i795, %if.end.thread.i1012
  %block_available_up.0664694.i = phi i32 [ %block_available_up.0.i796, %if.then83.i804 ], [ %cond51.i786, %if.end.thread.i1012 ], [ %block_available_up.0.i796, %if.end.i795 ]
  %block_available_left.1666691.i = phi i32 [ %block_available_left.1.i797, %if.then83.i804 ], [ %and.7.i778, %if.end.thread.i1012 ], [ %block_available_left.1.i797, %if.end.i795 ]
  %block_available_up_left.0668688.i = phi i32 [ %block_available_up_left.0.i798, %if.then83.i804 ], [ 0, %if.end.thread.i1012 ], [ %block_available_up_left.0.i798, %if.end.i795 ]
  %block_available_up_right.0670685.i = phi i32 [ %block_available_up_right.0.i799, %if.then83.i804 ], [ %cond62.i788, %if.end.thread.i1012 ], [ %block_available_up_right.0.i799, %if.end.i795 ]
  %tobool80674682.i = phi i1 [ %tobool80.i801, %if.then83.i804 ], [ %tobool80659.i, %if.end.thread.i1012 ], [ true, %if.end.i795 ]
  %tobool82676679.i = phi i1 [ %tobool82.i803, %if.then83.i804 ], [ false, %if.end.thread.i1012 ], [ true, %if.end.i795 ]
  %pos_y.i991 = getelementptr inbounds i8, ptr %pix_b.i675, i64 14
  %951 = load i16, ptr %pos_y.i991, align 2
  %idxprom87.i992 = sext i16 %951 to i64
  %arrayidx88.i993 = getelementptr inbounds ptr, ptr %cond.i688, i64 %idxprom87.i992
  %952 = load ptr, ptr %arrayidx88.i993, align 8
  %pos_x.i994 = getelementptr inbounds i8, ptr %pix_b.i675, i64 12
  %953 = load i16, ptr %pos_x.i994, align 4
  %idxprom89.i995 = sext i16 %953 to i64
  %arrayidx90.i996 = getelementptr inbounds i16, ptr %952, i64 %idxprom89.i995
  %954 = load i16, ptr %arrayidx90.i996, align 2
  %arrayidx92.i997 = getelementptr inbounds i8, ptr %PredPel.i673, i64 2
  store i16 %954, ptr %arrayidx92.i997, align 2
  %arrayidx93.i998 = getelementptr inbounds i8, ptr %arrayidx90.i996, i64 2
  %955 = load i16, ptr %arrayidx93.i998, align 2
  %arrayidx94.i999 = getelementptr inbounds i8, ptr %PredPel.i673, i64 4
  store i16 %955, ptr %arrayidx94.i999, align 4
  %arrayidx95.i1000 = getelementptr inbounds i8, ptr %arrayidx90.i996, i64 4
  %956 = load i16, ptr %arrayidx95.i1000, align 2
  %arrayidx96.i1001 = getelementptr inbounds i8, ptr %PredPel.i673, i64 6
  store i16 %956, ptr %arrayidx96.i1001, align 2
  %arrayidx97.i1002 = getelementptr inbounds i8, ptr %arrayidx90.i996, i64 6
  %957 = load i16, ptr %arrayidx97.i1002, align 2
  %arrayidx98.i1003 = getelementptr inbounds i8, ptr %PredPel.i673, i64 8
  store i16 %957, ptr %arrayidx98.i1003, align 8
  %arrayidx99.i1004 = getelementptr inbounds i8, ptr %arrayidx90.i996, i64 8
  %958 = load i16, ptr %arrayidx99.i1004, align 2
  %arrayidx100.i1005 = getelementptr inbounds i8, ptr %PredPel.i673, i64 10
  store i16 %958, ptr %arrayidx100.i1005, align 2
  %arrayidx101.i1006 = getelementptr inbounds i8, ptr %arrayidx90.i996, i64 10
  %959 = load i16, ptr %arrayidx101.i1006, align 2
  %arrayidx102.i1007 = getelementptr inbounds i8, ptr %PredPel.i673, i64 12
  store i16 %959, ptr %arrayidx102.i1007, align 4
  %arrayidx103.i1008 = getelementptr inbounds i8, ptr %arrayidx90.i996, i64 12
  %960 = load i16, ptr %arrayidx103.i1008, align 2
  %arrayidx104.i1009 = getelementptr inbounds i8, ptr %PredPel.i673, i64 14
  store i16 %960, ptr %arrayidx104.i1009, align 2
  %arrayidx105.i1010 = getelementptr inbounds i8, ptr %arrayidx90.i996, i64 14
  %961 = load i16, ptr %arrayidx105.i1010, align 2
  %arrayidx106.i1011 = getelementptr inbounds i8, ptr %PredPel.i673, i64 16
  store i16 %961, ptr %arrayidx106.i1011, align 16
  br label %if.end119.i819

if.else107.i807:                                  ; preds = %if.then83.i804, %if.end.thread.i1012
  %block_available_left.1666690.i = phi i32 [ %block_available_left.1.i797, %if.then83.i804 ], [ %and.7.i778, %if.end.thread.i1012 ]
  %block_available_up_left.0668687.i = phi i32 [ %block_available_up_left.0.i798, %if.then83.i804 ], [ 0, %if.end.thread.i1012 ]
  %block_available_up_right.0670684.i = phi i32 [ %block_available_up_right.0.i799, %if.then83.i804 ], [ %cond62.i788, %if.end.thread.i1012 ]
  %tobool80674681.i = phi i1 [ %tobool80.i801, %if.then83.i804 ], [ %tobool80659.i, %if.end.thread.i1012 ]
  %tobool82676678.i = phi i1 [ %tobool82.i803, %if.then83.i804 ], [ false, %if.end.thread.i1012 ]
  %dc_pred_value_comp.i808 = getelementptr inbounds i8, ptr %888, i64 849060
  %arrayidx109.i809 = getelementptr inbounds [3 x i32], ptr %dc_pred_value_comp.i808, i64 0, i64 %idxprom4.i690
  %962 = load i32, ptr %arrayidx109.i809, align 4
  %conv110.i810 = trunc i32 %962 to i16
  %arrayidx118.i818 = getelementptr inbounds i8, ptr %PredPel.i673, i64 2
  %963 = insertelement <8 x i16> poison, i16 %conv110.i810, i64 0
  %964 = shufflevector <8 x i16> %963, <8 x i16> poison, <8 x i32> zeroinitializer
  store <8 x i16> %964, ptr %arrayidx118.i818, align 2
  br label %if.end119.i819

if.end119.i819:                                   ; preds = %if.else107.i807, %if.then86.i990
  %965 = phi i16 [ %conv110.i810, %if.else107.i807 ], [ %961, %if.then86.i990 ]
  %block_available_up.0664692.i = phi i32 [ 0, %if.else107.i807 ], [ %block_available_up.0664694.i, %if.then86.i990 ]
  %block_available_left.1666689.i = phi i32 [ %block_available_left.1666690.i, %if.else107.i807 ], [ %block_available_left.1666691.i, %if.then86.i990 ]
  %block_available_up_left.0668686.i = phi i32 [ %block_available_up_left.0668687.i, %if.else107.i807 ], [ %block_available_up_left.0668688.i, %if.then86.i990 ]
  %block_available_up_right.0670683.i = phi i32 [ %block_available_up_right.0670684.i, %if.else107.i807 ], [ %block_available_up_right.0670685.i, %if.then86.i990 ]
  %tobool80674680.i = phi i1 [ %tobool80674681.i, %if.else107.i807 ], [ %tobool80674682.i, %if.then86.i990 ]
  %tobool82676677.i = phi i1 [ %tobool82676678.i, %if.else107.i807 ], [ %tobool82676679.i, %if.then86.i990 ]
  %tobool120.not.i820 = icmp eq i32 %block_available_up_right.0670683.i, 0
  br i1 %tobool120.not.i820, label %if.else144.i981, label %if.then121.i821

if.then121.i821:                                  ; preds = %if.end119.i819
  %pos_y122.i822 = getelementptr inbounds i8, ptr %pix_c.i676, i64 14
  %966 = load i16, ptr %pos_y122.i822, align 2
  %idxprom123.i823 = sext i16 %966 to i64
  %arrayidx124.i824 = getelementptr inbounds ptr, ptr %cond.i688, i64 %idxprom123.i823
  %967 = load ptr, ptr %arrayidx124.i824, align 8
  %pos_x125.i825 = getelementptr inbounds i8, ptr %pix_c.i676, i64 12
  %968 = load i16, ptr %pos_x125.i825, align 4
  %idxprom126.i826 = sext i16 %968 to i64
  %arrayidx127.i827 = getelementptr inbounds i16, ptr %967, i64 %idxprom126.i826
  %969 = load i16, ptr %arrayidx127.i827, align 2
  %arrayidx129.i828 = getelementptr inbounds i8, ptr %PredPel.i673, i64 18
  store i16 %969, ptr %arrayidx129.i828, align 2
  %arrayidx130.i829 = getelementptr inbounds i8, ptr %arrayidx127.i827, i64 2
  %970 = load i16, ptr %arrayidx130.i829, align 2
  %arrayidx131.i830 = getelementptr inbounds i8, ptr %PredPel.i673, i64 20
  store i16 %970, ptr %arrayidx131.i830, align 4
  %arrayidx132.i831 = getelementptr inbounds i8, ptr %arrayidx127.i827, i64 4
  %971 = load i16, ptr %arrayidx132.i831, align 2
  %arrayidx133.i832 = getelementptr inbounds i8, ptr %PredPel.i673, i64 22
  store i16 %971, ptr %arrayidx133.i832, align 2
  %arrayidx134.i833 = getelementptr inbounds i8, ptr %arrayidx127.i827, i64 6
  %972 = load i16, ptr %arrayidx134.i833, align 2
  %arrayidx135.i834 = getelementptr inbounds i8, ptr %PredPel.i673, i64 24
  store i16 %972, ptr %arrayidx135.i834, align 8
  %arrayidx136.i835 = getelementptr inbounds i8, ptr %arrayidx127.i827, i64 8
  %973 = load i16, ptr %arrayidx136.i835, align 2
  %arrayidx137.i836 = getelementptr inbounds i8, ptr %PredPel.i673, i64 26
  store i16 %973, ptr %arrayidx137.i836, align 2
  %arrayidx138.i837 = getelementptr inbounds i8, ptr %arrayidx127.i827, i64 10
  %974 = load i16, ptr %arrayidx138.i837, align 2
  %arrayidx139.i838 = getelementptr inbounds i8, ptr %PredPel.i673, i64 28
  store i16 %974, ptr %arrayidx139.i838, align 4
  %arrayidx140.i839 = getelementptr inbounds i8, ptr %arrayidx127.i827, i64 12
  %975 = load i16, ptr %arrayidx140.i839, align 2
  %arrayidx141.i840 = getelementptr inbounds i8, ptr %PredPel.i673, i64 30
  store i16 %975, ptr %arrayidx141.i840, align 2
  %arrayidx142.i841 = getelementptr inbounds i8, ptr %arrayidx127.i827, i64 14
  %976 = load i16, ptr %arrayidx142.i841, align 2
  %arrayidx143.i842 = getelementptr inbounds i8, ptr %PredPel.i673, i64 32
  store i16 %976, ptr %arrayidx143.i842, align 16
  br label %if.end154.i843

if.else144.i981:                                  ; preds = %if.end119.i819
  %arrayidx153.i989 = getelementptr inbounds i8, ptr %PredPel.i673, i64 18
  %977 = insertelement <8 x i16> poison, i16 %965, i64 0
  %978 = shufflevector <8 x i16> %977, <8 x i16> poison, <8 x i32> zeroinitializer
  store <8 x i16> %978, ptr %arrayidx153.i989, align 2
  br label %if.end154.i843

if.end154.i843:                                   ; preds = %if.else144.i981, %if.then121.i821
  br i1 %tobool80674680.i, label %if.then156.i925, label %if.else229.i844

if.then156.i925:                                  ; preds = %if.end154.i843
  %pos_y158.i926 = getelementptr inbounds i8, ptr %pix_a.i674, i64 14
  %979 = load i16, ptr %pos_y158.i926, align 2
  %idxprom159.i927 = sext i16 %979 to i64
  %arrayidx160.i928 = getelementptr inbounds ptr, ptr %cond.i688, i64 %idxprom159.i927
  %980 = load ptr, ptr %arrayidx160.i928, align 8
  %pos_x162.i929 = getelementptr inbounds i8, ptr %pix_a.i674, i64 12
  %981 = load i16, ptr %pos_x162.i929, align 4
  %idxprom163.i930 = sext i16 %981 to i64
  %arrayidx164.i931 = getelementptr inbounds i16, ptr %980, i64 %idxprom163.i930
  %982 = load i16, ptr %arrayidx164.i931, align 2
  %arrayidx165.i932 = getelementptr inbounds i8, ptr %PredPel.i673, i64 34
  store i16 %982, ptr %arrayidx165.i932, align 2
  %pos_y167.i933 = getelementptr inbounds i8, ptr %pix_a.i674, i64 30
  %983 = load i16, ptr %pos_y167.i933, align 2
  %idxprom168.i934 = sext i16 %983 to i64
  %arrayidx169.i935 = getelementptr inbounds ptr, ptr %cond.i688, i64 %idxprom168.i934
  %984 = load ptr, ptr %arrayidx169.i935, align 8
  %pos_x171.i936 = getelementptr inbounds i8, ptr %pix_a.i674, i64 28
  %985 = load i16, ptr %pos_x171.i936, align 4
  %idxprom172.i937 = sext i16 %985 to i64
  %arrayidx173.i938 = getelementptr inbounds i16, ptr %984, i64 %idxprom172.i937
  %986 = load i16, ptr %arrayidx173.i938, align 2
  %arrayidx174.i939 = getelementptr inbounds i8, ptr %PredPel.i673, i64 36
  store i16 %986, ptr %arrayidx174.i939, align 4
  %pos_y176.i940 = getelementptr inbounds i8, ptr %pix_a.i674, i64 46
  %987 = load i16, ptr %pos_y176.i940, align 2
  %idxprom177.i941 = sext i16 %987 to i64
  %arrayidx178.i942 = getelementptr inbounds ptr, ptr %cond.i688, i64 %idxprom177.i941
  %988 = load ptr, ptr %arrayidx178.i942, align 8
  %pos_x180.i943 = getelementptr inbounds i8, ptr %pix_a.i674, i64 44
  %989 = load i16, ptr %pos_x180.i943, align 4
  %idxprom181.i944 = sext i16 %989 to i64
  %arrayidx182.i945 = getelementptr inbounds i16, ptr %988, i64 %idxprom181.i944
  %990 = load i16, ptr %arrayidx182.i945, align 2
  %arrayidx183.i946 = getelementptr inbounds i8, ptr %PredPel.i673, i64 38
  store i16 %990, ptr %arrayidx183.i946, align 2
  %pos_y185.i947 = getelementptr inbounds i8, ptr %pix_a.i674, i64 62
  %991 = load i16, ptr %pos_y185.i947, align 2
  %idxprom186.i948 = sext i16 %991 to i64
  %arrayidx187.i949 = getelementptr inbounds ptr, ptr %cond.i688, i64 %idxprom186.i948
  %992 = load ptr, ptr %arrayidx187.i949, align 8
  %pos_x189.i950 = getelementptr inbounds i8, ptr %pix_a.i674, i64 60
  %993 = load i16, ptr %pos_x189.i950, align 4
  %idxprom190.i951 = sext i16 %993 to i64
  %arrayidx191.i952 = getelementptr inbounds i16, ptr %992, i64 %idxprom190.i951
  %994 = load i16, ptr %arrayidx191.i952, align 2
  %arrayidx192.i953 = getelementptr inbounds i8, ptr %PredPel.i673, i64 40
  store i16 %994, ptr %arrayidx192.i953, align 8
  %pos_y194.i954 = getelementptr inbounds i8, ptr %pix_a.i674, i64 78
  %995 = load i16, ptr %pos_y194.i954, align 2
  %idxprom195.i955 = sext i16 %995 to i64
  %arrayidx196.i956 = getelementptr inbounds ptr, ptr %cond.i688, i64 %idxprom195.i955
  %996 = load ptr, ptr %arrayidx196.i956, align 8
  %pos_x198.i957 = getelementptr inbounds i8, ptr %pix_a.i674, i64 76
  %997 = load i16, ptr %pos_x198.i957, align 4
  %idxprom199.i958 = sext i16 %997 to i64
  %arrayidx200.i959 = getelementptr inbounds i16, ptr %996, i64 %idxprom199.i958
  %998 = load i16, ptr %arrayidx200.i959, align 2
  %arrayidx201.i960 = getelementptr inbounds i8, ptr %PredPel.i673, i64 42
  store i16 %998, ptr %arrayidx201.i960, align 2
  %pos_y203.i961 = getelementptr inbounds i8, ptr %pix_a.i674, i64 94
  %999 = load i16, ptr %pos_y203.i961, align 2
  %idxprom204.i962 = sext i16 %999 to i64
  %arrayidx205.i963 = getelementptr inbounds ptr, ptr %cond.i688, i64 %idxprom204.i962
  %1000 = load ptr, ptr %arrayidx205.i963, align 8
  %pos_x207.i964 = getelementptr inbounds i8, ptr %pix_a.i674, i64 92
  %1001 = load i16, ptr %pos_x207.i964, align 4
  %idxprom208.i965 = sext i16 %1001 to i64
  %arrayidx209.i966 = getelementptr inbounds i16, ptr %1000, i64 %idxprom208.i965
  %1002 = load i16, ptr %arrayidx209.i966, align 2
  %arrayidx210.i967 = getelementptr inbounds i8, ptr %PredPel.i673, i64 44
  store i16 %1002, ptr %arrayidx210.i967, align 4
  %pos_y212.i968 = getelementptr inbounds i8, ptr %pix_a.i674, i64 110
  %1003 = load i16, ptr %pos_y212.i968, align 2
  %idxprom213.i969 = sext i16 %1003 to i64
  %arrayidx214.i970 = getelementptr inbounds ptr, ptr %cond.i688, i64 %idxprom213.i969
  %1004 = load ptr, ptr %arrayidx214.i970, align 8
  %pos_x216.i971 = getelementptr inbounds i8, ptr %pix_a.i674, i64 108
  %1005 = load i16, ptr %pos_x216.i971, align 4
  %idxprom217.i972 = sext i16 %1005 to i64
  %arrayidx218.i973 = getelementptr inbounds i16, ptr %1004, i64 %idxprom217.i972
  %1006 = load i16, ptr %arrayidx218.i973, align 2
  %arrayidx219.i974 = getelementptr inbounds i8, ptr %PredPel.i673, i64 46
  store i16 %1006, ptr %arrayidx219.i974, align 2
  %pos_y221.i975 = getelementptr inbounds i8, ptr %pix_a.i674, i64 126
  %1007 = load i16, ptr %pos_y221.i975, align 2
  %idxprom222.i976 = sext i16 %1007 to i64
  %arrayidx223.i977 = getelementptr inbounds ptr, ptr %cond.i688, i64 %idxprom222.i976
  %1008 = load ptr, ptr %arrayidx223.i977, align 8
  %pos_x225.i978 = getelementptr inbounds i8, ptr %pix_a.i674, i64 124
  %1009 = load i16, ptr %pos_x225.i978, align 4
  %idxprom226.i979 = sext i16 %1009 to i64
  %arrayidx227.i980 = getelementptr inbounds i16, ptr %1008, i64 %idxprom226.i979
  %1010 = load i16, ptr %arrayidx227.i980, align 2
  br label %if.end242.i855

if.else229.i844:                                  ; preds = %if.end154.i843
  %dc_pred_value_comp230.i845 = getelementptr inbounds i8, ptr %888, i64 849060
  %arrayidx232.i846 = getelementptr inbounds [3 x i32], ptr %dc_pred_value_comp230.i845, i64 0, i64 %idxprom4.i690
  %1011 = load i32, ptr %arrayidx232.i846, align 4
  %conv233.i847 = trunc i32 %1011 to i16
  %arrayidx235.i848 = getelementptr inbounds i8, ptr %PredPel.i673, i64 46
  store i16 %conv233.i847, ptr %arrayidx235.i848, align 2
  %arrayidx236.i849 = getelementptr inbounds i8, ptr %PredPel.i673, i64 44
  store i16 %conv233.i847, ptr %arrayidx236.i849, align 4
  %arrayidx237.i850 = getelementptr inbounds i8, ptr %PredPel.i673, i64 42
  store i16 %conv233.i847, ptr %arrayidx237.i850, align 2
  %arrayidx241.i854 = getelementptr inbounds i8, ptr %PredPel.i673, i64 34
  %1012 = insertelement <4 x i16> poison, i16 %conv233.i847, i64 0
  %1013 = shufflevector <4 x i16> %1012, <4 x i16> poison, <4 x i32> zeroinitializer
  store <4 x i16> %1013, ptr %arrayidx241.i854, align 2
  br label %if.end242.i855

if.end242.i855:                                   ; preds = %if.else229.i844, %if.then156.i925
  %conv233.sink.i856 = phi i16 [ %1010, %if.then156.i925 ], [ %conv233.i847, %if.else229.i844 ]
  %1014 = getelementptr inbounds i8, ptr %PredPel.i673, i64 48
  store i16 %conv233.sink.i856, ptr %1014, align 16
  br i1 %tobool82676677.i, label %if.then244.i918, label %if.else252.i857

if.then244.i918:                                  ; preds = %if.end242.i855
  %pos_y245.i919 = getelementptr inbounds i8, ptr %pix_d.i677, i64 14
  %1015 = load i16, ptr %pos_y245.i919, align 2
  %idxprom246.i920 = sext i16 %1015 to i64
  %arrayidx247.i921 = getelementptr inbounds ptr, ptr %cond.i688, i64 %idxprom246.i920
  %1016 = load ptr, ptr %arrayidx247.i921, align 8
  %pos_x248.i922 = getelementptr inbounds i8, ptr %pix_d.i677, i64 12
  %1017 = load i16, ptr %pos_x248.i922, align 4
  %idxprom249.i923 = sext i16 %1017 to i64
  %arrayidx250.i924 = getelementptr inbounds i16, ptr %1016, i64 %idxprom249.i923
  %1018 = load i16, ptr %arrayidx250.i924, align 2
  br label %intra8x8_vert_right_pred_mbaff.exit

if.else252.i857:                                  ; preds = %if.end242.i855
  %dc_pred_value_comp253.i858 = getelementptr inbounds i8, ptr %888, i64 849060
  %arrayidx255.i859 = getelementptr inbounds [3 x i32], ptr %dc_pred_value_comp253.i858, i64 0, i64 %idxprom4.i690
  %1019 = load i32, ptr %arrayidx255.i859, align 4
  %conv256.i860 = trunc i32 %1019 to i16
  br label %intra8x8_vert_right_pred_mbaff.exit

intra8x8_vert_right_pred_mbaff.exit:              ; preds = %if.then244.i918, %if.else252.i857
  %storemerge.i861 = phi i16 [ %conv256.i860, %if.else252.i857 ], [ %1018, %if.then244.i918 ]
  %.sink.i862 = phi i32 [ 0, %if.else252.i857 ], [ %block_available_up_left.0668686.i, %if.then244.i918 ]
  store i16 %storemerge.i861, ptr %PredPel.i673, align 16
  call fastcc void @LowPassForIntra8x8Pred(ptr noundef nonnull %PredPel.i673, i32 noundef %.sink.i862, i32 noundef %block_available_up.0664692.i, i32 noundef %block_available_left.1666689.i)
  %1020 = sext i32 %joff to i64
  %arrayidx260.i863 = getelementptr inbounds i8, ptr %PredPel.i673, i64 44
  %1021 = load i16, ptr %arrayidx260.i863, align 4
  %conv261.i864 = zext i16 %1021 to i32
  %arrayidx262.i865 = getelementptr inbounds i8, ptr %PredPel.i673, i64 40
  %1022 = load i16, ptr %arrayidx262.i865, align 8
  %conv263.i866 = zext i16 %1022 to i32
  %arrayidx265.i867 = getelementptr inbounds i8, ptr %PredPel.i673, i64 42
  %1023 = load i16, ptr %arrayidx265.i867, align 2
  %conv266.i868 = zext i16 %1023 to i32
  %mul.i869 = shl nuw nsw i32 %conv266.i868, 1
  %add264.i870 = add nuw nsw i32 %conv263.i866, 2
  %add267.i871 = add nuw nsw i32 %add264.i870, %conv261.i864
  %add268.i872 = add nuw nsw i32 %add267.i871, %mul.i869
  %shr.i873 = lshr i32 %add268.i872, 2
  %conv269.i874 = trunc nuw i32 %shr.i873 to i16
  %arrayidx273.i875 = getelementptr inbounds i8, ptr %PredPel.i673, i64 36
  %1024 = load i16, ptr %arrayidx273.i875, align 4
  %conv274.i876 = zext i16 %1024 to i32
  %arrayidx276.i = getelementptr inbounds i8, ptr %PredPel.i673, i64 38
  %1025 = load i16, ptr %arrayidx276.i, align 2
  %conv277.i = zext i16 %1025 to i32
  %mul278.i877 = shl nuw nsw i32 %conv277.i, 1
  %add279.i878 = add nuw nsw i32 %add264.i870, %conv274.i876
  %add280.i879 = add nuw nsw i32 %add279.i878, %mul278.i877
  %shr281.i880 = lshr i32 %add280.i879, 2
  %conv282.i881 = trunc nuw i32 %shr281.i880 to i16
  %1026 = load i16, ptr %PredPel.i673, align 16
  %conv287.i882 = zext i16 %1026 to i32
  %arrayidx289.i883 = getelementptr inbounds i8, ptr %PredPel.i673, i64 34
  %1027 = load i16, ptr %arrayidx289.i883, align 2
  %conv290.i884 = zext i16 %1027 to i32
  %mul291.i885 = shl nuw nsw i32 %conv290.i884, 1
  %add288.i886 = add nuw nsw i32 %conv287.i882, 2
  %add292.i887 = add nuw nsw i32 %add288.i886, %conv274.i876
  %add293.i888 = add nuw nsw i32 %add292.i887, %mul291.i885
  %shr294.i889 = lshr i32 %add293.i888, 2
  %conv295.i890 = trunc nuw i32 %shr294.i889 to i16
  %arrayidx299.i891 = getelementptr inbounds i8, ptr %PredPel.i673, i64 2
  %1028 = load i16, ptr %arrayidx299.i891, align 2
  %conv300.i892 = zext i16 %1028 to i32
  %add301.i = add nuw nsw i32 %conv300.i892, 1
  %add302.i893 = add nuw nsw i32 %add301.i, %conv287.i882
  %shr303.i = lshr i32 %add302.i893, 1
  %conv304.i = trunc nuw i32 %shr303.i to i16
  %arrayidx308.i = getelementptr inbounds i8, ptr %PredPel.i673, i64 4
  %1029 = load i16, ptr %arrayidx308.i, align 4
  %conv309.i = zext i16 %1029 to i32
  %add311.i894 = add nuw nsw i32 %add301.i, %conv309.i
  %shr312.i = lshr i32 %add311.i894, 1
  %conv313.i895 = trunc nuw i32 %shr312.i to i16
  %arrayidx317.i = getelementptr inbounds i8, ptr %PredPel.i673, i64 6
  %1030 = load i16, ptr %arrayidx317.i, align 2
  %conv318.i896 = zext i16 %1030 to i32
  %add319.i897 = add nuw nsw i32 %conv318.i896, 1
  %add320.i898 = add nuw nsw i32 %add319.i897, %conv309.i
  %shr321.i = lshr i32 %add320.i898, 1
  %conv322.i899 = trunc nuw i32 %shr321.i to i16
  %arrayidx326.i = getelementptr inbounds i8, ptr %PredPel.i673, i64 8
  %1031 = load i16, ptr %arrayidx326.i, align 8
  %conv327.i = zext i16 %1031 to i32
  %add329.i901 = add nuw nsw i32 %add319.i897, %conv327.i
  %shr330.i902 = lshr i32 %add329.i901, 1
  %conv331.i903 = trunc nuw i32 %shr330.i902 to i16
  %arrayidx335.i904 = getelementptr inbounds i8, ptr %PredPel.i673, i64 10
  %1032 = load i16, ptr %arrayidx335.i904, align 2
  %conv336.i905 = zext i16 %1032 to i32
  %add337.i906 = add nuw nsw i32 %conv327.i, 1
  %add338.i = add nuw nsw i32 %add337.i906, %conv336.i905
  %shr339.i = lshr i32 %add338.i, 1
  %conv340.i = trunc nuw i32 %shr339.i to i16
  %arrayidx344.i = getelementptr inbounds i8, ptr %PredPel.i673, i64 12
  %1033 = load i16, ptr %arrayidx344.i, align 4
  %conv345.i = zext i16 %1033 to i32
  %add346.i = add nuw nsw i32 %conv336.i905, 1
  %add347.i907 = add nuw nsw i32 %add346.i, %conv345.i
  %shr348.i = lshr i32 %add347.i907, 1
  %conv349.i908 = trunc nuw i32 %shr348.i to i16
  %arrayidx353.i = getelementptr inbounds i8, ptr %PredPel.i673, i64 14
  %1034 = load i16, ptr %arrayidx353.i, align 2
  %conv354.i = zext i16 %1034 to i32
  %add355.i909 = add nuw nsw i32 %conv345.i, 1
  %add356.i910 = add nuw nsw i32 %add355.i909, %conv354.i
  %shr357.i = lshr i32 %add356.i910, 1
  %conv358.i911 = trunc nuw i32 %shr357.i to i16
  %arrayidx362.i = getelementptr inbounds i8, ptr %PredPel.i673, i64 16
  %1035 = load i16, ptr %arrayidx362.i, align 16
  %conv363.i = zext i16 %1035 to i32
  %add364.i = add nuw nsw i32 %conv354.i, 1
  %add365.i = add nuw nsw i32 %add364.i, %conv363.i
  %shr366.i = lshr i32 %add365.i, 1
  %conv367.i = trunc nuw i32 %shr366.i to i16
  %arrayidx369.i = getelementptr inbounds i8, ptr %PredPel.i673, i64 46
  %1036 = load i16, ptr %arrayidx369.i, align 2
  %conv370.i912 = zext i16 %1036 to i32
  %mul376.i = shl nuw nsw i32 %conv261.i864, 1
  %add373.i = add nuw nsw i32 %conv266.i868, 2
  %add377.i = add nuw nsw i32 %add373.i, %mul376.i
  %add378.i = add nuw nsw i32 %add377.i, %conv370.i912
  %shr379.i = lshr i32 %add378.i, 2
  %conv380.i = trunc nuw i32 %shr379.i to i16
  %mul389.i = shl nuw nsw i32 %conv263.i866, 1
  %add390.i = add nuw nsw i32 %add373.i, %mul389.i
  %add391.i = add nuw nsw i32 %add390.i, %conv277.i
  %shr392.i = lshr i32 %add391.i, 2
  %conv393.i = trunc nuw i32 %shr392.i to i16
  %mul402.i = shl nuw nsw i32 %conv274.i876, 1
  %add399.i = add nuw nsw i32 %conv290.i884, 2
  %add403.i = add nuw nsw i32 %add399.i, %conv277.i
  %add404.i = add nuw nsw i32 %add403.i, %mul402.i
  %shr405.i = lshr i32 %add404.i, 2
  %conv406.i = trunc nuw i32 %shr405.i to i16
  %mul415.i = shl nuw nsw i32 %conv287.i882, 1
  %add416.i = add nuw nsw i32 %add399.i, %mul415.i
  %add417.i = add nuw nsw i32 %add416.i, %conv300.i892
  %shr418.i = lshr i32 %add417.i, 2
  %conv419.i = trunc nuw i32 %shr418.i to i16
  %mul428.i = shl nuw nsw i32 %conv300.i892, 1
  %add429.i = add nuw nsw i32 %add288.i886, %conv309.i
  %add430.i = add nuw nsw i32 %add429.i, %mul428.i
  %shr431.i = lshr i32 %add430.i, 2
  %conv432.i = trunc nuw i32 %shr431.i to i16
  %mul441.i913 = shl nuw nsw i32 %conv309.i, 1
  %add438.i = add nuw nsw i32 %conv300.i892, 2
  %add442.i914 = add nuw nsw i32 %add438.i, %conv318.i896
  %add443.i915 = add nuw nsw i32 %add442.i914, %mul441.i913
  %shr444.i916 = lshr i32 %add443.i915, 2
  %conv445.i917 = trunc nuw i32 %shr444.i916 to i16
  %mul454.i = shl nuw nsw i32 %conv318.i896, 1
  %add451.i = add nuw nsw i32 %conv309.i, 2
  %add455.i = add nuw nsw i32 %add451.i, %conv327.i
  %add456.i = add nuw nsw i32 %add455.i, %mul454.i
  %shr457.i = lshr i32 %add456.i, 2
  %conv458.i = trunc nuw i32 %shr457.i to i16
  %mul467.i = shl nuw nsw i32 %conv327.i, 1
  %add464.i = add nuw nsw i32 %conv318.i896, 2
  %add468.i = add nuw nsw i32 %add464.i, %conv336.i905
  %add469.i = add nuw nsw i32 %add468.i, %mul467.i
  %shr470.i = lshr i32 %add469.i, 2
  %conv471.i = trunc nuw i32 %shr470.i to i16
  %mul480.i = shl nuw nsw i32 %conv336.i905, 1
  %add477.i = add nuw nsw i32 %conv327.i, 2
  %add481.i = add nuw nsw i32 %add477.i, %conv345.i
  %add482.i = add nuw nsw i32 %add481.i, %mul480.i
  %shr483.i = lshr i32 %add482.i, 2
  %conv484.i = trunc nuw i32 %shr483.i to i16
  %mul493.i = shl nuw nsw i32 %conv345.i, 1
  %add490.i = add nuw nsw i32 %conv336.i905, 2
  %add494.i = add nuw nsw i32 %add490.i, %conv354.i
  %add495.i = add nuw nsw i32 %add494.i, %mul493.i
  %shr496.i = lshr i32 %add495.i, 2
  %conv497.i = trunc nuw i32 %shr496.i to i16
  %mul506.i = shl nuw nsw i32 %conv354.i, 1
  %add503.i = add nuw nsw i32 %conv345.i, 2
  %add507.i = add nuw nsw i32 %add503.i, %conv363.i
  %add508.i = add nuw nsw i32 %add507.i, %mul506.i
  %shr509.i = lshr i32 %add508.i, 2
  %conv510.i = trunc nuw i32 %shr509.i to i16
  %arrayidx514.i = getelementptr inbounds ptr, ptr %892, i64 %1020
  %1037 = load ptr, ptr %arrayidx514.i, align 8
  %idxprom515.i = sext i32 %ioff to i64
  %arrayidx516.i = getelementptr inbounds i16, ptr %1037, i64 %idxprom515.i
  store i16 %conv304.i, ptr %arrayidx516.i, align 2
  %PredArray.sroa.10.6.arrayidx516.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx516.i, i64 2
  store i16 %conv313.i895, ptr %PredArray.sroa.10.6.arrayidx516.sroa_idx.i, align 2
  %PredArray.sroa.11.6.arrayidx516.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx516.i, i64 4
  store i16 %conv322.i899, ptr %PredArray.sroa.11.6.arrayidx516.sroa_idx.i, align 2
  %PredArray.sroa.12.6.arrayidx516.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx516.i, i64 6
  store i16 %conv331.i903, ptr %PredArray.sroa.12.6.arrayidx516.sroa_idx.i, align 2
  %PredArray.sroa.13.6.arrayidx516.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx516.i, i64 8
  store i16 %conv340.i, ptr %PredArray.sroa.13.6.arrayidx516.sroa_idx.i, align 2
  %PredArray.sroa.14.6.arrayidx516.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx516.i, i64 10
  store i16 %conv349.i908, ptr %PredArray.sroa.14.6.arrayidx516.sroa_idx.i, align 2
  %PredArray.sroa.15.6.arrayidx516.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx516.i, i64 12
  store i16 %conv358.i911, ptr %PredArray.sroa.15.6.arrayidx516.sroa_idx.i, align 2
  %PredArray.sroa.16.6.arrayidx516.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx516.i, i64 14
  store i16 %conv367.i, ptr %PredArray.sroa.16.6.arrayidx516.sroa_idx.i, align 2
  %arrayidx520.i = getelementptr i8, ptr %arrayidx514.i, i64 8
  %1038 = load ptr, ptr %arrayidx520.i, align 8
  %arrayidx522.i = getelementptr inbounds i16, ptr %1038, i64 %idxprom515.i
  store i16 %conv419.i, ptr %arrayidx522.i, align 2
  %PredArray.sroa.25.28.arrayidx522.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx522.i, i64 2
  store i16 %conv432.i, ptr %PredArray.sroa.25.28.arrayidx522.sroa_idx.i, align 2
  %PredArray.sroa.26.28.arrayidx522.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx522.i, i64 4
  store i16 %conv445.i917, ptr %PredArray.sroa.26.28.arrayidx522.sroa_idx.i, align 2
  %PredArray.sroa.27.28.arrayidx522.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx522.i, i64 6
  store i16 %conv458.i, ptr %PredArray.sroa.27.28.arrayidx522.sroa_idx.i, align 2
  %PredArray.sroa.28.28.arrayidx522.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx522.i, i64 8
  store i16 %conv471.i, ptr %PredArray.sroa.28.28.arrayidx522.sroa_idx.i, align 2
  %PredArray.sroa.29.28.arrayidx522.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx522.i, i64 10
  store i16 %conv484.i, ptr %PredArray.sroa.29.28.arrayidx522.sroa_idx.i, align 2
  %PredArray.sroa.30.28.arrayidx522.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx522.i, i64 12
  store i16 %conv497.i, ptr %PredArray.sroa.30.28.arrayidx522.sroa_idx.i, align 2
  %PredArray.sroa.31.28.arrayidx522.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx522.i, i64 14
  store i16 %conv510.i, ptr %PredArray.sroa.31.28.arrayidx522.sroa_idx.i, align 2
  %arrayidx526.i = getelementptr i8, ptr %arrayidx514.i, i64 16
  %1039 = load ptr, ptr %arrayidx526.i, align 8
  %arrayidx528.i = getelementptr inbounds i16, ptr %1039, i64 %idxprom515.i
  store i16 %conv295.i890, ptr %arrayidx528.i, align 2
  %PredArray.sroa.8.4.arrayidx528.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx528.i, i64 2
  store i16 %conv304.i, ptr %PredArray.sroa.8.4.arrayidx528.sroa_idx.i, align 2
  %PredArray.sroa.10.4.arrayidx528.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx528.i, i64 4
  store i16 %conv313.i895, ptr %PredArray.sroa.10.4.arrayidx528.sroa_idx.i, align 2
  %PredArray.sroa.11.4.arrayidx528.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx528.i, i64 6
  store i16 %conv322.i899, ptr %PredArray.sroa.11.4.arrayidx528.sroa_idx.i, align 2
  %PredArray.sroa.12.4.arrayidx528.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx528.i, i64 8
  store i16 %conv331.i903, ptr %PredArray.sroa.12.4.arrayidx528.sroa_idx.i, align 2
  %PredArray.sroa.13.4.arrayidx528.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx528.i, i64 10
  store i16 %conv340.i, ptr %PredArray.sroa.13.4.arrayidx528.sroa_idx.i, align 2
  %PredArray.sroa.14.4.arrayidx528.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx528.i, i64 12
  store i16 %conv349.i908, ptr %PredArray.sroa.14.4.arrayidx528.sroa_idx.i, align 2
  %PredArray.sroa.15.4.arrayidx528.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx528.i, i64 14
  store i16 %conv358.i911, ptr %PredArray.sroa.15.4.arrayidx528.sroa_idx.i, align 2
  %arrayidx532.i = getelementptr i8, ptr %arrayidx514.i, i64 24
  %1040 = load ptr, ptr %arrayidx532.i, align 8
  %arrayidx534.i = getelementptr inbounds i16, ptr %1040, i64 %idxprom515.i
  store i16 %conv406.i, ptr %arrayidx534.i, align 2
  %PredArray.sroa.23.26.arrayidx534.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx534.i, i64 2
  store i16 %conv419.i, ptr %PredArray.sroa.23.26.arrayidx534.sroa_idx.i, align 2
  %PredArray.sroa.25.26.arrayidx534.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx534.i, i64 4
  store i16 %conv432.i, ptr %PredArray.sroa.25.26.arrayidx534.sroa_idx.i, align 2
  %PredArray.sroa.26.26.arrayidx534.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx534.i, i64 6
  store i16 %conv445.i917, ptr %PredArray.sroa.26.26.arrayidx534.sroa_idx.i, align 2
  %PredArray.sroa.27.26.arrayidx534.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx534.i, i64 8
  store i16 %conv458.i, ptr %PredArray.sroa.27.26.arrayidx534.sroa_idx.i, align 2
  %PredArray.sroa.28.26.arrayidx534.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx534.i, i64 10
  store i16 %conv471.i, ptr %PredArray.sroa.28.26.arrayidx534.sroa_idx.i, align 2
  %PredArray.sroa.29.26.arrayidx534.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx534.i, i64 12
  store i16 %conv484.i, ptr %PredArray.sroa.29.26.arrayidx534.sroa_idx.i, align 2
  %PredArray.sroa.30.26.arrayidx534.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx534.i, i64 14
  store i16 %conv497.i, ptr %PredArray.sroa.30.26.arrayidx534.sroa_idx.i, align 2
  %arrayidx538.i = getelementptr i8, ptr %arrayidx514.i, i64 32
  %1041 = load ptr, ptr %arrayidx538.i, align 8
  %arrayidx540.i = getelementptr inbounds i16, ptr %1041, i64 %idxprom515.i
  store i16 %conv282.i881, ptr %arrayidx540.i, align 2
  %PredArray.sroa.6.2.arrayidx540.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx540.i, i64 2
  store i16 %conv295.i890, ptr %PredArray.sroa.6.2.arrayidx540.sroa_idx.i, align 2
  %PredArray.sroa.8.2.arrayidx540.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx540.i, i64 4
  store i16 %conv304.i, ptr %PredArray.sroa.8.2.arrayidx540.sroa_idx.i, align 2
  %PredArray.sroa.10.2.arrayidx540.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx540.i, i64 6
  store i16 %conv313.i895, ptr %PredArray.sroa.10.2.arrayidx540.sroa_idx.i, align 2
  %PredArray.sroa.11.2.arrayidx540.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx540.i, i64 8
  store i16 %conv322.i899, ptr %PredArray.sroa.11.2.arrayidx540.sroa_idx.i, align 2
  %PredArray.sroa.12.2.arrayidx540.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx540.i, i64 10
  store i16 %conv331.i903, ptr %PredArray.sroa.12.2.arrayidx540.sroa_idx.i, align 2
  %PredArray.sroa.13.2.arrayidx540.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx540.i, i64 12
  store i16 %conv340.i, ptr %PredArray.sroa.13.2.arrayidx540.sroa_idx.i, align 2
  %PredArray.sroa.14.2.arrayidx540.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx540.i, i64 14
  store i16 %conv349.i908, ptr %PredArray.sroa.14.2.arrayidx540.sroa_idx.i, align 2
  %arrayidx544.i = getelementptr i8, ptr %arrayidx514.i, i64 40
  %1042 = load ptr, ptr %arrayidx544.i, align 8
  %arrayidx546.i = getelementptr inbounds i16, ptr %1042, i64 %idxprom515.i
  store i16 %conv393.i, ptr %arrayidx546.i, align 2
  %PredArray.sroa.21.24.arrayidx546.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx546.i, i64 2
  store i16 %conv406.i, ptr %PredArray.sroa.21.24.arrayidx546.sroa_idx.i, align 2
  %PredArray.sroa.23.24.arrayidx546.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx546.i, i64 4
  store i16 %conv419.i, ptr %PredArray.sroa.23.24.arrayidx546.sroa_idx.i, align 2
  %PredArray.sroa.25.24.arrayidx546.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx546.i, i64 6
  store i16 %conv432.i, ptr %PredArray.sroa.25.24.arrayidx546.sroa_idx.i, align 2
  %PredArray.sroa.26.24.arrayidx546.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx546.i, i64 8
  store i16 %conv445.i917, ptr %PredArray.sroa.26.24.arrayidx546.sroa_idx.i, align 2
  %PredArray.sroa.27.24.arrayidx546.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx546.i, i64 10
  store i16 %conv458.i, ptr %PredArray.sroa.27.24.arrayidx546.sroa_idx.i, align 2
  %PredArray.sroa.28.24.arrayidx546.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx546.i, i64 12
  store i16 %conv471.i, ptr %PredArray.sroa.28.24.arrayidx546.sroa_idx.i, align 2
  %PredArray.sroa.29.24.arrayidx546.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx546.i, i64 14
  store i16 %conv484.i, ptr %PredArray.sroa.29.24.arrayidx546.sroa_idx.i, align 2
  %arrayidx550.i = getelementptr i8, ptr %arrayidx514.i, i64 48
  %1043 = load ptr, ptr %arrayidx550.i, align 8
  %arrayidx552.i = getelementptr inbounds i16, ptr %1043, i64 %idxprom515.i
  store i16 %conv269.i874, ptr %arrayidx552.i, align 2
  %PredArray.sroa.4.0.arrayidx552.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx552.i, i64 2
  store i16 %conv282.i881, ptr %PredArray.sroa.4.0.arrayidx552.sroa_idx.i, align 2
  %PredArray.sroa.6.0.arrayidx552.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx552.i, i64 4
  store i16 %conv295.i890, ptr %PredArray.sroa.6.0.arrayidx552.sroa_idx.i, align 2
  %PredArray.sroa.8.0.arrayidx552.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx552.i, i64 6
  store i16 %conv304.i, ptr %PredArray.sroa.8.0.arrayidx552.sroa_idx.i, align 2
  %PredArray.sroa.10.0.arrayidx552.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx552.i, i64 8
  store i16 %conv313.i895, ptr %PredArray.sroa.10.0.arrayidx552.sroa_idx.i, align 2
  %PredArray.sroa.11.0.arrayidx552.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx552.i, i64 10
  store i16 %conv322.i899, ptr %PredArray.sroa.11.0.arrayidx552.sroa_idx.i, align 2
  %PredArray.sroa.12.0.arrayidx552.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx552.i, i64 12
  store i16 %conv331.i903, ptr %PredArray.sroa.12.0.arrayidx552.sroa_idx.i, align 2
  %PredArray.sroa.13.0.arrayidx552.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx552.i, i64 14
  store i16 %conv340.i, ptr %PredArray.sroa.13.0.arrayidx552.sroa_idx.i, align 2
  %arrayidx555.i = getelementptr i8, ptr %arrayidx514.i, i64 56
  %1044 = load ptr, ptr %arrayidx555.i, align 8
  %arrayidx557.i = getelementptr inbounds i16, ptr %1044, i64 %idxprom515.i
  store i16 %conv380.i, ptr %arrayidx557.i, align 2
  %PredArray.sroa.19.22.arrayidx557.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx557.i, i64 2
  store i16 %conv393.i, ptr %PredArray.sroa.19.22.arrayidx557.sroa_idx.i, align 2
  %PredArray.sroa.21.22.arrayidx557.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx557.i, i64 4
  store i16 %conv406.i, ptr %PredArray.sroa.21.22.arrayidx557.sroa_idx.i, align 2
  %PredArray.sroa.23.22.arrayidx557.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx557.i, i64 6
  store i16 %conv419.i, ptr %PredArray.sroa.23.22.arrayidx557.sroa_idx.i, align 2
  %PredArray.sroa.25.22.arrayidx557.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx557.i, i64 8
  store i16 %conv432.i, ptr %PredArray.sroa.25.22.arrayidx557.sroa_idx.i, align 2
  %PredArray.sroa.26.22.arrayidx557.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx557.i, i64 10
  store i16 %conv445.i917, ptr %PredArray.sroa.26.22.arrayidx557.sroa_idx.i, align 2
  %PredArray.sroa.27.22.arrayidx557.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx557.i, i64 12
  store i16 %conv458.i, ptr %PredArray.sroa.27.22.arrayidx557.sroa_idx.i, align 2
  %PredArray.sroa.28.22.arrayidx557.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx557.i, i64 14
  store i16 %conv471.i, ptr %PredArray.sroa.28.22.arrayidx557.sroa_idx.i, align 2
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pix_d.i677) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pix_c.i676) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pix_b.i675) #6
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %pix_a.i674) #6
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %PredPel.i673) #6
  br label %cleanup

sw.bb17:                                          ; preds = %entry
  %p_Vid1.i1026 = getelementptr inbounds i8, ptr %currMB, i64 8
  %1045 = load ptr, ptr %p_Vid1.i1026, align 8
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %PredPel.i1021) #6
  %tobool.not.i1027 = icmp eq i32 %pl, 0
  %dec_picture3.i1028 = getelementptr inbounds i8, ptr %2, i64 13520
  %1046 = load ptr, ptr %dec_picture3.i1028, align 8
  br i1 %tobool.not.i1027, label %cond.false.i1381, label %cond.true.i1029

cond.true.i1029:                                  ; preds = %sw.bb17
  %imgUV.i1030 = getelementptr inbounds i8, ptr %1046, i64 136
  %1047 = load ptr, ptr %imgUV.i1030, align 8
  %sub.i1031 = add i32 %pl, -1
  %idxprom.i1032 = zext i32 %sub.i1031 to i64
  %arrayidx2.i1033 = getelementptr inbounds ptr, ptr %1047, i64 %idxprom.i1032
  br label %cond.end.i1034

cond.false.i1381:                                 ; preds = %sw.bb17
  %imgY4.i1382 = getelementptr inbounds i8, ptr %1046, i64 128
  br label %cond.end.i1034

cond.end.i1034:                                   ; preds = %cond.false.i1381, %cond.true.i1029
  %cond.in.i1035 = phi ptr [ %arrayidx2.i1033, %cond.true.i1029 ], [ %imgY4.i1382, %cond.false.i1381 ]
  %cond.i1036 = load ptr, ptr %cond.in.i1035, align 8
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %pix_a.i1022) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pix_b.i1023) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pix_c.i1024) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pix_d.i1025) #6
  %mb_pred.i1037 = getelementptr inbounds i8, ptr %2, i64 1248
  %1048 = load ptr, ptr %mb_pred.i1037, align 8
  %idxprom5.i1038 = zext i32 %pl to i64
  %arrayidx6.i1039 = getelementptr inbounds ptr, ptr %1048, i64 %idxprom5.i1038
  %1049 = load ptr, ptr %arrayidx6.i1039, align 8
  %mb_size7.i1040 = getelementptr inbounds i8, ptr %1045, i64 849124
  %sub9.i1041 = add nsw i32 %ioff, -1
  call void @getAffNeighbour(ptr noundef nonnull %currMB, i32 noundef %sub9.i1041, i32 noundef %joff, ptr noundef nonnull %mb_size7.i1040, ptr noundef nonnull %pix_a.i1022) #6
  %1050 = add i32 %joff, 1
  %arrayidx11.1.i1042 = getelementptr inbounds i8, ptr %pix_a.i1022, i64 16
  call void @getAffNeighbour(ptr noundef nonnull %currMB, i32 noundef %sub9.i1041, i32 noundef %1050, ptr noundef nonnull %mb_size7.i1040, ptr noundef nonnull %arrayidx11.1.i1042) #6
  %1051 = add i32 %joff, 2
  %arrayidx11.2.i1043 = getelementptr inbounds i8, ptr %pix_a.i1022, i64 32
  call void @getAffNeighbour(ptr noundef nonnull %currMB, i32 noundef %sub9.i1041, i32 noundef %1051, ptr noundef nonnull %mb_size7.i1040, ptr noundef nonnull %arrayidx11.2.i1043) #6
  %1052 = add i32 %joff, 3
  %arrayidx11.3.i1044 = getelementptr inbounds i8, ptr %pix_a.i1022, i64 48
  call void @getAffNeighbour(ptr noundef nonnull %currMB, i32 noundef %sub9.i1041, i32 noundef %1052, ptr noundef nonnull %mb_size7.i1040, ptr noundef nonnull %arrayidx11.3.i1044) #6
  %1053 = add i32 %joff, 4
  %arrayidx11.4.i1045 = getelementptr inbounds i8, ptr %pix_a.i1022, i64 64
  call void @getAffNeighbour(ptr noundef nonnull %currMB, i32 noundef %sub9.i1041, i32 noundef %1053, ptr noundef nonnull %mb_size7.i1040, ptr noundef nonnull %arrayidx11.4.i1045) #6
  %1054 = add i32 %joff, 5
  %arrayidx11.5.i1046 = getelementptr inbounds i8, ptr %pix_a.i1022, i64 80
  call void @getAffNeighbour(ptr noundef nonnull %currMB, i32 noundef %sub9.i1041, i32 noundef %1054, ptr noundef nonnull %mb_size7.i1040, ptr noundef nonnull %arrayidx11.5.i1046) #6
  %1055 = add i32 %joff, 6
  %arrayidx11.6.i1047 = getelementptr inbounds i8, ptr %pix_a.i1022, i64 96
  call void @getAffNeighbour(ptr noundef nonnull %currMB, i32 noundef %sub9.i1041, i32 noundef %1055, ptr noundef nonnull %mb_size7.i1040, ptr noundef nonnull %arrayidx11.6.i1047) #6
  %1056 = add i32 %joff, 7
  %arrayidx11.7.i1048 = getelementptr inbounds i8, ptr %pix_a.i1022, i64 112
  call void @getAffNeighbour(ptr noundef nonnull %currMB, i32 noundef %sub9.i1041, i32 noundef %1056, ptr noundef nonnull %mb_size7.i1040, ptr noundef nonnull %arrayidx11.7.i1048) #6
  %sub12.i1049 = add nsw i32 %joff, -1
  call void @getAffNeighbour(ptr noundef nonnull %currMB, i32 noundef %ioff, i32 noundef %sub12.i1049, ptr noundef nonnull %mb_size7.i1040, ptr noundef nonnull %pix_b.i1023) #6
  %add13.i1050 = add nsw i32 %ioff, 8
  call void @getAffNeighbour(ptr noundef nonnull %currMB, i32 noundef %add13.i1050, i32 noundef %sub12.i1049, ptr noundef nonnull %mb_size7.i1040, ptr noundef nonnull %pix_c.i1024) #6
  call void @getAffNeighbour(ptr noundef nonnull %currMB, i32 noundef %sub9.i1041, i32 noundef %sub12.i1049, ptr noundef nonnull %mb_size7.i1040, ptr noundef nonnull %pix_d.i1025) #6
  %1057 = load i32, ptr %pix_c.i1024, align 4
  %tobool17.not.i1051 = icmp ne i32 %1057, 0
  %cmp18.i1052 = icmp ne i32 %ioff, 8
  %cmp20.i1053 = icmp ne i32 %joff, 8
  %.not.i1054 = or i1 %cmp18.i1052, %cmp20.i1053
  %narrow.i1055 = and i1 %.not.i1054, %tobool17.not.i1051
  %land.ext.i1056 = zext i1 %narrow.i1055 to i32
  store i32 %land.ext.i1056, ptr %pix_c.i1024, align 4
  %active_pps.i1057 = getelementptr inbounds i8, ptr %1045, i64 8
  %1058 = load ptr, ptr %active_pps.i1057, align 8
  %constrained_intra_pred_flag.i1058 = getelementptr inbounds i8, ptr %1058, i64 2204
  %1059 = load i32, ptr %constrained_intra_pred_flag.i1058, align 4
  %tobool23.not.i1059 = icmp eq i32 %1059, 0
  br i1 %tobool23.not.i1059, label %if.else.i1380, label %for.cond24.preheader.i1060

for.cond24.preheader.i1060:                       ; preds = %cond.end.i1034
  %intra_block.i1061 = getelementptr inbounds i8, ptr %2, i64 13544
  %1060 = load i32, ptr %pix_a.i1022, align 16
  %tobool30.not.i1062 = icmp eq i32 %1060, 0
  br i1 %tobool30.not.i1062, label %cond.end37.i1067, label %cond.true31.i1063

cond.true31.i1063:                                ; preds = %for.cond24.preheader.i1060
  %1061 = load ptr, ptr %intra_block.i1061, align 8
  %mb_addr.i1064 = getelementptr inbounds i8, ptr %pix_a.i1022, i64 4
  %1062 = load i32, ptr %mb_addr.i1064, align 4
  %idxprom34.i1065 = sext i32 %1062 to i64
  %arrayidx35.i1066 = getelementptr inbounds i8, ptr %1061, i64 %idxprom34.i1065
  %1063 = load i8, ptr %arrayidx35.i1066, align 1
  %conv662.i = zext i8 %1063 to i32
  br label %cond.end37.i1067

cond.end37.i1067:                                 ; preds = %cond.true31.i1063, %for.cond24.preheader.i1060
  %cond38.i1068 = phi i32 [ %conv662.i, %cond.true31.i1063 ], [ 0, %for.cond24.preheader.i1060 ]
  %and.i1069 = and i32 %cond38.i1068, 1
  %1064 = load i32, ptr %arrayidx11.1.i1042, align 16
  %tobool30.not.1.i1070 = icmp eq i32 %1064, 0
  br i1 %tobool30.not.1.i1070, label %cond.end37.1.i1075, label %cond.true31.1.i1071

cond.true31.1.i1071:                              ; preds = %cond.end37.i1067
  %1065 = load ptr, ptr %intra_block.i1061, align 8
  %mb_addr.1.i1072 = getelementptr inbounds i8, ptr %pix_a.i1022, i64 20
  %1066 = load i32, ptr %mb_addr.1.i1072, align 4
  %idxprom34.1.i1073 = sext i32 %1066 to i64
  %arrayidx35.1.i1074 = getelementptr inbounds i8, ptr %1065, i64 %idxprom34.1.i1073
  %1067 = load i8, ptr %arrayidx35.1.i1074, align 1
  %conv.1663.i = zext i8 %1067 to i32
  br label %cond.end37.1.i1075

cond.end37.1.i1075:                               ; preds = %cond.true31.1.i1071, %cond.end37.i1067
  %cond38.1.i1076 = phi i32 [ %conv.1663.i, %cond.true31.1.i1071 ], [ 0, %cond.end37.i1067 ]
  %and.1.i1077 = and i32 %and.i1069, %cond38.1.i1076
  %1068 = load i32, ptr %arrayidx11.2.i1043, align 16
  %tobool30.not.2.i1078 = icmp eq i32 %1068, 0
  br i1 %tobool30.not.2.i1078, label %cond.end37.2.i1083, label %cond.true31.2.i1079

cond.true31.2.i1079:                              ; preds = %cond.end37.1.i1075
  %1069 = load ptr, ptr %intra_block.i1061, align 8
  %mb_addr.2.i1080 = getelementptr inbounds i8, ptr %pix_a.i1022, i64 36
  %1070 = load i32, ptr %mb_addr.2.i1080, align 4
  %idxprom34.2.i1081 = sext i32 %1070 to i64
  %arrayidx35.2.i1082 = getelementptr inbounds i8, ptr %1069, i64 %idxprom34.2.i1081
  %1071 = load i8, ptr %arrayidx35.2.i1082, align 1
  %conv.2664.i = zext i8 %1071 to i32
  br label %cond.end37.2.i1083

cond.end37.2.i1083:                               ; preds = %cond.true31.2.i1079, %cond.end37.1.i1075
  %cond38.2.i1084 = phi i32 [ %conv.2664.i, %cond.true31.2.i1079 ], [ 0, %cond.end37.1.i1075 ]
  %and.2.i1085 = and i32 %and.1.i1077, %cond38.2.i1084
  %1072 = load i32, ptr %arrayidx11.3.i1044, align 16
  %tobool30.not.3.i1086 = icmp eq i32 %1072, 0
  br i1 %tobool30.not.3.i1086, label %cond.end37.3.i1091, label %cond.true31.3.i1087

cond.true31.3.i1087:                              ; preds = %cond.end37.2.i1083
  %1073 = load ptr, ptr %intra_block.i1061, align 8
  %mb_addr.3.i1088 = getelementptr inbounds i8, ptr %pix_a.i1022, i64 52
  %1074 = load i32, ptr %mb_addr.3.i1088, align 4
  %idxprom34.3.i1089 = sext i32 %1074 to i64
  %arrayidx35.3.i1090 = getelementptr inbounds i8, ptr %1073, i64 %idxprom34.3.i1089
  %1075 = load i8, ptr %arrayidx35.3.i1090, align 1
  %conv.3665.i = zext i8 %1075 to i32
  br label %cond.end37.3.i1091

cond.end37.3.i1091:                               ; preds = %cond.true31.3.i1087, %cond.end37.2.i1083
  %cond38.3.i1092 = phi i32 [ %conv.3665.i, %cond.true31.3.i1087 ], [ 0, %cond.end37.2.i1083 ]
  %and.3.i1093 = and i32 %and.2.i1085, %cond38.3.i1092
  %1076 = load i32, ptr %arrayidx11.4.i1045, align 16
  %tobool30.not.4.i1094 = icmp eq i32 %1076, 0
  br i1 %tobool30.not.4.i1094, label %cond.end37.4.i1099, label %cond.true31.4.i1095

cond.true31.4.i1095:                              ; preds = %cond.end37.3.i1091
  %1077 = load ptr, ptr %intra_block.i1061, align 8
  %mb_addr.4.i1096 = getelementptr inbounds i8, ptr %pix_a.i1022, i64 68
  %1078 = load i32, ptr %mb_addr.4.i1096, align 4
  %idxprom34.4.i1097 = sext i32 %1078 to i64
  %arrayidx35.4.i1098 = getelementptr inbounds i8, ptr %1077, i64 %idxprom34.4.i1097
  %1079 = load i8, ptr %arrayidx35.4.i1098, align 1
  %conv.4666.i = zext i8 %1079 to i32
  br label %cond.end37.4.i1099

cond.end37.4.i1099:                               ; preds = %cond.true31.4.i1095, %cond.end37.3.i1091
  %cond38.4.i1100 = phi i32 [ %conv.4666.i, %cond.true31.4.i1095 ], [ 0, %cond.end37.3.i1091 ]
  %and.4.i1101 = and i32 %and.3.i1093, %cond38.4.i1100
  %1080 = load i32, ptr %arrayidx11.5.i1046, align 16
  %tobool30.not.5.i1102 = icmp eq i32 %1080, 0
  br i1 %tobool30.not.5.i1102, label %cond.end37.5.i1107, label %cond.true31.5.i1103

cond.true31.5.i1103:                              ; preds = %cond.end37.4.i1099
  %1081 = load ptr, ptr %intra_block.i1061, align 8
  %mb_addr.5.i1104 = getelementptr inbounds i8, ptr %pix_a.i1022, i64 84
  %1082 = load i32, ptr %mb_addr.5.i1104, align 4
  %idxprom34.5.i1105 = sext i32 %1082 to i64
  %arrayidx35.5.i1106 = getelementptr inbounds i8, ptr %1081, i64 %idxprom34.5.i1105
  %1083 = load i8, ptr %arrayidx35.5.i1106, align 1
  %conv.5667.i = zext i8 %1083 to i32
  br label %cond.end37.5.i1107

cond.end37.5.i1107:                               ; preds = %cond.true31.5.i1103, %cond.end37.4.i1099
  %cond38.5.i1108 = phi i32 [ %conv.5667.i, %cond.true31.5.i1103 ], [ 0, %cond.end37.4.i1099 ]
  %and.5.i1109 = and i32 %and.4.i1101, %cond38.5.i1108
  %1084 = load i32, ptr %arrayidx11.6.i1047, align 16
  %tobool30.not.6.i1110 = icmp eq i32 %1084, 0
  br i1 %tobool30.not.6.i1110, label %cond.end37.6.i1115, label %cond.true31.6.i1111

cond.true31.6.i1111:                              ; preds = %cond.end37.5.i1107
  %1085 = load ptr, ptr %intra_block.i1061, align 8
  %mb_addr.6.i1112 = getelementptr inbounds i8, ptr %pix_a.i1022, i64 100
  %1086 = load i32, ptr %mb_addr.6.i1112, align 4
  %idxprom34.6.i1113 = sext i32 %1086 to i64
  %arrayidx35.6.i1114 = getelementptr inbounds i8, ptr %1085, i64 %idxprom34.6.i1113
  %1087 = load i8, ptr %arrayidx35.6.i1114, align 1
  %conv.6668.i = zext i8 %1087 to i32
  br label %cond.end37.6.i1115

cond.end37.6.i1115:                               ; preds = %cond.true31.6.i1111, %cond.end37.5.i1107
  %cond38.6.i1116 = phi i32 [ %conv.6668.i, %cond.true31.6.i1111 ], [ 0, %cond.end37.5.i1107 ]
  %and.6.i1117 = and i32 %and.5.i1109, %cond38.6.i1116
  %1088 = load i32, ptr %arrayidx11.7.i1048, align 16
  %tobool30.not.7.i1118 = icmp eq i32 %1088, 0
  br i1 %tobool30.not.7.i1118, label %cond.end37.7.i1124, label %cond.true31.7.i1119

cond.true31.7.i1119:                              ; preds = %cond.end37.6.i1115
  %1089 = load ptr, ptr %intra_block.i1061, align 8
  %mb_addr.7.i1120 = getelementptr inbounds i8, ptr %pix_a.i1022, i64 116
  %1090 = load i32, ptr %mb_addr.7.i1120, align 4
  %idxprom34.7.i1121 = sext i32 %1090 to i64
  %arrayidx35.7.i1122 = getelementptr inbounds i8, ptr %1089, i64 %idxprom34.7.i1121
  %1091 = load i8, ptr %arrayidx35.7.i1122, align 1
  %conv.7.i11231999 = zext i8 %1091 to i32
  br label %cond.end37.7.i1124

cond.end37.7.i1124:                               ; preds = %cond.true31.7.i1119, %cond.end37.6.i1115
  %cond38.7.i1125 = phi i32 [ %conv.7.i11231999, %cond.true31.7.i1119 ], [ 0, %cond.end37.6.i1115 ]
  %and.7.i1126 = and i32 %and.6.i1117, %cond38.7.i1125
  %1092 = load i32, ptr %pix_b.i1023, align 4
  %tobool43.not.i1127 = icmp eq i32 %1092, 0
  br i1 %tobool43.not.i1127, label %cond.end51.i1133, label %cond.true44.i1128

cond.true44.i1128:                                ; preds = %cond.end37.7.i1124
  %1093 = load ptr, ptr %intra_block.i1061, align 8
  %mb_addr46.i1129 = getelementptr inbounds i8, ptr %pix_b.i1023, i64 4
  %1094 = load i32, ptr %mb_addr46.i1129, align 4
  %idxprom47.i1130 = sext i32 %1094 to i64
  %arrayidx48.i1131 = getelementptr inbounds i8, ptr %1093, i64 %idxprom47.i1130
  %1095 = load i8, ptr %arrayidx48.i1131, align 1
  %conv49.i1132 = sext i8 %1095 to i32
  br label %cond.end51.i1133

cond.end51.i1133:                                 ; preds = %cond.true44.i1128, %cond.end37.7.i1124
  %cond52.i1134 = phi i32 [ %conv49.i1132, %cond.true44.i1128 ], [ 0, %cond.end37.7.i1124 ]
  br i1 %narrow.i1055, label %cond.true55.i1375, label %cond.end62.i1135

cond.true55.i1375:                                ; preds = %cond.end51.i1133
  %1096 = load ptr, ptr %intra_block.i1061, align 8
  %mb_addr57.i1376 = getelementptr inbounds i8, ptr %pix_c.i1024, i64 4
  %1097 = load i32, ptr %mb_addr57.i1376, align 4
  %idxprom58.i1377 = sext i32 %1097 to i64
  %arrayidx59.i1378 = getelementptr inbounds i8, ptr %1096, i64 %idxprom58.i1377
  %1098 = load i8, ptr %arrayidx59.i1378, align 1
  %conv60.i1379 = sext i8 %1098 to i32
  br label %cond.end62.i1135

cond.end62.i1135:                                 ; preds = %cond.true55.i1375, %cond.end51.i1133
  %cond63.i1136 = phi i32 [ %conv60.i1379, %cond.true55.i1375 ], [ 0, %cond.end51.i1133 ]
  %1099 = load i32, ptr %pix_d.i1025, align 4
  %tobool65.not.i1137 = icmp eq i32 %1099, 0
  br i1 %tobool65.not.i1137, label %if.end.i1143, label %cond.true66.i1138

cond.true66.i1138:                                ; preds = %cond.end62.i1135
  %1100 = load ptr, ptr %intra_block.i1061, align 8
  %mb_addr68.i1139 = getelementptr inbounds i8, ptr %pix_d.i1025, i64 4
  %1101 = load i32, ptr %mb_addr68.i1139, align 4
  %idxprom69.i1140 = sext i32 %1101 to i64
  %arrayidx70.i1141 = getelementptr inbounds i8, ptr %1100, i64 %idxprom69.i1140
  %1102 = load i8, ptr %arrayidx70.i1141, align 1
  %conv71.i1142 = sext i8 %1102 to i32
  br label %if.end.i1143

if.else.i1380:                                    ; preds = %cond.end.i1034
  %1103 = load i32, ptr %pix_a.i1022, align 16
  %1104 = load i32, ptr %pix_b.i1023, align 4
  %1105 = load i32, ptr %pix_d.i1025, align 4
  br label %if.end.i1143

if.end.i1143:                                     ; preds = %if.else.i1380, %cond.true66.i1138, %cond.end62.i1135
  %block_available_up.0.i1144 = phi i32 [ %1104, %if.else.i1380 ], [ %cond52.i1134, %cond.end62.i1135 ], [ %cond52.i1134, %cond.true66.i1138 ]
  %block_available_left.1.i1145 = phi i32 [ %1103, %if.else.i1380 ], [ %and.7.i1126, %cond.end62.i1135 ], [ %and.7.i1126, %cond.true66.i1138 ]
  %block_available_up_left.0.i1146 = phi i32 [ %1105, %if.else.i1380 ], [ 0, %cond.end62.i1135 ], [ %conv71.i1142, %cond.true66.i1138 ]
  %block_available_up_right.0.i1147 = phi i32 [ %land.ext.i1056, %if.else.i1380 ], [ %cond63.i1136, %cond.end62.i1135 ], [ %cond63.i1136, %cond.true66.i1138 ]
  %tobool80.not.i1148 = icmp eq i32 %block_available_up.0.i1144, 0
  br i1 %tobool80.not.i1148, label %if.then81.i1361, label %if.then84.i1149

if.then81.i1361:                                  ; preds = %if.end.i1143
  %current_mb_nr.i1362 = getelementptr inbounds i8, ptr %2, i64 108
  %1106 = load i32, ptr %current_mb_nr.i1362, align 4
  %call.i1363 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %1106)
  %dc_pred_value_comp.i1364 = getelementptr inbounds i8, ptr %1045, i64 849060
  %arrayidx107.i1365 = getelementptr inbounds [3 x i32], ptr %dc_pred_value_comp.i1364, i64 0, i64 %idxprom5.i1038
  %1107 = load i32, ptr %arrayidx107.i1365, align 4
  %conv108.i1366 = trunc i32 %1107 to i16
  %arrayidx116.i1374 = getelementptr inbounds i8, ptr %PredPel.i1021, i64 2
  %1108 = insertelement <8 x i16> poison, i16 %conv108.i1366, i64 0
  %1109 = shufflevector <8 x i16> %1108, <8 x i16> poison, <8 x i32> zeroinitializer
  store <8 x i16> %1109, ptr %arrayidx116.i1374, align 2
  br label %if.end117.i1171

if.then84.i1149:                                  ; preds = %if.end.i1143
  %pos_y.i1150 = getelementptr inbounds i8, ptr %pix_b.i1023, i64 14
  %1110 = load i16, ptr %pos_y.i1150, align 2
  %idxprom85.i1151 = sext i16 %1110 to i64
  %arrayidx86.i1152 = getelementptr inbounds ptr, ptr %cond.i1036, i64 %idxprom85.i1151
  %1111 = load ptr, ptr %arrayidx86.i1152, align 8
  %pos_x.i1153 = getelementptr inbounds i8, ptr %pix_b.i1023, i64 12
  %1112 = load i16, ptr %pos_x.i1153, align 4
  %idxprom87.i1154 = sext i16 %1112 to i64
  %arrayidx88.i1155 = getelementptr inbounds i16, ptr %1111, i64 %idxprom87.i1154
  %1113 = load i16, ptr %arrayidx88.i1155, align 2
  %arrayidx90.i1156 = getelementptr inbounds i8, ptr %PredPel.i1021, i64 2
  store i16 %1113, ptr %arrayidx90.i1156, align 2
  %arrayidx91.i1157 = getelementptr inbounds i8, ptr %arrayidx88.i1155, i64 2
  %1114 = load i16, ptr %arrayidx91.i1157, align 2
  %arrayidx92.i1158 = getelementptr inbounds i8, ptr %PredPel.i1021, i64 4
  store i16 %1114, ptr %arrayidx92.i1158, align 4
  %arrayidx93.i1159 = getelementptr inbounds i8, ptr %arrayidx88.i1155, i64 4
  %1115 = load i16, ptr %arrayidx93.i1159, align 2
  %arrayidx94.i1160 = getelementptr inbounds i8, ptr %PredPel.i1021, i64 6
  store i16 %1115, ptr %arrayidx94.i1160, align 2
  %arrayidx95.i1161 = getelementptr inbounds i8, ptr %arrayidx88.i1155, i64 6
  %1116 = load i16, ptr %arrayidx95.i1161, align 2
  %arrayidx96.i1162 = getelementptr inbounds i8, ptr %PredPel.i1021, i64 8
  store i16 %1116, ptr %arrayidx96.i1162, align 8
  %arrayidx97.i1163 = getelementptr inbounds i8, ptr %arrayidx88.i1155, i64 8
  %1117 = load i16, ptr %arrayidx97.i1163, align 2
  %arrayidx98.i1164 = getelementptr inbounds i8, ptr %PredPel.i1021, i64 10
  store i16 %1117, ptr %arrayidx98.i1164, align 2
  %arrayidx99.i1165 = getelementptr inbounds i8, ptr %arrayidx88.i1155, i64 10
  %1118 = load i16, ptr %arrayidx99.i1165, align 2
  %arrayidx100.i1166 = getelementptr inbounds i8, ptr %PredPel.i1021, i64 12
  store i16 %1118, ptr %arrayidx100.i1166, align 4
  %arrayidx101.i1167 = getelementptr inbounds i8, ptr %arrayidx88.i1155, i64 12
  %1119 = load i16, ptr %arrayidx101.i1167, align 2
  %arrayidx102.i1168 = getelementptr inbounds i8, ptr %PredPel.i1021, i64 14
  store i16 %1119, ptr %arrayidx102.i1168, align 2
  %arrayidx103.i1169 = getelementptr inbounds i8, ptr %arrayidx88.i1155, i64 14
  %1120 = load i16, ptr %arrayidx103.i1169, align 2
  %arrayidx104.i1170 = getelementptr inbounds i8, ptr %PredPel.i1021, i64 16
  store i16 %1120, ptr %arrayidx104.i1170, align 16
  br label %if.end117.i1171

if.end117.i1171:                                  ; preds = %if.then84.i1149, %if.then81.i1361
  %1121 = phi i16 [ %conv108.i1366, %if.then81.i1361 ], [ %1120, %if.then84.i1149 ]
  %tobool118.not.i1172 = icmp eq i32 %block_available_up_right.0.i1147, 0
  br i1 %tobool118.not.i1172, label %if.else142.i1352, label %if.then119.i1173

if.then119.i1173:                                 ; preds = %if.end117.i1171
  %pos_y120.i1174 = getelementptr inbounds i8, ptr %pix_c.i1024, i64 14
  %1122 = load i16, ptr %pos_y120.i1174, align 2
  %idxprom121.i1175 = sext i16 %1122 to i64
  %arrayidx122.i1176 = getelementptr inbounds ptr, ptr %cond.i1036, i64 %idxprom121.i1175
  %1123 = load ptr, ptr %arrayidx122.i1176, align 8
  %pos_x123.i1177 = getelementptr inbounds i8, ptr %pix_c.i1024, i64 12
  %1124 = load i16, ptr %pos_x123.i1177, align 4
  %idxprom124.i1178 = sext i16 %1124 to i64
  %arrayidx125.i1179 = getelementptr inbounds i16, ptr %1123, i64 %idxprom124.i1178
  %1125 = load i16, ptr %arrayidx125.i1179, align 2
  %arrayidx127.i1180 = getelementptr inbounds i8, ptr %PredPel.i1021, i64 18
  store i16 %1125, ptr %arrayidx127.i1180, align 2
  %arrayidx128.i1181 = getelementptr inbounds i8, ptr %arrayidx125.i1179, i64 2
  %1126 = load i16, ptr %arrayidx128.i1181, align 2
  %arrayidx129.i1182 = getelementptr inbounds i8, ptr %PredPel.i1021, i64 20
  store i16 %1126, ptr %arrayidx129.i1182, align 4
  %arrayidx130.i1183 = getelementptr inbounds i8, ptr %arrayidx125.i1179, i64 4
  %1127 = load i16, ptr %arrayidx130.i1183, align 2
  %arrayidx131.i1184 = getelementptr inbounds i8, ptr %PredPel.i1021, i64 22
  store i16 %1127, ptr %arrayidx131.i1184, align 2
  %arrayidx132.i1185 = getelementptr inbounds i8, ptr %arrayidx125.i1179, i64 6
  %1128 = load i16, ptr %arrayidx132.i1185, align 2
  %arrayidx133.i1186 = getelementptr inbounds i8, ptr %PredPel.i1021, i64 24
  store i16 %1128, ptr %arrayidx133.i1186, align 8
  %arrayidx134.i1187 = getelementptr inbounds i8, ptr %arrayidx125.i1179, i64 8
  %1129 = load i16, ptr %arrayidx134.i1187, align 2
  %arrayidx135.i1188 = getelementptr inbounds i8, ptr %PredPel.i1021, i64 26
  store i16 %1129, ptr %arrayidx135.i1188, align 2
  %arrayidx136.i1189 = getelementptr inbounds i8, ptr %arrayidx125.i1179, i64 10
  %1130 = load i16, ptr %arrayidx136.i1189, align 2
  %arrayidx137.i1190 = getelementptr inbounds i8, ptr %PredPel.i1021, i64 28
  store i16 %1130, ptr %arrayidx137.i1190, align 4
  %arrayidx138.i1191 = getelementptr inbounds i8, ptr %arrayidx125.i1179, i64 12
  %1131 = load i16, ptr %arrayidx138.i1191, align 2
  %arrayidx139.i1192 = getelementptr inbounds i8, ptr %PredPel.i1021, i64 30
  store i16 %1131, ptr %arrayidx139.i1192, align 2
  %arrayidx140.i1193 = getelementptr inbounds i8, ptr %arrayidx125.i1179, i64 14
  %1132 = load i16, ptr %arrayidx140.i1193, align 2
  %arrayidx141.i1194 = getelementptr inbounds i8, ptr %PredPel.i1021, i64 32
  store i16 %1132, ptr %arrayidx141.i1194, align 16
  br label %if.end152.i1195

if.else142.i1352:                                 ; preds = %if.end117.i1171
  %arrayidx151.i1360 = getelementptr inbounds i8, ptr %PredPel.i1021, i64 18
  %1133 = insertelement <8 x i16> poison, i16 %1121, i64 0
  %1134 = shufflevector <8 x i16> %1133, <8 x i16> poison, <8 x i32> zeroinitializer
  store <8 x i16> %1134, ptr %arrayidx151.i1360, align 2
  br label %if.end152.i1195

if.end152.i1195:                                  ; preds = %if.else142.i1352, %if.then119.i1173
  %tobool153.not.i1196 = icmp eq i32 %block_available_left.1.i1145, 0
  br i1 %tobool153.not.i1196, label %if.else227.i1340, label %if.then154.i1197

if.then154.i1197:                                 ; preds = %if.end152.i1195
  %pos_y156.i1198 = getelementptr inbounds i8, ptr %pix_a.i1022, i64 14
  %1135 = load i16, ptr %pos_y156.i1198, align 2
  %idxprom157.i1199 = sext i16 %1135 to i64
  %arrayidx158.i1200 = getelementptr inbounds ptr, ptr %cond.i1036, i64 %idxprom157.i1199
  %1136 = load ptr, ptr %arrayidx158.i1200, align 8
  %pos_x160.i1201 = getelementptr inbounds i8, ptr %pix_a.i1022, i64 12
  %1137 = load i16, ptr %pos_x160.i1201, align 4
  %idxprom161.i1202 = sext i16 %1137 to i64
  %arrayidx162.i1203 = getelementptr inbounds i16, ptr %1136, i64 %idxprom161.i1202
  %1138 = load i16, ptr %arrayidx162.i1203, align 2
  %arrayidx163.i1204 = getelementptr inbounds i8, ptr %PredPel.i1021, i64 34
  store i16 %1138, ptr %arrayidx163.i1204, align 2
  %pos_y165.i1205 = getelementptr inbounds i8, ptr %pix_a.i1022, i64 30
  %1139 = load i16, ptr %pos_y165.i1205, align 2
  %idxprom166.i1206 = sext i16 %1139 to i64
  %arrayidx167.i1207 = getelementptr inbounds ptr, ptr %cond.i1036, i64 %idxprom166.i1206
  %1140 = load ptr, ptr %arrayidx167.i1207, align 8
  %pos_x169.i1208 = getelementptr inbounds i8, ptr %pix_a.i1022, i64 28
  %1141 = load i16, ptr %pos_x169.i1208, align 4
  %idxprom170.i1209 = sext i16 %1141 to i64
  %arrayidx171.i1210 = getelementptr inbounds i16, ptr %1140, i64 %idxprom170.i1209
  %1142 = load i16, ptr %arrayidx171.i1210, align 2
  %arrayidx172.i1211 = getelementptr inbounds i8, ptr %PredPel.i1021, i64 36
  store i16 %1142, ptr %arrayidx172.i1211, align 4
  %pos_y174.i1212 = getelementptr inbounds i8, ptr %pix_a.i1022, i64 46
  %1143 = load i16, ptr %pos_y174.i1212, align 2
  %idxprom175.i1213 = sext i16 %1143 to i64
  %arrayidx176.i1214 = getelementptr inbounds ptr, ptr %cond.i1036, i64 %idxprom175.i1213
  %1144 = load ptr, ptr %arrayidx176.i1214, align 8
  %pos_x178.i1215 = getelementptr inbounds i8, ptr %pix_a.i1022, i64 44
  %1145 = load i16, ptr %pos_x178.i1215, align 4
  %idxprom179.i1216 = sext i16 %1145 to i64
  %arrayidx180.i1217 = getelementptr inbounds i16, ptr %1144, i64 %idxprom179.i1216
  %1146 = load i16, ptr %arrayidx180.i1217, align 2
  %arrayidx181.i1218 = getelementptr inbounds i8, ptr %PredPel.i1021, i64 38
  store i16 %1146, ptr %arrayidx181.i1218, align 2
  %pos_y183.i1219 = getelementptr inbounds i8, ptr %pix_a.i1022, i64 62
  %1147 = load i16, ptr %pos_y183.i1219, align 2
  %idxprom184.i1220 = sext i16 %1147 to i64
  %arrayidx185.i1221 = getelementptr inbounds ptr, ptr %cond.i1036, i64 %idxprom184.i1220
  %1148 = load ptr, ptr %arrayidx185.i1221, align 8
  %pos_x187.i1222 = getelementptr inbounds i8, ptr %pix_a.i1022, i64 60
  %1149 = load i16, ptr %pos_x187.i1222, align 4
  %idxprom188.i1223 = sext i16 %1149 to i64
  %arrayidx189.i1224 = getelementptr inbounds i16, ptr %1148, i64 %idxprom188.i1223
  %1150 = load i16, ptr %arrayidx189.i1224, align 2
  %arrayidx190.i1225 = getelementptr inbounds i8, ptr %PredPel.i1021, i64 40
  store i16 %1150, ptr %arrayidx190.i1225, align 8
  %pos_y192.i1226 = getelementptr inbounds i8, ptr %pix_a.i1022, i64 78
  %1151 = load i16, ptr %pos_y192.i1226, align 2
  %idxprom193.i1227 = sext i16 %1151 to i64
  %arrayidx194.i1228 = getelementptr inbounds ptr, ptr %cond.i1036, i64 %idxprom193.i1227
  %1152 = load ptr, ptr %arrayidx194.i1228, align 8
  %pos_x196.i1229 = getelementptr inbounds i8, ptr %pix_a.i1022, i64 76
  %1153 = load i16, ptr %pos_x196.i1229, align 4
  %idxprom197.i1230 = sext i16 %1153 to i64
  %arrayidx198.i1231 = getelementptr inbounds i16, ptr %1152, i64 %idxprom197.i1230
  %1154 = load i16, ptr %arrayidx198.i1231, align 2
  %arrayidx199.i1232 = getelementptr inbounds i8, ptr %PredPel.i1021, i64 42
  store i16 %1154, ptr %arrayidx199.i1232, align 2
  %pos_y201.i1233 = getelementptr inbounds i8, ptr %pix_a.i1022, i64 94
  %1155 = load i16, ptr %pos_y201.i1233, align 2
  %idxprom202.i1234 = sext i16 %1155 to i64
  %arrayidx203.i1235 = getelementptr inbounds ptr, ptr %cond.i1036, i64 %idxprom202.i1234
  %1156 = load ptr, ptr %arrayidx203.i1235, align 8
  %pos_x205.i1236 = getelementptr inbounds i8, ptr %pix_a.i1022, i64 92
  %1157 = load i16, ptr %pos_x205.i1236, align 4
  %idxprom206.i1237 = sext i16 %1157 to i64
  %arrayidx207.i1238 = getelementptr inbounds i16, ptr %1156, i64 %idxprom206.i1237
  %1158 = load i16, ptr %arrayidx207.i1238, align 2
  %arrayidx208.i1239 = getelementptr inbounds i8, ptr %PredPel.i1021, i64 44
  store i16 %1158, ptr %arrayidx208.i1239, align 4
  %pos_y210.i1240 = getelementptr inbounds i8, ptr %pix_a.i1022, i64 110
  %1159 = load i16, ptr %pos_y210.i1240, align 2
  %idxprom211.i1241 = sext i16 %1159 to i64
  %arrayidx212.i1242 = getelementptr inbounds ptr, ptr %cond.i1036, i64 %idxprom211.i1241
  %1160 = load ptr, ptr %arrayidx212.i1242, align 8
  %pos_x214.i1243 = getelementptr inbounds i8, ptr %pix_a.i1022, i64 108
  %1161 = load i16, ptr %pos_x214.i1243, align 4
  %idxprom215.i1244 = sext i16 %1161 to i64
  %arrayidx216.i1245 = getelementptr inbounds i16, ptr %1160, i64 %idxprom215.i1244
  %1162 = load i16, ptr %arrayidx216.i1245, align 2
  %arrayidx217.i1246 = getelementptr inbounds i8, ptr %PredPel.i1021, i64 46
  store i16 %1162, ptr %arrayidx217.i1246, align 2
  %pos_y219.i1247 = getelementptr inbounds i8, ptr %pix_a.i1022, i64 126
  %1163 = load i16, ptr %pos_y219.i1247, align 2
  %idxprom220.i1248 = sext i16 %1163 to i64
  %arrayidx221.i1249 = getelementptr inbounds ptr, ptr %cond.i1036, i64 %idxprom220.i1248
  %1164 = load ptr, ptr %arrayidx221.i1249, align 8
  %pos_x223.i1250 = getelementptr inbounds i8, ptr %pix_a.i1022, i64 124
  %1165 = load i16, ptr %pos_x223.i1250, align 4
  %idxprom224.i1251 = sext i16 %1165 to i64
  %arrayidx225.i1252 = getelementptr inbounds i16, ptr %1164, i64 %idxprom224.i1251
  %1166 = load i16, ptr %arrayidx225.i1252, align 2
  %arrayidx226.i1253 = getelementptr inbounds i8, ptr %PredPel.i1021, i64 48
  store i16 %1166, ptr %arrayidx226.i1253, align 16
  br label %if.end240.i1254

if.else227.i1340:                                 ; preds = %if.end152.i1195
  %dc_pred_value_comp228.i1341 = getelementptr inbounds i8, ptr %1045, i64 849060
  %arrayidx230.i1342 = getelementptr inbounds [3 x i32], ptr %dc_pred_value_comp228.i1341, i64 0, i64 %idxprom5.i1038
  %1167 = load i32, ptr %arrayidx230.i1342, align 4
  %conv231.i1343 = trunc i32 %1167 to i16
  %arrayidx239.i1351 = getelementptr inbounds i8, ptr %PredPel.i1021, i64 34
  %1168 = insertelement <8 x i16> poison, i16 %conv231.i1343, i64 0
  %1169 = shufflevector <8 x i16> %1168, <8 x i16> poison, <8 x i32> zeroinitializer
  store <8 x i16> %1169, ptr %arrayidx239.i1351, align 2
  br label %if.end240.i1254

if.end240.i1254:                                  ; preds = %if.else227.i1340, %if.then154.i1197
  %tobool241.not.i1255 = icmp eq i32 %block_available_up_left.0.i1146, 0
  br i1 %tobool241.not.i1255, label %if.else250.i1336, label %if.then242.i1256

if.then242.i1256:                                 ; preds = %if.end240.i1254
  %pos_y243.i1257 = getelementptr inbounds i8, ptr %pix_d.i1025, i64 14
  %1170 = load i16, ptr %pos_y243.i1257, align 2
  %idxprom244.i1258 = sext i16 %1170 to i64
  %arrayidx245.i1259 = getelementptr inbounds ptr, ptr %cond.i1036, i64 %idxprom244.i1258
  %1171 = load ptr, ptr %arrayidx245.i1259, align 8
  %pos_x246.i1260 = getelementptr inbounds i8, ptr %pix_d.i1025, i64 12
  %1172 = load i16, ptr %pos_x246.i1260, align 4
  %idxprom247.i1261 = sext i16 %1172 to i64
  %arrayidx248.i1262 = getelementptr inbounds i16, ptr %1171, i64 %idxprom247.i1261
  %1173 = load i16, ptr %arrayidx248.i1262, align 2
  br label %intra8x8_vert_left_pred_mbaff.exit

if.else250.i1336:                                 ; preds = %if.end240.i1254
  %dc_pred_value_comp251.i1337 = getelementptr inbounds i8, ptr %1045, i64 849060
  %arrayidx253.i1338 = getelementptr inbounds [3 x i32], ptr %dc_pred_value_comp251.i1337, i64 0, i64 %idxprom5.i1038
  %1174 = load i32, ptr %arrayidx253.i1338, align 4
  %conv254.i1339 = trunc i32 %1174 to i16
  br label %intra8x8_vert_left_pred_mbaff.exit

intra8x8_vert_left_pred_mbaff.exit:               ; preds = %if.then242.i1256, %if.else250.i1336
  %storemerge.i1263 = phi i16 [ %1173, %if.then242.i1256 ], [ %conv254.i1339, %if.else250.i1336 ]
  store i16 %storemerge.i1263, ptr %PredPel.i1021, align 16
  call fastcc void @LowPassForIntra8x8Pred(ptr noundef nonnull %PredPel.i1021, i32 noundef %block_available_up_left.0.i1146, i32 noundef %block_available_up.0.i1144, i32 noundef %block_available_left.1.i1145)
  %1175 = sext i32 %joff to i64
  %arrayidx258.i1265 = getelementptr inbounds i8, ptr %PredPel.i1021, i64 2
  %1176 = load i16, ptr %arrayidx258.i1265, align 2
  %conv259.i1266 = zext i16 %1176 to i32
  %arrayidx260.i1267 = getelementptr inbounds i8, ptr %PredPel.i1021, i64 4
  %1177 = load i16, ptr %arrayidx260.i1267, align 4
  %conv261.i1268 = zext i16 %1177 to i32
  %add262.i1269 = add nuw nsw i32 %conv261.i1268, 1
  %add263.i = add nuw nsw i32 %add262.i1269, %conv259.i1266
  %shr.i1270 = lshr i32 %add263.i, 1
  %conv264.i1271 = trunc nuw i32 %shr.i1270 to i16
  %arrayidx267.i = getelementptr inbounds i8, ptr %PredPel.i1021, i64 6
  %1178 = load i16, ptr %arrayidx267.i, align 2
  %conv268.i = zext i16 %1178 to i32
  %add270.i1272 = add nuw nsw i32 %add262.i1269, %conv268.i
  %shr271.i = lshr i32 %add270.i1272, 1
  %conv272.i1273 = trunc nuw i32 %shr271.i to i16
  %arrayidx276.i1274 = getelementptr inbounds i8, ptr %PredPel.i1021, i64 8
  %1179 = load i16, ptr %arrayidx276.i1274, align 8
  %conv277.i1275 = zext i16 %1179 to i32
  %add278.i = add nuw nsw i32 %conv277.i1275, 1
  %add279.i1276 = add nuw nsw i32 %add278.i, %conv268.i
  %shr280.i = lshr i32 %add279.i1276, 1
  %conv281.i1277 = trunc nuw i32 %shr280.i to i16
  %arrayidx285.i = getelementptr inbounds i8, ptr %PredPel.i1021, i64 10
  %1180 = load i16, ptr %arrayidx285.i, align 2
  %conv286.i = zext i16 %1180 to i32
  %add288.i1278 = add nuw nsw i32 %add278.i, %conv286.i
  %shr289.i = lshr i32 %add288.i1278, 1
  %conv290.i1279 = trunc nuw i32 %shr289.i to i16
  %arrayidx294.i = getelementptr inbounds i8, ptr %PredPel.i1021, i64 12
  %1181 = load i16, ptr %arrayidx294.i, align 4
  %conv295.i1280 = zext i16 %1181 to i32
  %add296.i = add nuw nsw i32 %conv286.i, 1
  %add297.i1281 = add nuw nsw i32 %add296.i, %conv295.i1280
  %shr298.i = lshr i32 %add297.i1281, 1
  %conv299.i1282 = trunc nuw i32 %shr298.i to i16
  %arrayidx303.i = getelementptr inbounds i8, ptr %PredPel.i1021, i64 14
  %1182 = load i16, ptr %arrayidx303.i, align 2
  %conv304.i1283 = zext i16 %1182 to i32
  %add305.i1284 = add nuw nsw i32 %conv295.i1280, 1
  %add306.i1285 = add nuw nsw i32 %add305.i1284, %conv304.i1283
  %shr307.i1286 = lshr i32 %add306.i1285, 1
  %conv308.i1287 = trunc nuw i32 %shr307.i1286 to i16
  %arrayidx312.i1288 = getelementptr inbounds i8, ptr %PredPel.i1021, i64 16
  %1183 = load i16, ptr %arrayidx312.i1288, align 16
  %conv313.i1289 = zext i16 %1183 to i32
  %add314.i1290 = add nuw nsw i32 %conv304.i1283, 1
  %add315.i1291 = add nuw nsw i32 %add314.i1290, %conv313.i1289
  %shr316.i = lshr i32 %add315.i1291, 1
  %conv317.i = trunc nuw i32 %shr316.i to i16
  %arrayidx321.i1292 = getelementptr inbounds i8, ptr %PredPel.i1021, i64 18
  %1184 = load i16, ptr %arrayidx321.i1292, align 2
  %conv322.i1293 = zext i16 %1184 to i32
  %add323.i1294 = add nuw nsw i32 %conv313.i1289, 1
  %add324.i1295 = add nuw nsw i32 %add323.i1294, %conv322.i1293
  %shr325.i = lshr i32 %add324.i1295, 1
  %conv326.i1296 = trunc nuw i32 %shr325.i to i16
  %arrayidx330.i = getelementptr inbounds i8, ptr %PredPel.i1021, i64 20
  %1185 = load i16, ptr %arrayidx330.i, align 4
  %conv331.i1297 = zext i16 %1185 to i32
  %add332.i1298 = add nuw nsw i32 %conv322.i1293, 1
  %add333.i1299 = add nuw nsw i32 %add332.i1298, %conv331.i1297
  %shr334.i1300 = lshr i32 %add333.i1299, 1
  %conv335.i = trunc nuw i32 %shr334.i1300 to i16
  %arrayidx339.i = getelementptr inbounds i8, ptr %PredPel.i1021, i64 22
  %1186 = load i16, ptr %arrayidx339.i, align 2
  %conv340.i1301 = zext i16 %1186 to i32
  %add341.i1302 = add nuw nsw i32 %conv331.i1297, 1
  %add342.i1303 = add nuw nsw i32 %add341.i1302, %conv340.i1301
  %shr343.i1304 = lshr i32 %add342.i1303, 1
  %conv344.i1305 = trunc nuw i32 %shr343.i1304 to i16
  %arrayidx348.i1306 = getelementptr inbounds i8, ptr %PredPel.i1021, i64 24
  %1187 = load i16, ptr %arrayidx348.i1306, align 8
  %conv349.i1307 = zext i16 %1187 to i32
  %add350.i1308 = add nuw nsw i32 %conv340.i1301, 1
  %add351.i = add nuw nsw i32 %add350.i1308, %conv349.i1307
  %shr352.i = lshr i32 %add351.i, 1
  %conv353.i = trunc nuw i32 %shr352.i to i16
  %mul.i1309 = shl nuw nsw i32 %conv261.i1268, 1
  %add359.i1310 = add nuw nsw i32 %conv268.i, 2
  %add362.i1311 = add nuw nsw i32 %mul.i1309, %conv259.i1266
  %add363.i1312 = add nuw nsw i32 %add362.i1311, %add359.i1310
  %shr364.i1313 = lshr i32 %add363.i1312, 2
  %conv365.i1314 = trunc nuw i32 %shr364.i1313 to i16
  %mul374.i = shl nuw nsw i32 %conv268.i, 1
  %add371.i1315 = add nuw nsw i32 %conv277.i1275, 2
  %add375.i = add nuw nsw i32 %mul374.i, %conv261.i1268
  %add376.i1316 = add nuw nsw i32 %add375.i, %add371.i1315
  %shr377.i = lshr i32 %add376.i1316, 2
  %conv378.i1317 = trunc nuw i32 %shr377.i to i16
  %mul387.i = shl nuw nsw i32 %conv277.i1275, 1
  %add388.i = add nuw nsw i32 %add359.i1310, %conv286.i
  %add389.i1318 = add nuw nsw i32 %add388.i, %mul387.i
  %shr390.i = lshr i32 %add389.i1318, 2
  %conv391.i1319 = trunc nuw i32 %shr390.i to i16
  %mul400.i = shl nuw nsw i32 %conv286.i, 1
  %add401.i = add nuw nsw i32 %add371.i1315, %conv295.i1280
  %add402.i1320 = add nuw nsw i32 %add401.i, %mul400.i
  %shr403.i = lshr i32 %add402.i1320, 2
  %conv404.i1321 = trunc nuw i32 %shr403.i to i16
  %mul413.i = shl nuw nsw i32 %conv295.i1280, 1
  %add410.i1322 = add nuw nsw i32 %conv304.i1283, 2
  %add414.i = add nuw nsw i32 %add410.i1322, %conv286.i
  %add415.i1323 = add nuw nsw i32 %add414.i, %mul413.i
  %shr416.i = lshr i32 %add415.i1323, 2
  %conv417.i1324 = trunc nuw i32 %shr416.i to i16
  %mul426.i = shl nuw nsw i32 %conv304.i1283, 1
  %add423.i1325 = add nuw nsw i32 %conv313.i1289, 2
  %add427.i = add nuw nsw i32 %add423.i1325, %conv295.i1280
  %add428.i1326 = add nuw nsw i32 %add427.i, %mul426.i
  %shr429.i = lshr i32 %add428.i1326, 2
  %conv430.i1327 = trunc nuw i32 %shr429.i to i16
  %mul439.i = shl nuw nsw i32 %conv313.i1289, 1
  %add440.i = add nuw nsw i32 %add410.i1322, %conv322.i1293
  %add441.i = add nuw nsw i32 %add440.i, %mul439.i
  %shr442.i = lshr i32 %add441.i, 2
  %conv443.i1329 = trunc nuw i32 %shr442.i to i16
  %mul452.i = shl nuw nsw i32 %conv322.i1293, 1
  %add453.i = add nuw nsw i32 %add423.i1325, %conv331.i1297
  %add454.i = add nuw nsw i32 %add453.i, %mul452.i
  %shr455.i = lshr i32 %add454.i, 2
  %conv456.i = trunc nuw i32 %shr455.i to i16
  %mul465.i = shl nuw nsw i32 %conv331.i1297, 1
  %add462.i = add nuw nsw i32 %conv322.i1293, 2
  %add466.i = add nuw nsw i32 %add462.i, %conv340.i1301
  %add467.i = add nuw nsw i32 %add466.i, %mul465.i
  %shr468.i = lshr i32 %add467.i, 2
  %conv469.i = trunc nuw i32 %shr468.i to i16
  %mul478.i = shl nuw nsw i32 %conv340.i1301, 1
  %add475.i = add nuw nsw i32 %conv331.i1297, 2
  %add479.i = add nuw nsw i32 %add475.i, %conv349.i1307
  %add480.i = add nuw nsw i32 %add479.i, %mul478.i
  %shr481.i = lshr i32 %add480.i, 2
  %conv482.i = trunc nuw i32 %shr481.i to i16
  %arrayidx486.i = getelementptr inbounds i8, ptr %PredPel.i1021, i64 26
  %1188 = load i16, ptr %arrayidx486.i, align 2
  %conv487.i = zext i16 %1188 to i32
  %mul491.i = shl nuw nsw i32 %conv349.i1307, 1
  %add488.i = add nuw nsw i32 %conv340.i1301, 2
  %add492.i = add nuw nsw i32 %add488.i, %conv487.i
  %add493.i = add nuw nsw i32 %add492.i, %mul491.i
  %shr494.i = lshr i32 %add493.i, 2
  %conv495.i = trunc nuw i32 %shr494.i to i16
  %arrayidx498.i1331 = getelementptr inbounds ptr, ptr %1049, i64 %1175
  %1189 = load ptr, ptr %arrayidx498.i1331, align 8
  %idxprom499.i = sext i32 %ioff to i64
  %arrayidx500.i = getelementptr inbounds i16, ptr %1189, i64 %idxprom499.i
  store i16 %conv264.i1271, ptr %arrayidx500.i, align 2
  %PredArray.sroa.4.0.arrayidx500.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx500.i, i64 2
  store i16 %conv272.i1273, ptr %PredArray.sroa.4.0.arrayidx500.sroa_idx.i, align 2
  %PredArray.sroa.6.0.arrayidx500.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx500.i, i64 4
  store i16 %conv281.i1277, ptr %PredArray.sroa.6.0.arrayidx500.sroa_idx.i, align 2
  %PredArray.sroa.8.0.arrayidx500.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx500.i, i64 6
  store i16 %conv290.i1279, ptr %PredArray.sroa.8.0.arrayidx500.sroa_idx.i, align 2
  %PredArray.sroa.10.0.arrayidx500.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx500.i, i64 8
  store i16 %conv299.i1282, ptr %PredArray.sroa.10.0.arrayidx500.sroa_idx.i, align 2
  %PredArray.sroa.11.0.arrayidx500.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx500.i, i64 10
  store i16 %conv308.i1287, ptr %PredArray.sroa.11.0.arrayidx500.sroa_idx.i, align 2
  %PredArray.sroa.12.0.arrayidx500.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx500.i, i64 12
  store i16 %conv317.i, ptr %PredArray.sroa.12.0.arrayidx500.sroa_idx.i, align 2
  %PredArray.sroa.13.0.arrayidx500.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx500.i, i64 14
  store i16 %conv326.i1296, ptr %PredArray.sroa.13.0.arrayidx500.sroa_idx.i, align 2
  %arrayidx504.i = getelementptr i8, ptr %arrayidx498.i1331, i64 8
  %1190 = load ptr, ptr %arrayidx504.i, align 8
  %arrayidx506.i = getelementptr inbounds i16, ptr %1190, i64 %idxprom499.i
  store i16 %conv365.i1314, ptr %arrayidx506.i, align 2
  %PredArray.sroa.19.22.arrayidx506.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx506.i, i64 2
  store i16 %conv378.i1317, ptr %PredArray.sroa.19.22.arrayidx506.sroa_idx.i, align 2
  %PredArray.sroa.21.22.arrayidx506.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx506.i, i64 4
  store i16 %conv391.i1319, ptr %PredArray.sroa.21.22.arrayidx506.sroa_idx.i, align 2
  %PredArray.sroa.23.22.arrayidx506.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx506.i, i64 6
  store i16 %conv404.i1321, ptr %PredArray.sroa.23.22.arrayidx506.sroa_idx.i, align 2
  %PredArray.sroa.25.22.arrayidx506.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx506.i, i64 8
  store i16 %conv417.i1324, ptr %PredArray.sroa.25.22.arrayidx506.sroa_idx.i, align 2
  %PredArray.sroa.26.22.arrayidx506.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx506.i, i64 10
  store i16 %conv430.i1327, ptr %PredArray.sroa.26.22.arrayidx506.sroa_idx.i, align 2
  %PredArray.sroa.27.22.arrayidx506.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx506.i, i64 12
  store i16 %conv443.i1329, ptr %PredArray.sroa.27.22.arrayidx506.sroa_idx.i, align 2
  %PredArray.sroa.28.22.arrayidx506.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx506.i, i64 14
  store i16 %conv456.i, ptr %PredArray.sroa.28.22.arrayidx506.sroa_idx.i, align 2
  %arrayidx510.i = getelementptr i8, ptr %arrayidx498.i1331, i64 16
  %1191 = load ptr, ptr %arrayidx510.i, align 8
  %arrayidx512.i = getelementptr inbounds i16, ptr %1191, i64 %idxprom499.i
  store i16 %conv272.i1273, ptr %arrayidx512.i, align 2
  %PredArray.sroa.6.2.arrayidx512.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx512.i, i64 2
  store i16 %conv281.i1277, ptr %PredArray.sroa.6.2.arrayidx512.sroa_idx.i, align 2
  %PredArray.sroa.8.2.arrayidx512.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx512.i, i64 4
  store i16 %conv290.i1279, ptr %PredArray.sroa.8.2.arrayidx512.sroa_idx.i, align 2
  %PredArray.sroa.10.2.arrayidx512.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx512.i, i64 6
  store i16 %conv299.i1282, ptr %PredArray.sroa.10.2.arrayidx512.sroa_idx.i, align 2
  %PredArray.sroa.11.2.arrayidx512.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx512.i, i64 8
  store i16 %conv308.i1287, ptr %PredArray.sroa.11.2.arrayidx512.sroa_idx.i, align 2
  %PredArray.sroa.12.2.arrayidx512.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx512.i, i64 10
  store i16 %conv317.i, ptr %PredArray.sroa.12.2.arrayidx512.sroa_idx.i, align 2
  %PredArray.sroa.13.2.arrayidx512.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx512.i, i64 12
  store i16 %conv326.i1296, ptr %PredArray.sroa.13.2.arrayidx512.sroa_idx.i, align 2
  %PredArray.sroa.14.2.arrayidx512.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx512.i, i64 14
  store i16 %conv335.i, ptr %PredArray.sroa.14.2.arrayidx512.sroa_idx.i, align 2
  %arrayidx516.i1332 = getelementptr i8, ptr %arrayidx498.i1331, i64 24
  %1192 = load ptr, ptr %arrayidx516.i1332, align 8
  %arrayidx518.i = getelementptr inbounds i16, ptr %1192, i64 %idxprom499.i
  store i16 %conv378.i1317, ptr %arrayidx518.i, align 2
  %PredArray.sroa.21.24.arrayidx518.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx518.i, i64 2
  store i16 %conv391.i1319, ptr %PredArray.sroa.21.24.arrayidx518.sroa_idx.i, align 2
  %PredArray.sroa.23.24.arrayidx518.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx518.i, i64 4
  store i16 %conv404.i1321, ptr %PredArray.sroa.23.24.arrayidx518.sroa_idx.i, align 2
  %PredArray.sroa.25.24.arrayidx518.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx518.i, i64 6
  store i16 %conv417.i1324, ptr %PredArray.sroa.25.24.arrayidx518.sroa_idx.i, align 2
  %PredArray.sroa.26.24.arrayidx518.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx518.i, i64 8
  store i16 %conv430.i1327, ptr %PredArray.sroa.26.24.arrayidx518.sroa_idx.i, align 2
  %PredArray.sroa.27.24.arrayidx518.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx518.i, i64 10
  store i16 %conv443.i1329, ptr %PredArray.sroa.27.24.arrayidx518.sroa_idx.i, align 2
  %PredArray.sroa.28.24.arrayidx518.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx518.i, i64 12
  store i16 %conv456.i, ptr %PredArray.sroa.28.24.arrayidx518.sroa_idx.i, align 2
  %PredArray.sroa.29.24.arrayidx518.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx518.i, i64 14
  store i16 %conv469.i, ptr %PredArray.sroa.29.24.arrayidx518.sroa_idx.i, align 2
  %arrayidx522.i1333 = getelementptr i8, ptr %arrayidx498.i1331, i64 32
  %1193 = load ptr, ptr %arrayidx522.i1333, align 8
  %arrayidx524.i = getelementptr inbounds i16, ptr %1193, i64 %idxprom499.i
  store i16 %conv281.i1277, ptr %arrayidx524.i, align 2
  %PredArray.sroa.8.4.arrayidx524.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx524.i, i64 2
  store i16 %conv290.i1279, ptr %PredArray.sroa.8.4.arrayidx524.sroa_idx.i, align 2
  %PredArray.sroa.10.4.arrayidx524.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx524.i, i64 4
  store i16 %conv299.i1282, ptr %PredArray.sroa.10.4.arrayidx524.sroa_idx.i, align 2
  %PredArray.sroa.11.4.arrayidx524.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx524.i, i64 6
  store i16 %conv308.i1287, ptr %PredArray.sroa.11.4.arrayidx524.sroa_idx.i, align 2
  %PredArray.sroa.12.4.arrayidx524.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx524.i, i64 8
  store i16 %conv317.i, ptr %PredArray.sroa.12.4.arrayidx524.sroa_idx.i, align 2
  %PredArray.sroa.13.4.arrayidx524.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx524.i, i64 10
  store i16 %conv326.i1296, ptr %PredArray.sroa.13.4.arrayidx524.sroa_idx.i, align 2
  %PredArray.sroa.14.4.arrayidx524.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx524.i, i64 12
  store i16 %conv335.i, ptr %PredArray.sroa.14.4.arrayidx524.sroa_idx.i, align 2
  %PredArray.sroa.15.4.arrayidx524.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx524.i, i64 14
  store i16 %conv344.i1305, ptr %PredArray.sroa.15.4.arrayidx524.sroa_idx.i, align 2
  %arrayidx528.i1334 = getelementptr i8, ptr %arrayidx498.i1331, i64 40
  %1194 = load ptr, ptr %arrayidx528.i1334, align 8
  %arrayidx530.i = getelementptr inbounds i16, ptr %1194, i64 %idxprom499.i
  store i16 %conv391.i1319, ptr %arrayidx530.i, align 2
  %PredArray.sroa.23.26.arrayidx530.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx530.i, i64 2
  store i16 %conv404.i1321, ptr %PredArray.sroa.23.26.arrayidx530.sroa_idx.i, align 2
  %PredArray.sroa.25.26.arrayidx530.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx530.i, i64 4
  store i16 %conv417.i1324, ptr %PredArray.sroa.25.26.arrayidx530.sroa_idx.i, align 2
  %PredArray.sroa.26.26.arrayidx530.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx530.i, i64 6
  store i16 %conv430.i1327, ptr %PredArray.sroa.26.26.arrayidx530.sroa_idx.i, align 2
  %PredArray.sroa.27.26.arrayidx530.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx530.i, i64 8
  store i16 %conv443.i1329, ptr %PredArray.sroa.27.26.arrayidx530.sroa_idx.i, align 2
  %PredArray.sroa.28.26.arrayidx530.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx530.i, i64 10
  store i16 %conv456.i, ptr %PredArray.sroa.28.26.arrayidx530.sroa_idx.i, align 2
  %PredArray.sroa.29.26.arrayidx530.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx530.i, i64 12
  store i16 %conv469.i, ptr %PredArray.sroa.29.26.arrayidx530.sroa_idx.i, align 2
  %PredArray.sroa.30.26.arrayidx530.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx530.i, i64 14
  store i16 %conv482.i, ptr %PredArray.sroa.30.26.arrayidx530.sroa_idx.i, align 2
  %arrayidx534.i1335 = getelementptr i8, ptr %arrayidx498.i1331, i64 48
  %1195 = load ptr, ptr %arrayidx534.i1335, align 8
  %arrayidx536.i = getelementptr inbounds i16, ptr %1195, i64 %idxprom499.i
  store i16 %conv290.i1279, ptr %arrayidx536.i, align 2
  %PredArray.sroa.10.6.arrayidx536.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx536.i, i64 2
  store i16 %conv299.i1282, ptr %PredArray.sroa.10.6.arrayidx536.sroa_idx.i, align 2
  %PredArray.sroa.11.6.arrayidx536.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx536.i, i64 4
  store i16 %conv308.i1287, ptr %PredArray.sroa.11.6.arrayidx536.sroa_idx.i, align 2
  %PredArray.sroa.12.6.arrayidx536.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx536.i, i64 6
  store i16 %conv317.i, ptr %PredArray.sroa.12.6.arrayidx536.sroa_idx.i, align 2
  %PredArray.sroa.13.6.arrayidx536.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx536.i, i64 8
  store i16 %conv326.i1296, ptr %PredArray.sroa.13.6.arrayidx536.sroa_idx.i, align 2
  %PredArray.sroa.14.6.arrayidx536.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx536.i, i64 10
  store i16 %conv335.i, ptr %PredArray.sroa.14.6.arrayidx536.sroa_idx.i, align 2
  %PredArray.sroa.15.6.arrayidx536.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx536.i, i64 12
  store i16 %conv344.i1305, ptr %PredArray.sroa.15.6.arrayidx536.sroa_idx.i, align 2
  %PredArray.sroa.16.6.arrayidx536.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx536.i, i64 14
  store i16 %conv353.i, ptr %PredArray.sroa.16.6.arrayidx536.sroa_idx.i, align 2
  %arrayidx539.i = getelementptr i8, ptr %arrayidx498.i1331, i64 56
  %1196 = load ptr, ptr %arrayidx539.i, align 8
  %arrayidx541.i = getelementptr inbounds i16, ptr %1196, i64 %idxprom499.i
  store i16 %conv404.i1321, ptr %arrayidx541.i, align 2
  %PredArray.sroa.25.28.arrayidx541.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx541.i, i64 2
  store i16 %conv417.i1324, ptr %PredArray.sroa.25.28.arrayidx541.sroa_idx.i, align 2
  %PredArray.sroa.26.28.arrayidx541.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx541.i, i64 4
  store i16 %conv430.i1327, ptr %PredArray.sroa.26.28.arrayidx541.sroa_idx.i, align 2
  %PredArray.sroa.27.28.arrayidx541.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx541.i, i64 6
  store i16 %conv443.i1329, ptr %PredArray.sroa.27.28.arrayidx541.sroa_idx.i, align 2
  %PredArray.sroa.28.28.arrayidx541.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx541.i, i64 8
  store i16 %conv456.i, ptr %PredArray.sroa.28.28.arrayidx541.sroa_idx.i, align 2
  %PredArray.sroa.29.28.arrayidx541.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx541.i, i64 10
  store i16 %conv469.i, ptr %PredArray.sroa.29.28.arrayidx541.sroa_idx.i, align 2
  %PredArray.sroa.30.28.arrayidx541.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx541.i, i64 12
  store i16 %conv482.i, ptr %PredArray.sroa.30.28.arrayidx541.sroa_idx.i, align 2
  %PredArray.sroa.31.28.arrayidx541.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx541.i, i64 14
  store i16 %conv495.i, ptr %PredArray.sroa.31.28.arrayidx541.sroa_idx.i, align 2
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pix_d.i1025) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pix_c.i1024) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pix_b.i1023) #6
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %pix_a.i1022) #6
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %PredPel.i1021) #6
  br label %cleanup

sw.bb19:                                          ; preds = %entry
  %p_Vid1.i1388 = getelementptr inbounds i8, ptr %currMB, i64 8
  %1197 = load ptr, ptr %p_Vid1.i1388, align 8
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %PredPel.i1383) #6
  %tobool.not.i1389 = icmp eq i32 %pl, 0
  %dec_picture2.i1390 = getelementptr inbounds i8, ptr %2, i64 13520
  %1198 = load ptr, ptr %dec_picture2.i1390, align 8
  br i1 %tobool.not.i1389, label %cond.false.i1583, label %cond.true.i1391

cond.true.i1391:                                  ; preds = %sw.bb19
  %imgUV.i1392 = getelementptr inbounds i8, ptr %1198, i64 136
  %1199 = load ptr, ptr %imgUV.i1392, align 8
  %sub.i1393 = add i32 %pl, -1
  %idxprom.i1394 = zext i32 %sub.i1393 to i64
  %arrayidx.i1395 = getelementptr inbounds ptr, ptr %1199, i64 %idxprom.i1394
  br label %cond.end.i1396

cond.false.i1583:                                 ; preds = %sw.bb19
  %imgY3.i1584 = getelementptr inbounds i8, ptr %1198, i64 128
  br label %cond.end.i1396

cond.end.i1396:                                   ; preds = %cond.false.i1583, %cond.true.i1391
  %cond.in.i1397 = phi ptr [ %arrayidx.i1395, %cond.true.i1391 ], [ %imgY3.i1584, %cond.false.i1583 ]
  %cond.i1398 = load ptr, ptr %cond.in.i1397, align 8
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %pix_a.i1384) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pix_b.i1385) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pix_c.i1386) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pix_d.i1387) #6
  %mb_pred.i1399 = getelementptr inbounds i8, ptr %2, i64 1248
  %1200 = load ptr, ptr %mb_pred.i1399, align 8
  %idxprom17.i = zext i32 %pl to i64
  %arrayidx18.i = getelementptr inbounds ptr, ptr %1200, i64 %idxprom17.i
  %1201 = load ptr, ptr %arrayidx18.i, align 8
  %mb_size19.i = getelementptr inbounds i8, ptr %1197, i64 849124
  %sub21.i = add nsw i32 %ioff, -1
  call void @getAffNeighbour(ptr noundef nonnull %currMB, i32 noundef %sub21.i, i32 noundef %joff, ptr noundef nonnull %mb_size19.i, ptr noundef nonnull %pix_a.i1384) #6
  %1202 = add i32 %joff, 1
  %arrayidx24.1.i = getelementptr inbounds i8, ptr %pix_a.i1384, i64 16
  call void @getAffNeighbour(ptr noundef nonnull %currMB, i32 noundef %sub21.i, i32 noundef %1202, ptr noundef nonnull %mb_size19.i, ptr noundef nonnull %arrayidx24.1.i) #6
  %1203 = add i32 %joff, 2
  %arrayidx24.2.i = getelementptr inbounds i8, ptr %pix_a.i1384, i64 32
  call void @getAffNeighbour(ptr noundef nonnull %currMB, i32 noundef %sub21.i, i32 noundef %1203, ptr noundef nonnull %mb_size19.i, ptr noundef nonnull %arrayidx24.2.i) #6
  %1204 = add i32 %joff, 3
  %arrayidx24.3.i = getelementptr inbounds i8, ptr %pix_a.i1384, i64 48
  call void @getAffNeighbour(ptr noundef nonnull %currMB, i32 noundef %sub21.i, i32 noundef %1204, ptr noundef nonnull %mb_size19.i, ptr noundef nonnull %arrayidx24.3.i) #6
  %1205 = add i32 %joff, 4
  %arrayidx24.4.i = getelementptr inbounds i8, ptr %pix_a.i1384, i64 64
  call void @getAffNeighbour(ptr noundef nonnull %currMB, i32 noundef %sub21.i, i32 noundef %1205, ptr noundef nonnull %mb_size19.i, ptr noundef nonnull %arrayidx24.4.i) #6
  %1206 = add i32 %joff, 5
  %arrayidx24.5.i = getelementptr inbounds i8, ptr %pix_a.i1384, i64 80
  call void @getAffNeighbour(ptr noundef nonnull %currMB, i32 noundef %sub21.i, i32 noundef %1206, ptr noundef nonnull %mb_size19.i, ptr noundef nonnull %arrayidx24.5.i) #6
  %1207 = add i32 %joff, 6
  %arrayidx24.6.i = getelementptr inbounds i8, ptr %pix_a.i1384, i64 96
  call void @getAffNeighbour(ptr noundef nonnull %currMB, i32 noundef %sub21.i, i32 noundef %1207, ptr noundef nonnull %mb_size19.i, ptr noundef nonnull %arrayidx24.6.i) #6
  %1208 = add i32 %joff, 7
  %arrayidx24.7.i = getelementptr inbounds i8, ptr %pix_a.i1384, i64 112
  call void @getAffNeighbour(ptr noundef nonnull %currMB, i32 noundef %sub21.i, i32 noundef %1208, ptr noundef nonnull %mb_size19.i, ptr noundef nonnull %arrayidx24.7.i) #6
  %sub25.i = add nsw i32 %joff, -1
  call void @getAffNeighbour(ptr noundef nonnull %currMB, i32 noundef %ioff, i32 noundef %sub25.i, ptr noundef nonnull %mb_size19.i, ptr noundef nonnull %pix_b.i1385) #6
  %add26.i = add nsw i32 %ioff, 8
  call void @getAffNeighbour(ptr noundef nonnull %currMB, i32 noundef %add26.i, i32 noundef %sub25.i, ptr noundef nonnull %mb_size19.i, ptr noundef nonnull %pix_c.i1386) #6
  call void @getAffNeighbour(ptr noundef nonnull %currMB, i32 noundef %sub21.i, i32 noundef %sub25.i, ptr noundef nonnull %mb_size19.i, ptr noundef nonnull %pix_d.i1387) #6
  %1209 = load i32, ptr %pix_c.i1386, align 4
  %tobool30.not.i1400 = icmp ne i32 %1209, 0
  %cmp31.i = icmp ne i32 %ioff, 8
  %cmp33.i = icmp ne i32 %joff, 8
  %.not.i1401 = or i1 %cmp31.i, %cmp33.i
  %narrow.i1402 = and i1 %.not.i1401, %tobool30.not.i1400
  %land.ext.i1403 = zext i1 %narrow.i1402 to i32
  store i32 %land.ext.i1403, ptr %pix_c.i1386, align 4
  %active_pps.i1404 = getelementptr inbounds i8, ptr %1197, i64 8
  %1210 = load ptr, ptr %active_pps.i1404, align 8
  %constrained_intra_pred_flag.i1405 = getelementptr inbounds i8, ptr %1210, i64 2204
  %1211 = load i32, ptr %constrained_intra_pred_flag.i1405, align 4
  %tobool36.not.i1406 = icmp eq i32 %1211, 0
  br i1 %tobool36.not.i1406, label %if.else.i1582, label %for.cond37.preheader.i

for.cond37.preheader.i:                           ; preds = %cond.end.i1396
  %intra_block.i1407 = getelementptr inbounds i8, ptr %2, i64 13544
  %1212 = load i32, ptr %pix_a.i1384, align 16
  %tobool43.not.i1408 = icmp eq i32 %1212, 0
  br i1 %tobool43.not.i1408, label %cond.end50.i1413, label %cond.true44.i1409

cond.true44.i1409:                                ; preds = %for.cond37.preheader.i
  %1213 = load ptr, ptr %intra_block.i1407, align 8
  %mb_addr.i1410 = getelementptr inbounds i8, ptr %pix_a.i1384, i64 4
  %1214 = load i32, ptr %mb_addr.i1410, align 4
  %idxprom47.i1411 = sext i32 %1214 to i64
  %arrayidx48.i1412 = getelementptr inbounds i8, ptr %1213, i64 %idxprom47.i1411
  %1215 = load i8, ptr %arrayidx48.i1412, align 1
  %conv678.i = zext i8 %1215 to i32
  br label %cond.end50.i1413

cond.end50.i1413:                                 ; preds = %cond.true44.i1409, %for.cond37.preheader.i
  %cond51.i1414 = phi i32 [ %conv678.i, %cond.true44.i1409 ], [ 0, %for.cond37.preheader.i ]
  %and.i1415 = and i32 %cond51.i1414, 1
  %1216 = load i32, ptr %arrayidx24.1.i, align 16
  %tobool43.not.1.i = icmp eq i32 %1216, 0
  br i1 %tobool43.not.1.i, label %cond.end50.1.i, label %cond.true44.1.i

cond.true44.1.i:                                  ; preds = %cond.end50.i1413
  %1217 = load ptr, ptr %intra_block.i1407, align 8
  %mb_addr.1.i1416 = getelementptr inbounds i8, ptr %pix_a.i1384, i64 20
  %1218 = load i32, ptr %mb_addr.1.i1416, align 4
  %idxprom47.1.i = sext i32 %1218 to i64
  %arrayidx48.1.i = getelementptr inbounds i8, ptr %1217, i64 %idxprom47.1.i
  %1219 = load i8, ptr %arrayidx48.1.i, align 1
  %conv.1679.i = zext i8 %1219 to i32
  br label %cond.end50.1.i

cond.end50.1.i:                                   ; preds = %cond.true44.1.i, %cond.end50.i1413
  %cond51.1.i = phi i32 [ %conv.1679.i, %cond.true44.1.i ], [ 0, %cond.end50.i1413 ]
  %and.1.i1417 = and i32 %and.i1415, %cond51.1.i
  %1220 = load i32, ptr %arrayidx24.2.i, align 16
  %tobool43.not.2.i = icmp eq i32 %1220, 0
  br i1 %tobool43.not.2.i, label %cond.end50.2.i, label %cond.true44.2.i

cond.true44.2.i:                                  ; preds = %cond.end50.1.i
  %1221 = load ptr, ptr %intra_block.i1407, align 8
  %mb_addr.2.i1418 = getelementptr inbounds i8, ptr %pix_a.i1384, i64 36
  %1222 = load i32, ptr %mb_addr.2.i1418, align 4
  %idxprom47.2.i = sext i32 %1222 to i64
  %arrayidx48.2.i = getelementptr inbounds i8, ptr %1221, i64 %idxprom47.2.i
  %1223 = load i8, ptr %arrayidx48.2.i, align 1
  %conv.2680.i = zext i8 %1223 to i32
  br label %cond.end50.2.i

cond.end50.2.i:                                   ; preds = %cond.true44.2.i, %cond.end50.1.i
  %cond51.2.i = phi i32 [ %conv.2680.i, %cond.true44.2.i ], [ 0, %cond.end50.1.i ]
  %and.2.i1419 = and i32 %and.1.i1417, %cond51.2.i
  %1224 = load i32, ptr %arrayidx24.3.i, align 16
  %tobool43.not.3.i = icmp eq i32 %1224, 0
  br i1 %tobool43.not.3.i, label %cond.end50.3.i, label %cond.true44.3.i

cond.true44.3.i:                                  ; preds = %cond.end50.2.i
  %1225 = load ptr, ptr %intra_block.i1407, align 8
  %mb_addr.3.i1420 = getelementptr inbounds i8, ptr %pix_a.i1384, i64 52
  %1226 = load i32, ptr %mb_addr.3.i1420, align 4
  %idxprom47.3.i = sext i32 %1226 to i64
  %arrayidx48.3.i = getelementptr inbounds i8, ptr %1225, i64 %idxprom47.3.i
  %1227 = load i8, ptr %arrayidx48.3.i, align 1
  %conv.3681.i = zext i8 %1227 to i32
  br label %cond.end50.3.i

cond.end50.3.i:                                   ; preds = %cond.true44.3.i, %cond.end50.2.i
  %cond51.3.i = phi i32 [ %conv.3681.i, %cond.true44.3.i ], [ 0, %cond.end50.2.i ]
  %and.3.i1421 = and i32 %and.2.i1419, %cond51.3.i
  %1228 = load i32, ptr %arrayidx24.4.i, align 16
  %tobool43.not.4.i = icmp eq i32 %1228, 0
  br i1 %tobool43.not.4.i, label %cond.end50.4.i, label %cond.true44.4.i

cond.true44.4.i:                                  ; preds = %cond.end50.3.i
  %1229 = load ptr, ptr %intra_block.i1407, align 8
  %mb_addr.4.i1422 = getelementptr inbounds i8, ptr %pix_a.i1384, i64 68
  %1230 = load i32, ptr %mb_addr.4.i1422, align 4
  %idxprom47.4.i = sext i32 %1230 to i64
  %arrayidx48.4.i = getelementptr inbounds i8, ptr %1229, i64 %idxprom47.4.i
  %1231 = load i8, ptr %arrayidx48.4.i, align 1
  %conv.4682.i = zext i8 %1231 to i32
  br label %cond.end50.4.i

cond.end50.4.i:                                   ; preds = %cond.true44.4.i, %cond.end50.3.i
  %cond51.4.i = phi i32 [ %conv.4682.i, %cond.true44.4.i ], [ 0, %cond.end50.3.i ]
  %and.4.i1423 = and i32 %and.3.i1421, %cond51.4.i
  %1232 = load i32, ptr %arrayidx24.5.i, align 16
  %tobool43.not.5.i = icmp eq i32 %1232, 0
  br i1 %tobool43.not.5.i, label %cond.end50.5.i, label %cond.true44.5.i

cond.true44.5.i:                                  ; preds = %cond.end50.4.i
  %1233 = load ptr, ptr %intra_block.i1407, align 8
  %mb_addr.5.i1424 = getelementptr inbounds i8, ptr %pix_a.i1384, i64 84
  %1234 = load i32, ptr %mb_addr.5.i1424, align 4
  %idxprom47.5.i = sext i32 %1234 to i64
  %arrayidx48.5.i = getelementptr inbounds i8, ptr %1233, i64 %idxprom47.5.i
  %1235 = load i8, ptr %arrayidx48.5.i, align 1
  %conv.5683.i = zext i8 %1235 to i32
  br label %cond.end50.5.i

cond.end50.5.i:                                   ; preds = %cond.true44.5.i, %cond.end50.4.i
  %cond51.5.i = phi i32 [ %conv.5683.i, %cond.true44.5.i ], [ 0, %cond.end50.4.i ]
  %and.5.i1425 = and i32 %and.4.i1423, %cond51.5.i
  %1236 = load i32, ptr %arrayidx24.6.i, align 16
  %tobool43.not.6.i = icmp eq i32 %1236, 0
  br i1 %tobool43.not.6.i, label %cond.end50.6.i, label %cond.true44.6.i

cond.true44.6.i:                                  ; preds = %cond.end50.5.i
  %1237 = load ptr, ptr %intra_block.i1407, align 8
  %mb_addr.6.i1426 = getelementptr inbounds i8, ptr %pix_a.i1384, i64 100
  %1238 = load i32, ptr %mb_addr.6.i1426, align 4
  %idxprom47.6.i = sext i32 %1238 to i64
  %arrayidx48.6.i = getelementptr inbounds i8, ptr %1237, i64 %idxprom47.6.i
  %1239 = load i8, ptr %arrayidx48.6.i, align 1
  %conv.6684.i = zext i8 %1239 to i32
  br label %cond.end50.6.i

cond.end50.6.i:                                   ; preds = %cond.true44.6.i, %cond.end50.5.i
  %cond51.6.i = phi i32 [ %conv.6684.i, %cond.true44.6.i ], [ 0, %cond.end50.5.i ]
  %and.6.i1427 = and i32 %and.5.i1425, %cond51.6.i
  %1240 = load i32, ptr %arrayidx24.7.i, align 16
  %tobool43.not.7.i = icmp eq i32 %1240, 0
  br i1 %tobool43.not.7.i, label %cond.end50.7.i, label %cond.true44.7.i

cond.true44.7.i:                                  ; preds = %cond.end50.6.i
  %1241 = load ptr, ptr %intra_block.i1407, align 8
  %mb_addr.7.i1428 = getelementptr inbounds i8, ptr %pix_a.i1384, i64 116
  %1242 = load i32, ptr %mb_addr.7.i1428, align 4
  %idxprom47.7.i = sext i32 %1242 to i64
  %arrayidx48.7.i = getelementptr inbounds i8, ptr %1241, i64 %idxprom47.7.i
  %1243 = load i8, ptr %arrayidx48.7.i, align 1
  %conv.7.i14292000 = zext i8 %1243 to i32
  br label %cond.end50.7.i

cond.end50.7.i:                                   ; preds = %cond.true44.7.i, %cond.end50.6.i
  %cond51.7.i = phi i32 [ %conv.7.i14292000, %cond.true44.7.i ], [ 0, %cond.end50.6.i ]
  %and.7.i1430 = and i32 %and.6.i1427, %cond51.7.i
  %1244 = load i32, ptr %pix_b.i1385, align 4
  %tobool56.not.i = icmp eq i32 %1244, 0
  br i1 %tobool56.not.i, label %cond.end64.i, label %cond.true57.i

cond.true57.i:                                    ; preds = %cond.end50.7.i
  %1245 = load ptr, ptr %intra_block.i1407, align 8
  %mb_addr59.i = getelementptr inbounds i8, ptr %pix_b.i1385, i64 4
  %1246 = load i32, ptr %mb_addr59.i, align 4
  %idxprom60.i = sext i32 %1246 to i64
  %arrayidx61.i = getelementptr inbounds i8, ptr %1245, i64 %idxprom60.i
  %1247 = load i8, ptr %arrayidx61.i, align 1
  %conv62.i = sext i8 %1247 to i32
  br label %cond.end64.i

cond.end64.i:                                     ; preds = %cond.true57.i, %cond.end50.7.i
  %cond65.i = phi i32 [ %conv62.i, %cond.true57.i ], [ 0, %cond.end50.7.i ]
  br i1 %narrow.i1402, label %cond.true68.i, label %cond.end75.i

cond.true68.i:                                    ; preds = %cond.end64.i
  %1248 = load ptr, ptr %intra_block.i1407, align 8
  %mb_addr70.i = getelementptr inbounds i8, ptr %pix_c.i1386, i64 4
  %1249 = load i32, ptr %mb_addr70.i, align 4
  %idxprom71.i = sext i32 %1249 to i64
  %arrayidx72.i = getelementptr inbounds i8, ptr %1248, i64 %idxprom71.i
  %1250 = load i8, ptr %arrayidx72.i, align 1
  %conv73.i = sext i8 %1250 to i32
  br label %cond.end75.i

cond.end75.i:                                     ; preds = %cond.true68.i, %cond.end64.i
  %cond76.i = phi i32 [ %conv73.i, %cond.true68.i ], [ 0, %cond.end64.i ]
  %1251 = load i32, ptr %pix_d.i1387, align 4
  %tobool78.not.i = icmp eq i32 %1251, 0
  br i1 %tobool78.not.i, label %if.end.i1431, label %cond.true79.i

cond.true79.i:                                    ; preds = %cond.end75.i
  %1252 = load ptr, ptr %intra_block.i1407, align 8
  %mb_addr81.i = getelementptr inbounds i8, ptr %pix_d.i1387, i64 4
  %1253 = load i32, ptr %mb_addr81.i, align 4
  %idxprom82.i = sext i32 %1253 to i64
  %arrayidx83.i = getelementptr inbounds i8, ptr %1252, i64 %idxprom82.i
  %1254 = load i8, ptr %arrayidx83.i, align 1
  %conv84.i = sext i8 %1254 to i32
  br label %if.end.i1431

if.else.i1582:                                    ; preds = %cond.end.i1396
  %1255 = load i32, ptr %pix_a.i1384, align 16
  %1256 = load i32, ptr %pix_b.i1385, align 4
  %1257 = load i32, ptr %pix_d.i1387, align 4
  br label %if.end.i1431

if.end.i1431:                                     ; preds = %if.else.i1582, %cond.true79.i, %cond.end75.i
  %block_available_up_right.0.i1432 = phi i32 [ %land.ext.i1403, %if.else.i1582 ], [ %cond76.i, %cond.end75.i ], [ %cond76.i, %cond.true79.i ]
  %block_available_up_left.0.i1433 = phi i32 [ %1257, %if.else.i1582 ], [ 0, %cond.end75.i ], [ %conv84.i, %cond.true79.i ]
  %block_available_left.1.i1434 = phi i32 [ %1255, %if.else.i1582 ], [ %and.7.i1430, %cond.end75.i ], [ %and.7.i1430, %cond.true79.i ]
  %block_available_up.0.i1435 = phi i32 [ %1256, %if.else.i1582 ], [ %cond65.i, %cond.end75.i ], [ %cond65.i, %cond.true79.i ]
  %tobool93.not.i = icmp eq i32 %block_available_left.1.i1434, 0
  br i1 %tobool93.not.i, label %if.then94.i, label %if.end95.i

if.then94.i:                                      ; preds = %if.end.i1431
  %current_mb_nr.i1580 = getelementptr inbounds i8, ptr %2, i64 108
  %1258 = load i32, ptr %current_mb_nr.i1580, align 4
  %call.i1581 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %1258)
  br label %if.end95.i

if.end95.i:                                       ; preds = %if.then94.i, %if.end.i1431
  %tobool96.not.i = icmp eq i32 %block_available_up.0.i1435, 0
  br i1 %tobool96.not.i, label %if.else118.i, label %if.then97.i

if.then97.i:                                      ; preds = %if.end95.i
  %pos_y.i1436 = getelementptr inbounds i8, ptr %pix_b.i1385, i64 14
  %1259 = load i16, ptr %pos_y.i1436, align 2
  %idxprom98.i = sext i16 %1259 to i64
  %arrayidx99.i1437 = getelementptr inbounds ptr, ptr %cond.i1398, i64 %idxprom98.i
  %1260 = load ptr, ptr %arrayidx99.i1437, align 8
  %pos_x.i1438 = getelementptr inbounds i8, ptr %pix_b.i1385, i64 12
  %1261 = load i16, ptr %pos_x.i1438, align 4
  %idxprom100.i1439 = sext i16 %1261 to i64
  %arrayidx101.i1440 = getelementptr inbounds i16, ptr %1260, i64 %idxprom100.i1439
  %1262 = load i16, ptr %arrayidx101.i1440, align 2
  %arrayidx103.i1441 = getelementptr inbounds i8, ptr %PredPel.i1383, i64 2
  store i16 %1262, ptr %arrayidx103.i1441, align 2
  %arrayidx104.i1442 = getelementptr inbounds i8, ptr %arrayidx101.i1440, i64 2
  %1263 = load i16, ptr %arrayidx104.i1442, align 2
  %arrayidx105.i1443 = getelementptr inbounds i8, ptr %PredPel.i1383, i64 4
  store i16 %1263, ptr %arrayidx105.i1443, align 4
  %arrayidx106.i1444 = getelementptr inbounds i8, ptr %arrayidx101.i1440, i64 4
  %1264 = load i16, ptr %arrayidx106.i1444, align 2
  %arrayidx107.i1445 = getelementptr inbounds i8, ptr %PredPel.i1383, i64 6
  store i16 %1264, ptr %arrayidx107.i1445, align 2
  %arrayidx108.i1446 = getelementptr inbounds i8, ptr %arrayidx101.i1440, i64 6
  %1265 = load i16, ptr %arrayidx108.i1446, align 2
  %arrayidx109.i1447 = getelementptr inbounds i8, ptr %PredPel.i1383, i64 8
  store i16 %1265, ptr %arrayidx109.i1447, align 8
  %arrayidx110.i1448 = getelementptr inbounds i8, ptr %arrayidx101.i1440, i64 8
  %1266 = load i16, ptr %arrayidx110.i1448, align 2
  %arrayidx111.i1449 = getelementptr inbounds i8, ptr %PredPel.i1383, i64 10
  store i16 %1266, ptr %arrayidx111.i1449, align 2
  %arrayidx112.i1450 = getelementptr inbounds i8, ptr %arrayidx101.i1440, i64 10
  %1267 = load i16, ptr %arrayidx112.i1450, align 2
  %arrayidx113.i1451 = getelementptr inbounds i8, ptr %PredPel.i1383, i64 12
  store i16 %1267, ptr %arrayidx113.i1451, align 4
  %arrayidx114.i1452 = getelementptr inbounds i8, ptr %arrayidx101.i1440, i64 12
  %1268 = load i16, ptr %arrayidx114.i1452, align 2
  %arrayidx115.i1453 = getelementptr inbounds i8, ptr %PredPel.i1383, i64 14
  store i16 %1268, ptr %arrayidx115.i1453, align 2
  %arrayidx116.i1454 = getelementptr inbounds i8, ptr %arrayidx101.i1440, i64 14
  %1269 = load i16, ptr %arrayidx116.i1454, align 2
  %arrayidx117.i1455 = getelementptr inbounds i8, ptr %PredPel.i1383, i64 16
  store i16 %1269, ptr %arrayidx117.i1455, align 16
  br label %if.end130.i

if.else118.i:                                     ; preds = %if.end95.i
  %dc_pred_value_comp.i1571 = getelementptr inbounds i8, ptr %1197, i64 849060
  %arrayidx120.i = getelementptr inbounds [3 x i32], ptr %dc_pred_value_comp.i1571, i64 0, i64 %idxprom17.i
  %1270 = load i32, ptr %arrayidx120.i, align 4
  %conv121.i = trunc i32 %1270 to i16
  %arrayidx129.i1579 = getelementptr inbounds i8, ptr %PredPel.i1383, i64 2
  %1271 = insertelement <8 x i16> poison, i16 %conv121.i, i64 0
  %1272 = shufflevector <8 x i16> %1271, <8 x i16> poison, <8 x i32> zeroinitializer
  store <8 x i16> %1272, ptr %arrayidx129.i1579, align 2
  br label %if.end130.i

if.end130.i:                                      ; preds = %if.else118.i, %if.then97.i
  %1273 = phi i16 [ %conv121.i, %if.else118.i ], [ %1269, %if.then97.i ]
  %tobool131.not.i = icmp eq i32 %block_available_up_right.0.i1432, 0
  br i1 %tobool131.not.i, label %if.else155.i, label %if.then132.i

if.then132.i:                                     ; preds = %if.end130.i
  %pos_y133.i = getelementptr inbounds i8, ptr %pix_c.i1386, i64 14
  %1274 = load i16, ptr %pos_y133.i, align 2
  %idxprom134.i = sext i16 %1274 to i64
  %arrayidx135.i1456 = getelementptr inbounds ptr, ptr %cond.i1398, i64 %idxprom134.i
  %1275 = load ptr, ptr %arrayidx135.i1456, align 8
  %pos_x136.i = getelementptr inbounds i8, ptr %pix_c.i1386, i64 12
  %1276 = load i16, ptr %pos_x136.i, align 4
  %idxprom137.i = sext i16 %1276 to i64
  %arrayidx138.i1457 = getelementptr inbounds i16, ptr %1275, i64 %idxprom137.i
  %1277 = load i16, ptr %arrayidx138.i1457, align 2
  %arrayidx140.i1458 = getelementptr inbounds i8, ptr %PredPel.i1383, i64 18
  store i16 %1277, ptr %arrayidx140.i1458, align 2
  %arrayidx141.i1459 = getelementptr inbounds i8, ptr %arrayidx138.i1457, i64 2
  %1278 = load i16, ptr %arrayidx141.i1459, align 2
  %arrayidx142.i1460 = getelementptr inbounds i8, ptr %PredPel.i1383, i64 20
  store i16 %1278, ptr %arrayidx142.i1460, align 4
  %arrayidx143.i1461 = getelementptr inbounds i8, ptr %arrayidx138.i1457, i64 4
  %1279 = load i16, ptr %arrayidx143.i1461, align 2
  %arrayidx144.i1462 = getelementptr inbounds i8, ptr %PredPel.i1383, i64 22
  store i16 %1279, ptr %arrayidx144.i1462, align 2
  %arrayidx145.i1463 = getelementptr inbounds i8, ptr %arrayidx138.i1457, i64 6
  %1280 = load i16, ptr %arrayidx145.i1463, align 2
  %arrayidx146.i1464 = getelementptr inbounds i8, ptr %PredPel.i1383, i64 24
  store i16 %1280, ptr %arrayidx146.i1464, align 8
  %arrayidx147.i1465 = getelementptr inbounds i8, ptr %arrayidx138.i1457, i64 8
  %1281 = load i16, ptr %arrayidx147.i1465, align 2
  %arrayidx148.i1466 = getelementptr inbounds i8, ptr %PredPel.i1383, i64 26
  store i16 %1281, ptr %arrayidx148.i1466, align 2
  %arrayidx149.i1467 = getelementptr inbounds i8, ptr %arrayidx138.i1457, i64 10
  %1282 = load i16, ptr %arrayidx149.i1467, align 2
  %arrayidx150.i1468 = getelementptr inbounds i8, ptr %PredPel.i1383, i64 28
  store i16 %1282, ptr %arrayidx150.i1468, align 4
  %arrayidx151.i1469 = getelementptr inbounds i8, ptr %arrayidx138.i1457, i64 12
  %1283 = load i16, ptr %arrayidx151.i1469, align 2
  %arrayidx152.i1470 = getelementptr inbounds i8, ptr %PredPel.i1383, i64 30
  store i16 %1283, ptr %arrayidx152.i1470, align 2
  %arrayidx153.i1471 = getelementptr inbounds i8, ptr %arrayidx138.i1457, i64 14
  %1284 = load i16, ptr %arrayidx153.i1471, align 2
  %arrayidx154.i1472 = getelementptr inbounds i8, ptr %PredPel.i1383, i64 32
  store i16 %1284, ptr %arrayidx154.i1472, align 16
  br label %if.end165.i

if.else155.i:                                     ; preds = %if.end130.i
  %arrayidx164.i1570 = getelementptr inbounds i8, ptr %PredPel.i1383, i64 18
  %1285 = insertelement <8 x i16> poison, i16 %1273, i64 0
  %1286 = shufflevector <8 x i16> %1285, <8 x i16> poison, <8 x i32> zeroinitializer
  store <8 x i16> %1286, ptr %arrayidx164.i1570, align 2
  br label %if.end165.i

if.end165.i:                                      ; preds = %if.else155.i, %if.then132.i
  br i1 %tobool93.not.i, label %if.else240.i, label %if.then167.i

if.then167.i:                                     ; preds = %if.end165.i
  %pos_y169.i = getelementptr inbounds i8, ptr %pix_a.i1384, i64 14
  %1287 = load i16, ptr %pos_y169.i, align 2
  %idxprom170.i1473 = sext i16 %1287 to i64
  %arrayidx171.i1474 = getelementptr inbounds ptr, ptr %cond.i1398, i64 %idxprom170.i1473
  %1288 = load ptr, ptr %arrayidx171.i1474, align 8
  %pos_x173.i = getelementptr inbounds i8, ptr %pix_a.i1384, i64 12
  %1289 = load i16, ptr %pos_x173.i, align 4
  %idxprom174.i = sext i16 %1289 to i64
  %arrayidx175.i = getelementptr inbounds i16, ptr %1288, i64 %idxprom174.i
  %1290 = load i16, ptr %arrayidx175.i, align 2
  %arrayidx176.i1475 = getelementptr inbounds i8, ptr %PredPel.i1383, i64 34
  store i16 %1290, ptr %arrayidx176.i1475, align 2
  %pos_y178.i = getelementptr inbounds i8, ptr %pix_a.i1384, i64 30
  %1291 = load i16, ptr %pos_y178.i, align 2
  %idxprom179.i1476 = sext i16 %1291 to i64
  %arrayidx180.i1477 = getelementptr inbounds ptr, ptr %cond.i1398, i64 %idxprom179.i1476
  %1292 = load ptr, ptr %arrayidx180.i1477, align 8
  %pos_x182.i = getelementptr inbounds i8, ptr %pix_a.i1384, i64 28
  %1293 = load i16, ptr %pos_x182.i, align 4
  %idxprom183.i = sext i16 %1293 to i64
  %arrayidx184.i = getelementptr inbounds i16, ptr %1292, i64 %idxprom183.i
  %1294 = load i16, ptr %arrayidx184.i, align 2
  %arrayidx185.i1478 = getelementptr inbounds i8, ptr %PredPel.i1383, i64 36
  store i16 %1294, ptr %arrayidx185.i1478, align 4
  %pos_y187.i = getelementptr inbounds i8, ptr %pix_a.i1384, i64 46
  %1295 = load i16, ptr %pos_y187.i, align 2
  %idxprom188.i1479 = sext i16 %1295 to i64
  %arrayidx189.i1480 = getelementptr inbounds ptr, ptr %cond.i1398, i64 %idxprom188.i1479
  %1296 = load ptr, ptr %arrayidx189.i1480, align 8
  %pos_x191.i = getelementptr inbounds i8, ptr %pix_a.i1384, i64 44
  %1297 = load i16, ptr %pos_x191.i, align 4
  %idxprom192.i = sext i16 %1297 to i64
  %arrayidx193.i = getelementptr inbounds i16, ptr %1296, i64 %idxprom192.i
  %1298 = load i16, ptr %arrayidx193.i, align 2
  %arrayidx194.i1481 = getelementptr inbounds i8, ptr %PredPel.i1383, i64 38
  store i16 %1298, ptr %arrayidx194.i1481, align 2
  %pos_y196.i = getelementptr inbounds i8, ptr %pix_a.i1384, i64 62
  %1299 = load i16, ptr %pos_y196.i, align 2
  %idxprom197.i1482 = sext i16 %1299 to i64
  %arrayidx198.i1483 = getelementptr inbounds ptr, ptr %cond.i1398, i64 %idxprom197.i1482
  %1300 = load ptr, ptr %arrayidx198.i1483, align 8
  %pos_x200.i = getelementptr inbounds i8, ptr %pix_a.i1384, i64 60
  %1301 = load i16, ptr %pos_x200.i, align 4
  %idxprom201.i = sext i16 %1301 to i64
  %arrayidx202.i1484 = getelementptr inbounds i16, ptr %1300, i64 %idxprom201.i
  %1302 = load i16, ptr %arrayidx202.i1484, align 2
  %arrayidx203.i1485 = getelementptr inbounds i8, ptr %PredPel.i1383, i64 40
  store i16 %1302, ptr %arrayidx203.i1485, align 8
  %pos_y205.i = getelementptr inbounds i8, ptr %pix_a.i1384, i64 78
  %1303 = load i16, ptr %pos_y205.i, align 2
  %idxprom206.i1486 = sext i16 %1303 to i64
  %arrayidx207.i1487 = getelementptr inbounds ptr, ptr %cond.i1398, i64 %idxprom206.i1486
  %1304 = load ptr, ptr %arrayidx207.i1487, align 8
  %pos_x209.i = getelementptr inbounds i8, ptr %pix_a.i1384, i64 76
  %1305 = load i16, ptr %pos_x209.i, align 4
  %idxprom210.i = sext i16 %1305 to i64
  %arrayidx211.i = getelementptr inbounds i16, ptr %1304, i64 %idxprom210.i
  %1306 = load i16, ptr %arrayidx211.i, align 2
  %arrayidx212.i1488 = getelementptr inbounds i8, ptr %PredPel.i1383, i64 42
  store i16 %1306, ptr %arrayidx212.i1488, align 2
  %pos_y214.i = getelementptr inbounds i8, ptr %pix_a.i1384, i64 94
  %1307 = load i16, ptr %pos_y214.i, align 2
  %idxprom215.i1489 = sext i16 %1307 to i64
  %arrayidx216.i1490 = getelementptr inbounds ptr, ptr %cond.i1398, i64 %idxprom215.i1489
  %1308 = load ptr, ptr %arrayidx216.i1490, align 8
  %pos_x218.i = getelementptr inbounds i8, ptr %pix_a.i1384, i64 92
  %1309 = load i16, ptr %pos_x218.i, align 4
  %idxprom219.i = sext i16 %1309 to i64
  %arrayidx220.i = getelementptr inbounds i16, ptr %1308, i64 %idxprom219.i
  %1310 = load i16, ptr %arrayidx220.i, align 2
  %arrayidx221.i1491 = getelementptr inbounds i8, ptr %PredPel.i1383, i64 44
  store i16 %1310, ptr %arrayidx221.i1491, align 4
  %pos_y223.i = getelementptr inbounds i8, ptr %pix_a.i1384, i64 110
  %1311 = load i16, ptr %pos_y223.i, align 2
  %idxprom224.i1492 = sext i16 %1311 to i64
  %arrayidx225.i1493 = getelementptr inbounds ptr, ptr %cond.i1398, i64 %idxprom224.i1492
  %1312 = load ptr, ptr %arrayidx225.i1493, align 8
  %pos_x227.i = getelementptr inbounds i8, ptr %pix_a.i1384, i64 108
  %1313 = load i16, ptr %pos_x227.i, align 4
  %idxprom228.i = sext i16 %1313 to i64
  %arrayidx229.i1494 = getelementptr inbounds i16, ptr %1312, i64 %idxprom228.i
  %1314 = load i16, ptr %arrayidx229.i1494, align 2
  %arrayidx230.i1495 = getelementptr inbounds i8, ptr %PredPel.i1383, i64 46
  store i16 %1314, ptr %arrayidx230.i1495, align 2
  %pos_y232.i = getelementptr inbounds i8, ptr %pix_a.i1384, i64 126
  %1315 = load i16, ptr %pos_y232.i, align 2
  %idxprom233.i = sext i16 %1315 to i64
  %arrayidx234.i1496 = getelementptr inbounds ptr, ptr %cond.i1398, i64 %idxprom233.i
  %1316 = load ptr, ptr %arrayidx234.i1496, align 8
  %pos_x236.i = getelementptr inbounds i8, ptr %pix_a.i1384, i64 124
  %1317 = load i16, ptr %pos_x236.i, align 4
  %idxprom237.i = sext i16 %1317 to i64
  %arrayidx238.i1497 = getelementptr inbounds i16, ptr %1316, i64 %idxprom237.i
  %1318 = load i16, ptr %arrayidx238.i1497, align 2
  %arrayidx239.i1498 = getelementptr inbounds i8, ptr %PredPel.i1383, i64 48
  store i16 %1318, ptr %arrayidx239.i1498, align 16
  br label %if.end253.i

if.else240.i:                                     ; preds = %if.end165.i
  %dc_pred_value_comp241.i = getelementptr inbounds i8, ptr %1197, i64 849060
  %arrayidx243.i = getelementptr inbounds [3 x i32], ptr %dc_pred_value_comp241.i, i64 0, i64 %idxprom17.i
  %1319 = load i32, ptr %arrayidx243.i, align 4
  %conv244.i = trunc i32 %1319 to i16
  %arrayidx252.i = getelementptr inbounds i8, ptr %PredPel.i1383, i64 34
  %1320 = insertelement <8 x i16> poison, i16 %conv244.i, i64 0
  %1321 = shufflevector <8 x i16> %1320, <8 x i16> poison, <8 x i32> zeroinitializer
  store <8 x i16> %1321, ptr %arrayidx252.i, align 2
  br label %if.end253.i

if.end253.i:                                      ; preds = %if.else240.i, %if.then167.i
  %tobool254.not.i = icmp eq i32 %block_available_up_left.0.i1433, 0
  br i1 %tobool254.not.i, label %if.else263.i, label %if.then255.i

if.then255.i:                                     ; preds = %if.end253.i
  %pos_y256.i = getelementptr inbounds i8, ptr %pix_d.i1387, i64 14
  %1322 = load i16, ptr %pos_y256.i, align 2
  %idxprom257.i = sext i16 %1322 to i64
  %arrayidx258.i1499 = getelementptr inbounds ptr, ptr %cond.i1398, i64 %idxprom257.i
  %1323 = load ptr, ptr %arrayidx258.i1499, align 8
  %pos_x259.i = getelementptr inbounds i8, ptr %pix_d.i1387, i64 12
  %1324 = load i16, ptr %pos_x259.i, align 4
  %idxprom260.i = sext i16 %1324 to i64
  %arrayidx261.i = getelementptr inbounds i16, ptr %1323, i64 %idxprom260.i
  %1325 = load i16, ptr %arrayidx261.i, align 2
  br label %intra8x8_hor_up_pred_mbaff.exit

if.else263.i:                                     ; preds = %if.end253.i
  %dc_pred_value_comp264.i = getelementptr inbounds i8, ptr %1197, i64 849060
  %arrayidx266.i = getelementptr inbounds [3 x i32], ptr %dc_pred_value_comp264.i, i64 0, i64 %idxprom17.i
  %1326 = load i32, ptr %arrayidx266.i, align 4
  %conv267.i1558 = trunc i32 %1326 to i16
  br label %intra8x8_hor_up_pred_mbaff.exit

intra8x8_hor_up_pred_mbaff.exit:                  ; preds = %if.then255.i, %if.else263.i
  %storemerge.i1500 = phi i16 [ %1325, %if.then255.i ], [ %conv267.i1558, %if.else263.i ]
  store i16 %storemerge.i1500, ptr %PredPel.i1383, align 16
  call fastcc void @LowPassForIntra8x8Pred(ptr noundef nonnull %PredPel.i1383, i32 noundef %block_available_up_left.0.i1433, i32 noundef %block_available_up.0.i1435, i32 noundef %block_available_left.1.i1434)
  %1327 = sext i32 %joff to i64
  %add16.i = add nsw i32 %ioff, 7
  %add15.i = add nsw i32 %ioff, 6
  %add14.i = add nsw i32 %ioff, 5
  %add13.i1502 = add nsw i32 %ioff, 4
  %add12.i1503 = add nsw i32 %ioff, 3
  %arrayidx271.i1504 = getelementptr inbounds i8, ptr %PredPel.i1383, i64 34
  %1328 = load i16, ptr %arrayidx271.i1504, align 2
  %conv272.i1505 = zext i16 %1328 to i32
  %arrayidx273.i1506 = getelementptr inbounds i8, ptr %PredPel.i1383, i64 36
  %1329 = load i16, ptr %arrayidx273.i1506, align 4
  %conv274.i1507 = zext i16 %1329 to i32
  %add275.i1508 = add nuw nsw i32 %conv274.i1507, 1
  %add276.i1509 = add nuw nsw i32 %add275.i1508, %conv272.i1505
  %shr.i1510 = lshr i32 %add276.i1509, 1
  %conv277.i1511 = trunc nuw i32 %shr.i1510 to i16
  %arrayidx279.i = getelementptr inbounds i8, ptr %PredPel.i1383, i64 38
  %1330 = load i16, ptr %arrayidx279.i, align 2
  %conv280.i = zext i16 %1330 to i32
  %mul.i1512 = shl nuw nsw i32 %conv274.i1507, 1
  %add283.i = add nuw nsw i32 %conv280.i, 2
  %add286.i = add nuw nsw i32 %mul.i1512, %conv272.i1505
  %add287.i1513 = add nuw nsw i32 %add286.i, %add283.i
  %shr288.i = lshr i32 %add287.i1513, 2
  %conv289.i = trunc nuw i32 %shr288.i to i16
  %add296.i1514 = add nuw nsw i32 %add275.i1508, %conv280.i
  %shr297.i = lshr i32 %add296.i1514, 1
  %conv298.i = trunc nuw i32 %shr297.i to i16
  %arrayidx300.i = getelementptr inbounds i8, ptr %PredPel.i1383, i64 40
  %1331 = load i16, ptr %arrayidx300.i, align 8
  %conv301.i = zext i16 %1331 to i32
  %mul307.i = shl nuw nsw i32 %conv280.i, 1
  %add304.i1515 = add nuw nsw i32 %conv301.i, 2
  %add308.i = add nuw nsw i32 %mul307.i, %conv274.i1507
  %add309.i = add nuw nsw i32 %add308.i, %add304.i1515
  %shr310.i = lshr i32 %add309.i, 2
  %conv311.i1516 = trunc nuw i32 %shr310.i to i16
  %add317.i1517 = add nuw nsw i32 %conv301.i, 1
  %add318.i1518 = add nuw nsw i32 %add317.i1517, %conv280.i
  %shr319.i = lshr i32 %add318.i1518, 1
  %conv320.i = trunc nuw i32 %shr319.i to i16
  %arrayidx322.i1519 = getelementptr inbounds i8, ptr %PredPel.i1383, i64 42
  %1332 = load i16, ptr %arrayidx322.i1519, align 2
  %conv323.i1520 = zext i16 %1332 to i32
  %mul329.i = shl nuw nsw i32 %conv301.i, 1
  %add330.i = add nuw nsw i32 %add283.i, %conv323.i1520
  %add331.i1521 = add nuw nsw i32 %add330.i, %mul329.i
  %shr332.i = lshr i32 %add331.i1521, 2
  %conv333.i = trunc nuw i32 %shr332.i to i16
  %add340.i1522 = add nuw nsw i32 %add317.i1517, %conv323.i1520
  %shr341.i = lshr i32 %add340.i1522, 1
  %conv342.i = trunc nuw i32 %shr341.i to i16
  %arrayidx344.i1523 = getelementptr inbounds i8, ptr %PredPel.i1383, i64 44
  %1333 = load i16, ptr %arrayidx344.i1523, align 4
  %conv345.i1524 = zext i16 %1333 to i32
  %mul351.i = shl nuw nsw i32 %conv323.i1520, 1
  %add352.i = add nuw nsw i32 %add304.i1515, %conv345.i1524
  %add353.i1525 = add nuw nsw i32 %add352.i, %mul351.i
  %shr354.i = lshr i32 %add353.i1525, 2
  %conv355.i1526 = trunc nuw i32 %shr354.i to i16
  %add361.i = add nuw nsw i32 %conv323.i1520, 1
  %add362.i1527 = add nuw nsw i32 %add361.i, %conv345.i1524
  %shr363.i = lshr i32 %add362.i1527, 1
  %conv364.i = trunc nuw i32 %shr363.i to i16
  %arrayidx366.i = getelementptr inbounds i8, ptr %PredPel.i1383, i64 46
  %1334 = load i16, ptr %arrayidx366.i, align 2
  %conv367.i1528 = zext i16 %1334 to i32
  %mul373.i = shl nuw nsw i32 %conv345.i1524, 1
  %add370.i1529 = add nuw nsw i32 %conv367.i1528, 2
  %add374.i = add nuw nsw i32 %add370.i1529, %conv323.i1520
  %add375.i1530 = add nuw nsw i32 %add374.i, %mul373.i
  %shr376.i = lshr i32 %add375.i1530, 2
  %conv377.i = trunc nuw i32 %shr376.i to i16
  %add383.i1531 = add nuw nsw i32 %conv345.i1524, 1
  %add384.i1532 = add nuw nsw i32 %add383.i1531, %conv367.i1528
  %shr385.i1533 = lshr i32 %add384.i1532, 1
  %conv386.i1534 = trunc nuw i32 %shr385.i1533 to i16
  %arrayidx388.i = getelementptr inbounds i8, ptr %PredPel.i1383, i64 48
  %1335 = load i16, ptr %arrayidx388.i, align 16
  %conv389.i = zext i16 %1335 to i32
  %mul395.i1535 = shl nuw nsw i32 %conv367.i1528, 1
  %add392.i1536 = add nuw nsw i32 %conv345.i1524, 2
  %add396.i1537 = add nuw nsw i32 %add392.i1536, %conv389.i
  %add397.i1538 = add nuw nsw i32 %add396.i1537, %mul395.i1535
  %shr398.i1539 = lshr i32 %add397.i1538, 2
  %conv399.i1540 = trunc nuw i32 %shr398.i1539 to i16
  %add405.i1541 = add nuw nsw i32 %conv367.i1528, 1
  %add406.i1542 = add nuw nsw i32 %add405.i1541, %conv389.i
  %shr407.i = lshr i32 %add406.i1542, 1
  %conv408.i = trunc nuw i32 %shr407.i to i16
  %mul414.i = mul nuw nsw i32 %conv389.i, 3
  %add416.i1544 = add nuw nsw i32 %add370.i1529, %mul414.i
  %shr417.i = lshr i32 %add416.i1544, 2
  %conv418.i = trunc nuw i32 %shr417.i to i16
  %arrayidx423.i = getelementptr inbounds ptr, ptr %1201, i64 %1327
  %1336 = load ptr, ptr %arrayidx423.i, align 8
  %idxprom424.i = sext i32 %ioff to i64
  %arrayidx425.i = getelementptr inbounds i16, ptr %1336, i64 %idxprom424.i
  store i16 %conv277.i1511, ptr %arrayidx425.i, align 2
  %PredArray.sroa.4.0.arrayidx425.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx425.i, i64 2
  store i16 %conv289.i, ptr %PredArray.sroa.4.0.arrayidx425.sroa_idx.i, align 2
  %PredArray.sroa.5.0.arrayidx425.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx425.i, i64 4
  store i16 %conv298.i, ptr %PredArray.sroa.5.0.arrayidx425.sroa_idx.i, align 2
  %PredArray.sroa.7.0.arrayidx425.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx425.i, i64 6
  store i16 %conv311.i1516, ptr %PredArray.sroa.7.0.arrayidx425.sroa_idx.i, align 2
  %PredArray.sroa.8.0.arrayidx425.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx425.i, i64 8
  store i16 %conv320.i, ptr %PredArray.sroa.8.0.arrayidx425.sroa_idx.i, align 2
  %PredArray.sroa.10.0.arrayidx425.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx425.i, i64 10
  store i16 %conv333.i, ptr %PredArray.sroa.10.0.arrayidx425.sroa_idx.i, align 2
  %PredArray.sroa.11.0.arrayidx425.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx425.i, i64 12
  store i16 %conv342.i, ptr %PredArray.sroa.11.0.arrayidx425.sroa_idx.i, align 2
  %PredArray.sroa.13.0.arrayidx425.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx425.i, i64 14
  store i16 %conv355.i1526, ptr %PredArray.sroa.13.0.arrayidx425.sroa_idx.i, align 2
  %arrayidx428.i = getelementptr i8, ptr %arrayidx423.i, i64 8
  %1337 = load ptr, ptr %arrayidx428.i, align 8
  %arrayidx430.i = getelementptr inbounds i16, ptr %1337, i64 %idxprom424.i
  store i16 %conv298.i, ptr %arrayidx430.i, align 2
  %PredArray.sroa.7.4.arrayidx430.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx430.i, i64 2
  store i16 %conv311.i1516, ptr %PredArray.sroa.7.4.arrayidx430.sroa_idx.i, align 2
  %PredArray.sroa.8.4.arrayidx430.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx430.i, i64 4
  store i16 %conv320.i, ptr %PredArray.sroa.8.4.arrayidx430.sroa_idx.i, align 2
  %PredArray.sroa.10.4.arrayidx430.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx430.i, i64 6
  store i16 %conv333.i, ptr %PredArray.sroa.10.4.arrayidx430.sroa_idx.i, align 2
  %PredArray.sroa.11.4.arrayidx430.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx430.i, i64 8
  store i16 %conv342.i, ptr %PredArray.sroa.11.4.arrayidx430.sroa_idx.i, align 2
  %PredArray.sroa.13.4.arrayidx430.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx430.i, i64 10
  store i16 %conv355.i1526, ptr %PredArray.sroa.13.4.arrayidx430.sroa_idx.i, align 2
  %PredArray.sroa.14.4.arrayidx430.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx430.i, i64 12
  store i16 %conv364.i, ptr %PredArray.sroa.14.4.arrayidx430.sroa_idx.i, align 2
  %PredArray.sroa.16.4.arrayidx430.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx430.i, i64 14
  store i16 %conv377.i, ptr %PredArray.sroa.16.4.arrayidx430.sroa_idx.i, align 2
  %arrayidx433.i = getelementptr i8, ptr %arrayidx423.i, i64 16
  %1338 = load ptr, ptr %arrayidx433.i, align 8
  %arrayidx435.i = getelementptr inbounds i16, ptr %1338, i64 %idxprom424.i
  store i16 %conv320.i, ptr %arrayidx435.i, align 2
  %PredArray.sroa.10.8.arrayidx435.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx435.i, i64 2
  store i16 %conv333.i, ptr %PredArray.sroa.10.8.arrayidx435.sroa_idx.i, align 2
  %PredArray.sroa.11.8.arrayidx435.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx435.i, i64 4
  store i16 %conv342.i, ptr %PredArray.sroa.11.8.arrayidx435.sroa_idx.i, align 2
  %PredArray.sroa.13.8.arrayidx435.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx435.i, i64 6
  store i16 %conv355.i1526, ptr %PredArray.sroa.13.8.arrayidx435.sroa_idx.i, align 2
  %PredArray.sroa.14.8.arrayidx435.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx435.i, i64 8
  store i16 %conv364.i, ptr %PredArray.sroa.14.8.arrayidx435.sroa_idx.i, align 2
  %PredArray.sroa.16.8.arrayidx435.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx435.i, i64 10
  store i16 %conv377.i, ptr %PredArray.sroa.16.8.arrayidx435.sroa_idx.i, align 2
  %PredArray.sroa.17.8.arrayidx435.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx435.i, i64 12
  store i16 %conv386.i1534, ptr %PredArray.sroa.17.8.arrayidx435.sroa_idx.i, align 2
  %PredArray.sroa.19.8.arrayidx435.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx435.i, i64 14
  store i16 %conv399.i1540, ptr %PredArray.sroa.19.8.arrayidx435.sroa_idx.i, align 2
  %arrayidx438.i = getelementptr i8, ptr %arrayidx423.i, i64 24
  %1339 = load ptr, ptr %arrayidx438.i, align 8
  %arrayidx440.i = getelementptr inbounds i16, ptr %1339, i64 %idxprom424.i
  store i16 %conv342.i, ptr %arrayidx440.i, align 2
  %PredArray.sroa.13.12.arrayidx440.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx440.i, i64 2
  store i16 %conv355.i1526, ptr %PredArray.sroa.13.12.arrayidx440.sroa_idx.i, align 2
  %PredArray.sroa.14.12.arrayidx440.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx440.i, i64 4
  store i16 %conv364.i, ptr %PredArray.sroa.14.12.arrayidx440.sroa_idx.i, align 2
  %PredArray.sroa.16.12.arrayidx440.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx440.i, i64 6
  store i16 %conv377.i, ptr %PredArray.sroa.16.12.arrayidx440.sroa_idx.i, align 2
  %PredArray.sroa.17.12.arrayidx440.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx440.i, i64 8
  store i16 %conv386.i1534, ptr %PredArray.sroa.17.12.arrayidx440.sroa_idx.i, align 2
  %PredArray.sroa.19.12.arrayidx440.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx440.i, i64 10
  store i16 %conv399.i1540, ptr %PredArray.sroa.19.12.arrayidx440.sroa_idx.i, align 2
  %PredArray.sroa.20.12.arrayidx440.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx440.i, i64 12
  store i16 %conv408.i, ptr %PredArray.sroa.20.12.arrayidx440.sroa_idx.i, align 2
  %PredArray.sroa.22.12.arrayidx440.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx440.i, i64 14
  store i16 %conv418.i, ptr %PredArray.sroa.22.12.arrayidx440.sroa_idx.i, align 2
  %arrayidx443.i = getelementptr i8, ptr %arrayidx423.i, i64 32
  %1340 = load ptr, ptr %arrayidx443.i, align 8
  %arrayidx445.i = getelementptr inbounds i16, ptr %1340, i64 %idxprom424.i
  store i16 %conv364.i, ptr %arrayidx445.i, align 2
  %PredArray.sroa.16.16.arrayidx445.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx445.i, i64 2
  store i16 %conv377.i, ptr %PredArray.sroa.16.16.arrayidx445.sroa_idx.i, align 2
  %PredArray.sroa.17.16.arrayidx445.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx445.i, i64 4
  store i16 %conv386.i1534, ptr %PredArray.sroa.17.16.arrayidx445.sroa_idx.i, align 2
  %PredArray.sroa.19.16.arrayidx445.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx445.i, i64 6
  store i16 %conv399.i1540, ptr %PredArray.sroa.19.16.arrayidx445.sroa_idx.i, align 2
  %PredArray.sroa.20.16.arrayidx445.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx445.i, i64 8
  store i16 %conv408.i, ptr %PredArray.sroa.20.16.arrayidx445.sroa_idx.i, align 2
  %PredArray.sroa.22.16.arrayidx445.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx445.i, i64 10
  store i16 %conv418.i, ptr %PredArray.sroa.22.16.arrayidx445.sroa_idx.i, align 2
  %PredArray.sroa.23.16.arrayidx445.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx445.i, i64 12
  store i16 %1335, ptr %PredArray.sroa.23.16.arrayidx445.sroa_idx.i, align 2
  %arrayidx448.i = getelementptr i8, ptr %arrayidx423.i, i64 40
  %1341 = load ptr, ptr %arrayidx448.i, align 8
  %arrayidx450.i = getelementptr inbounds i16, ptr %1341, i64 %idxprom424.i
  store i16 %conv386.i1534, ptr %arrayidx450.i, align 2
  %PredArray.sroa.19.20.arrayidx450.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx450.i, i64 2
  store i16 %conv399.i1540, ptr %PredArray.sroa.19.20.arrayidx450.sroa_idx.i, align 2
  %PredArray.sroa.20.20.arrayidx450.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx450.i, i64 4
  store i16 %conv408.i, ptr %PredArray.sroa.20.20.arrayidx450.sroa_idx.i, align 2
  %PredArray.sroa.22.20.arrayidx450.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx450.i, i64 6
  store i16 %conv418.i, ptr %PredArray.sroa.22.20.arrayidx450.sroa_idx.i, align 2
  %PredArray.sroa.23.20.arrayidx450.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx450.i, i64 8
  store i16 %1335, ptr %PredArray.sroa.23.20.arrayidx450.sroa_idx.i, align 2
  %arrayidx453.i = getelementptr i8, ptr %arrayidx423.i, i64 48
  %1342 = load ptr, ptr %arrayidx453.i, align 8
  %arrayidx455.i1545 = getelementptr inbounds i16, ptr %1342, i64 %idxprom424.i
  store i16 %conv408.i, ptr %arrayidx455.i1545, align 2
  %PredArray.sroa.22.24.arrayidx455.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx455.i1545, i64 2
  store i16 %conv418.i, ptr %PredArray.sroa.22.24.arrayidx455.sroa_idx.i, align 2
  %PredArray.sroa.23.24.arrayidx455.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx455.i1545, i64 4
  store i16 %1335, ptr %PredArray.sroa.23.24.arrayidx455.sroa_idx.i, align 2
  %1343 = load ptr, ptr %arrayidx443.i, align 8
  %idxprom460.i = sext i32 %add16.i to i64
  %arrayidx461.i1546 = getelementptr inbounds i16, ptr %1343, i64 %idxprom460.i
  store i16 %1335, ptr %arrayidx461.i1546, align 2
  %1344 = load ptr, ptr %arrayidx448.i, align 8
  %arrayidx466.i = getelementptr inbounds i16, ptr %1344, i64 %idxprom460.i
  store i16 %1335, ptr %arrayidx466.i, align 2
  %1345 = load ptr, ptr %arrayidx448.i, align 8
  %idxprom469.i = sext i32 %add15.i to i64
  %arrayidx470.i = getelementptr inbounds i16, ptr %1345, i64 %idxprom469.i
  store i16 %1335, ptr %arrayidx470.i, align 2
  %1346 = load ptr, ptr %arrayidx448.i, align 8
  %idxprom473.i = sext i32 %add14.i to i64
  %arrayidx474.i = getelementptr inbounds i16, ptr %1346, i64 %idxprom473.i
  store i16 %1335, ptr %arrayidx474.i, align 2
  %1347 = load ptr, ptr %arrayidx453.i, align 8
  %arrayidx479.i1547 = getelementptr inbounds i16, ptr %1347, i64 %idxprom460.i
  store i16 %1335, ptr %arrayidx479.i1547, align 2
  %1348 = load ptr, ptr %arrayidx453.i, align 8
  %arrayidx483.i = getelementptr inbounds i16, ptr %1348, i64 %idxprom469.i
  store i16 %1335, ptr %arrayidx483.i, align 2
  %1349 = load ptr, ptr %arrayidx453.i, align 8
  %arrayidx487.i1548 = getelementptr inbounds i16, ptr %1349, i64 %idxprom473.i
  store i16 %1335, ptr %arrayidx487.i1548, align 2
  %1350 = load ptr, ptr %arrayidx453.i, align 8
  %idxprom490.i = sext i32 %add13.i1502 to i64
  %arrayidx491.i1549 = getelementptr inbounds i16, ptr %1350, i64 %idxprom490.i
  store i16 %1335, ptr %arrayidx491.i1549, align 2
  %1351 = load ptr, ptr %arrayidx453.i, align 8
  %idxprom494.i = sext i32 %add12.i1503 to i64
  %arrayidx495.i = getelementptr inbounds i16, ptr %1351, i64 %idxprom494.i
  store i16 %1335, ptr %arrayidx495.i, align 2
  %arrayidx498.i1550 = getelementptr i8, ptr %arrayidx423.i, i64 56
  %1352 = load ptr, ptr %arrayidx498.i1550, align 8
  %arrayidx500.i1551 = getelementptr inbounds i16, ptr %1352, i64 %idxprom460.i
  store i16 %1335, ptr %arrayidx500.i1551, align 2
  %1353 = load ptr, ptr %arrayidx498.i1550, align 8
  %arrayidx504.i1552 = getelementptr inbounds i16, ptr %1353, i64 %idxprom469.i
  store i16 %1335, ptr %arrayidx504.i1552, align 2
  %1354 = load ptr, ptr %arrayidx498.i1550, align 8
  %arrayidx508.i = getelementptr inbounds i16, ptr %1354, i64 %idxprom473.i
  store i16 %1335, ptr %arrayidx508.i, align 2
  %1355 = load ptr, ptr %arrayidx498.i1550, align 8
  %arrayidx512.i1553 = getelementptr inbounds i16, ptr %1355, i64 %idxprom490.i
  store i16 %1335, ptr %arrayidx512.i1553, align 2
  %1356 = load ptr, ptr %arrayidx498.i1550, align 8
  %arrayidx516.i1554 = getelementptr inbounds i16, ptr %1356, i64 %idxprom494.i
  store i16 %1335, ptr %arrayidx516.i1554, align 2
  %1357 = load ptr, ptr %arrayidx498.i1550, align 8
  %1358 = getelementptr i16, ptr %1357, i64 %idxprom424.i
  %arrayidx520.i1555 = getelementptr i8, ptr %1358, i64 4
  store i16 %1335, ptr %arrayidx520.i1555, align 2
  %1359 = load ptr, ptr %arrayidx498.i1550, align 8
  %1360 = getelementptr i16, ptr %1359, i64 %idxprom424.i
  %arrayidx524.i1556 = getelementptr i8, ptr %1360, i64 2
  store i16 %1335, ptr %arrayidx524.i1556, align 2
  %1361 = load ptr, ptr %arrayidx498.i1550, align 8
  %arrayidx528.i1557 = getelementptr inbounds i16, ptr %1361, i64 %idxprom424.i
  store i16 %1335, ptr %arrayidx528.i1557, align 2
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pix_d.i1387) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pix_c.i1386) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pix_b.i1385) #6
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %pix_a.i1384) #6
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %PredPel.i1383) #6
  br label %cleanup

sw.bb21:                                          ; preds = %entry
  %p_Vid1.i1590 = getelementptr inbounds i8, ptr %currMB, i64 8
  %1362 = load ptr, ptr %p_Vid1.i1590, align 8
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %PredPel.i1585) #6
  %tobool.not.i1591 = icmp eq i32 %pl, 0
  %dec_picture2.i1592 = getelementptr inbounds i8, ptr %2, i64 13520
  %1363 = load ptr, ptr %dec_picture2.i1592, align 8
  br i1 %tobool.not.i1591, label %cond.false.i1922, label %cond.true.i1593

cond.true.i1593:                                  ; preds = %sw.bb21
  %imgUV.i1594 = getelementptr inbounds i8, ptr %1363, i64 136
  %1364 = load ptr, ptr %imgUV.i1594, align 8
  %sub.i1595 = add i32 %pl, -1
  %idxprom.i1596 = zext i32 %sub.i1595 to i64
  %arrayidx.i1597 = getelementptr inbounds ptr, ptr %1364, i64 %idxprom.i1596
  br label %cond.end.i1598

cond.false.i1922:                                 ; preds = %sw.bb21
  %imgY3.i1923 = getelementptr inbounds i8, ptr %1363, i64 128
  br label %cond.end.i1598

cond.end.i1598:                                   ; preds = %cond.false.i1922, %cond.true.i1593
  %cond.in.i1599 = phi ptr [ %arrayidx.i1597, %cond.true.i1593 ], [ %imgY3.i1923, %cond.false.i1922 ]
  %cond.i1600 = load ptr, ptr %cond.in.i1599, align 8
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %pix_a.i1586) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pix_b.i1587) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pix_c.i1588) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pix_d.i1589) #6
  %mb_pred.i1601 = getelementptr inbounds i8, ptr %2, i64 1248
  %1365 = load ptr, ptr %mb_pred.i1601, align 8
  %idxprom10.i1602 = zext i32 %pl to i64
  %arrayidx11.i1603 = getelementptr inbounds ptr, ptr %1365, i64 %idxprom10.i1602
  %1366 = load ptr, ptr %arrayidx11.i1603, align 8
  %mb_size12.i1604 = getelementptr inbounds i8, ptr %1362, i64 849124
  %sub14.i1605 = add nsw i32 %ioff, -1
  call void @getAffNeighbour(ptr noundef nonnull %currMB, i32 noundef %sub14.i1605, i32 noundef %joff, ptr noundef nonnull %mb_size12.i1604, ptr noundef nonnull %pix_a.i1586) #6
  %1367 = add i32 %joff, 1
  %arrayidx17.1.i1606 = getelementptr inbounds i8, ptr %pix_a.i1586, i64 16
  call void @getAffNeighbour(ptr noundef nonnull %currMB, i32 noundef %sub14.i1605, i32 noundef %1367, ptr noundef nonnull %mb_size12.i1604, ptr noundef nonnull %arrayidx17.1.i1606) #6
  %1368 = add i32 %joff, 2
  %arrayidx17.2.i1607 = getelementptr inbounds i8, ptr %pix_a.i1586, i64 32
  call void @getAffNeighbour(ptr noundef nonnull %currMB, i32 noundef %sub14.i1605, i32 noundef %1368, ptr noundef nonnull %mb_size12.i1604, ptr noundef nonnull %arrayidx17.2.i1607) #6
  %1369 = add i32 %joff, 3
  %arrayidx17.3.i1608 = getelementptr inbounds i8, ptr %pix_a.i1586, i64 48
  call void @getAffNeighbour(ptr noundef nonnull %currMB, i32 noundef %sub14.i1605, i32 noundef %1369, ptr noundef nonnull %mb_size12.i1604, ptr noundef nonnull %arrayidx17.3.i1608) #6
  %1370 = add i32 %joff, 4
  %arrayidx17.4.i1609 = getelementptr inbounds i8, ptr %pix_a.i1586, i64 64
  call void @getAffNeighbour(ptr noundef nonnull %currMB, i32 noundef %sub14.i1605, i32 noundef %1370, ptr noundef nonnull %mb_size12.i1604, ptr noundef nonnull %arrayidx17.4.i1609) #6
  %1371 = add i32 %joff, 5
  %arrayidx17.5.i1610 = getelementptr inbounds i8, ptr %pix_a.i1586, i64 80
  call void @getAffNeighbour(ptr noundef nonnull %currMB, i32 noundef %sub14.i1605, i32 noundef %1371, ptr noundef nonnull %mb_size12.i1604, ptr noundef nonnull %arrayidx17.5.i1610) #6
  %1372 = add i32 %joff, 6
  %arrayidx17.6.i1611 = getelementptr inbounds i8, ptr %pix_a.i1586, i64 96
  call void @getAffNeighbour(ptr noundef nonnull %currMB, i32 noundef %sub14.i1605, i32 noundef %1372, ptr noundef nonnull %mb_size12.i1604, ptr noundef nonnull %arrayidx17.6.i1611) #6
  %1373 = add i32 %joff, 7
  %arrayidx17.7.i1612 = getelementptr inbounds i8, ptr %pix_a.i1586, i64 112
  call void @getAffNeighbour(ptr noundef nonnull %currMB, i32 noundef %sub14.i1605, i32 noundef %1373, ptr noundef nonnull %mb_size12.i1604, ptr noundef nonnull %arrayidx17.7.i1612) #6
  %sub18.i1613 = add nsw i32 %joff, -1
  call void @getAffNeighbour(ptr noundef nonnull %currMB, i32 noundef %ioff, i32 noundef %sub18.i1613, ptr noundef nonnull %mb_size12.i1604, ptr noundef nonnull %pix_b.i1587) #6
  %add19.i1614 = add nsw i32 %ioff, 8
  call void @getAffNeighbour(ptr noundef nonnull %currMB, i32 noundef %add19.i1614, i32 noundef %sub18.i1613, ptr noundef nonnull %mb_size12.i1604, ptr noundef nonnull %pix_c.i1588) #6
  call void @getAffNeighbour(ptr noundef nonnull %currMB, i32 noundef %sub14.i1605, i32 noundef %sub18.i1613, ptr noundef nonnull %mb_size12.i1604, ptr noundef nonnull %pix_d.i1589) #6
  %1374 = load i32, ptr %pix_c.i1588, align 4
  %tobool23.not.i1615 = icmp ne i32 %1374, 0
  %cmp24.i1616 = icmp ne i32 %ioff, 8
  %cmp26.i1617 = icmp ne i32 %joff, 8
  %.not.i1618 = or i1 %cmp24.i1616, %cmp26.i1617
  %narrow.i1619 = and i1 %.not.i1618, %tobool23.not.i1615
  %land.ext.i1620 = zext i1 %narrow.i1619 to i32
  store i32 %land.ext.i1620, ptr %pix_c.i1588, align 4
  %active_pps.i1621 = getelementptr inbounds i8, ptr %1362, i64 8
  %1375 = load ptr, ptr %active_pps.i1621, align 8
  %constrained_intra_pred_flag.i1622 = getelementptr inbounds i8, ptr %1375, i64 2204
  %1376 = load i32, ptr %constrained_intra_pred_flag.i1622, align 4
  %tobool29.not.i1623 = icmp eq i32 %1376, 0
  br i1 %tobool29.not.i1623, label %if.else.i1921, label %for.cond30.preheader.i1624

for.cond30.preheader.i1624:                       ; preds = %cond.end.i1598
  %intra_block.i1625 = getelementptr inbounds i8, ptr %2, i64 13544
  %1377 = load i32, ptr %pix_a.i1586, align 16
  %tobool36.not.i1626 = icmp eq i32 %1377, 0
  br i1 %tobool36.not.i1626, label %cond.end43.i1632, label %cond.true37.i1627

cond.true37.i1627:                                ; preds = %for.cond30.preheader.i1624
  %1378 = load ptr, ptr %intra_block.i1625, align 8
  %mb_addr.i1628 = getelementptr inbounds i8, ptr %pix_a.i1586, i64 4
  %1379 = load i32, ptr %mb_addr.i1628, align 4
  %idxprom40.i1629 = sext i32 %1379 to i64
  %arrayidx41.i1630 = getelementptr inbounds i8, ptr %1378, i64 %idxprom40.i1629
  %1380 = load i8, ptr %arrayidx41.i1630, align 1
  %conv703.i1631 = zext i8 %1380 to i32
  br label %cond.end43.i1632

cond.end43.i1632:                                 ; preds = %cond.true37.i1627, %for.cond30.preheader.i1624
  %cond44.i1633 = phi i32 [ %conv703.i1631, %cond.true37.i1627 ], [ 0, %for.cond30.preheader.i1624 ]
  %and.i1634 = and i32 %cond44.i1633, 1
  %1381 = load i32, ptr %arrayidx17.1.i1606, align 16
  %tobool36.not.1.i1635 = icmp eq i32 %1381, 0
  br i1 %tobool36.not.1.i1635, label %cond.end43.1.i1641, label %cond.true37.1.i1636

cond.true37.1.i1636:                              ; preds = %cond.end43.i1632
  %1382 = load ptr, ptr %intra_block.i1625, align 8
  %mb_addr.1.i1637 = getelementptr inbounds i8, ptr %pix_a.i1586, i64 20
  %1383 = load i32, ptr %mb_addr.1.i1637, align 4
  %idxprom40.1.i1638 = sext i32 %1383 to i64
  %arrayidx41.1.i1639 = getelementptr inbounds i8, ptr %1382, i64 %idxprom40.1.i1638
  %1384 = load i8, ptr %arrayidx41.1.i1639, align 1
  %conv.1704.i1640 = zext i8 %1384 to i32
  br label %cond.end43.1.i1641

cond.end43.1.i1641:                               ; preds = %cond.true37.1.i1636, %cond.end43.i1632
  %cond44.1.i1642 = phi i32 [ %conv.1704.i1640, %cond.true37.1.i1636 ], [ 0, %cond.end43.i1632 ]
  %and.1.i1643 = and i32 %and.i1634, %cond44.1.i1642
  %1385 = load i32, ptr %arrayidx17.2.i1607, align 16
  %tobool36.not.2.i1644 = icmp eq i32 %1385, 0
  br i1 %tobool36.not.2.i1644, label %cond.end43.2.i1650, label %cond.true37.2.i1645

cond.true37.2.i1645:                              ; preds = %cond.end43.1.i1641
  %1386 = load ptr, ptr %intra_block.i1625, align 8
  %mb_addr.2.i1646 = getelementptr inbounds i8, ptr %pix_a.i1586, i64 36
  %1387 = load i32, ptr %mb_addr.2.i1646, align 4
  %idxprom40.2.i1647 = sext i32 %1387 to i64
  %arrayidx41.2.i1648 = getelementptr inbounds i8, ptr %1386, i64 %idxprom40.2.i1647
  %1388 = load i8, ptr %arrayidx41.2.i1648, align 1
  %conv.2705.i1649 = zext i8 %1388 to i32
  br label %cond.end43.2.i1650

cond.end43.2.i1650:                               ; preds = %cond.true37.2.i1645, %cond.end43.1.i1641
  %cond44.2.i1651 = phi i32 [ %conv.2705.i1649, %cond.true37.2.i1645 ], [ 0, %cond.end43.1.i1641 ]
  %and.2.i1652 = and i32 %and.1.i1643, %cond44.2.i1651
  %1389 = load i32, ptr %arrayidx17.3.i1608, align 16
  %tobool36.not.3.i1653 = icmp eq i32 %1389, 0
  br i1 %tobool36.not.3.i1653, label %cond.end43.3.i1659, label %cond.true37.3.i1654

cond.true37.3.i1654:                              ; preds = %cond.end43.2.i1650
  %1390 = load ptr, ptr %intra_block.i1625, align 8
  %mb_addr.3.i1655 = getelementptr inbounds i8, ptr %pix_a.i1586, i64 52
  %1391 = load i32, ptr %mb_addr.3.i1655, align 4
  %idxprom40.3.i1656 = sext i32 %1391 to i64
  %arrayidx41.3.i1657 = getelementptr inbounds i8, ptr %1390, i64 %idxprom40.3.i1656
  %1392 = load i8, ptr %arrayidx41.3.i1657, align 1
  %conv.3706.i1658 = zext i8 %1392 to i32
  br label %cond.end43.3.i1659

cond.end43.3.i1659:                               ; preds = %cond.true37.3.i1654, %cond.end43.2.i1650
  %cond44.3.i1660 = phi i32 [ %conv.3706.i1658, %cond.true37.3.i1654 ], [ 0, %cond.end43.2.i1650 ]
  %and.3.i1661 = and i32 %and.2.i1652, %cond44.3.i1660
  %1393 = load i32, ptr %arrayidx17.4.i1609, align 16
  %tobool36.not.4.i1662 = icmp eq i32 %1393, 0
  br i1 %tobool36.not.4.i1662, label %cond.end43.4.i1668, label %cond.true37.4.i1663

cond.true37.4.i1663:                              ; preds = %cond.end43.3.i1659
  %1394 = load ptr, ptr %intra_block.i1625, align 8
  %mb_addr.4.i1664 = getelementptr inbounds i8, ptr %pix_a.i1586, i64 68
  %1395 = load i32, ptr %mb_addr.4.i1664, align 4
  %idxprom40.4.i1665 = sext i32 %1395 to i64
  %arrayidx41.4.i1666 = getelementptr inbounds i8, ptr %1394, i64 %idxprom40.4.i1665
  %1396 = load i8, ptr %arrayidx41.4.i1666, align 1
  %conv.4707.i1667 = zext i8 %1396 to i32
  br label %cond.end43.4.i1668

cond.end43.4.i1668:                               ; preds = %cond.true37.4.i1663, %cond.end43.3.i1659
  %cond44.4.i1669 = phi i32 [ %conv.4707.i1667, %cond.true37.4.i1663 ], [ 0, %cond.end43.3.i1659 ]
  %and.4.i1670 = and i32 %and.3.i1661, %cond44.4.i1669
  %1397 = load i32, ptr %arrayidx17.5.i1610, align 16
  %tobool36.not.5.i1671 = icmp eq i32 %1397, 0
  br i1 %tobool36.not.5.i1671, label %cond.end43.5.i1677, label %cond.true37.5.i1672

cond.true37.5.i1672:                              ; preds = %cond.end43.4.i1668
  %1398 = load ptr, ptr %intra_block.i1625, align 8
  %mb_addr.5.i1673 = getelementptr inbounds i8, ptr %pix_a.i1586, i64 84
  %1399 = load i32, ptr %mb_addr.5.i1673, align 4
  %idxprom40.5.i1674 = sext i32 %1399 to i64
  %arrayidx41.5.i1675 = getelementptr inbounds i8, ptr %1398, i64 %idxprom40.5.i1674
  %1400 = load i8, ptr %arrayidx41.5.i1675, align 1
  %conv.5708.i1676 = zext i8 %1400 to i32
  br label %cond.end43.5.i1677

cond.end43.5.i1677:                               ; preds = %cond.true37.5.i1672, %cond.end43.4.i1668
  %cond44.5.i1678 = phi i32 [ %conv.5708.i1676, %cond.true37.5.i1672 ], [ 0, %cond.end43.4.i1668 ]
  %and.5.i1679 = and i32 %and.4.i1670, %cond44.5.i1678
  %1401 = load i32, ptr %arrayidx17.6.i1611, align 16
  %tobool36.not.6.i1680 = icmp eq i32 %1401, 0
  br i1 %tobool36.not.6.i1680, label %cond.end43.6.i1686, label %cond.true37.6.i1681

cond.true37.6.i1681:                              ; preds = %cond.end43.5.i1677
  %1402 = load ptr, ptr %intra_block.i1625, align 8
  %mb_addr.6.i1682 = getelementptr inbounds i8, ptr %pix_a.i1586, i64 100
  %1403 = load i32, ptr %mb_addr.6.i1682, align 4
  %idxprom40.6.i1683 = sext i32 %1403 to i64
  %arrayidx41.6.i1684 = getelementptr inbounds i8, ptr %1402, i64 %idxprom40.6.i1683
  %1404 = load i8, ptr %arrayidx41.6.i1684, align 1
  %conv.6709.i1685 = zext i8 %1404 to i32
  br label %cond.end43.6.i1686

cond.end43.6.i1686:                               ; preds = %cond.true37.6.i1681, %cond.end43.5.i1677
  %cond44.6.i1687 = phi i32 [ %conv.6709.i1685, %cond.true37.6.i1681 ], [ 0, %cond.end43.5.i1677 ]
  %and.6.i1688 = and i32 %and.5.i1679, %cond44.6.i1687
  %1405 = load i32, ptr %arrayidx17.7.i1612, align 16
  %tobool36.not.7.i1689 = icmp eq i32 %1405, 0
  br i1 %tobool36.not.7.i1689, label %cond.end43.7.i1695, label %cond.true37.7.i1690

cond.true37.7.i1690:                              ; preds = %cond.end43.6.i1686
  %1406 = load ptr, ptr %intra_block.i1625, align 8
  %mb_addr.7.i1691 = getelementptr inbounds i8, ptr %pix_a.i1586, i64 116
  %1407 = load i32, ptr %mb_addr.7.i1691, align 4
  %idxprom40.7.i1692 = sext i32 %1407 to i64
  %arrayidx41.7.i1693 = getelementptr inbounds i8, ptr %1406, i64 %idxprom40.7.i1692
  %1408 = load i8, ptr %arrayidx41.7.i1693, align 1
  %conv.7.i16942001 = zext i8 %1408 to i32
  br label %cond.end43.7.i1695

cond.end43.7.i1695:                               ; preds = %cond.true37.7.i1690, %cond.end43.6.i1686
  %cond44.7.i1696 = phi i32 [ %conv.7.i16942001, %cond.true37.7.i1690 ], [ 0, %cond.end43.6.i1686 ]
  %and.7.i1697 = and i32 %and.6.i1688, %cond44.7.i1696
  %1409 = load i32, ptr %pix_b.i1587, align 4
  %tobool49.not.i1698 = icmp eq i32 %1409, 0
  br i1 %tobool49.not.i1698, label %cond.end57.i1704, label %cond.true50.i1699

cond.true50.i1699:                                ; preds = %cond.end43.7.i1695
  %1410 = load ptr, ptr %intra_block.i1625, align 8
  %mb_addr52.i1700 = getelementptr inbounds i8, ptr %pix_b.i1587, i64 4
  %1411 = load i32, ptr %mb_addr52.i1700, align 4
  %idxprom53.i1701 = sext i32 %1411 to i64
  %arrayidx54.i1702 = getelementptr inbounds i8, ptr %1410, i64 %idxprom53.i1701
  %1412 = load i8, ptr %arrayidx54.i1702, align 1
  %conv55.i1703 = sext i8 %1412 to i32
  br label %cond.end57.i1704

cond.end57.i1704:                                 ; preds = %cond.true50.i1699, %cond.end43.7.i1695
  %cond58.i1705 = phi i32 [ %conv55.i1703, %cond.true50.i1699 ], [ 0, %cond.end43.7.i1695 ]
  br i1 %narrow.i1619, label %cond.true61.i, label %cond.end68.i

cond.true61.i:                                    ; preds = %cond.end57.i1704
  %1413 = load ptr, ptr %intra_block.i1625, align 8
  %mb_addr63.i = getelementptr inbounds i8, ptr %pix_c.i1588, i64 4
  %1414 = load i32, ptr %mb_addr63.i, align 4
  %idxprom64.i = sext i32 %1414 to i64
  %arrayidx65.i = getelementptr inbounds i8, ptr %1413, i64 %idxprom64.i
  %1415 = load i8, ptr %arrayidx65.i, align 1
  %conv66.i = sext i8 %1415 to i32
  br label %cond.end68.i

cond.end68.i:                                     ; preds = %cond.true61.i, %cond.end57.i1704
  %cond69.i = phi i32 [ %conv66.i, %cond.true61.i ], [ 0, %cond.end57.i1704 ]
  %1416 = load i32, ptr %pix_d.i1589, align 4
  %tobool71.not.i1706 = icmp eq i32 %1416, 0
  br i1 %tobool71.not.i1706, label %if.end.thread.i1918, label %cond.true72.i1707

if.end.thread.i1918:                              ; preds = %cond.end68.i
  %tobool86658.not.i = icmp eq i32 %cond58.i1705, 0
  %tobool87659.i = icmp ne i32 %and.7.i1697, 0
  %current_mb_nr695.i1919 = getelementptr inbounds i8, ptr %2, i64 108
  %1417 = load i32, ptr %current_mb_nr695.i1919, align 4
  %call696.i1920 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, i32 noundef %1417)
  br i1 %tobool86658.not.i, label %if.else114.i, label %if.then93.i

cond.true72.i1707:                                ; preds = %cond.end68.i
  %1418 = load ptr, ptr %intra_block.i1625, align 8
  %mb_addr74.i1708 = getelementptr inbounds i8, ptr %pix_d.i1589, i64 4
  %1419 = load i32, ptr %mb_addr74.i1708, align 4
  %idxprom75.i1709 = sext i32 %1419 to i64
  %arrayidx76.i1710 = getelementptr inbounds i8, ptr %1418, i64 %idxprom75.i1709
  %1420 = load i8, ptr %arrayidx76.i1710, align 1
  %conv77.i1711 = sext i8 %1420 to i32
  br label %if.end.i1712

if.else.i1921:                                    ; preds = %cond.end.i1598
  %1421 = load i32, ptr %pix_a.i1586, align 16
  %1422 = load i32, ptr %pix_b.i1587, align 4
  %1423 = load i32, ptr %pix_d.i1589, align 4
  br label %if.end.i1712

if.end.i1712:                                     ; preds = %if.else.i1921, %cond.true72.i1707
  %block_available_up_right.0.i1713 = phi i32 [ %land.ext.i1620, %if.else.i1921 ], [ %cond69.i, %cond.true72.i1707 ]
  %block_available_up_left.0.i1714 = phi i32 [ %1423, %if.else.i1921 ], [ %conv77.i1711, %cond.true72.i1707 ]
  %block_available_left.1.i1715 = phi i32 [ %1421, %if.else.i1921 ], [ %and.7.i1697, %cond.true72.i1707 ]
  %block_available_up.0.i1716 = phi i32 [ %1422, %if.else.i1921 ], [ %cond58.i1705, %cond.true72.i1707 ]
  %tobool86.i = icmp ne i32 %block_available_up.0.i1716, 0
  %tobool87.i = icmp ne i32 %block_available_left.1.i1715, 0
  %or.cond.i1717 = select i1 %tobool86.i, i1 %tobool87.i, i1 false
  %tobool89.i = icmp ne i32 %block_available_up_left.0.i1714, 0
  %or.cond559.i1718 = select i1 %or.cond.i1717, i1 %tobool89.i, i1 false
  br i1 %or.cond559.i1718, label %if.then93.i, label %if.then90.i

if.then90.i:                                      ; preds = %if.end.i1712
  %current_mb_nr.i1719 = getelementptr inbounds i8, ptr %2, i64 108
  %1424 = load i32, ptr %current_mb_nr.i1719, align 4
  %call.i1720 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, i32 noundef %1424)
  br i1 %tobool86.i, label %if.then93.i, label %if.else114.i

if.then93.i:                                      ; preds = %if.then90.i, %if.end.i1712, %if.end.thread.i1918
  %block_available_up_right.0664694.i = phi i32 [ %block_available_up_right.0.i1713, %if.then90.i ], [ %cond69.i, %if.end.thread.i1918 ], [ %block_available_up_right.0.i1713, %if.end.i1712 ]
  %block_available_up_left.0666691.i = phi i32 [ %block_available_up_left.0.i1714, %if.then90.i ], [ 0, %if.end.thread.i1918 ], [ %block_available_up_left.0.i1714, %if.end.i1712 ]
  %block_available_left.1668688.i = phi i32 [ %block_available_left.1.i1715, %if.then90.i ], [ %and.7.i1697, %if.end.thread.i1918 ], [ %block_available_left.1.i1715, %if.end.i1712 ]
  %block_available_up.0670685.i = phi i32 [ %block_available_up.0.i1716, %if.then90.i ], [ %cond58.i1705, %if.end.thread.i1918 ], [ %block_available_up.0.i1716, %if.end.i1712 ]
  %tobool87674682.i = phi i1 [ %tobool87.i, %if.then90.i ], [ %tobool87659.i, %if.end.thread.i1918 ], [ true, %if.end.i1712 ]
  %tobool89676679.i = phi i1 [ %tobool89.i, %if.then90.i ], [ false, %if.end.thread.i1918 ], [ true, %if.end.i1712 ]
  %pos_y.i1899 = getelementptr inbounds i8, ptr %pix_b.i1587, i64 14
  %1425 = load i16, ptr %pos_y.i1899, align 2
  %idxprom94.i = sext i16 %1425 to i64
  %arrayidx95.i1900 = getelementptr inbounds ptr, ptr %cond.i1600, i64 %idxprom94.i
  %1426 = load ptr, ptr %arrayidx95.i1900, align 8
  %pos_x.i1901 = getelementptr inbounds i8, ptr %pix_b.i1587, i64 12
  %1427 = load i16, ptr %pos_x.i1901, align 4
  %idxprom96.i = sext i16 %1427 to i64
  %arrayidx97.i1902 = getelementptr inbounds i16, ptr %1426, i64 %idxprom96.i
  %1428 = load i16, ptr %arrayidx97.i1902, align 2
  %arrayidx99.i1903 = getelementptr inbounds i8, ptr %PredPel.i1585, i64 2
  store i16 %1428, ptr %arrayidx99.i1903, align 2
  %arrayidx100.i1904 = getelementptr inbounds i8, ptr %arrayidx97.i1902, i64 2
  %1429 = load i16, ptr %arrayidx100.i1904, align 2
  %arrayidx101.i1905 = getelementptr inbounds i8, ptr %PredPel.i1585, i64 4
  store i16 %1429, ptr %arrayidx101.i1905, align 4
  %arrayidx102.i1906 = getelementptr inbounds i8, ptr %arrayidx97.i1902, i64 4
  %1430 = load i16, ptr %arrayidx102.i1906, align 2
  %arrayidx103.i1907 = getelementptr inbounds i8, ptr %PredPel.i1585, i64 6
  store i16 %1430, ptr %arrayidx103.i1907, align 2
  %arrayidx104.i1908 = getelementptr inbounds i8, ptr %arrayidx97.i1902, i64 6
  %1431 = load i16, ptr %arrayidx104.i1908, align 2
  %arrayidx105.i1909 = getelementptr inbounds i8, ptr %PredPel.i1585, i64 8
  store i16 %1431, ptr %arrayidx105.i1909, align 8
  %arrayidx106.i1910 = getelementptr inbounds i8, ptr %arrayidx97.i1902, i64 8
  %1432 = load i16, ptr %arrayidx106.i1910, align 2
  %arrayidx107.i1911 = getelementptr inbounds i8, ptr %PredPel.i1585, i64 10
  store i16 %1432, ptr %arrayidx107.i1911, align 2
  %arrayidx108.i1912 = getelementptr inbounds i8, ptr %arrayidx97.i1902, i64 10
  %1433 = load i16, ptr %arrayidx108.i1912, align 2
  %arrayidx109.i1913 = getelementptr inbounds i8, ptr %PredPel.i1585, i64 12
  store i16 %1433, ptr %arrayidx109.i1913, align 4
  %arrayidx110.i1914 = getelementptr inbounds i8, ptr %arrayidx97.i1902, i64 12
  %1434 = load i16, ptr %arrayidx110.i1914, align 2
  %arrayidx111.i1915 = getelementptr inbounds i8, ptr %PredPel.i1585, i64 14
  store i16 %1434, ptr %arrayidx111.i1915, align 2
  %arrayidx112.i1916 = getelementptr inbounds i8, ptr %arrayidx97.i1902, i64 14
  %1435 = load i16, ptr %arrayidx112.i1916, align 2
  %arrayidx113.i1917 = getelementptr inbounds i8, ptr %PredPel.i1585, i64 16
  store i16 %1435, ptr %arrayidx113.i1917, align 16
  br label %if.end126.i

if.else114.i:                                     ; preds = %if.then90.i, %if.end.thread.i1918
  %block_available_up_right.0664693.i = phi i32 [ %block_available_up_right.0.i1713, %if.then90.i ], [ %cond69.i, %if.end.thread.i1918 ]
  %block_available_up_left.0666690.i = phi i32 [ %block_available_up_left.0.i1714, %if.then90.i ], [ 0, %if.end.thread.i1918 ]
  %block_available_left.1668687.i = phi i32 [ %block_available_left.1.i1715, %if.then90.i ], [ %and.7.i1697, %if.end.thread.i1918 ]
  %tobool87674681.i = phi i1 [ %tobool87.i, %if.then90.i ], [ %tobool87659.i, %if.end.thread.i1918 ]
  %tobool89676678.i = phi i1 [ %tobool89.i, %if.then90.i ], [ false, %if.end.thread.i1918 ]
  %dc_pred_value_comp.i1721 = getelementptr inbounds i8, ptr %1362, i64 849060
  %arrayidx116.i1722 = getelementptr inbounds [3 x i32], ptr %dc_pred_value_comp.i1721, i64 0, i64 %idxprom10.i1602
  %1436 = load i32, ptr %arrayidx116.i1722, align 4
  %conv117.i = trunc i32 %1436 to i16
  %arrayidx125.i1730 = getelementptr inbounds i8, ptr %PredPel.i1585, i64 2
  %1437 = insertelement <8 x i16> poison, i16 %conv117.i, i64 0
  %1438 = shufflevector <8 x i16> %1437, <8 x i16> poison, <8 x i32> zeroinitializer
  store <8 x i16> %1438, ptr %arrayidx125.i1730, align 2
  br label %if.end126.i

if.end126.i:                                      ; preds = %if.else114.i, %if.then93.i
  %1439 = phi i16 [ %conv117.i, %if.else114.i ], [ %1435, %if.then93.i ]
  %block_available_up_right.0664692.i = phi i32 [ %block_available_up_right.0664693.i, %if.else114.i ], [ %block_available_up_right.0664694.i, %if.then93.i ]
  %block_available_up_left.0666689.i = phi i32 [ %block_available_up_left.0666690.i, %if.else114.i ], [ %block_available_up_left.0666691.i, %if.then93.i ]
  %block_available_left.1668686.i = phi i32 [ %block_available_left.1668687.i, %if.else114.i ], [ %block_available_left.1668688.i, %if.then93.i ]
  %block_available_up.0670683.i = phi i32 [ 0, %if.else114.i ], [ %block_available_up.0670685.i, %if.then93.i ]
  %tobool87674680.i = phi i1 [ %tobool87674681.i, %if.else114.i ], [ %tobool87674682.i, %if.then93.i ]
  %tobool89676677.i = phi i1 [ %tobool89676678.i, %if.else114.i ], [ %tobool89676679.i, %if.then93.i ]
  %tobool127.not.i = icmp eq i32 %block_available_up_right.0664692.i, 0
  br i1 %tobool127.not.i, label %if.else151.i, label %if.then128.i

if.then128.i:                                     ; preds = %if.end126.i
  %pos_y129.i = getelementptr inbounds i8, ptr %pix_c.i1588, i64 14
  %1440 = load i16, ptr %pos_y129.i, align 2
  %idxprom130.i = sext i16 %1440 to i64
  %arrayidx131.i1731 = getelementptr inbounds ptr, ptr %cond.i1600, i64 %idxprom130.i
  %1441 = load ptr, ptr %arrayidx131.i1731, align 8
  %pos_x132.i = getelementptr inbounds i8, ptr %pix_c.i1588, i64 12
  %1442 = load i16, ptr %pos_x132.i, align 4
  %idxprom133.i = sext i16 %1442 to i64
  %arrayidx134.i1732 = getelementptr inbounds i16, ptr %1441, i64 %idxprom133.i
  %1443 = load i16, ptr %arrayidx134.i1732, align 2
  %arrayidx136.i1733 = getelementptr inbounds i8, ptr %PredPel.i1585, i64 18
  store i16 %1443, ptr %arrayidx136.i1733, align 2
  %arrayidx137.i1734 = getelementptr inbounds i8, ptr %arrayidx134.i1732, i64 2
  %1444 = load i16, ptr %arrayidx137.i1734, align 2
  %arrayidx138.i1735 = getelementptr inbounds i8, ptr %PredPel.i1585, i64 20
  store i16 %1444, ptr %arrayidx138.i1735, align 4
  %arrayidx139.i1736 = getelementptr inbounds i8, ptr %arrayidx134.i1732, i64 4
  %1445 = load i16, ptr %arrayidx139.i1736, align 2
  %arrayidx140.i1737 = getelementptr inbounds i8, ptr %PredPel.i1585, i64 22
  store i16 %1445, ptr %arrayidx140.i1737, align 2
  %arrayidx141.i1738 = getelementptr inbounds i8, ptr %arrayidx134.i1732, i64 6
  %1446 = load i16, ptr %arrayidx141.i1738, align 2
  %arrayidx142.i1739 = getelementptr inbounds i8, ptr %PredPel.i1585, i64 24
  store i16 %1446, ptr %arrayidx142.i1739, align 8
  %arrayidx143.i1740 = getelementptr inbounds i8, ptr %arrayidx134.i1732, i64 8
  %1447 = load i16, ptr %arrayidx143.i1740, align 2
  %arrayidx144.i1741 = getelementptr inbounds i8, ptr %PredPel.i1585, i64 26
  store i16 %1447, ptr %arrayidx144.i1741, align 2
  %arrayidx145.i1742 = getelementptr inbounds i8, ptr %arrayidx134.i1732, i64 10
  %1448 = load i16, ptr %arrayidx145.i1742, align 2
  %arrayidx146.i1743 = getelementptr inbounds i8, ptr %PredPel.i1585, i64 28
  store i16 %1448, ptr %arrayidx146.i1743, align 4
  %arrayidx147.i1744 = getelementptr inbounds i8, ptr %arrayidx134.i1732, i64 12
  %1449 = load i16, ptr %arrayidx147.i1744, align 2
  %arrayidx148.i1745 = getelementptr inbounds i8, ptr %PredPel.i1585, i64 30
  store i16 %1449, ptr %arrayidx148.i1745, align 2
  %arrayidx149.i1746 = getelementptr inbounds i8, ptr %arrayidx134.i1732, i64 14
  %1450 = load i16, ptr %arrayidx149.i1746, align 2
  %arrayidx150.i1747 = getelementptr inbounds i8, ptr %PredPel.i1585, i64 32
  store i16 %1450, ptr %arrayidx150.i1747, align 16
  br label %if.end161.i

if.else151.i:                                     ; preds = %if.end126.i
  %arrayidx160.i1898 = getelementptr inbounds i8, ptr %PredPel.i1585, i64 18
  %1451 = insertelement <8 x i16> poison, i16 %1439, i64 0
  %1452 = shufflevector <8 x i16> %1451, <8 x i16> poison, <8 x i32> zeroinitializer
  store <8 x i16> %1452, ptr %arrayidx160.i1898, align 2
  br label %if.end161.i

if.end161.i:                                      ; preds = %if.else151.i, %if.then128.i
  br i1 %tobool87674680.i, label %if.then163.i, label %if.else236.i

if.then163.i:                                     ; preds = %if.end161.i
  %pos_y165.i1839 = getelementptr inbounds i8, ptr %pix_a.i1586, i64 14
  %1453 = load i16, ptr %pos_y165.i1839, align 2
  %idxprom166.i1840 = sext i16 %1453 to i64
  %arrayidx167.i1841 = getelementptr inbounds ptr, ptr %cond.i1600, i64 %idxprom166.i1840
  %1454 = load ptr, ptr %arrayidx167.i1841, align 8
  %pos_x169.i1842 = getelementptr inbounds i8, ptr %pix_a.i1586, i64 12
  %1455 = load i16, ptr %pos_x169.i1842, align 4
  %idxprom170.i1843 = sext i16 %1455 to i64
  %arrayidx171.i1844 = getelementptr inbounds i16, ptr %1454, i64 %idxprom170.i1843
  %1456 = load i16, ptr %arrayidx171.i1844, align 2
  %arrayidx172.i1845 = getelementptr inbounds i8, ptr %PredPel.i1585, i64 34
  store i16 %1456, ptr %arrayidx172.i1845, align 2
  %pos_y174.i1846 = getelementptr inbounds i8, ptr %pix_a.i1586, i64 30
  %1457 = load i16, ptr %pos_y174.i1846, align 2
  %idxprom175.i1847 = sext i16 %1457 to i64
  %arrayidx176.i1848 = getelementptr inbounds ptr, ptr %cond.i1600, i64 %idxprom175.i1847
  %1458 = load ptr, ptr %arrayidx176.i1848, align 8
  %pos_x178.i1849 = getelementptr inbounds i8, ptr %pix_a.i1586, i64 28
  %1459 = load i16, ptr %pos_x178.i1849, align 4
  %idxprom179.i1850 = sext i16 %1459 to i64
  %arrayidx180.i1851 = getelementptr inbounds i16, ptr %1458, i64 %idxprom179.i1850
  %1460 = load i16, ptr %arrayidx180.i1851, align 2
  %arrayidx181.i1852 = getelementptr inbounds i8, ptr %PredPel.i1585, i64 36
  store i16 %1460, ptr %arrayidx181.i1852, align 4
  %pos_y183.i1853 = getelementptr inbounds i8, ptr %pix_a.i1586, i64 46
  %1461 = load i16, ptr %pos_y183.i1853, align 2
  %idxprom184.i1854 = sext i16 %1461 to i64
  %arrayidx185.i1855 = getelementptr inbounds ptr, ptr %cond.i1600, i64 %idxprom184.i1854
  %1462 = load ptr, ptr %arrayidx185.i1855, align 8
  %pos_x187.i1856 = getelementptr inbounds i8, ptr %pix_a.i1586, i64 44
  %1463 = load i16, ptr %pos_x187.i1856, align 4
  %idxprom188.i1857 = sext i16 %1463 to i64
  %arrayidx189.i1858 = getelementptr inbounds i16, ptr %1462, i64 %idxprom188.i1857
  %1464 = load i16, ptr %arrayidx189.i1858, align 2
  %arrayidx190.i1859 = getelementptr inbounds i8, ptr %PredPel.i1585, i64 38
  store i16 %1464, ptr %arrayidx190.i1859, align 2
  %pos_y192.i1860 = getelementptr inbounds i8, ptr %pix_a.i1586, i64 62
  %1465 = load i16, ptr %pos_y192.i1860, align 2
  %idxprom193.i1861 = sext i16 %1465 to i64
  %arrayidx194.i1862 = getelementptr inbounds ptr, ptr %cond.i1600, i64 %idxprom193.i1861
  %1466 = load ptr, ptr %arrayidx194.i1862, align 8
  %pos_x196.i1863 = getelementptr inbounds i8, ptr %pix_a.i1586, i64 60
  %1467 = load i16, ptr %pos_x196.i1863, align 4
  %idxprom197.i1864 = sext i16 %1467 to i64
  %arrayidx198.i1865 = getelementptr inbounds i16, ptr %1466, i64 %idxprom197.i1864
  %1468 = load i16, ptr %arrayidx198.i1865, align 2
  %arrayidx199.i1866 = getelementptr inbounds i8, ptr %PredPel.i1585, i64 40
  store i16 %1468, ptr %arrayidx199.i1866, align 8
  %pos_y201.i1867 = getelementptr inbounds i8, ptr %pix_a.i1586, i64 78
  %1469 = load i16, ptr %pos_y201.i1867, align 2
  %idxprom202.i1868 = sext i16 %1469 to i64
  %arrayidx203.i1869 = getelementptr inbounds ptr, ptr %cond.i1600, i64 %idxprom202.i1868
  %1470 = load ptr, ptr %arrayidx203.i1869, align 8
  %pos_x205.i1870 = getelementptr inbounds i8, ptr %pix_a.i1586, i64 76
  %1471 = load i16, ptr %pos_x205.i1870, align 4
  %idxprom206.i1871 = sext i16 %1471 to i64
  %arrayidx207.i1872 = getelementptr inbounds i16, ptr %1470, i64 %idxprom206.i1871
  %1472 = load i16, ptr %arrayidx207.i1872, align 2
  %arrayidx208.i1873 = getelementptr inbounds i8, ptr %PredPel.i1585, i64 42
  store i16 %1472, ptr %arrayidx208.i1873, align 2
  %pos_y210.i1874 = getelementptr inbounds i8, ptr %pix_a.i1586, i64 94
  %1473 = load i16, ptr %pos_y210.i1874, align 2
  %idxprom211.i1875 = sext i16 %1473 to i64
  %arrayidx212.i1876 = getelementptr inbounds ptr, ptr %cond.i1600, i64 %idxprom211.i1875
  %1474 = load ptr, ptr %arrayidx212.i1876, align 8
  %pos_x214.i1877 = getelementptr inbounds i8, ptr %pix_a.i1586, i64 92
  %1475 = load i16, ptr %pos_x214.i1877, align 4
  %idxprom215.i1878 = sext i16 %1475 to i64
  %arrayidx216.i1879 = getelementptr inbounds i16, ptr %1474, i64 %idxprom215.i1878
  %1476 = load i16, ptr %arrayidx216.i1879, align 2
  %arrayidx217.i1880 = getelementptr inbounds i8, ptr %PredPel.i1585, i64 44
  store i16 %1476, ptr %arrayidx217.i1880, align 4
  %pos_y219.i1881 = getelementptr inbounds i8, ptr %pix_a.i1586, i64 110
  %1477 = load i16, ptr %pos_y219.i1881, align 2
  %idxprom220.i1882 = sext i16 %1477 to i64
  %arrayidx221.i1883 = getelementptr inbounds ptr, ptr %cond.i1600, i64 %idxprom220.i1882
  %1478 = load ptr, ptr %arrayidx221.i1883, align 8
  %pos_x223.i1884 = getelementptr inbounds i8, ptr %pix_a.i1586, i64 108
  %1479 = load i16, ptr %pos_x223.i1884, align 4
  %idxprom224.i1885 = sext i16 %1479 to i64
  %arrayidx225.i1886 = getelementptr inbounds i16, ptr %1478, i64 %idxprom224.i1885
  %1480 = load i16, ptr %arrayidx225.i1886, align 2
  %arrayidx226.i1887 = getelementptr inbounds i8, ptr %PredPel.i1585, i64 46
  store i16 %1480, ptr %arrayidx226.i1887, align 2
  %pos_y228.i = getelementptr inbounds i8, ptr %pix_a.i1586, i64 126
  %1481 = load i16, ptr %pos_y228.i, align 2
  %idxprom229.i = sext i16 %1481 to i64
  %arrayidx230.i1888 = getelementptr inbounds ptr, ptr %cond.i1600, i64 %idxprom229.i
  %1482 = load ptr, ptr %arrayidx230.i1888, align 8
  %pos_x232.i = getelementptr inbounds i8, ptr %pix_a.i1586, i64 124
  %1483 = load i16, ptr %pos_x232.i, align 4
  %idxprom233.i1889 = sext i16 %1483 to i64
  %arrayidx234.i1890 = getelementptr inbounds i16, ptr %1482, i64 %idxprom233.i1889
  %1484 = load i16, ptr %arrayidx234.i1890, align 2
  br label %if.end249.i

if.else236.i:                                     ; preds = %if.end161.i
  %dc_pred_value_comp237.i = getelementptr inbounds i8, ptr %1362, i64 849060
  %arrayidx239.i1748 = getelementptr inbounds [3 x i32], ptr %dc_pred_value_comp237.i, i64 0, i64 %idxprom10.i1602
  %1485 = load i32, ptr %arrayidx239.i1748, align 4
  %conv240.i = trunc i32 %1485 to i16
  %arrayidx242.i = getelementptr inbounds i8, ptr %PredPel.i1585, i64 46
  store i16 %conv240.i, ptr %arrayidx242.i, align 2
  %arrayidx243.i1749 = getelementptr inbounds i8, ptr %PredPel.i1585, i64 44
  store i16 %conv240.i, ptr %arrayidx243.i1749, align 4
  %arrayidx244.i1750 = getelementptr inbounds i8, ptr %PredPel.i1585, i64 42
  store i16 %conv240.i, ptr %arrayidx244.i1750, align 2
  %arrayidx248.i1754 = getelementptr inbounds i8, ptr %PredPel.i1585, i64 34
  %1486 = insertelement <4 x i16> poison, i16 %conv240.i, i64 0
  %1487 = shufflevector <4 x i16> %1486, <4 x i16> poison, <4 x i32> zeroinitializer
  store <4 x i16> %1487, ptr %arrayidx248.i1754, align 2
  br label %if.end249.i

if.end249.i:                                      ; preds = %if.else236.i, %if.then163.i
  %conv240.sink.i = phi i16 [ %1484, %if.then163.i ], [ %conv240.i, %if.else236.i ]
  %1488 = getelementptr inbounds i8, ptr %PredPel.i1585, i64 48
  store i16 %conv240.sink.i, ptr %1488, align 16
  br i1 %tobool89676677.i, label %if.then251.i, label %if.else259.i

if.then251.i:                                     ; preds = %if.end249.i
  %pos_y252.i = getelementptr inbounds i8, ptr %pix_d.i1589, i64 14
  %1489 = load i16, ptr %pos_y252.i, align 2
  %idxprom253.i = sext i16 %1489 to i64
  %arrayidx254.i = getelementptr inbounds ptr, ptr %cond.i1600, i64 %idxprom253.i
  %1490 = load ptr, ptr %arrayidx254.i, align 8
  %pos_x255.i = getelementptr inbounds i8, ptr %pix_d.i1589, i64 12
  %1491 = load i16, ptr %pos_x255.i, align 4
  %idxprom256.i = sext i16 %1491 to i64
  %arrayidx257.i1838 = getelementptr inbounds i16, ptr %1490, i64 %idxprom256.i
  %1492 = load i16, ptr %arrayidx257.i1838, align 2
  br label %intra8x8_hor_down_pred_mbaff.exit

if.else259.i:                                     ; preds = %if.end249.i
  %dc_pred_value_comp260.i = getelementptr inbounds i8, ptr %1362, i64 849060
  %arrayidx262.i1755 = getelementptr inbounds [3 x i32], ptr %dc_pred_value_comp260.i, i64 0, i64 %idxprom10.i1602
  %1493 = load i32, ptr %arrayidx262.i1755, align 4
  %conv263.i1756 = trunc i32 %1493 to i16
  br label %intra8x8_hor_down_pred_mbaff.exit

intra8x8_hor_down_pred_mbaff.exit:                ; preds = %if.then251.i, %if.else259.i
  %storemerge.i1757 = phi i16 [ %conv263.i1756, %if.else259.i ], [ %1492, %if.then251.i ]
  %.sink.i1758 = phi i32 [ 0, %if.else259.i ], [ %block_available_up_left.0666689.i, %if.then251.i ]
  store i16 %storemerge.i1757, ptr %PredPel.i1585, align 16
  call fastcc void @LowPassForIntra8x8Pred(ptr noundef nonnull %PredPel.i1585, i32 noundef %.sink.i1758, i32 noundef %block_available_up.0670683.i, i32 noundef %block_available_left.1668686.i)
  %1494 = sext i32 %joff to i64
  %1495 = load i16, ptr %1488, align 16
  %conv268.i1759 = zext i16 %1495 to i32
  %arrayidx269.i = getelementptr inbounds i8, ptr %PredPel.i1585, i64 46
  %1496 = load i16, ptr %arrayidx269.i, align 2
  %conv270.i = zext i16 %1496 to i32
  %add271.i = add nuw nsw i32 %conv270.i, 1
  %add272.i1760 = add nuw nsw i32 %add271.i, %conv268.i1759
  %shr.i1761 = lshr i32 %add272.i1760, 1
  %conv273.i = trunc nuw i32 %shr.i1761 to i16
  %arrayidx275.i = getelementptr inbounds i8, ptr %PredPel.i1585, i64 44
  %1497 = load i16, ptr %arrayidx275.i, align 4
  %conv276.i = zext i16 %1497 to i32
  %mul.i1762 = shl nuw nsw i32 %conv270.i, 1
  %add279.i1763 = add nuw nsw i32 %conv276.i, 2
  %add282.i1764 = add nuw nsw i32 %mul.i1762, %conv268.i1759
  %add283.i1765 = add nuw nsw i32 %add282.i1764, %add279.i1763
  %shr284.i = lshr i32 %add283.i1765, 2
  %conv285.i = trunc nuw i32 %shr284.i to i16
  %add292.i1766 = add nuw nsw i32 %add271.i, %conv276.i
  %shr293.i = lshr i32 %add292.i1766, 1
  %conv294.i = trunc nuw i32 %shr293.i to i16
  %arrayidx296.i1767 = getelementptr inbounds i8, ptr %PredPel.i1585, i64 42
  %1498 = load i16, ptr %arrayidx296.i1767, align 2
  %conv297.i1768 = zext i16 %1498 to i32
  %mul303.i = shl nuw nsw i32 %conv276.i, 1
  %add300.i1769 = add nuw nsw i32 %conv297.i1768, 2
  %add304.i1770 = add nuw nsw i32 %mul303.i, %conv270.i
  %add305.i1771 = add nuw nsw i32 %add304.i1770, %add300.i1769
  %shr306.i = lshr i32 %add305.i1771, 2
  %conv307.i = trunc nuw i32 %shr306.i to i16
  %add313.i = add nuw nsw i32 %conv297.i1768, 1
  %add314.i1772 = add nuw nsw i32 %add313.i, %conv276.i
  %shr315.i = lshr i32 %add314.i1772, 1
  %conv316.i1773 = trunc nuw i32 %shr315.i to i16
  %arrayidx318.i1774 = getelementptr inbounds i8, ptr %PredPel.i1585, i64 40
  %1499 = load i16, ptr %arrayidx318.i1774, align 8
  %conv319.i1775 = zext i16 %1499 to i32
  %mul325.i = shl nuw nsw i32 %conv297.i1768, 1
  %add326.i1776 = add nuw nsw i32 %add279.i1763, %conv319.i1775
  %add327.i1777 = add nuw nsw i32 %add326.i1776, %mul325.i
  %shr328.i = lshr i32 %add327.i1777, 2
  %conv329.i = trunc nuw i32 %shr328.i to i16
  %add336.i = add nuw nsw i32 %add313.i, %conv319.i1775
  %shr337.i = lshr i32 %add336.i, 1
  %conv338.i = trunc nuw i32 %shr337.i to i16
  %arrayidx340.i1778 = getelementptr inbounds i8, ptr %PredPel.i1585, i64 38
  %1500 = load i16, ptr %arrayidx340.i1778, align 2
  %conv341.i1779 = zext i16 %1500 to i32
  %mul347.i = shl nuw nsw i32 %conv319.i1775, 1
  %add348.i = add nuw nsw i32 %add300.i1769, %conv341.i1779
  %add349.i = add nuw nsw i32 %add348.i, %mul347.i
  %shr350.i = lshr i32 %add349.i, 2
  %conv351.i = trunc nuw i32 %shr350.i to i16
  %add357.i1780 = add nuw nsw i32 %conv319.i1775, 1
  %add358.i1781 = add nuw nsw i32 %add357.i1780, %conv341.i1779
  %shr359.i1782 = lshr i32 %add358.i1781, 1
  %conv360.i1783 = trunc nuw i32 %shr359.i1782 to i16
  %arrayidx362.i1784 = getelementptr inbounds i8, ptr %PredPel.i1585, i64 36
  %1501 = load i16, ptr %arrayidx362.i1784, align 4
  %conv363.i1785 = zext i16 %1501 to i32
  %mul369.i1786 = shl nuw nsw i32 %conv341.i1779, 1
  %add366.i1787 = add nuw nsw i32 %conv363.i1785, 2
  %add370.i1788 = add nuw nsw i32 %add366.i1787, %conv319.i1775
  %add371.i1789 = add nuw nsw i32 %add370.i1788, %mul369.i1786
  %shr372.i1790 = lshr i32 %add371.i1789, 2
  %conv373.i1791 = trunc nuw i32 %shr372.i1790 to i16
  %add379.i1792 = add nuw nsw i32 %conv341.i1779, 1
  %add380.i1793 = add nuw nsw i32 %add379.i1792, %conv363.i1785
  %shr381.i = lshr i32 %add380.i1793, 1
  %conv382.i1794 = trunc nuw i32 %shr381.i to i16
  %arrayidx384.i1795 = getelementptr inbounds i8, ptr %PredPel.i1585, i64 34
  %1502 = load i16, ptr %arrayidx384.i1795, align 2
  %conv385.i = zext i16 %1502 to i32
  %mul391.i = shl nuw nsw i32 %conv363.i1785, 1
  %add388.i1796 = add nuw nsw i32 %conv385.i, 2
  %add392.i1797 = add nuw nsw i32 %add388.i1796, %conv341.i1779
  %add393.i1798 = add nuw nsw i32 %add392.i1797, %mul391.i
  %shr394.i = lshr i32 %add393.i1798, 2
  %conv395.i = trunc nuw i32 %shr394.i to i16
  %add401.i1799 = add nuw nsw i32 %conv363.i1785, 1
  %add402.i1800 = add nuw nsw i32 %add401.i1799, %conv385.i
  %shr403.i1801 = lshr i32 %add402.i1800, 1
  %conv404.i1802 = trunc nuw i32 %shr403.i1801 to i16
  %1503 = load i16, ptr %PredPel.i1585, align 16
  %conv407.i = zext i16 %1503 to i32
  %mul413.i1803 = shl nuw nsw i32 %conv385.i, 1
  %add414.i1805 = add nuw nsw i32 %add366.i1787, %conv407.i
  %add415.i1806 = add nuw nsw i32 %add414.i1805, %mul413.i1803
  %shr416.i1807 = lshr i32 %add415.i1806, 2
  %conv417.i1808 = trunc nuw i32 %shr416.i1807 to i16
  %add423.i1809 = add nuw nsw i32 %conv385.i, 1
  %add424.i = add nuw nsw i32 %add423.i1809, %conv407.i
  %shr425.i = lshr i32 %add424.i, 1
  %conv426.i = trunc nuw i32 %shr425.i to i16
  %arrayidx430.i1810 = getelementptr inbounds i8, ptr %PredPel.i1585, i64 2
  %1504 = load i16, ptr %arrayidx430.i1810, align 2
  %conv431.i = zext i16 %1504 to i32
  %mul435.i = shl nuw nsw i32 %conv407.i, 1
  %add436.i1812 = add nuw nsw i32 %add388.i1796, %conv431.i
  %add437.i = add nuw nsw i32 %add436.i1812, %mul435.i
  %shr438.i = lshr i32 %add437.i, 2
  %conv439.i = trunc nuw i32 %shr438.i to i16
  %arrayidx443.i1813 = getelementptr inbounds i8, ptr %PredPel.i1585, i64 4
  %mul448.i = shl nuw nsw i32 %conv431.i, 1
  %add445.i = add nuw nsw i32 %conv407.i, 2
  %add458.i = add nuw nsw i32 %conv431.i, 2
  %arrayidx495.i1819 = getelementptr inbounds i8, ptr %PredPel.i1585, i64 12
  %1505 = load i16, ptr %arrayidx495.i1819, align 4
  %conv496.i = zext i16 %1505 to i32
  %arrayidx508.i1821 = getelementptr inbounds i8, ptr %PredPel.i1585, i64 14
  %1506 = load i16, ptr %arrayidx508.i1821, align 2
  %conv509.i = zext i16 %1506 to i32
  %arrayidx520.i1822 = getelementptr inbounds ptr, ptr %1366, i64 %1494
  %1507 = load ptr, ptr %arrayidx520.i1822, align 8
  %idxprom521.i = sext i32 %ioff to i64
  %arrayidx522.i1823 = getelementptr inbounds i16, ptr %1507, i64 %idxprom521.i
  %PredArray.sroa.25.28.arrayidx522.sroa_idx.i1824 = getelementptr inbounds i8, ptr %arrayidx522.i1823, i64 2
  %PredArray.sroa.26.28.arrayidx522.sroa_idx.i1825 = getelementptr inbounds i8, ptr %arrayidx522.i1823, i64 4
  %PredArray.sroa.27.28.arrayidx522.sroa_idx.i1826 = getelementptr inbounds i8, ptr %arrayidx522.i1823, i64 6
  %PredArray.sroa.28.28.arrayidx522.sroa_idx.i1827 = getelementptr inbounds i8, ptr %arrayidx522.i1823, i64 8
  %1508 = load <4 x i16>, ptr %arrayidx443.i1813, align 4
  %1509 = zext <4 x i16> %1508 to <4 x i32>
  %1510 = extractelement <4 x i32> %1509, i64 0
  %add449.i1814 = add nuw nsw i32 %add445.i, %1510
  %add450.i = add nuw nsw i32 %add449.i1814, %mul448.i
  %shr451.i = lshr i32 %add450.i, 2
  %conv452.i = trunc nuw i32 %shr451.i to i16
  %mul461.i = shl nuw nsw i32 %1510, 1
  %1511 = extractelement <4 x i32> %1509, i64 1
  %add462.i1815 = add nuw nsw i32 %add458.i, %1511
  %add463.i = add nuw nsw i32 %add462.i1815, %mul461.i
  %shr464.i = lshr i32 %add463.i, 2
  %conv465.i = trunc nuw i32 %shr464.i to i16
  %1512 = insertelement <4 x i32> %1509, i32 %conv496.i, i64 0
  %1513 = shl nuw nsw <4 x i32> %1512, <i32 1, i32 1, i32 1, i32 1>
  %1514 = shufflevector <4 x i32> %1513, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %1515 = add nuw nsw <4 x i32> %1509, <i32 2, i32 2, i32 2, i32 2>
  %1516 = shufflevector <4 x i32> %1512, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 poison>
  %1517 = insertelement <4 x i32> %1516, i32 %conv509.i, i64 3
  %1518 = add nuw nsw <4 x i32> %1515, %1517
  %1519 = add nuw nsw <4 x i32> %1518, %1514
  %1520 = lshr <4 x i32> %1519, <i32 2, i32 2, i32 2, i32 2>
  %1521 = trunc <4 x i32> %1520 to <4 x i16>
  store i16 %conv426.i, ptr %arrayidx522.i1823, align 2
  store i16 %conv439.i, ptr %PredArray.sroa.25.28.arrayidx522.sroa_idx.i1824, align 2
  store i16 %conv452.i, ptr %PredArray.sroa.26.28.arrayidx522.sroa_idx.i1825, align 2
  store i16 %conv465.i, ptr %PredArray.sroa.27.28.arrayidx522.sroa_idx.i1826, align 2
  store <4 x i16> %1521, ptr %PredArray.sroa.28.28.arrayidx522.sroa_idx.i1827, align 2
  %arrayidx525.i = getelementptr i8, ptr %arrayidx520.i1822, i64 8
  %1522 = load ptr, ptr %arrayidx525.i, align 8
  %arrayidx527.i = getelementptr inbounds i16, ptr %1522, i64 %idxprom521.i
  store i16 %conv404.i1802, ptr %arrayidx527.i, align 2
  %PredArray.sroa.22.24.arrayidx527.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx527.i, i64 2
  store i16 %conv417.i1808, ptr %PredArray.sroa.22.24.arrayidx527.sroa_idx.i, align 2
  %PredArray.sroa.23.24.arrayidx527.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx527.i, i64 4
  store i16 %conv426.i, ptr %PredArray.sroa.23.24.arrayidx527.sroa_idx.i, align 2
  %PredArray.sroa.25.24.arrayidx527.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx527.i, i64 6
  store i16 %conv439.i, ptr %PredArray.sroa.25.24.arrayidx527.sroa_idx.i, align 2
  %PredArray.sroa.26.24.arrayidx527.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx527.i, i64 8
  store i16 %conv452.i, ptr %PredArray.sroa.26.24.arrayidx527.sroa_idx.i, align 2
  %PredArray.sroa.27.24.arrayidx527.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx527.i, i64 10
  store i16 %conv465.i, ptr %PredArray.sroa.27.24.arrayidx527.sroa_idx.i, align 2
  %PredArray.sroa.28.24.arrayidx527.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx527.i, i64 12
  %1523 = shufflevector <4 x i16> %1521, <4 x i16> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i16> %1523, ptr %PredArray.sroa.28.24.arrayidx527.sroa_idx.i, align 2
  %arrayidx530.i1831 = getelementptr i8, ptr %arrayidx520.i1822, i64 16
  %1524 = load ptr, ptr %arrayidx530.i1831, align 8
  %arrayidx532.i1832 = getelementptr inbounds i16, ptr %1524, i64 %idxprom521.i
  store i16 %conv382.i1794, ptr %arrayidx532.i1832, align 2
  %PredArray.sroa.19.20.arrayidx532.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx532.i1832, i64 2
  store i16 %conv395.i, ptr %PredArray.sroa.19.20.arrayidx532.sroa_idx.i, align 2
  %PredArray.sroa.20.20.arrayidx532.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx532.i1832, i64 4
  store i16 %conv404.i1802, ptr %PredArray.sroa.20.20.arrayidx532.sroa_idx.i, align 2
  %PredArray.sroa.22.20.arrayidx532.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx532.i1832, i64 6
  store i16 %conv417.i1808, ptr %PredArray.sroa.22.20.arrayidx532.sroa_idx.i, align 2
  %PredArray.sroa.23.20.arrayidx532.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx532.i1832, i64 8
  store i16 %conv426.i, ptr %PredArray.sroa.23.20.arrayidx532.sroa_idx.i, align 2
  %PredArray.sroa.25.20.arrayidx532.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx532.i1832, i64 10
  store i16 %conv439.i, ptr %PredArray.sroa.25.20.arrayidx532.sroa_idx.i, align 2
  %PredArray.sroa.26.20.arrayidx532.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx532.i1832, i64 12
  store i16 %conv452.i, ptr %PredArray.sroa.26.20.arrayidx532.sroa_idx.i, align 2
  %PredArray.sroa.27.20.arrayidx532.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx532.i1832, i64 14
  store i16 %conv465.i, ptr %PredArray.sroa.27.20.arrayidx532.sroa_idx.i, align 2
  %arrayidx535.i = getelementptr i8, ptr %arrayidx520.i1822, i64 24
  %1525 = load ptr, ptr %arrayidx535.i, align 8
  %arrayidx537.i = getelementptr inbounds i16, ptr %1525, i64 %idxprom521.i
  store i16 %conv360.i1783, ptr %arrayidx537.i, align 2
  %PredArray.sroa.16.16.arrayidx537.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx537.i, i64 2
  store i16 %conv373.i1791, ptr %PredArray.sroa.16.16.arrayidx537.sroa_idx.i, align 2
  %PredArray.sroa.17.16.arrayidx537.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx537.i, i64 4
  store i16 %conv382.i1794, ptr %PredArray.sroa.17.16.arrayidx537.sroa_idx.i, align 2
  %PredArray.sroa.19.16.arrayidx537.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx537.i, i64 6
  store i16 %conv395.i, ptr %PredArray.sroa.19.16.arrayidx537.sroa_idx.i, align 2
  %PredArray.sroa.20.16.arrayidx537.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx537.i, i64 8
  store i16 %conv404.i1802, ptr %PredArray.sroa.20.16.arrayidx537.sroa_idx.i, align 2
  %PredArray.sroa.22.16.arrayidx537.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx537.i, i64 10
  store i16 %conv417.i1808, ptr %PredArray.sroa.22.16.arrayidx537.sroa_idx.i, align 2
  %PredArray.sroa.23.16.arrayidx537.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx537.i, i64 12
  store i16 %conv426.i, ptr %PredArray.sroa.23.16.arrayidx537.sroa_idx.i, align 2
  %PredArray.sroa.25.16.arrayidx537.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx537.i, i64 14
  store i16 %conv439.i, ptr %PredArray.sroa.25.16.arrayidx537.sroa_idx.i, align 2
  %arrayidx540.i1833 = getelementptr i8, ptr %arrayidx520.i1822, i64 32
  %1526 = load ptr, ptr %arrayidx540.i1833, align 8
  %arrayidx542.i = getelementptr inbounds i16, ptr %1526, i64 %idxprom521.i
  store i16 %conv338.i, ptr %arrayidx542.i, align 2
  %PredArray.sroa.13.12.arrayidx542.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx542.i, i64 2
  store i16 %conv351.i, ptr %PredArray.sroa.13.12.arrayidx542.sroa_idx.i, align 2
  %PredArray.sroa.14.12.arrayidx542.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx542.i, i64 4
  store i16 %conv360.i1783, ptr %PredArray.sroa.14.12.arrayidx542.sroa_idx.i, align 2
  %PredArray.sroa.16.12.arrayidx542.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx542.i, i64 6
  store i16 %conv373.i1791, ptr %PredArray.sroa.16.12.arrayidx542.sroa_idx.i, align 2
  %PredArray.sroa.17.12.arrayidx542.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx542.i, i64 8
  store i16 %conv382.i1794, ptr %PredArray.sroa.17.12.arrayidx542.sroa_idx.i, align 2
  %PredArray.sroa.19.12.arrayidx542.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx542.i, i64 10
  store i16 %conv395.i, ptr %PredArray.sroa.19.12.arrayidx542.sroa_idx.i, align 2
  %PredArray.sroa.20.12.arrayidx542.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx542.i, i64 12
  store i16 %conv404.i1802, ptr %PredArray.sroa.20.12.arrayidx542.sroa_idx.i, align 2
  %PredArray.sroa.22.12.arrayidx542.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx542.i, i64 14
  store i16 %conv417.i1808, ptr %PredArray.sroa.22.12.arrayidx542.sroa_idx.i, align 2
  %arrayidx545.i = getelementptr i8, ptr %arrayidx520.i1822, i64 40
  %1527 = load ptr, ptr %arrayidx545.i, align 8
  %arrayidx547.i = getelementptr inbounds i16, ptr %1527, i64 %idxprom521.i
  store i16 %conv316.i1773, ptr %arrayidx547.i, align 2
  %PredArray.sroa.10.8.arrayidx547.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx547.i, i64 2
  store i16 %conv329.i, ptr %PredArray.sroa.10.8.arrayidx547.sroa_idx.i, align 2
  %PredArray.sroa.11.8.arrayidx547.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx547.i, i64 4
  store i16 %conv338.i, ptr %PredArray.sroa.11.8.arrayidx547.sroa_idx.i, align 2
  %PredArray.sroa.13.8.arrayidx547.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx547.i, i64 6
  store i16 %conv351.i, ptr %PredArray.sroa.13.8.arrayidx547.sroa_idx.i, align 2
  %PredArray.sroa.14.8.arrayidx547.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx547.i, i64 8
  store i16 %conv360.i1783, ptr %PredArray.sroa.14.8.arrayidx547.sroa_idx.i, align 2
  %PredArray.sroa.16.8.arrayidx547.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx547.i, i64 10
  store i16 %conv373.i1791, ptr %PredArray.sroa.16.8.arrayidx547.sroa_idx.i, align 2
  %PredArray.sroa.17.8.arrayidx547.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx547.i, i64 12
  store i16 %conv382.i1794, ptr %PredArray.sroa.17.8.arrayidx547.sroa_idx.i, align 2
  %PredArray.sroa.19.8.arrayidx547.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx547.i, i64 14
  store i16 %conv395.i, ptr %PredArray.sroa.19.8.arrayidx547.sroa_idx.i, align 2
  %arrayidx550.i1834 = getelementptr i8, ptr %arrayidx520.i1822, i64 48
  %1528 = load ptr, ptr %arrayidx550.i1834, align 8
  %arrayidx552.i1835 = getelementptr inbounds i16, ptr %1528, i64 %idxprom521.i
  store i16 %conv294.i, ptr %arrayidx552.i1835, align 2
  %PredArray.sroa.7.4.arrayidx552.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx552.i1835, i64 2
  store i16 %conv307.i, ptr %PredArray.sroa.7.4.arrayidx552.sroa_idx.i, align 2
  %PredArray.sroa.8.4.arrayidx552.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx552.i1835, i64 4
  store i16 %conv316.i1773, ptr %PredArray.sroa.8.4.arrayidx552.sroa_idx.i, align 2
  %PredArray.sroa.10.4.arrayidx552.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx552.i1835, i64 6
  store i16 %conv329.i, ptr %PredArray.sroa.10.4.arrayidx552.sroa_idx.i, align 2
  %PredArray.sroa.11.4.arrayidx552.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx552.i1835, i64 8
  store i16 %conv338.i, ptr %PredArray.sroa.11.4.arrayidx552.sroa_idx.i, align 2
  %PredArray.sroa.13.4.arrayidx552.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx552.i1835, i64 10
  store i16 %conv351.i, ptr %PredArray.sroa.13.4.arrayidx552.sroa_idx.i, align 2
  %PredArray.sroa.14.4.arrayidx552.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx552.i1835, i64 12
  store i16 %conv360.i1783, ptr %PredArray.sroa.14.4.arrayidx552.sroa_idx.i, align 2
  %PredArray.sroa.16.4.arrayidx552.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx552.i1835, i64 14
  store i16 %conv373.i1791, ptr %PredArray.sroa.16.4.arrayidx552.sroa_idx.i, align 2
  %arrayidx555.i1836 = getelementptr i8, ptr %arrayidx520.i1822, i64 56
  %1529 = load ptr, ptr %arrayidx555.i1836, align 8
  %arrayidx557.i1837 = getelementptr inbounds i16, ptr %1529, i64 %idxprom521.i
  store i16 %conv273.i, ptr %arrayidx557.i1837, align 2
  %PredArray.sroa.4.0.arrayidx557.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx557.i1837, i64 2
  store i16 %conv285.i, ptr %PredArray.sroa.4.0.arrayidx557.sroa_idx.i, align 2
  %PredArray.sroa.5.0.arrayidx557.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx557.i1837, i64 4
  store i16 %conv294.i, ptr %PredArray.sroa.5.0.arrayidx557.sroa_idx.i, align 2
  %PredArray.sroa.7.0.arrayidx557.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx557.i1837, i64 6
  store i16 %conv307.i, ptr %PredArray.sroa.7.0.arrayidx557.sroa_idx.i, align 2
  %PredArray.sroa.8.0.arrayidx557.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx557.i1837, i64 8
  store i16 %conv316.i1773, ptr %PredArray.sroa.8.0.arrayidx557.sroa_idx.i, align 2
  %PredArray.sroa.10.0.arrayidx557.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx557.i1837, i64 10
  store i16 %conv329.i, ptr %PredArray.sroa.10.0.arrayidx557.sroa_idx.i, align 2
  %PredArray.sroa.11.0.arrayidx557.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx557.i1837, i64 12
  store i16 %conv338.i, ptr %PredArray.sroa.11.0.arrayidx557.sroa_idx.i, align 2
  %PredArray.sroa.13.0.arrayidx557.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx557.i1837, i64 14
  store i16 %conv351.i, ptr %PredArray.sroa.13.0.arrayidx557.sroa_idx.i, align 2
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pix_d.i1589) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pix_c.i1588) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pix_b.i1587) #6
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %pix_a.i1586) #6
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %PredPel.i1585) #6
  br label %cleanup

sw.default:                                       ; preds = %entry
  %conv = zext i8 %5 to i32
  %call24 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %conv)
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %intra8x8_hor_down_pred_mbaff.exit, %intra8x8_hor_up_pred_mbaff.exit, %intra8x8_vert_left_pred_mbaff.exit, %intra8x8_vert_right_pred_mbaff.exit, %intra8x8_diag_down_left_pred_mbaff.exit, %intra8x8_diag_down_right_pred_mbaff.exit, %intra8x8_hor_pred_mbaff.exit, %LowPassForIntra8x8PredHor.exit, %if.end371.i
  %retval.0 = phi i32 [ 1, %sw.default ], [ 0, %intra8x8_hor_down_pred_mbaff.exit ], [ 0, %intra8x8_hor_up_pred_mbaff.exit ], [ 0, %intra8x8_vert_left_pred_mbaff.exit ], [ 0, %intra8x8_vert_right_pred_mbaff.exit ], [ 0, %intra8x8_diag_down_left_pred_mbaff.exit ], [ 0, %intra8x8_diag_down_right_pred_mbaff.exit ], [ 0, %intra8x8_hor_pred_mbaff.exit ], [ 0, %LowPassForIntra8x8PredHor.exit ], [ 0, %if.end371.i ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare void @getAffNeighbour(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @LowPassForIntra8x8Pred(ptr nocapture noundef %PredPel, i32 noundef %block_up_left, i32 noundef %block_up, i32 noundef %block_left) unnamed_addr #4 {
entry:
  %LoopArray.sroa.0.0.copyload = load i16, ptr %PredPel, align 2
  %LoopArray.sroa.6.0.PredPel.sroa_idx = getelementptr inbounds i8, ptr %PredPel, i64 2
  %LoopArray.sroa.6.0.copyload = load i16, ptr %LoopArray.sroa.6.0.PredPel.sroa_idx, align 2
  %LoopArray.sroa.8.0.PredPel.sroa_idx = getelementptr i8, ptr %PredPel, i64 4
  %LoopArray.sroa.8.0.copyload = load i16, ptr %LoopArray.sroa.8.0.PredPel.sroa_idx, align 2
  %LoopArray.sroa.9.0.PredPel.sroa_idx = getelementptr i8, ptr %PredPel, i64 6
  %LoopArray.sroa.9.0.copyload = load i16, ptr %LoopArray.sroa.9.0.PredPel.sroa_idx, align 2
  %LoopArray.sroa.10.0.PredPel.sroa_idx = getelementptr i8, ptr %PredPel, i64 8
  %0 = load <8 x i16>, ptr %LoopArray.sroa.10.0.PredPel.sroa_idx, align 2
  %LoopArray.sroa.18.0.PredPel.sroa_idx = getelementptr i8, ptr %PredPel, i64 24
  %LoopArray.sroa.21.0.PredPel.sroa_idx = getelementptr i8, ptr %PredPel, i64 30
  %1 = load <4 x i16>, ptr %LoopArray.sroa.18.0.PredPel.sroa_idx, align 2
  %LoopArray.sroa.22.0.PredPel.sroa_idx = getelementptr inbounds i8, ptr %PredPel, i64 32
  %LoopArray.sroa.23.0.PredPel.sroa_idx = getelementptr inbounds i8, ptr %PredPel, i64 34
  %LoopArray.sroa.25.0.PredPel.sroa_idx = getelementptr i8, ptr %PredPel, i64 36
  %LoopArray.sroa.26.0.PredPel.sroa_idx = getelementptr i8, ptr %PredPel, i64 38
  %LoopArray.sroa.27.0.PredPel.sroa_idx = getelementptr i8, ptr %PredPel, i64 40
  %LoopArray.sroa.28.0.PredPel.sroa_idx = getelementptr i8, ptr %PredPel, i64 42
  %LoopArray.sroa.29.0.PredPel.sroa_idx = getelementptr i8, ptr %PredPel, i64 44
  %LoopArray.sroa.30.0.PredPel.sroa_idx = getelementptr i8, ptr %PredPel, i64 46
  %2 = load <8 x i16>, ptr %LoopArray.sroa.22.0.PredPel.sroa_idx, align 2
  %LoopArray.sroa.31.0.PredPel.sroa_idx = getelementptr inbounds i8, ptr %PredPel, i64 48
  %LoopArray.sroa.31.0.copyload = load i16, ptr %LoopArray.sroa.31.0.PredPel.sroa_idx, align 2
  %tobool.not = icmp eq i32 %block_up_left, 0
  br i1 %tobool.not, label %if.end47, label %if.then

if.then:                                          ; preds = %entry
  %tobool2 = icmp ne i32 %block_up, 0
  %tobool3 = icmp ne i32 %block_left, 0
  %or.cond = and i1 %tobool2, %tobool3
  br i1 %or.cond, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.then
  %3 = extractelement <8 x i16> %2, i64 1
  %conv = zext i16 %3 to i32
  %conv7 = zext i16 %LoopArray.sroa.0.0.copyload to i32
  %shl = shl nuw nsw i32 %conv7, 1
  %add = add nuw nsw i32 %shl, %conv
  br label %if.then51

if.else:                                          ; preds = %if.then
  br i1 %tobool2, label %if.then15, label %if.else29

if.then15:                                        ; preds = %if.else
  %conv17 = zext i16 %LoopArray.sroa.0.0.copyload to i32
  %add21 = mul nuw nsw i32 %conv17, 3
  br label %if.then51

if.else29:                                        ; preds = %if.else
  br i1 %tobool3, label %if.then113.thread, label %if.end183

if.end47:                                         ; preds = %entry
  %tobool48.not = icmp eq i32 %block_up, 0
  br i1 %tobool48.not, label %if.end111.thread242, label %if.else65

if.then51:                                        ; preds = %if.then15, %if.then4
  %add21.sink = phi i32 [ %add21, %if.then15 ], [ %add, %if.then4 ]
  %conv53.pre-phi = phi i32 [ %conv17, %if.then15 ], [ %conv7, %if.then4 ]
  %conv23 = zext i16 %LoopArray.sroa.6.0.copyload to i32
  %add24 = add nuw nsw i32 %add21.sink, %conv23
  %storemerge.in.in = add nuw nsw i32 %add24, 2
  %storemerge.in = lshr i32 %storemerge.in.in, 2
  %storemerge = trunc nuw i32 %storemerge.in to i16
  %shl56 = shl nuw nsw i32 %conv23, 1
  %conv59 = zext i16 %LoopArray.sroa.8.0.copyload to i32
  %add57 = add nuw nsw i32 %conv53.pre-phi, 2
  %add60 = add nuw nsw i32 %add57, %shl56
  %add61 = add nuw nsw i32 %add60, %conv59
  %.pre304 = add nuw nsw i32 %conv59, 2
  br label %if.end79

if.else65:                                        ; preds = %if.end47
  %conv67 = zext i16 %LoopArray.sroa.6.0.copyload to i32
  %add71 = mul nuw nsw i32 %conv67, 3
  %conv73 = zext i16 %LoopArray.sroa.8.0.copyload to i32
  %add74 = add nuw nsw i32 %conv73, 2
  %add75 = add nuw nsw i32 %add74, %add71
  br label %if.end79

if.end79:                                         ; preds = %if.else65, %if.then51
  %add87.1.pre-phi = phi i32 [ %add74, %if.else65 ], [ %.pre304, %if.then51 ]
  %conv85.pre-phi = phi i32 [ %conv73, %if.else65 ], [ %conv59, %if.then51 ]
  %conv82.pre-phi = phi i32 [ %conv67, %if.else65 ], [ %conv23, %if.then51 ]
  %LoopArray.sroa.6.0.in.in = phi i32 [ %add75, %if.else65 ], [ %add61, %if.then51 ]
  %LoopArray.sroa.0.0 = phi i16 [ %LoopArray.sroa.0.0.copyload, %if.else65 ], [ %storemerge, %if.then51 ]
  %LoopArray.sroa.6.0.in = lshr i32 %LoopArray.sroa.6.0.in.in, 2
  %LoopArray.sroa.6.0 = trunc i32 %LoopArray.sroa.6.0.in to i16
  %shl86 = shl nuw nsw i32 %conv85.pre-phi, 1
  %4 = insertelement <8 x i16> poison, i16 %LoopArray.sroa.9.0.copyload, i64 0
  %5 = shufflevector <8 x i16> %4, <8 x i16> %0, <8 x i32> <i32 0, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %6 = zext <8 x i16> %5 to <8 x i32>
  %add87 = add nuw nsw i32 %conv82.pre-phi, 2
  %add92 = add nuw nsw i32 %add87, %shl86
  %7 = extractelement <8 x i32> %6, i64 0
  %add93 = add nuw nsw i32 %add92, %7
  %shr94 = lshr i32 %add93, 2
  %conv95 = trunc nuw i32 %shr94 to i16
  %shl86.1 = shl nuw nsw i32 %7, 1
  %add92.1 = add nuw nsw i32 %add87.1.pre-phi, %shl86.1
  %8 = extractelement <8 x i32> %6, i64 1
  %add93.1 = add nuw nsw i32 %add92.1, %8
  %shr94.1 = lshr i32 %add93.1, 2
  %conv95.1 = trunc nuw i32 %shr94.1 to i16
  %9 = shufflevector <8 x i32> %6, <8 x i32> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison>
  %10 = add nuw nsw <8 x i32> %6, <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %arrayidx81.12 = getelementptr i8, ptr %PredPel, i64 26
  %11 = load <2 x i16>, ptr %arrayidx81.12, align 2
  %12 = load <2 x i16>, ptr %LoopArray.sroa.21.0.PredPel.sroa_idx, align 2
  %13 = shufflevector <8 x i16> %0, <8 x i16> poison, <4 x i32> <i32 7, i32 poison, i32 poison, i32 poison>
  %14 = shufflevector <4 x i16> %13, <4 x i16> %1, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %15 = shufflevector <2 x i16> %11, <2 x i16> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %16 = shufflevector <4 x i16> %14, <4 x i16> %15, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %17 = zext <4 x i16> %16 to <4 x i32>
  %18 = shufflevector <4 x i32> %17, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %19 = shufflevector <8 x i32> %9, <8 x i32> %18, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 8>
  %20 = shl nuw nsw <8 x i32> %19, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %21 = add nuw nsw <8 x i32> %10, %20
  %22 = shufflevector <8 x i32> %6, <8 x i32> %19, <8 x i32> <i32 2, i32 3, i32 4, i32 5, i32 13, i32 14, i32 poison, i32 poison>
  %23 = shufflevector <8 x i32> %22, <8 x i32> %18, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 8, i32 9>
  %24 = add nuw nsw <8 x i32> %21, %23
  %25 = lshr <8 x i32> %24, <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %26 = trunc <8 x i32> %25 to <8 x i16>
  %27 = shufflevector <4 x i16> %1, <4 x i16> poison, <4 x i32> <i32 1, i32 2, i32 poison, i32 poison>
  %28 = shufflevector <2 x i16> %12, <2 x i16> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %29 = shufflevector <4 x i16> %27, <4 x i16> %28, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %30 = zext <4 x i16> %29 to <4 x i32>
  %31 = shufflevector <4 x i32> %17, <4 x i32> %30, <4 x i32> <i32 1, i32 4, i32 3, i32 6>
  %32 = shl nuw nsw <4 x i32> %31, <i32 1, i32 1, i32 1, i32 1>
  %33 = add nuw nsw <4 x i32> %17, <i32 2, i32 2, i32 2, i32 2>
  %34 = add nuw nsw <4 x i32> %33, %32
  %35 = add nuw nsw <4 x i32> %34, %30
  %36 = lshr <4 x i32> %35, <i32 2, i32 2, i32 2, i32 2>
  %37 = trunc <4 x i32> %36 to <4 x i16>
  %38 = extractelement <4 x i32> %30, i64 3
  %add103 = mul nuw nsw i32 %38, 3
  %39 = extractelement <4 x i32> %30, i64 2
  %add106 = add nuw nsw i32 %39, 2
  %add107 = add nuw nsw i32 %add106, %add103
  %shr108 = lshr i32 %add107, 2
  %conv109 = trunc nuw i32 %shr108 to i16
  %tobool112.not = icmp eq i32 %block_left, 0
  %40 = insertelement <8 x i16> %2, i16 %conv109, i64 0
  br i1 %tobool112.not, label %if.end183, label %if.then113

if.end111.thread242:                              ; preds = %if.end47
  %tobool112.not243 = icmp eq i32 %block_left, 0
  %41 = extractelement <8 x i16> %2, i64 0
  %42 = extractelement <8 x i16> %2, i64 1
  %43 = extractelement <8 x i16> %2, i64 2
  br i1 %tobool112.not243, label %if.end183, label %if.else129

if.then113.thread:                                ; preds = %if.else29
  %conv33 = zext i16 %LoopArray.sroa.0.0.copyload to i32
  %add37 = mul nuw nsw i32 %conv33, 3
  %44 = extractelement <8 x i16> %2, i64 1
  %conv39 = zext i16 %44 to i32
  %add40 = add nuw nsw i32 %conv39, 2
  %add41 = add nuw nsw i32 %add40, %add37
  %shr42 = lshr i32 %add41, 2
  %conv43 = trunc nuw i32 %shr42 to i16
  %45 = extractelement <8 x i16> %2, i64 0
  %46 = extractelement <8 x i16> %2, i64 2
  br label %if.then115

if.then113:                                       ; preds = %if.end79
  %.pre301 = load i16, ptr %LoopArray.sroa.23.0.PredPel.sroa_idx, align 2
  %.pre302 = load i16, ptr %LoopArray.sroa.25.0.PredPel.sroa_idx, align 2
  br i1 %tobool.not, label %if.else129, label %if.then113.if.then115_crit_edge

if.then113.if.then115_crit_edge:                  ; preds = %if.then113
  %.pre = load i16, ptr %PredPel, align 2
  %.pre305 = zext i16 %.pre to i32
  %.pre306 = zext i16 %.pre301 to i32
  br label %if.then115

if.then115:                                       ; preds = %if.then113.if.then115_crit_edge, %if.then113.thread
  %conv119.pre-phi = phi i32 [ %.pre306, %if.then113.if.then115_crit_edge ], [ %conv39, %if.then113.thread ]
  %conv117.pre-phi = phi i32 [ %.pre305, %if.then113.if.then115_crit_edge ], [ %conv33, %if.then113.thread ]
  %47 = phi i16 [ %.pre302, %if.then113.if.then115_crit_edge ], [ %46, %if.then113.thread ]
  %LoopArray.sroa.22.0 = phi i16 [ %conv109, %if.then113.if.then115_crit_edge ], [ %45, %if.then113.thread ]
  %LoopArray.sroa.9.0 = phi i16 [ %conv95.1, %if.then113.if.then115_crit_edge ], [ %LoopArray.sroa.9.0.copyload, %if.then113.thread ]
  %LoopArray.sroa.8.0 = phi i16 [ %conv95, %if.then113.if.then115_crit_edge ], [ %LoopArray.sroa.8.0.copyload, %if.then113.thread ]
  %LoopArray.sroa.6.1 = phi i16 [ %LoopArray.sroa.6.0, %if.then113.if.then115_crit_edge ], [ %LoopArray.sroa.6.0.copyload, %if.then113.thread ]
  %LoopArray.sroa.0.1 = phi i16 [ %LoopArray.sroa.0.0, %if.then113.if.then115_crit_edge ], [ %conv43, %if.then113.thread ]
  %48 = phi <8 x i16> [ %26, %if.then113.if.then115_crit_edge ], [ %0, %if.then113.thread ]
  %49 = phi <4 x i16> [ %37, %if.then113.if.then115_crit_edge ], [ %1, %if.then113.thread ]
  %shl120 = shl nuw nsw i32 %conv119.pre-phi, 1
  %conv123 = zext i16 %47 to i32
  %add121 = add nuw nsw i32 %conv117.pre-phi, 2
  %add124 = add nuw nsw i32 %add121, %shl120
  %add125 = add nuw nsw i32 %add124, %conv123
  %.pre303 = add nuw nsw i32 %conv123, 2
  br label %if.end143

if.else129:                                       ; preds = %if.end111.thread242, %if.then113
  %50 = phi i16 [ %43, %if.end111.thread242 ], [ %.pre302, %if.then113 ]
  %51 = phi i16 [ %42, %if.end111.thread242 ], [ %.pre301, %if.then113 ]
  %LoopArray.sroa.22.1 = phi i16 [ %41, %if.end111.thread242 ], [ %conv109, %if.then113 ]
  %LoopArray.sroa.9.1 = phi i16 [ %LoopArray.sroa.9.0.copyload, %if.end111.thread242 ], [ %conv95.1, %if.then113 ]
  %LoopArray.sroa.8.1 = phi i16 [ %LoopArray.sroa.8.0.copyload, %if.end111.thread242 ], [ %conv95, %if.then113 ]
  %LoopArray.sroa.6.2 = phi i16 [ %LoopArray.sroa.6.0.copyload, %if.end111.thread242 ], [ %LoopArray.sroa.6.0, %if.then113 ]
  %LoopArray.sroa.0.2 = phi i16 [ %LoopArray.sroa.0.0.copyload, %if.end111.thread242 ], [ %LoopArray.sroa.0.0, %if.then113 ]
  %52 = phi <8 x i16> [ %0, %if.end111.thread242 ], [ %26, %if.then113 ]
  %53 = phi <4 x i16> [ %1, %if.end111.thread242 ], [ %37, %if.then113 ]
  %conv131 = zext i16 %51 to i32
  %add135 = mul nuw nsw i32 %conv131, 3
  %conv137 = zext i16 %50 to i32
  %add138 = add nuw nsw i32 %conv137, 2
  %add139 = add nuw nsw i32 %add138, %add135
  br label %if.end143

if.end143:                                        ; preds = %if.else129, %if.then115
  %add156.1.pre-phi = phi i32 [ %add138, %if.else129 ], [ %.pre303, %if.then115 ]
  %conv154.pre-phi = phi i32 [ %conv137, %if.else129 ], [ %conv123, %if.then115 ]
  %conv151.pre-phi = phi i32 [ %conv131, %if.else129 ], [ %conv119.pre-phi, %if.then115 ]
  %LoopArray.sroa.23.0.in.in = phi i32 [ %add139, %if.else129 ], [ %add125, %if.then115 ]
  %LoopArray.sroa.22.2 = phi i16 [ %LoopArray.sroa.22.1, %if.else129 ], [ %LoopArray.sroa.22.0, %if.then115 ]
  %LoopArray.sroa.9.2 = phi i16 [ %LoopArray.sroa.9.1, %if.else129 ], [ %LoopArray.sroa.9.0, %if.then115 ]
  %LoopArray.sroa.8.2 = phi i16 [ %LoopArray.sroa.8.1, %if.else129 ], [ %LoopArray.sroa.8.0, %if.then115 ]
  %LoopArray.sroa.6.3 = phi i16 [ %LoopArray.sroa.6.2, %if.else129 ], [ %LoopArray.sroa.6.1, %if.then115 ]
  %LoopArray.sroa.0.3 = phi i16 [ %LoopArray.sroa.0.2, %if.else129 ], [ %LoopArray.sroa.0.1, %if.then115 ]
  %54 = phi <8 x i16> [ %52, %if.else129 ], [ %48, %if.then115 ]
  %55 = phi <4 x i16> [ %53, %if.else129 ], [ %49, %if.then115 ]
  %LoopArray.sroa.23.0.in = lshr i32 %LoopArray.sroa.23.0.in.in, 2
  %LoopArray.sroa.23.0 = trunc i32 %LoopArray.sroa.23.0.in to i16
  %shl155 = shl nuw nsw i32 %conv154.pre-phi, 1
  %56 = load i16, ptr %LoopArray.sroa.26.0.PredPel.sroa_idx, align 2
  %conv160 = zext i16 %56 to i32
  %add156 = add nuw nsw i32 %conv151.pre-phi, 2
  %add161 = add nuw nsw i32 %add156, %shl155
  %add162 = add nuw nsw i32 %add161, %conv160
  %shr163 = lshr i32 %add162, 2
  %conv164 = trunc nuw i32 %shr163 to i16
  %shl155.1 = shl nuw nsw i32 %conv160, 1
  %57 = load i16, ptr %LoopArray.sroa.27.0.PredPel.sroa_idx, align 2
  %conv160.1 = zext i16 %57 to i32
  %add161.1 = add nuw nsw i32 %add156.1.pre-phi, %shl155.1
  %add162.1 = add nuw nsw i32 %add161.1, %conv160.1
  %shr163.1 = lshr i32 %add162.1, 2
  %conv164.1 = trunc nuw i32 %shr163.1 to i16
  %shl155.2 = shl nuw nsw i32 %conv160.1, 1
  %58 = load i16, ptr %LoopArray.sroa.28.0.PredPel.sroa_idx, align 2
  %conv160.2 = zext i16 %58 to i32
  %add156.2 = add nuw nsw i32 %conv160, 2
  %add161.2 = add nuw nsw i32 %add156.2, %shl155.2
  %add162.2 = add nuw nsw i32 %add161.2, %conv160.2
  %shr163.2 = lshr i32 %add162.2, 2
  %conv164.2 = trunc nuw i32 %shr163.2 to i16
  %shl155.3 = shl nuw nsw i32 %conv160.2, 1
  %59 = load i16, ptr %LoopArray.sroa.29.0.PredPel.sroa_idx, align 2
  %conv160.3 = zext i16 %59 to i32
  %add156.3 = add nuw nsw i32 %conv160.1, 2
  %add161.3 = add nuw nsw i32 %add156.3, %shl155.3
  %add162.3 = add nuw nsw i32 %add161.3, %conv160.3
  %shr163.3 = lshr i32 %add162.3, 2
  %conv164.3 = trunc nuw i32 %shr163.3 to i16
  %shl155.4 = shl nuw nsw i32 %conv160.3, 1
  %60 = load i16, ptr %LoopArray.sroa.30.0.PredPel.sroa_idx, align 2
  %conv160.4 = zext i16 %60 to i32
  %add156.4 = add nuw nsw i32 %conv160.2, 2
  %add161.4 = add nuw nsw i32 %add156.4, %shl155.4
  %add162.4 = add nuw nsw i32 %add161.4, %conv160.4
  %shr163.4 = lshr i32 %add162.4, 2
  %conv164.4 = trunc nuw i32 %shr163.4 to i16
  %shl155.5 = shl nuw nsw i32 %conv160.4, 1
  %61 = load i16, ptr %LoopArray.sroa.31.0.PredPel.sroa_idx, align 2
  %conv160.5 = zext i16 %61 to i32
  %add156.5 = add nuw nsw i32 %conv160.3, 2
  %add161.5 = add nuw nsw i32 %add156.5, %shl155.5
  %add162.5 = add nuw nsw i32 %add161.5, %conv160.5
  %shr163.5 = lshr i32 %add162.5, 2
  %conv164.5 = trunc nuw i32 %shr163.5 to i16
  %shl174 = shl nuw nsw i32 %conv160.5, 1
  %add175 = add nuw nsw i32 %conv160.4, 2
  %add178 = add nuw nsw i32 %add175, %conv160.5
  %add179 = add nuw nsw i32 %add178, %shl174
  %shr180 = lshr i32 %add179, 2
  %conv181 = trunc nuw i32 %shr180 to i16
  %62 = insertelement <8 x i16> poison, i16 %LoopArray.sroa.22.2, i64 0
  %63 = insertelement <8 x i16> %62, i16 %LoopArray.sroa.23.0, i64 1
  %64 = insertelement <8 x i16> %63, i16 %conv164, i64 2
  %65 = insertelement <8 x i16> %64, i16 %conv164.1, i64 3
  %66 = insertelement <8 x i16> %65, i16 %conv164.2, i64 4
  %67 = insertelement <8 x i16> %66, i16 %conv164.3, i64 5
  %68 = insertelement <8 x i16> %67, i16 %conv164.4, i64 6
  %69 = insertelement <8 x i16> %68, i16 %conv164.5, i64 7
  br label %if.end183

if.end183:                                        ; preds = %if.else29, %if.end111.thread242, %if.end143, %if.end79
  %LoopArray.sroa.31.0 = phi i16 [ %LoopArray.sroa.31.0.copyload, %if.end111.thread242 ], [ %conv181, %if.end143 ], [ %LoopArray.sroa.31.0.copyload, %if.end79 ], [ %LoopArray.sroa.31.0.copyload, %if.else29 ]
  %LoopArray.sroa.9.3 = phi i16 [ %LoopArray.sroa.9.0.copyload, %if.end111.thread242 ], [ %LoopArray.sroa.9.2, %if.end143 ], [ %conv95.1, %if.end79 ], [ %LoopArray.sroa.9.0.copyload, %if.else29 ]
  %LoopArray.sroa.8.3 = phi i16 [ %LoopArray.sroa.8.0.copyload, %if.end111.thread242 ], [ %LoopArray.sroa.8.2, %if.end143 ], [ %conv95, %if.end79 ], [ %LoopArray.sroa.8.0.copyload, %if.else29 ]
  %LoopArray.sroa.6.4 = phi i16 [ %LoopArray.sroa.6.0.copyload, %if.end111.thread242 ], [ %LoopArray.sroa.6.3, %if.end143 ], [ %LoopArray.sroa.6.0, %if.end79 ], [ %LoopArray.sroa.6.0.copyload, %if.else29 ]
  %LoopArray.sroa.0.4 = phi i16 [ %LoopArray.sroa.0.0.copyload, %if.end111.thread242 ], [ %LoopArray.sroa.0.3, %if.end143 ], [ %LoopArray.sroa.0.0, %if.end79 ], [ %LoopArray.sroa.0.0.copyload, %if.else29 ]
  %70 = phi <8 x i16> [ %0, %if.end111.thread242 ], [ %54, %if.end143 ], [ %26, %if.end79 ], [ %0, %if.else29 ]
  %71 = phi <8 x i16> [ %2, %if.end111.thread242 ], [ %69, %if.end143 ], [ %40, %if.end79 ], [ %2, %if.else29 ]
  %72 = phi <4 x i16> [ %1, %if.end111.thread242 ], [ %55, %if.end143 ], [ %37, %if.end79 ], [ %1, %if.else29 ]
  store i16 %LoopArray.sroa.0.4, ptr %PredPel, align 2
  store i16 %LoopArray.sroa.6.4, ptr %LoopArray.sroa.6.0.PredPel.sroa_idx, align 2
  store i16 %LoopArray.sroa.8.3, ptr %LoopArray.sroa.8.0.PredPel.sroa_idx, align 2
  store i16 %LoopArray.sroa.9.3, ptr %LoopArray.sroa.9.0.PredPel.sroa_idx, align 2
  store <8 x i16> %70, ptr %LoopArray.sroa.10.0.PredPel.sroa_idx, align 2
  store <4 x i16> %72, ptr %LoopArray.sroa.18.0.PredPel.sroa_idx, align 2
  store <8 x i16> %71, ptr %LoopArray.sroa.22.0.PredPel.sroa_idx, align 2
  store i16 %LoopArray.sroa.31.0, ptr %LoopArray.sroa.31.0.PredPel.sroa_idx, align 2
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v16i32(<16 x i32>) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v8i32(<8 x i32>) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
