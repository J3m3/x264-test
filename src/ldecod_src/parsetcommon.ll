; ModuleID = 'ldecod_src/parsetcommon.c'
source_filename = "ldecod_src/parsetcommon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"AllocPPS: PPS\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"AllocSPS: SPS\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @AllocPPS() local_unnamed_addr #0 {
entry:
  %call = tail call noalias dereferenceable_or_null(2216) ptr @calloc(i64 noundef 1, i64 noundef 2216) #8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @no_mem_exit(ptr noundef nonnull @.str) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret ptr %call
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #1

declare void @no_mem_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @AllocSPS() local_unnamed_addr #0 {
entry:
  %call = tail call noalias dereferenceable_or_null(4128) ptr @calloc(i64 noundef 1, i64 noundef 4128) #8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @no_mem_exit(ptr noundef nonnull @.str.1) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret ptr %call
}

; Function Attrs: mustprogress nounwind willreturn uwtable
define dso_local void @FreePPS(ptr nocapture noundef %pps) local_unnamed_addr #3 {
entry:
  %slice_group_id = getelementptr inbounds i8, ptr %pps, i64 2160
  %0 = load ptr, ptr %slice_group_id, align 8
  %cmp.not = icmp eq ptr %0, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @free(ptr noundef nonnull %0) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  tail call void @free(ptr noundef nonnull %pps) #9
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local void @FreeSPS(ptr nocapture noundef %sps) local_unnamed_addr #5 {
entry:
  tail call void @free(ptr noundef %sps) #9
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local range(i32 0, 2) i32 @sps_is_equal(ptr nocapture noundef readonly %sps1, ptr nocapture noundef readonly %sps2) local_unnamed_addr #6 {
entry:
  %0 = load i32, ptr %sps1, align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, ptr %sps2, align 4
  %tobool2.not = icmp eq i32 %1, 0
  br i1 %tobool2.not, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %profile_idc = getelementptr inbounds i8, ptr %sps1, i64 4
  %profile_idc3 = getelementptr inbounds i8, ptr %sps2, i64 4
  %2 = load <4 x i32>, ptr %profile_idc, align 4
  %3 = load <4 x i32>, ptr %profile_idc3, align 4
  %level_idc = getelementptr inbounds i8, ptr %sps1, i64 28
  %level_idc16 = getelementptr inbounds i8, ptr %sps2, i64 28
  %4 = load <2 x i32>, ptr %level_idc, align 4
  %5 = load <2 x i32>, ptr %level_idc16, align 4
  %log2_max_frame_num_minus4 = getelementptr inbounds i8, ptr %sps1, i64 2068
  %log2_max_frame_num_minus424 = getelementptr inbounds i8, ptr %sps2, i64 2068
  %6 = load <2 x i32>, ptr %log2_max_frame_num_minus4, align 4
  %7 = load <2 x i32>, ptr %log2_max_frame_num_minus424, align 4
  %8 = shufflevector <4 x i32> %2, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %9 = shufflevector <2 x i32> %4, <2 x i32> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %10 = shufflevector <8 x i32> %8, <8 x i32> %9, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 poison, i32 poison>
  %11 = shufflevector <2 x i32> %6, <2 x i32> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %12 = shufflevector <8 x i32> %10, <8 x i32> %11, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 8, i32 9>
  %13 = shufflevector <4 x i32> %3, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %14 = shufflevector <2 x i32> %5, <2 x i32> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %15 = shufflevector <8 x i32> %13, <8 x i32> %14, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 poison, i32 poison>
  %16 = shufflevector <2 x i32> %7, <2 x i32> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %17 = shufflevector <8 x i32> %15, <8 x i32> %16, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 8, i32 9>
  %18 = icmp ne <8 x i32> %12, %17
  %19 = bitcast <8 x i1> %18 to i8
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %if.end34, label %cleanup

if.end34:                                         ; preds = %if.end
  %21 = extractelement <2 x i32> %6, i64 1
  switch i32 %21, label %if.end76 [
    i32 0, label %if.then38
    i32 1, label %if.then46
  ]

if.then38:                                        ; preds = %if.end34
  %log2_max_pic_order_cnt_lsb_minus4 = getelementptr inbounds i8, ptr %sps1, i64 2076
  %22 = load i32, ptr %log2_max_pic_order_cnt_lsb_minus4, align 4
  %log2_max_pic_order_cnt_lsb_minus439 = getelementptr inbounds i8, ptr %sps2, i64 2076
  %23 = load i32, ptr %log2_max_pic_order_cnt_lsb_minus439, align 4
  %cmp40 = icmp eq i32 %22, %23
  %conv41 = zext i1 %cmp40 to i32
  br label %if.end76

if.then46:                                        ; preds = %if.end34
  %delta_pic_order_always_zero_flag = getelementptr inbounds i8, ptr %sps1, i64 2080
  %delta_pic_order_always_zero_flag47 = getelementptr inbounds i8, ptr %sps2, i64 2080
  %24 = load <4 x i32>, ptr %delta_pic_order_always_zero_flag, align 4
  %25 = load <4 x i32>, ptr %delta_pic_order_always_zero_flag47, align 4
  %26 = icmp ne <4 x i32> %24, %25
  %27 = bitcast <4 x i1> %26 to i4
  %28 = icmp eq i4 %27, 0
  br i1 %28, label %for.cond.preheader, label %cleanup

for.cond.preheader:                               ; preds = %if.then46
  %29 = extractelement <4 x i32> %24, i64 3
  %cmp67261.not = icmp eq i32 %29, 0
  br i1 %cmp67261.not, label %if.end76, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %offset_for_ref_frame = getelementptr inbounds i8, ptr %sps1, i64 2096
  %offset_for_ref_frame69 = getelementptr inbounds i8, ptr %sps2, i64 2096
  %wide.trip.count = zext i32 %29 to i64
  %min.iters.check = icmp ult i32 %29, 16
  br i1 %min.iters.check, label %for.body.preheader, label %vector.ph

