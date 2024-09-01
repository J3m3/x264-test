; ModuleID = 'x264_src/encoder/cavlc.c'
source_filename = "x264_src/encoder/cavlc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_t = type { i8, i8 }
%struct.vlc_large_t = type { i16, i8, i8 }
%struct.x264_run_level_t = type { i32, [16 x i16], [16 x i8] }

@x264_macroblock_write_cavlc.i_offsets = internal unnamed_addr constant [3 x i8] c"\05\17\00", align 1
@x264_mb_pred_mode4x4_fix = internal unnamed_addr constant [13 x i8] c"\FF\00\01\02\03\04\05\06\07\08\02\02\02", align 1
@x264_scan8 = internal unnamed_addr constant [27 x i32] [i32 12, i32 13, i32 20, i32 21, i32 14, i32 15, i32 22, i32 23, i32 28, i32 29, i32 36, i32 37, i32 30, i32 31, i32 38, i32 39, i32 9, i32 10, i32 17, i32 18, i32 33, i32 34, i32 41, i32 42, i32 44, i32 46, i32 47], align 16
@x264_mb_pred_mode8x8c_fix = internal unnamed_addr constant [7 x i8] c"\00\01\02\03\00\00\00", align 1
@x264_mb_pred_mode16x16_fix = internal unnamed_addr constant [7 x i8] c"\00\01\02\03\02\02\02", align 1
@sub_mb_type_p_to_golomb = internal unnamed_addr constant [4 x i8] c"\03\01\02\00", align 1
@sub_mb_type_b_to_golomb = internal unnamed_addr constant [13 x i8] c"\0A\04\05\01\0B\06\07\02\0C\08\09\03\00", align 1
@x264_mb_partition_listX_table = internal unnamed_addr constant [2 x [17 x i8]] [[17 x i8] c"\01\01\01\01\00\00\00\00\01\01\01\01\00\00\00\00\00", [17 x i8] c"\00\00\00\00\01\01\01\01\01\01\01\01\00\00\00\00\00"], align 16
@x264_mb_type_list_table = internal unnamed_addr constant [19 x [2 x [2 x i8]]] [[2 x [2 x i8]] zeroinitializer, [2 x [2 x i8]] zeroinitializer, [2 x [2 x i8]] zeroinitializer, [2 x [2 x i8]] zeroinitializer, [2 x [2 x i8]] [[2 x i8] c"\01\01", [2 x i8] zeroinitializer], [2 x [2 x i8]] zeroinitializer, [2 x [2 x i8]] [[2 x i8] c"\01\01", [2 x i8] zeroinitializer], [2 x [2 x i8]] zeroinitializer, [2 x [2 x i8]] [[2 x i8] c"\01\01", [2 x i8] zeroinitializer], [2 x [2 x i8]] [[2 x i8] c"\01\00", [2 x i8] c"\00\01"], [2 x [2 x i8]] [[2 x i8] c"\01\01", [2 x i8] c"\00\01"], [2 x [2 x i8]] [[2 x i8] c"\00\01", [2 x i8] c"\01\00"], [2 x [2 x i8]] [[2 x i8] zeroinitializer, [2 x i8] c"\01\01"], [2 x [2 x i8]] [[2 x i8] c"\00\01", [2 x i8] c"\01\01"], [2 x [2 x i8]] [[2 x i8] c"\01\01", [2 x i8] c"\01\00"], [2 x [2 x i8]] [[2 x i8] c"\01\00", [2 x i8] c"\01\01"], [2 x [2 x i8]] [[2 x i8] c"\01\01", [2 x i8] c"\01\01"], [2 x [2 x i8]] zeroinitializer, [2 x [2 x i8]] zeroinitializer], align 16
@mb_type_b_to_golomb = internal unnamed_addr constant [3 x [9 x i8]] [[9 x i8] c"\04\08\0C\0A\06\0E\10\12\14", [9 x i8] c"\05\09\0D\0B\07\0F\11\13\15", [9 x i8] c"\01\FF\FF\FF\02\FF\FF\FF\03"], align 16
@intra4x4_cbp_to_golomb = internal unnamed_addr constant [48 x i8] c"\03\1D\1E\11\1F\12%\08 &\13\09\14\0A\0B\02\10!\22\15#\16'\04$(\17\05\18\06\07\01)*+\19,\1A.\0C-/\1B\0D\1C\0E\0F\00", align 16
@inter_cbp_to_golomb = internal unnamed_addr constant [48 x i8] c"\00\02\03\07\04\08\11\0D\05\12\09\0E\0A\0F\10\0B\01 !$\22%,(#-&)'*+\13\06\18\19\14\1A\15.\1C\1B/\16\1D\17\1E\1F\0C", align 16
@ct_index = internal unnamed_addr constant [17 x i8] c"\00\00\01\01\02\02\02\02\03\03\03\03\03\03\03\03\03", align 16
@x264_coeff0_token = external local_unnamed_addr constant [5 x %struct.vlc_t], align 1
@x264_ue_size_tab = internal unnamed_addr constant [256 x i8] c"\01\01\03\03\05\05\05\05\07\07\07\07\07\07\07\07\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F", align 16
@x264_mb_transform_8x8_allowed.partition_tab = internal unnamed_addr constant [19 x i8] c"\00\00\00\00\01\02\00\01\01\01\01\01\01\01\01\01\01\01\00", align 16
@block_residual_write_cavlc.ctz_index = internal unnamed_addr constant [8 x i8] c"\03\00\01\00\02\00\01\00", align 1
@block_residual_write_cavlc.count_cat = internal unnamed_addr constant [5 x i8] c"\10\0F\10\04\0F", align 1
@x264_coeff_token = external local_unnamed_addr constant [5 x [16 x [4 x %struct.vlc_t]]], align 16
@x264_level_token = external local_unnamed_addr global [7 x [128 x %struct.vlc_large_t]], align 16
@x264_total_zeros_dc = external local_unnamed_addr constant [3 x [4 x %struct.vlc_t]], align 16
@x264_total_zeros = external local_unnamed_addr constant [15 x [16 x %struct.vlc_t]], align 16
@x264_run_before = external local_unnamed_addr constant [7 x [16 x %struct.vlc_t]], align 16
@block_residual_write_cavlc_escape.next_suffix = internal unnamed_addr constant [7 x i16] [i16 0, i16 3, i16 6, i16 12, i16 24, i16 48, i16 -1], align 2
@.str = private unnamed_addr constant [55 x i8] c"OVERFLOW levelcode=%d is only allowed in High Profile\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @x264_macroblock_write_cavlc(ptr noundef %h) local_unnamed_addr #0 {
entry:
  %bs = getelementptr inbounds i8, ptr %h, i64 1792
  %i_type = getelementptr inbounds i8, ptr %h, i64 17384
  %0 = load i32, ptr %i_type, align 8
  %i_type1 = getelementptr inbounds i8, ptr %h, i64 7248
  %1 = load i32, ptr %i_type1, align 16
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [3 x i8], ptr @x264_macroblock_write_cavlc.i_offsets, i64 0, i64 %idxprom
  %2 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %p.i = getelementptr inbounds i8, ptr %h, i64 1800
  %3 = load ptr, ptr %p.i, align 8
  %4 = load ptr, ptr %bs, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %3 to i64
  %sub.ptr.rhs.cast.i = ptrtoint ptr %4 to i64
  %sub.ptr.sub.i.neg = sub i64 %sub.ptr.rhs.cast.i, %sub.ptr.lhs.cast.i
  %i_left.i = getelementptr inbounds i8, ptr %h, i64 1824
  %5 = load i32, ptr %i_left.i, align 8
  %sub.ptr.sub.tr.i.neg = trunc i64 %sub.ptr.sub.i.neg to i32
  %.neg2074 = shl i32 %sub.ptr.sub.tr.i.neg, 3
  %reass.sub.i.neg2073 = add i32 %.neg2074, %5
  %b_mbaff = getelementptr inbounds i8, ptr %h, i64 7268
  %6 = load i32, ptr %b_mbaff, align 4
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %i_mb_y = getelementptr inbounds i8, ptr %h, i64 16388
  %7 = load i32, ptr %i_mb_y, align 4
  %and = and i32 %7, 1
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %type = getelementptr inbounds i8, ptr %h, i64 16616
  %8 = load ptr, ptr %type, align 8
  %i_mb_xy = getelementptr inbounds i8, ptr %h, i64 16392
  %9 = load i32, ptr %i_mb_xy, align 8
  %i_mb_stride = getelementptr inbounds i8, ptr %h, i64 16372
  %10 = load i32, ptr %i_mb_stride, align 4
  %sub = sub nsw i32 %9, %10
  %idxprom8 = sext i32 %sub to i64
  %arrayidx9 = getelementptr inbounds i8, ptr %8, i64 %idxprom8
  %11 = load i8, ptr %arrayidx9, align 1
  switch i8 %11, label %if.end [
    i8 6, label %if.then
    i8 18, label %if.then
  ]

if.then:                                          ; preds = %lor.lhs.false, %lor.lhs.false, %land.lhs.true
  %b_interlaced = getelementptr inbounds i8, ptr %h, i64 16436
  %12 = load i32, ptr %b_interlaced, align 4
  %cur_bits.i = getelementptr inbounds i8, ptr %h, i64 1816
  %13 = load i64, ptr %cur_bits.i, align 8
  %shl.i = shl i64 %13, 1
  %conv.i = zext i32 %12 to i64
  %or.i = or i64 %shl.i, %conv.i
  store i64 %or.i, ptr %cur_bits.i, align 8
  %dec.i = add nsw i32 %5, -1
  store i32 %dec.i, ptr %i_left.i, align 8
  %cmp.i = icmp eq i32 %dec.i, 32
  br i1 %cmp.i, label %if.then.i, label %if.end

if.then.i:                                        ; preds = %if.then
  %conv6.i = trunc i64 %or.i to i32
  %add5.i.i = tail call noundef i32 @llvm.bswap.i32(i32 %conv6.i)
  store i32 %add5.i.i, ptr %3, align 4
  %14 = load ptr, ptr %p.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %14, i64 4
  store ptr %add.ptr.i, ptr %p.i, align 8
  store i32 64, ptr %i_left.i, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then, %lor.lhs.false, %entry
  %15 = phi ptr [ %add.ptr.i, %if.then.i ], [ %3, %if.then ], [ %3, %lor.lhs.false ], [ %3, %entry ]
  %16 = phi i32 [ 64, %if.then.i ], [ %dec.i, %if.then ], [ %5, %lor.lhs.false ], [ %5, %entry ]
  %cmp26 = icmp eq i32 %0, 3
  br i1 %cmp26, label %if.then28, label %if.end80

if.then28:                                        ; preds = %if.end
  %17 = load ptr, ptr %bs, align 8
  %add.i = add nuw nsw i32 %conv, 26
  %idxprom.i = zext nneg i32 %add.i to i64
  %arrayidx.i = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %idxprom.i
  %18 = load i8, ptr %arrayidx.i, align 1
  %conv.i1245 = zext i8 %18 to i32
  %cur_bits.i.i = getelementptr inbounds i8, ptr %h, i64 1816
  %19 = load i64, ptr %cur_bits.i.i, align 8
  %sh_prom.i.i = zext nneg i8 %18 to i64
  %shl.i.i = shl i64 %19, %sh_prom.i.i
  %or.i.i = or i64 %shl.i.i, %idxprom.i
  store i64 %or.i.i, ptr %cur_bits.i.i, align 8
  %sub.i.i = sub nsw i32 %16, %conv.i1245
  store i32 %sub.i.i, ptr %i_left.i, align 8
  %cmp.i.i = icmp slt i32 %sub.i.i, 33
  br i1 %cmp.i.i, label %if.then.i.i, label %bs_write_ue.exit

if.then.i.i:                                      ; preds = %if.then28
  %sh_prom6.i.i = zext nneg i32 %sub.i.i to i64
  %shl7.i.i = shl i64 %or.i.i, %sh_prom6.i.i
  %add.i.i.i.i = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i.i)
  %conv8.i.i = trunc i64 %add.i.i.i.i to i32
  store i32 %conv8.i.i, ptr %15, align 4
  %20 = load i32, ptr %i_left.i, align 8
  %add.i.i = add nsw i32 %20, 32
  %21 = load ptr, ptr %p.i, align 8
  %add.ptr.i.i = getelementptr inbounds i8, ptr %21, i64 4
  store ptr %add.ptr.i.i, ptr %p.i, align 8
  %.pre2127 = load ptr, ptr %bs, align 8
  %.pre2128 = load i64, ptr %cur_bits.i.i, align 8
  br label %bs_write_ue.exit

bs_write_ue.exit:                                 ; preds = %if.then28, %if.then.i.i
  %22 = phi i64 [ %or.i.i, %if.then28 ], [ %.pre2128, %if.then.i.i ]
  %23 = phi i32 [ %sub.i.i, %if.then28 ], [ %add.i.i, %if.then.i.i ]
  %24 = phi ptr [ %17, %if.then28 ], [ %.pre2127, %if.then.i.i ]
  %25 = phi ptr [ %15, %if.then28 ], [ %add.ptr.i.i, %if.then.i.i ]
  %sub.ptr.lhs.cast.i1247 = ptrtoint ptr %25 to i64
  %sub.ptr.rhs.cast.i1248 = ptrtoint ptr %24 to i64
  %sub.ptr.sub.i1249 = sub i64 %sub.ptr.lhs.cast.i1247, %sub.ptr.rhs.cast.i1248
  %sub.ptr.sub.tr.i1251 = trunc i64 %sub.ptr.sub.i1249 to i32
  %26 = shl i32 %sub.ptr.sub.tr.i1251, 3
  %reass.sub.i1252 = sub i32 %26, %23
  %stat = getelementptr inbounds i8, ptr %h, i64 26712
  %27 = load i32, ptr %stat, align 8
  %sub31 = add i32 %27, %reass.sub.i.neg2073
  %add32 = add i32 %sub31, %reass.sub.i1252
  store i32 %add32, ptr %stat, align 8
  %and.i = and i32 %23, 7
  %sh_prom.i.i1256 = zext nneg i32 %and.i to i64
  %shl.i.i1257 = shl i64 %22, %sh_prom.i.i1256
  store i64 %shl.i.i1257, ptr %cur_bits.i.i, align 8
  %sub.i.i1258 = and i32 %23, -8
  store i32 %sub.i.i1258, ptr %i_left.i, align 8
  %cmp.i.i1259 = icmp slt i32 %sub.i.i1258, 33
  br i1 %cmp.i.i1259, label %if.then.i.i1261, label %bs_align_0.exit

if.then.i.i1261:                                  ; preds = %bs_write_ue.exit
  %sh_prom6.i.i1262 = zext nneg i32 %sub.i.i1258 to i64
  %28 = tail call i64 @llvm.bswap.i64(i64 %shl.i.i1257)
  %add.i.i.i.i1263 = lshr i64 %28, %sh_prom6.i.i1262
  %conv8.i.i1264 = trunc i64 %add.i.i.i.i1263 to i32
  store i32 %conv8.i.i1264, ptr %25, align 4
  %29 = load i32, ptr %i_left.i, align 8
  %add.i.i1266 = add nsw i32 %29, 32
  store i32 %add.i.i1266, ptr %i_left.i, align 8
  %30 = load ptr, ptr %p.i, align 8
  %add.ptr.i.i1267 = getelementptr inbounds i8, ptr %30, i64 4
  store ptr %add.ptr.i.i1267, ptr %p.i, align 8
  %.pre.i = load i64, ptr %cur_bits.i.i, align 8
  br label %bs_align_0.exit

bs_align_0.exit:                                  ; preds = %bs_write_ue.exit, %if.then.i.i1261
  %31 = phi ptr [ %add.ptr.i.i1267, %if.then.i.i1261 ], [ %25, %bs_write_ue.exit ]
  %32 = phi i32 [ %add.i.i1266, %if.then.i.i1261 ], [ %sub.i.i1258, %bs_write_ue.exit ]
  %33 = phi i64 [ %.pre.i, %if.then.i.i1261 ], [ %shl.i.i1257, %bs_write_ue.exit ]
  %and.i.i = and i32 %32, 31
  %sh_prom.i5.i = zext nneg i32 %and.i.i to i64
  %shl.i6.i = shl i64 %33, %sh_prom.i5.i
  %conv.i.i1260 = trunc i64 %shl.i6.i to i32
  %add5.i.i.i = tail call noundef i32 @llvm.bswap.i32(i32 %conv.i.i1260)
  store i32 %add5.i.i.i, ptr %31, align 4
  %34 = load i32, ptr %i_left.i, align 8
  %div.neg.i.i = sdiv i32 %34, -8
  %35 = load ptr, ptr %p.i, align 8
  %36 = sext i32 %div.neg.i.i to i64
  %37 = getelementptr i8, ptr %35, i64 %36
  %add.ptr.i8.i = getelementptr i8, ptr %37, i64 8
  store ptr %add.ptr.i8.i, ptr %p.i, align 8
  store i32 64, ptr %i_left.i, align 8
  %p_fenc = getelementptr inbounds i8, ptr %h, i64 21344
  %38 = load ptr, ptr %p_fenc, align 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %add.ptr.i8.i, ptr noundef nonnull align 1 dereferenceable(256) %38, i64 256, i1 false)
  %39 = load ptr, ptr %p.i, align 8
  %add.ptr = getelementptr inbounds i8, ptr %39, i64 256
  store ptr %add.ptr, ptr %p.i, align 8
  %arrayidx43 = getelementptr inbounds i8, ptr %h, i64 21352
  %40 = load ptr, ptr %arrayidx43, align 8
  %41 = load i64, ptr %40, align 1
  store i64 %41, ptr %add.ptr, align 1
  %42 = load ptr, ptr %p.i, align 8
  %add.ptr39.1 = getelementptr inbounds i8, ptr %42, i64 8
  %43 = load ptr, ptr %arrayidx43, align 8
  %add.ptr46.1 = getelementptr inbounds i8, ptr %43, i64 16
  %44 = load i64, ptr %add.ptr46.1, align 1
  store i64 %44, ptr %add.ptr39.1, align 1
  %45 = load ptr, ptr %p.i, align 8
  %add.ptr39.2 = getelementptr inbounds i8, ptr %45, i64 16
  %46 = load ptr, ptr %arrayidx43, align 8
  %add.ptr46.2 = getelementptr inbounds i8, ptr %46, i64 32
  %47 = load i64, ptr %add.ptr46.2, align 1
  store i64 %47, ptr %add.ptr39.2, align 1
  %48 = load ptr, ptr %p.i, align 8
  %add.ptr39.3 = getelementptr inbounds i8, ptr %48, i64 24
  %49 = load ptr, ptr %arrayidx43, align 8
  %add.ptr46.3 = getelementptr inbounds i8, ptr %49, i64 48
  %50 = load i64, ptr %add.ptr46.3, align 1
  store i64 %50, ptr %add.ptr39.3, align 1
  %51 = load ptr, ptr %p.i, align 8
  %add.ptr39.4 = getelementptr inbounds i8, ptr %51, i64 32
  %52 = load ptr, ptr %arrayidx43, align 8
  %add.ptr46.4 = getelementptr inbounds i8, ptr %52, i64 64
  %53 = load i64, ptr %add.ptr46.4, align 1
  store i64 %53, ptr %add.ptr39.4, align 1
  %54 = load ptr, ptr %p.i, align 8
  %add.ptr39.5 = getelementptr inbounds i8, ptr %54, i64 40
  %55 = load ptr, ptr %arrayidx43, align 8
  %add.ptr46.5 = getelementptr inbounds i8, ptr %55, i64 80
  %56 = load i64, ptr %add.ptr46.5, align 1
  store i64 %56, ptr %add.ptr39.5, align 1
  %57 = load ptr, ptr %p.i, align 8
  %add.ptr39.6 = getelementptr inbounds i8, ptr %57, i64 48
  %58 = load ptr, ptr %arrayidx43, align 8
  %add.ptr46.6 = getelementptr inbounds i8, ptr %58, i64 96
  %59 = load i64, ptr %add.ptr46.6, align 1
  store i64 %59, ptr %add.ptr39.6, align 1
  %60 = load ptr, ptr %p.i, align 8
  %add.ptr39.7 = getelementptr inbounds i8, ptr %60, i64 56
  %61 = load ptr, ptr %arrayidx43, align 8
  %add.ptr46.7 = getelementptr inbounds i8, ptr %61, i64 112
  %62 = load i64, ptr %add.ptr46.7, align 1
  store i64 %62, ptr %add.ptr39.7, align 1
  %63 = load ptr, ptr %p.i, align 8
  %add.ptr48 = getelementptr inbounds i8, ptr %63, i64 64
  store ptr %add.ptr48, ptr %p.i, align 8
  %arrayidx62 = getelementptr inbounds i8, ptr %h, i64 21360
  %64 = load ptr, ptr %arrayidx62, align 16
  %65 = load i64, ptr %64, align 1
  store i64 %65, ptr %add.ptr48, align 1
  %66 = load ptr, ptr %p.i, align 8
  %add.ptr58.1 = getelementptr inbounds i8, ptr %66, i64 8
  %67 = load ptr, ptr %arrayidx62, align 16
  %add.ptr65.1 = getelementptr inbounds i8, ptr %67, i64 16
  %68 = load i64, ptr %add.ptr65.1, align 1
  store i64 %68, ptr %add.ptr58.1, align 1
  %69 = load ptr, ptr %p.i, align 8
  %add.ptr58.2 = getelementptr inbounds i8, ptr %69, i64 16
  %70 = load ptr, ptr %arrayidx62, align 16
  %add.ptr65.2 = getelementptr inbounds i8, ptr %70, i64 32
  %71 = load i64, ptr %add.ptr65.2, align 1
  store i64 %71, ptr %add.ptr58.2, align 1
  %72 = load ptr, ptr %p.i, align 8
  %add.ptr58.3 = getelementptr inbounds i8, ptr %72, i64 24
  %73 = load ptr, ptr %arrayidx62, align 16
  %add.ptr65.3 = getelementptr inbounds i8, ptr %73, i64 48
  %74 = load i64, ptr %add.ptr65.3, align 1
  store i64 %74, ptr %add.ptr58.3, align 1
  %75 = load ptr, ptr %p.i, align 8
  %add.ptr58.4 = getelementptr inbounds i8, ptr %75, i64 32
  %76 = load ptr, ptr %arrayidx62, align 16
  %add.ptr65.4 = getelementptr inbounds i8, ptr %76, i64 64
  %77 = load i64, ptr %add.ptr65.4, align 1
  store i64 %77, ptr %add.ptr58.4, align 1
  %78 = load ptr, ptr %p.i, align 8
  %add.ptr58.5 = getelementptr inbounds i8, ptr %78, i64 40
  %79 = load ptr, ptr %arrayidx62, align 16
  %add.ptr65.5 = getelementptr inbounds i8, ptr %79, i64 80
  %80 = load i64, ptr %add.ptr65.5, align 1
  store i64 %80, ptr %add.ptr58.5, align 1
  %81 = load ptr, ptr %p.i, align 8
  %add.ptr58.6 = getelementptr inbounds i8, ptr %81, i64 48
  %82 = load ptr, ptr %arrayidx62, align 16
  %add.ptr65.6 = getelementptr inbounds i8, ptr %82, i64 96
  %83 = load i64, ptr %add.ptr65.6, align 1
  store i64 %83, ptr %add.ptr58.6, align 1
  %84 = load ptr, ptr %p.i, align 8
  %add.ptr58.7 = getelementptr inbounds i8, ptr %84, i64 56
  %85 = load ptr, ptr %arrayidx62, align 16
  %add.ptr65.7 = getelementptr inbounds i8, ptr %85, i64 112
  %86 = load i64, ptr %add.ptr65.7, align 1
  store i64 %86, ptr %add.ptr58.7, align 1
  %87 = load ptr, ptr %p.i, align 8
  %add.ptr70 = getelementptr inbounds i8, ptr %87, i64 64
  %p_end = getelementptr inbounds i8, ptr %h, i64 1808
  %88 = load ptr, ptr %p_end, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %88 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr70 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %idx.ext.i = and i64 %sub.ptr.rhs.cast, 3
  %idx.neg.i = sub nsw i64 0, %idx.ext.i
  %add.ptr.i1268 = getelementptr inbounds i8, ptr %add.ptr70, i64 %idx.neg.i
  store ptr %add.ptr.i1268, ptr %bs, align 8
  store ptr %add.ptr.i1268, ptr %p.i, align 8
  %sext = shl i64 %sub.ptr.sub, 32
  %idx.ext1.i = ashr exact i64 %sext, 32
  %add.ptr2.i = getelementptr inbounds i8, ptr %add.ptr70, i64 %idx.ext1.i
  store ptr %add.ptr2.i, ptr %p_end, align 8
  %idx.ext.tr.i = trunc nuw nsw i64 %idx.ext.i to i32
  %89 = shl nuw nsw i32 %idx.ext.tr.i, 3
  %conv4.i = sub nuw nsw i32 64, %89
  store i32 %conv4.i, ptr %i_left.i, align 8
  %90 = load i32, ptr %add.ptr.i1268, align 4
  %add5.i.i1271 = tail call noundef i32 @llvm.bswap.i32(i32 %90)
  %conv6.i1272 = zext i32 %add5.i.i1271 to i64
  %conv.i1274 = shl i64 %sub.ptr.rhs.cast, 3
  %91 = and i64 %conv.i1274, 24
  %mul8.i = sub nuw nsw i64 32, %91
  %shr.i = lshr i64 %conv6.i1272, %mul8.i
  store i64 %shr.i, ptr %cur_bits.i.i, align 8
  store ptr %17, ptr %bs, align 8
  %sub.ptr.lhs.cast.i1276 = ptrtoint ptr %add.ptr.i1268 to i64
  %sub.ptr.rhs.cast.i1277 = ptrtoint ptr %17 to i64
  %sub.ptr.sub.i1278 = sub i64 %sub.ptr.lhs.cast.i1276, %sub.ptr.rhs.cast.i1277
  %sub.ptr.sub.tr.i1280 = trunc i64 %sub.ptr.sub.i1278 to i32
  %92 = shl i32 %sub.ptr.sub.tr.i1280, 3
  %i_tex_bits = getelementptr inbounds i8, ptr %h, i64 26716
  %93 = load i32, ptr %i_tex_bits, align 4
  %reass.sub = sub i32 %89, %reass.sub.i1252
  %94 = add i32 %reass.sub, -64
  %sub76 = add i32 %94, %92
  %add79 = add nsw i32 %sub76, %93
  store i32 %add79, ptr %i_tex_bits, align 4
  br label %cleanup

if.end80:                                         ; preds = %if.end
  %or.cond = icmp ult i32 %0, 2
  br i1 %or.cond, label %if.then86, label %if.else125

if.then86:                                        ; preds = %if.end80
  %cmp84 = icmp eq i32 %0, 1
  %cond = select i1 %cmp84, i64 4, i64 1
  %add.i1283 = add nuw nsw i32 %conv, 1
  %idxprom.i1284 = zext nneg i32 %add.i1283 to i64
  %arrayidx.i1285 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %idxprom.i1284
  %95 = load i8, ptr %arrayidx.i1285, align 1
  %conv.i1286 = zext i8 %95 to i32
  %cur_bits.i.i1287 = getelementptr inbounds i8, ptr %h, i64 1816
  %96 = load i64, ptr %cur_bits.i.i1287, align 8
  %sh_prom.i.i1288 = zext nneg i8 %95 to i64
  %shl.i.i1289 = shl i64 %96, %sh_prom.i.i1288
  %or.i.i1291 = or i64 %shl.i.i1289, %idxprom.i1284
  store i64 %or.i.i1291, ptr %cur_bits.i.i1287, align 8
  %sub.i.i1293 = sub nsw i32 %16, %conv.i1286
  store i32 %sub.i.i1293, ptr %i_left.i, align 8
  %cmp.i.i1294 = icmp slt i32 %sub.i.i1293, 33
  br i1 %cmp.i.i1294, label %if.then.i.i1295, label %bs_write_ue.exit1303

if.then.i.i1295:                                  ; preds = %if.then86
  %sh_prom6.i.i1296 = zext nneg i32 %sub.i.i1293 to i64
  %shl7.i.i1297 = shl i64 %or.i.i1291, %sh_prom6.i.i1296
  %add.i.i.i.i1298 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i.i1297)
  %conv8.i.i1299 = trunc i64 %add.i.i.i.i1298 to i32
  store i32 %conv8.i.i1299, ptr %15, align 4
  %97 = load i32, ptr %i_left.i, align 8
  %add.i.i1301 = add nsw i32 %97, 32
  store i32 %add.i.i1301, ptr %i_left.i, align 8
  %98 = load ptr, ptr %p.i, align 8
  %add.ptr.i.i1302 = getelementptr inbounds i8, ptr %98, i64 4
  store ptr %add.ptr.i.i1302, ptr %p.i, align 8
  br label %bs_write_ue.exit1303

bs_write_ue.exit1303:                             ; preds = %if.then86, %if.then.i.i1295
  %99 = phi ptr [ %15, %if.then86 ], [ %add.ptr.i.i1302, %if.then.i.i1295 ]
  %100 = phi i32 [ %sub.i.i1293, %if.then86 ], [ %add.i.i1301, %if.then.i.i1295 ]
  %pps = getelementptr inbounds i8, ptr %h, i64 3328
  %101 = load ptr, ptr %pps, align 16
  %b_transform_8x8_mode = getelementptr inbounds i8, ptr %101, i64 60
  %102 = load i32, ptr %b_transform_8x8_mode, align 4
  %tobool90.not = icmp eq i32 %102, 0
  br i1 %tobool90.not, label %if.end93, label %if.then91

if.then91:                                        ; preds = %bs_write_ue.exit1303
  %b_transform_8x8 = getelementptr inbounds i8, ptr %h, i64 17396
  %103 = load i32, ptr %b_transform_8x8, align 4
  %104 = load i64, ptr %cur_bits.i.i1287, align 8
  %shl.i1305 = shl i64 %104, 1
  %conv.i1306 = zext i32 %103 to i64
  %or.i1307 = or i64 %shl.i1305, %conv.i1306
  store i64 %or.i1307, ptr %cur_bits.i.i1287, align 8
  %dec.i1309 = add nsw i32 %100, -1
  store i32 %dec.i1309, ptr %i_left.i, align 8
  %cmp.i1310 = icmp eq i32 %dec.i1309, 32
  br i1 %cmp.i1310, label %if.then.i1311, label %if.end93

if.then.i1311:                                    ; preds = %if.then91
  %conv6.i1312 = trunc i64 %or.i1307 to i32
  %add5.i.i1313 = tail call noundef i32 @llvm.bswap.i32(i32 %conv6.i1312)
  store i32 %add5.i.i1313, ptr %99, align 4
  %105 = load ptr, ptr %p.i, align 8
  %add.ptr.i1315 = getelementptr inbounds i8, ptr %105, i64 4
  store ptr %add.ptr.i1315, ptr %p.i, align 8
  store i32 64, ptr %i_left.i, align 8
  br label %if.end93

if.end93:                                         ; preds = %if.then.i1311, %if.then91, %bs_write_ue.exit1303
  %106 = phi ptr [ %add.ptr.i1315, %if.then.i1311 ], [ %99, %if.then91 ], [ %99, %bs_write_ue.exit1303 ]
  %107 = phi i32 [ 64, %if.then.i1311 ], [ %dec.i1309, %if.then91 ], [ %100, %bs_write_ue.exit1303 ]
  %cache.i = getelementptr inbounds i8, ptr %h, i64 25024
  br label %for.body99

for.cond.cleanup98:                               ; preds = %if.end117
  %i_chroma_pred_mode = getelementptr inbounds i8, ptr %h, i64 17412
  %108 = load i32, ptr %i_chroma_pred_mode, align 4
  %idxprom122 = sext i32 %108 to i64
  %arrayidx123 = getelementptr inbounds [7 x i8], ptr @x264_mb_pred_mode8x8c_fix, i64 0, i64 %idxprom122
  %109 = load i8, ptr %arrayidx123, align 1
  %conv124 = zext i8 %109 to i64
  %add.i1317 = add nuw nsw i64 %conv124, 1
  %arrayidx.i1319 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %add.i1317
  %110 = load i8, ptr %arrayidx.i1319, align 1
  %conv.i1320 = zext i8 %110 to i32
  %111 = load i64, ptr %cur_bits.i.i1287, align 8
  %sh_prom.i.i1322 = zext nneg i8 %110 to i64
  %shl.i.i1323 = shl i64 %111, %sh_prom.i.i1322
  %or.i.i1325 = or i64 %shl.i.i1323, %add.i1317
  store i64 %or.i.i1325, ptr %cur_bits.i.i1287, align 8
  %sub.i.i1327 = sub nsw i32 %129, %conv.i1320
  store i32 %sub.i.i1327, ptr %i_left.i, align 8
  %cmp.i.i1328 = icmp slt i32 %sub.i.i1327, 33
  br i1 %cmp.i.i1328, label %if.then.i.i1329, label %if.end697

if.then.i.i1329:                                  ; preds = %for.cond.cleanup98
  %sh_prom6.i.i1330 = zext nneg i32 %sub.i.i1327 to i64
  %shl7.i.i1331 = shl i64 %or.i.i1325, %sh_prom6.i.i1330
  %add.i.i.i.i1332 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i.i1331)
  %conv8.i.i1333 = trunc i64 %add.i.i.i.i1332 to i32
  store i32 %conv8.i.i1333, ptr %128, align 4
  %112 = load i32, ptr %i_left.i, align 8
  %add.i.i1335 = add nsw i32 %112, 32
  store i32 %add.i.i1335, ptr %i_left.i, align 8
  %113 = load ptr, ptr %p.i, align 8
  %add.ptr.i.i1336 = getelementptr inbounds i8, ptr %113, i64 4
  store ptr %add.ptr.i.i1336, ptr %p.i, align 8
  br label %if.end697

for.body99:                                       ; preds = %if.end93, %if.end117
  %114 = phi ptr [ %106, %if.end93 ], [ %128, %if.end117 ]
  %115 = phi i32 [ %107, %if.end93 ], [ %129, %if.end117 ]
  %indvars.iv = phi i64 [ 0, %if.end93 ], [ %indvars.iv.next, %if.end117 ]
  %arrayidx.i1339 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %indvars.iv
  %116 = load i32, ptr %arrayidx.i1339, align 4
  %sub.i = add nsw i32 %116, -1
  %idxprom1.i = sext i32 %sub.i to i64
  %arrayidx2.i = getelementptr inbounds [40 x i8], ptr %cache.i, i64 0, i64 %idxprom1.i
  %117 = load i8, ptr %arrayidx2.i, align 1
  %conv.i1340 = sext i8 %117 to i64
  %sub9.i = add nsw i32 %116, -8
  %idxprom10.i = sext i32 %sub9.i to i64
  %arrayidx11.i = getelementptr inbounds [40 x i8], ptr %cache.i, i64 0, i64 %idxprom10.i
  %118 = load i8, ptr %arrayidx11.i, align 1
  %conv12.i = sext i8 %118 to i64
  %add.i1341 = add nsw i64 %conv.i1340, 1
  %arrayidx14.i = getelementptr inbounds [13 x i8], ptr @x264_mb_pred_mode4x4_fix, i64 0, i64 %add.i1341
  %119 = load i8, ptr %arrayidx14.i, align 1
  %add16.i = add nsw i64 %conv12.i, 1
  %arrayidx18.i = getelementptr inbounds [13 x i8], ptr @x264_mb_pred_mode4x4_fix, i64 0, i64 %add16.i
  %120 = load i8, ptr %arrayidx18.i, align 1
  %..i = tail call i8 @llvm.smin.i8(i8 %119, i8 %120)
  %cmp29.i = icmp slt i8 %..i, 0
  %narrow.i = select i1 %cmp29.i, i8 2, i8 %..i
  %idxprom104 = sext i32 %116 to i64
  %arrayidx105 = getelementptr inbounds [40 x i8], ptr %cache.i, i64 0, i64 %idxprom104
  %121 = load i8, ptr %arrayidx105, align 1
  %conv106 = sext i8 %121 to i64
  %add107 = add nsw i64 %conv106, 1
  %arrayidx109 = getelementptr inbounds [13 x i8], ptr @x264_mb_pred_mode4x4_fix, i64 0, i64 %add107
  %122 = load i8, ptr %arrayidx109, align 1
  %cmp111 = icmp eq i8 %narrow.i, %122
  br i1 %cmp111, label %if.then113, label %if.else

