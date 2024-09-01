; ModuleID = 'ldecod_src/output.c'
source_filename = "ldecod_src/output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@write_out_picture.SubWidthC = internal unnamed_addr constant [4 x i32] [i32 1, i32 2, i32 2, i32 1], align 16
@write_out_picture.SubHeightC = internal unnamed_addr constant [4 x i32] [i32 1, i32 2, i32 1, i32 1], align 16
@.str = private unnamed_addr constant [23 x i8] c"write_out_picture: buf\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"%s_ViewId%04d.yuv\00", align 1
@errortext = external global [300 x i8], align 16
@.str.4 = private unnamed_addr constant [20 x i8] c"Error open file %s \00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.5 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"write_out_picture: error writing to RGB file\00", align 1
@.str.7 = private unnamed_addr constant [45 x i8] c"write_out_picture: error writing to YUV file\00", align 1
@.str.8 = private unnamed_addr constant [78 x i8] c"writing only to formats of 8, 16 or 32 bit allowed on big endian architecture\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @write_picture(ptr noundef %p_Vid, ptr noundef %p, i32 %p_out, i32 %real_structure) local_unnamed_addr #0 {
entry:
  %out_ViewFileName.i = alloca [255 x i8], align 16
  %chBuf.i = alloca [255 x i8], align 16
  %0 = load ptr, ptr %p_Vid, align 8
  call void @llvm.lifetime.start.p0(i64 255, ptr nonnull %out_ViewFileName.i) #14
  call void @llvm.lifetime.start.p0(i64 255, ptr nonnull %chBuf.i) #14
  %view_id.i = getelementptr inbounds i8, ptr %p, i64 344
  %1 = load i32, ptr %view_id.i, align 8
  %call.i = tail call i32 @GetVOIdx(ptr noundef nonnull %p_Vid, i32 noundef %1) #14
  %pic_unit_bitsize_on_disk.i = getelementptr inbounds i8, ptr %p_Vid, i64 849036
  %active_sps.i = getelementptr inbounds i8, ptr %p_Vid, i64 16
  %2 = load ptr, ptr %active_sps.i, align 8
  %matrix_coefficients.i = getelementptr inbounds i8, ptr %2, i64 3216
  %3 = load i32, ptr %matrix_coefficients.i, align 4
  %cmp.i = icmp eq i32 %3, 0
  %non_existing.i = getelementptr inbounds i8, ptr %p, i64 52
  %4 = load i32, ptr %non_existing.i, align 4
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %if.end.i, label %write_out_picture.exit

if.end.i:                                         ; preds = %entry
  %5 = load i32, ptr %pic_unit_bitsize_on_disk.i, align 4
  %add.i = add nsw i32 %5, 7
  %shr.i = ashr i32 %add.i, 3
  %seiHasTone_mapping.i = getelementptr inbounds i8, ptr %p, i64 324
  %6 = load i32, ptr %seiHasTone_mapping.i, align 4
  %tobool2.i = icmp ne i32 %6, 0
  %or.cond.i = select i1 %tobool2.i, i1 %cmp.i, i1 false
  br i1 %or.cond.i, label %if.then4.i, label %if.end13.i

if.then4.i:                                       ; preds = %if.end.i
  %tonemapped_bit_depth.i = getelementptr inbounds i8, ptr %p, i64 332
  %7 = load i32, ptr %tonemapped_bit_depth.i, align 4
  %cmp5.i = icmp sgt i32 %7, 8
  %cond.i = select i1 %cmp5.i, i32 2, i32 1
  %imgY.i = getelementptr inbounds i8, ptr %p, i64 128
  %8 = load ptr, ptr %imgY.i, align 8
  %tone_mapping_lut.i = getelementptr inbounds i8, ptr %p, i64 336
  %9 = load ptr, ptr %tone_mapping_lut.i, align 8
  %size_x.i = getelementptr inbounds i8, ptr %p, i64 64
  %10 = load i32, ptr %size_x.i, align 8
  %size_y.i = getelementptr inbounds i8, ptr %p, i64 68
  %11 = load i32, ptr %size_y.i, align 4
  tail call void @tone_map(ptr noundef %8, ptr noundef %9, i32 noundef %10, i32 noundef %11) #14
  %imgUV.i = getelementptr inbounds i8, ptr %p, i64 136
  %12 = load ptr, ptr %imgUV.i, align 8
  %13 = load ptr, ptr %12, align 8
  %14 = load ptr, ptr %tone_mapping_lut.i, align 8
  %size_x_cr.i = getelementptr inbounds i8, ptr %p, i64 72
  %15 = load i32, ptr %size_x_cr.i, align 8
  %size_y_cr.i = getelementptr inbounds i8, ptr %p, i64 76
  %16 = load i32, ptr %size_y_cr.i, align 4
  tail call void @tone_map(ptr noundef %13, ptr noundef %14, i32 noundef %15, i32 noundef %16) #14
  %17 = load ptr, ptr %imgUV.i, align 8
  %arrayidx9.i = getelementptr inbounds i8, ptr %17, i64 8
  %18 = load ptr, ptr %arrayidx9.i, align 8
  %19 = load ptr, ptr %tone_mapping_lut.i, align 8
  %20 = load i32, ptr %size_x_cr.i, align 8
  %21 = load i32, ptr %size_y_cr.i, align 4
  tail call void @tone_map(ptr noundef %18, ptr noundef %19, i32 noundef %20, i32 noundef %21) #14
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then4.i, %if.end.i
  %symbol_size_in_bytes.0.i = phi i32 [ %cond.i, %if.then4.i ], [ %shr.i, %if.end.i ]
  %frame_cropping_flag.i = getelementptr inbounds i8, ptr %p, i64 276
  %22 = load i32, ptr %frame_cropping_flag.i, align 4
  %tobool14.not.i = icmp eq i32 %22, 0
  br i1 %tobool14.not.i, label %if.end13.if.end33_crit_edge.i, label %if.then15.i

if.end13.if.end33_crit_edge.i:                    ; preds = %if.end13.i
  %frame_cropping_rect_left_offset35.phi.trans.insert.i = getelementptr inbounds i8, ptr %p, i64 280
  %.pre.i = load i32, ptr %frame_cropping_rect_left_offset35.phi.trans.insert.i, align 8
  %frame_cropping_rect_right_offset37.phi.trans.insert.i = getelementptr inbounds i8, ptr %p, i64 284
  %.pre900.i = load i32, ptr %frame_cropping_rect_right_offset37.phi.trans.insert.i, align 4
  %frame_mbs_only_flag40.phi.trans.insert.i = getelementptr inbounds i8, ptr %p, i64 272
  %.pre901.i = load i32, ptr %frame_mbs_only_flag40.phi.trans.insert.i, align 8
  %frame_cropping_rect_top_offset42.phi.trans.insert.i = getelementptr inbounds i8, ptr %p, i64 288
  %.pre902.i = load i32, ptr %frame_cropping_rect_top_offset42.phi.trans.insert.i, align 8
  %frame_cropping_rect_bottom_offset47.phi.trans.insert.i = getelementptr inbounds i8, ptr %p, i64 292
  %.pre903.i = load i32, ptr %frame_cropping_rect_bottom_offset47.phi.trans.insert.i, align 4
  br label %if.end33.i

if.then15.i:                                      ; preds = %if.end13.i
  %chroma_format_idc.i = getelementptr inbounds i8, ptr %p, i64 268
  %23 = load i32, ptr %chroma_format_idc.i, align 4
  %idxprom.i = sext i32 %23 to i64
  %arrayidx16.i = getelementptr inbounds [4 x i32], ptr @write_out_picture.SubWidthC, i64 0, i64 %idxprom.i
  %24 = load i32, ptr %arrayidx16.i, align 4
  %frame_cropping_rect_left_offset.i = getelementptr inbounds i8, ptr %p, i64 280
  %25 = load i32, ptr %frame_cropping_rect_left_offset.i, align 8
  %mul.i = mul nsw i32 %25, %24
  %frame_cropping_rect_right_offset.i = getelementptr inbounds i8, ptr %p, i64 284
  %26 = load i32, ptr %frame_cropping_rect_right_offset.i, align 4
  %mul20.i = mul nsw i32 %26, %24
  %arrayidx23.i = getelementptr inbounds [4 x i32], ptr @write_out_picture.SubHeightC, i64 0, i64 %idxprom.i
  %27 = load i32, ptr %arrayidx23.i, align 4
  %frame_mbs_only_flag.i = getelementptr inbounds i8, ptr %p, i64 272
  %28 = load i32, ptr %frame_mbs_only_flag.i, align 8
  %sub.i = sub nsw i32 2, %28
  %mul24.i = mul nsw i32 %sub.i, %27
  %frame_cropping_rect_top_offset.i = getelementptr inbounds i8, ptr %p, i64 288
  %29 = load i32, ptr %frame_cropping_rect_top_offset.i, align 8
  %mul25.i = mul nsw i32 %mul24.i, %29
  %frame_cropping_rect_bottom_offset.i = getelementptr inbounds i8, ptr %p, i64 292
  %30 = load i32, ptr %frame_cropping_rect_bottom_offset.i, align 4
  %mul32.i = mul nsw i32 %mul24.i, %30
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.then15.i, %if.end13.if.end33_crit_edge.i
  %31 = phi i32 [ %30, %if.then15.i ], [ %.pre903.i, %if.end13.if.end33_crit_edge.i ]
  %32 = phi i32 [ %29, %if.then15.i ], [ %.pre902.i, %if.end13.if.end33_crit_edge.i ]
  %33 = phi i32 [ %28, %if.then15.i ], [ %.pre901.i, %if.end13.if.end33_crit_edge.i ]
  %34 = phi i32 [ %26, %if.then15.i ], [ %.pre900.i, %if.end13.if.end33_crit_edge.i ]
  %35 = phi i32 [ %25, %if.then15.i ], [ %.pre.i, %if.end13.if.end33_crit_edge.i ]
  %crop_bottom.0.i = phi i32 [ %mul32.i, %if.then15.i ], [ 0, %if.end13.if.end33_crit_edge.i ]
  %crop_top.0.i = phi i32 [ %mul25.i, %if.then15.i ], [ 0, %if.end13.if.end33_crit_edge.i ]
  %crop_right.0.i = phi i32 [ %mul20.i, %if.then15.i ], [ 0, %if.end13.if.end33_crit_edge.i ]
  %crop_left.0.i = phi i32 [ %mul.i, %if.then15.i ], [ 0, %if.end13.if.end33_crit_edge.i ]
  %size_x_cr34.i = getelementptr inbounds i8, ptr %p, i64 72
  %36 = load i32, ptr %size_x_cr34.i, align 8
  %frame_cropping_rect_left_offset35.i = getelementptr inbounds i8, ptr %p, i64 280
  %frame_cropping_rect_right_offset37.i = getelementptr inbounds i8, ptr %p, i64 284
  %37 = add i32 %35, %34
  %sub38.i = sub i32 %36, %37
  %size_y_cr39.i = getelementptr inbounds i8, ptr %p, i64 76
  %38 = load i32, ptr %size_y_cr39.i, align 4
  %frame_mbs_only_flag40.i = getelementptr inbounds i8, ptr %p, i64 272
  %frame_cropping_rect_top_offset42.i = getelementptr inbounds i8, ptr %p, i64 288
  %frame_cropping_rect_bottom_offset47.i = getelementptr inbounds i8, ptr %p, i64 292
  %size_x50.i = getelementptr inbounds i8, ptr %p, i64 64
  %39 = load i32, ptr %size_x50.i, align 8
  %40 = add i32 %crop_left.0.i, %crop_right.0.i
  %sub52.i = sub i32 %39, %40
  %size_y53.i = getelementptr inbounds i8, ptr %p, i64 68
  %41 = load i32, ptr %size_y53.i, align 4
  %call.i.i = tail call i32 @testEndian() #14
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  %spec.select.i.i = select i1 %tobool.not.i.i, ptr @img2buf_normal, ptr @img2buf_endian
  %42 = getelementptr inbounds i8, ptr %p_Vid, i64 856808
  store ptr %spec.select.i.i, ptr %42, align 8
  %pDecOuputPic.i = getelementptr inbounds i8, ptr %p_Vid, i64 856816
  %43 = load ptr, ptr %pDecOuputPic.i, align 8
  %call63.i = tail call ptr @GetOneAvailDecPicFromList(ptr noundef %43, i32 noundef 0) #14
  %pY.i = getelementptr inbounds i8, ptr %call63.i, i64 24
  %44 = load ptr, ptr %pY.i, align 8
  %cmp64.i = icmp eq ptr %44, null
  br i1 %cmp64.i, label %if.then66.i, label %if.end80.i

if.then66.i:                                      ; preds = %if.end33.i
  %45 = add i32 %crop_top.0.i, %crop_bottom.0.i
  %sub55.i = sub i32 %41, %45
  %mul56.i = mul nsw i32 %sub55.i, %sub52.i
  %sub41.neg.i = add i32 %33, -2
  %mul48871.i = add i32 %32, %31
  %.neg.i = mul i32 %sub41.neg.i, %mul48871.i
  %sub49.i = add i32 %38, %.neg.i
  %mul59.i = shl i32 %sub38.i, 1
  %mul60.i = mul i32 %mul59.i, %sub49.i
  %add61.i = add nsw i32 %mul56.i, %mul60.i
  %mul62.i = mul nsw i32 %add61.i, %symbol_size_in_bytes.0.i
  %mul57.i = mul nsw i32 %mul56.i, %symbol_size_in_bytes.0.i
  %conv67.i = sext i32 %mul62.i to i64
  %call68.i = tail call noalias ptr @malloc(i64 noundef %conv67.i) #15
  store ptr %call68.i, ptr %pY.i, align 8
  %idx.ext.i = sext i32 %mul57.i to i64
  %add.ptr.i = getelementptr inbounds i8, ptr %call68.i, i64 %idx.ext.i
  %pU.i = getelementptr inbounds i8, ptr %call63.i, i64 32
  store ptr %add.ptr.i, ptr %pU.i, align 8
  %sub72.i = mul i32 %mul60.i, %symbol_size_in_bytes.0.i
  %shr73.i = ashr exact i32 %sub72.i, 1
  %idx.ext74.i = sext i32 %shr73.i to i64
  %add.ptr75.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idx.ext74.i
  %pV.i = getelementptr inbounds i8, ptr %call63.i, i64 40
  store ptr %add.ptr75.i, ptr %pV.i, align 8
  %chroma_format_idc76.i = getelementptr inbounds i8, ptr %p, i64 268
  %46 = load i32, ptr %chroma_format_idc76.i, align 4
  %iYUVFormat.i = getelementptr inbounds i8, ptr %call63.i, i64 12
  store i32 %46, ptr %iYUVFormat.i, align 4
  %iYUVStorageFormat.i = getelementptr inbounds i8, ptr %call63.i, i64 16
  store i32 0, ptr %iYUVStorageFormat.i, align 8
  %47 = load i32, ptr %pic_unit_bitsize_on_disk.i, align 4
  %iBitDepth.i = getelementptr inbounds i8, ptr %call63.i, i64 20
  store i32 %47, ptr %iBitDepth.i, align 4
  %iWidth.i = getelementptr inbounds i8, ptr %call63.i, i64 48
  store i32 %sub52.i, ptr %iWidth.i, align 8
  %iHeight.i = getelementptr inbounds i8, ptr %call63.i, i64 52
  store i32 %sub55.i, ptr %iHeight.i, align 4
  %mul78.i = mul nsw i32 %sub52.i, %symbol_size_in_bytes.0.i
  %iYBufStride.i = getelementptr inbounds i8, ptr %call63.i, i64 56
  store i32 %mul78.i, ptr %iYBufStride.i, align 8
  %mul79.i = mul nsw i32 %sub38.i, %symbol_size_in_bytes.0.i
  %iUVBufStride.i = getelementptr inbounds i8, ptr %call63.i, i64 60
  store i32 %mul79.i, ptr %iUVBufStride.i, align 4
  br label %if.end80.i