vector.ph:                                        ; preds = %for.body.lr.ph
  %n.vec = and i64 %wide.trip.count, 4294967280
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %42, %vector.body ]
  %vec.phi265 = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %43, %vector.body ]
  %vec.phi266 = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %44, %vector.body ]
  %vec.phi267 = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %45, %vector.body ]
  %30 = getelementptr inbounds [256 x i32], ptr %offset_for_ref_frame, i64 0, i64 %index
  %31 = getelementptr inbounds i8, ptr %30, i64 16
  %32 = getelementptr inbounds i8, ptr %30, i64 32
  %33 = getelementptr inbounds i8, ptr %30, i64 48
  %wide.load = load <4 x i32>, ptr %30, align 4
  %wide.load268 = load <4 x i32>, ptr %31, align 4
  %wide.load269 = load <4 x i32>, ptr %32, align 4
  %wide.load270 = load <4 x i32>, ptr %33, align 4
  %34 = getelementptr inbounds [256 x i32], ptr %offset_for_ref_frame69, i64 0, i64 %index
  %35 = getelementptr inbounds i8, ptr %34, i64 16
  %36 = getelementptr inbounds i8, ptr %34, i64 32
  %37 = getelementptr inbounds i8, ptr %34, i64 48
  %wide.load271 = load <4 x i32>, ptr %34, align 4
  %wide.load272 = load <4 x i32>, ptr %35, align 4
  %wide.load273 = load <4 x i32>, ptr %36, align 4
  %wide.load274 = load <4 x i32>, ptr %37, align 4
  %38 = icmp ne <4 x i32> %wide.load, %wide.load271
  %39 = icmp ne <4 x i32> %wide.load268, %wide.load272
  %40 = icmp ne <4 x i32> %wide.load269, %wide.load273
  %41 = icmp ne <4 x i32> %wide.load270, %wide.load274
  %42 = or <4 x i1> %vec.phi, %38
  %43 = or <4 x i1> %vec.phi265, %39
  %44 = or <4 x i1> %vec.phi266, %40
  %45 = or <4 x i1> %vec.phi267, %41
  %index.next = add nuw i64 %index, 16
  %46 = icmp eq i64 %index.next, %n.vec
  br i1 %46, label %middle.block, label %vector.body, !llvm.loop !5

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <4 x i1> %43, %42
  %bin.rdx275 = or <4 x i1> %44, %bin.rdx
  %bin.rdx276 = or <4 x i1> %45, %bin.rdx275
  %bin.rdx276.fr = freeze <4 x i1> %bin.rdx276
  %47 = bitcast <4 x i1> %bin.rdx276.fr to i4
  %.not277 = icmp eq i4 %47, 0
  %rdx.select = zext i1 %.not277 to i32
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %if.end76, label %for.body.preheader

for.body.preheader:                               ; preds = %middle.block, %for.body.lr.ph
  %indvars.iv.ph = phi i64 [ 0, %for.body.lr.ph ], [ %n.vec, %middle.block ]
  %equal.0263.ph = phi i32 [ 1, %for.body.lr.ph ], [ %rdx.select, %middle.block ]
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ %indvars.iv.ph, %for.body.preheader ]
  %equal.0263 = phi i32 [ %and74, %for.body ], [ %equal.0263.ph, %for.body.preheader ]
  %arrayidx = getelementptr inbounds [256 x i32], ptr %offset_for_ref_frame, i64 0, i64 %indvars.iv
  %48 = load i32, ptr %arrayidx, align 4
  %arrayidx71 = getelementptr inbounds [256 x i32], ptr %offset_for_ref_frame69, i64 0, i64 %indvars.iv
  %49 = load i32, ptr %arrayidx71, align 4
  %cmp72 = icmp eq i32 %48, %49
  %and74 = select i1 %cmp72, i32 %equal.0263, i32 0
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %if.end76, label %for.body, !llvm.loop !8

if.end76:                                         ; preds = %for.body, %middle.block, %for.cond.preheader, %if.end34, %if.then38
  %equal.1 = phi i32 [ %conv41, %if.then38 ], [ 1, %if.end34 ], [ 1, %for.cond.preheader ], [ %rdx.select, %middle.block ], [ %and74, %for.body ]
  %num_ref_frames = getelementptr inbounds i8, ptr %sps1, i64 3120
  %50 = load i32, ptr %num_ref_frames, align 4
  %num_ref_frames77 = getelementptr inbounds i8, ptr %sps2, i64 3120
  %51 = load i32, ptr %num_ref_frames77, align 4
  %cmp78 = icmp ne i32 %50, %51
  %gaps_in_frame_num_value_allowed_flag = getelementptr inbounds i8, ptr %sps1, i64 3124
  %gaps_in_frame_num_value_allowed_flag81 = getelementptr inbounds i8, ptr %sps2, i64 3124
  %52 = load <4 x i32>, ptr %gaps_in_frame_num_value_allowed_flag, align 4
  %53 = load <4 x i32>, ptr %gaps_in_frame_num_value_allowed_flag81, align 4
  %54 = icmp ne <4 x i32> %52, %53
  %tobool97.not251 = icmp eq i32 %equal.1, 0
  %55 = freeze <4 x i1> %54
  %56 = bitcast <4 x i1> %55 to i4
  %57 = icmp ne i4 %56, 0
  %cmp78.fr = freeze i1 %cmp78
  %op.rdx = or i1 %57, %cmp78.fr
  %op.rdx278 = select i1 %op.rdx, i1 true, i1 %tobool97.not251
  br i1 %op.rdx278, label %cleanup, label %if.end99

if.end99:                                         ; preds = %if.end76
  %58 = extractelement <4 x i32> %52, i64 3
  %tobool101.not = icmp eq i32 %58, 0
  br i1 %tobool101.not, label %if.then102, label %if.end107

if.then102:                                       ; preds = %if.end99
  %mb_adaptive_frame_field_flag = getelementptr inbounds i8, ptr %sps1, i64 3140
  %59 = load i32, ptr %mb_adaptive_frame_field_flag, align 4
  %mb_adaptive_frame_field_flag103 = getelementptr inbounds i8, ptr %sps2, i64 3140
  %60 = load i32, ptr %mb_adaptive_frame_field_flag103, align 4
  %cmp104 = icmp ne i32 %59, %60
  br label %if.end107

if.end107:                                        ; preds = %if.then102, %if.end99
  %equal.2 = phi i1 [ false, %if.end99 ], [ %cmp104, %if.then102 ]
  %direct_8x8_inference_flag = getelementptr inbounds i8, ptr %sps1, i64 3144
  %61 = load i32, ptr %direct_8x8_inference_flag, align 4
  %direct_8x8_inference_flag108 = getelementptr inbounds i8, ptr %sps2, i64 3144
  %62 = load i32, ptr %direct_8x8_inference_flag108, align 4
  %cmp109 = icmp ne i32 %61, %62
  %frame_cropping_flag = getelementptr inbounds i8, ptr %sps1, i64 3148
  %63 = load i32, ptr %frame_cropping_flag, align 4
  %frame_cropping_flag112 = getelementptr inbounds i8, ptr %sps2, i64 3148
  %64 = load i32, ptr %frame_cropping_flag112, align 4
  %cmp113 = icmp ne i32 %63, %64
  %.not = select i1 %cmp113, i1 true, i1 %cmp109
  %tobool116.not = select i1 %.not, i1 true, i1 %equal.2
  br i1 %tobool116.not, label %cleanup, label %if.end118