if.then113:                                       ; preds = %for.body99
  %123 = load i64, ptr %cur_bits.i.i1287, align 8
  %shl.i1343 = shl i64 %123, 1
  %or.i1344 = or disjoint i64 %shl.i1343, 1
  store i64 %or.i1344, ptr %cur_bits.i.i1287, align 8
  %dec.i1346 = add nsw i32 %115, -1
  store i32 %dec.i1346, ptr %i_left.i, align 8
  %cmp.i1347 = icmp eq i32 %dec.i1346, 32
  br i1 %cmp.i1347, label %if.then.i1348, label %if.end117

if.then.i1348:                                    ; preds = %if.then113
  %conv6.i1349 = trunc i64 %or.i1344 to i32
  %add5.i.i1350 = tail call noundef i32 @llvm.bswap.i32(i32 %conv6.i1349)
  store i32 %add5.i.i1350, ptr %114, align 4
  %124 = load ptr, ptr %p.i, align 8
  %add.ptr.i1352 = getelementptr inbounds i8, ptr %124, i64 4
  store ptr %add.ptr.i1352, ptr %p.i, align 8
  store i32 64, ptr %i_left.i, align 8
  br label %if.end117

if.else:                                          ; preds = %for.body99
  %conv110 = sext i8 %122 to i64
  %cmp114 = icmp slt i8 %narrow.i, %122
  %conv115.neg = sext i1 %cmp114 to i64
  %sub116 = add nsw i64 %conv115.neg, %conv110
  %125 = load i64, ptr %cur_bits.i.i1287, align 8
  %shl.i1355 = shl i64 %125, 4
  %conv.i1356 = and i64 %sub116, 4294967295
  %or.i1357 = or i64 %shl.i1355, %conv.i1356
  store i64 %or.i1357, ptr %cur_bits.i.i1287, align 8
  %sub.i1359 = add nsw i32 %115, -4
  store i32 %sub.i1359, ptr %i_left.i, align 8
  %cmp.i1360 = icmp slt i32 %115, 37
  br i1 %cmp.i1360, label %if.then.i1361, label %if.end117

if.then.i1361:                                    ; preds = %if.else
  %sh_prom6.i = zext nneg i32 %sub.i1359 to i64
  %shl7.i = shl i64 %or.i1357, %sh_prom6.i
  %add.i.i.i = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i)
  %conv8.i = trunc i64 %add.i.i.i to i32
  store i32 %conv8.i, ptr %114, align 4
  %126 = load i32, ptr %i_left.i, align 8
  %add.i1363 = add nsw i32 %126, 32
  store i32 %add.i1363, ptr %i_left.i, align 8
  %127 = load ptr, ptr %p.i, align 8
  %add.ptr.i1364 = getelementptr inbounds i8, ptr %127, i64 4
  store ptr %add.ptr.i1364, ptr %p.i, align 8
  br label %if.end117

if.end117:                                        ; preds = %if.then.i1361, %if.else, %if.then.i1348, %if.then113
  %128 = phi ptr [ %add.ptr.i1364, %if.then.i1361 ], [ %114, %if.else ], [ %add.ptr.i1352, %if.then.i1348 ], [ %114, %if.then113 ]
  %129 = phi i32 [ %add.i1363, %if.then.i1361 ], [ %sub.i1359, %if.else ], [ 64, %if.then.i1348 ], [ %dec.i1346, %if.then113 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, %cond
  %cmp96 = icmp ult i64 %indvars.iv.next, 16
  br i1 %cmp96, label %for.body99, label %for.cond.cleanup98

if.else125:                                       ; preds = %if.end80
  switch i32 %0, label %if.then515 [
    i32 2, label %if.then128
    i32 4, label %if.then151
    i32 5, label %if.then256
    i32 17, label %if.then375
    i32 7, label %if.else691
  ]

if.then128:                                       ; preds = %if.else125
  %i_intra16x16_pred_mode = getelementptr inbounds i8, ptr %h, i64 17408
  %130 = load i32, ptr %i_intra16x16_pred_mode, align 16
  %idxprom131 = sext i32 %130 to i64
  %arrayidx132 = getelementptr inbounds [7 x i8], ptr @x264_mb_pred_mode16x16_fix, i64 0, i64 %idxprom131
  %131 = load i8, ptr %arrayidx132, align 1
  %conv133 = zext i8 %131 to i32
  %i_cbp_chroma = getelementptr inbounds i8, ptr %h, i64 17404
  %132 = load i32, ptr %i_cbp_chroma, align 4
  %mul136 = shl nsw i32 %132, 2
  %i_cbp_luma = getelementptr inbounds i8, ptr %h, i64 17400
  %133 = load i32, ptr %i_cbp_luma, align 8
  %cmp139 = icmp eq i32 %133, 0
  %cond141 = select i1 %cmp139, i32 0, i32 12
  %add134 = add nuw nsw i32 %conv, 2
  %add137 = add nuw nsw i32 %add134, %conv133
  %add142 = add i32 %add137, %mul136
  %add.i1365 = add i32 %add142, %cond141
  %idxprom.i1366 = sext i32 %add.i1365 to i64
  %arrayidx.i1367 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %idxprom.i1366
  %134 = load i8, ptr %arrayidx.i1367, align 1
  %conv.i1368 = zext i8 %134 to i32
  %cur_bits.i.i1369 = getelementptr inbounds i8, ptr %h, i64 1816
  %135 = load i64, ptr %cur_bits.i.i1369, align 8
  %sh_prom.i.i1370 = zext nneg i8 %134 to i64
  %shl.i.i1371 = shl i64 %135, %sh_prom.i.i1370
  %conv.i.i1372 = zext i32 %add.i1365 to i64
  %or.i.i1373 = or i64 %shl.i.i1371, %conv.i.i1372
  store i64 %or.i.i1373, ptr %cur_bits.i.i1369, align 8
  %sub.i.i1375 = sub nsw i32 %16, %conv.i1368
  store i32 %sub.i.i1375, ptr %i_left.i, align 8
  %cmp.i.i1376 = icmp slt i32 %sub.i.i1375, 33
  br i1 %cmp.i.i1376, label %if.then.i.i1377, label %bs_write_ue.exit1385

if.then.i.i1377:                                  ; preds = %if.then128
  %sh_prom6.i.i1378 = zext nneg i32 %sub.i.i1375 to i64
  %shl7.i.i1379 = shl i64 %or.i.i1373, %sh_prom6.i.i1378
  %add.i.i.i.i1380 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i.i1379)
  %conv8.i.i1381 = trunc i64 %add.i.i.i.i1380 to i32
  store i32 %conv8.i.i1381, ptr %15, align 4
  %136 = load i32, ptr %i_left.i, align 8
  %add.i.i1383 = add nsw i32 %136, 32
  %137 = load ptr, ptr %p.i, align 8
  %add.ptr.i.i1384 = getelementptr inbounds i8, ptr %137, i64 4
  store ptr %add.ptr.i.i1384, ptr %p.i, align 8
  %.pre2125 = load i64, ptr %cur_bits.i.i1369, align 8
  br label %bs_write_ue.exit1385

bs_write_ue.exit1385:                             ; preds = %if.then128, %if.then.i.i1377
  %138 = phi ptr [ %15, %if.then128 ], [ %add.ptr.i.i1384, %if.then.i.i1377 ]
  %139 = phi i32 [ %sub.i.i1375, %if.then128 ], [ %add.i.i1383, %if.then.i.i1377 ]
  %140 = phi i64 [ %or.i.i1373, %if.then128 ], [ %.pre2125, %if.then.i.i1377 ]
  %i_chroma_pred_mode144 = getelementptr inbounds i8, ptr %h, i64 17412
  %141 = load i32, ptr %i_chroma_pred_mode144, align 4
  %idxprom145 = sext i32 %141 to i64
  %arrayidx146 = getelementptr inbounds [7 x i8], ptr @x264_mb_pred_mode8x8c_fix, i64 0, i64 %idxprom145
  %142 = load i8, ptr %arrayidx146, align 1
  %conv147 = zext i8 %142 to i64
  %add.i1386 = add nuw nsw i64 %conv147, 1
  %arrayidx.i1388 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %add.i1386
  %143 = load i8, ptr %arrayidx.i1388, align 1
  %conv.i1389 = zext i8 %143 to i32
  %sh_prom.i.i1391 = zext nneg i8 %143 to i64
  %shl.i.i1392 = shl i64 %140, %sh_prom.i.i1391
  %or.i.i1394 = or i64 %shl.i.i1392, %add.i1386
  store i64 %or.i.i1394, ptr %cur_bits.i.i1369, align 8
  %sub.i.i1396 = sub nsw i32 %139, %conv.i1389
  store i32 %sub.i.i1396, ptr %i_left.i, align 8
  %cmp.i.i1397 = icmp slt i32 %sub.i.i1396, 33
  br i1 %cmp.i.i1397, label %if.then.i.i1398, label %if.end697

if.then.i.i1398:                                  ; preds = %bs_write_ue.exit1385
  %sh_prom6.i.i1399 = zext nneg i32 %sub.i.i1396 to i64
  %shl7.i.i1400 = shl i64 %or.i.i1394, %sh_prom6.i.i1399
  %add.i.i.i.i1401 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i.i1400)
  %conv8.i.i1402 = trunc i64 %add.i.i.i.i1401 to i32
  store i32 %conv8.i.i1402, ptr %138, align 4
  %144 = load i32, ptr %i_left.i, align 8
  %add.i.i1404 = add nsw i32 %144, 32
  store i32 %add.i.i1404, ptr %i_left.i, align 8
  %145 = load ptr, ptr %p.i, align 8
  %add.ptr.i.i1405 = getelementptr inbounds i8, ptr %145, i64 4
  store ptr %add.ptr.i.i1405, ptr %p.i, align 8
  br label %if.end697

if.then151:                                       ; preds = %if.else125
  %i_partition = getelementptr inbounds i8, ptr %h, i64 17388
  %146 = load i32, ptr %i_partition, align 4
  switch i32 %146, label %if.end697 [
    i32 16, label %if.then155
    i32 14, label %if.then179
    i32 15, label %if.then217
  ]

if.then155:                                       ; preds = %if.then151
  %cur_bits.i1407 = getelementptr inbounds i8, ptr %h, i64 1816
  %147 = load i64, ptr %cur_bits.i1407, align 8
  %shl.i1408 = shl i64 %147, 1
  %or.i1409 = or disjoint i64 %shl.i1408, 1
  store i64 %or.i1409, ptr %cur_bits.i1407, align 8
  %dec.i1411 = add nsw i32 %16, -1
  store i32 %dec.i1411, ptr %i_left.i, align 8
  %cmp.i1412 = icmp eq i32 %dec.i1411, 32
  br i1 %cmp.i1412, label %if.then.i1413, label %bs_write1.exit1418

if.then.i1413:                                    ; preds = %if.then155
  %conv6.i1414 = trunc i64 %or.i1409 to i32
  %add5.i.i1415 = tail call noundef i32 @llvm.bswap.i32(i32 %conv6.i1414)
  store i32 %add5.i.i1415, ptr %15, align 4
  %148 = load ptr, ptr %p.i, align 8
  %add.ptr.i1417 = getelementptr inbounds i8, ptr %148, i64 4
  store ptr %add.ptr.i1417, ptr %p.i, align 8
  store i32 64, ptr %i_left.i, align 8
  br label %bs_write1.exit1418

bs_write1.exit1418:                               ; preds = %if.then155, %if.then.i1413
  %i_fref = getelementptr inbounds i8, ptr %h, i64 21416
  %149 = load i32, ptr %i_fref, align 8
  %cmp159 = icmp sgt i32 %149, 1
  br i1 %cmp159, label %if.then161, label %if.end173

if.then161:                                       ; preds = %bs_write1.exit1418
  %sub166 = add nsw i32 %149, -1
  %arrayidx171 = getelementptr inbounds i8, ptr %h, i64 25132
  %150 = load i8, ptr %arrayidx171, align 1
  %conv172 = sext i8 %150 to i32
  tail call fastcc void @bs_write_te(ptr noundef nonnull %bs, i32 noundef %sub166, i32 noundef %conv172)
  br label %if.end173

if.end173:                                        ; preds = %if.then161, %bs_write1.exit1418
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 0, i32 noundef 4)
  br label %if.end697

if.then179:                                       ; preds = %if.then151
  tail call fastcc void @bs_write_ue(ptr noundef nonnull %bs, i32 noundef 1)
  %i_fref182 = getelementptr inbounds i8, ptr %h, i64 21416
  %151 = load i32, ptr %i_fref182, align 8
  %cmp184 = icmp sgt i32 %151, 1
  br i1 %cmp184, label %if.then186, label %if.end211

if.then186:                                       ; preds = %if.then179
  %sub191 = add nsw i32 %151, -1
  %arrayidx197 = getelementptr inbounds i8, ptr %h, i64 25132
  %152 = load i8, ptr %arrayidx197, align 1
  %conv198 = sext i8 %152 to i32
  tail call fastcc void @bs_write_te(ptr noundef nonnull %bs, i32 noundef %sub191, i32 noundef %conv198)
  %153 = load i32, ptr %i_fref182, align 8
  %sub203 = add nsw i32 %153, -1
  %arrayidx209 = getelementptr inbounds i8, ptr %h, i64 25148
  %154 = load i8, ptr %arrayidx209, align 1
  %conv210 = sext i8 %154 to i32
  tail call fastcc void @bs_write_te(ptr noundef nonnull %bs, i32 noundef %sub203, i32 noundef %conv210)
  br label %if.end211

if.end211:                                        ; preds = %if.then186, %if.then179
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 0, i32 noundef 4)
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 8, i32 noundef 4)
  br label %if.end697

if.then217:                                       ; preds = %if.then151
  tail call fastcc void @bs_write_ue(ptr noundef nonnull %bs, i32 noundef 2)
  %i_fref220 = getelementptr inbounds i8, ptr %h, i64 21416
  %155 = load i32, ptr %i_fref220, align 8
  %cmp222 = icmp sgt i32 %155, 1
  br i1 %cmp222, label %if.then224, label %if.end249

if.then224:                                       ; preds = %if.then217
  %sub229 = add nsw i32 %155, -1
  %arrayidx235 = getelementptr inbounds i8, ptr %h, i64 25132
  %156 = load i8, ptr %arrayidx235, align 1
  %conv236 = sext i8 %156 to i32
  tail call fastcc void @bs_write_te(ptr noundef nonnull %bs, i32 noundef %sub229, i32 noundef %conv236)
  %157 = load i32, ptr %i_fref220, align 8
  %sub241 = add nsw i32 %157, -1
  %arrayidx247 = getelementptr inbounds i8, ptr %h, i64 25134
  %158 = load i8, ptr %arrayidx247, align 1
  %conv248 = sext i8 %158 to i32
  tail call fastcc void @bs_write_te(ptr noundef nonnull %bs, i32 noundef %sub241, i32 noundef %conv248)
  br label %if.end249

if.end249:                                        ; preds = %if.then224, %if.then217
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 0, i32 noundef 2)
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 4, i32 noundef 2)
  br label %if.end697

if.then256:                                       ; preds = %if.else125
  %arrayidx262 = getelementptr inbounds i8, ptr %h, i64 25132
  %159 = load i8, ptr %arrayidx262, align 1
  %arrayidx269 = getelementptr inbounds i8, ptr %h, i64 25134
  %160 = load i8, ptr %arrayidx269, align 1
  %or1240 = or i8 %160, %159
  %arrayidx276 = getelementptr inbounds i8, ptr %h, i64 25148
  %161 = load i8, ptr %arrayidx276, align 1
  %or2781241 = or i8 %or1240, %161
  %arrayidx284 = getelementptr inbounds i8, ptr %h, i64 25150
  %162 = load i8, ptr %arrayidx284, align 1
  %or2861242 = or i8 %or2781241, %162
  %cmp287 = icmp eq i8 %or2861242, 0
  br i1 %cmp287, label %if.then289, label %if.else290

if.then289:                                       ; preds = %if.then256
  tail call fastcc void @bs_write_ue(ptr noundef nonnull %bs, i32 noundef 4)
  br label %if.end291

if.else290:                                       ; preds = %if.then256
  %cur_bits.i.i1419 = getelementptr inbounds i8, ptr %h, i64 1816
  %163 = load i64, ptr %cur_bits.i.i1419, align 8
  %shl.i.i1420 = shl i64 %163, 5
  %or.i.i1421 = or disjoint i64 %shl.i.i1420, 4
  store i64 %or.i.i1421, ptr %cur_bits.i.i1419, align 8
  %sub.i.i1423 = add nsw i32 %16, -5
  store i32 %sub.i.i1423, ptr %i_left.i, align 8
  %cmp.i.i1424 = icmp slt i32 %16, 38
  br i1 %cmp.i.i1424, label %if.then.i.i1425, label %if.end291

if.then.i.i1425:                                  ; preds = %if.else290
  %sh_prom6.i.i1426 = zext nneg i32 %sub.i.i1423 to i64
  %shl7.i.i1427 = shl i64 %or.i.i1421, %sh_prom6.i.i1426
  %add.i.i.i.i1428 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i.i1427)
  %conv8.i.i1429 = trunc i64 %add.i.i.i.i1428 to i32
  store i32 %conv8.i.i1429, ptr %15, align 4
  %164 = load i32, ptr %i_left.i, align 8
  %add.i.i1431 = add nsw i32 %164, 32
  store i32 %add.i.i1431, ptr %i_left.i, align 8
  %165 = load ptr, ptr %p.i, align 8
  %add.ptr.i.i1432 = getelementptr inbounds i8, ptr %165, i64 4
  store ptr %add.ptr.i.i1432, ptr %p.i, align 8
  br label %if.end291

if.end291:                                        ; preds = %if.then.i.i1425, %if.else290, %if.then289
  %inter = getelementptr inbounds i8, ptr %h, i64 388
  %166 = load i32, ptr %inter, align 4
  %and292 = and i32 %166, 32
  %tobool293.not = icmp eq i32 %and292, 0
  br i1 %tobool293.not, label %if.else310, label %for.cond296.preheader

for.cond296.preheader:                            ; preds = %if.end291
  %i_sub_partition = getelementptr inbounds i8, ptr %h, i64 17392
  %cur_bits.i.i1438 = getelementptr inbounds i8, ptr %h, i64 1816
  %167 = load i8, ptr %i_sub_partition, align 1
  %idxprom304 = zext i8 %167 to i64
  %arrayidx305 = getelementptr inbounds [4 x i8], ptr @sub_mb_type_p_to_golomb, i64 0, i64 %idxprom304
  %168 = load i8, ptr %arrayidx305, align 1
  %conv306 = zext i8 %168 to i64
  %add.i1434 = add nuw nsw i64 %conv306, 1
  %arrayidx.i1436 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %add.i1434
  %169 = load i8, ptr %arrayidx.i1436, align 1
  %conv.i1437 = zext i8 %169 to i32
  %170 = load i64, ptr %cur_bits.i.i1438, align 8
  %sh_prom.i.i1439 = zext nneg i8 %169 to i64
  %shl.i.i1440 = shl i64 %170, %sh_prom.i.i1439
  %or.i.i1442 = or i64 %shl.i.i1440, %add.i1434
  store i64 %or.i.i1442, ptr %cur_bits.i.i1438, align 8
  %171 = load i32, ptr %i_left.i, align 8
  %sub.i.i1444 = sub nsw i32 %171, %conv.i1437
  store i32 %sub.i.i1444, ptr %i_left.i, align 8
  %cmp.i.i1445 = icmp slt i32 %sub.i.i1444, 33
  br i1 %cmp.i.i1445, label %if.then.i.i1446, label %bs_write_ue.exit1454

if.then.i.i1446:                                  ; preds = %for.cond296.preheader
  %sh_prom6.i.i1447 = zext nneg i32 %sub.i.i1444 to i64
  %shl7.i.i1448 = shl i64 %or.i.i1442, %sh_prom6.i.i1447
  %add.i.i.i.i1449 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i.i1448)
  %conv8.i.i1450 = trunc i64 %add.i.i.i.i1449 to i32
  %172 = load ptr, ptr %p.i, align 8
  store i32 %conv8.i.i1450, ptr %172, align 4
  %173 = load i32, ptr %i_left.i, align 8
  %add.i.i1452 = add nsw i32 %173, 32
  %174 = load ptr, ptr %p.i, align 8
  %add.ptr.i.i1453 = getelementptr inbounds i8, ptr %174, i64 4
  store ptr %add.ptr.i.i1453, ptr %p.i, align 8
  %.pre2122 = load i64, ptr %cur_bits.i.i1438, align 8
  br label %bs_write_ue.exit1454

bs_write_ue.exit1454:                             ; preds = %for.cond296.preheader, %if.then.i.i1446
  %175 = phi i32 [ %sub.i.i1444, %for.cond296.preheader ], [ %add.i.i1452, %if.then.i.i1446 ]
  %176 = phi i64 [ %or.i.i1442, %for.cond296.preheader ], [ %.pre2122, %if.then.i.i1446 ]
  %arrayidx303.1 = getelementptr inbounds i8, ptr %h, i64 17393
  %177 = load i8, ptr %arrayidx303.1, align 1
  %idxprom304.1 = zext i8 %177 to i64
  %arrayidx305.1 = getelementptr inbounds [4 x i8], ptr @sub_mb_type_p_to_golomb, i64 0, i64 %idxprom304.1
  %178 = load i8, ptr %arrayidx305.1, align 1
  %conv306.1 = zext i8 %178 to i64
  %add.i1434.1 = add nuw nsw i64 %conv306.1, 1
  %arrayidx.i1436.1 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %add.i1434.1
  %179 = load i8, ptr %arrayidx.i1436.1, align 1
  %conv.i1437.1 = zext i8 %179 to i32
  %sh_prom.i.i1439.1 = zext nneg i8 %179 to i64
  %shl.i.i1440.1 = shl i64 %176, %sh_prom.i.i1439.1
  %or.i.i1442.1 = or i64 %shl.i.i1440.1, %add.i1434.1
  store i64 %or.i.i1442.1, ptr %cur_bits.i.i1438, align 8
  %sub.i.i1444.1 = sub nsw i32 %175, %conv.i1437.1
  store i32 %sub.i.i1444.1, ptr %i_left.i, align 8
  %cmp.i.i1445.1 = icmp slt i32 %sub.i.i1444.1, 33
  br i1 %cmp.i.i1445.1, label %if.then.i.i1446.1, label %bs_write_ue.exit1454.1

if.then.i.i1446.1:                                ; preds = %bs_write_ue.exit1454
  %sh_prom6.i.i1447.1 = zext nneg i32 %sub.i.i1444.1 to i64
  %shl7.i.i1448.1 = shl i64 %or.i.i1442.1, %sh_prom6.i.i1447.1
  %add.i.i.i.i1449.1 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i.i1448.1)
  %conv8.i.i1450.1 = trunc i64 %add.i.i.i.i1449.1 to i32
  %180 = load ptr, ptr %p.i, align 8
  store i32 %conv8.i.i1450.1, ptr %180, align 4
  %181 = load i32, ptr %i_left.i, align 8
  %add.i.i1452.1 = add nsw i32 %181, 32
  %182 = load ptr, ptr %p.i, align 8
  %add.ptr.i.i1453.1 = getelementptr inbounds i8, ptr %182, i64 4
  store ptr %add.ptr.i.i1453.1, ptr %p.i, align 8
  %.pre2123 = load i64, ptr %cur_bits.i.i1438, align 8
  br label %bs_write_ue.exit1454.1

bs_write_ue.exit1454.1:                           ; preds = %if.then.i.i1446.1, %bs_write_ue.exit1454
  %183 = phi i32 [ %add.i.i1452.1, %if.then.i.i1446.1 ], [ %sub.i.i1444.1, %bs_write_ue.exit1454 ]
  %184 = phi i64 [ %.pre2123, %if.then.i.i1446.1 ], [ %or.i.i1442.1, %bs_write_ue.exit1454 ]
  %arrayidx303.2 = getelementptr inbounds i8, ptr %h, i64 17394
  %185 = load i8, ptr %arrayidx303.2, align 1
  %idxprom304.2 = zext i8 %185 to i64
  %arrayidx305.2 = getelementptr inbounds [4 x i8], ptr @sub_mb_type_p_to_golomb, i64 0, i64 %idxprom304.2
  %186 = load i8, ptr %arrayidx305.2, align 1
  %conv306.2 = zext i8 %186 to i64
  %add.i1434.2 = add nuw nsw i64 %conv306.2, 1
  %arrayidx.i1436.2 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %add.i1434.2
  %187 = load i8, ptr %arrayidx.i1436.2, align 1
  %conv.i1437.2 = zext i8 %187 to i32
  %sh_prom.i.i1439.2 = zext nneg i8 %187 to i64
  %shl.i.i1440.2 = shl i64 %184, %sh_prom.i.i1439.2
  %or.i.i1442.2 = or i64 %shl.i.i1440.2, %add.i1434.2
  store i64 %or.i.i1442.2, ptr %cur_bits.i.i1438, align 8
  %sub.i.i1444.2 = sub nsw i32 %183, %conv.i1437.2
  store i32 %sub.i.i1444.2, ptr %i_left.i, align 8
  %cmp.i.i1445.2 = icmp slt i32 %sub.i.i1444.2, 33
  br i1 %cmp.i.i1445.2, label %if.then.i.i1446.2, label %bs_write_ue.exit1454.2

if.then.i.i1446.2:                                ; preds = %bs_write_ue.exit1454.1
  %sh_prom6.i.i1447.2 = zext nneg i32 %sub.i.i1444.2 to i64
  %shl7.i.i1448.2 = shl i64 %or.i.i1442.2, %sh_prom6.i.i1447.2
  %add.i.i.i.i1449.2 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i.i1448.2)
  %conv8.i.i1450.2 = trunc i64 %add.i.i.i.i1449.2 to i32
  %188 = load ptr, ptr %p.i, align 8
  store i32 %conv8.i.i1450.2, ptr %188, align 4
  %189 = load i32, ptr %i_left.i, align 8
  %add.i.i1452.2 = add nsw i32 %189, 32
  %190 = load ptr, ptr %p.i, align 8
  %add.ptr.i.i1453.2 = getelementptr inbounds i8, ptr %190, i64 4
  store ptr %add.ptr.i.i1453.2, ptr %p.i, align 8
  %.pre2124 = load i64, ptr %cur_bits.i.i1438, align 8
  br label %bs_write_ue.exit1454.2

bs_write_ue.exit1454.2:                           ; preds = %if.then.i.i1446.2, %bs_write_ue.exit1454.1
  %191 = phi i32 [ %add.i.i1452.2, %if.then.i.i1446.2 ], [ %sub.i.i1444.2, %bs_write_ue.exit1454.1 ]
  %192 = phi i64 [ %.pre2124, %if.then.i.i1446.2 ], [ %or.i.i1442.2, %bs_write_ue.exit1454.1 ]
  %arrayidx303.3 = getelementptr inbounds i8, ptr %h, i64 17395
  %193 = load i8, ptr %arrayidx303.3, align 1
  %idxprom304.3 = zext i8 %193 to i64
  %arrayidx305.3 = getelementptr inbounds [4 x i8], ptr @sub_mb_type_p_to_golomb, i64 0, i64 %idxprom304.3
  %194 = load i8, ptr %arrayidx305.3, align 1
  %conv306.3 = zext i8 %194 to i64
  %add.i1434.3 = add nuw nsw i64 %conv306.3, 1
  %arrayidx.i1436.3 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %add.i1434.3
  %195 = load i8, ptr %arrayidx.i1436.3, align 1
  %conv.i1437.3 = zext i8 %195 to i32
  %sh_prom.i.i1439.3 = zext nneg i8 %195 to i64
  %shl.i.i1440.3 = shl i64 %192, %sh_prom.i.i1439.3
  %or.i.i1442.3 = or i64 %shl.i.i1440.3, %add.i1434.3
  store i64 %or.i.i1442.3, ptr %cur_bits.i.i1438, align 8
  %sub.i.i1444.3 = sub nsw i32 %191, %conv.i1437.3
  store i32 %sub.i.i1444.3, ptr %i_left.i, align 8
  %cmp.i.i1445.3 = icmp slt i32 %sub.i.i1444.3, 33
  br i1 %cmp.i.i1445.3, label %if.end311.sink.split, label %if.end311

if.else310:                                       ; preds = %if.end291
  %cur_bits.i1455 = getelementptr inbounds i8, ptr %h, i64 1816
  %196 = load i64, ptr %cur_bits.i1455, align 8
  %shl.i1456 = shl i64 %196, 4
  %or.i1457 = or disjoint i64 %shl.i1456, 15
  store i64 %or.i1457, ptr %cur_bits.i1455, align 8
  %197 = load i32, ptr %i_left.i, align 8
  %sub.i1459 = add nsw i32 %197, -4
  store i32 %sub.i1459, ptr %i_left.i, align 8
  %cmp.i1460 = icmp slt i32 %197, 37
  br i1 %cmp.i1460, label %if.end311.sink.split, label %if.end311

if.end311.sink.split:                             ; preds = %if.else310, %bs_write_ue.exit1454.2
  %sub.i.i1444.3.sink = phi i32 [ %sub.i.i1444.3, %bs_write_ue.exit1454.2 ], [ %sub.i1459, %if.else310 ]
  %or.i.i1442.3.sink = phi i64 [ %or.i.i1442.3, %bs_write_ue.exit1454.2 ], [ %or.i1457, %if.else310 ]
  %sh_prom6.i.i1447.3 = zext nneg i32 %sub.i.i1444.3.sink to i64
  %shl7.i.i1448.3 = shl i64 %or.i.i1442.3.sink, %sh_prom6.i.i1447.3
  %add.i.i.i.i1449.3 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i.i1448.3)
  %conv8.i.i1450.3 = trunc i64 %add.i.i.i.i1449.3 to i32
  %198 = load ptr, ptr %p.i, align 8
  store i32 %conv8.i.i1450.3, ptr %198, align 4
  %199 = load i32, ptr %i_left.i, align 8
  %add.i.i1452.3 = add nsw i32 %199, 32
  store i32 %add.i.i1452.3, ptr %i_left.i, align 8
  %200 = load ptr, ptr %p.i, align 8
  %add.ptr.i.i1453.3 = getelementptr inbounds i8, ptr %200, i64 4
  store ptr %add.ptr.i.i1453.3, ptr %p.i, align 8
  br label %if.end311

if.end311:                                        ; preds = %if.end311.sink.split, %bs_write_ue.exit1454.2, %if.else310
  %201 = phi i32 [ %sub.i1459, %if.else310 ], [ %sub.i.i1444.3, %bs_write_ue.exit1454.2 ], [ %add.i.i1452.3, %if.end311.sink.split ]
  br i1 %cmp287, label %if.end362, label %if.then313

if.then313:                                       ; preds = %if.end311
  %i_fref316 = getelementptr inbounds i8, ptr %h, i64 21416
  %202 = load i32, ptr %i_fref316, align 8
  %203 = load i8, ptr %arrayidx262, align 1
  %conv325 = sext i8 %203 to i32
  %cmp.i1470 = icmp eq i32 %202, 2
  br i1 %cmp.i1470, label %if.then.i1473, label %if.else.i

if.then.i1473:                                    ; preds = %if.then313
  %xor.i = xor i32 %conv325, 1
  %cur_bits.i.i1474 = getelementptr inbounds i8, ptr %h, i64 1816
  %204 = load i64, ptr %cur_bits.i.i1474, align 8
  %shl.i.i1475 = shl i64 %204, 1
  %conv.i.i1476 = zext i32 %xor.i to i64
  %or.i.i1477 = or i64 %shl.i.i1475, %conv.i.i1476
  store i64 %or.i.i1477, ptr %cur_bits.i.i1474, align 8
  %dec.i.i = add nsw i32 %201, -1
  %cmp.i.i1479 = icmp eq i32 %dec.i.i, 32
  br i1 %cmp.i.i1479, label %if.then.i.i1480, label %bs_write_te.exit

if.then.i.i1480:                                  ; preds = %if.then.i1473
  %conv6.i.i = trunc i64 %or.i.i1477 to i32
  %add5.i.i.i1481 = tail call noundef i32 @llvm.bswap.i32(i32 %conv6.i.i)
  %205 = load ptr, ptr %p.i, align 8
  store i32 %add5.i.i.i1481, ptr %205, align 4
  br label %bs_write_te.exit.sink.split

if.else.i:                                        ; preds = %if.then313
  %add.i.i1471 = add nsw i32 %conv325, 1
  %idxprom.i.i = sext i32 %add.i.i1471 to i64
  %arrayidx.i.i = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %idxprom.i.i
  %206 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i3.i = zext i8 %206 to i32
  %cur_bits.i.i.i = getelementptr inbounds i8, ptr %h, i64 1816
  %207 = load i64, ptr %cur_bits.i.i.i, align 8
  %sh_prom.i.i.i = zext nneg i8 %206 to i64
  %shl.i.i.i = shl i64 %207, %sh_prom.i.i.i
  %conv.i.i.i = zext i32 %add.i.i1471 to i64
  %or.i.i.i = or i64 %shl.i.i.i, %conv.i.i.i
  store i64 %or.i.i.i, ptr %cur_bits.i.i.i, align 8
  %sub.i.i.i = sub nsw i32 %201, %conv.i3.i
  store i32 %sub.i.i.i, ptr %i_left.i, align 8
  %cmp.i.i.i = icmp slt i32 %sub.i.i.i, 33
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %bs_write_te.exit

if.then.i.i.i:                                    ; preds = %if.else.i
  %sh_prom6.i.i.i = zext nneg i32 %sub.i.i.i to i64
  %shl7.i.i.i = shl i64 %or.i.i.i, %sh_prom6.i.i.i
  %add.i.i.i.i.i = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i.i.i)
  %conv8.i.i.i = trunc i64 %add.i.i.i.i.i to i32
  %208 = load ptr, ptr %p.i, align 8
  store i32 %conv8.i.i.i, ptr %208, align 4
  %209 = load i32, ptr %i_left.i, align 8
  %add.i.i.i1472 = add nsw i32 %209, 32
  br label %bs_write_te.exit.sink.split

bs_write_te.exit.sink.split:                      ; preds = %if.then.i.i.i, %if.then.i.i1480
  %.ph = phi i32 [ %add.i.i.i1472, %if.then.i.i.i ], [ 64, %if.then.i.i1480 ]
  %210 = load ptr, ptr %p.i, align 8
  %add.ptr.i.i1483 = getelementptr inbounds i8, ptr %210, i64 4
  store ptr %add.ptr.i.i1483, ptr %p.i, align 8
  br label %bs_write_te.exit

bs_write_te.exit:                                 ; preds = %bs_write_te.exit.sink.split, %if.then.i1473, %if.else.i
  %211 = phi i32 [ %dec.i.i, %if.then.i1473 ], [ %sub.i.i.i, %if.else.i ], [ %.ph, %bs_write_te.exit.sink.split ]
  %212 = load i32, ptr %i_fref316, align 8
  %213 = load i8, ptr %arrayidx269, align 1
  %conv337 = sext i8 %213 to i32
  %cmp.i1484 = icmp eq i32 %212, 2
  br i1 %cmp.i1484, label %if.then.i1506, label %if.else.i1485

