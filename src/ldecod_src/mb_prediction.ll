; ModuleID = 'ldecod_src/mb_prediction.c'
source_filename = "ldecod_src/mb_prediction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pic_motion_params = type { [2 x ptr], [2 x %struct.MotionVector], [2 x i8] }
%struct.MotionVector = type { i16, i16 }

@decode_block_scan = internal unnamed_addr constant [16 x i8] c"\00\01\04\05\02\03\06\07\08\09\0C\0D\0A\0B\0E\0F", align 16
@.str = private unnamed_addr constant [67 x i8] c"temporal direct error: colocated block has ref that is unavailable\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @mb_pred_intra4x4(ptr noundef %currMB, i32 noundef %curr_plane, ptr noundef %currImg, ptr nocapture noundef readonly %dec_picture) local_unnamed_addr #0 {
entry:
  %0 = load ptr, ptr %currMB, align 8
  %chroma_format_idc = getelementptr inbounds i8, ptr %dec_picture, i64 268
  %1 = load i32, ptr %chroma_format_idc, align 4
  %sub = add nsw i32 %1, -1
  %is_lossless = getelementptr inbounds i8, ptr %currMB, i64 92
  %2 = load i32, ptr %is_lossless, align 4
  %cmp = icmp eq i32 %2, 0
  %cond = select i1 %cmp, ptr @itrans4x4, ptr @Inv_Residual_trans_4x4
  %itrans_4x4 = getelementptr inbounds i8, ptr %currMB, i64 432
  store ptr %cond, ptr %itrans_4x4, align 8
  %block_x = getelementptr inbounds i8, ptr %currMB, i64 32
  %block_y = getelementptr inbounds i8, ptr %currMB, i64 36
  %mb_rec = getelementptr inbounds i8, ptr %0, i64 1256
  %idxprom20 = zext i32 %curr_plane to i64
  br label %for.body

for.body:                                         ; preds = %entry, %if.end.3
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %if.end.3 ]
  %block8x8.079 = phi i32 [ 0, %entry ], [ %inc25, %if.end.3 ]
  %arrayidx = getelementptr inbounds [16 x i8], ptr @decode_block_scan, i64 0, i64 %indvars.iv
  %3 = load i8, ptr %arrayidx, align 4
  %conv = zext i8 %3 to i32
  %and = and i32 %conv, 3
  %shr = lshr i32 %conv, 2
  %and9 = and i32 %shr, 3
  %shl = shl nuw nsw i32 %and, 2
  %shl10 = shl nuw nsw i32 %and9, 2
  %4 = load i32, ptr %block_x, align 8
  %add11 = add nsw i32 %and, %4
  %5 = load i32, ptr %block_y, align 4
  %add12 = add nsw i32 %and9, %5
  %call = tail call i32 @intrapred(ptr noundef nonnull %currMB, i32 noundef %curr_plane, i32 noundef %shl, i32 noundef %shl10, i32 noundef %add11, i32 noundef %add12) #7
  %cmp15 = icmp eq i32 %call, 1
  br i1 %cmp15, label %cleanup, label %if.end

if.end:                                           ; preds = %for.body
  %mul14 = shl nsw i32 %add11, 2
  %mul13 = shl nsw i32 %add12, 2
  %6 = load ptr, ptr %itrans_4x4, align 8
  tail call void %6(ptr noundef nonnull %currMB, i32 noundef %curr_plane, i32 noundef %shl, i32 noundef %shl10) #7
  %idxprom18 = sext i32 %mul13 to i64
  %arrayidx19 = getelementptr inbounds ptr, ptr %currImg, i64 %idxprom18
  %7 = load ptr, ptr %mb_rec, align 8
  %arrayidx21 = getelementptr inbounds ptr, ptr %7, i64 %idxprom20
  %8 = load ptr, ptr %arrayidx21, align 8
  %idxprom22 = zext nneg i32 %shl10 to i64
  %arrayidx23 = getelementptr inbounds ptr, ptr %8, i64 %idxprom22
  tail call void @copy_image_data_4x4(ptr noundef %arrayidx19, ptr noundef %arrayidx23, i32 noundef %mul14, i32 noundef %shl) #7
  %indvars.iv.next81 = or disjoint i64 %indvars.iv, 1
  %arrayidx.1 = getelementptr inbounds [16 x i8], ptr @decode_block_scan, i64 0, i64 %indvars.iv.next81
  %9 = load i8, ptr %arrayidx.1, align 1
  %conv.1 = zext i8 %9 to i32
  %and.1 = and i32 %conv.1, 3
  %shr.1 = lshr i32 %conv.1, 2
  %and9.1 = and i32 %shr.1, 3
  %shl.1 = shl nuw nsw i32 %and.1, 2
  %shl10.1 = shl nuw nsw i32 %and9.1, 2
  %10 = load i32, ptr %block_x, align 8
  %add11.1 = add nsw i32 %and.1, %10
  %11 = load i32, ptr %block_y, align 4
  %add12.1 = add nsw i32 %and9.1, %11
  %call.1 = tail call i32 @intrapred(ptr noundef nonnull %currMB, i32 noundef %curr_plane, i32 noundef %shl.1, i32 noundef %shl10.1, i32 noundef %add11.1, i32 noundef %add12.1) #7
  %cmp15.1 = icmp eq i32 %call.1, 1
  br i1 %cmp15.1, label %cleanup, label %if.end.1

if.end.1:                                         ; preds = %if.end
  %mul14.1 = shl nsw i32 %add11.1, 2
  %mul13.1 = shl nsw i32 %add12.1, 2
  %12 = load ptr, ptr %itrans_4x4, align 8
  tail call void %12(ptr noundef nonnull %currMB, i32 noundef %curr_plane, i32 noundef %shl.1, i32 noundef %shl10.1) #7
  %idxprom18.1 = sext i32 %mul13.1 to i64
  %arrayidx19.1 = getelementptr inbounds ptr, ptr %currImg, i64 %idxprom18.1
  %13 = load ptr, ptr %mb_rec, align 8
  %arrayidx21.1 = getelementptr inbounds ptr, ptr %13, i64 %idxprom20
  %14 = load ptr, ptr %arrayidx21.1, align 8
  %idxprom22.1 = zext nneg i32 %shl10.1 to i64
  %arrayidx23.1 = getelementptr inbounds ptr, ptr %14, i64 %idxprom22.1
  tail call void @copy_image_data_4x4(ptr noundef %arrayidx19.1, ptr noundef %arrayidx23.1, i32 noundef %mul14.1, i32 noundef %shl.1) #7
  %indvars.iv.next81.1 = or disjoint i64 %indvars.iv, 2
  %arrayidx.2 = getelementptr inbounds [16 x i8], ptr @decode_block_scan, i64 0, i64 %indvars.iv.next81.1
  %15 = load i8, ptr %arrayidx.2, align 2
  %conv.2 = zext i8 %15 to i32
  %and.2 = and i32 %conv.2, 3
  %shr.2 = lshr i32 %conv.2, 2
  %and9.2 = and i32 %shr.2, 3
  %shl.2 = shl nuw nsw i32 %and.2, 2
  %shl10.2 = shl nuw nsw i32 %and9.2, 2
  %16 = load i32, ptr %block_x, align 8
  %add11.2 = add nsw i32 %and.2, %16
  %17 = load i32, ptr %block_y, align 4
  %add12.2 = add nsw i32 %and9.2, %17
  %call.2 = tail call i32 @intrapred(ptr noundef nonnull %currMB, i32 noundef %curr_plane, i32 noundef %shl.2, i32 noundef %shl10.2, i32 noundef %add11.2, i32 noundef %add12.2) #7
  %cmp15.2 = icmp eq i32 %call.2, 1
  br i1 %cmp15.2, label %cleanup, label %if.end.2

if.end.2:                                         ; preds = %if.end.1
  %mul14.2 = shl nsw i32 %add11.2, 2
  %mul13.2 = shl nsw i32 %add12.2, 2
  %18 = load ptr, ptr %itrans_4x4, align 8
  tail call void %18(ptr noundef nonnull %currMB, i32 noundef %curr_plane, i32 noundef %shl.2, i32 noundef %shl10.2) #7
  %idxprom18.2 = sext i32 %mul13.2 to i64
  %arrayidx19.2 = getelementptr inbounds ptr, ptr %currImg, i64 %idxprom18.2
  %19 = load ptr, ptr %mb_rec, align 8
  %arrayidx21.2 = getelementptr inbounds ptr, ptr %19, i64 %idxprom20
  %20 = load ptr, ptr %arrayidx21.2, align 8
  %idxprom22.2 = zext nneg i32 %shl10.2 to i64
  %arrayidx23.2 = getelementptr inbounds ptr, ptr %20, i64 %idxprom22.2
  tail call void @copy_image_data_4x4(ptr noundef %arrayidx19.2, ptr noundef %arrayidx23.2, i32 noundef %mul14.2, i32 noundef %shl.2) #7
  %indvars.iv.next81.2 = or disjoint i64 %indvars.iv, 3
  %arrayidx.3 = getelementptr inbounds [16 x i8], ptr @decode_block_scan, i64 0, i64 %indvars.iv.next81.2
  %21 = load i8, ptr %arrayidx.3, align 1
  %conv.3 = zext i8 %21 to i32
  %and.3 = and i32 %conv.3, 3
  %shr.3 = lshr i32 %conv.3, 2
  %and9.3 = and i32 %shr.3, 3
  %shl.3 = shl nuw nsw i32 %and.3, 2
  %shl10.3 = shl nuw nsw i32 %and9.3, 2
  %22 = load i32, ptr %block_x, align 8
  %add11.3 = add nsw i32 %and.3, %22
  %23 = load i32, ptr %block_y, align 4
  %add12.3 = add nsw i32 %and9.3, %23
  %call.3 = tail call i32 @intrapred(ptr noundef nonnull %currMB, i32 noundef %curr_plane, i32 noundef %shl.3, i32 noundef %shl10.3, i32 noundef %add11.3, i32 noundef %add12.3) #7
  %cmp15.3 = icmp eq i32 %call.3, 1
  br i1 %cmp15.3, label %cleanup, label %if.end.3

if.end.3:                                         ; preds = %if.end.2
  %mul14.3 = shl nsw i32 %add11.3, 2
  %mul13.3 = shl nsw i32 %add12.3, 2
  %24 = load ptr, ptr %itrans_4x4, align 8
  tail call void %24(ptr noundef nonnull %currMB, i32 noundef %curr_plane, i32 noundef %shl.3, i32 noundef %shl10.3) #7
  %idxprom18.3 = sext i32 %mul13.3 to i64
  %arrayidx19.3 = getelementptr inbounds ptr, ptr %currImg, i64 %idxprom18.3
  %25 = load ptr, ptr %mb_rec, align 8
  %arrayidx21.3 = getelementptr inbounds ptr, ptr %25, i64 %idxprom20
  %26 = load ptr, ptr %arrayidx21.3, align 8
  %idxprom22.3 = zext nneg i32 %shl10.3 to i64
  %arrayidx23.3 = getelementptr inbounds ptr, ptr %26, i64 %idxprom22.3
  tail call void @copy_image_data_4x4(ptr noundef %arrayidx19.3, ptr noundef %arrayidx23.3, i32 noundef %mul14.3, i32 noundef %shl.3) #7
  %inc25 = add nuw nsw i32 %block8x8.079, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4
  %exitcond.not = icmp eq i32 %inc25, 4
  br i1 %exitcond.not, label %for.end26, label %for.body

for.end26:                                        ; preds = %if.end.3
  %27 = load i32, ptr %chroma_format_idc, align 4
  switch i32 %27, label %if.then33 [
    i32 0, label %if.end34
    i32 3, label %if.end34
  ]

if.then33:                                        ; preds = %for.end26
  tail call void @intra_cr_decoding(ptr noundef nonnull %currMB, i32 noundef %sub) #7
  br label %if.end34

if.end34:                                         ; preds = %for.end26, %for.end26, %if.then33
  %cbp = getelementptr inbounds i8, ptr %currMB, i64 284
  %28 = load i32, ptr %cbp, align 4
  %cmp35.not = icmp eq i32 %28, 0
  br i1 %cmp35.not, label %cleanup, label %if.then37

if.then37:                                        ; preds = %if.end34
  %is_reset_coeff = getelementptr inbounds i8, ptr %0, i64 1240
  store i32 0, ptr %is_reset_coeff, align 8
  br label %cleanup

