; ModuleID = 'ldecod_src/image.c'
source_filename = "ldecod_src/image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.macroblock = type { ptr, ptr, ptr, i32, %struct.BlockPos, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], [3 x i32], i32, i32, i32, i32, i16, i8, i8, i16, i16, ptr, ptr, ptr, ptr, i16, [2 x [4 x [4 x [2 x i16]]]], i32, [3 x i64], [3 x i64], [3 x i64], i32, [4 x i8], [4 x i8], i8, i8, i8, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.BlockPos = type { i16, i16 }
%struct.object_buffer = type { i8, i32, i32, [3 x i32] }
%struct.pic_motion_params = type { [2 x ptr], [2 x %struct.MotionVector], [2 x i8] }
%struct.MotionVector = type { i16, i16 }

@.str = private unnamed_addr constant [111 x i8] c"Source picture has higher bit depth than imgpel data type. \0APlease recompile with larger data type for imgpel.\00", align 1
@.str.1 = private unnamed_addr constant [80 x i8] c"reading only from formats of 8, 16 or 32 bit allowed on big endian architecture\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"find_snr: buf\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [90 x i8] c"Warning: Could not seek to frame number %d in reference file. Shown PSNR might be wrong.\0A\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@.str.5 = private unnamed_addr constant [48 x i8] c"%04d(P)  %8d %5d %5d %7.4f %7.4f %7.4f  %s %5d\0A\00", align 1
@.str.7 = private unnamed_addr constant [98 x i8] c"RefPicList0[ num_ref_idx_l0_active_minus1 ] is equal to 'no reference picture', invalid bitstream\00", align 1
@.str.9 = private unnamed_addr constant [98 x i8] c"RefPicList1[ num_ref_idx_l1_active_minus1 ] is equal to 'no reference picture', invalid bitstream\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"svc_extension_flag\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"NALU: DP_A slice_id\00", align 1
@.str.13 = private unnamed_addr constant [56 x i8] c"received data partition with CABAC, this is not allowed\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"NALU: DP_B slice_id\00", align 1
@.str.16 = private unnamed_addr constant [28 x i8] c"NALU: DP_B redudant_pic_cnt\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"NALU: DP_C slice_id\00", align 1
@.str.19 = private unnamed_addr constant [30 x i8] c"NALU:SLICE_C redudand_pic_cnt\00", align 1
@.str.22 = private unnamed_addr constant [46 x i8] c"read_new_slice: Found NALU_TYPE_FILL, len %d\0A\00", align 1
@.str.25 = private unnamed_addr constant [42 x i8] c"Found SVC extension NALU (%d). Ignoring.\0A\00", align 1
@.str.26 = private unnamed_addr constant [62 x i8] c"Found NALU type %d, len %d undefined, ignore NALU, moving on\0A\00", align 1
@__const.exit_picture.yuv_types = private unnamed_addr constant [4 x [6 x i8]] [[6 x i8] c"4:0:0\00", [6 x i8] c"4:2:0\00", [6 x i8] c"4:2:2\00", [6 x i8] c"4:4:4\00"], align 16
@.str.34 = private unnamed_addr constant [9 x i8] c")       \00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"|IDR)\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"| I )\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"| P )\00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c"|SP )\00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c"|SI )\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"| B )\00", align 1
@.str.41 = private unnamed_addr constant [6 x i8] c"| b )\00", align 1
@.str.43 = private unnamed_addr constant [46 x i8] c"%05d(%s%5d %5d %5d %8.4f %8.4f %8.4f  %s %7d\0A\00", align 1
@.str.44 = private unnamed_addr constant [55 x i8] c"%05d(%s%5d %5d %5d                             %s %7d\0A\00", align 1
@.str.45 = private unnamed_addr constant [32 x i8] c"Completed Decoding frame %05d.\0D\00", align 1
@.str.46 = private unnamed_addr constant [38 x i8] c"copy_dec_picture_JV: tone_mapping_lut\00", align 1
@.str.47 = private unnamed_addr constant [48 x i8] c"An unintentional loss of pictures occurs! Exit\0A\00", align 1
@.str.48 = private unnamed_addr constant [33 x i8] c"p_Vid->structure not initialized\00", align 1
@.str.49 = private unnamed_addr constant [31 x i8] c"init_picture: tone_mapping_lut\00", align 1
@.str.50 = private unnamed_addr constant [103 x i8] c"Maximum number of supported slices exceeded. \0APlease recompile with increased value for MAX_NUM_SLICES\00", align 1
@str = private unnamed_addr constant [79 x i8] c"RefPicList0[ num_ref_idx_l0_active_minus1 ] is equal to 'no reference picture'\00", align 1
@str.51 = private unnamed_addr constant [79 x i8] c"RefPicList1[ num_ref_idx_l1_active_minus1 ] is equal to 'no reference picture'\00", align 1
@str.52 = private unnamed_addr constant [38 x i8] c"Found Subsequence SPS NALU. Ignoring.\00", align 1
@str.53 = private unnamed_addr constant [53 x i8] c"Skipping these filling bits, proceeding w/ next NALU\00", align 1
@str.54 = private unnamed_addr constant [57 x i8] c"found data partition C without matching DP A, discarding\00", align 1
@str.55 = private unnamed_addr constant [57 x i8] c"found data partition B without matching DP A, discarding\00", align 1
@str.56 = private unnamed_addr constant [68 x i8] c"Waning: got a data partition B which does not match DP_A (DP loss!)\00", align 1
@str.57 = private unnamed_addr constant [68 x i8] c"Warning: got a data partition C which does not match DP_A(DP loss!)\00", align 1
@str.58 = private unnamed_addr constant [54 x i8] c"Warning: Decoding does not start with an IDR picture.\00", align 1
@str.59 = private unnamed_addr constant [48 x i8] c"Warning: could not read from reconstructed file\00", align 1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @init_all_macroblocks(ptr nocapture noundef readonly %dec_picture) local_unnamed_addr #0 {
entry:
  %size_x = getelementptr inbounds i8, ptr %dec_picture, i64 64
  %size_y = getelementptr inbounds i8, ptr %dec_picture, i64 68
  %0 = load i32, ptr %size_x, align 8
  %1 = load i32, ptr %size_y, align 4
  %mul5 = mul nsw i32 %1, %0
  %cmp7 = icmp sgt i32 %mul5, 15
  br i1 %cmp7, label %for.body.preheader, label %for.end

for.body.preheader:                               ; preds = %entry
  %mv_info1 = getelementptr inbounds i8, ptr %dec_picture, i64 152
  %2 = load ptr, ptr %mv_info1, align 8
  %3 = load ptr, ptr %2, align 8
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.body
  %mv_info.09 = phi ptr [ %incdec.ptr, %for.body ], [ %3, %for.body.preheader ]
  %j.08 = phi i32 [ %inc, %for.body ], [ 0, %for.body.preheader ]
  %incdec.ptr = getelementptr inbounds i8, ptr %mv_info.09, i64 32
  %ref_idx.i = getelementptr inbounds i8, ptr %mv_info.09, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %mv_info.09, i8 0, i64 24, i1 false)
  store i8 -1, ptr %ref_idx.i, align 8
  %arrayidx8.i = getelementptr inbounds i8, ptr %mv_info.09, i64 25
  store i8 -1, ptr %arrayidx8.i, align 1
  %inc = add nuw nsw i32 %j.08, 1
  %4 = load i32, ptr %size_x, align 8
  %5 = load i32, ptr %size_y, align 4
  %mul = mul nsw i32 %5, %4
  %shr = ashr i32 %mul, 4
  %cmp = icmp slt i32 %inc, %shr
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %entry
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @init_slice(ptr noundef %p_Vid, ptr noundef %currSlice) local_unnamed_addr #2 {
entry:
  %active_sps = getelementptr inbounds i8, ptr %currSlice, i64 24
  %0 = load ptr, ptr %active_sps, align 8
  %active_sps1 = getelementptr inbounds i8, ptr %p_Vid, i64 16
  store ptr %0, ptr %active_sps1, align 8
  %active_pps = getelementptr inbounds i8, ptr %currSlice, i64 16
  %1 = load ptr, ptr %active_pps, align 8
  %active_pps2 = getelementptr inbounds i8, ptr %p_Vid, i64 8
  store ptr %1, ptr %active_pps2, align 8
  %init_lists = getelementptr inbounds i8, ptr %currSlice, i64 13464
  %2 = load ptr, ptr %init_lists, align 8
  tail call void %2(ptr noundef %currSlice) #27
  %svc_extension_flag = getelementptr inbounds i8, ptr %currSlice, i64 32
  %3 = load i32, ptr %svc_extension_flag, align 8
  %switch = icmp ult i32 %3, 2
  br i1 %switch, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %ThisPOC = getelementptr inbounds i8, ptr %currSlice, i64 104
  %4 = load i32, ptr %ThisPOC, align 8
  tail call void @reorder_lists_mvc(ptr noundef nonnull %currSlice, i32 noundef %4) #27
  br label %if.end

if.else:                                          ; preds = %entry
  tail call void @reorder_lists(ptr noundef nonnull %currSlice)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %fs_listinterview0 = getelementptr inbounds i8, ptr %currSlice, i64 13320
  %5 = load ptr, ptr %fs_listinterview0, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.end8, label %if.then5

if.then5:                                         ; preds = %if.end
  tail call void @free(ptr noundef nonnull %5) #27
  store ptr null, ptr %fs_listinterview0, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.end
  %fs_listinterview1 = getelementptr inbounds i8, ptr %currSlice, i64 13328
  %6 = load ptr, ptr %fs_listinterview1, align 8
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %if.end13, label %if.then10

if.then10:                                        ; preds = %if.end8
  tail call void @free(ptr noundef nonnull %6) #27
  store ptr null, ptr %fs_listinterview1, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.end8
  %structure = getelementptr inbounds i8, ptr %currSlice, i64 184
  %7 = load i32, ptr %structure, align 8
  %cmp14 = icmp eq i32 %7, 0
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end13
  tail call void @init_mbaff_lists(ptr noundef nonnull %p_Vid, ptr noundef nonnull %currSlice) #27
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.end13
  %redundant_pic_cnt = getelementptr inbounds i8, ptr %currSlice, i64 220
  %8 = load i32, ptr %redundant_pic_cnt, align 4
  %cmp17.not = icmp eq i32 %8, 0
  br i1 %cmp17.not, label %if.then19, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end16
  %previous_frame_num = getelementptr inbounds i8, ptr %p_Vid, i64 851864
  %9 = load i32, ptr %previous_frame_num, align 8
  %frame_num = getelementptr inbounds i8, ptr %currSlice, i64 172
  %10 = load i32, ptr %frame_num, align 4
  %cmp18 = icmp eq i32 %9, %10
  br i1 %cmp18, label %if.end24, label %if.then19

if.then19:                                        ; preds = %land.lhs.true, %if.end16
  %ref_flag = getelementptr inbounds i8, ptr %currSlice, i64 13340
  %scevgep = getelementptr i8, ptr %currSlice, i64 13344
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %scevgep, ptr noundef nonnull align 4 dereferenceable(64) %ref_flag, i64 64, i1 false)
  br label %if.end24

if.end24:                                         ; preds = %if.then19, %land.lhs.true
  %cond.in.v = select i1 %cmp17.not, i64 851868, i64 851872
  %cond.in = getelementptr inbounds i8, ptr %p_Vid, i64 %cond.in.v
  %cond = load i32, ptr %cond.in, align 4
  %ref_flag27 = getelementptr inbounds i8, ptr %currSlice, i64 13340
  store i32 %cond, ptr %ref_flag27, align 4
  %11 = load ptr, ptr %active_sps, align 8
  %chroma_format_idc = getelementptr inbounds i8, ptr %11, i64 36
  %12 = load i32, ptr %chroma_format_idc, align 4
  switch i32 %12, label %if.else36 [
    i32 0, label %if.end39
    i32 3, label %if.end39
  ]

if.else36:                                        ; preds = %if.end24
  br label %if.end39

if.end39:                                         ; preds = %if.end24, %if.end24, %if.else36
  %linfo_cbp_intra_normal.sink = phi ptr [ @linfo_cbp_intra_normal, %if.else36 ], [ @linfo_cbp_intra_other, %if.end24 ], [ @linfo_cbp_intra_other, %if.end24 ]
  %linfo_cbp_inter_normal.sink = phi ptr [ @linfo_cbp_inter_normal, %if.else36 ], [ @linfo_cbp_inter_other, %if.end24 ], [ @linfo_cbp_inter_other, %if.end24 ]
  %linfo_cbp_intra37 = getelementptr inbounds i8, ptr %currSlice, i64 13480
  store ptr %linfo_cbp_intra_normal.sink, ptr %linfo_cbp_intra37, align 8
  %linfo_cbp_inter38 = getelementptr inbounds i8, ptr %currSlice, i64 13488
  store ptr %linfo_cbp_inter_normal.sink, ptr %linfo_cbp_inter38, align 8
  ret void
}

declare void @reorder_lists_mvc(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @reorder_lists(ptr noundef %currSlice) local_unnamed_addr #2 {
entry:
  %0 = load ptr, ptr %currSlice, align 8
  %slice_type = getelementptr inbounds i8, ptr %currSlice, i64 164
  %1 = load i32, ptr %slice_type, align 4
  switch i32 %1, label %if.then [
    i32 2, label %if.end50
    i32 4, label %if.end50
  ]

if.then:                                          ; preds = %entry
  %ref_pic_list_reordering_flag = getelementptr inbounds i8, ptr %currSlice, i64 1104
  %2 = load i32, ptr %ref_pic_list_reordering_flag, align 8
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %if.then4

if.then4:                                         ; preds = %if.then
  tail call void @reorder_ref_pic_list(ptr noundef nonnull %currSlice, i32 noundef 0) #27
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then
  %no_reference_picture = getelementptr inbounds i8, ptr %0, i64 856488
  %3 = load ptr, ptr %no_reference_picture, align 8
  %listX = getelementptr inbounds i8, ptr %currSlice, i64 264
  %4 = load ptr, ptr %listX, align 8
  %num_ref_idx_active = getelementptr inbounds i8, ptr %currSlice, i64 136
  %5 = load i32, ptr %num_ref_idx_active, align 8
  %6 = sext i32 %5 to i64
  %7 = getelementptr ptr, ptr %4, i64 %6
  %arrayidx7 = getelementptr i8, ptr %7, i64 -8
  %8 = load ptr, ptr %arrayidx7, align 8
  %cmp8 = icmp eq ptr %3, %8
  br i1 %cmp8, label %if.then9, label %if.end17

if.then9:                                         ; preds = %if.end
  %non_conforming_stream = getelementptr inbounds i8, ptr %0, i64 848948
  %9 = load i32, ptr %non_conforming_stream, align 4
  %tobool10.not = icmp eq i32 %9, 0
  br i1 %tobool10.not, label %if.else, label %if.then11

if.then11:                                        ; preds = %if.then9
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %if.end17

if.else:                                          ; preds = %if.then9
  tail call void @error(ptr noundef nonnull @.str.7, i32 noundef 500) #27
  br label %if.end17

if.end17:                                         ; preds = %if.end, %if.else, %if.then11
  %10 = load i32, ptr %num_ref_idx_active, align 8
  %conv = trunc i32 %10 to i8
  %listXsize = getelementptr inbounds i8, ptr %currSlice, i64 256
  store i8 %conv, ptr %listXsize, align 8
  %.pr = load i32, ptr %slice_type, align 4
  %cmp19 = icmp eq i32 %.pr, 1
  br i1 %cmp19, label %if.then21, label %if.end50

if.then21:                                        ; preds = %if.end17
  %arrayidx23 = getelementptr inbounds i8, ptr %currSlice, i64 1108
  %11 = load i32, ptr %arrayidx23, align 4
  %tobool24.not = icmp eq i32 %11, 0
  br i1 %tobool24.not, label %if.end26, label %if.then25

if.then25:                                        ; preds = %if.then21
  tail call void @reorder_ref_pic_list(ptr noundef nonnull %currSlice, i32 noundef 1) #27
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %if.then21
  %12 = load ptr, ptr %no_reference_picture, align 8
  %arrayidx29 = getelementptr inbounds i8, ptr %currSlice, i64 272
  %13 = load ptr, ptr %arrayidx29, align 8
  %arrayidx31 = getelementptr inbounds i8, ptr %currSlice, i64 140
  %14 = load i32, ptr %arrayidx31, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr ptr, ptr %13, i64 %15
  %arrayidx34 = getelementptr i8, ptr %16, i64 -8
  %17 = load ptr, ptr %arrayidx34, align 8
  %cmp35 = icmp eq ptr %12, %17
  br i1 %cmp35, label %if.then37, label %if.end44

if.then37:                                        ; preds = %if.end26
  %non_conforming_stream38 = getelementptr inbounds i8, ptr %0, i64 848948
  %18 = load i32, ptr %non_conforming_stream38, align 4
  %tobool39.not = icmp eq i32 %18, 0
  br i1 %tobool39.not, label %if.else42, label %if.then40

if.then40:                                        ; preds = %if.then37
  %puts83 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.51)
  br label %if.end44

if.else42:                                        ; preds = %if.then37
  tail call void @error(ptr noundef nonnull @.str.9, i32 noundef 500) #27
  br label %if.end44

if.end44:                                         ; preds = %if.then40, %if.else42, %if.end26
  %19 = load i32, ptr %arrayidx31, align 4
  %conv47 = trunc i32 %19 to i8
  %arrayidx49 = getelementptr inbounds i8, ptr %currSlice, i64 257
  store i8 %conv47, ptr %arrayidx49, align 1
  br label %if.end50

if.end50:                                         ; preds = %entry, %entry, %if.end44, %if.end17
  tail call void @free_ref_pic_list_reordering_buffer(ptr noundef nonnull %currSlice) #27
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #4

declare void @init_mbaff_lists(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @linfo_cbp_intra_other(i32 noundef, i32 noundef, ptr noundef, ptr noundef) #3

declare void @linfo_cbp_inter_other(i32 noundef, i32 noundef, ptr noundef, ptr noundef) #3

declare void @linfo_cbp_intra_normal(i32 noundef, i32 noundef, ptr noundef, ptr noundef) #3

declare void @linfo_cbp_inter_normal(i32 noundef, i32 noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind uwtable
define dso_local void @decode_slice(ptr noundef %currSlice, i32 noundef %current_header) local_unnamed_addr #2 {
entry:
  %0 = load ptr, ptr %currSlice, align 8
  %mb_aff_frame_flag = getelementptr inbounds i8, ptr %currSlice, i64 128
  %1 = load i32, ptr %mb_aff_frame_flag, align 8
  %add = add nsw i32 %1, 1
  %active_pps = getelementptr inbounds i8, ptr %currSlice, i64 16
  %2 = load ptr, ptr %active_pps, align 8
  %entropy_coding_mode_flag = getelementptr inbounds i8, ptr %2, i64 12
  %3 = load i32, ptr %entropy_coding_mode_flag, align 4
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @init_contexts(ptr noundef nonnull %currSlice) #27
  tail call void @cabac_new_slice(ptr noundef nonnull %currSlice) #27
  %.pre = load ptr, ptr %active_pps, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = phi ptr [ %.pre, %if.then ], [ %2, %entry ]
  %weighted_bipred_idc = getelementptr inbounds i8, ptr %4, i64 2180
  %5 = load i32, ptr %weighted_bipred_idc, align 4
  %cmp.not = icmp eq i32 %5, 0
  br i1 %cmp.not, label %lor.lhs.false, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %slice_type = getelementptr inbounds i8, ptr %currSlice, i64 164
  %6 = load i32, ptr %slice_type, align 4
  %cmp3 = icmp eq i32 %6, 1
  br i1 %cmp3, label %if.then.i, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.end
  %weighted_pred_flag = getelementptr inbounds i8, ptr %4, i64 2176
  %7 = load i32, ptr %weighted_pred_flag, align 8
  %tobool5.not = icmp eq i32 %7, 0
  br i1 %tobool5.not, label %if.end10, label %land.lhs.true6

land.lhs.true6:                                   ; preds = %lor.lhs.false
  %slice_type7 = getelementptr inbounds i8, ptr %currSlice, i64 164
  %8 = load i32, ptr %slice_type7, align 4
  %cond = icmp eq i32 %8, 1
  br i1 %cond, label %if.then.i, label %if.end10

if.then.i:                                        ; preds = %land.lhs.true6, %land.lhs.true
  %num_ref_idx_active.i = getelementptr inbounds i8, ptr %currSlice, i64 136
  %9 = load i32, ptr %num_ref_idx_active.i, align 8
  %arrayidx2.i = getelementptr inbounds i8, ptr %currSlice, i64 140
  %10 = load i32, ptr %arrayidx2.i, align 4
  %cmp3.i = icmp eq i32 %5, 2
  br i1 %cmp3.i, label %if.then4.i, label %if.end.i

if.then4.i:                                       ; preds = %if.then.i
  %luma_log2_weight_denom.i = getelementptr inbounds i8, ptr %currSlice, i64 13276
  store i16 5, ptr %luma_log2_weight_denom.i, align 4
  %chroma_log2_weight_denom.i = getelementptr inbounds i8, ptr %currSlice, i64 13278
  store i16 5, ptr %chroma_log2_weight_denom.i, align 2
  %wp_round_luma.i = getelementptr inbounds i8, ptr %currSlice, i64 13304
  store i16 16, ptr %wp_round_luma.i, align 8
  %wp_round_chroma.i = getelementptr inbounds i8, ptr %currSlice, i64 13306
  store i16 16, ptr %wp_round_chroma.i, align 2
  %wp_weight.i = getelementptr inbounds i8, ptr %currSlice, i64 13280
  %wp_offset.i = getelementptr inbounds i8, ptr %currSlice, i64 13288
  br label %for.cond6.preheader.i

for.cond6.preheader.i:                            ; preds = %for.cond6.preheader.i, %if.then4.i
  %indvars.iv.i = phi i64 [ 0, %if.then4.i ], [ %indvars.iv.next.i, %for.cond6.preheader.i ]
  %cond.in.i = load i16, ptr %luma_log2_weight_denom.i, align 2
  %cond.i = zext nneg i16 %cond.in.i to i32
  %shl.i = shl nuw i32 1, %cond.i
  %11 = load ptr, ptr %wp_weight.i, align 8
  %12 = load ptr, ptr %11, align 8
  %arrayidx14.i = getelementptr inbounds ptr, ptr %12, i64 %indvars.iv.i
  %13 = load ptr, ptr %arrayidx14.i, align 8
  store i32 %shl.i, ptr %13, align 4
  %14 = load ptr, ptr %wp_weight.i, align 8
  %arrayidx19.i = getelementptr inbounds i8, ptr %14, i64 8
  %15 = load ptr, ptr %arrayidx19.i, align 8
  %arrayidx21.i = getelementptr inbounds ptr, ptr %15, i64 %indvars.iv.i
  %16 = load ptr, ptr %arrayidx21.i, align 8
  store i32 %shl.i, ptr %16, align 4
  %17 = load ptr, ptr %wp_offset.i, align 8
  %18 = load ptr, ptr %17, align 8
  %arrayidx26.i = getelementptr inbounds ptr, ptr %18, i64 %indvars.iv.i
  %19 = load ptr, ptr %arrayidx26.i, align 8
  store i32 0, ptr %19, align 4
  %20 = load ptr, ptr %wp_offset.i, align 8
  %arrayidx30.i = getelementptr inbounds i8, ptr %20, i64 8
  %21 = load ptr, ptr %arrayidx30.i, align 8
  %arrayidx32.i = getelementptr inbounds ptr, ptr %21, i64 %indvars.iv.i
  %22 = load ptr, ptr %arrayidx32.i, align 8
  store i32 0, ptr %22, align 4
  %cond.in.1.i = load i16, ptr %chroma_log2_weight_denom.i, align 2
  %cond.1.i = zext nneg i16 %cond.in.1.i to i32
  %shl.1.i = shl nuw i32 1, %cond.1.i
  %23 = load ptr, ptr %wp_weight.i, align 8
  %24 = load ptr, ptr %23, align 8
  %arrayidx14.1.i = getelementptr inbounds ptr, ptr %24, i64 %indvars.iv.i
  %25 = load ptr, ptr %arrayidx14.1.i, align 8
  %arrayidx16.1.i = getelementptr inbounds i8, ptr %25, i64 4
  store i32 %shl.1.i, ptr %arrayidx16.1.i, align 4
  %26 = load ptr, ptr %wp_weight.i, align 8
  %arrayidx19.1.i = getelementptr inbounds i8, ptr %26, i64 8
  %27 = load ptr, ptr %arrayidx19.1.i, align 8
  %arrayidx21.1.i = getelementptr inbounds ptr, ptr %27, i64 %indvars.iv.i
  %28 = load ptr, ptr %arrayidx21.1.i, align 8
  %arrayidx23.1.i = getelementptr inbounds i8, ptr %28, i64 4
  store i32 %shl.1.i, ptr %arrayidx23.1.i, align 4
  %29 = load ptr, ptr %wp_offset.i, align 8
  %30 = load ptr, ptr %29, align 8
  %arrayidx26.1.i = getelementptr inbounds ptr, ptr %30, i64 %indvars.iv.i
  %31 = load ptr, ptr %arrayidx26.1.i, align 8
  %arrayidx28.1.i = getelementptr inbounds i8, ptr %31, i64 4
  store i32 0, ptr %arrayidx28.1.i, align 4
  %32 = load ptr, ptr %wp_offset.i, align 8
  %arrayidx30.1.i = getelementptr inbounds i8, ptr %32, i64 8
  %33 = load ptr, ptr %arrayidx30.1.i, align 8
  %arrayidx32.1.i = getelementptr inbounds ptr, ptr %33, i64 %indvars.iv.i
  %34 = load ptr, ptr %arrayidx32.1.i, align 8
  %arrayidx34.1.i = getelementptr inbounds i8, ptr %34, i64 4
  store i32 0, ptr %arrayidx34.1.i, align 4
  %cond.in.2.i = load i16, ptr %chroma_log2_weight_denom.i, align 2
  %cond.2.i = zext nneg i16 %cond.in.2.i to i32
  %shl.2.i = shl nuw i32 1, %cond.2.i
  %35 = load ptr, ptr %wp_weight.i, align 8
  %36 = load ptr, ptr %35, align 8
  %arrayidx14.2.i = getelementptr inbounds ptr, ptr %36, i64 %indvars.iv.i
  %37 = load ptr, ptr %arrayidx14.2.i, align 8
  %arrayidx16.2.i = getelementptr inbounds i8, ptr %37, i64 8
  store i32 %shl.2.i, ptr %arrayidx16.2.i, align 4
  %38 = load ptr, ptr %wp_weight.i, align 8
  %arrayidx19.2.i = getelementptr inbounds i8, ptr %38, i64 8
  %39 = load ptr, ptr %arrayidx19.2.i, align 8
  %arrayidx21.2.i = getelementptr inbounds ptr, ptr %39, i64 %indvars.iv.i
  %40 = load ptr, ptr %arrayidx21.2.i, align 8
  %arrayidx23.2.i = getelementptr inbounds i8, ptr %40, i64 8
  store i32 %shl.2.i, ptr %arrayidx23.2.i, align 4
  %41 = load ptr, ptr %wp_offset.i, align 8
  %42 = load ptr, ptr %41, align 8
  %arrayidx26.2.i = getelementptr inbounds ptr, ptr %42, i64 %indvars.iv.i
  %43 = load ptr, ptr %arrayidx26.2.i, align 8
  %arrayidx28.2.i = getelementptr inbounds i8, ptr %43, i64 8
  store i32 0, ptr %arrayidx28.2.i, align 4
  %44 = load ptr, ptr %wp_offset.i, align 8
  %arrayidx30.2.i = getelementptr inbounds i8, ptr %44, i64 8
  %45 = load ptr, ptr %arrayidx30.2.i, align 8
  %arrayidx32.2.i = getelementptr inbounds ptr, ptr %45, i64 %indvars.iv.i
  %46 = load ptr, ptr %arrayidx32.2.i, align 8
  %arrayidx34.2.i = getelementptr inbounds i8, ptr %46, i64 8
  store i32 0, ptr %arrayidx34.2.i, align 4
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 32
  br i1 %exitcond.not.i, label %if.end.i, label %for.cond6.preheader.i

if.end.i:                                         ; preds = %for.cond6.preheader.i, %if.then.i
  %cmp39789.i = icmp sgt i32 %9, 0
  br i1 %cmp39789.i, label %for.cond42.preheader.lr.ph.i, label %if.end10

for.cond42.preheader.lr.ph.i:                     ; preds = %if.end.i
  %cmp43787.i = icmp sgt i32 %10, 0
  %listX.i = getelementptr inbounds i8, ptr %currSlice, i64 264
  %arrayidx97.i = getelementptr inbounds i8, ptr %currSlice, i64 272
  %ThisPOC.i = getelementptr inbounds i8, ptr %currSlice, i64 104
  %wbp_weight150.i = getelementptr inbounds i8, ptr %currSlice, i64 13296
  %wp_offset213.i = getelementptr inbounds i8, ptr %currSlice, i64 13288
  %wp_weight65.i = getelementptr inbounds i8, ptr %currSlice, i64 13280
  br i1 %cmp43787.i, label %for.cond42.preheader.us.preheader.i, label %if.end10

for.cond42.preheader.us.preheader.i:              ; preds = %for.cond42.preheader.lr.ph.i
  %wide.trip.count812.i = zext nneg i32 %9 to i64
  %wide.trip.count.i = zext nneg i32 %10 to i64
  br label %for.cond42.preheader.us.i

for.cond42.preheader.us.i:                        ; preds = %for.cond42.for.inc235_crit_edge.us.i, %for.cond42.preheader.us.preheader.i
  %indvars.iv809.i = phi i64 [ 0, %for.cond42.preheader.us.preheader.i ], [ %indvars.iv.next810.i, %for.cond42.for.inc235_crit_edge.us.i ]
  br label %for.cond46.preheader.us.i

for.inc232.us.i:                                  ; preds = %for.inc229.us.i
  %indvars.iv.next806.i = add nuw nsw i64 %indvars.iv805.i, 1
  %exitcond808.not.i = icmp eq i64 %indvars.iv.next806.i, %wide.trip.count.i
  br i1 %exitcond808.not.i, label %for.cond42.for.inc235_crit_edge.us.i, label %for.cond46.preheader.us.i

cond.end58.us.i:                                  ; preds = %for.cond46.preheader.us.i, %for.inc229.us.i
  %indvars.iv801.i = phi i64 [ 0, %for.cond46.preheader.us.i ], [ %indvars.iv.next802.i, %for.inc229.us.i ]
  %47 = load ptr, ptr %active_pps, align 8
  %weighted_bipred_idc61.us.i = getelementptr inbounds i8, ptr %47, i64 2180
  %48 = load i32, ptr %weighted_bipred_idc61.us.i, align 4
  switch i32 %48, label %for.inc229.us.i [
    i32 1, label %if.then64.us.i
    i32 2, label %if.then96.us.i
  ]

if.then96.us.i:                                   ; preds = %cond.end58.us.i
  %49 = load ptr, ptr %arrayidx97.i, align 8
  %arrayidx99.us.i = getelementptr inbounds ptr, ptr %49, i64 %indvars.iv805.i
  %50 = load ptr, ptr %arrayidx99.us.i, align 8
  %poc.us.i = getelementptr inbounds i8, ptr %50, i64 4
  %51 = load i32, ptr %poc.us.i, align 4
  %52 = load ptr, ptr %listX.i, align 8
  %arrayidx103.us.i = getelementptr inbounds ptr, ptr %52, i64 %indvars.iv809.i
  %53 = load ptr, ptr %arrayidx103.us.i, align 8
  %poc104.us.i = getelementptr inbounds i8, ptr %53, i64 4
  %54 = load i32, ptr %poc104.us.i, align 4
  %sub.us.i = sub nsw i32 %51, %54
  %cond.i.i.us.i = tail call noundef i32 @llvm.smax.i32(i32 %sub.us.i, i32 -128)
  %cond.i4.i.us.i = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i.us.i, i32 127)
  %cmp105.us.i = icmp eq i32 %51, %54
  br i1 %cmp105.us.i, label %if.then120.us.i, label %lor.lhs.false.us.i

lor.lhs.false.us.i:                               ; preds = %if.then96.us.i
  %is_long_term.us.i = getelementptr inbounds i8, ptr %50, i64 40
  %55 = load i8, ptr %is_long_term.us.i, align 8
  %tobool.not.us.i = icmp eq i8 %55, 0
  br i1 %tobool.not.us.i, label %lor.lhs.false112.us.i, label %if.then120.us.i

lor.lhs.false112.us.i:                            ; preds = %lor.lhs.false.us.i
  %is_long_term117.us.i = getelementptr inbounds i8, ptr %53, i64 40
  %56 = load i8, ptr %is_long_term117.us.i, align 8
  %tobool119.not.us.i = icmp eq i8 %56, 0
  br i1 %tobool119.not.us.i, label %if.else137.us.i, label %if.then120.us.i

if.else137.us.i:                                  ; preds = %lor.lhs.false112.us.i
  %57 = load i32, ptr %ThisPOC.i, align 8
  %sub143.us.i = sub nsw i32 %57, %54
  %cond.i.i769.us.i = tail call noundef i32 @llvm.smax.i32(i32 %sub143.us.i, i32 -128)
  %cond.i4.i770.us.i = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i769.us.i, i32 127)
  %div.lhs.trunc.us.i = trunc nsw i32 %cond.i4.i.us.i to i8
  %div780.us.i = sdiv i8 %div.lhs.trunc.us.i, 2
  %58 = tail call i8 @llvm.abs.i8(i8 %div780.us.i, i1 true)
  %sub.i.us.i = zext nneg i8 %58 to i16
  %add.us.i = or disjoint i16 %sub.i.us.i, 16384
  %div146.rhs.trunc.us.i = trunc nsw i32 %cond.i4.i.us.i to i16
  %div146781.us.i = sdiv i16 %add.us.i, %div146.rhs.trunc.us.i
  %div146.sext.us.i = sext i16 %div146781.us.i to i32
  %mul.us.i = mul nsw i32 %cond.i4.i770.us.i, %div146.sext.us.i
  %add147.us.i = add nsw i32 %mul.us.i, 32
  %shr.us.i = ashr i32 %add147.us.i, 6
  %cond.i.i771.us.i = tail call noundef i32 @llvm.smax.i32(i32 %shr.us.i, i32 -1024)
  %cond.i4.i772.us.i = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i771.us.i, i32 1023)
  %shr149.us.i = ashr i32 %cond.i4.i772.us.i, 2
  %59 = load ptr, ptr %wbp_weight150.i, align 8
  %arrayidx151.us.i = getelementptr inbounds i8, ptr %59, i64 8
  %60 = load ptr, ptr %arrayidx151.us.i, align 8
  %arrayidx153.us.i = getelementptr inbounds ptr, ptr %60, i64 %indvars.iv809.i
  %61 = load ptr, ptr %arrayidx153.us.i, align 8
  %arrayidx155.us.i = getelementptr inbounds ptr, ptr %61, i64 %indvars.iv805.i
  %62 = load ptr, ptr %arrayidx155.us.i, align 8
  %arrayidx157.us.i = getelementptr inbounds i32, ptr %62, i64 %indvars.iv801.i
  store i32 %shr149.us.i, ptr %arrayidx157.us.i, align 4
  %63 = load ptr, ptr %wbp_weight150.i, align 8
  %arrayidx159.us.i = getelementptr inbounds i8, ptr %63, i64 8
  %64 = load ptr, ptr %arrayidx159.us.i, align 8
  %arrayidx161.us.i = getelementptr inbounds ptr, ptr %64, i64 %indvars.iv809.i
  %65 = load ptr, ptr %arrayidx161.us.i, align 8
  %arrayidx163.us.i = getelementptr inbounds ptr, ptr %65, i64 %indvars.iv805.i
  %66 = load ptr, ptr %arrayidx163.us.i, align 8
  %arrayidx165.us.i = getelementptr inbounds i32, ptr %66, i64 %indvars.iv801.i
  %67 = load i32, ptr %arrayidx165.us.i, align 4
  %sub166.us.i = sub nsw i32 64, %67
  %68 = load ptr, ptr %63, align 8
  %arrayidx170.us.i = getelementptr inbounds ptr, ptr %68, i64 %indvars.iv809.i
  %69 = load ptr, ptr %arrayidx170.us.i, align 8
  %arrayidx172.us.i = getelementptr inbounds ptr, ptr %69, i64 %indvars.iv805.i
  %70 = load ptr, ptr %arrayidx172.us.i, align 8
  %arrayidx174.us.i = getelementptr inbounds i32, ptr %70, i64 %indvars.iv801.i
  store i32 %sub166.us.i, ptr %arrayidx174.us.i, align 4
  %71 = load ptr, ptr %wbp_weight150.i, align 8
  %arrayidx176.us.i = getelementptr inbounds i8, ptr %71, i64 8
  %72 = load ptr, ptr %arrayidx176.us.i, align 8
  %arrayidx178.us.i = getelementptr inbounds ptr, ptr %72, i64 %indvars.iv809.i
  %73 = load ptr, ptr %arrayidx178.us.i, align 8
  %arrayidx180.us.i = getelementptr inbounds ptr, ptr %73, i64 %indvars.iv805.i
  %74 = load ptr, ptr %arrayidx180.us.i, align 8
  %arrayidx182.us.i = getelementptr inbounds i32, ptr %74, i64 %indvars.iv801.i
  %75 = load i32, ptr %arrayidx182.us.i, align 4
  %76 = add i32 %75, -129
  %or.cond.us.i = icmp ult i32 %76, -193
  br i1 %or.cond.us.i, label %if.then196.us.i, label %for.inc229.us.i

if.then196.us.i:                                  ; preds = %if.else137.us.i
  %77 = load ptr, ptr %71, align 8
  %arrayidx200.us.i = getelementptr inbounds ptr, ptr %77, i64 %indvars.iv809.i
  %78 = load ptr, ptr %arrayidx200.us.i, align 8
  %arrayidx202.us.i = getelementptr inbounds ptr, ptr %78, i64 %indvars.iv805.i
  %79 = load ptr, ptr %arrayidx202.us.i, align 8
  %arrayidx204.us.i = getelementptr inbounds i32, ptr %79, i64 %indvars.iv801.i
  store i32 32, ptr %arrayidx204.us.i, align 4
  %80 = load ptr, ptr %wbp_weight150.i, align 8
  %arrayidx206.us.i = getelementptr inbounds i8, ptr %80, i64 8
  %81 = load ptr, ptr %arrayidx206.us.i, align 8
  %arrayidx208.us.i = getelementptr inbounds ptr, ptr %81, i64 %indvars.iv809.i
  %82 = load ptr, ptr %arrayidx208.us.i, align 8
  %arrayidx210.us.i = getelementptr inbounds ptr, ptr %82, i64 %indvars.iv805.i
  %83 = load ptr, ptr %arrayidx210.us.i, align 8
  %arrayidx212.us.i = getelementptr inbounds i32, ptr %83, i64 %indvars.iv801.i
  store i32 32, ptr %arrayidx212.us.i, align 4
  %84 = load ptr, ptr %wp_offset213.i, align 8
  %85 = load ptr, ptr %84, align 8
  %arrayidx216.us.i = getelementptr inbounds ptr, ptr %85, i64 %indvars.iv809.i
  %86 = load ptr, ptr %arrayidx216.us.i, align 8
  %arrayidx218.us.i = getelementptr inbounds i32, ptr %86, i64 %indvars.iv801.i
  store i32 0, ptr %arrayidx218.us.i, align 4
  %87 = load ptr, ptr %wp_offset213.i, align 8
  %arrayidx220.us.i = getelementptr inbounds i8, ptr %87, i64 8
  br label %for.inc229.us.sink.split.i

if.then120.us.i:                                  ; preds = %lor.lhs.false112.us.i, %lor.lhs.false.us.i, %if.then96.us.i
  %88 = load ptr, ptr %wbp_weight150.i, align 8
  %89 = load ptr, ptr %88, align 8
  %arrayidx124.us.i = getelementptr inbounds ptr, ptr %89, i64 %indvars.iv809.i
  %90 = load ptr, ptr %arrayidx124.us.i, align 8
  %arrayidx126.us.i = getelementptr inbounds ptr, ptr %90, i64 %indvars.iv805.i
  %91 = load ptr, ptr %arrayidx126.us.i, align 8
  %arrayidx128.us.i = getelementptr inbounds i32, ptr %91, i64 %indvars.iv801.i
  store i32 32, ptr %arrayidx128.us.i, align 4
  %92 = load ptr, ptr %wbp_weight150.i, align 8
  %arrayidx130.us.i = getelementptr inbounds i8, ptr %92, i64 8
  %93 = load ptr, ptr %arrayidx130.us.i, align 8
  %arrayidx132.us.i = getelementptr inbounds ptr, ptr %93, i64 %indvars.iv809.i
  br label %for.inc229.us.sink.split.i

if.then64.us.i:                                   ; preds = %cond.end58.us.i
  %94 = load ptr, ptr %wp_weight65.i, align 8
  %95 = load ptr, ptr %94, align 8
  %arrayidx68.us.i = getelementptr inbounds ptr, ptr %95, i64 %indvars.iv809.i
  %96 = load ptr, ptr %arrayidx68.us.i, align 8
  %arrayidx70.us.i = getelementptr inbounds i32, ptr %96, i64 %indvars.iv801.i
  %97 = load i32, ptr %arrayidx70.us.i, align 4
  %98 = load ptr, ptr %wbp_weight150.i, align 8
  %99 = load ptr, ptr %98, align 8
  %arrayidx73.us.i = getelementptr inbounds ptr, ptr %99, i64 %indvars.iv809.i
  %100 = load ptr, ptr %arrayidx73.us.i, align 8
  %arrayidx75.us.i = getelementptr inbounds ptr, ptr %100, i64 %indvars.iv805.i
  %101 = load ptr, ptr %arrayidx75.us.i, align 8
  %arrayidx77.us.i = getelementptr inbounds i32, ptr %101, i64 %indvars.iv801.i
  store i32 %97, ptr %arrayidx77.us.i, align 4
  %102 = load ptr, ptr %wp_weight65.i, align 8
  %arrayidx79.us.i = getelementptr inbounds i8, ptr %102, i64 8
  %103 = load ptr, ptr %arrayidx79.us.i, align 8
  %arrayidx81.us.i = getelementptr inbounds ptr, ptr %103, i64 %indvars.iv805.i
  %104 = load ptr, ptr %arrayidx81.us.i, align 8
  %arrayidx83.us.i = getelementptr inbounds i32, ptr %104, i64 %indvars.iv801.i
  %105 = load i32, ptr %arrayidx83.us.i, align 4
  %106 = load ptr, ptr %wbp_weight150.i, align 8
  %arrayidx85.us.i = getelementptr inbounds i8, ptr %106, i64 8
  %107 = load ptr, ptr %arrayidx85.us.i, align 8
  %arrayidx87.us.i = getelementptr inbounds ptr, ptr %107, i64 %indvars.iv809.i
  br label %for.inc229.us.sink.split.i

for.inc229.us.sink.split.i:                       ; preds = %if.then64.us.i, %if.then120.us.i, %if.then196.us.i
  %arrayidx87.us.sink.i = phi ptr [ %arrayidx87.us.i, %if.then64.us.i ], [ %arrayidx132.us.i, %if.then120.us.i ], [ %arrayidx220.us.i, %if.then196.us.i ]
  %.sink.i = phi i32 [ %105, %if.then64.us.i ], [ 32, %if.then120.us.i ], [ 0, %if.then196.us.i ]
  %108 = load ptr, ptr %arrayidx87.us.sink.i, align 8
  %arrayidx89.us.i = getelementptr inbounds ptr, ptr %108, i64 %indvars.iv805.i
  %109 = load ptr, ptr %arrayidx89.us.i, align 8
  %arrayidx91.us.i = getelementptr inbounds i32, ptr %109, i64 %indvars.iv801.i
  store i32 %.sink.i, ptr %arrayidx91.us.i, align 4
  br label %for.inc229.us.i

for.inc229.us.i:                                  ; preds = %for.inc229.us.sink.split.i, %if.else137.us.i, %cond.end58.us.i
  %indvars.iv.next802.i = add nuw nsw i64 %indvars.iv801.i, 1
  %exitcond804.not.i = icmp eq i64 %indvars.iv.next802.i, 3
  br i1 %exitcond804.not.i, label %for.inc232.us.i, label %cond.end58.us.i

for.cond46.preheader.us.i:                        ; preds = %for.inc232.us.i, %for.cond42.preheader.us.i
  %indvars.iv805.i = phi i64 [ 0, %for.cond42.preheader.us.i ], [ %indvars.iv.next806.i, %for.inc232.us.i ]
  br label %cond.end58.us.i

for.cond42.for.inc235_crit_edge.us.i:             ; preds = %for.inc232.us.i
  %indvars.iv.next810.i = add nuw nsw i64 %indvars.iv809.i, 1
  %exitcond813.not.i = icmp eq i64 %indvars.iv.next810.i, %wide.trip.count812.i
  br i1 %exitcond813.not.i, label %for.end237.i, label %for.cond42.preheader.us.i

for.end237.i:                                     ; preds = %for.cond42.for.inc235_crit_edge.us.i
  %110 = load i32, ptr %mb_aff_frame_flag, align 8
  %tobool238.not.i = icmp eq i32 %110, 0
  br i1 %tobool238.not.i, label %if.end10, label %for.cond245.preheader.lr.ph.i

for.cond245.preheader.lr.ph.i:                    ; preds = %for.end237.i
  %mul241.i = shl nuw i32 %9, 1
  %mul246.i = shl nuw i32 %10, 1
  %smax.i = tail call i32 @llvm.smax.i32(i32 %mul246.i, i32 1)
  %smax830.i = tail call i32 @llvm.smax.i32(i32 %mul241.i, i32 1)
  %wide.trip.count831.i = zext nneg i32 %smax830.i to i64
  %wide.trip.count825.i = zext nneg i32 %smax.i to i64
  %arrayidx346.us.i = getelementptr inbounds i8, ptr %currSlice, i64 288
  %arrayidx353.us.i = getelementptr inbounds i8, ptr %currSlice, i64 280
  %cond408.in.us.i = getelementptr inbounds i8, ptr %currSlice, i64 68
  %arrayidx346.us.1.i = getelementptr inbounds i8, ptr %currSlice, i64 304
  %arrayidx353.us.1.i = getelementptr inbounds i8, ptr %currSlice, i64 296
  %cond408.in.us.1.i = getelementptr inbounds i8, ptr %currSlice, i64 72
  br label %for.cond245.preheader.us.i

for.cond245.preheader.us.i:                       ; preds = %for.cond245.for.inc533_crit_edge.us.i, %for.cond245.preheader.lr.ph.i
  %indvars.iv827.i = phi i64 [ 0, %for.cond245.preheader.lr.ph.i ], [ %indvars.iv.next828.i, %for.cond245.for.inc533_crit_edge.us.i ]
  %shr260.us.i = lshr i64 %indvars.iv827.i, 1
  %idxprom261.us.i = and i64 %shr260.us.i, 2147483647
  br label %for.cond250.preheader.us.i

for.inc530.us.i:                                  ; preds = %for.inc524.us.1.i
  %indvars.iv.next823.i = add nuw nsw i64 %indvars.iv822.i, 1
  %exitcond826.not.i = icmp eq i64 %indvars.iv.next823.i, %wide.trip.count825.i
  br i1 %exitcond826.not.i, label %for.cond245.for.inc533_crit_edge.us.i, label %for.cond250.preheader.us.i

if.then342.us.i:                                  ; preds = %for.cond254.preheader.us.i
  %111 = load ptr, ptr %arrayidx346.us.i, align 8
  %arrayidx348.us.i = getelementptr inbounds ptr, ptr %111, i64 %indvars.iv822.i
  %112 = load ptr, ptr %arrayidx348.us.i, align 8
  %poc349.us.i = getelementptr inbounds i8, ptr %112, i64 4
  %113 = load i32, ptr %poc349.us.i, align 4
  %114 = load ptr, ptr %arrayidx353.us.i, align 8
  %arrayidx355.us.i = getelementptr inbounds ptr, ptr %114, i64 %indvars.iv827.i
  %115 = load ptr, ptr %arrayidx355.us.i, align 8
  %poc356.us.i = getelementptr inbounds i8, ptr %115, i64 4
  %116 = load i32, ptr %poc356.us.i, align 4
  %sub357.us.i = sub nsw i32 %113, %116
  %cond.i.i773.us.i = tail call noundef i32 @llvm.smax.i32(i32 %sub357.us.i, i32 -128)
  %cond.i4.i774.us.i = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i773.us.i, i32 127)
  %cmp359.us.i = icmp eq i32 %113, %116
  br i1 %cmp359.us.i, label %if.then381.us.i, label %lor.lhs.false361.us.i

lor.lhs.false361.us.i:                            ; preds = %if.then342.us.i
  %is_long_term368.us.i = getelementptr inbounds i8, ptr %112, i64 40
  %117 = load i8, ptr %is_long_term368.us.i, align 8
  %tobool370.not.us.i = icmp eq i8 %117, 0
  br i1 %tobool370.not.us.i, label %lor.lhs.false371.us.i, label %if.then381.us.i

lor.lhs.false371.us.i:                            ; preds = %lor.lhs.false361.us.i
  %is_long_term378.us.i = getelementptr inbounds i8, ptr %115, i64 40
  %118 = load i8, ptr %is_long_term378.us.i, align 8
  %tobool380.not.us.i = icmp eq i8 %118, 0
  br i1 %tobool380.not.us.i, label %if.else402.us.i, label %if.then381.us.i

if.else402.us.i:                                  ; preds = %lor.lhs.false371.us.i
  %cond408.us.i = load i32, ptr %cond408.in.us.i, align 4
  %sub416.us.i = sub nsw i32 %cond408.us.i, %116
  %cond.i.i775.us.i = tail call noundef i32 @llvm.smax.i32(i32 %sub416.us.i, i32 -128)
  %cond.i4.i776.us.i = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i775.us.i, i32 127)
  %div418.lhs.trunc.us.i = trunc nsw i32 %cond.i4.i774.us.i to i8
  %div418782.us.i = sdiv i8 %div418.lhs.trunc.us.i, 2
  %119 = tail call i8 @llvm.abs.i8(i8 %div418782.us.i, i1 true)
  %sub.i777.us.i = zext nneg i8 %119 to i16
  %add420.us.i = or disjoint i16 %sub.i777.us.i, 16384
  %div421.rhs.trunc.us.i = trunc nsw i32 %cond.i4.i774.us.i to i16
  %div421783.us.i = sdiv i16 %add420.us.i, %div421.rhs.trunc.us.i
  %div421.sext.us.i = sext i16 %div421783.us.i to i32
  %mul422.us.i = mul nsw i32 %cond.i4.i776.us.i, %div421.sext.us.i
  %add423.us.i = add nsw i32 %mul422.us.i, 32
  %shr424.us.i = ashr i32 %add423.us.i, 6
  %cond.i.i778.us.i = tail call noundef i32 @llvm.smax.i32(i32 %shr424.us.i, i32 -1024)
  %cond.i4.i779.us.i = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i778.us.i, i32 1023)
  %shr426.us.i = ashr i32 %cond.i4.i779.us.i, 2
  %120 = load ptr, ptr %wbp_weight150.i, align 8
  %arrayidx430.us.i = getelementptr inbounds i8, ptr %120, i64 24
  %121 = load ptr, ptr %arrayidx430.us.i, align 8
  %arrayidx432.us.i = getelementptr inbounds ptr, ptr %121, i64 %indvars.iv827.i
  %122 = load ptr, ptr %arrayidx432.us.i, align 8
  %arrayidx434.us.i = getelementptr inbounds ptr, ptr %122, i64 %indvars.iv822.i
  %123 = load ptr, ptr %arrayidx434.us.i, align 8
  %arrayidx436.us.i = getelementptr inbounds i32, ptr %123, i64 %indvars.iv818.i
  store i32 %shr426.us.i, ptr %arrayidx436.us.i, align 4
  %124 = load ptr, ptr %wbp_weight150.i, align 8
  %arrayidx440.us.i = getelementptr inbounds i8, ptr %124, i64 24
  %125 = load ptr, ptr %arrayidx440.us.i, align 8
  %arrayidx442.us.i = getelementptr inbounds ptr, ptr %125, i64 %indvars.iv827.i
  %126 = load ptr, ptr %arrayidx442.us.i, align 8
  %arrayidx444.us.i = getelementptr inbounds ptr, ptr %126, i64 %indvars.iv822.i
  %127 = load ptr, ptr %arrayidx444.us.i, align 8
  %arrayidx446.us.i = getelementptr inbounds i32, ptr %127, i64 %indvars.iv818.i
  %128 = load i32, ptr %arrayidx446.us.i, align 4
  %sub447.us.i = sub nsw i32 64, %128
  %arrayidx451.us.i = getelementptr inbounds i8, ptr %124, i64 16
  %129 = load ptr, ptr %arrayidx451.us.i, align 8
  %arrayidx453.us.i = getelementptr inbounds ptr, ptr %129, i64 %indvars.iv827.i
  %130 = load ptr, ptr %arrayidx453.us.i, align 8
  %arrayidx455.us.i = getelementptr inbounds ptr, ptr %130, i64 %indvars.iv822.i
  %131 = load ptr, ptr %arrayidx455.us.i, align 8
  %arrayidx457.us.i = getelementptr inbounds i32, ptr %131, i64 %indvars.iv818.i
  store i32 %sub447.us.i, ptr %arrayidx457.us.i, align 4
  %132 = load ptr, ptr %wbp_weight150.i, align 8
  %arrayidx461.us.i = getelementptr inbounds i8, ptr %132, i64 24
  %133 = load ptr, ptr %arrayidx461.us.i, align 8
  %arrayidx463.us.i = getelementptr inbounds ptr, ptr %133, i64 %indvars.iv827.i
  %134 = load ptr, ptr %arrayidx463.us.i, align 8
  %arrayidx465.us.i = getelementptr inbounds ptr, ptr %134, i64 %indvars.iv822.i
  %135 = load ptr, ptr %arrayidx465.us.i, align 8
  %arrayidx467.us.i = getelementptr inbounds i32, ptr %135, i64 %indvars.iv818.i
  %136 = load i32, ptr %arrayidx467.us.i, align 4
  %137 = add i32 %136, -129
  %or.cond768.us.i = icmp ult i32 %137, -193
  br i1 %or.cond768.us.i, label %if.then483.us.i, label %for.inc524.us.i

if.then483.us.i:                                  ; preds = %if.else402.us.i
  store i32 32, ptr %arrayidx467.us.i, align 4
  %138 = load ptr, ptr %wbp_weight150.i, align 8
  %arrayidx497.us.i = getelementptr inbounds i8, ptr %138, i64 16
  %139 = load ptr, ptr %arrayidx497.us.i, align 8
  %arrayidx499.us.i = getelementptr inbounds ptr, ptr %139, i64 %indvars.iv827.i
  %140 = load ptr, ptr %arrayidx499.us.i, align 8
  %arrayidx501.us.i = getelementptr inbounds ptr, ptr %140, i64 %indvars.iv822.i
  %141 = load ptr, ptr %arrayidx501.us.i, align 8
  %arrayidx503.us.i = getelementptr inbounds i32, ptr %141, i64 %indvars.iv818.i
  store i32 32, ptr %arrayidx503.us.i, align 4
  %142 = load ptr, ptr %wp_offset213.i, align 8
  %arrayidx507.us.i = getelementptr inbounds i8, ptr %142, i64 16
  %143 = load ptr, ptr %arrayidx507.us.i, align 8
  %arrayidx509.us.i = getelementptr inbounds ptr, ptr %143, i64 %indvars.iv827.i
  %144 = load ptr, ptr %arrayidx509.us.i, align 8
  %arrayidx511.us.i = getelementptr inbounds i32, ptr %144, i64 %indvars.iv818.i
  store i32 0, ptr %arrayidx511.us.i, align 4
  %145 = load ptr, ptr %wp_offset213.i, align 8
  %arrayidx515.us.i = getelementptr inbounds i8, ptr %145, i64 24
  br label %for.inc524.us.sink.split.i

if.then381.us.i:                                  ; preds = %lor.lhs.false371.us.i, %lor.lhs.false361.us.i, %if.then342.us.i
  %146 = load ptr, ptr %wbp_weight150.i, align 8
  %arrayidx385.us.i = getelementptr inbounds i8, ptr %146, i64 16
  %147 = load ptr, ptr %arrayidx385.us.i, align 8
  %arrayidx387.us.i = getelementptr inbounds ptr, ptr %147, i64 %indvars.iv827.i
  %148 = load ptr, ptr %arrayidx387.us.i, align 8
  %arrayidx389.us.i = getelementptr inbounds ptr, ptr %148, i64 %indvars.iv822.i
  %149 = load ptr, ptr %arrayidx389.us.i, align 8
  %arrayidx391.us.i = getelementptr inbounds i32, ptr %149, i64 %indvars.iv818.i
  store i32 32, ptr %arrayidx391.us.i, align 4
  %150 = load ptr, ptr %wbp_weight150.i, align 8
  %arrayidx395.us.i = getelementptr inbounds i8, ptr %150, i64 24
  %151 = load ptr, ptr %arrayidx395.us.i, align 8
  %arrayidx397.us.i = getelementptr inbounds ptr, ptr %151, i64 %indvars.iv827.i
  br label %for.inc524.us.sink.split.i

if.then302.us.i:                                  ; preds = %for.cond254.preheader.us.i
  %152 = load ptr, ptr %wp_weight65.i, align 8
  %153 = load ptr, ptr %152, align 8
  %arrayidx307.us.i = getelementptr inbounds ptr, ptr %153, i64 %idxprom261.us.i
  %154 = load ptr, ptr %arrayidx307.us.i, align 8
  %arrayidx309.us.i = getelementptr inbounds i32, ptr %154, i64 %indvars.iv818.i
  %155 = load i32, ptr %arrayidx309.us.i, align 4
  %156 = load ptr, ptr %wbp_weight150.i, align 8
  %arrayidx313.us.i = getelementptr inbounds i8, ptr %156, i64 16
  %157 = load ptr, ptr %arrayidx313.us.i, align 8
  %arrayidx315.us.i = getelementptr inbounds ptr, ptr %157, i64 %indvars.iv827.i
  %158 = load ptr, ptr %arrayidx315.us.i, align 8
  %arrayidx317.us.i = getelementptr inbounds ptr, ptr %158, i64 %indvars.iv822.i
  %159 = load ptr, ptr %arrayidx317.us.i, align 8
  %arrayidx319.us.i = getelementptr inbounds i32, ptr %159, i64 %indvars.iv818.i
  store i32 %155, ptr %arrayidx319.us.i, align 4
  %160 = load ptr, ptr %wp_weight65.i, align 8
  %arrayidx321.us.i = getelementptr inbounds i8, ptr %160, i64 8
  %161 = load ptr, ptr %arrayidx321.us.i, align 8
  %arrayidx324.us.i = getelementptr inbounds ptr, ptr %161, i64 %idxprom276.us.i
  %162 = load ptr, ptr %arrayidx324.us.i, align 8
  %arrayidx326.us.i = getelementptr inbounds i32, ptr %162, i64 %indvars.iv818.i
  %163 = load i32, ptr %arrayidx326.us.i, align 4
  %164 = load ptr, ptr %wbp_weight150.i, align 8
  %arrayidx330.us.i = getelementptr inbounds i8, ptr %164, i64 24
  %165 = load ptr, ptr %arrayidx330.us.i, align 8
  %arrayidx332.us.i = getelementptr inbounds ptr, ptr %165, i64 %indvars.iv827.i
  br label %for.inc524.us.sink.split.i

for.inc524.us.sink.split.i:                       ; preds = %if.then302.us.i, %if.then381.us.i, %if.then483.us.i
  %arrayidx332.us.sink.i = phi ptr [ %arrayidx332.us.i, %if.then302.us.i ], [ %arrayidx397.us.i, %if.then381.us.i ], [ %arrayidx515.us.i, %if.then483.us.i ]
  %.sink849.i = phi i32 [ %163, %if.then302.us.i ], [ 32, %if.then381.us.i ], [ 0, %if.then483.us.i ]
  %166 = load ptr, ptr %arrayidx332.us.sink.i, align 8
  %arrayidx334.us.i = getelementptr inbounds ptr, ptr %166, i64 %indvars.iv822.i
  %167 = load ptr, ptr %arrayidx334.us.i, align 8
  %arrayidx336.us.i = getelementptr inbounds i32, ptr %167, i64 %indvars.iv818.i
  store i32 %.sink849.i, ptr %arrayidx336.us.i, align 4
  br label %for.inc524.us.i

for.inc524.us.i:                                  ; preds = %for.cond254.preheader.us.i, %for.inc524.us.sink.split.i, %if.else402.us.i
  %168 = load ptr, ptr %wp_offset213.i, align 8
  %169 = load ptr, ptr %168, align 8
  %arrayidx262.us.1.i = getelementptr inbounds ptr, ptr %169, i64 %idxprom261.us.i
  %170 = load ptr, ptr %arrayidx262.us.1.i, align 8
  %arrayidx264.us.1.i = getelementptr inbounds i32, ptr %170, i64 %indvars.iv818.i
  %171 = load i32, ptr %arrayidx264.us.1.i, align 4
  %arrayidx268.us.1.i = getelementptr inbounds i8, ptr %168, i64 32
  %172 = load ptr, ptr %arrayidx268.us.1.i, align 8
  %arrayidx270.us.1.i = getelementptr inbounds ptr, ptr %172, i64 %indvars.iv827.i
  %173 = load ptr, ptr %arrayidx270.us.1.i, align 8
  %arrayidx272.us.1.i = getelementptr inbounds i32, ptr %173, i64 %indvars.iv818.i
  store i32 %171, ptr %arrayidx272.us.1.i, align 4
  %174 = load ptr, ptr %wp_offset213.i, align 8
  %arrayidx274.us.1.i = getelementptr inbounds i8, ptr %174, i64 8
  %175 = load ptr, ptr %arrayidx274.us.1.i, align 8
  %arrayidx277.us.1.i = getelementptr inbounds ptr, ptr %175, i64 %idxprom276.us.i
  %176 = load ptr, ptr %arrayidx277.us.1.i, align 8
  %arrayidx279.us.1.i = getelementptr inbounds i32, ptr %176, i64 %indvars.iv818.i
  %177 = load i32, ptr %arrayidx279.us.1.i, align 4
  %arrayidx283.us.1.i = getelementptr inbounds i8, ptr %174, i64 40
  %178 = load ptr, ptr %arrayidx283.us.1.i, align 8
  %arrayidx285.us.1.i = getelementptr inbounds ptr, ptr %178, i64 %indvars.iv822.i
  %179 = load ptr, ptr %arrayidx285.us.1.i, align 8
  %arrayidx287.us.1.i = getelementptr inbounds i32, ptr %179, i64 %indvars.iv818.i
  store i32 %177, ptr %arrayidx287.us.1.i, align 4
  %180 = load ptr, ptr %active_pps, align 8
  %weighted_bipred_idc299.us.1.i = getelementptr inbounds i8, ptr %180, i64 2180
  %181 = load i32, ptr %weighted_bipred_idc299.us.1.i, align 4
  switch i32 %181, label %for.inc524.us.1.i [
    i32 1, label %if.then302.us.1.i
    i32 2, label %if.then342.us.1.i
  ]

if.then342.us.1.i:                                ; preds = %for.inc524.us.i
  %182 = load ptr, ptr %arrayidx346.us.1.i, align 8
  %arrayidx348.us.1.i = getelementptr inbounds ptr, ptr %182, i64 %indvars.iv822.i
  %183 = load ptr, ptr %arrayidx348.us.1.i, align 8
  %poc349.us.1.i = getelementptr inbounds i8, ptr %183, i64 4
  %184 = load i32, ptr %poc349.us.1.i, align 4
  %185 = load ptr, ptr %arrayidx353.us.1.i, align 8
  %arrayidx355.us.1.i = getelementptr inbounds ptr, ptr %185, i64 %indvars.iv827.i
  %186 = load ptr, ptr %arrayidx355.us.1.i, align 8
  %poc356.us.1.i = getelementptr inbounds i8, ptr %186, i64 4
  %187 = load i32, ptr %poc356.us.1.i, align 4
  %sub357.us.1.i = sub nsw i32 %184, %187
  %cond.i.i773.us.1.i = tail call noundef i32 @llvm.smax.i32(i32 %sub357.us.1.i, i32 -128)
  %cond.i4.i774.us.1.i = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i773.us.1.i, i32 127)
  %cmp359.us.1.i = icmp eq i32 %184, %187
  br i1 %cmp359.us.1.i, label %if.then381.us.1.i, label %lor.lhs.false361.us.1.i

lor.lhs.false361.us.1.i:                          ; preds = %if.then342.us.1.i
  %is_long_term368.us.1.i = getelementptr inbounds i8, ptr %183, i64 40
  %188 = load i8, ptr %is_long_term368.us.1.i, align 8
  %tobool370.not.us.1.i = icmp eq i8 %188, 0
  br i1 %tobool370.not.us.1.i, label %lor.lhs.false371.us.1.i, label %if.then381.us.1.i

lor.lhs.false371.us.1.i:                          ; preds = %lor.lhs.false361.us.1.i
  %is_long_term378.us.1.i = getelementptr inbounds i8, ptr %186, i64 40
  %189 = load i8, ptr %is_long_term378.us.1.i, align 8
  %tobool380.not.us.1.i = icmp eq i8 %189, 0
  br i1 %tobool380.not.us.1.i, label %if.else402.us.1.i, label %if.then381.us.1.i

if.else402.us.1.i:                                ; preds = %lor.lhs.false371.us.1.i
  %cond408.us.1.i = load i32, ptr %cond408.in.us.1.i, align 4
  %sub416.us.1.i = sub nsw i32 %cond408.us.1.i, %187
  %cond.i.i775.us.1.i = tail call noundef i32 @llvm.smax.i32(i32 %sub416.us.1.i, i32 -128)
  %cond.i4.i776.us.1.i = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i775.us.1.i, i32 127)
  %div418.lhs.trunc.us.1.i = trunc nsw i32 %cond.i4.i774.us.1.i to i8
  %div418782.us.1.i = sdiv i8 %div418.lhs.trunc.us.1.i, 2
  %190 = tail call i8 @llvm.abs.i8(i8 %div418782.us.1.i, i1 true)
  %sub.i777.us.1.i = zext nneg i8 %190 to i16
  %add420.us.1.i = or disjoint i16 %sub.i777.us.1.i, 16384
  %div421.rhs.trunc.us.1.i = trunc nsw i32 %cond.i4.i774.us.1.i to i16
  %div421783.us.1.i = sdiv i16 %add420.us.1.i, %div421.rhs.trunc.us.1.i
  %div421.sext.us.1.i = sext i16 %div421783.us.1.i to i32
  %mul422.us.1.i = mul nsw i32 %cond.i4.i776.us.1.i, %div421.sext.us.1.i
  %add423.us.1.i = add nsw i32 %mul422.us.1.i, 32
  %shr424.us.1.i = ashr i32 %add423.us.1.i, 6
  %cond.i.i778.us.1.i = tail call noundef i32 @llvm.smax.i32(i32 %shr424.us.1.i, i32 -1024)
  %cond.i4.i779.us.1.i = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i778.us.1.i, i32 1023)
  %shr426.us.1.i = ashr i32 %cond.i4.i779.us.1.i, 2
  %191 = load ptr, ptr %wbp_weight150.i, align 8
  %arrayidx430.us.1.i = getelementptr inbounds i8, ptr %191, i64 40
  %192 = load ptr, ptr %arrayidx430.us.1.i, align 8
  %arrayidx432.us.1.i = getelementptr inbounds ptr, ptr %192, i64 %indvars.iv827.i
  %193 = load ptr, ptr %arrayidx432.us.1.i, align 8
  %arrayidx434.us.1.i = getelementptr inbounds ptr, ptr %193, i64 %indvars.iv822.i
  %194 = load ptr, ptr %arrayidx434.us.1.i, align 8
  %arrayidx436.us.1.i = getelementptr inbounds i32, ptr %194, i64 %indvars.iv818.i
  store i32 %shr426.us.1.i, ptr %arrayidx436.us.1.i, align 4
  %195 = load ptr, ptr %wbp_weight150.i, align 8
  %arrayidx440.us.1.i = getelementptr inbounds i8, ptr %195, i64 40
  %196 = load ptr, ptr %arrayidx440.us.1.i, align 8
  %arrayidx442.us.1.i = getelementptr inbounds ptr, ptr %196, i64 %indvars.iv827.i
  %197 = load ptr, ptr %arrayidx442.us.1.i, align 8
  %arrayidx444.us.1.i = getelementptr inbounds ptr, ptr %197, i64 %indvars.iv822.i
  %198 = load ptr, ptr %arrayidx444.us.1.i, align 8
  %arrayidx446.us.1.i = getelementptr inbounds i32, ptr %198, i64 %indvars.iv818.i
  %199 = load i32, ptr %arrayidx446.us.1.i, align 4
  %sub447.us.1.i = sub nsw i32 64, %199
  %arrayidx451.us.1.i = getelementptr inbounds i8, ptr %195, i64 32
  %200 = load ptr, ptr %arrayidx451.us.1.i, align 8
  %arrayidx453.us.1.i = getelementptr inbounds ptr, ptr %200, i64 %indvars.iv827.i
  %201 = load ptr, ptr %arrayidx453.us.1.i, align 8
  %arrayidx455.us.1.i = getelementptr inbounds ptr, ptr %201, i64 %indvars.iv822.i
  %202 = load ptr, ptr %arrayidx455.us.1.i, align 8
  %arrayidx457.us.1.i = getelementptr inbounds i32, ptr %202, i64 %indvars.iv818.i
  store i32 %sub447.us.1.i, ptr %arrayidx457.us.1.i, align 4
  %203 = load ptr, ptr %wbp_weight150.i, align 8
  %arrayidx461.us.1.i = getelementptr inbounds i8, ptr %203, i64 40
  %204 = load ptr, ptr %arrayidx461.us.1.i, align 8
  %arrayidx463.us.1.i = getelementptr inbounds ptr, ptr %204, i64 %indvars.iv827.i
  %205 = load ptr, ptr %arrayidx463.us.1.i, align 8
  %arrayidx465.us.1.i = getelementptr inbounds ptr, ptr %205, i64 %indvars.iv822.i
  %206 = load ptr, ptr %arrayidx465.us.1.i, align 8
  %arrayidx467.us.1.i = getelementptr inbounds i32, ptr %206, i64 %indvars.iv818.i
  %207 = load i32, ptr %arrayidx467.us.1.i, align 4
  %208 = add i32 %207, -129
  %or.cond768.us.1.i = icmp ult i32 %208, -193
  br i1 %or.cond768.us.1.i, label %if.then483.us.1.i, label %for.inc524.us.1.i

if.then483.us.1.i:                                ; preds = %if.else402.us.1.i
  store i32 32, ptr %arrayidx467.us.1.i, align 4
  %209 = load ptr, ptr %wbp_weight150.i, align 8
  %arrayidx497.us.1.i = getelementptr inbounds i8, ptr %209, i64 32
  %210 = load ptr, ptr %arrayidx497.us.1.i, align 8
  %arrayidx499.us.1.i = getelementptr inbounds ptr, ptr %210, i64 %indvars.iv827.i
  %211 = load ptr, ptr %arrayidx499.us.1.i, align 8
  %arrayidx501.us.1.i = getelementptr inbounds ptr, ptr %211, i64 %indvars.iv822.i
  %212 = load ptr, ptr %arrayidx501.us.1.i, align 8
  %arrayidx503.us.1.i = getelementptr inbounds i32, ptr %212, i64 %indvars.iv818.i
  store i32 32, ptr %arrayidx503.us.1.i, align 4
  %213 = load ptr, ptr %wp_offset213.i, align 8
  %arrayidx507.us.1.i = getelementptr inbounds i8, ptr %213, i64 32
  %214 = load ptr, ptr %arrayidx507.us.1.i, align 8
  %arrayidx509.us.1.i = getelementptr inbounds ptr, ptr %214, i64 %indvars.iv827.i
  %215 = load ptr, ptr %arrayidx509.us.1.i, align 8
  %arrayidx511.us.1.i = getelementptr inbounds i32, ptr %215, i64 %indvars.iv818.i
  store i32 0, ptr %arrayidx511.us.1.i, align 4
  %216 = load ptr, ptr %wp_offset213.i, align 8
  %arrayidx515.us.1.i = getelementptr inbounds i8, ptr %216, i64 40
  br label %for.inc524.us.1.sink.split.i

if.then381.us.1.i:                                ; preds = %lor.lhs.false371.us.1.i, %lor.lhs.false361.us.1.i, %if.then342.us.1.i
  %217 = load ptr, ptr %wbp_weight150.i, align 8
  %arrayidx385.us.1.i = getelementptr inbounds i8, ptr %217, i64 32
  %218 = load ptr, ptr %arrayidx385.us.1.i, align 8
  %arrayidx387.us.1.i = getelementptr inbounds ptr, ptr %218, i64 %indvars.iv827.i
  %219 = load ptr, ptr %arrayidx387.us.1.i, align 8
  %arrayidx389.us.1.i = getelementptr inbounds ptr, ptr %219, i64 %indvars.iv822.i
  %220 = load ptr, ptr %arrayidx389.us.1.i, align 8
  %arrayidx391.us.1.i = getelementptr inbounds i32, ptr %220, i64 %indvars.iv818.i
  store i32 32, ptr %arrayidx391.us.1.i, align 4
  %221 = load ptr, ptr %wbp_weight150.i, align 8
  %arrayidx395.us.1.i = getelementptr inbounds i8, ptr %221, i64 40
  %222 = load ptr, ptr %arrayidx395.us.1.i, align 8
  %arrayidx397.us.1.i = getelementptr inbounds ptr, ptr %222, i64 %indvars.iv827.i
  br label %for.inc524.us.1.sink.split.i

if.then302.us.1.i:                                ; preds = %for.inc524.us.i
  %223 = load ptr, ptr %wp_weight65.i, align 8
  %224 = load ptr, ptr %223, align 8
  %arrayidx307.us.1.i = getelementptr inbounds ptr, ptr %224, i64 %idxprom261.us.i
  %225 = load ptr, ptr %arrayidx307.us.1.i, align 8
  %arrayidx309.us.1.i = getelementptr inbounds i32, ptr %225, i64 %indvars.iv818.i
  %226 = load i32, ptr %arrayidx309.us.1.i, align 4
  %227 = load ptr, ptr %wbp_weight150.i, align 8
  %arrayidx313.us.1.i = getelementptr inbounds i8, ptr %227, i64 32
  %228 = load ptr, ptr %arrayidx313.us.1.i, align 8
  %arrayidx315.us.1.i = getelementptr inbounds ptr, ptr %228, i64 %indvars.iv827.i
  %229 = load ptr, ptr %arrayidx315.us.1.i, align 8
  %arrayidx317.us.1.i = getelementptr inbounds ptr, ptr %229, i64 %indvars.iv822.i
  %230 = load ptr, ptr %arrayidx317.us.1.i, align 8
  %arrayidx319.us.1.i = getelementptr inbounds i32, ptr %230, i64 %indvars.iv818.i
  store i32 %226, ptr %arrayidx319.us.1.i, align 4
  %231 = load ptr, ptr %wp_weight65.i, align 8
  %arrayidx321.us.1.i = getelementptr inbounds i8, ptr %231, i64 8
  %232 = load ptr, ptr %arrayidx321.us.1.i, align 8
  %arrayidx324.us.1.i = getelementptr inbounds ptr, ptr %232, i64 %idxprom276.us.i
  %233 = load ptr, ptr %arrayidx324.us.1.i, align 8
  %arrayidx326.us.1.i = getelementptr inbounds i32, ptr %233, i64 %indvars.iv818.i
  %234 = load i32, ptr %arrayidx326.us.1.i, align 4
  %235 = load ptr, ptr %wbp_weight150.i, align 8
  %arrayidx330.us.1.i = getelementptr inbounds i8, ptr %235, i64 40
  %236 = load ptr, ptr %arrayidx330.us.1.i, align 8
  %arrayidx332.us.1.i = getelementptr inbounds ptr, ptr %236, i64 %indvars.iv827.i
  br label %for.inc524.us.1.sink.split.i

for.inc524.us.1.sink.split.i:                     ; preds = %if.then302.us.1.i, %if.then381.us.1.i, %if.then483.us.1.i
  %arrayidx332.us.1.sink.i = phi ptr [ %arrayidx332.us.1.i, %if.then302.us.1.i ], [ %arrayidx397.us.1.i, %if.then381.us.1.i ], [ %arrayidx515.us.1.i, %if.then483.us.1.i ]
  %.sink852.i = phi i32 [ %234, %if.then302.us.1.i ], [ 32, %if.then381.us.1.i ], [ 0, %if.then483.us.1.i ]
  %237 = load ptr, ptr %arrayidx332.us.1.sink.i, align 8
  %arrayidx334.us.1.i = getelementptr inbounds ptr, ptr %237, i64 %indvars.iv822.i
  %238 = load ptr, ptr %arrayidx334.us.1.i, align 8
  %arrayidx336.us.1.i = getelementptr inbounds i32, ptr %238, i64 %indvars.iv818.i
  store i32 %.sink852.i, ptr %arrayidx336.us.1.i, align 4
  br label %for.inc524.us.1.i

for.inc524.us.1.i:                                ; preds = %for.inc524.us.1.sink.split.i, %if.else402.us.1.i, %for.inc524.us.i
  %indvars.iv.next819.i = add nuw nsw i64 %indvars.iv818.i, 1
  %exitcond821.not.i = icmp eq i64 %indvars.iv.next819.i, 3
  br i1 %exitcond821.not.i, label %for.inc530.us.i, label %for.cond254.preheader.us.i

for.cond254.preheader.us.i:                       ; preds = %for.cond250.preheader.us.i, %for.inc524.us.1.i
  %indvars.iv818.i = phi i64 [ 0, %for.cond250.preheader.us.i ], [ %indvars.iv.next819.i, %for.inc524.us.1.i ]
  %239 = load ptr, ptr %wp_offset213.i, align 8
  %240 = load ptr, ptr %239, align 8
  %arrayidx262.us.i = getelementptr inbounds ptr, ptr %240, i64 %idxprom261.us.i
  %241 = load ptr, ptr %arrayidx262.us.i, align 8
  %arrayidx264.us.i = getelementptr inbounds i32, ptr %241, i64 %indvars.iv818.i
  %242 = load i32, ptr %arrayidx264.us.i, align 4
  %arrayidx268.us.i = getelementptr inbounds i8, ptr %239, i64 16
  %243 = load ptr, ptr %arrayidx268.us.i, align 8
  %arrayidx270.us.i = getelementptr inbounds ptr, ptr %243, i64 %indvars.iv827.i
  %244 = load ptr, ptr %arrayidx270.us.i, align 8
  %arrayidx272.us.i = getelementptr inbounds i32, ptr %244, i64 %indvars.iv818.i
  store i32 %242, ptr %arrayidx272.us.i, align 4
  %245 = load ptr, ptr %wp_offset213.i, align 8
  %arrayidx274.us.i = getelementptr inbounds i8, ptr %245, i64 8
  %246 = load ptr, ptr %arrayidx274.us.i, align 8
  %arrayidx277.us.i = getelementptr inbounds ptr, ptr %246, i64 %idxprom276.us.i
  %247 = load ptr, ptr %arrayidx277.us.i, align 8
  %arrayidx279.us.i = getelementptr inbounds i32, ptr %247, i64 %indvars.iv818.i
  %248 = load i32, ptr %arrayidx279.us.i, align 4
  %arrayidx283.us.i = getelementptr inbounds i8, ptr %245, i64 24
  %249 = load ptr, ptr %arrayidx283.us.i, align 8
  %arrayidx285.us.i = getelementptr inbounds ptr, ptr %249, i64 %indvars.iv822.i
  %250 = load ptr, ptr %arrayidx285.us.i, align 8
  %arrayidx287.us.i = getelementptr inbounds i32, ptr %250, i64 %indvars.iv818.i
  store i32 %248, ptr %arrayidx287.us.i, align 4
  %251 = load ptr, ptr %active_pps, align 8
  %weighted_bipred_idc299.us.i = getelementptr inbounds i8, ptr %251, i64 2180
  %252 = load i32, ptr %weighted_bipred_idc299.us.i, align 4
  switch i32 %252, label %for.inc524.us.i [
    i32 1, label %if.then302.us.i
    i32 2, label %if.then342.us.i
  ]

for.cond250.preheader.us.i:                       ; preds = %for.inc530.us.i, %for.cond245.preheader.us.i
  %indvars.iv822.i = phi i64 [ 0, %for.cond245.preheader.us.i ], [ %indvars.iv.next823.i, %for.inc530.us.i ]
  %shr275.us.i = lshr i64 %indvars.iv822.i, 1
  %idxprom276.us.i = and i64 %shr275.us.i, 2147483647
  br label %for.cond254.preheader.us.i

for.cond245.for.inc533_crit_edge.us.i:            ; preds = %for.inc530.us.i
  %indvars.iv.next828.i = add nuw nsw i64 %indvars.iv827.i, 1
  %exitcond832.not.i = icmp eq i64 %indvars.iv.next828.i, %wide.trip.count831.i
  br i1 %exitcond832.not.i, label %if.end10, label %for.cond245.preheader.us.i

if.end10:                                         ; preds = %for.cond245.for.inc533_crit_edge.us.i, %land.lhs.true6, %for.end237.i, %for.cond42.preheader.lr.ph.i, %if.end.i, %lor.lhs.false
  %253 = and i32 %current_header, -2
  %or.cond = icmp eq i32 %253, 2
  br i1 %or.cond, label %land.lhs.true14, label %if.end17

land.lhs.true14:                                  ; preds = %if.end10
  %ei_flag = getelementptr inbounds i8, ptr %currSlice, i64 144
  %254 = load i32, ptr %ei_flag, align 8
  %cmp15 = icmp eq i32 %254, 0
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %land.lhs.true14
  tail call void @decode_one_slice(ptr noundef nonnull %currSlice)
  br label %if.end17

if.end17:                                         ; preds = %if.end10, %if.then16, %land.lhs.true14
  %iDeblockMode = getelementptr inbounds i8, ptr %0, i64 856824
  %255 = load i32, ptr %iDeblockMode, align 8
  %tobool18.not = icmp eq i32 %255, 0
  br i1 %tobool18.not, label %if.end32, label %land.lhs.true19

land.lhs.true19:                                  ; preds = %if.end17
  %bDeblockEnable = getelementptr inbounds i8, ptr %0, i64 856856
  %256 = load i32, ptr %bDeblockEnable, align 8
  %dec_picture = getelementptr inbounds i8, ptr %0, i64 856456
  %257 = load ptr, ptr %dec_picture, align 8
  %used_for_reference = getelementptr inbounds i8, ptr %257, i64 44
  %258 = load i32, ptr %used_for_reference, align 4
  %shl = shl nuw i32 1, %258
  %and = and i32 %shl, %256
  %tobool20.not = icmp eq i32 %and, 0
  br i1 %tobool20.not, label %if.end32, label %if.then21

if.then21:                                        ; preds = %land.lhs.true19
  %separate_colour_plane_flag = getelementptr inbounds i8, ptr %0, i64 849280
  %259 = load i32, ptr %separate_colour_plane_flag, align 8
  %cmp22.not = icmp eq i32 %259, 0
  br i1 %cmp22.not, label %if.end32.sink.split, label %if.then23

if.then23:                                        ; preds = %if.then21
  %colour_plane_id = getelementptr inbounds i8, ptr %currSlice, i64 216
  %260 = load i32, ptr %colour_plane_id, align 8
  tail call void @change_plane_JV(ptr noundef nonnull %0, i32 noundef %260, ptr noundef nonnull %currSlice) #27
  br label %if.end32.sink.split

if.end32.sink.split:                              ; preds = %if.then21, %if.then23
  %dec_picture24 = getelementptr inbounds i8, ptr %currSlice, i64 13520
  %261 = load ptr, ptr %dec_picture24, align 8
  %start_mb_nr = getelementptr inbounds i8, ptr %currSlice, i64 188
  %262 = load i32, ptr %start_mb_nr, align 4
  %mul = mul nsw i32 %262, %add
  %end_mb_nr_plus1 = getelementptr inbounds i8, ptr %currSlice, i64 192
  %263 = load i32, ptr %end_mb_nr_plus1, align 8
  %mul25 = mul nsw i32 %263, %add
  tail call void @DeblockPicturePartially(ptr noundef nonnull %0, ptr noundef %261, i32 noundef %mul, i32 noundef %mul25) #27
  br label %if.end32

if.end32:                                         ; preds = %if.end32.sink.split, %land.lhs.true19, %if.end17
  ret void
}

declare void @init_contexts(ptr noundef) local_unnamed_addr #3

declare void @cabac_new_slice(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @decode_one_slice(ptr noundef %currSlice) local_unnamed_addr #2 {
entry:
  %currMB = alloca ptr, align 8
  %0 = load ptr, ptr %currSlice, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %currMB) #27
  store ptr null, ptr %currMB, align 8
  %cod_counter = getelementptr inbounds i8, ptr %currSlice, i64 120
  store i32 -1, ptr %cod_counter, align 8
  %separate_colour_plane_flag = getelementptr inbounds i8, ptr %0, i64 849280
  %1 = load i32, ptr %separate_colour_plane_flag, align 8
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %colour_plane_id = getelementptr inbounds i8, ptr %currSlice, i64 216
  %2 = load i32, ptr %colour_plane_id, align 8
  tail call void @change_plane_JV(ptr noundef nonnull %0, i32 noundef %2, ptr noundef nonnull %currSlice) #27
  br label %if.end

if.else:                                          ; preds = %entry
  %mb_data = getelementptr inbounds i8, ptr %0, i64 848888
  %3 = load ptr, ptr %mb_data, align 8
  %mb_data2 = getelementptr inbounds i8, ptr %currSlice, i64 13512
  store ptr %3, ptr %mb_data2, align 8
  %dec_picture = getelementptr inbounds i8, ptr %0, i64 856456
  %4 = load ptr, ptr %dec_picture, align 8
  %dec_picture3 = getelementptr inbounds i8, ptr %currSlice, i64 13520
  store ptr %4, ptr %dec_picture3, align 8
  %siblock = getelementptr inbounds i8, ptr %0, i64 848840
  %5 = load ptr, ptr %siblock, align 8
  %siblock4 = getelementptr inbounds i8, ptr %currSlice, i64 13528
  store ptr %5, ptr %siblock4, align 8
  %ipredmode = getelementptr inbounds i8, ptr %0, i64 848800
  %6 = load ptr, ptr %ipredmode, align 8
  %ipredmode5 = getelementptr inbounds i8, ptr %currSlice, i64 13536
  store ptr %6, ptr %ipredmode5, align 8
  %intra_block = getelementptr inbounds i8, ptr %0, i64 848744
  %7 = load ptr, ptr %intra_block, align 8
  %intra_block6 = getelementptr inbounds i8, ptr %currSlice, i64 13544
  store ptr %7, ptr %intra_block6, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %slice_type = getelementptr inbounds i8, ptr %currSlice, i64 164
  %8 = load i32, ptr %slice_type, align 4
  %cmp7 = icmp eq i32 %8, 1
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end
  %listX = getelementptr inbounds i8, ptr %currSlice, i64 264
  tail call void @compute_colocated(ptr noundef nonnull %currSlice, ptr noundef nonnull %listX) #27
  %.pr = load i32, ptr %slice_type, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end
  %9 = phi i32 [ %.pr, %if.then8 ], [ %8, %if.end ]
  switch i32 %9, label %if.then14 [
    i32 2, label %if.end15
    i32 4, label %if.end15
  ]

if.then14:                                        ; preds = %if.end9
  %10 = load i32, ptr %separate_colour_plane_flag, align 8
  %cmp.not.i = icmp eq i32 %10, 0
  %no_reference_picture18.i = getelementptr inbounds i8, ptr %0, i64 856488
  %11 = load ptr, ptr %no_reference_picture18.i, align 8
  %framepoc20.i = getelementptr inbounds i8, ptr %currSlice, i64 76
  %12 = load i32, ptr %framepoc20.i, align 4
  %recovery_poc21.i = getelementptr inbounds i8, ptr %0, i64 849276
  %13 = load i32, ptr %recovery_poc21.i, align 4
  %cmp22.i = icmp slt i32 %12, %13
  br i1 %cmp.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then14
  %colour_plane_id.i = getelementptr inbounds i8, ptr %currSlice, i64 216
  %14 = load i32, ptr %colour_plane_id.i, align 8
  %cond61.i = icmp eq i32 %14, 0
  br i1 %cond61.i, label %for.cond.preheader.i, label %if.end15

for.cond.preheader.i:                             ; preds = %if.then.i
  %listX.i = getelementptr inbounds i8, ptr %currSlice, i64 264
  br label %for.body7.i

for.body7.i:                                      ; preds = %if.end.i.1, %for.cond.preheader.i
  %indvars.iv.i = phi i64 [ 0, %for.cond.preheader.i ], [ %indvars.iv.next.i.1, %if.end.i.1 ]
  %15 = load ptr, ptr %listX.i, align 8
  %arrayidx9.i = getelementptr inbounds ptr, ptr %15, i64 %indvars.iv.i
  %16 = load ptr, ptr %arrayidx9.i, align 8
  %tobool.not.i = icmp eq ptr %16, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then10.i

if.then10.i:                                      ; preds = %for.body7.i
  %cmp12.i = icmp eq ptr %16, %11
  %17 = select i1 %cmp22.i, i1 %cmp12.i, i1 false
  %land.ext.i = zext i1 %17 to i32
  %no_ref.i = getelementptr inbounds i8, ptr %16, i64 384
  store i32 %land.ext.i, ptr %no_ref.i, align 8
  %imgY.i = getelementptr inbounds i8, ptr %16, i64 128
  %18 = load ptr, ptr %imgY.i, align 8
  %cur_imgY.i = getelementptr inbounds i8, ptr %16, i64 376
  store ptr %18, ptr %cur_imgY.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then10.i, %for.body7.i
  %exitcond.not.i = icmp eq i64 %indvars.iv.i, 32
  br i1 %exitcond.not.i, label %for.inc14.i, label %for.body7.i.1

for.body7.i.1:                                    ; preds = %if.end.i
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1
  %19 = load ptr, ptr %listX.i, align 8
  %arrayidx9.i.1 = getelementptr inbounds ptr, ptr %19, i64 %indvars.iv.next.i
  %20 = load ptr, ptr %arrayidx9.i.1, align 8
  %tobool.not.i.1 = icmp eq ptr %20, null
  br i1 %tobool.not.i.1, label %if.end.i.1, label %if.then10.i.1

if.then10.i.1:                                    ; preds = %for.body7.i.1
  %cmp12.i.1 = icmp eq ptr %20, %11
  %21 = select i1 %cmp22.i, i1 %cmp12.i.1, i1 false
  %land.ext.i.1 = zext i1 %21 to i32
  %no_ref.i.1 = getelementptr inbounds i8, ptr %20, i64 384
  store i32 %land.ext.i.1, ptr %no_ref.i.1, align 8
  %imgY.i.1 = getelementptr inbounds i8, ptr %20, i64 128
  %22 = load ptr, ptr %imgY.i.1, align 8
  %cur_imgY.i.1 = getelementptr inbounds i8, ptr %20, i64 376
  store ptr %22, ptr %cur_imgY.i.1, align 8
  br label %if.end.i.1

if.end.i.1:                                       ; preds = %if.then10.i.1, %for.body7.i.1
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2
  br label %for.body7.i

for.inc14.i:                                      ; preds = %if.end.i
  %arrayidx.1.i = getelementptr inbounds i8, ptr %currSlice, i64 272
  br label %for.body7.1.i

for.body7.1.i:                                    ; preds = %if.end.1.i.1, %for.inc14.i
  %indvars.iv.1.i = phi i64 [ 0, %for.inc14.i ], [ %indvars.iv.next.1.i.1, %if.end.1.i.1 ]
  %23 = load ptr, ptr %arrayidx.1.i, align 8
  %arrayidx9.1.i = getelementptr inbounds ptr, ptr %23, i64 %indvars.iv.1.i
  %24 = load ptr, ptr %arrayidx9.1.i, align 8
  %tobool.not.1.i = icmp eq ptr %24, null
  br i1 %tobool.not.1.i, label %if.end.1.i, label %if.then10.1.i

if.then10.1.i:                                    ; preds = %for.body7.1.i
  %cmp12.1.i = icmp eq ptr %24, %11
  %25 = select i1 %cmp22.i, i1 %cmp12.1.i, i1 false
  %land.ext.1.i = zext i1 %25 to i32
  %no_ref.1.i = getelementptr inbounds i8, ptr %24, i64 384
  store i32 %land.ext.1.i, ptr %no_ref.1.i, align 8
  %imgY.1.i = getelementptr inbounds i8, ptr %24, i64 128
  %26 = load ptr, ptr %imgY.1.i, align 8
  %cur_imgY.1.i = getelementptr inbounds i8, ptr %24, i64 376
  store ptr %26, ptr %cur_imgY.1.i, align 8
  br label %if.end.1.i

if.end.1.i:                                       ; preds = %if.then10.1.i, %for.body7.1.i
  %exitcond.1.not.i = icmp eq i64 %indvars.iv.1.i, 32
  br i1 %exitcond.1.not.i, label %for.inc14.1.i, label %for.body7.1.i.1

for.body7.1.i.1:                                  ; preds = %if.end.1.i
  %indvars.iv.next.1.i = or disjoint i64 %indvars.iv.1.i, 1
  %27 = load ptr, ptr %arrayidx.1.i, align 8
  %arrayidx9.1.i.1 = getelementptr inbounds ptr, ptr %27, i64 %indvars.iv.next.1.i
  %28 = load ptr, ptr %arrayidx9.1.i.1, align 8
  %tobool.not.1.i.1 = icmp eq ptr %28, null
  br i1 %tobool.not.1.i.1, label %if.end.1.i.1, label %if.then10.1.i.1

if.then10.1.i.1:                                  ; preds = %for.body7.1.i.1
  %cmp12.1.i.1 = icmp eq ptr %28, %11
  %29 = select i1 %cmp22.i, i1 %cmp12.1.i.1, i1 false
  %land.ext.1.i.1 = zext i1 %29 to i32
  %no_ref.1.i.1 = getelementptr inbounds i8, ptr %28, i64 384
  store i32 %land.ext.1.i.1, ptr %no_ref.1.i.1, align 8
  %imgY.1.i.1 = getelementptr inbounds i8, ptr %28, i64 128
  %30 = load ptr, ptr %imgY.1.i.1, align 8
  %cur_imgY.1.i.1 = getelementptr inbounds i8, ptr %28, i64 376
  store ptr %30, ptr %cur_imgY.1.i.1, align 8
  br label %if.end.1.i.1

if.end.1.i.1:                                     ; preds = %if.then10.1.i.1, %for.body7.1.i.1
  %indvars.iv.next.1.i.1 = add nuw nsw i64 %indvars.iv.1.i, 2
  br label %for.body7.1.i

for.inc14.1.i:                                    ; preds = %if.end.1.i
  %arrayidx.2.i = getelementptr inbounds i8, ptr %currSlice, i64 280
  br label %for.body7.2.i

for.body7.2.i:                                    ; preds = %if.end.2.i.1, %for.inc14.1.i
  %indvars.iv.2.i = phi i64 [ 0, %for.inc14.1.i ], [ %indvars.iv.next.2.i.1, %if.end.2.i.1 ]
  %31 = load ptr, ptr %arrayidx.2.i, align 8
  %arrayidx9.2.i = getelementptr inbounds ptr, ptr %31, i64 %indvars.iv.2.i
  %32 = load ptr, ptr %arrayidx9.2.i, align 8
  %tobool.not.2.i = icmp eq ptr %32, null
  br i1 %tobool.not.2.i, label %if.end.2.i, label %if.then10.2.i

if.then10.2.i:                                    ; preds = %for.body7.2.i
  %cmp12.2.i = icmp eq ptr %32, %11
  %33 = select i1 %cmp22.i, i1 %cmp12.2.i, i1 false
  %land.ext.2.i = zext i1 %33 to i32
  %no_ref.2.i = getelementptr inbounds i8, ptr %32, i64 384
  store i32 %land.ext.2.i, ptr %no_ref.2.i, align 8
  %imgY.2.i = getelementptr inbounds i8, ptr %32, i64 128
  %34 = load ptr, ptr %imgY.2.i, align 8
  %cur_imgY.2.i = getelementptr inbounds i8, ptr %32, i64 376
  store ptr %34, ptr %cur_imgY.2.i, align 8
  br label %if.end.2.i

if.end.2.i:                                       ; preds = %if.then10.2.i, %for.body7.2.i
  %exitcond.2.not.i = icmp eq i64 %indvars.iv.2.i, 32
  br i1 %exitcond.2.not.i, label %for.inc14.2.i, label %for.body7.2.i.1

for.body7.2.i.1:                                  ; preds = %if.end.2.i
  %indvars.iv.next.2.i = or disjoint i64 %indvars.iv.2.i, 1
  %35 = load ptr, ptr %arrayidx.2.i, align 8
  %arrayidx9.2.i.1 = getelementptr inbounds ptr, ptr %35, i64 %indvars.iv.next.2.i
  %36 = load ptr, ptr %arrayidx9.2.i.1, align 8
  %tobool.not.2.i.1 = icmp eq ptr %36, null
  br i1 %tobool.not.2.i.1, label %if.end.2.i.1, label %if.then10.2.i.1

if.then10.2.i.1:                                  ; preds = %for.body7.2.i.1
  %cmp12.2.i.1 = icmp eq ptr %36, %11
  %37 = select i1 %cmp22.i, i1 %cmp12.2.i.1, i1 false
  %land.ext.2.i.1 = zext i1 %37 to i32
  %no_ref.2.i.1 = getelementptr inbounds i8, ptr %36, i64 384
  store i32 %land.ext.2.i.1, ptr %no_ref.2.i.1, align 8
  %imgY.2.i.1 = getelementptr inbounds i8, ptr %36, i64 128
  %38 = load ptr, ptr %imgY.2.i.1, align 8
  %cur_imgY.2.i.1 = getelementptr inbounds i8, ptr %36, i64 376
  store ptr %38, ptr %cur_imgY.2.i.1, align 8
  br label %if.end.2.i.1

if.end.2.i.1:                                     ; preds = %if.then10.2.i.1, %for.body7.2.i.1
  %indvars.iv.next.2.i.1 = add nuw nsw i64 %indvars.iv.2.i, 2
  br label %for.body7.2.i

for.inc14.2.i:                                    ; preds = %if.end.2.i
  %arrayidx.3.i = getelementptr inbounds i8, ptr %currSlice, i64 288
  br label %for.body7.3.i

for.body7.3.i:                                    ; preds = %if.end.3.i.1, %for.inc14.2.i
  %indvars.iv.3.i = phi i64 [ 0, %for.inc14.2.i ], [ %indvars.iv.next.3.i.1, %if.end.3.i.1 ]
  %39 = load ptr, ptr %arrayidx.3.i, align 8
  %arrayidx9.3.i = getelementptr inbounds ptr, ptr %39, i64 %indvars.iv.3.i
  %40 = load ptr, ptr %arrayidx9.3.i, align 8
  %tobool.not.3.i = icmp eq ptr %40, null
  br i1 %tobool.not.3.i, label %if.end.3.i, label %if.then10.3.i

if.then10.3.i:                                    ; preds = %for.body7.3.i
  %cmp12.3.i = icmp eq ptr %40, %11
  %41 = select i1 %cmp22.i, i1 %cmp12.3.i, i1 false
  %land.ext.3.i = zext i1 %41 to i32
  %no_ref.3.i = getelementptr inbounds i8, ptr %40, i64 384
  store i32 %land.ext.3.i, ptr %no_ref.3.i, align 8
  %imgY.3.i = getelementptr inbounds i8, ptr %40, i64 128
  %42 = load ptr, ptr %imgY.3.i, align 8
  %cur_imgY.3.i = getelementptr inbounds i8, ptr %40, i64 376
  store ptr %42, ptr %cur_imgY.3.i, align 8
  br label %if.end.3.i

if.end.3.i:                                       ; preds = %if.then10.3.i, %for.body7.3.i
  %exitcond.3.not.i = icmp eq i64 %indvars.iv.3.i, 32
  br i1 %exitcond.3.not.i, label %for.inc14.3.i, label %for.body7.3.i.1

for.body7.3.i.1:                                  ; preds = %if.end.3.i
  %indvars.iv.next.3.i = or disjoint i64 %indvars.iv.3.i, 1
  %43 = load ptr, ptr %arrayidx.3.i, align 8
  %arrayidx9.3.i.1 = getelementptr inbounds ptr, ptr %43, i64 %indvars.iv.next.3.i
  %44 = load ptr, ptr %arrayidx9.3.i.1, align 8
  %tobool.not.3.i.1 = icmp eq ptr %44, null
  br i1 %tobool.not.3.i.1, label %if.end.3.i.1, label %if.then10.3.i.1

if.then10.3.i.1:                                  ; preds = %for.body7.3.i.1
  %cmp12.3.i.1 = icmp eq ptr %44, %11
  %45 = select i1 %cmp22.i, i1 %cmp12.3.i.1, i1 false
  %land.ext.3.i.1 = zext i1 %45 to i32
  %no_ref.3.i.1 = getelementptr inbounds i8, ptr %44, i64 384
  store i32 %land.ext.3.i.1, ptr %no_ref.3.i.1, align 8
  %imgY.3.i.1 = getelementptr inbounds i8, ptr %44, i64 128
  %46 = load ptr, ptr %imgY.3.i.1, align 8
  %cur_imgY.3.i.1 = getelementptr inbounds i8, ptr %44, i64 376
  store ptr %46, ptr %cur_imgY.3.i.1, align 8
  br label %if.end.3.i.1

if.end.3.i.1:                                     ; preds = %if.then10.3.i.1, %for.body7.3.i.1
  %indvars.iv.next.3.i.1 = add nuw nsw i64 %indvars.iv.3.i, 2
  br label %for.body7.3.i

for.inc14.3.i:                                    ; preds = %if.end.3.i
  %arrayidx.4.i = getelementptr inbounds i8, ptr %currSlice, i64 296
  br label %for.body7.4.i

for.body7.4.i:                                    ; preds = %if.end.4.i.1, %for.inc14.3.i
  %indvars.iv.4.i = phi i64 [ 0, %for.inc14.3.i ], [ %indvars.iv.next.4.i.1, %if.end.4.i.1 ]
  %47 = load ptr, ptr %arrayidx.4.i, align 8
  %arrayidx9.4.i = getelementptr inbounds ptr, ptr %47, i64 %indvars.iv.4.i
  %48 = load ptr, ptr %arrayidx9.4.i, align 8
  %tobool.not.4.i = icmp eq ptr %48, null
  br i1 %tobool.not.4.i, label %if.end.4.i, label %if.then10.4.i

if.then10.4.i:                                    ; preds = %for.body7.4.i
  %cmp12.4.i = icmp eq ptr %48, %11
  %49 = select i1 %cmp22.i, i1 %cmp12.4.i, i1 false
  %land.ext.4.i = zext i1 %49 to i32
  %no_ref.4.i = getelementptr inbounds i8, ptr %48, i64 384
  store i32 %land.ext.4.i, ptr %no_ref.4.i, align 8
  %imgY.4.i = getelementptr inbounds i8, ptr %48, i64 128
  %50 = load ptr, ptr %imgY.4.i, align 8
  %cur_imgY.4.i = getelementptr inbounds i8, ptr %48, i64 376
  store ptr %50, ptr %cur_imgY.4.i, align 8
  br label %if.end.4.i

if.end.4.i:                                       ; preds = %if.then10.4.i, %for.body7.4.i
  %exitcond.4.not.i = icmp eq i64 %indvars.iv.4.i, 32
  br i1 %exitcond.4.not.i, label %for.inc14.4.i, label %for.body7.4.i.1

for.body7.4.i.1:                                  ; preds = %if.end.4.i
  %indvars.iv.next.4.i = or disjoint i64 %indvars.iv.4.i, 1
  %51 = load ptr, ptr %arrayidx.4.i, align 8
  %arrayidx9.4.i.1 = getelementptr inbounds ptr, ptr %51, i64 %indvars.iv.next.4.i
  %52 = load ptr, ptr %arrayidx9.4.i.1, align 8
  %tobool.not.4.i.1 = icmp eq ptr %52, null
  br i1 %tobool.not.4.i.1, label %if.end.4.i.1, label %if.then10.4.i.1

if.then10.4.i.1:                                  ; preds = %for.body7.4.i.1
  %cmp12.4.i.1 = icmp eq ptr %52, %11
  %53 = select i1 %cmp22.i, i1 %cmp12.4.i.1, i1 false
  %land.ext.4.i.1 = zext i1 %53 to i32
  %no_ref.4.i.1 = getelementptr inbounds i8, ptr %52, i64 384
  store i32 %land.ext.4.i.1, ptr %no_ref.4.i.1, align 8
  %imgY.4.i.1 = getelementptr inbounds i8, ptr %52, i64 128
  %54 = load ptr, ptr %imgY.4.i.1, align 8
  %cur_imgY.4.i.1 = getelementptr inbounds i8, ptr %52, i64 376
  store ptr %54, ptr %cur_imgY.4.i.1, align 8
  br label %if.end.4.i.1

if.end.4.i.1:                                     ; preds = %if.then10.4.i.1, %for.body7.4.i.1
  %indvars.iv.next.4.i.1 = add nuw nsw i64 %indvars.iv.4.i, 2
  br label %for.body7.4.i

for.inc14.4.i:                                    ; preds = %if.end.4.i
  %arrayidx.5.i = getelementptr inbounds i8, ptr %currSlice, i64 304
  br label %for.body7.5.i

for.body7.5.i:                                    ; preds = %if.end.5.i.1, %for.inc14.4.i
  %indvars.iv.5.i = phi i64 [ 0, %for.inc14.4.i ], [ %indvars.iv.next.5.i.1, %if.end.5.i.1 ]
  %55 = load ptr, ptr %arrayidx.5.i, align 8
  %arrayidx9.5.i = getelementptr inbounds ptr, ptr %55, i64 %indvars.iv.5.i
  %56 = load ptr, ptr %arrayidx9.5.i, align 8
  %tobool.not.5.i = icmp eq ptr %56, null
  br i1 %tobool.not.5.i, label %if.end.5.i, label %if.then10.5.i

if.then10.5.i:                                    ; preds = %for.body7.5.i
  %cmp12.5.i = icmp eq ptr %56, %11
  %57 = select i1 %cmp22.i, i1 %cmp12.5.i, i1 false
  %land.ext.5.i = zext i1 %57 to i32
  %no_ref.5.i = getelementptr inbounds i8, ptr %56, i64 384
  store i32 %land.ext.5.i, ptr %no_ref.5.i, align 8
  %imgY.5.i = getelementptr inbounds i8, ptr %56, i64 128
  %58 = load ptr, ptr %imgY.5.i, align 8
  %cur_imgY.5.i = getelementptr inbounds i8, ptr %56, i64 376
  store ptr %58, ptr %cur_imgY.5.i, align 8
  br label %if.end.5.i

if.end.5.i:                                       ; preds = %if.then10.5.i, %for.body7.5.i
  %exitcond.5.not.i = icmp eq i64 %indvars.iv.5.i, 32
  br i1 %exitcond.5.not.i, label %if.end15, label %for.body7.5.i.1

for.body7.5.i.1:                                  ; preds = %if.end.5.i
  %indvars.iv.next.5.i = or disjoint i64 %indvars.iv.5.i, 1
  %59 = load ptr, ptr %arrayidx.5.i, align 8
  %arrayidx9.5.i.1 = getelementptr inbounds ptr, ptr %59, i64 %indvars.iv.next.5.i
  %60 = load ptr, ptr %arrayidx9.5.i.1, align 8
  %tobool.not.5.i.1 = icmp eq ptr %60, null
  br i1 %tobool.not.5.i.1, label %if.end.5.i.1, label %if.then10.5.i.1

if.then10.5.i.1:                                  ; preds = %for.body7.5.i.1
  %cmp12.5.i.1 = icmp eq ptr %60, %11
  %61 = select i1 %cmp22.i, i1 %cmp12.5.i.1, i1 false
  %land.ext.5.i.1 = zext i1 %61 to i32
  %no_ref.5.i.1 = getelementptr inbounds i8, ptr %60, i64 384
  store i32 %land.ext.5.i.1, ptr %no_ref.5.i.1, align 8
  %imgY.5.i.1 = getelementptr inbounds i8, ptr %60, i64 128
  %62 = load ptr, ptr %imgY.5.i.1, align 8
  %cur_imgY.5.i.1 = getelementptr inbounds i8, ptr %60, i64 376
  store ptr %62, ptr %cur_imgY.5.i.1, align 8
  br label %if.end.5.i.1

if.end.5.i.1:                                     ; preds = %if.then10.5.i.1, %for.body7.5.i.1
  %indvars.iv.next.5.i.1 = add nuw nsw i64 %indvars.iv.5.i, 2
  br label %for.body7.5.i

if.else.i:                                        ; preds = %if.then14
  %mb_aff_frame_flag.i = getelementptr inbounds i8, ptr %currSlice, i64 128
  %63 = load i32, ptr %mb_aff_frame_flag.i, align 8
  %tobool24.not.i = icmp eq i32 %63, 0
  %cmp25.i = icmp eq i32 %9, 1
  %cond.i = select i1 %cmp25.i, i64 2, i64 1
  %cond27.i = select i1 %tobool24.not.i, i64 %cond.i, i64 6
  %listX37.i = getelementptr inbounds i8, ptr %currSlice, i64 264
  br label %for.cond32.preheader.i

for.cond32.preheader.i:                           ; preds = %for.inc57.i, %if.else.i
  %indvars.iv106.i = phi i64 [ 0, %if.else.i ], [ %indvars.iv.next107.i, %for.inc57.i ]
  %arrayidx39.i = getelementptr inbounds [6 x ptr], ptr %listX37.i, i64 0, i64 %indvars.iv106.i
  br label %for.body35.i

for.body35.i:                                     ; preds = %if.end53.i.1, %for.cond32.preheader.i
  %indvars.iv102.i = phi i64 [ 0, %for.cond32.preheader.i ], [ %indvars.iv.next103.i.1, %if.end53.i.1 ]
  %64 = load ptr, ptr %arrayidx39.i, align 8
  %arrayidx41.i = getelementptr inbounds ptr, ptr %64, i64 %indvars.iv102.i
  %65 = load ptr, ptr %arrayidx41.i, align 8
  %tobool42.not.i = icmp eq ptr %65, null
  br i1 %tobool42.not.i, label %if.end53.i, label %if.then43.i

if.then43.i:                                      ; preds = %for.body35.i
  %cmp46.i = icmp eq ptr %65, %11
  %66 = select i1 %cmp22.i, i1 %cmp46.i, i1 false
  %land.ext49.i = zext i1 %66 to i32
  %no_ref50.i = getelementptr inbounds i8, ptr %65, i64 384
  store i32 %land.ext49.i, ptr %no_ref50.i, align 8
  %imgY51.i = getelementptr inbounds i8, ptr %65, i64 128
  %67 = load ptr, ptr %imgY51.i, align 8
  %cur_imgY52.i = getelementptr inbounds i8, ptr %65, i64 376
  store ptr %67, ptr %cur_imgY52.i, align 8
  br label %if.end53.i

if.end53.i:                                       ; preds = %if.then43.i, %for.body35.i
  %exitcond105.not.i = icmp eq i64 %indvars.iv102.i, 32
  br i1 %exitcond105.not.i, label %for.inc57.i, label %for.body35.i.1

for.body35.i.1:                                   ; preds = %if.end53.i
  %indvars.iv.next103.i = or disjoint i64 %indvars.iv102.i, 1
  %68 = load ptr, ptr %arrayidx39.i, align 8
  %arrayidx41.i.1 = getelementptr inbounds ptr, ptr %68, i64 %indvars.iv.next103.i
  %69 = load ptr, ptr %arrayidx41.i.1, align 8
  %tobool42.not.i.1 = icmp eq ptr %69, null
  br i1 %tobool42.not.i.1, label %if.end53.i.1, label %if.then43.i.1

if.then43.i.1:                                    ; preds = %for.body35.i.1
  %cmp46.i.1 = icmp eq ptr %69, %11
  %70 = select i1 %cmp22.i, i1 %cmp46.i.1, i1 false
  %land.ext49.i.1 = zext i1 %70 to i32
  %no_ref50.i.1 = getelementptr inbounds i8, ptr %69, i64 384
  store i32 %land.ext49.i.1, ptr %no_ref50.i.1, align 8
  %imgY51.i.1 = getelementptr inbounds i8, ptr %69, i64 128
  %71 = load ptr, ptr %imgY51.i.1, align 8
  %cur_imgY52.i.1 = getelementptr inbounds i8, ptr %69, i64 376
  store ptr %71, ptr %cur_imgY52.i.1, align 8
  br label %if.end53.i.1

if.end53.i.1:                                     ; preds = %if.then43.i.1, %for.body35.i.1
  %indvars.iv.next103.i.1 = add nuw nsw i64 %indvars.iv102.i, 2
  br label %for.body35.i

for.inc57.i:                                      ; preds = %if.end53.i
  %indvars.iv.next107.i = add nuw nsw i64 %indvars.iv106.i, 1
  %exitcond109.not.i = icmp eq i64 %indvars.iv.next107.i, %cond27.i
  br i1 %exitcond109.not.i, label %if.end15, label %for.cond32.preheader.i

if.end15:                                         ; preds = %if.end.5.i, %for.inc57.i, %if.then.i, %if.end9, %if.end9
  %read_one_macroblock = getelementptr inbounds i8, ptr %currSlice, i64 13448
  %dec_picture17 = getelementptr inbounds i8, ptr %currSlice, i64 13520
  %mb_aff_frame_flag = getelementptr inbounds i8, ptr %currSlice, i64 128
  %num_ref_idx_active = getelementptr inbounds i8, ptr %currSlice, i64 136
  %current_mb_nr = getelementptr inbounds i8, ptr %currSlice, i64 108
  br label %while.body

while.body:                                       ; preds = %if.end15, %lor.end
  call void @start_macroblock(ptr noundef nonnull %currSlice, ptr noundef nonnull %currMB) #27
  %72 = load ptr, ptr %read_one_macroblock, align 8
  %73 = load ptr, ptr %currMB, align 8
  call void %72(ptr noundef %73) #27
  %74 = load ptr, ptr %currMB, align 8
  %75 = load ptr, ptr %dec_picture17, align 8
  %call = call i32 @decode_one_macroblock(ptr noundef %74, ptr noundef %75) #27
  %76 = load i32, ptr %mb_aff_frame_flag, align 8
  %tobool.not = icmp eq i32 %76, 0
  br i1 %tobool.not, label %lor.end, label %land.lhs.true18

land.lhs.true18:                                  ; preds = %while.body
  %77 = load ptr, ptr %currMB, align 8
  %mb_field = getelementptr inbounds i8, ptr %77, i64 384
  %78 = load i32, ptr %mb_field, align 8
  %tobool19.not = icmp eq i32 %78, 0
  br i1 %tobool19.not, label %lor.rhs, label %if.then20

if.then20:                                        ; preds = %land.lhs.true18
  %79 = load <2 x i32>, ptr %num_ref_idx_active, align 8
  %80 = ashr <2 x i32> %79, <i32 1, i32 1>
  store <2 x i32> %80, ptr %num_ref_idx_active, align 8
  br label %lor.rhs

lor.rhs:                                          ; preds = %if.then20, %land.lhs.true18
  %81 = load i32, ptr %current_mb_nr, align 4
  %rem = and i32 %81, 1
  %tobool27 = icmp ne i32 %rem, 0
  br label %lor.end

lor.end:                                          ; preds = %while.body, %lor.rhs
  %82 = phi i1 [ %tobool27, %lor.rhs ], [ true, %while.body ]
  %lor.ext = zext i1 %82 to i32
  %call28 = call i32 @exit_macroblock(ptr noundef nonnull %currSlice, i32 noundef %lor.ext) #27
  %cmp16 = icmp eq i32 %call28, 0
  br i1 %cmp16, label %while.body, label %while.end

while.end:                                        ; preds = %lor.end
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %currMB) #27
  ret void
}

declare void @change_plane_JV(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @DeblockPicturePartially(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @decode_one_frame(ptr nocapture noundef readonly %pDecoder) local_unnamed_addr #2 {
entry:
  %tmpPPS.sroa.0.i = alloca { i32, i32, i32, i32, i32, i32, [12 x i32], [6 x [16 x i32]], [6 x [64 x i32]], [6 x i32], [6 x i32], i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i32, i32, i32 }, align 8
  %tmpPPS.sroa.5.i = alloca [48 x i8], align 8
  %p_Vid1 = getelementptr inbounds i8, ptr %pDecoder, i64 8
  %0 = load ptr, ptr %p_Vid1, align 8
  %1 = load ptr, ptr %0, align 8
  %ppSliceList3 = getelementptr inbounds i8, ptr %0, i64 848736
  %2 = load ptr, ptr %ppSliceList3, align 8
  %iSliceNumOfCurrPic = getelementptr inbounds i8, ptr %0, i64 848720
  store i32 0, ptr %iSliceNumOfCurrPic, align 8
  %iNumOfSlicesDecoded = getelementptr inbounds i8, ptr %0, i64 848728
  store i32 0, ptr %iNumOfSlicesDecoded, align 8
  %num_dec_mb = getelementptr inbounds i8, ptr %0, i64 848716
  store i32 0, ptr %num_dec_mb, align 4
  %newframe = getelementptr inbounds i8, ptr %0, i64 848872
  %3 = load i32, ptr %newframe, align 8
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end23, label %if.then

if.then:                                          ; preds = %entry
  %pNextPPS = getelementptr inbounds i8, ptr %0, i64 856872
  %4 = load ptr, ptr %pNextPPS, align 8
  %5 = load i32, ptr %4, align 8
  %tobool4.not = icmp eq i32 %5, 0
  br i1 %tobool4.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then
  %pic_parameter_set_id = getelementptr inbounds i8, ptr %4, i64 4
  %6 = load i32, ptr %pic_parameter_set_id, align 4
  %pNextSlice = getelementptr inbounds i8, ptr %0, i64 848880
  %7 = load ptr, ptr %pNextSlice, align 8
  %pic_parameter_set_id6 = getelementptr inbounds i8, ptr %7, i64 1228
  %8 = load i32, ptr %pic_parameter_set_id6, align 4
  %cmp = icmp eq i32 %6, %8
  br i1 %cmp, label %if.then7, label %if.end

if.then7:                                         ; preds = %land.lhs.true
  tail call void @MakePPSavailable(ptr noundef nonnull %0, i32 noundef %6, ptr noundef nonnull %4) #27
  %9 = load ptr, ptr %pNextPPS, align 8
  store i32 0, ptr %9, align 8
  %.pre = load i32, ptr %iSliceNumOfCurrPic, align 8
  %10 = sext i32 %.pre to i64
  br label %if.end

if.end:                                           ; preds = %if.then7, %land.lhs.true, %if.then
  %idxprom = phi i64 [ %10, %if.then7 ], [ 0, %land.lhs.true ], [ 0, %if.then ]
  %arrayidx = getelementptr inbounds ptr, ptr %2, i64 %idxprom
  %11 = load ptr, ptr %arrayidx, align 8
  %pNextSlice14 = getelementptr inbounds i8, ptr %0, i64 848880
  %12 = load ptr, ptr %pNextSlice14, align 8
  store ptr %12, ptr %arrayidx, align 8
  store ptr %11, ptr %pNextSlice14, align 8
  %13 = load i32, ptr %iSliceNumOfCurrPic, align 8
  %idxprom20 = sext i32 %13 to i64
  %arrayidx21 = getelementptr inbounds ptr, ptr %2, i64 %idxprom20
  %14 = load ptr, ptr %arrayidx21, align 8
  tail call void @UseParameterSet(ptr noundef %14) #27
  tail call fastcc void @init_picture(ptr noundef nonnull %0, ptr noundef %14, ptr noundef %1)
  %15 = load i32, ptr %iSliceNumOfCurrPic, align 8
  %inc = add nsw i32 %15, 1
  store i32 %inc, ptr %iSliceNumOfCurrPic, align 8
  br label %if.end23

if.end23:                                         ; preds = %if.end, %entry
  %current_header.0 = phi i32 [ 3, %if.end ], [ 0, %entry ]
  %p_Dpb = getelementptr inbounds i8, ptr %0, i64 856656
  %Is_redundant_correct.i = getelementptr inbounds i8, ptr %0, i64 851872
  %Is_primary_correct.i = getelementptr inbounds i8, ptr %0, i64 851868
  %type14.i = getelementptr inbounds i8, ptr %0, i64 848776
  %previous_frame_num = getelementptr inbounds i8, ptr %0, i64 851864
  %FrameSizeInMbs = getelementptr inbounds i8, ptr %0, i64 849016
  %pNextSlice134 = getelementptr inbounds i8, ptr %0, i64 848880
  %dec_picture = getelementptr inbounds i8, ptr %0, i64 856456
  %iNumOfSlicesAllocated = getelementptr inbounds i8, ptr %0, i64 848724
  %old_slice = getelementptr inbounds i8, ptr %0, i64 848696
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %CopySliceInfo.exit, %if.end23
  %current_header.1.ph = phi i32 [ %current_header.2, %CopySliceInfo.exit ], [ %current_header.0, %if.end23 ]
  %ppSliceList.0.ph = phi ptr [ %ppSliceList.3, %CopySliceInfo.exit ], [ %2, %if.end23 ]
  br label %while.cond

while.cond:                                       ; preds = %while.cond.outer, %land.lhs.true47
  %current_header.1 = phi i32 [ %call42, %land.lhs.true47 ], [ %current_header.1.ph, %while.cond.outer ]
  %16 = add nsw i32 %current_header.1, -3
  %17 = icmp ult i32 %16, -2
  br i1 %17, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %18 = load i32, ptr %iSliceNumOfCurrPic, align 8
  %idxprom27 = sext i32 %18 to i64
  %arrayidx28 = getelementptr inbounds ptr, ptr %ppSliceList.0.ph, i64 %idxprom27
  %19 = load ptr, ptr %arrayidx28, align 8
  %tobool29.not = icmp eq ptr %19, null
  br i1 %tobool29.not, label %if.then30, label %if.end34

if.then30:                                        ; preds = %while.body
  %call = tail call ptr @malloc_slice(ptr noundef %1, ptr noundef nonnull %0) #27
  %20 = load i32, ptr %iSliceNumOfCurrPic, align 8
  %idxprom32 = sext i32 %20 to i64
  %arrayidx33 = getelementptr inbounds ptr, ptr %ppSliceList.0.ph, i64 %idxprom32
  store ptr %call, ptr %arrayidx33, align 8
  %.pre312 = load i32, ptr %iSliceNumOfCurrPic, align 8
  %idxprom36.phi.trans.insert = sext i32 %.pre312 to i64
  %arrayidx37.phi.trans.insert = getelementptr inbounds ptr, ptr %ppSliceList.0.ph, i64 %idxprom36.phi.trans.insert
  %.pre313 = load ptr, ptr %arrayidx37.phi.trans.insert, align 8
  br label %if.end34

if.end34:                                         ; preds = %if.then30, %while.body
  %21 = phi ptr [ %.pre313, %if.then30 ], [ %19, %while.body ]
  store ptr %0, ptr %21, align 8
  %p_Inp39 = getelementptr inbounds i8, ptr %21, i64 8
  store ptr %1, ptr %p_Inp39, align 8
  %22 = load ptr, ptr %p_Dpb, align 8
  %p_Dpb40 = getelementptr inbounds i8, ptr %21, i64 40
  store ptr %22, ptr %p_Dpb40, align 8
  %next_header = getelementptr inbounds i8, ptr %21, i64 208
  store i32 -8888, ptr %next_header, align 8
  %num_dec_mb41 = getelementptr inbounds i8, ptr %21, i64 112
  store i32 0, ptr %num_dec_mb41, align 8
  %coeff_ctr = getelementptr inbounds i8, ptr %21, i64 13264
  store i32 -1, ptr %coeff_ctr, align 8
  %pos = getelementptr inbounds i8, ptr %21, i64 13268
  store i32 0, ptr %pos, align 4
  %is_reset_coeff = getelementptr inbounds i8, ptr %21, i64 1240
  store i32 0, ptr %is_reset_coeff, align 8
  %call42 = tail call i32 @read_new_slice(ptr noundef nonnull %21)
  %current_header43 = getelementptr inbounds i8, ptr %21, i64 204
  store i32 %call42, ptr %current_header43, align 4
  %redundant_pic_cnt.i = getelementptr inbounds i8, ptr %21, i64 220
  %23 = load i32, ptr %redundant_pic_cnt.i, align 4
  %cmp.i = icmp eq i32 %23, 0
  br i1 %cmp.i, label %if.end.i, label %land.lhs.true13.i

if.end.i:                                         ; preds = %if.end34
  store i32 1, ptr %Is_redundant_correct.i, align 8
  store i32 1, ptr %Is_primary_correct.i, align 4
  %.pr.i = load i32, ptr %redundant_pic_cnt.i, align 4
  %cmp2.i = icmp eq i32 %.pr.i, 0
  br i1 %cmp2.i, label %land.lhs.true.i, label %land.lhs.true13.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %24 = load i32, ptr %type14.i, align 8
  %cmp3.not.i = icmp eq i32 %24, 2
  br i1 %cmp3.not.i, label %Error_tracking.exit, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %land.lhs.true.i
  %num_ref_idx_active.i = getelementptr inbounds i8, ptr %21, i64 136
  %25 = load i32, ptr %num_ref_idx_active.i, align 8
  %cmp542.i = icmp sgt i32 %25, 0
  br i1 %cmp542.i, label %for.body.lr.ph.i, label %Error_tracking.exit

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %ref_flag.i = getelementptr inbounds i8, ptr %21, i64 13340
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i, %for.body.lr.ph.i
  %26 = phi i32 [ %25, %for.body.lr.ph.i ], [ %28, %for.inc.i ]
  %indvars.iv.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next.i, %for.inc.i ]
  %arrayidx6.i = getelementptr inbounds [17 x i32], ptr %ref_flag.i, i64 0, i64 %indvars.iv.i
  %27 = load i32, ptr %arrayidx6.i, align 4
  %cmp7.i = icmp eq i32 %27, 0
  br i1 %cmp7.i, label %if.then8.i, label %for.inc.i

if.then8.i:                                       ; preds = %for.body.i
  store i32 0, ptr %Is_primary_correct.i, align 4
  %.pre.i = load i32, ptr %num_ref_idx_active.i, align 8
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then8.i, %for.body.i
  %28 = phi i32 [ %26, %for.body.i ], [ %.pre.i, %if.then8.i ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %29 = sext i32 %28 to i64
  %cmp5.i = icmp slt i64 %indvars.iv.next.i, %29
  br i1 %cmp5.i, label %for.body.i, label %Error_tracking.exit

land.lhs.true13.i:                                ; preds = %if.end.i, %if.end34
  %30 = load i32, ptr %type14.i, align 8
  %cmp15.not.i = icmp eq i32 %30, 2
  br i1 %cmp15.not.i, label %Error_tracking.exit, label %if.then16.i

if.then16.i:                                      ; preds = %land.lhs.true13.i
  %ref_flag17.i = getelementptr inbounds i8, ptr %21, i64 13340
  %redundant_slice_ref_idx.i = getelementptr inbounds i8, ptr %21, i64 232
  %31 = load i32, ptr %redundant_slice_ref_idx.i, align 8
  %idxprom18.i = sext i32 %31 to i64
  %arrayidx19.i = getelementptr inbounds [17 x i32], ptr %ref_flag17.i, i64 0, i64 %idxprom18.i
  %32 = load i32, ptr %arrayidx19.i, align 4
  %cmp20.i = icmp eq i32 %32, 0
  br i1 %cmp20.i, label %if.then21.i, label %Error_tracking.exit

if.then21.i:                                      ; preds = %if.then16.i
  store i32 0, ptr %Is_redundant_correct.i, align 8
  br label %Error_tracking.exit

Error_tracking.exit:                              ; preds = %for.inc.i, %land.lhs.true.i, %for.cond.preheader.i, %land.lhs.true13.i, %if.then16.i, %if.then21.i
  %frame_num = getelementptr inbounds i8, ptr %21, i64 172
  %33 = load i32, ptr %frame_num, align 4
  %34 = load i32, ptr %previous_frame_num, align 8
  %cmp44 = icmp eq i32 %33, %34
  br i1 %cmp44, label %land.lhs.true45, label %if.end52

land.lhs.true45:                                  ; preds = %Error_tracking.exit
  %35 = load i32, ptr %redundant_pic_cnt.i, align 4
  %cmp46.not = icmp eq i32 %35, 0
  br i1 %cmp46.not, label %if.end52, label %land.lhs.true47

land.lhs.true47:                                  ; preds = %land.lhs.true45
  %36 = load i32, ptr %Is_primary_correct.i, align 4
  %cmp48 = icmp ne i32 %36, 0
  %cmp50 = icmp ne i32 %call42, 1
  %or.cond = select i1 %cmp48, i1 %cmp50, i1 false
  br i1 %or.cond, label %while.cond, label %if.end52

if.end52:                                         ; preds = %land.lhs.true47, %land.lhs.true45, %Error_tracking.exit
  %frame_num.le = getelementptr inbounds i8, ptr %21, i64 172
  %37 = add nsw i32 %call42, -3
  %or.cond158 = icmp ult i32 %37, -2
  %.pre314 = load i32, ptr %iSliceNumOfCurrPic, align 8
  br i1 %or.cond158, label %if.then60, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end52
  %cmp57 = icmp eq i32 %.pre314, 0
  %cmp59 = icmp eq i32 %call42, 2
  %or.cond159 = select i1 %cmp57, i1 %cmp59, i1 false
  br i1 %or.cond159, label %if.then60, label %if.else106

if.then60:                                        ; preds = %lor.lhs.false, %if.end52
  %conv = trunc i32 %.pre314 to i16
  %current_slice_nr = getelementptr inbounds i8, ptr %21, i64 116
  store i16 %conv, ptr %current_slice_nr, align 4
  %sext = shl i32 %.pre314, 16
  %conv63 = ashr exact i32 %sext, 16
  %38 = load ptr, ptr %dec_picture, align 8
  %max_slice_id = getelementptr inbounds i8, ptr %38, i64 60
  %39 = load i16, ptr %max_slice_id, align 4
  %conv64 = sext i16 %39 to i32
  %cond.i = tail call noundef i32 @llvm.smax.i32(i32 %conv63, i32 %conv64)
  %conv66 = trunc nsw i32 %cond.i to i16
  store i16 %conv66, ptr %max_slice_id, align 4
  %40 = load i32, ptr %iSliceNumOfCurrPic, align 8
  %cmp70 = icmp sgt i32 %40, 0
  br i1 %cmp70, label %if.then72, label %if.end76

if.then72:                                        ; preds = %if.then60
  %41 = load ptr, ptr %ppSliceList.0.ph, align 8
  %framepoc.i = getelementptr inbounds i8, ptr %41, i64 76
  %42 = load i32, ptr %framepoc.i, align 4
  %framepoc1.i = getelementptr inbounds i8, ptr %21, i64 76
  store i32 %42, ptr %framepoc1.i, align 4
  %toppoc.i = getelementptr inbounds i8, ptr %41, i64 68
  %43 = load i32, ptr %toppoc.i, align 4
  %toppoc2.i = getelementptr inbounds i8, ptr %21, i64 68
  store i32 %43, ptr %toppoc2.i, align 4
  %bottompoc.i = getelementptr inbounds i8, ptr %41, i64 72
  %44 = load i32, ptr %bottompoc.i, align 8
  %bottompoc3.i = getelementptr inbounds i8, ptr %21, i64 72
  store i32 %44, ptr %bottompoc3.i, align 8
  %ThisPOC.i = getelementptr inbounds i8, ptr %41, i64 104
  %45 = load i32, ptr %ThisPOC.i, align 8
  %ThisPOC4.i = getelementptr inbounds i8, ptr %21, i64 104
  store i32 %45, ptr %ThisPOC4.i, align 8
  %start_mb_nr = getelementptr inbounds i8, ptr %21, i64 188
  %46 = load i32, ptr %start_mb_nr, align 4
  %47 = load i32, ptr %iSliceNumOfCurrPic, align 8
  %sub = add nsw i32 %47, -1
  %idxprom74 = sext i32 %sub to i64
  %arrayidx75 = getelementptr inbounds ptr, ptr %ppSliceList.0.ph, i64 %idxprom74
  %48 = load ptr, ptr %arrayidx75, align 8
  %end_mb_nr_plus1 = getelementptr inbounds i8, ptr %48, i64 192
  store i32 %46, ptr %end_mb_nr_plus1, align 8
  %.pre315 = load i32, ptr %iSliceNumOfCurrPic, align 8
  br label %if.end76

if.end76:                                         ; preds = %if.then72, %if.then60
  %49 = phi i32 [ %.pre315, %if.then72 ], [ %40, %if.then60 ]
  %inc78 = add nsw i32 %49, 1
  store i32 %inc78, ptr %iSliceNumOfCurrPic, align 8
  %50 = load i32, ptr %iNumOfSlicesAllocated, align 4
  %cmp80.not = icmp slt i32 %inc78, %50
  br i1 %cmp80.not, label %if.end139, label %if.then82

if.then82:                                        ; preds = %if.end76
  %51 = load ptr, ptr %ppSliceList3, align 8
  %add = add nsw i32 %50, 16
  %conv85 = sext i32 %add to i64
  %mul = shl nsw i64 %conv85, 3
  %call86 = tail call ptr @realloc(ptr noundef %51, i64 noundef %mul) #28
  %tobool87.not = icmp eq ptr %call86, null
  br i1 %tobool87.not, label %if.then88, label %if.else

if.then88:                                        ; preds = %if.then82
  %52 = load i32, ptr %iNumOfSlicesAllocated, align 4
  %add90 = add nsw i32 %52, 16
  %conv91 = sext i32 %add90 to i64
  %call92 = tail call noalias ptr @calloc(i64 noundef %conv91, i64 noundef 8) #29
  %53 = load ptr, ptr %ppSliceList3, align 8
  %54 = load i32, ptr %iSliceNumOfCurrPic, align 8
  %conv95 = sext i32 %54 to i64
  %mul96 = shl nsw i64 %conv95, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %call92, ptr align 8 %53, i64 %mul96, i1 false)
  tail call void @free(ptr noundef %53) #27
  store ptr %call92, ptr %ppSliceList3, align 8
  br label %if.end102

if.else:                                          ; preds = %if.then82
  store ptr %call86, ptr %ppSliceList3, align 8
  %55 = load i32, ptr %iSliceNumOfCurrPic, align 8
  %idx.ext = sext i32 %55 to i64
  %add.ptr = getelementptr inbounds ptr, ptr %call86, i64 %idx.ext
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %add.ptr, i8 0, i64 128, i1 false)
  br label %if.end102

if.end102:                                        ; preds = %if.else, %if.then88
  %ppSliceList.1 = phi ptr [ %call86, %if.else ], [ %call92, %if.then88 ]
  %56 = load i32, ptr %iNumOfSlicesAllocated, align 4
  %add104 = add nsw i32 %56, 16
  store i32 %add104, ptr %iNumOfSlicesAllocated, align 4
  br label %if.end139

if.else106:                                       ; preds = %lor.lhs.false
  %sub108 = add nsw i32 %.pre314, -1
  %idxprom109 = sext i32 %sub108 to i64
  %arrayidx110 = getelementptr inbounds ptr, ptr %ppSliceList.0.ph, i64 %idxprom109
  %57 = load ptr, ptr %arrayidx110, align 8
  %mb_aff_frame_flag = getelementptr inbounds i8, ptr %57, i64 128
  %58 = load i32, ptr %mb_aff_frame_flag, align 8
  %tobool111.not = icmp eq i32 %58, 0
  %59 = load i32, ptr %FrameSizeInMbs, align 8
  br i1 %tobool111.not, label %if.else118, label %if.then112

if.then112:                                       ; preds = %if.else106
  %div285 = lshr i32 %59, 1
  br label %if.end131

if.else118:                                       ; preds = %if.else106
  %field_pic_flag = getelementptr inbounds i8, ptr %57, i64 176
  %60 = load i32, ptr %field_pic_flag, align 8
  %add124 = add i32 %60, 1
  %div125 = udiv i32 %59, %add124
  br label %if.end131

if.end131:                                        ; preds = %if.else118, %if.then112
  %div285.sink = phi i32 [ %div125, %if.else118 ], [ %div285, %if.then112 ]
  %61 = getelementptr inbounds i8, ptr %57, i64 192
  store i32 %div285.sink, ptr %61, align 8
  store i32 1, ptr %newframe, align 8
  %current_slice_nr133 = getelementptr inbounds i8, ptr %21, i64 116
  store i16 0, ptr %current_slice_nr133, align 4
  %62 = load ptr, ptr %pNextSlice134, align 8
  %63 = load i32, ptr %iSliceNumOfCurrPic, align 8
  %idxprom136 = sext i32 %63 to i64
  %arrayidx137 = getelementptr inbounds ptr, ptr %ppSliceList.0.ph, i64 %idxprom136
  store ptr %62, ptr %arrayidx137, align 8
  store ptr %21, ptr %pNextSlice134, align 8
  br label %if.end139

if.end139:                                        ; preds = %if.end76, %if.end102, %if.end131
  %current_header.2 = phi i32 [ %call42, %if.end131 ], [ 3, %if.end102 ], [ 3, %if.end76 ]
  %ppSliceList.3 = phi ptr [ %ppSliceList.0.ph, %if.end131 ], [ %ppSliceList.1, %if.end102 ], [ %ppSliceList.0.ph, %if.end76 ]
  %64 = load ptr, ptr %old_slice, align 8
  %65 = load ptr, ptr %21, align 8
  %pic_parameter_set_id.i = getelementptr inbounds i8, ptr %21, i64 1228
  %66 = load i32, ptr %pic_parameter_set_id.i, align 4
  %pps_id.i = getelementptr inbounds i8, ptr %64, i64 36
  store i32 %66, ptr %pps_id.i, align 4
  %67 = load i32, ptr %frame_num.le, align 4
  %frame_num2.i = getelementptr inbounds i8, ptr %64, i64 4
  store i32 %67, ptr %frame_num2.i, align 4
  %field_pic_flag.i = getelementptr inbounds i8, ptr %21, i64 176
  %68 = load i32, ptr %field_pic_flag.i, align 8
  store i32 %68, ptr %64, align 4
  %tobool.not.i = icmp eq i32 %68, 0
  br i1 %tobool.not.i, label %if.end.i286, label %if.then.i

if.then.i:                                        ; preds = %if.end139
  %bottom_field_flag.i = getelementptr inbounds i8, ptr %21, i64 180
  %69 = load i8, ptr %bottom_field_flag.i, align 4
  %bottom_field_flag5.i = getelementptr inbounds i8, ptr %64, i64 28
  store i8 %69, ptr %bottom_field_flag5.i, align 4
  br label %if.end.i286

if.end.i286:                                      ; preds = %if.then.i, %if.end139
  %nal_reference_idc.i = getelementptr inbounds i8, ptr %21, i64 56
  %70 = load i32, ptr %nal_reference_idc.i, align 8
  %nal_ref_idc.i = getelementptr inbounds i8, ptr %64, i64 8
  store i32 %70, ptr %nal_ref_idc.i, align 4
  %idr_flag.i = getelementptr inbounds i8, ptr %21, i64 48
  %71 = load i32, ptr %idr_flag.i, align 8
  %conv.i = trunc i32 %71 to i8
  %idr_flag6.i = getelementptr inbounds i8, ptr %64, i64 29
  store i8 %conv.i, ptr %idr_flag6.i, align 1
  %72 = load i32, ptr %idr_flag.i, align 8
  %tobool8.not.i = icmp eq i32 %72, 0
  br i1 %tobool8.not.i, label %if.end11.i, label %if.then9.i

if.then9.i:                                       ; preds = %if.end.i286
  %idr_pic_id.i = getelementptr inbounds i8, ptr %21, i64 52
  %73 = load i32, ptr %idr_pic_id.i, align 4
  %idr_pic_id10.i = getelementptr inbounds i8, ptr %64, i64 32
  store i32 %73, ptr %idr_pic_id10.i, align 4
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then9.i, %if.end.i286
  %active_sps.i = getelementptr inbounds i8, ptr %65, i64 16
  %74 = load ptr, ptr %active_sps.i, align 8
  %pic_order_cnt_type.i = getelementptr inbounds i8, ptr %74, i64 2072
  %75 = load i32, ptr %pic_order_cnt_type.i, align 4
  %cmp.i287 = icmp eq i32 %75, 0
  br i1 %cmp.i287, label %if.then13.i, label %if.end14.i

if.then13.i:                                      ; preds = %if.end11.i
  %pic_order_cnt_lsb.i = getelementptr inbounds i8, ptr %21, i64 80
  %76 = load i32, ptr %pic_order_cnt_lsb.i, align 8
  %pic_oder_cnt_lsb.i = getelementptr inbounds i8, ptr %64, i64 12
  store i32 %76, ptr %pic_oder_cnt_lsb.i, align 4
  %delta_pic_order_cnt_bottom.i = getelementptr inbounds i8, ptr %21, i64 84
  %77 = load i32, ptr %delta_pic_order_cnt_bottom.i, align 4
  %delta_pic_oder_cnt_bottom.i = getelementptr inbounds i8, ptr %64, i64 16
  store i32 %77, ptr %delta_pic_oder_cnt_bottom.i, align 4
  %.pre.i288 = load ptr, ptr %active_sps.i, align 8
  %pic_order_cnt_type16.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i288, i64 2072
  %.pre60.i = load i32, ptr %pic_order_cnt_type16.phi.trans.insert.i, align 4
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then13.i, %if.end11.i
  %78 = phi i32 [ %.pre60.i, %if.then13.i ], [ %75, %if.end11.i ]
  %cmp17.i = icmp eq i32 %78, 1
  br i1 %cmp17.i, label %if.then19.i, label %CopySliceInfo.exit

if.then19.i:                                      ; preds = %if.end14.i
  %delta_pic_order_cnt.i = getelementptr inbounds i8, ptr %21, i64 88
  %79 = load i32, ptr %delta_pic_order_cnt.i, align 8
  %delta_pic_order_cnt20.i = getelementptr inbounds i8, ptr %64, i64 20
  store i32 %79, ptr %delta_pic_order_cnt20.i, align 4
  %arrayidx23.i = getelementptr inbounds i8, ptr %21, i64 92
  %80 = load i32, ptr %arrayidx23.i, align 4
  %arrayidx25.i = getelementptr inbounds i8, ptr %64, i64 24
  store i32 %80, ptr %arrayidx25.i, align 4
  br label %CopySliceInfo.exit

CopySliceInfo.exit:                               ; preds = %if.end14.i, %if.then19.i
  %view_id.i = getelementptr inbounds i8, ptr %21, i64 1176
  %81 = load i32, ptr %view_id.i, align 8
  %view_id27.i = getelementptr inbounds i8, ptr %64, i64 40
  store i32 %81, ptr %view_id27.i, align 4
  %inter_view_flag.i = getelementptr inbounds i8, ptr %21, i64 1180
  %82 = load i32, ptr %inter_view_flag.i, align 4
  %inter_view_flag28.i = getelementptr inbounds i8, ptr %64, i64 44
  store i32 %82, ptr %inter_view_flag28.i, align 4
  %anchor_pic_flag.i = getelementptr inbounds i8, ptr %21, i64 1184
  %83 = load i32, ptr %anchor_pic_flag.i, align 8
  %anchor_pic_flag29.i = getelementptr inbounds i8, ptr %64, i64 48
  store i32 %83, ptr %anchor_pic_flag29.i, align 4
  br label %while.cond.outer

while.end:                                        ; preds = %while.cond
  %84 = load ptr, ptr %ppSliceList3, align 8
  %85 = load ptr, ptr %84, align 8
  %86 = load i32, ptr %iSliceNumOfCurrPic, align 8
  %cmp.i289 = icmp sgt i32 %86, 49
  br i1 %cmp.i289, label %if.then.i305, label %if.end.i290

if.then.i305:                                     ; preds = %while.end
  tail call void @error(ptr noundef nonnull @.str.50, i32 noundef 200) #27
  br label %if.end.i290

if.end.i290:                                      ; preds = %if.then.i305, %while.end
  %pNextPPS.i = getelementptr inbounds i8, ptr %0, i64 856872
  %87 = load ptr, ptr %pNextPPS.i, align 8
  %88 = load i32, ptr %87, align 8
  %tobool.not.i291 = icmp eq i32 %88, 0
  br i1 %tobool.not.i291, label %if.end11.i294, label %land.lhs.true.i292

land.lhs.true.i292:                               ; preds = %if.end.i290
  %pic_parameter_set_id.i293 = getelementptr inbounds i8, ptr %87, i64 4
  %89 = load i32, ptr %pic_parameter_set_id.i293, align 4
  %pic_parameter_set_id2.i = getelementptr inbounds i8, ptr %85, i64 1228
  %90 = load i32, ptr %pic_parameter_set_id2.i, align 4
  %cmp3.i = icmp eq i32 %89, %90
  br i1 %cmp3.i, label %if.then4.i, label %if.end11.i294

if.then4.i:                                       ; preds = %land.lhs.true.i292
  call void @llvm.lifetime.start.p0(i64 2160, ptr nonnull %tmpPPS.sroa.0.i)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %tmpPPS.sroa.5.i)
  %active_pps.i = getelementptr inbounds i8, ptr %0, i64 8
  %91 = load ptr, ptr %active_pps.i, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2160) %tmpPPS.sroa.0.i, ptr noundef nonnull align 8 dereferenceable(2160) %91, i64 2160, i1 false)
  %tmpPPS.sroa.4.0..sroa_idx.i = getelementptr inbounds i8, ptr %91, i64 2160
  %tmpPPS.sroa.4.0.copyload.i = load ptr, ptr %tmpPPS.sroa.4.0..sroa_idx.i, align 8
  %tmpPPS.sroa.5.0..sroa_idx.i = getelementptr inbounds i8, ptr %91, i64 2168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %tmpPPS.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(48) %tmpPPS.sroa.5.0..sroa_idx.i, i64 48, i1 false)
  store ptr null, ptr %tmpPPS.sroa.4.0..sroa_idx.i, align 8
  %92 = load ptr, ptr %pNextPPS.i, align 8
  %pic_parameter_set_id7.i = getelementptr inbounds i8, ptr %92, i64 4
  %93 = load i32, ptr %pic_parameter_set_id7.i, align 4
  tail call void @MakePPSavailable(ptr noundef nonnull %0, i32 noundef %93, ptr noundef %92) #27
  %94 = load ptr, ptr %pNextPPS.i, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2160) %94, ptr noundef nonnull align 8 dereferenceable(2160) %tmpPPS.sroa.0.i, i64 2160, i1 false)
  %tmpPPS.sroa.4.0..sroa_idx71.i = getelementptr inbounds i8, ptr %94, i64 2160
  store ptr %tmpPPS.sroa.4.0.copyload.i, ptr %tmpPPS.sroa.4.0..sroa_idx71.i, align 8
  %tmpPPS.sroa.5.0..sroa_idx73.i = getelementptr inbounds i8, ptr %94, i64 2168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %tmpPPS.sroa.5.0..sroa_idx73.i, ptr noundef nonnull align 8 dereferenceable(48) %tmpPPS.sroa.5.i, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(i64 2160, ptr nonnull %tmpPPS.sroa.0.i)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %tmpPPS.sroa.5.i)
  br label %if.end11.i294

if.end11.i294:                                    ; preds = %if.then4.i, %land.lhs.true.i292, %if.end.i290
  tail call void @UseParameterSet(ptr noundef %85) #27
  %idr_flag.i295 = getelementptr inbounds i8, ptr %85, i64 48
  %95 = load i32, ptr %idr_flag.i295, align 8
  %tobool12.not.i = icmp eq i32 %95, 0
  br i1 %tobool12.not.i, label %if.end14.i297, label %if.then13.i296

if.then13.i296:                                   ; preds = %if.end11.i294
  %number.i = getelementptr inbounds i8, ptr %0, i64 848712
  store i32 0, ptr %number.i, align 8
  br label %if.end14.i297

if.end14.i297:                                    ; preds = %if.then13.i296, %if.end11.i294
  %FrameHeightInMbs.i = getelementptr inbounds i8, ptr %0, i64 849004
  %96 = load i32, ptr %FrameHeightInMbs.i, align 4
  %field_pic_flag.i298 = getelementptr inbounds i8, ptr %85, i64 176
  %97 = load i32, ptr %field_pic_flag.i298, align 8
  %add.i = add i32 %97, 1
  %div.i = udiv i32 %96, %add.i
  %PicHeightInMbs.i = getelementptr inbounds i8, ptr %0, i64 849008
  store i32 %div.i, ptr %PicHeightInMbs.i, align 8
  %PicWidthInMbs.i = getelementptr inbounds i8, ptr %0, i64 848996
  %98 = load i32, ptr %PicWidthInMbs.i, align 4
  %mul.i = mul i32 %98, %div.i
  %PicSizeInMbs.i = getelementptr inbounds i8, ptr %0, i64 849012
  store i32 %mul.i, ptr %PicSizeInMbs.i, align 4
  %mul18.i = mul i32 %98, %96
  store i32 %mul18.i, ptr %FrameSizeInMbs, align 8
  %structure.i = getelementptr inbounds i8, ptr %85, i64 184
  %99 = load i32, ptr %structure.i, align 8
  %structure19.i = getelementptr inbounds i8, ptr %0, i64 848876
  store i32 %99, ptr %structure19.i, align 4
  %call.i = tail call i32 @fmo_init(ptr noundef nonnull %0, ptr noundef nonnull %85) #27
  %100 = load ptr, ptr %p_Dpb, align 8
  %view_id.i299 = getelementptr inbounds i8, ptr %85, i64 1176
  %101 = load i32, ptr %view_id.i299, align 8
  tail call void @update_ref_list(ptr noundef %100, i32 noundef %101) #27
  %102 = load ptr, ptr %p_Dpb, align 8
  %103 = load i32, ptr %view_id.i299, align 8
  tail call void @update_ltref_list(ptr noundef %102, i32 noundef %103) #27
  tail call void @update_pic_num(ptr noundef nonnull %85) #27
  %mb_aff_frame_flag.i = getelementptr inbounds i8, ptr %85, i64 128
  %104 = load i32, ptr %mb_aff_frame_flag.i, align 8
  tail call void @init_Deblock(ptr noundef nonnull %0, i32 noundef %104) #27
  %105 = load i32, ptr %iSliceNumOfCurrPic, align 8
  %cmp24129.i = icmp slt i32 %105, 1
  br i1 %cmp24129.i, label %init_picture_decoding.exit.thread317, label %for.body.lr.ph.i300

init_picture_decoding.exit.thread317:             ; preds = %if.end14.i297
  %iDeblockMode31146.i = getelementptr inbounds i8, ptr %0, i64 856824
  store i32 1, ptr %iDeblockMode31146.i, align 8
  br label %for.end

for.body.lr.ph.i300:                              ; preds = %if.end14.i297
  %106 = load ptr, ptr %ppSliceList3, align 8
  %wide.trip.count.i = zext nneg i32 %105 to i64
  %min.iters.check = icmp ult i32 %105, 4
  br i1 %min.iters.check, label %for.body.i301.preheader, label %vector.ph

vector.ph:                                        ; preds = %for.body.lr.ph.i300
  %n.vec = and i64 %wide.trip.count.i, 2147483644
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi i1 [ false, %vector.ph ], [ %130, %vector.body ]
  %vec.phi324 = phi i1 [ false, %vector.ph ], [ %131, %vector.body ]
  %vec.phi325 = phi i1 [ false, %vector.ph ], [ %132, %vector.body ]
  %vec.phi326 = phi i1 [ false, %vector.ph ], [ %133, %vector.body ]
  %107 = or disjoint i64 %index, 1
  %108 = or disjoint i64 %index, 2
  %109 = or disjoint i64 %index, 3
  %110 = getelementptr inbounds ptr, ptr %106, i64 %index
  %111 = getelementptr inbounds ptr, ptr %106, i64 %107
  %112 = getelementptr inbounds ptr, ptr %106, i64 %108
  %113 = getelementptr inbounds ptr, ptr %106, i64 %109
  %114 = load ptr, ptr %110, align 8
  %115 = load ptr, ptr %111, align 8
  %116 = load ptr, ptr %112, align 8
  %117 = load ptr, ptr %113, align 8
  %118 = getelementptr inbounds i8, ptr %114, i64 1220
  %119 = getelementptr inbounds i8, ptr %115, i64 1220
  %120 = getelementptr inbounds i8, ptr %116, i64 1220
  %121 = getelementptr inbounds i8, ptr %117, i64 1220
  %122 = load i16, ptr %118, align 4
  %123 = load i16, ptr %119, align 4
  %124 = load i16, ptr %120, align 4
  %125 = load i16, ptr %121, align 4
  %126 = icmp eq i16 %122, 0
  %127 = icmp eq i16 %123, 0
  %128 = icmp eq i16 %124, 0
  %129 = icmp eq i16 %125, 0
  %130 = or i1 %vec.phi, %126
  %131 = or i1 %vec.phi324, %127
  %132 = or i1 %vec.phi325, %128
  %133 = or i1 %vec.phi326, %129
  %index.next = add nuw i64 %index, 4
  %134 = icmp eq i64 %index.next, %n.vec
  br i1 %134, label %middle.block, label %vector.body, !llvm.loop !5

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or i1 %131, %130
  %bin.rdx327 = or i1 %132, %bin.rdx
  %bin.rdx328 = or i1 %133, %bin.rdx327
  %135 = freeze i1 %bin.rdx328
  %not. = xor i1 %135, true
  %rdx.select = zext i1 %not. to i32
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %for.end.i, label %for.body.i301.preheader

for.body.i301.preheader:                          ; preds = %middle.block, %for.body.lr.ph.i300
  %indvars.iv.i302.ph = phi i64 [ 0, %for.body.lr.ph.i300 ], [ %n.vec, %middle.block ]
  %iDeblockMode.0131.i.ph = phi i32 [ 1, %for.body.lr.ph.i300 ], [ %rdx.select, %middle.block ]
  %xtraiter = and i64 %wide.trip.count.i, 3
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.body.i301.prol.loopexit, label %for.body.i301.prol

for.body.i301.prol:                               ; preds = %for.body.i301.preheader, %for.body.i301.prol
  %indvars.iv.i302.prol = phi i64 [ %indvars.iv.next.i303.prol, %for.body.i301.prol ], [ %indvars.iv.i302.ph, %for.body.i301.preheader ]
  %iDeblockMode.0131.i.prol = phi i32 [ %spec.select.i.prol, %for.body.i301.prol ], [ %iDeblockMode.0131.i.ph, %for.body.i301.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %for.body.i301.prol ], [ 0, %for.body.i301.preheader ]
  %arrayidx26.i.prol = getelementptr inbounds ptr, ptr %106, i64 %indvars.iv.i302.prol
  %136 = load ptr, ptr %arrayidx26.i.prol, align 8
  %DFDisableIdc.i.prol = getelementptr inbounds i8, ptr %136, i64 1220
  %137 = load i16, ptr %DFDisableIdc.i.prol, align 4
  %cmp27.i.prol = icmp eq i16 %137, 0
  %spec.select.i.prol = select i1 %cmp27.i.prol, i32 0, i32 %iDeblockMode.0131.i.prol
  %indvars.iv.next.i303.prol = add nuw nsw i64 %indvars.iv.i302.prol, 1
  %prol.iter.next = add i64 %prol.iter, 1
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %for.body.i301.prol.loopexit, label %for.body.i301.prol, !llvm.loop !8

for.body.i301.prol.loopexit:                      ; preds = %for.body.i301.prol, %for.body.i301.preheader
  %spec.select.i.lcssa329.unr = phi i32 [ poison, %for.body.i301.preheader ], [ %spec.select.i.prol, %for.body.i301.prol ]
  %indvars.iv.i302.unr = phi i64 [ %indvars.iv.i302.ph, %for.body.i301.preheader ], [ %indvars.iv.next.i303.prol, %for.body.i301.prol ]
  %iDeblockMode.0131.i.unr = phi i32 [ %iDeblockMode.0131.i.ph, %for.body.i301.preheader ], [ %spec.select.i.prol, %for.body.i301.prol ]
  %138 = sub nsw i64 %indvars.iv.i302.ph, %wide.trip.count.i
  %139 = icmp ugt i64 %138, -4
  br i1 %139, label %for.end.i, label %for.body.i301.preheader.new

for.body.i301.preheader.new:                      ; preds = %for.body.i301.prol.loopexit
  %invariant.gep = getelementptr i8, ptr %106, i64 8
  %invariant.gep342 = getelementptr i8, ptr %106, i64 16
  %invariant.gep344 = getelementptr i8, ptr %106, i64 24
  br label %for.body.i301

for.body.i301:                                    ; preds = %for.body.i301, %for.body.i301.preheader.new
  %indvars.iv.i302 = phi i64 [ %indvars.iv.i302.unr, %for.body.i301.preheader.new ], [ %indvars.iv.next.i303.3, %for.body.i301 ]
  %iDeblockMode.0131.i = phi i32 [ %iDeblockMode.0131.i.unr, %for.body.i301.preheader.new ], [ %spec.select.i.3, %for.body.i301 ]
  %arrayidx26.i = getelementptr inbounds ptr, ptr %106, i64 %indvars.iv.i302
  %140 = load ptr, ptr %arrayidx26.i, align 8
  %DFDisableIdc.i = getelementptr inbounds i8, ptr %140, i64 1220
  %141 = load i16, ptr %DFDisableIdc.i, align 4
  %cmp27.i = icmp eq i16 %141, 0
  %gep = getelementptr ptr, ptr %invariant.gep, i64 %indvars.iv.i302
  %142 = load ptr, ptr %gep, align 8
  %DFDisableIdc.i.1 = getelementptr inbounds i8, ptr %142, i64 1220
  %143 = load i16, ptr %DFDisableIdc.i.1, align 4
  %cmp27.i.1 = icmp eq i16 %143, 0
  %gep343 = getelementptr ptr, ptr %invariant.gep342, i64 %indvars.iv.i302
  %144 = load ptr, ptr %gep343, align 8
  %DFDisableIdc.i.2 = getelementptr inbounds i8, ptr %144, i64 1220
  %145 = load i16, ptr %DFDisableIdc.i.2, align 4
  %cmp27.i.2 = icmp eq i16 %145, 0
  %gep345 = getelementptr ptr, ptr %invariant.gep344, i64 %indvars.iv.i302
  %146 = load ptr, ptr %gep345, align 8
  %DFDisableIdc.i.3 = getelementptr inbounds i8, ptr %146, i64 1220
  %147 = load i16, ptr %DFDisableIdc.i.3, align 4
  %cmp27.i.3 = icmp eq i16 %147, 0
  %148 = select i1 %cmp27.i.3, i1 true, i1 %cmp27.i.2
  %149 = select i1 %148, i1 true, i1 %cmp27.i.1
  %150 = select i1 %149, i1 true, i1 %cmp27.i
  %spec.select.i.3 = select i1 %150, i32 0, i32 %iDeblockMode.0131.i
  %indvars.iv.next.i303.3 = add nuw nsw i64 %indvars.iv.i302, 4
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i303.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %for.end.i, label %for.body.i301, !llvm.loop !10

for.end.i:                                        ; preds = %for.body.i301.prol.loopexit, %for.body.i301, %middle.block
  %spec.select.i.lcssa = phi i32 [ %rdx.select, %middle.block ], [ %spec.select.i.lcssa329.unr, %for.body.i301.prol.loopexit ], [ %spec.select.i.3, %for.body.i301 ]
  %iDeblockMode31.i = getelementptr inbounds i8, ptr %0, i64 856824
  store i32 %spec.select.i.lcssa, ptr %iDeblockMode31.i, align 8
  %cmp33.i.not = icmp eq i32 %spec.select.i.lcssa, 1
  br i1 %cmp33.i.not, label %for.body40.lr.ph.i, label %for.body.lr.ph

for.body40.lr.ph.i:                               ; preds = %for.end.i
  %separate_colour_plane_flag.i = getelementptr inbounds i8, ptr %0, i64 849280
  %mb_data_JV.i = getelementptr inbounds i8, ptr %0, i64 848896
  %mb_data.i = getelementptr inbounds i8, ptr %0, i64 848888
  br label %for.body40.i

for.body40.i:                                     ; preds = %for.inc67.i, %for.body40.lr.ph.i
  %151 = phi i32 [ %105, %for.body40.lr.ph.i ], [ %164, %for.inc67.i ]
  %indvars.iv142.i = phi i64 [ 0, %for.body40.lr.ph.i ], [ %indvars.iv.next143.i, %for.inc67.i ]
  %152 = load ptr, ptr %ppSliceList3, align 8
  %arrayidx43.i = getelementptr inbounds ptr, ptr %152, i64 %indvars.iv142.i
  %153 = load ptr, ptr %arrayidx43.i, align 8
  %current_slice_nr.i = getelementptr inbounds i8, ptr %153, i64 116
  %154 = load i16, ptr %current_slice_nr.i, align 4
  %155 = load i32, ptr %separate_colour_plane_flag.i, align 8
  %cmp45.not.i = icmp eq i32 %155, 0
  br i1 %cmp45.not.i, label %if.end50.i, label %if.then47.i

if.then47.i:                                      ; preds = %for.body40.i
  %colour_plane_id.i = getelementptr inbounds i8, ptr %153, i64 216
  %156 = load i32, ptr %colour_plane_id.i, align 8
  %idxprom48.i = sext i32 %156 to i64
  %arrayidx49.i = getelementptr inbounds [3 x ptr], ptr %mb_data_JV.i, i64 0, i64 %idxprom48.i
  br label %if.end50.i

if.end50.i:                                       ; preds = %if.then47.i, %for.body40.i
  %pMBData.0.in.i = phi ptr [ %arrayidx49.i, %if.then47.i ], [ %mb_data.i, %for.body40.i ]
  %pMBData.0.i = load ptr, ptr %pMBData.0.in.i, align 8
  %start_mb_nr.i = getelementptr inbounds i8, ptr %153, i64 188
  %157 = load i32, ptr %start_mb_nr.i, align 4
  %mb_aff_frame_flag51.i = getelementptr inbounds i8, ptr %153, i64 128
  %158 = load i32, ptr %mb_aff_frame_flag51.i, align 8
  %add52.i = add nsw i32 %158, 1
  %mul53.i = mul nsw i32 %add52.i, %157
  %end_mb_nr_plus1.i = getelementptr inbounds i8, ptr %153, i64 192
  %159 = load i32, ptr %end_mb_nr_plus1.i, align 8
  %mul57133.i = mul nsw i32 %add52.i, %159
  %cmp58134.i = icmp slt i32 %mul53.i, %mul57133.i
  br i1 %cmp58134.i, label %for.body60.preheader.i, label %for.inc67.i

for.body60.preheader.i:                           ; preds = %if.end50.i
  %160 = sext i32 %mul53.i to i64
  br label %for.body60.i

for.body60.i:                                     ; preds = %for.body60.i, %for.body60.preheader.i
  %indvars.iv139.i = phi i64 [ %160, %for.body60.preheader.i ], [ %indvars.iv.next140.i, %for.body60.i ]
  %slice_nr.i = getelementptr inbounds %struct.macroblock, ptr %pMBData.0.i, i64 %indvars.iv139.i, i32 21
  store i16 %154, ptr %slice_nr.i, align 4
  %indvars.iv.next140.i = add nsw i64 %indvars.iv139.i, 1
  %161 = load i32, ptr %end_mb_nr_plus1.i, align 8
  %162 = load i32, ptr %mb_aff_frame_flag51.i, align 8
  %add56.i = add nsw i32 %162, 1
  %mul57.i = mul nsw i32 %add56.i, %161
  %163 = sext i32 %mul57.i to i64
  %cmp58.i = icmp slt i64 %indvars.iv.next140.i, %163
  br i1 %cmp58.i, label %for.body60.i, label %for.inc67.loopexit.i

for.inc67.loopexit.i:                             ; preds = %for.body60.i
  %.pre.i304 = load i32, ptr %iSliceNumOfCurrPic, align 8
  br label %for.inc67.i

for.inc67.i:                                      ; preds = %for.inc67.loopexit.i, %if.end50.i
  %164 = phi i32 [ %.pre.i304, %for.inc67.loopexit.i ], [ %151, %if.end50.i ]
  %indvars.iv.next143.i = add nuw nsw i64 %indvars.iv142.i, 1
  %165 = sext i32 %164 to i64
  %cmp38.i = icmp slt i64 %indvars.iv.next143.i, %165
  br i1 %cmp38.i, label %for.body40.i, label %init_picture_decoding.exit

init_picture_decoding.exit:                       ; preds = %for.inc67.i
  %166 = icmp sgt i32 %164, 0
  br i1 %166, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %for.end.i, %init_picture_decoding.exit
  %erc_mvperMB151 = getelementptr inbounds i8, ptr %0, i64 856512
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %arrayidx144 = getelementptr inbounds ptr, ptr %ppSliceList.0.ph, i64 %indvars.iv
  %167 = load ptr, ptr %arrayidx144, align 8
  %current_header145 = getelementptr inbounds i8, ptr %167, i64 204
  %168 = load i32, ptr %current_header145, align 4
  tail call void @init_slice(ptr noundef nonnull %0, ptr noundef %167)
  tail call void @decode_slice(ptr noundef %167, i32 noundef %168)
  %169 = load i32, ptr %iNumOfSlicesDecoded, align 8
  %inc147 = add nsw i32 %169, 1
  store i32 %inc147, ptr %iNumOfSlicesDecoded, align 8
  %num_dec_mb148 = getelementptr inbounds i8, ptr %167, i64 112
  %170 = load i32, ptr %num_dec_mb148, align 8
  %171 = load i32, ptr %num_dec_mb, align 4
  %add150 = add i32 %171, %170
  store i32 %add150, ptr %num_dec_mb, align 4
  %erc_mvperMB = getelementptr inbounds i8, ptr %167, i64 13504
  %172 = load i32, ptr %erc_mvperMB, align 8
  %173 = load i32, ptr %erc_mvperMB151, align 8
  %add152 = add nsw i32 %173, %172
  store i32 %add152, ptr %erc_mvperMB151, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %174 = load i32, ptr %iSliceNumOfCurrPic, align 8
  %175 = sext i32 %174 to i64
  %cmp141 = icmp slt i64 %indvars.iv.next, %175
  br i1 %cmp141, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %init_picture_decoding.exit.thread317, %init_picture_decoding.exit
  tail call void @exit_picture(ptr noundef nonnull %0, ptr noundef nonnull %dec_picture)
  %176 = load ptr, ptr %ppSliceList.0.ph, align 8
  %frame_num156 = getelementptr inbounds i8, ptr %176, i64 172
  %177 = load i32, ptr %frame_num156, align 4
  store i32 %177, ptr %previous_frame_num, align 8
  ret i32 %current_header.1
}

declare void @MakePPSavailable(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @UseParameterSet(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @init_picture(ptr noundef %p_Vid, ptr noundef %currSlice, ptr nocapture noundef readonly %p_Inp) unnamed_addr #2 {
entry:
  %active_sps1 = getelementptr inbounds i8, ptr %p_Vid, i64 16
  %0 = load ptr, ptr %active_sps1, align 8
  %p_Dpb2 = getelementptr inbounds i8, ptr %currSlice, i64 40
  %1 = load ptr, ptr %p_Dpb2, align 8
  %bFrameInit = getelementptr inbounds i8, ptr %p_Vid, i64 856864
  store i32 1, ptr %bFrameInit, align 8
  %dec_picture3 = getelementptr inbounds i8, ptr %p_Vid, i64 856456
  %2 = load ptr, ptr %dec_picture3, align 8
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @exit_picture(ptr noundef nonnull %p_Vid, ptr noundef nonnull %dec_picture3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %recovery_point = getelementptr inbounds i8, ptr %p_Vid, i64 849260
  %3 = load i32, ptr %recovery_point, align 4
  %tobool5.not = icmp eq i32 %3, 0
  br i1 %tobool5.not, label %if.end7, label %if.then6

if.then6:                                         ; preds = %if.end
  %frame_num = getelementptr inbounds i8, ptr %currSlice, i64 172
  %4 = load i32, ptr %frame_num, align 4
  %recovery_frame_cnt = getelementptr inbounds i8, ptr %p_Vid, i64 849268
  %5 = load i32, ptr %recovery_frame_cnt, align 4
  %add = add i32 %5, %4
  %MaxFrameNum = getelementptr inbounds i8, ptr %p_Vid, i64 848992
  %6 = load i32, ptr %MaxFrameNum, align 8
  %rem = urem i32 %add, %6
  %recovery_frame_num = getelementptr inbounds i8, ptr %p_Vid, i64 849272
  store i32 %rem, ptr %recovery_frame_num, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end
  %idr_flag = getelementptr inbounds i8, ptr %currSlice, i64 48
  %7 = load i32, ptr %idr_flag, align 8
  %tobool8.not = icmp eq i32 %7, 0
  br i1 %tobool8.not, label %if.end12, label %if.then9

if.then9:                                         ; preds = %if.end7
  %frame_num10 = getelementptr inbounds i8, ptr %currSlice, i64 172
  %8 = load i32, ptr %frame_num10, align 4
  %recovery_frame_num11 = getelementptr inbounds i8, ptr %p_Vid, i64 849272
  store i32 %8, ptr %recovery_frame_num11, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.end7
  br i1 %tobool5.not, label %land.lhs.true, label %if.end49

land.lhs.true:                                    ; preds = %if.end12
  %frame_num14 = getelementptr inbounds i8, ptr %currSlice, i64 172
  %9 = load i32, ptr %frame_num14, align 4
  %pre_frame_num = getelementptr inbounds i8, ptr %p_Vid, i64 848944
  %10 = load i32, ptr %pre_frame_num, align 8
  %cmp15.not = icmp eq i32 %9, %10
  br i1 %cmp15.not, label %if.end49, label %land.lhs.true16

land.lhs.true16:                                  ; preds = %land.lhs.true
  %add19 = add i32 %10, 1
  %MaxFrameNum20 = getelementptr inbounds i8, ptr %p_Vid, i64 848992
  %11 = load i32, ptr %MaxFrameNum20, align 8
  %rem21 = urem i32 %add19, %11
  %cmp22.not = icmp eq i32 %9, %rem21
  br i1 %cmp22.not, label %if.end49, label %if.then23

if.then23:                                        ; preds = %land.lhs.true16
  %gaps_in_frame_num_value_allowed_flag = getelementptr inbounds i8, ptr %0, i64 3124
  %12 = load i32, ptr %gaps_in_frame_num_value_allowed_flag, align 4
  %cmp24 = icmp eq i32 %12, 0
  br i1 %cmp24, label %if.then25, label %if.end44

if.then25:                                        ; preds = %if.then23
  %conceal_mode = getelementptr inbounds i8, ptr %p_Inp, i64 3980
  %13 = load i32, ptr %conceal_mode, align 4
  %cmp26.not = icmp eq i32 %13, 0
  br i1 %cmp26.not, label %if.else42, label %if.then27

if.then27:                                        ; preds = %if.then25
  %cmp33 = icmp ult i32 %9, %rem21
  %conceal_mode35 = getelementptr inbounds i8, ptr %p_Vid, i64 849240
  %IDR_concealment_flag = getelementptr inbounds i8, ptr %p_Vid, i64 849252
  br i1 %cmp33, label %if.then34, label %if.else

if.then34:                                        ; preds = %if.then27
  store i32 1, ptr %conceal_mode35, align 8
  store i32 1, ptr %IDR_concealment_flag, align 4
  tail call void @conceal_lost_frames(ptr noundef %1, ptr noundef nonnull %currSlice) #27
  %14 = load i32, ptr %conceal_mode, align 4
  store i32 %14, ptr %conceal_mode35, align 8
  br label %if.end44

if.else:                                          ; preds = %if.then27
  store i32 %13, ptr %conceal_mode35, align 8
  store i32 0, ptr %IDR_concealment_flag, align 4
  tail call void @conceal_lost_frames(ptr noundef %1, ptr noundef nonnull %currSlice) #27
  br label %if.end44

if.else42:                                        ; preds = %if.then25
  tail call void @error(ptr noundef nonnull @.str.47, i32 noundef 100) #27
  br label %if.end44

if.end44:                                         ; preds = %if.else42, %if.else, %if.then34, %if.then23
  %conceal_mode45 = getelementptr inbounds i8, ptr %p_Vid, i64 849240
  %15 = load i32, ptr %conceal_mode45, align 8
  %cmp46 = icmp eq i32 %15, 0
  br i1 %cmp46, label %if.then47, label %if.end49

if.then47:                                        ; preds = %if.end44
  tail call void @fill_frame_num_gap(ptr noundef nonnull %p_Vid, ptr noundef nonnull %currSlice) #27
  br label %if.end49

if.end49:                                         ; preds = %if.end44, %if.then47, %land.lhs.true16, %land.lhs.true, %if.end12
  %nal_reference_idc = getelementptr inbounds i8, ptr %currSlice, i64 56
  %16 = load i32, ptr %nal_reference_idc, align 8
  %tobool50.not = icmp eq i32 %16, 0
  br i1 %tobool50.not, label %if.end54, label %if.then51

if.then51:                                        ; preds = %if.end49
  %frame_num52 = getelementptr inbounds i8, ptr %currSlice, i64 172
  %17 = load i32, ptr %frame_num52, align 4
  %pre_frame_num53 = getelementptr inbounds i8, ptr %p_Vid, i64 848944
  store i32 %17, ptr %pre_frame_num53, align 8
  br label %if.end54

if.end54:                                         ; preds = %if.then51, %if.end49
  tail call void @decode_poc(ptr noundef nonnull %p_Vid, ptr noundef nonnull %currSlice) #27
  %recovery_frame_num55 = getelementptr inbounds i8, ptr %p_Vid, i64 849272
  %18 = load i32, ptr %recovery_frame_num55, align 8
  %frame_num56 = getelementptr inbounds i8, ptr %currSlice, i64 172
  %19 = load i32, ptr %frame_num56, align 4
  %cmp57 = icmp eq i32 %18, %19
  br i1 %cmp57, label %land.lhs.true58, label %if.end62

land.lhs.true58:                                  ; preds = %if.end54
  %recovery_poc = getelementptr inbounds i8, ptr %p_Vid, i64 849276
  %20 = load i32, ptr %recovery_poc, align 4
  %cmp59 = icmp eq i32 %20, 2147483647
  br i1 %cmp59, label %if.then60, label %if.end62

if.then60:                                        ; preds = %land.lhs.true58
  %framepoc = getelementptr inbounds i8, ptr %currSlice, i64 76
  %21 = load i32, ptr %framepoc, align 4
  store i32 %21, ptr %recovery_poc, align 4
  br label %if.end62

if.end62:                                         ; preds = %if.then60, %land.lhs.true58, %if.end54
  %22 = load i32, ptr %nal_reference_idc, align 8
  %tobool64.not = icmp eq i32 %22, 0
  br i1 %tobool64.not, label %if.end67, label %if.then65

if.then65:                                        ; preds = %if.end62
  %framepoc66 = getelementptr inbounds i8, ptr %currSlice, i64 76
  %23 = load i32, ptr %framepoc66, align 4
  %last_ref_pic_poc = getelementptr inbounds i8, ptr %p_Vid, i64 849228
  store i32 %23, ptr %last_ref_pic_poc, align 4
  br label %if.end67

if.end67:                                         ; preds = %if.then65, %if.end62
  %structure = getelementptr inbounds i8, ptr %currSlice, i64 184
  %24 = load i32, ptr %structure, align 8
  %width = getelementptr inbounds i8, ptr %p_Vid, i64 848780
  %25 = load i32, ptr %width, align 4
  %height = getelementptr inbounds i8, ptr %p_Vid, i64 848784
  %26 = load i32, ptr %height, align 8
  %width_cr = getelementptr inbounds i8, ptr %p_Vid, i64 848788
  %27 = load i32, ptr %width_cr, align 4
  %height_cr = getelementptr inbounds i8, ptr %p_Vid, i64 848792
  %28 = load i32, ptr %height_cr, align 8
  %call = tail call ptr @alloc_storable_picture(ptr noundef nonnull %p_Vid, i32 noundef %24, i32 noundef %25, i32 noundef %26, i32 noundef %27, i32 noundef %28) #27
  store ptr %call, ptr %dec_picture3, align 8
  %toppoc = getelementptr inbounds i8, ptr %currSlice, i64 68
  %29 = load i32, ptr %toppoc, align 4
  %top_poc = getelementptr inbounds i8, ptr %call, i64 8
  store i32 %29, ptr %top_poc, align 8
  %bottompoc = getelementptr inbounds i8, ptr %currSlice, i64 72
  %30 = load i32, ptr %bottompoc, align 8
  %bottom_poc = getelementptr inbounds i8, ptr %call, i64 12
  store i32 %30, ptr %bottom_poc, align 4
  %framepoc69 = getelementptr inbounds i8, ptr %currSlice, i64 76
  %31 = load i32, ptr %framepoc69, align 4
  %frame_poc = getelementptr inbounds i8, ptr %call, i64 16
  store i32 %31, ptr %frame_poc, align 8
  %qp = getelementptr inbounds i8, ptr %currSlice, i64 148
  %32 = load i32, ptr %qp, align 4
  %qp70 = getelementptr inbounds i8, ptr %call, i64 296
  store i32 %32, ptr %qp70, align 8
  %slice_qp_delta = getelementptr inbounds i8, ptr %currSlice, i64 152
  %33 = load i32, ptr %slice_qp_delta, align 8
  %slice_qp_delta71 = getelementptr inbounds i8, ptr %call, i64 308
  store i32 %33, ptr %slice_qp_delta71, align 4
  %active_pps = getelementptr inbounds i8, ptr %p_Vid, i64 8
  %34 = load ptr, ptr %active_pps, align 8
  %chroma_qp_index_offset = getelementptr inbounds i8, ptr %34, i64 2192
  %35 = load i32, ptr %chroma_qp_index_offset, align 8
  %chroma_qp_offset = getelementptr inbounds i8, ptr %call, i64 300
  store i32 %35, ptr %chroma_qp_offset, align 4
  %36 = load ptr, ptr %active_pps, align 8
  %second_chroma_qp_index_offset = getelementptr inbounds i8, ptr %36, i64 2196
  %37 = load i32, ptr %second_chroma_qp_index_offset, align 4
  %arrayidx74 = getelementptr inbounds i8, ptr %call, i64 304
  store i32 %37, ptr %arrayidx74, align 4
  %38 = load i32, ptr %structure, align 8
  %cmp76 = icmp eq i32 %38, 0
  br i1 %cmp76, label %cond.true, label %cond.end

cond.true:                                        ; preds = %if.end67
  %mb_aff_frame_flag = getelementptr inbounds i8, ptr %currSlice, i64 128
  %39 = load i32, ptr %mb_aff_frame_flag, align 8
  %tobool77.not = icmp eq i32 %39, 0
  %cond = select i1 %tobool77.not, i32 0, i32 3
  br label %cond.end

cond.end:                                         ; preds = %if.end67, %cond.true
  %cond78 = phi i32 [ %cond, %cond.true ], [ 1, %if.end67 ]
  %iCodingType = getelementptr inbounds i8, ptr %call, i64 388
  store i32 %cond78, ptr %iCodingType, align 4
  %view_id = getelementptr inbounds i8, ptr %currSlice, i64 1176
  %40 = load i32, ptr %view_id, align 8
  %view_id79 = getelementptr inbounds i8, ptr %call, i64 344
  store i32 %40, ptr %view_id79, align 8
  %inter_view_flag = getelementptr inbounds i8, ptr %currSlice, i64 1180
  %41 = load i32, ptr %inter_view_flag, align 4
  %inter_view_flag80 = getelementptr inbounds i8, ptr %call, i64 348
  store i32 %41, ptr %inter_view_flag80, align 4
  %anchor_pic_flag = getelementptr inbounds i8, ptr %currSlice, i64 1184
  %42 = load i32, ptr %anchor_pic_flag, align 8
  %anchor_pic_flag81 = getelementptr inbounds i8, ptr %call, i64 352
  store i32 %42, ptr %anchor_pic_flag81, align 8
  %erc_errorVar = getelementptr inbounds i8, ptr %p_Vid, i64 856504
  %43 = load ptr, ptr %erc_errorVar, align 8
  %PicSizeInMbs = getelementptr inbounds i8, ptr %p_Vid, i64 849012
  %44 = load i32, ptr %PicSizeInMbs, align 4
  %size_x = getelementptr inbounds i8, ptr %call, i64 64
  %45 = load i32, ptr %size_x, align 8
  tail call void @ercReset(ptr noundef %43, i32 noundef %44, i32 noundef %44, i32 noundef %45) #27
  %erc_mvperMB = getelementptr inbounds i8, ptr %p_Vid, i64 856512
  store i32 0, ptr %erc_mvperMB, align 8
  %46 = load i32, ptr %structure, align 8
  switch i32 %46, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb85
    i32 0, label %sw.bb92
  ]

sw.bb:                                            ; preds = %cond.end
  %47 = load i32, ptr %toppoc, align 4
  %poc = getelementptr inbounds i8, ptr %call, i64 4
  store i32 %47, ptr %poc, align 4
  %number = getelementptr inbounds i8, ptr %p_Vid, i64 848712
  %48 = load i32, ptr %number, align 8
  %mul = shl nsw i32 %48, 1
  store i32 %mul, ptr %number, align 8
  br label %sw.epilog

sw.bb85:                                          ; preds = %cond.end
  %49 = load i32, ptr %bottompoc, align 8
  %poc87 = getelementptr inbounds i8, ptr %call, i64 4
  store i32 %49, ptr %poc87, align 4
  %number88 = getelementptr inbounds i8, ptr %p_Vid, i64 848712
  %50 = load i32, ptr %number88, align 8
  %mul89 = shl nsw i32 %50, 1
  %add90 = or disjoint i32 %mul89, 1
  store i32 %add90, ptr %number88, align 8
  br label %sw.epilog

sw.bb92:                                          ; preds = %cond.end
  %51 = load i32, ptr %framepoc69, align 4
  %poc94 = getelementptr inbounds i8, ptr %call, i64 4
  store i32 %51, ptr %poc94, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %cond.end
  tail call void @error(ptr noundef nonnull @.str.48, i32 noundef 235) #27
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb92, %sw.bb85, %sw.bb
  %type = getelementptr inbounds i8, ptr %p_Vid, i64 848776
  %52 = load i32, ptr %type, align 8
  %cmp95 = icmp sgt i32 %52, 4
  br i1 %cmp95, label %if.then96, label %if.end99

if.then96:                                        ; preds = %sw.epilog
  %call97 = tail call i32 @set_ec_flag(ptr noundef nonnull %p_Vid, i32 noundef 1) #27
  store i32 0, ptr %type, align 8
  br label %if.end99

if.end99:                                         ; preds = %if.then96, %sw.epilog
  %53 = load ptr, ptr %active_pps, align 8
  %entropy_coding_mode_flag = getelementptr inbounds i8, ptr %53, i64 12
  %54 = load i32, ptr %entropy_coding_mode_flag, align 4
  %cmp101 = icmp eq i32 %54, 0
  br i1 %cmp101, label %if.then102, label %if.end109

if.then102:                                       ; preds = %if.end99
  %nz_coeff = getelementptr inbounds i8, ptr %p_Vid, i64 848832
  %55 = load ptr, ptr %nz_coeff, align 8
  %56 = load ptr, ptr %55, align 8
  %57 = load ptr, ptr %56, align 8
  %58 = load ptr, ptr %57, align 8
  %59 = load i32, ptr %PicSizeInMbs, align 4
  %mul107 = mul i32 %59, 48
  %conv = zext i32 %mul107 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %58, i8 -1, i64 %conv, i1 false)
  br label %if.end109

if.end109:                                        ; preds = %if.then102, %if.end99
  %separate_colour_plane_flag = getelementptr inbounds i8, ptr %p_Vid, i64 849280
  %60 = load i32, ptr %separate_colour_plane_flag, align 8
  %cmp110.not = icmp eq i32 %60, 0
  br i1 %cmp110.not, label %if.else148, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end109
  %intra_block_JV = getelementptr inbounds i8, ptr %p_Vid, i64 848752
  %ipredmode_JV = getelementptr inbounds i8, ptr %p_Vid, i64 848808
  %FrameHeightInMbs = getelementptr inbounds i8, ptr %p_Vid, i64 849004
  %PicWidthInMbs = getelementptr inbounds i8, ptr %p_Vid, i64 848996
  %61 = load ptr, ptr %intra_block_JV, align 8
  %62 = load i32, ptr %PicSizeInMbs, align 4
  %cmp120498 = icmp sgt i32 %62, 0
  br i1 %cmp120498, label %for.body122.preheader, label %for.end

for.body122.preheader:                            ; preds = %for.cond.preheader
  %mb_data_JV = getelementptr inbounds i8, ptr %p_Vid, i64 848896
  %63 = load ptr, ptr %mb_data_JV, align 8
  br label %for.body122

for.body122:                                      ; preds = %for.body122.preheader, %for.body122
  %i.0500 = phi i32 [ %inc, %for.body122 ], [ 0, %for.body122.preheader ]
  %currMB.0499 = phi ptr [ %incdec.ptr, %for.body122 ], [ %63, %for.body122.preheader ]
  %incdec.ptr = getelementptr inbounds i8, ptr %currMB.0499, i64 480
  %slice_nr.i = getelementptr inbounds i8, ptr %currMB.0499, i64 108
  store i16 -1, ptr %slice_nr.i, align 4
  %ei_flag.i = getelementptr inbounds i8, ptr %currMB.0499, i64 110
  store i8 1, ptr %ei_flag.i, align 2
  %dpl_flag.i = getelementptr inbounds i8, ptr %currMB.0499, i64 111
  store i8 0, ptr %dpl_flag.i, align 1
  %inc = add nuw nsw i32 %i.0500, 1
  %64 = load i32, ptr %PicSizeInMbs, align 4
  %cmp120 = icmp slt i32 %inc, %64
  br i1 %cmp120, label %for.body122, label %for.end

for.end:                                          ; preds = %for.body122, %for.cond.preheader
  %65 = load ptr, ptr %ipredmode_JV, align 8
  %66 = load ptr, ptr %65, align 8
  %67 = load i32, ptr %FrameHeightInMbs, align 4
  %mul126 = shl i32 %67, 4
  %68 = load i32, ptr %PicWidthInMbs, align 4
  %mul127 = mul i32 %mul126, %68
  %conv.i = sext i32 %mul127 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %66, i8 2, i64 %conv.i, i1 false)
  %69 = load ptr, ptr %active_pps, align 8
  %constrained_intra_pred_flag = getelementptr inbounds i8, ptr %69, i64 2204
  %70 = load i32, ptr %constrained_intra_pred_flag, align 4
  %tobool132.not = icmp eq i32 %70, 0
  %.pre = load i32, ptr %PicSizeInMbs, align 4
  br i1 %tobool132.not, label %if.end144, label %for.cond134.preheader

for.cond134.preheader:                            ; preds = %for.end
  %cmp136501 = icmp sgt i32 %.pre, 0
  br i1 %cmp136501, label %for.body138, label %if.end144.thread

if.end144.thread:                                 ; preds = %for.cond134.preheader
  %arrayidx117.1518 = getelementptr inbounds i8, ptr %p_Vid, i64 848760
  %71 = load ptr, ptr %arrayidx117.1518, align 8
  br label %for.end.1

for.body138:                                      ; preds = %for.cond134.preheader, %for.body138
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body138 ], [ 0, %for.cond134.preheader ]
  %arrayidx140 = getelementptr inbounds i8, ptr %61, i64 %indvars.iv
  store i8 1, ptr %arrayidx140, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %72 = load i32, ptr %PicSizeInMbs, align 4
  %73 = sext i32 %72 to i64
  %cmp136 = icmp slt i64 %indvars.iv.next, %73
  br i1 %cmp136, label %for.body138, label %if.end144

if.end144:                                        ; preds = %for.body138, %for.end
  %74 = phi i32 [ %.pre, %for.end ], [ %72, %for.body138 ]
  %arrayidx117.1 = getelementptr inbounds i8, ptr %p_Vid, i64 848760
  %75 = load ptr, ptr %arrayidx117.1, align 8
  %cmp120498.1 = icmp sgt i32 %74, 0
  br i1 %cmp120498.1, label %for.body122.preheader.1, label %for.end.1

for.body122.preheader.1:                          ; preds = %if.end144
  %arrayidx115.1 = getelementptr inbounds i8, ptr %p_Vid, i64 848904
  %76 = load ptr, ptr %arrayidx115.1, align 8
  br label %for.body122.1

for.body122.1:                                    ; preds = %for.body122.1, %for.body122.preheader.1
  %i.0500.1 = phi i32 [ %inc.1, %for.body122.1 ], [ 0, %for.body122.preheader.1 ]
  %currMB.0499.1 = phi ptr [ %incdec.ptr.1, %for.body122.1 ], [ %76, %for.body122.preheader.1 ]
  %incdec.ptr.1 = getelementptr inbounds i8, ptr %currMB.0499.1, i64 480
  %slice_nr.i.1 = getelementptr inbounds i8, ptr %currMB.0499.1, i64 108
  store i16 -1, ptr %slice_nr.i.1, align 4
  %ei_flag.i.1 = getelementptr inbounds i8, ptr %currMB.0499.1, i64 110
  store i8 1, ptr %ei_flag.i.1, align 2
  %dpl_flag.i.1 = getelementptr inbounds i8, ptr %currMB.0499.1, i64 111
  store i8 0, ptr %dpl_flag.i.1, align 1
  %inc.1 = add nuw nsw i32 %i.0500.1, 1
  %77 = load i32, ptr %PicSizeInMbs, align 4
  %cmp120.1 = icmp slt i32 %inc.1, %77
  br i1 %cmp120.1, label %for.body122.1, label %for.end.1

for.end.1:                                        ; preds = %for.body122.1, %if.end144.thread, %if.end144
  %78 = phi ptr [ %71, %if.end144.thread ], [ %75, %if.end144 ], [ %75, %for.body122.1 ]
  %arrayidx124.1 = getelementptr inbounds i8, ptr %p_Vid, i64 848816
  %79 = load ptr, ptr %arrayidx124.1, align 8
  %80 = load ptr, ptr %79, align 8
  %81 = load i32, ptr %FrameHeightInMbs, align 4
  %mul126.1 = shl i32 %81, 4
  %82 = load i32, ptr %PicWidthInMbs, align 4
  %mul127.1 = mul i32 %mul126.1, %82
  %conv.i.1 = sext i32 %mul127.1 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %80, i8 2, i64 %conv.i.1, i1 false)
  %83 = load ptr, ptr %active_pps, align 8
  %constrained_intra_pred_flag.1 = getelementptr inbounds i8, ptr %83, i64 2204
  %84 = load i32, ptr %constrained_intra_pred_flag.1, align 4
  %tobool132.not.1 = icmp eq i32 %84, 0
  %.pre516 = load i32, ptr %PicSizeInMbs, align 4
  br i1 %tobool132.not.1, label %if.end144.1, label %for.cond134.preheader.1

for.cond134.preheader.1:                          ; preds = %for.end.1
  %cmp136501.1 = icmp sgt i32 %.pre516, 0
  br i1 %cmp136501.1, label %for.body138.1, label %if.end144.1.thread

if.end144.1.thread:                               ; preds = %for.cond134.preheader.1
  %arrayidx117.2520 = getelementptr inbounds i8, ptr %p_Vid, i64 848768
  %85 = load ptr, ptr %arrayidx117.2520, align 8
  br label %for.end.2

for.body138.1:                                    ; preds = %for.cond134.preheader.1, %for.body138.1
  %indvars.iv.1 = phi i64 [ %indvars.iv.next.1, %for.body138.1 ], [ 0, %for.cond134.preheader.1 ]
  %arrayidx140.1 = getelementptr inbounds i8, ptr %78, i64 %indvars.iv.1
  store i8 1, ptr %arrayidx140.1, align 1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1
  %86 = load i32, ptr %PicSizeInMbs, align 4
  %87 = sext i32 %86 to i64
  %cmp136.1 = icmp slt i64 %indvars.iv.next.1, %87
  br i1 %cmp136.1, label %for.body138.1, label %if.end144.1

if.end144.1:                                      ; preds = %for.body138.1, %for.end.1
  %88 = phi i32 [ %.pre516, %for.end.1 ], [ %86, %for.body138.1 ]
  %arrayidx117.2 = getelementptr inbounds i8, ptr %p_Vid, i64 848768
  %89 = load ptr, ptr %arrayidx117.2, align 8
  %cmp120498.2 = icmp sgt i32 %88, 0
  br i1 %cmp120498.2, label %for.body122.preheader.2, label %for.end.2

for.body122.preheader.2:                          ; preds = %if.end144.1
  %arrayidx115.2 = getelementptr inbounds i8, ptr %p_Vid, i64 848912
  %90 = load ptr, ptr %arrayidx115.2, align 8
  br label %for.body122.2

for.body122.2:                                    ; preds = %for.body122.2, %for.body122.preheader.2
  %i.0500.2 = phi i32 [ %inc.2, %for.body122.2 ], [ 0, %for.body122.preheader.2 ]
  %currMB.0499.2 = phi ptr [ %incdec.ptr.2, %for.body122.2 ], [ %90, %for.body122.preheader.2 ]
  %incdec.ptr.2 = getelementptr inbounds i8, ptr %currMB.0499.2, i64 480
  %slice_nr.i.2 = getelementptr inbounds i8, ptr %currMB.0499.2, i64 108
  store i16 -1, ptr %slice_nr.i.2, align 4
  %ei_flag.i.2 = getelementptr inbounds i8, ptr %currMB.0499.2, i64 110
  store i8 1, ptr %ei_flag.i.2, align 2
  %dpl_flag.i.2 = getelementptr inbounds i8, ptr %currMB.0499.2, i64 111
  store i8 0, ptr %dpl_flag.i.2, align 1
  %inc.2 = add nuw nsw i32 %i.0500.2, 1
  %91 = load i32, ptr %PicSizeInMbs, align 4
  %cmp120.2 = icmp slt i32 %inc.2, %91
  br i1 %cmp120.2, label %for.body122.2, label %for.end.2

for.end.2:                                        ; preds = %for.body122.2, %if.end144.1.thread, %if.end144.1
  %92 = phi ptr [ %85, %if.end144.1.thread ], [ %89, %if.end144.1 ], [ %89, %for.body122.2 ]
  %arrayidx124.2 = getelementptr inbounds i8, ptr %p_Vid, i64 848824
  %93 = load ptr, ptr %arrayidx124.2, align 8
  %94 = load ptr, ptr %93, align 8
  %95 = load i32, ptr %FrameHeightInMbs, align 4
  %mul126.2 = shl i32 %95, 4
  %96 = load i32, ptr %PicWidthInMbs, align 4
  %mul127.2 = mul i32 %mul126.2, %96
  %conv.i.2 = sext i32 %mul127.2 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %94, i8 2, i64 %conv.i.2, i1 false)
  %97 = load ptr, ptr %active_pps, align 8
  %constrained_intra_pred_flag.2 = getelementptr inbounds i8, ptr %97, i64 2204
  %98 = load i32, ptr %constrained_intra_pred_flag.2, align 4
  %tobool132.not.2 = icmp eq i32 %98, 0
  br i1 %tobool132.not.2, label %if.end183, label %for.cond134.preheader.2

for.cond134.preheader.2:                          ; preds = %for.end.2
  %99 = load i32, ptr %PicSizeInMbs, align 4
  %cmp136501.2 = icmp sgt i32 %99, 0
  br i1 %cmp136501.2, label %for.body138.2, label %if.end183

for.body138.2:                                    ; preds = %for.cond134.preheader.2, %for.body138.2
  %indvars.iv.2 = phi i64 [ %indvars.iv.next.2, %for.body138.2 ], [ 0, %for.cond134.preheader.2 ]
  %arrayidx140.2 = getelementptr inbounds i8, ptr %92, i64 %indvars.iv.2
  store i8 1, ptr %arrayidx140.2, align 1
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv.2, 1
  %100 = load i32, ptr %PicSizeInMbs, align 4
  %101 = sext i32 %100 to i64
  %cmp136.2 = icmp slt i64 %indvars.iv.next.2, %101
  br i1 %cmp136.2, label %for.body138.2, label %if.end183

if.else148:                                       ; preds = %if.end109
  %102 = load i32, ptr %PicSizeInMbs, align 4
  %cmp152504 = icmp sgt i32 %102, 0
  br i1 %cmp152504, label %for.body154.preheader, label %if.end174

for.body154.preheader:                            ; preds = %if.else148
  %mb_data = getelementptr inbounds i8, ptr %p_Vid, i64 848888
  %103 = load ptr, ptr %mb_data, align 8
  br label %for.body154

for.body154:                                      ; preds = %for.body154.preheader, %for.body154
  %i.2506 = phi i32 [ %inc157, %for.body154 ], [ 0, %for.body154.preheader ]
  %currMB149.0505 = phi ptr [ %incdec.ptr155, %for.body154 ], [ %103, %for.body154.preheader ]
  %incdec.ptr155 = getelementptr inbounds i8, ptr %currMB149.0505, i64 480
  %slice_nr.i494 = getelementptr inbounds i8, ptr %currMB149.0505, i64 108
  store i16 -1, ptr %slice_nr.i494, align 4
  %ei_flag.i495 = getelementptr inbounds i8, ptr %currMB149.0505, i64 110
  store i8 1, ptr %ei_flag.i495, align 2
  %dpl_flag.i496 = getelementptr inbounds i8, ptr %currMB149.0505, i64 111
  store i8 0, ptr %dpl_flag.i496, align 1
  %inc157 = add nuw nsw i32 %i.2506, 1
  %104 = load i32, ptr %PicSizeInMbs, align 4
  %cmp152 = icmp slt i32 %inc157, %104
  br i1 %cmp152, label %for.body154, label %for.end158

for.end158:                                       ; preds = %for.body154
  %105 = icmp slt i32 %104, 1
  %106 = load ptr, ptr %active_pps, align 8
  %constrained_intra_pred_flag160 = getelementptr inbounds i8, ptr %106, i64 2204
  %107 = load i32, ptr %constrained_intra_pred_flag160, align 4
  %tobool161.not = icmp eq i32 %107, 0
  %brmerge = or i1 %tobool161.not, %105
  br i1 %brmerge, label %if.end174, label %for.body167.lr.ph

for.body167.lr.ph:                                ; preds = %for.end158
  %intra_block168 = getelementptr inbounds i8, ptr %p_Vid, i64 848744
  br label %for.body167

for.body167:                                      ; preds = %for.body167.lr.ph, %for.body167
  %indvars.iv513 = phi i64 [ 0, %for.body167.lr.ph ], [ %indvars.iv.next514, %for.body167 ]
  %108 = load ptr, ptr %intra_block168, align 8
  %arrayidx170 = getelementptr inbounds i8, ptr %108, i64 %indvars.iv513
  store i8 1, ptr %arrayidx170, align 1
  %indvars.iv.next514 = add nuw nsw i64 %indvars.iv513, 1
  %109 = load i32, ptr %PicSizeInMbs, align 4
  %110 = sext i32 %109 to i64
  %cmp165 = icmp slt i64 %indvars.iv.next514, %110
  br i1 %cmp165, label %for.body167, label %if.end174

if.end174:                                        ; preds = %for.body167, %for.end158, %if.else148
  %ipredmode = getelementptr inbounds i8, ptr %p_Vid, i64 848800
  %111 = load ptr, ptr %ipredmode, align 8
  %112 = load ptr, ptr %111, align 8
  %FrameHeightInMbs176 = getelementptr inbounds i8, ptr %p_Vid, i64 849004
  %113 = load i32, ptr %FrameHeightInMbs176, align 4
  %mul177 = shl i32 %113, 4
  %PicWidthInMbs178 = getelementptr inbounds i8, ptr %p_Vid, i64 848996
  %114 = load i32, ptr %PicWidthInMbs178, align 4
  %mul179 = mul i32 %mul177, %114
  %conv.i497 = sext i32 %mul179 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %112, i8 2, i64 %conv.i497, i1 false)
  br label %if.end183

if.end183:                                        ; preds = %for.body138.2, %for.end.2, %for.cond134.preheader.2, %if.end174
  %115 = load i32, ptr %type, align 8
  %slice_type = getelementptr inbounds i8, ptr %call, i64 248
  store i32 %115, ptr %slice_type, align 8
  %116 = load i32, ptr %nal_reference_idc, align 8
  %cmp186 = icmp ne i32 %116, 0
  %conv187 = zext i1 %cmp186 to i32
  %used_for_reference = getelementptr inbounds i8, ptr %call, i64 44
  store i32 %conv187, ptr %used_for_reference, align 4
  %117 = load i32, ptr %idr_flag, align 8
  %idr_flag189 = getelementptr inbounds i8, ptr %call, i64 252
  store i32 %117, ptr %idr_flag189, align 4
  %no_output_of_prior_pics_flag = getelementptr inbounds i8, ptr %currSlice, i64 236
  %118 = load i32, ptr %no_output_of_prior_pics_flag, align 4
  %no_output_of_prior_pics_flag190 = getelementptr inbounds i8, ptr %call, i64 256
  store i32 %118, ptr %no_output_of_prior_pics_flag190, align 8
  %long_term_reference_flag = getelementptr inbounds i8, ptr %currSlice, i64 240
  %119 = load i32, ptr %long_term_reference_flag, align 8
  %long_term_reference_flag191 = getelementptr inbounds i8, ptr %call, i64 260
  store i32 %119, ptr %long_term_reference_flag191, align 4
  %adaptive_ref_pic_buffering_flag = getelementptr inbounds i8, ptr %currSlice, i64 244
  %120 = load i32, ptr %adaptive_ref_pic_buffering_flag, align 4
  %adaptive_ref_pic_buffering_flag192 = getelementptr inbounds i8, ptr %call, i64 264
  store i32 %120, ptr %adaptive_ref_pic_buffering_flag192, align 8
  %dec_ref_pic_marking_buffer = getelementptr inbounds i8, ptr %currSlice, i64 248
  %121 = load ptr, ptr %dec_ref_pic_marking_buffer, align 8
  %dec_ref_pic_marking_buffer193 = getelementptr inbounds i8, ptr %call, i64 312
  store ptr %121, ptr %dec_ref_pic_marking_buffer193, align 8
  store ptr null, ptr %dec_ref_pic_marking_buffer, align 8
  %mb_aff_frame_flag195 = getelementptr inbounds i8, ptr %currSlice, i64 128
  %122 = load i32, ptr %mb_aff_frame_flag195, align 8
  %mb_aff_frame_flag196 = getelementptr inbounds i8, ptr %call, i64 100
  store i32 %122, ptr %mb_aff_frame_flag196, align 4
  %PicWidthInMbs197 = getelementptr inbounds i8, ptr %p_Vid, i64 848996
  %123 = load i32, ptr %PicWidthInMbs197, align 4
  %PicWidthInMbs198 = getelementptr inbounds i8, ptr %call, i64 104
  store i32 %123, ptr %PicWidthInMbs198, align 8
  %tobool200.not = icmp eq i32 %122, 0
  %cond201 = select i1 %tobool200.not, ptr @get_mb_block_pos_normal, ptr @get_mb_block_pos_mbaff
  %get_mb_block_pos = getelementptr inbounds i8, ptr %p_Vid, i64 856752
  store ptr %cond201, ptr %get_mb_block_pos, align 8
  %124 = load i32, ptr %mb_aff_frame_flag196, align 4
  %tobool203.not = icmp eq i32 %124, 0
  %cond204 = select i1 %tobool203.not, ptr @getNonAffNeighbour, ptr @getAffNeighbour
  %getNeighbour = getelementptr inbounds i8, ptr %p_Vid, i64 856744
  store ptr %cond204, ptr %getNeighbour, align 8
  %125 = load i32, ptr %frame_num56, align 4
  %pic_num = getelementptr inbounds i8, ptr %call, i64 28
  store i32 %125, ptr %pic_num, align 4
  %frame_num207 = getelementptr inbounds i8, ptr %call, i64 20
  store i32 %125, ptr %frame_num207, align 4
  %126 = load i32, ptr %frame_num56, align 4
  %127 = load i32, ptr %recovery_frame_num55, align 8
  %cmp210 = icmp eq i32 %126, %127
  %conv211 = zext i1 %cmp210 to i32
  %recovery_frame = getelementptr inbounds i8, ptr %call, i64 24
  store i32 %conv211, ptr %recovery_frame, align 8
  %128 = load i32, ptr %structure, align 8
  %cmp213 = icmp eq i32 %128, 0
  %conv214 = zext i1 %cmp213 to i32
  %coded_frame = getelementptr inbounds i8, ptr %call, i64 96
  store i32 %conv214, ptr %coded_frame, align 8
  %chroma_format_idc = getelementptr inbounds i8, ptr %0, i64 36
  %129 = load i32, ptr %chroma_format_idc, align 4
  %chroma_format_idc215 = getelementptr inbounds i8, ptr %call, i64 268
  store i32 %129, ptr %chroma_format_idc215, align 4
  %frame_mbs_only_flag = getelementptr inbounds i8, ptr %0, i64 3136
  %130 = load i32, ptr %frame_mbs_only_flag, align 4
  %frame_mbs_only_flag216 = getelementptr inbounds i8, ptr %call, i64 272
  store i32 %130, ptr %frame_mbs_only_flag216, align 8
  %frame_cropping_flag = getelementptr inbounds i8, ptr %0, i64 3148
  %131 = load i32, ptr %frame_cropping_flag, align 4
  %frame_cropping_flag217 = getelementptr inbounds i8, ptr %call, i64 276
  store i32 %131, ptr %frame_cropping_flag217, align 4
  %tobool219.not = icmp eq i32 %131, 0
  br i1 %tobool219.not, label %if.end225, label %if.then220

if.then220:                                       ; preds = %if.end183
  %frame_cropping_rect_left_offset = getelementptr inbounds i8, ptr %0, i64 3152
  %132 = load i32, ptr %frame_cropping_rect_left_offset, align 4
  %frame_cropping_rect_left_offset221 = getelementptr inbounds i8, ptr %call, i64 280
  store i32 %132, ptr %frame_cropping_rect_left_offset221, align 8
  %frame_cropping_rect_right_offset = getelementptr inbounds i8, ptr %0, i64 3156
  %133 = load i32, ptr %frame_cropping_rect_right_offset, align 4
  %frame_cropping_rect_right_offset222 = getelementptr inbounds i8, ptr %call, i64 284
  store i32 %133, ptr %frame_cropping_rect_right_offset222, align 4
  %frame_cropping_rect_top_offset = getelementptr inbounds i8, ptr %0, i64 3160
  %134 = load i32, ptr %frame_cropping_rect_top_offset, align 4
  %frame_cropping_rect_top_offset223 = getelementptr inbounds i8, ptr %call, i64 288
  store i32 %134, ptr %frame_cropping_rect_top_offset223, align 8
  %frame_cropping_rect_bottom_offset = getelementptr inbounds i8, ptr %0, i64 3164
  %135 = load i32, ptr %frame_cropping_rect_bottom_offset, align 4
  %frame_cropping_rect_bottom_offset224 = getelementptr inbounds i8, ptr %call, i64 292
  store i32 %135, ptr %frame_cropping_rect_bottom_offset224, align 4
  br label %if.end225

if.end225:                                        ; preds = %if.then220, %if.end183
  %seiToneMapping = getelementptr inbounds i8, ptr %p_Vid, i64 856728
  %136 = load ptr, ptr %seiToneMapping, align 8
  %137 = load i32, ptr %136, align 8
  %tobool226.not = icmp eq i32 %137, 0
  br i1 %tobool226.not, label %if.else247, label %if.then227

if.then227:                                       ; preds = %if.end225
  %coded_data_bit_depth = getelementptr inbounds i8, ptr %136, i64 8
  %138 = load i8, ptr %coded_data_bit_depth, align 8
  %conv229 = zext nneg i8 %138 to i32
  %shl = shl nuw i32 1, %conv229
  %seiHasTone_mapping230 = getelementptr inbounds i8, ptr %call, i64 324
  store i32 1, ptr %seiHasTone_mapping230, align 4
  %139 = load ptr, ptr %seiToneMapping, align 8
  %model_id = getelementptr inbounds i8, ptr %139, i64 12
  %140 = load i32, ptr %model_id, align 4
  %tone_mapping_model_id = getelementptr inbounds i8, ptr %call, i64 328
  store i32 %140, ptr %tone_mapping_model_id, align 8
  %141 = load ptr, ptr %seiToneMapping, align 8
  %sei_bit_depth = getelementptr inbounds i8, ptr %141, i64 9
  %142 = load i8, ptr %sei_bit_depth, align 1
  %conv233 = zext i8 %142 to i32
  %tonemapped_bit_depth = getelementptr inbounds i8, ptr %call, i64 332
  store i32 %conv233, ptr %tonemapped_bit_depth, align 4
  %conv234 = sext i32 %shl to i64
  %mul235 = shl nsw i64 %conv234, 2
  %call236 = tail call noalias ptr @malloc(i64 noundef %mul235) #30
  %tone_mapping_lut = getelementptr inbounds i8, ptr %call, i64 336
  store ptr %call236, ptr %tone_mapping_lut, align 8
  %cmp238 = icmp eq ptr %call236, null
  br i1 %cmp238, label %if.then240, label %if.end241

if.then240:                                       ; preds = %if.then227
  tail call void @no_mem_exit(ptr noundef nonnull @.str.49) #27
  %.pre517 = load ptr, ptr %tone_mapping_lut, align 8
  br label %if.end241

if.end241:                                        ; preds = %if.then240, %if.then227
  %143 = phi ptr [ %.pre517, %if.then240 ], [ %call236, %if.then227 ]
  %144 = load ptr, ptr %seiToneMapping, align 8
  %lut = getelementptr inbounds i8, ptr %144, i64 20
  %mul245 = shl nsw i64 %conv234, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %143, ptr noundef nonnull align 4 dereferenceable(1) %lut, i64 %mul245, i1 false)
  %145 = load ptr, ptr %seiToneMapping, align 8
  tail call void @update_tone_mapping_sei(ptr noundef %145) #27
  br label %if.end249

if.else247:                                       ; preds = %if.end225
  %seiHasTone_mapping248 = getelementptr inbounds i8, ptr %call, i64 324
  store i32 0, ptr %seiHasTone_mapping248, align 4
  br label %if.end249

if.end249:                                        ; preds = %if.else247, %if.end241
  %146 = load i32, ptr %separate_colour_plane_flag, align 8
  %cmp251.not = icmp eq i32 %146, 0
  br i1 %cmp251.not, label %if.end280, label %if.then253

if.then253:                                       ; preds = %if.end249
  %147 = load ptr, ptr %dec_picture3, align 8
  %dec_picture_JV = getelementptr inbounds i8, ptr %p_Vid, i64 856464
  store ptr %147, ptr %dec_picture_JV, align 8
  %148 = load i32, ptr %structure, align 8
  %149 = load i32, ptr %width, align 4
  %150 = load i32, ptr %height, align 8
  %151 = load i32, ptr %width_cr, align 4
  %152 = load i32, ptr %height_cr, align 8
  %call261 = tail call ptr @alloc_storable_picture(ptr noundef nonnull %p_Vid, i32 noundef %148, i32 noundef %149, i32 noundef %150, i32 noundef %151, i32 noundef %152) #27
  %arrayidx263 = getelementptr inbounds i8, ptr %p_Vid, i64 856472
  store ptr %call261, ptr %arrayidx263, align 8
  %153 = load ptr, ptr %dec_picture_JV, align 8
  tail call void @copy_dec_picture_JV(ptr noundef nonnull %p_Vid, ptr noundef %call261, ptr noundef %153)
  %154 = load i32, ptr %structure, align 8
  %155 = load i32, ptr %width, align 4
  %156 = load i32, ptr %height, align 8
  %157 = load i32, ptr %width_cr, align 4
  %158 = load i32, ptr %height_cr, align 8
  %call273 = tail call ptr @alloc_storable_picture(ptr noundef nonnull %p_Vid, i32 noundef %154, i32 noundef %155, i32 noundef %156, i32 noundef %157, i32 noundef %158) #27
  %arrayidx275 = getelementptr inbounds i8, ptr %p_Vid, i64 856480
  store ptr %call273, ptr %arrayidx275, align 8
  %159 = load ptr, ptr %dec_picture_JV, align 8
  tail call void @copy_dec_picture_JV(ptr noundef nonnull %p_Vid, ptr noundef %call273, ptr noundef %159)
  br label %if.end280

if.end280:                                        ; preds = %if.then253, %if.end249
  ret void
}

declare ptr @malloc_slice(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local range(i32 1, 4) i32 @read_new_slice(ptr noundef %currSlice) local_unnamed_addr #2 {
entry:
  %0 = load ptr, ptr %currSlice, align 8
  %p_Inp2 = getelementptr inbounds i8, ptr %currSlice, i64 8
  %1 = load ptr, ptr %p_Inp2, align 8
  %nalu3 = getelementptr inbounds i8, ptr %0, i64 856832
  %2 = load ptr, ptr %nalu3, align 8
  %svc_extension_flag = getelementptr inbounds i8, ptr %currSlice, i64 32
  store i32 -1, ptr %svc_extension_flag, align 8
  %call744 = tail call i32 @read_next_nalu(ptr noundef %0, ptr noundef %2) #27
  %cmp745 = icmp eq i32 %call744, 0
  br i1 %cmp745, label %cleanup, label %if.end.lr.ph

if.end.lr.ph:                                     ; preds = %entry
  %DecodeAllLayers = getelementptr inbounds i8, ptr %1, i64 3976
  %nal_unit_type = getelementptr inbounds i8, ptr %2, i64 16
  %partArr = getelementptr inbounds i8, ptr %currSlice, i64 312
  %buf = getelementptr inbounds i8, ptr %2, i64 24
  %len = getelementptr inbounds i8, ptr %2, i64 4
  %NaluHeaderMVCExt = getelementptr inbounds i8, ptr %currSlice, i64 1188
  %iPrefixNALU = getelementptr inbounds i8, ptr %currSlice, i64 1216
  %dpB_NotPresent = getelementptr inbounds i8, ptr %currSlice, i64 1232
  %dpC_NotPresent = getelementptr inbounds i8, ptr %currSlice, i64 1236
  %idr_flag203 = getelementptr inbounds i8, ptr %currSlice, i64 48
  %nal_reference_idc204 = getelementptr inbounds i8, ptr %2, i64 20
  %nal_reference_idc205 = getelementptr inbounds i8, ptr %currSlice, i64 56
  %dp_mode206 = getelementptr inbounds i8, ptr %currSlice, i64 200
  %max_part_nr207 = getelementptr inbounds i8, ptr %currSlice, i64 196
  %ei_flag208 = getelementptr inbounds i8, ptr %currSlice, i64 144
  %dec_picture231 = getelementptr inbounds i8, ptr %0, i64 856456
  %old_slice232 = getelementptr inbounds i8, ptr %0, i64 848696
  %init_lists = getelementptr inbounds i8, ptr %currSlice, i64 13464
  %structure = getelementptr inbounds i8, ptr %0, i64 848876
  %mb_aff_frame_flag242 = getelementptr inbounds i8, ptr %currSlice, i64 128
  %start_mb_nr245 = getelementptr inbounds i8, ptr %currSlice, i64 188
  %current_mb_nr247 = getelementptr inbounds i8, ptr %currSlice, i64 108
  %active_pps253 = getelementptr inbounds i8, ptr %0, i64 8
  %lost_packets = getelementptr inbounds i8, ptr %2, i64 32
  %silent416 = getelementptr inbounds i8, ptr %1, i64 784
  %recovery_point = getelementptr inbounds i8, ptr %0, i64 849260
  %recovery_point_found = getelementptr inbounds i8, ptr %0, i64 849264
  %non_conforming_stream = getelementptr inbounds i8, ptr %0, i64 848948
  br label %if.end

if.end:                                           ; preds = %if.end.lr.ph, %sw.epilog
  %currStream.0746 = phi ptr [ null, %if.end.lr.ph ], [ %currStream.2, %sw.epilog ]
  %3 = load i32, ptr %DecodeAllLayers, align 8
  %cmp4 = icmp eq i32 %3, 1
  %.pre.pre = load i32, ptr %nal_unit_type, align 8
  br i1 %cmp4, label %land.lhs.true, label %process_nalu.preheader

land.lhs.true:                                    ; preds = %if.end
  switch i32 %.pre.pre, label %process_nalu.preheader [
    i32 14, label %if.then8
    i32 20, label %if.then8
  ]

if.then8:                                         ; preds = %land.lhs.true, %land.lhs.true
  %4 = load ptr, ptr %partArr, align 8
  %5 = load ptr, ptr %4, align 8
  %ei_flag = getelementptr inbounds i8, ptr %5, i64 24
  store i32 0, ptr %ei_flag, align 8
  store i32 0, ptr %5, align 8
  %frame_bitoffset = getelementptr inbounds i8, ptr %5, i64 8
  store i32 0, ptr %frame_bitoffset, align 8
  %streamBuffer = getelementptr inbounds i8, ptr %5, i64 16
  %6 = load ptr, ptr %streamBuffer, align 8
  %7 = load ptr, ptr %buf, align 8
  %arrayidx9 = getelementptr inbounds i8, ptr %7, i64 1
  %8 = load i32, ptr %len, align 4
  %sub = add i32 %8, -1
  %conv.i = sext i32 %sub to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %6, ptr nonnull readonly align 1 %arrayidx9, i64 %conv.i, i1 false)
  %9 = load ptr, ptr %streamBuffer, align 8
  %10 = load i32, ptr %len, align 4
  %sub12 = add i32 %10, -1
  %call13 = tail call i32 @RBSPtoSODB(ptr noundef %9, i32 noundef %sub12) #27
  %bitstream_length = getelementptr inbounds i8, ptr %5, i64 12
  store i32 %call13, ptr %bitstream_length, align 4
  %code_len = getelementptr inbounds i8, ptr %5, i64 4
  store i32 %call13, ptr %code_len, align 4
  %call14 = tail call i32 @u_1(ptr noundef nonnull @.str.10, ptr noundef nonnull %5) #27
  store i32 %call14, ptr %svc_extension_flag, align 8
  %tobool.not = icmp eq i32 %call14, 0
  br i1 %tobool.not, label %if.else, label %if.then17

if.then17:                                        ; preds = %if.then8
  tail call void (...) @nal_unit_header_svc_extension() #27
  br label %if.end21

if.else:                                          ; preds = %if.then8
  tail call void @nal_unit_header_mvc_extension(ptr noundef nonnull %NaluHeaderMVCExt, ptr noundef nonnull %5) #27
  %11 = load i32, ptr %nal_unit_type, align 8
  %cmp19 = icmp eq i32 %11, 14
  %conv = zext i1 %cmp19 to i32
  store i32 %conv, ptr %iPrefixNALU, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.then17
  %12 = load i32, ptr %nal_unit_type, align 8
  %cmp23 = icmp eq i32 %12, 20
  br i1 %cmp23, label %if.then25, label %process_nalu.preheader

if.then25:                                        ; preds = %if.end21
  %13 = load i32, ptr %svc_extension_flag, align 8
  %tobool27.not = icmp eq i32 %13, 0
  br i1 %tobool27.not, label %if.else29, label %process_nalu.preheader

if.else29:                                        ; preds = %if.then25
  %14 = load i32, ptr %NaluHeaderMVCExt, align 4
  %cmp31 = icmp eq i32 %14, 0
  %cond = select i1 %cmp31, i32 5, i32 1
  store i32 %cond, ptr %nal_unit_type, align 8
  br label %process_nalu.preheader

process_nalu.preheader:                           ; preds = %land.lhs.true, %if.end21, %if.then25, %if.else29, %if.end
  %.ph = phi i32 [ %.pre.pre, %land.lhs.true ], [ %.pre.pre, %if.end ], [ %12, %if.end21 ], [ %cond, %if.else29 ], [ 20, %if.then25 ]
  %currStream.2.ph = phi ptr [ %currStream.0746, %land.lhs.true ], [ %currStream.0746, %if.end ], [ %5, %if.end21 ], [ %5, %if.else29 ], [ %5, %if.then25 ]
  br label %process_nalu

process_nalu:                                     ; preds = %process_nalu.preheader, %if.end355
  %15 = phi i32 [ %100, %if.end355 ], [ %.ph, %process_nalu.preheader ]
  %currStream.2 = phi ptr [ %currStream.5, %if.end355 ], [ %currStream.2.ph, %process_nalu.preheader ]
  switch i32 %15, label %sw.default [
    i32 1, label %sw.bb
    i32 5, label %sw.bb
    i32 2, label %sw.bb202
    i32 3, label %sw.bb365
    i32 4, label %sw.bb371
    i32 6, label %sw.bb378
    i32 8, label %sw.bb381
    i32 7, label %sw.bb382
    i32 9, label %sw.epilog
    i32 10, label %sw.epilog
    i32 11, label %sw.epilog
    i32 12, label %sw.bb383
    i32 24, label %sw.epilog
    i32 14, label %sw.bb392
    i32 15, label %sw.bb398
    i32 20, label %sw.bb411
  ]

sw.bb:                                            ; preds = %process_nalu, %process_nalu
  %16 = load i32, ptr %recovery_point, align 4
  %tobool38.not = icmp eq i32 %16, 0
  br i1 %tobool38.not, label %lor.lhs.false39, label %if.then43

lor.lhs.false39:                                  ; preds = %sw.bb
  %cmp41 = icmp eq i32 %15, 5
  %.pre773 = load i32, ptr %recovery_point_found, align 8
  %cmp44698 = icmp eq i32 %.pre773, 0
  br i1 %cmp41, label %if.then43.thread, label %if.end57

if.then43:                                        ; preds = %sw.bb
  %17 = load i32, ptr %recovery_point_found, align 8
  %cmp44 = icmp eq i32 %17, 0
  br i1 %cmp44, label %if.then46, label %if.end57.thread

if.then43.thread:                                 ; preds = %lor.lhs.false39
  br i1 %cmp44698, label %if.end57.thread.sink.split, label %if.end57.thread

if.then46:                                        ; preds = %if.then43
  %cmp48.not = icmp eq i32 %15, 5
  br i1 %cmp48.not, label %if.end57.thread.sink.split, label %if.then50

if.then50:                                        ; preds = %if.then46
  %puts695 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.58)
  br label %if.end57.thread.sink.split

if.end57.thread.sink.split:                       ; preds = %if.then46, %if.then43.thread, %if.then50
  %.sink = phi i32 [ 1, %if.then50 ], [ 0, %if.then43.thread ], [ 0, %if.then46 ]
  store i32 %.sink, ptr %non_conforming_stream, align 4
  br label %if.end57.thread

if.end57.thread:                                  ; preds = %if.end57.thread.sink.split, %if.then43, %if.then43.thread
  store i32 1, ptr %recovery_point_found, align 8
  br label %if.end62

if.end57:                                         ; preds = %lor.lhs.false39
  br i1 %cmp44698, label %sw.epilog, label %if.end62

if.end62:                                         ; preds = %if.end57, %if.end57.thread
  %18 = load i32, ptr %nal_unit_type, align 8
  %cmp64 = icmp eq i32 %18, 5
  %conv65 = zext i1 %cmp64 to i32
  store i32 %conv65, ptr %idr_flag203, align 8
  %19 = load i32, ptr %nal_reference_idc204, align 4
  store i32 %19, ptr %nal_reference_idc205, align 8
  store i32 0, ptr %dp_mode206, align 8
  store i32 1, ptr %max_part_nr207, align 4
  %20 = load i32, ptr %svc_extension_flag, align 8
  %cmp68.not = icmp eq i32 %20, 0
  br i1 %cmp68.not, label %if.end88, label %if.then70

if.then70:                                        ; preds = %if.end62
  %21 = load ptr, ptr %partArr, align 8
  %22 = load ptr, ptr %21, align 8
  %ei_flag74 = getelementptr inbounds i8, ptr %22, i64 24
  store i32 0, ptr %ei_flag74, align 8
  store i32 0, ptr %22, align 8
  %frame_bitoffset76 = getelementptr inbounds i8, ptr %22, i64 8
  store i32 0, ptr %frame_bitoffset76, align 8
  %streamBuffer77 = getelementptr inbounds i8, ptr %22, i64 16
  %23 = load ptr, ptr %streamBuffer77, align 8
  %24 = load ptr, ptr %buf, align 8
  %arrayidx79 = getelementptr inbounds i8, ptr %24, i64 1
  %25 = load i32, ptr %len, align 4
  %sub81 = add i32 %25, -1
  %conv.i696 = sext i32 %sub81 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %23, ptr nonnull readonly align 1 %arrayidx79, i64 %conv.i696, i1 false)
  %26 = load ptr, ptr %streamBuffer77, align 8
  %27 = load i32, ptr %len, align 4
  %sub84 = add i32 %27, -1
  %call85 = tail call i32 @RBSPtoSODB(ptr noundef %26, i32 noundef %sub84) #27
  %bitstream_length86 = getelementptr inbounds i8, ptr %22, i64 12
  store i32 %call85, ptr %bitstream_length86, align 4
  %code_len87 = getelementptr inbounds i8, ptr %22, i64 4
  store i32 %call85, ptr %code_len87, align 4
  br label %if.end88

if.end88:                                         ; preds = %if.then70, %if.end62
  %currStream.3 = phi ptr [ %22, %if.then70 ], [ %currStream.2, %if.end62 ]
  %call89 = tail call i32 @FirstPartOfSliceHeader(ptr noundef nonnull %currSlice) #27
  tail call void @UseParameterSet(ptr noundef nonnull %currSlice) #27
  %active_sps = getelementptr inbounds i8, ptr %0, i64 16
  %28 = load ptr, ptr %active_sps, align 8
  %active_sps90 = getelementptr inbounds i8, ptr %currSlice, i64 24
  store ptr %28, ptr %active_sps90, align 8
  %29 = load ptr, ptr %active_pps253, align 8
  %active_pps91 = getelementptr inbounds i8, ptr %currSlice, i64 16
  store ptr %29, ptr %active_pps91, align 8
  %transform_8x8_mode_flag = getelementptr inbounds i8, ptr %29, i64 16
  %30 = load i32, ptr %transform_8x8_mode_flag, align 8
  %Transform8x8Mode = getelementptr inbounds i8, ptr %currSlice, i64 60
  store i32 %30, ptr %Transform8x8Mode, align 4
  %31 = load ptr, ptr %active_sps, align 8
  %chroma_format_idc = getelementptr inbounds i8, ptr %31, i64 36
  %32 = load i32, ptr %chroma_format_idc, align 4
  %cmp94 = icmp eq i32 %32, 3
  br i1 %cmp94, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end88
  %separate_colour_plane_flag = getelementptr inbounds i8, ptr %0, i64 849280
  %33 = load i32, ptr %separate_colour_plane_flag, align 8
  %cmp96 = icmp eq i32 %33, 0
  %34 = zext i1 %cmp96 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end88
  %land.ext = phi i32 [ 0, %if.end88 ], [ %34, %land.rhs ]
  %is_not_independent = getelementptr inbounds i8, ptr %currSlice, i64 64
  store i32 %land.ext, ptr %is_not_independent, align 8
  %call98 = tail call i32 @RestOfSliceHeader(ptr noundef nonnull %currSlice) #27
  %35 = load i32, ptr %svc_extension_flag, align 8
  switch i32 %35, label %if.end162 [
    i32 0, label %if.then102
    i32 -1, label %if.then113
  ]

if.then102:                                       ; preds = %land.end
  %view_id = getelementptr inbounds i8, ptr %currSlice, i64 1196
  %36 = load i32, ptr %view_id, align 4
  %view_id104 = getelementptr inbounds i8, ptr %currSlice, i64 1176
  store i32 %36, ptr %view_id104, align 8
  %inter_view_flag = getelementptr inbounds i8, ptr %currSlice, i64 1208
  %37 = load i32, ptr %inter_view_flag, align 4
  %inter_view_flag106 = getelementptr inbounds i8, ptr %currSlice, i64 1180
  store i32 %37, ptr %inter_view_flag106, align 4
  %anchor_pic_flag = getelementptr inbounds i8, ptr %currSlice, i64 1204
  br label %if.end162.sink.split

if.then113:                                       ; preds = %land.end
  %active_subset_sps = getelementptr inbounds i8, ptr %0, i64 699416
  %38 = load ptr, ptr %active_subset_sps, align 8
  %cmp114 = icmp eq ptr %38, null
  br i1 %cmp114, label %if.then116, label %if.else136

if.then116:                                       ; preds = %if.then113
  %call118 = tail call i32 @GetBaseViewId(ptr noundef nonnull %0, ptr noundef nonnull %active_subset_sps) #27
  %view_id119 = getelementptr inbounds i8, ptr %currSlice, i64 1176
  store i32 %call118, ptr %view_id119, align 8
  %39 = load i32, ptr %iPrefixNALU, align 4
  %cmp122.not = icmp eq i32 %39, 0
  br i1 %cmp122.not, label %if.else131, label %if.then124

if.then124:                                       ; preds = %if.then116
  %inter_view_flag126 = getelementptr inbounds i8, ptr %currSlice, i64 1208
  %40 = load i32, ptr %inter_view_flag126, align 4
  %inter_view_flag127 = getelementptr inbounds i8, ptr %currSlice, i64 1180
  store i32 %40, ptr %inter_view_flag127, align 4
  %anchor_pic_flag129 = getelementptr inbounds i8, ptr %currSlice, i64 1204
  br label %if.end162.sink.split

if.else131:                                       ; preds = %if.then116
  %inter_view_flag132 = getelementptr inbounds i8, ptr %currSlice, i64 1180
  store i32 1, ptr %inter_view_flag132, align 4
  br label %if.end162.sink.split

if.else136:                                       ; preds = %if.then113
  %41 = load i32, ptr %iPrefixNALU, align 4
  %cmp139.not = icmp eq i32 %41, 0
  br i1 %cmp139.not, label %if.else151, label %if.then141

if.then141:                                       ; preds = %if.else136
  %view_id143 = getelementptr inbounds i8, ptr %currSlice, i64 1196
  %42 = load i32, ptr %view_id143, align 4
  %view_id144 = getelementptr inbounds i8, ptr %currSlice, i64 1176
  store i32 %42, ptr %view_id144, align 8
  %inter_view_flag146 = getelementptr inbounds i8, ptr %currSlice, i64 1208
  %43 = load i32, ptr %inter_view_flag146, align 4
  %inter_view_flag147 = getelementptr inbounds i8, ptr %currSlice, i64 1180
  store i32 %43, ptr %inter_view_flag147, align 4
  %anchor_pic_flag149 = getelementptr inbounds i8, ptr %currSlice, i64 1204
  br label %if.end162.sink.split

if.else151:                                       ; preds = %if.else136
  %view_id153 = getelementptr inbounds i8, ptr %38, i64 4136
  %44 = load ptr, ptr %view_id153, align 8
  %45 = load i32, ptr %44, align 4
  %view_id155 = getelementptr inbounds i8, ptr %currSlice, i64 1176
  store i32 %45, ptr %view_id155, align 8
  %inter_view_flag156 = getelementptr inbounds i8, ptr %currSlice, i64 1180
  store i32 1, ptr %inter_view_flag156, align 4
  br label %if.end162.sink.split

if.end162.sink.split:                             ; preds = %if.then102, %if.else131, %if.then124, %if.else151, %if.then141
  %.sink810.in = phi ptr [ %anchor_pic_flag149, %if.then141 ], [ %idr_flag203, %if.else151 ], [ %anchor_pic_flag129, %if.then124 ], [ %idr_flag203, %if.else131 ], [ %anchor_pic_flag, %if.then102 ]
  %.sink810 = load i32, ptr %.sink810.in, align 4
  %anchor_pic_flag150 = getelementptr inbounds i8, ptr %currSlice, i64 1184
  store i32 %.sink810, ptr %anchor_pic_flag150, align 8
  br label %if.end162

if.end162:                                        ; preds = %if.end162.sink.split, %land.end
  tail call void @assign_quant_params(ptr noundef nonnull %currSlice) #27
  %redundant_pic_cnt = getelementptr inbounds i8, ptr %currSlice, i64 220
  %46 = load i32, ptr %redundant_pic_cnt, align 4
  %tobool163.not = icmp eq i32 %46, 0
  br i1 %tobool163.not, label %if.end170, label %land.lhs.true164

land.lhs.true164:                                 ; preds = %if.end162
  %Is_primary_correct = getelementptr inbounds i8, ptr %0, i64 851868
  %47 = load i32, ptr %Is_primary_correct, align 4
  %cmp165 = icmp eq i32 %47, 0
  br i1 %cmp165, label %land.lhs.true167, label %if.end170

land.lhs.true167:                                 ; preds = %land.lhs.true164
  %Is_redundant_correct = getelementptr inbounds i8, ptr %0, i64 851872
  %48 = load i32, ptr %Is_redundant_correct, align 8
  %tobool168.not = icmp eq i32 %48, 0
  br i1 %tobool168.not, label %if.end170, label %if.then169

if.then169:                                       ; preds = %land.lhs.true167
  %type = getelementptr inbounds i8, ptr %0, i64 848776
  %49 = load i32, ptr %type, align 8
  %50 = load ptr, ptr %dec_picture231, align 8
  %slice_type = getelementptr inbounds i8, ptr %50, i64 248
  store i32 %49, ptr %slice_type, align 8
  br label %if.end170

if.end170:                                        ; preds = %if.then169, %land.lhs.true167, %land.lhs.true164, %if.end162
  %51 = load ptr, ptr %dec_picture231, align 8
  %52 = load ptr, ptr %old_slice232, align 8
  %call172 = tail call i32 @is_new_picture(ptr noundef %51, ptr noundef nonnull %currSlice, ptr noundef %52)
  %tobool173.not = icmp eq i32 %call172, 0
  br i1 %tobool173.not, label %if.end180, label %if.then174

if.then174:                                       ; preds = %if.end170
  %iSliceNumOfCurrPic = getelementptr inbounds i8, ptr %0, i64 848720
  %53 = load i32, ptr %iSliceNumOfCurrPic, align 8
  %cmp175 = icmp eq i32 %53, 0
  br i1 %cmp175, label %if.then177, label %if.end178

if.then177:                                       ; preds = %if.then174
  tail call fastcc void @init_picture(ptr noundef nonnull %0, ptr noundef nonnull %currSlice, ptr noundef %1)
  br label %if.end178

if.end178:                                        ; preds = %if.then177, %if.then174
  tail call void @CheckZeroByteVCL(ptr noundef nonnull %0, ptr noundef nonnull %2) #27
  br label %if.end180

if.end180:                                        ; preds = %if.end170, %if.end178
  %current_header.0 = phi i32 [ 2, %if.end178 ], [ 3, %if.end170 ]
  tail call void @setup_slice_methods(ptr noundef nonnull %currSlice) #27
  %54 = load i32, ptr %mb_aff_frame_flag242, align 8
  %tobool181.not = icmp ne i32 %54, 0
  %55 = load i32, ptr %start_mb_nr245, align 4
  %shl = zext i1 %tobool181.not to i32
  %shl.sink = shl i32 %55, %shl
  store i32 %shl.sink, ptr %current_mb_nr247, align 4
  %56 = load ptr, ptr %active_pps253, align 8
  %entropy_coding_mode_flag = getelementptr inbounds i8, ptr %56, i64 12
  %57 = load i32, ptr %entropy_coding_mode_flag, align 4
  %tobool188.not = icmp eq i32 %57, 0
  br i1 %tobool188.not, label %if.end200, label %if.then189

if.then189:                                       ; preds = %if.end180
  %frame_bitoffset190 = getelementptr inbounds i8, ptr %currStream.3, i64 8
  %58 = load i32, ptr %frame_bitoffset190, align 8
  %div = sdiv i32 %58, 8
  %59 = and i32 %58, 7
  %cmp192.not = icmp ne i32 %59, 0
  %inc = zext i1 %cmp192.not to i32
  %spec.select = add nsw i32 %div, %inc
  %60 = load ptr, ptr %partArr, align 8
  %de_cabac = getelementptr inbounds i8, ptr %60, i64 8
  %streamBuffer198 = getelementptr inbounds i8, ptr %currStream.3, i64 16
  %61 = load ptr, ptr %streamBuffer198, align 8
  tail call void @arideco_start_decoding(ptr noundef nonnull %de_cabac, ptr noundef %61, i32 noundef %spec.select, ptr noundef %currStream.3) #27
  br label %if.end200

if.end200:                                        ; preds = %if.then189, %if.end180
  store i32 0, ptr %recovery_point, align 4
  br label %cleanup

sw.bb202:                                         ; preds = %process_nalu
  store i32 1, ptr %dpB_NotPresent, align 8
  store i32 1, ptr %dpC_NotPresent, align 4
  store i32 0, ptr %idr_flag203, align 8
  %62 = load i32, ptr %nal_reference_idc204, align 4
  store i32 %62, ptr %nal_reference_idc205, align 8
  store i32 1, ptr %dp_mode206, align 8
  store i32 3, ptr %max_part_nr207, align 4
  store i32 0, ptr %ei_flag208, align 8
  %63 = load ptr, ptr %partArr, align 8
  %64 = load ptr, ptr %63, align 8
  %ei_flag212 = getelementptr inbounds i8, ptr %64, i64 24
  store i32 0, ptr %ei_flag212, align 8
  store i32 0, ptr %64, align 8
  %frame_bitoffset214 = getelementptr inbounds i8, ptr %64, i64 8
  store i32 0, ptr %frame_bitoffset214, align 8
  %streamBuffer215 = getelementptr inbounds i8, ptr %64, i64 16
  %65 = load ptr, ptr %streamBuffer215, align 8
  %66 = load ptr, ptr %buf, align 8
  %arrayidx217 = getelementptr inbounds i8, ptr %66, i64 1
  %67 = load i32, ptr %len, align 4
  %sub219 = add i32 %67, -1
  %conv220 = zext i32 %sub219 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %65, ptr nonnull align 1 %arrayidx217, i64 %conv220, i1 false)
  %68 = load ptr, ptr %streamBuffer215, align 8
  %69 = load i32, ptr %len, align 4
  %sub223 = add i32 %69, -1
  %call224 = tail call i32 @RBSPtoSODB(ptr noundef %68, i32 noundef %sub223) #27
  %bitstream_length225 = getelementptr inbounds i8, ptr %64, i64 12
  store i32 %call224, ptr %bitstream_length225, align 4
  %code_len226 = getelementptr inbounds i8, ptr %64, i64 4
  store i32 %call224, ptr %code_len226, align 4
  %call227 = tail call i32 @FirstPartOfSliceHeader(ptr noundef nonnull %currSlice) #27
  tail call void @UseParameterSet(ptr noundef nonnull %currSlice) #27
  %call228 = tail call i32 @RestOfSliceHeader(ptr noundef nonnull %currSlice) #27
  %call230 = tail call i32 @fmo_init(ptr noundef %0, ptr noundef nonnull %currSlice) #27
  %70 = load ptr, ptr %dec_picture231, align 8
  %71 = load ptr, ptr %old_slice232, align 8
  %call233 = tail call i32 @is_new_picture(ptr noundef %70, ptr noundef nonnull %currSlice, ptr noundef %71)
  %tobool234.not = icmp eq i32 %call233, 0
  br i1 %tobool234.not, label %if.end237, label %if.then235

if.then235:                                       ; preds = %sw.bb202
  tail call fastcc void @init_picture(ptr noundef nonnull %0, ptr noundef nonnull %currSlice, ptr noundef %1)
  tail call void @CheckZeroByteVCL(ptr noundef nonnull %0, ptr noundef nonnull %2) #27
  br label %if.end237

if.end237:                                        ; preds = %sw.bb202, %if.then235
  %current_header.1 = phi i32 [ 2, %if.then235 ], [ 3, %sw.bb202 ]
  tail call void @update_pic_num(ptr noundef nonnull %currSlice) #27
  %72 = load ptr, ptr %init_lists, align 8
  tail call void %72(ptr noundef nonnull %currSlice) #27
  tail call void @reorder_lists(ptr noundef nonnull %currSlice)
  %73 = load i32, ptr %structure, align 4
  %cmp238 = icmp eq i32 %73, 0
  br i1 %cmp238, label %if.then240, label %if.end241

if.then240:                                       ; preds = %if.end237
  tail call void @init_mbaff_lists(ptr noundef nonnull %0, ptr noundef nonnull %currSlice) #27
  br label %if.end241

if.end241:                                        ; preds = %if.then240, %if.end237
  %74 = load i32, ptr %mb_aff_frame_flag242, align 8
  %tobool243.not = icmp ne i32 %74, 0
  %75 = load i32, ptr %start_mb_nr245, align 4
  %shl246 = zext i1 %tobool243.not to i32
  %storemerge = shl i32 %75, %shl246
  store i32 %storemerge, ptr %current_mb_nr247, align 4
  %call252 = tail call i32 @ue_v(ptr noundef nonnull @.str.12, ptr noundef nonnull %64) #27
  %76 = load ptr, ptr %active_pps253, align 8
  %entropy_coding_mode_flag254 = getelementptr inbounds i8, ptr %76, i64 12
  %77 = load i32, ptr %entropy_coding_mode_flag254, align 4
  %tobool255.not = icmp eq i32 %77, 0
  br i1 %tobool255.not, label %if.end257, label %if.then256

if.then256:                                       ; preds = %if.end241
  tail call void @error(ptr noundef nonnull @.str.13, i32 noundef 500) #27
  br label %if.end257

if.end257:                                        ; preds = %if.then256, %if.end241
  %call258 = tail call i32 @read_next_nalu(ptr noundef nonnull %0, ptr noundef nonnull %2) #27
  %cmp259 = icmp eq i32 %call258, 0
  br i1 %cmp259, label %cleanup, label %if.end262

if.end262:                                        ; preds = %if.end257
  %78 = load i32, ptr %nal_unit_type, align 8
  %cmp264 = icmp eq i32 %78, 3
  br i1 %cmp264, label %if.then266, label %if.else309

if.then266:                                       ; preds = %if.end262
  %79 = load ptr, ptr %partArr, align 8
  %arrayidx268 = getelementptr inbounds i8, ptr %79, i64 48
  %80 = load ptr, ptr %arrayidx268, align 8
  %ei_flag270 = getelementptr inbounds i8, ptr %80, i64 24
  store i32 0, ptr %ei_flag270, align 8
  store i32 0, ptr %80, align 8
  %frame_bitoffset272 = getelementptr inbounds i8, ptr %80, i64 8
  store i32 0, ptr %frame_bitoffset272, align 8
  %streamBuffer273 = getelementptr inbounds i8, ptr %80, i64 16
  %81 = load ptr, ptr %streamBuffer273, align 8
  %82 = load ptr, ptr %buf, align 8
  %arrayidx275 = getelementptr inbounds i8, ptr %82, i64 1
  %83 = load i32, ptr %len, align 4
  %sub277 = add i32 %83, -1
  %conv278 = zext i32 %sub277 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %81, ptr nonnull align 1 %arrayidx275, i64 %conv278, i1 false)
  %84 = load ptr, ptr %streamBuffer273, align 8
  %85 = load i32, ptr %len, align 4
  %sub281 = add i32 %85, -1
  %call282 = tail call i32 @RBSPtoSODB(ptr noundef %84, i32 noundef %sub281) #27
  %bitstream_length283 = getelementptr inbounds i8, ptr %80, i64 12
  store i32 %call282, ptr %bitstream_length283, align 4
  %code_len284 = getelementptr inbounds i8, ptr %80, i64 4
  store i32 %call282, ptr %code_len284, align 4
  %call285 = tail call i32 @ue_v(ptr noundef nonnull @.str.14, ptr noundef nonnull %80) #27
  store i32 0, ptr %dpB_NotPresent, align 8
  %cmp287.not = icmp eq i32 %call285, %call252
  br i1 %cmp287.not, label %lor.lhs.false289, label %if.then292

lor.lhs.false289:                                 ; preds = %if.then266
  %86 = load i16, ptr %lost_packets, align 8
  %tobool291.not = icmp eq i16 %86, 0
  br i1 %tobool291.not, label %if.else296, label %if.then292

if.then292:                                       ; preds = %lor.lhs.false289, %if.then266
  %puts693 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.56)
  store i32 1, ptr %dpB_NotPresent, align 8
  store i32 1, ptr %dpC_NotPresent, align 4
  br label %if.end311

if.else296:                                       ; preds = %lor.lhs.false289
  %87 = load ptr, ptr %active_pps253, align 8
  %redundant_pic_cnt_present_flag = getelementptr inbounds i8, ptr %87, i64 2208
  %88 = load i32, ptr %redundant_pic_cnt_present_flag, align 8
  %tobool298.not = icmp eq i32 %88, 0
  br i1 %tobool298.not, label %if.end302, label %if.then299

if.then299:                                       ; preds = %if.else296
  %call300 = tail call i32 @ue_v(ptr noundef nonnull @.str.16, ptr noundef nonnull %80) #27
  br label %if.end302

if.end302:                                        ; preds = %if.else296, %if.then299
  %call303 = tail call i32 @read_next_nalu(ptr noundef nonnull %0, ptr noundef nonnull %2) #27
  %cmp304 = icmp eq i32 %call303, 0
  br i1 %cmp304, label %cleanup, label %if.end311

if.else309:                                       ; preds = %if.end262
  store i32 1, ptr %dpB_NotPresent, align 8
  br label %if.end311

if.end311:                                        ; preds = %if.then292, %if.end302, %if.else309
  %currStream.4 = phi ptr [ %80, %if.then292 ], [ %80, %if.end302 ], [ %64, %if.else309 ]
  %89 = load i32, ptr %nal_unit_type, align 8
  %cmp313 = icmp eq i32 %89, 4
  br i1 %cmp313, label %if.then315, label %if.else353

if.then315:                                       ; preds = %if.end311
  %90 = load ptr, ptr %partArr, align 8
  %arrayidx317 = getelementptr inbounds i8, ptr %90, i64 96
  %91 = load ptr, ptr %arrayidx317, align 8
  %ei_flag319 = getelementptr inbounds i8, ptr %91, i64 24
  store i32 0, ptr %ei_flag319, align 8
  store i32 0, ptr %91, align 8
  %frame_bitoffset321 = getelementptr inbounds i8, ptr %91, i64 8
  store i32 0, ptr %frame_bitoffset321, align 8
  %streamBuffer322 = getelementptr inbounds i8, ptr %91, i64 16
  %92 = load ptr, ptr %streamBuffer322, align 8
  %93 = load ptr, ptr %buf, align 8
  %arrayidx324 = getelementptr inbounds i8, ptr %93, i64 1
  %94 = load i32, ptr %len, align 4
  %sub326 = add i32 %94, -1
  %conv327 = zext i32 %sub326 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %92, ptr nonnull align 1 %arrayidx324, i64 %conv327, i1 false)
  %95 = load ptr, ptr %streamBuffer322, align 8
  %96 = load i32, ptr %len, align 4
  %sub330 = add i32 %96, -1
  %call331 = tail call i32 @RBSPtoSODB(ptr noundef %95, i32 noundef %sub330) #27
  %bitstream_length332 = getelementptr inbounds i8, ptr %91, i64 12
  store i32 %call331, ptr %bitstream_length332, align 4
  %code_len333 = getelementptr inbounds i8, ptr %91, i64 4
  store i32 %call331, ptr %code_len333, align 4
  store i32 0, ptr %dpC_NotPresent, align 4
  %call335 = tail call i32 @ue_v(ptr noundef nonnull @.str.17, ptr noundef nonnull %91) #27
  %cmp336.not = icmp eq i32 %call335, %call252
  br i1 %cmp336.not, label %lor.lhs.false338, label %if.then342

lor.lhs.false338:                                 ; preds = %if.then315
  %97 = load i16, ptr %lost_packets, align 8
  %tobool341.not = icmp eq i16 %97, 0
  br i1 %tobool341.not, label %if.end345, label %if.then342

if.then342:                                       ; preds = %lor.lhs.false338, %if.then315
  %puts694 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.57)
  store i32 1, ptr %dpC_NotPresent, align 4
  br label %if.end345

if.end345:                                        ; preds = %if.then342, %lor.lhs.false338
  %98 = load ptr, ptr %active_pps253, align 8
  %redundant_pic_cnt_present_flag347 = getelementptr inbounds i8, ptr %98, i64 2208
  %99 = load i32, ptr %redundant_pic_cnt_present_flag347, align 8
  %tobool348.not = icmp eq i32 %99, 0
  br i1 %tobool348.not, label %if.end355, label %if.then349

if.then349:                                       ; preds = %if.end345
  %call350 = tail call i32 @ue_v(ptr noundef nonnull @.str.19, ptr noundef nonnull %91) #27
  br label %if.end355

if.else353:                                       ; preds = %if.end311
  store i32 1, ptr %dpC_NotPresent, align 4
  br label %if.end355

if.end355:                                        ; preds = %if.end345, %if.then349, %if.else353
  %currStream.5 = phi ptr [ %91, %if.then349 ], [ %currStream.4, %if.else353 ], [ %91, %if.end345 ]
  %100 = load i32, ptr %nal_unit_type, align 8
  %.off = add i32 %100, -3
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %cleanup, label %process_nalu

sw.bb365:                                         ; preds = %process_nalu
  %101 = load i32, ptr %silent416, align 8
  %cmp366 = icmp eq i32 %101, 0
  br i1 %cmp366, label %if.then368, label %sw.epilog

if.then368:                                       ; preds = %sw.bb365
  %puts692 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.55)
  br label %sw.epilog

sw.bb371:                                         ; preds = %process_nalu
  %102 = load i32, ptr %silent416, align 8
  %cmp373 = icmp eq i32 %102, 0
  br i1 %cmp373, label %if.then375, label %sw.epilog

if.then375:                                       ; preds = %sw.bb371
  %puts691 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.54)
  br label %sw.epilog

sw.bb378:                                         ; preds = %process_nalu
  %103 = load ptr, ptr %buf, align 8
  %104 = load i32, ptr %len, align 4
  tail call void @InterpretSEIMessage(ptr noundef %103, i32 noundef %104, ptr noundef %0, ptr noundef nonnull %currSlice) #27
  br label %sw.epilog

sw.bb381:                                         ; preds = %process_nalu
  tail call void @ProcessPPS(ptr noundef %0, ptr noundef nonnull %2) #27
  br label %sw.epilog

sw.bb382:                                         ; preds = %process_nalu
  tail call void @ProcessSPS(ptr noundef %0, ptr noundef nonnull %2) #27
  br label %sw.epilog

sw.bb383:                                         ; preds = %process_nalu
  %105 = load i32, ptr %silent416, align 8
  %cmp385 = icmp eq i32 %105, 0
  br i1 %cmp385, label %if.then387, label %sw.epilog

if.then387:                                       ; preds = %sw.bb383
  %106 = load i32, ptr %len, align 4
  %call389 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.22, i32 noundef %106)
  %puts690 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.53)
  br label %sw.epilog

sw.bb392:                                         ; preds = %process_nalu
  %107 = load i32, ptr %svc_extension_flag, align 8
  %cmp394 = icmp eq i32 %107, 1
  br i1 %cmp394, label %if.then396, label %sw.epilog

if.then396:                                       ; preds = %sw.bb392
  tail call void (...) @prefix_nal_unit_svc() #27
  br label %sw.epilog

sw.bb398:                                         ; preds = %process_nalu
  %108 = load i32, ptr %DecodeAllLayers, align 8
  %cmp400 = icmp eq i32 %108, 1
  br i1 %cmp400, label %if.then402, label %if.else403

if.then402:                                       ; preds = %sw.bb398
  tail call void @ProcessSubsetSPS(ptr noundef %0, ptr noundef nonnull %2) #27
  br label %sw.epilog

if.else403:                                       ; preds = %sw.bb398
  %109 = load i32, ptr %silent416, align 8
  %cmp405 = icmp eq i32 %109, 0
  br i1 %cmp405, label %if.then407, label %sw.epilog

if.then407:                                       ; preds = %if.else403
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.52)
  br label %sw.epilog

sw.bb411:                                         ; preds = %process_nalu
  %110 = load i32, ptr %DecodeAllLayers, align 8
  %cmp413 = icmp eq i32 %110, 0
  br i1 %cmp413, label %land.lhs.true415, label %sw.epilog

land.lhs.true415:                                 ; preds = %sw.bb411
  %111 = load i32, ptr %silent416, align 8
  %cmp417 = icmp eq i32 %111, 0
  br i1 %cmp417, label %if.then419, label %sw.epilog

if.then419:                                       ; preds = %land.lhs.true415
  %call421 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.25, i32 noundef 20)
  br label %sw.epilog

sw.default:                                       ; preds = %process_nalu
  %112 = load i32, ptr %silent416, align 8
  %cmp424 = icmp eq i32 %112, 0
  br i1 %cmp424, label %if.then426, label %sw.epilog

if.then426:                                       ; preds = %sw.default
  %113 = load i32, ptr %len, align 4
  %call429 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.26, i32 noundef %15, i32 noundef %113)
  br label %sw.epilog

sw.epilog:                                        ; preds = %process_nalu, %process_nalu, %process_nalu, %process_nalu, %sw.default, %if.then426, %sw.bb411, %land.lhs.true415, %if.then419, %if.then402, %if.then407, %if.else403, %sw.bb392, %if.then396, %sw.bb383, %if.then387, %sw.bb371, %if.then375, %sw.bb365, %if.then368, %if.end57, %sw.bb382, %sw.bb381, %sw.bb378
  store i32 -1, ptr %svc_extension_flag, align 8
  %call = tail call i32 @read_next_nalu(ptr noundef %0, ptr noundef nonnull %2) #27
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %cleanup, label %if.end

cleanup:                                          ; preds = %sw.epilog, %if.end355, %if.end302, %if.end257, %entry, %if.end200
  %retval.0 = phi i32 [ %current_header.0, %if.end200 ], [ 1, %entry ], [ %current_header.1, %if.end257 ], [ %current_header.1, %if.end302 ], [ %current_header.1, %if.end355 ], [ 1, %sw.epilog ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @CopySliceInfo(ptr nocapture noundef readonly %currSlice, ptr nocapture noundef writeonly %p_old_slice) local_unnamed_addr #9 {
entry:
  %0 = load ptr, ptr %currSlice, align 8
  %pic_parameter_set_id = getelementptr inbounds i8, ptr %currSlice, i64 1228
  %1 = load i32, ptr %pic_parameter_set_id, align 4
  %pps_id = getelementptr inbounds i8, ptr %p_old_slice, i64 36
  store i32 %1, ptr %pps_id, align 4
  %frame_num = getelementptr inbounds i8, ptr %currSlice, i64 172
  %2 = load i32, ptr %frame_num, align 4
  %frame_num2 = getelementptr inbounds i8, ptr %p_old_slice, i64 4
  store i32 %2, ptr %frame_num2, align 4
  %field_pic_flag = getelementptr inbounds i8, ptr %currSlice, i64 176
  %3 = load i32, ptr %field_pic_flag, align 8
  store i32 %3, ptr %p_old_slice, align 4
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %bottom_field_flag = getelementptr inbounds i8, ptr %currSlice, i64 180
  %4 = load i8, ptr %bottom_field_flag, align 4
  %bottom_field_flag5 = getelementptr inbounds i8, ptr %p_old_slice, i64 28
  store i8 %4, ptr %bottom_field_flag5, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %nal_reference_idc = getelementptr inbounds i8, ptr %currSlice, i64 56
  %5 = load i32, ptr %nal_reference_idc, align 8
  %nal_ref_idc = getelementptr inbounds i8, ptr %p_old_slice, i64 8
  store i32 %5, ptr %nal_ref_idc, align 4
  %idr_flag = getelementptr inbounds i8, ptr %currSlice, i64 48
  %6 = load i32, ptr %idr_flag, align 8
  %conv = trunc i32 %6 to i8
  %idr_flag6 = getelementptr inbounds i8, ptr %p_old_slice, i64 29
  store i8 %conv, ptr %idr_flag6, align 1
  %7 = load i32, ptr %idr_flag, align 8
  %tobool8.not = icmp eq i32 %7, 0
  br i1 %tobool8.not, label %if.end11, label %if.then9

if.then9:                                         ; preds = %if.end
  %idr_pic_id = getelementptr inbounds i8, ptr %currSlice, i64 52
  %8 = load i32, ptr %idr_pic_id, align 4
  %idr_pic_id10 = getelementptr inbounds i8, ptr %p_old_slice, i64 32
  store i32 %8, ptr %idr_pic_id10, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end
  %active_sps = getelementptr inbounds i8, ptr %0, i64 16
  %9 = load ptr, ptr %active_sps, align 8
  %pic_order_cnt_type = getelementptr inbounds i8, ptr %9, i64 2072
  %10 = load i32, ptr %pic_order_cnt_type, align 4
  %cmp = icmp eq i32 %10, 0
  br i1 %cmp, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end11
  %pic_order_cnt_lsb = getelementptr inbounds i8, ptr %currSlice, i64 80
  %11 = load i32, ptr %pic_order_cnt_lsb, align 8
  %pic_oder_cnt_lsb = getelementptr inbounds i8, ptr %p_old_slice, i64 12
  store i32 %11, ptr %pic_oder_cnt_lsb, align 4
  %delta_pic_order_cnt_bottom = getelementptr inbounds i8, ptr %currSlice, i64 84
  %12 = load i32, ptr %delta_pic_order_cnt_bottom, align 4
  %delta_pic_oder_cnt_bottom = getelementptr inbounds i8, ptr %p_old_slice, i64 16
  store i32 %12, ptr %delta_pic_oder_cnt_bottom, align 4
  %.pre = load ptr, ptr %active_sps, align 8
  %pic_order_cnt_type16.phi.trans.insert = getelementptr inbounds i8, ptr %.pre, i64 2072
  %.pre60 = load i32, ptr %pic_order_cnt_type16.phi.trans.insert, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.end11
  %13 = phi i32 [ %.pre60, %if.then13 ], [ %10, %if.end11 ]
  %cmp17 = icmp eq i32 %13, 1
  br i1 %cmp17, label %if.then19, label %if.end26

if.then19:                                        ; preds = %if.end14
  %delta_pic_order_cnt = getelementptr inbounds i8, ptr %currSlice, i64 88
  %14 = load i32, ptr %delta_pic_order_cnt, align 8
  %delta_pic_order_cnt20 = getelementptr inbounds i8, ptr %p_old_slice, i64 20
  store i32 %14, ptr %delta_pic_order_cnt20, align 4
  %arrayidx23 = getelementptr inbounds i8, ptr %currSlice, i64 92
  %15 = load i32, ptr %arrayidx23, align 4
  %arrayidx25 = getelementptr inbounds i8, ptr %p_old_slice, i64 24
  store i32 %15, ptr %arrayidx25, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then19, %if.end14
  %view_id = getelementptr inbounds i8, ptr %currSlice, i64 1176
  %16 = load i32, ptr %view_id, align 8
  %view_id27 = getelementptr inbounds i8, ptr %p_old_slice, i64 40
  store i32 %16, ptr %view_id27, align 4
  %inter_view_flag = getelementptr inbounds i8, ptr %currSlice, i64 1180
  %17 = load i32, ptr %inter_view_flag, align 4
  %inter_view_flag28 = getelementptr inbounds i8, ptr %p_old_slice, i64 44
  store i32 %17, ptr %inter_view_flag28, align 4
  %anchor_pic_flag = getelementptr inbounds i8, ptr %currSlice, i64 1184
  %18 = load i32, ptr %anchor_pic_flag, align 8
  %anchor_pic_flag29 = getelementptr inbounds i8, ptr %p_old_slice, i64 48
  store i32 %18, ptr %anchor_pic_flag29, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @exit_picture(ptr noundef %p_Vid, ptr nocapture noundef %dec_picture) local_unnamed_addr #2 {
entry:
  %temp_buffer.i = alloca [32 x [16 x i16]], align 16
  %x0.i = alloca i16, align 2
  %y0.i = alloca i16, align 2
  %yuvFormat = alloca [10 x i8], align 1
  %0 = load ptr, ptr %p_Vid, align 8
  %snr2 = getelementptr inbounds i8, ptr %p_Vid, i64 848704
  %1 = load ptr, ptr %snr2, align 8
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %yuvFormat) #27
  %2 = load ptr, ptr %dec_picture, align 8
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %num_dec_mb = getelementptr inbounds i8, ptr %p_Vid, i64 848716
  %3 = load i32, ptr %num_dec_mb, align 4
  %PicSizeInMbs = getelementptr inbounds i8, ptr %p_Vid, i64 849012
  %4 = load i32, ptr %PicSizeInMbs, align 4
  %cmp3.not = icmp eq i32 %3, %4
  br i1 %cmp3.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false
  %yuv_format = getelementptr inbounds i8, ptr %p_Vid, i64 849088
  %5 = load i32, ptr %yuv_format, align 8
  %cmp4.not = icmp eq i32 %5, 3
  br i1 %cmp4.not, label %lor.lhs.false5, label %cleanup

lor.lhs.false5:                                   ; preds = %land.lhs.true
  %separate_colour_plane_flag = getelementptr inbounds i8, ptr %p_Vid, i64 849280
  %6 = load i32, ptr %separate_colour_plane_flag, align 8
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false5, %lor.lhs.false
  %iDeblockMode = getelementptr inbounds i8, ptr %p_Vid, i64 856824
  %7 = load i32, ptr %iDeblockMode, align 8
  %tobool19.not = icmp eq i32 %7, 0
  br i1 %tobool19.not, label %land.lhs.true20, label %if.else36

land.lhs.true20:                                  ; preds = %if.end
  %bDeblockEnable = getelementptr inbounds i8, ptr %p_Vid, i64 856856
  %8 = load i32, ptr %bDeblockEnable, align 8
  %used_for_reference = getelementptr inbounds i8, ptr %2, i64 44
  %9 = load i32, ptr %used_for_reference, align 4
  %shl = shl nuw i32 1, %9
  %and = and i32 %shl, %8
  %tobool21.not = icmp eq i32 %and, 0
  br i1 %tobool21.not, label %if.else36, label %if.then22

if.then22:                                        ; preds = %land.lhs.true20
  %separate_colour_plane_flag23 = getelementptr inbounds i8, ptr %p_Vid, i64 849280
  %10 = load i32, ptr %separate_colour_plane_flag23, align 8
  %cmp24.not = icmp eq i32 %10, 0
  br i1 %cmp24.not, label %if.else, label %if.then25

if.then25:                                        ; preds = %if.then22
  %ppSliceList = getelementptr inbounds i8, ptr %p_Vid, i64 848736
  %11 = load ptr, ptr %ppSliceList, align 8
  %12 = load ptr, ptr %11, align 8
  %colour_plane_id27 = getelementptr inbounds i8, ptr %12, i64 216
  %13 = load i32, ptr %colour_plane_id27, align 8
  store i32 0, ptr %colour_plane_id27, align 8
  tail call void @change_plane_JV(ptr noundef nonnull %p_Vid, i32 noundef 0, ptr noundef null) #27
  %14 = load ptr, ptr %dec_picture, align 8
  tail call void @DeblockPicture(ptr noundef nonnull %p_Vid, ptr noundef %14) #27
  %15 = load ptr, ptr %ppSliceList, align 8
  %16 = load ptr, ptr %15, align 8
  %colour_plane_id31.1 = getelementptr inbounds i8, ptr %16, i64 216
  store i32 1, ptr %colour_plane_id31.1, align 8
  tail call void @change_plane_JV(ptr noundef nonnull %p_Vid, i32 noundef 1, ptr noundef null) #27
  %17 = load ptr, ptr %dec_picture, align 8
  tail call void @DeblockPicture(ptr noundef nonnull %p_Vid, ptr noundef %17) #27
  %18 = load ptr, ptr %ppSliceList, align 8
  %19 = load ptr, ptr %18, align 8
  %colour_plane_id31.2 = getelementptr inbounds i8, ptr %19, i64 216
  store i32 2, ptr %colour_plane_id31.2, align 8
  tail call void @change_plane_JV(ptr noundef nonnull %p_Vid, i32 noundef 2, ptr noundef null) #27
  %20 = load ptr, ptr %dec_picture, align 8
  tail call void @DeblockPicture(ptr noundef nonnull %p_Vid, ptr noundef %20) #27
  %21 = load ptr, ptr %ppSliceList, align 8
  %22 = load ptr, ptr %21, align 8
  %colour_plane_id34 = getelementptr inbounds i8, ptr %22, i64 216
  store i32 %13, ptr %colour_plane_id34, align 8
  tail call void @make_frame_picture_JV(ptr noundef nonnull %p_Vid) #27
  br label %if.end41

if.else:                                          ; preds = %if.then22
  tail call void @DeblockPicture(ptr noundef nonnull %p_Vid, ptr noundef nonnull %2) #27
  br label %if.end41

if.else36:                                        ; preds = %land.lhs.true20, %if.end
  %separate_colour_plane_flag37 = getelementptr inbounds i8, ptr %p_Vid, i64 849280
  %23 = load i32, ptr %separate_colour_plane_flag37, align 8
  %cmp38.not = icmp eq i32 %23, 0
  br i1 %cmp38.not, label %if.end41, label %if.then39

if.then39:                                        ; preds = %if.else36
  tail call void @make_frame_picture_JV(ptr noundef nonnull %p_Vid) #27
  br label %if.end41

if.end41:                                         ; preds = %if.else36, %if.then39, %if.then25, %if.else
  %24 = load ptr, ptr %dec_picture, align 8
  %mb_aff_frame_flag = getelementptr inbounds i8, ptr %24, i64 100
  %25 = load i32, ptr %mb_aff_frame_flag, align 4
  %tobool42.not = icmp eq i32 %25, 0
  br i1 %tobool42.not, label %if.end44, label %if.then43

if.then43:                                        ; preds = %if.end41
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %temp_buffer.i) #27
  %dec_picture1.i = getelementptr inbounds i8, ptr %p_Vid, i64 856456
  %26 = load ptr, ptr %dec_picture1.i, align 8
  %imgY2.i = getelementptr inbounds i8, ptr %26, i64 128
  %27 = load ptr, ptr %imgY2.i, align 8
  %imgUV3.i = getelementptr inbounds i8, ptr %26, i64 136
  %28 = load ptr, ptr %imgUV3.i, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %x0.i) #27
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %y0.i) #27
  %PicSizeInMbs.i = getelementptr inbounds i8, ptr %26, i64 108
  %29 = load i32, ptr %PicSizeInMbs.i, align 4
  %cmp119.i = icmp sgt i32 %29, 0
  br i1 %cmp119.i, label %for.body.lr.ph.i, label %MbAffPostProc.exit

for.body.lr.ph.i:                                 ; preds = %if.then43
  %motion.i = getelementptr inbounds i8, ptr %26, i64 184
  %mb_size.i = getelementptr inbounds i8, ptr %p_Vid, i64 849124
  %add.ptr.i.i = getelementptr inbounds i8, ptr %temp_buffer.i, i64 512
  %chroma_format_idc.i = getelementptr inbounds i8, ptr %26, i64 268
  %mb_cr_size_x.i = getelementptr inbounds i8, ptr %p_Vid, i64 849108
  %mb_cr_size_y.i = getelementptr inbounds i8, ptr %p_Vid, i64 849112
  %arrayidx27.i = getelementptr inbounds i8, ptr %28, i64 8
  %incdec.ptr.i.i = getelementptr inbounds i8, ptr %temp_buffer.i, i64 32
  %incdec.ptr.i.1.i = getelementptr inbounds i8, ptr %temp_buffer.i, i64 64
  %incdec.ptr.i.2.i = getelementptr inbounds i8, ptr %temp_buffer.i, i64 96
  %incdec.ptr.i.3.i = getelementptr inbounds i8, ptr %temp_buffer.i, i64 128
  %incdec.ptr.i.4.i = getelementptr inbounds i8, ptr %temp_buffer.i, i64 160
  %incdec.ptr.i.5.i = getelementptr inbounds i8, ptr %temp_buffer.i, i64 192
  %incdec.ptr.i.6.i = getelementptr inbounds i8, ptr %temp_buffer.i, i64 224
  %incdec.ptr.i.7.i = getelementptr inbounds i8, ptr %temp_buffer.i, i64 256
  %incdec.ptr.i.8.i = getelementptr inbounds i8, ptr %temp_buffer.i, i64 288
  %incdec.ptr.i.9.i = getelementptr inbounds i8, ptr %temp_buffer.i, i64 320
  %incdec.ptr.i.10.i = getelementptr inbounds i8, ptr %temp_buffer.i, i64 352
  %incdec.ptr.i.11.i = getelementptr inbounds i8, ptr %temp_buffer.i, i64 384
  %incdec.ptr.i.12.i = getelementptr inbounds i8, ptr %temp_buffer.i, i64 416
  %incdec.ptr.i.13.i = getelementptr inbounds i8, ptr %temp_buffer.i, i64 448
  %incdec.ptr.i.14.i = getelementptr inbounds i8, ptr %temp_buffer.i, i64 480
  %incdec.ptr.i.16.i = getelementptr inbounds i8, ptr %temp_buffer.i, i64 544
  %incdec.ptr.i.17.i = getelementptr inbounds i8, ptr %temp_buffer.i, i64 576
  %incdec.ptr.i.18.i = getelementptr inbounds i8, ptr %temp_buffer.i, i64 608
  %incdec.ptr.i.19.i = getelementptr inbounds i8, ptr %temp_buffer.i, i64 640
  %incdec.ptr.i.20.i = getelementptr inbounds i8, ptr %temp_buffer.i, i64 672
  %incdec.ptr.i.21.i = getelementptr inbounds i8, ptr %temp_buffer.i, i64 704
  %incdec.ptr.i.22.i = getelementptr inbounds i8, ptr %temp_buffer.i, i64 736
  %incdec.ptr.i.23.i = getelementptr inbounds i8, ptr %temp_buffer.i, i64 768
  %incdec.ptr.i.24.i = getelementptr inbounds i8, ptr %temp_buffer.i, i64 800
  %incdec.ptr.i.25.i = getelementptr inbounds i8, ptr %temp_buffer.i, i64 832
  %incdec.ptr.i.26.i = getelementptr inbounds i8, ptr %temp_buffer.i, i64 864
  %incdec.ptr.i.27.i = getelementptr inbounds i8, ptr %temp_buffer.i, i64 896
  %incdec.ptr.i.28.i = getelementptr inbounds i8, ptr %temp_buffer.i, i64 928
  %incdec.ptr.i.29.i = getelementptr inbounds i8, ptr %temp_buffer.i, i64 960
  %incdec.ptr.i.30.i = getelementptr inbounds i8, ptr %temp_buffer.i, i64 992
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i, %for.body.lr.ph.i
  %conv121.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %conv.i, %for.inc.i ]
  %i.0120.i = phi i16 [ 0, %for.body.lr.ph.i ], [ %add.i, %for.inc.i ]
  %30 = load ptr, ptr %motion.i, align 8
  %idxprom.i = sext i16 %i.0120.i to i64
  %arrayidx.i = getelementptr inbounds i8, ptr %30, i64 %idxprom.i
  %31 = load i8, ptr %arrayidx.i, align 1
  %tobool.not.i = icmp eq i8 %31, 0
  br i1 %tobool.not.i, label %for.inc.i, label %if.then.i

if.then.i:                                        ; preds = %for.body.i
  call void @get_mb_pos(ptr noundef %p_Vid, i32 noundef %conv121.i, ptr noundef nonnull %mb_size.i, ptr noundef nonnull %x0.i, ptr noundef nonnull %y0.i) #27
  %32 = load i16, ptr %y0.i, align 2
  %idx.ext.i = sext i16 %32 to i64
  %add.ptr.i = getelementptr inbounds ptr, ptr %27, i64 %idx.ext.i
  %33 = load i16, ptr %x0.i, align 2
  %idx.ext2.i.i = sext i16 %33 to i64
  %incdec.ptr1.i.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 8
  %34 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr3.i.i = getelementptr inbounds i16, ptr %34, i64 %idx.ext2.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %temp_buffer.i, ptr noundef nonnull align 2 dereferenceable(32) %add.ptr3.i.i, i64 32, i1 false)
  %incdec.ptr1.i.1.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 16
  %35 = load ptr, ptr %incdec.ptr1.i.i, align 8
  %add.ptr3.i.1.i = getelementptr inbounds i16, ptr %35, i64 %idx.ext2.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %incdec.ptr.i.i, ptr noundef nonnull align 2 dereferenceable(32) %add.ptr3.i.1.i, i64 32, i1 false)
  %incdec.ptr1.i.2.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 24
  %36 = load ptr, ptr %incdec.ptr1.i.1.i, align 8
  %add.ptr3.i.2.i = getelementptr inbounds i16, ptr %36, i64 %idx.ext2.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %incdec.ptr.i.1.i, ptr noundef nonnull align 2 dereferenceable(32) %add.ptr3.i.2.i, i64 32, i1 false)
  %incdec.ptr1.i.3.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 32
  %37 = load ptr, ptr %incdec.ptr1.i.2.i, align 8
  %add.ptr3.i.3.i = getelementptr inbounds i16, ptr %37, i64 %idx.ext2.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %incdec.ptr.i.2.i, ptr noundef nonnull align 2 dereferenceable(32) %add.ptr3.i.3.i, i64 32, i1 false)
  %incdec.ptr1.i.4.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 40
  %38 = load ptr, ptr %incdec.ptr1.i.3.i, align 8
  %add.ptr3.i.4.i = getelementptr inbounds i16, ptr %38, i64 %idx.ext2.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %incdec.ptr.i.3.i, ptr noundef nonnull align 2 dereferenceable(32) %add.ptr3.i.4.i, i64 32, i1 false)
  %incdec.ptr1.i.5.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 48
  %39 = load ptr, ptr %incdec.ptr1.i.4.i, align 8
  %add.ptr3.i.5.i = getelementptr inbounds i16, ptr %39, i64 %idx.ext2.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %incdec.ptr.i.4.i, ptr noundef nonnull align 2 dereferenceable(32) %add.ptr3.i.5.i, i64 32, i1 false)
  %incdec.ptr1.i.6.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 56
  %40 = load ptr, ptr %incdec.ptr1.i.5.i, align 8
  %add.ptr3.i.6.i = getelementptr inbounds i16, ptr %40, i64 %idx.ext2.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %incdec.ptr.i.5.i, ptr noundef nonnull align 2 dereferenceable(32) %add.ptr3.i.6.i, i64 32, i1 false)
  %incdec.ptr1.i.7.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 64
  %41 = load ptr, ptr %incdec.ptr1.i.6.i, align 8
  %add.ptr3.i.7.i = getelementptr inbounds i16, ptr %41, i64 %idx.ext2.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %incdec.ptr.i.6.i, ptr noundef nonnull align 2 dereferenceable(32) %add.ptr3.i.7.i, i64 32, i1 false)
  %incdec.ptr1.i.8.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 72
  %42 = load ptr, ptr %incdec.ptr1.i.7.i, align 8
  %add.ptr3.i.8.i = getelementptr inbounds i16, ptr %42, i64 %idx.ext2.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %incdec.ptr.i.7.i, ptr noundef nonnull align 2 dereferenceable(32) %add.ptr3.i.8.i, i64 32, i1 false)
  %incdec.ptr1.i.9.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 80
  %43 = load ptr, ptr %incdec.ptr1.i.8.i, align 8
  %add.ptr3.i.9.i = getelementptr inbounds i16, ptr %43, i64 %idx.ext2.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %incdec.ptr.i.8.i, ptr noundef nonnull align 2 dereferenceable(32) %add.ptr3.i.9.i, i64 32, i1 false)
  %incdec.ptr1.i.10.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 88
  %44 = load ptr, ptr %incdec.ptr1.i.9.i, align 8
  %add.ptr3.i.10.i = getelementptr inbounds i16, ptr %44, i64 %idx.ext2.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %incdec.ptr.i.9.i, ptr noundef nonnull align 2 dereferenceable(32) %add.ptr3.i.10.i, i64 32, i1 false)
  %incdec.ptr1.i.11.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 96
  %45 = load ptr, ptr %incdec.ptr1.i.10.i, align 8
  %add.ptr3.i.11.i = getelementptr inbounds i16, ptr %45, i64 %idx.ext2.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %incdec.ptr.i.10.i, ptr noundef nonnull align 2 dereferenceable(32) %add.ptr3.i.11.i, i64 32, i1 false)
  %incdec.ptr1.i.12.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 104
  %46 = load ptr, ptr %incdec.ptr1.i.11.i, align 8
  %add.ptr3.i.12.i = getelementptr inbounds i16, ptr %46, i64 %idx.ext2.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %incdec.ptr.i.11.i, ptr noundef nonnull align 2 dereferenceable(32) %add.ptr3.i.12.i, i64 32, i1 false)
  %incdec.ptr1.i.13.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 112
  %47 = load ptr, ptr %incdec.ptr1.i.12.i, align 8
  %add.ptr3.i.13.i = getelementptr inbounds i16, ptr %47, i64 %idx.ext2.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %incdec.ptr.i.12.i, ptr noundef nonnull align 2 dereferenceable(32) %add.ptr3.i.13.i, i64 32, i1 false)
  %incdec.ptr1.i.14.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 120
  %48 = load ptr, ptr %incdec.ptr1.i.13.i, align 8
  %add.ptr3.i.14.i = getelementptr inbounds i16, ptr %48, i64 %idx.ext2.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %incdec.ptr.i.13.i, ptr noundef nonnull align 2 dereferenceable(32) %add.ptr3.i.14.i, i64 32, i1 false)
  %incdec.ptr1.i.15.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 128
  %49 = load ptr, ptr %incdec.ptr1.i.14.i, align 8
  %add.ptr3.i.15.i = getelementptr inbounds i16, ptr %49, i64 %idx.ext2.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %incdec.ptr.i.14.i, ptr noundef nonnull align 2 dereferenceable(32) %add.ptr3.i.15.i, i64 32, i1 false)
  %incdec.ptr1.i.16.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 136
  %50 = load ptr, ptr %incdec.ptr1.i.15.i, align 8
  %add.ptr3.i.16.i = getelementptr inbounds i16, ptr %50, i64 %idx.ext2.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %add.ptr.i.i, ptr noundef nonnull align 2 dereferenceable(32) %add.ptr3.i.16.i, i64 32, i1 false)
  %incdec.ptr1.i.17.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 144
  %51 = load ptr, ptr %incdec.ptr1.i.16.i, align 8
  %add.ptr3.i.17.i = getelementptr inbounds i16, ptr %51, i64 %idx.ext2.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %incdec.ptr.i.16.i, ptr noundef nonnull align 2 dereferenceable(32) %add.ptr3.i.17.i, i64 32, i1 false)
  %incdec.ptr1.i.18.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 152
  %52 = load ptr, ptr %incdec.ptr1.i.17.i, align 8
  %add.ptr3.i.18.i = getelementptr inbounds i16, ptr %52, i64 %idx.ext2.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %incdec.ptr.i.17.i, ptr noundef nonnull align 2 dereferenceable(32) %add.ptr3.i.18.i, i64 32, i1 false)
  %incdec.ptr1.i.19.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 160
  %53 = load ptr, ptr %incdec.ptr1.i.18.i, align 8
  %add.ptr3.i.19.i = getelementptr inbounds i16, ptr %53, i64 %idx.ext2.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %incdec.ptr.i.18.i, ptr noundef nonnull align 2 dereferenceable(32) %add.ptr3.i.19.i, i64 32, i1 false)
  %incdec.ptr1.i.20.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 168
  %54 = load ptr, ptr %incdec.ptr1.i.19.i, align 8
  %add.ptr3.i.20.i = getelementptr inbounds i16, ptr %54, i64 %idx.ext2.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %incdec.ptr.i.19.i, ptr noundef nonnull align 2 dereferenceable(32) %add.ptr3.i.20.i, i64 32, i1 false)
  %incdec.ptr1.i.21.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 176
  %55 = load ptr, ptr %incdec.ptr1.i.20.i, align 8
  %add.ptr3.i.21.i = getelementptr inbounds i16, ptr %55, i64 %idx.ext2.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %incdec.ptr.i.20.i, ptr noundef nonnull align 2 dereferenceable(32) %add.ptr3.i.21.i, i64 32, i1 false)
  %incdec.ptr1.i.22.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 184
  %56 = load ptr, ptr %incdec.ptr1.i.21.i, align 8
  %add.ptr3.i.22.i = getelementptr inbounds i16, ptr %56, i64 %idx.ext2.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %incdec.ptr.i.21.i, ptr noundef nonnull align 2 dereferenceable(32) %add.ptr3.i.22.i, i64 32, i1 false)
  %incdec.ptr1.i.23.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 192
  %57 = load ptr, ptr %incdec.ptr1.i.22.i, align 8
  %add.ptr3.i.23.i = getelementptr inbounds i16, ptr %57, i64 %idx.ext2.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %incdec.ptr.i.22.i, ptr noundef nonnull align 2 dereferenceable(32) %add.ptr3.i.23.i, i64 32, i1 false)
  %incdec.ptr1.i.24.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 200
  %58 = load ptr, ptr %incdec.ptr1.i.23.i, align 8
  %add.ptr3.i.24.i = getelementptr inbounds i16, ptr %58, i64 %idx.ext2.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %incdec.ptr.i.23.i, ptr noundef nonnull align 2 dereferenceable(32) %add.ptr3.i.24.i, i64 32, i1 false)
  %incdec.ptr1.i.25.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 208
  %59 = load ptr, ptr %incdec.ptr1.i.24.i, align 8
  %add.ptr3.i.25.i = getelementptr inbounds i16, ptr %59, i64 %idx.ext2.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %incdec.ptr.i.24.i, ptr noundef nonnull align 2 dereferenceable(32) %add.ptr3.i.25.i, i64 32, i1 false)
  %incdec.ptr1.i.26.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 216
  %60 = load ptr, ptr %incdec.ptr1.i.25.i, align 8
  %add.ptr3.i.26.i = getelementptr inbounds i16, ptr %60, i64 %idx.ext2.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %incdec.ptr.i.25.i, ptr noundef nonnull align 2 dereferenceable(32) %add.ptr3.i.26.i, i64 32, i1 false)
  %incdec.ptr1.i.27.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 224
  %61 = load ptr, ptr %incdec.ptr1.i.26.i, align 8
  %add.ptr3.i.27.i = getelementptr inbounds i16, ptr %61, i64 %idx.ext2.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %incdec.ptr.i.26.i, ptr noundef nonnull align 2 dereferenceable(32) %add.ptr3.i.27.i, i64 32, i1 false)
  %incdec.ptr1.i.28.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 232
  %62 = load ptr, ptr %incdec.ptr1.i.27.i, align 8
  %add.ptr3.i.28.i = getelementptr inbounds i16, ptr %62, i64 %idx.ext2.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %incdec.ptr.i.27.i, ptr noundef nonnull align 2 dereferenceable(32) %add.ptr3.i.28.i, i64 32, i1 false)
  %incdec.ptr1.i.29.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 240
  %63 = load ptr, ptr %incdec.ptr1.i.28.i, align 8
  %add.ptr3.i.29.i = getelementptr inbounds i16, ptr %63, i64 %idx.ext2.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %incdec.ptr.i.28.i, ptr noundef nonnull align 2 dereferenceable(32) %add.ptr3.i.29.i, i64 32, i1 false)
  %incdec.ptr1.i.30.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 248
  %64 = load ptr, ptr %incdec.ptr1.i.29.i, align 8
  %add.ptr3.i.30.i = getelementptr inbounds i16, ptr %64, i64 %idx.ext2.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %incdec.ptr.i.29.i, ptr noundef nonnull align 2 dereferenceable(32) %add.ptr3.i.30.i, i64 32, i1 false)
  %65 = load ptr, ptr %incdec.ptr1.i.30.i, align 8
  %add.ptr3.i.31.i = getelementptr inbounds i16, ptr %65, i64 %idx.ext2.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %incdec.ptr.i.30.i, ptr noundef nonnull align 2 dereferenceable(32) %add.ptr3.i.31.i, i64 32, i1 false)
  %66 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr11.i.i = getelementptr inbounds i16, ptr %66, i64 %idx.ext2.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %add.ptr11.i.i, ptr noundef nonnull align 16 dereferenceable(32) %temp_buffer.i, i64 32, i1 false)
  %67 = load ptr, ptr %incdec.ptr1.i.i, align 8
  %add.ptr18.i.i = getelementptr inbounds i16, ptr %67, i64 %idx.ext2.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %add.ptr18.i.i, ptr noundef nonnull align 16 dereferenceable(32) %add.ptr.i.i, i64 32, i1 false)
  %68 = load ptr, ptr %incdec.ptr1.i.1.i, align 8
  %add.ptr11.i.1.i = getelementptr inbounds i16, ptr %68, i64 %idx.ext2.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %add.ptr11.i.1.i, ptr noundef nonnull align 16 dereferenceable(32) %incdec.ptr.i.i, i64 32, i1 false)
  %69 = load ptr, ptr %incdec.ptr1.i.2.i, align 8
  %add.ptr18.i.1.i = getelementptr inbounds i16, ptr %69, i64 %idx.ext2.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %add.ptr18.i.1.i, ptr noundef nonnull align 16 dereferenceable(32) %incdec.ptr.i.16.i, i64 32, i1 false)
  %70 = load ptr, ptr %incdec.ptr1.i.3.i, align 8
  %add.ptr11.i.2.i = getelementptr inbounds i16, ptr %70, i64 %idx.ext2.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %add.ptr11.i.2.i, ptr noundef nonnull align 16 dereferenceable(32) %incdec.ptr.i.1.i, i64 32, i1 false)
  %71 = load ptr, ptr %incdec.ptr1.i.4.i, align 8
  %add.ptr18.i.2.i = getelementptr inbounds i16, ptr %71, i64 %idx.ext2.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %add.ptr18.i.2.i, ptr noundef nonnull align 16 dereferenceable(32) %incdec.ptr.i.17.i, i64 32, i1 false)
  %72 = load ptr, ptr %incdec.ptr1.i.5.i, align 8
  %add.ptr11.i.3.i = getelementptr inbounds i16, ptr %72, i64 %idx.ext2.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %add.ptr11.i.3.i, ptr noundef nonnull align 16 dereferenceable(32) %incdec.ptr.i.2.i, i64 32, i1 false)
  %73 = load ptr, ptr %incdec.ptr1.i.6.i, align 8
  %add.ptr18.i.3.i = getelementptr inbounds i16, ptr %73, i64 %idx.ext2.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %add.ptr18.i.3.i, ptr noundef nonnull align 16 dereferenceable(32) %incdec.ptr.i.18.i, i64 32, i1 false)
  %74 = load ptr, ptr %incdec.ptr1.i.7.i, align 8
  %add.ptr11.i.4.i = getelementptr inbounds i16, ptr %74, i64 %idx.ext2.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %add.ptr11.i.4.i, ptr noundef nonnull align 16 dereferenceable(32) %incdec.ptr.i.3.i, i64 32, i1 false)
  %75 = load ptr, ptr %incdec.ptr1.i.8.i, align 8
  %add.ptr18.i.4.i = getelementptr inbounds i16, ptr %75, i64 %idx.ext2.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %add.ptr18.i.4.i, ptr noundef nonnull align 16 dereferenceable(32) %incdec.ptr.i.19.i, i64 32, i1 false)
  %76 = load ptr, ptr %incdec.ptr1.i.9.i, align 8
  %add.ptr11.i.5.i = getelementptr inbounds i16, ptr %76, i64 %idx.ext2.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %add.ptr11.i.5.i, ptr noundef nonnull align 16 dereferenceable(32) %incdec.ptr.i.4.i, i64 32, i1 false)
  %77 = load ptr, ptr %incdec.ptr1.i.10.i, align 8
  %add.ptr18.i.5.i = getelementptr inbounds i16, ptr %77, i64 %idx.ext2.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %add.ptr18.i.5.i, ptr noundef nonnull align 16 dereferenceable(32) %incdec.ptr.i.20.i, i64 32, i1 false)
  %78 = load ptr, ptr %incdec.ptr1.i.11.i, align 8
  %add.ptr11.i.6.i = getelementptr inbounds i16, ptr %78, i64 %idx.ext2.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %add.ptr11.i.6.i, ptr noundef nonnull align 16 dereferenceable(32) %incdec.ptr.i.5.i, i64 32, i1 false)
  %79 = load ptr, ptr %incdec.ptr1.i.12.i, align 8
  %add.ptr18.i.6.i = getelementptr inbounds i16, ptr %79, i64 %idx.ext2.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %add.ptr18.i.6.i, ptr noundef nonnull align 16 dereferenceable(32) %incdec.ptr.i.21.i, i64 32, i1 false)
  %80 = load ptr, ptr %incdec.ptr1.i.13.i, align 8
  %add.ptr11.i.7.i = getelementptr inbounds i16, ptr %80, i64 %idx.ext2.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %add.ptr11.i.7.i, ptr noundef nonnull align 16 dereferenceable(32) %incdec.ptr.i.6.i, i64 32, i1 false)
  %81 = load ptr, ptr %incdec.ptr1.i.14.i, align 8
  %add.ptr18.i.7.i = getelementptr inbounds i16, ptr %81, i64 %idx.ext2.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %add.ptr18.i.7.i, ptr noundef nonnull align 16 dereferenceable(32) %incdec.ptr.i.22.i, i64 32, i1 false)
  %82 = load ptr, ptr %incdec.ptr1.i.15.i, align 8
  %add.ptr11.i.8.i = getelementptr inbounds i16, ptr %82, i64 %idx.ext2.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %add.ptr11.i.8.i, ptr noundef nonnull align 16 dereferenceable(32) %incdec.ptr.i.7.i, i64 32, i1 false)
  %83 = load ptr, ptr %incdec.ptr1.i.16.i, align 8
  %add.ptr18.i.8.i = getelementptr inbounds i16, ptr %83, i64 %idx.ext2.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %add.ptr18.i.8.i, ptr noundef nonnull align 16 dereferenceable(32) %incdec.ptr.i.23.i, i64 32, i1 false)
  %84 = load ptr, ptr %incdec.ptr1.i.17.i, align 8
  %add.ptr11.i.9.i = getelementptr inbounds i16, ptr %84, i64 %idx.ext2.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %add.ptr11.i.9.i, ptr noundef nonnull align 16 dereferenceable(32) %incdec.ptr.i.8.i, i64 32, i1 false)
  %85 = load ptr, ptr %incdec.ptr1.i.18.i, align 8
  %add.ptr18.i.9.i = getelementptr inbounds i16, ptr %85, i64 %idx.ext2.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %add.ptr18.i.9.i, ptr noundef nonnull align 16 dereferenceable(32) %incdec.ptr.i.24.i, i64 32, i1 false)
  %86 = load ptr, ptr %incdec.ptr1.i.19.i, align 8
  %add.ptr11.i.10.i = getelementptr inbounds i16, ptr %86, i64 %idx.ext2.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %add.ptr11.i.10.i, ptr noundef nonnull align 16 dereferenceable(32) %incdec.ptr.i.9.i, i64 32, i1 false)
  %87 = load ptr, ptr %incdec.ptr1.i.20.i, align 8
  %add.ptr18.i.10.i = getelementptr inbounds i16, ptr %87, i64 %idx.ext2.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %add.ptr18.i.10.i, ptr noundef nonnull align 16 dereferenceable(32) %incdec.ptr.i.25.i, i64 32, i1 false)
  %88 = load ptr, ptr %incdec.ptr1.i.21.i, align 8
  %add.ptr11.i.11.i = getelementptr inbounds i16, ptr %88, i64 %idx.ext2.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %add.ptr11.i.11.i, ptr noundef nonnull align 16 dereferenceable(32) %incdec.ptr.i.10.i, i64 32, i1 false)
  %89 = load ptr, ptr %incdec.ptr1.i.22.i, align 8
  %add.ptr18.i.11.i = getelementptr inbounds i16, ptr %89, i64 %idx.ext2.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %add.ptr18.i.11.i, ptr noundef nonnull align 16 dereferenceable(32) %incdec.ptr.i.26.i, i64 32, i1 false)
  %90 = load ptr, ptr %incdec.ptr1.i.23.i, align 8
  %add.ptr11.i.12.i = getelementptr inbounds i16, ptr %90, i64 %idx.ext2.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %add.ptr11.i.12.i, ptr noundef nonnull align 16 dereferenceable(32) %incdec.ptr.i.11.i, i64 32, i1 false)
  %91 = load ptr, ptr %incdec.ptr1.i.24.i, align 8
  %add.ptr18.i.12.i = getelementptr inbounds i16, ptr %91, i64 %idx.ext2.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %add.ptr18.i.12.i, ptr noundef nonnull align 16 dereferenceable(32) %incdec.ptr.i.27.i, i64 32, i1 false)
  %92 = load ptr, ptr %incdec.ptr1.i.25.i, align 8
  %add.ptr11.i.13.i = getelementptr inbounds i16, ptr %92, i64 %idx.ext2.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %add.ptr11.i.13.i, ptr noundef nonnull align 16 dereferenceable(32) %incdec.ptr.i.12.i, i64 32, i1 false)
  %93 = load ptr, ptr %incdec.ptr1.i.26.i, align 8
  %add.ptr18.i.13.i = getelementptr inbounds i16, ptr %93, i64 %idx.ext2.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %add.ptr18.i.13.i, ptr noundef nonnull align 16 dereferenceable(32) %incdec.ptr.i.28.i, i64 32, i1 false)
  %94 = load ptr, ptr %incdec.ptr1.i.27.i, align 8
  %add.ptr11.i.14.i = getelementptr inbounds i16, ptr %94, i64 %idx.ext2.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %add.ptr11.i.14.i, ptr noundef nonnull align 16 dereferenceable(32) %incdec.ptr.i.13.i, i64 32, i1 false)
  %95 = load ptr, ptr %incdec.ptr1.i.28.i, align 8
  %add.ptr18.i.14.i = getelementptr inbounds i16, ptr %95, i64 %idx.ext2.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %add.ptr18.i.14.i, ptr noundef nonnull align 16 dereferenceable(32) %incdec.ptr.i.29.i, i64 32, i1 false)
  %96 = load ptr, ptr %incdec.ptr1.i.29.i, align 8
  %add.ptr11.i.15.i = getelementptr inbounds i16, ptr %96, i64 %idx.ext2.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %add.ptr11.i.15.i, ptr noundef nonnull align 16 dereferenceable(32) %incdec.ptr.i.14.i, i64 32, i1 false)
  %97 = load ptr, ptr %incdec.ptr1.i.30.i, align 8
  %add.ptr18.i.15.i = getelementptr inbounds i16, ptr %97, i64 %idx.ext2.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %add.ptr18.i.15.i, ptr noundef nonnull align 16 dereferenceable(32) %incdec.ptr.i.30.i, i64 32, i1 false)
  %98 = load i32, ptr %chroma_format_idc.i, align 4
  %cmp10.not.i = icmp eq i32 %98, 0
  br i1 %cmp10.not.i, label %for.inc.i, label %if.then12.i

if.then12.i:                                      ; preds = %if.then.i
  %conv9.i = sext i16 %33 to i32
  %99 = load i32, ptr %mb_cr_size_x.i, align 4
  %mul.i = mul nsw i32 %99, %conv9.i
  %shr.i = lshr i32 %mul.i, 4
  %conv14.i = trunc i32 %shr.i to i16
  store i16 %conv14.i, ptr %x0.i, align 2
  %conv15.i = sext i16 %32 to i32
  %100 = load i32, ptr %mb_cr_size_y.i, align 8
  %mul16.i = mul nsw i32 %100, %conv15.i
  %shr17.i = lshr i32 %mul16.i, 4
  %conv18.i = trunc i32 %shr17.i to i16
  store i16 %conv18.i, ptr %y0.i, align 2
  %101 = load ptr, ptr %28, align 8
  %sext.i = shl i32 %shr17.i, 16
  %conv20.i = ashr exact i32 %sext.i, 16
  %idx.ext21.i = sext i32 %conv20.i to i64
  %add.ptr22.i = getelementptr inbounds ptr, ptr %101, i64 %idx.ext21.i
  %idx.ext.i.i = sext i32 %100 to i64
  %add.ptr.i54.i = getelementptr inbounds [16 x i16], ptr %temp_buffer.i, i64 %idx.ext.i.i
  %cmp39.i.i = icmp sgt i32 %100, 0
  br i1 %cmp39.i.i, label %for.body.lr.ph.i.i, label %for.inc.i

for.body.lr.ph.i.i:                               ; preds = %if.then12.i
  %sext118.i = shl i32 %shr.i, 16
  %conv24.i = ashr exact i32 %sext118.i, 16
  %mul.i.i = shl nuw i32 %100, 1
  %idx.ext2.i55.i = sext i32 %conv24.i to i64
  %conv.i.i = sext i32 %99 to i64
  %mul4.i.i = shl nsw i64 %conv.i.i, 1
  %smax.i.i = call i32 @llvm.smax.i32(i32 %mul.i.i, i32 1)
  %xtraiter = and i32 %smax.i.i, 3
  %102 = icmp slt i32 %mul.i.i, 4
  br i1 %102, label %for.body8.i67.i.preheader.unr-lcssa, label %for.body.lr.ph.i.i.new

for.body.lr.ph.i.i.new:                           ; preds = %for.body.lr.ph.i.i
  %unroll_iter = and i32 %smax.i.i, 2147483644
  br label %for.body.i56.i

for.body.i56.i:                                   ; preds = %for.body.i56.i, %for.body.lr.ph.i.i.new
  %temp_img.041.i58.i = phi ptr [ %add.ptr22.i, %for.body.lr.ph.i.i.new ], [ %incdec.ptr1.i61.i.3, %for.body.i56.i ]
  %temp.addr.040.i59.i = phi ptr [ %temp_buffer.i, %for.body.lr.ph.i.i.new ], [ %incdec.ptr.i60.i.3, %for.body.i56.i ]
  %niter = phi i32 [ 0, %for.body.lr.ph.i.i.new ], [ %niter.next.3, %for.body.i56.i ]
  %incdec.ptr.i60.i = getelementptr inbounds i8, ptr %temp.addr.040.i59.i, i64 32
  %incdec.ptr1.i61.i = getelementptr inbounds i8, ptr %temp_img.041.i58.i, i64 8
  %103 = load ptr, ptr %temp_img.041.i58.i, align 8
  %add.ptr3.i62.i = getelementptr inbounds i16, ptr %103, i64 %idx.ext2.i55.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %temp.addr.040.i59.i, ptr align 2 %add.ptr3.i62.i, i64 %mul4.i.i, i1 false)
  %incdec.ptr.i60.i.1 = getelementptr inbounds i8, ptr %temp.addr.040.i59.i, i64 64
  %incdec.ptr1.i61.i.1 = getelementptr inbounds i8, ptr %temp_img.041.i58.i, i64 16
  %104 = load ptr, ptr %incdec.ptr1.i61.i, align 8
  %add.ptr3.i62.i.1 = getelementptr inbounds i16, ptr %104, i64 %idx.ext2.i55.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %incdec.ptr.i60.i, ptr align 2 %add.ptr3.i62.i.1, i64 %mul4.i.i, i1 false)
  %incdec.ptr.i60.i.2 = getelementptr inbounds i8, ptr %temp.addr.040.i59.i, i64 96
  %incdec.ptr1.i61.i.2 = getelementptr inbounds i8, ptr %temp_img.041.i58.i, i64 24
  %105 = load ptr, ptr %incdec.ptr1.i61.i.1, align 8
  %add.ptr3.i62.i.2 = getelementptr inbounds i16, ptr %105, i64 %idx.ext2.i55.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %incdec.ptr.i60.i.1, ptr align 2 %add.ptr3.i62.i.2, i64 %mul4.i.i, i1 false)
  %incdec.ptr.i60.i.3 = getelementptr inbounds i8, ptr %temp.addr.040.i59.i, i64 128
  %incdec.ptr1.i61.i.3 = getelementptr inbounds i8, ptr %temp_img.041.i58.i, i64 32
  %106 = load ptr, ptr %incdec.ptr1.i61.i.2, align 8
  %add.ptr3.i62.i.3 = getelementptr inbounds i16, ptr %106, i64 %idx.ext2.i55.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %incdec.ptr.i60.i.2, ptr align 2 %add.ptr3.i62.i.3, i64 %mul4.i.i, i1 false)
  %niter.next.3 = add i32 %niter, 4
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %for.body8.i67.i.preheader.unr-lcssa, label %for.body.i56.i

for.body8.i67.i.preheader.unr-lcssa:              ; preds = %for.body.i56.i, %for.body.lr.ph.i.i
  %temp_img.041.i58.i.unr = phi ptr [ %add.ptr22.i, %for.body.lr.ph.i.i ], [ %incdec.ptr1.i61.i.3, %for.body.i56.i ]
  %temp.addr.040.i59.i.unr = phi ptr [ %temp_buffer.i, %for.body.lr.ph.i.i ], [ %incdec.ptr.i60.i.3, %for.body.i56.i ]
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.body8.i67.i.preheader, label %for.body.i56.i.epil

for.body.i56.i.epil:                              ; preds = %for.body8.i67.i.preheader.unr-lcssa, %for.body.i56.i.epil
  %temp_img.041.i58.i.epil = phi ptr [ %incdec.ptr1.i61.i.epil, %for.body.i56.i.epil ], [ %temp_img.041.i58.i.unr, %for.body8.i67.i.preheader.unr-lcssa ]
  %temp.addr.040.i59.i.epil = phi ptr [ %incdec.ptr.i60.i.epil, %for.body.i56.i.epil ], [ %temp.addr.040.i59.i.unr, %for.body8.i67.i.preheader.unr-lcssa ]
  %epil.iter = phi i32 [ %epil.iter.next, %for.body.i56.i.epil ], [ 0, %for.body8.i67.i.preheader.unr-lcssa ]
  %incdec.ptr.i60.i.epil = getelementptr inbounds i8, ptr %temp.addr.040.i59.i.epil, i64 32
  %incdec.ptr1.i61.i.epil = getelementptr inbounds i8, ptr %temp_img.041.i58.i.epil, i64 8
  %107 = load ptr, ptr %temp_img.041.i58.i.epil, align 8
  %add.ptr3.i62.i.epil = getelementptr inbounds i16, ptr %107, i64 %idx.ext2.i55.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %temp.addr.040.i59.i.epil, ptr align 2 %add.ptr3.i62.i.epil, i64 %mul4.i.i, i1 false)
  %epil.iter.next = add i32 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %for.body8.i67.i.preheader, label %for.body.i56.i.epil, !llvm.loop !11

for.body8.i67.i.preheader:                        ; preds = %for.body.i56.i.epil, %for.body8.i67.i.preheader.unr-lcssa
  %xtraiter417 = and i32 %100, 1
  %108 = icmp eq i32 %100, 1
  br i1 %108, label %update_mbaff_macroblock_data.exit80.i.unr-lcssa, label %for.body8.i67.i.preheader.new

for.body8.i67.i.preheader.new:                    ; preds = %for.body8.i67.i.preheader
  %unroll_iter420 = and i32 %100, 2147483646
  br label %for.body8.i67.i

for.body8.i67.i:                                  ; preds = %for.body8.i67.i, %for.body8.i67.i.preheader.new
  %temp_odd.046.i69.i = phi ptr [ %add.ptr.i54.i, %for.body8.i67.i.preheader.new ], [ %incdec.ptr19.i77.i.1, %for.body8.i67.i ]
  %temp_evn.045.i70.i = phi ptr [ %temp_buffer.i, %for.body8.i67.i.preheader.new ], [ %incdec.ptr12.i74.i.1, %for.body8.i67.i ]
  %cur_img.addr.044.i71.i = phi ptr [ %add.ptr22.i, %for.body8.i67.i.preheader.new ], [ %incdec.ptr16.i75.i.1, %for.body8.i67.i ]
  %niter421 = phi i32 [ 0, %for.body8.i67.i.preheader.new ], [ %niter421.next.1, %for.body8.i67.i ]
  %incdec.ptr9.i72.i = getelementptr inbounds i8, ptr %cur_img.addr.044.i71.i, i64 8
  %109 = load ptr, ptr %cur_img.addr.044.i71.i, align 8
  %add.ptr11.i73.i = getelementptr inbounds i16, ptr %109, i64 %idx.ext2.i55.i
  %incdec.ptr12.i74.i = getelementptr inbounds i8, ptr %temp_evn.045.i70.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %add.ptr11.i73.i, ptr nonnull align 2 %temp_evn.045.i70.i, i64 %mul4.i.i, i1 false)
  %incdec.ptr16.i75.i = getelementptr inbounds i8, ptr %cur_img.addr.044.i71.i, i64 16
  %110 = load ptr, ptr %incdec.ptr9.i72.i, align 8
  %add.ptr18.i76.i = getelementptr inbounds i16, ptr %110, i64 %idx.ext2.i55.i
  %incdec.ptr19.i77.i = getelementptr inbounds i8, ptr %temp_odd.046.i69.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %add.ptr18.i76.i, ptr align 2 %temp_odd.046.i69.i, i64 %mul4.i.i, i1 false)
  %incdec.ptr9.i72.i.1 = getelementptr inbounds i8, ptr %cur_img.addr.044.i71.i, i64 24
  %111 = load ptr, ptr %incdec.ptr16.i75.i, align 8
  %add.ptr11.i73.i.1 = getelementptr inbounds i16, ptr %111, i64 %idx.ext2.i55.i
  %incdec.ptr12.i74.i.1 = getelementptr inbounds i8, ptr %temp_evn.045.i70.i, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %add.ptr11.i73.i.1, ptr nonnull align 2 %incdec.ptr12.i74.i, i64 %mul4.i.i, i1 false)
  %incdec.ptr16.i75.i.1 = getelementptr inbounds i8, ptr %cur_img.addr.044.i71.i, i64 32
  %112 = load ptr, ptr %incdec.ptr9.i72.i.1, align 8
  %add.ptr18.i76.i.1 = getelementptr inbounds i16, ptr %112, i64 %idx.ext2.i55.i
  %incdec.ptr19.i77.i.1 = getelementptr inbounds i8, ptr %temp_odd.046.i69.i, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %add.ptr18.i76.i.1, ptr nonnull align 2 %incdec.ptr19.i77.i, i64 %mul4.i.i, i1 false)
  %niter421.next.1 = add i32 %niter421, 2
  %niter421.ncmp.1 = icmp eq i32 %niter421.next.1, %unroll_iter420
  br i1 %niter421.ncmp.1, label %update_mbaff_macroblock_data.exit80.i.unr-lcssa, label %for.body8.i67.i

update_mbaff_macroblock_data.exit80.i.unr-lcssa:  ; preds = %for.body8.i67.i, %for.body8.i67.i.preheader
  %temp_odd.046.i69.i.unr = phi ptr [ %add.ptr.i54.i, %for.body8.i67.i.preheader ], [ %incdec.ptr19.i77.i.1, %for.body8.i67.i ]
  %temp_evn.045.i70.i.unr = phi ptr [ %temp_buffer.i, %for.body8.i67.i.preheader ], [ %incdec.ptr12.i74.i.1, %for.body8.i67.i ]
  %cur_img.addr.044.i71.i.unr = phi ptr [ %add.ptr22.i, %for.body8.i67.i.preheader ], [ %incdec.ptr16.i75.i.1, %for.body8.i67.i ]
  %lcmp.mod419.not = icmp eq i32 %xtraiter417, 0
  br i1 %lcmp.mod419.not, label %update_mbaff_macroblock_data.exit80.i, label %for.body8.i67.i.epil

for.body8.i67.i.epil:                             ; preds = %update_mbaff_macroblock_data.exit80.i.unr-lcssa
  %incdec.ptr9.i72.i.epil = getelementptr inbounds i8, ptr %cur_img.addr.044.i71.i.unr, i64 8
  %113 = load ptr, ptr %cur_img.addr.044.i71.i.unr, align 8
  %add.ptr11.i73.i.epil = getelementptr inbounds i16, ptr %113, i64 %idx.ext2.i55.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %add.ptr11.i73.i.epil, ptr nonnull align 2 %temp_evn.045.i70.i.unr, i64 %mul4.i.i, i1 false)
  %114 = load ptr, ptr %incdec.ptr9.i72.i.epil, align 8
  %add.ptr18.i76.i.epil = getelementptr inbounds i16, ptr %114, i64 %idx.ext2.i55.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %add.ptr18.i76.i.epil, ptr align 2 %temp_odd.046.i69.i.unr, i64 %mul4.i.i, i1 false)
  br label %update_mbaff_macroblock_data.exit80.i

update_mbaff_macroblock_data.exit80.i:            ; preds = %update_mbaff_macroblock_data.exit80.i.unr-lcssa, %for.body8.i67.i.epil
  %.pre.i = load i16, ptr %y0.i, align 2
  %.pre122.i = load i32, ptr %mb_cr_size_y.i, align 8
  %.pre123.i = sext i32 %.pre122.i to i64
  %115 = load ptr, ptr %arrayidx27.i, align 8
  %idx.ext29.i = sext i16 %.pre.i to i64
  %add.ptr30.i = getelementptr inbounds ptr, ptr %115, i64 %idx.ext29.i
  %add.ptr.i82.i = getelementptr inbounds [16 x i16], ptr %temp_buffer.i, i64 %.pre123.i
  %cmp39.i83.i = icmp sgt i32 %.pre122.i, 0
  br i1 %cmp39.i83.i, label %for.body.lr.ph.i84.i, label %for.inc.i

for.body.lr.ph.i84.i:                             ; preds = %update_mbaff_macroblock_data.exit80.i
  %116 = load i32, ptr %mb_cr_size_x.i, align 4
  %117 = load i16, ptr %x0.i, align 2
  %mul.i85.i = shl nuw i32 %.pre122.i, 1
  %idx.ext2.i86.i = sext i16 %117 to i64
  %conv.i87.i = sext i32 %116 to i64
  %mul4.i88.i = shl nsw i64 %conv.i87.i, 1
  %smax.i89.i = call i32 @llvm.smax.i32(i32 %mul.i85.i, i32 1)
  %xtraiter422 = and i32 %smax.i89.i, 3
  %118 = icmp slt i32 %mul.i85.i, 4
  br i1 %118, label %for.body8.i104.i.preheader.unr-lcssa, label %for.body.lr.ph.i84.i.new

for.body.lr.ph.i84.i.new:                         ; preds = %for.body.lr.ph.i84.i
  %unroll_iter425 = and i32 %smax.i89.i, 2147483644
  br label %for.body.i90.i

for.body.i90.i:                                   ; preds = %for.body.i90.i, %for.body.lr.ph.i84.i.new
  %temp_img.041.i92.i = phi ptr [ %add.ptr30.i, %for.body.lr.ph.i84.i.new ], [ %incdec.ptr1.i95.i.3, %for.body.i90.i ]
  %temp.addr.040.i93.i = phi ptr [ %temp_buffer.i, %for.body.lr.ph.i84.i.new ], [ %incdec.ptr.i94.i.3, %for.body.i90.i ]
  %niter426 = phi i32 [ 0, %for.body.lr.ph.i84.i.new ], [ %niter426.next.3, %for.body.i90.i ]
  %incdec.ptr.i94.i = getelementptr inbounds i8, ptr %temp.addr.040.i93.i, i64 32
  %incdec.ptr1.i95.i = getelementptr inbounds i8, ptr %temp_img.041.i92.i, i64 8
  %119 = load ptr, ptr %temp_img.041.i92.i, align 8
  %add.ptr3.i96.i = getelementptr inbounds i16, ptr %119, i64 %idx.ext2.i86.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %temp.addr.040.i93.i, ptr align 2 %add.ptr3.i96.i, i64 %mul4.i88.i, i1 false)
  %incdec.ptr.i94.i.1 = getelementptr inbounds i8, ptr %temp.addr.040.i93.i, i64 64
  %incdec.ptr1.i95.i.1 = getelementptr inbounds i8, ptr %temp_img.041.i92.i, i64 16
  %120 = load ptr, ptr %incdec.ptr1.i95.i, align 8
  %add.ptr3.i96.i.1 = getelementptr inbounds i16, ptr %120, i64 %idx.ext2.i86.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %incdec.ptr.i94.i, ptr align 2 %add.ptr3.i96.i.1, i64 %mul4.i88.i, i1 false)
  %incdec.ptr.i94.i.2 = getelementptr inbounds i8, ptr %temp.addr.040.i93.i, i64 96
  %incdec.ptr1.i95.i.2 = getelementptr inbounds i8, ptr %temp_img.041.i92.i, i64 24
  %121 = load ptr, ptr %incdec.ptr1.i95.i.1, align 8
  %add.ptr3.i96.i.2 = getelementptr inbounds i16, ptr %121, i64 %idx.ext2.i86.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %incdec.ptr.i94.i.1, ptr align 2 %add.ptr3.i96.i.2, i64 %mul4.i88.i, i1 false)
  %incdec.ptr.i94.i.3 = getelementptr inbounds i8, ptr %temp.addr.040.i93.i, i64 128
  %incdec.ptr1.i95.i.3 = getelementptr inbounds i8, ptr %temp_img.041.i92.i, i64 32
  %122 = load ptr, ptr %incdec.ptr1.i95.i.2, align 8
  %add.ptr3.i96.i.3 = getelementptr inbounds i16, ptr %122, i64 %idx.ext2.i86.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %incdec.ptr.i94.i.2, ptr align 2 %add.ptr3.i96.i.3, i64 %mul4.i88.i, i1 false)
  %niter426.next.3 = add i32 %niter426, 4
  %niter426.ncmp.3 = icmp eq i32 %niter426.next.3, %unroll_iter425
  br i1 %niter426.ncmp.3, label %for.body8.i104.i.preheader.unr-lcssa, label %for.body.i90.i

for.body8.i104.i.preheader.unr-lcssa:             ; preds = %for.body.i90.i, %for.body.lr.ph.i84.i
  %temp_img.041.i92.i.unr = phi ptr [ %add.ptr30.i, %for.body.lr.ph.i84.i ], [ %incdec.ptr1.i95.i.3, %for.body.i90.i ]
  %temp.addr.040.i93.i.unr = phi ptr [ %temp_buffer.i, %for.body.lr.ph.i84.i ], [ %incdec.ptr.i94.i.3, %for.body.i90.i ]
  %lcmp.mod424.not = icmp eq i32 %xtraiter422, 0
  br i1 %lcmp.mod424.not, label %for.body8.i104.i.preheader, label %for.body.i90.i.epil

for.body.i90.i.epil:                              ; preds = %for.body8.i104.i.preheader.unr-lcssa, %for.body.i90.i.epil
  %temp_img.041.i92.i.epil = phi ptr [ %incdec.ptr1.i95.i.epil, %for.body.i90.i.epil ], [ %temp_img.041.i92.i.unr, %for.body8.i104.i.preheader.unr-lcssa ]
  %temp.addr.040.i93.i.epil = phi ptr [ %incdec.ptr.i94.i.epil, %for.body.i90.i.epil ], [ %temp.addr.040.i93.i.unr, %for.body8.i104.i.preheader.unr-lcssa ]
  %epil.iter423 = phi i32 [ %epil.iter423.next, %for.body.i90.i.epil ], [ 0, %for.body8.i104.i.preheader.unr-lcssa ]
  %incdec.ptr.i94.i.epil = getelementptr inbounds i8, ptr %temp.addr.040.i93.i.epil, i64 32
  %incdec.ptr1.i95.i.epil = getelementptr inbounds i8, ptr %temp_img.041.i92.i.epil, i64 8
  %123 = load ptr, ptr %temp_img.041.i92.i.epil, align 8
  %add.ptr3.i96.i.epil = getelementptr inbounds i16, ptr %123, i64 %idx.ext2.i86.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %temp.addr.040.i93.i.epil, ptr align 2 %add.ptr3.i96.i.epil, i64 %mul4.i88.i, i1 false)
  %epil.iter423.next = add i32 %epil.iter423, 1
  %epil.iter423.cmp.not = icmp eq i32 %epil.iter423.next, %xtraiter422
  br i1 %epil.iter423.cmp.not, label %for.body8.i104.i.preheader, label %for.body.i90.i.epil, !llvm.loop !12

for.body8.i104.i.preheader:                       ; preds = %for.body.i90.i.epil, %for.body8.i104.i.preheader.unr-lcssa
  %xtraiter427 = and i32 %.pre122.i, 1
  %124 = icmp eq i32 %.pre122.i, 1
  br i1 %124, label %for.inc.i.loopexit.unr-lcssa, label %for.body8.i104.i.preheader.new

for.body8.i104.i.preheader.new:                   ; preds = %for.body8.i104.i.preheader
  %unroll_iter430 = and i32 %.pre122.i, 2147483646
  br label %for.body8.i104.i

for.body8.i104.i:                                 ; preds = %for.body8.i104.i, %for.body8.i104.i.preheader.new
  %temp_odd.046.i106.i = phi ptr [ %add.ptr.i82.i, %for.body8.i104.i.preheader.new ], [ %incdec.ptr19.i114.i.1, %for.body8.i104.i ]
  %temp_evn.045.i107.i = phi ptr [ %temp_buffer.i, %for.body8.i104.i.preheader.new ], [ %incdec.ptr12.i111.i.1, %for.body8.i104.i ]
  %cur_img.addr.044.i108.i = phi ptr [ %add.ptr30.i, %for.body8.i104.i.preheader.new ], [ %incdec.ptr16.i112.i.1, %for.body8.i104.i ]
  %niter431 = phi i32 [ 0, %for.body8.i104.i.preheader.new ], [ %niter431.next.1, %for.body8.i104.i ]
  %incdec.ptr9.i109.i = getelementptr inbounds i8, ptr %cur_img.addr.044.i108.i, i64 8
  %125 = load ptr, ptr %cur_img.addr.044.i108.i, align 8
  %add.ptr11.i110.i = getelementptr inbounds i16, ptr %125, i64 %idx.ext2.i86.i
  %incdec.ptr12.i111.i = getelementptr inbounds i8, ptr %temp_evn.045.i107.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %add.ptr11.i110.i, ptr nonnull align 2 %temp_evn.045.i107.i, i64 %mul4.i88.i, i1 false)
  %incdec.ptr16.i112.i = getelementptr inbounds i8, ptr %cur_img.addr.044.i108.i, i64 16
  %126 = load ptr, ptr %incdec.ptr9.i109.i, align 8
  %add.ptr18.i113.i = getelementptr inbounds i16, ptr %126, i64 %idx.ext2.i86.i
  %incdec.ptr19.i114.i = getelementptr inbounds i8, ptr %temp_odd.046.i106.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %add.ptr18.i113.i, ptr align 2 %temp_odd.046.i106.i, i64 %mul4.i88.i, i1 false)
  %incdec.ptr9.i109.i.1 = getelementptr inbounds i8, ptr %cur_img.addr.044.i108.i, i64 24
  %127 = load ptr, ptr %incdec.ptr16.i112.i, align 8
  %add.ptr11.i110.i.1 = getelementptr inbounds i16, ptr %127, i64 %idx.ext2.i86.i
  %incdec.ptr12.i111.i.1 = getelementptr inbounds i8, ptr %temp_evn.045.i107.i, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %add.ptr11.i110.i.1, ptr nonnull align 2 %incdec.ptr12.i111.i, i64 %mul4.i88.i, i1 false)
  %incdec.ptr16.i112.i.1 = getelementptr inbounds i8, ptr %cur_img.addr.044.i108.i, i64 32
  %128 = load ptr, ptr %incdec.ptr9.i109.i.1, align 8
  %add.ptr18.i113.i.1 = getelementptr inbounds i16, ptr %128, i64 %idx.ext2.i86.i
  %incdec.ptr19.i114.i.1 = getelementptr inbounds i8, ptr %temp_odd.046.i106.i, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %add.ptr18.i113.i.1, ptr nonnull align 2 %incdec.ptr19.i114.i, i64 %mul4.i88.i, i1 false)
  %niter431.next.1 = add i32 %niter431, 2
  %niter431.ncmp.1 = icmp eq i32 %niter431.next.1, %unroll_iter430
  br i1 %niter431.ncmp.1, label %for.inc.i.loopexit.unr-lcssa, label %for.body8.i104.i

for.inc.i.loopexit.unr-lcssa:                     ; preds = %for.body8.i104.i, %for.body8.i104.i.preheader
  %temp_odd.046.i106.i.unr = phi ptr [ %add.ptr.i82.i, %for.body8.i104.i.preheader ], [ %incdec.ptr19.i114.i.1, %for.body8.i104.i ]
  %temp_evn.045.i107.i.unr = phi ptr [ %temp_buffer.i, %for.body8.i104.i.preheader ], [ %incdec.ptr12.i111.i.1, %for.body8.i104.i ]
  %cur_img.addr.044.i108.i.unr = phi ptr [ %add.ptr30.i, %for.body8.i104.i.preheader ], [ %incdec.ptr16.i112.i.1, %for.body8.i104.i ]
  %lcmp.mod429.not = icmp eq i32 %xtraiter427, 0
  br i1 %lcmp.mod429.not, label %for.inc.i, label %for.body8.i104.i.epil

for.body8.i104.i.epil:                            ; preds = %for.inc.i.loopexit.unr-lcssa
  %incdec.ptr9.i109.i.epil = getelementptr inbounds i8, ptr %cur_img.addr.044.i108.i.unr, i64 8
  %129 = load ptr, ptr %cur_img.addr.044.i108.i.unr, align 8
  %add.ptr11.i110.i.epil = getelementptr inbounds i16, ptr %129, i64 %idx.ext2.i86.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %add.ptr11.i110.i.epil, ptr nonnull align 2 %temp_evn.045.i107.i.unr, i64 %mul4.i88.i, i1 false)
  %130 = load ptr, ptr %incdec.ptr9.i109.i.epil, align 8
  %add.ptr18.i113.i.epil = getelementptr inbounds i16, ptr %130, i64 %idx.ext2.i86.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %add.ptr18.i113.i.epil, ptr align 2 %temp_odd.046.i106.i.unr, i64 %mul4.i88.i, i1 false)
  br label %for.inc.i

for.inc.i:                                        ; preds = %for.body8.i104.i.epil, %for.inc.i.loopexit.unr-lcssa, %update_mbaff_macroblock_data.exit80.i, %if.then12.i, %if.then.i, %for.body.i
  %add.i = add i16 %i.0120.i, 2
  %conv.i = sext i16 %add.i to i32
  %131 = load i32, ptr %PicSizeInMbs.i, align 4
  %cmp.i = icmp sgt i32 %131, %conv.i
  br i1 %cmp.i, label %for.body.i, label %MbAffPostProc.exit

MbAffPostProc.exit:                               ; preds = %for.inc.i, %if.then43
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %y0.i) #27
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %x0.i) #27
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %temp_buffer.i) #27
  br label %if.end44

if.end44:                                         ; preds = %MbAffPostProc.exit, %if.end41
  %structure45 = getelementptr inbounds i8, ptr %p_Vid, i64 848876
  %132 = load i32, ptr %structure45, align 4
  %cmp46 = icmp eq i32 %132, 0
  br i1 %cmp46, label %if.end49, label %if.else48

if.else48:                                        ; preds = %if.end44
  %number.i = getelementptr inbounds i8, ptr %p_Vid, i64 848712
  %133 = load i32, ptr %number.i, align 8
  %div.i = sdiv i32 %133, 2
  store i32 %div.i, ptr %number.i, align 8
  br label %if.end49

if.end49:                                         ; preds = %if.end44, %if.else48
  %134 = load ptr, ptr %dec_picture, align 8
  %used_for_reference50 = getelementptr inbounds i8, ptr %134, i64 44
  %135 = load i32, ptr %used_for_reference50, align 4
  %tobool51.not = icmp eq i32 %135, 0
  br i1 %tobool51.not, label %lor.lhs.false52, label %if.then54

lor.lhs.false52:                                  ; preds = %if.end49
  %inter_view_flag = getelementptr inbounds i8, ptr %134, i64 348
  %136 = load i32, ptr %inter_view_flag, align 4
  %cmp53 = icmp eq i32 %136, 1
  br i1 %cmp53, label %if.then54, label %if.end55

if.then54:                                        ; preds = %lor.lhs.false52, %if.end49
  %iLumaPadX.i = getelementptr inbounds i8, ptr %p_Vid, i64 856840
  %137 = load i32, ptr %iLumaPadX.i, align 8
  %iLumaPadY.i = getelementptr inbounds i8, ptr %p_Vid, i64 856844
  %138 = load i32, ptr %iLumaPadY.i, align 4
  %size_x.i = getelementptr inbounds i8, ptr %134, i64 64
  %139 = load i32, ptr %size_x.i, align 8
  %size_y.i = getelementptr inbounds i8, ptr %134, i64 68
  %140 = load i32, ptr %size_y.i, align 4
  %iLumaStride.i = getelementptr inbounds i8, ptr %134, i64 356
  %141 = load i32, ptr %iLumaStride.i, align 4
  %imgY.i = getelementptr inbounds i8, ptr %134, i64 128
  %142 = load ptr, ptr %imgY.i, align 8
  %143 = load ptr, ptr %142, align 8
  call void @pad_buf(ptr noundef %143, i32 noundef %139, i32 noundef %140, i32 noundef %141, i32 noundef %137, i32 noundef %138)
  %chroma_format_idc.i410 = getelementptr inbounds i8, ptr %134, i64 268
  %144 = load i32, ptr %chroma_format_idc.i410, align 4
  %cmp.not.i = icmp eq i32 %144, 0
  br i1 %cmp.not.i, label %if.end55, label %if.then.i411

if.then.i411:                                     ; preds = %if.then54
  %iChromaPadX.i = getelementptr inbounds i8, ptr %p_Vid, i64 856848
  %145 = load i32, ptr %iChromaPadX.i, align 8
  %iChromaPadY.i = getelementptr inbounds i8, ptr %p_Vid, i64 856852
  %146 = load i32, ptr %iChromaPadY.i, align 4
  %size_x_cr.i = getelementptr inbounds i8, ptr %134, i64 72
  %147 = load i32, ptr %size_x_cr.i, align 8
  %size_y_cr.i = getelementptr inbounds i8, ptr %134, i64 76
  %148 = load i32, ptr %size_y_cr.i, align 4
  %iChromaStride.i = getelementptr inbounds i8, ptr %134, i64 360
  %149 = load i32, ptr %iChromaStride.i, align 8
  %imgUV.i = getelementptr inbounds i8, ptr %134, i64 136
  %150 = load ptr, ptr %imgUV.i, align 8
  %151 = load ptr, ptr %150, align 8
  %152 = load ptr, ptr %151, align 8
  call void @pad_buf(ptr noundef %152, i32 noundef %147, i32 noundef %148, i32 noundef %149, i32 noundef %145, i32 noundef %146)
  %153 = load ptr, ptr %imgUV.i, align 8
  %arrayidx2.i = getelementptr inbounds i8, ptr %153, i64 8
  %154 = load ptr, ptr %arrayidx2.i, align 8
  %155 = load ptr, ptr %154, align 8
  call void @pad_buf(ptr noundef %155, i32 noundef %147, i32 noundef %148, i32 noundef %149, i32 noundef %145, i32 noundef %146)
  br label %if.end55

if.end55:                                         ; preds = %if.then.i411, %if.then54, %lor.lhs.false52
  %156 = load ptr, ptr %dec_picture, align 8
  %157 = load i32, ptr %156, align 8
  %slice_type57 = getelementptr inbounds i8, ptr %156, i64 248
  %158 = load i32, ptr %slice_type57, align 8
  %frame_poc58 = getelementptr inbounds i8, ptr %156, i64 16
  %159 = load i32, ptr %frame_poc58, align 8
  %used_for_reference61 = getelementptr inbounds i8, ptr %156, i64 44
  %160 = load i32, ptr %used_for_reference61, align 4
  %.fr = freeze i32 %160
  %qp62 = getelementptr inbounds i8, ptr %156, i64 296
  %161 = load i32, ptr %qp62, align 8
  %pic_num63 = getelementptr inbounds i8, ptr %156, i64 28
  %162 = load i32, ptr %pic_num63, align 4
  %idr_flag = getelementptr inbounds i8, ptr %156, i64 252
  %163 = load i32, ptr %idr_flag, align 4
  %chroma_format_idc64 = getelementptr inbounds i8, ptr %156, i64 268
  %164 = load i32, ptr %chroma_format_idc64, align 4
  %p_Dpb = getelementptr inbounds i8, ptr %p_Vid, i64 856656
  %165 = load ptr, ptr %p_Dpb, align 8
  call void @store_picture_in_dpb(ptr noundef %165, ptr noundef nonnull %156) #27
  store ptr null, ptr %dec_picture, align 8
  %last_has_mmco_5 = getelementptr inbounds i8, ptr %p_Vid, i64 849028
  %166 = load i32, ptr %last_has_mmco_5, align 4
  %tobool65.not = icmp eq i32 %166, 0
  br i1 %tobool65.not, label %if.end67, label %if.then66

if.then66:                                        ; preds = %if.end55
  %pre_frame_num = getelementptr inbounds i8, ptr %p_Vid, i64 848944
  store i32 0, ptr %pre_frame_num, align 8
  br label %if.end67

if.end67:                                         ; preds = %if.then66, %if.end55
  %silent = getelementptr inbounds i8, ptr %0, i64 784
  %167 = load i32, ptr %silent, align 8
  %cmp68 = icmp eq i32 %167, 0
  br i1 %cmp68, label %if.then69, label %if.end207

if.then69:                                        ; preds = %if.end67
  %cmp72 = icmp eq i32 %157, 0
  %or.cond = icmp ult i32 %157, 2
  br i1 %or.cond, label %if.then73, label %if.else127

if.then73:                                        ; preds = %if.then69
  %cmp74 = icmp eq i32 %158, 2
  %tobool76 = icmp ne i32 %163, 0
  %or.cond290 = select i1 %cmp74, i1 %tobool76, i1 false
  br i1 %or.cond290, label %if.then77, label %if.else78

if.then77:                                        ; preds = %if.then73
  %cslice_type = getelementptr inbounds i8, ptr %p_Vid, i64 856688
  store i32 5391433, ptr %cslice_type, align 1
  br label %if.end117

if.else78:                                        ; preds = %if.then73
  br i1 %cmp74, label %if.then80, label %if.else84

if.then80:                                        ; preds = %if.else78
  %cslice_type81 = getelementptr inbounds i8, ptr %p_Vid, i64 856688
  store i32 2115872, ptr %cslice_type81, align 1
  br label %if.end117

if.else84:                                        ; preds = %if.else78
  switch i32 %158, label %if.else102 [
    i32 0, label %if.then86
    i32 3, label %if.then92
    i32 4, label %if.then98
  ]

if.then86:                                        ; preds = %if.else84
  %cslice_type87 = getelementptr inbounds i8, ptr %p_Vid, i64 856688
  store i32 2117664, ptr %cslice_type87, align 1
  br label %if.end117

if.then92:                                        ; preds = %if.else84
  %cslice_type93 = getelementptr inbounds i8, ptr %p_Vid, i64 856688
  store i32 2117715, ptr %cslice_type93, align 1
  br label %if.end117

if.then98:                                        ; preds = %if.else84
  %cslice_type99 = getelementptr inbounds i8, ptr %p_Vid, i64 856688
  store i32 2115923, ptr %cslice_type99, align 1
  br label %if.end117

if.else102:                                       ; preds = %if.else84
  %tobool103.not = icmp eq i32 %.fr, 0
  %cslice_type109 = getelementptr inbounds i8, ptr %p_Vid, i64 856688
  br i1 %tobool103.not, label %if.else108, label %if.then104

if.then104:                                       ; preds = %if.else102
  store i32 2114080, ptr %cslice_type109, align 1
  br label %if.end117

if.else108:                                       ; preds = %if.else102
  store i32 2122272, ptr %cslice_type109, align 1
  br label %if.end117

if.end117:                                        ; preds = %if.then80, %if.then92, %if.then104, %if.else108, %if.then98, %if.then86, %if.then77
  br i1 %cmp72, label %if.then119, label %cleanup

if.then119:                                       ; preds = %if.end117
  %cslice_type120 = getelementptr inbounds i8, ptr %p_Vid, i64 856688
  %call124 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %cslice_type120) #31
  %sub = sub i64 8, %call124
  %call125 = call ptr @strncat(ptr noundef nonnull dereferenceable(1) %cslice_type120, ptr noundef nonnull @.str.34, i64 noundef %sub) #27
  br label %if.then211

if.else127:                                       ; preds = %if.then69
  %cmp128 = icmp eq i32 %157, 2
  br i1 %cmp128, label %if.then129, label %if.end207

if.then129:                                       ; preds = %if.else127
  %cmp130 = icmp eq i32 %158, 2
  %tobool132 = icmp ne i32 %163, 0
  %or.cond291 = select i1 %cmp130, i1 %tobool132, i1 false
  br i1 %or.cond291, label %if.then133, label %if.else141

if.then133:                                       ; preds = %if.then129
  %cslice_type134 = getelementptr inbounds i8, ptr %p_Vid, i64 856688
  %call138 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %cslice_type134) #31
  %sub139 = sub i64 8, %call138
  %call140 = call ptr @strncat(ptr noundef nonnull dereferenceable(1) %cslice_type134, ptr noundef nonnull @.str.35, i64 noundef %sub139) #27
  br label %if.then211

if.else141:                                       ; preds = %if.then129
  br i1 %cmp130, label %if.then143, label %if.else151

if.then143:                                       ; preds = %if.else141
  %cslice_type144 = getelementptr inbounds i8, ptr %p_Vid, i64 856688
  %call148 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %cslice_type144) #31
  %sub149 = sub i64 8, %call148
  %call150 = call ptr @strncat(ptr noundef nonnull dereferenceable(1) %cslice_type144, ptr noundef nonnull @.str.36, i64 noundef %sub149) #27
  br label %if.then211

if.else151:                                       ; preds = %if.else141
  switch i32 %158, label %if.else181 [
    i32 0, label %if.then153
    i32 3, label %if.then163
    i32 4, label %if.then173
  ]

if.then153:                                       ; preds = %if.else151
  %cslice_type154 = getelementptr inbounds i8, ptr %p_Vid, i64 856688
  %call158 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %cslice_type154) #31
  %sub159 = sub i64 8, %call158
  %call160 = call ptr @strncat(ptr noundef nonnull dereferenceable(1) %cslice_type154, ptr noundef nonnull @.str.37, i64 noundef %sub159) #27
  br label %if.then211

if.then163:                                       ; preds = %if.else151
  %cslice_type164 = getelementptr inbounds i8, ptr %p_Vid, i64 856688
  %call168 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %cslice_type164) #31
  %sub169 = sub i64 8, %call168
  %call170 = call ptr @strncat(ptr noundef nonnull dereferenceable(1) %cslice_type164, ptr noundef nonnull @.str.38, i64 noundef %sub169) #27
  br label %if.then211

if.then173:                                       ; preds = %if.else151
  %cslice_type174 = getelementptr inbounds i8, ptr %p_Vid, i64 856688
  %call178 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %cslice_type174) #31
  %sub179 = sub i64 8, %call178
  %call180 = call ptr @strncat(ptr noundef nonnull dereferenceable(1) %cslice_type174, ptr noundef nonnull @.str.39, i64 noundef %sub179) #27
  br label %if.then211

if.else181:                                       ; preds = %if.else151
  %tobool182.not = icmp eq i32 %.fr, 0
  %cslice_type192 = getelementptr inbounds i8, ptr %p_Vid, i64 856688
  %call196 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %cslice_type192) #31
  %sub197 = sub i64 8, %call196
  br i1 %tobool182.not, label %if.else191, label %if.then183

if.then183:                                       ; preds = %if.else181
  %call190 = call ptr @strncat(ptr noundef nonnull dereferenceable(1) %cslice_type192, ptr noundef nonnull @.str.40, i64 noundef %sub197) #27
  br label %if.then211

if.else191:                                       ; preds = %if.else181
  %call198 = call ptr @strncat(ptr noundef nonnull dereferenceable(1) %cslice_type192, ptr noundef nonnull @.str.41, i64 noundef %sub197) #27
  br label %if.then211

if.end207:                                        ; preds = %if.else127, %if.end67
  %168 = and i32 %157, -3
  %or.cond292 = icmp eq i32 %168, 0
  br i1 %or.cond292, label %if.then211, label %cleanup

if.then211:                                       ; preds = %if.then143, %if.then163, %if.then183, %if.else191, %if.then173, %if.then153, %if.then133, %if.then119, %if.end207
  %idxprom = sext i32 %164 to i64
  %arrayidx213 = getelementptr inbounds [4 x [6 x i8]], ptr @__const.exit_picture.yuv_types, i64 0, i64 %idxprom
  %strcpy = call ptr @strcpy(ptr nonnull dereferenceable(1) %yuvFormat, ptr nonnull dereferenceable(1) %arrayidx213)
  %169 = load i32, ptr %silent, align 8
  %cmp217 = icmp eq i32 %169, 0
  br i1 %cmp217, label %if.then218, label %if.else244

if.then218:                                       ; preds = %if.then211
  %p_ref = getelementptr inbounds i8, ptr %p_Vid, i64 855988
  %170 = load i32, ptr %p_ref, align 4
  %cmp221.not = icmp eq i32 %170, -1
  br i1 %cmp221.not, label %if.else236, label %if.then222

if.then222:                                       ; preds = %if.then218
  %171 = load ptr, ptr %snr2, align 8
  %172 = load ptr, ptr @stdout, align 8
  %frame_no = getelementptr inbounds i8, ptr %p_Vid, i64 856004
  %173 = load i32, ptr %frame_no, align 4
  %cslice_type223 = getelementptr inbounds i8, ptr %p_Vid, i64 856688
  %snr225 = getelementptr inbounds i8, ptr %171, i64 4
  %174 = load float, ptr %snr225, align 4
  %conv = fpext float %174 to double
  %arrayidx228 = getelementptr inbounds i8, ptr %171, i64 8
  %175 = load float, ptr %arrayidx228, align 4
  %conv229 = fpext float %175 to double
  %arrayidx231 = getelementptr inbounds i8, ptr %171, i64 12
  %176 = load float, ptr %arrayidx231, align 4
  %conv232 = fpext float %176 to double
  %call235 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %172, ptr noundef nonnull @.str.43, i32 noundef %173, ptr noundef nonnull %cslice_type223, i32 noundef %159, i32 noundef %162, i32 noundef %161, double noundef %conv, double noundef %conv229, double noundef %conv232, ptr noundef nonnull %yuvFormat, i32 noundef 0) #27
  br label %if.end246

if.else236:                                       ; preds = %if.then218
  %177 = load ptr, ptr @stdout, align 8
  %frame_no237 = getelementptr inbounds i8, ptr %p_Vid, i64 856004
  %178 = load i32, ptr %frame_no237, align 4
  %cslice_type238 = getelementptr inbounds i8, ptr %p_Vid, i64 856688
  %call242 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %177, ptr noundef nonnull @.str.44, i32 noundef %178, ptr noundef nonnull %cslice_type238, i32 noundef %159, i32 noundef %162, i32 noundef %161, ptr noundef nonnull %yuvFormat, i32 noundef 0) #27
  br label %if.end246

if.else244:                                       ; preds = %if.then211
  %179 = load ptr, ptr @stdout, align 8
  %180 = load i32, ptr %1, align 4
  %call245 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %179, ptr noundef nonnull @.str.45, i32 noundef %180) #27
  br label %if.end246

if.end246:                                        ; preds = %if.then222, %if.else236, %if.else244
  %181 = load ptr, ptr @stdout, align 8
  %call247 = call i32 @fflush(ptr noundef %181)
  %tobool257.not = icmp eq i32 %.fr, 0
  br i1 %tobool257.not, label %switch.early.test, label %if.then258

switch.early.test:                                ; preds = %if.end246
  switch i32 %158, label %if.end268.sink.split [
    i32 4, label %if.then258
    i32 2, label %if.then258
    i32 0, label %if.then258
  ]

if.then258:                                       ; preds = %switch.early.test, %switch.early.test, %switch.early.test, %if.end246
  %ppSliceList259 = getelementptr inbounds i8, ptr %p_Vid, i64 848736
  %182 = load ptr, ptr %ppSliceList259, align 8
  %183 = load ptr, ptr %182, align 8
  %view_id = getelementptr inbounds i8, ptr %183, i64 1176
  %184 = load i32, ptr %view_id, align 8
  %cmp261.not = icmp eq i32 %184, 0
  br i1 %cmp261.not, label %if.end268, label %if.end268.sink.split

if.end268.sink.split:                             ; preds = %switch.early.test, %if.then258
  %.sink = phi i64 [ 848712, %if.then258 ], [ 856000, %switch.early.test ]
  %number = getelementptr inbounds i8, ptr %p_Vid, i64 %.sink
  %185 = load i32, ptr %number, align 8
  %inc264 = add nsw i32 %185, 1
  store i32 %inc264, ptr %number, align 8
  br label %if.end268

if.end268:                                        ; preds = %if.end268.sink.split, %if.then258
  %186 = load i32, ptr %1, align 4
  %inc270 = add nsw i32 %186, 1
  store i32 %inc270, ptr %1, align 4
  %g_nFrame = getelementptr inbounds i8, ptr %p_Vid, i64 856008
  %187 = load i32, ptr %g_nFrame, align 8
  %inc271 = add nsw i32 %187, 1
  store i32 %inc271, ptr %g_nFrame, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end117, %if.end268, %if.end207, %entry, %land.lhs.true, %lor.lhs.false5
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %yuvFormat) #27
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @buffer2img(ptr nocapture noundef readonly %imgX, ptr nocapture noundef readonly %buf, i32 noundef %size_x, i32 noundef %size_y, i32 noundef %symbol_size_in_bytes) local_unnamed_addr #2 {
entry:
  %cmp = icmp sgt i32 %symbol_size_in_bytes, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @error(ptr noundef nonnull @.str, i32 noundef 500) #27
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call = tail call i32 @testEndian() #27
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.else, label %if.then1

if.then1:                                         ; preds = %if.end
  switch i32 %symbol_size_in_bytes, label %sw.default [
    i32 1, label %for.cond.preheader
    i32 2, label %for.cond14.preheader
    i32 4, label %for.cond39.preheader
  ]

for.cond39.preheader:                             ; preds = %if.then1
  %cmp40202 = icmp sgt i32 %size_y, 0
  %cmp44199 = icmp sgt i32 %size_x, 0
  %or.cond = and i1 %cmp40202, %cmp44199
  br i1 %or.cond, label %for.cond43.preheader.us.preheader, label %sw.default

for.cond43.preheader.us.preheader:                ; preds = %for.cond39.preheader
  %0 = zext nneg i32 %size_x to i64
  %wide.trip.count238 = zext nneg i32 %size_y to i64
  %xtraiter = and i64 %0, 1
  %1 = icmp eq i32 %size_x, 1
  %unroll_iter = and i64 %0, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %for.cond43.preheader.us

for.cond43.preheader.us:                          ; preds = %for.cond43.preheader.us.preheader, %for.cond43.for.inc71_crit_edge.us
  %indvars.iv234 = phi i64 [ 0, %for.cond43.preheader.us.preheader ], [ %indvars.iv.next235, %for.cond43.for.inc71_crit_edge.us ]
  %2 = mul nuw nsw i64 %indvars.iv234, %0
  %arrayidx65.us = getelementptr inbounds ptr, ptr %imgX, i64 %indvars.iv234
  br i1 %1, label %for.cond43.for.inc71_crit_edge.us.unr-lcssa, label %for.body46.us

for.body46.us:                                    ; preds = %for.cond43.preheader.us, %for.body46.us
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %for.body46.us ], [ 0, %for.cond43.preheader.us ]
  %niter = phi i64 [ %niter.next.1, %for.body46.us ], [ 0, %for.cond43.preheader.us ]
  %3 = add nuw nsw i64 %indvars.iv, %2
  %mul49.us = shl i64 %3, 2
  %idx.ext50.us = and i64 %mul49.us, 4294967292
  %add.ptr51.us = getelementptr inbounds i8, ptr %buf, i64 %idx.ext50.us
  %tmp32.0.copyload.us = load i32, ptr %add.ptr51.us, align 1
  %rev.us = tail call i32 @llvm.bswap.i32(i32 %tmp32.0.copyload.us)
  %conv63.us = trunc i32 %rev.us to i16
  %4 = load ptr, ptr %arrayidx65.us, align 8
  %arrayidx67.us = getelementptr inbounds i16, ptr %4, i64 %indvars.iv
  store i16 %conv63.us, ptr %arrayidx67.us, align 2
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1
  %5 = add nuw nsw i64 %indvars.iv.next, %2
  %mul49.us.1 = shl i64 %5, 2
  %idx.ext50.us.1 = and i64 %mul49.us.1, 4294967292
  %add.ptr51.us.1 = getelementptr inbounds i8, ptr %buf, i64 %idx.ext50.us.1
  %tmp32.0.copyload.us.1 = load i32, ptr %add.ptr51.us.1, align 1
  %rev.us.1 = tail call i32 @llvm.bswap.i32(i32 %tmp32.0.copyload.us.1)
  %conv63.us.1 = trunc i32 %rev.us.1 to i16
  %6 = load ptr, ptr %arrayidx65.us, align 8
  %arrayidx67.us.1 = getelementptr inbounds i16, ptr %6, i64 %indvars.iv.next
  store i16 %conv63.us.1, ptr %arrayidx67.us.1, align 2
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %for.cond43.for.inc71_crit_edge.us.unr-lcssa, label %for.body46.us

for.cond43.for.inc71_crit_edge.us.unr-lcssa:      ; preds = %for.body46.us, %for.cond43.preheader.us
  %indvars.iv.unr = phi i64 [ 0, %for.cond43.preheader.us ], [ %indvars.iv.next.1, %for.body46.us ]
  br i1 %lcmp.mod.not, label %for.cond43.for.inc71_crit_edge.us, label %for.body46.us.epil

for.body46.us.epil:                               ; preds = %for.cond43.for.inc71_crit_edge.us.unr-lcssa
  %7 = add nuw nsw i64 %indvars.iv.unr, %2
  %mul49.us.epil = shl i64 %7, 2
  %idx.ext50.us.epil = and i64 %mul49.us.epil, 4294967292
  %add.ptr51.us.epil = getelementptr inbounds i8, ptr %buf, i64 %idx.ext50.us.epil
  %tmp32.0.copyload.us.epil = load i32, ptr %add.ptr51.us.epil, align 1
  %rev.us.epil = tail call i32 @llvm.bswap.i32(i32 %tmp32.0.copyload.us.epil)
  %conv63.us.epil = trunc i32 %rev.us.epil to i16
  %8 = load ptr, ptr %arrayidx65.us, align 8
  %arrayidx67.us.epil = getelementptr inbounds i16, ptr %8, i64 %indvars.iv.unr
  store i16 %conv63.us.epil, ptr %arrayidx67.us.epil, align 2
  br label %for.cond43.for.inc71_crit_edge.us

for.cond43.for.inc71_crit_edge.us:                ; preds = %for.cond43.for.inc71_crit_edge.us.unr-lcssa, %for.body46.us.epil
  %indvars.iv.next235 = add nuw nsw i64 %indvars.iv234, 1
  %exitcond239.not = icmp eq i64 %indvars.iv.next235, %wide.trip.count238
  br i1 %exitcond239.not, label %sw.default, label %for.cond43.preheader.us

for.cond14.preheader:                             ; preds = %if.then1
  %cmp15207 = icmp sgt i32 %size_y, 0
  %cmp19205 = icmp sgt i32 %size_x, 0
  %or.cond291 = and i1 %cmp15207, %cmp19205
  br i1 %or.cond291, label %for.cond18.preheader.us.preheader, label %if.end126

for.cond18.preheader.us.preheader:                ; preds = %for.cond14.preheader
  %9 = zext nneg i32 %size_x to i64
  %wide.trip.count251 = zext nneg i32 %size_y to i64
  %xtraiter300 = and i64 %9, 1
  %10 = icmp eq i32 %size_x, 1
  %unroll_iter302 = and i64 %9, 2147483646
  %lcmp.mod301.not = icmp eq i64 %xtraiter300, 0
  br label %for.cond18.preheader.us

for.cond18.preheader.us:                          ; preds = %for.cond18.preheader.us.preheader, %for.cond18.for.inc35_crit_edge.us
  %indvars.iv247 = phi i64 [ 0, %for.cond18.preheader.us.preheader ], [ %indvars.iv.next248, %for.cond18.for.inc35_crit_edge.us ]
  %11 = mul nuw nsw i64 %indvars.iv247, %9
  %arrayidx29.us = getelementptr inbounds ptr, ptr %imgX, i64 %indvars.iv247
  br i1 %10, label %for.cond18.for.inc35_crit_edge.us.unr-lcssa, label %for.body21.us

for.body21.us:                                    ; preds = %for.cond18.preheader.us, %for.body21.us
  %indvars.iv240 = phi i64 [ %indvars.iv.next241.1, %for.body21.us ], [ 0, %for.cond18.preheader.us ]
  %niter303 = phi i64 [ %niter303.next.1, %for.body21.us ], [ 0, %for.cond18.preheader.us ]
  %12 = add nuw nsw i64 %indvars.iv240, %11
  %13 = shl nuw nsw i64 %12, 1
  %add.ptr.us = getelementptr inbounds i8, ptr %buf, i64 %13
  %tmp16.0.copyload.us = load i16, ptr %add.ptr.us, align 1
  %rev195.us = tail call i16 @llvm.bswap.i16(i16 %tmp16.0.copyload.us)
  %14 = load ptr, ptr %arrayidx29.us, align 8
  %arrayidx31.us = getelementptr inbounds i16, ptr %14, i64 %indvars.iv240
  store i16 %rev195.us, ptr %arrayidx31.us, align 2
  %indvars.iv.next241 = or disjoint i64 %indvars.iv240, 1
  %15 = add nuw nsw i64 %indvars.iv.next241, %11
  %16 = shl nuw nsw i64 %15, 1
  %add.ptr.us.1 = getelementptr inbounds i8, ptr %buf, i64 %16
  %tmp16.0.copyload.us.1 = load i16, ptr %add.ptr.us.1, align 1
  %rev195.us.1 = tail call i16 @llvm.bswap.i16(i16 %tmp16.0.copyload.us.1)
  %17 = load ptr, ptr %arrayidx29.us, align 8
  %arrayidx31.us.1 = getelementptr inbounds i16, ptr %17, i64 %indvars.iv.next241
  store i16 %rev195.us.1, ptr %arrayidx31.us.1, align 2
  %indvars.iv.next241.1 = add nuw nsw i64 %indvars.iv240, 2
  %niter303.next.1 = add i64 %niter303, 2
  %niter303.ncmp.1 = icmp eq i64 %niter303.next.1, %unroll_iter302
  br i1 %niter303.ncmp.1, label %for.cond18.for.inc35_crit_edge.us.unr-lcssa, label %for.body21.us

for.cond18.for.inc35_crit_edge.us.unr-lcssa:      ; preds = %for.body21.us, %for.cond18.preheader.us
  %indvars.iv240.unr = phi i64 [ 0, %for.cond18.preheader.us ], [ %indvars.iv.next241.1, %for.body21.us ]
  br i1 %lcmp.mod301.not, label %for.cond18.for.inc35_crit_edge.us, label %for.body21.us.epil

for.body21.us.epil:                               ; preds = %for.cond18.for.inc35_crit_edge.us.unr-lcssa
  %18 = add nuw nsw i64 %indvars.iv240.unr, %11
  %19 = shl nuw nsw i64 %18, 1
  %add.ptr.us.epil = getelementptr inbounds i8, ptr %buf, i64 %19
  %tmp16.0.copyload.us.epil = load i16, ptr %add.ptr.us.epil, align 1
  %rev195.us.epil = tail call i16 @llvm.bswap.i16(i16 %tmp16.0.copyload.us.epil)
  %20 = load ptr, ptr %arrayidx29.us, align 8
  %arrayidx31.us.epil = getelementptr inbounds i16, ptr %20, i64 %indvars.iv240.unr
  store i16 %rev195.us.epil, ptr %arrayidx31.us.epil, align 2
  br label %for.cond18.for.inc35_crit_edge.us

for.cond18.for.inc35_crit_edge.us:                ; preds = %for.cond18.for.inc35_crit_edge.us.unr-lcssa, %for.body21.us.epil
  %indvars.iv.next248 = add nuw nsw i64 %indvars.iv247, 1
  %exitcond252.not = icmp eq i64 %indvars.iv.next248, %wide.trip.count251
  br i1 %exitcond252.not, label %if.end126, label %for.cond18.preheader.us

for.cond.preheader:                               ; preds = %if.then1
  %cmp2211 = icmp sgt i32 %size_y, 0
  %cmp4209 = icmp sgt i32 %size_x, 0
  %or.cond292 = and i1 %cmp2211, %cmp4209
  br i1 %or.cond292, label %for.cond3.preheader.us.preheader, label %if.end126

for.cond3.preheader.us.preheader:                 ; preds = %for.cond.preheader
  %21 = zext nneg i32 %size_x to i64
  %wide.trip.count263 = zext nneg i32 %size_y to i64
  %xtraiter304 = and i64 %21, 3
  %22 = icmp ult i32 %size_x, 4
  %unroll_iter306 = and i64 %21, 2147483644
  %lcmp.mod305.not = icmp eq i64 %xtraiter304, 0
  br label %for.cond3.preheader.us

for.cond3.preheader.us:                           ; preds = %for.cond3.preheader.us.preheader, %for.cond3.for.inc10_crit_edge.us
  %indvars.iv259 = phi i64 [ 0, %for.cond3.preheader.us.preheader ], [ %indvars.iv.next260, %for.cond3.for.inc10_crit_edge.us ]
  %23 = mul nuw nsw i64 %indvars.iv259, %21
  %arrayidx7.us = getelementptr inbounds ptr, ptr %imgX, i64 %indvars.iv259
  %invariant.gep = getelementptr inbounds i8, ptr %buf, i64 %23
  br i1 %22, label %for.cond3.for.inc10_crit_edge.us.unr-lcssa, label %for.body5.us

for.body5.us:                                     ; preds = %for.cond3.preheader.us, %for.body5.us
  %indvars.iv253 = phi i64 [ %indvars.iv.next254.3, %for.body5.us ], [ 0, %for.cond3.preheader.us ]
  %niter307 = phi i64 [ %niter307.next.3, %for.body5.us ], [ 0, %for.cond3.preheader.us ]
  %gep = getelementptr inbounds i8, ptr %invariant.gep, i64 %indvars.iv253
  %24 = load i8, ptr %gep, align 1
  %conv.us = zext i8 %24 to i16
  %25 = load ptr, ptr %arrayidx7.us, align 8
  %arrayidx9.us = getelementptr inbounds i16, ptr %25, i64 %indvars.iv253
  store i16 %conv.us, ptr %arrayidx9.us, align 2
  %indvars.iv.next254 = or disjoint i64 %indvars.iv253, 1
  %gep.1 = getelementptr inbounds i8, ptr %invariant.gep, i64 %indvars.iv.next254
  %26 = load i8, ptr %gep.1, align 1
  %conv.us.1 = zext i8 %26 to i16
  %27 = load ptr, ptr %arrayidx7.us, align 8
  %arrayidx9.us.1 = getelementptr inbounds i16, ptr %27, i64 %indvars.iv.next254
  store i16 %conv.us.1, ptr %arrayidx9.us.1, align 2
  %indvars.iv.next254.1 = or disjoint i64 %indvars.iv253, 2
  %gep.2 = getelementptr inbounds i8, ptr %invariant.gep, i64 %indvars.iv.next254.1
  %28 = load i8, ptr %gep.2, align 1
  %conv.us.2 = zext i8 %28 to i16
  %29 = load ptr, ptr %arrayidx7.us, align 8
  %arrayidx9.us.2 = getelementptr inbounds i16, ptr %29, i64 %indvars.iv.next254.1
  store i16 %conv.us.2, ptr %arrayidx9.us.2, align 2
  %indvars.iv.next254.2 = or disjoint i64 %indvars.iv253, 3
  %gep.3 = getelementptr inbounds i8, ptr %invariant.gep, i64 %indvars.iv.next254.2
  %30 = load i8, ptr %gep.3, align 1
  %conv.us.3 = zext i8 %30 to i16
  %31 = load ptr, ptr %arrayidx7.us, align 8
  %arrayidx9.us.3 = getelementptr inbounds i16, ptr %31, i64 %indvars.iv.next254.2
  store i16 %conv.us.3, ptr %arrayidx9.us.3, align 2
  %indvars.iv.next254.3 = add nuw nsw i64 %indvars.iv253, 4
  %niter307.next.3 = add i64 %niter307, 4
  %niter307.ncmp.3 = icmp eq i64 %niter307.next.3, %unroll_iter306
  br i1 %niter307.ncmp.3, label %for.cond3.for.inc10_crit_edge.us.unr-lcssa, label %for.body5.us

for.cond3.for.inc10_crit_edge.us.unr-lcssa:       ; preds = %for.body5.us, %for.cond3.preheader.us
  %indvars.iv253.unr = phi i64 [ 0, %for.cond3.preheader.us ], [ %indvars.iv.next254.3, %for.body5.us ]
  br i1 %lcmp.mod305.not, label %for.cond3.for.inc10_crit_edge.us, label %for.body5.us.epil

for.body5.us.epil:                                ; preds = %for.cond3.for.inc10_crit_edge.us.unr-lcssa, %for.body5.us.epil
  %indvars.iv253.epil = phi i64 [ %indvars.iv.next254.epil, %for.body5.us.epil ], [ %indvars.iv253.unr, %for.cond3.for.inc10_crit_edge.us.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %for.body5.us.epil ], [ 0, %for.cond3.for.inc10_crit_edge.us.unr-lcssa ]
  %gep.epil = getelementptr inbounds i8, ptr %invariant.gep, i64 %indvars.iv253.epil
  %32 = load i8, ptr %gep.epil, align 1
  %conv.us.epil = zext i8 %32 to i16
  %33 = load ptr, ptr %arrayidx7.us, align 8
  %arrayidx9.us.epil = getelementptr inbounds i16, ptr %33, i64 %indvars.iv253.epil
  store i16 %conv.us.epil, ptr %arrayidx9.us.epil, align 2
  %indvars.iv.next254.epil = add nuw nsw i64 %indvars.iv253.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter304
  br i1 %epil.iter.cmp.not, label %for.cond3.for.inc10_crit_edge.us, label %for.body5.us.epil, !llvm.loop !13

for.cond3.for.inc10_crit_edge.us:                 ; preds = %for.body5.us.epil, %for.cond3.for.inc10_crit_edge.us.unr-lcssa
  %indvars.iv.next260 = add nuw nsw i64 %indvars.iv259, 1
  %exitcond264.not = icmp eq i64 %indvars.iv.next260, %wide.trip.count263
  br i1 %exitcond264.not, label %if.end126, label %for.cond3.preheader.us

sw.default:                                       ; preds = %for.cond43.for.inc71_crit_edge.us, %for.cond39.preheader, %if.then1
  tail call void @error(ptr noundef nonnull @.str.1, i32 noundef 500) #27
  br label %if.end126

if.else:                                          ; preds = %if.end
  %cmp74 = icmp eq i32 %symbol_size_in_bytes, 1
  %cmp78220 = icmp sgt i32 %size_y, 0
  br i1 %cmp74, label %for.cond77.preheader, label %for.cond97.preheader

for.cond97.preheader:                             ; preds = %if.else
  br i1 %cmp78220, label %for.body100.lr.ph, label %if.end126

for.body100.lr.ph:                                ; preds = %for.cond97.preheader
  %cmp103213 = icmp sgt i32 %size_x, 0
  %conv118 = sext i32 %symbol_size_in_bytes to i64
  br i1 %cmp103213, label %for.body100.us.preheader, label %if.end126

for.body100.us.preheader:                         ; preds = %for.body100.lr.ph
  %34 = zext nneg i32 %size_x to i64
  %wide.trip.count276 = zext nneg i32 %size_y to i64
  %wide.trip.count270 = zext nneg i32 %size_x to i64
  %xtraiter308 = and i64 %wide.trip.count270, 1
  %35 = icmp eq i32 %size_x, 1
  %unroll_iter311 = and i64 %wide.trip.count270, 2147483646
  %lcmp.mod310.not = icmp eq i64 %xtraiter308, 0
  br label %for.body100.us

for.body100.us:                                   ; preds = %for.body100.us.preheader, %for.cond102.for.end121_crit_edge.us
  %indvars.iv272 = phi i64 [ 0, %for.body100.us.preheader ], [ %indvars.iv.next273, %for.cond102.for.end121_crit_edge.us ]
  %36 = mul nuw nsw i64 %indvars.iv272, %34
  %arrayidx107.us = getelementptr inbounds ptr, ptr %imgX, i64 %indvars.iv272
  br i1 %35, label %for.cond102.for.end121_crit_edge.us.unr-lcssa, label %for.body105.us

for.body105.us:                                   ; preds = %for.body100.us, %for.body105.us
  %indvars.iv265 = phi i64 [ %indvars.iv.next266.1, %for.body105.us ], [ 0, %for.body100.us ]
  %niter312 = phi i64 [ %niter312.next.1, %for.body105.us ], [ 0, %for.body100.us ]
  %37 = load ptr, ptr %arrayidx107.us, align 8
  %arrayidx109.us = getelementptr inbounds i16, ptr %37, i64 %indvars.iv265
  store i16 0, ptr %arrayidx109.us, align 2
  %38 = load ptr, ptr %arrayidx107.us, align 8
  %arrayidx113.us = getelementptr inbounds i16, ptr %38, i64 %indvars.iv265
  %39 = add nuw nsw i64 %indvars.iv265, %36
  %40 = mul nsw i64 %39, %conv118
  %add.ptr117.us = getelementptr inbounds i8, ptr %buf, i64 %40
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %arrayidx113.us, ptr align 1 %add.ptr117.us, i64 %conv118, i1 false)
  %indvars.iv.next266 = or disjoint i64 %indvars.iv265, 1
  %41 = load ptr, ptr %arrayidx107.us, align 8
  %arrayidx109.us.1 = getelementptr inbounds i16, ptr %41, i64 %indvars.iv.next266
  store i16 0, ptr %arrayidx109.us.1, align 2
  %42 = load ptr, ptr %arrayidx107.us, align 8
  %arrayidx113.us.1 = getelementptr inbounds i16, ptr %42, i64 %indvars.iv.next266
  %43 = add nuw nsw i64 %indvars.iv.next266, %36
  %44 = mul nsw i64 %43, %conv118
  %add.ptr117.us.1 = getelementptr inbounds i8, ptr %buf, i64 %44
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %arrayidx113.us.1, ptr align 1 %add.ptr117.us.1, i64 %conv118, i1 false)
  %indvars.iv.next266.1 = add nuw nsw i64 %indvars.iv265, 2
  %niter312.next.1 = add i64 %niter312, 2
  %niter312.ncmp.1 = icmp eq i64 %niter312.next.1, %unroll_iter311
  br i1 %niter312.ncmp.1, label %for.cond102.for.end121_crit_edge.us.unr-lcssa, label %for.body105.us

for.cond102.for.end121_crit_edge.us.unr-lcssa:    ; preds = %for.body105.us, %for.body100.us
  %indvars.iv265.unr = phi i64 [ 0, %for.body100.us ], [ %indvars.iv.next266.1, %for.body105.us ]
  br i1 %lcmp.mod310.not, label %for.cond102.for.end121_crit_edge.us, label %for.body105.us.epil

for.body105.us.epil:                              ; preds = %for.cond102.for.end121_crit_edge.us.unr-lcssa
  %45 = load ptr, ptr %arrayidx107.us, align 8
  %arrayidx109.us.epil = getelementptr inbounds i16, ptr %45, i64 %indvars.iv265.unr
  store i16 0, ptr %arrayidx109.us.epil, align 2
  %46 = load ptr, ptr %arrayidx107.us, align 8
  %arrayidx113.us.epil = getelementptr inbounds i16, ptr %46, i64 %indvars.iv265.unr
  %47 = add nuw nsw i64 %indvars.iv265.unr, %36
  %48 = mul nsw i64 %47, %conv118
  %add.ptr117.us.epil = getelementptr inbounds i8, ptr %buf, i64 %48
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %arrayidx113.us.epil, ptr align 1 %add.ptr117.us.epil, i64 %conv118, i1 false)
  br label %for.cond102.for.end121_crit_edge.us

for.cond102.for.end121_crit_edge.us:              ; preds = %for.cond102.for.end121_crit_edge.us.unr-lcssa, %for.body105.us.epil
  %indvars.iv.next273 = add nuw nsw i64 %indvars.iv272, 1
  %exitcond277.not = icmp eq i64 %indvars.iv.next273, %wide.trip.count276
  br i1 %exitcond277.not, label %if.end126, label %for.body100.us

for.cond77.preheader:                             ; preds = %if.else
  %cmp82217 = icmp sgt i32 %size_x, 0
  %or.cond293 = and i1 %cmp78220, %cmp82217
  br i1 %or.cond293, label %for.cond81.preheader.us.preheader, label %if.end126

for.cond81.preheader.us.preheader:                ; preds = %for.cond77.preheader
  %wide.trip.count286 = zext nneg i32 %size_y to i64
  %wide.trip.count281 = zext nneg i32 %size_x to i64
  %xtraiter313 = and i64 %wide.trip.count281, 3
  %49 = icmp ult i32 %size_x, 4
  %unroll_iter317 = and i64 %wide.trip.count281, 2147483644
  %lcmp.mod315.not = icmp eq i64 %xtraiter313, 0
  br label %for.cond81.preheader.us

for.cond81.preheader.us:                          ; preds = %for.cond81.preheader.us.preheader, %for.cond81.for.inc93_crit_edge.us
  %indvars.iv283 = phi i64 [ 0, %for.cond81.preheader.us.preheader ], [ %indvars.iv.next284, %for.cond81.for.inc93_crit_edge.us ]
  %buf.addr.0222.us = phi ptr [ %buf, %for.cond81.preheader.us.preheader ], [ %incdec.ptr.us.lcssa, %for.cond81.for.inc93_crit_edge.us ]
  %arrayidx87.us = getelementptr inbounds ptr, ptr %imgX, i64 %indvars.iv283
  br i1 %49, label %for.cond81.for.inc93_crit_edge.us.unr-lcssa, label %for.body84.us

for.body84.us:                                    ; preds = %for.cond81.preheader.us, %for.body84.us
  %indvars.iv278 = phi i64 [ %indvars.iv.next279.3, %for.body84.us ], [ 0, %for.cond81.preheader.us ]
  %buf.addr.1219.us = phi ptr [ %incdec.ptr.us.3, %for.body84.us ], [ %buf.addr.0222.us, %for.cond81.preheader.us ]
  %niter318 = phi i64 [ %niter318.next.3, %for.body84.us ], [ 0, %for.cond81.preheader.us ]
  %incdec.ptr.us = getelementptr inbounds i8, ptr %buf.addr.1219.us, i64 1
  %50 = load i8, ptr %buf.addr.1219.us, align 1
  %conv85.us = zext i8 %50 to i16
  %51 = load ptr, ptr %arrayidx87.us, align 8
  %arrayidx89.us = getelementptr inbounds i16, ptr %51, i64 %indvars.iv278
  store i16 %conv85.us, ptr %arrayidx89.us, align 2
  %indvars.iv.next279 = or disjoint i64 %indvars.iv278, 1
  %incdec.ptr.us.1 = getelementptr inbounds i8, ptr %buf.addr.1219.us, i64 2
  %52 = load i8, ptr %incdec.ptr.us, align 1
  %conv85.us.1 = zext i8 %52 to i16
  %53 = load ptr, ptr %arrayidx87.us, align 8
  %arrayidx89.us.1 = getelementptr inbounds i16, ptr %53, i64 %indvars.iv.next279
  store i16 %conv85.us.1, ptr %arrayidx89.us.1, align 2
  %indvars.iv.next279.1 = or disjoint i64 %indvars.iv278, 2
  %incdec.ptr.us.2 = getelementptr inbounds i8, ptr %buf.addr.1219.us, i64 3
  %54 = load i8, ptr %incdec.ptr.us.1, align 1
  %conv85.us.2 = zext i8 %54 to i16
  %55 = load ptr, ptr %arrayidx87.us, align 8
  %arrayidx89.us.2 = getelementptr inbounds i16, ptr %55, i64 %indvars.iv.next279.1
  store i16 %conv85.us.2, ptr %arrayidx89.us.2, align 2
  %indvars.iv.next279.2 = or disjoint i64 %indvars.iv278, 3
  %incdec.ptr.us.3 = getelementptr inbounds i8, ptr %buf.addr.1219.us, i64 4
  %56 = load i8, ptr %incdec.ptr.us.2, align 1
  %conv85.us.3 = zext i8 %56 to i16
  %57 = load ptr, ptr %arrayidx87.us, align 8
  %arrayidx89.us.3 = getelementptr inbounds i16, ptr %57, i64 %indvars.iv.next279.2
  store i16 %conv85.us.3, ptr %arrayidx89.us.3, align 2
  %indvars.iv.next279.3 = add nuw nsw i64 %indvars.iv278, 4
  %niter318.next.3 = add i64 %niter318, 4
  %niter318.ncmp.3 = icmp eq i64 %niter318.next.3, %unroll_iter317
  br i1 %niter318.ncmp.3, label %for.cond81.for.inc93_crit_edge.us.unr-lcssa, label %for.body84.us

for.cond81.for.inc93_crit_edge.us.unr-lcssa:      ; preds = %for.body84.us, %for.cond81.preheader.us
  %incdec.ptr.us.lcssa.ph = phi ptr [ poison, %for.cond81.preheader.us ], [ %incdec.ptr.us.3, %for.body84.us ]
  %indvars.iv278.unr = phi i64 [ 0, %for.cond81.preheader.us ], [ %indvars.iv.next279.3, %for.body84.us ]
  %buf.addr.1219.us.unr = phi ptr [ %buf.addr.0222.us, %for.cond81.preheader.us ], [ %incdec.ptr.us.3, %for.body84.us ]
  br i1 %lcmp.mod315.not, label %for.cond81.for.inc93_crit_edge.us, label %for.body84.us.epil

for.body84.us.epil:                               ; preds = %for.cond81.for.inc93_crit_edge.us.unr-lcssa, %for.body84.us.epil
  %indvars.iv278.epil = phi i64 [ %indvars.iv.next279.epil, %for.body84.us.epil ], [ %indvars.iv278.unr, %for.cond81.for.inc93_crit_edge.us.unr-lcssa ]
  %buf.addr.1219.us.epil = phi ptr [ %incdec.ptr.us.epil, %for.body84.us.epil ], [ %buf.addr.1219.us.unr, %for.cond81.for.inc93_crit_edge.us.unr-lcssa ]
  %epil.iter314 = phi i64 [ %epil.iter314.next, %for.body84.us.epil ], [ 0, %for.cond81.for.inc93_crit_edge.us.unr-lcssa ]
  %incdec.ptr.us.epil = getelementptr inbounds i8, ptr %buf.addr.1219.us.epil, i64 1
  %58 = load i8, ptr %buf.addr.1219.us.epil, align 1
  %conv85.us.epil = zext i8 %58 to i16
  %59 = load ptr, ptr %arrayidx87.us, align 8
  %arrayidx89.us.epil = getelementptr inbounds i16, ptr %59, i64 %indvars.iv278.epil
  store i16 %conv85.us.epil, ptr %arrayidx89.us.epil, align 2
  %indvars.iv.next279.epil = add nuw nsw i64 %indvars.iv278.epil, 1
  %epil.iter314.next = add i64 %epil.iter314, 1
  %epil.iter314.cmp.not = icmp eq i64 %epil.iter314.next, %xtraiter313
  br i1 %epil.iter314.cmp.not, label %for.cond81.for.inc93_crit_edge.us, label %for.body84.us.epil, !llvm.loop !14

for.cond81.for.inc93_crit_edge.us:                ; preds = %for.body84.us.epil, %for.cond81.for.inc93_crit_edge.us.unr-lcssa
  %incdec.ptr.us.lcssa = phi ptr [ %incdec.ptr.us.lcssa.ph, %for.cond81.for.inc93_crit_edge.us.unr-lcssa ], [ %incdec.ptr.us.epil, %for.body84.us.epil ]
  %indvars.iv.next284 = add nuw nsw i64 %indvars.iv283, 1
  %exitcond287.not = icmp eq i64 %indvars.iv.next284, %wide.trip.count286
  br i1 %exitcond287.not, label %if.end126, label %for.cond81.preheader.us

if.end126:                                        ; preds = %for.cond18.for.inc35_crit_edge.us, %for.cond3.for.inc10_crit_edge.us, %for.cond102.for.end121_crit_edge.us, %for.cond81.for.inc93_crit_edge.us, %for.body100.lr.ph, %for.cond14.preheader, %for.cond.preheader, %for.cond97.preheader, %for.cond77.preheader, %sw.default
  ret void
}

declare void @error(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @testEndian() local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i64 @compute_SSE(ptr nocapture noundef readonly %imgRef, ptr nocapture noundef readonly %imgSrc, i32 noundef %xRef, i32 noundef %xSrc, i32 noundef %ySize, i32 noundef %xSize) local_unnamed_addr #10 {
entry:
  %cmp26 = icmp sgt i32 %ySize, 0
  br i1 %cmp26, label %for.body.lr.ph, label %for.end15

for.body.lr.ph:                                   ; preds = %entry
  %idxprom1 = sext i32 %xRef to i64
  %idxprom5 = sext i32 %xSrc to i64
  %cmp821 = icmp sgt i32 %xSize, 0
  br i1 %cmp821, label %for.body.us.preheader, label %for.end15

for.body.us.preheader:                            ; preds = %for.body.lr.ph
  %wide.trip.count = zext nneg i32 %ySize to i64
  %0 = zext nneg i32 %xSize to i64
  %min.iters.check = icmp ult i32 %xSize, 4
  %n.vec = and i64 %0, 2147483644
  %1 = shl nuw nsw i64 %n.vec, 1
  %2 = shl nuw nsw i64 %n.vec, 1
  %ind.end35 = trunc nuw nsw i64 %n.vec to i32
  %cmp.n = icmp eq i64 %n.vec, %0
  br label %for.body.us

for.body.us:                                      ; preds = %for.body.us.preheader, %for.cond7.for.inc13_crit_edge.us
  %indvars.iv = phi i64 [ 0, %for.body.us.preheader ], [ %indvars.iv.next, %for.cond7.for.inc13_crit_edge.us ]
  %distortion.028.us = phi i64 [ 0, %for.body.us.preheader ], [ %add.us.lcssa, %for.cond7.for.inc13_crit_edge.us ]
  %arrayidx.us = getelementptr inbounds ptr, ptr %imgRef, i64 %indvars.iv
  %3 = load ptr, ptr %arrayidx.us, align 8
  %arrayidx2.us = getelementptr inbounds i16, ptr %3, i64 %idxprom1
  %arrayidx4.us = getelementptr inbounds ptr, ptr %imgSrc, i64 %indvars.iv
  %4 = load ptr, ptr %arrayidx4.us, align 8
  %arrayidx6.us = getelementptr inbounds i16, ptr %4, i64 %idxprom5
  br i1 %min.iters.check, label %for.body9.us.preheader, label %vector.ph

vector.ph:                                        ; preds = %for.body.us
  %ind.end = getelementptr i8, ptr %arrayidx6.us, i64 %1
  %ind.end33 = getelementptr i8, ptr %arrayidx2.us, i64 %2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi i64 [ %distortion.028.us, %vector.ph ], [ %39, %vector.body ]
  %vec.phi37 = phi i64 [ 0, %vector.ph ], [ %40, %vector.body ]
  %vec.phi38 = phi i64 [ 0, %vector.ph ], [ %41, %vector.body ]
  %vec.phi39 = phi i64 [ 0, %vector.ph ], [ %42, %vector.body ]
  %offset.idx = shl i64 %index, 1
  %5 = or disjoint i64 %offset.idx, 2
  %6 = or disjoint i64 %offset.idx, 4
  %7 = or disjoint i64 %offset.idx, 6
  %next.gep = getelementptr i8, ptr %arrayidx6.us, i64 %offset.idx
  %next.gep40 = getelementptr i8, ptr %arrayidx6.us, i64 %5
  %next.gep41 = getelementptr i8, ptr %arrayidx6.us, i64 %6
  %next.gep42 = getelementptr i8, ptr %arrayidx6.us, i64 %7
  %offset.idx43 = shl i64 %index, 1
  %8 = or disjoint i64 %offset.idx43, 2
  %9 = or disjoint i64 %offset.idx43, 4
  %10 = or disjoint i64 %offset.idx43, 6
  %next.gep44 = getelementptr i8, ptr %arrayidx2.us, i64 %offset.idx43
  %next.gep45 = getelementptr i8, ptr %arrayidx2.us, i64 %8
  %next.gep46 = getelementptr i8, ptr %arrayidx2.us, i64 %9
  %next.gep47 = getelementptr i8, ptr %arrayidx2.us, i64 %10
  %11 = load i16, ptr %next.gep44, align 2
  %12 = load i16, ptr %next.gep45, align 2
  %13 = load i16, ptr %next.gep46, align 2
  %14 = load i16, ptr %next.gep47, align 2
  %15 = zext i16 %11 to i32
  %16 = zext i16 %12 to i32
  %17 = zext i16 %13 to i32
  %18 = zext i16 %14 to i32
  %19 = load i16, ptr %next.gep, align 2
  %20 = load i16, ptr %next.gep40, align 2
  %21 = load i16, ptr %next.gep41, align 2
  %22 = load i16, ptr %next.gep42, align 2
  %23 = zext i16 %19 to i32
  %24 = zext i16 %20 to i32
  %25 = zext i16 %21 to i32
  %26 = zext i16 %22 to i32
  %27 = sub nsw i32 %15, %23
  %28 = sub nsw i32 %16, %24
  %29 = sub nsw i32 %17, %25
  %30 = sub nsw i32 %18, %26
  %31 = mul nsw i32 %27, %27
  %32 = mul nsw i32 %28, %28
  %33 = mul nsw i32 %29, %29
  %34 = mul nsw i32 %30, %30
  %35 = zext nneg i32 %31 to i64
  %36 = zext nneg i32 %32 to i64
  %37 = zext nneg i32 %33 to i64
  %38 = zext nneg i32 %34 to i64
  %39 = add i64 %vec.phi, %35
  %40 = add i64 %vec.phi37, %36
  %41 = add i64 %vec.phi38, %37
  %42 = add i64 %vec.phi39, %38
  %index.next = add nuw i64 %index, 4
  %43 = icmp eq i64 %index.next, %n.vec
  br i1 %43, label %middle.block, label %vector.body, !llvm.loop !15

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add i64 %40, %39
  %bin.rdx48 = add i64 %41, %bin.rdx
  %bin.rdx49 = add i64 %42, %bin.rdx48
  br i1 %cmp.n, label %for.cond7.for.inc13_crit_edge.us, label %for.body9.us.preheader

for.body9.us.preheader:                           ; preds = %middle.block, %for.body.us
  %distortion.125.us.ph = phi i64 [ %distortion.028.us, %for.body.us ], [ %bin.rdx49, %middle.block ]
  %lineSrc.024.us.ph = phi ptr [ %arrayidx6.us, %for.body.us ], [ %ind.end, %middle.block ]
  %lineRef.023.us.ph = phi ptr [ %arrayidx2.us, %for.body.us ], [ %ind.end33, %middle.block ]
  %i.022.us.ph = phi i32 [ 0, %for.body.us ], [ %ind.end35, %middle.block ]
  %44 = sub i32 %xSize, %i.022.us.ph
  %xtraiter = and i32 %44, 3
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.body9.us.prol.loopexit, label %for.body9.us.prol

for.body9.us.prol:                                ; preds = %for.body9.us.preheader, %for.body9.us.prol
  %distortion.125.us.prol = phi i64 [ %add.us.prol, %for.body9.us.prol ], [ %distortion.125.us.ph, %for.body9.us.preheader ]
  %lineSrc.024.us.prol = phi ptr [ %incdec.ptr10.us.prol, %for.body9.us.prol ], [ %lineSrc.024.us.ph, %for.body9.us.preheader ]
  %lineRef.023.us.prol = phi ptr [ %incdec.ptr.us.prol, %for.body9.us.prol ], [ %lineRef.023.us.ph, %for.body9.us.preheader ]
  %i.022.us.prol = phi i32 [ %inc.us.prol, %for.body9.us.prol ], [ %i.022.us.ph, %for.body9.us.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %for.body9.us.prol ], [ 0, %for.body9.us.preheader ]
  %incdec.ptr.us.prol = getelementptr inbounds i8, ptr %lineRef.023.us.prol, i64 2
  %45 = load i16, ptr %lineRef.023.us.prol, align 2
  %conv.us.prol = zext i16 %45 to i32
  %incdec.ptr10.us.prol = getelementptr inbounds i8, ptr %lineSrc.024.us.prol, i64 2
  %46 = load i16, ptr %lineSrc.024.us.prol, align 2
  %conv11.us.prol = zext i16 %46 to i32
  %sub.us.prol = sub nsw i32 %conv.us.prol, %conv11.us.prol
  %mul.i.us.prol = mul nsw i32 %sub.us.prol, %sub.us.prol
  %conv12.us.prol = zext nneg i32 %mul.i.us.prol to i64
  %add.us.prol = add nsw i64 %distortion.125.us.prol, %conv12.us.prol
  %inc.us.prol = add nuw nsw i32 %i.022.us.prol, 1
  %prol.iter.next = add i32 %prol.iter, 1
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %for.body9.us.prol.loopexit, label %for.body9.us.prol, !llvm.loop !16

for.body9.us.prol.loopexit:                       ; preds = %for.body9.us.prol, %for.body9.us.preheader
  %add.us.lcssa53.unr = phi i64 [ poison, %for.body9.us.preheader ], [ %add.us.prol, %for.body9.us.prol ]
  %distortion.125.us.unr = phi i64 [ %distortion.125.us.ph, %for.body9.us.preheader ], [ %add.us.prol, %for.body9.us.prol ]
  %lineSrc.024.us.unr = phi ptr [ %lineSrc.024.us.ph, %for.body9.us.preheader ], [ %incdec.ptr10.us.prol, %for.body9.us.prol ]
  %lineRef.023.us.unr = phi ptr [ %lineRef.023.us.ph, %for.body9.us.preheader ], [ %incdec.ptr.us.prol, %for.body9.us.prol ]
  %i.022.us.unr = phi i32 [ %i.022.us.ph, %for.body9.us.preheader ], [ %inc.us.prol, %for.body9.us.prol ]
  %47 = sub i32 %i.022.us.ph, %xSize
  %48 = icmp ugt i32 %47, -4
  br i1 %48, label %for.cond7.for.inc13_crit_edge.us, label %for.body9.us

for.body9.us:                                     ; preds = %for.body9.us.prol.loopexit, %for.body9.us
  %distortion.125.us = phi i64 [ %add.us.3, %for.body9.us ], [ %distortion.125.us.unr, %for.body9.us.prol.loopexit ]
  %lineSrc.024.us = phi ptr [ %incdec.ptr10.us.3, %for.body9.us ], [ %lineSrc.024.us.unr, %for.body9.us.prol.loopexit ]
  %lineRef.023.us = phi ptr [ %incdec.ptr.us.3, %for.body9.us ], [ %lineRef.023.us.unr, %for.body9.us.prol.loopexit ]
  %i.022.us = phi i32 [ %inc.us.3, %for.body9.us ], [ %i.022.us.unr, %for.body9.us.prol.loopexit ]
  %incdec.ptr.us = getelementptr inbounds i8, ptr %lineRef.023.us, i64 2
  %49 = load i16, ptr %lineRef.023.us, align 2
  %conv.us = zext i16 %49 to i32
  %incdec.ptr10.us = getelementptr inbounds i8, ptr %lineSrc.024.us, i64 2
  %50 = load i16, ptr %lineSrc.024.us, align 2
  %conv11.us = zext i16 %50 to i32
  %sub.us = sub nsw i32 %conv.us, %conv11.us
  %mul.i.us = mul nsw i32 %sub.us, %sub.us
  %conv12.us = zext nneg i32 %mul.i.us to i64
  %add.us = add nsw i64 %distortion.125.us, %conv12.us
  %incdec.ptr.us.1 = getelementptr inbounds i8, ptr %lineRef.023.us, i64 4
  %51 = load i16, ptr %incdec.ptr.us, align 2
  %conv.us.1 = zext i16 %51 to i32
  %incdec.ptr10.us.1 = getelementptr inbounds i8, ptr %lineSrc.024.us, i64 4
  %52 = load i16, ptr %incdec.ptr10.us, align 2
  %conv11.us.1 = zext i16 %52 to i32
  %sub.us.1 = sub nsw i32 %conv.us.1, %conv11.us.1
  %mul.i.us.1 = mul nsw i32 %sub.us.1, %sub.us.1
  %conv12.us.1 = zext nneg i32 %mul.i.us.1 to i64
  %add.us.1 = add nsw i64 %add.us, %conv12.us.1
  %incdec.ptr.us.2 = getelementptr inbounds i8, ptr %lineRef.023.us, i64 6
  %53 = load i16, ptr %incdec.ptr.us.1, align 2
  %conv.us.2 = zext i16 %53 to i32
  %incdec.ptr10.us.2 = getelementptr inbounds i8, ptr %lineSrc.024.us, i64 6
  %54 = load i16, ptr %incdec.ptr10.us.1, align 2
  %conv11.us.2 = zext i16 %54 to i32
  %sub.us.2 = sub nsw i32 %conv.us.2, %conv11.us.2
  %mul.i.us.2 = mul nsw i32 %sub.us.2, %sub.us.2
  %conv12.us.2 = zext nneg i32 %mul.i.us.2 to i64
  %add.us.2 = add nsw i64 %add.us.1, %conv12.us.2
  %incdec.ptr.us.3 = getelementptr inbounds i8, ptr %lineRef.023.us, i64 8
  %55 = load i16, ptr %incdec.ptr.us.2, align 2
  %conv.us.3 = zext i16 %55 to i32
  %incdec.ptr10.us.3 = getelementptr inbounds i8, ptr %lineSrc.024.us, i64 8
  %56 = load i16, ptr %incdec.ptr10.us.2, align 2
  %conv11.us.3 = zext i16 %56 to i32
  %sub.us.3 = sub nsw i32 %conv.us.3, %conv11.us.3
  %mul.i.us.3 = mul nsw i32 %sub.us.3, %sub.us.3
  %conv12.us.3 = zext nneg i32 %mul.i.us.3 to i64
  %add.us.3 = add nsw i64 %add.us.2, %conv12.us.3
  %inc.us.3 = add nuw nsw i32 %i.022.us, 4
  %exitcond.not.3 = icmp eq i32 %inc.us.3, %xSize
  br i1 %exitcond.not.3, label %for.cond7.for.inc13_crit_edge.us, label %for.body9.us, !llvm.loop !17

for.cond7.for.inc13_crit_edge.us:                 ; preds = %for.body9.us.prol.loopexit, %for.body9.us, %middle.block
  %add.us.lcssa = phi i64 [ %bin.rdx49, %middle.block ], [ %add.us.lcssa53.unr, %for.body9.us.prol.loopexit ], [ %add.us.3, %for.body9.us ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond32.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond32.not, label %for.end15, label %for.body.us

for.end15:                                        ; preds = %for.cond7.for.inc13_crit_edge.us, %for.body.lr.ph, %entry
  %distortion.0.lcssa = phi i64 [ 0, %entry ], [ 0, %for.body.lr.ph ], [ %add.us.lcssa, %for.cond7.for.inc13_crit_edge.us ]
  ret i64 %distortion.0.lcssa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @calculate_frame_no(ptr nocapture noundef %p_Vid, ptr nocapture noundef readonly %p) local_unnamed_addr #9 {
entry:
  %0 = load ptr, ptr %p_Vid, align 8
  %poc2 = getelementptr inbounds i8, ptr %p, i64 4
  %1 = load i32, ptr %poc2, align 4
  %poc_scale3 = getelementptr inbounds i8, ptr %0, i64 776
  %2 = load i32, ptr %poc_scale3, align 8
  %div4 = sdiv i32 %1, %2
  %cmp = icmp eq i32 %div4, 0
  br i1 %cmp, label %if.then, label %cond.end.if.end_crit_edge

cond.end.if.end_crit_edge:                        ; preds = %entry
  %idr_psnr_number7.phi.trans.insert = getelementptr inbounds i8, ptr %p_Vid, i64 849220
  %.pre = load i32, ptr %idr_psnr_number7.phi.trans.insert, align 4
  br label %if.end

if.then:                                          ; preds = %entry
  %number = getelementptr inbounds i8, ptr %p_Vid, i64 848712
  %3 = load i32, ptr %number, align 8
  %ref_poc_gap = getelementptr inbounds i8, ptr %p_Vid, i64 849232
  %4 = load i32, ptr %ref_poc_gap, align 8
  %mul = mul nsw i32 %4, %3
  %div6 = sdiv i32 %mul, %2
  %idr_psnr_number = getelementptr inbounds i8, ptr %p_Vid, i64 849220
  store i32 %div6, ptr %idr_psnr_number, align 4
  br label %if.end

if.end:                                           ; preds = %cond.end.if.end_crit_edge, %if.then
  %5 = phi i32 [ %.pre, %cond.end.if.end_crit_edge ], [ %div6, %if.then ]
  %psnr_number = getelementptr inbounds i8, ptr %p_Vid, i64 849224
  %6 = load i32, ptr %psnr_number, align 8
  %add = add nsw i32 %5, %div4
  %cond.i = tail call noundef i32 @llvm.smax.i32(i32 %6, i32 %add)
  store i32 %cond.i, ptr %psnr_number, align 8
  %frame_no = getelementptr inbounds i8, ptr %p_Vid, i64 856004
  store i32 %add, ptr %frame_no, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @find_snr(ptr nocapture noundef readonly %p_Vid, ptr nocapture noundef readonly %p, ptr nocapture noundef %p_ref) local_unnamed_addr #2 {
entry:
  %comp_size_x = alloca [3 x i32], align 4
  %comp_size_y = alloca [3 x i32], align 4
  %max_pix_value_sqd = alloca [3 x i32], align 4
  %cur_ref = alloca [3 x ptr], align 16
  %cur_comp = alloca [3 x ptr], align 16
  %yuv_types = alloca [4 x [6 x i8]], align 16
  %0 = load ptr, ptr %p_Vid, align 8
  %snr2 = getelementptr inbounds i8, ptr %p_Vid, i64 848704
  %1 = load ptr, ptr %snr2, align 8
  %pic_unit_bitsize_on_disk = getelementptr inbounds i8, ptr %p_Vid, i64 849036
  %2 = load i32, ptr %pic_unit_bitsize_on_disk, align 4
  %shr = ashr i32 %2, 3
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %comp_size_x) #27
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %comp_size_y) #27
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %max_pix_value_sqd) #27
  %active_sps = getelementptr inbounds i8, ptr %p_Vid, i64 16
  %3 = load ptr, ptr %active_sps, align 8
  %matrix_coefficients = getelementptr inbounds i8, ptr %3, i64 3216
  %4 = load i32, ptr %matrix_coefficients, align 4
  %cmp = icmp eq i32 %4, 0
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %cur_ref) #27
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %cur_comp) #27
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %yuv_types) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %yuv_types, ptr noundef nonnull align 16 dereferenceable(24) @__const.exit_picture.yuv_types, i64 24, i1 false)
  %max_pel_value_comp = getelementptr inbounds i8, ptr %p_Vid, i64 849072
  %5 = load i32, ptr %max_pel_value_comp, align 8
  %mul.i = mul nsw i32 %5, %5
  store i32 %mul.i, ptr %max_pix_value_sqd, align 4
  %arrayidx5 = getelementptr inbounds i8, ptr %p_Vid, i64 849076
  %6 = load i32, ptr %arrayidx5, align 4
  %mul.i312 = mul nsw i32 %6, %6
  %arrayidx7 = getelementptr inbounds i8, ptr %max_pix_value_sqd, i64 4
  store i32 %mul.i312, ptr %arrayidx7, align 4
  %arrayidx9 = getelementptr inbounds i8, ptr %p_Vid, i64 849080
  %7 = load i32, ptr %arrayidx9, align 8
  %mul.i313 = mul nsw i32 %7, %7
  %arrayidx11 = getelementptr inbounds i8, ptr %max_pix_value_sqd, i64 8
  store i32 %mul.i313, ptr %arrayidx11, align 4
  %imgY_ref = getelementptr inbounds i8, ptr %p_Vid, i64 856016
  %8 = load ptr, ptr %imgY_ref, align 8
  store ptr %8, ptr %cur_ref, align 16
  %chroma_format_idc = getelementptr inbounds i8, ptr %p, i64 268
  %9 = load i32, ptr %chroma_format_idc, align 4
  %cmp13.not = icmp eq i32 %9, 0
  br i1 %cmp13.not, label %cond.end44, label %cond.true40

cond.true40:                                      ; preds = %entry
  %imgUV_ref = getelementptr inbounds i8, ptr %p_Vid, i64 856024
  %10 = load ptr, ptr %imgUV_ref, align 8
  %11 = load <2 x ptr>, ptr %10, align 8
  %imgUV = getelementptr inbounds i8, ptr %p, i64 136
  %12 = load ptr, ptr %imgUV, align 8
  %13 = load <2 x ptr>, ptr %12, align 8
  br label %cond.end44

cond.end44:                                       ; preds = %entry, %cond.true40
  %14 = phi <2 x ptr> [ %11, %cond.true40 ], [ zeroinitializer, %entry ]
  %15 = phi <2 x ptr> [ %13, %cond.true40 ], [ zeroinitializer, %entry ]
  %.sink333.in = getelementptr inbounds i8, ptr %p, i64 128
  %.sink333 = load ptr, ptr %.sink333.in, align 8
  %16 = getelementptr inbounds i8, ptr %cur_ref, i64 8
  store <2 x ptr> %14, ptr %16, align 8
  store ptr %.sink333, ptr %cur_comp, align 16
  %17 = getelementptr inbounds i8, ptr %cur_comp, i64 8
  store <2 x ptr> %15, ptr %17, align 8
  %width = getelementptr inbounds i8, ptr %0, i64 808
  %18 = load i32, ptr %width, align 8
  store i32 %18, ptr %comp_size_x, align 4
  %height = getelementptr inbounds i8, ptr %0, i64 820
  %19 = load i32, ptr %height, align 4
  store i32 %19, ptr %comp_size_y, align 4
  %arrayidx54 = getelementptr inbounds i8, ptr %0, i64 812
  %20 = load i32, ptr %arrayidx54, align 4
  %arrayidx55 = getelementptr inbounds i8, ptr %comp_size_x, i64 8
  store i32 %20, ptr %arrayidx55, align 4
  %arrayidx56 = getelementptr inbounds i8, ptr %comp_size_x, i64 4
  store i32 %20, ptr %arrayidx56, align 4
  %arrayidx59 = getelementptr inbounds i8, ptr %0, i64 824
  %21 = load i32, ptr %arrayidx59, align 4
  %arrayidx60 = getelementptr inbounds i8, ptr %comp_size_y, i64 8
  store i32 %21, ptr %arrayidx60, align 4
  %arrayidx61 = getelementptr inbounds i8, ptr %comp_size_y, i64 4
  store i32 %21, ptr %arrayidx61, align 4
  %conv63 = sext i32 %18 to i64
  %conv65 = sext i32 %19 to i64
  %mul = mul nsw i64 %conv65, %conv63
  %conv67 = sext i32 %20 to i64
  %conv69 = sext i32 %21 to i64
  %mul70 = shl nsw i64 %conv67, 1
  %mul71 = mul i64 %mul70, %conv69
  %add = add nsw i64 %mul71, %mul
  %conv72 = sext i32 %shr to i64
  %mul73 = mul nsw i64 %add, %conv72
  %mul76 = mul i32 %18, %shr
  %mul77 = mul i32 %mul76, %19
  %conv78 = sext i32 %mul77 to i64
  %call79 = tail call noalias ptr @malloc(i64 noundef %conv78) #30
  %cmp80 = icmp eq ptr %call79, null
  br i1 %cmp80, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end44
  tail call void @no_mem_exit(ptr noundef nonnull @.str.2) #27
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end44
  %22 = load i32, ptr %p_ref, align 4
  %frame_no = getelementptr inbounds i8, ptr %p_Vid, i64 856004
  %23 = load i32, ptr %frame_no, align 4
  %conv82 = sext i32 %23 to i64
  %mul83 = mul nsw i64 %mul73, %conv82
  %call84 = tail call i64 @lseek(i32 noundef %22, i64 noundef %mul83, i32 noundef 0) #27
  %cmp85 = icmp eq i64 %call84, -1
  br i1 %cmp85, label %if.then87, label %if.end90

if.then87:                                        ; preds = %if.end
  %24 = load ptr, ptr @stderr, align 8
  %25 = load i32, ptr %frame_no, align 4
  %call89 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %24, ptr noundef nonnull @.str.3, i32 noundef %25) #32
  tail call void @free(ptr noundef %call79) #27
  br label %cleanup

if.end90:                                         ; preds = %if.end
  br i1 %cmp, label %if.then91, label %if.end93

if.then91:                                        ; preds = %if.end90
  %26 = load i32, ptr %p_ref, align 4
  %div = sdiv i64 %mul73, 3
  %call92 = tail call i64 @lseek(i32 noundef %26, i64 noundef %div, i32 noundef 1) #27
  br label %if.end93

if.end93:                                         ; preds = %if.then91, %if.end90
  %sub = sub nsw i64 0, %mul73
  %snr161 = getelementptr inbounds i8, ptr %1, i64 4
  %snra172 = getelementptr inbounds i8, ptr %1, i64 28
  br label %for.body

for.body:                                         ; preds = %if.end93, %for.inc
  %indvars.iv = phi i64 [ 0, %if.end93 ], [ %indvars.iv.next, %for.inc ]
  %cmp101 = icmp eq i64 %indvars.iv, 2
  %or.cond = and i1 %cmp, %cmp101
  br i1 %or.cond, label %if.then103, label %if.end105

if.then103:                                       ; preds = %for.body
  %27 = load i32, ptr %p_ref, align 4
  %call104 = tail call i64 @lseek(i32 noundef %27, i64 noundef %sub, i32 noundef 1) #27
  br label %if.end105

if.end105:                                        ; preds = %if.then103, %for.body
  %28 = load i32, ptr %p_ref, align 4
  %arrayidx106 = getelementptr inbounds [3 x i32], ptr %comp_size_x, i64 0, i64 %indvars.iv
  %29 = load i32, ptr %arrayidx106, align 4
  %arrayidx108 = getelementptr inbounds [3 x i32], ptr %comp_size_y, i64 0, i64 %indvars.iv
  %30 = load i32, ptr %arrayidx108, align 4
  %mul109 = mul nsw i32 %30, %29
  %mul110 = mul nsw i32 %mul109, %shr
  %conv111 = sext i32 %mul110 to i64
  %call112 = tail call i64 @read(i32 noundef %28, ptr noundef %call79, i64 noundef %conv111) #27
  %conv113 = trunc i64 %call112 to i32
  %cmp120.not = icmp eq i32 %mul110, %conv113
  br i1 %cmp120.not, label %if.end132, label %if.then122

if.then122:                                       ; preds = %if.end105
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.59)
  %31 = load i32, ptr %p_ref, align 4
  %call131 = tail call i32 @close(i32 noundef %31) #27
  store i32 -1, ptr %p_ref, align 4
  br label %for.end

if.end132:                                        ; preds = %if.end105
  %arrayidx134 = getelementptr inbounds [3 x ptr], ptr %cur_ref, i64 0, i64 %indvars.iv
  %32 = load ptr, ptr %arrayidx134, align 8
  tail call void @buffer2img(ptr noundef %32, ptr noundef %call79, i32 noundef %29, i32 noundef %30, i32 noundef %shr)
  %arrayidx142 = getelementptr inbounds [3 x ptr], ptr %cur_comp, i64 0, i64 %indvars.iv
  %33 = load ptr, ptr %arrayidx142, align 8
  %cmp26.i = icmp sgt i32 %30, 0
  %cmp821.i = icmp sgt i32 %29, 0
  %or.cond326 = and i1 %cmp821.i, %cmp26.i
  br i1 %or.cond326, label %for.body.us.preheader.i, label %psnr.exit

for.body.us.preheader.i:                          ; preds = %if.end132
  %wide.trip.count.i = zext nneg i32 %30 to i64
  %34 = zext nneg i32 %29 to i64
  %min.iters.check = icmp ult i32 %29, 4
  %n.vec = and i64 %34, 2147483644
  %35 = shl nuw nsw i64 %n.vec, 1
  %36 = shl nuw nsw i64 %n.vec, 1
  %ind.end338 = trunc nuw nsw i64 %n.vec to i32
  %cmp.n = icmp eq i64 %n.vec, %34
  br label %for.body.us.i

for.body.us.i:                                    ; preds = %for.cond7.for.inc13_crit_edge.us.i, %for.body.us.preheader.i
  %indvars.iv.i = phi i64 [ 0, %for.body.us.preheader.i ], [ %indvars.iv.next.i, %for.cond7.for.inc13_crit_edge.us.i ]
  %distortion.028.us.i = phi i64 [ 0, %for.body.us.preheader.i ], [ %add.us.i.lcssa, %for.cond7.for.inc13_crit_edge.us.i ]
  %arrayidx.us.i = getelementptr inbounds ptr, ptr %32, i64 %indvars.iv.i
  %37 = load ptr, ptr %arrayidx.us.i, align 8
  %arrayidx4.us.i = getelementptr inbounds ptr, ptr %33, i64 %indvars.iv.i
  %38 = load ptr, ptr %arrayidx4.us.i, align 8
  br i1 %min.iters.check, label %for.body9.us.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %for.body.us.i
  %ind.end = getelementptr i8, ptr %38, i64 %35
  %ind.end336 = getelementptr i8, ptr %37, i64 %36
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi i64 [ %distortion.028.us.i, %vector.ph ], [ %73, %vector.body ]
  %vec.phi340 = phi i64 [ 0, %vector.ph ], [ %74, %vector.body ]
  %vec.phi341 = phi i64 [ 0, %vector.ph ], [ %75, %vector.body ]
  %vec.phi342 = phi i64 [ 0, %vector.ph ], [ %76, %vector.body ]
  %offset.idx = shl i64 %index, 1
  %39 = or disjoint i64 %offset.idx, 2
  %40 = or disjoint i64 %offset.idx, 4
  %41 = or disjoint i64 %offset.idx, 6
  %next.gep = getelementptr i8, ptr %38, i64 %offset.idx
  %next.gep343 = getelementptr i8, ptr %38, i64 %39
  %next.gep344 = getelementptr i8, ptr %38, i64 %40
  %next.gep345 = getelementptr i8, ptr %38, i64 %41
  %offset.idx346 = shl i64 %index, 1
  %42 = or disjoint i64 %offset.idx346, 2
  %43 = or disjoint i64 %offset.idx346, 4
  %44 = or disjoint i64 %offset.idx346, 6
  %next.gep347 = getelementptr i8, ptr %37, i64 %offset.idx346
  %next.gep348 = getelementptr i8, ptr %37, i64 %42
  %next.gep349 = getelementptr i8, ptr %37, i64 %43
  %next.gep350 = getelementptr i8, ptr %37, i64 %44
  %45 = load i16, ptr %next.gep347, align 2
  %46 = load i16, ptr %next.gep348, align 2
  %47 = load i16, ptr %next.gep349, align 2
  %48 = load i16, ptr %next.gep350, align 2
  %49 = zext i16 %45 to i32
  %50 = zext i16 %46 to i32
  %51 = zext i16 %47 to i32
  %52 = zext i16 %48 to i32
  %53 = load i16, ptr %next.gep, align 2
  %54 = load i16, ptr %next.gep343, align 2
  %55 = load i16, ptr %next.gep344, align 2
  %56 = load i16, ptr %next.gep345, align 2
  %57 = zext i16 %53 to i32
  %58 = zext i16 %54 to i32
  %59 = zext i16 %55 to i32
  %60 = zext i16 %56 to i32
  %61 = sub nsw i32 %49, %57
  %62 = sub nsw i32 %50, %58
  %63 = sub nsw i32 %51, %59
  %64 = sub nsw i32 %52, %60
  %65 = mul nsw i32 %61, %61
  %66 = mul nsw i32 %62, %62
  %67 = mul nsw i32 %63, %63
  %68 = mul nsw i32 %64, %64
  %69 = zext nneg i32 %65 to i64
  %70 = zext nneg i32 %66 to i64
  %71 = zext nneg i32 %67 to i64
  %72 = zext nneg i32 %68 to i64
  %73 = add i64 %vec.phi, %69
  %74 = add i64 %vec.phi340, %70
  %75 = add i64 %vec.phi341, %71
  %76 = add i64 %vec.phi342, %72
  %index.next = add nuw i64 %index, 4
  %77 = icmp eq i64 %index.next, %n.vec
  br i1 %77, label %middle.block, label %vector.body, !llvm.loop !18

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add i64 %74, %73
  %bin.rdx351 = add i64 %75, %bin.rdx
  %bin.rdx352 = add i64 %76, %bin.rdx351
  br i1 %cmp.n, label %for.cond7.for.inc13_crit_edge.us.i, label %for.body9.us.i.preheader

for.body9.us.i.preheader:                         ; preds = %middle.block, %for.body.us.i
  %distortion.125.us.i.ph = phi i64 [ %distortion.028.us.i, %for.body.us.i ], [ %bin.rdx352, %middle.block ]
  %lineSrc.024.us.i.ph = phi ptr [ %38, %for.body.us.i ], [ %ind.end, %middle.block ]
  %lineRef.023.us.i.ph = phi ptr [ %37, %for.body.us.i ], [ %ind.end336, %middle.block ]
  %i.022.us.i.ph = phi i32 [ 0, %for.body.us.i ], [ %ind.end338, %middle.block ]
  %78 = sub i32 %29, %i.022.us.i.ph
  %xtraiter = and i32 %78, 3
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.body9.us.i.prol.loopexit, label %for.body9.us.i.prol

for.body9.us.i.prol:                              ; preds = %for.body9.us.i.preheader, %for.body9.us.i.prol
  %distortion.125.us.i.prol = phi i64 [ %add.us.i.prol, %for.body9.us.i.prol ], [ %distortion.125.us.i.ph, %for.body9.us.i.preheader ]
  %lineSrc.024.us.i.prol = phi ptr [ %incdec.ptr10.us.i.prol, %for.body9.us.i.prol ], [ %lineSrc.024.us.i.ph, %for.body9.us.i.preheader ]
  %lineRef.023.us.i.prol = phi ptr [ %incdec.ptr.us.i.prol, %for.body9.us.i.prol ], [ %lineRef.023.us.i.ph, %for.body9.us.i.preheader ]
  %i.022.us.i.prol = phi i32 [ %inc.us.i.prol, %for.body9.us.i.prol ], [ %i.022.us.i.ph, %for.body9.us.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %for.body9.us.i.prol ], [ 0, %for.body9.us.i.preheader ]
  %incdec.ptr.us.i.prol = getelementptr inbounds i8, ptr %lineRef.023.us.i.prol, i64 2
  %79 = load i16, ptr %lineRef.023.us.i.prol, align 2
  %conv.us.i.prol = zext i16 %79 to i32
  %incdec.ptr10.us.i.prol = getelementptr inbounds i8, ptr %lineSrc.024.us.i.prol, i64 2
  %80 = load i16, ptr %lineSrc.024.us.i.prol, align 2
  %conv11.us.i.prol = zext i16 %80 to i32
  %sub.us.i.prol = sub nsw i32 %conv.us.i.prol, %conv11.us.i.prol
  %mul.i.us.i.prol = mul nsw i32 %sub.us.i.prol, %sub.us.i.prol
  %conv12.us.i.prol = zext nneg i32 %mul.i.us.i.prol to i64
  %add.us.i.prol = add nsw i64 %distortion.125.us.i.prol, %conv12.us.i.prol
  %inc.us.i.prol = add nuw nsw i32 %i.022.us.i.prol, 1
  %prol.iter.next = add i32 %prol.iter, 1
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %for.body9.us.i.prol.loopexit, label %for.body9.us.i.prol, !llvm.loop !19

for.body9.us.i.prol.loopexit:                     ; preds = %for.body9.us.i.prol, %for.body9.us.i.preheader
  %add.us.i.lcssa356.unr = phi i64 [ poison, %for.body9.us.i.preheader ], [ %add.us.i.prol, %for.body9.us.i.prol ]
  %distortion.125.us.i.unr = phi i64 [ %distortion.125.us.i.ph, %for.body9.us.i.preheader ], [ %add.us.i.prol, %for.body9.us.i.prol ]
  %lineSrc.024.us.i.unr = phi ptr [ %lineSrc.024.us.i.ph, %for.body9.us.i.preheader ], [ %incdec.ptr10.us.i.prol, %for.body9.us.i.prol ]
  %lineRef.023.us.i.unr = phi ptr [ %lineRef.023.us.i.ph, %for.body9.us.i.preheader ], [ %incdec.ptr.us.i.prol, %for.body9.us.i.prol ]
  %i.022.us.i.unr = phi i32 [ %i.022.us.i.ph, %for.body9.us.i.preheader ], [ %inc.us.i.prol, %for.body9.us.i.prol ]
  %81 = sub i32 %i.022.us.i.ph, %29
  %82 = icmp ugt i32 %81, -4
  br i1 %82, label %for.cond7.for.inc13_crit_edge.us.i, label %for.body9.us.i

for.body9.us.i:                                   ; preds = %for.body9.us.i.prol.loopexit, %for.body9.us.i
  %distortion.125.us.i = phi i64 [ %add.us.i.3, %for.body9.us.i ], [ %distortion.125.us.i.unr, %for.body9.us.i.prol.loopexit ]
  %lineSrc.024.us.i = phi ptr [ %incdec.ptr10.us.i.3, %for.body9.us.i ], [ %lineSrc.024.us.i.unr, %for.body9.us.i.prol.loopexit ]
  %lineRef.023.us.i = phi ptr [ %incdec.ptr.us.i.3, %for.body9.us.i ], [ %lineRef.023.us.i.unr, %for.body9.us.i.prol.loopexit ]
  %i.022.us.i = phi i32 [ %inc.us.i.3, %for.body9.us.i ], [ %i.022.us.i.unr, %for.body9.us.i.prol.loopexit ]
  %incdec.ptr.us.i = getelementptr inbounds i8, ptr %lineRef.023.us.i, i64 2
  %83 = load i16, ptr %lineRef.023.us.i, align 2
  %conv.us.i = zext i16 %83 to i32
  %incdec.ptr10.us.i = getelementptr inbounds i8, ptr %lineSrc.024.us.i, i64 2
  %84 = load i16, ptr %lineSrc.024.us.i, align 2
  %conv11.us.i = zext i16 %84 to i32
  %sub.us.i = sub nsw i32 %conv.us.i, %conv11.us.i
  %mul.i.us.i = mul nsw i32 %sub.us.i, %sub.us.i
  %conv12.us.i = zext nneg i32 %mul.i.us.i to i64
  %add.us.i = add nsw i64 %distortion.125.us.i, %conv12.us.i
  %incdec.ptr.us.i.1 = getelementptr inbounds i8, ptr %lineRef.023.us.i, i64 4
  %85 = load i16, ptr %incdec.ptr.us.i, align 2
  %conv.us.i.1 = zext i16 %85 to i32
  %incdec.ptr10.us.i.1 = getelementptr inbounds i8, ptr %lineSrc.024.us.i, i64 4
  %86 = load i16, ptr %incdec.ptr10.us.i, align 2
  %conv11.us.i.1 = zext i16 %86 to i32
  %sub.us.i.1 = sub nsw i32 %conv.us.i.1, %conv11.us.i.1
  %mul.i.us.i.1 = mul nsw i32 %sub.us.i.1, %sub.us.i.1
  %conv12.us.i.1 = zext nneg i32 %mul.i.us.i.1 to i64
  %add.us.i.1 = add nsw i64 %add.us.i, %conv12.us.i.1
  %incdec.ptr.us.i.2 = getelementptr inbounds i8, ptr %lineRef.023.us.i, i64 6
  %87 = load i16, ptr %incdec.ptr.us.i.1, align 2
  %conv.us.i.2 = zext i16 %87 to i32
  %incdec.ptr10.us.i.2 = getelementptr inbounds i8, ptr %lineSrc.024.us.i, i64 6
  %88 = load i16, ptr %incdec.ptr10.us.i.1, align 2
  %conv11.us.i.2 = zext i16 %88 to i32
  %sub.us.i.2 = sub nsw i32 %conv.us.i.2, %conv11.us.i.2
  %mul.i.us.i.2 = mul nsw i32 %sub.us.i.2, %sub.us.i.2
  %conv12.us.i.2 = zext nneg i32 %mul.i.us.i.2 to i64
  %add.us.i.2 = add nsw i64 %add.us.i.1, %conv12.us.i.2
  %incdec.ptr.us.i.3 = getelementptr inbounds i8, ptr %lineRef.023.us.i, i64 8
  %89 = load i16, ptr %incdec.ptr.us.i.2, align 2
  %conv.us.i.3 = zext i16 %89 to i32
  %incdec.ptr10.us.i.3 = getelementptr inbounds i8, ptr %lineSrc.024.us.i, i64 8
  %90 = load i16, ptr %incdec.ptr10.us.i.2, align 2
  %conv11.us.i.3 = zext i16 %90 to i32
  %sub.us.i.3 = sub nsw i32 %conv.us.i.3, %conv11.us.i.3
  %mul.i.us.i.3 = mul nsw i32 %sub.us.i.3, %sub.us.i.3
  %conv12.us.i.3 = zext nneg i32 %mul.i.us.i.3 to i64
  %add.us.i.3 = add nsw i64 %add.us.i.2, %conv12.us.i.3
  %inc.us.i.3 = add nuw nsw i32 %i.022.us.i, 4
  %exitcond.not.i.3 = icmp eq i32 %inc.us.i.3, %29
  br i1 %exitcond.not.i.3, label %for.cond7.for.inc13_crit_edge.us.i, label %for.body9.us.i, !llvm.loop !20

for.cond7.for.inc13_crit_edge.us.i:               ; preds = %for.body9.us.i.prol.loopexit, %for.body9.us.i, %middle.block
  %add.us.i.lcssa = phi i64 [ %bin.rdx352, %middle.block ], [ %add.us.i.lcssa356.unr, %for.body9.us.i.prol.loopexit ], [ %add.us.i.3, %for.body9.us.i ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond32.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond32.not.i, label %compute_SSE.exit, label %for.body.us.i

compute_SSE.exit:                                 ; preds = %for.cond7.for.inc13_crit_edge.us.i
  %cmp.i = icmp eq i64 %add.us.i.lcssa, 0
  br i1 %cmp.i, label %psnr.exit, label %cond.false.i

cond.false.i:                                     ; preds = %compute_SSE.exit
  %conv159 = sitofp i64 %add.us.i.lcssa to float
  %arrayidx151 = getelementptr inbounds [3 x i32], ptr %max_pix_value_sqd, i64 0, i64 %indvars.iv
  %91 = load i32, ptr %arrayidx151, align 4
  %conv.i = fpext float %conv159 to double
  %conv2.i = sitofp i32 %91 to double
  %conv3.i = sitofp i32 %mul109 to double
  %div.i = fdiv double %conv3.i, %conv.i
  %mul.i314 = fmul double %div.i, %conv2.i
  %call.i = tail call double @log10(double noundef %mul.i314) #27
  %mul5.i = fmul double %call.i, 1.000000e+01
  %92 = fptrunc double %mul5.i to float
  br label %psnr.exit

psnr.exit:                                        ; preds = %if.end132, %compute_SSE.exit, %cond.false.i
  %cond.i = phi float [ %92, %cond.false.i ], [ 0.000000e+00, %compute_SSE.exit ], [ 0.000000e+00, %if.end132 ]
  %arrayidx163 = getelementptr inbounds [3 x float], ptr %snr161, i64 0, i64 %indvars.iv
  store float %cond.i, ptr %arrayidx163, align 4
  %93 = load i32, ptr %1, align 4
  %cmp164 = icmp eq i32 %93, 0
  %arrayidx171 = getelementptr inbounds [3 x float], ptr %snra172, i64 0, i64 %indvars.iv
  br i1 %cmp164, label %for.inc, label %if.else

if.else:                                          ; preds = %psnr.exit
  %94 = load float, ptr %arrayidx171, align 4
  %conv176 = sitofp i32 %93 to float
  %95 = tail call float @llvm.fmuladd.f32(float %94, float %conv176, float %cond.i)
  %add182 = add nsw i32 %93, 1
  %conv183 = sitofp i32 %add182 to float
  %div184 = fdiv float %95, %conv183
  br label %for.inc

for.inc:                                          ; preds = %psnr.exit, %if.else
  %cond.i.sink = phi float [ %div184, %if.else ], [ %cond.i, %psnr.exit ]
  store float %cond.i.sink, ptr %arrayidx171, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %96 = load i32, ptr %chroma_format_idc, align 4
  %cmp95.not = icmp ne i32 %96, 0
  %cmp98330 = icmp ult i64 %indvars.iv, 2
  %cmp98 = and i1 %cmp95.not, %cmp98330
  br i1 %cmp98, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc, %if.then122
  br i1 %cmp, label %if.then190, label %if.end194

if.then190:                                       ; preds = %for.end
  %97 = load i32, ptr %p_ref, align 4
  %mul191 = shl nsw i64 %mul73, 1
  %div192 = sdiv i64 %mul191, 3
  %call193 = tail call i64 @lseek(i32 noundef %97, i64 noundef %div192, i32 noundef 1) #27
  br label %if.end194

if.end194:                                        ; preds = %if.then190, %for.end
  tail call void @free(ptr noundef %call79) #27
  %concealed_pic = getelementptr inbounds i8, ptr %p, i64 320
  %98 = load i32, ptr %concealed_pic, align 8
  %tobool195.not = icmp eq i32 %98, 0
  br i1 %tobool195.not, label %cleanup, label %if.then196

if.then196:                                       ; preds = %if.end194
  %99 = load ptr, ptr @stdout, align 8
  %100 = load i32, ptr %frame_no, align 4
  %frame_poc = getelementptr inbounds i8, ptr %p, i64 16
  %101 = load i32, ptr %frame_poc, align 8
  %pic_num = getelementptr inbounds i8, ptr %p, i64 28
  %102 = load i32, ptr %pic_num, align 4
  %qp = getelementptr inbounds i8, ptr %p, i64 296
  %103 = load i32, ptr %qp, align 8
  %104 = load float, ptr %snr161, align 4
  %conv200 = fpext float %104 to double
  %arrayidx202 = getelementptr inbounds i8, ptr %1, i64 8
  %105 = load float, ptr %arrayidx202, align 4
  %conv203 = fpext float %105 to double
  %arrayidx205 = getelementptr inbounds i8, ptr %1, i64 12
  %106 = load float, ptr %arrayidx205, align 4
  %conv206 = fpext float %106 to double
  %107 = load i32, ptr %chroma_format_idc, align 4
  %idxprom208 = sext i32 %107 to i64
  %arrayidx209 = getelementptr inbounds [4 x [6 x i8]], ptr %yuv_types, i64 0, i64 %idxprom208
  %call210 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %99, ptr noundef nonnull @.str.5, i32 noundef %100, i32 noundef %101, i32 noundef %102, i32 noundef %103, double noundef %conv200, double noundef %conv203, double noundef %conv206, ptr noundef nonnull %arrayidx209, i32 noundef 0) #27
  br label %cleanup

cleanup:                                          ; preds = %if.end194, %if.then196, %if.then87
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %yuv_types) #27
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %cur_comp) #27
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %cur_ref) #27
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %max_pix_value_sqd) #27
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %comp_size_y) #27
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %comp_size_x) #27
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #11

declare void @no_mem_exit(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #13

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #13

declare i32 @close(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #15

declare void @reorder_ref_pic_list(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @free_ref_pic_list_reordering_buffer(ptr noundef) local_unnamed_addr #3

declare i32 @read_next_nalu(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @RBSPtoSODB(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @u_1(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @nal_unit_header_svc_extension(...) local_unnamed_addr #3

declare void @nal_unit_header_mvc_extension(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @FirstPartOfSliceHeader(ptr noundef) local_unnamed_addr #3

declare i32 @RestOfSliceHeader(ptr noundef) local_unnamed_addr #3

declare i32 @GetBaseViewId(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @assign_quant_params(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local range(i32 0, 2) i32 @is_new_picture(ptr noundef readnone %dec_picture, ptr nocapture noundef readonly %currSlice, ptr nocapture noundef readonly %p_old_slice) local_unnamed_addr #16 {
entry:
  %0 = load ptr, ptr %currSlice, align 8
  %cmp = icmp eq ptr %dec_picture, null
  %pps_id = getelementptr inbounds i8, ptr %p_old_slice, i64 36
  %1 = load i32, ptr %pps_id, align 4
  %pic_parameter_set_id = getelementptr inbounds i8, ptr %currSlice, i64 1228
  %2 = load i32, ptr %pic_parameter_set_id, align 4
  %cmp2 = icmp ne i32 %1, %2
  %or4163 = or i1 %cmp, %cmp2
  %frame_num = getelementptr inbounds i8, ptr %p_old_slice, i64 4
  %3 = load i32, ptr %frame_num, align 4
  %frame_num5 = getelementptr inbounds i8, ptr %currSlice, i64 172
  %4 = load i32, ptr %frame_num5, align 4
  %cmp6 = icmp ne i32 %3, %4
  %or8164 = or i1 %or4163, %cmp6
  %5 = load i32, ptr %p_old_slice, align 4
  %field_pic_flag9 = getelementptr inbounds i8, ptr %currSlice, i64 176
  %6 = load i32, ptr %field_pic_flag9, align 8
  %cmp10 = icmp ne i32 %5, %6
  %or12165 = or i1 %or8164, %cmp10
  %tobool.not = icmp eq i32 %6, 0
  %tobool15.not = icmp eq i32 %5, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool15.not
  br i1 %or.cond, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %bottom_field_flag = getelementptr inbounds i8, ptr %p_old_slice, i64 28
  %7 = load i8, ptr %bottom_field_flag, align 4
  %bottom_field_flag17 = getelementptr inbounds i8, ptr %currSlice, i64 180
  %8 = load i8, ptr %bottom_field_flag17, align 4
  %cmp19 = icmp ne i8 %7, %8
  %or21166 = or i1 %or12165, %cmp19
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %result.0.in = phi i1 [ %or21166, %if.then ], [ %or12165, %entry ]
  %result.0 = zext i1 %result.0.in to i32
  %nal_ref_idc = getelementptr inbounds i8, ptr %p_old_slice, i64 8
  %9 = load i32, ptr %nal_ref_idc, align 4
  %nal_reference_idc = getelementptr inbounds i8, ptr %currSlice, i64 56
  %10 = load i32, ptr %nal_reference_idc, align 8
  %cmp22.not = icmp eq i32 %9, %10
  br i1 %cmp22.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %if.end
  %cmp25 = icmp eq i32 %9, 0
  br i1 %cmp25, label %land.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %cmp28 = icmp eq i32 %10, 0
  %11 = zext i1 %cmp28 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs, %if.end
  %land.ext = phi i32 [ 0, %if.end ], [ 1, %land.rhs ], [ %11, %lor.rhs ]
  %or30 = or i32 %land.ext, %result.0
  %idr_flag = getelementptr inbounds i8, ptr %p_old_slice, i64 29
  %12 = load i8, ptr %idr_flag, align 1
  %conv31 = zext i8 %12 to i32
  %idr_flag32 = getelementptr inbounds i8, ptr %currSlice, i64 48
  %13 = load i32, ptr %idr_flag32, align 8
  %cmp33 = icmp ne i32 %13, %conv31
  %conv34 = zext i1 %cmp33 to i32
  %or35 = or i32 %or30, %conv34
  %tobool37.not = icmp eq i32 %13, 0
  %tobool41.not = icmp eq i8 %12, 0
  %or.cond167 = select i1 %tobool37.not, i1 true, i1 %tobool41.not
  br i1 %or.cond167, label %if.end47, label %if.then42

if.then42:                                        ; preds = %land.end
  %idr_pic_id = getelementptr inbounds i8, ptr %p_old_slice, i64 32
  %14 = load i32, ptr %idr_pic_id, align 4
  %idr_pic_id43 = getelementptr inbounds i8, ptr %currSlice, i64 52
  %15 = load i32, ptr %idr_pic_id43, align 4
  %cmp44 = icmp ne i32 %14, %15
  %conv45 = zext i1 %cmp44 to i32
  %or46 = or i32 %or35, %conv45
  br label %if.end47

if.end47:                                         ; preds = %if.then42, %land.end
  %result.1 = phi i32 [ %or46, %if.then42 ], [ %or35, %land.end ]
  %active_sps = getelementptr inbounds i8, ptr %0, i64 16
  %16 = load ptr, ptr %active_sps, align 8
  %pic_order_cnt_type = getelementptr inbounds i8, ptr %16, i64 2072
  %17 = load i32, ptr %pic_order_cnt_type, align 4
  switch i32 %17, label %if.end95 [
    i32 0, label %if.then50
    i32 1, label %if.then69
  ]

if.then50:                                        ; preds = %if.end47
  %pic_oder_cnt_lsb = getelementptr inbounds i8, ptr %p_old_slice, i64 12
  %18 = load i32, ptr %pic_oder_cnt_lsb, align 4
  %pic_order_cnt_lsb = getelementptr inbounds i8, ptr %currSlice, i64 80
  %19 = load i32, ptr %pic_order_cnt_lsb, align 8
  %cmp51 = icmp ne i32 %18, %19
  %conv52 = zext i1 %cmp51 to i32
  %or53 = or i32 %result.1, %conv52
  %active_pps = getelementptr inbounds i8, ptr %0, i64 8
  %20 = load ptr, ptr %active_pps, align 8
  %bottom_field_pic_order_in_frame_present_flag = getelementptr inbounds i8, ptr %20, i64 2040
  %21 = load i32, ptr %bottom_field_pic_order_in_frame_present_flag, align 8
  %cmp54 = icmp eq i32 %21, 1
  %brmerge.not = and i1 %tobool.not, %cmp54
  br i1 %brmerge.not, label %if.end95.sink.split, label %if.end95

if.then69:                                        ; preds = %if.end47
  %delta_pic_order_always_zero_flag = getelementptr inbounds i8, ptr %16, i64 2080
  %22 = load i32, ptr %delta_pic_order_always_zero_flag, align 4
  %tobool71.not = icmp eq i32 %22, 0
  br i1 %tobool71.not, label %if.then72, label %if.end95

if.then72:                                        ; preds = %if.then69
  %delta_pic_order_cnt = getelementptr inbounds i8, ptr %p_old_slice, i64 20
  %23 = load i32, ptr %delta_pic_order_cnt, align 4
  %delta_pic_order_cnt73 = getelementptr inbounds i8, ptr %currSlice, i64 88
  %24 = load i32, ptr %delta_pic_order_cnt73, align 8
  %cmp75 = icmp ne i32 %23, %24
  %conv76 = zext i1 %cmp75 to i32
  %or77 = or i32 %result.1, %conv76
  %active_pps78 = getelementptr inbounds i8, ptr %0, i64 8
  %25 = load ptr, ptr %active_pps78, align 8
  %bottom_field_pic_order_in_frame_present_flag79 = getelementptr inbounds i8, ptr %25, i64 2040
  %26 = load i32, ptr %bottom_field_pic_order_in_frame_present_flag79, align 8
  %cmp80 = icmp eq i32 %26, 1
  %brmerge171.not = and i1 %tobool.not, %cmp80
  br i1 %brmerge171.not, label %if.end95.sink.split, label %if.end95

if.end95.sink.split:                              ; preds = %if.then72, %if.then50
  %.sink = phi i64 [ 16, %if.then50 ], [ 24, %if.then72 ]
  %.sink173 = phi i64 [ 84, %if.then50 ], [ 92, %if.then72 ]
  %or53.sink = phi i32 [ %or53, %if.then50 ], [ %or77, %if.then72 ]
  %delta_pic_oder_cnt_bottom = getelementptr inbounds i8, ptr %p_old_slice, i64 %.sink
  %27 = load i32, ptr %delta_pic_oder_cnt_bottom, align 4
  %delta_pic_order_cnt_bottom = getelementptr inbounds i8, ptr %currSlice, i64 %.sink173
  %28 = load i32, ptr %delta_pic_order_cnt_bottom, align 4
  %cmp60 = icmp ne i32 %27, %28
  %conv61 = zext i1 %cmp60 to i32
  %or62 = or i32 %or53.sink, %conv61
  br label %if.end95

if.end95:                                         ; preds = %if.end95.sink.split, %if.then72, %if.end47, %if.then50, %if.then69
  %result.3 = phi i32 [ %result.1, %if.then69 ], [ %or77, %if.then72 ], [ %or53, %if.then50 ], [ %result.1, %if.end47 ], [ %or62, %if.end95.sink.split ]
  %view_id = getelementptr inbounds i8, ptr %currSlice, i64 1176
  %29 = load i32, ptr %view_id, align 8
  %view_id96 = getelementptr inbounds i8, ptr %p_old_slice, i64 40
  %30 = load i32, ptr %view_id96, align 4
  %cmp97 = icmp ne i32 %29, %30
  %conv98 = zext i1 %cmp97 to i32
  %or99 = or i32 %result.3, %conv98
  %inter_view_flag = getelementptr inbounds i8, ptr %currSlice, i64 1180
  %31 = load i32, ptr %inter_view_flag, align 4
  %inter_view_flag100 = getelementptr inbounds i8, ptr %p_old_slice, i64 44
  %32 = load i32, ptr %inter_view_flag100, align 4
  %cmp101 = icmp ne i32 %31, %32
  %conv102 = zext i1 %cmp101 to i32
  %or103 = or i32 %or99, %conv102
  %anchor_pic_flag = getelementptr inbounds i8, ptr %currSlice, i64 1184
  %33 = load i32, ptr %anchor_pic_flag, align 8
  %anchor_pic_flag104 = getelementptr inbounds i8, ptr %p_old_slice, i64 48
  %34 = load i32, ptr %anchor_pic_flag104, align 4
  %cmp105 = icmp ne i32 %33, %34
  %conv106 = zext i1 %cmp105 to i32
  %or107 = or i32 %or103, %conv106
  ret i32 %or107
}

declare void @CheckZeroByteVCL(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @setup_slice_methods(ptr noundef) local_unnamed_addr #3

declare void @arideco_start_decoding(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @fmo_init(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @update_pic_num(ptr noundef) local_unnamed_addr #3

declare i32 @ue_v(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @InterpretSEIMessage(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @ProcessPPS(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @ProcessSPS(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @prefix_nal_unit_svc(...) local_unnamed_addr #3

declare void @ProcessSubsetSPS(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @pad_buf(ptr nocapture noundef %pImgBuf, i32 noundef %iWidth, i32 noundef %iHeight, i32 noundef %iStride, i32 noundef %iPadX, i32 noundef %iPadY) local_unnamed_addr #17 {
entry:
  %idx.ext = sext i32 %iPadX to i64
  %idx.neg = sub nsw i64 0, %idx.ext
  %add.ptr = getelementptr inbounds i16, ptr %pImgBuf, i64 %idx.neg
  %cmp123 = icmp sgt i32 %iPadX, 0
  br i1 %cmp123, label %for.body.lr.ph, label %for.end11

for.body.lr.ph:                                   ; preds = %entry
  %sub = sub nsw i32 0, %iPadX
  %0 = load i16, ptr %pImgBuf, align 2
  %1 = sext i32 %sub to i64
  %2 = zext nneg i32 %iPadX to i64
  %min.iters.check = icmp ult i32 %iPadX, 32
  br i1 %min.iters.check, label %for.body.preheader, label %vector.ph

for.body.preheader:                               ; preds = %middle.block, %for.body.lr.ph
  %indvars.iv.ph = phi i64 [ %1, %for.body.lr.ph ], [ %ind.end, %middle.block ]
  br label %for.body

vector.ph:                                        ; preds = %for.body.lr.ph
  %n.vec = and i64 %2, 2147483616
  %ind.end = add nsw i64 %n.vec, %1
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %0, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer
  %invariant.gep226 = getelementptr i16, ptr %pImgBuf, i64 %1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep227 = getelementptr i16, ptr %invariant.gep226, i64 %index
  %3 = getelementptr inbounds i8, ptr %gep227, i64 16
  %4 = getelementptr inbounds i8, ptr %gep227, i64 32
  %5 = getelementptr inbounds i8, ptr %gep227, i64 48
  store <8 x i16> %broadcast.splat, ptr %gep227, align 2
  store <8 x i16> %broadcast.splat, ptr %3, align 2
  store <8 x i16> %broadcast.splat, ptr %4, align 2
  store <8 x i16> %broadcast.splat, ptr %5, align 2
  %index.next = add nuw i64 %index, 32
  %6 = icmp eq i64 %index.next, %n.vec
  br i1 %6, label %middle.block, label %vector.body, !llvm.loop !21

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %2
  br i1 %cmp.n, label %for.cond1.preheader, label %for.body.preheader

for.cond1.preheader:                              ; preds = %for.body, %middle.block
  br i1 %cmp123, label %for.body3.lr.ph, label %for.end11

for.body3.lr.ph:                                  ; preds = %for.cond1.preheader
  %invariant.gep = getelementptr i8, ptr %pImgBuf, i64 -2
  %idx.ext4 = sext i32 %iWidth to i64
  %gep = getelementptr i16, ptr %invariant.gep, i64 %idx.ext4
  %wide.trip.count = zext nneg i32 %iPadX to i64
  %.pre = load i16, ptr %gep, align 2
  %invariant.gep183 = getelementptr i16, ptr %pImgBuf, i64 %idx.ext4
  %min.iters.check187 = icmp ult i32 %iPadX, 32
  br i1 %min.iters.check187, label %for.body3.preheader, label %vector.ph188

for.body3.preheader:                              ; preds = %middle.block185, %for.body3.lr.ph
  %indvars.iv150.ph = phi i64 [ 0, %for.body3.lr.ph ], [ %n.vec190, %middle.block185 ]
  br label %for.body3

vector.ph188:                                     ; preds = %for.body3.lr.ph
  %n.vec190 = and i64 %wide.trip.count, 2147483616
  %broadcast.splatinsert194 = insertelement <8 x i16> poison, i16 %.pre, i64 0
  %broadcast.splat195 = shufflevector <8 x i16> %broadcast.splatinsert194, <8 x i16> poison, <8 x i32> zeroinitializer
  br label %vector.body192

vector.body192:                                   ; preds = %vector.body192, %vector.ph188
  %index193 = phi i64 [ 0, %vector.ph188 ], [ %index.next196, %vector.body192 ]
  %7 = getelementptr i16, ptr %invariant.gep183, i64 %index193
  %8 = getelementptr i8, ptr %7, i64 16
  %9 = getelementptr i8, ptr %7, i64 32
  %10 = getelementptr i8, ptr %7, i64 48
  store <8 x i16> %broadcast.splat195, ptr %7, align 2
  store <8 x i16> %broadcast.splat195, ptr %8, align 2
  store <8 x i16> %broadcast.splat195, ptr %9, align 2
  store <8 x i16> %broadcast.splat195, ptr %10, align 2
  %index.next196 = add nuw i64 %index193, 32
  %11 = icmp eq i64 %index.next196, %n.vec190
  br i1 %11, label %middle.block185, label %vector.body192, !llvm.loop !22

middle.block185:                                  ; preds = %vector.body192
  %cmp.n197 = icmp eq i64 %n.vec190, %wide.trip.count
  br i1 %cmp.n197, label %for.end11, label %for.body3.preheader

for.body:                                         ; preds = %for.body.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ %indvars.iv.ph, %for.body.preheader ]
  %arrayidx = getelementptr inbounds i16, ptr %pImgBuf, i64 %indvars.iv
  store i16 %0, ptr %arrayidx, align 2
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %12 = and i64 %indvars.iv.next, 4294967295
  %exitcond.not = icmp eq i64 %12, 0
  br i1 %exitcond.not, label %for.cond1.preheader, label %for.body, !llvm.loop !23

for.body3:                                        ; preds = %for.body3.preheader, %for.body3
  %indvars.iv150 = phi i64 [ %indvars.iv.next151, %for.body3 ], [ %indvars.iv150.ph, %for.body3.preheader ]
  %gep184 = getelementptr i16, ptr %invariant.gep183, i64 %indvars.iv150
  store i16 %.pre, ptr %gep184, align 2
  %indvars.iv.next151 = add nuw nsw i64 %indvars.iv150, 1
  %exitcond154.not = icmp eq i64 %indvars.iv.next151, %wide.trip.count
  br i1 %exitcond154.not, label %for.end11, label %for.body3, !llvm.loop !24

for.end11:                                        ; preds = %for.body3, %middle.block185, %entry, %for.cond1.preheader
  %cmp14127 = icmp sgt i32 %iPadY, 0
  br i1 %cmp14127, label %for.body15.lr.ph, label %for.cond22.preheader

for.body15.lr.ph:                                 ; preds = %for.end11
  %sub12 = sub nsw i32 0, %iPadY
  %conv = sext i32 %iStride to i64
  %mul18 = shl nsw i64 %conv, 1
  %13 = sext i32 %sub12 to i64
  %xtraiter = and i32 %iPadY, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.body15.prol.loopexit, label %for.body15.prol

for.body15.prol:                                  ; preds = %for.body15.lr.ph
  %14 = mul nsw i64 %13, %conv
  %add.ptr17.prol = getelementptr inbounds i16, ptr %add.ptr, i64 %14
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %add.ptr17.prol, ptr align 2 %add.ptr, i64 %mul18, i1 false)
  %indvars.iv.next156.prol = add nsw i64 %13, 1
  br label %for.body15.prol.loopexit

for.body15.prol.loopexit:                         ; preds = %for.body15.prol, %for.body15.lr.ph
  %indvars.iv155.unr = phi i64 [ %13, %for.body15.lr.ph ], [ %indvars.iv.next156.prol, %for.body15.prol ]
  %15 = icmp eq i32 %iPadY, 1
  br i1 %15, label %for.cond22.preheader, label %for.body15

for.cond22.preheader:                             ; preds = %for.body15.prol.loopexit, %for.body15, %for.end11
  %cmp23133 = icmp sgt i32 %iHeight, 1
  br i1 %cmp23133, label %for.body25.lr.ph, label %for.end56

for.body25.lr.ph:                                 ; preds = %for.cond22.preheader
  %add40 = add nsw i32 %iPadX, %iWidth
  %16 = sext i32 %add40 to i64
  br i1 %cmp123, label %for.body25.us.preheader, label %for.end56

for.body25.us.preheader:                          ; preds = %for.body25.lr.ph
  %17 = add nuw i32 %iPadX, 1
  %18 = sext i32 %iStride to i64
  %wide.trip.count175 = zext nneg i32 %iHeight to i64
  %wide.trip.count164 = zext nneg i32 %iPadX to i64
  %wide.trip.count169 = zext i32 %17 to i64
  %19 = zext nneg i32 %iPadX to i64
  %min.iters.check215 = icmp ult i32 %iPadX, 32
  %n.vec218 = and i64 %wide.trip.count164, 2147483616
  %cmp.n225 = icmp eq i64 %n.vec218, %wide.trip.count164
  %min.iters.check200 = icmp ult i32 %iPadX, 32
  %n.vec203 = and i64 %19, 2147483616
  %ind.end204 = or disjoint i64 %n.vec203, 1
  %cmp.n212 = icmp eq i64 %n.vec203, %19
  br label %for.body25.us

for.body25.us:                                    ; preds = %for.body25.us.preheader, %for.cond44.for.inc54_crit_edge.us
  %indvars.iv171 = phi i64 [ 1, %for.body25.us.preheader ], [ %indvars.iv.next172, %for.cond44.for.inc54_crit_edge.us ]
  %20 = mul nsw i64 %indvars.iv171, %18
  %add.ptr28.us = getelementptr inbounds i16, ptr %add.ptr, i64 %20
  %arrayidx34.us = getelementptr inbounds i16, ptr %add.ptr28.us, i64 %idx.ext
  %.pre181 = load i16, ptr %arrayidx34.us, align 2
  br i1 %min.iters.check215, label %for.body32.us.preheader, label %vector.ph216

for.body32.us.preheader:                          ; preds = %middle.block213, %for.body25.us
  %indvars.iv161.ph = phi i64 [ 0, %for.body25.us ], [ %n.vec218, %middle.block213 ]
  br label %for.body32.us

vector.ph216:                                     ; preds = %for.body25.us
  %broadcast.splatinsert222 = insertelement <8 x i16> poison, i16 %.pre181, i64 0
  %broadcast.splat223 = shufflevector <8 x i16> %broadcast.splatinsert222, <8 x i16> poison, <8 x i32> zeroinitializer
  br label %vector.body220

vector.body220:                                   ; preds = %vector.body220, %vector.ph216
  %index221 = phi i64 [ 0, %vector.ph216 ], [ %index.next224, %vector.body220 ]
  %21 = getelementptr inbounds i16, ptr %add.ptr28.us, i64 %index221
  %22 = getelementptr inbounds i8, ptr %21, i64 16
  %23 = getelementptr inbounds i8, ptr %21, i64 32
  %24 = getelementptr inbounds i8, ptr %21, i64 48
  store <8 x i16> %broadcast.splat223, ptr %21, align 2
  store <8 x i16> %broadcast.splat223, ptr %22, align 2
  store <8 x i16> %broadcast.splat223, ptr %23, align 2
  store <8 x i16> %broadcast.splat223, ptr %24, align 2
  %index.next224 = add nuw i64 %index221, 32
  %25 = icmp eq i64 %index.next224, %n.vec218
  br i1 %25, label %middle.block213, label %vector.body220, !llvm.loop !25

middle.block213:                                  ; preds = %vector.body220
  br i1 %cmp.n225, label %for.cond29.for.end39_crit_edge.us, label %for.body32.us.preheader

for.body48.us:                                    ; preds = %for.body48.us.preheader, %for.body48.us
  %indvars.iv166 = phi i64 [ %indvars.iv.next167, %for.body48.us ], [ %indvars.iv166.ph, %for.body48.us.preheader ]
  %arrayidx50.us = getelementptr inbounds i16, ptr %add.ptr43.us, i64 %indvars.iv166
  store i16 %.pre182, ptr %arrayidx50.us, align 2
  %indvars.iv.next167 = add nuw nsw i64 %indvars.iv166, 1
  %exitcond170.not = icmp eq i64 %indvars.iv.next167, %wide.trip.count169
  br i1 %exitcond170.not, label %for.cond44.for.inc54_crit_edge.us, label %for.body48.us, !llvm.loop !26

for.body32.us:                                    ; preds = %for.body32.us.preheader, %for.body32.us
  %indvars.iv161 = phi i64 [ %indvars.iv.next162, %for.body32.us ], [ %indvars.iv161.ph, %for.body32.us.preheader ]
  %arrayidx36.us = getelementptr inbounds i16, ptr %add.ptr28.us, i64 %indvars.iv161
  store i16 %.pre181, ptr %arrayidx36.us, align 2
  %indvars.iv.next162 = add nuw nsw i64 %indvars.iv161, 1
  %exitcond165.not = icmp eq i64 %indvars.iv.next162, %wide.trip.count164
  br i1 %exitcond165.not, label %for.cond29.for.end39_crit_edge.us, label %for.body32.us, !llvm.loop !27

for.cond29.for.end39_crit_edge.us:                ; preds = %for.body32.us, %middle.block213
  %26 = getelementptr i16, ptr %add.ptr28.us, i64 %16
  %add.ptr43.us = getelementptr i8, ptr %26, i64 -2
  %.pre182 = load i16, ptr %add.ptr43.us, align 2
  br i1 %min.iters.check200, label %for.body48.us.preheader, label %vector.ph201

for.body48.us.preheader:                          ; preds = %middle.block198, %for.cond29.for.end39_crit_edge.us
  %indvars.iv166.ph = phi i64 [ 1, %for.cond29.for.end39_crit_edge.us ], [ %ind.end204, %middle.block198 ]
  br label %for.body48.us

vector.ph201:                                     ; preds = %for.cond29.for.end39_crit_edge.us
  %broadcast.splatinsert209 = insertelement <8 x i16> poison, i16 %.pre182, i64 0
  %broadcast.splat210 = shufflevector <8 x i16> %broadcast.splatinsert209, <8 x i16> poison, <8 x i32> zeroinitializer
  br label %vector.body206

vector.body206:                                   ; preds = %vector.body206, %vector.ph201
  %index207 = phi i64 [ 0, %vector.ph201 ], [ %index.next211, %vector.body206 ]
  %27 = getelementptr i16, ptr %26, i64 %index207
  %28 = getelementptr inbounds i8, ptr %27, i64 16
  %29 = getelementptr inbounds i8, ptr %27, i64 32
  %30 = getelementptr inbounds i8, ptr %27, i64 48
  store <8 x i16> %broadcast.splat210, ptr %27, align 2
  store <8 x i16> %broadcast.splat210, ptr %28, align 2
  store <8 x i16> %broadcast.splat210, ptr %29, align 2
  store <8 x i16> %broadcast.splat210, ptr %30, align 2
  %index.next211 = add nuw i64 %index207, 32
  %31 = icmp eq i64 %index.next211, %n.vec203
  br i1 %31, label %middle.block198, label %vector.body206, !llvm.loop !28

middle.block198:                                  ; preds = %vector.body206
  br i1 %cmp.n212, label %for.cond44.for.inc54_crit_edge.us, label %for.body48.us.preheader

for.cond44.for.inc54_crit_edge.us:                ; preds = %for.body48.us, %middle.block198
  %indvars.iv.next172 = add nuw nsw i64 %indvars.iv171, 1
  %exitcond176.not = icmp eq i64 %indvars.iv.next172, %wide.trip.count175
  br i1 %exitcond176.not, label %for.end56, label %for.body25.us

for.body15:                                       ; preds = %for.body15.prol.loopexit, %for.body15
  %indvars.iv155 = phi i64 [ %indvars.iv.next156.1, %for.body15 ], [ %indvars.iv155.unr, %for.body15.prol.loopexit ]
  %32 = mul nsw i64 %indvars.iv155, %conv
  %add.ptr17 = getelementptr inbounds i16, ptr %add.ptr, i64 %32
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %add.ptr17, ptr align 2 %add.ptr, i64 %mul18, i1 false)
  %indvars.iv.next156 = add nsw i64 %indvars.iv155, 1
  %33 = mul nsw i64 %indvars.iv.next156, %conv
  %add.ptr17.1 = getelementptr inbounds i16, ptr %add.ptr, i64 %33
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %add.ptr17.1, ptr align 2 %add.ptr, i64 %mul18, i1 false)
  %indvars.iv.next156.1 = add nsw i64 %indvars.iv155, 2
  %34 = and i64 %indvars.iv.next156.1, 4294967295
  %exitcond160.not.1 = icmp eq i64 %34, 0
  br i1 %exitcond160.not.1, label %for.cond22.preheader, label %for.body15

for.end56:                                        ; preds = %for.cond44.for.inc54_crit_edge.us, %for.body25.lr.ph, %for.cond22.preheader
  %sub57 = add nsw i32 %iHeight, -1
  %mul58 = mul nsw i32 %sub57, %iStride
  %idx.ext59 = sext i32 %mul58 to i64
  %add.ptr60 = getelementptr inbounds i16, ptr %add.ptr, i64 %idx.ext59
  br i1 %cmp14127, label %for.body65.lr.ph, label %for.end73

for.body65.lr.ph:                                 ; preds = %for.end56
  %add62 = add nsw i32 %iPadY, %iHeight
  %conv69 = sext i32 %iStride to i64
  %mul70 = shl nsw i64 %conv69, 1
  %35 = sext i32 %iHeight to i64
  %36 = sext i32 %add62 to i64
  br label %for.body65

for.body65:                                       ; preds = %for.body65.lr.ph, %for.body65
  %indvars.iv177 = phi i64 [ %35, %for.body65.lr.ph ], [ %indvars.iv.next178, %for.body65 ]
  %37 = mul nsw i64 %indvars.iv177, %conv69
  %add.ptr68 = getelementptr inbounds i16, ptr %add.ptr, i64 %37
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %add.ptr68, ptr align 2 %add.ptr60, i64 %mul70, i1 false)
  %indvars.iv.next178 = add nsw i64 %indvars.iv177, 1
  %cmp63 = icmp slt i64 %indvars.iv.next178, %36
  br i1 %cmp63, label %for.body65, label %for.end73

for.end73:                                        ; preds = %for.body65, %for.end56
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @pad_dec_picture(ptr nocapture noundef readonly %p_Vid, ptr nocapture noundef readonly %dec_picture) local_unnamed_addr #0 {
entry:
  %iLumaPadX = getelementptr inbounds i8, ptr %p_Vid, i64 856840
  %0 = load i32, ptr %iLumaPadX, align 8
  %iLumaPadY = getelementptr inbounds i8, ptr %p_Vid, i64 856844
  %1 = load i32, ptr %iLumaPadY, align 4
  %size_x = getelementptr inbounds i8, ptr %dec_picture, i64 64
  %2 = load i32, ptr %size_x, align 8
  %size_y = getelementptr inbounds i8, ptr %dec_picture, i64 68
  %3 = load i32, ptr %size_y, align 4
  %iLumaStride = getelementptr inbounds i8, ptr %dec_picture, i64 356
  %4 = load i32, ptr %iLumaStride, align 4
  %imgY = getelementptr inbounds i8, ptr %dec_picture, i64 128
  %5 = load ptr, ptr %imgY, align 8
  %6 = load ptr, ptr %5, align 8
  tail call void @pad_buf(ptr noundef %6, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %0, i32 noundef %1)
  %chroma_format_idc = getelementptr inbounds i8, ptr %dec_picture, i64 268
  %7 = load i32, ptr %chroma_format_idc, align 4
  %cmp.not = icmp eq i32 %7, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %iChromaPadX = getelementptr inbounds i8, ptr %p_Vid, i64 856848
  %8 = load i32, ptr %iChromaPadX, align 8
  %iChromaPadY = getelementptr inbounds i8, ptr %p_Vid, i64 856852
  %9 = load i32, ptr %iChromaPadY, align 4
  %size_x_cr = getelementptr inbounds i8, ptr %dec_picture, i64 72
  %10 = load i32, ptr %size_x_cr, align 8
  %size_y_cr = getelementptr inbounds i8, ptr %dec_picture, i64 76
  %11 = load i32, ptr %size_y_cr, align 4
  %iChromaStride = getelementptr inbounds i8, ptr %dec_picture, i64 360
  %12 = load i32, ptr %iChromaStride, align 8
  %imgUV = getelementptr inbounds i8, ptr %dec_picture, i64 136
  %13 = load ptr, ptr %imgUV, align 8
  %14 = load ptr, ptr %13, align 8
  %15 = load ptr, ptr %14, align 8
  tail call void @pad_buf(ptr noundef %15, i32 noundef %10, i32 noundef %11, i32 noundef %12, i32 noundef %8, i32 noundef %9)
  %16 = load ptr, ptr %imgUV, align 8
  %arrayidx2 = getelementptr inbounds i8, ptr %16, i64 8
  %17 = load ptr, ptr %arrayidx2, align 8
  %18 = load ptr, ptr %17, align 8
  tail call void @pad_buf(ptr noundef %18, i32 noundef %10, i32 noundef %11, i32 noundef %12, i32 noundef %8, i32 noundef %9)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @DeblockPicture(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @make_frame_picture_JV(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @frame_postprocessing(ptr nocapture noundef readnone %p_Vid) local_unnamed_addr #18 {
entry:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @field_postprocessing(ptr nocapture noundef %p_Vid) local_unnamed_addr #19 {
entry:
  %number = getelementptr inbounds i8, ptr %p_Vid, i64 848712
  %0 = load i32, ptr %number, align 8
  %div = sdiv i32 %0, 2
  store i32 %div, ptr %number, align 8
  ret void
}

declare void @store_picture_in_dpb(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #20

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strncat(ptr noalias noundef returned, ptr noalias nocapture noundef readonly, i64 noundef) local_unnamed_addr #20

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #21

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ercWriteMBMODEandMV(ptr nocapture noundef readonly %currMB) local_unnamed_addr #0 {
entry:
  %p_Vid1 = getelementptr inbounds i8, ptr %currMB, i64 8
  %0 = load ptr, ptr %p_Vid1, align 8
  %mbAddrX = getelementptr inbounds i8, ptr %currMB, i64 24
  %1 = load i32, ptr %mbAddrX, align 8
  %dec_picture2 = getelementptr inbounds i8, ptr %0, i64 856456
  %2 = load ptr, ptr %dec_picture2, align 8
  %size_x = getelementptr inbounds i8, ptr %2, i64 64
  %3 = load i32, ptr %size_x, align 8
  %shr = ashr i32 %3, 4
  %rem = srem i32 %1, %shr
  %div = sdiv i32 %1, %shr
  %erc_object_list = getelementptr inbounds i8, ptr %0, i64 856496
  %4 = load ptr, ptr %erc_object_list, align 8
  %shl = shl i32 %1, 2
  %idx.ext = sext i32 %shl to i64
  %add.ptr = getelementptr inbounds %struct.object_buffer, ptr %4, i64 %idx.ext
  %type = getelementptr inbounds i8, ptr %0, i64 848776
  %5 = load i32, ptr %type, align 8
  %cmp.not = icmp eq i32 %5, 1
  %mv_info253 = getelementptr inbounds i8, ptr %2, i64 152
  br i1 %cmp.not, label %for.cond203.preheader, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %mb_type = getelementptr inbounds i8, ptr %currMB, i64 152
  %b8mode35 = getelementptr inbounds i8, ptr %currMB, i64 364
  %mul = shl nsw i32 %rem, 2
  %mul54 = shl nsw i32 %div, 2
  %6 = load i16, ptr %mb_type, align 8
  %cmp8 = icmp eq i16 %6, 10
  br i1 %cmp8, label %cond.end32, label %cond.false

for.cond203.preheader:                            ; preds = %entry
  %mul207 = shl nsw i32 %rem, 2
  %mul211 = shl nsw i32 %div, 2
  %mb_type217 = getelementptr inbounds i8, ptr %currMB, i64 152
  %b8mode223 = getelementptr inbounds i8, ptr %currMB, i64 364
  %7 = load i16, ptr %mb_type217, align 8
  %cmp219 = icmp eq i16 %7, 10
  br i1 %cmp219, label %cond.end230, label %cond.false222

cond.false:                                       ; preds = %for.cond.preheader
  %8 = load i8, ptr %b8mode35, align 1
  switch i8 %8, label %cond.false22 [
    i8 11, label %cond.end32
    i8 0, label %cond.end32.fold.split
  ]

cond.false22:                                     ; preds = %cond.false
  %cmp27 = icmp eq i8 %8, 1
  %cond = select i1 %cmp27, i8 1, i8 5
  br label %cond.end32

cond.end32.fold.split:                            ; preds = %cond.false
  br label %cond.end32

cond.end32:                                       ; preds = %cond.false, %cond.end32.fold.split, %cond.false22, %for.cond.preheader
  %cond33 = phi i8 [ 2, %for.cond.preheader ], [ 6, %cond.false ], [ %cond, %cond.false22 ], [ 0, %cond.end32.fold.split ]
  store i8 %cond33, ptr %add.ptr, align 4
  %9 = load i8, ptr %b8mode35, align 1
  switch i8 %9, label %if.else [
    i8 0, label %if.then47
    i8 11, label %if.then47
  ]

if.then47:                                        ; preds = %cond.end32, %cond.end32
  %mv = getelementptr inbounds i8, ptr %add.ptr, i64 12
  store i32 0, ptr %mv, align 4
  %arrayidx50 = getelementptr inbounds i8, ptr %add.ptr, i64 16
  store i32 0, ptr %arrayidx50, align 4
  br label %for.inc

if.else:                                          ; preds = %cond.end32
  %10 = add i8 %9, -5
  %or.cond = icmp ult i8 %10, 3
  %11 = load ptr, ptr %mv_info253, align 8
  %idxprom71 = sext i32 %mul54 to i64
  %arrayidx72 = getelementptr inbounds ptr, ptr %11, i64 %idxprom71
  %12 = load ptr, ptr %arrayidx72, align 8
  %idxprom73 = sext i32 %mul to i64
  %mv75 = getelementptr inbounds %struct.pic_motion_params, ptr %12, i64 %idxprom73, i32 1
  %13 = load i16, ptr %mv75, align 8
  %conv77 = sext i16 %13 to i32
  br i1 %or.cond, label %if.then70, label %if.else162

if.then70:                                        ; preds = %if.else
  %add81 = or disjoint i32 %mul, 1
  %idxprom82 = sext i32 %add81 to i64
  %mv84 = getelementptr inbounds %struct.pic_motion_params, ptr %12, i64 %idxprom82, i32 1
  %14 = load i16, ptr %mv84, align 8
  %conv87 = sext i16 %14 to i32
  %add90 = or disjoint i32 %mul54, 1
  %idxprom91 = sext i32 %add90 to i64
  %arrayidx92 = getelementptr inbounds ptr, ptr %11, i64 %idxprom91
  %15 = load ptr, ptr %arrayidx92, align 8
  %mv95 = getelementptr inbounds %struct.pic_motion_params, ptr %15, i64 %idxprom73, i32 1
  %16 = load i16, ptr %mv95, align 8
  %conv98 = sext i16 %16 to i32
  %mv107 = getelementptr inbounds %struct.pic_motion_params, ptr %15, i64 %idxprom82, i32 1
  %17 = load i16, ptr %mv107, align 8
  %conv110 = sext i16 %17 to i32
  %add88 = add nsw i32 %conv77, 2
  %add99 = add nsw i32 %add88, %conv87
  %add111 = add nsw i32 %add99, %conv98
  %add112 = add nsw i32 %add111, %conv110
  %div113 = sdiv i32 %add112, 4
  %mv114 = getelementptr inbounds i8, ptr %add.ptr, i64 12
  store i32 %div113, ptr %mv114, align 4
  %18 = load ptr, ptr %mv_info253, align 8
  %arrayidx118 = getelementptr inbounds ptr, ptr %18, i64 %idxprom71
  %19 = load ptr, ptr %arrayidx118, align 8
  %mv_y = getelementptr inbounds %struct.pic_motion_params, ptr %19, i64 %idxprom73, i32 1, i64 0, i32 1
  %20 = load i16, ptr %mv_y, align 2
  %conv123 = sext i16 %20 to i32
  %mv_y132 = getelementptr inbounds %struct.pic_motion_params, ptr %19, i64 %idxprom82, i32 1, i64 0, i32 1
  %21 = load i16, ptr %mv_y132, align 2
  %conv133 = sext i16 %21 to i32
  %arrayidx138 = getelementptr inbounds ptr, ptr %18, i64 %idxprom91
  %22 = load ptr, ptr %arrayidx138, align 8
  %mv_y143 = getelementptr inbounds %struct.pic_motion_params, ptr %22, i64 %idxprom73, i32 1, i64 0, i32 1
  %23 = load i16, ptr %mv_y143, align 2
  %conv144 = sext i16 %23 to i32
  %mv_y155 = getelementptr inbounds %struct.pic_motion_params, ptr %22, i64 %idxprom82, i32 1, i64 0, i32 1
  %24 = load i16, ptr %mv_y155, align 2
  %conv156 = sext i16 %24 to i32
  %add134 = add nsw i32 %conv123, 2
  %add145 = add nsw i32 %add134, %conv133
  %add157 = add nsw i32 %add145, %conv144
  %add158 = add nsw i32 %add157, %conv156
  %div159 = sdiv i32 %add158, 4
  br label %if.end

if.else162:                                       ; preds = %if.else
  %mv172 = getelementptr inbounds i8, ptr %add.ptr, i64 12
  store i32 %conv77, ptr %mv172, align 4
  %25 = load ptr, ptr %mv_info253, align 8
  %arrayidx176 = getelementptr inbounds ptr, ptr %25, i64 %idxprom71
  %26 = load ptr, ptr %arrayidx176, align 8
  %mv_y181 = getelementptr inbounds %struct.pic_motion_params, ptr %26, i64 %idxprom73, i32 1, i64 0, i32 1
  %27 = load i16, ptr %mv_y181, align 2
  %conv182 = sext i16 %27 to i32
  br label %if.end

if.end:                                           ; preds = %if.else162, %if.then70
  %28 = phi i32 [ %conv77, %if.else162 ], [ %div113, %if.then70 ]
  %conv182.sink = phi i32 [ %conv182, %if.else162 ], [ %div159, %if.then70 ]
  %29 = getelementptr inbounds i8, ptr %add.ptr, i64 16
  store i32 %conv182.sink, ptr %29, align 4
  %sub.i = tail call i32 @llvm.abs.i32(i32 %28, i1 true)
  %sub.i522 = tail call i32 @llvm.abs.i32(i32 %conv182.sink, i1 true)
  %add190 = add nuw nsw i32 %sub.i522, %sub.i
  %30 = load ptr, ptr %currMB, align 8
  %erc_mvperMB = getelementptr inbounds i8, ptr %30, i64 13504
  %31 = load i32, ptr %erc_mvperMB, align 8
  %add191 = add nsw i32 %add190, %31
  store i32 %add191, ptr %erc_mvperMB, align 8
  %32 = load ptr, ptr %mv_info253, align 8
  %arrayidx194 = getelementptr inbounds ptr, ptr %32, i64 %idxprom71
  %33 = load ptr, ptr %arrayidx194, align 8
  %ref_idx = getelementptr inbounds %struct.pic_motion_params, ptr %33, i64 %idxprom73, i32 2
  %34 = load i8, ptr %ref_idx, align 8
  %conv198 = sext i8 %34 to i32
  br label %for.inc

for.inc:                                          ; preds = %if.then47, %if.end
  %.sink = phi i32 [ 0, %if.then47 ], [ %conv198, %if.end ]
  %arrayidx52 = getelementptr inbounds i8, ptr %add.ptr, i64 20
  store i32 %.sink, ptr %arrayidx52, align 4
  %add.ptr7.1 = getelementptr inbounds i8, ptr %add.ptr, i64 24
  %35 = load i16, ptr %mb_type, align 8
  %cmp8.1 = icmp eq i16 %35, 10
  br i1 %cmp8.1, label %cond.end32.1, label %cond.false.1

cond.false.1:                                     ; preds = %for.inc
  %arrayidx.1 = getelementptr inbounds i8, ptr %currMB, i64 365
  %36 = load i8, ptr %arrayidx.1, align 1
  switch i8 %36, label %cond.false22.1 [
    i8 11, label %cond.end32.1
    i8 0, label %cond.end32.fold.split.1
  ]

cond.end32.fold.split.1:                          ; preds = %cond.false.1
  br label %cond.end32.1

cond.false22.1:                                   ; preds = %cond.false.1
  %cmp27.1 = icmp eq i8 %36, 1
  %cond.1 = select i1 %cmp27.1, i8 1, i8 5
  br label %cond.end32.1

cond.end32.1:                                     ; preds = %cond.false22.1, %cond.end32.fold.split.1, %cond.false.1, %for.inc
  %cond33.1 = phi i8 [ 2, %for.inc ], [ 6, %cond.false.1 ], [ %cond.1, %cond.false22.1 ], [ 0, %cond.end32.fold.split.1 ]
  store i8 %cond33.1, ptr %add.ptr7.1, align 4
  %arrayidx37.1 = getelementptr inbounds i8, ptr %currMB, i64 365
  %37 = load i8, ptr %arrayidx37.1, align 1
  switch i8 %37, label %if.else.1 [
    i8 0, label %if.then47.1
    i8 11, label %if.then47.1
  ]

if.then47.1:                                      ; preds = %cond.end32.1, %cond.end32.1
  %mv.1 = getelementptr inbounds i8, ptr %add.ptr, i64 36
  store i32 0, ptr %mv.1, align 4
  %arrayidx50.1 = getelementptr inbounds i8, ptr %add.ptr, i64 40
  store i32 0, ptr %arrayidx50.1, align 4
  br label %for.inc.1

if.else.1:                                        ; preds = %cond.end32.1
  %add.1 = or disjoint i32 %mul, 2
  %38 = add i8 %37, -5
  %or.cond.1 = icmp ult i8 %38, 3
  %39 = load ptr, ptr %mv_info253, align 8
  %idxprom71.1 = sext i32 %mul54 to i64
  %arrayidx72.1 = getelementptr inbounds ptr, ptr %39, i64 %idxprom71.1
  %40 = load ptr, ptr %arrayidx72.1, align 8
  %idxprom73.1 = sext i32 %add.1 to i64
  %mv75.1 = getelementptr inbounds %struct.pic_motion_params, ptr %40, i64 %idxprom73.1, i32 1
  %41 = load i16, ptr %mv75.1, align 8
  %conv77.1 = sext i16 %41 to i32
  br i1 %or.cond.1, label %if.then70.1, label %if.else162.1

if.else162.1:                                     ; preds = %if.else.1
  %mv172.1 = getelementptr inbounds i8, ptr %add.ptr, i64 36
  store i32 %conv77.1, ptr %mv172.1, align 4
  %42 = load ptr, ptr %mv_info253, align 8
  %arrayidx176.1 = getelementptr inbounds ptr, ptr %42, i64 %idxprom71.1
  %43 = load ptr, ptr %arrayidx176.1, align 8
  %mv_y181.1 = getelementptr inbounds %struct.pic_motion_params, ptr %43, i64 %idxprom73.1, i32 1, i64 0, i32 1
  %44 = load i16, ptr %mv_y181.1, align 2
  %conv182.1 = sext i16 %44 to i32
  br label %if.end.1

if.then70.1:                                      ; preds = %if.else.1
  %add81.1 = or disjoint i32 %mul, 3
  %idxprom82.1 = sext i32 %add81.1 to i64
  %mv84.1 = getelementptr inbounds %struct.pic_motion_params, ptr %40, i64 %idxprom82.1, i32 1
  %45 = load i16, ptr %mv84.1, align 8
  %conv87.1 = sext i16 %45 to i32
  %add90.1 = or disjoint i32 %mul54, 1
  %idxprom91.1 = sext i32 %add90.1 to i64
  %arrayidx92.1 = getelementptr inbounds ptr, ptr %39, i64 %idxprom91.1
  %46 = load ptr, ptr %arrayidx92.1, align 8
  %mv95.1 = getelementptr inbounds %struct.pic_motion_params, ptr %46, i64 %idxprom73.1, i32 1
  %47 = load i16, ptr %mv95.1, align 8
  %conv98.1 = sext i16 %47 to i32
  %mv107.1 = getelementptr inbounds %struct.pic_motion_params, ptr %46, i64 %idxprom82.1, i32 1
  %48 = load i16, ptr %mv107.1, align 8
  %conv110.1 = sext i16 %48 to i32
  %add88.1 = add nsw i32 %conv77.1, 2
  %add99.1 = add nsw i32 %add88.1, %conv87.1
  %add111.1 = add nsw i32 %add99.1, %conv98.1
  %add112.1 = add nsw i32 %add111.1, %conv110.1
  %div113.1 = sdiv i32 %add112.1, 4
  %mv114.1 = getelementptr inbounds i8, ptr %add.ptr, i64 36
  store i32 %div113.1, ptr %mv114.1, align 4
  %49 = load ptr, ptr %mv_info253, align 8
  %arrayidx118.1 = getelementptr inbounds ptr, ptr %49, i64 %idxprom71.1
  %50 = load ptr, ptr %arrayidx118.1, align 8
  %mv_y.1 = getelementptr inbounds %struct.pic_motion_params, ptr %50, i64 %idxprom73.1, i32 1, i64 0, i32 1
  %51 = load i16, ptr %mv_y.1, align 2
  %conv123.1 = sext i16 %51 to i32
  %mv_y132.1 = getelementptr inbounds %struct.pic_motion_params, ptr %50, i64 %idxprom82.1, i32 1, i64 0, i32 1
  %52 = load i16, ptr %mv_y132.1, align 2
  %conv133.1 = sext i16 %52 to i32
  %arrayidx138.1 = getelementptr inbounds ptr, ptr %49, i64 %idxprom91.1
  %53 = load ptr, ptr %arrayidx138.1, align 8
  %mv_y143.1 = getelementptr inbounds %struct.pic_motion_params, ptr %53, i64 %idxprom73.1, i32 1, i64 0, i32 1
  %54 = load i16, ptr %mv_y143.1, align 2
  %conv144.1 = sext i16 %54 to i32
  %mv_y155.1 = getelementptr inbounds %struct.pic_motion_params, ptr %53, i64 %idxprom82.1, i32 1, i64 0, i32 1
  %55 = load i16, ptr %mv_y155.1, align 2
  %conv156.1 = sext i16 %55 to i32
  %add134.1 = add nsw i32 %conv123.1, 2
  %add145.1 = add nsw i32 %add134.1, %conv133.1
  %add157.1 = add nsw i32 %add145.1, %conv144.1
  %add158.1 = add nsw i32 %add157.1, %conv156.1
  %div159.1 = sdiv i32 %add158.1, 4
  br label %if.end.1

if.end.1:                                         ; preds = %if.then70.1, %if.else162.1
  %56 = phi i32 [ %conv77.1, %if.else162.1 ], [ %div113.1, %if.then70.1 ]
  %conv182.sink.1 = phi i32 [ %conv182.1, %if.else162.1 ], [ %div159.1, %if.then70.1 ]
  %57 = getelementptr inbounds i8, ptr %add.ptr, i64 40
  store i32 %conv182.sink.1, ptr %57, align 4
  %sub.i.1 = tail call i32 @llvm.abs.i32(i32 %56, i1 true)
  %sub.i522.1 = tail call i32 @llvm.abs.i32(i32 %conv182.sink.1, i1 true)
  %add190.1 = add nuw nsw i32 %sub.i522.1, %sub.i.1
  %58 = load ptr, ptr %currMB, align 8
  %erc_mvperMB.1 = getelementptr inbounds i8, ptr %58, i64 13504
  %59 = load i32, ptr %erc_mvperMB.1, align 8
  %add191.1 = add nsw i32 %add190.1, %59
  store i32 %add191.1, ptr %erc_mvperMB.1, align 8
  %60 = load ptr, ptr %mv_info253, align 8
  %arrayidx194.1 = getelementptr inbounds ptr, ptr %60, i64 %idxprom71.1
  %61 = load ptr, ptr %arrayidx194.1, align 8
  %ref_idx.1 = getelementptr inbounds %struct.pic_motion_params, ptr %61, i64 %idxprom73.1, i32 2
  %62 = load i8, ptr %ref_idx.1, align 8
  %conv198.1 = sext i8 %62 to i32
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end.1, %if.then47.1
  %.sink.1 = phi i32 [ 0, %if.then47.1 ], [ %conv198.1, %if.end.1 ]
  %arrayidx52.1 = getelementptr inbounds i8, ptr %add.ptr, i64 44
  store i32 %.sink.1, ptr %arrayidx52.1, align 4
  %add.ptr7.2 = getelementptr inbounds i8, ptr %add.ptr, i64 48
  %63 = load i16, ptr %mb_type, align 8
  %cmp8.2 = icmp eq i16 %63, 10
  br i1 %cmp8.2, label %cond.end32.2, label %cond.false.2

cond.false.2:                                     ; preds = %for.inc.1
  %arrayidx.2 = getelementptr inbounds i8, ptr %currMB, i64 366
  %64 = load i8, ptr %arrayidx.2, align 1
  switch i8 %64, label %cond.false22.2 [
    i8 11, label %cond.end32.2
    i8 0, label %cond.end32.fold.split.2
  ]

cond.end32.fold.split.2:                          ; preds = %cond.false.2
  br label %cond.end32.2

cond.false22.2:                                   ; preds = %cond.false.2
  %cmp27.2 = icmp eq i8 %64, 1
  %cond.2 = select i1 %cmp27.2, i8 1, i8 5
  br label %cond.end32.2

cond.end32.2:                                     ; preds = %cond.false22.2, %cond.end32.fold.split.2, %cond.false.2, %for.inc.1
  %cond33.2 = phi i8 [ 2, %for.inc.1 ], [ 6, %cond.false.2 ], [ %cond.2, %cond.false22.2 ], [ 0, %cond.end32.fold.split.2 ]
  store i8 %cond33.2, ptr %add.ptr7.2, align 4
  %arrayidx37.2 = getelementptr inbounds i8, ptr %currMB, i64 366
  %65 = load i8, ptr %arrayidx37.2, align 1
  switch i8 %65, label %if.else.2 [
    i8 0, label %if.then47.2
    i8 11, label %if.then47.2
  ]

if.then47.2:                                      ; preds = %cond.end32.2, %cond.end32.2
  %mv.2 = getelementptr inbounds i8, ptr %add.ptr, i64 60
  store i32 0, ptr %mv.2, align 4
  %arrayidx50.2 = getelementptr inbounds i8, ptr %add.ptr, i64 64
  store i32 0, ptr %arrayidx50.2, align 4
  br label %for.inc.2

if.else.2:                                        ; preds = %cond.end32.2
  %add57.2 = or disjoint i32 %mul54, 2
  %66 = add i8 %65, -5
  %or.cond.2 = icmp ult i8 %66, 3
  %67 = load ptr, ptr %mv_info253, align 8
  %idxprom71.2 = sext i32 %add57.2 to i64
  %arrayidx72.2 = getelementptr inbounds ptr, ptr %67, i64 %idxprom71.2
  %68 = load ptr, ptr %arrayidx72.2, align 8
  %idxprom73.2 = sext i32 %mul to i64
  %mv75.2 = getelementptr inbounds %struct.pic_motion_params, ptr %68, i64 %idxprom73.2, i32 1
  %69 = load i16, ptr %mv75.2, align 8
  %conv77.2 = sext i16 %69 to i32
  br i1 %or.cond.2, label %if.then70.2, label %if.else162.2

if.else162.2:                                     ; preds = %if.else.2
  %mv172.2 = getelementptr inbounds i8, ptr %add.ptr, i64 60
  store i32 %conv77.2, ptr %mv172.2, align 4
  %70 = load ptr, ptr %mv_info253, align 8
  %arrayidx176.2 = getelementptr inbounds ptr, ptr %70, i64 %idxprom71.2
  %71 = load ptr, ptr %arrayidx176.2, align 8
  %mv_y181.2 = getelementptr inbounds %struct.pic_motion_params, ptr %71, i64 %idxprom73.2, i32 1, i64 0, i32 1
  %72 = load i16, ptr %mv_y181.2, align 2
  %conv182.2 = sext i16 %72 to i32
  br label %if.end.2

if.then70.2:                                      ; preds = %if.else.2
  %add81.2 = or disjoint i32 %mul, 1
  %idxprom82.2 = sext i32 %add81.2 to i64
  %mv84.2 = getelementptr inbounds %struct.pic_motion_params, ptr %68, i64 %idxprom82.2, i32 1
  %73 = load i16, ptr %mv84.2, align 8
  %conv87.2 = sext i16 %73 to i32
  %add90.2 = or disjoint i32 %mul54, 3
  %idxprom91.2 = sext i32 %add90.2 to i64
  %arrayidx92.2 = getelementptr inbounds ptr, ptr %67, i64 %idxprom91.2
  %74 = load ptr, ptr %arrayidx92.2, align 8
  %mv95.2 = getelementptr inbounds %struct.pic_motion_params, ptr %74, i64 %idxprom73.2, i32 1
  %75 = load i16, ptr %mv95.2, align 8
  %conv98.2 = sext i16 %75 to i32
  %mv107.2 = getelementptr inbounds %struct.pic_motion_params, ptr %74, i64 %idxprom82.2, i32 1
  %76 = load i16, ptr %mv107.2, align 8
  %conv110.2 = sext i16 %76 to i32
  %add88.2 = add nsw i32 %conv77.2, 2
  %add99.2 = add nsw i32 %add88.2, %conv87.2
  %add111.2 = add nsw i32 %add99.2, %conv98.2
  %add112.2 = add nsw i32 %add111.2, %conv110.2
  %div113.2 = sdiv i32 %add112.2, 4
  %mv114.2 = getelementptr inbounds i8, ptr %add.ptr, i64 60
  store i32 %div113.2, ptr %mv114.2, align 4
  %77 = load ptr, ptr %mv_info253, align 8
  %arrayidx118.2 = getelementptr inbounds ptr, ptr %77, i64 %idxprom71.2
  %78 = load ptr, ptr %arrayidx118.2, align 8
  %mv_y.2 = getelementptr inbounds %struct.pic_motion_params, ptr %78, i64 %idxprom73.2, i32 1, i64 0, i32 1
  %79 = load i16, ptr %mv_y.2, align 2
  %conv123.2 = sext i16 %79 to i32
  %mv_y132.2 = getelementptr inbounds %struct.pic_motion_params, ptr %78, i64 %idxprom82.2, i32 1, i64 0, i32 1
  %80 = load i16, ptr %mv_y132.2, align 2
  %conv133.2 = sext i16 %80 to i32
  %arrayidx138.2 = getelementptr inbounds ptr, ptr %77, i64 %idxprom91.2
  %81 = load ptr, ptr %arrayidx138.2, align 8
  %mv_y143.2 = getelementptr inbounds %struct.pic_motion_params, ptr %81, i64 %idxprom73.2, i32 1, i64 0, i32 1
  %82 = load i16, ptr %mv_y143.2, align 2
  %conv144.2 = sext i16 %82 to i32
  %mv_y155.2 = getelementptr inbounds %struct.pic_motion_params, ptr %81, i64 %idxprom82.2, i32 1, i64 0, i32 1
  %83 = load i16, ptr %mv_y155.2, align 2
  %conv156.2 = sext i16 %83 to i32
  %add134.2 = add nsw i32 %conv123.2, 2
  %add145.2 = add nsw i32 %add134.2, %conv133.2
  %add157.2 = add nsw i32 %add145.2, %conv144.2
  %add158.2 = add nsw i32 %add157.2, %conv156.2
  %div159.2 = sdiv i32 %add158.2, 4
  br label %if.end.2

if.end.2:                                         ; preds = %if.then70.2, %if.else162.2
  %84 = phi i32 [ %conv77.2, %if.else162.2 ], [ %div113.2, %if.then70.2 ]
  %conv182.sink.2 = phi i32 [ %conv182.2, %if.else162.2 ], [ %div159.2, %if.then70.2 ]
  %85 = getelementptr inbounds i8, ptr %add.ptr, i64 64
  store i32 %conv182.sink.2, ptr %85, align 4
  %sub.i.2 = tail call i32 @llvm.abs.i32(i32 %84, i1 true)
  %sub.i522.2 = tail call i32 @llvm.abs.i32(i32 %conv182.sink.2, i1 true)
  %add190.2 = add nuw nsw i32 %sub.i522.2, %sub.i.2
  %86 = load ptr, ptr %currMB, align 8
  %erc_mvperMB.2 = getelementptr inbounds i8, ptr %86, i64 13504
  %87 = load i32, ptr %erc_mvperMB.2, align 8
  %add191.2 = add nsw i32 %add190.2, %87
  store i32 %add191.2, ptr %erc_mvperMB.2, align 8
  %88 = load ptr, ptr %mv_info253, align 8
  %arrayidx194.2 = getelementptr inbounds ptr, ptr %88, i64 %idxprom71.2
  %89 = load ptr, ptr %arrayidx194.2, align 8
  %ref_idx.2 = getelementptr inbounds %struct.pic_motion_params, ptr %89, i64 %idxprom73.2, i32 2
  %90 = load i8, ptr %ref_idx.2, align 8
  %conv198.2 = sext i8 %90 to i32
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.end.2, %if.then47.2
  %.sink.2 = phi i32 [ 0, %if.then47.2 ], [ %conv198.2, %if.end.2 ]
  %arrayidx52.2 = getelementptr inbounds i8, ptr %add.ptr, i64 68
  store i32 %.sink.2, ptr %arrayidx52.2, align 4
  %add.ptr7.3 = getelementptr inbounds i8, ptr %add.ptr, i64 72
  %91 = load i16, ptr %mb_type, align 8
  %cmp8.3 = icmp eq i16 %91, 10
  br i1 %cmp8.3, label %cond.end32.3, label %cond.false.3

cond.false.3:                                     ; preds = %for.inc.2
  %arrayidx.3 = getelementptr inbounds i8, ptr %currMB, i64 367
  %92 = load i8, ptr %arrayidx.3, align 1
  switch i8 %92, label %cond.false22.3 [
    i8 11, label %cond.end32.3
    i8 0, label %cond.end32.fold.split.3
  ]

cond.end32.fold.split.3:                          ; preds = %cond.false.3
  br label %cond.end32.3

cond.false22.3:                                   ; preds = %cond.false.3
  %cmp27.3 = icmp eq i8 %92, 1
  %cond.3 = select i1 %cmp27.3, i8 1, i8 5
  br label %cond.end32.3

cond.end32.3:                                     ; preds = %cond.false22.3, %cond.end32.fold.split.3, %cond.false.3, %for.inc.2
  %cond33.3 = phi i8 [ 2, %for.inc.2 ], [ 6, %cond.false.3 ], [ %cond.3, %cond.false22.3 ], [ 0, %cond.end32.fold.split.3 ]
  store i8 %cond33.3, ptr %add.ptr7.3, align 4
  %arrayidx37.3 = getelementptr inbounds i8, ptr %currMB, i64 367
  %93 = load i8, ptr %arrayidx37.3, align 1
  switch i8 %93, label %if.else.3 [
    i8 0, label %if.then47.3
    i8 11, label %if.then47.3
  ]

if.then47.3:                                      ; preds = %cond.end32.3, %cond.end32.3
  %mv.3 = getelementptr inbounds i8, ptr %add.ptr, i64 84
  store i32 0, ptr %mv.3, align 4
  %arrayidx50.3 = getelementptr inbounds i8, ptr %add.ptr, i64 88
  store i32 0, ptr %arrayidx50.3, align 4
  br label %for.inc.3

if.else.3:                                        ; preds = %cond.end32.3
  %add.3 = or disjoint i32 %mul, 2
  %add57.3 = or disjoint i32 %mul54, 2
  %94 = add i8 %93, -5
  %or.cond.3 = icmp ult i8 %94, 3
  %95 = load ptr, ptr %mv_info253, align 8
  %idxprom71.3 = sext i32 %add57.3 to i64
  %arrayidx72.3 = getelementptr inbounds ptr, ptr %95, i64 %idxprom71.3
  %96 = load ptr, ptr %arrayidx72.3, align 8
  %idxprom73.3 = sext i32 %add.3 to i64
  %mv75.3 = getelementptr inbounds %struct.pic_motion_params, ptr %96, i64 %idxprom73.3, i32 1
  %97 = load i16, ptr %mv75.3, align 8
  %conv77.3 = sext i16 %97 to i32
  br i1 %or.cond.3, label %if.then70.3, label %if.else162.3

if.else162.3:                                     ; preds = %if.else.3
  %mv172.3 = getelementptr inbounds i8, ptr %add.ptr, i64 84
  store i32 %conv77.3, ptr %mv172.3, align 4
  %98 = load ptr, ptr %mv_info253, align 8
  %arrayidx176.3 = getelementptr inbounds ptr, ptr %98, i64 %idxprom71.3
  %99 = load ptr, ptr %arrayidx176.3, align 8
  %mv_y181.3 = getelementptr inbounds %struct.pic_motion_params, ptr %99, i64 %idxprom73.3, i32 1, i64 0, i32 1
  %100 = load i16, ptr %mv_y181.3, align 2
  %conv182.3 = sext i16 %100 to i32
  br label %if.end.3

if.then70.3:                                      ; preds = %if.else.3
  %add81.3 = or disjoint i32 %mul, 3
  %idxprom82.3 = sext i32 %add81.3 to i64
  %mv84.3 = getelementptr inbounds %struct.pic_motion_params, ptr %96, i64 %idxprom82.3, i32 1
  %101 = load i16, ptr %mv84.3, align 8
  %conv87.3 = sext i16 %101 to i32
  %add90.3 = or disjoint i32 %mul54, 3
  %idxprom91.3 = sext i32 %add90.3 to i64
  %arrayidx92.3 = getelementptr inbounds ptr, ptr %95, i64 %idxprom91.3
  %102 = load ptr, ptr %arrayidx92.3, align 8
  %mv95.3 = getelementptr inbounds %struct.pic_motion_params, ptr %102, i64 %idxprom73.3, i32 1
  %103 = load i16, ptr %mv95.3, align 8
  %conv98.3 = sext i16 %103 to i32
  %mv107.3 = getelementptr inbounds %struct.pic_motion_params, ptr %102, i64 %idxprom82.3, i32 1
  %104 = load i16, ptr %mv107.3, align 8
  %conv110.3 = sext i16 %104 to i32
  %add88.3 = add nsw i32 %conv77.3, 2
  %add99.3 = add nsw i32 %add88.3, %conv87.3
  %add111.3 = add nsw i32 %add99.3, %conv98.3
  %add112.3 = add nsw i32 %add111.3, %conv110.3
  %div113.3 = sdiv i32 %add112.3, 4
  %mv114.3 = getelementptr inbounds i8, ptr %add.ptr, i64 84
  store i32 %div113.3, ptr %mv114.3, align 4
  %105 = load ptr, ptr %mv_info253, align 8
  %arrayidx118.3 = getelementptr inbounds ptr, ptr %105, i64 %idxprom71.3
  %106 = load ptr, ptr %arrayidx118.3, align 8
  %mv_y.3 = getelementptr inbounds %struct.pic_motion_params, ptr %106, i64 %idxprom73.3, i32 1, i64 0, i32 1
  %107 = load i16, ptr %mv_y.3, align 2
  %conv123.3 = sext i16 %107 to i32
  %mv_y132.3 = getelementptr inbounds %struct.pic_motion_params, ptr %106, i64 %idxprom82.3, i32 1, i64 0, i32 1
  %108 = load i16, ptr %mv_y132.3, align 2
  %conv133.3 = sext i16 %108 to i32
  %arrayidx138.3 = getelementptr inbounds ptr, ptr %105, i64 %idxprom91.3
  %109 = load ptr, ptr %arrayidx138.3, align 8
  %mv_y143.3 = getelementptr inbounds %struct.pic_motion_params, ptr %109, i64 %idxprom73.3, i32 1, i64 0, i32 1
  %110 = load i16, ptr %mv_y143.3, align 2
  %conv144.3 = sext i16 %110 to i32
  %mv_y155.3 = getelementptr inbounds %struct.pic_motion_params, ptr %109, i64 %idxprom82.3, i32 1, i64 0, i32 1
  %111 = load i16, ptr %mv_y155.3, align 2
  %conv156.3 = sext i16 %111 to i32
  %add134.3 = add nsw i32 %conv123.3, 2
  %add145.3 = add nsw i32 %add134.3, %conv133.3
  %add157.3 = add nsw i32 %add145.3, %conv144.3
  %add158.3 = add nsw i32 %add157.3, %conv156.3
  %div159.3 = sdiv i32 %add158.3, 4
  br label %if.end.3

if.end.3:                                         ; preds = %if.then70.3, %if.else162.3
  %112 = phi i32 [ %conv77.3, %if.else162.3 ], [ %div113.3, %if.then70.3 ]
  %conv182.sink.3 = phi i32 [ %conv182.3, %if.else162.3 ], [ %div159.3, %if.then70.3 ]
  %113 = getelementptr inbounds i8, ptr %add.ptr, i64 88
  store i32 %conv182.sink.3, ptr %113, align 4
  %sub.i.3 = tail call i32 @llvm.abs.i32(i32 %112, i1 true)
  %sub.i522.3 = tail call i32 @llvm.abs.i32(i32 %conv182.sink.3, i1 true)
  %add190.3 = add nuw nsw i32 %sub.i522.3, %sub.i.3
  %114 = load ptr, ptr %currMB, align 8
  %erc_mvperMB.3 = getelementptr inbounds i8, ptr %114, i64 13504
  %115 = load i32, ptr %erc_mvperMB.3, align 8
  %add191.3 = add nsw i32 %add190.3, %115
  store i32 %add191.3, ptr %erc_mvperMB.3, align 8
  %116 = load ptr, ptr %mv_info253, align 8
  %arrayidx194.3 = getelementptr inbounds ptr, ptr %116, i64 %idxprom71.3
  %117 = load ptr, ptr %arrayidx194.3, align 8
  %ref_idx.3 = getelementptr inbounds %struct.pic_motion_params, ptr %117, i64 %idxprom73.3, i32 2
  %118 = load i8, ptr %ref_idx.3, align 8
  %conv198.3 = sext i8 %118 to i32
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.end.3, %if.then47.3
  %.sink.3 = phi i32 [ 0, %if.then47.3 ], [ %conv198.3, %if.end.3 ]
  %arrayidx52.3 = getelementptr inbounds i8, ptr %add.ptr, i64 92
  store i32 %.sink.3, ptr %arrayidx52.3, align 4
  br label %if.end391

cond.false222:                                    ; preds = %for.cond203.preheader
  %119 = load i8, ptr %b8mode223, align 1
  %cmp227 = icmp eq i8 %119, 11
  %cond229 = select i1 %cmp227, i8 6, i8 5
  br label %cond.end230

cond.end230:                                      ; preds = %for.cond203.preheader, %cond.false222
  %cond231 = phi i8 [ %cond229, %cond.false222 ], [ 2, %for.cond203.preheader ]
  store i8 %cond231, ptr %add.ptr, align 4
  %120 = load i16, ptr %mb_type217, align 8
  %cmp236 = icmp eq i16 %120, 10
  br i1 %cmp236, label %if.then245, label %lor.lhs.false238

lor.lhs.false238:                                 ; preds = %cond.end230
  %121 = load i8, ptr %b8mode223, align 1
  %cmp243 = icmp eq i8 %121, 11
  br i1 %cmp243, label %if.then245, label %if.else252

if.then245:                                       ; preds = %lor.lhs.false238, %cond.end230
  %mv246 = getelementptr inbounds i8, ptr %add.ptr, i64 12
  store i32 0, ptr %mv246, align 4
  %arrayidx249 = getelementptr inbounds i8, ptr %add.ptr, i64 16
  store i32 0, ptr %arrayidx249, align 4
  br label %for.inc388

if.else252:                                       ; preds = %lor.lhs.false238
  %122 = load ptr, ptr %mv_info253, align 8
  %idxprom254 = sext i32 %mul211 to i64
  %arrayidx255 = getelementptr inbounds ptr, ptr %122, i64 %idxprom254
  %123 = load ptr, ptr %arrayidx255, align 8
  %idxprom256 = sext i32 %mul207 to i64
  %arrayidx257 = getelementptr inbounds %struct.pic_motion_params, ptr %123, i64 %idxprom256
  %ref_idx258 = getelementptr inbounds i8, ptr %arrayidx257, i64 24
  %124 = load i8, ptr %ref_idx258, align 8
  %.lobit = lshr i8 %124, 7
  %mv269 = getelementptr inbounds i8, ptr %arrayidx257, i64 16
  %idxprom270 = zext nneg i8 %.lobit to i64
  %arrayidx271 = getelementptr inbounds [2 x %struct.MotionVector], ptr %mv269, i64 0, i64 %idxprom270
  %125 = load i16, ptr %arrayidx271, align 4
  %conv273 = sext i16 %125 to i32
  %add277 = or disjoint i32 %mul207, 1
  %idxprom278 = sext i32 %add277 to i64
  %arrayidx282 = getelementptr inbounds %struct.pic_motion_params, ptr %123, i64 %idxprom278, i32 1, i64 %idxprom270
  %126 = load i16, ptr %arrayidx282, align 4
  %conv284 = sext i16 %126 to i32
  %add287 = or disjoint i32 %mul211, 1
  %idxprom288 = sext i32 %add287 to i64
  %arrayidx289 = getelementptr inbounds ptr, ptr %122, i64 %idxprom288
  %127 = load ptr, ptr %arrayidx289, align 8
  %arrayidx294 = getelementptr inbounds %struct.pic_motion_params, ptr %127, i64 %idxprom256, i32 1, i64 %idxprom270
  %128 = load i16, ptr %arrayidx294, align 4
  %conv296 = sext i16 %128 to i32
  %arrayidx307 = getelementptr inbounds %struct.pic_motion_params, ptr %127, i64 %idxprom278, i32 1, i64 %idxprom270
  %129 = load i16, ptr %arrayidx307, align 4
  %conv309 = sext i16 %129 to i32
  %add285 = add nsw i32 %conv273, 2
  %add297 = add nsw i32 %add285, %conv284
  %add310 = add nsw i32 %add297, %conv296
  %add311 = add nsw i32 %add310, %conv309
  %div312 = sdiv i32 %add311, 4
  %mv313 = getelementptr inbounds i8, ptr %add.ptr, i64 12
  store i32 %div312, ptr %mv313, align 4
  %130 = load ptr, ptr %mv_info253, align 8
  %arrayidx317 = getelementptr inbounds ptr, ptr %130, i64 %idxprom254
  %131 = load ptr, ptr %arrayidx317, align 8
  %mv_y323 = getelementptr inbounds %struct.pic_motion_params, ptr %131, i64 %idxprom256, i32 1, i64 %idxprom270, i32 1
  %132 = load i16, ptr %mv_y323, align 2
  %conv324 = sext i16 %132 to i32
  %mv_y334 = getelementptr inbounds %struct.pic_motion_params, ptr %131, i64 %idxprom278, i32 1, i64 %idxprom270, i32 1
  %133 = load i16, ptr %mv_y334, align 2
  %conv335 = sext i16 %133 to i32
  %arrayidx340 = getelementptr inbounds ptr, ptr %130, i64 %idxprom288
  %134 = load ptr, ptr %arrayidx340, align 8
  %mv_y346 = getelementptr inbounds %struct.pic_motion_params, ptr %134, i64 %idxprom256, i32 1, i64 %idxprom270, i32 1
  %135 = load i16, ptr %mv_y346, align 2
  %conv347 = sext i16 %135 to i32
  %mv_y359 = getelementptr inbounds %struct.pic_motion_params, ptr %134, i64 %idxprom278, i32 1, i64 %idxprom270, i32 1
  %136 = load i16, ptr %mv_y359, align 2
  %conv360 = sext i16 %136 to i32
  %add336 = add nsw i32 %conv324, 2
  %add348 = add nsw i32 %add336, %conv335
  %add361 = add nsw i32 %add348, %conv347
  %add362 = add nsw i32 %add361, %conv360
  %div363 = sdiv i32 %add362, 4
  %arrayidx365 = getelementptr inbounds i8, ptr %add.ptr, i64 16
  store i32 %div363, ptr %arrayidx365, align 4
  %sub.i523 = tail call i32 @llvm.abs.i32(i32 %div312, i1 true)
  %sub.i524 = tail call i32 @llvm.abs.i32(i32 %div363, i1 true)
  %137 = load ptr, ptr %currMB, align 8
  %erc_mvperMB374 = getelementptr inbounds i8, ptr %137, i64 13504
  %138 = load i32, ptr %erc_mvperMB374, align 8
  %add372 = add i32 %138, %sub.i523
  %add375 = add i32 %add372, %sub.i524
  store i32 %add375, ptr %erc_mvperMB374, align 8
  %139 = load ptr, ptr %mv_info253, align 8
  %arrayidx378 = getelementptr inbounds ptr, ptr %139, i64 %idxprom254
  %140 = load ptr, ptr %arrayidx378, align 8
  %arrayidx383 = getelementptr inbounds %struct.pic_motion_params, ptr %140, i64 %idxprom256, i32 2, i64 %idxprom270
  %141 = load i8, ptr %arrayidx383, align 1
  %conv384 = sext i8 %141 to i32
  br label %for.inc388

for.inc388:                                       ; preds = %if.then245, %if.else252
  %.sink536 = phi i32 [ 0, %if.then245 ], [ %conv384, %if.else252 ]
  %arrayidx251 = getelementptr inbounds i8, ptr %add.ptr, i64 20
  store i32 %.sink536, ptr %arrayidx251, align 4
  %add210.1 = or disjoint i32 %mul207, 2
  %add.ptr216.1 = getelementptr inbounds i8, ptr %add.ptr, i64 24
  %142 = load i16, ptr %mb_type217, align 8
  %cmp219.1 = icmp eq i16 %142, 10
  br i1 %cmp219.1, label %cond.end230.1, label %cond.false222.1

cond.false222.1:                                  ; preds = %for.inc388
  %arrayidx225.1 = getelementptr inbounds i8, ptr %currMB, i64 365
  %143 = load i8, ptr %arrayidx225.1, align 1
  %cmp227.1 = icmp eq i8 %143, 11
  %cond229.1 = select i1 %cmp227.1, i8 6, i8 5
  br label %cond.end230.1

cond.end230.1:                                    ; preds = %cond.false222.1, %for.inc388
  %cond231.1 = phi i8 [ %cond229.1, %cond.false222.1 ], [ 2, %for.inc388 ]
  store i8 %cond231.1, ptr %add.ptr216.1, align 4
  %144 = load i16, ptr %mb_type217, align 8
  %cmp236.1 = icmp eq i16 %144, 10
  br i1 %cmp236.1, label %if.then245.1, label %lor.lhs.false238.1

lor.lhs.false238.1:                               ; preds = %cond.end230.1
  %arrayidx241.1 = getelementptr inbounds i8, ptr %currMB, i64 365
  %145 = load i8, ptr %arrayidx241.1, align 1
  %cmp243.1 = icmp eq i8 %145, 11
  br i1 %cmp243.1, label %if.then245.1, label %if.else252.1

if.else252.1:                                     ; preds = %lor.lhs.false238.1
  %146 = load ptr, ptr %mv_info253, align 8
  %idxprom254.1 = sext i32 %mul211 to i64
  %arrayidx255.1 = getelementptr inbounds ptr, ptr %146, i64 %idxprom254.1
  %147 = load ptr, ptr %arrayidx255.1, align 8
  %idxprom256.1 = sext i32 %add210.1 to i64
  %arrayidx257.1 = getelementptr inbounds %struct.pic_motion_params, ptr %147, i64 %idxprom256.1
  %ref_idx258.1 = getelementptr inbounds i8, ptr %arrayidx257.1, i64 24
  %148 = load i8, ptr %ref_idx258.1, align 8
  %.lobit.1 = lshr i8 %148, 7
  %mv269.1 = getelementptr inbounds i8, ptr %arrayidx257.1, i64 16
  %idxprom270.1 = zext nneg i8 %.lobit.1 to i64
  %arrayidx271.1 = getelementptr inbounds [2 x %struct.MotionVector], ptr %mv269.1, i64 0, i64 %idxprom270.1
  %149 = load i16, ptr %arrayidx271.1, align 4
  %conv273.1 = sext i16 %149 to i32
  %add277.1 = or disjoint i32 %mul207, 3
  %idxprom278.1 = sext i32 %add277.1 to i64
  %arrayidx282.1 = getelementptr inbounds %struct.pic_motion_params, ptr %147, i64 %idxprom278.1, i32 1, i64 %idxprom270.1
  %150 = load i16, ptr %arrayidx282.1, align 4
  %conv284.1 = sext i16 %150 to i32
  %add287.1 = or disjoint i32 %mul211, 1
  %idxprom288.1 = sext i32 %add287.1 to i64
  %arrayidx289.1 = getelementptr inbounds ptr, ptr %146, i64 %idxprom288.1
  %151 = load ptr, ptr %arrayidx289.1, align 8
  %arrayidx294.1 = getelementptr inbounds %struct.pic_motion_params, ptr %151, i64 %idxprom256.1, i32 1, i64 %idxprom270.1
  %152 = load i16, ptr %arrayidx294.1, align 4
  %conv296.1 = sext i16 %152 to i32
  %arrayidx307.1 = getelementptr inbounds %struct.pic_motion_params, ptr %151, i64 %idxprom278.1, i32 1, i64 %idxprom270.1
  %153 = load i16, ptr %arrayidx307.1, align 4
  %conv309.1 = sext i16 %153 to i32
  %add285.1 = add nsw i32 %conv273.1, 2
  %add297.1 = add nsw i32 %add285.1, %conv284.1
  %add310.1 = add nsw i32 %add297.1, %conv296.1
  %add311.1 = add nsw i32 %add310.1, %conv309.1
  %div312.1 = sdiv i32 %add311.1, 4
  %mv313.1 = getelementptr inbounds i8, ptr %add.ptr, i64 36
  store i32 %div312.1, ptr %mv313.1, align 4
  %154 = load ptr, ptr %mv_info253, align 8
  %arrayidx317.1 = getelementptr inbounds ptr, ptr %154, i64 %idxprom254.1
  %155 = load ptr, ptr %arrayidx317.1, align 8
  %mv_y323.1 = getelementptr inbounds %struct.pic_motion_params, ptr %155, i64 %idxprom256.1, i32 1, i64 %idxprom270.1, i32 1
  %156 = load i16, ptr %mv_y323.1, align 2
  %conv324.1 = sext i16 %156 to i32
  %mv_y334.1 = getelementptr inbounds %struct.pic_motion_params, ptr %155, i64 %idxprom278.1, i32 1, i64 %idxprom270.1, i32 1
  %157 = load i16, ptr %mv_y334.1, align 2
  %conv335.1 = sext i16 %157 to i32
  %arrayidx340.1 = getelementptr inbounds ptr, ptr %154, i64 %idxprom288.1
  %158 = load ptr, ptr %arrayidx340.1, align 8
  %mv_y346.1 = getelementptr inbounds %struct.pic_motion_params, ptr %158, i64 %idxprom256.1, i32 1, i64 %idxprom270.1, i32 1
  %159 = load i16, ptr %mv_y346.1, align 2
  %conv347.1 = sext i16 %159 to i32
  %mv_y359.1 = getelementptr inbounds %struct.pic_motion_params, ptr %158, i64 %idxprom278.1, i32 1, i64 %idxprom270.1, i32 1
  %160 = load i16, ptr %mv_y359.1, align 2
  %conv360.1 = sext i16 %160 to i32
  %add336.1 = add nsw i32 %conv324.1, 2
  %add348.1 = add nsw i32 %add336.1, %conv335.1
  %add361.1 = add nsw i32 %add348.1, %conv347.1
  %add362.1 = add nsw i32 %add361.1, %conv360.1
  %div363.1 = sdiv i32 %add362.1, 4
  %arrayidx365.1 = getelementptr inbounds i8, ptr %add.ptr, i64 40
  store i32 %div363.1, ptr %arrayidx365.1, align 4
  %sub.i523.1 = tail call i32 @llvm.abs.i32(i32 %div312.1, i1 true)
  %sub.i524.1 = tail call i32 @llvm.abs.i32(i32 %div363.1, i1 true)
  %161 = load ptr, ptr %currMB, align 8
  %erc_mvperMB374.1 = getelementptr inbounds i8, ptr %161, i64 13504
  %162 = load i32, ptr %erc_mvperMB374.1, align 8
  %add372.1 = add i32 %162, %sub.i523.1
  %add375.1 = add i32 %add372.1, %sub.i524.1
  store i32 %add375.1, ptr %erc_mvperMB374.1, align 8
  %163 = load ptr, ptr %mv_info253, align 8
  %arrayidx378.1 = getelementptr inbounds ptr, ptr %163, i64 %idxprom254.1
  %164 = load ptr, ptr %arrayidx378.1, align 8
  %arrayidx383.1 = getelementptr inbounds %struct.pic_motion_params, ptr %164, i64 %idxprom256.1, i32 2, i64 %idxprom270.1
  %165 = load i8, ptr %arrayidx383.1, align 1
  %conv384.1 = sext i8 %165 to i32
  br label %for.inc388.1

if.then245.1:                                     ; preds = %lor.lhs.false238.1, %cond.end230.1
  %mv246.1 = getelementptr inbounds i8, ptr %add.ptr, i64 36
  store i32 0, ptr %mv246.1, align 4
  %arrayidx249.1 = getelementptr inbounds i8, ptr %add.ptr, i64 40
  store i32 0, ptr %arrayidx249.1, align 4
  br label %for.inc388.1

for.inc388.1:                                     ; preds = %if.then245.1, %if.else252.1
  %.sink537 = phi i32 [ 0, %if.then245.1 ], [ %conv384.1, %if.else252.1 ]
  %arrayidx251.1 = getelementptr inbounds i8, ptr %add.ptr, i64 44
  store i32 %.sink537, ptr %arrayidx251.1, align 4
  %add214.2 = or disjoint i32 %mul211, 2
  %add.ptr216.2 = getelementptr inbounds i8, ptr %add.ptr, i64 48
  %166 = load i16, ptr %mb_type217, align 8
  %cmp219.2 = icmp eq i16 %166, 10
  br i1 %cmp219.2, label %cond.end230.2, label %cond.false222.2

cond.false222.2:                                  ; preds = %for.inc388.1
  %arrayidx225.2 = getelementptr inbounds i8, ptr %currMB, i64 366
  %167 = load i8, ptr %arrayidx225.2, align 1
  %cmp227.2 = icmp eq i8 %167, 11
  %cond229.2 = select i1 %cmp227.2, i8 6, i8 5
  br label %cond.end230.2

cond.end230.2:                                    ; preds = %cond.false222.2, %for.inc388.1
  %cond231.2 = phi i8 [ %cond229.2, %cond.false222.2 ], [ 2, %for.inc388.1 ]
  store i8 %cond231.2, ptr %add.ptr216.2, align 4
  %168 = load i16, ptr %mb_type217, align 8
  %cmp236.2 = icmp eq i16 %168, 10
  br i1 %cmp236.2, label %if.then245.2, label %lor.lhs.false238.2

lor.lhs.false238.2:                               ; preds = %cond.end230.2
  %arrayidx241.2 = getelementptr inbounds i8, ptr %currMB, i64 366
  %169 = load i8, ptr %arrayidx241.2, align 1
  %cmp243.2 = icmp eq i8 %169, 11
  br i1 %cmp243.2, label %if.then245.2, label %if.else252.2

if.else252.2:                                     ; preds = %lor.lhs.false238.2
  %170 = load ptr, ptr %mv_info253, align 8
  %idxprom254.2 = sext i32 %add214.2 to i64
  %arrayidx255.2 = getelementptr inbounds ptr, ptr %170, i64 %idxprom254.2
  %171 = load ptr, ptr %arrayidx255.2, align 8
  %idxprom256.2 = sext i32 %mul207 to i64
  %arrayidx257.2 = getelementptr inbounds %struct.pic_motion_params, ptr %171, i64 %idxprom256.2
  %ref_idx258.2 = getelementptr inbounds i8, ptr %arrayidx257.2, i64 24
  %172 = load i8, ptr %ref_idx258.2, align 8
  %.lobit.2 = lshr i8 %172, 7
  %mv269.2 = getelementptr inbounds i8, ptr %arrayidx257.2, i64 16
  %idxprom270.2 = zext nneg i8 %.lobit.2 to i64
  %arrayidx271.2 = getelementptr inbounds [2 x %struct.MotionVector], ptr %mv269.2, i64 0, i64 %idxprom270.2
  %173 = load i16, ptr %arrayidx271.2, align 4
  %conv273.2 = sext i16 %173 to i32
  %add277.2 = or disjoint i32 %mul207, 1
  %idxprom278.2 = sext i32 %add277.2 to i64
  %arrayidx282.2 = getelementptr inbounds %struct.pic_motion_params, ptr %171, i64 %idxprom278.2, i32 1, i64 %idxprom270.2
  %174 = load i16, ptr %arrayidx282.2, align 4
  %conv284.2 = sext i16 %174 to i32
  %add287.2 = or disjoint i32 %mul211, 3
  %idxprom288.2 = sext i32 %add287.2 to i64
  %arrayidx289.2 = getelementptr inbounds ptr, ptr %170, i64 %idxprom288.2
  %175 = load ptr, ptr %arrayidx289.2, align 8
  %arrayidx294.2 = getelementptr inbounds %struct.pic_motion_params, ptr %175, i64 %idxprom256.2, i32 1, i64 %idxprom270.2
  %176 = load i16, ptr %arrayidx294.2, align 4
  %conv296.2 = sext i16 %176 to i32
  %arrayidx307.2 = getelementptr inbounds %struct.pic_motion_params, ptr %175, i64 %idxprom278.2, i32 1, i64 %idxprom270.2
  %177 = load i16, ptr %arrayidx307.2, align 4
  %conv309.2 = sext i16 %177 to i32
  %add285.2 = add nsw i32 %conv273.2, 2
  %add297.2 = add nsw i32 %add285.2, %conv284.2
  %add310.2 = add nsw i32 %add297.2, %conv296.2
  %add311.2 = add nsw i32 %add310.2, %conv309.2
  %div312.2 = sdiv i32 %add311.2, 4
  %mv313.2 = getelementptr inbounds i8, ptr %add.ptr, i64 60
  store i32 %div312.2, ptr %mv313.2, align 4
  %178 = load ptr, ptr %mv_info253, align 8
  %arrayidx317.2 = getelementptr inbounds ptr, ptr %178, i64 %idxprom254.2
  %179 = load ptr, ptr %arrayidx317.2, align 8
  %mv_y323.2 = getelementptr inbounds %struct.pic_motion_params, ptr %179, i64 %idxprom256.2, i32 1, i64 %idxprom270.2, i32 1
  %180 = load i16, ptr %mv_y323.2, align 2
  %conv324.2 = sext i16 %180 to i32
  %mv_y334.2 = getelementptr inbounds %struct.pic_motion_params, ptr %179, i64 %idxprom278.2, i32 1, i64 %idxprom270.2, i32 1
  %181 = load i16, ptr %mv_y334.2, align 2
  %conv335.2 = sext i16 %181 to i32
  %arrayidx340.2 = getelementptr inbounds ptr, ptr %178, i64 %idxprom288.2
  %182 = load ptr, ptr %arrayidx340.2, align 8
  %mv_y346.2 = getelementptr inbounds %struct.pic_motion_params, ptr %182, i64 %idxprom256.2, i32 1, i64 %idxprom270.2, i32 1
  %183 = load i16, ptr %mv_y346.2, align 2
  %conv347.2 = sext i16 %183 to i32
  %mv_y359.2 = getelementptr inbounds %struct.pic_motion_params, ptr %182, i64 %idxprom278.2, i32 1, i64 %idxprom270.2, i32 1
  %184 = load i16, ptr %mv_y359.2, align 2
  %conv360.2 = sext i16 %184 to i32
  %add336.2 = add nsw i32 %conv324.2, 2
  %add348.2 = add nsw i32 %add336.2, %conv335.2
  %add361.2 = add nsw i32 %add348.2, %conv347.2
  %add362.2 = add nsw i32 %add361.2, %conv360.2
  %div363.2 = sdiv i32 %add362.2, 4
  %arrayidx365.2 = getelementptr inbounds i8, ptr %add.ptr, i64 64
  store i32 %div363.2, ptr %arrayidx365.2, align 4
  %sub.i523.2 = tail call i32 @llvm.abs.i32(i32 %div312.2, i1 true)
  %sub.i524.2 = tail call i32 @llvm.abs.i32(i32 %div363.2, i1 true)
  %185 = load ptr, ptr %currMB, align 8
  %erc_mvperMB374.2 = getelementptr inbounds i8, ptr %185, i64 13504
  %186 = load i32, ptr %erc_mvperMB374.2, align 8
  %add372.2 = add i32 %186, %sub.i523.2
  %add375.2 = add i32 %add372.2, %sub.i524.2
  store i32 %add375.2, ptr %erc_mvperMB374.2, align 8
  %187 = load ptr, ptr %mv_info253, align 8
  %arrayidx378.2 = getelementptr inbounds ptr, ptr %187, i64 %idxprom254.2
  %188 = load ptr, ptr %arrayidx378.2, align 8
  %arrayidx383.2 = getelementptr inbounds %struct.pic_motion_params, ptr %188, i64 %idxprom256.2, i32 2, i64 %idxprom270.2
  %189 = load i8, ptr %arrayidx383.2, align 1
  %conv384.2 = sext i8 %189 to i32
  br label %for.inc388.2

if.then245.2:                                     ; preds = %lor.lhs.false238.2, %cond.end230.2
  %mv246.2 = getelementptr inbounds i8, ptr %add.ptr, i64 60
  store i32 0, ptr %mv246.2, align 4
  %arrayidx249.2 = getelementptr inbounds i8, ptr %add.ptr, i64 64
  store i32 0, ptr %arrayidx249.2, align 4
  br label %for.inc388.2

for.inc388.2:                                     ; preds = %if.then245.2, %if.else252.2
  %.sink538 = phi i32 [ 0, %if.then245.2 ], [ %conv384.2, %if.else252.2 ]
  %arrayidx251.2 = getelementptr inbounds i8, ptr %add.ptr, i64 68
  store i32 %.sink538, ptr %arrayidx251.2, align 4
  %add.ptr216.3 = getelementptr inbounds i8, ptr %add.ptr, i64 72
  %190 = load i16, ptr %mb_type217, align 8
  %cmp219.3 = icmp eq i16 %190, 10
  br i1 %cmp219.3, label %cond.end230.3, label %cond.false222.3

cond.false222.3:                                  ; preds = %for.inc388.2
  %arrayidx225.3 = getelementptr inbounds i8, ptr %currMB, i64 367
  %191 = load i8, ptr %arrayidx225.3, align 1
  %cmp227.3 = icmp eq i8 %191, 11
  %cond229.3 = select i1 %cmp227.3, i8 6, i8 5
  br label %cond.end230.3

cond.end230.3:                                    ; preds = %cond.false222.3, %for.inc388.2
  %cond231.3 = phi i8 [ %cond229.3, %cond.false222.3 ], [ 2, %for.inc388.2 ]
  store i8 %cond231.3, ptr %add.ptr216.3, align 4
  %192 = load i16, ptr %mb_type217, align 8
  %cmp236.3 = icmp eq i16 %192, 10
  br i1 %cmp236.3, label %if.then245.3, label %lor.lhs.false238.3

lor.lhs.false238.3:                               ; preds = %cond.end230.3
  %arrayidx241.3 = getelementptr inbounds i8, ptr %currMB, i64 367
  %193 = load i8, ptr %arrayidx241.3, align 1
  %cmp243.3 = icmp eq i8 %193, 11
  br i1 %cmp243.3, label %if.then245.3, label %if.else252.3

if.else252.3:                                     ; preds = %lor.lhs.false238.3
  %194 = load ptr, ptr %mv_info253, align 8
  %idxprom254.3 = sext i32 %add214.2 to i64
  %arrayidx255.3 = getelementptr inbounds ptr, ptr %194, i64 %idxprom254.3
  %195 = load ptr, ptr %arrayidx255.3, align 8
  %idxprom256.3 = sext i32 %add210.1 to i64
  %arrayidx257.3 = getelementptr inbounds %struct.pic_motion_params, ptr %195, i64 %idxprom256.3
  %ref_idx258.3 = getelementptr inbounds i8, ptr %arrayidx257.3, i64 24
  %196 = load i8, ptr %ref_idx258.3, align 8
  %.lobit.3 = lshr i8 %196, 7
  %mv269.3 = getelementptr inbounds i8, ptr %arrayidx257.3, i64 16
  %idxprom270.3 = zext nneg i8 %.lobit.3 to i64
  %arrayidx271.3 = getelementptr inbounds [2 x %struct.MotionVector], ptr %mv269.3, i64 0, i64 %idxprom270.3
  %197 = load i16, ptr %arrayidx271.3, align 4
  %conv273.3 = sext i16 %197 to i32
  %add277.3 = or disjoint i32 %mul207, 3
  %idxprom278.3 = sext i32 %add277.3 to i64
  %arrayidx282.3 = getelementptr inbounds %struct.pic_motion_params, ptr %195, i64 %idxprom278.3, i32 1, i64 %idxprom270.3
  %198 = load i16, ptr %arrayidx282.3, align 4
  %conv284.3 = sext i16 %198 to i32
  %add287.3 = or disjoint i32 %mul211, 3
  %idxprom288.3 = sext i32 %add287.3 to i64
  %arrayidx289.3 = getelementptr inbounds ptr, ptr %194, i64 %idxprom288.3
  %199 = load ptr, ptr %arrayidx289.3, align 8
  %arrayidx294.3 = getelementptr inbounds %struct.pic_motion_params, ptr %199, i64 %idxprom256.3, i32 1, i64 %idxprom270.3
  %200 = load i16, ptr %arrayidx294.3, align 4
  %conv296.3 = sext i16 %200 to i32
  %arrayidx307.3 = getelementptr inbounds %struct.pic_motion_params, ptr %199, i64 %idxprom278.3, i32 1, i64 %idxprom270.3
  %201 = load i16, ptr %arrayidx307.3, align 4
  %conv309.3 = sext i16 %201 to i32
  %add285.3 = add nsw i32 %conv273.3, 2
  %add297.3 = add nsw i32 %add285.3, %conv284.3
  %add310.3 = add nsw i32 %add297.3, %conv296.3
  %add311.3 = add nsw i32 %add310.3, %conv309.3
  %div312.3 = sdiv i32 %add311.3, 4
  %mv313.3 = getelementptr inbounds i8, ptr %add.ptr, i64 84
  store i32 %div312.3, ptr %mv313.3, align 4
  %202 = load ptr, ptr %mv_info253, align 8
  %arrayidx317.3 = getelementptr inbounds ptr, ptr %202, i64 %idxprom254.3
  %203 = load ptr, ptr %arrayidx317.3, align 8
  %mv_y323.3 = getelementptr inbounds %struct.pic_motion_params, ptr %203, i64 %idxprom256.3, i32 1, i64 %idxprom270.3, i32 1
  %204 = load i16, ptr %mv_y323.3, align 2
  %conv324.3 = sext i16 %204 to i32
  %mv_y334.3 = getelementptr inbounds %struct.pic_motion_params, ptr %203, i64 %idxprom278.3, i32 1, i64 %idxprom270.3, i32 1
  %205 = load i16, ptr %mv_y334.3, align 2
  %conv335.3 = sext i16 %205 to i32
  %arrayidx340.3 = getelementptr inbounds ptr, ptr %202, i64 %idxprom288.3
  %206 = load ptr, ptr %arrayidx340.3, align 8
  %mv_y346.3 = getelementptr inbounds %struct.pic_motion_params, ptr %206, i64 %idxprom256.3, i32 1, i64 %idxprom270.3, i32 1
  %207 = load i16, ptr %mv_y346.3, align 2
  %conv347.3 = sext i16 %207 to i32
  %mv_y359.3 = getelementptr inbounds %struct.pic_motion_params, ptr %206, i64 %idxprom278.3, i32 1, i64 %idxprom270.3, i32 1
  %208 = load i16, ptr %mv_y359.3, align 2
  %conv360.3 = sext i16 %208 to i32
  %add336.3 = add nsw i32 %conv324.3, 2
  %add348.3 = add nsw i32 %add336.3, %conv335.3
  %add361.3 = add nsw i32 %add348.3, %conv347.3
  %add362.3 = add nsw i32 %add361.3, %conv360.3
  %div363.3 = sdiv i32 %add362.3, 4
  %arrayidx365.3 = getelementptr inbounds i8, ptr %add.ptr, i64 88
  store i32 %div363.3, ptr %arrayidx365.3, align 4
  %sub.i523.3 = tail call i32 @llvm.abs.i32(i32 %div312.3, i1 true)
  %sub.i524.3 = tail call i32 @llvm.abs.i32(i32 %div363.3, i1 true)
  %209 = load ptr, ptr %currMB, align 8
  %erc_mvperMB374.3 = getelementptr inbounds i8, ptr %209, i64 13504
  %210 = load i32, ptr %erc_mvperMB374.3, align 8
  %add372.3 = add i32 %210, %sub.i523.3
  %add375.3 = add i32 %add372.3, %sub.i524.3
  store i32 %add375.3, ptr %erc_mvperMB374.3, align 8
  %211 = load ptr, ptr %mv_info253, align 8
  %arrayidx378.3 = getelementptr inbounds ptr, ptr %211, i64 %idxprom254.3
  %212 = load ptr, ptr %arrayidx378.3, align 8
  %arrayidx383.3 = getelementptr inbounds %struct.pic_motion_params, ptr %212, i64 %idxprom256.3, i32 2, i64 %idxprom270.3
  %213 = load i8, ptr %arrayidx383.3, align 1
  %conv384.3 = sext i8 %213 to i32
  br label %if.end391.sink.split

if.then245.3:                                     ; preds = %lor.lhs.false238.3, %cond.end230.3
  %mv246.3 = getelementptr inbounds i8, ptr %add.ptr, i64 84
  store i32 0, ptr %mv246.3, align 4
  %arrayidx249.3 = getelementptr inbounds i8, ptr %add.ptr, i64 88
  store i32 0, ptr %arrayidx249.3, align 4
  br label %if.end391.sink.split

if.end391.sink.split:                             ; preds = %if.then245.3, %if.else252.3
  %conv384.3.sink = phi i32 [ %conv384.3, %if.else252.3 ], [ 0, %if.then245.3 ]
  %arrayidx386.3 = getelementptr inbounds i8, ptr %add.ptr, i64 92
  store i32 %conv384.3.sink, ptr %arrayidx386.3, align 4
  br label %if.end391

if.end391:                                        ; preds = %for.inc.3, %if.end391.sink.split
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @init_old_slice(ptr nocapture noundef writeonly %p_old_slice) local_unnamed_addr #22 {
entry:
  store i32 0, ptr %p_old_slice, align 4
  %pps_id = getelementptr inbounds i8, ptr %p_old_slice, i64 36
  store i32 2147483647, ptr %pps_id, align 4
  %frame_num = getelementptr inbounds i8, ptr %p_old_slice, i64 4
  store i32 2147483647, ptr %frame_num, align 4
  %nal_ref_idc = getelementptr inbounds i8, ptr %p_old_slice, i64 8
  store i32 2147483647, ptr %nal_ref_idc, align 4
  %idr_flag = getelementptr inbounds i8, ptr %p_old_slice, i64 29
  store i8 0, ptr %idr_flag, align 1
  %pic_oder_cnt_lsb = getelementptr inbounds i8, ptr %p_old_slice, i64 12
  store <4 x i32> <i32 -1, i32 2147483647, i32 2147483647, i32 2147483647>, ptr %pic_oder_cnt_lsb, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @copy_dec_picture_JV(ptr nocapture noundef readonly %p_Vid, ptr nocapture noundef %dst, ptr nocapture noundef readonly %src) local_unnamed_addr #2 {
entry:
  %top_poc = getelementptr inbounds i8, ptr %src, i64 8
  %0 = load i32, ptr %top_poc, align 8
  %top_poc1 = getelementptr inbounds i8, ptr %dst, i64 8
  store i32 %0, ptr %top_poc1, align 8
  %bottom_poc = getelementptr inbounds i8, ptr %src, i64 12
  %1 = load i32, ptr %bottom_poc, align 4
  %bottom_poc2 = getelementptr inbounds i8, ptr %dst, i64 12
  store i32 %1, ptr %bottom_poc2, align 4
  %frame_poc = getelementptr inbounds i8, ptr %src, i64 16
  %2 = load i32, ptr %frame_poc, align 8
  %frame_poc3 = getelementptr inbounds i8, ptr %dst, i64 16
  store i32 %2, ptr %frame_poc3, align 8
  %qp = getelementptr inbounds i8, ptr %src, i64 296
  %3 = load i32, ptr %qp, align 8
  %qp4 = getelementptr inbounds i8, ptr %dst, i64 296
  store i32 %3, ptr %qp4, align 8
  %slice_qp_delta = getelementptr inbounds i8, ptr %src, i64 308
  %4 = load i32, ptr %slice_qp_delta, align 4
  %slice_qp_delta5 = getelementptr inbounds i8, ptr %dst, i64 308
  store i32 %4, ptr %slice_qp_delta5, align 4
  %chroma_qp_offset = getelementptr inbounds i8, ptr %src, i64 300
  %5 = load i32, ptr %chroma_qp_offset, align 4
  %chroma_qp_offset6 = getelementptr inbounds i8, ptr %dst, i64 300
  store i32 %5, ptr %chroma_qp_offset6, align 4
  %arrayidx9 = getelementptr inbounds i8, ptr %src, i64 304
  %6 = load i32, ptr %arrayidx9, align 4
  %arrayidx11 = getelementptr inbounds i8, ptr %dst, i64 304
  store i32 %6, ptr %arrayidx11, align 4
  %poc = getelementptr inbounds i8, ptr %src, i64 4
  %7 = load i32, ptr %poc, align 4
  %poc12 = getelementptr inbounds i8, ptr %dst, i64 4
  store i32 %7, ptr %poc12, align 4
  %slice_type = getelementptr inbounds i8, ptr %src, i64 248
  %8 = load i32, ptr %slice_type, align 8
  %slice_type13 = getelementptr inbounds i8, ptr %dst, i64 248
  store i32 %8, ptr %slice_type13, align 8
  %used_for_reference = getelementptr inbounds i8, ptr %src, i64 44
  %9 = load i32, ptr %used_for_reference, align 4
  %used_for_reference14 = getelementptr inbounds i8, ptr %dst, i64 44
  store i32 %9, ptr %used_for_reference14, align 4
  %idr_flag = getelementptr inbounds i8, ptr %src, i64 252
  %10 = load i32, ptr %idr_flag, align 4
  %idr_flag15 = getelementptr inbounds i8, ptr %dst, i64 252
  store i32 %10, ptr %idr_flag15, align 4
  %no_output_of_prior_pics_flag = getelementptr inbounds i8, ptr %src, i64 256
  %11 = load i32, ptr %no_output_of_prior_pics_flag, align 8
  %no_output_of_prior_pics_flag16 = getelementptr inbounds i8, ptr %dst, i64 256
  store i32 %11, ptr %no_output_of_prior_pics_flag16, align 8
  %long_term_reference_flag = getelementptr inbounds i8, ptr %src, i64 260
  %12 = load i32, ptr %long_term_reference_flag, align 4
  %long_term_reference_flag17 = getelementptr inbounds i8, ptr %dst, i64 260
  store i32 %12, ptr %long_term_reference_flag17, align 4
  %adaptive_ref_pic_buffering_flag = getelementptr inbounds i8, ptr %src, i64 264
  %13 = load i32, ptr %adaptive_ref_pic_buffering_flag, align 8
  %adaptive_ref_pic_buffering_flag18 = getelementptr inbounds i8, ptr %dst, i64 264
  store i32 %13, ptr %adaptive_ref_pic_buffering_flag18, align 8
  %dec_ref_pic_marking_buffer = getelementptr inbounds i8, ptr %src, i64 312
  %14 = load ptr, ptr %dec_ref_pic_marking_buffer, align 8
  %dec_ref_pic_marking_buffer19 = getelementptr inbounds i8, ptr %dst, i64 312
  store ptr %14, ptr %dec_ref_pic_marking_buffer19, align 8
  %mb_aff_frame_flag = getelementptr inbounds i8, ptr %src, i64 100
  %15 = load i32, ptr %mb_aff_frame_flag, align 4
  %mb_aff_frame_flag20 = getelementptr inbounds i8, ptr %dst, i64 100
  store i32 %15, ptr %mb_aff_frame_flag20, align 4
  %PicWidthInMbs = getelementptr inbounds i8, ptr %src, i64 104
  %16 = load i32, ptr %PicWidthInMbs, align 8
  %PicWidthInMbs21 = getelementptr inbounds i8, ptr %dst, i64 104
  store i32 %16, ptr %PicWidthInMbs21, align 8
  %pic_num = getelementptr inbounds i8, ptr %src, i64 28
  %17 = load i32, ptr %pic_num, align 4
  %pic_num22 = getelementptr inbounds i8, ptr %dst, i64 28
  store i32 %17, ptr %pic_num22, align 4
  %frame_num = getelementptr inbounds i8, ptr %src, i64 20
  %18 = load i32, ptr %frame_num, align 4
  %frame_num23 = getelementptr inbounds i8, ptr %dst, i64 20
  store i32 %18, ptr %frame_num23, align 4
  %recovery_frame = getelementptr inbounds i8, ptr %src, i64 24
  %19 = load i32, ptr %recovery_frame, align 8
  %recovery_frame24 = getelementptr inbounds i8, ptr %dst, i64 24
  store i32 %19, ptr %recovery_frame24, align 8
  %coded_frame = getelementptr inbounds i8, ptr %src, i64 96
  %20 = load i32, ptr %coded_frame, align 8
  %coded_frame25 = getelementptr inbounds i8, ptr %dst, i64 96
  store i32 %20, ptr %coded_frame25, align 8
  %chroma_format_idc = getelementptr inbounds i8, ptr %src, i64 268
  %21 = load i32, ptr %chroma_format_idc, align 4
  %chroma_format_idc26 = getelementptr inbounds i8, ptr %dst, i64 268
  store i32 %21, ptr %chroma_format_idc26, align 4
  %frame_mbs_only_flag = getelementptr inbounds i8, ptr %src, i64 272
  %22 = load i32, ptr %frame_mbs_only_flag, align 8
  %frame_mbs_only_flag27 = getelementptr inbounds i8, ptr %dst, i64 272
  store i32 %22, ptr %frame_mbs_only_flag27, align 8
  %frame_cropping_flag = getelementptr inbounds i8, ptr %src, i64 276
  %23 = load i32, ptr %frame_cropping_flag, align 4
  %frame_cropping_flag28 = getelementptr inbounds i8, ptr %dst, i64 276
  store i32 %23, ptr %frame_cropping_flag28, align 4
  %frame_cropping_rect_left_offset = getelementptr inbounds i8, ptr %src, i64 280
  %24 = load i32, ptr %frame_cropping_rect_left_offset, align 8
  %frame_cropping_rect_left_offset29 = getelementptr inbounds i8, ptr %dst, i64 280
  store i32 %24, ptr %frame_cropping_rect_left_offset29, align 8
  %frame_cropping_rect_right_offset = getelementptr inbounds i8, ptr %src, i64 284
  %25 = load i32, ptr %frame_cropping_rect_right_offset, align 4
  %frame_cropping_rect_right_offset30 = getelementptr inbounds i8, ptr %dst, i64 284
  store i32 %25, ptr %frame_cropping_rect_right_offset30, align 4
  %frame_cropping_rect_top_offset = getelementptr inbounds i8, ptr %src, i64 288
  %26 = load i32, ptr %frame_cropping_rect_top_offset, align 8
  %frame_cropping_rect_top_offset31 = getelementptr inbounds i8, ptr %dst, i64 288
  store i32 %26, ptr %frame_cropping_rect_top_offset31, align 8
  %frame_cropping_rect_bottom_offset = getelementptr inbounds i8, ptr %src, i64 292
  %27 = load i32, ptr %frame_cropping_rect_bottom_offset, align 4
  %frame_cropping_rect_bottom_offset32 = getelementptr inbounds i8, ptr %dst, i64 292
  store i32 %27, ptr %frame_cropping_rect_bottom_offset32, align 4
  %seiHasTone_mapping = getelementptr inbounds i8, ptr %src, i64 324
  %28 = load i32, ptr %seiHasTone_mapping, align 4
  %seiHasTone_mapping33 = getelementptr inbounds i8, ptr %dst, i64 324
  store i32 %28, ptr %seiHasTone_mapping33, align 4
  %tone_mapping_model_id = getelementptr inbounds i8, ptr %src, i64 328
  %29 = load i32, ptr %tone_mapping_model_id, align 8
  %tone_mapping_model_id36 = getelementptr inbounds i8, ptr %dst, i64 328
  store i32 %29, ptr %tone_mapping_model_id36, align 8
  %tonemapped_bit_depth = getelementptr inbounds i8, ptr %src, i64 332
  %30 = load i32, ptr %tonemapped_bit_depth, align 4
  %tonemapped_bit_depth37 = getelementptr inbounds i8, ptr %dst, i64 332
  store i32 %30, ptr %tonemapped_bit_depth37, align 4
  %tone_mapping_lut = getelementptr inbounds i8, ptr %src, i64 336
  %31 = load ptr, ptr %tone_mapping_lut, align 8
  %tobool.not = icmp eq ptr %31, null
  br i1 %tobool.not, label %if.end47, label %if.then

if.then:                                          ; preds = %entry
  %seiToneMapping = getelementptr inbounds i8, ptr %p_Vid, i64 856728
  %32 = load ptr, ptr %seiToneMapping, align 8
  %coded_data_bit_depth = getelementptr inbounds i8, ptr %32, i64 8
  %33 = load i8, ptr %coded_data_bit_depth, align 8
  %conv = zext nneg i8 %33 to i32
  %shl = shl nuw i32 1, %conv
  %conv38 = sext i32 %shl to i64
  %mul = shl nsw i64 %conv38, 2
  %call = tail call noalias ptr @malloc(i64 noundef %mul) #30
  %tone_mapping_lut39 = getelementptr inbounds i8, ptr %dst, i64 336
  store ptr %call, ptr %tone_mapping_lut39, align 8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then42, label %if.end

if.then42:                                        ; preds = %if.then
  tail call void @no_mem_exit(ptr noundef nonnull @.str.46) #27
  %.pre = load ptr, ptr %tone_mapping_lut39, align 8
  br label %if.end

if.end:                                           ; preds = %if.then42, %if.then
  %34 = phi ptr [ %.pre, %if.then42 ], [ %call, %if.then ]
  %35 = load ptr, ptr %tone_mapping_lut, align 8
  %mul46 = shl nsw i64 %conv38, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %34, ptr noundef nonnull align 2 dereferenceable(1) %35, i64 %mul46, i1 false)
  br label %if.end47

if.end47:                                         ; preds = %if.end, %entry
  ret void
}

declare void @compute_colocated(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @start_macroblock(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @decode_one_macroblock(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @exit_macroblock(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @GetVOIdx(ptr nocapture noundef readonly %p_Vid, i32 noundef %iViewId) local_unnamed_addr #10 {
entry:
  %active_subset_sps = getelementptr inbounds i8, ptr %p_Vid, i64 699416
  %0 = load ptr, ptr %active_subset_sps, align 8
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.end5, label %if.then

if.then:                                          ; preds = %entry
  %view_id = getelementptr inbounds i8, ptr %0, i64 4136
  %1 = load ptr, ptr %view_id, align 8
  %num_views_minus1 = getelementptr inbounds i8, ptr %0, i64 4132
  %2 = load i32, ptr %num_views_minus1, align 4
  %cmp11 = icmp sgt i32 %2, -1
  br i1 %cmp11, label %for.body, label %if.end5

for.body:                                         ; preds = %if.then, %for.inc
  %iVOIdx.012 = phi i32 [ %dec, %for.inc ], [ %2, %if.then ]
  %idxprom = zext nneg i32 %iVOIdx.012 to i64
  %arrayidx = getelementptr inbounds i32, ptr %1, i64 %idxprom
  %3 = load i32, ptr %arrayidx, align 4
  %cmp3 = icmp eq i32 %3, %iViewId
  br i1 %cmp3, label %if.end5, label %for.inc

for.inc:                                          ; preds = %for.body
  %dec = add nsw i32 %iVOIdx.012, -1
  %cmp = icmp sgt i32 %iVOIdx.012, 0
  br i1 %cmp, label %for.body, label %if.end5

if.end5:                                          ; preds = %for.body, %for.inc, %if.then, %entry
  %iVOIdx.1 = phi i32 [ -1, %entry ], [ %2, %if.then ], [ %iVOIdx.012, %for.body ], [ -1, %for.inc ]
  ret i32 %iVOIdx.1
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_maxViewIdx(ptr nocapture noundef readonly %p_Vid, i32 noundef %view_id, i32 noundef %anchor_pic_flag, i32 noundef %listidx) local_unnamed_addr #10 {
entry:
  %active_subset_sps.i = getelementptr inbounds i8, ptr %p_Vid, i64 699416
  %0 = load ptr, ptr %active_subset_sps.i, align 8
  %tobool.not.i = icmp eq ptr %0, null
  br i1 %tobool.not.i, label %if.end17, label %if.then.i

if.then.i:                                        ; preds = %entry
  %view_id.i = getelementptr inbounds i8, ptr %0, i64 4136
  %1 = load ptr, ptr %view_id.i, align 8
  %num_views_minus1.i = getelementptr inbounds i8, ptr %0, i64 4132
  %2 = load i32, ptr %num_views_minus1.i, align 4
  %cmp11.i = icmp sgt i32 %2, -1
  br i1 %cmp11.i, label %for.body.i, label %if.end17

for.body.i:                                       ; preds = %if.then.i, %for.inc.i
  %iVOIdx.012.i = phi i32 [ %dec.i, %for.inc.i ], [ %2, %if.then.i ]
  %idxprom.i = zext nneg i32 %iVOIdx.012.i to i64
  %arrayidx.i = getelementptr inbounds i32, ptr %1, i64 %idxprom.i
  %3 = load i32, ptr %arrayidx.i, align 4
  %cmp3.i = icmp eq i32 %3, %view_id
  br i1 %cmp3.i, label %if.then, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %dec.i = add nsw i32 %iVOIdx.012.i, -1
  %cmp.i = icmp sgt i32 %iVOIdx.012.i, 0
  br i1 %cmp.i, label %for.body.i, label %if.end17

if.then:                                          ; preds = %for.body.i
  %tobool.not = icmp eq i32 %anchor_pic_flag, 0
  %tobool6.not = icmp eq i32 %listidx, 0
  %. = select i1 %tobool6.not, i64 4144, i64 4160
  %.34 = select i1 %tobool6.not, i64 4176, i64 4192
  %.sink.sink = select i1 %tobool.not, i64 %.34, i64 %.
  %num_anchor_refs_l0 = getelementptr inbounds i8, ptr %0, i64 %.sink.sink
  %.pn = load ptr, ptr %num_anchor_refs_l0, align 8
  %cond.in = getelementptr inbounds i32, ptr %.pn, i64 %idxprom.i
  %cond = load i32, ptr %cond.in, align 4
  br label %if.end17

if.end17:                                         ; preds = %for.inc.i, %if.then, %if.then.i, %entry
  %maxViewIdx.0 = phi i32 [ 0, %entry ], [ 0, %if.then.i ], [ %cond, %if.then ], [ 0, %for.inc.i ]
  ret i32 %maxViewIdx.0
}

declare void @conceal_lost_frames(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @fill_frame_num_gap(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @decode_poc(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @alloc_storable_picture(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @ercReset(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @set_ec_flag(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @get_mb_block_pos_mbaff(i32 noundef, ptr noundef, ptr noundef) #3

declare void @get_mb_block_pos_normal(i32 noundef, ptr noundef, ptr noundef) #3

declare void @getAffNeighbour(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #3

declare void @getNonAffNeighbour(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #3

declare void @update_tone_mapping_sei(ptr noundef) local_unnamed_addr #3

declare void @update_ref_list(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @update_ltref_list(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @init_Deblock(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @log10(double noundef) local_unnamed_addr #23

declare void @get_mb_pos(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #24

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #25

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #25

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #25

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #25

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #25

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #26

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.abs.i8(i8, i1 immarg) #25

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nofree nounwind }
attributes #25 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #26 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #27 = { nounwind }
attributes #28 = { nounwind allocsize(1) }
attributes #29 = { nounwind allocsize(0,1) }
attributes #30 = { nounwind allocsize(0) }
attributes #31 = { nounwind willreturn memory(read) }
attributes #32 = { cold nounwind }

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
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.unroll.disable"}
!10 = distinct !{!10, !6}
!11 = distinct !{!11, !9}
!12 = distinct !{!12, !9}
!13 = distinct !{!13, !9}
!14 = distinct !{!14, !9}
!15 = distinct !{!15, !6, !7}
!16 = distinct !{!16, !9}
!17 = distinct !{!17, !6}
!18 = distinct !{!18, !6, !7}
!19 = distinct !{!19, !9}
!20 = distinct !{!20, !6}
!21 = distinct !{!21, !6, !7}
!22 = distinct !{!22, !6, !7}
!23 = distinct !{!23, !7, !6}
!24 = distinct !{!24, !7, !6}
!25 = distinct !{!25, !6, !7}
!26 = distinct !{!26, !7, !6}
!27 = distinct !{!27, !7, !6}
!28 = distinct !{!28, !6, !7}