if.end80.i:                                       ; preds = %if.then66.i, %if.end33.i
  %48 = phi ptr [ %call68.i, %if.then66.i ], [ %44, %if.end33.i ]
  store i32 1, ptr %call63.i, align 8
  %49 = load i32, ptr %view_id.i, align 8
  %spec.select.i = tail call i32 @llvm.smax.i32(i32 %49, i32 -1)
  %iViewId.i = getelementptr inbounds i8, ptr %call63.i, i64 4
  store i32 %spec.select.i, ptr %iViewId.i, align 4
  %frame_poc.i = getelementptr inbounds i8, ptr %p, i64 16
  %50 = load i32, ptr %frame_poc.i, align 8
  %iPOC.i = getelementptr inbounds i8, ptr %call63.i, i64 8
  store i32 %50, ptr %iPOC.i, align 8
  %cmp87.i = icmp eq ptr %48, null
  br i1 %cmp87.i, label %if.then89.i, label %if.end90.i

if.then89.i:                                      ; preds = %if.end80.i
  tail call void @no_mem_exit(ptr noundef nonnull @.str) #14
  br label %if.end90.i

if.end90.i:                                       ; preds = %if.then89.i, %if.end80.i
  %51 = load i32, ptr %view_id.i, align 8
  %cmp92.i = icmp sgt i32 %51, -1
  br i1 %cmp92.i, label %land.lhs.true94.i, label %if.else151.i

land.lhs.true94.i:                                ; preds = %if.end90.i
  %DecodeAllLayers.i = getelementptr inbounds i8, ptr %0, i64 3976
  %52 = load i32, ptr %DecodeAllLayers.i, align 8
  %cmp95.i = icmp eq i32 %52, 1
  br i1 %cmp95.i, label %if.then97.i, label %if.else151.i

if.then97.i:                                      ; preds = %land.lhs.true94.i
  %p_out_mvc.i = getelementptr inbounds i8, ptr %p_Vid, i64 851892
  %idxprom98.i = sext i32 %call.i to i64
  %arrayidx99.i = getelementptr inbounds [1024 x i32], ptr %p_out_mvc.i, i64 0, i64 %idxprom98.i
  %53 = load i32, ptr %arrayidx99.i, align 4
  %cmp100.i = icmp eq i32 %53, -1
  br i1 %cmp100.i, label %land.lhs.true102.i, label %if.end191.i

land.lhs.true102.i:                               ; preds = %if.then97.i
  %outfile.i = getelementptr inbounds i8, ptr %0, i64 255
  %54 = load i8, ptr %outfile.i, align 1
  %55 = zext i8 %54 to i32
  %56 = add nsw i32 %55, -34
  %.not892.i = icmp eq i32 %56, 0
  br i1 %.not892.i, label %sub_1.i, label %land.lhs.true102.tail.i

sub_1.i:                                          ; preds = %land.lhs.true102.i
  %57 = getelementptr inbounds i8, ptr %0, i64 256
  %58 = load i8, ptr %57, align 1
  %59 = zext i8 %58 to i32
  %60 = add nsw i32 %59, -34
  %.not893.i = icmp eq i32 %60, 0
  br i1 %.not893.i, label %sub_2.i, label %land.lhs.true102.tail.i

sub_2.i:                                          ; preds = %sub_1.i
  %61 = getelementptr inbounds i8, ptr %0, i64 257
  %62 = load i8, ptr %61, align 1
  %63 = zext i8 %62 to i32
  br label %land.lhs.true102.tail.i

land.lhs.true102.tail.i:                          ; preds = %sub_2.i, %sub_1.i, %land.lhs.true102.i
  %64 = phi i32 [ %56, %land.lhs.true102.i ], [ %60, %sub_1.i ], [ %63, %sub_2.i ]
  %cmp104.not.i = icmp eq i32 %64, 0
  %cmp110.not.i = icmp eq i8 %54, 0
  %or.cond920.i = or i1 %cmp110.not.i, %cmp104.not.i
  br i1 %or.cond920.i, label %if.end191.i, label %if.then112.i

if.then112.i:                                     ; preds = %land.lhs.true102.tail.i
  %call116.i = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %chBuf.i, ptr noundef nonnull dereferenceable(1) %outfile.i) #14
  %call118.i = call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %chBuf.i, i32 noundef 46) #16
  %tobool119.not.i = icmp eq ptr %call118.i, null
  br i1 %tobool119.not.i, label %if.end121.i, label %if.then120.i

if.then120.i:                                     ; preds = %if.then112.i
  store i8 0, ptr %call118.i, align 1
  br label %if.end121.i

if.end121.i:                                      ; preds = %if.then120.i, %if.then112.i
  %rhsv.i = load i32, ptr %chBuf.i, align 16
  %.not.i = icmp eq i32 %rhsv.i, 7107950
  br i1 %.not.i, label %if.else142.i, label %if.then125.i

if.then125.i:                                     ; preds = %if.end121.i
  %65 = load i32, ptr %view_id.i, align 8
  %call129.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %out_ViewFileName.i, ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef nonnull %chBuf.i, i32 noundef %65) #14
  %call131.i = call i32 (ptr, i32, ...) @open(ptr noundef nonnull %out_ViewFileName.i, i32 noundef 577, i32 noundef 384) #14
  store i32 %call131.i, ptr %arrayidx99.i, align 4
  %cmp135.i = icmp eq i32 %call131.i, -1
  br i1 %cmp135.i, label %if.then137.i, label %if.end191.i

if.then137.i:                                     ; preds = %if.then125.i
  %call139.i = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.4, ptr noundef nonnull %out_ViewFileName.i) #14
  %66 = load ptr, ptr @stderr, align 8
  %call140.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %66, ptr noundef nonnull @.str.5, ptr noundef nonnull @errortext) #17
  call void @exit(i32 noundef 500) #18
  unreachable

if.else142.i:                                     ; preds = %if.end121.i
  store i32 -1, ptr %arrayidx99.i, align 4
  br label %if.end191.i

if.else151.i:                                     ; preds = %land.lhs.true94.i, %if.end90.i
  %p_out_mvc152.i = getelementptr inbounds i8, ptr %p_Vid, i64 851892
  %67 = load i32, ptr %p_out_mvc152.i, align 4
  %cmp154.i = icmp eq i32 %67, -1
  br i1 %cmp154.i, label %land.lhs.true156.i, label %if.end191.i

land.lhs.true156.i:                               ; preds = %if.else151.i
  %outfile157.i = getelementptr inbounds i8, ptr %0, i64 255
  %68 = load i8, ptr %outfile157.i, align 1
  %.not890.i = icmp eq i8 %68, 34
  br i1 %.not890.i, label %sub_1875.i, label %land.lhs.true156.tail.i

sub_1875.i:                                       ; preds = %land.lhs.true156.i
  %69 = getelementptr inbounds i8, ptr %0, i64 256
  %70 = load i8, ptr %69, align 1
  %.not891.i = icmp eq i8 %70, 34
  br i1 %.not891.i, label %sub_2876.i, label %land.lhs.true156.tail.i

sub_2876.i:                                       ; preds = %sub_1875.i
  %71 = getelementptr inbounds i8, ptr %0, i64 257
  %72 = load i8, ptr %71, align 1
  %73 = icmp eq i8 %72, 0
  br label %land.lhs.true156.tail.i

land.lhs.true156.tail.i:                          ; preds = %sub_2876.i, %sub_1875.i, %land.lhs.true156.i
  %cmp160.not.i = phi i1 [ false, %land.lhs.true156.i ], [ false, %sub_1875.i ], [ %73, %sub_2876.i ]
  %cmp166.not.i = icmp eq i8 %68, 0
  %or.cond921.i = or i1 %cmp166.not.i, %cmp160.not.i
  br i1 %or.cond921.i, label %if.end191.i, label %land.lhs.true174.i

land.lhs.true174.i:                               ; preds = %land.lhs.true156.tail.i
  %call177.i = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull %outfile157.i, i32 noundef 577, i32 noundef 384) #14
  store i32 %call177.i, ptr %p_out_mvc152.i, align 4
  %cmp180.i = icmp eq i32 %call177.i, -1
  br i1 %cmp180.i, label %if.then182.i, label %if.end191.i

if.then182.i:                                     ; preds = %land.lhs.true174.i
  %call185.i = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.4, ptr noundef nonnull %outfile157.i) #14
  %74 = load ptr, ptr @stderr, align 8
  %call186.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %74, ptr noundef nonnull @.str.5, ptr noundef nonnull @errortext) #17
  tail call void @exit(i32 noundef 500) #18
  unreachable

if.end191.i:                                      ; preds = %land.lhs.true174.i, %land.lhs.true156.tail.i, %if.else151.i, %if.else142.i, %if.then125.i, %land.lhs.true102.tail.i, %if.then97.i
  %p_out.addr.0.i = phi i32 [ %67, %if.else151.i ], [ %call177.i, %land.lhs.true174.i ], [ %53, %if.then97.i ], [ %call131.i, %if.then125.i ], [ -1, %if.else142.i ], [ -1, %land.lhs.true102.tail.i ], [ -1, %land.lhs.true156.tail.i ]
  br i1 %cmp.i, label %if.then193.i, label %if.end276.i

if.then193.i:                                     ; preds = %if.end191.i
  %75 = load i32, ptr %size_x50.i, align 8
  %76 = load i32, ptr %size_y53.i, align 4
  %mul196.i = mul i32 %75, %symbol_size_in_bytes.0.i
  %mul197.i = mul i32 %mul196.i, %76
  %conv198.i = sext i32 %mul197.i to i64
  %call199.i = call noalias ptr @malloc(i64 noundef %conv198.i) #15
  %77 = load i32, ptr %frame_cropping_rect_left_offset35.i, align 8
  %78 = load i32, ptr %frame_cropping_rect_right_offset37.i, align 4
  %79 = load i32, ptr %frame_mbs_only_flag40.i, align 8
  %sub203.i = sub nsw i32 2, %79
  %80 = load i32, ptr %frame_cropping_rect_top_offset42.i, align 8
  %mul205.i = mul nsw i32 %sub203.i, %80
  %81 = load i32, ptr %frame_cropping_rect_bottom_offset47.i, align 4
  %mul209.i = mul nsw i32 %81, %sub203.i
  %82 = load ptr, ptr %42, align 8
  %imgUV210.i = getelementptr inbounds i8, ptr %p, i64 136
  %83 = load ptr, ptr %imgUV210.i, align 8
  %arrayidx211.i = getelementptr inbounds i8, ptr %83, i64 8
  %84 = load ptr, ptr %arrayidx211.i, align 8
  %85 = load i32, ptr %size_x_cr34.i, align 8
  %86 = load i32, ptr %size_y_cr39.i, align 4
  %iYBufStride214.i = getelementptr inbounds i8, ptr %call63.i, i64 56
  %87 = load i32, ptr %iYBufStride214.i, align 8
  call void %82(ptr noundef %84, ptr noundef %call199.i, i32 noundef %85, i32 noundef %86, i32 noundef %symbol_size_in_bytes.0.i, i32 noundef %77, i32 noundef %78, i32 noundef %mul205.i, i32 noundef %mul209.i, i32 noundef %87) #14
  %cmp215.i = icmp sgt i32 %p_out.addr.0.i, -1
  br i1 %cmp215.i, label %if.then217.i, label %if.end241.i

if.then217.i:                                     ; preds = %if.then193.i
  %88 = load i32, ptr %size_y_cr39.i, align 4
  %89 = add i32 %mul209.i, %mul205.i
  %sub220.i = sub i32 %88, %89
  %90 = load i32, ptr %size_x_cr34.i, align 8
  %91 = add i32 %78, %77
  %sub223.i = sub i32 %90, %91
  %mul224.i = mul i32 %sub220.i, %symbol_size_in_bytes.0.i
  %mul225.i = mul i32 %mul224.i, %sub223.i
  %conv226.i = sext i32 %mul225.i to i64
  %call227.i = call i64 @write(i32 noundef %p_out.addr.0.i, ptr noundef %call199.i, i64 noundef %conv226.i) #14
  %conv228.i = trunc i64 %call227.i to i32
  %92 = load i32, ptr %size_y_cr39.i, align 4
  %sub231.i = sub i32 %92, %89
  %93 = load i32, ptr %size_x_cr34.i, align 8
  %sub234.i = sub i32 %93, %91
  %mul235.i = mul i32 %sub231.i, %symbol_size_in_bytes.0.i
  %mul236.i = mul i32 %mul235.i, %sub234.i
  %cmp237.not.i = icmp eq i32 %mul236.i, %conv228.i
  br i1 %cmp237.not.i, label %if.end241.i, label %if.then239.i

if.then239.i:                                     ; preds = %if.then217.i
  call void @error(ptr noundef nonnull @.str.6, i32 noundef 500) #14
  br label %if.end241.i

if.end241.i:                                      ; preds = %if.then239.i, %if.then217.i, %if.then193.i
  %94 = load i32, ptr %frame_cropping_flag.i, align 4
  %tobool243.not.i = icmp eq i32 %94, 0
  br i1 %tobool243.not.i, label %if.end272.i, label %if.then244.i

if.then244.i:                                     ; preds = %if.end241.i
  %chroma_format_idc245.i = getelementptr inbounds i8, ptr %p, i64 268
  %95 = load i32, ptr %chroma_format_idc245.i, align 4
  %idxprom246.i = sext i32 %95 to i64
  %arrayidx247.i = getelementptr inbounds [4 x i32], ptr @write_out_picture.SubWidthC, i64 0, i64 %idxprom246.i
  %96 = load i32, ptr %arrayidx247.i, align 4
  %97 = load i32, ptr %frame_cropping_rect_left_offset35.i, align 8
  %mul249.i = mul nsw i32 %97, %96
  %98 = load i32, ptr %frame_cropping_rect_right_offset37.i, align 4
  %mul254.i = mul nsw i32 %98, %96
  %arrayidx257.i = getelementptr inbounds [4 x i32], ptr @write_out_picture.SubHeightC, i64 0, i64 %idxprom246.i
  %99 = load i32, ptr %arrayidx257.i, align 4
  %100 = load i32, ptr %frame_mbs_only_flag40.i, align 8
  %sub259.i = sub nsw i32 2, %100
  %mul260.i = mul nsw i32 %sub259.i, %99
  %101 = load i32, ptr %frame_cropping_rect_top_offset42.i, align 8
  %mul262.i = mul nsw i32 %mul260.i, %101
  %102 = load i32, ptr %frame_cropping_rect_bottom_offset47.i, align 4
  %mul270.i = mul nsw i32 %mul260.i, %102
  br label %if.end272.i