cleanup:                                          ; preds = %for.body, %if.end, %if.end.1, %if.end.2, %if.end34, %if.then37
  ret i32 1
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare void @itrans4x4(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #2

declare void @Inv_Residual_trans_4x4(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #2

declare i32 @intrapred(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @copy_image_data_4x4(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @intra_cr_decoding(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @mb_pred_intra16x16(ptr noundef %currMB, i32 noundef %curr_plane, ptr nocapture noundef readonly %dec_picture) local_unnamed_addr #0 {
entry:
  %chroma_format_idc = getelementptr inbounds i8, ptr %dec_picture, i64 268
  %0 = load i32, ptr %chroma_format_idc, align 4
  %i16mode = getelementptr inbounds i8, ptr %currMB, i64 360
  %1 = load i32, ptr %i16mode, align 8
  %call = tail call i32 @intrapred16x16(ptr noundef %currMB, i32 noundef %curr_plane, i32 noundef %1) #7
  %2 = load i32, ptr %i16mode, align 8
  %conv = trunc i32 %2 to i8
  %ipmode_DPCM = getelementptr inbounds i8, ptr %currMB, i64 372
  store i8 %conv, ptr %ipmode_DPCM, align 4
  tail call void @iMBtrans4x4(ptr noundef %currMB, i32 noundef %curr_plane, i32 noundef 0) #7
  %3 = load i32, ptr %chroma_format_idc, align 4
  switch i32 %3, label %if.then [
    i32 0, label %if.end
    i32 3, label %if.end
  ]

if.then:                                          ; preds = %entry
  %sub = add nsw i32 %0, -1
  tail call void @intra_cr_decoding(ptr noundef nonnull %currMB, i32 noundef %sub) #7
  br label %if.end

if.end:                                           ; preds = %entry, %entry, %if.then
  %4 = load ptr, ptr %currMB, align 8
  %is_reset_coeff = getelementptr inbounds i8, ptr %4, i64 1240
  store i32 0, ptr %is_reset_coeff, align 8
  ret i32 1
}

declare i32 @intrapred16x16(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @iMBtrans4x4(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @mb_pred_intra8x8(ptr noundef %currMB, i32 noundef %curr_plane, ptr noundef %currImg, ptr nocapture noundef readonly %dec_picture) local_unnamed_addr #0 {
entry:
  %0 = load ptr, ptr %currMB, align 8
  %chroma_format_idc = getelementptr inbounds i8, ptr %dec_picture, i64 268
  %1 = load i32, ptr %chroma_format_idc, align 4
  %is_lossless = getelementptr inbounds i8, ptr %currMB, i64 92
  %2 = load i32, ptr %is_lossless, align 4
  %cmp = icmp eq i32 %2, 0
  %cond = select i1 %cmp, ptr @itrans8x8, ptr @Inv_Residual_trans_8x8
  %itrans_8x8 = getelementptr inbounds i8, ptr %currMB, i64 440
  store ptr %cond, ptr %itrans_8x8, align 8
  %pix_y = getelementptr inbounds i8, ptr %currMB, i64 48
  %mb_rec = getelementptr inbounds i8, ptr %0, i64 1256
  %idxprom4 = zext i32 %curr_plane to i64
  %pix_x = getelementptr inbounds i8, ptr %currMB, i64 44
  %call = tail call i32 @intrapred8x8(ptr noundef nonnull %currMB, i32 noundef %curr_plane, i32 noundef 0, i32 noundef 0) #7
  %3 = load ptr, ptr %itrans_8x8, align 8
  tail call void %3(ptr noundef nonnull %currMB, i32 noundef %curr_plane, i32 noundef 0, i32 noundef 0) #7
  %4 = load i32, ptr %pix_y, align 8
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %currImg, i64 %idxprom
  %5 = load ptr, ptr %mb_rec, align 8
  %arrayidx5 = getelementptr inbounds ptr, ptr %5, i64 %idxprom4
  %6 = load ptr, ptr %arrayidx5, align 8
  %7 = load i32, ptr %pix_x, align 4
  tail call void @copy_image_data_8x8(ptr noundef %arrayidx, ptr noundef %6, i32 noundef %7, i32 noundef 0) #7
  %call.1 = tail call i32 @intrapred8x8(ptr noundef nonnull %currMB, i32 noundef %curr_plane, i32 noundef 8, i32 noundef 0) #7
  %8 = load ptr, ptr %itrans_8x8, align 8
  tail call void %8(ptr noundef nonnull %currMB, i32 noundef %curr_plane, i32 noundef 8, i32 noundef 0) #7
  %9 = load i32, ptr %pix_y, align 8
  %idxprom.1 = sext i32 %9 to i64
  %arrayidx.1 = getelementptr inbounds ptr, ptr %currImg, i64 %idxprom.1
  %10 = load ptr, ptr %mb_rec, align 8
  %arrayidx5.1 = getelementptr inbounds ptr, ptr %10, i64 %idxprom4
  %11 = load ptr, ptr %arrayidx5.1, align 8
  %12 = load i32, ptr %pix_x, align 4
  %add8.1 = add nsw i32 %12, 8
  tail call void @copy_image_data_8x8(ptr noundef %arrayidx.1, ptr noundef %11, i32 noundef %add8.1, i32 noundef 8) #7
  %call.2 = tail call i32 @intrapred8x8(ptr noundef nonnull %currMB, i32 noundef %curr_plane, i32 noundef 0, i32 noundef 8) #7
  %13 = load ptr, ptr %itrans_8x8, align 8
  tail call void %13(ptr noundef nonnull %currMB, i32 noundef %curr_plane, i32 noundef 0, i32 noundef 8) #7
  %14 = load i32, ptr %pix_y, align 8
  %15 = sext i32 %14 to i64
  %16 = getelementptr ptr, ptr %currImg, i64 %15
  %arrayidx.2 = getelementptr i8, ptr %16, i64 64
  %17 = load ptr, ptr %mb_rec, align 8
  %arrayidx5.2 = getelementptr inbounds ptr, ptr %17, i64 %idxprom4
  %18 = load ptr, ptr %arrayidx5.2, align 8
  %arrayidx7.2 = getelementptr inbounds i8, ptr %18, i64 64
  %19 = load i32, ptr %pix_x, align 4
  tail call void @copy_image_data_8x8(ptr noundef %arrayidx.2, ptr noundef nonnull %arrayidx7.2, i32 noundef %19, i32 noundef 0) #7
  %call.3 = tail call i32 @intrapred8x8(ptr noundef nonnull %currMB, i32 noundef %curr_plane, i32 noundef 8, i32 noundef 8) #7
  %20 = load ptr, ptr %itrans_8x8, align 8
  tail call void %20(ptr noundef nonnull %currMB, i32 noundef %curr_plane, i32 noundef 8, i32 noundef 8) #7
  %21 = load i32, ptr %pix_y, align 8
  %22 = sext i32 %21 to i64
  %23 = getelementptr ptr, ptr %currImg, i64 %22
  %arrayidx.3 = getelementptr i8, ptr %23, i64 64
  %24 = load ptr, ptr %mb_rec, align 8
  %arrayidx5.3 = getelementptr inbounds ptr, ptr %24, i64 %idxprom4
  %25 = load ptr, ptr %arrayidx5.3, align 8
  %arrayidx7.3 = getelementptr inbounds i8, ptr %25, i64 64
  %26 = load i32, ptr %pix_x, align 4
  %add8.3 = add nsw i32 %26, 8
  tail call void @copy_image_data_8x8(ptr noundef %arrayidx.3, ptr noundef nonnull %arrayidx7.3, i32 noundef %add8.3, i32 noundef 8) #7
  %27 = load i32, ptr %chroma_format_idc, align 4
  switch i32 %27, label %if.then [
    i32 0, label %if.end
    i32 3, label %if.end
  ]

if.then:                                          ; preds = %entry
  %sub = add nsw i32 %1, -1
  tail call void @intra_cr_decoding(ptr noundef nonnull %currMB, i32 noundef %sub) #7
  br label %if.end

if.end:                                           ; preds = %entry, %entry, %if.then
  %cbp = getelementptr inbounds i8, ptr %currMB, i64 284
  %28 = load i32, ptr %cbp, align 4
  %cmp13.not = icmp eq i32 %28, 0
  br i1 %cmp13.not, label %if.end15, label %if.then14

if.then14:                                        ; preds = %if.end
  %is_reset_coeff = getelementptr inbounds i8, ptr %0, i64 1240
  store i32 0, ptr %is_reset_coeff, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.end
  ret i32 1
}

declare void @itrans8x8(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #2

declare void @Inv_Residual_trans_8x8(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #2

declare i32 @intrapred8x8(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @copy_image_data_8x8(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @mb_pred_skip(ptr noundef %currMB, i32 noundef %curr_plane, ptr noundef %currImg, ptr noundef %dec_picture) local_unnamed_addr #0 {
entry:
  %0 = load ptr, ptr %currMB, align 8
  %p_Vid1 = getelementptr inbounds i8, ptr %currMB, i64 8
  %1 = load ptr, ptr %p_Vid1, align 8
  tail call fastcc void @set_chroma_vector(ptr noundef nonnull %currMB)
  tail call void @perform_mc(ptr noundef nonnull %currMB, i32 noundef %curr_plane, ptr noundef %dec_picture, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 16, i32 noundef 16) #7
  %pix_y = getelementptr inbounds i8, ptr %currMB, i64 48
  %2 = load i32, ptr %pix_y, align 8
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %currImg, i64 %idxprom
  %mb_pred = getelementptr inbounds i8, ptr %0, i64 1248
  %3 = load ptr, ptr %mb_pred, align 8
  %idxprom2 = zext i32 %curr_plane to i64
  %arrayidx3 = getelementptr inbounds ptr, ptr %3, i64 %idxprom2
  %4 = load ptr, ptr %arrayidx3, align 8
  %pix_x = getelementptr inbounds i8, ptr %currMB, i64 44
  %5 = load i32, ptr %pix_x, align 4
  tail call void @copy_image_data_16x16(ptr noundef %arrayidx, ptr noundef %4, i32 noundef %5, i32 noundef 0) #7
  %chroma_format_idc = getelementptr inbounds i8, ptr %dec_picture, i64 268
  %6 = load i32, ptr %chroma_format_idc, align 4
  switch i32 %6, label %if.then [
    i32 0, label %if.end
    i32 3, label %if.end
  ]

if.then:                                          ; preds = %entry
  %imgUV = getelementptr inbounds i8, ptr %dec_picture, i64 136
  %7 = load ptr, ptr %imgUV, align 8
  %8 = load ptr, ptr %7, align 8
  %pix_c_y = getelementptr inbounds i8, ptr %currMB, i64 56
  %9 = load i32, ptr %pix_c_y, align 8
  %idxprom7 = sext i32 %9 to i64
  %arrayidx8 = getelementptr inbounds ptr, ptr %8, i64 %idxprom7
  %10 = load ptr, ptr %mb_pred, align 8
  %arrayidx10 = getelementptr inbounds i8, ptr %10, i64 8
  %11 = load ptr, ptr %arrayidx10, align 8
  %pix_c_x = getelementptr inbounds i8, ptr %currMB, i64 52
  %12 = load i32, ptr %pix_c_x, align 4
  %arrayidx11 = getelementptr inbounds i8, ptr %1, i64 849132
  %13 = load i32, ptr %arrayidx11, align 4
  %arrayidx15 = getelementptr inbounds i8, ptr %1, i64 849136
  %14 = load i32, ptr %arrayidx15, align 4
  tail call void @copy_image_data(ptr noundef %arrayidx8, ptr noundef %11, i32 noundef %12, i32 noundef 0, i32 noundef %13, i32 noundef %14) #7
  %15 = load ptr, ptr %imgUV, align 8
  %arrayidx17 = getelementptr inbounds i8, ptr %15, i64 8
  %16 = load ptr, ptr %arrayidx17, align 8
  %17 = load i32, ptr %pix_c_y, align 8
  %idxprom19 = sext i32 %17 to i64
  %arrayidx20 = getelementptr inbounds ptr, ptr %16, i64 %idxprom19
  %18 = load ptr, ptr %mb_pred, align 8
  %arrayidx22 = getelementptr inbounds i8, ptr %18, i64 16
  %19 = load ptr, ptr %arrayidx22, align 8
  %20 = load i32, ptr %pix_c_x, align 4
  %21 = load i32, ptr %arrayidx11, align 4
  %22 = load i32, ptr %arrayidx15, align 4
  tail call void @copy_image_data(ptr noundef %arrayidx20, ptr noundef %19, i32 noundef %20, i32 noundef 0, i32 noundef %21, i32 noundef %22) #7
  br label %if.end

if.end:                                           ; preds = %entry, %entry, %if.then
  ret i32 1
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @set_chroma_vector(ptr nocapture noundef readonly %currMB) unnamed_addr #3 {
entry:
  %0 = load ptr, ptr %currMB, align 8
  %p_Vid1 = getelementptr inbounds i8, ptr %currMB, i64 8
  %1 = load ptr, ptr %p_Vid1, align 8
  %mb_aff_frame_flag = getelementptr inbounds i8, ptr %0, i64 128
  %2 = load i32, ptr %mb_aff_frame_flag, align 8
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.then, label %if.else104

if.then:                                          ; preds = %entry
  %structure = getelementptr inbounds i8, ptr %0, i64 184
  %3 = load i32, ptr %structure, align 8
  %listXsize84 = getelementptr inbounds i8, ptr %0, i64 256
  switch i32 %3, label %for.cond79.preheader [
    i32 1, label %for.cond.preheader
    i32 2, label %for.cond36.preheader
  ]

for.cond36.preheader:                             ; preds = %if.then
  %structure48 = getelementptr inbounds i8, ptr %1, i64 848876
  %chroma_vector_adjustment58 = getelementptr inbounds i8, ptr %0, i64 13552
  %4 = load i8, ptr %listXsize84, align 1
  %cmp45293 = icmp sgt i8 %4, 0
  br i1 %cmp45293, label %for.body47.lr.ph, label %for.inc73

for.cond.preheader:                               ; preds = %if.then
  %structure8 = getelementptr inbounds i8, ptr %1, i64 848876
  %chroma_vector_adjustment = getelementptr inbounds i8, ptr %0, i64 13552
  %5 = load i8, ptr %listXsize84, align 1
  %cmp5297 = icmp sgt i8 %5, 0
  br i1 %cmp5297, label %for.body7.lr.ph, label %for.inc26

for.cond79.preheader:                             ; preds = %if.then
  %chroma_vector_adjustment91 = getelementptr inbounds i8, ptr %0, i64 13552
  %6 = load i8, ptr %listXsize84, align 1
  %cmp88301 = icmp sgt i8 %6, 0
  br i1 %cmp88301, label %iter.check406, label %for.inc99

for.body7.lr.ph:                                  ; preds = %for.cond.preheader
  %listX = getelementptr inbounds i8, ptr %0, i64 264
  %.pre344 = load ptr, ptr %listX, align 8
  %7 = zext nneg i8 %5 to i64
  %xtraiter473 = and i64 %7, 1
  %8 = icmp eq i8 %5, 1
  br i1 %8, label %for.inc26.loopexit.unr-lcssa, label %for.body7.lr.ph.new

for.body7.lr.ph.new:                              ; preds = %for.body7.lr.ph
  %unroll_iter475 = and i64 %7, 126
  br label %for.body7

for.body7:                                        ; preds = %for.body7, %for.body7.lr.ph.new
  %indvars.iv331 = phi i64 [ 0, %for.body7.lr.ph.new ], [ %indvars.iv.next332.1481, %for.body7 ]
  %niter476 = phi i64 [ 0, %for.body7.lr.ph.new ], [ %niter476.next.1, %for.body7 ]
  %9 = load i32, ptr %structure8, align 4
  %arrayidx12 = getelementptr inbounds ptr, ptr %.pre344, i64 %indvars.iv331
  %10 = load ptr, ptr %arrayidx12, align 8
  %11 = load i32, ptr %10, align 8
  %cmp14.not = icmp eq i32 %9, %11
  %arrayidx25 = getelementptr inbounds [6 x [16 x i8]], ptr %chroma_vector_adjustment, i64 0, i64 0, i64 %indvars.iv331
  %. = select i1 %cmp14.not, i8 0, i8 -2
  store i8 %., ptr %arrayidx25, align 1
  %indvars.iv.next332 = or disjoint i64 %indvars.iv331, 1
  %12 = load i32, ptr %structure8, align 4
  %arrayidx12.1478 = getelementptr inbounds ptr, ptr %.pre344, i64 %indvars.iv.next332
  %13 = load ptr, ptr %arrayidx12.1478, align 8
  %14 = load i32, ptr %13, align 8
  %cmp14.not.1479 = icmp eq i32 %12, %14
  %arrayidx25.1480 = getelementptr inbounds [6 x [16 x i8]], ptr %chroma_vector_adjustment, i64 0, i64 0, i64 %indvars.iv.next332
  %..1 = select i1 %cmp14.not.1479, i8 0, i8 -2
  store i8 %..1, ptr %arrayidx25.1480, align 1
  %indvars.iv.next332.1481 = add nuw nsw i64 %indvars.iv331, 2
  %niter476.next.1 = add i64 %niter476, 2
  %niter476.ncmp.1.not = icmp eq i64 %niter476.next.1, %unroll_iter475
  br i1 %niter476.ncmp.1.not, label %for.inc26.loopexit.unr-lcssa, label %for.body7

for.inc26.loopexit.unr-lcssa:                     ; preds = %for.body7, %for.body7.lr.ph
  %indvars.iv331.unr = phi i64 [ 0, %for.body7.lr.ph ], [ %indvars.iv.next332.1481, %for.body7 ]
  %lcmp.mod474.not = icmp eq i64 %xtraiter473, 0
  br i1 %lcmp.mod474.not, label %for.inc26, label %for.body7.epil

for.body7.epil:                                   ; preds = %for.inc26.loopexit.unr-lcssa
  %15 = load i32, ptr %structure8, align 4
  %arrayidx12.epil = getelementptr inbounds ptr, ptr %.pre344, i64 %indvars.iv331.unr
  %16 = load ptr, ptr %arrayidx12.epil, align 8
  %17 = load i32, ptr %16, align 8
  %cmp14.not.epil = icmp eq i32 %15, %17
  %arrayidx25.epil = getelementptr inbounds [6 x [16 x i8]], ptr %chroma_vector_adjustment, i64 0, i64 0, i64 %indvars.iv331.unr
  %..epil = select i1 %cmp14.not.epil, i8 0, i8 -2
  store i8 %..epil, ptr %arrayidx25.epil, align 1
  br label %for.inc26

for.inc26:                                        ; preds = %for.body7.epil, %for.inc26.loopexit.unr-lcssa, %for.cond.preheader
  %arrayidx.1 = getelementptr inbounds i8, ptr %0, i64 257
  %18 = load i8, ptr %arrayidx.1, align 1
  %cmp5297.1 = icmp sgt i8 %18, 0
  br i1 %cmp5297.1, label %for.body7.lr.ph.1, label %if.end197

for.body7.lr.ph.1:                                ; preds = %for.inc26
  %arrayidx10.1 = getelementptr inbounds i8, ptr %0, i64 272
  %.pre345 = load ptr, ptr %arrayidx10.1, align 8
  %19 = zext nneg i8 %18 to i64
  %xtraiter484 = and i64 %19, 1
  %20 = icmp eq i8 %18, 1
  br i1 %20, label %if.end197.loopexit457.unr-lcssa, label %for.body7.lr.ph.1.new

for.body7.lr.ph.1.new:                            ; preds = %for.body7.lr.ph.1
  %unroll_iter486 = and i64 %19, 126
  br label %for.body7.1

for.body7.1:                                      ; preds = %for.body7.1, %for.body7.lr.ph.1.new
  %indvars.iv331.1 = phi i64 [ 0, %for.body7.lr.ph.1.new ], [ %indvars.iv.next332.1.1, %for.body7.1 ]
  %niter487 = phi i64 [ 0, %for.body7.lr.ph.1.new ], [ %niter487.next.1, %for.body7.1 ]
  %21 = load i32, ptr %structure8, align 4
  %arrayidx12.1 = getelementptr inbounds ptr, ptr %.pre345, i64 %indvars.iv331.1
  %22 = load ptr, ptr %arrayidx12.1, align 8
  %23 = load i32, ptr %22, align 8
  %cmp14.not.1 = icmp eq i32 %21, %23
  %arrayidx25.1 = getelementptr inbounds [6 x [16 x i8]], ptr %chroma_vector_adjustment, i64 0, i64 1, i64 %indvars.iv331.1
  %.358 = select i1 %cmp14.not.1, i8 0, i8 -2
  store i8 %.358, ptr %arrayidx25.1, align 1
  %indvars.iv.next332.1 = or disjoint i64 %indvars.iv331.1, 1
  %24 = load i32, ptr %structure8, align 4
  %arrayidx12.1.1 = getelementptr inbounds ptr, ptr %.pre345, i64 %indvars.iv.next332.1
  %25 = load ptr, ptr %arrayidx12.1.1, align 8
  %26 = load i32, ptr %25, align 8
  %cmp14.not.1.1 = icmp eq i32 %24, %26
  %arrayidx25.1.1 = getelementptr inbounds [6 x [16 x i8]], ptr %chroma_vector_adjustment, i64 0, i64 1, i64 %indvars.iv.next332.1
  %.358.1 = select i1 %cmp14.not.1.1, i8 0, i8 -2
  store i8 %.358.1, ptr %arrayidx25.1.1, align 1
  %indvars.iv.next332.1.1 = add nuw nsw i64 %indvars.iv331.1, 2
  %niter487.next.1 = add i64 %niter487, 2
  %niter487.ncmp.1.not = icmp eq i64 %niter487.next.1, %unroll_iter486
  br i1 %niter487.ncmp.1.not, label %if.end197.loopexit457.unr-lcssa, label %for.body7.1

for.body47.lr.ph:                                 ; preds = %for.cond36.preheader
  %listX49 = getelementptr inbounds i8, ptr %0, i64 264
  %.pre = load ptr, ptr %listX49, align 8
  %27 = zext nneg i8 %4 to i64
  %xtraiter = and i64 %27, 1
  %28 = icmp eq i8 %4, 1
  br i1 %28, label %for.inc73.loopexit.unr-lcssa, label %for.body47.lr.ph.new

for.body47.lr.ph.new:                             ; preds = %for.body47.lr.ph
  %unroll_iter = and i64 %27, 126
  br label %for.body47

for.body47:                                       ; preds = %for.body47, %for.body47.lr.ph.new
  %indvars.iv325 = phi i64 [ 0, %for.body47.lr.ph.new ], [ %indvars.iv.next326.1466, %for.body47 ]
  %niter = phi i64 [ 0, %for.body47.lr.ph.new ], [ %niter.next.1, %for.body47 ]
  %29 = load i32, ptr %structure48, align 4
  %arrayidx53 = getelementptr inbounds ptr, ptr %.pre, i64 %indvars.iv325
  %30 = load ptr, ptr %arrayidx53, align 8
  %31 = load i32, ptr %30, align 8
  %cmp55.not = icmp eq i32 %29, %31
  %arrayidx68 = getelementptr inbounds [6 x [16 x i8]], ptr %chroma_vector_adjustment58, i64 0, i64 0, i64 %indvars.iv325
  %.359 = select i1 %cmp55.not, i8 0, i8 2
  store i8 %.359, ptr %arrayidx68, align 1
  %indvars.iv.next326 = or disjoint i64 %indvars.iv325, 1
  %32 = load i32, ptr %structure48, align 4
  %arrayidx53.1463 = getelementptr inbounds ptr, ptr %.pre, i64 %indvars.iv.next326
  %33 = load ptr, ptr %arrayidx53.1463, align 8
  %34 = load i32, ptr %33, align 8
  %cmp55.not.1464 = icmp eq i32 %32, %34
  %arrayidx68.1465 = getelementptr inbounds [6 x [16 x i8]], ptr %chroma_vector_adjustment58, i64 0, i64 0, i64 %indvars.iv.next326
  %.359.1 = select i1 %cmp55.not.1464, i8 0, i8 2
  store i8 %.359.1, ptr %arrayidx68.1465, align 1
  %indvars.iv.next326.1466 = add nuw nsw i64 %indvars.iv325, 2
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %for.inc73.loopexit.unr-lcssa, label %for.body47

for.inc73.loopexit.unr-lcssa:                     ; preds = %for.body47, %for.body47.lr.ph
  %indvars.iv325.unr = phi i64 [ 0, %for.body47.lr.ph ], [ %indvars.iv.next326.1466, %for.body47 ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.inc73, label %for.body47.epil

for.body47.epil:                                  ; preds = %for.inc73.loopexit.unr-lcssa
  %35 = load i32, ptr %structure48, align 4
  %arrayidx53.epil = getelementptr inbounds ptr, ptr %.pre, i64 %indvars.iv325.unr
  %36 = load ptr, ptr %arrayidx53.epil, align 8
  %37 = load i32, ptr %36, align 8
  %cmp55.not.epil = icmp eq i32 %35, %37
  %arrayidx68.epil = getelementptr inbounds [6 x [16 x i8]], ptr %chroma_vector_adjustment58, i64 0, i64 0, i64 %indvars.iv325.unr
  %.359.epil = select i1 %cmp55.not.epil, i8 0, i8 2
  store i8 %.359.epil, ptr %arrayidx68.epil, align 1
  br label %for.inc73

for.inc73:                                        ; preds = %for.body47.epil, %for.inc73.loopexit.unr-lcssa, %for.cond36.preheader
  %arrayidx43.1 = getelementptr inbounds i8, ptr %0, i64 257
  %38 = load i8, ptr %arrayidx43.1, align 1
  %cmp45293.1 = icmp sgt i8 %38, 0
  br i1 %cmp45293.1, label %for.body47.lr.ph.1, label %if.end197

for.body47.lr.ph.1:                               ; preds = %for.inc73
  %arrayidx51.1 = getelementptr inbounds i8, ptr %0, i64 272
  %.pre343 = load ptr, ptr %arrayidx51.1, align 8
  %39 = zext nneg i8 %38 to i64
  %xtraiter469 = and i64 %39, 1
  %40 = icmp eq i8 %38, 1
  br i1 %40, label %if.end197.loopexit458.unr-lcssa, label %for.body47.lr.ph.1.new

for.body47.lr.ph.1.new:                           ; preds = %for.body47.lr.ph.1
  %unroll_iter471 = and i64 %39, 126
  br label %for.body47.1

for.body47.1:                                     ; preds = %for.body47.1, %for.body47.lr.ph.1.new
  %indvars.iv325.1 = phi i64 [ 0, %for.body47.lr.ph.1.new ], [ %indvars.iv.next326.1.1, %for.body47.1 ]
  %niter472 = phi i64 [ 0, %for.body47.lr.ph.1.new ], [ %niter472.next.1, %for.body47.1 ]
  %41 = load i32, ptr %structure48, align 4
  %arrayidx53.1 = getelementptr inbounds ptr, ptr %.pre343, i64 %indvars.iv325.1
  %42 = load ptr, ptr %arrayidx53.1, align 8
  %43 = load i32, ptr %42, align 8
  %cmp55.not.1 = icmp eq i32 %41, %43
  %arrayidx68.1 = getelementptr inbounds [6 x [16 x i8]], ptr %chroma_vector_adjustment58, i64 0, i64 1, i64 %indvars.iv325.1
  %.360 = select i1 %cmp55.not.1, i8 0, i8 2
  store i8 %.360, ptr %arrayidx68.1, align 1
  %indvars.iv.next326.1 = or disjoint i64 %indvars.iv325.1, 1
  %44 = load i32, ptr %structure48, align 4
  %arrayidx53.1.1 = getelementptr inbounds ptr, ptr %.pre343, i64 %indvars.iv.next326.1
  %45 = load ptr, ptr %arrayidx53.1.1, align 8
  %46 = load i32, ptr %45, align 8
  %cmp55.not.1.1 = icmp eq i32 %44, %46
  %arrayidx68.1.1 = getelementptr inbounds [6 x [16 x i8]], ptr %chroma_vector_adjustment58, i64 0, i64 1, i64 %indvars.iv.next326.1
  %.360.1 = select i1 %cmp55.not.1.1, i8 0, i8 2
  store i8 %.360.1, ptr %arrayidx68.1.1, align 1
  %indvars.iv.next326.1.1 = add nuw nsw i64 %indvars.iv325.1, 2
  %niter472.next.1 = add i64 %niter472, 2
  %niter472.ncmp.1.not = icmp eq i64 %niter472.next.1, %unroll_iter471
  br i1 %niter472.ncmp.1.not, label %if.end197.loopexit458.unr-lcssa, label %for.body47.1

iter.check406:                                    ; preds = %for.cond79.preheader
  %47 = zext nneg i8 %6 to i64
  %min.iters.check404 = icmp ult i8 %6, 8
  br i1 %min.iters.check404, label %for.body90.preheader, label %vector.main.loop.iter.check408

vector.main.loop.iter.check408:                   ; preds = %iter.check406
  %min.iters.check407 = icmp ult i8 %6, 64
  br i1 %min.iters.check407, label %vec.epilog.ph418, label %vector.ph409

vector.ph409:                                     ; preds = %vector.main.loop.iter.check408
  %n.vec411 = and i64 %47, 64
  %48 = getelementptr inbounds i8, ptr %0, i64 13568
  %49 = getelementptr inbounds i8, ptr %0, i64 13584
  %50 = getelementptr inbounds i8, ptr %0, i64 13600
  store <16 x i8> zeroinitializer, ptr %chroma_vector_adjustment91, align 1
  store <16 x i8> zeroinitializer, ptr %48, align 1
  store <16 x i8> zeroinitializer, ptr %49, align 1
  store <16 x i8> zeroinitializer, ptr %50, align 1
  %cmp.n415 = icmp eq i64 %n.vec411, %47
  br i1 %cmp.n415, label %for.inc99, label %vec.epilog.iter.check419

vec.epilog.iter.check419:                         ; preds = %vector.ph409
  %n.vec.remaining420 = and i64 %47, 56
  %min.epilog.iters.check421 = icmp eq i64 %n.vec.remaining420, 0
  br i1 %min.epilog.iters.check421, label %for.body90.preheader, label %vec.epilog.ph418

vec.epilog.ph418:                                 ; preds = %vector.main.loop.iter.check408, %vec.epilog.iter.check419
  %vec.epilog.resume.val422 = phi i64 [ %n.vec411, %vec.epilog.iter.check419 ], [ 0, %vector.main.loop.iter.check408 ]
  %n.vec424 = and i64 %47, 120
  br label %vec.epilog.vector.body426

vec.epilog.vector.body426:                        ; preds = %vec.epilog.vector.body426, %vec.epilog.ph418
  %index427 = phi i64 [ %vec.epilog.resume.val422, %vec.epilog.ph418 ], [ %index.next428, %vec.epilog.vector.body426 ]
  %51 = getelementptr inbounds [6 x [16 x i8]], ptr %chroma_vector_adjustment91, i64 0, i64 0, i64 %index427
  store <8 x i8> zeroinitializer, ptr %51, align 1
  %index.next428 = add nuw i64 %index427, 8
  %52 = icmp eq i64 %index.next428, %n.vec424
  br i1 %52, label %vec.epilog.middle.block416, label %vec.epilog.vector.body426, !llvm.loop !5

vec.epilog.middle.block416:                       ; preds = %vec.epilog.vector.body426
  %cmp.n429 = icmp eq i64 %n.vec424, %47
  br i1 %cmp.n429, label %for.inc99, label %for.body90.preheader

for.body90.preheader:                             ; preds = %vec.epilog.middle.block416, %iter.check406, %vec.epilog.iter.check419
  %indvars.iv337.ph = phi i64 [ 0, %iter.check406 ], [ %n.vec411, %vec.epilog.iter.check419 ], [ %n.vec424, %vec.epilog.middle.block416 ]
  br label %for.body90

for.body90:                                       ; preds = %for.body90.preheader, %for.body90
  %indvars.iv337 = phi i64 [ %indvars.iv.next338, %for.body90 ], [ %indvars.iv337.ph, %for.body90.preheader ]
  %arrayidx95 = getelementptr inbounds [6 x [16 x i8]], ptr %chroma_vector_adjustment91, i64 0, i64 0, i64 %indvars.iv337
  store i8 0, ptr %arrayidx95, align 1
  %indvars.iv.next338 = add nuw nsw i64 %indvars.iv337, 1
  %cmp88 = icmp ult i64 %indvars.iv.next338, %47
  br i1 %cmp88, label %for.body90, label %for.inc99, !llvm.loop !8

for.inc99:                                        ; preds = %for.body90, %vector.ph409, %vec.epilog.middle.block416, %for.cond79.preheader
  %arrayidx86.1 = getelementptr inbounds i8, ptr %0, i64 257
  %53 = load i8, ptr %arrayidx86.1, align 1
  %cmp88301.1 = icmp sgt i8 %53, 0
  br i1 %cmp88301.1, label %iter.check433, label %if.end197

iter.check433:                                    ; preds = %for.inc99
  %54 = zext nneg i8 %53 to i64
  %min.iters.check431 = icmp ult i8 %53, 8
  br i1 %min.iters.check431, label %for.body90.1.preheader, label %vector.main.loop.iter.check435

vector.main.loop.iter.check435:                   ; preds = %iter.check433
  %min.iters.check434 = icmp ult i8 %53, 64
  br i1 %min.iters.check434, label %vec.epilog.ph445, label %vector.ph436

vector.ph436:                                     ; preds = %vector.main.loop.iter.check435
  %n.vec438 = and i64 %54, 64
  %55 = getelementptr inbounds i8, ptr %0, i64 13568
  %56 = getelementptr inbounds i8, ptr %0, i64 13584
  %57 = getelementptr inbounds i8, ptr %0, i64 13600
  %58 = getelementptr inbounds i8, ptr %0, i64 13616
  store <16 x i8> zeroinitializer, ptr %55, align 1
  store <16 x i8> zeroinitializer, ptr %56, align 1
  store <16 x i8> zeroinitializer, ptr %57, align 1
  store <16 x i8> zeroinitializer, ptr %58, align 1
  %cmp.n442 = icmp eq i64 %n.vec438, %54
  br i1 %cmp.n442, label %if.end197, label %vec.epilog.iter.check446

vec.epilog.iter.check446:                         ; preds = %vector.ph436
  %n.vec.remaining447 = and i64 %54, 56
  %min.epilog.iters.check448 = icmp eq i64 %n.vec.remaining447, 0
  br i1 %min.epilog.iters.check448, label %for.body90.1.preheader, label %vec.epilog.ph445

vec.epilog.ph445:                                 ; preds = %vector.main.loop.iter.check435, %vec.epilog.iter.check446
  %vec.epilog.resume.val449 = phi i64 [ %n.vec438, %vec.epilog.iter.check446 ], [ 0, %vector.main.loop.iter.check435 ]
  %n.vec451 = and i64 %54, 120
  br label %vec.epilog.vector.body453

vec.epilog.vector.body453:                        ; preds = %vec.epilog.vector.body453, %vec.epilog.ph445
  %index454 = phi i64 [ %vec.epilog.resume.val449, %vec.epilog.ph445 ], [ %index.next455, %vec.epilog.vector.body453 ]
  %59 = getelementptr inbounds [6 x [16 x i8]], ptr %chroma_vector_adjustment91, i64 0, i64 1, i64 %index454
  store <8 x i8> zeroinitializer, ptr %59, align 1
  %index.next455 = add nuw i64 %index454, 8
  %60 = icmp eq i64 %index.next455, %n.vec451
  br i1 %60, label %vec.epilog.middle.block443, label %vec.epilog.vector.body453, !llvm.loop !9

vec.epilog.middle.block443:                       ; preds = %vec.epilog.vector.body453
  %cmp.n456 = icmp eq i64 %n.vec451, %54
  br i1 %cmp.n456, label %if.end197, label %for.body90.1.preheader

for.body90.1.preheader:                           ; preds = %vec.epilog.middle.block443, %iter.check433, %vec.epilog.iter.check446
  %indvars.iv337.1.ph = phi i64 [ 0, %iter.check433 ], [ %n.vec438, %vec.epilog.iter.check446 ], [ %n.vec451, %vec.epilog.middle.block443 ]
  br label %for.body90.1

for.body90.1:                                     ; preds = %for.body90.1.preheader, %for.body90.1
  %indvars.iv337.1 = phi i64 [ %indvars.iv.next338.1, %for.body90.1 ], [ %indvars.iv337.1.ph, %for.body90.1.preheader ]
  %arrayidx95.1 = getelementptr inbounds [6 x [16 x i8]], ptr %chroma_vector_adjustment91, i64 0, i64 1, i64 %indvars.iv337.1
  store i8 0, ptr %arrayidx95.1, align 1
  %indvars.iv.next338.1 = add nuw nsw i64 %indvars.iv337.1, 1
  %cmp88.1 = icmp ult i64 %indvars.iv.next338.1, %54
  br i1 %cmp88.1, label %for.body90.1, label %if.end197, !llvm.loop !10

if.else104:                                       ; preds = %entry
  %mb_field = getelementptr inbounds i8, ptr %currMB, i64 384
  %61 = load i32, ptr %mb_field, align 8
  %tobool107.not = icmp eq i32 %61, 0
  br i1 %tobool107.not, label %for.cond173.preheader, label %if.then108

for.cond173.preheader:                            ; preds = %if.else104
  %listXsize178 = getelementptr inbounds i8, ptr %0, i64 256
  %chroma_vector_adjustment185 = getelementptr inbounds i8, ptr %0, i64 13552
  %62 = load i8, ptr %listXsize178, align 1
  %cmp182289 = icmp sgt i8 %62, 0
  br i1 %cmp182289, label %iter.check, label %for.inc193

if.then108:                                       ; preds = %if.else104
  %mbAddrX = getelementptr inbounds i8, ptr %currMB, i64 24
  %63 = load i32, ptr %mbAddrX, align 8
  %.fr = freeze i32 %63
  %and = and i32 %.fr, 1
  %list_offset109 = getelementptr inbounds i8, ptr %currMB, i64 114
  %64 = load i16, ptr %list_offset109, align 2
  %listXsize117 = getelementptr inbounds i8, ptr %0, i64 256
  %cond279 = icmp eq i32 %and, 0
  %listX144 = getelementptr inbounds i8, ptr %0, i64 264
  %chroma_vector_adjustment153 = getelementptr inbounds i8, ptr %0, i64 13552
  %65 = sext i16 %64 to i64
  %arrayidx119.us = getelementptr inbounds [6 x i8], ptr %listXsize117, i64 0, i64 %65
  %66 = load i8, ptr %arrayidx119.us, align 1
  %cmp121285.us = icmp sgt i8 %66, 0
  br i1 %cond279, label %for.cond116.preheader.us.preheader, label %for.cond116.preheader.preheader

for.cond116.preheader.preheader:                  ; preds = %if.then108
  br i1 %cmp121285.us, label %for.body123.lr.ph, label %for.inc169

for.cond116.preheader.us.preheader:               ; preds = %if.then108
  br i1 %cmp121285.us, label %for.body123.lr.ph.us, label %for.inc169.us

for.inc169.us:                                    ; preds = %for.body123.us.us, %for.cond116.preheader.us.preheader
  %indvars.iv.next317 = add nsw i64 %65, 1
  %arrayidx119.us.1 = getelementptr inbounds [6 x i8], ptr %listXsize117, i64 0, i64 %indvars.iv.next317
  %67 = load i8, ptr %arrayidx119.us.1, align 1
  %cmp121285.us.1 = icmp sgt i8 %67, 0
  br i1 %cmp121285.us.1, label %for.body123.lr.ph.us.1, label %if.end197

for.body123.lr.ph.us.1:                           ; preds = %for.inc169.us
  %arrayidx128.us.1 = getelementptr inbounds [6 x ptr], ptr %listX144, i64 0, i64 %indvars.iv.next317
  br label %for.body123.us.us.1

for.body123.us.us.1:                              ; preds = %for.body123.us.us.1, %for.body123.lr.ph.us.1
  %indvars.iv313.1 = phi i64 [ %indvars.iv.next314.1, %for.body123.us.us.1 ], [ 0, %for.body123.lr.ph.us.1 ]
  %68 = load ptr, ptr %arrayidx128.us.1, align 8
  %arrayidx130.us.us.1 = getelementptr inbounds ptr, ptr %68, i64 %indvars.iv313.1
  %69 = load ptr, ptr %arrayidx130.us.us.1, align 8
  %70 = load i32, ptr %69, align 8
  %cmp132.us.us.1 = icmp eq i32 %70, 2
  %arrayidx139.us.us.1 = getelementptr inbounds [6 x [16 x i8]], ptr %chroma_vector_adjustment153, i64 0, i64 %indvars.iv.next317, i64 %indvars.iv313.1
  %.361 = select i1 %cmp132.us.us.1, i8 -2, i8 0
  store i8 %.361, ptr %arrayidx139.us.us.1, align 1
  %indvars.iv.next314.1 = add nuw nsw i64 %indvars.iv313.1, 1
  %71 = load i8, ptr %arrayidx119.us.1, align 1
  %72 = sext i8 %71 to i64
  %cmp121.us.us.1 = icmp slt i64 %indvars.iv.next314.1, %72
  br i1 %cmp121.us.us.1, label %for.body123.us.us.1, label %if.end197

for.body123.lr.ph.us:                             ; preds = %for.cond116.preheader.us.preheader
  %arrayidx128.us = getelementptr inbounds [6 x ptr], ptr %listX144, i64 0, i64 %65
  br label %for.body123.us.us

for.body123.us.us:                                ; preds = %for.body123.us.us, %for.body123.lr.ph.us
  %indvars.iv313 = phi i64 [ %indvars.iv.next314, %for.body123.us.us ], [ 0, %for.body123.lr.ph.us ]
  %73 = load ptr, ptr %arrayidx128.us, align 8
  %arrayidx130.us.us = getelementptr inbounds ptr, ptr %73, i64 %indvars.iv313
  %74 = load ptr, ptr %arrayidx130.us.us, align 8
  %75 = load i32, ptr %74, align 8
  %cmp132.us.us = icmp eq i32 %75, 2
  %arrayidx139.us.us = getelementptr inbounds [6 x [16 x i8]], ptr %chroma_vector_adjustment153, i64 0, i64 %65, i64 %indvars.iv313
  %.362 = select i1 %cmp132.us.us, i8 -2, i8 0
  store i8 %.362, ptr %arrayidx139.us.us, align 1
  %indvars.iv.next314 = add nuw nsw i64 %indvars.iv313, 1
  %76 = load i8, ptr %arrayidx119.us, align 1
  %77 = sext i8 %76 to i64
  %cmp121.us.us = icmp slt i64 %indvars.iv.next314, %77
  br i1 %cmp121.us.us, label %for.body123.us.us, label %for.inc169.us

for.body123.lr.ph:                                ; preds = %for.cond116.preheader.preheader
  %arrayidx146 = getelementptr inbounds [6 x ptr], ptr %listX144, i64 0, i64 %65
  br label %for.body123

for.body123:                                      ; preds = %for.body123.lr.ph, %for.body123
  %indvars.iv = phi i64 [ 0, %for.body123.lr.ph ], [ %indvars.iv.next, %for.body123 ]
  %78 = load ptr, ptr %arrayidx146, align 8
  %arrayidx148 = getelementptr inbounds ptr, ptr %78, i64 %indvars.iv
  %79 = load ptr, ptr %arrayidx148, align 8
  %80 = load i32, ptr %79, align 8
  %cmp150 = icmp eq i32 %80, 1
  %arrayidx157 = getelementptr inbounds [6 x [16 x i8]], ptr %chroma_vector_adjustment153, i64 0, i64 %65, i64 %indvars.iv
  %.363 = select i1 %cmp150, i8 2, i8 0
  store i8 %.363, ptr %arrayidx157, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %81 = load i8, ptr %arrayidx119.us, align 1
  %82 = sext i8 %81 to i64
  %cmp121 = icmp slt i64 %indvars.iv.next, %82
  br i1 %cmp121, label %for.body123, label %for.inc169

for.inc169:                                       ; preds = %for.body123, %for.cond116.preheader.preheader
  %indvars.iv.next311 = add nsw i64 %65, 1
  %arrayidx119.1 = getelementptr inbounds [6 x i8], ptr %listXsize117, i64 0, i64 %indvars.iv.next311
  %83 = load i8, ptr %arrayidx119.1, align 1
  %cmp121285.1 = icmp sgt i8 %83, 0
  br i1 %cmp121285.1, label %for.body123.lr.ph.1, label %if.end197

for.body123.lr.ph.1:                              ; preds = %for.inc169
  %arrayidx146.1 = getelementptr inbounds [6 x ptr], ptr %listX144, i64 0, i64 %indvars.iv.next311
  br label %for.body123.1

for.body123.1:                                    ; preds = %for.body123.1, %for.body123.lr.ph.1
  %indvars.iv.1 = phi i64 [ 0, %for.body123.lr.ph.1 ], [ %indvars.iv.next.1, %for.body123.1 ]
  %84 = load ptr, ptr %arrayidx146.1, align 8
  %arrayidx148.1 = getelementptr inbounds ptr, ptr %84, i64 %indvars.iv.1
  %85 = load ptr, ptr %arrayidx148.1, align 8
  %86 = load i32, ptr %85, align 8
  %cmp150.1 = icmp eq i32 %86, 1
  %arrayidx157.1 = getelementptr inbounds [6 x [16 x i8]], ptr %chroma_vector_adjustment153, i64 0, i64 %indvars.iv.next311, i64 %indvars.iv.1
  %.364 = select i1 %cmp150.1, i8 2, i8 0
  store i8 %.364, ptr %arrayidx157.1, align 1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1
  %87 = load i8, ptr %arrayidx119.1, align 1
  %88 = sext i8 %87 to i64
  %cmp121.1 = icmp slt i64 %indvars.iv.next.1, %88
  br i1 %cmp121.1, label %for.body123.1, label %if.end197

iter.check:                                       ; preds = %for.cond173.preheader
  %89 = zext nneg i8 %62 to i64
  %min.iters.check = icmp ult i8 %62, 8
  br i1 %min.iters.check, label %for.body184.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check370 = icmp ult i8 %62, 64
  br i1 %min.iters.check370, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %89, 64
  %90 = getelementptr inbounds i8, ptr %0, i64 13568
  %91 = getelementptr inbounds i8, ptr %0, i64 13584
  %92 = getelementptr inbounds i8, ptr %0, i64 13600
  store <16 x i8> zeroinitializer, ptr %chroma_vector_adjustment185, align 1
  store <16 x i8> zeroinitializer, ptr %90, align 1
  store <16 x i8> zeroinitializer, ptr %91, align 1
  store <16 x i8> zeroinitializer, ptr %92, align 1
  %cmp.n = icmp eq i64 %n.vec, %89
  br i1 %cmp.n, label %for.inc193, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %vector.ph
  %n.vec.remaining = and i64 %89, 56
  %min.epilog.iters.check = icmp eq i64 %n.vec.remaining, 0
  br i1 %min.epilog.iters.check, label %for.body184.preheader, label %vec.epilog.ph

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec372 = and i64 %89, 120
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index373 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next374, %vec.epilog.vector.body ]
  %93 = getelementptr inbounds [6 x [16 x i8]], ptr %chroma_vector_adjustment185, i64 0, i64 0, i64 %index373
  store <8 x i8> zeroinitializer, ptr %93, align 1
  %index.next374 = add nuw i64 %index373, 8
  %94 = icmp eq i64 %index.next374, %n.vec372
  br i1 %94, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !11

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n375 = icmp eq i64 %n.vec372, %89
  br i1 %cmp.n375, label %for.inc193, label %for.body184.preheader

for.body184.preheader:                            ; preds = %vec.epilog.middle.block, %iter.check, %vec.epilog.iter.check
  %indvars.iv319.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec372, %vec.epilog.middle.block ]
  br label %for.body184

for.body184:                                      ; preds = %for.body184.preheader, %for.body184
  %indvars.iv319 = phi i64 [ %indvars.iv.next320, %for.body184 ], [ %indvars.iv319.ph, %for.body184.preheader ]
  %arrayidx189 = getelementptr inbounds [6 x [16 x i8]], ptr %chroma_vector_adjustment185, i64 0, i64 0, i64 %indvars.iv319
  store i8 0, ptr %arrayidx189, align 1
  %indvars.iv.next320 = add nuw nsw i64 %indvars.iv319, 1
  %cmp182 = icmp ult i64 %indvars.iv.next320, %89
  br i1 %cmp182, label %for.body184, label %for.inc193, !llvm.loop !12

for.inc193:                                       ; preds = %for.body184, %vector.ph, %vec.epilog.middle.block, %for.cond173.preheader
  %arrayidx180.1 = getelementptr inbounds i8, ptr %0, i64 257
  %95 = load i8, ptr %arrayidx180.1, align 1
  %cmp182289.1 = icmp sgt i8 %95, 0
  br i1 %cmp182289.1, label %iter.check379, label %if.end197

iter.check379:                                    ; preds = %for.inc193
  %96 = zext nneg i8 %95 to i64
  %min.iters.check377 = icmp ult i8 %95, 8
  br i1 %min.iters.check377, label %for.body184.1.preheader, label %vector.main.loop.iter.check381

vector.main.loop.iter.check381:                   ; preds = %iter.check379
  %min.iters.check380 = icmp ult i8 %95, 64
  br i1 %min.iters.check380, label %vec.epilog.ph391, label %vector.ph382

vector.ph382:                                     ; preds = %vector.main.loop.iter.check381
  %n.vec384 = and i64 %96, 64
  %97 = getelementptr inbounds i8, ptr %0, i64 13568
  %98 = getelementptr inbounds i8, ptr %0, i64 13584
  %99 = getelementptr inbounds i8, ptr %0, i64 13600
  %100 = getelementptr inbounds i8, ptr %0, i64 13616
  store <16 x i8> zeroinitializer, ptr %97, align 1
  store <16 x i8> zeroinitializer, ptr %98, align 1
  store <16 x i8> zeroinitializer, ptr %99, align 1
  store <16 x i8> zeroinitializer, ptr %100, align 1
  %cmp.n388 = icmp eq i64 %n.vec384, %96
  br i1 %cmp.n388, label %if.end197, label %vec.epilog.iter.check392

vec.epilog.iter.check392:                         ; preds = %vector.ph382
  %n.vec.remaining393 = and i64 %96, 56
  %min.epilog.iters.check394 = icmp eq i64 %n.vec.remaining393, 0
  br i1 %min.epilog.iters.check394, label %for.body184.1.preheader, label %vec.epilog.ph391

vec.epilog.ph391:                                 ; preds = %vector.main.loop.iter.check381, %vec.epilog.iter.check392
  %vec.epilog.resume.val395 = phi i64 [ %n.vec384, %vec.epilog.iter.check392 ], [ 0, %vector.main.loop.iter.check381 ]
  %n.vec397 = and i64 %96, 120
  br label %vec.epilog.vector.body399

vec.epilog.vector.body399:                        ; preds = %vec.epilog.vector.body399, %vec.epilog.ph391
  %index400 = phi i64 [ %vec.epilog.resume.val395, %vec.epilog.ph391 ], [ %index.next401, %vec.epilog.vector.body399 ]
  %101 = getelementptr inbounds [6 x [16 x i8]], ptr %chroma_vector_adjustment185, i64 0, i64 1, i64 %index400
  store <8 x i8> zeroinitializer, ptr %101, align 1
  %index.next401 = add nuw i64 %index400, 8
  %102 = icmp eq i64 %index.next401, %n.vec397
  br i1 %102, label %vec.epilog.middle.block389, label %vec.epilog.vector.body399, !llvm.loop !13

vec.epilog.middle.block389:                       ; preds = %vec.epilog.vector.body399
  %cmp.n402 = icmp eq i64 %n.vec397, %96
  br i1 %cmp.n402, label %if.end197, label %for.body184.1.preheader

for.body184.1.preheader:                          ; preds = %vec.epilog.middle.block389, %iter.check379, %vec.epilog.iter.check392
  %indvars.iv319.1.ph = phi i64 [ 0, %iter.check379 ], [ %n.vec384, %vec.epilog.iter.check392 ], [ %n.vec397, %vec.epilog.middle.block389 ]
  br label %for.body184.1

for.body184.1:                                    ; preds = %for.body184.1.preheader, %for.body184.1
  %indvars.iv319.1 = phi i64 [ %indvars.iv.next320.1, %for.body184.1 ], [ %indvars.iv319.1.ph, %for.body184.1.preheader ]
  %arrayidx189.1 = getelementptr inbounds [6 x [16 x i8]], ptr %chroma_vector_adjustment185, i64 0, i64 1, i64 %indvars.iv319.1
  store i8 0, ptr %arrayidx189.1, align 1
  %indvars.iv.next320.1 = add nuw nsw i64 %indvars.iv319.1, 1
  %cmp182.1 = icmp ult i64 %indvars.iv.next320.1, %96
  br i1 %cmp182.1, label %for.body184.1, label %if.end197, !llvm.loop !14

if.end197.loopexit457.unr-lcssa:                  ; preds = %for.body7.1, %for.body7.lr.ph.1
  %indvars.iv331.1.unr = phi i64 [ 0, %for.body7.lr.ph.1 ], [ %indvars.iv.next332.1.1, %for.body7.1 ]
  %lcmp.mod485.not = icmp eq i64 %xtraiter484, 0
  br i1 %lcmp.mod485.not, label %if.end197, label %for.body7.1.epil

for.body7.1.epil:                                 ; preds = %if.end197.loopexit457.unr-lcssa
  %103 = load i32, ptr %structure8, align 4
  %arrayidx12.1.epil = getelementptr inbounds ptr, ptr %.pre345, i64 %indvars.iv331.1.unr
  %104 = load ptr, ptr %arrayidx12.1.epil, align 8
  %105 = load i32, ptr %104, align 8
  %cmp14.not.1.epil = icmp eq i32 %103, %105
  %arrayidx25.1.epil = getelementptr inbounds [6 x [16 x i8]], ptr %chroma_vector_adjustment, i64 0, i64 1, i64 %indvars.iv331.1.unr
  %.358.epil = select i1 %cmp14.not.1.epil, i8 0, i8 -2
  store i8 %.358.epil, ptr %arrayidx25.1.epil, align 1
  br label %if.end197

if.end197.loopexit458.unr-lcssa:                  ; preds = %for.body47.1, %for.body47.lr.ph.1
  %indvars.iv325.1.unr = phi i64 [ 0, %for.body47.lr.ph.1 ], [ %indvars.iv.next326.1.1, %for.body47.1 ]
  %lcmp.mod470.not = icmp eq i64 %xtraiter469, 0
  br i1 %lcmp.mod470.not, label %if.end197, label %for.body47.1.epil

for.body47.1.epil:                                ; preds = %if.end197.loopexit458.unr-lcssa
  %106 = load i32, ptr %structure48, align 4
  %arrayidx53.1.epil = getelementptr inbounds ptr, ptr %.pre343, i64 %indvars.iv325.1.unr
  %107 = load ptr, ptr %arrayidx53.1.epil, align 8
  %108 = load i32, ptr %107, align 8
  %cmp55.not.1.epil = icmp eq i32 %106, %108
  %arrayidx68.1.epil = getelementptr inbounds [6 x [16 x i8]], ptr %chroma_vector_adjustment58, i64 0, i64 1, i64 %indvars.iv325.1.unr
  %.360.epil = select i1 %cmp55.not.1.epil, i8 0, i8 2
  store i8 %.360.epil, ptr %arrayidx68.1.epil, align 1
  br label %if.end197

if.end197:                                        ; preds = %for.body123.1, %for.body123.us.us.1, %for.body184.1, %for.body47.1.epil, %if.end197.loopexit458.unr-lcssa, %for.body7.1.epil, %if.end197.loopexit457.unr-lcssa, %for.body90.1, %vector.ph382, %vec.epilog.middle.block389, %vector.ph436, %vec.epilog.middle.block443, %for.inc193, %for.inc169, %for.inc169.us, %for.inc99, %for.inc73, %for.inc26
  %structure198 = getelementptr inbounds i8, ptr %0, i64 184
  %109 = load i32, ptr %structure198, align 8
  %cmp199.not = icmp eq i32 %109, 0
  br i1 %cmp199.not, label %lor.lhs.false, label %cond.true

lor.lhs.false:                                    ; preds = %if.end197
  %mb_field201 = getelementptr inbounds i8, ptr %currMB, i64 384
  %110 = load i32, ptr %mb_field201, align 8
  %tobool202.not = icmp eq i32 %110, 0
  br i1 %tobool202.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %lor.lhs.false, %if.end197
  %max_vmv_r = getelementptr inbounds i8, ptr %1, i64 849216
  %111 = load i32, ptr %max_vmv_r, align 8
  %shr = ashr i32 %111, 1
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  %max_vmv_r203 = getelementptr inbounds i8, ptr %1, i64 849216
  %112 = load i32, ptr %max_vmv_r203, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %shr, %cond.true ], [ %112, %cond.false ]
  %max_mb_vmv_r = getelementptr inbounds i8, ptr %0, i64 13336
  store i32 %cond, ptr %max_mb_vmv_r, align 8
  ret void
}

declare void @perform_mc(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @copy_image_data_16x16(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @copy_image_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @mb_pred_sp_skip(ptr noundef %currMB, i32 noundef %curr_plane, ptr noundef %dec_picture) local_unnamed_addr #0 {
entry:
  tail call fastcc void @set_chroma_vector(ptr noundef %currMB)
  tail call void @perform_mc(ptr noundef %currMB, i32 noundef %curr_plane, ptr noundef %dec_picture, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 16, i32 noundef 16) #7
  tail call void @iTransform(ptr noundef %currMB, i32 noundef %curr_plane, i32 noundef 1) #7
  ret i32 1
}

declare void @iTransform(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @mb_pred_p_inter8x8(ptr noundef %currMB, i32 noundef %curr_plane, ptr noundef %dec_picture) local_unnamed_addr #0 {
entry:
  %0 = load ptr, ptr %currMB, align 8
  %p_Vid1 = getelementptr inbounds i8, ptr %currMB, i64 8
  %1 = load ptr, ptr %p_Vid1, align 8
  %type = getelementptr inbounds i8, ptr %1, i64 848776
  %2 = load i32, ptr %type, align 8
  %cmp = icmp eq i32 %2, 3
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %is_intra_block = getelementptr inbounds i8, ptr %currMB, i64 96
  %3 = load i32, ptr %is_intra_block, align 8
  %cmp2 = icmp eq i32 %3, 0
  %4 = zext i1 %cmp2 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %land.ext = phi i32 [ 0, %entry ], [ %4, %land.rhs ]
  tail call fastcc void @set_chroma_vector(ptr noundef nonnull %currMB)
  %b8mode = getelementptr inbounds i8, ptr %currMB, i64 364
  %b8pdir = getelementptr inbounds i8, ptr %currMB, i64 368
  %5 = load i8, ptr %b8mode, align 1
  %6 = load i8, ptr %b8pdir, align 1
  %conv6 = sext i8 %6 to i32
  %cmp7 = icmp eq i8 %5, 5
  %cond = select i1 %cmp7, i32 2, i32 1
  %cmp9 = icmp eq i8 %5, 4
  %cmp11 = icmp eq i8 %5, 7
  %add17 = add nuw nsw i32 %cond, 1
  %spec.select = select i1 %cmp11, i32 4, i32 %add17
  %cond20 = select i1 %cmp9, i32 1, i32 %spec.select
  %7 = and i8 %5, -2
  %8 = icmp eq i8 %7, 4
  %cond25 = select i1 %8, i32 8, i32 4
  %cmp26 = icmp eq i8 %5, 6
  %9 = or i1 %cmp26, %cmp9
  %cond32 = select i1 %9, i32 8, i32 4
  %10 = zext nneg i32 %cond to i64
  br label %for.body36

for.body36:                                       ; preds = %land.end, %for.body36
  %indvars.iv78 = phi i64 [ 0, %land.end ], [ %indvars.iv.next79, %for.body36 ]
  %arrayidx38 = getelementptr inbounds [16 x i8], ptr @decode_block_scan, i64 0, i64 %indvars.iv78
  %11 = load i8, ptr %arrayidx38, align 1
  %conv39 = zext i8 %11 to i32
  %and = and i32 %conv39, 3
  %shr = lshr i32 %conv39, 2
  %and43 = and i32 %shr, 3
  tail call void @perform_mc(ptr noundef nonnull %currMB, i32 noundef %curr_plane, ptr noundef %dec_picture, i32 noundef %conv6, i32 noundef %and, i32 noundef %and43, i32 noundef %cond25, i32 noundef %cond32) #7
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, %10
  %12 = trunc nuw i64 %indvars.iv.next79 to i32
  %cmp34 = icmp sgt i32 %cond20, %12
  br i1 %cmp34, label %for.body36, label %for.end

for.end:                                          ; preds = %for.body36
  %arrayidx.1 = getelementptr inbounds i8, ptr %currMB, i64 365
  %13 = load i8, ptr %arrayidx.1, align 1
  %arrayidx5.1 = getelementptr inbounds i8, ptr %currMB, i64 369
  %14 = load i8, ptr %arrayidx5.1, align 1
  %conv6.1 = sext i8 %14 to i32
  %cmp7.1 = icmp eq i8 %13, 5
  %cond.1 = select i1 %cmp7.1, i32 2, i32 1
  %cmp9.1 = icmp eq i8 %13, 4
  %cmp11.1 = icmp eq i8 %13, 7
  %add17.1 = add nuw nsw i32 %cond.1, 5
  %spec.select88 = select i1 %cmp11.1, i32 8, i32 %add17.1
  %cond20.1 = select i1 %cmp9.1, i32 5, i32 %spec.select88
  %15 = and i8 %13, -2
  %16 = icmp eq i8 %15, 4
  %cond25.1 = select i1 %16, i32 8, i32 4
  %cmp26.1 = icmp eq i8 %13, 6
  %17 = or i1 %cmp26.1, %cmp9.1
  %cond32.1 = select i1 %17, i32 8, i32 4
  %18 = zext nneg i32 %cond.1 to i64
  br label %for.body36.1

for.body36.1:                                     ; preds = %for.body36.1, %for.end
  %indvars.iv78.1 = phi i64 [ 4, %for.end ], [ %indvars.iv.next79.1, %for.body36.1 ]
  %arrayidx38.1 = getelementptr inbounds [16 x i8], ptr @decode_block_scan, i64 0, i64 %indvars.iv78.1
  %19 = load i8, ptr %arrayidx38.1, align 1
  %conv39.1 = zext i8 %19 to i32
  %and.1 = and i32 %conv39.1, 3
  %shr.1 = lshr i32 %conv39.1, 2
  %and43.1 = and i32 %shr.1, 3
  tail call void @perform_mc(ptr noundef nonnull %currMB, i32 noundef %curr_plane, ptr noundef %dec_picture, i32 noundef %conv6.1, i32 noundef %and.1, i32 noundef %and43.1, i32 noundef %cond25.1, i32 noundef %cond32.1) #7
  %indvars.iv.next79.1 = add nuw nsw i64 %indvars.iv78.1, %18
  %20 = trunc nuw i64 %indvars.iv.next79.1 to i32
  %cmp34.1 = icmp sgt i32 %cond20.1, %20
  br i1 %cmp34.1, label %for.body36.1, label %for.end.1

for.end.1:                                        ; preds = %for.body36.1
  %arrayidx.2 = getelementptr inbounds i8, ptr %currMB, i64 366
  %21 = load i8, ptr %arrayidx.2, align 1
  %arrayidx5.2 = getelementptr inbounds i8, ptr %currMB, i64 370
  %22 = load i8, ptr %arrayidx5.2, align 1
  %conv6.2 = sext i8 %22 to i32
  %cmp7.2 = icmp eq i8 %21, 5
  %cond.2 = select i1 %cmp7.2, i32 2, i32 1
  %cmp9.2 = icmp eq i8 %21, 4
  %cmp11.2 = icmp eq i8 %21, 7
  %add17.2 = add nuw nsw i32 %cond.2, 9
  %spec.select89 = select i1 %cmp11.2, i32 12, i32 %add17.2
  %cond20.2 = select i1 %cmp9.2, i32 9, i32 %spec.select89
  %23 = and i8 %21, -2
  %24 = icmp eq i8 %23, 4
  %cond25.2 = select i1 %24, i32 8, i32 4
  %cmp26.2 = icmp eq i8 %21, 6
  %25 = or i1 %cmp26.2, %cmp9.2
  %cond32.2 = select i1 %25, i32 8, i32 4
  %26 = zext nneg i32 %cond.2 to i64
  br label %for.body36.2

for.body36.2:                                     ; preds = %for.body36.2, %for.end.1
  %indvars.iv78.2 = phi i64 [ 8, %for.end.1 ], [ %indvars.iv.next79.2, %for.body36.2 ]
  %arrayidx38.2 = getelementptr inbounds [16 x i8], ptr @decode_block_scan, i64 0, i64 %indvars.iv78.2
  %27 = load i8, ptr %arrayidx38.2, align 1
  %conv39.2 = zext i8 %27 to i32
  %and.2 = and i32 %conv39.2, 3
  %shr.2 = lshr i32 %conv39.2, 2
  %and43.2 = and i32 %shr.2, 3
  tail call void @perform_mc(ptr noundef nonnull %currMB, i32 noundef %curr_plane, ptr noundef %dec_picture, i32 noundef %conv6.2, i32 noundef %and.2, i32 noundef %and43.2, i32 noundef %cond25.2, i32 noundef %cond32.2) #7
  %indvars.iv.next79.2 = add nuw nsw i64 %indvars.iv78.2, %26
  %28 = trunc nuw i64 %indvars.iv.next79.2 to i32
  %cmp34.2 = icmp sgt i32 %cond20.2, %28
  br i1 %cmp34.2, label %for.body36.2, label %for.end.2

for.end.2:                                        ; preds = %for.body36.2
  %arrayidx.3 = getelementptr inbounds i8, ptr %currMB, i64 367
  %29 = load i8, ptr %arrayidx.3, align 1
  %arrayidx5.3 = getelementptr inbounds i8, ptr %currMB, i64 371
  %30 = load i8, ptr %arrayidx5.3, align 1
  %conv6.3 = sext i8 %30 to i32
  %cmp7.3 = icmp eq i8 %29, 5
  %cond.3 = select i1 %cmp7.3, i32 2, i32 1
  %cmp9.3 = icmp eq i8 %29, 4
  %cmp11.3 = icmp eq i8 %29, 7
  %add17.3 = add nuw nsw i32 %cond.3, 13
  %spec.select90 = select i1 %cmp11.3, i32 16, i32 %add17.3
  %cond20.3 = select i1 %cmp9.3, i32 13, i32 %spec.select90
  %31 = and i8 %29, -2
  %32 = icmp eq i8 %31, 4
  %cond25.3 = select i1 %32, i32 8, i32 4
  %cmp26.3 = icmp eq i8 %29, 6
  %33 = or i1 %cmp26.3, %cmp9.3
  %cond32.3 = select i1 %33, i32 8, i32 4
  %34 = zext nneg i32 %cond.3 to i64
  br label %for.body36.3

for.body36.3:                                     ; preds = %for.body36.3, %for.end.2
  %indvars.iv78.3 = phi i64 [ 12, %for.end.2 ], [ %indvars.iv.next79.3, %for.body36.3 ]
  %arrayidx38.3 = getelementptr inbounds [16 x i8], ptr @decode_block_scan, i64 0, i64 %indvars.iv78.3
  %35 = load i8, ptr %arrayidx38.3, align 1
  %conv39.3 = zext i8 %35 to i32
  %and.3 = and i32 %conv39.3, 3
  %shr.3 = lshr i32 %conv39.3, 2
  %and43.3 = and i32 %shr.3, 3
  tail call void @perform_mc(ptr noundef nonnull %currMB, i32 noundef %curr_plane, ptr noundef %dec_picture, i32 noundef %conv6.3, i32 noundef %and.3, i32 noundef %and43.3, i32 noundef %cond25.3, i32 noundef %cond32.3) #7
  %indvars.iv.next79.3 = add nuw nsw i64 %indvars.iv78.3, %34
  %36 = trunc nuw i64 %indvars.iv.next79.3 to i32
  %cmp34.3 = icmp sgt i32 %cond20.3, %36
  br i1 %cmp34.3, label %for.body36.3, label %for.end.3

for.end.3:                                        ; preds = %for.body36.3
  tail call void @iTransform(ptr noundef nonnull %currMB, i32 noundef %curr_plane, i32 noundef %land.ext) #7
  %cbp = getelementptr inbounds i8, ptr %currMB, i64 284
  %37 = load i32, ptr %cbp, align 4
  %cmp47.not = icmp eq i32 %37, 0
  br i1 %cmp47.not, label %if.end, label %if.then

if.then:                                          ; preds = %for.end.3
  %is_reset_coeff = getelementptr inbounds i8, ptr %0, i64 1240
  store i32 0, ptr %is_reset_coeff, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end.3
  ret i32 1
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @mb_pred_p_inter16x16(ptr noundef %currMB, i32 noundef %curr_plane, ptr noundef %dec_picture) local_unnamed_addr #0 {
entry:
  %p_Vid = getelementptr inbounds i8, ptr %currMB, i64 8
  %0 = load ptr, ptr %p_Vid, align 8
  %type = getelementptr inbounds i8, ptr %0, i64 848776
  %1 = load i32, ptr %type, align 8
  %cmp = icmp eq i32 %1, 3
  %conv = zext i1 %cmp to i32
  %2 = load ptr, ptr %currMB, align 8
  tail call fastcc void @set_chroma_vector(ptr noundef nonnull %currMB)
  %b8pdir = getelementptr inbounds i8, ptr %currMB, i64 368
  %3 = load i8, ptr %b8pdir, align 8
  %conv1 = sext i8 %3 to i32
  tail call void @perform_mc(ptr noundef nonnull %currMB, i32 noundef %curr_plane, ptr noundef %dec_picture, i32 noundef %conv1, i32 noundef 0, i32 noundef 0, i32 noundef 16, i32 noundef 16) #7
  tail call void @iTransform(ptr noundef nonnull %currMB, i32 noundef %curr_plane, i32 noundef %conv) #7
  %cbp = getelementptr inbounds i8, ptr %currMB, i64 284
  %4 = load i32, ptr %cbp, align 4
  %cmp2.not = icmp eq i32 %4, 0
  br i1 %cmp2.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %is_reset_coeff = getelementptr inbounds i8, ptr %2, i64 1240
  store i32 0, ptr %is_reset_coeff, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 1
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @mb_pred_p_inter16x8(ptr noundef %currMB, i32 noundef %curr_plane, ptr noundef %dec_picture) local_unnamed_addr #0 {
entry:
  %p_Vid = getelementptr inbounds i8, ptr %currMB, i64 8
  %0 = load ptr, ptr %p_Vid, align 8
  %type = getelementptr inbounds i8, ptr %0, i64 848776
  %1 = load i32, ptr %type, align 8
  %cmp = icmp eq i32 %1, 3
  %conv = zext i1 %cmp to i32
  %2 = load ptr, ptr %currMB, align 8
  tail call fastcc void @set_chroma_vector(ptr noundef nonnull %currMB)
  %b8pdir = getelementptr inbounds i8, ptr %currMB, i64 368
  %3 = load i8, ptr %b8pdir, align 8
  %conv1 = sext i8 %3 to i32
  tail call void @perform_mc(ptr noundef nonnull %currMB, i32 noundef %curr_plane, ptr noundef %dec_picture, i32 noundef %conv1, i32 noundef 0, i32 noundef 0, i32 noundef 16, i32 noundef 8) #7
  %arrayidx3 = getelementptr inbounds i8, ptr %currMB, i64 370
  %4 = load i8, ptr %arrayidx3, align 2
  %conv4 = sext i8 %4 to i32
  tail call void @perform_mc(ptr noundef nonnull %currMB, i32 noundef %curr_plane, ptr noundef %dec_picture, i32 noundef %conv4, i32 noundef 0, i32 noundef 2, i32 noundef 16, i32 noundef 8) #7
  tail call void @iTransform(ptr noundef nonnull %currMB, i32 noundef %curr_plane, i32 noundef %conv) #7
  %cbp = getelementptr inbounds i8, ptr %currMB, i64 284
  %5 = load i32, ptr %cbp, align 4
  %cmp5.not = icmp eq i32 %5, 0
  br i1 %cmp5.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %is_reset_coeff = getelementptr inbounds i8, ptr %2, i64 1240
  store i32 0, ptr %is_reset_coeff, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 1
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @mb_pred_p_inter8x16(ptr noundef %currMB, i32 noundef %curr_plane, ptr noundef %dec_picture) local_unnamed_addr #0 {
entry:
  %p_Vid = getelementptr inbounds i8, ptr %currMB, i64 8
  %0 = load ptr, ptr %p_Vid, align 8
  %type = getelementptr inbounds i8, ptr %0, i64 848776
  %1 = load i32, ptr %type, align 8
  %cmp = icmp eq i32 %1, 3
  %conv = zext i1 %cmp to i32
  %2 = load ptr, ptr %currMB, align 8
  tail call fastcc void @set_chroma_vector(ptr noundef nonnull %currMB)
  %b8pdir = getelementptr inbounds i8, ptr %currMB, i64 368
  %3 = load i8, ptr %b8pdir, align 8
  %conv1 = sext i8 %3 to i32
  tail call void @perform_mc(ptr noundef nonnull %currMB, i32 noundef %curr_plane, ptr noundef %dec_picture, i32 noundef %conv1, i32 noundef 0, i32 noundef 0, i32 noundef 8, i32 noundef 16) #7
  %arrayidx3 = getelementptr inbounds i8, ptr %currMB, i64 369
  %4 = load i8, ptr %arrayidx3, align 1
  %conv4 = sext i8 %4 to i32
  tail call void @perform_mc(ptr noundef nonnull %currMB, i32 noundef %curr_plane, ptr noundef %dec_picture, i32 noundef %conv4, i32 noundef 2, i32 noundef 0, i32 noundef 8, i32 noundef 16) #7
  tail call void @iTransform(ptr noundef nonnull %currMB, i32 noundef %curr_plane, i32 noundef %conv) #7
  %cbp = getelementptr inbounds i8, ptr %currMB, i64 284
  %5 = load i32, ptr %cbp, align 4
  %cmp5.not = icmp eq i32 %5, 0
  br i1 %cmp5.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %is_reset_coeff = getelementptr inbounds i8, ptr %2, i64 1240
  store i32 0, ptr %is_reset_coeff, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 1
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @mb_pred_b_d8x8temporal(ptr noundef %currMB, i32 noundef %curr_plane, ptr noundef %currImg, ptr noundef %dec_picture) local_unnamed_addr #0 {
entry:
  %0 = load ptr, ptr %currMB, align 8
  %p_Vid1 = getelementptr inbounds i8, ptr %currMB, i64 8
  %1 = load ptr, ptr %p_Vid1, align 8
  %list_offset2 = getelementptr inbounds i8, ptr %currMB, i64 114
  %2 = load i16, ptr %list_offset2, align 2
  %conv = sext i16 %2 to i64
  %listX = getelementptr inbounds i8, ptr %0, i64 264
  %arrayidx = getelementptr inbounds [6 x ptr], ptr %listX, i64 0, i64 %conv
  %3 = load ptr, ptr %arrayidx, align 8
  %add4 = add nsw i64 %conv, 1
  %arrayidx6 = getelementptr inbounds [6 x ptr], ptr %listX, i64 0, i64 %add4
  %4 = load ptr, ptr %arrayidx6, align 8
  tail call fastcc void @set_chroma_vector(ptr noundef nonnull %currMB)
  %b8pdir = getelementptr inbounds i8, ptr %currMB, i64 368
  %block_x = getelementptr inbounds i8, ptr %currMB, i64 32
  %block_y = getelementptr inbounds i8, ptr %currMB, i64 36
  %block_y_aff = getelementptr inbounds i8, ptr %currMB, i64 40
  %mv_info27 = getelementptr inbounds i8, ptr %dec_picture, i64 152
  %mb_aff_frame_flag = getelementptr inbounds i8, ptr %0, i64 128
  %mb_field = getelementptr inbounds i8, ptr %currMB, i64 384
  %arrayidx41 = getelementptr inbounds i8, ptr %0, i64 272
  %mbAddrX = getelementptr inbounds i8, ptr %currMB, i64 24
  %poc = getelementptr inbounds i8, ptr %dec_picture, i64 4
  %arrayidx62 = getelementptr inbounds i8, ptr %0, i64 304
  %arrayidx68 = getelementptr inbounds i8, ptr %0, i64 288
  %active_sps97 = getelementptr inbounds i8, ptr %1, i64 16
  %field_pic_flag = getelementptr inbounds i8, ptr %0, i64 176
  %structure = getelementptr inbounds i8, ptr %0, i64 184
  %num_ref_idx_active = getelementptr inbounds i8, ptr %0, i64 136
  %listXsize = getelementptr inbounds i8, ptr %0, i64 256
  %arrayidx350 = getelementptr inbounds [6 x i8], ptr %listXsize, i64 0, i64 %conv
  %mvscale = getelementptr inbounds i8, ptr %0, i64 336
  br label %for.body

for.body:                                         ; preds = %entry, %for.body598.preheader
  %indvars.iv976 = phi i64 [ 0, %entry ], [ %indvars.iv.next977, %for.body598.preheader ]
  %indvars.iv974 = phi i64 [ 4, %entry ], [ %indvars.iv.next975, %for.body598.preheader ]
  %indvars.iv962 = phi i64 [ 0, %entry ], [ %indvars.iv.next963, %for.body598.preheader ]
  %arrayidx9 = getelementptr inbounds [4 x i8], ptr %b8pdir, i64 0, i64 %indvars.iv976
  %5 = load i8, ptr %arrayidx9, align 1
  %conv10 = sext i8 %5 to i32
  br label %for.body16

for.body16:                                       ; preds = %for.body, %if.end577
  %indvars.iv964 = phi i64 [ %indvars.iv962, %for.body ], [ %indvars.iv.next965, %if.end577 ]
  %arrayidx18 = getelementptr inbounds [16 x i8], ptr @decode_block_scan, i64 0, i64 %indvars.iv964
  %6 = load i8, ptr %arrayidx18, align 1
  %conv19 = zext i8 %6 to i32
  %and = and i32 %conv19, 3
  %shr = lshr i32 %conv19, 2
  %and23 = and i32 %shr, 3
  %7 = load i32, ptr %block_x, align 8
  %add24 = add nsw i32 %and, %7
  %8 = load i32, ptr %block_y, align 4
  %add25 = add nsw i32 %and23, %8
  %9 = load i32, ptr %block_y_aff, align 8
  %add26 = add nsw i32 %9, %and23
  %10 = load ptr, ptr %mv_info27, align 8
  %idxprom28 = sext i32 %add25 to i64
  %arrayidx29 = getelementptr inbounds ptr, ptr %10, i64 %idxprom28
  %11 = load ptr, ptr %arrayidx29, align 8
  %idxprom30 = sext i32 %add24 to i64
  %arrayidx31 = getelementptr inbounds %struct.pic_motion_params, ptr %11, i64 %idxprom30
  %12 = load ptr, ptr %4, align 8
  %mv_info33 = getelementptr inbounds i8, ptr %12, i64 152
  %13 = load ptr, ptr %mv_info33, align 8
  %and1.i = and i32 %add26, -2
  %and.i = lshr i32 %add26, 1
  %and.lobit.i = and i32 %and.i, 1
  %cond.i = or disjoint i32 %and.lobit.i, %and1.i
  %idxprom34 = sext i32 %cond.i to i64
  %arrayidx35 = getelementptr inbounds ptr, ptr %13, i64 %idxprom34
  %14 = load ptr, ptr %arrayidx35, align 8
  %and1.i875 = and i32 %add24, -2
  %and.i876 = lshr i32 %add24, 1
  %and.lobit.i877 = and i32 %and.i876, 1
  %cond.i878 = or disjoint i32 %and.lobit.i877, %and1.i875
  %idxprom37 = sext i32 %cond.i878 to i64
  %arrayidx38 = getelementptr inbounds %struct.pic_motion_params, ptr %14, i64 %idxprom37
  %15 = load i32, ptr %mb_aff_frame_flag, align 8
  %tobool.not = icmp eq i32 %15, 0
  br i1 %tobool.not, label %if.else125, label %if.then

if.then:                                          ; preds = %for.body16
  %16 = load i32, ptr %mb_field, align 8
  %tobool39.not = icmp eq i32 %16, 0
  br i1 %tobool39.not, label %land.lhs.true, label %if.end276

land.lhs.true:                                    ; preds = %if.then
  %17 = load ptr, ptr %arrayidx41, align 8
  %18 = load ptr, ptr %17, align 8
  %iCodingType = getelementptr inbounds i8, ptr %18, i64 388
  %19 = load i32, ptr %iCodingType, align 4
  switch i32 %19, label %if.end276 [
    i32 3, label %land.lhs.true45
    i32 1, label %if.then60
  ]

land.lhs.true45:                                  ; preds = %land.lhs.true
  %motion = getelementptr inbounds i8, ptr %18, i64 184
  %20 = load ptr, ptr %motion, align 8
  %21 = load i32, ptr %mbAddrX, align 8
  %idxprom50 = sext i32 %21 to i64
  %arrayidx51 = getelementptr inbounds i8, ptr %20, i64 %idxprom50
  %22 = load i8, ptr %arrayidx51, align 1
  %tobool53.not = icmp eq i8 %22, 0
  br i1 %tobool53.not, label %if.end276, label %if.then60

if.then60:                                        ; preds = %land.lhs.true, %land.lhs.true45
  %23 = load i32, ptr %poc, align 4
  %24 = load ptr, ptr %arrayidx62, align 8
  %25 = load ptr, ptr %24, align 8
  %poc64 = getelementptr inbounds i8, ptr %25, i64 4
  %26 = load i32, ptr %poc64, align 4
  %sub = sub nsw i32 %23, %26
  %sub.i = tail call i32 @llvm.abs.i32(i32 %sub, i1 true)
  %27 = load ptr, ptr %arrayidx68, align 8
  %28 = load ptr, ptr %27, align 8
  %poc70 = getelementptr inbounds i8, ptr %28, i64 4
  %29 = load i32, ptr %poc70, align 4
  %sub71 = sub nsw i32 %23, %29
  %sub.i879 = tail call i32 @llvm.abs.i32(i32 %sub71, i1 true)
  %cmp73 = icmp ugt i32 %sub.i, %sub.i879
  %30 = load ptr, ptr %active_sps97, align 8
  %direct_8x8_inference_flag = getelementptr inbounds i8, ptr %30, i64 3144
  %31 = load i32, ptr %direct_8x8_inference_flag, align 4
  %tobool76.not = icmp eq i32 %31, 0
  %shr92 = ashr i32 %add26, 1
  %idxprom93 = sext i32 %shr92 to i64
  br i1 %cmp73, label %if.then75, label %if.else

if.then75:                                        ; preds = %if.then60
  %mv_info91 = getelementptr inbounds i8, ptr %28, i64 152
  %32 = load ptr, ptr %mv_info91, align 8
  %arrayidx94 = getelementptr inbounds ptr, ptr %32, i64 %idxprom93
  %33 = load ptr, ptr %arrayidx94, align 8
  br i1 %tobool76.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then75
  %arrayidx87 = getelementptr inbounds %struct.pic_motion_params, ptr %33, i64 %idxprom37
  br label %if.end276

cond.false:                                       ; preds = %if.then75
  %arrayidx96 = getelementptr inbounds %struct.pic_motion_params, ptr %33, i64 %idxprom30
  br label %if.end276

if.else:                                          ; preds = %if.then60
  %mv_info116 = getelementptr inbounds i8, ptr %25, i64 152
  %34 = load ptr, ptr %mv_info116, align 8
  %arrayidx119 = getelementptr inbounds ptr, ptr %34, i64 %idxprom93
  %35 = load ptr, ptr %arrayidx119, align 8
  br i1 %tobool76.not, label %cond.false112, label %cond.true100

cond.true100:                                     ; preds = %if.else
  %arrayidx111 = getelementptr inbounds %struct.pic_motion_params, ptr %35, i64 %idxprom37
  br label %if.end276

cond.false112:                                    ; preds = %if.else
  %arrayidx121 = getelementptr inbounds %struct.pic_motion_params, ptr %35, i64 %idxprom30
  br label %if.end276

if.else125:                                       ; preds = %for.body16
  %36 = load ptr, ptr %active_sps97, align 8
  %frame_mbs_only_flag = getelementptr inbounds i8, ptr %36, i64 3136
  %37 = load i32, ptr %frame_mbs_only_flag, align 4
  %tobool127.not = icmp eq i32 %37, 0
  br i1 %tobool127.not, label %land.lhs.true128, label %if.end276

land.lhs.true128:                                 ; preds = %if.else125
  %38 = load i32, ptr %field_pic_flag, align 8
  %tobool129.not = icmp eq i32 %38, 0
  br i1 %tobool129.not, label %land.lhs.true130, label %land.lhs.true210

land.lhs.true130:                                 ; preds = %land.lhs.true128
  %39 = load ptr, ptr %arrayidx41, align 8
  %40 = load ptr, ptr %39, align 8
  %iCodingType134 = getelementptr inbounds i8, ptr %40, i64 388
  %41 = load i32, ptr %iCodingType134, align 4
  %cmp135.not = icmp eq i32 %41, 0
  br i1 %cmp135.not, label %if.end276, label %if.then137

if.then137:                                       ; preds = %land.lhs.true130
  %42 = load i32, ptr %poc, align 4
  %bottom_field = getelementptr inbounds i8, ptr %12, i64 232
  %43 = load ptr, ptr %bottom_field, align 8
  %poc140 = getelementptr inbounds i8, ptr %43, i64 4
  %44 = load i32, ptr %poc140, align 4
  %sub141 = sub nsw i32 %42, %44
  %sub.i896 = tail call i32 @llvm.abs.i32(i32 %sub141, i1 true)
  %top_field = getelementptr inbounds i8, ptr %12, i64 224
  %45 = load ptr, ptr %top_field, align 8
  %poc145 = getelementptr inbounds i8, ptr %45, i64 4
  %46 = load i32, ptr %poc145, align 4
  %sub146 = sub nsw i32 %42, %46
  %sub.i897 = tail call i32 @llvm.abs.i32(i32 %sub146, i1 true)
  %cmp148 = icmp ugt i32 %sub.i896, %sub.i897
  %direct_8x8_inference_flag152 = getelementptr inbounds i8, ptr %36, i64 3144
  %47 = load i32, ptr %direct_8x8_inference_flag152, align 4
  %tobool153.not = icmp eq i32 %47, 0
  %shr169 = ashr i32 %add26, 1
  %idxprom170 = sext i32 %shr169 to i64
  br i1 %cmp148, label %if.then150, label %if.else176

if.then150:                                       ; preds = %if.then137
  %mv_info168 = getelementptr inbounds i8, ptr %45, i64 152
  %48 = load ptr, ptr %mv_info168, align 8
  %arrayidx171 = getelementptr inbounds ptr, ptr %48, i64 %idxprom170
  %49 = load ptr, ptr %arrayidx171, align 8
  br i1 %tobool153.not, label %cond.false165, label %cond.true154

cond.true154:                                     ; preds = %if.then150
  %arrayidx164 = getelementptr inbounds %struct.pic_motion_params, ptr %49, i64 %idxprom37
  br label %if.end276

cond.false165:                                    ; preds = %if.then150
  %arrayidx173 = getelementptr inbounds %struct.pic_motion_params, ptr %49, i64 %idxprom30
  br label %if.end276

if.else176:                                       ; preds = %if.then137
  %mv_info194 = getelementptr inbounds i8, ptr %43, i64 152
  %50 = load ptr, ptr %mv_info194, align 8
  %arrayidx197 = getelementptr inbounds ptr, ptr %50, i64 %idxprom170
  %51 = load ptr, ptr %arrayidx197, align 8
  br i1 %tobool153.not, label %cond.false191, label %cond.true180

cond.true180:                                     ; preds = %if.else176
  %arrayidx190 = getelementptr inbounds %struct.pic_motion_params, ptr %51, i64 %idxprom37
  br label %if.end276

cond.false191:                                    ; preds = %if.else176
  %arrayidx199 = getelementptr inbounds %struct.pic_motion_params, ptr %51, i64 %idxprom30
  br label %if.end276

land.lhs.true210:                                 ; preds = %land.lhs.true128
  %52 = load i32, ptr %structure, align 8
  %53 = load i32, ptr %12, align 8
  %cmp213.not = icmp eq i32 %52, %53
  br i1 %cmp213.not, label %if.end276, label %land.lhs.true215

land.lhs.true215:                                 ; preds = %land.lhs.true210
  %coded_frame = getelementptr inbounds i8, ptr %12, i64 96
  %54 = load i32, ptr %coded_frame, align 8
  %tobool217.not = icmp eq i32 %54, 0
  br i1 %tobool217.not, label %if.end276, label %if.then218

if.then218:                                       ; preds = %land.lhs.true215
  %cmp220 = icmp eq i32 %52, 1
  %direct_8x8_inference_flag224 = getelementptr inbounds i8, ptr %36, i64 3144
  %55 = load i32, ptr %direct_8x8_inference_flag224, align 4
  %tobool225.not = icmp eq i32 %55, 0
  %frame238 = getelementptr inbounds i8, ptr %12, i64 240
  %56 = load ptr, ptr %frame238, align 8
  br i1 %cmp220, label %if.then222, label %if.else247

if.then222:                                       ; preds = %if.then218
  %top_field239 = getelementptr inbounds i8, ptr %56, i64 224
  %57 = load ptr, ptr %top_field239, align 8
  %mv_info240 = getelementptr inbounds i8, ptr %57, i64 152
  %58 = load ptr, ptr %mv_info240, align 8
  br i1 %tobool225.not, label %cond.false236, label %cond.true226

cond.true226:                                     ; preds = %if.then222
  %arrayidx232 = getelementptr inbounds ptr, ptr %58, i64 %idxprom34
  %59 = load ptr, ptr %arrayidx232, align 8
  %arrayidx235 = getelementptr inbounds %struct.pic_motion_params, ptr %59, i64 %idxprom37
  br label %if.end276

cond.false236:                                    ; preds = %if.then222
  %idxprom241 = sext i32 %add26 to i64
  %arrayidx242 = getelementptr inbounds ptr, ptr %58, i64 %idxprom241
  %60 = load ptr, ptr %arrayidx242, align 8
  %arrayidx244 = getelementptr inbounds %struct.pic_motion_params, ptr %60, i64 %idxprom30
  br label %if.end276

if.else247:                                       ; preds = %if.then218
  %bottom_field265 = getelementptr inbounds i8, ptr %56, i64 232
  %61 = load ptr, ptr %bottom_field265, align 8
  %mv_info266 = getelementptr inbounds i8, ptr %61, i64 152
  %62 = load ptr, ptr %mv_info266, align 8
  br i1 %tobool225.not, label %cond.false262, label %cond.true251

cond.true251:                                     ; preds = %if.else247
  %arrayidx258 = getelementptr inbounds ptr, ptr %62, i64 %idxprom34
  %63 = load ptr, ptr %arrayidx258, align 8
  %arrayidx261 = getelementptr inbounds %struct.pic_motion_params, ptr %63, i64 %idxprom37
  br label %if.end276

cond.false262:                                    ; preds = %if.else247
  %idxprom267 = sext i32 %add26 to i64
  %arrayidx268 = getelementptr inbounds ptr, ptr %62, i64 %idxprom267
  %64 = load ptr, ptr %arrayidx268, align 8
  %arrayidx270 = getelementptr inbounds %struct.pic_motion_params, ptr %64, i64 %idxprom30
  br label %if.end276

if.end276:                                        ; preds = %land.lhs.true130, %land.lhs.true, %land.lhs.true45, %if.else125, %cond.true251, %cond.false262, %cond.true226, %cond.false236, %cond.true180, %cond.false191, %cond.true154, %cond.false165, %cond.true100, %cond.false112, %cond.true, %cond.false, %land.lhs.true215, %land.lhs.true210, %if.then
  %colocated.0 = phi ptr [ %arrayidx38, %if.then ], [ %arrayidx38, %land.lhs.true215 ], [ %arrayidx38, %land.lhs.true210 ], [ %arrayidx87, %cond.true ], [ %arrayidx96, %cond.false ], [ %arrayidx111, %cond.true100 ], [ %arrayidx121, %cond.false112 ], [ %arrayidx164, %cond.true154 ], [ %arrayidx173, %cond.false165 ], [ %arrayidx190, %cond.true180 ], [ %arrayidx199, %cond.false191 ], [ %arrayidx235, %cond.true226 ], [ %arrayidx244, %cond.false236 ], [ %arrayidx261, %cond.true251 ], [ %arrayidx270, %cond.false262 ], [ %arrayidx38, %if.else125 ], [ %arrayidx38, %land.lhs.true45 ], [ %arrayidx38, %land.lhs.true ], [ %arrayidx38, %land.lhs.true130 ]
  %ref_idx277 = getelementptr inbounds i8, ptr %colocated.0, i64 24
  %65 = load i8, ptr %ref_idx277, align 8
  %cmp280 = icmp eq i8 %65, -1
  %idxprom284 = zext i1 %cmp280 to i64
  %arrayidx285 = getelementptr inbounds [2 x i8], ptr %ref_idx277, i64 0, i64 %idxprom284
  %66 = load i8, ptr %arrayidx285, align 1
  %cmp288 = icmp eq i8 %66, -1
  br i1 %cmp288, label %if.then290, label %if.else298

if.then290:                                       ; preds = %if.end276
  %mv = getelementptr inbounds i8, ptr %arrayidx31, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %mv, i8 0, i64 10, i1 false)
  br label %if.end577

if.else298:                                       ; preds = %if.end276
  br i1 %tobool.not, label %land.lhs.true323, label %land.lhs.true301

land.lhs.true301:                                 ; preds = %if.else298
  %67 = load i32, ptr %mb_field, align 8
  %tobool303.not = icmp eq i32 %67, 0
  %arrayidx316 = getelementptr inbounds [2 x ptr], ptr %colocated.0, i64 0, i64 %idxprom284
  %68 = load ptr, ptr %arrayidx316, align 8
  %69 = load i32, ptr %68, align 8
  %cmp318.not = icmp eq i32 %69, 0
  br i1 %tobool303.not, label %land.lhs.true313, label %land.lhs.true304

land.lhs.true304:                                 ; preds = %land.lhs.true301
  br i1 %cmp318.not, label %if.then345, label %if.else397

land.lhs.true313:                                 ; preds = %land.lhs.true301
  br i1 %cmp318.not, label %if.else397, label %if.then345

land.lhs.true323:                                 ; preds = %if.else298
  %70 = load i32, ptr %field_pic_flag, align 8
  switch i32 %70, label %if.else397 [
    i32 0, label %land.lhs.true327
    i32 1, label %land.lhs.true338
  ]

land.lhs.true327:                                 ; preds = %land.lhs.true323
  %arrayidx330 = getelementptr inbounds [2 x ptr], ptr %colocated.0, i64 0, i64 %idxprom284
  %71 = load ptr, ptr %arrayidx330, align 8
  %72 = load i32, ptr %71, align 8
  %cmp332.not = icmp eq i32 %72, 0
  br i1 %cmp332.not, label %if.else397, label %if.then345

land.lhs.true338:                                 ; preds = %land.lhs.true323
  %arrayidx341 = getelementptr inbounds [2 x ptr], ptr %colocated.0, i64 0, i64 %idxprom284
  %73 = load ptr, ptr %arrayidx341, align 8
  %74 = load i32, ptr %73, align 8
  %cmp343 = icmp eq i32 %74, 0
  br i1 %cmp343, label %if.then345, label %if.else397

if.then345:                                       ; preds = %land.lhs.true338, %land.lhs.true327, %land.lhs.true313, %land.lhs.true304
  %75 = phi ptr [ %73, %land.lhs.true338 ], [ %71, %land.lhs.true327 ], [ %68, %land.lhs.true313 ], [ %68, %land.lhs.true304 ]
  %76 = load i32, ptr %num_ref_idx_active, align 8
  %77 = load i8, ptr %arrayidx350, align 1
  %conv351 = sext i8 %77 to i32
  %cond.i930 = tail call noundef i32 @llvm.smin.i32(i32 %76, i32 %conv351)
  %cmp353944 = icmp sgt i32 %cond.i930, 0
  br i1 %cmp353944, label %for.body355.lr.ph, label %if.then430

for.body355.lr.ph:                                ; preds = %if.then345
  %78 = load ptr, ptr %arrayidx, align 8
  %wide.trip.count = zext nneg i32 %cond.i930 to i64
  br label %for.body355

for.body355:                                      ; preds = %for.body355.lr.ph, %if.else395
  %indvars.iv = phi i64 [ 0, %for.body355.lr.ph ], [ %indvars.iv.next, %if.else395 ]
  %arrayidx361 = getelementptr inbounds ptr, ptr %78, i64 %indvars.iv
  %79 = load ptr, ptr %arrayidx361, align 8
  %top_field362 = getelementptr inbounds i8, ptr %79, i64 224
  %80 = load ptr, ptr %top_field362, align 8
  %cmp366 = icmp eq ptr %80, %75
  br i1 %cmp366, label %if.then430.loopexit986, label %lor.lhs.false368

lor.lhs.false368:                                 ; preds = %for.body355
  %bottom_field375 = getelementptr inbounds i8, ptr %79, i64 232
  %81 = load ptr, ptr %bottom_field375, align 8
  %cmp379 = icmp eq ptr %81, %75
  br i1 %cmp379, label %if.then430.loopexit986, label %lor.lhs.false381

lor.lhs.false381:                                 ; preds = %lor.lhs.false368
  %frame388 = getelementptr inbounds i8, ptr %79, i64 240
  %82 = load ptr, ptr %frame388, align 8
  %cmp392 = icmp eq ptr %82, %75
  br i1 %cmp392, label %if.then430.loopexit986, label %if.else395

if.else395:                                       ; preds = %lor.lhs.false381
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %if.then574, label %for.body355

if.else397:                                       ; preds = %land.lhs.true323, %land.lhs.true327, %land.lhs.true313, %land.lhs.true304, %land.lhs.true338
  %83 = load i32, ptr %num_ref_idx_active, align 8
  %84 = load i8, ptr %arrayidx350, align 1
  %conv405 = sext i8 %84 to i32
  %cond.i931 = tail call noundef i32 @llvm.smin.i32(i32 %83, i32 %conv405)
  %cmp407946 = icmp sgt i32 %cond.i931, 0
  br i1 %cmp407946, label %for.body409.lr.ph, label %if.then430

for.body409.lr.ph:                                ; preds = %if.else397
  %85 = load ptr, ptr %arrayidx, align 8
  %arrayidx418 = getelementptr inbounds [2 x ptr], ptr %colocated.0, i64 0, i64 %idxprom284
  %86 = load ptr, ptr %arrayidx418, align 8
  %wide.trip.count960 = zext nneg i32 %cond.i931 to i64
  br label %for.body409

for.body409:                                      ; preds = %for.body409.lr.ph, %if.else422
  %indvars.iv957 = phi i64 [ 0, %for.body409.lr.ph ], [ %indvars.iv.next958, %if.else422 ]
  %arrayidx415 = getelementptr inbounds ptr, ptr %85, i64 %indvars.iv957
  %87 = load ptr, ptr %arrayidx415, align 8
  %cmp419 = icmp eq ptr %87, %86
  br i1 %cmp419, label %if.then430.loopexit, label %if.else422

if.else422:                                       ; preds = %for.body409
  %indvars.iv.next958 = add nuw nsw i64 %indvars.iv957, 1
  %exitcond961.not = icmp eq i64 %indvars.iv.next958, %wide.trip.count960
  br i1 %exitcond961.not, label %if.then574, label %for.body409

if.then430.loopexit:                              ; preds = %for.body409
  %88 = trunc nuw nsw i64 %indvars.iv957 to i32
  br label %if.then430

if.then430.loopexit986:                           ; preds = %lor.lhs.false381, %lor.lhs.false368, %for.body355
  %89 = trunc nuw nsw i64 %indvars.iv to i32
  br label %if.then430

if.then430:                                       ; preds = %if.then430.loopexit986, %if.else397, %if.then345, %if.then430.loopexit
  %mapped_idx.2936 = phi i32 [ %88, %if.then430.loopexit ], [ 0, %if.else397 ], [ 0, %if.then345 ], [ %89, %if.then430.loopexit986 ]
  %idxprom434 = sext i32 %mapped_idx.2936 to i64
  %arrayidx435 = getelementptr inbounds [6 x [32 x i32]], ptr %mvscale, i64 0, i64 %conv, i64 %idxprom434
  %90 = load i32, ptr %arrayidx435, align 4
  %mv436 = getelementptr inbounds i8, ptr %colocated.0, i64 16
  %arrayidx438 = getelementptr inbounds [2 x %struct.MotionVector], ptr %mv436, i64 0, i64 %idxprom284
  %mv_y439 = getelementptr inbounds i8, ptr %arrayidx438, i64 2
  %91 = load i16, ptr %mv_y439, align 2
  %conv440 = sext i16 %91 to i32
  br i1 %tobool.not, label %land.lhs.true456, label %land.lhs.true443

land.lhs.true443:                                 ; preds = %if.then430
  %92 = load i32, ptr %mb_field, align 8
  %tobool445.not = icmp eq i32 %92, 0
  %arrayidx449 = getelementptr inbounds [2 x ptr], ptr %colocated.0, i64 0, i64 %idxprom284
  %93 = load ptr, ptr %arrayidx449, align 8
  %94 = load i32, ptr %93, align 8
  %cmp451.not = icmp eq i32 %94, 0
  br i1 %tobool445.not, label %land.lhs.true446, label %land.lhs.true474

land.lhs.true446:                                 ; preds = %land.lhs.true443
  br i1 %cmp451.not, label %if.end497, label %if.then467

land.lhs.true456:                                 ; preds = %if.then430
  %95 = load i32, ptr %field_pic_flag, align 8
  switch i32 %95, label %if.end497 [
    i32 0, label %land.lhs.true460
    i32 1, label %land.lhs.true488
  ]

land.lhs.true460:                                 ; preds = %land.lhs.true456
  %arrayidx463 = getelementptr inbounds [2 x ptr], ptr %colocated.0, i64 0, i64 %idxprom284
  %96 = load ptr, ptr %arrayidx463, align 8
  %97 = load i32, ptr %96, align 8
  %cmp465.not = icmp eq i32 %97, 0
  br i1 %cmp465.not, label %if.end497, label %if.then467

if.then467:                                       ; preds = %land.lhs.true460, %land.lhs.true446
  %mul = shl nsw i32 %conv440, 1
  br label %if.end497

land.lhs.true474:                                 ; preds = %land.lhs.true443
  br i1 %cmp451.not, label %if.then495, label %if.end497

land.lhs.true488:                                 ; preds = %land.lhs.true456
  %arrayidx491 = getelementptr inbounds [2 x ptr], ptr %colocated.0, i64 0, i64 %idxprom284
  %98 = load ptr, ptr %arrayidx491, align 8
  %99 = load i32, ptr %98, align 8
  %cmp493 = icmp eq i32 %99, 0
  br i1 %cmp493, label %if.then495, label %if.end497

if.then495:                                       ; preds = %land.lhs.true488, %land.lhs.true474
  %div937 = sdiv i16 %91, 2
  %div.sext = sext i16 %div937 to i32
  br label %if.end497

if.end497:                                        ; preds = %land.lhs.true456, %land.lhs.true460, %land.lhs.true446, %land.lhs.true474, %land.lhs.true488, %if.then495, %if.then467
  %mv_y.0 = phi i32 [ %div.sext, %if.then495 ], [ %conv440, %land.lhs.true488 ], [ %mul, %if.then467 ], [ %conv440, %land.lhs.true474 ], [ %conv440, %land.lhs.true446 ], [ %conv440, %land.lhs.true460 ], [ %conv440, %land.lhs.true456 ]
  %cmp498 = icmp eq i32 %90, 9999
  br i1 %cmp498, label %if.then509, label %lor.lhs.false500

lor.lhs.false500:                                 ; preds = %if.end497
  %100 = load ptr, ptr %arrayidx, align 8
  %arrayidx506 = getelementptr inbounds ptr, ptr %100, i64 %idxprom434
  %101 = load ptr, ptr %arrayidx506, align 8
  %is_long_term = getelementptr inbounds i8, ptr %101, i64 40
  %102 = load i8, ptr %is_long_term, align 8
  %tobool508.not = icmp eq i8 %102, 0
  br i1 %tobool508.not, label %if.else522, label %if.then509

if.then509:                                       ; preds = %lor.lhs.false500, %if.end497
  %103 = load i16, ptr %arrayidx438, align 4
  %mv513 = getelementptr inbounds i8, ptr %arrayidx31, i64 16
  store i16 %103, ptr %mv513, align 8
  %conv516 = trunc i32 %mv_y.0 to i16
  %mv_y519 = getelementptr inbounds i8, ptr %arrayidx31, i64 18
  store i16 %conv516, ptr %mv_y519, align 2
  %arrayidx521 = getelementptr inbounds i8, ptr %arrayidx31, i64 20
  store i32 0, ptr %arrayidx521, align 4
  br label %if.end565

if.else522:                                       ; preds = %lor.lhs.false500
  %104 = load i16, ptr %arrayidx438, align 4
  %conv527 = sext i16 %104 to i32
  %mul528 = mul nsw i32 %90, %conv527
  %add529 = add nsw i32 %mul528, 128
  %shr530 = lshr i32 %add529, 8
  %conv531 = trunc i32 %shr530 to i16
  %mv532 = getelementptr inbounds i8, ptr %arrayidx31, i64 16
  store i16 %conv531, ptr %mv532, align 8
  %mul535 = mul nsw i32 %mv_y.0, %90
  %add536 = add nsw i32 %mul535, 128
  %shr537 = lshr i32 %add536, 8
  %conv538 = trunc i32 %shr537 to i16
  %mv_y541 = getelementptr inbounds i8, ptr %arrayidx31, i64 18
  store i16 %conv538, ptr %mv_y541, align 2
  %105 = load i16, ptr %arrayidx438, align 4
  %sub551 = sub i16 %conv531, %105
  %arrayidx554 = getelementptr inbounds i8, ptr %arrayidx31, i64 20
  store i16 %sub551, ptr %arrayidx554, align 4
  %sub560 = sub i32 %shr537, %mv_y.0
  %conv561 = trunc i32 %sub560 to i16
  %mv_y564 = getelementptr inbounds i8, ptr %arrayidx31, i64 22
  store i16 %conv561, ptr %mv_y564, align 2
  br label %if.end565

if.end565:                                        ; preds = %if.else522, %if.then509
  %conv566 = trunc i32 %mapped_idx.2936 to i8
  %ref_idx567 = getelementptr inbounds i8, ptr %arrayidx31, i64 24
  store i8 %conv566, ptr %ref_idx567, align 8
  %arrayidx570 = getelementptr inbounds i8, ptr %arrayidx31, i64 25
  store i8 0, ptr %arrayidx570, align 1
  br label %if.end577

if.then574:                                       ; preds = %if.else395, %if.else422
  tail call void @error(ptr noundef nonnull @.str, i32 noundef -1111) #7
  %ref_idx578.phi.trans.insert = getelementptr inbounds i8, ptr %arrayidx31, i64 24
  %.pre = load i8, ptr %ref_idx578.phi.trans.insert, align 8
  %arrayidx586.phi.trans.insert = getelementptr inbounds i8, ptr %arrayidx31, i64 25
  %.pre982 = load i8, ptr %arrayidx586.phi.trans.insert, align 1
  br label %if.end577

if.end577:                                        ; preds = %if.end565, %if.then574, %if.then290
  %106 = phi i8 [ 0, %if.end565 ], [ %.pre982, %if.then574 ], [ 0, %if.then290 ]
  %107 = phi i8 [ %conv566, %if.end565 ], [ %.pre, %if.then574 ], [ 0, %if.then290 ]
  %idxprom581 = sext i8 %107 to i64
  %arrayidx582 = getelementptr inbounds ptr, ptr %3, i64 %idxprom581
  %108 = load ptr, ptr %arrayidx582, align 8
  store ptr %108, ptr %arrayidx31, align 8
  %idxprom588 = sext i8 %106 to i64
  %arrayidx589 = getelementptr inbounds ptr, ptr %4, i64 %idxprom588
  %109 = load ptr, ptr %arrayidx589, align 8
  %arrayidx591 = getelementptr inbounds i8, ptr %arrayidx31, i64 8
  store ptr %109, ptr %arrayidx591, align 8
  %indvars.iv.next965 = add nuw nsw i64 %indvars.iv964, 1
  %exitcond970.not = icmp eq i64 %indvars.iv.next965, %indvars.iv974
  br i1 %exitcond970.not, label %for.body598.preheader, label %for.body16

for.body598.preheader:                            ; preds = %if.end577
  %arrayidx601 = getelementptr inbounds [16 x i8], ptr @decode_block_scan, i64 0, i64 %indvars.iv962
  %110 = load i8, ptr %arrayidx601, align 4
  %conv602 = zext i8 %110 to i32
  %and603 = and i32 %conv602, 3
  %shr608 = lshr i32 %conv602, 2
  %and609 = and i32 %shr608, 3
  tail call void @perform_mc(ptr noundef nonnull %currMB, i32 noundef %curr_plane, ptr noundef %dec_picture, i32 noundef %conv10, i32 noundef %and603, i32 noundef %and609, i32 noundef 8, i32 noundef 8) #7
  %indvars.iv.next977 = add nuw nsw i64 %indvars.iv976, 1
  %indvars.iv.next963 = add nuw nsw i64 %indvars.iv962, 4
  %indvars.iv.next975 = add nuw nsw i64 %indvars.iv974, 4
  %exitcond981.not = icmp eq i64 %indvars.iv.next977, 4
  br i1 %exitcond981.not, label %for.end615, label %for.body

for.end615:                                       ; preds = %for.body598.preheader
  %cbp = getelementptr inbounds i8, ptr %currMB, i64 284
  %111 = load i32, ptr %cbp, align 4
  %cmp616 = icmp eq i32 %111, 0
  br i1 %cmp616, label %if.then618, label %if.else655

if.then618:                                       ; preds = %for.end615
  %pix_y = getelementptr inbounds i8, ptr %currMB, i64 48
  %112 = load i32, ptr %pix_y, align 8
  %idxprom619 = sext i32 %112 to i64
  %arrayidx620 = getelementptr inbounds ptr, ptr %currImg, i64 %idxprom619
  %mb_pred = getelementptr inbounds i8, ptr %0, i64 1248
  %113 = load ptr, ptr %mb_pred, align 8
  %idxprom621 = zext i32 %curr_plane to i64
  %arrayidx622 = getelementptr inbounds ptr, ptr %113, i64 %idxprom621
  %114 = load ptr, ptr %arrayidx622, align 8
  %pix_x = getelementptr inbounds i8, ptr %currMB, i64 44
  %115 = load i32, ptr %pix_x, align 4
  tail call void @copy_image_data_16x16(ptr noundef %arrayidx620, ptr noundef %114, i32 noundef %115, i32 noundef 0) #7
  %chroma_format_idc = getelementptr inbounds i8, ptr %dec_picture, i64 268
  %116 = load i32, ptr %chroma_format_idc, align 4
  switch i32 %116, label %if.then629 [
    i32 0, label %if.end656
    i32 3, label %if.end656
  ]

if.then629:                                       ; preds = %if.then618
  %imgUV = getelementptr inbounds i8, ptr %dec_picture, i64 136
  %117 = load ptr, ptr %imgUV, align 8
  %118 = load ptr, ptr %117, align 8
  %pix_c_y = getelementptr inbounds i8, ptr %currMB, i64 56
  %119 = load i32, ptr %pix_c_y, align 8
  %idxprom631 = sext i32 %119 to i64
  %arrayidx632 = getelementptr inbounds ptr, ptr %118, i64 %idxprom631
  %120 = load ptr, ptr %mb_pred, align 8
  %arrayidx634 = getelementptr inbounds i8, ptr %120, i64 8
  %121 = load ptr, ptr %arrayidx634, align 8
  %pix_c_x = getelementptr inbounds i8, ptr %currMB, i64 52
  %122 = load i32, ptr %pix_c_x, align 4
  %arrayidx635 = getelementptr inbounds i8, ptr %1, i64 849132
  %123 = load i32, ptr %arrayidx635, align 4
  %arrayidx639 = getelementptr inbounds i8, ptr %1, i64 849136
  %124 = load i32, ptr %arrayidx639, align 4
  tail call void @copy_image_data(ptr noundef %arrayidx632, ptr noundef %121, i32 noundef %122, i32 noundef 0, i32 noundef %123, i32 noundef %124) #7
  %125 = load ptr, ptr %imgUV, align 8
  %arrayidx641 = getelementptr inbounds i8, ptr %125, i64 8
  %126 = load ptr, ptr %arrayidx641, align 8
  %127 = load i32, ptr %pix_c_y, align 8
  %idxprom643 = sext i32 %127 to i64
  %arrayidx644 = getelementptr inbounds ptr, ptr %126, i64 %idxprom643
  %128 = load ptr, ptr %mb_pred, align 8
  %arrayidx646 = getelementptr inbounds i8, ptr %128, i64 16
  %129 = load ptr, ptr %arrayidx646, align 8
  %130 = load i32, ptr %pix_c_x, align 4
  %131 = load i32, ptr %arrayidx635, align 4
  %132 = load i32, ptr %arrayidx639, align 4
  tail call void @copy_image_data(ptr noundef %arrayidx644, ptr noundef %129, i32 noundef %130, i32 noundef 0, i32 noundef %131, i32 noundef %132) #7
  br label %if.end656

if.else655:                                       ; preds = %for.end615
  tail call void @iTransform(ptr noundef nonnull %currMB, i32 noundef %curr_plane, i32 noundef 0) #7
  %is_reset_coeff = getelementptr inbounds i8, ptr %0, i64 1240
  store i32 0, ptr %is_reset_coeff, align 8
  br label %if.end656

if.end656:                                        ; preds = %if.then618, %if.then618, %if.then629, %if.else655
  ret i32 1
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

declare void @error(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @mb_pred_b_d4x4temporal(ptr noundef %currMB, i32 noundef %curr_plane, ptr noundef %currImg, ptr noundef %dec_picture) local_unnamed_addr #0 {
entry:
  %0 = load ptr, ptr %currMB, align 8
  %p_Vid1 = getelementptr inbounds i8, ptr %currMB, i64 8
  %1 = load ptr, ptr %p_Vid1, align 8
  %list_offset2 = getelementptr inbounds i8, ptr %currMB, i64 114
  %2 = load i16, ptr %list_offset2, align 2
  %conv = sext i16 %2 to i64
  %listX = getelementptr inbounds i8, ptr %0, i64 264
  %arrayidx = getelementptr inbounds [6 x ptr], ptr %listX, i64 0, i64 %conv
  %3 = load ptr, ptr %arrayidx, align 8
  %add4 = add nsw i64 %conv, 1
  %arrayidx6 = getelementptr inbounds [6 x ptr], ptr %listX, i64 0, i64 %add4
  %4 = load ptr, ptr %arrayidx6, align 8
  tail call fastcc void @set_chroma_vector(ptr noundef nonnull %currMB)
  %b8pdir = getelementptr inbounds i8, ptr %currMB, i64 368
  %block_x = getelementptr inbounds i8, ptr %currMB, i64 32
  %block_y = getelementptr inbounds i8, ptr %currMB, i64 36
  %block_y_aff = getelementptr inbounds i8, ptr %currMB, i64 40
  %mv_info26 = getelementptr inbounds i8, ptr %dec_picture, i64 152
  %num_ref_idx_active = getelementptr inbounds i8, ptr %0, i64 136
  %listXsize = getelementptr inbounds i8, ptr %0, i64 256
  %arrayidx60 = getelementptr inbounds [6 x i8], ptr %listXsize, i64 0, i64 %conv
  %mvscale = getelementptr inbounds i8, ptr %0, i64 336
  br label %for.body

for.body:                                         ; preds = %entry, %for.body180.preheader
  %indvars.iv364 = phi i64 [ 0, %entry ], [ %indvars.iv.next365, %for.body180.preheader ]
  %indvars.iv362 = phi i64 [ 4, %entry ], [ %indvars.iv.next363, %for.body180.preheader ]
  %indvars.iv348 = phi i64 [ 0, %entry ], [ %indvars.iv.next349, %for.body180.preheader ]
  %arrayidx9 = getelementptr inbounds [4 x i8], ptr %b8pdir, i64 0, i64 %indvars.iv364
  %5 = load i8, ptr %arrayidx9, align 1
  br label %for.body15

for.body15:                                       ; preds = %for.body, %if.end159
  %indvars.iv350 = phi i64 [ %indvars.iv348, %for.body ], [ %indvars.iv.next351, %if.end159 ]
  %arrayidx17 = getelementptr inbounds [16 x i8], ptr @decode_block_scan, i64 0, i64 %indvars.iv350
  %6 = load i8, ptr %arrayidx17, align 1
  %conv18 = zext i8 %6 to i32
  %and = and i32 %conv18, 3
  %shr = lshr i32 %conv18, 2
  %and22 = and i32 %shr, 3
  %7 = load i32, ptr %block_x, align 8
  %add23 = add nsw i32 %and, %7
  %8 = load i32, ptr %block_y, align 4
  %add24 = add nsw i32 %and22, %8
  %9 = load i32, ptr %block_y_aff, align 8
  %add25 = add nsw i32 %9, %and22
  %10 = load ptr, ptr %mv_info26, align 8
  %idxprom27 = sext i32 %add24 to i64
  %arrayidx28 = getelementptr inbounds ptr, ptr %10, i64 %idxprom27
  %11 = load ptr, ptr %arrayidx28, align 8
  %idxprom29 = sext i32 %add23 to i64
  %arrayidx30 = getelementptr inbounds %struct.pic_motion_params, ptr %11, i64 %idxprom29
  %12 = load ptr, ptr %4, align 8
  %mv_info32 = getelementptr inbounds i8, ptr %12, i64 152
  %13 = load ptr, ptr %mv_info32, align 8
  %idxprom33 = sext i32 %add25 to i64
  %arrayidx34 = getelementptr inbounds ptr, ptr %13, i64 %idxprom33
  %14 = load ptr, ptr %arrayidx34, align 8
  %arrayidx36 = getelementptr inbounds %struct.pic_motion_params, ptr %14, i64 %idxprom29
  %ref_idx37 = getelementptr inbounds i8, ptr %arrayidx36, i64 24
  %15 = load i8, ptr %ref_idx37, align 8
  %cmp40 = icmp eq i8 %15, -1
  %idxprom43 = zext i1 %cmp40 to i64
  %arrayidx44 = getelementptr inbounds [2 x i8], ptr %ref_idx37, i64 0, i64 %idxprom43
  %16 = load i8, ptr %arrayidx44, align 1
  %cmp47 = icmp eq i8 %16, -1
  br i1 %cmp47, label %if.then, label %for.cond56.preheader

for.cond56.preheader:                             ; preds = %for.body15
  %17 = load i32, ptr %num_ref_idx_active, align 8
  %18 = load i8, ptr %arrayidx60, align 1
  %conv61 = sext i8 %18 to i32
  %cond.i = tail call noundef i32 @llvm.smin.i32(i32 %17, i32 %conv61)
  %cmp62340 = icmp sgt i32 %cond.i, 0
  br i1 %cmp62340, label %for.body64.lr.ph, label %if.else80

for.body64.lr.ph:                                 ; preds = %for.cond56.preheader
  %19 = load ptr, ptr %arrayidx, align 8
  %arrayidx72 = getelementptr inbounds [2 x ptr], ptr %arrayidx36, i64 0, i64 %idxprom43
  %20 = load ptr, ptr %arrayidx72, align 8
  %wide.trip.count = zext nneg i32 %cond.i to i64
  br label %for.body64

if.then:                                          ; preds = %for.body15
  %mv = getelementptr inbounds i8, ptr %arrayidx30, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %mv, i8 0, i64 10, i1 false)
  br label %if.end159

for.body64:                                       ; preds = %for.body64.lr.ph, %if.else76
  %indvars.iv = phi i64 [ 0, %for.body64.lr.ph ], [ %indvars.iv.next, %if.else76 ]
  %arrayidx70 = getelementptr inbounds ptr, ptr %19, i64 %indvars.iv
  %21 = load ptr, ptr %arrayidx70, align 8
  %cmp73 = icmp eq ptr %21, %20
  br i1 %cmp73, label %if.else80.loopexit, label %if.else76

if.else76:                                        ; preds = %for.body64
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body64

for.end:                                          ; preds = %if.else76
  br i1 %cmp62340, label %if.then79, label %if.else80

if.then79:                                        ; preds = %for.end
  tail call void @error(ptr noundef nonnull @.str, i32 noundef -1111) #7
  %ref_idx160.phi.trans.insert = getelementptr inbounds i8, ptr %arrayidx30, i64 24
  %.pre = load i8, ptr %ref_idx160.phi.trans.insert, align 8
  %arrayidx168.phi.trans.insert = getelementptr inbounds i8, ptr %arrayidx30, i64 25
  %.pre370 = load i8, ptr %arrayidx168.phi.trans.insert, align 1
  br label %if.end159

if.else80.loopexit:                               ; preds = %for.body64
  %22 = trunc nuw nsw i64 %indvars.iv to i32
  br label %if.else80

if.else80:                                        ; preds = %for.cond56.preheader, %if.else80.loopexit, %for.end
  %mapped_idx.1336 = phi i32 [ -135792468, %for.end ], [ %22, %if.else80.loopexit ], [ 0, %for.cond56.preheader ]
  %idxprom84 = sext i32 %mapped_idx.1336 to i64
  %arrayidx85 = getelementptr inbounds [6 x [32 x i32]], ptr %mvscale, i64 0, i64 %conv, i64 %idxprom84
  %23 = load i32, ptr %arrayidx85, align 4
  %cmp86 = icmp eq i32 %23, 9999
  br i1 %cmp86, label %if.then95, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else80
  %24 = load ptr, ptr %arrayidx, align 8
  %arrayidx93 = getelementptr inbounds ptr, ptr %24, i64 %idxprom84
  %25 = load ptr, ptr %arrayidx93, align 8
  %is_long_term = getelementptr inbounds i8, ptr %25, i64 40
  %26 = load i8, ptr %is_long_term, align 8
  %tobool.not = icmp eq i8 %26, 0
  br i1 %tobool.not, label %if.else103, label %if.then95

if.then95:                                        ; preds = %lor.lhs.false, %if.else80
  %mv96 = getelementptr inbounds i8, ptr %arrayidx30, i64 16
  %mv98 = getelementptr inbounds i8, ptr %arrayidx36, i64 16
  %arrayidx100 = getelementptr inbounds [2 x %struct.MotionVector], ptr %mv98, i64 0, i64 %idxprom43
  %27 = load i32, ptr %arrayidx100, align 4
  store i32 %27, ptr %mv96, align 8
  %arrayidx102 = getelementptr inbounds i8, ptr %arrayidx30, i64 20
  store i32 0, ptr %arrayidx102, align 4
  br label %if.end152

if.else103:                                       ; preds = %lor.lhs.false
  %mv104 = getelementptr inbounds i8, ptr %arrayidx36, i64 16
  %arrayidx106 = getelementptr inbounds [2 x %struct.MotionVector], ptr %mv104, i64 0, i64 %idxprom43
  %28 = load i16, ptr %arrayidx106, align 4
  %conv107 = sext i16 %28 to i32
  %mul = mul nsw i32 %23, %conv107
  %add108 = add nsw i32 %mul, 128
  %shr109 = lshr i32 %add108, 8
  %conv110 = trunc i32 %shr109 to i16
  %mv111 = getelementptr inbounds i8, ptr %arrayidx30, i64 16
  store i16 %conv110, ptr %mv111, align 8
  %mv_y = getelementptr inbounds i8, ptr %arrayidx106, i64 2
  %29 = load i16, ptr %mv_y, align 2
  %conv117 = sext i16 %29 to i32
  %mul118 = mul nsw i32 %23, %conv117
  %add119 = add nsw i32 %mul118, 128
  %shr120 = lshr i32 %add119, 8
  %conv121 = trunc i32 %shr120 to i16
  %mv_y124 = getelementptr inbounds i8, ptr %arrayidx30, i64 18
  store i16 %conv121, ptr %mv_y124, align 2
  %30 = load i16, ptr %arrayidx106, align 4
  %sub = sub i16 %conv110, %30
  %arrayidx136 = getelementptr inbounds i8, ptr %arrayidx30, i64 20
  store i16 %sub, ptr %arrayidx136, align 4
  %31 = load i16, ptr %mv_y, align 2
  %conv148 = sub i16 %conv121, %31
  %mv_y151 = getelementptr inbounds i8, ptr %arrayidx30, i64 22
  store i16 %conv148, ptr %mv_y151, align 2
  br label %if.end152

if.end152:                                        ; preds = %if.else103, %if.then95
  %conv153 = trunc i32 %mapped_idx.1336 to i8
  %ref_idx154 = getelementptr inbounds i8, ptr %arrayidx30, i64 24
  store i8 %conv153, ptr %ref_idx154, align 8
  %arrayidx157 = getelementptr inbounds i8, ptr %arrayidx30, i64 25
  store i8 0, ptr %arrayidx157, align 1
  br label %if.end159

if.end159:                                        ; preds = %if.then79, %if.end152, %if.then
  %32 = phi i8 [ %.pre370, %if.then79 ], [ 0, %if.end152 ], [ 0, %if.then ]
  %33 = phi i8 [ %.pre, %if.then79 ], [ %conv153, %if.end152 ], [ 0, %if.then ]
  %idxprom163 = sext i8 %33 to i64
  %arrayidx164 = getelementptr inbounds ptr, ptr %3, i64 %idxprom163
  %34 = load ptr, ptr %arrayidx164, align 8
  store ptr %34, ptr %arrayidx30, align 8
  %idxprom170 = sext i8 %32 to i64
  %arrayidx171 = getelementptr inbounds ptr, ptr %4, i64 %idxprom170
  %35 = load ptr, ptr %arrayidx171, align 8
  %arrayidx173 = getelementptr inbounds i8, ptr %arrayidx30, i64 8
  store ptr %35, ptr %arrayidx173, align 8
  %indvars.iv.next351 = add nuw nsw i64 %indvars.iv350, 1
  %exitcond356.not = icmp eq i64 %indvars.iv.next351, %indvars.iv362
  br i1 %exitcond356.not, label %for.body180.preheader, label %for.body15

for.body180.preheader:                            ; preds = %if.end159
  %conv10 = sext i8 %5 to i32
  %arrayidx183 = getelementptr inbounds [16 x i8], ptr @decode_block_scan, i64 0, i64 %indvars.iv348
  %36 = load i8, ptr %arrayidx183, align 4
  %conv184 = zext i8 %36 to i32
  %and185 = and i32 %conv184, 3
  %shr190 = lshr i32 %conv184, 2
  %and191 = and i32 %shr190, 3
  tail call void @perform_mc(ptr noundef nonnull %currMB, i32 noundef %curr_plane, ptr noundef %dec_picture, i32 noundef %conv10, i32 noundef %and185, i32 noundef %and191, i32 noundef 4, i32 noundef 4) #7
  %indvars.iv.next358 = or disjoint i64 %indvars.iv348, 1
  %arrayidx183.1 = getelementptr inbounds [16 x i8], ptr @decode_block_scan, i64 0, i64 %indvars.iv.next358
  %37 = load i8, ptr %arrayidx183.1, align 1
  %conv184.1 = zext i8 %37 to i32
  %and185.1 = and i32 %conv184.1, 3
  %shr190.1 = lshr i32 %conv184.1, 2
  %and191.1 = and i32 %shr190.1, 3
  tail call void @perform_mc(ptr noundef nonnull %currMB, i32 noundef %curr_plane, ptr noundef %dec_picture, i32 noundef %conv10, i32 noundef %and185.1, i32 noundef %and191.1, i32 noundef 4, i32 noundef 4) #7
  %indvars.iv.next358.1 = or disjoint i64 %indvars.iv348, 2
  %arrayidx183.2 = getelementptr inbounds [16 x i8], ptr @decode_block_scan, i64 0, i64 %indvars.iv.next358.1
  %38 = load i8, ptr %arrayidx183.2, align 2
  %conv184.2 = zext i8 %38 to i32
  %and185.2 = and i32 %conv184.2, 3
  %shr190.2 = lshr i32 %conv184.2, 2
  %and191.2 = and i32 %shr190.2, 3
  tail call void @perform_mc(ptr noundef nonnull %currMB, i32 noundef %curr_plane, ptr noundef %dec_picture, i32 noundef %conv10, i32 noundef %and185.2, i32 noundef %and191.2, i32 noundef 4, i32 noundef 4) #7
  %indvars.iv.next358.2 = or disjoint i64 %indvars.iv348, 3
  %arrayidx183.3 = getelementptr inbounds [16 x i8], ptr @decode_block_scan, i64 0, i64 %indvars.iv.next358.2
  %39 = load i8, ptr %arrayidx183.3, align 1
  %conv184.3 = zext i8 %39 to i32
  %and185.3 = and i32 %conv184.3, 3
  %shr190.3 = lshr i32 %conv184.3, 2
  %and191.3 = and i32 %shr190.3, 3
  tail call void @perform_mc(ptr noundef nonnull %currMB, i32 noundef %curr_plane, ptr noundef %dec_picture, i32 noundef %conv10, i32 noundef %and185.3, i32 noundef %and191.3, i32 noundef 4, i32 noundef 4) #7
  %indvars.iv.next365 = add nuw nsw i64 %indvars.iv364, 1
  %indvars.iv.next349 = add nuw nsw i64 %indvars.iv348, 4
  %indvars.iv.next363 = add nuw nsw i64 %indvars.iv362, 4
  %exitcond369.not = icmp eq i64 %indvars.iv.next365, 4
  br i1 %exitcond369.not, label %for.end197, label %for.body

for.end197:                                       ; preds = %for.body180.preheader
  %cbp = getelementptr inbounds i8, ptr %currMB, i64 284
  %40 = load i32, ptr %cbp, align 4
  %cmp198 = icmp eq i32 %40, 0
  br i1 %cmp198, label %if.then200, label %if.else236

if.then200:                                       ; preds = %for.end197
  %pix_y = getelementptr inbounds i8, ptr %currMB, i64 48
  %41 = load i32, ptr %pix_y, align 8
  %idxprom201 = sext i32 %41 to i64
  %arrayidx202 = getelementptr inbounds ptr, ptr %currImg, i64 %idxprom201
  %mb_pred = getelementptr inbounds i8, ptr %0, i64 1248
  %42 = load ptr, ptr %mb_pred, align 8
  %idxprom203 = zext i32 %curr_plane to i64
  %arrayidx204 = getelementptr inbounds ptr, ptr %42, i64 %idxprom203
  %43 = load ptr, ptr %arrayidx204, align 8
  %pix_x = getelementptr inbounds i8, ptr %currMB, i64 44
  %44 = load i32, ptr %pix_x, align 4
  tail call void @copy_image_data_16x16(ptr noundef %arrayidx202, ptr noundef %43, i32 noundef %44, i32 noundef 0) #7
  %chroma_format_idc = getelementptr inbounds i8, ptr %dec_picture, i64 268
  %45 = load i32, ptr %chroma_format_idc, align 4
  switch i32 %45, label %if.then210 [
    i32 0, label %if.end237
    i32 3, label %if.end237
  ]

if.then210:                                       ; preds = %if.then200
  %imgUV = getelementptr inbounds i8, ptr %dec_picture, i64 136
  %46 = load ptr, ptr %imgUV, align 8
  %47 = load ptr, ptr %46, align 8
  %pix_c_y = getelementptr inbounds i8, ptr %currMB, i64 56
  %48 = load i32, ptr %pix_c_y, align 8
  %idxprom212 = sext i32 %48 to i64
  %arrayidx213 = getelementptr inbounds ptr, ptr %47, i64 %idxprom212
  %49 = load ptr, ptr %mb_pred, align 8
  %arrayidx215 = getelementptr inbounds i8, ptr %49, i64 8
  %50 = load ptr, ptr %arrayidx215, align 8
  %pix_c_x = getelementptr inbounds i8, ptr %currMB, i64 52
  %51 = load i32, ptr %pix_c_x, align 4
  %arrayidx216 = getelementptr inbounds i8, ptr %1, i64 849132
  %52 = load i32, ptr %arrayidx216, align 4
  %arrayidx220 = getelementptr inbounds i8, ptr %1, i64 849136
  %53 = load i32, ptr %arrayidx220, align 4
  tail call void @copy_image_data(ptr noundef %arrayidx213, ptr noundef %50, i32 noundef %51, i32 noundef 0, i32 noundef %52, i32 noundef %53) #7
  %54 = load ptr, ptr %imgUV, align 8
  %arrayidx222 = getelementptr inbounds i8, ptr %54, i64 8
  %55 = load ptr, ptr %arrayidx222, align 8
  %56 = load i32, ptr %pix_c_y, align 8
  %idxprom224 = sext i32 %56 to i64
  %arrayidx225 = getelementptr inbounds ptr, ptr %55, i64 %idxprom224
  %57 = load ptr, ptr %mb_pred, align 8
  %arrayidx227 = getelementptr inbounds i8, ptr %57, i64 16
  %58 = load ptr, ptr %arrayidx227, align 8
  %59 = load i32, ptr %pix_c_x, align 4
  %60 = load i32, ptr %arrayidx216, align 4
  %61 = load i32, ptr %arrayidx220, align 4
  tail call void @copy_image_data(ptr noundef %arrayidx225, ptr noundef %58, i32 noundef %59, i32 noundef 0, i32 noundef %60, i32 noundef %61) #7
  br label %if.end237

if.else236:                                       ; preds = %for.end197
  tail call void @iTransform(ptr noundef nonnull %currMB, i32 noundef %curr_plane, i32 noundef 0) #7
  %is_reset_coeff = getelementptr inbounds i8, ptr %0, i64 1240
  store i32 0, ptr %is_reset_coeff, align 8
  br label %if.end237

if.end237:                                        ; preds = %if.then200, %if.then200, %if.then210, %if.else236
  ret i32 1
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @mb_pred_b_d8x8spatial(ptr noundef %currMB, i32 noundef %curr_plane, ptr noundef %currImg, ptr noundef %dec_picture) local_unnamed_addr #0 {
entry:
  %l0_rFrame = alloca i8, align 1
  %l1_rFrame = alloca i8, align 1
  %pmvl0 = alloca %struct.MotionVector, align 4
  %pmvl1 = alloca %struct.MotionVector, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %l0_rFrame) #7
  store i8 -1, ptr %l0_rFrame, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %l1_rFrame) #7
  store i8 -1, ptr %l1_rFrame, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pmvl0) #7
  store i32 0, ptr %pmvl0, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pmvl1) #7
  store i32 0, ptr %pmvl1, align 4
  %0 = load ptr, ptr %currMB, align 8
  %p_Vid1 = getelementptr inbounds i8, ptr %currMB, i64 8
  %1 = load ptr, ptr %p_Vid1, align 8
  %list_offset2 = getelementptr inbounds i8, ptr %currMB, i64 114
  %2 = load i16, ptr %list_offset2, align 2
  %conv = sext i16 %2 to i64
  %listX = getelementptr inbounds i8, ptr %0, i64 264
  %arrayidx = getelementptr inbounds [6 x ptr], ptr %listX, i64 0, i64 %conv
  %3 = load ptr, ptr %arrayidx, align 8
  %add4 = add nsw i64 %conv, 1
  %arrayidx6 = getelementptr inbounds [6 x ptr], ptr %listX, i64 0, i64 %add4
  %4 = load ptr, ptr %arrayidx6, align 8
  tail call fastcc void @set_chroma_vector(ptr noundef nonnull %currMB)
  call void @prepare_direct_params(ptr noundef nonnull %currMB, ptr noundef %dec_picture, ptr noundef nonnull %pmvl0, ptr noundef nonnull %pmvl1, ptr noundef nonnull %l0_rFrame, ptr noundef nonnull %l1_rFrame) #7
  %5 = load i8, ptr %l0_rFrame, align 1
  %cmp = icmp eq i8 %5, 0
  %6 = load i8, ptr %l1_rFrame, align 1
  %cmp10 = icmp eq i8 %6, 0
  %or.cond = select i1 %cmp, i1 true, i1 %cmp10
  br i1 %or.cond, label %for.cond.preheader, label %if.else148

for.cond.preheader:                               ; preds = %entry
  %block_x = getelementptr inbounds i8, ptr %currMB, i64 32
  %block_y = getelementptr inbounds i8, ptr %currMB, i64 36
  %block_y_aff = getelementptr inbounds i8, ptr %currMB, i64 40
  %mv_info27 = getelementptr inbounds i8, ptr %dec_picture, i64 152
  br label %for.body

for.body:                                         ; preds = %for.cond.preheader, %if.end144
  %indvars.iv657 = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next658, %if.end144 ]
  %7 = shl nuw nsw i64 %indvars.iv657, 2
  %arrayidx15 = getelementptr inbounds [16 x i8], ptr @decode_block_scan, i64 0, i64 %7
  %8 = load i8, ptr %arrayidx15, align 4
  %conv16 = zext i8 %8 to i32
  %and = and i32 %conv16, 3
  %shr = lshr i32 %conv16, 2
  %and20 = and i32 %shr, 3
  %9 = load i32, ptr %block_x, align 8
  %add21 = add nsw i32 %and, %9
  %10 = load i32, ptr %block_y, align 4
  %add22 = add nsw i32 %and20, %10
  %11 = load ptr, ptr %4, align 8
  %12 = load i32, ptr %block_y_aff, align 8
  %add24 = add nsw i32 %12, %and20
  %call = call i32 @get_colocated_info_8x8(ptr noundef nonnull %currMB, ptr noundef %11, i32 noundef %add21, i32 noundef %add24) #7
  %cmp25 = icmp eq i32 %call, 0
  %13 = load ptr, ptr %mv_info27, align 8
  %idxprom28 = sext i32 %add22 to i64
  %arrayidx29 = getelementptr inbounds ptr, ptr %13, i64 %idxprom28
  %14 = load ptr, ptr %arrayidx29, align 8
  %idxprom30 = sext i32 %add21 to i64
  %arrayidx31 = getelementptr inbounds %struct.pic_motion_params, ptr %14, i64 %idxprom30
  %15 = load i8, ptr %l1_rFrame, align 1
  %cmp33 = icmp eq i8 %15, -1
  br i1 %cmp33, label %if.then35, label %if.else62

if.then35:                                        ; preds = %for.body
  br i1 %cmp25, label %if.then36, label %if.else

if.then36:                                        ; preds = %if.then35
  %16 = load ptr, ptr %3, align 8
  store ptr %16, ptr %arrayidx31, align 8
  %arrayidx40 = getelementptr inbounds i8, ptr %arrayidx31, i64 8
  %arrayidx46 = getelementptr inbounds i8, ptr %arrayidx31, i64 25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %arrayidx40, i8 0, i64 17, i1 false)
  store i8 -1, ptr %arrayidx46, align 1
  br label %if.end144

if.else:                                          ; preds = %if.then35
  %17 = load i8, ptr %l0_rFrame, align 1
  %idxprom48 = sext i8 %17 to i64
  %arrayidx49 = getelementptr inbounds ptr, ptr %3, i64 %idxprom48
  %18 = load ptr, ptr %arrayidx49, align 8
  store ptr %18, ptr %arrayidx31, align 8
  %arrayidx53 = getelementptr inbounds i8, ptr %arrayidx31, i64 8
  store ptr null, ptr %arrayidx53, align 8
  %mv54 = getelementptr inbounds i8, ptr %arrayidx31, i64 16
  %19 = load i32, ptr %pmvl0, align 4
  store i32 %19, ptr %mv54, align 8
  %arrayidx57 = getelementptr inbounds i8, ptr %arrayidx31, i64 20
  store i32 0, ptr %arrayidx57, align 4
  %ref_idx58 = getelementptr inbounds i8, ptr %arrayidx31, i64 24
  store i8 %17, ptr %ref_idx58, align 8
  %arrayidx61 = getelementptr inbounds i8, ptr %arrayidx31, i64 25
  store i8 -1, ptr %arrayidx61, align 1
  br label %if.end144

if.else62:                                        ; preds = %for.body
  %20 = load i8, ptr %l0_rFrame, align 1
  %cmp64 = icmp eq i8 %20, -1
  br i1 %cmp64, label %if.then66, label %if.else95

if.then66:                                        ; preds = %if.else62
  br i1 %cmp25, label %if.then68, label %if.else80

if.then68:                                        ; preds = %if.then66
  %21 = load ptr, ptr %4, align 8
  %arrayidx71 = getelementptr inbounds i8, ptr %arrayidx31, i64 8
  store ptr %21, ptr %arrayidx71, align 8
  %mv72 = getelementptr inbounds i8, ptr %arrayidx31, i64 16
  store i32 0, ptr %mv72, align 8
  %arrayidx75 = getelementptr inbounds i8, ptr %arrayidx31, i64 20
  store i32 0, ptr %arrayidx75, align 4
  %ref_idx76 = getelementptr inbounds i8, ptr %arrayidx31, i64 24
  store i8 -1, ptr %ref_idx76, align 8
  %arrayidx79 = getelementptr inbounds i8, ptr %arrayidx31, i64 25
  store i8 0, ptr %arrayidx79, align 1
  br label %if.end144

if.else80:                                        ; preds = %if.then66
  %idxprom82 = sext i8 %15 to i64
  %arrayidx83 = getelementptr inbounds ptr, ptr %4, i64 %idxprom82
  %22 = load ptr, ptr %arrayidx83, align 8
  %arrayidx85 = getelementptr inbounds i8, ptr %arrayidx31, i64 8
  store ptr %22, ptr %arrayidx85, align 8
  %mv86 = getelementptr inbounds i8, ptr %arrayidx31, i64 16
  store i32 0, ptr %mv86, align 8
  %arrayidx89 = getelementptr inbounds i8, ptr %arrayidx31, i64 20
  %23 = load i32, ptr %pmvl1, align 4
  store i32 %23, ptr %arrayidx89, align 4
  %ref_idx90 = getelementptr inbounds i8, ptr %arrayidx31, i64 24
  store i8 -1, ptr %ref_idx90, align 8
  %24 = load i8, ptr %l1_rFrame, align 1
  %arrayidx93 = getelementptr inbounds i8, ptr %arrayidx31, i64 25
  store i8 %24, ptr %arrayidx93, align 1
  br label %if.end144

if.else95:                                        ; preds = %if.else62
  %cmp97 = icmp eq i8 %20, 0
  %or.cond387 = select i1 %cmp97, i1 %cmp25, i1 false
  %idxprom110 = sext i8 %20 to i64
  %25 = load i32, ptr %pmvl0, align 4
  %.sink662.in.idx = select i1 %or.cond387, i64 0, i64 %idxprom110
  %.sink662.in = getelementptr inbounds ptr, ptr %3, i64 %.sink662.in.idx
  %.sink661 = select i1 %or.cond387, i32 0, i32 %25
  %.sink662 = load ptr, ptr %.sink662.in, align 8
  store ptr %.sink662, ptr %arrayidx31, align 8
  %26 = getelementptr inbounds i8, ptr %arrayidx31, i64 16
  store i32 %.sink661, ptr %26, align 8
  %27 = getelementptr inbounds i8, ptr %arrayidx31, i64 24
  store i8 %20, ptr %27, align 8
  %28 = load i8, ptr %l1_rFrame, align 1
  %cmp120 = icmp eq i8 %28, 0
  %or.cond388 = select i1 %cmp120, i1 %cmp25, i1 false
  br i1 %or.cond388, label %if.then124, label %if.else132

if.then124:                                       ; preds = %if.else95
  %29 = load ptr, ptr %4, align 8
  %arrayidx127 = getelementptr inbounds i8, ptr %arrayidx31, i64 8
  store ptr %29, ptr %arrayidx127, align 8
  %arrayidx129 = getelementptr inbounds i8, ptr %arrayidx31, i64 20
  store i32 0, ptr %arrayidx129, align 4
  %arrayidx131 = getelementptr inbounds i8, ptr %arrayidx31, i64 25
  store i8 0, ptr %arrayidx131, align 1
  br label %if.end144

if.else132:                                       ; preds = %if.else95
  %idxprom134 = sext i8 %28 to i64
  %arrayidx135 = getelementptr inbounds ptr, ptr %4, i64 %idxprom134
  %30 = load ptr, ptr %arrayidx135, align 8
  %arrayidx137 = getelementptr inbounds i8, ptr %arrayidx31, i64 8
  store ptr %30, ptr %arrayidx137, align 8
  %arrayidx139 = getelementptr inbounds i8, ptr %arrayidx31, i64 20
  %31 = load i32, ptr %pmvl1, align 4
  store i32 %31, ptr %arrayidx139, align 4
  %arrayidx141 = getelementptr inbounds i8, ptr %arrayidx31, i64 25
  store i8 %28, ptr %arrayidx141, align 1
  br label %if.end144

if.end144:                                        ; preds = %if.then124, %if.else132, %if.then68, %if.else80, %if.then36, %if.else
  %pred_dir.0 = phi i32 [ 0, %if.else ], [ 0, %if.then36 ], [ 1, %if.else80 ], [ 1, %if.then68 ], [ 2, %if.else132 ], [ 2, %if.then124 ]
  %32 = load ptr, ptr %mv_info27, align 8
  %arrayidx147 = getelementptr inbounds ptr, ptr %32, i64 %idxprom28
  %incdec.ptr.i = getelementptr inbounds i8, ptr %arrayidx147, i64 8
  %33 = load ptr, ptr %arrayidx147, align 8
  %add.i = add nsw i32 %add21, 1
  %idxprom.i = sext i32 %add.i to i64
  %arrayidx.i = getelementptr inbounds %struct.pic_motion_params, ptr %33, i64 %idxprom.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %arrayidx.i, ptr noundef nonnull readonly align 8 dereferenceable(32) %arrayidx31, i64 32, i1 false)
  %34 = load ptr, ptr %incdec.ptr.i, align 8
  %arrayidx2.i = getelementptr inbounds %struct.pic_motion_params, ptr %34, i64 %idxprom30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %arrayidx2.i, ptr noundef nonnull readonly align 8 dereferenceable(32) %arrayidx31, i64 32, i1 false)
  %35 = load ptr, ptr %incdec.ptr.i, align 8
  %arrayidx5.i = getelementptr inbounds %struct.pic_motion_params, ptr %35, i64 %idxprom.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %arrayidx5.i, ptr noundef nonnull readonly align 8 dereferenceable(32) %arrayidx31, i64 32, i1 false)
  call void @perform_mc(ptr noundef nonnull %currMB, i32 noundef %curr_plane, ptr noundef nonnull %dec_picture, i32 noundef %pred_dir.0, i32 noundef %and, i32 noundef %and20, i32 noundef 8, i32 noundef 8) #7
  %indvars.iv.next658 = add nuw nsw i64 %indvars.iv657, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next658, 4
  br i1 %exitcond.not, label %if.end345, label %for.body

