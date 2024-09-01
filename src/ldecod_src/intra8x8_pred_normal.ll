; ModuleID = 'ldecod_src/intra8x8_pred_normal.c'
source_filename = "ldecod_src/intra8x8_pred_normal.c"
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
define dso_local range(i32 0, 2) i32 @intrapred8x8_normal(ptr noundef %currMB, i32 noundef %pl, i32 noundef %ioff, i32 noundef %joff) local_unnamed_addr #0 {
entry:
  %PredPel.i1192 = alloca [25 x i16], align 16
  %pix_a.i1193 = alloca %struct.pix_pos, align 4
  %pix_b.i1194 = alloca %struct.pix_pos, align 4
  %pix_c.i1195 = alloca %struct.pix_pos, align 4
  %pix_d.i1196 = alloca %struct.pix_pos, align 4
  %PredPel.i1018 = alloca [25 x i16], align 16
  %pix_a.i1019 = alloca %struct.pix_pos, align 4
  %pix_b.i1020 = alloca %struct.pix_pos, align 4
  %pix_c.i1021 = alloca %struct.pix_pos, align 4
  %pix_d.i1022 = alloca %struct.pix_pos, align 4
  %PredPel.i761 = alloca [25 x i16], align 16
  %pix_a.i762 = alloca %struct.pix_pos, align 4
  %pix_b.i763 = alloca %struct.pix_pos, align 4
  %pix_c.i764 = alloca %struct.pix_pos, align 4
  %pix_d.i765 = alloca %struct.pix_pos, align 4
  %PredPel.i503 = alloca [25 x i16], align 16
  %pix_a.i504 = alloca %struct.pix_pos, align 4
  %pix_b.i505 = alloca %struct.pix_pos, align 4
  %pix_c.i506 = alloca %struct.pix_pos, align 4
  %pix_d.i507 = alloca %struct.pix_pos, align 4
  %PredPel.i359 = alloca [25 x i16], align 16
  %pix_a.i360 = alloca %struct.pix_pos, align 4
  %pix_b.i361 = alloca %struct.pix_pos, align 4
  %pix_c.i362 = alloca %struct.pix_pos, align 4
  %pix_d.i363 = alloca %struct.pix_pos, align 4
  %PredPel.i214 = alloca [25 x i16], align 16
  %pix_a.i215 = alloca %struct.pix_pos, align 4
  %pix_b.i216 = alloca %struct.pix_pos, align 4
  %pix_c.i217 = alloca %struct.pix_pos, align 4
  %pix_d.i218 = alloca %struct.pix_pos, align 4
  %pix_a.i161 = alloca %struct.pix_pos, align 4
  %pix_b.i162 = alloca %struct.pix_pos, align 4
  %pix_c.i163 = alloca %struct.pix_pos, align 4
  %pix_d.i164 = alloca %struct.pix_pos, align 4
  %pix_a.i68 = alloca %struct.pix_pos, align 4
  %pix_b.i69 = alloca %struct.pix_pos, align 4
  %pix_c.i70 = alloca %struct.pix_pos, align 4
  %pix_d.i71 = alloca %struct.pix_pos, align 4
  %PredPel.i = alloca [25 x i16], align 16
  %pix_a.i = alloca %struct.pix_pos, align 4
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
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pix_a.i) #6
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
  call void @getNonAffNeighbour(ptr noundef nonnull %currMB, i32 noundef %sub8.i, i32 noundef %joff, ptr noundef nonnull %mb_size6.i, ptr noundef nonnull %pix_a.i) #6
  %sub9.i = add nsw i32 %joff, -1
  call void @getNonAffNeighbour(ptr noundef nonnull %currMB, i32 noundef %ioff, i32 noundef %sub9.i, ptr noundef nonnull %mb_size6.i, ptr noundef nonnull %pix_b.i) #6
  %add.i = add nsw i32 %ioff, 8
  call void @getNonAffNeighbour(ptr noundef nonnull %currMB, i32 noundef %add.i, i32 noundef %sub9.i, ptr noundef nonnull %mb_size6.i, ptr noundef nonnull %pix_c.i) #6
  call void @getNonAffNeighbour(ptr noundef nonnull %currMB, i32 noundef %sub8.i, i32 noundef %sub9.i, ptr noundef nonnull %mb_size6.i, ptr noundef nonnull %pix_d.i) #6
  %11 = load i32, ptr %pix_c.i, align 4
  %tobool13.not.i = icmp eq i32 %11, 0
  br i1 %tobool13.not.i, label %land.end16.i, label %land.rhs.i

land.rhs.i:                                       ; preds = %cond.end.i
  %cmp.i = icmp ne i32 %ioff, 8
  %cmp15.i = icmp ne i32 %joff, 8
  %.not.i = or i1 %cmp.i, %cmp15.i
  br label %land.end16.i

land.end16.i:                                     ; preds = %land.rhs.i, %cond.end.i
  %12 = phi i1 [ false, %cond.end.i ], [ %.not.i, %land.rhs.i ]
  %land.ext.i = zext i1 %12 to i32
  store i32 %land.ext.i, ptr %pix_c.i, align 4
  %active_pps.i = getelementptr inbounds i8, ptr %6, i64 8
  %13 = load ptr, ptr %active_pps.i, align 8
  %constrained_intra_pred_flag.i = getelementptr inbounds i8, ptr %13, i64 2204
  %14 = load i32, ptr %constrained_intra_pred_flag.i, align 4
  %tobool18.not.i = icmp eq i32 %14, 0
  %15 = load i32, ptr %pix_a.i, align 4
  br i1 %tobool18.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %land.end16.i
  %tobool20.not.i = icmp eq i32 %15, 0
  br i1 %tobool20.not.i, label %cond.end25.i, label %cond.true21.i

cond.true21.i:                                    ; preds = %if.then.i
  %intra_block.i = getelementptr inbounds i8, ptr %2, i64 13544
  %16 = load ptr, ptr %intra_block.i, align 8
  %mb_addr.i = getelementptr inbounds i8, ptr %pix_a.i, i64 4
  %17 = load i32, ptr %mb_addr.i, align 4
  %idxprom22.i = sext i32 %17 to i64
  %arrayidx23.i = getelementptr inbounds i8, ptr %16, i64 %idxprom22.i
  %18 = load i8, ptr %arrayidx23.i, align 1
  %conv.i = sext i8 %18 to i32
  br label %cond.end25.i

cond.end25.i:                                     ; preds = %cond.true21.i, %if.then.i
  %cond26.i = phi i32 [ %conv.i, %cond.true21.i ], [ 0, %if.then.i ]
  %19 = load i32, ptr %pix_b.i, align 4
  %tobool28.not.i = icmp eq i32 %19, 0
  br i1 %tobool28.not.i, label %cond.end36.i, label %cond.true29.i

cond.true29.i:                                    ; preds = %cond.end25.i
  %intra_block30.i = getelementptr inbounds i8, ptr %2, i64 13544
  %20 = load ptr, ptr %intra_block30.i, align 8
  %mb_addr31.i = getelementptr inbounds i8, ptr %pix_b.i, i64 4
  %21 = load i32, ptr %mb_addr31.i, align 4
  %idxprom32.i = sext i32 %21 to i64
  %arrayidx33.i = getelementptr inbounds i8, ptr %20, i64 %idxprom32.i
  %22 = load i8, ptr %arrayidx33.i, align 1
  %conv34.i = sext i8 %22 to i32
  br label %cond.end36.i

cond.end36.i:                                     ; preds = %cond.true29.i, %cond.end25.i
  %cond37.i = phi i32 [ %conv34.i, %cond.true29.i ], [ 0, %cond.end25.i ]
  br i1 %12, label %cond.true40.i, label %cond.end47.i

cond.true40.i:                                    ; preds = %cond.end36.i
  %intra_block41.i = getelementptr inbounds i8, ptr %2, i64 13544
  %23 = load ptr, ptr %intra_block41.i, align 8
  %mb_addr42.i = getelementptr inbounds i8, ptr %pix_c.i, i64 4
  %24 = load i32, ptr %mb_addr42.i, align 4
  %idxprom43.i = sext i32 %24 to i64
  %arrayidx44.i = getelementptr inbounds i8, ptr %23, i64 %idxprom43.i
  %25 = load i8, ptr %arrayidx44.i, align 1
  %conv45.i = sext i8 %25 to i32
  br label %cond.end47.i

cond.end47.i:                                     ; preds = %cond.true40.i, %cond.end36.i
  %cond48.i = phi i32 [ %conv45.i, %cond.true40.i ], [ 0, %cond.end36.i ]
  %26 = load i32, ptr %pix_d.i, align 4
  %tobool50.not.i = icmp eq i32 %26, 0
  br i1 %tobool50.not.i, label %if.end.i, label %cond.true51.i

cond.true51.i:                                    ; preds = %cond.end47.i
  %intra_block52.i = getelementptr inbounds i8, ptr %2, i64 13544
  %27 = load ptr, ptr %intra_block52.i, align 8
  %mb_addr53.i = getelementptr inbounds i8, ptr %pix_d.i, i64 4
  %28 = load i32, ptr %mb_addr53.i, align 4
  %idxprom54.i = sext i32 %28 to i64
  %arrayidx55.i = getelementptr inbounds i8, ptr %27, i64 %idxprom54.i
  %29 = load i8, ptr %arrayidx55.i, align 1
  %conv56.i = sext i8 %29 to i32
  br label %if.end.i

if.else.i:                                        ; preds = %land.end16.i
  %30 = load i32, ptr %pix_b.i, align 4
  %31 = load i32, ptr %pix_d.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %cond.true51.i, %cond.end47.i
  %block_available_left.0.i = phi i32 [ %15, %if.else.i ], [ %cond26.i, %cond.end47.i ], [ %cond26.i, %cond.true51.i ]
  %block_available_up_left.0.i = phi i32 [ %31, %if.else.i ], [ 0, %cond.end47.i ], [ %conv56.i, %cond.true51.i ]
  %block_available_up_right.0.i = phi i32 [ %land.ext.i, %if.else.i ], [ %cond48.i, %cond.end47.i ], [ %cond48.i, %cond.true51.i ]
  %block_available_up.0.i = phi i32 [ %30, %if.else.i ], [ %cond37.i, %cond.end47.i ], [ %cond37.i, %cond.true51.i ]
  %tobool64.i = icmp ne i32 %block_available_up.0.i, 0
  br i1 %tobool64.i, label %if.then65.i, label %if.else86.i

if.then65.i:                                      ; preds = %if.end.i
  %arrayidx73.i = getelementptr inbounds i8, ptr %PredPel.i, i64 4
  %pos_y.i = getelementptr inbounds i8, ptr %pix_b.i, i64 14
  %32 = load i16, ptr %pos_y.i, align 2
  %idxprom66.i = sext i16 %32 to i64
  %arrayidx67.i = getelementptr inbounds ptr, ptr %cond.i, i64 %idxprom66.i
  %33 = load ptr, ptr %arrayidx67.i, align 8
  %pos_x.i = getelementptr inbounds i8, ptr %pix_b.i, i64 12
  %34 = load i16, ptr %pos_x.i, align 4
  %idxprom68.i = sext i16 %34 to i64
  %arrayidx69.i = getelementptr inbounds i16, ptr %33, i64 %idxprom68.i
  %35 = load i16, ptr %arrayidx69.i, align 2
  %arrayidx71.i = getelementptr inbounds i8, ptr %PredPel.i, i64 2
  store i16 %35, ptr %arrayidx71.i, align 2
  %arrayidx72.i = getelementptr inbounds i8, ptr %arrayidx69.i, i64 2
  %36 = load i16, ptr %arrayidx72.i, align 2
  store i16 %36, ptr %arrayidx73.i, align 4
  %arrayidx74.i = getelementptr inbounds i8, ptr %arrayidx69.i, i64 4
  %37 = load i16, ptr %arrayidx74.i, align 2
  %arrayidx75.i = getelementptr inbounds i8, ptr %PredPel.i, i64 6
  store i16 %37, ptr %arrayidx75.i, align 2
  %arrayidx76.i = getelementptr inbounds i8, ptr %arrayidx69.i, i64 6
  %38 = load i16, ptr %arrayidx76.i, align 2
  %arrayidx77.i = getelementptr inbounds i8, ptr %PredPel.i, i64 8
  store i16 %38, ptr %arrayidx77.i, align 8
  %arrayidx78.i = getelementptr inbounds i8, ptr %arrayidx69.i, i64 8
  %39 = load i16, ptr %arrayidx78.i, align 2
  %arrayidx79.i = getelementptr inbounds i8, ptr %PredPel.i, i64 10
  store i16 %39, ptr %arrayidx79.i, align 2
  %arrayidx80.i = getelementptr inbounds i8, ptr %arrayidx69.i, i64 10
  %40 = load i16, ptr %arrayidx80.i, align 2
  %arrayidx81.i = getelementptr inbounds i8, ptr %PredPel.i, i64 12
  store i16 %40, ptr %arrayidx81.i, align 4
  %arrayidx82.i = getelementptr inbounds i8, ptr %arrayidx69.i, i64 12
  %41 = load i16, ptr %arrayidx82.i, align 2
  %arrayidx83.i = getelementptr inbounds i8, ptr %PredPel.i, i64 14
  store i16 %41, ptr %arrayidx83.i, align 2
  %arrayidx84.i = getelementptr inbounds i8, ptr %arrayidx69.i, i64 14
  %42 = load i16, ptr %arrayidx84.i, align 2
  br label %if.end98.i

if.else86.i:                                      ; preds = %if.end.i
  %dc_pred_value_comp.i = getelementptr inbounds i8, ptr %6, i64 849060
  %arrayidx88.i = getelementptr inbounds [3 x i32], ptr %dc_pred_value_comp.i, i64 0, i64 %idxprom4.i
  %43 = load i32, ptr %arrayidx88.i, align 4
  %conv89.i = trunc i32 %43 to i16
  %arrayidx91.i = getelementptr inbounds i8, ptr %PredPel.i, i64 14
  store i16 %conv89.i, ptr %arrayidx91.i, align 2
  %arrayidx92.i = getelementptr inbounds i8, ptr %PredPel.i, i64 12
  store i16 %conv89.i, ptr %arrayidx92.i, align 4
  %arrayidx93.i = getelementptr inbounds i8, ptr %PredPel.i, i64 10
  store i16 %conv89.i, ptr %arrayidx93.i, align 2
  %arrayidx97.i = getelementptr inbounds i8, ptr %PredPel.i, i64 2
  %44 = insertelement <4 x i16> poison, i16 %conv89.i, i64 0
  %45 = shufflevector <4 x i16> %44, <4 x i16> poison, <4 x i32> zeroinitializer
  store <4 x i16> %45, ptr %arrayidx97.i, align 2
  br label %if.end98.i

if.end98.i:                                       ; preds = %if.else86.i, %if.then65.i
  %46 = phi i16 [ %42, %if.then65.i ], [ %conv89.i, %if.else86.i ]
  %47 = getelementptr inbounds i8, ptr %PredPel.i, i64 16
  store i16 %46, ptr %47, align 16
  %tobool99.not.i = icmp eq i32 %block_available_up_right.0.i, 0
  br i1 %tobool99.not.i, label %if.else123.i, label %if.then100.i

if.then100.i:                                     ; preds = %if.end98.i
  %pos_y101.i = getelementptr inbounds i8, ptr %pix_c.i, i64 14
  %48 = load i16, ptr %pos_y101.i, align 2
  %idxprom102.i = sext i16 %48 to i64
  %arrayidx103.i = getelementptr inbounds ptr, ptr %cond.i, i64 %idxprom102.i
  %49 = load ptr, ptr %arrayidx103.i, align 8
  %pos_x104.i = getelementptr inbounds i8, ptr %pix_c.i, i64 12
  %50 = load i16, ptr %pos_x104.i, align 4
  %idxprom105.i = sext i16 %50 to i64
  %arrayidx106.i = getelementptr inbounds i16, ptr %49, i64 %idxprom105.i
  %51 = load i16, ptr %arrayidx106.i, align 2
  %arrayidx108.i = getelementptr inbounds i8, ptr %PredPel.i, i64 18
  store i16 %51, ptr %arrayidx108.i, align 2
  %arrayidx109.i = getelementptr inbounds i8, ptr %arrayidx106.i, i64 2
  %52 = load i16, ptr %arrayidx109.i, align 2
  %arrayidx110.i = getelementptr inbounds i8, ptr %PredPel.i, i64 20
  store i16 %52, ptr %arrayidx110.i, align 4
  %arrayidx111.i = getelementptr inbounds i8, ptr %arrayidx106.i, i64 4
  %53 = load i16, ptr %arrayidx111.i, align 2
  %arrayidx112.i = getelementptr inbounds i8, ptr %PredPel.i, i64 22
  store i16 %53, ptr %arrayidx112.i, align 2
  %arrayidx113.i = getelementptr inbounds i8, ptr %arrayidx106.i, i64 6
  %54 = load i16, ptr %arrayidx113.i, align 2
  %arrayidx114.i = getelementptr inbounds i8, ptr %PredPel.i, i64 24
  store i16 %54, ptr %arrayidx114.i, align 8
  %arrayidx115.i = getelementptr inbounds i8, ptr %arrayidx106.i, i64 8
  %55 = load i16, ptr %arrayidx115.i, align 2
  %arrayidx116.i = getelementptr inbounds i8, ptr %PredPel.i, i64 26
  store i16 %55, ptr %arrayidx116.i, align 2
  %arrayidx117.i = getelementptr inbounds i8, ptr %arrayidx106.i, i64 10
  %56 = load i16, ptr %arrayidx117.i, align 2
  %arrayidx118.i = getelementptr inbounds i8, ptr %PredPel.i, i64 28
  store i16 %56, ptr %arrayidx118.i, align 4
  %arrayidx119.i = getelementptr inbounds i8, ptr %arrayidx106.i, i64 12
  %57 = load i16, ptr %arrayidx119.i, align 2
  %arrayidx120.i = getelementptr inbounds i8, ptr %PredPel.i, i64 30
  store i16 %57, ptr %arrayidx120.i, align 2
  %arrayidx121.i = getelementptr inbounds i8, ptr %arrayidx106.i, i64 14
  %58 = load i16, ptr %arrayidx121.i, align 2
  %arrayidx122.i = getelementptr inbounds i8, ptr %PredPel.i, i64 32
  store i16 %58, ptr %arrayidx122.i, align 16
  br label %if.end133.i

if.else123.i:                                     ; preds = %if.end98.i
  %arrayidx132.i = getelementptr inbounds i8, ptr %PredPel.i, i64 18
  %59 = insertelement <8 x i16> poison, i16 %46, i64 0
  %60 = shufflevector <8 x i16> %59, <8 x i16> poison, <8 x i32> zeroinitializer
  store <8 x i16> %60, ptr %arrayidx132.i, align 2
  br label %if.end133.i

if.end133.i:                                      ; preds = %if.else123.i, %if.then100.i
  %tobool134.i = icmp ne i32 %block_available_left.0.i, 0
  br i1 %tobool134.i, label %if.then135.i, label %if.else170.i

if.then135.i:                                     ; preds = %if.end133.i
  %pos_y136.i = getelementptr inbounds i8, ptr %pix_a.i, i64 14
  %61 = load i16, ptr %pos_y136.i, align 2
  %idxprom137.i = sext i16 %61 to i64
  %arrayidx138.i = getelementptr inbounds ptr, ptr %cond.i, i64 %idxprom137.i
  %pos_x140.i = getelementptr inbounds i8, ptr %pix_a.i, i64 12
  %62 = load i16, ptr %pos_x140.i, align 4
  %incdec.ptr.i = getelementptr inbounds i8, ptr %arrayidx138.i, i64 8
  %63 = load ptr, ptr %arrayidx138.i, align 8
  %idx.ext.i = sext i16 %62 to i64
  %add.ptr.i = getelementptr inbounds i16, ptr %63, i64 %idx.ext.i
  %64 = load i16, ptr %add.ptr.i, align 2
  %arrayidx142.i = getelementptr inbounds i8, ptr %PredPel.i, i64 34
  store i16 %64, ptr %arrayidx142.i, align 2
  %incdec.ptr143.i = getelementptr inbounds i8, ptr %arrayidx138.i, i64 16
  %65 = load ptr, ptr %incdec.ptr.i, align 8
  %add.ptr145.i = getelementptr inbounds i16, ptr %65, i64 %idx.ext.i
  %66 = load i16, ptr %add.ptr145.i, align 2
  %arrayidx146.i = getelementptr inbounds i8, ptr %PredPel.i, i64 36
  store i16 %66, ptr %arrayidx146.i, align 4
  %incdec.ptr147.i = getelementptr inbounds i8, ptr %arrayidx138.i, i64 24
  %67 = load ptr, ptr %incdec.ptr143.i, align 8
  %add.ptr149.i = getelementptr inbounds i16, ptr %67, i64 %idx.ext.i
  %68 = load i16, ptr %add.ptr149.i, align 2
  %arrayidx150.i = getelementptr inbounds i8, ptr %PredPel.i, i64 38
  store i16 %68, ptr %arrayidx150.i, align 2
  %incdec.ptr151.i = getelementptr inbounds i8, ptr %arrayidx138.i, i64 32
  %69 = load ptr, ptr %incdec.ptr147.i, align 8
  %add.ptr153.i = getelementptr inbounds i16, ptr %69, i64 %idx.ext.i
  %70 = load i16, ptr %add.ptr153.i, align 2
  %arrayidx154.i = getelementptr inbounds i8, ptr %PredPel.i, i64 40
  store i16 %70, ptr %arrayidx154.i, align 8
  %incdec.ptr155.i = getelementptr inbounds i8, ptr %arrayidx138.i, i64 40
  %71 = load ptr, ptr %incdec.ptr151.i, align 8
  %add.ptr157.i = getelementptr inbounds i16, ptr %71, i64 %idx.ext.i
  %72 = load i16, ptr %add.ptr157.i, align 2
  %arrayidx158.i = getelementptr inbounds i8, ptr %PredPel.i, i64 42
  store i16 %72, ptr %arrayidx158.i, align 2
  %incdec.ptr159.i = getelementptr inbounds i8, ptr %arrayidx138.i, i64 48
  %73 = load ptr, ptr %incdec.ptr155.i, align 8
  %add.ptr161.i = getelementptr inbounds i16, ptr %73, i64 %idx.ext.i
  %74 = load i16, ptr %add.ptr161.i, align 2
  %arrayidx162.i = getelementptr inbounds i8, ptr %PredPel.i, i64 44
  store i16 %74, ptr %arrayidx162.i, align 4
  %incdec.ptr163.i = getelementptr inbounds i8, ptr %arrayidx138.i, i64 56
  %75 = load ptr, ptr %incdec.ptr159.i, align 8
  %add.ptr165.i = getelementptr inbounds i16, ptr %75, i64 %idx.ext.i
  %76 = load i16, ptr %add.ptr165.i, align 2
  %arrayidx166.i = getelementptr inbounds i8, ptr %PredPel.i, i64 46
  store i16 %76, ptr %arrayidx166.i, align 2
  %77 = load ptr, ptr %incdec.ptr163.i, align 8
  %add.ptr168.i = getelementptr inbounds i16, ptr %77, i64 %idx.ext.i
  %78 = load i16, ptr %add.ptr168.i, align 2
  br label %if.end183.i

if.else170.i:                                     ; preds = %if.end133.i
  %dc_pred_value_comp171.i = getelementptr inbounds i8, ptr %6, i64 849060
  %arrayidx173.i = getelementptr inbounds [3 x i32], ptr %dc_pred_value_comp171.i, i64 0, i64 %idxprom4.i
  %79 = load i32, ptr %arrayidx173.i, align 4
  %conv174.i = trunc i32 %79 to i16
  %arrayidx176.i = getelementptr inbounds i8, ptr %PredPel.i, i64 46
  store i16 %conv174.i, ptr %arrayidx176.i, align 2
  %arrayidx177.i = getelementptr inbounds i8, ptr %PredPel.i, i64 44
  store i16 %conv174.i, ptr %arrayidx177.i, align 4
  %arrayidx178.i = getelementptr inbounds i8, ptr %PredPel.i, i64 42
  store i16 %conv174.i, ptr %arrayidx178.i, align 2
  %arrayidx182.i = getelementptr inbounds i8, ptr %PredPel.i, i64 34
  %80 = insertelement <4 x i16> poison, i16 %conv174.i, i64 0
  %81 = shufflevector <4 x i16> %80, <4 x i16> poison, <4 x i32> zeroinitializer
  store <4 x i16> %81, ptr %arrayidx182.i, align 2
  br label %if.end183.i

if.end183.i:                                      ; preds = %if.else170.i, %if.then135.i
  %conv174.sink.i = phi i16 [ %78, %if.then135.i ], [ %conv174.i, %if.else170.i ]
  %82 = getelementptr inbounds i8, ptr %PredPel.i, i64 48
  store i16 %conv174.sink.i, ptr %82, align 16
  %tobool184.not.i = icmp eq i32 %block_available_up_left.0.i, 0
  br i1 %tobool184.not.i, label %if.else193.i, label %if.then185.i

if.then185.i:                                     ; preds = %if.end183.i
  %pos_y186.i = getelementptr inbounds i8, ptr %pix_d.i, i64 14
  %83 = load i16, ptr %pos_y186.i, align 2
  %idxprom187.i = sext i16 %83 to i64
  %arrayidx188.i = getelementptr inbounds ptr, ptr %cond.i, i64 %idxprom187.i
  %84 = load ptr, ptr %arrayidx188.i, align 8
  %pos_x189.i = getelementptr inbounds i8, ptr %pix_d.i, i64 12
  %85 = load i16, ptr %pos_x189.i, align 4
  %idxprom190.i = sext i16 %85 to i64
  %arrayidx191.i = getelementptr inbounds i16, ptr %84, i64 %idxprom190.i
  %86 = load i16, ptr %arrayidx191.i, align 2
  br label %if.end199.i

if.else193.i:                                     ; preds = %if.end183.i
  %dc_pred_value_comp194.i = getelementptr inbounds i8, ptr %6, i64 849060
  %arrayidx196.i = getelementptr inbounds [3 x i32], ptr %dc_pred_value_comp194.i, i64 0, i64 %idxprom4.i
  %87 = load i32, ptr %arrayidx196.i, align 4
  %conv197.i = trunc i32 %87 to i16
  br label %if.end199.i

if.end199.i:                                      ; preds = %if.else193.i, %if.then185.i
  %storemerge.i = phi i16 [ %86, %if.then185.i ], [ %conv197.i, %if.else193.i ]
  store i16 %storemerge.i, ptr %PredPel.i, align 16
  call fastcc void @LowPassForIntra8x8Pred(ptr noundef nonnull %PredPel.i, i32 noundef %block_available_up_left.0.i, i32 noundef %block_available_up.0.i, i32 noundef %block_available_left.0.i)
  %or.cond.i = and i1 %tobool134.i, %tobool64.i
  br i1 %or.cond.i, label %if.then203.i, label %if.else252.i

if.then203.i:                                     ; preds = %if.end199.i
  %arrayidx204.i = getelementptr inbounds i8, ptr %PredPel.i, i64 2
  %88 = load <8 x i16>, ptr %arrayidx204.i, align 2
  %arrayidx227.i = getelementptr inbounds i8, ptr %PredPel.i, i64 34
  %89 = load <8 x i16>, ptr %arrayidx227.i, align 2
  %90 = shufflevector <8 x i16> %88, <8 x i16> %89, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %91 = zext <16 x i16> %90 to <16 x i32>
  %92 = call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %91)
  %op.rdx = add i32 %92, 8
  %shr.i = lshr i32 %op.rdx, 4
  br label %if.end318.i

if.else252.i:                                     ; preds = %if.end199.i
  %tobool253.i = icmp eq i32 %block_available_up.0.i, 0
  %or.cond335.i = and i1 %tobool134.i, %tobool253.i
  br i1 %or.cond335.i, label %if.then256.i, label %if.else282.i

if.then256.i:                                     ; preds = %if.else252.i
  %arrayidx257.i = getelementptr inbounds i8, ptr %PredPel.i, i64 34
  %93 = load <8 x i16>, ptr %arrayidx257.i, align 2
  %94 = zext <8 x i16> %93 to <8 x i32>
  %95 = call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %94)
  %op.rdx1490 = add i32 %95, 4
  %shr281.i = lshr i32 %op.rdx1490, 3
  br label %if.end318.i

if.else282.i:                                     ; preds = %if.else252.i
  %or.cond336.i = or i1 %tobool134.i, %tobool253.i
  br i1 %or.cond336.i, label %if.else312.i, label %if.then286.i

if.then286.i:                                     ; preds = %if.else282.i
  %arrayidx287.i = getelementptr inbounds i8, ptr %PredPel.i, i64 2
  %96 = load <8 x i16>, ptr %arrayidx287.i, align 2
  %97 = zext <8 x i16> %96 to <8 x i32>
  %98 = call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %97)
  %op.rdx1491 = add i32 %98, 4
  %shr311.i = lshr i32 %op.rdx1491, 3
  br label %if.end318.i

if.else312.i:                                     ; preds = %if.else282.i
  %dc_pred_value_comp313.i = getelementptr inbounds i8, ptr %6, i64 849060
  %arrayidx315.i = getelementptr inbounds [3 x i32], ptr %dc_pred_value_comp313.i, i64 0, i64 %idxprom4.i
  %99 = load i32, ptr %arrayidx315.i, align 4
  br label %if.end318.i

if.end318.i:                                      ; preds = %if.else312.i, %if.then286.i, %if.then256.i, %if.then203.i
  %s0.0.i = phi i32 [ %shr.i, %if.then203.i ], [ %shr281.i, %if.then256.i ], [ %99, %if.else312.i ], [ %shr311.i, %if.then286.i ]
  %conv327.i = trunc i32 %s0.0.i to i16
  %100 = sext i32 %ioff to i64
  %101 = sext i32 %joff to i64
  %arrayidx329.i = getelementptr inbounds ptr, ptr %10, i64 %101
  %102 = load ptr, ptr %arrayidx329.i, align 8
  %arrayidx331.i = getelementptr inbounds i16, ptr %102, i64 %100
  store i16 %conv327.i, ptr %arrayidx331.i, align 2
  %indvars.iv.next.i = add nsw i64 %100, 1
  %103 = load ptr, ptr %arrayidx329.i, align 8
  %arrayidx331.1.i = getelementptr inbounds i16, ptr %103, i64 %indvars.iv.next.i
  store i16 %conv327.i, ptr %arrayidx331.1.i, align 2
  %104 = load ptr, ptr %arrayidx329.i, align 8
  %105 = getelementptr i16, ptr %104, i64 %100
  %arrayidx331.2.i = getelementptr i8, ptr %105, i64 4
  store i16 %conv327.i, ptr %arrayidx331.2.i, align 2
  %106 = load ptr, ptr %arrayidx329.i, align 8
  %107 = getelementptr i16, ptr %106, i64 %100
  %arrayidx331.3.i = getelementptr i8, ptr %107, i64 6
  store i16 %conv327.i, ptr %arrayidx331.3.i, align 2
  %108 = load ptr, ptr %arrayidx329.i, align 8
  %109 = getelementptr i16, ptr %108, i64 %100
  %arrayidx331.4.i = getelementptr i8, ptr %109, i64 8
  store i16 %conv327.i, ptr %arrayidx331.4.i, align 2
  %110 = load ptr, ptr %arrayidx329.i, align 8
  %111 = getelementptr i16, ptr %110, i64 %100
  %arrayidx331.5.i = getelementptr i8, ptr %111, i64 10
  store i16 %conv327.i, ptr %arrayidx331.5.i, align 2
  %112 = load ptr, ptr %arrayidx329.i, align 8
  %113 = getelementptr i16, ptr %112, i64 %100
  %arrayidx331.6.i = getelementptr i8, ptr %113, i64 12
  store i16 %conv327.i, ptr %arrayidx331.6.i, align 2
  %114 = load ptr, ptr %arrayidx329.i, align 8
  %115 = getelementptr i16, ptr %114, i64 %100
  %arrayidx331.7.i = getelementptr i8, ptr %115, i64 14
  store i16 %conv327.i, ptr %arrayidx331.7.i, align 2
  %arrayidx329.1438.i = getelementptr i8, ptr %arrayidx329.i, i64 8
  %116 = load ptr, ptr %arrayidx329.1438.i, align 8
  %arrayidx331.1424439.i = getelementptr inbounds i16, ptr %116, i64 %100
  store i16 %conv327.i, ptr %arrayidx331.1424439.i, align 2
  %117 = load ptr, ptr %arrayidx329.1438.i, align 8
  %arrayidx331.1.1.i = getelementptr inbounds i16, ptr %117, i64 %indvars.iv.next.i
  store i16 %conv327.i, ptr %arrayidx331.1.1.i, align 2
  %118 = load ptr, ptr %arrayidx329.1438.i, align 8
  %119 = getelementptr i16, ptr %118, i64 %100
  %arrayidx331.2.1.i = getelementptr i8, ptr %119, i64 4
  store i16 %conv327.i, ptr %arrayidx331.2.1.i, align 2
  %120 = load ptr, ptr %arrayidx329.1438.i, align 8
  %121 = getelementptr i16, ptr %120, i64 %100
  %arrayidx331.3.1.i = getelementptr i8, ptr %121, i64 6
  store i16 %conv327.i, ptr %arrayidx331.3.1.i, align 2
  %122 = load ptr, ptr %arrayidx329.1438.i, align 8
  %123 = getelementptr i16, ptr %122, i64 %100
  %arrayidx331.4.1.i = getelementptr i8, ptr %123, i64 8
  store i16 %conv327.i, ptr %arrayidx331.4.1.i, align 2
  %124 = load ptr, ptr %arrayidx329.1438.i, align 8
  %125 = getelementptr i16, ptr %124, i64 %100
  %arrayidx331.5.1.i = getelementptr i8, ptr %125, i64 10
  store i16 %conv327.i, ptr %arrayidx331.5.1.i, align 2
  %126 = load ptr, ptr %arrayidx329.1438.i, align 8
  %127 = getelementptr i16, ptr %126, i64 %100
  %arrayidx331.6.1.i = getelementptr i8, ptr %127, i64 12
  store i16 %conv327.i, ptr %arrayidx331.6.1.i, align 2
  %128 = load ptr, ptr %arrayidx329.1438.i, align 8
  %129 = getelementptr i16, ptr %128, i64 %100
  %arrayidx331.7.1.i = getelementptr i8, ptr %129, i64 14
  store i16 %conv327.i, ptr %arrayidx331.7.1.i, align 2
  %arrayidx329.2441.i = getelementptr i8, ptr %arrayidx329.i, i64 16
  %130 = load ptr, ptr %arrayidx329.2441.i, align 8
  %arrayidx331.2427442.i = getelementptr inbounds i16, ptr %130, i64 %100
  store i16 %conv327.i, ptr %arrayidx331.2427442.i, align 2
  %131 = load ptr, ptr %arrayidx329.2441.i, align 8
  %arrayidx331.1.2.i = getelementptr inbounds i16, ptr %131, i64 %indvars.iv.next.i
  store i16 %conv327.i, ptr %arrayidx331.1.2.i, align 2
  %132 = load ptr, ptr %arrayidx329.2441.i, align 8
  %133 = getelementptr i16, ptr %132, i64 %100
  %arrayidx331.2.2.i = getelementptr i8, ptr %133, i64 4
  store i16 %conv327.i, ptr %arrayidx331.2.2.i, align 2
  %134 = load ptr, ptr %arrayidx329.2441.i, align 8
  %135 = getelementptr i16, ptr %134, i64 %100
  %arrayidx331.3.2.i = getelementptr i8, ptr %135, i64 6
  store i16 %conv327.i, ptr %arrayidx331.3.2.i, align 2
  %136 = load ptr, ptr %arrayidx329.2441.i, align 8
  %137 = getelementptr i16, ptr %136, i64 %100
  %arrayidx331.4.2.i = getelementptr i8, ptr %137, i64 8
  store i16 %conv327.i, ptr %arrayidx331.4.2.i, align 2
  %138 = load ptr, ptr %arrayidx329.2441.i, align 8
  %139 = getelementptr i16, ptr %138, i64 %100
  %arrayidx331.5.2.i = getelementptr i8, ptr %139, i64 10
  store i16 %conv327.i, ptr %arrayidx331.5.2.i, align 2
  %140 = load ptr, ptr %arrayidx329.2441.i, align 8
  %141 = getelementptr i16, ptr %140, i64 %100
  %arrayidx331.6.2.i = getelementptr i8, ptr %141, i64 12
  store i16 %conv327.i, ptr %arrayidx331.6.2.i, align 2
  %142 = load ptr, ptr %arrayidx329.2441.i, align 8
  %143 = getelementptr i16, ptr %142, i64 %100
  %arrayidx331.7.2.i = getelementptr i8, ptr %143, i64 14
  store i16 %conv327.i, ptr %arrayidx331.7.2.i, align 2
  %arrayidx329.3444.i = getelementptr i8, ptr %arrayidx329.i, i64 24
  %144 = load ptr, ptr %arrayidx329.3444.i, align 8
  %arrayidx331.3429445.i = getelementptr inbounds i16, ptr %144, i64 %100
  store i16 %conv327.i, ptr %arrayidx331.3429445.i, align 2
  %145 = load ptr, ptr %arrayidx329.3444.i, align 8
  %arrayidx331.1.3.i = getelementptr inbounds i16, ptr %145, i64 %indvars.iv.next.i
  store i16 %conv327.i, ptr %arrayidx331.1.3.i, align 2
  %146 = load ptr, ptr %arrayidx329.3444.i, align 8
  %147 = getelementptr i16, ptr %146, i64 %100
  %arrayidx331.2.3.i = getelementptr i8, ptr %147, i64 4
  store i16 %conv327.i, ptr %arrayidx331.2.3.i, align 2
  %148 = load ptr, ptr %arrayidx329.3444.i, align 8
  %149 = getelementptr i16, ptr %148, i64 %100
  %arrayidx331.3.3.i = getelementptr i8, ptr %149, i64 6
  store i16 %conv327.i, ptr %arrayidx331.3.3.i, align 2
  %150 = load ptr, ptr %arrayidx329.3444.i, align 8
  %151 = getelementptr i16, ptr %150, i64 %100
  %arrayidx331.4.3.i = getelementptr i8, ptr %151, i64 8
  store i16 %conv327.i, ptr %arrayidx331.4.3.i, align 2
  %152 = load ptr, ptr %arrayidx329.3444.i, align 8
  %153 = getelementptr i16, ptr %152, i64 %100
  %arrayidx331.5.3.i = getelementptr i8, ptr %153, i64 10
  store i16 %conv327.i, ptr %arrayidx331.5.3.i, align 2
  %154 = load ptr, ptr %arrayidx329.3444.i, align 8
  %155 = getelementptr i16, ptr %154, i64 %100
  %arrayidx331.6.3.i = getelementptr i8, ptr %155, i64 12
  store i16 %conv327.i, ptr %arrayidx331.6.3.i, align 2
  %156 = load ptr, ptr %arrayidx329.3444.i, align 8
  %157 = getelementptr i16, ptr %156, i64 %100
  %arrayidx331.7.3.i = getelementptr i8, ptr %157, i64 14
  store i16 %conv327.i, ptr %arrayidx331.7.3.i, align 2
  %arrayidx329.4447.i = getelementptr i8, ptr %arrayidx329.i, i64 32
  %158 = load ptr, ptr %arrayidx329.4447.i, align 8
  %arrayidx331.4431448.i = getelementptr inbounds i16, ptr %158, i64 %100
  store i16 %conv327.i, ptr %arrayidx331.4431448.i, align 2
  %159 = load ptr, ptr %arrayidx329.4447.i, align 8
  %arrayidx331.1.4.i = getelementptr inbounds i16, ptr %159, i64 %indvars.iv.next.i
  store i16 %conv327.i, ptr %arrayidx331.1.4.i, align 2
  %160 = load ptr, ptr %arrayidx329.4447.i, align 8
  %161 = getelementptr i16, ptr %160, i64 %100
  %arrayidx331.2.4.i = getelementptr i8, ptr %161, i64 4
  store i16 %conv327.i, ptr %arrayidx331.2.4.i, align 2
  %162 = load ptr, ptr %arrayidx329.4447.i, align 8
  %163 = getelementptr i16, ptr %162, i64 %100
  %arrayidx331.3.4.i = getelementptr i8, ptr %163, i64 6
  store i16 %conv327.i, ptr %arrayidx331.3.4.i, align 2
  %164 = load ptr, ptr %arrayidx329.4447.i, align 8
  %165 = getelementptr i16, ptr %164, i64 %100
  %arrayidx331.4.4.i = getelementptr i8, ptr %165, i64 8
  store i16 %conv327.i, ptr %arrayidx331.4.4.i, align 2
  %166 = load ptr, ptr %arrayidx329.4447.i, align 8
  %167 = getelementptr i16, ptr %166, i64 %100
  %arrayidx331.5.4.i = getelementptr i8, ptr %167, i64 10
  store i16 %conv327.i, ptr %arrayidx331.5.4.i, align 2
  %168 = load ptr, ptr %arrayidx329.4447.i, align 8
  %169 = getelementptr i16, ptr %168, i64 %100
  %arrayidx331.6.4.i = getelementptr i8, ptr %169, i64 12
  store i16 %conv327.i, ptr %arrayidx331.6.4.i, align 2
  %170 = load ptr, ptr %arrayidx329.4447.i, align 8
  %171 = getelementptr i16, ptr %170, i64 %100
  %arrayidx331.7.4.i = getelementptr i8, ptr %171, i64 14
  store i16 %conv327.i, ptr %arrayidx331.7.4.i, align 2
  %arrayidx329.5450.i = getelementptr i8, ptr %arrayidx329.i, i64 40
  %172 = load ptr, ptr %arrayidx329.5450.i, align 8
  %arrayidx331.5433451.i = getelementptr inbounds i16, ptr %172, i64 %100
  store i16 %conv327.i, ptr %arrayidx331.5433451.i, align 2
  %173 = load ptr, ptr %arrayidx329.5450.i, align 8
  %arrayidx331.1.5.i = getelementptr inbounds i16, ptr %173, i64 %indvars.iv.next.i
  store i16 %conv327.i, ptr %arrayidx331.1.5.i, align 2
  %174 = load ptr, ptr %arrayidx329.5450.i, align 8
  %175 = getelementptr i16, ptr %174, i64 %100
  %arrayidx331.2.5.i = getelementptr i8, ptr %175, i64 4
  store i16 %conv327.i, ptr %arrayidx331.2.5.i, align 2
  %176 = load ptr, ptr %arrayidx329.5450.i, align 8
  %177 = getelementptr i16, ptr %176, i64 %100
  %arrayidx331.3.5.i = getelementptr i8, ptr %177, i64 6
  store i16 %conv327.i, ptr %arrayidx331.3.5.i, align 2
  %178 = load ptr, ptr %arrayidx329.5450.i, align 8
  %179 = getelementptr i16, ptr %178, i64 %100
  %arrayidx331.4.5.i = getelementptr i8, ptr %179, i64 8
  store i16 %conv327.i, ptr %arrayidx331.4.5.i, align 2
  %180 = load ptr, ptr %arrayidx329.5450.i, align 8
  %181 = getelementptr i16, ptr %180, i64 %100
  %arrayidx331.5.5.i = getelementptr i8, ptr %181, i64 10
  store i16 %conv327.i, ptr %arrayidx331.5.5.i, align 2
  %182 = load ptr, ptr %arrayidx329.5450.i, align 8
  %183 = getelementptr i16, ptr %182, i64 %100
  %arrayidx331.6.5.i = getelementptr i8, ptr %183, i64 12
  store i16 %conv327.i, ptr %arrayidx331.6.5.i, align 2
  %184 = load ptr, ptr %arrayidx329.5450.i, align 8
  %185 = getelementptr i16, ptr %184, i64 %100
  %arrayidx331.7.5.i = getelementptr i8, ptr %185, i64 14
  store i16 %conv327.i, ptr %arrayidx331.7.5.i, align 2
  %arrayidx329.6453.i = getelementptr i8, ptr %arrayidx329.i, i64 48
  %186 = load ptr, ptr %arrayidx329.6453.i, align 8
  %arrayidx331.6435454.i = getelementptr inbounds i16, ptr %186, i64 %100
  store i16 %conv327.i, ptr %arrayidx331.6435454.i, align 2
  %187 = load ptr, ptr %arrayidx329.6453.i, align 8
  %arrayidx331.1.6.i = getelementptr inbounds i16, ptr %187, i64 %indvars.iv.next.i
  store i16 %conv327.i, ptr %arrayidx331.1.6.i, align 2
  %188 = load ptr, ptr %arrayidx329.6453.i, align 8
  %189 = getelementptr i16, ptr %188, i64 %100
  %arrayidx331.2.6.i = getelementptr i8, ptr %189, i64 4
  store i16 %conv327.i, ptr %arrayidx331.2.6.i, align 2
  %190 = load ptr, ptr %arrayidx329.6453.i, align 8
  %191 = getelementptr i16, ptr %190, i64 %100
  %arrayidx331.3.6.i = getelementptr i8, ptr %191, i64 6
  store i16 %conv327.i, ptr %arrayidx331.3.6.i, align 2
  %192 = load ptr, ptr %arrayidx329.6453.i, align 8
  %193 = getelementptr i16, ptr %192, i64 %100
  %arrayidx331.4.6.i = getelementptr i8, ptr %193, i64 8
  store i16 %conv327.i, ptr %arrayidx331.4.6.i, align 2
  %194 = load ptr, ptr %arrayidx329.6453.i, align 8
  %195 = getelementptr i16, ptr %194, i64 %100
  %arrayidx331.5.6.i = getelementptr i8, ptr %195, i64 10
  store i16 %conv327.i, ptr %arrayidx331.5.6.i, align 2
  %196 = load ptr, ptr %arrayidx329.6453.i, align 8
  %197 = getelementptr i16, ptr %196, i64 %100
  %arrayidx331.6.6.i = getelementptr i8, ptr %197, i64 12
  store i16 %conv327.i, ptr %arrayidx331.6.6.i, align 2
  %198 = load ptr, ptr %arrayidx329.6453.i, align 8
  %199 = getelementptr i16, ptr %198, i64 %100
  %arrayidx331.7.6.i = getelementptr i8, ptr %199, i64 14
  store i16 %conv327.i, ptr %arrayidx331.7.6.i, align 2
  %arrayidx329.7456.i = getelementptr i8, ptr %arrayidx329.i, i64 56
  %200 = load ptr, ptr %arrayidx329.7456.i, align 8
  %arrayidx331.7437457.i = getelementptr inbounds i16, ptr %200, i64 %100
  store i16 %conv327.i, ptr %arrayidx331.7437457.i, align 2
  %201 = load ptr, ptr %arrayidx329.7456.i, align 8
  %arrayidx331.1.7.i = getelementptr inbounds i16, ptr %201, i64 %indvars.iv.next.i
  store i16 %conv327.i, ptr %arrayidx331.1.7.i, align 2
  %202 = load ptr, ptr %arrayidx329.7456.i, align 8
  %203 = getelementptr i16, ptr %202, i64 %100
  %arrayidx331.2.7.i = getelementptr i8, ptr %203, i64 4
  store i16 %conv327.i, ptr %arrayidx331.2.7.i, align 2
  %204 = load ptr, ptr %arrayidx329.7456.i, align 8
  %205 = getelementptr i16, ptr %204, i64 %100
  %arrayidx331.3.7.i = getelementptr i8, ptr %205, i64 6
  store i16 %conv327.i, ptr %arrayidx331.3.7.i, align 2
  %206 = load ptr, ptr %arrayidx329.7456.i, align 8
  %207 = getelementptr i16, ptr %206, i64 %100
  %arrayidx331.4.7.i = getelementptr i8, ptr %207, i64 8
  store i16 %conv327.i, ptr %arrayidx331.4.7.i, align 2
  %208 = load ptr, ptr %arrayidx329.7456.i, align 8
  %209 = getelementptr i16, ptr %208, i64 %100
  %arrayidx331.5.7.i = getelementptr i8, ptr %209, i64 10
  store i16 %conv327.i, ptr %arrayidx331.5.7.i, align 2
  %210 = load ptr, ptr %arrayidx329.7456.i, align 8
  %211 = getelementptr i16, ptr %210, i64 %100
  %arrayidx331.6.7.i = getelementptr i8, ptr %211, i64 12
  store i16 %conv327.i, ptr %arrayidx331.6.7.i, align 2
  %212 = load ptr, ptr %arrayidx329.7456.i, align 8
  %213 = getelementptr i16, ptr %212, i64 %100
  %arrayidx331.7.7.i = getelementptr i8, ptr %213, i64 14
  store i16 %conv327.i, ptr %arrayidx331.7.7.i, align 2
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pix_d.i) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pix_c.i) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pix_b.i) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pix_a.i) #6
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %PredPel.i) #6
  br label %cleanup

sw.bb7:                                           ; preds = %entry
  %p_Vid1.i72 = getelementptr inbounds i8, ptr %currMB, i64 8
  %214 = load ptr, ptr %p_Vid1.i72, align 8
  %tobool.not.i73 = icmp eq i32 %pl, 0
  %dec_picture2.i74 = getelementptr inbounds i8, ptr %2, i64 13520
  %215 = load ptr, ptr %dec_picture2.i74, align 8
  br i1 %tobool.not.i73, label %cond.false.i159, label %cond.true.i75

cond.true.i75:                                    ; preds = %sw.bb7
  %imgUV.i76 = getelementptr inbounds i8, ptr %215, i64 136
  %216 = load ptr, ptr %imgUV.i76, align 8
  %sub.i77 = add i32 %pl, -1
  %idxprom.i78 = zext i32 %sub.i77 to i64
  %arrayidx.i79 = getelementptr inbounds ptr, ptr %216, i64 %idxprom.i78
  br label %cond.end.i80

cond.false.i159:                                  ; preds = %sw.bb7
  %imgY3.i160 = getelementptr inbounds i8, ptr %215, i64 128
  br label %cond.end.i80

cond.end.i80:                                     ; preds = %cond.false.i159, %cond.true.i75
  %cond.in.i81 = phi ptr [ %arrayidx.i79, %cond.true.i75 ], [ %imgY3.i160, %cond.false.i159 ]
  %cond.i82 = load ptr, ptr %cond.in.i81, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pix_a.i68) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pix_b.i69) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pix_c.i70) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pix_d.i71) #6
  %mb_pred.i83 = getelementptr inbounds i8, ptr %2, i64 1248
  %217 = load ptr, ptr %mb_pred.i83, align 8
  %idxprom4.i84 = zext i32 %pl to i64
  %arrayidx5.i85 = getelementptr inbounds ptr, ptr %217, i64 %idxprom4.i84
  %218 = load ptr, ptr %arrayidx5.i85, align 8
  %mb_size6.i86 = getelementptr inbounds i8, ptr %214, i64 849124
  %sub8.i87 = add nsw i32 %ioff, -1
  call void @getNonAffNeighbour(ptr noundef nonnull %currMB, i32 noundef %sub8.i87, i32 noundef %joff, ptr noundef nonnull %mb_size6.i86, ptr noundef nonnull %pix_a.i68) #6
  %sub9.i88 = add nsw i32 %joff, -1
  call void @getNonAffNeighbour(ptr noundef nonnull %currMB, i32 noundef %ioff, i32 noundef %sub9.i88, ptr noundef nonnull %mb_size6.i86, ptr noundef nonnull %pix_b.i69) #6
  %add.i89 = add nsw i32 %ioff, 8
  call void @getNonAffNeighbour(ptr noundef nonnull %currMB, i32 noundef %add.i89, i32 noundef %sub9.i88, ptr noundef nonnull %mb_size6.i86, ptr noundef nonnull %pix_c.i70) #6
  call void @getNonAffNeighbour(ptr noundef nonnull %currMB, i32 noundef %sub8.i87, i32 noundef %sub9.i88, ptr noundef nonnull %mb_size6.i86, ptr noundef nonnull %pix_d.i71) #6
  %219 = load i32, ptr %pix_c.i70, align 4
  %tobool13.not.i90 = icmp ne i32 %219, 0
  %cmp.i91 = icmp ne i32 %ioff, 8
  %cmp15.i92 = icmp ne i32 %joff, 8
  %.not.i93 = or i1 %cmp.i91, %cmp15.i92
  %narrow.i = and i1 %.not.i93, %tobool13.not.i90
  %land.ext.i94 = zext i1 %narrow.i to i32
  store i32 %land.ext.i94, ptr %pix_c.i70, align 4
  %active_pps.i95 = getelementptr inbounds i8, ptr %214, i64 8
  %220 = load ptr, ptr %active_pps.i95, align 8
  %constrained_intra_pred_flag.i96 = getelementptr inbounds i8, ptr %220, i64 2204
  %221 = load i32, ptr %constrained_intra_pred_flag.i96, align 4
  %tobool18.not.i97 = icmp eq i32 %221, 0
  %222 = load i32, ptr %pix_b.i69, align 4
  br i1 %tobool18.not.i97, label %if.else.i158, label %cond.end25.i106

cond.end25.i106:                                  ; preds = %cond.end.i80
  %tobool28.not.i108 = icmp eq i32 %222, 0
  br i1 %tobool28.not.i108, label %cond.end36.i115, label %cond.true29.i109

cond.true29.i109:                                 ; preds = %cond.end25.i106
  %intra_block30.i110 = getelementptr inbounds i8, ptr %2, i64 13544
  %223 = load ptr, ptr %intra_block30.i110, align 8
  %mb_addr31.i111 = getelementptr inbounds i8, ptr %pix_b.i69, i64 4
  %224 = load i32, ptr %mb_addr31.i111, align 4
  %idxprom32.i112 = sext i32 %224 to i64
  %arrayidx33.i113 = getelementptr inbounds i8, ptr %223, i64 %idxprom32.i112
  %225 = load i8, ptr %arrayidx33.i113, align 1
  %conv34.i114 = sext i8 %225 to i32
  br label %cond.end36.i115

cond.end36.i115:                                  ; preds = %cond.true29.i109, %cond.end25.i106
  %cond37.i116 = phi i32 [ %conv34.i114, %cond.true29.i109 ], [ 0, %cond.end25.i106 ]
  br i1 %narrow.i, label %cond.true40.i152, label %cond.end47.i117

cond.true40.i152:                                 ; preds = %cond.end36.i115
  %intra_block41.i153 = getelementptr inbounds i8, ptr %2, i64 13544
  %226 = load ptr, ptr %intra_block41.i153, align 8
  %mb_addr42.i154 = getelementptr inbounds i8, ptr %pix_c.i70, i64 4
  %227 = load i32, ptr %mb_addr42.i154, align 4
  %idxprom43.i155 = sext i32 %227 to i64
  %arrayidx44.i156 = getelementptr inbounds i8, ptr %226, i64 %idxprom43.i155
  %228 = load i8, ptr %arrayidx44.i156, align 1
  %conv45.i157 = sext i8 %228 to i32
  br label %cond.end47.i117

cond.end47.i117:                                  ; preds = %cond.true40.i152, %cond.end36.i115
  %cond48.i118 = phi i32 [ %conv45.i157, %cond.true40.i152 ], [ 0, %cond.end36.i115 ]
  %229 = load i32, ptr %pix_d.i71, align 4
  %tobool50.not.i119 = icmp eq i32 %229, 0
  br i1 %tobool50.not.i119, label %if.end.i126, label %cond.true51.i120

cond.true51.i120:                                 ; preds = %cond.end47.i117
  %intra_block52.i121 = getelementptr inbounds i8, ptr %2, i64 13544
  %230 = load ptr, ptr %intra_block52.i121, align 8
  %mb_addr53.i122 = getelementptr inbounds i8, ptr %pix_d.i71, i64 4
  %231 = load i32, ptr %mb_addr53.i122, align 4
  %idxprom54.i123 = sext i32 %231 to i64
  %arrayidx55.i124 = getelementptr inbounds i8, ptr %230, i64 %idxprom54.i123
  %232 = load i8, ptr %arrayidx55.i124, align 1
  %conv56.i125 = sext i8 %232 to i32
  br label %if.end.i126

if.else.i158:                                     ; preds = %cond.end.i80
  %233 = load i32, ptr %pix_d.i71, align 4
  br label %if.end.i126

if.end.i126:                                      ; preds = %if.else.i158, %cond.true51.i120, %cond.end47.i117
  %block_available_up_left.0.i128 = phi i32 [ %233, %if.else.i158 ], [ 0, %cond.end47.i117 ], [ %conv56.i125, %cond.true51.i120 ]
  %block_available_up_right.0.i129 = phi i32 [ %land.ext.i94, %if.else.i158 ], [ %cond48.i118, %cond.end47.i117 ], [ %cond48.i118, %cond.true51.i120 ]
  %block_available_up.0.i130 = phi i32 [ %222, %if.else.i158 ], [ %cond37.i116, %cond.end47.i117 ], [ %cond37.i116, %cond.true51.i120 ]
  %tobool64.not.i = icmp eq i32 %block_available_up.0.i130, 0
  br i1 %tobool64.not.i, label %if.then65.i148, label %if.then68.i

if.then65.i148:                                   ; preds = %if.end.i126
  %current_mb_nr.i = getelementptr inbounds i8, ptr %2, i64 108
  %234 = load i32, ptr %current_mb_nr.i, align 4
  %call.i = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %234)
  %dc_pred_value_comp.i149 = getelementptr inbounds i8, ptr %214, i64 849060
  %arrayidx89.i = getelementptr inbounds [3 x i32], ptr %dc_pred_value_comp.i149, i64 0, i64 %idxprom4.i84
  %235 = load i32, ptr %arrayidx89.i, align 4
  %conv90.i = trunc i32 %235 to i16
  br label %if.end99.i

if.then68.i:                                      ; preds = %if.end.i126
  %pos_y.i131 = getelementptr inbounds i8, ptr %pix_b.i69, i64 14
  %236 = load i16, ptr %pos_y.i131, align 2
  %idxprom69.i = sext i16 %236 to i64
  %arrayidx70.i = getelementptr inbounds ptr, ptr %cond.i82, i64 %idxprom69.i
  %237 = load ptr, ptr %arrayidx70.i, align 8
  %pos_x.i132 = getelementptr inbounds i8, ptr %pix_b.i69, i64 12
  %238 = load i16, ptr %pos_x.i132, align 4
  %idxprom71.i = sext i16 %238 to i64
  %arrayidx72.i133 = getelementptr inbounds i16, ptr %237, i64 %idxprom71.i
  %incdec.ptr.i134 = getelementptr inbounds i8, ptr %arrayidx72.i133, i64 2
  %239 = load i16, ptr %arrayidx72.i133, align 2
  %incdec.ptr74.i = getelementptr inbounds i8, ptr %arrayidx72.i133, i64 4
  %240 = load i16, ptr %incdec.ptr.i134, align 2
  %incdec.ptr76.i = getelementptr inbounds i8, ptr %arrayidx72.i133, i64 6
  %241 = load i16, ptr %incdec.ptr74.i, align 2
  %incdec.ptr78.i = getelementptr inbounds i8, ptr %arrayidx72.i133, i64 8
  %242 = load i16, ptr %incdec.ptr76.i, align 2
  %incdec.ptr80.i = getelementptr inbounds i8, ptr %arrayidx72.i133, i64 10
  %243 = load i16, ptr %incdec.ptr78.i, align 2
  %incdec.ptr82.i = getelementptr inbounds i8, ptr %arrayidx72.i133, i64 12
  %244 = load i16, ptr %incdec.ptr80.i, align 2
  %incdec.ptr84.i = getelementptr inbounds i8, ptr %arrayidx72.i133, i64 14
  %245 = load i16, ptr %incdec.ptr82.i, align 2
  %246 = load i16, ptr %incdec.ptr84.i, align 2
  br label %if.end99.i

if.end99.i:                                       ; preds = %if.then68.i, %if.then65.i148
  %PredPel.i67.sroa.35.0 = phi i16 [ %conv90.i, %if.then65.i148 ], [ %246, %if.then68.i ]
  %PredPel.i67.sroa.31.0 = phi i16 [ %conv90.i, %if.then65.i148 ], [ %245, %if.then68.i ]
  %.sink220.i = phi i16 [ %conv90.i, %if.then65.i148 ], [ %244, %if.then68.i ]
  %.sink219.i = phi i16 [ %conv90.i, %if.then65.i148 ], [ %243, %if.then68.i ]
  %.sink218.i = phi i16 [ %conv90.i, %if.then65.i148 ], [ %242, %if.then68.i ]
  %.sink217.i = phi i16 [ %conv90.i, %if.then65.i148 ], [ %241, %if.then68.i ]
  %.sink216.i = phi i16 [ %conv90.i, %if.then65.i148 ], [ %240, %if.then68.i ]
  %.sink.i135 = phi i16 [ %conv90.i, %if.then65.i148 ], [ %239, %if.then68.i ]
  %tobool100.not.i = icmp eq i32 %block_available_up_right.0.i129, 0
  br i1 %tobool100.not.i, label %if.end133.i138, label %if.then101.i

if.then101.i:                                     ; preds = %if.end99.i
  %pos_y102.i = getelementptr inbounds i8, ptr %pix_c.i70, i64 14
  %247 = load i16, ptr %pos_y102.i, align 2
  %idxprom103.i = sext i16 %247 to i64
  %arrayidx104.i = getelementptr inbounds ptr, ptr %cond.i82, i64 %idxprom103.i
  %248 = load ptr, ptr %arrayidx104.i, align 8
  %pos_x105.i = getelementptr inbounds i8, ptr %pix_c.i70, i64 12
  %249 = load i16, ptr %pos_x105.i, align 4
  %idxprom106.i = sext i16 %249 to i64
  %arrayidx107.i = getelementptr inbounds i16, ptr %248, i64 %idxprom106.i
  %250 = load i16, ptr %arrayidx107.i, align 2
  br label %if.end133.i138

if.end133.i138:                                   ; preds = %if.end99.i, %if.then101.i
  %.sink221.i = phi i16 [ %250, %if.then101.i ], [ %PredPel.i67.sroa.35.0, %if.end99.i ]
  %tobool134.not.i = icmp eq i32 %block_available_up_left.0.i128, 0
  br i1 %tobool134.not.i, label %if.end47.i, label %if.then.i1417

if.then.i1417:                                    ; preds = %if.end133.i138
  br i1 %tobool64.not.i, label %LowPassForIntra8x8PredHor.exit, label %if.then51.i

if.end47.i:                                       ; preds = %if.end133.i138
  br i1 %tobool64.not.i, label %LowPassForIntra8x8PredHor.exit, label %if.else65.i

if.then51.i:                                      ; preds = %if.then.i1417
  %pos_y136.i140 = getelementptr inbounds i8, ptr %pix_d.i71, i64 14
  %251 = load i16, ptr %pos_y136.i140, align 2
  %idxprom137.i141 = sext i16 %251 to i64
  %arrayidx138.i142 = getelementptr inbounds ptr, ptr %cond.i82, i64 %idxprom137.i141
  %252 = load ptr, ptr %arrayidx138.i142, align 8
  %pos_x139.i = getelementptr inbounds i8, ptr %pix_d.i71, i64 12
  %253 = load i16, ptr %pos_x139.i, align 4
  %idxprom140.i = sext i16 %253 to i64
  %arrayidx141.i = getelementptr inbounds i16, ptr %252, i64 %idxprom140.i
  %254 = load i16, ptr %arrayidx141.i, align 2
  %conv53.pre-phi.i = zext i16 %254 to i32
  %conv23.i = zext i16 %.sink.i135 to i32
  %shl56.i = shl nuw nsw i32 %conv23.i, 1
  %conv59.i1422 = zext i16 %.sink216.i to i32
  %add57.i = add nuw nsw i32 %conv59.i1422, 2
  %add60.i = add nuw nsw i32 %add57.i, %shl56.i
  %add61.i = add nuw nsw i32 %add60.i, %conv53.pre-phi.i
  br label %if.end79.i

if.else65.i:                                      ; preds = %if.end47.i
  %conv67.i = zext i16 %.sink.i135 to i32
  %add71.i = mul nuw nsw i32 %conv67.i, 3
  %conv73.i = zext i16 %.sink216.i to i32
  %add74.i = add nuw nsw i32 %conv73.i, 2
  %add75.i = add nuw nsw i32 %add71.i, %add74.i
  br label %if.end79.i

if.end79.i:                                       ; preds = %if.else65.i, %if.then51.i
  %add87.1.pre-phi.i = phi i32 [ %add74.i, %if.else65.i ], [ %add57.i, %if.then51.i ]
  %conv85.pre-phi.i = phi i32 [ %conv73.i, %if.else65.i ], [ %conv59.i1422, %if.then51.i ]
  %conv82.pre-phi.i = phi i32 [ %conv67.i, %if.else65.i ], [ %conv23.i, %if.then51.i ]
  %LoopArray.sroa.6.0.in.in.i = phi i32 [ %add75.i, %if.else65.i ], [ %add61.i, %if.then51.i ]
  %LoopArray.sroa.6.0.in.i = lshr i32 %LoopArray.sroa.6.0.in.in.i, 2
  %LoopArray.sroa.6.0.i = trunc nuw i32 %LoopArray.sroa.6.0.in.i to i16
  %shl86.i = shl nuw nsw i32 %conv85.pre-phi.i, 1
  %conv91.i = zext i16 %.sink217.i to i32
  %add87.i = add nuw nsw i32 %conv91.i, 2
  %add92.i = add nuw nsw i32 %add87.i, %conv82.pre-phi.i
  %add93.i = add nuw nsw i32 %add92.i, %shl86.i
  %shr94.i = lshr i32 %add93.i, 2
  %conv95.i1423 = trunc nuw i32 %shr94.i to i16
  %shl86.1.i = shl nuw nsw i32 %conv91.i, 1
  %conv91.1.i = zext i16 %.sink218.i to i32
  %add92.1.i = add nuw nsw i32 %shl86.1.i, %conv91.1.i
  %add93.1.i = add nuw nsw i32 %add92.1.i, %add87.1.pre-phi.i
  %shr94.1.i = lshr i32 %add93.1.i, 2
  %conv95.1.i = trunc nuw i32 %shr94.1.i to i16
  %shl86.2.i = shl nuw nsw i32 %conv91.1.i, 1
  %conv91.2.i = zext i16 %.sink219.i to i32
  %add87.2.i = add nuw nsw i32 %conv91.2.i, 2
  %add92.2.i = add nuw nsw i32 %add87.2.i, %conv91.i
  %add93.2.i = add nuw nsw i32 %add92.2.i, %shl86.2.i
  %shr94.2.i = lshr i32 %add93.2.i, 2
  %conv95.2.i = trunc nuw i32 %shr94.2.i to i16
  %shl86.3.i = shl nuw nsw i32 %conv91.2.i, 1
  %conv91.3.i = zext i16 %.sink220.i to i32
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
  %conv91.6.i = zext i16 %.sink221.i to i32
  %add92.6.i = add nuw nsw i32 %add87.4.i, %shl86.6.i
  %add93.6.i = add nuw nsw i32 %add92.6.i, %conv91.6.i
  %shr94.6.i = lshr i32 %add93.6.i, 2
  %conv95.6.i = trunc nuw i32 %shr94.6.i to i16
  br label %LowPassForIntra8x8PredHor.exit

LowPassForIntra8x8PredHor.exit:                   ; preds = %if.then.i1417, %if.end47.i, %if.end79.i
  %LoopArray.sroa.14.0.i = phi i16 [ %PredPel.i67.sroa.35.0, %if.end47.i ], [ %conv95.6.i, %if.end79.i ], [ %PredPel.i67.sroa.35.0, %if.then.i1417 ]
  %LoopArray.sroa.13.0.i = phi i16 [ %PredPel.i67.sroa.31.0, %if.end47.i ], [ %conv95.5.i, %if.end79.i ], [ %PredPel.i67.sroa.31.0, %if.then.i1417 ]
  %LoopArray.sroa.12.0.i = phi i16 [ %.sink220.i, %if.end47.i ], [ %conv95.4.i, %if.end79.i ], [ %.sink220.i, %if.then.i1417 ]
  %LoopArray.sroa.11.0.i = phi i16 [ %.sink219.i, %if.end47.i ], [ %conv95.3.i, %if.end79.i ], [ %.sink219.i, %if.then.i1417 ]
  %LoopArray.sroa.10.0.i = phi i16 [ %.sink218.i, %if.end47.i ], [ %conv95.2.i, %if.end79.i ], [ %.sink218.i, %if.then.i1417 ]
  %LoopArray.sroa.9.0.i = phi i16 [ %.sink217.i, %if.end47.i ], [ %conv95.1.i, %if.end79.i ], [ %.sink217.i, %if.then.i1417 ]
  %LoopArray.sroa.8.0.i = phi i16 [ %.sink216.i, %if.end47.i ], [ %conv95.i1423, %if.end79.i ], [ %.sink216.i, %if.then.i1417 ]
  %LoopArray.sroa.6.1.i = phi i16 [ %.sink.i135, %if.end47.i ], [ %LoopArray.sroa.6.0.i, %if.end79.i ], [ %.sink.i135, %if.then.i1417 ]
  %idxprom156.i = sext i32 %ioff to i64
  %255 = sext i32 %joff to i64
  %arrayidx155.i = getelementptr inbounds ptr, ptr %218, i64 %255
  %256 = load ptr, ptr %arrayidx155.i, align 8
  %arrayidx157.i = getelementptr inbounds i16, ptr %256, i64 %idxprom156.i
  store i16 %LoopArray.sroa.6.1.i, ptr %arrayidx157.i, align 2
  %PredPel.i67.sroa.16.2.arrayidx157.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx157.i, i64 2
  store i16 %LoopArray.sroa.8.0.i, ptr %PredPel.i67.sroa.16.2.arrayidx157.i.sroa_idx, align 2
  %PredPel.i67.sroa.19.2.arrayidx157.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx157.i, i64 4
  store i16 %LoopArray.sroa.9.0.i, ptr %PredPel.i67.sroa.19.2.arrayidx157.i.sroa_idx, align 2
  %PredPel.i67.sroa.22.2.arrayidx157.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx157.i, i64 6
  store i16 %LoopArray.sroa.10.0.i, ptr %PredPel.i67.sroa.22.2.arrayidx157.i.sroa_idx, align 2
  %PredPel.i67.sroa.25.2.arrayidx157.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx157.i, i64 8
  store i16 %LoopArray.sroa.11.0.i, ptr %PredPel.i67.sroa.25.2.arrayidx157.i.sroa_idx, align 2
  %PredPel.i67.sroa.28.2.arrayidx157.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx157.i, i64 10
  store i16 %LoopArray.sroa.12.0.i, ptr %PredPel.i67.sroa.28.2.arrayidx157.i.sroa_idx, align 2
  %PredPel.i67.sroa.31.2.arrayidx157.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx157.i, i64 12
  store i16 %LoopArray.sroa.13.0.i, ptr %PredPel.i67.sroa.31.2.arrayidx157.i.sroa_idx, align 2
  %PredPel.i67.sroa.35.2.arrayidx157.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx157.i, i64 14
  store i16 %LoopArray.sroa.14.0.i, ptr %PredPel.i67.sroa.35.2.arrayidx157.i.sroa_idx, align 2
  %arrayidx155.1.i = getelementptr i8, ptr %arrayidx155.i, i64 8
  %257 = load ptr, ptr %arrayidx155.1.i, align 8
  %arrayidx157.1.i = getelementptr inbounds i16, ptr %257, i64 %idxprom156.i
  store i16 %LoopArray.sroa.6.1.i, ptr %arrayidx157.1.i, align 2
  %PredPel.i67.sroa.16.2.arrayidx157.1.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx157.1.i, i64 2
  store i16 %LoopArray.sroa.8.0.i, ptr %PredPel.i67.sroa.16.2.arrayidx157.1.i.sroa_idx, align 2
  %PredPel.i67.sroa.19.2.arrayidx157.1.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx157.1.i, i64 4
  store i16 %LoopArray.sroa.9.0.i, ptr %PredPel.i67.sroa.19.2.arrayidx157.1.i.sroa_idx, align 2
  %PredPel.i67.sroa.22.2.arrayidx157.1.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx157.1.i, i64 6
  store i16 %LoopArray.sroa.10.0.i, ptr %PredPel.i67.sroa.22.2.arrayidx157.1.i.sroa_idx, align 2
  %PredPel.i67.sroa.25.2.arrayidx157.1.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx157.1.i, i64 8
  store i16 %LoopArray.sroa.11.0.i, ptr %PredPel.i67.sroa.25.2.arrayidx157.1.i.sroa_idx, align 2
  %PredPel.i67.sroa.28.2.arrayidx157.1.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx157.1.i, i64 10
  store i16 %LoopArray.sroa.12.0.i, ptr %PredPel.i67.sroa.28.2.arrayidx157.1.i.sroa_idx, align 2
  %PredPel.i67.sroa.31.2.arrayidx157.1.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx157.1.i, i64 12
  store i16 %LoopArray.sroa.13.0.i, ptr %PredPel.i67.sroa.31.2.arrayidx157.1.i.sroa_idx, align 2
  %PredPel.i67.sroa.35.2.arrayidx157.1.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx157.1.i, i64 14
  store i16 %LoopArray.sroa.14.0.i, ptr %PredPel.i67.sroa.35.2.arrayidx157.1.i.sroa_idx, align 2
  %arrayidx155.2.i = getelementptr i8, ptr %arrayidx155.i, i64 16
  %258 = load ptr, ptr %arrayidx155.2.i, align 8
  %arrayidx157.2.i = getelementptr inbounds i16, ptr %258, i64 %idxprom156.i
  store i16 %LoopArray.sroa.6.1.i, ptr %arrayidx157.2.i, align 2
  %PredPel.i67.sroa.16.2.arrayidx157.2.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx157.2.i, i64 2
  store i16 %LoopArray.sroa.8.0.i, ptr %PredPel.i67.sroa.16.2.arrayidx157.2.i.sroa_idx, align 2
  %PredPel.i67.sroa.19.2.arrayidx157.2.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx157.2.i, i64 4
  store i16 %LoopArray.sroa.9.0.i, ptr %PredPel.i67.sroa.19.2.arrayidx157.2.i.sroa_idx, align 2
  %PredPel.i67.sroa.22.2.arrayidx157.2.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx157.2.i, i64 6
  store i16 %LoopArray.sroa.10.0.i, ptr %PredPel.i67.sroa.22.2.arrayidx157.2.i.sroa_idx, align 2
  %PredPel.i67.sroa.25.2.arrayidx157.2.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx157.2.i, i64 8
  store i16 %LoopArray.sroa.11.0.i, ptr %PredPel.i67.sroa.25.2.arrayidx157.2.i.sroa_idx, align 2
  %PredPel.i67.sroa.28.2.arrayidx157.2.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx157.2.i, i64 10
  store i16 %LoopArray.sroa.12.0.i, ptr %PredPel.i67.sroa.28.2.arrayidx157.2.i.sroa_idx, align 2
  %PredPel.i67.sroa.31.2.arrayidx157.2.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx157.2.i, i64 12
  store i16 %LoopArray.sroa.13.0.i, ptr %PredPel.i67.sroa.31.2.arrayidx157.2.i.sroa_idx, align 2
  %PredPel.i67.sroa.35.2.arrayidx157.2.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx157.2.i, i64 14
  store i16 %LoopArray.sroa.14.0.i, ptr %PredPel.i67.sroa.35.2.arrayidx157.2.i.sroa_idx, align 2
  %arrayidx155.3.i = getelementptr i8, ptr %arrayidx155.i, i64 24
  %259 = load ptr, ptr %arrayidx155.3.i, align 8
  %arrayidx157.3.i = getelementptr inbounds i16, ptr %259, i64 %idxprom156.i
  store i16 %LoopArray.sroa.6.1.i, ptr %arrayidx157.3.i, align 2
  %PredPel.i67.sroa.16.2.arrayidx157.3.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx157.3.i, i64 2
  store i16 %LoopArray.sroa.8.0.i, ptr %PredPel.i67.sroa.16.2.arrayidx157.3.i.sroa_idx, align 2
  %PredPel.i67.sroa.19.2.arrayidx157.3.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx157.3.i, i64 4
  store i16 %LoopArray.sroa.9.0.i, ptr %PredPel.i67.sroa.19.2.arrayidx157.3.i.sroa_idx, align 2
  %PredPel.i67.sroa.22.2.arrayidx157.3.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx157.3.i, i64 6
  store i16 %LoopArray.sroa.10.0.i, ptr %PredPel.i67.sroa.22.2.arrayidx157.3.i.sroa_idx, align 2
  %PredPel.i67.sroa.25.2.arrayidx157.3.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx157.3.i, i64 8
  store i16 %LoopArray.sroa.11.0.i, ptr %PredPel.i67.sroa.25.2.arrayidx157.3.i.sroa_idx, align 2
  %PredPel.i67.sroa.28.2.arrayidx157.3.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx157.3.i, i64 10
  store i16 %LoopArray.sroa.12.0.i, ptr %PredPel.i67.sroa.28.2.arrayidx157.3.i.sroa_idx, align 2
  %PredPel.i67.sroa.31.2.arrayidx157.3.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx157.3.i, i64 12
  store i16 %LoopArray.sroa.13.0.i, ptr %PredPel.i67.sroa.31.2.arrayidx157.3.i.sroa_idx, align 2
  %PredPel.i67.sroa.35.2.arrayidx157.3.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx157.3.i, i64 14
  store i16 %LoopArray.sroa.14.0.i, ptr %PredPel.i67.sroa.35.2.arrayidx157.3.i.sroa_idx, align 2
  %arrayidx155.4.i = getelementptr i8, ptr %arrayidx155.i, i64 32
  %260 = load ptr, ptr %arrayidx155.4.i, align 8
  %arrayidx157.4.i = getelementptr inbounds i16, ptr %260, i64 %idxprom156.i
  store i16 %LoopArray.sroa.6.1.i, ptr %arrayidx157.4.i, align 2
  %PredPel.i67.sroa.16.2.arrayidx157.4.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx157.4.i, i64 2
  store i16 %LoopArray.sroa.8.0.i, ptr %PredPel.i67.sroa.16.2.arrayidx157.4.i.sroa_idx, align 2
  %PredPel.i67.sroa.19.2.arrayidx157.4.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx157.4.i, i64 4
  store i16 %LoopArray.sroa.9.0.i, ptr %PredPel.i67.sroa.19.2.arrayidx157.4.i.sroa_idx, align 2
  %PredPel.i67.sroa.22.2.arrayidx157.4.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx157.4.i, i64 6
  store i16 %LoopArray.sroa.10.0.i, ptr %PredPel.i67.sroa.22.2.arrayidx157.4.i.sroa_idx, align 2
  %PredPel.i67.sroa.25.2.arrayidx157.4.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx157.4.i, i64 8
  store i16 %LoopArray.sroa.11.0.i, ptr %PredPel.i67.sroa.25.2.arrayidx157.4.i.sroa_idx, align 2
  %PredPel.i67.sroa.28.2.arrayidx157.4.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx157.4.i, i64 10
  store i16 %LoopArray.sroa.12.0.i, ptr %PredPel.i67.sroa.28.2.arrayidx157.4.i.sroa_idx, align 2
  %PredPel.i67.sroa.31.2.arrayidx157.4.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx157.4.i, i64 12
  store i16 %LoopArray.sroa.13.0.i, ptr %PredPel.i67.sroa.31.2.arrayidx157.4.i.sroa_idx, align 2
  %PredPel.i67.sroa.35.2.arrayidx157.4.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx157.4.i, i64 14
  store i16 %LoopArray.sroa.14.0.i, ptr %PredPel.i67.sroa.35.2.arrayidx157.4.i.sroa_idx, align 2
  %arrayidx155.5.i = getelementptr i8, ptr %arrayidx155.i, i64 40
  %261 = load ptr, ptr %arrayidx155.5.i, align 8
  %arrayidx157.5.i = getelementptr inbounds i16, ptr %261, i64 %idxprom156.i
  store i16 %LoopArray.sroa.6.1.i, ptr %arrayidx157.5.i, align 2
  %PredPel.i67.sroa.16.2.arrayidx157.5.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx157.5.i, i64 2
  store i16 %LoopArray.sroa.8.0.i, ptr %PredPel.i67.sroa.16.2.arrayidx157.5.i.sroa_idx, align 2
  %PredPel.i67.sroa.19.2.arrayidx157.5.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx157.5.i, i64 4
  store i16 %LoopArray.sroa.9.0.i, ptr %PredPel.i67.sroa.19.2.arrayidx157.5.i.sroa_idx, align 2
  %PredPel.i67.sroa.22.2.arrayidx157.5.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx157.5.i, i64 6
  store i16 %LoopArray.sroa.10.0.i, ptr %PredPel.i67.sroa.22.2.arrayidx157.5.i.sroa_idx, align 2
  %PredPel.i67.sroa.25.2.arrayidx157.5.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx157.5.i, i64 8
  store i16 %LoopArray.sroa.11.0.i, ptr %PredPel.i67.sroa.25.2.arrayidx157.5.i.sroa_idx, align 2
  %PredPel.i67.sroa.28.2.arrayidx157.5.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx157.5.i, i64 10
  store i16 %LoopArray.sroa.12.0.i, ptr %PredPel.i67.sroa.28.2.arrayidx157.5.i.sroa_idx, align 2
  %PredPel.i67.sroa.31.2.arrayidx157.5.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx157.5.i, i64 12
  store i16 %LoopArray.sroa.13.0.i, ptr %PredPel.i67.sroa.31.2.arrayidx157.5.i.sroa_idx, align 2
  %PredPel.i67.sroa.35.2.arrayidx157.5.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx157.5.i, i64 14
  store i16 %LoopArray.sroa.14.0.i, ptr %PredPel.i67.sroa.35.2.arrayidx157.5.i.sroa_idx, align 2
  %arrayidx155.6.i = getelementptr i8, ptr %arrayidx155.i, i64 48
  %262 = load ptr, ptr %arrayidx155.6.i, align 8
  %arrayidx157.6.i = getelementptr inbounds i16, ptr %262, i64 %idxprom156.i
  store i16 %LoopArray.sroa.6.1.i, ptr %arrayidx157.6.i, align 2
  %PredPel.i67.sroa.16.2.arrayidx157.6.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx157.6.i, i64 2
  store i16 %LoopArray.sroa.8.0.i, ptr %PredPel.i67.sroa.16.2.arrayidx157.6.i.sroa_idx, align 2
  %PredPel.i67.sroa.19.2.arrayidx157.6.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx157.6.i, i64 4
  store i16 %LoopArray.sroa.9.0.i, ptr %PredPel.i67.sroa.19.2.arrayidx157.6.i.sroa_idx, align 2
  %PredPel.i67.sroa.22.2.arrayidx157.6.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx157.6.i, i64 6
  store i16 %LoopArray.sroa.10.0.i, ptr %PredPel.i67.sroa.22.2.arrayidx157.6.i.sroa_idx, align 2
  %PredPel.i67.sroa.25.2.arrayidx157.6.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx157.6.i, i64 8
  store i16 %LoopArray.sroa.11.0.i, ptr %PredPel.i67.sroa.25.2.arrayidx157.6.i.sroa_idx, align 2
  %PredPel.i67.sroa.28.2.arrayidx157.6.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx157.6.i, i64 10
  store i16 %LoopArray.sroa.12.0.i, ptr %PredPel.i67.sroa.28.2.arrayidx157.6.i.sroa_idx, align 2
  %PredPel.i67.sroa.31.2.arrayidx157.6.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx157.6.i, i64 12
  store i16 %LoopArray.sroa.13.0.i, ptr %PredPel.i67.sroa.31.2.arrayidx157.6.i.sroa_idx, align 2
  %PredPel.i67.sroa.35.2.arrayidx157.6.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx157.6.i, i64 14
  store i16 %LoopArray.sroa.14.0.i, ptr %PredPel.i67.sroa.35.2.arrayidx157.6.i.sroa_idx, align 2
  %arrayidx155.7.i = getelementptr i8, ptr %arrayidx155.i, i64 56
  %263 = load ptr, ptr %arrayidx155.7.i, align 8
  %arrayidx157.7.i = getelementptr inbounds i16, ptr %263, i64 %idxprom156.i
  store i16 %LoopArray.sroa.6.1.i, ptr %arrayidx157.7.i, align 2
  %PredPel.i67.sroa.16.2.arrayidx157.7.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx157.7.i, i64 2
  store i16 %LoopArray.sroa.8.0.i, ptr %PredPel.i67.sroa.16.2.arrayidx157.7.i.sroa_idx, align 2
  %PredPel.i67.sroa.19.2.arrayidx157.7.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx157.7.i, i64 4
  store i16 %LoopArray.sroa.9.0.i, ptr %PredPel.i67.sroa.19.2.arrayidx157.7.i.sroa_idx, align 2
  %PredPel.i67.sroa.22.2.arrayidx157.7.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx157.7.i, i64 6
  store i16 %LoopArray.sroa.10.0.i, ptr %PredPel.i67.sroa.22.2.arrayidx157.7.i.sroa_idx, align 2
  %PredPel.i67.sroa.25.2.arrayidx157.7.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx157.7.i, i64 8
  store i16 %LoopArray.sroa.11.0.i, ptr %PredPel.i67.sroa.25.2.arrayidx157.7.i.sroa_idx, align 2
  %PredPel.i67.sroa.28.2.arrayidx157.7.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx157.7.i, i64 10
  store i16 %LoopArray.sroa.12.0.i, ptr %PredPel.i67.sroa.28.2.arrayidx157.7.i.sroa_idx, align 2
  %PredPel.i67.sroa.31.2.arrayidx157.7.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx157.7.i, i64 12
  store i16 %LoopArray.sroa.13.0.i, ptr %PredPel.i67.sroa.31.2.arrayidx157.7.i.sroa_idx, align 2
  %PredPel.i67.sroa.35.2.arrayidx157.7.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx157.7.i, i64 14
  store i16 %LoopArray.sroa.14.0.i, ptr %PredPel.i67.sroa.35.2.arrayidx157.7.i.sroa_idx, align 2
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pix_d.i71) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pix_c.i70) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pix_b.i69) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pix_a.i68) #6
  br label %cleanup

sw.bb9:                                           ; preds = %entry
  %p_Vid1.i165 = getelementptr inbounds i8, ptr %currMB, i64 8
  %264 = load ptr, ptr %p_Vid1.i165, align 8
  %tobool.not.i166 = icmp eq i32 %pl, 0
  %dec_picture2.i167 = getelementptr inbounds i8, ptr %2, i64 13520
  %265 = load ptr, ptr %dec_picture2.i167, align 8
  br i1 %tobool.not.i166, label %cond.false.i212, label %cond.true.i168

cond.true.i168:                                   ; preds = %sw.bb9
  %imgUV.i169 = getelementptr inbounds i8, ptr %265, i64 136
  %266 = load ptr, ptr %imgUV.i169, align 8
  %sub.i170 = add i32 %pl, -1
  %idxprom.i171 = zext i32 %sub.i170 to i64
  %arrayidx.i172 = getelementptr inbounds ptr, ptr %266, i64 %idxprom.i171
  br label %cond.end.i173

cond.false.i212:                                  ; preds = %sw.bb9
  %imgY3.i213 = getelementptr inbounds i8, ptr %265, i64 128
  br label %cond.end.i173

cond.end.i173:                                    ; preds = %cond.false.i212, %cond.true.i168
  %cond.in.i174 = phi ptr [ %arrayidx.i172, %cond.true.i168 ], [ %imgY3.i213, %cond.false.i212 ]
  %cond.i175 = load ptr, ptr %cond.in.i174, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pix_a.i161) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pix_b.i162) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pix_c.i163) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pix_d.i164) #6
  %mb_pred.i176 = getelementptr inbounds i8, ptr %2, i64 1248
  %267 = load ptr, ptr %mb_pred.i176, align 8
  %idxprom10.i = zext i32 %pl to i64
  %arrayidx11.i = getelementptr inbounds ptr, ptr %267, i64 %idxprom10.i
  %268 = load ptr, ptr %arrayidx11.i, align 8
  %mb_size12.i = getelementptr inbounds i8, ptr %264, i64 849124
  %sub14.i = add nsw i32 %ioff, -1
  call void @getNonAffNeighbour(ptr noundef nonnull %currMB, i32 noundef %sub14.i, i32 noundef %joff, ptr noundef nonnull %mb_size12.i, ptr noundef nonnull %pix_a.i161) #6
  %sub15.i = add nsw i32 %joff, -1
  call void @getNonAffNeighbour(ptr noundef nonnull %currMB, i32 noundef %ioff, i32 noundef %sub15.i, ptr noundef nonnull %mb_size12.i, ptr noundef nonnull %pix_b.i162) #6
  %add16.i = add nsw i32 %ioff, 8
  call void @getNonAffNeighbour(ptr noundef nonnull %currMB, i32 noundef %add16.i, i32 noundef %sub15.i, ptr noundef nonnull %mb_size12.i, ptr noundef nonnull %pix_c.i163) #6
  call void @getNonAffNeighbour(ptr noundef nonnull %currMB, i32 noundef %sub14.i, i32 noundef %sub15.i, ptr noundef nonnull %mb_size12.i, ptr noundef nonnull %pix_d.i164) #6
  %269 = load i32, ptr %pix_c.i163, align 4
  %tobool20.not.i177 = icmp ne i32 %269, 0
  %cmp.i178 = icmp ne i32 %ioff, 8
  %cmp22.i = icmp ne i32 %joff, 8
  %.not.i179 = or i1 %cmp.i178, %cmp22.i
  %narrow.i180 = and i1 %.not.i179, %tobool20.not.i177
  %land.ext.i181 = zext i1 %narrow.i180 to i32
  store i32 %land.ext.i181, ptr %pix_c.i163, align 4
  %active_pps.i182 = getelementptr inbounds i8, ptr %264, i64 8
  %270 = load ptr, ptr %active_pps.i182, align 8
  %constrained_intra_pred_flag.i183 = getelementptr inbounds i8, ptr %270, i64 2204
  %271 = load i32, ptr %constrained_intra_pred_flag.i183, align 4
  %tobool25.not.i = icmp eq i32 %271, 0
  %272 = load i32, ptr %pix_a.i161, align 4
  br i1 %tobool25.not.i, label %if.else.i211, label %if.then.i184

if.then.i184:                                     ; preds = %cond.end.i173
  %tobool27.not.i = icmp eq i32 %272, 0
  br i1 %tobool27.not.i, label %cond.end32.i, label %cond.true28.i

cond.true28.i:                                    ; preds = %if.then.i184
  %intra_block.i185 = getelementptr inbounds i8, ptr %2, i64 13544
  %273 = load ptr, ptr %intra_block.i185, align 8
  %mb_addr.i186 = getelementptr inbounds i8, ptr %pix_a.i161, i64 4
  %274 = load i32, ptr %mb_addr.i186, align 4
  %idxprom29.i = sext i32 %274 to i64
  %arrayidx30.i = getelementptr inbounds i8, ptr %273, i64 %idxprom29.i
  %275 = load i8, ptr %arrayidx30.i, align 1
  %conv.i187 = sext i8 %275 to i32
  br label %cond.end32.i

cond.end32.i:                                     ; preds = %cond.true28.i, %if.then.i184
  %cond33.i = phi i32 [ %conv.i187, %cond.true28.i ], [ 0, %if.then.i184 ]
  %276 = load i32, ptr %pix_b.i162, align 4
  %tobool35.not.i = icmp eq i32 %276, 0
  br i1 %tobool35.not.i, label %cond.end43.i, label %cond.true36.i

cond.true36.i:                                    ; preds = %cond.end32.i
  %intra_block37.i = getelementptr inbounds i8, ptr %2, i64 13544
  %277 = load ptr, ptr %intra_block37.i, align 8
  %mb_addr38.i = getelementptr inbounds i8, ptr %pix_b.i162, i64 4
  %278 = load i32, ptr %mb_addr38.i, align 4
  %idxprom39.i = sext i32 %278 to i64
  %arrayidx40.i = getelementptr inbounds i8, ptr %277, i64 %idxprom39.i
  %279 = load i8, ptr %arrayidx40.i, align 1
  %conv41.i = sext i8 %279 to i32
  br label %cond.end43.i

cond.end43.i:                                     ; preds = %cond.true36.i, %cond.end32.i
  %cond44.i = phi i32 [ %conv41.i, %cond.true36.i ], [ 0, %cond.end32.i ]
  %280 = load i32, ptr %pix_d.i164, align 4
  %tobool57.not.i = icmp eq i32 %280, 0
  br i1 %tobool57.not.i, label %if.end.i188, label %cond.true58.i

cond.true58.i:                                    ; preds = %cond.end43.i
  %intra_block59.i = getelementptr inbounds i8, ptr %2, i64 13544
  %281 = load ptr, ptr %intra_block59.i, align 8
  %mb_addr60.i = getelementptr inbounds i8, ptr %pix_d.i164, i64 4
  %282 = load i32, ptr %mb_addr60.i, align 4
  %idxprom61.i = sext i32 %282 to i64
  %arrayidx62.i = getelementptr inbounds i8, ptr %281, i64 %idxprom61.i
  %283 = load i8, ptr %arrayidx62.i, align 1
  %conv63.i = sext i8 %283 to i32
  br label %if.end.i188

if.else.i211:                                     ; preds = %cond.end.i173
  %284 = load i32, ptr %pix_b.i162, align 4
  %285 = load i32, ptr %pix_d.i164, align 4
  br label %if.end.i188

if.end.i188:                                      ; preds = %if.else.i211, %cond.true58.i, %cond.end43.i
  %block_available_up_left.0.i189 = phi i32 [ %285, %if.else.i211 ], [ %conv63.i, %cond.true58.i ], [ 0, %cond.end43.i ]
  %block_available_left.0.i190 = phi i32 [ %272, %if.else.i211 ], [ %cond33.i, %cond.true58.i ], [ %cond33.i, %cond.end43.i ]
  %block_available_up.0.i191 = phi i32 [ %284, %if.else.i211 ], [ %cond44.i, %cond.true58.i ], [ %cond44.i, %cond.end43.i ]
  %tobool71.not.i = icmp eq i32 %block_available_left.0.i190, 0
  br i1 %tobool71.not.i, label %if.end120.i, label %if.end120.thread.i

if.end120.i:                                      ; preds = %if.end.i188
  %current_mb_nr.i207 = getelementptr inbounds i8, ptr %2, i64 108
  %286 = load i32, ptr %current_mb_nr.i207, align 4
  %call.i208 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %286)
  %dc_pred_value_comp.i209 = getelementptr inbounds i8, ptr %264, i64 849060
  %arrayidx110.i210 = getelementptr inbounds [3 x i32], ptr %dc_pred_value_comp.i209, i64 0, i64 %idxprom10.i
  %287 = load i32, ptr %arrayidx110.i210, align 4
  %conv111.i = trunc i32 %287 to i16
  %tobool121.not.i = icmp eq i32 %block_available_up_left.0.i189, 0
  br i1 %tobool121.not.i, label %intra8x8_hor_pred.exit, label %if.then.i.i

if.end120.thread.i:                               ; preds = %if.end.i188
  %pos_y.i192 = getelementptr inbounds i8, ptr %pix_a.i161, i64 14
  %288 = load i16, ptr %pos_y.i192, align 2
  %idxprom76.i = sext i16 %288 to i64
  %arrayidx77.i193 = getelementptr inbounds ptr, ptr %cond.i175, i64 %idxprom76.i
  %pos_x78.i = getelementptr inbounds i8, ptr %pix_a.i161, i64 12
  %289 = load i16, ptr %pos_x78.i, align 4
  %incdec.ptr.i194 = getelementptr inbounds i8, ptr %arrayidx77.i193, i64 8
  %290 = load ptr, ptr %arrayidx77.i193, align 8
  %idx.ext.i195 = sext i16 %289 to i64
  %add.ptr.i196 = getelementptr inbounds i16, ptr %290, i64 %idx.ext.i195
  %291 = load i16, ptr %add.ptr.i196, align 2
  %incdec.ptr81.i = getelementptr inbounds i8, ptr %arrayidx77.i193, i64 16
  %292 = load ptr, ptr %incdec.ptr.i194, align 8
  %add.ptr83.i = getelementptr inbounds i16, ptr %292, i64 %idx.ext.i195
  %293 = load i16, ptr %add.ptr83.i, align 2
  %incdec.ptr85.i = getelementptr inbounds i8, ptr %arrayidx77.i193, i64 24
  %294 = load ptr, ptr %incdec.ptr81.i, align 8
  %add.ptr87.i = getelementptr inbounds i16, ptr %294, i64 %idx.ext.i195
  %295 = load i16, ptr %add.ptr87.i, align 2
  %incdec.ptr89.i = getelementptr inbounds i8, ptr %arrayidx77.i193, i64 32
  %296 = load ptr, ptr %incdec.ptr85.i, align 8
  %add.ptr91.i = getelementptr inbounds i16, ptr %296, i64 %idx.ext.i195
  %297 = load i16, ptr %add.ptr91.i, align 2
  %incdec.ptr93.i = getelementptr inbounds i8, ptr %arrayidx77.i193, i64 40
  %298 = load ptr, ptr %incdec.ptr89.i, align 8
  %add.ptr95.i = getelementptr inbounds i16, ptr %298, i64 %idx.ext.i195
  %299 = load i16, ptr %add.ptr95.i, align 2
  %incdec.ptr97.i = getelementptr inbounds i8, ptr %arrayidx77.i193, i64 48
  %300 = load ptr, ptr %incdec.ptr93.i, align 8
  %add.ptr99.i = getelementptr inbounds i16, ptr %300, i64 %idx.ext.i195
  %301 = load i16, ptr %add.ptr99.i, align 2
  %incdec.ptr101.i = getelementptr inbounds i8, ptr %arrayidx77.i193, i64 56
  %302 = load ptr, ptr %incdec.ptr97.i, align 8
  %add.ptr103.i = getelementptr inbounds i16, ptr %302, i64 %idx.ext.i195
  %303 = load i16, ptr %add.ptr103.i, align 2
  %304 = load ptr, ptr %incdec.ptr101.i, align 8
  %add.ptr106.i = getelementptr inbounds i16, ptr %304, i64 %idx.ext.i195
  %305 = load i16, ptr %add.ptr106.i, align 2
  %tobool121.not370.i = icmp eq i32 %block_available_up_left.0.i189, 0
  br i1 %tobool121.not370.i, label %if.else65.i270.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end120.thread.i, %if.end120.i
  %PredPel.sroa.57.0386.i = phi i16 [ %305, %if.end120.thread.i ], [ %conv111.i, %if.end120.i ]
  %PredPel.sroa.8345.0384.i = phi i16 [ %291, %if.end120.thread.i ], [ %conv111.i, %if.end120.i ]
  %PredPel.sroa.15.0382.i = phi i16 [ %293, %if.end120.thread.i ], [ %conv111.i, %if.end120.i ]
  %PredPel.sroa.22.0380.i = phi i16 [ %295, %if.end120.thread.i ], [ %conv111.i, %if.end120.i ]
  %PredPel.sroa.29.0378.i = phi i16 [ %297, %if.end120.thread.i ], [ %conv111.i, %if.end120.i ]
  %PredPel.sroa.36.0376.i = phi i16 [ %299, %if.end120.thread.i ], [ %conv111.i, %if.end120.i ]
  %PredPel.sroa.43.0374.i = phi i16 [ %301, %if.end120.thread.i ], [ %conv111.i, %if.end120.i ]
  %PredPel.sroa.50.0372.i = phi i16 [ %303, %if.end120.thread.i ], [ %conv111.i, %if.end120.i ]
  %pos_y123.i = getelementptr inbounds i8, ptr %pix_d.i164, i64 14
  %306 = load i16, ptr %pos_y123.i, align 2
  %idxprom124.i = sext i16 %306 to i64
  %arrayidx125.i197 = getelementptr inbounds ptr, ptr %cond.i175, i64 %idxprom124.i
  %307 = load ptr, ptr %arrayidx125.i197, align 8
  %pos_x126.i = getelementptr inbounds i8, ptr %pix_d.i164, i64 12
  %308 = load i16, ptr %pos_x126.i, align 4
  %idxprom127.i = sext i16 %308 to i64
  %arrayidx128.i198 = getelementptr inbounds i16, ptr %307, i64 %idxprom127.i
  %309 = load i16, ptr %arrayidx128.i198, align 2
  %tobool2.i.i = icmp ne i32 %block_available_up.0.i191, 0
  %tobool3.i.i = icmp ne i32 %block_available_left.0.i190, 0
  %or.cond.i.i = and i1 %tobool3.i.i, %tobool2.i.i
  br i1 %or.cond.i.i, label %if.end79.i.i, label %if.else.i.i

if.else.i.i:                                      ; preds = %if.then.i.i
  br i1 %tobool2.i.i, label %if.end47.thread148.i.i, label %if.else29.i.i

if.else29.i.i:                                    ; preds = %if.else.i.i
  br i1 %tobool3.i.i, label %if.end79.i.i, label %intra8x8_hor_pred.exit

if.end47.thread148.i.i:                           ; preds = %if.else.i.i
  br i1 %tobool71.not.i, label %intra8x8_hor_pred.exit, label %if.end79.i.i

if.end79.i.i:                                     ; preds = %if.end47.thread148.i.i, %if.else29.i.i, %if.then.i.i
  %conv53.pre-phi.i.i = zext i16 %309 to i32
  %conv55.pre-phi.i.i = zext i16 %PredPel.sroa.8345.0384.i to i32
  %shl56.i.i = shl nuw nsw i32 %conv55.pre-phi.i.i, 1
  %conv59.i.i = zext i16 %PredPel.sroa.15.0382.i to i32
  %add57.i.i = add nuw nsw i32 %conv59.i.i, 2
  %add60.i.i = add nuw nsw i32 %add57.i.i, %shl56.i.i
  %add61.i.i = add nuw nsw i32 %add60.i.i, %conv53.pre-phi.i.i
  %LoopArray.sroa.7155.0.in.i.i = lshr i32 %add61.i.i, 2
  %LoopArray.sroa.7155.0.i.i = trunc nuw i32 %LoopArray.sroa.7155.0.in.i.i to i16
  %shl86.i.i = shl nuw nsw i32 %conv59.i.i, 1
  %conv91.i.i = zext i16 %PredPel.sroa.22.0380.i to i32
  %add87.i.i = add nuw nsw i32 %conv91.i.i, 2
  %add92.i.i = add nuw nsw i32 %shl86.i.i, %conv55.pre-phi.i.i
  %add93.i.i = add nuw nsw i32 %add92.i.i, %add87.i.i
  %shr94.i.i = lshr i32 %add93.i.i, 2
  %conv95.i.i = trunc nuw i32 %shr94.i.i to i16
  %shl86.1.i.i = shl nuw nsw i32 %conv91.i.i, 1
  %conv91.1.i.i = zext i16 %PredPel.sroa.29.0378.i to i32
  %add92.1.i.i = add nuw nsw i32 %shl86.1.i.i, %add57.i.i
  %add93.1.i.i = add nuw nsw i32 %add92.1.i.i, %conv91.1.i.i
  %shr94.1.i.i = lshr i32 %add93.1.i.i, 2
  %conv95.1.i.i = trunc nuw i32 %shr94.1.i.i to i16
  %shl86.2.i.i = shl nuw nsw i32 %conv91.1.i.i, 1
  %conv91.2.i.i = zext i16 %PredPel.sroa.36.0376.i to i32
  %add92.2.i.i = add nuw nsw i32 %shl86.2.i.i, %add87.i.i
  %add93.2.i.i = add nuw nsw i32 %add92.2.i.i, %conv91.2.i.i
  %shr94.2.i.i = lshr i32 %add93.2.i.i, 2
  %conv95.2.i.i = trunc nuw i32 %shr94.2.i.i to i16
  %shl86.3.i.i = shl nuw nsw i32 %conv91.2.i.i, 1
  %conv91.3.i.i = zext i16 %PredPel.sroa.43.0374.i to i32
  %add87.3.i.i = add nuw nsw i32 %conv91.3.i.i, 2
  %add92.3.i.i = add nuw nsw i32 %add87.3.i.i, %conv91.1.i.i
  %add93.3.i.i = add nuw nsw i32 %add92.3.i.i, %shl86.3.i.i
  %shr94.3.i.i = lshr i32 %add93.3.i.i, 2
  %conv95.3.i.i = trunc nuw i32 %shr94.3.i.i to i16
  %shl86.4.i.i = shl nuw nsw i32 %conv91.3.i.i, 1
  %conv91.4.i.i = zext i16 %PredPel.sroa.50.0372.i to i32
  %add87.4.i.i = add nuw nsw i32 %conv91.4.i.i, 2
  %add92.4.i.i = add nuw nsw i32 %add87.4.i.i, %conv91.2.i.i
  %add93.4.i.i = add nuw nsw i32 %add92.4.i.i, %shl86.4.i.i
  %shr94.4.i.i = lshr i32 %add93.4.i.i, 2
  %conv95.4.i.i = trunc nuw i32 %shr94.4.i.i to i16
  %shl86.5.i.i = shl nuw nsw i32 %conv91.4.i.i, 1
  %conv91.5.i.i = zext i16 %PredPel.sroa.57.0386.i to i32
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
  br label %intra8x8_hor_pred.exit

if.else65.i270.i:                                 ; preds = %if.end120.thread.i
  %conv67.i271.i = zext i16 %291 to i32
  %add71.i272.i = mul nuw nsw i32 %conv67.i271.i, 3
  %conv73.i273.i = zext i16 %293 to i32
  %add74.i274.i = add nuw nsw i32 %conv73.i273.i, 2
  %add75.i275.i = add nuw nsw i32 %add74.i274.i, %add71.i272.i
  %LoopArray.sroa.7155.0.in.i282.i = lshr i32 %add75.i275.i, 2
  %LoopArray.sroa.7155.0.i283.i = trunc nuw i32 %LoopArray.sroa.7155.0.in.i282.i to i16
  %shl86.i284.i = shl nuw nsw i32 %conv73.i273.i, 1
  %conv91.i285.i = zext i16 %295 to i32
  %add87.i286.i = add nuw nsw i32 %conv91.i285.i, 2
  %add92.i287.i = add nuw nsw i32 %shl86.i284.i, %conv67.i271.i
  %add93.i288.i = add nuw nsw i32 %add92.i287.i, %add87.i286.i
  %shr94.i289.i = lshr i32 %add93.i288.i, 2
  %conv95.i290.i = trunc nuw i32 %shr94.i289.i to i16
  %shl86.1.i291.i = shl nuw nsw i32 %conv91.i285.i, 1
  %conv91.1.i292.i = zext i16 %297 to i32
  %add92.1.i293.i = add nuw nsw i32 %shl86.1.i291.i, %add74.i274.i
  %add93.1.i294.i = add nuw nsw i32 %add92.1.i293.i, %conv91.1.i292.i
  %shr94.1.i295.i = lshr i32 %add93.1.i294.i, 2
  %conv95.1.i296.i = trunc nuw i32 %shr94.1.i295.i to i16
  %shl86.2.i297.i = shl nuw nsw i32 %conv91.1.i292.i, 1
  %conv91.2.i298.i = zext i16 %299 to i32
  %add92.2.i300.i = add nuw nsw i32 %shl86.2.i297.i, %add87.i286.i
  %add93.2.i301.i = add nuw nsw i32 %add92.2.i300.i, %conv91.2.i298.i
  %shr94.2.i302.i = lshr i32 %add93.2.i301.i, 2
  %conv95.2.i303.i = trunc nuw i32 %shr94.2.i302.i to i16
  %shl86.3.i304.i = shl nuw nsw i32 %conv91.2.i298.i, 1
  %conv91.3.i305.i = zext i16 %301 to i32
  %add87.3.i306.i = add nuw nsw i32 %conv91.3.i305.i, 2
  %add92.3.i307.i = add nuw nsw i32 %shl86.3.i304.i, %conv91.1.i292.i
  %add93.3.i308.i = add nuw nsw i32 %add92.3.i307.i, %add87.3.i306.i
  %shr94.3.i309.i = lshr i32 %add93.3.i308.i, 2
  %conv95.3.i310.i = trunc nuw i32 %shr94.3.i309.i to i16
  %shl86.4.i311.i = shl nuw nsw i32 %conv91.3.i305.i, 1
  %conv91.4.i312.i = zext i16 %303 to i32
  %add87.4.i313.i = add nuw nsw i32 %conv91.4.i312.i, 2
  %add92.4.i314.i = add nuw nsw i32 %add87.4.i313.i, %conv91.2.i298.i
  %add93.4.i315.i = add nuw nsw i32 %add92.4.i314.i, %shl86.4.i311.i
  %shr94.4.i316.i = lshr i32 %add93.4.i315.i, 2
  %conv95.4.i317.i = trunc nuw i32 %shr94.4.i316.i to i16
  %shl86.5.i318.i = shl nuw nsw i32 %conv91.4.i312.i, 1
  %conv91.5.i319.i = zext i16 %305 to i32
  %add92.5.i321.i = add nuw nsw i32 %shl86.5.i318.i, %add87.3.i306.i
  %add93.5.i322.i = add nuw nsw i32 %add92.5.i321.i, %conv91.5.i319.i
  %shr94.5.i323.i = lshr i32 %add93.5.i322.i, 2
  %conv95.5.i324.i = trunc nuw i32 %shr94.5.i323.i to i16
  %shl102.i325.i = shl nuw nsw i32 %conv91.5.i319.i, 1
  %add106.i327.i = add nuw nsw i32 %add87.4.i313.i, %conv91.5.i319.i
  %add107.i328.i = add nuw nsw i32 %add106.i327.i, %shl102.i325.i
  %shr108.i329.i = lshr i32 %add107.i328.i, 2
  %conv109.i330.i = trunc nuw i32 %shr108.i329.i to i16
  br label %intra8x8_hor_pred.exit

intra8x8_hor_pred.exit:                           ; preds = %if.end120.i, %if.else29.i.i, %if.end47.thread148.i.i, %if.end79.i.i, %if.else65.i270.i
  %PredPel.sroa.50.1.i = phi i16 [ %conv95.5.i.i, %if.end79.i.i ], [ %PredPel.sroa.50.0372.i, %if.end47.thread148.i.i ], [ %PredPel.sroa.50.0372.i, %if.else29.i.i ], [ %conv95.5.i324.i, %if.else65.i270.i ], [ %conv111.i, %if.end120.i ]
  %PredPel.sroa.43.1.i = phi i16 [ %conv95.4.i.i, %if.end79.i.i ], [ %PredPel.sroa.43.0374.i, %if.end47.thread148.i.i ], [ %PredPel.sroa.43.0374.i, %if.else29.i.i ], [ %conv95.4.i317.i, %if.else65.i270.i ], [ %conv111.i, %if.end120.i ]
  %PredPel.sroa.36.1.i = phi i16 [ %conv95.3.i.i, %if.end79.i.i ], [ %PredPel.sroa.36.0376.i, %if.end47.thread148.i.i ], [ %PredPel.sroa.36.0376.i, %if.else29.i.i ], [ %conv95.3.i310.i, %if.else65.i270.i ], [ %conv111.i, %if.end120.i ]
  %PredPel.sroa.29.1.i = phi i16 [ %conv95.2.i.i, %if.end79.i.i ], [ %PredPel.sroa.29.0378.i, %if.end47.thread148.i.i ], [ %PredPel.sroa.29.0378.i, %if.else29.i.i ], [ %conv95.2.i303.i, %if.else65.i270.i ], [ %conv111.i, %if.end120.i ]
  %PredPel.sroa.22.1.i = phi i16 [ %conv95.1.i.i, %if.end79.i.i ], [ %PredPel.sroa.22.0380.i, %if.end47.thread148.i.i ], [ %PredPel.sroa.22.0380.i, %if.else29.i.i ], [ %conv95.1.i296.i, %if.else65.i270.i ], [ %conv111.i, %if.end120.i ]
  %PredPel.sroa.15.1.i = phi i16 [ %conv95.i.i, %if.end79.i.i ], [ %PredPel.sroa.15.0382.i, %if.end47.thread148.i.i ], [ %PredPel.sroa.15.0382.i, %if.else29.i.i ], [ %conv95.i290.i, %if.else65.i270.i ], [ %conv111.i, %if.end120.i ]
  %PredPel.sroa.8345.1.i = phi i16 [ %LoopArray.sroa.7155.0.i.i, %if.end79.i.i ], [ %PredPel.sroa.8345.0384.i, %if.end47.thread148.i.i ], [ %PredPel.sroa.8345.0384.i, %if.else29.i.i ], [ %LoopArray.sroa.7155.0.i283.i, %if.else65.i270.i ], [ %conv111.i, %if.end120.i ]
  %PredPel.sroa.57.1.i = phi i16 [ %conv109.i.i, %if.end79.i.i ], [ %PredPel.sroa.57.0386.i, %if.end47.thread148.i.i ], [ %PredPel.sroa.57.0386.i, %if.else29.i.i ], [ %conv109.i330.i, %if.else65.i270.i ], [ %conv111.i, %if.end120.i ]
  %310 = sext i32 %ioff to i64
  %311 = sext i32 %joff to i64
  %arrayidx145.i = getelementptr inbounds ptr, ptr %268, i64 %311
  %312 = load ptr, ptr %arrayidx145.i, align 8
  %313 = getelementptr i16, ptr %312, i64 %310
  %arrayidx147.i = getelementptr i8, ptr %313, i64 14
  store i16 %PredPel.sroa.8345.1.i, ptr %arrayidx147.i, align 2
  %314 = load ptr, ptr %arrayidx145.i, align 8
  %315 = getelementptr i16, ptr %314, i64 %310
  %arrayidx151.i = getelementptr i8, ptr %315, i64 12
  store i16 %PredPel.sroa.8345.1.i, ptr %arrayidx151.i, align 2
  %316 = load ptr, ptr %arrayidx145.i, align 8
  %317 = getelementptr i16, ptr %316, i64 %310
  %arrayidx155.i199 = getelementptr i8, ptr %317, i64 10
  store i16 %PredPel.sroa.8345.1.i, ptr %arrayidx155.i199, align 2
  %318 = load ptr, ptr %arrayidx145.i, align 8
  %319 = getelementptr i16, ptr %318, i64 %310
  %arrayidx159.i = getelementptr i8, ptr %319, i64 8
  store i16 %PredPel.sroa.8345.1.i, ptr %arrayidx159.i, align 2
  %320 = load ptr, ptr %arrayidx145.i, align 8
  %321 = getelementptr i16, ptr %320, i64 %310
  %arrayidx163.i = getelementptr i8, ptr %321, i64 6
  store i16 %PredPel.sroa.8345.1.i, ptr %arrayidx163.i, align 2
  %322 = load ptr, ptr %arrayidx145.i, align 8
  %323 = getelementptr i16, ptr %322, i64 %310
  %arrayidx167.i = getelementptr i8, ptr %323, i64 4
  store i16 %PredPel.sroa.8345.1.i, ptr %arrayidx167.i, align 2
  %324 = load ptr, ptr %arrayidx145.i, align 8
  %325 = getelementptr i16, ptr %324, i64 %310
  %arrayidx171.i = getelementptr i8, ptr %325, i64 2
  store i16 %PredPel.sroa.8345.1.i, ptr %arrayidx171.i, align 2
  %326 = load ptr, ptr %arrayidx145.i, align 8
  %arrayidx175.i = getelementptr inbounds i16, ptr %326, i64 %310
  store i16 %PredPel.sroa.8345.1.i, ptr %arrayidx175.i, align 2
  %arrayidx145.1.i = getelementptr i8, ptr %arrayidx145.i, i64 8
  %327 = load ptr, ptr %arrayidx145.1.i, align 8
  %328 = getelementptr i16, ptr %327, i64 %310
  %arrayidx147.1.i = getelementptr i8, ptr %328, i64 14
  store i16 %PredPel.sroa.15.1.i, ptr %arrayidx147.1.i, align 2
  %329 = load ptr, ptr %arrayidx145.1.i, align 8
  %330 = getelementptr i16, ptr %329, i64 %310
  %arrayidx151.1.i = getelementptr i8, ptr %330, i64 12
  store i16 %PredPel.sroa.15.1.i, ptr %arrayidx151.1.i, align 2
  %331 = load ptr, ptr %arrayidx145.1.i, align 8
  %332 = getelementptr i16, ptr %331, i64 %310
  %arrayidx155.1.i200 = getelementptr i8, ptr %332, i64 10
  store i16 %PredPel.sroa.15.1.i, ptr %arrayidx155.1.i200, align 2
  %333 = load ptr, ptr %arrayidx145.1.i, align 8
  %334 = getelementptr i16, ptr %333, i64 %310
  %arrayidx159.1.i = getelementptr i8, ptr %334, i64 8
  store i16 %PredPel.sroa.15.1.i, ptr %arrayidx159.1.i, align 2
  %335 = load ptr, ptr %arrayidx145.1.i, align 8
  %336 = getelementptr i16, ptr %335, i64 %310
  %arrayidx163.1.i = getelementptr i8, ptr %336, i64 6
  store i16 %PredPel.sroa.15.1.i, ptr %arrayidx163.1.i, align 2
  %337 = load ptr, ptr %arrayidx145.1.i, align 8
  %338 = getelementptr i16, ptr %337, i64 %310
  %arrayidx167.1.i = getelementptr i8, ptr %338, i64 4
  store i16 %PredPel.sroa.15.1.i, ptr %arrayidx167.1.i, align 2
  %339 = load ptr, ptr %arrayidx145.1.i, align 8
  %340 = getelementptr i16, ptr %339, i64 %310
  %arrayidx171.1.i = getelementptr i8, ptr %340, i64 2
  store i16 %PredPel.sroa.15.1.i, ptr %arrayidx171.1.i, align 2
  %341 = load ptr, ptr %arrayidx145.1.i, align 8
  %arrayidx175.1.i = getelementptr inbounds i16, ptr %341, i64 %310
  store i16 %PredPel.sroa.15.1.i, ptr %arrayidx175.1.i, align 2
  %arrayidx145.2.i = getelementptr i8, ptr %arrayidx145.i, i64 16
  %342 = load ptr, ptr %arrayidx145.2.i, align 8
  %343 = getelementptr i16, ptr %342, i64 %310
  %arrayidx147.2.i = getelementptr i8, ptr %343, i64 14
  store i16 %PredPel.sroa.22.1.i, ptr %arrayidx147.2.i, align 2
  %344 = load ptr, ptr %arrayidx145.2.i, align 8
  %345 = getelementptr i16, ptr %344, i64 %310
  %arrayidx151.2.i = getelementptr i8, ptr %345, i64 12
  store i16 %PredPel.sroa.22.1.i, ptr %arrayidx151.2.i, align 2
  %346 = load ptr, ptr %arrayidx145.2.i, align 8
  %347 = getelementptr i16, ptr %346, i64 %310
  %arrayidx155.2.i201 = getelementptr i8, ptr %347, i64 10
  store i16 %PredPel.sroa.22.1.i, ptr %arrayidx155.2.i201, align 2
  %348 = load ptr, ptr %arrayidx145.2.i, align 8
  %349 = getelementptr i16, ptr %348, i64 %310
  %arrayidx159.2.i = getelementptr i8, ptr %349, i64 8
  store i16 %PredPel.sroa.22.1.i, ptr %arrayidx159.2.i, align 2
  %350 = load ptr, ptr %arrayidx145.2.i, align 8
  %351 = getelementptr i16, ptr %350, i64 %310
  %arrayidx163.2.i = getelementptr i8, ptr %351, i64 6
  store i16 %PredPel.sroa.22.1.i, ptr %arrayidx163.2.i, align 2
  %352 = load ptr, ptr %arrayidx145.2.i, align 8
  %353 = getelementptr i16, ptr %352, i64 %310
  %arrayidx167.2.i = getelementptr i8, ptr %353, i64 4
  store i16 %PredPel.sroa.22.1.i, ptr %arrayidx167.2.i, align 2
  %354 = load ptr, ptr %arrayidx145.2.i, align 8
  %355 = getelementptr i16, ptr %354, i64 %310
  %arrayidx171.2.i = getelementptr i8, ptr %355, i64 2
  store i16 %PredPel.sroa.22.1.i, ptr %arrayidx171.2.i, align 2
  %356 = load ptr, ptr %arrayidx145.2.i, align 8
  %arrayidx175.2.i = getelementptr inbounds i16, ptr %356, i64 %310
  store i16 %PredPel.sroa.22.1.i, ptr %arrayidx175.2.i, align 2
  %arrayidx145.3.i = getelementptr i8, ptr %arrayidx145.i, i64 24
  %357 = load ptr, ptr %arrayidx145.3.i, align 8
  %358 = getelementptr i16, ptr %357, i64 %310
  %arrayidx147.3.i = getelementptr i8, ptr %358, i64 14
  store i16 %PredPel.sroa.29.1.i, ptr %arrayidx147.3.i, align 2
  %359 = load ptr, ptr %arrayidx145.3.i, align 8
  %360 = getelementptr i16, ptr %359, i64 %310
  %arrayidx151.3.i = getelementptr i8, ptr %360, i64 12
  store i16 %PredPel.sroa.29.1.i, ptr %arrayidx151.3.i, align 2
  %361 = load ptr, ptr %arrayidx145.3.i, align 8
  %362 = getelementptr i16, ptr %361, i64 %310
  %arrayidx155.3.i202 = getelementptr i8, ptr %362, i64 10
  store i16 %PredPel.sroa.29.1.i, ptr %arrayidx155.3.i202, align 2
  %363 = load ptr, ptr %arrayidx145.3.i, align 8
  %364 = getelementptr i16, ptr %363, i64 %310
  %arrayidx159.3.i = getelementptr i8, ptr %364, i64 8
  store i16 %PredPel.sroa.29.1.i, ptr %arrayidx159.3.i, align 2
  %365 = load ptr, ptr %arrayidx145.3.i, align 8
  %366 = getelementptr i16, ptr %365, i64 %310
  %arrayidx163.3.i = getelementptr i8, ptr %366, i64 6
  store i16 %PredPel.sroa.29.1.i, ptr %arrayidx163.3.i, align 2
  %367 = load ptr, ptr %arrayidx145.3.i, align 8
  %368 = getelementptr i16, ptr %367, i64 %310
  %arrayidx167.3.i = getelementptr i8, ptr %368, i64 4
  store i16 %PredPel.sroa.29.1.i, ptr %arrayidx167.3.i, align 2
  %369 = load ptr, ptr %arrayidx145.3.i, align 8
  %370 = getelementptr i16, ptr %369, i64 %310
  %arrayidx171.3.i = getelementptr i8, ptr %370, i64 2
  store i16 %PredPel.sroa.29.1.i, ptr %arrayidx171.3.i, align 2
  %371 = load ptr, ptr %arrayidx145.3.i, align 8
  %arrayidx175.3.i = getelementptr inbounds i16, ptr %371, i64 %310
  store i16 %PredPel.sroa.29.1.i, ptr %arrayidx175.3.i, align 2
  %arrayidx145.4.i = getelementptr i8, ptr %arrayidx145.i, i64 32
  %372 = load ptr, ptr %arrayidx145.4.i, align 8
  %373 = getelementptr i16, ptr %372, i64 %310
  %arrayidx147.4.i = getelementptr i8, ptr %373, i64 14
  store i16 %PredPel.sroa.36.1.i, ptr %arrayidx147.4.i, align 2
  %374 = load ptr, ptr %arrayidx145.4.i, align 8
  %375 = getelementptr i16, ptr %374, i64 %310
  %arrayidx151.4.i = getelementptr i8, ptr %375, i64 12
  store i16 %PredPel.sroa.36.1.i, ptr %arrayidx151.4.i, align 2
  %376 = load ptr, ptr %arrayidx145.4.i, align 8
  %377 = getelementptr i16, ptr %376, i64 %310
  %arrayidx155.4.i203 = getelementptr i8, ptr %377, i64 10
  store i16 %PredPel.sroa.36.1.i, ptr %arrayidx155.4.i203, align 2
  %378 = load ptr, ptr %arrayidx145.4.i, align 8
  %379 = getelementptr i16, ptr %378, i64 %310
  %arrayidx159.4.i = getelementptr i8, ptr %379, i64 8
  store i16 %PredPel.sroa.36.1.i, ptr %arrayidx159.4.i, align 2
  %380 = load ptr, ptr %arrayidx145.4.i, align 8
  %381 = getelementptr i16, ptr %380, i64 %310
  %arrayidx163.4.i = getelementptr i8, ptr %381, i64 6
  store i16 %PredPel.sroa.36.1.i, ptr %arrayidx163.4.i, align 2
  %382 = load ptr, ptr %arrayidx145.4.i, align 8
  %383 = getelementptr i16, ptr %382, i64 %310
  %arrayidx167.4.i = getelementptr i8, ptr %383, i64 4
  store i16 %PredPel.sroa.36.1.i, ptr %arrayidx167.4.i, align 2
  %384 = load ptr, ptr %arrayidx145.4.i, align 8
  %385 = getelementptr i16, ptr %384, i64 %310
  %arrayidx171.4.i = getelementptr i8, ptr %385, i64 2
  store i16 %PredPel.sroa.36.1.i, ptr %arrayidx171.4.i, align 2
  %386 = load ptr, ptr %arrayidx145.4.i, align 8
  %arrayidx175.4.i = getelementptr inbounds i16, ptr %386, i64 %310
  store i16 %PredPel.sroa.36.1.i, ptr %arrayidx175.4.i, align 2
  %arrayidx145.5.i = getelementptr i8, ptr %arrayidx145.i, i64 40
  %387 = load ptr, ptr %arrayidx145.5.i, align 8
  %388 = getelementptr i16, ptr %387, i64 %310
  %arrayidx147.5.i = getelementptr i8, ptr %388, i64 14
  store i16 %PredPel.sroa.43.1.i, ptr %arrayidx147.5.i, align 2
  %389 = load ptr, ptr %arrayidx145.5.i, align 8
  %390 = getelementptr i16, ptr %389, i64 %310
  %arrayidx151.5.i = getelementptr i8, ptr %390, i64 12
  store i16 %PredPel.sroa.43.1.i, ptr %arrayidx151.5.i, align 2
  %391 = load ptr, ptr %arrayidx145.5.i, align 8
  %392 = getelementptr i16, ptr %391, i64 %310
  %arrayidx155.5.i204 = getelementptr i8, ptr %392, i64 10
  store i16 %PredPel.sroa.43.1.i, ptr %arrayidx155.5.i204, align 2
  %393 = load ptr, ptr %arrayidx145.5.i, align 8
  %394 = getelementptr i16, ptr %393, i64 %310
  %arrayidx159.5.i = getelementptr i8, ptr %394, i64 8
  store i16 %PredPel.sroa.43.1.i, ptr %arrayidx159.5.i, align 2
  %395 = load ptr, ptr %arrayidx145.5.i, align 8
  %396 = getelementptr i16, ptr %395, i64 %310
  %arrayidx163.5.i = getelementptr i8, ptr %396, i64 6
  store i16 %PredPel.sroa.43.1.i, ptr %arrayidx163.5.i, align 2
  %397 = load ptr, ptr %arrayidx145.5.i, align 8
  %398 = getelementptr i16, ptr %397, i64 %310
  %arrayidx167.5.i = getelementptr i8, ptr %398, i64 4
  store i16 %PredPel.sroa.43.1.i, ptr %arrayidx167.5.i, align 2
  %399 = load ptr, ptr %arrayidx145.5.i, align 8
  %400 = getelementptr i16, ptr %399, i64 %310
  %arrayidx171.5.i = getelementptr i8, ptr %400, i64 2
  store i16 %PredPel.sroa.43.1.i, ptr %arrayidx171.5.i, align 2
  %401 = load ptr, ptr %arrayidx145.5.i, align 8
  %arrayidx175.5.i = getelementptr inbounds i16, ptr %401, i64 %310
  store i16 %PredPel.sroa.43.1.i, ptr %arrayidx175.5.i, align 2
  %arrayidx145.6.i = getelementptr i8, ptr %arrayidx145.i, i64 48
  %402 = load ptr, ptr %arrayidx145.6.i, align 8
  %403 = getelementptr i16, ptr %402, i64 %310
  %arrayidx147.6.i = getelementptr i8, ptr %403, i64 14
  store i16 %PredPel.sroa.50.1.i, ptr %arrayidx147.6.i, align 2
  %404 = load ptr, ptr %arrayidx145.6.i, align 8
  %405 = getelementptr i16, ptr %404, i64 %310
  %arrayidx151.6.i = getelementptr i8, ptr %405, i64 12
  store i16 %PredPel.sroa.50.1.i, ptr %arrayidx151.6.i, align 2
  %406 = load ptr, ptr %arrayidx145.6.i, align 8
  %407 = getelementptr i16, ptr %406, i64 %310
  %arrayidx155.6.i205 = getelementptr i8, ptr %407, i64 10
  store i16 %PredPel.sroa.50.1.i, ptr %arrayidx155.6.i205, align 2
  %408 = load ptr, ptr %arrayidx145.6.i, align 8
  %409 = getelementptr i16, ptr %408, i64 %310
  %arrayidx159.6.i = getelementptr i8, ptr %409, i64 8
  store i16 %PredPel.sroa.50.1.i, ptr %arrayidx159.6.i, align 2
  %410 = load ptr, ptr %arrayidx145.6.i, align 8
  %411 = getelementptr i16, ptr %410, i64 %310
  %arrayidx163.6.i = getelementptr i8, ptr %411, i64 6
  store i16 %PredPel.sroa.50.1.i, ptr %arrayidx163.6.i, align 2
  %412 = load ptr, ptr %arrayidx145.6.i, align 8
  %413 = getelementptr i16, ptr %412, i64 %310
  %arrayidx167.6.i = getelementptr i8, ptr %413, i64 4
  store i16 %PredPel.sroa.50.1.i, ptr %arrayidx167.6.i, align 2
  %414 = load ptr, ptr %arrayidx145.6.i, align 8
  %415 = getelementptr i16, ptr %414, i64 %310
  %arrayidx171.6.i = getelementptr i8, ptr %415, i64 2
  store i16 %PredPel.sroa.50.1.i, ptr %arrayidx171.6.i, align 2
  %416 = load ptr, ptr %arrayidx145.6.i, align 8
  %arrayidx175.6.i = getelementptr inbounds i16, ptr %416, i64 %310
  store i16 %PredPel.sroa.50.1.i, ptr %arrayidx175.6.i, align 2
  %arrayidx145.7.i = getelementptr i8, ptr %arrayidx145.i, i64 56
  %417 = load ptr, ptr %arrayidx145.7.i, align 8
  %418 = getelementptr i16, ptr %417, i64 %310
  %arrayidx147.7.i = getelementptr i8, ptr %418, i64 14
  store i16 %PredPel.sroa.57.1.i, ptr %arrayidx147.7.i, align 2
  %419 = load ptr, ptr %arrayidx145.7.i, align 8
  %420 = getelementptr i16, ptr %419, i64 %310
  %arrayidx151.7.i = getelementptr i8, ptr %420, i64 12
  store i16 %PredPel.sroa.57.1.i, ptr %arrayidx151.7.i, align 2
  %421 = load ptr, ptr %arrayidx145.7.i, align 8
  %422 = getelementptr i16, ptr %421, i64 %310
  %arrayidx155.7.i206 = getelementptr i8, ptr %422, i64 10
  store i16 %PredPel.sroa.57.1.i, ptr %arrayidx155.7.i206, align 2
  %423 = load ptr, ptr %arrayidx145.7.i, align 8
  %424 = getelementptr i16, ptr %423, i64 %310
  %arrayidx159.7.i = getelementptr i8, ptr %424, i64 8
  store i16 %PredPel.sroa.57.1.i, ptr %arrayidx159.7.i, align 2
  %425 = load ptr, ptr %arrayidx145.7.i, align 8
  %426 = getelementptr i16, ptr %425, i64 %310
  %arrayidx163.7.i = getelementptr i8, ptr %426, i64 6
  store i16 %PredPel.sroa.57.1.i, ptr %arrayidx163.7.i, align 2
  %427 = load ptr, ptr %arrayidx145.7.i, align 8
  %428 = getelementptr i16, ptr %427, i64 %310
  %arrayidx167.7.i = getelementptr i8, ptr %428, i64 4
  store i16 %PredPel.sroa.57.1.i, ptr %arrayidx167.7.i, align 2
  %429 = load ptr, ptr %arrayidx145.7.i, align 8
  %430 = getelementptr i16, ptr %429, i64 %310
  %arrayidx171.7.i = getelementptr i8, ptr %430, i64 2
  store i16 %PredPel.sroa.57.1.i, ptr %arrayidx171.7.i, align 2
  %431 = load ptr, ptr %arrayidx145.7.i, align 8
  %arrayidx175.7.i = getelementptr inbounds i16, ptr %431, i64 %310
  store i16 %PredPel.sroa.57.1.i, ptr %arrayidx175.7.i, align 2
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pix_d.i164) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pix_c.i163) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pix_b.i162) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pix_a.i161) #6
  br label %cleanup

sw.bb11:                                          ; preds = %entry
  %p_Vid1.i219 = getelementptr inbounds i8, ptr %currMB, i64 8
  %432 = load ptr, ptr %p_Vid1.i219, align 8
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %PredPel.i214) #6
  %tobool.not.i220 = icmp eq i32 %pl, 0
  %dec_picture2.i221 = getelementptr inbounds i8, ptr %2, i64 13520
  %433 = load ptr, ptr %dec_picture2.i221, align 8
  br i1 %tobool.not.i220, label %cond.false.i357, label %cond.true.i222

cond.true.i222:                                   ; preds = %sw.bb11
  %imgUV.i223 = getelementptr inbounds i8, ptr %433, i64 136
  %434 = load ptr, ptr %imgUV.i223, align 8
  %sub.i224 = add i32 %pl, -1
  %idxprom.i225 = zext i32 %sub.i224 to i64
  %arrayidx.i226 = getelementptr inbounds ptr, ptr %434, i64 %idxprom.i225
  br label %cond.end.i227

cond.false.i357:                                  ; preds = %sw.bb11
  %imgY3.i358 = getelementptr inbounds i8, ptr %433, i64 128
  br label %cond.end.i227

cond.end.i227:                                    ; preds = %cond.false.i357, %cond.true.i222
  %cond.in.i228 = phi ptr [ %arrayidx.i226, %cond.true.i222 ], [ %imgY3.i358, %cond.false.i357 ]
  %cond.i229 = load ptr, ptr %cond.in.i228, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pix_a.i215) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pix_b.i216) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pix_c.i217) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pix_d.i218) #6
  %mb_pred.i230 = getelementptr inbounds i8, ptr %2, i64 1248
  %435 = load ptr, ptr %mb_pred.i230, align 8
  %idxprom4.i231 = zext i32 %pl to i64
  %arrayidx5.i232 = getelementptr inbounds ptr, ptr %435, i64 %idxprom4.i231
  %436 = load ptr, ptr %arrayidx5.i232, align 8
  %mb_size6.i233 = getelementptr inbounds i8, ptr %432, i64 849124
  %sub8.i234 = add nsw i32 %ioff, -1
  call void @getNonAffNeighbour(ptr noundef nonnull %currMB, i32 noundef %sub8.i234, i32 noundef %joff, ptr noundef nonnull %mb_size6.i233, ptr noundef nonnull %pix_a.i215) #6
  %sub9.i235 = add nsw i32 %joff, -1
  call void @getNonAffNeighbour(ptr noundef nonnull %currMB, i32 noundef %ioff, i32 noundef %sub9.i235, ptr noundef nonnull %mb_size6.i233, ptr noundef nonnull %pix_b.i216) #6
  %add.i236 = add nsw i32 %ioff, 8
  call void @getNonAffNeighbour(ptr noundef nonnull %currMB, i32 noundef %add.i236, i32 noundef %sub9.i235, ptr noundef nonnull %mb_size6.i233, ptr noundef nonnull %pix_c.i217) #6
  call void @getNonAffNeighbour(ptr noundef nonnull %currMB, i32 noundef %sub8.i234, i32 noundef %sub9.i235, ptr noundef nonnull %mb_size6.i233, ptr noundef nonnull %pix_d.i218) #6
  %437 = load i32, ptr %pix_c.i217, align 4
  %tobool13.not.i237 = icmp ne i32 %437, 0
  %cmp.i238 = icmp ne i32 %ioff, 8
  %cmp15.i239 = icmp ne i32 %joff, 8
  %.not.i240 = or i1 %cmp.i238, %cmp15.i239
  %narrow.i241 = and i1 %.not.i240, %tobool13.not.i237
  %land.ext.i242 = zext i1 %narrow.i241 to i32
  store i32 %land.ext.i242, ptr %pix_c.i217, align 4
  %active_pps.i243 = getelementptr inbounds i8, ptr %432, i64 8
  %438 = load ptr, ptr %active_pps.i243, align 8
  %constrained_intra_pred_flag.i244 = getelementptr inbounds i8, ptr %438, i64 2204
  %439 = load i32, ptr %constrained_intra_pred_flag.i244, align 4
  %tobool18.not.i245 = icmp eq i32 %439, 0
  %440 = load i32, ptr %pix_a.i215, align 4
  br i1 %tobool18.not.i245, label %if.else.i356, label %if.then.i246

if.then.i246:                                     ; preds = %cond.end.i227
  %tobool20.not.i247 = icmp eq i32 %440, 0
  br i1 %tobool20.not.i247, label %cond.end25.i254, label %cond.true21.i248

cond.true21.i248:                                 ; preds = %if.then.i246
  %intra_block.i249 = getelementptr inbounds i8, ptr %2, i64 13544
  %441 = load ptr, ptr %intra_block.i249, align 8
  %mb_addr.i250 = getelementptr inbounds i8, ptr %pix_a.i215, i64 4
  %442 = load i32, ptr %mb_addr.i250, align 4
  %idxprom22.i251 = sext i32 %442 to i64
  %arrayidx23.i252 = getelementptr inbounds i8, ptr %441, i64 %idxprom22.i251
  %443 = load i8, ptr %arrayidx23.i252, align 1
  %conv.i253 = sext i8 %443 to i32
  br label %cond.end25.i254

cond.end25.i254:                                  ; preds = %cond.true21.i248, %if.then.i246
  %cond26.i255 = phi i32 [ %conv.i253, %cond.true21.i248 ], [ 0, %if.then.i246 ]
  %444 = load i32, ptr %pix_b.i216, align 4
  %tobool28.not.i256 = icmp eq i32 %444, 0
  br i1 %tobool28.not.i256, label %cond.end36.i263, label %cond.true29.i257

cond.true29.i257:                                 ; preds = %cond.end25.i254
  %intra_block30.i258 = getelementptr inbounds i8, ptr %2, i64 13544
  %445 = load ptr, ptr %intra_block30.i258, align 8
  %mb_addr31.i259 = getelementptr inbounds i8, ptr %pix_b.i216, i64 4
  %446 = load i32, ptr %mb_addr31.i259, align 4
  %idxprom32.i260 = sext i32 %446 to i64
  %arrayidx33.i261 = getelementptr inbounds i8, ptr %445, i64 %idxprom32.i260
  %447 = load i8, ptr %arrayidx33.i261, align 1
  %conv34.i262 = sext i8 %447 to i32
  br label %cond.end36.i263

cond.end36.i263:                                  ; preds = %cond.true29.i257, %cond.end25.i254
  %cond37.i264 = phi i32 [ %conv34.i262, %cond.true29.i257 ], [ 0, %cond.end25.i254 ]
  br i1 %narrow.i241, label %cond.true40.i350, label %cond.end47.i265

cond.true40.i350:                                 ; preds = %cond.end36.i263
  %intra_block41.i351 = getelementptr inbounds i8, ptr %2, i64 13544
  %448 = load ptr, ptr %intra_block41.i351, align 8
  %mb_addr42.i352 = getelementptr inbounds i8, ptr %pix_c.i217, i64 4
  %449 = load i32, ptr %mb_addr42.i352, align 4
  %idxprom43.i353 = sext i32 %449 to i64
  %arrayidx44.i354 = getelementptr inbounds i8, ptr %448, i64 %idxprom43.i353
  %450 = load i8, ptr %arrayidx44.i354, align 1
  %conv45.i355 = sext i8 %450 to i32
  br label %cond.end47.i265

cond.end47.i265:                                  ; preds = %cond.true40.i350, %cond.end36.i263
  %cond48.i266 = phi i32 [ %conv45.i355, %cond.true40.i350 ], [ 0, %cond.end36.i263 ]
  %451 = load i32, ptr %pix_d.i218, align 4
  %tobool50.not.i267 = icmp eq i32 %451, 0
  br i1 %tobool50.not.i267, label %if.end.thread.i, label %cond.true51.i268

if.end.thread.i:                                  ; preds = %cond.end47.i265
  %tobool64544.not.i = icmp eq i32 %cond37.i264, 0
  %tobool65545.i = icmp ne i32 %cond26.i255, 0
  %current_mb_nr581.i = getelementptr inbounds i8, ptr %2, i64 108
  %452 = load i32, ptr %current_mb_nr581.i, align 4
  %call582.i = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %452)
  br i1 %tobool64544.not.i, label %if.else92.i, label %if.then71.i

cond.true51.i268:                                 ; preds = %cond.end47.i265
  %intra_block52.i269 = getelementptr inbounds i8, ptr %2, i64 13544
  %453 = load ptr, ptr %intra_block52.i269, align 8
  %mb_addr53.i270 = getelementptr inbounds i8, ptr %pix_d.i218, i64 4
  %454 = load i32, ptr %mb_addr53.i270, align 4
  %idxprom54.i271 = sext i32 %454 to i64
  %arrayidx55.i272 = getelementptr inbounds i8, ptr %453, i64 %idxprom54.i271
  %455 = load i8, ptr %arrayidx55.i272, align 1
  %conv56.i273 = sext i8 %455 to i32
  br label %if.end.i274

if.else.i356:                                     ; preds = %cond.end.i227
  %456 = load i32, ptr %pix_b.i216, align 4
  %457 = load i32, ptr %pix_d.i218, align 4
  br label %if.end.i274

if.end.i274:                                      ; preds = %if.else.i356, %cond.true51.i268
  %block_available_up_right.0.i275 = phi i32 [ %land.ext.i242, %if.else.i356 ], [ %cond48.i266, %cond.true51.i268 ]
  %block_available_up_left.0.i276 = phi i32 [ %457, %if.else.i356 ], [ %conv56.i273, %cond.true51.i268 ]
  %block_available_left.0.i277 = phi i32 [ %440, %if.else.i356 ], [ %cond26.i255, %cond.true51.i268 ]
  %block_available_up.0.i278 = phi i32 [ %456, %if.else.i356 ], [ %cond37.i264, %cond.true51.i268 ]
  %tobool64.i279 = icmp ne i32 %block_available_up.0.i278, 0
  %tobool65.i = icmp ne i32 %block_available_left.0.i277, 0
  %or.cond.i280 = select i1 %tobool64.i279, i1 %tobool65.i, i1 false
  %tobool67.i = icmp ne i32 %block_available_up_left.0.i276, 0
  %or.cond446.i = select i1 %or.cond.i280, i1 %tobool67.i, i1 false
  br i1 %or.cond446.i, label %if.then71.i, label %if.then68.i281

if.then68.i281:                                   ; preds = %if.end.i274
  %current_mb_nr.i282 = getelementptr inbounds i8, ptr %2, i64 108
  %458 = load i32, ptr %current_mb_nr.i282, align 4
  %call.i283 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %458)
  br i1 %tobool64.i279, label %if.then71.i, label %if.else92.i

if.then71.i:                                      ; preds = %if.then68.i281, %if.end.i274, %if.end.thread.i
  %block_available_up_right.0550580.i = phi i32 [ %block_available_up_right.0.i275, %if.then68.i281 ], [ %cond48.i266, %if.end.thread.i ], [ %block_available_up_right.0.i275, %if.end.i274 ]
  %block_available_up_left.0552577.i = phi i32 [ %block_available_up_left.0.i276, %if.then68.i281 ], [ 0, %if.end.thread.i ], [ %block_available_up_left.0.i276, %if.end.i274 ]
  %block_available_left.0554574.i = phi i32 [ %block_available_left.0.i277, %if.then68.i281 ], [ %cond26.i255, %if.end.thread.i ], [ %block_available_left.0.i277, %if.end.i274 ]
  %block_available_up.0556571.i = phi i32 [ %block_available_up.0.i278, %if.then68.i281 ], [ %cond37.i264, %if.end.thread.i ], [ %block_available_up.0.i278, %if.end.i274 ]
  %tobool65560568.i = phi i1 [ %tobool65.i, %if.then68.i281 ], [ %tobool65545.i, %if.end.thread.i ], [ true, %if.end.i274 ]
  %tobool67562565.i = phi i1 [ %tobool67.i, %if.then68.i281 ], [ false, %if.end.thread.i ], [ true, %if.end.i274 ]
  %pos_y.i333 = getelementptr inbounds i8, ptr %pix_b.i216, i64 14
  %459 = load i16, ptr %pos_y.i333, align 2
  %idxprom72.i = sext i16 %459 to i64
  %arrayidx73.i334 = getelementptr inbounds ptr, ptr %cond.i229, i64 %idxprom72.i
  %460 = load ptr, ptr %arrayidx73.i334, align 8
  %pos_x.i335 = getelementptr inbounds i8, ptr %pix_b.i216, i64 12
  %461 = load i16, ptr %pos_x.i335, align 4
  %idxprom74.i = sext i16 %461 to i64
  %arrayidx75.i336 = getelementptr inbounds i16, ptr %460, i64 %idxprom74.i
  %462 = load i16, ptr %arrayidx75.i336, align 2
  %arrayidx77.i337 = getelementptr inbounds i8, ptr %PredPel.i214, i64 2
  store i16 %462, ptr %arrayidx77.i337, align 2
  %arrayidx78.i338 = getelementptr inbounds i8, ptr %arrayidx75.i336, i64 2
  %463 = load i16, ptr %arrayidx78.i338, align 2
  %arrayidx79.i339 = getelementptr inbounds i8, ptr %PredPel.i214, i64 4
  store i16 %463, ptr %arrayidx79.i339, align 4
  %arrayidx80.i340 = getelementptr inbounds i8, ptr %arrayidx75.i336, i64 4
  %464 = load i16, ptr %arrayidx80.i340, align 2
  %arrayidx81.i341 = getelementptr inbounds i8, ptr %PredPel.i214, i64 6
  store i16 %464, ptr %arrayidx81.i341, align 2
  %arrayidx82.i342 = getelementptr inbounds i8, ptr %arrayidx75.i336, i64 6
  %465 = load i16, ptr %arrayidx82.i342, align 2
  %arrayidx83.i343 = getelementptr inbounds i8, ptr %PredPel.i214, i64 8
  store i16 %465, ptr %arrayidx83.i343, align 8
  %arrayidx84.i344 = getelementptr inbounds i8, ptr %arrayidx75.i336, i64 8
  %466 = load i16, ptr %arrayidx84.i344, align 2
  %arrayidx85.i345 = getelementptr inbounds i8, ptr %PredPel.i214, i64 10
  store i16 %466, ptr %arrayidx85.i345, align 2
  %arrayidx86.i346 = getelementptr inbounds i8, ptr %arrayidx75.i336, i64 10
  %467 = load i16, ptr %arrayidx86.i346, align 2
  %arrayidx87.i = getelementptr inbounds i8, ptr %PredPel.i214, i64 12
  store i16 %467, ptr %arrayidx87.i, align 4
  %arrayidx88.i347 = getelementptr inbounds i8, ptr %arrayidx75.i336, i64 12
  %468 = load i16, ptr %arrayidx88.i347, align 2
  %arrayidx89.i348 = getelementptr inbounds i8, ptr %PredPel.i214, i64 14
  store i16 %468, ptr %arrayidx89.i348, align 2
  %arrayidx90.i = getelementptr inbounds i8, ptr %arrayidx75.i336, i64 14
  %469 = load i16, ptr %arrayidx90.i, align 2
  %arrayidx91.i349 = getelementptr inbounds i8, ptr %PredPel.i214, i64 16
  store i16 %469, ptr %arrayidx91.i349, align 16
  br label %if.end104.i

if.else92.i:                                      ; preds = %if.then68.i281, %if.end.thread.i
  %block_available_up_right.0550579.i = phi i32 [ %block_available_up_right.0.i275, %if.then68.i281 ], [ %cond48.i266, %if.end.thread.i ]
  %block_available_up_left.0552576.i = phi i32 [ %block_available_up_left.0.i276, %if.then68.i281 ], [ 0, %if.end.thread.i ]
  %block_available_left.0554573.i = phi i32 [ %block_available_left.0.i277, %if.then68.i281 ], [ %cond26.i255, %if.end.thread.i ]
  %tobool65560567.i = phi i1 [ %tobool65.i, %if.then68.i281 ], [ %tobool65545.i, %if.end.thread.i ]
  %tobool67562564.i = phi i1 [ %tobool67.i, %if.then68.i281 ], [ false, %if.end.thread.i ]
  %dc_pred_value_comp.i284 = getelementptr inbounds i8, ptr %432, i64 849060
  %arrayidx94.i285 = getelementptr inbounds [3 x i32], ptr %dc_pred_value_comp.i284, i64 0, i64 %idxprom4.i231
  %470 = load i32, ptr %arrayidx94.i285, align 4
  %conv95.i = trunc i32 %470 to i16
  %arrayidx103.i287 = getelementptr inbounds i8, ptr %PredPel.i214, i64 2
  %471 = insertelement <8 x i16> poison, i16 %conv95.i, i64 0
  %472 = shufflevector <8 x i16> %471, <8 x i16> poison, <8 x i32> zeroinitializer
  store <8 x i16> %472, ptr %arrayidx103.i287, align 2
  br label %if.end104.i

if.end104.i:                                      ; preds = %if.else92.i, %if.then71.i
  %473 = phi i16 [ %conv95.i, %if.else92.i ], [ %469, %if.then71.i ]
  %block_available_up_right.0550578.i = phi i32 [ %block_available_up_right.0550579.i, %if.else92.i ], [ %block_available_up_right.0550580.i, %if.then71.i ]
  %block_available_up_left.0552575.i = phi i32 [ %block_available_up_left.0552576.i, %if.else92.i ], [ %block_available_up_left.0552577.i, %if.then71.i ]
  %block_available_left.0554572.i = phi i32 [ %block_available_left.0554573.i, %if.else92.i ], [ %block_available_left.0554574.i, %if.then71.i ]
  %block_available_up.0556569.i = phi i32 [ 0, %if.else92.i ], [ %block_available_up.0556571.i, %if.then71.i ]
  %tobool65560566.i = phi i1 [ %tobool65560567.i, %if.else92.i ], [ %tobool65560568.i, %if.then71.i ]
  %tobool67562563.i = phi i1 [ %tobool67562564.i, %if.else92.i ], [ %tobool67562565.i, %if.then71.i ]
  %tobool105.not.i = icmp eq i32 %block_available_up_right.0550578.i, 0
  br i1 %tobool105.not.i, label %if.else129.i, label %if.then106.i

if.then106.i:                                     ; preds = %if.end104.i
  %pos_y107.i = getelementptr inbounds i8, ptr %pix_c.i217, i64 14
  %474 = load i16, ptr %pos_y107.i, align 2
  %idxprom108.i = sext i16 %474 to i64
  %arrayidx109.i288 = getelementptr inbounds ptr, ptr %cond.i229, i64 %idxprom108.i
  %475 = load ptr, ptr %arrayidx109.i288, align 8
  %pos_x110.i = getelementptr inbounds i8, ptr %pix_c.i217, i64 12
  %476 = load i16, ptr %pos_x110.i, align 4
  %idxprom111.i = sext i16 %476 to i64
  %arrayidx112.i289 = getelementptr inbounds i16, ptr %475, i64 %idxprom111.i
  %477 = load i16, ptr %arrayidx112.i289, align 2
  %arrayidx114.i290 = getelementptr inbounds i8, ptr %PredPel.i214, i64 18
  store i16 %477, ptr %arrayidx114.i290, align 2
  %arrayidx115.i291 = getelementptr inbounds i8, ptr %arrayidx112.i289, i64 2
  %478 = load i16, ptr %arrayidx115.i291, align 2
  %arrayidx116.i292 = getelementptr inbounds i8, ptr %PredPel.i214, i64 20
  store i16 %478, ptr %arrayidx116.i292, align 4
  %arrayidx117.i293 = getelementptr inbounds i8, ptr %arrayidx112.i289, i64 4
  %479 = load i16, ptr %arrayidx117.i293, align 2
  %arrayidx118.i294 = getelementptr inbounds i8, ptr %PredPel.i214, i64 22
  store i16 %479, ptr %arrayidx118.i294, align 2
  %arrayidx119.i295 = getelementptr inbounds i8, ptr %arrayidx112.i289, i64 6
  %480 = load i16, ptr %arrayidx119.i295, align 2
  %arrayidx120.i296 = getelementptr inbounds i8, ptr %PredPel.i214, i64 24
  store i16 %480, ptr %arrayidx120.i296, align 8
  %arrayidx121.i297 = getelementptr inbounds i8, ptr %arrayidx112.i289, i64 8
  %481 = load i16, ptr %arrayidx121.i297, align 2
  %arrayidx122.i298 = getelementptr inbounds i8, ptr %PredPel.i214, i64 26
  store i16 %481, ptr %arrayidx122.i298, align 2
  %arrayidx123.i = getelementptr inbounds i8, ptr %arrayidx112.i289, i64 10
  %482 = load i16, ptr %arrayidx123.i, align 2
  %arrayidx124.i = getelementptr inbounds i8, ptr %PredPel.i214, i64 28
  store i16 %482, ptr %arrayidx124.i, align 4
  %arrayidx125.i299 = getelementptr inbounds i8, ptr %arrayidx112.i289, i64 12
  %483 = load i16, ptr %arrayidx125.i299, align 2
  %arrayidx126.i300 = getelementptr inbounds i8, ptr %PredPel.i214, i64 30
  store i16 %483, ptr %arrayidx126.i300, align 2
  %arrayidx127.i301 = getelementptr inbounds i8, ptr %arrayidx112.i289, i64 14
  %484 = load i16, ptr %arrayidx127.i301, align 2
  %arrayidx128.i302 = getelementptr inbounds i8, ptr %PredPel.i214, i64 32
  store i16 %484, ptr %arrayidx128.i302, align 16
  br label %if.end139.i

if.else129.i:                                     ; preds = %if.end104.i
  %arrayidx138.i332 = getelementptr inbounds i8, ptr %PredPel.i214, i64 18
  %485 = insertelement <8 x i16> poison, i16 %473, i64 0
  %486 = shufflevector <8 x i16> %485, <8 x i16> poison, <8 x i32> zeroinitializer
  store <8 x i16> %486, ptr %arrayidx138.i332, align 2
  br label %if.end139.i

if.end139.i:                                      ; preds = %if.else129.i, %if.then106.i
  br i1 %tobool65560566.i, label %if.then141.i, label %if.else176.i

if.then141.i:                                     ; preds = %if.end139.i
  %pos_y142.i = getelementptr inbounds i8, ptr %pix_a.i215, i64 14
  %487 = load i16, ptr %pos_y142.i, align 2
  %idxprom143.i = sext i16 %487 to i64
  %arrayidx144.i = getelementptr inbounds ptr, ptr %cond.i229, i64 %idxprom143.i
  %pos_x146.i = getelementptr inbounds i8, ptr %pix_a.i215, i64 12
  %488 = load i16, ptr %pos_x146.i, align 4
  %incdec.ptr.i327 = getelementptr inbounds i8, ptr %arrayidx144.i, i64 8
  %489 = load ptr, ptr %arrayidx144.i, align 8
  %idx.ext.i328 = sext i16 %488 to i64
  %add.ptr.i329 = getelementptr inbounds i16, ptr %489, i64 %idx.ext.i328
  %490 = load i16, ptr %add.ptr.i329, align 2
  %arrayidx148.i = getelementptr inbounds i8, ptr %PredPel.i214, i64 34
  store i16 %490, ptr %arrayidx148.i, align 2
  %incdec.ptr149.i = getelementptr inbounds i8, ptr %arrayidx144.i, i64 16
  %491 = load ptr, ptr %incdec.ptr.i327, align 8
  %add.ptr151.i = getelementptr inbounds i16, ptr %491, i64 %idx.ext.i328
  %492 = load i16, ptr %add.ptr151.i, align 2
  %arrayidx152.i = getelementptr inbounds i8, ptr %PredPel.i214, i64 36
  store i16 %492, ptr %arrayidx152.i, align 4
  %incdec.ptr153.i = getelementptr inbounds i8, ptr %arrayidx144.i, i64 24
  %493 = load ptr, ptr %incdec.ptr149.i, align 8
  %add.ptr155.i = getelementptr inbounds i16, ptr %493, i64 %idx.ext.i328
  %494 = load i16, ptr %add.ptr155.i, align 2
  %arrayidx156.i = getelementptr inbounds i8, ptr %PredPel.i214, i64 38
  store i16 %494, ptr %arrayidx156.i, align 2
  %incdec.ptr157.i = getelementptr inbounds i8, ptr %arrayidx144.i, i64 32
  %495 = load ptr, ptr %incdec.ptr153.i, align 8
  %add.ptr159.i = getelementptr inbounds i16, ptr %495, i64 %idx.ext.i328
  %496 = load i16, ptr %add.ptr159.i, align 2
  %arrayidx160.i = getelementptr inbounds i8, ptr %PredPel.i214, i64 40
  store i16 %496, ptr %arrayidx160.i, align 8
  %incdec.ptr161.i = getelementptr inbounds i8, ptr %arrayidx144.i, i64 40
  %497 = load ptr, ptr %incdec.ptr157.i, align 8
  %add.ptr163.i = getelementptr inbounds i16, ptr %497, i64 %idx.ext.i328
  %498 = load i16, ptr %add.ptr163.i, align 2
  %arrayidx164.i = getelementptr inbounds i8, ptr %PredPel.i214, i64 42
  store i16 %498, ptr %arrayidx164.i, align 2
  %incdec.ptr165.i = getelementptr inbounds i8, ptr %arrayidx144.i, i64 48
  %499 = load ptr, ptr %incdec.ptr161.i, align 8
  %add.ptr167.i = getelementptr inbounds i16, ptr %499, i64 %idx.ext.i328
  %500 = load i16, ptr %add.ptr167.i, align 2
  %arrayidx168.i = getelementptr inbounds i8, ptr %PredPel.i214, i64 44
  store i16 %500, ptr %arrayidx168.i, align 4
  %incdec.ptr169.i = getelementptr inbounds i8, ptr %arrayidx144.i, i64 56
  %501 = load ptr, ptr %incdec.ptr165.i, align 8
  %add.ptr171.i = getelementptr inbounds i16, ptr %501, i64 %idx.ext.i328
  %502 = load i16, ptr %add.ptr171.i, align 2
  %arrayidx172.i = getelementptr inbounds i8, ptr %PredPel.i214, i64 46
  store i16 %502, ptr %arrayidx172.i, align 2
  %503 = load ptr, ptr %incdec.ptr169.i, align 8
  %add.ptr174.i = getelementptr inbounds i16, ptr %503, i64 %idx.ext.i328
  %504 = load i16, ptr %add.ptr174.i, align 2
  br label %if.end189.i

if.else176.i:                                     ; preds = %if.end139.i
  %dc_pred_value_comp177.i = getelementptr inbounds i8, ptr %432, i64 849060
  %arrayidx179.i303 = getelementptr inbounds [3 x i32], ptr %dc_pred_value_comp177.i, i64 0, i64 %idxprom4.i231
  %505 = load i32, ptr %arrayidx179.i303, align 4
  %conv180.i = trunc i32 %505 to i16
  %arrayidx182.i304 = getelementptr inbounds i8, ptr %PredPel.i214, i64 46
  store i16 %conv180.i, ptr %arrayidx182.i304, align 2
  %arrayidx183.i = getelementptr inbounds i8, ptr %PredPel.i214, i64 44
  store i16 %conv180.i, ptr %arrayidx183.i, align 4
  %arrayidx184.i = getelementptr inbounds i8, ptr %PredPel.i214, i64 42
  store i16 %conv180.i, ptr %arrayidx184.i, align 2
  %arrayidx188.i305 = getelementptr inbounds i8, ptr %PredPel.i214, i64 34
  %506 = insertelement <4 x i16> poison, i16 %conv180.i, i64 0
  %507 = shufflevector <4 x i16> %506, <4 x i16> poison, <4 x i32> zeroinitializer
  store <4 x i16> %507, ptr %arrayidx188.i305, align 2
  br label %if.end189.i

if.end189.i:                                      ; preds = %if.else176.i, %if.then141.i
  %conv180.sink.i = phi i16 [ %504, %if.then141.i ], [ %conv180.i, %if.else176.i ]
  %508 = getelementptr inbounds i8, ptr %PredPel.i214, i64 48
  store i16 %conv180.sink.i, ptr %508, align 16
  br i1 %tobool67562563.i, label %if.then191.i, label %if.else199.i

if.then191.i:                                     ; preds = %if.end189.i
  %pos_y192.i = getelementptr inbounds i8, ptr %pix_d.i218, i64 14
  %509 = load i16, ptr %pos_y192.i, align 2
  %idxprom193.i = sext i16 %509 to i64
  %arrayidx194.i = getelementptr inbounds ptr, ptr %cond.i229, i64 %idxprom193.i
  %510 = load ptr, ptr %arrayidx194.i, align 8
  %pos_x195.i = getelementptr inbounds i8, ptr %pix_d.i218, i64 12
  %511 = load i16, ptr %pos_x195.i, align 4
  %idxprom196.i = sext i16 %511 to i64
  %arrayidx197.i = getelementptr inbounds i16, ptr %510, i64 %idxprom196.i
  %512 = load i16, ptr %arrayidx197.i, align 2
  br label %intra8x8_diag_down_right_pred.exit

if.else199.i:                                     ; preds = %if.end189.i
  %dc_pred_value_comp200.i = getelementptr inbounds i8, ptr %432, i64 849060
  %arrayidx202.i = getelementptr inbounds [3 x i32], ptr %dc_pred_value_comp200.i, i64 0, i64 %idxprom4.i231
  %513 = load i32, ptr %arrayidx202.i, align 4
  %conv203.i = trunc i32 %513 to i16
  br label %intra8x8_diag_down_right_pred.exit

intra8x8_diag_down_right_pred.exit:               ; preds = %if.then191.i, %if.else199.i
  %storemerge.i306 = phi i16 [ %conv203.i, %if.else199.i ], [ %512, %if.then191.i ]
  %.sink.i307 = phi i32 [ 0, %if.else199.i ], [ %block_available_up_left.0552575.i, %if.then191.i ]
  store i16 %storemerge.i306, ptr %PredPel.i214, align 16
  call fastcc void @LowPassForIntra8x8Pred(ptr noundef nonnull %PredPel.i214, i32 noundef %.sink.i307, i32 noundef %block_available_up.0556569.i, i32 noundef %block_available_left.0554572.i)
  %514 = load i16, ptr %508, align 16
  %conv208.i = zext i16 %514 to i32
  %arrayidx209.i308 = getelementptr inbounds i8, ptr %PredPel.i214, i64 44
  %515 = load i16, ptr %arrayidx209.i308, align 4
  %conv210.i309 = zext i16 %515 to i32
  %arrayidx212.i310 = getelementptr inbounds i8, ptr %PredPel.i214, i64 46
  %516 = load i16, ptr %arrayidx212.i310, align 2
  %conv213.i311 = zext i16 %516 to i32
  %mul.i = shl nuw nsw i32 %conv213.i311, 1
  %add211.i312 = add nuw nsw i32 %conv210.i309, 2
  %add214.i313 = add nuw nsw i32 %add211.i312, %conv208.i
  %add215.i = add nuw nsw i32 %add214.i313, %mul.i
  %shr.i314 = lshr i32 %add215.i, 2
  %conv216.i315 = trunc nuw i32 %shr.i314 to i16
  %arrayidx220.i = getelementptr inbounds i8, ptr %PredPel.i214, i64 42
  %517 = load i16, ptr %arrayidx220.i, align 2
  %conv221.i = zext i16 %517 to i32
  %mul225.i = shl nuw nsw i32 %conv210.i309, 1
  %add222.i = add nuw nsw i32 %conv221.i, 2
  %add226.i316 = add nuw nsw i32 %mul225.i, %conv213.i311
  %add227.i = add nuw nsw i32 %add226.i316, %add222.i
  %shr228.i = lshr i32 %add227.i, 2
  %conv229.i = trunc nuw i32 %shr228.i to i16
  %arrayidx233.i317 = getelementptr inbounds i8, ptr %PredPel.i214, i64 40
  %518 = load i16, ptr %arrayidx233.i317, align 8
  %conv234.i318 = zext i16 %518 to i32
  %mul238.i = shl nuw nsw i32 %conv221.i, 1
  %add239.i = add nuw nsw i32 %add211.i312, %conv234.i318
  %add240.i = add nuw nsw i32 %add239.i, %mul238.i
  %shr241.i = lshr i32 %add240.i, 2
  %conv242.i = trunc nuw i32 %shr241.i to i16
  %arrayidx246.i = getelementptr inbounds i8, ptr %PredPel.i214, i64 38
  %519 = load i16, ptr %arrayidx246.i, align 2
  %conv247.i = zext i16 %519 to i32
  %mul251.i = shl nuw nsw i32 %conv234.i318, 1
  %add252.i = add nuw nsw i32 %add222.i, %conv247.i
  %add253.i = add nuw nsw i32 %add252.i, %mul251.i
  %shr254.i = lshr i32 %add253.i, 2
  %conv255.i = trunc nuw i32 %shr254.i to i16
  %arrayidx259.i319 = getelementptr inbounds i8, ptr %PredPel.i214, i64 36
  %520 = load i16, ptr %arrayidx259.i319, align 4
  %conv260.i320 = zext i16 %520 to i32
  %mul264.i = shl nuw nsw i32 %conv247.i, 1
  %add261.i321 = add nuw nsw i32 %conv260.i320, 2
  %add265.i = add nuw nsw i32 %add261.i321, %conv234.i318
  %add266.i = add nuw nsw i32 %add265.i, %mul264.i
  %shr267.i = lshr i32 %add266.i, 2
  %conv268.i = trunc nuw i32 %shr267.i to i16
  %arrayidx272.i = getelementptr inbounds i8, ptr %PredPel.i214, i64 34
  %521 = load i16, ptr %arrayidx272.i, align 2
  %conv273.i = zext i16 %521 to i32
  %mul277.i = shl nuw nsw i32 %conv260.i320, 1
  %add274.i = add nuw nsw i32 %conv273.i, 2
  %add278.i = add nuw nsw i32 %add274.i, %conv247.i
  %add279.i322 = add nuw nsw i32 %add278.i, %mul277.i
  %shr280.i = lshr i32 %add279.i322, 2
  %conv281.i = trunc nuw i32 %shr280.i to i16
  %522 = load i16, ptr %PredPel.i214, align 16
  %conv286.i = zext i16 %522 to i32
  %mul290.i = shl nuw nsw i32 %conv273.i, 1
  %add291.i323 = add nuw nsw i32 %add261.i321, %conv286.i
  %add292.i = add nuw nsw i32 %add291.i323, %mul290.i
  %shr293.i = lshr i32 %add292.i, 2
  %conv294.i = trunc nuw i32 %shr293.i to i16
  %arrayidx298.i324 = getelementptr inbounds i8, ptr %PredPel.i214, i64 2
  %523 = load i16, ptr %arrayidx298.i324, align 2
  %conv299.i325 = zext i16 %523 to i32
  %mul303.i = shl nuw nsw i32 %conv286.i, 1
  %add304.i = add nuw nsw i32 %add274.i, %conv299.i325
  %add305.i = add nuw nsw i32 %add304.i, %mul303.i
  %shr306.i = lshr i32 %add305.i, 2
  %conv307.i = trunc nuw i32 %shr306.i to i16
  %arrayidx311.i = getelementptr inbounds i8, ptr %PredPel.i214, i64 4
  %524 = load i16, ptr %arrayidx311.i, align 4
  %conv312.i = zext i16 %524 to i32
  %mul316.i = shl nuw nsw i32 %conv299.i325, 1
  %add313.i = add nuw nsw i32 %conv286.i, 2
  %add317.i = add nuw nsw i32 %add313.i, %conv312.i
  %add318.i = add nuw nsw i32 %add317.i, %mul316.i
  %shr319.i = lshr i32 %add318.i, 2
  %conv320.i = trunc nuw i32 %shr319.i to i16
  %arrayidx324.i = getelementptr inbounds i8, ptr %PredPel.i214, i64 6
  %mul329.i = shl nuw nsw i32 %conv312.i, 1
  %add326.i = add nuw nsw i32 %conv299.i325, 2
  %add339.i = add nuw nsw i32 %conv312.i, 2
  %arrayidx376.i = getelementptr inbounds i8, ptr %PredPel.i214, i64 14
  %525 = load i16, ptr %arrayidx376.i, align 2
  %conv377.i = zext i16 %525 to i32
  %arrayidx389.i = getelementptr inbounds i8, ptr %PredPel.i214, i64 16
  %526 = load i16, ptr %arrayidx389.i, align 16
  %conv390.i = zext i16 %526 to i32
  %idxprom400.i = sext i32 %joff to i64
  %arrayidx401.i = getelementptr inbounds ptr, ptr %436, i64 %idxprom400.i
  %527 = load ptr, ptr %arrayidx401.i, align 8
  %idxprom402.i = sext i32 %ioff to i64
  %arrayidx403.i = getelementptr inbounds i16, ptr %527, i64 %idxprom402.i
  %PredArray.sroa.18.14.arrayidx403.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx403.i, i64 2
  %PredArray.sroa.19.14.arrayidx403.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx403.i, i64 4
  %PredArray.sroa.20.14.arrayidx403.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx403.i, i64 6
  %PredArray.sroa.21.14.arrayidx403.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx403.i, i64 8
  %528 = load <4 x i16>, ptr %arrayidx324.i, align 2
  %529 = zext <4 x i16> %528 to <4 x i32>
  %530 = extractelement <4 x i32> %529, i64 0
  %add330.i = add nuw nsw i32 %add326.i, %530
  %add331.i = add nuw nsw i32 %add330.i, %mul329.i
  %shr332.i = lshr i32 %add331.i, 2
  %conv333.i = trunc nuw i32 %shr332.i to i16
  %mul342.i = shl nuw nsw i32 %530, 1
  %531 = extractelement <4 x i32> %529, i64 1
  %add343.i = add nuw nsw i32 %add339.i, %531
  %add344.i = add nuw nsw i32 %add343.i, %mul342.i
  %shr345.i = lshr i32 %add344.i, 2
  %conv346.i = trunc nuw i32 %shr345.i to i16
  %532 = insertelement <4 x i32> %529, i32 %conv377.i, i64 0
  %533 = shl nuw nsw <4 x i32> %532, <i32 1, i32 1, i32 1, i32 1>
  %534 = shufflevector <4 x i32> %533, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %535 = add nuw nsw <4 x i32> %529, <i32 2, i32 2, i32 2, i32 2>
  %536 = shufflevector <4 x i32> %532, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 poison>
  %537 = insertelement <4 x i32> %536, i32 %conv390.i, i64 3
  %538 = add nuw nsw <4 x i32> %535, %537
  %539 = add nuw nsw <4 x i32> %538, %534
  %540 = lshr <4 x i32> %539, <i32 2, i32 2, i32 2, i32 2>
  %541 = trunc <4 x i32> %540 to <4 x i16>
  store i16 %conv307.i, ptr %arrayidx403.i, align 2
  store i16 %conv320.i, ptr %PredArray.sroa.18.14.arrayidx403.sroa_idx.i, align 2
  store i16 %conv333.i, ptr %PredArray.sroa.19.14.arrayidx403.sroa_idx.i, align 2
  store i16 %conv346.i, ptr %PredArray.sroa.20.14.arrayidx403.sroa_idx.i, align 2
  store <4 x i16> %541, ptr %PredArray.sroa.21.14.arrayidx403.sroa_idx.i, align 2
  %arrayidx407.i = getelementptr i8, ptr %arrayidx401.i, i64 8
  %542 = load ptr, ptr %arrayidx407.i, align 8
  %arrayidx409.i = getelementptr inbounds i16, ptr %542, i64 %idxprom402.i
  store i16 %conv294.i, ptr %arrayidx409.i, align 2
  %PredArray.sroa.16.12.arrayidx409.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx409.i, i64 2
  store i16 %conv307.i, ptr %PredArray.sroa.16.12.arrayidx409.sroa_idx.i, align 2
  %PredArray.sroa.18.12.arrayidx409.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx409.i, i64 4
  store i16 %conv320.i, ptr %PredArray.sroa.18.12.arrayidx409.sroa_idx.i, align 2
  %PredArray.sroa.19.12.arrayidx409.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx409.i, i64 6
  store i16 %conv333.i, ptr %PredArray.sroa.19.12.arrayidx409.sroa_idx.i, align 2
  %PredArray.sroa.20.12.arrayidx409.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx409.i, i64 8
  store i16 %conv346.i, ptr %PredArray.sroa.20.12.arrayidx409.sroa_idx.i, align 2
  %PredArray.sroa.21.12.arrayidx409.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx409.i, i64 10
  %543 = extractelement <4 x i16> %541, i64 0
  %544 = shufflevector <4 x i16> %541, <4 x i16> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i16> %544, ptr %PredArray.sroa.21.12.arrayidx409.sroa_idx.i, align 2
  %PredArray.sroa.23.12.arrayidx409.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx409.i, i64 14
  %545 = extractelement <4 x i16> %541, i64 2
  store i16 %545, ptr %PredArray.sroa.23.12.arrayidx409.sroa_idx.i, align 2
  %arrayidx413.i = getelementptr i8, ptr %arrayidx401.i, i64 16
  %546 = load ptr, ptr %arrayidx413.i, align 8
  %arrayidx415.i = getelementptr inbounds i16, ptr %546, i64 %idxprom402.i
  store i16 %conv281.i, ptr %arrayidx415.i, align 2
  %PredArray.sroa.14.10.arrayidx415.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx415.i, i64 2
  store i16 %conv294.i, ptr %PredArray.sroa.14.10.arrayidx415.sroa_idx.i, align 2
  %PredArray.sroa.16.10.arrayidx415.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx415.i, i64 4
  store i16 %conv307.i, ptr %PredArray.sroa.16.10.arrayidx415.sroa_idx.i, align 2
  %PredArray.sroa.18.10.arrayidx415.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx415.i, i64 6
  store i16 %conv320.i, ptr %PredArray.sroa.18.10.arrayidx415.sroa_idx.i, align 2
  %PredArray.sroa.19.10.arrayidx415.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx415.i, i64 8
  store i16 %conv333.i, ptr %PredArray.sroa.19.10.arrayidx415.sroa_idx.i, align 2
  %PredArray.sroa.20.10.arrayidx415.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx415.i, i64 10
  store i16 %conv346.i, ptr %PredArray.sroa.20.10.arrayidx415.sroa_idx.i, align 2
  %PredArray.sroa.21.10.arrayidx415.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx415.i, i64 12
  store <2 x i16> %544, ptr %PredArray.sroa.21.10.arrayidx415.sroa_idx.i, align 2
  %arrayidx419.i = getelementptr i8, ptr %arrayidx401.i, i64 24
  %547 = load ptr, ptr %arrayidx419.i, align 8
  %arrayidx421.i = getelementptr inbounds i16, ptr %547, i64 %idxprom402.i
  store i16 %conv268.i, ptr %arrayidx421.i, align 2
  %PredArray.sroa.12.8.arrayidx421.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx421.i, i64 2
  store i16 %conv281.i, ptr %PredArray.sroa.12.8.arrayidx421.sroa_idx.i, align 2
  %PredArray.sroa.14.8.arrayidx421.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx421.i, i64 4
  store i16 %conv294.i, ptr %PredArray.sroa.14.8.arrayidx421.sroa_idx.i, align 2
  %PredArray.sroa.16.8.arrayidx421.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx421.i, i64 6
  store i16 %conv307.i, ptr %PredArray.sroa.16.8.arrayidx421.sroa_idx.i, align 2
  %PredArray.sroa.18.8.arrayidx421.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx421.i, i64 8
  store i16 %conv320.i, ptr %PredArray.sroa.18.8.arrayidx421.sroa_idx.i, align 2
  %PredArray.sroa.19.8.arrayidx421.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx421.i, i64 10
  store i16 %conv333.i, ptr %PredArray.sroa.19.8.arrayidx421.sroa_idx.i, align 2
  %PredArray.sroa.20.8.arrayidx421.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx421.i, i64 12
  store i16 %conv346.i, ptr %PredArray.sroa.20.8.arrayidx421.sroa_idx.i, align 2
  %PredArray.sroa.21.8.arrayidx421.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx421.i, i64 14
  store i16 %543, ptr %PredArray.sroa.21.8.arrayidx421.sroa_idx.i, align 2
  %arrayidx425.i = getelementptr i8, ptr %arrayidx401.i, i64 32
  %548 = load ptr, ptr %arrayidx425.i, align 8
  %arrayidx427.i = getelementptr inbounds i16, ptr %548, i64 %idxprom402.i
  store i16 %conv255.i, ptr %arrayidx427.i, align 2
  %PredArray.sroa.10.6.arrayidx427.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx427.i, i64 2
  store i16 %conv268.i, ptr %PredArray.sroa.10.6.arrayidx427.sroa_idx.i, align 2
  %PredArray.sroa.12.6.arrayidx427.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx427.i, i64 4
  store i16 %conv281.i, ptr %PredArray.sroa.12.6.arrayidx427.sroa_idx.i, align 2
  %PredArray.sroa.14.6.arrayidx427.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx427.i, i64 6
  store i16 %conv294.i, ptr %PredArray.sroa.14.6.arrayidx427.sroa_idx.i, align 2
  %PredArray.sroa.16.6.arrayidx427.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx427.i, i64 8
  store i16 %conv307.i, ptr %PredArray.sroa.16.6.arrayidx427.sroa_idx.i, align 2
  %PredArray.sroa.18.6.arrayidx427.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx427.i, i64 10
  store i16 %conv320.i, ptr %PredArray.sroa.18.6.arrayidx427.sroa_idx.i, align 2
  %PredArray.sroa.19.6.arrayidx427.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx427.i, i64 12
  store i16 %conv333.i, ptr %PredArray.sroa.19.6.arrayidx427.sroa_idx.i, align 2
  %PredArray.sroa.20.6.arrayidx427.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx427.i, i64 14
  store i16 %conv346.i, ptr %PredArray.sroa.20.6.arrayidx427.sroa_idx.i, align 2
  %arrayidx431.i = getelementptr i8, ptr %arrayidx401.i, i64 40
  %549 = load ptr, ptr %arrayidx431.i, align 8
  %arrayidx433.i = getelementptr inbounds i16, ptr %549, i64 %idxprom402.i
  store i16 %conv242.i, ptr %arrayidx433.i, align 2
  %PredArray.sroa.8.4.arrayidx433.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx433.i, i64 2
  store i16 %conv255.i, ptr %PredArray.sroa.8.4.arrayidx433.sroa_idx.i, align 2
  %PredArray.sroa.10.4.arrayidx433.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx433.i, i64 4
  store i16 %conv268.i, ptr %PredArray.sroa.10.4.arrayidx433.sroa_idx.i, align 2
  %PredArray.sroa.12.4.arrayidx433.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx433.i, i64 6
  store i16 %conv281.i, ptr %PredArray.sroa.12.4.arrayidx433.sroa_idx.i, align 2
  %PredArray.sroa.14.4.arrayidx433.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx433.i, i64 8
  store i16 %conv294.i, ptr %PredArray.sroa.14.4.arrayidx433.sroa_idx.i, align 2
  %PredArray.sroa.16.4.arrayidx433.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx433.i, i64 10
  store i16 %conv307.i, ptr %PredArray.sroa.16.4.arrayidx433.sroa_idx.i, align 2
  %PredArray.sroa.18.4.arrayidx433.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx433.i, i64 12
  store i16 %conv320.i, ptr %PredArray.sroa.18.4.arrayidx433.sroa_idx.i, align 2
  %PredArray.sroa.19.4.arrayidx433.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx433.i, i64 14
  store i16 %conv333.i, ptr %PredArray.sroa.19.4.arrayidx433.sroa_idx.i, align 2
  %arrayidx437.i = getelementptr i8, ptr %arrayidx401.i, i64 48
  %550 = load ptr, ptr %arrayidx437.i, align 8
  %arrayidx439.i = getelementptr inbounds i16, ptr %550, i64 %idxprom402.i
  store i16 %conv229.i, ptr %arrayidx439.i, align 2
  %PredArray.sroa.6.2.arrayidx439.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx439.i, i64 2
  store i16 %conv242.i, ptr %PredArray.sroa.6.2.arrayidx439.sroa_idx.i, align 2
  %PredArray.sroa.8.2.arrayidx439.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx439.i, i64 4
  store i16 %conv255.i, ptr %PredArray.sroa.8.2.arrayidx439.sroa_idx.i, align 2
  %PredArray.sroa.10.2.arrayidx439.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx439.i, i64 6
  store i16 %conv268.i, ptr %PredArray.sroa.10.2.arrayidx439.sroa_idx.i, align 2
  %PredArray.sroa.12.2.arrayidx439.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx439.i, i64 8
  store i16 %conv281.i, ptr %PredArray.sroa.12.2.arrayidx439.sroa_idx.i, align 2
  %PredArray.sroa.14.2.arrayidx439.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx439.i, i64 10
  store i16 %conv294.i, ptr %PredArray.sroa.14.2.arrayidx439.sroa_idx.i, align 2
  %PredArray.sroa.16.2.arrayidx439.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx439.i, i64 12
  store i16 %conv307.i, ptr %PredArray.sroa.16.2.arrayidx439.sroa_idx.i, align 2
  %PredArray.sroa.18.2.arrayidx439.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx439.i, i64 14
  store i16 %conv320.i, ptr %PredArray.sroa.18.2.arrayidx439.sroa_idx.i, align 2
  %arrayidx442.i = getelementptr i8, ptr %arrayidx401.i, i64 56
  %551 = load ptr, ptr %arrayidx442.i, align 8
  %arrayidx444.i = getelementptr inbounds i16, ptr %551, i64 %idxprom402.i
  store i16 %conv216.i315, ptr %arrayidx444.i, align 2
  %PredArray.sroa.4.0.arrayidx444.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx444.i, i64 2
  store i16 %conv229.i, ptr %PredArray.sroa.4.0.arrayidx444.sroa_idx.i, align 2
  %PredArray.sroa.6.0.arrayidx444.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx444.i, i64 4
  store i16 %conv242.i, ptr %PredArray.sroa.6.0.arrayidx444.sroa_idx.i, align 2
  %PredArray.sroa.8.0.arrayidx444.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx444.i, i64 6
  store i16 %conv255.i, ptr %PredArray.sroa.8.0.arrayidx444.sroa_idx.i, align 2
  %PredArray.sroa.10.0.arrayidx444.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx444.i, i64 8
  store i16 %conv268.i, ptr %PredArray.sroa.10.0.arrayidx444.sroa_idx.i, align 2
  %PredArray.sroa.12.0.arrayidx444.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx444.i, i64 10
  store i16 %conv281.i, ptr %PredArray.sroa.12.0.arrayidx444.sroa_idx.i, align 2
  %PredArray.sroa.14.0.arrayidx444.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx444.i, i64 12
  store i16 %conv294.i, ptr %PredArray.sroa.14.0.arrayidx444.sroa_idx.i, align 2
  %PredArray.sroa.16.0.arrayidx444.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx444.i, i64 14
  store i16 %conv307.i, ptr %PredArray.sroa.16.0.arrayidx444.sroa_idx.i, align 2
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pix_d.i218) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pix_c.i217) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pix_b.i216) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pix_a.i215) #6
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %PredPel.i214) #6
  br label %cleanup

sw.bb13:                                          ; preds = %entry
  %p_Vid1.i364 = getelementptr inbounds i8, ptr %currMB, i64 8
  %552 = load ptr, ptr %p_Vid1.i364, align 8
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %PredPel.i359) #6
  %tobool.not.i365 = icmp eq i32 %pl, 0
  %dec_picture3.i = getelementptr inbounds i8, ptr %2, i64 13520
  %553 = load ptr, ptr %dec_picture3.i, align 8
  br i1 %tobool.not.i365, label %cond.false.i502, label %cond.true.i366

cond.true.i366:                                   ; preds = %sw.bb13
  %imgUV.i367 = getelementptr inbounds i8, ptr %553, i64 136
  %554 = load ptr, ptr %imgUV.i367, align 8
  %sub.i368 = add i32 %pl, -1
  %idxprom.i369 = zext i32 %sub.i368 to i64
  %arrayidx2.i = getelementptr inbounds ptr, ptr %554, i64 %idxprom.i369
  br label %cond.end.i370

cond.false.i502:                                  ; preds = %sw.bb13
  %imgY4.i = getelementptr inbounds i8, ptr %553, i64 128
  br label %cond.end.i370

cond.end.i370:                                    ; preds = %cond.false.i502, %cond.true.i366
  %cond.in.i371 = phi ptr [ %arrayidx2.i, %cond.true.i366 ], [ %imgY4.i, %cond.false.i502 ]
  %cond.i372 = load ptr, ptr %cond.in.i371, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pix_a.i360) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pix_b.i361) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pix_c.i362) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pix_d.i363) #6
  %mb_pred.i373 = getelementptr inbounds i8, ptr %2, i64 1248
  %555 = load ptr, ptr %mb_pred.i373, align 8
  %idxprom5.i = zext i32 %pl to i64
  %arrayidx6.i = getelementptr inbounds ptr, ptr %555, i64 %idxprom5.i
  %556 = load ptr, ptr %arrayidx6.i, align 8
  %mb_size7.i = getelementptr inbounds i8, ptr %552, i64 849124
  %sub9.i374 = add nsw i32 %ioff, -1
  call void @getNonAffNeighbour(ptr noundef nonnull %currMB, i32 noundef %sub9.i374, i32 noundef %joff, ptr noundef nonnull %mb_size7.i, ptr noundef nonnull %pix_a.i360) #6
  %sub10.i = add nsw i32 %joff, -1
  call void @getNonAffNeighbour(ptr noundef nonnull %currMB, i32 noundef %ioff, i32 noundef %sub10.i, ptr noundef nonnull %mb_size7.i, ptr noundef nonnull %pix_b.i361) #6
  %add.i375 = add nsw i32 %ioff, 8
  call void @getNonAffNeighbour(ptr noundef nonnull %currMB, i32 noundef %add.i375, i32 noundef %sub10.i, ptr noundef nonnull %mb_size7.i, ptr noundef nonnull %pix_c.i362) #6
  call void @getNonAffNeighbour(ptr noundef nonnull %currMB, i32 noundef %sub9.i374, i32 noundef %sub10.i, ptr noundef nonnull %mb_size7.i, ptr noundef nonnull %pix_d.i363) #6
  %557 = load i32, ptr %pix_c.i362, align 4
  %tobool14.not.i = icmp ne i32 %557, 0
  %cmp.i376 = icmp ne i32 %ioff, 8
  %cmp16.i = icmp ne i32 %joff, 8
  %.not.i377 = or i1 %cmp.i376, %cmp16.i
  %narrow.i378 = and i1 %.not.i377, %tobool14.not.i
  %land.ext.i379 = zext i1 %narrow.i378 to i32
  store i32 %land.ext.i379, ptr %pix_c.i362, align 4
  %active_pps.i380 = getelementptr inbounds i8, ptr %552, i64 8
  %558 = load ptr, ptr %active_pps.i380, align 8
  %constrained_intra_pred_flag.i381 = getelementptr inbounds i8, ptr %558, i64 2204
  %559 = load i32, ptr %constrained_intra_pred_flag.i381, align 4
  %tobool19.not.i = icmp eq i32 %559, 0
  %560 = load i32, ptr %pix_a.i360, align 4
  br i1 %tobool19.not.i, label %if.else.i501, label %if.then.i382

if.then.i382:                                     ; preds = %cond.end.i370
  %tobool21.not.i = icmp eq i32 %560, 0
  br i1 %tobool21.not.i, label %cond.end26.i, label %cond.true22.i

cond.true22.i:                                    ; preds = %if.then.i382
  %intra_block.i383 = getelementptr inbounds i8, ptr %2, i64 13544
  %561 = load ptr, ptr %intra_block.i383, align 8
  %mb_addr.i384 = getelementptr inbounds i8, ptr %pix_a.i360, i64 4
  %562 = load i32, ptr %mb_addr.i384, align 4
  %idxprom23.i = sext i32 %562 to i64
  %arrayidx24.i = getelementptr inbounds i8, ptr %561, i64 %idxprom23.i
  %563 = load i8, ptr %arrayidx24.i, align 1
  %conv.i385 = sext i8 %563 to i32
  br label %cond.end26.i

cond.end26.i:                                     ; preds = %cond.true22.i, %if.then.i382
  %cond27.i = phi i32 [ %conv.i385, %cond.true22.i ], [ 0, %if.then.i382 ]
  %564 = load i32, ptr %pix_b.i361, align 4
  %tobool29.not.i = icmp eq i32 %564, 0
  br i1 %tobool29.not.i, label %cond.end37.i, label %cond.true30.i

cond.true30.i:                                    ; preds = %cond.end26.i
  %intra_block31.i = getelementptr inbounds i8, ptr %2, i64 13544
  %565 = load ptr, ptr %intra_block31.i, align 8
  %mb_addr32.i = getelementptr inbounds i8, ptr %pix_b.i361, i64 4
  %566 = load i32, ptr %mb_addr32.i, align 4
  %idxprom33.i = sext i32 %566 to i64
  %arrayidx34.i = getelementptr inbounds i8, ptr %565, i64 %idxprom33.i
  %567 = load i8, ptr %arrayidx34.i, align 1
  %conv35.i = sext i8 %567 to i32
  br label %cond.end37.i

cond.end37.i:                                     ; preds = %cond.true30.i, %cond.end26.i
  %cond38.i = phi i32 [ %conv35.i, %cond.true30.i ], [ 0, %cond.end26.i ]
  br i1 %narrow.i378, label %cond.true41.i, label %cond.end48.i

cond.true41.i:                                    ; preds = %cond.end37.i
  %intra_block42.i = getelementptr inbounds i8, ptr %2, i64 13544
  %568 = load ptr, ptr %intra_block42.i, align 8
  %mb_addr43.i = getelementptr inbounds i8, ptr %pix_c.i362, i64 4
  %569 = load i32, ptr %mb_addr43.i, align 4
  %idxprom44.i = sext i32 %569 to i64
  %arrayidx45.i = getelementptr inbounds i8, ptr %568, i64 %idxprom44.i
  %570 = load i8, ptr %arrayidx45.i, align 1
  %conv46.i = sext i8 %570 to i32
  br label %cond.end48.i

cond.end48.i:                                     ; preds = %cond.true41.i, %cond.end37.i
  %cond49.i = phi i32 [ %conv46.i, %cond.true41.i ], [ 0, %cond.end37.i ]
  %571 = load i32, ptr %pix_d.i363, align 4
  %tobool51.not.i = icmp eq i32 %571, 0
  br i1 %tobool51.not.i, label %if.end.i386, label %cond.true52.i

cond.true52.i:                                    ; preds = %cond.end48.i
  %intra_block53.i = getelementptr inbounds i8, ptr %2, i64 13544
  %572 = load ptr, ptr %intra_block53.i, align 8
  %mb_addr54.i = getelementptr inbounds i8, ptr %pix_d.i363, i64 4
  %573 = load i32, ptr %mb_addr54.i, align 4
  %idxprom55.i = sext i32 %573 to i64
  %arrayidx56.i = getelementptr inbounds i8, ptr %572, i64 %idxprom55.i
  %574 = load i8, ptr %arrayidx56.i, align 1
  %conv57.i = sext i8 %574 to i32
  br label %if.end.i386

if.else.i501:                                     ; preds = %cond.end.i370
  %575 = load i32, ptr %pix_b.i361, align 4
  %576 = load i32, ptr %pix_d.i363, align 4
  br label %if.end.i386

if.end.i386:                                      ; preds = %if.else.i501, %cond.true52.i, %cond.end48.i
  %block_available_up_left.0.i387 = phi i32 [ %576, %if.else.i501 ], [ %conv57.i, %cond.true52.i ], [ 0, %cond.end48.i ]
  %block_available_up_right.0.i388 = phi i32 [ %land.ext.i379, %if.else.i501 ], [ %cond49.i, %cond.true52.i ], [ %cond49.i, %cond.end48.i ]
  %block_available_left.0.i389 = phi i32 [ %560, %if.else.i501 ], [ %cond27.i, %cond.true52.i ], [ %cond27.i, %cond.end48.i ]
  %block_available_up.0.i390 = phi i32 [ %575, %if.else.i501 ], [ %cond38.i, %cond.true52.i ], [ %cond38.i, %cond.end48.i ]
  %tobool65.not.i = icmp eq i32 %block_available_up.0.i390, 0
  br i1 %tobool65.not.i, label %if.then66.i, label %if.then69.i

if.then66.i:                                      ; preds = %if.end.i386
  %current_mb_nr.i489 = getelementptr inbounds i8, ptr %2, i64 108
  %577 = load i32, ptr %current_mb_nr.i489, align 4
  %call.i490 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %577)
  %dc_pred_value_comp.i491 = getelementptr inbounds i8, ptr %552, i64 849060
  %arrayidx92.i492 = getelementptr inbounds [3 x i32], ptr %dc_pred_value_comp.i491, i64 0, i64 %idxprom5.i
  %578 = load i32, ptr %arrayidx92.i492, align 4
  %conv93.i = trunc i32 %578 to i16
  %arrayidx101.i500 = getelementptr inbounds i8, ptr %PredPel.i359, i64 2
  %579 = insertelement <8 x i16> poison, i16 %conv93.i, i64 0
  %580 = shufflevector <8 x i16> %579, <8 x i16> poison, <8 x i32> zeroinitializer
  store <8 x i16> %580, ptr %arrayidx101.i500, align 2
  br label %if.end102.i

if.then69.i:                                      ; preds = %if.end.i386
  %pos_y.i391 = getelementptr inbounds i8, ptr %pix_b.i361, i64 14
  %581 = load i16, ptr %pos_y.i391, align 2
  %idxprom70.i = sext i16 %581 to i64
  %arrayidx71.i392 = getelementptr inbounds ptr, ptr %cond.i372, i64 %idxprom70.i
  %582 = load ptr, ptr %arrayidx71.i392, align 8
  %pos_x.i393 = getelementptr inbounds i8, ptr %pix_b.i361, i64 12
  %583 = load i16, ptr %pos_x.i393, align 4
  %idxprom72.i394 = sext i16 %583 to i64
  %arrayidx73.i395 = getelementptr inbounds i16, ptr %582, i64 %idxprom72.i394
  %584 = load i16, ptr %arrayidx73.i395, align 2
  %arrayidx75.i396 = getelementptr inbounds i8, ptr %PredPel.i359, i64 2
  store i16 %584, ptr %arrayidx75.i396, align 2
  %arrayidx76.i397 = getelementptr inbounds i8, ptr %arrayidx73.i395, i64 2
  %585 = load i16, ptr %arrayidx76.i397, align 2
  %arrayidx77.i398 = getelementptr inbounds i8, ptr %PredPel.i359, i64 4
  store i16 %585, ptr %arrayidx77.i398, align 4
  %arrayidx78.i399 = getelementptr inbounds i8, ptr %arrayidx73.i395, i64 4
  %586 = load i16, ptr %arrayidx78.i399, align 2
  %arrayidx79.i400 = getelementptr inbounds i8, ptr %PredPel.i359, i64 6
  store i16 %586, ptr %arrayidx79.i400, align 2
  %arrayidx80.i401 = getelementptr inbounds i8, ptr %arrayidx73.i395, i64 6
  %587 = load i16, ptr %arrayidx80.i401, align 2
  %arrayidx81.i402 = getelementptr inbounds i8, ptr %PredPel.i359, i64 8
  store i16 %587, ptr %arrayidx81.i402, align 8
  %arrayidx82.i403 = getelementptr inbounds i8, ptr %arrayidx73.i395, i64 8
  %588 = load i16, ptr %arrayidx82.i403, align 2
  %arrayidx83.i404 = getelementptr inbounds i8, ptr %PredPel.i359, i64 10
  store i16 %588, ptr %arrayidx83.i404, align 2
  %arrayidx84.i405 = getelementptr inbounds i8, ptr %arrayidx73.i395, i64 10
  %589 = load i16, ptr %arrayidx84.i405, align 2
  %arrayidx85.i406 = getelementptr inbounds i8, ptr %PredPel.i359, i64 12
  store i16 %589, ptr %arrayidx85.i406, align 4
  %arrayidx86.i407 = getelementptr inbounds i8, ptr %arrayidx73.i395, i64 12
  %590 = load i16, ptr %arrayidx86.i407, align 2
  %arrayidx87.i408 = getelementptr inbounds i8, ptr %PredPel.i359, i64 14
  store i16 %590, ptr %arrayidx87.i408, align 2
  %arrayidx88.i409 = getelementptr inbounds i8, ptr %arrayidx73.i395, i64 14
  %591 = load i16, ptr %arrayidx88.i409, align 2
  %arrayidx89.i410 = getelementptr inbounds i8, ptr %PredPel.i359, i64 16
  store i16 %591, ptr %arrayidx89.i410, align 16
  br label %if.end102.i

if.end102.i:                                      ; preds = %if.then69.i, %if.then66.i
  %592 = phi i16 [ %conv93.i, %if.then66.i ], [ %591, %if.then69.i ]
  %tobool103.not.i = icmp eq i32 %block_available_up_right.0.i388, 0
  br i1 %tobool103.not.i, label %if.else127.i, label %if.then104.i

if.then104.i:                                     ; preds = %if.end102.i
  %pos_y105.i = getelementptr inbounds i8, ptr %pix_c.i362, i64 14
  %593 = load i16, ptr %pos_y105.i, align 2
  %idxprom106.i411 = sext i16 %593 to i64
  %arrayidx107.i412 = getelementptr inbounds ptr, ptr %cond.i372, i64 %idxprom106.i411
  %594 = load ptr, ptr %arrayidx107.i412, align 8
  %pos_x108.i = getelementptr inbounds i8, ptr %pix_c.i362, i64 12
  %595 = load i16, ptr %pos_x108.i, align 4
  %idxprom109.i = sext i16 %595 to i64
  %arrayidx110.i413 = getelementptr inbounds i16, ptr %594, i64 %idxprom109.i
  %596 = load i16, ptr %arrayidx110.i413, align 2
  %arrayidx112.i414 = getelementptr inbounds i8, ptr %PredPel.i359, i64 18
  store i16 %596, ptr %arrayidx112.i414, align 2
  %arrayidx113.i415 = getelementptr inbounds i8, ptr %arrayidx110.i413, i64 2
  %597 = load i16, ptr %arrayidx113.i415, align 2
  %arrayidx114.i416 = getelementptr inbounds i8, ptr %PredPel.i359, i64 20
  store i16 %597, ptr %arrayidx114.i416, align 4
  %arrayidx115.i417 = getelementptr inbounds i8, ptr %arrayidx110.i413, i64 4
  %598 = load i16, ptr %arrayidx115.i417, align 2
  %arrayidx116.i418 = getelementptr inbounds i8, ptr %PredPel.i359, i64 22
  store i16 %598, ptr %arrayidx116.i418, align 2
  %arrayidx117.i419 = getelementptr inbounds i8, ptr %arrayidx110.i413, i64 6
  %599 = load i16, ptr %arrayidx117.i419, align 2
  %arrayidx118.i420 = getelementptr inbounds i8, ptr %PredPel.i359, i64 24
  store i16 %599, ptr %arrayidx118.i420, align 8
  %arrayidx119.i421 = getelementptr inbounds i8, ptr %arrayidx110.i413, i64 8
  %600 = load i16, ptr %arrayidx119.i421, align 2
  %arrayidx120.i422 = getelementptr inbounds i8, ptr %PredPel.i359, i64 26
  store i16 %600, ptr %arrayidx120.i422, align 2
  %arrayidx121.i423 = getelementptr inbounds i8, ptr %arrayidx110.i413, i64 10
  %601 = load i16, ptr %arrayidx121.i423, align 2
  %arrayidx122.i424 = getelementptr inbounds i8, ptr %PredPel.i359, i64 28
  store i16 %601, ptr %arrayidx122.i424, align 4
  %arrayidx123.i425 = getelementptr inbounds i8, ptr %arrayidx110.i413, i64 12
  %602 = load i16, ptr %arrayidx123.i425, align 2
  %arrayidx124.i426 = getelementptr inbounds i8, ptr %PredPel.i359, i64 30
  store i16 %602, ptr %arrayidx124.i426, align 2
  %arrayidx125.i427 = getelementptr inbounds i8, ptr %arrayidx110.i413, i64 14
  %603 = load i16, ptr %arrayidx125.i427, align 2
  %arrayidx126.i428 = getelementptr inbounds i8, ptr %PredPel.i359, i64 32
  store i16 %603, ptr %arrayidx126.i428, align 16
  br label %if.end137.i

if.else127.i:                                     ; preds = %if.end102.i
  %arrayidx136.i488 = getelementptr inbounds i8, ptr %PredPel.i359, i64 18
  %604 = insertelement <8 x i16> poison, i16 %592, i64 0
  %605 = shufflevector <8 x i16> %604, <8 x i16> poison, <8 x i32> zeroinitializer
  store <8 x i16> %605, ptr %arrayidx136.i488, align 2
  br label %if.end137.i

if.end137.i:                                      ; preds = %if.else127.i, %if.then104.i
  %tobool138.not.i = icmp eq i32 %block_available_left.0.i389, 0
  br i1 %tobool138.not.i, label %if.else174.i, label %if.then139.i

if.then139.i:                                     ; preds = %if.end137.i
  %pos_y140.i = getelementptr inbounds i8, ptr %pix_a.i360, i64 14
  %606 = load i16, ptr %pos_y140.i, align 2
  %idxprom141.i = sext i16 %606 to i64
  %arrayidx142.i429 = getelementptr inbounds ptr, ptr %cond.i372, i64 %idxprom141.i
  %pos_x144.i = getelementptr inbounds i8, ptr %pix_a.i360, i64 12
  %607 = load i16, ptr %pos_x144.i, align 4
  %incdec.ptr.i430 = getelementptr inbounds i8, ptr %arrayidx142.i429, i64 8
  %608 = load ptr, ptr %arrayidx142.i429, align 8
  %idx.ext.i431 = sext i16 %607 to i64
  %add.ptr.i432 = getelementptr inbounds i16, ptr %608, i64 %idx.ext.i431
  %609 = load i16, ptr %add.ptr.i432, align 2
  %arrayidx146.i433 = getelementptr inbounds i8, ptr %PredPel.i359, i64 34
  store i16 %609, ptr %arrayidx146.i433, align 2
  %incdec.ptr147.i434 = getelementptr inbounds i8, ptr %arrayidx142.i429, i64 16
  %610 = load ptr, ptr %incdec.ptr.i430, align 8
  %add.ptr149.i435 = getelementptr inbounds i16, ptr %610, i64 %idx.ext.i431
  %611 = load i16, ptr %add.ptr149.i435, align 2
  %arrayidx150.i436 = getelementptr inbounds i8, ptr %PredPel.i359, i64 36
  store i16 %611, ptr %arrayidx150.i436, align 4
  %incdec.ptr151.i437 = getelementptr inbounds i8, ptr %arrayidx142.i429, i64 24
  %612 = load ptr, ptr %incdec.ptr147.i434, align 8
  %add.ptr153.i438 = getelementptr inbounds i16, ptr %612, i64 %idx.ext.i431
  %613 = load i16, ptr %add.ptr153.i438, align 2
  %arrayidx154.i439 = getelementptr inbounds i8, ptr %PredPel.i359, i64 38
  store i16 %613, ptr %arrayidx154.i439, align 2
  %incdec.ptr155.i440 = getelementptr inbounds i8, ptr %arrayidx142.i429, i64 32
  %614 = load ptr, ptr %incdec.ptr151.i437, align 8
  %add.ptr157.i441 = getelementptr inbounds i16, ptr %614, i64 %idx.ext.i431
  %615 = load i16, ptr %add.ptr157.i441, align 2
  %arrayidx158.i442 = getelementptr inbounds i8, ptr %PredPel.i359, i64 40
  store i16 %615, ptr %arrayidx158.i442, align 8
  %incdec.ptr159.i443 = getelementptr inbounds i8, ptr %arrayidx142.i429, i64 40
  %616 = load ptr, ptr %incdec.ptr155.i440, align 8
  %add.ptr161.i444 = getelementptr inbounds i16, ptr %616, i64 %idx.ext.i431
  %617 = load i16, ptr %add.ptr161.i444, align 2
  %arrayidx162.i445 = getelementptr inbounds i8, ptr %PredPel.i359, i64 42
  store i16 %617, ptr %arrayidx162.i445, align 2
  %incdec.ptr163.i446 = getelementptr inbounds i8, ptr %arrayidx142.i429, i64 48
  %618 = load ptr, ptr %incdec.ptr159.i443, align 8
  %add.ptr165.i447 = getelementptr inbounds i16, ptr %618, i64 %idx.ext.i431
  %619 = load i16, ptr %add.ptr165.i447, align 2
  %arrayidx166.i448 = getelementptr inbounds i8, ptr %PredPel.i359, i64 44
  store i16 %619, ptr %arrayidx166.i448, align 4
  %incdec.ptr167.i = getelementptr inbounds i8, ptr %arrayidx142.i429, i64 56
  %620 = load ptr, ptr %incdec.ptr163.i446, align 8
  %add.ptr169.i = getelementptr inbounds i16, ptr %620, i64 %idx.ext.i431
  %621 = load i16, ptr %add.ptr169.i, align 2
  %arrayidx170.i = getelementptr inbounds i8, ptr %PredPel.i359, i64 46
  store i16 %621, ptr %arrayidx170.i, align 2
  %622 = load ptr, ptr %incdec.ptr167.i, align 8
  %add.ptr172.i = getelementptr inbounds i16, ptr %622, i64 %idx.ext.i431
  %623 = load i16, ptr %add.ptr172.i, align 2
  %arrayidx173.i449 = getelementptr inbounds i8, ptr %PredPel.i359, i64 48
  store i16 %623, ptr %arrayidx173.i449, align 16
  br label %if.end187.i

if.else174.i:                                     ; preds = %if.end137.i
  %dc_pred_value_comp175.i = getelementptr inbounds i8, ptr %552, i64 849060
  %arrayidx177.i472 = getelementptr inbounds [3 x i32], ptr %dc_pred_value_comp175.i, i64 0, i64 %idxprom5.i
  %624 = load i32, ptr %arrayidx177.i472, align 4
  %conv178.i = trunc i32 %624 to i16
  %arrayidx186.i480 = getelementptr inbounds i8, ptr %PredPel.i359, i64 34
  %625 = insertelement <8 x i16> poison, i16 %conv178.i, i64 0
  %626 = shufflevector <8 x i16> %625, <8 x i16> poison, <8 x i32> zeroinitializer
  store <8 x i16> %626, ptr %arrayidx186.i480, align 2
  br label %if.end187.i

if.end187.i:                                      ; preds = %if.else174.i, %if.then139.i
  %tobool188.not.i = icmp eq i32 %block_available_up_left.0.i387, 0
  br i1 %tobool188.not.i, label %if.else197.i, label %if.then189.i

if.then189.i:                                     ; preds = %if.end187.i
  %pos_y190.i = getelementptr inbounds i8, ptr %pix_d.i363, i64 14
  %627 = load i16, ptr %pos_y190.i, align 2
  %idxprom191.i = sext i16 %627 to i64
  %arrayidx192.i = getelementptr inbounds ptr, ptr %cond.i372, i64 %idxprom191.i
  %628 = load ptr, ptr %arrayidx192.i, align 8
  %pos_x193.i = getelementptr inbounds i8, ptr %pix_d.i363, i64 12
  %629 = load i16, ptr %pos_x193.i, align 4
  %idxprom194.i = sext i16 %629 to i64
  %arrayidx195.i = getelementptr inbounds i16, ptr %628, i64 %idxprom194.i
  %630 = load i16, ptr %arrayidx195.i, align 2
  br label %intra8x8_diag_down_left_pred.exit

if.else197.i:                                     ; preds = %if.end187.i
  %dc_pred_value_comp198.i = getelementptr inbounds i8, ptr %552, i64 849060
  %arrayidx200.i = getelementptr inbounds [3 x i32], ptr %dc_pred_value_comp198.i, i64 0, i64 %idxprom5.i
  %631 = load i32, ptr %arrayidx200.i, align 4
  %conv201.i = trunc i32 %631 to i16
  br label %intra8x8_diag_down_left_pred.exit

intra8x8_diag_down_left_pred.exit:                ; preds = %if.then189.i, %if.else197.i
  %storemerge.i450 = phi i16 [ %630, %if.then189.i ], [ %conv201.i, %if.else197.i ]
  store i16 %storemerge.i450, ptr %PredPel.i359, align 16
  call fastcc void @LowPassForIntra8x8Pred(ptr noundef nonnull %PredPel.i359, i32 noundef %block_available_up_left.0.i387, i32 noundef %block_available_up.0.i390, i32 noundef %block_available_left.0.i389)
  %arrayidx205.i = getelementptr inbounds i8, ptr %PredPel.i359, i64 2
  %632 = load i16, ptr %arrayidx205.i, align 2
  %conv206.i = zext i16 %632 to i32
  %arrayidx207.i = getelementptr inbounds i8, ptr %PredPel.i359, i64 6
  %633 = load i16, ptr %arrayidx207.i, align 2
  %conv208.i452 = zext i16 %633 to i32
  %arrayidx210.i = getelementptr inbounds i8, ptr %PredPel.i359, i64 4
  %634 = load i16, ptr %arrayidx210.i, align 4
  %conv211.i = zext i16 %634 to i32
  %mul.i453 = shl nuw nsw i32 %conv211.i, 1
  %add209.i = add nuw nsw i32 %conv208.i452, 2
  %add212.i = add nuw nsw i32 %add209.i, %conv206.i
  %add213.i = add nuw nsw i32 %add212.i, %mul.i453
  %shr.i454 = lshr i32 %add213.i, 2
  %conv214.i = trunc nuw i32 %shr.i454 to i16
  %arrayidx218.i455 = getelementptr inbounds i8, ptr %PredPel.i359, i64 8
  %635 = load i16, ptr %arrayidx218.i455, align 8
  %conv219.i456 = zext i16 %635 to i32
  %mul223.i = shl nuw nsw i32 %conv208.i452, 1
  %add220.i457 = add nuw nsw i32 %conv219.i456, 2
  %add224.i = add nuw nsw i32 %mul223.i, %conv211.i
  %add225.i = add nuw nsw i32 %add224.i, %add220.i457
  %shr226.i = lshr i32 %add225.i, 2
  %conv227.i = trunc nuw i32 %shr226.i to i16
  %arrayidx231.i = getelementptr inbounds i8, ptr %PredPel.i359, i64 10
  %636 = load i16, ptr %arrayidx231.i, align 2
  %conv232.i = zext i16 %636 to i32
  %mul236.i = shl nuw nsw i32 %conv219.i456, 1
  %add237.i = add nuw nsw i32 %add209.i, %conv232.i
  %add238.i458 = add nuw nsw i32 %add237.i, %mul236.i
  %shr239.i = lshr i32 %add238.i458, 2
  %conv240.i459 = trunc nuw i32 %shr239.i to i16
  %arrayidx244.i = getelementptr inbounds i8, ptr %PredPel.i359, i64 12
  %637 = load i16, ptr %arrayidx244.i, align 4
  %conv245.i = zext i16 %637 to i32
  %mul249.i = shl nuw nsw i32 %conv232.i, 1
  %add250.i460 = add nuw nsw i32 %add220.i457, %conv245.i
  %add251.i461 = add nuw nsw i32 %add250.i460, %mul249.i
  %shr252.i = lshr i32 %add251.i461, 2
  %conv253.i = trunc nuw i32 %shr252.i to i16
  %arrayidx257.i462 = getelementptr inbounds i8, ptr %PredPel.i359, i64 14
  %638 = load i16, ptr %arrayidx257.i462, align 2
  %conv258.i463 = zext i16 %638 to i32
  %mul262.i = shl nuw nsw i32 %conv245.i, 1
  %add259.i = add nuw nsw i32 %conv258.i463, 2
  %add263.i = add nuw nsw i32 %add259.i, %conv232.i
  %add264.i464 = add nuw nsw i32 %add263.i, %mul262.i
  %shr265.i = lshr i32 %add264.i464, 2
  %conv266.i465 = trunc nuw i32 %shr265.i to i16
  %arrayidx270.i = getelementptr inbounds i8, ptr %PredPel.i359, i64 16
  %639 = load i16, ptr %arrayidx270.i, align 16
  %conv271.i = zext i16 %639 to i32
  %mul275.i = shl nuw nsw i32 %conv258.i463, 1
  %add272.i = add nuw nsw i32 %conv271.i, 2
  %add276.i466 = add nuw nsw i32 %add272.i, %conv245.i
  %add277.i = add nuw nsw i32 %add276.i466, %mul275.i
  %shr278.i = lshr i32 %add277.i, 2
  %conv279.i = trunc nuw i32 %shr278.i to i16
  %arrayidx283.i = getelementptr inbounds i8, ptr %PredPel.i359, i64 18
  %640 = load i16, ptr %arrayidx283.i, align 2
  %conv284.i = zext i16 %640 to i32
  %mul288.i = shl nuw nsw i32 %conv271.i, 1
  %add289.i = add nuw nsw i32 %add259.i, %conv284.i
  %add290.i = add nuw nsw i32 %add289.i, %mul288.i
  %shr291.i = lshr i32 %add290.i, 2
  %conv292.i = trunc nuw i32 %shr291.i to i16
  %arrayidx296.i = getelementptr inbounds i8, ptr %PredPel.i359, i64 20
  %641 = load i16, ptr %arrayidx296.i, align 4
  %conv297.i = zext i16 %641 to i32
  %mul301.i = shl nuw nsw i32 %conv284.i, 1
  %add302.i = add nuw nsw i32 %add272.i, %conv297.i
  %add303.i467 = add nuw nsw i32 %add302.i, %mul301.i
  %shr304.i = lshr i32 %add303.i467, 2
  %conv305.i468 = trunc nuw i32 %shr304.i to i16
  %arrayidx309.i = getelementptr inbounds i8, ptr %PredPel.i359, i64 22
  %642 = load i16, ptr %arrayidx309.i, align 2
  %conv310.i = zext i16 %642 to i32
  %mul314.i = shl nuw nsw i32 %conv297.i, 1
  %add311.i = add nuw nsw i32 %conv284.i, 2
  %add315.i = add nuw nsw i32 %add311.i, %conv310.i
  %add316.i = add nuw nsw i32 %add315.i, %mul314.i
  %shr317.i = lshr i32 %add316.i, 2
  %conv318.i = trunc nuw i32 %shr317.i to i16
  %arrayidx322.i = getelementptr inbounds i8, ptr %PredPel.i359, i64 24
  %643 = load i16, ptr %arrayidx322.i, align 8
  %conv323.i = zext i16 %643 to i32
  %mul327.i = shl nuw nsw i32 %conv310.i, 1
  %add324.i = add nuw nsw i32 %conv297.i, 2
  %add328.i = add nuw nsw i32 %add324.i, %conv323.i
  %add329.i = add nuw nsw i32 %add328.i, %mul327.i
  %shr330.i = lshr i32 %add329.i, 2
  %conv331.i = trunc nuw i32 %shr330.i to i16
  %arrayidx335.i = getelementptr inbounds i8, ptr %PredPel.i359, i64 26
  %644 = load i16, ptr %arrayidx335.i, align 2
  %conv336.i = zext i16 %644 to i32
  %mul340.i = shl nuw nsw i32 %conv323.i, 1
  %add337.i = add nuw nsw i32 %conv310.i, 2
  %add341.i = add nuw nsw i32 %add337.i, %conv336.i
  %add342.i = add nuw nsw i32 %add341.i, %mul340.i
  %shr343.i = lshr i32 %add342.i, 2
  %conv344.i = trunc nuw i32 %shr343.i to i16
  %arrayidx348.i = getelementptr inbounds i8, ptr %PredPel.i359, i64 28
  %645 = load i16, ptr %arrayidx348.i, align 4
  %conv349.i = zext i16 %645 to i32
  %mul353.i = shl nuw nsw i32 %conv336.i, 1
  %add350.i = add nuw nsw i32 %conv323.i, 2
  %add354.i = add nuw nsw i32 %add350.i, %conv349.i
  %add355.i = add nuw nsw i32 %add354.i, %mul353.i
  %shr356.i = lshr i32 %add355.i, 2
  %conv357.i = trunc nuw i32 %shr356.i to i16
  %arrayidx361.i = getelementptr inbounds i8, ptr %PredPel.i359, i64 30
  %646 = load i16, ptr %arrayidx361.i, align 2
  %conv362.i = zext i16 %646 to i32
  %mul366.i = shl nuw nsw i32 %conv349.i, 1
  %add363.i = add nuw nsw i32 %conv336.i, 2
  %add367.i = add nuw nsw i32 %add363.i, %conv362.i
  %add368.i = add nuw nsw i32 %add367.i, %mul366.i
  %shr369.i = lshr i32 %add368.i, 2
  %conv370.i = trunc nuw i32 %shr369.i to i16
  %arrayidx374.i = getelementptr inbounds i8, ptr %PredPel.i359, i64 32
  %647 = load i16, ptr %arrayidx374.i, align 16
  %conv375.i = zext i16 %647 to i32
  %mul379.i = shl nuw nsw i32 %conv362.i, 1
  %add376.i = add nuw nsw i32 %conv349.i, 2
  %add380.i = add nuw nsw i32 %add376.i, %conv375.i
  %add381.i = add nuw nsw i32 %add380.i, %mul379.i
  %shr382.i = lshr i32 %add381.i, 2
  %conv383.i = trunc nuw i32 %shr382.i to i16
  %mul389.i = mul nuw nsw i32 %conv375.i, 3
  %add390.i = add nuw nsw i32 %conv362.i, 2
  %add391.i469 = add nuw nsw i32 %add390.i, %mul389.i
  %shr392.i = lshr i32 %add391.i469, 2
  %conv393.i = trunc nuw i32 %shr392.i to i16
  %idxprom395.i = sext i32 %joff to i64
  %arrayidx396.i = getelementptr inbounds ptr, ptr %556, i64 %idxprom395.i
  %648 = load ptr, ptr %arrayidx396.i, align 8
  %idxprom397.i = sext i32 %ioff to i64
  %arrayidx398.i = getelementptr inbounds i16, ptr %648, i64 %idxprom397.i
  store i16 %conv214.i, ptr %arrayidx398.i, align 2
  %PredArray.sroa.4.0.arrayidx398.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx398.i, i64 2
  store i16 %conv227.i, ptr %PredArray.sroa.4.0.arrayidx398.sroa_idx.i, align 2
  %PredArray.sroa.6.0.arrayidx398.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx398.i, i64 4
  store i16 %conv240.i459, ptr %PredArray.sroa.6.0.arrayidx398.sroa_idx.i, align 2
  %PredArray.sroa.8.0.arrayidx398.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx398.i, i64 6
  store i16 %conv253.i, ptr %PredArray.sroa.8.0.arrayidx398.sroa_idx.i, align 2
  %PredArray.sroa.10.0.arrayidx398.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx398.i, i64 8
  store i16 %conv266.i465, ptr %PredArray.sroa.10.0.arrayidx398.sroa_idx.i, align 2
  %PredArray.sroa.12.0.arrayidx398.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx398.i, i64 10
  store i16 %conv279.i, ptr %PredArray.sroa.12.0.arrayidx398.sroa_idx.i, align 2
  %PredArray.sroa.14.0.arrayidx398.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx398.i, i64 12
  store i16 %conv292.i, ptr %PredArray.sroa.14.0.arrayidx398.sroa_idx.i, align 2
  %PredArray.sroa.16.0.arrayidx398.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx398.i, i64 14
  store i16 %conv305.i468, ptr %PredArray.sroa.16.0.arrayidx398.sroa_idx.i, align 2
  %arrayidx402.i = getelementptr i8, ptr %arrayidx396.i, i64 8
  %649 = load ptr, ptr %arrayidx402.i, align 8
  %arrayidx404.i = getelementptr inbounds i16, ptr %649, i64 %idxprom397.i
  store i16 %conv227.i, ptr %arrayidx404.i, align 2
  %PredArray.sroa.6.2.arrayidx404.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx404.i, i64 2
  store i16 %conv240.i459, ptr %PredArray.sroa.6.2.arrayidx404.sroa_idx.i, align 2
  %PredArray.sroa.8.2.arrayidx404.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx404.i, i64 4
  store i16 %conv253.i, ptr %PredArray.sroa.8.2.arrayidx404.sroa_idx.i, align 2
  %PredArray.sroa.10.2.arrayidx404.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx404.i, i64 6
  store i16 %conv266.i465, ptr %PredArray.sroa.10.2.arrayidx404.sroa_idx.i, align 2
  %PredArray.sroa.12.2.arrayidx404.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx404.i, i64 8
  store i16 %conv279.i, ptr %PredArray.sroa.12.2.arrayidx404.sroa_idx.i, align 2
  %PredArray.sroa.14.2.arrayidx404.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx404.i, i64 10
  store i16 %conv292.i, ptr %PredArray.sroa.14.2.arrayidx404.sroa_idx.i, align 2
  %PredArray.sroa.16.2.arrayidx404.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx404.i, i64 12
  store i16 %conv305.i468, ptr %PredArray.sroa.16.2.arrayidx404.sroa_idx.i, align 2
  %PredArray.sroa.18.2.arrayidx404.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx404.i, i64 14
  store i16 %conv318.i, ptr %PredArray.sroa.18.2.arrayidx404.sroa_idx.i, align 2
  %arrayidx408.i = getelementptr i8, ptr %arrayidx396.i, i64 16
  %650 = load ptr, ptr %arrayidx408.i, align 8
  %arrayidx410.i = getelementptr inbounds i16, ptr %650, i64 %idxprom397.i
  store i16 %conv240.i459, ptr %arrayidx410.i, align 2
  %PredArray.sroa.8.4.arrayidx410.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx410.i, i64 2
  store i16 %conv253.i, ptr %PredArray.sroa.8.4.arrayidx410.sroa_idx.i, align 2
  %PredArray.sroa.10.4.arrayidx410.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx410.i, i64 4
  store i16 %conv266.i465, ptr %PredArray.sroa.10.4.arrayidx410.sroa_idx.i, align 2
  %PredArray.sroa.12.4.arrayidx410.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx410.i, i64 6
  store i16 %conv279.i, ptr %PredArray.sroa.12.4.arrayidx410.sroa_idx.i, align 2
  %PredArray.sroa.14.4.arrayidx410.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx410.i, i64 8
  store i16 %conv292.i, ptr %PredArray.sroa.14.4.arrayidx410.sroa_idx.i, align 2
  %PredArray.sroa.16.4.arrayidx410.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx410.i, i64 10
  store i16 %conv305.i468, ptr %PredArray.sroa.16.4.arrayidx410.sroa_idx.i, align 2
  %PredArray.sroa.18.4.arrayidx410.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx410.i, i64 12
  store i16 %conv318.i, ptr %PredArray.sroa.18.4.arrayidx410.sroa_idx.i, align 2
  %PredArray.sroa.19.4.arrayidx410.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx410.i, i64 14
  store i16 %conv331.i, ptr %PredArray.sroa.19.4.arrayidx410.sroa_idx.i, align 2
  %arrayidx414.i = getelementptr i8, ptr %arrayidx396.i, i64 24
  %651 = load ptr, ptr %arrayidx414.i, align 8
  %arrayidx416.i = getelementptr inbounds i16, ptr %651, i64 %idxprom397.i
  store i16 %conv253.i, ptr %arrayidx416.i, align 2
  %PredArray.sroa.10.6.arrayidx416.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx416.i, i64 2
  store i16 %conv266.i465, ptr %PredArray.sroa.10.6.arrayidx416.sroa_idx.i, align 2
  %PredArray.sroa.12.6.arrayidx416.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx416.i, i64 4
  store i16 %conv279.i, ptr %PredArray.sroa.12.6.arrayidx416.sroa_idx.i, align 2
  %PredArray.sroa.14.6.arrayidx416.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx416.i, i64 6
  store i16 %conv292.i, ptr %PredArray.sroa.14.6.arrayidx416.sroa_idx.i, align 2
  %PredArray.sroa.16.6.arrayidx416.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx416.i, i64 8
  store i16 %conv305.i468, ptr %PredArray.sroa.16.6.arrayidx416.sroa_idx.i, align 2
  %PredArray.sroa.18.6.arrayidx416.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx416.i, i64 10
  store i16 %conv318.i, ptr %PredArray.sroa.18.6.arrayidx416.sroa_idx.i, align 2
  %PredArray.sroa.19.6.arrayidx416.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx416.i, i64 12
  store i16 %conv331.i, ptr %PredArray.sroa.19.6.arrayidx416.sroa_idx.i, align 2
  %PredArray.sroa.20.6.arrayidx416.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx416.i, i64 14
  store i16 %conv344.i, ptr %PredArray.sroa.20.6.arrayidx416.sroa_idx.i, align 2
  %arrayidx420.i = getelementptr i8, ptr %arrayidx396.i, i64 32
  %652 = load ptr, ptr %arrayidx420.i, align 8
  %arrayidx422.i = getelementptr inbounds i16, ptr %652, i64 %idxprom397.i
  store i16 %conv266.i465, ptr %arrayidx422.i, align 2
  %PredArray.sroa.12.8.arrayidx422.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx422.i, i64 2
  store i16 %conv279.i, ptr %PredArray.sroa.12.8.arrayidx422.sroa_idx.i, align 2
  %PredArray.sroa.14.8.arrayidx422.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx422.i, i64 4
  store i16 %conv292.i, ptr %PredArray.sroa.14.8.arrayidx422.sroa_idx.i, align 2
  %PredArray.sroa.16.8.arrayidx422.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx422.i, i64 6
  store i16 %conv305.i468, ptr %PredArray.sroa.16.8.arrayidx422.sroa_idx.i, align 2
  %PredArray.sroa.18.8.arrayidx422.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx422.i, i64 8
  store i16 %conv318.i, ptr %PredArray.sroa.18.8.arrayidx422.sroa_idx.i, align 2
  %PredArray.sroa.19.8.arrayidx422.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx422.i, i64 10
  store i16 %conv331.i, ptr %PredArray.sroa.19.8.arrayidx422.sroa_idx.i, align 2
  %PredArray.sroa.20.8.arrayidx422.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx422.i, i64 12
  store i16 %conv344.i, ptr %PredArray.sroa.20.8.arrayidx422.sroa_idx.i, align 2
  %PredArray.sroa.21.8.arrayidx422.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx422.i, i64 14
  store i16 %conv357.i, ptr %PredArray.sroa.21.8.arrayidx422.sroa_idx.i, align 2
  %arrayidx426.i = getelementptr i8, ptr %arrayidx396.i, i64 40
  %653 = load ptr, ptr %arrayidx426.i, align 8
  %arrayidx428.i = getelementptr inbounds i16, ptr %653, i64 %idxprom397.i
  store i16 %conv279.i, ptr %arrayidx428.i, align 2
  %PredArray.sroa.14.10.arrayidx428.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx428.i, i64 2
  store i16 %conv292.i, ptr %PredArray.sroa.14.10.arrayidx428.sroa_idx.i, align 2
  %PredArray.sroa.16.10.arrayidx428.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx428.i, i64 4
  store i16 %conv305.i468, ptr %PredArray.sroa.16.10.arrayidx428.sroa_idx.i, align 2
  %PredArray.sroa.18.10.arrayidx428.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx428.i, i64 6
  store i16 %conv318.i, ptr %PredArray.sroa.18.10.arrayidx428.sroa_idx.i, align 2
  %PredArray.sroa.19.10.arrayidx428.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx428.i, i64 8
  store i16 %conv331.i, ptr %PredArray.sroa.19.10.arrayidx428.sroa_idx.i, align 2
  %PredArray.sroa.20.10.arrayidx428.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx428.i, i64 10
  store i16 %conv344.i, ptr %PredArray.sroa.20.10.arrayidx428.sroa_idx.i, align 2
  %PredArray.sroa.21.10.arrayidx428.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx428.i, i64 12
  store i16 %conv357.i, ptr %PredArray.sroa.21.10.arrayidx428.sroa_idx.i, align 2
  %PredArray.sroa.22.10.arrayidx428.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx428.i, i64 14
  store i16 %conv370.i, ptr %PredArray.sroa.22.10.arrayidx428.sroa_idx.i, align 2
  %arrayidx432.i = getelementptr i8, ptr %arrayidx396.i, i64 48
  %654 = load ptr, ptr %arrayidx432.i, align 8
  %arrayidx434.i = getelementptr inbounds i16, ptr %654, i64 %idxprom397.i
  store i16 %conv292.i, ptr %arrayidx434.i, align 2
  %PredArray.sroa.16.12.arrayidx434.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx434.i, i64 2
  store i16 %conv305.i468, ptr %PredArray.sroa.16.12.arrayidx434.sroa_idx.i, align 2
  %PredArray.sroa.18.12.arrayidx434.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx434.i, i64 4
  store i16 %conv318.i, ptr %PredArray.sroa.18.12.arrayidx434.sroa_idx.i, align 2
  %PredArray.sroa.19.12.arrayidx434.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx434.i, i64 6
  store i16 %conv331.i, ptr %PredArray.sroa.19.12.arrayidx434.sroa_idx.i, align 2
  %PredArray.sroa.20.12.arrayidx434.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx434.i, i64 8
  store i16 %conv344.i, ptr %PredArray.sroa.20.12.arrayidx434.sroa_idx.i, align 2
  %PredArray.sroa.21.12.arrayidx434.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx434.i, i64 10
  store i16 %conv357.i, ptr %PredArray.sroa.21.12.arrayidx434.sroa_idx.i, align 2
  %PredArray.sroa.22.12.arrayidx434.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx434.i, i64 12
  store i16 %conv370.i, ptr %PredArray.sroa.22.12.arrayidx434.sroa_idx.i, align 2
  %PredArray.sroa.23.12.arrayidx434.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx434.i, i64 14
  store i16 %conv383.i, ptr %PredArray.sroa.23.12.arrayidx434.sroa_idx.i, align 2
  %arrayidx437.i470 = getelementptr i8, ptr %arrayidx396.i, i64 56
  %655 = load ptr, ptr %arrayidx437.i470, align 8
  %arrayidx439.i471 = getelementptr inbounds i16, ptr %655, i64 %idxprom397.i
  store i16 %conv305.i468, ptr %arrayidx439.i471, align 2
  %PredArray.sroa.18.14.arrayidx439.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx439.i471, i64 2
  store i16 %conv318.i, ptr %PredArray.sroa.18.14.arrayidx439.sroa_idx.i, align 2
  %PredArray.sroa.19.14.arrayidx439.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx439.i471, i64 4
  store i16 %conv331.i, ptr %PredArray.sroa.19.14.arrayidx439.sroa_idx.i, align 2
  %PredArray.sroa.20.14.arrayidx439.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx439.i471, i64 6
  store i16 %conv344.i, ptr %PredArray.sroa.20.14.arrayidx439.sroa_idx.i, align 2
  %PredArray.sroa.21.14.arrayidx439.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx439.i471, i64 8
  store i16 %conv357.i, ptr %PredArray.sroa.21.14.arrayidx439.sroa_idx.i, align 2
  %PredArray.sroa.22.14.arrayidx439.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx439.i471, i64 10
  store i16 %conv370.i, ptr %PredArray.sroa.22.14.arrayidx439.sroa_idx.i, align 2
  %PredArray.sroa.23.14.arrayidx439.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx439.i471, i64 12
  store i16 %conv383.i, ptr %PredArray.sroa.23.14.arrayidx439.sroa_idx.i, align 2
  %PredArray.sroa.24.14.arrayidx439.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx439.i471, i64 14
  store i16 %conv393.i, ptr %PredArray.sroa.24.14.arrayidx439.sroa_idx.i, align 2
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pix_d.i363) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pix_c.i362) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pix_b.i361) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pix_a.i360) #6
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %PredPel.i359) #6
  br label %cleanup

sw.bb15:                                          ; preds = %entry
  %p_Vid1.i508 = getelementptr inbounds i8, ptr %currMB, i64 8
  %656 = load ptr, ptr %p_Vid1.i508, align 8
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %PredPel.i503) #6
  %tobool.not.i509 = icmp eq i32 %pl, 0
  %dec_picture2.i510 = getelementptr inbounds i8, ptr %2, i64 13520
  %657 = load ptr, ptr %dec_picture2.i510, align 8
  br i1 %tobool.not.i509, label %cond.false.i759, label %cond.true.i511

cond.true.i511:                                   ; preds = %sw.bb15
  %imgUV.i512 = getelementptr inbounds i8, ptr %657, i64 136
  %658 = load ptr, ptr %imgUV.i512, align 8
  %sub.i513 = add i32 %pl, -1
  %idxprom.i514 = zext i32 %sub.i513 to i64
  %arrayidx.i515 = getelementptr inbounds ptr, ptr %658, i64 %idxprom.i514
  br label %cond.end.i516

cond.false.i759:                                  ; preds = %sw.bb15
  %imgY3.i760 = getelementptr inbounds i8, ptr %657, i64 128
  br label %cond.end.i516

cond.end.i516:                                    ; preds = %cond.false.i759, %cond.true.i511
  %cond.in.i517 = phi ptr [ %arrayidx.i515, %cond.true.i511 ], [ %imgY3.i760, %cond.false.i759 ]
  %cond.i518 = load ptr, ptr %cond.in.i517, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pix_a.i504) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pix_b.i505) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pix_c.i506) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pix_d.i507) #6
  %mb_pred.i519 = getelementptr inbounds i8, ptr %2, i64 1248
  %659 = load ptr, ptr %mb_pred.i519, align 8
  %idxprom4.i520 = zext i32 %pl to i64
  %arrayidx5.i521 = getelementptr inbounds ptr, ptr %659, i64 %idxprom4.i520
  %660 = load ptr, ptr %arrayidx5.i521, align 8
  %mb_size6.i522 = getelementptr inbounds i8, ptr %656, i64 849124
  %sub8.i523 = add nsw i32 %ioff, -1
  call void @getNonAffNeighbour(ptr noundef nonnull %currMB, i32 noundef %sub8.i523, i32 noundef %joff, ptr noundef nonnull %mb_size6.i522, ptr noundef nonnull %pix_a.i504) #6
  %sub9.i524 = add nsw i32 %joff, -1
  call void @getNonAffNeighbour(ptr noundef nonnull %currMB, i32 noundef %ioff, i32 noundef %sub9.i524, ptr noundef nonnull %mb_size6.i522, ptr noundef nonnull %pix_b.i505) #6
  %add.i525 = add nsw i32 %ioff, 8
  call void @getNonAffNeighbour(ptr noundef nonnull %currMB, i32 noundef %add.i525, i32 noundef %sub9.i524, ptr noundef nonnull %mb_size6.i522, ptr noundef nonnull %pix_c.i506) #6
  call void @getNonAffNeighbour(ptr noundef nonnull %currMB, i32 noundef %sub8.i523, i32 noundef %sub9.i524, ptr noundef nonnull %mb_size6.i522, ptr noundef nonnull %pix_d.i507) #6
  %661 = load i32, ptr %pix_c.i506, align 4
  %tobool13.not.i526 = icmp ne i32 %661, 0
  %cmp.i527 = icmp ne i32 %ioff, 8
  %cmp15.i528 = icmp ne i32 %joff, 8
  %.not.i529 = or i1 %cmp.i527, %cmp15.i528
  %narrow.i530 = and i1 %.not.i529, %tobool13.not.i526
  %land.ext.i531 = zext i1 %narrow.i530 to i32
  store i32 %land.ext.i531, ptr %pix_c.i506, align 4
  %active_pps.i532 = getelementptr inbounds i8, ptr %656, i64 8
  %662 = load ptr, ptr %active_pps.i532, align 8
  %constrained_intra_pred_flag.i533 = getelementptr inbounds i8, ptr %662, i64 2204
  %663 = load i32, ptr %constrained_intra_pred_flag.i533, align 4
  %tobool18.not.i534 = icmp eq i32 %663, 0
  %664 = load i32, ptr %pix_a.i504, align 4
  br i1 %tobool18.not.i534, label %if.else.i758, label %if.then.i535

if.then.i535:                                     ; preds = %cond.end.i516
  %tobool20.not.i536 = icmp eq i32 %664, 0
  br i1 %tobool20.not.i536, label %cond.end25.i543, label %cond.true21.i537

cond.true21.i537:                                 ; preds = %if.then.i535
  %intra_block.i538 = getelementptr inbounds i8, ptr %2, i64 13544
  %665 = load ptr, ptr %intra_block.i538, align 8
  %mb_addr.i539 = getelementptr inbounds i8, ptr %pix_a.i504, i64 4
  %666 = load i32, ptr %mb_addr.i539, align 4
  %idxprom22.i540 = sext i32 %666 to i64
  %arrayidx23.i541 = getelementptr inbounds i8, ptr %665, i64 %idxprom22.i540
  %667 = load i8, ptr %arrayidx23.i541, align 1
  %conv.i542 = sext i8 %667 to i32
  br label %cond.end25.i543

cond.end25.i543:                                  ; preds = %cond.true21.i537, %if.then.i535
  %cond26.i544 = phi i32 [ %conv.i542, %cond.true21.i537 ], [ 0, %if.then.i535 ]
  %668 = load i32, ptr %pix_b.i505, align 4
  %tobool28.not.i545 = icmp eq i32 %668, 0
  br i1 %tobool28.not.i545, label %cond.end36.i552, label %cond.true29.i546

cond.true29.i546:                                 ; preds = %cond.end25.i543
  %intra_block30.i547 = getelementptr inbounds i8, ptr %2, i64 13544
  %669 = load ptr, ptr %intra_block30.i547, align 8
  %mb_addr31.i548 = getelementptr inbounds i8, ptr %pix_b.i505, i64 4
  %670 = load i32, ptr %mb_addr31.i548, align 4
  %idxprom32.i549 = sext i32 %670 to i64
  %arrayidx33.i550 = getelementptr inbounds i8, ptr %669, i64 %idxprom32.i549
  %671 = load i8, ptr %arrayidx33.i550, align 1
  %conv34.i551 = sext i8 %671 to i32
  br label %cond.end36.i552

cond.end36.i552:                                  ; preds = %cond.true29.i546, %cond.end25.i543
  %cond37.i553 = phi i32 [ %conv34.i551, %cond.true29.i546 ], [ 0, %cond.end25.i543 ]
  br i1 %narrow.i530, label %cond.true40.i752, label %cond.end47.i554

cond.true40.i752:                                 ; preds = %cond.end36.i552
  %intra_block41.i753 = getelementptr inbounds i8, ptr %2, i64 13544
  %672 = load ptr, ptr %intra_block41.i753, align 8
  %mb_addr42.i754 = getelementptr inbounds i8, ptr %pix_c.i506, i64 4
  %673 = load i32, ptr %mb_addr42.i754, align 4
  %idxprom43.i755 = sext i32 %673 to i64
  %arrayidx44.i756 = getelementptr inbounds i8, ptr %672, i64 %idxprom43.i755
  %674 = load i8, ptr %arrayidx44.i756, align 1
  %conv45.i757 = sext i8 %674 to i32
  br label %cond.end47.i554

cond.end47.i554:                                  ; preds = %cond.true40.i752, %cond.end36.i552
  %cond48.i555 = phi i32 [ %conv45.i757, %cond.true40.i752 ], [ 0, %cond.end36.i552 ]
  %675 = load i32, ptr %pix_d.i507, align 4
  %tobool50.not.i556 = icmp eq i32 %675, 0
  br i1 %tobool50.not.i556, label %if.end.thread.i751, label %cond.true51.i557

if.end.thread.i751:                               ; preds = %cond.end47.i554
  %tobool64603.not.i = icmp eq i32 %cond37.i553, 0
  %tobool65604.i = icmp ne i32 %cond26.i544, 0
  %current_mb_nr640.i = getelementptr inbounds i8, ptr %2, i64 108
  %676 = load i32, ptr %current_mb_nr640.i, align 4
  %call641.i = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef %676)
  br i1 %tobool64603.not.i, label %if.else92.i575, label %if.then71.i729

cond.true51.i557:                                 ; preds = %cond.end47.i554
  %intra_block52.i558 = getelementptr inbounds i8, ptr %2, i64 13544
  %677 = load ptr, ptr %intra_block52.i558, align 8
  %mb_addr53.i559 = getelementptr inbounds i8, ptr %pix_d.i507, i64 4
  %678 = load i32, ptr %mb_addr53.i559, align 4
  %idxprom54.i560 = sext i32 %678 to i64
  %arrayidx55.i561 = getelementptr inbounds i8, ptr %677, i64 %idxprom54.i560
  %679 = load i8, ptr %arrayidx55.i561, align 1
  %conv56.i562 = sext i8 %679 to i32
  br label %if.end.i563

if.else.i758:                                     ; preds = %cond.end.i516
  %680 = load i32, ptr %pix_b.i505, align 4
  %681 = load i32, ptr %pix_d.i507, align 4
  br label %if.end.i563

if.end.i563:                                      ; preds = %if.else.i758, %cond.true51.i557
  %block_available_up_right.0.i564 = phi i32 [ %land.ext.i531, %if.else.i758 ], [ %cond48.i555, %cond.true51.i557 ]
  %block_available_up_left.0.i565 = phi i32 [ %681, %if.else.i758 ], [ %conv56.i562, %cond.true51.i557 ]
  %block_available_left.0.i566 = phi i32 [ %664, %if.else.i758 ], [ %cond26.i544, %cond.true51.i557 ]
  %block_available_up.0.i567 = phi i32 [ %680, %if.else.i758 ], [ %cond37.i553, %cond.true51.i557 ]
  %tobool64.i568 = icmp ne i32 %block_available_up.0.i567, 0
  %tobool65.i569 = icmp ne i32 %block_available_left.0.i566, 0
  %or.cond.i570 = select i1 %tobool64.i568, i1 %tobool65.i569, i1 false
  %tobool67.i571 = icmp ne i32 %block_available_up_left.0.i565, 0
  %or.cond505.i = select i1 %or.cond.i570, i1 %tobool67.i571, i1 false
  br i1 %or.cond505.i, label %if.then71.i729, label %if.then68.i572

if.then68.i572:                                   ; preds = %if.end.i563
  %current_mb_nr.i573 = getelementptr inbounds i8, ptr %2, i64 108
  %682 = load i32, ptr %current_mb_nr.i573, align 4
  %call.i574 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef %682)
  br i1 %tobool64.i568, label %if.then71.i729, label %if.else92.i575

if.then71.i729:                                   ; preds = %if.then68.i572, %if.end.i563, %if.end.thread.i751
  %block_available_up_right.0609639.i = phi i32 [ %block_available_up_right.0.i564, %if.then68.i572 ], [ %cond48.i555, %if.end.thread.i751 ], [ %block_available_up_right.0.i564, %if.end.i563 ]
  %block_available_up_left.0611636.i = phi i32 [ %block_available_up_left.0.i565, %if.then68.i572 ], [ 0, %if.end.thread.i751 ], [ %block_available_up_left.0.i565, %if.end.i563 ]
  %block_available_left.0613633.i = phi i32 [ %block_available_left.0.i566, %if.then68.i572 ], [ %cond26.i544, %if.end.thread.i751 ], [ %block_available_left.0.i566, %if.end.i563 ]
  %block_available_up.0615630.i = phi i32 [ %block_available_up.0.i567, %if.then68.i572 ], [ %cond37.i553, %if.end.thread.i751 ], [ %block_available_up.0.i567, %if.end.i563 ]
  %tobool65619627.i = phi i1 [ %tobool65.i569, %if.then68.i572 ], [ %tobool65604.i, %if.end.thread.i751 ], [ true, %if.end.i563 ]
  %tobool67621624.i = phi i1 [ %tobool67.i571, %if.then68.i572 ], [ false, %if.end.thread.i751 ], [ true, %if.end.i563 ]
  %pos_y.i730 = getelementptr inbounds i8, ptr %pix_b.i505, i64 14
  %683 = load i16, ptr %pos_y.i730, align 2
  %idxprom72.i731 = sext i16 %683 to i64
  %arrayidx73.i732 = getelementptr inbounds ptr, ptr %cond.i518, i64 %idxprom72.i731
  %684 = load ptr, ptr %arrayidx73.i732, align 8
  %pos_x.i733 = getelementptr inbounds i8, ptr %pix_b.i505, i64 12
  %685 = load i16, ptr %pos_x.i733, align 4
  %idxprom74.i734 = sext i16 %685 to i64
  %arrayidx75.i735 = getelementptr inbounds i16, ptr %684, i64 %idxprom74.i734
  %686 = load i16, ptr %arrayidx75.i735, align 2
  %arrayidx77.i736 = getelementptr inbounds i8, ptr %PredPel.i503, i64 2
  store i16 %686, ptr %arrayidx77.i736, align 2
  %arrayidx78.i737 = getelementptr inbounds i8, ptr %arrayidx75.i735, i64 2
  %687 = load i16, ptr %arrayidx78.i737, align 2
  %arrayidx79.i738 = getelementptr inbounds i8, ptr %PredPel.i503, i64 4
  store i16 %687, ptr %arrayidx79.i738, align 4
  %arrayidx80.i739 = getelementptr inbounds i8, ptr %arrayidx75.i735, i64 4
  %688 = load i16, ptr %arrayidx80.i739, align 2
  %arrayidx81.i740 = getelementptr inbounds i8, ptr %PredPel.i503, i64 6
  store i16 %688, ptr %arrayidx81.i740, align 2
  %arrayidx82.i741 = getelementptr inbounds i8, ptr %arrayidx75.i735, i64 6
  %689 = load i16, ptr %arrayidx82.i741, align 2
  %arrayidx83.i742 = getelementptr inbounds i8, ptr %PredPel.i503, i64 8
  store i16 %689, ptr %arrayidx83.i742, align 8
  %arrayidx84.i743 = getelementptr inbounds i8, ptr %arrayidx75.i735, i64 8
  %690 = load i16, ptr %arrayidx84.i743, align 2
  %arrayidx85.i744 = getelementptr inbounds i8, ptr %PredPel.i503, i64 10
  store i16 %690, ptr %arrayidx85.i744, align 2
  %arrayidx86.i745 = getelementptr inbounds i8, ptr %arrayidx75.i735, i64 10
  %691 = load i16, ptr %arrayidx86.i745, align 2
  %arrayidx87.i746 = getelementptr inbounds i8, ptr %PredPel.i503, i64 12
  store i16 %691, ptr %arrayidx87.i746, align 4
  %arrayidx88.i747 = getelementptr inbounds i8, ptr %arrayidx75.i735, i64 12
  %692 = load i16, ptr %arrayidx88.i747, align 2
  %arrayidx89.i748 = getelementptr inbounds i8, ptr %PredPel.i503, i64 14
  store i16 %692, ptr %arrayidx89.i748, align 2
  %arrayidx90.i749 = getelementptr inbounds i8, ptr %arrayidx75.i735, i64 14
  %693 = load i16, ptr %arrayidx90.i749, align 2
  %arrayidx91.i750 = getelementptr inbounds i8, ptr %PredPel.i503, i64 16
  store i16 %693, ptr %arrayidx91.i750, align 16
  br label %if.end104.i587

if.else92.i575:                                   ; preds = %if.then68.i572, %if.end.thread.i751
  %block_available_up_right.0609638.i = phi i32 [ %block_available_up_right.0.i564, %if.then68.i572 ], [ %cond48.i555, %if.end.thread.i751 ]
  %block_available_up_left.0611635.i = phi i32 [ %block_available_up_left.0.i565, %if.then68.i572 ], [ 0, %if.end.thread.i751 ]
  %block_available_left.0613632.i = phi i32 [ %block_available_left.0.i566, %if.then68.i572 ], [ %cond26.i544, %if.end.thread.i751 ]
  %tobool65619626.i = phi i1 [ %tobool65.i569, %if.then68.i572 ], [ %tobool65604.i, %if.end.thread.i751 ]
  %tobool67621623.i = phi i1 [ %tobool67.i571, %if.then68.i572 ], [ false, %if.end.thread.i751 ]
  %dc_pred_value_comp.i576 = getelementptr inbounds i8, ptr %656, i64 849060
  %arrayidx94.i577 = getelementptr inbounds [3 x i32], ptr %dc_pred_value_comp.i576, i64 0, i64 %idxprom4.i520
  %694 = load i32, ptr %arrayidx94.i577, align 4
  %conv95.i578 = trunc i32 %694 to i16
  %arrayidx103.i586 = getelementptr inbounds i8, ptr %PredPel.i503, i64 2
  %695 = insertelement <8 x i16> poison, i16 %conv95.i578, i64 0
  %696 = shufflevector <8 x i16> %695, <8 x i16> poison, <8 x i32> zeroinitializer
  store <8 x i16> %696, ptr %arrayidx103.i586, align 2
  br label %if.end104.i587

if.end104.i587:                                   ; preds = %if.else92.i575, %if.then71.i729
  %697 = phi i16 [ %conv95.i578, %if.else92.i575 ], [ %693, %if.then71.i729 ]
  %block_available_up_right.0609637.i = phi i32 [ %block_available_up_right.0609638.i, %if.else92.i575 ], [ %block_available_up_right.0609639.i, %if.then71.i729 ]
  %block_available_up_left.0611634.i = phi i32 [ %block_available_up_left.0611635.i, %if.else92.i575 ], [ %block_available_up_left.0611636.i, %if.then71.i729 ]
  %block_available_left.0613631.i = phi i32 [ %block_available_left.0613632.i, %if.else92.i575 ], [ %block_available_left.0613633.i, %if.then71.i729 ]
  %block_available_up.0615628.i = phi i32 [ 0, %if.else92.i575 ], [ %block_available_up.0615630.i, %if.then71.i729 ]
  %tobool65619625.i = phi i1 [ %tobool65619626.i, %if.else92.i575 ], [ %tobool65619627.i, %if.then71.i729 ]
  %tobool67621622.i = phi i1 [ %tobool67621623.i, %if.else92.i575 ], [ %tobool67621624.i, %if.then71.i729 ]
  %tobool105.not.i588 = icmp eq i32 %block_available_up_right.0609637.i, 0
  br i1 %tobool105.not.i588, label %if.else129.i720, label %if.then106.i589

if.then106.i589:                                  ; preds = %if.end104.i587
  %pos_y107.i590 = getelementptr inbounds i8, ptr %pix_c.i506, i64 14
  %698 = load i16, ptr %pos_y107.i590, align 2
  %idxprom108.i591 = sext i16 %698 to i64
  %arrayidx109.i592 = getelementptr inbounds ptr, ptr %cond.i518, i64 %idxprom108.i591
  %699 = load ptr, ptr %arrayidx109.i592, align 8
  %pos_x110.i593 = getelementptr inbounds i8, ptr %pix_c.i506, i64 12
  %700 = load i16, ptr %pos_x110.i593, align 4
  %idxprom111.i594 = sext i16 %700 to i64
  %arrayidx112.i595 = getelementptr inbounds i16, ptr %699, i64 %idxprom111.i594
  %701 = load i16, ptr %arrayidx112.i595, align 2
  %arrayidx114.i596 = getelementptr inbounds i8, ptr %PredPel.i503, i64 18
  store i16 %701, ptr %arrayidx114.i596, align 2
  %arrayidx115.i597 = getelementptr inbounds i8, ptr %arrayidx112.i595, i64 2
  %702 = load i16, ptr %arrayidx115.i597, align 2
  %arrayidx116.i598 = getelementptr inbounds i8, ptr %PredPel.i503, i64 20
  store i16 %702, ptr %arrayidx116.i598, align 4
  %arrayidx117.i599 = getelementptr inbounds i8, ptr %arrayidx112.i595, i64 4
  %703 = load i16, ptr %arrayidx117.i599, align 2
  %arrayidx118.i600 = getelementptr inbounds i8, ptr %PredPel.i503, i64 22
  store i16 %703, ptr %arrayidx118.i600, align 2
  %arrayidx119.i601 = getelementptr inbounds i8, ptr %arrayidx112.i595, i64 6
  %704 = load i16, ptr %arrayidx119.i601, align 2
  %arrayidx120.i602 = getelementptr inbounds i8, ptr %PredPel.i503, i64 24
  store i16 %704, ptr %arrayidx120.i602, align 8
  %arrayidx121.i603 = getelementptr inbounds i8, ptr %arrayidx112.i595, i64 8
  %705 = load i16, ptr %arrayidx121.i603, align 2
  %arrayidx122.i604 = getelementptr inbounds i8, ptr %PredPel.i503, i64 26
  store i16 %705, ptr %arrayidx122.i604, align 2
  %arrayidx123.i605 = getelementptr inbounds i8, ptr %arrayidx112.i595, i64 10
  %706 = load i16, ptr %arrayidx123.i605, align 2
  %arrayidx124.i606 = getelementptr inbounds i8, ptr %PredPel.i503, i64 28
  store i16 %706, ptr %arrayidx124.i606, align 4
  %arrayidx125.i607 = getelementptr inbounds i8, ptr %arrayidx112.i595, i64 12
  %707 = load i16, ptr %arrayidx125.i607, align 2
  %arrayidx126.i608 = getelementptr inbounds i8, ptr %PredPel.i503, i64 30
  store i16 %707, ptr %arrayidx126.i608, align 2
  %arrayidx127.i609 = getelementptr inbounds i8, ptr %arrayidx112.i595, i64 14
  %708 = load i16, ptr %arrayidx127.i609, align 2
  %arrayidx128.i610 = getelementptr inbounds i8, ptr %PredPel.i503, i64 32
  store i16 %708, ptr %arrayidx128.i610, align 16
  br label %if.end139.i611

if.else129.i720:                                  ; preds = %if.end104.i587
  %arrayidx138.i728 = getelementptr inbounds i8, ptr %PredPel.i503, i64 18
  %709 = insertelement <8 x i16> poison, i16 %697, i64 0
  %710 = shufflevector <8 x i16> %709, <8 x i16> poison, <8 x i32> zeroinitializer
  store <8 x i16> %710, ptr %arrayidx138.i728, align 2
  br label %if.end139.i611

if.end139.i611:                                   ; preds = %if.else129.i720, %if.then106.i589
  br i1 %tobool65619625.i, label %if.then141.i692, label %if.else176.i612

if.then141.i692:                                  ; preds = %if.end139.i611
  %pos_y142.i693 = getelementptr inbounds i8, ptr %pix_a.i504, i64 14
  %711 = load i16, ptr %pos_y142.i693, align 2
  %idxprom143.i694 = sext i16 %711 to i64
  %arrayidx144.i695 = getelementptr inbounds ptr, ptr %cond.i518, i64 %idxprom143.i694
  %pos_x146.i696 = getelementptr inbounds i8, ptr %pix_a.i504, i64 12
  %712 = load i16, ptr %pos_x146.i696, align 4
  %incdec.ptr.i697 = getelementptr inbounds i8, ptr %arrayidx144.i695, i64 8
  %713 = load ptr, ptr %arrayidx144.i695, align 8
  %idx.ext.i698 = sext i16 %712 to i64
  %add.ptr.i699 = getelementptr inbounds i16, ptr %713, i64 %idx.ext.i698
  %714 = load i16, ptr %add.ptr.i699, align 2
  %arrayidx148.i700 = getelementptr inbounds i8, ptr %PredPel.i503, i64 34
  store i16 %714, ptr %arrayidx148.i700, align 2
  %incdec.ptr149.i701 = getelementptr inbounds i8, ptr %arrayidx144.i695, i64 16
  %715 = load ptr, ptr %incdec.ptr.i697, align 8
  %add.ptr151.i702 = getelementptr inbounds i16, ptr %715, i64 %idx.ext.i698
  %716 = load i16, ptr %add.ptr151.i702, align 2
  %arrayidx152.i703 = getelementptr inbounds i8, ptr %PredPel.i503, i64 36
  store i16 %716, ptr %arrayidx152.i703, align 4
  %incdec.ptr153.i704 = getelementptr inbounds i8, ptr %arrayidx144.i695, i64 24
  %717 = load ptr, ptr %incdec.ptr149.i701, align 8
  %add.ptr155.i705 = getelementptr inbounds i16, ptr %717, i64 %idx.ext.i698
  %718 = load i16, ptr %add.ptr155.i705, align 2
  %arrayidx156.i706 = getelementptr inbounds i8, ptr %PredPel.i503, i64 38
  store i16 %718, ptr %arrayidx156.i706, align 2
  %incdec.ptr157.i707 = getelementptr inbounds i8, ptr %arrayidx144.i695, i64 32
  %719 = load ptr, ptr %incdec.ptr153.i704, align 8
  %add.ptr159.i708 = getelementptr inbounds i16, ptr %719, i64 %idx.ext.i698
  %720 = load i16, ptr %add.ptr159.i708, align 2
  %arrayidx160.i709 = getelementptr inbounds i8, ptr %PredPel.i503, i64 40
  store i16 %720, ptr %arrayidx160.i709, align 8
  %incdec.ptr161.i710 = getelementptr inbounds i8, ptr %arrayidx144.i695, i64 40
  %721 = load ptr, ptr %incdec.ptr157.i707, align 8
  %add.ptr163.i711 = getelementptr inbounds i16, ptr %721, i64 %idx.ext.i698
  %722 = load i16, ptr %add.ptr163.i711, align 2
  %arrayidx164.i712 = getelementptr inbounds i8, ptr %PredPel.i503, i64 42
  store i16 %722, ptr %arrayidx164.i712, align 2
  %incdec.ptr165.i713 = getelementptr inbounds i8, ptr %arrayidx144.i695, i64 48
  %723 = load ptr, ptr %incdec.ptr161.i710, align 8
  %add.ptr167.i714 = getelementptr inbounds i16, ptr %723, i64 %idx.ext.i698
  %724 = load i16, ptr %add.ptr167.i714, align 2
  %arrayidx168.i715 = getelementptr inbounds i8, ptr %PredPel.i503, i64 44
  store i16 %724, ptr %arrayidx168.i715, align 4
  %incdec.ptr169.i716 = getelementptr inbounds i8, ptr %arrayidx144.i695, i64 56
  %725 = load ptr, ptr %incdec.ptr165.i713, align 8
  %add.ptr171.i717 = getelementptr inbounds i16, ptr %725, i64 %idx.ext.i698
  %726 = load i16, ptr %add.ptr171.i717, align 2
  %arrayidx172.i718 = getelementptr inbounds i8, ptr %PredPel.i503, i64 46
  store i16 %726, ptr %arrayidx172.i718, align 2
  %727 = load ptr, ptr %incdec.ptr169.i716, align 8
  %add.ptr174.i719 = getelementptr inbounds i16, ptr %727, i64 %idx.ext.i698
  %728 = load i16, ptr %add.ptr174.i719, align 2
  br label %if.end189.i623

if.else176.i612:                                  ; preds = %if.end139.i611
  %dc_pred_value_comp177.i613 = getelementptr inbounds i8, ptr %656, i64 849060
  %arrayidx179.i614 = getelementptr inbounds [3 x i32], ptr %dc_pred_value_comp177.i613, i64 0, i64 %idxprom4.i520
  %729 = load i32, ptr %arrayidx179.i614, align 4
  %conv180.i615 = trunc i32 %729 to i16
  %arrayidx182.i616 = getelementptr inbounds i8, ptr %PredPel.i503, i64 46
  store i16 %conv180.i615, ptr %arrayidx182.i616, align 2
  %arrayidx183.i617 = getelementptr inbounds i8, ptr %PredPel.i503, i64 44
  store i16 %conv180.i615, ptr %arrayidx183.i617, align 4
  %arrayidx184.i618 = getelementptr inbounds i8, ptr %PredPel.i503, i64 42
  store i16 %conv180.i615, ptr %arrayidx184.i618, align 2
  %arrayidx188.i622 = getelementptr inbounds i8, ptr %PredPel.i503, i64 34
  %730 = insertelement <4 x i16> poison, i16 %conv180.i615, i64 0
  %731 = shufflevector <4 x i16> %730, <4 x i16> poison, <4 x i32> zeroinitializer
  store <4 x i16> %731, ptr %arrayidx188.i622, align 2
  br label %if.end189.i623

if.end189.i623:                                   ; preds = %if.else176.i612, %if.then141.i692
  %conv180.sink.i624 = phi i16 [ %728, %if.then141.i692 ], [ %conv180.i615, %if.else176.i612 ]
  %732 = getelementptr inbounds i8, ptr %PredPel.i503, i64 48
  store i16 %conv180.sink.i624, ptr %732, align 16
  br i1 %tobool67621622.i, label %if.then191.i685, label %if.else199.i625

if.then191.i685:                                  ; preds = %if.end189.i623
  %pos_y192.i686 = getelementptr inbounds i8, ptr %pix_d.i507, i64 14
  %733 = load i16, ptr %pos_y192.i686, align 2
  %idxprom193.i687 = sext i16 %733 to i64
  %arrayidx194.i688 = getelementptr inbounds ptr, ptr %cond.i518, i64 %idxprom193.i687
  %734 = load ptr, ptr %arrayidx194.i688, align 8
  %pos_x195.i689 = getelementptr inbounds i8, ptr %pix_d.i507, i64 12
  %735 = load i16, ptr %pos_x195.i689, align 4
  %idxprom196.i690 = sext i16 %735 to i64
  %arrayidx197.i691 = getelementptr inbounds i16, ptr %734, i64 %idxprom196.i690
  %736 = load i16, ptr %arrayidx197.i691, align 2
  br label %intra8x8_vert_right_pred.exit

if.else199.i625:                                  ; preds = %if.end189.i623
  %dc_pred_value_comp200.i626 = getelementptr inbounds i8, ptr %656, i64 849060
  %arrayidx202.i627 = getelementptr inbounds [3 x i32], ptr %dc_pred_value_comp200.i626, i64 0, i64 %idxprom4.i520
  %737 = load i32, ptr %arrayidx202.i627, align 4
  %conv203.i628 = trunc i32 %737 to i16
  br label %intra8x8_vert_right_pred.exit

intra8x8_vert_right_pred.exit:                    ; preds = %if.then191.i685, %if.else199.i625
  %storemerge.i629 = phi i16 [ %conv203.i628, %if.else199.i625 ], [ %736, %if.then191.i685 ]
  %.sink.i630 = phi i32 [ 0, %if.else199.i625 ], [ %block_available_up_left.0611634.i, %if.then191.i685 ]
  store i16 %storemerge.i629, ptr %PredPel.i503, align 16
  call fastcc void @LowPassForIntra8x8Pred(ptr noundef nonnull %PredPel.i503, i32 noundef %.sink.i630, i32 noundef %block_available_up.0615628.i, i32 noundef %block_available_left.0613631.i)
  %arrayidx207.i631 = getelementptr inbounds i8, ptr %PredPel.i503, i64 44
  %738 = load i16, ptr %arrayidx207.i631, align 4
  %conv208.i632 = zext i16 %738 to i32
  %arrayidx209.i633 = getelementptr inbounds i8, ptr %PredPel.i503, i64 40
  %739 = load i16, ptr %arrayidx209.i633, align 8
  %conv210.i634 = zext i16 %739 to i32
  %arrayidx212.i635 = getelementptr inbounds i8, ptr %PredPel.i503, i64 42
  %740 = load i16, ptr %arrayidx212.i635, align 2
  %conv213.i636 = zext i16 %740 to i32
  %mul.i637 = shl nuw nsw i32 %conv213.i636, 1
  %add211.i638 = add nuw nsw i32 %conv210.i634, 2
  %add214.i639 = add nuw nsw i32 %add211.i638, %conv208.i632
  %add215.i640 = add nuw nsw i32 %add214.i639, %mul.i637
  %shr.i641 = lshr i32 %add215.i640, 2
  %conv216.i642 = trunc nuw i32 %shr.i641 to i16
  %arrayidx220.i643 = getelementptr inbounds i8, ptr %PredPel.i503, i64 36
  %741 = load i16, ptr %arrayidx220.i643, align 4
  %conv221.i644 = zext i16 %741 to i32
  %arrayidx223.i = getelementptr inbounds i8, ptr %PredPel.i503, i64 38
  %742 = load i16, ptr %arrayidx223.i, align 2
  %conv224.i = zext i16 %742 to i32
  %mul225.i645 = shl nuw nsw i32 %conv224.i, 1
  %add226.i646 = add nuw nsw i32 %add211.i638, %conv221.i644
  %add227.i647 = add nuw nsw i32 %add226.i646, %mul225.i645
  %shr228.i648 = lshr i32 %add227.i647, 2
  %conv229.i649 = trunc nuw i32 %shr228.i648 to i16
  %743 = load i16, ptr %PredPel.i503, align 16
  %conv234.i650 = zext i16 %743 to i32
  %arrayidx236.i651 = getelementptr inbounds i8, ptr %PredPel.i503, i64 34
  %744 = load i16, ptr %arrayidx236.i651, align 2
  %conv237.i652 = zext i16 %744 to i32
  %mul238.i653 = shl nuw nsw i32 %conv237.i652, 1
  %add235.i654 = add nuw nsw i32 %conv234.i650, 2
  %add239.i655 = add nuw nsw i32 %add235.i654, %conv221.i644
  %add240.i656 = add nuw nsw i32 %add239.i655, %mul238.i653
  %shr241.i657 = lshr i32 %add240.i656, 2
  %conv242.i658 = trunc nuw i32 %shr241.i657 to i16
  %arrayidx246.i659 = getelementptr inbounds i8, ptr %PredPel.i503, i64 2
  %745 = load i16, ptr %arrayidx246.i659, align 2
  %conv247.i660 = zext i16 %745 to i32
  %add248.i = add nuw nsw i32 %conv247.i660, 1
  %add249.i = add nuw nsw i32 %add248.i, %conv234.i650
  %shr250.i = lshr i32 %add249.i, 1
  %conv251.i = trunc nuw i32 %shr250.i to i16
  %arrayidx255.i = getelementptr inbounds i8, ptr %PredPel.i503, i64 4
  %746 = load i16, ptr %arrayidx255.i, align 4
  %conv256.i = zext i16 %746 to i32
  %add258.i = add nuw nsw i32 %add248.i, %conv256.i
  %shr259.i = lshr i32 %add258.i, 1
  %conv260.i661 = trunc nuw i32 %shr259.i to i16
  %arrayidx264.i = getelementptr inbounds i8, ptr %PredPel.i503, i64 6
  %747 = load i16, ptr %arrayidx264.i, align 2
  %conv265.i = zext i16 %747 to i32
  %add266.i662 = add nuw nsw i32 %conv265.i, 1
  %add267.i663 = add nuw nsw i32 %add266.i662, %conv256.i
  %shr268.i = lshr i32 %add267.i663, 1
  %conv269.i664 = trunc nuw i32 %shr268.i to i16
  %arrayidx273.i = getelementptr inbounds i8, ptr %PredPel.i503, i64 8
  %748 = load i16, ptr %arrayidx273.i, align 8
  %conv274.i = zext i16 %748 to i32
  %add276.i665 = add nuw nsw i32 %add266.i662, %conv274.i
  %shr277.i = lshr i32 %add276.i665, 1
  %conv278.i666 = trunc nuw i32 %shr277.i to i16
  %arrayidx282.i = getelementptr inbounds i8, ptr %PredPel.i503, i64 10
  %749 = load i16, ptr %arrayidx282.i, align 2
  %conv283.i = zext i16 %749 to i32
  %add284.i = add nuw nsw i32 %conv274.i, 1
  %add285.i667 = add nuw nsw i32 %add284.i, %conv283.i
  %shr286.i = lshr i32 %add285.i667, 1
  %conv287.i = trunc nuw i32 %shr286.i to i16
  %arrayidx291.i = getelementptr inbounds i8, ptr %PredPel.i503, i64 12
  %750 = load i16, ptr %arrayidx291.i, align 4
  %conv292.i668 = zext i16 %750 to i32
  %add293.i = add nuw nsw i32 %conv283.i, 1
  %add294.i669 = add nuw nsw i32 %add293.i, %conv292.i668
  %shr295.i = lshr i32 %add294.i669, 1
  %conv296.i670 = trunc nuw i32 %shr295.i to i16
  %arrayidx300.i = getelementptr inbounds i8, ptr %PredPel.i503, i64 14
  %751 = load i16, ptr %arrayidx300.i, align 2
  %conv301.i = zext i16 %751 to i32
  %add302.i671 = add nuw nsw i32 %conv292.i668, 1
  %add303.i672 = add nuw nsw i32 %add302.i671, %conv301.i
  %shr304.i673 = lshr i32 %add303.i672, 1
  %conv305.i674 = trunc nuw i32 %shr304.i673 to i16
  %arrayidx309.i675 = getelementptr inbounds i8, ptr %PredPel.i503, i64 16
  %752 = load i16, ptr %arrayidx309.i675, align 16
  %conv310.i676 = zext i16 %752 to i32
  %add311.i677 = add nuw nsw i32 %conv301.i, 1
  %add312.i = add nuw nsw i32 %add311.i677, %conv310.i676
  %shr313.i = lshr i32 %add312.i, 1
  %conv314.i = trunc nuw i32 %shr313.i to i16
  %arrayidx316.i = getelementptr inbounds i8, ptr %PredPel.i503, i64 46
  %753 = load i16, ptr %arrayidx316.i, align 2
  %conv317.i = zext i16 %753 to i32
  %mul323.i = shl nuw nsw i32 %conv208.i632, 1
  %add320.i = add nuw nsw i32 %conv213.i636, 2
  %add324.i678 = add nuw nsw i32 %add320.i, %mul323.i
  %add325.i = add nuw nsw i32 %add324.i678, %conv317.i
  %shr326.i = lshr i32 %add325.i, 2
  %conv327.i679 = trunc nuw i32 %shr326.i to i16
  %mul336.i = shl nuw nsw i32 %conv210.i634, 1
  %add337.i680 = add nuw nsw i32 %add320.i, %mul336.i
  %add338.i = add nuw nsw i32 %add337.i680, %conv224.i
  %shr339.i = lshr i32 %add338.i, 2
  %conv340.i = trunc nuw i32 %shr339.i to i16
  %mul349.i = shl nuw nsw i32 %conv221.i644, 1
  %add346.i = add nuw nsw i32 %conv237.i652, 2
  %add350.i681 = add nuw nsw i32 %add346.i, %conv224.i
  %add351.i = add nuw nsw i32 %add350.i681, %mul349.i
  %shr352.i = lshr i32 %add351.i, 2
  %conv353.i = trunc nuw i32 %shr352.i to i16
  %mul362.i = shl nuw nsw i32 %conv234.i650, 1
  %add363.i682 = add nuw nsw i32 %add346.i, %mul362.i
  %add364.i = add nuw nsw i32 %add363.i682, %conv247.i660
  %shr365.i = lshr i32 %add364.i, 2
  %conv366.i = trunc nuw i32 %shr365.i to i16
  %mul375.i = shl nuw nsw i32 %conv247.i660, 1
  %add376.i683 = add nuw nsw i32 %add235.i654, %conv256.i
  %add377.i = add nuw nsw i32 %add376.i683, %mul375.i
  %shr378.i = lshr i32 %add377.i, 2
  %conv379.i = trunc nuw i32 %shr378.i to i16
  %mul388.i = shl nuw nsw i32 %conv256.i, 1
  %add385.i = add nuw nsw i32 %conv247.i660, 2
  %add389.i = add nuw nsw i32 %add385.i, %conv265.i
  %add390.i684 = add nuw nsw i32 %add389.i, %mul388.i
  %shr391.i = lshr i32 %add390.i684, 2
  %conv392.i = trunc nuw i32 %shr391.i to i16
  %mul401.i = shl nuw nsw i32 %conv265.i, 1
  %add398.i = add nuw nsw i32 %conv256.i, 2
  %add402.i = add nuw nsw i32 %add398.i, %conv274.i
  %add403.i = add nuw nsw i32 %add402.i, %mul401.i
  %shr404.i = lshr i32 %add403.i, 2
  %conv405.i = trunc nuw i32 %shr404.i to i16
  %mul414.i = shl nuw nsw i32 %conv274.i, 1
  %add411.i = add nuw nsw i32 %conv265.i, 2
  %add415.i = add nuw nsw i32 %add411.i, %conv283.i
  %add416.i = add nuw nsw i32 %add415.i, %mul414.i
  %shr417.i = lshr i32 %add416.i, 2
  %conv418.i = trunc nuw i32 %shr417.i to i16
  %mul427.i = shl nuw nsw i32 %conv283.i, 1
  %add424.i = add nuw nsw i32 %conv274.i, 2
  %add428.i = add nuw nsw i32 %add424.i, %conv292.i668
  %add429.i = add nuw nsw i32 %add428.i, %mul427.i
  %shr430.i = lshr i32 %add429.i, 2
  %conv431.i = trunc nuw i32 %shr430.i to i16
  %mul440.i = shl nuw nsw i32 %conv292.i668, 1
  %add437.i = add nuw nsw i32 %conv283.i, 2
  %add441.i = add nuw nsw i32 %add437.i, %conv301.i
  %add442.i = add nuw nsw i32 %add441.i, %mul440.i
  %shr443.i = lshr i32 %add442.i, 2
  %conv444.i = trunc nuw i32 %shr443.i to i16
  %mul453.i = shl nuw nsw i32 %conv301.i, 1
  %add450.i = add nuw nsw i32 %conv292.i668, 2
  %add454.i = add nuw nsw i32 %add450.i, %conv310.i676
  %add455.i = add nuw nsw i32 %add454.i, %mul453.i
  %shr456.i = lshr i32 %add455.i, 2
  %conv457.i = trunc nuw i32 %shr456.i to i16
  %idxprom459.i = sext i32 %joff to i64
  %arrayidx460.i = getelementptr inbounds ptr, ptr %660, i64 %idxprom459.i
  %754 = load ptr, ptr %arrayidx460.i, align 8
  %idxprom461.i = sext i32 %ioff to i64
  %arrayidx462.i = getelementptr inbounds i16, ptr %754, i64 %idxprom461.i
  store i16 %conv251.i, ptr %arrayidx462.i, align 2
  %PredArray.sroa.10.6.arrayidx462.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx462.i, i64 2
  store i16 %conv260.i661, ptr %PredArray.sroa.10.6.arrayidx462.sroa_idx.i, align 2
  %PredArray.sroa.11.6.arrayidx462.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx462.i, i64 4
  store i16 %conv269.i664, ptr %PredArray.sroa.11.6.arrayidx462.sroa_idx.i, align 2
  %PredArray.sroa.12.6.arrayidx462.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx462.i, i64 6
  store i16 %conv278.i666, ptr %PredArray.sroa.12.6.arrayidx462.sroa_idx.i, align 2
  %PredArray.sroa.13.6.arrayidx462.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx462.i, i64 8
  store i16 %conv287.i, ptr %PredArray.sroa.13.6.arrayidx462.sroa_idx.i, align 2
  %PredArray.sroa.14.6.arrayidx462.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx462.i, i64 10
  store i16 %conv296.i670, ptr %PredArray.sroa.14.6.arrayidx462.sroa_idx.i, align 2
  %PredArray.sroa.15.6.arrayidx462.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx462.i, i64 12
  store i16 %conv305.i674, ptr %PredArray.sroa.15.6.arrayidx462.sroa_idx.i, align 2
  %PredArray.sroa.16.6.arrayidx462.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx462.i, i64 14
  store i16 %conv314.i, ptr %PredArray.sroa.16.6.arrayidx462.sroa_idx.i, align 2
  %arrayidx466.i = getelementptr i8, ptr %arrayidx460.i, i64 8
  %755 = load ptr, ptr %arrayidx466.i, align 8
  %arrayidx468.i = getelementptr inbounds i16, ptr %755, i64 %idxprom461.i
  store i16 %conv366.i, ptr %arrayidx468.i, align 2
  %PredArray.sroa.25.28.arrayidx468.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx468.i, i64 2
  store i16 %conv379.i, ptr %PredArray.sroa.25.28.arrayidx468.sroa_idx.i, align 2
  %PredArray.sroa.26.28.arrayidx468.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx468.i, i64 4
  store i16 %conv392.i, ptr %PredArray.sroa.26.28.arrayidx468.sroa_idx.i, align 2
  %PredArray.sroa.27.28.arrayidx468.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx468.i, i64 6
  store i16 %conv405.i, ptr %PredArray.sroa.27.28.arrayidx468.sroa_idx.i, align 2
  %PredArray.sroa.28.28.arrayidx468.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx468.i, i64 8
  store i16 %conv418.i, ptr %PredArray.sroa.28.28.arrayidx468.sroa_idx.i, align 2
  %PredArray.sroa.29.28.arrayidx468.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx468.i, i64 10
  store i16 %conv431.i, ptr %PredArray.sroa.29.28.arrayidx468.sroa_idx.i, align 2
  %PredArray.sroa.30.28.arrayidx468.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx468.i, i64 12
  store i16 %conv444.i, ptr %PredArray.sroa.30.28.arrayidx468.sroa_idx.i, align 2
  %PredArray.sroa.31.28.arrayidx468.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx468.i, i64 14
  store i16 %conv457.i, ptr %PredArray.sroa.31.28.arrayidx468.sroa_idx.i, align 2
  %arrayidx472.i = getelementptr i8, ptr %arrayidx460.i, i64 16
  %756 = load ptr, ptr %arrayidx472.i, align 8
  %arrayidx474.i = getelementptr inbounds i16, ptr %756, i64 %idxprom461.i
  store i16 %conv242.i658, ptr %arrayidx474.i, align 2
  %PredArray.sroa.8.4.arrayidx474.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx474.i, i64 2
  store i16 %conv251.i, ptr %PredArray.sroa.8.4.arrayidx474.sroa_idx.i, align 2
  %PredArray.sroa.10.4.arrayidx474.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx474.i, i64 4
  store i16 %conv260.i661, ptr %PredArray.sroa.10.4.arrayidx474.sroa_idx.i, align 2
  %PredArray.sroa.11.4.arrayidx474.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx474.i, i64 6
  store i16 %conv269.i664, ptr %PredArray.sroa.11.4.arrayidx474.sroa_idx.i, align 2
  %PredArray.sroa.12.4.arrayidx474.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx474.i, i64 8
  store i16 %conv278.i666, ptr %PredArray.sroa.12.4.arrayidx474.sroa_idx.i, align 2
  %PredArray.sroa.13.4.arrayidx474.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx474.i, i64 10
  store i16 %conv287.i, ptr %PredArray.sroa.13.4.arrayidx474.sroa_idx.i, align 2
  %PredArray.sroa.14.4.arrayidx474.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx474.i, i64 12
  store i16 %conv296.i670, ptr %PredArray.sroa.14.4.arrayidx474.sroa_idx.i, align 2
  %PredArray.sroa.15.4.arrayidx474.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx474.i, i64 14
  store i16 %conv305.i674, ptr %PredArray.sroa.15.4.arrayidx474.sroa_idx.i, align 2
  %arrayidx478.i = getelementptr i8, ptr %arrayidx460.i, i64 24
  %757 = load ptr, ptr %arrayidx478.i, align 8
  %arrayidx480.i = getelementptr inbounds i16, ptr %757, i64 %idxprom461.i
  store i16 %conv353.i, ptr %arrayidx480.i, align 2
  %PredArray.sroa.23.26.arrayidx480.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx480.i, i64 2
  store i16 %conv366.i, ptr %PredArray.sroa.23.26.arrayidx480.sroa_idx.i, align 2
  %PredArray.sroa.25.26.arrayidx480.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx480.i, i64 4
  store i16 %conv379.i, ptr %PredArray.sroa.25.26.arrayidx480.sroa_idx.i, align 2
  %PredArray.sroa.26.26.arrayidx480.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx480.i, i64 6
  store i16 %conv392.i, ptr %PredArray.sroa.26.26.arrayidx480.sroa_idx.i, align 2
  %PredArray.sroa.27.26.arrayidx480.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx480.i, i64 8
  store i16 %conv405.i, ptr %PredArray.sroa.27.26.arrayidx480.sroa_idx.i, align 2
  %PredArray.sroa.28.26.arrayidx480.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx480.i, i64 10
  store i16 %conv418.i, ptr %PredArray.sroa.28.26.arrayidx480.sroa_idx.i, align 2
  %PredArray.sroa.29.26.arrayidx480.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx480.i, i64 12
  store i16 %conv431.i, ptr %PredArray.sroa.29.26.arrayidx480.sroa_idx.i, align 2
  %PredArray.sroa.30.26.arrayidx480.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx480.i, i64 14
  store i16 %conv444.i, ptr %PredArray.sroa.30.26.arrayidx480.sroa_idx.i, align 2
  %arrayidx484.i = getelementptr i8, ptr %arrayidx460.i, i64 32
  %758 = load ptr, ptr %arrayidx484.i, align 8
  %arrayidx486.i = getelementptr inbounds i16, ptr %758, i64 %idxprom461.i
  store i16 %conv229.i649, ptr %arrayidx486.i, align 2
  %PredArray.sroa.6.2.arrayidx486.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx486.i, i64 2
  store i16 %conv242.i658, ptr %PredArray.sroa.6.2.arrayidx486.sroa_idx.i, align 2
  %PredArray.sroa.8.2.arrayidx486.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx486.i, i64 4
  store i16 %conv251.i, ptr %PredArray.sroa.8.2.arrayidx486.sroa_idx.i, align 2
  %PredArray.sroa.10.2.arrayidx486.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx486.i, i64 6
  store i16 %conv260.i661, ptr %PredArray.sroa.10.2.arrayidx486.sroa_idx.i, align 2
  %PredArray.sroa.11.2.arrayidx486.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx486.i, i64 8
  store i16 %conv269.i664, ptr %PredArray.sroa.11.2.arrayidx486.sroa_idx.i, align 2
  %PredArray.sroa.12.2.arrayidx486.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx486.i, i64 10
  store i16 %conv278.i666, ptr %PredArray.sroa.12.2.arrayidx486.sroa_idx.i, align 2
  %PredArray.sroa.13.2.arrayidx486.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx486.i, i64 12
  store i16 %conv287.i, ptr %PredArray.sroa.13.2.arrayidx486.sroa_idx.i, align 2
  %PredArray.sroa.14.2.arrayidx486.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx486.i, i64 14
  store i16 %conv296.i670, ptr %PredArray.sroa.14.2.arrayidx486.sroa_idx.i, align 2
  %arrayidx490.i = getelementptr i8, ptr %arrayidx460.i, i64 40
  %759 = load ptr, ptr %arrayidx490.i, align 8
  %arrayidx492.i = getelementptr inbounds i16, ptr %759, i64 %idxprom461.i
  store i16 %conv340.i, ptr %arrayidx492.i, align 2
  %PredArray.sroa.21.24.arrayidx492.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx492.i, i64 2
  store i16 %conv353.i, ptr %PredArray.sroa.21.24.arrayidx492.sroa_idx.i, align 2
  %PredArray.sroa.23.24.arrayidx492.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx492.i, i64 4
  store i16 %conv366.i, ptr %PredArray.sroa.23.24.arrayidx492.sroa_idx.i, align 2
  %PredArray.sroa.25.24.arrayidx492.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx492.i, i64 6
  store i16 %conv379.i, ptr %PredArray.sroa.25.24.arrayidx492.sroa_idx.i, align 2
  %PredArray.sroa.26.24.arrayidx492.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx492.i, i64 8
  store i16 %conv392.i, ptr %PredArray.sroa.26.24.arrayidx492.sroa_idx.i, align 2
  %PredArray.sroa.27.24.arrayidx492.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx492.i, i64 10
  store i16 %conv405.i, ptr %PredArray.sroa.27.24.arrayidx492.sroa_idx.i, align 2
  %PredArray.sroa.28.24.arrayidx492.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx492.i, i64 12
  store i16 %conv418.i, ptr %PredArray.sroa.28.24.arrayidx492.sroa_idx.i, align 2
  %PredArray.sroa.29.24.arrayidx492.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx492.i, i64 14
  store i16 %conv431.i, ptr %PredArray.sroa.29.24.arrayidx492.sroa_idx.i, align 2
  %arrayidx496.i = getelementptr i8, ptr %arrayidx460.i, i64 48
  %760 = load ptr, ptr %arrayidx496.i, align 8
  %arrayidx498.i = getelementptr inbounds i16, ptr %760, i64 %idxprom461.i
  store i16 %conv216.i642, ptr %arrayidx498.i, align 2
  %PredArray.sroa.4.0.arrayidx498.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx498.i, i64 2
  store i16 %conv229.i649, ptr %PredArray.sroa.4.0.arrayidx498.sroa_idx.i, align 2
  %PredArray.sroa.6.0.arrayidx498.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx498.i, i64 4
  store i16 %conv242.i658, ptr %PredArray.sroa.6.0.arrayidx498.sroa_idx.i, align 2
  %PredArray.sroa.8.0.arrayidx498.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx498.i, i64 6
  store i16 %conv251.i, ptr %PredArray.sroa.8.0.arrayidx498.sroa_idx.i, align 2
  %PredArray.sroa.10.0.arrayidx498.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx498.i, i64 8
  store i16 %conv260.i661, ptr %PredArray.sroa.10.0.arrayidx498.sroa_idx.i, align 2
  %PredArray.sroa.11.0.arrayidx498.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx498.i, i64 10
  store i16 %conv269.i664, ptr %PredArray.sroa.11.0.arrayidx498.sroa_idx.i, align 2
  %PredArray.sroa.12.0.arrayidx498.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx498.i, i64 12
  store i16 %conv278.i666, ptr %PredArray.sroa.12.0.arrayidx498.sroa_idx.i, align 2
  %PredArray.sroa.13.0.arrayidx498.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx498.i, i64 14
  store i16 %conv287.i, ptr %PredArray.sroa.13.0.arrayidx498.sroa_idx.i, align 2
  %arrayidx501.i = getelementptr i8, ptr %arrayidx460.i, i64 56
  %761 = load ptr, ptr %arrayidx501.i, align 8
  %arrayidx503.i = getelementptr inbounds i16, ptr %761, i64 %idxprom461.i
  store i16 %conv327.i679, ptr %arrayidx503.i, align 2
  %PredArray.sroa.19.22.arrayidx503.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx503.i, i64 2
  store i16 %conv340.i, ptr %PredArray.sroa.19.22.arrayidx503.sroa_idx.i, align 2
  %PredArray.sroa.21.22.arrayidx503.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx503.i, i64 4
  store i16 %conv353.i, ptr %PredArray.sroa.21.22.arrayidx503.sroa_idx.i, align 2
  %PredArray.sroa.23.22.arrayidx503.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx503.i, i64 6
  store i16 %conv366.i, ptr %PredArray.sroa.23.22.arrayidx503.sroa_idx.i, align 2
  %PredArray.sroa.25.22.arrayidx503.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx503.i, i64 8
  store i16 %conv379.i, ptr %PredArray.sroa.25.22.arrayidx503.sroa_idx.i, align 2
  %PredArray.sroa.26.22.arrayidx503.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx503.i, i64 10
  store i16 %conv392.i, ptr %PredArray.sroa.26.22.arrayidx503.sroa_idx.i, align 2
  %PredArray.sroa.27.22.arrayidx503.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx503.i, i64 12
  store i16 %conv405.i, ptr %PredArray.sroa.27.22.arrayidx503.sroa_idx.i, align 2
  %PredArray.sroa.28.22.arrayidx503.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx503.i, i64 14
  store i16 %conv418.i, ptr %PredArray.sroa.28.22.arrayidx503.sroa_idx.i, align 2
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pix_d.i507) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pix_c.i506) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pix_b.i505) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pix_a.i504) #6
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %PredPel.i503) #6
  br label %cleanup

sw.bb17:                                          ; preds = %entry
  %p_Vid1.i766 = getelementptr inbounds i8, ptr %currMB, i64 8
  %762 = load ptr, ptr %p_Vid1.i766, align 8
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %PredPel.i761) #6
  %tobool.not.i767 = icmp eq i32 %pl, 0
  %dec_picture3.i768 = getelementptr inbounds i8, ptr %2, i64 13520
  %763 = load ptr, ptr %dec_picture3.i768, align 8
  br i1 %tobool.not.i767, label %cond.false.i1016, label %cond.true.i769

cond.true.i769:                                   ; preds = %sw.bb17
  %imgUV.i770 = getelementptr inbounds i8, ptr %763, i64 136
  %764 = load ptr, ptr %imgUV.i770, align 8
  %sub.i771 = add i32 %pl, -1
  %idxprom.i772 = zext i32 %sub.i771 to i64
  %arrayidx2.i773 = getelementptr inbounds ptr, ptr %764, i64 %idxprom.i772
  br label %cond.end.i774

cond.false.i1016:                                 ; preds = %sw.bb17
  %imgY4.i1017 = getelementptr inbounds i8, ptr %763, i64 128
  br label %cond.end.i774

cond.end.i774:                                    ; preds = %cond.false.i1016, %cond.true.i769
  %cond.in.i775 = phi ptr [ %arrayidx2.i773, %cond.true.i769 ], [ %imgY4.i1017, %cond.false.i1016 ]
  %cond.i776 = load ptr, ptr %cond.in.i775, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pix_a.i762) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pix_b.i763) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pix_c.i764) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pix_d.i765) #6
  %mb_pred.i777 = getelementptr inbounds i8, ptr %2, i64 1248
  %765 = load ptr, ptr %mb_pred.i777, align 8
  %idxprom5.i778 = zext i32 %pl to i64
  %arrayidx6.i779 = getelementptr inbounds ptr, ptr %765, i64 %idxprom5.i778
  %766 = load ptr, ptr %arrayidx6.i779, align 8
  %mb_size7.i780 = getelementptr inbounds i8, ptr %762, i64 849124
  %sub9.i781 = add nsw i32 %ioff, -1
  call void @getNonAffNeighbour(ptr noundef nonnull %currMB, i32 noundef %sub9.i781, i32 noundef %joff, ptr noundef nonnull %mb_size7.i780, ptr noundef nonnull %pix_a.i762) #6
  %sub10.i782 = add nsw i32 %joff, -1
  call void @getNonAffNeighbour(ptr noundef nonnull %currMB, i32 noundef %ioff, i32 noundef %sub10.i782, ptr noundef nonnull %mb_size7.i780, ptr noundef nonnull %pix_b.i763) #6
  %add.i783 = add nsw i32 %ioff, 8
  call void @getNonAffNeighbour(ptr noundef nonnull %currMB, i32 noundef %add.i783, i32 noundef %sub10.i782, ptr noundef nonnull %mb_size7.i780, ptr noundef nonnull %pix_c.i764) #6
  call void @getNonAffNeighbour(ptr noundef nonnull %currMB, i32 noundef %sub9.i781, i32 noundef %sub10.i782, ptr noundef nonnull %mb_size7.i780, ptr noundef nonnull %pix_d.i765) #6
  %767 = load i32, ptr %pix_c.i764, align 4
  %tobool14.not.i784 = icmp ne i32 %767, 0
  %cmp.i785 = icmp ne i32 %ioff, 8
  %cmp16.i786 = icmp ne i32 %joff, 8
  %.not.i787 = or i1 %cmp.i785, %cmp16.i786
  %narrow.i788 = and i1 %.not.i787, %tobool14.not.i784
  %land.ext.i789 = zext i1 %narrow.i788 to i32
  store i32 %land.ext.i789, ptr %pix_c.i764, align 4
  %active_pps.i790 = getelementptr inbounds i8, ptr %762, i64 8
  %768 = load ptr, ptr %active_pps.i790, align 8
  %constrained_intra_pred_flag.i791 = getelementptr inbounds i8, ptr %768, i64 2204
  %769 = load i32, ptr %constrained_intra_pred_flag.i791, align 4
  %tobool19.not.i792 = icmp eq i32 %769, 0
  %770 = load i32, ptr %pix_a.i762, align 4
  br i1 %tobool19.not.i792, label %if.else.i1015, label %if.then.i793

if.then.i793:                                     ; preds = %cond.end.i774
  %tobool21.not.i794 = icmp eq i32 %770, 0
  br i1 %tobool21.not.i794, label %cond.end26.i801, label %cond.true22.i795

cond.true22.i795:                                 ; preds = %if.then.i793
  %intra_block.i796 = getelementptr inbounds i8, ptr %2, i64 13544
  %771 = load ptr, ptr %intra_block.i796, align 8
  %mb_addr.i797 = getelementptr inbounds i8, ptr %pix_a.i762, i64 4
  %772 = load i32, ptr %mb_addr.i797, align 4
  %idxprom23.i798 = sext i32 %772 to i64
  %arrayidx24.i799 = getelementptr inbounds i8, ptr %771, i64 %idxprom23.i798
  %773 = load i8, ptr %arrayidx24.i799, align 1
  %conv.i800 = sext i8 %773 to i32
  br label %cond.end26.i801

cond.end26.i801:                                  ; preds = %cond.true22.i795, %if.then.i793
  %cond27.i802 = phi i32 [ %conv.i800, %cond.true22.i795 ], [ 0, %if.then.i793 ]
  %774 = load i32, ptr %pix_b.i763, align 4
  %tobool29.not.i803 = icmp eq i32 %774, 0
  br i1 %tobool29.not.i803, label %cond.end37.i810, label %cond.true30.i804

cond.true30.i804:                                 ; preds = %cond.end26.i801
  %intra_block31.i805 = getelementptr inbounds i8, ptr %2, i64 13544
  %775 = load ptr, ptr %intra_block31.i805, align 8
  %mb_addr32.i806 = getelementptr inbounds i8, ptr %pix_b.i763, i64 4
  %776 = load i32, ptr %mb_addr32.i806, align 4
  %idxprom33.i807 = sext i32 %776 to i64
  %arrayidx34.i808 = getelementptr inbounds i8, ptr %775, i64 %idxprom33.i807
  %777 = load i8, ptr %arrayidx34.i808, align 1
  %conv35.i809 = sext i8 %777 to i32
  br label %cond.end37.i810

cond.end37.i810:                                  ; preds = %cond.true30.i804, %cond.end26.i801
  %cond38.i811 = phi i32 [ %conv35.i809, %cond.true30.i804 ], [ 0, %cond.end26.i801 ]
  br i1 %narrow.i788, label %cond.true41.i1009, label %cond.end48.i812

cond.true41.i1009:                                ; preds = %cond.end37.i810
  %intra_block42.i1010 = getelementptr inbounds i8, ptr %2, i64 13544
  %778 = load ptr, ptr %intra_block42.i1010, align 8
  %mb_addr43.i1011 = getelementptr inbounds i8, ptr %pix_c.i764, i64 4
  %779 = load i32, ptr %mb_addr43.i1011, align 4
  %idxprom44.i1012 = sext i32 %779 to i64
  %arrayidx45.i1013 = getelementptr inbounds i8, ptr %778, i64 %idxprom44.i1012
  %780 = load i8, ptr %arrayidx45.i1013, align 1
  %conv46.i1014 = sext i8 %780 to i32
  br label %cond.end48.i812

cond.end48.i812:                                  ; preds = %cond.true41.i1009, %cond.end37.i810
  %cond49.i813 = phi i32 [ %conv46.i1014, %cond.true41.i1009 ], [ 0, %cond.end37.i810 ]
  %781 = load i32, ptr %pix_d.i765, align 4
  %tobool51.not.i814 = icmp eq i32 %781, 0
  br i1 %tobool51.not.i814, label %if.end.i821, label %cond.true52.i815

cond.true52.i815:                                 ; preds = %cond.end48.i812
  %intra_block53.i816 = getelementptr inbounds i8, ptr %2, i64 13544
  %782 = load ptr, ptr %intra_block53.i816, align 8
  %mb_addr54.i817 = getelementptr inbounds i8, ptr %pix_d.i765, i64 4
  %783 = load i32, ptr %mb_addr54.i817, align 4
  %idxprom55.i818 = sext i32 %783 to i64
  %arrayidx56.i819 = getelementptr inbounds i8, ptr %782, i64 %idxprom55.i818
  %784 = load i8, ptr %arrayidx56.i819, align 1
  %conv57.i820 = sext i8 %784 to i32
  br label %if.end.i821

if.else.i1015:                                    ; preds = %cond.end.i774
  %785 = load i32, ptr %pix_b.i763, align 4
  %786 = load i32, ptr %pix_d.i765, align 4
  br label %if.end.i821

if.end.i821:                                      ; preds = %if.else.i1015, %cond.true52.i815, %cond.end48.i812
  %block_available_up_left.0.i822 = phi i32 [ %786, %if.else.i1015 ], [ %conv57.i820, %cond.true52.i815 ], [ 0, %cond.end48.i812 ]
  %block_available_up_right.0.i823 = phi i32 [ %land.ext.i789, %if.else.i1015 ], [ %cond49.i813, %cond.true52.i815 ], [ %cond49.i813, %cond.end48.i812 ]
  %block_available_left.0.i824 = phi i32 [ %770, %if.else.i1015 ], [ %cond27.i802, %cond.true52.i815 ], [ %cond27.i802, %cond.end48.i812 ]
  %block_available_up.0.i825 = phi i32 [ %785, %if.else.i1015 ], [ %cond38.i811, %cond.true52.i815 ], [ %cond38.i811, %cond.end48.i812 ]
  %tobool65.not.i826 = icmp eq i32 %block_available_up.0.i825, 0
  br i1 %tobool65.not.i826, label %if.then66.i995, label %if.then69.i827

if.then66.i995:                                   ; preds = %if.end.i821
  %current_mb_nr.i996 = getelementptr inbounds i8, ptr %2, i64 108
  %787 = load i32, ptr %current_mb_nr.i996, align 4
  %call.i997 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %787)
  %dc_pred_value_comp.i998 = getelementptr inbounds i8, ptr %762, i64 849060
  %arrayidx92.i999 = getelementptr inbounds [3 x i32], ptr %dc_pred_value_comp.i998, i64 0, i64 %idxprom5.i778
  %788 = load i32, ptr %arrayidx92.i999, align 4
  %conv93.i1000 = trunc i32 %788 to i16
  %arrayidx101.i1008 = getelementptr inbounds i8, ptr %PredPel.i761, i64 2
  %789 = insertelement <8 x i16> poison, i16 %conv93.i1000, i64 0
  %790 = shufflevector <8 x i16> %789, <8 x i16> poison, <8 x i32> zeroinitializer
  store <8 x i16> %790, ptr %arrayidx101.i1008, align 2
  br label %if.end102.i849

if.then69.i827:                                   ; preds = %if.end.i821
  %pos_y.i828 = getelementptr inbounds i8, ptr %pix_b.i763, i64 14
  %791 = load i16, ptr %pos_y.i828, align 2
  %idxprom70.i829 = sext i16 %791 to i64
  %arrayidx71.i830 = getelementptr inbounds ptr, ptr %cond.i776, i64 %idxprom70.i829
  %792 = load ptr, ptr %arrayidx71.i830, align 8
  %pos_x.i831 = getelementptr inbounds i8, ptr %pix_b.i763, i64 12
  %793 = load i16, ptr %pos_x.i831, align 4
  %idxprom72.i832 = sext i16 %793 to i64
  %arrayidx73.i833 = getelementptr inbounds i16, ptr %792, i64 %idxprom72.i832
  %794 = load i16, ptr %arrayidx73.i833, align 2
  %arrayidx75.i834 = getelementptr inbounds i8, ptr %PredPel.i761, i64 2
  store i16 %794, ptr %arrayidx75.i834, align 2
  %arrayidx76.i835 = getelementptr inbounds i8, ptr %arrayidx73.i833, i64 2
  %795 = load i16, ptr %arrayidx76.i835, align 2
  %arrayidx77.i836 = getelementptr inbounds i8, ptr %PredPel.i761, i64 4
  store i16 %795, ptr %arrayidx77.i836, align 4
  %arrayidx78.i837 = getelementptr inbounds i8, ptr %arrayidx73.i833, i64 4
  %796 = load i16, ptr %arrayidx78.i837, align 2
  %arrayidx79.i838 = getelementptr inbounds i8, ptr %PredPel.i761, i64 6
  store i16 %796, ptr %arrayidx79.i838, align 2
  %arrayidx80.i839 = getelementptr inbounds i8, ptr %arrayidx73.i833, i64 6
  %797 = load i16, ptr %arrayidx80.i839, align 2
  %arrayidx81.i840 = getelementptr inbounds i8, ptr %PredPel.i761, i64 8
  store i16 %797, ptr %arrayidx81.i840, align 8
  %arrayidx82.i841 = getelementptr inbounds i8, ptr %arrayidx73.i833, i64 8
  %798 = load i16, ptr %arrayidx82.i841, align 2
  %arrayidx83.i842 = getelementptr inbounds i8, ptr %PredPel.i761, i64 10
  store i16 %798, ptr %arrayidx83.i842, align 2
  %arrayidx84.i843 = getelementptr inbounds i8, ptr %arrayidx73.i833, i64 10
  %799 = load i16, ptr %arrayidx84.i843, align 2
  %arrayidx85.i844 = getelementptr inbounds i8, ptr %PredPel.i761, i64 12
  store i16 %799, ptr %arrayidx85.i844, align 4
  %arrayidx86.i845 = getelementptr inbounds i8, ptr %arrayidx73.i833, i64 12
  %800 = load i16, ptr %arrayidx86.i845, align 2
  %arrayidx87.i846 = getelementptr inbounds i8, ptr %PredPel.i761, i64 14
  store i16 %800, ptr %arrayidx87.i846, align 2
  %arrayidx88.i847 = getelementptr inbounds i8, ptr %arrayidx73.i833, i64 14
  %801 = load i16, ptr %arrayidx88.i847, align 2
  %arrayidx89.i848 = getelementptr inbounds i8, ptr %PredPel.i761, i64 16
  store i16 %801, ptr %arrayidx89.i848, align 16
  br label %if.end102.i849

if.end102.i849:                                   ; preds = %if.then69.i827, %if.then66.i995
  %802 = phi i16 [ %conv93.i1000, %if.then66.i995 ], [ %801, %if.then69.i827 ]
  %tobool103.not.i850 = icmp eq i32 %block_available_up_right.0.i823, 0
  br i1 %tobool103.not.i850, label %if.else127.i986, label %if.then104.i851

if.then104.i851:                                  ; preds = %if.end102.i849
  %pos_y105.i852 = getelementptr inbounds i8, ptr %pix_c.i764, i64 14
  %803 = load i16, ptr %pos_y105.i852, align 2
  %idxprom106.i853 = sext i16 %803 to i64
  %arrayidx107.i854 = getelementptr inbounds ptr, ptr %cond.i776, i64 %idxprom106.i853
  %804 = load ptr, ptr %arrayidx107.i854, align 8
  %pos_x108.i855 = getelementptr inbounds i8, ptr %pix_c.i764, i64 12
  %805 = load i16, ptr %pos_x108.i855, align 4
  %idxprom109.i856 = sext i16 %805 to i64
  %arrayidx110.i857 = getelementptr inbounds i16, ptr %804, i64 %idxprom109.i856
  %806 = load i16, ptr %arrayidx110.i857, align 2
  %arrayidx112.i858 = getelementptr inbounds i8, ptr %PredPel.i761, i64 18
  store i16 %806, ptr %arrayidx112.i858, align 2
  %arrayidx113.i859 = getelementptr inbounds i8, ptr %arrayidx110.i857, i64 2
  %807 = load i16, ptr %arrayidx113.i859, align 2
  %arrayidx114.i860 = getelementptr inbounds i8, ptr %PredPel.i761, i64 20
  store i16 %807, ptr %arrayidx114.i860, align 4
  %arrayidx115.i861 = getelementptr inbounds i8, ptr %arrayidx110.i857, i64 4
  %808 = load i16, ptr %arrayidx115.i861, align 2
  %arrayidx116.i862 = getelementptr inbounds i8, ptr %PredPel.i761, i64 22
  store i16 %808, ptr %arrayidx116.i862, align 2
  %arrayidx117.i863 = getelementptr inbounds i8, ptr %arrayidx110.i857, i64 6
  %809 = load i16, ptr %arrayidx117.i863, align 2
  %arrayidx118.i864 = getelementptr inbounds i8, ptr %PredPel.i761, i64 24
  store i16 %809, ptr %arrayidx118.i864, align 8
  %arrayidx119.i865 = getelementptr inbounds i8, ptr %arrayidx110.i857, i64 8
  %810 = load i16, ptr %arrayidx119.i865, align 2
  %arrayidx120.i866 = getelementptr inbounds i8, ptr %PredPel.i761, i64 26
  store i16 %810, ptr %arrayidx120.i866, align 2
  %arrayidx121.i867 = getelementptr inbounds i8, ptr %arrayidx110.i857, i64 10
  %811 = load i16, ptr %arrayidx121.i867, align 2
  %arrayidx122.i868 = getelementptr inbounds i8, ptr %PredPel.i761, i64 28
  store i16 %811, ptr %arrayidx122.i868, align 4
  %arrayidx123.i869 = getelementptr inbounds i8, ptr %arrayidx110.i857, i64 12
  %812 = load i16, ptr %arrayidx123.i869, align 2
  %arrayidx124.i870 = getelementptr inbounds i8, ptr %PredPel.i761, i64 30
  store i16 %812, ptr %arrayidx124.i870, align 2
  %arrayidx125.i871 = getelementptr inbounds i8, ptr %arrayidx110.i857, i64 14
  %813 = load i16, ptr %arrayidx125.i871, align 2
  %arrayidx126.i872 = getelementptr inbounds i8, ptr %PredPel.i761, i64 32
  store i16 %813, ptr %arrayidx126.i872, align 16
  br label %if.end137.i873

if.else127.i986:                                  ; preds = %if.end102.i849
  %arrayidx136.i994 = getelementptr inbounds i8, ptr %PredPel.i761, i64 18
  %814 = insertelement <8 x i16> poison, i16 %802, i64 0
  %815 = shufflevector <8 x i16> %814, <8 x i16> poison, <8 x i32> zeroinitializer
  store <8 x i16> %815, ptr %arrayidx136.i994, align 2
  br label %if.end137.i873

if.end137.i873:                                   ; preds = %if.else127.i986, %if.then104.i851
  %tobool138.not.i874 = icmp eq i32 %block_available_left.0.i824, 0
  br i1 %tobool138.not.i874, label %if.else174.i974, label %if.then139.i875

if.then139.i875:                                  ; preds = %if.end137.i873
  %pos_y140.i876 = getelementptr inbounds i8, ptr %pix_a.i762, i64 14
  %816 = load i16, ptr %pos_y140.i876, align 2
  %idxprom141.i877 = sext i16 %816 to i64
  %arrayidx142.i878 = getelementptr inbounds ptr, ptr %cond.i776, i64 %idxprom141.i877
  %pos_x144.i879 = getelementptr inbounds i8, ptr %pix_a.i762, i64 12
  %817 = load i16, ptr %pos_x144.i879, align 4
  %incdec.ptr.i880 = getelementptr inbounds i8, ptr %arrayidx142.i878, i64 8
  %818 = load ptr, ptr %arrayidx142.i878, align 8
  %idx.ext.i881 = sext i16 %817 to i64
  %add.ptr.i882 = getelementptr inbounds i16, ptr %818, i64 %idx.ext.i881
  %819 = load i16, ptr %add.ptr.i882, align 2
  %arrayidx146.i883 = getelementptr inbounds i8, ptr %PredPel.i761, i64 34
  store i16 %819, ptr %arrayidx146.i883, align 2
  %incdec.ptr147.i884 = getelementptr inbounds i8, ptr %arrayidx142.i878, i64 16
  %820 = load ptr, ptr %incdec.ptr.i880, align 8
  %add.ptr149.i885 = getelementptr inbounds i16, ptr %820, i64 %idx.ext.i881
  %821 = load i16, ptr %add.ptr149.i885, align 2
  %arrayidx150.i886 = getelementptr inbounds i8, ptr %PredPel.i761, i64 36
  store i16 %821, ptr %arrayidx150.i886, align 4
  %incdec.ptr151.i887 = getelementptr inbounds i8, ptr %arrayidx142.i878, i64 24
  %822 = load ptr, ptr %incdec.ptr147.i884, align 8
  %add.ptr153.i888 = getelementptr inbounds i16, ptr %822, i64 %idx.ext.i881
  %823 = load i16, ptr %add.ptr153.i888, align 2
  %arrayidx154.i889 = getelementptr inbounds i8, ptr %PredPel.i761, i64 38
  store i16 %823, ptr %arrayidx154.i889, align 2
  %incdec.ptr155.i890 = getelementptr inbounds i8, ptr %arrayidx142.i878, i64 32
  %824 = load ptr, ptr %incdec.ptr151.i887, align 8
  %add.ptr157.i891 = getelementptr inbounds i16, ptr %824, i64 %idx.ext.i881
  %825 = load i16, ptr %add.ptr157.i891, align 2
  %arrayidx158.i892 = getelementptr inbounds i8, ptr %PredPel.i761, i64 40
  store i16 %825, ptr %arrayidx158.i892, align 8
  %incdec.ptr159.i893 = getelementptr inbounds i8, ptr %arrayidx142.i878, i64 40
  %826 = load ptr, ptr %incdec.ptr155.i890, align 8
  %add.ptr161.i894 = getelementptr inbounds i16, ptr %826, i64 %idx.ext.i881
  %827 = load i16, ptr %add.ptr161.i894, align 2
  %arrayidx162.i895 = getelementptr inbounds i8, ptr %PredPel.i761, i64 42
  store i16 %827, ptr %arrayidx162.i895, align 2
  %incdec.ptr163.i896 = getelementptr inbounds i8, ptr %arrayidx142.i878, i64 48
  %828 = load ptr, ptr %incdec.ptr159.i893, align 8
  %add.ptr165.i897 = getelementptr inbounds i16, ptr %828, i64 %idx.ext.i881
  %829 = load i16, ptr %add.ptr165.i897, align 2
  %arrayidx166.i898 = getelementptr inbounds i8, ptr %PredPel.i761, i64 44
  store i16 %829, ptr %arrayidx166.i898, align 4
  %incdec.ptr167.i899 = getelementptr inbounds i8, ptr %arrayidx142.i878, i64 56
  %830 = load ptr, ptr %incdec.ptr163.i896, align 8
  %add.ptr169.i900 = getelementptr inbounds i16, ptr %830, i64 %idx.ext.i881
  %831 = load i16, ptr %add.ptr169.i900, align 2
  %arrayidx170.i901 = getelementptr inbounds i8, ptr %PredPel.i761, i64 46
  store i16 %831, ptr %arrayidx170.i901, align 2
  %832 = load ptr, ptr %incdec.ptr167.i899, align 8
  %add.ptr172.i902 = getelementptr inbounds i16, ptr %832, i64 %idx.ext.i881
  %833 = load i16, ptr %add.ptr172.i902, align 2
  %arrayidx173.i903 = getelementptr inbounds i8, ptr %PredPel.i761, i64 48
  store i16 %833, ptr %arrayidx173.i903, align 16
  br label %if.end187.i904

if.else174.i974:                                  ; preds = %if.end137.i873
  %dc_pred_value_comp175.i975 = getelementptr inbounds i8, ptr %762, i64 849060
  %arrayidx177.i976 = getelementptr inbounds [3 x i32], ptr %dc_pred_value_comp175.i975, i64 0, i64 %idxprom5.i778
  %834 = load i32, ptr %arrayidx177.i976, align 4
  %conv178.i977 = trunc i32 %834 to i16
  %arrayidx186.i985 = getelementptr inbounds i8, ptr %PredPel.i761, i64 34
  %835 = insertelement <8 x i16> poison, i16 %conv178.i977, i64 0
  %836 = shufflevector <8 x i16> %835, <8 x i16> poison, <8 x i32> zeroinitializer
  store <8 x i16> %836, ptr %arrayidx186.i985, align 2
  br label %if.end187.i904

if.end187.i904:                                   ; preds = %if.else174.i974, %if.then139.i875
  %tobool188.not.i905 = icmp eq i32 %block_available_up_left.0.i822, 0
  br i1 %tobool188.not.i905, label %if.else197.i970, label %if.then189.i906

if.then189.i906:                                  ; preds = %if.end187.i904
  %pos_y190.i907 = getelementptr inbounds i8, ptr %pix_d.i765, i64 14
  %837 = load i16, ptr %pos_y190.i907, align 2
  %idxprom191.i908 = sext i16 %837 to i64
  %arrayidx192.i909 = getelementptr inbounds ptr, ptr %cond.i776, i64 %idxprom191.i908
  %838 = load ptr, ptr %arrayidx192.i909, align 8
  %pos_x193.i910 = getelementptr inbounds i8, ptr %pix_d.i765, i64 12
  %839 = load i16, ptr %pos_x193.i910, align 4
  %idxprom194.i911 = sext i16 %839 to i64
  %arrayidx195.i912 = getelementptr inbounds i16, ptr %838, i64 %idxprom194.i911
  %840 = load i16, ptr %arrayidx195.i912, align 2
  br label %intra8x8_vert_left_pred.exit

if.else197.i970:                                  ; preds = %if.end187.i904
  %dc_pred_value_comp198.i971 = getelementptr inbounds i8, ptr %762, i64 849060
  %arrayidx200.i972 = getelementptr inbounds [3 x i32], ptr %dc_pred_value_comp198.i971, i64 0, i64 %idxprom5.i778
  %841 = load i32, ptr %arrayidx200.i972, align 4
  %conv201.i973 = trunc i32 %841 to i16
  br label %intra8x8_vert_left_pred.exit

intra8x8_vert_left_pred.exit:                     ; preds = %if.then189.i906, %if.else197.i970
  %storemerge.i913 = phi i16 [ %840, %if.then189.i906 ], [ %conv201.i973, %if.else197.i970 ]
  store i16 %storemerge.i913, ptr %PredPel.i761, align 16
  call fastcc void @LowPassForIntra8x8Pred(ptr noundef nonnull %PredPel.i761, i32 noundef %block_available_up_left.0.i822, i32 noundef %block_available_up.0.i825, i32 noundef %block_available_left.0.i824)
  %arrayidx205.i915 = getelementptr inbounds i8, ptr %PredPel.i761, i64 2
  %842 = load i16, ptr %arrayidx205.i915, align 2
  %conv206.i916 = zext i16 %842 to i32
  %arrayidx207.i917 = getelementptr inbounds i8, ptr %PredPel.i761, i64 4
  %843 = load i16, ptr %arrayidx207.i917, align 4
  %conv208.i918 = zext i16 %843 to i32
  %add209.i919 = add nuw nsw i32 %conv208.i918, 1
  %add210.i = add nuw nsw i32 %add209.i919, %conv206.i916
  %shr.i920 = lshr i32 %add210.i, 1
  %conv211.i921 = trunc nuw i32 %shr.i920 to i16
  %arrayidx215.i922 = getelementptr inbounds i8, ptr %PredPel.i761, i64 6
  %844 = load i16, ptr %arrayidx215.i922, align 2
  %conv216.i923 = zext i16 %844 to i32
  %add218.i = add nuw nsw i32 %add209.i919, %conv216.i923
  %shr219.i = lshr i32 %add218.i, 1
  %conv220.i = trunc nuw i32 %shr219.i to i16
  %arrayidx224.i = getelementptr inbounds i8, ptr %PredPel.i761, i64 8
  %845 = load i16, ptr %arrayidx224.i, align 8
  %conv225.i924 = zext i16 %845 to i32
  %add226.i925 = add nuw nsw i32 %conv225.i924, 1
  %add227.i926 = add nuw nsw i32 %add226.i925, %conv216.i923
  %shr228.i927 = lshr i32 %add227.i926, 1
  %conv229.i928 = trunc nuw i32 %shr228.i927 to i16
  %arrayidx233.i929 = getelementptr inbounds i8, ptr %PredPel.i761, i64 10
  %846 = load i16, ptr %arrayidx233.i929, align 2
  %conv234.i930 = zext i16 %846 to i32
  %add236.i = add nuw nsw i32 %add226.i925, %conv234.i930
  %shr237.i = lshr i32 %add236.i, 1
  %conv238.i = trunc nuw i32 %shr237.i to i16
  %arrayidx242.i932 = getelementptr inbounds i8, ptr %PredPel.i761, i64 12
  %847 = load i16, ptr %arrayidx242.i932, align 4
  %conv243.i933 = zext i16 %847 to i32
  %add244.i934 = add nuw nsw i32 %conv234.i930, 1
  %add245.i = add nuw nsw i32 %add244.i934, %conv243.i933
  %shr246.i = lshr i32 %add245.i, 1
  %conv247.i935 = trunc nuw i32 %shr246.i to i16
  %arrayidx251.i = getelementptr inbounds i8, ptr %PredPel.i761, i64 14
  %848 = load i16, ptr %arrayidx251.i, align 2
  %conv252.i = zext i16 %848 to i32
  %add253.i936 = add nuw nsw i32 %conv243.i933, 1
  %add254.i = add nuw nsw i32 %add253.i936, %conv252.i
  %shr255.i = lshr i32 %add254.i, 1
  %conv256.i937 = trunc nuw i32 %shr255.i to i16
  %arrayidx260.i = getelementptr inbounds i8, ptr %PredPel.i761, i64 16
  %849 = load i16, ptr %arrayidx260.i, align 16
  %conv261.i = zext i16 %849 to i32
  %add262.i = add nuw nsw i32 %conv252.i, 1
  %add263.i938 = add nuw nsw i32 %add262.i, %conv261.i
  %shr264.i = lshr i32 %add263.i938, 1
  %conv265.i939 = trunc nuw i32 %shr264.i to i16
  %arrayidx269.i = getelementptr inbounds i8, ptr %PredPel.i761, i64 18
  %850 = load i16, ptr %arrayidx269.i, align 2
  %conv270.i = zext i16 %850 to i32
  %add271.i = add nuw nsw i32 %conv261.i, 1
  %add272.i940 = add nuw nsw i32 %add271.i, %conv270.i
  %shr273.i = lshr i32 %add272.i940, 1
  %conv274.i941 = trunc nuw i32 %shr273.i to i16
  %arrayidx278.i = getelementptr inbounds i8, ptr %PredPel.i761, i64 20
  %851 = load i16, ptr %arrayidx278.i, align 4
  %conv279.i942 = zext i16 %851 to i32
  %add280.i943 = add nuw nsw i32 %conv270.i, 1
  %add281.i = add nuw nsw i32 %add280.i943, %conv279.i942
  %shr282.i = lshr i32 %add281.i, 1
  %conv283.i944 = trunc nuw i32 %shr282.i to i16
  %arrayidx287.i945 = getelementptr inbounds i8, ptr %PredPel.i761, i64 22
  %852 = load i16, ptr %arrayidx287.i945, align 2
  %conv288.i946 = zext i16 %852 to i32
  %add289.i947 = add nuw nsw i32 %conv279.i942, 1
  %add290.i948 = add nuw nsw i32 %add289.i947, %conv288.i946
  %shr291.i949 = lshr i32 %add290.i948, 1
  %conv292.i950 = trunc nuw i32 %shr291.i949 to i16
  %arrayidx296.i951 = getelementptr inbounds i8, ptr %PredPel.i761, i64 24
  %853 = load i16, ptr %arrayidx296.i951, align 8
  %conv297.i952 = zext i16 %853 to i32
  %add298.i953 = add nuw nsw i32 %conv288.i946, 1
  %add299.i = add nuw nsw i32 %add298.i953, %conv297.i952
  %shr300.i = lshr i32 %add299.i, 1
  %conv301.i954 = trunc nuw i32 %shr300.i to i16
  %mul.i955 = shl nuw nsw i32 %conv208.i918, 1
  %add307.i = add nuw nsw i32 %conv216.i923, 2
  %add310.i956 = add nuw nsw i32 %mul.i955, %conv206.i916
  %add311.i957 = add nuw nsw i32 %add310.i956, %add307.i
  %shr312.i = lshr i32 %add311.i957, 2
  %conv313.i = trunc nuw i32 %shr312.i to i16
  %mul322.i = shl nuw nsw i32 %conv216.i923, 1
  %add319.i = add nuw nsw i32 %conv225.i924, 2
  %add323.i = add nuw nsw i32 %mul322.i, %conv208.i918
  %add324.i958 = add nuw nsw i32 %add323.i, %add319.i
  %shr325.i = lshr i32 %add324.i958, 2
  %conv326.i = trunc nuw i32 %shr325.i to i16
  %mul335.i = shl nuw nsw i32 %conv225.i924, 1
  %add336.i = add nuw nsw i32 %add307.i, %conv234.i930
  %add337.i959 = add nuw nsw i32 %add336.i, %mul335.i
  %shr338.i = lshr i32 %add337.i959, 2
  %conv339.i = trunc nuw i32 %shr338.i to i16
  %mul348.i = shl nuw nsw i32 %conv234.i930, 1
  %add349.i = add nuw nsw i32 %add319.i, %conv243.i933
  %add350.i960 = add nuw nsw i32 %add349.i, %mul348.i
  %shr351.i = lshr i32 %add350.i960, 2
  %conv352.i = trunc nuw i32 %shr351.i to i16
  %mul361.i = shl nuw nsw i32 %conv243.i933, 1
  %add358.i = add nuw nsw i32 %conv252.i, 2
  %add362.i = add nuw nsw i32 %add358.i, %conv234.i930
  %add363.i961 = add nuw nsw i32 %add362.i, %mul361.i
  %shr364.i = lshr i32 %add363.i961, 2
  %conv365.i = trunc nuw i32 %shr364.i to i16
  %mul374.i = shl nuw nsw i32 %conv252.i, 1
  %add371.i = add nuw nsw i32 %conv261.i, 2
  %add375.i = add nuw nsw i32 %add371.i, %conv243.i933
  %add376.i962 = add nuw nsw i32 %add375.i, %mul374.i
  %shr377.i = lshr i32 %add376.i962, 2
  %conv378.i = trunc nuw i32 %shr377.i to i16
  %mul387.i = shl nuw nsw i32 %conv261.i, 1
  %add388.i = add nuw nsw i32 %add358.i, %conv270.i
  %add389.i963 = add nuw nsw i32 %add388.i, %mul387.i
  %shr390.i = lshr i32 %add389.i963, 2
  %conv391.i = trunc nuw i32 %shr390.i to i16
  %mul400.i = shl nuw nsw i32 %conv270.i, 1
  %add401.i = add nuw nsw i32 %add371.i, %conv279.i942
  %add402.i964 = add nuw nsw i32 %add401.i, %mul400.i
  %shr403.i = lshr i32 %add402.i964, 2
  %conv404.i = trunc nuw i32 %shr403.i to i16
  %mul413.i = shl nuw nsw i32 %conv279.i942, 1
  %add410.i = add nuw nsw i32 %conv270.i, 2
  %add414.i = add nuw nsw i32 %add410.i, %conv288.i946
  %add415.i965 = add nuw nsw i32 %add414.i, %mul413.i
  %shr416.i = lshr i32 %add415.i965, 2
  %conv417.i = trunc nuw i32 %shr416.i to i16
  %mul426.i = shl nuw nsw i32 %conv288.i946, 1
  %add423.i = add nuw nsw i32 %conv279.i942, 2
  %add427.i = add nuw nsw i32 %add423.i, %conv297.i952
  %add428.i966 = add nuw nsw i32 %add427.i, %mul426.i
  %shr429.i = lshr i32 %add428.i966, 2
  %conv430.i = trunc nuw i32 %shr429.i to i16
  %arrayidx434.i967 = getelementptr inbounds i8, ptr %PredPel.i761, i64 26
  %854 = load i16, ptr %arrayidx434.i967, align 2
  %conv435.i = zext i16 %854 to i32
  %mul439.i = shl nuw nsw i32 %conv297.i952, 1
  %add436.i = add nuw nsw i32 %conv288.i946, 2
  %add440.i = add nuw nsw i32 %add436.i, %conv435.i
  %add441.i968 = add nuw nsw i32 %add440.i, %mul439.i
  %shr442.i = lshr i32 %add441.i968, 2
  %conv443.i = trunc nuw i32 %shr442.i to i16
  %idxprom444.i = sext i32 %joff to i64
  %arrayidx445.i = getelementptr inbounds ptr, ptr %766, i64 %idxprom444.i
  %855 = load ptr, ptr %arrayidx445.i, align 8
  %idxprom446.i = sext i32 %ioff to i64
  %arrayidx447.i = getelementptr inbounds i16, ptr %855, i64 %idxprom446.i
  store i16 %conv211.i921, ptr %arrayidx447.i, align 2
  %PredArray.sroa.4.0.arrayidx447.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx447.i, i64 2
  store i16 %conv220.i, ptr %PredArray.sroa.4.0.arrayidx447.sroa_idx.i, align 2
  %PredArray.sroa.6.0.arrayidx447.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx447.i, i64 4
  store i16 %conv229.i928, ptr %PredArray.sroa.6.0.arrayidx447.sroa_idx.i, align 2
  %PredArray.sroa.8.0.arrayidx447.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx447.i, i64 6
  store i16 %conv238.i, ptr %PredArray.sroa.8.0.arrayidx447.sroa_idx.i, align 2
  %PredArray.sroa.10.0.arrayidx447.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx447.i, i64 8
  store i16 %conv247.i935, ptr %PredArray.sroa.10.0.arrayidx447.sroa_idx.i, align 2
  %PredArray.sroa.11.0.arrayidx447.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx447.i, i64 10
  store i16 %conv256.i937, ptr %PredArray.sroa.11.0.arrayidx447.sroa_idx.i, align 2
  %PredArray.sroa.12.0.arrayidx447.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx447.i, i64 12
  store i16 %conv265.i939, ptr %PredArray.sroa.12.0.arrayidx447.sroa_idx.i, align 2
  %PredArray.sroa.13.0.arrayidx447.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx447.i, i64 14
  store i16 %conv274.i941, ptr %PredArray.sroa.13.0.arrayidx447.sroa_idx.i, align 2
  %arrayidx451.i = getelementptr i8, ptr %arrayidx445.i, i64 8
  %856 = load ptr, ptr %arrayidx451.i, align 8
  %arrayidx453.i = getelementptr inbounds i16, ptr %856, i64 %idxprom446.i
  store i16 %conv313.i, ptr %arrayidx453.i, align 2
  %PredArray.sroa.19.22.arrayidx453.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx453.i, i64 2
  store i16 %conv326.i, ptr %PredArray.sroa.19.22.arrayidx453.sroa_idx.i, align 2
  %PredArray.sroa.21.22.arrayidx453.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx453.i, i64 4
  store i16 %conv339.i, ptr %PredArray.sroa.21.22.arrayidx453.sroa_idx.i, align 2
  %PredArray.sroa.23.22.arrayidx453.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx453.i, i64 6
  store i16 %conv352.i, ptr %PredArray.sroa.23.22.arrayidx453.sroa_idx.i, align 2
  %PredArray.sroa.25.22.arrayidx453.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx453.i, i64 8
  store i16 %conv365.i, ptr %PredArray.sroa.25.22.arrayidx453.sroa_idx.i, align 2
  %PredArray.sroa.26.22.arrayidx453.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx453.i, i64 10
  store i16 %conv378.i, ptr %PredArray.sroa.26.22.arrayidx453.sroa_idx.i, align 2
  %PredArray.sroa.27.22.arrayidx453.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx453.i, i64 12
  store i16 %conv391.i, ptr %PredArray.sroa.27.22.arrayidx453.sroa_idx.i, align 2
  %PredArray.sroa.28.22.arrayidx453.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx453.i, i64 14
  store i16 %conv404.i, ptr %PredArray.sroa.28.22.arrayidx453.sroa_idx.i, align 2
  %arrayidx457.i = getelementptr i8, ptr %arrayidx445.i, i64 16
  %857 = load ptr, ptr %arrayidx457.i, align 8
  %arrayidx459.i = getelementptr inbounds i16, ptr %857, i64 %idxprom446.i
  store i16 %conv220.i, ptr %arrayidx459.i, align 2
  %PredArray.sroa.6.2.arrayidx459.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx459.i, i64 2
  store i16 %conv229.i928, ptr %PredArray.sroa.6.2.arrayidx459.sroa_idx.i, align 2
  %PredArray.sroa.8.2.arrayidx459.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx459.i, i64 4
  store i16 %conv238.i, ptr %PredArray.sroa.8.2.arrayidx459.sroa_idx.i, align 2
  %PredArray.sroa.10.2.arrayidx459.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx459.i, i64 6
  store i16 %conv247.i935, ptr %PredArray.sroa.10.2.arrayidx459.sroa_idx.i, align 2
  %PredArray.sroa.11.2.arrayidx459.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx459.i, i64 8
  store i16 %conv256.i937, ptr %PredArray.sroa.11.2.arrayidx459.sroa_idx.i, align 2
  %PredArray.sroa.12.2.arrayidx459.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx459.i, i64 10
  store i16 %conv265.i939, ptr %PredArray.sroa.12.2.arrayidx459.sroa_idx.i, align 2
  %PredArray.sroa.13.2.arrayidx459.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx459.i, i64 12
  store i16 %conv274.i941, ptr %PredArray.sroa.13.2.arrayidx459.sroa_idx.i, align 2
  %PredArray.sroa.14.2.arrayidx459.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx459.i, i64 14
  store i16 %conv283.i944, ptr %PredArray.sroa.14.2.arrayidx459.sroa_idx.i, align 2
  %arrayidx463.i = getelementptr i8, ptr %arrayidx445.i, i64 24
  %858 = load ptr, ptr %arrayidx463.i, align 8
  %arrayidx465.i = getelementptr inbounds i16, ptr %858, i64 %idxprom446.i
  store i16 %conv326.i, ptr %arrayidx465.i, align 2
  %PredArray.sroa.21.24.arrayidx465.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx465.i, i64 2
  store i16 %conv339.i, ptr %PredArray.sroa.21.24.arrayidx465.sroa_idx.i, align 2
  %PredArray.sroa.23.24.arrayidx465.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx465.i, i64 4
  store i16 %conv352.i, ptr %PredArray.sroa.23.24.arrayidx465.sroa_idx.i, align 2
  %PredArray.sroa.25.24.arrayidx465.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx465.i, i64 6
  store i16 %conv365.i, ptr %PredArray.sroa.25.24.arrayidx465.sroa_idx.i, align 2
  %PredArray.sroa.26.24.arrayidx465.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx465.i, i64 8
  store i16 %conv378.i, ptr %PredArray.sroa.26.24.arrayidx465.sroa_idx.i, align 2
  %PredArray.sroa.27.24.arrayidx465.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx465.i, i64 10
  store i16 %conv391.i, ptr %PredArray.sroa.27.24.arrayidx465.sroa_idx.i, align 2
  %PredArray.sroa.28.24.arrayidx465.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx465.i, i64 12
  store i16 %conv404.i, ptr %PredArray.sroa.28.24.arrayidx465.sroa_idx.i, align 2
  %PredArray.sroa.29.24.arrayidx465.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx465.i, i64 14
  store i16 %conv417.i, ptr %PredArray.sroa.29.24.arrayidx465.sroa_idx.i, align 2
  %arrayidx469.i = getelementptr i8, ptr %arrayidx445.i, i64 32
  %859 = load ptr, ptr %arrayidx469.i, align 8
  %arrayidx471.i = getelementptr inbounds i16, ptr %859, i64 %idxprom446.i
  store i16 %conv229.i928, ptr %arrayidx471.i, align 2
  %PredArray.sroa.8.4.arrayidx471.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx471.i, i64 2
  store i16 %conv238.i, ptr %PredArray.sroa.8.4.arrayidx471.sroa_idx.i, align 2
  %PredArray.sroa.10.4.arrayidx471.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx471.i, i64 4
  store i16 %conv247.i935, ptr %PredArray.sroa.10.4.arrayidx471.sroa_idx.i, align 2
  %PredArray.sroa.11.4.arrayidx471.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx471.i, i64 6
  store i16 %conv256.i937, ptr %PredArray.sroa.11.4.arrayidx471.sroa_idx.i, align 2
  %PredArray.sroa.12.4.arrayidx471.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx471.i, i64 8
  store i16 %conv265.i939, ptr %PredArray.sroa.12.4.arrayidx471.sroa_idx.i, align 2
  %PredArray.sroa.13.4.arrayidx471.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx471.i, i64 10
  store i16 %conv274.i941, ptr %PredArray.sroa.13.4.arrayidx471.sroa_idx.i, align 2
  %PredArray.sroa.14.4.arrayidx471.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx471.i, i64 12
  store i16 %conv283.i944, ptr %PredArray.sroa.14.4.arrayidx471.sroa_idx.i, align 2
  %PredArray.sroa.15.4.arrayidx471.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx471.i, i64 14
  store i16 %conv292.i950, ptr %PredArray.sroa.15.4.arrayidx471.sroa_idx.i, align 2
  %arrayidx475.i = getelementptr i8, ptr %arrayidx445.i, i64 40
  %860 = load ptr, ptr %arrayidx475.i, align 8
  %arrayidx477.i = getelementptr inbounds i16, ptr %860, i64 %idxprom446.i
  store i16 %conv339.i, ptr %arrayidx477.i, align 2
  %PredArray.sroa.23.26.arrayidx477.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx477.i, i64 2
  store i16 %conv352.i, ptr %PredArray.sroa.23.26.arrayidx477.sroa_idx.i, align 2
  %PredArray.sroa.25.26.arrayidx477.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx477.i, i64 4
  store i16 %conv365.i, ptr %PredArray.sroa.25.26.arrayidx477.sroa_idx.i, align 2
  %PredArray.sroa.26.26.arrayidx477.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx477.i, i64 6
  store i16 %conv378.i, ptr %PredArray.sroa.26.26.arrayidx477.sroa_idx.i, align 2
  %PredArray.sroa.27.26.arrayidx477.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx477.i, i64 8
  store i16 %conv391.i, ptr %PredArray.sroa.27.26.arrayidx477.sroa_idx.i, align 2
  %PredArray.sroa.28.26.arrayidx477.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx477.i, i64 10
  store i16 %conv404.i, ptr %PredArray.sroa.28.26.arrayidx477.sroa_idx.i, align 2
  %PredArray.sroa.29.26.arrayidx477.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx477.i, i64 12
  store i16 %conv417.i, ptr %PredArray.sroa.29.26.arrayidx477.sroa_idx.i, align 2
  %PredArray.sroa.30.26.arrayidx477.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx477.i, i64 14
  store i16 %conv430.i, ptr %PredArray.sroa.30.26.arrayidx477.sroa_idx.i, align 2
  %arrayidx481.i = getelementptr i8, ptr %arrayidx445.i, i64 48
  %861 = load ptr, ptr %arrayidx481.i, align 8
  %arrayidx483.i = getelementptr inbounds i16, ptr %861, i64 %idxprom446.i
  store i16 %conv238.i, ptr %arrayidx483.i, align 2
  %PredArray.sroa.10.6.arrayidx483.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx483.i, i64 2
  store i16 %conv247.i935, ptr %PredArray.sroa.10.6.arrayidx483.sroa_idx.i, align 2
  %PredArray.sroa.11.6.arrayidx483.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx483.i, i64 4
  store i16 %conv256.i937, ptr %PredArray.sroa.11.6.arrayidx483.sroa_idx.i, align 2
  %PredArray.sroa.12.6.arrayidx483.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx483.i, i64 6
  store i16 %conv265.i939, ptr %PredArray.sroa.12.6.arrayidx483.sroa_idx.i, align 2
  %PredArray.sroa.13.6.arrayidx483.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx483.i, i64 8
  store i16 %conv274.i941, ptr %PredArray.sroa.13.6.arrayidx483.sroa_idx.i, align 2
  %PredArray.sroa.14.6.arrayidx483.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx483.i, i64 10
  store i16 %conv283.i944, ptr %PredArray.sroa.14.6.arrayidx483.sroa_idx.i, align 2
  %PredArray.sroa.15.6.arrayidx483.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx483.i, i64 12
  store i16 %conv292.i950, ptr %PredArray.sroa.15.6.arrayidx483.sroa_idx.i, align 2
  %PredArray.sroa.16.6.arrayidx483.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx483.i, i64 14
  store i16 %conv301.i954, ptr %PredArray.sroa.16.6.arrayidx483.sroa_idx.i, align 2
  %arrayidx486.i969 = getelementptr i8, ptr %arrayidx445.i, i64 56
  %862 = load ptr, ptr %arrayidx486.i969, align 8
  %arrayidx488.i = getelementptr inbounds i16, ptr %862, i64 %idxprom446.i
  store i16 %conv352.i, ptr %arrayidx488.i, align 2
  %PredArray.sroa.25.28.arrayidx488.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx488.i, i64 2
  store i16 %conv365.i, ptr %PredArray.sroa.25.28.arrayidx488.sroa_idx.i, align 2
  %PredArray.sroa.26.28.arrayidx488.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx488.i, i64 4
  store i16 %conv378.i, ptr %PredArray.sroa.26.28.arrayidx488.sroa_idx.i, align 2
  %PredArray.sroa.27.28.arrayidx488.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx488.i, i64 6
  store i16 %conv391.i, ptr %PredArray.sroa.27.28.arrayidx488.sroa_idx.i, align 2
  %PredArray.sroa.28.28.arrayidx488.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx488.i, i64 8
  store i16 %conv404.i, ptr %PredArray.sroa.28.28.arrayidx488.sroa_idx.i, align 2
  %PredArray.sroa.29.28.arrayidx488.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx488.i, i64 10
  store i16 %conv417.i, ptr %PredArray.sroa.29.28.arrayidx488.sroa_idx.i, align 2
  %PredArray.sroa.30.28.arrayidx488.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx488.i, i64 12
  store i16 %conv430.i, ptr %PredArray.sroa.30.28.arrayidx488.sroa_idx.i, align 2
  %PredArray.sroa.31.28.arrayidx488.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx488.i, i64 14
  store i16 %conv443.i, ptr %PredArray.sroa.31.28.arrayidx488.sroa_idx.i, align 2
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pix_d.i765) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pix_c.i764) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pix_b.i763) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pix_a.i762) #6
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %PredPel.i761) #6
  br label %cleanup

sw.bb19:                                          ; preds = %entry
  %p_Vid1.i1023 = getelementptr inbounds i8, ptr %currMB, i64 8
  %863 = load ptr, ptr %p_Vid1.i1023, align 8
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %PredPel.i1018) #6
  %tobool.not.i1024 = icmp eq i32 %pl, 0
  %dec_picture2.i1025 = getelementptr inbounds i8, ptr %2, i64 13520
  %864 = load ptr, ptr %dec_picture2.i1025, align 8
  br i1 %tobool.not.i1024, label %cond.false.i1190, label %cond.true.i1026

cond.true.i1026:                                  ; preds = %sw.bb19
  %imgUV.i1027 = getelementptr inbounds i8, ptr %864, i64 136
  %865 = load ptr, ptr %imgUV.i1027, align 8
  %sub.i1028 = add i32 %pl, -1
  %idxprom.i1029 = zext i32 %sub.i1028 to i64
  %arrayidx.i1030 = getelementptr inbounds ptr, ptr %865, i64 %idxprom.i1029
  br label %cond.end.i1031

cond.false.i1190:                                 ; preds = %sw.bb19
  %imgY3.i1191 = getelementptr inbounds i8, ptr %864, i64 128
  br label %cond.end.i1031

cond.end.i1031:                                   ; preds = %cond.false.i1190, %cond.true.i1026
  %cond.in.i1032 = phi ptr [ %arrayidx.i1030, %cond.true.i1026 ], [ %imgY3.i1191, %cond.false.i1190 ]
  %cond.i1033 = load ptr, ptr %cond.in.i1032, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pix_a.i1019) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pix_b.i1020) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pix_c.i1021) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pix_d.i1022) #6
  %mb_pred.i1034 = getelementptr inbounds i8, ptr %2, i64 1248
  %866 = load ptr, ptr %mb_pred.i1034, align 8
  %idxprom17.i = zext i32 %pl to i64
  %arrayidx18.i = getelementptr inbounds ptr, ptr %866, i64 %idxprom17.i
  %867 = load ptr, ptr %arrayidx18.i, align 8
  %mb_size19.i = getelementptr inbounds i8, ptr %863, i64 849124
  %sub21.i = add nsw i32 %ioff, -1
  call void @getNonAffNeighbour(ptr noundef nonnull %currMB, i32 noundef %sub21.i, i32 noundef %joff, ptr noundef nonnull %mb_size19.i, ptr noundef nonnull %pix_a.i1019) #6
  %sub22.i = add nsw i32 %joff, -1
  call void @getNonAffNeighbour(ptr noundef nonnull %currMB, i32 noundef %ioff, i32 noundef %sub22.i, ptr noundef nonnull %mb_size19.i, ptr noundef nonnull %pix_b.i1020) #6
  %add23.i = add nsw i32 %ioff, 8
  call void @getNonAffNeighbour(ptr noundef nonnull %currMB, i32 noundef %add23.i, i32 noundef %sub22.i, ptr noundef nonnull %mb_size19.i, ptr noundef nonnull %pix_c.i1021) #6
  call void @getNonAffNeighbour(ptr noundef nonnull %currMB, i32 noundef %sub21.i, i32 noundef %sub22.i, ptr noundef nonnull %mb_size19.i, ptr noundef nonnull %pix_d.i1022) #6
  %868 = load i32, ptr %pix_c.i1021, align 4
  %tobool27.not.i1035 = icmp ne i32 %868, 0
  %cmp.i1036 = icmp ne i32 %ioff, 8
  %cmp29.i = icmp ne i32 %joff, 8
  %.not.i1037 = or i1 %cmp.i1036, %cmp29.i
  %narrow.i1038 = and i1 %.not.i1037, %tobool27.not.i1035
  %land.ext.i1039 = zext i1 %narrow.i1038 to i32
  store i32 %land.ext.i1039, ptr %pix_c.i1021, align 4
  %active_pps.i1040 = getelementptr inbounds i8, ptr %863, i64 8
  %869 = load ptr, ptr %active_pps.i1040, align 8
  %constrained_intra_pred_flag.i1041 = getelementptr inbounds i8, ptr %869, i64 2204
  %870 = load i32, ptr %constrained_intra_pred_flag.i1041, align 4
  %tobool32.not.i = icmp eq i32 %870, 0
  %871 = load i32, ptr %pix_a.i1019, align 4
  br i1 %tobool32.not.i, label %if.else.i1189, label %if.then.i1042

if.then.i1042:                                    ; preds = %cond.end.i1031
  %tobool34.not.i = icmp eq i32 %871, 0
  br i1 %tobool34.not.i, label %cond.end39.i, label %cond.true35.i

cond.true35.i:                                    ; preds = %if.then.i1042
  %intra_block.i1043 = getelementptr inbounds i8, ptr %2, i64 13544
  %872 = load ptr, ptr %intra_block.i1043, align 8
  %mb_addr.i1044 = getelementptr inbounds i8, ptr %pix_a.i1019, i64 4
  %873 = load i32, ptr %mb_addr.i1044, align 4
  %idxprom36.i = sext i32 %873 to i64
  %arrayidx37.i = getelementptr inbounds i8, ptr %872, i64 %idxprom36.i
  %874 = load i8, ptr %arrayidx37.i, align 1
  %conv.i1045 = sext i8 %874 to i32
  br label %cond.end39.i

cond.end39.i:                                     ; preds = %cond.true35.i, %if.then.i1042
  %cond40.i = phi i32 [ %conv.i1045, %cond.true35.i ], [ 0, %if.then.i1042 ]
  %875 = load i32, ptr %pix_b.i1020, align 4
  %tobool42.not.i = icmp eq i32 %875, 0
  br i1 %tobool42.not.i, label %cond.end50.i, label %cond.true43.i

cond.true43.i:                                    ; preds = %cond.end39.i
  %intra_block44.i = getelementptr inbounds i8, ptr %2, i64 13544
  %876 = load ptr, ptr %intra_block44.i, align 8
  %mb_addr45.i = getelementptr inbounds i8, ptr %pix_b.i1020, i64 4
  %877 = load i32, ptr %mb_addr45.i, align 4
  %idxprom46.i = sext i32 %877 to i64
  %arrayidx47.i = getelementptr inbounds i8, ptr %876, i64 %idxprom46.i
  %878 = load i8, ptr %arrayidx47.i, align 1
  %conv48.i = sext i8 %878 to i32
  br label %cond.end50.i

cond.end50.i:                                     ; preds = %cond.true43.i, %cond.end39.i
  %cond51.i = phi i32 [ %conv48.i, %cond.true43.i ], [ 0, %cond.end39.i ]
  br i1 %narrow.i1038, label %cond.true54.i, label %cond.end61.i

cond.true54.i:                                    ; preds = %cond.end50.i
  %intra_block55.i = getelementptr inbounds i8, ptr %2, i64 13544
  %879 = load ptr, ptr %intra_block55.i, align 8
  %mb_addr56.i = getelementptr inbounds i8, ptr %pix_c.i1021, i64 4
  %880 = load i32, ptr %mb_addr56.i, align 4
  %idxprom57.i = sext i32 %880 to i64
  %arrayidx58.i = getelementptr inbounds i8, ptr %879, i64 %idxprom57.i
  %881 = load i8, ptr %arrayidx58.i, align 1
  %conv59.i = sext i8 %881 to i32
  br label %cond.end61.i

cond.end61.i:                                     ; preds = %cond.true54.i, %cond.end50.i
  %cond62.i = phi i32 [ %conv59.i, %cond.true54.i ], [ 0, %cond.end50.i ]
  %882 = load i32, ptr %pix_d.i1022, align 4
  %tobool64.not.i1046 = icmp eq i32 %882, 0
  br i1 %tobool64.not.i1046, label %if.end.i1049, label %cond.true65.i

cond.true65.i:                                    ; preds = %cond.end61.i
  %intra_block66.i = getelementptr inbounds i8, ptr %2, i64 13544
  %883 = load ptr, ptr %intra_block66.i, align 8
  %mb_addr67.i = getelementptr inbounds i8, ptr %pix_d.i1022, i64 4
  %884 = load i32, ptr %mb_addr67.i, align 4
  %idxprom68.i1047 = sext i32 %884 to i64
  %arrayidx69.i1048 = getelementptr inbounds i8, ptr %883, i64 %idxprom68.i1047
  %885 = load i8, ptr %arrayidx69.i1048, align 1
  %conv70.i = sext i8 %885 to i32
  br label %if.end.i1049

if.else.i1189:                                    ; preds = %cond.end.i1031
  %886 = load i32, ptr %pix_b.i1020, align 4
  %887 = load i32, ptr %pix_d.i1022, align 4
  br label %if.end.i1049

if.end.i1049:                                     ; preds = %if.else.i1189, %cond.true65.i, %cond.end61.i
  %block_available_up_right.0.i1050 = phi i32 [ %land.ext.i1039, %if.else.i1189 ], [ %cond62.i, %cond.end61.i ], [ %cond62.i, %cond.true65.i ]
  %block_available_up_left.0.i1051 = phi i32 [ %887, %if.else.i1189 ], [ 0, %cond.end61.i ], [ %conv70.i, %cond.true65.i ]
  %block_available_left.0.i1052 = phi i32 [ %871, %if.else.i1189 ], [ %cond40.i, %cond.end61.i ], [ %cond40.i, %cond.true65.i ]
  %block_available_up.0.i1053 = phi i32 [ %886, %if.else.i1189 ], [ %cond51.i, %cond.end61.i ], [ %cond51.i, %cond.true65.i ]
  %tobool78.not.i = icmp eq i32 %block_available_left.0.i1052, 0
  br i1 %tobool78.not.i, label %if.then79.i, label %if.end80.i

if.then79.i:                                      ; preds = %if.end.i1049
  %current_mb_nr.i1187 = getelementptr inbounds i8, ptr %2, i64 108
  %888 = load i32, ptr %current_mb_nr.i1187, align 4
  %call.i1188 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %888)
  br label %if.end80.i

if.end80.i:                                       ; preds = %if.then79.i, %if.end.i1049
  %tobool81.not.i = icmp eq i32 %block_available_up.0.i1053, 0
  br i1 %tobool81.not.i, label %if.else103.i, label %if.then82.i

if.then82.i:                                      ; preds = %if.end80.i
  %pos_y.i1054 = getelementptr inbounds i8, ptr %pix_b.i1020, i64 14
  %889 = load i16, ptr %pos_y.i1054, align 2
  %idxprom83.i = sext i16 %889 to i64
  %arrayidx84.i1055 = getelementptr inbounds ptr, ptr %cond.i1033, i64 %idxprom83.i
  %890 = load ptr, ptr %arrayidx84.i1055, align 8
  %pos_x.i1056 = getelementptr inbounds i8, ptr %pix_b.i1020, i64 12
  %891 = load i16, ptr %pos_x.i1056, align 4
  %idxprom85.i = sext i16 %891 to i64
  %arrayidx86.i1057 = getelementptr inbounds i16, ptr %890, i64 %idxprom85.i
  %892 = load i16, ptr %arrayidx86.i1057, align 2
  %arrayidx88.i1058 = getelementptr inbounds i8, ptr %PredPel.i1018, i64 2
  store i16 %892, ptr %arrayidx88.i1058, align 2
  %arrayidx89.i1059 = getelementptr inbounds i8, ptr %arrayidx86.i1057, i64 2
  %893 = load i16, ptr %arrayidx89.i1059, align 2
  %arrayidx90.i1060 = getelementptr inbounds i8, ptr %PredPel.i1018, i64 4
  store i16 %893, ptr %arrayidx90.i1060, align 4
  %arrayidx91.i1061 = getelementptr inbounds i8, ptr %arrayidx86.i1057, i64 4
  %894 = load i16, ptr %arrayidx91.i1061, align 2
  %arrayidx92.i1062 = getelementptr inbounds i8, ptr %PredPel.i1018, i64 6
  store i16 %894, ptr %arrayidx92.i1062, align 2
  %arrayidx93.i1063 = getelementptr inbounds i8, ptr %arrayidx86.i1057, i64 6
  %895 = load i16, ptr %arrayidx93.i1063, align 2
  %arrayidx94.i1064 = getelementptr inbounds i8, ptr %PredPel.i1018, i64 8
  store i16 %895, ptr %arrayidx94.i1064, align 8
  %arrayidx95.i1065 = getelementptr inbounds i8, ptr %arrayidx86.i1057, i64 8
  %896 = load i16, ptr %arrayidx95.i1065, align 2
  %arrayidx96.i1066 = getelementptr inbounds i8, ptr %PredPel.i1018, i64 10
  store i16 %896, ptr %arrayidx96.i1066, align 2
  %arrayidx97.i1067 = getelementptr inbounds i8, ptr %arrayidx86.i1057, i64 10
  %897 = load i16, ptr %arrayidx97.i1067, align 2
  %arrayidx98.i1068 = getelementptr inbounds i8, ptr %PredPel.i1018, i64 12
  store i16 %897, ptr %arrayidx98.i1068, align 4
  %arrayidx99.i1069 = getelementptr inbounds i8, ptr %arrayidx86.i1057, i64 12
  %898 = load i16, ptr %arrayidx99.i1069, align 2
  %arrayidx100.i1070 = getelementptr inbounds i8, ptr %PredPel.i1018, i64 14
  store i16 %898, ptr %arrayidx100.i1070, align 2
  %arrayidx101.i1071 = getelementptr inbounds i8, ptr %arrayidx86.i1057, i64 14
  %899 = load i16, ptr %arrayidx101.i1071, align 2
  %arrayidx102.i1072 = getelementptr inbounds i8, ptr %PredPel.i1018, i64 16
  store i16 %899, ptr %arrayidx102.i1072, align 16
  br label %if.end115.i

if.else103.i:                                     ; preds = %if.end80.i
  %dc_pred_value_comp.i1178 = getelementptr inbounds i8, ptr %863, i64 849060
  %arrayidx105.i = getelementptr inbounds [3 x i32], ptr %dc_pred_value_comp.i1178, i64 0, i64 %idxprom17.i
  %900 = load i32, ptr %arrayidx105.i, align 4
  %conv106.i = trunc i32 %900 to i16
  %arrayidx114.i1186 = getelementptr inbounds i8, ptr %PredPel.i1018, i64 2
  %901 = insertelement <8 x i16> poison, i16 %conv106.i, i64 0
  %902 = shufflevector <8 x i16> %901, <8 x i16> poison, <8 x i32> zeroinitializer
  store <8 x i16> %902, ptr %arrayidx114.i1186, align 2
  br label %if.end115.i

if.end115.i:                                      ; preds = %if.else103.i, %if.then82.i
  %903 = phi i16 [ %conv106.i, %if.else103.i ], [ %899, %if.then82.i ]
  %tobool116.not.i = icmp eq i32 %block_available_up_right.0.i1050, 0
  br i1 %tobool116.not.i, label %if.else140.i, label %if.then117.i

if.then117.i:                                     ; preds = %if.end115.i
  %pos_y118.i = getelementptr inbounds i8, ptr %pix_c.i1021, i64 14
  %904 = load i16, ptr %pos_y118.i, align 2
  %idxprom119.i = sext i16 %904 to i64
  %arrayidx120.i1073 = getelementptr inbounds ptr, ptr %cond.i1033, i64 %idxprom119.i
  %905 = load ptr, ptr %arrayidx120.i1073, align 8
  %pos_x121.i = getelementptr inbounds i8, ptr %pix_c.i1021, i64 12
  %906 = load i16, ptr %pos_x121.i, align 4
  %idxprom122.i = sext i16 %906 to i64
  %arrayidx123.i1074 = getelementptr inbounds i16, ptr %905, i64 %idxprom122.i
  %907 = load i16, ptr %arrayidx123.i1074, align 2
  %arrayidx125.i1075 = getelementptr inbounds i8, ptr %PredPel.i1018, i64 18
  store i16 %907, ptr %arrayidx125.i1075, align 2
  %arrayidx126.i1076 = getelementptr inbounds i8, ptr %arrayidx123.i1074, i64 2
  %908 = load i16, ptr %arrayidx126.i1076, align 2
  %arrayidx127.i1077 = getelementptr inbounds i8, ptr %PredPel.i1018, i64 20
  store i16 %908, ptr %arrayidx127.i1077, align 4
  %arrayidx128.i1078 = getelementptr inbounds i8, ptr %arrayidx123.i1074, i64 4
  %909 = load i16, ptr %arrayidx128.i1078, align 2
  %arrayidx129.i1079 = getelementptr inbounds i8, ptr %PredPel.i1018, i64 22
  store i16 %909, ptr %arrayidx129.i1079, align 2
  %arrayidx130.i1080 = getelementptr inbounds i8, ptr %arrayidx123.i1074, i64 6
  %910 = load i16, ptr %arrayidx130.i1080, align 2
  %arrayidx131.i1081 = getelementptr inbounds i8, ptr %PredPel.i1018, i64 24
  store i16 %910, ptr %arrayidx131.i1081, align 8
  %arrayidx132.i1082 = getelementptr inbounds i8, ptr %arrayidx123.i1074, i64 8
  %911 = load i16, ptr %arrayidx132.i1082, align 2
  %arrayidx133.i1083 = getelementptr inbounds i8, ptr %PredPel.i1018, i64 26
  store i16 %911, ptr %arrayidx133.i1083, align 2
  %arrayidx134.i1084 = getelementptr inbounds i8, ptr %arrayidx123.i1074, i64 10
  %912 = load i16, ptr %arrayidx134.i1084, align 2
  %arrayidx135.i1085 = getelementptr inbounds i8, ptr %PredPel.i1018, i64 28
  store i16 %912, ptr %arrayidx135.i1085, align 4
  %arrayidx136.i1086 = getelementptr inbounds i8, ptr %arrayidx123.i1074, i64 12
  %913 = load i16, ptr %arrayidx136.i1086, align 2
  %arrayidx137.i1087 = getelementptr inbounds i8, ptr %PredPel.i1018, i64 30
  store i16 %913, ptr %arrayidx137.i1087, align 2
  %arrayidx138.i1088 = getelementptr inbounds i8, ptr %arrayidx123.i1074, i64 14
  %914 = load i16, ptr %arrayidx138.i1088, align 2
  %arrayidx139.i = getelementptr inbounds i8, ptr %PredPel.i1018, i64 32
  store i16 %914, ptr %arrayidx139.i, align 16
  br label %if.end150.i

if.else140.i:                                     ; preds = %if.end115.i
  %arrayidx149.i = getelementptr inbounds i8, ptr %PredPel.i1018, i64 18
  %915 = insertelement <8 x i16> poison, i16 %903, i64 0
  %916 = shufflevector <8 x i16> %915, <8 x i16> poison, <8 x i32> zeroinitializer
  store <8 x i16> %916, ptr %arrayidx149.i, align 2
  br label %if.end150.i

if.end150.i:                                      ; preds = %if.else140.i, %if.then117.i
  br i1 %tobool78.not.i, label %if.else187.i, label %if.then152.i

if.then152.i:                                     ; preds = %if.end150.i
  %pos_y153.i = getelementptr inbounds i8, ptr %pix_a.i1019, i64 14
  %917 = load i16, ptr %pos_y153.i, align 2
  %idxprom154.i = sext i16 %917 to i64
  %arrayidx155.i1089 = getelementptr inbounds ptr, ptr %cond.i1033, i64 %idxprom154.i
  %pos_x157.i = getelementptr inbounds i8, ptr %pix_a.i1019, i64 12
  %918 = load i16, ptr %pos_x157.i, align 4
  %incdec.ptr.i1090 = getelementptr inbounds i8, ptr %arrayidx155.i1089, i64 8
  %919 = load ptr, ptr %arrayidx155.i1089, align 8
  %idx.ext.i1091 = sext i16 %918 to i64
  %add.ptr.i1092 = getelementptr inbounds i16, ptr %919, i64 %idx.ext.i1091
  %920 = load i16, ptr %add.ptr.i1092, align 2
  %arrayidx159.i1093 = getelementptr inbounds i8, ptr %PredPel.i1018, i64 34
  store i16 %920, ptr %arrayidx159.i1093, align 2
  %incdec.ptr160.i = getelementptr inbounds i8, ptr %arrayidx155.i1089, i64 16
  %921 = load ptr, ptr %incdec.ptr.i1090, align 8
  %add.ptr162.i = getelementptr inbounds i16, ptr %921, i64 %idx.ext.i1091
  %922 = load i16, ptr %add.ptr162.i, align 2
  %arrayidx163.i1094 = getelementptr inbounds i8, ptr %PredPel.i1018, i64 36
  store i16 %922, ptr %arrayidx163.i1094, align 4
  %incdec.ptr164.i = getelementptr inbounds i8, ptr %arrayidx155.i1089, i64 24
  %923 = load ptr, ptr %incdec.ptr160.i, align 8
  %add.ptr166.i = getelementptr inbounds i16, ptr %923, i64 %idx.ext.i1091
  %924 = load i16, ptr %add.ptr166.i, align 2
  %arrayidx167.i1095 = getelementptr inbounds i8, ptr %PredPel.i1018, i64 38
  store i16 %924, ptr %arrayidx167.i1095, align 2
  %incdec.ptr168.i = getelementptr inbounds i8, ptr %arrayidx155.i1089, i64 32
  %925 = load ptr, ptr %incdec.ptr164.i, align 8
  %add.ptr170.i = getelementptr inbounds i16, ptr %925, i64 %idx.ext.i1091
  %926 = load i16, ptr %add.ptr170.i, align 2
  %arrayidx171.i1096 = getelementptr inbounds i8, ptr %PredPel.i1018, i64 40
  store i16 %926, ptr %arrayidx171.i1096, align 8
  %incdec.ptr172.i = getelementptr inbounds i8, ptr %arrayidx155.i1089, i64 40
  %927 = load ptr, ptr %incdec.ptr168.i, align 8
  %add.ptr174.i1097 = getelementptr inbounds i16, ptr %927, i64 %idx.ext.i1091
  %928 = load i16, ptr %add.ptr174.i1097, align 2
  %arrayidx175.i1098 = getelementptr inbounds i8, ptr %PredPel.i1018, i64 42
  store i16 %928, ptr %arrayidx175.i1098, align 2
  %incdec.ptr176.i = getelementptr inbounds i8, ptr %arrayidx155.i1089, i64 48
  %929 = load ptr, ptr %incdec.ptr172.i, align 8
  %add.ptr178.i = getelementptr inbounds i16, ptr %929, i64 %idx.ext.i1091
  %930 = load i16, ptr %add.ptr178.i, align 2
  %arrayidx179.i1099 = getelementptr inbounds i8, ptr %PredPel.i1018, i64 44
  store i16 %930, ptr %arrayidx179.i1099, align 4
  %incdec.ptr180.i = getelementptr inbounds i8, ptr %arrayidx155.i1089, i64 56
  %931 = load ptr, ptr %incdec.ptr176.i, align 8
  %add.ptr182.i = getelementptr inbounds i16, ptr %931, i64 %idx.ext.i1091
  %932 = load i16, ptr %add.ptr182.i, align 2
  %arrayidx183.i1100 = getelementptr inbounds i8, ptr %PredPel.i1018, i64 46
  store i16 %932, ptr %arrayidx183.i1100, align 2
  %933 = load ptr, ptr %incdec.ptr180.i, align 8
  %add.ptr185.i = getelementptr inbounds i16, ptr %933, i64 %idx.ext.i1091
  %934 = load i16, ptr %add.ptr185.i, align 2
  %arrayidx186.i1101 = getelementptr inbounds i8, ptr %PredPel.i1018, i64 48
  store i16 %934, ptr %arrayidx186.i1101, align 16
  br label %if.end200.i

if.else187.i:                                     ; preds = %if.end150.i
  %dc_pred_value_comp188.i = getelementptr inbounds i8, ptr %863, i64 849060
  %arrayidx190.i = getelementptr inbounds [3 x i32], ptr %dc_pred_value_comp188.i, i64 0, i64 %idxprom17.i
  %935 = load i32, ptr %arrayidx190.i, align 4
  %conv191.i = trunc i32 %935 to i16
  %arrayidx199.i = getelementptr inbounds i8, ptr %PredPel.i1018, i64 34
  %936 = insertelement <8 x i16> poison, i16 %conv191.i, i64 0
  %937 = shufflevector <8 x i16> %936, <8 x i16> poison, <8 x i32> zeroinitializer
  store <8 x i16> %937, ptr %arrayidx199.i, align 2
  br label %if.end200.i

if.end200.i:                                      ; preds = %if.else187.i, %if.then152.i
  %tobool201.not.i = icmp eq i32 %block_available_up_left.0.i1051, 0
  br i1 %tobool201.not.i, label %if.else210.i, label %if.then202.i

if.then202.i:                                     ; preds = %if.end200.i
  %pos_y203.i = getelementptr inbounds i8, ptr %pix_d.i1022, i64 14
  %938 = load i16, ptr %pos_y203.i, align 2
  %idxprom204.i = sext i16 %938 to i64
  %arrayidx205.i1102 = getelementptr inbounds ptr, ptr %cond.i1033, i64 %idxprom204.i
  %939 = load ptr, ptr %arrayidx205.i1102, align 8
  %pos_x206.i = getelementptr inbounds i8, ptr %pix_d.i1022, i64 12
  %940 = load i16, ptr %pos_x206.i, align 4
  %idxprom207.i = sext i16 %940 to i64
  %arrayidx208.i = getelementptr inbounds i16, ptr %939, i64 %idxprom207.i
  %941 = load i16, ptr %arrayidx208.i, align 2
  br label %intra8x8_hor_up_pred.exit

if.else210.i:                                     ; preds = %if.end200.i
  %dc_pred_value_comp211.i = getelementptr inbounds i8, ptr %863, i64 849060
  %arrayidx213.i = getelementptr inbounds [3 x i32], ptr %dc_pred_value_comp211.i, i64 0, i64 %idxprom17.i
  %942 = load i32, ptr %arrayidx213.i, align 4
  %conv214.i1166 = trunc i32 %942 to i16
  br label %intra8x8_hor_up_pred.exit

intra8x8_hor_up_pred.exit:                        ; preds = %if.then202.i, %if.else210.i
  %storemerge.i1103 = phi i16 [ %941, %if.then202.i ], [ %conv214.i1166, %if.else210.i ]
  store i16 %storemerge.i1103, ptr %PredPel.i1018, align 16
  call fastcc void @LowPassForIntra8x8Pred(ptr noundef nonnull %PredPel.i1018, i32 noundef %block_available_up_left.0.i1051, i32 noundef %block_available_up.0.i1053, i32 noundef %block_available_left.0.i1052)
  %add16.i1105 = add nsw i32 %ioff, 7
  %add15.i = add nsw i32 %ioff, 6
  %add14.i = add nsw i32 %ioff, 5
  %add13.i = add nsw i32 %ioff, 4
  %add12.i = add nsw i32 %ioff, 3
  %arrayidx218.i1106 = getelementptr inbounds i8, ptr %PredPel.i1018, i64 34
  %943 = load i16, ptr %arrayidx218.i1106, align 2
  %conv219.i1107 = zext i16 %943 to i32
  %arrayidx220.i1108 = getelementptr inbounds i8, ptr %PredPel.i1018, i64 36
  %944 = load i16, ptr %arrayidx220.i1108, align 4
  %conv221.i1109 = zext i16 %944 to i32
  %add222.i1110 = add nuw nsw i32 %conv221.i1109, 1
  %add223.i1111 = add nuw nsw i32 %add222.i1110, %conv219.i1107
  %shr.i1112 = lshr i32 %add223.i1111, 1
  %conv224.i1113 = trunc nuw i32 %shr.i1112 to i16
  %arrayidx226.i = getelementptr inbounds i8, ptr %PredPel.i1018, i64 38
  %945 = load i16, ptr %arrayidx226.i, align 2
  %conv227.i1114 = zext i16 %945 to i32
  %mul.i1115 = shl nuw nsw i32 %conv221.i1109, 1
  %add230.i = add nuw nsw i32 %conv227.i1114, 2
  %add233.i = add nuw nsw i32 %mul.i1115, %conv219.i1107
  %add234.i = add nuw nsw i32 %add233.i, %add230.i
  %shr235.i = lshr i32 %add234.i, 2
  %conv236.i = trunc nuw i32 %shr235.i to i16
  %add243.i = add nuw nsw i32 %add222.i1110, %conv227.i1114
  %shr244.i = lshr i32 %add243.i, 1
  %conv245.i1116 = trunc nuw i32 %shr244.i to i16
  %arrayidx247.i = getelementptr inbounds i8, ptr %PredPel.i1018, i64 40
  %946 = load i16, ptr %arrayidx247.i, align 8
  %conv248.i = zext i16 %946 to i32
  %mul254.i = shl nuw nsw i32 %conv227.i1114, 1
  %add251.i1117 = add nuw nsw i32 %conv248.i, 2
  %add255.i = add nuw nsw i32 %mul254.i, %conv221.i1109
  %add256.i = add nuw nsw i32 %add255.i, %add251.i1117
  %shr257.i = lshr i32 %add256.i, 2
  %conv258.i1118 = trunc nuw i32 %shr257.i to i16
  %add264.i1119 = add nuw nsw i32 %conv248.i, 1
  %add265.i1120 = add nuw nsw i32 %add264.i1119, %conv227.i1114
  %shr266.i = lshr i32 %add265.i1120, 1
  %conv267.i = trunc nuw i32 %shr266.i to i16
  %arrayidx269.i1121 = getelementptr inbounds i8, ptr %PredPel.i1018, i64 42
  %947 = load i16, ptr %arrayidx269.i1121, align 2
  %conv270.i1122 = zext i16 %947 to i32
  %mul276.i = shl nuw nsw i32 %conv248.i, 1
  %add277.i1123 = add nuw nsw i32 %add230.i, %conv270.i1122
  %add278.i1124 = add nuw nsw i32 %add277.i1123, %mul276.i
  %shr279.i = lshr i32 %add278.i1124, 2
  %conv280.i = trunc nuw i32 %shr279.i to i16
  %add287.i1125 = add nuw nsw i32 %add264.i1119, %conv270.i1122
  %shr288.i = lshr i32 %add287.i1125, 1
  %conv289.i = trunc nuw i32 %shr288.i to i16
  %arrayidx291.i1126 = getelementptr inbounds i8, ptr %PredPel.i1018, i64 44
  %948 = load i16, ptr %arrayidx291.i1126, align 4
  %conv292.i1127 = zext i16 %948 to i32
  %mul298.i = shl nuw nsw i32 %conv270.i1122, 1
  %add299.i1128 = add nuw nsw i32 %add251.i1117, %conv292.i1127
  %add300.i1129 = add nuw nsw i32 %add299.i1128, %mul298.i
  %shr301.i = lshr i32 %add300.i1129, 2
  %conv302.i1130 = trunc nuw i32 %shr301.i to i16
  %add308.i = add nuw nsw i32 %conv270.i1122, 1
  %add309.i1131 = add nuw nsw i32 %add308.i, %conv292.i1127
  %shr310.i = lshr i32 %add309.i1131, 1
  %conv311.i = trunc nuw i32 %shr310.i to i16
  %arrayidx313.i = getelementptr inbounds i8, ptr %PredPel.i1018, i64 46
  %949 = load i16, ptr %arrayidx313.i, align 2
  %conv314.i1132 = zext i16 %949 to i32
  %mul320.i = shl nuw nsw i32 %conv292.i1127, 1
  %add317.i1133 = add nuw nsw i32 %conv314.i1132, 2
  %add321.i = add nuw nsw i32 %add317.i1133, %conv270.i1122
  %add322.i = add nuw nsw i32 %add321.i, %mul320.i
  %shr323.i = lshr i32 %add322.i, 2
  %conv324.i = trunc nuw i32 %shr323.i to i16
  %add330.i1134 = add nuw nsw i32 %conv292.i1127, 1
  %add331.i1135 = add nuw nsw i32 %add330.i1134, %conv314.i1132
  %shr332.i1136 = lshr i32 %add331.i1135, 1
  %conv333.i1137 = trunc nuw i32 %shr332.i1136 to i16
  %arrayidx335.i1138 = getelementptr inbounds i8, ptr %PredPel.i1018, i64 48
  %950 = load i16, ptr %arrayidx335.i1138, align 16
  %conv336.i1139 = zext i16 %950 to i32
  %mul342.i1140 = shl nuw nsw i32 %conv314.i1132, 1
  %add339.i1141 = add nuw nsw i32 %conv292.i1127, 2
  %add343.i1142 = add nuw nsw i32 %add339.i1141, %conv336.i1139
  %add344.i1143 = add nuw nsw i32 %add343.i1142, %mul342.i1140
  %shr345.i1144 = lshr i32 %add344.i1143, 2
  %conv346.i1145 = trunc nuw i32 %shr345.i1144 to i16
  %add352.i1146 = add nuw nsw i32 %conv314.i1132, 1
  %add353.i = add nuw nsw i32 %add352.i1146, %conv336.i1139
  %shr354.i = lshr i32 %add353.i, 1
  %conv355.i = trunc nuw i32 %shr354.i to i16
  %mul361.i1147 = mul nuw nsw i32 %conv336.i1139, 3
  %add363.i1149 = add nuw nsw i32 %add317.i1133, %mul361.i1147
  %shr364.i1150 = lshr i32 %add363.i1149, 2
  %conv365.i1151 = trunc nuw i32 %shr364.i1150 to i16
  %idxprom369.i = sext i32 %joff to i64
  %arrayidx370.i = getelementptr inbounds ptr, ptr %867, i64 %idxprom369.i
  %951 = load ptr, ptr %arrayidx370.i, align 8
  %idxprom371.i = sext i32 %ioff to i64
  %arrayidx372.i = getelementptr inbounds i16, ptr %951, i64 %idxprom371.i
  store i16 %conv224.i1113, ptr %arrayidx372.i, align 2
  %PredArray.sroa.4.0.arrayidx372.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx372.i, i64 2
  store i16 %conv236.i, ptr %PredArray.sroa.4.0.arrayidx372.sroa_idx.i, align 2
  %PredArray.sroa.5.0.arrayidx372.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx372.i, i64 4
  store i16 %conv245.i1116, ptr %PredArray.sroa.5.0.arrayidx372.sroa_idx.i, align 2
  %PredArray.sroa.7.0.arrayidx372.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx372.i, i64 6
  store i16 %conv258.i1118, ptr %PredArray.sroa.7.0.arrayidx372.sroa_idx.i, align 2
  %PredArray.sroa.8.0.arrayidx372.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx372.i, i64 8
  store i16 %conv267.i, ptr %PredArray.sroa.8.0.arrayidx372.sroa_idx.i, align 2
  %PredArray.sroa.10.0.arrayidx372.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx372.i, i64 10
  store i16 %conv280.i, ptr %PredArray.sroa.10.0.arrayidx372.sroa_idx.i, align 2
  %PredArray.sroa.11.0.arrayidx372.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx372.i, i64 12
  store i16 %conv289.i, ptr %PredArray.sroa.11.0.arrayidx372.sroa_idx.i, align 2
  %PredArray.sroa.13.0.arrayidx372.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx372.i, i64 14
  store i16 %conv302.i1130, ptr %PredArray.sroa.13.0.arrayidx372.sroa_idx.i, align 2
  %arrayidx375.i = getelementptr i8, ptr %arrayidx370.i, i64 8
  %952 = load ptr, ptr %arrayidx375.i, align 8
  %arrayidx377.i = getelementptr inbounds i16, ptr %952, i64 %idxprom371.i
  store i16 %conv245.i1116, ptr %arrayidx377.i, align 2
  %PredArray.sroa.7.4.arrayidx377.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx377.i, i64 2
  store i16 %conv258.i1118, ptr %PredArray.sroa.7.4.arrayidx377.sroa_idx.i, align 2
  %PredArray.sroa.8.4.arrayidx377.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx377.i, i64 4
  store i16 %conv267.i, ptr %PredArray.sroa.8.4.arrayidx377.sroa_idx.i, align 2
  %PredArray.sroa.10.4.arrayidx377.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx377.i, i64 6
  store i16 %conv280.i, ptr %PredArray.sroa.10.4.arrayidx377.sroa_idx.i, align 2
  %PredArray.sroa.11.4.arrayidx377.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx377.i, i64 8
  store i16 %conv289.i, ptr %PredArray.sroa.11.4.arrayidx377.sroa_idx.i, align 2
  %PredArray.sroa.13.4.arrayidx377.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx377.i, i64 10
  store i16 %conv302.i1130, ptr %PredArray.sroa.13.4.arrayidx377.sroa_idx.i, align 2
  %PredArray.sroa.14.4.arrayidx377.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx377.i, i64 12
  store i16 %conv311.i, ptr %PredArray.sroa.14.4.arrayidx377.sroa_idx.i, align 2
  %PredArray.sroa.16.4.arrayidx377.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx377.i, i64 14
  store i16 %conv324.i, ptr %PredArray.sroa.16.4.arrayidx377.sroa_idx.i, align 2
  %arrayidx380.i = getelementptr i8, ptr %arrayidx370.i, i64 16
  %953 = load ptr, ptr %arrayidx380.i, align 8
  %arrayidx382.i = getelementptr inbounds i16, ptr %953, i64 %idxprom371.i
  store i16 %conv267.i, ptr %arrayidx382.i, align 2
  %PredArray.sroa.10.8.arrayidx382.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx382.i, i64 2
  store i16 %conv280.i, ptr %PredArray.sroa.10.8.arrayidx382.sroa_idx.i, align 2
  %PredArray.sroa.11.8.arrayidx382.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx382.i, i64 4
  store i16 %conv289.i, ptr %PredArray.sroa.11.8.arrayidx382.sroa_idx.i, align 2
  %PredArray.sroa.13.8.arrayidx382.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx382.i, i64 6
  store i16 %conv302.i1130, ptr %PredArray.sroa.13.8.arrayidx382.sroa_idx.i, align 2
  %PredArray.sroa.14.8.arrayidx382.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx382.i, i64 8
  store i16 %conv311.i, ptr %PredArray.sroa.14.8.arrayidx382.sroa_idx.i, align 2
  %PredArray.sroa.16.8.arrayidx382.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx382.i, i64 10
  store i16 %conv324.i, ptr %PredArray.sroa.16.8.arrayidx382.sroa_idx.i, align 2
  %PredArray.sroa.17.8.arrayidx382.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx382.i, i64 12
  store i16 %conv333.i1137, ptr %PredArray.sroa.17.8.arrayidx382.sroa_idx.i, align 2
  %PredArray.sroa.19.8.arrayidx382.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx382.i, i64 14
  store i16 %conv346.i1145, ptr %PredArray.sroa.19.8.arrayidx382.sroa_idx.i, align 2
  %arrayidx385.i = getelementptr i8, ptr %arrayidx370.i, i64 24
  %954 = load ptr, ptr %arrayidx385.i, align 8
  %arrayidx387.i = getelementptr inbounds i16, ptr %954, i64 %idxprom371.i
  store i16 %conv289.i, ptr %arrayidx387.i, align 2
  %PredArray.sroa.13.12.arrayidx387.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx387.i, i64 2
  store i16 %conv302.i1130, ptr %PredArray.sroa.13.12.arrayidx387.sroa_idx.i, align 2
  %PredArray.sroa.14.12.arrayidx387.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx387.i, i64 4
  store i16 %conv311.i, ptr %PredArray.sroa.14.12.arrayidx387.sroa_idx.i, align 2
  %PredArray.sroa.16.12.arrayidx387.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx387.i, i64 6
  store i16 %conv324.i, ptr %PredArray.sroa.16.12.arrayidx387.sroa_idx.i, align 2
  %PredArray.sroa.17.12.arrayidx387.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx387.i, i64 8
  store i16 %conv333.i1137, ptr %PredArray.sroa.17.12.arrayidx387.sroa_idx.i, align 2
  %PredArray.sroa.19.12.arrayidx387.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx387.i, i64 10
  store i16 %conv346.i1145, ptr %PredArray.sroa.19.12.arrayidx387.sroa_idx.i, align 2
  %PredArray.sroa.20.12.arrayidx387.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx387.i, i64 12
  store i16 %conv355.i, ptr %PredArray.sroa.20.12.arrayidx387.sroa_idx.i, align 2
  %PredArray.sroa.22.12.arrayidx387.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx387.i, i64 14
  store i16 %conv365.i1151, ptr %PredArray.sroa.22.12.arrayidx387.sroa_idx.i, align 2
  %arrayidx390.i = getelementptr i8, ptr %arrayidx370.i, i64 32
  %955 = load ptr, ptr %arrayidx390.i, align 8
  %arrayidx392.i = getelementptr inbounds i16, ptr %955, i64 %idxprom371.i
  store i16 %conv311.i, ptr %arrayidx392.i, align 2
  %PredArray.sroa.16.16.arrayidx392.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx392.i, i64 2
  store i16 %conv324.i, ptr %PredArray.sroa.16.16.arrayidx392.sroa_idx.i, align 2
  %PredArray.sroa.17.16.arrayidx392.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx392.i, i64 4
  store i16 %conv333.i1137, ptr %PredArray.sroa.17.16.arrayidx392.sroa_idx.i, align 2
  %PredArray.sroa.19.16.arrayidx392.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx392.i, i64 6
  store i16 %conv346.i1145, ptr %PredArray.sroa.19.16.arrayidx392.sroa_idx.i, align 2
  %PredArray.sroa.20.16.arrayidx392.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx392.i, i64 8
  store i16 %conv355.i, ptr %PredArray.sroa.20.16.arrayidx392.sroa_idx.i, align 2
  %PredArray.sroa.22.16.arrayidx392.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx392.i, i64 10
  store i16 %conv365.i1151, ptr %PredArray.sroa.22.16.arrayidx392.sroa_idx.i, align 2
  %PredArray.sroa.23.16.arrayidx392.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx392.i, i64 12
  store i16 %950, ptr %PredArray.sroa.23.16.arrayidx392.sroa_idx.i, align 2
  %arrayidx395.i = getelementptr i8, ptr %arrayidx370.i, i64 40
  %956 = load ptr, ptr %arrayidx395.i, align 8
  %arrayidx397.i = getelementptr inbounds i16, ptr %956, i64 %idxprom371.i
  store i16 %conv333.i1137, ptr %arrayidx397.i, align 2
  %PredArray.sroa.19.20.arrayidx397.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx397.i, i64 2
  store i16 %conv346.i1145, ptr %PredArray.sroa.19.20.arrayidx397.sroa_idx.i, align 2
  %PredArray.sroa.20.20.arrayidx397.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx397.i, i64 4
  store i16 %conv355.i, ptr %PredArray.sroa.20.20.arrayidx397.sroa_idx.i, align 2
  %PredArray.sroa.22.20.arrayidx397.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx397.i, i64 6
  store i16 %conv365.i1151, ptr %PredArray.sroa.22.20.arrayidx397.sroa_idx.i, align 2
  %PredArray.sroa.23.20.arrayidx397.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx397.i, i64 8
  store i16 %950, ptr %PredArray.sroa.23.20.arrayidx397.sroa_idx.i, align 2
  %arrayidx400.i = getelementptr i8, ptr %arrayidx370.i, i64 48
  %957 = load ptr, ptr %arrayidx400.i, align 8
  %arrayidx402.i1152 = getelementptr inbounds i16, ptr %957, i64 %idxprom371.i
  store i16 %conv355.i, ptr %arrayidx402.i1152, align 2
  %PredArray.sroa.22.24.arrayidx402.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx402.i1152, i64 2
  store i16 %conv365.i1151, ptr %PredArray.sroa.22.24.arrayidx402.sroa_idx.i, align 2
  %PredArray.sroa.23.24.arrayidx402.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx402.i1152, i64 4
  store i16 %950, ptr %PredArray.sroa.23.24.arrayidx402.sroa_idx.i, align 2
  %958 = load ptr, ptr %arrayidx390.i, align 8
  %idxprom407.i = sext i32 %add16.i1105 to i64
  %arrayidx408.i1153 = getelementptr inbounds i16, ptr %958, i64 %idxprom407.i
  store i16 %950, ptr %arrayidx408.i1153, align 2
  %959 = load ptr, ptr %arrayidx395.i, align 8
  %arrayidx413.i1154 = getelementptr inbounds i16, ptr %959, i64 %idxprom407.i
  store i16 %950, ptr %arrayidx413.i1154, align 2
  %960 = load ptr, ptr %arrayidx395.i, align 8
  %idxprom416.i = sext i32 %add15.i to i64
  %arrayidx417.i = getelementptr inbounds i16, ptr %960, i64 %idxprom416.i
  store i16 %950, ptr %arrayidx417.i, align 2
  %961 = load ptr, ptr %arrayidx395.i, align 8
  %idxprom420.i = sext i32 %add14.i to i64
  %arrayidx421.i1155 = getelementptr inbounds i16, ptr %961, i64 %idxprom420.i
  store i16 %950, ptr %arrayidx421.i1155, align 2
  %962 = load ptr, ptr %arrayidx400.i, align 8
  %arrayidx426.i1156 = getelementptr inbounds i16, ptr %962, i64 %idxprom407.i
  store i16 %950, ptr %arrayidx426.i1156, align 2
  %963 = load ptr, ptr %arrayidx400.i, align 8
  %arrayidx430.i = getelementptr inbounds i16, ptr %963, i64 %idxprom416.i
  store i16 %950, ptr %arrayidx430.i, align 2
  %964 = load ptr, ptr %arrayidx400.i, align 8
  %arrayidx434.i1157 = getelementptr inbounds i16, ptr %964, i64 %idxprom420.i
  store i16 %950, ptr %arrayidx434.i1157, align 2
  %965 = load ptr, ptr %arrayidx400.i, align 8
  %idxprom437.i = sext i32 %add13.i to i64
  %arrayidx438.i = getelementptr inbounds i16, ptr %965, i64 %idxprom437.i
  store i16 %950, ptr %arrayidx438.i, align 2
  %966 = load ptr, ptr %arrayidx400.i, align 8
  %idxprom441.i = sext i32 %add12.i to i64
  %arrayidx442.i1158 = getelementptr inbounds i16, ptr %966, i64 %idxprom441.i
  store i16 %950, ptr %arrayidx442.i1158, align 2
  %arrayidx445.i1159 = getelementptr i8, ptr %arrayidx370.i, i64 56
  %967 = load ptr, ptr %arrayidx445.i1159, align 8
  %arrayidx447.i1160 = getelementptr inbounds i16, ptr %967, i64 %idxprom407.i
  store i16 %950, ptr %arrayidx447.i1160, align 2
  %968 = load ptr, ptr %arrayidx445.i1159, align 8
  %arrayidx451.i1161 = getelementptr inbounds i16, ptr %968, i64 %idxprom416.i
  store i16 %950, ptr %arrayidx451.i1161, align 2
  %969 = load ptr, ptr %arrayidx445.i1159, align 8
  %arrayidx455.i = getelementptr inbounds i16, ptr %969, i64 %idxprom420.i
  store i16 %950, ptr %arrayidx455.i, align 2
  %970 = load ptr, ptr %arrayidx445.i1159, align 8
  %arrayidx459.i1162 = getelementptr inbounds i16, ptr %970, i64 %idxprom437.i
  store i16 %950, ptr %arrayidx459.i1162, align 2
  %971 = load ptr, ptr %arrayidx445.i1159, align 8
  %arrayidx463.i1163 = getelementptr inbounds i16, ptr %971, i64 %idxprom441.i
  store i16 %950, ptr %arrayidx463.i1163, align 2
  %972 = load ptr, ptr %arrayidx445.i1159, align 8
  %973 = getelementptr i16, ptr %972, i64 %idxprom371.i
  %arrayidx467.i = getelementptr i8, ptr %973, i64 4
  store i16 %950, ptr %arrayidx467.i, align 2
  %974 = load ptr, ptr %arrayidx445.i1159, align 8
  %975 = getelementptr i16, ptr %974, i64 %idxprom371.i
  %arrayidx471.i1164 = getelementptr i8, ptr %975, i64 2
  store i16 %950, ptr %arrayidx471.i1164, align 2
  %976 = load ptr, ptr %arrayidx445.i1159, align 8
  %arrayidx475.i1165 = getelementptr inbounds i16, ptr %976, i64 %idxprom371.i
  store i16 %950, ptr %arrayidx475.i1165, align 2
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pix_d.i1022) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pix_c.i1021) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pix_b.i1020) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pix_a.i1019) #6
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %PredPel.i1018) #6
  br label %cleanup

sw.bb21:                                          ; preds = %entry
  %p_Vid1.i1197 = getelementptr inbounds i8, ptr %currMB, i64 8
  %977 = load ptr, ptr %p_Vid1.i1197, align 8
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %PredPel.i1192) #6
  %tobool.not.i1198 = icmp eq i32 %pl, 0
  %dec_picture2.i1199 = getelementptr inbounds i8, ptr %2, i64 13520
  %978 = load ptr, ptr %dec_picture2.i1199, align 8
  br i1 %tobool.not.i1198, label %cond.false.i1414, label %cond.true.i1200

cond.true.i1200:                                  ; preds = %sw.bb21
  %imgUV.i1201 = getelementptr inbounds i8, ptr %978, i64 136
  %979 = load ptr, ptr %imgUV.i1201, align 8
  %sub.i1202 = add i32 %pl, -1
  %idxprom.i1203 = zext i32 %sub.i1202 to i64
  %arrayidx.i1204 = getelementptr inbounds ptr, ptr %979, i64 %idxprom.i1203
  br label %cond.end.i1205

cond.false.i1414:                                 ; preds = %sw.bb21
  %imgY3.i1415 = getelementptr inbounds i8, ptr %978, i64 128
  br label %cond.end.i1205

cond.end.i1205:                                   ; preds = %cond.false.i1414, %cond.true.i1200
  %cond.in.i1206 = phi ptr [ %arrayidx.i1204, %cond.true.i1200 ], [ %imgY3.i1415, %cond.false.i1414 ]
  %cond.i1207 = load ptr, ptr %cond.in.i1206, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pix_a.i1193) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pix_b.i1194) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pix_c.i1195) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pix_d.i1196) #6
  %mb_pred.i1208 = getelementptr inbounds i8, ptr %2, i64 1248
  %980 = load ptr, ptr %mb_pred.i1208, align 8
  %idxprom10.i1209 = zext i32 %pl to i64
  %arrayidx11.i1210 = getelementptr inbounds ptr, ptr %980, i64 %idxprom10.i1209
  %981 = load ptr, ptr %arrayidx11.i1210, align 8
  %mb_size12.i1211 = getelementptr inbounds i8, ptr %977, i64 849124
  %sub14.i1212 = add nsw i32 %ioff, -1
  call void @getNonAffNeighbour(ptr noundef nonnull %currMB, i32 noundef %sub14.i1212, i32 noundef %joff, ptr noundef nonnull %mb_size12.i1211, ptr noundef nonnull %pix_a.i1193) #6
  %sub15.i1213 = add nsw i32 %joff, -1
  call void @getNonAffNeighbour(ptr noundef nonnull %currMB, i32 noundef %ioff, i32 noundef %sub15.i1213, ptr noundef nonnull %mb_size12.i1211, ptr noundef nonnull %pix_b.i1194) #6
  %add16.i1214 = add nsw i32 %ioff, 8
  call void @getNonAffNeighbour(ptr noundef nonnull %currMB, i32 noundef %add16.i1214, i32 noundef %sub15.i1213, ptr noundef nonnull %mb_size12.i1211, ptr noundef nonnull %pix_c.i1195) #6
  call void @getNonAffNeighbour(ptr noundef nonnull %currMB, i32 noundef %sub14.i1212, i32 noundef %sub15.i1213, ptr noundef nonnull %mb_size12.i1211, ptr noundef nonnull %pix_d.i1196) #6
  %982 = load i32, ptr %pix_c.i1195, align 4
  %tobool20.not.i1215 = icmp ne i32 %982, 0
  %cmp.i1216 = icmp ne i32 %ioff, 8
  %cmp22.i1217 = icmp ne i32 %joff, 8
  %.not.i1218 = or i1 %cmp.i1216, %cmp22.i1217
  %narrow.i1219 = and i1 %.not.i1218, %tobool20.not.i1215
  %land.ext.i1220 = zext i1 %narrow.i1219 to i32
  store i32 %land.ext.i1220, ptr %pix_c.i1195, align 4
  %active_pps.i1221 = getelementptr inbounds i8, ptr %977, i64 8
  %983 = load ptr, ptr %active_pps.i1221, align 8
  %constrained_intra_pred_flag.i1222 = getelementptr inbounds i8, ptr %983, i64 2204
  %984 = load i32, ptr %constrained_intra_pred_flag.i1222, align 4
  %tobool25.not.i1223 = icmp eq i32 %984, 0
  %985 = load i32, ptr %pix_a.i1193, align 4
  br i1 %tobool25.not.i1223, label %if.else.i1413, label %if.then.i1224

if.then.i1224:                                    ; preds = %cond.end.i1205
  %tobool27.not.i1225 = icmp eq i32 %985, 0
  br i1 %tobool27.not.i1225, label %cond.end32.i1232, label %cond.true28.i1226

cond.true28.i1226:                                ; preds = %if.then.i1224
  %intra_block.i1227 = getelementptr inbounds i8, ptr %2, i64 13544
  %986 = load ptr, ptr %intra_block.i1227, align 8
  %mb_addr.i1228 = getelementptr inbounds i8, ptr %pix_a.i1193, i64 4
  %987 = load i32, ptr %mb_addr.i1228, align 4
  %idxprom29.i1229 = sext i32 %987 to i64
  %arrayidx30.i1230 = getelementptr inbounds i8, ptr %986, i64 %idxprom29.i1229
  %988 = load i8, ptr %arrayidx30.i1230, align 1
  %conv.i1231 = sext i8 %988 to i32
  br label %cond.end32.i1232

cond.end32.i1232:                                 ; preds = %cond.true28.i1226, %if.then.i1224
  %cond33.i1233 = phi i32 [ %conv.i1231, %cond.true28.i1226 ], [ 0, %if.then.i1224 ]
  %989 = load i32, ptr %pix_b.i1194, align 4
  %tobool35.not.i1234 = icmp eq i32 %989, 0
  br i1 %tobool35.not.i1234, label %cond.end43.i1241, label %cond.true36.i1235

cond.true36.i1235:                                ; preds = %cond.end32.i1232
  %intra_block37.i1236 = getelementptr inbounds i8, ptr %2, i64 13544
  %990 = load ptr, ptr %intra_block37.i1236, align 8
  %mb_addr38.i1237 = getelementptr inbounds i8, ptr %pix_b.i1194, i64 4
  %991 = load i32, ptr %mb_addr38.i1237, align 4
  %idxprom39.i1238 = sext i32 %991 to i64
  %arrayidx40.i1239 = getelementptr inbounds i8, ptr %990, i64 %idxprom39.i1238
  %992 = load i8, ptr %arrayidx40.i1239, align 1
  %conv41.i1240 = sext i8 %992 to i32
  br label %cond.end43.i1241

cond.end43.i1241:                                 ; preds = %cond.true36.i1235, %cond.end32.i1232
  %cond44.i1242 = phi i32 [ %conv41.i1240, %cond.true36.i1235 ], [ 0, %cond.end32.i1232 ]
  br i1 %narrow.i1219, label %cond.true47.i, label %cond.end54.i

cond.true47.i:                                    ; preds = %cond.end43.i1241
  %intra_block48.i = getelementptr inbounds i8, ptr %2, i64 13544
  %993 = load ptr, ptr %intra_block48.i, align 8
  %mb_addr49.i = getelementptr inbounds i8, ptr %pix_c.i1195, i64 4
  %994 = load i32, ptr %mb_addr49.i, align 4
  %idxprom50.i = sext i32 %994 to i64
  %arrayidx51.i = getelementptr inbounds i8, ptr %993, i64 %idxprom50.i
  %995 = load i8, ptr %arrayidx51.i, align 1
  %conv52.i = sext i8 %995 to i32
  br label %cond.end54.i

cond.end54.i:                                     ; preds = %cond.true47.i, %cond.end43.i1241
  %cond55.i = phi i32 [ %conv52.i, %cond.true47.i ], [ 0, %cond.end43.i1241 ]
  %996 = load i32, ptr %pix_d.i1196, align 4
  %tobool57.not.i1243 = icmp eq i32 %996, 0
  br i1 %tobool57.not.i1243, label %if.end.thread.i1412, label %cond.true58.i1244

if.end.thread.i1412:                              ; preds = %cond.end54.i
  %tobool71604.not.i = icmp eq i32 %cond44.i1242, 0
  %tobool72605.i = icmp ne i32 %cond33.i1233, 0
  %current_mb_nr641.i = getelementptr inbounds i8, ptr %2, i64 108
  %997 = load i32, ptr %current_mb_nr641.i, align 4
  %call642.i = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, i32 noundef %997)
  br i1 %tobool71604.not.i, label %if.else99.i, label %if.then78.i

cond.true58.i1244:                                ; preds = %cond.end54.i
  %intra_block59.i1245 = getelementptr inbounds i8, ptr %2, i64 13544
  %998 = load ptr, ptr %intra_block59.i1245, align 8
  %mb_addr60.i1246 = getelementptr inbounds i8, ptr %pix_d.i1196, i64 4
  %999 = load i32, ptr %mb_addr60.i1246, align 4
  %idxprom61.i1247 = sext i32 %999 to i64
  %arrayidx62.i1248 = getelementptr inbounds i8, ptr %998, i64 %idxprom61.i1247
  %1000 = load i8, ptr %arrayidx62.i1248, align 1
  %conv63.i1249 = sext i8 %1000 to i32
  br label %if.end.i1250

if.else.i1413:                                    ; preds = %cond.end.i1205
  %1001 = load i32, ptr %pix_b.i1194, align 4
  %1002 = load i32, ptr %pix_d.i1196, align 4
  br label %if.end.i1250

if.end.i1250:                                     ; preds = %if.else.i1413, %cond.true58.i1244
  %block_available_up_right.0.i1251 = phi i32 [ %land.ext.i1220, %if.else.i1413 ], [ %cond55.i, %cond.true58.i1244 ]
  %block_available_up_left.0.i1252 = phi i32 [ %1002, %if.else.i1413 ], [ %conv63.i1249, %cond.true58.i1244 ]
  %block_available_left.0.i1253 = phi i32 [ %985, %if.else.i1413 ], [ %cond33.i1233, %cond.true58.i1244 ]
  %block_available_up.0.i1254 = phi i32 [ %1001, %if.else.i1413 ], [ %cond44.i1242, %cond.true58.i1244 ]
  %tobool71.i = icmp ne i32 %block_available_up.0.i1254, 0
  %tobool72.i = icmp ne i32 %block_available_left.0.i1253, 0
  %or.cond.i1255 = select i1 %tobool71.i, i1 %tobool72.i, i1 false
  %tobool74.i = icmp ne i32 %block_available_up_left.0.i1252, 0
  %or.cond506.i = select i1 %or.cond.i1255, i1 %tobool74.i, i1 false
  br i1 %or.cond506.i, label %if.then78.i, label %if.then75.i

if.then75.i:                                      ; preds = %if.end.i1250
  %current_mb_nr.i1256 = getelementptr inbounds i8, ptr %2, i64 108
  %1003 = load i32, ptr %current_mb_nr.i1256, align 4
  %call.i1257 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, i32 noundef %1003)
  br i1 %tobool71.i, label %if.then78.i, label %if.else99.i

if.then78.i:                                      ; preds = %if.then75.i, %if.end.i1250, %if.end.thread.i1412
  %block_available_up_right.0610640.i = phi i32 [ %block_available_up_right.0.i1251, %if.then75.i ], [ %cond55.i, %if.end.thread.i1412 ], [ %block_available_up_right.0.i1251, %if.end.i1250 ]
  %block_available_up_left.0612637.i = phi i32 [ %block_available_up_left.0.i1252, %if.then75.i ], [ 0, %if.end.thread.i1412 ], [ %block_available_up_left.0.i1252, %if.end.i1250 ]
  %block_available_left.0614634.i = phi i32 [ %block_available_left.0.i1253, %if.then75.i ], [ %cond33.i1233, %if.end.thread.i1412 ], [ %block_available_left.0.i1253, %if.end.i1250 ]
  %block_available_up.0616631.i = phi i32 [ %block_available_up.0.i1254, %if.then75.i ], [ %cond44.i1242, %if.end.thread.i1412 ], [ %block_available_up.0.i1254, %if.end.i1250 ]
  %tobool72620628.i = phi i1 [ %tobool72.i, %if.then75.i ], [ %tobool72605.i, %if.end.thread.i1412 ], [ true, %if.end.i1250 ]
  %tobool74622625.i = phi i1 [ %tobool74.i, %if.then75.i ], [ false, %if.end.thread.i1412 ], [ true, %if.end.i1250 ]
  %pos_y.i1393 = getelementptr inbounds i8, ptr %pix_b.i1194, i64 14
  %1004 = load i16, ptr %pos_y.i1393, align 2
  %idxprom79.i = sext i16 %1004 to i64
  %arrayidx80.i1394 = getelementptr inbounds ptr, ptr %cond.i1207, i64 %idxprom79.i
  %1005 = load ptr, ptr %arrayidx80.i1394, align 8
  %pos_x.i1395 = getelementptr inbounds i8, ptr %pix_b.i1194, i64 12
  %1006 = load i16, ptr %pos_x.i1395, align 4
  %idxprom81.i = sext i16 %1006 to i64
  %arrayidx82.i1396 = getelementptr inbounds i16, ptr %1005, i64 %idxprom81.i
  %1007 = load i16, ptr %arrayidx82.i1396, align 2
  %arrayidx84.i1397 = getelementptr inbounds i8, ptr %PredPel.i1192, i64 2
  store i16 %1007, ptr %arrayidx84.i1397, align 2
  %arrayidx85.i1398 = getelementptr inbounds i8, ptr %arrayidx82.i1396, i64 2
  %1008 = load i16, ptr %arrayidx85.i1398, align 2
  %arrayidx86.i1399 = getelementptr inbounds i8, ptr %PredPel.i1192, i64 4
  store i16 %1008, ptr %arrayidx86.i1399, align 4
  %arrayidx87.i1400 = getelementptr inbounds i8, ptr %arrayidx82.i1396, i64 4
  %1009 = load i16, ptr %arrayidx87.i1400, align 2
  %arrayidx88.i1401 = getelementptr inbounds i8, ptr %PredPel.i1192, i64 6
  store i16 %1009, ptr %arrayidx88.i1401, align 2
  %arrayidx89.i1402 = getelementptr inbounds i8, ptr %arrayidx82.i1396, i64 6
  %1010 = load i16, ptr %arrayidx89.i1402, align 2
  %arrayidx90.i1403 = getelementptr inbounds i8, ptr %PredPel.i1192, i64 8
  store i16 %1010, ptr %arrayidx90.i1403, align 8
  %arrayidx91.i1404 = getelementptr inbounds i8, ptr %arrayidx82.i1396, i64 8
  %1011 = load i16, ptr %arrayidx91.i1404, align 2
  %arrayidx92.i1405 = getelementptr inbounds i8, ptr %PredPel.i1192, i64 10
  store i16 %1011, ptr %arrayidx92.i1405, align 2
  %arrayidx93.i1406 = getelementptr inbounds i8, ptr %arrayidx82.i1396, i64 10
  %1012 = load i16, ptr %arrayidx93.i1406, align 2
  %arrayidx94.i1407 = getelementptr inbounds i8, ptr %PredPel.i1192, i64 12
  store i16 %1012, ptr %arrayidx94.i1407, align 4
  %arrayidx95.i1408 = getelementptr inbounds i8, ptr %arrayidx82.i1396, i64 12
  %1013 = load i16, ptr %arrayidx95.i1408, align 2
  %arrayidx96.i1409 = getelementptr inbounds i8, ptr %PredPel.i1192, i64 14
  store i16 %1013, ptr %arrayidx96.i1409, align 2
  %arrayidx97.i1410 = getelementptr inbounds i8, ptr %arrayidx82.i1396, i64 14
  %1014 = load i16, ptr %arrayidx97.i1410, align 2
  %arrayidx98.i1411 = getelementptr inbounds i8, ptr %PredPel.i1192, i64 16
  store i16 %1014, ptr %arrayidx98.i1411, align 16
  br label %if.end111.i

if.else99.i:                                      ; preds = %if.then75.i, %if.end.thread.i1412
  %block_available_up_right.0610639.i = phi i32 [ %block_available_up_right.0.i1251, %if.then75.i ], [ %cond55.i, %if.end.thread.i1412 ]
  %block_available_up_left.0612636.i = phi i32 [ %block_available_up_left.0.i1252, %if.then75.i ], [ 0, %if.end.thread.i1412 ]
  %block_available_left.0614633.i = phi i32 [ %block_available_left.0.i1253, %if.then75.i ], [ %cond33.i1233, %if.end.thread.i1412 ]
  %tobool72620627.i = phi i1 [ %tobool72.i, %if.then75.i ], [ %tobool72605.i, %if.end.thread.i1412 ]
  %tobool74622624.i = phi i1 [ %tobool74.i, %if.then75.i ], [ false, %if.end.thread.i1412 ]
  %dc_pred_value_comp.i1258 = getelementptr inbounds i8, ptr %977, i64 849060
  %arrayidx101.i1259 = getelementptr inbounds [3 x i32], ptr %dc_pred_value_comp.i1258, i64 0, i64 %idxprom10.i1209
  %1015 = load i32, ptr %arrayidx101.i1259, align 4
  %conv102.i = trunc i32 %1015 to i16
  %arrayidx110.i1267 = getelementptr inbounds i8, ptr %PredPel.i1192, i64 2
  %1016 = insertelement <8 x i16> poison, i16 %conv102.i, i64 0
  %1017 = shufflevector <8 x i16> %1016, <8 x i16> poison, <8 x i32> zeroinitializer
  store <8 x i16> %1017, ptr %arrayidx110.i1267, align 2
  br label %if.end111.i

if.end111.i:                                      ; preds = %if.else99.i, %if.then78.i
  %1018 = phi i16 [ %conv102.i, %if.else99.i ], [ %1014, %if.then78.i ]
  %block_available_up_right.0610638.i = phi i32 [ %block_available_up_right.0610639.i, %if.else99.i ], [ %block_available_up_right.0610640.i, %if.then78.i ]
  %block_available_up_left.0612635.i = phi i32 [ %block_available_up_left.0612636.i, %if.else99.i ], [ %block_available_up_left.0612637.i, %if.then78.i ]
  %block_available_left.0614632.i = phi i32 [ %block_available_left.0614633.i, %if.else99.i ], [ %block_available_left.0614634.i, %if.then78.i ]
  %block_available_up.0616629.i = phi i32 [ 0, %if.else99.i ], [ %block_available_up.0616631.i, %if.then78.i ]
  %tobool72620626.i = phi i1 [ %tobool72620627.i, %if.else99.i ], [ %tobool72620628.i, %if.then78.i ]
  %tobool74622623.i = phi i1 [ %tobool74622624.i, %if.else99.i ], [ %tobool74622625.i, %if.then78.i ]
  %tobool112.not.i = icmp eq i32 %block_available_up_right.0610638.i, 0
  br i1 %tobool112.not.i, label %if.else136.i, label %if.then113.i

if.then113.i:                                     ; preds = %if.end111.i
  %pos_y114.i = getelementptr inbounds i8, ptr %pix_c.i1195, i64 14
  %1019 = load i16, ptr %pos_y114.i, align 2
  %idxprom115.i = sext i16 %1019 to i64
  %arrayidx116.i1268 = getelementptr inbounds ptr, ptr %cond.i1207, i64 %idxprom115.i
  %1020 = load ptr, ptr %arrayidx116.i1268, align 8
  %pos_x117.i = getelementptr inbounds i8, ptr %pix_c.i1195, i64 12
  %1021 = load i16, ptr %pos_x117.i, align 4
  %idxprom118.i = sext i16 %1021 to i64
  %arrayidx119.i1269 = getelementptr inbounds i16, ptr %1020, i64 %idxprom118.i
  %1022 = load i16, ptr %arrayidx119.i1269, align 2
  %arrayidx121.i1270 = getelementptr inbounds i8, ptr %PredPel.i1192, i64 18
  store i16 %1022, ptr %arrayidx121.i1270, align 2
  %arrayidx122.i1271 = getelementptr inbounds i8, ptr %arrayidx119.i1269, i64 2
  %1023 = load i16, ptr %arrayidx122.i1271, align 2
  %arrayidx123.i1272 = getelementptr inbounds i8, ptr %PredPel.i1192, i64 20
  store i16 %1023, ptr %arrayidx123.i1272, align 4
  %arrayidx124.i1273 = getelementptr inbounds i8, ptr %arrayidx119.i1269, i64 4
  %1024 = load i16, ptr %arrayidx124.i1273, align 2
  %arrayidx125.i1274 = getelementptr inbounds i8, ptr %PredPel.i1192, i64 22
  store i16 %1024, ptr %arrayidx125.i1274, align 2
  %arrayidx126.i1275 = getelementptr inbounds i8, ptr %arrayidx119.i1269, i64 6
  %1025 = load i16, ptr %arrayidx126.i1275, align 2
  %arrayidx127.i1276 = getelementptr inbounds i8, ptr %PredPel.i1192, i64 24
  store i16 %1025, ptr %arrayidx127.i1276, align 8
  %arrayidx128.i1277 = getelementptr inbounds i8, ptr %arrayidx119.i1269, i64 8
  %1026 = load i16, ptr %arrayidx128.i1277, align 2
  %arrayidx129.i1278 = getelementptr inbounds i8, ptr %PredPel.i1192, i64 26
  store i16 %1026, ptr %arrayidx129.i1278, align 2
  %arrayidx130.i1279 = getelementptr inbounds i8, ptr %arrayidx119.i1269, i64 10
  %1027 = load i16, ptr %arrayidx130.i1279, align 2
  %arrayidx131.i1280 = getelementptr inbounds i8, ptr %PredPel.i1192, i64 28
  store i16 %1027, ptr %arrayidx131.i1280, align 4
  %arrayidx132.i1281 = getelementptr inbounds i8, ptr %arrayidx119.i1269, i64 12
  %1028 = load i16, ptr %arrayidx132.i1281, align 2
  %arrayidx133.i1282 = getelementptr inbounds i8, ptr %PredPel.i1192, i64 30
  store i16 %1028, ptr %arrayidx133.i1282, align 2
  %arrayidx134.i1283 = getelementptr inbounds i8, ptr %arrayidx119.i1269, i64 14
  %1029 = load i16, ptr %arrayidx134.i1283, align 2
  %arrayidx135.i1284 = getelementptr inbounds i8, ptr %PredPel.i1192, i64 32
  store i16 %1029, ptr %arrayidx135.i1284, align 16
  br label %if.end146.i

if.else136.i:                                     ; preds = %if.end111.i
  %arrayidx145.i1392 = getelementptr inbounds i8, ptr %PredPel.i1192, i64 18
  %1030 = insertelement <8 x i16> poison, i16 %1018, i64 0
  %1031 = shufflevector <8 x i16> %1030, <8 x i16> poison, <8 x i32> zeroinitializer
  store <8 x i16> %1031, ptr %arrayidx145.i1392, align 2
  br label %if.end146.i

if.end146.i:                                      ; preds = %if.else136.i, %if.then113.i
  br i1 %tobool72620626.i, label %if.then148.i, label %if.else183.i

if.then148.i:                                     ; preds = %if.end146.i
  %pos_y149.i = getelementptr inbounds i8, ptr %pix_a.i1193, i64 14
  %1032 = load i16, ptr %pos_y149.i, align 2
  %idxprom150.i = sext i16 %1032 to i64
  %arrayidx151.i1365 = getelementptr inbounds ptr, ptr %cond.i1207, i64 %idxprom150.i
  %pos_x153.i = getelementptr inbounds i8, ptr %pix_a.i1193, i64 12
  %1033 = load i16, ptr %pos_x153.i, align 4
  %incdec.ptr.i1366 = getelementptr inbounds i8, ptr %arrayidx151.i1365, i64 8
  %1034 = load ptr, ptr %arrayidx151.i1365, align 8
  %idx.ext.i1367 = sext i16 %1033 to i64
  %add.ptr.i1368 = getelementptr inbounds i16, ptr %1034, i64 %idx.ext.i1367
  %1035 = load i16, ptr %add.ptr.i1368, align 2
  %arrayidx155.i1369 = getelementptr inbounds i8, ptr %PredPel.i1192, i64 34
  store i16 %1035, ptr %arrayidx155.i1369, align 2
  %incdec.ptr156.i = getelementptr inbounds i8, ptr %arrayidx151.i1365, i64 16
  %1036 = load ptr, ptr %incdec.ptr.i1366, align 8
  %add.ptr158.i = getelementptr inbounds i16, ptr %1036, i64 %idx.ext.i1367
  %1037 = load i16, ptr %add.ptr158.i, align 2
  %arrayidx159.i1370 = getelementptr inbounds i8, ptr %PredPel.i1192, i64 36
  store i16 %1037, ptr %arrayidx159.i1370, align 4
  %incdec.ptr160.i1371 = getelementptr inbounds i8, ptr %arrayidx151.i1365, i64 24
  %1038 = load ptr, ptr %incdec.ptr156.i, align 8
  %add.ptr162.i1372 = getelementptr inbounds i16, ptr %1038, i64 %idx.ext.i1367
  %1039 = load i16, ptr %add.ptr162.i1372, align 2
  %arrayidx163.i1373 = getelementptr inbounds i8, ptr %PredPel.i1192, i64 38
  store i16 %1039, ptr %arrayidx163.i1373, align 2
  %incdec.ptr164.i1374 = getelementptr inbounds i8, ptr %arrayidx151.i1365, i64 32
  %1040 = load ptr, ptr %incdec.ptr160.i1371, align 8
  %add.ptr166.i1375 = getelementptr inbounds i16, ptr %1040, i64 %idx.ext.i1367
  %1041 = load i16, ptr %add.ptr166.i1375, align 2
  %arrayidx167.i1376 = getelementptr inbounds i8, ptr %PredPel.i1192, i64 40
  store i16 %1041, ptr %arrayidx167.i1376, align 8
  %incdec.ptr168.i1377 = getelementptr inbounds i8, ptr %arrayidx151.i1365, i64 40
  %1042 = load ptr, ptr %incdec.ptr164.i1374, align 8
  %add.ptr170.i1378 = getelementptr inbounds i16, ptr %1042, i64 %idx.ext.i1367
  %1043 = load i16, ptr %add.ptr170.i1378, align 2
  %arrayidx171.i1379 = getelementptr inbounds i8, ptr %PredPel.i1192, i64 42
  store i16 %1043, ptr %arrayidx171.i1379, align 2
  %incdec.ptr172.i1380 = getelementptr inbounds i8, ptr %arrayidx151.i1365, i64 48
  %1044 = load ptr, ptr %incdec.ptr168.i1377, align 8
  %add.ptr174.i1381 = getelementptr inbounds i16, ptr %1044, i64 %idx.ext.i1367
  %1045 = load i16, ptr %add.ptr174.i1381, align 2
  %arrayidx175.i1382 = getelementptr inbounds i8, ptr %PredPel.i1192, i64 44
  store i16 %1045, ptr %arrayidx175.i1382, align 4
  %incdec.ptr176.i1383 = getelementptr inbounds i8, ptr %arrayidx151.i1365, i64 56
  %1046 = load ptr, ptr %incdec.ptr172.i1380, align 8
  %add.ptr178.i1384 = getelementptr inbounds i16, ptr %1046, i64 %idx.ext.i1367
  %1047 = load i16, ptr %add.ptr178.i1384, align 2
  %arrayidx179.i1385 = getelementptr inbounds i8, ptr %PredPel.i1192, i64 46
  store i16 %1047, ptr %arrayidx179.i1385, align 2
  %1048 = load ptr, ptr %incdec.ptr176.i1383, align 8
  %add.ptr181.i = getelementptr inbounds i16, ptr %1048, i64 %idx.ext.i1367
  %1049 = load i16, ptr %add.ptr181.i, align 2
  br label %if.end196.i

if.else183.i:                                     ; preds = %if.end146.i
  %dc_pred_value_comp184.i = getelementptr inbounds i8, ptr %977, i64 849060
  %arrayidx186.i1285 = getelementptr inbounds [3 x i32], ptr %dc_pred_value_comp184.i, i64 0, i64 %idxprom10.i1209
  %1050 = load i32, ptr %arrayidx186.i1285, align 4
  %conv187.i = trunc i32 %1050 to i16
  %arrayidx189.i = getelementptr inbounds i8, ptr %PredPel.i1192, i64 46
  store i16 %conv187.i, ptr %arrayidx189.i, align 2
  %arrayidx190.i1286 = getelementptr inbounds i8, ptr %PredPel.i1192, i64 44
  store i16 %conv187.i, ptr %arrayidx190.i1286, align 4
  %arrayidx191.i1287 = getelementptr inbounds i8, ptr %PredPel.i1192, i64 42
  store i16 %conv187.i, ptr %arrayidx191.i1287, align 2
  %arrayidx195.i1291 = getelementptr inbounds i8, ptr %PredPel.i1192, i64 34
  %1051 = insertelement <4 x i16> poison, i16 %conv187.i, i64 0
  %1052 = shufflevector <4 x i16> %1051, <4 x i16> poison, <4 x i32> zeroinitializer
  store <4 x i16> %1052, ptr %arrayidx195.i1291, align 2
  br label %if.end196.i

if.end196.i:                                      ; preds = %if.else183.i, %if.then148.i
  %conv187.sink.i = phi i16 [ %1049, %if.then148.i ], [ %conv187.i, %if.else183.i ]
  %1053 = getelementptr inbounds i8, ptr %PredPel.i1192, i64 48
  store i16 %conv187.sink.i, ptr %1053, align 16
  br i1 %tobool74622623.i, label %if.then198.i, label %if.else206.i

if.then198.i:                                     ; preds = %if.end196.i
  %pos_y199.i = getelementptr inbounds i8, ptr %pix_d.i1196, i64 14
  %1054 = load i16, ptr %pos_y199.i, align 2
  %idxprom200.i = sext i16 %1054 to i64
  %arrayidx201.i = getelementptr inbounds ptr, ptr %cond.i1207, i64 %idxprom200.i
  %1055 = load ptr, ptr %arrayidx201.i, align 8
  %pos_x202.i = getelementptr inbounds i8, ptr %pix_d.i1196, i64 12
  %1056 = load i16, ptr %pos_x202.i, align 4
  %idxprom203.i = sext i16 %1056 to i64
  %arrayidx204.i1364 = getelementptr inbounds i16, ptr %1055, i64 %idxprom203.i
  %1057 = load i16, ptr %arrayidx204.i1364, align 2
  br label %intra8x8_hor_down_pred.exit

if.else206.i:                                     ; preds = %if.end196.i
  %dc_pred_value_comp207.i = getelementptr inbounds i8, ptr %977, i64 849060
  %arrayidx209.i1292 = getelementptr inbounds [3 x i32], ptr %dc_pred_value_comp207.i, i64 0, i64 %idxprom10.i1209
  %1058 = load i32, ptr %arrayidx209.i1292, align 4
  %conv210.i1293 = trunc i32 %1058 to i16
  br label %intra8x8_hor_down_pred.exit

intra8x8_hor_down_pred.exit:                      ; preds = %if.then198.i, %if.else206.i
  %storemerge.i1294 = phi i16 [ %conv210.i1293, %if.else206.i ], [ %1057, %if.then198.i ]
  %.sink.i1295 = phi i32 [ 0, %if.else206.i ], [ %block_available_up_left.0612635.i, %if.then198.i ]
  store i16 %storemerge.i1294, ptr %PredPel.i1192, align 16
  call fastcc void @LowPassForIntra8x8Pred(ptr noundef nonnull %PredPel.i1192, i32 noundef %.sink.i1295, i32 noundef %block_available_up.0616629.i, i32 noundef %block_available_left.0614632.i)
  %1059 = load i16, ptr %1053, align 16
  %conv215.i = zext i16 %1059 to i32
  %arrayidx216.i = getelementptr inbounds i8, ptr %PredPel.i1192, i64 46
  %1060 = load i16, ptr %arrayidx216.i, align 2
  %conv217.i = zext i16 %1060 to i32
  %add218.i1296 = add nuw nsw i32 %conv217.i, 1
  %add219.i = add nuw nsw i32 %add218.i1296, %conv215.i
  %shr.i1297 = lshr i32 %add219.i, 1
  %conv220.i1298 = trunc nuw i32 %shr.i1297 to i16
  %arrayidx222.i = getelementptr inbounds i8, ptr %PredPel.i1192, i64 44
  %1061 = load i16, ptr %arrayidx222.i, align 4
  %conv223.i = zext i16 %1061 to i32
  %mul.i1299 = shl nuw nsw i32 %conv217.i, 1
  %add226.i1300 = add nuw nsw i32 %conv223.i, 2
  %add229.i1301 = add nuw nsw i32 %mul.i1299, %conv215.i
  %add230.i1302 = add nuw nsw i32 %add229.i1301, %add226.i1300
  %shr231.i = lshr i32 %add230.i1302, 2
  %conv232.i1303 = trunc nuw i32 %shr231.i to i16
  %add239.i1304 = add nuw nsw i32 %add218.i1296, %conv223.i
  %shr240.i = lshr i32 %add239.i1304, 1
  %conv241.i = trunc nuw i32 %shr240.i to i16
  %arrayidx243.i = getelementptr inbounds i8, ptr %PredPel.i1192, i64 42
  %1062 = load i16, ptr %arrayidx243.i, align 2
  %conv244.i = zext i16 %1062 to i32
  %mul250.i = shl nuw nsw i32 %conv223.i, 1
  %add247.i1305 = add nuw nsw i32 %conv244.i, 2
  %add251.i1306 = add nuw nsw i32 %mul250.i, %conv217.i
  %add252.i1307 = add nuw nsw i32 %add251.i1306, %add247.i1305
  %shr253.i = lshr i32 %add252.i1307, 2
  %conv254.i = trunc nuw i32 %shr253.i to i16
  %add260.i = add nuw nsw i32 %conv244.i, 1
  %add261.i1308 = add nuw nsw i32 %add260.i, %conv223.i
  %shr262.i = lshr i32 %add261.i1308, 1
  %conv263.i1309 = trunc nuw i32 %shr262.i to i16
  %arrayidx265.i1310 = getelementptr inbounds i8, ptr %PredPel.i1192, i64 40
  %1063 = load i16, ptr %arrayidx265.i1310, align 8
  %conv266.i1311 = zext i16 %1063 to i32
  %mul272.i = shl nuw nsw i32 %conv244.i, 1
  %add273.i1312 = add nuw nsw i32 %add226.i1300, %conv266.i1311
  %add274.i1313 = add nuw nsw i32 %add273.i1312, %mul272.i
  %shr275.i = lshr i32 %add274.i1313, 2
  %conv276.i = trunc nuw i32 %shr275.i to i16
  %add283.i = add nuw nsw i32 %add260.i, %conv266.i1311
  %shr284.i = lshr i32 %add283.i, 1
  %conv285.i = trunc nuw i32 %shr284.i to i16
  %arrayidx287.i1314 = getelementptr inbounds i8, ptr %PredPel.i1192, i64 38
  %1064 = load i16, ptr %arrayidx287.i1314, align 2
  %conv288.i1315 = zext i16 %1064 to i32
  %mul294.i = shl nuw nsw i32 %conv266.i1311, 1
  %add295.i = add nuw nsw i32 %add247.i1305, %conv288.i1315
  %add296.i = add nuw nsw i32 %add295.i, %mul294.i
  %shr297.i = lshr i32 %add296.i, 2
  %conv298.i = trunc nuw i32 %shr297.i to i16
  %add304.i1316 = add nuw nsw i32 %conv266.i1311, 1
  %add305.i1317 = add nuw nsw i32 %add304.i1316, %conv288.i1315
  %shr306.i1318 = lshr i32 %add305.i1317, 1
  %conv307.i1319 = trunc nuw i32 %shr306.i1318 to i16
  %arrayidx309.i1320 = getelementptr inbounds i8, ptr %PredPel.i1192, i64 36
  %1065 = load i16, ptr %arrayidx309.i1320, align 4
  %conv310.i1321 = zext i16 %1065 to i32
  %mul316.i1322 = shl nuw nsw i32 %conv288.i1315, 1
  %add313.i1323 = add nuw nsw i32 %conv310.i1321, 2
  %add317.i1324 = add nuw nsw i32 %add313.i1323, %conv266.i1311
  %add318.i1325 = add nuw nsw i32 %add317.i1324, %mul316.i1322
  %shr319.i1326 = lshr i32 %add318.i1325, 2
  %conv320.i1327 = trunc nuw i32 %shr319.i1326 to i16
  %add326.i1328 = add nuw nsw i32 %conv288.i1315, 1
  %add327.i = add nuw nsw i32 %add326.i1328, %conv310.i1321
  %shr328.i = lshr i32 %add327.i, 1
  %conv329.i = trunc nuw i32 %shr328.i to i16
  %arrayidx331.i1329 = getelementptr inbounds i8, ptr %PredPel.i1192, i64 34
  %1066 = load i16, ptr %arrayidx331.i1329, align 2
  %conv332.i = zext i16 %1066 to i32
  %mul338.i = shl nuw nsw i32 %conv310.i1321, 1
  %add335.i = add nuw nsw i32 %conv332.i, 2
  %add339.i1330 = add nuw nsw i32 %add335.i, %conv288.i1315
  %add340.i = add nuw nsw i32 %add339.i1330, %mul338.i
  %shr341.i = lshr i32 %add340.i, 2
  %conv342.i = trunc nuw i32 %shr341.i to i16
  %add348.i = add nuw nsw i32 %conv310.i1321, 1
  %add349.i1331 = add nuw nsw i32 %add348.i, %conv332.i
  %shr350.i = lshr i32 %add349.i1331, 1
  %conv351.i1332 = trunc nuw i32 %shr350.i to i16
  %1067 = load i16, ptr %PredPel.i1192, align 16
  %conv354.i = zext i16 %1067 to i32
  %mul360.i = shl nuw nsw i32 %conv332.i, 1
  %add361.i = add nuw nsw i32 %add313.i1323, %conv354.i
  %add362.i1334 = add nuw nsw i32 %add361.i, %mul360.i
  %shr363.i = lshr i32 %add362.i1334, 2
  %conv364.i1335 = trunc nuw i32 %shr363.i to i16
  %add370.i1336 = add nuw nsw i32 %conv332.i, 1
  %add371.i1337 = add nuw nsw i32 %add370.i1336, %conv354.i
  %shr372.i = lshr i32 %add371.i1337, 1
  %conv373.i = trunc nuw i32 %shr372.i to i16
  %arrayidx377.i1338 = getelementptr inbounds i8, ptr %PredPel.i1192, i64 2
  %1068 = load i16, ptr %arrayidx377.i1338, align 2
  %conv378.i1339 = zext i16 %1068 to i32
  %mul382.i = shl nuw nsw i32 %conv354.i, 1
  %add383.i1340 = add nuw nsw i32 %add335.i, %conv378.i1339
  %add384.i1341 = add nuw nsw i32 %add383.i1340, %mul382.i
  %shr385.i = lshr i32 %add384.i1341, 2
  %conv386.i = trunc nuw i32 %shr385.i to i16
  %arrayidx390.i1342 = getelementptr inbounds i8, ptr %PredPel.i1192, i64 4
  %mul395.i = shl nuw nsw i32 %conv378.i1339, 1
  %add392.i = add nuw nsw i32 %conv354.i, 2
  %add405.i = add nuw nsw i32 %conv378.i1339, 2
  %arrayidx442.i1354 = getelementptr inbounds i8, ptr %PredPel.i1192, i64 12
  %1069 = load i16, ptr %arrayidx442.i1354, align 4
  %conv443.i1355 = zext i16 %1069 to i32
  %arrayidx455.i1356 = getelementptr inbounds i8, ptr %PredPel.i1192, i64 14
  %1070 = load i16, ptr %arrayidx455.i1356, align 2
  %conv456.i = zext i16 %1070 to i32
  %idxprom466.i = sext i32 %joff to i64
  %arrayidx467.i1357 = getelementptr inbounds ptr, ptr %981, i64 %idxprom466.i
  %1071 = load ptr, ptr %arrayidx467.i1357, align 8
  %idxprom468.i = sext i32 %ioff to i64
  %arrayidx469.i1358 = getelementptr inbounds i16, ptr %1071, i64 %idxprom468.i
  %PredArray.sroa.25.28.arrayidx469.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx469.i1358, i64 2
  %PredArray.sroa.26.28.arrayidx469.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx469.i1358, i64 4
  %PredArray.sroa.27.28.arrayidx469.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx469.i1358, i64 6
  %PredArray.sroa.28.28.arrayidx469.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx469.i1358, i64 8
  %1072 = load <4 x i16>, ptr %arrayidx390.i1342, align 4
  %1073 = zext <4 x i16> %1072 to <4 x i32>
  %1074 = extractelement <4 x i32> %1073, i64 0
  %add396.i1344 = add nuw nsw i32 %add392.i, %1074
  %add397.i1345 = add nuw nsw i32 %add396.i1344, %mul395.i
  %shr398.i = lshr i32 %add397.i1345, 2
  %conv399.i = trunc nuw i32 %shr398.i to i16
  %mul408.i = shl nuw nsw i32 %1074, 1
  %1075 = extractelement <4 x i32> %1073, i64 1
  %add409.i = add nuw nsw i32 %add405.i, %1075
  %add410.i1348 = add nuw nsw i32 %add409.i, %mul408.i
  %shr411.i = lshr i32 %add410.i1348, 2
  %conv412.i = trunc nuw i32 %shr411.i to i16
  %1076 = insertelement <4 x i32> %1073, i32 %conv443.i1355, i64 0
  %1077 = shl nuw nsw <4 x i32> %1076, <i32 1, i32 1, i32 1, i32 1>
  %1078 = shufflevector <4 x i32> %1077, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %1079 = add nuw nsw <4 x i32> %1073, <i32 2, i32 2, i32 2, i32 2>
  %1080 = shufflevector <4 x i32> %1076, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 poison>
  %1081 = insertelement <4 x i32> %1080, i32 %conv456.i, i64 3
  %1082 = add nuw nsw <4 x i32> %1079, %1081
  %1083 = add nuw nsw <4 x i32> %1082, %1078
  %1084 = lshr <4 x i32> %1083, <i32 2, i32 2, i32 2, i32 2>
  %1085 = trunc <4 x i32> %1084 to <4 x i16>
  store i16 %conv373.i, ptr %arrayidx469.i1358, align 2
  store i16 %conv386.i, ptr %PredArray.sroa.25.28.arrayidx469.sroa_idx.i, align 2
  store i16 %conv399.i, ptr %PredArray.sroa.26.28.arrayidx469.sroa_idx.i, align 2
  store i16 %conv412.i, ptr %PredArray.sroa.27.28.arrayidx469.sroa_idx.i, align 2
  store <4 x i16> %1085, ptr %PredArray.sroa.28.28.arrayidx469.sroa_idx.i, align 2
  %arrayidx472.i1359 = getelementptr i8, ptr %arrayidx467.i1357, i64 8
  %1086 = load ptr, ptr %arrayidx472.i1359, align 8
  %arrayidx474.i1360 = getelementptr inbounds i16, ptr %1086, i64 %idxprom468.i
  store i16 %conv351.i1332, ptr %arrayidx474.i1360, align 2
  %PredArray.sroa.22.24.arrayidx474.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx474.i1360, i64 2
  store i16 %conv364.i1335, ptr %PredArray.sroa.22.24.arrayidx474.sroa_idx.i, align 2
  %PredArray.sroa.23.24.arrayidx474.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx474.i1360, i64 4
  store i16 %conv373.i, ptr %PredArray.sroa.23.24.arrayidx474.sroa_idx.i, align 2
  %PredArray.sroa.25.24.arrayidx474.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx474.i1360, i64 6
  store i16 %conv386.i, ptr %PredArray.sroa.25.24.arrayidx474.sroa_idx.i, align 2
  %PredArray.sroa.26.24.arrayidx474.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx474.i1360, i64 8
  store i16 %conv399.i, ptr %PredArray.sroa.26.24.arrayidx474.sroa_idx.i, align 2
  %PredArray.sroa.27.24.arrayidx474.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx474.i1360, i64 10
  store i16 %conv412.i, ptr %PredArray.sroa.27.24.arrayidx474.sroa_idx.i, align 2
  %PredArray.sroa.28.24.arrayidx474.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx474.i1360, i64 12
  %1087 = shufflevector <4 x i16> %1085, <4 x i16> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i16> %1087, ptr %PredArray.sroa.28.24.arrayidx474.sroa_idx.i, align 2
  %arrayidx477.i1361 = getelementptr i8, ptr %arrayidx467.i1357, i64 16
  %1088 = load ptr, ptr %arrayidx477.i1361, align 8
  %arrayidx479.i = getelementptr inbounds i16, ptr %1088, i64 %idxprom468.i
  store i16 %conv329.i, ptr %arrayidx479.i, align 2
  %PredArray.sroa.19.20.arrayidx479.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx479.i, i64 2
  store i16 %conv342.i, ptr %PredArray.sroa.19.20.arrayidx479.sroa_idx.i, align 2
  %PredArray.sroa.20.20.arrayidx479.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx479.i, i64 4
  store i16 %conv351.i1332, ptr %PredArray.sroa.20.20.arrayidx479.sroa_idx.i, align 2
  %PredArray.sroa.22.20.arrayidx479.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx479.i, i64 6
  store i16 %conv364.i1335, ptr %PredArray.sroa.22.20.arrayidx479.sroa_idx.i, align 2
  %PredArray.sroa.23.20.arrayidx479.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx479.i, i64 8
  store i16 %conv373.i, ptr %PredArray.sroa.23.20.arrayidx479.sroa_idx.i, align 2
  %PredArray.sroa.25.20.arrayidx479.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx479.i, i64 10
  store i16 %conv386.i, ptr %PredArray.sroa.25.20.arrayidx479.sroa_idx.i, align 2
  %PredArray.sroa.26.20.arrayidx479.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx479.i, i64 12
  store i16 %conv399.i, ptr %PredArray.sroa.26.20.arrayidx479.sroa_idx.i, align 2
  %PredArray.sroa.27.20.arrayidx479.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx479.i, i64 14
  store i16 %conv412.i, ptr %PredArray.sroa.27.20.arrayidx479.sroa_idx.i, align 2
  %arrayidx482.i = getelementptr i8, ptr %arrayidx467.i1357, i64 24
  %1089 = load ptr, ptr %arrayidx482.i, align 8
  %arrayidx484.i1362 = getelementptr inbounds i16, ptr %1089, i64 %idxprom468.i
  store i16 %conv307.i1319, ptr %arrayidx484.i1362, align 2
  %PredArray.sroa.16.16.arrayidx484.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx484.i1362, i64 2
  store i16 %conv320.i1327, ptr %PredArray.sroa.16.16.arrayidx484.sroa_idx.i, align 2
  %PredArray.sroa.17.16.arrayidx484.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx484.i1362, i64 4
  store i16 %conv329.i, ptr %PredArray.sroa.17.16.arrayidx484.sroa_idx.i, align 2
  %PredArray.sroa.19.16.arrayidx484.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx484.i1362, i64 6
  store i16 %conv342.i, ptr %PredArray.sroa.19.16.arrayidx484.sroa_idx.i, align 2
  %PredArray.sroa.20.16.arrayidx484.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx484.i1362, i64 8
  store i16 %conv351.i1332, ptr %PredArray.sroa.20.16.arrayidx484.sroa_idx.i, align 2
  %PredArray.sroa.22.16.arrayidx484.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx484.i1362, i64 10
  store i16 %conv364.i1335, ptr %PredArray.sroa.22.16.arrayidx484.sroa_idx.i, align 2
  %PredArray.sroa.23.16.arrayidx484.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx484.i1362, i64 12
  store i16 %conv373.i, ptr %PredArray.sroa.23.16.arrayidx484.sroa_idx.i, align 2
  %PredArray.sroa.25.16.arrayidx484.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx484.i1362, i64 14
  store i16 %conv386.i, ptr %PredArray.sroa.25.16.arrayidx484.sroa_idx.i, align 2
  %arrayidx487.i = getelementptr i8, ptr %arrayidx467.i1357, i64 32
  %1090 = load ptr, ptr %arrayidx487.i, align 8
  %arrayidx489.i = getelementptr inbounds i16, ptr %1090, i64 %idxprom468.i
  store i16 %conv285.i, ptr %arrayidx489.i, align 2
  %PredArray.sroa.13.12.arrayidx489.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx489.i, i64 2
  store i16 %conv298.i, ptr %PredArray.sroa.13.12.arrayidx489.sroa_idx.i, align 2
  %PredArray.sroa.14.12.arrayidx489.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx489.i, i64 4
  store i16 %conv307.i1319, ptr %PredArray.sroa.14.12.arrayidx489.sroa_idx.i, align 2
  %PredArray.sroa.16.12.arrayidx489.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx489.i, i64 6
  store i16 %conv320.i1327, ptr %PredArray.sroa.16.12.arrayidx489.sroa_idx.i, align 2
  %PredArray.sroa.17.12.arrayidx489.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx489.i, i64 8
  store i16 %conv329.i, ptr %PredArray.sroa.17.12.arrayidx489.sroa_idx.i, align 2
  %PredArray.sroa.19.12.arrayidx489.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx489.i, i64 10
  store i16 %conv342.i, ptr %PredArray.sroa.19.12.arrayidx489.sroa_idx.i, align 2
  %PredArray.sroa.20.12.arrayidx489.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx489.i, i64 12
  store i16 %conv351.i1332, ptr %PredArray.sroa.20.12.arrayidx489.sroa_idx.i, align 2
  %PredArray.sroa.22.12.arrayidx489.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx489.i, i64 14
  store i16 %conv364.i1335, ptr %PredArray.sroa.22.12.arrayidx489.sroa_idx.i, align 2
  %arrayidx492.i1363 = getelementptr i8, ptr %arrayidx467.i1357, i64 40
  %1091 = load ptr, ptr %arrayidx492.i1363, align 8
  %arrayidx494.i = getelementptr inbounds i16, ptr %1091, i64 %idxprom468.i
  store i16 %conv263.i1309, ptr %arrayidx494.i, align 2
  %PredArray.sroa.10.8.arrayidx494.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx494.i, i64 2
  store i16 %conv276.i, ptr %PredArray.sroa.10.8.arrayidx494.sroa_idx.i, align 2
  %PredArray.sroa.11.8.arrayidx494.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx494.i, i64 4
  store i16 %conv285.i, ptr %PredArray.sroa.11.8.arrayidx494.sroa_idx.i, align 2
  %PredArray.sroa.13.8.arrayidx494.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx494.i, i64 6
  store i16 %conv298.i, ptr %PredArray.sroa.13.8.arrayidx494.sroa_idx.i, align 2
  %PredArray.sroa.14.8.arrayidx494.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx494.i, i64 8
  store i16 %conv307.i1319, ptr %PredArray.sroa.14.8.arrayidx494.sroa_idx.i, align 2
  %PredArray.sroa.16.8.arrayidx494.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx494.i, i64 10
  store i16 %conv320.i1327, ptr %PredArray.sroa.16.8.arrayidx494.sroa_idx.i, align 2
  %PredArray.sroa.17.8.arrayidx494.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx494.i, i64 12
  store i16 %conv329.i, ptr %PredArray.sroa.17.8.arrayidx494.sroa_idx.i, align 2
  %PredArray.sroa.19.8.arrayidx494.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx494.i, i64 14
  store i16 %conv342.i, ptr %PredArray.sroa.19.8.arrayidx494.sroa_idx.i, align 2
  %arrayidx497.i = getelementptr i8, ptr %arrayidx467.i1357, i64 48
  %1092 = load ptr, ptr %arrayidx497.i, align 8
  %arrayidx499.i = getelementptr inbounds i16, ptr %1092, i64 %idxprom468.i
  store i16 %conv241.i, ptr %arrayidx499.i, align 2
  %PredArray.sroa.7.4.arrayidx499.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx499.i, i64 2
  store i16 %conv254.i, ptr %PredArray.sroa.7.4.arrayidx499.sroa_idx.i, align 2
  %PredArray.sroa.8.4.arrayidx499.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx499.i, i64 4
  store i16 %conv263.i1309, ptr %PredArray.sroa.8.4.arrayidx499.sroa_idx.i, align 2
  %PredArray.sroa.10.4.arrayidx499.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx499.i, i64 6
  store i16 %conv276.i, ptr %PredArray.sroa.10.4.arrayidx499.sroa_idx.i, align 2
  %PredArray.sroa.11.4.arrayidx499.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx499.i, i64 8
  store i16 %conv285.i, ptr %PredArray.sroa.11.4.arrayidx499.sroa_idx.i, align 2
  %PredArray.sroa.13.4.arrayidx499.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx499.i, i64 10
  store i16 %conv298.i, ptr %PredArray.sroa.13.4.arrayidx499.sroa_idx.i, align 2
  %PredArray.sroa.14.4.arrayidx499.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx499.i, i64 12
  store i16 %conv307.i1319, ptr %PredArray.sroa.14.4.arrayidx499.sroa_idx.i, align 2
  %PredArray.sroa.16.4.arrayidx499.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx499.i, i64 14
  store i16 %conv320.i1327, ptr %PredArray.sroa.16.4.arrayidx499.sroa_idx.i, align 2
  %arrayidx502.i = getelementptr i8, ptr %arrayidx467.i1357, i64 56
  %1093 = load ptr, ptr %arrayidx502.i, align 8
  %arrayidx504.i = getelementptr inbounds i16, ptr %1093, i64 %idxprom468.i
  store i16 %conv220.i1298, ptr %arrayidx504.i, align 2
  %PredArray.sroa.4.0.arrayidx504.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx504.i, i64 2
  store i16 %conv232.i1303, ptr %PredArray.sroa.4.0.arrayidx504.sroa_idx.i, align 2
  %PredArray.sroa.5.0.arrayidx504.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx504.i, i64 4
  store i16 %conv241.i, ptr %PredArray.sroa.5.0.arrayidx504.sroa_idx.i, align 2
  %PredArray.sroa.7.0.arrayidx504.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx504.i, i64 6
  store i16 %conv254.i, ptr %PredArray.sroa.7.0.arrayidx504.sroa_idx.i, align 2
  %PredArray.sroa.8.0.arrayidx504.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx504.i, i64 8
  store i16 %conv263.i1309, ptr %PredArray.sroa.8.0.arrayidx504.sroa_idx.i, align 2
  %PredArray.sroa.10.0.arrayidx504.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx504.i, i64 10
  store i16 %conv276.i, ptr %PredArray.sroa.10.0.arrayidx504.sroa_idx.i, align 2
  %PredArray.sroa.11.0.arrayidx504.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx504.i, i64 12
  store i16 %conv285.i, ptr %PredArray.sroa.11.0.arrayidx504.sroa_idx.i, align 2
  %PredArray.sroa.13.0.arrayidx504.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx504.i, i64 14
  store i16 %conv298.i, ptr %PredArray.sroa.13.0.arrayidx504.sroa_idx.i, align 2
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pix_d.i1196) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pix_c.i1195) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pix_b.i1194) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pix_a.i1193) #6
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %PredPel.i1192) #6
  br label %cleanup

sw.default:                                       ; preds = %entry
  %conv = zext i8 %5 to i32
  %call24 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %conv)
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %intra8x8_hor_down_pred.exit, %intra8x8_hor_up_pred.exit, %intra8x8_vert_left_pred.exit, %intra8x8_vert_right_pred.exit, %intra8x8_diag_down_left_pred.exit, %intra8x8_diag_down_right_pred.exit, %intra8x8_hor_pred.exit, %LowPassForIntra8x8PredHor.exit, %if.end318.i
  %retval.0 = phi i32 [ 1, %sw.default ], [ 0, %intra8x8_hor_down_pred.exit ], [ 0, %intra8x8_hor_up_pred.exit ], [ 0, %intra8x8_vert_left_pred.exit ], [ 0, %intra8x8_vert_right_pred.exit ], [ 0, %intra8x8_diag_down_left_pred.exit ], [ 0, %intra8x8_diag_down_right_pred.exit ], [ 0, %intra8x8_hor_pred.exit ], [ 0, %LowPassForIntra8x8PredHor.exit ], [ 0, %if.end318.i ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare void @getNonAffNeighbour(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

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