if.then.i1506:                                    ; preds = %bs_write_te.exit
  %xor.i1507 = xor i32 %conv337, 1
  %cur_bits.i.i1508 = getelementptr inbounds i8, ptr %h, i64 1816
  %214 = load i64, ptr %cur_bits.i.i1508, align 8
  %shl.i.i1509 = shl i64 %214, 1
  %conv.i.i1510 = zext i32 %xor.i1507 to i64
  %or.i.i1511 = or i64 %shl.i.i1509, %conv.i.i1510
  store i64 %or.i.i1511, ptr %cur_bits.i.i1508, align 8
  %dec.i.i1513 = add nsw i32 %211, -1
  %cmp.i.i1514 = icmp eq i32 %dec.i.i1513, 32
  br i1 %cmp.i.i1514, label %if.then.i.i1515, label %bs_write_te.exit1520

if.then.i.i1515:                                  ; preds = %if.then.i1506
  %conv6.i.i1516 = trunc i64 %or.i.i1511 to i32
  %add5.i.i.i1517 = tail call noundef i32 @llvm.bswap.i32(i32 %conv6.i.i1516)
  %215 = load ptr, ptr %p.i, align 8
  store i32 %add5.i.i.i1517, ptr %215, align 4
  br label %bs_write_te.exit1520.sink.split

if.else.i1485:                                    ; preds = %bs_write_te.exit
  %add.i.i1486 = add nsw i32 %conv337, 1
  %idxprom.i.i1487 = sext i32 %add.i.i1486 to i64
  %arrayidx.i.i1488 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %idxprom.i.i1487
  %216 = load i8, ptr %arrayidx.i.i1488, align 1
  %conv.i3.i1489 = zext i8 %216 to i32
  %cur_bits.i.i.i1490 = getelementptr inbounds i8, ptr %h, i64 1816
  %217 = load i64, ptr %cur_bits.i.i.i1490, align 8
  %sh_prom.i.i.i1491 = zext nneg i8 %216 to i64
  %shl.i.i.i1492 = shl i64 %217, %sh_prom.i.i.i1491
  %conv.i.i.i1493 = zext i32 %add.i.i1486 to i64
  %or.i.i.i1494 = or i64 %shl.i.i.i1492, %conv.i.i.i1493
  store i64 %or.i.i.i1494, ptr %cur_bits.i.i.i1490, align 8
  %sub.i.i.i1496 = sub nsw i32 %211, %conv.i3.i1489
  store i32 %sub.i.i.i1496, ptr %i_left.i, align 8
  %cmp.i.i.i1497 = icmp slt i32 %sub.i.i.i1496, 33
  br i1 %cmp.i.i.i1497, label %if.then.i.i.i1498, label %bs_write_te.exit1520

if.then.i.i.i1498:                                ; preds = %if.else.i1485
  %sh_prom6.i.i.i1499 = zext nneg i32 %sub.i.i.i1496 to i64
  %shl7.i.i.i1500 = shl i64 %or.i.i.i1494, %sh_prom6.i.i.i1499
  %add.i.i.i.i.i1501 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i.i.i1500)
  %conv8.i.i.i1502 = trunc i64 %add.i.i.i.i.i1501 to i32
  %218 = load ptr, ptr %p.i, align 8
  store i32 %conv8.i.i.i1502, ptr %218, align 4
  %219 = load i32, ptr %i_left.i, align 8
  %add.i.i.i1504 = add nsw i32 %219, 32
  br label %bs_write_te.exit1520.sink.split

bs_write_te.exit1520.sink.split:                  ; preds = %if.then.i.i.i1498, %if.then.i.i1515
  %.ph2133 = phi i32 [ %add.i.i.i1504, %if.then.i.i.i1498 ], [ 64, %if.then.i.i1515 ]
  %220 = load ptr, ptr %p.i, align 8
  %add.ptr.i.i1519 = getelementptr inbounds i8, ptr %220, i64 4
  store ptr %add.ptr.i.i1519, ptr %p.i, align 8
  br label %bs_write_te.exit1520

bs_write_te.exit1520:                             ; preds = %bs_write_te.exit1520.sink.split, %if.then.i1506, %if.else.i1485
  %221 = phi i32 [ %dec.i.i1513, %if.then.i1506 ], [ %sub.i.i.i1496, %if.else.i1485 ], [ %.ph2133, %bs_write_te.exit1520.sink.split ]
  %222 = load i32, ptr %i_fref316, align 8
  %223 = load i8, ptr %arrayidx276, align 1
  %conv349 = sext i8 %223 to i32
  %cmp.i1521 = icmp eq i32 %222, 2
  br i1 %cmp.i1521, label %if.then.i1543, label %if.else.i1522

if.then.i1543:                                    ; preds = %bs_write_te.exit1520
  %xor.i1544 = xor i32 %conv349, 1
  %cur_bits.i.i1545 = getelementptr inbounds i8, ptr %h, i64 1816
  %224 = load i64, ptr %cur_bits.i.i1545, align 8
  %shl.i.i1546 = shl i64 %224, 1
  %conv.i.i1547 = zext i32 %xor.i1544 to i64
  %or.i.i1548 = or i64 %shl.i.i1546, %conv.i.i1547
  store i64 %or.i.i1548, ptr %cur_bits.i.i1545, align 8
  %dec.i.i1550 = add nsw i32 %221, -1
  %cmp.i.i1551 = icmp eq i32 %dec.i.i1550, 32
  br i1 %cmp.i.i1551, label %if.then.i.i1552, label %bs_write_te.exit1557

if.then.i.i1552:                                  ; preds = %if.then.i1543
  %conv6.i.i1553 = trunc i64 %or.i.i1548 to i32
  %add5.i.i.i1554 = tail call noundef i32 @llvm.bswap.i32(i32 %conv6.i.i1553)
  %225 = load ptr, ptr %p.i, align 8
  store i32 %add5.i.i.i1554, ptr %225, align 4
  br label %bs_write_te.exit1557.sink.split

if.else.i1522:                                    ; preds = %bs_write_te.exit1520
  %add.i.i1523 = add nsw i32 %conv349, 1
  %idxprom.i.i1524 = sext i32 %add.i.i1523 to i64
  %arrayidx.i.i1525 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %idxprom.i.i1524
  %226 = load i8, ptr %arrayidx.i.i1525, align 1
  %conv.i3.i1526 = zext i8 %226 to i32
  %cur_bits.i.i.i1527 = getelementptr inbounds i8, ptr %h, i64 1816
  %227 = load i64, ptr %cur_bits.i.i.i1527, align 8
  %sh_prom.i.i.i1528 = zext nneg i8 %226 to i64
  %shl.i.i.i1529 = shl i64 %227, %sh_prom.i.i.i1528
  %conv.i.i.i1530 = zext i32 %add.i.i1523 to i64
  %or.i.i.i1531 = or i64 %shl.i.i.i1529, %conv.i.i.i1530
  store i64 %or.i.i.i1531, ptr %cur_bits.i.i.i1527, align 8
  %sub.i.i.i1533 = sub nsw i32 %221, %conv.i3.i1526
  store i32 %sub.i.i.i1533, ptr %i_left.i, align 8
  %cmp.i.i.i1534 = icmp slt i32 %sub.i.i.i1533, 33
  br i1 %cmp.i.i.i1534, label %if.then.i.i.i1535, label %bs_write_te.exit1557

if.then.i.i.i1535:                                ; preds = %if.else.i1522
  %sh_prom6.i.i.i1536 = zext nneg i32 %sub.i.i.i1533 to i64
  %shl7.i.i.i1537 = shl i64 %or.i.i.i1531, %sh_prom6.i.i.i1536
  %add.i.i.i.i.i1538 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i.i.i1537)
  %conv8.i.i.i1539 = trunc i64 %add.i.i.i.i.i1538 to i32
  %228 = load ptr, ptr %p.i, align 8
  store i32 %conv8.i.i.i1539, ptr %228, align 4
  %229 = load i32, ptr %i_left.i, align 8
  %add.i.i.i1541 = add nsw i32 %229, 32
  br label %bs_write_te.exit1557.sink.split

bs_write_te.exit1557.sink.split:                  ; preds = %if.then.i.i.i1535, %if.then.i.i1552
  %.ph2134 = phi i32 [ %add.i.i.i1541, %if.then.i.i.i1535 ], [ 64, %if.then.i.i1552 ]
  %230 = load ptr, ptr %p.i, align 8
  %add.ptr.i.i1556 = getelementptr inbounds i8, ptr %230, i64 4
  store ptr %add.ptr.i.i1556, ptr %p.i, align 8
  br label %bs_write_te.exit1557

bs_write_te.exit1557:                             ; preds = %bs_write_te.exit1557.sink.split, %if.then.i1543, %if.else.i1522
  %231 = phi i32 [ %dec.i.i1550, %if.then.i1543 ], [ %sub.i.i.i1533, %if.else.i1522 ], [ %.ph2134, %bs_write_te.exit1557.sink.split ]
  %232 = load i32, ptr %i_fref316, align 8
  %233 = load i8, ptr %arrayidx284, align 1
  %conv361 = sext i8 %233 to i32
  %cmp.i1558 = icmp eq i32 %232, 2
  br i1 %cmp.i1558, label %if.then.i1580, label %if.else.i1559

if.then.i1580:                                    ; preds = %bs_write_te.exit1557
  %xor.i1581 = xor i32 %conv361, 1
  %cur_bits.i.i1582 = getelementptr inbounds i8, ptr %h, i64 1816
  %234 = load i64, ptr %cur_bits.i.i1582, align 8
  %shl.i.i1583 = shl i64 %234, 1
  %conv.i.i1584 = zext i32 %xor.i1581 to i64
  %or.i.i1585 = or i64 %shl.i.i1583, %conv.i.i1584
  store i64 %or.i.i1585, ptr %cur_bits.i.i1582, align 8
  %dec.i.i1587 = add nsw i32 %231, -1
  store i32 %dec.i.i1587, ptr %i_left.i, align 8
  %cmp.i.i1588 = icmp eq i32 %dec.i.i1587, 32
  br i1 %cmp.i.i1588, label %if.then.i.i1589, label %if.end362

if.then.i.i1589:                                  ; preds = %if.then.i1580
  %conv6.i.i1590 = trunc i64 %or.i.i1585 to i32
  %add5.i.i.i1591 = tail call noundef i32 @llvm.bswap.i32(i32 %conv6.i.i1590)
  %235 = load ptr, ptr %p.i, align 8
  store i32 %add5.i.i.i1591, ptr %235, align 4
  %236 = load ptr, ptr %p.i, align 8
  %add.ptr.i.i1593 = getelementptr inbounds i8, ptr %236, i64 4
  store ptr %add.ptr.i.i1593, ptr %p.i, align 8
  store i32 64, ptr %i_left.i, align 8
  br label %if.end362

if.else.i1559:                                    ; preds = %bs_write_te.exit1557
  %add.i.i1560 = add nsw i32 %conv361, 1
  %idxprom.i.i1561 = sext i32 %add.i.i1560 to i64
  %arrayidx.i.i1562 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %idxprom.i.i1561
  %237 = load i8, ptr %arrayidx.i.i1562, align 1
  %conv.i3.i1563 = zext i8 %237 to i32
  %cur_bits.i.i.i1564 = getelementptr inbounds i8, ptr %h, i64 1816
  %238 = load i64, ptr %cur_bits.i.i.i1564, align 8
  %sh_prom.i.i.i1565 = zext nneg i8 %237 to i64
  %shl.i.i.i1566 = shl i64 %238, %sh_prom.i.i.i1565
  %conv.i.i.i1567 = zext i32 %add.i.i1560 to i64
  %or.i.i.i1568 = or i64 %shl.i.i.i1566, %conv.i.i.i1567
  store i64 %or.i.i.i1568, ptr %cur_bits.i.i.i1564, align 8
  %sub.i.i.i1570 = sub nsw i32 %231, %conv.i3.i1563
  store i32 %sub.i.i.i1570, ptr %i_left.i, align 8
  %cmp.i.i.i1571 = icmp slt i32 %sub.i.i.i1570, 33
  br i1 %cmp.i.i.i1571, label %if.then.i.i.i1572, label %if.end362

if.then.i.i.i1572:                                ; preds = %if.else.i1559
  %sh_prom6.i.i.i1573 = zext nneg i32 %sub.i.i.i1570 to i64
  %shl7.i.i.i1574 = shl i64 %or.i.i.i1568, %sh_prom6.i.i.i1573
  %add.i.i.i.i.i1575 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i.i.i1574)
  %conv8.i.i.i1576 = trunc i64 %add.i.i.i.i.i1575 to i32
  %239 = load ptr, ptr %p.i, align 8
  store i32 %conv8.i.i.i1576, ptr %239, align 4
  %240 = load i32, ptr %i_left.i, align 8
  %add.i.i.i1578 = add nsw i32 %240, 32
  store i32 %add.i.i.i1578, ptr %i_left.i, align 8
  %241 = load ptr, ptr %p.i, align 8
  %add.ptr.i.i.i1579 = getelementptr inbounds i8, ptr %241, i64 4
  store ptr %add.ptr.i.i.i1579, ptr %p.i, align 8
  br label %if.end362

if.end362:                                        ; preds = %if.then.i.i.i1572, %if.else.i1559, %if.then.i.i1589, %if.then.i1580, %if.end311
  %i_sub_partition.i = getelementptr inbounds i8, ptr %h, i64 17392
  %242 = load i8, ptr %i_sub_partition.i, align 1
  switch i8 %242, label %cavlc_mb8x8_mvd.exit [
    i8 3, label %sw.bb.i
    i8 1, label %sw.bb1.i
    i8 2, label %sw.bb5.i
    i8 0, label %sw.bb10.i
  ]

sw.bb.i:                                          ; preds = %if.end362
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 0, i32 noundef 2)
  br label %cavlc_mb8x8_mvd.exit

sw.bb1.i:                                         ; preds = %if.end362
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 0, i32 noundef 2)
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 2, i32 noundef 2)
  br label %cavlc_mb8x8_mvd.exit

sw.bb5.i:                                         ; preds = %if.end362
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 0, i32 noundef 1)
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 1, i32 noundef 1)
  br label %cavlc_mb8x8_mvd.exit

sw.bb10.i:                                        ; preds = %if.end362
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 0, i32 noundef 1)
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 1, i32 noundef 1)
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 2, i32 noundef 1)
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 3, i32 noundef 1)
  br label %cavlc_mb8x8_mvd.exit

cavlc_mb8x8_mvd.exit:                             ; preds = %if.end362, %sw.bb.i, %sw.bb1.i, %sw.bb5.i, %sw.bb10.i
  %arrayidx.i1596.1 = getelementptr inbounds i8, ptr %h, i64 17393
  %243 = load i8, ptr %arrayidx.i1596.1, align 1
  switch i8 %243, label %cavlc_mb8x8_mvd.exit.1 [
    i8 3, label %sw.bb.i.1
    i8 1, label %sw.bb1.i.1
    i8 2, label %sw.bb5.i.1
    i8 0, label %sw.bb10.i.1
  ]

sw.bb10.i.1:                                      ; preds = %cavlc_mb8x8_mvd.exit
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 4, i32 noundef 1)
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 5, i32 noundef 1)
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 6, i32 noundef 1)
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 7, i32 noundef 1)
  br label %cavlc_mb8x8_mvd.exit.1

sw.bb5.i.1:                                       ; preds = %cavlc_mb8x8_mvd.exit
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 4, i32 noundef 1)
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 5, i32 noundef 1)
  br label %cavlc_mb8x8_mvd.exit.1

sw.bb1.i.1:                                       ; preds = %cavlc_mb8x8_mvd.exit
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 4, i32 noundef 2)
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 6, i32 noundef 2)
  br label %cavlc_mb8x8_mvd.exit.1

sw.bb.i.1:                                        ; preds = %cavlc_mb8x8_mvd.exit
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 4, i32 noundef 2)
  br label %cavlc_mb8x8_mvd.exit.1

cavlc_mb8x8_mvd.exit.1:                           ; preds = %sw.bb.i.1, %sw.bb1.i.1, %sw.bb5.i.1, %sw.bb10.i.1, %cavlc_mb8x8_mvd.exit
  %arrayidx.i1596.2 = getelementptr inbounds i8, ptr %h, i64 17394
  %244 = load i8, ptr %arrayidx.i1596.2, align 1
  switch i8 %244, label %cavlc_mb8x8_mvd.exit.2 [
    i8 3, label %sw.bb.i.2
    i8 1, label %sw.bb1.i.2
    i8 2, label %sw.bb5.i.2
    i8 0, label %sw.bb10.i.2
  ]

sw.bb10.i.2:                                      ; preds = %cavlc_mb8x8_mvd.exit.1
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 8, i32 noundef 1)
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 9, i32 noundef 1)
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 10, i32 noundef 1)
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 11, i32 noundef 1)
  br label %cavlc_mb8x8_mvd.exit.2

sw.bb5.i.2:                                       ; preds = %cavlc_mb8x8_mvd.exit.1
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 8, i32 noundef 1)
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 9, i32 noundef 1)
  br label %cavlc_mb8x8_mvd.exit.2

sw.bb1.i.2:                                       ; preds = %cavlc_mb8x8_mvd.exit.1
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 8, i32 noundef 2)
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 10, i32 noundef 2)
  br label %cavlc_mb8x8_mvd.exit.2

sw.bb.i.2:                                        ; preds = %cavlc_mb8x8_mvd.exit.1
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 8, i32 noundef 2)
  br label %cavlc_mb8x8_mvd.exit.2

cavlc_mb8x8_mvd.exit.2:                           ; preds = %sw.bb.i.2, %sw.bb1.i.2, %sw.bb5.i.2, %sw.bb10.i.2, %cavlc_mb8x8_mvd.exit.1
  %arrayidx.i1596.3 = getelementptr inbounds i8, ptr %h, i64 17395
  %245 = load i8, ptr %arrayidx.i1596.3, align 1
  switch i8 %245, label %if.end697 [
    i8 3, label %sw.bb.i.3
    i8 1, label %sw.bb1.i.3
    i8 2, label %sw.bb5.i.3
    i8 0, label %sw.bb10.i.3
  ]

sw.bb10.i.3:                                      ; preds = %cavlc_mb8x8_mvd.exit.2
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 12, i32 noundef 1)
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 13, i32 noundef 1)
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 14, i32 noundef 1)
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 15, i32 noundef 1)
  br label %if.end697

sw.bb5.i.3:                                       ; preds = %cavlc_mb8x8_mvd.exit.2
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 12, i32 noundef 1)
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 13, i32 noundef 1)
  br label %if.end697

sw.bb1.i.3:                                       ; preds = %cavlc_mb8x8_mvd.exit.2
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 12, i32 noundef 2)
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 14, i32 noundef 2)
  br label %if.end697

sw.bb.i.3:                                        ; preds = %cavlc_mb8x8_mvd.exit.2
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 12, i32 noundef 2)
  br label %if.end697

if.then375:                                       ; preds = %if.else125
  %cur_bits.i.i1598 = getelementptr inbounds i8, ptr %h, i64 1816
  %246 = load i64, ptr %cur_bits.i.i1598, align 8
  %shl.i.i1599 = shl i64 %246, 9
  %or.i.i1600 = or disjoint i64 %shl.i.i1599, 23
  store i64 %or.i.i1600, ptr %cur_bits.i.i1598, align 8
  %sub.i.i1602 = add nsw i32 %16, -9
  store i32 %sub.i.i1602, ptr %i_left.i, align 8
  %cmp.i.i1603 = icmp slt i32 %16, 42
  br i1 %cmp.i.i1603, label %if.then.i.i1604, label %bs_write_ue.exit1612

if.then.i.i1604:                                  ; preds = %if.then375
  %sh_prom6.i.i1605 = zext nneg i32 %sub.i.i1602 to i64
  %shl7.i.i1606 = shl i64 %or.i.i1600, %sh_prom6.i.i1605
  %add.i.i.i.i1607 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i.i1606)
  %conv8.i.i1608 = trunc i64 %add.i.i.i.i1607 to i32
  store i32 %conv8.i.i1608, ptr %15, align 4
  %247 = load i32, ptr %i_left.i, align 8
  %add.i.i1610 = add nsw i32 %247, 32
  %248 = load ptr, ptr %p.i, align 8
  %add.ptr.i.i1611 = getelementptr inbounds i8, ptr %248, i64 4
  store ptr %add.ptr.i.i1611, ptr %p.i, align 8
  %.pre = load i64, ptr %cur_bits.i.i1598, align 8
  br label %bs_write_ue.exit1612

bs_write_ue.exit1612:                             ; preds = %if.then375, %if.then.i.i1604
  %249 = phi ptr [ %15, %if.then375 ], [ %add.ptr.i.i1611, %if.then.i.i1604 ]
  %250 = phi i32 [ %sub.i.i1602, %if.then375 ], [ %add.i.i1610, %if.then.i.i1604 ]
  %251 = phi i64 [ %or.i.i1600, %if.then375 ], [ %.pre, %if.then.i.i1604 ]
  %i_sub_partition383 = getelementptr inbounds i8, ptr %h, i64 17392
  %252 = load i8, ptr %i_sub_partition383, align 1
  %idxprom386 = zext i8 %252 to i64
  %arrayidx387 = getelementptr inbounds [13 x i8], ptr @sub_mb_type_b_to_golomb, i64 0, i64 %idxprom386
  %253 = load i8, ptr %arrayidx387, align 1
  %conv388 = zext i8 %253 to i64
  %add.i1613 = add nuw nsw i64 %conv388, 1
  %arrayidx.i1615 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %add.i1613
  %254 = load i8, ptr %arrayidx.i1615, align 1
  %conv.i1616 = zext i8 %254 to i32
  %sh_prom.i.i1618 = zext nneg i8 %254 to i64
  %shl.i.i1619 = shl i64 %251, %sh_prom.i.i1618
  %or.i.i1621 = or i64 %shl.i.i1619, %add.i1613
  store i64 %or.i.i1621, ptr %cur_bits.i.i1598, align 8
  %sub.i.i1623 = sub nsw i32 %250, %conv.i1616
  store i32 %sub.i.i1623, ptr %i_left.i, align 8
  %cmp.i.i1624 = icmp slt i32 %sub.i.i1623, 33
  br i1 %cmp.i.i1624, label %if.then.i.i1625, label %bs_write_ue.exit1633

for.cond400.preheader:                            ; preds = %bs_write_ue.exit1633.3
  %idxprom409 = zext i8 %.pre2121.pre2129 to i64
  %arrayidx410 = getelementptr inbounds [17 x i8], ptr @x264_mb_partition_listX_table, i64 0, i64 %idxprom409
  %255 = load i8, ptr %arrayidx410, align 1
  %tobool411.not = icmp eq i8 %255, 0
  br i1 %tobool411.not, label %for.inc429, label %if.then412

if.then.i.i1625:                                  ; preds = %bs_write_ue.exit1612
  %sh_prom6.i.i1626 = zext nneg i32 %sub.i.i1623 to i64
  %shl7.i.i1627 = shl i64 %or.i.i1621, %sh_prom6.i.i1626
  %add.i.i.i.i1628 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i.i1627)
  %conv8.i.i1629 = trunc i64 %add.i.i.i.i1628 to i32
  store i32 %conv8.i.i1629, ptr %249, align 4
  %256 = load i32, ptr %i_left.i, align 8
  %add.i.i1631 = add nsw i32 %256, 32
  %257 = load ptr, ptr %p.i, align 8
  %add.ptr.i.i1632 = getelementptr inbounds i8, ptr %257, i64 4
  store ptr %add.ptr.i.i1632, ptr %p.i, align 8
  %.pre2117 = load i64, ptr %cur_bits.i.i1598, align 8
  br label %bs_write_ue.exit1633

bs_write_ue.exit1633:                             ; preds = %bs_write_ue.exit1612, %if.then.i.i1625
  %258 = phi ptr [ %249, %bs_write_ue.exit1612 ], [ %add.ptr.i.i1632, %if.then.i.i1625 ]
  %259 = phi i32 [ %sub.i.i1623, %bs_write_ue.exit1612 ], [ %add.i.i1631, %if.then.i.i1625 ]
  %260 = phi i64 [ %or.i.i1621, %bs_write_ue.exit1612 ], [ %.pre2117, %if.then.i.i1625 ]
  %arrayidx385.1 = getelementptr inbounds i8, ptr %h, i64 17393
  %261 = load i8, ptr %arrayidx385.1, align 1
  %idxprom386.1 = zext i8 %261 to i64
  %arrayidx387.1 = getelementptr inbounds [13 x i8], ptr @sub_mb_type_b_to_golomb, i64 0, i64 %idxprom386.1
  %262 = load i8, ptr %arrayidx387.1, align 1
  %conv388.1 = zext i8 %262 to i64
  %add.i1613.1 = add nuw nsw i64 %conv388.1, 1
  %arrayidx.i1615.1 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %add.i1613.1
  %263 = load i8, ptr %arrayidx.i1615.1, align 1
  %conv.i1616.1 = zext i8 %263 to i32
  %sh_prom.i.i1618.1 = zext nneg i8 %263 to i64
  %shl.i.i1619.1 = shl i64 %260, %sh_prom.i.i1618.1
  %or.i.i1621.1 = or i64 %shl.i.i1619.1, %add.i1613.1
  store i64 %or.i.i1621.1, ptr %cur_bits.i.i1598, align 8
  %sub.i.i1623.1 = sub nsw i32 %259, %conv.i1616.1
  store i32 %sub.i.i1623.1, ptr %i_left.i, align 8
  %cmp.i.i1624.1 = icmp slt i32 %sub.i.i1623.1, 33
  br i1 %cmp.i.i1624.1, label %if.then.i.i1625.1, label %bs_write_ue.exit1633.1

if.then.i.i1625.1:                                ; preds = %bs_write_ue.exit1633
  %sh_prom6.i.i1626.1 = zext nneg i32 %sub.i.i1623.1 to i64
  %shl7.i.i1627.1 = shl i64 %or.i.i1621.1, %sh_prom6.i.i1626.1
  %add.i.i.i.i1628.1 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i.i1627.1)
  %conv8.i.i1629.1 = trunc i64 %add.i.i.i.i1628.1 to i32
  store i32 %conv8.i.i1629.1, ptr %258, align 4
  %264 = load i32, ptr %i_left.i, align 8
  %add.i.i1631.1 = add nsw i32 %264, 32
  %265 = load ptr, ptr %p.i, align 8
  %add.ptr.i.i1632.1 = getelementptr inbounds i8, ptr %265, i64 4
  store ptr %add.ptr.i.i1632.1, ptr %p.i, align 8
  %.pre2118 = load i64, ptr %cur_bits.i.i1598, align 8
  br label %bs_write_ue.exit1633.1

bs_write_ue.exit1633.1:                           ; preds = %if.then.i.i1625.1, %bs_write_ue.exit1633
  %266 = phi ptr [ %add.ptr.i.i1632.1, %if.then.i.i1625.1 ], [ %258, %bs_write_ue.exit1633 ]
  %267 = phi i32 [ %add.i.i1631.1, %if.then.i.i1625.1 ], [ %sub.i.i1623.1, %bs_write_ue.exit1633 ]
  %268 = phi i64 [ %.pre2118, %if.then.i.i1625.1 ], [ %or.i.i1621.1, %bs_write_ue.exit1633 ]
  %arrayidx385.2 = getelementptr inbounds i8, ptr %h, i64 17394
  %269 = load i8, ptr %arrayidx385.2, align 1
  %idxprom386.2 = zext i8 %269 to i64
  %arrayidx387.2 = getelementptr inbounds [13 x i8], ptr @sub_mb_type_b_to_golomb, i64 0, i64 %idxprom386.2
  %270 = load i8, ptr %arrayidx387.2, align 1
  %conv388.2 = zext i8 %270 to i64
  %add.i1613.2 = add nuw nsw i64 %conv388.2, 1
  %arrayidx.i1615.2 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %add.i1613.2
  %271 = load i8, ptr %arrayidx.i1615.2, align 1
  %conv.i1616.2 = zext i8 %271 to i32
  %sh_prom.i.i1618.2 = zext nneg i8 %271 to i64
  %shl.i.i1619.2 = shl i64 %268, %sh_prom.i.i1618.2
  %or.i.i1621.2 = or i64 %shl.i.i1619.2, %add.i1613.2
  store i64 %or.i.i1621.2, ptr %cur_bits.i.i1598, align 8
  %sub.i.i1623.2 = sub nsw i32 %267, %conv.i1616.2
  store i32 %sub.i.i1623.2, ptr %i_left.i, align 8
  %cmp.i.i1624.2 = icmp slt i32 %sub.i.i1623.2, 33
  br i1 %cmp.i.i1624.2, label %if.then.i.i1625.2, label %bs_write_ue.exit1633.2

if.then.i.i1625.2:                                ; preds = %bs_write_ue.exit1633.1
  %sh_prom6.i.i1626.2 = zext nneg i32 %sub.i.i1623.2 to i64
  %shl7.i.i1627.2 = shl i64 %or.i.i1621.2, %sh_prom6.i.i1626.2
  %add.i.i.i.i1628.2 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i.i1627.2)
  %conv8.i.i1629.2 = trunc i64 %add.i.i.i.i1628.2 to i32
  store i32 %conv8.i.i1629.2, ptr %266, align 4
  %272 = load i32, ptr %i_left.i, align 8
  %add.i.i1631.2 = add nsw i32 %272, 32
  %273 = load ptr, ptr %p.i, align 8
  %add.ptr.i.i1632.2 = getelementptr inbounds i8, ptr %273, i64 4
  store ptr %add.ptr.i.i1632.2, ptr %p.i, align 8
  %.pre2119 = load i64, ptr %cur_bits.i.i1598, align 8
  br label %bs_write_ue.exit1633.2

bs_write_ue.exit1633.2:                           ; preds = %if.then.i.i1625.2, %bs_write_ue.exit1633.1
  %274 = phi ptr [ %add.ptr.i.i1632.2, %if.then.i.i1625.2 ], [ %266, %bs_write_ue.exit1633.1 ]
  %275 = phi i32 [ %add.i.i1631.2, %if.then.i.i1625.2 ], [ %sub.i.i1623.2, %bs_write_ue.exit1633.1 ]
  %276 = phi i64 [ %.pre2119, %if.then.i.i1625.2 ], [ %or.i.i1621.2, %bs_write_ue.exit1633.1 ]
  %arrayidx385.3 = getelementptr inbounds i8, ptr %h, i64 17395
  %277 = load i8, ptr %arrayidx385.3, align 1
  %idxprom386.3 = zext i8 %277 to i64
  %arrayidx387.3 = getelementptr inbounds [13 x i8], ptr @sub_mb_type_b_to_golomb, i64 0, i64 %idxprom386.3
  %278 = load i8, ptr %arrayidx387.3, align 1
  %conv388.3 = zext i8 %278 to i64
  %add.i1613.3 = add nuw nsw i64 %conv388.3, 1
  %arrayidx.i1615.3 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %add.i1613.3
  %279 = load i8, ptr %arrayidx.i1615.3, align 1
  %conv.i1616.3 = zext i8 %279 to i32
  %sh_prom.i.i1618.3 = zext nneg i8 %279 to i64
  %shl.i.i1619.3 = shl i64 %276, %sh_prom.i.i1618.3
  %or.i.i1621.3 = or i64 %shl.i.i1619.3, %add.i1613.3
  store i64 %or.i.i1621.3, ptr %cur_bits.i.i1598, align 8
  %sub.i.i1623.3 = sub nsw i32 %275, %conv.i1616.3
  store i32 %sub.i.i1623.3, ptr %i_left.i, align 8
  %cmp.i.i1624.3 = icmp slt i32 %sub.i.i1623.3, 33
  br i1 %cmp.i.i1624.3, label %if.then.i.i1625.3, label %bs_write_ue.exit1633.3

if.then.i.i1625.3:                                ; preds = %bs_write_ue.exit1633.2
  %sh_prom6.i.i1626.3 = zext nneg i32 %sub.i.i1623.3 to i64
  %shl7.i.i1627.3 = shl i64 %or.i.i1621.3, %sh_prom6.i.i1626.3
  %add.i.i.i.i1628.3 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i.i1627.3)
  %conv8.i.i1629.3 = trunc i64 %add.i.i.i.i1628.3 to i32
  store i32 %conv8.i.i1629.3, ptr %274, align 4
  %280 = load i32, ptr %i_left.i, align 8
  %add.i.i1631.3 = add nsw i32 %280, 32
  store i32 %add.i.i1631.3, ptr %i_left.i, align 8
  %281 = load ptr, ptr %p.i, align 8
  %add.ptr.i.i1632.3 = getelementptr inbounds i8, ptr %281, i64 4
  store ptr %add.ptr.i.i1632.3, ptr %p.i, align 8
  br label %bs_write_ue.exit1633.3

bs_write_ue.exit1633.3:                           ; preds = %if.then.i.i1625.3, %bs_write_ue.exit1633.2
  %282 = phi ptr [ %add.ptr.i.i1632.3, %if.then.i.i1625.3 ], [ %274, %bs_write_ue.exit1633.2 ]
  %283 = phi i32 [ %add.i.i1631.3, %if.then.i.i1625.3 ], [ %sub.i.i1623.3, %bs_write_ue.exit1633.2 ]
  %i_fref394 = getelementptr inbounds i8, ptr %h, i64 21416
  %284 = load i32, ptr %i_fref394, align 8
  %cmp396 = icmp sgt i32 %284, 1
  %.pre2121.pre2129 = load i8, ptr %i_sub_partition383, align 1
  br i1 %cmp396, label %for.cond400.preheader, label %if.end432

if.then412:                                       ; preds = %for.cond400.preheader
  %arrayidx426 = getelementptr inbounds i8, ptr %h, i64 25132
  %285 = load i8, ptr %arrayidx426, align 1
  %conv427 = sext i8 %285 to i32
  %cmp.i1634 = icmp eq i32 %284, 2
  br i1 %cmp.i1634, label %if.then.i1656, label %if.else.i1635

if.then.i1656:                                    ; preds = %if.then412
  %xor.i1657 = xor i32 %conv427, 1
  %286 = load i64, ptr %cur_bits.i.i1598, align 8
  %shl.i.i1659 = shl i64 %286, 1
  %conv.i.i1660 = zext i32 %xor.i1657 to i64
  %or.i.i1661 = or i64 %shl.i.i1659, %conv.i.i1660
  store i64 %or.i.i1661, ptr %cur_bits.i.i1598, align 8
  %dec.i.i1663 = add nsw i32 %283, -1
  store i32 %dec.i.i1663, ptr %i_left.i, align 8
  %cmp.i.i1664 = icmp eq i32 %dec.i.i1663, 32
  br i1 %cmp.i.i1664, label %if.then.i.i1665, label %for.inc429

if.then.i.i1665:                                  ; preds = %if.then.i1656
  %conv6.i.i1666 = trunc i64 %or.i.i1661 to i32
  %add5.i.i.i1667 = tail call noundef i32 @llvm.bswap.i32(i32 %conv6.i.i1666)
  store i32 %add5.i.i.i1667, ptr %282, align 4
  %287 = load ptr, ptr %p.i, align 8
  %add.ptr.i.i1669 = getelementptr inbounds i8, ptr %287, i64 4
  store ptr %add.ptr.i.i1669, ptr %p.i, align 8
  store i32 64, ptr %i_left.i, align 8
  br label %for.inc429

if.else.i1635:                                    ; preds = %if.then412
  %add.i.i1636 = add nsw i32 %conv427, 1
  %idxprom.i.i1637 = sext i32 %add.i.i1636 to i64
  %arrayidx.i.i1638 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %idxprom.i.i1637
  %288 = load i8, ptr %arrayidx.i.i1638, align 1
  %conv.i3.i1639 = zext i8 %288 to i32
  %289 = load i64, ptr %cur_bits.i.i1598, align 8
  %sh_prom.i.i.i1641 = zext nneg i8 %288 to i64
  %shl.i.i.i1642 = shl i64 %289, %sh_prom.i.i.i1641
  %conv.i.i.i1643 = zext i32 %add.i.i1636 to i64
  %or.i.i.i1644 = or i64 %shl.i.i.i1642, %conv.i.i.i1643
  store i64 %or.i.i.i1644, ptr %cur_bits.i.i1598, align 8
  %sub.i.i.i1646 = sub nsw i32 %283, %conv.i3.i1639
  store i32 %sub.i.i.i1646, ptr %i_left.i, align 8
  %cmp.i.i.i1647 = icmp slt i32 %sub.i.i.i1646, 33
  br i1 %cmp.i.i.i1647, label %if.then.i.i.i1648, label %for.inc429