if.else148:                                       ; preds = %entry
  %cmp150 = icmp slt i8 %5, 0
  %cmp154 = icmp slt i8 %6, 0
  %or.cond389 = select i1 %cmp150, i1 %cmp154, i1 false
  br i1 %or.cond389, label %for.body163.lr.ph, label %if.else199

for.body163.lr.ph:                                ; preds = %if.else148
  %block_y157 = getelementptr inbounds i8, ptr %currMB, i64 36
  %36 = load i32, ptr %block_y157, align 4
  %block_x164 = getelementptr inbounds i8, ptr %currMB, i64 32
  %mv_info171 = getelementptr inbounds i8, ptr %dec_picture, i64 152
  %37 = sext i32 %36 to i64
  br label %for.body170.lr.ph

for.body170.lr.ph:                                ; preds = %for.inc196, %for.body163.lr.ph
  %indvars.iv654 = phi i64 [ %37, %for.body163.lr.ph ], [ %indvars.iv.next655, %for.inc196 ]
  %38 = load i32, ptr %block_x164, align 8
  %39 = sext i32 %38 to i64
  br label %for.body170

for.body170:                                      ; preds = %for.body170.lr.ph, %for.body170
  %indvars.iv650 = phi i64 [ %39, %for.body170.lr.ph ], [ %indvars.iv.next651, %for.body170 ]
  %40 = load ptr, ptr %mv_info171, align 8
  %arrayidx173 = getelementptr inbounds ptr, ptr %40, i64 %indvars.iv654
  %41 = load ptr, ptr %arrayidx173, align 8
  %arrayidx175 = getelementptr inbounds %struct.pic_motion_params, ptr %41, i64 %indvars.iv650
  %42 = load ptr, ptr %3, align 8
  store ptr %42, ptr %arrayidx175, align 8
  %43 = load ptr, ptr %4, align 8
  %arrayidx181 = getelementptr inbounds i8, ptr %arrayidx175, i64 8
  store ptr %43, ptr %arrayidx181, align 8
  %mv182 = getelementptr inbounds i8, ptr %arrayidx175, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %mv182, i8 0, i64 10, i1 false)
  %44 = load ptr, ptr %mv_info171, align 8
  %arrayidx192 = getelementptr inbounds ptr, ptr %44, i64 %indvars.iv654
  %incdec.ptr.i572 = getelementptr inbounds i8, ptr %arrayidx192, i64 8
  %45 = load ptr, ptr %arrayidx192, align 8
  %46 = add nsw i64 %indvars.iv650, 1
  %arrayidx.i575 = getelementptr inbounds %struct.pic_motion_params, ptr %45, i64 %46
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %arrayidx.i575, ptr noundef nonnull readonly align 8 dereferenceable(32) %arrayidx175, i64 32, i1 false)
  %47 = load ptr, ptr %incdec.ptr.i572, align 8
  %arrayidx2.i577 = getelementptr inbounds %struct.pic_motion_params, ptr %47, i64 %indvars.iv650
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %arrayidx2.i577, ptr noundef nonnull readonly align 8 dereferenceable(32) %arrayidx175, i64 32, i1 false)
  %48 = load ptr, ptr %incdec.ptr.i572, align 8
  %arrayidx5.i578 = getelementptr inbounds %struct.pic_motion_params, ptr %48, i64 %46
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %arrayidx5.i578, ptr noundef nonnull readonly align 8 dereferenceable(32) %arrayidx175, i64 32, i1 false)
  %indvars.iv.next651 = add nsw i64 %indvars.iv650, 2
  %49 = load i32, ptr %block_x164, align 8
  %50 = add nsw i32 %49, 2
  %51 = sext i32 %50 to i64
  %cmp168 = icmp slt i64 %indvars.iv650, %51
  br i1 %cmp168, label %for.body170, label %for.inc196