if.end118:                                        ; preds = %if.end107
  %tobool120.not = icmp eq i32 %63, 0
  br i1 %tobool120.not, label %if.end138, label %if.then121

if.then121:                                       ; preds = %if.end118
  %frame_cropping_rect_left_offset = getelementptr inbounds i8, ptr %sps1, i64 3152
  %frame_cropping_rect_left_offset122 = getelementptr inbounds i8, ptr %sps2, i64 3152
  %65 = load <4 x i32>, ptr %frame_cropping_rect_left_offset, align 4
  %66 = load <4 x i32>, ptr %frame_cropping_rect_left_offset122, align 4
  %67 = icmp ne <4 x i32> %65, %66
  %68 = bitcast <4 x i1> %67 to i4
  %69 = icmp eq i4 %68, 0
  %and137 = zext i1 %69 to i32
  br label %if.end138

if.end138:                                        ; preds = %if.then121, %if.end118
  %equal.3 = phi i32 [ %and137, %if.then121 ], [ 1, %if.end118 ]
  %vui_parameters_present_flag = getelementptr inbounds i8, ptr %sps1, i64 3168
  %70 = load i32, ptr %vui_parameters_present_flag, align 4
  %vui_parameters_present_flag139 = getelementptr inbounds i8, ptr %sps2, i64 3168
  %71 = load i32, ptr %vui_parameters_present_flag139, align 4
  %cmp140 = icmp eq i32 %70, %71
  %and142 = select i1 %cmp140, i32 %equal.3, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end107, %if.end76, %if.then46, %if.end, %entry, %lor.lhs.false, %if.end138
  %retval.0 = phi i32 [ %and142, %if.end138 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ 0, %if.end ], [ 0, %if.then46 ], [ 0, %if.end76 ], [ 0, %if.end107 ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local range(i32 0, 2) i32 @pps_is_equal(ptr nocapture noundef readonly %pps1, ptr nocapture noundef readonly %pps2) local_unnamed_addr #7 {
entry:
  %0 = load i32, ptr %pps1, align 8
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, ptr %pps2, align 8
  %tobool2.not = icmp eq i32 %1, 0
  br i1 %tobool2.not, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %pic_parameter_set_id = getelementptr inbounds i8, ptr %pps1, i64 4
  %2 = load i32, ptr %pic_parameter_set_id, align 4
  %pic_parameter_set_id3 = getelementptr inbounds i8, ptr %pps2, i64 4
  %3 = load i32, ptr %pic_parameter_set_id3, align 4
  %cmp = icmp eq i32 %2, %3
  %seq_parameter_set_id = getelementptr inbounds i8, ptr %pps1, i64 8
  %seq_parameter_set_id4 = getelementptr inbounds i8, ptr %pps2, i64 8
  %4 = load <2 x i32>, ptr %seq_parameter_set_id, align 8
  %5 = load <2 x i32>, ptr %seq_parameter_set_id4, align 8
  %bottom_field_pic_order_in_frame_present_flag = getelementptr inbounds i8, ptr %pps1, i64 2040
  %bottom_field_pic_order_in_frame_present_flag12 = getelementptr inbounds i8, ptr %pps2, i64 2040
  %6 = load <2 x i32>, ptr %bottom_field_pic_order_in_frame_present_flag, align 8
  %7 = load <2 x i32>, ptr %bottom_field_pic_order_in_frame_present_flag12, align 8
  %8 = shufflevector <2 x i32> %4, <2 x i32> %6, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %9 = shufflevector <2 x i32> %5, <2 x i32> %7, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %10 = icmp ne <4 x i32> %8, %9
  %11 = bitcast <4 x i1> %10 to i4
  %12 = icmp eq i4 %11, 0
  %op.rdx523 = and i1 %12, %cmp
  br i1 %op.rdx523, label %if.end22, label %cleanup

if.end22:                                         ; preds = %if.end
  %13 = extractelement <2 x i32> %6, i64 1
  %cmp24.not = icmp eq i32 %13, 0
  br i1 %cmp24.not, label %if.end130, label %if.then26

if.then26:                                        ; preds = %if.end22
  %slice_group_map_type = getelementptr inbounds i8, ptr %pps1, i64 2048
  %14 = load i32, ptr %slice_group_map_type, align 8
  %slice_group_map_type27 = getelementptr inbounds i8, ptr %pps2, i64 2048
  %15 = load i32, ptr %slice_group_map_type27, align 8
  %cmp28 = icmp eq i32 %14, %15
  br i1 %cmp28, label %if.end33, label %cleanup

if.end33:                                         ; preds = %if.then26
  switch i32 %14, label %if.end130 [
    i32 0, label %for.cond.preheader
    i32 2, label %for.cond51.preheader
    i32 3, label %if.then87
    i32 4, label %if.then87
    i32 5, label %if.then87
    i32 6, label %if.then100
  ]

for.cond51.preheader:                             ; preds = %if.end33
  %top_left = getelementptr inbounds i8, ptr %pps1, i64 2084
  %top_left58 = getelementptr inbounds i8, ptr %pps2, i64 2084
  %bottom_right = getelementptr inbounds i8, ptr %pps1, i64 2116
  %bottom_right66 = getelementptr inbounds i8, ptr %pps2, i64 2116
  %wide.trip.count = zext i32 %13 to i64
  %xtraiter = and i64 %wide.trip.count, 1
  %16 = icmp eq i32 %13, 1
  br i1 %16, label %if.end130.loopexit531.unr-lcssa, label %for.cond51.preheader.new

for.cond51.preheader.new:                         ; preds = %for.cond51.preheader
  %unroll_iter = and i64 %wide.trip.count, 4294967294
  br label %for.body55

for.cond.preheader:                               ; preds = %if.end33
  %run_length_minus1 = getelementptr inbounds i8, ptr %pps1, i64 2052
  %run_length_minus141 = getelementptr inbounds i8, ptr %pps2, i64 2052
  %17 = add i32 %13, 1
  %min.iters.check464 = icmp ult i32 %17, 16
  br i1 %min.iters.check464, label %for.body.preheader, label %vector.ph465

vector.ph465:                                     ; preds = %for.cond.preheader
  %n.vec467 = and i32 %17, -16
  br label %vector.body469

vector.body469:                                   ; preds = %vector.body469, %vector.ph465
  %index470 = phi i32 [ 0, %vector.ph465 ], [ %index.next483, %vector.body469 ]
  %vec.phi471 = phi <4 x i1> [ zeroinitializer, %vector.ph465 ], [ %31, %vector.body469 ]
  %vec.phi472 = phi <4 x i1> [ zeroinitializer, %vector.ph465 ], [ %32, %vector.body469 ]
  %vec.phi473 = phi <4 x i1> [ zeroinitializer, %vector.ph465 ], [ %33, %vector.body469 ]
  %vec.phi474 = phi <4 x i1> [ zeroinitializer, %vector.ph465 ], [ %34, %vector.body469 ]
  %18 = zext i32 %index470 to i64
  %19 = getelementptr inbounds [8 x i32], ptr %run_length_minus1, i64 0, i64 %18
  %20 = getelementptr inbounds i8, ptr %19, i64 16
  %21 = getelementptr inbounds i8, ptr %19, i64 32
  %22 = getelementptr inbounds i8, ptr %19, i64 48
  %wide.load475 = load <4 x i32>, ptr %19, align 4
  %wide.load476 = load <4 x i32>, ptr %20, align 4
  %wide.load477 = load <4 x i32>, ptr %21, align 4
  %wide.load478 = load <4 x i32>, ptr %22, align 4
  %23 = getelementptr inbounds [8 x i32], ptr %run_length_minus141, i64 0, i64 %18
  %24 = getelementptr inbounds i8, ptr %23, i64 16
  %25 = getelementptr inbounds i8, ptr %23, i64 32
  %26 = getelementptr inbounds i8, ptr %23, i64 48
  %wide.load479 = load <4 x i32>, ptr %23, align 4
  %wide.load480 = load <4 x i32>, ptr %24, align 4
  %wide.load481 = load <4 x i32>, ptr %25, align 4
  %wide.load482 = load <4 x i32>, ptr %26, align 4
  %27 = icmp ne <4 x i32> %wide.load475, %wide.load479
  %28 = icmp ne <4 x i32> %wide.load476, %wide.load480
  %29 = icmp ne <4 x i32> %wide.load477, %wide.load481
  %30 = icmp ne <4 x i32> %wide.load478, %wide.load482
  %31 = or <4 x i1> %vec.phi471, %27
  %32 = or <4 x i1> %vec.phi472, %28
  %33 = or <4 x i1> %vec.phi473, %29
  %34 = or <4 x i1> %vec.phi474, %30
  %index.next483 = add nuw i32 %index470, 16
  %35 = icmp eq i32 %index.next483, %n.vec467
  br i1 %35, label %middle.block462, label %vector.body469, !llvm.loop !9

middle.block462:                                  ; preds = %vector.body469
  %bin.rdx484 = or <4 x i1> %32, %31
  %bin.rdx485 = or <4 x i1> %33, %bin.rdx484
  %bin.rdx486 = or <4 x i1> %34, %bin.rdx485
  %bin.rdx486.fr = freeze <4 x i1> %bin.rdx486
  %36 = bitcast <4 x i1> %bin.rdx486.fr to i4
  %.not514 = icmp eq i4 %36, 0
  %rdx.select487 = zext i1 %.not514 to i32
  %cmp.n488 = icmp eq i32 %17, %n.vec467
  br i1 %cmp.n488, label %if.end130, label %for.body.preheader

for.body.preheader:                               ; preds = %middle.block462, %for.cond.preheader
  %equal.0419.ph = phi i32 [ 1, %for.cond.preheader ], [ %rdx.select487, %middle.block462 ]
  %i.0418.ph = phi i32 [ 0, %for.cond.preheader ], [ %n.vec467, %middle.block462 ]
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.body
  %equal.0419 = phi i32 [ %and46, %for.body ], [ %equal.0419.ph, %for.body.preheader ]
  %i.0418 = phi i32 [ %inc, %for.body ], [ %i.0418.ph, %for.body.preheader ]
  %idxprom = zext i32 %i.0418 to i64
  %arrayidx = getelementptr inbounds [8 x i32], ptr %run_length_minus1, i64 0, i64 %idxprom
  %37 = load i32, ptr %arrayidx, align 4
  %arrayidx43 = getelementptr inbounds [8 x i32], ptr %run_length_minus141, i64 0, i64 %idxprom
  %38 = load i32, ptr %arrayidx43, align 4
  %cmp44 = icmp eq i32 %37, %38
  %and46 = select i1 %cmp44, i32 %equal.0419, i32 0
  %inc = add i32 %i.0418, 1
  %cmp39.not = icmp ugt i32 %inc, %13
  br i1 %cmp39.not, label %if.end130, label %for.body, !llvm.loop !10

for.body55:                                       ; preds = %for.body55, %for.cond51.preheader.new
  %indvars.iv = phi i64 [ 0, %for.cond51.preheader.new ], [ %indvars.iv.next.1, %for.body55 ]
  %equal.1417 = phi i32 [ 1, %for.cond51.preheader.new ], [ %and71.1, %for.body55 ]
  %niter = phi i64 [ 0, %for.cond51.preheader.new ], [ %niter.next.1, %for.body55 ]
  %arrayidx57 = getelementptr inbounds [8 x i32], ptr %top_left, i64 0, i64 %indvars.iv
  %39 = load i32, ptr %arrayidx57, align 4
  %arrayidx60 = getelementptr inbounds [8 x i32], ptr %top_left58, i64 0, i64 %indvars.iv
  %40 = load i32, ptr %arrayidx60, align 4
  %cmp61 = icmp eq i32 %39, %40
  %arrayidx65 = getelementptr inbounds [8 x i32], ptr %bottom_right, i64 0, i64 %indvars.iv
  %41 = load i32, ptr %arrayidx65, align 4
  %arrayidx68 = getelementptr inbounds [8 x i32], ptr %bottom_right66, i64 0, i64 %indvars.iv
  %42 = load i32, ptr %arrayidx68, align 4
  %cmp69 = icmp eq i32 %41, %42
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1
  %arrayidx57.1 = getelementptr inbounds [8 x i32], ptr %top_left, i64 0, i64 %indvars.iv.next
  %43 = load i32, ptr %arrayidx57.1, align 4
  %arrayidx60.1 = getelementptr inbounds [8 x i32], ptr %top_left58, i64 0, i64 %indvars.iv.next
  %44 = load i32, ptr %arrayidx60.1, align 4
  %cmp61.1 = icmp eq i32 %43, %44
  %arrayidx65.1 = getelementptr inbounds [8 x i32], ptr %bottom_right, i64 0, i64 %indvars.iv.next
  %45 = load i32, ptr %arrayidx65.1, align 4
  %arrayidx68.1 = getelementptr inbounds [8 x i32], ptr %bottom_right66, i64 0, i64 %indvars.iv.next
  %46 = load i32, ptr %arrayidx68.1, align 4
  %cmp69.1 = icmp eq i32 %45, %46
  %47 = select i1 %cmp69.1, i1 %cmp61.1, i1 false
  %48 = select i1 %47, i1 %cmp69, i1 false
  %49 = select i1 %48, i1 %cmp61, i1 false
  %and71.1 = select i1 %49, i32 %equal.1417, i32 0
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %if.end130.loopexit531.unr-lcssa, label %for.body55

if.then87:                                        ; preds = %if.end33, %if.end33, %if.end33
  %slice_group_change_direction_flag = getelementptr inbounds i8, ptr %pps1, i64 2148
  %slice_group_change_direction_flag88 = getelementptr inbounds i8, ptr %pps2, i64 2148
  %50 = load <2 x i32>, ptr %slice_group_change_direction_flag, align 4
  %51 = load <2 x i32>, ptr %slice_group_change_direction_flag88, align 4
  %52 = icmp eq <2 x i32> %50, %51
  %shift = shufflevector <2 x i1> %52, <2 x i1> poison, <2 x i32> <i32 1, i32 poison>
  %53 = and <2 x i1> %52, %shift
  %and95400 = extractelement <2 x i1> %53, i64 0
  %and95 = zext i1 %and95400 to i32
  br label %if.end130

if.then100:                                       ; preds = %if.end33
  %pic_size_in_map_units_minus1 = getelementptr inbounds i8, ptr %pps1, i64 2156
  %54 = load i32, ptr %pic_size_in_map_units_minus1, align 4
  %pic_size_in_map_units_minus1101 = getelementptr inbounds i8, ptr %pps2, i64 2156
  %55 = load i32, ptr %pic_size_in_map_units_minus1101, align 4
  %cmp102 = icmp eq i32 %54, %55
  br i1 %cmp102, label %for.cond108.preheader, label %cleanup

for.cond108.preheader:                            ; preds = %if.then100
  %slice_group_id = getelementptr inbounds i8, ptr %pps1, i64 2160
  %56 = load ptr, ptr %slice_group_id, align 8
  %slice_group_id116 = getelementptr inbounds i8, ptr %pps2, i64 2160
  %57 = load ptr, ptr %slice_group_id116, align 8
  %58 = add i32 %54, 1
  %min.iters.check = icmp ult i32 %58, 16
  br i1 %min.iters.check, label %for.body112.preheader, label %vector.ph

vector.ph:                                        ; preds = %for.cond108.preheader
  %n.vec = and i32 %58, -16
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %72, %vector.body ]
  %vec.phi449 = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %73, %vector.body ]
  %vec.phi450 = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %74, %vector.body ]
  %vec.phi451 = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %75, %vector.body ]
  %59 = zext i32 %index to i64
  %60 = getelementptr inbounds i8, ptr %56, i64 %59
  %61 = getelementptr inbounds i8, ptr %60, i64 4
  %62 = getelementptr inbounds i8, ptr %60, i64 8
  %63 = getelementptr inbounds i8, ptr %60, i64 12
  %wide.load = load <4 x i8>, ptr %60, align 1
  %wide.load452 = load <4 x i8>, ptr %61, align 1
  %wide.load453 = load <4 x i8>, ptr %62, align 1
  %wide.load454 = load <4 x i8>, ptr %63, align 1
  %64 = getelementptr inbounds i8, ptr %57, i64 %59
  %65 = getelementptr inbounds i8, ptr %64, i64 4
  %66 = getelementptr inbounds i8, ptr %64, i64 8
  %67 = getelementptr inbounds i8, ptr %64, i64 12
  %wide.load455 = load <4 x i8>, ptr %64, align 1
  %wide.load456 = load <4 x i8>, ptr %65, align 1
  %wide.load457 = load <4 x i8>, ptr %66, align 1
  %wide.load458 = load <4 x i8>, ptr %67, align 1
  %68 = icmp ne <4 x i8> %wide.load, %wide.load455
  %69 = icmp ne <4 x i8> %wide.load452, %wide.load456
  %70 = icmp ne <4 x i8> %wide.load453, %wide.load457
  %71 = icmp ne <4 x i8> %wide.load454, %wide.load458
  %72 = or <4 x i1> %vec.phi, %68
  %73 = or <4 x i1> %vec.phi449, %69
  %74 = or <4 x i1> %vec.phi450, %70
  %75 = or <4 x i1> %vec.phi451, %71
  %index.next = add nuw i32 %index, 16
  %76 = icmp eq i32 %index.next, %n.vec
  br i1 %76, label %middle.block, label %vector.body, !llvm.loop !11

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <4 x i1> %73, %72
  %bin.rdx459 = or <4 x i1> %74, %bin.rdx
  %bin.rdx460 = or <4 x i1> %75, %bin.rdx459
  %bin.rdx460.fr = freeze <4 x i1> %bin.rdx460
  %77 = bitcast <4 x i1> %bin.rdx460.fr to i4
  %.not = icmp eq i4 %77, 0
  %rdx.select = zext i1 %.not to i32
  %cmp.n = icmp eq i32 %58, %n.vec
  br i1 %cmp.n, label %if.end130, label %for.body112.preheader