if.then.i.i.i1648:                                ; preds = %if.else.i1635
  %sh_prom6.i.i.i1649 = zext nneg i32 %sub.i.i.i1646 to i64
  %shl7.i.i.i1650 = shl i64 %or.i.i.i1644, %sh_prom6.i.i.i1649
  %add.i.i.i.i.i1651 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i.i.i1650)
  %conv8.i.i.i1652 = trunc i64 %add.i.i.i.i.i1651 to i32
  store i32 %conv8.i.i.i1652, ptr %282, align 4
  %290 = load i32, ptr %i_left.i, align 8
  %add.i.i.i1654 = add nsw i32 %290, 32
  store i32 %add.i.i.i1654, ptr %i_left.i, align 8
  %291 = load ptr, ptr %p.i, align 8
  %add.ptr.i.i.i1655 = getelementptr inbounds i8, ptr %291, i64 4
  store ptr %add.ptr.i.i.i1655, ptr %p.i, align 8
  br label %for.inc429

for.inc429:                                       ; preds = %if.then.i.i.i1648, %if.else.i1635, %if.then.i.i1665, %if.then.i1656, %for.cond400.preheader
  %292 = phi ptr [ %add.ptr.i.i.i1655, %if.then.i.i.i1648 ], [ %282, %if.else.i1635 ], [ %add.ptr.i.i1669, %if.then.i.i1665 ], [ %282, %if.then.i1656 ], [ %282, %for.cond400.preheader ]
  %293 = phi i32 [ %add.i.i.i1654, %if.then.i.i.i1648 ], [ %sub.i.i.i1646, %if.else.i1635 ], [ 64, %if.then.i.i1665 ], [ %dec.i.i1663, %if.then.i1656 ], [ %283, %for.cond400.preheader ]
  %294 = load i8, ptr %arrayidx385.1, align 1
  %idxprom409.1 = zext i8 %294 to i64
  %arrayidx410.1 = getelementptr inbounds [17 x i8], ptr @x264_mb_partition_listX_table, i64 0, i64 %idxprom409.1
  %295 = load i8, ptr %arrayidx410.1, align 1
  %tobool411.not.1 = icmp eq i8 %295, 0
  br i1 %tobool411.not.1, label %for.inc429.1, label %if.then412.1

if.then412.1:                                     ; preds = %for.inc429
  %296 = load i32, ptr %i_fref394, align 8
  %arrayidx426.1 = getelementptr inbounds i8, ptr %h, i64 25134
  %297 = load i8, ptr %arrayidx426.1, align 1
  %conv427.1 = sext i8 %297 to i32
  %cmp.i1634.1 = icmp eq i32 %296, 2
  br i1 %cmp.i1634.1, label %if.then.i1656.1, label %if.else.i1635.1

if.else.i1635.1:                                  ; preds = %if.then412.1
  %add.i.i1636.1 = add nsw i32 %conv427.1, 1
  %idxprom.i.i1637.1 = sext i32 %add.i.i1636.1 to i64
  %arrayidx.i.i1638.1 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %idxprom.i.i1637.1
  %298 = load i8, ptr %arrayidx.i.i1638.1, align 1
  %conv.i3.i1639.1 = zext i8 %298 to i32
  %299 = load i64, ptr %cur_bits.i.i1598, align 8
  %sh_prom.i.i.i1641.1 = zext nneg i8 %298 to i64
  %shl.i.i.i1642.1 = shl i64 %299, %sh_prom.i.i.i1641.1
  %conv.i.i.i1643.1 = zext i32 %add.i.i1636.1 to i64
  %or.i.i.i1644.1 = or i64 %shl.i.i.i1642.1, %conv.i.i.i1643.1
  store i64 %or.i.i.i1644.1, ptr %cur_bits.i.i1598, align 8
  %sub.i.i.i1646.1 = sub nsw i32 %293, %conv.i3.i1639.1
  store i32 %sub.i.i.i1646.1, ptr %i_left.i, align 8
  %cmp.i.i.i1647.1 = icmp slt i32 %sub.i.i.i1646.1, 33
  br i1 %cmp.i.i.i1647.1, label %if.then.i.i.i1648.1, label %for.inc429.1

if.then.i.i.i1648.1:                              ; preds = %if.else.i1635.1
  %sh_prom6.i.i.i1649.1 = zext nneg i32 %sub.i.i.i1646.1 to i64
  %shl7.i.i.i1650.1 = shl i64 %or.i.i.i1644.1, %sh_prom6.i.i.i1649.1
  %add.i.i.i.i.i1651.1 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i.i.i1650.1)
  %conv8.i.i.i1652.1 = trunc i64 %add.i.i.i.i.i1651.1 to i32
  store i32 %conv8.i.i.i1652.1, ptr %292, align 4
  %300 = load i32, ptr %i_left.i, align 8
  %add.i.i.i1654.1 = add nsw i32 %300, 32
  store i32 %add.i.i.i1654.1, ptr %i_left.i, align 8
  %301 = load ptr, ptr %p.i, align 8
  %add.ptr.i.i.i1655.1 = getelementptr inbounds i8, ptr %301, i64 4
  store ptr %add.ptr.i.i.i1655.1, ptr %p.i, align 8
  br label %for.inc429.1

if.then.i1656.1:                                  ; preds = %if.then412.1
  %xor.i1657.1 = xor i32 %conv427.1, 1
  %302 = load i64, ptr %cur_bits.i.i1598, align 8
  %shl.i.i1659.1 = shl i64 %302, 1
  %conv.i.i1660.1 = zext i32 %xor.i1657.1 to i64
  %or.i.i1661.1 = or i64 %shl.i.i1659.1, %conv.i.i1660.1
  store i64 %or.i.i1661.1, ptr %cur_bits.i.i1598, align 8
  %dec.i.i1663.1 = add nsw i32 %293, -1
  store i32 %dec.i.i1663.1, ptr %i_left.i, align 8
  %cmp.i.i1664.1 = icmp eq i32 %dec.i.i1663.1, 32
  br i1 %cmp.i.i1664.1, label %if.then.i.i1665.1, label %for.inc429.1

if.then.i.i1665.1:                                ; preds = %if.then.i1656.1
  %conv6.i.i1666.1 = trunc i64 %or.i.i1661.1 to i32
  %add5.i.i.i1667.1 = tail call noundef i32 @llvm.bswap.i32(i32 %conv6.i.i1666.1)
  store i32 %add5.i.i.i1667.1, ptr %292, align 4
  %303 = load ptr, ptr %p.i, align 8
  %add.ptr.i.i1669.1 = getelementptr inbounds i8, ptr %303, i64 4
  store ptr %add.ptr.i.i1669.1, ptr %p.i, align 8
  store i32 64, ptr %i_left.i, align 8
  br label %for.inc429.1

for.inc429.1:                                     ; preds = %if.then.i.i1665.1, %if.then.i1656.1, %if.then.i.i.i1648.1, %if.else.i1635.1, %for.inc429
  %304 = phi ptr [ %add.ptr.i.i1669.1, %if.then.i.i1665.1 ], [ %292, %if.then.i1656.1 ], [ %add.ptr.i.i.i1655.1, %if.then.i.i.i1648.1 ], [ %292, %if.else.i1635.1 ], [ %292, %for.inc429 ]
  %305 = phi i32 [ 64, %if.then.i.i1665.1 ], [ %dec.i.i1663.1, %if.then.i1656.1 ], [ %add.i.i.i1654.1, %if.then.i.i.i1648.1 ], [ %sub.i.i.i1646.1, %if.else.i1635.1 ], [ %293, %for.inc429 ]
  %306 = load i8, ptr %arrayidx385.2, align 1
  %idxprom409.2 = zext i8 %306 to i64
  %arrayidx410.2 = getelementptr inbounds [17 x i8], ptr @x264_mb_partition_listX_table, i64 0, i64 %idxprom409.2
  %307 = load i8, ptr %arrayidx410.2, align 1
  %tobool411.not.2 = icmp eq i8 %307, 0
  br i1 %tobool411.not.2, label %for.inc429.2, label %if.then412.2

if.then412.2:                                     ; preds = %for.inc429.1
  %308 = load i32, ptr %i_fref394, align 8
  %arrayidx426.2 = getelementptr inbounds i8, ptr %h, i64 25148
  %309 = load i8, ptr %arrayidx426.2, align 1
  %conv427.2 = sext i8 %309 to i32
  %cmp.i1634.2 = icmp eq i32 %308, 2
  br i1 %cmp.i1634.2, label %if.then.i1656.2, label %if.else.i1635.2

if.else.i1635.2:                                  ; preds = %if.then412.2
  %add.i.i1636.2 = add nsw i32 %conv427.2, 1
  %idxprom.i.i1637.2 = sext i32 %add.i.i1636.2 to i64
  %arrayidx.i.i1638.2 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %idxprom.i.i1637.2
  %310 = load i8, ptr %arrayidx.i.i1638.2, align 1
  %conv.i3.i1639.2 = zext i8 %310 to i32
  %311 = load i64, ptr %cur_bits.i.i1598, align 8
  %sh_prom.i.i.i1641.2 = zext nneg i8 %310 to i64
  %shl.i.i.i1642.2 = shl i64 %311, %sh_prom.i.i.i1641.2
  %conv.i.i.i1643.2 = zext i32 %add.i.i1636.2 to i64
  %or.i.i.i1644.2 = or i64 %shl.i.i.i1642.2, %conv.i.i.i1643.2
  store i64 %or.i.i.i1644.2, ptr %cur_bits.i.i1598, align 8
  %sub.i.i.i1646.2 = sub nsw i32 %305, %conv.i3.i1639.2
  store i32 %sub.i.i.i1646.2, ptr %i_left.i, align 8
  %cmp.i.i.i1647.2 = icmp slt i32 %sub.i.i.i1646.2, 33
  br i1 %cmp.i.i.i1647.2, label %if.then.i.i.i1648.2, label %for.inc429.2

if.then.i.i.i1648.2:                              ; preds = %if.else.i1635.2
  %sh_prom6.i.i.i1649.2 = zext nneg i32 %sub.i.i.i1646.2 to i64
  %shl7.i.i.i1650.2 = shl i64 %or.i.i.i1644.2, %sh_prom6.i.i.i1649.2
  %add.i.i.i.i.i1651.2 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i.i.i1650.2)
  %conv8.i.i.i1652.2 = trunc i64 %add.i.i.i.i.i1651.2 to i32
  store i32 %conv8.i.i.i1652.2, ptr %304, align 4
  %312 = load i32, ptr %i_left.i, align 8
  %add.i.i.i1654.2 = add nsw i32 %312, 32
  store i32 %add.i.i.i1654.2, ptr %i_left.i, align 8
  %313 = load ptr, ptr %p.i, align 8
  %add.ptr.i.i.i1655.2 = getelementptr inbounds i8, ptr %313, i64 4
  store ptr %add.ptr.i.i.i1655.2, ptr %p.i, align 8
  br label %for.inc429.2

if.then.i1656.2:                                  ; preds = %if.then412.2
  %xor.i1657.2 = xor i32 %conv427.2, 1
  %314 = load i64, ptr %cur_bits.i.i1598, align 8
  %shl.i.i1659.2 = shl i64 %314, 1
  %conv.i.i1660.2 = zext i32 %xor.i1657.2 to i64
  %or.i.i1661.2 = or i64 %shl.i.i1659.2, %conv.i.i1660.2
  store i64 %or.i.i1661.2, ptr %cur_bits.i.i1598, align 8
  %dec.i.i1663.2 = add nsw i32 %305, -1
  store i32 %dec.i.i1663.2, ptr %i_left.i, align 8
  %cmp.i.i1664.2 = icmp eq i32 %dec.i.i1663.2, 32
  br i1 %cmp.i.i1664.2, label %if.then.i.i1665.2, label %for.inc429.2

if.then.i.i1665.2:                                ; preds = %if.then.i1656.2
  %conv6.i.i1666.2 = trunc i64 %or.i.i1661.2 to i32
  %add5.i.i.i1667.2 = tail call noundef i32 @llvm.bswap.i32(i32 %conv6.i.i1666.2)
  store i32 %add5.i.i.i1667.2, ptr %304, align 4
  %315 = load ptr, ptr %p.i, align 8
  %add.ptr.i.i1669.2 = getelementptr inbounds i8, ptr %315, i64 4
  store ptr %add.ptr.i.i1669.2, ptr %p.i, align 8
  store i32 64, ptr %i_left.i, align 8
  br label %for.inc429.2

for.inc429.2:                                     ; preds = %if.then.i.i1665.2, %if.then.i1656.2, %if.then.i.i.i1648.2, %if.else.i1635.2, %for.inc429.1
  %316 = phi ptr [ %add.ptr.i.i1669.2, %if.then.i.i1665.2 ], [ %304, %if.then.i1656.2 ], [ %add.ptr.i.i.i1655.2, %if.then.i.i.i1648.2 ], [ %304, %if.else.i1635.2 ], [ %304, %for.inc429.1 ]
  %317 = phi i32 [ 64, %if.then.i.i1665.2 ], [ %dec.i.i1663.2, %if.then.i1656.2 ], [ %add.i.i.i1654.2, %if.then.i.i.i1648.2 ], [ %sub.i.i.i1646.2, %if.else.i1635.2 ], [ %305, %for.inc429.1 ]
  %318 = load i8, ptr %arrayidx385.3, align 1
  %idxprom409.3 = zext i8 %318 to i64
  %arrayidx410.3 = getelementptr inbounds [17 x i8], ptr @x264_mb_partition_listX_table, i64 0, i64 %idxprom409.3
  %319 = load i8, ptr %arrayidx410.3, align 1
  %tobool411.not.3 = icmp eq i8 %319, 0
  br i1 %tobool411.not.3, label %for.inc429.3, label %if.then412.3

if.then412.3:                                     ; preds = %for.inc429.2
  %320 = load i32, ptr %i_fref394, align 8
  %arrayidx426.3 = getelementptr inbounds i8, ptr %h, i64 25150
  %321 = load i8, ptr %arrayidx426.3, align 1
  %conv427.3 = sext i8 %321 to i32
  %cmp.i1634.3 = icmp eq i32 %320, 2
  br i1 %cmp.i1634.3, label %if.then.i1656.3, label %if.else.i1635.3

if.else.i1635.3:                                  ; preds = %if.then412.3
  %add.i.i1636.3 = add nsw i32 %conv427.3, 1
  %idxprom.i.i1637.3 = sext i32 %add.i.i1636.3 to i64
  %arrayidx.i.i1638.3 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %idxprom.i.i1637.3
  %322 = load i8, ptr %arrayidx.i.i1638.3, align 1
  %conv.i3.i1639.3 = zext i8 %322 to i32
  %323 = load i64, ptr %cur_bits.i.i1598, align 8
  %sh_prom.i.i.i1641.3 = zext nneg i8 %322 to i64
  %shl.i.i.i1642.3 = shl i64 %323, %sh_prom.i.i.i1641.3
  %conv.i.i.i1643.3 = zext i32 %add.i.i1636.3 to i64
  %or.i.i.i1644.3 = or i64 %shl.i.i.i1642.3, %conv.i.i.i1643.3
  store i64 %or.i.i.i1644.3, ptr %cur_bits.i.i1598, align 8
  %sub.i.i.i1646.3 = sub nsw i32 %317, %conv.i3.i1639.3
  store i32 %sub.i.i.i1646.3, ptr %i_left.i, align 8
  %cmp.i.i.i1647.3 = icmp slt i32 %sub.i.i.i1646.3, 33
  br i1 %cmp.i.i.i1647.3, label %if.then.i.i.i1648.3, label %for.inc429.3

if.then.i.i.i1648.3:                              ; preds = %if.else.i1635.3
  %sh_prom6.i.i.i1649.3 = zext nneg i32 %sub.i.i.i1646.3 to i64
  %shl7.i.i.i1650.3 = shl i64 %or.i.i.i1644.3, %sh_prom6.i.i.i1649.3
  %add.i.i.i.i.i1651.3 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i.i.i1650.3)
  %conv8.i.i.i1652.3 = trunc i64 %add.i.i.i.i.i1651.3 to i32
  store i32 %conv8.i.i.i1652.3, ptr %316, align 4
  %324 = load i32, ptr %i_left.i, align 8
  %add.i.i.i1654.3 = add nsw i32 %324, 32
  store i32 %add.i.i.i1654.3, ptr %i_left.i, align 8
  %325 = load ptr, ptr %p.i, align 8
  %add.ptr.i.i.i1655.3 = getelementptr inbounds i8, ptr %325, i64 4
  store ptr %add.ptr.i.i.i1655.3, ptr %p.i, align 8
  br label %for.inc429.3

if.then.i1656.3:                                  ; preds = %if.then412.3
  %xor.i1657.3 = xor i32 %conv427.3, 1
  %326 = load i64, ptr %cur_bits.i.i1598, align 8
  %shl.i.i1659.3 = shl i64 %326, 1
  %conv.i.i1660.3 = zext i32 %xor.i1657.3 to i64
  %or.i.i1661.3 = or i64 %shl.i.i1659.3, %conv.i.i1660.3
  store i64 %or.i.i1661.3, ptr %cur_bits.i.i1598, align 8
  %dec.i.i1663.3 = add nsw i32 %317, -1
  store i32 %dec.i.i1663.3, ptr %i_left.i, align 8
  %cmp.i.i1664.3 = icmp eq i32 %dec.i.i1663.3, 32
  br i1 %cmp.i.i1664.3, label %if.then.i.i1665.3, label %for.inc429.3

if.then.i.i1665.3:                                ; preds = %if.then.i1656.3
  %conv6.i.i1666.3 = trunc i64 %or.i.i1661.3 to i32
  %add5.i.i.i1667.3 = tail call noundef i32 @llvm.bswap.i32(i32 %conv6.i.i1666.3)
  store i32 %add5.i.i.i1667.3, ptr %316, align 4
  %327 = load ptr, ptr %p.i, align 8
  %add.ptr.i.i1669.3 = getelementptr inbounds i8, ptr %327, i64 4
  store ptr %add.ptr.i.i1669.3, ptr %p.i, align 8
  store i32 64, ptr %i_left.i, align 8
  br label %for.inc429.3

for.inc429.3:                                     ; preds = %if.then.i.i1665.3, %if.then.i1656.3, %if.then.i.i.i1648.3, %if.else.i1635.3, %for.inc429.2
  %328 = phi ptr [ %add.ptr.i.i1669.3, %if.then.i.i1665.3 ], [ %316, %if.then.i1656.3 ], [ %add.ptr.i.i.i1655.3, %if.then.i.i.i1648.3 ], [ %316, %if.else.i1635.3 ], [ %316, %for.inc429.2 ]
  %329 = phi i32 [ 64, %if.then.i.i1665.3 ], [ %dec.i.i1663.3, %if.then.i1656.3 ], [ %add.i.i.i1654.3, %if.then.i.i.i1648.3 ], [ %sub.i.i.i1646.3, %if.else.i1635.3 ], [ %317, %for.inc429.2 ]
  %.pre2121.pre = load i8, ptr %i_sub_partition383, align 1
  br label %if.end432

if.end432:                                        ; preds = %for.inc429.3, %bs_write_ue.exit1633.3
  %.pre2121 = phi i8 [ %.pre2121.pre, %for.inc429.3 ], [ %.pre2121.pre2129, %bs_write_ue.exit1633.3 ]
  %330 = phi ptr [ %328, %for.inc429.3 ], [ %282, %bs_write_ue.exit1633.3 ]
  %331 = phi i32 [ %329, %for.inc429.3 ], [ %283, %bs_write_ue.exit1633.3 ]
  %arrayidx436 = getelementptr inbounds i8, ptr %h, i64 21420
  %332 = load i32, ptr %arrayidx436, align 4
  %cmp437 = icmp sgt i32 %332, 1
  br i1 %cmp437, label %for.cond441.preheader, label %if.end473

for.cond441.preheader:                            ; preds = %if.end432
  %idxprom450 = zext i8 %.pre2121 to i64
  %arrayidx451 = getelementptr inbounds [17 x i8], ptr getelementptr inbounds (i8, ptr @x264_mb_partition_listX_table, i64 17), i64 0, i64 %idxprom450
  %333 = load i8, ptr %arrayidx451, align 1
  %tobool452.not = icmp eq i8 %333, 0
  br i1 %tobool452.not, label %for.inc470, label %if.then453

if.then453:                                       ; preds = %for.cond441.preheader
  %arrayidx467 = getelementptr inbounds i8, ptr %h, i64 25172
  %334 = load i8, ptr %arrayidx467, align 1
  %conv468 = sext i8 %334 to i32
  %cmp.i1671 = icmp eq i32 %332, 2
  br i1 %cmp.i1671, label %if.then.i1693, label %if.else.i1672

if.then.i1693:                                    ; preds = %if.then453
  %xor.i1694 = xor i32 %conv468, 1
  %335 = load i64, ptr %cur_bits.i.i1598, align 8
  %shl.i.i1696 = shl i64 %335, 1
  %conv.i.i1697 = zext i32 %xor.i1694 to i64
  %or.i.i1698 = or i64 %shl.i.i1696, %conv.i.i1697
  store i64 %or.i.i1698, ptr %cur_bits.i.i1598, align 8
  %dec.i.i1700 = add nsw i32 %331, -1
  store i32 %dec.i.i1700, ptr %i_left.i, align 8
  %cmp.i.i1701 = icmp eq i32 %dec.i.i1700, 32
  br i1 %cmp.i.i1701, label %if.then.i.i1702, label %for.inc470

if.then.i.i1702:                                  ; preds = %if.then.i1693
  %conv6.i.i1703 = trunc i64 %or.i.i1698 to i32
  %add5.i.i.i1704 = tail call noundef i32 @llvm.bswap.i32(i32 %conv6.i.i1703)
  store i32 %add5.i.i.i1704, ptr %330, align 4
  %336 = load ptr, ptr %p.i, align 8
  %add.ptr.i.i1706 = getelementptr inbounds i8, ptr %336, i64 4
  store ptr %add.ptr.i.i1706, ptr %p.i, align 8
  store i32 64, ptr %i_left.i, align 8
  br label %for.inc470

if.else.i1672:                                    ; preds = %if.then453
  %add.i.i1673 = add nsw i32 %conv468, 1
  %idxprom.i.i1674 = sext i32 %add.i.i1673 to i64
  %arrayidx.i.i1675 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %idxprom.i.i1674
  %337 = load i8, ptr %arrayidx.i.i1675, align 1
  %conv.i3.i1676 = zext i8 %337 to i32
  %338 = load i64, ptr %cur_bits.i.i1598, align 8
  %sh_prom.i.i.i1678 = zext nneg i8 %337 to i64
  %shl.i.i.i1679 = shl i64 %338, %sh_prom.i.i.i1678
  %conv.i.i.i1680 = zext i32 %add.i.i1673 to i64
  %or.i.i.i1681 = or i64 %shl.i.i.i1679, %conv.i.i.i1680
  store i64 %or.i.i.i1681, ptr %cur_bits.i.i1598, align 8
  %sub.i.i.i1683 = sub nsw i32 %331, %conv.i3.i1676
  store i32 %sub.i.i.i1683, ptr %i_left.i, align 8
  %cmp.i.i.i1684 = icmp slt i32 %sub.i.i.i1683, 33
  br i1 %cmp.i.i.i1684, label %if.then.i.i.i1685, label %for.inc470

if.then.i.i.i1685:                                ; preds = %if.else.i1672
  %sh_prom6.i.i.i1686 = zext nneg i32 %sub.i.i.i1683 to i64
  %shl7.i.i.i1687 = shl i64 %or.i.i.i1681, %sh_prom6.i.i.i1686
  %add.i.i.i.i.i1688 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i.i.i1687)
  %conv8.i.i.i1689 = trunc i64 %add.i.i.i.i.i1688 to i32
  store i32 %conv8.i.i.i1689, ptr %330, align 4
  %339 = load i32, ptr %i_left.i, align 8
  %add.i.i.i1691 = add nsw i32 %339, 32
  store i32 %add.i.i.i1691, ptr %i_left.i, align 8
  %340 = load ptr, ptr %p.i, align 8
  %add.ptr.i.i.i1692 = getelementptr inbounds i8, ptr %340, i64 4
  store ptr %add.ptr.i.i.i1692, ptr %p.i, align 8
  br label %for.inc470

for.inc470:                                       ; preds = %if.then.i.i.i1685, %if.else.i1672, %if.then.i.i1702, %if.then.i1693, %for.cond441.preheader
  %341 = phi ptr [ %add.ptr.i.i.i1692, %if.then.i.i.i1685 ], [ %330, %if.else.i1672 ], [ %add.ptr.i.i1706, %if.then.i.i1702 ], [ %330, %if.then.i1693 ], [ %330, %for.cond441.preheader ]
  %342 = phi i32 [ %add.i.i.i1691, %if.then.i.i.i1685 ], [ %sub.i.i.i1683, %if.else.i1672 ], [ 64, %if.then.i.i1702 ], [ %dec.i.i1700, %if.then.i1693 ], [ %331, %for.cond441.preheader ]
  %343 = load i8, ptr %arrayidx385.1, align 1
  %idxprom450.1 = zext i8 %343 to i64
  %arrayidx451.1 = getelementptr inbounds [17 x i8], ptr getelementptr inbounds (i8, ptr @x264_mb_partition_listX_table, i64 17), i64 0, i64 %idxprom450.1
  %344 = load i8, ptr %arrayidx451.1, align 1
  %tobool452.not.1 = icmp eq i8 %344, 0
  br i1 %tobool452.not.1, label %for.inc470.1, label %if.then453.1

if.then453.1:                                     ; preds = %for.inc470
  %345 = load i32, ptr %arrayidx436, align 4
  %arrayidx467.1 = getelementptr inbounds i8, ptr %h, i64 25174
  %346 = load i8, ptr %arrayidx467.1, align 1
  %conv468.1 = sext i8 %346 to i32
  %cmp.i1671.1 = icmp eq i32 %345, 2
  br i1 %cmp.i1671.1, label %if.then.i1693.1, label %if.else.i1672.1

if.else.i1672.1:                                  ; preds = %if.then453.1
  %add.i.i1673.1 = add nsw i32 %conv468.1, 1
  %idxprom.i.i1674.1 = sext i32 %add.i.i1673.1 to i64
  %arrayidx.i.i1675.1 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %idxprom.i.i1674.1
  %347 = load i8, ptr %arrayidx.i.i1675.1, align 1
  %conv.i3.i1676.1 = zext i8 %347 to i32
  %348 = load i64, ptr %cur_bits.i.i1598, align 8
  %sh_prom.i.i.i1678.1 = zext nneg i8 %347 to i64
  %shl.i.i.i1679.1 = shl i64 %348, %sh_prom.i.i.i1678.1
  %conv.i.i.i1680.1 = zext i32 %add.i.i1673.1 to i64
  %or.i.i.i1681.1 = or i64 %shl.i.i.i1679.1, %conv.i.i.i1680.1
  store i64 %or.i.i.i1681.1, ptr %cur_bits.i.i1598, align 8
  %sub.i.i.i1683.1 = sub nsw i32 %342, %conv.i3.i1676.1
  store i32 %sub.i.i.i1683.1, ptr %i_left.i, align 8
  %cmp.i.i.i1684.1 = icmp slt i32 %sub.i.i.i1683.1, 33
  br i1 %cmp.i.i.i1684.1, label %if.then.i.i.i1685.1, label %for.inc470.1

if.then.i.i.i1685.1:                              ; preds = %if.else.i1672.1
  %sh_prom6.i.i.i1686.1 = zext nneg i32 %sub.i.i.i1683.1 to i64
  %shl7.i.i.i1687.1 = shl i64 %or.i.i.i1681.1, %sh_prom6.i.i.i1686.1
  %add.i.i.i.i.i1688.1 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i.i.i1687.1)
  %conv8.i.i.i1689.1 = trunc i64 %add.i.i.i.i.i1688.1 to i32
  store i32 %conv8.i.i.i1689.1, ptr %341, align 4
  %349 = load i32, ptr %i_left.i, align 8
  %add.i.i.i1691.1 = add nsw i32 %349, 32
  store i32 %add.i.i.i1691.1, ptr %i_left.i, align 8
  %350 = load ptr, ptr %p.i, align 8
  %add.ptr.i.i.i1692.1 = getelementptr inbounds i8, ptr %350, i64 4
  store ptr %add.ptr.i.i.i1692.1, ptr %p.i, align 8
  br label %for.inc470.1

if.then.i1693.1:                                  ; preds = %if.then453.1
  %xor.i1694.1 = xor i32 %conv468.1, 1
  %351 = load i64, ptr %cur_bits.i.i1598, align 8
  %shl.i.i1696.1 = shl i64 %351, 1
  %conv.i.i1697.1 = zext i32 %xor.i1694.1 to i64
  %or.i.i1698.1 = or i64 %shl.i.i1696.1, %conv.i.i1697.1
  store i64 %or.i.i1698.1, ptr %cur_bits.i.i1598, align 8
  %dec.i.i1700.1 = add nsw i32 %342, -1
  store i32 %dec.i.i1700.1, ptr %i_left.i, align 8
  %cmp.i.i1701.1 = icmp eq i32 %dec.i.i1700.1, 32
  br i1 %cmp.i.i1701.1, label %if.then.i.i1702.1, label %for.inc470.1

if.then.i.i1702.1:                                ; preds = %if.then.i1693.1
  %conv6.i.i1703.1 = trunc i64 %or.i.i1698.1 to i32
  %add5.i.i.i1704.1 = tail call noundef i32 @llvm.bswap.i32(i32 %conv6.i.i1703.1)
  store i32 %add5.i.i.i1704.1, ptr %341, align 4
  %352 = load ptr, ptr %p.i, align 8
  %add.ptr.i.i1706.1 = getelementptr inbounds i8, ptr %352, i64 4
  store ptr %add.ptr.i.i1706.1, ptr %p.i, align 8
  store i32 64, ptr %i_left.i, align 8
  br label %for.inc470.1

for.inc470.1:                                     ; preds = %if.then.i.i1702.1, %if.then.i1693.1, %if.then.i.i.i1685.1, %if.else.i1672.1, %for.inc470
  %353 = phi ptr [ %add.ptr.i.i1706.1, %if.then.i.i1702.1 ], [ %341, %if.then.i1693.1 ], [ %add.ptr.i.i.i1692.1, %if.then.i.i.i1685.1 ], [ %341, %if.else.i1672.1 ], [ %341, %for.inc470 ]
  %354 = phi i32 [ 64, %if.then.i.i1702.1 ], [ %dec.i.i1700.1, %if.then.i1693.1 ], [ %add.i.i.i1691.1, %if.then.i.i.i1685.1 ], [ %sub.i.i.i1683.1, %if.else.i1672.1 ], [ %342, %for.inc470 ]
  %355 = load i8, ptr %arrayidx385.2, align 1
  %idxprom450.2 = zext i8 %355 to i64
  %arrayidx451.2 = getelementptr inbounds [17 x i8], ptr getelementptr inbounds (i8, ptr @x264_mb_partition_listX_table, i64 17), i64 0, i64 %idxprom450.2
  %356 = load i8, ptr %arrayidx451.2, align 1
  %tobool452.not.2 = icmp eq i8 %356, 0
  br i1 %tobool452.not.2, label %for.inc470.2, label %if.then453.2

if.then453.2:                                     ; preds = %for.inc470.1
  %357 = load i32, ptr %arrayidx436, align 4
  %arrayidx467.2 = getelementptr inbounds i8, ptr %h, i64 25188
  %358 = load i8, ptr %arrayidx467.2, align 1
  %conv468.2 = sext i8 %358 to i32
  %cmp.i1671.2 = icmp eq i32 %357, 2
  br i1 %cmp.i1671.2, label %if.then.i1693.2, label %if.else.i1672.2

if.else.i1672.2:                                  ; preds = %if.then453.2
  %add.i.i1673.2 = add nsw i32 %conv468.2, 1
  %idxprom.i.i1674.2 = sext i32 %add.i.i1673.2 to i64
  %arrayidx.i.i1675.2 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %idxprom.i.i1674.2
  %359 = load i8, ptr %arrayidx.i.i1675.2, align 1
  %conv.i3.i1676.2 = zext i8 %359 to i32
  %360 = load i64, ptr %cur_bits.i.i1598, align 8
  %sh_prom.i.i.i1678.2 = zext nneg i8 %359 to i64
  %shl.i.i.i1679.2 = shl i64 %360, %sh_prom.i.i.i1678.2
  %conv.i.i.i1680.2 = zext i32 %add.i.i1673.2 to i64
  %or.i.i.i1681.2 = or i64 %shl.i.i.i1679.2, %conv.i.i.i1680.2
  store i64 %or.i.i.i1681.2, ptr %cur_bits.i.i1598, align 8
  %sub.i.i.i1683.2 = sub nsw i32 %354, %conv.i3.i1676.2
  store i32 %sub.i.i.i1683.2, ptr %i_left.i, align 8
  %cmp.i.i.i1684.2 = icmp slt i32 %sub.i.i.i1683.2, 33
  br i1 %cmp.i.i.i1684.2, label %if.then.i.i.i1685.2, label %for.inc470.2

if.then.i.i.i1685.2:                              ; preds = %if.else.i1672.2
  %sh_prom6.i.i.i1686.2 = zext nneg i32 %sub.i.i.i1683.2 to i64
  %shl7.i.i.i1687.2 = shl i64 %or.i.i.i1681.2, %sh_prom6.i.i.i1686.2
  %add.i.i.i.i.i1688.2 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i.i.i1687.2)
  %conv8.i.i.i1689.2 = trunc i64 %add.i.i.i.i.i1688.2 to i32
  store i32 %conv8.i.i.i1689.2, ptr %353, align 4
  %361 = load i32, ptr %i_left.i, align 8
  %add.i.i.i1691.2 = add nsw i32 %361, 32
  store i32 %add.i.i.i1691.2, ptr %i_left.i, align 8
  %362 = load ptr, ptr %p.i, align 8
  %add.ptr.i.i.i1692.2 = getelementptr inbounds i8, ptr %362, i64 4
  store ptr %add.ptr.i.i.i1692.2, ptr %p.i, align 8
  br label %for.inc470.2

if.then.i1693.2:                                  ; preds = %if.then453.2
  %xor.i1694.2 = xor i32 %conv468.2, 1
  %363 = load i64, ptr %cur_bits.i.i1598, align 8
  %shl.i.i1696.2 = shl i64 %363, 1
  %conv.i.i1697.2 = zext i32 %xor.i1694.2 to i64
  %or.i.i1698.2 = or i64 %shl.i.i1696.2, %conv.i.i1697.2
  store i64 %or.i.i1698.2, ptr %cur_bits.i.i1598, align 8
  %dec.i.i1700.2 = add nsw i32 %354, -1
  store i32 %dec.i.i1700.2, ptr %i_left.i, align 8
  %cmp.i.i1701.2 = icmp eq i32 %dec.i.i1700.2, 32
  br i1 %cmp.i.i1701.2, label %if.then.i.i1702.2, label %for.inc470.2

if.then.i.i1702.2:                                ; preds = %if.then.i1693.2
  %conv6.i.i1703.2 = trunc i64 %or.i.i1698.2 to i32
  %add5.i.i.i1704.2 = tail call noundef i32 @llvm.bswap.i32(i32 %conv6.i.i1703.2)
  store i32 %add5.i.i.i1704.2, ptr %353, align 4
  %364 = load ptr, ptr %p.i, align 8
  %add.ptr.i.i1706.2 = getelementptr inbounds i8, ptr %364, i64 4
  store ptr %add.ptr.i.i1706.2, ptr %p.i, align 8
  store i32 64, ptr %i_left.i, align 8
  br label %for.inc470.2