for.inc196:                                       ; preds = %for.body170
  %.pre665 = load i32, ptr %block_y157, align 4
  %indvars.iv.next655 = add nsw i64 %indvars.iv654, 2
  %52 = add nsw i32 %.pre665, 2
  %53 = sext i32 %52 to i64
  %cmp161 = icmp slt i64 %indvars.iv654, %53
  br i1 %cmp161, label %for.body170.lr.ph, label %if.end344

if.else199:                                       ; preds = %if.else148
  %cmp201 = icmp eq i8 %6, -1
  br i1 %cmp201, label %for.body210.lr.ph, label %if.else247

for.body210.lr.ph:                                ; preds = %if.else199
  %block_y204 = getelementptr inbounds i8, ptr %currMB, i64 36
  %54 = load i32, ptr %block_y204, align 4
  %block_x211 = getelementptr inbounds i8, ptr %currMB, i64 32
  %mv_info218 = getelementptr inbounds i8, ptr %dec_picture, i64 152
  %55 = sext i32 %54 to i64
  br label %for.body217.lr.ph

for.body217.lr.ph:                                ; preds = %for.inc244, %for.body210.lr.ph
  %indvars.iv647 = phi i64 [ %55, %for.body210.lr.ph ], [ %indvars.iv.next648, %for.inc244 ]
  %56 = load i32, ptr %block_x211, align 8
  %57 = sext i32 %56 to i64
  br label %for.body217