for.body112.preheader:                            ; preds = %middle.block, %for.cond108.preheader
  %equal.2415.ph = phi i32 [ 1, %for.cond108.preheader ], [ %rdx.select, %middle.block ]
  %i.2414.ph = phi i32 [ 0, %for.cond108.preheader ], [ %n.vec, %middle.block ]
  br label %for.body112

for.body112:                                      ; preds = %for.body112.preheader, %for.body112
  %equal.2415 = phi i32 [ %and122, %for.body112 ], [ %equal.2415.ph, %for.body112.preheader ]
  %i.2414 = phi i32 [ %inc124, %for.body112 ], [ %i.2414.ph, %for.body112.preheader ]
  %idxprom113 = zext i32 %i.2414 to i64
  %arrayidx114 = getelementptr inbounds i8, ptr %56, i64 %idxprom113
  %78 = load i8, ptr %arrayidx114, align 1
  %arrayidx118 = getelementptr inbounds i8, ptr %57, i64 %idxprom113
  %79 = load i8, ptr %arrayidx118, align 1
  %cmp120 = icmp eq i8 %78, %79
  %and122 = select i1 %cmp120, i32 %equal.2415, i32 0
  %inc124 = add i32 %i.2414, 1
  %cmp110.not = icmp ugt i32 %inc124, %54
  br i1 %cmp110.not, label %if.end130, label %for.body112, !llvm.loop !12