for.inc470.2:                                     ; preds = %if.then.i.i1702.2, %if.then.i1693.2, %if.then.i.i.i1685.2, %if.else.i1672.2, %for.inc470.1
  %365 = phi ptr [ %add.ptr.i.i1706.2, %if.then.i.i1702.2 ], [ %353, %if.then.i1693.2 ], [ %add.ptr.i.i.i1692.2, %if.then.i.i.i1685.2 ], [ %353, %if.else.i1672.2 ], [ %353, %for.inc470.1 ]
  %366 = phi i32 [ 64, %if.then.i.i1702.2 ], [ %dec.i.i1700.2, %if.then.i1693.2 ], [ %add.i.i.i1691.2, %if.then.i.i.i1685.2 ], [ %sub.i.i.i1683.2, %if.else.i1672.2 ], [ %354, %for.inc470.1 ]
  %367 = load i8, ptr %arrayidx385.3, align 1
  %idxprom450.3 = zext i8 %367 to i64
  %arrayidx451.3 = getelementptr inbounds [17 x i8], ptr getelementptr inbounds (i8, ptr @x264_mb_partition_listX_table, i64 17), i64 0, i64 %idxprom450.3
  %368 = load i8, ptr %arrayidx451.3, align 1
  %tobool452.not.3 = icmp eq i8 %368, 0
  br i1 %tobool452.not.3, label %for.inc470.3, label %if.then453.3

if.then453.3:                                     ; preds = %for.inc470.2
  %369 = load i32, ptr %arrayidx436, align 4
  %arrayidx467.3 = getelementptr inbounds i8, ptr %h, i64 25190
  %370 = load i8, ptr %arrayidx467.3, align 1
  %conv468.3 = sext i8 %370 to i32
  %cmp.i1671.3 = icmp eq i32 %369, 2
  br i1 %cmp.i1671.3, label %if.then.i1693.3, label %if.else.i1672.3

if.else.i1672.3:                                  ; preds = %if.then453.3
  %add.i.i1673.3 = add nsw i32 %conv468.3, 1
  %idxprom.i.i1674.3 = sext i32 %add.i.i1673.3 to i64
  %arrayidx.i.i1675.3 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %idxprom.i.i1674.3
  %371 = load i8, ptr %arrayidx.i.i1675.3, align 1
  %conv.i3.i1676.3 = zext i8 %371 to i32
  %372 = load i64, ptr %cur_bits.i.i1598, align 8
  %sh_prom.i.i.i1678.3 = zext nneg i8 %371 to i64
  %shl.i.i.i1679.3 = shl i64 %372, %sh_prom.i.i.i1678.3
  %conv.i.i.i1680.3 = zext i32 %add.i.i1673.3 to i64
  %or.i.i.i1681.3 = or i64 %shl.i.i.i1679.3, %conv.i.i.i1680.3
  store i64 %or.i.i.i1681.3, ptr %cur_bits.i.i1598, align 8
  %sub.i.i.i1683.3 = sub nsw i32 %366, %conv.i3.i1676.3
  store i32 %sub.i.i.i1683.3, ptr %i_left.i, align 8
  %cmp.i.i.i1684.3 = icmp slt i32 %sub.i.i.i1683.3, 33
  br i1 %cmp.i.i.i1684.3, label %if.then.i.i.i1685.3, label %for.inc470.3

if.then.i.i.i1685.3:                              ; preds = %if.else.i1672.3
  %sh_prom6.i.i.i1686.3 = zext nneg i32 %sub.i.i.i1683.3 to i64
  %shl7.i.i.i1687.3 = shl i64 %or.i.i.i1681.3, %sh_prom6.i.i.i1686.3
  %add.i.i.i.i.i1688.3 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i.i.i1687.3)
  %conv8.i.i.i1689.3 = trunc i64 %add.i.i.i.i.i1688.3 to i32
  store i32 %conv8.i.i.i1689.3, ptr %365, align 4
  %373 = load i32, ptr %i_left.i, align 8
  %add.i.i.i1691.3 = add nsw i32 %373, 32
  store i32 %add.i.i.i1691.3, ptr %i_left.i, align 8
  %374 = load ptr, ptr %p.i, align 8
  %add.ptr.i.i.i1692.3 = getelementptr inbounds i8, ptr %374, i64 4
  store ptr %add.ptr.i.i.i1692.3, ptr %p.i, align 8
  br label %for.inc470.3

if.then.i1693.3:                                  ; preds = %if.then453.3
  %xor.i1694.3 = xor i32 %conv468.3, 1
  %375 = load i64, ptr %cur_bits.i.i1598, align 8
  %shl.i.i1696.3 = shl i64 %375, 1
  %conv.i.i1697.3 = zext i32 %xor.i1694.3 to i64
  %or.i.i1698.3 = or i64 %shl.i.i1696.3, %conv.i.i1697.3
  store i64 %or.i.i1698.3, ptr %cur_bits.i.i1598, align 8
  %dec.i.i1700.3 = add nsw i32 %366, -1
  store i32 %dec.i.i1700.3, ptr %i_left.i, align 8
  %cmp.i.i1701.3 = icmp eq i32 %dec.i.i1700.3, 32
  br i1 %cmp.i.i1701.3, label %if.then.i.i1702.3, label %for.inc470.3

if.then.i.i1702.3:                                ; preds = %if.then.i1693.3
  %conv6.i.i1703.3 = trunc i64 %or.i.i1698.3 to i32
  %add5.i.i.i1704.3 = tail call noundef i32 @llvm.bswap.i32(i32 %conv6.i.i1703.3)
  store i32 %add5.i.i.i1704.3, ptr %365, align 4
  %376 = load ptr, ptr %p.i, align 8
  %add.ptr.i.i1706.3 = getelementptr inbounds i8, ptr %376, i64 4
  store ptr %add.ptr.i.i1706.3, ptr %p.i, align 8
  store i32 64, ptr %i_left.i, align 8
  br label %for.inc470.3

for.inc470.3:                                     ; preds = %if.then.i.i1702.3, %if.then.i1693.3, %if.then.i.i.i1685.3, %if.else.i1672.3, %for.inc470.2
  %.pre2120 = load i8, ptr %i_sub_partition383, align 1
  br label %if.end473

if.end473:                                        ; preds = %for.inc470.3, %if.end432
  %377 = phi i8 [ %.pre2120, %for.inc470.3 ], [ %.pre2121, %if.end432 ]
  %idxprom484 = zext i8 %377 to i64
  %arrayidx485 = getelementptr inbounds [17 x i8], ptr @x264_mb_partition_listX_table, i64 0, i64 %idxprom484
  %378 = load i8, ptr %arrayidx485, align 1
  %tobool486.not = icmp eq i8 %378, 0
  br i1 %tobool486.not, label %for.inc490, label %if.then487

if.then487:                                       ; preds = %if.end473
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 0, i32 noundef 2)
  br label %for.inc490

for.inc490:                                       ; preds = %if.end473, %if.then487
  %379 = load i8, ptr %arrayidx385.1, align 1
  %idxprom484.1 = zext i8 %379 to i64
  %arrayidx485.1 = getelementptr inbounds [17 x i8], ptr @x264_mb_partition_listX_table, i64 0, i64 %idxprom484.1
  %380 = load i8, ptr %arrayidx485.1, align 1
  %tobool486.not.1 = icmp eq i8 %380, 0
  br i1 %tobool486.not.1, label %for.inc490.1, label %if.then487.1

if.then487.1:                                     ; preds = %for.inc490
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 4, i32 noundef 2)
  br label %for.inc490.1

for.inc490.1:                                     ; preds = %if.then487.1, %for.inc490
  %381 = load i8, ptr %arrayidx385.2, align 1
  %idxprom484.2 = zext i8 %381 to i64
  %arrayidx485.2 = getelementptr inbounds [17 x i8], ptr @x264_mb_partition_listX_table, i64 0, i64 %idxprom484.2
  %382 = load i8, ptr %arrayidx485.2, align 1
  %tobool486.not.2 = icmp eq i8 %382, 0
  br i1 %tobool486.not.2, label %for.inc490.2, label %if.then487.2

if.then487.2:                                     ; preds = %for.inc490.1
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 8, i32 noundef 2)
  br label %for.inc490.2

for.inc490.2:                                     ; preds = %if.then487.2, %for.inc490.1
  %383 = load i8, ptr %arrayidx385.3, align 1
  %idxprom484.3 = zext i8 %383 to i64
  %arrayidx485.3 = getelementptr inbounds [17 x i8], ptr @x264_mb_partition_listX_table, i64 0, i64 %idxprom484.3
  %384 = load i8, ptr %arrayidx485.3, align 1
  %tobool486.not.3 = icmp eq i8 %384, 0
  br i1 %tobool486.not.3, label %for.inc490.3, label %if.then487.3

if.then487.3:                                     ; preds = %for.inc490.2
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 12, i32 noundef 2)
  br label %for.inc490.3

for.inc490.3:                                     ; preds = %if.then487.3, %for.inc490.2
  %385 = load i8, ptr %i_sub_partition383, align 1
  %idxprom503 = zext i8 %385 to i64
  %arrayidx504 = getelementptr inbounds [17 x i8], ptr getelementptr inbounds (i8, ptr @x264_mb_partition_listX_table, i64 17), i64 0, i64 %idxprom503
  %386 = load i8, ptr %arrayidx504, align 1
  %tobool505.not = icmp eq i8 %386, 0
  br i1 %tobool505.not, label %for.inc509, label %if.then506

if.then506:                                       ; preds = %for.inc490.3
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %h, i32 noundef 1, i32 noundef 0, i32 noundef 2)
  br label %for.inc509

for.inc509:                                       ; preds = %for.inc490.3, %if.then506
  %387 = load i8, ptr %arrayidx385.1, align 1
  %idxprom503.1 = zext i8 %387 to i64
  %arrayidx504.1 = getelementptr inbounds [17 x i8], ptr getelementptr inbounds (i8, ptr @x264_mb_partition_listX_table, i64 17), i64 0, i64 %idxprom503.1
  %388 = load i8, ptr %arrayidx504.1, align 1
  %tobool505.not.1 = icmp eq i8 %388, 0
  br i1 %tobool505.not.1, label %for.inc509.1, label %if.then506.1

if.then506.1:                                     ; preds = %for.inc509
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %h, i32 noundef 1, i32 noundef 4, i32 noundef 2)
  br label %for.inc509.1

for.inc509.1:                                     ; preds = %if.then506.1, %for.inc509
  %389 = load i8, ptr %arrayidx385.2, align 1
  %idxprom503.2 = zext i8 %389 to i64
  %arrayidx504.2 = getelementptr inbounds [17 x i8], ptr getelementptr inbounds (i8, ptr @x264_mb_partition_listX_table, i64 17), i64 0, i64 %idxprom503.2
  %390 = load i8, ptr %arrayidx504.2, align 1
  %tobool505.not.2 = icmp eq i8 %390, 0
  br i1 %tobool505.not.2, label %for.inc509.2, label %if.then506.2

if.then506.2:                                     ; preds = %for.inc509.1
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %h, i32 noundef 1, i32 noundef 8, i32 noundef 2)
  br label %for.inc509.2

for.inc509.2:                                     ; preds = %if.then506.2, %for.inc509.1
  %391 = load i8, ptr %arrayidx385.3, align 1
  %idxprom503.3 = zext i8 %391 to i64
  %arrayidx504.3 = getelementptr inbounds [17 x i8], ptr getelementptr inbounds (i8, ptr @x264_mb_partition_listX_table, i64 17), i64 0, i64 %idxprom503.3
  %392 = load i8, ptr %arrayidx504.3, align 1
  %tobool505.not.3 = icmp eq i8 %392, 0
  br i1 %tobool505.not.3, label %if.end697, label %if.then506.3

if.then506.3:                                     ; preds = %for.inc509.2
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %h, i32 noundef 1, i32 noundef 12, i32 noundef 2)
  br label %if.end697

if.then515:                                       ; preds = %if.else125
  %idxprom516 = sext i32 %0 to i64
  %arrayidx517 = getelementptr inbounds [19 x [2 x [2 x i8]]], ptr @x264_mb_type_list_table, i64 0, i64 %idxprom516
  %i_fref520 = getelementptr inbounds i8, ptr %h, i64 21416
  %393 = load i32, ptr %i_fref520, align 8
  %sub522 = add nsw i32 %393, -1
  %arrayidx526 = getelementptr inbounds i8, ptr %h, i64 21420
  %394 = load i32, ptr %arrayidx526, align 4
  %sub527 = add nsw i32 %394, -1
  %i_partition529 = getelementptr inbounds i8, ptr %h, i64 17388
  %395 = load i32, ptr %i_partition529, align 4
  %sub530 = add nsw i32 %395, -14
  %idxprom531 = sext i32 %sub530 to i64
  %sub533 = add nsw i32 %0, -8
  %idxprom534 = sext i32 %sub533 to i64
  %arrayidx535 = getelementptr inbounds [3 x [9 x i8]], ptr @mb_type_b_to_golomb, i64 0, i64 %idxprom531, i64 %idxprom534
  %396 = load i8, ptr %arrayidx535, align 1
  %conv536 = zext i8 %396 to i64
  %add.i1708 = add nuw nsw i64 %conv536, 1
  %arrayidx.i1710 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %add.i1708
  %397 = load i8, ptr %arrayidx.i1710, align 1
  %conv.i1711 = zext i8 %397 to i32
  %cur_bits.i.i1712 = getelementptr inbounds i8, ptr %h, i64 1816
  %398 = load i64, ptr %cur_bits.i.i1712, align 8
  %sh_prom.i.i1713 = zext nneg i8 %397 to i64
  %shl.i.i1714 = shl i64 %398, %sh_prom.i.i1713
  %or.i.i1716 = or i64 %shl.i.i1714, %add.i1708
  store i64 %or.i.i1716, ptr %cur_bits.i.i1712, align 8
  %sub.i.i1718 = sub nsw i32 %16, %conv.i1711
  store i32 %sub.i.i1718, ptr %i_left.i, align 8
  %cmp.i.i1719 = icmp slt i32 %sub.i.i1718, 33
  br i1 %cmp.i.i1719, label %if.then.i.i1720, label %bs_write_ue.exit1728

if.then.i.i1720:                                  ; preds = %if.then515
  %sh_prom6.i.i1721 = zext nneg i32 %sub.i.i1718 to i64
  %shl7.i.i1722 = shl i64 %or.i.i1716, %sh_prom6.i.i1721
  %add.i.i.i.i1723 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i.i1722)
  %conv8.i.i1724 = trunc i64 %add.i.i.i.i1723 to i32
  store i32 %conv8.i.i1724, ptr %15, align 4
  %399 = load i32, ptr %i_left.i, align 8
  %add.i.i1726 = add nsw i32 %399, 32
  store i32 %add.i.i1726, ptr %i_left.i, align 8
  %400 = load ptr, ptr %p.i, align 8
  %add.ptr.i.i1727 = getelementptr inbounds i8, ptr %400, i64 4
  store ptr %add.ptr.i.i1727, ptr %p.i, align 8
  %.pre2126 = load i32, ptr %i_partition529, align 4
  br label %bs_write_ue.exit1728

bs_write_ue.exit1728:                             ; preds = %if.then515, %if.then.i.i1720
  %401 = phi i32 [ %395, %if.then515 ], [ %.pre2126, %if.then.i.i1720 ]
  %cmp539 = icmp eq i32 %401, 16
  %tobool542.not = icmp eq i32 %sub522, 0
  br i1 %cmp539, label %if.then541, label %if.else582

if.then541:                                       ; preds = %bs_write_ue.exit1728
  br i1 %tobool542.not, label %if.end556, label %land.lhs.true543

land.lhs.true543:                                 ; preds = %if.then541
  %402 = load i8, ptr %arrayidx517, align 4
  %tobool547.not = icmp eq i8 %402, 0
  br i1 %tobool547.not, label %if.end556, label %if.then548

if.then548:                                       ; preds = %land.lhs.true543
  %arrayidx554 = getelementptr inbounds i8, ptr %h, i64 25132
  %403 = load i8, ptr %arrayidx554, align 1
  %conv555 = sext i8 %403 to i32
  tail call fastcc void @bs_write_te(ptr noundef nonnull %bs, i32 noundef %sub522, i32 noundef %conv555)
  br label %if.end556

if.end556:                                        ; preds = %if.then548, %land.lhs.true543, %if.then541
  %tobool557.not = icmp eq i32 %sub527, 0
  br i1 %tobool557.not, label %if.end571, label %land.lhs.true558

land.lhs.true558:                                 ; preds = %if.end556
  %arrayidx559 = getelementptr inbounds i8, ptr %arrayidx517, i64 2
  %404 = load i8, ptr %arrayidx559, align 2
  %tobool562.not = icmp eq i8 %404, 0
  br i1 %tobool562.not, label %if.end571, label %if.then563

if.then563:                                       ; preds = %land.lhs.true558
  %arrayidx569 = getelementptr inbounds i8, ptr %h, i64 25172
  %405 = load i8, ptr %arrayidx569, align 1
  %conv570 = sext i8 %405 to i32
  tail call fastcc void @bs_write_te(ptr noundef nonnull %bs, i32 noundef %sub527, i32 noundef %conv570)
  br label %if.end571

if.end571:                                        ; preds = %if.then563, %land.lhs.true558, %if.end556
  %406 = load i8, ptr %arrayidx517, align 4
  %tobool574.not = icmp eq i8 %406, 0
  br i1 %tobool574.not, label %if.end576, label %if.then575

if.then575:                                       ; preds = %if.end571
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 0, i32 noundef 4)
  br label %if.end576

if.end576:                                        ; preds = %if.then575, %if.end571
  %arrayidx577 = getelementptr inbounds i8, ptr %arrayidx517, i64 2
  %407 = load i8, ptr %arrayidx577, align 2
  %tobool579.not = icmp eq i8 %407, 0
  br i1 %tobool579.not, label %if.end697, label %if.then580

if.then580:                                       ; preds = %if.end576
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %h, i32 noundef 1, i32 noundef 0, i32 noundef 4)
  br label %if.end697

if.else582:                                       ; preds = %bs_write_ue.exit1728
  br i1 %tobool542.not, label %if.end612, label %land.lhs.true584

land.lhs.true584:                                 ; preds = %if.else582
  %408 = load i8, ptr %arrayidx517, align 4
  %tobool588.not = icmp eq i8 %408, 0
  br i1 %tobool588.not, label %land.lhs.true599, label %if.then589

if.then589:                                       ; preds = %land.lhs.true584
  %arrayidx595 = getelementptr inbounds i8, ptr %h, i64 25132
  %409 = load i8, ptr %arrayidx595, align 1
  %conv596 = sext i8 %409 to i32
  tail call fastcc void @bs_write_te(ptr noundef nonnull %bs, i32 noundef %sub522, i32 noundef %conv596)
  br label %land.lhs.true599

land.lhs.true599:                                 ; preds = %land.lhs.true584, %if.then589
  %arrayidx601 = getelementptr inbounds i8, ptr %arrayidx517, i64 1
  %410 = load i8, ptr %arrayidx601, align 1
  %tobool603.not = icmp eq i8 %410, 0
  br i1 %tobool603.not, label %if.end612, label %if.then604

if.then604:                                       ; preds = %land.lhs.true599
  %arrayidx610 = getelementptr inbounds i8, ptr %h, i64 25150
  %411 = load i8, ptr %arrayidx610, align 1
  %conv611 = sext i8 %411 to i32
  tail call fastcc void @bs_write_te(ptr noundef nonnull %bs, i32 noundef %sub522, i32 noundef %conv611)
  br label %if.end612

if.end612:                                        ; preds = %if.else582, %if.then604, %land.lhs.true599
  %tobool613.not = icmp eq i32 %sub527, 0
  br i1 %tobool613.not, label %if.end642, label %land.lhs.true614

land.lhs.true614:                                 ; preds = %if.end612
  %arrayidx615 = getelementptr inbounds i8, ptr %arrayidx517, i64 2
  %412 = load i8, ptr %arrayidx615, align 2
  %tobool618.not = icmp eq i8 %412, 0
  br i1 %tobool618.not, label %land.lhs.true629, label %if.then619

if.then619:                                       ; preds = %land.lhs.true614
  %arrayidx625 = getelementptr inbounds i8, ptr %h, i64 25172
  %413 = load i8, ptr %arrayidx625, align 1
  %conv626 = sext i8 %413 to i32
  tail call fastcc void @bs_write_te(ptr noundef nonnull %bs, i32 noundef %sub527, i32 noundef %conv626)
  br label %land.lhs.true629

land.lhs.true629:                                 ; preds = %land.lhs.true614, %if.then619
  %arrayidx631 = getelementptr inbounds i8, ptr %arrayidx517, i64 3
  %414 = load i8, ptr %arrayidx631, align 1
  %tobool633.not = icmp eq i8 %414, 0
  br i1 %tobool633.not, label %if.end642, label %if.then634

if.then634:                                       ; preds = %land.lhs.true629
  %arrayidx640 = getelementptr inbounds i8, ptr %h, i64 25190
  %415 = load i8, ptr %arrayidx640, align 1
  %conv641 = sext i8 %415 to i32
  tail call fastcc void @bs_write_te(ptr noundef nonnull %bs, i32 noundef %sub527, i32 noundef %conv641)
  br label %if.end642

if.end642:                                        ; preds = %if.end612, %if.then634, %land.lhs.true629
  %416 = load i32, ptr %i_partition529, align 4
  %cmp645 = icmp eq i32 %416, 14
  %417 = load i8, ptr %arrayidx517, align 4
  %tobool650.not = icmp eq i8 %417, 0
  br i1 %cmp645, label %if.then647, label %if.else668

if.then647:                                       ; preds = %if.end642
  br i1 %tobool650.not, label %if.end652, label %if.then651

if.then651:                                       ; preds = %if.then647
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 0, i32 noundef 4)
  br label %if.end652

if.end652:                                        ; preds = %if.then651, %if.then647
  %arrayidx654 = getelementptr inbounds i8, ptr %arrayidx517, i64 1
  %418 = load i8, ptr %arrayidx654, align 1
  %tobool655.not = icmp eq i8 %418, 0
  br i1 %tobool655.not, label %if.end657, label %if.then656

if.then656:                                       ; preds = %if.end652
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 8, i32 noundef 4)
  br label %if.end657

if.end657:                                        ; preds = %if.then656, %if.end652
  %arrayidx658 = getelementptr inbounds i8, ptr %arrayidx517, i64 2
  %419 = load i8, ptr %arrayidx658, align 2
  %tobool660.not = icmp eq i8 %419, 0
  br i1 %tobool660.not, label %if.end662, label %if.then661

if.then661:                                       ; preds = %if.end657
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %h, i32 noundef 1, i32 noundef 0, i32 noundef 4)
  br label %if.end662

if.end662:                                        ; preds = %if.then661, %if.end657
  %arrayidx664 = getelementptr inbounds i8, ptr %arrayidx517, i64 3
  %420 = load i8, ptr %arrayidx664, align 1
  %tobool665.not = icmp eq i8 %420, 0
  br i1 %tobool665.not, label %if.end697, label %if.then666

if.then666:                                       ; preds = %if.end662
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %h, i32 noundef 1, i32 noundef 8, i32 noundef 4)
  br label %if.end697

if.else668:                                       ; preds = %if.end642
  br i1 %tobool650.not, label %if.end673, label %if.then672

if.then672:                                       ; preds = %if.else668
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 0, i32 noundef 2)
  br label %if.end673

if.end673:                                        ; preds = %if.then672, %if.else668
  %arrayidx675 = getelementptr inbounds i8, ptr %arrayidx517, i64 1
  %421 = load i8, ptr %arrayidx675, align 1
  %tobool676.not = icmp eq i8 %421, 0
  br i1 %tobool676.not, label %if.end678, label %if.then677

if.then677:                                       ; preds = %if.end673
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 4, i32 noundef 2)
  br label %if.end678

if.end678:                                        ; preds = %if.then677, %if.end673
  %arrayidx679 = getelementptr inbounds i8, ptr %arrayidx517, i64 2
  %422 = load i8, ptr %arrayidx679, align 2
  %tobool681.not = icmp eq i8 %422, 0
  br i1 %tobool681.not, label %if.end683, label %if.then682

if.then682:                                       ; preds = %if.end678
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %h, i32 noundef 1, i32 noundef 0, i32 noundef 2)
  br label %if.end683

if.end683:                                        ; preds = %if.then682, %if.end678
  %arrayidx685 = getelementptr inbounds i8, ptr %arrayidx517, i64 3
  %423 = load i8, ptr %arrayidx685, align 1
  %tobool686.not = icmp eq i8 %423, 0
  br i1 %tobool686.not, label %if.end697, label %if.then687

if.then687:                                       ; preds = %if.end683
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %h, i32 noundef 1, i32 noundef 4, i32 noundef 2)
  br label %if.end697

if.else691:                                       ; preds = %if.else125
  %cur_bits.i1729 = getelementptr inbounds i8, ptr %h, i64 1816
  %424 = load i64, ptr %cur_bits.i1729, align 8
  %shl.i1730 = shl i64 %424, 1
  %or.i1731 = or disjoint i64 %shl.i1730, 1
  store i64 %or.i1731, ptr %cur_bits.i1729, align 8
  %dec.i1733 = add nsw i32 %16, -1
  store i32 %dec.i1733, ptr %i_left.i, align 8
  %cmp.i1734 = icmp eq i32 %dec.i1733, 32
  br i1 %cmp.i1734, label %if.then.i1735, label %if.end697

if.then.i1735:                                    ; preds = %if.else691
  %conv6.i1736 = trunc i64 %or.i1731 to i32
  %add5.i.i1737 = tail call noundef i32 @llvm.bswap.i32(i32 %conv6.i1736)
  store i32 %add5.i.i1737, ptr %15, align 4
  %425 = load ptr, ptr %p.i, align 8
  %add.ptr.i1739 = getelementptr inbounds i8, ptr %425, i64 4
  store ptr %add.ptr.i1739, ptr %p.i, align 8
  store i32 64, ptr %i_left.i, align 8
  br label %if.end697

if.end697:                                        ; preds = %for.inc509.2, %if.then506.3, %cavlc_mb8x8_mvd.exit.2, %sw.bb10.i.3, %sw.bb5.i.3, %sw.bb1.i.3, %sw.bb.i.3, %if.then.i1735, %if.else691, %if.then.i.i1398, %bs_write_ue.exit1385, %if.then.i.i1329, %for.cond.cleanup98, %if.then580, %if.end576, %if.end683, %if.then687, %if.end662, %if.then666, %if.then151, %if.end173, %if.end249, %if.end211
  %426 = load ptr, ptr %p.i, align 8
  %427 = load ptr, ptr %bs, align 8
  %sub.ptr.lhs.cast.i1742 = ptrtoint ptr %426 to i64
  %sub.ptr.rhs.cast.i1743 = ptrtoint ptr %427 to i64
  %sub.ptr.sub.i1744 = sub i64 %sub.ptr.lhs.cast.i1742, %sub.ptr.rhs.cast.i1743
  %428 = load i32, ptr %i_left.i, align 8
  %sub.ptr.sub.tr.i1746 = trunc i64 %sub.ptr.sub.i1744 to i32
  %429 = shl i32 %sub.ptr.sub.tr.i1746, 3
  %reass.sub.i1747 = sub i32 %429, %428
  %stat700 = getelementptr inbounds i8, ptr %h, i64 26712
  %430 = load i32, ptr %stat700, align 8
  %sub699 = add i32 %430, %reass.sub.i.neg2073
  %add703 = add i32 %sub699, %reass.sub.i1747
  store i32 %add703, ptr %stat700, align 8
  br i1 %or.cond, label %if.then709, label %if.else718

if.then709:                                       ; preds = %if.end697
  %i_cbp_chroma711 = getelementptr inbounds i8, ptr %h, i64 17404
  %431 = load i32, ptr %i_cbp_chroma711, align 4
  %shl = shl i32 %431, 4
  %i_cbp_luma713 = getelementptr inbounds i8, ptr %h, i64 17400
  %432 = load i32, ptr %i_cbp_luma713, align 8
  %or714 = or i32 %shl, %432
  %idxprom715 = sext i32 %or714 to i64
  %arrayidx716 = getelementptr inbounds [48 x i8], ptr @intra4x4_cbp_to_golomb, i64 0, i64 %idxprom715
  %433 = load i8, ptr %arrayidx716, align 1
  %conv717 = zext i8 %433 to i64
  %add.i1749 = add nuw nsw i64 %conv717, 1
  %arrayidx.i1751 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %add.i1749
  %434 = load i8, ptr %arrayidx.i1751, align 1
  %conv.i1752 = zext i8 %434 to i32
  %cur_bits.i.i1753 = getelementptr inbounds i8, ptr %h, i64 1816
  %435 = load i64, ptr %cur_bits.i.i1753, align 8
  %sh_prom.i.i1754 = zext nneg i8 %434 to i64
  %shl.i.i1755 = shl i64 %435, %sh_prom.i.i1754
  %or.i.i1757 = or i64 %shl.i.i1755, %add.i1749
  store i64 %or.i.i1757, ptr %cur_bits.i.i1753, align 8
  %sub.i.i1759 = sub nsw i32 %428, %conv.i1752
  store i32 %sub.i.i1759, ptr %i_left.i, align 8
  %cmp.i.i1760 = icmp slt i32 %sub.i.i1759, 33
  br i1 %cmp.i.i1760, label %if.end732.sink.split, label %if.end732

if.else718:                                       ; preds = %if.end697
  %cmp719.not = icmp eq i32 %0, 2
  br i1 %cmp719.not, label %if.end732, label %if.then721

if.then721:                                       ; preds = %if.else718
  %i_cbp_chroma723 = getelementptr inbounds i8, ptr %h, i64 17404
  %436 = load i32, ptr %i_cbp_chroma723, align 4
  %shl724 = shl i32 %436, 4
  %i_cbp_luma726 = getelementptr inbounds i8, ptr %h, i64 17400
  %437 = load i32, ptr %i_cbp_luma726, align 8
  %or727 = or i32 %shl724, %437
  %idxprom728 = sext i32 %or727 to i64
  %arrayidx729 = getelementptr inbounds [48 x i8], ptr @inter_cbp_to_golomb, i64 0, i64 %idxprom728
  %438 = load i8, ptr %arrayidx729, align 1
  %conv730 = zext i8 %438 to i64
  %add.i1770 = add nuw nsw i64 %conv730, 1
  %arrayidx.i1772 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %add.i1770
  %439 = load i8, ptr %arrayidx.i1772, align 1
  %conv.i1773 = zext i8 %439 to i32
  %cur_bits.i.i1774 = getelementptr inbounds i8, ptr %h, i64 1816
  %440 = load i64, ptr %cur_bits.i.i1774, align 8
  %sh_prom.i.i1775 = zext nneg i8 %439 to i64
  %shl.i.i1776 = shl i64 %440, %sh_prom.i.i1775
  %or.i.i1778 = or i64 %shl.i.i1776, %add.i1770
  store i64 %or.i.i1778, ptr %cur_bits.i.i1774, align 8
  %sub.i.i1780 = sub nsw i32 %428, %conv.i1773
  store i32 %sub.i.i1780, ptr %i_left.i, align 8
  %cmp.i.i1781 = icmp slt i32 %sub.i.i1780, 33
  br i1 %cmp.i.i1781, label %if.end732.sink.split, label %if.end732

if.end732.sink.split:                             ; preds = %if.then721, %if.then709
  %sub.i.i1780.sink = phi i32 [ %sub.i.i1759, %if.then709 ], [ %sub.i.i1780, %if.then721 ]
  %or.i.i1778.sink = phi i64 [ %or.i.i1757, %if.then709 ], [ %or.i.i1778, %if.then721 ]
  %sh_prom6.i.i1783 = zext nneg i32 %sub.i.i1780.sink to i64
  %shl7.i.i1784 = shl i64 %or.i.i1778.sink, %sh_prom6.i.i1783
  %add.i.i.i.i1785 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i.i1784)
  %conv8.i.i1786 = trunc i64 %add.i.i.i.i1785 to i32
  store i32 %conv8.i.i1786, ptr %426, align 4
  %441 = load i32, ptr %i_left.i, align 8
  %add.i.i1788 = add nsw i32 %441, 32
  store i32 %add.i.i1788, ptr %i_left.i, align 8
  %442 = load ptr, ptr %p.i, align 8
  %add.ptr.i.i1789 = getelementptr inbounds i8, ptr %442, i64 4
  store ptr %add.ptr.i.i1789, ptr %p.i, align 8
  br label %if.end732

if.end732:                                        ; preds = %if.end732.sink.split, %if.then721, %if.then709, %if.else718
  %443 = phi ptr [ %426, %if.then721 ], [ %426, %if.then709 ], [ %426, %if.else718 ], [ %add.ptr.i.i1789, %if.end732.sink.split ]
  %444 = phi i32 [ %sub.i.i1780, %if.then721 ], [ %sub.i.i1759, %if.then709 ], [ %428, %if.else718 ], [ %add.i.i1788, %if.end732.sink.split ]
  %pps.i = getelementptr inbounds i8, ptr %h, i64 3328
  %445 = load ptr, ptr %pps.i, align 16
  %b_transform_8x8_mode.i = getelementptr inbounds i8, ptr %445, i64 60
  %446 = load i32, ptr %b_transform_8x8_mode.i, align 4
  %tobool.not.i = icmp eq i32 %446, 0
  br i1 %tobool.not.i, label %if.end742, label %if.end.i

if.end.i:                                         ; preds = %if.end732
  %447 = load i32, ptr %i_type, align 8
  %cmp.not.i = icmp eq i32 %447, 5
  br i1 %cmp.not.i, label %if.end4.i, label %if.then1.i

if.then1.i:                                       ; preds = %if.end.i
  %idxprom.i1791 = sext i32 %447 to i64
  %arrayidx.i1792 = getelementptr inbounds [19 x i8], ptr @x264_mb_transform_8x8_allowed.partition_tab, i64 0, i64 %idxprom.i1791
  %448 = load i8, ptr %arrayidx.i1792, align 1
  %conv.i1793 = zext i8 %448 to i32
  br label %x264_mb_transform_8x8_allowed.exit

if.end4.i:                                        ; preds = %if.end.i
  %i_sub_partition.i1795 = getelementptr inbounds i8, ptr %h, i64 17392
  %449 = load i32, ptr %i_sub_partition.i1795, align 16
  %cmp6.i = icmp eq i32 %449, 50529027
  %conv7.i = zext i1 %cmp6.i to i32
  br label %x264_mb_transform_8x8_allowed.exit

x264_mb_transform_8x8_allowed.exit:               ; preds = %if.then1.i, %if.end4.i
  %retval.0.i1794 = phi i32 [ %conv.i1793, %if.then1.i ], [ %conv7.i, %if.end4.i ]
  %tobool734.not = icmp eq i32 %retval.0.i1794, 0
  br i1 %tobool734.not, label %if.end742, label %land.lhs.true735

land.lhs.true735:                                 ; preds = %x264_mb_transform_8x8_allowed.exit
  %i_cbp_luma737 = getelementptr inbounds i8, ptr %h, i64 17400
  %450 = load i32, ptr %i_cbp_luma737, align 8
  %tobool738.not = icmp eq i32 %450, 0
  br i1 %tobool738.not, label %if.end742, label %if.then739

if.then739:                                       ; preds = %land.lhs.true735
  %b_transform_8x8741 = getelementptr inbounds i8, ptr %h, i64 17396
  %451 = load i32, ptr %b_transform_8x8741, align 4
  %cur_bits.i1796 = getelementptr inbounds i8, ptr %h, i64 1816
  %452 = load i64, ptr %cur_bits.i1796, align 8
  %shl.i1797 = shl i64 %452, 1
  %conv.i1798 = zext i32 %451 to i64
  %or.i1799 = or i64 %shl.i1797, %conv.i1798
  store i64 %or.i1799, ptr %cur_bits.i1796, align 8
  %dec.i1801 = add nsw i32 %444, -1
  store i32 %dec.i1801, ptr %i_left.i, align 8
  %cmp.i1802 = icmp eq i32 %dec.i1801, 32
  br i1 %cmp.i1802, label %if.then.i1804, label %if.end742