for.body217:                                      ; preds = %for.body217.lr.ph, %for.body217
  %indvars.iv643 = phi i64 [ %57, %for.body217.lr.ph ], [ %indvars.iv.next644, %for.body217 ]
  %58 = load ptr, ptr %mv_info218, align 8
  %arrayidx220 = getelementptr inbounds ptr, ptr %58, i64 %indvars.iv647
  %59 = load ptr, ptr %arrayidx220, align 8
  %arrayidx222 = getelementptr inbounds %struct.pic_motion_params, ptr %59, i64 %indvars.iv643
  %60 = load i8, ptr %l0_rFrame, align 1
  %idxprom224 = sext i8 %60 to i64
  %arrayidx225 = getelementptr inbounds ptr, ptr %3, i64 %idxprom224
  %61 = load ptr, ptr %arrayidx225, align 8
  store ptr %61, ptr %arrayidx222, align 8
  %arrayidx229 = getelementptr inbounds i8, ptr %arrayidx222, i64 8
  store ptr null, ptr %arrayidx229, align 8
  %mv230 = getelementptr inbounds i8, ptr %arrayidx222, i64 16
  %62 = load i32, ptr %pmvl0, align 4
  store i32 %62, ptr %mv230, align 8
  %arrayidx233 = getelementptr inbounds i8, ptr %arrayidx222, i64 20
  store i32 0, ptr %arrayidx233, align 4
  %ref_idx234 = getelementptr inbounds i8, ptr %arrayidx222, i64 24
  store i8 %60, ptr %ref_idx234, align 8
  %arrayidx237 = getelementptr inbounds i8, ptr %arrayidx222, i64 25
  store i8 -1, ptr %arrayidx237, align 1
  %63 = load ptr, ptr %mv_info218, align 8
  %arrayidx240 = getelementptr inbounds ptr, ptr %63, i64 %indvars.iv647
  %incdec.ptr.i579 = getelementptr inbounds i8, ptr %arrayidx240, i64 8
  %64 = load ptr, ptr %arrayidx240, align 8
  %65 = add nsw i64 %indvars.iv643, 1
  %arrayidx.i582 = getelementptr inbounds %struct.pic_motion_params, ptr %64, i64 %65
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %arrayidx.i582, ptr noundef nonnull readonly align 8 dereferenceable(32) %arrayidx222, i64 32, i1 false)
  %66 = load ptr, ptr %incdec.ptr.i579, align 8
  %arrayidx2.i584 = getelementptr inbounds %struct.pic_motion_params, ptr %66, i64 %indvars.iv643
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %arrayidx2.i584, ptr noundef nonnull readonly align 8 dereferenceable(32) %arrayidx222, i64 32, i1 false)
  %67 = load ptr, ptr %incdec.ptr.i579, align 8
  %arrayidx5.i585 = getelementptr inbounds %struct.pic_motion_params, ptr %67, i64 %65
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %arrayidx5.i585, ptr noundef nonnull readonly align 8 dereferenceable(32) %arrayidx222, i64 32, i1 false)
  %indvars.iv.next644 = add nsw i64 %indvars.iv643, 2
  %68 = load i32, ptr %block_x211, align 8
  %69 = add nsw i32 %68, 2
  %70 = sext i32 %69 to i64
  %cmp215 = icmp slt i64 %indvars.iv643, %70
  br i1 %cmp215, label %for.body217, label %for.inc244