if.end272.i:                                      ; preds = %if.then244.i, %if.end241.i
  %crop_bottom.1.i = phi i32 [ %mul270.i, %if.then244.i ], [ 0, %if.end241.i ]
  %crop_top.1.i = phi i32 [ %mul262.i, %if.then244.i ], [ 0, %if.end241.i ]
  %crop_right.1.i = phi i32 [ %mul254.i, %if.then244.i ], [ 0, %if.end241.i ]
  %crop_left.1.i = phi i32 [ %mul249.i, %if.then244.i ], [ 0, %if.end241.i ]
  %tobool273.not.i = icmp eq ptr %call199.i, null
  br i1 %tobool273.not.i, label %if.end276.i, label %if.then274.i

if.then274.i:                                     ; preds = %if.end272.i
  call void @free(ptr noundef nonnull %call199.i) #14
  br label %if.end276.i

if.end276.i:                                      ; preds = %if.then274.i, %if.end272.i, %if.end191.i
  %crop_bottom.2.i = phi i32 [ %crop_bottom.1.i, %if.then274.i ], [ %crop_bottom.1.i, %if.end272.i ], [ %crop_bottom.0.i, %if.end191.i ]
  %crop_top.2.i = phi i32 [ %crop_top.1.i, %if.then274.i ], [ %crop_top.1.i, %if.end272.i ], [ %crop_top.0.i, %if.end191.i ]
  %crop_right.2.i = phi i32 [ %crop_right.1.i, %if.then274.i ], [ %crop_right.1.i, %if.end272.i ], [ %crop_right.0.i, %if.end191.i ]
  %crop_left.2.i = phi i32 [ %crop_left.1.i, %if.then274.i ], [ %crop_left.1.i, %if.end272.i ], [ %crop_left.0.i, %if.end191.i ]
  %103 = load i32, ptr %call63.i, align 8
  %cmp278.i = icmp eq i32 %103, 1
  %104 = load ptr, ptr %pY.i, align 8
  %mul284.i = mul nsw i32 %sub52.i, %symbol_size_in_bytes.0.i
  %narrow.i = select i1 %cmp278.i, i32 0, i32 %mul284.i
  %cond288.idx.i = sext i32 %narrow.i to i64
  %cond288.i = getelementptr inbounds i8, ptr %104, i64 %cond288.idx.i
  %105 = load ptr, ptr %42, align 8
  %imgY290.i = getelementptr inbounds i8, ptr %p, i64 128
  %106 = load ptr, ptr %imgY290.i, align 8
  %107 = load i32, ptr %size_x50.i, align 8
  %108 = load i32, ptr %size_y53.i, align 4
  %iYBufStride293.i = getelementptr inbounds i8, ptr %call63.i, i64 56
  %109 = load i32, ptr %iYBufStride293.i, align 8
  call void %105(ptr noundef %106, ptr noundef %cond288.i, i32 noundef %107, i32 noundef %108, i32 noundef %symbol_size_in_bytes.0.i, i32 noundef %crop_left.2.i, i32 noundef %crop_right.2.i, i32 noundef %crop_top.2.i, i32 noundef %crop_bottom.2.i, i32 noundef %109) #14
  %cmp294.i = icmp sgt i32 %p_out.addr.0.i, -1
  br i1 %cmp294.i, label %if.then296.i, label %if.end320.i

if.then296.i:                                     ; preds = %if.end276.i
  %110 = load i32, ptr %size_y53.i, align 4
  %111 = add i32 %crop_top.2.i, %crop_bottom.2.i
  %sub299.i = sub i32 %110, %111
  %112 = load i32, ptr %size_x50.i, align 8
  %113 = add i32 %crop_left.2.i, %crop_right.2.i
  %sub302.i = sub i32 %112, %113
  %mul303.i = mul i32 %sub299.i, %symbol_size_in_bytes.0.i
  %mul304.i = mul i32 %mul303.i, %sub302.i
  %conv305.i = sext i32 %mul304.i to i64
  %call306.i = call i64 @write(i32 noundef %p_out.addr.0.i, ptr noundef %cond288.i, i64 noundef %conv305.i) #14
  %conv307.i = trunc i64 %call306.i to i32
  %114 = load i32, ptr %size_y53.i, align 4
  %sub310.i = sub i32 %114, %111
  %115 = load i32, ptr %size_x50.i, align 8
  %sub313.i = sub i32 %115, %113
  %mul314.i = mul i32 %sub310.i, %symbol_size_in_bytes.0.i
  %mul315.i = mul i32 %mul314.i, %sub313.i
  %cmp316.not.i = icmp eq i32 %mul315.i, %conv307.i
  br i1 %cmp316.not.i, label %if.end320.i, label %if.then318.i

if.then318.i:                                     ; preds = %if.then296.i
  call void @error(ptr noundef nonnull @.str.7, i32 noundef 500) #14
  br label %if.end320.i

if.end320.i:                                      ; preds = %if.then318.i, %if.then296.i, %if.end276.i
  %chroma_format_idc321.i = getelementptr inbounds i8, ptr %p, i64 268
  %116 = load i32, ptr %chroma_format_idc321.i, align 4
  %cmp322.not.i = icmp eq i32 %116, 0
  br i1 %cmp322.not.i, label %if.else428.i, label %if.then324.i

if.then324.i:                                     ; preds = %if.end320.i
  %117 = load i32, ptr %frame_cropping_rect_left_offset35.i, align 8
  %118 = load i32, ptr %frame_cropping_rect_right_offset37.i, align 4
  %119 = load i32, ptr %frame_mbs_only_flag40.i, align 8
  %sub328.i = sub nsw i32 2, %119
  %120 = load i32, ptr %frame_cropping_rect_top_offset42.i, align 8
  %mul330.i = mul nsw i32 %sub328.i, %120
  %121 = load i32, ptr %frame_cropping_rect_bottom_offset47.i, align 4
  %mul334.i = mul nsw i32 %121, %sub328.i
  %122 = load i32, ptr %call63.i, align 8
  %cmp336.i = icmp eq i32 %122, 1
  %pU339.i = getelementptr inbounds i8, ptr %call63.i, i64 32
  %123 = load ptr, ptr %pU339.i, align 8
  %mul342.i = mul nsw i32 %sub38.i, %symbol_size_in_bytes.0.i
  %narrow922.i = select i1 %cmp336.i, i32 0, i32 %mul342.i
  %cond346.idx.i = sext i32 %narrow922.i to i64
  %cond346.i = getelementptr inbounds i8, ptr %123, i64 %cond346.idx.i
  %124 = load ptr, ptr %42, align 8
  %imgUV348.i = getelementptr inbounds i8, ptr %p, i64 136
  %125 = load ptr, ptr %imgUV348.i, align 8
  %126 = load ptr, ptr %125, align 8
  %127 = load i32, ptr %size_x_cr34.i, align 8
  %128 = load i32, ptr %size_y_cr39.i, align 4
  %iUVBufStride352.i = getelementptr inbounds i8, ptr %call63.i, i64 60
  %129 = load i32, ptr %iUVBufStride352.i, align 4
  call void %124(ptr noundef %126, ptr noundef %cond346.i, i32 noundef %127, i32 noundef %128, i32 noundef %symbol_size_in_bytes.0.i, i32 noundef %117, i32 noundef %118, i32 noundef %mul330.i, i32 noundef %mul334.i, i32 noundef %129) #14
  br i1 %cmp294.i, label %if.then355.i, label %if.end379.i

if.then355.i:                                     ; preds = %if.then324.i
  %130 = load i32, ptr %size_y_cr39.i, align 4
  %131 = add i32 %mul334.i, %mul330.i
  %sub358.i = sub i32 %130, %131
  %132 = load i32, ptr %size_x_cr34.i, align 8
  %133 = add i32 %118, %117
  %sub361.i = sub i32 %132, %133
  %mul362.i = mul i32 %sub358.i, %symbol_size_in_bytes.0.i
  %mul363.i = mul i32 %mul362.i, %sub361.i
  %conv364.i = sext i32 %mul363.i to i64
  %call365.i = call i64 @write(i32 noundef %p_out.addr.0.i, ptr noundef %cond346.i, i64 noundef %conv364.i) #14
  %conv366.i = trunc i64 %call365.i to i32
  %134 = load i32, ptr %size_y_cr39.i, align 4
  %sub369.i = sub i32 %134, %131
  %135 = load i32, ptr %size_x_cr34.i, align 8
  %sub372.i = sub i32 %135, %133
  %mul373.i = mul i32 %sub369.i, %symbol_size_in_bytes.0.i
  %mul374.i = mul i32 %mul373.i, %sub372.i
  %cmp375.not.i = icmp eq i32 %mul374.i, %conv366.i
  br i1 %cmp375.not.i, label %if.end379.i, label %if.then377.i

if.then377.i:                                     ; preds = %if.then355.i
  call void @error(ptr noundef nonnull @.str.7, i32 noundef 500) #14
  br label %if.end379.i

if.end379.i:                                      ; preds = %if.then377.i, %if.then355.i, %if.then324.i
  br i1 %cmp.i, label %write_out_picture.exit, label %if.then381.i

if.then381.i:                                     ; preds = %if.end379.i
  %136 = load i32, ptr %call63.i, align 8
  %cmp383.i = icmp eq i32 %136, 1
  %pV386.i = getelementptr inbounds i8, ptr %call63.i, i64 40
  %137 = load ptr, ptr %pV386.i, align 8
  %narrow923.i = select i1 %cmp383.i, i32 0, i32 %mul342.i
  %cond393.idx.i = sext i32 %narrow923.i to i64
  %cond393.i = getelementptr inbounds i8, ptr %137, i64 %cond393.idx.i
  %138 = load ptr, ptr %42, align 8
  %139 = load ptr, ptr %imgUV348.i, align 8
  %arrayidx396.i = getelementptr inbounds i8, ptr %139, i64 8
  %140 = load ptr, ptr %arrayidx396.i, align 8
  %141 = load i32, ptr %size_x_cr34.i, align 8
  %142 = load i32, ptr %size_y_cr39.i, align 4
  %143 = load i32, ptr %iUVBufStride352.i, align 4
  call void %138(ptr noundef %140, ptr noundef %cond393.i, i32 noundef %141, i32 noundef %142, i32 noundef %symbol_size_in_bytes.0.i, i32 noundef %117, i32 noundef %118, i32 noundef %mul330.i, i32 noundef %mul334.i, i32 noundef %143) #14
  br i1 %cmp294.i, label %if.then402.i, label %write_out_picture.exit

if.then402.i:                                     ; preds = %if.then381.i
  %144 = load i32, ptr %size_y_cr39.i, align 4
  %145 = add i32 %mul334.i, %mul330.i
  %sub405.i = sub i32 %144, %145
  %146 = load i32, ptr %size_x_cr34.i, align 8
  %147 = add i32 %118, %117
  %sub408.i = sub i32 %146, %147
  %mul409.i = mul i32 %sub405.i, %symbol_size_in_bytes.0.i
  %mul410.i = mul i32 %mul409.i, %sub408.i
  %conv411.i = sext i32 %mul410.i to i64
  %call412.i = call i64 @write(i32 noundef %p_out.addr.0.i, ptr noundef %cond393.i, i64 noundef %conv411.i) #14
  %conv413.i = trunc i64 %call412.i to i32
  %148 = load i32, ptr %size_y_cr39.i, align 4
  %sub416.i = sub i32 %148, %145
  %149 = load i32, ptr %size_x_cr34.i, align 8
  %sub419.i = sub i32 %149, %147
  %mul420.i = mul i32 %sub416.i, %symbol_size_in_bytes.0.i
  %mul421.i = mul i32 %mul420.i, %sub419.i
  %cmp422.not.i = icmp eq i32 %mul421.i, %conv413.i
  br i1 %cmp422.not.i, label %write_out_picture.exit, label %if.then424.i

if.then424.i:                                     ; preds = %if.then402.i
  call void @error(ptr noundef nonnull @.str.7, i32 noundef 500) #14
  br label %write_out_picture.exit

if.else428.i:                                     ; preds = %if.end320.i
  %write_uv.i = getelementptr inbounds i8, ptr %0, i64 780
  %150 = load i32, ptr %write_uv.i, align 4
  %tobool429.not.i = icmp eq i32 %150, 0
  br i1 %tobool429.not.i, label %write_out_picture.exit, label %if.then430.i

if.then430.i:                                     ; preds = %if.else428.i
  %bitdepth_luma.i = getelementptr inbounds i8, ptr %p_Vid, i64 849040
  %151 = load i16, ptr %bitdepth_luma.i, align 8
  %conv431.i = sext i16 %151 to i32
  %sub432.i = add nsw i32 %conv431.i, -1
  %shl.i = shl nuw i32 1, %sub432.i
  %conv433.i = trunc i32 %shl.i to i16
  %imgUV434.i = getelementptr inbounds i8, ptr %p, i64 136
  %152 = load i32, ptr %size_y53.i, align 4
  %div.i = sdiv i32 %152, 2
  %153 = load i32, ptr %size_x50.i, align 8
  %div437.i = sdiv i32 %153, 2
  %call438.i = call i32 @get_mem3Dpel(ptr noundef nonnull %imgUV434.i, i32 noundef 1, i32 noundef %div.i, i32 noundef %div437.i) #14
  %154 = load i32, ptr %size_y53.i, align 4
  %div440886.i = sdiv i32 %154, 2
  %cmp441887.i = icmp sgt i32 %154, 1
  %.pre907.i = load i32, ptr %size_x50.i, align 8
  br i1 %cmp441887.i, label %for.cond443.preheader.i, label %for.end457.i

for.cond443.preheader.i:                          ; preds = %if.then430.i, %for.inc455.i
  %155 = phi i32 [ %162, %for.inc455.i ], [ %154, %if.then430.i ]
  %156 = phi i32 [ %163, %for.inc455.i ], [ %.pre907.i, %if.then430.i ]
  %indvars.iv897.i = phi i64 [ %indvars.iv.next898.i, %for.inc455.i ], [ 0, %if.then430.i ]
  %cmp446884.i = icmp sgt i32 %156, 1
  br i1 %cmp446884.i, label %for.body448.i, label %for.inc455.i

for.body448.i:                                    ; preds = %for.cond443.preheader.i, %for.body448.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body448.i ], [ 0, %for.cond443.preheader.i ]
  %157 = load ptr, ptr %imgUV434.i, align 8
  %158 = load ptr, ptr %157, align 8
  %arrayidx452.i = getelementptr inbounds ptr, ptr %158, i64 %indvars.iv897.i
  %159 = load ptr, ptr %arrayidx452.i, align 8
  %arrayidx454.i = getelementptr inbounds i16, ptr %159, i64 %indvars.iv.i
  store i16 %conv433.i, ptr %arrayidx454.i, align 2
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %160 = load i32, ptr %size_x50.i, align 8
  %div445.i = sdiv i32 %160, 2
  %161 = sext i32 %div445.i to i64
  %cmp446.i = icmp slt i64 %indvars.iv.next.i, %161
  br i1 %cmp446.i, label %for.body448.i, label %for.inc455.loopexit.i

for.inc455.loopexit.i:                            ; preds = %for.body448.i
  %.pre906.i = load i32, ptr %size_y53.i, align 4
  br label %for.inc455.i