if.then.i1804:                                    ; preds = %if.then739
  %conv6.i1805 = trunc i64 %or.i1799 to i32
  %add5.i.i1806 = tail call noundef i32 @llvm.bswap.i32(i32 %conv6.i1805)
  store i32 %add5.i.i1806, ptr %443, align 4
  %453 = load ptr, ptr %p.i, align 8
  %add.ptr.i1808 = getelementptr inbounds i8, ptr %453, i64 4
  store ptr %add.ptr.i1808, ptr %p.i, align 8
  store i32 64, ptr %i_left.i, align 8
  br label %if.end742

if.end742:                                        ; preds = %if.end732, %if.then.i1804, %if.then739, %land.lhs.true735, %x264_mb_transform_8x8_allowed.exit
  %454 = phi ptr [ %443, %if.end732 ], [ %add.ptr.i1808, %if.then.i1804 ], [ %443, %if.then739 ], [ %443, %land.lhs.true735 ], [ %443, %x264_mb_transform_8x8_allowed.exit ]
  %455 = phi i32 [ %444, %if.end732 ], [ 64, %if.then.i1804 ], [ %dec.i1801, %if.then739 ], [ %444, %land.lhs.true735 ], [ %444, %x264_mb_transform_8x8_allowed.exit ]
  %cmp743 = icmp eq i32 %0, 2
  br i1 %cmp743, label %if.then745, label %if.else817

if.then745:                                       ; preds = %if.end742
  %i_qp.i = getelementptr inbounds i8, ptr %h, i64 25792
  %456 = load i32, ptr %i_qp.i, align 16
  %i_last_qp.i = getelementptr inbounds i8, ptr %h, i64 25800
  %457 = load i32, ptr %i_last_qp.i, align 8
  %sub.i1810 = sub nsw i32 %456, %457
  %458 = load i32, ptr %i_type, align 8
  %cmp.i1812 = icmp eq i32 %458, 2
  br i1 %cmp.i1812, label %land.lhs.true.i, label %if.end.i1813

land.lhs.true.i:                                  ; preds = %if.then745
  %i_cbp_luma.i = getelementptr inbounds i8, ptr %h, i64 17400
  %459 = load i32, ptr %i_cbp_luma.i, align 8
  %i_cbp_chroma.i = getelementptr inbounds i8, ptr %h, i64 17404
  %460 = load i32, ptr %i_cbp_chroma.i, align 4
  %or.i1837 = or i32 %460, %459
  %tobool.not.i1838 = icmp eq i32 %or.i1837, 0
  br i1 %tobool.not.i1838, label %land.lhs.true5.i, label %if.end.i1813

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %arrayidx.i1839 = getelementptr inbounds i8, ptr %h, i64 25116
  %461 = load i8, ptr %arrayidx.i1839, align 1
  %tobool7.not.i = icmp eq i8 %461, 0
  br i1 %tobool7.not.i, label %if.end.thread.i, label %if.end.i1813

if.end.thread.i:                                  ; preds = %land.lhs.true5.i
  store i32 %457, ptr %i_qp.i, align 16
  br label %if.end21.thread.i

if.end.i1813:                                     ; preds = %land.lhs.true5.i, %land.lhs.true.i, %if.then745
  %tobool12.not.i = icmp eq i32 %456, %457
  br i1 %tobool12.not.i, label %if.end21.thread.i, label %if.then13.i

if.then13.i:                                      ; preds = %if.end.i1813
  %cmp14.i = icmp slt i32 %sub.i1810, -26
  %add.i1814 = add nsw i32 %sub.i1810, 52
  %cmp16.i = icmp sgt i32 %sub.i1810, 25
  %sub18.i = add nsw i32 %sub.i1810, -52
  %spec.select.i = select i1 %cmp16.i, i32 %sub18.i, i32 %sub.i1810
  %i_dqp.1.i = select i1 %cmp14.i, i32 %add.i1814, i32 %spec.select.i
  %i_dqp.1.fr.i = freeze i32 %i_dqp.1.i
  %mul.i.i = shl nsw i32 %i_dqp.1.fr.i, 1
  %sub.i.i1815 = sub nsw i32 1, %mul.i.i
  %cmp.i.i1816 = icmp sgt i32 %i_dqp.1.fr.i, 0
  %spec.select44.i = select i1 %cmp.i.i1816, i32 %mul.i.i, i32 %sub.i.i1815
  br label %if.end21.thread.i

if.end21.thread.i:                                ; preds = %if.then13.i, %if.end.i1813, %if.end.thread.i
  %462 = phi i32 [ %spec.select44.i, %if.then13.i ], [ 1, %if.end.i1813 ], [ 1, %if.end.thread.i ]
  %cmp2.i.i = icmp sgt i32 %462, 255
  %shr.i.i = lshr i32 %462, 8
  %size.0.i.i = select i1 %cmp2.i.i, i32 16, i32 0
  %tmp.1.i.i = select i1 %cmp2.i.i, i32 %shr.i.i, i32 %462
  %idxprom.i.i1817 = sext i32 %tmp.1.i.i to i64
  %arrayidx.i.i1818 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %idxprom.i.i1817
  %463 = load i8, ptr %arrayidx.i.i1818, align 1
  %conv.i.i1819 = zext i8 %463 to i32
  %add.i.i1820 = add nuw nsw i32 %size.0.i.i, %conv.i.i1819
  %cur_bits.i.i.i1821 = getelementptr inbounds i8, ptr %h, i64 1816
  %464 = load i64, ptr %cur_bits.i.i.i1821, align 8
  %sh_prom.i.i.i1822 = zext nneg i32 %add.i.i1820 to i64
  %shl.i.i.i1823 = shl i64 %464, %sh_prom.i.i.i1822
  %conv.i.i.i1824 = zext i32 %462 to i64
  %or.i.i.i1825 = or i64 %shl.i.i.i1823, %conv.i.i.i1824
  store i64 %or.i.i.i1825, ptr %cur_bits.i.i.i1821, align 8
  %sub.i.i.i1827 = sub nsw i32 %455, %add.i.i1820
  store i32 %sub.i.i.i1827, ptr %i_left.i, align 8
  %cmp.i.i.i1828 = icmp slt i32 %sub.i.i.i1827, 33
  br i1 %cmp.i.i.i1828, label %if.then.i.i.i1829, label %cavlc_qp_delta.exit

if.then.i.i.i1829:                                ; preds = %if.end21.thread.i
  %sh_prom6.i.i.i1830 = zext nneg i32 %sub.i.i.i1827 to i64
  %shl7.i.i.i1831 = shl i64 %or.i.i.i1825, %sh_prom6.i.i.i1830
  %add.i.i.i.i.i1832 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i.i.i1831)
  %conv8.i.i.i1833 = trunc i64 %add.i.i.i.i.i1832 to i32
  store i32 %conv8.i.i.i1833, ptr %454, align 4
  %465 = load i32, ptr %i_left.i, align 8
  %add.i.i.i1835 = add nsw i32 %465, 32
  store i32 %add.i.i.i1835, ptr %i_left.i, align 8
  %466 = load ptr, ptr %p.i, align 8
  %add.ptr.i.i.i1836 = getelementptr inbounds i8, ptr %466, i64 4
  store ptr %add.ptr.i.i.i1836, ptr %p.i, align 8
  br label %cavlc_qp_delta.exit

cavlc_qp_delta.exit:                              ; preds = %if.end21.thread.i, %if.then.i.i.i1829
  %467 = phi ptr [ %454, %if.end21.thread.i ], [ %add.ptr.i.i.i1836, %if.then.i.i.i1829 ]
  %468 = phi i32 [ %sub.i.i.i1827, %if.end21.thread.i ], [ %add.i.i.i1835, %if.then.i.i.i1829 ]
  %non_zero_count.i = getelementptr inbounds i8, ptr %h, i64 25072
  %arrayidx2.i1840 = getelementptr inbounds i8, ptr %h, i64 25083
  %469 = load i8, ptr %arrayidx2.i1840, align 1
  %conv.i1841 = zext i8 %469 to i32
  %arrayidx10.i = getelementptr inbounds i8, ptr %h, i64 25076
  %470 = load i8, ptr %arrayidx10.i, align 1
  %conv11.i = zext i8 %470 to i32
  %add.i1842 = add nuw nsw i32 %conv11.i, %conv.i1841
  %cmp.i1843 = icmp ult i32 %add.i1842, 128
  %add13.i = add nuw nsw i32 %add.i1842, 1
  %shr.i1844 = lshr i32 %add13.i, 1
  %i_ret.0.i = select i1 %cmp.i1843, i32 %shr.i1844, i32 %add.i1842
  %and.i1845 = and i32 %i_ret.0.i, 127
  %idxprom747 = zext nneg i32 %and.i1845 to i64
  %arrayidx748 = getelementptr inbounds [17 x i8], ptr @ct_index, i64 0, i64 %idxprom747
  %471 = load i8, ptr %arrayidx748, align 1
  %arrayidx753 = getelementptr inbounds i8, ptr %h, i64 25116
  %472 = load i8, ptr %arrayidx753, align 1
  %tobool754.not = icmp eq i8 %472, 0
  br i1 %tobool754.not, label %if.then755, label %if.else764

if.then755:                                       ; preds = %cavlc_qp_delta.exit
  %idxprom758 = zext i8 %471 to i64
  %arrayidx759 = getelementptr inbounds [5 x %struct.vlc_t], ptr @x264_coeff0_token, i64 0, i64 %idxprom758
  %i_size = getelementptr inbounds i8, ptr %arrayidx759, i64 1
  %473 = load i8, ptr %i_size, align 1
  %conv760 = zext i8 %473 to i32
  %474 = load i8, ptr %arrayidx759, align 1
  %475 = load i64, ptr %cur_bits.i.i.i1821, align 8
  %sh_prom.i = zext nneg i8 %473 to i64
  %shl.i1847 = shl i64 %475, %sh_prom.i
  %conv.i1848 = zext i8 %474 to i64
  %or.i1849 = or i64 %shl.i1847, %conv.i1848
  store i64 %or.i1849, ptr %cur_bits.i.i.i1821, align 8
  %sub.i1851 = sub nsw i32 %468, %conv760
  store i32 %sub.i1851, ptr %i_left.i, align 8
  %cmp.i1852 = icmp slt i32 %sub.i1851, 33
  br i1 %cmp.i1852, label %if.then.i1854, label %if.end768

if.then.i1854:                                    ; preds = %if.then755
  %sh_prom6.i1855 = zext nneg i32 %sub.i1851 to i64
  %shl7.i1856 = shl i64 %or.i1849, %sh_prom6.i1855
  %add.i.i.i1857 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i1856)
  %conv8.i1858 = trunc i64 %add.i.i.i1857 to i32
  store i32 %conv8.i1858, ptr %467, align 4
  %476 = load i32, ptr %i_left.i, align 8
  %add.i1860 = add nsw i32 %476, 32
  store i32 %add.i1860, ptr %i_left.i, align 8
  %477 = load ptr, ptr %p.i, align 8
  %add.ptr.i1861 = getelementptr inbounds i8, ptr %477, i64 4
  store ptr %add.ptr.i1861, ptr %p.i, align 8
  br label %if.end768

if.else764:                                       ; preds = %cavlc_qp_delta.exit
  %conv749 = zext i8 %471 to i32
  %dct = getelementptr inbounds i8, ptr %h, i64 15040
  %call766 = tail call fastcc i32 @block_residual_write_cavlc(ptr noundef nonnull %h, i32 noundef 0, ptr noundef nonnull %dct, i32 noundef %conv749)
  %conv767 = trunc i32 %call766 to i8
  store i8 %conv767, ptr %arrayidx753, align 1
  br label %if.end768

if.end768:                                        ; preds = %if.then.i1854, %if.then755, %if.else764
  %i_cbp_luma770 = getelementptr inbounds i8, ptr %h, i64 17400
  %478 = load i32, ptr %i_cbp_luma770, align 8
  %tobool771.not = icmp eq i32 %478, 0
  br i1 %tobool771.not, label %if.end826, label %for.cond774.preheader

for.cond774.preheader:                            ; preds = %if.end768
  %luma4x4 = getelementptr inbounds i8, ptr %h, i64 15600
  br label %for.body778

for.body778:                                      ; preds = %for.cond774.preheader, %if.end812
  %indvars.iv2098 = phi i64 [ 0, %for.cond774.preheader ], [ %indvars.iv.next2099, %if.end812 ]
  %arrayidx.i1865 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %indvars.iv2098
  %479 = load i32, ptr %arrayidx.i1865, align 4
  %sub.i1866 = add nsw i32 %479, -1
  %idxprom1.i1867 = sext i32 %sub.i1866 to i64
  %arrayidx2.i1868 = getelementptr inbounds [48 x i8], ptr %non_zero_count.i, i64 0, i64 %idxprom1.i1867
  %480 = load i8, ptr %arrayidx2.i1868, align 1
  %conv.i1869 = zext i8 %480 to i32
  %sub8.i = add nsw i32 %479, -8
  %idxprom9.i = sext i32 %sub8.i to i64
  %arrayidx10.i1870 = getelementptr inbounds [48 x i8], ptr %non_zero_count.i, i64 0, i64 %idxprom9.i
  %481 = load i8, ptr %arrayidx10.i1870, align 1
  %conv11.i1871 = zext i8 %481 to i32
  %add.i1872 = add nuw nsw i32 %conv11.i1871, %conv.i1869
  %cmp.i1873 = icmp ult i32 %add.i1872, 128
  %add13.i1874 = add nuw nsw i32 %add.i1872, 1
  %shr.i1875 = lshr i32 %add13.i1874, 1
  %i_ret.0.i1876 = select i1 %cmp.i1873, i32 %shr.i1875, i32 %add.i1872
  %and.i1877 = and i32 %i_ret.0.i1876, 127
  %idxprom781 = zext nneg i32 %and.i1877 to i64
  %arrayidx782 = getelementptr inbounds [17 x i8], ptr @ct_index, i64 0, i64 %idxprom781
  %482 = load i8, ptr %arrayidx782, align 1
  %idxprom790 = sext i32 %479 to i64
  %arrayidx791 = getelementptr inbounds [48 x i8], ptr %non_zero_count.i, i64 0, i64 %idxprom790
  %483 = load i8, ptr %arrayidx791, align 1
  %tobool792.not = icmp eq i8 %483, 0
  br i1 %tobool792.not, label %if.then793, label %if.else804

if.then793:                                       ; preds = %for.body778
  %idxprom796 = zext i8 %482 to i64
  %arrayidx797 = getelementptr inbounds [5 x %struct.vlc_t], ptr @x264_coeff0_token, i64 0, i64 %idxprom796
  %i_size798 = getelementptr inbounds i8, ptr %arrayidx797, i64 1
  %484 = load i8, ptr %i_size798, align 1
  %conv799 = zext i8 %484 to i32
  %485 = load i8, ptr %arrayidx797, align 1
  %486 = load i64, ptr %cur_bits.i.i.i1821, align 8
  %sh_prom.i1879 = zext nneg i8 %484 to i64
  %shl.i1880 = shl i64 %486, %sh_prom.i1879
  %conv.i1881 = zext i8 %485 to i64
  %or.i1882 = or i64 %shl.i1880, %conv.i1881
  store i64 %or.i1882, ptr %cur_bits.i.i.i1821, align 8
  %487 = load i32, ptr %i_left.i, align 8
  %sub.i1884 = sub nsw i32 %487, %conv799
  store i32 %sub.i1884, ptr %i_left.i, align 8
  %cmp.i1885 = icmp slt i32 %sub.i1884, 33
  br i1 %cmp.i1885, label %if.then.i1887, label %if.end812

if.then.i1887:                                    ; preds = %if.then793
  %sh_prom6.i1888 = zext nneg i32 %sub.i1884 to i64
  %shl7.i1889 = shl i64 %or.i1882, %sh_prom6.i1888
  %add.i.i.i1890 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i1889)
  %conv8.i1891 = trunc i64 %add.i.i.i1890 to i32
  %488 = load ptr, ptr %p.i, align 8
  store i32 %conv8.i1891, ptr %488, align 4
  %489 = load i32, ptr %i_left.i, align 8
  %add.i1893 = add nsw i32 %489, 32
  store i32 %add.i1893, ptr %i_left.i, align 8
  %490 = load ptr, ptr %p.i, align 8
  %add.ptr.i1894 = getelementptr inbounds i8, ptr %490, i64 4
  store ptr %add.ptr.i1894, ptr %p.i, align 8
  br label %if.end812

if.else804:                                       ; preds = %for.body778
  %conv783 = zext i8 %482 to i32
  %add.ptr809 = getelementptr inbounds [24 x [16 x i16]], ptr %luma4x4, i64 0, i64 %indvars.iv2098, i64 1
  %call810 = tail call fastcc i32 @block_residual_write_cavlc(ptr noundef nonnull %h, i32 noundef 1, ptr noundef nonnull %add.ptr809, i32 noundef %conv783)
  %conv811 = trunc i32 %call810 to i8
  store i8 %conv811, ptr %arrayidx791, align 1
  br label %if.end812

if.end812:                                        ; preds = %if.then.i1887, %if.then793, %if.else804
  %indvars.iv.next2099 = add nuw nsw i64 %indvars.iv2098, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next2099, 16
  br i1 %exitcond.not, label %if.end826, label %for.body778

if.else817:                                       ; preds = %if.end742
  %i_cbp_luma819 = getelementptr inbounds i8, ptr %h, i64 17400
  %491 = load i32, ptr %i_cbp_luma819, align 8
  %i_cbp_chroma821 = getelementptr inbounds i8, ptr %h, i64 17404
  %492 = load i32, ptr %i_cbp_chroma821, align 4
  %or822 = or i32 %492, %491
  %tobool823.not = icmp eq i32 %or822, 0
  br i1 %tobool823.not, label %if.end826, label %if.then824

if.then824:                                       ; preds = %if.else817
  %i_qp.i1896 = getelementptr inbounds i8, ptr %h, i64 25792
  %493 = load i32, ptr %i_qp.i1896, align 16
  %i_last_qp.i1897 = getelementptr inbounds i8, ptr %h, i64 25800
  %494 = load i32, ptr %i_last_qp.i1897, align 8
  %tobool12.not.i1902 = icmp eq i32 %493, %494
  br i1 %tobool12.not.i1902, label %if.end21.thread.i1915, label %if.then13.i1903

if.then13.i1903:                                  ; preds = %if.then824
  %sub.i1898 = sub nsw i32 %493, %494
  %cmp14.i1904 = icmp slt i32 %sub.i1898, -26
  %add.i1905 = add nsw i32 %sub.i1898, 52
  %cmp16.i1906 = icmp sgt i32 %sub.i1898, 25
  %sub18.i1907 = add nsw i32 %sub.i1898, -52
  %spec.select.i1908 = select i1 %cmp16.i1906, i32 %sub18.i1907, i32 %sub.i1898
  %i_dqp.1.i1909 = select i1 %cmp14.i1904, i32 %add.i1905, i32 %spec.select.i1908
  %i_dqp.1.fr.i1910 = freeze i32 %i_dqp.1.i1909
  %mul.i.i1911 = shl nsw i32 %i_dqp.1.fr.i1910, 1
  %sub.i.i1912 = sub nsw i32 1, %mul.i.i1911
  %cmp.i.i1913 = icmp sgt i32 %i_dqp.1.fr.i1910, 0
  %spec.select44.i1914 = select i1 %cmp.i.i1913, i32 %mul.i.i1911, i32 %sub.i.i1912
  br label %if.end21.thread.i1915

if.end21.thread.i1915:                            ; preds = %if.then13.i1903, %if.then824
  %495 = phi i32 [ %spec.select44.i1914, %if.then13.i1903 ], [ 1, %if.then824 ]
  %cmp2.i.i1916 = icmp sgt i32 %495, 255
  %shr.i.i1917 = lshr i32 %495, 8
  %size.0.i.i1918 = select i1 %cmp2.i.i1916, i32 16, i32 0
  %tmp.1.i.i1919 = select i1 %cmp2.i.i1916, i32 %shr.i.i1917, i32 %495
  %idxprom.i.i1920 = sext i32 %tmp.1.i.i1919 to i64
  %arrayidx.i.i1921 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %idxprom.i.i1920
  %496 = load i8, ptr %arrayidx.i.i1921, align 1
  %conv.i.i1922 = zext i8 %496 to i32
  %add.i.i1923 = add nuw nsw i32 %size.0.i.i1918, %conv.i.i1922
  %cur_bits.i.i.i1924 = getelementptr inbounds i8, ptr %h, i64 1816
  %497 = load i64, ptr %cur_bits.i.i.i1924, align 8
  %sh_prom.i.i.i1925 = zext nneg i32 %add.i.i1923 to i64
  %shl.i.i.i1926 = shl i64 %497, %sh_prom.i.i.i1925
  %conv.i.i.i1927 = zext i32 %495 to i64
  %or.i.i.i1928 = or i64 %shl.i.i.i1926, %conv.i.i.i1927
  store i64 %or.i.i.i1928, ptr %cur_bits.i.i.i1924, align 8
  %sub.i.i.i1930 = sub nsw i32 %455, %add.i.i1923
  store i32 %sub.i.i.i1930, ptr %i_left.i, align 8
  %cmp.i.i.i1931 = icmp slt i32 %sub.i.i.i1930, 33
  br i1 %cmp.i.i.i1931, label %if.then.i.i.i1932, label %cavlc_qp_delta.exit1949

if.then.i.i.i1932:                                ; preds = %if.end21.thread.i1915
  %sh_prom6.i.i.i1933 = zext nneg i32 %sub.i.i.i1930 to i64
  %shl7.i.i.i1934 = shl i64 %or.i.i.i1928, %sh_prom6.i.i.i1933
  %add.i.i.i.i.i1935 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i.i.i1934)
  %conv8.i.i.i1936 = trunc i64 %add.i.i.i.i.i1935 to i32
  store i32 %conv8.i.i.i1936, ptr %454, align 4
  %498 = load i32, ptr %i_left.i, align 8
  %add.i.i.i1938 = add nsw i32 %498, 32
  store i32 %add.i.i.i1938, ptr %i_left.i, align 8
  %499 = load ptr, ptr %p.i, align 8
  %add.ptr.i.i.i1939 = getelementptr inbounds i8, ptr %499, i64 4
  store ptr %add.ptr.i.i.i1939, ptr %p.i, align 8
  br label %cavlc_qp_delta.exit1949

cavlc_qp_delta.exit1949:                          ; preds = %if.end21.thread.i1915, %if.then.i.i.i1932
  %b_transform_8x8.i = getelementptr inbounds i8, ptr %h, i64 17396
  %500 = load i32, ptr %b_transform_8x8.i, align 4
  %tobool.not.i1950 = icmp eq i32 %500, 0
  br i1 %tobool.not.i1950, label %if.end14.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %cavlc_qp_delta.exit1949
  %interleave_8x8_cavlc.i = getelementptr inbounds i8, ptr %h, i64 33072
  %501 = load i32, ptr %i_cbp_luma819, align 8
  %and.i1952 = and i32 %501, 1
  %tobool2.not.i = icmp eq i32 %and.i1952, 0
  br i1 %tobool2.not.i, label %for.inc.i, label %if.then3.i

if.then3.i:                                       ; preds = %for.cond.preheader.i
  %luma8x8.i = getelementptr inbounds i8, ptr %h, i64 15088
  %luma4x4.i = getelementptr inbounds i8, ptr %h, i64 15600
  %502 = load ptr, ptr %interleave_8x8_cavlc.i, align 8
  %arrayidx13.i = getelementptr inbounds i8, ptr %h, i64 25084
  tail call void %502(ptr noundef nonnull %luma4x4.i, ptr noundef nonnull %luma8x8.i, ptr noundef nonnull %arrayidx13.i) #7
  %.pre.i1953 = load i32, ptr %i_cbp_luma819, align 8
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then3.i, %for.cond.preheader.i
  %503 = phi i32 [ %501, %for.cond.preheader.i ], [ %.pre.i1953, %if.then3.i ]
  %and.1.i = and i32 %503, 2
  %tobool2.not.1.i = icmp eq i32 %and.1.i, 0
  br i1 %tobool2.not.1.i, label %for.inc.1.i, label %if.then3.1.i

if.then3.1.i:                                     ; preds = %for.inc.i
  %504 = load ptr, ptr %interleave_8x8_cavlc.i, align 8
  %arrayidx.1.i = getelementptr inbounds i8, ptr %h, i64 15728
  %arrayidx6.1.i = getelementptr inbounds i8, ptr %h, i64 15216
  %arrayidx13.1.i = getelementptr inbounds i8, ptr %h, i64 25086
  tail call void %504(ptr noundef nonnull %arrayidx.1.i, ptr noundef nonnull %arrayidx6.1.i, ptr noundef nonnull %arrayidx13.1.i) #7
  %.pre110.i = load i32, ptr %i_cbp_luma819, align 8
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.then3.1.i, %for.inc.i
  %505 = phi i32 [ %.pre110.i, %if.then3.1.i ], [ %503, %for.inc.i ]
  %and.2.i = and i32 %505, 4
  %tobool2.not.2.i = icmp eq i32 %and.2.i, 0
  br i1 %tobool2.not.2.i, label %for.inc.2.i, label %if.then3.2.i

if.then3.2.i:                                     ; preds = %for.inc.1.i
  %506 = load ptr, ptr %interleave_8x8_cavlc.i, align 8
  %arrayidx.2.i = getelementptr inbounds i8, ptr %h, i64 15856
  %arrayidx6.2.i = getelementptr inbounds i8, ptr %h, i64 15344
  %arrayidx13.2.i = getelementptr inbounds i8, ptr %h, i64 25100
  tail call void %506(ptr noundef nonnull %arrayidx.2.i, ptr noundef nonnull %arrayidx6.2.i, ptr noundef nonnull %arrayidx13.2.i) #7
  %.pre111.i = load i32, ptr %i_cbp_luma819, align 8
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %if.then3.2.i, %for.inc.1.i
  %507 = phi i32 [ %.pre111.i, %if.then3.2.i ], [ %505, %for.inc.1.i ]
  %and.3.i = and i32 %507, 8
  %tobool2.not.3.i = icmp eq i32 %and.3.i, 0
  br i1 %tobool2.not.3.i, label %if.end14.i, label %if.then3.3.i

if.then3.3.i:                                     ; preds = %for.inc.2.i
  %508 = load ptr, ptr %interleave_8x8_cavlc.i, align 8
  %arrayidx.3.i = getelementptr inbounds i8, ptr %h, i64 15984
  %arrayidx6.3.i = getelementptr inbounds i8, ptr %h, i64 15472
  %arrayidx13.3.i = getelementptr inbounds i8, ptr %h, i64 25102
  tail call void %508(ptr noundef nonnull %arrayidx.3.i, ptr noundef nonnull %arrayidx6.3.i, ptr noundef nonnull %arrayidx13.3.i) #7
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then3.3.i, %for.inc.2.i, %cavlc_qp_delta.exit1949
  %non_zero_count.i.i = getelementptr inbounds i8, ptr %h, i64 25072
  %luma4x451.i = getelementptr inbounds i8, ptr %h, i64 15600
  br label %for.body19.i

for.body19.i:                                     ; preds = %for.inc64.i, %if.end14.i
  %indvars.iv.i = phi i64 [ 0, %if.end14.i ], [ %indvars.iv.next.i, %for.inc64.i ]
  %509 = load i32, ptr %i_cbp_luma819, align 8
  %510 = trunc nuw nsw i64 %indvars.iv.i to i32
  %shl22.i = shl nuw nsw i32 1, %510
  %and23.i = and i32 %shl22.i, %509
  %tobool24.not.i = icmp eq i32 %and23.i, 0
  br i1 %tobool24.not.i, label %for.inc64.i, label %for.cond26.preheader.i

for.cond26.preheader.i:                           ; preds = %for.body19.i
  %511 = shl nuw nsw i64 %indvars.iv.i, 2
  %arrayidx.i.i1957 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %511
  %512 = load i32, ptr %arrayidx.i.i1957, align 16
  %sub.i.i1958 = add nsw i32 %512, -1
  %idxprom1.i.i = sext i32 %sub.i.i1958 to i64
  %arrayidx2.i.i = getelementptr inbounds [48 x i8], ptr %non_zero_count.i.i, i64 0, i64 %idxprom1.i.i
  %513 = load i8, ptr %arrayidx2.i.i, align 1
  %conv.i.i1959 = zext i8 %513 to i32
  %sub8.i.i = add nsw i32 %512, -8
  %idxprom9.i.i = sext i32 %sub8.i.i to i64
  %arrayidx10.i.i = getelementptr inbounds [48 x i8], ptr %non_zero_count.i.i, i64 0, i64 %idxprom9.i.i
  %514 = load i8, ptr %arrayidx10.i.i, align 1
  %conv11.i.i = zext i8 %514 to i32
  %add.i.i1960 = add nuw nsw i32 %conv11.i.i, %conv.i.i1959
  %cmp.i.i1961 = icmp ult i32 %add.i.i1960, 128
  %add13.i.i = add nuw nsw i32 %add.i.i1960, 1
  %shr.i.i1962 = lshr i32 %add13.i.i, 1
  %i_ret.0.i.i = select i1 %cmp.i.i1961, i32 %shr.i.i1962, i32 %add.i.i1960
  %and.i.i1963 = and i32 %i_ret.0.i.i, 127
  %idxprom31.i = zext nneg i32 %and.i.i1963 to i64
  %arrayidx32.i = getelementptr inbounds [17 x i8], ptr @ct_index, i64 0, i64 %idxprom31.i
  %515 = load i8, ptr %arrayidx32.i, align 1
  %idxprom40.i = sext i32 %512 to i64
  %arrayidx41.i = getelementptr inbounds [48 x i8], ptr %non_zero_count.i.i, i64 0, i64 %idxprom40.i
  %516 = load i8, ptr %arrayidx41.i, align 1
  %tobool42.not.i = icmp eq i8 %516, 0
  br i1 %tobool42.not.i, label %if.then43.i, label %if.else.i1964

if.then43.i:                                      ; preds = %for.cond26.preheader.i
  %idxprom44.i = zext i8 %515 to i64
  %arrayidx45.i = getelementptr inbounds [5 x %struct.vlc_t], ptr @x264_coeff0_token, i64 0, i64 %idxprom44.i
  %i_size.i = getelementptr inbounds i8, ptr %arrayidx45.i, i64 1
  %517 = load i8, ptr %i_size.i, align 1
  %conv46.i = zext i8 %517 to i32
  %518 = load i8, ptr %arrayidx45.i, align 1
  %519 = load i64, ptr %cur_bits.i.i.i1924, align 8
  %sh_prom.i.i1966 = zext nneg i8 %517 to i64
  %shl.i.i1967 = shl i64 %519, %sh_prom.i.i1966
  %conv.i97.i = zext i8 %518 to i64
  %or.i.i1968 = or i64 %shl.i.i1967, %conv.i97.i
  store i64 %or.i.i1968, ptr %cur_bits.i.i.i1924, align 8
  %520 = load i32, ptr %i_left.i, align 8
  %sub.i98.i = sub nsw i32 %520, %conv46.i
  store i32 %sub.i98.i, ptr %i_left.i, align 8
  %cmp.i99.i = icmp slt i32 %sub.i98.i, 33
  br i1 %cmp.i99.i, label %if.then.i.i1969, label %if.end59.i

if.then.i.i1969:                                  ; preds = %if.then43.i
  %sh_prom6.i.i1970 = zext nneg i32 %sub.i98.i to i64
  %shl7.i.i1971 = shl i64 %or.i.i1968, %sh_prom6.i.i1970
  %add.i.i.i.i1972 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i.i1971)
  %conv8.i.i1973 = trunc i64 %add.i.i.i.i1972 to i32
  %521 = load ptr, ptr %p.i, align 8
  store i32 %conv8.i.i1973, ptr %521, align 4
  %522 = load i32, ptr %i_left.i, align 8
  %add.i100.i = add nsw i32 %522, 32
  store i32 %add.i100.i, ptr %i_left.i, align 8
  %523 = load ptr, ptr %p.i, align 8
  %add.ptr.i.i1974 = getelementptr inbounds i8, ptr %523, i64 4
  store ptr %add.ptr.i.i1974, ptr %p.i, align 8
  br label %if.end59.i

if.else.i1964:                                    ; preds = %for.cond26.preheader.i
  %conv.i1965 = zext i8 %515 to i32
  %arrayidx55.i = getelementptr inbounds [24 x [16 x i16]], ptr %luma4x451.i, i64 0, i64 %511
  %call57.i = tail call fastcc i32 @block_residual_write_cavlc(ptr noundef nonnull %h, i32 noundef 2, ptr noundef nonnull %arrayidx55.i, i32 noundef %conv.i1965)
  %conv58.i = trunc i32 %call57.i to i8
  store i8 %conv58.i, ptr %arrayidx41.i, align 1
  br label %if.end59.i

if.end59.i:                                       ; preds = %if.else.i1964, %if.then.i.i1969, %if.then43.i
  %524 = or disjoint i64 %511, 1
  %arrayidx.i.1.i = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %524
  %525 = load i32, ptr %arrayidx.i.1.i, align 4
  %sub.i.1.i = add nsw i32 %525, -1
  %idxprom1.i.1.i = sext i32 %sub.i.1.i to i64
  %arrayidx2.i.1.i = getelementptr inbounds [48 x i8], ptr %non_zero_count.i.i, i64 0, i64 %idxprom1.i.1.i
  %526 = load i8, ptr %arrayidx2.i.1.i, align 1
  %conv.i.1.i = zext i8 %526 to i32
  %sub8.i.1.i = add nsw i32 %525, -8
  %idxprom9.i.1.i = sext i32 %sub8.i.1.i to i64
  %arrayidx10.i.1.i = getelementptr inbounds [48 x i8], ptr %non_zero_count.i.i, i64 0, i64 %idxprom9.i.1.i
  %527 = load i8, ptr %arrayidx10.i.1.i, align 1
  %conv11.i.1.i = zext i8 %527 to i32
  %add.i.1.i = add nuw nsw i32 %conv11.i.1.i, %conv.i.1.i
  %cmp.i.1.i = icmp ult i32 %add.i.1.i, 128
  %add13.i.1.i = add nuw nsw i32 %add.i.1.i, 1
  %shr.i.1.i = lshr i32 %add13.i.1.i, 1
  %i_ret.0.i.1.i = select i1 %cmp.i.1.i, i32 %shr.i.1.i, i32 %add.i.1.i
  %and.i.1.i = and i32 %i_ret.0.i.1.i, 127
  %idxprom31.1.i = zext nneg i32 %and.i.1.i to i64
  %arrayidx32.1.i = getelementptr inbounds [17 x i8], ptr @ct_index, i64 0, i64 %idxprom31.1.i
  %528 = load i8, ptr %arrayidx32.1.i, align 1
  %idxprom40.1.i = sext i32 %525 to i64
  %arrayidx41.1.i = getelementptr inbounds [48 x i8], ptr %non_zero_count.i.i, i64 0, i64 %idxprom40.1.i
  %529 = load i8, ptr %arrayidx41.1.i, align 1
  %tobool42.not.1.i = icmp eq i8 %529, 0
  br i1 %tobool42.not.1.i, label %if.then43.1.i, label %if.else.1.i

if.else.1.i:                                      ; preds = %if.end59.i
  %conv.1.i = zext i8 %528 to i32
  %arrayidx55.1.i = getelementptr inbounds [24 x [16 x i16]], ptr %luma4x451.i, i64 0, i64 %524
  %call57.1.i = tail call fastcc i32 @block_residual_write_cavlc(ptr noundef nonnull %h, i32 noundef 2, ptr noundef nonnull %arrayidx55.1.i, i32 noundef %conv.1.i)
  %conv58.1.i = trunc i32 %call57.1.i to i8
  store i8 %conv58.1.i, ptr %arrayidx41.1.i, align 1
  br label %if.end59.1.i