for.inc244:                                       ; preds = %for.body217
  %.pre664 = load i32, ptr %block_y204, align 4
  %indvars.iv.next648 = add nsw i64 %indvars.iv647, 2
  %71 = add nsw i32 %.pre664, 2
  %72 = sext i32 %71 to i64
  %cmp208 = icmp slt i64 %indvars.iv647, %72
  br i1 %cmp208, label %for.body217.lr.ph, label %if.end344

if.else247:                                       ; preds = %if.else199
  %cmp249 = icmp eq i8 %5, -1
  %block_y252 = getelementptr inbounds i8, ptr %currMB, i64 36
  %73 = load i32, ptr %block_y252, align 4
  %block_x259 = getelementptr inbounds i8, ptr %currMB, i64 32
  %mv_info266 = getelementptr inbounds i8, ptr %dec_picture, i64 152
  %74 = sext i32 %73 to i64
  br i1 %cmp249, label %for.body265.lr.ph, label %for.body309.lr.ph

for.body265.lr.ph:                                ; preds = %if.else247, %for.inc292
  %75 = phi i8 [ %83, %for.inc292 ], [ %6, %if.else247 ]
  %indvars.iv640 = phi i64 [ %indvars.iv.next641, %for.inc292 ], [ %74, %if.else247 ]
  %76 = load i32, ptr %block_x259, align 8
  %77 = sext i32 %76 to i64
  br label %for.body265

for.body265:                                      ; preds = %for.body265.lr.ph, %for.body265
  %78 = phi i8 [ %75, %for.body265.lr.ph ], [ %83, %for.body265 ]
  %indvars.iv636 = phi i64 [ %77, %for.body265.lr.ph ], [ %indvars.iv.next637, %for.body265 ]
  %79 = load ptr, ptr %mv_info266, align 8
  %arrayidx268 = getelementptr inbounds ptr, ptr %79, i64 %indvars.iv640
  %80 = load ptr, ptr %arrayidx268, align 8
  %arrayidx270 = getelementptr inbounds %struct.pic_motion_params, ptr %80, i64 %indvars.iv636
  store ptr null, ptr %arrayidx270, align 8
  %idxprom274 = sext i8 %78 to i64
  %arrayidx275 = getelementptr inbounds ptr, ptr %4, i64 %idxprom274
  %81 = load ptr, ptr %arrayidx275, align 8
  %arrayidx277 = getelementptr inbounds i8, ptr %arrayidx270, i64 8
  store ptr %81, ptr %arrayidx277, align 8
  %mv278 = getelementptr inbounds i8, ptr %arrayidx270, i64 16
  store i32 0, ptr %mv278, align 8
  %arrayidx281 = getelementptr inbounds i8, ptr %arrayidx270, i64 20
  %82 = load i32, ptr %pmvl1, align 4
  store i32 %82, ptr %arrayidx281, align 4
  %ref_idx282 = getelementptr inbounds i8, ptr %arrayidx270, i64 24
  store i8 -1, ptr %ref_idx282, align 8
  %83 = load i8, ptr %l1_rFrame, align 1
  %arrayidx285 = getelementptr inbounds i8, ptr %arrayidx270, i64 25
  store i8 %83, ptr %arrayidx285, align 1
  %84 = load ptr, ptr %mv_info266, align 8
  %arrayidx288 = getelementptr inbounds ptr, ptr %84, i64 %indvars.iv640
  %incdec.ptr.i586 = getelementptr inbounds i8, ptr %arrayidx288, i64 8
  %85 = load ptr, ptr %arrayidx288, align 8
  %86 = add nsw i64 %indvars.iv636, 1
  %arrayidx.i589 = getelementptr inbounds %struct.pic_motion_params, ptr %85, i64 %86
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %arrayidx.i589, ptr noundef nonnull readonly align 8 dereferenceable(32) %arrayidx270, i64 32, i1 false)
  %87 = load ptr, ptr %incdec.ptr.i586, align 8
  %arrayidx2.i591 = getelementptr inbounds %struct.pic_motion_params, ptr %87, i64 %indvars.iv636
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %arrayidx2.i591, ptr noundef nonnull readonly align 8 dereferenceable(32) %arrayidx270, i64 32, i1 false)
  %88 = load ptr, ptr %incdec.ptr.i586, align 8
  %arrayidx5.i592 = getelementptr inbounds %struct.pic_motion_params, ptr %88, i64 %86
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %arrayidx5.i592, ptr noundef nonnull readonly align 8 dereferenceable(32) %arrayidx270, i64 32, i1 false)
  %indvars.iv.next637 = add nsw i64 %indvars.iv636, 2
  %89 = load i32, ptr %block_x259, align 8
  %90 = add nsw i32 %89, 2
  %91 = sext i32 %90 to i64
  %cmp263 = icmp slt i64 %indvars.iv636, %91
  br i1 %cmp263, label %for.body265, label %for.inc292

for.inc292:                                       ; preds = %for.body265
  %.pre663 = load i32, ptr %block_y252, align 4
  %indvars.iv.next641 = add nsw i64 %indvars.iv640, 2
  %92 = add nsw i32 %.pre663, 2
  %93 = sext i32 %92 to i64
  %cmp256 = icmp slt i64 %indvars.iv640, %93
  br i1 %cmp256, label %for.body265.lr.ph, label %if.end344

for.body309.lr.ph:                                ; preds = %if.else247, %for.inc339
  %94 = phi i8 [ %105, %for.inc339 ], [ %6, %if.else247 ]
  %indvars.iv633 = phi i64 [ %indvars.iv.next634, %for.inc339 ], [ %74, %if.else247 ]
  %95 = load i32, ptr %block_x259, align 8
  %96 = sext i32 %95 to i64
  br label %for.body309

for.body309:                                      ; preds = %for.body309.lr.ph, %for.body309
  %97 = phi i8 [ %94, %for.body309.lr.ph ], [ %105, %for.body309 ]
  %indvars.iv = phi i64 [ %96, %for.body309.lr.ph ], [ %indvars.iv.next, %for.body309 ]
  %98 = load ptr, ptr %mv_info266, align 8
  %arrayidx312 = getelementptr inbounds ptr, ptr %98, i64 %indvars.iv633
  %99 = load ptr, ptr %arrayidx312, align 8
  %arrayidx314 = getelementptr inbounds %struct.pic_motion_params, ptr %99, i64 %indvars.iv
  %100 = load i8, ptr %l0_rFrame, align 1
  %idxprom316 = sext i8 %100 to i64
  %arrayidx317 = getelementptr inbounds ptr, ptr %3, i64 %idxprom316
  %101 = load ptr, ptr %arrayidx317, align 8
  store ptr %101, ptr %arrayidx314, align 8
  %idxprom321 = sext i8 %97 to i64
  %arrayidx322 = getelementptr inbounds ptr, ptr %4, i64 %idxprom321
  %102 = load ptr, ptr %arrayidx322, align 8
  %arrayidx324 = getelementptr inbounds i8, ptr %arrayidx314, i64 8
  store ptr %102, ptr %arrayidx324, align 8
  %mv325 = getelementptr inbounds i8, ptr %arrayidx314, i64 16
  %103 = load i32, ptr %pmvl0, align 4
  store i32 %103, ptr %mv325, align 8
  %arrayidx328 = getelementptr inbounds i8, ptr %arrayidx314, i64 20
  %104 = load i32, ptr %pmvl1, align 4
  store i32 %104, ptr %arrayidx328, align 4
  %ref_idx329 = getelementptr inbounds i8, ptr %arrayidx314, i64 24
  store i8 %100, ptr %ref_idx329, align 8
  %105 = load i8, ptr %l1_rFrame, align 1
  %arrayidx332 = getelementptr inbounds i8, ptr %arrayidx314, i64 25
  store i8 %105, ptr %arrayidx332, align 1
  %106 = load ptr, ptr %mv_info266, align 8
  %arrayidx335 = getelementptr inbounds ptr, ptr %106, i64 %indvars.iv633
  %incdec.ptr.i593 = getelementptr inbounds i8, ptr %arrayidx335, i64 8
  %107 = load ptr, ptr %arrayidx335, align 8
  %108 = add nsw i64 %indvars.iv, 1
  %arrayidx.i596 = getelementptr inbounds %struct.pic_motion_params, ptr %107, i64 %108
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %arrayidx.i596, ptr noundef nonnull readonly align 8 dereferenceable(32) %arrayidx314, i64 32, i1 false)
  %109 = load ptr, ptr %incdec.ptr.i593, align 8
  %arrayidx2.i598 = getelementptr inbounds %struct.pic_motion_params, ptr %109, i64 %indvars.iv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %arrayidx2.i598, ptr noundef nonnull readonly align 8 dereferenceable(32) %arrayidx314, i64 32, i1 false)
  %110 = load ptr, ptr %incdec.ptr.i593, align 8
  %arrayidx5.i599 = getelementptr inbounds %struct.pic_motion_params, ptr %110, i64 %108
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %arrayidx5.i599, ptr noundef nonnull readonly align 8 dereferenceable(32) %arrayidx314, i64 32, i1 false)
  %indvars.iv.next = add nsw i64 %indvars.iv, 2
  %111 = load i32, ptr %block_x259, align 8
  %112 = add nsw i32 %111, 2
  %113 = sext i32 %112 to i64
  %cmp307 = icmp slt i64 %indvars.iv, %113
  br i1 %cmp307, label %for.body309, label %for.inc339

for.inc339:                                       ; preds = %for.body309
  %.pre = load i32, ptr %block_y252, align 4
  %indvars.iv.next634 = add nsw i64 %indvars.iv633, 2
  %114 = add nsw i32 %.pre, 2
  %115 = sext i32 %114 to i64
  %cmp300 = icmp slt i64 %indvars.iv633, %115
  br i1 %cmp300, label %for.body309.lr.ph, label %if.end344

if.end344:                                        ; preds = %for.inc339, %for.inc292, %for.inc244, %for.inc196
  %pred_dir.1 = phi i32 [ 2, %for.inc196 ], [ 0, %for.inc244 ], [ 1, %for.inc292 ], [ 2, %for.inc339 ]
  call void @perform_mc(ptr noundef nonnull %currMB, i32 noundef %curr_plane, ptr noundef nonnull %dec_picture, i32 noundef %pred_dir.1, i32 noundef 0, i32 noundef 0, i32 noundef 16, i32 noundef 16) #7
  br label %if.end345

if.end345:                                        ; preds = %if.end144, %if.end344
  %cbp = getelementptr inbounds i8, ptr %currMB, i64 284
  %116 = load i32, ptr %cbp, align 4
  %cmp346 = icmp eq i32 %116, 0
  br i1 %cmp346, label %if.then348, label %if.else385

if.then348:                                       ; preds = %if.end345
  %pix_y = getelementptr inbounds i8, ptr %currMB, i64 48
  %117 = load i32, ptr %pix_y, align 8
  %idxprom349 = sext i32 %117 to i64
  %arrayidx350 = getelementptr inbounds ptr, ptr %currImg, i64 %idxprom349
  %mb_pred = getelementptr inbounds i8, ptr %0, i64 1248
  %118 = load ptr, ptr %mb_pred, align 8
  %idxprom351 = zext i32 %curr_plane to i64
  %arrayidx352 = getelementptr inbounds ptr, ptr %118, i64 %idxprom351
  %119 = load ptr, ptr %arrayidx352, align 8
  %pix_x = getelementptr inbounds i8, ptr %currMB, i64 44
  %120 = load i32, ptr %pix_x, align 4
  call void @copy_image_data_16x16(ptr noundef %arrayidx350, ptr noundef %119, i32 noundef %120, i32 noundef 0) #7
  %chroma_format_idc = getelementptr inbounds i8, ptr %dec_picture, i64 268
  %121 = load i32, ptr %chroma_format_idc, align 4
  switch i32 %121, label %if.then359 [
    i32 0, label %if.end386
    i32 3, label %if.end386
  ]

if.then359:                                       ; preds = %if.then348
  %imgUV = getelementptr inbounds i8, ptr %dec_picture, i64 136
  %122 = load ptr, ptr %imgUV, align 8
  %123 = load ptr, ptr %122, align 8
  %pix_c_y = getelementptr inbounds i8, ptr %currMB, i64 56
  %124 = load i32, ptr %pix_c_y, align 8
  %idxprom361 = sext i32 %124 to i64
  %arrayidx362 = getelementptr inbounds ptr, ptr %123, i64 %idxprom361
  %125 = load ptr, ptr %mb_pred, align 8
  %arrayidx364 = getelementptr inbounds i8, ptr %125, i64 8
  %126 = load ptr, ptr %arrayidx364, align 8
  %pix_c_x = getelementptr inbounds i8, ptr %currMB, i64 52
  %127 = load i32, ptr %pix_c_x, align 4
  %arrayidx365 = getelementptr inbounds i8, ptr %1, i64 849132
  %128 = load i32, ptr %arrayidx365, align 4
  %arrayidx369 = getelementptr inbounds i8, ptr %1, i64 849136
  %129 = load i32, ptr %arrayidx369, align 4
  call void @copy_image_data(ptr noundef %arrayidx362, ptr noundef %126, i32 noundef %127, i32 noundef 0, i32 noundef %128, i32 noundef %129) #7
  %130 = load ptr, ptr %imgUV, align 8
  %arrayidx371 = getelementptr inbounds i8, ptr %130, i64 8
  %131 = load ptr, ptr %arrayidx371, align 8
  %132 = load i32, ptr %pix_c_y, align 8
  %idxprom373 = sext i32 %132 to i64
  %arrayidx374 = getelementptr inbounds ptr, ptr %131, i64 %idxprom373
  %133 = load ptr, ptr %mb_pred, align 8
  %arrayidx376 = getelementptr inbounds i8, ptr %133, i64 16
  %134 = load ptr, ptr %arrayidx376, align 8
  %135 = load i32, ptr %pix_c_x, align 4
  %136 = load i32, ptr %arrayidx365, align 4
  %137 = load i32, ptr %arrayidx369, align 4
  call void @copy_image_data(ptr noundef %arrayidx374, ptr noundef %134, i32 noundef %135, i32 noundef 0, i32 noundef %136, i32 noundef %137) #7
  br label %if.end386

if.else385:                                       ; preds = %if.end345
  call void @iTransform(ptr noundef nonnull %currMB, i32 noundef %curr_plane, i32 noundef 0) #7
  %is_reset_coeff = getelementptr inbounds i8, ptr %0, i64 1240
  store i32 0, ptr %is_reset_coeff, align 8
  br label %if.end386

if.end386:                                        ; preds = %if.then348, %if.then348, %if.then359, %if.else385
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pmvl1) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pmvl0) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %l1_rFrame) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %l0_rFrame) #7
  ret i32 1
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

declare void @prepare_direct_params(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @get_colocated_info_8x8(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @mb_pred_b_d4x4spatial(ptr noundef %currMB, i32 noundef %curr_plane, ptr noundef %currImg, ptr noundef %dec_picture) local_unnamed_addr #0 {
entry:
  %l0_rFrame = alloca i8, align 1
  %l1_rFrame = alloca i8, align 1
  %pmvl0 = alloca %struct.MotionVector, align 4
  %pmvl1 = alloca %struct.MotionVector, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %l0_rFrame) #7
  store i8 -1, ptr %l0_rFrame, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %l1_rFrame) #7
  store i8 -1, ptr %l1_rFrame, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pmvl0) #7
  store i32 0, ptr %pmvl0, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pmvl1) #7
  store i32 0, ptr %pmvl1, align 4
  %0 = load ptr, ptr %currMB, align 8
  %p_Vid1 = getelementptr inbounds i8, ptr %currMB, i64 8
  %1 = load ptr, ptr %p_Vid1, align 8
  %list_offset2 = getelementptr inbounds i8, ptr %currMB, i64 114
  %2 = load i16, ptr %list_offset2, align 2
  %conv = sext i16 %2 to i64
  %listX = getelementptr inbounds i8, ptr %0, i64 264
  %arrayidx = getelementptr inbounds [6 x ptr], ptr %listX, i64 0, i64 %conv
  %3 = load ptr, ptr %arrayidx, align 8
  %add4 = add nsw i64 %conv, 1
  %arrayidx6 = getelementptr inbounds [6 x ptr], ptr %listX, i64 0, i64 %add4
  %4 = load ptr, ptr %arrayidx6, align 8
  tail call fastcc void @set_chroma_vector(ptr noundef nonnull %currMB)
  call void @prepare_direct_params(ptr noundef nonnull %currMB, ptr noundef %dec_picture, ptr noundef nonnull %pmvl0, ptr noundef nonnull %pmvl1, ptr noundef nonnull %l0_rFrame, ptr noundef nonnull %l1_rFrame) #7
  %block_x = getelementptr inbounds i8, ptr %currMB, i64 32
  %block_y = getelementptr inbounds i8, ptr %currMB, i64 36
  %mv_info22 = getelementptr inbounds i8, ptr %dec_picture, i64 152
  %block_y_aff = getelementptr inbounds i8, ptr %currMB, i64 40
  br label %for.body

for.body:                                         ; preds = %entry, %for.cond241.preheader
  %indvars.iv443 = phi i64 [ 4, %entry ], [ %indvars.iv.next444, %for.cond241.preheader ]
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.cond241.preheader ]
  %block8x8.0432 = phi i32 [ 0, %entry ], [ %inc260, %for.cond241.preheader ]
  br label %for.body12

for.cond241.preheader:                            ; preds = %if.end240
  %arrayidx247 = getelementptr inbounds [16 x i8], ptr @decode_block_scan, i64 0, i64 %indvars.iv
  %5 = load i8, ptr %arrayidx247, align 4
  %conv248 = zext i8 %5 to i32
  %and249 = and i32 %conv248, 3
  %shr254 = lshr i32 %conv248, 2
  %and255 = and i32 %shr254, 3
  call void @perform_mc(ptr noundef nonnull %currMB, i32 noundef %curr_plane, ptr noundef nonnull %dec_picture, i32 noundef %pred_dir.3, i32 noundef %and249, i32 noundef %and255, i32 noundef 4, i32 noundef 4) #7
  %indvars.iv.next439 = or disjoint i64 %indvars.iv, 1
  %arrayidx247.1 = getelementptr inbounds [16 x i8], ptr @decode_block_scan, i64 0, i64 %indvars.iv.next439
  %6 = load i8, ptr %arrayidx247.1, align 1
  %conv248.1 = zext i8 %6 to i32
  %and249.1 = and i32 %conv248.1, 3
  %shr254.1 = lshr i32 %conv248.1, 2
  %and255.1 = and i32 %shr254.1, 3
  call void @perform_mc(ptr noundef nonnull %currMB, i32 noundef %curr_plane, ptr noundef nonnull %dec_picture, i32 noundef %pred_dir.3, i32 noundef %and249.1, i32 noundef %and255.1, i32 noundef 4, i32 noundef 4) #7
  %indvars.iv.next439.1 = or disjoint i64 %indvars.iv, 2
  %arrayidx247.2 = getelementptr inbounds [16 x i8], ptr @decode_block_scan, i64 0, i64 %indvars.iv.next439.1
  %7 = load i8, ptr %arrayidx247.2, align 2
  %conv248.2 = zext i8 %7 to i32
  %and249.2 = and i32 %conv248.2, 3
  %shr254.2 = lshr i32 %conv248.2, 2
  %and255.2 = and i32 %shr254.2, 3
  call void @perform_mc(ptr noundef nonnull %currMB, i32 noundef %curr_plane, ptr noundef nonnull %dec_picture, i32 noundef %pred_dir.3, i32 noundef %and249.2, i32 noundef %and255.2, i32 noundef 4, i32 noundef 4) #7
  %indvars.iv.next439.2 = or disjoint i64 %indvars.iv, 3
  %arrayidx247.3 = getelementptr inbounds [16 x i8], ptr @decode_block_scan, i64 0, i64 %indvars.iv.next439.2
  %8 = load i8, ptr %arrayidx247.3, align 1
  %conv248.3 = zext i8 %8 to i32
  %and249.3 = and i32 %conv248.3, 3
  %shr254.3 = lshr i32 %conv248.3, 2
  %and255.3 = and i32 %shr254.3, 3
  call void @perform_mc(ptr noundef nonnull %currMB, i32 noundef %curr_plane, ptr noundef nonnull %dec_picture, i32 noundef %pred_dir.3, i32 noundef %and249.3, i32 noundef %and255.3, i32 noundef 4, i32 noundef 4) #7
  %inc260 = add nuw nsw i32 %block8x8.0432, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4
  %indvars.iv.next444 = add nuw nsw i64 %indvars.iv443, 4
  %exitcond446.not = icmp eq i32 %inc260, 4
  br i1 %exitcond446.not, label %for.end261, label %for.body

for.body12:                                       ; preds = %for.body, %if.end240
  %indvars.iv433 = phi i64 [ %indvars.iv, %for.body ], [ %indvars.iv.next434, %if.end240 ]
  %arrayidx14 = getelementptr inbounds [16 x i8], ptr @decode_block_scan, i64 0, i64 %indvars.iv433
  %9 = load i8, ptr %arrayidx14, align 1
  %conv15 = zext i8 %9 to i32
  %and = and i32 %conv15, 3
  %shr = lshr i32 %conv15, 2
  %and19 = and i32 %shr, 3
  %10 = load i32, ptr %block_x, align 8
  %add20 = add nsw i32 %and, %10
  %11 = load i32, ptr %block_y, align 4
  %add21 = add nsw i32 %and19, %11
  %12 = load ptr, ptr %mv_info22, align 8
  %idxprom23 = sext i32 %add21 to i64
  %arrayidx24 = getelementptr inbounds ptr, ptr %12, i64 %idxprom23
  %13 = load ptr, ptr %arrayidx24, align 8
  %idxprom25 = sext i32 %add20 to i64
  %arrayidx26 = getelementptr inbounds %struct.pic_motion_params, ptr %13, i64 %idxprom25
  %14 = load i8, ptr %l0_rFrame, align 1
  %cmp28 = icmp eq i8 %14, 0
  %15 = load i8, ptr %l1_rFrame, align 1
  %cmp31 = icmp eq i8 %15, 0
  %or.cond = select i1 %cmp28, i1 true, i1 %cmp31
  br i1 %or.cond, label %if.then, label %if.else150

if.then:                                          ; preds = %for.body12
  %16 = load ptr, ptr %4, align 8
  %17 = load i32, ptr %block_y_aff, align 8
  %add34 = add nsw i32 %17, %and19
  %call = call i32 @get_colocated_info_4x4(ptr noundef nonnull %currMB, ptr noundef %16, i32 noundef %add20, i32 noundef %add34) #7
  %cmp35 = icmp eq i32 %call, 0
  %18 = load i8, ptr %l1_rFrame, align 1
  %cmp38 = icmp eq i8 %18, -1
  br i1 %cmp38, label %if.then40, label %if.else67

if.then40:                                        ; preds = %if.then
  br i1 %cmp35, label %if.then41, label %if.else

if.then41:                                        ; preds = %if.then40
  %19 = load ptr, ptr %3, align 8
  store ptr %19, ptr %arrayidx26, align 8
  %arrayidx45 = getelementptr inbounds i8, ptr %arrayidx26, i64 8
  %arrayidx51 = getelementptr inbounds i8, ptr %arrayidx26, i64 25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %arrayidx45, i8 0, i64 17, i1 false)
  store i8 -1, ptr %arrayidx51, align 1
  br label %if.end240

if.else:                                          ; preds = %if.then40
  %20 = load i8, ptr %l0_rFrame, align 1
  %idxprom53 = sext i8 %20 to i64
  %arrayidx54 = getelementptr inbounds ptr, ptr %3, i64 %idxprom53
  %21 = load ptr, ptr %arrayidx54, align 8
  store ptr %21, ptr %arrayidx26, align 8
  %arrayidx58 = getelementptr inbounds i8, ptr %arrayidx26, i64 8
  store ptr null, ptr %arrayidx58, align 8
  %mv59 = getelementptr inbounds i8, ptr %arrayidx26, i64 16
  %22 = load i32, ptr %pmvl0, align 4
  store i32 %22, ptr %mv59, align 8
  %arrayidx62 = getelementptr inbounds i8, ptr %arrayidx26, i64 20
  store i32 0, ptr %arrayidx62, align 4
  %ref_idx63 = getelementptr inbounds i8, ptr %arrayidx26, i64 24
  store i8 %20, ptr %ref_idx63, align 8
  %arrayidx66 = getelementptr inbounds i8, ptr %arrayidx26, i64 25
  store i8 -1, ptr %arrayidx66, align 1
  br label %if.end240

if.else67:                                        ; preds = %if.then
  %23 = load i8, ptr %l0_rFrame, align 1
  %cmp69 = icmp eq i8 %23, -1
  br i1 %cmp69, label %if.then71, label %if.else100

if.then71:                                        ; preds = %if.else67
  br i1 %cmp35, label %if.then73, label %if.else85

if.then73:                                        ; preds = %if.then71
  %24 = load ptr, ptr %4, align 8
  %arrayidx76 = getelementptr inbounds i8, ptr %arrayidx26, i64 8
  store ptr %24, ptr %arrayidx76, align 8
  %mv77 = getelementptr inbounds i8, ptr %arrayidx26, i64 16
  store i32 0, ptr %mv77, align 8
  %arrayidx80 = getelementptr inbounds i8, ptr %arrayidx26, i64 20
  store i32 0, ptr %arrayidx80, align 4
  %ref_idx81 = getelementptr inbounds i8, ptr %arrayidx26, i64 24
  store i8 -1, ptr %ref_idx81, align 8
  %arrayidx84 = getelementptr inbounds i8, ptr %arrayidx26, i64 25
  store i8 0, ptr %arrayidx84, align 1
  br label %if.end240