if.end130.loopexit531.unr-lcssa:                  ; preds = %for.body55, %for.cond51.preheader
  %and71.lcssa.ph = phi i32 [ poison, %for.cond51.preheader ], [ %and71.1, %for.body55 ]
  %indvars.iv.unr = phi i64 [ 0, %for.cond51.preheader ], [ %indvars.iv.next.1, %for.body55 ]
  %equal.1417.unr = phi i32 [ 1, %for.cond51.preheader ], [ %and71.1, %for.body55 ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %if.end130, label %for.body55.epil

for.body55.epil:                                  ; preds = %if.end130.loopexit531.unr-lcssa
  %arrayidx57.epil = getelementptr inbounds [8 x i32], ptr %top_left, i64 0, i64 %indvars.iv.unr
  %80 = load i32, ptr %arrayidx57.epil, align 4
  %arrayidx60.epil = getelementptr inbounds [8 x i32], ptr %top_left58, i64 0, i64 %indvars.iv.unr
  %81 = load i32, ptr %arrayidx60.epil, align 4
  %cmp61.epil = icmp eq i32 %80, %81
  %arrayidx65.epil = getelementptr inbounds [8 x i32], ptr %bottom_right, i64 0, i64 %indvars.iv.unr
  %82 = load i32, ptr %arrayidx65.epil, align 4
  %arrayidx68.epil = getelementptr inbounds [8 x i32], ptr %bottom_right66, i64 0, i64 %indvars.iv.unr
  %83 = load i32, ptr %arrayidx68.epil, align 4
  %cmp69.epil = icmp eq i32 %82, %83
  %84 = select i1 %cmp69.epil, i1 %cmp61.epil, i1 false
  %and71.epil = select i1 %84, i32 %equal.1417.unr, i32 0
  br label %if.end130

if.end130:                                        ; preds = %for.body112, %for.body55.epil, %if.end130.loopexit531.unr-lcssa, %for.body, %middle.block, %middle.block462, %if.end33, %if.then87, %if.end22
  %equal.3 = phi i32 [ %and95, %if.then87 ], [ 1, %if.end22 ], [ 1, %if.end33 ], [ %rdx.select487, %middle.block462 ], [ %rdx.select, %middle.block ], [ %and46, %for.body ], [ %and71.lcssa.ph, %if.end130.loopexit531.unr-lcssa ], [ %and71.epil, %for.body55.epil ], [ %and122, %for.body112 ]
  %num_ref_idx_l0_active_minus1 = getelementptr inbounds i8, ptr %pps1, i64 2168
  %85 = load i32, ptr %num_ref_idx_l0_active_minus1, align 8
  %num_ref_idx_l0_active_minus1131 = getelementptr inbounds i8, ptr %pps2, i64 2168
  %86 = load i32, ptr %num_ref_idx_l0_active_minus1131, align 8
  %cmp132 = icmp ne i32 %85, %86
  %num_ref_idx_l1_active_minus1 = getelementptr inbounds i8, ptr %pps1, i64 2172
  %87 = load i32, ptr %num_ref_idx_l1_active_minus1, align 4
  %num_ref_idx_l1_active_minus1135 = getelementptr inbounds i8, ptr %pps2, i64 2172
  %88 = load i32, ptr %num_ref_idx_l1_active_minus1135, align 4
  %cmp136 = icmp ne i32 %87, %88
  %weighted_pred_flag = getelementptr inbounds i8, ptr %pps1, i64 2176
  %89 = load i32, ptr %weighted_pred_flag, align 8
  %weighted_pred_flag139 = getelementptr inbounds i8, ptr %pps2, i64 2176
  %90 = load i32, ptr %weighted_pred_flag139, align 8
  %cmp140 = icmp ne i32 %89, %90
  %weighted_bipred_idc = getelementptr inbounds i8, ptr %pps1, i64 2180
  %weighted_bipred_idc143 = getelementptr inbounds i8, ptr %pps2, i64 2180
  %91 = load <4 x i32>, ptr %weighted_bipred_idc, align 4
  %92 = load <4 x i32>, ptr %weighted_bipred_idc143, align 4
  %93 = icmp ne <4 x i32> %91, %92
  %deblocking_filter_control_present_flag = getelementptr inbounds i8, ptr %pps1, i64 2200
  %94 = load i32, ptr %deblocking_filter_control_present_flag, align 8
  %deblocking_filter_control_present_flag159 = getelementptr inbounds i8, ptr %pps2, i64 2200
  %95 = load i32, ptr %deblocking_filter_control_present_flag159, align 8
  %cmp160 = icmp ne i32 %94, %95
  %constrained_intra_pred_flag = getelementptr inbounds i8, ptr %pps1, i64 2204
  %96 = load i32, ptr %constrained_intra_pred_flag, align 4
  %constrained_intra_pred_flag163 = getelementptr inbounds i8, ptr %pps2, i64 2204
  %97 = load i32, ptr %constrained_intra_pred_flag163, align 4
  %cmp164 = icmp ne i32 %96, %97
  %redundant_pic_cnt_present_flag = getelementptr inbounds i8, ptr %pps1, i64 2208
  %98 = load i32, ptr %redundant_pic_cnt_present_flag, align 8
  %redundant_pic_cnt_present_flag167 = getelementptr inbounds i8, ptr %pps2, i64 2208
  %99 = load i32, ptr %redundant_pic_cnt_present_flag167, align 8
  %cmp168 = icmp ne i32 %98, %99
  %tobool171.not401 = icmp eq i32 %equal.3, 0
  %100 = freeze <4 x i1> %93
  %101 = bitcast <4 x i1> %100 to i4
  %102 = icmp ne i4 %101, 0
  %cmp168.fr = freeze i1 %cmp168
  %op.rdx = or i1 %cmp168.fr, %102
  %103 = freeze i1 %cmp164
  %104 = freeze i1 %cmp140
  %cmp136.fr = freeze i1 %cmp136
  %op.rdx518 = or i1 %104, %cmp136.fr
  %105 = freeze i1 %cmp132
  %106 = or i1 %op.rdx, %103
  %cmp160.fr = freeze i1 %cmp160
  %op.rdx520 = or i1 %106, %cmp160.fr
  %107 = or i1 %op.rdx518, %105
  %108 = or i1 %op.rdx520, %107
  %op.rdx522 = select i1 %108, i1 true, i1 %tobool171.not401
  br i1 %op.rdx522, label %cleanup, label %if.end173

if.end173:                                        ; preds = %if.end130
  %transform_8x8_mode_flag = getelementptr inbounds i8, ptr %pps1, i64 16
  %109 = load i32, ptr %transform_8x8_mode_flag, align 8
  %transform_8x8_mode_flag174 = getelementptr inbounds i8, ptr %pps2, i64 16
  %110 = load i32, ptr %transform_8x8_mode_flag174, align 8
  %cmp175 = icmp eq i32 %109, %110
  %pic_scaling_matrix_present_flag = getelementptr inbounds i8, ptr %pps1, i64 20
  %111 = load i32, ptr %pic_scaling_matrix_present_flag, align 4
  %pic_scaling_matrix_present_flag178 = getelementptr inbounds i8, ptr %pps2, i64 20
  %112 = load i32, ptr %pic_scaling_matrix_present_flag178, align 4
  %cmp179 = icmp eq i32 %111, %112
  %and181410 = and i1 %cmp175, %cmp179
  %and181 = zext i1 %and181410 to i32
  %tobool183.not = icmp eq i32 %111, 0
  br i1 %tobool183.not, label %if.end251, label %for.cond185.preheader

for.cond185.preheader:                            ; preds = %if.end173
  %shl = shl i32 %109, 1
  %add = add i32 %shl, 6
  %cmp187424.not = icmp eq i32 %add, 0
  br i1 %cmp187424.not, label %if.end251, label %for.body189.lr.ph

for.body189.lr.ph:                                ; preds = %for.cond185.preheader
  %pic_scaling_list_present_flag = getelementptr inbounds i8, ptr %pps1, i64 24
  %pic_scaling_list_present_flag192 = getelementptr inbounds i8, ptr %pps2, i64 24
  %ScalingList8x8 = getelementptr inbounds i8, ptr %pps1, i64 456
  %ScalingList8x8234 = getelementptr inbounds i8, ptr %pps2, i64 456
  %ScalingList4x4 = getelementptr inbounds i8, ptr %pps1, i64 72
  %ScalingList4x4214 = getelementptr inbounds i8, ptr %pps2, i64 72
  %wide.trip.count443 = zext i32 %add to i64
  br label %for.body189

for.body189:                                      ; preds = %for.body189.lr.ph, %for.inc248
  %indvars.iv439 = phi i64 [ 0, %for.body189.lr.ph ], [ %indvars.iv.next440, %for.inc248 ]
  %equal.4426 = phi i32 [ %and181, %for.body189.lr.ph ], [ %equal.7, %for.inc248 ]
  %arrayidx191 = getelementptr inbounds [12 x i32], ptr %pic_scaling_list_present_flag, i64 0, i64 %indvars.iv439
  %113 = load i32, ptr %arrayidx191, align 4
  %arrayidx194 = getelementptr inbounds [12 x i32], ptr %pic_scaling_list_present_flag192, i64 0, i64 %indvars.iv439
  %114 = load i32, ptr %arrayidx194, align 4
  %cmp195 = icmp eq i32 %113, %114
  %115 = and i32 %equal.4426, 1
  %and197 = select i1 %cmp195, i32 %115, i32 0
  %tobool201.not = icmp eq i32 %113, 0
  br i1 %tobool201.not, label %for.inc248, label %if.then202

if.then202:                                       ; preds = %for.body189
  %cmp203 = icmp ult i64 %indvars.iv439, 6
  br i1 %cmp203, label %for.body209.preheader, label %vector.body494

for.body209.preheader:                            ; preds = %if.then202
  %arrayidx213 = getelementptr inbounds [6 x [16 x i32]], ptr %ScalingList4x4, i64 0, i64 %indvars.iv439, i64 0
  %arrayidx218 = getelementptr inbounds [6 x [16 x i32]], ptr %ScalingList4x4214, i64 0, i64 %indvars.iv439, i64 0
  %116 = load <16 x i32>, ptr %arrayidx213, align 4
  %117 = load <16 x i32>, ptr %arrayidx218, align 4
  %118 = icmp eq <16 x i32> %116, %117
  %119 = freeze <16 x i1> %118
  %120 = bitcast <16 x i1> %119 to i16
  %121 = icmp eq i16 %120, -1
  %and221.15 = select i1 %121, i32 %and197, i32 0
  br label %for.inc248

vector.body494:                                   ; preds = %if.then202
  %122 = add nsw i64 %indvars.iv439, -6
  %123 = getelementptr inbounds [6 x [64 x i32]], ptr %ScalingList8x8, i64 0, i64 %122, i64 0
  %124 = getelementptr inbounds i8, ptr %123, i64 16
  %125 = getelementptr inbounds i8, ptr %123, i64 32
  %126 = getelementptr inbounds i8, ptr %123, i64 48
  %wide.load500 = load <4 x i32>, ptr %123, align 4
  %wide.load501 = load <4 x i32>, ptr %124, align 4
  %wide.load502 = load <4 x i32>, ptr %125, align 4
  %wide.load503 = load <4 x i32>, ptr %126, align 4
  %127 = getelementptr inbounds [6 x [64 x i32]], ptr %ScalingList8x8234, i64 0, i64 %122, i64 0
  %128 = getelementptr inbounds i8, ptr %127, i64 16
  %129 = getelementptr inbounds i8, ptr %127, i64 32
  %130 = getelementptr inbounds i8, ptr %127, i64 48
  %wide.load504 = load <4 x i32>, ptr %127, align 4
  %wide.load505 = load <4 x i32>, ptr %128, align 4
  %wide.load506 = load <4 x i32>, ptr %129, align 4
  %wide.load507 = load <4 x i32>, ptr %130, align 4
  %131 = icmp ne <4 x i32> %wide.load500, %wide.load504
  %132 = icmp ne <4 x i32> %wide.load501, %wide.load505
  %133 = icmp ne <4 x i32> %wide.load502, %wide.load506
  %134 = icmp ne <4 x i32> %wide.load503, %wide.load507
  %135 = getelementptr inbounds [6 x [64 x i32]], ptr %ScalingList8x8, i64 0, i64 %122, i64 16
  %136 = getelementptr inbounds i8, ptr %135, i64 16
  %137 = getelementptr inbounds i8, ptr %135, i64 32
  %138 = getelementptr inbounds i8, ptr %135, i64 48
  %wide.load500.1 = load <4 x i32>, ptr %135, align 4
  %wide.load501.1 = load <4 x i32>, ptr %136, align 4
  %wide.load502.1 = load <4 x i32>, ptr %137, align 4
  %wide.load503.1 = load <4 x i32>, ptr %138, align 4
  %139 = getelementptr inbounds [6 x [64 x i32]], ptr %ScalingList8x8234, i64 0, i64 %122, i64 16
  %140 = getelementptr inbounds i8, ptr %139, i64 16
  %141 = getelementptr inbounds i8, ptr %139, i64 32
  %142 = getelementptr inbounds i8, ptr %139, i64 48
  %wide.load504.1 = load <4 x i32>, ptr %139, align 4
  %wide.load505.1 = load <4 x i32>, ptr %140, align 4
  %wide.load506.1 = load <4 x i32>, ptr %141, align 4
  %wide.load507.1 = load <4 x i32>, ptr %142, align 4
  %143 = icmp ne <4 x i32> %wide.load500.1, %wide.load504.1
  %144 = icmp ne <4 x i32> %wide.load501.1, %wide.load505.1
  %145 = icmp ne <4 x i32> %wide.load502.1, %wide.load506.1
  %146 = icmp ne <4 x i32> %wide.load503.1, %wide.load507.1
  %147 = or <4 x i1> %131, %143
  %148 = or <4 x i1> %132, %144
  %149 = or <4 x i1> %133, %145
  %150 = or <4 x i1> %134, %146
  %151 = getelementptr inbounds [6 x [64 x i32]], ptr %ScalingList8x8, i64 0, i64 %122, i64 32
  %152 = getelementptr inbounds i8, ptr %151, i64 16
  %153 = getelementptr inbounds i8, ptr %151, i64 32
  %154 = getelementptr inbounds i8, ptr %151, i64 48
  %wide.load500.2 = load <4 x i32>, ptr %151, align 4
  %wide.load501.2 = load <4 x i32>, ptr %152, align 4
  %wide.load502.2 = load <4 x i32>, ptr %153, align 4
  %wide.load503.2 = load <4 x i32>, ptr %154, align 4
  %155 = getelementptr inbounds [6 x [64 x i32]], ptr %ScalingList8x8234, i64 0, i64 %122, i64 32
  %156 = getelementptr inbounds i8, ptr %155, i64 16
  %157 = getelementptr inbounds i8, ptr %155, i64 32
  %158 = getelementptr inbounds i8, ptr %155, i64 48
  %wide.load504.2 = load <4 x i32>, ptr %155, align 4
  %wide.load505.2 = load <4 x i32>, ptr %156, align 4
  %wide.load506.2 = load <4 x i32>, ptr %157, align 4
  %wide.load507.2 = load <4 x i32>, ptr %158, align 4
  %159 = icmp ne <4 x i32> %wide.load500.2, %wide.load504.2
  %160 = icmp ne <4 x i32> %wide.load501.2, %wide.load505.2
  %161 = icmp ne <4 x i32> %wide.load502.2, %wide.load506.2
  %162 = icmp ne <4 x i32> %wide.load503.2, %wide.load507.2
  %163 = or <4 x i1> %147, %159
  %164 = or <4 x i1> %148, %160
  %165 = or <4 x i1> %149, %161
  %166 = or <4 x i1> %150, %162
  %167 = getelementptr inbounds [6 x [64 x i32]], ptr %ScalingList8x8, i64 0, i64 %122, i64 48
  %168 = getelementptr inbounds i8, ptr %167, i64 16
  %169 = getelementptr inbounds i8, ptr %167, i64 32
  %170 = getelementptr inbounds i8, ptr %167, i64 48
  %wide.load500.3 = load <4 x i32>, ptr %167, align 4
  %wide.load501.3 = load <4 x i32>, ptr %168, align 4
  %wide.load502.3 = load <4 x i32>, ptr %169, align 4
  %wide.load503.3 = load <4 x i32>, ptr %170, align 4
  %171 = getelementptr inbounds [6 x [64 x i32]], ptr %ScalingList8x8234, i64 0, i64 %122, i64 48
  %172 = getelementptr inbounds i8, ptr %171, i64 16
  %173 = getelementptr inbounds i8, ptr %171, i64 32
  %174 = getelementptr inbounds i8, ptr %171, i64 48
  %wide.load504.3 = load <4 x i32>, ptr %171, align 4
  %wide.load505.3 = load <4 x i32>, ptr %172, align 4
  %wide.load506.3 = load <4 x i32>, ptr %173, align 4
  %wide.load507.3 = load <4 x i32>, ptr %174, align 4
  %175 = icmp ne <4 x i32> %wide.load500.3, %wide.load504.3
  %176 = icmp ne <4 x i32> %wide.load501.3, %wide.load505.3
  %177 = icmp ne <4 x i32> %wide.load502.3, %wide.load506.3
  %178 = icmp ne <4 x i32> %wide.load503.3, %wide.load507.3
  %179 = or <4 x i1> %163, %175
  %180 = or <4 x i1> %164, %176
  %181 = or <4 x i1> %165, %177
  %182 = or <4 x i1> %166, %178
  %bin.rdx509 = or <4 x i1> %180, %179
  %bin.rdx510 = or <4 x i1> %181, %bin.rdx509
  %bin.rdx511 = or <4 x i1> %182, %bin.rdx510
  %bin.rdx511.fr = freeze <4 x i1> %bin.rdx511
  %183 = bitcast <4 x i1> %bin.rdx511.fr to i4
  %.not515 = icmp eq i4 %183, 0
  %rdx.select512 = select i1 %.not515, i32 %and197, i32 0
  br label %for.inc248

for.inc248:                                       ; preds = %vector.body494, %for.body209.preheader, %for.body189
  %equal.7 = phi i32 [ %and197, %for.body189 ], [ %and221.15, %for.body209.preheader ], [ %rdx.select512, %vector.body494 ]
  %indvars.iv.next440 = add nuw nsw i64 %indvars.iv439, 1
  %exitcond444.not = icmp eq i64 %indvars.iv.next440, %wide.trip.count443
  br i1 %exitcond444.not, label %if.end251, label %for.body189

if.end251:                                        ; preds = %for.inc248, %for.cond185.preheader, %if.end173
  %equal.8 = phi i32 [ %and181, %if.end173 ], [ %and181, %for.cond185.preheader ], [ %equal.7, %for.inc248 ]
  %second_chroma_qp_index_offset = getelementptr inbounds i8, ptr %pps1, i64 2196
  %184 = load i32, ptr %second_chroma_qp_index_offset, align 4
  %second_chroma_qp_index_offset252 = getelementptr inbounds i8, ptr %pps2, i64 2196
  %185 = load i32, ptr %second_chroma_qp_index_offset252, align 4
  %cmp253 = icmp eq i32 %184, %185
  %and255 = select i1 %cmp253, i32 %equal.8, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end130, %if.then100, %if.then26, %if.end, %entry, %lor.lhs.false, %if.end251
  %retval.0 = phi i32 [ %and255, %if.end251 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ 0, %if.end ], [ 0, %if.then26 ], [ 0, %if.then100 ], [ 0, %if.end130 ]
  ret i32 %retval.0
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind allocsize(0,1) }
attributes #9 = { nounwind }

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
!10 = distinct !{!10, !6}
!11 = distinct !{!11, !6, !7}
!12 = distinct !{!12, !6}