if.then43.1.i:                                    ; preds = %if.end59.i
  %idxprom44.1.i = zext i8 %528 to i64
  %arrayidx45.1.i = getelementptr inbounds [5 x %struct.vlc_t], ptr @x264_coeff0_token, i64 0, i64 %idxprom44.1.i
  %i_size.1.i = getelementptr inbounds i8, ptr %arrayidx45.1.i, i64 1
  %530 = load i8, ptr %i_size.1.i, align 1
  %conv46.1.i = zext i8 %530 to i32
  %531 = load i8, ptr %arrayidx45.1.i, align 1
  %532 = load i64, ptr %cur_bits.i.i.i1924, align 8
  %sh_prom.i.1.i = zext nneg i8 %530 to i64
  %shl.i.1.i = shl i64 %532, %sh_prom.i.1.i
  %conv.i97.1.i = zext i8 %531 to i64
  %or.i.1.i = or i64 %shl.i.1.i, %conv.i97.1.i
  store i64 %or.i.1.i, ptr %cur_bits.i.i.i1924, align 8
  %533 = load i32, ptr %i_left.i, align 8
  %sub.i98.1.i = sub nsw i32 %533, %conv46.1.i
  store i32 %sub.i98.1.i, ptr %i_left.i, align 8
  %cmp.i99.1.i = icmp slt i32 %sub.i98.1.i, 33
  br i1 %cmp.i99.1.i, label %if.then.i.1.i, label %if.end59.1.i

if.then.i.1.i:                                    ; preds = %if.then43.1.i
  %sh_prom6.i.1.i = zext nneg i32 %sub.i98.1.i to i64
  %shl7.i.1.i = shl i64 %or.i.1.i, %sh_prom6.i.1.i
  %add.i.i.i.1.i = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i.1.i)
  %conv8.i.1.i = trunc i64 %add.i.i.i.1.i to i32
  %534 = load ptr, ptr %p.i, align 8
  store i32 %conv8.i.1.i, ptr %534, align 4
  %535 = load i32, ptr %i_left.i, align 8
  %add.i100.1.i = add nsw i32 %535, 32
  store i32 %add.i100.1.i, ptr %i_left.i, align 8
  %536 = load ptr, ptr %p.i, align 8
  %add.ptr.i.1.i = getelementptr inbounds i8, ptr %536, i64 4
  store ptr %add.ptr.i.1.i, ptr %p.i, align 8
  br label %if.end59.1.i

if.end59.1.i:                                     ; preds = %if.then.i.1.i, %if.then43.1.i, %if.else.1.i
  %537 = or disjoint i64 %511, 2
  %arrayidx.i.2.i = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %537
  %538 = load i32, ptr %arrayidx.i.2.i, align 8
  %sub.i.2.i = add nsw i32 %538, -1
  %idxprom1.i.2.i = sext i32 %sub.i.2.i to i64
  %arrayidx2.i.2.i = getelementptr inbounds [48 x i8], ptr %non_zero_count.i.i, i64 0, i64 %idxprom1.i.2.i
  %539 = load i8, ptr %arrayidx2.i.2.i, align 1
  %conv.i.2.i = zext i8 %539 to i32
  %sub8.i.2.i = add nsw i32 %538, -8
  %idxprom9.i.2.i = sext i32 %sub8.i.2.i to i64
  %arrayidx10.i.2.i = getelementptr inbounds [48 x i8], ptr %non_zero_count.i.i, i64 0, i64 %idxprom9.i.2.i
  %540 = load i8, ptr %arrayidx10.i.2.i, align 1
  %conv11.i.2.i = zext i8 %540 to i32
  %add.i.2.i = add nuw nsw i32 %conv11.i.2.i, %conv.i.2.i
  %cmp.i.2.i = icmp ult i32 %add.i.2.i, 128
  %add13.i.2.i = add nuw nsw i32 %add.i.2.i, 1
  %shr.i.2.i = lshr i32 %add13.i.2.i, 1
  %i_ret.0.i.2.i = select i1 %cmp.i.2.i, i32 %shr.i.2.i, i32 %add.i.2.i
  %and.i.2.i = and i32 %i_ret.0.i.2.i, 127
  %idxprom31.2.i = zext nneg i32 %and.i.2.i to i64
  %arrayidx32.2.i = getelementptr inbounds [17 x i8], ptr @ct_index, i64 0, i64 %idxprom31.2.i
  %541 = load i8, ptr %arrayidx32.2.i, align 1
  %idxprom40.2.i = sext i32 %538 to i64
  %arrayidx41.2.i = getelementptr inbounds [48 x i8], ptr %non_zero_count.i.i, i64 0, i64 %idxprom40.2.i
  %542 = load i8, ptr %arrayidx41.2.i, align 1
  %tobool42.not.2.i = icmp eq i8 %542, 0
  br i1 %tobool42.not.2.i, label %if.then43.2.i, label %if.else.2.i

if.else.2.i:                                      ; preds = %if.end59.1.i
  %conv.2.i = zext i8 %541 to i32
  %arrayidx55.2.i = getelementptr inbounds [24 x [16 x i16]], ptr %luma4x451.i, i64 0, i64 %537
  %call57.2.i = tail call fastcc i32 @block_residual_write_cavlc(ptr noundef nonnull %h, i32 noundef 2, ptr noundef nonnull %arrayidx55.2.i, i32 noundef %conv.2.i)
  %conv58.2.i = trunc i32 %call57.2.i to i8
  store i8 %conv58.2.i, ptr %arrayidx41.2.i, align 1
  br label %if.end59.2.i

if.then43.2.i:                                    ; preds = %if.end59.1.i
  %idxprom44.2.i = zext i8 %541 to i64
  %arrayidx45.2.i = getelementptr inbounds [5 x %struct.vlc_t], ptr @x264_coeff0_token, i64 0, i64 %idxprom44.2.i
  %i_size.2.i = getelementptr inbounds i8, ptr %arrayidx45.2.i, i64 1
  %543 = load i8, ptr %i_size.2.i, align 1
  %conv46.2.i = zext i8 %543 to i32
  %544 = load i8, ptr %arrayidx45.2.i, align 1
  %545 = load i64, ptr %cur_bits.i.i.i1924, align 8
  %sh_prom.i.2.i = zext nneg i8 %543 to i64
  %shl.i.2.i = shl i64 %545, %sh_prom.i.2.i
  %conv.i97.2.i = zext i8 %544 to i64
  %or.i.2.i = or i64 %shl.i.2.i, %conv.i97.2.i
  store i64 %or.i.2.i, ptr %cur_bits.i.i.i1924, align 8
  %546 = load i32, ptr %i_left.i, align 8
  %sub.i98.2.i = sub nsw i32 %546, %conv46.2.i
  store i32 %sub.i98.2.i, ptr %i_left.i, align 8
  %cmp.i99.2.i = icmp slt i32 %sub.i98.2.i, 33
  br i1 %cmp.i99.2.i, label %if.then.i.2.i, label %if.end59.2.i

if.then.i.2.i:                                    ; preds = %if.then43.2.i
  %sh_prom6.i.2.i = zext nneg i32 %sub.i98.2.i to i64
  %shl7.i.2.i = shl i64 %or.i.2.i, %sh_prom6.i.2.i
  %add.i.i.i.2.i = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i.2.i)
  %conv8.i.2.i = trunc i64 %add.i.i.i.2.i to i32
  %547 = load ptr, ptr %p.i, align 8
  store i32 %conv8.i.2.i, ptr %547, align 4
  %548 = load i32, ptr %i_left.i, align 8
  %add.i100.2.i = add nsw i32 %548, 32
  store i32 %add.i100.2.i, ptr %i_left.i, align 8
  %549 = load ptr, ptr %p.i, align 8
  %add.ptr.i.2.i = getelementptr inbounds i8, ptr %549, i64 4
  store ptr %add.ptr.i.2.i, ptr %p.i, align 8
  br label %if.end59.2.i

if.end59.2.i:                                     ; preds = %if.then.i.2.i, %if.then43.2.i, %if.else.2.i
  %550 = or disjoint i64 %511, 3
  %arrayidx.i.3.i = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %550
  %551 = load i32, ptr %arrayidx.i.3.i, align 4
  %sub.i.3.i = add nsw i32 %551, -1
  %idxprom1.i.3.i = sext i32 %sub.i.3.i to i64
  %arrayidx2.i.3.i = getelementptr inbounds [48 x i8], ptr %non_zero_count.i.i, i64 0, i64 %idxprom1.i.3.i
  %552 = load i8, ptr %arrayidx2.i.3.i, align 1
  %conv.i.3.i = zext i8 %552 to i32
  %sub8.i.3.i = add nsw i32 %551, -8
  %idxprom9.i.3.i = sext i32 %sub8.i.3.i to i64
  %arrayidx10.i.3.i = getelementptr inbounds [48 x i8], ptr %non_zero_count.i.i, i64 0, i64 %idxprom9.i.3.i
  %553 = load i8, ptr %arrayidx10.i.3.i, align 1
  %conv11.i.3.i = zext i8 %553 to i32
  %add.i.3.i = add nuw nsw i32 %conv11.i.3.i, %conv.i.3.i
  %cmp.i.3.i = icmp ult i32 %add.i.3.i, 128
  %add13.i.3.i = add nuw nsw i32 %add.i.3.i, 1
  %shr.i.3.i = lshr i32 %add13.i.3.i, 1
  %i_ret.0.i.3.i = select i1 %cmp.i.3.i, i32 %shr.i.3.i, i32 %add.i.3.i
  %and.i.3.i = and i32 %i_ret.0.i.3.i, 127
  %idxprom31.3.i = zext nneg i32 %and.i.3.i to i64
  %arrayidx32.3.i = getelementptr inbounds [17 x i8], ptr @ct_index, i64 0, i64 %idxprom31.3.i
  %554 = load i8, ptr %arrayidx32.3.i, align 1
  %idxprom40.3.i = sext i32 %551 to i64
  %arrayidx41.3.i = getelementptr inbounds [48 x i8], ptr %non_zero_count.i.i, i64 0, i64 %idxprom40.3.i
  %555 = load i8, ptr %arrayidx41.3.i, align 1
  %tobool42.not.3.i = icmp eq i8 %555, 0
  br i1 %tobool42.not.3.i, label %if.then43.3.i, label %if.else.3.i

if.else.3.i:                                      ; preds = %if.end59.2.i
  %conv.3.i = zext i8 %554 to i32
  %arrayidx55.3.i = getelementptr inbounds [24 x [16 x i16]], ptr %luma4x451.i, i64 0, i64 %550
  %call57.3.i = tail call fastcc i32 @block_residual_write_cavlc(ptr noundef nonnull %h, i32 noundef 2, ptr noundef nonnull %arrayidx55.3.i, i32 noundef %conv.3.i)
  %conv58.3.i = trunc i32 %call57.3.i to i8
  store i8 %conv58.3.i, ptr %arrayidx41.3.i, align 1
  br label %for.inc64.i

if.then43.3.i:                                    ; preds = %if.end59.2.i
  %idxprom44.3.i = zext i8 %554 to i64
  %arrayidx45.3.i = getelementptr inbounds [5 x %struct.vlc_t], ptr @x264_coeff0_token, i64 0, i64 %idxprom44.3.i
  %i_size.3.i = getelementptr inbounds i8, ptr %arrayidx45.3.i, i64 1
  %556 = load i8, ptr %i_size.3.i, align 1
  %conv46.3.i = zext i8 %556 to i32
  %557 = load i8, ptr %arrayidx45.3.i, align 1
  %558 = load i64, ptr %cur_bits.i.i.i1924, align 8
  %sh_prom.i.3.i = zext nneg i8 %556 to i64
  %shl.i.3.i = shl i64 %558, %sh_prom.i.3.i
  %conv.i97.3.i = zext i8 %557 to i64
  %or.i.3.i = or i64 %shl.i.3.i, %conv.i97.3.i
  store i64 %or.i.3.i, ptr %cur_bits.i.i.i1924, align 8
  %559 = load i32, ptr %i_left.i, align 8
  %sub.i98.3.i = sub nsw i32 %559, %conv46.3.i
  store i32 %sub.i98.3.i, ptr %i_left.i, align 8
  %cmp.i99.3.i = icmp slt i32 %sub.i98.3.i, 33
  br i1 %cmp.i99.3.i, label %if.then.i.3.i, label %for.inc64.i

if.then.i.3.i:                                    ; preds = %if.then43.3.i
  %sh_prom6.i.3.i = zext nneg i32 %sub.i98.3.i to i64
  %shl7.i.3.i = shl i64 %or.i.3.i, %sh_prom6.i.3.i
  %add.i.i.i.3.i = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i.3.i)
  %conv8.i.3.i = trunc i64 %add.i.i.i.3.i to i32
  %560 = load ptr, ptr %p.i, align 8
  store i32 %conv8.i.3.i, ptr %560, align 4
  %561 = load i32, ptr %i_left.i, align 8
  %add.i100.3.i = add nsw i32 %561, 32
  store i32 %add.i100.3.i, ptr %i_left.i, align 8
  %562 = load ptr, ptr %p.i, align 8
  %add.ptr.i.3.i = getelementptr inbounds i8, ptr %562, i64 4
  store ptr %add.ptr.i.3.i, ptr %p.i, align 8
  br label %for.inc64.i

for.inc64.i:                                      ; preds = %if.then.i.3.i, %if.then43.3.i, %if.else.3.i, %for.body19.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 4
  br i1 %exitcond.not.i, label %if.end826, label %for.body19.i

if.end826:                                        ; preds = %for.inc64.i, %if.end812, %if.else817, %if.end768
  %i_cbp_chroma828 = getelementptr inbounds i8, ptr %h, i64 17404
  %563 = load i32, ptr %i_cbp_chroma828, align 4
  %tobool829.not = icmp eq i32 %563, 0
  br i1 %tobool829.not, label %if.end934, label %if.then830

if.then830:                                       ; preds = %if.end826
  %non_zero_count835 = getelementptr inbounds i8, ptr %h, i64 25072
  %arrayidx837 = getelementptr inbounds i8, ptr %h, i64 25118
  %564 = load i8, ptr %arrayidx837, align 1
  %tobool838.not = icmp eq i8 %564, 0
  br i1 %tobool838.not, label %if.then839, label %if.else850

if.then839:                                       ; preds = %if.then830
  %565 = load i8, ptr getelementptr inbounds (i8, ptr @x264_coeff0_token, i64 9), align 1
  %conv845 = zext i8 %565 to i32
  %566 = load i8, ptr getelementptr inbounds (i8, ptr @x264_coeff0_token, i64 8), align 1
  %cur_bits.i1975 = getelementptr inbounds i8, ptr %h, i64 1816
  %567 = load i64, ptr %cur_bits.i1975, align 8
  %sh_prom.i1976 = zext nneg i8 %565 to i64
  %shl.i1977 = shl i64 %567, %sh_prom.i1976
  %conv.i1978 = zext i8 %566 to i64
  %or.i1979 = or i64 %shl.i1977, %conv.i1978
  store i64 %or.i1979, ptr %cur_bits.i1975, align 8
  %568 = load i32, ptr %i_left.i, align 8
  %sub.i1981 = sub nsw i32 %568, %conv845
  store i32 %sub.i1981, ptr %i_left.i, align 8
  %cmp.i1982 = icmp slt i32 %sub.i1981, 33
  br i1 %cmp.i1982, label %if.then.i1984, label %if.end856

if.then.i1984:                                    ; preds = %if.then839
  %sh_prom6.i1985 = zext nneg i32 %sub.i1981 to i64
  %shl7.i1986 = shl i64 %or.i1979, %sh_prom6.i1985
  %add.i.i.i1987 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i1986)
  %conv8.i1988 = trunc i64 %add.i.i.i1987 to i32
  %569 = load ptr, ptr %p.i, align 8
  store i32 %conv8.i1988, ptr %569, align 4
  %570 = load i32, ptr %i_left.i, align 8
  %add.i1990 = add nsw i32 %570, 32
  store i32 %add.i1990, ptr %i_left.i, align 8
  %571 = load ptr, ptr %p.i, align 8
  %add.ptr.i1991 = getelementptr inbounds i8, ptr %571, i64 4
  store ptr %add.ptr.i1991, ptr %p.i, align 8
  br label %if.end856

if.else850:                                       ; preds = %if.then830
  %chroma_dc = getelementptr inbounds i8, ptr %h, i64 15072
  %call854 = tail call fastcc i32 @block_residual_write_cavlc(ptr noundef nonnull %h, i32 noundef 3, ptr noundef nonnull %chroma_dc, i32 noundef 4)
  %conv855 = trunc i32 %call854 to i8
  store i8 %conv855, ptr %arrayidx837, align 1
  br label %if.end856

if.end856:                                        ; preds = %if.then.i1984, %if.then839, %if.else850
  %arrayidx863 = getelementptr inbounds i8, ptr %h, i64 25119
  %572 = load i8, ptr %arrayidx863, align 1
  %tobool864.not = icmp eq i8 %572, 0
  br i1 %tobool864.not, label %if.then865, label %if.else876

if.then865:                                       ; preds = %if.end856
  %573 = load i8, ptr getelementptr inbounds (i8, ptr @x264_coeff0_token, i64 9), align 1
  %conv871 = zext i8 %573 to i32
  %574 = load i8, ptr getelementptr inbounds (i8, ptr @x264_coeff0_token, i64 8), align 1
  %cur_bits.i1993 = getelementptr inbounds i8, ptr %h, i64 1816
  %575 = load i64, ptr %cur_bits.i1993, align 8
  %sh_prom.i1994 = zext nneg i8 %573 to i64
  %shl.i1995 = shl i64 %575, %sh_prom.i1994
  %conv.i1996 = zext i8 %574 to i64
  %or.i1997 = or i64 %shl.i1995, %conv.i1996
  store i64 %or.i1997, ptr %cur_bits.i1993, align 8
  %576 = load i32, ptr %i_left.i, align 8
  %sub.i1999 = sub nsw i32 %576, %conv871
  store i32 %sub.i1999, ptr %i_left.i, align 8
  %cmp.i2000 = icmp slt i32 %sub.i1999, 33
  br i1 %cmp.i2000, label %if.then.i2002, label %if.end883

if.then.i2002:                                    ; preds = %if.then865
  %sh_prom6.i2003 = zext nneg i32 %sub.i1999 to i64
  %shl7.i2004 = shl i64 %or.i1997, %sh_prom6.i2003
  %add.i.i.i2005 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i2004)
  %conv8.i2006 = trunc i64 %add.i.i.i2005 to i32
  %577 = load ptr, ptr %p.i, align 8
  store i32 %conv8.i2006, ptr %577, align 4
  %578 = load i32, ptr %i_left.i, align 8
  %add.i2008 = add nsw i32 %578, 32
  store i32 %add.i2008, ptr %i_left.i, align 8
  %579 = load ptr, ptr %p.i, align 8
  %add.ptr.i2009 = getelementptr inbounds i8, ptr %579, i64 4
  store ptr %add.ptr.i2009, ptr %p.i, align 8
  br label %if.end883

if.else876:                                       ; preds = %if.end856
  %arrayidx879 = getelementptr inbounds i8, ptr %h, i64 15080
  %call881 = tail call fastcc i32 @block_residual_write_cavlc(ptr noundef nonnull %h, i32 noundef 3, ptr noundef nonnull %arrayidx879, i32 noundef 4)
  %conv882 = trunc i32 %call881 to i8
  store i8 %conv882, ptr %arrayidx863, align 1
  br label %if.end883

if.end883:                                        ; preds = %if.then.i2002, %if.then865, %if.else876
  %580 = load i32, ptr %i_cbp_chroma828, align 4
  %and886 = and i32 %580, 2
  %tobool887.not = icmp eq i32 %and886, 0
  br i1 %tobool887.not, label %if.end934, label %for.cond890.preheader

for.cond890.preheader:                            ; preds = %if.end883
  %luma4x4922 = getelementptr inbounds i8, ptr %h, i64 15600
  %cur_bits.i2028 = getelementptr inbounds i8, ptr %h, i64 1816
  br label %for.body894

for.body894:                                      ; preds = %for.cond890.preheader, %if.end929
  %indvars.iv2101 = phi i64 [ 16, %for.cond890.preheader ], [ %indvars.iv.next2102, %if.end929 ]
  %arrayidx.i2013 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %indvars.iv2101
  %581 = load i32, ptr %arrayidx.i2013, align 4
  %sub.i2014 = add nsw i32 %581, -1
  %idxprom1.i2015 = sext i32 %sub.i2014 to i64
  %arrayidx2.i2016 = getelementptr inbounds [48 x i8], ptr %non_zero_count835, i64 0, i64 %idxprom1.i2015
  %582 = load i8, ptr %arrayidx2.i2016, align 1
  %conv.i2017 = zext i8 %582 to i32
  %sub8.i2018 = add nsw i32 %581, -8
  %idxprom9.i2019 = sext i32 %sub8.i2018 to i64
  %arrayidx10.i2020 = getelementptr inbounds [48 x i8], ptr %non_zero_count835, i64 0, i64 %idxprom9.i2019
  %583 = load i8, ptr %arrayidx10.i2020, align 1
  %conv11.i2021 = zext i8 %583 to i32
  %add.i2022 = add nuw nsw i32 %conv11.i2021, %conv.i2017
  %cmp.i2023 = icmp ult i32 %add.i2022, 128
  %add13.i2024 = add nuw nsw i32 %add.i2022, 1
  %shr.i2025 = lshr i32 %add13.i2024, 1
  %i_ret.0.i2026 = select i1 %cmp.i2023, i32 %shr.i2025, i32 %add.i2022
  %and.i2027 = and i32 %i_ret.0.i2026, 127
  %idxprom897 = zext nneg i32 %and.i2027 to i64
  %arrayidx898 = getelementptr inbounds [17 x i8], ptr @ct_index, i64 0, i64 %idxprom897
  %584 = load i8, ptr %arrayidx898, align 1
  %idxprom906 = sext i32 %581 to i64
  %arrayidx907 = getelementptr inbounds [48 x i8], ptr %non_zero_count835, i64 0, i64 %idxprom906
  %585 = load i8, ptr %arrayidx907, align 1
  %tobool908.not = icmp eq i8 %585, 0
  br i1 %tobool908.not, label %if.then909, label %if.else920

if.then909:                                       ; preds = %for.body894
  %idxprom912 = zext i8 %584 to i64
  %arrayidx913 = getelementptr inbounds [5 x %struct.vlc_t], ptr @x264_coeff0_token, i64 0, i64 %idxprom912
  %i_size914 = getelementptr inbounds i8, ptr %arrayidx913, i64 1
  %586 = load i8, ptr %i_size914, align 1
  %conv915 = zext i8 %586 to i32
  %587 = load i8, ptr %arrayidx913, align 1
  %588 = load i64, ptr %cur_bits.i2028, align 8
  %sh_prom.i2029 = zext nneg i8 %586 to i64
  %shl.i2030 = shl i64 %588, %sh_prom.i2029
  %conv.i2031 = zext i8 %587 to i64
  %or.i2032 = or i64 %shl.i2030, %conv.i2031
  store i64 %or.i2032, ptr %cur_bits.i2028, align 8
  %589 = load i32, ptr %i_left.i, align 8
  %sub.i2034 = sub nsw i32 %589, %conv915
  store i32 %sub.i2034, ptr %i_left.i, align 8
  %cmp.i2035 = icmp slt i32 %sub.i2034, 33
  br i1 %cmp.i2035, label %if.then.i2037, label %if.end929

if.then.i2037:                                    ; preds = %if.then909
  %sh_prom6.i2038 = zext nneg i32 %sub.i2034 to i64
  %shl7.i2039 = shl i64 %or.i2032, %sh_prom6.i2038
  %add.i.i.i2040 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i2039)
  %conv8.i2041 = trunc i64 %add.i.i.i2040 to i32
  %590 = load ptr, ptr %p.i, align 8
  store i32 %conv8.i2041, ptr %590, align 4
  %591 = load i32, ptr %i_left.i, align 8
  %add.i2043 = add nsw i32 %591, 32
  store i32 %add.i2043, ptr %i_left.i, align 8
  %592 = load ptr, ptr %p.i, align 8
  %add.ptr.i2044 = getelementptr inbounds i8, ptr %592, i64 4
  store ptr %add.ptr.i2044, ptr %p.i, align 8
  br label %if.end929

if.else920:                                       ; preds = %for.body894
  %conv899 = zext i8 %584 to i32
  %add.ptr926 = getelementptr inbounds [24 x [16 x i16]], ptr %luma4x4922, i64 0, i64 %indvars.iv2101, i64 1
  %call927 = tail call fastcc i32 @block_residual_write_cavlc(ptr noundef nonnull %h, i32 noundef 4, ptr noundef nonnull %add.ptr926, i32 noundef %conv899)
  %conv928 = trunc i32 %call927 to i8
  store i8 %conv928, ptr %arrayidx907, align 1
  br label %if.end929

if.end929:                                        ; preds = %if.then.i2037, %if.then909, %if.else920
  %indvars.iv.next2102 = add nuw nsw i64 %indvars.iv2101, 1
  %exitcond2104.not = icmp eq i64 %indvars.iv.next2102, 24
  br i1 %exitcond2104.not, label %if.end934, label %for.body894

if.end934:                                        ; preds = %if.end929, %if.end883, %if.end826
  %593 = load ptr, ptr %p.i, align 8
  %594 = load ptr, ptr %bs, align 8
  %sub.ptr.lhs.cast.i2047 = ptrtoint ptr %593 to i64
  %sub.ptr.rhs.cast.i2048 = ptrtoint ptr %594 to i64
  %sub.ptr.sub.i2049 = sub i64 %sub.ptr.lhs.cast.i2047, %sub.ptr.rhs.cast.i2048
  %595 = load i32, ptr %i_left.i, align 8
  %sub.ptr.sub.tr.i2051 = trunc i64 %sub.ptr.sub.i2049 to i32
  %596 = shl i32 %sub.ptr.sub.tr.i2051, 3
  %i_tex_bits939 = getelementptr inbounds i8, ptr %h, i64 26716
  %597 = load i32, ptr %i_tex_bits939, align 4
  %598 = add i32 %595, %reass.sub.i1747
  %sub936 = sub i32 %597, %598
  %add940 = add i32 %sub936, %596
  store i32 %add940, ptr %i_tex_bits939, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end934, %bs_align_0.exit
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bs_write_ue(ptr nocapture noundef %s, i32 noundef %val) unnamed_addr #2 {
entry:
  %add = add nsw i32 %val, 1
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %idxprom
  %0 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %0 to i32
  %cur_bits.i = getelementptr inbounds i8, ptr %s, i64 24
  %1 = load i64, ptr %cur_bits.i, align 8
  %sh_prom.i = zext nneg i8 %0 to i64
  %shl.i = shl i64 %1, %sh_prom.i
  %conv.i = zext i32 %add to i64
  %or.i = or i64 %shl.i, %conv.i
  store i64 %or.i, ptr %cur_bits.i, align 8
  %i_left.i = getelementptr inbounds i8, ptr %s, i64 32
  %2 = load i32, ptr %i_left.i, align 8
  %sub.i = sub nsw i32 %2, %conv
  store i32 %sub.i, ptr %i_left.i, align 8
  %cmp.i = icmp slt i32 %sub.i, 33
  br i1 %cmp.i, label %if.then.i, label %bs_write.exit

if.then.i:                                        ; preds = %entry
  %sh_prom6.i = zext nneg i32 %sub.i to i64
  %shl7.i = shl i64 %or.i, %sh_prom6.i
  %add.i.i.i = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i)
  %conv8.i = trunc i64 %add.i.i.i to i32
  %p.i = getelementptr inbounds i8, ptr %s, i64 8
  %3 = load ptr, ptr %p.i, align 8
  store i32 %conv8.i, ptr %3, align 4
  %4 = load i32, ptr %i_left.i, align 8
  %add.i = add nsw i32 %4, 32
  store i32 %add.i, ptr %i_left.i, align 8
  %5 = load ptr, ptr %p.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %5, i64 4
  store ptr %add.ptr.i, ptr %p.i, align 8
  br label %bs_write.exit

bs_write.exit:                                    ; preds = %entry, %if.then.i
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bs_write_te(ptr nocapture noundef %s, i32 noundef %x, i32 noundef %val) unnamed_addr #2 {
entry:
  %cmp = icmp eq i32 %x, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %xor = xor i32 %val, 1
  %cur_bits.i = getelementptr inbounds i8, ptr %s, i64 24
  %0 = load i64, ptr %cur_bits.i, align 8
  %shl.i = shl i64 %0, 1
  %conv.i = zext i32 %xor to i64
  %or.i = or i64 %shl.i, %conv.i
  store i64 %or.i, ptr %cur_bits.i, align 8
  %i_left.i = getelementptr inbounds i8, ptr %s, i64 32
  %1 = load i32, ptr %i_left.i, align 8
  %dec.i = add nsw i32 %1, -1
  store i32 %dec.i, ptr %i_left.i, align 8
  %cmp.i = icmp eq i32 %dec.i, 32
  br i1 %cmp.i, label %if.then.i, label %if.end

if.then.i:                                        ; preds = %if.then
  %conv6.i = trunc i64 %or.i to i32
  %add5.i.i = tail call noundef i32 @llvm.bswap.i32(i32 %conv6.i)
  %p.i = getelementptr inbounds i8, ptr %s, i64 8
  %2 = load ptr, ptr %p.i, align 8
  store i32 %add5.i.i, ptr %2, align 4
  %3 = load ptr, ptr %p.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %3, i64 4
  store ptr %add.ptr.i, ptr %p.i, align 8
  store i32 64, ptr %i_left.i, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %add.i = add nsw i32 %val, 1
  %idxprom.i = sext i32 %add.i to i64
  %arrayidx.i = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %idxprom.i
  %4 = load i8, ptr %arrayidx.i, align 1
  %conv.i3 = zext i8 %4 to i32
  %cur_bits.i.i = getelementptr inbounds i8, ptr %s, i64 24
  %5 = load i64, ptr %cur_bits.i.i, align 8
  %sh_prom.i.i = zext nneg i8 %4 to i64
  %shl.i.i = shl i64 %5, %sh_prom.i.i
  %conv.i.i = zext i32 %add.i to i64
  %or.i.i = or i64 %shl.i.i, %conv.i.i
  store i64 %or.i.i, ptr %cur_bits.i.i, align 8
  %i_left.i.i = getelementptr inbounds i8, ptr %s, i64 32
  %6 = load i32, ptr %i_left.i.i, align 8
  %sub.i.i = sub nsw i32 %6, %conv.i3
  store i32 %sub.i.i, ptr %i_left.i.i, align 8
  %cmp.i.i = icmp slt i32 %sub.i.i, 33
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end

if.then.i.i:                                      ; preds = %if.else
  %sh_prom6.i.i = zext nneg i32 %sub.i.i to i64
  %shl7.i.i = shl i64 %or.i.i, %sh_prom6.i.i
  %add.i.i.i.i = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i.i)
  %conv8.i.i = trunc i64 %add.i.i.i.i to i32
  %p.i.i = getelementptr inbounds i8, ptr %s, i64 8
  %7 = load ptr, ptr %p.i.i, align 8
  store i32 %conv8.i.i, ptr %7, align 4
  %8 = load i32, ptr %i_left.i.i, align 8
  %add.i.i = add nsw i32 %8, 32
  store i32 %add.i.i, ptr %i_left.i.i, align 8
  %9 = load ptr, ptr %p.i.i, align 8
  %add.ptr.i.i = getelementptr inbounds i8, ptr %9, i64 4
  store ptr %add.ptr.i.i, ptr %p.i.i, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.i.i, %if.else, %if.then.i, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @cavlc_mb_mvd(ptr noundef %h, i32 noundef %i_list, i32 noundef %idx, i32 noundef %width) unnamed_addr #0 {
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
  %mul.i = shl nsw i32 %sub, 1
  %sub.i = sub nsw i32 1, %mul.i
  %cmp.i = icmp sgt i32 %sub, 0
  %spec.select.i = select i1 %cmp.i, i32 %mul.i, i32 %sub.i
  %cmp2.i = icmp sgt i32 %spec.select.i, 255
  %shr.i = lshr i32 %spec.select.i, 8
  %size.0.i = select i1 %cmp2.i, i32 16, i32 0
  %tmp.1.i = select i1 %cmp2.i, i32 %shr.i, i32 %spec.select.i
  %idxprom.i = sext i32 %tmp.1.i to i64
  %arrayidx.i = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %idxprom.i
  %3 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %3 to i32
  %add.i = add nuw nsw i32 %size.0.i, %conv.i
  %cur_bits.i.i = getelementptr inbounds i8, ptr %h, i64 1816
  %4 = load i64, ptr %cur_bits.i.i, align 8
  %sh_prom.i.i = zext nneg i32 %add.i to i64
  %shl.i.i = shl i64 %4, %sh_prom.i.i
  %conv.i.i = zext i32 %spec.select.i to i64
  %or.i.i = or i64 %shl.i.i, %conv.i.i
  store i64 %or.i.i, ptr %cur_bits.i.i, align 8
  %i_left.i.i = getelementptr inbounds i8, ptr %h, i64 1824
  %5 = load i32, ptr %i_left.i.i, align 8
  %sub.i.i = sub nsw i32 %5, %add.i
  store i32 %sub.i.i, ptr %i_left.i.i, align 8
  %cmp.i.i = icmp slt i32 %sub.i.i, 33
  br i1 %cmp.i.i, label %if.then.i.i, label %bs_write_se.exit

if.then.i.i:                                      ; preds = %entry
  %sh_prom6.i.i = zext nneg i32 %sub.i.i to i64
  %shl7.i.i = shl i64 %or.i.i, %sh_prom6.i.i
  %add.i.i.i.i = call noundef i64 @llvm.bswap.i64(i64 %shl7.i.i)
  %conv8.i.i = trunc i64 %add.i.i.i.i to i32
  %p.i.i = getelementptr inbounds i8, ptr %h, i64 1800
  %6 = load ptr, ptr %p.i.i, align 8
  store i32 %conv8.i.i, ptr %6, align 4
  %7 = load i32, ptr %i_left.i.i, align 8
  %add.i.i = add nsw i32 %7, 32
  store i32 %add.i.i, ptr %i_left.i.i, align 8
  %8 = load ptr, ptr %p.i.i, align 8
  %add.ptr.i.i = getelementptr inbounds i8, ptr %8, i64 4
  store ptr %add.ptr.i.i, ptr %p.i.i, align 8
  %.pre = load i64, ptr %cur_bits.i.i, align 8
  br label %bs_write_se.exit

bs_write_se.exit:                                 ; preds = %entry, %if.then.i.i
  %9 = phi i32 [ %sub.i.i, %entry ], [ %add.i.i, %if.then.i.i ]
  %10 = phi i64 [ %or.i.i, %entry ], [ %.pre, %if.then.i.i ]
  %arrayidx17 = getelementptr inbounds [2 x [40 x [2 x i16]]], ptr %mv, i64 0, i64 %idxprom, i64 %idxprom3, i64 1
  %11 = load i16, ptr %arrayidx17, align 2
  %conv18 = sext i16 %11 to i32
  %arrayidx19 = getelementptr inbounds i8, ptr %mvp, i64 2
  %12 = load i16, ptr %arrayidx19, align 2
  %conv20 = sext i16 %12 to i32
  %sub21 = sub nsw i32 %conv18, %conv20
  %mul.i30 = shl nsw i32 %sub21, 1
  %sub.i31 = sub nsw i32 1, %mul.i30
  %cmp.i32 = icmp sgt i32 %sub21, 0
  %spec.select.i33 = select i1 %cmp.i32, i32 %mul.i30, i32 %sub.i31
  %cmp2.i34 = icmp sgt i32 %spec.select.i33, 255
  %shr.i35 = lshr i32 %spec.select.i33, 8
  %size.0.i36 = select i1 %cmp2.i34, i32 16, i32 0
  %tmp.1.i37 = select i1 %cmp2.i34, i32 %shr.i35, i32 %spec.select.i33
  %idxprom.i38 = sext i32 %tmp.1.i37 to i64
  %arrayidx.i39 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %idxprom.i38
  %13 = load i8, ptr %arrayidx.i39, align 1
  %conv.i40 = zext i8 %13 to i32
  %add.i41 = add nuw nsw i32 %size.0.i36, %conv.i40
  %sh_prom.i.i43 = zext nneg i32 %add.i41 to i64
  %shl.i.i44 = shl i64 %10, %sh_prom.i.i43
  %conv.i.i45 = zext i32 %spec.select.i33 to i64
  %or.i.i46 = or i64 %shl.i.i44, %conv.i.i45
  store i64 %or.i.i46, ptr %cur_bits.i.i, align 8
  %sub.i.i48 = sub nsw i32 %9, %add.i41
  store i32 %sub.i.i48, ptr %i_left.i.i, align 8
  %cmp.i.i49 = icmp slt i32 %sub.i.i48, 33
  br i1 %cmp.i.i49, label %if.then.i.i50, label %bs_write_se.exit58

