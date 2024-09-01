; ModuleID = 'x264_src/encoder/macroblock.c'
source_filename = "x264_src/encoder/macroblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x264_weight_t = type { [8 x i16], [8 x i16], i32, i32, i32, ptr, [8 x i8] }

@block_idx_xy_fenc = internal unnamed_addr constant [16 x i8] c"\00\04@D\08\0CHL\80\84\C0\C4\88\8C\C8\CC", align 16
@block_idx_xy_fdec = internal unnamed_addr constant [16 x i16] [i16 0, i16 4, i16 128, i16 132, i16 8, i16 12, i16 136, i16 140, i16 256, i16 260, i16 384, i16 388, i16 264, i16 268, i16 392, i16 396], align 16
@x264_scan8 = internal unnamed_addr constant [27 x i32] [i32 12, i32 13, i32 20, i32 21, i32 14, i32 15, i32 22, i32 23, i32 28, i32 29, i32 36, i32 37, i32 30, i32 31, i32 38, i32 39, i32 9, i32 10, i32 17, i32 18, i32 33, i32 34, i32 41, i32 42, i32 44, i32 46, i32 47], align 16
@x264_lambda2_tab = external local_unnamed_addr constant [52 x i32], align 16
@block_idx_x = internal unnamed_addr constant [16 x i8] c"\00\01\00\01\02\03\02\03\00\01\00\01\02\03\02\03", align 16
@block_idx_y = internal unnamed_addr constant [16 x i8] c"\00\00\01\01\00\00\01\01\02\02\03\03\02\02\03\03", align 16
@x264_pred_i4x4_neighbors = internal unnamed_addr constant [12 x i8] c"\02\01\03\06\0B\0B\0B\06\01\01\02\00", align 1
@x264_dct8_weight2_tab = internal unnamed_addr constant [64 x i16] [i16 256, i16 227, i16 410, i16 227, i16 256, i16 227, i16 410, i16 227, i16 227, i16 201, i16 363, i16 201, i16 227, i16 201, i16 363, i16 201, i16 410, i16 363, i16 656, i16 363, i16 410, i16 363, i16 656, i16 363, i16 227, i16 201, i16 363, i16 201, i16 227, i16 201, i16 363, i16 201, i16 256, i16 227, i16 410, i16 227, i16 256, i16 227, i16 410, i16 227, i16 227, i16 201, i16 363, i16 201, i16 227, i16 201, i16 363, i16 201, i16 410, i16 363, i16 656, i16 363, i16 410, i16 363, i16 656, i16 363, i16 227, i16 201, i16 363, i16 201, i16 227, i16 201, i16 363, i16 201], align 16
@block_idx_yx_1d = internal unnamed_addr constant [16 x i8] c"\00\04\01\05\08\0C\09\0D\02\06\03\07\0A\0E\0B\0F", align 16
@block_idx_xy_1d = internal unnamed_addr constant [16 x i8] c"\00\01\04\05\02\03\06\07\08\09\0C\0D\0A\0B\0E\0F", align 16

; Function Attrs: nounwind uwtable
define dso_local void @x264_mb_encode_i4x4(ptr noundef %h, i32 noundef %idx, i32 noundef %i_qp) local_unnamed_addr #0 {
entry:
  %dct4x4 = alloca [16 x i16], align 16
  %p_fenc = getelementptr inbounds i8, ptr %h, i64 21344
  %0 = load ptr, ptr %p_fenc, align 16
  %idxprom = sext i32 %idx to i64
  %arrayidx1 = getelementptr inbounds [16 x i8], ptr @block_idx_xy_fenc, i64 0, i64 %idxprom
  %1 = load i8, ptr %arrayidx1, align 1
  %idxprom2 = zext i8 %1 to i64
  %arrayidx3 = getelementptr inbounds i8, ptr %0, i64 %idxprom2
  %p_fdec = getelementptr inbounds i8, ptr %h, i64 21392
  %2 = load ptr, ptr %p_fdec, align 16
  %arrayidx8 = getelementptr inbounds [16 x i16], ptr @block_idx_xy_fdec, i64 0, i64 %idxprom
  %3 = load i16, ptr %arrayidx8, align 2
  %idxprom9 = zext i16 %3 to i64
  %arrayidx10 = getelementptr inbounds i8, ptr %2, i64 %idxprom9
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %dct4x4) #6
  %b_lossless = getelementptr inbounds i8, ptr %h, i64 25812
  %4 = load i32, ptr %b_lossless, align 4
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %sub_4x4 = getelementptr inbounds i8, ptr %h, i64 33056
  %5 = load ptr, ptr %sub_4x4, align 8
  %luma4x4 = getelementptr inbounds i8, ptr %h, i64 15600
  %arrayidx13 = getelementptr inbounds [24 x [16 x i16]], ptr %luma4x4, i64 0, i64 %idxprom
  %call = tail call i32 %5(ptr noundef nonnull %arrayidx13, ptr noundef %arrayidx3, ptr noundef %arrayidx10) #6
  %conv = trunc i32 %call to i8
  %non_zero_count = getelementptr inbounds i8, ptr %h, i64 25072
  %arrayidx16 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %idxprom
  %6 = load i32, ptr %arrayidx16, align 4
  %idxprom17 = sext i32 %6 to i64
  %arrayidx18 = getelementptr inbounds [48 x i8], ptr %non_zero_count, i64 0, i64 %idxprom17
  store i8 %conv, ptr %arrayidx18, align 1
  %shr = ashr i32 %idx, 2
  %shl = shl i32 %call, %shr
  %i_cbp_luma = getelementptr inbounds i8, ptr %h, i64 17400
  %7 = load i32, ptr %i_cbp_luma, align 8
  %or = or i32 %7, %shl
  store i32 %or, ptr %i_cbp_luma, align 8
  br label %cleanup

if.end:                                           ; preds = %entry
  %dctf = getelementptr inbounds i8, ptr %h, i64 32912
  %8 = load ptr, ptr %dctf, align 16
  call void %8(ptr noundef nonnull %dct4x4, ptr noundef %arrayidx3, ptr noundef %arrayidx10) #6
  %b_trellis.i = getelementptr inbounds i8, ptr %h, i64 16416
  %9 = load i32, ptr %b_trellis.i, align 16
  %tobool1.not.i = icmp eq i32 %9, 0
  br i1 %tobool1.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  %call.i = call i32 @x264_quant_4x4_trellis(ptr noundef nonnull %h, ptr noundef nonnull %dct4x4, i32 noundef 0, i32 noundef %i_qp, i32 noundef 2, i32 noundef 1, i32 noundef 0, i32 noundef %idx) #6
  br label %x264_quant_4x4.exit

if.else.i:                                        ; preds = %if.end
  %quant_4x4.i = getelementptr inbounds i8, ptr %h, i64 33088
  %10 = load ptr, ptr %quant_4x4.i, align 8
  %quant4_mf.i = getelementptr inbounds i8, ptr %h, i64 3440
  %11 = load ptr, ptr %quant4_mf.i, align 8
  %idxprom2.i = sext i32 %i_qp to i64
  %arrayidx3.i = getelementptr inbounds [16 x i16], ptr %11, i64 %idxprom2.i
  %quant4_bias.i = getelementptr inbounds i8, ptr %h, i64 3488
  %12 = load ptr, ptr %quant4_bias.i, align 8
  %arrayidx7.i = getelementptr inbounds [16 x i16], ptr %12, i64 %idxprom2.i
  %call9.i = call i32 %10(ptr noundef nonnull %dct4x4, ptr noundef %arrayidx3.i, ptr noundef %arrayidx7.i) #6
  br label %x264_quant_4x4.exit

x264_quant_4x4.exit:                              ; preds = %if.then.i, %if.else.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ %call9.i, %if.else.i ]
  %conv23 = trunc i32 %retval.0.i to i8
  %non_zero_count26 = getelementptr inbounds i8, ptr %h, i64 25072
  %arrayidx28 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %idxprom
  %13 = load i32, ptr %arrayidx28, align 4
  %idxprom29 = sext i32 %13 to i64
  %arrayidx30 = getelementptr inbounds [48 x i8], ptr %non_zero_count26, i64 0, i64 %idxprom29
  store i8 %conv23, ptr %arrayidx30, align 1
  %tobool31.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool31.not, label %cleanup, label %if.then32

if.then32:                                        ; preds = %x264_quant_4x4.exit
  %shr33 = ashr i32 %idx, 2
  %shl34 = shl nuw i32 1, %shr33
  %i_cbp_luma36 = getelementptr inbounds i8, ptr %h, i64 17400
  %14 = load i32, ptr %i_cbp_luma36, align 8
  %or37 = or i32 %14, %shl34
  store i32 %or37, ptr %i_cbp_luma36, align 8
  %scan_4x4 = getelementptr inbounds i8, ptr %h, i64 33040
  %15 = load ptr, ptr %scan_4x4, align 8
  %luma4x440 = getelementptr inbounds i8, ptr %h, i64 15600
  %arrayidx42 = getelementptr inbounds [24 x [16 x i16]], ptr %luma4x440, i64 0, i64 %idxprom
  call void %15(ptr noundef nonnull %arrayidx42, ptr noundef nonnull %dct4x4) #6
  %dequant_4x4 = getelementptr inbounds i8, ptr %h, i64 33120
  %16 = load ptr, ptr %dequant_4x4, align 8
  %dequant4_mf = getelementptr inbounds i8, ptr %h, i64 3344
  %17 = load ptr, ptr %dequant4_mf, align 16
  call void %16(ptr noundef nonnull %dct4x4, ptr noundef %17, i32 noundef %i_qp) #6
  %add4x4_idct = getelementptr inbounds i8, ptr %h, i64 32920
  %18 = load ptr, ptr %add4x4_idct, align 8
  call void %18(ptr noundef %arrayidx10, ptr noundef nonnull %dct4x4) #6
  br label %cleanup

cleanup:                                          ; preds = %x264_quant_4x4.exit, %if.then32, %if.then
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %dct4x4) #6
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @x264_mb_encode_i8x8(ptr noundef %h, i32 noundef %idx, i32 noundef %i_qp) local_unnamed_addr #0 {
entry:
  %dct8x8 = alloca [64 x i16], align 16
  %and = shl i32 %idx, 3
  %mul = and i32 %and, 8
  %0 = shl nsw i32 %idx, 2
  %mul1 = and i32 %0, -8
  %p_fenc = getelementptr inbounds i8, ptr %h, i64 21344
  %1 = load ptr, ptr %p_fenc, align 16
  %mul2 = shl nsw i32 %mul1, 4
  %add = or disjoint i32 %mul2, %mul
  %idxprom = sext i32 %add to i64
  %arrayidx3 = getelementptr inbounds i8, ptr %1, i64 %idxprom
  %p_fdec = getelementptr inbounds i8, ptr %h, i64 21392
  %2 = load ptr, ptr %p_fdec, align 16
  %mul7 = shl nsw i32 %mul1, 5
  %add8 = or disjoint i32 %mul7, %mul
  %idxprom9 = sext i32 %add8 to i64
  %arrayidx10 = getelementptr inbounds i8, ptr %2, i64 %idxprom9
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %dct8x8) #6
  %b_lossless = getelementptr inbounds i8, ptr %h, i64 25812
  %3 = load i32, ptr %b_lossless, align 4
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %sub_8x8 = getelementptr inbounds i8, ptr %h, i64 33048
  %4 = load ptr, ptr %sub_8x8, align 8
  %luma8x8 = getelementptr inbounds i8, ptr %h, i64 15088
  %idxprom12 = sext i32 %idx to i64
  %arrayidx13 = getelementptr inbounds [4 x [64 x i16]], ptr %luma8x8, i64 0, i64 %idxprom12
  %call = tail call i32 %4(ptr noundef nonnull %arrayidx13, ptr noundef %arrayidx3, ptr noundef %arrayidx10) #6
  %5 = trunc i32 %call to i16
  %conv = mul i16 %5, 257
  %non_zero_count = getelementptr inbounds i8, ptr %h, i64 25072
  %idxprom18 = sext i32 %0 to i64
  %arrayidx19 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %idxprom18
  %6 = load i32, ptr %arrayidx19, align 16
  %idxprom20 = sext i32 %6 to i64
  %arrayidx21 = getelementptr inbounds [48 x i8], ptr %non_zero_count, i64 0, i64 %idxprom20
  store i16 %conv, ptr %arrayidx21, align 1
  %add28 = or disjoint i32 %0, 2
  %idxprom29 = sext i32 %add28 to i64
  %arrayidx30 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %idxprom29
  %7 = load i32, ptr %arrayidx30, align 8
  %idxprom31 = sext i32 %7 to i64
  %arrayidx32 = getelementptr inbounds [48 x i8], ptr %non_zero_count, i64 0, i64 %idxprom31
  store i16 %conv, ptr %arrayidx32, align 1
  %shl = shl i32 %call, %idx
  %i_cbp_luma = getelementptr inbounds i8, ptr %h, i64 17400
  %8 = load i32, ptr %i_cbp_luma, align 8
  %or = or i32 %8, %shl
  store i32 %or, ptr %i_cbp_luma, align 8
  br label %cleanup

if.end:                                           ; preds = %entry
  %sub8x8_dct8 = getelementptr inbounds i8, ptr %h, i64 32984
  %9 = load ptr, ptr %sub8x8_dct8, align 8
  call void %9(ptr noundef nonnull %dct8x8, ptr noundef %arrayidx3, ptr noundef %arrayidx10) #6
  %b_trellis.i = getelementptr inbounds i8, ptr %h, i64 16416
  %10 = load i32, ptr %b_trellis.i, align 16
  %tobool1.not.i = icmp eq i32 %10, 0
  br i1 %tobool1.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  %call.i = call i32 @x264_quant_8x8_trellis(ptr noundef nonnull %h, ptr noundef nonnull %dct8x8, i32 noundef 0, i32 noundef %i_qp, i32 noundef 1, i32 noundef %idx) #6
  br label %x264_quant_8x8.exit

if.else.i:                                        ; preds = %if.end
  %quantf.i = getelementptr inbounds i8, ptr %h, i64 33080
  %11 = load ptr, ptr %quantf.i, align 8
  %quant8_mf.i = getelementptr inbounds i8, ptr %h, i64 3472
  %12 = load ptr, ptr %quant8_mf.i, align 8
  %idxprom2.i = sext i32 %i_qp to i64
  %arrayidx3.i = getelementptr inbounds [64 x i16], ptr %12, i64 %idxprom2.i
  %quant8_bias.i = getelementptr inbounds i8, ptr %h, i64 3520
  %13 = load ptr, ptr %quant8_bias.i, align 8
  %arrayidx7.i = getelementptr inbounds [64 x i16], ptr %13, i64 %idxprom2.i
  %call9.i = call i32 %11(ptr noundef nonnull %dct8x8, ptr noundef %arrayidx3.i, ptr noundef %arrayidx7.i) #6
  br label %x264_quant_8x8.exit

x264_quant_8x8.exit:                              ; preds = %if.then.i, %if.else.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ %call9.i, %if.else.i ]
  %tobool37.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool37.not, label %if.else, label %if.then38

if.then38:                                        ; preds = %x264_quant_8x8.exit
  %shl39 = shl nuw i32 1, %idx
  %i_cbp_luma41 = getelementptr inbounds i8, ptr %h, i64 17400
  %14 = load i32, ptr %i_cbp_luma41, align 8
  %or42 = or i32 %14, %shl39
  store i32 %or42, ptr %i_cbp_luma41, align 8
  %zigzagf43 = getelementptr inbounds i8, ptr %h, i64 33032
  %15 = load ptr, ptr %zigzagf43, align 8
  %luma8x845 = getelementptr inbounds i8, ptr %h, i64 15088
  %idxprom46 = sext i32 %idx to i64
  %arrayidx47 = getelementptr inbounds [4 x [64 x i16]], ptr %luma8x845, i64 0, i64 %idxprom46
  call void %15(ptr noundef nonnull %arrayidx47, ptr noundef nonnull %dct8x8) #6
  %dequant_8x8 = getelementptr inbounds i8, ptr %h, i64 33112
  %16 = load ptr, ptr %dequant_8x8, align 8
  %dequant8_mf = getelementptr inbounds i8, ptr %h, i64 3376
  %17 = load ptr, ptr %dequant8_mf, align 16
  call void %16(ptr noundef nonnull %dct8x8, ptr noundef %17, i32 noundef %i_qp) #6
  %add8x8_idct8 = getelementptr inbounds i8, ptr %h, i64 32992
  %18 = load ptr, ptr %add8x8_idct8, align 16
  call void %18(ptr noundef %arrayidx10, ptr noundef nonnull %dct8x8) #6
  %non_zero_count56 = getelementptr inbounds i8, ptr %h, i64 25072
  %idxprom59 = sext i32 %0 to i64
  %arrayidx60 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %idxprom59
  %19 = load i32, ptr %arrayidx60, align 16
  %idxprom61 = sext i32 %19 to i64
  %arrayidx62 = getelementptr inbounds [48 x i8], ptr %non_zero_count56, i64 0, i64 %idxprom61
  store i16 257, ptr %arrayidx62, align 1
  %add67 = or disjoint i32 %0, 2
  %idxprom68 = sext i32 %add67 to i64
  %arrayidx69 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %idxprom68
  %20 = load i32, ptr %arrayidx69, align 8
  %idxprom70 = sext i32 %20 to i64
  %arrayidx71 = getelementptr inbounds [48 x i8], ptr %non_zero_count56, i64 0, i64 %idxprom70
  store i16 257, ptr %arrayidx71, align 1
  br label %cleanup

if.else:                                          ; preds = %x264_quant_8x8.exit
  %non_zero_count74 = getelementptr inbounds i8, ptr %h, i64 25072
  %idxprom77 = sext i32 %0 to i64
  %arrayidx78 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %idxprom77
  %21 = load i32, ptr %arrayidx78, align 16
  %idxprom79 = sext i32 %21 to i64
  %arrayidx80 = getelementptr inbounds [48 x i8], ptr %non_zero_count74, i64 0, i64 %idxprom79
  store i16 0, ptr %arrayidx80, align 1
  %add85 = or disjoint i32 %0, 2
  %idxprom86 = sext i32 %add85 to i64
  %arrayidx87 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %idxprom86
  %22 = load i32, ptr %arrayidx87, align 8
  %idxprom88 = sext i32 %22 to i64
  %arrayidx89 = getelementptr inbounds [48 x i8], ptr %non_zero_count74, i64 0, i64 %idxprom88
  store i16 0, ptr %arrayidx89, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then38, %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %dct8x8) #6
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @x264_mb_encode_8x8_chroma(ptr noundef %h, i32 noundef %b_inter, i32 noundef %i_qp) local_unnamed_addr #0 {
entry:
  %dct2x2 = alloca [4 x i16], align 16
  %ssd = alloca [2 x i32], align 4
  %dct4x4 = alloca [4 x [16 x i16]], align 16
  %tobool.not = icmp eq i32 %b_inter, 0
  br i1 %tobool.not, label %land.end.thread, label %land.end

land.end.thread:                                  ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dct2x2) #6
  %i_cbp_chroma752 = getelementptr inbounds i8, ptr %h, i64 17404
  store i32 0, ptr %i_cbp_chroma752, align 4
  br label %if.end152

land.end:                                         ; preds = %entry
  %b_dct_decimate = getelementptr inbounds i8, ptr %h, i64 16424
  %0 = load i32, ptr %b_dct_decimate, align 8
  %tobool1.not = icmp eq i32 %0, 0
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dct2x2) #6
  %i_cbp_chroma = getelementptr inbounds i8, ptr %h, i64 17404
  store i32 0, ptr %i_cbp_chroma, align 4
  br i1 %tobool1.not, label %if.end152, label %land.lhs.true

land.lhs.true:                                    ; preds = %land.end
  %b_trellis = getelementptr inbounds i8, ptr %h, i64 16416
  %1 = load i32, ptr %b_trellis, align 16
  %tobool5.not = icmp eq i32 %1, 0
  %cond = select i1 %tobool5.not, i32 18, i32 12
  %cmp.not = icmp sgt i32 %cond, %i_qp
  br i1 %cmp.not, label %if.end152, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %idxprom = zext nneg i32 %i_qp to i64
  %arrayidx = getelementptr inbounds [52 x i32], ptr @x264_lambda2_tab, i64 0, i64 %idxprom
  %2 = load i32, ptr %arrayidx, align 4
  %add = add nsw i32 %2, 32
  %shr = ashr i32 %add, 6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ssd) #6
  %var2_8x8 = getelementptr inbounds i8, ptr %h, i64 32152
  %3 = load ptr, ptr %var2_8x8, align 8
  %arrayidx7 = getelementptr inbounds i8, ptr %h, i64 21352
  %4 = load ptr, ptr %arrayidx7, align 8
  %arrayidx10 = getelementptr inbounds i8, ptr %h, i64 21400
  %5 = load ptr, ptr %arrayidx10, align 8
  %call = call i32 %3(ptr noundef %4, i32 noundef 16, ptr noundef %5, i32 noundef 32, ptr noundef nonnull %ssd) #6
  %mul = shl nsw i32 %shr, 2
  %cmp12 = icmp slt i32 %call, %mul
  br i1 %cmp12, label %if.then13, label %if.end

if.then13:                                        ; preds = %if.then
  %6 = load ptr, ptr %var2_8x8, align 8
  %arrayidx19 = getelementptr inbounds i8, ptr %h, i64 21360
  %7 = load ptr, ptr %arrayidx19, align 16
  %arrayidx23 = getelementptr inbounds i8, ptr %h, i64 21408
  %8 = load ptr, ptr %arrayidx23, align 16
  %arrayidx24 = getelementptr inbounds i8, ptr %ssd, i64 4
  %call25 = call i32 %6(ptr noundef %7, i32 noundef 16, ptr noundef %8, i32 noundef 32, ptr noundef nonnull %arrayidx24) #6
  %add26 = add nsw i32 %call25, %call
  br label %if.end

if.end:                                           ; preds = %if.then13, %if.then
  %score.0 = phi i32 [ %add26, %if.then13 ], [ %call, %if.then ]
  %cmp28.not = icmp slt i32 %score.0, %mul
  br i1 %cmp28.not, label %if.then29, label %if.end152.critedge

if.then29:                                        ; preds = %if.end
  %arrayidx32 = getelementptr inbounds i8, ptr %h, i64 25081
  store i8 0, ptr %arrayidx32, align 1
  %arrayidx37 = getelementptr inbounds i8, ptr %h, i64 25082
  store i8 0, ptr %arrayidx37, align 1
  %arrayidx42 = getelementptr inbounds i8, ptr %h, i64 25089
  store i8 0, ptr %arrayidx42, align 1
  %arrayidx47 = getelementptr inbounds i8, ptr %h, i64 25090
  store i8 0, ptr %arrayidx47, align 1
  %arrayidx52 = getelementptr inbounds i8, ptr %h, i64 25105
  store i8 0, ptr %arrayidx52, align 1
  %arrayidx57 = getelementptr inbounds i8, ptr %h, i64 25106
  store i8 0, ptr %arrayidx57, align 1
  %arrayidx62 = getelementptr inbounds i8, ptr %h, i64 25113
  store i8 0, ptr %arrayidx62, align 1
  %arrayidx67 = getelementptr inbounds i8, ptr %h, i64 25114
  store i8 0, ptr %arrayidx67, align 1
  %arrayidx72 = getelementptr inbounds i8, ptr %h, i64 25118
  store i16 0, ptr %arrayidx72, align 1
  %sub8x8_dct_dc = getelementptr inbounds i8, ptr %h, i64 32936
  %add95 = add nsw i32 %b_inter, 2
  %quant_2x2_dc = getelementptr inbounds i8, ptr %h, i64 33104
  %quant4_mf = getelementptr inbounds i8, ptr %h, i64 3440
  %idxprom100 = sext i32 %add95 to i64
  %arrayidx101 = getelementptr inbounds [4 x ptr], ptr %quant4_mf, i64 0, i64 %idxprom100
  %quant4_bias = getelementptr inbounds i8, ptr %h, i64 3488
  %arrayidx108 = getelementptr inbounds [4 x ptr], ptr %quant4_bias, i64 0, i64 %idxprom100
  %chroma_dc = getelementptr inbounds i8, ptr %h, i64 15072
  %dequant4_mf = getelementptr inbounds i8, ptr %h, i64 3344
  %arrayidx136 = getelementptr inbounds [4 x ptr], ptr %dequant4_mf, i64 0, i64 %idxprom100
  %rem.i779 = urem i32 %i_qp, 6
  %idxprom.i = zext nneg i32 %rem.i779 to i64
  %div.i780 = udiv i32 %i_qp, 6
  %add8x8_idct_dc = getelementptr inbounds i8, ptr %h, i64 32952
  %9 = load i32, ptr %ssd, align 4
  %cmp76 = icmp sgt i32 %9, %shr
  br i1 %cmp76, label %if.then77, label %for.inc

if.then77:                                        ; preds = %if.then29
  %10 = load ptr, ptr %sub8x8_dct_dc, align 8
  %arrayidx83 = getelementptr inbounds i8, ptr %h, i64 21352
  %11 = load ptr, ptr %arrayidx83, align 8
  %arrayidx89 = getelementptr inbounds i8, ptr %h, i64 21400
  %12 = load ptr, ptr %arrayidx89, align 8
  call void %10(ptr noundef nonnull %dct2x2, ptr noundef %11, ptr noundef %12) #6
  %13 = load i32, ptr %b_trellis, align 16
  %tobool92.not = icmp eq i32 %13, 0
  br i1 %tobool92.not, label %if.else, label %if.then93

if.then93:                                        ; preds = %if.then77
  %call97 = call i32 @x264_quant_dc_trellis(ptr noundef nonnull %h, ptr noundef nonnull %dct2x2, i32 noundef %add95, i32 noundef %i_qp, i32 noundef 3, i32 noundef 0, i32 noundef 1) #6
  br label %if.end114

if.else:                                          ; preds = %if.then77
  %14 = load ptr, ptr %quant_2x2_dc, align 8
  %15 = load ptr, ptr %arrayidx101, align 8
  %arrayidx103 = getelementptr inbounds [16 x i16], ptr %15, i64 %idxprom
  %16 = load i16, ptr %arrayidx103, align 2
  %17 = lshr i16 %16, 1
  %shr105 = zext nneg i16 %17 to i32
  %18 = load ptr, ptr %arrayidx108, align 8
  %arrayidx110 = getelementptr inbounds [16 x i16], ptr %18, i64 %idxprom
  %19 = load i16, ptr %arrayidx110, align 2
  %conv112 = zext i16 %19 to i32
  %shl = shl nuw nsw i32 %conv112, 1
  %call113 = call i32 %14(ptr noundef nonnull %dct2x2, i32 noundef %shr105, i32 noundef %shl) #6
  br label %if.end114

if.end114:                                        ; preds = %if.else, %if.then93
  %nz_dc.0 = phi i32 [ %call97, %if.then93 ], [ %call113, %if.else ]
  %tobool115.not = icmp eq i32 %nz_dc.0, 0
  br i1 %tobool115.not, label %for.inc, label %if.then116

if.then116:                                       ; preds = %if.end114
  %call118 = call fastcc i32 @x264_mb_optimize_chroma_dc(ptr noundef nonnull %h, i32 noundef %b_inter, i32 noundef %i_qp, ptr noundef nonnull %dct2x2)
  %tobool119.not = icmp eq i32 %call118, 0
  br i1 %tobool119.not, label %for.inc, label %if.end121

if.end121:                                        ; preds = %if.then116
  %arrayidx127 = getelementptr inbounds i8, ptr %h, i64 25118
  store i8 1, ptr %arrayidx127, align 1
  %20 = load <4 x i16>, ptr %dct2x2, align 16
  %21 = shufflevector <4 x i16> %20, <4 x i16> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i16> %21, ptr %chroma_dc, align 2
  %22 = load ptr, ptr %arrayidx136, align 8
  %arrayidx17.i = getelementptr inbounds [16 x i32], ptr %22, i64 %idxprom.i
  %23 = load i32, ptr %arrayidx17.i, align 4
  %shl.i = shl i32 %23, %div.i780
  %24 = sext <4 x i16> %20 to <4 x i32>
  %25 = shufflevector <4 x i32> %24, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %26 = add nsw <4 x i32> %25, %24
  %27 = sub nsw <4 x i32> %25, %24
  %28 = shufflevector <4 x i32> %26, <4 x i32> %27, <4 x i32> <i32 2, i32 0, i32 7, i32 5>
  %29 = shufflevector <4 x i32> %28, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %30 = add nsw <4 x i32> %28, %29
  %31 = sub nsw <4 x i32> %28, %29
  %32 = shufflevector <4 x i32> %30, <4 x i32> %31, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %33 = insertelement <4 x i32> poison, i32 %shl.i, i64 0
  %34 = shufflevector <4 x i32> %33, <4 x i32> poison, <4 x i32> zeroinitializer
  %35 = mul nsw <4 x i32> %34, %32
  %36 = lshr <4 x i32> %35, <i32 5, i32 5, i32 5, i32 5>
  %37 = trunc <4 x i32> %36 to <4 x i16>
  store <4 x i16> %37, ptr %dct2x2, align 16
  %38 = load ptr, ptr %add8x8_idct_dc, align 8
  %39 = load ptr, ptr %arrayidx89, align 8
  call void %38(ptr noundef %39, ptr noundef nonnull %dct2x2) #6
  store i32 1, ptr %i_cbp_chroma, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then29, %if.end121, %if.end114, %if.then116
  %arrayidx75.1 = getelementptr inbounds i8, ptr %ssd, i64 4
  %40 = load i32, ptr %arrayidx75.1, align 4
  %cmp76.1 = icmp sgt i32 %40, %shr
  br i1 %cmp76.1, label %if.then77.1, label %for.inc.1

if.then77.1:                                      ; preds = %for.inc
  %41 = load ptr, ptr %sub8x8_dct_dc, align 8
  %arrayidx83.1 = getelementptr inbounds i8, ptr %h, i64 21360
  %42 = load ptr, ptr %arrayidx83.1, align 8
  %arrayidx89.1 = getelementptr inbounds i8, ptr %h, i64 21408
  %43 = load ptr, ptr %arrayidx89.1, align 8
  call void %41(ptr noundef nonnull %dct2x2, ptr noundef %42, ptr noundef %43) #6
  %44 = load i32, ptr %b_trellis, align 16
  %tobool92.not.1 = icmp eq i32 %44, 0
  br i1 %tobool92.not.1, label %if.else.1, label %if.then93.1

if.then93.1:                                      ; preds = %if.then77.1
  %call97.1 = call i32 @x264_quant_dc_trellis(ptr noundef nonnull %h, ptr noundef nonnull %dct2x2, i32 noundef %add95, i32 noundef %i_qp, i32 noundef 3, i32 noundef 0, i32 noundef 1) #6
  br label %if.end114.1

if.else.1:                                        ; preds = %if.then77.1
  %45 = load ptr, ptr %quant_2x2_dc, align 8
  %46 = load ptr, ptr %arrayidx101, align 8
  %arrayidx103.1 = getelementptr inbounds [16 x i16], ptr %46, i64 %idxprom
  %47 = load i16, ptr %arrayidx103.1, align 2
  %48 = lshr i16 %47, 1
  %shr105.1 = zext nneg i16 %48 to i32
  %49 = load ptr, ptr %arrayidx108, align 8
  %arrayidx110.1 = getelementptr inbounds [16 x i16], ptr %49, i64 %idxprom
  %50 = load i16, ptr %arrayidx110.1, align 2
  %conv112.1 = zext i16 %50 to i32
  %shl.1 = shl nuw nsw i32 %conv112.1, 1
  %call113.1 = call i32 %45(ptr noundef nonnull %dct2x2, i32 noundef %shr105.1, i32 noundef %shl.1) #6
  br label %if.end114.1

if.end114.1:                                      ; preds = %if.else.1, %if.then93.1
  %nz_dc.0.1 = phi i32 [ %call97.1, %if.then93.1 ], [ %call113.1, %if.else.1 ]
  %tobool115.not.1 = icmp eq i32 %nz_dc.0.1, 0
  br i1 %tobool115.not.1, label %for.inc.1, label %if.then116.1

if.then116.1:                                     ; preds = %if.end114.1
  %call118.1 = call fastcc i32 @x264_mb_optimize_chroma_dc(ptr noundef nonnull %h, i32 noundef %b_inter, i32 noundef %i_qp, ptr noundef nonnull %dct2x2)
  %tobool119.not.1 = icmp eq i32 %call118.1, 0
  br i1 %tobool119.not.1, label %for.inc.1, label %if.end121.1

if.end121.1:                                      ; preds = %if.then116.1
  %arrayidx127.1 = getelementptr inbounds i8, ptr %h, i64 25119
  store i8 1, ptr %arrayidx127.1, align 1
  %arrayidx129.1 = getelementptr inbounds i8, ptr %h, i64 15080
  %51 = load <4 x i16>, ptr %dct2x2, align 16
  %52 = shufflevector <4 x i16> %51, <4 x i16> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i16> %52, ptr %arrayidx129.1, align 2
  %53 = load ptr, ptr %arrayidx136, align 8
  %arrayidx17.i.1 = getelementptr inbounds [16 x i32], ptr %53, i64 %idxprom.i
  %54 = load i32, ptr %arrayidx17.i.1, align 4
  %shl.i.1 = shl i32 %54, %div.i780
  %55 = sext <4 x i16> %51 to <4 x i32>
  %56 = shufflevector <4 x i32> %55, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %57 = add nsw <4 x i32> %56, %55
  %58 = sub nsw <4 x i32> %56, %55
  %59 = shufflevector <4 x i32> %57, <4 x i32> %58, <4 x i32> <i32 2, i32 0, i32 7, i32 5>
  %60 = shufflevector <4 x i32> %59, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %61 = add nsw <4 x i32> %59, %60
  %62 = sub nsw <4 x i32> %59, %60
  %63 = shufflevector <4 x i32> %61, <4 x i32> %62, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %64 = insertelement <4 x i32> poison, i32 %shl.i.1, i64 0
  %65 = shufflevector <4 x i32> %64, <4 x i32> poison, <4 x i32> zeroinitializer
  %66 = mul nsw <4 x i32> %65, %63
  %67 = lshr <4 x i32> %66, <i32 5, i32 5, i32 5, i32 5>
  %68 = trunc <4 x i32> %67 to <4 x i16>
  store <4 x i16> %68, ptr %dct2x2, align 16
  %69 = load ptr, ptr %add8x8_idct_dc, align 8
  %70 = load ptr, ptr %arrayidx89.1, align 8
  call void %69(ptr noundef %70, ptr noundef nonnull %dct2x2) #6
  store i32 1, ptr %i_cbp_chroma, align 4
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end121.1, %if.then116.1, %if.end114.1, %for.inc
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ssd) #6
  br label %cleanup495

if.end152.critedge:                               ; preds = %if.end
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ssd) #6
  br label %if.end152

if.end152:                                        ; preds = %land.end.thread, %if.end152.critedge, %land.lhs.true, %land.end
  %i_cbp_chroma753 = phi ptr [ %i_cbp_chroma752, %land.end.thread ], [ %i_cbp_chroma, %if.end152.critedge ], [ %i_cbp_chroma, %land.lhs.true ], [ %i_cbp_chroma, %land.end ]
  %71 = phi i1 [ false, %land.end.thread ], [ true, %if.end152.critedge ], [ true, %land.lhs.true ], [ false, %land.end ]
  %p_fenc161 = getelementptr inbounds i8, ptr %h, i64 21344
  %p_fdec167 = getelementptr inbounds i8, ptr %h, i64 21392
  %b_lossless = getelementptr inbounds i8, ptr %h, i64 25812
  %sub_4x4ac = getelementptr inbounds i8, ptr %h, i64 33064
  %luma4x4 = getelementptr inbounds i8, ptr %h, i64 15600
  %chroma_dc209 = getelementptr inbounds i8, ptr %h, i64 15072
  %non_zero_count218 = getelementptr inbounds i8, ptr %h, i64 25072
  %sub8x8_dct = getelementptr inbounds i8, ptr %h, i64 32928
  %arrayidx2.i676 = getelementptr inbounds i8, ptr %dct4x4, i64 32
  %arrayidx5.i678 = getelementptr inbounds i8, ptr %dct4x4, i64 64
  %arrayidx8.i = getelementptr inbounds i8, ptr %dct4x4, i64 96
  %arrayidx30.i = getelementptr inbounds i8, ptr %dct2x2, i64 4
  %arrayidx33.i = getelementptr inbounds i8, ptr %dct2x2, i64 2
  %arrayidx36.i681 = getelementptr inbounds i8, ptr %dct2x2, i64 6
  %b_trellis257 = getelementptr inbounds i8, ptr %h, i64 16416
  %add263 = add nsw i32 %b_inter, 2
  %lnot.ext266 = zext i1 %tobool.not to i32
  %quant_4x4 = getelementptr inbounds i8, ptr %h, i64 33088
  %quant4_mf273 = getelementptr inbounds i8, ptr %h, i64 3440
  %idxprom275 = sext i32 %add263 to i64
  %arrayidx276 = getelementptr inbounds [4 x ptr], ptr %quant4_mf273, i64 0, i64 %idxprom275
  %idxprom277 = sext i32 %i_qp to i64
  %quant4_bias280 = getelementptr inbounds i8, ptr %h, i64 3488
  %arrayidx283 = getelementptr inbounds [4 x ptr], ptr %quant4_bias280, i64 0, i64 %idxprom275
  %scan_4x4 = getelementptr inbounds i8, ptr %h, i64 33040
  %dequant_4x4 = getelementptr inbounds i8, ptr %h, i64 33120
  %dequant4_mf318 = getelementptr inbounds i8, ptr %h, i64 3344
  %arrayidx321 = getelementptr inbounds [4 x ptr], ptr %dequant4_mf318, i64 0, i64 %idxprom275
  %decimate_score15 = getelementptr inbounds i8, ptr %h, i64 33144
  %quant_2x2_dc353 = getelementptr inbounds i8, ptr %h, i64 33104
  %not. = xor i1 %71, true
  %rem.i699 = srem i32 %i_qp, 6
  %idxprom.i700 = sext i32 %rem.i699 to i64
  %div.i702 = sdiv i32 %i_qp, 6
  %add8x8_idct_dc443 = getelementptr inbounds i8, ptr %h, i64 32952
  %add8x8_idct = getelementptr inbounds i8, ptr %h, i64 32944
  br label %for.body158

for.cond.cleanup157:                              ; preds = %cleanup466
  %arrayidx481 = getelementptr inbounds i8, ptr %h, i64 25118
  %72 = load i16, ptr %arrayidx481, align 1
  %tobool482 = icmp ne i16 %72, 0
  %lnot.ext486 = zext i1 %tobool482 to i32
  %73 = load i32, ptr %i_cbp_chroma753, align 4
  %or489 = or i32 %73, %lnot.ext486
  %add492 = add nsw i32 %or489, %73
  store i32 %add492, ptr %i_cbp_chroma753, align 4
  br label %cleanup495

for.body158:                                      ; preds = %if.end152, %cleanup466
  %cmp155 = phi i1 [ true, %if.end152 ], [ false, %cleanup466 ]
  %indvars.iv = phi i64 [ 0, %if.end152 ], [ 1, %cleanup466 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %arrayidx164 = getelementptr inbounds [3 x ptr], ptr %p_fenc161, i64 0, i64 %indvars.iv.next
  %74 = load ptr, ptr %arrayidx164, align 8
  %arrayidx170 = getelementptr inbounds [3 x ptr], ptr %p_fdec167, i64 0, i64 %indvars.iv.next
  %75 = load ptr, ptr %arrayidx170, align 8
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %dct4x4) #6
  %76 = load i32, ptr %b_lossless, align 4
  %tobool172.not = icmp eq i32 %76, 0
  br i1 %tobool172.not, label %if.end245, label %for.cond174.preheader

for.cond174.preheader:                            ; preds = %for.body158
  %77 = shl nuw nsw i64 %indvars.iv, 2
  %78 = load ptr, ptr %sub_4x4ac, align 8
  %79 = or disjoint i64 %77, 16
  %arrayidx204 = getelementptr inbounds [24 x [16 x i16]], ptr %luma4x4, i64 0, i64 %79
  %arrayidx213 = getelementptr inbounds [2 x [4 x i16]], ptr %chroma_dc209, i64 0, i64 %indvars.iv, i64 0
  %call214 = call i32 %78(ptr noundef nonnull %arrayidx204, ptr noundef %74, ptr noundef %75, ptr noundef nonnull %arrayidx213) #6
  %conv215 = trunc i32 %call214 to i8
  %arrayidx223 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %79
  %80 = load i32, ptr %arrayidx223, align 16
  %idxprom224 = sext i32 %80 to i64
  %arrayidx225 = getelementptr inbounds [48 x i8], ptr %non_zero_count218, i64 0, i64 %idxprom224
  store i8 %conv215, ptr %arrayidx225, align 1
  %81 = load i32, ptr %i_cbp_chroma753, align 4
  %or = or i32 %81, %call214
  store i32 %or, ptr %i_cbp_chroma753, align 4
  %82 = load ptr, ptr %sub_4x4ac, align 8
  %83 = or disjoint i64 %77, 17
  %arrayidx204.1 = getelementptr inbounds [24 x [16 x i16]], ptr %luma4x4, i64 0, i64 %83
  %add.ptr.1 = getelementptr inbounds i8, ptr %74, i64 4
  %add.ptr207.1 = getelementptr inbounds i8, ptr %75, i64 4
  %arrayidx213.1 = getelementptr inbounds [2 x [4 x i16]], ptr %chroma_dc209, i64 0, i64 %indvars.iv, i64 1
  %call214.1 = call i32 %82(ptr noundef nonnull %arrayidx204.1, ptr noundef nonnull %add.ptr.1, ptr noundef nonnull %add.ptr207.1, ptr noundef nonnull %arrayidx213.1) #6
  %conv215.1 = trunc i32 %call214.1 to i8
  %arrayidx223.1 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %83
  %84 = load i32, ptr %arrayidx223.1, align 4
  %idxprom224.1 = sext i32 %84 to i64
  %arrayidx225.1 = getelementptr inbounds [48 x i8], ptr %non_zero_count218, i64 0, i64 %idxprom224.1
  store i8 %conv215.1, ptr %arrayidx225.1, align 1
  %85 = load i32, ptr %i_cbp_chroma753, align 4
  %or.1 = or i32 %85, %call214.1
  store i32 %or.1, ptr %i_cbp_chroma753, align 4
  %86 = load ptr, ptr %sub_4x4ac, align 8
  %87 = or disjoint i64 %77, 18
  %arrayidx204.2 = getelementptr inbounds [24 x [16 x i16]], ptr %luma4x4, i64 0, i64 %87
  %add.ptr.2 = getelementptr inbounds i8, ptr %74, i64 64
  %add.ptr207.2 = getelementptr inbounds i8, ptr %75, i64 128
  %arrayidx213.2 = getelementptr inbounds [2 x [4 x i16]], ptr %chroma_dc209, i64 0, i64 %indvars.iv, i64 2
  %call214.2 = call i32 %86(ptr noundef nonnull %arrayidx204.2, ptr noundef nonnull %add.ptr.2, ptr noundef nonnull %add.ptr207.2, ptr noundef nonnull %arrayidx213.2) #6
  %conv215.2 = trunc i32 %call214.2 to i8
  %arrayidx223.2 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %87
  %88 = load i32, ptr %arrayidx223.2, align 8
  %idxprom224.2 = sext i32 %88 to i64
  %arrayidx225.2 = getelementptr inbounds [48 x i8], ptr %non_zero_count218, i64 0, i64 %idxprom224.2
  store i8 %conv215.2, ptr %arrayidx225.2, align 1
  %89 = load i32, ptr %i_cbp_chroma753, align 4
  %or.2 = or i32 %89, %call214.2
  store i32 %or.2, ptr %i_cbp_chroma753, align 4
  %90 = load ptr, ptr %sub_4x4ac, align 8
  %91 = or disjoint i64 %77, 19
  %arrayidx204.3 = getelementptr inbounds [24 x [16 x i16]], ptr %luma4x4, i64 0, i64 %91
  %add.ptr.3 = getelementptr inbounds i8, ptr %74, i64 68
  %add.ptr207.3 = getelementptr inbounds i8, ptr %75, i64 132
  %arrayidx213.3 = getelementptr inbounds [2 x [4 x i16]], ptr %chroma_dc209, i64 0, i64 %indvars.iv, i64 3
  %call214.3 = call i32 %90(ptr noundef nonnull %arrayidx204.3, ptr noundef nonnull %add.ptr.3, ptr noundef nonnull %add.ptr207.3, ptr noundef nonnull %arrayidx213.3) #6
  %conv215.3 = trunc i32 %call214.3 to i8
  %arrayidx223.3 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %91
  %92 = load i32, ptr %arrayidx223.3, align 4
  %idxprom224.3 = sext i32 %92 to i64
  %arrayidx225.3 = getelementptr inbounds [48 x i8], ptr %non_zero_count218, i64 0, i64 %idxprom224.3
  store i8 %conv215.3, ptr %arrayidx225.3, align 1
  %93 = load i32, ptr %i_cbp_chroma753, align 4
  %or.3 = or i32 %93, %call214.3
  store i32 %or.3, ptr %i_cbp_chroma753, align 4
  %94 = load i64, ptr %arrayidx213, align 8
  %tobool.i = icmp ne i64 %94, 0
  %conv238 = zext i1 %tobool.i to i8
  %95 = or disjoint i64 %indvars.iv, 46
  %arrayidx244 = getelementptr inbounds [48 x i8], ptr %non_zero_count218, i64 0, i64 %95
  store i8 %conv238, ptr %arrayidx244, align 1
  br label %cleanup466

if.end245:                                        ; preds = %for.body158
  %96 = load ptr, ptr %sub8x8_dct, align 16
  call void %96(ptr noundef nonnull %dct4x4, ptr noundef %74, ptr noundef %75) #6
  %97 = load i16, ptr %dct4x4, align 16
  %conv63.i = zext i16 %97 to i32
  %98 = load i16, ptr %arrayidx2.i676, align 16
  %conv464.i = zext i16 %98 to i32
  %add.i677 = add nuw nsw i32 %conv464.i, %conv63.i
  %99 = load i16, ptr %arrayidx5.i678, align 16
  %conv765.i = zext i16 %99 to i32
  %100 = load i16, ptr %arrayidx8.i, align 16
  %conv1066.i = zext i16 %100 to i32
  %add11.i = add nuw nsw i32 %conv1066.i, %conv765.i
  %sub.i679 = sub nsw i32 %conv63.i, %conv464.i
  %sub24.i = sub nsw i32 %conv765.i, %conv1066.i
  %add25.i = add nuw nsw i32 %add11.i, %add.i677
  %conv26.i = trunc i32 %add25.i to i16
  store i16 %conv26.i, ptr %dct2x2, align 16
  %add28.i = add nsw i32 %sub24.i, %sub.i679
  %conv29.i = trunc i32 %add28.i to i16
  store i16 %conv29.i, ptr %arrayidx30.i, align 4
  %sub31.i = sub nsw i32 %add.i677, %add11.i
  %conv32.i = trunc i32 %sub31.i to i16
  store i16 %conv32.i, ptr %arrayidx33.i, align 2
  %sub34.i = sub nsw i32 %sub.i679, %sub24.i
  %conv35.i680 = trunc i32 %sub34.i to i16
  store i16 %conv35.i680, ptr %arrayidx36.i681, align 2
  store i16 0, ptr %dct4x4, align 16
  store i16 0, ptr %arrayidx2.i676, align 16
  store i16 0, ptr %arrayidx5.i678, align 16
  store i16 0, ptr %arrayidx8.i, align 16
  %101 = shl nuw nsw i64 %indvars.iv, 2
  %102 = load i32, ptr %b_trellis257, align 16
  %tobool258.not = icmp eq i32 %102, 0
  br i1 %tobool258.not, label %if.else268, label %if.then259

if.then259:                                       ; preds = %if.end245
  %call267 = call i32 @x264_quant_4x4_trellis(ptr noundef nonnull %h, ptr noundef nonnull %dct4x4, i32 noundef %add263, i32 noundef %i_qp, i32 noundef 4, i32 noundef %lnot.ext266, i32 noundef 1, i32 noundef 0) #6
  br label %if.end288

if.else268:                                       ; preds = %if.end245
  %103 = load ptr, ptr %quant_4x4, align 8
  %104 = load ptr, ptr %arrayidx276, align 8
  %arrayidx278 = getelementptr inbounds [16 x i16], ptr %104, i64 %idxprom277
  %105 = load ptr, ptr %arrayidx283, align 8
  %arrayidx285 = getelementptr inbounds [16 x i16], ptr %105, i64 %idxprom277
  %call287 = call i32 %103(ptr noundef nonnull %dct4x4, ptr noundef %arrayidx278, ptr noundef %arrayidx285) #6
  br label %if.end288

if.end288:                                        ; preds = %if.else268, %if.then259
  %nz.0 = phi i32 [ %call267, %if.then259 ], [ %call287, %if.else268 ]
  %conv289 = trunc i32 %nz.0 to i8
  %106 = or disjoint i64 %101, 16
  %arrayidx297 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %106
  %107 = load i32, ptr %arrayidx297, align 16
  %idxprom298 = sext i32 %107 to i64
  %arrayidx299 = getelementptr inbounds [48 x i8], ptr %non_zero_count218, i64 0, i64 %idxprom298
  store i8 %conv289, ptr %arrayidx299, align 1
  %tobool300.not = icmp eq i32 %nz.0, 0
  br i1 %tobool300.not, label %for.inc337, label %if.then301

if.then301:                                       ; preds = %if.end288
  %108 = load ptr, ptr %scan_4x4, align 8
  %arrayidx309 = getelementptr inbounds [24 x [16 x i16]], ptr %luma4x4, i64 0, i64 %106
  call void %108(ptr noundef nonnull %arrayidx309, ptr noundef nonnull %dct4x4) #6
  %109 = load ptr, ptr %dequant_4x4, align 8
  %110 = load ptr, ptr %arrayidx321, align 8
  call void %109(ptr noundef nonnull %dct4x4, ptr noundef %110, i32 noundef %i_qp) #6
  br i1 %71, label %if.then323, label %for.inc337

if.then323:                                       ; preds = %if.then301
  %111 = load ptr, ptr %decimate_score15, align 8
  %call333 = call i32 %111(ptr noundef nonnull %arrayidx309) #6
  br label %for.inc337

for.inc337:                                       ; preds = %if.end288, %if.then323, %if.then301
  %i_decimate_score.1 = phi i32 [ %call333, %if.then323 ], [ 0, %if.then301 ], [ 0, %if.end288 ]
  %nz_ac.1 = phi i32 [ 1, %if.then323 ], [ 1, %if.then301 ], [ 0, %if.end288 ]
  %112 = load i32, ptr %b_trellis257, align 16
  %tobool258.not.1 = icmp eq i32 %112, 0
  br i1 %tobool258.not.1, label %if.else268.1, label %if.then259.1

if.then259.1:                                     ; preds = %for.inc337
  %call267.1 = call i32 @x264_quant_4x4_trellis(ptr noundef nonnull %h, ptr noundef nonnull %arrayidx2.i676, i32 noundef %add263, i32 noundef %i_qp, i32 noundef 4, i32 noundef %lnot.ext266, i32 noundef 1, i32 noundef 0) #6
  br label %if.end288.1

if.else268.1:                                     ; preds = %for.inc337
  %113 = load ptr, ptr %quant_4x4, align 8
  %114 = load ptr, ptr %arrayidx276, align 8
  %arrayidx278.1 = getelementptr inbounds [16 x i16], ptr %114, i64 %idxprom277
  %115 = load ptr, ptr %arrayidx283, align 8
  %arrayidx285.1 = getelementptr inbounds [16 x i16], ptr %115, i64 %idxprom277
  %call287.1 = call i32 %113(ptr noundef nonnull %arrayidx2.i676, ptr noundef %arrayidx278.1, ptr noundef %arrayidx285.1) #6
  br label %if.end288.1

if.end288.1:                                      ; preds = %if.else268.1, %if.then259.1
  %nz.0.1 = phi i32 [ %call267.1, %if.then259.1 ], [ %call287.1, %if.else268.1 ]
  %conv289.1 = trunc i32 %nz.0.1 to i8
  %116 = or disjoint i64 %101, 17
  %arrayidx297.1 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %116
  %117 = load i32, ptr %arrayidx297.1, align 4
  %idxprom298.1 = sext i32 %117 to i64
  %arrayidx299.1 = getelementptr inbounds [48 x i8], ptr %non_zero_count218, i64 0, i64 %idxprom298.1
  store i8 %conv289.1, ptr %arrayidx299.1, align 1
  %tobool300.not.1 = icmp eq i32 %nz.0.1, 0
  br i1 %tobool300.not.1, label %for.inc337.1, label %if.then301.1

if.then301.1:                                     ; preds = %if.end288.1
  %118 = load ptr, ptr %scan_4x4, align 8
  %arrayidx309.1 = getelementptr inbounds [24 x [16 x i16]], ptr %luma4x4, i64 0, i64 %116
  call void %118(ptr noundef nonnull %arrayidx309.1, ptr noundef nonnull %arrayidx2.i676) #6
  %119 = load ptr, ptr %dequant_4x4, align 8
  %120 = load ptr, ptr %arrayidx321, align 8
  call void %119(ptr noundef nonnull %arrayidx2.i676, ptr noundef %120, i32 noundef %i_qp) #6
  br i1 %71, label %if.then323.1, label %for.inc337.1

if.then323.1:                                     ; preds = %if.then301.1
  %121 = load ptr, ptr %decimate_score15, align 8
  %call333.1 = call i32 %121(ptr noundef nonnull %arrayidx309.1) #6
  %add334.1 = add nsw i32 %call333.1, %i_decimate_score.1
  br label %for.inc337.1

for.inc337.1:                                     ; preds = %if.then323.1, %if.then301.1, %if.end288.1
  %i_decimate_score.1.1 = phi i32 [ %add334.1, %if.then323.1 ], [ %i_decimate_score.1, %if.then301.1 ], [ %i_decimate_score.1, %if.end288.1 ]
  %nz_ac.1.1 = phi i32 [ 1, %if.then323.1 ], [ 1, %if.then301.1 ], [ %nz_ac.1, %if.end288.1 ]
  %122 = load i32, ptr %b_trellis257, align 16
  %tobool258.not.2 = icmp eq i32 %122, 0
  br i1 %tobool258.not.2, label %if.else268.2, label %if.then259.2

if.then259.2:                                     ; preds = %for.inc337.1
  %call267.2 = call i32 @x264_quant_4x4_trellis(ptr noundef nonnull %h, ptr noundef nonnull %arrayidx5.i678, i32 noundef %add263, i32 noundef %i_qp, i32 noundef 4, i32 noundef %lnot.ext266, i32 noundef 1, i32 noundef 0) #6
  br label %if.end288.2

if.else268.2:                                     ; preds = %for.inc337.1
  %123 = load ptr, ptr %quant_4x4, align 8
  %124 = load ptr, ptr %arrayidx276, align 8
  %arrayidx278.2 = getelementptr inbounds [16 x i16], ptr %124, i64 %idxprom277
  %125 = load ptr, ptr %arrayidx283, align 8
  %arrayidx285.2 = getelementptr inbounds [16 x i16], ptr %125, i64 %idxprom277
  %call287.2 = call i32 %123(ptr noundef nonnull %arrayidx5.i678, ptr noundef %arrayidx278.2, ptr noundef %arrayidx285.2) #6
  br label %if.end288.2

if.end288.2:                                      ; preds = %if.else268.2, %if.then259.2
  %nz.0.2 = phi i32 [ %call267.2, %if.then259.2 ], [ %call287.2, %if.else268.2 ]
  %conv289.2 = trunc i32 %nz.0.2 to i8
  %126 = or disjoint i64 %101, 18
  %arrayidx297.2 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %126
  %127 = load i32, ptr %arrayidx297.2, align 8
  %idxprom298.2 = sext i32 %127 to i64
  %arrayidx299.2 = getelementptr inbounds [48 x i8], ptr %non_zero_count218, i64 0, i64 %idxprom298.2
  store i8 %conv289.2, ptr %arrayidx299.2, align 1
  %tobool300.not.2 = icmp eq i32 %nz.0.2, 0
  br i1 %tobool300.not.2, label %for.inc337.2, label %if.then301.2

if.then301.2:                                     ; preds = %if.end288.2
  %128 = load ptr, ptr %scan_4x4, align 8
  %arrayidx309.2 = getelementptr inbounds [24 x [16 x i16]], ptr %luma4x4, i64 0, i64 %126
  call void %128(ptr noundef nonnull %arrayidx309.2, ptr noundef nonnull %arrayidx5.i678) #6
  %129 = load ptr, ptr %dequant_4x4, align 8
  %130 = load ptr, ptr %arrayidx321, align 8
  call void %129(ptr noundef nonnull %arrayidx5.i678, ptr noundef %130, i32 noundef %i_qp) #6
  br i1 %71, label %if.then323.2, label %for.inc337.2

if.then323.2:                                     ; preds = %if.then301.2
  %131 = load ptr, ptr %decimate_score15, align 8
  %call333.2 = call i32 %131(ptr noundef nonnull %arrayidx309.2) #6
  %add334.2 = add nsw i32 %call333.2, %i_decimate_score.1.1
  br label %for.inc337.2

for.inc337.2:                                     ; preds = %if.then323.2, %if.then301.2, %if.end288.2
  %i_decimate_score.1.2 = phi i32 [ %add334.2, %if.then323.2 ], [ %i_decimate_score.1.1, %if.then301.2 ], [ %i_decimate_score.1.1, %if.end288.2 ]
  %nz_ac.1.2 = phi i32 [ 1, %if.then323.2 ], [ 1, %if.then301.2 ], [ %nz_ac.1.1, %if.end288.2 ]
  %132 = load i32, ptr %b_trellis257, align 16
  %tobool258.not.3 = icmp eq i32 %132, 0
  br i1 %tobool258.not.3, label %if.else268.3, label %if.then259.3

if.then259.3:                                     ; preds = %for.inc337.2
  %call267.3 = call i32 @x264_quant_4x4_trellis(ptr noundef nonnull %h, ptr noundef nonnull %arrayidx8.i, i32 noundef %add263, i32 noundef %i_qp, i32 noundef 4, i32 noundef %lnot.ext266, i32 noundef 1, i32 noundef 0) #6
  br label %if.end288.3

if.else268.3:                                     ; preds = %for.inc337.2
  %133 = load ptr, ptr %quant_4x4, align 8
  %134 = load ptr, ptr %arrayidx276, align 8
  %arrayidx278.3 = getelementptr inbounds [16 x i16], ptr %134, i64 %idxprom277
  %135 = load ptr, ptr %arrayidx283, align 8
  %arrayidx285.3 = getelementptr inbounds [16 x i16], ptr %135, i64 %idxprom277
  %call287.3 = call i32 %133(ptr noundef nonnull %arrayidx8.i, ptr noundef %arrayidx278.3, ptr noundef %arrayidx285.3) #6
  br label %if.end288.3

if.end288.3:                                      ; preds = %if.else268.3, %if.then259.3
  %nz.0.3 = phi i32 [ %call267.3, %if.then259.3 ], [ %call287.3, %if.else268.3 ]
  %conv289.3 = trunc i32 %nz.0.3 to i8
  %136 = or disjoint i64 %101, 19
  %arrayidx297.3 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %136
  %137 = load i32, ptr %arrayidx297.3, align 4
  %idxprom298.3 = sext i32 %137 to i64
  %arrayidx299.3 = getelementptr inbounds [48 x i8], ptr %non_zero_count218, i64 0, i64 %idxprom298.3
  store i8 %conv289.3, ptr %arrayidx299.3, align 1
  %tobool300.not.3 = icmp eq i32 %nz.0.3, 0
  br i1 %tobool300.not.3, label %for.inc337.3, label %if.then301.3

if.then301.3:                                     ; preds = %if.end288.3
  %138 = load ptr, ptr %scan_4x4, align 8
  %arrayidx309.3 = getelementptr inbounds [24 x [16 x i16]], ptr %luma4x4, i64 0, i64 %136
  call void %138(ptr noundef nonnull %arrayidx309.3, ptr noundef nonnull %arrayidx8.i) #6
  %139 = load ptr, ptr %dequant_4x4, align 8
  %140 = load ptr, ptr %arrayidx321, align 8
  call void %139(ptr noundef nonnull %arrayidx8.i, ptr noundef %140, i32 noundef %i_qp) #6
  br i1 %71, label %if.then323.3, label %for.inc337.3

if.then323.3:                                     ; preds = %if.then301.3
  %141 = load ptr, ptr %decimate_score15, align 8
  %call333.3 = call i32 %141(ptr noundef nonnull %arrayidx309.3) #6
  %add334.3 = add nsw i32 %call333.3, %i_decimate_score.1.2
  br label %for.inc337.3

for.inc337.3:                                     ; preds = %if.then323.3, %if.then301.3, %if.end288.3
  %i_decimate_score.1.3 = phi i32 [ %add334.3, %if.then323.3 ], [ %i_decimate_score.1.2, %if.then301.3 ], [ %i_decimate_score.1.2, %if.end288.3 ]
  %nz_ac.1.3 = phi i32 [ 1, %if.then323.3 ], [ 1, %if.then301.3 ], [ %nz_ac.1.2, %if.end288.3 ]
  %142 = load i32, ptr %b_trellis257, align 16
  %tobool343.not = icmp eq i32 %142, 0
  br i1 %tobool343.not, label %if.else351, label %if.then344

if.then344:                                       ; preds = %for.inc337.3
  %call350 = call i32 @x264_quant_dc_trellis(ptr noundef nonnull %h, ptr noundef nonnull %dct2x2, i32 noundef %add263, i32 noundef %i_qp, i32 noundef 3, i32 noundef %lnot.ext266, i32 noundef 1) #6
  br label %if.end374

if.else351:                                       ; preds = %for.inc337.3
  %143 = load ptr, ptr %quant_2x2_dc353, align 8
  %144 = load ptr, ptr %arrayidx276, align 8
  %arrayidx360 = getelementptr inbounds [16 x i16], ptr %144, i64 %idxprom277
  %145 = load i16, ptr %arrayidx360, align 2
  %146 = lshr i16 %145, 1
  %shr363 = zext nneg i16 %146 to i32
  %147 = load ptr, ptr %arrayidx283, align 8
  %arrayidx369 = getelementptr inbounds [16 x i16], ptr %147, i64 %idxprom277
  %148 = load i16, ptr %arrayidx369, align 2
  %conv371 = zext i16 %148 to i32
  %shl372 = shl nuw nsw i32 %conv371, 1
  %call373 = call i32 %143(ptr noundef nonnull %dct2x2, i32 noundef %shr363, i32 noundef %shl372) #6
  br label %if.end374

if.end374:                                        ; preds = %if.else351, %if.then344
  %nz_dc.1 = phi i32 [ %call350, %if.then344 ], [ %call373, %if.else351 ]
  %conv375 = trunc i32 %nz_dc.1 to i8
  %149 = or disjoint i64 %indvars.iv, 46
  %arrayidx381 = getelementptr inbounds [48 x i8], ptr %non_zero_count218, i64 0, i64 %149
  store i8 %conv375, ptr %arrayidx381, align 1
  %cmp384 = icmp sgt i32 %i_decimate_score.1.3, 6
  %or.cond = select i1 %not., i1 true, i1 %cmp384
  %tobool386 = icmp ne i32 %nz_ac.1.3, 0
  %or.cond502 = and i1 %or.cond, %tobool386
  br i1 %or.cond502, label %if.else445, label %if.then387

if.then387:                                       ; preds = %if.end374
  %150 = mul nuw nsw i64 %indvars.iv, 24
  %151 = add nuw nsw i64 %150, 9
  %arrayidx394 = getelementptr inbounds [48 x i8], ptr %non_zero_count218, i64 0, i64 %151
  store i8 0, ptr %arrayidx394, align 1
  %152 = add nuw nsw i64 %150, 10
  %arrayidx401 = getelementptr inbounds [48 x i8], ptr %non_zero_count218, i64 0, i64 %152
  store i8 0, ptr %arrayidx401, align 1
  %153 = add nuw nsw i64 %150, 17
  %arrayidx408 = getelementptr inbounds [48 x i8], ptr %non_zero_count218, i64 0, i64 %153
  store i8 0, ptr %arrayidx408, align 1
  %154 = add nuw nsw i64 %150, 18
  %arrayidx415 = getelementptr inbounds [48 x i8], ptr %non_zero_count218, i64 0, i64 %154
  store i8 0, ptr %arrayidx415, align 1
  %tobool416.not = icmp eq i32 %nz_dc.1, 0
  br i1 %tobool416.not, label %cleanup466, label %if.end418

if.end418:                                        ; preds = %if.then387
  %call420 = call fastcc i32 @x264_mb_optimize_chroma_dc(ptr noundef nonnull %h, i32 noundef %b_inter, i32 noundef %i_qp, ptr noundef nonnull %dct2x2)
  %tobool421.not = icmp eq i32 %call420, 0
  br i1 %tobool421.not, label %if.then422, label %if.end429

if.then422:                                       ; preds = %if.end418
  store i8 0, ptr %arrayidx381, align 1
  br label %cleanup466

if.end429:                                        ; preds = %if.end418
  %arrayidx433 = getelementptr inbounds [2 x [4 x i16]], ptr %chroma_dc209, i64 0, i64 %indvars.iv
  %155 = load <4 x i16>, ptr %dct2x2, align 16
  %156 = shufflevector <4 x i16> %155, <4 x i16> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i16> %156, ptr %arrayidx433, align 2
  %157 = load ptr, ptr %arrayidx321, align 8
  %arrayidx17.i701 = getelementptr inbounds [16 x i32], ptr %157, i64 %idxprom.i700
  %158 = load i32, ptr %arrayidx17.i701, align 4
  %shl.i703 = shl i32 %158, %div.i702
  %159 = sext <4 x i16> %155 to <4 x i32>
  %160 = shufflevector <4 x i32> %159, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %161 = add nsw <4 x i32> %160, %159
  %162 = sub nsw <4 x i32> %160, %159
  %163 = shufflevector <4 x i32> %161, <4 x i32> %162, <4 x i32> <i32 2, i32 0, i32 7, i32 5>
  %164 = shufflevector <4 x i32> %163, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %165 = add nsw <4 x i32> %163, %164
  %166 = sub nsw <4 x i32> %163, %164
  %167 = shufflevector <4 x i32> %165, <4 x i32> %166, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %168 = insertelement <4 x i32> poison, i32 %shl.i703, i64 0
  %169 = shufflevector <4 x i32> %168, <4 x i32> poison, <4 x i32> zeroinitializer
  %170 = mul nsw <4 x i32> %169, %167
  %171 = lshr <4 x i32> %170, <i32 5, i32 5, i32 5, i32 5>
  %172 = trunc <4 x i32> %171 to <4 x i16>
  store <4 x i16> %172, ptr %dct2x2, align 16
  %173 = load ptr, ptr %add8x8_idct_dc443, align 8
  call void %173(ptr noundef %75, ptr noundef nonnull %dct2x2) #6
  br label %cleanup466

if.else445:                                       ; preds = %if.end374
  store i32 1, ptr %i_cbp_chroma753, align 4
  %tobool448.not = icmp eq i32 %nz_dc.1, 0
  br i1 %tobool448.not, label %if.end462, label %if.then449

if.then449:                                       ; preds = %if.else445
  %arrayidx453 = getelementptr inbounds [2 x [4 x i16]], ptr %chroma_dc209, i64 0, i64 %indvars.iv
  %174 = load <4 x i16>, ptr %dct2x2, align 16
  %175 = shufflevector <4 x i16> %174, <4 x i16> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i16> %175, ptr %arrayidx453, align 2
  %176 = load ptr, ptr %arrayidx321, align 8
  %177 = extractelement <4 x i16> %174, i64 0
  %conv.i729 = sext i16 %177 to i32
  %178 = extractelement <4 x i16> %174, i64 1
  %conv2.i731 = sext i16 %178 to i32
  %add.i732 = add nsw i32 %conv2.i731, %conv.i729
  %179 = extractelement <4 x i16> %174, i64 2
  %conv4.i734 = sext i16 %179 to i32
  %180 = extractelement <4 x i16> %174, i64 3
  %conv6.i736 = sext i16 %180 to i32
  %add7.i737 = add nsw i32 %conv6.i736, %conv4.i734
  %sub.i738 = sub nsw i32 %conv.i729, %conv2.i731
  %sub16.i739 = sub nsw i32 %conv4.i734, %conv6.i736
  %arrayidx17.i742 = getelementptr inbounds [16 x i32], ptr %176, i64 %idxprom.i700
  %181 = load i32, ptr %arrayidx17.i742, align 4
  %shl.i744 = shl i32 %181, %div.i702
  %add19.i745 = add nsw i32 %add7.i737, %add.i732
  %mul.i746 = mul nsw i32 %shl.i744, %add19.i745
  %shr.i747 = lshr i32 %mul.i746, 5
  %conv20.i748 = trunc i32 %shr.i747 to i16
  store i16 %conv20.i748, ptr %dct4x4, align 16
  %sub23.i = sub nsw i32 %add.i732, %add7.i737
  %mul24.i = mul nsw i32 %shl.i744, %sub23.i
  %shr25.i = lshr i32 %mul24.i, 5
  %conv26.i749 = trunc i32 %shr25.i to i16
  store i16 %conv26.i749, ptr %arrayidx2.i676, align 16
  %add29.i = add nsw i32 %sub16.i739, %sub.i738
  %mul30.i = mul nsw i32 %shl.i744, %add29.i
  %shr31.i = lshr i32 %mul30.i, 5
  %conv32.i750 = trunc i32 %shr31.i to i16
  store i16 %conv32.i750, ptr %arrayidx5.i678, align 16
  %sub35.i = sub nsw i32 %sub.i738, %sub16.i739
  %mul36.i = mul nsw i32 %shl.i744, %sub35.i
  %shr37.i = lshr i32 %mul36.i, 5
  %conv38.i = trunc i32 %shr37.i to i16
  store i16 %conv38.i, ptr %arrayidx8.i, align 16
  br label %if.end462

if.end462:                                        ; preds = %if.then449, %if.else445
  %182 = load ptr, ptr %add8x8_idct, align 16
  call void %182(ptr noundef %75, ptr noundef nonnull %dct4x4) #6
  br label %cleanup466

cleanup466:                                       ; preds = %if.end429, %if.end462, %if.then387, %if.then422, %for.cond174.preheader
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %dct4x4) #6
  br i1 %cmp155, label %for.body158, label %for.cond.cleanup157

cleanup495:                                       ; preds = %for.inc.1, %for.cond.cleanup157
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dct2x2) #6
  ret void
}

declare i32 @x264_quant_dc_trellis(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @x264_mb_optimize_chroma_dc(ptr nocapture noundef readonly %h, i32 noundef %b_inter, i32 noundef %i_qp, ptr noundef %dct2x2) unnamed_addr #3 {
entry:
  %dequant4_mf = getelementptr inbounds i8, ptr %h, i64 3344
  %add = add nsw i32 %b_inter, 2
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds [4 x ptr], ptr %dequant4_mf, i64 0, i64 %idxprom
  %0 = load ptr, ptr %arrayidx, align 8
  %rem = srem i32 %i_qp, 6
  %idxprom1 = sext i32 %rem to i64
  %arrayidx2 = getelementptr inbounds [16 x i32], ptr %0, i64 %idxprom1
  %1 = load i32, ptr %arrayidx2, align 4
  %div = sdiv i32 %i_qp, 6
  %shl = shl i32 %1, %div
  %cmp = icmp sgt i32 %shl, 2048
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %2 = load i16, ptr %dct2x2, align 2
  %conv.i = sext i16 %2 to i32
  %arrayidx1.i = getelementptr inbounds i8, ptr %dct2x2, i64 2
  %3 = load i16, ptr %arrayidx1.i, align 2
  %conv2.i = sext i16 %3 to i32
  %add.i = add nsw i32 %conv2.i, %conv.i
  %arrayidx3.i = getelementptr inbounds i8, ptr %dct2x2, i64 4
  %4 = load i16, ptr %arrayidx3.i, align 2
  %conv4.i = sext i16 %4 to i32
  %arrayidx5.i = getelementptr inbounds i8, ptr %dct2x2, i64 6
  %5 = load i16, ptr %arrayidx5.i, align 2
  %conv6.i = sext i16 %5 to i32
  %add7.i = add nsw i32 %conv6.i, %conv4.i
  %sub.i = sub nsw i32 %conv.i, %conv2.i
  %sub16.i = sub nsw i32 %conv4.i, %conv6.i
  %add19.i = add nsw i32 %add7.i, %add.i
  %mul.i = mul nsw i32 %add19.i, %shl
  %shr.i = lshr i32 %mul.i, 5
  %conv20.i = trunc i32 %shr.i to i16
  %sub22.i = sub nsw i32 %add.i, %add7.i
  %mul23.i = mul nsw i32 %sub22.i, %shl
  %shr24.i = lshr i32 %mul23.i, 5
  %conv25.i = trunc i32 %shr24.i to i16
  %add27.i = add nsw i32 %sub16.i, %sub.i
  %mul28.i = mul nsw i32 %add27.i, %shl
  %shr29.i = lshr i32 %mul28.i, 5
  %conv30.i = trunc i32 %shr29.i to i16
  %sub32.i = sub nsw i32 %sub.i, %sub16.i
  %mul33.i = mul nsw i32 %sub32.i, %shl
  %shr34.i = lshr i32 %mul33.i, 5
  %conv35.i = trunc i32 %shr34.i to i16
  %add9 = add i16 %conv20.i, 32
  %add13 = add i16 %conv25.i, 32
  %add17 = add i16 %conv30.i, 32
  %add21 = add i16 %conv35.i, 32
  %or84 = or i16 %add9, %add13
  %or2985 = or i16 %or84, %add17
  %or3286 = or i16 %or2985, %add21
  %tobool.not = icmp ult i16 %or3286, 64
  br i1 %tobool.not, label %cleanup, label %if.end34

if.end34:                                         ; preds = %if.end
  %arrayidx35 = getelementptr inbounds i8, ptr %h, i64 33192
  %6 = load ptr, ptr %arrayidx35, align 8
  %call = tail call i32 %6(ptr noundef nonnull %dct2x2) #6
  %cmp36103 = icmp sgt i32 %call, -1
  br i1 %cmp36103, label %for.body.lr.ph, label %cleanup

for.body.lr.ph:                                   ; preds = %if.end34
  %conv.i87 = sext i16 %add9 to i32
  %conv4.i91 = sext i16 %add13 to i32
  %conv10.i = sext i16 %add17 to i32
  %conv17.i = sext i16 %add21 to i32
  %7 = zext nneg i32 %call to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %while.end
  %indvars.iv = phi i64 [ %7, %for.body.lr.ph ], [ %indvars.iv.next, %while.end ]
  %nz.0105 = phi i32 [ 0, %for.body.lr.ph ], [ %nz.1, %while.end ]
  %arrayidx39 = getelementptr inbounds i16, ptr %dct2x2, i64 %indvars.iv
  %8 = load i16, ptr %arrayidx39, align 2
  %conv40 = sext i16 %8 to i32
  %shr41 = ashr i32 %conv40, 31
  %or42 = or i32 %shr41, 1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body
  %level.0 = phi i32 [ %conv40, %for.body ], [ %sub, %while.body ]
  %tobool43.not = icmp eq i32 %level.0, 0
  br i1 %tobool43.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %sub = sub nsw i32 %level.0, %or42
  %conv44 = trunc i32 %sub to i16
  store i16 %conv44, ptr %arrayidx39, align 2
  %9 = load ptr, ptr %arrayidx, align 8
  %10 = load i16, ptr %dct2x2, align 2
  %conv.i.i = sext i16 %10 to i32
  %11 = load i16, ptr %arrayidx1.i, align 2
  %conv2.i.i = sext i16 %11 to i32
  %add.i.i = add nsw i32 %conv2.i.i, %conv.i.i
  %12 = load i16, ptr %arrayidx3.i, align 2
  %conv4.i.i = sext i16 %12 to i32
  %13 = load i16, ptr %arrayidx5.i, align 2
  %conv6.i.i = sext i16 %13 to i32
  %add7.i.i = add nsw i32 %conv6.i.i, %conv4.i.i
  %sub.i.i = sub nsw i32 %conv.i.i, %conv2.i.i
  %sub16.i.i = sub nsw i32 %conv4.i.i, %conv6.i.i
  %arrayidx17.i.i = getelementptr inbounds [16 x i32], ptr %9, i64 %idxprom1
  %14 = load i32, ptr %arrayidx17.i.i, align 4
  %shl.i.i = shl i32 %14, %div
  %add19.i.i = add nsw i32 %add7.i.i, %add.i.i
  %sub22.i.i = sub nsw i32 %add.i.i, %add7.i.i
  %add27.i.i = add nsw i32 %sub16.i.i, %sub.i.i
  %sub32.i.i = sub nsw i32 %sub.i.i, %sub16.i.i
  %mul.i.i = shl i32 %shl.i.i, 11
  %15 = mul i32 %mul.i.i, %add19.i.i
  %conv2.i88 = ashr i32 %15, 16
  %add.i89 = add nsw i32 %conv2.i88, 32
  %xor.i = xor i32 %add.i89, %conv.i87
  %16 = mul i32 %mul.i.i, %sub22.i.i
  %conv6.i92 = ashr i32 %16, 16
  %add7.i93 = add nsw i32 %conv6.i92, 32
  %xor8.i = xor i32 %add7.i93, %conv4.i91
  %or.i = or i32 %xor.i, %xor8.i
  %17 = mul i32 %mul.i.i, %add27.i.i
  %conv12.i = ashr i32 %17, 16
  %add13.i = add nsw i32 %conv12.i, 32
  %xor14.i = xor i32 %add13.i, %conv10.i
  %or15.i = or i32 %or.i, %xor14.i
  %18 = mul i32 %mul.i.i, %sub32.i.i
  %conv19.i = ashr i32 %18, 16
  %add20.i = add nsw i32 %conv19.i, 32
  %xor21.i = xor i32 %add20.i, %conv17.i
  %or22.i = or i32 %or15.i, %xor21.i
  %tobool53.not = icmp ult i32 %or22.i, 64
  br i1 %tobool53.not, label %while.cond, label %if.then54

if.then54:                                        ; preds = %while.body
  %conv55 = trunc i32 %level.0 to i16
  store i16 %conv55, ptr %arrayidx39, align 2
  br label %while.end

while.end:                                        ; preds = %while.cond, %if.then54
  %nz.1 = phi i32 [ 1, %if.then54 ], [ %nz.0105, %while.cond ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %cmp36 = icmp sgt i64 %indvars.iv, 0
  br i1 %cmp36, label %for.body, label %cleanup

cleanup:                                          ; preds = %while.end, %if.end34, %if.end, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ 0, %if.end ], [ 0, %if.end34 ], [ %nz.1, %while.end ]
  ret i32 %retval.0
}

declare i32 @x264_quant_4x4_trellis(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @x264_predict_lossless_8x8_chroma(ptr nocapture noundef readonly %h, i32 noundef %i_mode) local_unnamed_addr #0 {
entry:
  %fenc = getelementptr inbounds i8, ptr %h, i64 14680
  %0 = load ptr, ptr %fenc, align 8
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 108
  %1 = load i32, ptr %arrayidx, align 4
  %b_interlaced = getelementptr inbounds i8, ptr %h, i64 16436
  %2 = load i32, ptr %b_interlaced, align 4
  %shl = shl i32 %1, %2
  switch i32 %i_mode, label %if.else47 [
    i32 2, label %if.then
    i32 1, label %if.then22
  ]

if.then:                                          ; preds = %entry
  %arrayidx1 = getelementptr inbounds i8, ptr %h, i64 32744
  %3 = load ptr, ptr %arrayidx1, align 8
  %arrayidx3 = getelementptr inbounds i8, ptr %h, i64 21400
  %4 = load ptr, ptr %arrayidx3, align 8
  %arrayidx6 = getelementptr inbounds i8, ptr %h, i64 21376
  %5 = load ptr, ptr %arrayidx6, align 8
  %idx.ext = sext i32 %shl to i64
  %idx.neg = sub nsw i64 0, %idx.ext
  %add.ptr = getelementptr inbounds i8, ptr %5, i64 %idx.neg
  tail call void %3(ptr noundef %4, i32 noundef 32, ptr noundef %add.ptr, i32 noundef %shl, i32 noundef 8) #6
  %6 = load ptr, ptr %arrayidx1, align 8
  %arrayidx13 = getelementptr inbounds i8, ptr %h, i64 21408
  %7 = load ptr, ptr %arrayidx13, align 16
  %arrayidx17 = getelementptr inbounds i8, ptr %h, i64 21384
  %8 = load ptr, ptr %arrayidx17, align 8
  %add.ptr20 = getelementptr inbounds i8, ptr %8, i64 %idx.neg
  tail call void %6(ptr noundef %7, i32 noundef 32, ptr noundef %add.ptr20, i32 noundef %shl, i32 noundef 8) #6
  br label %if.end60

if.then22:                                        ; preds = %entry
  %arrayidx25 = getelementptr inbounds i8, ptr %h, i64 32744
  %9 = load ptr, ptr %arrayidx25, align 8
  %arrayidx29 = getelementptr inbounds i8, ptr %h, i64 21400
  %10 = load ptr, ptr %arrayidx29, align 8
  %arrayidx33 = getelementptr inbounds i8, ptr %h, i64 21376
  %11 = load ptr, ptr %arrayidx33, align 8
  %add.ptr34 = getelementptr inbounds i8, ptr %11, i64 -1
  tail call void %9(ptr noundef %10, i32 noundef 32, ptr noundef nonnull %add.ptr34, i32 noundef %shl, i32 noundef 8) #6
  %12 = load ptr, ptr %arrayidx25, align 8
  %arrayidx41 = getelementptr inbounds i8, ptr %h, i64 21408
  %13 = load ptr, ptr %arrayidx41, align 16
  %arrayidx45 = getelementptr inbounds i8, ptr %h, i64 21384
  %14 = load ptr, ptr %arrayidx45, align 8
  %add.ptr46 = getelementptr inbounds i8, ptr %14, i64 -1
  tail call void %12(ptr noundef %13, i32 noundef 32, ptr noundef nonnull %add.ptr46, i32 noundef %shl, i32 noundef 8) #6
  br label %if.end60

if.else47:                                        ; preds = %entry
  %predict_8x8c = getelementptr inbounds i8, ptr %h, i64 31304
  %idxprom = sext i32 %i_mode to i64
  %arrayidx48 = getelementptr inbounds [7 x ptr], ptr %predict_8x8c, i64 0, i64 %idxprom
  %15 = load ptr, ptr %arrayidx48, align 8
  %arrayidx52 = getelementptr inbounds i8, ptr %h, i64 21400
  %16 = load ptr, ptr %arrayidx52, align 8
  tail call void %15(ptr noundef %16) #6
  %17 = load ptr, ptr %arrayidx48, align 8
  %arrayidx59 = getelementptr inbounds i8, ptr %h, i64 21408
  %18 = load ptr, ptr %arrayidx59, align 16
  tail call void %17(ptr noundef %18) #6
  br label %if.end60

if.end60:                                         ; preds = %if.then22, %if.else47, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @x264_predict_lossless_4x4(ptr nocapture noundef readonly %h, ptr noundef %p_dst, i32 noundef %idx, i32 noundef %i_mode) local_unnamed_addr #0 {
entry:
  %fenc = getelementptr inbounds i8, ptr %h, i64 14680
  %0 = load ptr, ptr %fenc, align 8
  %i_stride = getelementptr inbounds i8, ptr %0, i64 104
  %1 = load i32, ptr %i_stride, align 8
  %b_interlaced = getelementptr inbounds i8, ptr %h, i64 16436
  %2 = load i32, ptr %b_interlaced, align 4
  %shl = shl i32 %1, %2
  %p_fenc_plane = getelementptr inbounds i8, ptr %h, i64 21368
  %3 = load ptr, ptr %p_fenc_plane, align 8
  %idxprom = sext i32 %idx to i64
  %arrayidx3 = getelementptr inbounds [16 x i8], ptr @block_idx_x, i64 0, i64 %idxprom
  %4 = load i8, ptr %arrayidx3, align 1
  %conv = zext i8 %4 to i64
  %mul = shl nuw nsw i64 %conv, 2
  %add.ptr = getelementptr inbounds i8, ptr %3, i64 %mul
  %arrayidx5 = getelementptr inbounds [16 x i8], ptr @block_idx_y, i64 0, i64 %idxprom
  %5 = load i8, ptr %arrayidx5, align 1
  %conv6 = zext i8 %5 to i32
  %mul7 = shl i32 %shl, 2
  %mul8 = mul i32 %mul7, %conv6
  %idx.ext9 = sext i32 %mul8 to i64
  %add.ptr10 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.ext9
  switch i32 %i_mode, label %if.else22 [
    i32 0, label %if.then
    i32 1, label %if.then17
  ]

if.then:                                          ; preds = %entry
  %arrayidx12 = getelementptr inbounds i8, ptr %h, i64 32768
  %6 = load ptr, ptr %arrayidx12, align 8
  %idx.ext13 = sext i32 %shl to i64
  %idx.neg = sub nsw i64 0, %idx.ext13
  %add.ptr14 = getelementptr inbounds i8, ptr %add.ptr10, i64 %idx.neg
  tail call void %6(ptr noundef %p_dst, i32 noundef 32, ptr noundef %add.ptr14, i32 noundef %shl, i32 noundef 4) #6
  br label %if.end25

if.then17:                                        ; preds = %entry
  %arrayidx20 = getelementptr inbounds i8, ptr %h, i64 32768
  %7 = load ptr, ptr %arrayidx20, align 8
  %add.ptr21 = getelementptr inbounds i8, ptr %add.ptr10, i64 -1
  tail call void %7(ptr noundef %p_dst, i32 noundef 32, ptr noundef nonnull %add.ptr21, i32 noundef %shl, i32 noundef 4) #6
  br label %if.end25

if.else22:                                        ; preds = %entry
  %predict_4x4 = getelementptr inbounds i8, ptr %h, i64 31456
  %idxprom23 = sext i32 %i_mode to i64
  %arrayidx24 = getelementptr inbounds [12 x ptr], ptr %predict_4x4, i64 0, i64 %idxprom23
  %8 = load ptr, ptr %arrayidx24, align 8
  tail call void %8(ptr noundef %p_dst) #6
  br label %if.end25

if.end25:                                         ; preds = %if.then17, %if.else22, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @x264_predict_lossless_8x8(ptr nocapture noundef readonly %h, ptr noundef %p_dst, i32 noundef %idx, i32 noundef %i_mode, ptr noundef %edge) local_unnamed_addr #0 {
entry:
  %fenc = getelementptr inbounds i8, ptr %h, i64 14680
  %0 = load ptr, ptr %fenc, align 8
  %i_stride = getelementptr inbounds i8, ptr %0, i64 104
  %1 = load i32, ptr %i_stride, align 8
  %b_interlaced = getelementptr inbounds i8, ptr %h, i64 16436
  %2 = load i32, ptr %b_interlaced, align 4
  %shl = shl i32 %1, %2
  %p_fenc_plane = getelementptr inbounds i8, ptr %h, i64 21368
  %3 = load ptr, ptr %p_fenc_plane, align 8
  %and = shl i32 %idx, 3
  %mul = and i32 %and, 8
  %idx.ext = zext nneg i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, ptr %3, i64 %idx.ext
  %4 = shl nsw i32 %idx, 2
  %mul3 = and i32 %4, -8
  %mul4 = mul nsw i32 %shl, %mul3
  %idx.ext5 = sext i32 %mul4 to i64
  %add.ptr6 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.ext5
  switch i32 %i_mode, label %if.else16 [
    i32 0, label %if.then
    i32 1, label %if.then11
  ]

if.then:                                          ; preds = %entry
  %arrayidx7 = getelementptr inbounds i8, ptr %h, i64 32744
  %5 = load ptr, ptr %arrayidx7, align 8
  %idx.ext8 = sext i32 %shl to i64
  %idx.neg = sub nsw i64 0, %idx.ext8
  %add.ptr9 = getelementptr inbounds i8, ptr %add.ptr6, i64 %idx.neg
  tail call void %5(ptr noundef %p_dst, i32 noundef 32, ptr noundef %add.ptr9, i32 noundef %shl, i32 noundef 8) #6
  br label %if.end18

if.then11:                                        ; preds = %entry
  %arrayidx14 = getelementptr inbounds i8, ptr %h, i64 32744
  %6 = load ptr, ptr %arrayidx14, align 8
  %add.ptr15 = getelementptr inbounds i8, ptr %add.ptr6, i64 -1
  tail call void %6(ptr noundef %p_dst, i32 noundef 32, ptr noundef nonnull %add.ptr15, i32 noundef %shl, i32 noundef 8) #6
  br label %if.end18

if.else16:                                        ; preds = %entry
  %predict_8x8 = getelementptr inbounds i8, ptr %h, i64 31360
  %idxprom = sext i32 %i_mode to i64
  %arrayidx17 = getelementptr inbounds [12 x ptr], ptr %predict_8x8, i64 0, i64 %idxprom
  %7 = load ptr, ptr %arrayidx17, align 8
  tail call void %7(ptr noundef %p_dst, ptr noundef %edge) #6
  br label %if.end18

if.end18:                                         ; preds = %if.then11, %if.else16, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @x264_predict_lossless_16x16(ptr nocapture noundef readonly %h, i32 noundef %i_mode) local_unnamed_addr #0 {
entry:
  %fenc = getelementptr inbounds i8, ptr %h, i64 14680
  %0 = load ptr, ptr %fenc, align 8
  %i_stride = getelementptr inbounds i8, ptr %0, i64 104
  %1 = load i32, ptr %i_stride, align 8
  %b_interlaced = getelementptr inbounds i8, ptr %h, i64 16436
  %2 = load i32, ptr %b_interlaced, align 4
  %shl = shl i32 %1, %2
  switch i32 %i_mode, label %if.else19 [
    i32 0, label %if.then
    i32 1, label %if.then8
  ]

if.then:                                          ; preds = %entry
  %copy = getelementptr inbounds i8, ptr %h, i64 32720
  %3 = load ptr, ptr %copy, align 8
  %p_fdec = getelementptr inbounds i8, ptr %h, i64 21392
  %4 = load ptr, ptr %p_fdec, align 16
  %p_fenc_plane = getelementptr inbounds i8, ptr %h, i64 21368
  %5 = load ptr, ptr %p_fenc_plane, align 8
  %idx.ext = sext i32 %shl to i64
  %idx.neg = sub nsw i64 0, %idx.ext
  %add.ptr = getelementptr inbounds i8, ptr %5, i64 %idx.neg
  tail call void %3(ptr noundef %4, i32 noundef 32, ptr noundef %add.ptr, i32 noundef %shl, i32 noundef 16) #6
  br label %if.end25

if.then8:                                         ; preds = %entry
  %copy_16x16_unaligned = getelementptr inbounds i8, ptr %h, i64 32776
  %6 = load ptr, ptr %copy_16x16_unaligned, align 8
  %p_fdec12 = getelementptr inbounds i8, ptr %h, i64 21392
  %7 = load ptr, ptr %p_fdec12, align 16
  %p_fenc_plane16 = getelementptr inbounds i8, ptr %h, i64 21368
  %8 = load ptr, ptr %p_fenc_plane16, align 8
  %add.ptr18 = getelementptr inbounds i8, ptr %8, i64 -1
  tail call void %6(ptr noundef %7, i32 noundef 32, ptr noundef nonnull %add.ptr18, i32 noundef %shl, i32 noundef 16) #6
  br label %if.end25

if.else19:                                        ; preds = %entry
  %predict_16x16 = getelementptr inbounds i8, ptr %h, i64 31248
  %idxprom = sext i32 %i_mode to i64
  %arrayidx20 = getelementptr inbounds [7 x ptr], ptr %predict_16x16, i64 0, i64 %idxprom
  %9 = load ptr, ptr %arrayidx20, align 8
  %p_fdec23 = getelementptr inbounds i8, ptr %h, i64 21392
  %10 = load ptr, ptr %p_fdec23, align 16
  tail call void %9(ptr noundef %10) #6
  br label %if.end25

if.end25:                                         ; preds = %if.then8, %if.else19, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @x264_macroblock_encode(ptr noundef %h) local_unnamed_addr #0 {
entry:
  %dct4x4.i = alloca [16 x [16 x i16]], align 16
  %dct_dc4x4.i = alloca [16 x i16], align 16
  %edge = alloca [33 x i8], align 16
  %dct8x8 = alloca [4 x [64 x i16]], align 16
  %dct4x4 = alloca [16 x [16 x i16]], align 16
  %i_qp1 = getelementptr inbounds i8, ptr %h, i64 25792
  %0 = load i32, ptr %i_qp1, align 16
  %b_dct_decimate = getelementptr inbounds i8, ptr %h, i64 16424
  %1 = load i32, ptr %b_dct_decimate, align 8
  %i_cbp_luma = getelementptr inbounds i8, ptr %h, i64 17400
  store i32 0, ptr %i_cbp_luma, align 8
  %cache = getelementptr inbounds i8, ptr %h, i64 25024
  %non_zero_count = getelementptr inbounds i8, ptr %h, i64 25072
  %arrayidx = getelementptr inbounds i8, ptr %h, i64 25116
  store i8 0, ptr %arrayidx, align 1
  %i_type = getelementptr inbounds i8, ptr %h, i64 17384
  %2 = load i32, ptr %i_type, align 8
  %cmp = icmp eq i32 %2, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %copy = getelementptr inbounds i8, ptr %h, i64 32720
  %3 = load ptr, ptr %copy, align 8
  %p_fdec = getelementptr inbounds i8, ptr %h, i64 21392
  %4 = load ptr, ptr %p_fdec, align 16
  %p_fenc = getelementptr inbounds i8, ptr %h, i64 21344
  %5 = load ptr, ptr %p_fenc, align 16
  tail call void %3(ptr noundef %4, i32 noundef 32, ptr noundef %5, i32 noundef 16, i32 noundef 16) #6
  %arrayidx14 = getelementptr inbounds i8, ptr %h, i64 32744
  %6 = load ptr, ptr %arrayidx14, align 8
  %arrayidx18 = getelementptr inbounds i8, ptr %h, i64 21400
  %7 = load ptr, ptr %arrayidx18, align 8
  %arrayidx22 = getelementptr inbounds i8, ptr %h, i64 21352
  %8 = load ptr, ptr %arrayidx22, align 8
  tail call void %6(ptr noundef %7, i32 noundef 32, ptr noundef %8, i32 noundef 16, i32 noundef 8) #6
  %9 = load ptr, ptr %arrayidx14, align 8
  %arrayidx29 = getelementptr inbounds i8, ptr %h, i64 21408
  %10 = load ptr, ptr %arrayidx29, align 16
  %arrayidx33 = getelementptr inbounds i8, ptr %h, i64 21360
  %11 = load ptr, ptr %arrayidx33, align 16
  tail call void %9(ptr noundef %10, i32 noundef 32, ptr noundef %11, i32 noundef 16, i32 noundef 8) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %b_mbaff = getelementptr inbounds i8, ptr %h, i64 7268
  %12 = load i32, ptr %b_mbaff, align 4
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %if.end83, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %i_mb_xy = getelementptr inbounds i8, ptr %h, i64 16392
  %13 = load i32, ptr %i_mb_xy, align 8
  %i_first_mb = getelementptr inbounds i8, ptr %h, i64 7252
  %14 = load i32, ptr %i_first_mb, align 4
  %i_mb_stride = getelementptr inbounds i8, ptr %h, i64 16372
  %15 = load i32, ptr %i_mb_stride, align 4
  %add = add nsw i32 %15, %14
  %cmp37 = icmp eq i32 %13, %add
  br i1 %cmp37, label %land.lhs.true38, label %if.end83

land.lhs.true38:                                  ; preds = %land.lhs.true
  %type = getelementptr inbounds i8, ptr %h, i64 16616
  %16 = load ptr, ptr %type, align 8
  %idxprom42 = sext i32 %14 to i64
  %arrayidx43 = getelementptr inbounds i8, ptr %16, i64 %idxprom42
  %17 = load i8, ptr %arrayidx43, align 1
  switch i8 %17, label %if.end83 [
    i8 6, label %if.then55
    i8 18, label %if.then55
  ]

if.then55:                                        ; preds = %land.lhs.true38, %land.lhs.true38
  switch i32 %2, label %if.end83 [
    i32 6, label %if.else356.sink.split
    i32 18, label %if.then77
  ]

if.then77:                                        ; preds = %if.then55
  br label %if.else356.sink.split

if.end83:                                         ; preds = %if.then55, %land.lhs.true38, %land.lhs.true, %if.end
  %tobool984.not.ph = phi i1 [ false, %if.then55 ], [ true, %land.lhs.true38 ], [ true, %if.end ], [ true, %land.lhs.true ]
  switch i32 %2, label %if.else356 [
    i32 6, label %if.then88
    i32 18, label %if.then94
    i32 2, label %if.then104
    i32 1, label %if.then123
    i32 0, label %if.then234
  ]

if.then88:                                        ; preds = %if.end83
  %b_skip_mc.i = getelementptr inbounds i8, ptr %h, i64 17420
  %18 = load i32, ptr %b_skip_mc.i, align 4
  %tobool.not.i = icmp eq i32 %18, 0
  br i1 %tobool.not.i, label %if.then.i, label %x264_macroblock_encode_pskip.exit

if.then.i:                                        ; preds = %if.then88
  %arrayidx2.i = getelementptr inbounds i8, ptr %h, i64 25248
  %mv_min.i = getelementptr inbounds i8, ptr %h, i64 16440
  %mv_max.i = getelementptr inbounds i8, ptr %h, i64 16448
  %19 = load <2 x i16>, ptr %arrayidx2.i, align 4
  %20 = load <2 x i32>, ptr %mv_min.i, align 8
  %21 = load <2 x i32>, ptr %mv_max.i, align 16
  %22 = sext <2 x i16> %19 to <2 x i32>
  %23 = icmp sgt <2 x i32> %20, %22
  %24 = sext <2 x i16> %19 to <2 x i32>
  %25 = tail call <2 x i32> @llvm.smin.v2i32(<2 x i32> %24, <2 x i32> %21)
  %26 = select <2 x i1> %23, <2 x i32> %20, <2 x i32> %25
  %mc.i = getelementptr inbounds i8, ptr %h, i64 32616
  %27 = load ptr, ptr %mc.i, align 8
  %p_fdec.i = getelementptr inbounds i8, ptr %h, i64 21392
  %28 = load ptr, ptr %p_fdec.i, align 16
  %p_fref.i = getelementptr inbounds i8, ptr %h, i64 21424
  %i_stride.i = getelementptr inbounds i8, ptr %h, i64 25008
  %29 = load i32, ptr %i_stride.i, align 16
  %weight.i = getelementptr inbounds i8, ptr %h, i64 7584
  %30 = extractelement <2 x i32> %26, i64 0
  %31 = extractelement <2 x i32> %26, i64 1
  tail call void %27(ptr noundef %28, i32 noundef 32, ptr noundef nonnull %p_fref.i, i32 noundef %29, i32 noundef %30, i32 noundef %31, i32 noundef 16, i32 noundef 16, ptr noundef nonnull %weight.i) #6
  %or.i = or i32 %31, %30
  %tobool34.not.i = icmp eq i32 %or.i, 0
  %arrayidx72.i = getelementptr inbounds i8, ptr %h, i64 21400
  %32 = load ptr, ptr %arrayidx72.i, align 8
  %arrayidx78.i = getelementptr inbounds i8, ptr %h, i64 21456
  %33 = load ptr, ptr %arrayidx78.i, align 16
  %arrayidx82.i = getelementptr inbounds i8, ptr %h, i64 25012
  %34 = load i32, ptr %arrayidx82.i, align 4
  %arrayidx89.i = getelementptr inbounds i8, ptr %h, i64 21408
  %arrayidx95.i = getelementptr inbounds i8, ptr %h, i64 21464
  %arrayidx99.i = getelementptr inbounds i8, ptr %h, i64 25016
  br i1 %tobool34.not.i, label %if.else.i, label %if.then35.i

if.then35.i:                                      ; preds = %if.then.i
  %mc_chroma.i = getelementptr inbounds i8, ptr %h, i64 32632
  %35 = load ptr, ptr %mc_chroma.i, align 8
  tail call void %35(ptr noundef %32, i32 noundef 32, ptr noundef %33, i32 noundef %34, i32 noundef %30, i32 noundef %31, i32 noundef 8, i32 noundef 8) #6
  %36 = load ptr, ptr %mc_chroma.i, align 8
  %37 = load ptr, ptr %arrayidx89.i, align 16
  %38 = load ptr, ptr %arrayidx95.i, align 8
  %39 = load i32, ptr %arrayidx99.i, align 8
  tail call void %36(ptr noundef %37, i32 noundef 32, ptr noundef %38, i32 noundef %39, i32 noundef %30, i32 noundef %31, i32 noundef 8, i32 noundef 8) #6
  br label %if.end.i

if.else.i:                                        ; preds = %if.then.i
  %arrayidx68.i = getelementptr inbounds i8, ptr %h, i64 32744
  %40 = load ptr, ptr %arrayidx68.i, align 8
  tail call void %40(ptr noundef %32, i32 noundef 32, ptr noundef %33, i32 noundef %34, i32 noundef 8) #6
  %41 = load ptr, ptr %arrayidx68.i, align 8
  %42 = load ptr, ptr %arrayidx89.i, align 16
  %43 = load ptr, ptr %arrayidx95.i, align 8
  %44 = load i32, ptr %arrayidx99.i, align 8
  tail call void %41(ptr noundef %42, i32 noundef 32, ptr noundef %43, i32 noundef %44, i32 noundef 8) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then35.i
  %weightfn.i = getelementptr inbounds i8, ptr %h, i64 7696
  %45 = load ptr, ptr %weightfn.i, align 16
  %tobool104.not.i = icmp eq ptr %45, null
  br i1 %tobool104.not.i, label %if.end124.i, label %if.then105.i

if.then105.i:                                     ; preds = %if.end.i
  %arrayidx103.i = getelementptr inbounds i8, ptr %h, i64 7648
  %arrayidx111.i = getelementptr inbounds i8, ptr %45, i64 16
  %46 = load ptr, ptr %arrayidx111.i, align 8
  %47 = load ptr, ptr %arrayidx72.i, align 8
  tail call void %46(ptr noundef %47, i32 noundef 32, ptr noundef %47, i32 noundef 32, ptr noundef nonnull %arrayidx103.i, i32 noundef 8) #6
  br label %if.end124.i

if.end124.i:                                      ; preds = %if.then105.i, %if.end.i
  %weightfn129.i = getelementptr inbounds i8, ptr %h, i64 7760
  %48 = load ptr, ptr %weightfn129.i, align 16
  %tobool130.not.i = icmp eq ptr %48, null
  br i1 %tobool130.not.i, label %x264_macroblock_encode_pskip.exit, label %if.then131.i

if.then131.i:                                     ; preds = %if.end124.i
  %arrayidx128.i = getelementptr inbounds i8, ptr %h, i64 7712
  %arrayidx137.i = getelementptr inbounds i8, ptr %48, i64 16
  %49 = load ptr, ptr %arrayidx137.i, align 8
  %50 = load ptr, ptr %arrayidx89.i, align 16
  tail call void %49(ptr noundef %50, i32 noundef 32, ptr noundef %50, i32 noundef 32, ptr noundef nonnull %arrayidx128.i, i32 noundef 8) #6
  br label %x264_macroblock_encode_pskip.exit

x264_macroblock_encode_pskip.exit:                ; preds = %if.then88, %if.end124.i, %if.then131.i
  %arrayidx.i.i = getelementptr inbounds i8, ptr %h, i64 25084
  store i32 0, ptr %arrayidx.i.i, align 1
  %arrayidx6.i.i = getelementptr inbounds i8, ptr %h, i64 25092
  store i32 0, ptr %arrayidx6.i.i, align 1
  %arrayidx12.i.i = getelementptr inbounds i8, ptr %h, i64 25100
  store i32 0, ptr %arrayidx12.i.i, align 1
  %arrayidx18.i.i = getelementptr inbounds i8, ptr %h, i64 25108
  store i32 0, ptr %arrayidx18.i.i, align 1
  %arrayidx25.i.i = getelementptr inbounds i8, ptr %h, i64 25081
  store i8 0, ptr %arrayidx25.i.i, align 1
  %arrayidx25.1.i.i = getelementptr inbounds i8, ptr %h, i64 25082
  store i8 0, ptr %arrayidx25.1.i.i, align 1
  %arrayidx25.2.i.i = getelementptr inbounds i8, ptr %h, i64 25089
  store i8 0, ptr %arrayidx25.2.i.i, align 1
  %arrayidx25.3.i.i = getelementptr inbounds i8, ptr %h, i64 25090
  store i8 0, ptr %arrayidx25.3.i.i, align 1
  %arrayidx25.4.i.i = getelementptr inbounds i8, ptr %h, i64 25105
  store i8 0, ptr %arrayidx25.4.i.i, align 1
  %arrayidx25.5.i.i = getelementptr inbounds i8, ptr %h, i64 25106
  store i8 0, ptr %arrayidx25.5.i.i, align 1
  %arrayidx25.6.i.i = getelementptr inbounds i8, ptr %h, i64 25113
  store i8 0, ptr %arrayidx25.6.i.i, align 1
  %arrayidx25.7.i.i = getelementptr inbounds i8, ptr %h, i64 25114
  store i8 0, ptr %arrayidx25.7.i.i, align 1
  store i32 0, ptr %i_cbp_luma, align 8
  %i_cbp_chroma.i.i = getelementptr inbounds i8, ptr %h, i64 17404
  store i32 0, ptr %i_cbp_chroma.i.i, align 4
  %cbp.i.i = getelementptr inbounds i8, ptr %h, i64 16640
  %51 = load ptr, ptr %cbp.i.i, align 16
  %i_mb_xy.i.i = getelementptr inbounds i8, ptr %h, i64 16392
  %52 = load i32, ptr %i_mb_xy.i.i, align 8
  %idxprom30.i.i = sext i32 %52 to i64
  %arrayidx31.i.i = getelementptr inbounds i16, ptr %51, i64 %idxprom30.i.i
  store i16 0, ptr %arrayidx31.i.i, align 2
  br label %cleanup

if.then94:                                        ; preds = %if.end83
  %b_skip_mc = getelementptr inbounds i8, ptr %h, i64 17420
  %53 = load i32, ptr %b_skip_mc, align 4
  %tobool96.not = icmp eq i32 %53, 0
  br i1 %tobool96.not, label %if.then97, label %if.end98

if.then97:                                        ; preds = %if.then94
  tail call void @x264_mb_mc(ptr noundef nonnull %h) #6
  br label %if.end98

if.end98:                                         ; preds = %if.then97, %if.then94
  %arrayidx.i = getelementptr inbounds i8, ptr %h, i64 25084
  store i32 0, ptr %arrayidx.i, align 1
  %arrayidx6.i = getelementptr inbounds i8, ptr %h, i64 25092
  store i32 0, ptr %arrayidx6.i, align 1
  %arrayidx12.i = getelementptr inbounds i8, ptr %h, i64 25100
  store i32 0, ptr %arrayidx12.i, align 1
  %arrayidx18.i1373 = getelementptr inbounds i8, ptr %h, i64 25108
  store i32 0, ptr %arrayidx18.i1373, align 1
  %arrayidx25.i = getelementptr inbounds i8, ptr %h, i64 25081
  store i8 0, ptr %arrayidx25.i, align 1
  %arrayidx25.1.i = getelementptr inbounds i8, ptr %h, i64 25082
  store i8 0, ptr %arrayidx25.1.i, align 1
  %arrayidx25.2.i = getelementptr inbounds i8, ptr %h, i64 25089
  store i8 0, ptr %arrayidx25.2.i, align 1
  %arrayidx25.3.i = getelementptr inbounds i8, ptr %h, i64 25090
  store i8 0, ptr %arrayidx25.3.i, align 1
  %arrayidx25.4.i = getelementptr inbounds i8, ptr %h, i64 25105
  store i8 0, ptr %arrayidx25.4.i, align 1
  %arrayidx25.5.i = getelementptr inbounds i8, ptr %h, i64 25106
  store i8 0, ptr %arrayidx25.5.i, align 1
  %arrayidx25.6.i = getelementptr inbounds i8, ptr %h, i64 25113
  store i8 0, ptr %arrayidx25.6.i, align 1
  %arrayidx25.7.i = getelementptr inbounds i8, ptr %h, i64 25114
  store i8 0, ptr %arrayidx25.7.i, align 1
  store i32 0, ptr %i_cbp_luma, align 8
  %i_cbp_chroma.i = getelementptr inbounds i8, ptr %h, i64 17404
  store i32 0, ptr %i_cbp_chroma.i, align 4
  %cbp.i = getelementptr inbounds i8, ptr %h, i64 16640
  %54 = load ptr, ptr %cbp.i, align 16
  %i_mb_xy.i = getelementptr inbounds i8, ptr %h, i64 16392
  %55 = load i32, ptr %i_mb_xy.i, align 8
  %idxprom30.i = sext i32 %55 to i64
  %arrayidx31.i = getelementptr inbounds i16, ptr %54, i64 %idxprom30.i
  store i16 0, ptr %arrayidx31.i, align 2
  br label %cleanup

if.then104:                                       ; preds = %if.end83
  %i_intra16x16_pred_mode = getelementptr inbounds i8, ptr %h, i64 17408
  %56 = load i32, ptr %i_intra16x16_pred_mode, align 16
  %b_transform_8x8 = getelementptr inbounds i8, ptr %h, i64 17396
  store i32 0, ptr %b_transform_8x8, align 4
  %b_lossless = getelementptr inbounds i8, ptr %h, i64 25812
  %57 = load i32, ptr %b_lossless, align 4
  %tobool108.not = icmp eq i32 %57, 0
  br i1 %tobool108.not, label %if.else110, label %if.then109

if.then109:                                       ; preds = %if.then104
  %fenc.i = getelementptr inbounds i8, ptr %h, i64 14680
  %58 = load ptr, ptr %fenc.i, align 8
  %i_stride.i1374 = getelementptr inbounds i8, ptr %58, i64 104
  %59 = load i32, ptr %i_stride.i1374, align 8
  %b_interlaced.i = getelementptr inbounds i8, ptr %h, i64 16436
  %60 = load i32, ptr %b_interlaced.i, align 4
  %shl.i = shl i32 %59, %60
  switch i32 %56, label %if.else19.i [
    i32 0, label %if.then.i1375
    i32 1, label %if.then8.i
  ]

if.then.i1375:                                    ; preds = %if.then109
  %copy.i = getelementptr inbounds i8, ptr %h, i64 32720
  %61 = load ptr, ptr %copy.i, align 8
  %p_fdec.i1376 = getelementptr inbounds i8, ptr %h, i64 21392
  %62 = load ptr, ptr %p_fdec.i1376, align 16
  %p_fenc_plane.i = getelementptr inbounds i8, ptr %h, i64 21368
  %63 = load ptr, ptr %p_fenc_plane.i, align 8
  %idx.ext.i = sext i32 %shl.i to i64
  %idx.neg.i = sub nsw i64 0, %idx.ext.i
  %add.ptr.i = getelementptr inbounds i8, ptr %63, i64 %idx.neg.i
  tail call void %61(ptr noundef %62, i32 noundef 32, ptr noundef %add.ptr.i, i32 noundef %shl.i, i32 noundef 16) #6
  br label %if.end117

if.then8.i:                                       ; preds = %if.then109
  %copy_16x16_unaligned.i = getelementptr inbounds i8, ptr %h, i64 32776
  %64 = load ptr, ptr %copy_16x16_unaligned.i, align 8
  %p_fdec12.i = getelementptr inbounds i8, ptr %h, i64 21392
  %65 = load ptr, ptr %p_fdec12.i, align 16
  %p_fenc_plane16.i = getelementptr inbounds i8, ptr %h, i64 21368
  %66 = load ptr, ptr %p_fenc_plane16.i, align 8
  %add.ptr18.i = getelementptr inbounds i8, ptr %66, i64 -1
  tail call void %64(ptr noundef %65, i32 noundef 32, ptr noundef nonnull %add.ptr18.i, i32 noundef %shl.i, i32 noundef 16) #6
  br label %if.end117

if.else19.i:                                      ; preds = %if.then109
  %predict_16x16.i = getelementptr inbounds i8, ptr %h, i64 31248
  %idxprom.i = sext i32 %56 to i64
  %arrayidx20.i = getelementptr inbounds [7 x ptr], ptr %predict_16x16.i, i64 0, i64 %idxprom.i
  %67 = load ptr, ptr %arrayidx20.i, align 8
  %p_fdec23.i = getelementptr inbounds i8, ptr %h, i64 21392
  %68 = load ptr, ptr %p_fdec23.i, align 16
  tail call void %67(ptr noundef %68) #6
  br label %if.end117

if.else110:                                       ; preds = %if.then104
  %predict_16x16 = getelementptr inbounds i8, ptr %h, i64 31248
  %idxprom111 = sext i32 %56 to i64
  %arrayidx112 = getelementptr inbounds [7 x ptr], ptr %predict_16x16, i64 0, i64 %idxprom111
  %69 = load ptr, ptr %arrayidx112, align 8
  %p_fdec115 = getelementptr inbounds i8, ptr %h, i64 21392
  %70 = load ptr, ptr %p_fdec115, align 16
  tail call void %69(ptr noundef %70) #6
  br label %if.end117

if.end117:                                        ; preds = %if.else19.i, %if.then8.i, %if.then.i1375, %if.else110
  %p_fenc.i = getelementptr inbounds i8, ptr %h, i64 21344
  %71 = load ptr, ptr %p_fenc.i, align 16
  %p_fdec.i1377 = getelementptr inbounds i8, ptr %h, i64 21392
  %72 = load ptr, ptr %p_fdec.i1377, align 16
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %dct4x4.i) #6
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %dct_dc4x4.i) #6
  %73 = load i32, ptr %b_lossless, align 4
  %tobool6.not.i = icmp eq i32 %73, 0
  br i1 %tobool6.not.i, label %if.end.i1384, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.end117
  %sub_4x4ac.i = getelementptr inbounds i8, ptr %h, i64 33064
  %luma4x4.i = getelementptr inbounds i8, ptr %h, i64 15600
  br label %for.body.i

for.cond.cleanup.i:                               ; preds = %for.body.i
  %mul.i = mul nsw i32 %or.i1383, 15
  store i32 %mul.i, ptr %i_cbp_luma, align 8
  %74 = load <4 x i64>, ptr %dct_dc4x4.i, align 16
  %75 = call i64 @llvm.vector.reduce.or.v4i64(<4 x i64> %74)
  %tobool21.i.i = icmp ne i64 %75, 0
  %conv30.i = zext i1 %tobool21.i.i to i8
  store i8 %conv30.i, ptr %arrayidx, align 1
  %scan_4x4.i = getelementptr inbounds i8, ptr %h, i64 33040
  %76 = load ptr, ptr %scan_4x4.i, align 8
  %dct37.i = getelementptr inbounds i8, ptr %h, i64 15040
  call void %76(ptr noundef nonnull %dct37.i, ptr noundef nonnull %dct_dc4x4.i) #6
  br label %x264_mb_encode_i16x16.exit

for.body.i:                                       ; preds = %for.body.i, %for.cond.preheader.i
  %indvars.iv.i = phi i64 [ 0, %for.cond.preheader.i ], [ %indvars.iv.next.i, %for.body.i ]
  %arrayidx7.i = getelementptr inbounds [16 x i8], ptr @block_idx_xy_fenc, i64 0, i64 %indvars.iv.i
  %77 = load i8, ptr %arrayidx7.i, align 1
  %arrayidx9.i = getelementptr inbounds [16 x i16], ptr @block_idx_xy_fdec, i64 0, i64 %indvars.iv.i
  %78 = load i16, ptr %arrayidx9.i, align 2
  %79 = load ptr, ptr %sub_4x4ac.i, align 8
  %arrayidx12.i1379 = getelementptr inbounds [24 x [16 x i16]], ptr %luma4x4.i, i64 0, i64 %indvars.iv.i
  %idx.ext.i1380 = zext i8 %77 to i64
  %add.ptr.i1381 = getelementptr inbounds i8, ptr %71, i64 %idx.ext.i1380
  %idx.ext13.i = zext i16 %78 to i64
  %add.ptr14.i = getelementptr inbounds i8, ptr %72, i64 %idx.ext13.i
  %arrayidx16.i = getelementptr inbounds [16 x i8], ptr @block_idx_yx_1d, i64 0, i64 %indvars.iv.i
  %80 = load i8, ptr %arrayidx16.i, align 1
  %idxprom17.i = zext i8 %80 to i64
  %arrayidx18.i1382 = getelementptr inbounds [16 x i16], ptr %dct_dc4x4.i, i64 0, i64 %idxprom17.i
  %call.i = call i32 %79(ptr noundef nonnull %arrayidx12.i1379, ptr noundef %add.ptr.i1381, ptr noundef %add.ptr14.i, ptr noundef nonnull %arrayidx18.i1382) #6
  %conv19.i = trunc i32 %call.i to i8
  %arrayidx22.i = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %indvars.iv.i
  %81 = load i32, ptr %arrayidx22.i, align 4
  %idxprom23.i = sext i32 %81 to i64
  %arrayidx24.i = getelementptr inbounds [48 x i8], ptr %non_zero_count, i64 0, i64 %idxprom23.i
  store i8 %conv19.i, ptr %arrayidx24.i, align 1
  %82 = load i32, ptr %i_cbp_luma, align 8
  %or.i1383 = or i32 %82, %call.i
  store i32 %or.i1383, ptr %i_cbp_luma, align 8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 16
  br i1 %exitcond.not.i, label %for.cond.cleanup.i, label %for.body.i

if.end.i1384:                                     ; preds = %if.end117
  %83 = load i32, ptr %b_dct_decimate, align 8
  %tobool.not.i1385 = icmp eq i32 %83, 0
  %cond.i = select i1 %tobool.not.i1385, i32 9, i32 0
  %sub16x16_dct.i = getelementptr inbounds i8, ptr %h, i64 32960
  %84 = load ptr, ptr %sub16x16_dct.i, align 16
  call void %84(ptr noundef nonnull %dct4x4.i, ptr noundef %71, ptr noundef %72) #6
  %b_trellis.i.i = getelementptr inbounds i8, ptr %h, i64 16416
  %quant_4x4.i.i = getelementptr inbounds i8, ptr %h, i64 33088
  %quant4_mf.i.i = getelementptr inbounds i8, ptr %h, i64 3440
  %idxprom2.i.i = sext i32 %0 to i64
  %quant4_bias.i.i = getelementptr inbounds i8, ptr %h, i64 3488
  %scan_4x472.i = getelementptr inbounds i8, ptr %h, i64 33040
  %luma4x474.i = getelementptr inbounds i8, ptr %h, i64 15600
  %dequant_4x4.i = getelementptr inbounds i8, ptr %h, i64 33120
  %dequant4_mf.i = getelementptr inbounds i8, ptr %h, i64 3344
  %decimate_score15.i = getelementptr inbounds i8, ptr %h, i64 33144
  br label %for.body46.i

for.cond.cleanup45.i:                             ; preds = %for.inc99.i
  %cmp102.i = icmp slt i32 %decimate_score.2.i, 6
  br i1 %cmp102.i, label %if.then104.i, label %if.end127.i

for.body46.i:                                     ; preds = %for.inc99.i, %if.end.i1384
  %indvars.iv299.i = phi i64 [ 0, %if.end.i1384 ], [ %indvars.iv.next300.i, %for.inc99.i ]
  %decimate_score.0295.i = phi i32 [ %cond.i, %if.end.i1384 ], [ %decimate_score.2.i, %for.inc99.i ]
  %arrayidx48.i = getelementptr inbounds [16 x [16 x i16]], ptr %dct4x4.i, i64 0, i64 %indvars.iv299.i
  %85 = load i16, ptr %arrayidx48.i, align 16
  %arrayidx51.i = getelementptr inbounds [16 x i8], ptr @block_idx_xy_1d, i64 0, i64 %indvars.iv299.i
  %86 = load i8, ptr %arrayidx51.i, align 1
  %idxprom52.i = zext i8 %86 to i64
  %arrayidx53.i = getelementptr inbounds [16 x i16], ptr %dct_dc4x4.i, i64 0, i64 %idxprom52.i
  store i16 %85, ptr %arrayidx53.i, align 2
  store i16 0, ptr %arrayidx48.i, align 16
  %87 = load i32, ptr %b_trellis.i.i, align 16
  %tobool1.not.i.i = icmp eq i32 %87, 0
  br i1 %tobool1.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %for.body46.i
  %88 = trunc nuw nsw i64 %indvars.iv299.i to i32
  %call.i.i = call i32 @x264_quant_4x4_trellis(ptr noundef nonnull %h, ptr noundef nonnull %arrayidx48.i, i32 noundef 0, i32 noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef %88) #6
  br label %x264_quant_4x4.exit.i

if.else.i.i:                                      ; preds = %for.body46.i
  %89 = load ptr, ptr %quant_4x4.i.i, align 8
  %90 = load ptr, ptr %quant4_mf.i.i, align 8
  %arrayidx3.i.i = getelementptr inbounds [16 x i16], ptr %90, i64 %idxprom2.i.i
  %91 = load ptr, ptr %quant4_bias.i.i, align 8
  %arrayidx7.i.i = getelementptr inbounds [16 x i16], ptr %91, i64 %idxprom2.i.i
  %call9.i.i = call i32 %89(ptr noundef nonnull %arrayidx48.i, ptr noundef %arrayidx3.i.i, ptr noundef %arrayidx7.i.i) #6
  br label %x264_quant_4x4.exit.i

x264_quant_4x4.exit.i:                            ; preds = %if.else.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %call.i.i, %if.then.i.i ], [ %call9.i.i, %if.else.i.i ]
  %conv61.i = trunc i32 %retval.0.i.i to i8
  %arrayidx66.i = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %indvars.iv299.i
  %92 = load i32, ptr %arrayidx66.i, align 4
  %idxprom67.i = sext i32 %92 to i64
  %arrayidx68.i1386 = getelementptr inbounds [48 x i8], ptr %non_zero_count, i64 0, i64 %idxprom67.i
  store i8 %conv61.i, ptr %arrayidx68.i1386, align 1
  %tobool69.not.i = icmp eq i32 %retval.0.i.i, 0
  br i1 %tobool69.not.i, label %for.inc99.i, label %if.then70.i

if.then70.i:                                      ; preds = %x264_quant_4x4.exit.i
  %93 = load ptr, ptr %scan_4x472.i, align 8
  %arrayidx76.i = getelementptr inbounds [24 x [16 x i16]], ptr %luma4x474.i, i64 0, i64 %indvars.iv299.i
  call void %93(ptr noundef nonnull %arrayidx76.i, ptr noundef nonnull %arrayidx48.i) #6
  %94 = load ptr, ptr %dequant_4x4.i, align 8
  %95 = load ptr, ptr %dequant4_mf.i, align 16
  call void %94(ptr noundef nonnull %arrayidx48.i, ptr noundef %95, i32 noundef %0) #6
  %cmp85.i = icmp slt i32 %decimate_score.0295.i, 6
  br i1 %cmp85.i, label %if.then87.i, label %if.end95.i

if.then87.i:                                      ; preds = %if.then70.i
  %96 = load ptr, ptr %decimate_score15.i, align 8
  %call94.i = call i32 %96(ptr noundef nonnull %arrayidx76.i) #6
  %add.i = add nsw i32 %call94.i, %decimate_score.0295.i
  br label %if.end95.i

if.end95.i:                                       ; preds = %if.then87.i, %if.then70.i
  %decimate_score.1.i = phi i32 [ %add.i, %if.then87.i ], [ %decimate_score.0295.i, %if.then70.i ]
  store i32 15, ptr %i_cbp_luma, align 8
  br label %for.inc99.i

for.inc99.i:                                      ; preds = %if.end95.i, %x264_quant_4x4.exit.i
  %decimate_score.2.i = phi i32 [ %decimate_score.1.i, %if.end95.i ], [ %decimate_score.0295.i, %x264_quant_4x4.exit.i ]
  %indvars.iv.next300.i = add nuw nsw i64 %indvars.iv299.i, 1
  %exitcond302.not.i = icmp eq i64 %indvars.iv.next300.i, 16
  br i1 %exitcond302.not.i, label %for.cond.cleanup45.i, label %for.body46.i

if.then104.i:                                     ; preds = %for.cond.cleanup45.i
  store i32 0, ptr %i_cbp_luma, align 8
  %arrayidx111.i1389 = getelementptr inbounds i8, ptr %h, i64 25084
  store i32 0, ptr %arrayidx111.i1389, align 1
  %arrayidx116.i = getelementptr inbounds i8, ptr %h, i64 25092
  store i32 0, ptr %arrayidx116.i, align 1
  %arrayidx121.i = getelementptr inbounds i8, ptr %h, i64 25100
  store i32 0, ptr %arrayidx121.i, align 1
  %arrayidx126.i = getelementptr inbounds i8, ptr %h, i64 25108
  store i32 0, ptr %arrayidx126.i, align 1
  br label %if.end127.i

if.end127.i:                                      ; preds = %if.then104.i, %for.cond.cleanup45.i
  %dct4x4dc.i = getelementptr inbounds i8, ptr %h, i64 33016
  %97 = load ptr, ptr %dct4x4dc.i, align 8
  call void %97(ptr noundef nonnull %dct_dc4x4.i) #6
  %98 = load i32, ptr %b_trellis.i.i, align 16
  %tobool131.not.i = icmp eq i32 %98, 0
  br i1 %tobool131.not.i, label %if.else.i1387, label %if.then132.i

if.then132.i:                                     ; preds = %if.end127.i
  %call134.i = call i32 @x264_quant_dc_trellis(ptr noundef nonnull %h, ptr noundef nonnull %dct_dc4x4.i, i32 noundef 0, i32 noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0) #6
  br label %if.end148.i

if.else.i1387:                                    ; preds = %if.end127.i
  %quant_4x4_dc.i = getelementptr inbounds i8, ptr %h, i64 33096
  %99 = load ptr, ptr %quant_4x4_dc.i, align 8
  %100 = load ptr, ptr %quant4_mf.i.i, align 16
  %arrayidx139.i = getelementptr inbounds [16 x i16], ptr %100, i64 %idxprom2.i.i
  %101 = load i16, ptr %arrayidx139.i, align 2
  %102 = lshr i16 %101, 1
  %shr.i = zext nneg i16 %102 to i32
  %103 = load ptr, ptr %quant4_bias.i.i, align 16
  %arrayidx144.i = getelementptr inbounds [16 x i16], ptr %103, i64 %idxprom2.i.i
  %104 = load i16, ptr %arrayidx144.i, align 2
  %conv146.i = zext i16 %104 to i32
  %shl.i1388 = shl nuw nsw i32 %conv146.i, 1
  %call147.i = call i32 %99(ptr noundef nonnull %dct_dc4x4.i, i32 noundef %shr.i, i32 noundef %shl.i1388) #6
  br label %if.end148.i

if.end148.i:                                      ; preds = %if.else.i1387, %if.then132.i
  %nz.0.i = phi i32 [ %call134.i, %if.then132.i ], [ %call147.i, %if.else.i1387 ]
  %conv149.i = trunc i32 %nz.0.i to i8
  store i8 %conv149.i, ptr %arrayidx, align 1
  %tobool155.not.i = icmp eq i32 %nz.0.i, 0
  br i1 %tobool155.not.i, label %if.end190.thread290.i, label %if.then156.i

if.then156.i:                                     ; preds = %if.end148.i
  %105 = load ptr, ptr %scan_4x472.i, align 8
  %dct159.i = getelementptr inbounds i8, ptr %h, i64 15040
  call void %105(ptr noundef nonnull %dct159.i, ptr noundef nonnull %dct_dc4x4.i) #6
  %idct4x4dc.i = getelementptr inbounds i8, ptr %h, i64 33024
  %106 = load ptr, ptr %idct4x4dc.i, align 16
  call void %106(ptr noundef nonnull %dct_dc4x4.i) #6
  %dequant_4x4_dc.i = getelementptr inbounds i8, ptr %h, i64 33128
  %107 = load ptr, ptr %dequant_4x4_dc.i, align 8
  %108 = load ptr, ptr %dequant4_mf.i, align 16
  call void %107(ptr noundef nonnull %dct_dc4x4.i, ptr noundef %108, i32 noundef %0) #6
  %109 = load i32, ptr %i_cbp_luma, align 8
  %tobool171.not.i = icmp eq i32 %109, 0
  br i1 %tobool171.not.i, label %if.then199.i, label %for.body178.preheader.i

for.body178.preheader.i:                          ; preds = %if.then156.i
  %110 = load i16, ptr %dct_dc4x4.i, align 16
  store i16 %110, ptr %dct4x4.i, align 16
  %arrayidx182.1.i = getelementptr inbounds i8, ptr %dct_dc4x4.i, i64 2
  %111 = load i16, ptr %arrayidx182.1.i, align 2
  %arrayidx184.1.i = getelementptr inbounds i8, ptr %dct4x4.i, i64 32
  store i16 %111, ptr %arrayidx184.1.i, align 16
  %arrayidx182.2.i = getelementptr inbounds i8, ptr %dct_dc4x4.i, i64 8
  %112 = load i16, ptr %arrayidx182.2.i, align 8
  %arrayidx184.2.i = getelementptr inbounds i8, ptr %dct4x4.i, i64 64
  store i16 %112, ptr %arrayidx184.2.i, align 16
  %arrayidx182.3.i = getelementptr inbounds i8, ptr %dct_dc4x4.i, i64 10
  %113 = load i16, ptr %arrayidx182.3.i, align 2
  %arrayidx184.3.i = getelementptr inbounds i8, ptr %dct4x4.i, i64 96
  store i16 %113, ptr %arrayidx184.3.i, align 16
  %arrayidx182.4.i = getelementptr inbounds i8, ptr %dct_dc4x4.i, i64 4
  %114 = load i16, ptr %arrayidx182.4.i, align 4
  %arrayidx184.4.i = getelementptr inbounds i8, ptr %dct4x4.i, i64 128
  store i16 %114, ptr %arrayidx184.4.i, align 16
  %arrayidx182.5.i = getelementptr inbounds i8, ptr %dct_dc4x4.i, i64 6
  %115 = load i16, ptr %arrayidx182.5.i, align 2
  %arrayidx184.5.i = getelementptr inbounds i8, ptr %dct4x4.i, i64 160
  store i16 %115, ptr %arrayidx184.5.i, align 16
  %arrayidx182.6.i = getelementptr inbounds i8, ptr %dct_dc4x4.i, i64 12
  %116 = load i16, ptr %arrayidx182.6.i, align 4
  %arrayidx184.6.i = getelementptr inbounds i8, ptr %dct4x4.i, i64 192
  store i16 %116, ptr %arrayidx184.6.i, align 16
  %arrayidx182.7.i = getelementptr inbounds i8, ptr %dct_dc4x4.i, i64 14
  %117 = load i16, ptr %arrayidx182.7.i, align 2
  %arrayidx184.7.i = getelementptr inbounds i8, ptr %dct4x4.i, i64 224
  store i16 %117, ptr %arrayidx184.7.i, align 16
  %arrayidx182.8.i = getelementptr inbounds i8, ptr %dct_dc4x4.i, i64 16
  %118 = load i16, ptr %arrayidx182.8.i, align 16
  %arrayidx184.8.i = getelementptr inbounds i8, ptr %dct4x4.i, i64 256
  store i16 %118, ptr %arrayidx184.8.i, align 16
  %arrayidx182.9.i = getelementptr inbounds i8, ptr %dct_dc4x4.i, i64 18
  %119 = load i16, ptr %arrayidx182.9.i, align 2
  %arrayidx184.9.i = getelementptr inbounds i8, ptr %dct4x4.i, i64 288
  store i16 %119, ptr %arrayidx184.9.i, align 16
  %arrayidx182.10.i = getelementptr inbounds i8, ptr %dct_dc4x4.i, i64 24
  %120 = load i16, ptr %arrayidx182.10.i, align 8
  %arrayidx184.10.i = getelementptr inbounds i8, ptr %dct4x4.i, i64 320
  store i16 %120, ptr %arrayidx184.10.i, align 16
  %arrayidx182.11.i = getelementptr inbounds i8, ptr %dct_dc4x4.i, i64 26
  %121 = load i16, ptr %arrayidx182.11.i, align 2
  %arrayidx184.11.i = getelementptr inbounds i8, ptr %dct4x4.i, i64 352
  store i16 %121, ptr %arrayidx184.11.i, align 16
  %arrayidx182.12.i = getelementptr inbounds i8, ptr %dct_dc4x4.i, i64 20
  %122 = load i16, ptr %arrayidx182.12.i, align 4
  %arrayidx184.12.i = getelementptr inbounds i8, ptr %dct4x4.i, i64 384
  store i16 %122, ptr %arrayidx184.12.i, align 16
  %arrayidx182.13.i = getelementptr inbounds i8, ptr %dct_dc4x4.i, i64 22
  %123 = load i16, ptr %arrayidx182.13.i, align 2
  %arrayidx184.13.i = getelementptr inbounds i8, ptr %dct4x4.i, i64 416
  store i16 %123, ptr %arrayidx184.13.i, align 16
  %arrayidx182.14.i = getelementptr inbounds i8, ptr %dct_dc4x4.i, i64 28
  %124 = load i16, ptr %arrayidx182.14.i, align 4
  %arrayidx184.14.i = getelementptr inbounds i8, ptr %dct4x4.i, i64 448
  store i16 %124, ptr %arrayidx184.14.i, align 16
  %arrayidx182.15.i = getelementptr inbounds i8, ptr %dct_dc4x4.i, i64 30
  %125 = load i16, ptr %arrayidx182.15.i, align 2
  %arrayidx184.15.i = getelementptr inbounds i8, ptr %dct4x4.i, i64 480
  store i16 %125, ptr %arrayidx184.15.i, align 16
  br label %if.then194.i

if.end190.thread290.i:                            ; preds = %if.end148.i
  %126 = load i32, ptr %i_cbp_luma, align 8
  %tobool193.not292.i = icmp eq i32 %126, 0
  br i1 %tobool193.not292.i, label %x264_mb_encode_i16x16.exit, label %if.then194.i

if.then194.i:                                     ; preds = %if.end190.thread290.i, %for.body178.preheader.i
  %add16x16_idct.i = getelementptr inbounds i8, ptr %h, i64 32968
  %127 = load ptr, ptr %add16x16_idct.i, align 8
  call void %127(ptr noundef %72, ptr noundef nonnull %dct4x4.i) #6
  br label %x264_mb_encode_i16x16.exit

if.then199.i:                                     ; preds = %if.then156.i
  %add16x16_idct_dc.i = getelementptr inbounds i8, ptr %h, i64 32976
  %128 = load ptr, ptr %add16x16_idct_dc.i, align 16
  call void %128(ptr noundef %72, ptr noundef nonnull %dct_dc4x4.i) #6
  br label %x264_mb_encode_i16x16.exit

x264_mb_encode_i16x16.exit:                       ; preds = %for.cond.cleanup.i, %if.end190.thread290.i, %if.then194.i, %if.then199.i
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %dct_dc4x4.i) #6
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %dct4x4.i) #6
  br label %if.end880

if.then123:                                       ; preds = %if.end83
  call void @llvm.lifetime.start.p0(i64 33, ptr nonnull %edge) #6
  %b_transform_8x8125 = getelementptr inbounds i8, ptr %h, i64 17396
  store i32 1, ptr %b_transform_8x8125, align 4
  %i_skip_intra = getelementptr inbounds i8, ptr %h, i64 17416
  %129 = load i32, ptr %i_skip_intra, align 8
  %tobool127.not = icmp eq i32 %129, 0
  br i1 %tobool127.not, label %if.end188.thread, label %if.then128

if.then128:                                       ; preds = %if.then123
  %copy130 = getelementptr inbounds i8, ptr %h, i64 32720
  %130 = load ptr, ptr %copy130, align 8
  %p_fdec134 = getelementptr inbounds i8, ptr %h, i64 21392
  %131 = load ptr, ptr %p_fdec134, align 16
  %i8x8_fdec_buf = getelementptr inbounds i8, ptr %h, i64 18944
  tail call void %130(ptr noundef %131, i32 noundef 32, ptr noundef nonnull %i8x8_fdec_buf, i32 noundef 16, i32 noundef 16) #6
  %i8x8_nnz_buf = getelementptr inbounds i8, ptr %h, i64 20080
  %132 = load i32, ptr %i8x8_nnz_buf, align 16
  %arrayidx145 = getelementptr inbounds i8, ptr %h, i64 25084
  store i32 %132, ptr %arrayidx145, align 1
  %arrayidx149 = getelementptr inbounds i8, ptr %h, i64 20084
  %133 = load i32, ptr %arrayidx149, align 4
  %arrayidx154 = getelementptr inbounds i8, ptr %h, i64 25092
  store i32 %133, ptr %arrayidx154, align 1
  %arrayidx158 = getelementptr inbounds i8, ptr %h, i64 20088
  %134 = load i32, ptr %arrayidx158, align 8
  %arrayidx163 = getelementptr inbounds i8, ptr %h, i64 25100
  store i32 %134, ptr %arrayidx163, align 1
  %arrayidx167 = getelementptr inbounds i8, ptr %h, i64 20092
  %135 = load i32, ptr %arrayidx167, align 4
  %arrayidx172 = getelementptr inbounds i8, ptr %h, i64 25108
  store i32 %135, ptr %arrayidx172, align 1
  %i8x8_cbp = getelementptr inbounds i8, ptr %h, i64 20100
  %136 = load i32, ptr %i8x8_cbp, align 4
  store i32 %136, ptr %i_cbp_luma, align 8
  %137 = load i32, ptr %i_skip_intra, align 8
  %cmp179 = icmp eq i32 %137, 2
  br i1 %cmp179, label %if.then181, label %if.end188

if.then181:                                       ; preds = %if.then128
  %memcpy_aligned = getelementptr inbounds i8, ptr %h, i64 32816
  %138 = load ptr, ptr %memcpy_aligned, align 8
  %luma8x8 = getelementptr inbounds i8, ptr %h, i64 15088
  %i8x8_dct_buf = getelementptr inbounds i8, ptr %h, i64 19200
  %call = tail call ptr %138(ptr noundef nonnull %luma8x8, ptr noundef nonnull %i8x8_dct_buf, i64 noundef 384) #6
  %.pre1532 = load i32, ptr %i_skip_intra, align 8
  br label %if.end188

if.end188:                                        ; preds = %if.then128, %if.then181
  %139 = phi i32 [ %137, %if.then128 ], [ %.pre1532, %if.then181 ]
  %.fr1572 = freeze i32 %139
  %tobool191.not = icmp eq i32 %.fr1572, 0
  br i1 %tobool191.not, label %if.end188.thread, label %140

if.end188.thread:                                 ; preds = %if.then123, %if.end188
  br label %140

140:                                              ; preds = %if.end188, %if.end188.thread
  %141 = phi i64 [ 0, %if.end188.thread ], [ 3, %if.end188 ]
  %p_fdec196 = getelementptr inbounds i8, ptr %h, i64 21392
  %predict_8x8_filter = getelementptr inbounds i8, ptr %h, i64 31552
  %i_neighbour8 = getelementptr inbounds i8, ptr %h, i64 16492
  %b_lossless220 = getelementptr inbounds i8, ptr %h, i64 25812
  %fenc.i1390 = getelementptr inbounds i8, ptr %h, i64 14680
  %b_interlaced.i1392 = getelementptr inbounds i8, ptr %h, i64 16436
  %p_fenc_plane.i1394 = getelementptr inbounds i8, ptr %h, i64 21368
  %arrayidx14.i1398 = getelementptr inbounds i8, ptr %h, i64 32744
  %predict_8x8.i = getelementptr inbounds i8, ptr %h, i64 31360
  br label %for.body

for.cond.cleanup:                                 ; preds = %if.end228
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %edge) #6
  br label %if.end880

for.body:                                         ; preds = %140, %if.end228
  %indvars.iv1476 = phi i64 [ %141, %140 ], [ %indvars.iv.next1477, %if.end228 ]
  %142 = load ptr, ptr %p_fdec196, align 16
  %indvars.iv1476.tr = trunc i64 %indvars.iv1476 to i32
  %143 = shl i32 %indvars.iv1476.tr, 3
  %mul = and i32 %143, 8
  %indvars.iv1476.tr1539 = trunc i64 %indvars.iv1476 to i32
  %144 = shl i32 %indvars.iv1476.tr1539, 7
  %mul198 = and i32 %144, 256
  %add200 = or disjoint i32 %mul, %mul198
  %idxprom201 = zext nneg i32 %add200 to i64
  %arrayidx202 = getelementptr inbounds i8, ptr %142, i64 %idxprom201
  %145 = shl nuw nsw i64 %indvars.iv1476, 2
  %arrayidx208 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %145
  %146 = load i32, ptr %arrayidx208, align 16
  %idxprom209 = sext i32 %146 to i64
  %arrayidx210 = getelementptr inbounds [40 x i8], ptr %cache, i64 0, i64 %idxprom209
  %147 = load i8, ptr %arrayidx210, align 1
  %148 = load ptr, ptr %predict_8x8_filter, align 16
  %arrayidx215 = getelementptr inbounds [4 x i32], ptr %i_neighbour8, i64 0, i64 %indvars.iv1476
  %149 = load i32, ptr %arrayidx215, align 4
  %idxprom216 = sext i8 %147 to i64
  %arrayidx217 = getelementptr inbounds [12 x i8], ptr @x264_pred_i4x4_neighbors, i64 0, i64 %idxprom216
  %150 = load i8, ptr %arrayidx217, align 1
  %conv218 = zext i8 %150 to i32
  call void %148(ptr noundef %arrayidx202, ptr noundef nonnull %edge, i32 noundef %149, i32 noundef %conv218) #6
  %151 = load i32, ptr %b_lossless220, align 4
  %tobool221.not = icmp eq i32 %151, 0
  br i1 %tobool221.not, label %if.else224, label %if.then222

if.then222:                                       ; preds = %for.body
  %152 = load ptr, ptr %fenc.i1390, align 8
  %i_stride.i1391 = getelementptr inbounds i8, ptr %152, i64 104
  %153 = load i32, ptr %i_stride.i1391, align 8
  %154 = load i32, ptr %b_interlaced.i1392, align 4
  %shl.i1393 = shl i32 %153, %154
  %155 = load ptr, ptr %p_fenc_plane.i1394, align 8
  %idx.ext.i1396 = zext nneg i32 %mul to i64
  %add.ptr.i1397 = getelementptr inbounds i8, ptr %155, i64 %idx.ext.i1396
  %156 = trunc nuw nsw i64 %145 to i32
  %mul3.i = and i32 %156, 8
  %mul4.i = mul nsw i32 %shl.i1393, %mul3.i
  %idx.ext5.i = sext i32 %mul4.i to i64
  %add.ptr6.i = getelementptr inbounds i8, ptr %add.ptr.i1397, i64 %idx.ext5.i
  switch i8 %147, label %if.else16.i [
    i8 0, label %if.then.i1399
    i8 1, label %if.then11.i
  ]

if.then.i1399:                                    ; preds = %if.then222
  %157 = load ptr, ptr %arrayidx14.i1398, align 8
  %idx.ext8.i = sext i32 %shl.i1393 to i64
  %idx.neg.i1401 = sub nsw i64 0, %idx.ext8.i
  %add.ptr9.i = getelementptr inbounds i8, ptr %add.ptr6.i, i64 %idx.neg.i1401
  call void %157(ptr noundef %arrayidx202, i32 noundef 32, ptr noundef %add.ptr9.i, i32 noundef %shl.i1393, i32 noundef 8) #6
  br label %if.end228

if.then11.i:                                      ; preds = %if.then222
  %158 = load ptr, ptr %arrayidx14.i1398, align 8
  %add.ptr15.i = getelementptr inbounds i8, ptr %add.ptr6.i, i64 -1
  call void %158(ptr noundef %arrayidx202, i32 noundef 32, ptr noundef nonnull %add.ptr15.i, i32 noundef %shl.i1393, i32 noundef 8) #6
  br label %if.end228

if.else16.i:                                      ; preds = %if.then222
  %arrayidx17.i = getelementptr inbounds [12 x ptr], ptr %predict_8x8.i, i64 0, i64 %idxprom216
  %159 = load ptr, ptr %arrayidx17.i, align 8
  call void %159(ptr noundef %arrayidx202, ptr noundef nonnull %edge) #6
  br label %if.end228

if.else224:                                       ; preds = %for.body
  %arrayidx226 = getelementptr inbounds [12 x ptr], ptr %predict_8x8.i, i64 0, i64 %idxprom216
  %160 = load ptr, ptr %arrayidx226, align 8
  call void %160(ptr noundef %arrayidx202, ptr noundef nonnull %edge) #6
  br label %if.end228

if.end228:                                        ; preds = %if.else16.i, %if.then11.i, %if.then.i1399, %if.else224
  %161 = trunc nuw nsw i64 %indvars.iv1476 to i32
  call void @x264_mb_encode_i8x8(ptr noundef nonnull %h, i32 noundef %161, i32 noundef %0)
  %indvars.iv.next1477 = add nuw nsw i64 %indvars.iv1476, 1
  %exitcond1481.not = icmp eq i64 %indvars.iv.next1477, 4
  br i1 %exitcond1481.not, label %for.cond.cleanup, label %for.body

if.then234:                                       ; preds = %if.end83
  %b_transform_8x8236 = getelementptr inbounds i8, ptr %h, i64 17396
  store i32 0, ptr %b_transform_8x8236, align 4
  %i_skip_intra238 = getelementptr inbounds i8, ptr %h, i64 17416
  %162 = load i32, ptr %i_skip_intra238, align 8
  %tobool239.not = icmp eq i32 %162, 0
  br i1 %tobool239.not, label %if.end304.thread, label %if.then240

if.then240:                                       ; preds = %if.then234
  %copy242 = getelementptr inbounds i8, ptr %h, i64 32720
  %163 = load ptr, ptr %copy242, align 8
  %p_fdec246 = getelementptr inbounds i8, ptr %h, i64 21392
  %164 = load ptr, ptr %p_fdec246, align 16
  %i4x4_fdec_buf = getelementptr inbounds i8, ptr %h, i64 18688
  tail call void %163(ptr noundef %164, i32 noundef 32, ptr noundef nonnull %i4x4_fdec_buf, i32 noundef 16, i32 noundef 16) #6
  %i4x4_nnz_buf = getelementptr inbounds i8, ptr %h, i64 20064
  %165 = load i32, ptr %i4x4_nnz_buf, align 16
  %arrayidx258 = getelementptr inbounds i8, ptr %h, i64 25084
  store i32 %165, ptr %arrayidx258, align 1
  %arrayidx262 = getelementptr inbounds i8, ptr %h, i64 20068
  %166 = load i32, ptr %arrayidx262, align 4
  %arrayidx267 = getelementptr inbounds i8, ptr %h, i64 25092
  store i32 %166, ptr %arrayidx267, align 1
  %arrayidx271 = getelementptr inbounds i8, ptr %h, i64 20072
  %167 = load i32, ptr %arrayidx271, align 8
  %arrayidx276 = getelementptr inbounds i8, ptr %h, i64 25100
  store i32 %167, ptr %arrayidx276, align 1
  %arrayidx280 = getelementptr inbounds i8, ptr %h, i64 20076
  %168 = load i32, ptr %arrayidx280, align 4
  %arrayidx285 = getelementptr inbounds i8, ptr %h, i64 25108
  store i32 %168, ptr %arrayidx285, align 1
  %i4x4_cbp = getelementptr inbounds i8, ptr %h, i64 20096
  %169 = load i32, ptr %i4x4_cbp, align 16
  store i32 %169, ptr %i_cbp_luma, align 8
  %170 = load i32, ptr %i_skip_intra238, align 8
  %cmp292 = icmp eq i32 %170, 2
  br i1 %cmp292, label %if.then294, label %if.end304

if.then294:                                       ; preds = %if.then240
  %memcpy_aligned296 = getelementptr inbounds i8, ptr %h, i64 32816
  %171 = load ptr, ptr %memcpy_aligned296, align 8
  %luma4x4 = getelementptr inbounds i8, ptr %h, i64 15600
  %i4x4_dct_buf = getelementptr inbounds i8, ptr %h, i64 19584
  %call302 = tail call ptr %171(ptr noundef nonnull %luma4x4, ptr noundef nonnull %i4x4_dct_buf, i64 noundef 480) #6
  %.pre = load i32, ptr %i_skip_intra238, align 8
  br label %if.end304

if.end304:                                        ; preds = %if.then240, %if.then294
  %172 = phi i32 [ %170, %if.then240 ], [ %.pre, %if.then294 ]
  %.fr = freeze i32 %172
  %tobool308.not = icmp eq i32 %.fr, 0
  br i1 %tobool308.not, label %if.end304.thread, label %173

if.end304.thread:                                 ; preds = %if.then234, %if.end304
  br label %173

173:                                              ; preds = %if.end304, %if.end304.thread
  %174 = phi i64 [ 0, %if.end304.thread ], [ 15, %if.end304 ]
  %p_fdec318 = getelementptr inbounds i8, ptr %h, i64 21392
  %i_neighbour4 = getelementptr inbounds i8, ptr %h, i64 16508
  %b_lossless346 = getelementptr inbounds i8, ptr %h, i64 25812
  %fenc.i1403 = getelementptr inbounds i8, ptr %h, i64 14680
  %b_interlaced.i1405 = getelementptr inbounds i8, ptr %h, i64 16436
  %p_fenc_plane.i1407 = getelementptr inbounds i8, ptr %h, i64 21368
  %arrayidx20.i1412 = getelementptr inbounds i8, ptr %h, i64 32768
  %predict_4x4.i = getelementptr inbounds i8, ptr %h, i64 31456
  br label %for.body314

for.body314:                                      ; preds = %173, %if.end352
  %indvars.iv = phi i64 [ %174, %173 ], [ %indvars.iv.next, %if.end352 ]
  %175 = load ptr, ptr %p_fdec318, align 16
  %arrayidx321 = getelementptr inbounds [16 x i16], ptr @block_idx_xy_fdec, i64 0, i64 %indvars.iv
  %176 = load i16, ptr %arrayidx321, align 2
  %idxprom322 = zext i16 %176 to i64
  %arrayidx323 = getelementptr inbounds i8, ptr %175, i64 %idxprom322
  %arrayidx329 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %indvars.iv
  %177 = load i32, ptr %arrayidx329, align 4
  %idxprom330 = sext i32 %177 to i64
  %arrayidx331 = getelementptr inbounds [40 x i8], ptr %cache, i64 0, i64 %idxprom330
  %178 = load i8, ptr %arrayidx331, align 1
  %arrayidx335 = getelementptr inbounds [16 x i32], ptr %i_neighbour4, i64 0, i64 %indvars.iv
  %179 = load i32, ptr %arrayidx335, align 4
  %and336 = and i32 %179, 6
  %cmp337 = icmp eq i32 %and336, 2
  br i1 %cmp337, label %if.then339, label %if.end344

if.then339:                                       ; preds = %for.body314
  %arrayidx340 = getelementptr inbounds i8, ptr %arrayidx323, i64 -29
  %180 = load i8, ptr %arrayidx340, align 1
  %conv341 = zext i8 %180 to i32
  %mul342 = mul nuw i32 %conv341, 16843009
  %arrayidx343 = getelementptr inbounds i8, ptr %arrayidx323, i64 -28
  store i32 %mul342, ptr %arrayidx343, align 4
  br label %if.end344

if.end344:                                        ; preds = %if.then339, %for.body314
  %181 = load i32, ptr %b_lossless346, align 4
  %tobool347.not = icmp eq i32 %181, 0
  br i1 %tobool347.not, label %if.else349, label %if.then348

if.then348:                                       ; preds = %if.end344
  %182 = load ptr, ptr %fenc.i1403, align 8
  %i_stride.i1404 = getelementptr inbounds i8, ptr %182, i64 104
  %183 = load i32, ptr %i_stride.i1404, align 8
  %184 = load i32, ptr %b_interlaced.i1405, align 4
  %shl.i1406 = shl i32 %183, %184
  %185 = load ptr, ptr %p_fenc_plane.i1407, align 8
  %arrayidx3.i = getelementptr inbounds [16 x i8], ptr @block_idx_x, i64 0, i64 %indvars.iv
  %186 = load i8, ptr %arrayidx3.i, align 1
  %conv.i1409 = zext i8 %186 to i64
  %mul.i1410 = shl nuw nsw i64 %conv.i1409, 2
  %add.ptr.i1411 = getelementptr inbounds i8, ptr %185, i64 %mul.i1410
  %arrayidx5.i = getelementptr inbounds [16 x i8], ptr @block_idx_y, i64 0, i64 %indvars.iv
  %187 = load i8, ptr %arrayidx5.i, align 1
  %conv6.i = zext i8 %187 to i32
  %mul7.i = shl i32 %shl.i1406, 2
  %mul8.i = mul i32 %mul7.i, %conv6.i
  %idx.ext9.i = sext i32 %mul8.i to i64
  %add.ptr10.i = getelementptr inbounds i8, ptr %add.ptr.i1411, i64 %idx.ext9.i
  switch i8 %178, label %if.else22.i [
    i8 0, label %if.then.i1413
    i8 1, label %if.then17.i
  ]

if.then.i1413:                                    ; preds = %if.then348
  %188 = load ptr, ptr %arrayidx20.i1412, align 8
  %idx.ext13.i1415 = sext i32 %shl.i1406 to i64
  %idx.neg.i1416 = sub nsw i64 0, %idx.ext13.i1415
  %add.ptr14.i1417 = getelementptr inbounds i8, ptr %add.ptr10.i, i64 %idx.neg.i1416
  tail call void %188(ptr noundef %arrayidx323, i32 noundef 32, ptr noundef %add.ptr14.i1417, i32 noundef %shl.i1406, i32 noundef 4) #6
  br label %if.end352

if.then17.i:                                      ; preds = %if.then348
  %189 = load ptr, ptr %arrayidx20.i1412, align 8
  %add.ptr21.i = getelementptr inbounds i8, ptr %add.ptr10.i, i64 -1
  tail call void %189(ptr noundef %arrayidx323, i32 noundef 32, ptr noundef nonnull %add.ptr21.i, i32 noundef %shl.i1406, i32 noundef 4) #6
  br label %if.end352

if.else22.i:                                      ; preds = %if.then348
  %idxprom23.i1418 = sext i8 %178 to i64
  %arrayidx24.i1419 = getelementptr inbounds [12 x ptr], ptr %predict_4x4.i, i64 0, i64 %idxprom23.i1418
  %190 = load ptr, ptr %arrayidx24.i1419, align 8
  tail call void %190(ptr noundef %arrayidx323) #6
  br label %if.end352

if.else349:                                       ; preds = %if.end344
  %idxprom350 = sext i8 %178 to i64
  %arrayidx351 = getelementptr inbounds [12 x ptr], ptr %predict_4x4.i, i64 0, i64 %idxprom350
  %191 = load ptr, ptr %arrayidx351, align 8
  tail call void %191(ptr noundef %arrayidx323) #6
  br label %if.end352

if.end352:                                        ; preds = %if.else22.i, %if.then17.i, %if.then.i1413, %if.else349
  %192 = trunc nuw nsw i64 %indvars.iv to i32
  tail call void @x264_mb_encode_i4x4(ptr noundef nonnull %h, i32 noundef %192, i32 noundef %0)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %if.end880, label %for.body314

if.else356.sink.split:                            ; preds = %if.then55, %if.then77
  %.sink = phi i32 [ 7, %if.then77 ], [ 4, %if.then55 ]
  store i32 %.sink, ptr %i_type, align 8
  br label %if.else356

if.else356:                                       ; preds = %if.else356.sink.split, %if.end83
  %tobool984.not1455 = phi i1 [ %tobool984.not.ph, %if.end83 ], [ false, %if.else356.sink.split ]
  %b_skip_mc358 = getelementptr inbounds i8, ptr %h, i64 17420
  %193 = load i32, ptr %b_skip_mc358, align 4
  %tobool359.not = icmp eq i32 %193, 0
  br i1 %tobool359.not, label %if.then360, label %if.end361

if.then360:                                       ; preds = %if.else356
  tail call void @x264_mb_mc(ptr noundef nonnull %h) #6
  br label %if.end361

if.end361:                                        ; preds = %if.then360, %if.else356
  %b_lossless363 = getelementptr inbounds i8, ptr %h, i64 25812
  %194 = load i32, ptr %b_lossless363, align 4
  %tobool364.not = icmp eq i32 %194, 0
  %b_transform_8x8478 = getelementptr inbounds i8, ptr %h, i64 17396
  %195 = load i32, ptr %b_transform_8x8478, align 4
  %tobool479.not = icmp eq i32 %195, 0
  br i1 %tobool364.not, label %if.else476, label %if.then365

if.then365:                                       ; preds = %if.end361
  %p_fenc442 = getelementptr inbounds i8, ptr %h, i64 21344
  %p_fdec451 = getelementptr inbounds i8, ptr %h, i64 21392
  br i1 %tobool479.not, label %for.cond429.preheader, label %for.cond370.preheader

for.cond370.preheader:                            ; preds = %if.then365
  %sub_8x8 = getelementptr inbounds i8, ptr %h, i64 33048
  %luma8x8380 = getelementptr inbounds i8, ptr %h, i64 15088
  %196 = load ptr, ptr %sub_8x8, align 8
  %197 = load ptr, ptr %p_fenc442, align 16
  %198 = load ptr, ptr %p_fdec451, align 16
  %call400 = tail call i32 %196(ptr noundef nonnull %luma8x8380, ptr noundef %197, ptr noundef %198) #6
  %199 = trunc i32 %call400 to i16
  %conv402 = mul i16 %199, 257
  %arrayidx411 = getelementptr inbounds i8, ptr %h, i64 25084
  store i16 %conv402, ptr %arrayidx411, align 1
  %arrayidx422 = getelementptr inbounds i8, ptr %h, i64 25092
  store i16 %conv402, ptr %arrayidx422, align 1
  %200 = load i32, ptr %i_cbp_luma, align 8
  %or = or i32 %200, %call400
  store i32 %or, ptr %i_cbp_luma, align 8
  %201 = load ptr, ptr %sub_8x8, align 8
  %arrayidx382.1 = getelementptr inbounds i8, ptr %h, i64 15216
  %202 = load ptr, ptr %p_fenc442, align 16
  %add.ptr.1 = getelementptr inbounds i8, ptr %202, i64 8
  %203 = load ptr, ptr %p_fdec451, align 16
  %add.ptr396.1 = getelementptr inbounds i8, ptr %203, i64 8
  %call400.1 = tail call i32 %201(ptr noundef nonnull %arrayidx382.1, ptr noundef nonnull %add.ptr.1, ptr noundef nonnull %add.ptr396.1) #6
  %204 = trunc i32 %call400.1 to i16
  %conv402.1 = mul i16 %204, 257
  %arrayidx411.1 = getelementptr inbounds i8, ptr %h, i64 25086
  store i16 %conv402.1, ptr %arrayidx411.1, align 1
  %arrayidx422.1 = getelementptr inbounds i8, ptr %h, i64 25094
  store i16 %conv402.1, ptr %arrayidx422.1, align 1
  %shl.1 = shl i32 %call400.1, 1
  %205 = load i32, ptr %i_cbp_luma, align 8
  %or.1 = or i32 %205, %shl.1
  store i32 %or.1, ptr %i_cbp_luma, align 8
  %206 = load ptr, ptr %sub_8x8, align 8
  %arrayidx382.2 = getelementptr inbounds i8, ptr %h, i64 15344
  %207 = load ptr, ptr %p_fenc442, align 16
  %add.ptr390.2 = getelementptr inbounds i8, ptr %207, i64 128
  %208 = load ptr, ptr %p_fdec451, align 16
  %add.ptr399.2 = getelementptr inbounds i8, ptr %208, i64 256
  %call400.2 = tail call i32 %206(ptr noundef nonnull %arrayidx382.2, ptr noundef nonnull %add.ptr390.2, ptr noundef nonnull %add.ptr399.2) #6
  %209 = trunc i32 %call400.2 to i16
  %conv402.2 = mul i16 %209, 257
  %arrayidx411.2 = getelementptr inbounds i8, ptr %h, i64 25100
  store i16 %conv402.2, ptr %arrayidx411.2, align 1
  %arrayidx422.2 = getelementptr inbounds i8, ptr %h, i64 25108
  store i16 %conv402.2, ptr %arrayidx422.2, align 1
  %shl.2 = shl i32 %call400.2, 2
  %210 = load i32, ptr %i_cbp_luma, align 8
  %or.2 = or i32 %210, %shl.2
  store i32 %or.2, ptr %i_cbp_luma, align 8
  %211 = load ptr, ptr %sub_8x8, align 8
  %arrayidx382.3 = getelementptr inbounds i8, ptr %h, i64 15472
  %212 = load ptr, ptr %p_fenc442, align 16
  %add.ptr390.3 = getelementptr inbounds i8, ptr %212, i64 136
  %213 = load ptr, ptr %p_fdec451, align 16
  %add.ptr399.3 = getelementptr inbounds i8, ptr %213, i64 264
  %call400.3 = tail call i32 %211(ptr noundef nonnull %arrayidx382.3, ptr noundef nonnull %add.ptr390.3, ptr noundef nonnull %add.ptr399.3) #6
  %214 = trunc i32 %call400.3 to i16
  %conv402.3 = mul i16 %214, 257
  %arrayidx411.3 = getelementptr inbounds i8, ptr %h, i64 25102
  store i16 %conv402.3, ptr %arrayidx411.3, align 1
  %arrayidx422.3 = getelementptr inbounds i8, ptr %h, i64 25110
  store i16 %conv402.3, ptr %arrayidx422.3, align 1
  %shl.3 = shl i32 %call400.3, 3
  %215 = load i32, ptr %i_cbp_luma, align 8
  %or.3 = or i32 %215, %shl.3
  store i32 %or.3, ptr %i_cbp_luma, align 8
  br label %if.end880

for.cond429.preheader:                            ; preds = %if.then365
  %sub_4x4 = getelementptr inbounds i8, ptr %h, i64 33056
  %luma4x4436 = getelementptr inbounds i8, ptr %h, i64 15600
  br label %for.body433

for.body433:                                      ; preds = %for.cond429.preheader, %for.body433
  %indvars.iv1488 = phi i64 [ 0, %for.cond429.preheader ], [ %indvars.iv.next1489, %for.body433 ]
  %216 = load ptr, ptr %sub_4x4, align 8
  %arrayidx438 = getelementptr inbounds [24 x [16 x i16]], ptr %luma4x4436, i64 0, i64 %indvars.iv1488
  %217 = load ptr, ptr %p_fenc442, align 16
  %arrayidx445 = getelementptr inbounds [16 x i8], ptr @block_idx_xy_fenc, i64 0, i64 %indvars.iv1488
  %218 = load i8, ptr %arrayidx445, align 1
  %idx.ext447 = zext i8 %218 to i64
  %add.ptr448 = getelementptr inbounds i8, ptr %217, i64 %idx.ext447
  %219 = load ptr, ptr %p_fdec451, align 16
  %arrayidx454 = getelementptr inbounds [16 x i16], ptr @block_idx_xy_fdec, i64 0, i64 %indvars.iv1488
  %220 = load i16, ptr %arrayidx454, align 2
  %idx.ext456 = zext i16 %220 to i64
  %add.ptr457 = getelementptr inbounds i8, ptr %219, i64 %idx.ext456
  %call458 = tail call i32 %216(ptr noundef nonnull %arrayidx438, ptr noundef %add.ptr448, ptr noundef %add.ptr457) #6
  %conv459 = trunc i32 %call458 to i8
  %arrayidx464 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %indvars.iv1488
  %221 = load i32, ptr %arrayidx464, align 4
  %idxprom465 = sext i32 %221 to i64
  %arrayidx466 = getelementptr inbounds [48 x i8], ptr %non_zero_count, i64 0, i64 %idxprom465
  store i8 %conv459, ptr %arrayidx466, align 1
  %222 = trunc nuw nsw i64 %indvars.iv1488 to i32
  %shr467 = lshr i32 %222, 2
  %shl468 = shl i32 %call458, %shr467
  %223 = load i32, ptr %i_cbp_luma, align 8
  %or471 = or i32 %223, %shl468
  store i32 %or471, ptr %i_cbp_luma, align 8
  %indvars.iv.next1489 = add nuw nsw i64 %indvars.iv1488, 1
  %exitcond1491.not = icmp eq i64 %indvars.iv.next1489, 16
  br i1 %exitcond1491.not, label %if.end880, label %for.body433

if.else476:                                       ; preds = %if.end361
  br i1 %tobool479.not, label %if.else660, label %if.then480

if.then480:                                       ; preds = %if.else476
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %dct8x8) #6
  %b_trellis = getelementptr inbounds i8, ptr %h, i64 16416
  %224 = load i32, ptr %b_trellis, align 16
  %tobool482.not = icmp eq i32 %224, 0
  %225 = and i32 %1, 1
  %and483 = select i1 %tobool482.not, i32 %225, i32 0
  %sub16x16_dct8 = getelementptr inbounds i8, ptr %h, i64 33000
  %226 = load ptr, ptr %sub16x16_dct8, align 8
  %p_fenc487 = getelementptr inbounds i8, ptr %h, i64 21344
  %227 = load ptr, ptr %p_fenc487, align 16
  %p_fdec491 = getelementptr inbounds i8, ptr %h, i64 21392
  %228 = load ptr, ptr %p_fdec491, align 16
  call void %226(ptr noundef nonnull %dct8x8, ptr noundef %227, ptr noundef %228) #6
  %b_noise_reduction = getelementptr inbounds i8, ptr %h, i64 16420
  %229 = load i32, ptr %b_noise_reduction, align 4
  %mul494 = shl nsw i32 %229, 2
  %arrayidx495 = getelementptr inbounds i8, ptr %h, i64 31172
  %230 = load i32, ptr %arrayidx495, align 4
  %add496 = add i32 %230, %mul494
  store i32 %add496, ptr %arrayidx495, align 4
  %denoise_dct = getelementptr inbounds i8, ptr %h, i64 33136
  %arrayidx509 = getelementptr inbounds i8, ptr %h, i64 30656
  %arrayidx511 = getelementptr inbounds i8, ptr %h, i64 31040
  %quantf.i = getelementptr inbounds i8, ptr %h, i64 33080
  %arrayidx.i1423 = getelementptr inbounds i8, ptr %h, i64 3480
  %idxprom2.i = sext i32 %0 to i64
  %arrayidx5.i1425 = getelementptr inbounds i8, ptr %h, i64 3528
  %zigzagf520 = getelementptr inbounds i8, ptr %h, i64 33032
  %luma8x8522 = getelementptr inbounds i8, ptr %h, i64 15088
  %tobool529.not = icmp eq i32 %and483, 0
  %decimate_score64 = getelementptr inbounds i8, ptr %h, i64 33160
  %tobool504.not = icmp eq i32 %229, 0
  br i1 %tobool504.not, label %if.end513, label %if.then505

for.cond586.preheader:                            ; preds = %for.inc554.3.thread, %for.inc554.3
  %dequant_8x8 = getelementptr inbounds i8, ptr %h, i64 33112
  %arrayidx601 = getelementptr inbounds i8, ptr %h, i64 3384
  %add8x8_idct8 = getelementptr inbounds i8, ptr %h, i64 32992
  %231 = load i32, ptr %i_cbp_luma, align 8
  %and594 = and i32 %231, 1
  %tobool595.not = icmp eq i32 %and594, 0
  br i1 %tobool595.not, label %for.inc656, label %if.then596

if.then505:                                       ; preds = %if.then480
  %232 = load ptr, ptr %denoise_dct, align 8
  call void %232(ptr noundef nonnull %dct8x8, ptr noundef nonnull %arrayidx509, ptr noundef nonnull %arrayidx511, i32 noundef 64) #6
  br label %if.end513

if.end513:                                        ; preds = %if.then505, %if.then480
  %233 = load i32, ptr %b_trellis, align 16
  %tobool1.not.i = icmp eq i32 %233, 0
  br i1 %tobool1.not.i, label %if.else.i1422, label %if.then.i1420

if.then.i1420:                                    ; preds = %if.end513
  %call.i1421 = call i32 @x264_quant_8x8_trellis(ptr noundef nonnull %h, ptr noundef nonnull %dct8x8, i32 noundef 1, i32 noundef %0, i32 noundef 0, i32 noundef 0) #6
  br label %x264_quant_8x8.exit

if.else.i1422:                                    ; preds = %if.end513
  %234 = load ptr, ptr %quantf.i, align 8
  %235 = load ptr, ptr %arrayidx.i1423, align 8
  %arrayidx3.i1424 = getelementptr inbounds [64 x i16], ptr %235, i64 %idxprom2.i
  %236 = load ptr, ptr %arrayidx5.i1425, align 8
  %arrayidx7.i1426 = getelementptr inbounds [64 x i16], ptr %236, i64 %idxprom2.i
  %call9.i = call i32 %234(ptr noundef nonnull %dct8x8, ptr noundef %arrayidx3.i1424, ptr noundef %arrayidx7.i1426) #6
  br label %x264_quant_8x8.exit

x264_quant_8x8.exit:                              ; preds = %if.then.i1420, %if.else.i1422
  %retval.0.i = phi i32 [ %call.i1421, %if.then.i1420 ], [ %call9.i, %if.else.i1422 ]
  %tobool518.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool518.not, label %for.inc554, label %if.then519

if.then519:                                       ; preds = %x264_quant_8x8.exit
  %237 = load ptr, ptr %zigzagf520, align 8
  call void %237(ptr noundef nonnull %luma8x8522, ptr noundef nonnull %dct8x8) #6
  br i1 %tobool529.not, label %for.inc554.sink.split, label %if.then530

if.then530:                                       ; preds = %if.then519
  %238 = load ptr, ptr %decimate_score64, align 8
  %call537 = call i32 %238(ptr noundef nonnull %luma8x8522) #6
  %cmp539 = icmp sgt i32 %call537, 3
  br i1 %cmp539, label %for.inc554.sink.split, label %for.inc554

for.inc554.sink.split:                            ; preds = %if.then519, %if.then530
  %i_decimate_mb.1.ph = phi i32 [ %call537, %if.then530 ], [ 0, %if.then519 ]
  %239 = load i32, ptr %i_cbp_luma, align 8
  %or545 = or i32 %239, 1
  store i32 %or545, ptr %i_cbp_luma, align 8
  br label %for.inc554

for.inc554:                                       ; preds = %for.inc554.sink.split, %if.then530, %x264_quant_8x8.exit
  %i_decimate_mb.1 = phi i32 [ 0, %x264_quant_8x8.exit ], [ %call537, %if.then530 ], [ %i_decimate_mb.1.ph, %for.inc554.sink.split ]
  %240 = load i32, ptr %b_noise_reduction, align 4
  %tobool504.not.1 = icmp eq i32 %240, 0
  br i1 %tobool504.not.1, label %if.end513.1, label %if.then505.1

if.then505.1:                                     ; preds = %for.inc554
  %241 = load ptr, ptr %denoise_dct, align 8
  %arrayidx507.1 = getelementptr inbounds i8, ptr %dct8x8, i64 128
  call void %241(ptr noundef nonnull %arrayidx507.1, ptr noundef nonnull %arrayidx509, ptr noundef nonnull %arrayidx511, i32 noundef 64) #6
  br label %if.end513.1

if.end513.1:                                      ; preds = %if.then505.1, %for.inc554
  %arrayidx515.1 = getelementptr inbounds i8, ptr %dct8x8, i64 128
  %242 = load i32, ptr %b_trellis, align 16
  %tobool1.not.i.1 = icmp eq i32 %242, 0
  br i1 %tobool1.not.i.1, label %if.else.i1422.1, label %if.then.i1420.1

if.then.i1420.1:                                  ; preds = %if.end513.1
  %call.i1421.1 = call i32 @x264_quant_8x8_trellis(ptr noundef nonnull %h, ptr noundef nonnull %arrayidx515.1, i32 noundef 1, i32 noundef %0, i32 noundef 0, i32 noundef 1) #6
  br label %x264_quant_8x8.exit.1

if.else.i1422.1:                                  ; preds = %if.end513.1
  %243 = load ptr, ptr %quantf.i, align 8
  %244 = load ptr, ptr %arrayidx.i1423, align 8
  %arrayidx3.i1424.1 = getelementptr inbounds [64 x i16], ptr %244, i64 %idxprom2.i
  %245 = load ptr, ptr %arrayidx5.i1425, align 8
  %arrayidx7.i1426.1 = getelementptr inbounds [64 x i16], ptr %245, i64 %idxprom2.i
  %call9.i.1 = call i32 %243(ptr noundef nonnull %arrayidx515.1, ptr noundef %arrayidx3.i1424.1, ptr noundef %arrayidx7.i1426.1) #6
  br label %x264_quant_8x8.exit.1

x264_quant_8x8.exit.1:                            ; preds = %if.else.i1422.1, %if.then.i1420.1
  %retval.0.i.1 = phi i32 [ %call.i1421.1, %if.then.i1420.1 ], [ %call9.i.1, %if.else.i1422.1 ]
  %tobool518.not.1 = icmp eq i32 %retval.0.i.1, 0
  br i1 %tobool518.not.1, label %for.inc554.1, label %if.then519.1

if.then519.1:                                     ; preds = %x264_quant_8x8.exit.1
  %246 = load ptr, ptr %zigzagf520, align 8
  %arrayidx524.1 = getelementptr inbounds i8, ptr %h, i64 15216
  call void %246(ptr noundef nonnull %arrayidx524.1, ptr noundef nonnull %arrayidx515.1) #6
  br i1 %tobool529.not, label %for.inc554.1.sink.split, label %if.then530.1

if.then530.1:                                     ; preds = %if.then519.1
  %247 = load ptr, ptr %decimate_score64, align 8
  %call537.1 = call i32 %247(ptr noundef nonnull %arrayidx524.1) #6
  %add538.1 = add nsw i32 %call537.1, %i_decimate_mb.1
  %cmp539.1 = icmp sgt i32 %call537.1, 3
  br i1 %cmp539.1, label %for.inc554.1.sink.split, label %for.inc554.1

for.inc554.1.sink.split:                          ; preds = %if.then519.1, %if.then530.1
  %i_decimate_mb.1.1.ph = phi i32 [ %add538.1, %if.then530.1 ], [ %i_decimate_mb.1, %if.then519.1 ]
  %248 = load i32, ptr %i_cbp_luma, align 8
  %or551.1 = or i32 %248, 2
  store i32 %or551.1, ptr %i_cbp_luma, align 8
  br label %for.inc554.1

for.inc554.1:                                     ; preds = %for.inc554.1.sink.split, %if.then530.1, %x264_quant_8x8.exit.1
  %i_decimate_mb.1.1 = phi i32 [ %i_decimate_mb.1, %x264_quant_8x8.exit.1 ], [ %add538.1, %if.then530.1 ], [ %i_decimate_mb.1.1.ph, %for.inc554.1.sink.split ]
  %249 = load i32, ptr %b_noise_reduction, align 4
  %tobool504.not.2 = icmp eq i32 %249, 0
  br i1 %tobool504.not.2, label %if.end513.2, label %if.then505.2

if.then505.2:                                     ; preds = %for.inc554.1
  %250 = load ptr, ptr %denoise_dct, align 8
  %arrayidx507.2 = getelementptr inbounds i8, ptr %dct8x8, i64 256
  call void %250(ptr noundef nonnull %arrayidx507.2, ptr noundef nonnull %arrayidx509, ptr noundef nonnull %arrayidx511, i32 noundef 64) #6
  br label %if.end513.2

if.end513.2:                                      ; preds = %if.then505.2, %for.inc554.1
  %arrayidx515.2 = getelementptr inbounds i8, ptr %dct8x8, i64 256
  %251 = load i32, ptr %b_trellis, align 16
  %tobool1.not.i.2 = icmp eq i32 %251, 0
  br i1 %tobool1.not.i.2, label %if.else.i1422.2, label %if.then.i1420.2

if.then.i1420.2:                                  ; preds = %if.end513.2
  %call.i1421.2 = call i32 @x264_quant_8x8_trellis(ptr noundef nonnull %h, ptr noundef nonnull %arrayidx515.2, i32 noundef 1, i32 noundef %0, i32 noundef 0, i32 noundef 2) #6
  br label %x264_quant_8x8.exit.2

if.else.i1422.2:                                  ; preds = %if.end513.2
  %252 = load ptr, ptr %quantf.i, align 8
  %253 = load ptr, ptr %arrayidx.i1423, align 8
  %arrayidx3.i1424.2 = getelementptr inbounds [64 x i16], ptr %253, i64 %idxprom2.i
  %254 = load ptr, ptr %arrayidx5.i1425, align 8
  %arrayidx7.i1426.2 = getelementptr inbounds [64 x i16], ptr %254, i64 %idxprom2.i
  %call9.i.2 = call i32 %252(ptr noundef nonnull %arrayidx515.2, ptr noundef %arrayidx3.i1424.2, ptr noundef %arrayidx7.i1426.2) #6
  br label %x264_quant_8x8.exit.2

x264_quant_8x8.exit.2:                            ; preds = %if.else.i1422.2, %if.then.i1420.2
  %retval.0.i.2 = phi i32 [ %call.i1421.2, %if.then.i1420.2 ], [ %call9.i.2, %if.else.i1422.2 ]
  %tobool518.not.2 = icmp eq i32 %retval.0.i.2, 0
  br i1 %tobool518.not.2, label %for.inc554.2, label %if.then519.2

if.then519.2:                                     ; preds = %x264_quant_8x8.exit.2
  %255 = load ptr, ptr %zigzagf520, align 8
  %arrayidx524.2 = getelementptr inbounds i8, ptr %h, i64 15344
  call void %255(ptr noundef nonnull %arrayidx524.2, ptr noundef nonnull %arrayidx515.2) #6
  br i1 %tobool529.not, label %for.inc554.2.sink.split, label %if.then530.2

if.then530.2:                                     ; preds = %if.then519.2
  %256 = load ptr, ptr %decimate_score64, align 8
  %call537.2 = call i32 %256(ptr noundef nonnull %arrayidx524.2) #6
  %add538.2 = add nsw i32 %call537.2, %i_decimate_mb.1.1
  %cmp539.2 = icmp sgt i32 %call537.2, 3
  br i1 %cmp539.2, label %for.inc554.2.sink.split, label %for.inc554.2

for.inc554.2.sink.split:                          ; preds = %if.then519.2, %if.then530.2
  %i_decimate_mb.1.2.ph = phi i32 [ %add538.2, %if.then530.2 ], [ %i_decimate_mb.1.1, %if.then519.2 ]
  %257 = load i32, ptr %i_cbp_luma, align 8
  %or551.2 = or i32 %257, 4
  store i32 %or551.2, ptr %i_cbp_luma, align 8
  br label %for.inc554.2

for.inc554.2:                                     ; preds = %for.inc554.2.sink.split, %if.then530.2, %x264_quant_8x8.exit.2
  %i_decimate_mb.1.2 = phi i32 [ %i_decimate_mb.1.1, %x264_quant_8x8.exit.2 ], [ %add538.2, %if.then530.2 ], [ %i_decimate_mb.1.2.ph, %for.inc554.2.sink.split ]
  %258 = load i32, ptr %b_noise_reduction, align 4
  %tobool504.not.3 = icmp eq i32 %258, 0
  br i1 %tobool504.not.3, label %if.end513.3, label %if.then505.3

if.then505.3:                                     ; preds = %for.inc554.2
  %259 = load ptr, ptr %denoise_dct, align 8
  %arrayidx507.3 = getelementptr inbounds i8, ptr %dct8x8, i64 384
  call void %259(ptr noundef nonnull %arrayidx507.3, ptr noundef nonnull %arrayidx509, ptr noundef nonnull %arrayidx511, i32 noundef 64) #6
  br label %if.end513.3

if.end513.3:                                      ; preds = %if.then505.3, %for.inc554.2
  %arrayidx515.3 = getelementptr inbounds i8, ptr %dct8x8, i64 384
  %260 = load i32, ptr %b_trellis, align 16
  %tobool1.not.i.3 = icmp eq i32 %260, 0
  br i1 %tobool1.not.i.3, label %if.else.i1422.3, label %if.then.i1420.3

if.then.i1420.3:                                  ; preds = %if.end513.3
  %call.i1421.3 = call i32 @x264_quant_8x8_trellis(ptr noundef nonnull %h, ptr noundef nonnull %arrayidx515.3, i32 noundef 1, i32 noundef %0, i32 noundef 0, i32 noundef 3) #6
  br label %x264_quant_8x8.exit.3

if.else.i1422.3:                                  ; preds = %if.end513.3
  %261 = load ptr, ptr %quantf.i, align 8
  %262 = load ptr, ptr %arrayidx.i1423, align 8
  %arrayidx3.i1424.3 = getelementptr inbounds [64 x i16], ptr %262, i64 %idxprom2.i
  %263 = load ptr, ptr %arrayidx5.i1425, align 8
  %arrayidx7.i1426.3 = getelementptr inbounds [64 x i16], ptr %263, i64 %idxprom2.i
  %call9.i.3 = call i32 %261(ptr noundef nonnull %arrayidx515.3, ptr noundef %arrayidx3.i1424.3, ptr noundef %arrayidx7.i1426.3) #6
  br label %x264_quant_8x8.exit.3

x264_quant_8x8.exit.3:                            ; preds = %if.else.i1422.3, %if.then.i1420.3
  %retval.0.i.3 = phi i32 [ %call.i1421.3, %if.then.i1420.3 ], [ %call9.i.3, %if.else.i1422.3 ]
  %tobool518.not.3 = icmp eq i32 %retval.0.i.3, 0
  br i1 %tobool518.not.3, label %for.inc554.3, label %if.then519.3

if.then519.3:                                     ; preds = %x264_quant_8x8.exit.3
  %264 = load ptr, ptr %zigzagf520, align 8
  %arrayidx524.3 = getelementptr inbounds i8, ptr %h, i64 15472
  call void %264(ptr noundef nonnull %arrayidx524.3, ptr noundef nonnull %arrayidx515.3) #6
  br i1 %tobool529.not, label %for.inc554.3.thread, label %if.then530.3

if.then530.3:                                     ; preds = %if.then519.3
  %265 = load ptr, ptr %decimate_score64, align 8
  %call537.3 = call i32 %265(ptr noundef nonnull %arrayidx524.3) #6
  %add538.3 = add nsw i32 %call537.3, %i_decimate_mb.1.2
  %cmp539.3 = icmp sgt i32 %call537.3, 3
  br i1 %cmp539.3, label %if.then541.3, label %for.inc554.3

if.then541.3:                                     ; preds = %if.then530.3
  %266 = load i32, ptr %i_cbp_luma, align 8
  %or545.3 = or i32 %266, 8
  store i32 %or545.3, ptr %i_cbp_luma, align 8
  br label %for.inc554.3

for.inc554.3.thread:                              ; preds = %if.then519.3
  %267 = load i32, ptr %i_cbp_luma, align 8
  %or551.3 = or i32 %267, 8
  store i32 %or551.3, ptr %i_cbp_luma, align 8
  br label %for.cond586.preheader

for.inc554.3:                                     ; preds = %if.then541.3, %if.then530.3, %x264_quant_8x8.exit.3
  %i_decimate_mb.1.3 = phi i32 [ %i_decimate_mb.1.2, %x264_quant_8x8.exit.3 ], [ %add538.3, %if.then541.3 ], [ %add538.3, %if.then530.3 ]
  %cmp557 = icmp slt i32 %i_decimate_mb.1.3, 6
  %tobool560 = icmp ne i32 %and483, 0
  %or.cond = select i1 %cmp557, i1 %tobool560, i1 false
  br i1 %or.cond, label %if.then561, label %for.cond586.preheader

if.then561:                                       ; preds = %for.inc554.3
  store i32 0, ptr %i_cbp_luma, align 8
  %arrayidx568 = getelementptr inbounds i8, ptr %h, i64 25084
  store i32 0, ptr %arrayidx568, align 1
  %arrayidx573 = getelementptr inbounds i8, ptr %h, i64 25092
  store i32 0, ptr %arrayidx573, align 1
  %arrayidx578 = getelementptr inbounds i8, ptr %h, i64 25100
  store i32 0, ptr %arrayidx578, align 1
  %arrayidx583 = getelementptr inbounds i8, ptr %h, i64 25108
  store i32 0, ptr %arrayidx583, align 1
  br label %if.end659

if.then596:                                       ; preds = %for.cond586.preheader
  %268 = load ptr, ptr %dequant_8x8, align 8
  %269 = load ptr, ptr %arrayidx601, align 8
  call void %268(ptr noundef nonnull %dct8x8, ptr noundef %269, i32 noundef %0) #6
  %270 = load ptr, ptr %add8x8_idct8, align 16
  %271 = load ptr, ptr %p_fdec491, align 16
  call void %270(ptr noundef %271, ptr noundef nonnull %dct8x8) #6
  %.pre1533 = load i32, ptr %i_cbp_luma, align 8
  br label %for.inc656

for.inc656:                                       ; preds = %for.cond586.preheader, %if.then596
  %272 = phi i32 [ %.pre1533, %if.then596 ], [ %231, %for.cond586.preheader ]
  %.sink1525 = phi i16 [ 257, %if.then596 ], [ 0, %for.cond586.preheader ]
  %273 = getelementptr inbounds i8, ptr %h, i64 25084
  store i16 %.sink1525, ptr %273, align 1
  %274 = getelementptr inbounds i8, ptr %h, i64 25092
  store i16 %.sink1525, ptr %274, align 1
  %and594.1 = and i32 %272, 2
  %tobool595.not.1 = icmp eq i32 %and594.1, 0
  br i1 %tobool595.not.1, label %for.inc656.1, label %if.then596.1

if.then596.1:                                     ; preds = %for.inc656
  %275 = load ptr, ptr %dequant_8x8, align 8
  %276 = load ptr, ptr %arrayidx601, align 8
  call void %275(ptr noundef nonnull %arrayidx515.1, ptr noundef %276, i32 noundef %0) #6
  %277 = load ptr, ptr %add8x8_idct8, align 16
  %278 = load ptr, ptr %p_fdec491, align 16
  %arrayidx614.1 = getelementptr inbounds i8, ptr %278, i64 8
  call void %277(ptr noundef nonnull %arrayidx614.1, ptr noundef nonnull %arrayidx515.1) #6
  %.pre1534 = load i32, ptr %i_cbp_luma, align 8
  br label %for.inc656.1

for.inc656.1:                                     ; preds = %for.inc656, %if.then596.1
  %279 = phi i32 [ %.pre1534, %if.then596.1 ], [ %272, %for.inc656 ]
  %.sink1527 = phi i16 [ 257, %if.then596.1 ], [ 0, %for.inc656 ]
  %280 = getelementptr inbounds i8, ptr %h, i64 25086
  store i16 %.sink1527, ptr %280, align 1
  %281 = getelementptr inbounds i8, ptr %h, i64 25094
  store i16 %.sink1527, ptr %281, align 1
  %and594.2 = and i32 %279, 4
  %tobool595.not.2 = icmp eq i32 %and594.2, 0
  br i1 %tobool595.not.2, label %for.inc656.2, label %if.then596.2

if.then596.2:                                     ; preds = %for.inc656.1
  %282 = load ptr, ptr %dequant_8x8, align 8
  %283 = load ptr, ptr %arrayidx601, align 8
  call void %282(ptr noundef nonnull %arrayidx515.2, ptr noundef %283, i32 noundef %0) #6
  %284 = load ptr, ptr %add8x8_idct8, align 16
  %285 = load ptr, ptr %p_fdec491, align 16
  %arrayidx614.2 = getelementptr inbounds i8, ptr %285, i64 256
  call void %284(ptr noundef nonnull %arrayidx614.2, ptr noundef nonnull %arrayidx515.2) #6
  %.pre1535 = load i32, ptr %i_cbp_luma, align 8
  br label %for.inc656.2

for.inc656.2:                                     ; preds = %for.inc656.1, %if.then596.2
  %286 = phi i32 [ %.pre1535, %if.then596.2 ], [ %279, %for.inc656.1 ]
  %.sink1529 = phi i16 [ 257, %if.then596.2 ], [ 0, %for.inc656.1 ]
  %287 = getelementptr inbounds i8, ptr %h, i64 25100
  store i16 %.sink1529, ptr %287, align 1
  %288 = getelementptr inbounds i8, ptr %h, i64 25108
  store i16 %.sink1529, ptr %288, align 1
  %and594.3 = and i32 %286, 8
  %tobool595.not.3 = icmp eq i32 %and594.3, 0
  br i1 %tobool595.not.3, label %for.inc656.3, label %if.then596.3

if.then596.3:                                     ; preds = %for.inc656.2
  %289 = load ptr, ptr %dequant_8x8, align 8
  %290 = load ptr, ptr %arrayidx601, align 8
  call void %289(ptr noundef nonnull %arrayidx515.3, ptr noundef %290, i32 noundef %0) #6
  %291 = load ptr, ptr %add8x8_idct8, align 16
  %292 = load ptr, ptr %p_fdec491, align 16
  %arrayidx614.3 = getelementptr inbounds i8, ptr %292, i64 264
  call void %291(ptr noundef nonnull %arrayidx614.3, ptr noundef nonnull %arrayidx515.3) #6
  br label %for.inc656.3

for.inc656.3:                                     ; preds = %for.inc656.2, %if.then596.3
  %.sink1531 = phi i16 [ 257, %if.then596.3 ], [ 0, %for.inc656.2 ]
  %293 = getelementptr inbounds i8, ptr %h, i64 25102
  store i16 %.sink1531, ptr %293, align 1
  %294 = getelementptr inbounds i8, ptr %h, i64 25110
  store i16 %.sink1531, ptr %294, align 1
  br label %if.end659

if.end659:                                        ; preds = %for.inc656.3, %if.then561
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %dct8x8) #6
  br label %if.end880

if.else660:                                       ; preds = %if.else476
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %dct4x4) #6
  %sub16x16_dct = getelementptr inbounds i8, ptr %h, i64 32960
  %295 = load ptr, ptr %sub16x16_dct, align 16
  %p_fenc665 = getelementptr inbounds i8, ptr %h, i64 21344
  %296 = load ptr, ptr %p_fenc665, align 16
  %p_fdec669 = getelementptr inbounds i8, ptr %h, i64 21392
  %297 = load ptr, ptr %p_fdec669, align 16
  call void %295(ptr noundef nonnull %dct4x4, ptr noundef %296, ptr noundef %297) #6
  %b_noise_reduction672 = getelementptr inbounds i8, ptr %h, i64 16420
  %298 = load i32, ptr %b_noise_reduction672, align 4
  %mul673 = shl nsw i32 %298, 4
  %nr_count674 = getelementptr inbounds i8, ptr %h, i64 31168
  %299 = load i32, ptr %nr_count674, align 16
  %add676 = add i32 %299, %mul673
  store i32 %add676, ptr %nr_count674, align 16
  %denoise_dct698 = getelementptr inbounds i8, ptr %h, i64 33136
  %nr_residual_sum702 = getelementptr inbounds i8, ptr %h, i64 30400
  %nr_offset705 = getelementptr inbounds i8, ptr %h, i64 30912
  %b_trellis.i1427 = getelementptr inbounds i8, ptr %h, i64 16416
  %quant_4x4.i = getelementptr inbounds i8, ptr %h, i64 33088
  %arrayidx.i1433 = getelementptr inbounds i8, ptr %h, i64 3448
  %idxprom2.i1434 = sext i32 %0 to i64
  %arrayidx5.i1436 = getelementptr inbounds i8, ptr %h, i64 3496
  %scan_4x4 = getelementptr inbounds i8, ptr %h, i64 33040
  %luma4x4725 = getelementptr inbounds i8, ptr %h, i64 15600
  %dequant_4x4 = getelementptr inbounds i8, ptr %h, i64 33120
  %arrayidx736 = getelementptr inbounds i8, ptr %h, i64 3352
  %tobool737 = icmp ne i32 %1, 0
  %decimate_score16 = getelementptr inbounds i8, ptr %h, i64 33152
  %tobool756.not = icmp eq i32 %1, 0
  %add8x8_idct = getelementptr inbounds i8, ptr %h, i64 32944
  br label %for.cond685.preheader

for.cond685.preheader:                            ; preds = %if.else660, %if.end809
  %indvars.iv1510 = phi i64 [ 0, %if.else660 ], [ %indvars.iv.next1511, %if.end809 ]
  %i_decimate_mb.21470 = phi i32 [ 0, %if.else660 ], [ %add7551554, %if.end809 ]
  %300 = shl nuw nsw i64 %indvars.iv1510, 2
  %301 = load i32, ptr %b_noise_reduction672, align 4
  %tobool695.not = icmp eq i32 %301, 0
  br i1 %tobool695.not, label %if.end708, label %if.then696

for.cond.cleanup681:                              ; preds = %if.end809
  br i1 %tobool756.not, label %if.end875, label %if.then814

if.then696:                                       ; preds = %for.cond685.preheader
  %302 = load ptr, ptr %denoise_dct698, align 8
  %arrayidx700 = getelementptr inbounds [16 x [16 x i16]], ptr %dct4x4, i64 0, i64 %300
  call void %302(ptr noundef nonnull %arrayidx700, ptr noundef nonnull %nr_residual_sum702, ptr noundef nonnull %nr_offset705, i32 noundef 16) #6
  br label %if.end708

if.end708:                                        ; preds = %if.then696, %for.cond685.preheader
  %arrayidx710 = getelementptr inbounds [16 x [16 x i16]], ptr %dct4x4, i64 0, i64 %300
  %303 = load i32, ptr %b_trellis.i1427, align 16
  %tobool1.not.i1428 = icmp eq i32 %303, 0
  br i1 %tobool1.not.i1428, label %if.else.i1432, label %if.then.i1429

if.then.i1429:                                    ; preds = %if.end708
  %304 = trunc nuw nsw i64 %300 to i32
  %call.i1430 = call i32 @x264_quant_4x4_trellis(ptr noundef nonnull %h, ptr noundef nonnull %arrayidx710, i32 noundef 1, i32 noundef %0, i32 noundef 2, i32 noundef 0, i32 noundef 0, i32 noundef %304) #6
  br label %x264_quant_4x4.exit

if.else.i1432:                                    ; preds = %if.end708
  %305 = load ptr, ptr %quant_4x4.i, align 8
  %306 = load ptr, ptr %arrayidx.i1433, align 8
  %arrayidx3.i1435 = getelementptr inbounds [16 x i16], ptr %306, i64 %idxprom2.i1434
  %307 = load ptr, ptr %arrayidx5.i1436, align 8
  %arrayidx7.i1437 = getelementptr inbounds [16 x i16], ptr %307, i64 %idxprom2.i1434
  %call9.i1438 = call i32 %305(ptr noundef nonnull %arrayidx710, ptr noundef %arrayidx3.i1435, ptr noundef %arrayidx7.i1437) #6
  br label %x264_quant_4x4.exit

x264_quant_4x4.exit:                              ; preds = %if.then.i1429, %if.else.i1432
  %retval.0.i1431 = phi i32 [ %call.i1430, %if.then.i1429 ], [ %call9.i1438, %if.else.i1432 ]
  %conv713 = trunc i32 %retval.0.i1431 to i8
  %arrayidx718 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %300
  %308 = load i32, ptr %arrayidx718, align 16
  %idxprom719 = sext i32 %308 to i64
  %arrayidx720 = getelementptr inbounds [48 x i8], ptr %non_zero_count, i64 0, i64 %idxprom719
  store i8 %conv713, ptr %arrayidx720, align 1
  %tobool721.not = icmp eq i32 %retval.0.i1431, 0
  br i1 %tobool721.not, label %if.end751, label %if.then722

if.then722:                                       ; preds = %x264_quant_4x4.exit
  %309 = load ptr, ptr %scan_4x4, align 8
  %arrayidx727 = getelementptr inbounds [24 x [16 x i16]], ptr %luma4x4725, i64 0, i64 %300
  call void %309(ptr noundef nonnull %arrayidx727, ptr noundef nonnull %arrayidx710) #6
  %310 = load ptr, ptr %dequant_4x4, align 8
  %311 = load ptr, ptr %arrayidx736, align 8
  call void %310(ptr noundef nonnull %arrayidx710, ptr noundef %311, i32 noundef %0) #6
  br i1 %tobool737, label %if.then741, label %if.end751

if.then741:                                       ; preds = %if.then722
  %312 = load ptr, ptr %decimate_score16, align 8
  %call748 = call i32 %312(ptr noundef nonnull %arrayidx727) #6
  br label %if.end751

if.end751:                                        ; preds = %if.then722, %if.then741, %x264_quant_4x4.exit
  %i_decimate_8x8683.2 = phi i32 [ 0, %x264_quant_4x4.exit ], [ %call748, %if.then741 ], [ 0, %if.then722 ]
  %cbp.1 = phi i32 [ 0, %x264_quant_4x4.exit ], [ 1, %if.then741 ], [ 1, %if.then722 ]
  %313 = or disjoint i64 %300, 1
  %314 = load i32, ptr %b_noise_reduction672, align 4
  %tobool695.not.1 = icmp eq i32 %314, 0
  br i1 %tobool695.not.1, label %if.end708.1, label %if.then696.1

if.then696.1:                                     ; preds = %if.end751
  %315 = load ptr, ptr %denoise_dct698, align 8
  %arrayidx700.1 = getelementptr inbounds [16 x [16 x i16]], ptr %dct4x4, i64 0, i64 %313
  call void %315(ptr noundef nonnull %arrayidx700.1, ptr noundef nonnull %nr_residual_sum702, ptr noundef nonnull %nr_offset705, i32 noundef 16) #6
  br label %if.end708.1

if.end708.1:                                      ; preds = %if.then696.1, %if.end751
  %arrayidx710.1 = getelementptr inbounds [16 x [16 x i16]], ptr %dct4x4, i64 0, i64 %313
  %316 = load i32, ptr %b_trellis.i1427, align 16
  %tobool1.not.i1428.1 = icmp eq i32 %316, 0
  br i1 %tobool1.not.i1428.1, label %if.else.i1432.1, label %if.then.i1429.1

if.then.i1429.1:                                  ; preds = %if.end708.1
  %317 = trunc nuw nsw i64 %313 to i32
  %call.i1430.1 = call i32 @x264_quant_4x4_trellis(ptr noundef nonnull %h, ptr noundef nonnull %arrayidx710.1, i32 noundef 1, i32 noundef %0, i32 noundef 2, i32 noundef 0, i32 noundef 0, i32 noundef %317) #6
  br label %x264_quant_4x4.exit.1

if.else.i1432.1:                                  ; preds = %if.end708.1
  %318 = load ptr, ptr %quant_4x4.i, align 8
  %319 = load ptr, ptr %arrayidx.i1433, align 8
  %arrayidx3.i1435.1 = getelementptr inbounds [16 x i16], ptr %319, i64 %idxprom2.i1434
  %320 = load ptr, ptr %arrayidx5.i1436, align 8
  %arrayidx7.i1437.1 = getelementptr inbounds [16 x i16], ptr %320, i64 %idxprom2.i1434
  %call9.i1438.1 = call i32 %318(ptr noundef nonnull %arrayidx710.1, ptr noundef %arrayidx3.i1435.1, ptr noundef %arrayidx7.i1437.1) #6
  br label %x264_quant_4x4.exit.1

x264_quant_4x4.exit.1:                            ; preds = %if.else.i1432.1, %if.then.i1429.1
  %retval.0.i1431.1 = phi i32 [ %call.i1430.1, %if.then.i1429.1 ], [ %call9.i1438.1, %if.else.i1432.1 ]
  %conv713.1 = trunc i32 %retval.0.i1431.1 to i8
  %arrayidx718.1 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %313
  %321 = load i32, ptr %arrayidx718.1, align 4
  %idxprom719.1 = sext i32 %321 to i64
  %arrayidx720.1 = getelementptr inbounds [48 x i8], ptr %non_zero_count, i64 0, i64 %idxprom719.1
  store i8 %conv713.1, ptr %arrayidx720.1, align 1
  %tobool721.not.1 = icmp eq i32 %retval.0.i1431.1, 0
  br i1 %tobool721.not.1, label %if.end751.1, label %if.then722.1

if.then722.1:                                     ; preds = %x264_quant_4x4.exit.1
  %322 = load ptr, ptr %scan_4x4, align 8
  %arrayidx727.1 = getelementptr inbounds [24 x [16 x i16]], ptr %luma4x4725, i64 0, i64 %313
  call void %322(ptr noundef nonnull %arrayidx727.1, ptr noundef nonnull %arrayidx710.1) #6
  %323 = load ptr, ptr %dequant_4x4, align 8
  %324 = load ptr, ptr %arrayidx736, align 8
  call void %323(ptr noundef nonnull %arrayidx710.1, ptr noundef %324, i32 noundef %0) #6
  %cmp739.1 = icmp slt i32 %i_decimate_8x8683.2, 6
  %or.cond1045.1 = select i1 %tobool737, i1 %cmp739.1, i1 false
  br i1 %or.cond1045.1, label %if.then741.1, label %if.end751.1

if.then741.1:                                     ; preds = %if.then722.1
  %325 = load ptr, ptr %decimate_score16, align 8
  %call748.1 = call i32 %325(ptr noundef nonnull %arrayidx727.1) #6
  %add749.1 = add nsw i32 %call748.1, %i_decimate_8x8683.2
  br label %if.end751.1

if.end751.1:                                      ; preds = %if.then741.1, %if.then722.1, %x264_quant_4x4.exit.1
  %i_decimate_8x8683.2.1 = phi i32 [ %i_decimate_8x8683.2, %x264_quant_4x4.exit.1 ], [ %add749.1, %if.then741.1 ], [ %i_decimate_8x8683.2, %if.then722.1 ]
  %cbp.1.1 = phi i32 [ %cbp.1, %x264_quant_4x4.exit.1 ], [ 1, %if.then741.1 ], [ 1, %if.then722.1 ]
  %326 = or disjoint i64 %300, 2
  %327 = load i32, ptr %b_noise_reduction672, align 4
  %tobool695.not.2 = icmp eq i32 %327, 0
  br i1 %tobool695.not.2, label %if.end708.2, label %if.then696.2

if.then696.2:                                     ; preds = %if.end751.1
  %328 = load ptr, ptr %denoise_dct698, align 8
  %arrayidx700.2 = getelementptr inbounds [16 x [16 x i16]], ptr %dct4x4, i64 0, i64 %326
  call void %328(ptr noundef nonnull %arrayidx700.2, ptr noundef nonnull %nr_residual_sum702, ptr noundef nonnull %nr_offset705, i32 noundef 16) #6
  br label %if.end708.2

if.end708.2:                                      ; preds = %if.then696.2, %if.end751.1
  %arrayidx710.2 = getelementptr inbounds [16 x [16 x i16]], ptr %dct4x4, i64 0, i64 %326
  %329 = load i32, ptr %b_trellis.i1427, align 16
  %tobool1.not.i1428.2 = icmp eq i32 %329, 0
  br i1 %tobool1.not.i1428.2, label %if.else.i1432.2, label %if.then.i1429.2

if.then.i1429.2:                                  ; preds = %if.end708.2
  %330 = trunc nuw nsw i64 %326 to i32
  %call.i1430.2 = call i32 @x264_quant_4x4_trellis(ptr noundef nonnull %h, ptr noundef nonnull %arrayidx710.2, i32 noundef 1, i32 noundef %0, i32 noundef 2, i32 noundef 0, i32 noundef 0, i32 noundef %330) #6
  br label %x264_quant_4x4.exit.2

if.else.i1432.2:                                  ; preds = %if.end708.2
  %331 = load ptr, ptr %quant_4x4.i, align 8
  %332 = load ptr, ptr %arrayidx.i1433, align 8
  %arrayidx3.i1435.2 = getelementptr inbounds [16 x i16], ptr %332, i64 %idxprom2.i1434
  %333 = load ptr, ptr %arrayidx5.i1436, align 8
  %arrayidx7.i1437.2 = getelementptr inbounds [16 x i16], ptr %333, i64 %idxprom2.i1434
  %call9.i1438.2 = call i32 %331(ptr noundef nonnull %arrayidx710.2, ptr noundef %arrayidx3.i1435.2, ptr noundef %arrayidx7.i1437.2) #6
  br label %x264_quant_4x4.exit.2

x264_quant_4x4.exit.2:                            ; preds = %if.else.i1432.2, %if.then.i1429.2
  %retval.0.i1431.2 = phi i32 [ %call.i1430.2, %if.then.i1429.2 ], [ %call9.i1438.2, %if.else.i1432.2 ]
  %conv713.2 = trunc i32 %retval.0.i1431.2 to i8
  %arrayidx718.2 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %326
  %334 = load i32, ptr %arrayidx718.2, align 8
  %idxprom719.2 = sext i32 %334 to i64
  %arrayidx720.2 = getelementptr inbounds [48 x i8], ptr %non_zero_count, i64 0, i64 %idxprom719.2
  store i8 %conv713.2, ptr %arrayidx720.2, align 1
  %tobool721.not.2 = icmp eq i32 %retval.0.i1431.2, 0
  br i1 %tobool721.not.2, label %if.end751.2, label %if.then722.2

if.then722.2:                                     ; preds = %x264_quant_4x4.exit.2
  %335 = load ptr, ptr %scan_4x4, align 8
  %arrayidx727.2 = getelementptr inbounds [24 x [16 x i16]], ptr %luma4x4725, i64 0, i64 %326
  call void %335(ptr noundef nonnull %arrayidx727.2, ptr noundef nonnull %arrayidx710.2) #6
  %336 = load ptr, ptr %dequant_4x4, align 8
  %337 = load ptr, ptr %arrayidx736, align 8
  call void %336(ptr noundef nonnull %arrayidx710.2, ptr noundef %337, i32 noundef %0) #6
  %cmp739.2 = icmp slt i32 %i_decimate_8x8683.2.1, 6
  %or.cond1045.2 = select i1 %tobool737, i1 %cmp739.2, i1 false
  br i1 %or.cond1045.2, label %if.then741.2, label %if.end751.2

if.then741.2:                                     ; preds = %if.then722.2
  %338 = load ptr, ptr %decimate_score16, align 8
  %call748.2 = call i32 %338(ptr noundef nonnull %arrayidx727.2) #6
  %add749.2 = add nsw i32 %call748.2, %i_decimate_8x8683.2.1
  br label %if.end751.2

if.end751.2:                                      ; preds = %if.then741.2, %if.then722.2, %x264_quant_4x4.exit.2
  %i_decimate_8x8683.2.2 = phi i32 [ %i_decimate_8x8683.2.1, %x264_quant_4x4.exit.2 ], [ %add749.2, %if.then741.2 ], [ %i_decimate_8x8683.2.1, %if.then722.2 ]
  %cbp.1.2 = phi i32 [ %cbp.1.1, %x264_quant_4x4.exit.2 ], [ 1, %if.then741.2 ], [ 1, %if.then722.2 ]
  %339 = or disjoint i64 %300, 3
  %340 = load i32, ptr %b_noise_reduction672, align 4
  %tobool695.not.3 = icmp eq i32 %340, 0
  br i1 %tobool695.not.3, label %if.end708.3, label %if.then696.3

if.then696.3:                                     ; preds = %if.end751.2
  %341 = load ptr, ptr %denoise_dct698, align 8
  %arrayidx700.3 = getelementptr inbounds [16 x [16 x i16]], ptr %dct4x4, i64 0, i64 %339
  call void %341(ptr noundef nonnull %arrayidx700.3, ptr noundef nonnull %nr_residual_sum702, ptr noundef nonnull %nr_offset705, i32 noundef 16) #6
  br label %if.end708.3

if.end708.3:                                      ; preds = %if.then696.3, %if.end751.2
  %arrayidx710.3 = getelementptr inbounds [16 x [16 x i16]], ptr %dct4x4, i64 0, i64 %339
  %342 = load i32, ptr %b_trellis.i1427, align 16
  %tobool1.not.i1428.3 = icmp eq i32 %342, 0
  br i1 %tobool1.not.i1428.3, label %if.else.i1432.3, label %if.then.i1429.3

if.then.i1429.3:                                  ; preds = %if.end708.3
  %343 = trunc nuw nsw i64 %339 to i32
  %call.i1430.3 = call i32 @x264_quant_4x4_trellis(ptr noundef nonnull %h, ptr noundef nonnull %arrayidx710.3, i32 noundef 1, i32 noundef %0, i32 noundef 2, i32 noundef 0, i32 noundef 0, i32 noundef %343) #6
  br label %x264_quant_4x4.exit.3

if.else.i1432.3:                                  ; preds = %if.end708.3
  %344 = load ptr, ptr %quant_4x4.i, align 8
  %345 = load ptr, ptr %arrayidx.i1433, align 8
  %arrayidx3.i1435.3 = getelementptr inbounds [16 x i16], ptr %345, i64 %idxprom2.i1434
  %346 = load ptr, ptr %arrayidx5.i1436, align 8
  %arrayidx7.i1437.3 = getelementptr inbounds [16 x i16], ptr %346, i64 %idxprom2.i1434
  %call9.i1438.3 = call i32 %344(ptr noundef nonnull %arrayidx710.3, ptr noundef %arrayidx3.i1435.3, ptr noundef %arrayidx7.i1437.3) #6
  br label %x264_quant_4x4.exit.3

x264_quant_4x4.exit.3:                            ; preds = %if.else.i1432.3, %if.then.i1429.3
  %retval.0.i1431.3 = phi i32 [ %call.i1430.3, %if.then.i1429.3 ], [ %call9.i1438.3, %if.else.i1432.3 ]
  %conv713.3 = trunc i32 %retval.0.i1431.3 to i8
  %arrayidx718.3 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %339
  %347 = load i32, ptr %arrayidx718.3, align 4
  %idxprom719.3 = sext i32 %347 to i64
  %arrayidx720.3 = getelementptr inbounds [48 x i8], ptr %non_zero_count, i64 0, i64 %idxprom719.3
  store i8 %conv713.3, ptr %arrayidx720.3, align 1
  %tobool721.not.3 = icmp eq i32 %retval.0.i1431.3, 0
  br i1 %tobool721.not.3, label %if.end751.3, label %if.then722.3

if.then722.3:                                     ; preds = %x264_quant_4x4.exit.3
  %348 = load ptr, ptr %scan_4x4, align 8
  %arrayidx727.3 = getelementptr inbounds [24 x [16 x i16]], ptr %luma4x4725, i64 0, i64 %339
  call void %348(ptr noundef nonnull %arrayidx727.3, ptr noundef nonnull %arrayidx710.3) #6
  %349 = load ptr, ptr %dequant_4x4, align 8
  %350 = load ptr, ptr %arrayidx736, align 8
  call void %349(ptr noundef nonnull %arrayidx710.3, ptr noundef %350, i32 noundef %0) #6
  %cmp739.3 = icmp slt i32 %i_decimate_8x8683.2.2, 6
  %or.cond1045.3 = select i1 %tobool737, i1 %cmp739.3, i1 false
  br i1 %or.cond1045.3, label %if.end751.3.thread, label %if.end751.3.thread1556

if.end751.3.thread:                               ; preds = %if.then722.3
  %351 = load ptr, ptr %decimate_score16, align 8
  %call748.3 = call i32 %351(ptr noundef nonnull %arrayidx727.3) #6
  %add749.3 = add nsw i32 %call748.3, %i_decimate_8x8683.2.2
  %add7551552 = add nsw i32 %add749.3, %i_decimate_mb.21470
  br label %if.then757

if.end751.3:                                      ; preds = %x264_quant_4x4.exit.3
  %add755 = add nsw i32 %i_decimate_8x8683.2.2, %i_decimate_mb.21470
  br i1 %tobool756.not, label %if.else785, label %if.then757

if.end751.3.thread1556:                           ; preds = %if.then722.3
  %add7551559 = add nsw i32 %i_decimate_8x8683.2.2, %i_decimate_mb.21470
  br i1 %tobool756.not, label %if.then787, label %if.then757

if.then757:                                       ; preds = %if.end751.3.thread1556, %if.end751.3.thread, %if.end751.3
  %add7551555 = phi i32 [ %add7551552, %if.end751.3.thread ], [ %add755, %if.end751.3 ], [ %add7551559, %if.end751.3.thread1556 ]
  %i_decimate_8x8683.2.31553 = phi i32 [ %add749.3, %if.end751.3.thread ], [ %i_decimate_8x8683.2.2, %if.end751.3 ], [ %i_decimate_8x8683.2.2, %if.end751.3.thread1556 ]
  %cmp758 = icmp slt i32 %i_decimate_8x8683.2.31553, 4
  br i1 %cmp758, label %if.then760, label %if.else779

if.then760:                                       ; preds = %if.then757
  store i16 0, ptr %arrayidx720, align 1
  %352 = or disjoint i64 %300, 2
  %arrayidx776 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %352
  %353 = load i32, ptr %arrayidx776, align 8
  %idxprom777 = sext i32 %353 to i64
  %arrayidx778 = getelementptr inbounds [48 x i8], ptr %non_zero_count, i64 0, i64 %idxprom777
  store i16 0, ptr %arrayidx778, align 1
  br label %if.end809

if.else779:                                       ; preds = %if.then757
  %354 = trunc nuw nsw i64 %indvars.iv1510 to i32
  %shl780 = shl nuw nsw i32 1, %354
  %355 = load i32, ptr %i_cbp_luma, align 8
  %or783 = or i32 %355, %shl780
  store i32 %or783, ptr %i_cbp_luma, align 8
  br label %if.end809

if.else785:                                       ; preds = %if.end751.3
  %tobool786.not = icmp eq i32 %cbp.1.2, 0
  br i1 %tobool786.not, label %if.end809, label %if.then787

if.then787:                                       ; preds = %if.end751.3.thread1556, %if.else785
  %add75515611565 = phi i32 [ %add755, %if.else785 ], [ %add7551559, %if.end751.3.thread1556 ]
  %356 = load ptr, ptr %add8x8_idct, align 16
  %357 = load ptr, ptr %p_fdec669, align 16
  %358 = shl i64 %indvars.iv1510, 3
  %mul794 = and i64 %358, 8
  %359 = shl i64 %indvars.iv1510, 7
  %mul796 = and i64 %359, 256
  %add798 = or disjoint i64 %mul794, %mul796
  %arrayidx800 = getelementptr inbounds i8, ptr %357, i64 %add798
  call void %356(ptr noundef %arrayidx800, ptr noundef nonnull %arrayidx710) #6
  %360 = trunc nuw nsw i64 %indvars.iv1510 to i32
  %shl804 = shl nuw nsw i32 1, %360
  %361 = load i32, ptr %i_cbp_luma, align 8
  %or807 = or i32 %361, %shl804
  store i32 %or807, ptr %i_cbp_luma, align 8
  br label %if.end809

if.end809:                                        ; preds = %if.else785, %if.then787, %if.then760, %if.else779
  %add7551554 = phi i32 [ %add755, %if.else785 ], [ %add75515611565, %if.then787 ], [ %add7551555, %if.then760 ], [ %add7551555, %if.else779 ]
  %indvars.iv.next1511 = add nuw nsw i64 %indvars.iv1510, 1
  %exitcond1518.not = icmp eq i64 %indvars.iv.next1511, 4
  br i1 %exitcond1518.not, label %for.cond.cleanup681, label %for.cond685.preheader

if.then814:                                       ; preds = %for.cond.cleanup681
  %cmp815 = icmp slt i32 %add7551554, 6
  br i1 %cmp815, label %if.then817, label %for.cond842.preheader

for.cond842.preheader:                            ; preds = %if.then814
  %362 = load i32, ptr %i_cbp_luma, align 8
  %and850 = and i32 %362, 1
  %tobool851.not = icmp eq i32 %and850, 0
  br i1 %tobool851.not, label %for.inc871, label %if.then852

if.then817:                                       ; preds = %if.then814
  store i32 0, ptr %i_cbp_luma, align 8
  %arrayidx824 = getelementptr inbounds i8, ptr %h, i64 25084
  store i32 0, ptr %arrayidx824, align 1
  %arrayidx829 = getelementptr inbounds i8, ptr %h, i64 25092
  store i32 0, ptr %arrayidx829, align 1
  %arrayidx834 = getelementptr inbounds i8, ptr %h, i64 25100
  store i32 0, ptr %arrayidx834, align 1
  %arrayidx839 = getelementptr inbounds i8, ptr %h, i64 25108
  store i32 0, ptr %arrayidx839, align 1
  br label %if.end875

if.then852:                                       ; preds = %for.cond842.preheader
  %363 = load ptr, ptr %add8x8_idct, align 16
  %364 = load ptr, ptr %p_fdec669, align 16
  call void %363(ptr noundef %364, ptr noundef nonnull %dct4x4) #6
  %.pre1536 = load i32, ptr %i_cbp_luma, align 8
  br label %for.inc871

for.inc871:                                       ; preds = %for.cond842.preheader, %if.then852
  %365 = phi i32 [ %362, %for.cond842.preheader ], [ %.pre1536, %if.then852 ]
  %and850.1 = and i32 %365, 2
  %tobool851.not.1 = icmp eq i32 %and850.1, 0
  br i1 %tobool851.not.1, label %for.inc871.1, label %if.then852.1

if.then852.1:                                     ; preds = %for.inc871
  %366 = load ptr, ptr %add8x8_idct, align 16
  %367 = load ptr, ptr %p_fdec669, align 16
  %arrayidx866.1 = getelementptr inbounds i8, ptr %367, i64 8
  %arrayidx869.1 = getelementptr inbounds i8, ptr %dct4x4, i64 128
  call void %366(ptr noundef nonnull %arrayidx866.1, ptr noundef nonnull %arrayidx869.1) #6
  %.pre1537 = load i32, ptr %i_cbp_luma, align 8
  br label %for.inc871.1

for.inc871.1:                                     ; preds = %if.then852.1, %for.inc871
  %368 = phi i32 [ %.pre1537, %if.then852.1 ], [ %365, %for.inc871 ]
  %and850.2 = and i32 %368, 4
  %tobool851.not.2 = icmp eq i32 %and850.2, 0
  br i1 %tobool851.not.2, label %for.inc871.2, label %if.then852.2

if.then852.2:                                     ; preds = %for.inc871.1
  %369 = load ptr, ptr %add8x8_idct, align 16
  %370 = load ptr, ptr %p_fdec669, align 16
  %arrayidx866.2 = getelementptr inbounds i8, ptr %370, i64 256
  %arrayidx869.2 = getelementptr inbounds i8, ptr %dct4x4, i64 256
  call void %369(ptr noundef nonnull %arrayidx866.2, ptr noundef nonnull %arrayidx869.2) #6
  %.pre1538 = load i32, ptr %i_cbp_luma, align 8
  br label %for.inc871.2

for.inc871.2:                                     ; preds = %if.then852.2, %for.inc871.1
  %371 = phi i32 [ %.pre1538, %if.then852.2 ], [ %368, %for.inc871.1 ]
  %and850.3 = and i32 %371, 8
  %tobool851.not.3 = icmp eq i32 %and850.3, 0
  br i1 %tobool851.not.3, label %if.end875, label %if.then852.3

if.then852.3:                                     ; preds = %for.inc871.2
  %372 = load ptr, ptr %add8x8_idct, align 16
  %373 = load ptr, ptr %p_fdec669, align 16
  %arrayidx866.3 = getelementptr inbounds i8, ptr %373, i64 264
  %arrayidx869.3 = getelementptr inbounds i8, ptr %dct4x4, i64 384
  call void %372(ptr noundef nonnull %arrayidx866.3, ptr noundef nonnull %arrayidx869.3) #6
  br label %if.end875

if.end875:                                        ; preds = %for.inc871.2, %if.then852.3, %if.then817, %for.cond.cleanup681
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %dct4x4) #6
  br label %if.end880

if.end880:                                        ; preds = %if.end352, %for.body433, %for.cond370.preheader, %if.end875, %if.end659, %for.cond.cleanup, %x264_mb_encode_i16x16.exit
  %tobool984.not1454 = phi i1 [ %tobool984.not1455, %if.end875 ], [ %tobool984.not1455, %if.end659 ], [ %tobool984.not.ph, %for.cond.cleanup ], [ %tobool984.not.ph, %x264_mb_encode_i16x16.exit ], [ %tobool984.not1455, %for.cond370.preheader ], [ %tobool984.not1455, %for.body433 ], [ %tobool984.not.ph, %if.end352 ]
  %374 = load i32, ptr %i_type, align 8
  %switch = icmp ult i32 %374, 4
  br i1 %switch, label %if.then900, label %if.end922

if.then900:                                       ; preds = %if.end880
  %i_chroma_pred_mode = getelementptr inbounds i8, ptr %h, i64 17412
  %375 = load i32, ptr %i_chroma_pred_mode, align 4
  %b_lossless904 = getelementptr inbounds i8, ptr %h, i64 25812
  %376 = load i32, ptr %b_lossless904, align 4
  %tobool905.not = icmp eq i32 %376, 0
  br i1 %tobool905.not, label %if.else907, label %if.then906

if.then906:                                       ; preds = %if.then900
  %fenc.i1439 = getelementptr inbounds i8, ptr %h, i64 14680
  %377 = load ptr, ptr %fenc.i1439, align 8
  %arrayidx.i1440 = getelementptr inbounds i8, ptr %377, i64 108
  %378 = load i32, ptr %arrayidx.i1440, align 4
  %b_interlaced.i1441 = getelementptr inbounds i8, ptr %h, i64 16436
  %379 = load i32, ptr %b_interlaced.i1441, align 4
  %shl.i1442 = shl i32 %378, %379
  switch i32 %375, label %if.else47.i [
    i32 2, label %if.then.i1444
    i32 1, label %if.then22.i
  ]

if.then.i1444:                                    ; preds = %if.then906
  %arrayidx1.i = getelementptr inbounds i8, ptr %h, i64 32744
  %380 = load ptr, ptr %arrayidx1.i, align 8
  %arrayidx3.i1445 = getelementptr inbounds i8, ptr %h, i64 21400
  %381 = load ptr, ptr %arrayidx3.i1445, align 8
  %arrayidx6.i1446 = getelementptr inbounds i8, ptr %h, i64 21376
  %382 = load ptr, ptr %arrayidx6.i1446, align 8
  %idx.ext.i1447 = sext i32 %shl.i1442 to i64
  %idx.neg.i1448 = sub nsw i64 0, %idx.ext.i1447
  %add.ptr.i1449 = getelementptr inbounds i8, ptr %382, i64 %idx.neg.i1448
  call void %380(ptr noundef %381, i32 noundef 32, ptr noundef %add.ptr.i1449, i32 noundef %shl.i1442, i32 noundef 8) #6
  %383 = load ptr, ptr %arrayidx1.i, align 8
  %arrayidx13.i = getelementptr inbounds i8, ptr %h, i64 21408
  %384 = load ptr, ptr %arrayidx13.i, align 16
  %arrayidx17.i1450 = getelementptr inbounds i8, ptr %h, i64 21384
  %385 = load ptr, ptr %arrayidx17.i1450, align 8
  %add.ptr20.i = getelementptr inbounds i8, ptr %385, i64 %idx.neg.i1448
  call void %383(ptr noundef %384, i32 noundef 32, ptr noundef %add.ptr20.i, i32 noundef %shl.i1442, i32 noundef 8) #6
  br label %if.end922

if.then22.i:                                      ; preds = %if.then906
  %arrayidx25.i1443 = getelementptr inbounds i8, ptr %h, i64 32744
  %386 = load ptr, ptr %arrayidx25.i1443, align 8
  %arrayidx29.i = getelementptr inbounds i8, ptr %h, i64 21400
  %387 = load ptr, ptr %arrayidx29.i, align 8
  %arrayidx33.i = getelementptr inbounds i8, ptr %h, i64 21376
  %388 = load ptr, ptr %arrayidx33.i, align 8
  %add.ptr34.i = getelementptr inbounds i8, ptr %388, i64 -1
  call void %386(ptr noundef %387, i32 noundef 32, ptr noundef nonnull %add.ptr34.i, i32 noundef %shl.i1442, i32 noundef 8) #6
  %389 = load ptr, ptr %arrayidx25.i1443, align 8
  %arrayidx41.i = getelementptr inbounds i8, ptr %h, i64 21408
  %390 = load ptr, ptr %arrayidx41.i, align 16
  %arrayidx45.i = getelementptr inbounds i8, ptr %h, i64 21384
  %391 = load ptr, ptr %arrayidx45.i, align 8
  %add.ptr46.i = getelementptr inbounds i8, ptr %391, i64 -1
  call void %389(ptr noundef %390, i32 noundef 32, ptr noundef nonnull %add.ptr46.i, i32 noundef %shl.i1442, i32 noundef 8) #6
  br label %if.end922

if.else47.i:                                      ; preds = %if.then906
  %predict_8x8c.i = getelementptr inbounds i8, ptr %h, i64 31304
  %idxprom.i1451 = sext i32 %375 to i64
  %arrayidx48.i1452 = getelementptr inbounds [7 x ptr], ptr %predict_8x8c.i, i64 0, i64 %idxprom.i1451
  %392 = load ptr, ptr %arrayidx48.i1452, align 8
  %arrayidx52.i = getelementptr inbounds i8, ptr %h, i64 21400
  %393 = load ptr, ptr %arrayidx52.i, align 8
  call void %392(ptr noundef %393) #6
  %394 = load ptr, ptr %arrayidx48.i1452, align 8
  %arrayidx59.i = getelementptr inbounds i8, ptr %h, i64 21408
  %395 = load ptr, ptr %arrayidx59.i, align 16
  call void %394(ptr noundef %395) #6
  br label %if.end922

if.else907:                                       ; preds = %if.then900
  %predict_8x8c = getelementptr inbounds i8, ptr %h, i64 31304
  %idxprom908 = sext i32 %375 to i64
  %arrayidx909 = getelementptr inbounds [7 x ptr], ptr %predict_8x8c, i64 0, i64 %idxprom908
  %396 = load ptr, ptr %arrayidx909, align 8
  %arrayidx913 = getelementptr inbounds i8, ptr %h, i64 21400
  %397 = load ptr, ptr %arrayidx913, align 8
  call void %396(ptr noundef %397) #6
  %398 = load ptr, ptr %arrayidx909, align 8
  %arrayidx920 = getelementptr inbounds i8, ptr %h, i64 21408
  %399 = load ptr, ptr %arrayidx920, align 16
  call void %398(ptr noundef %399) #6
  br label %if.end922

if.end922:                                        ; preds = %if.else47.i, %if.then22.i, %if.then.i1444, %if.end880, %if.else907
  %400 = load i32, ptr %i_type, align 8
  %narrow = icmp ugt i32 %400, 3
  %lnot941 = zext i1 %narrow to i32
  %i_chroma_qp = getelementptr inbounds i8, ptr %h, i64 25796
  %401 = load i32, ptr %i_chroma_qp, align 4
  call void @x264_mb_encode_8x8_chroma(ptr noundef nonnull %h, i32 noundef %lnot941, i32 noundef %401)
  %i_cbp_chroma = getelementptr inbounds i8, ptr %h, i64 17404
  %402 = load i32, ptr %i_cbp_chroma, align 4
  %shl946 = shl i32 %402, 4
  %403 = load i32, ptr %i_cbp_luma, align 8
  %or949 = or i32 %shl946, %403
  %b_cabac = getelementptr inbounds i8, ptr %h, i64 128
  %404 = load i32, ptr %b_cabac, align 16
  %tobool950.not = icmp eq i32 %404, 0
  br i1 %tobool950.not, label %if.end976, label %if.then951

if.then951:                                       ; preds = %if.end922
  %405 = load i8, ptr %arrayidx, align 1
  %conv957 = zext i8 %405 to i32
  %shl958 = shl nuw nsw i32 %conv957, 8
  %arrayidx963 = getelementptr inbounds i8, ptr %h, i64 25118
  %406 = load i8, ptr %arrayidx963, align 1
  %conv964 = zext i8 %406 to i32
  %shl965 = shl nuw nsw i32 %conv964, 9
  %arrayidx971 = getelementptr inbounds i8, ptr %h, i64 25119
  %407 = load i8, ptr %arrayidx971, align 1
  %conv972 = zext i8 %407 to i32
  %shl973 = shl nuw nsw i32 %conv972, 10
  %408 = or i32 %shl958, %shl965
  %409 = or i32 %408, %shl973
  %or975 = or i32 %409, %or949
  br label %if.end976

if.end976:                                        ; preds = %if.then951, %if.end922
  %cbp944.0 = phi i32 [ %or975, %if.then951 ], [ %or949, %if.end922 ]
  %conv977 = trunc i32 %cbp944.0 to i16
  %cbp979 = getelementptr inbounds i8, ptr %h, i64 16640
  %410 = load ptr, ptr %cbp979, align 16
  %i_mb_xy981 = getelementptr inbounds i8, ptr %h, i64 16392
  %411 = load i32, ptr %i_mb_xy981, align 8
  %idxprom982 = sext i32 %411 to i64
  %arrayidx983 = getelementptr inbounds i16, ptr %410, i64 %idxprom982
  store i16 %conv977, ptr %arrayidx983, align 2
  br i1 %tobool984.not1454, label %if.then985, label %cleanup

if.then985:                                       ; preds = %if.end976
  %412 = load i32, ptr %i_type, align 8
  switch i32 %412, label %cleanup [
    i32 4, label %land.lhs.true990
    i32 7, label %land.lhs.true1030
  ]

land.lhs.true990:                                 ; preds = %if.then985
  %i_partition = getelementptr inbounds i8, ptr %h, i64 17388
  %413 = load i32, ptr %i_partition, align 4
  %cmp992 = icmp eq i32 %413, 16
  br i1 %cmp992, label %land.lhs.true994, label %cleanup

land.lhs.true994:                                 ; preds = %land.lhs.true990
  %414 = load i32, ptr %i_cbp_luma, align 8
  %415 = load i32, ptr %i_cbp_chroma, align 4
  %or999 = or i32 %415, %414
  %tobool1000.not = icmp eq i32 %or999, 0
  br i1 %tobool1000.not, label %land.lhs.true1001, label %cleanup

land.lhs.true1001:                                ; preds = %land.lhs.true994
  %arrayidx1006 = getelementptr inbounds i8, ptr %h, i64 25248
  %416 = load i32, ptr %arrayidx1006, align 4
  %pskip_mv = getelementptr inbounds i8, ptr %h, i64 25764
  %417 = load i32, ptr %pskip_mv, align 4
  %cmp1011 = icmp eq i32 %416, %417
  br i1 %cmp1011, label %land.lhs.true1013, label %cleanup

land.lhs.true1013:                                ; preds = %land.lhs.true1001
  %arrayidx1018 = getelementptr inbounds i8, ptr %h, i64 25132
  %418 = load i8, ptr %arrayidx1018, align 1
  %cmp1020 = icmp eq i8 %418, 0
  br i1 %cmp1020, label %if.end1025.thread, label %cleanup

if.end1025.thread:                                ; preds = %land.lhs.true1013
  store i32 6, ptr %i_type, align 8
  br label %cleanup

land.lhs.true1030:                                ; preds = %if.then985
  %419 = load i32, ptr %i_cbp_luma, align 8
  %420 = load i32, ptr %i_cbp_chroma, align 4
  %or1035 = or i32 %420, %419
  %tobool1036.not = icmp eq i32 %or1035, 0
  br i1 %tobool1036.not, label %if.then1037, label %cleanup

if.then1037:                                      ; preds = %land.lhs.true1030
  store i32 18, ptr %i_type, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then985, %land.lhs.true990, %land.lhs.true994, %land.lhs.true1001, %land.lhs.true1013, %if.end1025.thread, %if.end976, %if.then1037, %land.lhs.true1030, %if.end98, %x264_macroblock_encode_pskip.exit, %if.then
  ret void
}

declare void @x264_mb_mc(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @x264_macroblock_probe_skip(ptr noundef %h, i32 noundef %b_bidir) local_unnamed_addr #0 {
entry:
  %dct4x4 = alloca [4 x [16 x i16]], align 16
  %dct2x2 = alloca [4 x i16], align 16
  %dctscan = alloca [16 x i16], align 16
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %dct4x4) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dct2x2) #6
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %dctscan) #6
  %i_qp1 = getelementptr inbounds i8, ptr %h, i64 25792
  %0 = load i32, ptr %i_qp1, align 16
  %tobool.not = icmp eq i32 %b_bidir, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %pskip_mv = getelementptr inbounds i8, ptr %h, i64 25764
  %1 = load i16, ptr %pskip_mv, align 4
  %conv = sext i16 %1 to i32
  %mv_min = getelementptr inbounds i8, ptr %h, i64 16440
  %2 = load i32, ptr %mv_min, align 8
  %mv_max = getelementptr inbounds i8, ptr %h, i64 16448
  %3 = load i32, ptr %mv_max, align 16
  %cmp.i = icmp sgt i32 %2, %conv
  %cond.i = tail call i32 @llvm.smin.i32(i32 %conv, i32 %3)
  %cond5.i = select i1 %cmp.i, i32 %2, i32 %cond.i
  %conv7 = trunc i32 %cond5.i to i16
  %arrayidx12 = getelementptr inbounds i8, ptr %h, i64 25766
  %4 = load i16, ptr %arrayidx12, align 2
  %conv13 = sext i16 %4 to i32
  %arrayidx16 = getelementptr inbounds i8, ptr %h, i64 16444
  %5 = load i32, ptr %arrayidx16, align 4
  %arrayidx19 = getelementptr inbounds i8, ptr %h, i64 16452
  %6 = load i32, ptr %arrayidx19, align 4
  %cmp.i412 = icmp sgt i32 %5, %conv13
  %cond.i413 = tail call i32 @llvm.smin.i32(i32 %conv13, i32 %6)
  %cond5.i414 = select i1 %cmp.i412, i32 %5, i32 %cond.i413
  %conv21 = trunc i32 %cond5.i414 to i16
  %mc = getelementptr inbounds i8, ptr %h, i64 32616
  %7 = load ptr, ptr %mc, align 8
  %p_fdec = getelementptr inbounds i8, ptr %h, i64 21392
  %8 = load ptr, ptr %p_fdec, align 16
  %p_fref = getelementptr inbounds i8, ptr %h, i64 21424
  %i_stride = getelementptr inbounds i8, ptr %h, i64 25008
  %9 = load i32, ptr %i_stride, align 16
  %sext = shl i32 %cond5.i, 16
  %conv33 = ashr exact i32 %sext, 16
  %sext411 = shl i32 %cond5.i414, 16
  %conv35 = ashr exact i32 %sext411, 16
  %weight = getelementptr inbounds i8, ptr %h, i64 7584
  tail call void %7(ptr noundef %8, i32 noundef 32, ptr noundef nonnull %p_fref, i32 noundef %9, i32 noundef %conv33, i32 noundef %conv35, i32 noundef 16, i32 noundef 16, ptr noundef nonnull %weight) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %mvp.sroa.0.0 = phi i16 [ undef, %entry ], [ %conv7, %if.then ]
  %mvp.sroa.6.0 = phi i16 [ undef, %entry ], [ %conv21, %if.then ]
  %sub8x8_dct = getelementptr inbounds i8, ptr %h, i64 32928
  %p_fenc = getelementptr inbounds i8, ptr %h, i64 21344
  %p_fdec53 = getelementptr inbounds i8, ptr %h, i64 21392
  %quant_4x4 = getelementptr inbounds i8, ptr %h, i64 33088
  %arrayidx64 = getelementptr inbounds i8, ptr %h, i64 3448
  %idxprom65 = sext i32 %0 to i64
  %arrayidx68 = getelementptr inbounds i8, ptr %h, i64 3496
  %scan_4x4 = getelementptr inbounds i8, ptr %h, i64 33040
  %decimate_score16 = getelementptr inbounds i8, ptr %h, i64 33152
  %arrayidx62.1 = getelementptr inbounds i8, ptr %dct4x4, i64 32
  %arrayidx62.2 = getelementptr inbounds i8, ptr %dct4x4, i64 64
  %arrayidx62.3 = getelementptr inbounds i8, ptr %dct4x4, i64 96
  br label %for.body

for.body:                                         ; preds = %if.end, %for.inc.3
  %i_decimate_mb.0424 = phi i32 [ 0, %if.end ], [ %i_decimate_mb.2.3, %for.inc.3 ]
  %i8x8.0423 = phi i32 [ 0, %if.end ], [ %inc92, %for.inc.3 ]
  %and = shl nuw nsw i32 %i8x8.0423, 3
  %mul = and i32 %and, 8
  %shr = lshr i32 %i8x8.0423, 1
  %mul40 = shl nuw nsw i32 %shr, 7
  %add = or disjoint i32 %mul, %mul40
  %mul45 = shl nuw nsw i32 %shr, 8
  %add46 = or disjoint i32 %mul, %mul45
  %10 = load ptr, ptr %sub8x8_dct, align 16
  %11 = load ptr, ptr %p_fenc, align 16
  %idx.ext = zext nneg i32 %add to i64
  %add.ptr = getelementptr inbounds i8, ptr %11, i64 %idx.ext
  %12 = load ptr, ptr %p_fdec53, align 16
  %idx.ext55 = zext nneg i32 %add46 to i64
  %add.ptr56 = getelementptr inbounds i8, ptr %12, i64 %idx.ext55
  call void %10(ptr noundef nonnull %dct4x4, ptr noundef %add.ptr, ptr noundef %add.ptr56) #6
  %13 = load ptr, ptr %quant_4x4, align 8
  %14 = load ptr, ptr %arrayidx64, align 8
  %arrayidx66 = getelementptr inbounds [16 x i16], ptr %14, i64 %idxprom65
  %15 = load ptr, ptr %arrayidx68, align 8
  %arrayidx70 = getelementptr inbounds [16 x i16], ptr %15, i64 %idxprom65
  %call72 = call i32 %13(ptr noundef nonnull %dct4x4, ptr noundef %arrayidx66, ptr noundef %arrayidx70) #6
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %for.inc, label %if.end75

if.end75:                                         ; preds = %for.body
  %16 = load ptr, ptr %scan_4x4, align 8
  call void %16(ptr noundef nonnull %dctscan, ptr noundef nonnull %dct4x4) #6
  %17 = load ptr, ptr %decimate_score16, align 8
  %call82 = call i32 %17(ptr noundef nonnull %dctscan) #6
  %add83 = add nsw i32 %call82, %i_decimate_mb.0424
  %cmp84 = icmp sgt i32 %add83, 5
  br i1 %cmp84, label %cleanup303, label %for.inc

for.inc:                                          ; preds = %if.end75, %for.body
  %i_decimate_mb.2 = phi i32 [ %add83, %if.end75 ], [ %i_decimate_mb.0424, %for.body ]
  %18 = load ptr, ptr %quant_4x4, align 8
  %19 = load ptr, ptr %arrayidx64, align 8
  %arrayidx66.1 = getelementptr inbounds [16 x i16], ptr %19, i64 %idxprom65
  %20 = load ptr, ptr %arrayidx68, align 8
  %arrayidx70.1 = getelementptr inbounds [16 x i16], ptr %20, i64 %idxprom65
  %call72.1 = call i32 %18(ptr noundef nonnull %arrayidx62.1, ptr noundef %arrayidx66.1, ptr noundef %arrayidx70.1) #6
  %tobool73.not.1 = icmp eq i32 %call72.1, 0
  br i1 %tobool73.not.1, label %for.inc.1, label %if.end75.1

if.end75.1:                                       ; preds = %for.inc
  %21 = load ptr, ptr %scan_4x4, align 8
  call void %21(ptr noundef nonnull %dctscan, ptr noundef nonnull %arrayidx62.1) #6
  %22 = load ptr, ptr %decimate_score16, align 8
  %call82.1 = call i32 %22(ptr noundef nonnull %dctscan) #6
  %add83.1 = add nsw i32 %call82.1, %i_decimate_mb.2
  %cmp84.1 = icmp sgt i32 %add83.1, 5
  br i1 %cmp84.1, label %cleanup303, label %for.inc.1

for.inc.1:                                        ; preds = %if.end75.1, %for.inc
  %i_decimate_mb.2.1 = phi i32 [ %add83.1, %if.end75.1 ], [ %i_decimate_mb.2, %for.inc ]
  %23 = load ptr, ptr %quant_4x4, align 8
  %24 = load ptr, ptr %arrayidx64, align 8
  %arrayidx66.2 = getelementptr inbounds [16 x i16], ptr %24, i64 %idxprom65
  %25 = load ptr, ptr %arrayidx68, align 8
  %arrayidx70.2 = getelementptr inbounds [16 x i16], ptr %25, i64 %idxprom65
  %call72.2 = call i32 %23(ptr noundef nonnull %arrayidx62.2, ptr noundef %arrayidx66.2, ptr noundef %arrayidx70.2) #6
  %tobool73.not.2 = icmp eq i32 %call72.2, 0
  br i1 %tobool73.not.2, label %for.inc.2, label %if.end75.2

if.end75.2:                                       ; preds = %for.inc.1
  %26 = load ptr, ptr %scan_4x4, align 8
  call void %26(ptr noundef nonnull %dctscan, ptr noundef nonnull %arrayidx62.2) #6
  %27 = load ptr, ptr %decimate_score16, align 8
  %call82.2 = call i32 %27(ptr noundef nonnull %dctscan) #6
  %add83.2 = add nsw i32 %call82.2, %i_decimate_mb.2.1
  %cmp84.2 = icmp sgt i32 %add83.2, 5
  br i1 %cmp84.2, label %cleanup303, label %for.inc.2

for.inc.2:                                        ; preds = %if.end75.2, %for.inc.1
  %i_decimate_mb.2.2 = phi i32 [ %add83.2, %if.end75.2 ], [ %i_decimate_mb.2.1, %for.inc.1 ]
  %28 = load ptr, ptr %quant_4x4, align 8
  %29 = load ptr, ptr %arrayidx64, align 8
  %arrayidx66.3 = getelementptr inbounds [16 x i16], ptr %29, i64 %idxprom65
  %30 = load ptr, ptr %arrayidx68, align 8
  %arrayidx70.3 = getelementptr inbounds [16 x i16], ptr %30, i64 %idxprom65
  %call72.3 = call i32 %28(ptr noundef nonnull %arrayidx62.3, ptr noundef %arrayidx66.3, ptr noundef %arrayidx70.3) #6
  %tobool73.not.3 = icmp eq i32 %call72.3, 0
  br i1 %tobool73.not.3, label %for.inc.3, label %if.end75.3

if.end75.3:                                       ; preds = %for.inc.2
  %31 = load ptr, ptr %scan_4x4, align 8
  call void %31(ptr noundef nonnull %dctscan, ptr noundef nonnull %arrayidx62.3) #6
  %32 = load ptr, ptr %decimate_score16, align 8
  %call82.3 = call i32 %32(ptr noundef nonnull %dctscan) #6
  %add83.3 = add nsw i32 %call82.3, %i_decimate_mb.2.2
  %cmp84.3 = icmp sgt i32 %add83.3, 5
  br i1 %cmp84.3, label %cleanup303, label %for.inc.3

for.inc.3:                                        ; preds = %if.end75.3, %for.inc.2
  %i_decimate_mb.2.3 = phi i32 [ %add83.3, %if.end75.3 ], [ %i_decimate_mb.2.2, %for.inc.2 ]
  %inc92 = add nuw nsw i32 %i8x8.0423, 1
  %exitcond = icmp eq i32 %inc92, 4
  br i1 %exitcond, label %for.end96, label %for.body

for.end96:                                        ; preds = %for.inc.3
  %i_chroma_qp = getelementptr inbounds i8, ptr %h, i64 25796
  %33 = load i32, ptr %i_chroma_qp, align 4
  %idxprom98 = sext i32 %33 to i64
  %arrayidx99 = getelementptr inbounds [52 x i32], ptr @x264_lambda2_tab, i64 0, i64 %idxprom98
  %34 = load i32, ptr %arrayidx99, align 4
  %add100 = add nsw i32 %34, 32
  %shr101 = ashr i32 %add100, 6
  %mvp.sroa.6.0.insert.ext = zext i16 %mvp.sroa.6.0 to i32
  %mvp.sroa.6.0.insert.shift = shl nuw i32 %mvp.sroa.6.0.insert.ext, 16
  %mvp.sroa.0.0.insert.ext = zext i16 %mvp.sroa.0.0 to i32
  %mvp.sroa.0.0.insert.insert = or disjoint i32 %mvp.sroa.6.0.insert.shift, %mvp.sroa.0.0.insert.ext
  %tobool122.not = icmp eq i32 %mvp.sroa.0.0.insert.insert, 0
  %mc_chroma = getelementptr inbounds i8, ptr %h, i64 32632
  %p_fref133 = getelementptr inbounds i8, ptr %h, i64 21424
  %i_stride141 = getelementptr inbounds i8, ptr %h, i64 25008
  %conv146 = sext i16 %mvp.sroa.0.0 to i32
  %conv148 = sext i16 %mvp.sroa.6.0 to i32
  %arrayidx150 = getelementptr inbounds i8, ptr %h, i64 32744
  %weight173 = getelementptr inbounds i8, ptr %h, i64 7584
  %arrayidx209 = getelementptr inbounds i8, ptr %h, i64 31640
  %sub8x8_dct_dc = getelementptr inbounds i8, ptr %h, i64 32936
  %quant_2x2_dc = getelementptr inbounds i8, ptr %h, i64 33104
  %arrayidx220 = getelementptr inbounds i8, ptr %h, i64 3464
  %arrayidx227 = getelementptr inbounds i8, ptr %h, i64 3512
  %mul236 = shl nsw i32 %shr101, 2
  %decimate_score15 = getelementptr inbounds i8, ptr %h, i64 33144
  br label %for.body106

for.body106:                                      ; preds = %for.end96, %for.inc297
  %cmp103.not = phi i1 [ true, %for.end96 ], [ false, %for.inc297 ]
  %indvars.iv = phi i64 [ 0, %for.end96 ], [ 1, %for.inc297 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %arrayidx112 = getelementptr inbounds [3 x ptr], ptr %p_fenc, i64 0, i64 %indvars.iv.next
  %35 = load ptr, ptr %arrayidx112, align 8
  %arrayidx118 = getelementptr inbounds [3 x ptr], ptr %p_fdec53, i64 0, i64 %indvars.iv.next
  %36 = load ptr, ptr %arrayidx118, align 8
  br i1 %tobool.not, label %if.then120, label %if.end207

if.then120:                                       ; preds = %for.body106
  %37 = or disjoint i64 %indvars.iv, 4
  %arrayidx164 = getelementptr inbounds [6 x ptr], ptr %p_fref133, i64 0, i64 %37
  %38 = load ptr, ptr %arrayidx164, align 8
  %arrayidx170 = getelementptr inbounds [3 x i32], ptr %i_stride141, i64 0, i64 %indvars.iv.next
  %39 = load i32, ptr %arrayidx170, align 4
  br i1 %tobool122.not, label %if.else, label %if.then123

if.then123:                                       ; preds = %if.then120
  %40 = load ptr, ptr %mc_chroma, align 8
  call void %40(ptr noundef %36, i32 noundef 32, ptr noundef %38, i32 noundef %39, i32 noundef %conv146, i32 noundef %conv148, i32 noundef 8, i32 noundef 8) #6
  br label %if.end171

if.else:                                          ; preds = %if.then120
  %41 = load ptr, ptr %arrayidx150, align 8
  call void %41(ptr noundef %36, i32 noundef 32, ptr noundef %38, i32 noundef %39, i32 noundef 8) #6
  br label %if.end171

if.end171:                                        ; preds = %if.else, %if.then123
  %arrayidx177 = getelementptr inbounds [3 x %struct.x264_weight_t], ptr %weight173, i64 0, i64 %indvars.iv.next
  %weightfn = getelementptr inbounds i8, ptr %arrayidx177, i64 48
  %42 = load ptr, ptr %weightfn, align 16
  %tobool178.not = icmp eq ptr %42, null
  br i1 %tobool178.not, label %if.end207, label %if.then179

if.then179:                                       ; preds = %if.end171
  %arrayidx187 = getelementptr inbounds i8, ptr %42, i64 16
  %43 = load ptr, ptr %arrayidx187, align 8
  %44 = load ptr, ptr %arrayidx118, align 8
  call void %43(ptr noundef %44, i32 noundef 32, ptr noundef %44, i32 noundef 32, ptr noundef nonnull %arrayidx177, i32 noundef 8) #6
  br label %if.end207

if.end207:                                        ; preds = %if.end171, %if.then179, %for.body106
  %45 = load ptr, ptr %arrayidx209, align 8
  %call210 = call i32 %45(ptr noundef %36, i32 noundef 32, ptr noundef %35, i32 noundef 16) #6
  %cmp211 = icmp slt i32 %call210, %shr101
  br i1 %cmp211, label %for.inc297, label %if.end214

if.end214:                                        ; preds = %if.end207
  %46 = load ptr, ptr %sub8x8_dct_dc, align 8
  call void %46(ptr noundef nonnull %dct2x2, ptr noundef %35, ptr noundef %36) #6
  %47 = load ptr, ptr %quant_2x2_dc, align 8
  %48 = load ptr, ptr %arrayidx220, align 8
  %arrayidx222 = getelementptr inbounds [16 x i16], ptr %48, i64 %idxprom98
  %49 = load i16, ptr %arrayidx222, align 2
  %50 = lshr i16 %49, 1
  %shr225 = zext nneg i16 %50 to i32
  %51 = load ptr, ptr %arrayidx227, align 8
  %arrayidx229 = getelementptr inbounds [16 x i16], ptr %51, i64 %idxprom98
  %52 = load i16, ptr %arrayidx229, align 2
  %conv231 = zext i16 %52 to i32
  %shl = shl nuw nsw i32 %conv231, 1
  %call232 = call i32 %47(ptr noundef nonnull %dct2x2, i32 noundef %shr225, i32 noundef %shl) #6
  %tobool233.not = icmp eq i32 %call232, 0
  br i1 %tobool233.not, label %if.end235, label %cleanup303

if.end235:                                        ; preds = %if.end214
  %cmp237 = icmp slt i32 %call210, %mul236
  br i1 %cmp237, label %for.inc297, label %if.end240

if.end240:                                        ; preds = %if.end235
  %53 = load ptr, ptr %sub8x8_dct, align 16
  call void %53(ptr noundef nonnull %dct4x4, ptr noundef %35, ptr noundef %36) #6
  store i16 0, ptr %dct4x4, align 16
  %54 = load ptr, ptr %quant_4x4, align 8
  %55 = load ptr, ptr %arrayidx220, align 8
  %arrayidx262 = getelementptr inbounds [16 x i16], ptr %55, i64 %idxprom98
  %56 = load ptr, ptr %arrayidx227, align 8
  %arrayidx267 = getelementptr inbounds [16 x i16], ptr %56, i64 %idxprom98
  %call269 = call i32 %54(ptr noundef nonnull %dct4x4, ptr noundef %arrayidx262, ptr noundef %arrayidx267) #6
  %tobool270.not = icmp eq i32 %call269, 0
  br i1 %tobool270.not, label %for.inc287, label %if.end272

if.end272:                                        ; preds = %if.end240
  %57 = load ptr, ptr %scan_4x4, align 8
  call void %57(ptr noundef nonnull %dctscan, ptr noundef nonnull %dct4x4) #6
  %58 = load ptr, ptr %decimate_score15, align 8
  %call281 = call i32 %58(ptr noundef nonnull %dctscan) #6
  %cmp283 = icmp sgt i32 %call281, 6
  br i1 %cmp283, label %cleanup303, label %for.inc287

for.inc287:                                       ; preds = %if.end272, %if.end240
  %i_decimate_mb245.1 = phi i32 [ %call281, %if.end272 ], [ 0, %if.end240 ]
  store i16 0, ptr %arrayidx62.1, align 16
  %59 = load ptr, ptr %quant_4x4, align 8
  %60 = load ptr, ptr %arrayidx220, align 8
  %arrayidx262.1 = getelementptr inbounds [16 x i16], ptr %60, i64 %idxprom98
  %61 = load ptr, ptr %arrayidx227, align 8
  %arrayidx267.1 = getelementptr inbounds [16 x i16], ptr %61, i64 %idxprom98
  %call269.1 = call i32 %59(ptr noundef nonnull %arrayidx62.1, ptr noundef %arrayidx262.1, ptr noundef %arrayidx267.1) #6
  %tobool270.not.1 = icmp eq i32 %call269.1, 0
  br i1 %tobool270.not.1, label %for.inc287.1, label %if.end272.1

if.end272.1:                                      ; preds = %for.inc287
  %62 = load ptr, ptr %scan_4x4, align 8
  call void %62(ptr noundef nonnull %dctscan, ptr noundef nonnull %arrayidx62.1) #6
  %63 = load ptr, ptr %decimate_score15, align 8
  %call281.1 = call i32 %63(ptr noundef nonnull %dctscan) #6
  %add282.1 = add nsw i32 %call281.1, %i_decimate_mb245.1
  %cmp283.1 = icmp sgt i32 %add282.1, 6
  br i1 %cmp283.1, label %cleanup303, label %for.inc287.1

for.inc287.1:                                     ; preds = %if.end272.1, %for.inc287
  %i_decimate_mb245.1.1 = phi i32 [ %add282.1, %if.end272.1 ], [ %i_decimate_mb245.1, %for.inc287 ]
  store i16 0, ptr %arrayidx62.2, align 16
  %64 = load ptr, ptr %quant_4x4, align 8
  %65 = load ptr, ptr %arrayidx220, align 8
  %arrayidx262.2 = getelementptr inbounds [16 x i16], ptr %65, i64 %idxprom98
  %66 = load ptr, ptr %arrayidx227, align 8
  %arrayidx267.2 = getelementptr inbounds [16 x i16], ptr %66, i64 %idxprom98
  %call269.2 = call i32 %64(ptr noundef nonnull %arrayidx62.2, ptr noundef %arrayidx262.2, ptr noundef %arrayidx267.2) #6
  %tobool270.not.2 = icmp eq i32 %call269.2, 0
  br i1 %tobool270.not.2, label %for.inc287.2, label %if.end272.2

if.end272.2:                                      ; preds = %for.inc287.1
  %67 = load ptr, ptr %scan_4x4, align 8
  call void %67(ptr noundef nonnull %dctscan, ptr noundef nonnull %arrayidx62.2) #6
  %68 = load ptr, ptr %decimate_score15, align 8
  %call281.2 = call i32 %68(ptr noundef nonnull %dctscan) #6
  %add282.2 = add nsw i32 %call281.2, %i_decimate_mb245.1.1
  %cmp283.2 = icmp sgt i32 %add282.2, 6
  br i1 %cmp283.2, label %cleanup303, label %for.inc287.2

for.inc287.2:                                     ; preds = %if.end272.2, %for.inc287.1
  %i_decimate_mb245.1.2 = phi i32 [ %add282.2, %if.end272.2 ], [ %i_decimate_mb245.1.1, %for.inc287.1 ]
  store i16 0, ptr %arrayidx62.3, align 16
  %69 = load ptr, ptr %quant_4x4, align 8
  %70 = load ptr, ptr %arrayidx220, align 8
  %arrayidx262.3 = getelementptr inbounds [16 x i16], ptr %70, i64 %idxprom98
  %71 = load ptr, ptr %arrayidx227, align 8
  %arrayidx267.3 = getelementptr inbounds [16 x i16], ptr %71, i64 %idxprom98
  %call269.3 = call i32 %69(ptr noundef nonnull %arrayidx62.3, ptr noundef %arrayidx262.3, ptr noundef %arrayidx267.3) #6
  %tobool270.not.3 = icmp eq i32 %call269.3, 0
  br i1 %tobool270.not.3, label %for.inc297, label %if.end272.3

if.end272.3:                                      ; preds = %for.inc287.2
  %72 = load ptr, ptr %scan_4x4, align 8
  call void %72(ptr noundef nonnull %dctscan, ptr noundef nonnull %arrayidx62.3) #6
  %73 = load ptr, ptr %decimate_score15, align 8
  %call281.3 = call i32 %73(ptr noundef nonnull %dctscan) #6
  %add282.3 = add nsw i32 %call281.3, %i_decimate_mb245.1.2
  %cmp283.3 = icmp sgt i32 %add282.3, 6
  br i1 %cmp283.3, label %cleanup303, label %for.inc297

for.inc297:                                       ; preds = %for.inc287.2, %if.end272.3, %if.end207, %if.end235
  br i1 %cmp103.not, label %for.body106, label %for.end301

for.end301:                                       ; preds = %for.inc297
  %b_skip_mc = getelementptr inbounds i8, ptr %h, i64 17420
  store i32 1, ptr %b_skip_mc, align 4
  br label %cleanup303

cleanup303:                                       ; preds = %if.end75, %if.end75.1, %if.end75.2, %if.end75.3, %if.end214, %if.end272, %if.end272.1, %if.end272.2, %if.end272.3, %for.end301
  %retval.7 = phi i32 [ 1, %for.end301 ], [ 0, %if.end272.3 ], [ 0, %if.end272.2 ], [ 0, %if.end272.1 ], [ 0, %if.end272 ], [ 0, %if.end214 ], [ 0, %if.end75.3 ], [ 0, %if.end75.2 ], [ 0, %if.end75.1 ], [ 0, %if.end75 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %dctscan) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dct2x2) #6
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %dct4x4) #6
  ret i32 %retval.7
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @x264_noise_reduction_update(ptr nocapture noundef %h) local_unnamed_addr #4 {
entry:
  %nr_count = getelementptr inbounds i8, ptr %h, i64 31168
  %i_noise_reduction = getelementptr inbounds i8, ptr %h, i64 452
  %0 = load i32, ptr %i_noise_reduction, align 4
  %conv = sext i32 %0 to i64
  %nr_residual_sum27 = getelementptr inbounds i8, ptr %h, i64 30400
  %nr_offset = getelementptr i8, ptr %h, i64 30912
  %1 = load i32, ptr %nr_count, align 4
  %cmp5 = icmp ugt i32 %1, 262144
  %.pre = load i32, ptr %nr_residual_sum27, align 4
  br i1 %cmp5, label %for.body9.preheader, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  %arrayidx31.1101.phi.trans.insert = getelementptr inbounds i8, ptr %h, i64 30404
  %.pre123 = load i32, ptr %arrayidx31.1101.phi.trans.insert, align 4
  %arrayidx31.2.phi.trans.insert = getelementptr inbounds i8, ptr %h, i64 30408
  %.pre124 = load i32, ptr %arrayidx31.2.phi.trans.insert, align 4
  %arrayidx31.3.phi.trans.insert = getelementptr inbounds i8, ptr %h, i64 30412
  %.pre125 = load i32, ptr %arrayidx31.3.phi.trans.insert, align 4
  %arrayidx31.4.phi.trans.insert = getelementptr inbounds i8, ptr %h, i64 30416
  %.pre126 = load i32, ptr %arrayidx31.4.phi.trans.insert, align 4
  %arrayidx31.5.phi.trans.insert = getelementptr inbounds i8, ptr %h, i64 30420
  %.pre127 = load i32, ptr %arrayidx31.5.phi.trans.insert, align 4
  %arrayidx31.6.phi.trans.insert = getelementptr inbounds i8, ptr %h, i64 30424
  %.pre128 = load i32, ptr %arrayidx31.6.phi.trans.insert, align 4
  %arrayidx31.7.phi.trans.insert = getelementptr inbounds i8, ptr %h, i64 30428
  %.pre129 = load i32, ptr %arrayidx31.7.phi.trans.insert, align 4
  br label %if.end

for.body9.preheader:                              ; preds = %entry
  %shr = lshr i32 %.pre, 1
  store i32 %shr, ptr %nr_residual_sum27, align 4
  %arrayidx13.1118 = getelementptr inbounds i8, ptr %h, i64 30404
  %2 = load <4 x i32>, ptr %arrayidx13.1118, align 4
  %3 = lshr <4 x i32> %2, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %3, ptr %arrayidx13.1118, align 4
  %arrayidx13.5 = getelementptr inbounds i8, ptr %h, i64 30420
  %4 = load <4 x i32>, ptr %arrayidx13.5, align 4
  %5 = lshr <4 x i32> %4, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %5, ptr %arrayidx13.5, align 4
  %arrayidx13.9 = getelementptr inbounds i8, ptr %h, i64 30436
  %6 = load <4 x i32>, ptr %arrayidx13.9, align 4
  %7 = lshr <4 x i32> %6, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %7, ptr %arrayidx13.9, align 4
  %arrayidx13.13 = getelementptr inbounds i8, ptr %h, i64 30452
  %8 = load <2 x i32>, ptr %arrayidx13.13, align 4
  %9 = lshr <2 x i32> %8, <i32 1, i32 1>
  store <2 x i32> %9, ptr %arrayidx13.13, align 4
  %arrayidx13.15 = getelementptr inbounds i8, ptr %h, i64 30460
  %10 = load i32, ptr %arrayidx13.15, align 4
  %shr.15 = lshr i32 %10, 1
  store i32 %shr.15, ptr %arrayidx13.15, align 4
  %shr17 = lshr i32 %1, 1
  store i32 %shr17, ptr %nr_count, align 4
  %11 = extractelement <4 x i32> %3, i64 0
  %12 = extractelement <4 x i32> %3, i64 1
  %13 = extractelement <4 x i32> %3, i64 2
  %14 = extractelement <4 x i32> %3, i64 3
  %15 = extractelement <4 x i32> %5, i64 0
  %16 = extractelement <4 x i32> %5, i64 1
  %17 = extractelement <4 x i32> %5, i64 2
  br label %if.end

if.end:                                           ; preds = %entry.if.end_crit_edge, %for.body9.preheader
  %18 = phi i32 [ %17, %for.body9.preheader ], [ %.pre129, %entry.if.end_crit_edge ]
  %19 = phi i32 [ %16, %for.body9.preheader ], [ %.pre128, %entry.if.end_crit_edge ]
  %20 = phi i32 [ %15, %for.body9.preheader ], [ %.pre127, %entry.if.end_crit_edge ]
  %21 = phi i32 [ %14, %for.body9.preheader ], [ %.pre126, %entry.if.end_crit_edge ]
  %22 = phi i32 [ %13, %for.body9.preheader ], [ %.pre125, %entry.if.end_crit_edge ]
  %23 = phi i32 [ %12, %for.body9.preheader ], [ %.pre124, %entry.if.end_crit_edge ]
  %24 = phi i32 [ %11, %for.body9.preheader ], [ %.pre123, %entry.if.end_crit_edge ]
  %25 = phi i32 [ %shr, %for.body9.preheader ], [ %.pre, %entry.if.end_crit_edge ]
  %26 = phi i32 [ %shr17, %for.body9.preheader ], [ %1, %entry.if.end_crit_edge ]
  %conv26 = zext nneg i32 %26 to i64
  %mul = mul nsw i64 %conv26, %conv
  %div83 = lshr i32 %25, 1
  %conv32 = zext nneg i32 %div83 to i64
  %add = add nsw i64 %mul, %conv32
  %conv38 = zext i32 %25 to i64
  %mul42 = mul nuw nsw i64 %conv38, 800
  %div4384 = lshr i64 %mul42, 8
  %add44 = add nuw nsw i64 %div4384, 1
  %div45 = udiv i64 %add, %add44
  %conv46 = trunc i64 %div45 to i16
  store i16 %conv46, ptr %nr_offset, align 2
  %div83.1102 = lshr i32 %24, 1
  %conv32.1103 = zext nneg i32 %div83.1102 to i64
  %add.1104 = add nsw i64 %mul, %conv32.1103
  %conv38.1105 = zext i32 %24 to i64
  %mul42.1108 = mul nuw nsw i64 %conv38.1105, 320
  %div4384.1109 = lshr i64 %mul42.1108, 8
  %add44.1110 = add nuw nsw i64 %div4384.1109, 1
  %div45.1111 = udiv i64 %add.1104, %add44.1110
  %conv46.1112 = trunc i64 %div45.1111 to i16
  %arrayidx50.1113 = getelementptr inbounds i8, ptr %h, i64 30914
  store i16 %conv46.1112, ptr %arrayidx50.1113, align 2
  %div83.2 = lshr i32 %23, 1
  %conv32.2 = zext nneg i32 %div83.2 to i64
  %add.2 = add nsw i64 %mul, %conv32.2
  %conv38.2 = zext i32 %23 to i64
  %mul42.2 = mul nuw nsw i64 %conv38.2, 800
  %div4384.2 = lshr i64 %mul42.2, 8
  %add44.2 = add nuw nsw i64 %div4384.2, 1
  %div45.2 = udiv i64 %add.2, %add44.2
  %conv46.2 = trunc i64 %div45.2 to i16
  %arrayidx50.2 = getelementptr inbounds i8, ptr %h, i64 30916
  store i16 %conv46.2, ptr %arrayidx50.2, align 2
  %div83.3 = lshr i32 %22, 1
  %conv32.3 = zext nneg i32 %div83.3 to i64
  %add.3 = add nsw i64 %mul, %conv32.3
  %conv38.3 = zext i32 %22 to i64
  %mul42.3 = mul nuw nsw i64 %conv38.3, 320
  %div4384.3 = lshr i64 %mul42.3, 8
  %add44.3 = add nuw nsw i64 %div4384.3, 1
  %div45.3 = udiv i64 %add.3, %add44.3
  %conv46.3 = trunc i64 %div45.3 to i16
  %arrayidx50.3 = getelementptr inbounds i8, ptr %h, i64 30918
  store i16 %conv46.3, ptr %arrayidx50.3, align 2
  %div83.4 = lshr i32 %21, 1
  %conv32.4 = zext nneg i32 %div83.4 to i64
  %add.4 = add nsw i64 %mul, %conv32.4
  %conv38.4 = zext i32 %21 to i64
  %mul42.4 = mul nuw nsw i64 %conv38.4, 320
  %div4384.4 = lshr i64 %mul42.4, 8
  %add44.4 = add nuw nsw i64 %div4384.4, 1
  %div45.4 = udiv i64 %add.4, %add44.4
  %conv46.4 = trunc i64 %div45.4 to i16
  %arrayidx50.4 = getelementptr inbounds i8, ptr %h, i64 30920
  store i16 %conv46.4, ptr %arrayidx50.4, align 2
  %div83.5 = lshr i32 %20, 1
  %conv32.5 = zext nneg i32 %div83.5 to i64
  %add.5 = add nsw i64 %mul, %conv32.5
  %27 = lshr i32 %20, 1
  %narrow = add nuw i32 %27, 1
  %add44.5 = zext i32 %narrow to i64
  %div45.5 = udiv i64 %add.5, %add44.5
  %conv46.5 = trunc i64 %div45.5 to i16
  %arrayidx50.5 = getelementptr inbounds i8, ptr %h, i64 30922
  store i16 %conv46.5, ptr %arrayidx50.5, align 2
  %div83.6 = lshr i32 %19, 1
  %conv32.6 = zext nneg i32 %div83.6 to i64
  %add.6 = add nsw i64 %mul, %conv32.6
  %conv38.6 = zext i32 %19 to i64
  %mul42.6 = mul nuw nsw i64 %conv38.6, 320
  %div4384.6 = lshr i64 %mul42.6, 8
  %add44.6 = add nuw nsw i64 %div4384.6, 1
  %div45.6 = udiv i64 %add.6, %add44.6
  %conv46.6 = trunc i64 %div45.6 to i16
  %arrayidx50.6 = getelementptr inbounds i8, ptr %h, i64 30924
  store i16 %conv46.6, ptr %arrayidx50.6, align 2
  %div83.7 = lshr i32 %18, 1
  %conv32.7 = zext nneg i32 %div83.7 to i64
  %add.7 = add nsw i64 %mul, %conv32.7
  %28 = lshr i32 %18, 1
  %narrow130 = add nuw i32 %28, 1
  %add44.7 = zext i32 %narrow130 to i64
  %div45.7 = udiv i64 %add.7, %add44.7
  %conv46.7 = trunc i64 %div45.7 to i16
  %arrayidx50.7 = getelementptr inbounds i8, ptr %h, i64 30926
  store i16 %conv46.7, ptr %arrayidx50.7, align 2
  %29 = load i32, ptr %nr_count, align 4
  %conv26.8 = zext i32 %29 to i64
  %mul.8 = mul nsw i64 %conv26.8, %conv
  %arrayidx31.8 = getelementptr inbounds i8, ptr %h, i64 30432
  %30 = load i32, ptr %arrayidx31.8, align 4
  %div83.8 = lshr i32 %30, 1
  %conv32.8 = zext nneg i32 %div83.8 to i64
  %add.8 = add nsw i64 %mul.8, %conv32.8
  %conv38.8 = zext i32 %30 to i64
  %mul42.8 = mul nuw nsw i64 %conv38.8, 800
  %div4384.8 = lshr i64 %mul42.8, 8
  %add44.8 = add nuw nsw i64 %div4384.8, 1
  %div45.8 = udiv i64 %add.8, %add44.8
  %conv46.8 = trunc i64 %div45.8 to i16
  %arrayidx50.8 = getelementptr inbounds i8, ptr %h, i64 30928
  store i16 %conv46.8, ptr %arrayidx50.8, align 2
  %arrayidx31.9 = getelementptr inbounds i8, ptr %h, i64 30436
  %31 = load i32, ptr %arrayidx31.9, align 4
  %div83.9 = lshr i32 %31, 1
  %conv32.9 = zext nneg i32 %div83.9 to i64
  %add.9 = add nsw i64 %mul.8, %conv32.9
  %conv38.9 = zext i32 %31 to i64
  %mul42.9 = mul nuw nsw i64 %conv38.9, 320
  %div4384.9 = lshr i64 %mul42.9, 8
  %add44.9 = add nuw nsw i64 %div4384.9, 1
  %div45.9 = udiv i64 %add.9, %add44.9
  %conv46.9 = trunc i64 %div45.9 to i16
  %arrayidx50.9 = getelementptr inbounds i8, ptr %h, i64 30930
  store i16 %conv46.9, ptr %arrayidx50.9, align 2
  %arrayidx31.10 = getelementptr inbounds i8, ptr %h, i64 30440
  %32 = load i32, ptr %arrayidx31.10, align 4
  %div83.10 = lshr i32 %32, 1
  %conv32.10 = zext nneg i32 %div83.10 to i64
  %add.10 = add nsw i64 %mul.8, %conv32.10
  %conv38.10 = zext i32 %32 to i64
  %mul42.10 = mul nuw nsw i64 %conv38.10, 800
  %div4384.10 = lshr i64 %mul42.10, 8
  %add44.10 = add nuw nsw i64 %div4384.10, 1
  %div45.10 = udiv i64 %add.10, %add44.10
  %conv46.10 = trunc i64 %div45.10 to i16
  %arrayidx50.10 = getelementptr inbounds i8, ptr %h, i64 30932
  store i16 %conv46.10, ptr %arrayidx50.10, align 2
  %arrayidx31.11 = getelementptr inbounds i8, ptr %h, i64 30444
  %33 = load i32, ptr %arrayidx31.11, align 4
  %div83.11 = lshr i32 %33, 1
  %conv32.11 = zext nneg i32 %div83.11 to i64
  %add.11 = add nsw i64 %mul.8, %conv32.11
  %conv38.11 = zext i32 %33 to i64
  %mul42.11 = mul nuw nsw i64 %conv38.11, 320
  %div4384.11 = lshr i64 %mul42.11, 8
  %add44.11 = add nuw nsw i64 %div4384.11, 1
  %div45.11 = udiv i64 %add.11, %add44.11
  %conv46.11 = trunc i64 %div45.11 to i16
  %arrayidx50.11 = getelementptr inbounds i8, ptr %h, i64 30934
  store i16 %conv46.11, ptr %arrayidx50.11, align 2
  %arrayidx31.12 = getelementptr inbounds i8, ptr %h, i64 30448
  %34 = load i32, ptr %arrayidx31.12, align 4
  %div83.12 = lshr i32 %34, 1
  %conv32.12 = zext nneg i32 %div83.12 to i64
  %add.12 = add nsw i64 %mul.8, %conv32.12
  %conv38.12 = zext i32 %34 to i64
  %mul42.12 = mul nuw nsw i64 %conv38.12, 320
  %div4384.12 = lshr i64 %mul42.12, 8
  %add44.12 = add nuw nsw i64 %div4384.12, 1
  %div45.12 = udiv i64 %add.12, %add44.12
  %conv46.12 = trunc i64 %div45.12 to i16
  %arrayidx50.12 = getelementptr inbounds i8, ptr %h, i64 30936
  store i16 %conv46.12, ptr %arrayidx50.12, align 2
  %arrayidx31.13 = getelementptr inbounds i8, ptr %h, i64 30452
  %35 = load i32, ptr %arrayidx31.13, align 4
  %div83.13 = lshr i32 %35, 1
  %conv32.13 = zext nneg i32 %div83.13 to i64
  %add.13 = add nsw i64 %mul.8, %conv32.13
  %36 = lshr i32 %35, 1
  %narrow131 = add nuw i32 %36, 1
  %add44.13 = zext i32 %narrow131 to i64
  %div45.13 = udiv i64 %add.13, %add44.13
  %conv46.13 = trunc i64 %div45.13 to i16
  %arrayidx50.13 = getelementptr inbounds i8, ptr %h, i64 30938
  store i16 %conv46.13, ptr %arrayidx50.13, align 2
  %arrayidx31.14 = getelementptr inbounds i8, ptr %h, i64 30456
  %37 = load i32, ptr %arrayidx31.14, align 4
  %div83.14 = lshr i32 %37, 1
  %conv32.14 = zext nneg i32 %div83.14 to i64
  %add.14 = add nsw i64 %mul.8, %conv32.14
  %conv38.14 = zext i32 %37 to i64
  %mul42.14 = mul nuw nsw i64 %conv38.14, 320
  %div4384.14 = lshr i64 %mul42.14, 8
  %add44.14 = add nuw nsw i64 %div4384.14, 1
  %div45.14 = udiv i64 %add.14, %add44.14
  %conv46.14 = trunc i64 %div45.14 to i16
  %arrayidx50.14 = getelementptr inbounds i8, ptr %h, i64 30940
  store i16 %conv46.14, ptr %arrayidx50.14, align 2
  %arrayidx31.15 = getelementptr inbounds i8, ptr %h, i64 30460
  %38 = load i32, ptr %arrayidx31.15, align 4
  %div83.15 = lshr i32 %38, 1
  %conv32.15 = zext nneg i32 %div83.15 to i64
  %add.15 = add nsw i64 %mul.8, %conv32.15
  %39 = lshr i32 %38, 1
  %narrow132 = add nuw i32 %39, 1
  %add44.15 = zext i32 %narrow132 to i64
  %div45.15 = udiv i64 %add.15, %add44.15
  %conv46.15 = trunc i64 %div45.15 to i16
  %arrayidx50.15 = getelementptr inbounds i8, ptr %h, i64 30942
  store i16 %conv46.15, ptr %arrayidx50.15, align 2
  %arrayidx.1 = getelementptr inbounds i8, ptr %h, i64 31172
  %40 = load i32, ptr %arrayidx.1, align 4
  %cmp5.1 = icmp ugt i32 %40, 65536
  br i1 %cmp5.1, label %vector.body, label %vector.memcheck

vector.body:                                      ; preds = %if.end
  %41 = getelementptr inbounds i8, ptr %h, i64 30656
  %42 = getelementptr inbounds i8, ptr %h, i64 30672
  %43 = getelementptr inbounds i8, ptr %h, i64 30688
  %44 = getelementptr inbounds i8, ptr %h, i64 30704
  %wide.load = load <4 x i32>, ptr %41, align 4
  %wide.load133 = load <4 x i32>, ptr %42, align 4
  %wide.load134 = load <4 x i32>, ptr %43, align 4
  %wide.load135 = load <4 x i32>, ptr %44, align 4
  %45 = lshr <4 x i32> %wide.load, <i32 1, i32 1, i32 1, i32 1>
  %46 = lshr <4 x i32> %wide.load133, <i32 1, i32 1, i32 1, i32 1>
  %47 = lshr <4 x i32> %wide.load134, <i32 1, i32 1, i32 1, i32 1>
  %48 = lshr <4 x i32> %wide.load135, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %45, ptr %41, align 4
  store <4 x i32> %46, ptr %42, align 4
  store <4 x i32> %47, ptr %43, align 4
  store <4 x i32> %48, ptr %44, align 4
  %49 = getelementptr inbounds i8, ptr %h, i64 30720
  %50 = getelementptr inbounds i8, ptr %h, i64 30736
  %51 = getelementptr inbounds i8, ptr %h, i64 30752
  %52 = getelementptr inbounds i8, ptr %h, i64 30768
  %wide.load.1 = load <4 x i32>, ptr %49, align 4
  %wide.load133.1 = load <4 x i32>, ptr %50, align 4
  %wide.load134.1 = load <4 x i32>, ptr %51, align 4
  %wide.load135.1 = load <4 x i32>, ptr %52, align 4
  %53 = lshr <4 x i32> %wide.load.1, <i32 1, i32 1, i32 1, i32 1>
  %54 = lshr <4 x i32> %wide.load133.1, <i32 1, i32 1, i32 1, i32 1>
  %55 = lshr <4 x i32> %wide.load134.1, <i32 1, i32 1, i32 1, i32 1>
  %56 = lshr <4 x i32> %wide.load135.1, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %53, ptr %49, align 4
  store <4 x i32> %54, ptr %50, align 4
  store <4 x i32> %55, ptr %51, align 4
  store <4 x i32> %56, ptr %52, align 4
  %57 = getelementptr inbounds i8, ptr %h, i64 30784
  %58 = getelementptr inbounds i8, ptr %h, i64 30800
  %59 = getelementptr inbounds i8, ptr %h, i64 30816
  %60 = getelementptr inbounds i8, ptr %h, i64 30832
  %wide.load.2 = load <4 x i32>, ptr %57, align 4
  %wide.load133.2 = load <4 x i32>, ptr %58, align 4
  %wide.load134.2 = load <4 x i32>, ptr %59, align 4
  %wide.load135.2 = load <4 x i32>, ptr %60, align 4
  %61 = lshr <4 x i32> %wide.load.2, <i32 1, i32 1, i32 1, i32 1>
  %62 = lshr <4 x i32> %wide.load133.2, <i32 1, i32 1, i32 1, i32 1>
  %63 = lshr <4 x i32> %wide.load134.2, <i32 1, i32 1, i32 1, i32 1>
  %64 = lshr <4 x i32> %wide.load135.2, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %61, ptr %57, align 4
  store <4 x i32> %62, ptr %58, align 4
  store <4 x i32> %63, ptr %59, align 4
  store <4 x i32> %64, ptr %60, align 4
  %65 = getelementptr inbounds i8, ptr %h, i64 30848
  %66 = getelementptr inbounds i8, ptr %h, i64 30864
  %67 = getelementptr inbounds i8, ptr %h, i64 30880
  %68 = getelementptr inbounds i8, ptr %h, i64 30896
  %wide.load.3 = load <4 x i32>, ptr %65, align 4
  %wide.load133.3 = load <4 x i32>, ptr %66, align 4
  %wide.load134.3 = load <4 x i32>, ptr %67, align 4
  %wide.load135.3 = load <4 x i32>, ptr %68, align 4
  %69 = lshr <4 x i32> %wide.load.3, <i32 1, i32 1, i32 1, i32 1>
  %70 = lshr <4 x i32> %wide.load133.3, <i32 1, i32 1, i32 1, i32 1>
  %71 = lshr <4 x i32> %wide.load134.3, <i32 1, i32 1, i32 1, i32 1>
  %72 = lshr <4 x i32> %wide.load135.3, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %69, ptr %65, align 4
  store <4 x i32> %70, ptr %66, align 4
  store <4 x i32> %71, ptr %67, align 4
  store <4 x i32> %72, ptr %68, align 4
  %73 = load i32, ptr %arrayidx.1, align 4
  %shr17.1 = lshr i32 %73, 1
  store i32 %shr17.1, ptr %arrayidx.1, align 4
  br label %vector.memcheck

vector.memcheck:                                  ; preds = %if.end, %vector.body
  %scevgep = getelementptr i8, ptr %h, i64 31040
  %scevgep136 = getelementptr i8, ptr %h, i64 31168
  %scevgep137 = getelementptr i8, ptr %h, i64 31176
  %scevgep138 = getelementptr i8, ptr %h, i64 30656
  %bound0 = icmp ult ptr %scevgep, %scevgep137
  %bound1 = icmp ult ptr %arrayidx.1, %scevgep136
  %found.conflict = and i1 %bound0, %bound1
  %bound0139 = icmp ult ptr %scevgep, %nr_offset
  %bound1140 = icmp ult ptr %scevgep138, %scevgep136
  %found.conflict141 = and i1 %bound0139, %bound1140
  %conflict.rdx = or i1 %found.conflict, %found.conflict141
  br i1 %conflict.rdx, label %for.body22.1, label %vector.body146.preheader

vector.body146.preheader:                         ; preds = %vector.memcheck
  %74 = load i32, ptr %arrayidx.1, align 4, !alias.scope !5
  %75 = zext i32 %74 to i64
  %76 = zext i32 %74 to i64
  %77 = zext i32 %74 to i64
  %78 = zext i32 %74 to i64
  %79 = mul nsw i64 %75, %conv
  %80 = mul nsw i64 %76, %conv
  %81 = mul nsw i64 %77, %conv
  %82 = mul nsw i64 %78, %conv
  br label %vector.body146

vector.body146:                                   ; preds = %vector.body146.preheader, %vector.body146
  %index147 = phi i64 [ %index.next148, %vector.body146 ], [ 0, %vector.body146.preheader ]
  %83 = or disjoint i64 %index147, 1
  %84 = or disjoint i64 %index147, 2
  %85 = or disjoint i64 %index147, 3
  %86 = getelementptr inbounds [2 x [64 x i32]], ptr %nr_residual_sum27, i64 0, i64 1, i64 %index147
  %87 = getelementptr inbounds [2 x [64 x i32]], ptr %nr_residual_sum27, i64 0, i64 1, i64 %83
  %88 = getelementptr inbounds [2 x [64 x i32]], ptr %nr_residual_sum27, i64 0, i64 1, i64 %84
  %89 = getelementptr inbounds [2 x [64 x i32]], ptr %nr_residual_sum27, i64 0, i64 1, i64 %85
  %90 = load i32, ptr %86, align 4, !alias.scope !8
  %91 = load i32, ptr %87, align 4, !alias.scope !8
  %92 = load i32, ptr %88, align 4, !alias.scope !8
  %93 = load i32, ptr %89, align 4, !alias.scope !8
  %94 = lshr i32 %90, 1
  %95 = lshr i32 %91, 1
  %96 = lshr i32 %92, 1
  %97 = lshr i32 %93, 1
  %98 = zext nneg i32 %94 to i64
  %99 = zext nneg i32 %95 to i64
  %100 = zext nneg i32 %96 to i64
  %101 = zext nneg i32 %97 to i64
  %102 = add nsw i64 %79, %98
  %103 = add nsw i64 %80, %99
  %104 = add nsw i64 %81, %100
  %105 = add nsw i64 %82, %101
  %106 = zext i32 %90 to i64
  %107 = zext i32 %91 to i64
  %108 = zext i32 %92 to i64
  %109 = zext i32 %93 to i64
  %110 = getelementptr inbounds i16, ptr @x264_dct8_weight2_tab, i64 %index147
  %111 = getelementptr inbounds i16, ptr @x264_dct8_weight2_tab, i64 %83
  %112 = getelementptr inbounds i16, ptr @x264_dct8_weight2_tab, i64 %84
  %113 = getelementptr inbounds i16, ptr @x264_dct8_weight2_tab, i64 %85
  %114 = load i16, ptr %110, align 8
  %115 = load i16, ptr %111, align 2
  %116 = load i16, ptr %112, align 4
  %117 = load i16, ptr %113, align 2
  %118 = zext i16 %114 to i64
  %119 = zext i16 %115 to i64
  %120 = zext i16 %116 to i64
  %121 = zext i16 %117 to i64
  %122 = mul nuw nsw i64 %118, %106
  %123 = mul nuw nsw i64 %119, %107
  %124 = mul nuw nsw i64 %120, %108
  %125 = mul nuw nsw i64 %121, %109
  %126 = lshr i64 %122, 8
  %127 = lshr i64 %123, 8
  %128 = lshr i64 %124, 8
  %129 = lshr i64 %125, 8
  %130 = add nuw nsw i64 %126, 1
  %131 = add nuw nsw i64 %127, 1
  %132 = add nuw nsw i64 %128, 1
  %133 = add nuw nsw i64 %129, 1
  %134 = udiv i64 %102, %130
  %135 = udiv i64 %103, %131
  %136 = udiv i64 %104, %132
  %137 = udiv i64 %105, %133
  %138 = trunc i64 %134 to i16
  %139 = trunc i64 %135 to i16
  %140 = trunc i64 %136 to i16
  %141 = trunc i64 %137 to i16
  %142 = getelementptr inbounds [2 x [64 x i16]], ptr %nr_offset, i64 0, i64 1, i64 %index147
  %143 = getelementptr inbounds [2 x [64 x i16]], ptr %nr_offset, i64 0, i64 1, i64 %83
  %144 = getelementptr inbounds [2 x [64 x i16]], ptr %nr_offset, i64 0, i64 1, i64 %84
  %145 = getelementptr inbounds [2 x [64 x i16]], ptr %nr_offset, i64 0, i64 1, i64 %85
  store i16 %138, ptr %142, align 2, !alias.scope !10, !noalias !12
  store i16 %139, ptr %143, align 2, !alias.scope !10, !noalias !12
  store i16 %140, ptr %144, align 2, !alias.scope !10, !noalias !12
  store i16 %141, ptr %145, align 2, !alias.scope !10, !noalias !12
  %index.next148 = add nuw i64 %index147, 4
  %146 = icmp eq i64 %index.next148, 64
  br i1 %146, label %for.cond.cleanup21.1, label %vector.body146, !llvm.loop !13

for.body22.1:                                     ; preds = %vector.memcheck, %for.body22.1
  %indvars.iv89.1 = phi i64 [ %indvars.iv.next90.1, %for.body22.1 ], [ 0, %vector.memcheck ]
  %147 = load i32, ptr %arrayidx.1, align 4
  %conv26.1 = zext i32 %147 to i64
  %mul.1 = mul nsw i64 %conv26.1, %conv
  %arrayidx31.1 = getelementptr inbounds [2 x [64 x i32]], ptr %nr_residual_sum27, i64 0, i64 1, i64 %indvars.iv89.1
  %148 = load i32, ptr %arrayidx31.1, align 4
  %div83.1 = lshr i32 %148, 1
  %conv32.1 = zext nneg i32 %div83.1 to i64
  %add.1 = add nsw i64 %mul.1, %conv32.1
  %conv38.1 = zext i32 %148 to i64
  %arrayidx40.1 = getelementptr inbounds i16, ptr @x264_dct8_weight2_tab, i64 %indvars.iv89.1
  %149 = load i16, ptr %arrayidx40.1, align 2
  %conv41.1 = zext i16 %149 to i64
  %mul42.1 = mul nuw nsw i64 %conv41.1, %conv38.1
  %div4384.1 = lshr i64 %mul42.1, 8
  %add44.1 = add nuw nsw i64 %div4384.1, 1
  %div45.1 = udiv i64 %add.1, %add44.1
  %conv46.1 = trunc i64 %div45.1 to i16
  %arrayidx50.1 = getelementptr inbounds [2 x [64 x i16]], ptr %nr_offset, i64 0, i64 1, i64 %indvars.iv89.1
  store i16 %conv46.1, ptr %arrayidx50.1, align 2
  %indvars.iv.next90.1 = add nuw nsw i64 %indvars.iv89.1, 1
  %exitcond94.1.not = icmp eq i64 %indvars.iv.next90.1, 64
  br i1 %exitcond94.1.not, label %for.cond.cleanup21.1, label %for.body22.1, !llvm.loop !16

for.cond.cleanup21.1:                             ; preds = %vector.body146, %for.body22.1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @x264_macroblock_encode_p8x8(ptr noundef %h, i32 noundef %i8) local_unnamed_addr #0 {
entry:
  %dc = alloca i16, align 2
  %dct8x8 = alloca [64 x i16], align 16
  %dct4x4 = alloca [4 x [16 x i16]], align 16
  %dct4x4337 = alloca [16 x i16], align 16
  %i_qp1 = getelementptr inbounds i8, ptr %h, i64 25792
  %0 = load i32, ptr %i_qp1, align 16
  %p_fenc3 = getelementptr inbounds i8, ptr %h, i64 21344
  %1 = load ptr, ptr %p_fenc3, align 16
  %and = and i32 %i8, 1
  %mul = shl nuw nsw i32 %and, 3
  %idx.ext = zext nneg i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, ptr %1, i64 %idx.ext
  %shr = ashr i32 %i8, 1
  %mul5 = shl nsw i32 %shr, 7
  %idx.ext6 = sext i32 %mul5 to i64
  %add.ptr7 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.ext6
  %p_fdec10 = getelementptr inbounds i8, ptr %h, i64 21392
  %2 = load ptr, ptr %p_fdec10, align 16
  %add.ptr15 = getelementptr inbounds i8, ptr %2, i64 %idx.ext
  %mul18 = shl nsw i32 %shr, 8
  %idx.ext19 = sext i32 %mul18 to i64
  %add.ptr20 = getelementptr inbounds i8, ptr %add.ptr15, i64 %idx.ext19
  %b_dct_decimate = getelementptr inbounds i8, ptr %h, i64 16424
  %3 = load i32, ptr %b_dct_decimate, align 8
  %b_skip_mc = getelementptr inbounds i8, ptr %h, i64 17420
  %4 = load i32, ptr %b_skip_mc, align 4
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @x264_mb_mc_8x8(ptr noundef nonnull %h, i32 noundef %i8) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %b_lossless = getelementptr inbounds i8, ptr %h, i64 25812
  %5 = load i32, ptr %b_lossless, align 4
  %tobool24.not = icmp eq i32 %5, 0
  %b_transform_8x8146 = getelementptr inbounds i8, ptr %h, i64 17396
  %6 = load i32, ptr %b_transform_8x8146, align 4
  %tobool147.not = icmp eq i32 %6, 0
  br i1 %tobool24.not, label %if.else144, label %if.then25

if.then25:                                        ; preds = %if.end
  br i1 %tobool147.not, label %if.else, label %if.then28

if.then28:                                        ; preds = %if.then25
  %sub_8x8 = getelementptr inbounds i8, ptr %h, i64 33048
  %7 = load ptr, ptr %sub_8x8, align 8
  %luma8x8 = getelementptr inbounds i8, ptr %h, i64 15088
  %idxprom = sext i32 %i8 to i64
  %arrayidx29 = getelementptr inbounds [4 x [64 x i16]], ptr %luma8x8, i64 0, i64 %idxprom
  %call = tail call i32 %7(ptr noundef nonnull %arrayidx29, ptr noundef %add.ptr7, ptr noundef %add.ptr20) #6
  %8 = trunc i32 %call to i16
  %conv = mul i16 %8, 257
  %non_zero_count = getelementptr inbounds i8, ptr %h, i64 25072
  %mul32 = shl nsw i32 %i8, 2
  %idxprom33 = sext i32 %mul32 to i64
  %arrayidx34 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %idxprom33
  %9 = load i32, ptr %arrayidx34, align 16
  %idxprom35 = sext i32 %9 to i64
  %arrayidx36 = getelementptr inbounds [48 x i8], ptr %non_zero_count, i64 0, i64 %idxprom35
  store i16 %conv, ptr %arrayidx36, align 1
  %add43 = or disjoint i32 %mul32, 2
  %idxprom44 = sext i32 %add43 to i64
  %arrayidx45 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %idxprom44
  %10 = load i32, ptr %arrayidx45, align 8
  %idxprom46 = sext i32 %10 to i64
  %arrayidx47 = getelementptr inbounds [48 x i8], ptr %non_zero_count, i64 0, i64 %idxprom46
  store i16 %conv, ptr %arrayidx47, align 1
  br label %if.end84

if.else:                                          ; preds = %if.then25
  %mul48 = shl i32 %i8, 2
  %sub_4x4 = getelementptr inbounds i8, ptr %h, i64 33056
  %luma4x4 = getelementptr inbounds i8, ptr %h, i64 15600
  %non_zero_count79 = getelementptr inbounds i8, ptr %h, i64 25072
  %11 = sext i32 %mul48 to i64
  %12 = load ptr, ptr %sub_4x4, align 8
  %arrayidx55 = getelementptr inbounds [24 x [16 x i16]], ptr %luma4x4, i64 0, i64 %11
  %13 = load ptr, ptr %p_fenc3, align 16
  %arrayidx62 = getelementptr inbounds [16 x i8], ptr @block_idx_xy_fenc, i64 0, i64 %11
  %14 = load i8, ptr %arrayidx62, align 4
  %idx.ext64 = zext i8 %14 to i64
  %add.ptr65 = getelementptr inbounds i8, ptr %13, i64 %idx.ext64
  %15 = load ptr, ptr %p_fdec10, align 16
  %arrayidx71 = getelementptr inbounds [16 x i16], ptr @block_idx_xy_fdec, i64 0, i64 %11
  %16 = load i16, ptr %arrayidx71, align 8
  %idx.ext73 = zext i16 %16 to i64
  %add.ptr74 = getelementptr inbounds i8, ptr %15, i64 %idx.ext73
  %call75 = tail call i32 %12(ptr noundef nonnull %arrayidx55, ptr noundef %add.ptr65, ptr noundef %add.ptr74) #6
  %conv76 = trunc i32 %call75 to i8
  %arrayidx81 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %11
  %17 = load i32, ptr %arrayidx81, align 16
  %idxprom82 = sext i32 %17 to i64
  %arrayidx83 = getelementptr inbounds [48 x i8], ptr %non_zero_count79, i64 0, i64 %idxprom82
  store i8 %conv76, ptr %arrayidx83, align 1
  %indvars.iv.next = or disjoint i64 %11, 1
  %18 = load ptr, ptr %sub_4x4, align 8
  %arrayidx55.1 = getelementptr inbounds [24 x [16 x i16]], ptr %luma4x4, i64 0, i64 %indvars.iv.next
  %19 = load ptr, ptr %p_fenc3, align 16
  %arrayidx62.1 = getelementptr inbounds [16 x i8], ptr @block_idx_xy_fenc, i64 0, i64 %indvars.iv.next
  %20 = load i8, ptr %arrayidx62.1, align 1
  %idx.ext64.1 = zext i8 %20 to i64
  %add.ptr65.1 = getelementptr inbounds i8, ptr %19, i64 %idx.ext64.1
  %21 = load ptr, ptr %p_fdec10, align 16
  %arrayidx71.1 = getelementptr inbounds [16 x i16], ptr @block_idx_xy_fdec, i64 0, i64 %indvars.iv.next
  %22 = load i16, ptr %arrayidx71.1, align 2
  %idx.ext73.1 = zext i16 %22 to i64
  %add.ptr74.1 = getelementptr inbounds i8, ptr %21, i64 %idx.ext73.1
  %call75.1 = tail call i32 %18(ptr noundef nonnull %arrayidx55.1, ptr noundef %add.ptr65.1, ptr noundef %add.ptr74.1) #6
  %conv76.1 = trunc i32 %call75.1 to i8
  %arrayidx81.1 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %indvars.iv.next
  %23 = load i32, ptr %arrayidx81.1, align 4
  %idxprom82.1 = sext i32 %23 to i64
  %arrayidx83.1 = getelementptr inbounds [48 x i8], ptr %non_zero_count79, i64 0, i64 %idxprom82.1
  store i8 %conv76.1, ptr %arrayidx83.1, align 1
  %or.1 = or i32 %call75.1, %call75
  %indvars.iv.next.1 = or disjoint i64 %11, 2
  %24 = load ptr, ptr %sub_4x4, align 8
  %arrayidx55.2 = getelementptr inbounds [24 x [16 x i16]], ptr %luma4x4, i64 0, i64 %indvars.iv.next.1
  %25 = load ptr, ptr %p_fenc3, align 16
  %arrayidx62.2 = getelementptr inbounds [16 x i8], ptr @block_idx_xy_fenc, i64 0, i64 %indvars.iv.next.1
  %26 = load i8, ptr %arrayidx62.2, align 2
  %idx.ext64.2 = zext i8 %26 to i64
  %add.ptr65.2 = getelementptr inbounds i8, ptr %25, i64 %idx.ext64.2
  %27 = load ptr, ptr %p_fdec10, align 16
  %arrayidx71.2 = getelementptr inbounds [16 x i16], ptr @block_idx_xy_fdec, i64 0, i64 %indvars.iv.next.1
  %28 = load i16, ptr %arrayidx71.2, align 4
  %idx.ext73.2 = zext i16 %28 to i64
  %add.ptr74.2 = getelementptr inbounds i8, ptr %27, i64 %idx.ext73.2
  %call75.2 = tail call i32 %24(ptr noundef nonnull %arrayidx55.2, ptr noundef %add.ptr65.2, ptr noundef %add.ptr74.2) #6
  %conv76.2 = trunc i32 %call75.2 to i8
  %arrayidx81.2 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %indvars.iv.next.1
  %29 = load i32, ptr %arrayidx81.2, align 8
  %idxprom82.2 = sext i32 %29 to i64
  %arrayidx83.2 = getelementptr inbounds [48 x i8], ptr %non_zero_count79, i64 0, i64 %idxprom82.2
  store i8 %conv76.2, ptr %arrayidx83.2, align 1
  %or.2 = or i32 %call75.2, %or.1
  %indvars.iv.next.2 = or disjoint i64 %11, 3
  %30 = load ptr, ptr %sub_4x4, align 8
  %arrayidx55.3 = getelementptr inbounds [24 x [16 x i16]], ptr %luma4x4, i64 0, i64 %indvars.iv.next.2
  %31 = load ptr, ptr %p_fenc3, align 16
  %arrayidx62.3 = getelementptr inbounds [16 x i8], ptr @block_idx_xy_fenc, i64 0, i64 %indvars.iv.next.2
  %32 = load i8, ptr %arrayidx62.3, align 1
  %idx.ext64.3 = zext i8 %32 to i64
  %add.ptr65.3 = getelementptr inbounds i8, ptr %31, i64 %idx.ext64.3
  %33 = load ptr, ptr %p_fdec10, align 16
  %arrayidx71.3 = getelementptr inbounds [16 x i16], ptr @block_idx_xy_fdec, i64 0, i64 %indvars.iv.next.2
  %34 = load i16, ptr %arrayidx71.3, align 2
  %idx.ext73.3 = zext i16 %34 to i64
  %add.ptr74.3 = getelementptr inbounds i8, ptr %33, i64 %idx.ext73.3
  %call75.3 = tail call i32 %30(ptr noundef nonnull %arrayidx55.3, ptr noundef %add.ptr65.3, ptr noundef %add.ptr74.3) #6
  %conv76.3 = trunc i32 %call75.3 to i8
  %arrayidx81.3 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %indvars.iv.next.2
  %35 = load i32, ptr %arrayidx81.3, align 4
  %idxprom82.3 = sext i32 %35 to i64
  %arrayidx83.3 = getelementptr inbounds [48 x i8], ptr %non_zero_count79, i64 0, i64 %idxprom82.3
  store i8 %conv76.3, ptr %arrayidx83.3, align 1
  %or.3 = or i32 %call75.3, %or.2
  br label %if.end84

if.end84:                                         ; preds = %if.else, %if.then28
  %nnz8x8.1 = phi i32 [ %call, %if.then28 ], [ %or.3, %if.else ]
  %mul97 = shl nuw nsw i32 %and, 2
  %idx.ext98 = zext nneg i32 %mul97 to i64
  %mul102 = shl nsw i32 %shr, 6
  %idx.ext103 = sext i32 %mul102 to i64
  %sub_4x4ac = getelementptr inbounds i8, ptr %h, i64 33064
  %luma4x4122 = getelementptr inbounds i8, ptr %h, i64 15600
  %add123 = add nsw i32 %i8, 16
  %non_zero_count133 = getelementptr inbounds i8, ptr %h, i64 25072
  %36 = sext i32 %add123 to i64
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %dc) #6
  %arrayidx95 = getelementptr inbounds i8, ptr %h, i64 21352
  %37 = load ptr, ptr %arrayidx95, align 8
  %add.ptr99 = getelementptr inbounds i8, ptr %37, i64 %idx.ext98
  %add.ptr104 = getelementptr inbounds i8, ptr %add.ptr99, i64 %idx.ext103
  %arrayidx110 = getelementptr inbounds i8, ptr %h, i64 21400
  %38 = load ptr, ptr %arrayidx110, align 8
  %add.ptr114 = getelementptr inbounds i8, ptr %38, i64 %idx.ext98
  %add.ptr119 = getelementptr inbounds i8, ptr %add.ptr114, i64 %idx.ext6
  %39 = load ptr, ptr %sub_4x4ac, align 8
  %arrayidx127 = getelementptr inbounds [24 x [16 x i16]], ptr %luma4x4122, i64 0, i64 %36
  %call129 = call i32 %39(ptr noundef nonnull %arrayidx127, ptr noundef %add.ptr104, ptr noundef %add.ptr119, ptr noundef nonnull %dc) #6
  %conv130 = trunc i32 %call129 to i8
  %arrayidx138 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %36
  %40 = load i32, ptr %arrayidx138, align 4
  %idxprom139 = sext i32 %40 to i64
  %arrayidx140 = getelementptr inbounds [48 x i8], ptr %non_zero_count133, i64 0, i64 %idxprom139
  store i8 %conv130, ptr %arrayidx140, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %dc) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %dc) #6
  %arrayidx95.1 = getelementptr inbounds i8, ptr %h, i64 21360
  %41 = load ptr, ptr %arrayidx95.1, align 8
  %add.ptr99.1 = getelementptr inbounds i8, ptr %41, i64 %idx.ext98
  %add.ptr104.1 = getelementptr inbounds i8, ptr %add.ptr99.1, i64 %idx.ext103
  %arrayidx110.1 = getelementptr inbounds i8, ptr %h, i64 21408
  %42 = load ptr, ptr %arrayidx110.1, align 8
  %add.ptr114.1 = getelementptr inbounds i8, ptr %42, i64 %idx.ext98
  %add.ptr119.1 = getelementptr inbounds i8, ptr %add.ptr114.1, i64 %idx.ext6
  %43 = load ptr, ptr %sub_4x4ac, align 8
  %44 = add nsw i64 %36, 4
  %arrayidx127.1 = getelementptr inbounds [24 x [16 x i16]], ptr %luma4x4122, i64 0, i64 %44
  %call129.1 = call i32 %43(ptr noundef nonnull %arrayidx127.1, ptr noundef %add.ptr104.1, ptr noundef %add.ptr119.1, ptr noundef nonnull %dc) #6
  %conv130.1 = trunc i32 %call129.1 to i8
  %arrayidx138.1 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %44
  %45 = load i32, ptr %arrayidx138.1, align 4
  %idxprom139.1 = sext i32 %45 to i64
  %arrayidx140.1 = getelementptr inbounds [48 x i8], ptr %non_zero_count133, i64 0, i64 %idxprom139.1
  store i8 %conv130.1, ptr %arrayidx140.1, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %dc) #6
  br label %if.end425

if.else144:                                       ; preds = %if.end
  br i1 %tobool147.not, label %if.else239, label %if.then148

if.then148:                                       ; preds = %if.else144
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %dct8x8) #6
  %sub8x8_dct8 = getelementptr inbounds i8, ptr %h, i64 32984
  %46 = load ptr, ptr %sub8x8_dct8, align 8
  call void %46(ptr noundef nonnull %dct8x8, ptr noundef %add.ptr7, ptr noundef %add.ptr20) #6
  %b_trellis.i = getelementptr inbounds i8, ptr %h, i64 16416
  %47 = load i32, ptr %b_trellis.i, align 16
  %tobool1.not.i = icmp eq i32 %47, 0
  br i1 %tobool1.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then148
  %call.i = call i32 @x264_quant_8x8_trellis(ptr noundef nonnull %h, ptr noundef nonnull %dct8x8, i32 noundef 1, i32 noundef %0, i32 noundef 0, i32 noundef %i8) #6
  br label %x264_quant_8x8.exit

if.else.i:                                        ; preds = %if.then148
  %quantf.i = getelementptr inbounds i8, ptr %h, i64 33080
  %48 = load ptr, ptr %quantf.i, align 8
  %arrayidx.i = getelementptr inbounds i8, ptr %h, i64 3480
  %49 = load ptr, ptr %arrayidx.i, align 8
  %idxprom2.i = sext i32 %0 to i64
  %arrayidx3.i = getelementptr inbounds [64 x i16], ptr %49, i64 %idxprom2.i
  %arrayidx5.i = getelementptr inbounds i8, ptr %h, i64 3528
  %50 = load ptr, ptr %arrayidx5.i, align 8
  %arrayidx7.i = getelementptr inbounds [64 x i16], ptr %50, i64 %idxprom2.i
  %call9.i = call i32 %48(ptr noundef nonnull %dct8x8, ptr noundef %arrayidx3.i, ptr noundef %arrayidx7.i) #6
  br label %x264_quant_8x8.exit

x264_quant_8x8.exit:                              ; preds = %if.then.i, %if.else.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ %call9.i, %if.else.i ]
  %tobool152.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool152.not, label %if.end238, label %if.then153

if.then153:                                       ; preds = %x264_quant_8x8.exit
  %zigzagf154 = getelementptr inbounds i8, ptr %h, i64 33032
  %51 = load ptr, ptr %zigzagf154, align 8
  %luma8x8156 = getelementptr inbounds i8, ptr %h, i64 15088
  %idxprom157 = sext i32 %i8 to i64
  %arrayidx158 = getelementptr inbounds [4 x [64 x i16]], ptr %luma8x8156, i64 0, i64 %idxprom157
  call void %51(ptr noundef nonnull %arrayidx158, ptr noundef nonnull %dct8x8) #6
  %tobool161.not = icmp eq i32 %3, 0
  br i1 %tobool161.not, label %if.then175, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then153
  %52 = load i32, ptr %b_trellis.i, align 16
  %tobool163.not = icmp eq i32 %52, 0
  br i1 %tobool163.not, label %if.end173, label %if.then175

if.end173:                                        ; preds = %land.lhs.true
  %decimate_score64 = getelementptr inbounds i8, ptr %h, i64 33160
  %53 = load ptr, ptr %decimate_score64, align 8
  %call170 = call i32 %53(ptr noundef nonnull %arrayidx158) #6
  %cmp171 = icmp slt i32 %call170, 4
  br i1 %cmp171, label %if.end238, label %if.then175

if.then175:                                       ; preds = %if.then153, %land.lhs.true, %if.end173
  %nnz8x8.2609 = phi i32 [ 1, %if.end173 ], [ %retval.0.i, %land.lhs.true ], [ %retval.0.i, %if.then153 ]
  %dequant_8x8 = getelementptr inbounds i8, ptr %h, i64 33112
  %54 = load ptr, ptr %dequant_8x8, align 8
  %arrayidx178 = getelementptr inbounds i8, ptr %h, i64 3384
  %55 = load ptr, ptr %arrayidx178, align 8
  call void %54(ptr noundef nonnull %dct8x8, ptr noundef %55, i32 noundef %0) #6
  %add8x8_idct8 = getelementptr inbounds i8, ptr %h, i64 32992
  %56 = load ptr, ptr %add8x8_idct8, align 16
  call void %56(ptr noundef %add.ptr20, ptr noundef nonnull %dct8x8) #6
  br label %if.end238

if.end238:                                        ; preds = %x264_quant_8x8.exit, %if.end173, %if.then175
  %.sink632 = phi i16 [ 257, %if.then175 ], [ 0, %if.end173 ], [ 0, %x264_quant_8x8.exit ]
  %nnz8x8.3 = phi i32 [ %nnz8x8.2609, %if.then175 ], [ 0, %if.end173 ], [ 0, %x264_quant_8x8.exit ]
  %non_zero_count183 = getelementptr inbounds i8, ptr %h, i64 25072
  %mul184 = shl nsw i32 %i8, 2
  %idxprom186 = sext i32 %mul184 to i64
  %arrayidx187 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %idxprom186
  %57 = load i32, ptr %arrayidx187, align 16
  %idxprom188 = sext i32 %57 to i64
  %arrayidx189 = getelementptr inbounds [48 x i8], ptr %non_zero_count183, i64 0, i64 %idxprom188
  store i16 %.sink632, ptr %arrayidx189, align 1
  %add194 = or disjoint i32 %mul184, 2
  %idxprom195 = sext i32 %add194 to i64
  %arrayidx196 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %idxprom195
  %58 = load i32, ptr %arrayidx196, align 8
  %idxprom197 = sext i32 %58 to i64
  %arrayidx198 = getelementptr inbounds [48 x i8], ptr %non_zero_count183, i64 0, i64 %idxprom197
  store i16 %.sink632, ptr %arrayidx198, align 1
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %dct8x8) #6
  br label %if.end329

if.else239:                                       ; preds = %if.else144
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %dct4x4) #6
  %sub8x8_dct = getelementptr inbounds i8, ptr %h, i64 32928
  %59 = load ptr, ptr %sub8x8_dct, align 16
  call void %59(ptr noundef nonnull %dct4x4, ptr noundef %add.ptr7, ptr noundef %add.ptr20) #6
  %mul251 = shl nsw i32 %i8, 2
  %b_trellis.i595 = getelementptr inbounds i8, ptr %h, i64 16416
  %quant_4x4.i = getelementptr inbounds i8, ptr %h, i64 33088
  %arrayidx.i601 = getelementptr inbounds i8, ptr %h, i64 3448
  %idxprom2.i602 = sext i32 %0 to i64
  %arrayidx5.i604 = getelementptr inbounds i8, ptr %h, i64 3496
  %non_zero_count257 = getelementptr inbounds i8, ptr %h, i64 25072
  %scan_4x4 = getelementptr inbounds i8, ptr %h, i64 33040
  %luma4x4268 = getelementptr inbounds i8, ptr %h, i64 15600
  %dequant_4x4 = getelementptr inbounds i8, ptr %h, i64 33120
  %arrayidx281 = getelementptr inbounds i8, ptr %h, i64 3352
  %tobool282.not = icmp eq i32 %3, 0
  %decimate_score16 = getelementptr inbounds i8, ptr %h, i64 33152
  %60 = sext i32 %mul251 to i64
  %61 = load i32, ptr %b_trellis.i595, align 16
  %tobool1.not.i596 = icmp eq i32 %61, 0
  br i1 %tobool1.not.i596, label %if.else.i600, label %if.then.i597

if.then.i597:                                     ; preds = %if.else239
  %call.i598 = call i32 @x264_quant_4x4_trellis(ptr noundef nonnull %h, ptr noundef nonnull %dct4x4, i32 noundef 1, i32 noundef %0, i32 noundef 2, i32 noundef 0, i32 noundef 0, i32 noundef %mul251) #6
  br label %x264_quant_4x4.exit

if.else.i600:                                     ; preds = %if.else239
  %62 = load ptr, ptr %quant_4x4.i, align 8
  %63 = load ptr, ptr %arrayidx.i601, align 8
  %arrayidx3.i603 = getelementptr inbounds [16 x i16], ptr %63, i64 %idxprom2.i602
  %64 = load ptr, ptr %arrayidx5.i604, align 8
  %arrayidx7.i605 = getelementptr inbounds [16 x i16], ptr %64, i64 %idxprom2.i602
  %call9.i606 = call i32 %62(ptr noundef nonnull %dct4x4, ptr noundef %arrayidx3.i603, ptr noundef %arrayidx7.i605) #6
  br label %x264_quant_4x4.exit

x264_quant_4x4.exit:                              ; preds = %if.then.i597, %if.else.i600
  %retval.0.i599 = phi i32 [ %call.i598, %if.then.i597 ], [ %call9.i606, %if.else.i600 ]
  %conv254 = trunc i32 %retval.0.i599 to i8
  %arrayidx261 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %60
  %65 = load i32, ptr %arrayidx261, align 16
  %idxprom262 = sext i32 %65 to i64
  %arrayidx263 = getelementptr inbounds [48 x i8], ptr %non_zero_count257, i64 0, i64 %idxprom262
  store i8 %conv254, ptr %arrayidx263, align 1
  %tobool264.not = icmp eq i32 %retval.0.i599, 0
  br i1 %tobool264.not, label %for.inc296, label %if.then265

if.then265:                                       ; preds = %x264_quant_4x4.exit
  %66 = load ptr, ptr %scan_4x4, align 8
  %arrayidx272 = getelementptr inbounds [24 x [16 x i16]], ptr %luma4x4268, i64 0, i64 %60
  call void %66(ptr noundef nonnull %arrayidx272, ptr noundef nonnull %dct4x4) #6
  %67 = load ptr, ptr %dequant_4x4, align 8
  %68 = load ptr, ptr %arrayidx281, align 8
  call void %67(ptr noundef nonnull %dct4x4, ptr noundef %68, i32 noundef %0) #6
  br i1 %tobool282.not, label %for.inc296, label %if.then283

if.then283:                                       ; preds = %if.then265
  %69 = load ptr, ptr %decimate_score16, align 8
  %call292 = call i32 %69(ptr noundef nonnull %arrayidx272) #6
  br label %for.inc296

for.inc296:                                       ; preds = %if.then265, %if.then283, %x264_quant_4x4.exit
  %nnz8x8.5 = phi i32 [ 0, %x264_quant_4x4.exit ], [ 1, %if.then283 ], [ 1, %if.then265 ]
  %i_decimate_8x8.2 = phi i32 [ 0, %x264_quant_4x4.exit ], [ %call292, %if.then283 ], [ 0, %if.then265 ]
  %arrayidx249.1 = getelementptr inbounds i8, ptr %dct4x4, i64 32
  %70 = or disjoint i64 %60, 1
  %71 = load i32, ptr %b_trellis.i595, align 16
  %tobool1.not.i596.1 = icmp eq i32 %71, 0
  br i1 %tobool1.not.i596.1, label %if.else.i600.1, label %if.then.i597.1

if.then.i597.1:                                   ; preds = %for.inc296
  %72 = trunc nsw i64 %70 to i32
  %call.i598.1 = call i32 @x264_quant_4x4_trellis(ptr noundef nonnull %h, ptr noundef nonnull %arrayidx249.1, i32 noundef 1, i32 noundef %0, i32 noundef 2, i32 noundef 0, i32 noundef 0, i32 noundef %72) #6
  br label %x264_quant_4x4.exit.1

if.else.i600.1:                                   ; preds = %for.inc296
  %73 = load ptr, ptr %quant_4x4.i, align 8
  %74 = load ptr, ptr %arrayidx.i601, align 8
  %arrayidx3.i603.1 = getelementptr inbounds [16 x i16], ptr %74, i64 %idxprom2.i602
  %75 = load ptr, ptr %arrayidx5.i604, align 8
  %arrayidx7.i605.1 = getelementptr inbounds [16 x i16], ptr %75, i64 %idxprom2.i602
  %call9.i606.1 = call i32 %73(ptr noundef nonnull %arrayidx249.1, ptr noundef %arrayidx3.i603.1, ptr noundef %arrayidx7.i605.1) #6
  br label %x264_quant_4x4.exit.1

x264_quant_4x4.exit.1:                            ; preds = %if.else.i600.1, %if.then.i597.1
  %retval.0.i599.1 = phi i32 [ %call.i598.1, %if.then.i597.1 ], [ %call9.i606.1, %if.else.i600.1 ]
  %conv254.1 = trunc i32 %retval.0.i599.1 to i8
  %arrayidx261.1 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %70
  %76 = load i32, ptr %arrayidx261.1, align 4
  %idxprom262.1 = sext i32 %76 to i64
  %arrayidx263.1 = getelementptr inbounds [48 x i8], ptr %non_zero_count257, i64 0, i64 %idxprom262.1
  store i8 %conv254.1, ptr %arrayidx263.1, align 1
  %tobool264.not.1 = icmp eq i32 %retval.0.i599.1, 0
  br i1 %tobool264.not.1, label %for.inc296.1, label %if.then265.1

if.then265.1:                                     ; preds = %x264_quant_4x4.exit.1
  %77 = load ptr, ptr %scan_4x4, align 8
  %arrayidx272.1 = getelementptr inbounds [24 x [16 x i16]], ptr %luma4x4268, i64 0, i64 %70
  call void %77(ptr noundef nonnull %arrayidx272.1, ptr noundef nonnull %arrayidx249.1) #6
  %78 = load ptr, ptr %dequant_4x4, align 8
  %79 = load ptr, ptr %arrayidx281, align 8
  call void %78(ptr noundef nonnull %arrayidx249.1, ptr noundef %79, i32 noundef %0) #6
  br i1 %tobool282.not, label %for.inc296.1, label %if.then283.1

if.then283.1:                                     ; preds = %if.then265.1
  %80 = load ptr, ptr %decimate_score16, align 8
  %call292.1 = call i32 %80(ptr noundef nonnull %arrayidx272.1) #6
  %add293.1 = add nsw i32 %call292.1, %i_decimate_8x8.2
  br label %for.inc296.1

for.inc296.1:                                     ; preds = %if.then283.1, %if.then265.1, %x264_quant_4x4.exit.1
  %nnz8x8.5.1 = phi i32 [ %nnz8x8.5, %x264_quant_4x4.exit.1 ], [ 1, %if.then283.1 ], [ 1, %if.then265.1 ]
  %i_decimate_8x8.2.1 = phi i32 [ %i_decimate_8x8.2, %x264_quant_4x4.exit.1 ], [ %add293.1, %if.then283.1 ], [ %i_decimate_8x8.2, %if.then265.1 ]
  %arrayidx249.2 = getelementptr inbounds i8, ptr %dct4x4, i64 64
  %81 = or disjoint i64 %60, 2
  %82 = load i32, ptr %b_trellis.i595, align 16
  %tobool1.not.i596.2 = icmp eq i32 %82, 0
  br i1 %tobool1.not.i596.2, label %if.else.i600.2, label %if.then.i597.2

if.then.i597.2:                                   ; preds = %for.inc296.1
  %83 = trunc nsw i64 %81 to i32
  %call.i598.2 = call i32 @x264_quant_4x4_trellis(ptr noundef nonnull %h, ptr noundef nonnull %arrayidx249.2, i32 noundef 1, i32 noundef %0, i32 noundef 2, i32 noundef 0, i32 noundef 0, i32 noundef %83) #6
  br label %x264_quant_4x4.exit.2

if.else.i600.2:                                   ; preds = %for.inc296.1
  %84 = load ptr, ptr %quant_4x4.i, align 8
  %85 = load ptr, ptr %arrayidx.i601, align 8
  %arrayidx3.i603.2 = getelementptr inbounds [16 x i16], ptr %85, i64 %idxprom2.i602
  %86 = load ptr, ptr %arrayidx5.i604, align 8
  %arrayidx7.i605.2 = getelementptr inbounds [16 x i16], ptr %86, i64 %idxprom2.i602
  %call9.i606.2 = call i32 %84(ptr noundef nonnull %arrayidx249.2, ptr noundef %arrayidx3.i603.2, ptr noundef %arrayidx7.i605.2) #6
  br label %x264_quant_4x4.exit.2

x264_quant_4x4.exit.2:                            ; preds = %if.else.i600.2, %if.then.i597.2
  %retval.0.i599.2 = phi i32 [ %call.i598.2, %if.then.i597.2 ], [ %call9.i606.2, %if.else.i600.2 ]
  %conv254.2 = trunc i32 %retval.0.i599.2 to i8
  %arrayidx261.2 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %81
  %87 = load i32, ptr %arrayidx261.2, align 8
  %idxprom262.2 = sext i32 %87 to i64
  %arrayidx263.2 = getelementptr inbounds [48 x i8], ptr %non_zero_count257, i64 0, i64 %idxprom262.2
  store i8 %conv254.2, ptr %arrayidx263.2, align 1
  %tobool264.not.2 = icmp eq i32 %retval.0.i599.2, 0
  br i1 %tobool264.not.2, label %for.inc296.2, label %if.then265.2

if.then265.2:                                     ; preds = %x264_quant_4x4.exit.2
  %88 = load ptr, ptr %scan_4x4, align 8
  %arrayidx272.2 = getelementptr inbounds [24 x [16 x i16]], ptr %luma4x4268, i64 0, i64 %81
  call void %88(ptr noundef nonnull %arrayidx272.2, ptr noundef nonnull %arrayidx249.2) #6
  %89 = load ptr, ptr %dequant_4x4, align 8
  %90 = load ptr, ptr %arrayidx281, align 8
  call void %89(ptr noundef nonnull %arrayidx249.2, ptr noundef %90, i32 noundef %0) #6
  br i1 %tobool282.not, label %for.inc296.2, label %if.then283.2

if.then283.2:                                     ; preds = %if.then265.2
  %91 = load ptr, ptr %decimate_score16, align 8
  %call292.2 = call i32 %91(ptr noundef nonnull %arrayidx272.2) #6
  %add293.2 = add nsw i32 %call292.2, %i_decimate_8x8.2.1
  br label %for.inc296.2

for.inc296.2:                                     ; preds = %if.then283.2, %if.then265.2, %x264_quant_4x4.exit.2
  %nnz8x8.5.2 = phi i32 [ %nnz8x8.5.1, %x264_quant_4x4.exit.2 ], [ 1, %if.then283.2 ], [ 1, %if.then265.2 ]
  %i_decimate_8x8.2.2 = phi i32 [ %i_decimate_8x8.2.1, %x264_quant_4x4.exit.2 ], [ %add293.2, %if.then283.2 ], [ %i_decimate_8x8.2.1, %if.then265.2 ]
  %arrayidx249.3 = getelementptr inbounds i8, ptr %dct4x4, i64 96
  %92 = or disjoint i64 %60, 3
  %93 = load i32, ptr %b_trellis.i595, align 16
  %tobool1.not.i596.3 = icmp eq i32 %93, 0
  br i1 %tobool1.not.i596.3, label %if.else.i600.3, label %if.then.i597.3

if.then.i597.3:                                   ; preds = %for.inc296.2
  %94 = trunc nsw i64 %92 to i32
  %call.i598.3 = call i32 @x264_quant_4x4_trellis(ptr noundef nonnull %h, ptr noundef nonnull %arrayidx249.3, i32 noundef 1, i32 noundef %0, i32 noundef 2, i32 noundef 0, i32 noundef 0, i32 noundef %94) #6
  br label %x264_quant_4x4.exit.3

if.else.i600.3:                                   ; preds = %for.inc296.2
  %95 = load ptr, ptr %quant_4x4.i, align 8
  %96 = load ptr, ptr %arrayidx.i601, align 8
  %arrayidx3.i603.3 = getelementptr inbounds [16 x i16], ptr %96, i64 %idxprom2.i602
  %97 = load ptr, ptr %arrayidx5.i604, align 8
  %arrayidx7.i605.3 = getelementptr inbounds [16 x i16], ptr %97, i64 %idxprom2.i602
  %call9.i606.3 = call i32 %95(ptr noundef nonnull %arrayidx249.3, ptr noundef %arrayidx3.i603.3, ptr noundef %arrayidx7.i605.3) #6
  br label %x264_quant_4x4.exit.3

x264_quant_4x4.exit.3:                            ; preds = %if.else.i600.3, %if.then.i597.3
  %retval.0.i599.3 = phi i32 [ %call.i598.3, %if.then.i597.3 ], [ %call9.i606.3, %if.else.i600.3 ]
  %conv254.3 = trunc i32 %retval.0.i599.3 to i8
  %arrayidx261.3 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %92
  %98 = load i32, ptr %arrayidx261.3, align 4
  %idxprom262.3 = sext i32 %98 to i64
  %arrayidx263.3 = getelementptr inbounds [48 x i8], ptr %non_zero_count257, i64 0, i64 %idxprom262.3
  store i8 %conv254.3, ptr %arrayidx263.3, align 1
  %tobool264.not.3 = icmp eq i32 %retval.0.i599.3, 0
  br i1 %tobool264.not.3, label %for.inc296.3, label %if.then265.3

if.then265.3:                                     ; preds = %x264_quant_4x4.exit.3
  %99 = load ptr, ptr %scan_4x4, align 8
  %arrayidx272.3 = getelementptr inbounds [24 x [16 x i16]], ptr %luma4x4268, i64 0, i64 %92
  call void %99(ptr noundef nonnull %arrayidx272.3, ptr noundef nonnull %arrayidx249.3) #6
  %100 = load ptr, ptr %dequant_4x4, align 8
  %101 = load ptr, ptr %arrayidx281, align 8
  call void %100(ptr noundef nonnull %arrayidx249.3, ptr noundef %101, i32 noundef %0) #6
  br i1 %tobool282.not, label %for.inc296.3, label %if.then283.3

if.then283.3:                                     ; preds = %if.then265.3
  %102 = load ptr, ptr %decimate_score16, align 8
  %call292.3 = call i32 %102(ptr noundef nonnull %arrayidx272.3) #6
  %add293.3 = add nsw i32 %call292.3, %i_decimate_8x8.2.2
  br label %for.inc296.3

for.inc296.3:                                     ; preds = %if.then283.3, %if.then265.3, %x264_quant_4x4.exit.3
  %nnz8x8.5.3 = phi i32 [ %nnz8x8.5.2, %x264_quant_4x4.exit.3 ], [ 1, %if.then283.3 ], [ 1, %if.then265.3 ]
  %i_decimate_8x8.2.3 = phi i32 [ %i_decimate_8x8.2.2, %x264_quant_4x4.exit.3 ], [ %add293.3, %if.then283.3 ], [ %i_decimate_8x8.2.2, %if.then265.3 ]
  %tobool299 = icmp ne i32 %3, 0
  %cmp301 = icmp slt i32 %i_decimate_8x8.2.3, 4
  %or.cond = select i1 %tobool299, i1 %cmp301, i1 false
  %spec.select = select i1 %or.cond, i32 0, i32 %nnz8x8.5.3
  %tobool305.not = icmp eq i32 %spec.select, 0
  br i1 %tobool305.not, label %if.else309, label %if.then306

if.then306:                                       ; preds = %for.inc296.3
  %add8x8_idct = getelementptr inbounds i8, ptr %h, i64 32944
  %103 = load ptr, ptr %add8x8_idct, align 16
  call void %103(ptr noundef %add.ptr20, ptr noundef nonnull %dct4x4) #6
  br label %if.end328

if.else309:                                       ; preds = %for.inc296.3
  store i16 0, ptr %arrayidx263, align 1
  %add323 = or disjoint i32 %mul251, 2
  %idxprom324 = sext i32 %add323 to i64
  %arrayidx325 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %idxprom324
  %104 = load i32, ptr %arrayidx325, align 8
  %idxprom326 = sext i32 %104 to i64
  %arrayidx327 = getelementptr inbounds [48 x i8], ptr %non_zero_count257, i64 0, i64 %idxprom326
  store i16 0, ptr %arrayidx327, align 1
  br label %if.end328

if.end328:                                        ; preds = %if.else309, %if.then306
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %dct4x4) #6
  br label %if.end329

if.end329:                                        ; preds = %if.end328, %if.end238
  %nnz8x8.7 = phi i32 [ %nnz8x8.3, %if.end238 ], [ %spec.select, %if.end328 ]
  %i_chroma_qp = getelementptr inbounds i8, ptr %h, i64 25796
  %105 = load i32, ptr %i_chroma_qp, align 4
  %mul345 = shl nuw nsw i32 %and, 2
  %idx.ext346 = zext nneg i32 %mul345 to i64
  %mul350 = shl nsw i32 %shr, 6
  %idx.ext351 = sext i32 %mul350 to i64
  %dctf368 = getelementptr inbounds i8, ptr %h, i64 32912
  %b_trellis372 = getelementptr inbounds i8, ptr %h, i64 16416
  %quant_4x4 = getelementptr inbounds i8, ptr %h, i64 33088
  %arrayidx380 = getelementptr inbounds i8, ptr %h, i64 3464
  %idxprom381 = sext i32 %105 to i64
  %arrayidx384 = getelementptr inbounds i8, ptr %h, i64 3512
  %non_zero_count393 = getelementptr inbounds i8, ptr %h, i64 25072
  %add394 = add nsw i32 %i8, 16
  %scan_4x4404 = getelementptr inbounds i8, ptr %h, i64 33040
  %luma4x4406 = getelementptr inbounds i8, ptr %h, i64 15600
  %dequant_4x4415 = getelementptr inbounds i8, ptr %h, i64 33120
  %arrayidx418 = getelementptr inbounds i8, ptr %h, i64 3368
  %add4x4_idct = getelementptr inbounds i8, ptr %h, i64 32920
  %106 = sext i32 %add394 to i64
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %dct4x4337) #6
  %arrayidx343 = getelementptr inbounds i8, ptr %h, i64 21352
  %107 = load ptr, ptr %arrayidx343, align 8
  %add.ptr347 = getelementptr inbounds i8, ptr %107, i64 %idx.ext346
  %add.ptr352 = getelementptr inbounds i8, ptr %add.ptr347, i64 %idx.ext351
  %arrayidx358 = getelementptr inbounds i8, ptr %h, i64 21400
  %108 = load ptr, ptr %arrayidx358, align 8
  %add.ptr362 = getelementptr inbounds i8, ptr %108, i64 %idx.ext346
  %add.ptr367 = getelementptr inbounds i8, ptr %add.ptr362, i64 %idx.ext6
  %109 = load ptr, ptr %dctf368, align 16
  call void %109(ptr noundef nonnull %dct4x4337, ptr noundef %add.ptr352, ptr noundef %add.ptr367) #6
  store i16 0, ptr %dct4x4337, align 16
  %110 = load i32, ptr %b_trellis372, align 16
  %tobool373.not = icmp eq i32 %110, 0
  br i1 %tobool373.not, label %if.else377, label %if.then374

if.then374:                                       ; preds = %if.end329
  %call376 = call i32 @x264_quant_4x4_trellis(ptr noundef nonnull %h, ptr noundef nonnull %dct4x4337, i32 noundef 3, i32 noundef %105, i32 noundef 4, i32 noundef 0, i32 noundef 1, i32 noundef 0) #6
  br label %if.end389

if.else377:                                       ; preds = %if.end329
  %111 = load ptr, ptr %quant_4x4, align 8
  %112 = load ptr, ptr %arrayidx380, align 8
  %arrayidx382 = getelementptr inbounds [16 x i16], ptr %112, i64 %idxprom381
  %113 = load ptr, ptr %arrayidx384, align 8
  %arrayidx386 = getelementptr inbounds [16 x i16], ptr %113, i64 %idxprom381
  %call388 = call i32 %111(ptr noundef nonnull %dct4x4337, ptr noundef %arrayidx382, ptr noundef %arrayidx386) #6
  br label %if.end389

if.end389:                                        ; preds = %if.else377, %if.then374
  %nz.0 = phi i32 [ %call376, %if.then374 ], [ %call388, %if.else377 ]
  %conv390 = trunc i32 %nz.0 to i8
  %arrayidx398 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %106
  %114 = load i32, ptr %arrayidx398, align 4
  %idxprom399 = sext i32 %114 to i64
  %arrayidx400 = getelementptr inbounds [48 x i8], ptr %non_zero_count393, i64 0, i64 %idxprom399
  store i8 %conv390, ptr %arrayidx400, align 1
  %tobool401.not = icmp eq i32 %nz.0, 0
  br i1 %tobool401.not, label %if.end421, label %if.then402

if.then402:                                       ; preds = %if.end389
  %115 = load ptr, ptr %scan_4x4404, align 8
  %arrayidx411 = getelementptr inbounds [24 x [16 x i16]], ptr %luma4x4406, i64 0, i64 %106
  call void %115(ptr noundef nonnull %arrayidx411, ptr noundef nonnull %dct4x4337) #6
  %116 = load ptr, ptr %dequant_4x4415, align 8
  %117 = load ptr, ptr %arrayidx418, align 8
  call void %116(ptr noundef nonnull %dct4x4337, ptr noundef %117, i32 noundef %105) #6
  %118 = load ptr, ptr %add4x4_idct, align 8
  call void %118(ptr noundef %add.ptr367, ptr noundef nonnull %dct4x4337) #6
  br label %if.end421

if.end421:                                        ; preds = %if.then402, %if.end389
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %dct4x4337) #6
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %dct4x4337) #6
  %arrayidx343.1 = getelementptr inbounds i8, ptr %h, i64 21360
  %119 = load ptr, ptr %arrayidx343.1, align 8
  %add.ptr347.1 = getelementptr inbounds i8, ptr %119, i64 %idx.ext346
  %add.ptr352.1 = getelementptr inbounds i8, ptr %add.ptr347.1, i64 %idx.ext351
  %arrayidx358.1 = getelementptr inbounds i8, ptr %h, i64 21408
  %120 = load ptr, ptr %arrayidx358.1, align 8
  %add.ptr362.1 = getelementptr inbounds i8, ptr %120, i64 %idx.ext346
  %add.ptr367.1 = getelementptr inbounds i8, ptr %add.ptr362.1, i64 %idx.ext6
  %121 = load ptr, ptr %dctf368, align 16
  call void %121(ptr noundef nonnull %dct4x4337, ptr noundef %add.ptr352.1, ptr noundef %add.ptr367.1) #6
  store i16 0, ptr %dct4x4337, align 16
  %122 = load i32, ptr %b_trellis372, align 16
  %tobool373.not.1 = icmp eq i32 %122, 0
  br i1 %tobool373.not.1, label %if.else377.1, label %if.then374.1

if.then374.1:                                     ; preds = %if.end421
  %call376.1 = call i32 @x264_quant_4x4_trellis(ptr noundef nonnull %h, ptr noundef nonnull %dct4x4337, i32 noundef 3, i32 noundef %105, i32 noundef 4, i32 noundef 0, i32 noundef 1, i32 noundef 0) #6
  br label %if.end389.1

if.else377.1:                                     ; preds = %if.end421
  %123 = load ptr, ptr %quant_4x4, align 8
  %124 = load ptr, ptr %arrayidx380, align 8
  %arrayidx382.1 = getelementptr inbounds [16 x i16], ptr %124, i64 %idxprom381
  %125 = load ptr, ptr %arrayidx384, align 8
  %arrayidx386.1 = getelementptr inbounds [16 x i16], ptr %125, i64 %idxprom381
  %call388.1 = call i32 %123(ptr noundef nonnull %dct4x4337, ptr noundef %arrayidx382.1, ptr noundef %arrayidx386.1) #6
  br label %if.end389.1

if.end389.1:                                      ; preds = %if.else377.1, %if.then374.1
  %nz.0.1 = phi i32 [ %call376.1, %if.then374.1 ], [ %call388.1, %if.else377.1 ]
  %conv390.1 = trunc i32 %nz.0.1 to i8
  %126 = add nsw i64 %106, 4
  %arrayidx398.1 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %126
  %127 = load i32, ptr %arrayidx398.1, align 4
  %idxprom399.1 = sext i32 %127 to i64
  %arrayidx400.1 = getelementptr inbounds [48 x i8], ptr %non_zero_count393, i64 0, i64 %idxprom399.1
  store i8 %conv390.1, ptr %arrayidx400.1, align 1
  %tobool401.not.1 = icmp eq i32 %nz.0.1, 0
  br i1 %tobool401.not.1, label %if.end421.1, label %if.then402.1

if.then402.1:                                     ; preds = %if.end389.1
  %128 = load ptr, ptr %scan_4x4404, align 8
  %arrayidx411.1 = getelementptr inbounds [24 x [16 x i16]], ptr %luma4x4406, i64 0, i64 %126
  call void %128(ptr noundef nonnull %arrayidx411.1, ptr noundef nonnull %dct4x4337) #6
  %129 = load ptr, ptr %dequant_4x4415, align 8
  %130 = load ptr, ptr %arrayidx418, align 8
  call void %129(ptr noundef nonnull %dct4x4337, ptr noundef %130, i32 noundef %105) #6
  %131 = load ptr, ptr %add4x4_idct, align 8
  call void %131(ptr noundef %add.ptr367.1, ptr noundef nonnull %dct4x4337) #6
  br label %if.end421.1

if.end421.1:                                      ; preds = %if.then402.1, %if.end389.1
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %dct4x4337) #6
  br label %if.end425

if.end425:                                        ; preds = %if.end84, %if.end421.1
  %nnz8x8.8 = phi i32 [ %nnz8x8.7, %if.end421.1 ], [ %nnz8x8.1, %if.end84 ]
  %shl = shl nuw i32 1, %i8
  %not = xor i32 %shl, -1
  %i_cbp_luma = getelementptr inbounds i8, ptr %h, i64 17400
  %132 = load i32, ptr %i_cbp_luma, align 8
  %and427 = and i32 %132, %not
  %shl428 = shl i32 %nnz8x8.8, %i8
  %or431 = or i32 %and427, %shl428
  store i32 %or431, ptr %i_cbp_luma, align 8
  %i_cbp_chroma = getelementptr inbounds i8, ptr %h, i64 17404
  store i32 2, ptr %i_cbp_chroma, align 4
  ret void
}

declare void @x264_mb_mc_8x8(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @x264_macroblock_encode_p4x4(ptr noundef %h, i32 noundef %i4) local_unnamed_addr #0 {
entry:
  %dct4x4 = alloca [16 x i16], align 16
  %i_qp1 = getelementptr inbounds i8, ptr %h, i64 25792
  %0 = load i32, ptr %i_qp1, align 16
  %p_fenc3 = getelementptr inbounds i8, ptr %h, i64 21344
  %1 = load ptr, ptr %p_fenc3, align 16
  %idxprom = sext i32 %i4 to i64
  %arrayidx4 = getelementptr inbounds [16 x i8], ptr @block_idx_xy_fenc, i64 0, i64 %idxprom
  %2 = load i8, ptr %arrayidx4, align 1
  %idxprom5 = zext i8 %2 to i64
  %arrayidx6 = getelementptr inbounds i8, ptr %1, i64 %idxprom5
  %p_fdec9 = getelementptr inbounds i8, ptr %h, i64 21392
  %3 = load ptr, ptr %p_fdec9, align 16
  %arrayidx12 = getelementptr inbounds [16 x i16], ptr @block_idx_xy_fdec, i64 0, i64 %idxprom
  %4 = load i16, ptr %arrayidx12, align 2
  %idxprom13 = zext i16 %4 to i64
  %arrayidx14 = getelementptr inbounds i8, ptr %3, i64 %idxprom13
  %b_lossless = getelementptr inbounds i8, ptr %h, i64 25812
  %5 = load i32, ptr %b_lossless, align 4
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %sub_4x4 = getelementptr inbounds i8, ptr %h, i64 33056
  %6 = load ptr, ptr %sub_4x4, align 8
  %luma4x4 = getelementptr inbounds i8, ptr %h, i64 15600
  %arrayidx17 = getelementptr inbounds [24 x [16 x i16]], ptr %luma4x4, i64 0, i64 %idxprom
  %call = tail call i32 %6(ptr noundef nonnull %arrayidx17, ptr noundef %arrayidx6, ptr noundef %arrayidx14) #6
  %conv = trunc i32 %call to i8
  %non_zero_count = getelementptr inbounds i8, ptr %h, i64 25072
  %arrayidx20 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %idxprom
  %7 = load i32, ptr %arrayidx20, align 4
  %idxprom21 = sext i32 %7 to i64
  %arrayidx22 = getelementptr inbounds [48 x i8], ptr %non_zero_count, i64 0, i64 %idxprom21
  store i8 %conv, ptr %arrayidx22, align 1
  br label %if.end47

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %dct4x4) #6
  %dctf = getelementptr inbounds i8, ptr %h, i64 32912
  %8 = load ptr, ptr %dctf, align 16
  call void %8(ptr noundef nonnull %dct4x4, ptr noundef %arrayidx6, ptr noundef %arrayidx14) #6
  %b_trellis.i = getelementptr inbounds i8, ptr %h, i64 16416
  %9 = load i32, ptr %b_trellis.i, align 16
  %tobool1.not.i = icmp eq i32 %9, 0
  br i1 %tobool1.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.else
  %call.i = call i32 @x264_quant_4x4_trellis(ptr noundef nonnull %h, ptr noundef nonnull %dct4x4, i32 noundef 1, i32 noundef %0, i32 noundef 2, i32 noundef 0, i32 noundef 0, i32 noundef %i4) #6
  br label %x264_quant_4x4.exit

if.else.i:                                        ; preds = %if.else
  %quant_4x4.i = getelementptr inbounds i8, ptr %h, i64 33088
  %10 = load ptr, ptr %quant_4x4.i, align 8
  %arrayidx.i = getelementptr inbounds i8, ptr %h, i64 3448
  %11 = load ptr, ptr %arrayidx.i, align 8
  %idxprom2.i = sext i32 %0 to i64
  %arrayidx3.i = getelementptr inbounds [16 x i16], ptr %11, i64 %idxprom2.i
  %arrayidx5.i = getelementptr inbounds i8, ptr %h, i64 3496
  %12 = load ptr, ptr %arrayidx5.i, align 8
  %arrayidx7.i = getelementptr inbounds [16 x i16], ptr %12, i64 %idxprom2.i
  %call9.i = call i32 %10(ptr noundef nonnull %dct4x4, ptr noundef %arrayidx3.i, ptr noundef %arrayidx7.i) #6
  br label %x264_quant_4x4.exit

x264_quant_4x4.exit:                              ; preds = %if.then.i, %if.else.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ %call9.i, %if.else.i ]
  %conv26 = trunc i32 %retval.0.i to i8
  %non_zero_count29 = getelementptr inbounds i8, ptr %h, i64 25072
  %arrayidx31 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %idxprom
  %13 = load i32, ptr %arrayidx31, align 4
  %idxprom32 = sext i32 %13 to i64
  %arrayidx33 = getelementptr inbounds [48 x i8], ptr %non_zero_count29, i64 0, i64 %idxprom32
  store i8 %conv26, ptr %arrayidx33, align 1
  %tobool34.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool34.not, label %if.end, label %if.then35

if.then35:                                        ; preds = %x264_quant_4x4.exit
  %scan_4x4 = getelementptr inbounds i8, ptr %h, i64 33040
  %14 = load ptr, ptr %scan_4x4, align 8
  %luma4x438 = getelementptr inbounds i8, ptr %h, i64 15600
  %arrayidx40 = getelementptr inbounds [24 x [16 x i16]], ptr %luma4x438, i64 0, i64 %idxprom
  call void %14(ptr noundef nonnull %arrayidx40, ptr noundef nonnull %dct4x4) #6
  %dequant_4x4 = getelementptr inbounds i8, ptr %h, i64 33120
  %15 = load ptr, ptr %dequant_4x4, align 8
  %arrayidx44 = getelementptr inbounds i8, ptr %h, i64 3352
  %16 = load ptr, ptr %arrayidx44, align 8
  call void %15(ptr noundef nonnull %dct4x4, ptr noundef %16, i32 noundef %0) #6
  %add4x4_idct = getelementptr inbounds i8, ptr %h, i64 32920
  %17 = load ptr, ptr %add4x4_idct, align 8
  call void %17(ptr noundef %arrayidx14, ptr noundef nonnull %dct4x4) #6
  br label %if.end

if.end:                                           ; preds = %if.then35, %x264_quant_4x4.exit
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %dct4x4) #6
  br label %if.end47

if.end47:                                         ; preds = %if.end, %if.then
  ret void
}

declare i32 @x264_quant_8x8_trellis(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smin.v2i32(<2 x i32>, <2 x i32>) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.or.v4i64(<4 x i64>) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

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
!16 = distinct !{!16, !14}