if.else85:                                        ; preds = %if.then71
  %idxprom87 = sext i8 %18 to i64
  %arrayidx88 = getelementptr inbounds ptr, ptr %4, i64 %idxprom87
  %25 = load ptr, ptr %arrayidx88, align 8
  %arrayidx90 = getelementptr inbounds i8, ptr %arrayidx26, i64 8
  store ptr %25, ptr %arrayidx90, align 8
  %mv91 = getelementptr inbounds i8, ptr %arrayidx26, i64 16
  store i32 0, ptr %mv91, align 8
  %arrayidx94 = getelementptr inbounds i8, ptr %arrayidx26, i64 20
  %26 = load i32, ptr %pmvl1, align 4
  store i32 %26, ptr %arrayidx94, align 4
  %ref_idx95 = getelementptr inbounds i8, ptr %arrayidx26, i64 24
  store i8 -1, ptr %ref_idx95, align 8
  %27 = load i8, ptr %l1_rFrame, align 1
  %arrayidx98 = getelementptr inbounds i8, ptr %arrayidx26, i64 25
  store i8 %27, ptr %arrayidx98, align 1
  br label %if.end240

if.else100:                                       ; preds = %if.else67
  %cmp102 = icmp eq i8 %23, 0
  %or.cond303 = select i1 %cmp102, i1 %cmp35, i1 false
  %idxprom115 = sext i8 %23 to i64
  %28 = load i32, ptr %pmvl0, align 4
  %.sink448.in.idx = select i1 %or.cond303, i64 0, i64 %idxprom115
  %.sink448.in = getelementptr inbounds ptr, ptr %3, i64 %.sink448.in.idx
  %.sink447 = select i1 %or.cond303, i32 0, i32 %28
  %.sink448 = load ptr, ptr %.sink448.in, align 8
  store ptr %.sink448, ptr %arrayidx26, align 8
  %29 = getelementptr inbounds i8, ptr %arrayidx26, i64 16
  store i32 %.sink447, ptr %29, align 8
  %30 = getelementptr inbounds i8, ptr %arrayidx26, i64 24
  store i8 %23, ptr %30, align 8
  %31 = load i8, ptr %l1_rFrame, align 1
  %cmp125 = icmp eq i8 %31, 0
  %or.cond304 = select i1 %cmp125, i1 %cmp35, i1 false
  br i1 %or.cond304, label %if.then129, label %if.else137

if.then129:                                       ; preds = %if.else100
  %32 = load ptr, ptr %4, align 8
  %arrayidx132 = getelementptr inbounds i8, ptr %arrayidx26, i64 8
  store ptr %32, ptr %arrayidx132, align 8
  %arrayidx134 = getelementptr inbounds i8, ptr %arrayidx26, i64 20
  store i32 0, ptr %arrayidx134, align 4
  %arrayidx136 = getelementptr inbounds i8, ptr %arrayidx26, i64 25
  store i8 0, ptr %arrayidx136, align 1
  br label %if.end240

if.else137:                                       ; preds = %if.else100
  %idxprom139 = sext i8 %31 to i64
  %arrayidx140 = getelementptr inbounds ptr, ptr %4, i64 %idxprom139
  %33 = load ptr, ptr %arrayidx140, align 8
  %arrayidx142 = getelementptr inbounds i8, ptr %arrayidx26, i64 8
  store ptr %33, ptr %arrayidx142, align 8
  %arrayidx144 = getelementptr inbounds i8, ptr %arrayidx26, i64 20
  %34 = load i32, ptr %pmvl1, align 4
  store i32 %34, ptr %arrayidx144, align 4
  %arrayidx146 = getelementptr inbounds i8, ptr %arrayidx26, i64 25
  store i8 %31, ptr %arrayidx146, align 1
  br label %if.end240

if.else150:                                       ; preds = %for.body12
  %cmp157 = icmp slt i8 %14, 0
  %cmp161 = icmp slt i8 %15, 0
  %or.cond305 = select i1 %cmp157, i1 %cmp161, i1 false
  br i1 %or.cond305, label %if.then163, label %if.else178

if.then163:                                       ; preds = %if.else150
  %35 = load ptr, ptr %3, align 8
  store ptr %35, ptr %arrayidx26, align 8
  %36 = load ptr, ptr %4, align 8
  %arrayidx169 = getelementptr inbounds i8, ptr %arrayidx26, i64 8
  store ptr %36, ptr %arrayidx169, align 8
  %mv170 = getelementptr inbounds i8, ptr %arrayidx26, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %mv170, i8 0, i64 10, i1 false)
  br label %if.end240

if.else178:                                       ; preds = %if.else150
  %cmp180 = icmp eq i8 %15, -1
  br i1 %cmp180, label %if.then182, label %if.else198

if.then182:                                       ; preds = %if.else178
  %idxprom184 = sext i8 %14 to i64
  %arrayidx185 = getelementptr inbounds ptr, ptr %3, i64 %idxprom184
  %37 = load ptr, ptr %arrayidx185, align 8
  store ptr %37, ptr %arrayidx26, align 8
  %arrayidx189 = getelementptr inbounds i8, ptr %arrayidx26, i64 8
  store ptr null, ptr %arrayidx189, align 8
  %mv190 = getelementptr inbounds i8, ptr %arrayidx26, i64 16
  %38 = load i32, ptr %pmvl0, align 4
  store i32 %38, ptr %mv190, align 8
  %arrayidx193 = getelementptr inbounds i8, ptr %arrayidx26, i64 20
  store i32 0, ptr %arrayidx193, align 4
  %ref_idx194 = getelementptr inbounds i8, ptr %arrayidx26, i64 24
  store i8 %14, ptr %ref_idx194, align 8
  %arrayidx197 = getelementptr inbounds i8, ptr %arrayidx26, i64 25
  store i8 -1, ptr %arrayidx197, align 1
  br label %if.end240

if.else198:                                       ; preds = %if.else178
  %cmp200 = icmp eq i8 %14, -1
  br i1 %cmp200, label %if.then202, label %if.else218

if.then202:                                       ; preds = %if.else198
  store ptr null, ptr %arrayidx26, align 8
  %idxprom206 = sext i8 %15 to i64
  %arrayidx207 = getelementptr inbounds ptr, ptr %4, i64 %idxprom206
  %39 = load ptr, ptr %arrayidx207, align 8
  %arrayidx209 = getelementptr inbounds i8, ptr %arrayidx26, i64 8
  store ptr %39, ptr %arrayidx209, align 8
  %mv210 = getelementptr inbounds i8, ptr %arrayidx26, i64 16
  store i32 0, ptr %mv210, align 8
  %arrayidx213 = getelementptr inbounds i8, ptr %arrayidx26, i64 20
  %40 = load i32, ptr %pmvl1, align 4
  store i32 %40, ptr %arrayidx213, align 4
  %ref_idx214 = getelementptr inbounds i8, ptr %arrayidx26, i64 24
  store i8 -1, ptr %ref_idx214, align 8
  %41 = load i8, ptr %l1_rFrame, align 1
  %arrayidx217 = getelementptr inbounds i8, ptr %arrayidx26, i64 25
  store i8 %41, ptr %arrayidx217, align 1
  br label %if.end240

if.else218:                                       ; preds = %if.else198
  %idxprom220 = sext i8 %14 to i64
  %arrayidx221 = getelementptr inbounds ptr, ptr %3, i64 %idxprom220
  %42 = load ptr, ptr %arrayidx221, align 8
  store ptr %42, ptr %arrayidx26, align 8
  %idxprom225 = sext i8 %15 to i64
  %arrayidx226 = getelementptr inbounds ptr, ptr %4, i64 %idxprom225
  %43 = load ptr, ptr %arrayidx226, align 8
  %arrayidx228 = getelementptr inbounds i8, ptr %arrayidx26, i64 8
  store ptr %43, ptr %arrayidx228, align 8
  %mv229 = getelementptr inbounds i8, ptr %arrayidx26, i64 16
  %44 = load i32, ptr %pmvl0, align 4
  store i32 %44, ptr %mv229, align 8
  %arrayidx232 = getelementptr inbounds i8, ptr %arrayidx26, i64 20
  %45 = load i32, ptr %pmvl1, align 4
  store i32 %45, ptr %arrayidx232, align 4
  %ref_idx233 = getelementptr inbounds i8, ptr %arrayidx26, i64 24
  store i8 %14, ptr %ref_idx233, align 8
  %46 = load i8, ptr %l1_rFrame, align 1
  %arrayidx236 = getelementptr inbounds i8, ptr %arrayidx26, i64 25
  store i8 %46, ptr %arrayidx236, align 1
  br label %if.end240

if.end240:                                        ; preds = %if.else, %if.then41, %if.else85, %if.then73, %if.else137, %if.then129, %if.then163, %if.then202, %if.else218, %if.then182
  %pred_dir.3 = phi i32 [ 2, %if.then163 ], [ 0, %if.then182 ], [ 1, %if.then202 ], [ 2, %if.else218 ], [ 0, %if.else ], [ 0, %if.then41 ], [ 1, %if.else85 ], [ 1, %if.then73 ], [ 2, %if.else137 ], [ 2, %if.then129 ]
  %indvars.iv.next434 = add nuw nsw i64 %indvars.iv433, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next434, %indvars.iv443
  br i1 %exitcond.not, label %for.cond241.preheader, label %for.body12

for.end261:                                       ; preds = %for.cond241.preheader
  %cbp = getelementptr inbounds i8, ptr %currMB, i64 284
  %47 = load i32, ptr %cbp, align 4
  %cmp262 = icmp eq i32 %47, 0
  br i1 %cmp262, label %if.then264, label %if.else301

if.then264:                                       ; preds = %for.end261
  %pix_y = getelementptr inbounds i8, ptr %currMB, i64 48
  %48 = load i32, ptr %pix_y, align 8
  %idxprom265 = sext i32 %48 to i64
  %arrayidx266 = getelementptr inbounds ptr, ptr %currImg, i64 %idxprom265
  %mb_pred = getelementptr inbounds i8, ptr %0, i64 1248
  %49 = load ptr, ptr %mb_pred, align 8
  %idxprom267 = zext i32 %curr_plane to i64
  %arrayidx268 = getelementptr inbounds ptr, ptr %49, i64 %idxprom267
  %50 = load ptr, ptr %arrayidx268, align 8
  %pix_x = getelementptr inbounds i8, ptr %currMB, i64 44
  %51 = load i32, ptr %pix_x, align 4
  call void @copy_image_data_16x16(ptr noundef %arrayidx266, ptr noundef %50, i32 noundef %51, i32 noundef 0) #7
  %chroma_format_idc = getelementptr inbounds i8, ptr %dec_picture, i64 268
  %52 = load i32, ptr %chroma_format_idc, align 4
  switch i32 %52, label %if.then275 [
    i32 0, label %if.end302
    i32 3, label %if.end302
  ]

if.then275:                                       ; preds = %if.then264
  %imgUV = getelementptr inbounds i8, ptr %dec_picture, i64 136
  %53 = load ptr, ptr %imgUV, align 8
  %54 = load ptr, ptr %53, align 8
  %pix_c_y = getelementptr inbounds i8, ptr %currMB, i64 56
  %55 = load i32, ptr %pix_c_y, align 8
  %idxprom277 = sext i32 %55 to i64
  %arrayidx278 = getelementptr inbounds ptr, ptr %54, i64 %idxprom277
  %56 = load ptr, ptr %mb_pred, align 8
  %arrayidx280 = getelementptr inbounds i8, ptr %56, i64 8
  %57 = load ptr, ptr %arrayidx280, align 8
  %pix_c_x = getelementptr inbounds i8, ptr %currMB, i64 52
  %58 = load i32, ptr %pix_c_x, align 4
  %arrayidx281 = getelementptr inbounds i8, ptr %1, i64 849132
  %59 = load i32, ptr %arrayidx281, align 4
  %arrayidx285 = getelementptr inbounds i8, ptr %1, i64 849136
  %60 = load i32, ptr %arrayidx285, align 4
  call void @copy_image_data(ptr noundef %arrayidx278, ptr noundef %57, i32 noundef %58, i32 noundef 0, i32 noundef %59, i32 noundef %60) #7
  %61 = load ptr, ptr %imgUV, align 8
  %arrayidx287 = getelementptr inbounds i8, ptr %61, i64 8
  %62 = load ptr, ptr %arrayidx287, align 8
  %63 = load i32, ptr %pix_c_y, align 8
  %idxprom289 = sext i32 %63 to i64
  %arrayidx290 = getelementptr inbounds ptr, ptr %62, i64 %idxprom289
  %64 = load ptr, ptr %mb_pred, align 8
  %arrayidx292 = getelementptr inbounds i8, ptr %64, i64 16
  %65 = load ptr, ptr %arrayidx292, align 8
  %66 = load i32, ptr %pix_c_x, align 4
  %67 = load i32, ptr %arrayidx281, align 4
  %68 = load i32, ptr %arrayidx285, align 4
  call void @copy_image_data(ptr noundef %arrayidx290, ptr noundef %65, i32 noundef %66, i32 noundef 0, i32 noundef %67, i32 noundef %68) #7
  br label %if.end302

if.else301:                                       ; preds = %for.end261
  call void @iTransform(ptr noundef nonnull %currMB, i32 noundef %curr_plane, i32 noundef 0) #7
  %is_reset_coeff = getelementptr inbounds i8, ptr %0, i64 1240
  store i32 0, ptr %is_reset_coeff, align 8
  br label %if.end302

if.end302:                                        ; preds = %if.then264, %if.then264, %if.then275, %if.else301
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pmvl1) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pmvl0) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %l1_rFrame) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %l0_rFrame) #7
  ret i32 1
}

declare i32 @get_colocated_info_4x4(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @mb_pred_b_inter8x8(ptr noundef %currMB, i32 noundef %curr_plane, ptr noundef %dec_picture) local_unnamed_addr #0 {
entry:
  %l0_rFrame = alloca i8, align 1
  %l1_rFrame = alloca i8, align 1
  %pmvl0 = alloca %struct.MotionVector, align 4
  %pmvl1 = alloca %struct.MotionVector, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %l0_rFrame) #7
  store i8 -1, ptr %l0_rFrame, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %l1_rFrame) #7
  store i8 -1, ptr %l1_rFrame, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pmvl0) #7
  store i32 0, ptr %pmvl0, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pmvl1) #7
  store i32 0, ptr %pmvl1, align 4
  %0 = load ptr, ptr %currMB, align 8
  %p_Vid1 = getelementptr inbounds i8, ptr %currMB, i64 8
  %1 = load ptr, ptr %p_Vid1, align 8
  %list_offset2 = getelementptr inbounds i8, ptr %currMB, i64 114
  %2 = load i16, ptr %list_offset2, align 2
  %conv = sext i16 %2 to i64
  %listX = getelementptr inbounds i8, ptr %0, i64 264
  %arrayidx = getelementptr inbounds [6 x ptr], ptr %listX, i64 0, i64 %conv
  %3 = load ptr, ptr %arrayidx, align 8
  %add4 = add nsw i64 %conv, 1
  %arrayidx6 = getelementptr inbounds [6 x ptr], ptr %listX, i64 0, i64 %add4
  %4 = load ptr, ptr %arrayidx6, align 8
  tail call fastcc void @set_chroma_vector(ptr noundef nonnull %currMB)
  %direct_spatial_mv_pred_flag = getelementptr inbounds i8, ptr %0, i64 132
  %5 = load i32, ptr %direct_spatial_mv_pred_flag, align 4
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %b8mode = getelementptr inbounds i8, ptr %currMB, i64 364
  %6 = load i8, ptr %b8mode, align 4
  %tobool9.not = icmp eq i8 %6, 0
  br i1 %tobool9.not, label %if.then, label %land.lhs.true10

land.lhs.true10:                                  ; preds = %land.lhs.true
  %arrayidx12 = getelementptr inbounds i8, ptr %currMB, i64 365
  %7 = load i8, ptr %arrayidx12, align 1
  %tobool14.not = icmp eq i8 %7, 0
  br i1 %tobool14.not, label %if.then, label %land.lhs.true15

land.lhs.true15:                                  ; preds = %land.lhs.true10
  %arrayidx17 = getelementptr inbounds i8, ptr %currMB, i64 366
  %8 = load i8, ptr %arrayidx17, align 2
  %tobool19.not = icmp eq i8 %8, 0
  br i1 %tobool19.not, label %if.then, label %land.lhs.true20

land.lhs.true20:                                  ; preds = %land.lhs.true15
  %arrayidx22 = getelementptr inbounds i8, ptr %currMB, i64 367
  %9 = load i8, ptr %arrayidx22, align 1
  %tobool24.not = icmp eq i8 %9, 0
  br i1 %tobool24.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true20, %land.lhs.true15, %land.lhs.true10, %land.lhs.true
  call void @prepare_direct_params(ptr noundef nonnull %currMB, ptr noundef %dec_picture, ptr noundef nonnull %pmvl0, ptr noundef nonnull %pmvl1, ptr noundef nonnull %l0_rFrame, ptr noundef nonnull %l1_rFrame) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true20, %entry
  %b8mode26 = getelementptr inbounds i8, ptr %currMB, i64 364
  %b8pdir = getelementptr inbounds i8, ptr %currMB, i64 368
  %active_sps = getelementptr inbounds i8, ptr %1, i64 16
  %block_x = getelementptr inbounds i8, ptr %currMB, i64 32
  %block_y = getelementptr inbounds i8, ptr %currMB, i64 36
  %mv_info104 = getelementptr inbounds i8, ptr %dec_picture, i64 152
  br label %for.body

for.body:                                         ; preds = %if.end, %if.end191
  %indvars.iv298 = phi i64 [ 0, %if.end ], [ %indvars.iv.next299, %if.end191 ]
  %indvars.iv = phi i64 [ 0, %if.end ], [ %indvars.iv.next, %if.end191 ]
  %indvars307 = trunc i64 %indvars.iv298 to i32
  %arrayidx28 = getelementptr inbounds [4 x i8], ptr %b8mode26, i64 0, i64 %indvars.iv298
  %10 = load i8, ptr %arrayidx28, align 1
  %arrayidx31 = getelementptr inbounds [4 x i8], ptr %b8pdir, i64 0, i64 %indvars.iv298
  %11 = load i8, ptr %arrayidx31, align 1
  %conv32 = sext i8 %11 to i32
  %cmp33.not = icmp eq i8 %10, 0
  %12 = shl nuw nsw i64 %indvars.iv298, 2
  br i1 %cmp33.not, label %if.else, label %if.then35

if.then35:                                        ; preds = %for.body
  %cmp36 = icmp eq i8 %10, 5
  %cond = select i1 %cmp36, i32 2, i32 1
  %cmp38 = icmp eq i8 %10, 4
  br i1 %cmp38, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then35
  %shl = shl nuw nsw i32 %indvars307, 2
  %add40 = or disjoint i32 %shl, 1
  br label %cond.end49

cond.false:                                       ; preds = %if.then35
  %cmp41 = icmp eq i8 %10, 7
  %13 = trunc i64 %12 to i32
  br i1 %cmp41, label %cond.true43, label %cond.false45

cond.true43:                                      ; preds = %cond.false
  %14 = add i32 %13, 4
  br label %cond.end49

cond.false45:                                     ; preds = %cond.false
  %15 = or disjoint i32 %13, 1
  %add47 = add nuw nsw i32 %15, %cond
  br label %cond.end49

cond.end49:                                       ; preds = %cond.true43, %cond.false45, %cond.true
  %cond50 = phi i32 [ %add40, %cond.true ], [ %14, %cond.true43 ], [ %add47, %cond.false45 ]
  %16 = and i8 %10, -2
  %17 = icmp eq i8 %16, 4
  %cond55 = select i1 %17, i32 8, i32 4
  %cmp56 = icmp eq i8 %10, 6
  %18 = or i1 %cmp56, %cmp38
  %cond62 = select i1 %18, i32 8, i32 4
  %19 = zext i32 %cond50 to i64
  %cmp64275 = icmp ult i64 %12, %19
  br i1 %cmp64275, label %for.body66.preheader, label %if.end191

for.body66.preheader:                             ; preds = %cond.end49
  %20 = zext nneg i32 %cond to i64
  br label %for.body66

for.body66:                                       ; preds = %for.body66.preheader, %for.body66
  %indvars.iv284 = phi i64 [ %indvars.iv, %for.body66.preheader ], [ %indvars.iv.next285, %for.body66 ]
  %arrayidx68 = getelementptr inbounds [16 x i8], ptr @decode_block_scan, i64 0, i64 %indvars.iv284
  %21 = load i8, ptr %arrayidx68, align 1
  %conv69 = zext i8 %21 to i32
  %and = and i32 %conv69, 3
  %shr = lshr i32 %conv69, 2
  %and73 = and i32 %shr, 3
  call void @perform_mc(ptr noundef nonnull %currMB, i32 noundef %curr_plane, ptr noundef %dec_picture, i32 noundef %conv32, i32 noundef %and, i32 noundef %and73, i32 noundef %cond55, i32 noundef %cond62) #7
  %indvars.iv.next285 = add nuw nsw i64 %indvars.iv284, %20
  %22 = trunc nuw i64 %indvars.iv.next285 to i32
  %cmp64 = icmp sgt i32 %cond50, %22
  br i1 %cmp64, label %for.body66, label %if.end191

if.else:                                          ; preds = %for.body
  %shl76 = shl i64 %indvars.iv298, 2
  %23 = load ptr, ptr %active_sps, align 8
  %direct_8x8_inference_flag = getelementptr inbounds i8, ptr %23, i64 3144
  %24 = load i32, ptr %direct_8x8_inference_flag, align 4
  %tobool78.not = icmp eq i32 %24, 0
  %inc = or disjoint i64 %shl76, 1
  %25 = add nuw i64 %12, 4
  %k_end77.0 = select i1 %tobool78.not, i64 %25, i64 %inc
  %block_size_x.0 = select i1 %tobool78.not, i32 4, i32 8
  %26 = load i32, ptr %direct_spatial_mv_pred_flag, align 4
  %tobool84.not = icmp eq i32 %26, 0
  br i1 %tobool84.not, label %for.body132.preheader, label %for.cond86.preheader

for.body132.preheader:                            ; preds = %if.else
  %arrayidx135 = getelementptr inbounds [16 x i8], ptr @decode_block_scan, i64 0, i64 %indvars.iv
  %27 = load i8, ptr %arrayidx135, align 4
  %conv136 = zext i8 %27 to i32
  %and137 = and i32 %conv136, 3
  %shr142 = lshr i32 %conv136, 2
  %and143 = and i32 %shr142, 3
  %28 = load i32, ptr %block_x, align 8
  %add146 = add nsw i32 %and137, %28
  %29 = load i32, ptr %block_y, align 4
  %add149 = add nsw i32 %and143, %29
  %30 = load ptr, ptr %mv_info104, align 8
  %idxprom152 = sext i32 %add149 to i64
  %arrayidx153 = getelementptr inbounds ptr, ptr %30, i64 %idxprom152
  %31 = load ptr, ptr %arrayidx153, align 8
  %idxprom154 = sext i32 %add146 to i64
  %arrayidx155 = getelementptr inbounds %struct.pic_motion_params, ptr %31, i64 %idxprom154
  %ref_idx156 = getelementptr inbounds i8, ptr %arrayidx155, i64 24
  %32 = load i8, ptr %ref_idx156, align 8
  %idxprom159 = sext i8 %32 to i64
  %arrayidx160 = getelementptr inbounds ptr, ptr %3, i64 %idxprom159
  %33 = load ptr, ptr %arrayidx160, align 8
  store ptr %33, ptr %arrayidx155, align 8
  %arrayidx163 = getelementptr inbounds i8, ptr %arrayidx155, i64 25
  %34 = load i8, ptr %arrayidx163, align 1
  %idxprom165 = sext i8 %34 to i64
  %arrayidx166 = getelementptr inbounds ptr, ptr %4, i64 %idxprom165
  %35 = load ptr, ptr %arrayidx166, align 8
  %arrayidx168 = getelementptr inbounds i8, ptr %arrayidx155, i64 8
  store ptr %35, ptr %arrayidx168, align 8
  %indvars.iv.next293 = or disjoint i64 %indvars.iv, 1
  %arrayidx135.1 = getelementptr inbounds [16 x i8], ptr @decode_block_scan, i64 0, i64 %indvars.iv.next293
  %36 = load i8, ptr %arrayidx135.1, align 1
  %conv136.1 = zext i8 %36 to i32
  %and137.1 = and i32 %conv136.1, 3
  %shr142.1 = lshr i32 %conv136.1, 2
  %and143.1 = and i32 %shr142.1, 3
  %37 = load i32, ptr %block_x, align 8
  %add146.1 = add nsw i32 %and137.1, %37
  %38 = load i32, ptr %block_y, align 4
  %add149.1 = add nsw i32 %and143.1, %38
  %39 = load ptr, ptr %mv_info104, align 8
  %idxprom152.1 = sext i32 %add149.1 to i64
  %arrayidx153.1 = getelementptr inbounds ptr, ptr %39, i64 %idxprom152.1
  %40 = load ptr, ptr %arrayidx153.1, align 8
  %idxprom154.1 = sext i32 %add146.1 to i64
  %arrayidx155.1 = getelementptr inbounds %struct.pic_motion_params, ptr %40, i64 %idxprom154.1
  %ref_idx156.1 = getelementptr inbounds i8, ptr %arrayidx155.1, i64 24
  %41 = load i8, ptr %ref_idx156.1, align 8
  %idxprom159.1 = sext i8 %41 to i64
  %arrayidx160.1 = getelementptr inbounds ptr, ptr %3, i64 %idxprom159.1
  %42 = load ptr, ptr %arrayidx160.1, align 8
  store ptr %42, ptr %arrayidx155.1, align 8
  %arrayidx163.1 = getelementptr inbounds i8, ptr %arrayidx155.1, i64 25
  %43 = load i8, ptr %arrayidx163.1, align 1
  %idxprom165.1 = sext i8 %43 to i64
  %arrayidx166.1 = getelementptr inbounds ptr, ptr %4, i64 %idxprom165.1
  %44 = load ptr, ptr %arrayidx166.1, align 8
  %arrayidx168.1 = getelementptr inbounds i8, ptr %arrayidx155.1, i64 8
  store ptr %44, ptr %arrayidx168.1, align 8
  %indvars.iv.next293.1 = or disjoint i64 %indvars.iv, 2
  %arrayidx135.2 = getelementptr inbounds [16 x i8], ptr @decode_block_scan, i64 0, i64 %indvars.iv.next293.1
  %45 = load i8, ptr %arrayidx135.2, align 2
  %conv136.2 = zext i8 %45 to i32
  %and137.2 = and i32 %conv136.2, 3
  %shr142.2 = lshr i32 %conv136.2, 2
  %and143.2 = and i32 %shr142.2, 3
  %46 = load i32, ptr %block_x, align 8
  %add146.2 = add nsw i32 %and137.2, %46
  %47 = load i32, ptr %block_y, align 4
  %add149.2 = add nsw i32 %and143.2, %47
  %48 = load ptr, ptr %mv_info104, align 8
  %idxprom152.2 = sext i32 %add149.2 to i64
  %arrayidx153.2 = getelementptr inbounds ptr, ptr %48, i64 %idxprom152.2
  %49 = load ptr, ptr %arrayidx153.2, align 8
  %idxprom154.2 = sext i32 %add146.2 to i64
  %arrayidx155.2 = getelementptr inbounds %struct.pic_motion_params, ptr %49, i64 %idxprom154.2
  %ref_idx156.2 = getelementptr inbounds i8, ptr %arrayidx155.2, i64 24
  %50 = load i8, ptr %ref_idx156.2, align 8
  %idxprom159.2 = sext i8 %50 to i64
  %arrayidx160.2 = getelementptr inbounds ptr, ptr %3, i64 %idxprom159.2
  %51 = load ptr, ptr %arrayidx160.2, align 8
  store ptr %51, ptr %arrayidx155.2, align 8
  %arrayidx163.2 = getelementptr inbounds i8, ptr %arrayidx155.2, i64 25
  %52 = load i8, ptr %arrayidx163.2, align 1
  %idxprom165.2 = sext i8 %52 to i64
  %arrayidx166.2 = getelementptr inbounds ptr, ptr %4, i64 %idxprom165.2
  %53 = load ptr, ptr %arrayidx166.2, align 8
  %arrayidx168.2 = getelementptr inbounds i8, ptr %arrayidx155.2, i64 8
  store ptr %53, ptr %arrayidx168.2, align 8
  %indvars.iv.next293.2 = or disjoint i64 %indvars.iv, 3
  %arrayidx135.3 = getelementptr inbounds [16 x i8], ptr @decode_block_scan, i64 0, i64 %indvars.iv.next293.2
  %54 = load i8, ptr %arrayidx135.3, align 1
  %conv136.3 = zext i8 %54 to i32
  %and137.3 = and i32 %conv136.3, 3
  %shr142.3 = lshr i32 %conv136.3, 2
  %and143.3 = and i32 %shr142.3, 3
  %55 = load i32, ptr %block_x, align 8
  %add146.3 = add nsw i32 %and137.3, %55
  %56 = load i32, ptr %block_y, align 4
  %add149.3 = add nsw i32 %and143.3, %56
  %57 = load ptr, ptr %mv_info104, align 8
  %idxprom152.3 = sext i32 %add149.3 to i64
  %arrayidx153.3 = getelementptr inbounds ptr, ptr %57, i64 %idxprom152.3
  %58 = load ptr, ptr %arrayidx153.3, align 8
  %idxprom154.3 = sext i32 %add146.3 to i64
  %arrayidx155.3 = getelementptr inbounds %struct.pic_motion_params, ptr %58, i64 %idxprom154.3
  %ref_idx156.3 = getelementptr inbounds i8, ptr %arrayidx155.3, i64 24
  %59 = load i8, ptr %ref_idx156.3, align 8
  %idxprom159.3 = sext i8 %59 to i64
  %arrayidx160.3 = getelementptr inbounds ptr, ptr %3, i64 %idxprom159.3
  %60 = load ptr, ptr %arrayidx160.3, align 8
  store ptr %60, ptr %arrayidx155.3, align 8
  %arrayidx163.3 = getelementptr inbounds i8, ptr %arrayidx155.3, i64 25
  %61 = load i8, ptr %arrayidx163.3, align 1
  %idxprom165.3 = sext i8 %61 to i64
  %arrayidx166.3 = getelementptr inbounds ptr, ptr %4, i64 %idxprom165.3
  %62 = load ptr, ptr %arrayidx166.3, align 8
  %arrayidx168.3 = getelementptr inbounds i8, ptr %arrayidx155.3, i64 8
  store ptr %62, ptr %arrayidx168.3, align 8
  br label %if.end172

for.cond86.preheader:                             ; preds = %if.else
  %63 = load i32, ptr %block_x, align 8
  %64 = load i32, ptr %block_y, align 4
  %65 = load ptr, ptr %mv_info104, align 8
  %indvars.iv.next288.2 = or disjoint i64 %indvars.iv, 3
  %arrayidx93.3 = getelementptr inbounds [16 x i8], ptr @decode_block_scan, i64 0, i64 %indvars.iv.next288.2
  %66 = load i8, ptr %arrayidx93.3, align 1
  %conv94.3 = zext i8 %66 to i32
  %and95.3 = and i32 %conv94.3, 3
  %shr100.3 = lshr i32 %conv94.3, 2
  %and101.3 = and i32 %shr100.3, 3
  %add102.3 = add nsw i32 %and95.3, %63
  %add103.3 = add nsw i32 %and101.3, %64
  %idxprom105.3 = sext i32 %add103.3 to i64
  %arrayidx106.3 = getelementptr inbounds ptr, ptr %65, i64 %idxprom105.3
  %67 = load ptr, ptr %arrayidx106.3, align 8
  %idxprom107.3 = sext i32 %add102.3 to i64
  %ref_idx.3 = getelementptr inbounds %struct.pic_motion_params, ptr %67, i64 %idxprom107.3, i32 2
  %arrayidx109.3 = getelementptr inbounds i8, ptr %ref_idx.3, i64 1
  %68 = load i8, ptr %arrayidx109.3, align 1
  %cmp111.3 = icmp eq i8 %68, -1
  br i1 %cmp111.3, label %if.end172, label %if.else114.3