for.inc455.i:                                     ; preds = %for.inc455.loopexit.i, %for.cond443.preheader.i
  %162 = phi i32 [ %.pre906.i, %for.inc455.loopexit.i ], [ %155, %for.cond443.preheader.i ]
  %163 = phi i32 [ %160, %for.inc455.loopexit.i ], [ %156, %for.cond443.preheader.i ]
  %indvars.iv.next898.i = add nuw nsw i64 %indvars.iv897.i, 1
  %div440.i = sdiv i32 %162, 2
  %164 = sext i32 %div440.i to i64
  %cmp441.i = icmp slt i64 %indvars.iv.next898.i, %164
  br i1 %cmp441.i, label %for.cond443.preheader.i, label %for.end457.i

for.end457.i:                                     ; preds = %for.inc455.i, %if.then430.i
  %165 = phi i32 [ %.pre907.i, %if.then430.i ], [ %163, %for.inc455.i ]
  %.lcssa.i = phi i32 [ %154, %if.then430.i ], [ %162, %for.inc455.i ]
  %div440.lcssa.i = phi i32 [ %div440886.i, %if.then430.i ], [ %div440.i, %for.inc455.i ]
  %mul460.i = mul i32 %165, %symbol_size_in_bytes.0.i
  %mul461.i = mul i32 %mul460.i, %.lcssa.i
  %conv462.i = sext i32 %mul461.i to i64
  %call463.i = call noalias ptr @malloc(i64 noundef %conv462.i) #15
  %166 = load ptr, ptr %42, align 8
  %167 = load ptr, ptr %imgUV434.i, align 8
  %168 = load ptr, ptr %167, align 8
  %div468.i = sdiv i32 %165, 2
  %div471.i = sdiv i32 %crop_left.2.i, 2
  %div472.i = sdiv i32 %crop_right.2.i, 2
  %div473.i = sdiv i32 %crop_top.2.i, 2
  %div474.i = sdiv i32 %crop_bottom.2.i, 2
  %169 = load i32, ptr %iYBufStride293.i, align 8
  %div476.i = sdiv i32 %169, 2
  call void %166(ptr noundef %168, ptr noundef %call463.i, i32 noundef %div468.i, i32 noundef %div440.lcssa.i, i32 noundef %symbol_size_in_bytes.0.i, i32 noundef %div471.i, i32 noundef %div472.i, i32 noundef %div473.i, i32 noundef %div474.i, i32 noundef %div476.i) #14
  %170 = load i32, ptr %size_y53.i, align 4
  %171 = add i32 %crop_top.2.i, %crop_bottom.2.i
  %sub479.i = sub i32 %170, %171
  %mul480.i = mul nsw i32 %sub479.i, %symbol_size_in_bytes.0.i
  %div481.i = sdiv i32 %mul480.i, 2
  %172 = load i32, ptr %size_x50.i, align 8
  %173 = add i32 %crop_left.2.i, %crop_right.2.i
  %sub484.i = sub i32 %172, %173
  %mul485.i = mul nsw i32 %div481.i, %sub484.i
  %div486.i = sdiv i32 %mul485.i, 2
  %conv487.i = sext i32 %div486.i to i64
  %call488.i = call i64 @write(i32 noundef %p_out.addr.0.i, ptr noundef %call463.i, i64 noundef %conv487.i) #14
  %conv489.i = trunc i64 %call488.i to i32
  %174 = load i32, ptr %size_y53.i, align 4
  %sub492.i = sub i32 %174, %171
  %mul493.i = mul nsw i32 %sub492.i, %symbol_size_in_bytes.0.i
  %div494.i = sdiv i32 %mul493.i, 2
  %175 = load i32, ptr %size_x50.i, align 8
  %sub497.i = sub i32 %175, %173
  %mul498.i = mul nsw i32 %div494.i, %sub497.i
  %div499.i = sdiv i32 %mul498.i, 2
  %cmp500.not.i = icmp eq i32 %div499.i, %conv489.i
  br i1 %cmp500.not.i, label %if.end503.i, label %if.then502.i

if.then502.i:                                     ; preds = %for.end457.i
  call void @error(ptr noundef nonnull @.str.7, i32 noundef 500) #14
  %.pre908.i = load i32, ptr %size_y53.i, align 4
  %.pre909.i = load i32, ptr %size_x50.i, align 8
  %.pre910.i = sub i32 %.pre908.i, %171
  %.pre911.i = mul nsw i32 %.pre910.i, %symbol_size_in_bytes.0.i
  %.pre912.i = sdiv i32 %.pre911.i, 2
  %.pre913.i = sub i32 %.pre909.i, %173
  %.pre914.i = mul nsw i32 %.pre912.i, %.pre913.i
  %.pre915.i = sdiv i32 %.pre914.i, 2
  br label %if.end503.i

if.end503.i:                                      ; preds = %if.then502.i, %for.end457.i
  %div513.pre-phi.i = phi i32 [ %.pre915.i, %if.then502.i ], [ %conv489.i, %for.end457.i ]
  %conv514.i = sext i32 %div513.pre-phi.i to i64
  %call515.i = call i64 @write(i32 noundef %p_out.addr.0.i, ptr noundef %call463.i, i64 noundef %conv514.i) #14
  %conv516.i = trunc i64 %call515.i to i32
  %176 = load i32, ptr %size_y53.i, align 4
  %sub519.i = sub i32 %176, %171
  %mul520.i = mul nsw i32 %sub519.i, %symbol_size_in_bytes.0.i
  %div521.i = sdiv i32 %mul520.i, 2
  %177 = load i32, ptr %size_x50.i, align 8
  %sub524.i = sub i32 %177, %173
  %mul525.i = mul nsw i32 %div521.i, %sub524.i
  %div526.i = sdiv i32 %mul525.i, 2
  %cmp527.not.i = icmp eq i32 %div526.i, %conv516.i
  br i1 %cmp527.not.i, label %if.end530.i, label %if.then529.i

if.then529.i:                                     ; preds = %if.end503.i
  call void @error(ptr noundef nonnull @.str.7, i32 noundef 500) #14
  br label %if.end530.i

if.end530.i:                                      ; preds = %if.then529.i, %if.end503.i
  call void @free(ptr noundef %call463.i) #14
  %178 = load ptr, ptr %imgUV434.i, align 8
  call void @free_mem3Dpel(ptr noundef %178) #14
  store ptr null, ptr %imgUV434.i, align 8
  br label %write_out_picture.exit

write_out_picture.exit:                           ; preds = %entry, %if.end379.i, %if.then381.i, %if.then402.i, %if.then424.i, %if.else428.i, %if.end530.i
  call void @llvm.lifetime.end.p0(i64 255, ptr nonnull %chBuf.i) #14
  call void @llvm.lifetime.end.p0(i64 255, ptr nonnull %out_ViewFileName.i) #14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @init_out_buffer(ptr nocapture noundef writeonly %p_Vid) local_unnamed_addr #0 {
entry:
  %call = tail call ptr @alloc_frame_store() #14
  %out_buffer = getelementptr inbounds i8, ptr %p_Vid, i64 856624
  store ptr %call, ptr %out_buffer, align 8
  ret void
}

declare ptr @alloc_frame_store() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @uninit_out_buffer(ptr nocapture noundef %p_Vid) local_unnamed_addr #0 {
entry:
  %out_buffer = getelementptr inbounds i8, ptr %p_Vid, i64 856624
  %0 = load ptr, ptr %out_buffer, align 8
  tail call void @free_frame_store(ptr noundef %0) #14
  store ptr null, ptr %out_buffer, align 8
  ret void
}

declare void @free_frame_store(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @clear_picture(ptr nocapture noundef readonly %p_Vid, ptr nocapture noundef readonly %p) local_unnamed_addr #2 {
entry:
  %size_y = getelementptr inbounds i8, ptr %p, i64 68
  %0 = load i32, ptr %size_y, align 4
  %cmp85 = icmp sgt i32 %0, 0
  br i1 %cmp85, label %for.cond1.preheader.lr.ph, label %for.cond10.preheader

for.cond1.preheader.lr.ph:                        ; preds = %entry
  %size_x = getelementptr inbounds i8, ptr %p, i64 64
  %dc_pred_value_comp = getelementptr inbounds i8, ptr %p_Vid, i64 849060
  %imgY = getelementptr inbounds i8, ptr %p, i64 128
  %1 = load i32, ptr %size_x, align 8
  %2 = icmp sgt i32 %1, 0
  br i1 %2, label %for.cond1.preheader, label %for.cond10.preheader

for.cond1.preheader:                              ; preds = %for.cond1.preheader.lr.ph, %for.inc7
  %3 = phi i32 [ %13, %for.inc7 ], [ %0, %for.cond1.preheader.lr.ph ]
  %4 = phi i32 [ %14, %for.inc7 ], [ %1, %for.cond1.preheader.lr.ph ]
  %indvars.iv99 = phi i64 [ %indvars.iv.next100, %for.inc7 ], [ 0, %for.cond1.preheader.lr.ph ]
  %cmp283 = icmp sgt i32 %4, 0
  br i1 %cmp283, label %for.body3, label %for.inc7

for.cond10.preheader:                             ; preds = %for.inc7, %for.cond1.preheader.lr.ph, %entry
  %size_y_cr = getelementptr inbounds i8, ptr %p, i64 76
  %5 = load i32, ptr %size_y_cr, align 4
  %cmp1189 = icmp sgt i32 %5, 0
  br i1 %cmp1189, label %for.cond14.preheader.lr.ph, label %for.end56

for.cond14.preheader.lr.ph:                       ; preds = %for.cond10.preheader
  %size_x_cr = getelementptr inbounds i8, ptr %p, i64 72
  %arrayidx19 = getelementptr inbounds i8, ptr %p_Vid, i64 849064
  %imgUV = getelementptr inbounds i8, ptr %p, i64 136
  %6 = load i32, ptr %size_x_cr, align 8
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %for.cond14.preheader, label %for.cond37.preheader.lr.ph

for.body3:                                        ; preds = %for.cond1.preheader, %for.body3
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body3 ], [ 0, %for.cond1.preheader ]
  %8 = load i32, ptr %dc_pred_value_comp, align 4
  %conv = trunc i32 %8 to i16
  %9 = load ptr, ptr %imgY, align 8
  %arrayidx4 = getelementptr inbounds ptr, ptr %9, i64 %indvars.iv99
  %10 = load ptr, ptr %arrayidx4, align 8
  %arrayidx6 = getelementptr inbounds i16, ptr %10, i64 %indvars.iv
  store i16 %conv, ptr %arrayidx6, align 2
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %11 = load i32, ptr %size_x, align 8
  %12 = sext i32 %11 to i64
  %cmp2 = icmp slt i64 %indvars.iv.next, %12
  br i1 %cmp2, label %for.body3, label %for.inc7.loopexit

for.inc7.loopexit:                                ; preds = %for.body3
  %.pre = load i32, ptr %size_y, align 4
  br label %for.inc7

for.inc7:                                         ; preds = %for.inc7.loopexit, %for.cond1.preheader
  %13 = phi i32 [ %.pre, %for.inc7.loopexit ], [ %3, %for.cond1.preheader ]
  %14 = phi i32 [ %11, %for.inc7.loopexit ], [ %4, %for.cond1.preheader ]
  %indvars.iv.next100 = add nuw nsw i64 %indvars.iv99, 1
  %15 = sext i32 %13 to i64
  %cmp = icmp slt i64 %indvars.iv.next100, %15
  br i1 %cmp, label %for.cond1.preheader, label %for.cond10.preheader, !llvm.loop !5

for.cond14.preheader:                             ; preds = %for.cond14.preheader.lr.ph, %for.inc29
  %16 = phi i32 [ %27, %for.inc29 ], [ %5, %for.cond14.preheader.lr.ph ]
  %17 = phi i32 [ %28, %for.inc29 ], [ %6, %for.cond14.preheader.lr.ph ]
  %indvars.iv105 = phi i64 [ %indvars.iv.next106, %for.inc29 ], [ 0, %for.cond14.preheader.lr.ph ]
  %cmp1587 = icmp sgt i32 %17, 0
  br i1 %cmp1587, label %for.body17, label %for.inc29

for.cond32.preheader:                             ; preds = %for.inc29
  %cmp3493 = icmp sgt i32 %27, 0
  br i1 %cmp3493, label %for.cond37.preheader.lr.ph, label %for.end56

for.cond37.preheader.lr.ph:                       ; preds = %for.cond14.preheader.lr.ph, %for.cond32.preheader
  %18 = phi i32 [ %27, %for.cond32.preheader ], [ %5, %for.cond14.preheader.lr.ph ]
  %size_x_cr38 = getelementptr inbounds i8, ptr %p, i64 72
  %arrayidx43 = getelementptr inbounds i8, ptr %p_Vid, i64 849068
  %imgUV45 = getelementptr inbounds i8, ptr %p, i64 136
  %19 = load i32, ptr %size_x_cr38, align 8
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %for.cond37.preheader, label %for.end56

for.body17:                                       ; preds = %for.cond14.preheader, %for.body17
  %indvars.iv102 = phi i64 [ %indvars.iv.next103, %for.body17 ], [ 0, %for.cond14.preheader ]
  %21 = load i32, ptr %arrayidx19, align 4
  %conv20 = trunc i32 %21 to i16
  %22 = load ptr, ptr %imgUV, align 8
  %23 = load ptr, ptr %22, align 8
  %arrayidx23 = getelementptr inbounds ptr, ptr %23, i64 %indvars.iv105
  %24 = load ptr, ptr %arrayidx23, align 8
  %arrayidx25 = getelementptr inbounds i16, ptr %24, i64 %indvars.iv102
  store i16 %conv20, ptr %arrayidx25, align 2
  %indvars.iv.next103 = add nuw nsw i64 %indvars.iv102, 1
  %25 = load i32, ptr %size_x_cr, align 8
  %26 = sext i32 %25 to i64
  %cmp15 = icmp slt i64 %indvars.iv.next103, %26
  br i1 %cmp15, label %for.body17, label %for.inc29.loopexit

for.inc29.loopexit:                               ; preds = %for.body17
  %.pre114 = load i32, ptr %size_y_cr, align 4
  br label %for.inc29

for.inc29:                                        ; preds = %for.inc29.loopexit, %for.cond14.preheader
  %27 = phi i32 [ %.pre114, %for.inc29.loopexit ], [ %16, %for.cond14.preheader ]
  %28 = phi i32 [ %25, %for.inc29.loopexit ], [ %17, %for.cond14.preheader ]
  %indvars.iv.next106 = add nuw nsw i64 %indvars.iv105, 1
  %29 = sext i32 %27 to i64
  %cmp11 = icmp slt i64 %indvars.iv.next106, %29
  br i1 %cmp11, label %for.cond14.preheader, label %for.cond32.preheader, !llvm.loop !7

for.cond37.preheader:                             ; preds = %for.cond37.preheader.lr.ph, %for.inc54
  %30 = phi i32 [ %38, %for.inc54 ], [ %18, %for.cond37.preheader.lr.ph ]
  %31 = phi i32 [ %39, %for.inc54 ], [ %19, %for.cond37.preheader.lr.ph ]
  %indvars.iv111 = phi i64 [ %indvars.iv.next112, %for.inc54 ], [ 0, %for.cond37.preheader.lr.ph ]
  %cmp3991 = icmp sgt i32 %31, 0
  br i1 %cmp3991, label %for.body41, label %for.inc54