if.then.i.i50:                                    ; preds = %bs_write_se.exit
  %sh_prom6.i.i51 = zext nneg i32 %sub.i.i48 to i64
  %shl7.i.i52 = shl i64 %or.i.i46, %sh_prom6.i.i51
  %add.i.i.i.i53 = call noundef i64 @llvm.bswap.i64(i64 %shl7.i.i52)
  %conv8.i.i54 = trunc i64 %add.i.i.i.i53 to i32
  %p.i.i55 = getelementptr inbounds i8, ptr %h, i64 1800
  %14 = load ptr, ptr %p.i.i55, align 8
  store i32 %conv8.i.i54, ptr %14, align 4
  %15 = load i32, ptr %i_left.i.i, align 8
  %add.i.i56 = add nsw i32 %15, 32
  store i32 %add.i.i56, ptr %i_left.i.i, align 8
  %16 = load ptr, ptr %p.i.i55, align 8
  %add.ptr.i.i57 = getelementptr inbounds i8, ptr %16, i64 4
  store ptr %add.ptr.i.i57, ptr %p.i.i55, align 8
  br label %bs_write_se.exit58

bs_write_se.exit58:                               ; preds = %bs_write_se.exit, %if.then.i.i50
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mvp) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @block_residual_write_cavlc(ptr noundef %h, i32 noundef %i_ctxBlockCat, ptr noundef %l, i32 noundef %nC) unnamed_addr #0 {
entry:
  %runlevel = alloca %struct.x264_run_level_t, align 4
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %runlevel) #7
  %level = getelementptr inbounds i8, ptr %runlevel, i64 4
  %arrayidx = getelementptr inbounds i8, ptr %runlevel, i64 6
  store i16 2, ptr %arrayidx, align 2
  %arrayidx2 = getelementptr inbounds i8, ptr %runlevel, i64 8
  store i16 2, ptr %arrayidx2, align 4
  %coeff_level_run = getelementptr inbounds i8, ptr %h, i64 33216
  %idxprom = zext nneg i32 %i_ctxBlockCat to i64
  %arrayidx3 = getelementptr inbounds [5 x ptr], ptr %coeff_level_run, i64 0, i64 %idxprom
  %0 = load ptr, ptr %arrayidx3, align 8
  %call = call i32 %0(ptr noundef %l, ptr noundef nonnull %runlevel) #7
  %1 = load i32, ptr %runlevel, align 4
  %reass.sub = sub i32 %1, %call
  %sub = add i32 %reass.sub, 1
  %2 = load i16, ptr %level, align 4
  %conv = sext i16 %2 to i32
  %add6 = add nsw i32 %conv, 1
  %sub10 = sub nsw i32 1, %conv
  %or = or i32 %add6, %sub10
  %shr301 = lshr i32 %or, 31
  %3 = load i16, ptr %arrayidx, align 2
  %conv13 = sext i16 %3 to i32
  %add14 = add nsw i32 %conv13, 1
  %sub18 = sub nsw i32 1, %conv13
  %or19 = or i32 %add14, %sub18
  %4 = lshr i32 %or19, 30
  %and21 = and i32 %4, 2
  %or22 = or disjoint i32 %and21, %shr301
  %5 = load i16, ptr %arrayidx2, align 4
  %conv25 = sext i16 %5 to i32
  %add26 = add nsw i32 %conv25, 1
  %sub30 = sub nsw i32 1, %conv25
  %or31 = or i32 %add26, %sub30
  %6 = lshr i32 %or31, 29
  %and33 = and i32 %6, 4
  %or34 = or disjoint i32 %or22, %and33
  %idxprom35 = zext nneg i32 %or34 to i64
  %arrayidx36 = getelementptr inbounds [8 x i8], ptr @block_residual_write_cavlc.ctz_index, i64 0, i64 %idxprom35
  %7 = load i8, ptr %arrayidx36, align 1
  %conv37 = zext i8 %7 to i32
  %shr41302 = lshr i32 %conv25, 31
  %8 = lshr i16 %3, 14
  %9 = and i16 %8, 2
  %10 = lshr i16 %2, 13
  %11 = and i16 %10, 4
  %or48413 = or disjoint i16 %9, %11
  %or48 = zext nneg i16 %or48413 to i32
  %or54 = or disjoint i32 %shr41302, %or48
  %sub55 = sub nsw i32 3, %conv37
  %shr56 = lshr i32 %or54, %sub55
  %idxprom57 = zext nneg i32 %nC to i64
  %sub59 = add nsw i32 %call, -1
  %idxprom60 = sext i32 %sub59 to i64
  %idxprom62 = zext i8 %7 to i64
  %arrayidx63 = getelementptr inbounds [5 x [16 x [4 x %struct.vlc_t]]], ptr @x264_coeff_token, i64 0, i64 %idxprom57, i64 %idxprom60, i64 %idxprom62
  %i_size = getelementptr inbounds i8, ptr %arrayidx63, i64 1
  %12 = load i8, ptr %i_size, align 1
  %conv64 = zext i8 %12 to i32
  %13 = load i8, ptr %arrayidx63, align 2
  %cur_bits.i = getelementptr inbounds i8, ptr %h, i64 1816
  %14 = load i64, ptr %cur_bits.i, align 8
  %sh_prom.i = zext nneg i8 %12 to i64
  %shl.i = shl i64 %14, %sh_prom.i
  %conv.i = zext i8 %13 to i64
  %or.i = or i64 %shl.i, %conv.i
  store i64 %or.i, ptr %cur_bits.i, align 8
  %i_left.i = getelementptr inbounds i8, ptr %h, i64 1824
  %15 = load i32, ptr %i_left.i, align 8
  %sub.i = sub nsw i32 %15, %conv64
  store i32 %sub.i, ptr %i_left.i, align 8
  %cmp.i = icmp slt i32 %sub.i, 33
  br i1 %cmp.i, label %if.then.i, label %bs_write.exit

if.then.i:                                        ; preds = %entry
  %sh_prom6.i = zext nneg i32 %sub.i to i64
  %shl7.i = shl i64 %or.i, %sh_prom6.i
  %add.i.i.i = call noundef i64 @llvm.bswap.i64(i64 %shl7.i)
  %conv8.i = trunc i64 %add.i.i.i to i32
  %p.i = getelementptr inbounds i8, ptr %h, i64 1800
  %16 = load ptr, ptr %p.i, align 8
  store i32 %conv8.i, ptr %16, align 4
  %17 = load i32, ptr %i_left.i, align 8
  %add.i = add nsw i32 %17, 32
  %18 = load ptr, ptr %p.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %18, i64 4
  store ptr %add.ptr.i, ptr %p.i, align 8
  %.pre = load i64, ptr %cur_bits.i, align 8
  br label %bs_write.exit

bs_write.exit:                                    ; preds = %entry, %if.then.i
  %19 = phi i32 [ %sub.i, %entry ], [ %add.i, %if.then.i ]
  %20 = phi i64 [ %or.i, %entry ], [ %.pre, %if.then.i ]
  %cmp = icmp sgt i32 %call, 10
  %cmp74 = icmp ne i32 %or34, 0
  %21 = and i1 %cmp, %cmp74
  %land.ext = zext i1 %21 to i32
  %shl.i305 = shl i64 %20, %idxprom62
  %conv.i306 = zext nneg i32 %shr56 to i64
  %or.i307 = or i64 %shl.i305, %conv.i306
  store i64 %or.i307, ptr %cur_bits.i, align 8
  %sub.i309 = sub nsw i32 %19, %conv37
  store i32 %sub.i309, ptr %i_left.i, align 8
  %cmp.i310 = icmp slt i32 %sub.i309, 33
  br i1 %cmp.i310, label %if.then.i311, label %bs_write.exit319

if.then.i311:                                     ; preds = %bs_write.exit
  %sh_prom6.i312 = zext nneg i32 %sub.i309 to i64
  %shl7.i313 = shl i64 %or.i307, %sh_prom6.i312
  %add.i.i.i314 = call noundef i64 @llvm.bswap.i64(i64 %shl7.i313)
  %conv8.i315 = trunc i64 %add.i.i.i314 to i32
  %p.i316 = getelementptr inbounds i8, ptr %h, i64 1800
  %22 = load ptr, ptr %p.i316, align 8
  store i32 %conv8.i315, ptr %22, align 4
  %23 = load i32, ptr %i_left.i, align 8
  %add.i317 = add nsw i32 %23, 32
  store i32 %add.i317, ptr %i_left.i, align 8
  %24 = load ptr, ptr %p.i316, align 8
  %add.ptr.i318 = getelementptr inbounds i8, ptr %24, i64 4
  store ptr %add.ptr.i318, ptr %p.i316, align 8
  br label %bs_write.exit319

bs_write.exit319:                                 ; preds = %bs_write.exit, %if.then.i311
  %25 = phi i32 [ %sub.i309, %bs_write.exit ], [ %add.i317, %if.then.i311 ]
  %cmp76 = icmp sgt i32 %call, %conv37
  br i1 %cmp76, label %if.then, label %if.end150

if.then:                                          ; preds = %bs_write.exit319
  %arrayidx80 = getelementptr inbounds [16 x i16], ptr %level, i64 0, i64 %idxprom62
  %26 = load i16, ptr %arrayidx80, align 2
  %conv81 = sext i16 %26 to i32
  %add86 = add nsw i32 %conv81, 64
  %shr87 = ashr i32 %conv81, 31
  %or88 = or i32 %shr87, 1
  %and92 = select i1 %cmp74, i32 %or88, i32 0
  %sub93 = sub nsw i32 %conv81, %and92
  %cmp95 = icmp ult i32 %add86, 128
  br i1 %cmp95, label %if.then97, label %if.else

if.then97:                                        ; preds = %if.then
  %add94 = add nsw i32 %sub93, 64
  %idxprom98 = zext i1 %21 to i64
  %idxprom100 = sext i32 %add94 to i64
  %arrayidx101 = getelementptr inbounds [7 x [128 x %struct.vlc_large_t]], ptr @x264_level_token, i64 0, i64 %idxprom98, i64 %idxprom100
  %i_size102 = getelementptr inbounds i8, ptr %arrayidx101, i64 2
  %27 = load i8, ptr %i_size102, align 2
  %conv103 = zext i8 %27 to i32
  %28 = load i16, ptr %arrayidx101, align 4
  %29 = load i64, ptr %cur_bits.i, align 8
  %sh_prom.i321 = zext nneg i8 %27 to i64
  %shl.i322 = shl i64 %29, %sh_prom.i321
  %conv.i323 = zext i16 %28 to i64
  %or.i324 = or i64 %shl.i322, %conv.i323
  store i64 %or.i324, ptr %cur_bits.i, align 8
  %sub.i326 = sub nsw i32 %25, %conv103
  store i32 %sub.i326, ptr %i_left.i, align 8
  %cmp.i327 = icmp slt i32 %sub.i326, 33
  br i1 %cmp.i327, label %if.then.i328, label %bs_write.exit336

if.then.i328:                                     ; preds = %if.then97
  %sh_prom6.i329 = zext nneg i32 %sub.i326 to i64
  %shl7.i330 = shl i64 %or.i324, %sh_prom6.i329
  %add.i.i.i331 = call noundef i64 @llvm.bswap.i64(i64 %shl7.i330)
  %conv8.i332 = trunc i64 %add.i.i.i331 to i32
  %p.i333 = getelementptr inbounds i8, ptr %h, i64 1800
  %30 = load ptr, ptr %p.i333, align 8
  store i32 %conv8.i332, ptr %30, align 4
  %31 = load i32, ptr %i_left.i, align 8
  %add.i334 = add nsw i32 %31, 32
  store i32 %add.i334, ptr %i_left.i, align 8
  %32 = load ptr, ptr %p.i333, align 8
  %add.ptr.i335 = getelementptr inbounds i8, ptr %32, i64 4
  store ptr %add.ptr.i335, ptr %p.i333, align 8
  br label %bs_write.exit336

bs_write.exit336:                                 ; preds = %if.then97, %if.then.i328
  %idxprom112 = zext nneg i32 %add86 to i64
  %i_next = getelementptr inbounds [7 x [128 x %struct.vlc_large_t]], ptr @x264_level_token, i64 0, i64 %idxprom98, i64 %idxprom112, i32 2
  %33 = load i8, ptr %i_next, align 1
  %conv114 = zext i8 %33 to i32
  br label %if.end

if.else:                                          ; preds = %if.then
  %call116 = call fastcc i32 @block_residual_write_cavlc_escape(ptr noundef nonnull %h, i32 noundef %land.ext, i32 noundef %sub93)
  br label %if.end

if.end:                                           ; preds = %if.else, %bs_write.exit336
  %i_suffix_length.0 = phi i32 [ %conv114, %bs_write.exit336 ], [ %call116, %if.else ]
  %i.0405 = add nuw nsw i32 %conv37, 1
  %cmp118406 = icmp ult i32 %i.0405, %call
  br i1 %cmp118406, label %for.body.lr.ph, label %if.end150

for.body.lr.ph:                                   ; preds = %if.end
  %p.i350 = getelementptr inbounds i8, ptr %h, i64 1800
  %34 = add nuw nsw i64 %idxprom62, 1
  %wide.trip.count = zext nneg i32 %call to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %indvars.iv = phi i64 [ %34, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %i_suffix_length.1407 = phi i32 [ %i_suffix_length.0, %for.body.lr.ph ], [ %i_suffix_length.2, %for.inc ]
  %arrayidx122 = getelementptr inbounds [16 x i16], ptr %level, i64 0, i64 %indvars.iv
  %35 = load i16, ptr %arrayidx122, align 2
  %conv123 = sext i16 %35 to i32
  %add124 = add nsw i32 %conv123, 64
  %cmp125 = icmp ult i32 %add124, 128
  br i1 %cmp125, label %if.then127, label %if.else146

if.then127:                                       ; preds = %for.body
  %idxprom128 = sext i32 %i_suffix_length.1407 to i64
  %idxprom130 = zext nneg i32 %add124 to i64
  %arrayidx131 = getelementptr inbounds [7 x [128 x %struct.vlc_large_t]], ptr @x264_level_token, i64 0, i64 %idxprom128, i64 %idxprom130
  %i_size132 = getelementptr inbounds i8, ptr %arrayidx131, i64 2
  %36 = load i8, ptr %i_size132, align 2
  %conv133 = zext i8 %36 to i32
  %37 = load i16, ptr %arrayidx131, align 4
  %38 = load i64, ptr %cur_bits.i, align 8
  %sh_prom.i338 = zext nneg i8 %36 to i64
  %shl.i339 = shl i64 %38, %sh_prom.i338
  %conv.i340 = zext i16 %37 to i64
  %or.i341 = or i64 %shl.i339, %conv.i340
  store i64 %or.i341, ptr %cur_bits.i, align 8
  %39 = load i32, ptr %i_left.i, align 8
  %sub.i343 = sub nsw i32 %39, %conv133
  store i32 %sub.i343, ptr %i_left.i, align 8
  %cmp.i344 = icmp slt i32 %sub.i343, 33
  br i1 %cmp.i344, label %if.then.i345, label %bs_write.exit353

if.then.i345:                                     ; preds = %if.then127
  %sh_prom6.i346 = zext nneg i32 %sub.i343 to i64
  %shl7.i347 = shl i64 %or.i341, %sh_prom6.i346
  %add.i.i.i348 = call noundef i64 @llvm.bswap.i64(i64 %shl7.i347)
  %conv8.i349 = trunc i64 %add.i.i.i348 to i32
  %40 = load ptr, ptr %p.i350, align 8
  store i32 %conv8.i349, ptr %40, align 4
  %41 = load i32, ptr %i_left.i, align 8
  %add.i351 = add nsw i32 %41, 32
  store i32 %add.i351, ptr %i_left.i, align 8
  %42 = load ptr, ptr %p.i350, align 8
  %add.ptr.i352 = getelementptr inbounds i8, ptr %42, i64 4
  store ptr %add.ptr.i352, ptr %p.i350, align 8
  br label %bs_write.exit353

bs_write.exit353:                                 ; preds = %if.then127, %if.then.i345
  %i_next144 = getelementptr inbounds i8, ptr %arrayidx131, i64 3
  %43 = load i8, ptr %i_next144, align 1
  %conv145 = zext i8 %43 to i32
  br label %for.inc

if.else146:                                       ; preds = %for.body
  %call148 = call fastcc i32 @block_residual_write_cavlc_escape(ptr noundef %h, i32 noundef %i_suffix_length.1407, i32 noundef %conv123)
  br label %for.inc

for.inc:                                          ; preds = %bs_write.exit353, %if.else146
  %i_suffix_length.2 = phi i32 [ %conv145, %bs_write.exit353 ], [ %call148, %if.else146 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %if.end150, label %for.body

if.end150:                                        ; preds = %for.inc, %if.end, %bs_write.exit319
  %conv152 = and i32 %call, 255
  %arrayidx154 = getelementptr inbounds [5 x i8], ptr @block_residual_write_cavlc.count_cat, i64 0, i64 %idxprom
  %44 = load i8, ptr %arrayidx154, align 1
  %conv155 = zext i8 %44 to i32
  %cmp156 = icmp ult i32 %conv152, %conv155
  br i1 %cmp156, label %if.then158, label %if.end192

if.then158:                                       ; preds = %if.end150
  %cmp159 = icmp eq i32 %i_ctxBlockCat, 3
  %idxprom165 = sext i32 %sub to i64
  %45 = load i64, ptr %cur_bits.i, align 8
  br i1 %cmp159, label %if.then161, label %if.else176

if.then161:                                       ; preds = %if.then158
  %arrayidx166 = getelementptr inbounds [3 x [4 x %struct.vlc_t]], ptr @x264_total_zeros_dc, i64 0, i64 %idxprom60, i64 %idxprom165
  %i_size167 = getelementptr inbounds i8, ptr %arrayidx166, i64 1
  %46 = load i8, ptr %i_size167, align 1
  %conv168 = zext i8 %46 to i32
  %47 = load i8, ptr %arrayidx166, align 2
  %sh_prom.i355 = zext nneg i8 %46 to i64
  %shl.i356 = shl i64 %45, %sh_prom.i355
  %conv.i357 = zext i8 %47 to i64
  %or.i358 = or i64 %shl.i356, %conv.i357
  store i64 %or.i358, ptr %cur_bits.i, align 8
  %48 = load i32, ptr %i_left.i, align 8
  %sub.i360 = sub nsw i32 %48, %conv168
  store i32 %sub.i360, ptr %i_left.i, align 8
  %cmp.i361 = icmp slt i32 %sub.i360, 33
  br i1 %cmp.i361, label %if.end192.sink.split, label %if.end192

if.else176:                                       ; preds = %if.then158
  %arrayidx181 = getelementptr inbounds [15 x [16 x %struct.vlc_t]], ptr @x264_total_zeros, i64 0, i64 %idxprom60, i64 %idxprom165
  %i_size182 = getelementptr inbounds i8, ptr %arrayidx181, i64 1
  %49 = load i8, ptr %i_size182, align 1
  %conv183 = zext i8 %49 to i32
  %50 = load i8, ptr %arrayidx181, align 2
  %sh_prom.i372 = zext nneg i8 %49 to i64
  %shl.i373 = shl i64 %45, %sh_prom.i372
  %conv.i374 = zext i8 %50 to i64
  %or.i375 = or i64 %shl.i373, %conv.i374
  store i64 %or.i375, ptr %cur_bits.i, align 8
  %51 = load i32, ptr %i_left.i, align 8
  %sub.i377 = sub nsw i32 %51, %conv183
  store i32 %sub.i377, ptr %i_left.i, align 8
  %cmp.i378 = icmp slt i32 %sub.i377, 33
  br i1 %cmp.i378, label %if.end192.sink.split, label %if.end192

if.end192.sink.split:                             ; preds = %if.else176, %if.then161
  %sub.i377.sink = phi i32 [ %sub.i360, %if.then161 ], [ %sub.i377, %if.else176 ]
  %or.i375.sink = phi i64 [ %or.i358, %if.then161 ], [ %or.i375, %if.else176 ]
  %sh_prom6.i380 = zext nneg i32 %sub.i377.sink to i64
  %shl7.i381 = shl i64 %or.i375.sink, %sh_prom6.i380
  %add.i.i.i382 = call noundef i64 @llvm.bswap.i64(i64 %shl7.i381)
  %conv8.i383 = trunc i64 %add.i.i.i382 to i32
  %p.i384 = getelementptr inbounds i8, ptr %h, i64 1800
  %52 = load ptr, ptr %p.i384, align 8
  store i32 %conv8.i383, ptr %52, align 4
  %53 = load i32, ptr %i_left.i, align 8
  %add.i385 = add nsw i32 %53, 32
  store i32 %add.i385, ptr %i_left.i, align 8
  %54 = load ptr, ptr %p.i384, align 8
  %add.ptr.i386 = getelementptr inbounds i8, ptr %54, i64 4
  store ptr %add.ptr.i386, ptr %p.i384, align 8
  br label %if.end192

if.end192:                                        ; preds = %if.end192.sink.split, %if.else176, %if.then161, %if.end150
  %cmp196409 = icmp sgt i32 %call, 1
  %cmp199410 = icmp ult i32 %reass.sub, 2147483647
  %55 = select i1 %cmp196409, i1 %cmp199410, i1 false
  br i1 %55, label %for.body204.lr.ph, label %for.cond.cleanup203

for.body204.lr.ph:                                ; preds = %if.end192
  %run = getelementptr inbounds i8, ptr %runlevel, i64 36
  %p.i401 = getelementptr inbounds i8, ptr %h, i64 1800
  %.pre418 = load i32, ptr %i_left.i, align 8
  br label %for.body204

for.cond.cleanup203:                              ; preds = %bs_write.exit404, %if.end192
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %runlevel) #7
  ret i32 %call

for.body204:                                      ; preds = %for.body204.lr.ph, %bs_write.exit404
  %56 = phi i32 [ %.pre418, %for.body204.lr.ph ], [ %66, %bs_write.exit404 ]
  %indvars.iv415 = phi i64 [ 0, %for.body204.lr.ph ], [ %indvars.iv.next416, %bs_write.exit404 ]
  %i_total_zero.0411 = phi i32 [ %sub, %for.body204.lr.ph ], [ %sub230, %bs_write.exit404 ]
  %57 = call i32 @llvm.umin.i32(i32 %i_total_zero.0411, i32 7)
  %sub207 = add nsw i32 %57, -1
  %idxprom208 = zext nneg i32 %sub207 to i64
  %arrayidx211 = getelementptr inbounds [16 x i8], ptr %run, i64 0, i64 %indvars.iv415
  %58 = load i8, ptr %arrayidx211, align 1
  %idxprom212 = zext i8 %58 to i64
  %arrayidx213 = getelementptr inbounds [7 x [16 x %struct.vlc_t]], ptr @x264_run_before, i64 0, i64 %idxprom208, i64 %idxprom212
  %i_size214 = getelementptr inbounds i8, ptr %arrayidx213, i64 1
  %59 = load i8, ptr %i_size214, align 1
  %conv215 = zext i8 %59 to i32
  %60 = load i8, ptr %arrayidx213, align 2
  %61 = load i64, ptr %cur_bits.i, align 8
  %sh_prom.i389 = zext nneg i8 %59 to i64
  %shl.i390 = shl i64 %61, %sh_prom.i389
  %conv.i391 = zext i8 %60 to i64
  %or.i392 = or i64 %shl.i390, %conv.i391
  store i64 %or.i392, ptr %cur_bits.i, align 8
  %sub.i394 = sub nsw i32 %56, %conv215
  store i32 %sub.i394, ptr %i_left.i, align 8
  %cmp.i395 = icmp slt i32 %sub.i394, 33
  br i1 %cmp.i395, label %if.then.i396, label %bs_write.exit404

if.then.i396:                                     ; preds = %for.body204
  %sh_prom6.i397 = zext nneg i32 %sub.i394 to i64
  %shl7.i398 = shl i64 %or.i392, %sh_prom6.i397
  %add.i.i.i399 = call noundef i64 @llvm.bswap.i64(i64 %shl7.i398)
  %conv8.i400 = trunc i64 %add.i.i.i399 to i32
  %62 = load ptr, ptr %p.i401, align 8
  store i32 %conv8.i400, ptr %62, align 4
  %63 = load i32, ptr %i_left.i, align 8
  %add.i402 = add nsw i32 %63, 32
  store i32 %add.i402, ptr %i_left.i, align 8
  %64 = load ptr, ptr %p.i401, align 8
  %add.ptr.i403 = getelementptr inbounds i8, ptr %64, i64 4
  store ptr %add.ptr.i403, ptr %p.i401, align 8
  %.pre419 = load i8, ptr %arrayidx211, align 1
  br label %bs_write.exit404

bs_write.exit404:                                 ; preds = %for.body204, %if.then.i396
  %65 = phi i8 [ %58, %for.body204 ], [ %.pre419, %if.then.i396 ]
  %66 = phi i32 [ %sub.i394, %for.body204 ], [ %add.i402, %if.then.i396 ]
  %conv229 = zext i8 %65 to i32
  %sub230 = sub nsw i32 %i_total_zero.0411, %conv229
  %indvars.iv.next416 = add nuw nsw i64 %indvars.iv415, 1
  %cmp196 = icmp slt i64 %indvars.iv.next416, %idxprom60
  %cmp199 = icmp sgt i32 %sub230, 0
  %67 = select i1 %cmp196, i1 %cmp199, i1 false
  br i1 %67, label %for.body204, label %for.cond.cleanup203
}

declare void @x264_mb_predict_mv(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @block_residual_write_cavlc_escape(ptr noundef %h, i32 noundef %i_suffix_length, i32 noundef %level) unnamed_addr #5 {
entry:
  %shr = ashr i32 %level, 15
  %xor = xor i32 %shr, %level
  %sub = sub nsw i32 %xor, %shr
  %mul = shl nsw i32 %sub, 1
  %sub1 = sub nsw i32 %mul, %shr
  %sub2 = add nsw i32 %sub1, -2
  %shr3 = ashr i32 %sub2, %i_suffix_length
  %cmp = icmp slt i32 %shr3, 15
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %add = add i32 %i_suffix_length, 1
  %add5 = add i32 %add, %shr3
  %shl = shl nuw i32 1, %i_suffix_length
  %sub7 = add nsw i32 %shl, -1
  %and = and i32 %sub2, %sub7
  %add8 = add nsw i32 %and, %shl
  %cur_bits.i = getelementptr inbounds i8, ptr %h, i64 1816
  %0 = load i64, ptr %cur_bits.i, align 8
  %sh_prom.i = zext nneg i32 %add5 to i64
  %shl.i = shl i64 %0, %sh_prom.i
  %conv.i = zext i32 %add8 to i64
  %or.i = or i64 %shl.i, %conv.i
  store i64 %or.i, ptr %cur_bits.i, align 8
  %i_left.i = getelementptr inbounds i8, ptr %h, i64 1824
  %1 = load i32, ptr %i_left.i, align 8
  %sub.i = sub nsw i32 %1, %add5
  store i32 %sub.i, ptr %i_left.i, align 8
  %cmp.i = icmp slt i32 %sub.i, 33
  br i1 %cmp.i, label %if.end35.sink.split, label %if.end35

if.else:                                          ; preds = %entry
  %shl9.neg = shl i32 -15, %i_suffix_length
  %sub10 = add i32 %sub2, %shl9.neg
  %cmp11 = icmp eq i32 %i_suffix_length, 0
  %sub13 = add nsw i32 %sub10, -15
  %spec.select = select i1 %cmp11, i32 %sub13, i32 %sub10
  %cmp14 = icmp sgt i32 %spec.select, 4095
  br i1 %cmp14, label %if.then15, label %if.end28

if.then15:                                        ; preds = %if.else
  %sps = getelementptr inbounds i8, ptr %h, i64 3200
  %2 = load ptr, ptr %sps, align 16
  %i_profile_idc = getelementptr inbounds i8, ptr %2, i64 4
  %3 = load i32, ptr %i_profile_idc, align 4
  %cmp16 = icmp sgt i32 %3, 99
  br i1 %cmp16, label %while.cond.preheader, label %if.else24

while.cond.preheader:                             ; preds = %if.then15
  %cmp20113.not = icmp eq i32 %spec.select, 4096
  br i1 %cmp20113.not, label %if.end28, label %while.body

while.body:                                       ; preds = %while.cond.preheader, %while.body
  %shl19116 = phi i32 [ %shl19, %while.body ], [ 4096, %while.cond.preheader ]
  %i_level_code.1115 = phi i32 [ %sub23, %while.body ], [ %spec.select, %while.cond.preheader ]
  %i_level_prefix.0114 = phi i32 [ %inc, %while.body ], [ 15, %while.cond.preheader ]
  %sub23 = sub nsw i32 %i_level_code.1115, %shl19116
  %inc = add nuw nsw i32 %i_level_prefix.0114, 1
  %sub18 = add nsw i32 %i_level_prefix.0114, -2
  %shl19 = shl nuw i32 1, %sub18
  %cmp20 = icmp sgt i32 %sub23, %shl19
  br i1 %cmp20, label %while.body, label %if.end28

if.else24:                                        ; preds = %if.then15
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %h, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef %spec.select) #7
  %and25 = and i32 %spec.select, 1
  %add26 = or disjoint i32 %and25, 4094
  br label %if.end28

if.end28:                                         ; preds = %while.body, %while.cond.preheader, %if.else24, %if.else
  %i_level_prefix.1 = phi i32 [ 15, %if.else24 ], [ 15, %if.else ], [ 15, %while.cond.preheader ], [ %inc, %while.body ]
  %i_level_code.2 = phi i32 [ %add26, %if.else24 ], [ %spec.select, %if.else ], [ 4096, %while.cond.preheader ], [ %sub23, %while.body ]
  %add29 = add nuw nsw i32 %i_level_prefix.1, 1
  %cur_bits.i80 = getelementptr inbounds i8, ptr %h, i64 1816
  %4 = load i64, ptr %cur_bits.i80, align 8
  %sh_prom.i81 = zext nneg i32 %add29 to i64
  %shl.i82 = shl i64 %4, %sh_prom.i81
  %or.i83 = or i64 %shl.i82, 1
  store i64 %or.i83, ptr %cur_bits.i80, align 8
  %i_left.i84 = getelementptr inbounds i8, ptr %h, i64 1824
  %5 = load i32, ptr %i_left.i84, align 8
  %sub.i85 = sub nsw i32 %5, %add29
  store i32 %sub.i85, ptr %i_left.i84, align 8
  %cmp.i86 = icmp slt i32 %sub.i85, 33
  br i1 %cmp.i86, label %if.then.i87, label %bs_write.exit95

if.then.i87:                                      ; preds = %if.end28
  %sh_prom6.i88 = zext nneg i32 %sub.i85 to i64
  %shl7.i89 = shl i64 %or.i83, %sh_prom6.i88
  %add.i.i.i90 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i89)
  %conv8.i91 = trunc i64 %add.i.i.i90 to i32
  %p.i92 = getelementptr inbounds i8, ptr %h, i64 1800
  %6 = load ptr, ptr %p.i92, align 8
  store i32 %conv8.i91, ptr %6, align 4
  %7 = load i32, ptr %i_left.i84, align 8
  %add.i93 = add nsw i32 %7, 32
  %8 = load ptr, ptr %p.i92, align 8
  %add.ptr.i94 = getelementptr inbounds i8, ptr %8, i64 4
  store ptr %add.ptr.i94, ptr %p.i92, align 8
  %.pre = load i64, ptr %cur_bits.i80, align 8
  br label %bs_write.exit95

bs_write.exit95:                                  ; preds = %if.end28, %if.then.i87
  %9 = phi i32 [ %sub.i85, %if.end28 ], [ %add.i93, %if.then.i87 ]
  %10 = phi i64 [ %or.i83, %if.end28 ], [ %.pre, %if.then.i87 ]
  %sub30 = add nsw i32 %i_level_prefix.1, -3
  %notmask = shl nsw i32 -1, %sub30
  %sub33 = xor i32 %notmask, -1
  %and34 = and i32 %i_level_code.2, %sub33
  %sh_prom.i97 = zext nneg i32 %sub30 to i64
  %shl.i98 = shl i64 %10, %sh_prom.i97
  %conv.i99 = zext nneg i32 %and34 to i64
  %or.i100 = or i64 %shl.i98, %conv.i99
  store i64 %or.i100, ptr %cur_bits.i80, align 8
  %sub.i102 = sub nsw i32 %9, %sub30
  store i32 %sub.i102, ptr %i_left.i84, align 8
  %cmp.i103 = icmp slt i32 %sub.i102, 33
  br i1 %cmp.i103, label %if.end35.sink.split, label %if.end35

if.end35.sink.split:                              ; preds = %bs_write.exit95, %if.then
  %sub.i102.sink = phi i32 [ %sub.i, %if.then ], [ %sub.i102, %bs_write.exit95 ]
  %or.i100.sink = phi i64 [ %or.i, %if.then ], [ %or.i100, %bs_write.exit95 ]
  %i_left.i84.sink119 = phi ptr [ %i_left.i, %if.then ], [ %i_left.i84, %bs_write.exit95 ]
  %sh_prom6.i105 = zext nneg i32 %sub.i102.sink to i64
  %shl7.i106 = shl i64 %or.i100.sink, %sh_prom6.i105
  %add.i.i.i107 = tail call noundef i64 @llvm.bswap.i64(i64 %shl7.i106)
  %conv8.i108 = trunc i64 %add.i.i.i107 to i32
  %p.i109 = getelementptr inbounds i8, ptr %h, i64 1800
  %11 = load ptr, ptr %p.i109, align 8
  store i32 %conv8.i108, ptr %11, align 4
  %12 = load i32, ptr %i_left.i84.sink119, align 8
  %add.i110 = add nsw i32 %12, 32
  store i32 %add.i110, ptr %i_left.i84.sink119, align 8
  %13 = load ptr, ptr %p.i109, align 8
  %add.ptr.i111 = getelementptr inbounds i8, ptr %13, i64 4
  store ptr %add.ptr.i111, ptr %p.i109, align 8
  br label %if.end35

if.end35:                                         ; preds = %if.end35.sink.split, %bs_write.exit95, %if.then
  %spec.select79 = tail call i32 @llvm.umax.i32(i32 %i_suffix_length, i32 1)
  %idxprom = sext i32 %spec.select79 to i64
  %arrayidx = getelementptr inbounds [7 x i16], ptr @block_residual_write_cavlc_escape.next_suffix, i64 0, i64 %idxprom
  %14 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %14 to i32
  %cmp40 = icmp sgt i32 %sub, %conv
  %inc43 = zext i1 %cmp40 to i32
  %i_suffix_length.addr.1 = add nsw i32 %spec.select79, %inc43
  ret i32 %i_suffix_length.addr.1
}

declare void @x264_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.smin.i8(i8, i8) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