if.else114.3:                                     ; preds = %for.cond86.preheader
  %69 = load i8, ptr %ref_idx.3, align 8
  %cmp118.3 = icmp eq i8 %69, -1
  %..3 = select i1 %cmp118.3, i32 1, i32 2
  br label %if.end172

if.end172:                                        ; preds = %for.cond86.preheader, %if.else114.3, %for.body132.preheader
  %pred_dir.2 = phi i32 [ %conv32, %for.body132.preheader ], [ 0, %for.cond86.preheader ], [ %..3, %if.else114.3 ]
  %70 = and i64 %k_end77.0, 4294967293
  %cmp174279 = icmp ult i64 %12, %70
  br i1 %cmp174279, label %for.body176, label %if.end191

for.body176:                                      ; preds = %if.end172, %for.body176
  %indvars.iv295 = phi i64 [ %indvars.iv.next296, %for.body176 ], [ %indvars.iv, %if.end172 ]
  %arrayidx179 = getelementptr inbounds [16 x i8], ptr @decode_block_scan, i64 0, i64 %indvars.iv295
  %71 = load i8, ptr %arrayidx179, align 1
  %conv180 = zext i8 %71 to i32
  %and181 = and i32 %conv180, 3
  %shr186 = lshr i32 %conv180, 2
  %and187 = and i32 %shr186, 3
  call void @perform_mc(ptr noundef nonnull %currMB, i32 noundef %curr_plane, ptr noundef %dec_picture, i32 noundef %pred_dir.2, i32 noundef %and181, i32 noundef %and187, i32 noundef %block_size_x.0, i32 noundef %block_size_x.0) #7
  %indvars.iv.next296 = add nuw nsw i64 %indvars.iv295, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next296, %70
  br i1 %exitcond.not, label %if.end191, label %for.body176

if.end191:                                        ; preds = %for.body66, %for.body176, %cond.end49, %if.end172
  %indvars.iv.next299 = add nuw nsw i64 %indvars.iv298, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4
  %exitcond308.not = icmp eq i64 %indvars.iv.next299, 4
  br i1 %exitcond308.not, label %for.end194, label %for.body

for.end194:                                       ; preds = %if.end191
  call void @iTransform(ptr noundef nonnull %currMB, i32 noundef %curr_plane, i32 noundef 0) #7
  %cbp = getelementptr inbounds i8, ptr %currMB, i64 284
  %72 = load i32, ptr %cbp, align 4
  %cmp195.not = icmp eq i32 %72, 0
  br i1 %cmp195.not, label %if.end198, label %if.then197

if.then197:                                       ; preds = %for.end194
  %is_reset_coeff = getelementptr inbounds i8, ptr %0, i64 1240
  store i32 0, ptr %is_reset_coeff, align 8
  br label %if.end198

if.end198:                                        ; preds = %if.then197, %for.end194
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pmvl1) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pmvl0) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %l1_rFrame) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %l0_rFrame) #7
  ret i32 1
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @mb_pred_ipcm(ptr noundef %currMB) local_unnamed_addr #0 {
entry:
  %0 = load ptr, ptr %currMB, align 8
  %p_Vid1 = getelementptr inbounds i8, ptr %currMB, i64 8
  %1 = load ptr, ptr %p_Vid1, align 8
  %dec_picture2 = getelementptr inbounds i8, ptr %0, i64 13520
  %2 = load ptr, ptr %dec_picture2, align 8
  %cof = getelementptr inbounds i8, ptr %0, i64 1272
  %imgY = getelementptr inbounds i8, ptr %2, i64 128
  %pix_y = getelementptr inbounds i8, ptr %currMB, i64 48
  %pix_x = getelementptr inbounds i8, ptr %currMB, i64 44
  br label %for.cond3.preheader

for.cond3.preheader:                              ; preds = %entry, %for.cond3.preheader
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.cond3.preheader ]
  %3 = load ptr, ptr %cof, align 8
  %4 = load ptr, ptr %3, align 8
  %arrayidx6 = getelementptr inbounds ptr, ptr %4, i64 %indvars.iv
  %5 = load ptr, ptr %arrayidx6, align 8
  %6 = load i32, ptr %5, align 4
  %conv = trunc i32 %6 to i16
  %7 = load ptr, ptr %imgY, align 8
  %8 = load i32, ptr %pix_y, align 8
  %9 = trunc nuw nsw i64 %indvars.iv to i32
  %add = add nsw i32 %8, %9
  %idxprom9 = sext i32 %add to i64
  %arrayidx10 = getelementptr inbounds ptr, ptr %7, i64 %idxprom9
  %10 = load ptr, ptr %arrayidx10, align 8
  %11 = load i32, ptr %pix_x, align 4
  %idxprom12 = sext i32 %11 to i64
  %arrayidx13 = getelementptr inbounds i16, ptr %10, i64 %idxprom12
  store i16 %conv, ptr %arrayidx13, align 2
  %12 = load ptr, ptr %cof, align 8
  %13 = load ptr, ptr %12, align 8
  %arrayidx6.1 = getelementptr inbounds ptr, ptr %13, i64 %indvars.iv
  %14 = load ptr, ptr %arrayidx6.1, align 8
  %arrayidx8.1 = getelementptr inbounds i8, ptr %14, i64 4
  %15 = load i32, ptr %arrayidx8.1, align 4
  %conv.1 = trunc i32 %15 to i16
  %16 = load ptr, ptr %imgY, align 8
  %17 = load i32, ptr %pix_y, align 8
  %add.1 = add nsw i32 %17, %9
  %idxprom9.1 = sext i32 %add.1 to i64
  %arrayidx10.1 = getelementptr inbounds ptr, ptr %16, i64 %idxprom9.1
  %18 = load ptr, ptr %arrayidx10.1, align 8
  %19 = load i32, ptr %pix_x, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr i16, ptr %18, i64 %20
  %arrayidx13.1 = getelementptr i8, ptr %21, i64 2
  store i16 %conv.1, ptr %arrayidx13.1, align 2
  %22 = load ptr, ptr %cof, align 8
  %23 = load ptr, ptr %22, align 8
  %arrayidx6.2 = getelementptr inbounds ptr, ptr %23, i64 %indvars.iv
  %24 = load ptr, ptr %arrayidx6.2, align 8
  %arrayidx8.2 = getelementptr inbounds i8, ptr %24, i64 8
  %25 = load i32, ptr %arrayidx8.2, align 4
  %conv.2 = trunc i32 %25 to i16
  %26 = load ptr, ptr %imgY, align 8
  %27 = load i32, ptr %pix_y, align 8
  %add.2 = add nsw i32 %27, %9
  %idxprom9.2 = sext i32 %add.2 to i64
  %arrayidx10.2 = getelementptr inbounds ptr, ptr %26, i64 %idxprom9.2
  %28 = load ptr, ptr %arrayidx10.2, align 8
  %29 = load i32, ptr %pix_x, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr i16, ptr %28, i64 %30
  %arrayidx13.2 = getelementptr i8, ptr %31, i64 4
  store i16 %conv.2, ptr %arrayidx13.2, align 2
  %32 = load ptr, ptr %cof, align 8
  %33 = load ptr, ptr %32, align 8
  %arrayidx6.3 = getelementptr inbounds ptr, ptr %33, i64 %indvars.iv
  %34 = load ptr, ptr %arrayidx6.3, align 8
  %arrayidx8.3 = getelementptr inbounds i8, ptr %34, i64 12
  %35 = load i32, ptr %arrayidx8.3, align 4
  %conv.3 = trunc i32 %35 to i16
  %36 = load ptr, ptr %imgY, align 8
  %37 = load i32, ptr %pix_y, align 8
  %add.3 = add nsw i32 %37, %9
  %idxprom9.3 = sext i32 %add.3 to i64
  %arrayidx10.3 = getelementptr inbounds ptr, ptr %36, i64 %idxprom9.3
  %38 = load ptr, ptr %arrayidx10.3, align 8
  %39 = load i32, ptr %pix_x, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr i16, ptr %38, i64 %40
  %arrayidx13.3 = getelementptr i8, ptr %41, i64 6
  store i16 %conv.3, ptr %arrayidx13.3, align 2
  %42 = load ptr, ptr %cof, align 8
  %43 = load ptr, ptr %42, align 8
  %arrayidx6.4 = getelementptr inbounds ptr, ptr %43, i64 %indvars.iv
  %44 = load ptr, ptr %arrayidx6.4, align 8
  %arrayidx8.4 = getelementptr inbounds i8, ptr %44, i64 16
  %45 = load i32, ptr %arrayidx8.4, align 4
  %conv.4 = trunc i32 %45 to i16
  %46 = load ptr, ptr %imgY, align 8
  %47 = load i32, ptr %pix_y, align 8
  %add.4 = add nsw i32 %47, %9
  %idxprom9.4 = sext i32 %add.4 to i64
  %arrayidx10.4 = getelementptr inbounds ptr, ptr %46, i64 %idxprom9.4
  %48 = load ptr, ptr %arrayidx10.4, align 8
  %49 = load i32, ptr %pix_x, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr i16, ptr %48, i64 %50
  %arrayidx13.4 = getelementptr i8, ptr %51, i64 8
  store i16 %conv.4, ptr %arrayidx13.4, align 2
  %52 = load ptr, ptr %cof, align 8
  %53 = load ptr, ptr %52, align 8
  %arrayidx6.5 = getelementptr inbounds ptr, ptr %53, i64 %indvars.iv
  %54 = load ptr, ptr %arrayidx6.5, align 8
  %arrayidx8.5 = getelementptr inbounds i8, ptr %54, i64 20
  %55 = load i32, ptr %arrayidx8.5, align 4
  %conv.5 = trunc i32 %55 to i16
  %56 = load ptr, ptr %imgY, align 8
  %57 = load i32, ptr %pix_y, align 8
  %add.5 = add nsw i32 %57, %9
  %idxprom9.5 = sext i32 %add.5 to i64
  %arrayidx10.5 = getelementptr inbounds ptr, ptr %56, i64 %idxprom9.5
  %58 = load ptr, ptr %arrayidx10.5, align 8
  %59 = load i32, ptr %pix_x, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr i16, ptr %58, i64 %60
  %arrayidx13.5 = getelementptr i8, ptr %61, i64 10
  store i16 %conv.5, ptr %arrayidx13.5, align 2
  %62 = load ptr, ptr %cof, align 8
  %63 = load ptr, ptr %62, align 8
  %arrayidx6.6 = getelementptr inbounds ptr, ptr %63, i64 %indvars.iv
  %64 = load ptr, ptr %arrayidx6.6, align 8
  %arrayidx8.6 = getelementptr inbounds i8, ptr %64, i64 24
  %65 = load i32, ptr %arrayidx8.6, align 4
  %conv.6 = trunc i32 %65 to i16
  %66 = load ptr, ptr %imgY, align 8
  %67 = load i32, ptr %pix_y, align 8
  %add.6 = add nsw i32 %67, %9
  %idxprom9.6 = sext i32 %add.6 to i64
  %arrayidx10.6 = getelementptr inbounds ptr, ptr %66, i64 %idxprom9.6
  %68 = load ptr, ptr %arrayidx10.6, align 8
  %69 = load i32, ptr %pix_x, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr i16, ptr %68, i64 %70
  %arrayidx13.6 = getelementptr i8, ptr %71, i64 12
  store i16 %conv.6, ptr %arrayidx13.6, align 2
  %72 = load ptr, ptr %cof, align 8
  %73 = load ptr, ptr %72, align 8
  %arrayidx6.7 = getelementptr inbounds ptr, ptr %73, i64 %indvars.iv
  %74 = load ptr, ptr %arrayidx6.7, align 8
  %arrayidx8.7 = getelementptr inbounds i8, ptr %74, i64 28
  %75 = load i32, ptr %arrayidx8.7, align 4
  %conv.7 = trunc i32 %75 to i16
  %76 = load ptr, ptr %imgY, align 8
  %77 = load i32, ptr %pix_y, align 8
  %add.7 = add nsw i32 %77, %9
  %idxprom9.7 = sext i32 %add.7 to i64
  %arrayidx10.7 = getelementptr inbounds ptr, ptr %76, i64 %idxprom9.7
  %78 = load ptr, ptr %arrayidx10.7, align 8
  %79 = load i32, ptr %pix_x, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr i16, ptr %78, i64 %80
  %arrayidx13.7 = getelementptr i8, ptr %81, i64 14
  store i16 %conv.7, ptr %arrayidx13.7, align 2
  %82 = load ptr, ptr %cof, align 8
  %83 = load ptr, ptr %82, align 8
  %arrayidx6.8 = getelementptr inbounds ptr, ptr %83, i64 %indvars.iv
  %84 = load ptr, ptr %arrayidx6.8, align 8
  %arrayidx8.8 = getelementptr inbounds i8, ptr %84, i64 32
  %85 = load i32, ptr %arrayidx8.8, align 4
  %conv.8 = trunc i32 %85 to i16
  %86 = load ptr, ptr %imgY, align 8
  %87 = load i32, ptr %pix_y, align 8
  %add.8 = add nsw i32 %87, %9
  %idxprom9.8 = sext i32 %add.8 to i64
  %arrayidx10.8 = getelementptr inbounds ptr, ptr %86, i64 %idxprom9.8
  %88 = load ptr, ptr %arrayidx10.8, align 8
  %89 = load i32, ptr %pix_x, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr i16, ptr %88, i64 %90
  %arrayidx13.8 = getelementptr i8, ptr %91, i64 16
  store i16 %conv.8, ptr %arrayidx13.8, align 2
  %92 = load ptr, ptr %cof, align 8
  %93 = load ptr, ptr %92, align 8
  %arrayidx6.9 = getelementptr inbounds ptr, ptr %93, i64 %indvars.iv
  %94 = load ptr, ptr %arrayidx6.9, align 8
  %arrayidx8.9 = getelementptr inbounds i8, ptr %94, i64 36
  %95 = load i32, ptr %arrayidx8.9, align 4
  %conv.9 = trunc i32 %95 to i16
  %96 = load ptr, ptr %imgY, align 8
  %97 = load i32, ptr %pix_y, align 8
  %add.9 = add nsw i32 %97, %9
  %idxprom9.9 = sext i32 %add.9 to i64
  %arrayidx10.9 = getelementptr inbounds ptr, ptr %96, i64 %idxprom9.9
  %98 = load ptr, ptr %arrayidx10.9, align 8
  %99 = load i32, ptr %pix_x, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr i16, ptr %98, i64 %100
  %arrayidx13.9 = getelementptr i8, ptr %101, i64 18
  store i16 %conv.9, ptr %arrayidx13.9, align 2
  %102 = load ptr, ptr %cof, align 8
  %103 = load ptr, ptr %102, align 8
  %arrayidx6.10 = getelementptr inbounds ptr, ptr %103, i64 %indvars.iv
  %104 = load ptr, ptr %arrayidx6.10, align 8
  %arrayidx8.10 = getelementptr inbounds i8, ptr %104, i64 40
  %105 = load i32, ptr %arrayidx8.10, align 4
  %conv.10 = trunc i32 %105 to i16
  %106 = load ptr, ptr %imgY, align 8
  %107 = load i32, ptr %pix_y, align 8
  %add.10 = add nsw i32 %107, %9
  %idxprom9.10 = sext i32 %add.10 to i64
  %arrayidx10.10 = getelementptr inbounds ptr, ptr %106, i64 %idxprom9.10
  %108 = load ptr, ptr %arrayidx10.10, align 8
  %109 = load i32, ptr %pix_x, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr i16, ptr %108, i64 %110
  %arrayidx13.10 = getelementptr i8, ptr %111, i64 20
  store i16 %conv.10, ptr %arrayidx13.10, align 2
  %112 = load ptr, ptr %cof, align 8
  %113 = load ptr, ptr %112, align 8
  %arrayidx6.11 = getelementptr inbounds ptr, ptr %113, i64 %indvars.iv
  %114 = load ptr, ptr %arrayidx6.11, align 8
  %arrayidx8.11 = getelementptr inbounds i8, ptr %114, i64 44
  %115 = load i32, ptr %arrayidx8.11, align 4
  %conv.11 = trunc i32 %115 to i16
  %116 = load ptr, ptr %imgY, align 8
  %117 = load i32, ptr %pix_y, align 8
  %add.11 = add nsw i32 %117, %9
  %idxprom9.11 = sext i32 %add.11 to i64
  %arrayidx10.11 = getelementptr inbounds ptr, ptr %116, i64 %idxprom9.11
  %118 = load ptr, ptr %arrayidx10.11, align 8
  %119 = load i32, ptr %pix_x, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr i16, ptr %118, i64 %120
  %arrayidx13.11 = getelementptr i8, ptr %121, i64 22
  store i16 %conv.11, ptr %arrayidx13.11, align 2
  %122 = load ptr, ptr %cof, align 8
  %123 = load ptr, ptr %122, align 8
  %arrayidx6.12 = getelementptr inbounds ptr, ptr %123, i64 %indvars.iv
  %124 = load ptr, ptr %arrayidx6.12, align 8
  %arrayidx8.12 = getelementptr inbounds i8, ptr %124, i64 48
  %125 = load i32, ptr %arrayidx8.12, align 4
  %conv.12 = trunc i32 %125 to i16
  %126 = load ptr, ptr %imgY, align 8
  %127 = load i32, ptr %pix_y, align 8
  %add.12 = add nsw i32 %127, %9
  %idxprom9.12 = sext i32 %add.12 to i64
  %arrayidx10.12 = getelementptr inbounds ptr, ptr %126, i64 %idxprom9.12
  %128 = load ptr, ptr %arrayidx10.12, align 8
  %129 = load i32, ptr %pix_x, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr i16, ptr %128, i64 %130
  %arrayidx13.12 = getelementptr i8, ptr %131, i64 24
  store i16 %conv.12, ptr %arrayidx13.12, align 2
  %132 = load ptr, ptr %cof, align 8
  %133 = load ptr, ptr %132, align 8
  %arrayidx6.13 = getelementptr inbounds ptr, ptr %133, i64 %indvars.iv
  %134 = load ptr, ptr %arrayidx6.13, align 8
  %arrayidx8.13 = getelementptr inbounds i8, ptr %134, i64 52
  %135 = load i32, ptr %arrayidx8.13, align 4
  %conv.13 = trunc i32 %135 to i16
  %136 = load ptr, ptr %imgY, align 8
  %137 = load i32, ptr %pix_y, align 8
  %add.13 = add nsw i32 %137, %9
  %idxprom9.13 = sext i32 %add.13 to i64
  %arrayidx10.13 = getelementptr inbounds ptr, ptr %136, i64 %idxprom9.13
  %138 = load ptr, ptr %arrayidx10.13, align 8
  %139 = load i32, ptr %pix_x, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr i16, ptr %138, i64 %140
  %arrayidx13.13 = getelementptr i8, ptr %141, i64 26
  store i16 %conv.13, ptr %arrayidx13.13, align 2
  %142 = load ptr, ptr %cof, align 8
  %143 = load ptr, ptr %142, align 8
  %arrayidx6.14 = getelementptr inbounds ptr, ptr %143, i64 %indvars.iv
  %144 = load ptr, ptr %arrayidx6.14, align 8
  %arrayidx8.14 = getelementptr inbounds i8, ptr %144, i64 56
  %145 = load i32, ptr %arrayidx8.14, align 4
  %conv.14 = trunc i32 %145 to i16
  %146 = load ptr, ptr %imgY, align 8
  %147 = load i32, ptr %pix_y, align 8
  %add.14 = add nsw i32 %147, %9
  %idxprom9.14 = sext i32 %add.14 to i64
  %arrayidx10.14 = getelementptr inbounds ptr, ptr %146, i64 %idxprom9.14
  %148 = load ptr, ptr %arrayidx10.14, align 8
  %149 = load i32, ptr %pix_x, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr i16, ptr %148, i64 %150
  %arrayidx13.14 = getelementptr i8, ptr %151, i64 28
  store i16 %conv.14, ptr %arrayidx13.14, align 2
  %152 = load ptr, ptr %cof, align 8
  %153 = load ptr, ptr %152, align 8
  %arrayidx6.15 = getelementptr inbounds ptr, ptr %153, i64 %indvars.iv
  %154 = load ptr, ptr %arrayidx6.15, align 8
  %arrayidx8.15 = getelementptr inbounds i8, ptr %154, i64 60
  %155 = load i32, ptr %arrayidx8.15, align 4
  %conv.15 = trunc i32 %155 to i16
  %156 = load ptr, ptr %imgY, align 8
  %157 = load i32, ptr %pix_y, align 8
  %add.15 = add nsw i32 %157, %9
  %idxprom9.15 = sext i32 %add.15 to i64
  %arrayidx10.15 = getelementptr inbounds ptr, ptr %156, i64 %idxprom9.15
  %158 = load ptr, ptr %arrayidx10.15, align 8
  %159 = load i32, ptr %pix_x, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr i16, ptr %158, i64 %160
  %arrayidx13.15 = getelementptr i8, ptr %161, i64 30
  store i16 %conv.15, ptr %arrayidx13.15, align 2
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %for.end16, label %for.cond3.preheader

for.end16:                                        ; preds = %for.cond3.preheader
  %chroma_format_idc = getelementptr inbounds i8, ptr %2, i64 268
  %162 = load i32, ptr %chroma_format_idc, align 4
  %cmp17.not = icmp eq i32 %162, 0
  br i1 %cmp17.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.end16
  %separate_colour_plane_flag = getelementptr inbounds i8, ptr %1, i64 849280
  %163 = load i32, ptr %separate_colour_plane_flag, align 8
  %cmp19 = icmp eq i32 %163, 0
  br i1 %cmp19, label %for.cond21.preheader, label %if.end

for.cond21.preheader:                             ; preds = %land.lhs.true
  %mb_cr_size_y = getelementptr inbounds i8, ptr %1, i64 849112
  %mb_cr_size_x = getelementptr inbounds i8, ptr %1, i64 849108
  %imgUV = getelementptr inbounds i8, ptr %2, i64 136
  %pix_c_y = getelementptr inbounds i8, ptr %currMB, i64 56
  %pix_c_x = getelementptr inbounds i8, ptr %currMB, i64 52
  %164 = load i32, ptr %mb_cr_size_y, align 8
  %165 = icmp sgt i32 %164, 0
  br i1 %165, label %for.cond29.preheader.lr.ph, label %if.end

for.cond29.preheader.lr.ph:                       ; preds = %for.cond21.preheader
  %166 = load i32, ptr %mb_cr_size_x, align 4
  %167 = icmp sgt i32 %166, 0
  br i1 %167, label %for.cond29.preheader, label %if.end

for.cond29.preheader:                             ; preds = %for.cond29.preheader.lr.ph, %for.inc53
  %168 = phi i32 [ %183, %for.inc53 ], [ %164, %for.cond29.preheader.lr.ph ]
  %169 = phi i32 [ %184, %for.inc53 ], [ %166, %for.cond29.preheader.lr.ph ]
  %indvars.iv113 = phi i64 [ %indvars.iv.next114, %for.inc53 ], [ 0, %for.cond29.preheader.lr.ph ]
  %cmp30101 = icmp sgt i32 %169, 0
  br i1 %cmp30101, label %for.body32.lr.ph, label %for.inc53

for.body32.lr.ph:                                 ; preds = %for.cond29.preheader
  %170 = trunc nuw nsw i64 %indvars.iv113 to i32
  br label %for.body32

for.body32:                                       ; preds = %for.body32.lr.ph, %for.body32
  %indvars.iv110 = phi i64 [ 0, %for.body32.lr.ph ], [ %indvars.iv.next111, %for.body32 ]
  %171 = load ptr, ptr %cof, align 8
  %arrayidx36 = getelementptr inbounds i8, ptr %171, i64 8
  %172 = load ptr, ptr %arrayidx36, align 8
  %arrayidx38 = getelementptr inbounds ptr, ptr %172, i64 %indvars.iv113
  %173 = load ptr, ptr %arrayidx38, align 8
  %arrayidx40 = getelementptr inbounds i32, ptr %173, i64 %indvars.iv110
  %174 = load i32, ptr %arrayidx40, align 4
  %conv41 = trunc i32 %174 to i16
  %175 = load ptr, ptr %imgUV, align 8
  %176 = load ptr, ptr %175, align 8
  %177 = load i32, ptr %pix_c_y, align 8
  %add44 = add nsw i32 %177, %170
  %idxprom45 = sext i32 %add44 to i64
  %arrayidx46 = getelementptr inbounds ptr, ptr %176, i64 %idxprom45
  %178 = load ptr, ptr %arrayidx46, align 8
  %179 = load i32, ptr %pix_c_x, align 4
  %180 = trunc nuw nsw i64 %indvars.iv110 to i32
  %add47 = add nsw i32 %179, %180
  %idxprom48 = sext i32 %add47 to i64
  %arrayidx49 = getelementptr inbounds i16, ptr %178, i64 %idxprom48
  store i16 %conv41, ptr %arrayidx49, align 2
  %indvars.iv.next111 = add nuw nsw i64 %indvars.iv110, 1
  %181 = load i32, ptr %mb_cr_size_x, align 4
  %182 = sext i32 %181 to i64
  %cmp30 = icmp slt i64 %indvars.iv.next111, %182
  br i1 %cmp30, label %for.body32, label %for.inc53.loopexit

for.inc53.loopexit:                               ; preds = %for.body32
  %.pre = load i32, ptr %mb_cr_size_y, align 8
  br label %for.inc53

for.inc53:                                        ; preds = %for.inc53.loopexit, %for.cond29.preheader
  %183 = phi i32 [ %.pre, %for.inc53.loopexit ], [ %168, %for.cond29.preheader ]
  %184 = phi i32 [ %181, %for.inc53.loopexit ], [ %169, %for.cond29.preheader ]
  %indvars.iv.next114 = add nuw nsw i64 %indvars.iv113, 1
  %185 = sext i32 %183 to i64
  %cmp26 = icmp slt i64 %indvars.iv.next114, %185
  br i1 %cmp26, label %for.cond29.preheader, label %for.inc56, !llvm.loop !15

for.inc56:                                        ; preds = %for.inc53
  %cmp26103.1 = icmp sgt i32 %183, 0
  br i1 %cmp26103.1, label %for.cond29.preheader.lr.ph.1, label %if.end

for.cond29.preheader.lr.ph.1:                     ; preds = %for.inc56
  %.pr = load i32, ptr %mb_cr_size_x, align 4
  %186 = icmp sgt i32 %.pr, 0
  br i1 %186, label %for.cond29.preheader.1, label %if.end

for.cond29.preheader.1:                           ; preds = %for.cond29.preheader.lr.ph.1, %for.inc53.1
  %187 = phi i32 [ %202, %for.inc53.1 ], [ %183, %for.cond29.preheader.lr.ph.1 ]
  %188 = phi i32 [ %203, %for.inc53.1 ], [ %.pr, %for.cond29.preheader.lr.ph.1 ]
  %indvars.iv113.1 = phi i64 [ %indvars.iv.next114.1, %for.inc53.1 ], [ 0, %for.cond29.preheader.lr.ph.1 ]
  %cmp30101.1 = icmp sgt i32 %188, 0
  br i1 %cmp30101.1, label %for.body32.lr.ph.1, label %for.inc53.1

for.body32.lr.ph.1:                               ; preds = %for.cond29.preheader.1
  %189 = trunc nuw nsw i64 %indvars.iv113.1 to i32
  br label %for.body32.1

for.body32.1:                                     ; preds = %for.body32.1, %for.body32.lr.ph.1
  %indvars.iv110.1 = phi i64 [ 0, %for.body32.lr.ph.1 ], [ %indvars.iv.next111.1, %for.body32.1 ]
  %190 = load ptr, ptr %cof, align 8
  %arrayidx36.1 = getelementptr inbounds i8, ptr %190, i64 16
  %191 = load ptr, ptr %arrayidx36.1, align 8
  %arrayidx38.1 = getelementptr inbounds ptr, ptr %191, i64 %indvars.iv113.1
  %192 = load ptr, ptr %arrayidx38.1, align 8
  %arrayidx40.1 = getelementptr inbounds i32, ptr %192, i64 %indvars.iv110.1
  %193 = load i32, ptr %arrayidx40.1, align 4
  %conv41.1 = trunc i32 %193 to i16
  %194 = load ptr, ptr %imgUV, align 8
  %arrayidx43.1 = getelementptr inbounds i8, ptr %194, i64 8
  %195 = load ptr, ptr %arrayidx43.1, align 8
  %196 = load i32, ptr %pix_c_y, align 8
  %add44.1 = add nsw i32 %196, %189
  %idxprom45.1 = sext i32 %add44.1 to i64
  %arrayidx46.1 = getelementptr inbounds ptr, ptr %195, i64 %idxprom45.1
  %197 = load ptr, ptr %arrayidx46.1, align 8
  %198 = load i32, ptr %pix_c_x, align 4
  %199 = trunc nuw nsw i64 %indvars.iv110.1 to i32
  %add47.1 = add nsw i32 %198, %199
  %idxprom48.1 = sext i32 %add47.1 to i64
  %arrayidx49.1 = getelementptr inbounds i16, ptr %197, i64 %idxprom48.1
  store i16 %conv41.1, ptr %arrayidx49.1, align 2
  %indvars.iv.next111.1 = add nuw nsw i64 %indvars.iv110.1, 1
  %200 = load i32, ptr %mb_cr_size_x, align 4
  %201 = sext i32 %200 to i64
  %cmp30.1 = icmp slt i64 %indvars.iv.next111.1, %201
  br i1 %cmp30.1, label %for.body32.1, label %for.inc53.loopexit.1

for.inc53.loopexit.1:                             ; preds = %for.body32.1
  %.pre119 = load i32, ptr %mb_cr_size_y, align 8
  br label %for.inc53.1

for.inc53.1:                                      ; preds = %for.inc53.loopexit.1, %for.cond29.preheader.1
  %202 = phi i32 [ %.pre119, %for.inc53.loopexit.1 ], [ %187, %for.cond29.preheader.1 ]
  %203 = phi i32 [ %200, %for.inc53.loopexit.1 ], [ %188, %for.cond29.preheader.1 ]
  %indvars.iv.next114.1 = add nuw nsw i64 %indvars.iv113.1, 1
  %204 = sext i32 %202 to i64
  %cmp26.1 = icmp slt i64 %indvars.iv.next114.1, %204
  br i1 %cmp26.1, label %for.cond29.preheader.1, label %if.end, !llvm.loop !15

if.end:                                           ; preds = %for.inc53.1, %for.cond29.preheader.lr.ph, %for.inc56, %for.cond29.preheader.lr.ph.1, %for.cond21.preheader, %land.lhs.true, %for.end16
  tail call void @update_qp(ptr noundef nonnull %currMB, i32 noundef 0) #7
  %nz_coeff = getelementptr inbounds i8, ptr %1, i64 848832
  %205 = load ptr, ptr %nz_coeff, align 8
  %mbAddrX = getelementptr inbounds i8, ptr %currMB, i64 24
  %206 = load i32, ptr %mbAddrX, align 8
  %idxprom59 = sext i32 %206 to i64
  %arrayidx60 = getelementptr inbounds ptr, ptr %205, i64 %idxprom59
  %207 = load ptr, ptr %arrayidx60, align 8
  %208 = load ptr, ptr %207, align 8
  %209 = load ptr, ptr %208, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %209, i8 16, i64 48, i1 false)
  %skip_flag = getelementptr inbounds i8, ptr %currMB, i64 374
  store i8 0, ptr %skip_flag, align 2
  %cbp_blk = getelementptr inbounds i8, ptr %currMB, i64 288
  store i64 65535, ptr %cbp_blk, align 8
  %last_dquant = getelementptr inbounds i8, ptr %0, i64 212
  store i32 0, ptr %last_dquant, align 4
  %is_reset_coeff = getelementptr inbounds i8, ptr %0, i64 1240
  store i32 0, ptr %is_reset_coeff, align 8
  ret i32 1
}

declare void @update_qp(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

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
!10 = distinct !{!10, !7, !6}
!11 = distinct !{!11, !6, !7}
!12 = distinct !{!12, !7, !6}
!13 = distinct !{!13, !6, !7}
!14 = distinct !{!14, !7, !6}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.unswitch.partial.disable"}