for.body41:                                       ; preds = %for.cond37.preheader, %for.body41
  %indvars.iv108 = phi i64 [ %indvars.iv.next109, %for.body41 ], [ 0, %for.cond37.preheader ]
  %32 = load i32, ptr %arrayidx43, align 4
  %conv44 = trunc i32 %32 to i16
  %33 = load ptr, ptr %imgUV45, align 8
  %arrayidx46 = getelementptr inbounds i8, ptr %33, i64 8
  %34 = load ptr, ptr %arrayidx46, align 8
  %arrayidx48 = getelementptr inbounds ptr, ptr %34, i64 %indvars.iv111
  %35 = load ptr, ptr %arrayidx48, align 8
  %arrayidx50 = getelementptr inbounds i16, ptr %35, i64 %indvars.iv108
  store i16 %conv44, ptr %arrayidx50, align 2
  %indvars.iv.next109 = add nuw nsw i64 %indvars.iv108, 1
  %36 = load i32, ptr %size_x_cr38, align 8
  %37 = sext i32 %36 to i64
  %cmp39 = icmp slt i64 %indvars.iv.next109, %37
  br i1 %cmp39, label %for.body41, label %for.inc54.loopexit

for.inc54.loopexit:                               ; preds = %for.body41
  %.pre115 = load i32, ptr %size_y_cr, align 4
  br label %for.inc54

for.inc54:                                        ; preds = %for.inc54.loopexit, %for.cond37.preheader
  %38 = phi i32 [ %.pre115, %for.inc54.loopexit ], [ %30, %for.cond37.preheader ]
  %39 = phi i32 [ %36, %for.inc54.loopexit ], [ %31, %for.cond37.preheader ]
  %indvars.iv.next112 = add nuw nsw i64 %indvars.iv111, 1
  %40 = sext i32 %38 to i64
  %cmp34 = icmp slt i64 %indvars.iv.next112, %40
  br i1 %cmp34, label %for.cond37.preheader, label %for.end56, !llvm.loop !8

for.end56:                                        ; preds = %for.inc54, %for.cond10.preheader, %for.cond37.preheader.lr.ph, %for.cond32.preheader
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind uwtable
define dso_local void @write_unpaired_field(ptr noundef %p_Vid, ptr noundef %fs, i32 %p_out) local_unnamed_addr #0 {
entry:
  %0 = load i32, ptr %fs, align 8
  %and = and i32 %0, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %top_field = getelementptr inbounds i8, ptr %fs, i64 56
  %1 = load ptr, ptr %top_field, align 8
  %size_x = getelementptr inbounds i8, ptr %1, i64 64
  %2 = load i32, ptr %size_x, align 8
  %size_y = getelementptr inbounds i8, ptr %1, i64 68
  %3 = load i32, ptr %size_y, align 4
  %mul = shl nsw i32 %3, 1
  %size_x_cr = getelementptr inbounds i8, ptr %1, i64 72
  %4 = load i32, ptr %size_x_cr, align 8
  %size_y_cr = getelementptr inbounds i8, ptr %1, i64 76
  %5 = load i32, ptr %size_y_cr, align 4
  %mul1 = shl nsw i32 %5, 1
  %call = tail call ptr @alloc_storable_picture(ptr noundef %p_Vid, i32 noundef 2, i32 noundef %2, i32 noundef %mul, i32 noundef %4, i32 noundef %mul1) #14
  %bottom_field = getelementptr inbounds i8, ptr %fs, i64 64
  store ptr %call, ptr %bottom_field, align 8
  %chroma_format_idc = getelementptr inbounds i8, ptr %1, i64 268
  %6 = load i32, ptr %chroma_format_idc, align 4
  %chroma_format_idc3 = getelementptr inbounds i8, ptr %call, i64 268
  store i32 %6, ptr %chroma_format_idc3, align 4
  %7 = load ptr, ptr %bottom_field, align 8
  tail call void @clear_picture(ptr noundef %p_Vid, ptr noundef %7)
  tail call void @dpb_combine_field_yuv(ptr noundef %p_Vid, ptr noundef nonnull %fs) #14
  %view_id = getelementptr inbounds i8, ptr %fs, i64 72
  %8 = load i32, ptr %view_id, align 8
  %frame = getelementptr inbounds i8, ptr %fs, i64 48
  %9 = load ptr, ptr %frame, align 8
  %view_id5 = getelementptr inbounds i8, ptr %9, i64 344
  store i32 %8, ptr %view_id5, align 8
  %10 = load ptr, ptr %frame, align 8
  tail call void @write_picture(ptr noundef %p_Vid, ptr noundef %10, i32 poison, i32 poison)
  %.pre = load i32, ptr %fs, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = phi i32 [ %.pre, %if.then ], [ %0, %entry ]
  %and8 = and i32 %11, 2
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end48, label %if.then10

if.then10:                                        ; preds = %if.end
  %bottom_field11 = getelementptr inbounds i8, ptr %fs, i64 64
  %12 = load ptr, ptr %bottom_field11, align 8
  %size_x12 = getelementptr inbounds i8, ptr %12, i64 64
  %13 = load i32, ptr %size_x12, align 8
  %size_y13 = getelementptr inbounds i8, ptr %12, i64 68
  %14 = load i32, ptr %size_y13, align 4
  %mul14 = shl nsw i32 %14, 1
  %size_x_cr15 = getelementptr inbounds i8, ptr %12, i64 72
  %15 = load i32, ptr %size_x_cr15, align 8
  %size_y_cr16 = getelementptr inbounds i8, ptr %12, i64 76
  %16 = load i32, ptr %size_y_cr16, align 4
  %mul17 = shl nsw i32 %16, 1
  %call18 = tail call ptr @alloc_storable_picture(ptr noundef %p_Vid, i32 noundef 1, i32 noundef %13, i32 noundef %mul14, i32 noundef %15, i32 noundef %mul17) #14
  %top_field19 = getelementptr inbounds i8, ptr %fs, i64 56
  store ptr %call18, ptr %top_field19, align 8
  %chroma_format_idc20 = getelementptr inbounds i8, ptr %12, i64 268
  %17 = load i32, ptr %chroma_format_idc20, align 4
  %chroma_format_idc22 = getelementptr inbounds i8, ptr %call18, i64 268
  store i32 %17, ptr %chroma_format_idc22, align 4
  %18 = load ptr, ptr %top_field19, align 8
  tail call void @clear_picture(ptr noundef %p_Vid, ptr noundef %18)
  %19 = load ptr, ptr %bottom_field11, align 8
  %frame_cropping_flag = getelementptr inbounds i8, ptr %19, i64 276
  %20 = load i32, ptr %frame_cropping_flag, align 4
  %21 = load ptr, ptr %top_field19, align 8
  %frame_cropping_flag26 = getelementptr inbounds i8, ptr %21, i64 276
  store i32 %20, ptr %frame_cropping_flag26, align 4
  %22 = load ptr, ptr %top_field19, align 8
  %frame_cropping_flag28 = getelementptr inbounds i8, ptr %22, i64 276
  %23 = load i32, ptr %frame_cropping_flag28, align 4
  %tobool29.not = icmp eq i32 %23, 0
  br i1 %tobool29.not, label %if.end43, label %if.then30

if.then30:                                        ; preds = %if.then10
  %24 = load ptr, ptr %bottom_field11, align 8
  %frame_cropping_rect_top_offset = getelementptr inbounds i8, ptr %24, i64 288
  %25 = load i32, ptr %frame_cropping_rect_top_offset, align 8
  %frame_cropping_rect_top_offset33 = getelementptr inbounds i8, ptr %22, i64 288
  store i32 %25, ptr %frame_cropping_rect_top_offset33, align 8
  %26 = load ptr, ptr %bottom_field11, align 8
  %frame_cropping_rect_bottom_offset = getelementptr inbounds i8, ptr %26, i64 292
  %27 = load i32, ptr %frame_cropping_rect_bottom_offset, align 4
  %28 = load ptr, ptr %top_field19, align 8
  %frame_cropping_rect_bottom_offset36 = getelementptr inbounds i8, ptr %28, i64 292
  store i32 %27, ptr %frame_cropping_rect_bottom_offset36, align 4
  %29 = load ptr, ptr %bottom_field11, align 8
  %frame_cropping_rect_left_offset = getelementptr inbounds i8, ptr %29, i64 280
  %30 = load i32, ptr %frame_cropping_rect_left_offset, align 8
  %31 = load ptr, ptr %top_field19, align 8
  %frame_cropping_rect_left_offset39 = getelementptr inbounds i8, ptr %31, i64 280
  store i32 %30, ptr %frame_cropping_rect_left_offset39, align 8
  %32 = load ptr, ptr %bottom_field11, align 8
  %frame_cropping_rect_right_offset = getelementptr inbounds i8, ptr %32, i64 284
  %33 = load i32, ptr %frame_cropping_rect_right_offset, align 4
  %34 = load ptr, ptr %top_field19, align 8
  %frame_cropping_rect_right_offset42 = getelementptr inbounds i8, ptr %34, i64 284
  store i32 %33, ptr %frame_cropping_rect_right_offset42, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.then30, %if.then10
  tail call void @dpb_combine_field_yuv(ptr noundef %p_Vid, ptr noundef nonnull %fs) #14
  %view_id44 = getelementptr inbounds i8, ptr %fs, i64 72
  %35 = load i32, ptr %view_id44, align 8
  %frame45 = getelementptr inbounds i8, ptr %fs, i64 48
  %36 = load ptr, ptr %frame45, align 8
  %view_id46 = getelementptr inbounds i8, ptr %36, i64 344
  store i32 %35, ptr %view_id46, align 8
  %37 = load ptr, ptr %frame45, align 8
  tail call void @write_picture(ptr noundef %p_Vid, ptr noundef %37, i32 poison, i32 poison)
  br label %if.end48

if.end48:                                         ; preds = %if.end43, %if.end
  store i32 3, ptr %fs, align 8
  ret void
}

