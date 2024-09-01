; ModuleID = 'x264_src/encoder/cabac.c'
source_filename = "x264_src/encoder/cabac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@x264_mb_pred_mode4x4_fix = internal unnamed_addr constant [13 x i8] c"\FF\00\01\02\03\04\05\06\07\08\02\02\02", align 1
@x264_scan8 = internal unnamed_addr constant [27 x i32] [i32 12, i32 13, i32 20, i32 21, i32 14, i32 15, i32 22, i32 23, i32 28, i32 29, i32 36, i32 37, i32 30, i32 31, i32 38, i32 39, i32 9, i32 10, i32 17, i32 18, i32 33, i32 34, i32 41, i32 42, i32 44, i32 46, i32 47], align 16
@block_idx_x = internal unnamed_addr constant [16 x i8] c"\00\01\00\01\02\03\02\03\00\01\00\01\02\03\02\03", align 16
@block_idx_y = internal unnamed_addr constant [16 x i8] c"\00\00\01\01\00\00\01\01\02\02\03\03\02\02\03\03", align 16
@x264_mb_partition_listX_table = internal unnamed_addr constant [2 x [17 x i8]] [[17 x i8] c"\01\01\01\01\00\00\00\00\01\01\01\01\00\00\00\00\00", [17 x i8] c"\00\00\00\00\01\01\01\01\01\01\01\01\00\00\00\00\00"], align 16
@x264_mb_type_list_table = internal unnamed_addr constant [19 x [2 x [2 x i8]]] [[2 x [2 x i8]] zeroinitializer, [2 x [2 x i8]] zeroinitializer, [2 x [2 x i8]] zeroinitializer, [2 x [2 x i8]] zeroinitializer, [2 x [2 x i8]] [[2 x i8] c"\01\01", [2 x i8] zeroinitializer], [2 x [2 x i8]] zeroinitializer, [2 x [2 x i8]] [[2 x i8] c"\01\01", [2 x i8] zeroinitializer], [2 x [2 x i8]] zeroinitializer, [2 x [2 x i8]] [[2 x i8] c"\01\01", [2 x i8] zeroinitializer], [2 x [2 x i8]] [[2 x i8] c"\01\00", [2 x i8] c"\00\01"], [2 x [2 x i8]] [[2 x i8] c"\01\01", [2 x i8] c"\00\01"], [2 x [2 x i8]] [[2 x i8] c"\00\01", [2 x i8] c"\01\00"], [2 x [2 x i8]] [[2 x i8] zeroinitializer, [2 x i8] c"\01\01"], [2 x [2 x i8]] [[2 x i8] c"\00\01", [2 x i8] c"\01\01"], [2 x [2 x i8]] [[2 x i8] c"\01\01", [2 x i8] c"\01\00"], [2 x [2 x i8]] [[2 x i8] c"\01\00", [2 x i8] c"\01\01"], [2 x [2 x i8]] [[2 x i8] c"\01\01", [2 x i8] c"\01\01"], [2 x [2 x i8]] zeroinitializer, [2 x [2 x i8]] zeroinitializer], align 16
@x264_cabac_mb_type.i_mb_bits = internal unnamed_addr constant [27 x i8] c"1)\045-\00Cc\00=/\009%\06Ss\00Kk\00[{\00Gg!", align 16
@x264_mb_pred_mode16x16_fix = internal unnamed_addr constant [7 x i8] c"\00\01\02\03\02\02\02", align 1
@x264_cabac_mb_mvd_cpn.ctxes = internal unnamed_addr constant [8 x i8] c"\03\04\05\06\06\06\06\06", align 1
@x264_mb_transform_8x8_allowed.partition_tab = internal unnamed_addr constant [19 x i8] c"\00\00\00\00\01\02\00\01\01\01\01\01\01\01\01\01\01\01\00", align 16
@significant_coeff_flag_offset = internal unnamed_addr constant [2 x [6 x i16]] [[6 x i16] [i16 105, i16 120, i16 134, i16 149, i16 152, i16 402], [6 x i16] [i16 277, i16 292, i16 306, i16 321, i16 324, i16 436]], align 16
@last_coeff_flag_offset = internal unnamed_addr constant [2 x [6 x i16]] [[6 x i16] [i16 166, i16 181, i16 195, i16 210, i16 213, i16 417], [6 x i16] [i16 338, i16 353, i16 367, i16 382, i16 385, i16 451]], align 16
@coeff_abs_level_m1_offset = internal unnamed_addr constant [6 x i16] [i16 227, i16 237, i16 247, i16 257, i16 266, i16 426], align 2
@significant_coeff_flag_offset_8x8 = internal unnamed_addr constant [2 x [63 x i8]] [[63 x i8] c"\00\01\02\03\04\05\05\04\04\03\03\04\04\04\05\05\04\04\04\04\03\03\06\07\07\07\08\09\0A\09\08\07\07\06\0B\0C\0D\0B\06\07\08\09\0E\0A\09\08\06\0B\0C\0D\0B\06\09\0E\0A\09\0B\0C\0D\0B\0E\0A\0C", [63 x i8] c"\00\01\01\02\02\03\03\04\05\06\07\07\07\08\04\05\06\09\0A\0A\08\0B\0C\0B\09\09\0A\0A\08\0B\0C\0B\09\09\0A\0A\08\0B\0C\0B\09\09\0A\0A\08\0D\0D\09\09\0A\0A\08\0D\0D\09\09\0A\0A\0E\0E\0E\0E\0E"], align 16
@last_coeff_flag_offset_8x8 = internal unnamed_addr constant [63 x i8] c"\00\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\03\03\03\03\03\03\03\03\04\04\04\04\04\04\04\04\05\05\05\05\06\06\06\06\07\07\07\07\08\08\08", align 16
@count_cat_m1 = internal unnamed_addr constant [5 x i8] c"\0F\0E\0F\03\0E", align 1
@coeff_abs_level1_ctx = internal unnamed_addr constant [8 x i8] c"\01\02\03\04\00\00\00\00", align 1
@coeff_abs_levelgt1_ctx = internal unnamed_addr constant [8 x i8] c"\05\05\05\05\06\07\08\09", align 1
@coeff_abs_level_transition = internal unnamed_addr constant [2 x [8 x i8]] [[8 x i8] c"\01\02\03\03\04\05\06\07", [8 x i8] c"\04\04\04\04\05\06\07\07"], align 16

; Function Attrs: nounwind uwtable
define dso_local void @x264_cabac_mb_skip(ptr noundef %h, i32 noundef %b_skip) local_unnamed_addr #0 {
entry:
  %i_neighbour = getelementptr inbounds i8, ptr %h, i64 16488
  %0 = load i32, ptr %i_neighbour, align 8
  %and = and i32 %0, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %i_mb_type_left = getelementptr inbounds i8, ptr %h, i64 16584
  %1 = load i32, ptr %i_mb_type_left, align 8
  %cmp = icmp ne i32 %1, 6
  %cmp4 = icmp ne i32 %1, 18
  %narrow = and i1 %cmp, %cmp4
  %lnot = zext i1 %narrow to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %land.ext = phi i32 [ 0, %entry ], [ %lnot, %land.rhs ]
  %and7 = and i32 %0, 2
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %land.end18, label %land.rhs9

land.rhs9:                                        ; preds = %land.end
  %i_mb_type_top = getelementptr inbounds i8, ptr %h, i64 16580
  %2 = load i32, ptr %i_mb_type_top, align 4
  %cmp11 = icmp ne i32 %2, 6
  %cmp15 = icmp ne i32 %2, 18
  %narrow30 = and i1 %cmp11, %cmp15
  %lnot17 = zext i1 %narrow30 to i32
  br label %land.end18

land.end18:                                       ; preds = %land.rhs9, %land.end
  %land.ext19 = phi i32 [ 0, %land.end ], [ %lnot17, %land.rhs9 ]
  %add = add nuw nsw i32 %land.ext19, %land.ext
  %i_type = getelementptr inbounds i8, ptr %h, i64 7248
  %3 = load i32, ptr %i_type, align 16
  %cmp20 = icmp eq i32 %3, 0
  %cond = select i1 %cmp20, i32 11, i32 24
  %add21 = add nuw nsw i32 %add, %cond
  %cabac = getelementptr inbounds i8, ptr %h, i64 13904
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cabac, i32 noundef %add21, i32 noundef %b_skip) #7
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare void @x264_cabac_encode_decision_c(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @x264_macroblock_write_cabac(ptr noundef %h, ptr noundef %cb) local_unnamed_addr #0 {
entry:
  %mvp.i1549 = alloca [2 x i16], align 4
  %mvp.i1499 = alloca [2 x i16], align 4
  %mvp.i1451 = alloca [2 x i16], align 4
  %mvp.i1403 = alloca [2 x i16], align 4
  %mvp.i1353 = alloca [2 x i16], align 4
  %mvp.i1296 = alloca [2 x i16], align 4
  %mvp.i = alloca [2 x i16], align 4
  %mvp.i590.i = alloca [2 x i16], align 4
  %mvp.i534.i = alloca [2 x i16], align 4
  %mvp.i478.i = alloca [2 x i16], align 4
  %mvp.i422.i = alloca [2 x i16], align 4
  %mvp.i365.i = alloca [2 x i16], align 4
  %mvp.i309.i = alloca [2 x i16], align 4
  %mvp.i253.i = alloca [2 x i16], align 4
  %mvp.i197.i = alloca [2 x i16], align 4
  %mvp.i.i = alloca [2 x i16], align 4
  %i_type = getelementptr inbounds i8, ptr %h, i64 17384
  %0 = load i32, ptr %i_type, align 8
  %p.i = getelementptr inbounds i8, ptr %cb, i64 24
  %1 = load ptr, ptr %p.i, align 8
  %p_start.i = getelementptr inbounds i8, ptr %cb, i64 16
  %2 = load ptr, ptr %p_start.i, align 16
  %sub.ptr.lhs.cast.i = ptrtoint ptr %1 to i64
  %sub.ptr.rhs.cast.i = ptrtoint ptr %2 to i64
  %sub.ptr.sub.i.neg = sub i64 %sub.ptr.rhs.cast.i, %sub.ptr.lhs.cast.i
  %i_bytes_outstanding.i = getelementptr inbounds i8, ptr %cb, i64 12
  %3 = load i32, ptr %i_bytes_outstanding.i, align 4
  %i_queue.i = getelementptr inbounds i8, ptr %cb, i64 8
  %4 = load i32, ptr %i_queue.i, align 8
  %.neg1770 = trunc i64 %sub.ptr.sub.i.neg to i32
  %add.tr.i.neg = sub i32 %.neg1770, %3
  %.neg1771 = shl i32 %add.tr.i.neg, 3
  %conv3.i.neg1772 = sub i32 %.neg1771, %4
  %b_mbaff.i = getelementptr inbounds i8, ptr %h, i64 7268
  %5 = load i32, ptr %b_mbaff.i, align 4
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %if.end.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %entry
  %i_mb_y.i = getelementptr inbounds i8, ptr %h, i64 16388
  %6 = load i32, ptr %i_mb_y.i, align 4
  %and.i = and i32 %6, 1
  %tobool2.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool2.not.i, label %if.then.i, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %land.lhs.true.i
  %type.i = getelementptr inbounds i8, ptr %h, i64 16616
  %7 = load ptr, ptr %type.i, align 8
  %i_mb_xy.i = getelementptr inbounds i8, ptr %h, i64 16392
  %8 = load i32, ptr %i_mb_xy.i, align 8
  %i_mb_stride.i = getelementptr inbounds i8, ptr %h, i64 16372
  %9 = load i32, ptr %i_mb_stride.i, align 4
  %sub.i = sub nsw i32 %8, %9
  %idxprom.i = sext i32 %sub.i to i64
  %arrayidx.i = getelementptr inbounds i8, ptr %7, i64 %idxprom.i
  %10 = load i8, ptr %arrayidx.i, align 1
  switch i8 %10, label %if.end.i [
    i8 6, label %if.then.i
    i8 18, label %if.then.i
  ]

if.then.i:                                        ; preds = %lor.lhs.false.i, %lor.lhs.false.i, %land.lhs.true.i
  %i_neighbour_interlaced.i = getelementptr inbounds i8, ptr %h, i64 25772
  %11 = load i32, ptr %i_neighbour_interlaced.i, align 4
  %add.i = add nsw i32 %11, 70
  %b_interlaced.i = getelementptr inbounds i8, ptr %h, i64 16436
  %12 = load i32, ptr %b_interlaced.i, align 4
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef %add.i, i32 noundef %12) #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %lor.lhs.false.i, %entry
  %i_type23.i = getelementptr inbounds i8, ptr %h, i64 7248
  %13 = load i32, ptr %i_type23.i, align 16
  switch i32 %13, label %if.else75.i [
    i32 2, label %if.then26.i
    i32 0, label %if.then52.i
  ]

if.then26.i:                                      ; preds = %if.end.i
  %i_neighbour.i = getelementptr inbounds i8, ptr %h, i64 16488
  %14 = load i32, ptr %i_neighbour.i, align 8
  %and28.i = and i32 %14, 1
  %tobool29.not.i = icmp eq i32 %and28.i, 0
  br i1 %tobool29.not.i, label %if.end35.i, label %land.lhs.true30.i

land.lhs.true30.i:                                ; preds = %if.then26.i
  %i_mb_type_left.i = getelementptr inbounds i8, ptr %h, i64 16584
  %15 = load i32, ptr %i_mb_type_left.i, align 8
  %cmp32.not.i = icmp ne i32 %15, 0
  %spec.select.i = zext i1 %cmp32.not.i to i32
  br label %if.end35.i

if.end35.i:                                       ; preds = %land.lhs.true30.i, %if.then26.i
  %ctx.0.i = phi i32 [ 0, %if.then26.i ], [ %spec.select.i, %land.lhs.true30.i ]
  %and38.i = and i32 %14, 2
  %tobool39.not.i = icmp eq i32 %and38.i, 0
  br i1 %tobool39.not.i, label %if.end46.i, label %land.lhs.true40.i

land.lhs.true40.i:                                ; preds = %if.end35.i
  %i_mb_type_top.i = getelementptr inbounds i8, ptr %h, i64 16580
  %16 = load i32, ptr %i_mb_type_top.i, align 4
  %cmp42.not.i = icmp ne i32 %16, 0
  %inc45.i = zext i1 %cmp42.not.i to i32
  %spec.select259.i = add nuw nsw i32 %ctx.0.i, %inc45.i
  br label %if.end46.i

if.end46.i:                                       ; preds = %land.lhs.true40.i, %if.end35.i
  %ctx.1.i = phi i32 [ %ctx.0.i, %if.end35.i ], [ %spec.select259.i, %land.lhs.true40.i ]
  %add47.i = add nuw nsw i32 %ctx.1.i, 3
  tail call fastcc void @x264_cabac_mb_type_intra(ptr noundef nonnull %h, ptr noundef nonnull %cb, i32 noundef %0, i32 noundef %add47.i, i32 noundef 6, i32 noundef 7, i32 noundef 8, i32 noundef 9, i32 noundef 10)
  br label %x264_cabac_mb_type.exit

if.then52.i:                                      ; preds = %if.end.i
  switch i32 %0, label %if.else72.i [
    i32 4, label %if.else.thread
    i32 5, label %if.else.thread1849
  ]

if.else.thread:                                   ; preds = %if.then52.i
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef 14, i32 noundef 0) #7
  %i_partition.i = getelementptr inbounds i8, ptr %h, i64 17388
  %17 = load i32, ptr %i_partition.i, align 4
  %cmp57.i = icmp ne i32 %17, 16
  %conv58.i = zext i1 %cmp57.i to i32
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef 15, i32 noundef %conv58.i) #7
  %18 = load i32, ptr %i_partition.i, align 4
  %cmp61.i = icmp eq i32 %18, 16
  %sub63.i = select i1 %cmp61.i, i32 16, i32 17
  %cmp66.i = icmp eq i32 %18, 14
  %conv67.i = zext i1 %cmp66.i to i32
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef %sub63.i, i32 noundef %conv67.i) #7
  br label %if.then76

if.else.thread1849:                               ; preds = %if.then52.i
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef 14, i32 noundef 0) #7
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef 15, i32 noundef 0) #7
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef 16, i32 noundef 1) #7
  br label %for.cond149.preheader

if.else72.i:                                      ; preds = %if.then52.i
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef 14, i32 noundef 1) #7
  tail call fastcc void @x264_cabac_mb_type_intra(ptr noundef nonnull %h, ptr noundef nonnull %cb, i32 noundef %0, i32 noundef 17, i32 noundef 18, i32 noundef 19, i32 noundef 19, i32 noundef 20, i32 noundef 20)
  br label %x264_cabac_mb_type.exit

if.else75.i:                                      ; preds = %if.end.i
  %i_neighbour78.i = getelementptr inbounds i8, ptr %h, i64 16488
  %19 = load i32, ptr %i_neighbour78.i, align 8
  %and79.i = and i32 %19, 1
  %tobool80.not.i = icmp eq i32 %and79.i, 0
  br i1 %tobool80.not.i, label %if.end93.i, label %land.lhs.true81.i

land.lhs.true81.i:                                ; preds = %if.else75.i
  %i_mb_type_left83.i = getelementptr inbounds i8, ptr %h, i64 16584
  %20 = load i32, ptr %i_mb_type_left83.i, align 8
  %switch.selectcmp.case1.i = icmp ne i32 %20, 18
  %switch.selectcmp.case2.i = icmp ne i32 %20, 7
  %switch.selectcmp.not.i = and i1 %switch.selectcmp.case1.i, %switch.selectcmp.case2.i
  %21 = zext i1 %switch.selectcmp.not.i to i32
  br label %if.end93.i

if.end93.i:                                       ; preds = %land.lhs.true81.i, %if.else75.i
  %ctx76.0.i = phi i32 [ 0, %if.else75.i ], [ %21, %land.lhs.true81.i ]
  %and96.i = and i32 %19, 2
  %tobool97.not.i = icmp eq i32 %and96.i, 0
  br i1 %tobool97.not.i, label %if.end110.i, label %land.lhs.true98.i

land.lhs.true98.i:                                ; preds = %if.end93.i
  %i_mb_type_top100.i = getelementptr inbounds i8, ptr %h, i64 16580
  %22 = load i32, ptr %i_mb_type_top100.i, align 4
  switch i32 %22, label %if.then108.i [
    i32 18, label %if.end110.i
    i32 7, label %if.end110.i
  ]

if.then108.i:                                     ; preds = %land.lhs.true98.i
  %inc109.i = add nuw nsw i32 %ctx76.0.i, 1
  br label %if.end110.i

if.end110.i:                                      ; preds = %if.then108.i, %land.lhs.true98.i, %land.lhs.true98.i, %if.end93.i
  %ctx76.1.i = phi i32 [ %inc109.i, %if.then108.i ], [ %ctx76.0.i, %land.lhs.true98.i ], [ %ctx76.0.i, %if.end93.i ], [ %ctx76.0.i, %land.lhs.true98.i ]
  %cmp111.not.i = icmp eq i32 %0, 7
  %add114.i = add nuw nsw i32 %ctx76.1.i, 27
  br i1 %cmp111.not.i, label %if.else.thread1855, label %if.end115.i

if.else.thread1855:                               ; preds = %if.end110.i
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef %add114.i, i32 noundef 0) #7
  br label %if.end467

if.end115.i:                                      ; preds = %if.end110.i
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef %add114.i, i32 noundef 1) #7
  %cmp117.i = icmp eq i32 %0, 17
  br i1 %cmp117.i, label %if.else.thread1852, label %if.else120.i

if.else.thread1852:                               ; preds = %if.end115.i
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef 30, i32 noundef 1) #7
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef 31, i32 noundef 1) #7
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef 32, i32 noundef 1) #7
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef 32, i32 noundef 1) #7
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef 32, i32 noundef 1) #7
  br label %for.cond183.preheader

if.else120.i:                                     ; preds = %if.end115.i
  %or.cond170.i = icmp ult i32 %0, 4
  br i1 %or.cond170.i, label %if.then132.i, label %if.else133.i

if.then132.i:                                     ; preds = %if.else120.i
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef 30, i32 noundef 1) #7
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef 31, i32 noundef 1) #7
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef 32, i32 noundef 1) #7
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef 32, i32 noundef 0) #7
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef 32, i32 noundef 1) #7
  tail call fastcc void @x264_cabac_mb_type_intra(ptr noundef nonnull %h, ptr noundef nonnull %cb, i32 noundef %0, i32 noundef 32, i32 noundef 33, i32 noundef 34, i32 noundef 34, i32 noundef 35, i32 noundef 35)
  br label %x264_cabac_mb_type.exit

if.else133.i:                                     ; preds = %if.else120.i
  %23 = mul i32 %0, 3
  %i_partition136.i = getelementptr inbounds i8, ptr %h, i64 17388
  %24 = load i32, ptr %i_partition136.i, align 4
  %sub137.i = add i32 %23, -38
  %add138.i = add i32 %sub137.i, %24
  %idxprom139.i = sext i32 %add138.i to i64
  %arrayidx140.i = getelementptr inbounds [27 x i8], ptr @x264_cabac_mb_type.i_mb_bits, i64 0, i64 %idxprom139.i
  %25 = load i8, ptr %arrayidx140.i, align 1
  %conv141.i = zext i8 %25 to i32
  %and142.i = and i32 %conv141.i, 1
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef 30, i32 noundef %and142.i) #7
  %sub144.i = sub nuw nsw i32 32, %and142.i
  %shr.i = lshr i32 %conv141.i, 1
  %and145.i = and i32 %shr.i, 1
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef %sub144.i, i32 noundef %and145.i) #7
  %shr146.i = lshr i32 %conv141.i, 2
  %cmp147.not.i = icmp eq i32 %shr146.i, 1
  br i1 %cmp147.not.i, label %if.else, label %if.then149.i

if.then149.i:                                     ; preds = %if.else133.i
  %and150.i = and i32 %shr146.i, 1
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef 32, i32 noundef %and150.i) #7
  %shr151.i = lshr i32 %conv141.i, 3
  %and152.i = and i32 %shr151.i, 1
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef 32, i32 noundef %and152.i) #7
  %shr153.i = lshr i32 %conv141.i, 4
  %and154.i = and i32 %shr153.i, 1
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef 32, i32 noundef %and154.i) #7
  %shr155.i = lshr i32 %conv141.i, 5
  %cmp156.not.i = icmp eq i32 %shr155.i, 1
  br i1 %cmp156.not.i, label %if.else, label %if.then158.i

if.then158.i:                                     ; preds = %if.then149.i
  %and159.i = and i32 %shr155.i, 1
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef 32, i32 noundef %and159.i) #7
  br label %if.else

x264_cabac_mb_type.exit:                          ; preds = %if.end46.i, %if.else72.i, %if.then132.i
  %cmp = icmp eq i32 %0, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %x264_cabac_mb_type.exit
  %26 = load ptr, ptr %p.i, align 8
  %27 = load ptr, ptr %p_start.i, align 16
  %sub.ptr.lhs.cast.i993 = ptrtoint ptr %26 to i64
  %sub.ptr.rhs.cast.i994 = ptrtoint ptr %27 to i64
  %sub.ptr.sub.i995 = sub i64 %sub.ptr.lhs.cast.i993, %sub.ptr.rhs.cast.i994
  %28 = load i32, ptr %i_bytes_outstanding.i, align 4
  %29 = load i32, ptr %i_queue.i, align 8
  %30 = trunc i64 %sub.ptr.sub.i995 to i32
  %add.tr.i998 = add i32 %28, %30
  %31 = shl i32 %add.tr.i998, 3
  %conv3.i999 = add i32 %31, %29
  %stat = getelementptr inbounds i8, ptr %h, i64 26712
  %32 = load i32, ptr %stat, align 8
  %sub = add i32 %32, %conv3.i.neg1772
  %add = add i32 %sub, %conv3.i999
  store i32 %add, ptr %stat, align 8
  %33 = load ptr, ptr %p.i, align 8
  %p_fenc = getelementptr inbounds i8, ptr %h, i64 21344
  %34 = load ptr, ptr %p_fenc, align 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %33, ptr noundef nonnull align 1 dereferenceable(256) %34, i64 256, i1 false)
  %35 = load ptr, ptr %p.i, align 8
  %add.ptr = getelementptr inbounds i8, ptr %35, i64 256
  store ptr %add.ptr, ptr %p.i, align 8
  %arrayidx10 = getelementptr inbounds i8, ptr %h, i64 21352
  %36 = load ptr, ptr %arrayidx10, align 8
  %37 = load i64, ptr %36, align 1
  store i64 %37, ptr %add.ptr, align 1
  %38 = load ptr, ptr %p.i, align 8
  %add.ptr6.1 = getelementptr inbounds i8, ptr %38, i64 8
  %39 = load ptr, ptr %arrayidx10, align 8
  %add.ptr13.1 = getelementptr inbounds i8, ptr %39, i64 16
  %40 = load i64, ptr %add.ptr13.1, align 1
  store i64 %40, ptr %add.ptr6.1, align 1
  %41 = load ptr, ptr %p.i, align 8
  %add.ptr6.2 = getelementptr inbounds i8, ptr %41, i64 16
  %42 = load ptr, ptr %arrayidx10, align 8
  %add.ptr13.2 = getelementptr inbounds i8, ptr %42, i64 32
  %43 = load i64, ptr %add.ptr13.2, align 1
  store i64 %43, ptr %add.ptr6.2, align 1
  %44 = load ptr, ptr %p.i, align 8
  %add.ptr6.3 = getelementptr inbounds i8, ptr %44, i64 24
  %45 = load ptr, ptr %arrayidx10, align 8
  %add.ptr13.3 = getelementptr inbounds i8, ptr %45, i64 48
  %46 = load i64, ptr %add.ptr13.3, align 1
  store i64 %46, ptr %add.ptr6.3, align 1
  %47 = load ptr, ptr %p.i, align 8
  %add.ptr6.4 = getelementptr inbounds i8, ptr %47, i64 32
  %48 = load ptr, ptr %arrayidx10, align 8
  %add.ptr13.4 = getelementptr inbounds i8, ptr %48, i64 64
  %49 = load i64, ptr %add.ptr13.4, align 1
  store i64 %49, ptr %add.ptr6.4, align 1
  %50 = load ptr, ptr %p.i, align 8
  %add.ptr6.5 = getelementptr inbounds i8, ptr %50, i64 40
  %51 = load ptr, ptr %arrayidx10, align 8
  %add.ptr13.5 = getelementptr inbounds i8, ptr %51, i64 80
  %52 = load i64, ptr %add.ptr13.5, align 1
  store i64 %52, ptr %add.ptr6.5, align 1
  %53 = load ptr, ptr %p.i, align 8
  %add.ptr6.6 = getelementptr inbounds i8, ptr %53, i64 48
  %54 = load ptr, ptr %arrayidx10, align 8
  %add.ptr13.6 = getelementptr inbounds i8, ptr %54, i64 96
  %55 = load i64, ptr %add.ptr13.6, align 1
  store i64 %55, ptr %add.ptr6.6, align 1
  %56 = load ptr, ptr %p.i, align 8
  %add.ptr6.7 = getelementptr inbounds i8, ptr %56, i64 56
  %57 = load ptr, ptr %arrayidx10, align 8
  %add.ptr13.7 = getelementptr inbounds i8, ptr %57, i64 112
  %58 = load i64, ptr %add.ptr13.7, align 1
  store i64 %58, ptr %add.ptr6.7, align 1
  %59 = load ptr, ptr %p.i, align 8
  %add.ptr15 = getelementptr inbounds i8, ptr %59, i64 64
  store ptr %add.ptr15, ptr %p.i, align 8
  %arrayidx28 = getelementptr inbounds i8, ptr %h, i64 21360
  %60 = load ptr, ptr %arrayidx28, align 16
  %61 = load i64, ptr %60, align 1
  store i64 %61, ptr %add.ptr15, align 1
  %62 = load ptr, ptr %p.i, align 8
  %add.ptr24.1 = getelementptr inbounds i8, ptr %62, i64 8
  %63 = load ptr, ptr %arrayidx28, align 16
  %add.ptr31.1 = getelementptr inbounds i8, ptr %63, i64 16
  %64 = load i64, ptr %add.ptr31.1, align 1
  store i64 %64, ptr %add.ptr24.1, align 1
  %65 = load ptr, ptr %p.i, align 8
  %add.ptr24.2 = getelementptr inbounds i8, ptr %65, i64 16
  %66 = load ptr, ptr %arrayidx28, align 16
  %add.ptr31.2 = getelementptr inbounds i8, ptr %66, i64 32
  %67 = load i64, ptr %add.ptr31.2, align 1
  store i64 %67, ptr %add.ptr24.2, align 1
  %68 = load ptr, ptr %p.i, align 8
  %add.ptr24.3 = getelementptr inbounds i8, ptr %68, i64 24
  %69 = load ptr, ptr %arrayidx28, align 16
  %add.ptr31.3 = getelementptr inbounds i8, ptr %69, i64 48
  %70 = load i64, ptr %add.ptr31.3, align 1
  store i64 %70, ptr %add.ptr24.3, align 1
  %71 = load ptr, ptr %p.i, align 8
  %add.ptr24.4 = getelementptr inbounds i8, ptr %71, i64 32
  %72 = load ptr, ptr %arrayidx28, align 16
  %add.ptr31.4 = getelementptr inbounds i8, ptr %72, i64 64
  %73 = load i64, ptr %add.ptr31.4, align 1
  store i64 %73, ptr %add.ptr24.4, align 1
  %74 = load ptr, ptr %p.i, align 8
  %add.ptr24.5 = getelementptr inbounds i8, ptr %74, i64 40
  %75 = load ptr, ptr %arrayidx28, align 16
  %add.ptr31.5 = getelementptr inbounds i8, ptr %75, i64 80
  %76 = load i64, ptr %add.ptr31.5, align 1
  store i64 %76, ptr %add.ptr24.5, align 1
  %77 = load ptr, ptr %p.i, align 8
  %add.ptr24.6 = getelementptr inbounds i8, ptr %77, i64 48
  %78 = load ptr, ptr %arrayidx28, align 16
  %add.ptr31.6 = getelementptr inbounds i8, ptr %78, i64 96
  %79 = load i64, ptr %add.ptr31.6, align 1
  store i64 %79, ptr %add.ptr24.6, align 1
  %80 = load ptr, ptr %p.i, align 8
  %add.ptr24.7 = getelementptr inbounds i8, ptr %80, i64 56
  %81 = load ptr, ptr %arrayidx28, align 16
  %add.ptr31.7 = getelementptr inbounds i8, ptr %81, i64 112
  %82 = load i64, ptr %add.ptr31.7, align 1
  store i64 %82, ptr %add.ptr24.7, align 1
  %83 = load ptr, ptr %p.i, align 8
  %add.ptr36 = getelementptr inbounds i8, ptr %83, i64 64
  store ptr %add.ptr36, ptr %p.i, align 8
  tail call void @x264_cabac_encode_init_core(ptr noundef nonnull %cb) #7
  br label %cleanup

if.end:                                           ; preds = %x264_cabac_mb_type.exit
  %cmp45 = icmp eq i32 %0, 2
  %or.cond691 = icmp ult i32 %0, 3
  br i1 %or.cond691, label %if.then48, label %if.else

if.then48:                                        ; preds = %if.end
  %pps = getelementptr inbounds i8, ptr %h, i64 3328
  %84 = load ptr, ptr %pps, align 16
  %b_transform_8x8_mode = getelementptr inbounds i8, ptr %84, i64 60
  %85 = load i32, ptr %b_transform_8x8_mode, align 4
  %tobool = icmp ne i32 %85, 0
  %cmp49 = icmp ne i32 %0, 2
  %or.cond693 = select i1 %tobool, i1 %cmp49, i1 false
  br i1 %or.cond693, label %if.end51.thread, label %if.end51

if.end51.thread:                                  ; preds = %if.then48
  %86 = getelementptr i8, ptr %h, i64 17396
  %h.val989 = load i32, ptr %86, align 4
  %87 = getelementptr i8, ptr %h, i64 25768
  %h.val990 = load i32, ptr %87, align 8
  %add.i1009 = add nsw i32 %h.val990, 399
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef %add.i1009, i32 noundef %h.val989) #7
  br label %if.then53

if.end51:                                         ; preds = %if.then48
  br i1 %cmp49, label %if.then53, label %if.end73

if.then53:                                        ; preds = %if.end51.thread, %if.end51
  %b_transform_8x8 = getelementptr inbounds i8, ptr %h, i64 17396
  %88 = load i32, ptr %b_transform_8x8, align 4
  %tobool55.not = icmp eq i32 %88, 0
  %cond = select i1 %tobool55.not, i64 1, i64 4
  %cache.i = getelementptr inbounds i8, ptr %h, i64 25024
  br label %for.body60

for.body60:                                       ; preds = %if.then53, %x264_cabac_mb_intra4x4_pred_mode.exit
  %indvars.iv = phi i64 [ 0, %if.then53 ], [ %indvars.iv.next, %x264_cabac_mb_intra4x4_pred_mode.exit ]
  %arrayidx.i1011 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %indvars.iv
  %89 = load i32, ptr %arrayidx.i1011, align 4
  %sub.i1012 = add nsw i32 %89, -1
  %idxprom1.i = sext i32 %sub.i1012 to i64
  %arrayidx2.i = getelementptr inbounds [40 x i8], ptr %cache.i, i64 0, i64 %idxprom1.i
  %90 = load i8, ptr %arrayidx2.i, align 1
  %conv.i = sext i8 %90 to i64
  %sub9.i = add nsw i32 %89, -8
  %idxprom10.i = sext i32 %sub9.i to i64
  %arrayidx11.i = getelementptr inbounds [40 x i8], ptr %cache.i, i64 0, i64 %idxprom10.i
  %91 = load i8, ptr %arrayidx11.i, align 1
  %conv12.i = sext i8 %91 to i64
  %add.i1013 = add nsw i64 %conv.i, 1
  %arrayidx14.i = getelementptr inbounds [13 x i8], ptr @x264_mb_pred_mode4x4_fix, i64 0, i64 %add.i1013
  %92 = load i8, ptr %arrayidx14.i, align 1
  %add16.i = add nsw i64 %conv12.i, 1
  %arrayidx18.i = getelementptr inbounds [13 x i8], ptr @x264_mb_pred_mode4x4_fix, i64 0, i64 %add16.i
  %93 = load i8, ptr %arrayidx18.i, align 1
  %..i = tail call i8 @llvm.smin.i8(i8 %92, i8 %93)
  %cmp29.i = icmp slt i8 %..i, 0
  %narrow.i = select i1 %cmp29.i, i8 2, i8 %..i
  %idxprom64 = sext i32 %89 to i64
  %arrayidx65 = getelementptr inbounds [40 x i8], ptr %cache.i, i64 0, i64 %idxprom64
  %94 = load i8, ptr %arrayidx65, align 1
  %conv = sext i8 %94 to i64
  %add66 = add nsw i64 %conv, 1
  %arrayidx68 = getelementptr inbounds [13 x i8], ptr @x264_mb_pred_mode4x4_fix, i64 0, i64 %add66
  %95 = load i8, ptr %arrayidx68, align 1
  %cmp.i = icmp eq i8 %narrow.i, %95
  br i1 %cmp.i, label %if.then.i1016, label %if.else.i

if.then.i1016:                                    ; preds = %for.body60
  tail call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef 68, i32 noundef 1) #7
  br label %x264_cabac_mb_intra4x4_pred_mode.exit

if.else.i:                                        ; preds = %for.body60
  %conv69 = sext i8 %95 to i32
  tail call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef 68, i32 noundef 0) #7
  %cmp1.i = icmp sgt i8 %95, %narrow.i
  %dec.i = sext i1 %cmp1.i to i32
  %spec.select.i1014 = add nsw i32 %dec.i, %conv69
  %and.i1015 = and i32 %spec.select.i1014, 1
  tail call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef 69, i32 noundef %and.i1015) #7
  %shr16.i = lshr i32 %spec.select.i1014, 1
  %and3.i = and i32 %shr16.i, 1
  tail call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef 69, i32 noundef %and3.i) #7
  %shr4.i = ashr i32 %spec.select.i1014, 2
  tail call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef 69, i32 noundef %shr4.i) #7
  br label %x264_cabac_mb_intra4x4_pred_mode.exit

x264_cabac_mb_intra4x4_pred_mode.exit:            ; preds = %if.then.i1016, %if.else.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, %cond
  %cmp58 = icmp ult i64 %indvars.iv.next, 16
  br i1 %cmp58, label %for.body60, label %if.end73

if.end73:                                         ; preds = %x264_cabac_mb_intra4x4_pred_mode.exit, %if.end51
  %i_chroma_pred_mode.i = getelementptr inbounds i8, ptr %h, i64 17412
  %96 = load i32, ptr %i_chroma_pred_mode.i, align 4
  %idxprom.i1017 = sext i32 %96 to i64
  %i_neighbour.i1018 = getelementptr inbounds i8, ptr %h, i64 16488
  %97 = load i32, ptr %i_neighbour.i1018, align 8
  %and.i1019 = and i32 %97, 1
  %tobool.not.i1020 = icmp eq i32 %and.i1019, 0
  br i1 %tobool.not.i1020, label %if.end.i1023, label %land.lhs.true.i1021

land.lhs.true.i1021:                              ; preds = %if.end73
  %chroma_pred_mode.i = getelementptr inbounds i8, ptr %h, i64 16664
  %98 = load ptr, ptr %chroma_pred_mode.i, align 8
  %i_mb_left_xy.i = getelementptr inbounds i8, ptr %h, i64 16600
  %99 = load i32, ptr %i_mb_left_xy.i, align 8
  %idxprom4.i = sext i32 %99 to i64
  %arrayidx5.i = getelementptr inbounds i8, ptr %98, i64 %idxprom4.i
  %100 = load i8, ptr %arrayidx5.i, align 1
  %cmp.not.i = icmp ne i8 %100, 0
  %spec.select.i1022 = zext i1 %cmp.not.i to i32
  br label %if.end.i1023

if.end.i1023:                                     ; preds = %land.lhs.true.i1021, %if.end73
  %ctx.0.i1024 = phi i32 [ 0, %if.end73 ], [ %spec.select.i1022, %land.lhs.true.i1021 ]
  %and10.i = and i32 %97, 2
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  br i1 %tobool11.not.i, label %if.end23.i, label %land.lhs.true12.i

land.lhs.true12.i:                                ; preds = %if.end.i1023
  %chroma_pred_mode14.i = getelementptr inbounds i8, ptr %h, i64 16664
  %101 = load ptr, ptr %chroma_pred_mode14.i, align 8
  %i_mb_top_xy.i = getelementptr inbounds i8, ptr %h, i64 16604
  %102 = load i32, ptr %i_mb_top_xy.i, align 4
  %idxprom16.i = sext i32 %102 to i64
  %arrayidx17.i = getelementptr inbounds i8, ptr %101, i64 %idxprom16.i
  %103 = load i8, ptr %arrayidx17.i, align 1
  %cmp19.not.i = icmp ne i8 %103, 0
  %inc22.i = zext i1 %cmp19.not.i to i32
  %spec.select52.i = add nuw nsw i32 %ctx.0.i1024, %inc22.i
  br label %if.end23.i

if.end23.i:                                       ; preds = %land.lhs.true12.i, %if.end.i1023
  %ctx.1.i1025 = phi i32 [ %ctx.0.i1024, %if.end.i1023 ], [ %spec.select52.i, %land.lhs.true12.i ]
  %add.i1026 = add nuw nsw i32 %ctx.1.i1025, 64
  %104 = add nsw i64 %idxprom.i1017, -1
  %cmp24.i = icmp ult i64 %104, 3
  %conv25.i = zext i1 %cmp24.i to i32
  tail call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %add.i1026, i32 noundef %conv25.i) #7
  br i1 %cmp24.i, label %if.then28.i, label %if.end467

if.then28.i:                                      ; preds = %if.end23.i
  %105 = and i32 %96, -2
  %cmp29.i1027 = icmp eq i32 %105, 2
  %conv30.i = zext i1 %cmp29.i1027 to i32
  tail call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef 67, i32 noundef %conv30.i) #7
  br i1 %cmp29.i1027, label %if.then33.i, label %if.end467

if.then33.i:                                      ; preds = %if.then28.i
  %cmp34.i = icmp eq i32 %96, 3
  %conv35.i = zext i1 %cmp34.i to i32
  tail call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef 67, i32 noundef %conv35.i) #7
  br label %if.end467

if.else:                                          ; preds = %if.else133.i, %if.then149.i, %if.then158.i, %if.end
  %cmp451745 = phi i1 [ %cmp45, %if.end ], [ false, %if.then158.i ], [ false, %if.then149.i ], [ false, %if.else133.i ]
  switch i32 %0, label %if.then317 [
    i32 4, label %if.then76
    i32 5, label %for.cond149.preheader
    i32 17, label %for.cond183.preheader
    i32 7, label %if.end467
  ]

for.cond183.preheader:                            ; preds = %if.else.thread1852, %if.else
  %cmp4517451854 = phi i1 [ false, %if.else.thread1852 ], [ %cmp451745, %if.else ]
  %i_sub_partition189 = getelementptr inbounds i8, ptr %h, i64 17392
  %106 = load i8, ptr %i_sub_partition189, align 1
  %cmp.i1188 = icmp eq i8 %106, 12
  br i1 %cmp.i1188, label %if.then.i1193, label %if.end.i1189

for.cond149.preheader:                            ; preds = %if.else.thread1849, %if.else
  %cmp4517451851 = phi i1 [ false, %if.else.thread1849 ], [ %cmp451745, %if.else ]
  %i_sub_partition = getelementptr inbounds i8, ptr %h, i64 17392
  %107 = load i8, ptr %i_sub_partition, align 1
  %cmp.i1058 = icmp eq i8 %107, 3
  br i1 %cmp.i1058, label %if.then.i1063, label %if.end.i1059

if.then76:                                        ; preds = %if.else.thread, %if.else
  %cmp4517451848 = phi i1 [ false, %if.else.thread ], [ %cmp451745, %if.else ]
  %i_partition = getelementptr inbounds i8, ptr %h, i64 17388
  %108 = load i32, ptr %i_partition, align 4
  %i_fref122 = getelementptr inbounds i8, ptr %h, i64 21416
  %109 = load i32, ptr %i_fref122, align 8
  %cmp124 = icmp sgt i32 %109, 1
  switch i32 %108, label %if.else119 [
    i32 16, label %if.then80
    i32 14, label %if.then96
  ]

if.then80:                                        ; preds = %if.then76
  br i1 %cmp124, label %if.then86, label %do.body

if.then86:                                        ; preds = %if.then80
  tail call fastcc void @x264_cabac_mb_ref(ptr noundef nonnull %h, ptr noundef nonnull %cb, i32 noundef 0, i32 noundef 0)
  br label %do.body

do.body:                                          ; preds = %if.then80, %if.then86
  %call88 = tail call fastcc zeroext i16 @x264_cabac_mb_mvd(ptr noundef nonnull %h, ptr noundef nonnull %cb, i32 noundef 0, i32 noundef 0, i32 noundef 4)
  %arrayidx4.i = getelementptr inbounds i8, ptr %h, i64 25544
  %conv.i1028 = zext i16 %call88 to i64
  %add.i.i = mul nuw i64 %conv.i1028, 281479271743489
  store i64 %add.i.i, ptr %arrayidx4.i, align 8
  %add.ptr73.i.i = getelementptr inbounds i8, ptr %h, i64 25560
  store i64 %add.i.i, ptr %add.ptr73.i.i, align 8
  %add.ptr80.i.i = getelementptr inbounds i8, ptr %h, i64 25576
  store i64 %add.i.i, ptr %add.ptr80.i.i, align 8
  %add.ptr83.i.i = getelementptr inbounds i8, ptr %h, i64 25592
  store i64 %add.i.i, ptr %add.ptr83.i.i, align 8
  br label %if.end467

if.then96:                                        ; preds = %if.then76
  br i1 %cmp124, label %if.then103, label %do.body105

if.then103:                                       ; preds = %if.then96
  tail call fastcc void @x264_cabac_mb_ref(ptr noundef nonnull %h, ptr noundef nonnull %cb, i32 noundef 0, i32 noundef 0)
  tail call fastcc void @x264_cabac_mb_ref(ptr noundef nonnull %h, ptr noundef nonnull %cb, i32 noundef 0, i32 noundef 8)
  br label %do.body105

do.body105:                                       ; preds = %if.then96, %if.then103
  %call107 = tail call fastcc zeroext i16 @x264_cabac_mb_mvd(ptr noundef nonnull %h, ptr noundef nonnull %cb, i32 noundef 0, i32 noundef 0, i32 noundef 4)
  %arrayidx4.i1030 = getelementptr inbounds i8, ptr %h, i64 25544
  %conv.i1031 = zext i16 %call107 to i64
  %add.i.i1034 = mul nuw i64 %conv.i1031, 281479271743489
  store i64 %add.i.i1034, ptr %arrayidx4.i1030, align 8
  %add.ptr73.i.i1035 = getelementptr inbounds i8, ptr %h, i64 25560
  store i64 %add.i.i1034, ptr %add.ptr73.i.i1035, align 8
  %call114 = tail call fastcc zeroext i16 @x264_cabac_mb_mvd(ptr noundef nonnull %h, ptr noundef nonnull %cb, i32 noundef 0, i32 noundef 8, i32 noundef 4)
  %arrayidx4.i1037 = getelementptr inbounds i8, ptr %h, i64 25576
  %conv.i1038 = zext i16 %call114 to i64
  %add.i.i1041 = mul nuw i64 %conv.i1038, 281479271743489
  store i64 %add.i.i1041, ptr %arrayidx4.i1037, align 8
  %add.ptr73.i.i1042 = getelementptr inbounds i8, ptr %h, i64 25592
  store i64 %add.i.i1041, ptr %add.ptr73.i.i1042, align 8
  br label %if.end467

if.else119:                                       ; preds = %if.then76
  br i1 %cmp124, label %if.then126, label %do.body128

if.then126:                                       ; preds = %if.else119
  tail call fastcc void @x264_cabac_mb_ref(ptr noundef nonnull %h, ptr noundef nonnull %cb, i32 noundef 0, i32 noundef 0)
  tail call fastcc void @x264_cabac_mb_ref(ptr noundef nonnull %h, ptr noundef nonnull %cb, i32 noundef 0, i32 noundef 4)
  br label %do.body128

do.body128:                                       ; preds = %if.else119, %if.then126
  %call130 = tail call fastcc zeroext i16 @x264_cabac_mb_mvd(ptr noundef nonnull %h, ptr noundef nonnull %cb, i32 noundef 0, i32 noundef 0, i32 noundef 2)
  %arrayidx4.i1044 = getelementptr inbounds i8, ptr %h, i64 25544
  %conv.i1045 = zext i16 %call130 to i32
  %mul8.i.i1046 = mul nuw i32 %conv.i1045, 65537
  store i32 %mul8.i.i1046, ptr %arrayidx4.i1044, align 4
  %add.ptr49.i.i = getelementptr inbounds i8, ptr %h, i64 25560
  store i32 %mul8.i.i1046, ptr %add.ptr49.i.i, align 4
  %add.ptr56.i.i = getelementptr inbounds i8, ptr %h, i64 25576
  store i32 %mul8.i.i1046, ptr %add.ptr56.i.i, align 4
  %add.ptr59.i.i = getelementptr inbounds i8, ptr %h, i64 25592
  store i32 %mul8.i.i1046, ptr %add.ptr59.i.i, align 4
  %call137 = tail call fastcc zeroext i16 @x264_cabac_mb_mvd(ptr noundef nonnull %h, ptr noundef nonnull %cb, i32 noundef 0, i32 noundef 4, i32 noundef 2)
  %arrayidx4.i1050 = getelementptr inbounds i8, ptr %h, i64 25548
  %conv.i1051 = zext i16 %call137 to i32
  %mul8.i.i1052 = mul nuw i32 %conv.i1051, 65537
  store i32 %mul8.i.i1052, ptr %arrayidx4.i1050, align 4
  %add.ptr49.i.i1055 = getelementptr inbounds i8, ptr %h, i64 25564
  store i32 %mul8.i.i1052, ptr %add.ptr49.i.i1055, align 4
  %add.ptr56.i.i1056 = getelementptr inbounds i8, ptr %h, i64 25580
  store i32 %mul8.i.i1052, ptr %add.ptr56.i.i1056, align 4
  %add.ptr59.i.i1057 = getelementptr inbounds i8, ptr %h, i64 25596
  store i32 %mul8.i.i1052, ptr %add.ptr59.i.i1057, align 4
  br label %if.end467

if.then.i1063:                                    ; preds = %for.cond149.preheader
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef 21, i32 noundef 1) #7
  br label %x264_cabac_mb_sub_p_partition.exit

if.end.i1059:                                     ; preds = %for.cond149.preheader
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef 21, i32 noundef 0) #7
  %cmp1.i1060 = icmp eq i8 %107, 1
  br i1 %cmp1.i1060, label %if.then2.i, label %if.else.i1061

if.then2.i:                                       ; preds = %if.end.i1059
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef 22, i32 noundef 0) #7
  br label %x264_cabac_mb_sub_p_partition.exit

if.else.i1061:                                    ; preds = %if.end.i1059
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef 22, i32 noundef 1) #7
  %cmp3.i = icmp eq i8 %107, 2
  %conv.i1062 = zext i1 %cmp3.i to i32
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef 23, i32 noundef %conv.i1062) #7
  br label %x264_cabac_mb_sub_p_partition.exit

x264_cabac_mb_sub_p_partition.exit:               ; preds = %if.then.i1063, %if.then2.i, %if.else.i1061
  %arrayidx156.1 = getelementptr inbounds i8, ptr %h, i64 17393
  %110 = load i8, ptr %arrayidx156.1, align 1
  %cmp.i1058.1 = icmp eq i8 %110, 3
  br i1 %cmp.i1058.1, label %if.then.i1063.1, label %if.end.i1059.1

if.end.i1059.1:                                   ; preds = %x264_cabac_mb_sub_p_partition.exit
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef 21, i32 noundef 0) #7
  %cmp1.i1060.1 = icmp eq i8 %110, 1
  br i1 %cmp1.i1060.1, label %if.then2.i.1, label %if.else.i1061.1

if.else.i1061.1:                                  ; preds = %if.end.i1059.1
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef 22, i32 noundef 1) #7
  %cmp3.i.1 = icmp eq i8 %110, 2
  %conv.i1062.1 = zext i1 %cmp3.i.1 to i32
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef 23, i32 noundef %conv.i1062.1) #7
  br label %x264_cabac_mb_sub_p_partition.exit.1

if.then2.i.1:                                     ; preds = %if.end.i1059.1
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef 22, i32 noundef 0) #7
  br label %x264_cabac_mb_sub_p_partition.exit.1

if.then.i1063.1:                                  ; preds = %x264_cabac_mb_sub_p_partition.exit
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef 21, i32 noundef 1) #7
  br label %x264_cabac_mb_sub_p_partition.exit.1

x264_cabac_mb_sub_p_partition.exit.1:             ; preds = %if.then.i1063.1, %if.then2.i.1, %if.else.i1061.1
  %arrayidx156.2 = getelementptr inbounds i8, ptr %h, i64 17394
  %111 = load i8, ptr %arrayidx156.2, align 1
  %cmp.i1058.2 = icmp eq i8 %111, 3
  br i1 %cmp.i1058.2, label %if.then.i1063.2, label %if.end.i1059.2

if.end.i1059.2:                                   ; preds = %x264_cabac_mb_sub_p_partition.exit.1
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef 21, i32 noundef 0) #7
  %cmp1.i1060.2 = icmp eq i8 %111, 1
  br i1 %cmp1.i1060.2, label %if.then2.i.2, label %if.else.i1061.2

if.else.i1061.2:                                  ; preds = %if.end.i1059.2
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef 22, i32 noundef 1) #7
  %cmp3.i.2 = icmp eq i8 %111, 2
  %conv.i1062.2 = zext i1 %cmp3.i.2 to i32
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef 23, i32 noundef %conv.i1062.2) #7
  br label %x264_cabac_mb_sub_p_partition.exit.2

if.then2.i.2:                                     ; preds = %if.end.i1059.2
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef 22, i32 noundef 0) #7
  br label %x264_cabac_mb_sub_p_partition.exit.2

if.then.i1063.2:                                  ; preds = %x264_cabac_mb_sub_p_partition.exit.1
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef 21, i32 noundef 1) #7
  br label %x264_cabac_mb_sub_p_partition.exit.2

x264_cabac_mb_sub_p_partition.exit.2:             ; preds = %if.then.i1063.2, %if.then2.i.2, %if.else.i1061.2
  %arrayidx156.3 = getelementptr inbounds i8, ptr %h, i64 17395
  %112 = load i8, ptr %arrayidx156.3, align 1
  %cmp.i1058.3 = icmp eq i8 %112, 3
  br i1 %cmp.i1058.3, label %if.then.i1063.3, label %if.end.i1059.3

if.end.i1059.3:                                   ; preds = %x264_cabac_mb_sub_p_partition.exit.2
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef 21, i32 noundef 0) #7
  %cmp1.i1060.3 = icmp eq i8 %112, 1
  br i1 %cmp1.i1060.3, label %if.then2.i.3, label %if.else.i1061.3

if.else.i1061.3:                                  ; preds = %if.end.i1059.3
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef 22, i32 noundef 1) #7
  %cmp3.i.3 = icmp eq i8 %112, 2
  %conv.i1062.3 = zext i1 %cmp3.i.3 to i32
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef 23, i32 noundef %conv.i1062.3) #7
  br label %x264_cabac_mb_sub_p_partition.exit.3

if.then2.i.3:                                     ; preds = %if.end.i1059.3
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef 22, i32 noundef 0) #7
  br label %x264_cabac_mb_sub_p_partition.exit.3

if.then.i1063.3:                                  ; preds = %x264_cabac_mb_sub_p_partition.exit.2
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef 21, i32 noundef 1) #7
  br label %x264_cabac_mb_sub_p_partition.exit.3

x264_cabac_mb_sub_p_partition.exit.3:             ; preds = %if.then.i1063.3, %if.then2.i.3, %if.else.i1061.3
  %i_fref163 = getelementptr inbounds i8, ptr %h, i64 21416
  %113 = load i32, ptr %i_fref163, align 8
  %cmp165 = icmp sgt i32 %113, 1
  br i1 %cmp165, label %if.then167, label %if.end168

if.then167:                                       ; preds = %x264_cabac_mb_sub_p_partition.exit.3
  %arrayidx4.i1064 = getelementptr inbounds i8, ptr %h, i64 25131
  %114 = load i8, ptr %arrayidx4.i1064, align 1
  %arrayidx12.i = getelementptr inbounds i8, ptr %h, i64 25124
  %115 = load i8, ptr %arrayidx12.i, align 1
  %cmp.i1065 = icmp sgt i8 %114, 0
  br i1 %cmp.i1065, label %land.lhs.true.i1073, label %if.end.i1066

land.lhs.true.i1073:                              ; preds = %if.then167
  %arrayidx19.i = getelementptr inbounds i8, ptr %h, i64 25691
  %116 = load i8, ptr %arrayidx19.i, align 1
  %tobool.not.i1074 = icmp eq i8 %116, 0
  %spec.select.i1075 = zext i1 %tobool.not.i1074 to i32
  br label %if.end.i1066

if.end.i1066:                                     ; preds = %land.lhs.true.i1073, %if.then167
  %ctx.0.i1067 = phi i32 [ 0, %if.then167 ], [ %spec.select.i1075, %land.lhs.true.i1073 ]
  %cmp20.i = icmp sgt i8 %115, 0
  br i1 %cmp20.i, label %land.lhs.true22.i, label %if.end31.i

land.lhs.true22.i:                                ; preds = %if.end.i1066
  %arrayidx28.i = getelementptr inbounds i8, ptr %h, i64 25684
  %117 = load i8, ptr %arrayidx28.i, align 1
  %tobool29.not.i1071 = icmp eq i8 %117, 0
  %add.i1072 = or disjoint i32 %ctx.0.i1067, 2
  %spec.select61.i = select i1 %tobool29.not.i1071, i32 %add.i1072, i32 %ctx.0.i1067
  br label %if.end31.i

if.end31.i:                                       ; preds = %land.lhs.true22.i, %if.end.i1066
  %ctx.1.i1068 = phi i32 [ %ctx.0.i1067, %if.end.i1066 ], [ %spec.select61.i, %land.lhs.true22.i ]
  %arrayidx38.i = getelementptr inbounds i8, ptr %h, i64 25132
  %118 = load i8, ptr %arrayidx38.i, align 1
  %cmp4062.i = icmp sgt i8 %118, 0
  br i1 %cmp4062.i, label %for.body.preheader.i, label %x264_cabac_mb_ref.exit

for.body.preheader.i:                             ; preds = %if.end31.i
  %conv39.i = zext nneg i8 %118 to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %for.body.preheader.i
  %i_ref.064.i = phi i32 [ %dec.i1070, %for.body.i ], [ %conv39.i, %for.body.preheader.i ]
  %ctx.263.i = phi i32 [ %add43.i, %for.body.i ], [ %ctx.1.i1068, %for.body.preheader.i ]
  %add42.i = add nuw nsw i32 %ctx.263.i, 54
  tail call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %add42.i, i32 noundef 1) #7
  %shr.i1069 = lshr i32 %ctx.263.i, 2
  %add43.i = add nuw nsw i32 %shr.i1069, 4
  %dec.i1070 = add nsw i32 %i_ref.064.i, -1
  %cmp40.i = icmp ugt i32 %i_ref.064.i, 1
  br i1 %cmp40.i, label %for.body.i, label %x264_cabac_mb_ref.exit

x264_cabac_mb_ref.exit:                           ; preds = %for.body.i, %if.end31.i
  %ctx.2.lcssa.i = phi i32 [ %ctx.1.i1068, %if.end31.i ], [ %add43.i, %for.body.i ]
  %add44.i = add nuw nsw i32 %ctx.2.lcssa.i, 54
  tail call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %add44.i, i32 noundef 0) #7
  %arrayidx4.i1077 = getelementptr inbounds i8, ptr %h, i64 25133
  %119 = load i8, ptr %arrayidx4.i1077, align 1
  %arrayidx12.i1078 = getelementptr inbounds i8, ptr %h, i64 25126
  %120 = load i8, ptr %arrayidx12.i1078, align 1
  %cmp.i1079 = icmp sgt i8 %119, 0
  br i1 %cmp.i1079, label %land.lhs.true.i1105, label %if.end.i1080

land.lhs.true.i1105:                              ; preds = %x264_cabac_mb_ref.exit
  %arrayidx19.i1107 = getelementptr inbounds i8, ptr %h, i64 25693
  %121 = load i8, ptr %arrayidx19.i1107, align 1
  %tobool.not.i1108 = icmp eq i8 %121, 0
  %spec.select.i1109 = zext i1 %tobool.not.i1108 to i32
  br label %if.end.i1080

if.end.i1080:                                     ; preds = %land.lhs.true.i1105, %x264_cabac_mb_ref.exit
  %ctx.0.i1081 = phi i32 [ 0, %x264_cabac_mb_ref.exit ], [ %spec.select.i1109, %land.lhs.true.i1105 ]
  %cmp20.i1082 = icmp sgt i8 %120, 0
  br i1 %cmp20.i1082, label %land.lhs.true22.i1099, label %if.end31.i1083

land.lhs.true22.i1099:                            ; preds = %if.end.i1080
  %arrayidx28.i1101 = getelementptr inbounds i8, ptr %h, i64 25686
  %122 = load i8, ptr %arrayidx28.i1101, align 1
  %tobool29.not.i1102 = icmp eq i8 %122, 0
  %add.i1103 = or disjoint i32 %ctx.0.i1081, 2
  %spec.select61.i1104 = select i1 %tobool29.not.i1102, i32 %add.i1103, i32 %ctx.0.i1081
  br label %if.end31.i1083

if.end31.i1083:                                   ; preds = %land.lhs.true22.i1099, %if.end.i1080
  %ctx.1.i1084 = phi i32 [ %ctx.0.i1081, %if.end.i1080 ], [ %spec.select61.i1104, %land.lhs.true22.i1099 ]
  %arrayidx38.i1085 = getelementptr inbounds i8, ptr %h, i64 25134
  %123 = load i8, ptr %arrayidx38.i1085, align 1
  %cmp4062.i1086 = icmp sgt i8 %123, 0
  br i1 %cmp4062.i1086, label %for.body.preheader.i1089, label %x264_cabac_mb_ref.exit1110

for.body.preheader.i1089:                         ; preds = %if.end31.i1083
  %conv39.i1090 = zext nneg i8 %123 to i32
  br label %for.body.i1091

for.body.i1091:                                   ; preds = %for.body.i1091, %for.body.preheader.i1089
  %i_ref.064.i1092 = phi i32 [ %dec.i1097, %for.body.i1091 ], [ %conv39.i1090, %for.body.preheader.i1089 ]
  %ctx.263.i1093 = phi i32 [ %add43.i1096, %for.body.i1091 ], [ %ctx.1.i1084, %for.body.preheader.i1089 ]
  %add42.i1094 = add nuw nsw i32 %ctx.263.i1093, 54
  tail call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %add42.i1094, i32 noundef 1) #7
  %shr.i1095 = lshr i32 %ctx.263.i1093, 2
  %add43.i1096 = add nuw nsw i32 %shr.i1095, 4
  %dec.i1097 = add nsw i32 %i_ref.064.i1092, -1
  %cmp40.i1098 = icmp ugt i32 %i_ref.064.i1092, 1
  br i1 %cmp40.i1098, label %for.body.i1091, label %x264_cabac_mb_ref.exit1110

x264_cabac_mb_ref.exit1110:                       ; preds = %for.body.i1091, %if.end31.i1083
  %ctx.2.lcssa.i1087 = phi i32 [ %ctx.1.i1084, %if.end31.i1083 ], [ %add43.i1096, %for.body.i1091 ]
  %add44.i1088 = add nuw nsw i32 %ctx.2.lcssa.i1087, 54
  tail call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %add44.i1088, i32 noundef 0) #7
  %arrayidx4.i1112 = getelementptr inbounds i8, ptr %h, i64 25147
  %124 = load i8, ptr %arrayidx4.i1112, align 1
  %arrayidx12.i1113 = getelementptr inbounds i8, ptr %h, i64 25140
  %125 = load i8, ptr %arrayidx12.i1113, align 1
  %cmp.i1114 = icmp sgt i8 %124, 0
  br i1 %cmp.i1114, label %land.lhs.true.i1140, label %if.end.i1115

land.lhs.true.i1140:                              ; preds = %x264_cabac_mb_ref.exit1110
  %arrayidx19.i1142 = getelementptr inbounds i8, ptr %h, i64 25707
  %126 = load i8, ptr %arrayidx19.i1142, align 1
  %tobool.not.i1143 = icmp eq i8 %126, 0
  %spec.select.i1144 = zext i1 %tobool.not.i1143 to i32
  br label %if.end.i1115

if.end.i1115:                                     ; preds = %land.lhs.true.i1140, %x264_cabac_mb_ref.exit1110
  %ctx.0.i1116 = phi i32 [ 0, %x264_cabac_mb_ref.exit1110 ], [ %spec.select.i1144, %land.lhs.true.i1140 ]
  %cmp20.i1117 = icmp sgt i8 %125, 0
  br i1 %cmp20.i1117, label %land.lhs.true22.i1134, label %if.end31.i1118

land.lhs.true22.i1134:                            ; preds = %if.end.i1115
  %arrayidx28.i1136 = getelementptr inbounds i8, ptr %h, i64 25700
  %127 = load i8, ptr %arrayidx28.i1136, align 1
  %tobool29.not.i1137 = icmp eq i8 %127, 0
  %add.i1138 = or disjoint i32 %ctx.0.i1116, 2
  %spec.select61.i1139 = select i1 %tobool29.not.i1137, i32 %add.i1138, i32 %ctx.0.i1116
  br label %if.end31.i1118

if.end31.i1118:                                   ; preds = %land.lhs.true22.i1134, %if.end.i1115
  %ctx.1.i1119 = phi i32 [ %ctx.0.i1116, %if.end.i1115 ], [ %spec.select61.i1139, %land.lhs.true22.i1134 ]
  %arrayidx38.i1120 = getelementptr inbounds i8, ptr %h, i64 25148
  %128 = load i8, ptr %arrayidx38.i1120, align 1
  %cmp4062.i1121 = icmp sgt i8 %128, 0
  br i1 %cmp4062.i1121, label %for.body.preheader.i1124, label %x264_cabac_mb_ref.exit1145

for.body.preheader.i1124:                         ; preds = %if.end31.i1118
  %conv39.i1125 = zext nneg i8 %128 to i32
  br label %for.body.i1126

for.body.i1126:                                   ; preds = %for.body.i1126, %for.body.preheader.i1124
  %i_ref.064.i1127 = phi i32 [ %dec.i1132, %for.body.i1126 ], [ %conv39.i1125, %for.body.preheader.i1124 ]
  %ctx.263.i1128 = phi i32 [ %add43.i1131, %for.body.i1126 ], [ %ctx.1.i1119, %for.body.preheader.i1124 ]
  %add42.i1129 = add nuw nsw i32 %ctx.263.i1128, 54
  tail call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %add42.i1129, i32 noundef 1) #7
  %shr.i1130 = lshr i32 %ctx.263.i1128, 2
  %add43.i1131 = add nuw nsw i32 %shr.i1130, 4
  %dec.i1132 = add nsw i32 %i_ref.064.i1127, -1
  %cmp40.i1133 = icmp ugt i32 %i_ref.064.i1127, 1
  br i1 %cmp40.i1133, label %for.body.i1126, label %x264_cabac_mb_ref.exit1145

x264_cabac_mb_ref.exit1145:                       ; preds = %for.body.i1126, %if.end31.i1118
  %ctx.2.lcssa.i1122 = phi i32 [ %ctx.1.i1119, %if.end31.i1118 ], [ %add43.i1131, %for.body.i1126 ]
  %add44.i1123 = add nuw nsw i32 %ctx.2.lcssa.i1122, 54
  tail call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %add44.i1123, i32 noundef 0) #7
  %arrayidx4.i1147 = getelementptr inbounds i8, ptr %h, i64 25149
  %129 = load i8, ptr %arrayidx4.i1147, align 1
  %arrayidx12.i1148 = getelementptr inbounds i8, ptr %h, i64 25142
  %130 = load i8, ptr %arrayidx12.i1148, align 1
  %cmp.i1149 = icmp sgt i8 %129, 0
  br i1 %cmp.i1149, label %land.lhs.true.i1175, label %if.end.i1150

land.lhs.true.i1175:                              ; preds = %x264_cabac_mb_ref.exit1145
  %arrayidx19.i1177 = getelementptr inbounds i8, ptr %h, i64 25709
  %131 = load i8, ptr %arrayidx19.i1177, align 1
  %tobool.not.i1178 = icmp eq i8 %131, 0
  %spec.select.i1179 = zext i1 %tobool.not.i1178 to i32
  br label %if.end.i1150

if.end.i1150:                                     ; preds = %land.lhs.true.i1175, %x264_cabac_mb_ref.exit1145
  %ctx.0.i1151 = phi i32 [ 0, %x264_cabac_mb_ref.exit1145 ], [ %spec.select.i1179, %land.lhs.true.i1175 ]
  %cmp20.i1152 = icmp sgt i8 %130, 0
  br i1 %cmp20.i1152, label %land.lhs.true22.i1169, label %if.end31.i1153

land.lhs.true22.i1169:                            ; preds = %if.end.i1150
  %arrayidx28.i1171 = getelementptr inbounds i8, ptr %h, i64 25702
  %132 = load i8, ptr %arrayidx28.i1171, align 1
  %tobool29.not.i1172 = icmp eq i8 %132, 0
  %add.i1173 = or disjoint i32 %ctx.0.i1151, 2
  %spec.select61.i1174 = select i1 %tobool29.not.i1172, i32 %add.i1173, i32 %ctx.0.i1151
  br label %if.end31.i1153

if.end31.i1153:                                   ; preds = %land.lhs.true22.i1169, %if.end.i1150
  %ctx.1.i1154 = phi i32 [ %ctx.0.i1151, %if.end.i1150 ], [ %spec.select61.i1174, %land.lhs.true22.i1169 ]
  %arrayidx38.i1155 = getelementptr inbounds i8, ptr %h, i64 25150
  %133 = load i8, ptr %arrayidx38.i1155, align 1
  %cmp4062.i1156 = icmp sgt i8 %133, 0
  br i1 %cmp4062.i1156, label %for.body.preheader.i1159, label %x264_cabac_mb_ref.exit1180

for.body.preheader.i1159:                         ; preds = %if.end31.i1153
  %conv39.i1160 = zext nneg i8 %133 to i32
  br label %for.body.i1161

for.body.i1161:                                   ; preds = %for.body.i1161, %for.body.preheader.i1159
  %i_ref.064.i1162 = phi i32 [ %dec.i1167, %for.body.i1161 ], [ %conv39.i1160, %for.body.preheader.i1159 ]
  %ctx.263.i1163 = phi i32 [ %add43.i1166, %for.body.i1161 ], [ %ctx.1.i1154, %for.body.preheader.i1159 ]
  %add42.i1164 = add nuw nsw i32 %ctx.263.i1163, 54
  tail call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %add42.i1164, i32 noundef 1) #7
  %shr.i1165 = lshr i32 %ctx.263.i1163, 2
  %add43.i1166 = add nuw nsw i32 %shr.i1165, 4
  %dec.i1167 = add nsw i32 %i_ref.064.i1162, -1
  %cmp40.i1168 = icmp ugt i32 %i_ref.064.i1162, 1
  br i1 %cmp40.i1168, label %for.body.i1161, label %x264_cabac_mb_ref.exit1180

x264_cabac_mb_ref.exit1180:                       ; preds = %for.body.i1161, %if.end31.i1153
  %ctx.2.lcssa.i1157 = phi i32 [ %ctx.1.i1154, %if.end31.i1153 ], [ %add43.i1166, %for.body.i1161 ]
  %add44.i1158 = add nuw nsw i32 %ctx.2.lcssa.i1157, 54
  tail call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %add44.i1158, i32 noundef 0) #7
  br label %if.end168

if.end168:                                        ; preds = %x264_cabac_mb_ref.exit1180, %x264_cabac_mb_sub_p_partition.exit.3
  %mv.i423.i = getelementptr inbounds i8, ptr %h, i64 25200
  %arrayidx19.i433.i = getelementptr inbounds i8, ptr %mvp.i422.i, i64 2
  %mvd.i436.i = getelementptr inbounds i8, ptr %h, i64 25520
  %arrayidx19.i489.i = getelementptr inbounds i8, ptr %mvp.i478.i, i64 2
  %arrayidx19.i545.i = getelementptr inbounds i8, ptr %mvp.i534.i, i64 2
  %arrayidx19.i601.i = getelementptr inbounds i8, ptr %mvp.i590.i, i64 2
  %arrayidx19.i320.i = getelementptr inbounds i8, ptr %mvp.i309.i, i64 2
  %arrayidx19.i376.i = getelementptr inbounds i8, ptr %mvp.i365.i, i64 2
  %arrayidx19.i208.i = getelementptr inbounds i8, ptr %mvp.i197.i, i64 2
  %arrayidx19.i264.i = getelementptr inbounds i8, ptr %mvp.i253.i, i64 2
  %arrayidx19.i.i = getelementptr inbounds i8, ptr %mvp.i.i, i64 2
  br label %for.body174

for.body174:                                      ; preds = %if.end168, %x264_cabac_mb8x8_mvd.exit
  %indvars.iv1810 = phi i64 [ 0, %if.end168 ], [ %indvars.iv.next1811, %x264_cabac_mb8x8_mvd.exit ]
  %arrayidx.i1182 = getelementptr inbounds [4 x i8], ptr %i_sub_partition, i64 0, i64 %indvars.iv1810
  %134 = load i8, ptr %arrayidx.i1182, align 1
  switch i8 %134, label %x264_cabac_mb8x8_mvd.exit [
    i8 3, label %do.body.i
    i8 1, label %do.body10.i
    i8 2, label %do.body42.i
    i8 0, label %do.body75.i
  ]

do.body.i:                                        ; preds = %for.body174
  %135 = shl nuw nsw i64 %indvars.iv1810, 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mvp.i.i) #7
  %136 = trunc nuw nsw i64 %135 to i32
  call void @x264_mb_predict_mv(ptr noundef nonnull %h, i32 noundef 0, i32 noundef %136, i32 noundef 2, ptr noundef nonnull %mvp.i.i) #7
  %arrayidx2.i.i = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %135
  %137 = load i32, ptr %arrayidx2.i.i, align 16
  %idxprom3.i.i = sext i32 %137 to i64
  %arrayidx4.i.i = getelementptr inbounds [2 x [40 x [2 x i16]]], ptr %mv.i423.i, i64 0, i64 0, i64 %idxprom3.i.i
  %138 = load i16, ptr %arrayidx4.i.i, align 4
  %conv.i.i = sext i16 %138 to i32
  %139 = load i16, ptr %mvp.i.i, align 4
  %conv7.i.i = sext i16 %139 to i32
  %sub.i.i = sub nsw i32 %conv.i.i, %conv7.i.i
  %arrayidx17.i.i = getelementptr inbounds i8, ptr %arrayidx4.i.i, i64 2
  %140 = load i16, ptr %arrayidx17.i.i, align 2
  %conv18.i.i = sext i16 %140 to i32
  %141 = load i16, ptr %arrayidx19.i.i, align 2
  %conv20.i.i = sext i16 %141 to i32
  %sub21.i.i = sub nsw i32 %conv18.i.i, %conv20.i.i
  %sub28.i.i = add nsw i32 %137, -1
  %idxprom29.i.i = sext i32 %sub28.i.i to i64
  %arrayidx30.i.i = getelementptr inbounds [2 x [40 x [2 x i8]]], ptr %mvd.i436.i, i64 0, i64 0, i64 %idxprom29.i.i
  %sub39.i.i = add nsw i32 %137, -8
  %idxprom40.i.i = sext i32 %sub39.i.i to i64
  %arrayidx41.i.i = getelementptr inbounds [2 x [40 x [2 x i8]]], ptr %mvd.i436.i, i64 0, i64 0, i64 %idxprom40.i.i
  %arrayidx30.val.i.i = load i8, ptr %arrayidx30.i.i, align 1
  %142 = getelementptr i8, ptr %arrayidx30.i.i, i64 1
  %arrayidx30.val71.i.i = load i8, ptr %142, align 1
  %arrayidx41.val.i.i = load i8, ptr %arrayidx41.i.i, align 1
  %143 = getelementptr i8, ptr %arrayidx41.i.i, i64 1
  %arrayidx41.val72.i.i = load i8, ptr %143, align 1
  %conv.i.i.i = zext i8 %arrayidx30.val.i.i to i32
  %conv2.i.i.i = zext i8 %arrayidx41.val.i.i to i32
  %add.i.i.i = add nuw nsw i32 %conv2.i.i.i, %conv.i.i.i
  %conv4.i.i.i = zext i8 %arrayidx30.val71.i.i to i32
  %conv6.i.i.i = zext i8 %arrayidx41.val72.i.i to i32
  %add7.i.i.i = add nuw nsw i32 %conv6.i.i.i, %conv4.i.i.i
  %cmp.i.i.i = icmp ugt i32 %add.i.i.i, 2
  %conv8.i.i.i = zext i1 %cmp.i.i.i to i32
  %cmp9.i.i.i = icmp ugt i32 %add.i.i.i, 32
  %conv10.i.i.i = zext i1 %cmp9.i.i.i to i32
  %add11.i.i.i = add nuw nsw i32 %conv8.i.i.i, %conv10.i.i.i
  %cmp12.i.i.i = icmp ugt i32 %add7.i.i.i, 2
  %conv13.i.i.i = zext i1 %cmp12.i.i.i to i32
  %cmp14.i.i.i = icmp ugt i32 %add7.i.i.i, 32
  %conv15.i.i.i = zext i1 %cmp14.i.i.i to i32
  %add16.i.i.i = add nuw nsw i32 %conv13.i.i.i, %conv15.i.i.i
  %call44.i.i = call fastcc i32 @x264_cabac_mb_mvd_cpn(ptr noundef %cb, i32 noundef 0, i32 noundef %sub.i.i, i32 noundef %add11.i.i.i)
  %call46.i.i = call fastcc i32 @x264_cabac_mb_mvd_cpn(ptr noundef %cb, i32 noundef 1, i32 noundef %sub21.i.i, i32 noundef %add16.i.i.i)
  %shl.i73.i.i = shl nuw nsw i32 %call46.i.i, 8
  %add.i74.i.i = add nuw nsw i32 %shl.i73.i.i, %call44.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mvp.i.i) #7
  %arrayidx3.i = getelementptr inbounds [16 x i8], ptr @block_idx_x, i64 0, i64 %135
  %144 = load i8, ptr %arrayidx3.i, align 4
  %conv4.i = zext i8 %144 to i64
  %arrayidx7.i = getelementptr inbounds [16 x i8], ptr @block_idx_y, i64 0, i64 %135
  %145 = load i8, ptr %arrayidx7.i, align 4
  %conv8.i = zext i8 %145 to i64
  %add.i.i1187 = add nuw nsw i64 %conv4.i, 12
  %mul.i.i = shl nuw nsw i64 %conv8.i, 3
  %add2.i.i = add nuw nsw i64 %add.i.i1187, %mul.i.i
  %arrayidx4.i193.i = getelementptr inbounds [2 x [40 x [2 x i8]]], ptr %mvd.i436.i, i64 0, i64 0, i64 %add2.i.i
  %conv.i194.i = and i32 %add.i74.i.i, 65535
  %mul8.i.i.i = mul nuw i32 %conv.i194.i, 65537
  store i32 %mul8.i.i.i, ptr %arrayidx4.i193.i, align 4
  %add.ptr49.i.i.i = getelementptr inbounds i8, ptr %arrayidx4.i193.i, i64 16
  store i32 %mul8.i.i.i, ptr %add.ptr49.i.i.i, align 4
  br label %x264_cabac_mb8x8_mvd.exit

do.body10.i:                                      ; preds = %for.body174
  %146 = shl nuw nsw i64 %indvars.iv1810, 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mvp.i197.i) #7
  %147 = trunc nuw nsw i64 %146 to i32
  call void @x264_mb_predict_mv(ptr noundef nonnull %h, i32 noundef 0, i32 noundef %147, i32 noundef 2, ptr noundef nonnull %mvp.i197.i) #7
  %arrayidx2.i200.i = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %146
  %148 = load i32, ptr %arrayidx2.i200.i, align 16
  %idxprom3.i201.i = sext i32 %148 to i64
  %arrayidx4.i202.i = getelementptr inbounds [2 x [40 x [2 x i16]]], ptr %mv.i423.i, i64 0, i64 0, i64 %idxprom3.i201.i
  %149 = load i16, ptr %arrayidx4.i202.i, align 4
  %conv.i203.i = sext i16 %149 to i32
  %150 = load i16, ptr %mvp.i197.i, align 4
  %conv7.i204.i = sext i16 %150 to i32
  %sub.i205.i = sub nsw i32 %conv.i203.i, %conv7.i204.i
  %arrayidx17.i206.i = getelementptr inbounds i8, ptr %arrayidx4.i202.i, i64 2
  %151 = load i16, ptr %arrayidx17.i206.i, align 2
  %conv18.i207.i = sext i16 %151 to i32
  %152 = load i16, ptr %arrayidx19.i208.i, align 2
  %conv20.i209.i = sext i16 %152 to i32
  %sub21.i210.i = sub nsw i32 %conv18.i207.i, %conv20.i209.i
  %sub28.i212.i = add nsw i32 %148, -1
  %idxprom29.i213.i = sext i32 %sub28.i212.i to i64
  %arrayidx30.i214.i = getelementptr inbounds [2 x [40 x [2 x i8]]], ptr %mvd.i436.i, i64 0, i64 0, i64 %idxprom29.i213.i
  %sub39.i215.i = add nsw i32 %148, -8
  %idxprom40.i216.i = sext i32 %sub39.i215.i to i64
  %arrayidx41.i217.i = getelementptr inbounds [2 x [40 x [2 x i8]]], ptr %mvd.i436.i, i64 0, i64 0, i64 %idxprom40.i216.i
  %arrayidx30.val.i218.i = load i8, ptr %arrayidx30.i214.i, align 1
  %153 = getelementptr i8, ptr %arrayidx30.i214.i, i64 1
  %arrayidx30.val71.i219.i = load i8, ptr %153, align 1
  %arrayidx41.val.i220.i = load i8, ptr %arrayidx41.i217.i, align 1
  %154 = getelementptr i8, ptr %arrayidx41.i217.i, i64 1
  %arrayidx41.val72.i221.i = load i8, ptr %154, align 1
  %conv.i.i222.i = zext i8 %arrayidx30.val.i218.i to i32
  %conv2.i.i223.i = zext i8 %arrayidx41.val.i220.i to i32
  %add.i.i224.i = add nuw nsw i32 %conv2.i.i223.i, %conv.i.i222.i
  %conv4.i.i225.i = zext i8 %arrayidx30.val71.i219.i to i32
  %conv6.i.i226.i = zext i8 %arrayidx41.val72.i221.i to i32
  %add7.i.i227.i = add nuw nsw i32 %conv6.i.i226.i, %conv4.i.i225.i
  %cmp.i.i228.i = icmp ugt i32 %add.i.i224.i, 2
  %conv8.i.i229.i = zext i1 %cmp.i.i228.i to i32
  %cmp9.i.i230.i = icmp ugt i32 %add.i.i224.i, 32
  %conv10.i.i231.i = zext i1 %cmp9.i.i230.i to i32
  %add11.i.i232.i = add nuw nsw i32 %conv8.i.i229.i, %conv10.i.i231.i
  %cmp12.i.i233.i = icmp ugt i32 %add7.i.i227.i, 2
  %conv13.i.i234.i = zext i1 %cmp12.i.i233.i to i32
  %cmp14.i.i235.i = icmp ugt i32 %add7.i.i227.i, 32
  %conv15.i.i236.i = zext i1 %cmp14.i.i235.i to i32
  %add16.i.i237.i = add nuw nsw i32 %conv13.i.i234.i, %conv15.i.i236.i
  %call44.i238.i = call fastcc i32 @x264_cabac_mb_mvd_cpn(ptr noundef %cb, i32 noundef 0, i32 noundef %sub.i205.i, i32 noundef %add11.i.i232.i)
  %call46.i239.i = call fastcc i32 @x264_cabac_mb_mvd_cpn(ptr noundef %cb, i32 noundef 1, i32 noundef %sub21.i210.i, i32 noundef %add16.i.i237.i)
  %shl.i73.i240.i = shl nuw nsw i32 %call46.i239.i, 8
  %add.i74.i241.i = add nuw nsw i32 %shl.i73.i240.i, %call44.i238.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mvp.i197.i) #7
  %arrayidx17.i1184 = getelementptr inbounds [16 x i8], ptr @block_idx_x, i64 0, i64 %146
  %155 = load i8, ptr %arrayidx17.i1184, align 4
  %conv18.i = zext i8 %155 to i64
  %arrayidx22.i = getelementptr inbounds [16 x i8], ptr @block_idx_y, i64 0, i64 %146
  %156 = load i8, ptr %arrayidx22.i, align 4
  %conv23.i = zext i8 %156 to i64
  %add.i244.i = add nuw nsw i64 %conv18.i, 12
  %mul.i245.i = shl nuw nsw i64 %conv23.i, 3
  %add2.i246.i = add nuw nsw i64 %add.i244.i, %mul.i245.i
  %arrayidx4.i248.i = getelementptr inbounds [2 x [40 x [2 x i8]]], ptr %mvd.i436.i, i64 0, i64 0, i64 %add2.i246.i
  %conv.i249.i = and i32 %add.i74.i241.i, 65535
  %mul8.i.i250.i = mul nuw i32 %conv.i249.i, 65537
  store i32 %mul8.i.i250.i, ptr %arrayidx4.i248.i, align 4
  %157 = or disjoint i64 %146, 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mvp.i253.i) #7
  %158 = trunc nuw nsw i64 %157 to i32
  call void @x264_mb_predict_mv(ptr noundef nonnull %h, i32 noundef 0, i32 noundef %158, i32 noundef 2, ptr noundef nonnull %mvp.i253.i) #7
  %arrayidx2.i256.i = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %157
  %159 = load i32, ptr %arrayidx2.i256.i, align 8
  %idxprom3.i257.i = sext i32 %159 to i64
  %arrayidx4.i258.i = getelementptr inbounds [2 x [40 x [2 x i16]]], ptr %mv.i423.i, i64 0, i64 0, i64 %idxprom3.i257.i
  %160 = load i16, ptr %arrayidx4.i258.i, align 4
  %conv.i259.i = sext i16 %160 to i32
  %161 = load i16, ptr %mvp.i253.i, align 4
  %conv7.i260.i = sext i16 %161 to i32
  %sub.i261.i = sub nsw i32 %conv.i259.i, %conv7.i260.i
  %arrayidx17.i262.i = getelementptr inbounds i8, ptr %arrayidx4.i258.i, i64 2
  %162 = load i16, ptr %arrayidx17.i262.i, align 2
  %conv18.i263.i = sext i16 %162 to i32
  %163 = load i16, ptr %arrayidx19.i264.i, align 2
  %conv20.i265.i = sext i16 %163 to i32
  %sub21.i266.i = sub nsw i32 %conv18.i263.i, %conv20.i265.i
  %sub28.i268.i = add nsw i32 %159, -1
  %idxprom29.i269.i = sext i32 %sub28.i268.i to i64
  %arrayidx30.i270.i = getelementptr inbounds [2 x [40 x [2 x i8]]], ptr %mvd.i436.i, i64 0, i64 0, i64 %idxprom29.i269.i
  %sub39.i271.i = add nsw i32 %159, -8
  %idxprom40.i272.i = sext i32 %sub39.i271.i to i64
  %arrayidx41.i273.i = getelementptr inbounds [2 x [40 x [2 x i8]]], ptr %mvd.i436.i, i64 0, i64 0, i64 %idxprom40.i272.i
  %arrayidx30.val.i274.i = load i8, ptr %arrayidx30.i270.i, align 1
  %164 = getelementptr i8, ptr %arrayidx30.i270.i, i64 1
  %arrayidx30.val71.i275.i = load i8, ptr %164, align 1
  %arrayidx41.val.i276.i = load i8, ptr %arrayidx41.i273.i, align 1
  %165 = getelementptr i8, ptr %arrayidx41.i273.i, i64 1
  %arrayidx41.val72.i277.i = load i8, ptr %165, align 1
  %conv.i.i278.i = zext i8 %arrayidx30.val.i274.i to i32
  %conv2.i.i279.i = zext i8 %arrayidx41.val.i276.i to i32
  %add.i.i280.i = add nuw nsw i32 %conv2.i.i279.i, %conv.i.i278.i
  %conv4.i.i281.i = zext i8 %arrayidx30.val71.i275.i to i32
  %conv6.i.i282.i = zext i8 %arrayidx41.val72.i277.i to i32
  %add7.i.i283.i = add nuw nsw i32 %conv6.i.i282.i, %conv4.i.i281.i
  %cmp.i.i284.i = icmp ugt i32 %add.i.i280.i, 2
  %conv8.i.i285.i = zext i1 %cmp.i.i284.i to i32
  %cmp9.i.i286.i = icmp ugt i32 %add.i.i280.i, 32
  %conv10.i.i287.i = zext i1 %cmp9.i.i286.i to i32
  %add11.i.i288.i = add nuw nsw i32 %conv8.i.i285.i, %conv10.i.i287.i
  %cmp12.i.i289.i = icmp ugt i32 %add7.i.i283.i, 2
  %conv13.i.i290.i = zext i1 %cmp12.i.i289.i to i32
  %cmp14.i.i291.i = icmp ugt i32 %add7.i.i283.i, 32
  %conv15.i.i292.i = zext i1 %cmp14.i.i291.i to i32
  %add16.i.i293.i = add nuw nsw i32 %conv13.i.i290.i, %conv15.i.i292.i
  %call44.i294.i = call fastcc i32 @x264_cabac_mb_mvd_cpn(ptr noundef %cb, i32 noundef 0, i32 noundef %sub.i261.i, i32 noundef %add11.i.i288.i)
  %call46.i295.i = call fastcc i32 @x264_cabac_mb_mvd_cpn(ptr noundef %cb, i32 noundef 1, i32 noundef %sub21.i266.i, i32 noundef %add16.i.i293.i)
  %shl.i73.i296.i = shl nuw nsw i32 %call46.i295.i, 8
  %add.i74.i297.i = add nuw nsw i32 %shl.i73.i296.i, %call44.i294.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mvp.i253.i) #7
  %arrayidx33.i = getelementptr inbounds [16 x i8], ptr @block_idx_x, i64 0, i64 %157
  %166 = load i8, ptr %arrayidx33.i, align 2
  %conv34.i = zext i8 %166 to i64
  %arrayidx38.i1185 = getelementptr inbounds [16 x i8], ptr @block_idx_y, i64 0, i64 %157
  %167 = load i8, ptr %arrayidx38.i1185, align 2
  %conv39.i1186 = zext i8 %167 to i64
  %add.i300.i = add nuw nsw i64 %conv34.i, 12
  %mul.i301.i = shl nuw nsw i64 %conv39.i1186, 3
  %add2.i302.i = add nuw nsw i64 %add.i300.i, %mul.i301.i
  %arrayidx4.i304.i = getelementptr inbounds [2 x [40 x [2 x i8]]], ptr %mvd.i436.i, i64 0, i64 0, i64 %add2.i302.i
  %conv.i305.i = and i32 %add.i74.i297.i, 65535
  %mul8.i.i306.i = mul nuw i32 %conv.i305.i, 65537
  store i32 %mul8.i.i306.i, ptr %arrayidx4.i304.i, align 4
  br label %x264_cabac_mb8x8_mvd.exit

do.body42.i:                                      ; preds = %for.body174
  %168 = shl nuw nsw i64 %indvars.iv1810, 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mvp.i309.i) #7
  %169 = trunc nuw nsw i64 %168 to i32
  call void @x264_mb_predict_mv(ptr noundef nonnull %h, i32 noundef 0, i32 noundef %169, i32 noundef 1, ptr noundef nonnull %mvp.i309.i) #7
  %arrayidx2.i312.i = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %168
  %170 = load i32, ptr %arrayidx2.i312.i, align 16
  %idxprom3.i313.i = sext i32 %170 to i64
  %arrayidx4.i314.i = getelementptr inbounds [2 x [40 x [2 x i16]]], ptr %mv.i423.i, i64 0, i64 0, i64 %idxprom3.i313.i
  %171 = load i16, ptr %arrayidx4.i314.i, align 4
  %conv.i315.i = sext i16 %171 to i32
  %172 = load i16, ptr %mvp.i309.i, align 4
  %conv7.i316.i = sext i16 %172 to i32
  %sub.i317.i = sub nsw i32 %conv.i315.i, %conv7.i316.i
  %arrayidx17.i318.i = getelementptr inbounds i8, ptr %arrayidx4.i314.i, i64 2
  %173 = load i16, ptr %arrayidx17.i318.i, align 2
  %conv18.i319.i = sext i16 %173 to i32
  %174 = load i16, ptr %arrayidx19.i320.i, align 2
  %conv20.i321.i = sext i16 %174 to i32
  %sub21.i322.i = sub nsw i32 %conv18.i319.i, %conv20.i321.i
  %sub28.i324.i = add nsw i32 %170, -1
  %idxprom29.i325.i = sext i32 %sub28.i324.i to i64
  %arrayidx30.i326.i = getelementptr inbounds [2 x [40 x [2 x i8]]], ptr %mvd.i436.i, i64 0, i64 0, i64 %idxprom29.i325.i
  %sub39.i327.i = add nsw i32 %170, -8
  %idxprom40.i328.i = sext i32 %sub39.i327.i to i64
  %arrayidx41.i329.i = getelementptr inbounds [2 x [40 x [2 x i8]]], ptr %mvd.i436.i, i64 0, i64 0, i64 %idxprom40.i328.i
  %arrayidx30.val.i330.i = load i8, ptr %arrayidx30.i326.i, align 1
  %175 = getelementptr i8, ptr %arrayidx30.i326.i, i64 1
  %arrayidx30.val71.i331.i = load i8, ptr %175, align 1
  %arrayidx41.val.i332.i = load i8, ptr %arrayidx41.i329.i, align 1
  %176 = getelementptr i8, ptr %arrayidx41.i329.i, i64 1
  %arrayidx41.val72.i333.i = load i8, ptr %176, align 1
  %conv.i.i334.i = zext i8 %arrayidx30.val.i330.i to i32
  %conv2.i.i335.i = zext i8 %arrayidx41.val.i332.i to i32
  %add.i.i336.i = add nuw nsw i32 %conv2.i.i335.i, %conv.i.i334.i
  %conv4.i.i337.i = zext i8 %arrayidx30.val71.i331.i to i32
  %conv6.i.i338.i = zext i8 %arrayidx41.val72.i333.i to i32
  %add7.i.i339.i = add nuw nsw i32 %conv6.i.i338.i, %conv4.i.i337.i
  %cmp.i.i340.i = icmp ugt i32 %add.i.i336.i, 2
  %conv8.i.i341.i = zext i1 %cmp.i.i340.i to i32
  %cmp9.i.i342.i = icmp ugt i32 %add.i.i336.i, 32
  %conv10.i.i343.i = zext i1 %cmp9.i.i342.i to i32
  %add11.i.i344.i = add nuw nsw i32 %conv8.i.i341.i, %conv10.i.i343.i
  %cmp12.i.i345.i = icmp ugt i32 %add7.i.i339.i, 2
  %conv13.i.i346.i = zext i1 %cmp12.i.i345.i to i32
  %cmp14.i.i347.i = icmp ugt i32 %add7.i.i339.i, 32
  %conv15.i.i348.i = zext i1 %cmp14.i.i347.i to i32
  %add16.i.i349.i = add nuw nsw i32 %conv13.i.i346.i, %conv15.i.i348.i
  %call44.i350.i = call fastcc i32 @x264_cabac_mb_mvd_cpn(ptr noundef %cb, i32 noundef 0, i32 noundef %sub.i317.i, i32 noundef %add11.i.i344.i)
  %call46.i351.i = call fastcc i32 @x264_cabac_mb_mvd_cpn(ptr noundef %cb, i32 noundef 1, i32 noundef %sub21.i322.i, i32 noundef %add16.i.i349.i)
  %shl.i73.i352.i = shl nuw nsw i32 %call46.i351.i, 8
  %add.i74.i353.i = add nuw nsw i32 %shl.i73.i352.i, %call44.i350.i
  %conv48.i354.i = trunc i32 %add.i74.i353.i to i16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mvp.i309.i) #7
  %arrayidx50.i = getelementptr inbounds [16 x i8], ptr @block_idx_x, i64 0, i64 %168
  %177 = load i8, ptr %arrayidx50.i, align 4
  %conv51.i = zext i8 %177 to i64
  %arrayidx55.i = getelementptr inbounds [16 x i8], ptr @block_idx_y, i64 0, i64 %168
  %178 = load i8, ptr %arrayidx55.i, align 4
  %conv56.i = zext i8 %178 to i64
  %add.i356.i = add nuw nsw i64 %conv51.i, 12
  %mul.i357.i = shl nuw nsw i64 %conv56.i, 3
  %add2.i358.i = add nuw nsw i64 %add.i356.i, %mul.i357.i
  %arrayidx4.i360.i = getelementptr inbounds [2 x [40 x [2 x i8]]], ptr %mvd.i436.i, i64 0, i64 0, i64 %add2.i358.i
  store i16 %conv48.i354.i, ptr %arrayidx4.i360.i, align 2
  %add.ptr26.i.i.i = getelementptr inbounds i8, ptr %arrayidx4.i360.i, i64 16
  store i16 %conv48.i354.i, ptr %add.ptr26.i.i.i, align 2
  %179 = or disjoint i64 %168, 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mvp.i365.i) #7
  %180 = trunc nuw nsw i64 %179 to i32
  call void @x264_mb_predict_mv(ptr noundef nonnull %h, i32 noundef 0, i32 noundef %180, i32 noundef 1, ptr noundef nonnull %mvp.i365.i) #7
  %arrayidx2.i368.i = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %179
  %181 = load i32, ptr %arrayidx2.i368.i, align 4
  %idxprom3.i369.i = sext i32 %181 to i64
  %arrayidx4.i370.i = getelementptr inbounds [2 x [40 x [2 x i16]]], ptr %mv.i423.i, i64 0, i64 0, i64 %idxprom3.i369.i
  %182 = load i16, ptr %arrayidx4.i370.i, align 4
  %conv.i371.i = sext i16 %182 to i32
  %183 = load i16, ptr %mvp.i365.i, align 4
  %conv7.i372.i = sext i16 %183 to i32
  %sub.i373.i = sub nsw i32 %conv.i371.i, %conv7.i372.i
  %arrayidx17.i374.i = getelementptr inbounds i8, ptr %arrayidx4.i370.i, i64 2
  %184 = load i16, ptr %arrayidx17.i374.i, align 2
  %conv18.i375.i = sext i16 %184 to i32
  %185 = load i16, ptr %arrayidx19.i376.i, align 2
  %conv20.i377.i = sext i16 %185 to i32
  %sub21.i378.i = sub nsw i32 %conv18.i375.i, %conv20.i377.i
  %sub28.i380.i = add nsw i32 %181, -1
  %idxprom29.i381.i = sext i32 %sub28.i380.i to i64
  %arrayidx30.i382.i = getelementptr inbounds [2 x [40 x [2 x i8]]], ptr %mvd.i436.i, i64 0, i64 0, i64 %idxprom29.i381.i
  %sub39.i383.i = add nsw i32 %181, -8
  %idxprom40.i384.i = sext i32 %sub39.i383.i to i64
  %arrayidx41.i385.i = getelementptr inbounds [2 x [40 x [2 x i8]]], ptr %mvd.i436.i, i64 0, i64 0, i64 %idxprom40.i384.i
  %arrayidx30.val.i386.i = load i8, ptr %arrayidx30.i382.i, align 1
  %186 = getelementptr i8, ptr %arrayidx30.i382.i, i64 1
  %arrayidx30.val71.i387.i = load i8, ptr %186, align 1
  %arrayidx41.val.i388.i = load i8, ptr %arrayidx41.i385.i, align 1
  %187 = getelementptr i8, ptr %arrayidx41.i385.i, i64 1
  %arrayidx41.val72.i389.i = load i8, ptr %187, align 1
  %conv.i.i390.i = zext i8 %arrayidx30.val.i386.i to i32
  %conv2.i.i391.i = zext i8 %arrayidx41.val.i388.i to i32
  %add.i.i392.i = add nuw nsw i32 %conv2.i.i391.i, %conv.i.i390.i
  %conv4.i.i393.i = zext i8 %arrayidx30.val71.i387.i to i32
  %conv6.i.i394.i = zext i8 %arrayidx41.val72.i389.i to i32
  %add7.i.i395.i = add nuw nsw i32 %conv6.i.i394.i, %conv4.i.i393.i
  %cmp.i.i396.i = icmp ugt i32 %add.i.i392.i, 2
  %conv8.i.i397.i = zext i1 %cmp.i.i396.i to i32
  %cmp9.i.i398.i = icmp ugt i32 %add.i.i392.i, 32
  %conv10.i.i399.i = zext i1 %cmp9.i.i398.i to i32
  %add11.i.i400.i = add nuw nsw i32 %conv8.i.i397.i, %conv10.i.i399.i
  %cmp12.i.i401.i = icmp ugt i32 %add7.i.i395.i, 2
  %conv13.i.i402.i = zext i1 %cmp12.i.i401.i to i32
  %cmp14.i.i403.i = icmp ugt i32 %add7.i.i395.i, 32
  %conv15.i.i404.i = zext i1 %cmp14.i.i403.i to i32
  %add16.i.i405.i = add nuw nsw i32 %conv13.i.i402.i, %conv15.i.i404.i
  %call44.i406.i = call fastcc i32 @x264_cabac_mb_mvd_cpn(ptr noundef %cb, i32 noundef 0, i32 noundef %sub.i373.i, i32 noundef %add11.i.i400.i)
  %call46.i407.i = call fastcc i32 @x264_cabac_mb_mvd_cpn(ptr noundef %cb, i32 noundef 1, i32 noundef %sub21.i378.i, i32 noundef %add16.i.i405.i)
  %shl.i73.i408.i = shl nuw nsw i32 %call46.i407.i, 8
  %add.i74.i409.i = add nuw nsw i32 %shl.i73.i408.i, %call44.i406.i
  %conv48.i410.i = trunc i32 %add.i74.i409.i to i16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mvp.i365.i) #7
  %arrayidx66.i = getelementptr inbounds [16 x i8], ptr @block_idx_x, i64 0, i64 %179
  %188 = load i8, ptr %arrayidx66.i, align 1
  %conv67.i1183 = zext i8 %188 to i64
  %arrayidx71.i = getelementptr inbounds [16 x i8], ptr @block_idx_y, i64 0, i64 %179
  %189 = load i8, ptr %arrayidx71.i, align 1
  %conv72.i = zext i8 %189 to i64
  %add.i412.i = add nuw nsw i64 %conv67.i1183, 12
  %mul.i413.i = shl nuw nsw i64 %conv72.i, 3
  %add2.i414.i = add nuw nsw i64 %add.i412.i, %mul.i413.i
  %arrayidx4.i416.i = getelementptr inbounds [2 x [40 x [2 x i8]]], ptr %mvd.i436.i, i64 0, i64 0, i64 %add2.i414.i
  store i16 %conv48.i410.i, ptr %arrayidx4.i416.i, align 2
  %add.ptr26.i.i421.i = getelementptr inbounds i8, ptr %arrayidx4.i416.i, i64 16
  store i16 %conv48.i410.i, ptr %add.ptr26.i.i421.i, align 2
  br label %x264_cabac_mb8x8_mvd.exit

do.body75.i:                                      ; preds = %for.body174
  %190 = shl nuw nsw i64 %indvars.iv1810, 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mvp.i422.i) #7
  %191 = trunc nuw nsw i64 %190 to i32
  call void @x264_mb_predict_mv(ptr noundef nonnull %h, i32 noundef 0, i32 noundef %191, i32 noundef 1, ptr noundef nonnull %mvp.i422.i) #7
  %arrayidx2.i425.i = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %190
  %192 = load i32, ptr %arrayidx2.i425.i, align 16
  %idxprom3.i426.i = sext i32 %192 to i64
  %arrayidx4.i427.i = getelementptr inbounds [2 x [40 x [2 x i16]]], ptr %mv.i423.i, i64 0, i64 0, i64 %idxprom3.i426.i
  %193 = load i16, ptr %arrayidx4.i427.i, align 4
  %conv.i428.i = sext i16 %193 to i32
  %194 = load i16, ptr %mvp.i422.i, align 4
  %conv7.i429.i = sext i16 %194 to i32
  %sub.i430.i = sub nsw i32 %conv.i428.i, %conv7.i429.i
  %arrayidx17.i431.i = getelementptr inbounds i8, ptr %arrayidx4.i427.i, i64 2
  %195 = load i16, ptr %arrayidx17.i431.i, align 2
  %conv18.i432.i = sext i16 %195 to i32
  %196 = load i16, ptr %arrayidx19.i433.i, align 2
  %conv20.i434.i = sext i16 %196 to i32
  %sub21.i435.i = sub nsw i32 %conv18.i432.i, %conv20.i434.i
  %sub28.i437.i = add nsw i32 %192, -1
  %idxprom29.i438.i = sext i32 %sub28.i437.i to i64
  %arrayidx30.i439.i = getelementptr inbounds [2 x [40 x [2 x i8]]], ptr %mvd.i436.i, i64 0, i64 0, i64 %idxprom29.i438.i
  %sub39.i440.i = add nsw i32 %192, -8
  %idxprom40.i441.i = sext i32 %sub39.i440.i to i64
  %arrayidx41.i442.i = getelementptr inbounds [2 x [40 x [2 x i8]]], ptr %mvd.i436.i, i64 0, i64 0, i64 %idxprom40.i441.i
  %arrayidx30.val.i443.i = load i8, ptr %arrayidx30.i439.i, align 1
  %197 = getelementptr i8, ptr %arrayidx30.i439.i, i64 1
  %arrayidx30.val71.i444.i = load i8, ptr %197, align 1
  %arrayidx41.val.i445.i = load i8, ptr %arrayidx41.i442.i, align 1
  %198 = getelementptr i8, ptr %arrayidx41.i442.i, i64 1
  %arrayidx41.val72.i446.i = load i8, ptr %198, align 1
  %conv.i.i447.i = zext i8 %arrayidx30.val.i443.i to i32
  %conv2.i.i448.i = zext i8 %arrayidx41.val.i445.i to i32
  %add.i.i449.i = add nuw nsw i32 %conv2.i.i448.i, %conv.i.i447.i
  %conv4.i.i450.i = zext i8 %arrayidx30.val71.i444.i to i32
  %conv6.i.i451.i = zext i8 %arrayidx41.val72.i446.i to i32
  %add7.i.i452.i = add nuw nsw i32 %conv6.i.i451.i, %conv4.i.i450.i
  %cmp.i.i453.i = icmp ugt i32 %add.i.i449.i, 2
  %conv8.i.i454.i = zext i1 %cmp.i.i453.i to i32
  %cmp9.i.i455.i = icmp ugt i32 %add.i.i449.i, 32
  %conv10.i.i456.i = zext i1 %cmp9.i.i455.i to i32
  %add11.i.i457.i = add nuw nsw i32 %conv8.i.i454.i, %conv10.i.i456.i
  %cmp12.i.i458.i = icmp ugt i32 %add7.i.i452.i, 2
  %conv13.i.i459.i = zext i1 %cmp12.i.i458.i to i32
  %cmp14.i.i460.i = icmp ugt i32 %add7.i.i452.i, 32
  %conv15.i.i461.i = zext i1 %cmp14.i.i460.i to i32
  %add16.i.i462.i = add nuw nsw i32 %conv13.i.i459.i, %conv15.i.i461.i
  %call44.i463.i = call fastcc i32 @x264_cabac_mb_mvd_cpn(ptr noundef %cb, i32 noundef 0, i32 noundef %sub.i430.i, i32 noundef %add11.i.i457.i)
  %call46.i464.i = call fastcc i32 @x264_cabac_mb_mvd_cpn(ptr noundef %cb, i32 noundef 1, i32 noundef %sub21.i435.i, i32 noundef %add16.i.i462.i)
  %shl.i73.i465.i = shl nuw nsw i32 %call46.i464.i, 8
  %add.i74.i466.i = add nuw nsw i32 %shl.i73.i465.i, %call44.i463.i
  %conv48.i467.i = trunc i32 %add.i74.i466.i to i16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mvp.i422.i) #7
  %arrayidx83.i = getelementptr inbounds [16 x i8], ptr @block_idx_x, i64 0, i64 %190
  %199 = load i8, ptr %arrayidx83.i, align 4
  %conv84.i = zext i8 %199 to i64
  %arrayidx88.i = getelementptr inbounds [16 x i8], ptr @block_idx_y, i64 0, i64 %190
  %200 = load i8, ptr %arrayidx88.i, align 4
  %conv89.i = zext i8 %200 to i64
  %add.i469.i = add nuw nsw i64 %conv84.i, 12
  %mul.i470.i = shl nuw nsw i64 %conv89.i, 3
  %add2.i471.i = add nuw nsw i64 %add.i469.i, %mul.i470.i
  %arrayidx4.i473.i = getelementptr inbounds [2 x [40 x [2 x i8]]], ptr %mvd.i436.i, i64 0, i64 0, i64 %add2.i471.i
  store i16 %conv48.i467.i, ptr %arrayidx4.i473.i, align 2
  %201 = or disjoint i64 %190, 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mvp.i478.i) #7
  %202 = trunc nuw nsw i64 %201 to i32
  call void @x264_mb_predict_mv(ptr noundef nonnull %h, i32 noundef 0, i32 noundef %202, i32 noundef 1, ptr noundef nonnull %mvp.i478.i) #7
  %arrayidx2.i481.i = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %201
  %203 = load i32, ptr %arrayidx2.i481.i, align 4
  %idxprom3.i482.i = sext i32 %203 to i64
  %arrayidx4.i483.i = getelementptr inbounds [2 x [40 x [2 x i16]]], ptr %mv.i423.i, i64 0, i64 0, i64 %idxprom3.i482.i
  %204 = load i16, ptr %arrayidx4.i483.i, align 4
  %conv.i484.i = sext i16 %204 to i32
  %205 = load i16, ptr %mvp.i478.i, align 4
  %conv7.i485.i = sext i16 %205 to i32
  %sub.i486.i = sub nsw i32 %conv.i484.i, %conv7.i485.i
  %arrayidx17.i487.i = getelementptr inbounds i8, ptr %arrayidx4.i483.i, i64 2
  %206 = load i16, ptr %arrayidx17.i487.i, align 2
  %conv18.i488.i = sext i16 %206 to i32
  %207 = load i16, ptr %arrayidx19.i489.i, align 2
  %conv20.i490.i = sext i16 %207 to i32
  %sub21.i491.i = sub nsw i32 %conv18.i488.i, %conv20.i490.i
  %sub28.i493.i = add nsw i32 %203, -1
  %idxprom29.i494.i = sext i32 %sub28.i493.i to i64
  %arrayidx30.i495.i = getelementptr inbounds [2 x [40 x [2 x i8]]], ptr %mvd.i436.i, i64 0, i64 0, i64 %idxprom29.i494.i
  %sub39.i496.i = add nsw i32 %203, -8
  %idxprom40.i497.i = sext i32 %sub39.i496.i to i64
  %arrayidx41.i498.i = getelementptr inbounds [2 x [40 x [2 x i8]]], ptr %mvd.i436.i, i64 0, i64 0, i64 %idxprom40.i497.i
  %arrayidx30.val.i499.i = load i8, ptr %arrayidx30.i495.i, align 1
  %208 = getelementptr i8, ptr %arrayidx30.i495.i, i64 1
  %arrayidx30.val71.i500.i = load i8, ptr %208, align 1
  %arrayidx41.val.i501.i = load i8, ptr %arrayidx41.i498.i, align 1
  %209 = getelementptr i8, ptr %arrayidx41.i498.i, i64 1
  %arrayidx41.val72.i502.i = load i8, ptr %209, align 1
  %conv.i.i503.i = zext i8 %arrayidx30.val.i499.i to i32
  %conv2.i.i504.i = zext i8 %arrayidx41.val.i501.i to i32
  %add.i.i505.i = add nuw nsw i32 %conv2.i.i504.i, %conv.i.i503.i
  %conv4.i.i506.i = zext i8 %arrayidx30.val71.i500.i to i32
  %conv6.i.i507.i = zext i8 %arrayidx41.val72.i502.i to i32
  %add7.i.i508.i = add nuw nsw i32 %conv6.i.i507.i, %conv4.i.i506.i
  %cmp.i.i509.i = icmp ugt i32 %add.i.i505.i, 2
  %conv8.i.i510.i = zext i1 %cmp.i.i509.i to i32
  %cmp9.i.i511.i = icmp ugt i32 %add.i.i505.i, 32
  %conv10.i.i512.i = zext i1 %cmp9.i.i511.i to i32
  %add11.i.i513.i = add nuw nsw i32 %conv8.i.i510.i, %conv10.i.i512.i
  %cmp12.i.i514.i = icmp ugt i32 %add7.i.i508.i, 2
  %conv13.i.i515.i = zext i1 %cmp12.i.i514.i to i32
  %cmp14.i.i516.i = icmp ugt i32 %add7.i.i508.i, 32
  %conv15.i.i517.i = zext i1 %cmp14.i.i516.i to i32
  %add16.i.i518.i = add nuw nsw i32 %conv13.i.i515.i, %conv15.i.i517.i
  %call44.i519.i = call fastcc i32 @x264_cabac_mb_mvd_cpn(ptr noundef %cb, i32 noundef 0, i32 noundef %sub.i486.i, i32 noundef %add11.i.i513.i)
  %call46.i520.i = call fastcc i32 @x264_cabac_mb_mvd_cpn(ptr noundef %cb, i32 noundef 1, i32 noundef %sub21.i491.i, i32 noundef %add16.i.i518.i)
  %shl.i73.i521.i = shl nuw nsw i32 %call46.i520.i, 8
  %add.i74.i522.i = add nuw nsw i32 %shl.i73.i521.i, %call44.i519.i
  %conv48.i523.i = trunc i32 %add.i74.i522.i to i16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mvp.i478.i) #7
  %arrayidx99.i = getelementptr inbounds [16 x i8], ptr @block_idx_x, i64 0, i64 %201
  %210 = load i8, ptr %arrayidx99.i, align 1
  %conv100.i = zext i8 %210 to i64
  %arrayidx104.i = getelementptr inbounds [16 x i8], ptr @block_idx_y, i64 0, i64 %201
  %211 = load i8, ptr %arrayidx104.i, align 1
  %conv105.i = zext i8 %211 to i64
  %add.i525.i = add nuw nsw i64 %conv100.i, 12
  %mul.i526.i = shl nuw nsw i64 %conv105.i, 3
  %add2.i527.i = add nuw nsw i64 %add.i525.i, %mul.i526.i
  %arrayidx4.i529.i = getelementptr inbounds [2 x [40 x [2 x i8]]], ptr %mvd.i436.i, i64 0, i64 0, i64 %add2.i527.i
  store i16 %conv48.i523.i, ptr %arrayidx4.i529.i, align 2
  %212 = or disjoint i64 %190, 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mvp.i534.i) #7
  %213 = trunc nuw nsw i64 %212 to i32
  call void @x264_mb_predict_mv(ptr noundef nonnull %h, i32 noundef 0, i32 noundef %213, i32 noundef 1, ptr noundef nonnull %mvp.i534.i) #7
  %arrayidx2.i537.i = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %212
  %214 = load i32, ptr %arrayidx2.i537.i, align 8
  %idxprom3.i538.i = sext i32 %214 to i64
  %arrayidx4.i539.i = getelementptr inbounds [2 x [40 x [2 x i16]]], ptr %mv.i423.i, i64 0, i64 0, i64 %idxprom3.i538.i
  %215 = load i16, ptr %arrayidx4.i539.i, align 4
  %conv.i540.i = sext i16 %215 to i32
  %216 = load i16, ptr %mvp.i534.i, align 4
  %conv7.i541.i = sext i16 %216 to i32
  %sub.i542.i = sub nsw i32 %conv.i540.i, %conv7.i541.i
  %arrayidx17.i543.i = getelementptr inbounds i8, ptr %arrayidx4.i539.i, i64 2
  %217 = load i16, ptr %arrayidx17.i543.i, align 2
  %conv18.i544.i = sext i16 %217 to i32
  %218 = load i16, ptr %arrayidx19.i545.i, align 2
  %conv20.i546.i = sext i16 %218 to i32
  %sub21.i547.i = sub nsw i32 %conv18.i544.i, %conv20.i546.i
  %sub28.i549.i = add nsw i32 %214, -1
  %idxprom29.i550.i = sext i32 %sub28.i549.i to i64
  %arrayidx30.i551.i = getelementptr inbounds [2 x [40 x [2 x i8]]], ptr %mvd.i436.i, i64 0, i64 0, i64 %idxprom29.i550.i
  %sub39.i552.i = add nsw i32 %214, -8
  %idxprom40.i553.i = sext i32 %sub39.i552.i to i64
  %arrayidx41.i554.i = getelementptr inbounds [2 x [40 x [2 x i8]]], ptr %mvd.i436.i, i64 0, i64 0, i64 %idxprom40.i553.i
  %arrayidx30.val.i555.i = load i8, ptr %arrayidx30.i551.i, align 1
  %219 = getelementptr i8, ptr %arrayidx30.i551.i, i64 1
  %arrayidx30.val71.i556.i = load i8, ptr %219, align 1
  %arrayidx41.val.i557.i = load i8, ptr %arrayidx41.i554.i, align 1
  %220 = getelementptr i8, ptr %arrayidx41.i554.i, i64 1
  %arrayidx41.val72.i558.i = load i8, ptr %220, align 1
  %conv.i.i559.i = zext i8 %arrayidx30.val.i555.i to i32
  %conv2.i.i560.i = zext i8 %arrayidx41.val.i557.i to i32
  %add.i.i561.i = add nuw nsw i32 %conv2.i.i560.i, %conv.i.i559.i
  %conv4.i.i562.i = zext i8 %arrayidx30.val71.i556.i to i32
  %conv6.i.i563.i = zext i8 %arrayidx41.val72.i558.i to i32
  %add7.i.i564.i = add nuw nsw i32 %conv6.i.i563.i, %conv4.i.i562.i
  %cmp.i.i565.i = icmp ugt i32 %add.i.i561.i, 2
  %conv8.i.i566.i = zext i1 %cmp.i.i565.i to i32
  %cmp9.i.i567.i = icmp ugt i32 %add.i.i561.i, 32
  %conv10.i.i568.i = zext i1 %cmp9.i.i567.i to i32
  %add11.i.i569.i = add nuw nsw i32 %conv8.i.i566.i, %conv10.i.i568.i
  %cmp12.i.i570.i = icmp ugt i32 %add7.i.i564.i, 2
  %conv13.i.i571.i = zext i1 %cmp12.i.i570.i to i32
  %cmp14.i.i572.i = icmp ugt i32 %add7.i.i564.i, 32
  %conv15.i.i573.i = zext i1 %cmp14.i.i572.i to i32
  %add16.i.i574.i = add nuw nsw i32 %conv13.i.i571.i, %conv15.i.i573.i
  %call44.i575.i = call fastcc i32 @x264_cabac_mb_mvd_cpn(ptr noundef %cb, i32 noundef 0, i32 noundef %sub.i542.i, i32 noundef %add11.i.i569.i)
  %call46.i576.i = call fastcc i32 @x264_cabac_mb_mvd_cpn(ptr noundef %cb, i32 noundef 1, i32 noundef %sub21.i547.i, i32 noundef %add16.i.i574.i)
  %shl.i73.i577.i = shl nuw nsw i32 %call46.i576.i, 8
  %add.i74.i578.i = add nuw nsw i32 %shl.i73.i577.i, %call44.i575.i
  %conv48.i579.i = trunc i32 %add.i74.i578.i to i16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mvp.i534.i) #7
  %arrayidx115.i = getelementptr inbounds [16 x i8], ptr @block_idx_x, i64 0, i64 %212
  %221 = load i8, ptr %arrayidx115.i, align 2
  %conv116.i = zext i8 %221 to i64
  %arrayidx120.i = getelementptr inbounds [16 x i8], ptr @block_idx_y, i64 0, i64 %212
  %222 = load i8, ptr %arrayidx120.i, align 2
  %conv121.i = zext i8 %222 to i64
  %add.i581.i = add nuw nsw i64 %conv116.i, 12
  %mul.i582.i = shl nuw nsw i64 %conv121.i, 3
  %add2.i583.i = add nuw nsw i64 %add.i581.i, %mul.i582.i
  %arrayidx4.i585.i = getelementptr inbounds [2 x [40 x [2 x i8]]], ptr %mvd.i436.i, i64 0, i64 0, i64 %add2.i583.i
  store i16 %conv48.i579.i, ptr %arrayidx4.i585.i, align 2
  %223 = or disjoint i64 %190, 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mvp.i590.i) #7
  %224 = trunc nuw nsw i64 %223 to i32
  call void @x264_mb_predict_mv(ptr noundef nonnull %h, i32 noundef 0, i32 noundef %224, i32 noundef 1, ptr noundef nonnull %mvp.i590.i) #7
  %arrayidx2.i593.i = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %223
  %225 = load i32, ptr %arrayidx2.i593.i, align 4
  %idxprom3.i594.i = sext i32 %225 to i64
  %arrayidx4.i595.i = getelementptr inbounds [2 x [40 x [2 x i16]]], ptr %mv.i423.i, i64 0, i64 0, i64 %idxprom3.i594.i
  %226 = load i16, ptr %arrayidx4.i595.i, align 4
  %conv.i596.i = sext i16 %226 to i32
  %227 = load i16, ptr %mvp.i590.i, align 4
  %conv7.i597.i = sext i16 %227 to i32
  %sub.i598.i = sub nsw i32 %conv.i596.i, %conv7.i597.i
  %arrayidx17.i599.i = getelementptr inbounds i8, ptr %arrayidx4.i595.i, i64 2
  %228 = load i16, ptr %arrayidx17.i599.i, align 2
  %conv18.i600.i = sext i16 %228 to i32
  %229 = load i16, ptr %arrayidx19.i601.i, align 2
  %conv20.i602.i = sext i16 %229 to i32
  %sub21.i603.i = sub nsw i32 %conv18.i600.i, %conv20.i602.i
  %sub28.i605.i = add nsw i32 %225, -1
  %idxprom29.i606.i = sext i32 %sub28.i605.i to i64
  %arrayidx30.i607.i = getelementptr inbounds [2 x [40 x [2 x i8]]], ptr %mvd.i436.i, i64 0, i64 0, i64 %idxprom29.i606.i
  %sub39.i608.i = add nsw i32 %225, -8
  %idxprom40.i609.i = sext i32 %sub39.i608.i to i64
  %arrayidx41.i610.i = getelementptr inbounds [2 x [40 x [2 x i8]]], ptr %mvd.i436.i, i64 0, i64 0, i64 %idxprom40.i609.i
  %arrayidx30.val.i611.i = load i8, ptr %arrayidx30.i607.i, align 1
  %230 = getelementptr i8, ptr %arrayidx30.i607.i, i64 1
  %arrayidx30.val71.i612.i = load i8, ptr %230, align 1
  %arrayidx41.val.i613.i = load i8, ptr %arrayidx41.i610.i, align 1
  %231 = getelementptr i8, ptr %arrayidx41.i610.i, i64 1
  %arrayidx41.val72.i614.i = load i8, ptr %231, align 1
  %conv.i.i615.i = zext i8 %arrayidx30.val.i611.i to i32
  %conv2.i.i616.i = zext i8 %arrayidx41.val.i613.i to i32
  %add.i.i617.i = add nuw nsw i32 %conv2.i.i616.i, %conv.i.i615.i
  %conv4.i.i618.i = zext i8 %arrayidx30.val71.i612.i to i32
  %conv6.i.i619.i = zext i8 %arrayidx41.val72.i614.i to i32
  %add7.i.i620.i = add nuw nsw i32 %conv6.i.i619.i, %conv4.i.i618.i
  %cmp.i.i621.i = icmp ugt i32 %add.i.i617.i, 2
  %conv8.i.i622.i = zext i1 %cmp.i.i621.i to i32
  %cmp9.i.i623.i = icmp ugt i32 %add.i.i617.i, 32
  %conv10.i.i624.i = zext i1 %cmp9.i.i623.i to i32
  %add11.i.i625.i = add nuw nsw i32 %conv8.i.i622.i, %conv10.i.i624.i
  %cmp12.i.i626.i = icmp ugt i32 %add7.i.i620.i, 2
  %conv13.i.i627.i = zext i1 %cmp12.i.i626.i to i32
  %cmp14.i.i628.i = icmp ugt i32 %add7.i.i620.i, 32
  %conv15.i.i629.i = zext i1 %cmp14.i.i628.i to i32
  %add16.i.i630.i = add nuw nsw i32 %conv13.i.i627.i, %conv15.i.i629.i
  %call44.i631.i = call fastcc i32 @x264_cabac_mb_mvd_cpn(ptr noundef %cb, i32 noundef 0, i32 noundef %sub.i598.i, i32 noundef %add11.i.i625.i)
  %call46.i632.i = call fastcc i32 @x264_cabac_mb_mvd_cpn(ptr noundef %cb, i32 noundef 1, i32 noundef %sub21.i603.i, i32 noundef %add16.i.i630.i)
  %shl.i73.i633.i = shl nuw nsw i32 %call46.i632.i, 8
  %add.i74.i634.i = add nuw nsw i32 %shl.i73.i633.i, %call44.i631.i
  %conv48.i635.i = trunc i32 %add.i74.i634.i to i16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mvp.i590.i) #7
  %arrayidx131.i = getelementptr inbounds [16 x i8], ptr @block_idx_x, i64 0, i64 %223
  %232 = load i8, ptr %arrayidx131.i, align 1
  %conv132.i = zext i8 %232 to i64
  %arrayidx136.i = getelementptr inbounds [16 x i8], ptr @block_idx_y, i64 0, i64 %223
  %233 = load i8, ptr %arrayidx136.i, align 1
  %conv137.i = zext i8 %233 to i64
  %add.i637.i = add nuw nsw i64 %conv132.i, 12
  %mul.i638.i = shl nuw nsw i64 %conv137.i, 3
  %add2.i639.i = add nuw nsw i64 %add.i637.i, %mul.i638.i
  %arrayidx4.i641.i = getelementptr inbounds [2 x [40 x [2 x i8]]], ptr %mvd.i436.i, i64 0, i64 0, i64 %add2.i639.i
  store i16 %conv48.i635.i, ptr %arrayidx4.i641.i, align 2
  br label %x264_cabac_mb8x8_mvd.exit

x264_cabac_mb8x8_mvd.exit:                        ; preds = %for.body174, %do.body.i, %do.body10.i, %do.body42.i, %do.body75.i
  %indvars.iv.next1811 = add nuw nsw i64 %indvars.iv1810, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next1811, 4
  br i1 %exitcond.not, label %if.end467, label %for.body174

for.cond204.preheader:                            ; preds = %x264_cabac_mb_sub_b_partition.exit.3
  %idxprom213 = zext i8 %.pre1841.pre1845 to i64
  %arrayidx214 = getelementptr inbounds [17 x i8], ptr @x264_mb_partition_listX_table, i64 0, i64 %idxprom213
  %234 = load i8, ptr %arrayidx214, align 1
  %tobool215.not = icmp eq i8 %234, 0
  br i1 %tobool215.not, label %for.inc219, label %if.then216

if.then.i1193:                                    ; preds = %for.cond183.preheader
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef 36, i32 noundef 0) #7
  br label %x264_cabac_mb_sub_b_partition.exit

if.end.i1189:                                     ; preds = %for.cond183.preheader
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef 36, i32 noundef 1) #7
  %cmp1.i1190 = icmp eq i8 %106, 11
  br i1 %cmp1.i1190, label %if.then2.i1192, label %if.end3.i

if.then2.i1192:                                   ; preds = %if.end.i1189
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef 37, i32 noundef 1) #7
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef 38, i32 noundef 0) #7
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef 39, i32 noundef 0) #7
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef 39, i32 noundef 0) #7
  br label %x264_cabac_mb_sub_b_partition.exit

if.end3.i:                                        ; preds = %if.end.i1189
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef 37, i32 noundef 0) #7
  %cmp4.i = icmp eq i8 %106, 7
  %conv.i1191 = zext i1 %cmp4.i to i32
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef 39, i32 noundef %conv.i1191) #7
  br label %x264_cabac_mb_sub_b_partition.exit

x264_cabac_mb_sub_b_partition.exit:               ; preds = %if.then.i1193, %if.then2.i1192, %if.end3.i
  %arrayidx191.1 = getelementptr inbounds i8, ptr %h, i64 17393
  %235 = load i8, ptr %arrayidx191.1, align 1
  %cmp.i1188.1 = icmp eq i8 %235, 12
  br i1 %cmp.i1188.1, label %if.then.i1193.1, label %if.end.i1189.1

if.end.i1189.1:                                   ; preds = %x264_cabac_mb_sub_b_partition.exit
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef 36, i32 noundef 1) #7
  %cmp1.i1190.1 = icmp eq i8 %235, 11
  br i1 %cmp1.i1190.1, label %if.then2.i1192.1, label %if.end3.i.1

if.end3.i.1:                                      ; preds = %if.end.i1189.1
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef 37, i32 noundef 0) #7
  %cmp4.i.1 = icmp eq i8 %235, 7
  %conv.i1191.1 = zext i1 %cmp4.i.1 to i32
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef 39, i32 noundef %conv.i1191.1) #7
  br label %x264_cabac_mb_sub_b_partition.exit.1

if.then2.i1192.1:                                 ; preds = %if.end.i1189.1
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef 37, i32 noundef 1) #7
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef 38, i32 noundef 0) #7
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef 39, i32 noundef 0) #7
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef 39, i32 noundef 0) #7
  br label %x264_cabac_mb_sub_b_partition.exit.1

if.then.i1193.1:                                  ; preds = %x264_cabac_mb_sub_b_partition.exit
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef 36, i32 noundef 0) #7
  br label %x264_cabac_mb_sub_b_partition.exit.1

x264_cabac_mb_sub_b_partition.exit.1:             ; preds = %if.then.i1193.1, %if.then2.i1192.1, %if.end3.i.1
  %arrayidx191.2 = getelementptr inbounds i8, ptr %h, i64 17394
  %236 = load i8, ptr %arrayidx191.2, align 1
  %cmp.i1188.2 = icmp eq i8 %236, 12
  br i1 %cmp.i1188.2, label %if.then.i1193.2, label %if.end.i1189.2

if.end.i1189.2:                                   ; preds = %x264_cabac_mb_sub_b_partition.exit.1
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef 36, i32 noundef 1) #7
  %cmp1.i1190.2 = icmp eq i8 %236, 11
  br i1 %cmp1.i1190.2, label %if.then2.i1192.2, label %if.end3.i.2

if.end3.i.2:                                      ; preds = %if.end.i1189.2
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef 37, i32 noundef 0) #7
  %cmp4.i.2 = icmp eq i8 %236, 7
  %conv.i1191.2 = zext i1 %cmp4.i.2 to i32
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef 39, i32 noundef %conv.i1191.2) #7
  br label %x264_cabac_mb_sub_b_partition.exit.2

if.then2.i1192.2:                                 ; preds = %if.end.i1189.2
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef 37, i32 noundef 1) #7
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef 38, i32 noundef 0) #7
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef 39, i32 noundef 0) #7
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef 39, i32 noundef 0) #7
  br label %x264_cabac_mb_sub_b_partition.exit.2

if.then.i1193.2:                                  ; preds = %x264_cabac_mb_sub_b_partition.exit.1
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef 36, i32 noundef 0) #7
  br label %x264_cabac_mb_sub_b_partition.exit.2

x264_cabac_mb_sub_b_partition.exit.2:             ; preds = %if.then.i1193.2, %if.then2.i1192.2, %if.end3.i.2
  %arrayidx191.3 = getelementptr inbounds i8, ptr %h, i64 17395
  %237 = load i8, ptr %arrayidx191.3, align 1
  %cmp.i1188.3 = icmp eq i8 %237, 12
  br i1 %cmp.i1188.3, label %if.then.i1193.3, label %if.end.i1189.3

if.end.i1189.3:                                   ; preds = %x264_cabac_mb_sub_b_partition.exit.2
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef 36, i32 noundef 1) #7
  %cmp1.i1190.3 = icmp eq i8 %237, 11
  br i1 %cmp1.i1190.3, label %if.then2.i1192.3, label %if.end3.i.3

if.end3.i.3:                                      ; preds = %if.end.i1189.3
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef 37, i32 noundef 0) #7
  %cmp4.i.3 = icmp eq i8 %237, 7
  %conv.i1191.3 = zext i1 %cmp4.i.3 to i32
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef 39, i32 noundef %conv.i1191.3) #7
  br label %x264_cabac_mb_sub_b_partition.exit.3

if.then2.i1192.3:                                 ; preds = %if.end.i1189.3
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef 37, i32 noundef 1) #7
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef 38, i32 noundef 0) #7
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef 39, i32 noundef 0) #7
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef 39, i32 noundef 0) #7
  br label %x264_cabac_mb_sub_b_partition.exit.3

if.then.i1193.3:                                  ; preds = %x264_cabac_mb_sub_b_partition.exit.2
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef 36, i32 noundef 0) #7
  br label %x264_cabac_mb_sub_b_partition.exit.3

x264_cabac_mb_sub_b_partition.exit.3:             ; preds = %if.then.i1193.3, %if.then2.i1192.3, %if.end3.i.3
  %i_fref198 = getelementptr inbounds i8, ptr %h, i64 21416
  %238 = load i32, ptr %i_fref198, align 8
  %cmp200 = icmp sgt i32 %238, 1
  %.pre1841.pre1845 = load i8, ptr %i_sub_partition189, align 1
  br i1 %cmp200, label %for.cond204.preheader, label %if.end222

if.then216:                                       ; preds = %for.cond204.preheader
  %arrayidx4.i1198 = getelementptr inbounds i8, ptr %h, i64 25131
  %239 = load i8, ptr %arrayidx4.i1198, align 1
  %arrayidx12.i1199 = getelementptr inbounds i8, ptr %h, i64 25124
  %240 = load i8, ptr %arrayidx12.i1199, align 1
  %cmp.i1200 = icmp sgt i8 %239, 0
  br i1 %cmp.i1200, label %land.lhs.true.i1226, label %if.end.i1201

land.lhs.true.i1226:                              ; preds = %if.then216
  %arrayidx19.i1228 = getelementptr inbounds i8, ptr %h, i64 25691
  %241 = load i8, ptr %arrayidx19.i1228, align 1
  %tobool.not.i1229 = icmp eq i8 %241, 0
  %spec.select.i1230 = zext i1 %tobool.not.i1229 to i32
  br label %if.end.i1201

if.end.i1201:                                     ; preds = %land.lhs.true.i1226, %if.then216
  %ctx.0.i1202 = phi i32 [ 0, %if.then216 ], [ %spec.select.i1230, %land.lhs.true.i1226 ]
  %cmp20.i1203 = icmp sgt i8 %240, 0
  br i1 %cmp20.i1203, label %land.lhs.true22.i1220, label %if.end31.i1204

land.lhs.true22.i1220:                            ; preds = %if.end.i1201
  %arrayidx28.i1222 = getelementptr inbounds i8, ptr %h, i64 25684
  %242 = load i8, ptr %arrayidx28.i1222, align 1
  %tobool29.not.i1223 = icmp eq i8 %242, 0
  %add.i1224 = or disjoint i32 %ctx.0.i1202, 2
  %spec.select61.i1225 = select i1 %tobool29.not.i1223, i32 %add.i1224, i32 %ctx.0.i1202
  br label %if.end31.i1204

if.end31.i1204:                                   ; preds = %land.lhs.true22.i1220, %if.end.i1201
  %ctx.1.i1205 = phi i32 [ %ctx.0.i1202, %if.end.i1201 ], [ %spec.select61.i1225, %land.lhs.true22.i1220 ]
  %arrayidx38.i1206 = getelementptr inbounds i8, ptr %h, i64 25132
  %243 = load i8, ptr %arrayidx38.i1206, align 1
  %cmp4062.i1207 = icmp sgt i8 %243, 0
  br i1 %cmp4062.i1207, label %for.body.preheader.i1210, label %x264_cabac_mb_ref.exit1231

for.body.preheader.i1210:                         ; preds = %if.end31.i1204
  %conv39.i1211 = zext nneg i8 %243 to i32
  br label %for.body.i1212

for.body.i1212:                                   ; preds = %for.body.i1212, %for.body.preheader.i1210
  %i_ref.064.i1213 = phi i32 [ %dec.i1218, %for.body.i1212 ], [ %conv39.i1211, %for.body.preheader.i1210 ]
  %ctx.263.i1214 = phi i32 [ %add43.i1217, %for.body.i1212 ], [ %ctx.1.i1205, %for.body.preheader.i1210 ]
  %add42.i1215 = add nuw nsw i32 %ctx.263.i1214, 54
  tail call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %add42.i1215, i32 noundef 1) #7
  %shr.i1216 = lshr i32 %ctx.263.i1214, 2
  %add43.i1217 = add nuw nsw i32 %shr.i1216, 4
  %dec.i1218 = add nsw i32 %i_ref.064.i1213, -1
  %cmp40.i1219 = icmp ugt i32 %i_ref.064.i1213, 1
  br i1 %cmp40.i1219, label %for.body.i1212, label %x264_cabac_mb_ref.exit1231

x264_cabac_mb_ref.exit1231:                       ; preds = %for.body.i1212, %if.end31.i1204
  %ctx.2.lcssa.i1208 = phi i32 [ %ctx.1.i1205, %if.end31.i1204 ], [ %add43.i1217, %for.body.i1212 ]
  %add44.i1209 = add nuw nsw i32 %ctx.2.lcssa.i1208, 54
  tail call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %add44.i1209, i32 noundef 0) #7
  br label %for.inc219

for.inc219:                                       ; preds = %for.cond204.preheader, %x264_cabac_mb_ref.exit1231
  %244 = load i8, ptr %arrayidx191.1, align 1
  %idxprom213.1 = zext i8 %244 to i64
  %arrayidx214.1 = getelementptr inbounds [17 x i8], ptr @x264_mb_partition_listX_table, i64 0, i64 %idxprom213.1
  %245 = load i8, ptr %arrayidx214.1, align 1
  %tobool215.not.1 = icmp eq i8 %245, 0
  br i1 %tobool215.not.1, label %for.inc219.1, label %if.then216.1

if.then216.1:                                     ; preds = %for.inc219
  %arrayidx4.i1198.1 = getelementptr inbounds i8, ptr %h, i64 25133
  %246 = load i8, ptr %arrayidx4.i1198.1, align 1
  %arrayidx12.i1199.1 = getelementptr inbounds i8, ptr %h, i64 25126
  %247 = load i8, ptr %arrayidx12.i1199.1, align 1
  %cmp.i1200.1 = icmp sgt i8 %246, 0
  br i1 %cmp.i1200.1, label %land.lhs.true.i1226.1, label %if.end.i1201.1

land.lhs.true.i1226.1:                            ; preds = %if.then216.1
  %arrayidx19.i1228.1 = getelementptr inbounds i8, ptr %h, i64 25693
  %248 = load i8, ptr %arrayidx19.i1228.1, align 1
  %tobool.not.i1229.1 = icmp eq i8 %248, 0
  %spec.select.i1230.1 = zext i1 %tobool.not.i1229.1 to i32
  br label %if.end.i1201.1

if.end.i1201.1:                                   ; preds = %land.lhs.true.i1226.1, %if.then216.1
  %ctx.0.i1202.1 = phi i32 [ 0, %if.then216.1 ], [ %spec.select.i1230.1, %land.lhs.true.i1226.1 ]
  %cmp20.i1203.1 = icmp sgt i8 %247, 0
  br i1 %cmp20.i1203.1, label %land.lhs.true22.i1220.1, label %if.end31.i1204.1

land.lhs.true22.i1220.1:                          ; preds = %if.end.i1201.1
  %arrayidx28.i1222.1 = getelementptr inbounds i8, ptr %h, i64 25686
  %249 = load i8, ptr %arrayidx28.i1222.1, align 1
  %tobool29.not.i1223.1 = icmp eq i8 %249, 0
  %add.i1224.1 = or disjoint i32 %ctx.0.i1202.1, 2
  %spec.select61.i1225.1 = select i1 %tobool29.not.i1223.1, i32 %add.i1224.1, i32 %ctx.0.i1202.1
  br label %if.end31.i1204.1

if.end31.i1204.1:                                 ; preds = %land.lhs.true22.i1220.1, %if.end.i1201.1
  %ctx.1.i1205.1 = phi i32 [ %ctx.0.i1202.1, %if.end.i1201.1 ], [ %spec.select61.i1225.1, %land.lhs.true22.i1220.1 ]
  %arrayidx38.i1206.1 = getelementptr inbounds i8, ptr %h, i64 25134
  %250 = load i8, ptr %arrayidx38.i1206.1, align 1
  %cmp4062.i1207.1 = icmp sgt i8 %250, 0
  br i1 %cmp4062.i1207.1, label %for.body.preheader.i1210.1, label %x264_cabac_mb_ref.exit1231.1

for.body.preheader.i1210.1:                       ; preds = %if.end31.i1204.1
  %conv39.i1211.1 = zext nneg i8 %250 to i32
  br label %for.body.i1212.1

for.body.i1212.1:                                 ; preds = %for.body.i1212.1, %for.body.preheader.i1210.1
  %i_ref.064.i1213.1 = phi i32 [ %dec.i1218.1, %for.body.i1212.1 ], [ %conv39.i1211.1, %for.body.preheader.i1210.1 ]
  %ctx.263.i1214.1 = phi i32 [ %add43.i1217.1, %for.body.i1212.1 ], [ %ctx.1.i1205.1, %for.body.preheader.i1210.1 ]
  %add42.i1215.1 = add nuw nsw i32 %ctx.263.i1214.1, 54
  tail call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %add42.i1215.1, i32 noundef 1) #7
  %shr.i1216.1 = lshr i32 %ctx.263.i1214.1, 2
  %add43.i1217.1 = add nuw nsw i32 %shr.i1216.1, 4
  %dec.i1218.1 = add nsw i32 %i_ref.064.i1213.1, -1
  %cmp40.i1219.1 = icmp ugt i32 %i_ref.064.i1213.1, 1
  br i1 %cmp40.i1219.1, label %for.body.i1212.1, label %x264_cabac_mb_ref.exit1231.1

x264_cabac_mb_ref.exit1231.1:                     ; preds = %for.body.i1212.1, %if.end31.i1204.1
  %ctx.2.lcssa.i1208.1 = phi i32 [ %ctx.1.i1205.1, %if.end31.i1204.1 ], [ %add43.i1217.1, %for.body.i1212.1 ]
  %add44.i1209.1 = add nuw nsw i32 %ctx.2.lcssa.i1208.1, 54
  tail call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %add44.i1209.1, i32 noundef 0) #7
  br label %for.inc219.1

for.inc219.1:                                     ; preds = %x264_cabac_mb_ref.exit1231.1, %for.inc219
  %251 = load i8, ptr %arrayidx191.2, align 1
  %idxprom213.2 = zext i8 %251 to i64
  %arrayidx214.2 = getelementptr inbounds [17 x i8], ptr @x264_mb_partition_listX_table, i64 0, i64 %idxprom213.2
  %252 = load i8, ptr %arrayidx214.2, align 1
  %tobool215.not.2 = icmp eq i8 %252, 0
  br i1 %tobool215.not.2, label %for.inc219.2, label %if.then216.2

if.then216.2:                                     ; preds = %for.inc219.1
  %arrayidx4.i1198.2 = getelementptr inbounds i8, ptr %h, i64 25147
  %253 = load i8, ptr %arrayidx4.i1198.2, align 1
  %arrayidx12.i1199.2 = getelementptr inbounds i8, ptr %h, i64 25140
  %254 = load i8, ptr %arrayidx12.i1199.2, align 1
  %cmp.i1200.2 = icmp sgt i8 %253, 0
  br i1 %cmp.i1200.2, label %land.lhs.true.i1226.2, label %if.end.i1201.2

land.lhs.true.i1226.2:                            ; preds = %if.then216.2
  %arrayidx19.i1228.2 = getelementptr inbounds i8, ptr %h, i64 25707
  %255 = load i8, ptr %arrayidx19.i1228.2, align 1
  %tobool.not.i1229.2 = icmp eq i8 %255, 0
  %spec.select.i1230.2 = zext i1 %tobool.not.i1229.2 to i32
  br label %if.end.i1201.2

if.end.i1201.2:                                   ; preds = %land.lhs.true.i1226.2, %if.then216.2
  %ctx.0.i1202.2 = phi i32 [ 0, %if.then216.2 ], [ %spec.select.i1230.2, %land.lhs.true.i1226.2 ]
  %cmp20.i1203.2 = icmp sgt i8 %254, 0
  br i1 %cmp20.i1203.2, label %land.lhs.true22.i1220.2, label %if.end31.i1204.2

land.lhs.true22.i1220.2:                          ; preds = %if.end.i1201.2
  %arrayidx28.i1222.2 = getelementptr inbounds i8, ptr %h, i64 25700
  %256 = load i8, ptr %arrayidx28.i1222.2, align 1
  %tobool29.not.i1223.2 = icmp eq i8 %256, 0
  %add.i1224.2 = or disjoint i32 %ctx.0.i1202.2, 2
  %spec.select61.i1225.2 = select i1 %tobool29.not.i1223.2, i32 %add.i1224.2, i32 %ctx.0.i1202.2
  br label %if.end31.i1204.2

if.end31.i1204.2:                                 ; preds = %land.lhs.true22.i1220.2, %if.end.i1201.2
  %ctx.1.i1205.2 = phi i32 [ %ctx.0.i1202.2, %if.end.i1201.2 ], [ %spec.select61.i1225.2, %land.lhs.true22.i1220.2 ]
  %arrayidx38.i1206.2 = getelementptr inbounds i8, ptr %h, i64 25148
  %257 = load i8, ptr %arrayidx38.i1206.2, align 1
  %cmp4062.i1207.2 = icmp sgt i8 %257, 0
  br i1 %cmp4062.i1207.2, label %for.body.preheader.i1210.2, label %x264_cabac_mb_ref.exit1231.2

for.body.preheader.i1210.2:                       ; preds = %if.end31.i1204.2
  %conv39.i1211.2 = zext nneg i8 %257 to i32
  br label %for.body.i1212.2

for.body.i1212.2:                                 ; preds = %for.body.i1212.2, %for.body.preheader.i1210.2
  %i_ref.064.i1213.2 = phi i32 [ %dec.i1218.2, %for.body.i1212.2 ], [ %conv39.i1211.2, %for.body.preheader.i1210.2 ]
  %ctx.263.i1214.2 = phi i32 [ %add43.i1217.2, %for.body.i1212.2 ], [ %ctx.1.i1205.2, %for.body.preheader.i1210.2 ]
  %add42.i1215.2 = add nuw nsw i32 %ctx.263.i1214.2, 54
  tail call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %add42.i1215.2, i32 noundef 1) #7
  %shr.i1216.2 = lshr i32 %ctx.263.i1214.2, 2
  %add43.i1217.2 = add nuw nsw i32 %shr.i1216.2, 4
  %dec.i1218.2 = add nsw i32 %i_ref.064.i1213.2, -1
  %cmp40.i1219.2 = icmp ugt i32 %i_ref.064.i1213.2, 1
  br i1 %cmp40.i1219.2, label %for.body.i1212.2, label %x264_cabac_mb_ref.exit1231.2

x264_cabac_mb_ref.exit1231.2:                     ; preds = %for.body.i1212.2, %if.end31.i1204.2
  %ctx.2.lcssa.i1208.2 = phi i32 [ %ctx.1.i1205.2, %if.end31.i1204.2 ], [ %add43.i1217.2, %for.body.i1212.2 ]
  %add44.i1209.2 = add nuw nsw i32 %ctx.2.lcssa.i1208.2, 54
  tail call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %add44.i1209.2, i32 noundef 0) #7
  br label %for.inc219.2

for.inc219.2:                                     ; preds = %x264_cabac_mb_ref.exit1231.2, %for.inc219.1
  %258 = load i8, ptr %arrayidx191.3, align 1
  %idxprom213.3 = zext i8 %258 to i64
  %arrayidx214.3 = getelementptr inbounds [17 x i8], ptr @x264_mb_partition_listX_table, i64 0, i64 %idxprom213.3
  %259 = load i8, ptr %arrayidx214.3, align 1
  %tobool215.not.3 = icmp eq i8 %259, 0
  br i1 %tobool215.not.3, label %for.inc219.3, label %if.then216.3

if.then216.3:                                     ; preds = %for.inc219.2
  %arrayidx4.i1198.3 = getelementptr inbounds i8, ptr %h, i64 25149
  %260 = load i8, ptr %arrayidx4.i1198.3, align 1
  %arrayidx12.i1199.3 = getelementptr inbounds i8, ptr %h, i64 25142
  %261 = load i8, ptr %arrayidx12.i1199.3, align 1
  %cmp.i1200.3 = icmp sgt i8 %260, 0
  br i1 %cmp.i1200.3, label %land.lhs.true.i1226.3, label %if.end.i1201.3

land.lhs.true.i1226.3:                            ; preds = %if.then216.3
  %arrayidx19.i1228.3 = getelementptr inbounds i8, ptr %h, i64 25709
  %262 = load i8, ptr %arrayidx19.i1228.3, align 1
  %tobool.not.i1229.3 = icmp eq i8 %262, 0
  %spec.select.i1230.3 = zext i1 %tobool.not.i1229.3 to i32
  br label %if.end.i1201.3

if.end.i1201.3:                                   ; preds = %land.lhs.true.i1226.3, %if.then216.3
  %ctx.0.i1202.3 = phi i32 [ 0, %if.then216.3 ], [ %spec.select.i1230.3, %land.lhs.true.i1226.3 ]
  %cmp20.i1203.3 = icmp sgt i8 %261, 0
  br i1 %cmp20.i1203.3, label %land.lhs.true22.i1220.3, label %if.end31.i1204.3

land.lhs.true22.i1220.3:                          ; preds = %if.end.i1201.3
  %arrayidx28.i1222.3 = getelementptr inbounds i8, ptr %h, i64 25702
  %263 = load i8, ptr %arrayidx28.i1222.3, align 1
  %tobool29.not.i1223.3 = icmp eq i8 %263, 0
  %add.i1224.3 = or disjoint i32 %ctx.0.i1202.3, 2
  %spec.select61.i1225.3 = select i1 %tobool29.not.i1223.3, i32 %add.i1224.3, i32 %ctx.0.i1202.3
  br label %if.end31.i1204.3

if.end31.i1204.3:                                 ; preds = %land.lhs.true22.i1220.3, %if.end.i1201.3
  %ctx.1.i1205.3 = phi i32 [ %ctx.0.i1202.3, %if.end.i1201.3 ], [ %spec.select61.i1225.3, %land.lhs.true22.i1220.3 ]
  %arrayidx38.i1206.3 = getelementptr inbounds i8, ptr %h, i64 25150
  %264 = load i8, ptr %arrayidx38.i1206.3, align 1
  %cmp4062.i1207.3 = icmp sgt i8 %264, 0
  br i1 %cmp4062.i1207.3, label %for.body.preheader.i1210.3, label %x264_cabac_mb_ref.exit1231.3

for.body.preheader.i1210.3:                       ; preds = %if.end31.i1204.3
  %conv39.i1211.3 = zext nneg i8 %264 to i32
  br label %for.body.i1212.3

for.body.i1212.3:                                 ; preds = %for.body.i1212.3, %for.body.preheader.i1210.3
  %i_ref.064.i1213.3 = phi i32 [ %dec.i1218.3, %for.body.i1212.3 ], [ %conv39.i1211.3, %for.body.preheader.i1210.3 ]
  %ctx.263.i1214.3 = phi i32 [ %add43.i1217.3, %for.body.i1212.3 ], [ %ctx.1.i1205.3, %for.body.preheader.i1210.3 ]
  %add42.i1215.3 = add nuw nsw i32 %ctx.263.i1214.3, 54
  tail call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %add42.i1215.3, i32 noundef 1) #7
  %shr.i1216.3 = lshr i32 %ctx.263.i1214.3, 2
  %add43.i1217.3 = add nuw nsw i32 %shr.i1216.3, 4
  %dec.i1218.3 = add nsw i32 %i_ref.064.i1213.3, -1
  %cmp40.i1219.3 = icmp ugt i32 %i_ref.064.i1213.3, 1
  br i1 %cmp40.i1219.3, label %for.body.i1212.3, label %x264_cabac_mb_ref.exit1231.3

x264_cabac_mb_ref.exit1231.3:                     ; preds = %for.body.i1212.3, %if.end31.i1204.3
  %ctx.2.lcssa.i1208.3 = phi i32 [ %ctx.1.i1205.3, %if.end31.i1204.3 ], [ %add43.i1217.3, %for.body.i1212.3 ]
  %add44.i1209.3 = add nuw nsw i32 %ctx.2.lcssa.i1208.3, 54
  tail call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %add44.i1209.3, i32 noundef 0) #7
  br label %for.inc219.3

for.inc219.3:                                     ; preds = %x264_cabac_mb_ref.exit1231.3, %for.inc219.2
  %.pre1841.pre = load i8, ptr %i_sub_partition189, align 1
  br label %if.end222

if.end222:                                        ; preds = %for.inc219.3, %x264_cabac_mb_sub_b_partition.exit.3
  %.pre1841 = phi i8 [ %.pre1841.pre, %for.inc219.3 ], [ %.pre1841.pre1845, %x264_cabac_mb_sub_b_partition.exit.3 ]
  %arrayidx226 = getelementptr inbounds i8, ptr %h, i64 21420
  %265 = load i32, ptr %arrayidx226, align 4
  %cmp227 = icmp sgt i32 %265, 1
  br i1 %cmp227, label %for.cond231.preheader, label %if.end249

for.cond231.preheader:                            ; preds = %if.end222
  %idxprom240 = zext i8 %.pre1841 to i64
  %arrayidx241 = getelementptr inbounds [17 x i8], ptr getelementptr inbounds (i8, ptr @x264_mb_partition_listX_table, i64 17), i64 0, i64 %idxprom240
  %266 = load i8, ptr %arrayidx241, align 1
  %tobool242.not = icmp eq i8 %266, 0
  br i1 %tobool242.not, label %for.inc246, label %if.then243

if.then243:                                       ; preds = %for.cond231.preheader
  %arrayidx4.i1237 = getelementptr inbounds i8, ptr %h, i64 25171
  %267 = load i8, ptr %arrayidx4.i1237, align 1
  %arrayidx12.i1240 = getelementptr inbounds i8, ptr %h, i64 25164
  %268 = load i8, ptr %arrayidx12.i1240, align 1
  %cmp.i1241 = icmp sgt i8 %267, 0
  br i1 %cmp.i1241, label %land.lhs.true.i1268, label %if.end.i1242

land.lhs.true.i1268:                              ; preds = %if.then243
  %arrayidx19.i1270 = getelementptr inbounds i8, ptr %h, i64 25691
  %269 = load i8, ptr %arrayidx19.i1270, align 1
  %tobool.not.i1271 = icmp eq i8 %269, 0
  %spec.select.i1272 = zext i1 %tobool.not.i1271 to i32
  br label %if.end.i1242

if.end.i1242:                                     ; preds = %land.lhs.true.i1268, %if.then243
  %ctx.0.i1243 = phi i32 [ 0, %if.then243 ], [ %spec.select.i1272, %land.lhs.true.i1268 ]
  %cmp20.i1244 = icmp sgt i8 %268, 0
  br i1 %cmp20.i1244, label %land.lhs.true22.i1262, label %if.end31.i1245

land.lhs.true22.i1262:                            ; preds = %if.end.i1242
  %arrayidx28.i1264 = getelementptr inbounds i8, ptr %h, i64 25684
  %270 = load i8, ptr %arrayidx28.i1264, align 1
  %tobool29.not.i1265 = icmp eq i8 %270, 0
  %add.i1266 = or disjoint i32 %ctx.0.i1243, 2
  %spec.select61.i1267 = select i1 %tobool29.not.i1265, i32 %add.i1266, i32 %ctx.0.i1243
  br label %if.end31.i1245

if.end31.i1245:                                   ; preds = %land.lhs.true22.i1262, %if.end.i1242
  %ctx.1.i1246 = phi i32 [ %ctx.0.i1243, %if.end.i1242 ], [ %spec.select61.i1267, %land.lhs.true22.i1262 ]
  %arrayidx38.i1248 = getelementptr inbounds i8, ptr %h, i64 25172
  %271 = load i8, ptr %arrayidx38.i1248, align 1
  %cmp4062.i1249 = icmp sgt i8 %271, 0
  br i1 %cmp4062.i1249, label %for.body.preheader.i1252, label %x264_cabac_mb_ref.exit1273

for.body.preheader.i1252:                         ; preds = %if.end31.i1245
  %conv39.i1253 = zext nneg i8 %271 to i32
  br label %for.body.i1254

for.body.i1254:                                   ; preds = %for.body.i1254, %for.body.preheader.i1252
  %i_ref.064.i1255 = phi i32 [ %dec.i1260, %for.body.i1254 ], [ %conv39.i1253, %for.body.preheader.i1252 ]
  %ctx.263.i1256 = phi i32 [ %add43.i1259, %for.body.i1254 ], [ %ctx.1.i1246, %for.body.preheader.i1252 ]
  %add42.i1257 = add nuw nsw i32 %ctx.263.i1256, 54
  tail call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %add42.i1257, i32 noundef 1) #7
  %shr.i1258 = lshr i32 %ctx.263.i1256, 2
  %add43.i1259 = add nuw nsw i32 %shr.i1258, 4
  %dec.i1260 = add nsw i32 %i_ref.064.i1255, -1
  %cmp40.i1261 = icmp ugt i32 %i_ref.064.i1255, 1
  br i1 %cmp40.i1261, label %for.body.i1254, label %x264_cabac_mb_ref.exit1273

x264_cabac_mb_ref.exit1273:                       ; preds = %for.body.i1254, %if.end31.i1245
  %ctx.2.lcssa.i1250 = phi i32 [ %ctx.1.i1246, %if.end31.i1245 ], [ %add43.i1259, %for.body.i1254 ]
  %add44.i1251 = add nuw nsw i32 %ctx.2.lcssa.i1250, 54
  tail call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %add44.i1251, i32 noundef 0) #7
  br label %for.inc246

for.inc246:                                       ; preds = %for.cond231.preheader, %x264_cabac_mb_ref.exit1273
  %272 = load i8, ptr %arrayidx191.1, align 1
  %idxprom240.1 = zext i8 %272 to i64
  %arrayidx241.1 = getelementptr inbounds [17 x i8], ptr getelementptr inbounds (i8, ptr @x264_mb_partition_listX_table, i64 17), i64 0, i64 %idxprom240.1
  %273 = load i8, ptr %arrayidx241.1, align 1
  %tobool242.not.1 = icmp eq i8 %273, 0
  br i1 %tobool242.not.1, label %for.inc246.1, label %if.then243.1

if.then243.1:                                     ; preds = %for.inc246
  %arrayidx4.i1237.1 = getelementptr inbounds i8, ptr %h, i64 25173
  %274 = load i8, ptr %arrayidx4.i1237.1, align 1
  %arrayidx12.i1240.1 = getelementptr inbounds i8, ptr %h, i64 25166
  %275 = load i8, ptr %arrayidx12.i1240.1, align 1
  %cmp.i1241.1 = icmp sgt i8 %274, 0
  br i1 %cmp.i1241.1, label %land.lhs.true.i1268.1, label %if.end.i1242.1

land.lhs.true.i1268.1:                            ; preds = %if.then243.1
  %arrayidx19.i1270.1 = getelementptr inbounds i8, ptr %h, i64 25693
  %276 = load i8, ptr %arrayidx19.i1270.1, align 1
  %tobool.not.i1271.1 = icmp eq i8 %276, 0
  %spec.select.i1272.1 = zext i1 %tobool.not.i1271.1 to i32
  br label %if.end.i1242.1

if.end.i1242.1:                                   ; preds = %land.lhs.true.i1268.1, %if.then243.1
  %ctx.0.i1243.1 = phi i32 [ 0, %if.then243.1 ], [ %spec.select.i1272.1, %land.lhs.true.i1268.1 ]
  %cmp20.i1244.1 = icmp sgt i8 %275, 0
  br i1 %cmp20.i1244.1, label %land.lhs.true22.i1262.1, label %if.end31.i1245.1

land.lhs.true22.i1262.1:                          ; preds = %if.end.i1242.1
  %arrayidx28.i1264.1 = getelementptr inbounds i8, ptr %h, i64 25686
  %277 = load i8, ptr %arrayidx28.i1264.1, align 1
  %tobool29.not.i1265.1 = icmp eq i8 %277, 0
  %add.i1266.1 = or disjoint i32 %ctx.0.i1243.1, 2
  %spec.select61.i1267.1 = select i1 %tobool29.not.i1265.1, i32 %add.i1266.1, i32 %ctx.0.i1243.1
  br label %if.end31.i1245.1

if.end31.i1245.1:                                 ; preds = %land.lhs.true22.i1262.1, %if.end.i1242.1
  %ctx.1.i1246.1 = phi i32 [ %ctx.0.i1243.1, %if.end.i1242.1 ], [ %spec.select61.i1267.1, %land.lhs.true22.i1262.1 ]
  %arrayidx38.i1248.1 = getelementptr inbounds i8, ptr %h, i64 25174
  %278 = load i8, ptr %arrayidx38.i1248.1, align 1
  %cmp4062.i1249.1 = icmp sgt i8 %278, 0
  br i1 %cmp4062.i1249.1, label %for.body.preheader.i1252.1, label %x264_cabac_mb_ref.exit1273.1

for.body.preheader.i1252.1:                       ; preds = %if.end31.i1245.1
  %conv39.i1253.1 = zext nneg i8 %278 to i32
  br label %for.body.i1254.1

for.body.i1254.1:                                 ; preds = %for.body.i1254.1, %for.body.preheader.i1252.1
  %i_ref.064.i1255.1 = phi i32 [ %dec.i1260.1, %for.body.i1254.1 ], [ %conv39.i1253.1, %for.body.preheader.i1252.1 ]
  %ctx.263.i1256.1 = phi i32 [ %add43.i1259.1, %for.body.i1254.1 ], [ %ctx.1.i1246.1, %for.body.preheader.i1252.1 ]
  %add42.i1257.1 = add nuw nsw i32 %ctx.263.i1256.1, 54
  tail call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %add42.i1257.1, i32 noundef 1) #7
  %shr.i1258.1 = lshr i32 %ctx.263.i1256.1, 2
  %add43.i1259.1 = add nuw nsw i32 %shr.i1258.1, 4
  %dec.i1260.1 = add nsw i32 %i_ref.064.i1255.1, -1
  %cmp40.i1261.1 = icmp ugt i32 %i_ref.064.i1255.1, 1
  br i1 %cmp40.i1261.1, label %for.body.i1254.1, label %x264_cabac_mb_ref.exit1273.1

x264_cabac_mb_ref.exit1273.1:                     ; preds = %for.body.i1254.1, %if.end31.i1245.1
  %ctx.2.lcssa.i1250.1 = phi i32 [ %ctx.1.i1246.1, %if.end31.i1245.1 ], [ %add43.i1259.1, %for.body.i1254.1 ]
  %add44.i1251.1 = add nuw nsw i32 %ctx.2.lcssa.i1250.1, 54
  tail call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %add44.i1251.1, i32 noundef 0) #7
  br label %for.inc246.1

for.inc246.1:                                     ; preds = %x264_cabac_mb_ref.exit1273.1, %for.inc246
  %279 = load i8, ptr %arrayidx191.2, align 1
  %idxprom240.2 = zext i8 %279 to i64
  %arrayidx241.2 = getelementptr inbounds [17 x i8], ptr getelementptr inbounds (i8, ptr @x264_mb_partition_listX_table, i64 17), i64 0, i64 %idxprom240.2
  %280 = load i8, ptr %arrayidx241.2, align 1
  %tobool242.not.2 = icmp eq i8 %280, 0
  br i1 %tobool242.not.2, label %for.inc246.2, label %if.then243.2

if.then243.2:                                     ; preds = %for.inc246.1
  %arrayidx4.i1237.2 = getelementptr inbounds i8, ptr %h, i64 25187
  %281 = load i8, ptr %arrayidx4.i1237.2, align 1
  %arrayidx12.i1240.2 = getelementptr inbounds i8, ptr %h, i64 25180
  %282 = load i8, ptr %arrayidx12.i1240.2, align 1
  %cmp.i1241.2 = icmp sgt i8 %281, 0
  br i1 %cmp.i1241.2, label %land.lhs.true.i1268.2, label %if.end.i1242.2

land.lhs.true.i1268.2:                            ; preds = %if.then243.2
  %arrayidx19.i1270.2 = getelementptr inbounds i8, ptr %h, i64 25707
  %283 = load i8, ptr %arrayidx19.i1270.2, align 1
  %tobool.not.i1271.2 = icmp eq i8 %283, 0
  %spec.select.i1272.2 = zext i1 %tobool.not.i1271.2 to i32
  br label %if.end.i1242.2

if.end.i1242.2:                                   ; preds = %land.lhs.true.i1268.2, %if.then243.2
  %ctx.0.i1243.2 = phi i32 [ 0, %if.then243.2 ], [ %spec.select.i1272.2, %land.lhs.true.i1268.2 ]
  %cmp20.i1244.2 = icmp sgt i8 %282, 0
  br i1 %cmp20.i1244.2, label %land.lhs.true22.i1262.2, label %if.end31.i1245.2

land.lhs.true22.i1262.2:                          ; preds = %if.end.i1242.2
  %arrayidx28.i1264.2 = getelementptr inbounds i8, ptr %h, i64 25700
  %284 = load i8, ptr %arrayidx28.i1264.2, align 1
  %tobool29.not.i1265.2 = icmp eq i8 %284, 0
  %add.i1266.2 = or disjoint i32 %ctx.0.i1243.2, 2
  %spec.select61.i1267.2 = select i1 %tobool29.not.i1265.2, i32 %add.i1266.2, i32 %ctx.0.i1243.2
  br label %if.end31.i1245.2

if.end31.i1245.2:                                 ; preds = %land.lhs.true22.i1262.2, %if.end.i1242.2
  %ctx.1.i1246.2 = phi i32 [ %ctx.0.i1243.2, %if.end.i1242.2 ], [ %spec.select61.i1267.2, %land.lhs.true22.i1262.2 ]
  %arrayidx38.i1248.2 = getelementptr inbounds i8, ptr %h, i64 25188
  %285 = load i8, ptr %arrayidx38.i1248.2, align 1
  %cmp4062.i1249.2 = icmp sgt i8 %285, 0
  br i1 %cmp4062.i1249.2, label %for.body.preheader.i1252.2, label %x264_cabac_mb_ref.exit1273.2

for.body.preheader.i1252.2:                       ; preds = %if.end31.i1245.2
  %conv39.i1253.2 = zext nneg i8 %285 to i32
  br label %for.body.i1254.2

for.body.i1254.2:                                 ; preds = %for.body.i1254.2, %for.body.preheader.i1252.2
  %i_ref.064.i1255.2 = phi i32 [ %dec.i1260.2, %for.body.i1254.2 ], [ %conv39.i1253.2, %for.body.preheader.i1252.2 ]
  %ctx.263.i1256.2 = phi i32 [ %add43.i1259.2, %for.body.i1254.2 ], [ %ctx.1.i1246.2, %for.body.preheader.i1252.2 ]
  %add42.i1257.2 = add nuw nsw i32 %ctx.263.i1256.2, 54
  tail call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %add42.i1257.2, i32 noundef 1) #7
  %shr.i1258.2 = lshr i32 %ctx.263.i1256.2, 2
  %add43.i1259.2 = add nuw nsw i32 %shr.i1258.2, 4
  %dec.i1260.2 = add nsw i32 %i_ref.064.i1255.2, -1
  %cmp40.i1261.2 = icmp ugt i32 %i_ref.064.i1255.2, 1
  br i1 %cmp40.i1261.2, label %for.body.i1254.2, label %x264_cabac_mb_ref.exit1273.2

x264_cabac_mb_ref.exit1273.2:                     ; preds = %for.body.i1254.2, %if.end31.i1245.2
  %ctx.2.lcssa.i1250.2 = phi i32 [ %ctx.1.i1246.2, %if.end31.i1245.2 ], [ %add43.i1259.2, %for.body.i1254.2 ]
  %add44.i1251.2 = add nuw nsw i32 %ctx.2.lcssa.i1250.2, 54
  tail call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %add44.i1251.2, i32 noundef 0) #7
  br label %for.inc246.2

for.inc246.2:                                     ; preds = %x264_cabac_mb_ref.exit1273.2, %for.inc246.1
  %286 = load i8, ptr %arrayidx191.3, align 1
  %idxprom240.3 = zext i8 %286 to i64
  %arrayidx241.3 = getelementptr inbounds [17 x i8], ptr getelementptr inbounds (i8, ptr @x264_mb_partition_listX_table, i64 17), i64 0, i64 %idxprom240.3
  %287 = load i8, ptr %arrayidx241.3, align 1
  %tobool242.not.3 = icmp eq i8 %287, 0
  br i1 %tobool242.not.3, label %for.inc246.3, label %if.then243.3

if.then243.3:                                     ; preds = %for.inc246.2
  %arrayidx4.i1237.3 = getelementptr inbounds i8, ptr %h, i64 25189
  %288 = load i8, ptr %arrayidx4.i1237.3, align 1
  %arrayidx12.i1240.3 = getelementptr inbounds i8, ptr %h, i64 25182
  %289 = load i8, ptr %arrayidx12.i1240.3, align 1
  %cmp.i1241.3 = icmp sgt i8 %288, 0
  br i1 %cmp.i1241.3, label %land.lhs.true.i1268.3, label %if.end.i1242.3

land.lhs.true.i1268.3:                            ; preds = %if.then243.3
  %arrayidx19.i1270.3 = getelementptr inbounds i8, ptr %h, i64 25709
  %290 = load i8, ptr %arrayidx19.i1270.3, align 1
  %tobool.not.i1271.3 = icmp eq i8 %290, 0
  %spec.select.i1272.3 = zext i1 %tobool.not.i1271.3 to i32
  br label %if.end.i1242.3

if.end.i1242.3:                                   ; preds = %land.lhs.true.i1268.3, %if.then243.3
  %ctx.0.i1243.3 = phi i32 [ 0, %if.then243.3 ], [ %spec.select.i1272.3, %land.lhs.true.i1268.3 ]
  %cmp20.i1244.3 = icmp sgt i8 %289, 0
  br i1 %cmp20.i1244.3, label %land.lhs.true22.i1262.3, label %if.end31.i1245.3

land.lhs.true22.i1262.3:                          ; preds = %if.end.i1242.3
  %arrayidx28.i1264.3 = getelementptr inbounds i8, ptr %h, i64 25702
  %291 = load i8, ptr %arrayidx28.i1264.3, align 1
  %tobool29.not.i1265.3 = icmp eq i8 %291, 0
  %add.i1266.3 = or disjoint i32 %ctx.0.i1243.3, 2
  %spec.select61.i1267.3 = select i1 %tobool29.not.i1265.3, i32 %add.i1266.3, i32 %ctx.0.i1243.3
  br label %if.end31.i1245.3

if.end31.i1245.3:                                 ; preds = %land.lhs.true22.i1262.3, %if.end.i1242.3
  %ctx.1.i1246.3 = phi i32 [ %ctx.0.i1243.3, %if.end.i1242.3 ], [ %spec.select61.i1267.3, %land.lhs.true22.i1262.3 ]
  %arrayidx38.i1248.3 = getelementptr inbounds i8, ptr %h, i64 25190
  %292 = load i8, ptr %arrayidx38.i1248.3, align 1
  %cmp4062.i1249.3 = icmp sgt i8 %292, 0
  br i1 %cmp4062.i1249.3, label %for.body.preheader.i1252.3, label %x264_cabac_mb_ref.exit1273.3

for.body.preheader.i1252.3:                       ; preds = %if.end31.i1245.3
  %conv39.i1253.3 = zext nneg i8 %292 to i32
  br label %for.body.i1254.3

for.body.i1254.3:                                 ; preds = %for.body.i1254.3, %for.body.preheader.i1252.3
  %i_ref.064.i1255.3 = phi i32 [ %dec.i1260.3, %for.body.i1254.3 ], [ %conv39.i1253.3, %for.body.preheader.i1252.3 ]
  %ctx.263.i1256.3 = phi i32 [ %add43.i1259.3, %for.body.i1254.3 ], [ %ctx.1.i1246.3, %for.body.preheader.i1252.3 ]
  %add42.i1257.3 = add nuw nsw i32 %ctx.263.i1256.3, 54
  tail call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %add42.i1257.3, i32 noundef 1) #7
  %shr.i1258.3 = lshr i32 %ctx.263.i1256.3, 2
  %add43.i1259.3 = add nuw nsw i32 %shr.i1258.3, 4
  %dec.i1260.3 = add nsw i32 %i_ref.064.i1255.3, -1
  %cmp40.i1261.3 = icmp ugt i32 %i_ref.064.i1255.3, 1
  br i1 %cmp40.i1261.3, label %for.body.i1254.3, label %x264_cabac_mb_ref.exit1273.3

x264_cabac_mb_ref.exit1273.3:                     ; preds = %for.body.i1254.3, %if.end31.i1245.3
  %ctx.2.lcssa.i1250.3 = phi i32 [ %ctx.1.i1246.3, %if.end31.i1245.3 ], [ %add43.i1259.3, %for.body.i1254.3 ]
  %add44.i1251.3 = add nuw nsw i32 %ctx.2.lcssa.i1250.3, 54
  tail call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %add44.i1251.3, i32 noundef 0) #7
  br label %for.inc246.3

for.inc246.3:                                     ; preds = %x264_cabac_mb_ref.exit1273.3, %for.inc246.2
  %.pre = load i8, ptr %i_sub_partition189, align 1
  br label %if.end249

if.end249:                                        ; preds = %for.inc246.3, %if.end222
  %293 = phi i8 [ %.pre, %for.inc246.3 ], [ %.pre1841, %if.end222 ]
  %arrayidx19.i1282 = getelementptr inbounds i8, ptr %mvp.i, i64 2
  %idxprom260 = zext i8 %293 to i64
  %arrayidx261 = getelementptr inbounds [17 x i8], ptr @x264_mb_partition_listX_table, i64 0, i64 %idxprom260
  %294 = load i8, ptr %arrayidx261, align 1
  %tobool262.not = icmp eq i8 %294, 0
  br i1 %tobool262.not, label %for.inc279, label %do.body264

do.body264:                                       ; preds = %if.end249
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mvp.i) #7
  call void @x264_mb_predict_mv(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 0, i32 noundef 2, ptr noundef nonnull %mvp.i) #7
  %arrayidx4.i1277 = getelementptr inbounds i8, ptr %h, i64 25248
  %295 = load i16, ptr %arrayidx4.i1277, align 4
  %conv.i1278 = sext i16 %295 to i32
  %296 = load i16, ptr %mvp.i, align 4
  %conv7.i = sext i16 %296 to i32
  %sub.i1279 = sub nsw i32 %conv.i1278, %conv7.i
  %arrayidx17.i1280 = getelementptr inbounds i8, ptr %h, i64 25250
  %297 = load i16, ptr %arrayidx17.i1280, align 2
  %conv18.i1281 = sext i16 %297 to i32
  %298 = load i16, ptr %arrayidx19.i1282, align 2
  %conv20.i = sext i16 %298 to i32
  %sub21.i = sub nsw i32 %conv18.i1281, %conv20.i
  %arrayidx30.i = getelementptr inbounds i8, ptr %h, i64 25542
  %arrayidx41.i = getelementptr inbounds i8, ptr %h, i64 25528
  %arrayidx30.val.i = load i8, ptr %arrayidx30.i, align 1
  %299 = getelementptr i8, ptr %h, i64 25543
  %arrayidx30.val71.i = load i8, ptr %299, align 1
  %arrayidx41.val.i = load i8, ptr %arrayidx41.i, align 1
  %300 = getelementptr i8, ptr %h, i64 25529
  %arrayidx41.val72.i = load i8, ptr %300, align 1
  %conv.i.i1283 = zext i8 %arrayidx30.val.i to i32
  %conv2.i.i = zext i8 %arrayidx41.val.i to i32
  %add.i.i1284 = add nuw nsw i32 %conv2.i.i, %conv.i.i1283
  %conv4.i.i = zext i8 %arrayidx30.val71.i to i32
  %conv6.i.i = zext i8 %arrayidx41.val72.i to i32
  %add7.i.i = add nuw nsw i32 %conv6.i.i, %conv4.i.i
  %cmp.i.i = icmp ugt i32 %add.i.i1284, 2
  %conv8.i.i = zext i1 %cmp.i.i to i32
  %cmp9.i.i = icmp ugt i32 %add.i.i1284, 32
  %conv10.i.i = zext i1 %cmp9.i.i to i32
  %add11.i.i = add nuw nsw i32 %conv8.i.i, %conv10.i.i
  %cmp12.i.i = icmp ugt i32 %add7.i.i, 2
  %conv13.i.i = zext i1 %cmp12.i.i to i32
  %cmp14.i.i = icmp ugt i32 %add7.i.i, 32
  %conv15.i.i1285 = zext i1 %cmp14.i.i to i32
  %add16.i.i = add nuw nsw i32 %conv13.i.i, %conv15.i.i1285
  %call44.i = call fastcc i32 @x264_cabac_mb_mvd_cpn(ptr noundef %cb, i32 noundef 0, i32 noundef %sub.i1279, i32 noundef %add11.i.i)
  %call46.i = call fastcc i32 @x264_cabac_mb_mvd_cpn(ptr noundef %cb, i32 noundef 1, i32 noundef %sub21.i, i32 noundef %add16.i.i)
  %shl.i73.i = shl nuw nsw i32 %call46.i, 8
  %add.i74.i = add nuw nsw i32 %shl.i73.i, %call44.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mvp.i) #7
  %arrayidx4.i1290 = getelementptr inbounds i8, ptr %h, i64 25544
  %conv.i1291 = and i32 %add.i74.i, 65535
  %mul8.i.i1292 = mul nuw i32 %conv.i1291, 65537
  store i32 %mul8.i.i1292, ptr %arrayidx4.i1290, align 4
  %add.ptr49.i.i1295 = getelementptr inbounds i8, ptr %h, i64 25560
  store i32 %mul8.i.i1292, ptr %add.ptr49.i.i1295, align 4
  br label %for.inc279

for.inc279:                                       ; preds = %if.end249, %do.body264
  %301 = load i8, ptr %arrayidx191.1, align 1
  %idxprom260.1 = zext i8 %301 to i64
  %arrayidx261.1 = getelementptr inbounds [17 x i8], ptr @x264_mb_partition_listX_table, i64 0, i64 %idxprom260.1
  %302 = load i8, ptr %arrayidx261.1, align 1
  %tobool262.not.1 = icmp eq i8 %302, 0
  br i1 %tobool262.not.1, label %for.inc279.1, label %do.body264.1

do.body264.1:                                     ; preds = %for.inc279
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mvp.i) #7
  call void @x264_mb_predict_mv(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 4, i32 noundef 2, ptr noundef nonnull %mvp.i) #7
  %arrayidx4.i1277.1 = getelementptr inbounds i8, ptr %h, i64 25256
  %303 = load i16, ptr %arrayidx4.i1277.1, align 4
  %conv.i1278.1 = sext i16 %303 to i32
  %304 = load i16, ptr %mvp.i, align 4
  %conv7.i.1 = sext i16 %304 to i32
  %sub.i1279.1 = sub nsw i32 %conv.i1278.1, %conv7.i.1
  %arrayidx17.i1280.1 = getelementptr inbounds i8, ptr %h, i64 25258
  %305 = load i16, ptr %arrayidx17.i1280.1, align 2
  %conv18.i1281.1 = sext i16 %305 to i32
  %306 = load i16, ptr %arrayidx19.i1282, align 2
  %conv20.i.1 = sext i16 %306 to i32
  %sub21.i.1 = sub nsw i32 %conv18.i1281.1, %conv20.i.1
  %arrayidx30.i.1 = getelementptr inbounds i8, ptr %h, i64 25546
  %arrayidx41.i.1 = getelementptr inbounds i8, ptr %h, i64 25532
  %arrayidx30.val.i.1 = load i8, ptr %arrayidx30.i.1, align 1
  %307 = getelementptr i8, ptr %h, i64 25547
  %arrayidx30.val71.i.1 = load i8, ptr %307, align 1
  %arrayidx41.val.i.1 = load i8, ptr %arrayidx41.i.1, align 1
  %308 = getelementptr i8, ptr %h, i64 25533
  %arrayidx41.val72.i.1 = load i8, ptr %308, align 1
  %conv.i.i1283.1 = zext i8 %arrayidx30.val.i.1 to i32
  %conv2.i.i.1 = zext i8 %arrayidx41.val.i.1 to i32
  %add.i.i1284.1 = add nuw nsw i32 %conv2.i.i.1, %conv.i.i1283.1
  %conv4.i.i.1 = zext i8 %arrayidx30.val71.i.1 to i32
  %conv6.i.i.1 = zext i8 %arrayidx41.val72.i.1 to i32
  %add7.i.i.1 = add nuw nsw i32 %conv6.i.i.1, %conv4.i.i.1
  %cmp.i.i.1 = icmp ugt i32 %add.i.i1284.1, 2
  %conv8.i.i.1 = zext i1 %cmp.i.i.1 to i32
  %cmp9.i.i.1 = icmp ugt i32 %add.i.i1284.1, 32
  %conv10.i.i.1 = zext i1 %cmp9.i.i.1 to i32
  %add11.i.i.1 = add nuw nsw i32 %conv8.i.i.1, %conv10.i.i.1
  %cmp12.i.i.1 = icmp ugt i32 %add7.i.i.1, 2
  %conv13.i.i.1 = zext i1 %cmp12.i.i.1 to i32
  %cmp14.i.i.1 = icmp ugt i32 %add7.i.i.1, 32
  %conv15.i.i1285.1 = zext i1 %cmp14.i.i.1 to i32
  %add16.i.i.1 = add nuw nsw i32 %conv13.i.i.1, %conv15.i.i1285.1
  %call44.i.1 = call fastcc i32 @x264_cabac_mb_mvd_cpn(ptr noundef %cb, i32 noundef 0, i32 noundef %sub.i1279.1, i32 noundef %add11.i.i.1)
  %call46.i.1 = call fastcc i32 @x264_cabac_mb_mvd_cpn(ptr noundef %cb, i32 noundef 1, i32 noundef %sub21.i.1, i32 noundef %add16.i.i.1)
  %shl.i73.i.1 = shl nuw nsw i32 %call46.i.1, 8
  %add.i74.i.1 = add nuw nsw i32 %shl.i73.i.1, %call44.i.1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mvp.i) #7
  %arrayidx4.i1290.1 = getelementptr inbounds i8, ptr %h, i64 25548
  %conv.i1291.1 = and i32 %add.i74.i.1, 65535
  %mul8.i.i1292.1 = mul nuw i32 %conv.i1291.1, 65537
  store i32 %mul8.i.i1292.1, ptr %arrayidx4.i1290.1, align 4
  %add.ptr49.i.i1295.1 = getelementptr inbounds i8, ptr %h, i64 25564
  store i32 %mul8.i.i1292.1, ptr %add.ptr49.i.i1295.1, align 4
  br label %for.inc279.1

for.inc279.1:                                     ; preds = %do.body264.1, %for.inc279
  %309 = load i8, ptr %arrayidx191.2, align 1
  %idxprom260.2 = zext i8 %309 to i64
  %arrayidx261.2 = getelementptr inbounds [17 x i8], ptr @x264_mb_partition_listX_table, i64 0, i64 %idxprom260.2
  %310 = load i8, ptr %arrayidx261.2, align 1
  %tobool262.not.2 = icmp eq i8 %310, 0
  br i1 %tobool262.not.2, label %for.inc279.2, label %do.body264.2

do.body264.2:                                     ; preds = %for.inc279.1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mvp.i) #7
  call void @x264_mb_predict_mv(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 8, i32 noundef 2, ptr noundef nonnull %mvp.i) #7
  %arrayidx4.i1277.2 = getelementptr inbounds i8, ptr %h, i64 25312
  %311 = load i16, ptr %arrayidx4.i1277.2, align 4
  %conv.i1278.2 = sext i16 %311 to i32
  %312 = load i16, ptr %mvp.i, align 4
  %conv7.i.2 = sext i16 %312 to i32
  %sub.i1279.2 = sub nsw i32 %conv.i1278.2, %conv7.i.2
  %arrayidx17.i1280.2 = getelementptr inbounds i8, ptr %h, i64 25314
  %313 = load i16, ptr %arrayidx17.i1280.2, align 2
  %conv18.i1281.2 = sext i16 %313 to i32
  %314 = load i16, ptr %arrayidx19.i1282, align 2
  %conv20.i.2 = sext i16 %314 to i32
  %sub21.i.2 = sub nsw i32 %conv18.i1281.2, %conv20.i.2
  %arrayidx30.i.2 = getelementptr inbounds i8, ptr %h, i64 25574
  %arrayidx41.i.2 = getelementptr inbounds i8, ptr %h, i64 25560
  %arrayidx30.val.i.2 = load i8, ptr %arrayidx30.i.2, align 1
  %315 = getelementptr i8, ptr %h, i64 25575
  %arrayidx30.val71.i.2 = load i8, ptr %315, align 1
  %arrayidx41.val.i.2 = load i8, ptr %arrayidx41.i.2, align 1
  %316 = getelementptr i8, ptr %h, i64 25561
  %arrayidx41.val72.i.2 = load i8, ptr %316, align 1
  %conv.i.i1283.2 = zext i8 %arrayidx30.val.i.2 to i32
  %conv2.i.i.2 = zext i8 %arrayidx41.val.i.2 to i32
  %add.i.i1284.2 = add nuw nsw i32 %conv2.i.i.2, %conv.i.i1283.2
  %conv4.i.i.2 = zext i8 %arrayidx30.val71.i.2 to i32
  %conv6.i.i.2 = zext i8 %arrayidx41.val72.i.2 to i32
  %add7.i.i.2 = add nuw nsw i32 %conv6.i.i.2, %conv4.i.i.2
  %cmp.i.i.2 = icmp ugt i32 %add.i.i1284.2, 2
  %conv8.i.i.2 = zext i1 %cmp.i.i.2 to i32
  %cmp9.i.i.2 = icmp ugt i32 %add.i.i1284.2, 32
  %conv10.i.i.2 = zext i1 %cmp9.i.i.2 to i32
  %add11.i.i.2 = add nuw nsw i32 %conv8.i.i.2, %conv10.i.i.2
  %cmp12.i.i.2 = icmp ugt i32 %add7.i.i.2, 2
  %conv13.i.i.2 = zext i1 %cmp12.i.i.2 to i32
  %cmp14.i.i.2 = icmp ugt i32 %add7.i.i.2, 32
  %conv15.i.i1285.2 = zext i1 %cmp14.i.i.2 to i32
  %add16.i.i.2 = add nuw nsw i32 %conv13.i.i.2, %conv15.i.i1285.2
  %call44.i.2 = call fastcc i32 @x264_cabac_mb_mvd_cpn(ptr noundef %cb, i32 noundef 0, i32 noundef %sub.i1279.2, i32 noundef %add11.i.i.2)
  %call46.i.2 = call fastcc i32 @x264_cabac_mb_mvd_cpn(ptr noundef %cb, i32 noundef 1, i32 noundef %sub21.i.2, i32 noundef %add16.i.i.2)
  %shl.i73.i.2 = shl nuw nsw i32 %call46.i.2, 8
  %add.i74.i.2 = add nuw nsw i32 %shl.i73.i.2, %call44.i.2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mvp.i) #7
  %arrayidx4.i1290.2 = getelementptr inbounds i8, ptr %h, i64 25576
  %conv.i1291.2 = and i32 %add.i74.i.2, 65535
  %mul8.i.i1292.2 = mul nuw i32 %conv.i1291.2, 65537
  store i32 %mul8.i.i1292.2, ptr %arrayidx4.i1290.2, align 4
  %add.ptr49.i.i1295.2 = getelementptr inbounds i8, ptr %h, i64 25592
  store i32 %mul8.i.i1292.2, ptr %add.ptr49.i.i1295.2, align 4
  br label %for.inc279.2

for.inc279.2:                                     ; preds = %do.body264.2, %for.inc279.1
  %317 = load i8, ptr %arrayidx191.3, align 1
  %idxprom260.3 = zext i8 %317 to i64
  %arrayidx261.3 = getelementptr inbounds [17 x i8], ptr @x264_mb_partition_listX_table, i64 0, i64 %idxprom260.3
  %318 = load i8, ptr %arrayidx261.3, align 1
  %tobool262.not.3 = icmp eq i8 %318, 0
  br i1 %tobool262.not.3, label %for.inc279.3, label %do.body264.3

do.body264.3:                                     ; preds = %for.inc279.2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mvp.i) #7
  call void @x264_mb_predict_mv(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 12, i32 noundef 2, ptr noundef nonnull %mvp.i) #7
  %arrayidx4.i1277.3 = getelementptr inbounds i8, ptr %h, i64 25320
  %319 = load i16, ptr %arrayidx4.i1277.3, align 4
  %conv.i1278.3 = sext i16 %319 to i32
  %320 = load i16, ptr %mvp.i, align 4
  %conv7.i.3 = sext i16 %320 to i32
  %sub.i1279.3 = sub nsw i32 %conv.i1278.3, %conv7.i.3
  %arrayidx17.i1280.3 = getelementptr inbounds i8, ptr %h, i64 25322
  %321 = load i16, ptr %arrayidx17.i1280.3, align 2
  %conv18.i1281.3 = sext i16 %321 to i32
  %322 = load i16, ptr %arrayidx19.i1282, align 2
  %conv20.i.3 = sext i16 %322 to i32
  %sub21.i.3 = sub nsw i32 %conv18.i1281.3, %conv20.i.3
  %arrayidx30.i.3 = getelementptr inbounds i8, ptr %h, i64 25578
  %arrayidx41.i.3 = getelementptr inbounds i8, ptr %h, i64 25564
  %arrayidx30.val.i.3 = load i8, ptr %arrayidx30.i.3, align 1
  %323 = getelementptr i8, ptr %h, i64 25579
  %arrayidx30.val71.i.3 = load i8, ptr %323, align 1
  %arrayidx41.val.i.3 = load i8, ptr %arrayidx41.i.3, align 1
  %324 = getelementptr i8, ptr %h, i64 25565
  %arrayidx41.val72.i.3 = load i8, ptr %324, align 1
  %conv.i.i1283.3 = zext i8 %arrayidx30.val.i.3 to i32
  %conv2.i.i.3 = zext i8 %arrayidx41.val.i.3 to i32
  %add.i.i1284.3 = add nuw nsw i32 %conv2.i.i.3, %conv.i.i1283.3
  %conv4.i.i.3 = zext i8 %arrayidx30.val71.i.3 to i32
  %conv6.i.i.3 = zext i8 %arrayidx41.val72.i.3 to i32
  %add7.i.i.3 = add nuw nsw i32 %conv6.i.i.3, %conv4.i.i.3
  %cmp.i.i.3 = icmp ugt i32 %add.i.i1284.3, 2
  %conv8.i.i.3 = zext i1 %cmp.i.i.3 to i32
  %cmp9.i.i.3 = icmp ugt i32 %add.i.i1284.3, 32
  %conv10.i.i.3 = zext i1 %cmp9.i.i.3 to i32
  %add11.i.i.3 = add nuw nsw i32 %conv8.i.i.3, %conv10.i.i.3
  %cmp12.i.i.3 = icmp ugt i32 %add7.i.i.3, 2
  %conv13.i.i.3 = zext i1 %cmp12.i.i.3 to i32
  %cmp14.i.i.3 = icmp ugt i32 %add7.i.i.3, 32
  %conv15.i.i1285.3 = zext i1 %cmp14.i.i.3 to i32
  %add16.i.i.3 = add nuw nsw i32 %conv13.i.i.3, %conv15.i.i1285.3
  %call44.i.3 = call fastcc i32 @x264_cabac_mb_mvd_cpn(ptr noundef %cb, i32 noundef 0, i32 noundef %sub.i1279.3, i32 noundef %add11.i.i.3)
  %call46.i.3 = call fastcc i32 @x264_cabac_mb_mvd_cpn(ptr noundef %cb, i32 noundef 1, i32 noundef %sub21.i.3, i32 noundef %add16.i.i.3)
  %shl.i73.i.3 = shl nuw nsw i32 %call46.i.3, 8
  %add.i74.i.3 = add nuw nsw i32 %shl.i73.i.3, %call44.i.3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mvp.i) #7
  %arrayidx4.i1290.3 = getelementptr inbounds i8, ptr %h, i64 25580
  %conv.i1291.3 = and i32 %add.i74.i.3, 65535
  %mul8.i.i1292.3 = mul nuw i32 %conv.i1291.3, 65537
  store i32 %mul8.i.i1292.3, ptr %arrayidx4.i1290.3, align 4
  %add.ptr49.i.i1295.3 = getelementptr inbounds i8, ptr %h, i64 25596
  store i32 %mul8.i.i1292.3, ptr %add.ptr49.i.i1295.3, align 4
  br label %for.inc279.3

for.inc279.3:                                     ; preds = %do.body264.3, %for.inc279.2
  %arrayidx19.i1307 = getelementptr inbounds i8, ptr %mvp.i1296, i64 2
  %325 = load i8, ptr %i_sub_partition189, align 1
  %idxprom292 = zext i8 %325 to i64
  %arrayidx293 = getelementptr inbounds [17 x i8], ptr getelementptr inbounds (i8, ptr @x264_mb_partition_listX_table, i64 17), i64 0, i64 %idxprom292
  %326 = load i8, ptr %arrayidx293, align 1
  %tobool294.not = icmp eq i8 %326, 0
  br i1 %tobool294.not, label %for.inc311, label %do.body296

do.body296:                                       ; preds = %for.inc279.3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mvp.i1296) #7
  call void @x264_mb_predict_mv(ptr noundef nonnull %h, i32 noundef 1, i32 noundef 0, i32 noundef 2, ptr noundef nonnull %mvp.i1296) #7
  %arrayidx4.i1301 = getelementptr inbounds i8, ptr %h, i64 25408
  %327 = load i16, ptr %arrayidx4.i1301, align 4
  %conv.i1302 = sext i16 %327 to i32
  %328 = load i16, ptr %mvp.i1296, align 4
  %conv7.i1303 = sext i16 %328 to i32
  %sub.i1304 = sub nsw i32 %conv.i1302, %conv7.i1303
  %arrayidx17.i1305 = getelementptr inbounds i8, ptr %h, i64 25410
  %329 = load i16, ptr %arrayidx17.i1305, align 2
  %conv18.i1306 = sext i16 %329 to i32
  %330 = load i16, ptr %arrayidx19.i1307, align 2
  %conv20.i1308 = sext i16 %330 to i32
  %sub21.i1309 = sub nsw i32 %conv18.i1306, %conv20.i1308
  %arrayidx30.i1313 = getelementptr inbounds i8, ptr %h, i64 25622
  %arrayidx41.i1316 = getelementptr inbounds i8, ptr %h, i64 25608
  %arrayidx30.val.i1317 = load i8, ptr %arrayidx30.i1313, align 1
  %331 = getelementptr i8, ptr %h, i64 25623
  %arrayidx30.val71.i1318 = load i8, ptr %331, align 1
  %arrayidx41.val.i1319 = load i8, ptr %arrayidx41.i1316, align 1
  %332 = getelementptr i8, ptr %h, i64 25609
  %arrayidx41.val72.i1320 = load i8, ptr %332, align 1
  %conv.i.i1321 = zext i8 %arrayidx30.val.i1317 to i32
  %conv2.i.i1322 = zext i8 %arrayidx41.val.i1319 to i32
  %add.i.i1323 = add nuw nsw i32 %conv2.i.i1322, %conv.i.i1321
  %conv4.i.i1324 = zext i8 %arrayidx30.val71.i1318 to i32
  %conv6.i.i1325 = zext i8 %arrayidx41.val72.i1320 to i32
  %add7.i.i1326 = add nuw nsw i32 %conv6.i.i1325, %conv4.i.i1324
  %cmp.i.i1327 = icmp ugt i32 %add.i.i1323, 2
  %conv8.i.i1328 = zext i1 %cmp.i.i1327 to i32
  %cmp9.i.i1329 = icmp ugt i32 %add.i.i1323, 32
  %conv10.i.i1330 = zext i1 %cmp9.i.i1329 to i32
  %add11.i.i1331 = add nuw nsw i32 %conv8.i.i1328, %conv10.i.i1330
  %cmp12.i.i1332 = icmp ugt i32 %add7.i.i1326, 2
  %conv13.i.i1333 = zext i1 %cmp12.i.i1332 to i32
  %cmp14.i.i1334 = icmp ugt i32 %add7.i.i1326, 32
  %conv15.i.i1335 = zext i1 %cmp14.i.i1334 to i32
  %add16.i.i1336 = add nuw nsw i32 %conv13.i.i1333, %conv15.i.i1335
  %call44.i1337 = call fastcc i32 @x264_cabac_mb_mvd_cpn(ptr noundef %cb, i32 noundef 0, i32 noundef %sub.i1304, i32 noundef %add11.i.i1331)
  %call46.i1338 = call fastcc i32 @x264_cabac_mb_mvd_cpn(ptr noundef %cb, i32 noundef 1, i32 noundef %sub21.i1309, i32 noundef %add16.i.i1336)
  %shl.i73.i1339 = shl nuw nsw i32 %call46.i1338, 8
  %add.i74.i1340 = add nuw nsw i32 %shl.i73.i1339, %call44.i1337
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mvp.i1296) #7
  %arrayidx4.i1347 = getelementptr inbounds i8, ptr %h, i64 25624
  %conv.i1348 = and i32 %add.i74.i1340, 65535
  %mul8.i.i1349 = mul nuw i32 %conv.i1348, 65537
  store i32 %mul8.i.i1349, ptr %arrayidx4.i1347, align 4
  %add.ptr49.i.i1352 = getelementptr inbounds i8, ptr %h, i64 25640
  store i32 %mul8.i.i1349, ptr %add.ptr49.i.i1352, align 4
  br label %for.inc311

for.inc311:                                       ; preds = %for.inc279.3, %do.body296
  %333 = load i8, ptr %arrayidx191.1, align 1
  %idxprom292.1 = zext i8 %333 to i64
  %arrayidx293.1 = getelementptr inbounds [17 x i8], ptr getelementptr inbounds (i8, ptr @x264_mb_partition_listX_table, i64 17), i64 0, i64 %idxprom292.1
  %334 = load i8, ptr %arrayidx293.1, align 1
  %tobool294.not.1 = icmp eq i8 %334, 0
  br i1 %tobool294.not.1, label %for.inc311.1, label %do.body296.1

do.body296.1:                                     ; preds = %for.inc311
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mvp.i1296) #7
  call void @x264_mb_predict_mv(ptr noundef nonnull %h, i32 noundef 1, i32 noundef 4, i32 noundef 2, ptr noundef nonnull %mvp.i1296) #7
  %arrayidx4.i1301.1 = getelementptr inbounds i8, ptr %h, i64 25416
  %335 = load i16, ptr %arrayidx4.i1301.1, align 4
  %conv.i1302.1 = sext i16 %335 to i32
  %336 = load i16, ptr %mvp.i1296, align 4
  %conv7.i1303.1 = sext i16 %336 to i32
  %sub.i1304.1 = sub nsw i32 %conv.i1302.1, %conv7.i1303.1
  %arrayidx17.i1305.1 = getelementptr inbounds i8, ptr %h, i64 25418
  %337 = load i16, ptr %arrayidx17.i1305.1, align 2
  %conv18.i1306.1 = sext i16 %337 to i32
  %338 = load i16, ptr %arrayidx19.i1307, align 2
  %conv20.i1308.1 = sext i16 %338 to i32
  %sub21.i1309.1 = sub nsw i32 %conv18.i1306.1, %conv20.i1308.1
  %arrayidx30.i1313.1 = getelementptr inbounds i8, ptr %h, i64 25626
  %arrayidx41.i1316.1 = getelementptr inbounds i8, ptr %h, i64 25612
  %arrayidx30.val.i1317.1 = load i8, ptr %arrayidx30.i1313.1, align 1
  %339 = getelementptr i8, ptr %h, i64 25627
  %arrayidx30.val71.i1318.1 = load i8, ptr %339, align 1
  %arrayidx41.val.i1319.1 = load i8, ptr %arrayidx41.i1316.1, align 1
  %340 = getelementptr i8, ptr %h, i64 25613
  %arrayidx41.val72.i1320.1 = load i8, ptr %340, align 1
  %conv.i.i1321.1 = zext i8 %arrayidx30.val.i1317.1 to i32
  %conv2.i.i1322.1 = zext i8 %arrayidx41.val.i1319.1 to i32
  %add.i.i1323.1 = add nuw nsw i32 %conv2.i.i1322.1, %conv.i.i1321.1
  %conv4.i.i1324.1 = zext i8 %arrayidx30.val71.i1318.1 to i32
  %conv6.i.i1325.1 = zext i8 %arrayidx41.val72.i1320.1 to i32
  %add7.i.i1326.1 = add nuw nsw i32 %conv6.i.i1325.1, %conv4.i.i1324.1
  %cmp.i.i1327.1 = icmp ugt i32 %add.i.i1323.1, 2
  %conv8.i.i1328.1 = zext i1 %cmp.i.i1327.1 to i32
  %cmp9.i.i1329.1 = icmp ugt i32 %add.i.i1323.1, 32
  %conv10.i.i1330.1 = zext i1 %cmp9.i.i1329.1 to i32
  %add11.i.i1331.1 = add nuw nsw i32 %conv8.i.i1328.1, %conv10.i.i1330.1
  %cmp12.i.i1332.1 = icmp ugt i32 %add7.i.i1326.1, 2
  %conv13.i.i1333.1 = zext i1 %cmp12.i.i1332.1 to i32
  %cmp14.i.i1334.1 = icmp ugt i32 %add7.i.i1326.1, 32
  %conv15.i.i1335.1 = zext i1 %cmp14.i.i1334.1 to i32
  %add16.i.i1336.1 = add nuw nsw i32 %conv13.i.i1333.1, %conv15.i.i1335.1
  %call44.i1337.1 = call fastcc i32 @x264_cabac_mb_mvd_cpn(ptr noundef %cb, i32 noundef 0, i32 noundef %sub.i1304.1, i32 noundef %add11.i.i1331.1)
  %call46.i1338.1 = call fastcc i32 @x264_cabac_mb_mvd_cpn(ptr noundef %cb, i32 noundef 1, i32 noundef %sub21.i1309.1, i32 noundef %add16.i.i1336.1)
  %shl.i73.i1339.1 = shl nuw nsw i32 %call46.i1338.1, 8
  %add.i74.i1340.1 = add nuw nsw i32 %shl.i73.i1339.1, %call44.i1337.1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mvp.i1296) #7
  %arrayidx4.i1347.1 = getelementptr inbounds i8, ptr %h, i64 25628
  %conv.i1348.1 = and i32 %add.i74.i1340.1, 65535
  %mul8.i.i1349.1 = mul nuw i32 %conv.i1348.1, 65537
  store i32 %mul8.i.i1349.1, ptr %arrayidx4.i1347.1, align 4
  %add.ptr49.i.i1352.1 = getelementptr inbounds i8, ptr %h, i64 25644
  store i32 %mul8.i.i1349.1, ptr %add.ptr49.i.i1352.1, align 4
  br label %for.inc311.1

for.inc311.1:                                     ; preds = %do.body296.1, %for.inc311
  %341 = load i8, ptr %arrayidx191.2, align 1
  %idxprom292.2 = zext i8 %341 to i64
  %arrayidx293.2 = getelementptr inbounds [17 x i8], ptr getelementptr inbounds (i8, ptr @x264_mb_partition_listX_table, i64 17), i64 0, i64 %idxprom292.2
  %342 = load i8, ptr %arrayidx293.2, align 1
  %tobool294.not.2 = icmp eq i8 %342, 0
  br i1 %tobool294.not.2, label %for.inc311.2, label %do.body296.2

do.body296.2:                                     ; preds = %for.inc311.1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mvp.i1296) #7
  call void @x264_mb_predict_mv(ptr noundef nonnull %h, i32 noundef 1, i32 noundef 8, i32 noundef 2, ptr noundef nonnull %mvp.i1296) #7
  %arrayidx4.i1301.2 = getelementptr inbounds i8, ptr %h, i64 25472
  %343 = load i16, ptr %arrayidx4.i1301.2, align 4
  %conv.i1302.2 = sext i16 %343 to i32
  %344 = load i16, ptr %mvp.i1296, align 4
  %conv7.i1303.2 = sext i16 %344 to i32
  %sub.i1304.2 = sub nsw i32 %conv.i1302.2, %conv7.i1303.2
  %arrayidx17.i1305.2 = getelementptr inbounds i8, ptr %h, i64 25474
  %345 = load i16, ptr %arrayidx17.i1305.2, align 2
  %conv18.i1306.2 = sext i16 %345 to i32
  %346 = load i16, ptr %arrayidx19.i1307, align 2
  %conv20.i1308.2 = sext i16 %346 to i32
  %sub21.i1309.2 = sub nsw i32 %conv18.i1306.2, %conv20.i1308.2
  %arrayidx30.i1313.2 = getelementptr inbounds i8, ptr %h, i64 25654
  %arrayidx41.i1316.2 = getelementptr inbounds i8, ptr %h, i64 25640
  %arrayidx30.val.i1317.2 = load i8, ptr %arrayidx30.i1313.2, align 1
  %347 = getelementptr i8, ptr %h, i64 25655
  %arrayidx30.val71.i1318.2 = load i8, ptr %347, align 1
  %arrayidx41.val.i1319.2 = load i8, ptr %arrayidx41.i1316.2, align 1
  %348 = getelementptr i8, ptr %h, i64 25641
  %arrayidx41.val72.i1320.2 = load i8, ptr %348, align 1
  %conv.i.i1321.2 = zext i8 %arrayidx30.val.i1317.2 to i32
  %conv2.i.i1322.2 = zext i8 %arrayidx41.val.i1319.2 to i32
  %add.i.i1323.2 = add nuw nsw i32 %conv2.i.i1322.2, %conv.i.i1321.2
  %conv4.i.i1324.2 = zext i8 %arrayidx30.val71.i1318.2 to i32
  %conv6.i.i1325.2 = zext i8 %arrayidx41.val72.i1320.2 to i32
  %add7.i.i1326.2 = add nuw nsw i32 %conv6.i.i1325.2, %conv4.i.i1324.2
  %cmp.i.i1327.2 = icmp ugt i32 %add.i.i1323.2, 2
  %conv8.i.i1328.2 = zext i1 %cmp.i.i1327.2 to i32
  %cmp9.i.i1329.2 = icmp ugt i32 %add.i.i1323.2, 32
  %conv10.i.i1330.2 = zext i1 %cmp9.i.i1329.2 to i32
  %add11.i.i1331.2 = add nuw nsw i32 %conv8.i.i1328.2, %conv10.i.i1330.2
  %cmp12.i.i1332.2 = icmp ugt i32 %add7.i.i1326.2, 2
  %conv13.i.i1333.2 = zext i1 %cmp12.i.i1332.2 to i32
  %cmp14.i.i1334.2 = icmp ugt i32 %add7.i.i1326.2, 32
  %conv15.i.i1335.2 = zext i1 %cmp14.i.i1334.2 to i32
  %add16.i.i1336.2 = add nuw nsw i32 %conv13.i.i1333.2, %conv15.i.i1335.2
  %call44.i1337.2 = call fastcc i32 @x264_cabac_mb_mvd_cpn(ptr noundef %cb, i32 noundef 0, i32 noundef %sub.i1304.2, i32 noundef %add11.i.i1331.2)
  %call46.i1338.2 = call fastcc i32 @x264_cabac_mb_mvd_cpn(ptr noundef %cb, i32 noundef 1, i32 noundef %sub21.i1309.2, i32 noundef %add16.i.i1336.2)
  %shl.i73.i1339.2 = shl nuw nsw i32 %call46.i1338.2, 8
  %add.i74.i1340.2 = add nuw nsw i32 %shl.i73.i1339.2, %call44.i1337.2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mvp.i1296) #7
  %arrayidx4.i1347.2 = getelementptr inbounds i8, ptr %h, i64 25656
  %conv.i1348.2 = and i32 %add.i74.i1340.2, 65535
  %mul8.i.i1349.2 = mul nuw i32 %conv.i1348.2, 65537
  store i32 %mul8.i.i1349.2, ptr %arrayidx4.i1347.2, align 4
  %add.ptr49.i.i1352.2 = getelementptr inbounds i8, ptr %h, i64 25672
  store i32 %mul8.i.i1349.2, ptr %add.ptr49.i.i1352.2, align 4
  br label %for.inc311.2

for.inc311.2:                                     ; preds = %do.body296.2, %for.inc311.1
  %349 = load i8, ptr %arrayidx191.3, align 1
  %idxprom292.3 = zext i8 %349 to i64
  %arrayidx293.3 = getelementptr inbounds [17 x i8], ptr getelementptr inbounds (i8, ptr @x264_mb_partition_listX_table, i64 17), i64 0, i64 %idxprom292.3
  %350 = load i8, ptr %arrayidx293.3, align 1
  %tobool294.not.3 = icmp eq i8 %350, 0
  br i1 %tobool294.not.3, label %if.end467, label %do.body296.3

do.body296.3:                                     ; preds = %for.inc311.2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mvp.i1296) #7
  call void @x264_mb_predict_mv(ptr noundef nonnull %h, i32 noundef 1, i32 noundef 12, i32 noundef 2, ptr noundef nonnull %mvp.i1296) #7
  %arrayidx4.i1301.3 = getelementptr inbounds i8, ptr %h, i64 25480
  %351 = load i16, ptr %arrayidx4.i1301.3, align 4
  %conv.i1302.3 = sext i16 %351 to i32
  %352 = load i16, ptr %mvp.i1296, align 4
  %conv7.i1303.3 = sext i16 %352 to i32
  %sub.i1304.3 = sub nsw i32 %conv.i1302.3, %conv7.i1303.3
  %arrayidx17.i1305.3 = getelementptr inbounds i8, ptr %h, i64 25482
  %353 = load i16, ptr %arrayidx17.i1305.3, align 2
  %conv18.i1306.3 = sext i16 %353 to i32
  %354 = load i16, ptr %arrayidx19.i1307, align 2
  %conv20.i1308.3 = sext i16 %354 to i32
  %sub21.i1309.3 = sub nsw i32 %conv18.i1306.3, %conv20.i1308.3
  %arrayidx30.i1313.3 = getelementptr inbounds i8, ptr %h, i64 25658
  %arrayidx41.i1316.3 = getelementptr inbounds i8, ptr %h, i64 25644
  %arrayidx30.val.i1317.3 = load i8, ptr %arrayidx30.i1313.3, align 1
  %355 = getelementptr i8, ptr %h, i64 25659
  %arrayidx30.val71.i1318.3 = load i8, ptr %355, align 1
  %arrayidx41.val.i1319.3 = load i8, ptr %arrayidx41.i1316.3, align 1
  %356 = getelementptr i8, ptr %h, i64 25645
  %arrayidx41.val72.i1320.3 = load i8, ptr %356, align 1
  %conv.i.i1321.3 = zext i8 %arrayidx30.val.i1317.3 to i32
  %conv2.i.i1322.3 = zext i8 %arrayidx41.val.i1319.3 to i32
  %add.i.i1323.3 = add nuw nsw i32 %conv2.i.i1322.3, %conv.i.i1321.3
  %conv4.i.i1324.3 = zext i8 %arrayidx30.val71.i1318.3 to i32
  %conv6.i.i1325.3 = zext i8 %arrayidx41.val72.i1320.3 to i32
  %add7.i.i1326.3 = add nuw nsw i32 %conv6.i.i1325.3, %conv4.i.i1324.3
  %cmp.i.i1327.3 = icmp ugt i32 %add.i.i1323.3, 2
  %conv8.i.i1328.3 = zext i1 %cmp.i.i1327.3 to i32
  %cmp9.i.i1329.3 = icmp ugt i32 %add.i.i1323.3, 32
  %conv10.i.i1330.3 = zext i1 %cmp9.i.i1329.3 to i32
  %add11.i.i1331.3 = add nuw nsw i32 %conv8.i.i1328.3, %conv10.i.i1330.3
  %cmp12.i.i1332.3 = icmp ugt i32 %add7.i.i1326.3, 2
  %conv13.i.i1333.3 = zext i1 %cmp12.i.i1332.3 to i32
  %cmp14.i.i1334.3 = icmp ugt i32 %add7.i.i1326.3, 32
  %conv15.i.i1335.3 = zext i1 %cmp14.i.i1334.3 to i32
  %add16.i.i1336.3 = add nuw nsw i32 %conv13.i.i1333.3, %conv15.i.i1335.3
  %call44.i1337.3 = call fastcc i32 @x264_cabac_mb_mvd_cpn(ptr noundef %cb, i32 noundef 0, i32 noundef %sub.i1304.3, i32 noundef %add11.i.i1331.3)
  %call46.i1338.3 = call fastcc i32 @x264_cabac_mb_mvd_cpn(ptr noundef %cb, i32 noundef 1, i32 noundef %sub21.i1309.3, i32 noundef %add16.i.i1336.3)
  %shl.i73.i1339.3 = shl nuw nsw i32 %call46.i1338.3, 8
  %add.i74.i1340.3 = add nuw nsw i32 %shl.i73.i1339.3, %call44.i1337.3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mvp.i1296) #7
  %arrayidx4.i1347.3 = getelementptr inbounds i8, ptr %h, i64 25660
  %conv.i1348.3 = and i32 %add.i74.i1340.3, 65535
  %mul8.i.i1349.3 = mul nuw i32 %conv.i1348.3, 65537
  store i32 %mul8.i.i1349.3, ptr %arrayidx4.i1347.3, align 4
  %add.ptr49.i.i1352.3 = getelementptr inbounds i8, ptr %h, i64 25676
  store i32 %mul8.i.i1349.3, ptr %add.ptr49.i.i1352.3, align 4
  br label %if.end467

if.then317:                                       ; preds = %if.else
  %idxprom318 = sext i32 %0 to i64
  %arrayidx319 = getelementptr inbounds [19 x [2 x [2 x i8]]], ptr @x264_mb_type_list_table, i64 0, i64 %idxprom318
  %i_fref322 = getelementptr inbounds i8, ptr %h, i64 21416
  %357 = load i32, ptr %i_fref322, align 8
  %cmp324 = icmp sgt i32 %357, 1
  br i1 %cmp324, label %if.then326, label %if.end347

if.then326:                                       ; preds = %if.then317
  %358 = load i8, ptr %arrayidx319, align 4
  %tobool329.not = icmp eq i8 %358, 0
  br i1 %tobool329.not, label %if.end331, label %if.then330

if.then330:                                       ; preds = %if.then326
  tail call fastcc void @x264_cabac_mb_ref(ptr noundef nonnull %h, ptr noundef nonnull %cb, i32 noundef 0, i32 noundef 0)
  br label %if.end331

if.end331:                                        ; preds = %if.then330, %if.then326
  %arrayidx333 = getelementptr inbounds i8, ptr %arrayidx319, i64 1
  %359 = load i8, ptr %arrayidx333, align 1
  %tobool335.not = icmp eq i8 %359, 0
  br i1 %tobool335.not, label %if.end347, label %land.lhs.true336

land.lhs.true336:                                 ; preds = %if.end331
  %i_partition338 = getelementptr inbounds i8, ptr %h, i64 17388
  %360 = load i32, ptr %i_partition338, align 4
  %cmp339.not = icmp eq i32 %360, 16
  br i1 %cmp339.not, label %if.end347, label %if.then341

if.then341:                                       ; preds = %land.lhs.true336
  %cmp344 = icmp eq i32 %360, 15
  %conv345 = zext i1 %cmp344 to i32
  %shr = lshr exact i32 8, %conv345
  tail call fastcc void @x264_cabac_mb_ref(ptr noundef nonnull %h, ptr noundef nonnull %cb, i32 noundef 0, i32 noundef %shr)
  br label %if.end347

if.end347:                                        ; preds = %if.end331, %land.lhs.true336, %if.then341, %if.then317
  %arrayidx351 = getelementptr inbounds i8, ptr %h, i64 21420
  %361 = load i32, ptr %arrayidx351, align 4
  %cmp352 = icmp sgt i32 %361, 1
  br i1 %cmp352, label %if.then354, label %if.end376

if.then354:                                       ; preds = %if.end347
  %arrayidx355 = getelementptr inbounds i8, ptr %arrayidx319, i64 2
  %362 = load i8, ptr %arrayidx355, align 2
  %tobool357.not = icmp eq i8 %362, 0
  br i1 %tobool357.not, label %if.end359, label %if.then358

if.then358:                                       ; preds = %if.then354
  tail call fastcc void @x264_cabac_mb_ref(ptr noundef nonnull %h, ptr noundef nonnull %cb, i32 noundef 1, i32 noundef 0)
  br label %if.end359

if.end359:                                        ; preds = %if.then358, %if.then354
  %arrayidx361 = getelementptr inbounds i8, ptr %arrayidx319, i64 3
  %363 = load i8, ptr %arrayidx361, align 1
  %tobool363.not = icmp eq i8 %363, 0
  br i1 %tobool363.not, label %if.end376, label %land.lhs.true364

land.lhs.true364:                                 ; preds = %if.end359
  %i_partition366 = getelementptr inbounds i8, ptr %h, i64 17388
  %364 = load i32, ptr %i_partition366, align 4
  %cmp367.not = icmp eq i32 %364, 16
  br i1 %cmp367.not, label %if.end376, label %if.then369

if.then369:                                       ; preds = %land.lhs.true364
  %cmp372 = icmp eq i32 %364, 15
  %conv373 = zext i1 %cmp372 to i32
  %shr374 = lshr exact i32 8, %conv373
  tail call fastcc void @x264_cabac_mb_ref(ptr noundef nonnull %h, ptr noundef nonnull %cb, i32 noundef 1, i32 noundef %shr374)
  br label %if.end376

if.end376:                                        ; preds = %if.end359, %land.lhs.true364, %if.then369, %if.end347
  %i_partition382 = getelementptr inbounds i8, ptr %h, i64 17388
  %mv.i1404 = getelementptr inbounds i8, ptr %h, i64 25200
  %arrayidx19.i1412 = getelementptr inbounds i8, ptr %mvp.i1403, i64 2
  %mvd.i1415 = getelementptr inbounds i8, ptr %h, i64 25520
  %arrayidx19.i1460 = getelementptr inbounds i8, ptr %mvp.i1451, i64 2
  %arrayidx19.i1362 = getelementptr inbounds i8, ptr %mvp.i1353, i64 2
  %arrayidx19.i1508 = getelementptr inbounds i8, ptr %mvp.i1499, i64 2
  %arrayidx19.i1558 = getelementptr inbounds i8, ptr %mvp.i1549, i64 2
  br label %for.body380

for.body380:                                      ; preds = %if.end376, %for.inc460
  %cmp378 = phi i1 [ true, %if.end376 ], [ false, %for.inc460 ]
  %indvars.iv1822 = phi i64 [ 0, %if.end376 ], [ 1, %for.inc460 ]
  %365 = load i32, ptr %i_partition382, align 4
  %arrayidx433 = getelementptr inbounds [2 x i8], ptr %arrayidx319, i64 %indvars.iv1822
  %366 = load i8, ptr %arrayidx433, align 2
  %tobool435.not = icmp eq i8 %366, 0
  switch i32 %365, label %if.else431 [
    i32 16, label %if.then385
    i32 14, label %if.then404
  ]

if.then385:                                       ; preds = %for.body380
  br i1 %tobool435.not, label %for.inc460, label %do.body391

do.body391:                                       ; preds = %if.then385
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mvp.i1353) #7
  %367 = trunc nuw nsw i64 %indvars.iv1822 to i32
  call void @x264_mb_predict_mv(ptr noundef nonnull %h, i32 noundef %367, i32 noundef 0, i32 noundef 4, ptr noundef nonnull %mvp.i1353) #7
  %arrayidx4.i1356 = getelementptr inbounds [2 x [40 x [2 x i16]]], ptr %mv.i1404, i64 0, i64 %indvars.iv1822, i64 12
  %368 = load i16, ptr %arrayidx4.i1356, align 4
  %conv.i1357 = sext i16 %368 to i32
  %369 = load i16, ptr %mvp.i1353, align 4
  %conv7.i1358 = sext i16 %369 to i32
  %sub.i1359 = sub nsw i32 %conv.i1357, %conv7.i1358
  %arrayidx17.i1360 = getelementptr inbounds i8, ptr %arrayidx4.i1356, i64 2
  %370 = load i16, ptr %arrayidx17.i1360, align 2
  %conv18.i1361 = sext i16 %370 to i32
  %371 = load i16, ptr %arrayidx19.i1362, align 2
  %conv20.i1363 = sext i16 %371 to i32
  %sub21.i1364 = sub nsw i32 %conv18.i1361, %conv20.i1363
  %arrayidx30.i1366 = getelementptr inbounds [2 x [40 x [2 x i8]]], ptr %mvd.i1415, i64 0, i64 %indvars.iv1822, i64 11
  %arrayidx41.i1367 = getelementptr inbounds [2 x [40 x [2 x i8]]], ptr %mvd.i1415, i64 0, i64 %indvars.iv1822, i64 4
  %arrayidx30.val.i1368 = load i8, ptr %arrayidx30.i1366, align 1
  %372 = getelementptr i8, ptr %arrayidx30.i1366, i64 1
  %arrayidx30.val71.i1369 = load i8, ptr %372, align 1
  %arrayidx41.val.i1370 = load i8, ptr %arrayidx41.i1367, align 1
  %373 = getelementptr i8, ptr %arrayidx41.i1367, i64 1
  %arrayidx41.val72.i1371 = load i8, ptr %373, align 1
  %conv.i.i1372 = zext i8 %arrayidx30.val.i1368 to i32
  %conv2.i.i1373 = zext i8 %arrayidx41.val.i1370 to i32
  %add.i.i1374 = add nuw nsw i32 %conv2.i.i1373, %conv.i.i1372
  %conv4.i.i1375 = zext i8 %arrayidx30.val71.i1369 to i32
  %conv6.i.i1376 = zext i8 %arrayidx41.val72.i1371 to i32
  %add7.i.i1377 = add nuw nsw i32 %conv6.i.i1376, %conv4.i.i1375
  %cmp.i.i1378 = icmp ugt i32 %add.i.i1374, 2
  %conv8.i.i1379 = zext i1 %cmp.i.i1378 to i32
  %cmp9.i.i1380 = icmp ugt i32 %add.i.i1374, 32
  %conv10.i.i1381 = zext i1 %cmp9.i.i1380 to i32
  %add11.i.i1382 = add nuw nsw i32 %conv8.i.i1379, %conv10.i.i1381
  %cmp12.i.i1383 = icmp ugt i32 %add7.i.i1377, 2
  %conv13.i.i1384 = zext i1 %cmp12.i.i1383 to i32
  %cmp14.i.i1385 = icmp ugt i32 %add7.i.i1377, 32
  %conv15.i.i1386 = zext i1 %cmp14.i.i1385 to i32
  %add16.i.i1387 = add nuw nsw i32 %conv13.i.i1384, %conv15.i.i1386
  %call44.i1388 = call fastcc i32 @x264_cabac_mb_mvd_cpn(ptr noundef %cb, i32 noundef 0, i32 noundef %sub.i1359, i32 noundef %add11.i.i1382)
  %call46.i1389 = call fastcc i32 @x264_cabac_mb_mvd_cpn(ptr noundef %cb, i32 noundef 1, i32 noundef %sub21.i1364, i32 noundef %add16.i.i1387)
  %shl.i73.i1390 = shl nuw nsw i32 %call46.i1389, 8
  %add.i74.i1391 = add nuw nsw i32 %shl.i73.i1390, %call44.i1388
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mvp.i1353) #7
  %arrayidx4.i1395 = getelementptr inbounds [2 x [40 x [2 x i8]]], ptr %mvd.i1415, i64 0, i64 %indvars.iv1822, i64 12
  %conv.i1396 = and i32 %add.i74.i1391, 65535
  %mul8.i.i1397 = mul nuw i32 %conv.i1396, 65537
  %conv15.i.i1398 = zext i32 %mul8.i.i1397 to i64
  %add.i.i1399 = mul nuw i64 %conv15.i.i1398, 4294967297
  store i64 %add.i.i1399, ptr %arrayidx4.i1395, align 8
  %add.ptr73.i.i1400 = getelementptr inbounds i8, ptr %arrayidx4.i1395, i64 16
  store i64 %add.i.i1399, ptr %add.ptr73.i.i1400, align 8
  %add.ptr80.i.i1401 = getelementptr inbounds i8, ptr %arrayidx4.i1395, i64 32
  store i64 %add.i.i1399, ptr %add.ptr80.i.i1401, align 8
  %add.ptr83.i.i1402 = getelementptr inbounds i8, ptr %arrayidx4.i1395, i64 48
  store i64 %add.i.i1399, ptr %add.ptr83.i.i1402, align 8
  br label %for.inc460

if.then404:                                       ; preds = %for.body380
  br i1 %tobool435.not, label %if.end417, label %do.body410

do.body410:                                       ; preds = %if.then404
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mvp.i1403) #7
  %374 = trunc nuw nsw i64 %indvars.iv1822 to i32
  call void @x264_mb_predict_mv(ptr noundef nonnull %h, i32 noundef %374, i32 noundef 0, i32 noundef 4, ptr noundef nonnull %mvp.i1403) #7
  %arrayidx4.i1406 = getelementptr inbounds [2 x [40 x [2 x i16]]], ptr %mv.i1404, i64 0, i64 %indvars.iv1822, i64 12
  %375 = load i16, ptr %arrayidx4.i1406, align 4
  %conv.i1407 = sext i16 %375 to i32
  %376 = load i16, ptr %mvp.i1403, align 4
  %conv7.i1408 = sext i16 %376 to i32
  %sub.i1409 = sub nsw i32 %conv.i1407, %conv7.i1408
  %arrayidx17.i1410 = getelementptr inbounds i8, ptr %arrayidx4.i1406, i64 2
  %377 = load i16, ptr %arrayidx17.i1410, align 2
  %conv18.i1411 = sext i16 %377 to i32
  %378 = load i16, ptr %arrayidx19.i1412, align 2
  %conv20.i1413 = sext i16 %378 to i32
  %sub21.i1414 = sub nsw i32 %conv18.i1411, %conv20.i1413
  %arrayidx30.i1416 = getelementptr inbounds [2 x [40 x [2 x i8]]], ptr %mvd.i1415, i64 0, i64 %indvars.iv1822, i64 11
  %arrayidx41.i1417 = getelementptr inbounds [2 x [40 x [2 x i8]]], ptr %mvd.i1415, i64 0, i64 %indvars.iv1822, i64 4
  %arrayidx30.val.i1418 = load i8, ptr %arrayidx30.i1416, align 1
  %379 = getelementptr i8, ptr %arrayidx30.i1416, i64 1
  %arrayidx30.val71.i1419 = load i8, ptr %379, align 1
  %arrayidx41.val.i1420 = load i8, ptr %arrayidx41.i1417, align 1
  %380 = getelementptr i8, ptr %arrayidx41.i1417, i64 1
  %arrayidx41.val72.i1421 = load i8, ptr %380, align 1
  %conv.i.i1422 = zext i8 %arrayidx30.val.i1418 to i32
  %conv2.i.i1423 = zext i8 %arrayidx41.val.i1420 to i32
  %add.i.i1424 = add nuw nsw i32 %conv2.i.i1423, %conv.i.i1422
  %conv4.i.i1425 = zext i8 %arrayidx30.val71.i1419 to i32
  %conv6.i.i1426 = zext i8 %arrayidx41.val72.i1421 to i32
  %add7.i.i1427 = add nuw nsw i32 %conv6.i.i1426, %conv4.i.i1425
  %cmp.i.i1428 = icmp ugt i32 %add.i.i1424, 2
  %conv8.i.i1429 = zext i1 %cmp.i.i1428 to i32
  %cmp9.i.i1430 = icmp ugt i32 %add.i.i1424, 32
  %conv10.i.i1431 = zext i1 %cmp9.i.i1430 to i32
  %add11.i.i1432 = add nuw nsw i32 %conv8.i.i1429, %conv10.i.i1431
  %cmp12.i.i1433 = icmp ugt i32 %add7.i.i1427, 2
  %conv13.i.i1434 = zext i1 %cmp12.i.i1433 to i32
  %cmp14.i.i1435 = icmp ugt i32 %add7.i.i1427, 32
  %conv15.i.i1436 = zext i1 %cmp14.i.i1435 to i32
  %add16.i.i1437 = add nuw nsw i32 %conv13.i.i1434, %conv15.i.i1436
  %call44.i1438 = call fastcc i32 @x264_cabac_mb_mvd_cpn(ptr noundef %cb, i32 noundef 0, i32 noundef %sub.i1409, i32 noundef %add11.i.i1432)
  %call46.i1439 = call fastcc i32 @x264_cabac_mb_mvd_cpn(ptr noundef %cb, i32 noundef 1, i32 noundef %sub21.i1414, i32 noundef %add16.i.i1437)
  %shl.i73.i1440 = shl nuw nsw i32 %call46.i1439, 8
  %add.i74.i1441 = add nuw nsw i32 %shl.i73.i1440, %call44.i1438
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mvp.i1403) #7
  %arrayidx4.i1445 = getelementptr inbounds [2 x [40 x [2 x i8]]], ptr %mvd.i1415, i64 0, i64 %indvars.iv1822, i64 12
  %conv.i1446 = and i32 %add.i74.i1441, 65535
  %mul8.i.i1447 = mul nuw i32 %conv.i1446, 65537
  %conv15.i.i1448 = zext i32 %mul8.i.i1447 to i64
  %add.i.i1449 = mul nuw i64 %conv15.i.i1448, 4294967297
  store i64 %add.i.i1449, ptr %arrayidx4.i1445, align 8
  %add.ptr73.i.i1450 = getelementptr inbounds i8, ptr %arrayidx4.i1445, i64 16
  store i64 %add.i.i1449, ptr %add.ptr73.i.i1450, align 8
  br label %if.end417

if.end417:                                        ; preds = %do.body410, %if.then404
  %arrayidx420 = getelementptr inbounds i8, ptr %arrayidx433, i64 1
  %381 = load i8, ptr %arrayidx420, align 1
  %tobool421.not = icmp eq i8 %381, 0
  br i1 %tobool421.not, label %for.inc460, label %do.body423

do.body423:                                       ; preds = %if.end417
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mvp.i1451) #7
  %382 = trunc nuw nsw i64 %indvars.iv1822 to i32
  call void @x264_mb_predict_mv(ptr noundef nonnull %h, i32 noundef %382, i32 noundef 8, i32 noundef 4, ptr noundef nonnull %mvp.i1451) #7
  %arrayidx4.i1454 = getelementptr inbounds [2 x [40 x [2 x i16]]], ptr %mv.i1404, i64 0, i64 %indvars.iv1822, i64 28
  %383 = load i16, ptr %arrayidx4.i1454, align 4
  %conv.i1455 = sext i16 %383 to i32
  %384 = load i16, ptr %mvp.i1451, align 4
  %conv7.i1456 = sext i16 %384 to i32
  %sub.i1457 = sub nsw i32 %conv.i1455, %conv7.i1456
  %arrayidx17.i1458 = getelementptr inbounds i8, ptr %arrayidx4.i1454, i64 2
  %385 = load i16, ptr %arrayidx17.i1458, align 2
  %conv18.i1459 = sext i16 %385 to i32
  %386 = load i16, ptr %arrayidx19.i1460, align 2
  %conv20.i1461 = sext i16 %386 to i32
  %sub21.i1462 = sub nsw i32 %conv18.i1459, %conv20.i1461
  %arrayidx30.i1464 = getelementptr inbounds [2 x [40 x [2 x i8]]], ptr %mvd.i1415, i64 0, i64 %indvars.iv1822, i64 27
  %arrayidx41.i1465 = getelementptr inbounds [2 x [40 x [2 x i8]]], ptr %mvd.i1415, i64 0, i64 %indvars.iv1822, i64 20
  %arrayidx30.val.i1466 = load i8, ptr %arrayidx30.i1464, align 1
  %387 = getelementptr i8, ptr %arrayidx30.i1464, i64 1
  %arrayidx30.val71.i1467 = load i8, ptr %387, align 1
  %arrayidx41.val.i1468 = load i8, ptr %arrayidx41.i1465, align 1
  %388 = getelementptr i8, ptr %arrayidx41.i1465, i64 1
  %arrayidx41.val72.i1469 = load i8, ptr %388, align 1
  %conv.i.i1470 = zext i8 %arrayidx30.val.i1466 to i32
  %conv2.i.i1471 = zext i8 %arrayidx41.val.i1468 to i32
  %add.i.i1472 = add nuw nsw i32 %conv2.i.i1471, %conv.i.i1470
  %conv4.i.i1473 = zext i8 %arrayidx30.val71.i1467 to i32
  %conv6.i.i1474 = zext i8 %arrayidx41.val72.i1469 to i32
  %add7.i.i1475 = add nuw nsw i32 %conv6.i.i1474, %conv4.i.i1473
  %cmp.i.i1476 = icmp ugt i32 %add.i.i1472, 2
  %conv8.i.i1477 = zext i1 %cmp.i.i1476 to i32
  %cmp9.i.i1478 = icmp ugt i32 %add.i.i1472, 32
  %conv10.i.i1479 = zext i1 %cmp9.i.i1478 to i32
  %add11.i.i1480 = add nuw nsw i32 %conv8.i.i1477, %conv10.i.i1479
  %cmp12.i.i1481 = icmp ugt i32 %add7.i.i1475, 2
  %conv13.i.i1482 = zext i1 %cmp12.i.i1481 to i32
  %cmp14.i.i1483 = icmp ugt i32 %add7.i.i1475, 32
  %conv15.i.i1484 = zext i1 %cmp14.i.i1483 to i32
  %add16.i.i1485 = add nuw nsw i32 %conv13.i.i1482, %conv15.i.i1484
  %call44.i1486 = call fastcc i32 @x264_cabac_mb_mvd_cpn(ptr noundef %cb, i32 noundef 0, i32 noundef %sub.i1457, i32 noundef %add11.i.i1480)
  %call46.i1487 = call fastcc i32 @x264_cabac_mb_mvd_cpn(ptr noundef %cb, i32 noundef 1, i32 noundef %sub21.i1462, i32 noundef %add16.i.i1485)
  %shl.i73.i1488 = shl nuw nsw i32 %call46.i1487, 8
  %add.i74.i1489 = add nuw nsw i32 %shl.i73.i1488, %call44.i1486
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mvp.i1451) #7
  %arrayidx4.i1493 = getelementptr inbounds [2 x [40 x [2 x i8]]], ptr %mvd.i1415, i64 0, i64 %indvars.iv1822, i64 28
  %conv.i1494 = and i32 %add.i74.i1489, 65535
  %mul8.i.i1495 = mul nuw i32 %conv.i1494, 65537
  %conv15.i.i1496 = zext i32 %mul8.i.i1495 to i64
  %add.i.i1497 = mul nuw i64 %conv15.i.i1496, 4294967297
  store i64 %add.i.i1497, ptr %arrayidx4.i1493, align 8
  %add.ptr73.i.i1498 = getelementptr inbounds i8, ptr %arrayidx4.i1493, i64 16
  store i64 %add.i.i1497, ptr %add.ptr73.i.i1498, align 8
  br label %for.inc460

if.else431:                                       ; preds = %for.body380
  br i1 %tobool435.not, label %if.end444, label %do.body437

do.body437:                                       ; preds = %if.else431
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mvp.i1499) #7
  %389 = trunc nuw nsw i64 %indvars.iv1822 to i32
  call void @x264_mb_predict_mv(ptr noundef nonnull %h, i32 noundef %389, i32 noundef 0, i32 noundef 2, ptr noundef nonnull %mvp.i1499) #7
  %arrayidx4.i1502 = getelementptr inbounds [2 x [40 x [2 x i16]]], ptr %mv.i1404, i64 0, i64 %indvars.iv1822, i64 12
  %390 = load i16, ptr %arrayidx4.i1502, align 4
  %conv.i1503 = sext i16 %390 to i32
  %391 = load i16, ptr %mvp.i1499, align 4
  %conv7.i1504 = sext i16 %391 to i32
  %sub.i1505 = sub nsw i32 %conv.i1503, %conv7.i1504
  %arrayidx17.i1506 = getelementptr inbounds i8, ptr %arrayidx4.i1502, i64 2
  %392 = load i16, ptr %arrayidx17.i1506, align 2
  %conv18.i1507 = sext i16 %392 to i32
  %393 = load i16, ptr %arrayidx19.i1508, align 2
  %conv20.i1509 = sext i16 %393 to i32
  %sub21.i1510 = sub nsw i32 %conv18.i1507, %conv20.i1509
  %arrayidx30.i1512 = getelementptr inbounds [2 x [40 x [2 x i8]]], ptr %mvd.i1415, i64 0, i64 %indvars.iv1822, i64 11
  %arrayidx41.i1513 = getelementptr inbounds [2 x [40 x [2 x i8]]], ptr %mvd.i1415, i64 0, i64 %indvars.iv1822, i64 4
  %arrayidx30.val.i1514 = load i8, ptr %arrayidx30.i1512, align 1
  %394 = getelementptr i8, ptr %arrayidx30.i1512, i64 1
  %arrayidx30.val71.i1515 = load i8, ptr %394, align 1
  %arrayidx41.val.i1516 = load i8, ptr %arrayidx41.i1513, align 1
  %395 = getelementptr i8, ptr %arrayidx41.i1513, i64 1
  %arrayidx41.val72.i1517 = load i8, ptr %395, align 1
  %conv.i.i1518 = zext i8 %arrayidx30.val.i1514 to i32
  %conv2.i.i1519 = zext i8 %arrayidx41.val.i1516 to i32
  %add.i.i1520 = add nuw nsw i32 %conv2.i.i1519, %conv.i.i1518
  %conv4.i.i1521 = zext i8 %arrayidx30.val71.i1515 to i32
  %conv6.i.i1522 = zext i8 %arrayidx41.val72.i1517 to i32
  %add7.i.i1523 = add nuw nsw i32 %conv6.i.i1522, %conv4.i.i1521
  %cmp.i.i1524 = icmp ugt i32 %add.i.i1520, 2
  %conv8.i.i1525 = zext i1 %cmp.i.i1524 to i32
  %cmp9.i.i1526 = icmp ugt i32 %add.i.i1520, 32
  %conv10.i.i1527 = zext i1 %cmp9.i.i1526 to i32
  %add11.i.i1528 = add nuw nsw i32 %conv8.i.i1525, %conv10.i.i1527
  %cmp12.i.i1529 = icmp ugt i32 %add7.i.i1523, 2
  %conv13.i.i1530 = zext i1 %cmp12.i.i1529 to i32
  %cmp14.i.i1531 = icmp ugt i32 %add7.i.i1523, 32
  %conv15.i.i1532 = zext i1 %cmp14.i.i1531 to i32
  %add16.i.i1533 = add nuw nsw i32 %conv13.i.i1530, %conv15.i.i1532
  %call44.i1534 = call fastcc i32 @x264_cabac_mb_mvd_cpn(ptr noundef %cb, i32 noundef 0, i32 noundef %sub.i1505, i32 noundef %add11.i.i1528)
  %call46.i1535 = call fastcc i32 @x264_cabac_mb_mvd_cpn(ptr noundef %cb, i32 noundef 1, i32 noundef %sub21.i1510, i32 noundef %add16.i.i1533)
  %shl.i73.i1536 = shl nuw nsw i32 %call46.i1535, 8
  %add.i74.i1537 = add nuw nsw i32 %shl.i73.i1536, %call44.i1534
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mvp.i1499) #7
  %arrayidx4.i1541 = getelementptr inbounds [2 x [40 x [2 x i8]]], ptr %mvd.i1415, i64 0, i64 %indvars.iv1822, i64 12
  %conv.i1542 = and i32 %add.i74.i1537, 65535
  %mul8.i.i1543 = mul nuw i32 %conv.i1542, 65537
  store i32 %mul8.i.i1543, ptr %arrayidx4.i1541, align 4
  %add.ptr49.i.i1546 = getelementptr inbounds i8, ptr %arrayidx4.i1541, i64 16
  store i32 %mul8.i.i1543, ptr %add.ptr49.i.i1546, align 4
  %add.ptr56.i.i1547 = getelementptr inbounds i8, ptr %arrayidx4.i1541, i64 32
  store i32 %mul8.i.i1543, ptr %add.ptr56.i.i1547, align 4
  %add.ptr59.i.i1548 = getelementptr inbounds i8, ptr %arrayidx4.i1541, i64 48
  store i32 %mul8.i.i1543, ptr %add.ptr59.i.i1548, align 4
  br label %if.end444

if.end444:                                        ; preds = %do.body437, %if.else431
  %arrayidx447 = getelementptr inbounds i8, ptr %arrayidx433, i64 1
  %396 = load i8, ptr %arrayidx447, align 1
  %tobool448.not = icmp eq i8 %396, 0
  br i1 %tobool448.not, label %for.inc460, label %do.body450

do.body450:                                       ; preds = %if.end444
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mvp.i1549) #7
  %397 = trunc nuw nsw i64 %indvars.iv1822 to i32
  call void @x264_mb_predict_mv(ptr noundef nonnull %h, i32 noundef %397, i32 noundef 4, i32 noundef 2, ptr noundef nonnull %mvp.i1549) #7
  %arrayidx4.i1552 = getelementptr inbounds [2 x [40 x [2 x i16]]], ptr %mv.i1404, i64 0, i64 %indvars.iv1822, i64 14
  %398 = load i16, ptr %arrayidx4.i1552, align 4
  %conv.i1553 = sext i16 %398 to i32
  %399 = load i16, ptr %mvp.i1549, align 4
  %conv7.i1554 = sext i16 %399 to i32
  %sub.i1555 = sub nsw i32 %conv.i1553, %conv7.i1554
  %arrayidx17.i1556 = getelementptr inbounds i8, ptr %arrayidx4.i1552, i64 2
  %400 = load i16, ptr %arrayidx17.i1556, align 2
  %conv18.i1557 = sext i16 %400 to i32
  %401 = load i16, ptr %arrayidx19.i1558, align 2
  %conv20.i1559 = sext i16 %401 to i32
  %sub21.i1560 = sub nsw i32 %conv18.i1557, %conv20.i1559
  %arrayidx30.i1562 = getelementptr inbounds [2 x [40 x [2 x i8]]], ptr %mvd.i1415, i64 0, i64 %indvars.iv1822, i64 13
  %arrayidx41.i1563 = getelementptr inbounds [2 x [40 x [2 x i8]]], ptr %mvd.i1415, i64 0, i64 %indvars.iv1822, i64 6
  %arrayidx30.val.i1564 = load i8, ptr %arrayidx30.i1562, align 1
  %402 = getelementptr i8, ptr %arrayidx30.i1562, i64 1
  %arrayidx30.val71.i1565 = load i8, ptr %402, align 1
  %arrayidx41.val.i1566 = load i8, ptr %arrayidx41.i1563, align 1
  %403 = getelementptr i8, ptr %arrayidx41.i1563, i64 1
  %arrayidx41.val72.i1567 = load i8, ptr %403, align 1
  %conv.i.i1568 = zext i8 %arrayidx30.val.i1564 to i32
  %conv2.i.i1569 = zext i8 %arrayidx41.val.i1566 to i32
  %add.i.i1570 = add nuw nsw i32 %conv2.i.i1569, %conv.i.i1568
  %conv4.i.i1571 = zext i8 %arrayidx30.val71.i1565 to i32
  %conv6.i.i1572 = zext i8 %arrayidx41.val72.i1567 to i32
  %add7.i.i1573 = add nuw nsw i32 %conv6.i.i1572, %conv4.i.i1571
  %cmp.i.i1574 = icmp ugt i32 %add.i.i1570, 2
  %conv8.i.i1575 = zext i1 %cmp.i.i1574 to i32
  %cmp9.i.i1576 = icmp ugt i32 %add.i.i1570, 32
  %conv10.i.i1577 = zext i1 %cmp9.i.i1576 to i32
  %add11.i.i1578 = add nuw nsw i32 %conv8.i.i1575, %conv10.i.i1577
  %cmp12.i.i1579 = icmp ugt i32 %add7.i.i1573, 2
  %conv13.i.i1580 = zext i1 %cmp12.i.i1579 to i32
  %cmp14.i.i1581 = icmp ugt i32 %add7.i.i1573, 32
  %conv15.i.i1582 = zext i1 %cmp14.i.i1581 to i32
  %add16.i.i1583 = add nuw nsw i32 %conv13.i.i1580, %conv15.i.i1582
  %call44.i1584 = call fastcc i32 @x264_cabac_mb_mvd_cpn(ptr noundef %cb, i32 noundef 0, i32 noundef %sub.i1555, i32 noundef %add11.i.i1578)
  %call46.i1585 = call fastcc i32 @x264_cabac_mb_mvd_cpn(ptr noundef %cb, i32 noundef 1, i32 noundef %sub21.i1560, i32 noundef %add16.i.i1583)
  %shl.i73.i1586 = shl nuw nsw i32 %call46.i1585, 8
  %add.i74.i1587 = add nuw nsw i32 %shl.i73.i1586, %call44.i1584
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mvp.i1549) #7
  %arrayidx4.i1591 = getelementptr inbounds [2 x [40 x [2 x i8]]], ptr %mvd.i1415, i64 0, i64 %indvars.iv1822, i64 14
  %conv.i1592 = and i32 %add.i74.i1587, 65535
  %mul8.i.i1593 = mul nuw i32 %conv.i1592, 65537
  store i32 %mul8.i.i1593, ptr %arrayidx4.i1591, align 4
  %add.ptr49.i.i1596 = getelementptr inbounds i8, ptr %arrayidx4.i1591, i64 16
  store i32 %mul8.i.i1593, ptr %add.ptr49.i.i1596, align 4
  %add.ptr56.i.i1597 = getelementptr inbounds i8, ptr %arrayidx4.i1591, i64 32
  store i32 %mul8.i.i1593, ptr %add.ptr56.i.i1597, align 4
  %add.ptr59.i.i1598 = getelementptr inbounds i8, ptr %arrayidx4.i1591, i64 48
  store i32 %mul8.i.i1593, ptr %add.ptr59.i.i1598, align 4
  br label %for.inc460

for.inc460:                                       ; preds = %do.body391, %if.then385, %if.end444, %do.body450, %if.end417, %do.body423
  br i1 %cmp378, label %for.body380, label %if.end467

if.end467:                                        ; preds = %x264_cabac_mb8x8_mvd.exit, %for.inc460, %for.inc311.2, %do.body296.3, %if.else.thread1855, %if.then33.i, %if.then28.i, %if.end23.i, %if.else, %do.body105, %do.body128, %do.body
  %or.cond6911746 = phi i1 [ false, %if.else ], [ false, %do.body105 ], [ false, %do.body128 ], [ false, %do.body ], [ true, %if.end23.i ], [ true, %if.then28.i ], [ true, %if.then33.i ], [ false, %if.else.thread1855 ], [ false, %do.body296.3 ], [ false, %for.inc311.2 ], [ false, %for.inc460 ], [ false, %x264_cabac_mb8x8_mvd.exit ]
  %cmp451744 = phi i1 [ %cmp451745, %if.else ], [ %cmp4517451848, %do.body105 ], [ %cmp4517451848, %do.body128 ], [ %cmp4517451848, %do.body ], [ %cmp45, %if.end23.i ], [ %cmp45, %if.then28.i ], [ %cmp45, %if.then33.i ], [ false, %if.else.thread1855 ], [ %cmp4517451854, %do.body296.3 ], [ %cmp4517451854, %for.inc311.2 ], [ %cmp451745, %for.inc460 ], [ %cmp4517451851, %x264_cabac_mb8x8_mvd.exit ]
  %404 = load ptr, ptr %p.i, align 8
  %405 = load ptr, ptr %p_start.i, align 16
  %sub.ptr.lhs.cast.i1601 = ptrtoint ptr %404 to i64
  %sub.ptr.rhs.cast.i1602 = ptrtoint ptr %405 to i64
  %sub.ptr.sub.i1603 = sub i64 %sub.ptr.lhs.cast.i1601, %sub.ptr.rhs.cast.i1602
  %406 = load i32, ptr %i_bytes_outstanding.i, align 4
  %407 = load i32, ptr %i_queue.i, align 8
  %408 = trunc i64 %sub.ptr.sub.i1603 to i32
  %add.tr.i1606 = add i32 %406, %408
  %409 = shl i32 %add.tr.i1606, 3
  %conv3.i1607 = add i32 %409, %407
  %stat470 = getelementptr inbounds i8, ptr %h, i64 26712
  %410 = load i32, ptr %stat470, align 8
  %sub469 = add i32 %410, %conv3.i.neg1772
  %add473 = add i32 %sub469, %conv3.i1607
  store i32 %add473, ptr %stat470, align 8
  br i1 %cmp451744, label %if.end477, label %if.then476

if.then476:                                       ; preds = %if.end467
  %i_cbp_luma.i = getelementptr inbounds i8, ptr %h, i64 17400
  %411 = load i32, ptr %i_cbp_luma.i, align 8
  %i_cbp_left.i = getelementptr inbounds i8, ptr %h, i64 25780
  %412 = load i32, ptr %i_cbp_left.i, align 4
  %i_cbp_top.i = getelementptr inbounds i8, ptr %h, i64 25776
  %413 = load i32, ptr %i_cbp_top.i, align 16
  %414 = shl i32 %412, 30
  %415 = ashr i32 %414, 31
  %sub.i1608 = add nsw i32 %415, 76
  %shr4.i1609 = lshr i32 %413, 1
  %and5.i = and i32 %shr4.i1609, 2
  %sub6.i = sub nuw nsw i32 %sub.i1608, %and5.i
  %and8.i = and i32 %411, 1
  call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef %sub6.i, i32 noundef %and8.i) #7
  %shr12.i = lshr i32 %413, 2
  %and13.i = and i32 %shr12.i, 2
  %416 = or disjoint i32 %and8.i, %and13.i
  %sub14.i = sub nuw nsw i32 76, %416
  %shr1547.i = lshr i32 %411, 1
  %and16.i = and i32 %shr1547.i, 1
  call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef %sub14.i, i32 noundef %and16.i) #7
  %417 = shl i32 %412, 28
  %418 = ashr i32 %417, 31
  %shl.i = shl i32 %411, 1
  %and20.i = and i32 %shl.i, 2
  %reass.sub = sub nsw i32 %418, %and20.i
  %sub21.i1610 = add nsw i32 %reass.sub, 76
  %shr2249.i = lshr i32 %411, 2
  %and23.i = and i32 %shr2249.i, 1
  call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef %sub21.i1610, i32 noundef %and23.i) #7
  %and28.i1611 = and i32 %411, 2
  %419 = or disjoint i32 %and28.i1611, %and23.i
  %sub29.i = sub nuw nsw i32 76, %419
  %shr3050.i = lshr i32 %411, 3
  %and31.i = and i32 %shr3050.i, 1
  call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef %sub29.i, i32 noundef %and31.i) #7
  %420 = load i32, ptr %i_cbp_left.i, align 4
  %and.i1613 = and i32 %420, 48
  %421 = load i32, ptr %i_cbp_top.i, align 16
  %and3.i1615 = and i32 %421, 48
  %tobool.not.i1616 = icmp ne i32 %and.i1613, 0
  %cmp.not.i1617 = icmp ne i32 %420, -1
  %or.cond.not.i = and i1 %cmp.not.i1617, %tobool.not.i1616
  %ctx.0.i1618 = zext i1 %or.cond.not.i to i32
  %tobool7.not.i = icmp eq i32 %and3.i1615, 0
  %cmp12.not.i = icmp eq i32 %421, -1
  %add.i1619 = or disjoint i32 %ctx.0.i1618, 2
  %422 = or i1 %cmp12.not.i, %tobool7.not.i
  %ctx.1.i1620 = select i1 %422, i32 %ctx.0.i1618, i32 %add.i1619
  %i_cbp_chroma.i = getelementptr inbounds i8, ptr %h, i64 17404
  %423 = load i32, ptr %i_cbp_chroma.i, align 4
  %cmp16.i = icmp eq i32 %423, 0
  %add18.i = add nuw nsw i32 %ctx.1.i1620, 77
  br i1 %cmp16.i, label %if.then17.i, label %if.else.i1621

if.then17.i:                                      ; preds = %if.then476
  call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef %add18.i, i32 noundef 0) #7
  br label %if.end477

if.else.i1621:                                    ; preds = %if.then476
  call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef %add18.i, i32 noundef 1) #7
  %cmp20.i1622 = icmp eq i32 %and.i1613, 32
  %spec.select47.i = select i1 %cmp20.i1622, i32 5, i32 4
  %cmp24.i1623 = icmp eq i32 %and3.i1615, 32
  %add26.i = or disjoint i32 %spec.select47.i, 2
  %ctx.3.i = select i1 %cmp24.i1623, i32 %add26.i, i32 %spec.select47.i
  %add28.i1624 = add nuw nsw i32 %ctx.3.i, 77
  %424 = load i32, ptr %i_cbp_chroma.i, align 4
  %shr.i1625 = ashr i32 %424, 1
  call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef %add28.i1624, i32 noundef %shr.i1625) #7
  br label %if.end477

if.end477:                                        ; preds = %if.else.i1621, %if.then17.i, %if.end467
  %pps.i = getelementptr inbounds i8, ptr %h, i64 3328
  %425 = load ptr, ptr %pps.i, align 16
  %b_transform_8x8_mode.i = getelementptr inbounds i8, ptr %425, i64 60
  %426 = load i32, ptr %b_transform_8x8_mode.i, align 4
  %tobool.not.i1627 = icmp eq i32 %426, 0
  br i1 %tobool.not.i1627, label %if.end484, label %if.end.i1628

if.end.i1628:                                     ; preds = %if.end477
  %427 = load i32, ptr %i_type, align 8
  %cmp.not.i1630 = icmp eq i32 %427, 5
  br i1 %cmp.not.i1630, label %if.end4.i, label %if.then1.i

if.then1.i:                                       ; preds = %if.end.i1628
  %idxprom.i1631 = sext i32 %427 to i64
  %arrayidx.i1632 = getelementptr inbounds [19 x i8], ptr @x264_mb_transform_8x8_allowed.partition_tab, i64 0, i64 %idxprom.i1631
  %428 = load i8, ptr %arrayidx.i1632, align 1
  %conv.i1633 = zext i8 %428 to i32
  br label %x264_mb_transform_8x8_allowed.exit

if.end4.i:                                        ; preds = %if.end.i1628
  %i_sub_partition.i1635 = getelementptr inbounds i8, ptr %h, i64 17392
  %429 = load i32, ptr %i_sub_partition.i1635, align 16
  %cmp6.i = icmp eq i32 %429, 50529027
  %conv7.i1636 = zext i1 %cmp6.i to i32
  br label %x264_mb_transform_8x8_allowed.exit

x264_mb_transform_8x8_allowed.exit:               ; preds = %if.then1.i, %if.end4.i
  %retval.0.i1634 = phi i32 [ %conv.i1633, %if.then1.i ], [ %conv7.i1636, %if.end4.i ]
  %tobool479.not = icmp eq i32 %retval.0.i1634, 0
  br i1 %tobool479.not, label %if.end484, label %land.lhs.true480

land.lhs.true480:                                 ; preds = %x264_mb_transform_8x8_allowed.exit
  %i_cbp_luma = getelementptr inbounds i8, ptr %h, i64 17400
  %430 = load i32, ptr %i_cbp_luma, align 8
  %tobool482.not = icmp eq i32 %430, 0
  br i1 %tobool482.not, label %if.end484, label %if.then483

if.then483:                                       ; preds = %land.lhs.true480
  %431 = getelementptr i8, ptr %h, i64 17396
  %h.val = load i32, ptr %431, align 4
  %432 = getelementptr i8, ptr %h, i64 25768
  %h.val988 = load i32, ptr %432, align 8
  %add.i1637 = add nsw i32 %h.val988, 399
  call void @x264_cabac_encode_decision_c(ptr noundef nonnull %cb, i32 noundef %add.i1637, i32 noundef %h.val) #7
  br label %if.end484

if.end484:                                        ; preds = %if.end477, %if.then483, %land.lhs.true480, %x264_mb_transform_8x8_allowed.exit
  %i_cbp_luma486 = getelementptr inbounds i8, ptr %h, i64 17400
  %433 = load i32, ptr %i_cbp_luma486, align 8
  %cmp487 = icmp sgt i32 %433, 0
  br i1 %cmp487, label %if.then496, label %lor.lhs.false489

lor.lhs.false489:                                 ; preds = %if.end484
  %i_cbp_chroma = getelementptr inbounds i8, ptr %h, i64 17404
  %434 = load i32, ptr %i_cbp_chroma, align 4
  %cmp491 = icmp sgt i32 %434, 0
  %or.cond694 = or i1 %cmp451744, %cmp491
  br i1 %or.cond694, label %if.then496, label %cleanup

if.then496:                                       ; preds = %lor.lhs.false489, %if.end484
  %lor.ext = zext i1 %or.cond6911746 to i32
  %i_qp.i = getelementptr inbounds i8, ptr %h, i64 25792
  %435 = load i32, ptr %i_qp.i, align 16
  %i_last_qp.i = getelementptr inbounds i8, ptr %h, i64 25800
  %436 = load i32, ptr %i_last_qp.i, align 8
  %sub.i1638 = sub nsw i32 %435, %436
  %437 = load i32, ptr %i_type, align 8
  %cmp.i1640 = icmp eq i32 %437, 2
  br i1 %cmp.i1640, label %land.lhs.true.i1651, label %if.end.i1641

land.lhs.true.i1651:                              ; preds = %if.then496
  %cbp.i = getelementptr inbounds i8, ptr %h, i64 16640
  %438 = load ptr, ptr %cbp.i, align 16
  %i_mb_xy.i1652 = getelementptr inbounds i8, ptr %h, i64 16392
  %439 = load i32, ptr %i_mb_xy.i1652, align 8
  %idxprom.i1653 = sext i32 %439 to i64
  %arrayidx.i1654 = getelementptr inbounds i16, ptr %438, i64 %idxprom.i1653
  %440 = load i16, ptr %arrayidx.i1654, align 2
  %tobool.not.i1655 = icmp eq i16 %440, 0
  br i1 %tobool.not.i1655, label %if.then.i1656, label %if.end.i1641

if.then.i1656:                                    ; preds = %land.lhs.true.i1651
  store i32 %436, ptr %i_qp.i, align 16
  br label %if.end.i1641

if.end.i1641:                                     ; preds = %if.then.i1656, %land.lhs.true.i1651, %if.then496
  %i_dqp.0.i = phi i32 [ %sub.i1638, %land.lhs.true.i1651 ], [ 0, %if.then.i1656 ], [ %sub.i1638, %if.then496 ]
  %i_last_dqp.i = getelementptr inbounds i8, ptr %h, i64 25804
  %441 = load i32, ptr %i_last_dqp.i, align 4
  %tobool10.not.i = icmp eq i32 %441, 0
  br i1 %tobool10.not.i, label %land.end.i, label %land.rhs.i

land.rhs.i:                                       ; preds = %if.end.i1641
  %cbp12.i = getelementptr inbounds i8, ptr %h, i64 16640
  %442 = load ptr, ptr %cbp12.i, align 16
  %i_mb_prev_xy.i = getelementptr inbounds i8, ptr %h, i64 16596
  %443 = load i32, ptr %i_mb_prev_xy.i, align 4
  %idxprom14.i = sext i32 %443 to i64
  %arrayidx15.i = getelementptr inbounds i16, ptr %442, i64 %idxprom14.i
  %444 = load i16, ptr %arrayidx15.i, align 2
  %tobool16.i = icmp ne i16 %444, 0
  %445 = zext i1 %tobool16.i to i32
  br label %land.end.i

land.end.i:                                       ; preds = %land.rhs.i, %if.end.i1641
  %land.ext.i = phi i32 [ 0, %if.end.i1641 ], [ %445, %land.rhs.i ]
  %cmp17.not.i = icmp eq i32 %i_dqp.0.i, 0
  br i1 %cmp17.not.i, label %x264_cabac_mb_qp_delta.exit, label %if.then19.i

if.then19.i:                                      ; preds = %land.end.i
  %cmp20.i1642 = icmp slt i32 %i_dqp.0.i, 1
  %mul.i1643 = mul nsw i32 %i_dqp.0.i, -2
  %mul22.i = shl nuw nsw i32 %i_dqp.0.i, 1
  %sub23.i = add nsw i32 %mul22.i, -1
  %cond.i = select i1 %cmp20.i1642, i32 %mul.i1643, i32 %sub23.i
  %cmp24.i1644 = icmp sgt i32 %cond.i, 50
  %cmp27.i = icmp ne i32 %cond.i, 52
  %or.cond.i = and i1 %cmp24.i1644, %cmp27.i
  %sub30.i = sub nsw i32 103, %cond.i
  %val.0.i = select i1 %or.cond.i, i32 %sub30.i, i32 %cond.i
  br label %do.body.i1645

do.body.i1645:                                    ; preds = %do.body.i1645, %if.then19.i
  %ctx.0.i1646 = phi i32 [ %land.ext.i, %if.then19.i ], [ %add32.i, %do.body.i1645 ]
  %val.1.i = phi i32 [ %val.0.i, %if.then19.i ], [ %dec.i1649, %do.body.i1645 ]
  %add.i1647 = add nuw nsw i32 %ctx.0.i1646, 60
  call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %add.i1647, i32 noundef 1) #7
  %shr.i1648 = lshr i32 %ctx.0.i1646, 1
  %add32.i = add nuw nsw i32 %shr.i1648, 2
  %dec.i1649 = add nsw i32 %val.1.i, -1
  %tobool33.not.i = icmp eq i32 %dec.i1649, 0
  br i1 %tobool33.not.i, label %x264_cabac_mb_qp_delta.exit, label %do.body.i1645

x264_cabac_mb_qp_delta.exit:                      ; preds = %do.body.i1645, %land.end.i
  %ctx.1.i1650 = phi i32 [ %land.ext.i, %land.end.i ], [ %add32.i, %do.body.i1645 ]
  %add35.i = add nuw nsw i32 %ctx.1.i1650, 60
  call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %add35.i, i32 noundef 0) #7
  br i1 %cmp451744, label %if.then509, label %if.else553

if.then509:                                       ; preds = %x264_cabac_mb_qp_delta.exit
  %i_cbp_left.i1657 = getelementptr inbounds i8, ptr %h, i64 25780
  %446 = load i32, ptr %i_cbp_left.i1657, align 4
  %shr97.i = lshr i32 %446, 8
  %and28.i1658 = and i32 %shr97.i, 1
  %i_cbp_top.i1659 = getelementptr inbounds i8, ptr %h, i64 25776
  %447 = load i32, ptr %i_cbp_top.i1659, align 16
  %448 = lshr i32 %447, 7
  %mul35.i = and i32 %448, 2
  %add36.i = add nuw nsw i32 %and28.i1658, 85
  %add37.i = add nuw nsw i32 %add36.i, %mul35.i
  %non_zero_count = getelementptr inbounds i8, ptr %h, i64 25072
  %arrayidx514 = getelementptr inbounds i8, ptr %h, i64 25116
  %449 = load i8, ptr %arrayidx514, align 1
  %tobool515.not = icmp eq i8 %449, 0
  br i1 %tobool515.not, label %if.else518, label %if.then516

if.then516:                                       ; preds = %if.then509
  call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %add37.i, i32 noundef 1) #7
  %dct = getelementptr inbounds i8, ptr %h, i64 15040
  call fastcc void @block_residual_write_cabac(ptr noundef nonnull %h, ptr noundef %cb, i32 noundef 0, ptr noundef nonnull %dct)
  br label %if.end519

if.else518:                                       ; preds = %if.then509
  call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %add37.i, i32 noundef 0) #7
  br label %if.end519

if.end519:                                        ; preds = %if.else518, %if.then516
  %450 = load i32, ptr %i_cbp_luma486, align 8
  %cmp522.not = icmp eq i32 %450, 0
  br i1 %cmp522.not, label %if.end612, label %for.cond526.preheader

for.cond526.preheader:                            ; preds = %if.end519
  %luma4x4 = getelementptr inbounds i8, ptr %h, i64 15600
  br label %for.body530

for.body530:                                      ; preds = %for.cond526.preheader, %if.end548
  %indvars.iv1833 = phi i64 [ 0, %for.cond526.preheader ], [ %indvars.iv.next1834, %if.end548 ]
  %arrayidx.i1662 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %indvars.iv1833
  %451 = load i32, ptr %arrayidx.i1662, align 4
  %sub.i1663 = add nsw i32 %451, -1
  %idxprom1.i1664 = sext i32 %sub.i1663 to i64
  %arrayidx2.i1665 = getelementptr inbounds [48 x i8], ptr %non_zero_count, i64 0, i64 %idxprom1.i1664
  %452 = load i8, ptr %arrayidx2.i1665, align 1
  %sub8.i = add nsw i32 %451, -8
  %idxprom9.i = sext i32 %sub8.i to i64
  %arrayidx10.i = getelementptr inbounds [48 x i8], ptr %non_zero_count, i64 0, i64 %idxprom9.i
  %453 = load i8, ptr %arrayidx10.i, align 1
  %tobool.not.i1668 = icmp eq i8 %453, 0
  %mul17.i = select i1 %tobool.not.i1668, i32 0, i32 2
  %tobool19.i.not = icmp eq i8 %452, 0
  %add18.i1669 = select i1 %tobool19.i.not, i32 89, i32 90
  %add24.i = add nuw nsw i32 %mul17.i, %add18.i1669
  %idxprom538 = sext i32 %451 to i64
  %arrayidx539 = getelementptr inbounds [48 x i8], ptr %non_zero_count, i64 0, i64 %idxprom538
  %454 = load i8, ptr %arrayidx539, align 1
  %tobool540.not = icmp eq i8 %454, 0
  br i1 %tobool540.not, label %if.else547, label %if.then541

if.then541:                                       ; preds = %for.body530
  call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %add24.i, i32 noundef 1) #7
  %add.ptr546 = getelementptr inbounds [24 x [16 x i16]], ptr %luma4x4, i64 0, i64 %indvars.iv1833, i64 1
  call fastcc void @block_residual_write_cabac(ptr noundef nonnull %h, ptr noundef %cb, i32 noundef 1, ptr noundef nonnull %add.ptr546)
  br label %if.end548

if.else547:                                       ; preds = %for.body530
  call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %add24.i, i32 noundef 0) #7
  br label %if.end548

if.end548:                                        ; preds = %if.else547, %if.then541
  %indvars.iv.next1834 = add nuw nsw i64 %indvars.iv1833, 1
  %exitcond1836.not = icmp eq i64 %indvars.iv.next1834, 16
  br i1 %exitcond1836.not, label %if.end612, label %for.body530

if.else553:                                       ; preds = %x264_cabac_mb_qp_delta.exit
  %b_transform_8x8555 = getelementptr inbounds i8, ptr %h, i64 17396
  %455 = load i32, ptr %b_transform_8x8555, align 4
  %tobool556.not = icmp eq i32 %455, 0
  br i1 %tobool556.not, label %for.cond578.preheader, label %for.cond559.preheader

for.cond559.preheader:                            ; preds = %if.else553
  %456 = load i32, ptr %i_cbp_luma486, align 8
  %and = and i32 %456, 1
  %tobool566.not = icmp eq i32 %and, 0
  br i1 %tobool566.not, label %for.inc573, label %if.then567

for.cond578.preheader:                            ; preds = %if.else553
  %non_zero_count.i1671 = getelementptr inbounds i8, ptr %h, i64 25072
  %add.i1683 = select i1 %or.cond6911746, i32 255, i32 127
  %luma4x4601 = getelementptr inbounds i8, ptr %h, i64 15600
  br label %for.body582

if.then567:                                       ; preds = %for.cond559.preheader
  %luma8x8 = getelementptr inbounds i8, ptr %h, i64 15088
  call fastcc void @block_residual_write_cabac(ptr noundef nonnull %h, ptr noundef %cb, i32 noundef 5, ptr noundef nonnull %luma8x8)
  %.pre1842 = load i32, ptr %i_cbp_luma486, align 8
  br label %for.inc573

for.inc573:                                       ; preds = %for.cond559.preheader, %if.then567
  %457 = phi i32 [ %456, %for.cond559.preheader ], [ %.pre1842, %if.then567 ]
  %and.1 = and i32 %457, 2
  %tobool566.not.1 = icmp eq i32 %and.1, 0
  br i1 %tobool566.not.1, label %for.inc573.1, label %if.then567.1

if.then567.1:                                     ; preds = %for.inc573
  %arrayidx570.1 = getelementptr inbounds i8, ptr %h, i64 15216
  call fastcc void @block_residual_write_cabac(ptr noundef nonnull %h, ptr noundef %cb, i32 noundef 5, ptr noundef nonnull %arrayidx570.1)
  %.pre1843 = load i32, ptr %i_cbp_luma486, align 8
  br label %for.inc573.1

for.inc573.1:                                     ; preds = %if.then567.1, %for.inc573
  %458 = phi i32 [ %.pre1843, %if.then567.1 ], [ %457, %for.inc573 ]
  %and.2 = and i32 %458, 4
  %tobool566.not.2 = icmp eq i32 %and.2, 0
  br i1 %tobool566.not.2, label %for.inc573.2, label %if.then567.2

if.then567.2:                                     ; preds = %for.inc573.1
  %arrayidx570.2 = getelementptr inbounds i8, ptr %h, i64 15344
  call fastcc void @block_residual_write_cabac(ptr noundef nonnull %h, ptr noundef %cb, i32 noundef 5, ptr noundef nonnull %arrayidx570.2)
  %.pre1844 = load i32, ptr %i_cbp_luma486, align 8
  br label %for.inc573.2

for.inc573.2:                                     ; preds = %if.then567.2, %for.inc573.1
  %459 = phi i32 [ %.pre1844, %if.then567.2 ], [ %458, %for.inc573.1 ]
  %and.3 = and i32 %459, 8
  %tobool566.not.3 = icmp eq i32 %and.3, 0
  br i1 %tobool566.not.3, label %if.end612, label %if.then567.3

if.then567.3:                                     ; preds = %for.inc573.2
  %arrayidx570.3 = getelementptr inbounds i8, ptr %h, i64 15472
  call fastcc void @block_residual_write_cabac(ptr noundef nonnull %h, ptr noundef %cb, i32 noundef 5, ptr noundef nonnull %arrayidx570.3)
  br label %if.end612

for.body582:                                      ; preds = %for.cond578.preheader, %for.inc608
  %indvars.iv1829 = phi i64 [ 0, %for.cond578.preheader ], [ %indvars.iv.next1830, %for.inc608 ]
  %460 = load i32, ptr %i_cbp_luma486, align 8
  %461 = trunc nuw nsw i64 %indvars.iv1829 to i32
  %div987 = lshr i32 %461, 2
  %shl585 = shl nuw nsw i32 1, %div987
  %and586 = and i32 %460, %shl585
  %tobool587.not = icmp eq i32 %and586, 0
  br i1 %tobool587.not, label %for.inc608, label %if.then588

if.then588:                                       ; preds = %for.body582
  %arrayidx.i1673 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %indvars.iv1829
  %462 = load i32, ptr %arrayidx.i1673, align 4
  %sub.i1674 = add nsw i32 %462, -1
  %idxprom1.i1675 = sext i32 %sub.i1674 to i64
  %arrayidx2.i1676 = getelementptr inbounds [48 x i8], ptr %non_zero_count.i1671, i64 0, i64 %idxprom1.i1675
  %463 = load i8, ptr %arrayidx2.i1676, align 1
  %conv.i1677 = zext i8 %463 to i32
  %sub8.i1678 = add nsw i32 %462, -8
  %idxprom9.i1679 = sext i32 %sub8.i1678 to i64
  %arrayidx10.i1680 = getelementptr inbounds [48 x i8], ptr %non_zero_count.i1671, i64 0, i64 %idxprom9.i1679
  %464 = load i8, ptr %arrayidx10.i1680, align 1
  %conv11.i1681 = zext i8 %464 to i32
  %and.i1684 = and i32 %add.i1683, %conv.i1677
  %and14.i1685 = and i32 %add.i1683, %conv11.i1681
  %tobool.not.i1686 = icmp eq i32 %and14.i1685, 0
  %mul17.i1687 = select i1 %tobool.not.i1686, i32 0, i32 2
  %tobool19.i1688.not = icmp eq i32 %and.i1684, 0
  %add18.i1690 = select i1 %tobool19.i1688.not, i32 93, i32 94
  %add24.i1691 = add nuw nsw i32 %mul17.i1687, %add18.i1690
  %idxprom596 = sext i32 %462 to i64
  %arrayidx597 = getelementptr inbounds [48 x i8], ptr %non_zero_count.i1671, i64 0, i64 %idxprom596
  %465 = load i8, ptr %arrayidx597, align 1
  %tobool598.not = icmp eq i8 %465, 0
  br i1 %tobool598.not, label %if.else605, label %if.then599

if.then599:                                       ; preds = %if.then588
  call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %add24.i1691, i32 noundef 1) #7
  %arrayidx603 = getelementptr inbounds [24 x [16 x i16]], ptr %luma4x4601, i64 0, i64 %indvars.iv1829
  call fastcc void @block_residual_write_cabac(ptr noundef nonnull %h, ptr noundef %cb, i32 noundef 2, ptr noundef nonnull %arrayidx603)
  br label %for.inc608

if.else605:                                       ; preds = %if.then588
  call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %add24.i1691, i32 noundef 0) #7
  br label %for.inc608

for.inc608:                                       ; preds = %if.then599, %if.else605, %for.body582
  %indvars.iv.next1830 = add nuw nsw i64 %indvars.iv1829, 1
  %exitcond1832.not = icmp eq i64 %indvars.iv.next1830, 16
  br i1 %exitcond1832.not, label %if.end612, label %for.body582

if.end612:                                        ; preds = %for.inc608, %if.end548, %for.inc573.2, %if.then567.3, %if.end519
  %i_cbp_chroma614 = getelementptr inbounds i8, ptr %h, i64 17404
  %466 = load i32, ptr %i_cbp_chroma614, align 4
  %tobool615.not = icmp eq i32 %466, 0
  br i1 %tobool615.not, label %cleanup, label %if.then616

if.then616:                                       ; preds = %if.end612
  %i_cbp_left42.i = getelementptr inbounds i8, ptr %h, i64 25780
  %467 = load i32, ptr %i_cbp_left42.i, align 4
  %cmp.not.i1693 = icmp eq i32 %467, -1
  %shr4895.i = lshr i32 %467, 9
  %and49.i = and i32 %shr4895.i, 1
  %cond.i1694 = select i1 %cmp.not.i1693, i32 %lor.ext, i32 %and49.i
  %i_cbp_top52.i = getelementptr inbounds i8, ptr %h, i64 25776
  %468 = load i32, ptr %i_cbp_top52.i, align 16
  %cmp53.not.i = icmp eq i32 %468, -1
  %shr6096.i = lshr i32 %468, 9
  %and61.i = and i32 %shr6096.i, 1
  %cond64.i = select i1 %cmp53.not.i, i32 %lor.ext, i32 %and61.i
  %mul67.i = shl nuw nsw i32 %cond64.i, 1
  %add68.i = add nuw nsw i32 %cond.i1694, 97
  %add69.i = add nuw nsw i32 %add68.i, %mul67.i
  %arrayidx623 = getelementptr inbounds i8, ptr %h, i64 25118
  %469 = load i8, ptr %arrayidx623, align 1
  %tobool624.not = icmp eq i8 %469, 0
  br i1 %tobool624.not, label %if.else629, label %if.then625

if.then625:                                       ; preds = %if.then616
  call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %add69.i, i32 noundef 1) #7
  %chroma_dc = getelementptr inbounds i8, ptr %h, i64 15072
  call fastcc void @block_residual_write_cabac(ptr noundef nonnull %h, ptr noundef %cb, i32 noundef 3, ptr noundef nonnull %chroma_dc)
  br label %if.end630

if.else629:                                       ; preds = %if.then616
  call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %add69.i, i32 noundef 0) #7
  br label %if.end630

if.end630:                                        ; preds = %if.else629, %if.then625
  %470 = load i32, ptr %i_cbp_left42.i, align 4
  %cmp.not.i1697 = icmp eq i32 %470, -1
  %shr4895.i1698 = lshr i32 %470, 10
  %and49.i1699 = and i32 %shr4895.i1698, 1
  %cond.i1700 = select i1 %cmp.not.i1697, i32 %lor.ext, i32 %and49.i1699
  %471 = load i32, ptr %i_cbp_top52.i, align 16
  %cmp53.not.i1702 = icmp eq i32 %471, -1
  %shr6096.i1703 = lshr i32 %471, 10
  %and61.i1704 = and i32 %shr6096.i1703, 1
  %cond64.i1705 = select i1 %cmp53.not.i1702, i32 %lor.ext, i32 %and61.i1704
  %mul67.i1706 = shl nuw nsw i32 %cond64.i1705, 1
  %add68.i1707 = add nuw nsw i32 %cond.i1700, 97
  %add69.i1708 = add nuw nsw i32 %add68.i1707, %mul67.i1706
  %arrayidx637 = getelementptr inbounds i8, ptr %h, i64 25119
  %472 = load i8, ptr %arrayidx637, align 1
  %tobool638.not = icmp eq i8 %472, 0
  br i1 %tobool638.not, label %if.else644, label %if.then639

if.then639:                                       ; preds = %if.end630
  call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %add69.i1708, i32 noundef 1) #7
  %arrayidx642 = getelementptr inbounds i8, ptr %h, i64 15080
  call fastcc void @block_residual_write_cabac(ptr noundef nonnull %h, ptr noundef %cb, i32 noundef 3, ptr noundef nonnull %arrayidx642)
  br label %if.end645

if.else644:                                       ; preds = %if.end630
  call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %add69.i1708, i32 noundef 0) #7
  br label %if.end645

if.end645:                                        ; preds = %if.else644, %if.then639
  %473 = load i32, ptr %i_cbp_chroma614, align 4
  %and648 = and i32 %473, 2
  %tobool649.not = icmp eq i32 %and648, 0
  br i1 %tobool649.not, label %cleanup, label %for.cond652.preheader

for.cond652.preheader:                            ; preds = %if.end645
  %add.i1722 = select i1 %or.cond6911746, i32 255, i32 127
  %arrayidx2.i1715 = getelementptr inbounds i8, ptr %h, i64 25080
  %474 = load i8, ptr %arrayidx2.i1715, align 1
  %conv.i1716 = zext i8 %474 to i32
  %arrayidx10.i1719 = getelementptr inbounds i8, ptr %h, i64 25073
  %475 = load i8, ptr %arrayidx10.i1719, align 1
  %conv11.i1720 = zext i8 %475 to i32
  %and.i1723 = and i32 %add.i1722, %conv.i1716
  %and14.i1724 = and i32 %add.i1722, %conv11.i1720
  %tobool.not.i1725 = icmp eq i32 %and14.i1724, 0
  %mul17.i1726 = select i1 %tobool.not.i1725, i32 0, i32 2
  %tobool19.i1727.not = icmp eq i32 %and.i1723, 0
  %add18.i1729 = select i1 %tobool19.i1727.not, i32 101, i32 102
  %add24.i1730 = add nuw nsw i32 %mul17.i1726, %add18.i1729
  %arrayidx665 = getelementptr inbounds i8, ptr %h, i64 25081
  %476 = load i8, ptr %arrayidx665, align 1
  %tobool666.not = icmp eq i8 %476, 0
  br i1 %tobool666.not, label %if.else674, label %if.then667

if.then667:                                       ; preds = %for.cond652.preheader
  call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %add24.i1730, i32 noundef 1) #7
  %add.ptr673 = getelementptr inbounds i8, ptr %h, i64 16114
  call fastcc void @block_residual_write_cabac(ptr noundef nonnull %h, ptr noundef %cb, i32 noundef 4, ptr noundef nonnull %add.ptr673)
  br label %if.end675

if.else674:                                       ; preds = %for.cond652.preheader
  call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %add24.i1730, i32 noundef 0) #7
  br label %if.end675

if.end675:                                        ; preds = %if.else674, %if.then667
  %477 = load i8, ptr %arrayidx665, align 1
  %conv.i1716.1 = zext i8 %477 to i32
  %arrayidx10.i1719.1 = getelementptr inbounds i8, ptr %h, i64 25074
  %478 = load i8, ptr %arrayidx10.i1719.1, align 1
  %conv11.i1720.1 = zext i8 %478 to i32
  %and.i1723.1 = and i32 %add.i1722, %conv.i1716.1
  %and14.i1724.1 = and i32 %add.i1722, %conv11.i1720.1
  %tobool.not.i1725.1 = icmp eq i32 %and14.i1724.1, 0
  %mul17.i1726.1 = select i1 %tobool.not.i1725.1, i32 0, i32 2
  %tobool19.i1727.not.1 = icmp eq i32 %and.i1723.1, 0
  %add18.i1729.1 = select i1 %tobool19.i1727.not.1, i32 101, i32 102
  %add24.i1730.1 = add nuw nsw i32 %mul17.i1726.1, %add18.i1729.1
  %arrayidx665.1 = getelementptr inbounds i8, ptr %h, i64 25082
  %479 = load i8, ptr %arrayidx665.1, align 1
  %tobool666.not.1 = icmp eq i8 %479, 0
  br i1 %tobool666.not.1, label %if.else674.1, label %if.then667.1

if.then667.1:                                     ; preds = %if.end675
  call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %add24.i1730.1, i32 noundef 1) #7
  %add.ptr673.1 = getelementptr inbounds i8, ptr %h, i64 16146
  call fastcc void @block_residual_write_cabac(ptr noundef nonnull %h, ptr noundef %cb, i32 noundef 4, ptr noundef nonnull %add.ptr673.1)
  br label %if.end675.1

if.else674.1:                                     ; preds = %if.end675
  call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %add24.i1730.1, i32 noundef 0) #7
  br label %if.end675.1

if.end675.1:                                      ; preds = %if.else674.1, %if.then667.1
  %arrayidx2.i1715.2 = getelementptr inbounds i8, ptr %h, i64 25088
  %480 = load i8, ptr %arrayidx2.i1715.2, align 1
  %conv.i1716.2 = zext i8 %480 to i32
  %481 = load i8, ptr %arrayidx665, align 1
  %conv11.i1720.2 = zext i8 %481 to i32
  %and.i1723.2 = and i32 %add.i1722, %conv.i1716.2
  %and14.i1724.2 = and i32 %add.i1722, %conv11.i1720.2
  %tobool.not.i1725.2 = icmp eq i32 %and14.i1724.2, 0
  %mul17.i1726.2 = select i1 %tobool.not.i1725.2, i32 0, i32 2
  %tobool19.i1727.not.2 = icmp eq i32 %and.i1723.2, 0
  %add18.i1729.2 = select i1 %tobool19.i1727.not.2, i32 101, i32 102
  %add24.i1730.2 = add nuw nsw i32 %mul17.i1726.2, %add18.i1729.2
  %arrayidx665.2 = getelementptr inbounds i8, ptr %h, i64 25089
  %482 = load i8, ptr %arrayidx665.2, align 1
  %tobool666.not.2 = icmp eq i8 %482, 0
  br i1 %tobool666.not.2, label %if.else674.2, label %if.then667.2

if.then667.2:                                     ; preds = %if.end675.1
  call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %add24.i1730.2, i32 noundef 1) #7
  %add.ptr673.2 = getelementptr inbounds i8, ptr %h, i64 16178
  call fastcc void @block_residual_write_cabac(ptr noundef nonnull %h, ptr noundef %cb, i32 noundef 4, ptr noundef nonnull %add.ptr673.2)
  br label %if.end675.2

if.else674.2:                                     ; preds = %if.end675.1
  call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %add24.i1730.2, i32 noundef 0) #7
  br label %if.end675.2

if.end675.2:                                      ; preds = %if.else674.2, %if.then667.2
  %483 = load i8, ptr %arrayidx665.2, align 1
  %conv.i1716.3 = zext i8 %483 to i32
  %484 = load i8, ptr %arrayidx665.1, align 1
  %conv11.i1720.3 = zext i8 %484 to i32
  %and.i1723.3 = and i32 %add.i1722, %conv.i1716.3
  %and14.i1724.3 = and i32 %add.i1722, %conv11.i1720.3
  %tobool.not.i1725.3 = icmp eq i32 %and14.i1724.3, 0
  %mul17.i1726.3 = select i1 %tobool.not.i1725.3, i32 0, i32 2
  %tobool19.i1727.not.3 = icmp eq i32 %and.i1723.3, 0
  %add18.i1729.3 = select i1 %tobool19.i1727.not.3, i32 101, i32 102
  %add24.i1730.3 = add nuw nsw i32 %mul17.i1726.3, %add18.i1729.3
  %arrayidx665.3 = getelementptr inbounds i8, ptr %h, i64 25090
  %485 = load i8, ptr %arrayidx665.3, align 1
  %tobool666.not.3 = icmp eq i8 %485, 0
  br i1 %tobool666.not.3, label %if.else674.3, label %if.then667.3

if.then667.3:                                     ; preds = %if.end675.2
  call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %add24.i1730.3, i32 noundef 1) #7
  %add.ptr673.3 = getelementptr inbounds i8, ptr %h, i64 16210
  call fastcc void @block_residual_write_cabac(ptr noundef nonnull %h, ptr noundef %cb, i32 noundef 4, ptr noundef nonnull %add.ptr673.3)
  br label %if.end675.3

if.else674.3:                                     ; preds = %if.end675.2
  call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %add24.i1730.3, i32 noundef 0) #7
  br label %if.end675.3

if.end675.3:                                      ; preds = %if.else674.3, %if.then667.3
  %arrayidx2.i1715.4 = getelementptr inbounds i8, ptr %h, i64 25104
  %486 = load i8, ptr %arrayidx2.i1715.4, align 1
  %conv.i1716.4 = zext i8 %486 to i32
  %arrayidx10.i1719.4 = getelementptr inbounds i8, ptr %h, i64 25097
  %487 = load i8, ptr %arrayidx10.i1719.4, align 1
  %conv11.i1720.4 = zext i8 %487 to i32
  %and.i1723.4 = and i32 %add.i1722, %conv.i1716.4
  %and14.i1724.4 = and i32 %add.i1722, %conv11.i1720.4
  %tobool.not.i1725.4 = icmp eq i32 %and14.i1724.4, 0
  %mul17.i1726.4 = select i1 %tobool.not.i1725.4, i32 0, i32 2
  %tobool19.i1727.not.4 = icmp eq i32 %and.i1723.4, 0
  %add18.i1729.4 = select i1 %tobool19.i1727.not.4, i32 101, i32 102
  %add24.i1730.4 = add nuw nsw i32 %mul17.i1726.4, %add18.i1729.4
  %arrayidx665.4 = getelementptr inbounds i8, ptr %h, i64 25105
  %488 = load i8, ptr %arrayidx665.4, align 1
  %tobool666.not.4 = icmp eq i8 %488, 0
  br i1 %tobool666.not.4, label %if.else674.4, label %if.then667.4

if.then667.4:                                     ; preds = %if.end675.3
  call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %add24.i1730.4, i32 noundef 1) #7
  %add.ptr673.4 = getelementptr inbounds i8, ptr %h, i64 16242
  call fastcc void @block_residual_write_cabac(ptr noundef nonnull %h, ptr noundef %cb, i32 noundef 4, ptr noundef nonnull %add.ptr673.4)
  br label %if.end675.4

if.else674.4:                                     ; preds = %if.end675.3
  call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %add24.i1730.4, i32 noundef 0) #7
  br label %if.end675.4

if.end675.4:                                      ; preds = %if.else674.4, %if.then667.4
  %489 = load i8, ptr %arrayidx665.4, align 1
  %conv.i1716.5 = zext i8 %489 to i32
  %arrayidx10.i1719.5 = getelementptr inbounds i8, ptr %h, i64 25098
  %490 = load i8, ptr %arrayidx10.i1719.5, align 1
  %conv11.i1720.5 = zext i8 %490 to i32
  %and.i1723.5 = and i32 %add.i1722, %conv.i1716.5
  %and14.i1724.5 = and i32 %add.i1722, %conv11.i1720.5
  %tobool.not.i1725.5 = icmp eq i32 %and14.i1724.5, 0
  %mul17.i1726.5 = select i1 %tobool.not.i1725.5, i32 0, i32 2
  %tobool19.i1727.not.5 = icmp eq i32 %and.i1723.5, 0
  %add18.i1729.5 = select i1 %tobool19.i1727.not.5, i32 101, i32 102
  %add24.i1730.5 = add nuw nsw i32 %mul17.i1726.5, %add18.i1729.5
  %arrayidx665.5 = getelementptr inbounds i8, ptr %h, i64 25106
  %491 = load i8, ptr %arrayidx665.5, align 1
  %tobool666.not.5 = icmp eq i8 %491, 0
  br i1 %tobool666.not.5, label %if.else674.5, label %if.then667.5

if.then667.5:                                     ; preds = %if.end675.4
  call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %add24.i1730.5, i32 noundef 1) #7
  %add.ptr673.5 = getelementptr inbounds i8, ptr %h, i64 16274
  call fastcc void @block_residual_write_cabac(ptr noundef nonnull %h, ptr noundef %cb, i32 noundef 4, ptr noundef nonnull %add.ptr673.5)
  br label %if.end675.5

if.else674.5:                                     ; preds = %if.end675.4
  call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %add24.i1730.5, i32 noundef 0) #7
  br label %if.end675.5

if.end675.5:                                      ; preds = %if.else674.5, %if.then667.5
  %arrayidx2.i1715.6 = getelementptr inbounds i8, ptr %h, i64 25112
  %492 = load i8, ptr %arrayidx2.i1715.6, align 1
  %conv.i1716.6 = zext i8 %492 to i32
  %493 = load i8, ptr %arrayidx665.4, align 1
  %conv11.i1720.6 = zext i8 %493 to i32
  %and.i1723.6 = and i32 %add.i1722, %conv.i1716.6
  %and14.i1724.6 = and i32 %add.i1722, %conv11.i1720.6
  %tobool.not.i1725.6 = icmp eq i32 %and14.i1724.6, 0
  %mul17.i1726.6 = select i1 %tobool.not.i1725.6, i32 0, i32 2
  %tobool19.i1727.not.6 = icmp eq i32 %and.i1723.6, 0
  %add18.i1729.6 = select i1 %tobool19.i1727.not.6, i32 101, i32 102
  %add24.i1730.6 = add nuw nsw i32 %mul17.i1726.6, %add18.i1729.6
  %arrayidx665.6 = getelementptr inbounds i8, ptr %h, i64 25113
  %494 = load i8, ptr %arrayidx665.6, align 1
  %tobool666.not.6 = icmp eq i8 %494, 0
  br i1 %tobool666.not.6, label %if.else674.6, label %if.then667.6

if.then667.6:                                     ; preds = %if.end675.5
  call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %add24.i1730.6, i32 noundef 1) #7
  %add.ptr673.6 = getelementptr inbounds i8, ptr %h, i64 16306
  call fastcc void @block_residual_write_cabac(ptr noundef nonnull %h, ptr noundef %cb, i32 noundef 4, ptr noundef nonnull %add.ptr673.6)
  br label %if.end675.6

if.else674.6:                                     ; preds = %if.end675.5
  call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %add24.i1730.6, i32 noundef 0) #7
  br label %if.end675.6

if.end675.6:                                      ; preds = %if.else674.6, %if.then667.6
  %495 = load i8, ptr %arrayidx665.6, align 1
  %conv.i1716.7 = zext i8 %495 to i32
  %496 = load i8, ptr %arrayidx665.5, align 1
  %conv11.i1720.7 = zext i8 %496 to i32
  %and.i1723.7 = and i32 %add.i1722, %conv.i1716.7
  %and14.i1724.7 = and i32 %add.i1722, %conv11.i1720.7
  %tobool.not.i1725.7 = icmp eq i32 %and14.i1724.7, 0
  %mul17.i1726.7 = select i1 %tobool.not.i1725.7, i32 0, i32 2
  %tobool19.i1727.not.7 = icmp eq i32 %and.i1723.7, 0
  %add18.i1729.7 = select i1 %tobool19.i1727.not.7, i32 101, i32 102
  %add24.i1730.7 = add nuw nsw i32 %mul17.i1726.7, %add18.i1729.7
  %arrayidx665.7 = getelementptr inbounds i8, ptr %h, i64 25114
  %497 = load i8, ptr %arrayidx665.7, align 1
  %tobool666.not.7 = icmp eq i8 %497, 0
  br i1 %tobool666.not.7, label %if.else674.7, label %if.then667.7

if.then667.7:                                     ; preds = %if.end675.6
  call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %add24.i1730.7, i32 noundef 1) #7
  %add.ptr673.7 = getelementptr inbounds i8, ptr %h, i64 16338
  call fastcc void @block_residual_write_cabac(ptr noundef nonnull %h, ptr noundef %cb, i32 noundef 4, ptr noundef nonnull %add.ptr673.7)
  br label %cleanup

if.else674.7:                                     ; preds = %if.end675.6
  call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %add24.i1730.7, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false489, %if.end645, %if.end612, %if.else674.7, %if.then667.7, %if.then
  %conv3.i1607.sink = phi i32 [ %conv3.i999, %if.then ], [ %conv3.i1607, %if.then667.7 ], [ %conv3.i1607, %if.else674.7 ], [ %conv3.i1607, %if.end612 ], [ %conv3.i1607, %if.end645 ], [ %conv3.i1607, %lor.lhs.false489 ]
  %498 = load ptr, ptr %p.i, align 8
  %499 = load ptr, ptr %p_start.i, align 16
  %sub.ptr.lhs.cast.i1734 = ptrtoint ptr %498 to i64
  %sub.ptr.rhs.cast.i1735 = ptrtoint ptr %499 to i64
  %sub.ptr.sub.i1736 = sub i64 %sub.ptr.lhs.cast.i1734, %sub.ptr.rhs.cast.i1735
  %500 = load i32, ptr %i_bytes_outstanding.i, align 4
  %501 = load i32, ptr %i_queue.i, align 8
  %502 = trunc i64 %sub.ptr.sub.i1736 to i32
  %add.tr.i1739 = add i32 %500, %502
  %503 = shl i32 %add.tr.i1739, 3
  %i_tex_bits686 = getelementptr inbounds i8, ptr %h, i64 26716
  %504 = load i32, ptr %i_tex_bits686, align 4
  %conv3.i1740 = sub i32 %501, %conv3.i1607.sink
  %sub683 = add i32 %conv3.i1740, %504
  %add687 = add i32 %sub683, %503
  store i32 %add687, ptr %i_tex_bits686, align 4
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

declare void @x264_cabac_encode_init_core(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @x264_cabac_mb_ref(ptr nocapture noundef readonly %h, ptr noundef %cb, i32 noundef %i_list, i32 noundef %idx) unnamed_addr #0 {
entry:
  %idxprom = sext i32 %idx to i64
  %arrayidx = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %idxprom
  %0 = load i32, ptr %arrayidx, align 4
  %ref = getelementptr inbounds i8, ptr %h, i64 25120
  %idxprom1 = zext nneg i32 %i_list to i64
  %sub = add nsw i32 %0, -1
  %idxprom3 = sext i32 %sub to i64
  %arrayidx4 = getelementptr inbounds [2 x [40 x i8]], ptr %ref, i64 0, i64 %idxprom1, i64 %idxprom3
  %1 = load i8, ptr %arrayidx4, align 1
  %sub10 = add nsw i32 %0, -8
  %idxprom11 = sext i32 %sub10 to i64
  %arrayidx12 = getelementptr inbounds [2 x [40 x i8]], ptr %ref, i64 0, i64 %idxprom1, i64 %idxprom11
  %2 = load i8, ptr %arrayidx12, align 1
  %cmp = icmp sgt i8 %1, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %skip = getelementptr inbounds i8, ptr %h, i64 25680
  %arrayidx19 = getelementptr inbounds [40 x i8], ptr %skip, i64 0, i64 %idxprom3
  %3 = load i8, ptr %arrayidx19, align 1
  %tobool.not = icmp eq i8 %3, 0
  %spec.select = zext i1 %tobool.not to i32
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry
  %ctx.0 = phi i32 [ 0, %entry ], [ %spec.select, %land.lhs.true ]
  %cmp20 = icmp sgt i8 %2, 0
  br i1 %cmp20, label %land.lhs.true22, label %if.end31

land.lhs.true22:                                  ; preds = %if.end
  %skip25 = getelementptr inbounds i8, ptr %h, i64 25680
  %arrayidx28 = getelementptr inbounds [40 x i8], ptr %skip25, i64 0, i64 %idxprom11
  %4 = load i8, ptr %arrayidx28, align 1
  %tobool29.not = icmp eq i8 %4, 0
  %add = or disjoint i32 %ctx.0, 2
  %spec.select61 = select i1 %tobool29.not, i32 %add, i32 %ctx.0
  br label %if.end31

if.end31:                                         ; preds = %land.lhs.true22, %if.end
  %ctx.1 = phi i32 [ %ctx.0, %if.end ], [ %spec.select61, %land.lhs.true22 ]
  %idxprom37 = sext i32 %0 to i64
  %arrayidx38 = getelementptr inbounds [2 x [40 x i8]], ptr %ref, i64 0, i64 %idxprom1, i64 %idxprom37
  %5 = load i8, ptr %arrayidx38, align 1
  %cmp4062 = icmp sgt i8 %5, 0
  br i1 %cmp4062, label %for.body.preheader, label %for.cond.cleanup

for.body.preheader:                               ; preds = %if.end31
  %conv39 = zext nneg i8 %5 to i32
  br label %for.body

for.cond.cleanup:                                 ; preds = %for.body, %if.end31
  %ctx.2.lcssa = phi i32 [ %ctx.1, %if.end31 ], [ %add43, %for.body ]
  %add44 = add nuw nsw i32 %ctx.2.lcssa, 54
  tail call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %add44, i32 noundef 0) #7
  ret void

for.body:                                         ; preds = %for.body.preheader, %for.body
  %i_ref.064 = phi i32 [ %dec, %for.body ], [ %conv39, %for.body.preheader ]
  %ctx.263 = phi i32 [ %add43, %for.body ], [ %ctx.1, %for.body.preheader ]
  %add42 = add nuw nsw i32 %ctx.263, 54
  tail call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %add42, i32 noundef 1) #7
  %shr = lshr i32 %ctx.263, 2
  %add43 = add nuw nsw i32 %shr, 4
  %dec = add nsw i32 %i_ref.064, -1
  %cmp40 = icmp ugt i32 %i_ref.064, 1
  br i1 %cmp40, label %for.body, label %for.cond.cleanup
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i16 @x264_cabac_mb_mvd(ptr noundef %h, ptr noundef %cb, i32 noundef %i_list, i32 noundef %idx, i32 noundef %width) unnamed_addr #0 {
entry:
  %mvp = alloca [2 x i16], align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mvp) #7
  call void @x264_mb_predict_mv(ptr noundef %h, i32 noundef %i_list, i32 noundef %idx, i32 noundef %width, ptr noundef nonnull %mvp) #7
  %mv = getelementptr inbounds i8, ptr %h, i64 25200
  %idxprom = zext nneg i32 %i_list to i64
  %idxprom1 = sext i32 %idx to i64
  %arrayidx2 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %idxprom1
  %0 = load i32, ptr %arrayidx2, align 4
  %idxprom3 = sext i32 %0 to i64
  %arrayidx4 = getelementptr inbounds [2 x [40 x [2 x i16]]], ptr %mv, i64 0, i64 %idxprom, i64 %idxprom3
  %1 = load i16, ptr %arrayidx4, align 4
  %conv = sext i16 %1 to i32
  %2 = load i16, ptr %mvp, align 4
  %conv7 = sext i16 %2 to i32
  %sub = sub nsw i32 %conv, %conv7
  %arrayidx17 = getelementptr inbounds i8, ptr %arrayidx4, i64 2
  %3 = load i16, ptr %arrayidx17, align 2
  %conv18 = sext i16 %3 to i32
  %arrayidx19 = getelementptr inbounds i8, ptr %mvp, i64 2
  %4 = load i16, ptr %arrayidx19, align 2
  %conv20 = sext i16 %4 to i32
  %sub21 = sub nsw i32 %conv18, %conv20
  %mvd = getelementptr inbounds i8, ptr %h, i64 25520
  %sub28 = add nsw i32 %0, -1
  %idxprom29 = sext i32 %sub28 to i64
  %arrayidx30 = getelementptr inbounds [2 x [40 x [2 x i8]]], ptr %mvd, i64 0, i64 %idxprom, i64 %idxprom29
  %sub39 = add nsw i32 %0, -8
  %idxprom40 = sext i32 %sub39 to i64
  %arrayidx41 = getelementptr inbounds [2 x [40 x [2 x i8]]], ptr %mvd, i64 0, i64 %idxprom, i64 %idxprom40
  %arrayidx30.val = load i8, ptr %arrayidx30, align 1
  %5 = getelementptr i8, ptr %arrayidx30, i64 1
  %arrayidx30.val71 = load i8, ptr %5, align 1
  %arrayidx41.val = load i8, ptr %arrayidx41, align 1
  %6 = getelementptr i8, ptr %arrayidx41, i64 1
  %arrayidx41.val72 = load i8, ptr %6, align 1
  %conv.i = zext i8 %arrayidx30.val to i32
  %conv2.i = zext i8 %arrayidx41.val to i32
  %add.i = add nuw nsw i32 %conv2.i, %conv.i
  %conv4.i = zext i8 %arrayidx30.val71 to i32
  %conv6.i = zext i8 %arrayidx41.val72 to i32
  %add7.i = add nuw nsw i32 %conv6.i, %conv4.i
  %cmp.i = icmp ugt i32 %add.i, 2
  %conv8.i = zext i1 %cmp.i to i32
  %cmp9.i = icmp ugt i32 %add.i, 32
  %conv10.i = zext i1 %cmp9.i to i32
  %add11.i = add nuw nsw i32 %conv8.i, %conv10.i
  %cmp12.i = icmp ugt i32 %add7.i, 2
  %conv13.i = zext i1 %cmp12.i to i32
  %cmp14.i = icmp ugt i32 %add7.i, 32
  %conv15.i = zext i1 %cmp14.i to i32
  %add16.i = add nuw nsw i32 %conv13.i, %conv15.i
  %call44 = call fastcc i32 @x264_cabac_mb_mvd_cpn(ptr noundef %cb, i32 noundef 0, i32 noundef %sub, i32 noundef %add11.i)
  %call46 = call fastcc i32 @x264_cabac_mb_mvd_cpn(ptr noundef %cb, i32 noundef 1, i32 noundef %sub21, i32 noundef %add16.i)
  %shl.i73 = shl nuw nsw i32 %call46, 8
  %add.i74 = add nuw nsw i32 %shl.i73, %call44
  %conv48 = trunc i32 %add.i74 to i16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mvp) #7
  ret i16 %conv48
}

; Function Attrs: nounwind uwtable
define internal fastcc void @block_residual_write_cabac(ptr nocapture noundef readonly %h, ptr noundef %cb, i32 noundef %i_ctxBlockCat, ptr noundef %l) unnamed_addr #0 {
entry:
  %i_coeff_abs_m1 = alloca [64 x i32], align 16
  %i_coeff_sign = alloca [64 x i32], align 16
  %b_interlaced = getelementptr inbounds i8, ptr %h, i64 16436
  %0 = load i32, ptr %b_interlaced, align 4
  %idxprom = sext i32 %0 to i64
  %idxprom1 = zext nneg i32 %i_ctxBlockCat to i64
  %arrayidx2 = getelementptr inbounds [2 x [6 x i16]], ptr @significant_coeff_flag_offset, i64 0, i64 %idxprom, i64 %idxprom1
  %1 = load i16, ptr %arrayidx2, align 2
  %conv = zext i16 %1 to i32
  %arrayidx8 = getelementptr inbounds [2 x [6 x i16]], ptr @last_coeff_flag_offset, i64 0, i64 %idxprom, i64 %idxprom1
  %2 = load i16, ptr %arrayidx8, align 2
  %conv9 = zext i16 %2 to i32
  %arrayidx11 = getelementptr inbounds [6 x i16], ptr @coeff_abs_level_m1_offset, i64 0, i64 %idxprom1
  %3 = load i16, ptr %arrayidx11, align 2
  %conv12 = zext i16 %3 to i32
  %arrayidx16 = getelementptr inbounds [2 x [63 x i8]], ptr @significant_coeff_flag_offset_8x8, i64 0, i64 %idxprom
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %i_coeff_abs_m1) #7
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %i_coeff_sign) #7
  %coeff_last = getelementptr inbounds i8, ptr %h, i64 33168
  %arrayidx18 = getelementptr inbounds [6 x ptr], ptr %coeff_last, i64 0, i64 %idxprom1
  %4 = load ptr, ptr %arrayidx18, align 8
  %call = tail call i32 %4(ptr noundef %l) #7
  %cmp = icmp eq i32 %i_ctxBlockCat, 5
  br i1 %cmp, label %while.cond.preheader, label %if.else74

while.cond.preheader:                             ; preds = %entry
  %5 = zext i32 %call to i64
  br label %while.cond

while.cond:                                       ; preds = %while.cond.preheader, %if.end54
  %indvars.iv276 = phi i64 [ 0, %while.cond.preheader ], [ %indvars.iv.next277, %if.end54 ]
  %i_coeff.0 = phi i32 [ 0, %while.cond.preheader ], [ %i_coeff.1, %if.end54 ]
  %arrayidx21 = getelementptr inbounds i16, ptr %l, i64 %indvars.iv276
  %6 = load i16, ptr %arrayidx21, align 2
  %tobool.not = icmp eq i16 %6, 0
  br i1 %tobool.not, label %if.else49, label %if.then22

if.then22:                                        ; preds = %while.cond
  %7 = tail call i16 @llvm.abs.i16(i16 %6, i1 false)
  %8 = zext i16 %7 to i32
  %sub = add nsw i32 %8, -1
  %idxprom26 = sext i32 %i_coeff.0 to i64
  %arrayidx27 = getelementptr inbounds [64 x i32], ptr %i_coeff_abs_m1, i64 0, i64 %idxprom26
  store i32 %sub, ptr %arrayidx27, align 4
  %.lobit264 = lshr i16 %6, 15
  %conv32 = zext nneg i16 %.lobit264 to i32
  %arrayidx34 = getelementptr inbounds [64 x i32], ptr %i_coeff_sign, i64 0, i64 %idxprom26
  store i32 %conv32, ptr %arrayidx34, align 4
  %inc = add nsw i32 %i_coeff.0, 1
  %arrayidx36 = getelementptr inbounds i8, ptr %arrayidx16, i64 %indvars.iv276
  %9 = load i8, ptr %arrayidx36, align 1
  %conv37 = zext i8 %9 to i32
  %add = add nuw nsw i32 %conv37, %conv
  tail call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %add, i32 noundef 1) #7
  %cmp38 = icmp eq i64 %indvars.iv276, %5
  br i1 %cmp38, label %if.then40, label %if.else

if.then40:                                        ; preds = %if.then22
  %arrayidx42 = getelementptr inbounds [63 x i8], ptr @last_coeff_flag_offset_8x8, i64 0, i64 %5
  %10 = load i8, ptr %arrayidx42, align 1
  %conv43 = zext i8 %10 to i32
  %add44 = add nuw nsw i32 %conv43, %conv9
  tail call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %add44, i32 noundef 1) #7
  br label %if.end130

if.else:                                          ; preds = %if.then22
  %arrayidx46 = getelementptr inbounds [63 x i8], ptr @last_coeff_flag_offset_8x8, i64 0, i64 %indvars.iv276
  br label %if.end54

if.else49:                                        ; preds = %while.cond
  %arrayidx51 = getelementptr inbounds i8, ptr %arrayidx16, i64 %indvars.iv276
  br label %if.end54

if.end54:                                         ; preds = %if.else49, %if.else
  %arrayidx51.sink = phi ptr [ %arrayidx51, %if.else49 ], [ %arrayidx46, %if.else ]
  %conv.sink = phi i32 [ %conv, %if.else49 ], [ %conv9, %if.else ]
  %i_coeff.1 = phi i32 [ %i_coeff.0, %if.else49 ], [ %inc, %if.else ]
  %11 = load i8, ptr %arrayidx51.sink, align 1
  %conv52 = zext i8 %11 to i32
  %add53 = add nuw nsw i32 %conv.sink, %conv52
  tail call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %add53, i32 noundef 0) #7
  %indvars.iv.next277 = add nuw nsw i64 %indvars.iv276, 1
  %cmp56 = icmp eq i64 %indvars.iv.next277, 63
  br i1 %cmp56, label %if.then58, label %while.cond

if.then58:                                        ; preds = %if.end54
  %arrayidx60 = getelementptr inbounds i8, ptr %l, i64 126
  %12 = load i16, ptr %arrayidx60, align 2
  %13 = tail call i16 @llvm.abs.i16(i16 %12, i1 false)
  %14 = zext i16 %13 to i32
  %sub62 = add nsw i32 %14, -1
  %idxprom63 = sext i32 %i_coeff.1 to i64
  %arrayidx64 = getelementptr inbounds [64 x i32], ptr %i_coeff_abs_m1, i64 0, i64 %idxprom63
  store i32 %sub62, ptr %arrayidx64, align 4
  %.lobit265 = lshr i16 %12, 15
  %conv69 = zext nneg i16 %.lobit265 to i32
  %arrayidx71 = getelementptr inbounds [64 x i32], ptr %i_coeff_sign, i64 0, i64 %idxprom63
  store i32 %conv69, ptr %arrayidx71, align 4
  %inc72 = add nsw i32 %i_coeff.1, 1
  br label %if.end130

if.else74:                                        ; preds = %entry
  %arrayidx77 = getelementptr inbounds [5 x i8], ptr @count_cat_m1, i64 0, i64 %idxprom1
  %15 = load i8, ptr %arrayidx77, align 1
  %16 = zext i16 %1 to i64
  %17 = zext i32 %call to i64
  %18 = zext i8 %15 to i64
  %19 = zext i16 %2 to i64
  br label %while.cond79

while.cond79:                                     ; preds = %if.end109, %if.else74
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end109 ], [ 0, %if.else74 ]
  %i_coeff.3 = phi i32 [ %i_coeff.4, %if.end109 ], [ 0, %if.else74 ]
  %arrayidx82 = getelementptr inbounds i16, ptr %l, i64 %indvars.iv
  %20 = load i16, ptr %arrayidx82, align 2
  %tobool83.not = icmp eq i16 %20, 0
  br i1 %tobool83.not, label %if.end109, label %if.then84

if.then84:                                        ; preds = %while.cond79
  %21 = tail call i16 @llvm.abs.i16(i16 %20, i1 false)
  %22 = zext i16 %21 to i32
  %sub88 = add nsw i32 %22, -1
  %idxprom89 = sext i32 %i_coeff.3 to i64
  %arrayidx90 = getelementptr inbounds [64 x i32], ptr %i_coeff_abs_m1, i64 0, i64 %idxprom89
  store i32 %sub88, ptr %arrayidx90, align 4
  %.lobit = lshr i16 %20, 15
  %conv95 = zext nneg i16 %.lobit to i32
  %arrayidx97 = getelementptr inbounds [64 x i32], ptr %i_coeff_sign, i64 0, i64 %idxprom89
  store i32 %conv95, ptr %arrayidx97, align 4
  %inc98 = add nsw i32 %i_coeff.3, 1
  %23 = add nuw nsw i64 %indvars.iv, %16
  %24 = trunc nuw i64 %23 to i32
  tail call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %24, i32 noundef 1) #7
  %cmp100 = icmp eq i64 %indvars.iv, %17
  br i1 %cmp100, label %if.then102, label %if.end109

if.then102:                                       ; preds = %if.then84
  %add103 = add nuw nsw i32 %call, %conv9
  tail call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %add103, i32 noundef 1) #7
  br label %if.end130

if.end109:                                        ; preds = %while.cond79, %if.then84
  %.sink = phi i64 [ %19, %if.then84 ], [ %16, %while.cond79 ]
  %i_coeff.4 = phi i32 [ %inc98, %if.then84 ], [ %i_coeff.3, %while.cond79 ]
  %25 = add nuw nsw i64 %indvars.iv, %.sink
  %26 = trunc nuw i64 %25 to i32
  tail call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %26, i32 noundef 0) #7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %cmp111 = icmp eq i64 %indvars.iv.next, %18
  br i1 %cmp111, label %if.then113, label %while.cond79

if.then113:                                       ; preds = %if.end109
  %arrayidx115 = getelementptr inbounds i16, ptr %l, i64 %18
  %27 = load i16, ptr %arrayidx115, align 2
  %28 = tail call i16 @llvm.abs.i16(i16 %27, i1 false)
  %29 = zext i16 %28 to i32
  %sub117 = add nsw i32 %29, -1
  %idxprom118 = sext i32 %i_coeff.4 to i64
  %arrayidx119 = getelementptr inbounds [64 x i32], ptr %i_coeff_abs_m1, i64 0, i64 %idxprom118
  store i32 %sub117, ptr %arrayidx119, align 4
  %.lobit263 = lshr i16 %27, 15
  %conv124 = zext nneg i16 %.lobit263 to i32
  %arrayidx126 = getelementptr inbounds [64 x i32], ptr %i_coeff_sign, i64 0, i64 %idxprom118
  store i32 %conv124, ptr %arrayidx126, align 4
  %inc127 = add nsw i32 %i_coeff.4, 1
  br label %if.end130

if.end130:                                        ; preds = %if.then102, %if.then113, %if.then40, %if.then58
  %i_coeff.6 = phi i32 [ %inc, %if.then40 ], [ %inc72, %if.then58 ], [ %inc98, %if.then102 ], [ %inc127, %if.then113 ]
  %30 = sext i32 %i_coeff.6 to i64
  br label %do.body

do.body:                                          ; preds = %if.end166, %if.end130
  %indvars.iv279 = phi i64 [ %indvars.iv.next280, %if.end166 ], [ %30, %if.end130 ]
  %node_ctx.0 = phi i64 [ %node_ctx.1, %if.end166 ], [ 0, %if.end130 ]
  %indvars.iv.next280 = add nsw i64 %indvars.iv279, -1
  %arrayidx132 = getelementptr inbounds [64 x i32], ptr %i_coeff_abs_m1, i64 0, i64 %indvars.iv.next280
  %31 = load i32, ptr %arrayidx132, align 4
  %cmp133 = icmp slt i32 %31, 14
  %arrayidx138 = getelementptr inbounds [8 x i8], ptr @coeff_abs_level1_ctx, i64 0, i64 %node_ctx.0
  %32 = load i8, ptr %arrayidx138, align 1
  %conv139 = zext i8 %32 to i32
  %add140 = add nuw nsw i32 %conv139, %conv12
  %tobool141.not = icmp eq i32 %31, 0
  br i1 %tobool141.not, label %if.else162, label %if.then142

if.then142:                                       ; preds = %do.body
  tail call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %add140, i32 noundef 1) #7
  %arrayidx144 = getelementptr inbounds [8 x i8], ptr @coeff_abs_levelgt1_ctx, i64 0, i64 %node_ctx.0
  %33 = load i8, ptr %arrayidx144, align 1
  %conv145 = zext i8 %33 to i32
  %add146 = add nuw nsw i32 %conv145, %conv12
  %cmp148268 = icmp sgt i32 %31, 1
  br i1 %cmp148268, label %for.body.preheader, label %if.then153

for.body.preheader:                               ; preds = %if.then142
  %spec.select = tail call i32 @llvm.smin.i32(i32 %31, i32 14)
  %34 = add nsw i32 %spec.select, -2
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.body
  %i.2269 = phi i32 [ %inc150, %for.body ], [ 0, %for.body.preheader ]
  tail call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %add146, i32 noundef 1) #7
  %inc150 = add nuw nsw i32 %i.2269, 1
  %exitcond.not = icmp eq i32 %i.2269, %34
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  br i1 %cmp133, label %if.then153, label %if.else154

if.then153:                                       ; preds = %if.then142, %for.end
  tail call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %add146, i32 noundef 0) #7
  br label %if.end166

if.else154:                                       ; preds = %for.end
  %sub157 = add nsw i32 %31, -14
  tail call void @x264_cabac_encode_ue_bypass(ptr noundef %cb, i32 noundef 0, i32 noundef %sub157) #7
  br label %if.end166

if.else162:                                       ; preds = %do.body
  tail call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %add140, i32 noundef 0) #7
  br label %if.end166

if.end166:                                        ; preds = %if.then153, %if.else154, %if.else162
  %.pn = phi ptr [ @coeff_abs_level_transition, %if.else162 ], [ getelementptr inbounds (i8, ptr @coeff_abs_level_transition, i64 8), %if.else154 ], [ getelementptr inbounds (i8, ptr @coeff_abs_level_transition, i64 8), %if.then153 ]
  %node_ctx.1.in.in = getelementptr inbounds [8 x i8], ptr %.pn, i64 0, i64 %node_ctx.0
  %node_ctx.1.in = load i8, ptr %node_ctx.1.in.in, align 1
  %node_ctx.1 = zext i8 %node_ctx.1.in to i64
  %arrayidx168 = getelementptr inbounds [64 x i32], ptr %i_coeff_sign, i64 0, i64 %indvars.iv.next280
  %35 = load i32, ptr %arrayidx168, align 4
  tail call void @x264_cabac_encode_bypass_c(ptr noundef %cb, i32 noundef %35) #7
  %cmp169 = icmp sgt i64 %indvars.iv279, 1
  br i1 %cmp169, label %do.body, label %do.end

do.end:                                           ; preds = %if.end166
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %i_coeff_sign) #7
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %i_coeff_abs_m1) #7
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @x264_cabac_mb_type_intra(ptr noundef %h, ptr noundef %cb, i32 noundef %i_mb_type, i32 noundef %ctx0, i32 noundef %ctx1, i32 noundef %ctx2, i32 noundef %ctx3, i32 noundef %ctx4, i32 noundef %ctx5) unnamed_addr #4 {
entry:
  %or.cond = icmp ult i32 %i_mb_type, 2
  br i1 %or.cond, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  tail call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %ctx0, i32 noundef 0) #7
  br label %if.end16

if.else:                                          ; preds = %entry
  %cmp2 = icmp eq i32 %i_mb_type, 3
  br i1 %cmp2, label %if.then3, label %if.else4

if.then3:                                         ; preds = %if.else
  tail call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %ctx0, i32 noundef 1) #7
  tail call void @x264_cabac_encode_flush(ptr noundef %h, ptr noundef %cb) #7
  br label %if.end16

if.else4:                                         ; preds = %if.else
  %i_intra16x16_pred_mode = getelementptr inbounds i8, ptr %h, i64 17408
  %0 = load i32, ptr %i_intra16x16_pred_mode, align 16
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [7 x i8], ptr @x264_mb_pred_mode16x16_fix, i64 0, i64 %idxprom
  %1 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %1 to i32
  tail call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %ctx0, i32 noundef 1) #7
  tail call void @x264_cabac_encode_terminal_c(ptr noundef %cb) #7
  %i_cbp_luma = getelementptr inbounds i8, ptr %h, i64 17400
  %2 = load i32, ptr %i_cbp_luma, align 8
  %tobool = icmp ne i32 %2, 0
  %lnot.ext = zext i1 %tobool to i32
  tail call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %ctx1, i32 noundef %lnot.ext) #7
  %i_cbp_chroma = getelementptr inbounds i8, ptr %h, i64 17404
  %3 = load i32, ptr %i_cbp_chroma, align 4
  %cmp8 = icmp eq i32 %3, 0
  br i1 %cmp8, label %if.then10, label %if.else11

if.then10:                                        ; preds = %if.else4
  tail call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %ctx2, i32 noundef 0) #7
  br label %if.end

if.else11:                                        ; preds = %if.else4
  tail call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %ctx2, i32 noundef 1) #7
  %4 = load i32, ptr %i_cbp_chroma, align 4
  %shr = ashr i32 %4, 1
  tail call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %ctx3, i32 noundef %shr) #7
  br label %if.end

if.end:                                           ; preds = %if.else11, %if.then10
  %shr14 = lshr i32 %conv, 1
  tail call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %ctx4, i32 noundef %shr14) #7
  %and = and i32 %conv, 1
  tail call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %ctx5, i32 noundef %and) #7
  br label %if.end16

if.end16:                                         ; preds = %if.then3, %if.end, %if.then
  ret void
}

declare void @x264_cabac_encode_flush(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @x264_cabac_encode_terminal_c(ptr noundef) local_unnamed_addr #2

declare void @x264_mb_predict_mv(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc range(i32 0, 65536) i32 @x264_cabac_mb_mvd_cpn(ptr noundef %cb, i32 noundef %l, i32 noundef %mvd, i32 noundef %ctx) unnamed_addr #4 {
entry:
  %0 = tail call i32 @llvm.abs.i32(i32 %mvd, i1 true)
  %tobool.not = icmp eq i32 %l, 0
  %cond = select i1 %tobool.not, i32 40, i32 47
  %cmp = icmp eq i32 %mvd, 0
  %add = add nuw nsw i32 %cond, %ctx
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  tail call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %add, i32 noundef 0) #7
  br label %if.end29

if.else:                                          ; preds = %entry
  tail call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %add, i32 noundef 1) #7
  %cmp2 = icmp ult i32 %0, 9
  br i1 %cmp2, label %for.cond.preheader, label %for.body17.preheader

for.body17.preheader:                             ; preds = %if.else
  %add22 = add nuw nsw i32 %cond, 3
  tail call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %add22, i32 noundef 1) #7
  %add22.1 = add nuw nsw i32 %cond, 4
  tail call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %add22.1, i32 noundef 1) #7
  %add22.2 = add nuw nsw i32 %cond, 5
  tail call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %add22.2, i32 noundef 1) #7
  %add22.3 = add nuw nsw i32 %cond, 6
  tail call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %add22.3, i32 noundef 1) #7
  tail call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %add22.3, i32 noundef 1) #7
  tail call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %add22.3, i32 noundef 1) #7
  tail call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %add22.3, i32 noundef 1) #7
  tail call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %add22.3, i32 noundef 1) #7
  %sub26 = add nsw i32 %0, -9
  tail call void @x264_cabac_encode_ue_bypass(ptr noundef %cb, i32 noundef 3, i32 noundef %sub26) #7
  br label %if.end

for.cond.preheader:                               ; preds = %if.else
  %cmp42 = icmp ugt i32 %0, 1
  br i1 %cmp42, label %for.body.preheader, label %for.cond.cleanup

for.body.preheader:                               ; preds = %for.cond.preheader
  %smax = tail call i32 @llvm.abs.i32(i32 %mvd, i1 false)
  %wide.trip.count = zext i32 %smax to i64
  br label %for.body

for.cond.cleanup:                                 ; preds = %for.body, %for.cond.preheader
  %sub6 = add nsw i32 %0, -1
  %idxprom7 = zext nneg i32 %sub6 to i64
  %arrayidx8 = getelementptr inbounds [8 x i8], ptr @x264_cabac_mb_mvd_cpn.ctxes, i64 0, i64 %idxprom7
  %1 = load i8, ptr %arrayidx8, align 1
  %conv9 = zext i8 %1 to i32
  %add10 = add nuw nsw i32 %cond, %conv9
  tail call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %add10, i32 noundef 0) #7
  br label %if.end

for.body:                                         ; preds = %for.body.preheader, %for.body
  %indvars.iv = phi i64 [ 1, %for.body.preheader ], [ %indvars.iv.next, %for.body ]
  %2 = add nsw i64 %indvars.iv, -1
  %arrayidx = getelementptr inbounds [8 x i8], ptr @x264_cabac_mb_mvd_cpn.ctxes, i64 0, i64 %2
  %3 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %add5 = add nuw nsw i32 %cond, %conv
  tail call void @x264_cabac_encode_decision_c(ptr noundef %cb, i32 noundef %add5, i32 noundef 1) #7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body

if.end:                                           ; preds = %for.body17.preheader, %for.cond.cleanup
  %mvd.lobit = lshr i32 %mvd, 31
  tail call void @x264_cabac_encode_bypass_c(ptr noundef %cb, i32 noundef %mvd.lobit) #7
  br label %if.end29

if.end29:                                         ; preds = %if.end, %if.then
  %cond32 = tail call i32 @llvm.umin.i32(i32 %0, i32 33)
  ret i32 %cond32
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

declare void @x264_cabac_encode_ue_bypass(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @x264_cabac_encode_bypass_c(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.abs.i16(i16, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.smin.i8(i8, i8) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