declare ptr @alloc_storable_picture(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @dpb_combine_field_yuv(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @flush_direct_output(ptr noundef %p_Vid, i32 noundef %p_out) local_unnamed_addr #0 {
entry:
  %out_buffer = getelementptr inbounds i8, ptr %p_Vid, i64 856624
  %0 = load ptr, ptr %out_buffer, align 8
  tail call void @write_unpaired_field(ptr noundef %p_Vid, ptr noundef %0, i32 poison)
  %1 = load ptr, ptr %out_buffer, align 8
  %frame = getelementptr inbounds i8, ptr %1, i64 48
  %2 = load ptr, ptr %frame, align 8
  tail call void @free_storable_picture(ptr noundef %2) #14
  %3 = load ptr, ptr %out_buffer, align 8
  %frame3 = getelementptr inbounds i8, ptr %3, i64 48
  store ptr null, ptr %frame3, align 8
  %4 = load ptr, ptr %out_buffer, align 8
  %top_field = getelementptr inbounds i8, ptr %4, i64 56
  %5 = load ptr, ptr %top_field, align 8
  tail call void @free_storable_picture(ptr noundef %5) #14
  %6 = load ptr, ptr %out_buffer, align 8
  %top_field6 = getelementptr inbounds i8, ptr %6, i64 56
  store ptr null, ptr %top_field6, align 8
  %7 = load ptr, ptr %out_buffer, align 8
  %bottom_field = getelementptr inbounds i8, ptr %7, i64 64
  %8 = load ptr, ptr %bottom_field, align 8
  tail call void @free_storable_picture(ptr noundef %8) #14
  %9 = load ptr, ptr %out_buffer, align 8
  %bottom_field9 = getelementptr inbounds i8, ptr %9, i64 64
  store ptr null, ptr %bottom_field9, align 8
  %10 = load ptr, ptr %out_buffer, align 8
  store i32 0, ptr %10, align 8
  ret void
}

declare void @free_storable_picture(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @write_stored_frame(ptr noundef %p_Vid, ptr noundef %fs, i32 noundef %p_out) local_unnamed_addr #0 {
entry:
  %out_buffer.i = getelementptr inbounds i8, ptr %p_Vid, i64 856624
  %0 = load ptr, ptr %out_buffer.i, align 8
  tail call void @write_unpaired_field(ptr noundef %p_Vid, ptr noundef %0, i32 poison)
  %1 = load ptr, ptr %out_buffer.i, align 8
  %frame.i = getelementptr inbounds i8, ptr %1, i64 48
  %2 = load ptr, ptr %frame.i, align 8
  tail call void @free_storable_picture(ptr noundef %2) #14
  %3 = load ptr, ptr %out_buffer.i, align 8
  %frame3.i = getelementptr inbounds i8, ptr %3, i64 48
  store ptr null, ptr %frame3.i, align 8
  %4 = load ptr, ptr %out_buffer.i, align 8
  %top_field.i = getelementptr inbounds i8, ptr %4, i64 56
  %5 = load ptr, ptr %top_field.i, align 8
  tail call void @free_storable_picture(ptr noundef %5) #14
  %6 = load ptr, ptr %out_buffer.i, align 8
  %top_field6.i = getelementptr inbounds i8, ptr %6, i64 56
  store ptr null, ptr %top_field6.i, align 8
  %7 = load ptr, ptr %out_buffer.i, align 8
  %bottom_field.i = getelementptr inbounds i8, ptr %7, i64 64
  %8 = load ptr, ptr %bottom_field.i, align 8
  tail call void @free_storable_picture(ptr noundef %8) #14
  %9 = load ptr, ptr %out_buffer.i, align 8
  %bottom_field9.i = getelementptr inbounds i8, ptr %9, i64 64
  store ptr null, ptr %bottom_field9.i, align 8
  %10 = load ptr, ptr %out_buffer.i, align 8
  store i32 0, ptr %10, align 8
  %11 = load i32, ptr %fs, align 8
  %cmp = icmp slt i32 %11, 3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  tail call void @write_unpaired_field(ptr noundef nonnull %p_Vid, ptr noundef nonnull %fs, i32 poison)
  br label %if.end7

if.else:                                          ; preds = %entry
  %recovery_frame = getelementptr inbounds i8, ptr %fs, i64 24
  %12 = load i32, ptr %recovery_frame, align 8
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %if.end, label %if.then1

if.then1:                                         ; preds = %if.else
  %recovery_flag = getelementptr inbounds i8, ptr %p_Vid, i64 856644
  store i32 1, ptr %recovery_flag, align 4
  br label %if.end

if.end:                                           ; preds = %if.then1, %if.else
  %non_conforming_stream = getelementptr inbounds i8, ptr %p_Vid, i64 848948
  %13 = load i32, ptr %non_conforming_stream, align 4
  %tobool2.not = icmp eq i32 %13, 0
  br i1 %tobool2.not, label %if.then5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %recovery_flag3 = getelementptr inbounds i8, ptr %p_Vid, i64 856644
  %14 = load i32, ptr %recovery_flag3, align 4
  %tobool4.not = icmp eq i32 %14, 0
  br i1 %tobool4.not, label %if.end7, label %if.then5

if.then5:                                         ; preds = %lor.lhs.false, %if.end
  %frame = getelementptr inbounds i8, ptr %fs, i64 48
  %15 = load ptr, ptr %frame, align 8
  tail call void @write_picture(ptr noundef nonnull %p_Vid, ptr noundef %15, i32 poison, i32 poison)
  br label %if.end7

if.end7:                                          ; preds = %lor.lhs.false, %if.then5, %if.then
  %is_output = getelementptr inbounds i8, ptr %fs, i64 36
  store i32 1, ptr %is_output, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @direct_output(ptr noundef %p_Vid, ptr noundef %p, i32 noundef %p_out) local_unnamed_addr #0 {
entry:
  %0 = load ptr, ptr %p_Vid, align 8
  %1 = load i32, ptr %p, align 8
  switch i32 %1, label %if.end16 [
    i32 0, label %if.then
    i32 1, label %if.then8
  ]

if.then:                                          ; preds = %entry
  %out_buffer.i = getelementptr inbounds i8, ptr %p_Vid, i64 856624
  %2 = load ptr, ptr %out_buffer.i, align 8
  tail call void @write_unpaired_field(ptr noundef nonnull %p_Vid, ptr noundef %2, i32 poison)
  %3 = load ptr, ptr %out_buffer.i, align 8
  %frame.i = getelementptr inbounds i8, ptr %3, i64 48
  %4 = load ptr, ptr %frame.i, align 8
  tail call void @free_storable_picture(ptr noundef %4) #14
  %5 = load ptr, ptr %out_buffer.i, align 8
  %frame3.i = getelementptr inbounds i8, ptr %5, i64 48
  store ptr null, ptr %frame3.i, align 8
  %6 = load ptr, ptr %out_buffer.i, align 8
  %top_field.i = getelementptr inbounds i8, ptr %6, i64 56
  %7 = load ptr, ptr %top_field.i, align 8
  tail call void @free_storable_picture(ptr noundef %7) #14
  %8 = load ptr, ptr %out_buffer.i, align 8
  %top_field6.i = getelementptr inbounds i8, ptr %8, i64 56
  store ptr null, ptr %top_field6.i, align 8
  %9 = load ptr, ptr %out_buffer.i, align 8
  %bottom_field.i = getelementptr inbounds i8, ptr %9, i64 64
  %10 = load ptr, ptr %bottom_field.i, align 8
  tail call void @free_storable_picture(ptr noundef %10) #14
  %11 = load ptr, ptr %out_buffer.i, align 8
  %bottom_field9.i = getelementptr inbounds i8, ptr %11, i64 64
  store ptr null, ptr %bottom_field9.i, align 8
  %12 = load ptr, ptr %out_buffer.i, align 8
  store i32 0, ptr %12, align 8
  tail call void @write_picture(ptr noundef nonnull %p_Vid, ptr noundef nonnull %p, i32 poison, i32 poison)
  tail call void @calculate_frame_no(ptr noundef nonnull %p_Vid, ptr noundef nonnull %p) #14
  %p_ref = getelementptr inbounds i8, ptr %p_Vid, i64 855988
  %13 = load i32, ptr %p_ref, align 4
  %cmp2.not = icmp eq i32 %13, -1
  br i1 %cmp2.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then
  %silent = getelementptr inbounds i8, ptr %0, i64 784
  %14 = load i32, ptr %silent, align 8
  %tobool.not = icmp eq i32 %14, 0
  br i1 %tobool.not, label %if.then3, label %if.end

if.then3:                                         ; preds = %land.lhs.true
  tail call void @find_snr(ptr noundef nonnull %p_Vid, ptr noundef nonnull %p, ptr noundef nonnull %p_ref) #14
  br label %if.end

if.end:                                           ; preds = %if.then3, %land.lhs.true, %if.then
  tail call void @free_storable_picture(ptr noundef nonnull %p) #14
  br label %cleanup

if.then8:                                         ; preds = %entry
  %out_buffer = getelementptr inbounds i8, ptr %p_Vid, i64 856624
  %15 = load ptr, ptr %out_buffer, align 8
  %16 = load i32, ptr %15, align 8
  %and = and i32 %16, 1
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %if.end12, label %if.then10

if.then10:                                        ; preds = %if.then8
  tail call void @write_unpaired_field(ptr noundef nonnull %p_Vid, ptr noundef nonnull %15, i32 poison)
  %17 = load ptr, ptr %out_buffer, align 8
  %frame.i116 = getelementptr inbounds i8, ptr %17, i64 48
  %18 = load ptr, ptr %frame.i116, align 8
  tail call void @free_storable_picture(ptr noundef %18) #14
  %19 = load ptr, ptr %out_buffer, align 8
  %frame3.i117 = getelementptr inbounds i8, ptr %19, i64 48
  store ptr null, ptr %frame3.i117, align 8
  %20 = load ptr, ptr %out_buffer, align 8
  %top_field.i118 = getelementptr inbounds i8, ptr %20, i64 56
  %21 = load ptr, ptr %top_field.i118, align 8
  tail call void @free_storable_picture(ptr noundef %21) #14
  %22 = load ptr, ptr %out_buffer, align 8
  %top_field6.i119 = getelementptr inbounds i8, ptr %22, i64 56
  store ptr null, ptr %top_field6.i119, align 8
  %23 = load ptr, ptr %out_buffer, align 8
  %bottom_field.i120 = getelementptr inbounds i8, ptr %23, i64 64
  %24 = load ptr, ptr %bottom_field.i120, align 8
  tail call void @free_storable_picture(ptr noundef %24) #14
  %25 = load ptr, ptr %out_buffer, align 8
  %bottom_field9.i121 = getelementptr inbounds i8, ptr %25, i64 64
  store ptr null, ptr %bottom_field9.i121, align 8
  %26 = load ptr, ptr %out_buffer, align 8
  store i32 0, ptr %26, align 8
  %.pre = load ptr, ptr %out_buffer, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.then8
  %27 = phi ptr [ %.pre, %if.then10 ], [ %15, %if.then8 ]
  %top_field = getelementptr inbounds i8, ptr %27, i64 56
  store ptr %p, ptr %top_field, align 8
  %28 = load ptr, ptr %out_buffer, align 8
  %29 = load i32, ptr %28, align 8
  %or = or i32 %29, 1
  store i32 %or, ptr %28, align 8
  %.pr = load i32, ptr %p, align 8
  br label %if.end16

if.end16:                                         ; preds = %entry, %if.end12
  %30 = phi i32 [ %1, %entry ], [ %.pr, %if.end12 ]
  %cmp18 = icmp eq i32 %30, 2
  br i1 %cmp18, label %if.then19, label %if.end31

if.then19:                                        ; preds = %if.end16
  %out_buffer20 = getelementptr inbounds i8, ptr %p_Vid, i64 856624
  %31 = load ptr, ptr %out_buffer20, align 8
  %32 = load i32, ptr %31, align 8
  %and22 = and i32 %32, 2
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.end26, label %if.then24

if.then24:                                        ; preds = %if.then19
  tail call void @write_unpaired_field(ptr noundef nonnull %p_Vid, ptr noundef nonnull %31, i32 poison)
  %33 = load ptr, ptr %out_buffer20, align 8
  %frame.i123 = getelementptr inbounds i8, ptr %33, i64 48
  %34 = load ptr, ptr %frame.i123, align 8
  tail call void @free_storable_picture(ptr noundef %34) #14
  %35 = load ptr, ptr %out_buffer20, align 8
  %frame3.i124 = getelementptr inbounds i8, ptr %35, i64 48
  store ptr null, ptr %frame3.i124, align 8
  %36 = load ptr, ptr %out_buffer20, align 8
  %top_field.i125 = getelementptr inbounds i8, ptr %36, i64 56
  %37 = load ptr, ptr %top_field.i125, align 8
  tail call void @free_storable_picture(ptr noundef %37) #14
  %38 = load ptr, ptr %out_buffer20, align 8
  %top_field6.i126 = getelementptr inbounds i8, ptr %38, i64 56
  store ptr null, ptr %top_field6.i126, align 8
  %39 = load ptr, ptr %out_buffer20, align 8
  %bottom_field.i127 = getelementptr inbounds i8, ptr %39, i64 64
  %40 = load ptr, ptr %bottom_field.i127, align 8
  tail call void @free_storable_picture(ptr noundef %40) #14
  %41 = load ptr, ptr %out_buffer20, align 8
  %bottom_field9.i128 = getelementptr inbounds i8, ptr %41, i64 64
  store ptr null, ptr %bottom_field9.i128, align 8
  %42 = load ptr, ptr %out_buffer20, align 8
  store i32 0, ptr %42, align 8
  %.pre129 = load ptr, ptr %out_buffer20, align 8
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %if.then19
  %43 = phi ptr [ %.pre129, %if.then24 ], [ %31, %if.then19 ]
  %bottom_field = getelementptr inbounds i8, ptr %43, i64 64
  store ptr %p, ptr %bottom_field, align 8
  %44 = load ptr, ptr %out_buffer20, align 8
  %45 = load i32, ptr %44, align 8
  %or30 = or i32 %45, 2
  store i32 %or30, ptr %44, align 8
  br label %if.end31

if.end31:                                         ; preds = %if.end26, %if.end16
  %out_buffer32 = getelementptr inbounds i8, ptr %p_Vid, i64 856624
  %46 = load ptr, ptr %out_buffer32, align 8
  %47 = load i32, ptr %46, align 8
  %cmp34 = icmp eq i32 %47, 3
  br i1 %cmp34, label %if.then35, label %cleanup

if.then35:                                        ; preds = %if.end31
  tail call void @dpb_combine_field_yuv(ptr noundef nonnull %p_Vid, ptr noundef nonnull %46) #14
  %48 = load ptr, ptr %out_buffer32, align 8
  %view_id = getelementptr inbounds i8, ptr %48, i64 72
  %49 = load i32, ptr %view_id, align 8
  %frame = getelementptr inbounds i8, ptr %48, i64 48
  %50 = load ptr, ptr %frame, align 8
  %view_id39 = getelementptr inbounds i8, ptr %50, i64 344
  store i32 %49, ptr %view_id39, align 8
  %51 = load ptr, ptr %out_buffer32, align 8
  %frame41 = getelementptr inbounds i8, ptr %51, i64 48
  %52 = load ptr, ptr %frame41, align 8
  tail call void @write_picture(ptr noundef nonnull %p_Vid, ptr noundef %52, i32 poison, i32 poison)
  tail call void @calculate_frame_no(ptr noundef nonnull %p_Vid, ptr noundef nonnull %p) #14
  %p_ref43 = getelementptr inbounds i8, ptr %p_Vid, i64 855988
  %53 = load i32, ptr %p_ref43, align 4
  %cmp44.not = icmp eq i32 %53, -1
  br i1 %cmp44.not, label %if.end52, label %land.lhs.true45

land.lhs.true45:                                  ; preds = %if.then35
  %silent46 = getelementptr inbounds i8, ptr %0, i64 784
  %54 = load i32, ptr %silent46, align 8
  %tobool47.not = icmp eq i32 %54, 0
  br i1 %tobool47.not, label %if.then48, label %if.end52

if.then48:                                        ; preds = %land.lhs.true45
  %55 = load ptr, ptr %out_buffer32, align 8
  %frame50 = getelementptr inbounds i8, ptr %55, i64 48
  %56 = load ptr, ptr %frame50, align 8
  tail call void @find_snr(ptr noundef nonnull %p_Vid, ptr noundef %56, ptr noundef nonnull %p_ref43) #14
  br label %if.end52

if.end52:                                         ; preds = %if.then48, %land.lhs.true45, %if.then35
  %57 = load ptr, ptr %out_buffer32, align 8
  %frame54 = getelementptr inbounds i8, ptr %57, i64 48
  %58 = load ptr, ptr %frame54, align 8
  tail call void @free_storable_picture(ptr noundef %58) #14
  %59 = load ptr, ptr %out_buffer32, align 8
  %frame56 = getelementptr inbounds i8, ptr %59, i64 48
  store ptr null, ptr %frame56, align 8
  %60 = load ptr, ptr %out_buffer32, align 8
  %top_field58 = getelementptr inbounds i8, ptr %60, i64 56
  %61 = load ptr, ptr %top_field58, align 8
  tail call void @free_storable_picture(ptr noundef %61) #14
  %62 = load ptr, ptr %out_buffer32, align 8
  %top_field60 = getelementptr inbounds i8, ptr %62, i64 56
  store ptr null, ptr %top_field60, align 8
  %63 = load ptr, ptr %out_buffer32, align 8
  %bottom_field62 = getelementptr inbounds i8, ptr %63, i64 64
  %64 = load ptr, ptr %bottom_field62, align 8
  tail call void @free_storable_picture(ptr noundef %64) #14
  %65 = load ptr, ptr %out_buffer32, align 8
  %bottom_field64 = getelementptr inbounds i8, ptr %65, i64 64
  store ptr null, ptr %bottom_field64, align 8
  %66 = load ptr, ptr %out_buffer32, align 8
  store i32 0, ptr %66, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %if.end52, %if.end
  ret void
}

declare void @calculate_frame_no(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @find_snr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @GetVOIdx(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @tone_map(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare ptr @GetOneAvailDecPicFromList(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #4

declare void @no_mem_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nofree
declare noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i64 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #9

; Function Attrs: nofree
declare noundef i64 @write(i32 noundef, ptr nocapture noundef readonly, i64 noundef) local_unnamed_addr #8

declare void @error(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #10

declare i32 @get_mem3Dpel(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @free_mem3Dpel(ptr noundef) local_unnamed_addr #1

declare i32 @testEndian() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @img2buf_endian(ptr nocapture noundef readonly %imgX, ptr nocapture noundef writeonly %buf, i32 noundef %size_x, i32 noundef %size_y, i32 noundef %symbol_size_in_bytes, i32 noundef %crop_left, i32 noundef %crop_right, i32 noundef %crop_top, i32 noundef %crop_bottom, i32 noundef %iOutStride) #0 {
entry:
  switch i32 %symbol_size_in_bytes, label %sw.default [
    i32 1, label %for.cond.preheader
    i32 2, label %for.cond15.preheader
    i32 4, label %for.cond44.preheader
  ]

for.cond44.preheader:                             ; preds = %entry
  %sub45 = sub nsw i32 %size_y, %crop_bottom
  %cmp46138 = icmp sgt i32 %sub45, %crop_top
  br i1 %cmp46138, label %for.cond49.preheader.lr.ph, label %sw.epilog

for.cond49.preheader.lr.ph:                       ; preds = %for.cond44.preheader
  %sub50 = sub nsw i32 %size_x, %crop_right
  %cmp51136 = icmp sgt i32 %sub50, %crop_left
  br i1 %cmp51136, label %for.cond49.preheader.us.preheader, label %sw.epilog

for.cond49.preheader.us.preheader:                ; preds = %for.cond49.preheader.lr.ph
  %0 = sext i32 %crop_left to i64
  %1 = sext i32 %sub50 to i64
  %2 = sext i32 %crop_top to i64
  %3 = sext i32 %sub45 to i64
  br label %for.cond49.preheader.us

for.cond49.preheader.us:                          ; preds = %for.cond49.preheader.us.preheader, %for.cond49.for.inc80_crit_edge.us
  %indvars.iv154 = phi i64 [ %2, %for.cond49.preheader.us.preheader ], [ %indvars.iv.next155, %for.cond49.for.inc80_crit_edge.us ]
  %arrayidx55.us = getelementptr inbounds ptr, ptr %imgX, i64 %indvars.iv154
  %4 = trunc i64 %indvars.iv154 to i32
  %5 = sub i32 %4, %crop_top
  %6 = mul i32 %5, %iOutStride
  %sub70.us = sub i32 %6, %crop_left
  br label %for.body53.us

for.body53.us:                                    ; preds = %for.cond49.preheader.us, %for.body53.us
  %indvars.iv = phi i64 [ %0, %for.cond49.preheader.us ], [ %indvars.iv.next, %for.body53.us ]
  %7 = load ptr, ptr %arrayidx55.us, align 8
  %arrayidx57.us = getelementptr inbounds i16, ptr %7, i64 %indvars.iv
  %8 = load i16, ptr %arrayidx57.us, align 2
  %trunc.us = zext i16 %8 to i32
  %rev.us = tail call i32 @llvm.bswap.i32(i32 %trunc.us)
  %9 = trunc nsw i64 %indvars.iv to i32
  %add73.us = add i32 %sub70.us, %9
  %mul74.us = shl nsw i32 %add73.us, 2
  %idx.ext75.us = sext i32 %mul74.us to i64
  %add.ptr76.us = getelementptr inbounds i8, ptr %buf, i64 %idx.ext75.us
  store i32 %rev.us, ptr %add.ptr76.us, align 1
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %cmp51.us = icmp slt i64 %indvars.iv.next, %1
  br i1 %cmp51.us, label %for.body53.us, label %for.cond49.for.inc80_crit_edge.us

for.cond49.for.inc80_crit_edge.us:                ; preds = %for.body53.us
  %indvars.iv.next155 = add nsw i64 %indvars.iv154, 1
  %cmp46.us = icmp slt i64 %indvars.iv.next155, %3
  br i1 %cmp46.us, label %for.cond49.preheader.us, label %sw.epilog

for.cond15.preheader:                             ; preds = %entry
  %sub16 = sub nsw i32 %size_y, %crop_bottom
  %cmp17142 = icmp sgt i32 %sub16, %crop_top
  br i1 %cmp17142, label %for.cond20.preheader.lr.ph, label %sw.epilog

for.cond20.preheader.lr.ph:                       ; preds = %for.cond15.preheader
  %sub21 = sub nsw i32 %size_x, %crop_right
  %cmp22140 = icmp sgt i32 %sub21, %crop_left
  br i1 %cmp22140, label %for.cond20.preheader.us.preheader, label %sw.epilog

for.cond20.preheader.us.preheader:                ; preds = %for.cond20.preheader.lr.ph
  %10 = sext i32 %crop_left to i64
  %11 = sext i32 %sub21 to i64
  %12 = sext i32 %crop_top to i64
  %13 = sext i32 %sub16 to i64
  br label %for.cond20.preheader.us

for.cond20.preheader.us:                          ; preds = %for.cond20.preheader.us.preheader, %for.cond20.for.inc40_crit_edge.us
  %indvars.iv162 = phi i64 [ %12, %for.cond20.preheader.us.preheader ], [ %indvars.iv.next163, %for.cond20.for.inc40_crit_edge.us ]
  %arrayidx26.us = getelementptr inbounds ptr, ptr %imgX, i64 %indvars.iv162
  %14 = trunc i64 %indvars.iv162 to i32
  %15 = sub i32 %14, %crop_top
  %16 = mul i32 %15, %iOutStride
  %sub32.us = sub i32 %16, %crop_left
  br label %for.body24.us

for.body24.us:                                    ; preds = %for.cond20.preheader.us, %for.body24.us
  %indvars.iv159 = phi i64 [ %10, %for.cond20.preheader.us ], [ %indvars.iv.next160, %for.body24.us ]
  %17 = load ptr, ptr %arrayidx26.us, align 8
  %arrayidx28.us = getelementptr inbounds i16, ptr %17, i64 %indvars.iv159
  %18 = load i16, ptr %arrayidx28.us, align 2
  %rev133.us = tail call i16 @llvm.bswap.i16(i16 %18)
  %19 = trunc nsw i64 %indvars.iv159 to i32
  %add35.us = add i32 %sub32.us, %19
  %mul36.us = shl nsw i32 %add35.us, 1
  %idx.ext.us = sext i32 %mul36.us to i64
  %add.ptr.us = getelementptr inbounds i8, ptr %buf, i64 %idx.ext.us
  store i16 %rev133.us, ptr %add.ptr.us, align 1
  %indvars.iv.next160 = add nsw i64 %indvars.iv159, 1
  %cmp22.us = icmp slt i64 %indvars.iv.next160, %11
  br i1 %cmp22.us, label %for.body24.us, label %for.cond20.for.inc40_crit_edge.us

for.cond20.for.inc40_crit_edge.us:                ; preds = %for.body24.us
  %indvars.iv.next163 = add nsw i64 %indvars.iv162, 1
  %cmp17.us = icmp slt i64 %indvars.iv.next163, %13
  br i1 %cmp17.us, label %for.cond20.preheader.us, label %sw.epilog

for.cond.preheader:                               ; preds = %entry
  %sub = sub nsw i32 %size_y, %crop_bottom
  %cmp146 = icmp sgt i32 %sub, %crop_top
  br i1 %cmp146, label %for.cond1.preheader.lr.ph, label %sw.epilog

for.cond1.preheader.lr.ph:                        ; preds = %for.cond.preheader
  %sub2 = sub nsw i32 %size_x, %crop_right
  %cmp3144 = icmp sgt i32 %sub2, %crop_left
  br i1 %cmp3144, label %for.cond1.preheader.us.preheader, label %sw.epilog

for.cond1.preheader.us.preheader:                 ; preds = %for.cond1.preheader.lr.ph
  %20 = sext i32 %crop_left to i64
  %21 = sext i32 %sub2 to i64
  %22 = sext i32 %crop_top to i64
  %23 = sext i32 %sub to i64
  br label %for.cond1.preheader.us

for.cond1.preheader.us:                           ; preds = %for.cond1.preheader.us.preheader, %for.cond1.for.inc11_crit_edge.us
  %indvars.iv170 = phi i64 [ %22, %for.cond1.preheader.us.preheader ], [ %indvars.iv.next171, %for.cond1.for.inc11_crit_edge.us ]
  %arrayidx.us = getelementptr inbounds ptr, ptr %imgX, i64 %indvars.iv170
  %24 = trunc i64 %indvars.iv170 to i32
  %25 = sub i32 %24, %crop_top
  %26 = mul i32 %25, %iOutStride
  %sub7.us = sub i32 %26, %crop_left
  br label %for.body4.us

for.body4.us:                                     ; preds = %for.cond1.preheader.us, %for.body4.us
  %indvars.iv167 = phi i64 [ %20, %for.cond1.preheader.us ], [ %indvars.iv.next168, %for.body4.us ]
  %27 = load ptr, ptr %arrayidx.us, align 8
  %arrayidx6.us = getelementptr inbounds i16, ptr %27, i64 %indvars.iv167
  %28 = load i16, ptr %arrayidx6.us, align 2
  %conv.us = trunc i16 %28 to i8
  %29 = trunc nsw i64 %indvars.iv167 to i32
  %add.us = add i32 %sub7.us, %29
  %idxprom9.us = sext i32 %add.us to i64
  %arrayidx10.us = getelementptr inbounds i8, ptr %buf, i64 %idxprom9.us
  store i8 %conv.us, ptr %arrayidx10.us, align 1
  %indvars.iv.next168 = add nsw i64 %indvars.iv167, 1
  %cmp3.us = icmp slt i64 %indvars.iv.next168, %21
  br i1 %cmp3.us, label %for.body4.us, label %for.cond1.for.inc11_crit_edge.us

for.cond1.for.inc11_crit_edge.us:                 ; preds = %for.body4.us
  %indvars.iv.next171 = add nsw i64 %indvars.iv170, 1
  %cmp.us = icmp slt i64 %indvars.iv.next171, %23
  br i1 %cmp.us, label %for.cond1.preheader.us, label %sw.epilog

sw.default:                                       ; preds = %entry
  tail call void @error(ptr noundef nonnull @.str.8, i32 noundef 500) #14
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.cond49.for.inc80_crit_edge.us, %for.cond20.for.inc40_crit_edge.us, %for.cond1.for.inc11_crit_edge.us, %for.cond1.preheader.lr.ph, %for.cond20.preheader.lr.ph, %for.cond49.preheader.lr.ph, %for.cond44.preheader, %for.cond15.preheader, %for.cond.preheader, %sw.default
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @img2buf_normal(ptr nocapture noundef readonly %imgX, ptr nocapture noundef writeonly %buf, i32 noundef %size_x, i32 noundef %size_y, i32 noundef %symbol_size_in_bytes, i32 noundef %crop_left, i32 noundef %crop_right, i32 noundef %crop_top, i32 noundef %crop_bottom, i32 noundef %iOutStride) #2 {
entry:
  %0 = add i32 %crop_left, %crop_right
  %sub1 = sub i32 %size_x, %0
  %1 = add i32 %crop_top, %crop_bottom
  %sub3 = sub i32 %size_y, %1
  %cmp = icmp sgt i32 %symbol_size_in_bytes, 2
  br i1 %cmp, label %for.cond.preheader, label %if.end

for.cond.preheader:                               ; preds = %entry
  %cmp4106 = icmp sgt i32 %sub3, 0
  br i1 %cmp4106, label %for.body.lr.ph, label %for.cond15.preheader

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %mul5 = mul nsw i32 %sub1, %symbol_size_in_bytes
  %conv = sext i32 %mul5 to i64
  %2 = sext i32 %iOutStride to i64
  %wide.trip.count = zext nneg i32 %sub3 to i64
  %xtraiter164 = and i64 %wide.trip.count, 7
  %3 = icmp ult i32 %sub3, 8
  br i1 %3, label %for.cond15.preheader.loopexit.unr-lcssa, label %for.body.lr.ph.new

for.body.lr.ph.new:                               ; preds = %for.body.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483640
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph.new
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph.new ], [ %indvars.iv.next.7, %for.body ]
  %niter = phi i64 [ 0, %for.body.lr.ph.new ], [ %niter.next.7, %for.body ]
  %4 = mul nsw i64 %indvars.iv, %2
  %add.ptr = getelementptr inbounds i8, ptr %buf, i64 %4
  tail call void @llvm.memset.p0.i64(ptr align 1 %add.ptr, i8 0, i64 %conv, i1 false)
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1
  %5 = mul nsw i64 %indvars.iv.next, %2
  %add.ptr.1 = getelementptr inbounds i8, ptr %buf, i64 %5
  tail call void @llvm.memset.p0.i64(ptr align 1 %add.ptr.1, i8 0, i64 %conv, i1 false)
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2
  %6 = mul nsw i64 %indvars.iv.next.1, %2
  %add.ptr.2 = getelementptr inbounds i8, ptr %buf, i64 %6
  tail call void @llvm.memset.p0.i64(ptr align 1 %add.ptr.2, i8 0, i64 %conv, i1 false)
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3
  %7 = mul nsw i64 %indvars.iv.next.2, %2
  %add.ptr.3 = getelementptr inbounds i8, ptr %buf, i64 %7
  tail call void @llvm.memset.p0.i64(ptr align 1 %add.ptr.3, i8 0, i64 %conv, i1 false)
  %indvars.iv.next.3 = or disjoint i64 %indvars.iv, 4
  %8 = mul nsw i64 %indvars.iv.next.3, %2
  %add.ptr.4 = getelementptr inbounds i8, ptr %buf, i64 %8
  tail call void @llvm.memset.p0.i64(ptr align 1 %add.ptr.4, i8 0, i64 %conv, i1 false)
  %indvars.iv.next.4 = or disjoint i64 %indvars.iv, 5
  %9 = mul nsw i64 %indvars.iv.next.4, %2
  %add.ptr.5 = getelementptr inbounds i8, ptr %buf, i64 %9
  tail call void @llvm.memset.p0.i64(ptr align 1 %add.ptr.5, i8 0, i64 %conv, i1 false)
  %indvars.iv.next.5 = or disjoint i64 %indvars.iv, 6
  %10 = mul nsw i64 %indvars.iv.next.5, %2
  %add.ptr.6 = getelementptr inbounds i8, ptr %buf, i64 %10
  tail call void @llvm.memset.p0.i64(ptr align 1 %add.ptr.6, i8 0, i64 %conv, i1 false)
  %indvars.iv.next.6 = or disjoint i64 %indvars.iv, 7
  %11 = mul nsw i64 %indvars.iv.next.6, %2
  %add.ptr.7 = getelementptr inbounds i8, ptr %buf, i64 %11
  tail call void @llvm.memset.p0.i64(ptr align 1 %add.ptr.7, i8 0, i64 %conv, i1 false)
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8
  %niter.next.7 = add i64 %niter, 8
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %for.cond15.preheader.loopexit.unr-lcssa, label %for.body

if.end:                                           ; preds = %entry
  %12 = or i32 %crop_right, %crop_left
  %13 = or i32 %12, %crop_top
  %14 = or i32 %13, %crop_bottom
  %or.cond64 = icmp ne i32 %14, 0
  %cmp12 = icmp ne i32 %symbol_size_in_bytes, 1
  %or.cond65 = or i1 %or.cond64, %cmp12
  br i1 %or.cond65, label %for.cond15.preheader, label %for.cond41.preheader

for.cond41.preheader:                             ; preds = %if.end
  %cmp42112 = icmp sgt i32 %size_y, 0
  %cmp51108 = icmp sgt i32 %size_x, 0
  %or.cond = and i1 %cmp42112, %cmp51108
  br i1 %or.cond, label %for.body44.us.preheader, label %if.end62

for.body44.us.preheader:                          ; preds = %for.cond41.preheader
  %15 = sext i32 %iOutStride to i64
  %wide.trip.count128 = zext nneg i32 %size_y to i64
  %16 = add nsw i64 %wide.trip.count128, -1
  %17 = mul nsw i64 %16, %15
  %18 = add nsw i32 %size_x, -1
  %19 = zext i32 %18 to i64
  %20 = getelementptr i8, ptr %buf, i64 %17
  %21 = getelementptr i8, ptr %20, i64 %19
  %scevgep = getelementptr i8, ptr %21, i64 1
  %22 = shl nuw nsw i64 %19, 1
  %23 = zext nneg i32 %size_x to i64
  %min.iters.check = icmp ult i32 %size_x, 32
  %stride.check = icmp slt i32 %iOutStride, 0
  %n.vec = and i64 %23, 2147483616
  %24 = shl nuw nsw i64 %n.vec, 1
  %ind.end151 = trunc nuw nsw i64 %n.vec to i32
  %cmp.n = icmp eq i64 %n.vec, %23
  br label %for.body44.us

for.body44.us:                                    ; preds = %for.body44.us.preheader, %for.cond50.for.inc59_crit_edge.us
  %indvars.iv124 = phi i64 [ 0, %for.body44.us.preheader ], [ %indvars.iv.next125, %for.cond50.for.inc59_crit_edge.us ]
  %arrayidx46.us = getelementptr inbounds ptr, ptr %imgX, i64 %indvars.iv124
  %25 = load ptr, ptr %arrayidx46.us, align 8
  %26 = mul nsw i64 %indvars.iv124, %15
  %add.ptr49.us = getelementptr inbounds i8, ptr %buf, i64 %26
  br i1 %min.iters.check, label %for.body53.us.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %for.body44.us
  %27 = getelementptr i8, ptr %25, i64 %22
  %scevgep148 = getelementptr i8, ptr %27, i64 2
  %bound0 = icmp ugt ptr %scevgep148, %buf
  %bound1 = icmp ult ptr %25, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %28 = or i1 %found.conflict, %stride.check
  br i1 %28, label %for.body53.us.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %ind.end = getelementptr i8, ptr %add.ptr49.us, i64 %n.vec
  %ind.end149 = getelementptr i8, ptr %25, i64 %24
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %next.gep = getelementptr i8, ptr %add.ptr49.us, i64 %index
  %offset.idx = shl i64 %index, 1
  %next.gep156 = getelementptr i8, ptr %25, i64 %offset.idx
  %29 = getelementptr i8, ptr %next.gep156, i64 16
  %30 = getelementptr i8, ptr %next.gep156, i64 32
  %31 = getelementptr i8, ptr %next.gep156, i64 48
  %wide.load = load <8 x i16>, ptr %next.gep156, align 2, !alias.scope !9
  %wide.load160 = load <8 x i16>, ptr %29, align 2, !alias.scope !9
  %wide.load161 = load <8 x i16>, ptr %30, align 2, !alias.scope !9
  %wide.load162 = load <8 x i16>, ptr %31, align 2, !alias.scope !9
  %32 = trunc <8 x i16> %wide.load to <8 x i8>
  %33 = trunc <8 x i16> %wide.load160 to <8 x i8>
  %34 = trunc <8 x i16> %wide.load161 to <8 x i8>
  %35 = trunc <8 x i16> %wide.load162 to <8 x i8>
  %36 = getelementptr i8, ptr %next.gep, i64 8
  %37 = getelementptr i8, ptr %next.gep, i64 16
  %38 = getelementptr i8, ptr %next.gep, i64 24
  store <8 x i8> %32, ptr %next.gep, align 1, !alias.scope !12, !noalias !9
  store <8 x i8> %33, ptr %36, align 1, !alias.scope !12, !noalias !9
  store <8 x i8> %34, ptr %37, align 1, !alias.scope !12, !noalias !9
  store <8 x i8> %35, ptr %38, align 1, !alias.scope !12, !noalias !9
  %index.next = add nuw i64 %index, 32
  %39 = icmp eq i64 %index.next, %n.vec
  br i1 %39, label %middle.block, label %vector.body, !llvm.loop !14

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %for.cond50.for.inc59_crit_edge.us, label %for.body53.us.preheader

for.body53.us.preheader:                          ; preds = %middle.block, %vector.memcheck, %for.body44.us
  %pDst.0111.us.ph = phi ptr [ %add.ptr49.us, %vector.memcheck ], [ %add.ptr49.us, %for.body44.us ], [ %ind.end, %middle.block ]
  %cur_pixel.0110.us.ph = phi ptr [ %25, %vector.memcheck ], [ %25, %for.body44.us ], [ %ind.end149, %middle.block ]
  %i.1109.us.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %for.body44.us ], [ %ind.end151, %middle.block ]
  %40 = sub i32 %size_x, %i.1109.us.ph
  %xtraiter = and i32 %40, 7
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.body53.us.prol.loopexit, label %for.body53.us.prol

for.body53.us.prol:                               ; preds = %for.body53.us.preheader, %for.body53.us.prol
  %pDst.0111.us.prol = phi ptr [ %incdec.ptr55.us.prol, %for.body53.us.prol ], [ %pDst.0111.us.ph, %for.body53.us.preheader ]
  %cur_pixel.0110.us.prol = phi ptr [ %incdec.ptr.us.prol, %for.body53.us.prol ], [ %cur_pixel.0110.us.ph, %for.body53.us.preheader ]
  %i.1109.us.prol = phi i32 [ %inc57.us.prol, %for.body53.us.prol ], [ %i.1109.us.ph, %for.body53.us.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %for.body53.us.prol ], [ 0, %for.body53.us.preheader ]
  %incdec.ptr.us.prol = getelementptr inbounds i8, ptr %cur_pixel.0110.us.prol, i64 2
  %41 = load i16, ptr %cur_pixel.0110.us.prol, align 2
  %conv54.us.prol = trunc i16 %41 to i8
  %incdec.ptr55.us.prol = getelementptr inbounds i8, ptr %pDst.0111.us.prol, i64 1
  store i8 %conv54.us.prol, ptr %pDst.0111.us.prol, align 1
  %inc57.us.prol = add nuw nsw i32 %i.1109.us.prol, 1
  %prol.iter.next = add i32 %prol.iter, 1
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %for.body53.us.prol.loopexit, label %for.body53.us.prol, !llvm.loop !17

for.body53.us.prol.loopexit:                      ; preds = %for.body53.us.prol, %for.body53.us.preheader
  %pDst.0111.us.unr = phi ptr [ %pDst.0111.us.ph, %for.body53.us.preheader ], [ %incdec.ptr55.us.prol, %for.body53.us.prol ]
  %cur_pixel.0110.us.unr = phi ptr [ %cur_pixel.0110.us.ph, %for.body53.us.preheader ], [ %incdec.ptr.us.prol, %for.body53.us.prol ]
  %i.1109.us.unr = phi i32 [ %i.1109.us.ph, %for.body53.us.preheader ], [ %inc57.us.prol, %for.body53.us.prol ]
  %42 = sub i32 %i.1109.us.ph, %size_x
  %43 = icmp ugt i32 %42, -8
  br i1 %43, label %for.cond50.for.inc59_crit_edge.us, label %for.body53.us

for.body53.us:                                    ; preds = %for.body53.us.prol.loopexit, %for.body53.us
  %pDst.0111.us = phi ptr [ %incdec.ptr55.us.7, %for.body53.us ], [ %pDst.0111.us.unr, %for.body53.us.prol.loopexit ]
  %cur_pixel.0110.us = phi ptr [ %incdec.ptr.us.7, %for.body53.us ], [ %cur_pixel.0110.us.unr, %for.body53.us.prol.loopexit ]
  %i.1109.us = phi i32 [ %inc57.us.7, %for.body53.us ], [ %i.1109.us.unr, %for.body53.us.prol.loopexit ]
  %incdec.ptr.us = getelementptr inbounds i8, ptr %cur_pixel.0110.us, i64 2
  %44 = load i16, ptr %cur_pixel.0110.us, align 2
  %conv54.us = trunc i16 %44 to i8
  %incdec.ptr55.us = getelementptr inbounds i8, ptr %pDst.0111.us, i64 1
  store i8 %conv54.us, ptr %pDst.0111.us, align 1
  %incdec.ptr.us.1 = getelementptr inbounds i8, ptr %cur_pixel.0110.us, i64 4
  %45 = load i16, ptr %incdec.ptr.us, align 2
  %conv54.us.1 = trunc i16 %45 to i8
  %incdec.ptr55.us.1 = getelementptr inbounds i8, ptr %pDst.0111.us, i64 2
  store i8 %conv54.us.1, ptr %incdec.ptr55.us, align 1
  %incdec.ptr.us.2 = getelementptr inbounds i8, ptr %cur_pixel.0110.us, i64 6
  %46 = load i16, ptr %incdec.ptr.us.1, align 2
  %conv54.us.2 = trunc i16 %46 to i8
  %incdec.ptr55.us.2 = getelementptr inbounds i8, ptr %pDst.0111.us, i64 3
  store i8 %conv54.us.2, ptr %incdec.ptr55.us.1, align 1
  %incdec.ptr.us.3 = getelementptr inbounds i8, ptr %cur_pixel.0110.us, i64 8
  %47 = load i16, ptr %incdec.ptr.us.2, align 2
  %conv54.us.3 = trunc i16 %47 to i8
  %incdec.ptr55.us.3 = getelementptr inbounds i8, ptr %pDst.0111.us, i64 4
  store i8 %conv54.us.3, ptr %incdec.ptr55.us.2, align 1
  %incdec.ptr.us.4 = getelementptr inbounds i8, ptr %cur_pixel.0110.us, i64 10
  %48 = load i16, ptr %incdec.ptr.us.3, align 2
  %conv54.us.4 = trunc i16 %48 to i8
  %incdec.ptr55.us.4 = getelementptr inbounds i8, ptr %pDst.0111.us, i64 5
  store i8 %conv54.us.4, ptr %incdec.ptr55.us.3, align 1
  %incdec.ptr.us.5 = getelementptr inbounds i8, ptr %cur_pixel.0110.us, i64 12
  %49 = load i16, ptr %incdec.ptr.us.4, align 2
  %conv54.us.5 = trunc i16 %49 to i8
  %incdec.ptr55.us.5 = getelementptr inbounds i8, ptr %pDst.0111.us, i64 6
  store i8 %conv54.us.5, ptr %incdec.ptr55.us.4, align 1
  %incdec.ptr.us.6 = getelementptr inbounds i8, ptr %cur_pixel.0110.us, i64 14
  %50 = load i16, ptr %incdec.ptr.us.5, align 2
  %conv54.us.6 = trunc i16 %50 to i8
  %incdec.ptr55.us.6 = getelementptr inbounds i8, ptr %pDst.0111.us, i64 7
  store i8 %conv54.us.6, ptr %incdec.ptr55.us.5, align 1
  %incdec.ptr.us.7 = getelementptr inbounds i8, ptr %cur_pixel.0110.us, i64 16
  %51 = load i16, ptr %incdec.ptr.us.6, align 2
  %conv54.us.7 = trunc i16 %51 to i8
  %incdec.ptr55.us.7 = getelementptr inbounds i8, ptr %pDst.0111.us, i64 8
  store i8 %conv54.us.7, ptr %incdec.ptr55.us.6, align 1
  %inc57.us.7 = add nuw nsw i32 %i.1109.us, 8
  %exitcond123.not.7 = icmp eq i32 %inc57.us.7, %size_x
  br i1 %exitcond123.not.7, label %for.cond50.for.inc59_crit_edge.us, label %for.body53.us, !llvm.loop !19

for.cond50.for.inc59_crit_edge.us:                ; preds = %for.body53.us.prol.loopexit, %for.body53.us, %middle.block
  %indvars.iv.next125 = add nuw nsw i64 %indvars.iv124, 1
  %exitcond129.not = icmp eq i64 %indvars.iv.next125, %wide.trip.count128
  br i1 %exitcond129.not, label %if.end62, label %for.body44.us

for.cond15.preheader.loopexit.unr-lcssa:          ; preds = %for.body, %for.body.lr.ph
  %indvars.iv.unr = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next.7, %for.body ]
  %lcmp.mod165.not = icmp eq i64 %xtraiter164, 0
  br i1 %lcmp.mod165.not, label %for.cond15.preheader, label %for.body.epil

for.body.epil:                                    ; preds = %for.cond15.preheader.loopexit.unr-lcssa, %for.body.epil
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %for.body.epil ], [ %indvars.iv.unr, %for.cond15.preheader.loopexit.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %for.body.epil ], [ 0, %for.cond15.preheader.loopexit.unr-lcssa ]
  %52 = mul nsw i64 %indvars.iv.epil, %2
  %add.ptr.epil = getelementptr inbounds i8, ptr %buf, i64 %52
  tail call void @llvm.memset.p0.i64(ptr align 1 %add.ptr.epil, i8 0, i64 %conv, i1 false)
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter164
  br i1 %epil.iter.cmp.not, label %for.cond15.preheader, label %for.body.epil, !llvm.loop !20

for.cond15.preheader:                             ; preds = %for.cond15.preheader.loopexit.unr-lcssa, %for.body.epil, %for.cond.preheader, %if.end
  %size.0145 = phi i32 [ %symbol_size_in_bytes, %if.end ], [ 2, %for.cond.preheader ], [ 2, %for.body.epil ], [ 2, %for.cond15.preheader.loopexit.unr-lcssa ]
  %sub16 = sub nsw i32 %size_y, %crop_bottom
  %cmp17116 = icmp sgt i32 %sub16, %crop_top
  br i1 %cmp17116, label %for.body19.lr.ph, label %if.end62

for.body19.lr.ph:                                 ; preds = %for.cond15.preheader
  %sub23 = sub nsw i32 %size_x, %crop_right
  %cmp24114 = icmp sgt i32 %sub23, %crop_left
  %conv33 = sext i32 %size.0145 to i64
  br i1 %cmp24114, label %for.body19.us.preheader, label %if.end62

for.body19.us.preheader:                          ; preds = %for.body19.lr.ph
  %53 = sext i32 %crop_left to i64
  %54 = sext i32 %symbol_size_in_bytes to i64
  %55 = sext i32 %sub23 to i64
  %56 = sext i32 %crop_top to i64
  %57 = sext i32 %iOutStride to i64
  %58 = sext i32 %sub16 to i64
  br label %for.body19.us

for.body19.us:                                    ; preds = %for.body19.us.preheader, %for.cond22.for.end36_crit_edge.us
  %indvars.iv136 = phi i64 [ %56, %for.body19.us.preheader ], [ %indvars.iv.next137, %for.cond22.for.end36_crit_edge.us ]
  %59 = sub nsw i64 %indvars.iv136, %56
  %60 = mul nsw i64 %59, %57
  %arrayidx.us = getelementptr inbounds ptr, ptr %imgX, i64 %indvars.iv136
  %invariant.gep = getelementptr i8, ptr %buf, i64 %60
  br label %for.body26.us

for.body26.us:                                    ; preds = %for.body19.us, %for.body26.us
  %indvars.iv130 = phi i64 [ %53, %for.body19.us ], [ %indvars.iv.next131, %for.body26.us ]
  %61 = sub nsw i64 %indvars.iv130, %53
  %62 = mul nsw i64 %61, %54
  %gep = getelementptr i8, ptr %invariant.gep, i64 %62
  %63 = load ptr, ptr %arrayidx.us, align 8
  %arrayidx32.us = getelementptr inbounds i16, ptr %63, i64 %indvars.iv130
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %gep, ptr align 2 %arrayidx32.us, i64 %conv33, i1 false)
  %indvars.iv.next131 = add nsw i64 %indvars.iv130, 1
  %cmp24.us = icmp slt i64 %indvars.iv.next131, %55
  br i1 %cmp24.us, label %for.body26.us, label %for.cond22.for.end36_crit_edge.us

for.cond22.for.end36_crit_edge.us:                ; preds = %for.body26.us
  %indvars.iv.next137 = add nsw i64 %indvars.iv136, 1
  %cmp17.us = icmp slt i64 %indvars.iv.next137, %58
  br i1 %cmp17.us, label %for.body19.us, label %if.end62

if.end62:                                         ; preds = %for.cond50.for.inc59_crit_edge.us, %for.cond22.for.end36_crit_edge.us, %for.body19.lr.ph, %for.cond41.preheader, %for.cond15.preheader
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #11

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #13

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nounwind }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nounwind willreturn memory(read) }
attributes #17 = { cold nounwind }
attributes #18 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.unswitch.partial.disable"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
!9 = !{!10}
!10 = distinct !{!10, !11}
!11 = distinct !{!11, !"LVerDomain"}
!12 = !{!13}
!13 = distinct !{!13, !11}
!14 = distinct !{!14, !15, !16}
!15 = !{!"llvm.loop.isvectorized", i32 1}
!16 = !{!"llvm.loop.unroll.runtime.disable"}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.unroll.disable"}
!19 = distinct !{!19, !15}
!20 = distinct !{!20, !18}
