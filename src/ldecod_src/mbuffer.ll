; ModuleID = 'ldecod_src/mbuffer.c'
source_filename = "ldecod_src/mbuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pic_motion_params = type { [2 x ptr], [2 x %struct.MotionVector], [2 x i8] }
%struct.MotionVector = type { i16, i16 }

@.str = private unnamed_addr constant [16 x i8] c"undefined level\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"max_dec_frame_buffering larger than MaxDpbSize\00", align 1
@.str.2 = private unnamed_addr constant [58 x i8] c"Max. number of reference frames exceeded. Invalid stream.\00", align 1
@.str.3 = private unnamed_addr constant [108 x i8] c"DPB size at specified level is smaller than the specified number of reference frames. This is not allowed.\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"init_dpb: p_Dpb->fs\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"init_dpb: p_Dpb->fs_ref\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"init_dpb: p_Dpb->fs_ltref\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"re_init_dpb: p_Dpb->fs\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"re_init_dpb: p_Dpb->fs_ref\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"re_init_dpb: p_Dpb->fs_ltref\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"alloc_frame_store: f\00", align 1
@.str.11 = private unnamed_addr constant [41 x i8] c"alloc_storable_picture: motion->mb_field\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"alloc_storable_picture: s\00", align 1
@.str.13 = private unnamed_addr constant [36 x i8] c"alloc_storable_picture: s->listX[i]\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"init_lists: fs_list0\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"init_lists: fs_listlt\00", align 1
@.str.16 = private unnamed_addr constant [30 x i8] c"init_lists: fs_listinterview0\00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"init_lists: fs_list1\00", align 1
@.str.18 = private unnamed_addr constant [30 x i8] c"init_lists: fs_listinterview1\00", align 1
@.str.19 = private unnamed_addr constant [42 x i8] c"Invalid remapping_of_pic_nums_idc command\00", align 1
@.str.20 = private unnamed_addr constant [59 x i8] c"duplicate frame_num in short-term reference picture buffer\00", align 1
@.str.21 = private unnamed_addr constant [68 x i8] c"alloc_ref_pic_list_reordering_buffer: reordering_of_pic_nums_idc_l0\00", align 1
@.str.22 = private unnamed_addr constant [65 x i8] c"alloc_ref_pic_list_reordering_buffer: abs_diff_pic_num_minus1_l0\00", align 1
@.str.23 = private unnamed_addr constant [59 x i8] c"alloc_ref_pic_list_reordering_buffer: long_term_pic_idx_l0\00", align 1
@.str.24 = private unnamed_addr constant [66 x i8] c"alloc_ref_pic_list_reordering_buffer: abs_diff_view_idx_minus1_l0\00", align 1
@.str.25 = private unnamed_addr constant [68 x i8] c"alloc_ref_pic_list_reordering_buffer: reordering_of_pic_nums_idc_l1\00", align 1
@.str.26 = private unnamed_addr constant [65 x i8] c"alloc_ref_pic_list_reordering_buffer: abs_diff_pic_num_minus1_l1\00", align 1
@.str.27 = private unnamed_addr constant [59 x i8] c"alloc_ref_pic_list_reordering_buffer: long_term_pic_idx_l1\00", align 1
@.str.28 = private unnamed_addr constant [66 x i8] c"alloc_ref_pic_list_reordering_buffer: abs_diff_view_idx_minus1_l1\00", align 1
@.str.30 = private unnamed_addr constant [38 x i8] c"Error: iVOIdx: %d is not less than 0\0A\00", align 1
@.str.31 = private unnamed_addr constant [69 x i8] c"memory_management_control_operation = 0 not last operation in buffer\00", align 1
@.str.32 = private unnamed_addr constant [54 x i8] c"invalid memory_management_control_operation in buffer\00", align 1
@.str.33 = private unnamed_addr constant [38 x i8] c"field for long term marking not found\00", align 1
@.str.37 = private unnamed_addr constant [42 x i8] c"Cannot determine smallest POC, DPB empty.\00", align 1
@.str.38 = private unnamed_addr constant [25 x i8] c"invalid frame store type\00", align 1
@.str.39 = private unnamed_addr constant [32 x i8] c"Cannot output frame, DPB empty.\00", align 1
@.str.40 = private unnamed_addr constant [31 x i8] c"no frames for output available\00", align 1
@.str.41 = private unnamed_addr constant [38 x i8] c"output POC must be in ascending order\00", align 1
@str = private unnamed_addr constant [48 x i8] c"A gap in frame number is found, try to fill it.\00", align 1
@str.42 = private unnamed_addr constant [57 x i8] c"Warning: reference field for long term marking not found\00", align 1
@str.44 = private unnamed_addr constant [66 x i8] c"Warning: assigning long_term_frame_idx different from other field\00", align 1
@str.45 = private unnamed_addr constant [57 x i8] c"Warning: reference frame for long term marking not found\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @dump_dpb(ptr nocapture noundef readnone %p_Dpb) local_unnamed_addr #0 {
entry:
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @getDpbSize(ptr nocapture noundef readonly %active_sps) local_unnamed_addr #1 {
entry:
  %pic_width_in_mbs_minus1 = getelementptr inbounds i8, ptr %active_sps, i64 3128
  %0 = load i32, ptr %pic_width_in_mbs_minus1, align 4
  %add = add i32 %0, 1
  %pic_height_in_map_units_minus1 = getelementptr inbounds i8, ptr %active_sps, i64 3132
  %1 = load i32, ptr %pic_height_in_map_units_minus1, align 4
  %add1 = add i32 %1, 1
  %mul = mul i32 %add1, %add
  %frame_mbs_only_flag = getelementptr inbounds i8, ptr %active_sps, i64 3136
  %2 = load i32, ptr %frame_mbs_only_flag, align 4
  %tobool.not = icmp eq i32 %2, 0
  %3 = zext i1 %tobool.not to i32
  %mul2 = shl i32 %mul, %3
  %mul3 = mul i32 %mul2, 384
  %level_idc = getelementptr inbounds i8, ptr %active_sps, i64 28
  %4 = load i32, ptr %level_idc, align 4
  switch i32 %4, label %sw.default [
    i32 9, label %sw.epilog
    i32 10, label %sw.epilog
    i32 11, label %sw.bb5
    i32 12, label %sw.bb9
    i32 13, label %sw.bb10
    i32 20, label %sw.bb11
    i32 21, label %sw.bb12
    i32 22, label %sw.bb13
    i32 30, label %sw.bb14
    i32 31, label %sw.bb15
    i32 32, label %sw.bb16
    i32 40, label %sw.bb17
    i32 41, label %sw.bb18
    i32 42, label %sw.bb19
    i32 50, label %sw.bb20
    i32 51, label %sw.bb21
  ]

sw.bb5:                                           ; preds = %entry
  %profile_idc = getelementptr inbounds i8, ptr %active_sps, i64 4
  %5 = load i32, ptr %profile_idc, align 4
  %cmp = icmp ugt i32 %5, 99
  %cmp7 = icmp eq i32 %5, 44
  %or.cond = or i1 %cmp, %cmp7
  br i1 %or.cond, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %sw.bb5
  %constrained_set3_flag = getelementptr inbounds i8, ptr %active_sps, i64 20
  %6 = load i32, ptr %constrained_set3_flag, align 4
  %cmp8 = icmp eq i32 %6, 1
  br i1 %cmp8, label %sw.epilog, label %if.else

if.else:                                          ; preds = %land.lhs.true, %sw.bb5
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  br label %sw.epilog

sw.bb12:                                          ; preds = %entry
  br label %sw.epilog

sw.bb13:                                          ; preds = %entry
  br label %sw.epilog

sw.bb14:                                          ; preds = %entry
  br label %sw.epilog

sw.bb15:                                          ; preds = %entry
  br label %sw.epilog

sw.bb16:                                          ; preds = %entry
  br label %sw.epilog

sw.bb17:                                          ; preds = %entry
  br label %sw.epilog

sw.bb18:                                          ; preds = %entry
  br label %sw.epilog

sw.bb19:                                          ; preds = %entry
  br label %sw.epilog

sw.bb20:                                          ; preds = %entry
  br label %sw.epilog

sw.bb21:                                          ; preds = %entry
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  tail call void @error(ptr noundef nonnull @.str, i32 noundef 500) #20
  br label %sw.epilog

sw.epilog:                                        ; preds = %land.lhs.true, %entry, %entry, %if.else, %sw.default, %sw.bb21, %sw.bb20, %sw.bb19, %sw.bb18, %sw.bb17, %sw.bb16, %sw.bb15, %sw.bb14, %sw.bb13, %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb9
  %size.0 = phi i32 [ 0, %sw.default ], [ 70778880, %sw.bb21 ], [ 42393600, %sw.bb20 ], [ 13369344, %sw.bb19 ], [ 12582912, %sw.bb18 ], [ 12582912, %sw.bb17 ], [ 7864320, %sw.bb16 ], [ 6912000, %sw.bb15 ], [ 3110400, %sw.bb14 ], [ 3110400, %sw.bb13 ], [ 1824768, %sw.bb12 ], [ 912384, %sw.bb11 ], [ 912384, %sw.bb10 ], [ 912384, %sw.bb9 ], [ 345600, %if.else ], [ 152064, %entry ], [ 152064, %entry ], [ 152064, %land.lhs.true ]
  %div = sdiv i32 %size.0, %mul3
  %cond.i = tail call noundef i32 @llvm.smin.i32(i32 %div, i32 16)
  %vui_parameters_present_flag = getelementptr inbounds i8, ptr %active_sps, i64 3168
  %7 = load i32, ptr %vui_parameters_present_flag, align 4
  %tobool22.not = icmp eq i32 %7, 0
  br i1 %tobool22.not, label %if.end33, label %land.lhs.true23

land.lhs.true23:                                  ; preds = %sw.epilog
  %bitstream_restriction_flag = getelementptr inbounds i8, ptr %active_sps, i64 4088
  %8 = load i32, ptr %bitstream_restriction_flag, align 4
  %tobool24.not = icmp eq i32 %8, 0
  br i1 %tobool24.not, label %if.end33, label %if.then25

if.then25:                                        ; preds = %land.lhs.true23
  %max_dec_frame_buffering = getelementptr inbounds i8, ptr %active_sps, i64 4116
  %9 = load i32, ptr %max_dec_frame_buffering, align 4
  %cmp27 = icmp sgt i32 %9, %cond.i
  br i1 %cmp27, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.then25
  tail call void @error(ptr noundef nonnull @.str.1, i32 noundef 500) #20
  %.pre = load i32, ptr %max_dec_frame_buffering, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %if.then25
  %10 = phi i32 [ %.pre, %if.then28 ], [ %9, %if.then25 ]
  %cond.i47 = tail call noundef i32 @llvm.smax.i32(i32 %10, i32 1)
  br label %if.end33

if.end33:                                         ; preds = %if.end29, %land.lhs.true23, %sw.epilog
  %size.1 = phi i32 [ %cond.i47, %if.end29 ], [ %cond.i, %land.lhs.true23 ], [ %cond.i, %sw.epilog ]
  ret i32 %size.1
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare void @error(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local void @check_num_ref(ptr nocapture noundef readonly %p_Dpb) local_unnamed_addr #1 {
entry:
  %ltref_frames_in_buffer = getelementptr inbounds i8, ptr %p_Dpb, i64 52
  %0 = load i32, ptr %ltref_frames_in_buffer, align 4
  %ref_frames_in_buffer = getelementptr inbounds i8, ptr %p_Dpb, i64 48
  %1 = load i32, ptr %ref_frames_in_buffer, align 8
  %add = add i32 %1, %0
  %num_ref_frames = getelementptr inbounds i8, ptr %p_Dpb, i64 4164
  %2 = load i32, ptr %num_ref_frames, align 4
  %cond.i = tail call noundef i32 @llvm.smax.i32(i32 %2, i32 1)
  %cmp = icmp sgt i32 %add, %cond.i
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @error(ptr noundef nonnull @.str.2, i32 noundef 500) #20
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @init_dpb(ptr noundef %p_Vid, ptr nocapture noundef %p_Dpb) local_unnamed_addr #1 {
entry:
  %active_sps1 = getelementptr inbounds i8, ptr %p_Vid, i64 16
  %0 = load ptr, ptr %active_sps1, align 8
  store ptr %p_Vid, ptr %p_Dpb, align 8
  %init_done = getelementptr inbounds i8, ptr %p_Dpb, i64 4160
  %1 = load i32, ptr %init_done, align 8
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @free_dpb(ptr noundef nonnull %p_Dpb)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %profile_idc = getelementptr inbounds i8, ptr %p_Vid, i64 849084
  %2 = load i32, ptr %profile_idc, align 4
  switch i32 %2, label %if.else [
    i32 118, label %if.then5
    i32 128, label %if.then5
  ]

if.then5:                                         ; preds = %if.end, %if.end
  %call = tail call i32 @GetMaxDecFrameBuffering(ptr noundef nonnull %p_Vid)
  %add = add nuw nsw i32 %call, 2
  br label %if.end8

if.else:                                          ; preds = %if.end
  %call6 = tail call i32 @getDpbSize(ptr noundef %0)
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then5
  %call6.sink = phi i32 [ %call6, %if.else ], [ %add, %if.then5 ]
  %size7 = getelementptr inbounds i8, ptr %p_Dpb, i64 40
  store i32 %call6.sink, ptr %size7, align 8
  %profile_idc9 = getelementptr inbounds i8, ptr %0, i64 4
  %3 = load i32, ptr %profile_idc9, align 4
  switch i32 %3, label %if.end18 [
    i32 118, label %if.then14
    i32 128, label %if.then14
  ]

if.then14:                                        ; preds = %if.end8, %if.end8
  %size15 = getelementptr inbounds i8, ptr %p_Dpb, i64 40
  %shl = shl i32 %call6.sink, 1
  %add16 = add i32 %shl, 2
  store i32 %add16, ptr %size15, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.end8, %if.then14
  %4 = phi i32 [ %call6.sink, %if.end8 ], [ %add16, %if.then14 ]
  %num_ref_frames = getelementptr inbounds i8, ptr %0, i64 3120
  %5 = load i32, ptr %num_ref_frames, align 4
  %num_ref_frames19 = getelementptr inbounds i8, ptr %p_Dpb, i64 4164
  store i32 %5, ptr %num_ref_frames19, align 4
  %max_dec_frame_buffering = getelementptr inbounds i8, ptr %0, i64 4124
  %6 = load i32, ptr %max_dec_frame_buffering, align 4
  %cmp21 = icmp ult i32 %6, %5
  br i1 %cmp21, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.end18
  tail call void @error(ptr noundef nonnull @.str.3, i32 noundef 1000) #20
  %size24.phi.trans.insert = getelementptr inbounds i8, ptr %p_Dpb, i64 40
  %.pre = load i32, ptr %size24.phi.trans.insert, align 8
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %if.end18
  %7 = phi i32 [ %.pre, %if.then22 ], [ %4, %if.end18 ]
  %used_size = getelementptr inbounds i8, ptr %p_Dpb, i64 44
  store i32 0, ptr %used_size, align 4
  %last_picture = getelementptr inbounds i8, ptr %p_Dpb, i64 4168
  store ptr null, ptr %last_picture, align 8
  %ref_frames_in_buffer = getelementptr inbounds i8, ptr %p_Dpb, i64 48
  store i32 0, ptr %ref_frames_in_buffer, align 8
  %ltref_frames_in_buffer = getelementptr inbounds i8, ptr %p_Dpb, i64 52
  store i32 0, ptr %ltref_frames_in_buffer, align 4
  %size24 = getelementptr inbounds i8, ptr %p_Dpb, i64 40
  %conv = zext i32 %7 to i64
  %call25 = tail call noalias ptr @calloc(i64 noundef %conv, i64 noundef 8) #21
  %fs = getelementptr inbounds i8, ptr %p_Dpb, i64 16
  store ptr %call25, ptr %fs, align 8
  %cmp27 = icmp eq ptr %call25, null
  br i1 %cmp27, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.end23
  tail call void @no_mem_exit(ptr noundef nonnull @.str.4) #20
  %.pre167 = load i32, ptr %size24, align 8
  %.pre168 = zext i32 %.pre167 to i64
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %if.end23
  %conv32.pre-phi = phi i64 [ %.pre168, %if.then29 ], [ %conv, %if.end23 ]
  %8 = phi i32 [ %.pre167, %if.then29 ], [ %7, %if.end23 ]
  %call33 = tail call noalias ptr @calloc(i64 noundef %conv32.pre-phi, i64 noundef 8) #21
  %fs_ref = getelementptr inbounds i8, ptr %p_Dpb, i64 24
  store ptr %call33, ptr %fs_ref, align 8
  %cmp35 = icmp eq ptr %call33, null
  br i1 %cmp35, label %if.then37, label %if.end38

if.then37:                                        ; preds = %if.end30
  tail call void @no_mem_exit(ptr noundef nonnull @.str.5) #20
  %.pre165 = load i32, ptr %size24, align 8
  %.pre169 = zext i32 %.pre165 to i64
  br label %if.end38

if.end38:                                         ; preds = %if.then37, %if.end30
  %conv40.pre-phi = phi i64 [ %.pre169, %if.then37 ], [ %conv32.pre-phi, %if.end30 ]
  %9 = phi i32 [ %.pre165, %if.then37 ], [ %8, %if.end30 ]
  %call41 = tail call noalias ptr @calloc(i64 noundef %conv40.pre-phi, i64 noundef 8) #21
  %fs_ltref = getelementptr inbounds i8, ptr %p_Dpb, i64 32
  store ptr %call41, ptr %fs_ltref, align 8
  %cmp43 = icmp eq ptr %call41, null
  br i1 %cmp43, label %if.then45, label %if.end46

if.then45:                                        ; preds = %if.end38
  tail call void @no_mem_exit(ptr noundef nonnull @.str.6) #20
  %.pre166 = load i32, ptr %size24, align 8
  br label %if.end46

if.end46:                                         ; preds = %if.then45, %if.end38
  %10 = phi i32 [ %.pre166, %if.then45 ], [ %9, %if.end38 ]
  %cmp48162.not = icmp eq i32 %10, 0
  br i1 %cmp48162.not, label %for.end, label %for.body

for.body:                                         ; preds = %if.end46, %alloc_frame_store.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %alloc_frame_store.exit ], [ 0, %if.end46 ]
  %call.i = tail call noalias dereferenceable_or_null(96) ptr @calloc(i64 noundef 1, i64 noundef 96) #21
  %cmp.i = icmp eq ptr %call.i, null
  br i1 %cmp.i, label %if.then.i, label %alloc_frame_store.exit

if.then.i:                                        ; preds = %for.body
  tail call void @no_mem_exit(ptr noundef nonnull @.str.10) #20
  br label %alloc_frame_store.exit

alloc_frame_store.exit:                           ; preds = %for.body, %if.then.i
  %11 = load ptr, ptr %fs, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %11, i64 %indvars.iv
  store ptr %call.i, ptr %arrayidx, align 8
  %12 = load ptr, ptr %fs_ref, align 8
  %arrayidx54 = getelementptr inbounds ptr, ptr %12, i64 %indvars.iv
  store ptr null, ptr %arrayidx54, align 8
  %13 = load ptr, ptr %fs_ltref, align 8
  %arrayidx57 = getelementptr inbounds ptr, ptr %13, i64 %indvars.iv
  store ptr null, ptr %arrayidx57, align 8
  %14 = load ptr, ptr %fs, align 8
  %arrayidx60 = getelementptr inbounds ptr, ptr %14, i64 %indvars.iv
  %15 = load ptr, ptr %arrayidx60, align 8
  %view_id = getelementptr inbounds i8, ptr %15, i64 72
  store i32 -1, ptr %view_id, align 8
  %16 = load ptr, ptr %fs, align 8
  %arrayidx63 = getelementptr inbounds ptr, ptr %16, i64 %indvars.iv
  %17 = load ptr, ptr %arrayidx63, align 8
  %arrayidx64 = getelementptr inbounds i8, ptr %17, i64 80
  store i32 0, ptr %arrayidx64, align 4
  %18 = load ptr, ptr %fs, align 8
  %arrayidx67 = getelementptr inbounds ptr, ptr %18, i64 %indvars.iv
  %19 = load ptr, ptr %arrayidx67, align 8
  %inter_view_flag68 = getelementptr inbounds i8, ptr %19, i64 76
  store i32 0, ptr %inter_view_flag68, align 4
  %20 = load ptr, ptr %fs, align 8
  %arrayidx72 = getelementptr inbounds ptr, ptr %20, i64 %indvars.iv
  %21 = load ptr, ptr %arrayidx72, align 8
  %arrayidx73 = getelementptr inbounds i8, ptr %21, i64 88
  store i32 0, ptr %arrayidx73, align 4
  %22 = load ptr, ptr %fs, align 8
  %arrayidx76 = getelementptr inbounds ptr, ptr %22, i64 %indvars.iv
  %23 = load ptr, ptr %arrayidx76, align 8
  %anchor_pic_flag77 = getelementptr inbounds i8, ptr %23, i64 84
  store i32 0, ptr %anchor_pic_flag77, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %24 = load i32, ptr %size24, align 8
  %25 = zext i32 %24 to i64
  %cmp48 = icmp ult i64 %indvars.iv.next, %25
  br i1 %cmp48, label %for.body, label %for.end

for.end:                                          ; preds = %alloc_frame_store.exit, %if.end46
  %width = getelementptr inbounds i8, ptr %p_Vid, i64 848780
  %26 = load i32, ptr %width, align 4
  %height = getelementptr inbounds i8, ptr %p_Vid, i64 848784
  %27 = load i32, ptr %height, align 8
  %width_cr = getelementptr inbounds i8, ptr %p_Vid, i64 848788
  %28 = load i32, ptr %width_cr, align 4
  %height_cr = getelementptr inbounds i8, ptr %p_Vid, i64 848792
  %29 = load i32, ptr %height_cr, align 8
  %call79 = tail call ptr @alloc_storable_picture(ptr noundef %p_Vid, i32 noundef 0, i32 noundef %26, i32 noundef %27, i32 noundef %28, i32 noundef %29)
  %no_reference_picture = getelementptr inbounds i8, ptr %p_Vid, i64 856488
  store ptr %call79, ptr %no_reference_picture, align 8
  %top_field = getelementptr inbounds i8, ptr %call79, i64 224
  store ptr %call79, ptr %top_field, align 8
  %30 = load ptr, ptr %no_reference_picture, align 8
  %bottom_field = getelementptr inbounds i8, ptr %30, i64 232
  store ptr %30, ptr %bottom_field, align 8
  %frame = getelementptr inbounds i8, ptr %30, i64 240
  store ptr %30, ptr %frame, align 8
  %last_output_poc = getelementptr inbounds i8, ptr %p_Dpb, i64 56
  store i32 -2147483648, ptr %last_output_poc, align 8
  %last_output_view_id = getelementptr inbounds i8, ptr %p_Dpb, i64 60
  store i32 -1, ptr %last_output_view_id, align 4
  %last_has_mmco_5 = getelementptr inbounds i8, ptr %p_Vid, i64 849028
  store i32 0, ptr %last_has_mmco_5, align 4
  store i32 1, ptr %init_done, align 8
  %conceal_mode = getelementptr inbounds i8, ptr %p_Vid, i64 849240
  %31 = load i32, ptr %conceal_mode, align 8
  %cmp87.not = icmp eq i32 %31, 0
  br i1 %cmp87.not, label %if.end91, label %if.then89

if.then89:                                        ; preds = %for.end
  %call.i158 = tail call noalias dereferenceable_or_null(96) ptr @calloc(i64 noundef 1, i64 noundef 96) #21
  %cmp.i159 = icmp eq ptr %call.i158, null
  br i1 %cmp.i159, label %if.then.i160, label %alloc_frame_store.exit161

if.then.i160:                                     ; preds = %if.then89
  tail call void @no_mem_exit(ptr noundef nonnull @.str.10) #20
  br label %alloc_frame_store.exit161

alloc_frame_store.exit161:                        ; preds = %if.then89, %if.then.i160
  %last_out_fs = getelementptr inbounds i8, ptr %p_Vid, i64 856048
  store ptr %call.i158, ptr %last_out_fs, align 8
  br label %if.end91

if.end91:                                         ; preds = %alloc_frame_store.exit161, %for.end
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @free_dpb(ptr nocapture noundef %p_Dpb) local_unnamed_addr #1 {
entry:
  %0 = load ptr, ptr %p_Dpb, align 8
  %fs = getelementptr inbounds i8, ptr %p_Dpb, i64 16
  %1 = load ptr, ptr %fs, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %size = getelementptr inbounds i8, ptr %p_Dpb, i64 40
  %2 = load i32, ptr %size, align 8
  %cmp48.not = icmp eq i32 %2, 0
  br i1 %cmp48.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond.preheader, %free_frame_store.exit
  %3 = phi i32 [ %9, %free_frame_store.exit ], [ %2, %for.cond.preheader ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %free_frame_store.exit ], [ 0, %for.cond.preheader ]
  %4 = load ptr, ptr %fs, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %4, i64 %indvars.iv
  %5 = load ptr, ptr %arrayidx, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %free_frame_store.exit, label %if.then.i

if.then.i:                                        ; preds = %for.body
  %frame.i = getelementptr inbounds i8, ptr %5, i64 48
  %6 = load ptr, ptr %frame.i, align 8
  %tobool1.not.i = icmp eq ptr %6, null
  br i1 %tobool1.not.i, label %if.end.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.then.i
  tail call void @free_storable_picture(ptr noundef nonnull %6)
  store ptr null, ptr %frame.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then2.i, %if.then.i
  %top_field.i = getelementptr inbounds i8, ptr %5, i64 56
  %7 = load ptr, ptr %top_field.i, align 8
  %tobool5.not.i = icmp eq ptr %7, null
  br i1 %tobool5.not.i, label %if.end9.i, label %if.then6.i

if.then6.i:                                       ; preds = %if.end.i
  tail call void @free_storable_picture(ptr noundef nonnull %7)
  store ptr null, ptr %top_field.i, align 8
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then6.i, %if.end.i
  %bottom_field.i = getelementptr inbounds i8, ptr %5, i64 64
  %8 = load ptr, ptr %bottom_field.i, align 8
  %tobool10.not.i = icmp eq ptr %8, null
  br i1 %tobool10.not.i, label %if.end14.i, label %if.then11.i

if.then11.i:                                      ; preds = %if.end9.i
  tail call void @free_storable_picture(ptr noundef nonnull %8)
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then11.i, %if.end9.i
  tail call void @free(ptr noundef nonnull %5) #20
  %.pre = load i32, ptr %size, align 8
  br label %free_frame_store.exit

free_frame_store.exit:                            ; preds = %for.body, %if.end14.i
  %9 = phi i32 [ %3, %for.body ], [ %.pre, %if.end14.i ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %10 = zext i32 %9 to i64
  %cmp = icmp ult i64 %indvars.iv.next, %10
  br i1 %cmp, label %for.body, label %for.end.loopexit

for.end.loopexit:                                 ; preds = %free_frame_store.exit
  %.pre51 = load ptr, ptr %fs, align 8
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %for.cond.preheader
  %11 = phi ptr [ %.pre51, %for.end.loopexit ], [ %1, %for.cond.preheader ]
  tail call void @free(ptr noundef %11) #20
  store ptr null, ptr %fs, align 8
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  %fs_ref = getelementptr inbounds i8, ptr %p_Dpb, i64 24
  %12 = load ptr, ptr %fs_ref, align 8
  %tobool5.not = icmp eq ptr %12, null
  br i1 %tobool5.not, label %if.end8, label %if.then6

if.then6:                                         ; preds = %if.end
  tail call void @free(ptr noundef nonnull %12) #20
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end
  %fs_ltref = getelementptr inbounds i8, ptr %p_Dpb, i64 32
  %13 = load ptr, ptr %fs_ltref, align 8
  %tobool9.not = icmp eq ptr %13, null
  br i1 %tobool9.not, label %if.end12, label %if.then10

if.then10:                                        ; preds = %if.end8
  tail call void @free(ptr noundef nonnull %13) #20
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end8
  %last_output_poc = getelementptr inbounds i8, ptr %p_Dpb, i64 56
  store i32 -2147483648, ptr %last_output_poc, align 8
  %last_output_view_id = getelementptr inbounds i8, ptr %p_Dpb, i64 60
  store i32 -1, ptr %last_output_view_id, align 4
  %init_done = getelementptr inbounds i8, ptr %p_Dpb, i64 4160
  store i32 0, ptr %init_done, align 8
  %conceal_mode = getelementptr inbounds i8, ptr %0, i64 849240
  %14 = load i32, ptr %conceal_mode, align 8
  %cmp13.not = icmp eq i32 %14, 0
  br i1 %cmp13.not, label %if.end15, label %if.then14

if.then14:                                        ; preds = %if.end12
  %last_out_fs = getelementptr inbounds i8, ptr %0, i64 856048
  %15 = load ptr, ptr %last_out_fs, align 8
  %tobool.not.i33 = icmp eq ptr %15, null
  br i1 %tobool.not.i33, label %if.end15, label %if.then.i34

if.then.i34:                                      ; preds = %if.then14
  %frame.i35 = getelementptr inbounds i8, ptr %15, i64 48
  %16 = load ptr, ptr %frame.i35, align 8
  %tobool1.not.i36 = icmp eq ptr %16, null
  br i1 %tobool1.not.i36, label %if.end.i38, label %if.then2.i37

if.then2.i37:                                     ; preds = %if.then.i34
  tail call void @free_storable_picture(ptr noundef nonnull %16)
  store ptr null, ptr %frame.i35, align 8
  br label %if.end.i38

if.end.i38:                                       ; preds = %if.then2.i37, %if.then.i34
  %top_field.i39 = getelementptr inbounds i8, ptr %15, i64 56
  %17 = load ptr, ptr %top_field.i39, align 8
  %tobool5.not.i40 = icmp eq ptr %17, null
  br i1 %tobool5.not.i40, label %if.end9.i42, label %if.then6.i41

if.then6.i41:                                     ; preds = %if.end.i38
  tail call void @free_storable_picture(ptr noundef nonnull %17)
  store ptr null, ptr %top_field.i39, align 8
  br label %if.end9.i42

if.end9.i42:                                      ; preds = %if.then6.i41, %if.end.i38
  %bottom_field.i43 = getelementptr inbounds i8, ptr %15, i64 64
  %18 = load ptr, ptr %bottom_field.i43, align 8
  %tobool10.not.i44 = icmp eq ptr %18, null
  br i1 %tobool10.not.i44, label %if.end14.i46, label %if.then11.i45

if.then11.i45:                                    ; preds = %if.end9.i42
  tail call void @free_storable_picture(ptr noundef nonnull %18)
  br label %if.end14.i46

if.end14.i46:                                     ; preds = %if.then11.i45, %if.end9.i42
  tail call void @free(ptr noundef nonnull %15) #20
  br label %if.end15

if.end15:                                         ; preds = %if.end14.i46, %if.then14, %if.end12
  %no_reference_picture = getelementptr inbounds i8, ptr %0, i64 856488
  %19 = load ptr, ptr %no_reference_picture, align 8
  tail call void @free_storable_picture(ptr noundef %19)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, -2147483648) i32 @GetMaxDecFrameBuffering(ptr nocapture noundef readonly %p_Vid) local_unnamed_addr #1 {
entry:
  %SubsetSeqParSet = getelementptr inbounds i8, ptr %p_Vid, i64 699424
  %SeqParSet = getelementptr inbounds i8, ptr %p_Vid, i64 24
  br label %for.body

for.body:                                         ; preds = %entry, %if.end46
  %curr_sps.088 = phi ptr [ %SeqParSet, %entry ], [ %incdec.ptr47, %if.end46 ]
  %curr_subset_sps.087 = phi ptr [ %SubsetSeqParSet, %entry ], [ %incdec.ptr, %if.end46 ]
  %iMax_2.086 = phi i32 [ 0, %entry ], [ %iMax_2.1, %if.end46 ]
  %iMax_1.085 = phi i32 [ 0, %entry ], [ %iMax_1.1, %if.end46 ]
  %i.084 = phi i32 [ 0, %entry ], [ %inc, %if.end46 ]
  %Valid = getelementptr inbounds i8, ptr %curr_subset_sps.087, i64 4268
  %0 = load i32, ptr %Valid, align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end22, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %seq_parameter_set_id = getelementptr inbounds i8, ptr %curr_subset_sps.087, i64 32
  %1 = load i32, ptr %seq_parameter_set_id, align 8
  %cmp2 = icmp ult i32 %1, 32
  br i1 %cmp2, label %if.then, label %if.end22

if.then:                                          ; preds = %land.lhs.true
  %max_dec_frame_buffering = getelementptr inbounds i8, ptr %curr_subset_sps.087, i64 4124
  %2 = load i32, ptr %max_dec_frame_buffering, align 4
  %vui_parameters_present_flag = getelementptr inbounds i8, ptr %curr_subset_sps.087, i64 3168
  %3 = load i32, ptr %vui_parameters_present_flag, align 8
  %tobool5.not = icmp eq i32 %3, 0
  br i1 %tobool5.not, label %if.end18, label %land.lhs.true6

land.lhs.true6:                                   ; preds = %if.then
  %bitstream_restriction_flag = getelementptr inbounds i8, ptr %curr_subset_sps.087, i64 4088
  %4 = load i32, ptr %bitstream_restriction_flag, align 4
  %tobool8.not = icmp eq i32 %4, 0
  br i1 %tobool8.not, label %if.end18, label %if.then9

if.then9:                                         ; preds = %land.lhs.true6
  %max_dec_frame_buffering12 = getelementptr inbounds i8, ptr %curr_subset_sps.087, i64 4116
  %5 = load i32, ptr %max_dec_frame_buffering12, align 4
  %cmp13 = icmp sgt i32 %5, %2
  br i1 %cmp13, label %if.then14, label %if.end

if.then14:                                        ; preds = %if.then9
  tail call void @error(ptr noundef nonnull @.str.1, i32 noundef 500) #20
  %.pre = load i32, ptr %max_dec_frame_buffering12, align 4
  br label %if.end

if.end:                                           ; preds = %if.then14, %if.then9
  %6 = phi i32 [ %.pre, %if.then14 ], [ %5, %if.then9 ]
  %cond.i = tail call noundef i32 @llvm.smax.i32(i32 %6, i32 1)
  br label %if.end18

if.end18:                                         ; preds = %if.end, %land.lhs.true6, %if.then
  %j.0 = phi i32 [ %cond.i, %if.end ], [ %2, %land.lhs.true6 ], [ %2, %if.then ]
  %spec.select = tail call i32 @llvm.smax.i32(i32 %j.0, i32 %iMax_2.086)
  br label %if.end22

if.end22:                                         ; preds = %if.end18, %land.lhs.true, %for.body
  %iMax_2.1 = phi i32 [ %iMax_2.086, %land.lhs.true ], [ %iMax_2.086, %for.body ], [ %spec.select, %if.end18 ]
  %7 = load i32, ptr %curr_sps.088, align 4
  %tobool24.not = icmp eq i32 %7, 0
  br i1 %tobool24.not, label %if.end46, label %if.then25

if.then25:                                        ; preds = %if.end22
  %max_dec_frame_buffering26 = getelementptr inbounds i8, ptr %curr_sps.088, i64 4124
  %8 = load i32, ptr %max_dec_frame_buffering26, align 4
  %vui_parameters_present_flag27 = getelementptr inbounds i8, ptr %curr_sps.088, i64 3168
  %9 = load i32, ptr %vui_parameters_present_flag27, align 4
  %tobool28.not = icmp eq i32 %9, 0
  br i1 %tobool28.not, label %if.end42, label %land.lhs.true29

land.lhs.true29:                                  ; preds = %if.then25
  %bitstream_restriction_flag31 = getelementptr inbounds i8, ptr %curr_sps.088, i64 4088
  %10 = load i32, ptr %bitstream_restriction_flag31, align 4
  %tobool32.not = icmp eq i32 %10, 0
  br i1 %tobool32.not, label %if.end42, label %if.then33

if.then33:                                        ; preds = %land.lhs.true29
  %max_dec_frame_buffering35 = getelementptr inbounds i8, ptr %curr_sps.088, i64 4116
  %11 = load i32, ptr %max_dec_frame_buffering35, align 4
  %cmp36 = icmp sgt i32 %11, %8
  br i1 %cmp36, label %if.then37, label %if.end38

if.then37:                                        ; preds = %if.then33
  tail call void @error(ptr noundef nonnull @.str.1, i32 noundef 500) #20
  %.pre89 = load i32, ptr %max_dec_frame_buffering35, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.then37, %if.then33
  %12 = phi i32 [ %.pre89, %if.then37 ], [ %11, %if.then33 ]
  %cond.i83 = tail call noundef i32 @llvm.smax.i32(i32 %12, i32 1)
  br label %if.end42

if.end42:                                         ; preds = %if.end38, %land.lhs.true29, %if.then25
  %j.1 = phi i32 [ %cond.i83, %if.end38 ], [ %8, %land.lhs.true29 ], [ %8, %if.then25 ]
  %spec.select82 = tail call i32 @llvm.smax.i32(i32 %j.1, i32 %iMax_1.085)
  br label %if.end46

if.end46:                                         ; preds = %if.end42, %if.end22
  %iMax_1.1 = phi i32 [ %iMax_1.085, %if.end22 ], [ %spec.select82, %if.end42 ]
  %incdec.ptr = getelementptr inbounds i8, ptr %curr_subset_sps.087, i64 4664
  %incdec.ptr47 = getelementptr inbounds i8, ptr %curr_sps.088, i64 4128
  %inc = add nuw nsw i32 %i.084, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %if.end46
  %cmp48 = icmp sgt i32 %iMax_1.1, 0
  %cmp50 = icmp sgt i32 %iMax_2.1, 0
  %or.cond = select i1 %cmp48, i1 %cmp50, i1 false
  %add = add nuw nsw i32 %iMax_2.1, %iMax_1.1
  %cond.v = select i1 %cmp48, i32 %iMax_1.1, i32 %iMax_2.1
  %cond = shl nuw nsw i32 %cond.v, 1
  %iMax.0 = select i1 %or.cond, i32 %add, i32 %cond
  ret i32 %iMax.0
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #4

declare void @no_mem_exit(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @alloc_frame_store() local_unnamed_addr #1 {
entry:
  %call = tail call noalias dereferenceable_or_null(96) ptr @calloc(i64 noundef 1, i64 noundef 96) #21
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @no_mem_exit(ptr noundef nonnull @.str.10) #20
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret ptr %call
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @alloc_storable_picture(ptr nocapture noundef readonly %p_Vid, i32 noundef %structure, i32 noundef %size_x, i32 noundef %size_y, i32 noundef %size_x_cr, i32 noundef %size_y_cr) local_unnamed_addr #1 {
entry:
  %active_sps1 = getelementptr inbounds i8, ptr %p_Vid, i64 16
  %0 = load ptr, ptr %active_sps1, align 8
  %call = tail call noalias dereferenceable_or_null(416) ptr @calloc(i64 noundef 1, i64 noundef 416) #21
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @no_mem_exit(ptr noundef nonnull @.str.12) #20
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %cmp2 = icmp ne i32 %structure, 0
  br i1 %cmp2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %div = sdiv i32 %size_y, 2
  %div4 = sdiv i32 %size_y_cr, 2
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end
  %size_y_cr.addr.0 = phi i32 [ %div4, %if.then3 ], [ %size_y_cr, %if.end ]
  %size_y.addr.0 = phi i32 [ %div, %if.then3 ], [ %size_y, %if.end ]
  %mul = mul nsw i32 %size_y.addr.0, %size_x
  %div6 = sdiv i32 %mul, 256
  %PicSizeInMbs = getelementptr inbounds i8, ptr %call, i64 108
  store i32 %div6, ptr %PicSizeInMbs, align 4
  %imgUV = getelementptr inbounds i8, ptr %call, i64 136
  store ptr null, ptr %imgUV, align 8
  %imgY = getelementptr inbounds i8, ptr %call, i64 128
  %iLumaPadY = getelementptr inbounds i8, ptr %p_Vid, i64 856844
  %1 = load i32, ptr %iLumaPadY, align 4
  %iLumaPadX = getelementptr inbounds i8, ptr %p_Vid, i64 856840
  %2 = load i32, ptr %iLumaPadX, align 8
  %call7 = tail call i32 @get_mem2DpelWithPad(ptr noundef nonnull %imgY, i32 noundef %size_y.addr.0, i32 noundef %size_x, i32 noundef %1, i32 noundef %2) #20
  %3 = load i32, ptr %iLumaPadX, align 8
  %mul9 = shl nsw i32 %3, 1
  %add = add nsw i32 %mul9, %size_x
  %iLumaStride = getelementptr inbounds i8, ptr %call, i64 356
  store i32 %add, ptr %iLumaStride, align 4
  %4 = load i32, ptr %iLumaPadY, align 4
  %mul11 = shl nsw i32 %4, 1
  %add12 = add nsw i32 %mul11, %size_y.addr.0
  %iLumaExpandedHeight = getelementptr inbounds i8, ptr %call, i64 364
  store i32 %add12, ptr %iLumaExpandedHeight, align 4
  %chroma_format_idc = getelementptr inbounds i8, ptr %0, i64 36
  %5 = load i32, ptr %chroma_format_idc, align 4
  %cmp13.not = icmp eq i32 %5, 0
  br i1 %cmp13.not, label %if.end17, label %if.then14

if.then14:                                        ; preds = %if.end5
  %iChromaPadY = getelementptr inbounds i8, ptr %p_Vid, i64 856852
  %6 = load i32, ptr %iChromaPadY, align 4
  %iChromaPadX = getelementptr inbounds i8, ptr %p_Vid, i64 856848
  %7 = load i32, ptr %iChromaPadX, align 8
  %call16 = tail call i32 @get_mem3DpelWithPad(ptr noundef nonnull %imgUV, i32 noundef 2, i32 noundef %size_y_cr.addr.0, i32 noundef %size_x_cr, i32 noundef %6, i32 noundef %7) #20
  %.pre = load i32, ptr %iLumaPadY, align 4
  %.pre194 = load i32, ptr %iLumaPadX, align 8
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %if.end5
  %8 = phi i32 [ %.pre194, %if.then14 ], [ %3, %if.end5 ]
  %9 = phi i32 [ %.pre, %if.then14 ], [ %4, %if.end5 ]
  %iChromaPadX18 = getelementptr inbounds i8, ptr %p_Vid, i64 856848
  %10 = load i32, ptr %iChromaPadX18, align 8
  %mul19 = shl nsw i32 %10, 1
  %add20 = add nsw i32 %mul19, %size_x_cr
  %iChromaStride = getelementptr inbounds i8, ptr %call, i64 360
  store i32 %add20, ptr %iChromaStride, align 8
  %iChromaPadY21 = getelementptr inbounds i8, ptr %p_Vid, i64 856852
  %11 = load i32, ptr %iChromaPadY21, align 4
  %mul22 = shl nsw i32 %11, 1
  %add23 = add nsw i32 %mul22, %size_y_cr.addr.0
  %iChromaExpandedHeight = getelementptr inbounds i8, ptr %call, i64 368
  store i32 %add23, ptr %iChromaExpandedHeight, align 8
  %iLumaPadY25 = getelementptr inbounds i8, ptr %call, i64 112
  store i32 %9, ptr %iLumaPadY25, align 8
  %iLumaPadX27 = getelementptr inbounds i8, ptr %call, i64 116
  store i32 %8, ptr %iLumaPadX27, align 4
  %iChromaPadY29 = getelementptr inbounds i8, ptr %call, i64 120
  store i32 %11, ptr %iChromaPadY29, align 8
  %iChromaPadX31 = getelementptr inbounds i8, ptr %call, i64 124
  store i32 %10, ptr %iChromaPadX31, align 4
  %separate_colour_plane_flag = getelementptr inbounds i8, ptr %p_Vid, i64 849280
  %12 = load i32, ptr %separate_colour_plane_flag, align 8
  %separate_colour_plane_flag32 = getelementptr inbounds i8, ptr %call, i64 56
  store i32 %12, ptr %separate_colour_plane_flag32, align 8
  %slice_id = getelementptr inbounds i8, ptr %call, i64 216
  %div33 = sdiv i32 %size_y.addr.0, 16
  %div34 = sdiv i32 %size_x, 16
  %call35 = tail call i32 @get_mem2Dshort(ptr noundef nonnull %slice_id, i32 noundef %div33, i32 noundef %div34) #20
  %mv_info = getelementptr inbounds i8, ptr %call, i64 152
  %div36 = sdiv i32 %size_y.addr.0, 4
  %div37 = sdiv i32 %size_x, 4
  %call38 = tail call i32 @get_mem2Dmp(ptr noundef nonnull %mv_info, i32 noundef %div36, i32 noundef %div37) #20
  %motion = getelementptr inbounds i8, ptr %call, i64 184
  %mul.i = mul nsw i32 %div36, %div37
  %conv.i = sext i32 %mul.i to i64
  %call.i = tail call noalias ptr @calloc(i64 noundef %conv.i, i64 noundef 1) #21
  store ptr %call.i, ptr %motion, align 8
  %cmp.i = icmp eq ptr %call.i, null
  br i1 %cmp.i, label %if.then.i, label %alloc_pic_motion.exit

if.then.i:                                        ; preds = %if.end17
  tail call void @no_mem_exit(ptr noundef nonnull @.str.11) #20
  br label %alloc_pic_motion.exit

alloc_pic_motion.exit:                            ; preds = %if.end17, %if.then.i
  %13 = load i32, ptr %separate_colour_plane_flag, align 8
  %cmp42.not = icmp eq i32 %13, 0
  br i1 %cmp42.not, label %if.end52, label %for.cond.preheader

for.cond.preheader:                               ; preds = %alloc_pic_motion.exit
  %JVmv_info = getelementptr inbounds i8, ptr %call, i64 160
  %JVmotion = getelementptr inbounds i8, ptr %call, i64 192
  %call47 = tail call i32 @get_mem2Dmp(ptr noundef nonnull %JVmv_info, i32 noundef %div36, i32 noundef %div37) #20
  %call.i186 = tail call noalias ptr @calloc(i64 noundef %conv.i, i64 noundef 1) #21
  store ptr %call.i186, ptr %JVmotion, align 8
  %cmp.i187 = icmp eq ptr %call.i186, null
  br i1 %cmp.i187, label %if.then.i188, label %alloc_pic_motion.exit189

if.then.i188:                                     ; preds = %for.cond.preheader
  tail call void @no_mem_exit(ptr noundef nonnull @.str.11) #20
  br label %alloc_pic_motion.exit189

alloc_pic_motion.exit189:                         ; preds = %for.cond.preheader, %if.then.i188
  %arrayidx.1 = getelementptr inbounds i8, ptr %call, i64 168
  %call47.1 = tail call i32 @get_mem2Dmp(ptr noundef nonnull %arrayidx.1, i32 noundef %div36, i32 noundef %div37) #20
  %arrayidx49.1 = getelementptr inbounds i8, ptr %call, i64 200
  %call.i186.1 = tail call noalias ptr @calloc(i64 noundef %conv.i, i64 noundef 1) #21
  store ptr %call.i186.1, ptr %arrayidx49.1, align 8
  %cmp.i187.1 = icmp eq ptr %call.i186.1, null
  br i1 %cmp.i187.1, label %if.then.i188.1, label %alloc_pic_motion.exit189.1

if.then.i188.1:                                   ; preds = %alloc_pic_motion.exit189
  tail call void @no_mem_exit(ptr noundef nonnull @.str.11) #20
  br label %alloc_pic_motion.exit189.1

alloc_pic_motion.exit189.1:                       ; preds = %if.then.i188.1, %alloc_pic_motion.exit189
  %arrayidx.2 = getelementptr inbounds i8, ptr %call, i64 176
  %call47.2 = tail call i32 @get_mem2Dmp(ptr noundef nonnull %arrayidx.2, i32 noundef %div36, i32 noundef %div37) #20
  %arrayidx49.2 = getelementptr inbounds i8, ptr %call, i64 208
  %call.i186.2 = tail call noalias ptr @calloc(i64 noundef %conv.i, i64 noundef 1) #21
  store ptr %call.i186.2, ptr %arrayidx49.2, align 8
  %cmp.i187.2 = icmp eq ptr %call.i186.2, null
  br i1 %cmp.i187.2, label %if.then.i188.2, label %if.end52

if.then.i188.2:                                   ; preds = %alloc_pic_motion.exit189.1
  tail call void @no_mem_exit(ptr noundef nonnull @.str.11) #20
  br label %if.end52

if.end52:                                         ; preds = %alloc_pic_motion.exit189.1, %if.then.i188.2, %alloc_pic_motion.exit
  %pic_num = getelementptr inbounds i8, ptr %call, i64 28
  %frame_num = getelementptr inbounds i8, ptr %call, i64 20
  store i32 0, ptr %frame_num, align 4
  %used_for_reference = getelementptr inbounds i8, ptr %call, i64 44
  store i32 0, ptr %used_for_reference, align 4
  %non_existing = getelementptr inbounds i8, ptr %call, i64 52
  store i32 0, ptr %non_existing, align 4
  %is_output = getelementptr inbounds i8, ptr %call, i64 48
  store i32 0, ptr %is_output, align 8
  %max_slice_id = getelementptr inbounds i8, ptr %call, i64 60
  store i16 0, ptr %max_slice_id, align 4
  %view_id = getelementptr inbounds i8, ptr %call, i64 344
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(13) %pic_num, i8 0, i64 13, i1 false)
  store i32 -1, ptr %view_id, align 8
  store i32 %structure, ptr %call, align 8
  %size_x54 = getelementptr inbounds i8, ptr %call, i64 64
  store i32 %size_x, ptr %size_x54, align 8
  %size_y55 = getelementptr inbounds i8, ptr %call, i64 68
  store i32 %size_y.addr.0, ptr %size_y55, align 4
  %size_x_cr56 = getelementptr inbounds i8, ptr %call, i64 72
  store i32 %size_x_cr, ptr %size_x_cr56, align 8
  %size_y_cr57 = getelementptr inbounds i8, ptr %call, i64 76
  store i32 %size_y_cr.addr.0, ptr %size_y_cr57, align 4
  %sub = add nsw i32 %size_x, -1
  %size_x_m1 = getelementptr inbounds i8, ptr %call, i64 80
  store i32 %sub, ptr %size_x_m1, align 8
  %sub58 = add nsw i32 %size_y.addr.0, -1
  %size_y_m1 = getelementptr inbounds i8, ptr %call, i64 84
  store i32 %sub58, ptr %size_y_m1, align 4
  %sub59 = add nsw i32 %size_x_cr, -1
  %size_x_cr_m1 = getelementptr inbounds i8, ptr %call, i64 88
  store i32 %sub59, ptr %size_x_cr_m1, align 8
  %sub60 = add nsw i32 %size_y_cr.addr.0, -1
  %size_y_cr_m1 = getelementptr inbounds i8, ptr %call, i64 92
  store i32 %sub60, ptr %size_y_cr_m1, align 4
  %no_reference_picture = getelementptr inbounds i8, ptr %p_Vid, i64 856488
  %14 = load ptr, ptr %no_reference_picture, align 8
  %top_field = getelementptr inbounds i8, ptr %call, i64 224
  store ptr %14, ptr %top_field, align 8
  %bottom_field = getelementptr inbounds i8, ptr %call, i64 232
  store ptr %14, ptr %bottom_field, align 8
  %frame = getelementptr inbounds i8, ptr %call, i64 240
  store ptr %14, ptr %frame, align 8
  %dec_ref_pic_marking_buffer = getelementptr inbounds i8, ptr %call, i64 312
  store ptr null, ptr %dec_ref_pic_marking_buffer, align 8
  %coded_frame = getelementptr inbounds i8, ptr %call, i64 96
  store i32 0, ptr %coded_frame, align 8
  %mb_aff_frame_flag = getelementptr inbounds i8, ptr %call, i64 100
  store i32 0, ptr %mb_aff_frame_flag, align 4
  %poc = getelementptr inbounds i8, ptr %call, i64 4
  store i32 0, ptr %poc, align 4
  %bottom_poc = getelementptr inbounds i8, ptr %call, i64 12
  store i32 0, ptr %bottom_poc, align 4
  %top_poc = getelementptr inbounds i8, ptr %call, i64 8
  store i32 0, ptr %top_poc, align 8
  %seiHasTone_mapping = getelementptr inbounds i8, ptr %call, i64 324
  store i32 0, ptr %seiHasTone_mapping, align 4
  %15 = load ptr, ptr %active_sps1, align 8
  %frame_mbs_only_flag = getelementptr inbounds i8, ptr %15, i64 3136
  %16 = load i32, ptr %frame_mbs_only_flag, align 4
  %tobool = icmp eq i32 %16, 0
  %or.cond = and i1 %cmp2, %tobool
  br i1 %or.cond, label %for.cond66.preheader, label %if.end81

for.cond66.preheader:                             ; preds = %if.end52
  %listX = getelementptr inbounds i8, ptr %call, i64 400
  %call69 = tail call noalias dereferenceable_or_null(264) ptr @calloc(i64 noundef 33, i64 noundef 8) #21
  store ptr %call69, ptr %listX, align 8
  %cmp75 = icmp eq ptr %call69, null
  br i1 %cmp75, label %if.then76, label %for.inc78

if.then76:                                        ; preds = %for.cond66.preheader
  tail call void @no_mem_exit(ptr noundef nonnull @.str.13) #20
  br label %for.inc78

for.inc78:                                        ; preds = %for.cond66.preheader, %if.then76
  %call69.1 = tail call noalias dereferenceable_or_null(264) ptr @calloc(i64 noundef 33, i64 noundef 8) #21
  %arrayidx71.1 = getelementptr inbounds i8, ptr %call, i64 408
  store ptr %call69.1, ptr %arrayidx71.1, align 8
  %cmp75.1 = icmp eq ptr %call69.1, null
  br i1 %cmp75.1, label %if.then76.1, label %if.end81

if.then76.1:                                      ; preds = %for.inc78
  tail call void @no_mem_exit(ptr noundef nonnull @.str.13) #20
  br label %if.end81

if.end81:                                         ; preds = %for.inc78, %if.then76.1, %if.end52
  ret ptr %call
}

; Function Attrs: nounwind uwtable
define dso_local void @re_init_dpb(ptr nocapture noundef readonly %p_Vid, ptr nocapture noundef %p_Dpb) local_unnamed_addr #1 {
entry:
  %active_sps1 = getelementptr inbounds i8, ptr %p_Vid, i64 16
  %0 = load ptr, ptr %active_sps1, align 8
  %profile_idc = getelementptr inbounds i8, ptr %p_Vid, i64 849084
  %1 = load i32, ptr %profile_idc, align 4
  switch i32 %1, label %if.else [
    i32 118, label %if.then
    i32 128, label %if.then
  ]

if.then:                                          ; preds = %entry, %entry
  %call = tail call i32 @GetMaxDecFrameBuffering(ptr noundef nonnull %p_Vid)
  %add = add nuw nsw i32 %call, 2
  br label %if.end

if.else:                                          ; preds = %entry
  %call4 = tail call i32 @getDpbSize(ptr noundef %0)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %iDpbSize.0 = phi i32 [ %add, %if.then ], [ %call4, %if.else ]
  %profile_idc5 = getelementptr inbounds i8, ptr %0, i64 4
  %2 = load i32, ptr %profile_idc5, align 4
  switch i32 %2, label %if.end12 [
    i32 118, label %if.then10
    i32 128, label %if.then10
  ]

if.then10:                                        ; preds = %if.end, %if.end
  %shl = shl i32 %iDpbSize.0, 1
  %add11 = add nsw i32 %shl, 2
  br label %if.end12

if.end12:                                         ; preds = %if.end, %if.then10
  %iDpbSize.1 = phi i32 [ %add11, %if.then10 ], [ %iDpbSize.0, %if.end ]
  %num_ref_frames = getelementptr inbounds i8, ptr %0, i64 3120
  %3 = load i32, ptr %num_ref_frames, align 4
  %num_ref_frames13 = getelementptr inbounds i8, ptr %p_Dpb, i64 4164
  store i32 %3, ptr %num_ref_frames13, align 4
  %size = getelementptr inbounds i8, ptr %p_Dpb, i64 40
  %4 = load i32, ptr %size, align 8
  %cmp14 = icmp sgt i32 %iDpbSize.1, %4
  br i1 %cmp14, label %if.then15, label %if.end78

if.then15:                                        ; preds = %if.end12
  %max_dec_frame_buffering = getelementptr inbounds i8, ptr %0, i64 4124
  %5 = load i32, ptr %max_dec_frame_buffering, align 4
  %cmp17 = icmp ult i32 %5, %3
  br i1 %cmp17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.then15
  tail call void @error(ptr noundef nonnull @.str.3, i32 noundef 1000) #20
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.then15
  %fs = getelementptr inbounds i8, ptr %p_Dpb, i64 16
  %6 = load ptr, ptr %fs, align 8
  %conv = sext i32 %iDpbSize.1 to i64
  %mul = shl nsw i64 %conv, 3
  %call20 = tail call ptr @realloc(ptr noundef %6, i64 noundef %mul) #22
  store ptr %call20, ptr %fs, align 8
  %cmp23 = icmp eq ptr %call20, null
  br i1 %cmp23, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.end19
  tail call void @no_mem_exit(ptr noundef nonnull @.str.7) #20
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %if.end19
  %fs_ref = getelementptr inbounds i8, ptr %p_Dpb, i64 24
  %7 = load ptr, ptr %fs_ref, align 8
  %call29 = tail call ptr @realloc(ptr noundef %7, i64 noundef %mul) #22
  store ptr %call29, ptr %fs_ref, align 8
  %cmp32 = icmp eq ptr %call29, null
  br i1 %cmp32, label %if.then34, label %if.end35

if.then34:                                        ; preds = %if.end26
  tail call void @no_mem_exit(ptr noundef nonnull @.str.8) #20
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %if.end26
  %fs_ltref = getelementptr inbounds i8, ptr %p_Dpb, i64 32
  %8 = load ptr, ptr %fs_ltref, align 8
  %call38 = tail call ptr @realloc(ptr noundef %8, i64 noundef %mul) #22
  store ptr %call38, ptr %fs_ltref, align 8
  %cmp41 = icmp eq ptr %call38, null
  br i1 %cmp41, label %if.then43, label %if.end44

if.then43:                                        ; preds = %if.end35
  tail call void @no_mem_exit(ptr noundef nonnull @.str.9) #20
  br label %if.end44

if.end44:                                         ; preds = %if.then43, %if.end35
  %9 = load i32, ptr %size, align 8
  %cmp46123 = icmp slt i32 %9, %iDpbSize.1
  br i1 %cmp46123, label %for.body.preheader, label %for.end

for.body.preheader:                               ; preds = %if.end44
  %10 = sext i32 %9 to i64
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %alloc_frame_store.exit
  %indvars.iv = phi i64 [ %10, %for.body.preheader ], [ %indvars.iv.next, %alloc_frame_store.exit ]
  %call.i = tail call noalias dereferenceable_or_null(96) ptr @calloc(i64 noundef 1, i64 noundef 96) #21
  %cmp.i = icmp eq ptr %call.i, null
  br i1 %cmp.i, label %if.then.i, label %alloc_frame_store.exit

if.then.i:                                        ; preds = %for.body
  tail call void @no_mem_exit(ptr noundef nonnull @.str.10) #20
  br label %alloc_frame_store.exit

alloc_frame_store.exit:                           ; preds = %for.body, %if.then.i
  %11 = load ptr, ptr %fs, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %11, i64 %indvars.iv
  store ptr %call.i, ptr %arrayidx, align 8
  %12 = load ptr, ptr %fs_ref, align 8
  %arrayidx52 = getelementptr inbounds ptr, ptr %12, i64 %indvars.iv
  store ptr null, ptr %arrayidx52, align 8
  %13 = load ptr, ptr %fs_ltref, align 8
  %arrayidx55 = getelementptr inbounds ptr, ptr %13, i64 %indvars.iv
  store ptr null, ptr %arrayidx55, align 8
  %14 = load ptr, ptr %fs, align 8
  %arrayidx58 = getelementptr inbounds ptr, ptr %14, i64 %indvars.iv
  %15 = load ptr, ptr %arrayidx58, align 8
  %view_id = getelementptr inbounds i8, ptr %15, i64 72
  store i32 -1, ptr %view_id, align 8
  %16 = load ptr, ptr %fs, align 8
  %arrayidx61 = getelementptr inbounds ptr, ptr %16, i64 %indvars.iv
  %17 = load ptr, ptr %arrayidx61, align 8
  %arrayidx62 = getelementptr inbounds i8, ptr %17, i64 80
  store i32 0, ptr %arrayidx62, align 4
  %18 = load ptr, ptr %fs, align 8
  %arrayidx65 = getelementptr inbounds ptr, ptr %18, i64 %indvars.iv
  %19 = load ptr, ptr %arrayidx65, align 8
  %inter_view_flag66 = getelementptr inbounds i8, ptr %19, i64 76
  store i32 0, ptr %inter_view_flag66, align 4
  %20 = load ptr, ptr %fs, align 8
  %arrayidx70 = getelementptr inbounds ptr, ptr %20, i64 %indvars.iv
  %21 = load ptr, ptr %arrayidx70, align 8
  %arrayidx71 = getelementptr inbounds i8, ptr %21, i64 88
  store i32 0, ptr %arrayidx71, align 4
  %22 = load ptr, ptr %fs, align 8
  %arrayidx74 = getelementptr inbounds ptr, ptr %22, i64 %indvars.iv
  %23 = load ptr, ptr %arrayidx74, align 8
  %anchor_pic_flag75 = getelementptr inbounds i8, ptr %23, i64 84
  store i32 0, ptr %anchor_pic_flag75, align 4
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %iDpbSize.1, %lftr.wideiv
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %alloc_frame_store.exit, %if.end44
  store i32 %iDpbSize.1, ptr %size, align 8
  br label %if.end78

if.end78:                                         ; preds = %for.end, %if.end12
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @free_frame_store(ptr noundef %f) local_unnamed_addr #1 {
entry:
  %tobool.not = icmp eq ptr %f, null
  br i1 %tobool.not, label %if.end15, label %if.then

if.then:                                          ; preds = %entry
  %frame = getelementptr inbounds i8, ptr %f, i64 48
  %0 = load ptr, ptr %frame, align 8
  %tobool1.not = icmp eq ptr %0, null
  br i1 %tobool1.not, label %if.end, label %if.then2

if.then2:                                         ; preds = %if.then
  tail call void @free_storable_picture(ptr noundef nonnull %0)
  store ptr null, ptr %frame, align 8
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  %top_field = getelementptr inbounds i8, ptr %f, i64 56
  %1 = load ptr, ptr %top_field, align 8
  %tobool5.not = icmp eq ptr %1, null
  br i1 %tobool5.not, label %if.end9, label %if.then6

if.then6:                                         ; preds = %if.end
  tail call void @free_storable_picture(ptr noundef nonnull %1)
  store ptr null, ptr %top_field, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end
  %bottom_field = getelementptr inbounds i8, ptr %f, i64 64
  %2 = load ptr, ptr %bottom_field, align 8
  %tobool10.not = icmp eq ptr %2, null
  br i1 %tobool10.not, label %if.end14, label %if.then11

if.then11:                                        ; preds = %if.end9
  tail call void @free_storable_picture(ptr noundef nonnull %2)
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.end9
  tail call void @free(ptr noundef nonnull %f) #20
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %entry
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local void @free_storable_picture(ptr noundef %p) local_unnamed_addr #1 {
entry:
  %tobool.not = icmp eq ptr %p, null
  br i1 %tobool.not, label %if.end54, label %if.then

if.then:                                          ; preds = %entry
  %mv_info = getelementptr inbounds i8, ptr %p, i64 152
  %0 = load ptr, ptr %mv_info, align 8
  %tobool1.not = icmp eq ptr %0, null
  br i1 %tobool1.not, label %if.end, label %if.then2

if.then2:                                         ; preds = %if.then
  tail call void @free_mem2Dmp(ptr noundef nonnull %0) #20
  store ptr null, ptr %mv_info, align 8
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  %motion = getelementptr inbounds i8, ptr %p, i64 184
  %1 = load ptr, ptr %motion, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %free_pic_motion.exit, label %if.then.i

if.then.i:                                        ; preds = %if.end
  tail call void @free(ptr noundef nonnull %1) #20
  store ptr null, ptr %motion, align 8
  br label %free_pic_motion.exit

free_pic_motion.exit:                             ; preds = %if.end, %if.then.i
  %separate_colour_plane_flag = getelementptr inbounds i8, ptr %p, i64 56
  %2 = load i32, ptr %separate_colour_plane_flag, align 8
  %cmp.not = icmp eq i32 %2, 0
  br i1 %cmp.not, label %if.end18, label %for.cond.preheader

for.cond.preheader:                               ; preds = %free_pic_motion.exit
  %JVmv_info = getelementptr inbounds i8, ptr %p, i64 160
  %JVmotion = getelementptr inbounds i8, ptr %p, i64 192
  %3 = load ptr, ptr %JVmv_info, align 8
  %tobool7.not = icmp eq ptr %3, null
  br i1 %tobool7.not, label %if.end15, label %if.then8

if.then8:                                         ; preds = %for.cond.preheader
  tail call void @free_mem2Dmp(ptr noundef nonnull %3) #20
  store ptr null, ptr %JVmv_info, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.then8, %for.cond.preheader
  %4 = load ptr, ptr %JVmotion, align 8
  %tobool.not.i97 = icmp eq ptr %4, null
  br i1 %tobool.not.i97, label %free_pic_motion.exit99, label %if.then.i98

if.then.i98:                                      ; preds = %if.end15
  tail call void @free(ptr noundef nonnull %4) #20
  store ptr null, ptr %JVmotion, align 8
  br label %free_pic_motion.exit99

free_pic_motion.exit99:                           ; preds = %if.end15, %if.then.i98
  %arrayidx.1 = getelementptr inbounds i8, ptr %p, i64 168
  %5 = load ptr, ptr %arrayidx.1, align 8
  %tobool7.not.1 = icmp eq ptr %5, null
  br i1 %tobool7.not.1, label %if.end15.1, label %if.then8.1

if.then8.1:                                       ; preds = %free_pic_motion.exit99
  tail call void @free_mem2Dmp(ptr noundef nonnull %5) #20
  store ptr null, ptr %arrayidx.1, align 8
  br label %if.end15.1

if.end15.1:                                       ; preds = %if.then8.1, %free_pic_motion.exit99
  %arrayidx17.1 = getelementptr inbounds i8, ptr %p, i64 200
  %6 = load ptr, ptr %arrayidx17.1, align 8
  %tobool.not.i97.1 = icmp eq ptr %6, null
  br i1 %tobool.not.i97.1, label %free_pic_motion.exit99.1, label %if.then.i98.1

if.then.i98.1:                                    ; preds = %if.end15.1
  tail call void @free(ptr noundef nonnull %6) #20
  store ptr null, ptr %arrayidx17.1, align 8
  br label %free_pic_motion.exit99.1

free_pic_motion.exit99.1:                         ; preds = %if.then.i98.1, %if.end15.1
  %arrayidx.2 = getelementptr inbounds i8, ptr %p, i64 176
  %7 = load ptr, ptr %arrayidx.2, align 8
  %tobool7.not.2 = icmp eq ptr %7, null
  br i1 %tobool7.not.2, label %if.end15.2, label %if.then8.2

if.then8.2:                                       ; preds = %free_pic_motion.exit99.1
  tail call void @free_mem2Dmp(ptr noundef nonnull %7) #20
  store ptr null, ptr %arrayidx.2, align 8
  br label %if.end15.2

if.end15.2:                                       ; preds = %if.then8.2, %free_pic_motion.exit99.1
  %arrayidx17.2 = getelementptr inbounds i8, ptr %p, i64 208
  %8 = load ptr, ptr %arrayidx17.2, align 8
  %tobool.not.i97.2 = icmp eq ptr %8, null
  br i1 %tobool.not.i97.2, label %if.end18, label %if.then.i98.2

if.then.i98.2:                                    ; preds = %if.end15.2
  tail call void @free(ptr noundef nonnull %8) #20
  store ptr null, ptr %arrayidx17.2, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.end15.2, %if.then.i98.2, %free_pic_motion.exit
  %imgY = getelementptr inbounds i8, ptr %p, i64 128
  %9 = load ptr, ptr %imgY, align 8
  %tobool19.not = icmp eq ptr %9, null
  br i1 %tobool19.not, label %if.end23, label %if.then20

if.then20:                                        ; preds = %if.end18
  %iLumaPadY = getelementptr inbounds i8, ptr %p, i64 112
  %10 = load i32, ptr %iLumaPadY, align 8
  %iLumaPadX = getelementptr inbounds i8, ptr %p, i64 116
  %11 = load i32, ptr %iLumaPadX, align 4
  tail call void @free_mem2DpelWithPad(ptr noundef nonnull %9, i32 noundef %10, i32 noundef %11) #20
  store ptr null, ptr %imgY, align 8
  br label %if.end23

if.end23:                                         ; preds = %if.then20, %if.end18
  %imgUV = getelementptr inbounds i8, ptr %p, i64 136
  %12 = load ptr, ptr %imgUV, align 8
  %tobool24.not = icmp eq ptr %12, null
  br i1 %tobool24.not, label %if.end28, label %if.then25

if.then25:                                        ; preds = %if.end23
  %iChromaPadY = getelementptr inbounds i8, ptr %p, i64 120
  %13 = load i32, ptr %iChromaPadY, align 8
  %iChromaPadX = getelementptr inbounds i8, ptr %p, i64 124
  %14 = load i32, ptr %iChromaPadX, align 4
  tail call void @free_mem3DpelWithPad(ptr noundef nonnull %12, i32 noundef %13, i32 noundef %14) #20
  store ptr null, ptr %imgUV, align 8
  br label %if.end28

if.end28:                                         ; preds = %if.then25, %if.end23
  %slice_id = getelementptr inbounds i8, ptr %p, i64 216
  %15 = load ptr, ptr %slice_id, align 8
  %tobool29.not = icmp eq ptr %15, null
  br i1 %tobool29.not, label %if.end33, label %if.then30

if.then30:                                        ; preds = %if.end28
  tail call void @free_mem2Dshort(ptr noundef nonnull %15) #20
  store ptr null, ptr %slice_id, align 8
  br label %if.end33

if.end33:                                         ; preds = %if.then30, %if.end28
  %seiHasTone_mapping = getelementptr inbounds i8, ptr %p, i64 324
  %16 = load i32, ptr %seiHasTone_mapping, align 4
  %tobool34.not = icmp eq i32 %16, 0
  br i1 %tobool34.not, label %if.end36, label %if.then35

if.then35:                                        ; preds = %if.end33
  %tone_mapping_lut = getelementptr inbounds i8, ptr %p, i64 336
  %17 = load ptr, ptr %tone_mapping_lut, align 8
  tail call void @free(ptr noundef %17) #20
  br label %if.end36

if.end36:                                         ; preds = %if.then35, %if.end33
  %listX = getelementptr inbounds i8, ptr %p, i64 400
  %18 = load ptr, ptr %listX, align 8
  %tobool42.not = icmp eq ptr %18, null
  br i1 %tobool42.not, label %for.inc51, label %if.then43

if.then43:                                        ; preds = %if.end36
  tail call void @free(ptr noundef nonnull %18) #20
  store ptr null, ptr %listX, align 8
  br label %for.inc51

for.inc51:                                        ; preds = %if.end36, %if.then43
  %arrayidx41.1 = getelementptr inbounds i8, ptr %p, i64 408
  %19 = load ptr, ptr %arrayidx41.1, align 8
  %tobool42.not.1 = icmp eq ptr %19, null
  br i1 %tobool42.not.1, label %for.inc51.1, label %if.then43.1

if.then43.1:                                      ; preds = %for.inc51
  tail call void @free(ptr noundef nonnull %19) #20
  br label %for.inc51.1

for.inc51.1:                                      ; preds = %if.then43.1, %for.inc51
  tail call void @free(ptr noundef nonnull %p) #20
  br label %if.end54

if.end54:                                         ; preds = %for.inc51.1, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @alloc_pic_motion(ptr nocapture noundef writeonly %motion, i32 noundef %size_y, i32 noundef %size_x) local_unnamed_addr #1 {
entry:
  %mul = mul nsw i32 %size_x, %size_y
  %conv = sext i32 %mul to i64
  %call = tail call noalias ptr @calloc(i64 noundef %conv, i64 noundef 1) #21
  store ptr %call, ptr %motion, align 8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @no_mem_exit(ptr noundef nonnull @.str.11) #20
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i32 @get_mem2DpelWithPad(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @get_mem3DpelWithPad(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @get_mem2Dshort(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @get_mem2Dmp(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn uwtable
define dso_local void @free_pic_motion(ptr nocapture noundef %motion) local_unnamed_addr #7 {
entry:
  %0 = load ptr, ptr %motion, align 8
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @free(ptr noundef nonnull %0) #20
  store ptr null, ptr %motion, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @free_mem2Dmp(ptr noundef) local_unnamed_addr #3

declare void @free_mem2DpelWithPad(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @free_mem3DpelWithPad(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @free_mem2Dshort(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i32 0, 2) i32 @is_short_ref(ptr nocapture noundef readonly %s) local_unnamed_addr #8 {
entry:
  %used_for_reference = getelementptr inbounds i8, ptr %s, i64 44
  %0 = load i32, ptr %used_for_reference, align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %is_long_term = getelementptr inbounds i8, ptr %s, i64 40
  %1 = load i8, ptr %is_long_term, align 8
  %tobool1.not = icmp eq i8 %1, 0
  %2 = zext i1 %tobool1.not to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %land.ext = phi i32 [ 0, %entry ], [ %2, %land.rhs ]
  ret i32 %land.ext
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i32 0, 2) i32 @is_long_ref(ptr nocapture noundef readonly %s) local_unnamed_addr #8 {
entry:
  %used_for_reference = getelementptr inbounds i8, ptr %s, i64 44
  %0 = load i32, ptr %used_for_reference, align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %is_long_term = getelementptr inbounds i8, ptr %s, i64 40
  %1 = load i8, ptr %is_long_term, align 8
  %tobool1 = icmp ne i8 %1, 0
  %2 = zext i1 %tobool1 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %land.ext = phi i32 [ 0, %entry ], [ %2, %land.rhs ]
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define dso_local void @gen_pic_list_from_frame_list(i32 noundef %currStructure, ptr nocapture noundef readonly %fs_list, i32 noundef %list_idx, ptr nocapture noundef writeonly %list, ptr nocapture noundef %list_size, i32 noundef %long_term) local_unnamed_addr #1 {
entry:
  %tobool.not = icmp eq i32 %long_term, 0
  %is_short_ref.is_long_ref = select i1 %tobool.not, ptr @is_short_ref, ptr @is_long_ref
  %cmp = icmp eq i32 %currStructure, 1
  br i1 %cmp, label %while.cond.preheader, label %if.end48

while.cond.preheader:                             ; preds = %entry
  %cmp2187 = icmp sgt i32 %list_idx, 0
  br i1 %cmp2187, label %for.cond.preheader, label %if.end119

for.cond.preheader:                               ; preds = %while.cond.preheader, %for.end47
  %bot_idx.0190 = phi i32 [ %bot_idx.2, %for.end47 ], [ 0, %while.cond.preheader ]
  %top_idx.0189 = phi i32 [ %top_idx.2, %for.end47 ], [ 0, %while.cond.preheader ]
  %cmp4182 = icmp slt i32 %top_idx.0189, %list_idx
  br i1 %cmp4182, label %for.body.preheader, label %for.end

for.body.preheader:                               ; preds = %for.cond.preheader
  %0 = sext i32 %top_idx.0189 to i64
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %indvars.iv = phi i64 [ %0, %for.body.preheader ], [ %indvars.iv.next, %for.inc ]
  %arrayidx = getelementptr inbounds ptr, ptr %fs_list, i64 %indvars.iv
  %1 = load ptr, ptr %arrayidx, align 8
  %2 = load i32, ptr %1, align 8
  %and = and i32 %2, 1
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %for.inc, label %if.then6

if.then6:                                         ; preds = %for.body
  %top_field = getelementptr inbounds i8, ptr %1, i64 56
  %3 = load ptr, ptr %top_field, align 8
  %call = tail call i32 %is_short_ref.is_long_ref(ptr noundef %3) #20, !callees !5
  %tobool9.not = icmp eq i32 %call, 0
  br i1 %tobool9.not, label %for.inc, label %if.then10

if.then10:                                        ; preds = %if.then6
  %arrayidx.le = getelementptr inbounds ptr, ptr %fs_list, i64 %indvars.iv
  %4 = trunc nsw i64 %indvars.iv to i32
  %5 = load ptr, ptr %arrayidx.le, align 8
  %top_field13 = getelementptr inbounds i8, ptr %5, i64 56
  %6 = load ptr, ptr %top_field13, align 8
  %7 = load i8, ptr %list_size, align 1
  %idxprom14 = sext i8 %7 to i64
  %arrayidx15 = getelementptr inbounds ptr, ptr %list, i64 %idxprom14
  store ptr %6, ptr %arrayidx15, align 8
  %8 = load i8, ptr %list_size, align 1
  %inc = add i8 %8, 1
  store i8 %inc, ptr %list_size, align 1
  %inc16 = add nsw i32 %4, 1
  br label %for.end

for.inc:                                          ; preds = %for.body, %if.then6
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %lftr.wideiv, %list_idx
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %for.cond.preheader, %if.then10
  %top_idx.2 = phi i32 [ %inc16, %if.then10 ], [ %top_idx.0189, %for.cond.preheader ], [ %list_idx, %for.inc ]
  %cmp21184 = icmp slt i32 %bot_idx.0190, %list_idx
  br i1 %cmp21184, label %for.body23.preheader, label %for.end47

for.body23.preheader:                             ; preds = %for.end
  %9 = sext i32 %bot_idx.0190 to i64
  br label %for.body23

for.body23:                                       ; preds = %for.body23.preheader, %for.inc45
  %indvars.iv212 = phi i64 [ %9, %for.body23.preheader ], [ %indvars.iv.next213, %for.inc45 ]
  %arrayidx25 = getelementptr inbounds ptr, ptr %fs_list, i64 %indvars.iv212
  %10 = load ptr, ptr %arrayidx25, align 8
  %11 = load i32, ptr %10, align 8
  %and27 = and i32 %11, 2
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %for.inc45, label %if.then29

if.then29:                                        ; preds = %for.body23
  %bottom_field = getelementptr inbounds i8, ptr %10, i64 64
  %12 = load ptr, ptr %bottom_field, align 8
  %call32 = tail call i32 %is_short_ref.is_long_ref(ptr noundef %12) #20, !callees !5
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %for.inc45, label %if.then34

if.then34:                                        ; preds = %if.then29
  %arrayidx25.le = getelementptr inbounds ptr, ptr %fs_list, i64 %indvars.iv212
  %13 = trunc nsw i64 %indvars.iv212 to i32
  %14 = load ptr, ptr %arrayidx25.le, align 8
  %bottom_field37 = getelementptr inbounds i8, ptr %14, i64 64
  %15 = load ptr, ptr %bottom_field37, align 8
  %16 = load i8, ptr %list_size, align 1
  %idxprom39 = sext i8 %16 to i64
  %arrayidx40 = getelementptr inbounds ptr, ptr %list, i64 %idxprom39
  store ptr %15, ptr %arrayidx40, align 8
  %17 = load i8, ptr %list_size, align 1
  %inc41 = add i8 %17, 1
  store i8 %inc41, ptr %list_size, align 1
  %inc42 = add nsw i32 %13, 1
  br label %for.end47

for.inc45:                                        ; preds = %for.body23, %if.then29
  %indvars.iv.next213 = add nsw i64 %indvars.iv212, 1
  %lftr.wideiv215 = trunc i64 %indvars.iv.next213 to i32
  %exitcond216.not = icmp eq i32 %lftr.wideiv215, %list_idx
  br i1 %exitcond216.not, label %for.end47, label %for.body23

for.end47:                                        ; preds = %for.inc45, %for.end, %if.then34
  %bot_idx.2 = phi i32 [ %inc42, %if.then34 ], [ %bot_idx.0190, %for.end ], [ %list_idx, %for.inc45 ]
  %cmp2 = icmp slt i32 %top_idx.2, %list_idx
  %cmp3 = icmp slt i32 %bot_idx.2, %list_idx
  %18 = select i1 %cmp2, i1 true, i1 %cmp3
  br i1 %18, label %for.cond.preheader, label %if.end48

if.end48:                                         ; preds = %for.end47, %entry
  %top_idx.3 = phi i32 [ 0, %entry ], [ %top_idx.2, %for.end47 ]
  %bot_idx.3 = phi i32 [ 0, %entry ], [ %bot_idx.2, %for.end47 ]
  %cmp49 = icmp eq i32 %currStructure, 2
  br i1 %cmp49, label %while.cond52.preheader, label %if.end119

while.cond52.preheader:                           ; preds = %if.end48
  %cmp53199 = icmp slt i32 %top_idx.3, %list_idx
  %cmp56200 = icmp slt i32 %bot_idx.3, %list_idx
  %19 = select i1 %cmp53199, i1 true, i1 %cmp56200
  br i1 %19, label %for.cond60.preheader, label %if.end119

for.cond60.preheader:                             ; preds = %while.cond52.preheader, %for.end117
  %bot_idx.4202 = phi i32 [ %bot_idx.6, %for.end117 ], [ %bot_idx.3, %while.cond52.preheader ]
  %top_idx.4201 = phi i32 [ %top_idx.6, %for.end117 ], [ %top_idx.3, %while.cond52.preheader ]
  %cmp61193 = icmp slt i32 %bot_idx.4202, %list_idx
  br i1 %cmp61193, label %for.body63.preheader, label %for.end88

for.body63.preheader:                             ; preds = %for.cond60.preheader
  %20 = sext i32 %bot_idx.4202 to i64
  br label %for.body63

for.body63:                                       ; preds = %for.body63.preheader, %for.inc86
  %indvars.iv217 = phi i64 [ %20, %for.body63.preheader ], [ %indvars.iv.next218, %for.inc86 ]
  %arrayidx65 = getelementptr inbounds ptr, ptr %fs_list, i64 %indvars.iv217
  %21 = load ptr, ptr %arrayidx65, align 8
  %22 = load i32, ptr %21, align 8
  %and67 = and i32 %22, 2
  %tobool68.not = icmp eq i32 %and67, 0
  br i1 %tobool68.not, label %for.inc86, label %if.then69

if.then69:                                        ; preds = %for.body63
  %bottom_field72 = getelementptr inbounds i8, ptr %21, i64 64
  %23 = load ptr, ptr %bottom_field72, align 8
  %call73 = tail call i32 %is_short_ref.is_long_ref(ptr noundef %23) #20, !callees !5
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %for.inc86, label %if.then75

if.then75:                                        ; preds = %if.then69
  %arrayidx65.le = getelementptr inbounds ptr, ptr %fs_list, i64 %indvars.iv217
  %24 = trunc nsw i64 %indvars.iv217 to i32
  %25 = load ptr, ptr %arrayidx65.le, align 8
  %bottom_field78 = getelementptr inbounds i8, ptr %25, i64 64
  %26 = load ptr, ptr %bottom_field78, align 8
  %27 = load i8, ptr %list_size, align 1
  %idxprom80 = sext i8 %27 to i64
  %arrayidx81 = getelementptr inbounds ptr, ptr %list, i64 %idxprom80
  store ptr %26, ptr %arrayidx81, align 8
  %28 = load i8, ptr %list_size, align 1
  %inc82 = add i8 %28, 1
  store i8 %inc82, ptr %list_size, align 1
  %inc83 = add nsw i32 %24, 1
  br label %for.end88

for.inc86:                                        ; preds = %for.body63, %if.then69
  %indvars.iv.next218 = add nsw i64 %indvars.iv217, 1
  %lftr.wideiv220 = trunc i64 %indvars.iv.next218 to i32
  %exitcond221.not = icmp eq i32 %lftr.wideiv220, %list_idx
  br i1 %exitcond221.not, label %for.end88, label %for.body63

for.end88:                                        ; preds = %for.inc86, %for.cond60.preheader, %if.then75
  %bot_idx.6 = phi i32 [ %inc83, %if.then75 ], [ %bot_idx.4202, %for.cond60.preheader ], [ %list_idx, %for.inc86 ]
  %cmp90196 = icmp slt i32 %top_idx.4201, %list_idx
  br i1 %cmp90196, label %for.body92.preheader, label %for.end117

for.body92.preheader:                             ; preds = %for.end88
  %29 = sext i32 %top_idx.4201 to i64
  br label %for.body92

for.body92:                                       ; preds = %for.body92.preheader, %for.inc115
  %indvars.iv222 = phi i64 [ %29, %for.body92.preheader ], [ %indvars.iv.next223, %for.inc115 ]
  %arrayidx94 = getelementptr inbounds ptr, ptr %fs_list, i64 %indvars.iv222
  %30 = load ptr, ptr %arrayidx94, align 8
  %31 = load i32, ptr %30, align 8
  %and96 = and i32 %31, 1
  %tobool97.not = icmp eq i32 %and96, 0
  br i1 %tobool97.not, label %for.inc115, label %if.then98

if.then98:                                        ; preds = %for.body92
  %top_field101 = getelementptr inbounds i8, ptr %30, i64 56
  %32 = load ptr, ptr %top_field101, align 8
  %call102 = tail call i32 %is_short_ref.is_long_ref(ptr noundef %32) #20, !callees !5
  %tobool103.not = icmp eq i32 %call102, 0
  br i1 %tobool103.not, label %for.inc115, label %if.then104

if.then104:                                       ; preds = %if.then98
  %arrayidx94.le = getelementptr inbounds ptr, ptr %fs_list, i64 %indvars.iv222
  %33 = trunc nsw i64 %indvars.iv222 to i32
  %34 = load ptr, ptr %arrayidx94.le, align 8
  %top_field107 = getelementptr inbounds i8, ptr %34, i64 56
  %35 = load ptr, ptr %top_field107, align 8
  %36 = load i8, ptr %list_size, align 1
  %idxprom109 = sext i8 %36 to i64
  %arrayidx110 = getelementptr inbounds ptr, ptr %list, i64 %idxprom109
  store ptr %35, ptr %arrayidx110, align 8
  %37 = load i8, ptr %list_size, align 1
  %inc111 = add i8 %37, 1
  store i8 %inc111, ptr %list_size, align 1
  %inc112 = add nsw i32 %33, 1
  br label %for.end117

for.inc115:                                       ; preds = %for.body92, %if.then98
  %indvars.iv.next223 = add nsw i64 %indvars.iv222, 1
  %lftr.wideiv225 = trunc i64 %indvars.iv.next223 to i32
  %exitcond226.not = icmp eq i32 %lftr.wideiv225, %list_idx
  br i1 %exitcond226.not, label %for.end117, label %for.body92

for.end117:                                       ; preds = %for.inc115, %for.end88, %if.then104
  %top_idx.6 = phi i32 [ %inc112, %if.then104 ], [ %top_idx.4201, %for.end88 ], [ %list_idx, %for.inc115 ]
  %cmp53 = icmp slt i32 %top_idx.6, %list_idx
  %cmp56 = icmp slt i32 %bot_idx.6, %list_idx
  %38 = select i1 %cmp53, i1 true, i1 %cmp56
  br i1 %38, label %for.cond60.preheader, label %if.end119

if.end119:                                        ; preds = %for.end117, %while.cond.preheader, %while.cond52.preheader, %if.end48
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @update_pic_num(ptr nocapture noundef readonly %currSlice) local_unnamed_addr #9 {
entry:
  %0 = load ptr, ptr %currSlice, align 8
  %p_Dpb2 = getelementptr inbounds i8, ptr %currSlice, i64 40
  %1 = load ptr, ptr %p_Dpb2, align 8
  %active_sps3 = getelementptr inbounds i8, ptr %0, i64 16
  %2 = load ptr, ptr %active_sps3, align 8
  %log2_max_frame_num_minus4 = getelementptr inbounds i8, ptr %2, i64 2068
  %3 = load i32, ptr %log2_max_frame_num_minus4, align 4
  %add = add i32 %3, 4
  %shl = shl nuw i32 1, %add
  %structure = getelementptr inbounds i8, ptr %currSlice, i64 184
  %4 = load i32, ptr %structure, align 8
  switch i32 %4, label %if.else79 [
    i32 0, label %for.cond.preheader
    i32 1, label %if.end80
  ]

for.cond.preheader:                               ; preds = %entry
  %ref_frames_in_buffer = getelementptr inbounds i8, ptr %1, i64 48
  %5 = load i32, ptr %ref_frames_in_buffer, align 8
  %cmp4288.not = icmp eq i32 %5, 0
  br i1 %cmp4288.not, label %for.cond47.preheader, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %fs_ref = getelementptr inbounds i8, ptr %1, i64 24
  %frame_num19 = getelementptr inbounds i8, ptr %currSlice, i64 172
  br label %for.body

for.cond47.preheader:                             ; preds = %for.inc, %for.cond.preheader
  %ltref_frames_in_buffer = getelementptr inbounds i8, ptr %1, i64 52
  %6 = load i32, ptr %ltref_frames_in_buffer, align 4
  %cmp48290.not = icmp eq i32 %6, 0
  br i1 %cmp48290.not, label %if.end201, label %for.body49.lr.ph

for.body49.lr.ph:                                 ; preds = %for.cond47.preheader
  %fs_ltref = getelementptr inbounds i8, ptr %1, i64 32
  br label %for.body49

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %7 = phi i32 [ %5, %for.body.lr.ph ], [ %21, %for.inc ]
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %8 = load ptr, ptr %fs_ref, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %8, i64 %indvars.iv
  %9 = load ptr, ptr %arrayidx, align 8
  %10 = load i32, ptr %9, align 8
  %cmp5 = icmp eq i32 %10, 3
  br i1 %cmp5, label %if.then6, label %for.inc

if.then6:                                         ; preds = %for.body
  %frame = getelementptr inbounds i8, ptr %9, i64 48
  %11 = load ptr, ptr %frame, align 8
  %used_for_reference = getelementptr inbounds i8, ptr %11, i64 44
  %12 = load i32, ptr %used_for_reference, align 4
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %for.inc, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then6
  %is_long_term = getelementptr inbounds i8, ptr %11, i64 40
  %13 = load i8, ptr %is_long_term, align 8
  %tobool14.not = icmp eq i8 %13, 0
  br i1 %tobool14.not, label %if.then15, label %for.inc

if.then15:                                        ; preds = %land.lhs.true
  %frame_num = getelementptr inbounds i8, ptr %9, i64 20
  %14 = load i32, ptr %frame_num, align 4
  %15 = load i32, ptr %frame_num19, align 4
  %cmp20 = icmp ugt i32 %14, %15
  %sub = select i1 %cmp20, i32 %shl, i32 0
  %spec.select = sub i32 %14, %sub
  %16 = getelementptr inbounds i8, ptr %9, i64 28
  store i32 %spec.select, ptr %16, align 4
  %17 = load ptr, ptr %fs_ref, align 8
  %arrayidx39 = getelementptr inbounds ptr, ptr %17, i64 %indvars.iv
  %18 = load ptr, ptr %arrayidx39, align 8
  %frame_num_wrap40 = getelementptr inbounds i8, ptr %18, i64 28
  %19 = load i32, ptr %frame_num_wrap40, align 4
  %frame44 = getelementptr inbounds i8, ptr %18, i64 48
  %20 = load ptr, ptr %frame44, align 8
  %pic_num = getelementptr inbounds i8, ptr %20, i64 28
  store i32 %19, ptr %pic_num, align 4
  %.pre = load i32, ptr %ref_frames_in_buffer, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then15, %land.lhs.true, %if.then6
  %21 = phi i32 [ %7, %for.body ], [ %.pre, %if.then15 ], [ %7, %land.lhs.true ], [ %7, %if.then6 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %22 = zext i32 %21 to i64
  %cmp4 = icmp ult i64 %indvars.iv.next, %22
  br i1 %cmp4, label %for.body, label %for.cond47.preheader

for.body49:                                       ; preds = %for.body49.lr.ph, %for.inc72
  %23 = phi i32 [ %6, %for.body49.lr.ph ], [ %30, %for.inc72 ]
  %indvars.iv298 = phi i64 [ 0, %for.body49.lr.ph ], [ %indvars.iv.next299, %for.inc72 ]
  %24 = load ptr, ptr %fs_ltref, align 8
  %arrayidx51 = getelementptr inbounds ptr, ptr %24, i64 %indvars.iv298
  %25 = load ptr, ptr %arrayidx51, align 8
  %26 = load i32, ptr %25, align 8
  %cmp53 = icmp eq i32 %26, 3
  br i1 %cmp53, label %if.then54, label %for.inc72

if.then54:                                        ; preds = %for.body49
  %frame58 = getelementptr inbounds i8, ptr %25, i64 48
  %27 = load ptr, ptr %frame58, align 8
  %is_long_term59 = getelementptr inbounds i8, ptr %27, i64 40
  %28 = load i8, ptr %is_long_term59, align 8
  %tobool60.not = icmp eq i8 %28, 0
  br i1 %tobool60.not, label %for.inc72, label %if.then61

if.then61:                                        ; preds = %if.then54
  %long_term_frame_idx = getelementptr inbounds i8, ptr %27, i64 36
  %29 = load i32, ptr %long_term_frame_idx, align 4
  %long_term_pic_num = getelementptr inbounds i8, ptr %27, i64 32
  store i32 %29, ptr %long_term_pic_num, align 8
  %.pre308 = load i32, ptr %ltref_frames_in_buffer, align 4
  br label %for.inc72

for.inc72:                                        ; preds = %for.body49, %if.then61, %if.then54
  %30 = phi i32 [ %23, %for.body49 ], [ %.pre308, %if.then61 ], [ %23, %if.then54 ]
  %indvars.iv.next299 = add nuw nsw i64 %indvars.iv298, 1
  %31 = zext i32 %30 to i64
  %cmp48 = icmp ult i64 %indvars.iv.next299, %31
  br i1 %cmp48, label %for.body49, label %if.end201

if.else79:                                        ; preds = %entry
  br label %if.end80

if.end80:                                         ; preds = %entry, %if.else79
  %add_top.0 = phi i32 [ 0, %if.else79 ], [ %4, %entry ]
  %add_bottom.0 = phi i32 [ 1, %if.else79 ], [ 0, %entry ]
  %ref_frames_in_buffer82 = getelementptr inbounds i8, ptr %1, i64 48
  %32 = load i32, ptr %ref_frames_in_buffer82, align 8
  %cmp83292.not = icmp eq i32 %32, 0
  br i1 %cmp83292.not, label %for.cond154.preheader, label %for.body84.lr.ph

for.body84.lr.ph:                                 ; preds = %if.end80
  %fs_ref85 = getelementptr inbounds i8, ptr %1, i64 24
  %frame_num94 = getelementptr inbounds i8, ptr %currSlice, i64 172
  br label %for.body84

for.cond154.preheader:                            ; preds = %for.inc151, %if.end80
  %ltref_frames_in_buffer155 = getelementptr inbounds i8, ptr %1, i64 52
  %33 = load i32, ptr %ltref_frames_in_buffer155, align 4
  %cmp156294.not = icmp eq i32 %33, 0
  br i1 %cmp156294.not, label %if.end201, label %for.body157.lr.ph

for.body157.lr.ph:                                ; preds = %for.cond154.preheader
  %fs_ltref158 = getelementptr inbounds i8, ptr %1, i64 32
  br label %for.body157

for.body84:                                       ; preds = %for.body84.lr.ph, %for.inc151
  %indvars.iv301 = phi i64 [ 0, %for.body84.lr.ph ], [ %indvars.iv.next302, %for.inc151 ]
  %34 = load ptr, ptr %fs_ref85, align 8
  %arrayidx87 = getelementptr inbounds ptr, ptr %34, i64 %indvars.iv301
  %35 = load ptr, ptr %arrayidx87, align 8
  %is_reference = getelementptr inbounds i8, ptr %35, i64 4
  %36 = load i32, ptr %is_reference, align 4
  %tobool88.not = icmp eq i32 %36, 0
  br i1 %tobool88.not, label %for.inc151, label %if.then89

if.then89:                                        ; preds = %for.body84
  %frame_num93 = getelementptr inbounds i8, ptr %35, i64 20
  %37 = load i32, ptr %frame_num93, align 4
  %38 = load i32, ptr %frame_num94, align 4
  %cmp95 = icmp ugt i32 %37, %38
  %sub101 = select i1 %cmp95, i32 %shl, i32 0
  %spec.select316 = sub i32 %37, %sub101
  %39 = getelementptr inbounds i8, ptr %35, i64 28
  store i32 %spec.select316, ptr %39, align 4
  %40 = load ptr, ptr %fs_ref85, align 8
  %arrayidx118 = getelementptr inbounds ptr, ptr %40, i64 %indvars.iv301
  %41 = load ptr, ptr %arrayidx118, align 8
  %is_reference119 = getelementptr inbounds i8, ptr %41, i64 4
  %42 = load i32, ptr %is_reference119, align 4
  %and = and i32 %42, 1
  %tobool120.not = icmp eq i32 %and, 0
  br i1 %tobool120.not, label %if.end131, label %if.then121

if.then121:                                       ; preds = %if.then89
  %frame_num_wrap125 = getelementptr inbounds i8, ptr %41, i64 28
  %43 = load i32, ptr %frame_num_wrap125, align 4
  %mul = shl nsw i32 %43, 1
  %add126 = or disjoint i32 %mul, %add_top.0
  %top_field = getelementptr inbounds i8, ptr %41, i64 56
  %44 = load ptr, ptr %top_field, align 8
  %pic_num130 = getelementptr inbounds i8, ptr %44, i64 28
  store i32 %add126, ptr %pic_num130, align 4
  %.pre309 = load ptr, ptr %fs_ref85, align 8
  %arrayidx134.phi.trans.insert = getelementptr inbounds ptr, ptr %.pre309, i64 %indvars.iv301
  %.pre310 = load ptr, ptr %arrayidx134.phi.trans.insert, align 8
  %is_reference135.phi.trans.insert = getelementptr inbounds i8, ptr %.pre310, i64 4
  %.pre311 = load i32, ptr %is_reference135.phi.trans.insert, align 4
  br label %if.end131

if.end131:                                        ; preds = %if.then121, %if.then89
  %45 = phi i32 [ %.pre311, %if.then121 ], [ %42, %if.then89 ]
  %46 = phi ptr [ %.pre310, %if.then121 ], [ %41, %if.then89 ]
  %and136 = and i32 %45, 2
  %tobool137.not = icmp eq i32 %and136, 0
  br i1 %tobool137.not, label %for.inc151, label %if.then138

if.then138:                                       ; preds = %if.end131
  %frame_num_wrap142 = getelementptr inbounds i8, ptr %46, i64 28
  %47 = load i32, ptr %frame_num_wrap142, align 4
  %mul143 = shl nsw i32 %47, 1
  %add144 = or disjoint i32 %mul143, %add_bottom.0
  %bottom_field = getelementptr inbounds i8, ptr %46, i64 64
  %48 = load ptr, ptr %bottom_field, align 8
  %pic_num148 = getelementptr inbounds i8, ptr %48, i64 28
  store i32 %add144, ptr %pic_num148, align 4
  br label %for.inc151

for.inc151:                                       ; preds = %for.body84, %if.then138, %if.end131
  %indvars.iv.next302 = add nuw nsw i64 %indvars.iv301, 1
  %49 = load i32, ptr %ref_frames_in_buffer82, align 8
  %50 = zext i32 %49 to i64
  %cmp83 = icmp ult i64 %indvars.iv.next302, %50
  br i1 %cmp83, label %for.body84, label %for.cond154.preheader

for.body157:                                      ; preds = %for.body157.lr.ph, %for.inc198
  %indvars.iv304 = phi i64 [ 0, %for.body157.lr.ph ], [ %indvars.iv.next305, %for.inc198 ]
  %51 = load ptr, ptr %fs_ltref158, align 8
  %arrayidx160 = getelementptr inbounds ptr, ptr %51, i64 %indvars.iv304
  %52 = load ptr, ptr %arrayidx160, align 8
  %is_long_term161 = getelementptr inbounds i8, ptr %52, i64 8
  %53 = load i32, ptr %is_long_term161, align 8
  %and162 = and i32 %53, 1
  %tobool163.not = icmp eq i32 %and162, 0
  br i1 %tobool163.not, label %if.end177, label %if.then164

if.then164:                                       ; preds = %for.body157
  %top_field168 = getelementptr inbounds i8, ptr %52, i64 56
  %54 = load ptr, ptr %top_field168, align 8
  %long_term_frame_idx169 = getelementptr inbounds i8, ptr %54, i64 36
  %55 = load i32, ptr %long_term_frame_idx169, align 4
  %mul170 = shl nsw i32 %55, 1
  %add171 = or disjoint i32 %mul170, %add_top.0
  %long_term_pic_num176 = getelementptr inbounds i8, ptr %54, i64 32
  store i32 %add171, ptr %long_term_pic_num176, align 8
  %.pre312 = load ptr, ptr %fs_ltref158, align 8
  %arrayidx180.phi.trans.insert = getelementptr inbounds ptr, ptr %.pre312, i64 %indvars.iv304
  %.pre313 = load ptr, ptr %arrayidx180.phi.trans.insert, align 8
  %is_long_term181.phi.trans.insert = getelementptr inbounds i8, ptr %.pre313, i64 8
  %.pre314 = load i32, ptr %is_long_term181.phi.trans.insert, align 8
  br label %if.end177

if.end177:                                        ; preds = %if.then164, %for.body157
  %56 = phi i32 [ %.pre314, %if.then164 ], [ %53, %for.body157 ]
  %57 = phi ptr [ %.pre313, %if.then164 ], [ %52, %for.body157 ]
  %and182 = and i32 %56, 2
  %tobool183.not = icmp eq i32 %and182, 0
  br i1 %tobool183.not, label %for.inc198, label %if.then184

if.then184:                                       ; preds = %if.end177
  %bottom_field188 = getelementptr inbounds i8, ptr %57, i64 64
  %58 = load ptr, ptr %bottom_field188, align 8
  %long_term_frame_idx189 = getelementptr inbounds i8, ptr %58, i64 36
  %59 = load i32, ptr %long_term_frame_idx189, align 4
  %mul190 = shl nsw i32 %59, 1
  %add191 = or disjoint i32 %mul190, %add_bottom.0
  %long_term_pic_num196 = getelementptr inbounds i8, ptr %58, i64 32
  store i32 %add191, ptr %long_term_pic_num196, align 8
  br label %for.inc198

for.inc198:                                       ; preds = %if.end177, %if.then184
  %indvars.iv.next305 = add nuw nsw i64 %indvars.iv304, 1
  %60 = load i32, ptr %ltref_frames_in_buffer155, align 4
  %61 = zext i32 %60 to i64
  %cmp156 = icmp ult i64 %indvars.iv.next305, %61
  br i1 %cmp156, label %for.body157, label %if.end201

if.end201:                                        ; preds = %for.inc72, %for.inc198, %for.cond47.preheader, %for.cond154.preheader
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @init_lists_i_slice(ptr nocapture noundef writeonly %currSlice) local_unnamed_addr #10 {
entry:
  %listinterviewidx0 = getelementptr inbounds i8, ptr %currSlice, i64 13308
  store i32 0, ptr %listinterviewidx0, align 4
  %listinterviewidx1 = getelementptr inbounds i8, ptr %currSlice, i64 13312
  store i32 0, ptr %listinterviewidx1, align 8
  %listXsize = getelementptr inbounds i8, ptr %currSlice, i64 256
  store i8 0, ptr %listXsize, align 8
  %arrayidx2 = getelementptr inbounds i8, ptr %currSlice, i64 257
  store i8 0, ptr %arrayidx2, align 1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @init_lists_p_slice(ptr nocapture noundef %currSlice) local_unnamed_addr #1 {
entry:
  %0 = load ptr, ptr %currSlice, align 8
  %p_Dpb2 = getelementptr inbounds i8, ptr %currSlice, i64 40
  %1 = load ptr, ptr %p_Dpb2, align 8
  %ThisPOC = getelementptr inbounds i8, ptr %currSlice, i64 104
  %2 = load i32, ptr %ThisPOC, align 8
  %view_id = getelementptr inbounds i8, ptr %currSlice, i64 1176
  %3 = load i32, ptr %view_id, align 8
  %anchor_pic_flag3 = getelementptr inbounds i8, ptr %currSlice, i64 1184
  %4 = load i32, ptr %anchor_pic_flag3, align 8
  %listinterviewidx0 = getelementptr inbounds i8, ptr %currSlice, i64 13308
  store i32 0, ptr %listinterviewidx0, align 4
  %listinterviewidx1 = getelementptr inbounds i8, ptr %currSlice, i64 13312
  store i32 0, ptr %listinterviewidx1, align 8
  %structure = getelementptr inbounds i8, ptr %currSlice, i64 184
  %5 = load i32, ptr %structure, align 8
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %for.cond.preheader, label %if.else

for.cond.preheader:                               ; preds = %entry
  %ref_frames_in_buffer = getelementptr inbounds i8, ptr %1, i64 48
  %6 = load i32, ptr %ref_frames_in_buffer, align 8
  %cmp4613.not = icmp eq i32 %6, 0
  br i1 %cmp4613.not, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %fs_ref = getelementptr inbounds i8, ptr %1, i64 24
  %listX = getelementptr inbounds i8, ptr %currSlice, i64 264
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %7 = phi i32 [ %6, %for.body.lr.ph ], [ %16, %for.inc ]
  %indvars.iv649 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next650, %for.inc ]
  %list0idx.0614 = phi i32 [ 0, %for.body.lr.ph ], [ %list0idx.1, %for.inc ]
  %8 = load ptr, ptr %fs_ref, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %8, i64 %indvars.iv649
  %9 = load ptr, ptr %arrayidx, align 8
  %10 = load i32, ptr %9, align 8
  %cmp5 = icmp eq i32 %10, 3
  br i1 %cmp5, label %if.then6, label %for.inc

if.then6:                                         ; preds = %for.body
  %frame = getelementptr inbounds i8, ptr %9, i64 48
  %11 = load ptr, ptr %frame, align 8
  %used_for_reference = getelementptr inbounds i8, ptr %11, i64 44
  %12 = load i32, ptr %used_for_reference, align 4
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %for.inc, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then6
  %is_long_term = getelementptr inbounds i8, ptr %11, i64 40
  %13 = load i8, ptr %is_long_term, align 8
  %tobool14.not = icmp eq i8 %13, 0
  br i1 %tobool14.not, label %land.lhs.true15, label %for.inc

land.lhs.true15:                                  ; preds = %land.lhs.true
  %view_id20 = getelementptr inbounds i8, ptr %11, i64 344
  %14 = load i32, ptr %view_id20, align 8
  %cmp21 = icmp eq i32 %14, %3
  br i1 %cmp21, label %if.then22, label %for.inc

if.then22:                                        ; preds = %land.lhs.true15
  %15 = load ptr, ptr %listX, align 8
  %inc = add nsw i32 %list0idx.0614, 1
  %idxprom28 = sext i32 %list0idx.0614 to i64
  %arrayidx29 = getelementptr inbounds ptr, ptr %15, i64 %idxprom28
  store ptr %11, ptr %arrayidx29, align 8
  %.pre672 = load i32, ptr %ref_frames_in_buffer, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then22, %land.lhs.true15, %land.lhs.true, %if.then6
  %16 = phi i32 [ %7, %land.lhs.true ], [ %.pre672, %if.then22 ], [ %7, %land.lhs.true15 ], [ %7, %if.then6 ], [ %7, %for.body ]
  %list0idx.1 = phi i32 [ %list0idx.0614, %land.lhs.true ], [ %inc, %if.then22 ], [ %list0idx.0614, %land.lhs.true15 ], [ %list0idx.0614, %if.then6 ], [ %list0idx.0614, %for.body ]
  %indvars.iv.next650 = add nuw nsw i64 %indvars.iv649, 1
  %17 = zext i32 %16 to i64
  %cmp4 = icmp ult i64 %indvars.iv.next650, %17
  br i1 %cmp4, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc, %for.cond.preheader
  %list0idx.0.lcssa = phi i32 [ 0, %for.cond.preheader ], [ %list0idx.1, %for.inc ]
  %listX32 = getelementptr inbounds i8, ptr %currSlice, i64 264
  %18 = load ptr, ptr %listX32, align 8
  %conv = sext i32 %list0idx.0.lcssa to i64
  tail call void @qsort(ptr noundef %18, i64 noundef %conv, i64 noundef 8, ptr noundef nonnull @compare_pic_by_pic_num_desc) #20
  %conv34 = trunc i32 %list0idx.0.lcssa to i8
  %listXsize = getelementptr inbounds i8, ptr %currSlice, i64 256
  store i8 %conv34, ptr %listXsize, align 8
  %ltref_frames_in_buffer = getelementptr inbounds i8, ptr %1, i64 52
  %19 = load i32, ptr %ltref_frames_in_buffer, align 4
  %cmp37617.not = icmp eq i32 %19, 0
  br i1 %cmp37617.not, label %for.end75, label %for.body39.lr.ph

for.body39.lr.ph:                                 ; preds = %for.end
  %fs_ltref = getelementptr inbounds i8, ptr %1, i64 32
  br label %for.body39

for.body39:                                       ; preds = %for.body39.lr.ph, %for.inc73
  %20 = phi i32 [ %19, %for.body39.lr.ph ], [ %28, %for.inc73 ]
  %indvars.iv652 = phi i64 [ 0, %for.body39.lr.ph ], [ %indvars.iv.next653, %for.inc73 ]
  %list0idx.2618 = phi i32 [ %list0idx.0.lcssa, %for.body39.lr.ph ], [ %list0idx.3, %for.inc73 ]
  %21 = load ptr, ptr %fs_ltref, align 8
  %arrayidx41 = getelementptr inbounds ptr, ptr %21, i64 %indvars.iv652
  %22 = load ptr, ptr %arrayidx41, align 8
  %23 = load i32, ptr %22, align 8
  %cmp43 = icmp eq i32 %23, 3
  br i1 %cmp43, label %if.then45, label %for.inc73

if.then45:                                        ; preds = %for.body39
  %frame49 = getelementptr inbounds i8, ptr %22, i64 48
  %24 = load ptr, ptr %frame49, align 8
  %is_long_term50 = getelementptr inbounds i8, ptr %24, i64 40
  %25 = load i8, ptr %is_long_term50, align 8
  %tobool52.not = icmp eq i8 %25, 0
  br i1 %tobool52.not, label %for.inc73, label %land.lhs.true53

land.lhs.true53:                                  ; preds = %if.then45
  %view_id58 = getelementptr inbounds i8, ptr %24, i64 344
  %26 = load i32, ptr %view_id58, align 8
  %cmp59 = icmp eq i32 %26, %3
  br i1 %cmp59, label %if.then61, label %for.inc73

if.then61:                                        ; preds = %land.lhs.true53
  %27 = load ptr, ptr %listX32, align 8
  %inc68 = add nsw i32 %list0idx.2618, 1
  %idxprom69 = sext i32 %list0idx.2618 to i64
  %arrayidx70 = getelementptr inbounds ptr, ptr %27, i64 %idxprom69
  store ptr %24, ptr %arrayidx70, align 8
  %.pre673 = load i32, ptr %ltref_frames_in_buffer, align 4
  br label %for.inc73

for.inc73:                                        ; preds = %for.body39, %if.then61, %land.lhs.true53, %if.then45
  %28 = phi i32 [ %.pre673, %if.then61 ], [ %20, %land.lhs.true53 ], [ %20, %if.then45 ], [ %20, %for.body39 ]
  %list0idx.3 = phi i32 [ %inc68, %if.then61 ], [ %list0idx.2618, %land.lhs.true53 ], [ %list0idx.2618, %if.then45 ], [ %list0idx.2618, %for.body39 ]
  %indvars.iv.next653 = add nuw nsw i64 %indvars.iv652, 1
  %29 = zext i32 %28 to i64
  %cmp37 = icmp ult i64 %indvars.iv.next653, %29
  br i1 %cmp37, label %for.body39, label %for.end75.loopexit

for.end75.loopexit:                               ; preds = %for.inc73
  %.pre674 = load i8, ptr %listXsize, align 8
  %.pre678 = trunc i32 %list0idx.3 to i8
  br label %for.end75

for.end75:                                        ; preds = %for.end75.loopexit, %for.end
  %conv87.pre-phi = phi i8 [ %.pre678, %for.end75.loopexit ], [ %conv34, %for.end ]
  %30 = phi i8 [ %.pre674, %for.end75.loopexit ], [ %conv34, %for.end ]
  %list0idx.2.lcssa = phi i32 [ %list0idx.3, %for.end75.loopexit ], [ %list0idx.0.lcssa, %for.end ]
  %31 = load ptr, ptr %listX32, align 8
  %idxprom81 = sext i8 %30 to i64
  %arrayidx82 = getelementptr inbounds ptr, ptr %31, i64 %idxprom81
  %conv85 = sext i8 %30 to i32
  %sub = sub nsw i32 %list0idx.2.lcssa, %conv85
  %conv86 = sext i32 %sub to i64
  tail call void @qsort(ptr noundef %arrayidx82, i64 noundef %conv86, i64 noundef 8, ptr noundef nonnull @compare_pic_by_lt_pic_num_asc) #20
  store i8 %conv87.pre-phi, ptr %listXsize, align 8
  br label %if.end165

if.else:                                          ; preds = %entry
  %size = getelementptr inbounds i8, ptr %1, i64 40
  %32 = load i32, ptr %size, align 8
  %conv90 = zext i32 %32 to i64
  %call = tail call noalias ptr @calloc(i64 noundef %conv90, i64 noundef 8) #21
  %cmp91 = icmp eq ptr %call, null
  br i1 %cmp91, label %if.then93, label %if.end94

if.then93:                                        ; preds = %if.else
  tail call void @no_mem_exit(ptr noundef nonnull @.str.14) #20
  %.pre = load i32, ptr %size, align 8
  %.pre679 = zext i32 %.pre to i64
  br label %if.end94

if.end94:                                         ; preds = %if.then93, %if.else
  %conv96.pre-phi = phi i64 [ %.pre679, %if.then93 ], [ %conv90, %if.else ]
  %call97 = tail call noalias ptr @calloc(i64 noundef %conv96.pre-phi, i64 noundef 8) #21
  %cmp98 = icmp eq ptr %call97, null
  br i1 %cmp98, label %if.then100, label %if.end101

if.then100:                                       ; preds = %if.end94
  tail call void @no_mem_exit(ptr noundef nonnull @.str.15) #20
  br label %if.end101

if.end101:                                        ; preds = %if.then100, %if.end94
  %ref_frames_in_buffer103 = getelementptr inbounds i8, ptr %1, i64 48
  %33 = load i32, ptr %ref_frames_in_buffer103, align 8
  %cmp104606.not = icmp eq i32 %33, 0
  br i1 %cmp104606.not, label %for.end128, label %for.body106.lr.ph

for.body106.lr.ph:                                ; preds = %if.end101
  %fs_ref107 = getelementptr inbounds i8, ptr %1, i64 24
  %.pre670 = load ptr, ptr %fs_ref107, align 8
  %34 = zext i32 %33 to i64
  %xtraiter = and i64 %34, 1
  %35 = icmp eq i32 %33, 1
  br i1 %35, label %for.end128.loopexit.unr-lcssa, label %for.body106.lr.ph.new

for.body106.lr.ph.new:                            ; preds = %for.body106.lr.ph
  %unroll_iter = and i64 %34, 4294967294
  br label %for.body106

for.body106:                                      ; preds = %for.inc126.1, %for.body106.lr.ph.new
  %indvars.iv = phi i64 [ 0, %for.body106.lr.ph.new ], [ %indvars.iv.next.1, %for.inc126.1 ]
  %list0idx.4607 = phi i32 [ 0, %for.body106.lr.ph.new ], [ %list0idx.5.1, %for.inc126.1 ]
  %niter = phi i64 [ 0, %for.body106.lr.ph.new ], [ %niter.next.1, %for.inc126.1 ]
  %arrayidx109 = getelementptr inbounds ptr, ptr %.pre670, i64 %indvars.iv
  %36 = load ptr, ptr %arrayidx109, align 8
  %is_reference = getelementptr inbounds i8, ptr %36, i64 4
  %37 = load i32, ptr %is_reference, align 4
  %tobool110.not = icmp eq i32 %37, 0
  br i1 %tobool110.not, label %for.inc126, label %land.lhs.true111

land.lhs.true111:                                 ; preds = %for.body106
  %view_id115 = getelementptr inbounds i8, ptr %36, i64 72
  %38 = load i32, ptr %view_id115, align 8
  %cmp116 = icmp eq i32 %38, %3
  br i1 %cmp116, label %if.then118, label %for.inc126

if.then118:                                       ; preds = %land.lhs.true111
  %inc122 = add nsw i32 %list0idx.4607, 1
  %idxprom123 = sext i32 %list0idx.4607 to i64
  %arrayidx124 = getelementptr inbounds ptr, ptr %call, i64 %idxprom123
  store ptr %36, ptr %arrayidx124, align 8
  br label %for.inc126

for.inc126:                                       ; preds = %for.body106, %land.lhs.true111, %if.then118
  %list0idx.5 = phi i32 [ %inc122, %if.then118 ], [ %list0idx.4607, %land.lhs.true111 ], [ %list0idx.4607, %for.body106 ]
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1
  %arrayidx109.1 = getelementptr inbounds ptr, ptr %.pre670, i64 %indvars.iv.next
  %39 = load ptr, ptr %arrayidx109.1, align 8
  %is_reference.1 = getelementptr inbounds i8, ptr %39, i64 4
  %40 = load i32, ptr %is_reference.1, align 4
  %tobool110.not.1 = icmp eq i32 %40, 0
  br i1 %tobool110.not.1, label %for.inc126.1, label %land.lhs.true111.1

land.lhs.true111.1:                               ; preds = %for.inc126
  %view_id115.1 = getelementptr inbounds i8, ptr %39, i64 72
  %41 = load i32, ptr %view_id115.1, align 8
  %cmp116.1 = icmp eq i32 %41, %3
  br i1 %cmp116.1, label %if.then118.1, label %for.inc126.1

if.then118.1:                                     ; preds = %land.lhs.true111.1
  %inc122.1 = add nsw i32 %list0idx.5, 1
  %idxprom123.1 = sext i32 %list0idx.5 to i64
  %arrayidx124.1 = getelementptr inbounds ptr, ptr %call, i64 %idxprom123.1
  store ptr %39, ptr %arrayidx124.1, align 8
  br label %for.inc126.1

for.inc126.1:                                     ; preds = %if.then118.1, %land.lhs.true111.1, %for.inc126
  %list0idx.5.1 = phi i32 [ %inc122.1, %if.then118.1 ], [ %list0idx.5, %land.lhs.true111.1 ], [ %list0idx.5, %for.inc126 ]
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %for.end128.loopexit.unr-lcssa, label %for.body106

for.end128.loopexit.unr-lcssa:                    ; preds = %for.inc126.1, %for.body106.lr.ph
  %list0idx.5.lcssa.ph = phi i32 [ poison, %for.body106.lr.ph ], [ %list0idx.5.1, %for.inc126.1 ]
  %indvars.iv.unr = phi i64 [ 0, %for.body106.lr.ph ], [ %indvars.iv.next.1, %for.inc126.1 ]
  %list0idx.4607.unr = phi i32 [ 0, %for.body106.lr.ph ], [ %list0idx.5.1, %for.inc126.1 ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.end128, label %for.body106.epil

for.body106.epil:                                 ; preds = %for.end128.loopexit.unr-lcssa
  %arrayidx109.epil = getelementptr inbounds ptr, ptr %.pre670, i64 %indvars.iv.unr
  %42 = load ptr, ptr %arrayidx109.epil, align 8
  %is_reference.epil = getelementptr inbounds i8, ptr %42, i64 4
  %43 = load i32, ptr %is_reference.epil, align 4
  %tobool110.not.epil = icmp eq i32 %43, 0
  br i1 %tobool110.not.epil, label %for.end128, label %land.lhs.true111.epil

land.lhs.true111.epil:                            ; preds = %for.body106.epil
  %view_id115.epil = getelementptr inbounds i8, ptr %42, i64 72
  %44 = load i32, ptr %view_id115.epil, align 8
  %cmp116.epil = icmp eq i32 %44, %3
  br i1 %cmp116.epil, label %if.then118.epil, label %for.end128

if.then118.epil:                                  ; preds = %land.lhs.true111.epil
  %inc122.epil = add nsw i32 %list0idx.4607.unr, 1
  %idxprom123.epil = sext i32 %list0idx.4607.unr to i64
  %arrayidx124.epil = getelementptr inbounds ptr, ptr %call, i64 %idxprom123.epil
  store ptr %42, ptr %arrayidx124.epil, align 8
  br label %for.end128

for.end128:                                       ; preds = %for.end128.loopexit.unr-lcssa, %if.then118.epil, %land.lhs.true111.epil, %for.body106.epil, %if.end101
  %list0idx.4.lcssa = phi i32 [ 0, %if.end101 ], [ %list0idx.5.lcssa.ph, %for.end128.loopexit.unr-lcssa ], [ %inc122.epil, %if.then118.epil ], [ %list0idx.4607.unr, %land.lhs.true111.epil ], [ %list0idx.4607.unr, %for.body106.epil ]
  %conv129 = sext i32 %list0idx.4.lcssa to i64
  tail call void @qsort(ptr noundef %call, i64 noundef %conv129, i64 noundef 8, ptr noundef nonnull @compare_fs_by_frame_num_desc) #20
  %listXsize130 = getelementptr inbounds i8, ptr %currSlice, i64 256
  store i8 0, ptr %listXsize130, align 8
  %45 = load i32, ptr %structure, align 8
  %listX133 = getelementptr inbounds i8, ptr %currSlice, i64 264
  %46 = load ptr, ptr %listX133, align 8
  %cmp.i = icmp eq i32 %45, 1
  br i1 %cmp.i, label %while.cond.preheader.i, label %if.end48.i

while.cond.preheader.i:                           ; preds = %for.end128
  %cmp2187.i = icmp sgt i32 %list0idx.4.lcssa, 0
  br i1 %cmp2187.i, label %for.cond.preheader.i, label %gen_pic_list_from_frame_list.exit

for.cond.preheader.i:                             ; preds = %while.cond.preheader.i, %for.end47.i
  %47 = phi i8 [ %65, %for.end47.i ], [ 0, %while.cond.preheader.i ]
  %bot_idx.0190.i = phi i32 [ %bot_idx.2.i, %for.end47.i ], [ 0, %while.cond.preheader.i ]
  %top_idx.0189.i = phi i32 [ %top_idx.2.i, %for.end47.i ], [ 0, %while.cond.preheader.i ]
  %cmp4182.i = icmp slt i32 %top_idx.0189.i, %list0idx.4.lcssa
  br i1 %cmp4182.i, label %for.body.preheader.i, label %for.end.i

for.body.preheader.i:                             ; preds = %for.cond.preheader.i
  %48 = sext i32 %top_idx.0189.i to i64
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i, %for.body.preheader.i
  %indvars.iv.i = phi i64 [ %48, %for.body.preheader.i ], [ %indvars.iv.next.i, %for.inc.i ]
  %arrayidx.i = getelementptr inbounds ptr, ptr %call, i64 %indvars.iv.i
  %49 = load ptr, ptr %arrayidx.i, align 8
  %50 = load i32, ptr %49, align 8
  %and.i = and i32 %50, 1
  %tobool5.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool5.not.i, label %for.inc.i, label %if.then6.i

if.then6.i:                                       ; preds = %for.body.i
  %top_field.i = getelementptr inbounds i8, ptr %49, i64 56
  %51 = load ptr, ptr %top_field.i, align 8
  %used_for_reference.i541 = getelementptr inbounds i8, ptr %51, i64 44
  %52 = load i32, ptr %used_for_reference.i541, align 4
  %tobool.not.i542 = icmp eq i32 %52, 0
  br i1 %tobool.not.i542, label %for.inc.i, label %is_short_ref.exit547

is_short_ref.exit547:                             ; preds = %if.then6.i
  %is_long_term.i544 = getelementptr inbounds i8, ptr %51, i64 40
  %53 = load i8, ptr %is_long_term.i544, align 8
  %tobool1.not.i545.not = icmp eq i8 %53, 0
  br i1 %tobool1.not.i545.not, label %if.then10.i, label %for.inc.i

if.then10.i:                                      ; preds = %is_short_ref.exit547
  %54 = trunc nsw i64 %indvars.iv.i to i32
  %idxprom14.i = sext i8 %47 to i64
  %arrayidx15.i = getelementptr inbounds ptr, ptr %46, i64 %idxprom14.i
  store ptr %51, ptr %arrayidx15.i, align 8
  %55 = load i8, ptr %listXsize130, align 1
  %inc.i = add i8 %55, 1
  store i8 %inc.i, ptr %listXsize130, align 1
  %inc16.i = add nsw i32 %54, 1
  br label %for.end.i

for.inc.i:                                        ; preds = %if.then6.i, %is_short_ref.exit547, %for.body.i
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1
  %lftr.wideiv.i = trunc i64 %indvars.iv.next.i to i32
  %exitcond.not.i = icmp eq i32 %list0idx.4.lcssa, %lftr.wideiv.i
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i

for.end.i:                                        ; preds = %for.inc.i, %if.then10.i, %for.cond.preheader.i
  %56 = phi i8 [ %inc.i, %if.then10.i ], [ %47, %for.cond.preheader.i ], [ %47, %for.inc.i ]
  %top_idx.2.i = phi i32 [ %inc16.i, %if.then10.i ], [ %top_idx.0189.i, %for.cond.preheader.i ], [ %list0idx.4.lcssa, %for.inc.i ]
  %cmp21184.i = icmp slt i32 %bot_idx.0190.i, %list0idx.4.lcssa
  br i1 %cmp21184.i, label %for.body23.preheader.i, label %for.end47.i

for.body23.preheader.i:                           ; preds = %for.end.i
  %57 = sext i32 %bot_idx.0190.i to i64
  br label %for.body23.i

for.body23.i:                                     ; preds = %for.inc45.i, %for.body23.preheader.i
  %indvars.iv212.i = phi i64 [ %57, %for.body23.preheader.i ], [ %indvars.iv.next213.i, %for.inc45.i ]
  %arrayidx25.i = getelementptr inbounds ptr, ptr %call, i64 %indvars.iv212.i
  %58 = load ptr, ptr %arrayidx25.i, align 8
  %59 = load i32, ptr %58, align 8
  %and27.i = and i32 %59, 2
  %tobool28.not.i = icmp eq i32 %and27.i, 0
  br i1 %tobool28.not.i, label %for.inc45.i, label %if.then29.i

if.then29.i:                                      ; preds = %for.body23.i
  %bottom_field.i = getelementptr inbounds i8, ptr %58, i64 64
  %60 = load ptr, ptr %bottom_field.i, align 8
  %used_for_reference.i534 = getelementptr inbounds i8, ptr %60, i64 44
  %61 = load i32, ptr %used_for_reference.i534, align 4
  %tobool.not.i535 = icmp eq i32 %61, 0
  br i1 %tobool.not.i535, label %for.inc45.i, label %is_short_ref.exit540

is_short_ref.exit540:                             ; preds = %if.then29.i
  %is_long_term.i537 = getelementptr inbounds i8, ptr %60, i64 40
  %62 = load i8, ptr %is_long_term.i537, align 8
  %tobool1.not.i538.not = icmp eq i8 %62, 0
  br i1 %tobool1.not.i538.not, label %if.then34.i, label %for.inc45.i

if.then34.i:                                      ; preds = %is_short_ref.exit540
  %63 = trunc nsw i64 %indvars.iv212.i to i32
  %idxprom39.i = sext i8 %56 to i64
  %arrayidx40.i = getelementptr inbounds ptr, ptr %46, i64 %idxprom39.i
  store ptr %60, ptr %arrayidx40.i, align 8
  %64 = load i8, ptr %listXsize130, align 1
  %inc41.i = add i8 %64, 1
  store i8 %inc41.i, ptr %listXsize130, align 1
  %inc42.i = add nsw i32 %63, 1
  br label %for.end47.i

for.inc45.i:                                      ; preds = %if.then29.i, %is_short_ref.exit540, %for.body23.i
  %indvars.iv.next213.i = add nsw i64 %indvars.iv212.i, 1
  %lftr.wideiv215.i = trunc i64 %indvars.iv.next213.i to i32
  %exitcond216.not.i = icmp eq i32 %list0idx.4.lcssa, %lftr.wideiv215.i
  br i1 %exitcond216.not.i, label %for.end47.i, label %for.body23.i

for.end47.i:                                      ; preds = %for.inc45.i, %if.then34.i, %for.end.i
  %65 = phi i8 [ %inc41.i, %if.then34.i ], [ %56, %for.end.i ], [ %56, %for.inc45.i ]
  %bot_idx.2.i = phi i32 [ %inc42.i, %if.then34.i ], [ %bot_idx.0190.i, %for.end.i ], [ %list0idx.4.lcssa, %for.inc45.i ]
  %cmp2.i = icmp slt i32 %top_idx.2.i, %list0idx.4.lcssa
  %cmp3.i = icmp slt i32 %bot_idx.2.i, %list0idx.4.lcssa
  %66 = select i1 %cmp2.i, i1 true, i1 %cmp3.i
  br i1 %66, label %for.cond.preheader.i, label %if.end48.i

if.end48.i:                                       ; preds = %for.end47.i, %for.end128
  %67 = phi i8 [ 0, %for.end128 ], [ %65, %for.end47.i ]
  %top_idx.3.i = phi i32 [ 0, %for.end128 ], [ %top_idx.2.i, %for.end47.i ]
  %bot_idx.3.i = phi i32 [ 0, %for.end128 ], [ %bot_idx.2.i, %for.end47.i ]
  %cmp49.i = icmp eq i32 %45, 2
  br i1 %cmp49.i, label %while.cond52.preheader.i, label %gen_pic_list_from_frame_list.exit

while.cond52.preheader.i:                         ; preds = %if.end48.i
  %cmp53199.i = icmp slt i32 %top_idx.3.i, %list0idx.4.lcssa
  %cmp56200.i = icmp slt i32 %bot_idx.3.i, %list0idx.4.lcssa
  %68 = select i1 %cmp53199.i, i1 true, i1 %cmp56200.i
  br i1 %68, label %for.cond60.preheader.i, label %gen_pic_list_from_frame_list.exit

for.cond60.preheader.i:                           ; preds = %while.cond52.preheader.i, %for.end117.i
  %69 = phi i8 [ %87, %for.end117.i ], [ %67, %while.cond52.preheader.i ]
  %bot_idx.4202.i = phi i32 [ %bot_idx.6.i, %for.end117.i ], [ %bot_idx.3.i, %while.cond52.preheader.i ]
  %top_idx.4201.i = phi i32 [ %top_idx.6.i, %for.end117.i ], [ %top_idx.3.i, %while.cond52.preheader.i ]
  %cmp61193.i = icmp slt i32 %bot_idx.4202.i, %list0idx.4.lcssa
  br i1 %cmp61193.i, label %for.body63.preheader.i, label %for.end88.i

for.body63.preheader.i:                           ; preds = %for.cond60.preheader.i
  %70 = sext i32 %bot_idx.4202.i to i64
  br label %for.body63.i

for.body63.i:                                     ; preds = %for.inc86.i, %for.body63.preheader.i
  %indvars.iv217.i = phi i64 [ %70, %for.body63.preheader.i ], [ %indvars.iv.next218.i, %for.inc86.i ]
  %arrayidx65.i = getelementptr inbounds ptr, ptr %call, i64 %indvars.iv217.i
  %71 = load ptr, ptr %arrayidx65.i, align 8
  %72 = load i32, ptr %71, align 8
  %and67.i = and i32 %72, 2
  %tobool68.not.i = icmp eq i32 %and67.i, 0
  br i1 %tobool68.not.i, label %for.inc86.i, label %if.then69.i

if.then69.i:                                      ; preds = %for.body63.i
  %bottom_field72.i = getelementptr inbounds i8, ptr %71, i64 64
  %73 = load ptr, ptr %bottom_field72.i, align 8
  %used_for_reference.i527 = getelementptr inbounds i8, ptr %73, i64 44
  %74 = load i32, ptr %used_for_reference.i527, align 4
  %tobool.not.i528 = icmp eq i32 %74, 0
  br i1 %tobool.not.i528, label %for.inc86.i, label %is_short_ref.exit533

is_short_ref.exit533:                             ; preds = %if.then69.i
  %is_long_term.i530 = getelementptr inbounds i8, ptr %73, i64 40
  %75 = load i8, ptr %is_long_term.i530, align 8
  %tobool1.not.i531.not = icmp eq i8 %75, 0
  br i1 %tobool1.not.i531.not, label %if.then75.i, label %for.inc86.i

if.then75.i:                                      ; preds = %is_short_ref.exit533
  %76 = trunc nsw i64 %indvars.iv217.i to i32
  %idxprom80.i = sext i8 %69 to i64
  %arrayidx81.i = getelementptr inbounds ptr, ptr %46, i64 %idxprom80.i
  store ptr %73, ptr %arrayidx81.i, align 8
  %77 = load i8, ptr %listXsize130, align 1
  %inc82.i = add i8 %77, 1
  store i8 %inc82.i, ptr %listXsize130, align 1
  %inc83.i = add nsw i32 %76, 1
  br label %for.end88.i

for.inc86.i:                                      ; preds = %if.then69.i, %is_short_ref.exit533, %for.body63.i
  %indvars.iv.next218.i = add nsw i64 %indvars.iv217.i, 1
  %lftr.wideiv220.i = trunc i64 %indvars.iv.next218.i to i32
  %exitcond221.not.i = icmp eq i32 %list0idx.4.lcssa, %lftr.wideiv220.i
  br i1 %exitcond221.not.i, label %for.end88.i, label %for.body63.i

for.end88.i:                                      ; preds = %for.inc86.i, %if.then75.i, %for.cond60.preheader.i
  %78 = phi i8 [ %inc82.i, %if.then75.i ], [ %69, %for.cond60.preheader.i ], [ %69, %for.inc86.i ]
  %bot_idx.6.i = phi i32 [ %inc83.i, %if.then75.i ], [ %bot_idx.4202.i, %for.cond60.preheader.i ], [ %list0idx.4.lcssa, %for.inc86.i ]
  %cmp90196.i = icmp slt i32 %top_idx.4201.i, %list0idx.4.lcssa
  br i1 %cmp90196.i, label %for.body92.preheader.i, label %for.end117.i

for.body92.preheader.i:                           ; preds = %for.end88.i
  %79 = sext i32 %top_idx.4201.i to i64
  br label %for.body92.i

for.body92.i:                                     ; preds = %for.inc115.i, %for.body92.preheader.i
  %indvars.iv222.i = phi i64 [ %79, %for.body92.preheader.i ], [ %indvars.iv.next223.i, %for.inc115.i ]
  %arrayidx94.i = getelementptr inbounds ptr, ptr %call, i64 %indvars.iv222.i
  %80 = load ptr, ptr %arrayidx94.i, align 8
  %81 = load i32, ptr %80, align 8
  %and96.i = and i32 %81, 1
  %tobool97.not.i = icmp eq i32 %and96.i, 0
  br i1 %tobool97.not.i, label %for.inc115.i, label %if.then98.i

if.then98.i:                                      ; preds = %for.body92.i
  %top_field101.i = getelementptr inbounds i8, ptr %80, i64 56
  %82 = load ptr, ptr %top_field101.i, align 8
  %used_for_reference.i = getelementptr inbounds i8, ptr %82, i64 44
  %83 = load i32, ptr %used_for_reference.i, align 4
  %tobool.not.i = icmp eq i32 %83, 0
  br i1 %tobool.not.i, label %for.inc115.i, label %is_short_ref.exit

is_short_ref.exit:                                ; preds = %if.then98.i
  %is_long_term.i = getelementptr inbounds i8, ptr %82, i64 40
  %84 = load i8, ptr %is_long_term.i, align 8
  %tobool1.not.i.not = icmp eq i8 %84, 0
  br i1 %tobool1.not.i.not, label %if.then104.i, label %for.inc115.i

if.then104.i:                                     ; preds = %is_short_ref.exit
  %85 = trunc nsw i64 %indvars.iv222.i to i32
  %idxprom109.i = sext i8 %78 to i64
  %arrayidx110.i = getelementptr inbounds ptr, ptr %46, i64 %idxprom109.i
  store ptr %82, ptr %arrayidx110.i, align 8
  %86 = load i8, ptr %listXsize130, align 1
  %inc111.i = add i8 %86, 1
  store i8 %inc111.i, ptr %listXsize130, align 1
  %inc112.i = add nsw i32 %85, 1
  br label %for.end117.i

for.inc115.i:                                     ; preds = %if.then98.i, %is_short_ref.exit, %for.body92.i
  %indvars.iv.next223.i = add nsw i64 %indvars.iv222.i, 1
  %lftr.wideiv225.i = trunc i64 %indvars.iv.next223.i to i32
  %exitcond226.not.i = icmp eq i32 %list0idx.4.lcssa, %lftr.wideiv225.i
  br i1 %exitcond226.not.i, label %for.end117.i, label %for.body92.i

for.end117.i:                                     ; preds = %for.inc115.i, %if.then104.i, %for.end88.i
  %87 = phi i8 [ %inc111.i, %if.then104.i ], [ %78, %for.end88.i ], [ %78, %for.inc115.i ]
  %top_idx.6.i = phi i32 [ %inc112.i, %if.then104.i ], [ %top_idx.4201.i, %for.end88.i ], [ %list0idx.4.lcssa, %for.inc115.i ]
  %cmp53.i = icmp slt i32 %top_idx.6.i, %list0idx.4.lcssa
  %cmp56.i = icmp slt i32 %bot_idx.6.i, %list0idx.4.lcssa
  %88 = select i1 %cmp53.i, i1 true, i1 %cmp56.i
  br i1 %88, label %for.cond60.preheader.i, label %gen_pic_list_from_frame_list.exit

gen_pic_list_from_frame_list.exit:                ; preds = %for.end117.i, %while.cond.preheader.i, %if.end48.i, %while.cond52.preheader.i
  %ltref_frames_in_buffer138 = getelementptr inbounds i8, ptr %1, i64 52
  %89 = load i32, ptr %ltref_frames_in_buffer138, align 4
  %cmp139609.not = icmp eq i32 %89, 0
  br i1 %cmp139609.not, label %for.end158, label %for.body141.lr.ph

for.body141.lr.ph:                                ; preds = %gen_pic_list_from_frame_list.exit
  %fs_ltref142 = getelementptr inbounds i8, ptr %1, i64 32
  %.pre671 = load ptr, ptr %fs_ltref142, align 8
  %90 = zext i32 %89 to i64
  %xtraiter733 = and i64 %90, 1
  %91 = icmp eq i32 %89, 1
  br i1 %91, label %for.end158.loopexit.unr-lcssa, label %for.body141.lr.ph.new

for.body141.lr.ph.new:                            ; preds = %for.body141.lr.ph
  %unroll_iter736 = and i64 %90, 4294967294
  br label %for.body141

for.body141:                                      ; preds = %for.inc156.1, %for.body141.lr.ph.new
  %indvars.iv646 = phi i64 [ 0, %for.body141.lr.ph.new ], [ %indvars.iv.next647.1, %for.inc156.1 ]
  %listltidx.0610 = phi i32 [ 0, %for.body141.lr.ph.new ], [ %listltidx.1.1, %for.inc156.1 ]
  %niter737 = phi i64 [ 0, %for.body141.lr.ph.new ], [ %niter737.next.1, %for.inc156.1 ]
  %arrayidx144 = getelementptr inbounds ptr, ptr %.pre671, i64 %indvars.iv646
  %92 = load ptr, ptr %arrayidx144, align 8
  %view_id145 = getelementptr inbounds i8, ptr %92, i64 72
  %93 = load i32, ptr %view_id145, align 8
  %cmp146 = icmp eq i32 %93, %3
  br i1 %cmp146, label %if.then148, label %for.inc156

if.then148:                                       ; preds = %for.body141
  %inc152 = add nsw i32 %listltidx.0610, 1
  %idxprom153 = sext i32 %listltidx.0610 to i64
  %arrayidx154 = getelementptr inbounds ptr, ptr %call97, i64 %idxprom153
  store ptr %92, ptr %arrayidx154, align 8
  br label %for.inc156

for.inc156:                                       ; preds = %for.body141, %if.then148
  %listltidx.1 = phi i32 [ %inc152, %if.then148 ], [ %listltidx.0610, %for.body141 ]
  %indvars.iv.next647 = or disjoint i64 %indvars.iv646, 1
  %arrayidx144.1 = getelementptr inbounds ptr, ptr %.pre671, i64 %indvars.iv.next647
  %94 = load ptr, ptr %arrayidx144.1, align 8
  %view_id145.1 = getelementptr inbounds i8, ptr %94, i64 72
  %95 = load i32, ptr %view_id145.1, align 8
  %cmp146.1 = icmp eq i32 %95, %3
  br i1 %cmp146.1, label %if.then148.1, label %for.inc156.1

if.then148.1:                                     ; preds = %for.inc156
  %inc152.1 = add nsw i32 %listltidx.1, 1
  %idxprom153.1 = sext i32 %listltidx.1 to i64
  %arrayidx154.1 = getelementptr inbounds ptr, ptr %call97, i64 %idxprom153.1
  store ptr %94, ptr %arrayidx154.1, align 8
  br label %for.inc156.1

for.inc156.1:                                     ; preds = %if.then148.1, %for.inc156
  %listltidx.1.1 = phi i32 [ %inc152.1, %if.then148.1 ], [ %listltidx.1, %for.inc156 ]
  %indvars.iv.next647.1 = add nuw nsw i64 %indvars.iv646, 2
  %niter737.next.1 = add i64 %niter737, 2
  %niter737.ncmp.1.not = icmp eq i64 %niter737.next.1, %unroll_iter736
  br i1 %niter737.ncmp.1.not, label %for.end158.loopexit.unr-lcssa, label %for.body141

for.end158.loopexit.unr-lcssa:                    ; preds = %for.inc156.1, %for.body141.lr.ph
  %listltidx.1.lcssa.ph = phi i32 [ poison, %for.body141.lr.ph ], [ %listltidx.1.1, %for.inc156.1 ]
  %indvars.iv646.unr = phi i64 [ 0, %for.body141.lr.ph ], [ %indvars.iv.next647.1, %for.inc156.1 ]
  %listltidx.0610.unr = phi i32 [ 0, %for.body141.lr.ph ], [ %listltidx.1.1, %for.inc156.1 ]
  %lcmp.mod734.not = icmp eq i64 %xtraiter733, 0
  br i1 %lcmp.mod734.not, label %for.end158, label %for.body141.epil

for.body141.epil:                                 ; preds = %for.end158.loopexit.unr-lcssa
  %arrayidx144.epil = getelementptr inbounds ptr, ptr %.pre671, i64 %indvars.iv646.unr
  %96 = load ptr, ptr %arrayidx144.epil, align 8
  %view_id145.epil = getelementptr inbounds i8, ptr %96, i64 72
  %97 = load i32, ptr %view_id145.epil, align 8
  %cmp146.epil = icmp eq i32 %97, %3
  br i1 %cmp146.epil, label %if.then148.epil, label %for.end158

if.then148.epil:                                  ; preds = %for.body141.epil
  %inc152.epil = add nsw i32 %listltidx.0610.unr, 1
  %idxprom153.epil = sext i32 %listltidx.0610.unr to i64
  %arrayidx154.epil = getelementptr inbounds ptr, ptr %call97, i64 %idxprom153.epil
  store ptr %96, ptr %arrayidx154.epil, align 8
  br label %for.end158

for.end158:                                       ; preds = %for.end158.loopexit.unr-lcssa, %if.then148.epil, %for.body141.epil, %gen_pic_list_from_frame_list.exit
  %listltidx.0.lcssa = phi i32 [ 0, %gen_pic_list_from_frame_list.exit ], [ %listltidx.1.lcssa.ph, %for.end158.loopexit.unr-lcssa ], [ %inc152.epil, %if.then148.epil ], [ %listltidx.0610.unr, %for.body141.epil ]
  %conv159 = sext i32 %listltidx.0.lcssa to i64
  tail call void @qsort(ptr noundef %call97, i64 noundef %conv159, i64 noundef 8, ptr noundef nonnull @compare_fs_by_lt_pic_idx_asc) #20
  %98 = load i32, ptr %structure, align 8
  %99 = load ptr, ptr %listX133, align 8
  %cmp.i399 = icmp eq i32 %98, 1
  br i1 %cmp.i399, label %while.cond.preheader.i460, label %if.end48.i400

while.cond.preheader.i460:                        ; preds = %for.end158
  %cmp2187.i461 = icmp sgt i32 %listltidx.0.lcssa, 0
  br i1 %cmp2187.i461, label %for.cond.preheader.i462, label %gen_pic_list_from_frame_list.exit515

for.cond.preheader.i462:                          ; preds = %while.cond.preheader.i460, %for.end47.i469
  %bot_idx.0190.i463 = phi i32 [ %bot_idx.2.i470, %for.end47.i469 ], [ 0, %while.cond.preheader.i460 ]
  %top_idx.0189.i464 = phi i32 [ %top_idx.2.i467, %for.end47.i469 ], [ 0, %while.cond.preheader.i460 ]
  %cmp4182.i465 = icmp slt i32 %top_idx.0189.i464, %listltidx.0.lcssa
  br i1 %cmp4182.i465, label %for.body.preheader.i494, label %for.end.i466

for.body.preheader.i494:                          ; preds = %for.cond.preheader.i462
  %100 = sext i32 %top_idx.0189.i464 to i64
  br label %for.body.i495

for.body.i495:                                    ; preds = %for.inc.i511, %for.body.preheader.i494
  %indvars.iv.i496 = phi i64 [ %100, %for.body.preheader.i494 ], [ %indvars.iv.next.i512, %for.inc.i511 ]
  %arrayidx.i497 = getelementptr inbounds ptr, ptr %call97, i64 %indvars.iv.i496
  %101 = load ptr, ptr %arrayidx.i497, align 8
  %102 = load i32, ptr %101, align 8
  %and.i498 = and i32 %102, 1
  %tobool5.not.i499 = icmp eq i32 %and.i498, 0
  br i1 %tobool5.not.i499, label %for.inc.i511, label %if.then6.i500

if.then6.i500:                                    ; preds = %for.body.i495
  %top_field.i501 = getelementptr inbounds i8, ptr %101, i64 56
  %103 = load ptr, ptr %top_field.i501, align 8
  %used_for_reference.i567 = getelementptr inbounds i8, ptr %103, i64 44
  %104 = load i32, ptr %used_for_reference.i567, align 4
  %tobool.not.i568 = icmp eq i32 %104, 0
  br i1 %tobool.not.i568, label %for.inc.i511, label %is_long_ref.exit573

is_long_ref.exit573:                              ; preds = %if.then6.i500
  %is_long_term.i570 = getelementptr inbounds i8, ptr %103, i64 40
  %105 = load i8, ptr %is_long_term.i570, align 8
  %tobool1.i571.not = icmp eq i8 %105, 0
  br i1 %tobool1.i571.not, label %for.inc.i511, label %if.then10.i504

if.then10.i504:                                   ; preds = %is_long_ref.exit573
  %106 = trunc nsw i64 %indvars.iv.i496 to i32
  %107 = load i8, ptr %listXsize130, align 1
  %idxprom14.i507 = sext i8 %107 to i64
  %arrayidx15.i508 = getelementptr inbounds ptr, ptr %99, i64 %idxprom14.i507
  store ptr %103, ptr %arrayidx15.i508, align 8
  %108 = load i8, ptr %listXsize130, align 1
  %inc.i509 = add i8 %108, 1
  store i8 %inc.i509, ptr %listXsize130, align 1
  %inc16.i510 = add nsw i32 %106, 1
  br label %for.end.i466

for.inc.i511:                                     ; preds = %if.then6.i500, %is_long_ref.exit573, %for.body.i495
  %indvars.iv.next.i512 = add nsw i64 %indvars.iv.i496, 1
  %lftr.wideiv.i513 = trunc i64 %indvars.iv.next.i512 to i32
  %exitcond.not.i514 = icmp eq i32 %listltidx.0.lcssa, %lftr.wideiv.i513
  br i1 %exitcond.not.i514, label %for.end.i466, label %for.body.i495

for.end.i466:                                     ; preds = %for.inc.i511, %if.then10.i504, %for.cond.preheader.i462
  %top_idx.2.i467 = phi i32 [ %inc16.i510, %if.then10.i504 ], [ %top_idx.0189.i464, %for.cond.preheader.i462 ], [ %listltidx.0.lcssa, %for.inc.i511 ]
  %cmp21184.i468 = icmp slt i32 %bot_idx.0190.i463, %listltidx.0.lcssa
  br i1 %cmp21184.i468, label %for.body23.preheader.i473, label %for.end47.i469

for.body23.preheader.i473:                        ; preds = %for.end.i466
  %109 = sext i32 %bot_idx.0190.i463 to i64
  br label %for.body23.i474

for.body23.i474:                                  ; preds = %for.inc45.i490, %for.body23.preheader.i473
  %indvars.iv212.i475 = phi i64 [ %109, %for.body23.preheader.i473 ], [ %indvars.iv.next213.i491, %for.inc45.i490 ]
  %arrayidx25.i476 = getelementptr inbounds ptr, ptr %call97, i64 %indvars.iv212.i475
  %110 = load ptr, ptr %arrayidx25.i476, align 8
  %111 = load i32, ptr %110, align 8
  %and27.i477 = and i32 %111, 2
  %tobool28.not.i478 = icmp eq i32 %and27.i477, 0
  br i1 %tobool28.not.i478, label %for.inc45.i490, label %if.then29.i479

if.then29.i479:                                   ; preds = %for.body23.i474
  %bottom_field.i480 = getelementptr inbounds i8, ptr %110, i64 64
  %112 = load ptr, ptr %bottom_field.i480, align 8
  %used_for_reference.i560 = getelementptr inbounds i8, ptr %112, i64 44
  %113 = load i32, ptr %used_for_reference.i560, align 4
  %tobool.not.i561 = icmp eq i32 %113, 0
  br i1 %tobool.not.i561, label %for.inc45.i490, label %is_long_ref.exit566

is_long_ref.exit566:                              ; preds = %if.then29.i479
  %is_long_term.i563 = getelementptr inbounds i8, ptr %112, i64 40
  %114 = load i8, ptr %is_long_term.i563, align 8
  %tobool1.i564.not = icmp eq i8 %114, 0
  br i1 %tobool1.i564.not, label %for.inc45.i490, label %if.then34.i483

if.then34.i483:                                   ; preds = %is_long_ref.exit566
  %115 = trunc nsw i64 %indvars.iv212.i475 to i32
  %116 = load i8, ptr %listXsize130, align 1
  %idxprom39.i486 = sext i8 %116 to i64
  %arrayidx40.i487 = getelementptr inbounds ptr, ptr %99, i64 %idxprom39.i486
  store ptr %112, ptr %arrayidx40.i487, align 8
  %117 = load i8, ptr %listXsize130, align 1
  %inc41.i488 = add i8 %117, 1
  store i8 %inc41.i488, ptr %listXsize130, align 1
  %inc42.i489 = add nsw i32 %115, 1
  br label %for.end47.i469

for.inc45.i490:                                   ; preds = %if.then29.i479, %is_long_ref.exit566, %for.body23.i474
  %indvars.iv.next213.i491 = add nsw i64 %indvars.iv212.i475, 1
  %lftr.wideiv215.i492 = trunc i64 %indvars.iv.next213.i491 to i32
  %exitcond216.not.i493 = icmp eq i32 %listltidx.0.lcssa, %lftr.wideiv215.i492
  br i1 %exitcond216.not.i493, label %for.end47.i469, label %for.body23.i474

for.end47.i469:                                   ; preds = %for.inc45.i490, %if.then34.i483, %for.end.i466
  %bot_idx.2.i470 = phi i32 [ %inc42.i489, %if.then34.i483 ], [ %bot_idx.0190.i463, %for.end.i466 ], [ %listltidx.0.lcssa, %for.inc45.i490 ]
  %cmp2.i471 = icmp slt i32 %top_idx.2.i467, %listltidx.0.lcssa
  %cmp3.i472 = icmp slt i32 %bot_idx.2.i470, %listltidx.0.lcssa
  %118 = select i1 %cmp2.i471, i1 true, i1 %cmp3.i472
  br i1 %118, label %for.cond.preheader.i462, label %if.end48.i400

if.end48.i400:                                    ; preds = %for.end47.i469, %for.end158
  %top_idx.3.i401 = phi i32 [ 0, %for.end158 ], [ %top_idx.2.i467, %for.end47.i469 ]
  %bot_idx.3.i402 = phi i32 [ 0, %for.end158 ], [ %bot_idx.2.i470, %for.end47.i469 ]
  %cmp49.i403 = icmp eq i32 %98, 2
  br i1 %cmp49.i403, label %while.cond52.preheader.i404, label %gen_pic_list_from_frame_list.exit515

while.cond52.preheader.i404:                      ; preds = %if.end48.i400
  %cmp53199.i405 = icmp slt i32 %top_idx.3.i401, %listltidx.0.lcssa
  %cmp56200.i406 = icmp slt i32 %bot_idx.3.i402, %listltidx.0.lcssa
  %119 = select i1 %cmp53199.i405, i1 true, i1 %cmp56200.i406
  br i1 %119, label %for.cond60.preheader.i407, label %gen_pic_list_from_frame_list.exit515

for.cond60.preheader.i407:                        ; preds = %while.cond52.preheader.i404, %for.end117.i414
  %bot_idx.4202.i408 = phi i32 [ %bot_idx.6.i412, %for.end117.i414 ], [ %bot_idx.3.i402, %while.cond52.preheader.i404 ]
  %top_idx.4201.i409 = phi i32 [ %top_idx.6.i415, %for.end117.i414 ], [ %top_idx.3.i401, %while.cond52.preheader.i404 ]
  %cmp61193.i410 = icmp slt i32 %bot_idx.4202.i408, %listltidx.0.lcssa
  br i1 %cmp61193.i410, label %for.body63.preheader.i439, label %for.end88.i411

for.body63.preheader.i439:                        ; preds = %for.cond60.preheader.i407
  %120 = sext i32 %bot_idx.4202.i408 to i64
  br label %for.body63.i440

for.body63.i440:                                  ; preds = %for.inc86.i456, %for.body63.preheader.i439
  %indvars.iv217.i441 = phi i64 [ %120, %for.body63.preheader.i439 ], [ %indvars.iv.next218.i457, %for.inc86.i456 ]
  %arrayidx65.i442 = getelementptr inbounds ptr, ptr %call97, i64 %indvars.iv217.i441
  %121 = load ptr, ptr %arrayidx65.i442, align 8
  %122 = load i32, ptr %121, align 8
  %and67.i443 = and i32 %122, 2
  %tobool68.not.i444 = icmp eq i32 %and67.i443, 0
  br i1 %tobool68.not.i444, label %for.inc86.i456, label %if.then69.i445

if.then69.i445:                                   ; preds = %for.body63.i440
  %bottom_field72.i446 = getelementptr inbounds i8, ptr %121, i64 64
  %123 = load ptr, ptr %bottom_field72.i446, align 8
  %used_for_reference.i553 = getelementptr inbounds i8, ptr %123, i64 44
  %124 = load i32, ptr %used_for_reference.i553, align 4
  %tobool.not.i554 = icmp eq i32 %124, 0
  br i1 %tobool.not.i554, label %for.inc86.i456, label %is_long_ref.exit559

is_long_ref.exit559:                              ; preds = %if.then69.i445
  %is_long_term.i556 = getelementptr inbounds i8, ptr %123, i64 40
  %125 = load i8, ptr %is_long_term.i556, align 8
  %tobool1.i557.not = icmp eq i8 %125, 0
  br i1 %tobool1.i557.not, label %for.inc86.i456, label %if.then75.i449

if.then75.i449:                                   ; preds = %is_long_ref.exit559
  %126 = trunc nsw i64 %indvars.iv217.i441 to i32
  %127 = load i8, ptr %listXsize130, align 1
  %idxprom80.i452 = sext i8 %127 to i64
  %arrayidx81.i453 = getelementptr inbounds ptr, ptr %99, i64 %idxprom80.i452
  store ptr %123, ptr %arrayidx81.i453, align 8
  %128 = load i8, ptr %listXsize130, align 1
  %inc82.i454 = add i8 %128, 1
  store i8 %inc82.i454, ptr %listXsize130, align 1
  %inc83.i455 = add nsw i32 %126, 1
  br label %for.end88.i411

for.inc86.i456:                                   ; preds = %if.then69.i445, %is_long_ref.exit559, %for.body63.i440
  %indvars.iv.next218.i457 = add nsw i64 %indvars.iv217.i441, 1
  %lftr.wideiv220.i458 = trunc i64 %indvars.iv.next218.i457 to i32
  %exitcond221.not.i459 = icmp eq i32 %listltidx.0.lcssa, %lftr.wideiv220.i458
  br i1 %exitcond221.not.i459, label %for.end88.i411, label %for.body63.i440

for.end88.i411:                                   ; preds = %for.inc86.i456, %if.then75.i449, %for.cond60.preheader.i407
  %bot_idx.6.i412 = phi i32 [ %inc83.i455, %if.then75.i449 ], [ %bot_idx.4202.i408, %for.cond60.preheader.i407 ], [ %listltidx.0.lcssa, %for.inc86.i456 ]
  %cmp90196.i413 = icmp slt i32 %top_idx.4201.i409, %listltidx.0.lcssa
  br i1 %cmp90196.i413, label %for.body92.preheader.i418, label %for.end117.i414

for.body92.preheader.i418:                        ; preds = %for.end88.i411
  %129 = sext i32 %top_idx.4201.i409 to i64
  br label %for.body92.i419

for.body92.i419:                                  ; preds = %for.inc115.i435, %for.body92.preheader.i418
  %indvars.iv222.i420 = phi i64 [ %129, %for.body92.preheader.i418 ], [ %indvars.iv.next223.i436, %for.inc115.i435 ]
  %arrayidx94.i421 = getelementptr inbounds ptr, ptr %call97, i64 %indvars.iv222.i420
  %130 = load ptr, ptr %arrayidx94.i421, align 8
  %131 = load i32, ptr %130, align 8
  %and96.i422 = and i32 %131, 1
  %tobool97.not.i423 = icmp eq i32 %and96.i422, 0
  br i1 %tobool97.not.i423, label %for.inc115.i435, label %if.then98.i424

if.then98.i424:                                   ; preds = %for.body92.i419
  %top_field101.i425 = getelementptr inbounds i8, ptr %130, i64 56
  %132 = load ptr, ptr %top_field101.i425, align 8
  %used_for_reference.i548 = getelementptr inbounds i8, ptr %132, i64 44
  %133 = load i32, ptr %used_for_reference.i548, align 4
  %tobool.not.i549 = icmp eq i32 %133, 0
  br i1 %tobool.not.i549, label %for.inc115.i435, label %is_long_ref.exit

is_long_ref.exit:                                 ; preds = %if.then98.i424
  %is_long_term.i551 = getelementptr inbounds i8, ptr %132, i64 40
  %134 = load i8, ptr %is_long_term.i551, align 8
  %tobool1.i.not = icmp eq i8 %134, 0
  br i1 %tobool1.i.not, label %for.inc115.i435, label %if.then104.i428

if.then104.i428:                                  ; preds = %is_long_ref.exit
  %135 = trunc nsw i64 %indvars.iv222.i420 to i32
  %136 = load i8, ptr %listXsize130, align 1
  %idxprom109.i431 = sext i8 %136 to i64
  %arrayidx110.i432 = getelementptr inbounds ptr, ptr %99, i64 %idxprom109.i431
  store ptr %132, ptr %arrayidx110.i432, align 8
  %137 = load i8, ptr %listXsize130, align 1
  %inc111.i433 = add i8 %137, 1
  store i8 %inc111.i433, ptr %listXsize130, align 1
  %inc112.i434 = add nsw i32 %135, 1
  br label %for.end117.i414

for.inc115.i435:                                  ; preds = %if.then98.i424, %is_long_ref.exit, %for.body92.i419
  %indvars.iv.next223.i436 = add nsw i64 %indvars.iv222.i420, 1
  %lftr.wideiv225.i437 = trunc i64 %indvars.iv.next223.i436 to i32
  %exitcond226.not.i438 = icmp eq i32 %listltidx.0.lcssa, %lftr.wideiv225.i437
  br i1 %exitcond226.not.i438, label %for.end117.i414, label %for.body92.i419

for.end117.i414:                                  ; preds = %for.inc115.i435, %if.then104.i428, %for.end88.i411
  %top_idx.6.i415 = phi i32 [ %inc112.i434, %if.then104.i428 ], [ %top_idx.4201.i409, %for.end88.i411 ], [ %listltidx.0.lcssa, %for.inc115.i435 ]
  %cmp53.i416 = icmp slt i32 %top_idx.6.i415, %listltidx.0.lcssa
  %cmp56.i417 = icmp slt i32 %bot_idx.6.i412, %listltidx.0.lcssa
  %138 = select i1 %cmp53.i416, i1 true, i1 %cmp56.i417
  br i1 %138, label %for.cond60.preheader.i407, label %gen_pic_list_from_frame_list.exit515

gen_pic_list_from_frame_list.exit515:             ; preds = %for.end117.i414, %while.cond.preheader.i460, %if.end48.i400, %while.cond52.preheader.i404
  tail call void @free(ptr noundef %call) #20
  tail call void @free(ptr noundef %call97) #20
  br label %if.end165

if.end165:                                        ; preds = %gen_pic_list_from_frame_list.exit515, %for.end75
  %listXsize166 = getelementptr inbounds i8, ptr %currSlice, i64 256
  %arrayidx167 = getelementptr inbounds i8, ptr %currSlice, i64 257
  store i8 0, ptr %arrayidx167, align 1
  %svc_extension_flag = getelementptr inbounds i8, ptr %currSlice, i64 32
  %139 = load i32, ptr %svc_extension_flag, align 8
  %cmp168 = icmp eq i32 %139, 0
  br i1 %cmp168, label %if.then170, label %if.end220

if.then170:                                       ; preds = %if.end165
  %size171 = getelementptr inbounds i8, ptr %1, i64 40
  %140 = load i32, ptr %size171, align 8
  %conv172 = zext i32 %140 to i64
  %call173 = tail call noalias ptr @calloc(i64 noundef %conv172, i64 noundef 8) #21
  %fs_listinterview0 = getelementptr inbounds i8, ptr %currSlice, i64 13320
  store ptr %call173, ptr %fs_listinterview0, align 8
  %cmp175 = icmp eq ptr %call173, null
  br i1 %cmp175, label %if.then177, label %if.end178

if.then177:                                       ; preds = %if.then170
  tail call void @no_mem_exit(ptr noundef nonnull @.str.16) #20
  br label %if.end178

if.end178:                                        ; preds = %if.then177, %if.then170
  %141 = load i32, ptr %structure, align 8
  %cmp183 = icmp eq i32 %141, 0
  br i1 %cmp183, label %if.then185, label %if.else208

if.then185:                                       ; preds = %if.end178
  %142 = load i8, ptr %listXsize166, align 8
  %143 = load ptr, ptr %fs_listinterview0, align 8
  tail call void @append_interview_list(ptr noundef nonnull %1, i32 noundef 0, i32 noundef 0, ptr noundef %143, ptr noundef nonnull %listinterviewidx0, i32 noundef %2, i32 noundef %3, i32 noundef %4)
  %144 = load i32, ptr %listinterviewidx0, align 4
  %cmp190621.not = icmp eq i32 %144, 0
  br i1 %cmp190621.not, label %for.end204, label %for.body192.lr.ph

for.body192.lr.ph:                                ; preds = %if.then185
  %listX197 = getelementptr inbounds i8, ptr %currSlice, i64 264
  %145 = sext i8 %142 to i64
  br label %for.body192

for.body192:                                      ; preds = %for.body192.lr.ph, %for.body192
  %indvars.iv657 = phi i64 [ %145, %for.body192.lr.ph ], [ %indvars.iv.next658, %for.body192 ]
  %indvars.iv655 = phi i64 [ 0, %for.body192.lr.ph ], [ %indvars.iv.next656, %for.body192 ]
  %146 = load ptr, ptr %fs_listinterview0, align 8
  %arrayidx195 = getelementptr inbounds ptr, ptr %146, i64 %indvars.iv655
  %147 = load ptr, ptr %arrayidx195, align 8
  %frame196 = getelementptr inbounds i8, ptr %147, i64 48
  %148 = load ptr, ptr %frame196, align 8
  %149 = load ptr, ptr %listX197, align 8
  %indvars.iv.next658 = add nsw i64 %indvars.iv657, 1
  %arrayidx201 = getelementptr inbounds ptr, ptr %149, i64 %indvars.iv657
  store ptr %148, ptr %arrayidx201, align 8
  %indvars.iv.next656 = add nuw nsw i64 %indvars.iv655, 1
  %150 = load i32, ptr %listinterviewidx0, align 4
  %151 = zext i32 %150 to i64
  %cmp190 = icmp ult i64 %indvars.iv.next656, %151
  br i1 %cmp190, label %for.body192, label %for.end204.loopexit

for.end204.loopexit:                              ; preds = %for.body192
  %152 = trunc i64 %indvars.iv.next658 to i8
  br label %for.end204

for.end204:                                       ; preds = %for.end204.loopexit, %if.then185
  %list0idx.6.lcssa = phi i8 [ %142, %if.then185 ], [ %152, %for.end204.loopexit ]
  store i8 %list0idx.6.lcssa, ptr %listXsize166, align 8
  br label %if.end220

if.else208:                                       ; preds = %if.end178
  %153 = load ptr, ptr %fs_listinterview0, align 8
  tail call void @append_interview_list(ptr noundef nonnull %1, i32 noundef %141, i32 noundef 0, ptr noundef %153, ptr noundef nonnull %listinterviewidx0, i32 noundef %2, i32 noundef %3, i32 noundef %4)
  %154 = load i32, ptr %structure, align 8
  %155 = load ptr, ptr %fs_listinterview0, align 8
  %156 = load i32, ptr %listinterviewidx0, align 4
  %listX215 = getelementptr inbounds i8, ptr %currSlice, i64 264
  %157 = load ptr, ptr %listX215, align 8
  switch i32 %154, label %if.end220 [
    i32 1, label %for.cond.preheader.i520
    i32 2, label %if.then7.i
  ]

for.cond.preheader.i520:                          ; preds = %if.else208
  %cmp134.i = icmp sgt i32 %156, 0
  br i1 %cmp134.i, label %for.body.preheader.i521, label %if.end220

for.body.preheader.i521:                          ; preds = %for.cond.preheader.i520
  %wide.trip.count43.i = zext nneg i32 %156 to i64
  %.pre45.i = load i8, ptr %listXsize166, align 1
  %xtraiter742 = and i64 %wide.trip.count43.i, 1
  %158 = icmp eq i32 %156, 1
  br i1 %158, label %if.end220.loopexit.unr-lcssa, label %for.body.preheader.i521.new

for.body.preheader.i521.new:                      ; preds = %for.body.preheader.i521
  %unroll_iter745 = and i64 %wide.trip.count43.i, 2147483646
  br label %for.body.i522

for.body.i522:                                    ; preds = %for.body.i522, %for.body.preheader.i521.new
  %159 = phi i8 [ %.pre45.i, %for.body.preheader.i521.new ], [ %inc.i525.1, %for.body.i522 ]
  %indvars.iv40.i = phi i64 [ 0, %for.body.preheader.i521.new ], [ %indvars.iv.next41.i.1, %for.body.i522 ]
  %niter746 = phi i64 [ 0, %for.body.preheader.i521.new ], [ %niter746.next.1, %for.body.i522 ]
  %arrayidx.i523 = getelementptr inbounds ptr, ptr %155, i64 %indvars.iv40.i
  %160 = load ptr, ptr %arrayidx.i523, align 8
  %top_field.i524 = getelementptr inbounds i8, ptr %160, i64 56
  %161 = load ptr, ptr %top_field.i524, align 8
  %idxprom2.i = sext i8 %159 to i64
  %arrayidx3.i = getelementptr inbounds ptr, ptr %157, i64 %idxprom2.i
  store ptr %161, ptr %arrayidx3.i, align 8
  %162 = load i8, ptr %listXsize166, align 1
  %inc.i525 = add i8 %162, 1
  store i8 %inc.i525, ptr %listXsize166, align 1
  %indvars.iv.next41.i = or disjoint i64 %indvars.iv40.i, 1
  %arrayidx.i523.1 = getelementptr inbounds ptr, ptr %155, i64 %indvars.iv.next41.i
  %163 = load ptr, ptr %arrayidx.i523.1, align 8
  %top_field.i524.1 = getelementptr inbounds i8, ptr %163, i64 56
  %164 = load ptr, ptr %top_field.i524.1, align 8
  %idxprom2.i.1 = sext i8 %inc.i525 to i64
  %arrayidx3.i.1 = getelementptr inbounds ptr, ptr %157, i64 %idxprom2.i.1
  store ptr %164, ptr %arrayidx3.i.1, align 8
  %165 = load i8, ptr %listXsize166, align 1
  %inc.i525.1 = add i8 %165, 1
  store i8 %inc.i525.1, ptr %listXsize166, align 1
  %indvars.iv.next41.i.1 = add nuw nsw i64 %indvars.iv40.i, 2
  %niter746.next.1 = add i64 %niter746, 2
  %niter746.ncmp.1 = icmp eq i64 %niter746.next.1, %unroll_iter745
  br i1 %niter746.ncmp.1, label %if.end220.loopexit.unr-lcssa, label %for.body.i522

if.then7.i:                                       ; preds = %if.else208
  %cmp936.i = icmp sgt i32 %156, 0
  br i1 %cmp936.i, label %for.body11.preheader.i, label %if.end220

for.body11.preheader.i:                           ; preds = %if.then7.i
  %wide.trip.count.i = zext nneg i32 %156 to i64
  %.pre.i = load i8, ptr %listXsize166, align 1
  %xtraiter738 = and i64 %wide.trip.count.i, 1
  %166 = icmp eq i32 %156, 1
  br i1 %166, label %if.end220.loopexit715.unr-lcssa, label %for.body11.preheader.i.new

for.body11.preheader.i.new:                       ; preds = %for.body11.preheader.i
  %unroll_iter740 = and i64 %wide.trip.count.i, 2147483646
  br label %for.body11.i

for.body11.i:                                     ; preds = %for.body11.i, %for.body11.preheader.i.new
  %167 = phi i8 [ %.pre.i, %for.body11.preheader.i.new ], [ %inc17.i.1, %for.body11.i ]
  %indvars.iv.i516 = phi i64 [ 0, %for.body11.preheader.i.new ], [ %indvars.iv.next.i518.1, %for.body11.i ]
  %niter741 = phi i64 [ 0, %for.body11.preheader.i.new ], [ %niter741.next.1, %for.body11.i ]
  %arrayidx13.i = getelementptr inbounds ptr, ptr %155, i64 %indvars.iv.i516
  %168 = load ptr, ptr %arrayidx13.i, align 8
  %bottom_field.i517 = getelementptr inbounds i8, ptr %168, i64 64
  %169 = load ptr, ptr %bottom_field.i517, align 8
  %idxprom15.i = sext i8 %167 to i64
  %arrayidx16.i = getelementptr inbounds ptr, ptr %157, i64 %idxprom15.i
  store ptr %169, ptr %arrayidx16.i, align 8
  %170 = load i8, ptr %listXsize166, align 1
  %inc17.i = add i8 %170, 1
  store i8 %inc17.i, ptr %listXsize166, align 1
  %indvars.iv.next.i518 = or disjoint i64 %indvars.iv.i516, 1
  %arrayidx13.i.1 = getelementptr inbounds ptr, ptr %155, i64 %indvars.iv.next.i518
  %171 = load ptr, ptr %arrayidx13.i.1, align 8
  %bottom_field.i517.1 = getelementptr inbounds i8, ptr %171, i64 64
  %172 = load ptr, ptr %bottom_field.i517.1, align 8
  %idxprom15.i.1 = sext i8 %inc17.i to i64
  %arrayidx16.i.1 = getelementptr inbounds ptr, ptr %157, i64 %idxprom15.i.1
  store ptr %172, ptr %arrayidx16.i.1, align 8
  %173 = load i8, ptr %listXsize166, align 1
  %inc17.i.1 = add i8 %173, 1
  store i8 %inc17.i.1, ptr %listXsize166, align 1
  %indvars.iv.next.i518.1 = add nuw nsw i64 %indvars.iv.i516, 2
  %niter741.next.1 = add i64 %niter741, 2
  %niter741.ncmp.1 = icmp eq i64 %niter741.next.1, %unroll_iter740
  br i1 %niter741.ncmp.1, label %if.end220.loopexit715.unr-lcssa, label %for.body11.i

if.end220.loopexit.unr-lcssa:                     ; preds = %for.body.i522, %for.body.preheader.i521
  %.unr743 = phi i8 [ %.pre45.i, %for.body.preheader.i521 ], [ %inc.i525.1, %for.body.i522 ]
  %indvars.iv40.i.unr = phi i64 [ 0, %for.body.preheader.i521 ], [ %indvars.iv.next41.i.1, %for.body.i522 ]
  %lcmp.mod744.not = icmp eq i64 %xtraiter742, 0
  br i1 %lcmp.mod744.not, label %if.end220, label %for.body.i522.epil

for.body.i522.epil:                               ; preds = %if.end220.loopexit.unr-lcssa
  %arrayidx.i523.epil = getelementptr inbounds ptr, ptr %155, i64 %indvars.iv40.i.unr
  %174 = load ptr, ptr %arrayidx.i523.epil, align 8
  %top_field.i524.epil = getelementptr inbounds i8, ptr %174, i64 56
  %175 = load ptr, ptr %top_field.i524.epil, align 8
  %idxprom2.i.epil = sext i8 %.unr743 to i64
  %arrayidx3.i.epil = getelementptr inbounds ptr, ptr %157, i64 %idxprom2.i.epil
  store ptr %175, ptr %arrayidx3.i.epil, align 8
  %176 = load i8, ptr %listXsize166, align 1
  %inc.i525.epil = add i8 %176, 1
  store i8 %inc.i525.epil, ptr %listXsize166, align 1
  br label %if.end220

if.end220.loopexit715.unr-lcssa:                  ; preds = %for.body11.i, %for.body11.preheader.i
  %.unr = phi i8 [ %.pre.i, %for.body11.preheader.i ], [ %inc17.i.1, %for.body11.i ]
  %indvars.iv.i516.unr = phi i64 [ 0, %for.body11.preheader.i ], [ %indvars.iv.next.i518.1, %for.body11.i ]
  %lcmp.mod739.not = icmp eq i64 %xtraiter738, 0
  br i1 %lcmp.mod739.not, label %if.end220, label %for.body11.i.epil

for.body11.i.epil:                                ; preds = %if.end220.loopexit715.unr-lcssa
  %arrayidx13.i.epil = getelementptr inbounds ptr, ptr %155, i64 %indvars.iv.i516.unr
  %177 = load ptr, ptr %arrayidx13.i.epil, align 8
  %bottom_field.i517.epil = getelementptr inbounds i8, ptr %177, i64 64
  %178 = load ptr, ptr %bottom_field.i517.epil, align 8
  %idxprom15.i.epil = sext i8 %.unr to i64
  %arrayidx16.i.epil = getelementptr inbounds ptr, ptr %157, i64 %idxprom15.i.epil
  store ptr %178, ptr %arrayidx16.i.epil, align 8
  %179 = load i8, ptr %listXsize166, align 1
  %inc17.i.epil = add i8 %179, 1
  store i8 %inc17.i.epil, ptr %listXsize166, align 1
  br label %if.end220

if.end220:                                        ; preds = %for.body11.i.epil, %if.end220.loopexit715.unr-lcssa, %for.body.i522.epil, %if.end220.loopexit.unr-lcssa, %if.then7.i, %for.cond.preheader.i520, %if.else208, %for.end204, %if.end165
  %180 = load i8, ptr %listXsize166, align 8
  %conv223 = sext i8 %180 to i32
  %num_ref_idx_active = getelementptr inbounds i8, ptr %currSlice, i64 136
  %181 = load i32, ptr %num_ref_idx_active, align 8
  %cond.i = tail call noundef i32 @llvm.smin.i32(i32 %conv223, i32 %181)
  %conv226 = trunc i32 %cond.i to i8
  store i8 %conv226, ptr %listXsize166, align 8
  %182 = load i8, ptr %arrayidx167, align 1
  %conv231 = sext i8 %182 to i32
  %arrayidx233 = getelementptr inbounds i8, ptr %currSlice, i64 140
  %183 = load i32, ptr %arrayidx233, align 4
  %cond.i526 = tail call noundef i32 @llvm.smin.i32(i32 %conv231, i32 %183)
  %conv235 = trunc i32 %cond.i526 to i8
  store i8 %conv235, ptr %arrayidx167, align 1
  %sext = shl i32 %cond.i, 24
  %conv240 = ashr exact i32 %sext, 24
  %cmp242625 = icmp ult i32 %conv240, 33
  br i1 %cmp242625, label %for.body244.lr.ph, label %for.end251

for.body244.lr.ph:                                ; preds = %if.end220
  %no_reference_picture = getelementptr inbounds i8, ptr %0, i64 856488
  %listX245 = getelementptr inbounds i8, ptr %currSlice, i64 264
  %184 = zext nneg i32 %conv240 to i64
  %.pre675 = load ptr, ptr %no_reference_picture, align 8
  br label %for.body244

for.body244:                                      ; preds = %for.body244.lr.ph, %for.body244
  %indvars.iv662 = phi i64 [ %184, %for.body244.lr.ph ], [ %indvars.iv.next663, %for.body244 ]
  %185 = load ptr, ptr %listX245, align 8
  %arrayidx248 = getelementptr inbounds ptr, ptr %185, i64 %indvars.iv662
  store ptr %.pre675, ptr %arrayidx248, align 8
  %indvars.iv.next663 = add nuw nsw i64 %indvars.iv662, 1
  %186 = and i64 %indvars.iv.next663, 4294967295
  %exitcond.not = icmp eq i64 %186, 33
  br i1 %exitcond.not, label %for.end251.loopexit, label %for.body244

for.end251.loopexit:                              ; preds = %for.body244
  %.pre676 = load i8, ptr %arrayidx167, align 1
  br label %for.end251

for.end251:                                       ; preds = %for.end251.loopexit, %if.end220
  %187 = phi i8 [ %.pre676, %for.end251.loopexit ], [ %conv235, %if.end220 ]
  %cmp256627 = icmp ult i8 %187, 33
  br i1 %cmp256627, label %for.body258.lr.ph, label %for.end266

for.body258.lr.ph:                                ; preds = %for.end251
  %no_reference_picture259 = getelementptr inbounds i8, ptr %0, i64 856488
  %arrayidx261 = getelementptr inbounds i8, ptr %currSlice, i64 272
  %188 = zext nneg i8 %187 to i64
  %.pre677 = load ptr, ptr %no_reference_picture259, align 8
  br label %for.body258

for.body258:                                      ; preds = %for.body258.lr.ph, %for.body258
  %indvars.iv665 = phi i64 [ %188, %for.body258.lr.ph ], [ %indvars.iv.next666, %for.body258 ]
  %189 = load ptr, ptr %arrayidx261, align 8
  %arrayidx263 = getelementptr inbounds ptr, ptr %189, i64 %indvars.iv665
  store ptr %.pre677, ptr %arrayidx263, align 8
  %indvars.iv.next666 = add nuw nsw i64 %indvars.iv665, 1
  %190 = and i64 %indvars.iv.next666, 4294967295
  %exitcond669.not = icmp eq i64 %190, 33
  br i1 %exitcond669.not, label %for.end266, label %for.body258

for.end266:                                       ; preds = %for.body258, %for.end251
  ret void
}

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal range(i32 -1, 2) i32 @compare_pic_by_pic_num_desc(ptr nocapture noundef readonly %arg1, ptr nocapture noundef readonly %arg2) #12 {
entry:
  %0 = load ptr, ptr %arg1, align 8
  %pic_num = getelementptr inbounds i8, ptr %0, i64 28
  %1 = load i32, ptr %pic_num, align 4
  %2 = load ptr, ptr %arg2, align 8
  %pic_num3 = getelementptr inbounds i8, ptr %2, i64 28
  %3 = load i32, ptr %pic_num3, align 4
  %cmp = icmp slt i32 %1, %3
  %cmp4 = icmp sgt i32 %1, %3
  %. = sext i1 %cmp4 to i32
  %retval.0 = select i1 %cmp, i32 1, i32 %.
  ret i32 %retval.0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal range(i32 -1, 2) i32 @compare_pic_by_lt_pic_num_asc(ptr nocapture noundef readonly %arg1, ptr nocapture noundef readonly %arg2) #12 {
entry:
  %0 = load ptr, ptr %arg1, align 8
  %long_term_pic_num = getelementptr inbounds i8, ptr %0, i64 32
  %1 = load i32, ptr %long_term_pic_num, align 8
  %2 = load ptr, ptr %arg2, align 8
  %long_term_pic_num3 = getelementptr inbounds i8, ptr %2, i64 32
  %3 = load i32, ptr %long_term_pic_num3, align 8
  %cmp = icmp slt i32 %1, %3
  %cmp4 = icmp sgt i32 %1, %3
  %. = zext i1 %cmp4 to i32
  %retval.0 = select i1 %cmp, i32 -1, i32 %.
  ret i32 %retval.0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal range(i32 -1, 2) i32 @compare_fs_by_frame_num_desc(ptr nocapture noundef readonly %arg1, ptr nocapture noundef readonly %arg2) #12 {
entry:
  %0 = load ptr, ptr %arg1, align 8
  %frame_num_wrap = getelementptr inbounds i8, ptr %0, i64 28
  %1 = load i32, ptr %frame_num_wrap, align 4
  %2 = load ptr, ptr %arg2, align 8
  %frame_num_wrap3 = getelementptr inbounds i8, ptr %2, i64 28
  %3 = load i32, ptr %frame_num_wrap3, align 4
  %cmp = icmp slt i32 %1, %3
  %cmp4 = icmp sgt i32 %1, %3
  %. = sext i1 %cmp4 to i32
  %retval.0 = select i1 %cmp, i32 1, i32 %.
  ret i32 %retval.0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal range(i32 -1, 2) i32 @compare_fs_by_lt_pic_idx_asc(ptr nocapture noundef readonly %arg1, ptr nocapture noundef readonly %arg2) #12 {
entry:
  %0 = load ptr, ptr %arg1, align 8
  %long_term_frame_idx = getelementptr inbounds i8, ptr %0, i64 32
  %1 = load i32, ptr %long_term_frame_idx, align 8
  %2 = load ptr, ptr %arg2, align 8
  %long_term_frame_idx3 = getelementptr inbounds i8, ptr %2, i64 32
  %3 = load i32, ptr %long_term_frame_idx3, align 8
  %cmp = icmp slt i32 %1, %3
  %cmp4 = icmp sgt i32 %1, %3
  %. = zext i1 %cmp4 to i32
  %retval.0 = select i1 %cmp, i32 -1, i32 %.
  ret i32 %retval.0
}

; Function Attrs: nounwind uwtable
define dso_local void @append_interview_list(ptr nocapture noundef readonly %p_Dpb, i32 noundef %currPicStructure, i32 noundef %list_idx, ptr nocapture noundef writeonly %list, ptr nocapture noundef %listXsize, i32 noundef %currPOC, i32 noundef %curr_view_id, i32 noundef %anchor_pic_flag) local_unnamed_addr #1 {
entry:
  %0 = load ptr, ptr %p_Dpb, align 8
  %call = tail call i32 @GetVOIdx(ptr noundef %0, i32 noundef %curr_view_id) #20
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call2 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.30, i32 noundef %call)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %tobool.not = icmp eq i32 %anchor_pic_flag, 0
  %tobool19.not = icmp eq i32 %list_idx, 0
  %active_subset_sps25 = getelementptr inbounds i8, ptr %0, i64 699416
  %1 = load ptr, ptr %active_subset_sps25, align 8
  %idxprom26 = sext i32 %call to i64
  %.276 = select i1 %tobool19.not, i64 4152, i64 4168
  %.278 = select i1 %tobool19.not, i64 4184, i64 4200
  %.sink = select i1 %tobool.not, i64 %.278, i64 %.276
  %non_anchor_ref_l1 = getelementptr inbounds i8, ptr %1, i64 %.sink
  %2 = load ptr, ptr %non_anchor_ref_l1, align 8
  %arrayidx34 = getelementptr inbounds ptr, ptr %2, i64 %idxprom26
  %ref_view_id.0 = load ptr, ptr %arrayidx34, align 8
  %cmp42 = icmp eq i32 %currPicStructure, 2
  %. = zext i1 %cmp42 to i64
  %used_size = getelementptr inbounds i8, ptr %p_Dpb, i64 44
  %3 = load i32, ptr %used_size, align 4
  %cmp46181.not = icmp eq i32 %3, 0
  br i1 %cmp46181.not, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end
  %.277 = select i1 %tobool19.not, i64 4176, i64 4192
  %.275 = select i1 %tobool19.not, i64 4144, i64 4160
  %.sink274 = select i1 %tobool.not, i64 %.277, i64 %.275
  %num_non_anchor_refs_l1 = getelementptr inbounds i8, ptr %1, i64 %.sink274
  %4 = load ptr, ptr %num_non_anchor_refs_l1, align 8
  %arrayidx23 = getelementptr inbounds i32, ptr %4, i64 %idxprom26
  %num_ref_views.0 = load i32, ptr %arrayidx23, align 4
  %num_ref_views.0.fr = freeze i32 %num_ref_views.0
  %fs63 = getelementptr inbounds i8, ptr %p_Dpb, i64 16
  %cmp8.i = icmp sgt i32 %num_ref_views.0.fr, 0
  %5 = zext nneg i32 %num_ref_views.0.fr to i64
  br i1 %cmp8.i, label %for.body.us, label %for.end

for.body.us:                                      ; preds = %for.body.lr.ph, %for.inc.us
  %6 = phi i32 [ %24, %for.inc.us ], [ %3, %for.body.lr.ph ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc.us ], [ 0, %for.body.lr.ph ]
  switch i32 %currPicStructure, label %if.else74.us [
    i32 0, label %if.then48.us
    i32 1, label %if.then62.us
  ]

if.then62.us:                                     ; preds = %for.body.us
  %7 = load ptr, ptr %fs63, align 8
  %arrayidx65.us = getelementptr inbounds ptr, ptr %7, i64 %indvars.iv
  %8 = load ptr, ptr %arrayidx65.us, align 8
  %9 = load i32, ptr %8, align 8
  %and.us = and i32 %9, 1
  %tobool67.not.us = icmp eq i32 %and.us, 0
  br i1 %tobool67.not.us, label %for.inc.us, label %if.then68.us

if.then68.us:                                     ; preds = %if.then62.us
  %top_field.us = getelementptr inbounds i8, ptr %8, i64 56
  br label %land.lhs.true.us

if.then48.us:                                     ; preds = %for.body.us
  %10 = load ptr, ptr %fs63, align 8
  %arrayidx50.us = getelementptr inbounds ptr, ptr %10, i64 %indvars.iv
  %11 = load ptr, ptr %arrayidx50.us, align 8
  %12 = load i32, ptr %11, align 8
  %cmp51.us = icmp eq i32 %12, 3
  br i1 %cmp51.us, label %if.then53.us, label %for.inc.us

if.then53.us:                                     ; preds = %if.then48.us
  %frame.us = getelementptr inbounds i8, ptr %11, i64 48
  br label %land.lhs.true.us

if.else74.us:                                     ; preds = %for.body.us
  br i1 %cmp42, label %if.then77.us, label %for.inc.us

if.then77.us:                                     ; preds = %if.else74.us
  %13 = load ptr, ptr %fs63, align 8
  %arrayidx80.us = getelementptr inbounds ptr, ptr %13, i64 %indvars.iv
  %14 = load ptr, ptr %arrayidx80.us, align 8
  %15 = load i32, ptr %14, align 8
  %and82.us = and i32 %15, 2
  %tobool83.not.us = icmp eq i32 %and82.us, 0
  br i1 %tobool83.not.us, label %for.inc.us, label %if.then84.us

if.then84.us:                                     ; preds = %if.then77.us
  %bottom_field.us = getelementptr inbounds i8, ptr %14, i64 64
  br label %land.lhs.true.us

land.lhs.true.us:                                 ; preds = %if.then84.us, %if.then53.us, %if.then68.us
  %bottom_field.us.sink = phi ptr [ %bottom_field.us, %if.then84.us ], [ %frame.us, %if.then53.us ], [ %top_field.us, %if.then68.us ]
  %16 = phi ptr [ %14, %if.then84.us ], [ %11, %if.then53.us ], [ %8, %if.then68.us ]
  %17 = load ptr, ptr %bottom_field.us.sink, align 8
  %poc88.us = getelementptr inbounds i8, ptr %17, i64 4
  %poc.1.us = load i32, ptr %poc88.us, align 4
  %inter_view_flag.us = getelementptr inbounds i8, ptr %16, i64 76
  %arrayidx99.us = getelementptr inbounds [2 x i32], ptr %inter_view_flag.us, i64 0, i64 %.
  %18 = load i32, ptr %arrayidx99.us, align 4
  %tobool100.not.us = icmp ne i32 %18, 0
  %cmp102.us = icmp eq i32 %poc.1.us, %currPOC
  %or.cond.us = select i1 %tobool100.not.us, i1 %cmp102.us, i1 false
  br i1 %or.cond.us, label %if.then104.us, label %for.inc.us

if.then104.us:                                    ; preds = %land.lhs.true.us
  %view_id.us = getelementptr inbounds i8, ptr %16, i64 72
  %19 = load i32, ptr %view_id.us, align 8
  %20 = load i32, ptr %ref_view_id.0, align 4
  %cmp1.i178.us = icmp eq i32 %20, %19
  br i1 %cmp1.i178.us, label %if.then110.us, label %for.cond.i.us

for.body.i.us:                                    ; preds = %for.cond.i.us
  %arrayidx.i.us = getelementptr inbounds i32, ptr %ref_view_id.0, i64 %indvars.iv.next.i.us
  %21 = load i32, ptr %arrayidx.i.us, align 4
  %cmp1.i.us = icmp eq i32 %21, %19
  br i1 %cmp1.i.us, label %is_view_id_in_ref_view_list.exit.us, label %for.cond.i.us

for.cond.i.us:                                    ; preds = %if.then104.us, %for.body.i.us
  %indvars.iv.i179.us = phi i64 [ %indvars.iv.next.i.us, %for.body.i.us ], [ 0, %if.then104.us ]
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i179.us, 1
  %exitcond.not.i.us = icmp eq i64 %indvars.iv.next.i.us, %5
  br i1 %exitcond.not.i.us, label %for.inc.us, label %for.body.i.us

is_view_id_in_ref_view_list.exit.us:              ; preds = %for.body.i.us
  %cmp.i.us.le = icmp ult i64 %indvars.iv.next.i.us, %5
  br i1 %cmp.i.us.le, label %if.then110.us, label %for.inc.us

if.then110.us:                                    ; preds = %if.then104.us, %is_view_id_in_ref_view_list.exit.us
  %22 = load i32, ptr %listXsize, align 4
  %idxprom114.us = sext i32 %22 to i64
  %arrayidx115.us = getelementptr inbounds ptr, ptr %list, i64 %idxprom114.us
  store ptr %16, ptr %arrayidx115.us, align 8
  %23 = load i32, ptr %listXsize, align 4
  %inc.us = add nsw i32 %23, 1
  store i32 %inc.us, ptr %listXsize, align 4
  %.pre = load i32, ptr %used_size, align 4
  br label %for.inc.us

for.inc.us:                                       ; preds = %for.cond.i.us, %if.then110.us, %is_view_id_in_ref_view_list.exit.us, %land.lhs.true.us, %if.then77.us, %if.else74.us, %if.then48.us, %if.then62.us
  %24 = phi i32 [ %.pre, %if.then110.us ], [ %6, %is_view_id_in_ref_view_list.exit.us ], [ %6, %land.lhs.true.us ], [ %6, %if.then77.us ], [ %6, %if.else74.us ], [ %6, %if.then48.us ], [ %6, %if.then62.us ], [ %6, %for.cond.i.us ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %25 = zext i32 %24 to i64
  %cmp46.us = icmp ult i64 %indvars.iv.next, %25
  br i1 %cmp46.us, label %for.body.us, label %for.end

for.end:                                          ; preds = %for.inc.us, %for.body.lr.ph, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @init_lists_b_slice(ptr noundef %currSlice) local_unnamed_addr #1 {
entry:
  %0 = load ptr, ptr %currSlice, align 8
  %p_Dpb2 = getelementptr inbounds i8, ptr %currSlice, i64 40
  %1 = load ptr, ptr %p_Dpb2, align 8
  %ThisPOC = getelementptr inbounds i8, ptr %currSlice, i64 104
  %2 = load i32, ptr %ThisPOC, align 8
  %view_id = getelementptr inbounds i8, ptr %currSlice, i64 1176
  %3 = load i32, ptr %view_id, align 8
  %anchor_pic_flag3 = getelementptr inbounds i8, ptr %currSlice, i64 1184
  %4 = load i32, ptr %anchor_pic_flag3, align 8
  %listinterviewidx0 = getelementptr inbounds i8, ptr %currSlice, i64 13308
  store i32 0, ptr %listinterviewidx0, align 4
  %listinterviewidx1 = getelementptr inbounds i8, ptr %currSlice, i64 13312
  store i32 0, ptr %listinterviewidx1, align 8
  %structure = getelementptr inbounds i8, ptr %currSlice, i64 184
  %5 = load i32, ptr %structure, align 8
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %for.cond.preheader, label %if.else

for.cond.preheader:                               ; preds = %entry
  %ref_frames_in_buffer = getelementptr inbounds i8, ptr %1, i64 48
  %6 = load i32, ptr %ref_frames_in_buffer, align 8
  %cmp41452.not = icmp eq i32 %6, 0
  br i1 %cmp41452.not, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %fs_ref = getelementptr inbounds i8, ptr %1, i64 24
  %framepoc = getelementptr inbounds i8, ptr %currSlice, i64 76
  %listX = getelementptr inbounds i8, ptr %currSlice, i64 264
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %7 = phi i32 [ %6, %for.body.lr.ph ], [ %18, %for.inc ]
  %indvars.iv1531 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next1532, %for.inc ]
  %list0idx.01453 = phi i32 [ 0, %for.body.lr.ph ], [ %list0idx.1, %for.inc ]
  %8 = load ptr, ptr %fs_ref, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %8, i64 %indvars.iv1531
  %9 = load ptr, ptr %arrayidx, align 8
  %10 = load i32, ptr %9, align 8
  %cmp5 = icmp eq i32 %10, 3
  br i1 %cmp5, label %if.then6, label %for.inc

if.then6:                                         ; preds = %for.body
  %frame = getelementptr inbounds i8, ptr %9, i64 48
  %11 = load ptr, ptr %frame, align 8
  %used_for_reference = getelementptr inbounds i8, ptr %11, i64 44
  %12 = load i32, ptr %used_for_reference, align 4
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %for.inc, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then6
  %is_long_term = getelementptr inbounds i8, ptr %11, i64 40
  %13 = load i8, ptr %is_long_term, align 8
  %tobool14.not = icmp eq i8 %13, 0
  br i1 %tobool14.not, label %land.lhs.true15, label %for.inc

land.lhs.true15:                                  ; preds = %land.lhs.true
  %view_id20 = getelementptr inbounds i8, ptr %11, i64 344
  %14 = load i32, ptr %view_id20, align 8
  %cmp21 = icmp eq i32 %14, %3
  br i1 %cmp21, label %if.then22, label %for.inc

if.then22:                                        ; preds = %land.lhs.true15
  %15 = load i32, ptr %framepoc, align 4
  %poc = getelementptr inbounds i8, ptr %11, i64 4
  %16 = load i32, ptr %poc, align 4
  %cmp27.not = icmp slt i32 %15, %16
  br i1 %cmp27.not, label %for.inc, label %if.then28

if.then28:                                        ; preds = %if.then22
  %17 = load ptr, ptr %listX, align 8
  %inc = add nsw i32 %list0idx.01453, 1
  %idxprom34 = sext i32 %list0idx.01453 to i64
  %arrayidx35 = getelementptr inbounds ptr, ptr %17, i64 %idxprom34
  store ptr %11, ptr %arrayidx35, align 8
  %.pre1585 = load i32, ptr %ref_frames_in_buffer, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then22, %if.then28, %land.lhs.true15, %land.lhs.true, %if.then6
  %18 = phi i32 [ %7, %land.lhs.true ], [ %.pre1585, %if.then28 ], [ %7, %if.then22 ], [ %7, %land.lhs.true15 ], [ %7, %if.then6 ], [ %7, %for.body ]
  %list0idx.1 = phi i32 [ %list0idx.01453, %land.lhs.true ], [ %inc, %if.then28 ], [ %list0idx.01453, %if.then22 ], [ %list0idx.01453, %land.lhs.true15 ], [ %list0idx.01453, %if.then6 ], [ %list0idx.01453, %for.body ]
  %indvars.iv.next1532 = add nuw nsw i64 %indvars.iv1531, 1
  %19 = zext i32 %18 to i64
  %cmp4 = icmp ult i64 %indvars.iv.next1532, %19
  br i1 %cmp4, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc, %for.cond.preheader
  %list0idx.0.lcssa = phi i32 [ 0, %for.cond.preheader ], [ %list0idx.1, %for.inc ]
  %listX39 = getelementptr inbounds i8, ptr %currSlice, i64 264
  %20 = load ptr, ptr %listX39, align 8
  %conv = sext i32 %list0idx.0.lcssa to i64
  tail call void @qsort(ptr noundef %20, i64 noundef %conv, i64 noundef 8, ptr noundef nonnull @compare_pic_by_poc_desc) #20
  %21 = load i32, ptr %ref_frames_in_buffer, align 8
  %cmp431456.not = icmp eq i32 %21, 0
  br i1 %cmp431456.not, label %for.end98, label %for.body45.lr.ph

for.body45.lr.ph:                                 ; preds = %for.end
  %fs_ref46 = getelementptr inbounds i8, ptr %1, i64 24
  %framepoc75 = getelementptr inbounds i8, ptr %currSlice, i64 76
  br label %for.body45

for.body45:                                       ; preds = %for.body45.lr.ph, %for.inc96
  %22 = phi i32 [ %21, %for.body45.lr.ph ], [ %33, %for.inc96 ]
  %indvars.iv1534 = phi i64 [ 0, %for.body45.lr.ph ], [ %indvars.iv.next1535, %for.inc96 ]
  %list0idx.21457 = phi i32 [ %list0idx.0.lcssa, %for.body45.lr.ph ], [ %list0idx.3, %for.inc96 ]
  %23 = load ptr, ptr %fs_ref46, align 8
  %arrayidx48 = getelementptr inbounds ptr, ptr %23, i64 %indvars.iv1534
  %24 = load ptr, ptr %arrayidx48, align 8
  %25 = load i32, ptr %24, align 8
  %cmp50 = icmp eq i32 %25, 3
  br i1 %cmp50, label %if.then52, label %for.inc96

if.then52:                                        ; preds = %for.body45
  %frame56 = getelementptr inbounds i8, ptr %24, i64 48
  %26 = load ptr, ptr %frame56, align 8
  %used_for_reference57 = getelementptr inbounds i8, ptr %26, i64 44
  %27 = load i32, ptr %used_for_reference57, align 4
  %tobool58.not = icmp eq i32 %27, 0
  br i1 %tobool58.not, label %for.inc96, label %land.lhs.true59

land.lhs.true59:                                  ; preds = %if.then52
  %is_long_term64 = getelementptr inbounds i8, ptr %26, i64 40
  %28 = load i8, ptr %is_long_term64, align 8
  %tobool65.not = icmp eq i8 %28, 0
  br i1 %tobool65.not, label %land.lhs.true66, label %for.inc96

land.lhs.true66:                                  ; preds = %land.lhs.true59
  %view_id71 = getelementptr inbounds i8, ptr %26, i64 344
  %29 = load i32, ptr %view_id71, align 8
  %cmp72 = icmp eq i32 %29, %3
  br i1 %cmp72, label %if.then74, label %for.inc96

if.then74:                                        ; preds = %land.lhs.true66
  %30 = load i32, ptr %framepoc75, align 4
  %poc80 = getelementptr inbounds i8, ptr %26, i64 4
  %31 = load i32, ptr %poc80, align 4
  %cmp81 = icmp slt i32 %30, %31
  br i1 %cmp81, label %if.then83, label %for.inc96

if.then83:                                        ; preds = %if.then74
  %32 = load ptr, ptr %listX39, align 8
  %inc90 = add nsw i32 %list0idx.21457, 1
  %idxprom91 = sext i32 %list0idx.21457 to i64
  %arrayidx92 = getelementptr inbounds ptr, ptr %32, i64 %idxprom91
  store ptr %26, ptr %arrayidx92, align 8
  %.pre1586 = load i32, ptr %ref_frames_in_buffer, align 8
  br label %for.inc96

for.inc96:                                        ; preds = %for.body45, %if.then74, %if.then83, %land.lhs.true66, %land.lhs.true59, %if.then52
  %33 = phi i32 [ %22, %land.lhs.true59 ], [ %.pre1586, %if.then83 ], [ %22, %if.then74 ], [ %22, %land.lhs.true66 ], [ %22, %if.then52 ], [ %22, %for.body45 ]
  %list0idx.3 = phi i32 [ %list0idx.21457, %land.lhs.true59 ], [ %inc90, %if.then83 ], [ %list0idx.21457, %if.then74 ], [ %list0idx.21457, %land.lhs.true66 ], [ %list0idx.21457, %if.then52 ], [ %list0idx.21457, %for.body45 ]
  %indvars.iv.next1535 = add nuw nsw i64 %indvars.iv1534, 1
  %34 = zext i32 %33 to i64
  %cmp43 = icmp ult i64 %indvars.iv.next1535, %34
  br i1 %cmp43, label %for.body45, label %for.end98

for.end98:                                        ; preds = %for.inc96, %for.end
  %list0idx.2.lcssa = phi i32 [ %list0idx.0.lcssa, %for.end ], [ %list0idx.3, %for.inc96 ]
  %35 = load ptr, ptr %listX39, align 8
  %arrayidx102 = getelementptr inbounds ptr, ptr %35, i64 %conv
  %sub = sub nsw i32 %list0idx.2.lcssa, %list0idx.0.lcssa
  %conv103 = sext i32 %sub to i64
  tail call void @qsort(ptr noundef %arrayidx102, i64 noundef %conv103, i64 noundef 8, ptr noundef nonnull @compare_pic_by_poc_asc) #20
  %cmp1051460 = icmp sgt i32 %list0idx.0.lcssa, 0
  br i1 %cmp1051460, label %for.body107.lr.ph, label %for.cond120.preheader

for.body107.lr.ph:                                ; preds = %for.end98
  %arrayidx113 = getelementptr inbounds i8, ptr %currSlice, i64 272
  %wide.trip.count1542 = zext nneg i32 %list0idx.0.lcssa to i64
  %xtraiter1709 = and i64 %wide.trip.count1542, 3
  %36 = icmp ult i32 %list0idx.0.lcssa, 4
  br i1 %36, label %for.cond120.preheader.loopexit.unr-lcssa, label %for.body107.lr.ph.new

for.body107.lr.ph.new:                            ; preds = %for.body107.lr.ph
  %unroll_iter1711 = and i64 %wide.trip.count1542, 2147483644
  br label %for.body107

for.cond120.preheader.loopexit.unr-lcssa:         ; preds = %for.body107, %for.body107.lr.ph
  %indvars.iv1537.unr = phi i64 [ 0, %for.body107.lr.ph ], [ %indvars.iv.next1538.3, %for.body107 ]
  %lcmp.mod1710.not = icmp eq i64 %xtraiter1709, 0
  br i1 %lcmp.mod1710.not, label %for.cond120.preheader, label %for.body107.epil

for.body107.epil:                                 ; preds = %for.cond120.preheader.loopexit.unr-lcssa, %for.body107.epil
  %indvars.iv1537.epil = phi i64 [ %indvars.iv.next1538.epil, %for.body107.epil ], [ %indvars.iv1537.unr, %for.cond120.preheader.loopexit.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %for.body107.epil ], [ 0, %for.cond120.preheader.loopexit.unr-lcssa ]
  %37 = load ptr, ptr %listX39, align 8
  %arrayidx111.epil = getelementptr inbounds ptr, ptr %37, i64 %indvars.iv1537.epil
  %38 = load ptr, ptr %arrayidx111.epil, align 8
  %39 = load ptr, ptr %arrayidx113, align 8
  %40 = getelementptr ptr, ptr %39, i64 %indvars.iv1537.epil
  %arrayidx116.epil = getelementptr ptr, ptr %40, i64 %conv103
  store ptr %38, ptr %arrayidx116.epil, align 8
  %indvars.iv.next1538.epil = add nuw nsw i64 %indvars.iv1537.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter1709
  br i1 %epil.iter.cmp.not, label %for.cond120.preheader, label %for.body107.epil, !llvm.loop !6

for.cond120.preheader:                            ; preds = %for.cond120.preheader.loopexit.unr-lcssa, %for.body107.epil, %for.end98
  %cmp1211462 = icmp slt i32 %list0idx.0.lcssa, %list0idx.2.lcssa
  br i1 %cmp1211462, label %for.body123.lr.ph, label %for.end135

for.body123.lr.ph:                                ; preds = %for.cond120.preheader
  %arrayidx129 = getelementptr inbounds i8, ptr %currSlice, i64 272
  %wide.trip.count1548 = sext i32 %list0idx.2.lcssa to i64
  %41 = sub nsw i64 %wide.trip.count1548, %conv
  %xtraiter1713 = and i64 %41, 1
  %lcmp.mod1714.not = icmp eq i64 %xtraiter1713, 0
  br i1 %lcmp.mod1714.not, label %for.body123.prol.loopexit, label %for.body123.prol

for.body123.prol:                                 ; preds = %for.body123.lr.ph
  %42 = load ptr, ptr %listX39, align 8
  %arrayidx127.prol = getelementptr inbounds ptr, ptr %42, i64 %conv
  %43 = load ptr, ptr %arrayidx127.prol, align 8
  %44 = load ptr, ptr %arrayidx129, align 8
  store ptr %43, ptr %44, align 8
  %indvars.iv.next1545.prol = add nsw i64 %conv, 1
  br label %for.body123.prol.loopexit

for.body123.prol.loopexit:                        ; preds = %for.body123.prol, %for.body123.lr.ph
  %indvars.iv1544.unr = phi i64 [ %conv, %for.body123.lr.ph ], [ %indvars.iv.next1545.prol, %for.body123.prol ]
  %45 = add nsw i64 %wide.trip.count1548, -1
  %46 = icmp eq i64 %45, %conv
  br i1 %46, label %for.end135, label %for.body123

for.body107:                                      ; preds = %for.body107, %for.body107.lr.ph.new
  %indvars.iv1537 = phi i64 [ 0, %for.body107.lr.ph.new ], [ %indvars.iv.next1538.3, %for.body107 ]
  %niter1712 = phi i64 [ 0, %for.body107.lr.ph.new ], [ %niter1712.next.3, %for.body107 ]
  %47 = load ptr, ptr %listX39, align 8
  %arrayidx111 = getelementptr inbounds ptr, ptr %47, i64 %indvars.iv1537
  %48 = load ptr, ptr %arrayidx111, align 8
  %49 = load ptr, ptr %arrayidx113, align 8
  %50 = getelementptr ptr, ptr %49, i64 %indvars.iv1537
  %arrayidx116 = getelementptr ptr, ptr %50, i64 %conv103
  store ptr %48, ptr %arrayidx116, align 8
  %indvars.iv.next1538 = or disjoint i64 %indvars.iv1537, 1
  %51 = load ptr, ptr %listX39, align 8
  %arrayidx111.1 = getelementptr inbounds ptr, ptr %51, i64 %indvars.iv.next1538
  %52 = load ptr, ptr %arrayidx111.1, align 8
  %53 = load ptr, ptr %arrayidx113, align 8
  %54 = getelementptr ptr, ptr %53, i64 %indvars.iv.next1538
  %arrayidx116.1 = getelementptr ptr, ptr %54, i64 %conv103
  store ptr %52, ptr %arrayidx116.1, align 8
  %indvars.iv.next1538.1 = or disjoint i64 %indvars.iv1537, 2
  %55 = load ptr, ptr %listX39, align 8
  %arrayidx111.2 = getelementptr inbounds ptr, ptr %55, i64 %indvars.iv.next1538.1
  %56 = load ptr, ptr %arrayidx111.2, align 8
  %57 = load ptr, ptr %arrayidx113, align 8
  %58 = getelementptr ptr, ptr %57, i64 %indvars.iv.next1538.1
  %arrayidx116.2 = getelementptr ptr, ptr %58, i64 %conv103
  store ptr %56, ptr %arrayidx116.2, align 8
  %indvars.iv.next1538.2 = or disjoint i64 %indvars.iv1537, 3
  %59 = load ptr, ptr %listX39, align 8
  %arrayidx111.3 = getelementptr inbounds ptr, ptr %59, i64 %indvars.iv.next1538.2
  %60 = load ptr, ptr %arrayidx111.3, align 8
  %61 = load ptr, ptr %arrayidx113, align 8
  %62 = getelementptr ptr, ptr %61, i64 %indvars.iv.next1538.2
  %arrayidx116.3 = getelementptr ptr, ptr %62, i64 %conv103
  store ptr %60, ptr %arrayidx116.3, align 8
  %indvars.iv.next1538.3 = add nuw nsw i64 %indvars.iv1537, 4
  %niter1712.next.3 = add i64 %niter1712, 4
  %niter1712.ncmp.3 = icmp eq i64 %niter1712.next.3, %unroll_iter1711
  br i1 %niter1712.ncmp.3, label %for.cond120.preheader.loopexit.unr-lcssa, label %for.body107

for.body123:                                      ; preds = %for.body123.prol.loopexit, %for.body123
  %indvars.iv1544 = phi i64 [ %indvars.iv.next1545.1, %for.body123 ], [ %indvars.iv1544.unr, %for.body123.prol.loopexit ]
  %63 = load ptr, ptr %listX39, align 8
  %arrayidx127 = getelementptr inbounds ptr, ptr %63, i64 %indvars.iv1544
  %64 = load ptr, ptr %arrayidx127, align 8
  %65 = load ptr, ptr %arrayidx129, align 8
  %66 = sub nsw i64 %indvars.iv1544, %conv
  %arrayidx132 = getelementptr inbounds ptr, ptr %65, i64 %66
  store ptr %64, ptr %arrayidx132, align 8
  %indvars.iv.next1545 = add nsw i64 %indvars.iv1544, 1
  %67 = load ptr, ptr %listX39, align 8
  %arrayidx127.1 = getelementptr inbounds ptr, ptr %67, i64 %indvars.iv.next1545
  %68 = load ptr, ptr %arrayidx127.1, align 8
  %69 = load ptr, ptr %arrayidx129, align 8
  %70 = sub nsw i64 %indvars.iv.next1545, %conv
  %arrayidx132.1 = getelementptr inbounds ptr, ptr %69, i64 %70
  store ptr %68, ptr %arrayidx132.1, align 8
  %indvars.iv.next1545.1 = add nsw i64 %indvars.iv1544, 2
  %exitcond1549.not.1 = icmp eq i64 %indvars.iv.next1545.1, %wide.trip.count1548
  br i1 %exitcond1549.not.1, label %for.end135, label %for.body123

for.end135:                                       ; preds = %for.body123.prol.loopexit, %for.body123, %for.cond120.preheader
  %conv136 = trunc i32 %list0idx.2.lcssa to i8
  %listXsize = getelementptr inbounds i8, ptr %currSlice, i64 256
  %arrayidx137 = getelementptr inbounds i8, ptr %currSlice, i64 257
  store i8 %conv136, ptr %arrayidx137, align 1
  store i8 %conv136, ptr %listXsize, align 8
  %ltref_frames_in_buffer = getelementptr inbounds i8, ptr %1, i64 52
  %71 = load i32, ptr %ltref_frames_in_buffer, align 4
  %cmp1411464.not = icmp eq i32 %71, 0
  br i1 %cmp1411464.not, label %for.end187, label %for.body143.lr.ph

for.body143.lr.ph:                                ; preds = %for.end135
  %fs_ltref = getelementptr inbounds i8, ptr %1, i64 32
  %arrayidx179 = getelementptr inbounds i8, ptr %currSlice, i64 272
  br label %for.body143

for.body143:                                      ; preds = %for.body143.lr.ph, %for.inc185
  %72 = phi i32 [ %71, %for.body143.lr.ph ], [ %84, %for.inc185 ]
  %indvars.iv1550 = phi i64 [ 0, %for.body143.lr.ph ], [ %indvars.iv.next1551, %for.inc185 ]
  %list0idx.41465 = phi i32 [ %list0idx.2.lcssa, %for.body143.lr.ph ], [ %list0idx.5, %for.inc185 ]
  %73 = load ptr, ptr %fs_ltref, align 8
  %arrayidx145 = getelementptr inbounds ptr, ptr %73, i64 %indvars.iv1550
  %74 = load ptr, ptr %arrayidx145, align 8
  %75 = load i32, ptr %74, align 8
  %cmp147 = icmp eq i32 %75, 3
  br i1 %cmp147, label %if.then149, label %for.inc185

if.then149:                                       ; preds = %for.body143
  %frame153 = getelementptr inbounds i8, ptr %74, i64 48
  %76 = load ptr, ptr %frame153, align 8
  %is_long_term154 = getelementptr inbounds i8, ptr %76, i64 40
  %77 = load i8, ptr %is_long_term154, align 8
  %tobool156.not = icmp eq i8 %77, 0
  br i1 %tobool156.not, label %for.inc185, label %land.lhs.true157

land.lhs.true157:                                 ; preds = %if.then149
  %view_id162 = getelementptr inbounds i8, ptr %76, i64 344
  %78 = load i32, ptr %view_id162, align 8
  %cmp163 = icmp eq i32 %78, %3
  br i1 %cmp163, label %if.then165, label %for.inc185

if.then165:                                       ; preds = %land.lhs.true157
  %79 = load ptr, ptr %listX39, align 8
  %idxprom172 = sext i32 %list0idx.41465 to i64
  %arrayidx173 = getelementptr inbounds ptr, ptr %79, i64 %idxprom172
  store ptr %76, ptr %arrayidx173, align 8
  %80 = load ptr, ptr %fs_ltref, align 8
  %arrayidx176 = getelementptr inbounds ptr, ptr %80, i64 %indvars.iv1550
  %81 = load ptr, ptr %arrayidx176, align 8
  %frame177 = getelementptr inbounds i8, ptr %81, i64 48
  %82 = load ptr, ptr %frame177, align 8
  %83 = load ptr, ptr %arrayidx179, align 8
  %inc180 = add nsw i32 %list0idx.41465, 1
  %arrayidx182 = getelementptr inbounds ptr, ptr %83, i64 %idxprom172
  store ptr %82, ptr %arrayidx182, align 8
  %.pre1587 = load i32, ptr %ltref_frames_in_buffer, align 4
  br label %for.inc185

for.inc185:                                       ; preds = %for.body143, %if.then165, %land.lhs.true157, %if.then149
  %84 = phi i32 [ %.pre1587, %if.then165 ], [ %72, %land.lhs.true157 ], [ %72, %if.then149 ], [ %72, %for.body143 ]
  %list0idx.5 = phi i32 [ %inc180, %if.then165 ], [ %list0idx.41465, %land.lhs.true157 ], [ %list0idx.41465, %if.then149 ], [ %list0idx.41465, %for.body143 ]
  %indvars.iv.next1551 = add nuw nsw i64 %indvars.iv1550, 1
  %85 = zext i32 %84 to i64
  %cmp141 = icmp ult i64 %indvars.iv.next1551, %85
  br i1 %cmp141, label %for.body143, label %for.end187.loopexit

for.end187.loopexit:                              ; preds = %for.inc185
  %.pre1588 = load i8, ptr %listXsize, align 8
  %.pre1594 = trunc i32 %list0idx.5 to i8
  br label %for.end187

for.end187:                                       ; preds = %for.end187.loopexit, %for.end135
  %conv212.pre-phi = phi i8 [ %.pre1594, %for.end187.loopexit ], [ %conv136, %for.end135 ]
  %86 = phi i8 [ %.pre1588, %for.end187.loopexit ], [ %conv136, %for.end135 ]
  %list0idx.4.lcssa = phi i32 [ %list0idx.5, %for.end187.loopexit ], [ %list0idx.2.lcssa, %for.end135 ]
  %87 = load ptr, ptr %listX39, align 8
  %idxprom193 = sext i8 %86 to i64
  %arrayidx194 = getelementptr inbounds ptr, ptr %87, i64 %idxprom193
  %conv197 = sext i8 %86 to i32
  %sub198 = sub nsw i32 %list0idx.4.lcssa, %conv197
  %conv199 = sext i32 %sub198 to i64
  tail call void @qsort(ptr noundef %arrayidx194, i64 noundef %conv199, i64 noundef 8, ptr noundef nonnull @compare_pic_by_lt_pic_num_asc) #20
  %arrayidx201 = getelementptr inbounds i8, ptr %currSlice, i64 272
  %88 = load ptr, ptr %arrayidx201, align 8
  %89 = load i8, ptr %listXsize, align 8
  %idxprom205 = sext i8 %89 to i64
  %arrayidx206 = getelementptr inbounds ptr, ptr %88, i64 %idxprom205
  %conv209 = sext i8 %89 to i32
  %sub210 = sub nsw i32 %list0idx.4.lcssa, %conv209
  %conv211 = sext i32 %sub210 to i64
  tail call void @qsort(ptr noundef %arrayidx206, i64 noundef %conv211, i64 noundef 8, ptr noundef nonnull @compare_pic_by_lt_pic_num_asc) #20
  store i8 %conv212.pre-phi, ptr %arrayidx137, align 1
  store i8 %conv212.pre-phi, ptr %listXsize, align 8
  br label %if.end391

if.else:                                          ; preds = %entry
  %size = getelementptr inbounds i8, ptr %1, i64 40
  %90 = load i32, ptr %size, align 8
  %conv217 = zext i32 %90 to i64
  %call = tail call noalias ptr @calloc(i64 noundef %conv217, i64 noundef 8) #21
  %cmp218 = icmp eq ptr %call, null
  br i1 %cmp218, label %if.then220, label %if.end221

if.then220:                                       ; preds = %if.else
  tail call void @no_mem_exit(ptr noundef nonnull @.str.14) #20
  %.pre = load i32, ptr %size, align 8
  %.pre1595 = zext i32 %.pre to i64
  br label %if.end221

if.end221:                                        ; preds = %if.then220, %if.else
  %conv223.pre-phi = phi i64 [ %.pre1595, %if.then220 ], [ %conv217, %if.else ]
  %call224 = tail call noalias ptr @calloc(i64 noundef %conv223.pre-phi, i64 noundef 8) #21
  %cmp225 = icmp eq ptr %call224, null
  br i1 %cmp225, label %if.then227, label %if.end228

if.then227:                                       ; preds = %if.end221
  tail call void @no_mem_exit(ptr noundef nonnull @.str.17) #20
  %.pre1581 = load i32, ptr %size, align 8
  %.pre1596 = zext i32 %.pre1581 to i64
  br label %if.end228

if.end228:                                        ; preds = %if.then227, %if.end221
  %conv230.pre-phi = phi i64 [ %.pre1596, %if.then227 ], [ %conv223.pre-phi, %if.end221 ]
  %call231 = tail call noalias ptr @calloc(i64 noundef %conv230.pre-phi, i64 noundef 8) #21
  %cmp232 = icmp eq ptr %call231, null
  br i1 %cmp232, label %if.then234, label %if.end235

if.then234:                                       ; preds = %if.end228
  tail call void @no_mem_exit(ptr noundef nonnull @.str.15) #20
  br label %if.end235

if.end235:                                        ; preds = %if.then234, %if.end228
  %listXsize236 = getelementptr inbounds i8, ptr %currSlice, i64 256
  store i8 0, ptr %listXsize236, align 8
  %arrayidx239 = getelementptr inbounds i8, ptr %currSlice, i64 257
  store i8 1, ptr %arrayidx239, align 1
  %ref_frames_in_buffer241 = getelementptr inbounds i8, ptr %1, i64 48
  %91 = load i32, ptr %ref_frames_in_buffer241, align 8
  %cmp2421437.not = icmp eq i32 %91, 0
  br i1 %cmp2421437.not, label %for.end276, label %for.body244.lr.ph

for.body244.lr.ph:                                ; preds = %if.end235
  %fs_ref245 = getelementptr inbounds i8, ptr %1, i64 24
  %.pre1582 = load ptr, ptr %fs_ref245, align 8
  %92 = zext i32 %91 to i64
  br label %for.body244

for.body244:                                      ; preds = %for.body244.lr.ph, %for.inc274
  %indvars.iv = phi i64 [ 0, %for.body244.lr.ph ], [ %indvars.iv.next, %for.inc274 ]
  %list0idx.61438 = phi i32 [ 0, %for.body244.lr.ph ], [ %list0idx.7, %for.inc274 ]
  %arrayidx247 = getelementptr inbounds ptr, ptr %.pre1582, i64 %indvars.iv
  %93 = load ptr, ptr %arrayidx247, align 8
  %94 = load i32, ptr %93, align 8
  %tobool249.not = icmp eq i32 %94, 0
  br i1 %tobool249.not, label %for.inc274, label %if.then250

if.then250:                                       ; preds = %for.body244
  %95 = load i32, ptr %ThisPOC, align 8
  %poc255 = getelementptr inbounds i8, ptr %93, i64 40
  %96 = load i32, ptr %poc255, align 8
  %cmp256.not = icmp slt i32 %95, %96
  br i1 %cmp256.not, label %for.inc274, label %land.lhs.true258

land.lhs.true258:                                 ; preds = %if.then250
  %view_id262 = getelementptr inbounds i8, ptr %93, i64 72
  %97 = load i32, ptr %view_id262, align 8
  %cmp263 = icmp eq i32 %97, %3
  br i1 %cmp263, label %if.then265, label %for.inc274

if.then265:                                       ; preds = %land.lhs.true258
  %inc269 = add nsw i32 %list0idx.61438, 1
  %idxprom270 = sext i32 %list0idx.61438 to i64
  %arrayidx271 = getelementptr inbounds ptr, ptr %call, i64 %idxprom270
  store ptr %93, ptr %arrayidx271, align 8
  br label %for.inc274

for.inc274:                                       ; preds = %for.body244, %if.then265, %land.lhs.true258, %if.then250
  %list0idx.7 = phi i32 [ %inc269, %if.then265 ], [ %list0idx.61438, %land.lhs.true258 ], [ %list0idx.61438, %if.then250 ], [ %list0idx.61438, %for.body244 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %cmp242 = icmp ult i64 %indvars.iv.next, %92
  br i1 %cmp242, label %for.body244, label %for.end276

for.end276:                                       ; preds = %for.inc274, %if.end235
  %list0idx.6.lcssa = phi i32 [ 0, %if.end235 ], [ %list0idx.7, %for.inc274 ]
  %conv277 = sext i32 %list0idx.6.lcssa to i64
  tail call void @qsort(ptr noundef %call, i64 noundef %conv277, i64 noundef 8, ptr noundef nonnull @compare_fs_by_poc_desc) #20
  %98 = load i32, ptr %ref_frames_in_buffer241, align 8
  %cmp2801440.not = icmp eq i32 %98, 0
  br i1 %cmp2801440.not, label %for.end314, label %for.body282.lr.ph

for.body282.lr.ph:                                ; preds = %for.end276
  %fs_ref283 = getelementptr inbounds i8, ptr %1, i64 24
  %.pre1583 = load ptr, ptr %fs_ref283, align 8
  %99 = zext i32 %98 to i64
  br label %for.body282

for.body282:                                      ; preds = %for.body282.lr.ph, %for.inc312
  %indvars.iv1516 = phi i64 [ 0, %for.body282.lr.ph ], [ %indvars.iv.next1517, %for.inc312 ]
  %list0idx.81441 = phi i32 [ %list0idx.6.lcssa, %for.body282.lr.ph ], [ %list0idx.9, %for.inc312 ]
  %arrayidx285 = getelementptr inbounds ptr, ptr %.pre1583, i64 %indvars.iv1516
  %100 = load ptr, ptr %arrayidx285, align 8
  %101 = load i32, ptr %100, align 8
  %tobool287.not = icmp eq i32 %101, 0
  br i1 %tobool287.not, label %for.inc312, label %if.then288

if.then288:                                       ; preds = %for.body282
  %102 = load i32, ptr %ThisPOC, align 8
  %poc293 = getelementptr inbounds i8, ptr %100, i64 40
  %103 = load i32, ptr %poc293, align 8
  %cmp294 = icmp slt i32 %102, %103
  br i1 %cmp294, label %land.lhs.true296, label %for.inc312

land.lhs.true296:                                 ; preds = %if.then288
  %view_id300 = getelementptr inbounds i8, ptr %100, i64 72
  %104 = load i32, ptr %view_id300, align 8
  %cmp301 = icmp eq i32 %104, %3
  br i1 %cmp301, label %if.then303, label %for.inc312

if.then303:                                       ; preds = %land.lhs.true296
  %inc307 = add nsw i32 %list0idx.81441, 1
  %idxprom308 = sext i32 %list0idx.81441 to i64
  %arrayidx309 = getelementptr inbounds ptr, ptr %call, i64 %idxprom308
  store ptr %100, ptr %arrayidx309, align 8
  br label %for.inc312

for.inc312:                                       ; preds = %for.body282, %if.then303, %land.lhs.true296, %if.then288
  %list0idx.9 = phi i32 [ %inc307, %if.then303 ], [ %list0idx.81441, %land.lhs.true296 ], [ %list0idx.81441, %if.then288 ], [ %list0idx.81441, %for.body282 ]
  %indvars.iv.next1517 = add nuw nsw i64 %indvars.iv1516, 1
  %cmp280 = icmp ult i64 %indvars.iv.next1517, %99
  br i1 %cmp280, label %for.body282, label %for.end314

for.end314:                                       ; preds = %for.inc312, %for.end276
  %list0idx.8.lcssa = phi i32 [ %list0idx.6.lcssa, %for.end276 ], [ %list0idx.9, %for.inc312 ]
  %arrayidx316 = getelementptr inbounds ptr, ptr %call, i64 %conv277
  %sub317 = sub nsw i32 %list0idx.8.lcssa, %list0idx.6.lcssa
  %conv318 = sext i32 %sub317 to i64
  tail call void @qsort(ptr noundef %arrayidx316, i64 noundef %conv318, i64 noundef 8, ptr noundef nonnull @compare_fs_by_poc_asc) #20
  %cmp3201444 = icmp sgt i32 %list0idx.6.lcssa, 0
  br i1 %cmp3201444, label %for.body322.preheader, label %for.cond332.preheader

for.body322.preheader:                            ; preds = %for.end314
  %wide.trip.count = zext nneg i32 %list0idx.6.lcssa to i64
  %invariant.gep = getelementptr ptr, ptr %call224, i64 %conv318
  %min.iters.check = icmp ult i32 %list0idx.6.lcssa, 8
  br i1 %min.iters.check, label %for.body322.preheader1707, label %vector.ph

for.body322.preheader1707:                        ; preds = %middle.block, %for.body322.preheader
  %indvars.iv1519.ph = phi i64 [ 0, %for.body322.preheader ], [ %n.vec, %middle.block ]
  br label %for.body322

vector.ph:                                        ; preds = %for.body322.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %105 = getelementptr inbounds ptr, ptr %call, i64 %index
  %106 = getelementptr inbounds i8, ptr %105, i64 16
  %107 = getelementptr inbounds i8, ptr %105, i64 32
  %108 = getelementptr inbounds i8, ptr %105, i64 48
  %wide.load = load <2 x ptr>, ptr %105, align 8
  %wide.load1669 = load <2 x ptr>, ptr %106, align 8
  %wide.load1670 = load <2 x ptr>, ptr %107, align 8
  %wide.load1671 = load <2 x ptr>, ptr %108, align 8
  %109 = getelementptr ptr, ptr %invariant.gep, i64 %index
  %110 = getelementptr i8, ptr %109, i64 16
  %111 = getelementptr i8, ptr %109, i64 32
  %112 = getelementptr i8, ptr %109, i64 48
  store <2 x ptr> %wide.load, ptr %109, align 8
  store <2 x ptr> %wide.load1669, ptr %110, align 8
  store <2 x ptr> %wide.load1670, ptr %111, align 8
  store <2 x ptr> %wide.load1671, ptr %112, align 8
  %index.next = add nuw i64 %index, 8
  %113 = icmp eq i64 %index.next, %n.vec
  br i1 %113, label %middle.block, label %vector.body, !llvm.loop !8

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %for.cond332.preheader, label %for.body322.preheader1707

for.cond332.preheader:                            ; preds = %for.body322, %middle.block, %for.end314
  %cmp3331446 = icmp slt i32 %list0idx.6.lcssa, %list0idx.8.lcssa
  br i1 %cmp3331446, label %for.body335.preheader, label %for.end343

for.body335.preheader:                            ; preds = %for.cond332.preheader
  %114 = shl nsw i64 %conv277, 3
  %scevgep = getelementptr i8, ptr %call, i64 %114
  %115 = xor i32 %list0idx.6.lcssa, -1
  %116 = add i32 %list0idx.8.lcssa, %115
  %117 = zext i32 %116 to i64
  %118 = shl nuw nsw i64 %117, 3
  %119 = add nuw nsw i64 %118, 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %call224, ptr noundef nonnull align 8 dereferenceable(1) %scevgep, i64 %119, i1 false)
  br label %for.end343

for.body322:                                      ; preds = %for.body322.preheader1707, %for.body322
  %indvars.iv1519 = phi i64 [ %indvars.iv.next1520, %for.body322 ], [ %indvars.iv1519.ph, %for.body322.preheader1707 ]
  %arrayidx324 = getelementptr inbounds ptr, ptr %call, i64 %indvars.iv1519
  %120 = load ptr, ptr %arrayidx324, align 8
  %gep = getelementptr ptr, ptr %invariant.gep, i64 %indvars.iv1519
  store ptr %120, ptr %gep, align 8
  %indvars.iv.next1520 = add nuw nsw i64 %indvars.iv1519, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next1520, %wide.trip.count
  br i1 %exitcond.not, label %for.cond332.preheader, label %for.body322, !llvm.loop !11

for.end343:                                       ; preds = %for.body335.preheader, %for.cond332.preheader
  store i8 0, ptr %listXsize236, align 8
  store i8 0, ptr %arrayidx239, align 1
  %121 = load i32, ptr %structure, align 8
  %listX349 = getelementptr inbounds i8, ptr %currSlice, i64 264
  %122 = load ptr, ptr %listX349, align 8
  %cmp.i = icmp eq i32 %121, 1
  br i1 %cmp.i, label %while.cond.preheader.i, label %if.end48.i

while.cond.preheader.i:                           ; preds = %for.end343
  %cmp2187.i = icmp sgt i32 %list0idx.8.lcssa, 0
  br i1 %cmp2187.i, label %for.cond.preheader.i, label %gen_pic_list_from_frame_list.exit

for.cond.preheader.i:                             ; preds = %while.cond.preheader.i, %for.end47.i
  %123 = phi i8 [ %141, %for.end47.i ], [ 0, %while.cond.preheader.i ]
  %bot_idx.0190.i = phi i32 [ %bot_idx.2.i, %for.end47.i ], [ 0, %while.cond.preheader.i ]
  %top_idx.0189.i = phi i32 [ %top_idx.2.i, %for.end47.i ], [ 0, %while.cond.preheader.i ]
  %cmp4182.i = icmp slt i32 %top_idx.0189.i, %list0idx.8.lcssa
  br i1 %cmp4182.i, label %for.body.preheader.i, label %for.end.i

for.body.preheader.i:                             ; preds = %for.cond.preheader.i
  %124 = sext i32 %top_idx.0189.i to i64
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i, %for.body.preheader.i
  %indvars.iv.i = phi i64 [ %124, %for.body.preheader.i ], [ %indvars.iv.next.i, %for.inc.i ]
  %arrayidx.i = getelementptr inbounds ptr, ptr %call, i64 %indvars.iv.i
  %125 = load ptr, ptr %arrayidx.i, align 8
  %126 = load i32, ptr %125, align 8
  %and.i = and i32 %126, 1
  %tobool5.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool5.not.i, label %for.inc.i, label %if.then6.i

if.then6.i:                                       ; preds = %for.body.i
  %top_field.i = getelementptr inbounds i8, ptr %125, i64 56
  %127 = load ptr, ptr %top_field.i, align 8
  %used_for_reference.i1277 = getelementptr inbounds i8, ptr %127, i64 44
  %128 = load i32, ptr %used_for_reference.i1277, align 4
  %tobool.not.i1278 = icmp eq i32 %128, 0
  br i1 %tobool.not.i1278, label %for.inc.i, label %is_short_ref.exit1283

is_short_ref.exit1283:                            ; preds = %if.then6.i
  %is_long_term.i1280 = getelementptr inbounds i8, ptr %127, i64 40
  %129 = load i8, ptr %is_long_term.i1280, align 8
  %tobool1.not.i1281.not = icmp eq i8 %129, 0
  br i1 %tobool1.not.i1281.not, label %if.then10.i, label %for.inc.i

if.then10.i:                                      ; preds = %is_short_ref.exit1283
  %130 = trunc nsw i64 %indvars.iv.i to i32
  %idxprom14.i = sext i8 %123 to i64
  %arrayidx15.i = getelementptr inbounds ptr, ptr %122, i64 %idxprom14.i
  store ptr %127, ptr %arrayidx15.i, align 8
  %131 = load i8, ptr %listXsize236, align 1
  %inc.i = add i8 %131, 1
  store i8 %inc.i, ptr %listXsize236, align 1
  %inc16.i = add nsw i32 %130, 1
  br label %for.end.i

for.inc.i:                                        ; preds = %if.then6.i, %is_short_ref.exit1283, %for.body.i
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1
  %lftr.wideiv.i = trunc i64 %indvars.iv.next.i to i32
  %exitcond.not.i = icmp eq i32 %list0idx.8.lcssa, %lftr.wideiv.i
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i

for.end.i:                                        ; preds = %for.inc.i, %if.then10.i, %for.cond.preheader.i
  %132 = phi i8 [ %inc.i, %if.then10.i ], [ %123, %for.cond.preheader.i ], [ %123, %for.inc.i ]
  %top_idx.2.i = phi i32 [ %inc16.i, %if.then10.i ], [ %top_idx.0189.i, %for.cond.preheader.i ], [ %list0idx.8.lcssa, %for.inc.i ]
  %cmp21184.i = icmp slt i32 %bot_idx.0190.i, %list0idx.8.lcssa
  br i1 %cmp21184.i, label %for.body23.preheader.i, label %for.end47.i

for.body23.preheader.i:                           ; preds = %for.end.i
  %133 = sext i32 %bot_idx.0190.i to i64
  br label %for.body23.i

for.body23.i:                                     ; preds = %for.inc45.i, %for.body23.preheader.i
  %indvars.iv212.i = phi i64 [ %133, %for.body23.preheader.i ], [ %indvars.iv.next213.i, %for.inc45.i ]
  %arrayidx25.i = getelementptr inbounds ptr, ptr %call, i64 %indvars.iv212.i
  %134 = load ptr, ptr %arrayidx25.i, align 8
  %135 = load i32, ptr %134, align 8
  %and27.i = and i32 %135, 2
  %tobool28.not.i = icmp eq i32 %and27.i, 0
  br i1 %tobool28.not.i, label %for.inc45.i, label %if.then29.i

if.then29.i:                                      ; preds = %for.body23.i
  %bottom_field.i = getelementptr inbounds i8, ptr %134, i64 64
  %136 = load ptr, ptr %bottom_field.i, align 8
  %used_for_reference.i1270 = getelementptr inbounds i8, ptr %136, i64 44
  %137 = load i32, ptr %used_for_reference.i1270, align 4
  %tobool.not.i1271 = icmp eq i32 %137, 0
  br i1 %tobool.not.i1271, label %for.inc45.i, label %is_short_ref.exit1276

is_short_ref.exit1276:                            ; preds = %if.then29.i
  %is_long_term.i1273 = getelementptr inbounds i8, ptr %136, i64 40
  %138 = load i8, ptr %is_long_term.i1273, align 8
  %tobool1.not.i1274.not = icmp eq i8 %138, 0
  br i1 %tobool1.not.i1274.not, label %if.then34.i, label %for.inc45.i

if.then34.i:                                      ; preds = %is_short_ref.exit1276
  %139 = trunc nsw i64 %indvars.iv212.i to i32
  %idxprom39.i = sext i8 %132 to i64
  %arrayidx40.i = getelementptr inbounds ptr, ptr %122, i64 %idxprom39.i
  store ptr %136, ptr %arrayidx40.i, align 8
  %140 = load i8, ptr %listXsize236, align 1
  %inc41.i = add i8 %140, 1
  store i8 %inc41.i, ptr %listXsize236, align 1
  %inc42.i = add nsw i32 %139, 1
  br label %for.end47.i

for.inc45.i:                                      ; preds = %if.then29.i, %is_short_ref.exit1276, %for.body23.i
  %indvars.iv.next213.i = add nsw i64 %indvars.iv212.i, 1
  %lftr.wideiv215.i = trunc i64 %indvars.iv.next213.i to i32
  %exitcond216.not.i = icmp eq i32 %list0idx.8.lcssa, %lftr.wideiv215.i
  br i1 %exitcond216.not.i, label %for.end47.i, label %for.body23.i

for.end47.i:                                      ; preds = %for.inc45.i, %if.then34.i, %for.end.i
  %141 = phi i8 [ %inc41.i, %if.then34.i ], [ %132, %for.end.i ], [ %132, %for.inc45.i ]
  %bot_idx.2.i = phi i32 [ %inc42.i, %if.then34.i ], [ %bot_idx.0190.i, %for.end.i ], [ %list0idx.8.lcssa, %for.inc45.i ]
  %cmp2.i = icmp slt i32 %top_idx.2.i, %list0idx.8.lcssa
  %cmp3.i = icmp slt i32 %bot_idx.2.i, %list0idx.8.lcssa
  %142 = select i1 %cmp2.i, i1 true, i1 %cmp3.i
  br i1 %142, label %for.cond.preheader.i, label %if.end48.i

if.end48.i:                                       ; preds = %for.end47.i, %for.end343
  %143 = phi i8 [ 0, %for.end343 ], [ %141, %for.end47.i ]
  %top_idx.3.i = phi i32 [ 0, %for.end343 ], [ %top_idx.2.i, %for.end47.i ]
  %bot_idx.3.i = phi i32 [ 0, %for.end343 ], [ %bot_idx.2.i, %for.end47.i ]
  %cmp49.i = icmp eq i32 %121, 2
  br i1 %cmp49.i, label %while.cond52.preheader.i, label %gen_pic_list_from_frame_list.exit

while.cond52.preheader.i:                         ; preds = %if.end48.i
  %cmp53199.i = icmp slt i32 %top_idx.3.i, %list0idx.8.lcssa
  %cmp56200.i = icmp slt i32 %bot_idx.3.i, %list0idx.8.lcssa
  %144 = select i1 %cmp53199.i, i1 true, i1 %cmp56200.i
  br i1 %144, label %for.cond60.preheader.i, label %gen_pic_list_from_frame_list.exit

for.cond60.preheader.i:                           ; preds = %while.cond52.preheader.i, %for.end117.i
  %145 = phi i8 [ %163, %for.end117.i ], [ %143, %while.cond52.preheader.i ]
  %bot_idx.4202.i = phi i32 [ %bot_idx.6.i, %for.end117.i ], [ %bot_idx.3.i, %while.cond52.preheader.i ]
  %top_idx.4201.i = phi i32 [ %top_idx.6.i, %for.end117.i ], [ %top_idx.3.i, %while.cond52.preheader.i ]
  %cmp61193.i = icmp slt i32 %bot_idx.4202.i, %list0idx.8.lcssa
  br i1 %cmp61193.i, label %for.body63.preheader.i, label %for.end88.i

for.body63.preheader.i:                           ; preds = %for.cond60.preheader.i
  %146 = sext i32 %bot_idx.4202.i to i64
  br label %for.body63.i

for.body63.i:                                     ; preds = %for.inc86.i, %for.body63.preheader.i
  %indvars.iv217.i = phi i64 [ %146, %for.body63.preheader.i ], [ %indvars.iv.next218.i, %for.inc86.i ]
  %arrayidx65.i = getelementptr inbounds ptr, ptr %call, i64 %indvars.iv217.i
  %147 = load ptr, ptr %arrayidx65.i, align 8
  %148 = load i32, ptr %147, align 8
  %and67.i = and i32 %148, 2
  %tobool68.not.i = icmp eq i32 %and67.i, 0
  br i1 %tobool68.not.i, label %for.inc86.i, label %if.then69.i

if.then69.i:                                      ; preds = %for.body63.i
  %bottom_field72.i = getelementptr inbounds i8, ptr %147, i64 64
  %149 = load ptr, ptr %bottom_field72.i, align 8
  %used_for_reference.i1263 = getelementptr inbounds i8, ptr %149, i64 44
  %150 = load i32, ptr %used_for_reference.i1263, align 4
  %tobool.not.i1264 = icmp eq i32 %150, 0
  br i1 %tobool.not.i1264, label %for.inc86.i, label %is_short_ref.exit1269

is_short_ref.exit1269:                            ; preds = %if.then69.i
  %is_long_term.i1266 = getelementptr inbounds i8, ptr %149, i64 40
  %151 = load i8, ptr %is_long_term.i1266, align 8
  %tobool1.not.i1267.not = icmp eq i8 %151, 0
  br i1 %tobool1.not.i1267.not, label %if.then75.i, label %for.inc86.i

if.then75.i:                                      ; preds = %is_short_ref.exit1269
  %152 = trunc nsw i64 %indvars.iv217.i to i32
  %idxprom80.i = sext i8 %145 to i64
  %arrayidx81.i = getelementptr inbounds ptr, ptr %122, i64 %idxprom80.i
  store ptr %149, ptr %arrayidx81.i, align 8
  %153 = load i8, ptr %listXsize236, align 1
  %inc82.i = add i8 %153, 1
  store i8 %inc82.i, ptr %listXsize236, align 1
  %inc83.i = add nsw i32 %152, 1
  br label %for.end88.i

for.inc86.i:                                      ; preds = %if.then69.i, %is_short_ref.exit1269, %for.body63.i
  %indvars.iv.next218.i = add nsw i64 %indvars.iv217.i, 1
  %lftr.wideiv220.i = trunc i64 %indvars.iv.next218.i to i32
  %exitcond221.not.i = icmp eq i32 %list0idx.8.lcssa, %lftr.wideiv220.i
  br i1 %exitcond221.not.i, label %for.end88.i, label %for.body63.i

for.end88.i:                                      ; preds = %for.inc86.i, %if.then75.i, %for.cond60.preheader.i
  %154 = phi i8 [ %inc82.i, %if.then75.i ], [ %145, %for.cond60.preheader.i ], [ %145, %for.inc86.i ]
  %bot_idx.6.i = phi i32 [ %inc83.i, %if.then75.i ], [ %bot_idx.4202.i, %for.cond60.preheader.i ], [ %list0idx.8.lcssa, %for.inc86.i ]
  %cmp90196.i = icmp slt i32 %top_idx.4201.i, %list0idx.8.lcssa
  br i1 %cmp90196.i, label %for.body92.preheader.i, label %for.end117.i

for.body92.preheader.i:                           ; preds = %for.end88.i
  %155 = sext i32 %top_idx.4201.i to i64
  br label %for.body92.i

for.body92.i:                                     ; preds = %for.inc115.i, %for.body92.preheader.i
  %indvars.iv222.i = phi i64 [ %155, %for.body92.preheader.i ], [ %indvars.iv.next223.i, %for.inc115.i ]
  %arrayidx94.i = getelementptr inbounds ptr, ptr %call, i64 %indvars.iv222.i
  %156 = load ptr, ptr %arrayidx94.i, align 8
  %157 = load i32, ptr %156, align 8
  %and96.i = and i32 %157, 1
  %tobool97.not.i = icmp eq i32 %and96.i, 0
  br i1 %tobool97.not.i, label %for.inc115.i, label %if.then98.i

if.then98.i:                                      ; preds = %for.body92.i
  %top_field101.i = getelementptr inbounds i8, ptr %156, i64 56
  %158 = load ptr, ptr %top_field101.i, align 8
  %used_for_reference.i = getelementptr inbounds i8, ptr %158, i64 44
  %159 = load i32, ptr %used_for_reference.i, align 4
  %tobool.not.i = icmp eq i32 %159, 0
  br i1 %tobool.not.i, label %for.inc115.i, label %is_short_ref.exit

is_short_ref.exit:                                ; preds = %if.then98.i
  %is_long_term.i = getelementptr inbounds i8, ptr %158, i64 40
  %160 = load i8, ptr %is_long_term.i, align 8
  %tobool1.not.i.not = icmp eq i8 %160, 0
  br i1 %tobool1.not.i.not, label %if.then104.i, label %for.inc115.i

if.then104.i:                                     ; preds = %is_short_ref.exit
  %161 = trunc nsw i64 %indvars.iv222.i to i32
  %idxprom109.i = sext i8 %154 to i64
  %arrayidx110.i = getelementptr inbounds ptr, ptr %122, i64 %idxprom109.i
  store ptr %158, ptr %arrayidx110.i, align 8
  %162 = load i8, ptr %listXsize236, align 1
  %inc111.i = add i8 %162, 1
  store i8 %inc111.i, ptr %listXsize236, align 1
  %inc112.i = add nsw i32 %161, 1
  br label %for.end117.i

for.inc115.i:                                     ; preds = %if.then98.i, %is_short_ref.exit, %for.body92.i
  %indvars.iv.next223.i = add nsw i64 %indvars.iv222.i, 1
  %lftr.wideiv225.i = trunc i64 %indvars.iv.next223.i to i32
  %exitcond226.not.i = icmp eq i32 %list0idx.8.lcssa, %lftr.wideiv225.i
  br i1 %exitcond226.not.i, label %for.end117.i, label %for.body92.i

for.end117.i:                                     ; preds = %for.inc115.i, %if.then104.i, %for.end88.i
  %163 = phi i8 [ %inc111.i, %if.then104.i ], [ %154, %for.end88.i ], [ %154, %for.inc115.i ]
  %top_idx.6.i = phi i32 [ %inc112.i, %if.then104.i ], [ %top_idx.4201.i, %for.end88.i ], [ %list0idx.8.lcssa, %for.inc115.i ]
  %cmp53.i = icmp slt i32 %top_idx.6.i, %list0idx.8.lcssa
  %cmp56.i = icmp slt i32 %bot_idx.6.i, %list0idx.8.lcssa
  %164 = select i1 %cmp53.i, i1 true, i1 %cmp56.i
  br i1 %164, label %for.cond60.preheader.i, label %gen_pic_list_from_frame_list.exit

gen_pic_list_from_frame_list.exit:                ; preds = %for.end117.i, %while.cond.preheader.i, %if.end48.i, %while.cond52.preheader.i
  %165 = load i32, ptr %structure, align 8
  %arrayidx355 = getelementptr inbounds i8, ptr %currSlice, i64 272
  %166 = load ptr, ptr %arrayidx355, align 8
  %cmp.i872 = icmp eq i32 %165, 1
  br i1 %cmp.i872, label %while.cond.preheader.i933, label %if.end48.i873

while.cond.preheader.i933:                        ; preds = %gen_pic_list_from_frame_list.exit
  %cmp2187.i934 = icmp sgt i32 %list0idx.8.lcssa, 0
  br i1 %cmp2187.i934, label %for.cond.preheader.i935, label %gen_pic_list_from_frame_list.exit988

for.cond.preheader.i935:                          ; preds = %while.cond.preheader.i933, %for.end47.i942
  %bot_idx.0190.i936 = phi i32 [ %bot_idx.2.i943, %for.end47.i942 ], [ 0, %while.cond.preheader.i933 ]
  %top_idx.0189.i937 = phi i32 [ %top_idx.2.i940, %for.end47.i942 ], [ 0, %while.cond.preheader.i933 ]
  %cmp4182.i938 = icmp slt i32 %top_idx.0189.i937, %list0idx.8.lcssa
  br i1 %cmp4182.i938, label %for.body.preheader.i967, label %for.end.i939

for.body.preheader.i967:                          ; preds = %for.cond.preheader.i935
  %167 = sext i32 %top_idx.0189.i937 to i64
  br label %for.body.i968

for.body.i968:                                    ; preds = %for.inc.i984, %for.body.preheader.i967
  %indvars.iv.i969 = phi i64 [ %167, %for.body.preheader.i967 ], [ %indvars.iv.next.i985, %for.inc.i984 ]
  %arrayidx.i970 = getelementptr inbounds ptr, ptr %call224, i64 %indvars.iv.i969
  %168 = load ptr, ptr %arrayidx.i970, align 8
  %169 = load i32, ptr %168, align 8
  %and.i971 = and i32 %169, 1
  %tobool5.not.i972 = icmp eq i32 %and.i971, 0
  br i1 %tobool5.not.i972, label %for.inc.i984, label %if.then6.i973

if.then6.i973:                                    ; preds = %for.body.i968
  %top_field.i974 = getelementptr inbounds i8, ptr %168, i64 56
  %170 = load ptr, ptr %top_field.i974, align 8
  %used_for_reference.i1305 = getelementptr inbounds i8, ptr %170, i64 44
  %171 = load i32, ptr %used_for_reference.i1305, align 4
  %tobool.not.i1306 = icmp eq i32 %171, 0
  br i1 %tobool.not.i1306, label %for.inc.i984, label %is_short_ref.exit1311

is_short_ref.exit1311:                            ; preds = %if.then6.i973
  %is_long_term.i1308 = getelementptr inbounds i8, ptr %170, i64 40
  %172 = load i8, ptr %is_long_term.i1308, align 8
  %tobool1.not.i1309.not = icmp eq i8 %172, 0
  br i1 %tobool1.not.i1309.not, label %if.then10.i977, label %for.inc.i984

if.then10.i977:                                   ; preds = %is_short_ref.exit1311
  %173 = trunc nsw i64 %indvars.iv.i969 to i32
  %174 = load i8, ptr %arrayidx239, align 1
  %idxprom14.i980 = sext i8 %174 to i64
  %arrayidx15.i981 = getelementptr inbounds ptr, ptr %166, i64 %idxprom14.i980
  store ptr %170, ptr %arrayidx15.i981, align 8
  %175 = load i8, ptr %arrayidx239, align 1
  %inc.i982 = add i8 %175, 1
  store i8 %inc.i982, ptr %arrayidx239, align 1
  %inc16.i983 = add nsw i32 %173, 1
  br label %for.end.i939

for.inc.i984:                                     ; preds = %if.then6.i973, %is_short_ref.exit1311, %for.body.i968
  %indvars.iv.next.i985 = add nsw i64 %indvars.iv.i969, 1
  %lftr.wideiv.i986 = trunc i64 %indvars.iv.next.i985 to i32
  %exitcond.not.i987 = icmp eq i32 %list0idx.8.lcssa, %lftr.wideiv.i986
  br i1 %exitcond.not.i987, label %for.end.i939, label %for.body.i968

for.end.i939:                                     ; preds = %for.inc.i984, %if.then10.i977, %for.cond.preheader.i935
  %top_idx.2.i940 = phi i32 [ %inc16.i983, %if.then10.i977 ], [ %top_idx.0189.i937, %for.cond.preheader.i935 ], [ %list0idx.8.lcssa, %for.inc.i984 ]
  %cmp21184.i941 = icmp slt i32 %bot_idx.0190.i936, %list0idx.8.lcssa
  br i1 %cmp21184.i941, label %for.body23.preheader.i946, label %for.end47.i942

for.body23.preheader.i946:                        ; preds = %for.end.i939
  %176 = sext i32 %bot_idx.0190.i936 to i64
  br label %for.body23.i947

for.body23.i947:                                  ; preds = %for.inc45.i963, %for.body23.preheader.i946
  %indvars.iv212.i948 = phi i64 [ %176, %for.body23.preheader.i946 ], [ %indvars.iv.next213.i964, %for.inc45.i963 ]
  %arrayidx25.i949 = getelementptr inbounds ptr, ptr %call224, i64 %indvars.iv212.i948
  %177 = load ptr, ptr %arrayidx25.i949, align 8
  %178 = load i32, ptr %177, align 8
  %and27.i950 = and i32 %178, 2
  %tobool28.not.i951 = icmp eq i32 %and27.i950, 0
  br i1 %tobool28.not.i951, label %for.inc45.i963, label %if.then29.i952

if.then29.i952:                                   ; preds = %for.body23.i947
  %bottom_field.i953 = getelementptr inbounds i8, ptr %177, i64 64
  %179 = load ptr, ptr %bottom_field.i953, align 8
  %used_for_reference.i1298 = getelementptr inbounds i8, ptr %179, i64 44
  %180 = load i32, ptr %used_for_reference.i1298, align 4
  %tobool.not.i1299 = icmp eq i32 %180, 0
  br i1 %tobool.not.i1299, label %for.inc45.i963, label %is_short_ref.exit1304

is_short_ref.exit1304:                            ; preds = %if.then29.i952
  %is_long_term.i1301 = getelementptr inbounds i8, ptr %179, i64 40
  %181 = load i8, ptr %is_long_term.i1301, align 8
  %tobool1.not.i1302.not = icmp eq i8 %181, 0
  br i1 %tobool1.not.i1302.not, label %if.then34.i956, label %for.inc45.i963

if.then34.i956:                                   ; preds = %is_short_ref.exit1304
  %182 = trunc nsw i64 %indvars.iv212.i948 to i32
  %183 = load i8, ptr %arrayidx239, align 1
  %idxprom39.i959 = sext i8 %183 to i64
  %arrayidx40.i960 = getelementptr inbounds ptr, ptr %166, i64 %idxprom39.i959
  store ptr %179, ptr %arrayidx40.i960, align 8
  %184 = load i8, ptr %arrayidx239, align 1
  %inc41.i961 = add i8 %184, 1
  store i8 %inc41.i961, ptr %arrayidx239, align 1
  %inc42.i962 = add nsw i32 %182, 1
  br label %for.end47.i942

for.inc45.i963:                                   ; preds = %if.then29.i952, %is_short_ref.exit1304, %for.body23.i947
  %indvars.iv.next213.i964 = add nsw i64 %indvars.iv212.i948, 1
  %lftr.wideiv215.i965 = trunc i64 %indvars.iv.next213.i964 to i32
  %exitcond216.not.i966 = icmp eq i32 %list0idx.8.lcssa, %lftr.wideiv215.i965
  br i1 %exitcond216.not.i966, label %for.end47.i942, label %for.body23.i947

for.end47.i942:                                   ; preds = %for.inc45.i963, %if.then34.i956, %for.end.i939
  %bot_idx.2.i943 = phi i32 [ %inc42.i962, %if.then34.i956 ], [ %bot_idx.0190.i936, %for.end.i939 ], [ %list0idx.8.lcssa, %for.inc45.i963 ]
  %cmp2.i944 = icmp slt i32 %top_idx.2.i940, %list0idx.8.lcssa
  %cmp3.i945 = icmp slt i32 %bot_idx.2.i943, %list0idx.8.lcssa
  %185 = select i1 %cmp2.i944, i1 true, i1 %cmp3.i945
  br i1 %185, label %for.cond.preheader.i935, label %if.end48.i873

if.end48.i873:                                    ; preds = %for.end47.i942, %gen_pic_list_from_frame_list.exit
  %top_idx.3.i874 = phi i32 [ 0, %gen_pic_list_from_frame_list.exit ], [ %top_idx.2.i940, %for.end47.i942 ]
  %bot_idx.3.i875 = phi i32 [ 0, %gen_pic_list_from_frame_list.exit ], [ %bot_idx.2.i943, %for.end47.i942 ]
  %cmp49.i876 = icmp eq i32 %165, 2
  br i1 %cmp49.i876, label %while.cond52.preheader.i877, label %gen_pic_list_from_frame_list.exit988

while.cond52.preheader.i877:                      ; preds = %if.end48.i873
  %cmp53199.i878 = icmp slt i32 %top_idx.3.i874, %list0idx.8.lcssa
  %cmp56200.i879 = icmp slt i32 %bot_idx.3.i875, %list0idx.8.lcssa
  %186 = select i1 %cmp53199.i878, i1 true, i1 %cmp56200.i879
  br i1 %186, label %for.cond60.preheader.i880, label %gen_pic_list_from_frame_list.exit988

for.cond60.preheader.i880:                        ; preds = %while.cond52.preheader.i877, %for.end117.i887
  %bot_idx.4202.i881 = phi i32 [ %bot_idx.6.i885, %for.end117.i887 ], [ %bot_idx.3.i875, %while.cond52.preheader.i877 ]
  %top_idx.4201.i882 = phi i32 [ %top_idx.6.i888, %for.end117.i887 ], [ %top_idx.3.i874, %while.cond52.preheader.i877 ]
  %cmp61193.i883 = icmp slt i32 %bot_idx.4202.i881, %list0idx.8.lcssa
  br i1 %cmp61193.i883, label %for.body63.preheader.i912, label %for.end88.i884

for.body63.preheader.i912:                        ; preds = %for.cond60.preheader.i880
  %187 = sext i32 %bot_idx.4202.i881 to i64
  br label %for.body63.i913

for.body63.i913:                                  ; preds = %for.inc86.i929, %for.body63.preheader.i912
  %indvars.iv217.i914 = phi i64 [ %187, %for.body63.preheader.i912 ], [ %indvars.iv.next218.i930, %for.inc86.i929 ]
  %arrayidx65.i915 = getelementptr inbounds ptr, ptr %call224, i64 %indvars.iv217.i914
  %188 = load ptr, ptr %arrayidx65.i915, align 8
  %189 = load i32, ptr %188, align 8
  %and67.i916 = and i32 %189, 2
  %tobool68.not.i917 = icmp eq i32 %and67.i916, 0
  br i1 %tobool68.not.i917, label %for.inc86.i929, label %if.then69.i918

if.then69.i918:                                   ; preds = %for.body63.i913
  %bottom_field72.i919 = getelementptr inbounds i8, ptr %188, i64 64
  %190 = load ptr, ptr %bottom_field72.i919, align 8
  %used_for_reference.i1291 = getelementptr inbounds i8, ptr %190, i64 44
  %191 = load i32, ptr %used_for_reference.i1291, align 4
  %tobool.not.i1292 = icmp eq i32 %191, 0
  br i1 %tobool.not.i1292, label %for.inc86.i929, label %is_short_ref.exit1297

is_short_ref.exit1297:                            ; preds = %if.then69.i918
  %is_long_term.i1294 = getelementptr inbounds i8, ptr %190, i64 40
  %192 = load i8, ptr %is_long_term.i1294, align 8
  %tobool1.not.i1295.not = icmp eq i8 %192, 0
  br i1 %tobool1.not.i1295.not, label %if.then75.i922, label %for.inc86.i929

if.then75.i922:                                   ; preds = %is_short_ref.exit1297
  %193 = trunc nsw i64 %indvars.iv217.i914 to i32
  %194 = load i8, ptr %arrayidx239, align 1
  %idxprom80.i925 = sext i8 %194 to i64
  %arrayidx81.i926 = getelementptr inbounds ptr, ptr %166, i64 %idxprom80.i925
  store ptr %190, ptr %arrayidx81.i926, align 8
  %195 = load i8, ptr %arrayidx239, align 1
  %inc82.i927 = add i8 %195, 1
  store i8 %inc82.i927, ptr %arrayidx239, align 1
  %inc83.i928 = add nsw i32 %193, 1
  br label %for.end88.i884

for.inc86.i929:                                   ; preds = %if.then69.i918, %is_short_ref.exit1297, %for.body63.i913
  %indvars.iv.next218.i930 = add nsw i64 %indvars.iv217.i914, 1
  %lftr.wideiv220.i931 = trunc i64 %indvars.iv.next218.i930 to i32
  %exitcond221.not.i932 = icmp eq i32 %list0idx.8.lcssa, %lftr.wideiv220.i931
  br i1 %exitcond221.not.i932, label %for.end88.i884, label %for.body63.i913

for.end88.i884:                                   ; preds = %for.inc86.i929, %if.then75.i922, %for.cond60.preheader.i880
  %bot_idx.6.i885 = phi i32 [ %inc83.i928, %if.then75.i922 ], [ %bot_idx.4202.i881, %for.cond60.preheader.i880 ], [ %list0idx.8.lcssa, %for.inc86.i929 ]
  %cmp90196.i886 = icmp slt i32 %top_idx.4201.i882, %list0idx.8.lcssa
  br i1 %cmp90196.i886, label %for.body92.preheader.i891, label %for.end117.i887

for.body92.preheader.i891:                        ; preds = %for.end88.i884
  %196 = sext i32 %top_idx.4201.i882 to i64
  br label %for.body92.i892

for.body92.i892:                                  ; preds = %for.inc115.i908, %for.body92.preheader.i891
  %indvars.iv222.i893 = phi i64 [ %196, %for.body92.preheader.i891 ], [ %indvars.iv.next223.i909, %for.inc115.i908 ]
  %arrayidx94.i894 = getelementptr inbounds ptr, ptr %call224, i64 %indvars.iv222.i893
  %197 = load ptr, ptr %arrayidx94.i894, align 8
  %198 = load i32, ptr %197, align 8
  %and96.i895 = and i32 %198, 1
  %tobool97.not.i896 = icmp eq i32 %and96.i895, 0
  br i1 %tobool97.not.i896, label %for.inc115.i908, label %if.then98.i897

if.then98.i897:                                   ; preds = %for.body92.i892
  %top_field101.i898 = getelementptr inbounds i8, ptr %197, i64 56
  %199 = load ptr, ptr %top_field101.i898, align 8
  %used_for_reference.i1284 = getelementptr inbounds i8, ptr %199, i64 44
  %200 = load i32, ptr %used_for_reference.i1284, align 4
  %tobool.not.i1285 = icmp eq i32 %200, 0
  br i1 %tobool.not.i1285, label %for.inc115.i908, label %is_short_ref.exit1290

is_short_ref.exit1290:                            ; preds = %if.then98.i897
  %is_long_term.i1287 = getelementptr inbounds i8, ptr %199, i64 40
  %201 = load i8, ptr %is_long_term.i1287, align 8
  %tobool1.not.i1288.not = icmp eq i8 %201, 0
  br i1 %tobool1.not.i1288.not, label %if.then104.i901, label %for.inc115.i908

if.then104.i901:                                  ; preds = %is_short_ref.exit1290
  %202 = trunc nsw i64 %indvars.iv222.i893 to i32
  %203 = load i8, ptr %arrayidx239, align 1
  %idxprom109.i904 = sext i8 %203 to i64
  %arrayidx110.i905 = getelementptr inbounds ptr, ptr %166, i64 %idxprom109.i904
  store ptr %199, ptr %arrayidx110.i905, align 8
  %204 = load i8, ptr %arrayidx239, align 1
  %inc111.i906 = add i8 %204, 1
  store i8 %inc111.i906, ptr %arrayidx239, align 1
  %inc112.i907 = add nsw i32 %202, 1
  br label %for.end117.i887

for.inc115.i908:                                  ; preds = %if.then98.i897, %is_short_ref.exit1290, %for.body92.i892
  %indvars.iv.next223.i909 = add nsw i64 %indvars.iv222.i893, 1
  %lftr.wideiv225.i910 = trunc i64 %indvars.iv.next223.i909 to i32
  %exitcond226.not.i911 = icmp eq i32 %list0idx.8.lcssa, %lftr.wideiv225.i910
  br i1 %exitcond226.not.i911, label %for.end117.i887, label %for.body92.i892

for.end117.i887:                                  ; preds = %for.inc115.i908, %if.then104.i901, %for.end88.i884
  %top_idx.6.i888 = phi i32 [ %inc112.i907, %if.then104.i901 ], [ %top_idx.4201.i882, %for.end88.i884 ], [ %list0idx.8.lcssa, %for.inc115.i908 ]
  %cmp53.i889 = icmp slt i32 %top_idx.6.i888, %list0idx.8.lcssa
  %cmp56.i890 = icmp slt i32 %bot_idx.6.i885, %list0idx.8.lcssa
  %205 = select i1 %cmp53.i889, i1 true, i1 %cmp56.i890
  br i1 %205, label %for.cond60.preheader.i880, label %gen_pic_list_from_frame_list.exit988

gen_pic_list_from_frame_list.exit988:             ; preds = %for.end117.i887, %while.cond.preheader.i933, %if.end48.i873, %while.cond52.preheader.i877
  %ltref_frames_in_buffer359 = getelementptr inbounds i8, ptr %1, i64 52
  %206 = load i32, ptr %ltref_frames_in_buffer359, align 4
  %cmp3601448.not = icmp eq i32 %206, 0
  br i1 %cmp3601448.not, label %for.end379, label %for.body362.lr.ph

for.body362.lr.ph:                                ; preds = %gen_pic_list_from_frame_list.exit988
  %fs_ltref363 = getelementptr inbounds i8, ptr %1, i64 32
  %.pre1584 = load ptr, ptr %fs_ltref363, align 8
  %207 = zext i32 %206 to i64
  %xtraiter = and i64 %207, 1
  %208 = icmp eq i32 %206, 1
  br i1 %208, label %for.end379.loopexit.unr-lcssa, label %for.body362.lr.ph.new

for.body362.lr.ph.new:                            ; preds = %for.body362.lr.ph
  %unroll_iter = and i64 %207, 4294967294
  br label %for.body362

for.body362:                                      ; preds = %for.inc377.1, %for.body362.lr.ph.new
  %indvars.iv1528 = phi i64 [ 0, %for.body362.lr.ph.new ], [ %indvars.iv.next1529.1, %for.inc377.1 ]
  %listltidx.01449 = phi i32 [ 0, %for.body362.lr.ph.new ], [ %listltidx.1.1, %for.inc377.1 ]
  %niter = phi i64 [ 0, %for.body362.lr.ph.new ], [ %niter.next.1, %for.inc377.1 ]
  %arrayidx365 = getelementptr inbounds ptr, ptr %.pre1584, i64 %indvars.iv1528
  %209 = load ptr, ptr %arrayidx365, align 8
  %view_id366 = getelementptr inbounds i8, ptr %209, i64 72
  %210 = load i32, ptr %view_id366, align 8
  %cmp367 = icmp eq i32 %210, %3
  br i1 %cmp367, label %if.then369, label %for.inc377

if.then369:                                       ; preds = %for.body362
  %inc373 = add nsw i32 %listltidx.01449, 1
  %idxprom374 = sext i32 %listltidx.01449 to i64
  %arrayidx375 = getelementptr inbounds ptr, ptr %call231, i64 %idxprom374
  store ptr %209, ptr %arrayidx375, align 8
  br label %for.inc377

for.inc377:                                       ; preds = %for.body362, %if.then369
  %listltidx.1 = phi i32 [ %inc373, %if.then369 ], [ %listltidx.01449, %for.body362 ]
  %indvars.iv.next1529 = or disjoint i64 %indvars.iv1528, 1
  %arrayidx365.1 = getelementptr inbounds ptr, ptr %.pre1584, i64 %indvars.iv.next1529
  %211 = load ptr, ptr %arrayidx365.1, align 8
  %view_id366.1 = getelementptr inbounds i8, ptr %211, i64 72
  %212 = load i32, ptr %view_id366.1, align 8
  %cmp367.1 = icmp eq i32 %212, %3
  br i1 %cmp367.1, label %if.then369.1, label %for.inc377.1

if.then369.1:                                     ; preds = %for.inc377
  %inc373.1 = add nsw i32 %listltidx.1, 1
  %idxprom374.1 = sext i32 %listltidx.1 to i64
  %arrayidx375.1 = getelementptr inbounds ptr, ptr %call231, i64 %idxprom374.1
  store ptr %211, ptr %arrayidx375.1, align 8
  br label %for.inc377.1

for.inc377.1:                                     ; preds = %if.then369.1, %for.inc377
  %listltidx.1.1 = phi i32 [ %inc373.1, %if.then369.1 ], [ %listltidx.1, %for.inc377 ]
  %indvars.iv.next1529.1 = add nuw nsw i64 %indvars.iv1528, 2
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %for.end379.loopexit.unr-lcssa, label %for.body362

for.end379.loopexit.unr-lcssa:                    ; preds = %for.inc377.1, %for.body362.lr.ph
  %listltidx.1.lcssa.ph = phi i32 [ poison, %for.body362.lr.ph ], [ %listltidx.1.1, %for.inc377.1 ]
  %indvars.iv1528.unr = phi i64 [ 0, %for.body362.lr.ph ], [ %indvars.iv.next1529.1, %for.inc377.1 ]
  %listltidx.01449.unr = phi i32 [ 0, %for.body362.lr.ph ], [ %listltidx.1.1, %for.inc377.1 ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.end379, label %for.body362.epil

for.body362.epil:                                 ; preds = %for.end379.loopexit.unr-lcssa
  %arrayidx365.epil = getelementptr inbounds ptr, ptr %.pre1584, i64 %indvars.iv1528.unr
  %213 = load ptr, ptr %arrayidx365.epil, align 8
  %view_id366.epil = getelementptr inbounds i8, ptr %213, i64 72
  %214 = load i32, ptr %view_id366.epil, align 8
  %cmp367.epil = icmp eq i32 %214, %3
  br i1 %cmp367.epil, label %if.then369.epil, label %for.end379

if.then369.epil:                                  ; preds = %for.body362.epil
  %inc373.epil = add nsw i32 %listltidx.01449.unr, 1
  %idxprom374.epil = sext i32 %listltidx.01449.unr to i64
  %arrayidx375.epil = getelementptr inbounds ptr, ptr %call231, i64 %idxprom374.epil
  store ptr %213, ptr %arrayidx375.epil, align 8
  br label %for.end379

for.end379:                                       ; preds = %for.end379.loopexit.unr-lcssa, %if.then369.epil, %for.body362.epil, %gen_pic_list_from_frame_list.exit988
  %listltidx.0.lcssa = phi i32 [ 0, %gen_pic_list_from_frame_list.exit988 ], [ %listltidx.1.lcssa.ph, %for.end379.loopexit.unr-lcssa ], [ %inc373.epil, %if.then369.epil ], [ %listltidx.01449.unr, %for.body362.epil ]
  %conv380 = sext i32 %listltidx.0.lcssa to i64
  tail call void @qsort(ptr noundef %call231, i64 noundef %conv380, i64 noundef 8, ptr noundef nonnull @compare_fs_by_lt_pic_idx_asc) #20
  %215 = load i32, ptr %structure, align 8
  %216 = load ptr, ptr %listX349, align 8
  %cmp.i989 = icmp eq i32 %215, 1
  br i1 %cmp.i989, label %while.cond.preheader.i1050, label %if.end48.i990

while.cond.preheader.i1050:                       ; preds = %for.end379
  %cmp2187.i1051 = icmp sgt i32 %listltidx.0.lcssa, 0
  br i1 %cmp2187.i1051, label %for.cond.preheader.i1052, label %gen_pic_list_from_frame_list.exit1222

for.cond.preheader.i1052:                         ; preds = %while.cond.preheader.i1050, %for.end47.i1059
  %bot_idx.0190.i1053 = phi i32 [ %bot_idx.2.i1060, %for.end47.i1059 ], [ 0, %while.cond.preheader.i1050 ]
  %top_idx.0189.i1054 = phi i32 [ %top_idx.2.i1057, %for.end47.i1059 ], [ 0, %while.cond.preheader.i1050 ]
  %cmp4182.i1055 = icmp slt i32 %top_idx.0189.i1054, %listltidx.0.lcssa
  br i1 %cmp4182.i1055, label %for.body.preheader.i1084, label %for.end.i1056

for.body.preheader.i1084:                         ; preds = %for.cond.preheader.i1052
  %217 = sext i32 %top_idx.0189.i1054 to i64
  br label %for.body.i1085

for.body.i1085:                                   ; preds = %for.inc.i1101, %for.body.preheader.i1084
  %indvars.iv.i1086 = phi i64 [ %217, %for.body.preheader.i1084 ], [ %indvars.iv.next.i1102, %for.inc.i1101 ]
  %arrayidx.i1087 = getelementptr inbounds ptr, ptr %call231, i64 %indvars.iv.i1086
  %218 = load ptr, ptr %arrayidx.i1087, align 8
  %219 = load i32, ptr %218, align 8
  %and.i1088 = and i32 %219, 1
  %tobool5.not.i1089 = icmp eq i32 %and.i1088, 0
  br i1 %tobool5.not.i1089, label %for.inc.i1101, label %if.then6.i1090

if.then6.i1090:                                   ; preds = %for.body.i1085
  %top_field.i1091 = getelementptr inbounds i8, ptr %218, i64 56
  %220 = load ptr, ptr %top_field.i1091, align 8
  %used_for_reference.i1331 = getelementptr inbounds i8, ptr %220, i64 44
  %221 = load i32, ptr %used_for_reference.i1331, align 4
  %tobool.not.i1332 = icmp eq i32 %221, 0
  br i1 %tobool.not.i1332, label %for.inc.i1101, label %is_long_ref.exit1337

is_long_ref.exit1337:                             ; preds = %if.then6.i1090
  %is_long_term.i1334 = getelementptr inbounds i8, ptr %220, i64 40
  %222 = load i8, ptr %is_long_term.i1334, align 8
  %tobool1.i1335.not = icmp eq i8 %222, 0
  br i1 %tobool1.i1335.not, label %for.inc.i1101, label %if.then10.i1094

if.then10.i1094:                                  ; preds = %is_long_ref.exit1337
  %223 = trunc nsw i64 %indvars.iv.i1086 to i32
  %224 = load i8, ptr %listXsize236, align 1
  %idxprom14.i1097 = sext i8 %224 to i64
  %arrayidx15.i1098 = getelementptr inbounds ptr, ptr %216, i64 %idxprom14.i1097
  store ptr %220, ptr %arrayidx15.i1098, align 8
  %225 = load i8, ptr %listXsize236, align 1
  %inc.i1099 = add i8 %225, 1
  store i8 %inc.i1099, ptr %listXsize236, align 1
  %inc16.i1100 = add nsw i32 %223, 1
  br label %for.end.i1056

for.inc.i1101:                                    ; preds = %if.then6.i1090, %is_long_ref.exit1337, %for.body.i1085
  %indvars.iv.next.i1102 = add nsw i64 %indvars.iv.i1086, 1
  %lftr.wideiv.i1103 = trunc i64 %indvars.iv.next.i1102 to i32
  %exitcond.not.i1104 = icmp eq i32 %listltidx.0.lcssa, %lftr.wideiv.i1103
  br i1 %exitcond.not.i1104, label %for.end.i1056, label %for.body.i1085

for.end.i1056:                                    ; preds = %for.inc.i1101, %if.then10.i1094, %for.cond.preheader.i1052
  %top_idx.2.i1057 = phi i32 [ %inc16.i1100, %if.then10.i1094 ], [ %top_idx.0189.i1054, %for.cond.preheader.i1052 ], [ %listltidx.0.lcssa, %for.inc.i1101 ]
  %cmp21184.i1058 = icmp slt i32 %bot_idx.0190.i1053, %listltidx.0.lcssa
  br i1 %cmp21184.i1058, label %for.body23.preheader.i1063, label %for.end47.i1059

for.body23.preheader.i1063:                       ; preds = %for.end.i1056
  %226 = sext i32 %bot_idx.0190.i1053 to i64
  br label %for.body23.i1064

for.body23.i1064:                                 ; preds = %for.inc45.i1080, %for.body23.preheader.i1063
  %indvars.iv212.i1065 = phi i64 [ %226, %for.body23.preheader.i1063 ], [ %indvars.iv.next213.i1081, %for.inc45.i1080 ]
  %arrayidx25.i1066 = getelementptr inbounds ptr, ptr %call231, i64 %indvars.iv212.i1065
  %227 = load ptr, ptr %arrayidx25.i1066, align 8
  %228 = load i32, ptr %227, align 8
  %and27.i1067 = and i32 %228, 2
  %tobool28.not.i1068 = icmp eq i32 %and27.i1067, 0
  br i1 %tobool28.not.i1068, label %for.inc45.i1080, label %if.then29.i1069

if.then29.i1069:                                  ; preds = %for.body23.i1064
  %bottom_field.i1070 = getelementptr inbounds i8, ptr %227, i64 64
  %229 = load ptr, ptr %bottom_field.i1070, align 8
  %used_for_reference.i1324 = getelementptr inbounds i8, ptr %229, i64 44
  %230 = load i32, ptr %used_for_reference.i1324, align 4
  %tobool.not.i1325 = icmp eq i32 %230, 0
  br i1 %tobool.not.i1325, label %for.inc45.i1080, label %is_long_ref.exit1330

is_long_ref.exit1330:                             ; preds = %if.then29.i1069
  %is_long_term.i1327 = getelementptr inbounds i8, ptr %229, i64 40
  %231 = load i8, ptr %is_long_term.i1327, align 8
  %tobool1.i1328.not = icmp eq i8 %231, 0
  br i1 %tobool1.i1328.not, label %for.inc45.i1080, label %if.then34.i1073

if.then34.i1073:                                  ; preds = %is_long_ref.exit1330
  %232 = trunc nsw i64 %indvars.iv212.i1065 to i32
  %233 = load i8, ptr %listXsize236, align 1
  %idxprom39.i1076 = sext i8 %233 to i64
  %arrayidx40.i1077 = getelementptr inbounds ptr, ptr %216, i64 %idxprom39.i1076
  store ptr %229, ptr %arrayidx40.i1077, align 8
  %234 = load i8, ptr %listXsize236, align 1
  %inc41.i1078 = add i8 %234, 1
  store i8 %inc41.i1078, ptr %listXsize236, align 1
  %inc42.i1079 = add nsw i32 %232, 1
  br label %for.end47.i1059

for.inc45.i1080:                                  ; preds = %if.then29.i1069, %is_long_ref.exit1330, %for.body23.i1064
  %indvars.iv.next213.i1081 = add nsw i64 %indvars.iv212.i1065, 1
  %lftr.wideiv215.i1082 = trunc i64 %indvars.iv.next213.i1081 to i32
  %exitcond216.not.i1083 = icmp eq i32 %listltidx.0.lcssa, %lftr.wideiv215.i1082
  br i1 %exitcond216.not.i1083, label %for.end47.i1059, label %for.body23.i1064

for.end47.i1059:                                  ; preds = %for.inc45.i1080, %if.then34.i1073, %for.end.i1056
  %bot_idx.2.i1060 = phi i32 [ %inc42.i1079, %if.then34.i1073 ], [ %bot_idx.0190.i1053, %for.end.i1056 ], [ %listltidx.0.lcssa, %for.inc45.i1080 ]
  %cmp2.i1061 = icmp slt i32 %top_idx.2.i1057, %listltidx.0.lcssa
  %cmp3.i1062 = icmp slt i32 %bot_idx.2.i1060, %listltidx.0.lcssa
  %235 = select i1 %cmp2.i1061, i1 true, i1 %cmp3.i1062
  br i1 %235, label %for.cond.preheader.i1052, label %if.end48.i990

if.end48.i990:                                    ; preds = %for.end47.i1059, %for.end379
  %top_idx.3.i991 = phi i32 [ 0, %for.end379 ], [ %top_idx.2.i1057, %for.end47.i1059 ]
  %bot_idx.3.i992 = phi i32 [ 0, %for.end379 ], [ %bot_idx.2.i1060, %for.end47.i1059 ]
  %cmp49.i993 = icmp eq i32 %215, 2
  br i1 %cmp49.i993, label %while.cond52.preheader.i994, label %gen_pic_list_from_frame_list.exit1105

while.cond52.preheader.i994:                      ; preds = %if.end48.i990
  %cmp53199.i995 = icmp slt i32 %top_idx.3.i991, %listltidx.0.lcssa
  %cmp56200.i996 = icmp slt i32 %bot_idx.3.i992, %listltidx.0.lcssa
  %236 = select i1 %cmp53199.i995, i1 true, i1 %cmp56200.i996
  br i1 %236, label %for.cond60.preheader.i997, label %gen_pic_list_from_frame_list.exit1105

for.cond60.preheader.i997:                        ; preds = %while.cond52.preheader.i994, %for.end117.i1004
  %bot_idx.4202.i998 = phi i32 [ %bot_idx.6.i1002, %for.end117.i1004 ], [ %bot_idx.3.i992, %while.cond52.preheader.i994 ]
  %top_idx.4201.i999 = phi i32 [ %top_idx.6.i1005, %for.end117.i1004 ], [ %top_idx.3.i991, %while.cond52.preheader.i994 ]
  %cmp61193.i1000 = icmp slt i32 %bot_idx.4202.i998, %listltidx.0.lcssa
  br i1 %cmp61193.i1000, label %for.body63.preheader.i1029, label %for.end88.i1001

for.body63.preheader.i1029:                       ; preds = %for.cond60.preheader.i997
  %237 = sext i32 %bot_idx.4202.i998 to i64
  br label %for.body63.i1030

for.body63.i1030:                                 ; preds = %for.inc86.i1046, %for.body63.preheader.i1029
  %indvars.iv217.i1031 = phi i64 [ %237, %for.body63.preheader.i1029 ], [ %indvars.iv.next218.i1047, %for.inc86.i1046 ]
  %arrayidx65.i1032 = getelementptr inbounds ptr, ptr %call231, i64 %indvars.iv217.i1031
  %238 = load ptr, ptr %arrayidx65.i1032, align 8
  %239 = load i32, ptr %238, align 8
  %and67.i1033 = and i32 %239, 2
  %tobool68.not.i1034 = icmp eq i32 %and67.i1033, 0
  br i1 %tobool68.not.i1034, label %for.inc86.i1046, label %if.then69.i1035

if.then69.i1035:                                  ; preds = %for.body63.i1030
  %bottom_field72.i1036 = getelementptr inbounds i8, ptr %238, i64 64
  %240 = load ptr, ptr %bottom_field72.i1036, align 8
  %used_for_reference.i1317 = getelementptr inbounds i8, ptr %240, i64 44
  %241 = load i32, ptr %used_for_reference.i1317, align 4
  %tobool.not.i1318 = icmp eq i32 %241, 0
  br i1 %tobool.not.i1318, label %for.inc86.i1046, label %is_long_ref.exit1323

is_long_ref.exit1323:                             ; preds = %if.then69.i1035
  %is_long_term.i1320 = getelementptr inbounds i8, ptr %240, i64 40
  %242 = load i8, ptr %is_long_term.i1320, align 8
  %tobool1.i1321.not = icmp eq i8 %242, 0
  br i1 %tobool1.i1321.not, label %for.inc86.i1046, label %if.then75.i1039

if.then75.i1039:                                  ; preds = %is_long_ref.exit1323
  %243 = trunc nsw i64 %indvars.iv217.i1031 to i32
  %244 = load i8, ptr %listXsize236, align 1
  %idxprom80.i1042 = sext i8 %244 to i64
  %arrayidx81.i1043 = getelementptr inbounds ptr, ptr %216, i64 %idxprom80.i1042
  store ptr %240, ptr %arrayidx81.i1043, align 8
  %245 = load i8, ptr %listXsize236, align 1
  %inc82.i1044 = add i8 %245, 1
  store i8 %inc82.i1044, ptr %listXsize236, align 1
  %inc83.i1045 = add nsw i32 %243, 1
  br label %for.end88.i1001

for.inc86.i1046:                                  ; preds = %if.then69.i1035, %is_long_ref.exit1323, %for.body63.i1030
  %indvars.iv.next218.i1047 = add nsw i64 %indvars.iv217.i1031, 1
  %lftr.wideiv220.i1048 = trunc i64 %indvars.iv.next218.i1047 to i32
  %exitcond221.not.i1049 = icmp eq i32 %listltidx.0.lcssa, %lftr.wideiv220.i1048
  br i1 %exitcond221.not.i1049, label %for.end88.i1001, label %for.body63.i1030

for.end88.i1001:                                  ; preds = %for.inc86.i1046, %if.then75.i1039, %for.cond60.preheader.i997
  %bot_idx.6.i1002 = phi i32 [ %inc83.i1045, %if.then75.i1039 ], [ %bot_idx.4202.i998, %for.cond60.preheader.i997 ], [ %listltidx.0.lcssa, %for.inc86.i1046 ]
  %cmp90196.i1003 = icmp slt i32 %top_idx.4201.i999, %listltidx.0.lcssa
  br i1 %cmp90196.i1003, label %for.body92.preheader.i1008, label %for.end117.i1004

for.body92.preheader.i1008:                       ; preds = %for.end88.i1001
  %246 = sext i32 %top_idx.4201.i999 to i64
  br label %for.body92.i1009

for.body92.i1009:                                 ; preds = %for.inc115.i1025, %for.body92.preheader.i1008
  %indvars.iv222.i1010 = phi i64 [ %246, %for.body92.preheader.i1008 ], [ %indvars.iv.next223.i1026, %for.inc115.i1025 ]
  %arrayidx94.i1011 = getelementptr inbounds ptr, ptr %call231, i64 %indvars.iv222.i1010
  %247 = load ptr, ptr %arrayidx94.i1011, align 8
  %248 = load i32, ptr %247, align 8
  %and96.i1012 = and i32 %248, 1
  %tobool97.not.i1013 = icmp eq i32 %and96.i1012, 0
  br i1 %tobool97.not.i1013, label %for.inc115.i1025, label %if.then98.i1014

if.then98.i1014:                                  ; preds = %for.body92.i1009
  %top_field101.i1015 = getelementptr inbounds i8, ptr %247, i64 56
  %249 = load ptr, ptr %top_field101.i1015, align 8
  %used_for_reference.i1312 = getelementptr inbounds i8, ptr %249, i64 44
  %250 = load i32, ptr %used_for_reference.i1312, align 4
  %tobool.not.i1313 = icmp eq i32 %250, 0
  br i1 %tobool.not.i1313, label %for.inc115.i1025, label %is_long_ref.exit

is_long_ref.exit:                                 ; preds = %if.then98.i1014
  %is_long_term.i1315 = getelementptr inbounds i8, ptr %249, i64 40
  %251 = load i8, ptr %is_long_term.i1315, align 8
  %tobool1.i.not = icmp eq i8 %251, 0
  br i1 %tobool1.i.not, label %for.inc115.i1025, label %if.then104.i1018

if.then104.i1018:                                 ; preds = %is_long_ref.exit
  %252 = trunc nsw i64 %indvars.iv222.i1010 to i32
  %253 = load i8, ptr %listXsize236, align 1
  %idxprom109.i1021 = sext i8 %253 to i64
  %arrayidx110.i1022 = getelementptr inbounds ptr, ptr %216, i64 %idxprom109.i1021
  store ptr %249, ptr %arrayidx110.i1022, align 8
  %254 = load i8, ptr %listXsize236, align 1
  %inc111.i1023 = add i8 %254, 1
  store i8 %inc111.i1023, ptr %listXsize236, align 1
  %inc112.i1024 = add nsw i32 %252, 1
  br label %for.end117.i1004

for.inc115.i1025:                                 ; preds = %if.then98.i1014, %is_long_ref.exit, %for.body92.i1009
  %indvars.iv.next223.i1026 = add nsw i64 %indvars.iv222.i1010, 1
  %lftr.wideiv225.i1027 = trunc i64 %indvars.iv.next223.i1026 to i32
  %exitcond226.not.i1028 = icmp eq i32 %listltidx.0.lcssa, %lftr.wideiv225.i1027
  br i1 %exitcond226.not.i1028, label %for.end117.i1004, label %for.body92.i1009

for.end117.i1004:                                 ; preds = %for.inc115.i1025, %if.then104.i1018, %for.end88.i1001
  %top_idx.6.i1005 = phi i32 [ %inc112.i1024, %if.then104.i1018 ], [ %top_idx.4201.i999, %for.end88.i1001 ], [ %listltidx.0.lcssa, %for.inc115.i1025 ]
  %cmp53.i1006 = icmp slt i32 %top_idx.6.i1005, %listltidx.0.lcssa
  %cmp56.i1007 = icmp slt i32 %bot_idx.6.i1002, %listltidx.0.lcssa
  %255 = select i1 %cmp53.i1006, i1 true, i1 %cmp56.i1007
  br i1 %255, label %for.cond60.preheader.i997, label %gen_pic_list_from_frame_list.exit1105

gen_pic_list_from_frame_list.exit1105:            ; preds = %for.end117.i1004, %if.end48.i990, %while.cond52.preheader.i994
  %.pr = load i32, ptr %structure, align 8
  %256 = load ptr, ptr %arrayidx355, align 8
  switch i32 %.pr, label %gen_pic_list_from_frame_list.exit1222 [
    i32 1, label %while.cond.preheader.i1167
    i32 2, label %while.cond52.preheader.i1111
  ]

while.cond.preheader.i1167:                       ; preds = %gen_pic_list_from_frame_list.exit1105
  %cmp2187.i1168 = icmp sgt i32 %listltidx.0.lcssa, 0
  br i1 %cmp2187.i1168, label %for.cond.preheader.i1169, label %gen_pic_list_from_frame_list.exit1222

for.cond.preheader.i1169:                         ; preds = %while.cond.preheader.i1167, %for.end47.i1176
  %bot_idx.0190.i1170 = phi i32 [ %bot_idx.2.i1177, %for.end47.i1176 ], [ 0, %while.cond.preheader.i1167 ]
  %top_idx.0189.i1171 = phi i32 [ %top_idx.2.i1174, %for.end47.i1176 ], [ 0, %while.cond.preheader.i1167 ]
  %cmp4182.i1172 = icmp slt i32 %top_idx.0189.i1171, %listltidx.0.lcssa
  br i1 %cmp4182.i1172, label %for.body.preheader.i1201, label %for.end.i1173

for.body.preheader.i1201:                         ; preds = %for.cond.preheader.i1169
  %257 = sext i32 %top_idx.0189.i1171 to i64
  br label %for.body.i1202

for.body.i1202:                                   ; preds = %for.inc.i1218, %for.body.preheader.i1201
  %indvars.iv.i1203 = phi i64 [ %257, %for.body.preheader.i1201 ], [ %indvars.iv.next.i1219, %for.inc.i1218 ]
  %arrayidx.i1204 = getelementptr inbounds ptr, ptr %call231, i64 %indvars.iv.i1203
  %258 = load ptr, ptr %arrayidx.i1204, align 8
  %259 = load i32, ptr %258, align 8
  %and.i1205 = and i32 %259, 1
  %tobool5.not.i1206 = icmp eq i32 %and.i1205, 0
  br i1 %tobool5.not.i1206, label %for.inc.i1218, label %if.then6.i1207

if.then6.i1207:                                   ; preds = %for.body.i1202
  %top_field.i1208 = getelementptr inbounds i8, ptr %258, i64 56
  %260 = load ptr, ptr %top_field.i1208, align 8
  %used_for_reference.i1359 = getelementptr inbounds i8, ptr %260, i64 44
  %261 = load i32, ptr %used_for_reference.i1359, align 4
  %tobool.not.i1360 = icmp eq i32 %261, 0
  br i1 %tobool.not.i1360, label %for.inc.i1218, label %is_long_ref.exit1365

is_long_ref.exit1365:                             ; preds = %if.then6.i1207
  %is_long_term.i1362 = getelementptr inbounds i8, ptr %260, i64 40
  %262 = load i8, ptr %is_long_term.i1362, align 8
  %tobool1.i1363.not = icmp eq i8 %262, 0
  br i1 %tobool1.i1363.not, label %for.inc.i1218, label %if.then10.i1211

if.then10.i1211:                                  ; preds = %is_long_ref.exit1365
  %263 = trunc nsw i64 %indvars.iv.i1203 to i32
  %264 = load i8, ptr %arrayidx239, align 1
  %idxprom14.i1214 = sext i8 %264 to i64
  %arrayidx15.i1215 = getelementptr inbounds ptr, ptr %256, i64 %idxprom14.i1214
  store ptr %260, ptr %arrayidx15.i1215, align 8
  %265 = load i8, ptr %arrayidx239, align 1
  %inc.i1216 = add i8 %265, 1
  store i8 %inc.i1216, ptr %arrayidx239, align 1
  %inc16.i1217 = add nsw i32 %263, 1
  br label %for.end.i1173

for.inc.i1218:                                    ; preds = %if.then6.i1207, %is_long_ref.exit1365, %for.body.i1202
  %indvars.iv.next.i1219 = add nsw i64 %indvars.iv.i1203, 1
  %lftr.wideiv.i1220 = trunc i64 %indvars.iv.next.i1219 to i32
  %exitcond.not.i1221 = icmp eq i32 %listltidx.0.lcssa, %lftr.wideiv.i1220
  br i1 %exitcond.not.i1221, label %for.end.i1173, label %for.body.i1202

for.end.i1173:                                    ; preds = %for.inc.i1218, %if.then10.i1211, %for.cond.preheader.i1169
  %top_idx.2.i1174 = phi i32 [ %inc16.i1217, %if.then10.i1211 ], [ %top_idx.0189.i1171, %for.cond.preheader.i1169 ], [ %listltidx.0.lcssa, %for.inc.i1218 ]
  %cmp21184.i1175 = icmp slt i32 %bot_idx.0190.i1170, %listltidx.0.lcssa
  br i1 %cmp21184.i1175, label %for.body23.preheader.i1180, label %for.end47.i1176

for.body23.preheader.i1180:                       ; preds = %for.end.i1173
  %266 = sext i32 %bot_idx.0190.i1170 to i64
  br label %for.body23.i1181

for.body23.i1181:                                 ; preds = %for.inc45.i1197, %for.body23.preheader.i1180
  %indvars.iv212.i1182 = phi i64 [ %266, %for.body23.preheader.i1180 ], [ %indvars.iv.next213.i1198, %for.inc45.i1197 ]
  %arrayidx25.i1183 = getelementptr inbounds ptr, ptr %call231, i64 %indvars.iv212.i1182
  %267 = load ptr, ptr %arrayidx25.i1183, align 8
  %268 = load i32, ptr %267, align 8
  %and27.i1184 = and i32 %268, 2
  %tobool28.not.i1185 = icmp eq i32 %and27.i1184, 0
  br i1 %tobool28.not.i1185, label %for.inc45.i1197, label %if.then29.i1186

if.then29.i1186:                                  ; preds = %for.body23.i1181
  %bottom_field.i1187 = getelementptr inbounds i8, ptr %267, i64 64
  %269 = load ptr, ptr %bottom_field.i1187, align 8
  %used_for_reference.i1352 = getelementptr inbounds i8, ptr %269, i64 44
  %270 = load i32, ptr %used_for_reference.i1352, align 4
  %tobool.not.i1353 = icmp eq i32 %270, 0
  br i1 %tobool.not.i1353, label %for.inc45.i1197, label %is_long_ref.exit1358

is_long_ref.exit1358:                             ; preds = %if.then29.i1186
  %is_long_term.i1355 = getelementptr inbounds i8, ptr %269, i64 40
  %271 = load i8, ptr %is_long_term.i1355, align 8
  %tobool1.i1356.not = icmp eq i8 %271, 0
  br i1 %tobool1.i1356.not, label %for.inc45.i1197, label %if.then34.i1190

if.then34.i1190:                                  ; preds = %is_long_ref.exit1358
  %272 = trunc nsw i64 %indvars.iv212.i1182 to i32
  %273 = load i8, ptr %arrayidx239, align 1
  %idxprom39.i1193 = sext i8 %273 to i64
  %arrayidx40.i1194 = getelementptr inbounds ptr, ptr %256, i64 %idxprom39.i1193
  store ptr %269, ptr %arrayidx40.i1194, align 8
  %274 = load i8, ptr %arrayidx239, align 1
  %inc41.i1195 = add i8 %274, 1
  store i8 %inc41.i1195, ptr %arrayidx239, align 1
  %inc42.i1196 = add nsw i32 %272, 1
  br label %for.end47.i1176

for.inc45.i1197:                                  ; preds = %if.then29.i1186, %is_long_ref.exit1358, %for.body23.i1181
  %indvars.iv.next213.i1198 = add nsw i64 %indvars.iv212.i1182, 1
  %lftr.wideiv215.i1199 = trunc i64 %indvars.iv.next213.i1198 to i32
  %exitcond216.not.i1200 = icmp eq i32 %listltidx.0.lcssa, %lftr.wideiv215.i1199
  br i1 %exitcond216.not.i1200, label %for.end47.i1176, label %for.body23.i1181

for.end47.i1176:                                  ; preds = %for.inc45.i1197, %if.then34.i1190, %for.end.i1173
  %bot_idx.2.i1177 = phi i32 [ %inc42.i1196, %if.then34.i1190 ], [ %bot_idx.0190.i1170, %for.end.i1173 ], [ %listltidx.0.lcssa, %for.inc45.i1197 ]
  %cmp2.i1178 = icmp slt i32 %top_idx.2.i1174, %listltidx.0.lcssa
  %cmp3.i1179 = icmp slt i32 %bot_idx.2.i1177, %listltidx.0.lcssa
  %275 = select i1 %cmp2.i1178, i1 true, i1 %cmp3.i1179
  br i1 %275, label %for.cond.preheader.i1169, label %gen_pic_list_from_frame_list.exit1222

while.cond52.preheader.i1111:                     ; preds = %gen_pic_list_from_frame_list.exit1105
  %cmp53199.i1112 = icmp sgt i32 %listltidx.0.lcssa, 0
  br i1 %cmp53199.i1112, label %for.cond60.preheader.i1114, label %gen_pic_list_from_frame_list.exit1222

for.cond60.preheader.i1114:                       ; preds = %while.cond52.preheader.i1111, %for.end117.i1121
  %bot_idx.4202.i1115 = phi i32 [ %bot_idx.6.i1119, %for.end117.i1121 ], [ 0, %while.cond52.preheader.i1111 ]
  %top_idx.4201.i1116 = phi i32 [ %top_idx.6.i1122, %for.end117.i1121 ], [ 0, %while.cond52.preheader.i1111 ]
  %cmp61193.i1117 = icmp slt i32 %bot_idx.4202.i1115, %listltidx.0.lcssa
  br i1 %cmp61193.i1117, label %for.body63.preheader.i1146, label %for.end88.i1118

for.body63.preheader.i1146:                       ; preds = %for.cond60.preheader.i1114
  %276 = sext i32 %bot_idx.4202.i1115 to i64
  br label %for.body63.i1147

for.body63.i1147:                                 ; preds = %for.inc86.i1163, %for.body63.preheader.i1146
  %indvars.iv217.i1148 = phi i64 [ %276, %for.body63.preheader.i1146 ], [ %indvars.iv.next218.i1164, %for.inc86.i1163 ]
  %arrayidx65.i1149 = getelementptr inbounds ptr, ptr %call231, i64 %indvars.iv217.i1148
  %277 = load ptr, ptr %arrayidx65.i1149, align 8
  %278 = load i32, ptr %277, align 8
  %and67.i1150 = and i32 %278, 2
  %tobool68.not.i1151 = icmp eq i32 %and67.i1150, 0
  br i1 %tobool68.not.i1151, label %for.inc86.i1163, label %if.then69.i1152

if.then69.i1152:                                  ; preds = %for.body63.i1147
  %bottom_field72.i1153 = getelementptr inbounds i8, ptr %277, i64 64
  %279 = load ptr, ptr %bottom_field72.i1153, align 8
  %used_for_reference.i1345 = getelementptr inbounds i8, ptr %279, i64 44
  %280 = load i32, ptr %used_for_reference.i1345, align 4
  %tobool.not.i1346 = icmp eq i32 %280, 0
  br i1 %tobool.not.i1346, label %for.inc86.i1163, label %is_long_ref.exit1351

is_long_ref.exit1351:                             ; preds = %if.then69.i1152
  %is_long_term.i1348 = getelementptr inbounds i8, ptr %279, i64 40
  %281 = load i8, ptr %is_long_term.i1348, align 8
  %tobool1.i1349.not = icmp eq i8 %281, 0
  br i1 %tobool1.i1349.not, label %for.inc86.i1163, label %if.then75.i1156

if.then75.i1156:                                  ; preds = %is_long_ref.exit1351
  %282 = trunc nsw i64 %indvars.iv217.i1148 to i32
  %283 = load i8, ptr %arrayidx239, align 1
  %idxprom80.i1159 = sext i8 %283 to i64
  %arrayidx81.i1160 = getelementptr inbounds ptr, ptr %256, i64 %idxprom80.i1159
  store ptr %279, ptr %arrayidx81.i1160, align 8
  %284 = load i8, ptr %arrayidx239, align 1
  %inc82.i1161 = add i8 %284, 1
  store i8 %inc82.i1161, ptr %arrayidx239, align 1
  %inc83.i1162 = add nsw i32 %282, 1
  br label %for.end88.i1118

for.inc86.i1163:                                  ; preds = %if.then69.i1152, %is_long_ref.exit1351, %for.body63.i1147
  %indvars.iv.next218.i1164 = add nsw i64 %indvars.iv217.i1148, 1
  %lftr.wideiv220.i1165 = trunc i64 %indvars.iv.next218.i1164 to i32
  %exitcond221.not.i1166 = icmp eq i32 %listltidx.0.lcssa, %lftr.wideiv220.i1165
  br i1 %exitcond221.not.i1166, label %for.end88.i1118, label %for.body63.i1147

for.end88.i1118:                                  ; preds = %for.inc86.i1163, %if.then75.i1156, %for.cond60.preheader.i1114
  %bot_idx.6.i1119 = phi i32 [ %inc83.i1162, %if.then75.i1156 ], [ %bot_idx.4202.i1115, %for.cond60.preheader.i1114 ], [ %listltidx.0.lcssa, %for.inc86.i1163 ]
  %cmp90196.i1120 = icmp slt i32 %top_idx.4201.i1116, %listltidx.0.lcssa
  br i1 %cmp90196.i1120, label %for.body92.preheader.i1125, label %for.end117.i1121

for.body92.preheader.i1125:                       ; preds = %for.end88.i1118
  %285 = sext i32 %top_idx.4201.i1116 to i64
  br label %for.body92.i1126

for.body92.i1126:                                 ; preds = %for.inc115.i1142, %for.body92.preheader.i1125
  %indvars.iv222.i1127 = phi i64 [ %285, %for.body92.preheader.i1125 ], [ %indvars.iv.next223.i1143, %for.inc115.i1142 ]
  %arrayidx94.i1128 = getelementptr inbounds ptr, ptr %call231, i64 %indvars.iv222.i1127
  %286 = load ptr, ptr %arrayidx94.i1128, align 8
  %287 = load i32, ptr %286, align 8
  %and96.i1129 = and i32 %287, 1
  %tobool97.not.i1130 = icmp eq i32 %and96.i1129, 0
  br i1 %tobool97.not.i1130, label %for.inc115.i1142, label %if.then98.i1131

if.then98.i1131:                                  ; preds = %for.body92.i1126
  %top_field101.i1132 = getelementptr inbounds i8, ptr %286, i64 56
  %288 = load ptr, ptr %top_field101.i1132, align 8
  %used_for_reference.i1338 = getelementptr inbounds i8, ptr %288, i64 44
  %289 = load i32, ptr %used_for_reference.i1338, align 4
  %tobool.not.i1339 = icmp eq i32 %289, 0
  br i1 %tobool.not.i1339, label %for.inc115.i1142, label %is_long_ref.exit1344

is_long_ref.exit1344:                             ; preds = %if.then98.i1131
  %is_long_term.i1341 = getelementptr inbounds i8, ptr %288, i64 40
  %290 = load i8, ptr %is_long_term.i1341, align 8
  %tobool1.i1342.not = icmp eq i8 %290, 0
  br i1 %tobool1.i1342.not, label %for.inc115.i1142, label %if.then104.i1135

if.then104.i1135:                                 ; preds = %is_long_ref.exit1344
  %291 = trunc nsw i64 %indvars.iv222.i1127 to i32
  %292 = load i8, ptr %arrayidx239, align 1
  %idxprom109.i1138 = sext i8 %292 to i64
  %arrayidx110.i1139 = getelementptr inbounds ptr, ptr %256, i64 %idxprom109.i1138
  store ptr %288, ptr %arrayidx110.i1139, align 8
  %293 = load i8, ptr %arrayidx239, align 1
  %inc111.i1140 = add i8 %293, 1
  store i8 %inc111.i1140, ptr %arrayidx239, align 1
  %inc112.i1141 = add nsw i32 %291, 1
  br label %for.end117.i1121

for.inc115.i1142:                                 ; preds = %if.then98.i1131, %is_long_ref.exit1344, %for.body92.i1126
  %indvars.iv.next223.i1143 = add nsw i64 %indvars.iv222.i1127, 1
  %lftr.wideiv225.i1144 = trunc i64 %indvars.iv.next223.i1143 to i32
  %exitcond226.not.i1145 = icmp eq i32 %listltidx.0.lcssa, %lftr.wideiv225.i1144
  br i1 %exitcond226.not.i1145, label %for.end117.i1121, label %for.body92.i1126

for.end117.i1121:                                 ; preds = %for.inc115.i1142, %if.then104.i1135, %for.end88.i1118
  %top_idx.6.i1122 = phi i32 [ %inc112.i1141, %if.then104.i1135 ], [ %top_idx.4201.i1116, %for.end88.i1118 ], [ %listltidx.0.lcssa, %for.inc115.i1142 ]
  %cmp53.i1123 = icmp slt i32 %top_idx.6.i1122, %listltidx.0.lcssa
  %cmp56.i1124 = icmp slt i32 %bot_idx.6.i1119, %listltidx.0.lcssa
  %294 = select i1 %cmp53.i1123, i1 true, i1 %cmp56.i1124
  br i1 %294, label %for.cond60.preheader.i1114, label %gen_pic_list_from_frame_list.exit1222

gen_pic_list_from_frame_list.exit1222:            ; preds = %for.end117.i1121, %for.end47.i1176, %gen_pic_list_from_frame_list.exit1105, %while.cond.preheader.i1050, %while.cond.preheader.i1167, %while.cond52.preheader.i1111
  tail call void @free(ptr noundef %call) #20
  tail call void @free(ptr noundef %call224) #20
  tail call void @free(ptr noundef %call231) #20
  %.pre1589 = load i8, ptr %listXsize236, align 8
  %.pre1590 = load i8, ptr %arrayidx239, align 1
  br label %if.end391

if.end391:                                        ; preds = %gen_pic_list_from_frame_list.exit1222, %for.end187
  %295 = phi i8 [ %.pre1590, %gen_pic_list_from_frame_list.exit1222 ], [ %conv212.pre-phi, %for.end187 ]
  %296 = phi i8 [ %.pre1589, %gen_pic_list_from_frame_list.exit1222 ], [ %conv212.pre-phi, %for.end187 ]
  %listXsize392 = getelementptr inbounds i8, ptr %currSlice, i64 256
  %arrayidx396 = getelementptr inbounds i8, ptr %currSlice, i64 257
  %cmp398 = icmp eq i8 %296, %295
  %cmp404 = icmp sgt i8 %296, 1
  %or.cond = and i1 %cmp404, %cmp398
  br i1 %or.cond, label %for.cond407.preheader, label %if.end444

for.cond407.preheader:                            ; preds = %if.end391
  %listX414 = getelementptr inbounds i8, ptr %currSlice, i64 264
  %297 = load ptr, ptr %listX414, align 8
  %arrayidx419 = getelementptr inbounds i8, ptr %currSlice, i64 272
  %298 = load ptr, ptr %arrayidx419, align 8
  %wide.trip.count1556 = zext i8 %295 to i64
  br label %for.body413

for.cond407:                                      ; preds = %for.body413
  %indvars.iv.next1554 = add nuw nsw i64 %indvars.iv1553, 1
  %exitcond1557.not = icmp eq i64 %indvars.iv.next1554, %wide.trip.count1556
  br i1 %exitcond1557.not, label %if.then430, label %for.body413

for.body413:                                      ; preds = %for.cond407.preheader, %for.cond407
  %indvars.iv1553 = phi i64 [ 0, %for.cond407.preheader ], [ %indvars.iv.next1554, %for.cond407 ]
  %arrayidx417 = getelementptr inbounds ptr, ptr %297, i64 %indvars.iv1553
  %299 = load ptr, ptr %arrayidx417, align 8
  %arrayidx421 = getelementptr inbounds ptr, ptr %298, i64 %indvars.iv1553
  %300 = load ptr, ptr %arrayidx421, align 8
  %cmp422.not = icmp eq ptr %299, %300
  br i1 %cmp422.not, label %for.cond407, label %if.end444

if.then430:                                       ; preds = %for.cond407
  %301 = load ptr, ptr %298, align 8
  %arrayidx436 = getelementptr inbounds i8, ptr %298, i64 8
  %302 = load ptr, ptr %arrayidx436, align 8
  store ptr %302, ptr %298, align 8
  %303 = load ptr, ptr %arrayidx419, align 8
  %arrayidx442 = getelementptr inbounds i8, ptr %303, i64 8
  store ptr %301, ptr %arrayidx442, align 8
  br label %if.end444

if.end444:                                        ; preds = %for.body413, %if.then430, %if.end391
  %svc_extension_flag = getelementptr inbounds i8, ptr %currSlice, i64 32
  %304 = load i32, ptr %svc_extension_flag, align 8
  %cmp445 = icmp eq i32 %304, 0
  br i1 %cmp445, label %if.then447, label %if.end540

if.then447:                                       ; preds = %if.end444
  %size448 = getelementptr inbounds i8, ptr %1, i64 40
  %305 = load i32, ptr %size448, align 8
  %conv449 = zext i32 %305 to i64
  %call450 = tail call noalias ptr @calloc(i64 noundef %conv449, i64 noundef 8) #21
  %fs_listinterview0 = getelementptr inbounds i8, ptr %currSlice, i64 13320
  store ptr %call450, ptr %fs_listinterview0, align 8
  %cmp452 = icmp eq ptr %call450, null
  br i1 %cmp452, label %if.then454, label %if.end455

if.then454:                                       ; preds = %if.then447
  tail call void @no_mem_exit(ptr noundef nonnull @.str.16) #20
  br label %if.end455

if.end455:                                        ; preds = %if.then454, %if.then447
  %306 = load i32, ptr %size448, align 8
  %conv457 = zext i32 %306 to i64
  %call458 = tail call noalias ptr @calloc(i64 noundef %conv457, i64 noundef 8) #21
  %fs_listinterview1 = getelementptr inbounds i8, ptr %currSlice, i64 13328
  store ptr %call458, ptr %fs_listinterview1, align 8
  %cmp460 = icmp eq ptr %call458, null
  br i1 %cmp460, label %if.then462, label %if.end463

if.then462:                                       ; preds = %if.end455
  tail call void @no_mem_exit(ptr noundef nonnull @.str.18) #20
  br label %if.end463

if.end463:                                        ; preds = %if.then462, %if.end455
  %307 = load i32, ptr %structure, align 8
  %cmp468 = icmp eq i32 %307, 0
  br i1 %cmp468, label %if.then470, label %if.else518

if.then470:                                       ; preds = %if.end463
  %308 = load i8, ptr %listXsize392, align 8
  %309 = load ptr, ptr %fs_listinterview0, align 8
  tail call void @append_interview_list(ptr noundef nonnull %1, i32 noundef 0, i32 noundef 0, ptr noundef %309, ptr noundef nonnull %listinterviewidx0, i32 noundef %2, i32 noundef %3, i32 noundef %4)
  %310 = load ptr, ptr %fs_listinterview1, align 8
  tail call void @append_interview_list(ptr noundef nonnull %1, i32 noundef 0, i32 noundef 1, ptr noundef %310, ptr noundef nonnull %listinterviewidx1, i32 noundef %2, i32 noundef %3, i32 noundef %4)
  %311 = load i32, ptr %listinterviewidx0, align 4
  %cmp4771469.not = icmp eq i32 %311, 0
  br i1 %cmp4771469.not, label %for.end491, label %for.body479.lr.ph

for.body479.lr.ph:                                ; preds = %if.then470
  %listX484 = getelementptr inbounds i8, ptr %currSlice, i64 264
  %312 = sext i8 %308 to i64
  br label %for.body479

for.body479:                                      ; preds = %for.body479.lr.ph, %for.body479
  %indvars.iv1560 = phi i64 [ %312, %for.body479.lr.ph ], [ %indvars.iv.next1561, %for.body479 ]
  %indvars.iv1558 = phi i64 [ 0, %for.body479.lr.ph ], [ %indvars.iv.next1559, %for.body479 ]
  %313 = load ptr, ptr %fs_listinterview0, align 8
  %arrayidx482 = getelementptr inbounds ptr, ptr %313, i64 %indvars.iv1558
  %314 = load ptr, ptr %arrayidx482, align 8
  %frame483 = getelementptr inbounds i8, ptr %314, i64 48
  %315 = load ptr, ptr %frame483, align 8
  %316 = load ptr, ptr %listX484, align 8
  %indvars.iv.next1561 = add nsw i64 %indvars.iv1560, 1
  %arrayidx488 = getelementptr inbounds ptr, ptr %316, i64 %indvars.iv1560
  store ptr %315, ptr %arrayidx488, align 8
  %indvars.iv.next1559 = add nuw nsw i64 %indvars.iv1558, 1
  %317 = load i32, ptr %listinterviewidx0, align 4
  %318 = zext i32 %317 to i64
  %cmp477 = icmp ult i64 %indvars.iv.next1559, %318
  br i1 %cmp477, label %for.body479, label %for.end491.loopexit

for.end491.loopexit:                              ; preds = %for.body479
  %319 = trunc i64 %indvars.iv.next1561 to i8
  br label %for.end491

for.end491:                                       ; preds = %for.end491.loopexit, %if.then470
  %list0idx.10.lcssa = phi i8 [ %308, %if.then470 ], [ %319, %for.end491.loopexit ]
  store i8 %list0idx.10.lcssa, ptr %listXsize392, align 8
  %320 = load i8, ptr %arrayidx396, align 1
  %321 = load i32, ptr %listinterviewidx1, align 8
  %cmp5001473.not = icmp eq i32 %321, 0
  br i1 %cmp5001473.not, label %for.end514, label %for.body502.lr.ph

for.body502.lr.ph:                                ; preds = %for.end491
  %arrayidx508 = getelementptr inbounds i8, ptr %currSlice, i64 272
  %322 = sext i8 %320 to i64
  br label %for.body502

for.body502:                                      ; preds = %for.body502.lr.ph, %for.body502
  %indvars.iv1567 = phi i64 [ %322, %for.body502.lr.ph ], [ %indvars.iv.next1568, %for.body502 ]
  %indvars.iv1565 = phi i64 [ 0, %for.body502.lr.ph ], [ %indvars.iv.next1566, %for.body502 ]
  %323 = load ptr, ptr %fs_listinterview1, align 8
  %arrayidx505 = getelementptr inbounds ptr, ptr %323, i64 %indvars.iv1565
  %324 = load ptr, ptr %arrayidx505, align 8
  %frame506 = getelementptr inbounds i8, ptr %324, i64 48
  %325 = load ptr, ptr %frame506, align 8
  %326 = load ptr, ptr %arrayidx508, align 8
  %indvars.iv.next1568 = add nsw i64 %indvars.iv1567, 1
  %arrayidx511 = getelementptr inbounds ptr, ptr %326, i64 %indvars.iv1567
  store ptr %325, ptr %arrayidx511, align 8
  %indvars.iv.next1566 = add nuw nsw i64 %indvars.iv1565, 1
  %327 = load i32, ptr %listinterviewidx1, align 8
  %328 = zext i32 %327 to i64
  %cmp500 = icmp ult i64 %indvars.iv.next1566, %328
  br i1 %cmp500, label %for.body502, label %for.end514.loopexit

for.end514.loopexit:                              ; preds = %for.body502
  %329 = trunc i64 %indvars.iv.next1568 to i8
  br label %for.end514

for.end514:                                       ; preds = %for.end514.loopexit, %for.end491
  %list0idx.11.lcssa = phi i8 [ %320, %for.end491 ], [ %329, %for.end514.loopexit ]
  store i8 %list0idx.11.lcssa, ptr %arrayidx396, align 1
  br label %if.end540

if.else518:                                       ; preds = %if.end463
  %330 = load ptr, ptr %fs_listinterview0, align 8
  tail call void @append_interview_list(ptr noundef nonnull %1, i32 noundef %307, i32 noundef 0, ptr noundef %330, ptr noundef nonnull %listinterviewidx0, i32 noundef %2, i32 noundef %3, i32 noundef %4)
  %331 = load i32, ptr %structure, align 8
  %332 = load ptr, ptr %fs_listinterview0, align 8
  %333 = load i32, ptr %listinterviewidx0, align 4
  %listX525 = getelementptr inbounds i8, ptr %currSlice, i64 264
  %334 = load ptr, ptr %listX525, align 8
  switch i32 %331, label %gen_pic_list_from_frame_interview_list.exit [
    i32 1, label %for.cond.preheader.i1227
    i32 2, label %if.then7.i
  ]

for.cond.preheader.i1227:                         ; preds = %if.else518
  %cmp134.i = icmp sgt i32 %333, 0
  br i1 %cmp134.i, label %for.body.preheader.i1228, label %gen_pic_list_from_frame_interview_list.exit

for.body.preheader.i1228:                         ; preds = %for.cond.preheader.i1227
  %wide.trip.count43.i = zext nneg i32 %333 to i64
  %.pre45.i = load i8, ptr %listXsize392, align 1
  %xtraiter1720 = and i64 %wide.trip.count43.i, 1
  %335 = icmp eq i32 %333, 1
  br i1 %335, label %gen_pic_list_from_frame_interview_list.exit.loopexit.unr-lcssa, label %for.body.preheader.i1228.new

for.body.preheader.i1228.new:                     ; preds = %for.body.preheader.i1228
  %unroll_iter1724 = and i64 %wide.trip.count43.i, 2147483646
  br label %for.body.i1229

for.body.i1229:                                   ; preds = %for.body.i1229, %for.body.preheader.i1228.new
  %336 = phi i8 [ %.pre45.i, %for.body.preheader.i1228.new ], [ %inc.i1232.1, %for.body.i1229 ]
  %indvars.iv40.i = phi i64 [ 0, %for.body.preheader.i1228.new ], [ %indvars.iv.next41.i.1, %for.body.i1229 ]
  %niter1725 = phi i64 [ 0, %for.body.preheader.i1228.new ], [ %niter1725.next.1, %for.body.i1229 ]
  %arrayidx.i1230 = getelementptr inbounds ptr, ptr %332, i64 %indvars.iv40.i
  %337 = load ptr, ptr %arrayidx.i1230, align 8
  %top_field.i1231 = getelementptr inbounds i8, ptr %337, i64 56
  %338 = load ptr, ptr %top_field.i1231, align 8
  %idxprom2.i = sext i8 %336 to i64
  %arrayidx3.i = getelementptr inbounds ptr, ptr %334, i64 %idxprom2.i
  store ptr %338, ptr %arrayidx3.i, align 8
  %339 = load i8, ptr %listXsize392, align 1
  %inc.i1232 = add i8 %339, 1
  store i8 %inc.i1232, ptr %listXsize392, align 1
  %indvars.iv.next41.i = or disjoint i64 %indvars.iv40.i, 1
  %arrayidx.i1230.1 = getelementptr inbounds ptr, ptr %332, i64 %indvars.iv.next41.i
  %340 = load ptr, ptr %arrayidx.i1230.1, align 8
  %top_field.i1231.1 = getelementptr inbounds i8, ptr %340, i64 56
  %341 = load ptr, ptr %top_field.i1231.1, align 8
  %idxprom2.i.1 = sext i8 %inc.i1232 to i64
  %arrayidx3.i.1 = getelementptr inbounds ptr, ptr %334, i64 %idxprom2.i.1
  store ptr %341, ptr %arrayidx3.i.1, align 8
  %342 = load i8, ptr %listXsize392, align 1
  %inc.i1232.1 = add i8 %342, 1
  store i8 %inc.i1232.1, ptr %listXsize392, align 1
  %indvars.iv.next41.i.1 = add nuw nsw i64 %indvars.iv40.i, 2
  %niter1725.next.1 = add i64 %niter1725, 2
  %niter1725.ncmp.1 = icmp eq i64 %niter1725.next.1, %unroll_iter1724
  br i1 %niter1725.ncmp.1, label %gen_pic_list_from_frame_interview_list.exit.loopexit.unr-lcssa, label %for.body.i1229

if.then7.i:                                       ; preds = %if.else518
  %cmp936.i = icmp sgt i32 %333, 0
  br i1 %cmp936.i, label %for.body11.preheader.i, label %gen_pic_list_from_frame_interview_list.exit

for.body11.preheader.i:                           ; preds = %if.then7.i
  %wide.trip.count.i = zext nneg i32 %333 to i64
  %.pre.i = load i8, ptr %listXsize392, align 1
  %xtraiter1715 = and i64 %wide.trip.count.i, 1
  %343 = icmp eq i32 %333, 1
  br i1 %343, label %gen_pic_list_from_frame_interview_list.exit.loopexit1673.unr-lcssa, label %for.body11.preheader.i.new

for.body11.preheader.i.new:                       ; preds = %for.body11.preheader.i
  %unroll_iter1718 = and i64 %wide.trip.count.i, 2147483646
  br label %for.body11.i

for.body11.i:                                     ; preds = %for.body11.i, %for.body11.preheader.i.new
  %344 = phi i8 [ %.pre.i, %for.body11.preheader.i.new ], [ %inc17.i.1, %for.body11.i ]
  %indvars.iv.i1223 = phi i64 [ 0, %for.body11.preheader.i.new ], [ %indvars.iv.next.i1225.1, %for.body11.i ]
  %niter1719 = phi i64 [ 0, %for.body11.preheader.i.new ], [ %niter1719.next.1, %for.body11.i ]
  %arrayidx13.i = getelementptr inbounds ptr, ptr %332, i64 %indvars.iv.i1223
  %345 = load ptr, ptr %arrayidx13.i, align 8
  %bottom_field.i1224 = getelementptr inbounds i8, ptr %345, i64 64
  %346 = load ptr, ptr %bottom_field.i1224, align 8
  %idxprom15.i = sext i8 %344 to i64
  %arrayidx16.i = getelementptr inbounds ptr, ptr %334, i64 %idxprom15.i
  store ptr %346, ptr %arrayidx16.i, align 8
  %347 = load i8, ptr %listXsize392, align 1
  %inc17.i = add i8 %347, 1
  store i8 %inc17.i, ptr %listXsize392, align 1
  %indvars.iv.next.i1225 = or disjoint i64 %indvars.iv.i1223, 1
  %arrayidx13.i.1 = getelementptr inbounds ptr, ptr %332, i64 %indvars.iv.next.i1225
  %348 = load ptr, ptr %arrayidx13.i.1, align 8
  %bottom_field.i1224.1 = getelementptr inbounds i8, ptr %348, i64 64
  %349 = load ptr, ptr %bottom_field.i1224.1, align 8
  %idxprom15.i.1 = sext i8 %inc17.i to i64
  %arrayidx16.i.1 = getelementptr inbounds ptr, ptr %334, i64 %idxprom15.i.1
  store ptr %349, ptr %arrayidx16.i.1, align 8
  %350 = load i8, ptr %listXsize392, align 1
  %inc17.i.1 = add i8 %350, 1
  store i8 %inc17.i.1, ptr %listXsize392, align 1
  %indvars.iv.next.i1225.1 = add nuw nsw i64 %indvars.iv.i1223, 2
  %niter1719.next.1 = add i64 %niter1719, 2
  %niter1719.ncmp.1 = icmp eq i64 %niter1719.next.1, %unroll_iter1718
  br i1 %niter1719.ncmp.1, label %gen_pic_list_from_frame_interview_list.exit.loopexit1673.unr-lcssa, label %for.body11.i

gen_pic_list_from_frame_interview_list.exit.loopexit.unr-lcssa: ; preds = %for.body.i1229, %for.body.preheader.i1228
  %.unr1722 = phi i8 [ %.pre45.i, %for.body.preheader.i1228 ], [ %inc.i1232.1, %for.body.i1229 ]
  %indvars.iv40.i.unr = phi i64 [ 0, %for.body.preheader.i1228 ], [ %indvars.iv.next41.i.1, %for.body.i1229 ]
  %lcmp.mod1723.not = icmp eq i64 %xtraiter1720, 0
  br i1 %lcmp.mod1723.not, label %gen_pic_list_from_frame_interview_list.exit, label %for.body.i1229.epil

for.body.i1229.epil:                              ; preds = %gen_pic_list_from_frame_interview_list.exit.loopexit.unr-lcssa
  %arrayidx.i1230.epil = getelementptr inbounds ptr, ptr %332, i64 %indvars.iv40.i.unr
  %351 = load ptr, ptr %arrayidx.i1230.epil, align 8
  %top_field.i1231.epil = getelementptr inbounds i8, ptr %351, i64 56
  %352 = load ptr, ptr %top_field.i1231.epil, align 8
  %idxprom2.i.epil = sext i8 %.unr1722 to i64
  %arrayidx3.i.epil = getelementptr inbounds ptr, ptr %334, i64 %idxprom2.i.epil
  store ptr %352, ptr %arrayidx3.i.epil, align 8
  %353 = load i8, ptr %listXsize392, align 1
  %inc.i1232.epil = add i8 %353, 1
  store i8 %inc.i1232.epil, ptr %listXsize392, align 1
  br label %gen_pic_list_from_frame_interview_list.exit

gen_pic_list_from_frame_interview_list.exit.loopexit1673.unr-lcssa: ; preds = %for.body11.i, %for.body11.preheader.i
  %.unr = phi i8 [ %.pre.i, %for.body11.preheader.i ], [ %inc17.i.1, %for.body11.i ]
  %indvars.iv.i1223.unr = phi i64 [ 0, %for.body11.preheader.i ], [ %indvars.iv.next.i1225.1, %for.body11.i ]
  %lcmp.mod1717.not = icmp eq i64 %xtraiter1715, 0
  br i1 %lcmp.mod1717.not, label %gen_pic_list_from_frame_interview_list.exit, label %for.body11.i.epil

for.body11.i.epil:                                ; preds = %gen_pic_list_from_frame_interview_list.exit.loopexit1673.unr-lcssa
  %arrayidx13.i.epil = getelementptr inbounds ptr, ptr %332, i64 %indvars.iv.i1223.unr
  %354 = load ptr, ptr %arrayidx13.i.epil, align 8
  %bottom_field.i1224.epil = getelementptr inbounds i8, ptr %354, i64 64
  %355 = load ptr, ptr %bottom_field.i1224.epil, align 8
  %idxprom15.i.epil = sext i8 %.unr to i64
  %arrayidx16.i.epil = getelementptr inbounds ptr, ptr %334, i64 %idxprom15.i.epil
  store ptr %355, ptr %arrayidx16.i.epil, align 8
  %356 = load i8, ptr %listXsize392, align 1
  %inc17.i.epil = add i8 %356, 1
  store i8 %inc17.i.epil, ptr %listXsize392, align 1
  br label %gen_pic_list_from_frame_interview_list.exit

gen_pic_list_from_frame_interview_list.exit:      ; preds = %for.body11.i.epil, %gen_pic_list_from_frame_interview_list.exit.loopexit1673.unr-lcssa, %for.body.i1229.epil, %gen_pic_list_from_frame_interview_list.exit.loopexit.unr-lcssa, %if.else518, %for.cond.preheader.i1227, %if.then7.i
  %357 = load i32, ptr %structure, align 8
  %358 = load ptr, ptr %fs_listinterview1, align 8
  tail call void @append_interview_list(ptr noundef %1, i32 noundef %357, i32 noundef 1, ptr noundef %358, ptr noundef nonnull %listinterviewidx1, i32 noundef %2, i32 noundef %3, i32 noundef %4)
  %359 = load i32, ptr %structure, align 8
  %360 = load ptr, ptr %fs_listinterview1, align 8
  %361 = load i32, ptr %listinterviewidx1, align 8
  %arrayidx536 = getelementptr inbounds i8, ptr %currSlice, i64 272
  %362 = load ptr, ptr %arrayidx536, align 8
  switch i32 %359, label %if.end540 [
    i32 1, label %for.cond.preheader.i1247
    i32 2, label %if.then7.i1233
  ]

for.cond.preheader.i1247:                         ; preds = %gen_pic_list_from_frame_interview_list.exit
  %cmp134.i1248 = icmp sgt i32 %361, 0
  br i1 %cmp134.i1248, label %for.body.preheader.i1249, label %if.end540

for.body.preheader.i1249:                         ; preds = %for.cond.preheader.i1247
  %wide.trip.count43.i1250 = zext nneg i32 %361 to i64
  %.pre45.i1251 = load i8, ptr %arrayidx396, align 1
  %xtraiter1732 = and i64 %wide.trip.count43.i1250, 1
  %363 = icmp eq i32 %361, 1
  br i1 %363, label %if.end540.loopexit.unr-lcssa, label %for.body.preheader.i1249.new

for.body.preheader.i1249.new:                     ; preds = %for.body.preheader.i1249
  %unroll_iter1736 = and i64 %wide.trip.count43.i1250, 2147483646
  br label %for.body.i1252

for.body.i1252:                                   ; preds = %for.body.i1252, %for.body.preheader.i1249.new
  %364 = phi i8 [ %.pre45.i1251, %for.body.preheader.i1249.new ], [ %inc.i1258.1, %for.body.i1252 ]
  %indvars.iv40.i1253 = phi i64 [ 0, %for.body.preheader.i1249.new ], [ %indvars.iv.next41.i1259.1, %for.body.i1252 ]
  %niter1737 = phi i64 [ 0, %for.body.preheader.i1249.new ], [ %niter1737.next.1, %for.body.i1252 ]
  %arrayidx.i1254 = getelementptr inbounds ptr, ptr %360, i64 %indvars.iv40.i1253
  %365 = load ptr, ptr %arrayidx.i1254, align 8
  %top_field.i1255 = getelementptr inbounds i8, ptr %365, i64 56
  %366 = load ptr, ptr %top_field.i1255, align 8
  %idxprom2.i1256 = sext i8 %364 to i64
  %arrayidx3.i1257 = getelementptr inbounds ptr, ptr %362, i64 %idxprom2.i1256
  store ptr %366, ptr %arrayidx3.i1257, align 8
  %367 = load i8, ptr %arrayidx396, align 1
  %inc.i1258 = add i8 %367, 1
  store i8 %inc.i1258, ptr %arrayidx396, align 1
  %indvars.iv.next41.i1259 = or disjoint i64 %indvars.iv40.i1253, 1
  %arrayidx.i1254.1 = getelementptr inbounds ptr, ptr %360, i64 %indvars.iv.next41.i1259
  %368 = load ptr, ptr %arrayidx.i1254.1, align 8
  %top_field.i1255.1 = getelementptr inbounds i8, ptr %368, i64 56
  %369 = load ptr, ptr %top_field.i1255.1, align 8
  %idxprom2.i1256.1 = sext i8 %inc.i1258 to i64
  %arrayidx3.i1257.1 = getelementptr inbounds ptr, ptr %362, i64 %idxprom2.i1256.1
  store ptr %369, ptr %arrayidx3.i1257.1, align 8
  %370 = load i8, ptr %arrayidx396, align 1
  %inc.i1258.1 = add i8 %370, 1
  store i8 %inc.i1258.1, ptr %arrayidx396, align 1
  %indvars.iv.next41.i1259.1 = add nuw nsw i64 %indvars.iv40.i1253, 2
  %niter1737.next.1 = add i64 %niter1737, 2
  %niter1737.ncmp.1 = icmp eq i64 %niter1737.next.1, %unroll_iter1736
  br i1 %niter1737.ncmp.1, label %if.end540.loopexit.unr-lcssa, label %for.body.i1252

if.then7.i1233:                                   ; preds = %gen_pic_list_from_frame_interview_list.exit
  %cmp936.i1234 = icmp sgt i32 %361, 0
  br i1 %cmp936.i1234, label %for.body11.preheader.i1235, label %if.end540

for.body11.preheader.i1235:                       ; preds = %if.then7.i1233
  %wide.trip.count.i1236 = zext nneg i32 %361 to i64
  %.pre.i1237 = load i8, ptr %arrayidx396, align 1
  %xtraiter1726 = and i64 %wide.trip.count.i1236, 1
  %371 = icmp eq i32 %361, 1
  br i1 %371, label %if.end540.loopexit1672.unr-lcssa, label %for.body11.preheader.i1235.new

for.body11.preheader.i1235.new:                   ; preds = %for.body11.preheader.i1235
  %unroll_iter1730 = and i64 %wide.trip.count.i1236, 2147483646
  br label %for.body11.i1238

for.body11.i1238:                                 ; preds = %for.body11.i1238, %for.body11.preheader.i1235.new
  %372 = phi i8 [ %.pre.i1237, %for.body11.preheader.i1235.new ], [ %inc17.i1244.1, %for.body11.i1238 ]
  %indvars.iv.i1239 = phi i64 [ 0, %for.body11.preheader.i1235.new ], [ %indvars.iv.next.i1245.1, %for.body11.i1238 ]
  %niter1731 = phi i64 [ 0, %for.body11.preheader.i1235.new ], [ %niter1731.next.1, %for.body11.i1238 ]
  %arrayidx13.i1240 = getelementptr inbounds ptr, ptr %360, i64 %indvars.iv.i1239
  %373 = load ptr, ptr %arrayidx13.i1240, align 8
  %bottom_field.i1241 = getelementptr inbounds i8, ptr %373, i64 64
  %374 = load ptr, ptr %bottom_field.i1241, align 8
  %idxprom15.i1242 = sext i8 %372 to i64
  %arrayidx16.i1243 = getelementptr inbounds ptr, ptr %362, i64 %idxprom15.i1242
  store ptr %374, ptr %arrayidx16.i1243, align 8
  %375 = load i8, ptr %arrayidx396, align 1
  %inc17.i1244 = add i8 %375, 1
  store i8 %inc17.i1244, ptr %arrayidx396, align 1
  %indvars.iv.next.i1245 = or disjoint i64 %indvars.iv.i1239, 1
  %arrayidx13.i1240.1 = getelementptr inbounds ptr, ptr %360, i64 %indvars.iv.next.i1245
  %376 = load ptr, ptr %arrayidx13.i1240.1, align 8
  %bottom_field.i1241.1 = getelementptr inbounds i8, ptr %376, i64 64
  %377 = load ptr, ptr %bottom_field.i1241.1, align 8
  %idxprom15.i1242.1 = sext i8 %inc17.i1244 to i64
  %arrayidx16.i1243.1 = getelementptr inbounds ptr, ptr %362, i64 %idxprom15.i1242.1
  store ptr %377, ptr %arrayidx16.i1243.1, align 8
  %378 = load i8, ptr %arrayidx396, align 1
  %inc17.i1244.1 = add i8 %378, 1
  store i8 %inc17.i1244.1, ptr %arrayidx396, align 1
  %indvars.iv.next.i1245.1 = add nuw nsw i64 %indvars.iv.i1239, 2
  %niter1731.next.1 = add i64 %niter1731, 2
  %niter1731.ncmp.1 = icmp eq i64 %niter1731.next.1, %unroll_iter1730
  br i1 %niter1731.ncmp.1, label %if.end540.loopexit1672.unr-lcssa, label %for.body11.i1238

if.end540.loopexit.unr-lcssa:                     ; preds = %for.body.i1252, %for.body.preheader.i1249
  %.unr1734 = phi i8 [ %.pre45.i1251, %for.body.preheader.i1249 ], [ %inc.i1258.1, %for.body.i1252 ]
  %indvars.iv40.i1253.unr = phi i64 [ 0, %for.body.preheader.i1249 ], [ %indvars.iv.next41.i1259.1, %for.body.i1252 ]
  %lcmp.mod1735.not = icmp eq i64 %xtraiter1732, 0
  br i1 %lcmp.mod1735.not, label %if.end540, label %for.body.i1252.epil

for.body.i1252.epil:                              ; preds = %if.end540.loopexit.unr-lcssa
  %arrayidx.i1254.epil = getelementptr inbounds ptr, ptr %360, i64 %indvars.iv40.i1253.unr
  %379 = load ptr, ptr %arrayidx.i1254.epil, align 8
  %top_field.i1255.epil = getelementptr inbounds i8, ptr %379, i64 56
  %380 = load ptr, ptr %top_field.i1255.epil, align 8
  %idxprom2.i1256.epil = sext i8 %.unr1734 to i64
  %arrayidx3.i1257.epil = getelementptr inbounds ptr, ptr %362, i64 %idxprom2.i1256.epil
  store ptr %380, ptr %arrayidx3.i1257.epil, align 8
  %381 = load i8, ptr %arrayidx396, align 1
  %inc.i1258.epil = add i8 %381, 1
  store i8 %inc.i1258.epil, ptr %arrayidx396, align 1
  br label %if.end540

if.end540.loopexit1672.unr-lcssa:                 ; preds = %for.body11.i1238, %for.body11.preheader.i1235
  %.unr1728 = phi i8 [ %.pre.i1237, %for.body11.preheader.i1235 ], [ %inc17.i1244.1, %for.body11.i1238 ]
  %indvars.iv.i1239.unr = phi i64 [ 0, %for.body11.preheader.i1235 ], [ %indvars.iv.next.i1245.1, %for.body11.i1238 ]
  %lcmp.mod1729.not = icmp eq i64 %xtraiter1726, 0
  br i1 %lcmp.mod1729.not, label %if.end540, label %for.body11.i1238.epil

for.body11.i1238.epil:                            ; preds = %if.end540.loopexit1672.unr-lcssa
  %arrayidx13.i1240.epil = getelementptr inbounds ptr, ptr %360, i64 %indvars.iv.i1239.unr
  %382 = load ptr, ptr %arrayidx13.i1240.epil, align 8
  %bottom_field.i1241.epil = getelementptr inbounds i8, ptr %382, i64 64
  %383 = load ptr, ptr %bottom_field.i1241.epil, align 8
  %idxprom15.i1242.epil = sext i8 %.unr1728 to i64
  %arrayidx16.i1243.epil = getelementptr inbounds ptr, ptr %362, i64 %idxprom15.i1242.epil
  store ptr %383, ptr %arrayidx16.i1243.epil, align 8
  %384 = load i8, ptr %arrayidx396, align 1
  %inc17.i1244.epil = add i8 %384, 1
  store i8 %inc17.i1244.epil, ptr %arrayidx396, align 1
  br label %if.end540

if.end540:                                        ; preds = %for.body11.i1238.epil, %if.end540.loopexit1672.unr-lcssa, %for.body.i1252.epil, %if.end540.loopexit.unr-lcssa, %if.then7.i1233, %for.cond.preheader.i1247, %gen_pic_list_from_frame_interview_list.exit, %for.end514, %if.end444
  %385 = load i8, ptr %listXsize392, align 8
  %conv543 = sext i8 %385 to i32
  %num_ref_idx_active = getelementptr inbounds i8, ptr %currSlice, i64 136
  %386 = load i32, ptr %num_ref_idx_active, align 8
  %cond.i = tail call noundef i32 @llvm.smin.i32(i32 %conv543, i32 %386)
  %conv546 = trunc i32 %cond.i to i8
  store i8 %conv546, ptr %listXsize392, align 8
  %387 = load i8, ptr %arrayidx396, align 1
  %conv551 = sext i8 %387 to i32
  %arrayidx553 = getelementptr inbounds i8, ptr %currSlice, i64 140
  %388 = load i32, ptr %arrayidx553, align 4
  %cond.i1262 = tail call noundef i32 @llvm.smin.i32(i32 %conv551, i32 %388)
  %conv555 = trunc i32 %cond.i1262 to i8
  store i8 %conv555, ptr %arrayidx396, align 1
  %sext = shl i32 %cond.i, 24
  %conv560 = ashr exact i32 %sext, 24
  %cmp5621477 = icmp ult i32 %conv560, 33
  br i1 %cmp5621477, label %for.body564.lr.ph, label %for.end571

for.body564.lr.ph:                                ; preds = %if.end540
  %no_reference_picture = getelementptr inbounds i8, ptr %0, i64 856488
  %listX565 = getelementptr inbounds i8, ptr %currSlice, i64 264
  %389 = zext nneg i32 %conv560 to i64
  %.pre1591 = load ptr, ptr %no_reference_picture, align 8
  br label %for.body564

for.body564:                                      ; preds = %for.body564.lr.ph, %for.body564
  %indvars.iv1572 = phi i64 [ %389, %for.body564.lr.ph ], [ %indvars.iv.next1573, %for.body564 ]
  %390 = load ptr, ptr %listX565, align 8
  %arrayidx568 = getelementptr inbounds ptr, ptr %390, i64 %indvars.iv1572
  store ptr %.pre1591, ptr %arrayidx568, align 8
  %indvars.iv.next1573 = add nuw nsw i64 %indvars.iv1572, 1
  %391 = and i64 %indvars.iv.next1573, 4294967295
  %exitcond1575.not = icmp eq i64 %391, 33
  br i1 %exitcond1575.not, label %for.end571.loopexit, label %for.body564

for.end571.loopexit:                              ; preds = %for.body564
  %.pre1592 = load i8, ptr %arrayidx396, align 1
  br label %for.end571

for.end571:                                       ; preds = %for.end571.loopexit, %if.end540
  %392 = phi i8 [ %.pre1592, %for.end571.loopexit ], [ %conv555, %if.end540 ]
  %cmp5761479 = icmp ult i8 %392, 33
  br i1 %cmp5761479, label %for.body578.lr.ph, label %for.end586

for.body578.lr.ph:                                ; preds = %for.end571
  %no_reference_picture579 = getelementptr inbounds i8, ptr %0, i64 856488
  %arrayidx581 = getelementptr inbounds i8, ptr %currSlice, i64 272
  %393 = zext nneg i8 %392 to i64
  %.pre1593 = load ptr, ptr %no_reference_picture579, align 8
  br label %for.body578

for.body578:                                      ; preds = %for.body578.lr.ph, %for.body578
  %indvars.iv1576 = phi i64 [ %393, %for.body578.lr.ph ], [ %indvars.iv.next1577, %for.body578 ]
  %394 = load ptr, ptr %arrayidx581, align 8
  %arrayidx583 = getelementptr inbounds ptr, ptr %394, i64 %indvars.iv1576
  store ptr %.pre1593, ptr %arrayidx583, align 8
  %indvars.iv.next1577 = add nuw nsw i64 %indvars.iv1576, 1
  %395 = and i64 %indvars.iv.next1577, 4294967295
  %exitcond1580.not = icmp eq i64 %395, 33
  br i1 %exitcond1580.not, label %for.end586, label %for.body578

for.end586:                                       ; preds = %for.body578, %for.end571
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal range(i32 -1, 2) i32 @compare_pic_by_poc_desc(ptr nocapture noundef readonly %arg1, ptr nocapture noundef readonly %arg2) #12 {
entry:
  %0 = load ptr, ptr %arg1, align 8
  %poc = getelementptr inbounds i8, ptr %0, i64 4
  %1 = load i32, ptr %poc, align 4
  %2 = load ptr, ptr %arg2, align 8
  %poc3 = getelementptr inbounds i8, ptr %2, i64 4
  %3 = load i32, ptr %poc3, align 4
  %cmp = icmp slt i32 %1, %3
  %cmp4 = icmp sgt i32 %1, %3
  %. = sext i1 %cmp4 to i32
  %retval.0 = select i1 %cmp, i32 1, i32 %.
  ret i32 %retval.0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal range(i32 -1, 2) i32 @compare_pic_by_poc_asc(ptr nocapture noundef readonly %arg1, ptr nocapture noundef readonly %arg2) #12 {
entry:
  %0 = load ptr, ptr %arg1, align 8
  %poc = getelementptr inbounds i8, ptr %0, i64 4
  %1 = load i32, ptr %poc, align 4
  %2 = load ptr, ptr %arg2, align 8
  %poc3 = getelementptr inbounds i8, ptr %2, i64 4
  %3 = load i32, ptr %poc3, align 4
  %cmp = icmp slt i32 %1, %3
  %cmp4 = icmp sgt i32 %1, %3
  %. = zext i1 %cmp4 to i32
  %retval.0 = select i1 %cmp, i32 -1, i32 %.
  ret i32 %retval.0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal range(i32 -1, 2) i32 @compare_fs_by_poc_desc(ptr nocapture noundef readonly %arg1, ptr nocapture noundef readonly %arg2) #12 {
entry:
  %0 = load ptr, ptr %arg1, align 8
  %poc = getelementptr inbounds i8, ptr %0, i64 40
  %1 = load i32, ptr %poc, align 8
  %2 = load ptr, ptr %arg2, align 8
  %poc3 = getelementptr inbounds i8, ptr %2, i64 40
  %3 = load i32, ptr %poc3, align 8
  %cmp = icmp slt i32 %1, %3
  %cmp4 = icmp sgt i32 %1, %3
  %. = sext i1 %cmp4 to i32
  %retval.0 = select i1 %cmp, i32 1, i32 %.
  ret i32 %retval.0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal range(i32 -1, 2) i32 @compare_fs_by_poc_asc(ptr nocapture noundef readonly %arg1, ptr nocapture noundef readonly %arg2) #12 {
entry:
  %0 = load ptr, ptr %arg1, align 8
  %poc = getelementptr inbounds i8, ptr %0, i64 40
  %1 = load i32, ptr %poc, align 8
  %2 = load ptr, ptr %arg2, align 8
  %poc3 = getelementptr inbounds i8, ptr %2, i64 40
  %3 = load i32, ptr %poc3, align 8
  %cmp = icmp slt i32 %1, %3
  %cmp4 = icmp sgt i32 %1, %3
  %. = zext i1 %cmp4 to i32
  %retval.0 = select i1 %cmp, i32 -1, i32 %.
  ret i32 %retval.0
}

; Function Attrs: nounwind uwtable
define dso_local void @init_lists(ptr noundef %currSlice) local_unnamed_addr #1 {
entry:
  %0 = load ptr, ptr %currSlice, align 8
  %p_Dpb2 = getelementptr inbounds i8, ptr %currSlice, i64 40
  %1 = load ptr, ptr %p_Dpb2, align 8
  %ThisPOC = getelementptr inbounds i8, ptr %currSlice, i64 104
  %2 = load i32, ptr %ThisPOC, align 8
  %view_id = getelementptr inbounds i8, ptr %currSlice, i64 1176
  %3 = load i32, ptr %view_id, align 8
  %anchor_pic_flag3 = getelementptr inbounds i8, ptr %currSlice, i64 1184
  %4 = load i32, ptr %anchor_pic_flag3, align 8
  %listinterviewidx0 = getelementptr inbounds i8, ptr %currSlice, i64 13308
  store i32 0, ptr %listinterviewidx0, align 4
  %listinterviewidx1 = getelementptr inbounds i8, ptr %currSlice, i64 13312
  store i32 0, ptr %listinterviewidx1, align 8
  %slice_type = getelementptr inbounds i8, ptr %currSlice, i64 164
  %5 = load i32, ptr %slice_type, align 4
  switch i32 %5, label %if.else183 [
    i32 2, label %if.then
    i32 4, label %if.then
    i32 0, label %if.then13
    i32 3, label %if.then13
  ]

if.then:                                          ; preds = %entry, %entry
  %listXsize = getelementptr inbounds i8, ptr %currSlice, i64 256
  store i8 0, ptr %listXsize, align 8
  %arrayidx7 = getelementptr inbounds i8, ptr %currSlice, i64 257
  store i8 0, ptr %arrayidx7, align 1
  br label %cleanup

if.then13:                                        ; preds = %entry, %entry
  %structure = getelementptr inbounds i8, ptr %currSlice, i64 184
  %6 = load i32, ptr %structure, align 8
  %cmp14 = icmp eq i32 %6, 0
  br i1 %cmp14, label %for.cond.preheader, label %if.else

for.cond.preheader:                               ; preds = %if.then13
  %ref_frames_in_buffer = getelementptr inbounds i8, ptr %1, i64 48
  %7 = load i32, ptr %ref_frames_in_buffer, align 8
  %cmp162211.not = icmp eq i32 %7, 0
  br i1 %cmp162211.not, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %fs_ref = getelementptr inbounds i8, ptr %1, i64 24
  %listX = getelementptr inbounds i8, ptr %currSlice, i64 264
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %8 = phi i32 [ %7, %for.body.lr.ph ], [ %17, %for.inc ]
  %indvars.iv2325 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next2326, %for.inc ]
  %list0idx.02212 = phi i32 [ 0, %for.body.lr.ph ], [ %list0idx.1, %for.inc ]
  %9 = load ptr, ptr %fs_ref, align 8
  %arrayidx17 = getelementptr inbounds ptr, ptr %9, i64 %indvars.iv2325
  %10 = load ptr, ptr %arrayidx17, align 8
  %11 = load i32, ptr %10, align 8
  %cmp18 = icmp eq i32 %11, 3
  br i1 %cmp18, label %if.then19, label %for.inc

if.then19:                                        ; preds = %for.body
  %frame = getelementptr inbounds i8, ptr %10, i64 48
  %12 = load ptr, ptr %frame, align 8
  %used_for_reference = getelementptr inbounds i8, ptr %12, i64 44
  %13 = load i32, ptr %used_for_reference, align 4
  %tobool.not = icmp eq i32 %13, 0
  br i1 %tobool.not, label %for.inc, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then19
  %is_long_term = getelementptr inbounds i8, ptr %12, i64 40
  %14 = load i8, ptr %is_long_term, align 8
  %tobool27.not = icmp eq i8 %14, 0
  br i1 %tobool27.not, label %land.lhs.true28, label %for.inc

land.lhs.true28:                                  ; preds = %land.lhs.true
  %view_id33 = getelementptr inbounds i8, ptr %12, i64 344
  %15 = load i32, ptr %view_id33, align 8
  %cmp34 = icmp eq i32 %15, %3
  br i1 %cmp34, label %if.then35, label %for.inc

if.then35:                                        ; preds = %land.lhs.true28
  %16 = load ptr, ptr %listX, align 8
  %inc = add nsw i32 %list0idx.02212, 1
  %idxprom41 = sext i32 %list0idx.02212 to i64
  %arrayidx42 = getelementptr inbounds ptr, ptr %16, i64 %idxprom41
  store ptr %12, ptr %arrayidx42, align 8
  %.pre2408 = load i32, ptr %ref_frames_in_buffer, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then35, %land.lhs.true28, %land.lhs.true, %if.then19
  %17 = phi i32 [ %8, %land.lhs.true ], [ %.pre2408, %if.then35 ], [ %8, %land.lhs.true28 ], [ %8, %if.then19 ], [ %8, %for.body ]
  %list0idx.1 = phi i32 [ %list0idx.02212, %land.lhs.true ], [ %inc, %if.then35 ], [ %list0idx.02212, %land.lhs.true28 ], [ %list0idx.02212, %if.then19 ], [ %list0idx.02212, %for.body ]
  %indvars.iv.next2326 = add nuw nsw i64 %indvars.iv2325, 1
  %18 = zext i32 %17 to i64
  %cmp16 = icmp ult i64 %indvars.iv.next2326, %18
  br i1 %cmp16, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc, %for.cond.preheader
  %list0idx.0.lcssa = phi i32 [ 0, %for.cond.preheader ], [ %list0idx.1, %for.inc ]
  %listX46 = getelementptr inbounds i8, ptr %currSlice, i64 264
  %19 = load ptr, ptr %listX46, align 8
  %conv = sext i32 %list0idx.0.lcssa to i64
  tail call void @qsort(ptr noundef %19, i64 noundef %conv, i64 noundef 8, ptr noundef nonnull @compare_pic_by_pic_num_desc) #20
  %conv48 = trunc i32 %list0idx.0.lcssa to i8
  %listXsize49 = getelementptr inbounds i8, ptr %currSlice, i64 256
  store i8 %conv48, ptr %listXsize49, align 8
  %ltref_frames_in_buffer = getelementptr inbounds i8, ptr %1, i64 52
  %20 = load i32, ptr %ltref_frames_in_buffer, align 4
  %cmp522215.not = icmp eq i32 %20, 0
  br i1 %cmp522215.not, label %for.end90, label %for.body54.lr.ph

for.body54.lr.ph:                                 ; preds = %for.end
  %fs_ltref = getelementptr inbounds i8, ptr %1, i64 32
  br label %for.body54

for.body54:                                       ; preds = %for.body54.lr.ph, %for.inc88
  %21 = phi i32 [ %20, %for.body54.lr.ph ], [ %29, %for.inc88 ]
  %indvars.iv2328 = phi i64 [ 0, %for.body54.lr.ph ], [ %indvars.iv.next2329, %for.inc88 ]
  %list0idx.22216 = phi i32 [ %list0idx.0.lcssa, %for.body54.lr.ph ], [ %list0idx.3, %for.inc88 ]
  %22 = load ptr, ptr %fs_ltref, align 8
  %arrayidx56 = getelementptr inbounds ptr, ptr %22, i64 %indvars.iv2328
  %23 = load ptr, ptr %arrayidx56, align 8
  %24 = load i32, ptr %23, align 8
  %cmp58 = icmp eq i32 %24, 3
  br i1 %cmp58, label %if.then60, label %for.inc88

if.then60:                                        ; preds = %for.body54
  %frame64 = getelementptr inbounds i8, ptr %23, i64 48
  %25 = load ptr, ptr %frame64, align 8
  %is_long_term65 = getelementptr inbounds i8, ptr %25, i64 40
  %26 = load i8, ptr %is_long_term65, align 8
  %tobool67.not = icmp eq i8 %26, 0
  br i1 %tobool67.not, label %for.inc88, label %land.lhs.true68

land.lhs.true68:                                  ; preds = %if.then60
  %view_id73 = getelementptr inbounds i8, ptr %25, i64 344
  %27 = load i32, ptr %view_id73, align 8
  %cmp74 = icmp eq i32 %27, %3
  br i1 %cmp74, label %if.then76, label %for.inc88

if.then76:                                        ; preds = %land.lhs.true68
  %28 = load ptr, ptr %listX46, align 8
  %inc83 = add nsw i32 %list0idx.22216, 1
  %idxprom84 = sext i32 %list0idx.22216 to i64
  %arrayidx85 = getelementptr inbounds ptr, ptr %28, i64 %idxprom84
  store ptr %25, ptr %arrayidx85, align 8
  %.pre2409 = load i32, ptr %ltref_frames_in_buffer, align 4
  br label %for.inc88

for.inc88:                                        ; preds = %for.body54, %if.then76, %land.lhs.true68, %if.then60
  %29 = phi i32 [ %.pre2409, %if.then76 ], [ %21, %land.lhs.true68 ], [ %21, %if.then60 ], [ %21, %for.body54 ]
  %list0idx.3 = phi i32 [ %inc83, %if.then76 ], [ %list0idx.22216, %land.lhs.true68 ], [ %list0idx.22216, %if.then60 ], [ %list0idx.22216, %for.body54 ]
  %indvars.iv.next2329 = add nuw nsw i64 %indvars.iv2328, 1
  %30 = zext i32 %29 to i64
  %cmp52 = icmp ult i64 %indvars.iv.next2329, %30
  br i1 %cmp52, label %for.body54, label %for.end90.loopexit

for.end90.loopexit:                               ; preds = %for.inc88
  %.pre2410 = load i8, ptr %listXsize49, align 8
  %.pre2427 = trunc i32 %list0idx.3 to i8
  br label %for.end90

for.end90:                                        ; preds = %for.end90.loopexit, %for.end
  %conv102.pre-phi = phi i8 [ %.pre2427, %for.end90.loopexit ], [ %conv48, %for.end ]
  %31 = phi i8 [ %.pre2410, %for.end90.loopexit ], [ %conv48, %for.end ]
  %list0idx.2.lcssa = phi i32 [ %list0idx.3, %for.end90.loopexit ], [ %list0idx.0.lcssa, %for.end ]
  %32 = load ptr, ptr %listX46, align 8
  %idxprom96 = sext i8 %31 to i64
  %arrayidx97 = getelementptr inbounds ptr, ptr %32, i64 %idxprom96
  %conv100 = sext i8 %31 to i32
  %sub = sub nsw i32 %list0idx.2.lcssa, %conv100
  %conv101 = sext i32 %sub to i64
  tail call void @qsort(ptr noundef %arrayidx97, i64 noundef %conv101, i64 noundef 8, ptr noundef nonnull @compare_pic_by_lt_pic_num_asc) #20
  store i8 %conv102.pre-phi, ptr %listXsize49, align 8
  br label %if.end180

if.else:                                          ; preds = %if.then13
  %size = getelementptr inbounds i8, ptr %1, i64 40
  %33 = load i32, ptr %size, align 8
  %conv105 = zext i32 %33 to i64
  %call = tail call noalias ptr @calloc(i64 noundef %conv105, i64 noundef 8) #21
  %cmp106 = icmp eq ptr %call, null
  br i1 %cmp106, label %if.then108, label %if.end109

if.then108:                                       ; preds = %if.else
  tail call void @no_mem_exit(ptr noundef nonnull @.str.14) #20
  %.pre = load i32, ptr %size, align 8
  %.pre2428 = zext i32 %.pre to i64
  br label %if.end109

if.end109:                                        ; preds = %if.then108, %if.else
  %conv111.pre-phi = phi i64 [ %.pre2428, %if.then108 ], [ %conv105, %if.else ]
  %call112 = tail call noalias ptr @calloc(i64 noundef %conv111.pre-phi, i64 noundef 8) #21
  %cmp113 = icmp eq ptr %call112, null
  br i1 %cmp113, label %if.then115, label %if.end116

if.then115:                                       ; preds = %if.end109
  tail call void @no_mem_exit(ptr noundef nonnull @.str.15) #20
  br label %if.end116

if.end116:                                        ; preds = %if.then115, %if.end109
  %ref_frames_in_buffer118 = getelementptr inbounds i8, ptr %1, i64 48
  %34 = load i32, ptr %ref_frames_in_buffer118, align 8
  %cmp1192204.not = icmp eq i32 %34, 0
  br i1 %cmp1192204.not, label %for.end143, label %for.body121.lr.ph

for.body121.lr.ph:                                ; preds = %if.end116
  %fs_ref122 = getelementptr inbounds i8, ptr %1, i64 24
  %.pre2406 = load ptr, ptr %fs_ref122, align 8
  %35 = zext i32 %34 to i64
  %xtraiter = and i64 %35, 1
  %36 = icmp eq i32 %34, 1
  br i1 %36, label %for.end143.loopexit.unr-lcssa, label %for.body121.lr.ph.new

for.body121.lr.ph.new:                            ; preds = %for.body121.lr.ph
  %unroll_iter = and i64 %35, 4294967294
  br label %for.body121

for.body121:                                      ; preds = %for.inc141.1, %for.body121.lr.ph.new
  %indvars.iv = phi i64 [ 0, %for.body121.lr.ph.new ], [ %indvars.iv.next.1, %for.inc141.1 ]
  %list0idx.42205 = phi i32 [ 0, %for.body121.lr.ph.new ], [ %list0idx.5.1, %for.inc141.1 ]
  %niter = phi i64 [ 0, %for.body121.lr.ph.new ], [ %niter.next.1, %for.inc141.1 ]
  %arrayidx124 = getelementptr inbounds ptr, ptr %.pre2406, i64 %indvars.iv
  %37 = load ptr, ptr %arrayidx124, align 8
  %is_reference = getelementptr inbounds i8, ptr %37, i64 4
  %38 = load i32, ptr %is_reference, align 4
  %tobool125.not = icmp eq i32 %38, 0
  br i1 %tobool125.not, label %for.inc141, label %land.lhs.true126

land.lhs.true126:                                 ; preds = %for.body121
  %view_id130 = getelementptr inbounds i8, ptr %37, i64 72
  %39 = load i32, ptr %view_id130, align 8
  %cmp131 = icmp eq i32 %39, %3
  br i1 %cmp131, label %if.then133, label %for.inc141

if.then133:                                       ; preds = %land.lhs.true126
  %inc137 = add nsw i32 %list0idx.42205, 1
  %idxprom138 = sext i32 %list0idx.42205 to i64
  %arrayidx139 = getelementptr inbounds ptr, ptr %call, i64 %idxprom138
  store ptr %37, ptr %arrayidx139, align 8
  br label %for.inc141

for.inc141:                                       ; preds = %for.body121, %land.lhs.true126, %if.then133
  %list0idx.5 = phi i32 [ %inc137, %if.then133 ], [ %list0idx.42205, %land.lhs.true126 ], [ %list0idx.42205, %for.body121 ]
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1
  %arrayidx124.1 = getelementptr inbounds ptr, ptr %.pre2406, i64 %indvars.iv.next
  %40 = load ptr, ptr %arrayidx124.1, align 8
  %is_reference.1 = getelementptr inbounds i8, ptr %40, i64 4
  %41 = load i32, ptr %is_reference.1, align 4
  %tobool125.not.1 = icmp eq i32 %41, 0
  br i1 %tobool125.not.1, label %for.inc141.1, label %land.lhs.true126.1

land.lhs.true126.1:                               ; preds = %for.inc141
  %view_id130.1 = getelementptr inbounds i8, ptr %40, i64 72
  %42 = load i32, ptr %view_id130.1, align 8
  %cmp131.1 = icmp eq i32 %42, %3
  br i1 %cmp131.1, label %if.then133.1, label %for.inc141.1

if.then133.1:                                     ; preds = %land.lhs.true126.1
  %inc137.1 = add nsw i32 %list0idx.5, 1
  %idxprom138.1 = sext i32 %list0idx.5 to i64
  %arrayidx139.1 = getelementptr inbounds ptr, ptr %call, i64 %idxprom138.1
  store ptr %40, ptr %arrayidx139.1, align 8
  br label %for.inc141.1

for.inc141.1:                                     ; preds = %if.then133.1, %land.lhs.true126.1, %for.inc141
  %list0idx.5.1 = phi i32 [ %inc137.1, %if.then133.1 ], [ %list0idx.5, %land.lhs.true126.1 ], [ %list0idx.5, %for.inc141 ]
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %for.end143.loopexit.unr-lcssa, label %for.body121

for.end143.loopexit.unr-lcssa:                    ; preds = %for.inc141.1, %for.body121.lr.ph
  %list0idx.5.lcssa.ph = phi i32 [ poison, %for.body121.lr.ph ], [ %list0idx.5.1, %for.inc141.1 ]
  %indvars.iv.unr = phi i64 [ 0, %for.body121.lr.ph ], [ %indvars.iv.next.1, %for.inc141.1 ]
  %list0idx.42205.unr = phi i32 [ 0, %for.body121.lr.ph ], [ %list0idx.5.1, %for.inc141.1 ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.end143, label %for.body121.epil

for.body121.epil:                                 ; preds = %for.end143.loopexit.unr-lcssa
  %arrayidx124.epil = getelementptr inbounds ptr, ptr %.pre2406, i64 %indvars.iv.unr
  %43 = load ptr, ptr %arrayidx124.epil, align 8
  %is_reference.epil = getelementptr inbounds i8, ptr %43, i64 4
  %44 = load i32, ptr %is_reference.epil, align 4
  %tobool125.not.epil = icmp eq i32 %44, 0
  br i1 %tobool125.not.epil, label %for.end143, label %land.lhs.true126.epil

land.lhs.true126.epil:                            ; preds = %for.body121.epil
  %view_id130.epil = getelementptr inbounds i8, ptr %43, i64 72
  %45 = load i32, ptr %view_id130.epil, align 8
  %cmp131.epil = icmp eq i32 %45, %3
  br i1 %cmp131.epil, label %if.then133.epil, label %for.end143

if.then133.epil:                                  ; preds = %land.lhs.true126.epil
  %inc137.epil = add nsw i32 %list0idx.42205.unr, 1
  %idxprom138.epil = sext i32 %list0idx.42205.unr to i64
  %arrayidx139.epil = getelementptr inbounds ptr, ptr %call, i64 %idxprom138.epil
  store ptr %43, ptr %arrayidx139.epil, align 8
  br label %for.end143

for.end143:                                       ; preds = %for.end143.loopexit.unr-lcssa, %if.then133.epil, %land.lhs.true126.epil, %for.body121.epil, %if.end116
  %list0idx.4.lcssa = phi i32 [ 0, %if.end116 ], [ %list0idx.5.lcssa.ph, %for.end143.loopexit.unr-lcssa ], [ %inc137.epil, %if.then133.epil ], [ %list0idx.42205.unr, %land.lhs.true126.epil ], [ %list0idx.42205.unr, %for.body121.epil ]
  %conv144 = sext i32 %list0idx.4.lcssa to i64
  tail call void @qsort(ptr noundef %call, i64 noundef %conv144, i64 noundef 8, ptr noundef nonnull @compare_fs_by_frame_num_desc) #20
  %listXsize145 = getelementptr inbounds i8, ptr %currSlice, i64 256
  store i8 0, ptr %listXsize145, align 8
  %46 = load i32, ptr %structure, align 8
  %listX148 = getelementptr inbounds i8, ptr %currSlice, i64 264
  %47 = load ptr, ptr %listX148, align 8
  %cmp.i = icmp eq i32 %46, 1
  br i1 %cmp.i, label %while.cond.preheader.i, label %if.end48.i

while.cond.preheader.i:                           ; preds = %for.end143
  %cmp2187.i = icmp sgt i32 %list0idx.4.lcssa, 0
  br i1 %cmp2187.i, label %for.cond.preheader.i, label %gen_pic_list_from_frame_list.exit

for.cond.preheader.i:                             ; preds = %while.cond.preheader.i, %for.end47.i
  %48 = phi i8 [ %66, %for.end47.i ], [ 0, %while.cond.preheader.i ]
  %bot_idx.0190.i = phi i32 [ %bot_idx.2.i, %for.end47.i ], [ 0, %while.cond.preheader.i ]
  %top_idx.0189.i = phi i32 [ %top_idx.2.i, %for.end47.i ], [ 0, %while.cond.preheader.i ]
  %cmp4182.i = icmp slt i32 %top_idx.0189.i, %list0idx.4.lcssa
  br i1 %cmp4182.i, label %for.body.preheader.i, label %for.end.i

for.body.preheader.i:                             ; preds = %for.cond.preheader.i
  %49 = sext i32 %top_idx.0189.i to i64
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i, %for.body.preheader.i
  %indvars.iv.i = phi i64 [ %49, %for.body.preheader.i ], [ %indvars.iv.next.i, %for.inc.i ]
  %arrayidx.i = getelementptr inbounds ptr, ptr %call, i64 %indvars.iv.i
  %50 = load ptr, ptr %arrayidx.i, align 8
  %51 = load i32, ptr %50, align 8
  %and.i = and i32 %51, 1
  %tobool5.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool5.not.i, label %for.inc.i, label %if.then6.i

if.then6.i:                                       ; preds = %for.body.i
  %top_field.i = getelementptr inbounds i8, ptr %50, i64 56
  %52 = load ptr, ptr %top_field.i, align 8
  %used_for_reference.i1954 = getelementptr inbounds i8, ptr %52, i64 44
  %53 = load i32, ptr %used_for_reference.i1954, align 4
  %tobool.not.i1955 = icmp eq i32 %53, 0
  br i1 %tobool.not.i1955, label %for.inc.i, label %is_short_ref.exit1960

is_short_ref.exit1960:                            ; preds = %if.then6.i
  %is_long_term.i1957 = getelementptr inbounds i8, ptr %52, i64 40
  %54 = load i8, ptr %is_long_term.i1957, align 8
  %tobool1.not.i1958.not = icmp eq i8 %54, 0
  br i1 %tobool1.not.i1958.not, label %if.then10.i, label %for.inc.i

if.then10.i:                                      ; preds = %is_short_ref.exit1960
  %55 = trunc nsw i64 %indvars.iv.i to i32
  %idxprom14.i = sext i8 %48 to i64
  %arrayidx15.i = getelementptr inbounds ptr, ptr %47, i64 %idxprom14.i
  store ptr %52, ptr %arrayidx15.i, align 8
  %56 = load i8, ptr %listXsize145, align 1
  %inc.i = add i8 %56, 1
  store i8 %inc.i, ptr %listXsize145, align 1
  %inc16.i = add nsw i32 %55, 1
  br label %for.end.i

for.inc.i:                                        ; preds = %if.then6.i, %is_short_ref.exit1960, %for.body.i
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1
  %lftr.wideiv.i = trunc i64 %indvars.iv.next.i to i32
  %exitcond.not.i = icmp eq i32 %list0idx.4.lcssa, %lftr.wideiv.i
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i

for.end.i:                                        ; preds = %for.inc.i, %if.then10.i, %for.cond.preheader.i
  %57 = phi i8 [ %inc.i, %if.then10.i ], [ %48, %for.cond.preheader.i ], [ %48, %for.inc.i ]
  %top_idx.2.i = phi i32 [ %inc16.i, %if.then10.i ], [ %top_idx.0189.i, %for.cond.preheader.i ], [ %list0idx.4.lcssa, %for.inc.i ]
  %cmp21184.i = icmp slt i32 %bot_idx.0190.i, %list0idx.4.lcssa
  br i1 %cmp21184.i, label %for.body23.preheader.i, label %for.end47.i

for.body23.preheader.i:                           ; preds = %for.end.i
  %58 = sext i32 %bot_idx.0190.i to i64
  br label %for.body23.i

for.body23.i:                                     ; preds = %for.inc45.i, %for.body23.preheader.i
  %indvars.iv212.i = phi i64 [ %58, %for.body23.preheader.i ], [ %indvars.iv.next213.i, %for.inc45.i ]
  %arrayidx25.i = getelementptr inbounds ptr, ptr %call, i64 %indvars.iv212.i
  %59 = load ptr, ptr %arrayidx25.i, align 8
  %60 = load i32, ptr %59, align 8
  %and27.i = and i32 %60, 2
  %tobool28.not.i = icmp eq i32 %and27.i, 0
  br i1 %tobool28.not.i, label %for.inc45.i, label %if.then29.i

if.then29.i:                                      ; preds = %for.body23.i
  %bottom_field.i = getelementptr inbounds i8, ptr %59, i64 64
  %61 = load ptr, ptr %bottom_field.i, align 8
  %used_for_reference.i1947 = getelementptr inbounds i8, ptr %61, i64 44
  %62 = load i32, ptr %used_for_reference.i1947, align 4
  %tobool.not.i1948 = icmp eq i32 %62, 0
  br i1 %tobool.not.i1948, label %for.inc45.i, label %is_short_ref.exit1953

is_short_ref.exit1953:                            ; preds = %if.then29.i
  %is_long_term.i1950 = getelementptr inbounds i8, ptr %61, i64 40
  %63 = load i8, ptr %is_long_term.i1950, align 8
  %tobool1.not.i1951.not = icmp eq i8 %63, 0
  br i1 %tobool1.not.i1951.not, label %if.then34.i, label %for.inc45.i

if.then34.i:                                      ; preds = %is_short_ref.exit1953
  %64 = trunc nsw i64 %indvars.iv212.i to i32
  %idxprom39.i = sext i8 %57 to i64
  %arrayidx40.i = getelementptr inbounds ptr, ptr %47, i64 %idxprom39.i
  store ptr %61, ptr %arrayidx40.i, align 8
  %65 = load i8, ptr %listXsize145, align 1
  %inc41.i = add i8 %65, 1
  store i8 %inc41.i, ptr %listXsize145, align 1
  %inc42.i = add nsw i32 %64, 1
  br label %for.end47.i

for.inc45.i:                                      ; preds = %if.then29.i, %is_short_ref.exit1953, %for.body23.i
  %indvars.iv.next213.i = add nsw i64 %indvars.iv212.i, 1
  %lftr.wideiv215.i = trunc i64 %indvars.iv.next213.i to i32
  %exitcond216.not.i = icmp eq i32 %list0idx.4.lcssa, %lftr.wideiv215.i
  br i1 %exitcond216.not.i, label %for.end47.i, label %for.body23.i

for.end47.i:                                      ; preds = %for.inc45.i, %if.then34.i, %for.end.i
  %66 = phi i8 [ %inc41.i, %if.then34.i ], [ %57, %for.end.i ], [ %57, %for.inc45.i ]
  %bot_idx.2.i = phi i32 [ %inc42.i, %if.then34.i ], [ %bot_idx.0190.i, %for.end.i ], [ %list0idx.4.lcssa, %for.inc45.i ]
  %cmp2.i = icmp slt i32 %top_idx.2.i, %list0idx.4.lcssa
  %cmp3.i = icmp slt i32 %bot_idx.2.i, %list0idx.4.lcssa
  %67 = select i1 %cmp2.i, i1 true, i1 %cmp3.i
  br i1 %67, label %for.cond.preheader.i, label %if.end48.i

if.end48.i:                                       ; preds = %for.end47.i, %for.end143
  %68 = phi i8 [ 0, %for.end143 ], [ %66, %for.end47.i ]
  %top_idx.3.i = phi i32 [ 0, %for.end143 ], [ %top_idx.2.i, %for.end47.i ]
  %bot_idx.3.i = phi i32 [ 0, %for.end143 ], [ %bot_idx.2.i, %for.end47.i ]
  %cmp49.i = icmp eq i32 %46, 2
  br i1 %cmp49.i, label %while.cond52.preheader.i, label %gen_pic_list_from_frame_list.exit

while.cond52.preheader.i:                         ; preds = %if.end48.i
  %cmp53199.i = icmp slt i32 %top_idx.3.i, %list0idx.4.lcssa
  %cmp56200.i = icmp slt i32 %bot_idx.3.i, %list0idx.4.lcssa
  %69 = select i1 %cmp53199.i, i1 true, i1 %cmp56200.i
  br i1 %69, label %for.cond60.preheader.i, label %gen_pic_list_from_frame_list.exit

for.cond60.preheader.i:                           ; preds = %while.cond52.preheader.i, %for.end117.i
  %70 = phi i8 [ %88, %for.end117.i ], [ %68, %while.cond52.preheader.i ]
  %bot_idx.4202.i = phi i32 [ %bot_idx.6.i, %for.end117.i ], [ %bot_idx.3.i, %while.cond52.preheader.i ]
  %top_idx.4201.i = phi i32 [ %top_idx.6.i, %for.end117.i ], [ %top_idx.3.i, %while.cond52.preheader.i ]
  %cmp61193.i = icmp slt i32 %bot_idx.4202.i, %list0idx.4.lcssa
  br i1 %cmp61193.i, label %for.body63.preheader.i, label %for.end88.i

for.body63.preheader.i:                           ; preds = %for.cond60.preheader.i
  %71 = sext i32 %bot_idx.4202.i to i64
  br label %for.body63.i

for.body63.i:                                     ; preds = %for.inc86.i, %for.body63.preheader.i
  %indvars.iv217.i = phi i64 [ %71, %for.body63.preheader.i ], [ %indvars.iv.next218.i, %for.inc86.i ]
  %arrayidx65.i = getelementptr inbounds ptr, ptr %call, i64 %indvars.iv217.i
  %72 = load ptr, ptr %arrayidx65.i, align 8
  %73 = load i32, ptr %72, align 8
  %and67.i = and i32 %73, 2
  %tobool68.not.i = icmp eq i32 %and67.i, 0
  br i1 %tobool68.not.i, label %for.inc86.i, label %if.then69.i

if.then69.i:                                      ; preds = %for.body63.i
  %bottom_field72.i = getelementptr inbounds i8, ptr %72, i64 64
  %74 = load ptr, ptr %bottom_field72.i, align 8
  %used_for_reference.i1940 = getelementptr inbounds i8, ptr %74, i64 44
  %75 = load i32, ptr %used_for_reference.i1940, align 4
  %tobool.not.i1941 = icmp eq i32 %75, 0
  br i1 %tobool.not.i1941, label %for.inc86.i, label %is_short_ref.exit1946

is_short_ref.exit1946:                            ; preds = %if.then69.i
  %is_long_term.i1943 = getelementptr inbounds i8, ptr %74, i64 40
  %76 = load i8, ptr %is_long_term.i1943, align 8
  %tobool1.not.i1944.not = icmp eq i8 %76, 0
  br i1 %tobool1.not.i1944.not, label %if.then75.i, label %for.inc86.i

if.then75.i:                                      ; preds = %is_short_ref.exit1946
  %77 = trunc nsw i64 %indvars.iv217.i to i32
  %idxprom80.i = sext i8 %70 to i64
  %arrayidx81.i = getelementptr inbounds ptr, ptr %47, i64 %idxprom80.i
  store ptr %74, ptr %arrayidx81.i, align 8
  %78 = load i8, ptr %listXsize145, align 1
  %inc82.i = add i8 %78, 1
  store i8 %inc82.i, ptr %listXsize145, align 1
  %inc83.i = add nsw i32 %77, 1
  br label %for.end88.i

for.inc86.i:                                      ; preds = %if.then69.i, %is_short_ref.exit1946, %for.body63.i
  %indvars.iv.next218.i = add nsw i64 %indvars.iv217.i, 1
  %lftr.wideiv220.i = trunc i64 %indvars.iv.next218.i to i32
  %exitcond221.not.i = icmp eq i32 %list0idx.4.lcssa, %lftr.wideiv220.i
  br i1 %exitcond221.not.i, label %for.end88.i, label %for.body63.i

for.end88.i:                                      ; preds = %for.inc86.i, %if.then75.i, %for.cond60.preheader.i
  %79 = phi i8 [ %inc82.i, %if.then75.i ], [ %70, %for.cond60.preheader.i ], [ %70, %for.inc86.i ]
  %bot_idx.6.i = phi i32 [ %inc83.i, %if.then75.i ], [ %bot_idx.4202.i, %for.cond60.preheader.i ], [ %list0idx.4.lcssa, %for.inc86.i ]
  %cmp90196.i = icmp slt i32 %top_idx.4201.i, %list0idx.4.lcssa
  br i1 %cmp90196.i, label %for.body92.preheader.i, label %for.end117.i

for.body92.preheader.i:                           ; preds = %for.end88.i
  %80 = sext i32 %top_idx.4201.i to i64
  br label %for.body92.i

for.body92.i:                                     ; preds = %for.inc115.i, %for.body92.preheader.i
  %indvars.iv222.i = phi i64 [ %80, %for.body92.preheader.i ], [ %indvars.iv.next223.i, %for.inc115.i ]
  %arrayidx94.i = getelementptr inbounds ptr, ptr %call, i64 %indvars.iv222.i
  %81 = load ptr, ptr %arrayidx94.i, align 8
  %82 = load i32, ptr %81, align 8
  %and96.i = and i32 %82, 1
  %tobool97.not.i = icmp eq i32 %and96.i, 0
  br i1 %tobool97.not.i, label %for.inc115.i, label %if.then98.i

if.then98.i:                                      ; preds = %for.body92.i
  %top_field101.i = getelementptr inbounds i8, ptr %81, i64 56
  %83 = load ptr, ptr %top_field101.i, align 8
  %used_for_reference.i = getelementptr inbounds i8, ptr %83, i64 44
  %84 = load i32, ptr %used_for_reference.i, align 4
  %tobool.not.i = icmp eq i32 %84, 0
  br i1 %tobool.not.i, label %for.inc115.i, label %is_short_ref.exit

is_short_ref.exit:                                ; preds = %if.then98.i
  %is_long_term.i = getelementptr inbounds i8, ptr %83, i64 40
  %85 = load i8, ptr %is_long_term.i, align 8
  %tobool1.not.i.not = icmp eq i8 %85, 0
  br i1 %tobool1.not.i.not, label %if.then104.i, label %for.inc115.i

if.then104.i:                                     ; preds = %is_short_ref.exit
  %86 = trunc nsw i64 %indvars.iv222.i to i32
  %idxprom109.i = sext i8 %79 to i64
  %arrayidx110.i = getelementptr inbounds ptr, ptr %47, i64 %idxprom109.i
  store ptr %83, ptr %arrayidx110.i, align 8
  %87 = load i8, ptr %listXsize145, align 1
  %inc111.i = add i8 %87, 1
  store i8 %inc111.i, ptr %listXsize145, align 1
  %inc112.i = add nsw i32 %86, 1
  br label %for.end117.i

for.inc115.i:                                     ; preds = %if.then98.i, %is_short_ref.exit, %for.body92.i
  %indvars.iv.next223.i = add nsw i64 %indvars.iv222.i, 1
  %lftr.wideiv225.i = trunc i64 %indvars.iv.next223.i to i32
  %exitcond226.not.i = icmp eq i32 %list0idx.4.lcssa, %lftr.wideiv225.i
  br i1 %exitcond226.not.i, label %for.end117.i, label %for.body92.i

for.end117.i:                                     ; preds = %for.inc115.i, %if.then104.i, %for.end88.i
  %88 = phi i8 [ %inc111.i, %if.then104.i ], [ %79, %for.end88.i ], [ %79, %for.inc115.i ]
  %top_idx.6.i = phi i32 [ %inc112.i, %if.then104.i ], [ %top_idx.4201.i, %for.end88.i ], [ %list0idx.4.lcssa, %for.inc115.i ]
  %cmp53.i = icmp slt i32 %top_idx.6.i, %list0idx.4.lcssa
  %cmp56.i = icmp slt i32 %bot_idx.6.i, %list0idx.4.lcssa
  %89 = select i1 %cmp53.i, i1 true, i1 %cmp56.i
  br i1 %89, label %for.cond60.preheader.i, label %gen_pic_list_from_frame_list.exit

gen_pic_list_from_frame_list.exit:                ; preds = %for.end117.i, %while.cond.preheader.i, %if.end48.i, %while.cond52.preheader.i
  %ltref_frames_in_buffer153 = getelementptr inbounds i8, ptr %1, i64 52
  %90 = load i32, ptr %ltref_frames_in_buffer153, align 4
  %cmp1542207.not = icmp eq i32 %90, 0
  br i1 %cmp1542207.not, label %for.end173, label %for.body156.lr.ph

for.body156.lr.ph:                                ; preds = %gen_pic_list_from_frame_list.exit
  %fs_ltref157 = getelementptr inbounds i8, ptr %1, i64 32
  %.pre2407 = load ptr, ptr %fs_ltref157, align 8
  %91 = zext i32 %90 to i64
  %xtraiter2628 = and i64 %91, 1
  %92 = icmp eq i32 %90, 1
  br i1 %92, label %for.end173.loopexit.unr-lcssa, label %for.body156.lr.ph.new

for.body156.lr.ph.new:                            ; preds = %for.body156.lr.ph
  %unroll_iter2631 = and i64 %91, 4294967294
  br label %for.body156

for.body156:                                      ; preds = %for.inc171.1, %for.body156.lr.ph.new
  %indvars.iv2322 = phi i64 [ 0, %for.body156.lr.ph.new ], [ %indvars.iv.next2323.1, %for.inc171.1 ]
  %listltidx.02208 = phi i32 [ 0, %for.body156.lr.ph.new ], [ %listltidx.1.1, %for.inc171.1 ]
  %niter2632 = phi i64 [ 0, %for.body156.lr.ph.new ], [ %niter2632.next.1, %for.inc171.1 ]
  %arrayidx159 = getelementptr inbounds ptr, ptr %.pre2407, i64 %indvars.iv2322
  %93 = load ptr, ptr %arrayidx159, align 8
  %view_id160 = getelementptr inbounds i8, ptr %93, i64 72
  %94 = load i32, ptr %view_id160, align 8
  %cmp161 = icmp eq i32 %94, %3
  br i1 %cmp161, label %if.then163, label %for.inc171

if.then163:                                       ; preds = %for.body156
  %inc167 = add nsw i32 %listltidx.02208, 1
  %idxprom168 = sext i32 %listltidx.02208 to i64
  %arrayidx169 = getelementptr inbounds ptr, ptr %call112, i64 %idxprom168
  store ptr %93, ptr %arrayidx169, align 8
  br label %for.inc171

for.inc171:                                       ; preds = %for.body156, %if.then163
  %listltidx.1 = phi i32 [ %inc167, %if.then163 ], [ %listltidx.02208, %for.body156 ]
  %indvars.iv.next2323 = or disjoint i64 %indvars.iv2322, 1
  %arrayidx159.1 = getelementptr inbounds ptr, ptr %.pre2407, i64 %indvars.iv.next2323
  %95 = load ptr, ptr %arrayidx159.1, align 8
  %view_id160.1 = getelementptr inbounds i8, ptr %95, i64 72
  %96 = load i32, ptr %view_id160.1, align 8
  %cmp161.1 = icmp eq i32 %96, %3
  br i1 %cmp161.1, label %if.then163.1, label %for.inc171.1

if.then163.1:                                     ; preds = %for.inc171
  %inc167.1 = add nsw i32 %listltidx.1, 1
  %idxprom168.1 = sext i32 %listltidx.1 to i64
  %arrayidx169.1 = getelementptr inbounds ptr, ptr %call112, i64 %idxprom168.1
  store ptr %95, ptr %arrayidx169.1, align 8
  br label %for.inc171.1

for.inc171.1:                                     ; preds = %if.then163.1, %for.inc171
  %listltidx.1.1 = phi i32 [ %inc167.1, %if.then163.1 ], [ %listltidx.1, %for.inc171 ]
  %indvars.iv.next2323.1 = add nuw nsw i64 %indvars.iv2322, 2
  %niter2632.next.1 = add i64 %niter2632, 2
  %niter2632.ncmp.1.not = icmp eq i64 %niter2632.next.1, %unroll_iter2631
  br i1 %niter2632.ncmp.1.not, label %for.end173.loopexit.unr-lcssa, label %for.body156

for.end173.loopexit.unr-lcssa:                    ; preds = %for.inc171.1, %for.body156.lr.ph
  %listltidx.1.lcssa.ph = phi i32 [ poison, %for.body156.lr.ph ], [ %listltidx.1.1, %for.inc171.1 ]
  %indvars.iv2322.unr = phi i64 [ 0, %for.body156.lr.ph ], [ %indvars.iv.next2323.1, %for.inc171.1 ]
  %listltidx.02208.unr = phi i32 [ 0, %for.body156.lr.ph ], [ %listltidx.1.1, %for.inc171.1 ]
  %lcmp.mod2629.not = icmp eq i64 %xtraiter2628, 0
  br i1 %lcmp.mod2629.not, label %for.end173, label %for.body156.epil

for.body156.epil:                                 ; preds = %for.end173.loopexit.unr-lcssa
  %arrayidx159.epil = getelementptr inbounds ptr, ptr %.pre2407, i64 %indvars.iv2322.unr
  %97 = load ptr, ptr %arrayidx159.epil, align 8
  %view_id160.epil = getelementptr inbounds i8, ptr %97, i64 72
  %98 = load i32, ptr %view_id160.epil, align 8
  %cmp161.epil = icmp eq i32 %98, %3
  br i1 %cmp161.epil, label %if.then163.epil, label %for.end173

if.then163.epil:                                  ; preds = %for.body156.epil
  %inc167.epil = add nsw i32 %listltidx.02208.unr, 1
  %idxprom168.epil = sext i32 %listltidx.02208.unr to i64
  %arrayidx169.epil = getelementptr inbounds ptr, ptr %call112, i64 %idxprom168.epil
  store ptr %97, ptr %arrayidx169.epil, align 8
  br label %for.end173

for.end173:                                       ; preds = %for.end173.loopexit.unr-lcssa, %if.then163.epil, %for.body156.epil, %gen_pic_list_from_frame_list.exit
  %listltidx.0.lcssa = phi i32 [ 0, %gen_pic_list_from_frame_list.exit ], [ %listltidx.1.lcssa.ph, %for.end173.loopexit.unr-lcssa ], [ %inc167.epil, %if.then163.epil ], [ %listltidx.02208.unr, %for.body156.epil ]
  %conv174 = sext i32 %listltidx.0.lcssa to i64
  tail call void @qsort(ptr noundef %call112, i64 noundef %conv174, i64 noundef 8, ptr noundef nonnull @compare_fs_by_lt_pic_idx_asc) #20
  %99 = load i32, ptr %structure, align 8
  %100 = load ptr, ptr %listX148, align 8
  %cmp.i1286 = icmp eq i32 %99, 1
  br i1 %cmp.i1286, label %while.cond.preheader.i1347, label %if.end48.i1287

while.cond.preheader.i1347:                       ; preds = %for.end173
  %cmp2187.i1348 = icmp sgt i32 %listltidx.0.lcssa, 0
  br i1 %cmp2187.i1348, label %for.cond.preheader.i1349, label %gen_pic_list_from_frame_list.exit1402

for.cond.preheader.i1349:                         ; preds = %while.cond.preheader.i1347, %for.end47.i1356
  %bot_idx.0190.i1350 = phi i32 [ %bot_idx.2.i1357, %for.end47.i1356 ], [ 0, %while.cond.preheader.i1347 ]
  %top_idx.0189.i1351 = phi i32 [ %top_idx.2.i1354, %for.end47.i1356 ], [ 0, %while.cond.preheader.i1347 ]
  %cmp4182.i1352 = icmp slt i32 %top_idx.0189.i1351, %listltidx.0.lcssa
  br i1 %cmp4182.i1352, label %for.body.preheader.i1381, label %for.end.i1353

for.body.preheader.i1381:                         ; preds = %for.cond.preheader.i1349
  %101 = sext i32 %top_idx.0189.i1351 to i64
  br label %for.body.i1382

for.body.i1382:                                   ; preds = %for.inc.i1398, %for.body.preheader.i1381
  %indvars.iv.i1383 = phi i64 [ %101, %for.body.preheader.i1381 ], [ %indvars.iv.next.i1399, %for.inc.i1398 ]
  %arrayidx.i1384 = getelementptr inbounds ptr, ptr %call112, i64 %indvars.iv.i1383
  %102 = load ptr, ptr %arrayidx.i1384, align 8
  %103 = load i32, ptr %102, align 8
  %and.i1385 = and i32 %103, 1
  %tobool5.not.i1386 = icmp eq i32 %and.i1385, 0
  br i1 %tobool5.not.i1386, label %for.inc.i1398, label %if.then6.i1387

if.then6.i1387:                                   ; preds = %for.body.i1382
  %top_field.i1388 = getelementptr inbounds i8, ptr %102, i64 56
  %104 = load ptr, ptr %top_field.i1388, align 8
  %used_for_reference.i1980 = getelementptr inbounds i8, ptr %104, i64 44
  %105 = load i32, ptr %used_for_reference.i1980, align 4
  %tobool.not.i1981 = icmp eq i32 %105, 0
  br i1 %tobool.not.i1981, label %for.inc.i1398, label %is_long_ref.exit1986

is_long_ref.exit1986:                             ; preds = %if.then6.i1387
  %is_long_term.i1983 = getelementptr inbounds i8, ptr %104, i64 40
  %106 = load i8, ptr %is_long_term.i1983, align 8
  %tobool1.i1984.not = icmp eq i8 %106, 0
  br i1 %tobool1.i1984.not, label %for.inc.i1398, label %if.then10.i1391

if.then10.i1391:                                  ; preds = %is_long_ref.exit1986
  %107 = trunc nsw i64 %indvars.iv.i1383 to i32
  %108 = load i8, ptr %listXsize145, align 1
  %idxprom14.i1394 = sext i8 %108 to i64
  %arrayidx15.i1395 = getelementptr inbounds ptr, ptr %100, i64 %idxprom14.i1394
  store ptr %104, ptr %arrayidx15.i1395, align 8
  %109 = load i8, ptr %listXsize145, align 1
  %inc.i1396 = add i8 %109, 1
  store i8 %inc.i1396, ptr %listXsize145, align 1
  %inc16.i1397 = add nsw i32 %107, 1
  br label %for.end.i1353

for.inc.i1398:                                    ; preds = %if.then6.i1387, %is_long_ref.exit1986, %for.body.i1382
  %indvars.iv.next.i1399 = add nsw i64 %indvars.iv.i1383, 1
  %lftr.wideiv.i1400 = trunc i64 %indvars.iv.next.i1399 to i32
  %exitcond.not.i1401 = icmp eq i32 %listltidx.0.lcssa, %lftr.wideiv.i1400
  br i1 %exitcond.not.i1401, label %for.end.i1353, label %for.body.i1382

for.end.i1353:                                    ; preds = %for.inc.i1398, %if.then10.i1391, %for.cond.preheader.i1349
  %top_idx.2.i1354 = phi i32 [ %inc16.i1397, %if.then10.i1391 ], [ %top_idx.0189.i1351, %for.cond.preheader.i1349 ], [ %listltidx.0.lcssa, %for.inc.i1398 ]
  %cmp21184.i1355 = icmp slt i32 %bot_idx.0190.i1350, %listltidx.0.lcssa
  br i1 %cmp21184.i1355, label %for.body23.preheader.i1360, label %for.end47.i1356

for.body23.preheader.i1360:                       ; preds = %for.end.i1353
  %110 = sext i32 %bot_idx.0190.i1350 to i64
  br label %for.body23.i1361

for.body23.i1361:                                 ; preds = %for.inc45.i1377, %for.body23.preheader.i1360
  %indvars.iv212.i1362 = phi i64 [ %110, %for.body23.preheader.i1360 ], [ %indvars.iv.next213.i1378, %for.inc45.i1377 ]
  %arrayidx25.i1363 = getelementptr inbounds ptr, ptr %call112, i64 %indvars.iv212.i1362
  %111 = load ptr, ptr %arrayidx25.i1363, align 8
  %112 = load i32, ptr %111, align 8
  %and27.i1364 = and i32 %112, 2
  %tobool28.not.i1365 = icmp eq i32 %and27.i1364, 0
  br i1 %tobool28.not.i1365, label %for.inc45.i1377, label %if.then29.i1366

if.then29.i1366:                                  ; preds = %for.body23.i1361
  %bottom_field.i1367 = getelementptr inbounds i8, ptr %111, i64 64
  %113 = load ptr, ptr %bottom_field.i1367, align 8
  %used_for_reference.i1973 = getelementptr inbounds i8, ptr %113, i64 44
  %114 = load i32, ptr %used_for_reference.i1973, align 4
  %tobool.not.i1974 = icmp eq i32 %114, 0
  br i1 %tobool.not.i1974, label %for.inc45.i1377, label %is_long_ref.exit1979

is_long_ref.exit1979:                             ; preds = %if.then29.i1366
  %is_long_term.i1976 = getelementptr inbounds i8, ptr %113, i64 40
  %115 = load i8, ptr %is_long_term.i1976, align 8
  %tobool1.i1977.not = icmp eq i8 %115, 0
  br i1 %tobool1.i1977.not, label %for.inc45.i1377, label %if.then34.i1370

if.then34.i1370:                                  ; preds = %is_long_ref.exit1979
  %116 = trunc nsw i64 %indvars.iv212.i1362 to i32
  %117 = load i8, ptr %listXsize145, align 1
  %idxprom39.i1373 = sext i8 %117 to i64
  %arrayidx40.i1374 = getelementptr inbounds ptr, ptr %100, i64 %idxprom39.i1373
  store ptr %113, ptr %arrayidx40.i1374, align 8
  %118 = load i8, ptr %listXsize145, align 1
  %inc41.i1375 = add i8 %118, 1
  store i8 %inc41.i1375, ptr %listXsize145, align 1
  %inc42.i1376 = add nsw i32 %116, 1
  br label %for.end47.i1356

for.inc45.i1377:                                  ; preds = %if.then29.i1366, %is_long_ref.exit1979, %for.body23.i1361
  %indvars.iv.next213.i1378 = add nsw i64 %indvars.iv212.i1362, 1
  %lftr.wideiv215.i1379 = trunc i64 %indvars.iv.next213.i1378 to i32
  %exitcond216.not.i1380 = icmp eq i32 %listltidx.0.lcssa, %lftr.wideiv215.i1379
  br i1 %exitcond216.not.i1380, label %for.end47.i1356, label %for.body23.i1361

for.end47.i1356:                                  ; preds = %for.inc45.i1377, %if.then34.i1370, %for.end.i1353
  %bot_idx.2.i1357 = phi i32 [ %inc42.i1376, %if.then34.i1370 ], [ %bot_idx.0190.i1350, %for.end.i1353 ], [ %listltidx.0.lcssa, %for.inc45.i1377 ]
  %cmp2.i1358 = icmp slt i32 %top_idx.2.i1354, %listltidx.0.lcssa
  %cmp3.i1359 = icmp slt i32 %bot_idx.2.i1357, %listltidx.0.lcssa
  %119 = select i1 %cmp2.i1358, i1 true, i1 %cmp3.i1359
  br i1 %119, label %for.cond.preheader.i1349, label %if.end48.i1287

if.end48.i1287:                                   ; preds = %for.end47.i1356, %for.end173
  %top_idx.3.i1288 = phi i32 [ 0, %for.end173 ], [ %top_idx.2.i1354, %for.end47.i1356 ]
  %bot_idx.3.i1289 = phi i32 [ 0, %for.end173 ], [ %bot_idx.2.i1357, %for.end47.i1356 ]
  %cmp49.i1290 = icmp eq i32 %99, 2
  br i1 %cmp49.i1290, label %while.cond52.preheader.i1291, label %gen_pic_list_from_frame_list.exit1402

while.cond52.preheader.i1291:                     ; preds = %if.end48.i1287
  %cmp53199.i1292 = icmp slt i32 %top_idx.3.i1288, %listltidx.0.lcssa
  %cmp56200.i1293 = icmp slt i32 %bot_idx.3.i1289, %listltidx.0.lcssa
  %120 = select i1 %cmp53199.i1292, i1 true, i1 %cmp56200.i1293
  br i1 %120, label %for.cond60.preheader.i1294, label %gen_pic_list_from_frame_list.exit1402

for.cond60.preheader.i1294:                       ; preds = %while.cond52.preheader.i1291, %for.end117.i1301
  %bot_idx.4202.i1295 = phi i32 [ %bot_idx.6.i1299, %for.end117.i1301 ], [ %bot_idx.3.i1289, %while.cond52.preheader.i1291 ]
  %top_idx.4201.i1296 = phi i32 [ %top_idx.6.i1302, %for.end117.i1301 ], [ %top_idx.3.i1288, %while.cond52.preheader.i1291 ]
  %cmp61193.i1297 = icmp slt i32 %bot_idx.4202.i1295, %listltidx.0.lcssa
  br i1 %cmp61193.i1297, label %for.body63.preheader.i1326, label %for.end88.i1298

for.body63.preheader.i1326:                       ; preds = %for.cond60.preheader.i1294
  %121 = sext i32 %bot_idx.4202.i1295 to i64
  br label %for.body63.i1327

for.body63.i1327:                                 ; preds = %for.inc86.i1343, %for.body63.preheader.i1326
  %indvars.iv217.i1328 = phi i64 [ %121, %for.body63.preheader.i1326 ], [ %indvars.iv.next218.i1344, %for.inc86.i1343 ]
  %arrayidx65.i1329 = getelementptr inbounds ptr, ptr %call112, i64 %indvars.iv217.i1328
  %122 = load ptr, ptr %arrayidx65.i1329, align 8
  %123 = load i32, ptr %122, align 8
  %and67.i1330 = and i32 %123, 2
  %tobool68.not.i1331 = icmp eq i32 %and67.i1330, 0
  br i1 %tobool68.not.i1331, label %for.inc86.i1343, label %if.then69.i1332

if.then69.i1332:                                  ; preds = %for.body63.i1327
  %bottom_field72.i1333 = getelementptr inbounds i8, ptr %122, i64 64
  %124 = load ptr, ptr %bottom_field72.i1333, align 8
  %used_for_reference.i1966 = getelementptr inbounds i8, ptr %124, i64 44
  %125 = load i32, ptr %used_for_reference.i1966, align 4
  %tobool.not.i1967 = icmp eq i32 %125, 0
  br i1 %tobool.not.i1967, label %for.inc86.i1343, label %is_long_ref.exit1972

is_long_ref.exit1972:                             ; preds = %if.then69.i1332
  %is_long_term.i1969 = getelementptr inbounds i8, ptr %124, i64 40
  %126 = load i8, ptr %is_long_term.i1969, align 8
  %tobool1.i1970.not = icmp eq i8 %126, 0
  br i1 %tobool1.i1970.not, label %for.inc86.i1343, label %if.then75.i1336

if.then75.i1336:                                  ; preds = %is_long_ref.exit1972
  %127 = trunc nsw i64 %indvars.iv217.i1328 to i32
  %128 = load i8, ptr %listXsize145, align 1
  %idxprom80.i1339 = sext i8 %128 to i64
  %arrayidx81.i1340 = getelementptr inbounds ptr, ptr %100, i64 %idxprom80.i1339
  store ptr %124, ptr %arrayidx81.i1340, align 8
  %129 = load i8, ptr %listXsize145, align 1
  %inc82.i1341 = add i8 %129, 1
  store i8 %inc82.i1341, ptr %listXsize145, align 1
  %inc83.i1342 = add nsw i32 %127, 1
  br label %for.end88.i1298

for.inc86.i1343:                                  ; preds = %if.then69.i1332, %is_long_ref.exit1972, %for.body63.i1327
  %indvars.iv.next218.i1344 = add nsw i64 %indvars.iv217.i1328, 1
  %lftr.wideiv220.i1345 = trunc i64 %indvars.iv.next218.i1344 to i32
  %exitcond221.not.i1346 = icmp eq i32 %listltidx.0.lcssa, %lftr.wideiv220.i1345
  br i1 %exitcond221.not.i1346, label %for.end88.i1298, label %for.body63.i1327

for.end88.i1298:                                  ; preds = %for.inc86.i1343, %if.then75.i1336, %for.cond60.preheader.i1294
  %bot_idx.6.i1299 = phi i32 [ %inc83.i1342, %if.then75.i1336 ], [ %bot_idx.4202.i1295, %for.cond60.preheader.i1294 ], [ %listltidx.0.lcssa, %for.inc86.i1343 ]
  %cmp90196.i1300 = icmp slt i32 %top_idx.4201.i1296, %listltidx.0.lcssa
  br i1 %cmp90196.i1300, label %for.body92.preheader.i1305, label %for.end117.i1301

for.body92.preheader.i1305:                       ; preds = %for.end88.i1298
  %130 = sext i32 %top_idx.4201.i1296 to i64
  br label %for.body92.i1306

for.body92.i1306:                                 ; preds = %for.inc115.i1322, %for.body92.preheader.i1305
  %indvars.iv222.i1307 = phi i64 [ %130, %for.body92.preheader.i1305 ], [ %indvars.iv.next223.i1323, %for.inc115.i1322 ]
  %arrayidx94.i1308 = getelementptr inbounds ptr, ptr %call112, i64 %indvars.iv222.i1307
  %131 = load ptr, ptr %arrayidx94.i1308, align 8
  %132 = load i32, ptr %131, align 8
  %and96.i1309 = and i32 %132, 1
  %tobool97.not.i1310 = icmp eq i32 %and96.i1309, 0
  br i1 %tobool97.not.i1310, label %for.inc115.i1322, label %if.then98.i1311

if.then98.i1311:                                  ; preds = %for.body92.i1306
  %top_field101.i1312 = getelementptr inbounds i8, ptr %131, i64 56
  %133 = load ptr, ptr %top_field101.i1312, align 8
  %used_for_reference.i1961 = getelementptr inbounds i8, ptr %133, i64 44
  %134 = load i32, ptr %used_for_reference.i1961, align 4
  %tobool.not.i1962 = icmp eq i32 %134, 0
  br i1 %tobool.not.i1962, label %for.inc115.i1322, label %is_long_ref.exit

is_long_ref.exit:                                 ; preds = %if.then98.i1311
  %is_long_term.i1964 = getelementptr inbounds i8, ptr %133, i64 40
  %135 = load i8, ptr %is_long_term.i1964, align 8
  %tobool1.i.not = icmp eq i8 %135, 0
  br i1 %tobool1.i.not, label %for.inc115.i1322, label %if.then104.i1315

if.then104.i1315:                                 ; preds = %is_long_ref.exit
  %136 = trunc nsw i64 %indvars.iv222.i1307 to i32
  %137 = load i8, ptr %listXsize145, align 1
  %idxprom109.i1318 = sext i8 %137 to i64
  %arrayidx110.i1319 = getelementptr inbounds ptr, ptr %100, i64 %idxprom109.i1318
  store ptr %133, ptr %arrayidx110.i1319, align 8
  %138 = load i8, ptr %listXsize145, align 1
  %inc111.i1320 = add i8 %138, 1
  store i8 %inc111.i1320, ptr %listXsize145, align 1
  %inc112.i1321 = add nsw i32 %136, 1
  br label %for.end117.i1301

for.inc115.i1322:                                 ; preds = %if.then98.i1311, %is_long_ref.exit, %for.body92.i1306
  %indvars.iv.next223.i1323 = add nsw i64 %indvars.iv222.i1307, 1
  %lftr.wideiv225.i1324 = trunc i64 %indvars.iv.next223.i1323 to i32
  %exitcond226.not.i1325 = icmp eq i32 %listltidx.0.lcssa, %lftr.wideiv225.i1324
  br i1 %exitcond226.not.i1325, label %for.end117.i1301, label %for.body92.i1306

for.end117.i1301:                                 ; preds = %for.inc115.i1322, %if.then104.i1315, %for.end88.i1298
  %top_idx.6.i1302 = phi i32 [ %inc112.i1321, %if.then104.i1315 ], [ %top_idx.4201.i1296, %for.end88.i1298 ], [ %listltidx.0.lcssa, %for.inc115.i1322 ]
  %cmp53.i1303 = icmp slt i32 %top_idx.6.i1302, %listltidx.0.lcssa
  %cmp56.i1304 = icmp slt i32 %bot_idx.6.i1299, %listltidx.0.lcssa
  %139 = select i1 %cmp53.i1303, i1 true, i1 %cmp56.i1304
  br i1 %139, label %for.cond60.preheader.i1294, label %gen_pic_list_from_frame_list.exit1402

gen_pic_list_from_frame_list.exit1402:            ; preds = %for.end117.i1301, %while.cond.preheader.i1347, %if.end48.i1287, %while.cond52.preheader.i1291
  tail call void @free(ptr noundef %call) #20
  tail call void @free(ptr noundef %call112) #20
  br label %if.end180

if.end180:                                        ; preds = %gen_pic_list_from_frame_list.exit1402, %for.end90
  %arrayidx182 = getelementptr inbounds i8, ptr %currSlice, i64 257
  store i8 0, ptr %arrayidx182, align 1
  br label %if.end605

if.else183:                                       ; preds = %entry
  %structure184 = getelementptr inbounds i8, ptr %currSlice, i64 184
  %140 = load i32, ptr %structure184, align 8
  %cmp185 = icmp eq i32 %140, 0
  br i1 %cmp185, label %for.cond188.preheader, label %if.else427

for.cond188.preheader:                            ; preds = %if.else183
  %ref_frames_in_buffer189 = getelementptr inbounds i8, ptr %1, i64 48
  %141 = load i32, ptr %ref_frames_in_buffer189, align 8
  %cmp1902235.not = icmp eq i32 %141, 0
  br i1 %cmp1902235.not, label %for.end243, label %for.body192.lr.ph

for.body192.lr.ph:                                ; preds = %for.cond188.preheader
  %fs_ref193 = getelementptr inbounds i8, ptr %1, i64 24
  %framepoc = getelementptr inbounds i8, ptr %currSlice, i64 76
  %listX233 = getelementptr inbounds i8, ptr %currSlice, i64 264
  br label %for.body192

for.body192:                                      ; preds = %for.body192.lr.ph, %for.inc241
  %142 = phi i32 [ %141, %for.body192.lr.ph ], [ %153, %for.inc241 ]
  %indvars.iv2349 = phi i64 [ 0, %for.body192.lr.ph ], [ %indvars.iv.next2350, %for.inc241 ]
  %list0idx.62236 = phi i32 [ 0, %for.body192.lr.ph ], [ %list0idx.7, %for.inc241 ]
  %143 = load ptr, ptr %fs_ref193, align 8
  %arrayidx195 = getelementptr inbounds ptr, ptr %143, i64 %indvars.iv2349
  %144 = load ptr, ptr %arrayidx195, align 8
  %145 = load i32, ptr %144, align 8
  %cmp197 = icmp eq i32 %145, 3
  br i1 %cmp197, label %if.then199, label %for.inc241

if.then199:                                       ; preds = %for.body192
  %frame203 = getelementptr inbounds i8, ptr %144, i64 48
  %146 = load ptr, ptr %frame203, align 8
  %used_for_reference204 = getelementptr inbounds i8, ptr %146, i64 44
  %147 = load i32, ptr %used_for_reference204, align 4
  %tobool205.not = icmp eq i32 %147, 0
  br i1 %tobool205.not, label %for.inc241, label %land.lhs.true206

land.lhs.true206:                                 ; preds = %if.then199
  %is_long_term211 = getelementptr inbounds i8, ptr %146, i64 40
  %148 = load i8, ptr %is_long_term211, align 8
  %tobool212.not = icmp eq i8 %148, 0
  br i1 %tobool212.not, label %land.lhs.true213, label %for.inc241

land.lhs.true213:                                 ; preds = %land.lhs.true206
  %view_id218 = getelementptr inbounds i8, ptr %146, i64 344
  %149 = load i32, ptr %view_id218, align 8
  %cmp219 = icmp eq i32 %149, %3
  br i1 %cmp219, label %if.then221, label %for.inc241

if.then221:                                       ; preds = %land.lhs.true213
  %150 = load i32, ptr %framepoc, align 4
  %poc = getelementptr inbounds i8, ptr %146, i64 4
  %151 = load i32, ptr %poc, align 4
  %cmp226.not = icmp slt i32 %150, %151
  br i1 %cmp226.not, label %for.inc241, label %if.then228

if.then228:                                       ; preds = %if.then221
  %152 = load ptr, ptr %listX233, align 8
  %inc235 = add nsw i32 %list0idx.62236, 1
  %idxprom236 = sext i32 %list0idx.62236 to i64
  %arrayidx237 = getelementptr inbounds ptr, ptr %152, i64 %idxprom236
  store ptr %146, ptr %arrayidx237, align 8
  %.pre2416 = load i32, ptr %ref_frames_in_buffer189, align 8
  br label %for.inc241

for.inc241:                                       ; preds = %for.body192, %if.then221, %if.then228, %land.lhs.true213, %land.lhs.true206, %if.then199
  %153 = phi i32 [ %142, %land.lhs.true206 ], [ %.pre2416, %if.then228 ], [ %142, %if.then221 ], [ %142, %land.lhs.true213 ], [ %142, %if.then199 ], [ %142, %for.body192 ]
  %list0idx.7 = phi i32 [ %list0idx.62236, %land.lhs.true206 ], [ %inc235, %if.then228 ], [ %list0idx.62236, %if.then221 ], [ %list0idx.62236, %land.lhs.true213 ], [ %list0idx.62236, %if.then199 ], [ %list0idx.62236, %for.body192 ]
  %indvars.iv.next2350 = add nuw nsw i64 %indvars.iv2349, 1
  %154 = zext i32 %153 to i64
  %cmp190 = icmp ult i64 %indvars.iv.next2350, %154
  br i1 %cmp190, label %for.body192, label %for.end243

for.end243:                                       ; preds = %for.inc241, %for.cond188.preheader
  %list0idx.6.lcssa = phi i32 [ 0, %for.cond188.preheader ], [ %list0idx.7, %for.inc241 ]
  %listX244 = getelementptr inbounds i8, ptr %currSlice, i64 264
  %155 = load ptr, ptr %listX244, align 8
  %conv246 = sext i32 %list0idx.6.lcssa to i64
  tail call void @qsort(ptr noundef %155, i64 noundef %conv246, i64 noundef 8, ptr noundef nonnull @compare_pic_by_poc_desc) #20
  %156 = load i32, ptr %ref_frames_in_buffer189, align 8
  %cmp2492239.not = icmp eq i32 %156, 0
  br i1 %cmp2492239.not, label %for.end304, label %for.body251.lr.ph

for.body251.lr.ph:                                ; preds = %for.end243
  %fs_ref252 = getelementptr inbounds i8, ptr %1, i64 24
  %framepoc281 = getelementptr inbounds i8, ptr %currSlice, i64 76
  br label %for.body251

for.body251:                                      ; preds = %for.body251.lr.ph, %for.inc302
  %157 = phi i32 [ %156, %for.body251.lr.ph ], [ %168, %for.inc302 ]
  %indvars.iv2352 = phi i64 [ 0, %for.body251.lr.ph ], [ %indvars.iv.next2353, %for.inc302 ]
  %list0idx.82240 = phi i32 [ %list0idx.6.lcssa, %for.body251.lr.ph ], [ %list0idx.9, %for.inc302 ]
  %158 = load ptr, ptr %fs_ref252, align 8
  %arrayidx254 = getelementptr inbounds ptr, ptr %158, i64 %indvars.iv2352
  %159 = load ptr, ptr %arrayidx254, align 8
  %160 = load i32, ptr %159, align 8
  %cmp256 = icmp eq i32 %160, 3
  br i1 %cmp256, label %if.then258, label %for.inc302

if.then258:                                       ; preds = %for.body251
  %frame262 = getelementptr inbounds i8, ptr %159, i64 48
  %161 = load ptr, ptr %frame262, align 8
  %used_for_reference263 = getelementptr inbounds i8, ptr %161, i64 44
  %162 = load i32, ptr %used_for_reference263, align 4
  %tobool264.not = icmp eq i32 %162, 0
  br i1 %tobool264.not, label %for.inc302, label %land.lhs.true265

land.lhs.true265:                                 ; preds = %if.then258
  %is_long_term270 = getelementptr inbounds i8, ptr %161, i64 40
  %163 = load i8, ptr %is_long_term270, align 8
  %tobool271.not = icmp eq i8 %163, 0
  br i1 %tobool271.not, label %land.lhs.true272, label %for.inc302

land.lhs.true272:                                 ; preds = %land.lhs.true265
  %view_id277 = getelementptr inbounds i8, ptr %161, i64 344
  %164 = load i32, ptr %view_id277, align 8
  %cmp278 = icmp eq i32 %164, %3
  br i1 %cmp278, label %if.then280, label %for.inc302

if.then280:                                       ; preds = %land.lhs.true272
  %165 = load i32, ptr %framepoc281, align 4
  %poc286 = getelementptr inbounds i8, ptr %161, i64 4
  %166 = load i32, ptr %poc286, align 4
  %cmp287 = icmp slt i32 %165, %166
  br i1 %cmp287, label %if.then289, label %for.inc302

if.then289:                                       ; preds = %if.then280
  %167 = load ptr, ptr %listX244, align 8
  %inc296 = add nsw i32 %list0idx.82240, 1
  %idxprom297 = sext i32 %list0idx.82240 to i64
  %arrayidx298 = getelementptr inbounds ptr, ptr %167, i64 %idxprom297
  store ptr %161, ptr %arrayidx298, align 8
  %.pre2417 = load i32, ptr %ref_frames_in_buffer189, align 8
  br label %for.inc302

for.inc302:                                       ; preds = %for.body251, %if.then280, %if.then289, %land.lhs.true272, %land.lhs.true265, %if.then258
  %168 = phi i32 [ %157, %land.lhs.true265 ], [ %.pre2417, %if.then289 ], [ %157, %if.then280 ], [ %157, %land.lhs.true272 ], [ %157, %if.then258 ], [ %157, %for.body251 ]
  %list0idx.9 = phi i32 [ %list0idx.82240, %land.lhs.true265 ], [ %inc296, %if.then289 ], [ %list0idx.82240, %if.then280 ], [ %list0idx.82240, %land.lhs.true272 ], [ %list0idx.82240, %if.then258 ], [ %list0idx.82240, %for.body251 ]
  %indvars.iv.next2353 = add nuw nsw i64 %indvars.iv2352, 1
  %169 = zext i32 %168 to i64
  %cmp249 = icmp ult i64 %indvars.iv.next2353, %169
  br i1 %cmp249, label %for.body251, label %for.end304

for.end304:                                       ; preds = %for.inc302, %for.end243
  %list0idx.8.lcssa = phi i32 [ %list0idx.6.lcssa, %for.end243 ], [ %list0idx.9, %for.inc302 ]
  %170 = load ptr, ptr %listX244, align 8
  %arrayidx308 = getelementptr inbounds ptr, ptr %170, i64 %conv246
  %sub309 = sub nsw i32 %list0idx.8.lcssa, %list0idx.6.lcssa
  %conv310 = sext i32 %sub309 to i64
  tail call void @qsort(ptr noundef %arrayidx308, i64 noundef %conv310, i64 noundef 8, ptr noundef nonnull @compare_pic_by_poc_asc) #20
  %cmp3122243 = icmp sgt i32 %list0idx.6.lcssa, 0
  br i1 %cmp3122243, label %for.body314.lr.ph, label %for.cond327.preheader

for.body314.lr.ph:                                ; preds = %for.end304
  %arrayidx320 = getelementptr inbounds i8, ptr %currSlice, i64 272
  %wide.trip.count2360 = zext nneg i32 %list0idx.6.lcssa to i64
  %xtraiter2638 = and i64 %wide.trip.count2360, 3
  %171 = icmp ult i32 %list0idx.6.lcssa, 4
  br i1 %171, label %for.cond327.preheader.loopexit.unr-lcssa, label %for.body314.lr.ph.new

for.body314.lr.ph.new:                            ; preds = %for.body314.lr.ph
  %unroll_iter2640 = and i64 %wide.trip.count2360, 2147483644
  br label %for.body314

for.cond327.preheader.loopexit.unr-lcssa:         ; preds = %for.body314, %for.body314.lr.ph
  %indvars.iv2355.unr = phi i64 [ 0, %for.body314.lr.ph ], [ %indvars.iv.next2356.3, %for.body314 ]
  %lcmp.mod2639.not = icmp eq i64 %xtraiter2638, 0
  br i1 %lcmp.mod2639.not, label %for.cond327.preheader, label %for.body314.epil

for.body314.epil:                                 ; preds = %for.cond327.preheader.loopexit.unr-lcssa, %for.body314.epil
  %indvars.iv2355.epil = phi i64 [ %indvars.iv.next2356.epil, %for.body314.epil ], [ %indvars.iv2355.unr, %for.cond327.preheader.loopexit.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %for.body314.epil ], [ 0, %for.cond327.preheader.loopexit.unr-lcssa ]
  %172 = load ptr, ptr %listX244, align 8
  %arrayidx318.epil = getelementptr inbounds ptr, ptr %172, i64 %indvars.iv2355.epil
  %173 = load ptr, ptr %arrayidx318.epil, align 8
  %174 = load ptr, ptr %arrayidx320, align 8
  %175 = getelementptr ptr, ptr %174, i64 %indvars.iv2355.epil
  %arrayidx323.epil = getelementptr ptr, ptr %175, i64 %conv310
  store ptr %173, ptr %arrayidx323.epil, align 8
  %indvars.iv.next2356.epil = add nuw nsw i64 %indvars.iv2355.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter2638
  br i1 %epil.iter.cmp.not, label %for.cond327.preheader, label %for.body314.epil, !llvm.loop !12

for.cond327.preheader:                            ; preds = %for.cond327.preheader.loopexit.unr-lcssa, %for.body314.epil, %for.end304
  %cmp3282245 = icmp slt i32 %list0idx.6.lcssa, %list0idx.8.lcssa
  br i1 %cmp3282245, label %for.body330.lr.ph, label %for.end342

for.body330.lr.ph:                                ; preds = %for.cond327.preheader
  %arrayidx336 = getelementptr inbounds i8, ptr %currSlice, i64 272
  %wide.trip.count2366 = sext i32 %list0idx.8.lcssa to i64
  %176 = sub nsw i64 %wide.trip.count2366, %conv246
  %xtraiter2642 = and i64 %176, 1
  %lcmp.mod2643.not = icmp eq i64 %xtraiter2642, 0
  br i1 %lcmp.mod2643.not, label %for.body330.prol.loopexit, label %for.body330.prol

for.body330.prol:                                 ; preds = %for.body330.lr.ph
  %177 = load ptr, ptr %listX244, align 8
  %arrayidx334.prol = getelementptr inbounds ptr, ptr %177, i64 %conv246
  %178 = load ptr, ptr %arrayidx334.prol, align 8
  %179 = load ptr, ptr %arrayidx336, align 8
  store ptr %178, ptr %179, align 8
  %indvars.iv.next2363.prol = add nsw i64 %conv246, 1
  br label %for.body330.prol.loopexit

for.body330.prol.loopexit:                        ; preds = %for.body330.prol, %for.body330.lr.ph
  %indvars.iv2362.unr = phi i64 [ %conv246, %for.body330.lr.ph ], [ %indvars.iv.next2363.prol, %for.body330.prol ]
  %180 = add nsw i64 %wide.trip.count2366, -1
  %181 = icmp eq i64 %180, %conv246
  br i1 %181, label %for.end342, label %for.body330

for.body314:                                      ; preds = %for.body314, %for.body314.lr.ph.new
  %indvars.iv2355 = phi i64 [ 0, %for.body314.lr.ph.new ], [ %indvars.iv.next2356.3, %for.body314 ]
  %niter2641 = phi i64 [ 0, %for.body314.lr.ph.new ], [ %niter2641.next.3, %for.body314 ]
  %182 = load ptr, ptr %listX244, align 8
  %arrayidx318 = getelementptr inbounds ptr, ptr %182, i64 %indvars.iv2355
  %183 = load ptr, ptr %arrayidx318, align 8
  %184 = load ptr, ptr %arrayidx320, align 8
  %185 = getelementptr ptr, ptr %184, i64 %indvars.iv2355
  %arrayidx323 = getelementptr ptr, ptr %185, i64 %conv310
  store ptr %183, ptr %arrayidx323, align 8
  %indvars.iv.next2356 = or disjoint i64 %indvars.iv2355, 1
  %186 = load ptr, ptr %listX244, align 8
  %arrayidx318.1 = getelementptr inbounds ptr, ptr %186, i64 %indvars.iv.next2356
  %187 = load ptr, ptr %arrayidx318.1, align 8
  %188 = load ptr, ptr %arrayidx320, align 8
  %189 = getelementptr ptr, ptr %188, i64 %indvars.iv.next2356
  %arrayidx323.1 = getelementptr ptr, ptr %189, i64 %conv310
  store ptr %187, ptr %arrayidx323.1, align 8
  %indvars.iv.next2356.1 = or disjoint i64 %indvars.iv2355, 2
  %190 = load ptr, ptr %listX244, align 8
  %arrayidx318.2 = getelementptr inbounds ptr, ptr %190, i64 %indvars.iv.next2356.1
  %191 = load ptr, ptr %arrayidx318.2, align 8
  %192 = load ptr, ptr %arrayidx320, align 8
  %193 = getelementptr ptr, ptr %192, i64 %indvars.iv.next2356.1
  %arrayidx323.2 = getelementptr ptr, ptr %193, i64 %conv310
  store ptr %191, ptr %arrayidx323.2, align 8
  %indvars.iv.next2356.2 = or disjoint i64 %indvars.iv2355, 3
  %194 = load ptr, ptr %listX244, align 8
  %arrayidx318.3 = getelementptr inbounds ptr, ptr %194, i64 %indvars.iv.next2356.2
  %195 = load ptr, ptr %arrayidx318.3, align 8
  %196 = load ptr, ptr %arrayidx320, align 8
  %197 = getelementptr ptr, ptr %196, i64 %indvars.iv.next2356.2
  %arrayidx323.3 = getelementptr ptr, ptr %197, i64 %conv310
  store ptr %195, ptr %arrayidx323.3, align 8
  %indvars.iv.next2356.3 = add nuw nsw i64 %indvars.iv2355, 4
  %niter2641.next.3 = add i64 %niter2641, 4
  %niter2641.ncmp.3 = icmp eq i64 %niter2641.next.3, %unroll_iter2640
  br i1 %niter2641.ncmp.3, label %for.cond327.preheader.loopexit.unr-lcssa, label %for.body314

for.body330:                                      ; preds = %for.body330.prol.loopexit, %for.body330
  %indvars.iv2362 = phi i64 [ %indvars.iv.next2363.1, %for.body330 ], [ %indvars.iv2362.unr, %for.body330.prol.loopexit ]
  %198 = load ptr, ptr %listX244, align 8
  %arrayidx334 = getelementptr inbounds ptr, ptr %198, i64 %indvars.iv2362
  %199 = load ptr, ptr %arrayidx334, align 8
  %200 = load ptr, ptr %arrayidx336, align 8
  %201 = sub nsw i64 %indvars.iv2362, %conv246
  %arrayidx339 = getelementptr inbounds ptr, ptr %200, i64 %201
  store ptr %199, ptr %arrayidx339, align 8
  %indvars.iv.next2363 = add nsw i64 %indvars.iv2362, 1
  %202 = load ptr, ptr %listX244, align 8
  %arrayidx334.1 = getelementptr inbounds ptr, ptr %202, i64 %indvars.iv.next2363
  %203 = load ptr, ptr %arrayidx334.1, align 8
  %204 = load ptr, ptr %arrayidx336, align 8
  %205 = sub nsw i64 %indvars.iv.next2363, %conv246
  %arrayidx339.1 = getelementptr inbounds ptr, ptr %204, i64 %205
  store ptr %203, ptr %arrayidx339.1, align 8
  %indvars.iv.next2363.1 = add nsw i64 %indvars.iv2362, 2
  %exitcond2367.not.1 = icmp eq i64 %indvars.iv.next2363.1, %wide.trip.count2366
  br i1 %exitcond2367.not.1, label %for.end342, label %for.body330

for.end342:                                       ; preds = %for.body330.prol.loopexit, %for.body330, %for.cond327.preheader
  %conv343 = trunc i32 %list0idx.8.lcssa to i8
  %listXsize344 = getelementptr inbounds i8, ptr %currSlice, i64 256
  %arrayidx345 = getelementptr inbounds i8, ptr %currSlice, i64 257
  store i8 %conv343, ptr %arrayidx345, align 1
  store i8 %conv343, ptr %listXsize344, align 8
  %ltref_frames_in_buffer349 = getelementptr inbounds i8, ptr %1, i64 52
  %206 = load i32, ptr %ltref_frames_in_buffer349, align 4
  %cmp3502247.not = icmp eq i32 %206, 0
  br i1 %cmp3502247.not, label %for.end397, label %for.body352.lr.ph

for.body352.lr.ph:                                ; preds = %for.end342
  %fs_ltref353 = getelementptr inbounds i8, ptr %1, i64 32
  %arrayidx389 = getelementptr inbounds i8, ptr %currSlice, i64 272
  br label %for.body352

for.body352:                                      ; preds = %for.body352.lr.ph, %for.inc395
  %207 = phi i32 [ %206, %for.body352.lr.ph ], [ %219, %for.inc395 ]
  %indvars.iv2368 = phi i64 [ 0, %for.body352.lr.ph ], [ %indvars.iv.next2369, %for.inc395 ]
  %list0idx.102248 = phi i32 [ %list0idx.8.lcssa, %for.body352.lr.ph ], [ %list0idx.11, %for.inc395 ]
  %208 = load ptr, ptr %fs_ltref353, align 8
  %arrayidx355 = getelementptr inbounds ptr, ptr %208, i64 %indvars.iv2368
  %209 = load ptr, ptr %arrayidx355, align 8
  %210 = load i32, ptr %209, align 8
  %cmp357 = icmp eq i32 %210, 3
  br i1 %cmp357, label %if.then359, label %for.inc395

if.then359:                                       ; preds = %for.body352
  %frame363 = getelementptr inbounds i8, ptr %209, i64 48
  %211 = load ptr, ptr %frame363, align 8
  %is_long_term364 = getelementptr inbounds i8, ptr %211, i64 40
  %212 = load i8, ptr %is_long_term364, align 8
  %tobool366.not = icmp eq i8 %212, 0
  br i1 %tobool366.not, label %for.inc395, label %land.lhs.true367

land.lhs.true367:                                 ; preds = %if.then359
  %view_id372 = getelementptr inbounds i8, ptr %211, i64 344
  %213 = load i32, ptr %view_id372, align 8
  %cmp373 = icmp eq i32 %213, %3
  br i1 %cmp373, label %if.then375, label %for.inc395

if.then375:                                       ; preds = %land.lhs.true367
  %214 = load ptr, ptr %listX244, align 8
  %idxprom382 = sext i32 %list0idx.102248 to i64
  %arrayidx383 = getelementptr inbounds ptr, ptr %214, i64 %idxprom382
  store ptr %211, ptr %arrayidx383, align 8
  %215 = load ptr, ptr %fs_ltref353, align 8
  %arrayidx386 = getelementptr inbounds ptr, ptr %215, i64 %indvars.iv2368
  %216 = load ptr, ptr %arrayidx386, align 8
  %frame387 = getelementptr inbounds i8, ptr %216, i64 48
  %217 = load ptr, ptr %frame387, align 8
  %218 = load ptr, ptr %arrayidx389, align 8
  %inc390 = add nsw i32 %list0idx.102248, 1
  %arrayidx392 = getelementptr inbounds ptr, ptr %218, i64 %idxprom382
  store ptr %217, ptr %arrayidx392, align 8
  %.pre2418 = load i32, ptr %ltref_frames_in_buffer349, align 4
  br label %for.inc395

for.inc395:                                       ; preds = %for.body352, %if.then375, %land.lhs.true367, %if.then359
  %219 = phi i32 [ %.pre2418, %if.then375 ], [ %207, %land.lhs.true367 ], [ %207, %if.then359 ], [ %207, %for.body352 ]
  %list0idx.11 = phi i32 [ %inc390, %if.then375 ], [ %list0idx.102248, %land.lhs.true367 ], [ %list0idx.102248, %if.then359 ], [ %list0idx.102248, %for.body352 ]
  %indvars.iv.next2369 = add nuw nsw i64 %indvars.iv2368, 1
  %220 = zext i32 %219 to i64
  %cmp350 = icmp ult i64 %indvars.iv.next2369, %220
  br i1 %cmp350, label %for.body352, label %for.end397.loopexit

for.end397.loopexit:                              ; preds = %for.inc395
  %.pre2419 = load i8, ptr %listXsize344, align 8
  %.pre2424 = trunc i32 %list0idx.11 to i8
  br label %for.end397

for.end397:                                       ; preds = %for.end397.loopexit, %for.end342
  %conv422.pre-phi = phi i8 [ %.pre2424, %for.end397.loopexit ], [ %conv343, %for.end342 ]
  %221 = phi i8 [ %.pre2419, %for.end397.loopexit ], [ %conv343, %for.end342 ]
  %list0idx.10.lcssa = phi i32 [ %list0idx.11, %for.end397.loopexit ], [ %list0idx.8.lcssa, %for.end342 ]
  %222 = load ptr, ptr %listX244, align 8
  %idxprom403 = sext i8 %221 to i64
  %arrayidx404 = getelementptr inbounds ptr, ptr %222, i64 %idxprom403
  %conv407 = sext i8 %221 to i32
  %sub408 = sub nsw i32 %list0idx.10.lcssa, %conv407
  %conv409 = sext i32 %sub408 to i64
  tail call void @qsort(ptr noundef %arrayidx404, i64 noundef %conv409, i64 noundef 8, ptr noundef nonnull @compare_pic_by_lt_pic_num_asc) #20
  %arrayidx411 = getelementptr inbounds i8, ptr %currSlice, i64 272
  %223 = load ptr, ptr %arrayidx411, align 8
  %224 = load i8, ptr %listXsize344, align 8
  %idxprom415 = sext i8 %224 to i64
  %arrayidx416 = getelementptr inbounds ptr, ptr %223, i64 %idxprom415
  %conv419 = sext i8 %224 to i32
  %sub420 = sub nsw i32 %list0idx.10.lcssa, %conv419
  %conv421 = sext i32 %sub420 to i64
  tail call void @qsort(ptr noundef %arrayidx416, i64 noundef %conv421, i64 noundef 8, ptr noundef nonnull @compare_pic_by_lt_pic_num_asc) #20
  store i8 %conv422.pre-phi, ptr %arrayidx345, align 1
  store i8 %conv422.pre-phi, ptr %listXsize344, align 8
  br label %if.end605

if.else427:                                       ; preds = %if.else183
  %size428 = getelementptr inbounds i8, ptr %1, i64 40
  %225 = load i32, ptr %size428, align 8
  %conv429 = zext i32 %225 to i64
  %call430 = tail call noalias ptr @calloc(i64 noundef %conv429, i64 noundef 8) #21
  %cmp431 = icmp eq ptr %call430, null
  br i1 %cmp431, label %if.then433, label %if.end434

if.then433:                                       ; preds = %if.else427
  tail call void @no_mem_exit(ptr noundef nonnull @.str.14) #20
  %.pre2411 = load i32, ptr %size428, align 8
  %.pre2425 = zext i32 %.pre2411 to i64
  br label %if.end434

if.end434:                                        ; preds = %if.then433, %if.else427
  %conv436.pre-phi = phi i64 [ %.pre2425, %if.then433 ], [ %conv429, %if.else427 ]
  %call437 = tail call noalias ptr @calloc(i64 noundef %conv436.pre-phi, i64 noundef 8) #21
  %cmp438 = icmp eq ptr %call437, null
  br i1 %cmp438, label %if.then440, label %if.end441

if.then440:                                       ; preds = %if.end434
  tail call void @no_mem_exit(ptr noundef nonnull @.str.17) #20
  %.pre2412 = load i32, ptr %size428, align 8
  %.pre2426 = zext i32 %.pre2412 to i64
  br label %if.end441

if.end441:                                        ; preds = %if.then440, %if.end434
  %conv443.pre-phi = phi i64 [ %.pre2426, %if.then440 ], [ %conv436.pre-phi, %if.end434 ]
  %call444 = tail call noalias ptr @calloc(i64 noundef %conv443.pre-phi, i64 noundef 8) #21
  %cmp445 = icmp eq ptr %call444, null
  br i1 %cmp445, label %if.then447, label %if.end448

if.then447:                                       ; preds = %if.end441
  tail call void @no_mem_exit(ptr noundef nonnull @.str.15) #20
  br label %if.end448

if.end448:                                        ; preds = %if.then447, %if.end441
  %listXsize449 = getelementptr inbounds i8, ptr %currSlice, i64 256
  store i8 0, ptr %listXsize449, align 8
  %arrayidx452 = getelementptr inbounds i8, ptr %currSlice, i64 257
  store i8 1, ptr %arrayidx452, align 1
  %ref_frames_in_buffer454 = getelementptr inbounds i8, ptr %1, i64 48
  %226 = load i32, ptr %ref_frames_in_buffer454, align 8
  %cmp4552219.not = icmp eq i32 %226, 0
  br i1 %cmp4552219.not, label %for.end489, label %for.body457.lr.ph

for.body457.lr.ph:                                ; preds = %if.end448
  %fs_ref458 = getelementptr inbounds i8, ptr %1, i64 24
  %.pre2413 = load ptr, ptr %fs_ref458, align 8
  %227 = zext i32 %226 to i64
  br label %for.body457

for.body457:                                      ; preds = %for.body457.lr.ph, %for.inc487
  %indvars.iv2331 = phi i64 [ 0, %for.body457.lr.ph ], [ %indvars.iv.next2332, %for.inc487 ]
  %list0idx.122220 = phi i32 [ 0, %for.body457.lr.ph ], [ %list0idx.13, %for.inc487 ]
  %arrayidx460 = getelementptr inbounds ptr, ptr %.pre2413, i64 %indvars.iv2331
  %228 = load ptr, ptr %arrayidx460, align 8
  %229 = load i32, ptr %228, align 8
  %tobool462.not = icmp eq i32 %229, 0
  br i1 %tobool462.not, label %for.inc487, label %if.then463

if.then463:                                       ; preds = %for.body457
  %230 = load i32, ptr %ThisPOC, align 8
  %poc468 = getelementptr inbounds i8, ptr %228, i64 40
  %231 = load i32, ptr %poc468, align 8
  %cmp469.not = icmp slt i32 %230, %231
  br i1 %cmp469.not, label %for.inc487, label %land.lhs.true471

land.lhs.true471:                                 ; preds = %if.then463
  %view_id475 = getelementptr inbounds i8, ptr %228, i64 72
  %232 = load i32, ptr %view_id475, align 8
  %cmp476 = icmp eq i32 %232, %3
  br i1 %cmp476, label %if.then478, label %for.inc487

if.then478:                                       ; preds = %land.lhs.true471
  %inc482 = add nsw i32 %list0idx.122220, 1
  %idxprom483 = sext i32 %list0idx.122220 to i64
  %arrayidx484 = getelementptr inbounds ptr, ptr %call430, i64 %idxprom483
  store ptr %228, ptr %arrayidx484, align 8
  br label %for.inc487

for.inc487:                                       ; preds = %for.body457, %if.then478, %land.lhs.true471, %if.then463
  %list0idx.13 = phi i32 [ %inc482, %if.then478 ], [ %list0idx.122220, %land.lhs.true471 ], [ %list0idx.122220, %if.then463 ], [ %list0idx.122220, %for.body457 ]
  %indvars.iv.next2332 = add nuw nsw i64 %indvars.iv2331, 1
  %cmp455 = icmp ult i64 %indvars.iv.next2332, %227
  br i1 %cmp455, label %for.body457, label %for.end489

for.end489:                                       ; preds = %for.inc487, %if.end448
  %list0idx.12.lcssa = phi i32 [ 0, %if.end448 ], [ %list0idx.13, %for.inc487 ]
  %conv490 = sext i32 %list0idx.12.lcssa to i64
  tail call void @qsort(ptr noundef %call430, i64 noundef %conv490, i64 noundef 8, ptr noundef nonnull @compare_fs_by_poc_desc) #20
  %233 = load i32, ptr %ref_frames_in_buffer454, align 8
  %cmp4932223.not = icmp eq i32 %233, 0
  br i1 %cmp4932223.not, label %for.end527, label %for.body495.lr.ph

for.body495.lr.ph:                                ; preds = %for.end489
  %fs_ref496 = getelementptr inbounds i8, ptr %1, i64 24
  %.pre2414 = load ptr, ptr %fs_ref496, align 8
  %234 = zext i32 %233 to i64
  br label %for.body495

for.body495:                                      ; preds = %for.body495.lr.ph, %for.inc525
  %indvars.iv2334 = phi i64 [ 0, %for.body495.lr.ph ], [ %indvars.iv.next2335, %for.inc525 ]
  %list0idx.142224 = phi i32 [ %list0idx.12.lcssa, %for.body495.lr.ph ], [ %list0idx.15, %for.inc525 ]
  %arrayidx498 = getelementptr inbounds ptr, ptr %.pre2414, i64 %indvars.iv2334
  %235 = load ptr, ptr %arrayidx498, align 8
  %236 = load i32, ptr %235, align 8
  %tobool500.not = icmp eq i32 %236, 0
  br i1 %tobool500.not, label %for.inc525, label %if.then501

if.then501:                                       ; preds = %for.body495
  %237 = load i32, ptr %ThisPOC, align 8
  %poc506 = getelementptr inbounds i8, ptr %235, i64 40
  %238 = load i32, ptr %poc506, align 8
  %cmp507 = icmp slt i32 %237, %238
  br i1 %cmp507, label %land.lhs.true509, label %for.inc525

land.lhs.true509:                                 ; preds = %if.then501
  %view_id513 = getelementptr inbounds i8, ptr %235, i64 72
  %239 = load i32, ptr %view_id513, align 8
  %cmp514 = icmp eq i32 %239, %3
  br i1 %cmp514, label %if.then516, label %for.inc525

if.then516:                                       ; preds = %land.lhs.true509
  %inc520 = add nsw i32 %list0idx.142224, 1
  %idxprom521 = sext i32 %list0idx.142224 to i64
  %arrayidx522 = getelementptr inbounds ptr, ptr %call430, i64 %idxprom521
  store ptr %235, ptr %arrayidx522, align 8
  br label %for.inc525

for.inc525:                                       ; preds = %for.body495, %if.then516, %land.lhs.true509, %if.then501
  %list0idx.15 = phi i32 [ %inc520, %if.then516 ], [ %list0idx.142224, %land.lhs.true509 ], [ %list0idx.142224, %if.then501 ], [ %list0idx.142224, %for.body495 ]
  %indvars.iv.next2335 = add nuw nsw i64 %indvars.iv2334, 1
  %cmp493 = icmp ult i64 %indvars.iv.next2335, %234
  br i1 %cmp493, label %for.body495, label %for.end527

for.end527:                                       ; preds = %for.inc525, %for.end489
  %list0idx.14.lcssa = phi i32 [ %list0idx.12.lcssa, %for.end489 ], [ %list0idx.15, %for.inc525 ]
  %arrayidx529 = getelementptr inbounds ptr, ptr %call430, i64 %conv490
  %sub530 = sub nsw i32 %list0idx.14.lcssa, %list0idx.12.lcssa
  %conv531 = sext i32 %sub530 to i64
  tail call void @qsort(ptr noundef %arrayidx529, i64 noundef %conv531, i64 noundef 8, ptr noundef nonnull @compare_fs_by_poc_asc) #20
  %cmp5332227 = icmp sgt i32 %list0idx.12.lcssa, 0
  br i1 %cmp5332227, label %for.body535.preheader, label %for.cond545.preheader

for.body535.preheader:                            ; preds = %for.end527
  %wide.trip.count = zext nneg i32 %list0idx.12.lcssa to i64
  %invariant.gep = getelementptr ptr, ptr %call437, i64 %conv531
  %min.iters.check = icmp ult i32 %list0idx.12.lcssa, 8
  br i1 %min.iters.check, label %for.body535.preheader2609, label %vector.ph

for.body535.preheader2609:                        ; preds = %middle.block, %for.body535.preheader
  %indvars.iv2337.ph = phi i64 [ 0, %for.body535.preheader ], [ %n.vec, %middle.block ]
  br label %for.body535

vector.ph:                                        ; preds = %for.body535.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %240 = getelementptr inbounds ptr, ptr %call430, i64 %index
  %241 = getelementptr inbounds i8, ptr %240, i64 16
  %242 = getelementptr inbounds i8, ptr %240, i64 32
  %243 = getelementptr inbounds i8, ptr %240, i64 48
  %wide.load = load <2 x ptr>, ptr %240, align 8
  %wide.load2540 = load <2 x ptr>, ptr %241, align 8
  %wide.load2541 = load <2 x ptr>, ptr %242, align 8
  %wide.load2542 = load <2 x ptr>, ptr %243, align 8
  %244 = getelementptr ptr, ptr %invariant.gep, i64 %index
  %245 = getelementptr i8, ptr %244, i64 16
  %246 = getelementptr i8, ptr %244, i64 32
  %247 = getelementptr i8, ptr %244, i64 48
  store <2 x ptr> %wide.load, ptr %244, align 8
  store <2 x ptr> %wide.load2540, ptr %245, align 8
  store <2 x ptr> %wide.load2541, ptr %246, align 8
  store <2 x ptr> %wide.load2542, ptr %247, align 8
  %index.next = add nuw i64 %index, 8
  %248 = icmp eq i64 %index.next, %n.vec
  br i1 %248, label %middle.block, label %vector.body, !llvm.loop !13

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %for.cond545.preheader, label %for.body535.preheader2609

for.cond545.preheader:                            ; preds = %for.body535, %middle.block, %for.end527
  %cmp5462229 = icmp slt i32 %list0idx.12.lcssa, %list0idx.14.lcssa
  br i1 %cmp5462229, label %for.body548.preheader, label %for.end556

for.body548.preheader:                            ; preds = %for.cond545.preheader
  %249 = shl nsw i64 %conv490, 3
  %scevgep = getelementptr i8, ptr %call430, i64 %249
  %250 = xor i32 %list0idx.12.lcssa, -1
  %251 = add i32 %list0idx.14.lcssa, %250
  %252 = zext i32 %251 to i64
  %253 = shl nuw nsw i64 %252, 3
  %254 = add nuw nsw i64 %253, 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %call437, ptr noundef nonnull align 8 dereferenceable(1) %scevgep, i64 %254, i1 false)
  br label %for.end556

for.body535:                                      ; preds = %for.body535.preheader2609, %for.body535
  %indvars.iv2337 = phi i64 [ %indvars.iv.next2338, %for.body535 ], [ %indvars.iv2337.ph, %for.body535.preheader2609 ]
  %arrayidx537 = getelementptr inbounds ptr, ptr %call430, i64 %indvars.iv2337
  %255 = load ptr, ptr %arrayidx537, align 8
  %gep = getelementptr ptr, ptr %invariant.gep, i64 %indvars.iv2337
  store ptr %255, ptr %gep, align 8
  %indvars.iv.next2338 = add nuw nsw i64 %indvars.iv2337, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next2338, %wide.trip.count
  br i1 %exitcond.not, label %for.cond545.preheader, label %for.body535, !llvm.loop !14

for.end556:                                       ; preds = %for.body548.preheader, %for.cond545.preheader
  store i8 0, ptr %listXsize449, align 8
  store i8 0, ptr %arrayidx452, align 1
  %256 = load i32, ptr %structure184, align 8
  %listX562 = getelementptr inbounds i8, ptr %currSlice, i64 264
  %257 = load ptr, ptr %listX562, align 8
  %cmp.i1403 = icmp eq i32 %256, 1
  br i1 %cmp.i1403, label %while.cond.preheader.i1464, label %if.end48.i1404

while.cond.preheader.i1464:                       ; preds = %for.end556
  %cmp2187.i1465 = icmp sgt i32 %list0idx.14.lcssa, 0
  br i1 %cmp2187.i1465, label %for.cond.preheader.i1466, label %gen_pic_list_from_frame_list.exit1519

for.cond.preheader.i1466:                         ; preds = %while.cond.preheader.i1464, %for.end47.i1473
  %258 = phi i8 [ %276, %for.end47.i1473 ], [ 0, %while.cond.preheader.i1464 ]
  %bot_idx.0190.i1467 = phi i32 [ %bot_idx.2.i1474, %for.end47.i1473 ], [ 0, %while.cond.preheader.i1464 ]
  %top_idx.0189.i1468 = phi i32 [ %top_idx.2.i1471, %for.end47.i1473 ], [ 0, %while.cond.preheader.i1464 ]
  %cmp4182.i1469 = icmp slt i32 %top_idx.0189.i1468, %list0idx.14.lcssa
  br i1 %cmp4182.i1469, label %for.body.preheader.i1498, label %for.end.i1470

for.body.preheader.i1498:                         ; preds = %for.cond.preheader.i1466
  %259 = sext i32 %top_idx.0189.i1468 to i64
  br label %for.body.i1499

for.body.i1499:                                   ; preds = %for.inc.i1515, %for.body.preheader.i1498
  %indvars.iv.i1500 = phi i64 [ %259, %for.body.preheader.i1498 ], [ %indvars.iv.next.i1516, %for.inc.i1515 ]
  %arrayidx.i1501 = getelementptr inbounds ptr, ptr %call430, i64 %indvars.iv.i1500
  %260 = load ptr, ptr %arrayidx.i1501, align 8
  %261 = load i32, ptr %260, align 8
  %and.i1502 = and i32 %261, 1
  %tobool5.not.i1503 = icmp eq i32 %and.i1502, 0
  br i1 %tobool5.not.i1503, label %for.inc.i1515, label %if.then6.i1504

if.then6.i1504:                                   ; preds = %for.body.i1499
  %top_field.i1505 = getelementptr inbounds i8, ptr %260, i64 56
  %262 = load ptr, ptr %top_field.i1505, align 8
  %used_for_reference.i2008 = getelementptr inbounds i8, ptr %262, i64 44
  %263 = load i32, ptr %used_for_reference.i2008, align 4
  %tobool.not.i2009 = icmp eq i32 %263, 0
  br i1 %tobool.not.i2009, label %for.inc.i1515, label %is_short_ref.exit2014

is_short_ref.exit2014:                            ; preds = %if.then6.i1504
  %is_long_term.i2011 = getelementptr inbounds i8, ptr %262, i64 40
  %264 = load i8, ptr %is_long_term.i2011, align 8
  %tobool1.not.i2012.not = icmp eq i8 %264, 0
  br i1 %tobool1.not.i2012.not, label %if.then10.i1508, label %for.inc.i1515

if.then10.i1508:                                  ; preds = %is_short_ref.exit2014
  %265 = trunc nsw i64 %indvars.iv.i1500 to i32
  %idxprom14.i1511 = sext i8 %258 to i64
  %arrayidx15.i1512 = getelementptr inbounds ptr, ptr %257, i64 %idxprom14.i1511
  store ptr %262, ptr %arrayidx15.i1512, align 8
  %266 = load i8, ptr %listXsize449, align 1
  %inc.i1513 = add i8 %266, 1
  store i8 %inc.i1513, ptr %listXsize449, align 1
  %inc16.i1514 = add nsw i32 %265, 1
  br label %for.end.i1470

for.inc.i1515:                                    ; preds = %if.then6.i1504, %is_short_ref.exit2014, %for.body.i1499
  %indvars.iv.next.i1516 = add nsw i64 %indvars.iv.i1500, 1
  %lftr.wideiv.i1517 = trunc i64 %indvars.iv.next.i1516 to i32
  %exitcond.not.i1518 = icmp eq i32 %list0idx.14.lcssa, %lftr.wideiv.i1517
  br i1 %exitcond.not.i1518, label %for.end.i1470, label %for.body.i1499

for.end.i1470:                                    ; preds = %for.inc.i1515, %if.then10.i1508, %for.cond.preheader.i1466
  %267 = phi i8 [ %inc.i1513, %if.then10.i1508 ], [ %258, %for.cond.preheader.i1466 ], [ %258, %for.inc.i1515 ]
  %top_idx.2.i1471 = phi i32 [ %inc16.i1514, %if.then10.i1508 ], [ %top_idx.0189.i1468, %for.cond.preheader.i1466 ], [ %list0idx.14.lcssa, %for.inc.i1515 ]
  %cmp21184.i1472 = icmp slt i32 %bot_idx.0190.i1467, %list0idx.14.lcssa
  br i1 %cmp21184.i1472, label %for.body23.preheader.i1477, label %for.end47.i1473

for.body23.preheader.i1477:                       ; preds = %for.end.i1470
  %268 = sext i32 %bot_idx.0190.i1467 to i64
  br label %for.body23.i1478

for.body23.i1478:                                 ; preds = %for.inc45.i1494, %for.body23.preheader.i1477
  %indvars.iv212.i1479 = phi i64 [ %268, %for.body23.preheader.i1477 ], [ %indvars.iv.next213.i1495, %for.inc45.i1494 ]
  %arrayidx25.i1480 = getelementptr inbounds ptr, ptr %call430, i64 %indvars.iv212.i1479
  %269 = load ptr, ptr %arrayidx25.i1480, align 8
  %270 = load i32, ptr %269, align 8
  %and27.i1481 = and i32 %270, 2
  %tobool28.not.i1482 = icmp eq i32 %and27.i1481, 0
  br i1 %tobool28.not.i1482, label %for.inc45.i1494, label %if.then29.i1483

if.then29.i1483:                                  ; preds = %for.body23.i1478
  %bottom_field.i1484 = getelementptr inbounds i8, ptr %269, i64 64
  %271 = load ptr, ptr %bottom_field.i1484, align 8
  %used_for_reference.i2001 = getelementptr inbounds i8, ptr %271, i64 44
  %272 = load i32, ptr %used_for_reference.i2001, align 4
  %tobool.not.i2002 = icmp eq i32 %272, 0
  br i1 %tobool.not.i2002, label %for.inc45.i1494, label %is_short_ref.exit2007

is_short_ref.exit2007:                            ; preds = %if.then29.i1483
  %is_long_term.i2004 = getelementptr inbounds i8, ptr %271, i64 40
  %273 = load i8, ptr %is_long_term.i2004, align 8
  %tobool1.not.i2005.not = icmp eq i8 %273, 0
  br i1 %tobool1.not.i2005.not, label %if.then34.i1487, label %for.inc45.i1494

if.then34.i1487:                                  ; preds = %is_short_ref.exit2007
  %274 = trunc nsw i64 %indvars.iv212.i1479 to i32
  %idxprom39.i1490 = sext i8 %267 to i64
  %arrayidx40.i1491 = getelementptr inbounds ptr, ptr %257, i64 %idxprom39.i1490
  store ptr %271, ptr %arrayidx40.i1491, align 8
  %275 = load i8, ptr %listXsize449, align 1
  %inc41.i1492 = add i8 %275, 1
  store i8 %inc41.i1492, ptr %listXsize449, align 1
  %inc42.i1493 = add nsw i32 %274, 1
  br label %for.end47.i1473

for.inc45.i1494:                                  ; preds = %if.then29.i1483, %is_short_ref.exit2007, %for.body23.i1478
  %indvars.iv.next213.i1495 = add nsw i64 %indvars.iv212.i1479, 1
  %lftr.wideiv215.i1496 = trunc i64 %indvars.iv.next213.i1495 to i32
  %exitcond216.not.i1497 = icmp eq i32 %list0idx.14.lcssa, %lftr.wideiv215.i1496
  br i1 %exitcond216.not.i1497, label %for.end47.i1473, label %for.body23.i1478

for.end47.i1473:                                  ; preds = %for.inc45.i1494, %if.then34.i1487, %for.end.i1470
  %276 = phi i8 [ %inc41.i1492, %if.then34.i1487 ], [ %267, %for.end.i1470 ], [ %267, %for.inc45.i1494 ]
  %bot_idx.2.i1474 = phi i32 [ %inc42.i1493, %if.then34.i1487 ], [ %bot_idx.0190.i1467, %for.end.i1470 ], [ %list0idx.14.lcssa, %for.inc45.i1494 ]
  %cmp2.i1475 = icmp slt i32 %top_idx.2.i1471, %list0idx.14.lcssa
  %cmp3.i1476 = icmp slt i32 %bot_idx.2.i1474, %list0idx.14.lcssa
  %277 = select i1 %cmp2.i1475, i1 true, i1 %cmp3.i1476
  br i1 %277, label %for.cond.preheader.i1466, label %if.end48.i1404

if.end48.i1404:                                   ; preds = %for.end47.i1473, %for.end556
  %278 = phi i8 [ 0, %for.end556 ], [ %276, %for.end47.i1473 ]
  %top_idx.3.i1405 = phi i32 [ 0, %for.end556 ], [ %top_idx.2.i1471, %for.end47.i1473 ]
  %bot_idx.3.i1406 = phi i32 [ 0, %for.end556 ], [ %bot_idx.2.i1474, %for.end47.i1473 ]
  %cmp49.i1407 = icmp eq i32 %256, 2
  br i1 %cmp49.i1407, label %while.cond52.preheader.i1408, label %gen_pic_list_from_frame_list.exit1519

while.cond52.preheader.i1408:                     ; preds = %if.end48.i1404
  %cmp53199.i1409 = icmp slt i32 %top_idx.3.i1405, %list0idx.14.lcssa
  %cmp56200.i1410 = icmp slt i32 %bot_idx.3.i1406, %list0idx.14.lcssa
  %279 = select i1 %cmp53199.i1409, i1 true, i1 %cmp56200.i1410
  br i1 %279, label %for.cond60.preheader.i1411, label %gen_pic_list_from_frame_list.exit1519

for.cond60.preheader.i1411:                       ; preds = %while.cond52.preheader.i1408, %for.end117.i1418
  %280 = phi i8 [ %298, %for.end117.i1418 ], [ %278, %while.cond52.preheader.i1408 ]
  %bot_idx.4202.i1412 = phi i32 [ %bot_idx.6.i1416, %for.end117.i1418 ], [ %bot_idx.3.i1406, %while.cond52.preheader.i1408 ]
  %top_idx.4201.i1413 = phi i32 [ %top_idx.6.i1419, %for.end117.i1418 ], [ %top_idx.3.i1405, %while.cond52.preheader.i1408 ]
  %cmp61193.i1414 = icmp slt i32 %bot_idx.4202.i1412, %list0idx.14.lcssa
  br i1 %cmp61193.i1414, label %for.body63.preheader.i1443, label %for.end88.i1415

for.body63.preheader.i1443:                       ; preds = %for.cond60.preheader.i1411
  %281 = sext i32 %bot_idx.4202.i1412 to i64
  br label %for.body63.i1444

for.body63.i1444:                                 ; preds = %for.inc86.i1460, %for.body63.preheader.i1443
  %indvars.iv217.i1445 = phi i64 [ %281, %for.body63.preheader.i1443 ], [ %indvars.iv.next218.i1461, %for.inc86.i1460 ]
  %arrayidx65.i1446 = getelementptr inbounds ptr, ptr %call430, i64 %indvars.iv217.i1445
  %282 = load ptr, ptr %arrayidx65.i1446, align 8
  %283 = load i32, ptr %282, align 8
  %and67.i1447 = and i32 %283, 2
  %tobool68.not.i1448 = icmp eq i32 %and67.i1447, 0
  br i1 %tobool68.not.i1448, label %for.inc86.i1460, label %if.then69.i1449

if.then69.i1449:                                  ; preds = %for.body63.i1444
  %bottom_field72.i1450 = getelementptr inbounds i8, ptr %282, i64 64
  %284 = load ptr, ptr %bottom_field72.i1450, align 8
  %used_for_reference.i1994 = getelementptr inbounds i8, ptr %284, i64 44
  %285 = load i32, ptr %used_for_reference.i1994, align 4
  %tobool.not.i1995 = icmp eq i32 %285, 0
  br i1 %tobool.not.i1995, label %for.inc86.i1460, label %is_short_ref.exit2000

is_short_ref.exit2000:                            ; preds = %if.then69.i1449
  %is_long_term.i1997 = getelementptr inbounds i8, ptr %284, i64 40
  %286 = load i8, ptr %is_long_term.i1997, align 8
  %tobool1.not.i1998.not = icmp eq i8 %286, 0
  br i1 %tobool1.not.i1998.not, label %if.then75.i1453, label %for.inc86.i1460

if.then75.i1453:                                  ; preds = %is_short_ref.exit2000
  %287 = trunc nsw i64 %indvars.iv217.i1445 to i32
  %idxprom80.i1456 = sext i8 %280 to i64
  %arrayidx81.i1457 = getelementptr inbounds ptr, ptr %257, i64 %idxprom80.i1456
  store ptr %284, ptr %arrayidx81.i1457, align 8
  %288 = load i8, ptr %listXsize449, align 1
  %inc82.i1458 = add i8 %288, 1
  store i8 %inc82.i1458, ptr %listXsize449, align 1
  %inc83.i1459 = add nsw i32 %287, 1
  br label %for.end88.i1415

for.inc86.i1460:                                  ; preds = %if.then69.i1449, %is_short_ref.exit2000, %for.body63.i1444
  %indvars.iv.next218.i1461 = add nsw i64 %indvars.iv217.i1445, 1
  %lftr.wideiv220.i1462 = trunc i64 %indvars.iv.next218.i1461 to i32
  %exitcond221.not.i1463 = icmp eq i32 %list0idx.14.lcssa, %lftr.wideiv220.i1462
  br i1 %exitcond221.not.i1463, label %for.end88.i1415, label %for.body63.i1444

for.end88.i1415:                                  ; preds = %for.inc86.i1460, %if.then75.i1453, %for.cond60.preheader.i1411
  %289 = phi i8 [ %inc82.i1458, %if.then75.i1453 ], [ %280, %for.cond60.preheader.i1411 ], [ %280, %for.inc86.i1460 ]
  %bot_idx.6.i1416 = phi i32 [ %inc83.i1459, %if.then75.i1453 ], [ %bot_idx.4202.i1412, %for.cond60.preheader.i1411 ], [ %list0idx.14.lcssa, %for.inc86.i1460 ]
  %cmp90196.i1417 = icmp slt i32 %top_idx.4201.i1413, %list0idx.14.lcssa
  br i1 %cmp90196.i1417, label %for.body92.preheader.i1422, label %for.end117.i1418

for.body92.preheader.i1422:                       ; preds = %for.end88.i1415
  %290 = sext i32 %top_idx.4201.i1413 to i64
  br label %for.body92.i1423

for.body92.i1423:                                 ; preds = %for.inc115.i1439, %for.body92.preheader.i1422
  %indvars.iv222.i1424 = phi i64 [ %290, %for.body92.preheader.i1422 ], [ %indvars.iv.next223.i1440, %for.inc115.i1439 ]
  %arrayidx94.i1425 = getelementptr inbounds ptr, ptr %call430, i64 %indvars.iv222.i1424
  %291 = load ptr, ptr %arrayidx94.i1425, align 8
  %292 = load i32, ptr %291, align 8
  %and96.i1426 = and i32 %292, 1
  %tobool97.not.i1427 = icmp eq i32 %and96.i1426, 0
  br i1 %tobool97.not.i1427, label %for.inc115.i1439, label %if.then98.i1428

if.then98.i1428:                                  ; preds = %for.body92.i1423
  %top_field101.i1429 = getelementptr inbounds i8, ptr %291, i64 56
  %293 = load ptr, ptr %top_field101.i1429, align 8
  %used_for_reference.i1987 = getelementptr inbounds i8, ptr %293, i64 44
  %294 = load i32, ptr %used_for_reference.i1987, align 4
  %tobool.not.i1988 = icmp eq i32 %294, 0
  br i1 %tobool.not.i1988, label %for.inc115.i1439, label %is_short_ref.exit1993

is_short_ref.exit1993:                            ; preds = %if.then98.i1428
  %is_long_term.i1990 = getelementptr inbounds i8, ptr %293, i64 40
  %295 = load i8, ptr %is_long_term.i1990, align 8
  %tobool1.not.i1991.not = icmp eq i8 %295, 0
  br i1 %tobool1.not.i1991.not, label %if.then104.i1432, label %for.inc115.i1439

if.then104.i1432:                                 ; preds = %is_short_ref.exit1993
  %296 = trunc nsw i64 %indvars.iv222.i1424 to i32
  %idxprom109.i1435 = sext i8 %289 to i64
  %arrayidx110.i1436 = getelementptr inbounds ptr, ptr %257, i64 %idxprom109.i1435
  store ptr %293, ptr %arrayidx110.i1436, align 8
  %297 = load i8, ptr %listXsize449, align 1
  %inc111.i1437 = add i8 %297, 1
  store i8 %inc111.i1437, ptr %listXsize449, align 1
  %inc112.i1438 = add nsw i32 %296, 1
  br label %for.end117.i1418

for.inc115.i1439:                                 ; preds = %if.then98.i1428, %is_short_ref.exit1993, %for.body92.i1423
  %indvars.iv.next223.i1440 = add nsw i64 %indvars.iv222.i1424, 1
  %lftr.wideiv225.i1441 = trunc i64 %indvars.iv.next223.i1440 to i32
  %exitcond226.not.i1442 = icmp eq i32 %list0idx.14.lcssa, %lftr.wideiv225.i1441
  br i1 %exitcond226.not.i1442, label %for.end117.i1418, label %for.body92.i1423

for.end117.i1418:                                 ; preds = %for.inc115.i1439, %if.then104.i1432, %for.end88.i1415
  %298 = phi i8 [ %inc111.i1437, %if.then104.i1432 ], [ %289, %for.end88.i1415 ], [ %289, %for.inc115.i1439 ]
  %top_idx.6.i1419 = phi i32 [ %inc112.i1438, %if.then104.i1432 ], [ %top_idx.4201.i1413, %for.end88.i1415 ], [ %list0idx.14.lcssa, %for.inc115.i1439 ]
  %cmp53.i1420 = icmp slt i32 %top_idx.6.i1419, %list0idx.14.lcssa
  %cmp56.i1421 = icmp slt i32 %bot_idx.6.i1416, %list0idx.14.lcssa
  %299 = select i1 %cmp53.i1420, i1 true, i1 %cmp56.i1421
  br i1 %299, label %for.cond60.preheader.i1411, label %gen_pic_list_from_frame_list.exit1519

gen_pic_list_from_frame_list.exit1519:            ; preds = %for.end117.i1418, %while.cond.preheader.i1464, %if.end48.i1404, %while.cond52.preheader.i1408
  %300 = load i32, ptr %structure184, align 8
  %arrayidx568 = getelementptr inbounds i8, ptr %currSlice, i64 272
  %301 = load ptr, ptr %arrayidx568, align 8
  %cmp.i1520 = icmp eq i32 %300, 1
  br i1 %cmp.i1520, label %while.cond.preheader.i1581, label %if.end48.i1521

while.cond.preheader.i1581:                       ; preds = %gen_pic_list_from_frame_list.exit1519
  %cmp2187.i1582 = icmp sgt i32 %list0idx.14.lcssa, 0
  br i1 %cmp2187.i1582, label %for.cond.preheader.i1583, label %gen_pic_list_from_frame_list.exit1636

for.cond.preheader.i1583:                         ; preds = %while.cond.preheader.i1581, %for.end47.i1590
  %bot_idx.0190.i1584 = phi i32 [ %bot_idx.2.i1591, %for.end47.i1590 ], [ 0, %while.cond.preheader.i1581 ]
  %top_idx.0189.i1585 = phi i32 [ %top_idx.2.i1588, %for.end47.i1590 ], [ 0, %while.cond.preheader.i1581 ]
  %cmp4182.i1586 = icmp slt i32 %top_idx.0189.i1585, %list0idx.14.lcssa
  br i1 %cmp4182.i1586, label %for.body.preheader.i1615, label %for.end.i1587

for.body.preheader.i1615:                         ; preds = %for.cond.preheader.i1583
  %302 = sext i32 %top_idx.0189.i1585 to i64
  br label %for.body.i1616

for.body.i1616:                                   ; preds = %for.inc.i1632, %for.body.preheader.i1615
  %indvars.iv.i1617 = phi i64 [ %302, %for.body.preheader.i1615 ], [ %indvars.iv.next.i1633, %for.inc.i1632 ]
  %arrayidx.i1618 = getelementptr inbounds ptr, ptr %call437, i64 %indvars.iv.i1617
  %303 = load ptr, ptr %arrayidx.i1618, align 8
  %304 = load i32, ptr %303, align 8
  %and.i1619 = and i32 %304, 1
  %tobool5.not.i1620 = icmp eq i32 %and.i1619, 0
  br i1 %tobool5.not.i1620, label %for.inc.i1632, label %if.then6.i1621

if.then6.i1621:                                   ; preds = %for.body.i1616
  %top_field.i1622 = getelementptr inbounds i8, ptr %303, i64 56
  %305 = load ptr, ptr %top_field.i1622, align 8
  %used_for_reference.i2036 = getelementptr inbounds i8, ptr %305, i64 44
  %306 = load i32, ptr %used_for_reference.i2036, align 4
  %tobool.not.i2037 = icmp eq i32 %306, 0
  br i1 %tobool.not.i2037, label %for.inc.i1632, label %is_short_ref.exit2042

is_short_ref.exit2042:                            ; preds = %if.then6.i1621
  %is_long_term.i2039 = getelementptr inbounds i8, ptr %305, i64 40
  %307 = load i8, ptr %is_long_term.i2039, align 8
  %tobool1.not.i2040.not = icmp eq i8 %307, 0
  br i1 %tobool1.not.i2040.not, label %if.then10.i1625, label %for.inc.i1632

if.then10.i1625:                                  ; preds = %is_short_ref.exit2042
  %308 = trunc nsw i64 %indvars.iv.i1617 to i32
  %309 = load i8, ptr %arrayidx452, align 1
  %idxprom14.i1628 = sext i8 %309 to i64
  %arrayidx15.i1629 = getelementptr inbounds ptr, ptr %301, i64 %idxprom14.i1628
  store ptr %305, ptr %arrayidx15.i1629, align 8
  %310 = load i8, ptr %arrayidx452, align 1
  %inc.i1630 = add i8 %310, 1
  store i8 %inc.i1630, ptr %arrayidx452, align 1
  %inc16.i1631 = add nsw i32 %308, 1
  br label %for.end.i1587

for.inc.i1632:                                    ; preds = %if.then6.i1621, %is_short_ref.exit2042, %for.body.i1616
  %indvars.iv.next.i1633 = add nsw i64 %indvars.iv.i1617, 1
  %lftr.wideiv.i1634 = trunc i64 %indvars.iv.next.i1633 to i32
  %exitcond.not.i1635 = icmp eq i32 %list0idx.14.lcssa, %lftr.wideiv.i1634
  br i1 %exitcond.not.i1635, label %for.end.i1587, label %for.body.i1616

for.end.i1587:                                    ; preds = %for.inc.i1632, %if.then10.i1625, %for.cond.preheader.i1583
  %top_idx.2.i1588 = phi i32 [ %inc16.i1631, %if.then10.i1625 ], [ %top_idx.0189.i1585, %for.cond.preheader.i1583 ], [ %list0idx.14.lcssa, %for.inc.i1632 ]
  %cmp21184.i1589 = icmp slt i32 %bot_idx.0190.i1584, %list0idx.14.lcssa
  br i1 %cmp21184.i1589, label %for.body23.preheader.i1594, label %for.end47.i1590

for.body23.preheader.i1594:                       ; preds = %for.end.i1587
  %311 = sext i32 %bot_idx.0190.i1584 to i64
  br label %for.body23.i1595

for.body23.i1595:                                 ; preds = %for.inc45.i1611, %for.body23.preheader.i1594
  %indvars.iv212.i1596 = phi i64 [ %311, %for.body23.preheader.i1594 ], [ %indvars.iv.next213.i1612, %for.inc45.i1611 ]
  %arrayidx25.i1597 = getelementptr inbounds ptr, ptr %call437, i64 %indvars.iv212.i1596
  %312 = load ptr, ptr %arrayidx25.i1597, align 8
  %313 = load i32, ptr %312, align 8
  %and27.i1598 = and i32 %313, 2
  %tobool28.not.i1599 = icmp eq i32 %and27.i1598, 0
  br i1 %tobool28.not.i1599, label %for.inc45.i1611, label %if.then29.i1600

if.then29.i1600:                                  ; preds = %for.body23.i1595
  %bottom_field.i1601 = getelementptr inbounds i8, ptr %312, i64 64
  %314 = load ptr, ptr %bottom_field.i1601, align 8
  %used_for_reference.i2029 = getelementptr inbounds i8, ptr %314, i64 44
  %315 = load i32, ptr %used_for_reference.i2029, align 4
  %tobool.not.i2030 = icmp eq i32 %315, 0
  br i1 %tobool.not.i2030, label %for.inc45.i1611, label %is_short_ref.exit2035

is_short_ref.exit2035:                            ; preds = %if.then29.i1600
  %is_long_term.i2032 = getelementptr inbounds i8, ptr %314, i64 40
  %316 = load i8, ptr %is_long_term.i2032, align 8
  %tobool1.not.i2033.not = icmp eq i8 %316, 0
  br i1 %tobool1.not.i2033.not, label %if.then34.i1604, label %for.inc45.i1611

if.then34.i1604:                                  ; preds = %is_short_ref.exit2035
  %317 = trunc nsw i64 %indvars.iv212.i1596 to i32
  %318 = load i8, ptr %arrayidx452, align 1
  %idxprom39.i1607 = sext i8 %318 to i64
  %arrayidx40.i1608 = getelementptr inbounds ptr, ptr %301, i64 %idxprom39.i1607
  store ptr %314, ptr %arrayidx40.i1608, align 8
  %319 = load i8, ptr %arrayidx452, align 1
  %inc41.i1609 = add i8 %319, 1
  store i8 %inc41.i1609, ptr %arrayidx452, align 1
  %inc42.i1610 = add nsw i32 %317, 1
  br label %for.end47.i1590

for.inc45.i1611:                                  ; preds = %if.then29.i1600, %is_short_ref.exit2035, %for.body23.i1595
  %indvars.iv.next213.i1612 = add nsw i64 %indvars.iv212.i1596, 1
  %lftr.wideiv215.i1613 = trunc i64 %indvars.iv.next213.i1612 to i32
  %exitcond216.not.i1614 = icmp eq i32 %list0idx.14.lcssa, %lftr.wideiv215.i1613
  br i1 %exitcond216.not.i1614, label %for.end47.i1590, label %for.body23.i1595

for.end47.i1590:                                  ; preds = %for.inc45.i1611, %if.then34.i1604, %for.end.i1587
  %bot_idx.2.i1591 = phi i32 [ %inc42.i1610, %if.then34.i1604 ], [ %bot_idx.0190.i1584, %for.end.i1587 ], [ %list0idx.14.lcssa, %for.inc45.i1611 ]
  %cmp2.i1592 = icmp slt i32 %top_idx.2.i1588, %list0idx.14.lcssa
  %cmp3.i1593 = icmp slt i32 %bot_idx.2.i1591, %list0idx.14.lcssa
  %320 = select i1 %cmp2.i1592, i1 true, i1 %cmp3.i1593
  br i1 %320, label %for.cond.preheader.i1583, label %if.end48.i1521

if.end48.i1521:                                   ; preds = %for.end47.i1590, %gen_pic_list_from_frame_list.exit1519
  %top_idx.3.i1522 = phi i32 [ 0, %gen_pic_list_from_frame_list.exit1519 ], [ %top_idx.2.i1588, %for.end47.i1590 ]
  %bot_idx.3.i1523 = phi i32 [ 0, %gen_pic_list_from_frame_list.exit1519 ], [ %bot_idx.2.i1591, %for.end47.i1590 ]
  %cmp49.i1524 = icmp eq i32 %300, 2
  br i1 %cmp49.i1524, label %while.cond52.preheader.i1525, label %gen_pic_list_from_frame_list.exit1636

while.cond52.preheader.i1525:                     ; preds = %if.end48.i1521
  %cmp53199.i1526 = icmp slt i32 %top_idx.3.i1522, %list0idx.14.lcssa
  %cmp56200.i1527 = icmp slt i32 %bot_idx.3.i1523, %list0idx.14.lcssa
  %321 = select i1 %cmp53199.i1526, i1 true, i1 %cmp56200.i1527
  br i1 %321, label %for.cond60.preheader.i1528, label %gen_pic_list_from_frame_list.exit1636

for.cond60.preheader.i1528:                       ; preds = %while.cond52.preheader.i1525, %for.end117.i1535
  %bot_idx.4202.i1529 = phi i32 [ %bot_idx.6.i1533, %for.end117.i1535 ], [ %bot_idx.3.i1523, %while.cond52.preheader.i1525 ]
  %top_idx.4201.i1530 = phi i32 [ %top_idx.6.i1536, %for.end117.i1535 ], [ %top_idx.3.i1522, %while.cond52.preheader.i1525 ]
  %cmp61193.i1531 = icmp slt i32 %bot_idx.4202.i1529, %list0idx.14.lcssa
  br i1 %cmp61193.i1531, label %for.body63.preheader.i1560, label %for.end88.i1532

for.body63.preheader.i1560:                       ; preds = %for.cond60.preheader.i1528
  %322 = sext i32 %bot_idx.4202.i1529 to i64
  br label %for.body63.i1561

for.body63.i1561:                                 ; preds = %for.inc86.i1577, %for.body63.preheader.i1560
  %indvars.iv217.i1562 = phi i64 [ %322, %for.body63.preheader.i1560 ], [ %indvars.iv.next218.i1578, %for.inc86.i1577 ]
  %arrayidx65.i1563 = getelementptr inbounds ptr, ptr %call437, i64 %indvars.iv217.i1562
  %323 = load ptr, ptr %arrayidx65.i1563, align 8
  %324 = load i32, ptr %323, align 8
  %and67.i1564 = and i32 %324, 2
  %tobool68.not.i1565 = icmp eq i32 %and67.i1564, 0
  br i1 %tobool68.not.i1565, label %for.inc86.i1577, label %if.then69.i1566

if.then69.i1566:                                  ; preds = %for.body63.i1561
  %bottom_field72.i1567 = getelementptr inbounds i8, ptr %323, i64 64
  %325 = load ptr, ptr %bottom_field72.i1567, align 8
  %used_for_reference.i2022 = getelementptr inbounds i8, ptr %325, i64 44
  %326 = load i32, ptr %used_for_reference.i2022, align 4
  %tobool.not.i2023 = icmp eq i32 %326, 0
  br i1 %tobool.not.i2023, label %for.inc86.i1577, label %is_short_ref.exit2028

is_short_ref.exit2028:                            ; preds = %if.then69.i1566
  %is_long_term.i2025 = getelementptr inbounds i8, ptr %325, i64 40
  %327 = load i8, ptr %is_long_term.i2025, align 8
  %tobool1.not.i2026.not = icmp eq i8 %327, 0
  br i1 %tobool1.not.i2026.not, label %if.then75.i1570, label %for.inc86.i1577

if.then75.i1570:                                  ; preds = %is_short_ref.exit2028
  %328 = trunc nsw i64 %indvars.iv217.i1562 to i32
  %329 = load i8, ptr %arrayidx452, align 1
  %idxprom80.i1573 = sext i8 %329 to i64
  %arrayidx81.i1574 = getelementptr inbounds ptr, ptr %301, i64 %idxprom80.i1573
  store ptr %325, ptr %arrayidx81.i1574, align 8
  %330 = load i8, ptr %arrayidx452, align 1
  %inc82.i1575 = add i8 %330, 1
  store i8 %inc82.i1575, ptr %arrayidx452, align 1
  %inc83.i1576 = add nsw i32 %328, 1
  br label %for.end88.i1532

for.inc86.i1577:                                  ; preds = %if.then69.i1566, %is_short_ref.exit2028, %for.body63.i1561
  %indvars.iv.next218.i1578 = add nsw i64 %indvars.iv217.i1562, 1
  %lftr.wideiv220.i1579 = trunc i64 %indvars.iv.next218.i1578 to i32
  %exitcond221.not.i1580 = icmp eq i32 %list0idx.14.lcssa, %lftr.wideiv220.i1579
  br i1 %exitcond221.not.i1580, label %for.end88.i1532, label %for.body63.i1561

for.end88.i1532:                                  ; preds = %for.inc86.i1577, %if.then75.i1570, %for.cond60.preheader.i1528
  %bot_idx.6.i1533 = phi i32 [ %inc83.i1576, %if.then75.i1570 ], [ %bot_idx.4202.i1529, %for.cond60.preheader.i1528 ], [ %list0idx.14.lcssa, %for.inc86.i1577 ]
  %cmp90196.i1534 = icmp slt i32 %top_idx.4201.i1530, %list0idx.14.lcssa
  br i1 %cmp90196.i1534, label %for.body92.preheader.i1539, label %for.end117.i1535

for.body92.preheader.i1539:                       ; preds = %for.end88.i1532
  %331 = sext i32 %top_idx.4201.i1530 to i64
  br label %for.body92.i1540

for.body92.i1540:                                 ; preds = %for.inc115.i1556, %for.body92.preheader.i1539
  %indvars.iv222.i1541 = phi i64 [ %331, %for.body92.preheader.i1539 ], [ %indvars.iv.next223.i1557, %for.inc115.i1556 ]
  %arrayidx94.i1542 = getelementptr inbounds ptr, ptr %call437, i64 %indvars.iv222.i1541
  %332 = load ptr, ptr %arrayidx94.i1542, align 8
  %333 = load i32, ptr %332, align 8
  %and96.i1543 = and i32 %333, 1
  %tobool97.not.i1544 = icmp eq i32 %and96.i1543, 0
  br i1 %tobool97.not.i1544, label %for.inc115.i1556, label %if.then98.i1545

if.then98.i1545:                                  ; preds = %for.body92.i1540
  %top_field101.i1546 = getelementptr inbounds i8, ptr %332, i64 56
  %334 = load ptr, ptr %top_field101.i1546, align 8
  %used_for_reference.i2015 = getelementptr inbounds i8, ptr %334, i64 44
  %335 = load i32, ptr %used_for_reference.i2015, align 4
  %tobool.not.i2016 = icmp eq i32 %335, 0
  br i1 %tobool.not.i2016, label %for.inc115.i1556, label %is_short_ref.exit2021

is_short_ref.exit2021:                            ; preds = %if.then98.i1545
  %is_long_term.i2018 = getelementptr inbounds i8, ptr %334, i64 40
  %336 = load i8, ptr %is_long_term.i2018, align 8
  %tobool1.not.i2019.not = icmp eq i8 %336, 0
  br i1 %tobool1.not.i2019.not, label %if.then104.i1549, label %for.inc115.i1556

if.then104.i1549:                                 ; preds = %is_short_ref.exit2021
  %337 = trunc nsw i64 %indvars.iv222.i1541 to i32
  %338 = load i8, ptr %arrayidx452, align 1
  %idxprom109.i1552 = sext i8 %338 to i64
  %arrayidx110.i1553 = getelementptr inbounds ptr, ptr %301, i64 %idxprom109.i1552
  store ptr %334, ptr %arrayidx110.i1553, align 8
  %339 = load i8, ptr %arrayidx452, align 1
  %inc111.i1554 = add i8 %339, 1
  store i8 %inc111.i1554, ptr %arrayidx452, align 1
  %inc112.i1555 = add nsw i32 %337, 1
  br label %for.end117.i1535

for.inc115.i1556:                                 ; preds = %if.then98.i1545, %is_short_ref.exit2021, %for.body92.i1540
  %indvars.iv.next223.i1557 = add nsw i64 %indvars.iv222.i1541, 1
  %lftr.wideiv225.i1558 = trunc i64 %indvars.iv.next223.i1557 to i32
  %exitcond226.not.i1559 = icmp eq i32 %list0idx.14.lcssa, %lftr.wideiv225.i1558
  br i1 %exitcond226.not.i1559, label %for.end117.i1535, label %for.body92.i1540

for.end117.i1535:                                 ; preds = %for.inc115.i1556, %if.then104.i1549, %for.end88.i1532
  %top_idx.6.i1536 = phi i32 [ %inc112.i1555, %if.then104.i1549 ], [ %top_idx.4201.i1530, %for.end88.i1532 ], [ %list0idx.14.lcssa, %for.inc115.i1556 ]
  %cmp53.i1537 = icmp slt i32 %top_idx.6.i1536, %list0idx.14.lcssa
  %cmp56.i1538 = icmp slt i32 %bot_idx.6.i1533, %list0idx.14.lcssa
  %340 = select i1 %cmp53.i1537, i1 true, i1 %cmp56.i1538
  br i1 %340, label %for.cond60.preheader.i1528, label %gen_pic_list_from_frame_list.exit1636

gen_pic_list_from_frame_list.exit1636:            ; preds = %for.end117.i1535, %while.cond.preheader.i1581, %if.end48.i1521, %while.cond52.preheader.i1525
  %ltref_frames_in_buffer572 = getelementptr inbounds i8, ptr %1, i64 52
  %341 = load i32, ptr %ltref_frames_in_buffer572, align 4
  %cmp5732231.not = icmp eq i32 %341, 0
  br i1 %cmp5732231.not, label %for.end592, label %for.body575.lr.ph

for.body575.lr.ph:                                ; preds = %gen_pic_list_from_frame_list.exit1636
  %fs_ltref576 = getelementptr inbounds i8, ptr %1, i64 32
  %.pre2415 = load ptr, ptr %fs_ltref576, align 8
  %342 = zext i32 %341 to i64
  %xtraiter2633 = and i64 %342, 1
  %343 = icmp eq i32 %341, 1
  br i1 %343, label %for.end592.loopexit.unr-lcssa, label %for.body575.lr.ph.new

for.body575.lr.ph.new:                            ; preds = %for.body575.lr.ph
  %unroll_iter2636 = and i64 %342, 4294967294
  br label %for.body575

for.body575:                                      ; preds = %for.inc590.1, %for.body575.lr.ph.new
  %indvars.iv2346 = phi i64 [ 0, %for.body575.lr.ph.new ], [ %indvars.iv.next2347.1, %for.inc590.1 ]
  %listltidx.22232 = phi i32 [ 0, %for.body575.lr.ph.new ], [ %listltidx.3.1, %for.inc590.1 ]
  %niter2637 = phi i64 [ 0, %for.body575.lr.ph.new ], [ %niter2637.next.1, %for.inc590.1 ]
  %arrayidx578 = getelementptr inbounds ptr, ptr %.pre2415, i64 %indvars.iv2346
  %344 = load ptr, ptr %arrayidx578, align 8
  %view_id579 = getelementptr inbounds i8, ptr %344, i64 72
  %345 = load i32, ptr %view_id579, align 8
  %cmp580 = icmp eq i32 %345, %3
  br i1 %cmp580, label %if.then582, label %for.inc590

if.then582:                                       ; preds = %for.body575
  %inc586 = add nsw i32 %listltidx.22232, 1
  %idxprom587 = sext i32 %listltidx.22232 to i64
  %arrayidx588 = getelementptr inbounds ptr, ptr %call444, i64 %idxprom587
  store ptr %344, ptr %arrayidx588, align 8
  br label %for.inc590

for.inc590:                                       ; preds = %for.body575, %if.then582
  %listltidx.3 = phi i32 [ %inc586, %if.then582 ], [ %listltidx.22232, %for.body575 ]
  %indvars.iv.next2347 = or disjoint i64 %indvars.iv2346, 1
  %arrayidx578.1 = getelementptr inbounds ptr, ptr %.pre2415, i64 %indvars.iv.next2347
  %346 = load ptr, ptr %arrayidx578.1, align 8
  %view_id579.1 = getelementptr inbounds i8, ptr %346, i64 72
  %347 = load i32, ptr %view_id579.1, align 8
  %cmp580.1 = icmp eq i32 %347, %3
  br i1 %cmp580.1, label %if.then582.1, label %for.inc590.1

if.then582.1:                                     ; preds = %for.inc590
  %inc586.1 = add nsw i32 %listltidx.3, 1
  %idxprom587.1 = sext i32 %listltidx.3 to i64
  %arrayidx588.1 = getelementptr inbounds ptr, ptr %call444, i64 %idxprom587.1
  store ptr %346, ptr %arrayidx588.1, align 8
  br label %for.inc590.1

for.inc590.1:                                     ; preds = %if.then582.1, %for.inc590
  %listltidx.3.1 = phi i32 [ %inc586.1, %if.then582.1 ], [ %listltidx.3, %for.inc590 ]
  %indvars.iv.next2347.1 = add nuw nsw i64 %indvars.iv2346, 2
  %niter2637.next.1 = add i64 %niter2637, 2
  %niter2637.ncmp.1.not = icmp eq i64 %niter2637.next.1, %unroll_iter2636
  br i1 %niter2637.ncmp.1.not, label %for.end592.loopexit.unr-lcssa, label %for.body575

for.end592.loopexit.unr-lcssa:                    ; preds = %for.inc590.1, %for.body575.lr.ph
  %listltidx.3.lcssa.ph = phi i32 [ poison, %for.body575.lr.ph ], [ %listltidx.3.1, %for.inc590.1 ]
  %indvars.iv2346.unr = phi i64 [ 0, %for.body575.lr.ph ], [ %indvars.iv.next2347.1, %for.inc590.1 ]
  %listltidx.22232.unr = phi i32 [ 0, %for.body575.lr.ph ], [ %listltidx.3.1, %for.inc590.1 ]
  %lcmp.mod2634.not = icmp eq i64 %xtraiter2633, 0
  br i1 %lcmp.mod2634.not, label %for.end592, label %for.body575.epil

for.body575.epil:                                 ; preds = %for.end592.loopexit.unr-lcssa
  %arrayidx578.epil = getelementptr inbounds ptr, ptr %.pre2415, i64 %indvars.iv2346.unr
  %348 = load ptr, ptr %arrayidx578.epil, align 8
  %view_id579.epil = getelementptr inbounds i8, ptr %348, i64 72
  %349 = load i32, ptr %view_id579.epil, align 8
  %cmp580.epil = icmp eq i32 %349, %3
  br i1 %cmp580.epil, label %if.then582.epil, label %for.end592

if.then582.epil:                                  ; preds = %for.body575.epil
  %inc586.epil = add nsw i32 %listltidx.22232.unr, 1
  %idxprom587.epil = sext i32 %listltidx.22232.unr to i64
  %arrayidx588.epil = getelementptr inbounds ptr, ptr %call444, i64 %idxprom587.epil
  store ptr %348, ptr %arrayidx588.epil, align 8
  br label %for.end592

for.end592:                                       ; preds = %for.end592.loopexit.unr-lcssa, %if.then582.epil, %for.body575.epil, %gen_pic_list_from_frame_list.exit1636
  %listltidx.2.lcssa = phi i32 [ 0, %gen_pic_list_from_frame_list.exit1636 ], [ %listltidx.3.lcssa.ph, %for.end592.loopexit.unr-lcssa ], [ %inc586.epil, %if.then582.epil ], [ %listltidx.22232.unr, %for.body575.epil ]
  %conv593 = sext i32 %listltidx.2.lcssa to i64
  tail call void @qsort(ptr noundef %call444, i64 noundef %conv593, i64 noundef 8, ptr noundef nonnull @compare_fs_by_lt_pic_idx_asc) #20
  %350 = load i32, ptr %structure184, align 8
  %351 = load ptr, ptr %listX562, align 8
  %cmp.i1637 = icmp eq i32 %350, 1
  br i1 %cmp.i1637, label %while.cond.preheader.i1698, label %if.end48.i1638

while.cond.preheader.i1698:                       ; preds = %for.end592
  %cmp2187.i1699 = icmp sgt i32 %listltidx.2.lcssa, 0
  br i1 %cmp2187.i1699, label %for.cond.preheader.i1700, label %gen_pic_list_from_frame_list.exit1870

for.cond.preheader.i1700:                         ; preds = %while.cond.preheader.i1698, %for.end47.i1707
  %bot_idx.0190.i1701 = phi i32 [ %bot_idx.2.i1708, %for.end47.i1707 ], [ 0, %while.cond.preheader.i1698 ]
  %top_idx.0189.i1702 = phi i32 [ %top_idx.2.i1705, %for.end47.i1707 ], [ 0, %while.cond.preheader.i1698 ]
  %cmp4182.i1703 = icmp slt i32 %top_idx.0189.i1702, %listltidx.2.lcssa
  br i1 %cmp4182.i1703, label %for.body.preheader.i1732, label %for.end.i1704

for.body.preheader.i1732:                         ; preds = %for.cond.preheader.i1700
  %352 = sext i32 %top_idx.0189.i1702 to i64
  br label %for.body.i1733

for.body.i1733:                                   ; preds = %for.inc.i1749, %for.body.preheader.i1732
  %indvars.iv.i1734 = phi i64 [ %352, %for.body.preheader.i1732 ], [ %indvars.iv.next.i1750, %for.inc.i1749 ]
  %arrayidx.i1735 = getelementptr inbounds ptr, ptr %call444, i64 %indvars.iv.i1734
  %353 = load ptr, ptr %arrayidx.i1735, align 8
  %354 = load i32, ptr %353, align 8
  %and.i1736 = and i32 %354, 1
  %tobool5.not.i1737 = icmp eq i32 %and.i1736, 0
  br i1 %tobool5.not.i1737, label %for.inc.i1749, label %if.then6.i1738

if.then6.i1738:                                   ; preds = %for.body.i1733
  %top_field.i1739 = getelementptr inbounds i8, ptr %353, i64 56
  %355 = load ptr, ptr %top_field.i1739, align 8
  %used_for_reference.i2064 = getelementptr inbounds i8, ptr %355, i64 44
  %356 = load i32, ptr %used_for_reference.i2064, align 4
  %tobool.not.i2065 = icmp eq i32 %356, 0
  br i1 %tobool.not.i2065, label %for.inc.i1749, label %is_long_ref.exit2070

is_long_ref.exit2070:                             ; preds = %if.then6.i1738
  %is_long_term.i2067 = getelementptr inbounds i8, ptr %355, i64 40
  %357 = load i8, ptr %is_long_term.i2067, align 8
  %tobool1.i2068.not = icmp eq i8 %357, 0
  br i1 %tobool1.i2068.not, label %for.inc.i1749, label %if.then10.i1742

if.then10.i1742:                                  ; preds = %is_long_ref.exit2070
  %358 = trunc nsw i64 %indvars.iv.i1734 to i32
  %359 = load i8, ptr %listXsize449, align 1
  %idxprom14.i1745 = sext i8 %359 to i64
  %arrayidx15.i1746 = getelementptr inbounds ptr, ptr %351, i64 %idxprom14.i1745
  store ptr %355, ptr %arrayidx15.i1746, align 8
  %360 = load i8, ptr %listXsize449, align 1
  %inc.i1747 = add i8 %360, 1
  store i8 %inc.i1747, ptr %listXsize449, align 1
  %inc16.i1748 = add nsw i32 %358, 1
  br label %for.end.i1704

for.inc.i1749:                                    ; preds = %if.then6.i1738, %is_long_ref.exit2070, %for.body.i1733
  %indvars.iv.next.i1750 = add nsw i64 %indvars.iv.i1734, 1
  %lftr.wideiv.i1751 = trunc i64 %indvars.iv.next.i1750 to i32
  %exitcond.not.i1752 = icmp eq i32 %listltidx.2.lcssa, %lftr.wideiv.i1751
  br i1 %exitcond.not.i1752, label %for.end.i1704, label %for.body.i1733

for.end.i1704:                                    ; preds = %for.inc.i1749, %if.then10.i1742, %for.cond.preheader.i1700
  %top_idx.2.i1705 = phi i32 [ %inc16.i1748, %if.then10.i1742 ], [ %top_idx.0189.i1702, %for.cond.preheader.i1700 ], [ %listltidx.2.lcssa, %for.inc.i1749 ]
  %cmp21184.i1706 = icmp slt i32 %bot_idx.0190.i1701, %listltidx.2.lcssa
  br i1 %cmp21184.i1706, label %for.body23.preheader.i1711, label %for.end47.i1707

for.body23.preheader.i1711:                       ; preds = %for.end.i1704
  %361 = sext i32 %bot_idx.0190.i1701 to i64
  br label %for.body23.i1712

for.body23.i1712:                                 ; preds = %for.inc45.i1728, %for.body23.preheader.i1711
  %indvars.iv212.i1713 = phi i64 [ %361, %for.body23.preheader.i1711 ], [ %indvars.iv.next213.i1729, %for.inc45.i1728 ]
  %arrayidx25.i1714 = getelementptr inbounds ptr, ptr %call444, i64 %indvars.iv212.i1713
  %362 = load ptr, ptr %arrayidx25.i1714, align 8
  %363 = load i32, ptr %362, align 8
  %and27.i1715 = and i32 %363, 2
  %tobool28.not.i1716 = icmp eq i32 %and27.i1715, 0
  br i1 %tobool28.not.i1716, label %for.inc45.i1728, label %if.then29.i1717

if.then29.i1717:                                  ; preds = %for.body23.i1712
  %bottom_field.i1718 = getelementptr inbounds i8, ptr %362, i64 64
  %364 = load ptr, ptr %bottom_field.i1718, align 8
  %used_for_reference.i2057 = getelementptr inbounds i8, ptr %364, i64 44
  %365 = load i32, ptr %used_for_reference.i2057, align 4
  %tobool.not.i2058 = icmp eq i32 %365, 0
  br i1 %tobool.not.i2058, label %for.inc45.i1728, label %is_long_ref.exit2063

is_long_ref.exit2063:                             ; preds = %if.then29.i1717
  %is_long_term.i2060 = getelementptr inbounds i8, ptr %364, i64 40
  %366 = load i8, ptr %is_long_term.i2060, align 8
  %tobool1.i2061.not = icmp eq i8 %366, 0
  br i1 %tobool1.i2061.not, label %for.inc45.i1728, label %if.then34.i1721

if.then34.i1721:                                  ; preds = %is_long_ref.exit2063
  %367 = trunc nsw i64 %indvars.iv212.i1713 to i32
  %368 = load i8, ptr %listXsize449, align 1
  %idxprom39.i1724 = sext i8 %368 to i64
  %arrayidx40.i1725 = getelementptr inbounds ptr, ptr %351, i64 %idxprom39.i1724
  store ptr %364, ptr %arrayidx40.i1725, align 8
  %369 = load i8, ptr %listXsize449, align 1
  %inc41.i1726 = add i8 %369, 1
  store i8 %inc41.i1726, ptr %listXsize449, align 1
  %inc42.i1727 = add nsw i32 %367, 1
  br label %for.end47.i1707

for.inc45.i1728:                                  ; preds = %if.then29.i1717, %is_long_ref.exit2063, %for.body23.i1712
  %indvars.iv.next213.i1729 = add nsw i64 %indvars.iv212.i1713, 1
  %lftr.wideiv215.i1730 = trunc i64 %indvars.iv.next213.i1729 to i32
  %exitcond216.not.i1731 = icmp eq i32 %listltidx.2.lcssa, %lftr.wideiv215.i1730
  br i1 %exitcond216.not.i1731, label %for.end47.i1707, label %for.body23.i1712

for.end47.i1707:                                  ; preds = %for.inc45.i1728, %if.then34.i1721, %for.end.i1704
  %bot_idx.2.i1708 = phi i32 [ %inc42.i1727, %if.then34.i1721 ], [ %bot_idx.0190.i1701, %for.end.i1704 ], [ %listltidx.2.lcssa, %for.inc45.i1728 ]
  %cmp2.i1709 = icmp slt i32 %top_idx.2.i1705, %listltidx.2.lcssa
  %cmp3.i1710 = icmp slt i32 %bot_idx.2.i1708, %listltidx.2.lcssa
  %370 = select i1 %cmp2.i1709, i1 true, i1 %cmp3.i1710
  br i1 %370, label %for.cond.preheader.i1700, label %if.end48.i1638

if.end48.i1638:                                   ; preds = %for.end47.i1707, %for.end592
  %top_idx.3.i1639 = phi i32 [ 0, %for.end592 ], [ %top_idx.2.i1705, %for.end47.i1707 ]
  %bot_idx.3.i1640 = phi i32 [ 0, %for.end592 ], [ %bot_idx.2.i1708, %for.end47.i1707 ]
  %cmp49.i1641 = icmp eq i32 %350, 2
  br i1 %cmp49.i1641, label %while.cond52.preheader.i1642, label %gen_pic_list_from_frame_list.exit1753

while.cond52.preheader.i1642:                     ; preds = %if.end48.i1638
  %cmp53199.i1643 = icmp slt i32 %top_idx.3.i1639, %listltidx.2.lcssa
  %cmp56200.i1644 = icmp slt i32 %bot_idx.3.i1640, %listltidx.2.lcssa
  %371 = select i1 %cmp53199.i1643, i1 true, i1 %cmp56200.i1644
  br i1 %371, label %for.cond60.preheader.i1645, label %gen_pic_list_from_frame_list.exit1753

for.cond60.preheader.i1645:                       ; preds = %while.cond52.preheader.i1642, %for.end117.i1652
  %bot_idx.4202.i1646 = phi i32 [ %bot_idx.6.i1650, %for.end117.i1652 ], [ %bot_idx.3.i1640, %while.cond52.preheader.i1642 ]
  %top_idx.4201.i1647 = phi i32 [ %top_idx.6.i1653, %for.end117.i1652 ], [ %top_idx.3.i1639, %while.cond52.preheader.i1642 ]
  %cmp61193.i1648 = icmp slt i32 %bot_idx.4202.i1646, %listltidx.2.lcssa
  br i1 %cmp61193.i1648, label %for.body63.preheader.i1677, label %for.end88.i1649

for.body63.preheader.i1677:                       ; preds = %for.cond60.preheader.i1645
  %372 = sext i32 %bot_idx.4202.i1646 to i64
  br label %for.body63.i1678

for.body63.i1678:                                 ; preds = %for.inc86.i1694, %for.body63.preheader.i1677
  %indvars.iv217.i1679 = phi i64 [ %372, %for.body63.preheader.i1677 ], [ %indvars.iv.next218.i1695, %for.inc86.i1694 ]
  %arrayidx65.i1680 = getelementptr inbounds ptr, ptr %call444, i64 %indvars.iv217.i1679
  %373 = load ptr, ptr %arrayidx65.i1680, align 8
  %374 = load i32, ptr %373, align 8
  %and67.i1681 = and i32 %374, 2
  %tobool68.not.i1682 = icmp eq i32 %and67.i1681, 0
  br i1 %tobool68.not.i1682, label %for.inc86.i1694, label %if.then69.i1683

if.then69.i1683:                                  ; preds = %for.body63.i1678
  %bottom_field72.i1684 = getelementptr inbounds i8, ptr %373, i64 64
  %375 = load ptr, ptr %bottom_field72.i1684, align 8
  %used_for_reference.i2050 = getelementptr inbounds i8, ptr %375, i64 44
  %376 = load i32, ptr %used_for_reference.i2050, align 4
  %tobool.not.i2051 = icmp eq i32 %376, 0
  br i1 %tobool.not.i2051, label %for.inc86.i1694, label %is_long_ref.exit2056

is_long_ref.exit2056:                             ; preds = %if.then69.i1683
  %is_long_term.i2053 = getelementptr inbounds i8, ptr %375, i64 40
  %377 = load i8, ptr %is_long_term.i2053, align 8
  %tobool1.i2054.not = icmp eq i8 %377, 0
  br i1 %tobool1.i2054.not, label %for.inc86.i1694, label %if.then75.i1687

if.then75.i1687:                                  ; preds = %is_long_ref.exit2056
  %378 = trunc nsw i64 %indvars.iv217.i1679 to i32
  %379 = load i8, ptr %listXsize449, align 1
  %idxprom80.i1690 = sext i8 %379 to i64
  %arrayidx81.i1691 = getelementptr inbounds ptr, ptr %351, i64 %idxprom80.i1690
  store ptr %375, ptr %arrayidx81.i1691, align 8
  %380 = load i8, ptr %listXsize449, align 1
  %inc82.i1692 = add i8 %380, 1
  store i8 %inc82.i1692, ptr %listXsize449, align 1
  %inc83.i1693 = add nsw i32 %378, 1
  br label %for.end88.i1649

for.inc86.i1694:                                  ; preds = %if.then69.i1683, %is_long_ref.exit2056, %for.body63.i1678
  %indvars.iv.next218.i1695 = add nsw i64 %indvars.iv217.i1679, 1
  %lftr.wideiv220.i1696 = trunc i64 %indvars.iv.next218.i1695 to i32
  %exitcond221.not.i1697 = icmp eq i32 %listltidx.2.lcssa, %lftr.wideiv220.i1696
  br i1 %exitcond221.not.i1697, label %for.end88.i1649, label %for.body63.i1678

for.end88.i1649:                                  ; preds = %for.inc86.i1694, %if.then75.i1687, %for.cond60.preheader.i1645
  %bot_idx.6.i1650 = phi i32 [ %inc83.i1693, %if.then75.i1687 ], [ %bot_idx.4202.i1646, %for.cond60.preheader.i1645 ], [ %listltidx.2.lcssa, %for.inc86.i1694 ]
  %cmp90196.i1651 = icmp slt i32 %top_idx.4201.i1647, %listltidx.2.lcssa
  br i1 %cmp90196.i1651, label %for.body92.preheader.i1656, label %for.end117.i1652

for.body92.preheader.i1656:                       ; preds = %for.end88.i1649
  %381 = sext i32 %top_idx.4201.i1647 to i64
  br label %for.body92.i1657

for.body92.i1657:                                 ; preds = %for.inc115.i1673, %for.body92.preheader.i1656
  %indvars.iv222.i1658 = phi i64 [ %381, %for.body92.preheader.i1656 ], [ %indvars.iv.next223.i1674, %for.inc115.i1673 ]
  %arrayidx94.i1659 = getelementptr inbounds ptr, ptr %call444, i64 %indvars.iv222.i1658
  %382 = load ptr, ptr %arrayidx94.i1659, align 8
  %383 = load i32, ptr %382, align 8
  %and96.i1660 = and i32 %383, 1
  %tobool97.not.i1661 = icmp eq i32 %and96.i1660, 0
  br i1 %tobool97.not.i1661, label %for.inc115.i1673, label %if.then98.i1662

if.then98.i1662:                                  ; preds = %for.body92.i1657
  %top_field101.i1663 = getelementptr inbounds i8, ptr %382, i64 56
  %384 = load ptr, ptr %top_field101.i1663, align 8
  %used_for_reference.i2043 = getelementptr inbounds i8, ptr %384, i64 44
  %385 = load i32, ptr %used_for_reference.i2043, align 4
  %tobool.not.i2044 = icmp eq i32 %385, 0
  br i1 %tobool.not.i2044, label %for.inc115.i1673, label %is_long_ref.exit2049

is_long_ref.exit2049:                             ; preds = %if.then98.i1662
  %is_long_term.i2046 = getelementptr inbounds i8, ptr %384, i64 40
  %386 = load i8, ptr %is_long_term.i2046, align 8
  %tobool1.i2047.not = icmp eq i8 %386, 0
  br i1 %tobool1.i2047.not, label %for.inc115.i1673, label %if.then104.i1666

if.then104.i1666:                                 ; preds = %is_long_ref.exit2049
  %387 = trunc nsw i64 %indvars.iv222.i1658 to i32
  %388 = load i8, ptr %listXsize449, align 1
  %idxprom109.i1669 = sext i8 %388 to i64
  %arrayidx110.i1670 = getelementptr inbounds ptr, ptr %351, i64 %idxprom109.i1669
  store ptr %384, ptr %arrayidx110.i1670, align 8
  %389 = load i8, ptr %listXsize449, align 1
  %inc111.i1671 = add i8 %389, 1
  store i8 %inc111.i1671, ptr %listXsize449, align 1
  %inc112.i1672 = add nsw i32 %387, 1
  br label %for.end117.i1652

for.inc115.i1673:                                 ; preds = %if.then98.i1662, %is_long_ref.exit2049, %for.body92.i1657
  %indvars.iv.next223.i1674 = add nsw i64 %indvars.iv222.i1658, 1
  %lftr.wideiv225.i1675 = trunc i64 %indvars.iv.next223.i1674 to i32
  %exitcond226.not.i1676 = icmp eq i32 %listltidx.2.lcssa, %lftr.wideiv225.i1675
  br i1 %exitcond226.not.i1676, label %for.end117.i1652, label %for.body92.i1657

for.end117.i1652:                                 ; preds = %for.inc115.i1673, %if.then104.i1666, %for.end88.i1649
  %top_idx.6.i1653 = phi i32 [ %inc112.i1672, %if.then104.i1666 ], [ %top_idx.4201.i1647, %for.end88.i1649 ], [ %listltidx.2.lcssa, %for.inc115.i1673 ]
  %cmp53.i1654 = icmp slt i32 %top_idx.6.i1653, %listltidx.2.lcssa
  %cmp56.i1655 = icmp slt i32 %bot_idx.6.i1650, %listltidx.2.lcssa
  %390 = select i1 %cmp53.i1654, i1 true, i1 %cmp56.i1655
  br i1 %390, label %for.cond60.preheader.i1645, label %gen_pic_list_from_frame_list.exit1753

gen_pic_list_from_frame_list.exit1753:            ; preds = %for.end117.i1652, %if.end48.i1638, %while.cond52.preheader.i1642
  %.pr = load i32, ptr %structure184, align 8
  %391 = load ptr, ptr %arrayidx568, align 8
  switch i32 %.pr, label %gen_pic_list_from_frame_list.exit1870 [
    i32 1, label %while.cond.preheader.i1815
    i32 2, label %while.cond52.preheader.i1759
  ]

while.cond.preheader.i1815:                       ; preds = %gen_pic_list_from_frame_list.exit1753
  %cmp2187.i1816 = icmp sgt i32 %listltidx.2.lcssa, 0
  br i1 %cmp2187.i1816, label %for.cond.preheader.i1817, label %gen_pic_list_from_frame_list.exit1870

for.cond.preheader.i1817:                         ; preds = %while.cond.preheader.i1815, %for.end47.i1824
  %bot_idx.0190.i1818 = phi i32 [ %bot_idx.2.i1825, %for.end47.i1824 ], [ 0, %while.cond.preheader.i1815 ]
  %top_idx.0189.i1819 = phi i32 [ %top_idx.2.i1822, %for.end47.i1824 ], [ 0, %while.cond.preheader.i1815 ]
  %cmp4182.i1820 = icmp slt i32 %top_idx.0189.i1819, %listltidx.2.lcssa
  br i1 %cmp4182.i1820, label %for.body.preheader.i1849, label %for.end.i1821

for.body.preheader.i1849:                         ; preds = %for.cond.preheader.i1817
  %392 = sext i32 %top_idx.0189.i1819 to i64
  br label %for.body.i1850

for.body.i1850:                                   ; preds = %for.inc.i1866, %for.body.preheader.i1849
  %indvars.iv.i1851 = phi i64 [ %392, %for.body.preheader.i1849 ], [ %indvars.iv.next.i1867, %for.inc.i1866 ]
  %arrayidx.i1852 = getelementptr inbounds ptr, ptr %call444, i64 %indvars.iv.i1851
  %393 = load ptr, ptr %arrayidx.i1852, align 8
  %394 = load i32, ptr %393, align 8
  %and.i1853 = and i32 %394, 1
  %tobool5.not.i1854 = icmp eq i32 %and.i1853, 0
  br i1 %tobool5.not.i1854, label %for.inc.i1866, label %if.then6.i1855

if.then6.i1855:                                   ; preds = %for.body.i1850
  %top_field.i1856 = getelementptr inbounds i8, ptr %393, i64 56
  %395 = load ptr, ptr %top_field.i1856, align 8
  %used_for_reference.i2092 = getelementptr inbounds i8, ptr %395, i64 44
  %396 = load i32, ptr %used_for_reference.i2092, align 4
  %tobool.not.i2093 = icmp eq i32 %396, 0
  br i1 %tobool.not.i2093, label %for.inc.i1866, label %is_long_ref.exit2098

is_long_ref.exit2098:                             ; preds = %if.then6.i1855
  %is_long_term.i2095 = getelementptr inbounds i8, ptr %395, i64 40
  %397 = load i8, ptr %is_long_term.i2095, align 8
  %tobool1.i2096.not = icmp eq i8 %397, 0
  br i1 %tobool1.i2096.not, label %for.inc.i1866, label %if.then10.i1859

if.then10.i1859:                                  ; preds = %is_long_ref.exit2098
  %398 = trunc nsw i64 %indvars.iv.i1851 to i32
  %399 = load i8, ptr %arrayidx452, align 1
  %idxprom14.i1862 = sext i8 %399 to i64
  %arrayidx15.i1863 = getelementptr inbounds ptr, ptr %391, i64 %idxprom14.i1862
  store ptr %395, ptr %arrayidx15.i1863, align 8
  %400 = load i8, ptr %arrayidx452, align 1
  %inc.i1864 = add i8 %400, 1
  store i8 %inc.i1864, ptr %arrayidx452, align 1
  %inc16.i1865 = add nsw i32 %398, 1
  br label %for.end.i1821

for.inc.i1866:                                    ; preds = %if.then6.i1855, %is_long_ref.exit2098, %for.body.i1850
  %indvars.iv.next.i1867 = add nsw i64 %indvars.iv.i1851, 1
  %lftr.wideiv.i1868 = trunc i64 %indvars.iv.next.i1867 to i32
  %exitcond.not.i1869 = icmp eq i32 %listltidx.2.lcssa, %lftr.wideiv.i1868
  br i1 %exitcond.not.i1869, label %for.end.i1821, label %for.body.i1850

for.end.i1821:                                    ; preds = %for.inc.i1866, %if.then10.i1859, %for.cond.preheader.i1817
  %top_idx.2.i1822 = phi i32 [ %inc16.i1865, %if.then10.i1859 ], [ %top_idx.0189.i1819, %for.cond.preheader.i1817 ], [ %listltidx.2.lcssa, %for.inc.i1866 ]
  %cmp21184.i1823 = icmp slt i32 %bot_idx.0190.i1818, %listltidx.2.lcssa
  br i1 %cmp21184.i1823, label %for.body23.preheader.i1828, label %for.end47.i1824

for.body23.preheader.i1828:                       ; preds = %for.end.i1821
  %401 = sext i32 %bot_idx.0190.i1818 to i64
  br label %for.body23.i1829

for.body23.i1829:                                 ; preds = %for.inc45.i1845, %for.body23.preheader.i1828
  %indvars.iv212.i1830 = phi i64 [ %401, %for.body23.preheader.i1828 ], [ %indvars.iv.next213.i1846, %for.inc45.i1845 ]
  %arrayidx25.i1831 = getelementptr inbounds ptr, ptr %call444, i64 %indvars.iv212.i1830
  %402 = load ptr, ptr %arrayidx25.i1831, align 8
  %403 = load i32, ptr %402, align 8
  %and27.i1832 = and i32 %403, 2
  %tobool28.not.i1833 = icmp eq i32 %and27.i1832, 0
  br i1 %tobool28.not.i1833, label %for.inc45.i1845, label %if.then29.i1834

if.then29.i1834:                                  ; preds = %for.body23.i1829
  %bottom_field.i1835 = getelementptr inbounds i8, ptr %402, i64 64
  %404 = load ptr, ptr %bottom_field.i1835, align 8
  %used_for_reference.i2085 = getelementptr inbounds i8, ptr %404, i64 44
  %405 = load i32, ptr %used_for_reference.i2085, align 4
  %tobool.not.i2086 = icmp eq i32 %405, 0
  br i1 %tobool.not.i2086, label %for.inc45.i1845, label %is_long_ref.exit2091

is_long_ref.exit2091:                             ; preds = %if.then29.i1834
  %is_long_term.i2088 = getelementptr inbounds i8, ptr %404, i64 40
  %406 = load i8, ptr %is_long_term.i2088, align 8
  %tobool1.i2089.not = icmp eq i8 %406, 0
  br i1 %tobool1.i2089.not, label %for.inc45.i1845, label %if.then34.i1838

if.then34.i1838:                                  ; preds = %is_long_ref.exit2091
  %407 = trunc nsw i64 %indvars.iv212.i1830 to i32
  %408 = load i8, ptr %arrayidx452, align 1
  %idxprom39.i1841 = sext i8 %408 to i64
  %arrayidx40.i1842 = getelementptr inbounds ptr, ptr %391, i64 %idxprom39.i1841
  store ptr %404, ptr %arrayidx40.i1842, align 8
  %409 = load i8, ptr %arrayidx452, align 1
  %inc41.i1843 = add i8 %409, 1
  store i8 %inc41.i1843, ptr %arrayidx452, align 1
  %inc42.i1844 = add nsw i32 %407, 1
  br label %for.end47.i1824

for.inc45.i1845:                                  ; preds = %if.then29.i1834, %is_long_ref.exit2091, %for.body23.i1829
  %indvars.iv.next213.i1846 = add nsw i64 %indvars.iv212.i1830, 1
  %lftr.wideiv215.i1847 = trunc i64 %indvars.iv.next213.i1846 to i32
  %exitcond216.not.i1848 = icmp eq i32 %listltidx.2.lcssa, %lftr.wideiv215.i1847
  br i1 %exitcond216.not.i1848, label %for.end47.i1824, label %for.body23.i1829

for.end47.i1824:                                  ; preds = %for.inc45.i1845, %if.then34.i1838, %for.end.i1821
  %bot_idx.2.i1825 = phi i32 [ %inc42.i1844, %if.then34.i1838 ], [ %bot_idx.0190.i1818, %for.end.i1821 ], [ %listltidx.2.lcssa, %for.inc45.i1845 ]
  %cmp2.i1826 = icmp slt i32 %top_idx.2.i1822, %listltidx.2.lcssa
  %cmp3.i1827 = icmp slt i32 %bot_idx.2.i1825, %listltidx.2.lcssa
  %410 = select i1 %cmp2.i1826, i1 true, i1 %cmp3.i1827
  br i1 %410, label %for.cond.preheader.i1817, label %gen_pic_list_from_frame_list.exit1870

while.cond52.preheader.i1759:                     ; preds = %gen_pic_list_from_frame_list.exit1753
  %cmp53199.i1760 = icmp sgt i32 %listltidx.2.lcssa, 0
  br i1 %cmp53199.i1760, label %for.cond60.preheader.i1762, label %gen_pic_list_from_frame_list.exit1870

for.cond60.preheader.i1762:                       ; preds = %while.cond52.preheader.i1759, %for.end117.i1769
  %bot_idx.4202.i1763 = phi i32 [ %bot_idx.6.i1767, %for.end117.i1769 ], [ 0, %while.cond52.preheader.i1759 ]
  %top_idx.4201.i1764 = phi i32 [ %top_idx.6.i1770, %for.end117.i1769 ], [ 0, %while.cond52.preheader.i1759 ]
  %cmp61193.i1765 = icmp slt i32 %bot_idx.4202.i1763, %listltidx.2.lcssa
  br i1 %cmp61193.i1765, label %for.body63.preheader.i1794, label %for.end88.i1766

for.body63.preheader.i1794:                       ; preds = %for.cond60.preheader.i1762
  %411 = sext i32 %bot_idx.4202.i1763 to i64
  br label %for.body63.i1795

for.body63.i1795:                                 ; preds = %for.inc86.i1811, %for.body63.preheader.i1794
  %indvars.iv217.i1796 = phi i64 [ %411, %for.body63.preheader.i1794 ], [ %indvars.iv.next218.i1812, %for.inc86.i1811 ]
  %arrayidx65.i1797 = getelementptr inbounds ptr, ptr %call444, i64 %indvars.iv217.i1796
  %412 = load ptr, ptr %arrayidx65.i1797, align 8
  %413 = load i32, ptr %412, align 8
  %and67.i1798 = and i32 %413, 2
  %tobool68.not.i1799 = icmp eq i32 %and67.i1798, 0
  br i1 %tobool68.not.i1799, label %for.inc86.i1811, label %if.then69.i1800

if.then69.i1800:                                  ; preds = %for.body63.i1795
  %bottom_field72.i1801 = getelementptr inbounds i8, ptr %412, i64 64
  %414 = load ptr, ptr %bottom_field72.i1801, align 8
  %used_for_reference.i2078 = getelementptr inbounds i8, ptr %414, i64 44
  %415 = load i32, ptr %used_for_reference.i2078, align 4
  %tobool.not.i2079 = icmp eq i32 %415, 0
  br i1 %tobool.not.i2079, label %for.inc86.i1811, label %is_long_ref.exit2084

is_long_ref.exit2084:                             ; preds = %if.then69.i1800
  %is_long_term.i2081 = getelementptr inbounds i8, ptr %414, i64 40
  %416 = load i8, ptr %is_long_term.i2081, align 8
  %tobool1.i2082.not = icmp eq i8 %416, 0
  br i1 %tobool1.i2082.not, label %for.inc86.i1811, label %if.then75.i1804

if.then75.i1804:                                  ; preds = %is_long_ref.exit2084
  %417 = trunc nsw i64 %indvars.iv217.i1796 to i32
  %418 = load i8, ptr %arrayidx452, align 1
  %idxprom80.i1807 = sext i8 %418 to i64
  %arrayidx81.i1808 = getelementptr inbounds ptr, ptr %391, i64 %idxprom80.i1807
  store ptr %414, ptr %arrayidx81.i1808, align 8
  %419 = load i8, ptr %arrayidx452, align 1
  %inc82.i1809 = add i8 %419, 1
  store i8 %inc82.i1809, ptr %arrayidx452, align 1
  %inc83.i1810 = add nsw i32 %417, 1
  br label %for.end88.i1766

for.inc86.i1811:                                  ; preds = %if.then69.i1800, %is_long_ref.exit2084, %for.body63.i1795
  %indvars.iv.next218.i1812 = add nsw i64 %indvars.iv217.i1796, 1
  %lftr.wideiv220.i1813 = trunc i64 %indvars.iv.next218.i1812 to i32
  %exitcond221.not.i1814 = icmp eq i32 %listltidx.2.lcssa, %lftr.wideiv220.i1813
  br i1 %exitcond221.not.i1814, label %for.end88.i1766, label %for.body63.i1795

for.end88.i1766:                                  ; preds = %for.inc86.i1811, %if.then75.i1804, %for.cond60.preheader.i1762
  %bot_idx.6.i1767 = phi i32 [ %inc83.i1810, %if.then75.i1804 ], [ %bot_idx.4202.i1763, %for.cond60.preheader.i1762 ], [ %listltidx.2.lcssa, %for.inc86.i1811 ]
  %cmp90196.i1768 = icmp slt i32 %top_idx.4201.i1764, %listltidx.2.lcssa
  br i1 %cmp90196.i1768, label %for.body92.preheader.i1773, label %for.end117.i1769

for.body92.preheader.i1773:                       ; preds = %for.end88.i1766
  %420 = sext i32 %top_idx.4201.i1764 to i64
  br label %for.body92.i1774

for.body92.i1774:                                 ; preds = %for.inc115.i1790, %for.body92.preheader.i1773
  %indvars.iv222.i1775 = phi i64 [ %420, %for.body92.preheader.i1773 ], [ %indvars.iv.next223.i1791, %for.inc115.i1790 ]
  %arrayidx94.i1776 = getelementptr inbounds ptr, ptr %call444, i64 %indvars.iv222.i1775
  %421 = load ptr, ptr %arrayidx94.i1776, align 8
  %422 = load i32, ptr %421, align 8
  %and96.i1777 = and i32 %422, 1
  %tobool97.not.i1778 = icmp eq i32 %and96.i1777, 0
  br i1 %tobool97.not.i1778, label %for.inc115.i1790, label %if.then98.i1779

if.then98.i1779:                                  ; preds = %for.body92.i1774
  %top_field101.i1780 = getelementptr inbounds i8, ptr %421, i64 56
  %423 = load ptr, ptr %top_field101.i1780, align 8
  %used_for_reference.i2071 = getelementptr inbounds i8, ptr %423, i64 44
  %424 = load i32, ptr %used_for_reference.i2071, align 4
  %tobool.not.i2072 = icmp eq i32 %424, 0
  br i1 %tobool.not.i2072, label %for.inc115.i1790, label %is_long_ref.exit2077

is_long_ref.exit2077:                             ; preds = %if.then98.i1779
  %is_long_term.i2074 = getelementptr inbounds i8, ptr %423, i64 40
  %425 = load i8, ptr %is_long_term.i2074, align 8
  %tobool1.i2075.not = icmp eq i8 %425, 0
  br i1 %tobool1.i2075.not, label %for.inc115.i1790, label %if.then104.i1783

if.then104.i1783:                                 ; preds = %is_long_ref.exit2077
  %426 = trunc nsw i64 %indvars.iv222.i1775 to i32
  %427 = load i8, ptr %arrayidx452, align 1
  %idxprom109.i1786 = sext i8 %427 to i64
  %arrayidx110.i1787 = getelementptr inbounds ptr, ptr %391, i64 %idxprom109.i1786
  store ptr %423, ptr %arrayidx110.i1787, align 8
  %428 = load i8, ptr %arrayidx452, align 1
  %inc111.i1788 = add i8 %428, 1
  store i8 %inc111.i1788, ptr %arrayidx452, align 1
  %inc112.i1789 = add nsw i32 %426, 1
  br label %for.end117.i1769

for.inc115.i1790:                                 ; preds = %if.then98.i1779, %is_long_ref.exit2077, %for.body92.i1774
  %indvars.iv.next223.i1791 = add nsw i64 %indvars.iv222.i1775, 1
  %lftr.wideiv225.i1792 = trunc i64 %indvars.iv.next223.i1791 to i32
  %exitcond226.not.i1793 = icmp eq i32 %listltidx.2.lcssa, %lftr.wideiv225.i1792
  br i1 %exitcond226.not.i1793, label %for.end117.i1769, label %for.body92.i1774

for.end117.i1769:                                 ; preds = %for.inc115.i1790, %if.then104.i1783, %for.end88.i1766
  %top_idx.6.i1770 = phi i32 [ %inc112.i1789, %if.then104.i1783 ], [ %top_idx.4201.i1764, %for.end88.i1766 ], [ %listltidx.2.lcssa, %for.inc115.i1790 ]
  %cmp53.i1771 = icmp slt i32 %top_idx.6.i1770, %listltidx.2.lcssa
  %cmp56.i1772 = icmp slt i32 %bot_idx.6.i1767, %listltidx.2.lcssa
  %429 = select i1 %cmp53.i1771, i1 true, i1 %cmp56.i1772
  br i1 %429, label %for.cond60.preheader.i1762, label %gen_pic_list_from_frame_list.exit1870

gen_pic_list_from_frame_list.exit1870:            ; preds = %for.end117.i1769, %for.end47.i1824, %gen_pic_list_from_frame_list.exit1753, %while.cond.preheader.i1698, %while.cond.preheader.i1815, %while.cond52.preheader.i1759
  tail call void @free(ptr noundef %call430) #20
  tail call void @free(ptr noundef %call437) #20
  tail call void @free(ptr noundef %call444) #20
  %.pre2420 = load i8, ptr %arrayidx452, align 1
  br label %if.end605

if.end605:                                        ; preds = %for.end397, %gen_pic_list_from_frame_list.exit1870, %if.end180
  %430 = phi i8 [ %conv422.pre-phi, %for.end397 ], [ %.pre2420, %gen_pic_list_from_frame_list.exit1870 ], [ 0, %if.end180 ]
  %listXsize606 = getelementptr inbounds i8, ptr %currSlice, i64 256
  %431 = load i8, ptr %listXsize606, align 8
  %arrayidx610 = getelementptr inbounds i8, ptr %currSlice, i64 257
  %cmp612 = icmp eq i8 %431, %430
  %cmp618 = icmp sgt i8 %431, 1
  %or.cond = and i1 %cmp618, %cmp612
  br i1 %or.cond, label %for.cond621.preheader, label %if.end658

for.cond621.preheader:                            ; preds = %if.end605
  %listX628 = getelementptr inbounds i8, ptr %currSlice, i64 264
  %432 = load ptr, ptr %listX628, align 8
  %arrayidx633 = getelementptr inbounds i8, ptr %currSlice, i64 272
  %433 = load ptr, ptr %arrayidx633, align 8
  %wide.trip.count2374 = zext i8 %430 to i64
  %min.iters.check2545 = icmp ult i8 %430, 8
  br i1 %min.iters.check2545, label %for.body627.preheader, label %vector.ph2546

vector.ph2546:                                    ; preds = %for.cond621.preheader
  %n.vec2548 = and i64 %wide.trip.count2374, 248
  br label %vector.body2550

vector.body2550:                                  ; preds = %vector.body2550, %vector.ph2546
  %index2551 = phi i64 [ 0, %vector.ph2546 ], [ %index.next2563, %vector.body2550 ]
  %vec.phi = phi <2 x i1> [ zeroinitializer, %vector.ph2546 ], [ %446, %vector.body2550 ]
  %vec.phi2552 = phi <2 x i1> [ zeroinitializer, %vector.ph2546 ], [ %447, %vector.body2550 ]
  %vec.phi2553 = phi <2 x i1> [ zeroinitializer, %vector.ph2546 ], [ %448, %vector.body2550 ]
  %vec.phi2554 = phi <2 x i1> [ zeroinitializer, %vector.ph2546 ], [ %449, %vector.body2550 ]
  %434 = getelementptr inbounds ptr, ptr %432, i64 %index2551
  %435 = getelementptr inbounds i8, ptr %434, i64 16
  %436 = getelementptr inbounds i8, ptr %434, i64 32
  %437 = getelementptr inbounds i8, ptr %434, i64 48
  %wide.load2555 = load <2 x ptr>, ptr %434, align 8
  %wide.load2556 = load <2 x ptr>, ptr %435, align 8
  %wide.load2557 = load <2 x ptr>, ptr %436, align 8
  %wide.load2558 = load <2 x ptr>, ptr %437, align 8
  %438 = getelementptr inbounds ptr, ptr %433, i64 %index2551
  %439 = getelementptr inbounds i8, ptr %438, i64 16
  %440 = getelementptr inbounds i8, ptr %438, i64 32
  %441 = getelementptr inbounds i8, ptr %438, i64 48
  %wide.load2559 = load <2 x ptr>, ptr %438, align 8
  %wide.load2560 = load <2 x ptr>, ptr %439, align 8
  %wide.load2561 = load <2 x ptr>, ptr %440, align 8
  %wide.load2562 = load <2 x ptr>, ptr %441, align 8
  %442 = icmp ne <2 x ptr> %wide.load2555, %wide.load2559
  %443 = icmp ne <2 x ptr> %wide.load2556, %wide.load2560
  %444 = icmp ne <2 x ptr> %wide.load2557, %wide.load2561
  %445 = icmp ne <2 x ptr> %wide.load2558, %wide.load2562
  %446 = or <2 x i1> %vec.phi, %442
  %447 = or <2 x i1> %vec.phi2552, %443
  %448 = or <2 x i1> %vec.phi2553, %444
  %449 = or <2 x i1> %vec.phi2554, %445
  %index.next2563 = add nuw i64 %index2551, 8
  %450 = icmp eq i64 %index.next2563, %n.vec2548
  br i1 %450, label %middle.block2543, label %vector.body2550, !llvm.loop !15

middle.block2543:                                 ; preds = %vector.body2550
  %bin.rdx = or <2 x i1> %447, %446
  %bin.rdx2564 = or <2 x i1> %448, %bin.rdx
  %bin.rdx2565 = or <2 x i1> %449, %bin.rdx2564
  %bin.rdx2565.fr = freeze <2 x i1> %bin.rdx2565
  %451 = bitcast <2 x i1> %bin.rdx2565.fr to i2
  %.not = icmp ne i2 %451, 0
  %rdx.select = zext i1 %.not to i32
  %cmp.n2566 = icmp eq i64 %n.vec2548, %wide.trip.count2374
  br i1 %cmp.n2566, label %for.end642, label %for.body627.preheader

for.body627.preheader:                            ; preds = %middle.block2543, %for.cond621.preheader
  %indvars.iv2371.ph = phi i64 [ 0, %for.cond621.preheader ], [ %n.vec2548, %middle.block2543 ]
  %diff.02252.ph = phi i32 [ 0, %for.cond621.preheader ], [ %rdx.select, %middle.block2543 ]
  br label %for.body627

for.body627:                                      ; preds = %for.body627.preheader, %for.body627
  %indvars.iv2371 = phi i64 [ %indvars.iv.next2372, %for.body627 ], [ %indvars.iv2371.ph, %for.body627.preheader ]
  %diff.02252 = phi i32 [ %spec.select, %for.body627 ], [ %diff.02252.ph, %for.body627.preheader ]
  %arrayidx631 = getelementptr inbounds ptr, ptr %432, i64 %indvars.iv2371
  %452 = load ptr, ptr %arrayidx631, align 8
  %arrayidx635 = getelementptr inbounds ptr, ptr %433, i64 %indvars.iv2371
  %453 = load ptr, ptr %arrayidx635, align 8
  %cmp636.not = icmp eq ptr %452, %453
  %spec.select = select i1 %cmp636.not, i32 %diff.02252, i32 1
  %indvars.iv.next2372 = add nuw nsw i64 %indvars.iv2371, 1
  %exitcond2375.not = icmp eq i64 %indvars.iv.next2372, %wide.trip.count2374
  br i1 %exitcond2375.not, label %for.end642, label %for.body627, !llvm.loop !16

for.end642:                                       ; preds = %for.body627, %middle.block2543
  %spec.select.lcssa = phi i32 [ %rdx.select, %middle.block2543 ], [ %spec.select, %for.body627 ]
  %tobool643.not = icmp eq i32 %spec.select.lcssa, 0
  br i1 %tobool643.not, label %if.then644, label %if.end658

if.then644:                                       ; preds = %for.end642
  %454 = load ptr, ptr %433, align 8
  %arrayidx650 = getelementptr inbounds i8, ptr %433, i64 8
  %455 = load ptr, ptr %arrayidx650, align 8
  store ptr %455, ptr %433, align 8
  %456 = load ptr, ptr %arrayidx633, align 8
  %arrayidx656 = getelementptr inbounds i8, ptr %456, i64 8
  store ptr %454, ptr %arrayidx656, align 8
  br label %if.end658

if.end658:                                        ; preds = %for.end642, %if.then644, %if.end605
  %svc_extension_flag = getelementptr inbounds i8, ptr %currSlice, i64 32
  %457 = load i32, ptr %svc_extension_flag, align 8
  %cmp659 = icmp eq i32 %457, 0
  br i1 %cmp659, label %if.then661, label %if.end814

if.then661:                                       ; preds = %if.end658
  %458 = load i32, ptr %slice_type, align 4
  switch i32 %458, label %if.else719 [
    i32 0, label %if.then669
    i32 3, label %if.then669
  ]

if.then669:                                       ; preds = %if.then661, %if.then661
  %size670 = getelementptr inbounds i8, ptr %1, i64 40
  %459 = load i32, ptr %size670, align 8
  %conv671 = zext i32 %459 to i64
  %call672 = tail call noalias ptr @calloc(i64 noundef %conv671, i64 noundef 8) #21
  %fs_listinterview0 = getelementptr inbounds i8, ptr %currSlice, i64 13320
  store ptr %call672, ptr %fs_listinterview0, align 8
  %cmp674 = icmp eq ptr %call672, null
  br i1 %cmp674, label %if.then676, label %if.end677

if.then676:                                       ; preds = %if.then669
  tail call void @no_mem_exit(ptr noundef nonnull @.str.16) #20
  br label %if.end677

if.end677:                                        ; preds = %if.then676, %if.then669
  %structure681 = getelementptr inbounds i8, ptr %currSlice, i64 184
  %460 = load i32, ptr %structure681, align 8
  %cmp682 = icmp eq i32 %460, 0
  br i1 %cmp682, label %if.then684, label %if.else707

if.then684:                                       ; preds = %if.end677
  %461 = load i8, ptr %listXsize606, align 8
  %462 = load ptr, ptr %fs_listinterview0, align 8
  tail call void @append_interview_list(ptr noundef nonnull %1, i32 noundef 0, i32 noundef 0, ptr noundef %462, ptr noundef nonnull %listinterviewidx0, i32 noundef %2, i32 noundef %3, i32 noundef %4)
  %463 = load i32, ptr %listinterviewidx0, align 4
  %cmp6892253.not = icmp eq i32 %463, 0
  br i1 %cmp6892253.not, label %for.end703, label %for.body691.lr.ph

for.body691.lr.ph:                                ; preds = %if.then684
  %listX696 = getelementptr inbounds i8, ptr %currSlice, i64 264
  %464 = sext i8 %461 to i64
  br label %for.body691

for.body691:                                      ; preds = %for.body691.lr.ph, %for.body691
  %indvars.iv2378 = phi i64 [ %464, %for.body691.lr.ph ], [ %indvars.iv.next2379, %for.body691 ]
  %indvars.iv2376 = phi i64 [ 0, %for.body691.lr.ph ], [ %indvars.iv.next2377, %for.body691 ]
  %465 = load ptr, ptr %fs_listinterview0, align 8
  %arrayidx694 = getelementptr inbounds ptr, ptr %465, i64 %indvars.iv2376
  %466 = load ptr, ptr %arrayidx694, align 8
  %frame695 = getelementptr inbounds i8, ptr %466, i64 48
  %467 = load ptr, ptr %frame695, align 8
  %468 = load ptr, ptr %listX696, align 8
  %indvars.iv.next2379 = add nsw i64 %indvars.iv2378, 1
  %arrayidx700 = getelementptr inbounds ptr, ptr %468, i64 %indvars.iv2378
  store ptr %467, ptr %arrayidx700, align 8
  %indvars.iv.next2377 = add nuw nsw i64 %indvars.iv2376, 1
  %469 = load i32, ptr %listinterviewidx0, align 4
  %470 = zext i32 %469 to i64
  %cmp689 = icmp ult i64 %indvars.iv.next2377, %470
  br i1 %cmp689, label %for.body691, label %for.end703.loopexit

for.end703.loopexit:                              ; preds = %for.body691
  %471 = trunc i64 %indvars.iv.next2379 to i8
  br label %for.end703

for.end703:                                       ; preds = %for.end703.loopexit, %if.then684
  %list0idx.16.lcssa = phi i8 [ %461, %if.then684 ], [ %471, %for.end703.loopexit ]
  store i8 %list0idx.16.lcssa, ptr %listXsize606, align 8
  br label %if.end814

if.else707:                                       ; preds = %if.end677
  %472 = load ptr, ptr %fs_listinterview0, align 8
  tail call void @append_interview_list(ptr noundef nonnull %1, i32 noundef %460, i32 noundef 0, ptr noundef %472, ptr noundef nonnull %listinterviewidx0, i32 noundef %2, i32 noundef %3, i32 noundef %4)
  %473 = load i32, ptr %structure681, align 8
  %474 = load ptr, ptr %fs_listinterview0, align 8
  %475 = load i32, ptr %listinterviewidx0, align 4
  %listX714 = getelementptr inbounds i8, ptr %currSlice, i64 264
  %476 = load ptr, ptr %listX714, align 8
  switch i32 %473, label %if.end814 [
    i32 1, label %for.cond.preheader.i1875
    i32 2, label %if.then7.i
  ]

for.cond.preheader.i1875:                         ; preds = %if.else707
  %cmp134.i = icmp sgt i32 %475, 0
  br i1 %cmp134.i, label %for.body.preheader.i1876, label %if.end814

for.body.preheader.i1876:                         ; preds = %for.cond.preheader.i1875
  %wide.trip.count43.i = zext nneg i32 %475 to i64
  %.pre45.i = load i8, ptr %listXsize606, align 1
  %xtraiter2649 = and i64 %wide.trip.count43.i, 1
  %477 = icmp eq i32 %475, 1
  br i1 %477, label %if.end814.loopexit2569.unr-lcssa, label %for.body.preheader.i1876.new

for.body.preheader.i1876.new:                     ; preds = %for.body.preheader.i1876
  %unroll_iter2653 = and i64 %wide.trip.count43.i, 2147483646
  br label %for.body.i1877

for.body.i1877:                                   ; preds = %for.body.i1877, %for.body.preheader.i1876.new
  %478 = phi i8 [ %.pre45.i, %for.body.preheader.i1876.new ], [ %inc.i1880.1, %for.body.i1877 ]
  %indvars.iv40.i = phi i64 [ 0, %for.body.preheader.i1876.new ], [ %indvars.iv.next41.i.1, %for.body.i1877 ]
  %niter2654 = phi i64 [ 0, %for.body.preheader.i1876.new ], [ %niter2654.next.1, %for.body.i1877 ]
  %arrayidx.i1878 = getelementptr inbounds ptr, ptr %474, i64 %indvars.iv40.i
  %479 = load ptr, ptr %arrayidx.i1878, align 8
  %top_field.i1879 = getelementptr inbounds i8, ptr %479, i64 56
  %480 = load ptr, ptr %top_field.i1879, align 8
  %idxprom2.i = sext i8 %478 to i64
  %arrayidx3.i = getelementptr inbounds ptr, ptr %476, i64 %idxprom2.i
  store ptr %480, ptr %arrayidx3.i, align 8
  %481 = load i8, ptr %listXsize606, align 1
  %inc.i1880 = add i8 %481, 1
  store i8 %inc.i1880, ptr %listXsize606, align 1
  %indvars.iv.next41.i = or disjoint i64 %indvars.iv40.i, 1
  %arrayidx.i1878.1 = getelementptr inbounds ptr, ptr %474, i64 %indvars.iv.next41.i
  %482 = load ptr, ptr %arrayidx.i1878.1, align 8
  %top_field.i1879.1 = getelementptr inbounds i8, ptr %482, i64 56
  %483 = load ptr, ptr %top_field.i1879.1, align 8
  %idxprom2.i.1 = sext i8 %inc.i1880 to i64
  %arrayidx3.i.1 = getelementptr inbounds ptr, ptr %476, i64 %idxprom2.i.1
  store ptr %483, ptr %arrayidx3.i.1, align 8
  %484 = load i8, ptr %listXsize606, align 1
  %inc.i1880.1 = add i8 %484, 1
  store i8 %inc.i1880.1, ptr %listXsize606, align 1
  %indvars.iv.next41.i.1 = add nuw nsw i64 %indvars.iv40.i, 2
  %niter2654.next.1 = add i64 %niter2654, 2
  %niter2654.ncmp.1 = icmp eq i64 %niter2654.next.1, %unroll_iter2653
  br i1 %niter2654.ncmp.1, label %if.end814.loopexit2569.unr-lcssa, label %for.body.i1877

if.then7.i:                                       ; preds = %if.else707
  %cmp936.i = icmp sgt i32 %475, 0
  br i1 %cmp936.i, label %for.body11.preheader.i, label %if.end814

for.body11.preheader.i:                           ; preds = %if.then7.i
  %wide.trip.count.i = zext nneg i32 %475 to i64
  %.pre.i = load i8, ptr %listXsize606, align 1
  %xtraiter2644 = and i64 %wide.trip.count.i, 1
  %485 = icmp eq i32 %475, 1
  br i1 %485, label %if.end814.loopexit2570.unr-lcssa, label %for.body11.preheader.i.new

for.body11.preheader.i.new:                       ; preds = %for.body11.preheader.i
  %unroll_iter2647 = and i64 %wide.trip.count.i, 2147483646
  br label %for.body11.i

for.body11.i:                                     ; preds = %for.body11.i, %for.body11.preheader.i.new
  %486 = phi i8 [ %.pre.i, %for.body11.preheader.i.new ], [ %inc17.i.1, %for.body11.i ]
  %indvars.iv.i1871 = phi i64 [ 0, %for.body11.preheader.i.new ], [ %indvars.iv.next.i1873.1, %for.body11.i ]
  %niter2648 = phi i64 [ 0, %for.body11.preheader.i.new ], [ %niter2648.next.1, %for.body11.i ]
  %arrayidx13.i = getelementptr inbounds ptr, ptr %474, i64 %indvars.iv.i1871
  %487 = load ptr, ptr %arrayidx13.i, align 8
  %bottom_field.i1872 = getelementptr inbounds i8, ptr %487, i64 64
  %488 = load ptr, ptr %bottom_field.i1872, align 8
  %idxprom15.i = sext i8 %486 to i64
  %arrayidx16.i = getelementptr inbounds ptr, ptr %476, i64 %idxprom15.i
  store ptr %488, ptr %arrayidx16.i, align 8
  %489 = load i8, ptr %listXsize606, align 1
  %inc17.i = add i8 %489, 1
  store i8 %inc17.i, ptr %listXsize606, align 1
  %indvars.iv.next.i1873 = or disjoint i64 %indvars.iv.i1871, 1
  %arrayidx13.i.1 = getelementptr inbounds ptr, ptr %474, i64 %indvars.iv.next.i1873
  %490 = load ptr, ptr %arrayidx13.i.1, align 8
  %bottom_field.i1872.1 = getelementptr inbounds i8, ptr %490, i64 64
  %491 = load ptr, ptr %bottom_field.i1872.1, align 8
  %idxprom15.i.1 = sext i8 %inc17.i to i64
  %arrayidx16.i.1 = getelementptr inbounds ptr, ptr %476, i64 %idxprom15.i.1
  store ptr %491, ptr %arrayidx16.i.1, align 8
  %492 = load i8, ptr %listXsize606, align 1
  %inc17.i.1 = add i8 %492, 1
  store i8 %inc17.i.1, ptr %listXsize606, align 1
  %indvars.iv.next.i1873.1 = add nuw nsw i64 %indvars.iv.i1871, 2
  %niter2648.next.1 = add i64 %niter2648, 2
  %niter2648.ncmp.1 = icmp eq i64 %niter2648.next.1, %unroll_iter2647
  br i1 %niter2648.ncmp.1, label %if.end814.loopexit2570.unr-lcssa, label %for.body11.i

if.else719:                                       ; preds = %if.then661
  %size720 = getelementptr inbounds i8, ptr %1, i64 40
  %493 = load i32, ptr %size720, align 8
  %conv721 = zext i32 %493 to i64
  %call722 = tail call noalias ptr @calloc(i64 noundef %conv721, i64 noundef 8) #21
  %fs_listinterview0723 = getelementptr inbounds i8, ptr %currSlice, i64 13320
  store ptr %call722, ptr %fs_listinterview0723, align 8
  %cmp725 = icmp eq ptr %call722, null
  br i1 %cmp725, label %if.then727, label %if.end728

if.then727:                                       ; preds = %if.else719
  tail call void @no_mem_exit(ptr noundef nonnull @.str.16) #20
  br label %if.end728

if.end728:                                        ; preds = %if.then727, %if.else719
  %494 = load i32, ptr %size720, align 8
  %conv730 = zext i32 %494 to i64
  %call731 = tail call noalias ptr @calloc(i64 noundef %conv730, i64 noundef 8) #21
  %fs_listinterview1 = getelementptr inbounds i8, ptr %currSlice, i64 13328
  store ptr %call731, ptr %fs_listinterview1, align 8
  %cmp733 = icmp eq ptr %call731, null
  br i1 %cmp733, label %if.then735, label %if.end736

if.then735:                                       ; preds = %if.end728
  tail call void @no_mem_exit(ptr noundef nonnull @.str.18) #20
  br label %if.end736

if.end736:                                        ; preds = %if.then735, %if.end728
  %structure740 = getelementptr inbounds i8, ptr %currSlice, i64 184
  %495 = load i32, ptr %structure740, align 8
  %cmp741 = icmp eq i32 %495, 0
  br i1 %cmp741, label %if.then743, label %if.else791

if.then743:                                       ; preds = %if.end736
  %496 = load i8, ptr %listXsize606, align 8
  %497 = load ptr, ptr %fs_listinterview0723, align 8
  tail call void @append_interview_list(ptr noundef nonnull %1, i32 noundef 0, i32 noundef 0, ptr noundef %497, ptr noundef nonnull %listinterviewidx0, i32 noundef %2, i32 noundef %3, i32 noundef %4)
  %498 = load ptr, ptr %fs_listinterview1, align 8
  tail call void @append_interview_list(ptr noundef nonnull %1, i32 noundef 0, i32 noundef 1, ptr noundef %498, ptr noundef nonnull %listinterviewidx1, i32 noundef %2, i32 noundef %3, i32 noundef %4)
  %499 = load i32, ptr %listinterviewidx0, align 4
  %cmp7502257.not = icmp eq i32 %499, 0
  br i1 %cmp7502257.not, label %for.end764, label %for.body752.lr.ph

for.body752.lr.ph:                                ; preds = %if.then743
  %listX757 = getelementptr inbounds i8, ptr %currSlice, i64 264
  %500 = sext i8 %496 to i64
  br label %for.body752

for.body752:                                      ; preds = %for.body752.lr.ph, %for.body752
  %indvars.iv2385 = phi i64 [ %500, %for.body752.lr.ph ], [ %indvars.iv.next2386, %for.body752 ]
  %indvars.iv2383 = phi i64 [ 0, %for.body752.lr.ph ], [ %indvars.iv.next2384, %for.body752 ]
  %501 = load ptr, ptr %fs_listinterview0723, align 8
  %arrayidx755 = getelementptr inbounds ptr, ptr %501, i64 %indvars.iv2383
  %502 = load ptr, ptr %arrayidx755, align 8
  %frame756 = getelementptr inbounds i8, ptr %502, i64 48
  %503 = load ptr, ptr %frame756, align 8
  %504 = load ptr, ptr %listX757, align 8
  %indvars.iv.next2386 = add nsw i64 %indvars.iv2385, 1
  %arrayidx761 = getelementptr inbounds ptr, ptr %504, i64 %indvars.iv2385
  store ptr %503, ptr %arrayidx761, align 8
  %indvars.iv.next2384 = add nuw nsw i64 %indvars.iv2383, 1
  %505 = load i32, ptr %listinterviewidx0, align 4
  %506 = zext i32 %505 to i64
  %cmp750 = icmp ult i64 %indvars.iv.next2384, %506
  br i1 %cmp750, label %for.body752, label %for.end764.loopexit

for.end764.loopexit:                              ; preds = %for.body752
  %507 = trunc i64 %indvars.iv.next2386 to i8
  br label %for.end764

for.end764:                                       ; preds = %for.end764.loopexit, %if.then743
  %list0idx.17.lcssa = phi i8 [ %496, %if.then743 ], [ %507, %for.end764.loopexit ]
  store i8 %list0idx.17.lcssa, ptr %listXsize606, align 8
  %508 = load i8, ptr %arrayidx610, align 1
  %509 = load i32, ptr %listinterviewidx1, align 8
  %cmp7732261.not = icmp eq i32 %509, 0
  br i1 %cmp7732261.not, label %for.end787, label %for.body775.lr.ph

for.body775.lr.ph:                                ; preds = %for.end764
  %arrayidx781 = getelementptr inbounds i8, ptr %currSlice, i64 272
  %510 = sext i8 %508 to i64
  br label %for.body775

for.body775:                                      ; preds = %for.body775.lr.ph, %for.body775
  %indvars.iv2392 = phi i64 [ %510, %for.body775.lr.ph ], [ %indvars.iv.next2393, %for.body775 ]
  %indvars.iv2390 = phi i64 [ 0, %for.body775.lr.ph ], [ %indvars.iv.next2391, %for.body775 ]
  %511 = load ptr, ptr %fs_listinterview1, align 8
  %arrayidx778 = getelementptr inbounds ptr, ptr %511, i64 %indvars.iv2390
  %512 = load ptr, ptr %arrayidx778, align 8
  %frame779 = getelementptr inbounds i8, ptr %512, i64 48
  %513 = load ptr, ptr %frame779, align 8
  %514 = load ptr, ptr %arrayidx781, align 8
  %indvars.iv.next2393 = add nsw i64 %indvars.iv2392, 1
  %arrayidx784 = getelementptr inbounds ptr, ptr %514, i64 %indvars.iv2392
  store ptr %513, ptr %arrayidx784, align 8
  %indvars.iv.next2391 = add nuw nsw i64 %indvars.iv2390, 1
  %515 = load i32, ptr %listinterviewidx1, align 8
  %516 = zext i32 %515 to i64
  %cmp773 = icmp ult i64 %indvars.iv.next2391, %516
  br i1 %cmp773, label %for.body775, label %for.end787.loopexit

for.end787.loopexit:                              ; preds = %for.body775
  %517 = trunc i64 %indvars.iv.next2393 to i8
  br label %for.end787

for.end787:                                       ; preds = %for.end787.loopexit, %for.end764
  %list0idx.18.lcssa = phi i8 [ %508, %for.end764 ], [ %517, %for.end787.loopexit ]
  store i8 %list0idx.18.lcssa, ptr %arrayidx610, align 1
  br label %if.end814

if.else791:                                       ; preds = %if.end736
  %518 = load ptr, ptr %fs_listinterview0723, align 8
  tail call void @append_interview_list(ptr noundef nonnull %1, i32 noundef %495, i32 noundef 0, ptr noundef %518, ptr noundef nonnull %listinterviewidx0, i32 noundef %2, i32 noundef %3, i32 noundef %4)
  %519 = load i32, ptr %structure740, align 8
  %520 = load ptr, ptr %fs_listinterview0723, align 8
  %521 = load i32, ptr %listinterviewidx0, align 4
  %listX798 = getelementptr inbounds i8, ptr %currSlice, i64 264
  %522 = load ptr, ptr %listX798, align 8
  switch i32 %519, label %gen_pic_list_from_frame_interview_list.exit1909 [
    i32 1, label %for.cond.preheader.i1895
    i32 2, label %if.then7.i1881
  ]

for.cond.preheader.i1895:                         ; preds = %if.else791
  %cmp134.i1896 = icmp sgt i32 %521, 0
  br i1 %cmp134.i1896, label %for.body.preheader.i1897, label %gen_pic_list_from_frame_interview_list.exit1909

for.body.preheader.i1897:                         ; preds = %for.cond.preheader.i1895
  %wide.trip.count43.i1898 = zext nneg i32 %521 to i64
  %.pre45.i1899 = load i8, ptr %listXsize606, align 1
  %xtraiter2661 = and i64 %wide.trip.count43.i1898, 1
  %523 = icmp eq i32 %521, 1
  br i1 %523, label %gen_pic_list_from_frame_interview_list.exit1909.loopexit.unr-lcssa, label %for.body.preheader.i1897.new

for.body.preheader.i1897.new:                     ; preds = %for.body.preheader.i1897
  %unroll_iter2665 = and i64 %wide.trip.count43.i1898, 2147483646
  br label %for.body.i1900

for.body.i1900:                                   ; preds = %for.body.i1900, %for.body.preheader.i1897.new
  %524 = phi i8 [ %.pre45.i1899, %for.body.preheader.i1897.new ], [ %inc.i1906.1, %for.body.i1900 ]
  %indvars.iv40.i1901 = phi i64 [ 0, %for.body.preheader.i1897.new ], [ %indvars.iv.next41.i1907.1, %for.body.i1900 ]
  %niter2666 = phi i64 [ 0, %for.body.preheader.i1897.new ], [ %niter2666.next.1, %for.body.i1900 ]
  %arrayidx.i1902 = getelementptr inbounds ptr, ptr %520, i64 %indvars.iv40.i1901
  %525 = load ptr, ptr %arrayidx.i1902, align 8
  %top_field.i1903 = getelementptr inbounds i8, ptr %525, i64 56
  %526 = load ptr, ptr %top_field.i1903, align 8
  %idxprom2.i1904 = sext i8 %524 to i64
  %arrayidx3.i1905 = getelementptr inbounds ptr, ptr %522, i64 %idxprom2.i1904
  store ptr %526, ptr %arrayidx3.i1905, align 8
  %527 = load i8, ptr %listXsize606, align 1
  %inc.i1906 = add i8 %527, 1
  store i8 %inc.i1906, ptr %listXsize606, align 1
  %indvars.iv.next41.i1907 = or disjoint i64 %indvars.iv40.i1901, 1
  %arrayidx.i1902.1 = getelementptr inbounds ptr, ptr %520, i64 %indvars.iv.next41.i1907
  %528 = load ptr, ptr %arrayidx.i1902.1, align 8
  %top_field.i1903.1 = getelementptr inbounds i8, ptr %528, i64 56
  %529 = load ptr, ptr %top_field.i1903.1, align 8
  %idxprom2.i1904.1 = sext i8 %inc.i1906 to i64
  %arrayidx3.i1905.1 = getelementptr inbounds ptr, ptr %522, i64 %idxprom2.i1904.1
  store ptr %529, ptr %arrayidx3.i1905.1, align 8
  %530 = load i8, ptr %listXsize606, align 1
  %inc.i1906.1 = add i8 %530, 1
  store i8 %inc.i1906.1, ptr %listXsize606, align 1
  %indvars.iv.next41.i1907.1 = add nuw nsw i64 %indvars.iv40.i1901, 2
  %niter2666.next.1 = add i64 %niter2666, 2
  %niter2666.ncmp.1 = icmp eq i64 %niter2666.next.1, %unroll_iter2665
  br i1 %niter2666.ncmp.1, label %gen_pic_list_from_frame_interview_list.exit1909.loopexit.unr-lcssa, label %for.body.i1900

if.then7.i1881:                                   ; preds = %if.else791
  %cmp936.i1882 = icmp sgt i32 %521, 0
  br i1 %cmp936.i1882, label %for.body11.preheader.i1883, label %gen_pic_list_from_frame_interview_list.exit1909

for.body11.preheader.i1883:                       ; preds = %if.then7.i1881
  %wide.trip.count.i1884 = zext nneg i32 %521 to i64
  %.pre.i1885 = load i8, ptr %listXsize606, align 1
  %xtraiter2655 = and i64 %wide.trip.count.i1884, 1
  %531 = icmp eq i32 %521, 1
  br i1 %531, label %gen_pic_list_from_frame_interview_list.exit1909.loopexit2568.unr-lcssa, label %for.body11.preheader.i1883.new

for.body11.preheader.i1883.new:                   ; preds = %for.body11.preheader.i1883
  %unroll_iter2659 = and i64 %wide.trip.count.i1884, 2147483646
  br label %for.body11.i1886

for.body11.i1886:                                 ; preds = %for.body11.i1886, %for.body11.preheader.i1883.new
  %532 = phi i8 [ %.pre.i1885, %for.body11.preheader.i1883.new ], [ %inc17.i1892.1, %for.body11.i1886 ]
  %indvars.iv.i1887 = phi i64 [ 0, %for.body11.preheader.i1883.new ], [ %indvars.iv.next.i1893.1, %for.body11.i1886 ]
  %niter2660 = phi i64 [ 0, %for.body11.preheader.i1883.new ], [ %niter2660.next.1, %for.body11.i1886 ]
  %arrayidx13.i1888 = getelementptr inbounds ptr, ptr %520, i64 %indvars.iv.i1887
  %533 = load ptr, ptr %arrayidx13.i1888, align 8
  %bottom_field.i1889 = getelementptr inbounds i8, ptr %533, i64 64
  %534 = load ptr, ptr %bottom_field.i1889, align 8
  %idxprom15.i1890 = sext i8 %532 to i64
  %arrayidx16.i1891 = getelementptr inbounds ptr, ptr %522, i64 %idxprom15.i1890
  store ptr %534, ptr %arrayidx16.i1891, align 8
  %535 = load i8, ptr %listXsize606, align 1
  %inc17.i1892 = add i8 %535, 1
  store i8 %inc17.i1892, ptr %listXsize606, align 1
  %indvars.iv.next.i1893 = or disjoint i64 %indvars.iv.i1887, 1
  %arrayidx13.i1888.1 = getelementptr inbounds ptr, ptr %520, i64 %indvars.iv.next.i1893
  %536 = load ptr, ptr %arrayidx13.i1888.1, align 8
  %bottom_field.i1889.1 = getelementptr inbounds i8, ptr %536, i64 64
  %537 = load ptr, ptr %bottom_field.i1889.1, align 8
  %idxprom15.i1890.1 = sext i8 %inc17.i1892 to i64
  %arrayidx16.i1891.1 = getelementptr inbounds ptr, ptr %522, i64 %idxprom15.i1890.1
  store ptr %537, ptr %arrayidx16.i1891.1, align 8
  %538 = load i8, ptr %listXsize606, align 1
  %inc17.i1892.1 = add i8 %538, 1
  store i8 %inc17.i1892.1, ptr %listXsize606, align 1
  %indvars.iv.next.i1893.1 = add nuw nsw i64 %indvars.iv.i1887, 2
  %niter2660.next.1 = add i64 %niter2660, 2
  %niter2660.ncmp.1 = icmp eq i64 %niter2660.next.1, %unroll_iter2659
  br i1 %niter2660.ncmp.1, label %gen_pic_list_from_frame_interview_list.exit1909.loopexit2568.unr-lcssa, label %for.body11.i1886

gen_pic_list_from_frame_interview_list.exit1909.loopexit.unr-lcssa: ; preds = %for.body.i1900, %for.body.preheader.i1897
  %.unr2663 = phi i8 [ %.pre45.i1899, %for.body.preheader.i1897 ], [ %inc.i1906.1, %for.body.i1900 ]
  %indvars.iv40.i1901.unr = phi i64 [ 0, %for.body.preheader.i1897 ], [ %indvars.iv.next41.i1907.1, %for.body.i1900 ]
  %lcmp.mod2664.not = icmp eq i64 %xtraiter2661, 0
  br i1 %lcmp.mod2664.not, label %gen_pic_list_from_frame_interview_list.exit1909, label %for.body.i1900.epil

for.body.i1900.epil:                              ; preds = %gen_pic_list_from_frame_interview_list.exit1909.loopexit.unr-lcssa
  %arrayidx.i1902.epil = getelementptr inbounds ptr, ptr %520, i64 %indvars.iv40.i1901.unr
  %539 = load ptr, ptr %arrayidx.i1902.epil, align 8
  %top_field.i1903.epil = getelementptr inbounds i8, ptr %539, i64 56
  %540 = load ptr, ptr %top_field.i1903.epil, align 8
  %idxprom2.i1904.epil = sext i8 %.unr2663 to i64
  %arrayidx3.i1905.epil = getelementptr inbounds ptr, ptr %522, i64 %idxprom2.i1904.epil
  store ptr %540, ptr %arrayidx3.i1905.epil, align 8
  %541 = load i8, ptr %listXsize606, align 1
  %inc.i1906.epil = add i8 %541, 1
  store i8 %inc.i1906.epil, ptr %listXsize606, align 1
  br label %gen_pic_list_from_frame_interview_list.exit1909

gen_pic_list_from_frame_interview_list.exit1909.loopexit2568.unr-lcssa: ; preds = %for.body11.i1886, %for.body11.preheader.i1883
  %.unr2657 = phi i8 [ %.pre.i1885, %for.body11.preheader.i1883 ], [ %inc17.i1892.1, %for.body11.i1886 ]
  %indvars.iv.i1887.unr = phi i64 [ 0, %for.body11.preheader.i1883 ], [ %indvars.iv.next.i1893.1, %for.body11.i1886 ]
  %lcmp.mod2658.not = icmp eq i64 %xtraiter2655, 0
  br i1 %lcmp.mod2658.not, label %gen_pic_list_from_frame_interview_list.exit1909, label %for.body11.i1886.epil

for.body11.i1886.epil:                            ; preds = %gen_pic_list_from_frame_interview_list.exit1909.loopexit2568.unr-lcssa
  %arrayidx13.i1888.epil = getelementptr inbounds ptr, ptr %520, i64 %indvars.iv.i1887.unr
  %542 = load ptr, ptr %arrayidx13.i1888.epil, align 8
  %bottom_field.i1889.epil = getelementptr inbounds i8, ptr %542, i64 64
  %543 = load ptr, ptr %bottom_field.i1889.epil, align 8
  %idxprom15.i1890.epil = sext i8 %.unr2657 to i64
  %arrayidx16.i1891.epil = getelementptr inbounds ptr, ptr %522, i64 %idxprom15.i1890.epil
  store ptr %543, ptr %arrayidx16.i1891.epil, align 8
  %544 = load i8, ptr %listXsize606, align 1
  %inc17.i1892.epil = add i8 %544, 1
  store i8 %inc17.i1892.epil, ptr %listXsize606, align 1
  br label %gen_pic_list_from_frame_interview_list.exit1909

gen_pic_list_from_frame_interview_list.exit1909:  ; preds = %for.body11.i1886.epil, %gen_pic_list_from_frame_interview_list.exit1909.loopexit2568.unr-lcssa, %for.body.i1900.epil, %gen_pic_list_from_frame_interview_list.exit1909.loopexit.unr-lcssa, %if.else791, %for.cond.preheader.i1895, %if.then7.i1881
  %545 = load i32, ptr %structure740, align 8
  %546 = load ptr, ptr %fs_listinterview1, align 8
  tail call void @append_interview_list(ptr noundef %1, i32 noundef %545, i32 noundef 1, ptr noundef %546, ptr noundef nonnull %listinterviewidx1, i32 noundef %2, i32 noundef %3, i32 noundef %4)
  %547 = load i32, ptr %structure740, align 8
  %548 = load ptr, ptr %fs_listinterview1, align 8
  %549 = load i32, ptr %listinterviewidx1, align 8
  %arrayidx809 = getelementptr inbounds i8, ptr %currSlice, i64 272
  %550 = load ptr, ptr %arrayidx809, align 8
  switch i32 %547, label %if.end814 [
    i32 1, label %for.cond.preheader.i1924
    i32 2, label %if.then7.i1910
  ]

for.cond.preheader.i1924:                         ; preds = %gen_pic_list_from_frame_interview_list.exit1909
  %cmp134.i1925 = icmp sgt i32 %549, 0
  br i1 %cmp134.i1925, label %for.body.preheader.i1926, label %if.end814

for.body.preheader.i1926:                         ; preds = %for.cond.preheader.i1924
  %wide.trip.count43.i1927 = zext nneg i32 %549 to i64
  %.pre45.i1928 = load i8, ptr %arrayidx610, align 1
  %xtraiter2673 = and i64 %wide.trip.count43.i1927, 1
  %551 = icmp eq i32 %549, 1
  br i1 %551, label %if.end814.loopexit.unr-lcssa, label %for.body.preheader.i1926.new

for.body.preheader.i1926.new:                     ; preds = %for.body.preheader.i1926
  %unroll_iter2677 = and i64 %wide.trip.count43.i1927, 2147483646
  br label %for.body.i1929

for.body.i1929:                                   ; preds = %for.body.i1929, %for.body.preheader.i1926.new
  %552 = phi i8 [ %.pre45.i1928, %for.body.preheader.i1926.new ], [ %inc.i1935.1, %for.body.i1929 ]
  %indvars.iv40.i1930 = phi i64 [ 0, %for.body.preheader.i1926.new ], [ %indvars.iv.next41.i1936.1, %for.body.i1929 ]
  %niter2678 = phi i64 [ 0, %for.body.preheader.i1926.new ], [ %niter2678.next.1, %for.body.i1929 ]
  %arrayidx.i1931 = getelementptr inbounds ptr, ptr %548, i64 %indvars.iv40.i1930
  %553 = load ptr, ptr %arrayidx.i1931, align 8
  %top_field.i1932 = getelementptr inbounds i8, ptr %553, i64 56
  %554 = load ptr, ptr %top_field.i1932, align 8
  %idxprom2.i1933 = sext i8 %552 to i64
  %arrayidx3.i1934 = getelementptr inbounds ptr, ptr %550, i64 %idxprom2.i1933
  store ptr %554, ptr %arrayidx3.i1934, align 8
  %555 = load i8, ptr %arrayidx610, align 1
  %inc.i1935 = add i8 %555, 1
  store i8 %inc.i1935, ptr %arrayidx610, align 1
  %indvars.iv.next41.i1936 = or disjoint i64 %indvars.iv40.i1930, 1
  %arrayidx.i1931.1 = getelementptr inbounds ptr, ptr %548, i64 %indvars.iv.next41.i1936
  %556 = load ptr, ptr %arrayidx.i1931.1, align 8
  %top_field.i1932.1 = getelementptr inbounds i8, ptr %556, i64 56
  %557 = load ptr, ptr %top_field.i1932.1, align 8
  %idxprom2.i1933.1 = sext i8 %inc.i1935 to i64
  %arrayidx3.i1934.1 = getelementptr inbounds ptr, ptr %550, i64 %idxprom2.i1933.1
  store ptr %557, ptr %arrayidx3.i1934.1, align 8
  %558 = load i8, ptr %arrayidx610, align 1
  %inc.i1935.1 = add i8 %558, 1
  store i8 %inc.i1935.1, ptr %arrayidx610, align 1
  %indvars.iv.next41.i1936.1 = add nuw nsw i64 %indvars.iv40.i1930, 2
  %niter2678.next.1 = add i64 %niter2678, 2
  %niter2678.ncmp.1 = icmp eq i64 %niter2678.next.1, %unroll_iter2677
  br i1 %niter2678.ncmp.1, label %if.end814.loopexit.unr-lcssa, label %for.body.i1929

if.then7.i1910:                                   ; preds = %gen_pic_list_from_frame_interview_list.exit1909
  %cmp936.i1911 = icmp sgt i32 %549, 0
  br i1 %cmp936.i1911, label %for.body11.preheader.i1912, label %if.end814

for.body11.preheader.i1912:                       ; preds = %if.then7.i1910
  %wide.trip.count.i1913 = zext nneg i32 %549 to i64
  %.pre.i1914 = load i8, ptr %arrayidx610, align 1
  %xtraiter2667 = and i64 %wide.trip.count.i1913, 1
  %559 = icmp eq i32 %549, 1
  br i1 %559, label %if.end814.loopexit2567.unr-lcssa, label %for.body11.preheader.i1912.new

for.body11.preheader.i1912.new:                   ; preds = %for.body11.preheader.i1912
  %unroll_iter2671 = and i64 %wide.trip.count.i1913, 2147483646
  br label %for.body11.i1915

for.body11.i1915:                                 ; preds = %for.body11.i1915, %for.body11.preheader.i1912.new
  %560 = phi i8 [ %.pre.i1914, %for.body11.preheader.i1912.new ], [ %inc17.i1921.1, %for.body11.i1915 ]
  %indvars.iv.i1916 = phi i64 [ 0, %for.body11.preheader.i1912.new ], [ %indvars.iv.next.i1922.1, %for.body11.i1915 ]
  %niter2672 = phi i64 [ 0, %for.body11.preheader.i1912.new ], [ %niter2672.next.1, %for.body11.i1915 ]
  %arrayidx13.i1917 = getelementptr inbounds ptr, ptr %548, i64 %indvars.iv.i1916
  %561 = load ptr, ptr %arrayidx13.i1917, align 8
  %bottom_field.i1918 = getelementptr inbounds i8, ptr %561, i64 64
  %562 = load ptr, ptr %bottom_field.i1918, align 8
  %idxprom15.i1919 = sext i8 %560 to i64
  %arrayidx16.i1920 = getelementptr inbounds ptr, ptr %550, i64 %idxprom15.i1919
  store ptr %562, ptr %arrayidx16.i1920, align 8
  %563 = load i8, ptr %arrayidx610, align 1
  %inc17.i1921 = add i8 %563, 1
  store i8 %inc17.i1921, ptr %arrayidx610, align 1
  %indvars.iv.next.i1922 = or disjoint i64 %indvars.iv.i1916, 1
  %arrayidx13.i1917.1 = getelementptr inbounds ptr, ptr %548, i64 %indvars.iv.next.i1922
  %564 = load ptr, ptr %arrayidx13.i1917.1, align 8
  %bottom_field.i1918.1 = getelementptr inbounds i8, ptr %564, i64 64
  %565 = load ptr, ptr %bottom_field.i1918.1, align 8
  %idxprom15.i1919.1 = sext i8 %inc17.i1921 to i64
  %arrayidx16.i1920.1 = getelementptr inbounds ptr, ptr %550, i64 %idxprom15.i1919.1
  store ptr %565, ptr %arrayidx16.i1920.1, align 8
  %566 = load i8, ptr %arrayidx610, align 1
  %inc17.i1921.1 = add i8 %566, 1
  store i8 %inc17.i1921.1, ptr %arrayidx610, align 1
  %indvars.iv.next.i1922.1 = add nuw nsw i64 %indvars.iv.i1916, 2
  %niter2672.next.1 = add i64 %niter2672, 2
  %niter2672.ncmp.1 = icmp eq i64 %niter2672.next.1, %unroll_iter2671
  br i1 %niter2672.ncmp.1, label %if.end814.loopexit2567.unr-lcssa, label %for.body11.i1915

if.end814.loopexit.unr-lcssa:                     ; preds = %for.body.i1929, %for.body.preheader.i1926
  %.unr2675 = phi i8 [ %.pre45.i1928, %for.body.preheader.i1926 ], [ %inc.i1935.1, %for.body.i1929 ]
  %indvars.iv40.i1930.unr = phi i64 [ 0, %for.body.preheader.i1926 ], [ %indvars.iv.next41.i1936.1, %for.body.i1929 ]
  %lcmp.mod2676.not = icmp eq i64 %xtraiter2673, 0
  br i1 %lcmp.mod2676.not, label %if.end814, label %for.body.i1929.epil

for.body.i1929.epil:                              ; preds = %if.end814.loopexit.unr-lcssa
  %arrayidx.i1931.epil = getelementptr inbounds ptr, ptr %548, i64 %indvars.iv40.i1930.unr
  %567 = load ptr, ptr %arrayidx.i1931.epil, align 8
  %top_field.i1932.epil = getelementptr inbounds i8, ptr %567, i64 56
  %568 = load ptr, ptr %top_field.i1932.epil, align 8
  %idxprom2.i1933.epil = sext i8 %.unr2675 to i64
  %arrayidx3.i1934.epil = getelementptr inbounds ptr, ptr %550, i64 %idxprom2.i1933.epil
  store ptr %568, ptr %arrayidx3.i1934.epil, align 8
  %569 = load i8, ptr %arrayidx610, align 1
  %inc.i1935.epil = add i8 %569, 1
  store i8 %inc.i1935.epil, ptr %arrayidx610, align 1
  br label %if.end814

if.end814.loopexit2567.unr-lcssa:                 ; preds = %for.body11.i1915, %for.body11.preheader.i1912
  %.unr2669 = phi i8 [ %.pre.i1914, %for.body11.preheader.i1912 ], [ %inc17.i1921.1, %for.body11.i1915 ]
  %indvars.iv.i1916.unr = phi i64 [ 0, %for.body11.preheader.i1912 ], [ %indvars.iv.next.i1922.1, %for.body11.i1915 ]
  %lcmp.mod2670.not = icmp eq i64 %xtraiter2667, 0
  br i1 %lcmp.mod2670.not, label %if.end814, label %for.body11.i1915.epil

for.body11.i1915.epil:                            ; preds = %if.end814.loopexit2567.unr-lcssa
  %arrayidx13.i1917.epil = getelementptr inbounds ptr, ptr %548, i64 %indvars.iv.i1916.unr
  %570 = load ptr, ptr %arrayidx13.i1917.epil, align 8
  %bottom_field.i1918.epil = getelementptr inbounds i8, ptr %570, i64 64
  %571 = load ptr, ptr %bottom_field.i1918.epil, align 8
  %idxprom15.i1919.epil = sext i8 %.unr2669 to i64
  %arrayidx16.i1920.epil = getelementptr inbounds ptr, ptr %550, i64 %idxprom15.i1919.epil
  store ptr %571, ptr %arrayidx16.i1920.epil, align 8
  %572 = load i8, ptr %arrayidx610, align 1
  %inc17.i1921.epil = add i8 %572, 1
  store i8 %inc17.i1921.epil, ptr %arrayidx610, align 1
  br label %if.end814

if.end814.loopexit2569.unr-lcssa:                 ; preds = %for.body.i1877, %for.body.preheader.i1876
  %.unr2651 = phi i8 [ %.pre45.i, %for.body.preheader.i1876 ], [ %inc.i1880.1, %for.body.i1877 ]
  %indvars.iv40.i.unr = phi i64 [ 0, %for.body.preheader.i1876 ], [ %indvars.iv.next41.i.1, %for.body.i1877 ]
  %lcmp.mod2652.not = icmp eq i64 %xtraiter2649, 0
  br i1 %lcmp.mod2652.not, label %if.end814, label %for.body.i1877.epil

for.body.i1877.epil:                              ; preds = %if.end814.loopexit2569.unr-lcssa
  %arrayidx.i1878.epil = getelementptr inbounds ptr, ptr %474, i64 %indvars.iv40.i.unr
  %573 = load ptr, ptr %arrayidx.i1878.epil, align 8
  %top_field.i1879.epil = getelementptr inbounds i8, ptr %573, i64 56
  %574 = load ptr, ptr %top_field.i1879.epil, align 8
  %idxprom2.i.epil = sext i8 %.unr2651 to i64
  %arrayidx3.i.epil = getelementptr inbounds ptr, ptr %476, i64 %idxprom2.i.epil
  store ptr %574, ptr %arrayidx3.i.epil, align 8
  %575 = load i8, ptr %listXsize606, align 1
  %inc.i1880.epil = add i8 %575, 1
  store i8 %inc.i1880.epil, ptr %listXsize606, align 1
  br label %if.end814

if.end814.loopexit2570.unr-lcssa:                 ; preds = %for.body11.i, %for.body11.preheader.i
  %.unr = phi i8 [ %.pre.i, %for.body11.preheader.i ], [ %inc17.i.1, %for.body11.i ]
  %indvars.iv.i1871.unr = phi i64 [ 0, %for.body11.preheader.i ], [ %indvars.iv.next.i1873.1, %for.body11.i ]
  %lcmp.mod2646.not = icmp eq i64 %xtraiter2644, 0
  br i1 %lcmp.mod2646.not, label %if.end814, label %for.body11.i.epil

for.body11.i.epil:                                ; preds = %if.end814.loopexit2570.unr-lcssa
  %arrayidx13.i.epil = getelementptr inbounds ptr, ptr %474, i64 %indvars.iv.i1871.unr
  %576 = load ptr, ptr %arrayidx13.i.epil, align 8
  %bottom_field.i1872.epil = getelementptr inbounds i8, ptr %576, i64 64
  %577 = load ptr, ptr %bottom_field.i1872.epil, align 8
  %idxprom15.i.epil = sext i8 %.unr to i64
  %arrayidx16.i.epil = getelementptr inbounds ptr, ptr %476, i64 %idxprom15.i.epil
  store ptr %577, ptr %arrayidx16.i.epil, align 8
  %578 = load i8, ptr %listXsize606, align 1
  %inc17.i.epil = add i8 %578, 1
  store i8 %inc17.i.epil, ptr %listXsize606, align 1
  br label %if.end814

if.end814:                                        ; preds = %for.body11.i.epil, %if.end814.loopexit2570.unr-lcssa, %for.body.i1877.epil, %if.end814.loopexit2569.unr-lcssa, %for.body11.i1915.epil, %if.end814.loopexit2567.unr-lcssa, %for.body.i1929.epil, %if.end814.loopexit.unr-lcssa, %if.then7.i1910, %for.cond.preheader.i1924, %gen_pic_list_from_frame_interview_list.exit1909, %if.then7.i, %for.cond.preheader.i1875, %if.else707, %for.end703, %for.end787, %if.end658
  %579 = load i8, ptr %listXsize606, align 8
  %conv817 = sext i8 %579 to i32
  %num_ref_idx_active = getelementptr inbounds i8, ptr %currSlice, i64 136
  %580 = load i32, ptr %num_ref_idx_active, align 8
  %cond.i = tail call noundef i32 @llvm.smin.i32(i32 %conv817, i32 %580)
  %conv820 = trunc i32 %cond.i to i8
  store i8 %conv820, ptr %listXsize606, align 8
  %581 = load i8, ptr %arrayidx610, align 1
  %conv825 = sext i8 %581 to i32
  %arrayidx827 = getelementptr inbounds i8, ptr %currSlice, i64 140
  %582 = load i32, ptr %arrayidx827, align 4
  %cond.i1939 = tail call noundef i32 @llvm.smin.i32(i32 %conv825, i32 %582)
  %conv829 = trunc i32 %cond.i1939 to i8
  store i8 %conv829, ptr %arrayidx610, align 1
  %sext = shl i32 %cond.i, 24
  %conv834 = ashr exact i32 %sext, 24
  %cmp8362265 = icmp ult i32 %conv834, 33
  br i1 %cmp8362265, label %for.body838.lr.ph, label %for.end845

for.body838.lr.ph:                                ; preds = %if.end814
  %no_reference_picture = getelementptr inbounds i8, ptr %0, i64 856488
  %listX839 = getelementptr inbounds i8, ptr %currSlice, i64 264
  %583 = zext nneg i32 %conv834 to i64
  %.pre2421 = load ptr, ptr %no_reference_picture, align 8
  br label %for.body838

for.body838:                                      ; preds = %for.body838.lr.ph, %for.body838
  %indvars.iv2397 = phi i64 [ %583, %for.body838.lr.ph ], [ %indvars.iv.next2398, %for.body838 ]
  %584 = load ptr, ptr %listX839, align 8
  %arrayidx842 = getelementptr inbounds ptr, ptr %584, i64 %indvars.iv2397
  store ptr %.pre2421, ptr %arrayidx842, align 8
  %indvars.iv.next2398 = add nuw nsw i64 %indvars.iv2397, 1
  %585 = and i64 %indvars.iv.next2398, 4294967295
  %exitcond2400.not = icmp eq i64 %585, 33
  br i1 %exitcond2400.not, label %for.end845.loopexit, label %for.body838

for.end845.loopexit:                              ; preds = %for.body838
  %.pre2422 = load i8, ptr %arrayidx610, align 1
  br label %for.end845

for.end845:                                       ; preds = %for.end845.loopexit, %if.end814
  %586 = phi i8 [ %.pre2422, %for.end845.loopexit ], [ %conv829, %if.end814 ]
  %cmp8502267 = icmp ult i8 %586, 33
  br i1 %cmp8502267, label %for.body852.lr.ph, label %cleanup

for.body852.lr.ph:                                ; preds = %for.end845
  %no_reference_picture853 = getelementptr inbounds i8, ptr %0, i64 856488
  %arrayidx855 = getelementptr inbounds i8, ptr %currSlice, i64 272
  %587 = zext nneg i8 %586 to i64
  %.pre2423 = load ptr, ptr %no_reference_picture853, align 8
  br label %for.body852

for.body852:                                      ; preds = %for.body852.lr.ph, %for.body852
  %indvars.iv2401 = phi i64 [ %587, %for.body852.lr.ph ], [ %indvars.iv.next2402, %for.body852 ]
  %588 = load ptr, ptr %arrayidx855, align 8
  %arrayidx857 = getelementptr inbounds ptr, ptr %588, i64 %indvars.iv2401
  store ptr %.pre2423, ptr %arrayidx857, align 8
  %indvars.iv.next2402 = add nuw nsw i64 %indvars.iv2401, 1
  %589 = and i64 %indvars.iv.next2402, 4294967295
  %exitcond2405.not = icmp eq i64 %589, 33
  br i1 %exitcond2405.not, label %cleanup, label %for.body852

cleanup:                                          ; preds = %for.body852, %for.end845, %if.then
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @init_mbaff_lists(ptr nocapture noundef readonly %p_Vid, ptr nocapture noundef %currSlice) local_unnamed_addr #9 {
entry:
  %no_reference_picture = getelementptr inbounds i8, ptr %p_Vid, i64 856488
  %listX = getelementptr inbounds i8, ptr %currSlice, i64 264
  %listXsize = getelementptr inbounds i8, ptr %currSlice, i64 256
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %entry, %for.cond1.preheader
  %indvars.iv = phi i64 [ 2, %entry ], [ %indvars.iv.next, %for.cond1.preheader ]
  %arrayidx = getelementptr inbounds [6 x ptr], ptr %listX, i64 0, i64 %indvars.iv
  %0 = load ptr, ptr %no_reference_picture, align 8
  %1 = load ptr, ptr %arrayidx, align 8
  store ptr %0, ptr %1, align 8
  %2 = load ptr, ptr %arrayidx, align 8
  %arrayidx5.1 = getelementptr inbounds i8, ptr %2, i64 8
  store ptr %0, ptr %arrayidx5.1, align 8
  %3 = load ptr, ptr %no_reference_picture, align 8
  %4 = load ptr, ptr %arrayidx, align 8
  %arrayidx5.2 = getelementptr inbounds i8, ptr %4, i64 16
  store ptr %3, ptr %arrayidx5.2, align 8
  %5 = load ptr, ptr %arrayidx, align 8
  %arrayidx5.3 = getelementptr inbounds i8, ptr %5, i64 24
  store ptr %3, ptr %arrayidx5.3, align 8
  %6 = load ptr, ptr %no_reference_picture, align 8
  %7 = load ptr, ptr %arrayidx, align 8
  %arrayidx5.4 = getelementptr inbounds i8, ptr %7, i64 32
  store ptr %6, ptr %arrayidx5.4, align 8
  %8 = load ptr, ptr %arrayidx, align 8
  %arrayidx5.5 = getelementptr inbounds i8, ptr %8, i64 40
  store ptr %6, ptr %arrayidx5.5, align 8
  %9 = load ptr, ptr %no_reference_picture, align 8
  %10 = load ptr, ptr %arrayidx, align 8
  %arrayidx5.6 = getelementptr inbounds i8, ptr %10, i64 48
  store ptr %9, ptr %arrayidx5.6, align 8
  %11 = load ptr, ptr %arrayidx, align 8
  %arrayidx5.7 = getelementptr inbounds i8, ptr %11, i64 56
  store ptr %9, ptr %arrayidx5.7, align 8
  %12 = load ptr, ptr %no_reference_picture, align 8
  %13 = load ptr, ptr %arrayidx, align 8
  %arrayidx5.8 = getelementptr inbounds i8, ptr %13, i64 64
  store ptr %12, ptr %arrayidx5.8, align 8
  %14 = load ptr, ptr %arrayidx, align 8
  %arrayidx5.9 = getelementptr inbounds i8, ptr %14, i64 72
  store ptr %12, ptr %arrayidx5.9, align 8
  %15 = load ptr, ptr %no_reference_picture, align 8
  %16 = load ptr, ptr %arrayidx, align 8
  %arrayidx5.10 = getelementptr inbounds i8, ptr %16, i64 80
  store ptr %15, ptr %arrayidx5.10, align 8
  %17 = load ptr, ptr %arrayidx, align 8
  %arrayidx5.11 = getelementptr inbounds i8, ptr %17, i64 88
  store ptr %15, ptr %arrayidx5.11, align 8
  %18 = load ptr, ptr %no_reference_picture, align 8
  %19 = load ptr, ptr %arrayidx, align 8
  %arrayidx5.12 = getelementptr inbounds i8, ptr %19, i64 96
  store ptr %18, ptr %arrayidx5.12, align 8
  %20 = load ptr, ptr %arrayidx, align 8
  %arrayidx5.13 = getelementptr inbounds i8, ptr %20, i64 104
  store ptr %18, ptr %arrayidx5.13, align 8
  %21 = load ptr, ptr %no_reference_picture, align 8
  %22 = load ptr, ptr %arrayidx, align 8
  %arrayidx5.14 = getelementptr inbounds i8, ptr %22, i64 112
  store ptr %21, ptr %arrayidx5.14, align 8
  %23 = load ptr, ptr %arrayidx, align 8
  %arrayidx5.15 = getelementptr inbounds i8, ptr %23, i64 120
  store ptr %21, ptr %arrayidx5.15, align 8
  %24 = load ptr, ptr %no_reference_picture, align 8
  %25 = load ptr, ptr %arrayidx, align 8
  %arrayidx5.16 = getelementptr inbounds i8, ptr %25, i64 128
  store ptr %24, ptr %arrayidx5.16, align 8
  %26 = load ptr, ptr %arrayidx, align 8
  %arrayidx5.17 = getelementptr inbounds i8, ptr %26, i64 136
  store ptr %24, ptr %arrayidx5.17, align 8
  %27 = load ptr, ptr %no_reference_picture, align 8
  %28 = load ptr, ptr %arrayidx, align 8
  %arrayidx5.18 = getelementptr inbounds i8, ptr %28, i64 144
  store ptr %27, ptr %arrayidx5.18, align 8
  %29 = load ptr, ptr %arrayidx, align 8
  %arrayidx5.19 = getelementptr inbounds i8, ptr %29, i64 152
  store ptr %27, ptr %arrayidx5.19, align 8
  %30 = load ptr, ptr %no_reference_picture, align 8
  %31 = load ptr, ptr %arrayidx, align 8
  %arrayidx5.20 = getelementptr inbounds i8, ptr %31, i64 160
  store ptr %30, ptr %arrayidx5.20, align 8
  %32 = load ptr, ptr %arrayidx, align 8
  %arrayidx5.21 = getelementptr inbounds i8, ptr %32, i64 168
  store ptr %30, ptr %arrayidx5.21, align 8
  %33 = load ptr, ptr %no_reference_picture, align 8
  %34 = load ptr, ptr %arrayidx, align 8
  %arrayidx5.22 = getelementptr inbounds i8, ptr %34, i64 176
  store ptr %33, ptr %arrayidx5.22, align 8
  %35 = load ptr, ptr %arrayidx, align 8
  %arrayidx5.23 = getelementptr inbounds i8, ptr %35, i64 184
  store ptr %33, ptr %arrayidx5.23, align 8
  %36 = load ptr, ptr %no_reference_picture, align 8
  %37 = load ptr, ptr %arrayidx, align 8
  %arrayidx5.24 = getelementptr inbounds i8, ptr %37, i64 192
  store ptr %36, ptr %arrayidx5.24, align 8
  %38 = load ptr, ptr %arrayidx, align 8
  %arrayidx5.25 = getelementptr inbounds i8, ptr %38, i64 200
  store ptr %36, ptr %arrayidx5.25, align 8
  %39 = load ptr, ptr %no_reference_picture, align 8
  %40 = load ptr, ptr %arrayidx, align 8
  %arrayidx5.26 = getelementptr inbounds i8, ptr %40, i64 208
  store ptr %39, ptr %arrayidx5.26, align 8
  %41 = load ptr, ptr %arrayidx, align 8
  %arrayidx5.27 = getelementptr inbounds i8, ptr %41, i64 216
  store ptr %39, ptr %arrayidx5.27, align 8
  %42 = load ptr, ptr %no_reference_picture, align 8
  %43 = load ptr, ptr %arrayidx, align 8
  %arrayidx5.28 = getelementptr inbounds i8, ptr %43, i64 224
  store ptr %42, ptr %arrayidx5.28, align 8
  %44 = load ptr, ptr %arrayidx, align 8
  %arrayidx5.29 = getelementptr inbounds i8, ptr %44, i64 232
  store ptr %42, ptr %arrayidx5.29, align 8
  %45 = load ptr, ptr %no_reference_picture, align 8
  %46 = load ptr, ptr %arrayidx, align 8
  %arrayidx5.30 = getelementptr inbounds i8, ptr %46, i64 240
  store ptr %45, ptr %arrayidx5.30, align 8
  %47 = load ptr, ptr %arrayidx, align 8
  %arrayidx5.31 = getelementptr inbounds i8, ptr %47, i64 248
  store ptr %45, ptr %arrayidx5.31, align 8
  %48 = load ptr, ptr %no_reference_picture, align 8
  %49 = load ptr, ptr %arrayidx, align 8
  %arrayidx5.32 = getelementptr inbounds i8, ptr %49, i64 256
  store ptr %48, ptr %arrayidx5.32, align 8
  %arrayidx7 = getelementptr inbounds [6 x i8], ptr %listXsize, i64 0, i64 %indvars.iv
  store i8 0, ptr %arrayidx7, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 6
  br i1 %exitcond.not, label %for.cond11.preheader, label %for.cond1.preheader

for.cond11.preheader:                             ; preds = %for.cond1.preheader
  %50 = load i8, ptr %listXsize, align 8
  %cmp14182 = icmp sgt i8 %50, 0
  br i1 %cmp14182, label %for.body16.lr.ph, label %for.end57

for.body16.lr.ph:                                 ; preds = %for.cond11.preheader
  %arrayidx22 = getelementptr inbounds i8, ptr %currSlice, i64 280
  %arrayidx40 = getelementptr inbounds i8, ptr %currSlice, i64 296
  br label %for.body16

for.body16:                                       ; preds = %for.body16.lr.ph, %for.body16
  %indvars.iv192 = phi i64 [ 0, %for.body16.lr.ph ], [ %indvars.iv.next193, %for.body16 ]
  %51 = load ptr, ptr %listX, align 8
  %arrayidx20 = getelementptr inbounds ptr, ptr %51, i64 %indvars.iv192
  %52 = load ptr, ptr %arrayidx20, align 8
  %top_field = getelementptr inbounds i8, ptr %52, i64 224
  %53 = load ptr, ptr %top_field, align 8
  %54 = load ptr, ptr %arrayidx22, align 8
  %55 = shl nuw nsw i64 %indvars.iv192, 1
  %arrayidx24 = getelementptr inbounds ptr, ptr %54, i64 %55
  store ptr %53, ptr %arrayidx24, align 8
  %56 = load ptr, ptr %listX, align 8
  %arrayidx28 = getelementptr inbounds ptr, ptr %56, i64 %indvars.iv192
  %57 = load ptr, ptr %arrayidx28, align 8
  %bottom_field = getelementptr inbounds i8, ptr %57, i64 232
  %58 = load ptr, ptr %bottom_field, align 8
  %59 = load ptr, ptr %arrayidx22, align 8
  %60 = or disjoint i64 %55, 1
  %arrayidx33 = getelementptr inbounds ptr, ptr %59, i64 %60
  store ptr %58, ptr %arrayidx33, align 8
  %61 = load ptr, ptr %listX, align 8
  %arrayidx37 = getelementptr inbounds ptr, ptr %61, i64 %indvars.iv192
  %62 = load ptr, ptr %arrayidx37, align 8
  %bottom_field38 = getelementptr inbounds i8, ptr %62, i64 232
  %63 = load ptr, ptr %bottom_field38, align 8
  %64 = load ptr, ptr %arrayidx40, align 8
  %arrayidx43 = getelementptr inbounds ptr, ptr %64, i64 %55
  store ptr %63, ptr %arrayidx43, align 8
  %65 = load ptr, ptr %listX, align 8
  %arrayidx47 = getelementptr inbounds ptr, ptr %65, i64 %indvars.iv192
  %66 = load ptr, ptr %arrayidx47, align 8
  %top_field48 = getelementptr inbounds i8, ptr %66, i64 224
  %67 = load ptr, ptr %top_field48, align 8
  %68 = load ptr, ptr %arrayidx40, align 8
  %arrayidx54 = getelementptr inbounds ptr, ptr %68, i64 %60
  store ptr %67, ptr %arrayidx54, align 8
  %indvars.iv.next193 = add nuw nsw i64 %indvars.iv192, 1
  %69 = load i8, ptr %listXsize, align 8
  %70 = sext i8 %69 to i64
  %cmp14 = icmp slt i64 %indvars.iv.next193, %70
  br i1 %cmp14, label %for.body16, label %for.end57

for.end57:                                        ; preds = %for.body16, %for.cond11.preheader
  %.lcssa178 = phi i8 [ %50, %for.cond11.preheader ], [ %69, %for.body16 ]
  %mul61 = shl i8 %.lcssa178, 1
  %arrayidx64 = getelementptr inbounds i8, ptr %currSlice, i64 260
  store i8 %mul61, ptr %arrayidx64, align 4
  %arrayidx66 = getelementptr inbounds i8, ptr %currSlice, i64 258
  store i8 %mul61, ptr %arrayidx66, align 2
  %arrayidx69 = getelementptr inbounds i8, ptr %currSlice, i64 257
  %71 = load i8, ptr %arrayidx69, align 1
  %cmp71185 = icmp sgt i8 %71, 0
  br i1 %cmp71185, label %for.body73.lr.ph, label %for.end118

for.body73.lr.ph:                                 ; preds = %for.end57
  %arrayidx75 = getelementptr inbounds i8, ptr %currSlice, i64 272
  %arrayidx80 = getelementptr inbounds i8, ptr %currSlice, i64 288
  %arrayidx101 = getelementptr inbounds i8, ptr %currSlice, i64 304
  br label %for.body73

for.body73:                                       ; preds = %for.body73.lr.ph, %for.body73
  %indvars.iv197 = phi i64 [ 0, %for.body73.lr.ph ], [ %indvars.iv.next198, %for.body73 ]
  %72 = load ptr, ptr %arrayidx75, align 8
  %arrayidx77 = getelementptr inbounds ptr, ptr %72, i64 %indvars.iv197
  %73 = load ptr, ptr %arrayidx77, align 8
  %top_field78 = getelementptr inbounds i8, ptr %73, i64 224
  %74 = load ptr, ptr %top_field78, align 8
  %75 = load ptr, ptr %arrayidx80, align 8
  %76 = shl nuw nsw i64 %indvars.iv197, 1
  %arrayidx83 = getelementptr inbounds ptr, ptr %75, i64 %76
  store ptr %74, ptr %arrayidx83, align 8
  %77 = load ptr, ptr %arrayidx75, align 8
  %arrayidx87 = getelementptr inbounds ptr, ptr %77, i64 %indvars.iv197
  %78 = load ptr, ptr %arrayidx87, align 8
  %bottom_field88 = getelementptr inbounds i8, ptr %78, i64 232
  %79 = load ptr, ptr %bottom_field88, align 8
  %80 = load ptr, ptr %arrayidx80, align 8
  %81 = or disjoint i64 %76, 1
  %arrayidx94 = getelementptr inbounds ptr, ptr %80, i64 %81
  store ptr %79, ptr %arrayidx94, align 8
  %82 = load ptr, ptr %arrayidx75, align 8
  %arrayidx98 = getelementptr inbounds ptr, ptr %82, i64 %indvars.iv197
  %83 = load ptr, ptr %arrayidx98, align 8
  %bottom_field99 = getelementptr inbounds i8, ptr %83, i64 232
  %84 = load ptr, ptr %bottom_field99, align 8
  %85 = load ptr, ptr %arrayidx101, align 8
  %arrayidx104 = getelementptr inbounds ptr, ptr %85, i64 %76
  store ptr %84, ptr %arrayidx104, align 8
  %86 = load ptr, ptr %arrayidx75, align 8
  %arrayidx108 = getelementptr inbounds ptr, ptr %86, i64 %indvars.iv197
  %87 = load ptr, ptr %arrayidx108, align 8
  %top_field109 = getelementptr inbounds i8, ptr %87, i64 224
  %88 = load ptr, ptr %top_field109, align 8
  %89 = load ptr, ptr %arrayidx101, align 8
  %arrayidx115 = getelementptr inbounds ptr, ptr %89, i64 %81
  store ptr %88, ptr %arrayidx115, align 8
  %indvars.iv.next198 = add nuw nsw i64 %indvars.iv197, 1
  %90 = load i8, ptr %arrayidx69, align 1
  %91 = sext i8 %90 to i64
  %cmp71 = icmp slt i64 %indvars.iv.next198, %91
  br i1 %cmp71, label %for.body73, label %for.end118

for.end118:                                       ; preds = %for.body73, %for.end57
  %.lcssa = phi i8 [ %71, %for.end57 ], [ %90, %for.body73 ]
  %mul122 = shl i8 %.lcssa, 1
  %arrayidx125 = getelementptr inbounds i8, ptr %currSlice, i64 261
  store i8 %mul122, ptr %arrayidx125, align 1
  %arrayidx127 = getelementptr inbounds i8, ptr %currSlice, i64 259
  store i8 %mul122, ptr %arrayidx127, align 1
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @get_short_term_pic(ptr nocapture noundef readonly %p_Dpb, i32 noundef %picNum) local_unnamed_addr #13 {
entry:
  %0 = load ptr, ptr %p_Dpb, align 8
  %ref_frames_in_buffer = getelementptr inbounds i8, ptr %p_Dpb, i64 48
  %1 = load i32, ptr %ref_frames_in_buffer, align 8
  %cmp101.not = icmp eq i32 %1, 0
  br i1 %cmp101.not, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %structure = getelementptr inbounds i8, ptr %0, i64 848876
  %2 = load i32, ptr %structure, align 4
  %cmp2 = icmp eq i32 %2, 0
  %fs_ref = getelementptr inbounds i8, ptr %p_Dpb, i64 24
  %3 = load ptr, ptr %fs_ref, align 8
  %wide.trip.count109 = zext i32 %1 to i64
  br i1 %cmp2, label %for.body.us, label %for.body

for.body.us:                                      ; preds = %for.body.lr.ph, %for.inc.us
  %indvars.iv106 = phi i64 [ %indvars.iv.next107, %for.inc.us ], [ 0, %for.body.lr.ph ]
  %arrayidx.us = getelementptr inbounds ptr, ptr %3, i64 %indvars.iv106
  %4 = load ptr, ptr %arrayidx.us, align 8
  %is_reference.us = getelementptr inbounds i8, ptr %4, i64 4
  %5 = load i32, ptr %is_reference.us, align 4
  %cmp3.us = icmp eq i32 %5, 3
  br i1 %cmp3.us, label %if.then4.us, label %for.inc.us

if.then4.us:                                      ; preds = %for.body.us
  %frame.us = getelementptr inbounds i8, ptr %4, i64 48
  %6 = load ptr, ptr %frame.us, align 8
  %is_long_term.us = getelementptr inbounds i8, ptr %6, i64 40
  %7 = load i8, ptr %is_long_term.us, align 8
  %tobool.not.us = icmp eq i8 %7, 0
  br i1 %tobool.not.us, label %land.lhs.true.us, label %for.inc.us

land.lhs.true.us:                                 ; preds = %if.then4.us
  %pic_num.us = getelementptr inbounds i8, ptr %6, i64 28
  %8 = load i32, ptr %pic_num.us, align 4
  %cmp12.us = icmp eq i32 %8, %picNum
  br i1 %cmp12.us, label %cleanup, label %for.inc.us

for.inc.us:                                       ; preds = %land.lhs.true.us, %if.then4.us, %for.body.us
  %indvars.iv.next107 = add nuw nsw i64 %indvars.iv106, 1
  %exitcond110.not = icmp eq i64 %indvars.iv.next107, %wide.trip.count109
  br i1 %exitcond110.not, label %for.end, label %for.body.us

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.body.lr.ph ]
  %arrayidx21 = getelementptr inbounds ptr, ptr %3, i64 %indvars.iv
  %9 = load ptr, ptr %arrayidx21, align 8
  %is_reference22 = getelementptr inbounds i8, ptr %9, i64 4
  %10 = load i32, ptr %is_reference22, align 4
  %and = and i32 %10, 1
  %tobool23.not = icmp eq i32 %and, 0
  br i1 %tobool23.not, label %if.end43, label %if.then24

if.then24:                                        ; preds = %for.body
  %top_field = getelementptr inbounds i8, ptr %9, i64 56
  %11 = load ptr, ptr %top_field, align 8
  %is_long_term28 = getelementptr inbounds i8, ptr %11, i64 40
  %12 = load i8, ptr %is_long_term28, align 8
  %tobool29.not = icmp eq i8 %12, 0
  br i1 %tobool29.not, label %land.lhs.true30, label %if.end43

land.lhs.true30:                                  ; preds = %if.then24
  %pic_num35 = getelementptr inbounds i8, ptr %11, i64 28
  %13 = load i32, ptr %pic_num35, align 4
  %cmp36 = icmp eq i32 %13, %picNum
  br i1 %cmp36, label %cleanup, label %if.end43

if.end43:                                         ; preds = %if.then24, %land.lhs.true30, %for.body
  %and48 = and i32 %10, 2
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %for.inc, label %if.then50

if.then50:                                        ; preds = %if.end43
  %bottom_field = getelementptr inbounds i8, ptr %9, i64 64
  %14 = load ptr, ptr %bottom_field, align 8
  %is_long_term54 = getelementptr inbounds i8, ptr %14, i64 40
  %15 = load i8, ptr %is_long_term54, align 8
  %tobool55.not = icmp eq i8 %15, 0
  br i1 %tobool55.not, label %land.lhs.true56, label %for.inc

land.lhs.true56:                                  ; preds = %if.then50
  %pic_num61 = getelementptr inbounds i8, ptr %14, i64 28
  %16 = load i32, ptr %pic_num61, align 4
  %cmp62 = icmp eq i32 %16, %picNum
  br i1 %cmp62, label %cleanup, label %for.inc

for.inc:                                          ; preds = %if.then50, %land.lhs.true56, %if.end43
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count109
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %for.inc.us, %entry
  %no_reference_picture = getelementptr inbounds i8, ptr %0, i64 856488
  %17 = load ptr, ptr %no_reference_picture, align 8
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true30, %land.lhs.true56, %land.lhs.true.us, %for.end
  %retval.0 = phi ptr [ %17, %for.end ], [ %6, %land.lhs.true.us ], [ %14, %land.lhs.true56 ], [ %11, %land.lhs.true30 ]
  ret ptr %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @get_long_term_pic(ptr nocapture noundef readonly %p_Dpb, i32 noundef %LongtermPicNum) local_unnamed_addr #13 {
entry:
  %ltref_frames_in_buffer = getelementptr inbounds i8, ptr %p_Dpb, i64 52
  %0 = load i32, ptr %ltref_frames_in_buffer, align 4
  %cmp105.not = icmp eq i32 %0, 0
  br i1 %cmp105.not, label %cleanup, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %1 = load ptr, ptr %p_Dpb, align 8
  %structure = getelementptr inbounds i8, ptr %1, i64 848876
  %2 = load i32, ptr %structure, align 4
  %cmp2 = icmp eq i32 %2, 0
  %fs_ltref = getelementptr inbounds i8, ptr %p_Dpb, i64 32
  %3 = load ptr, ptr %fs_ltref, align 8
  %wide.trip.count117 = zext i32 %0 to i64
  br i1 %cmp2, label %for.body.us, label %for.body

for.body.us:                                      ; preds = %for.body.lr.ph, %for.inc.us
  %indvars.iv114 = phi i64 [ %indvars.iv.next115, %for.inc.us ], [ 0, %for.body.lr.ph ]
  %arrayidx.us = getelementptr inbounds ptr, ptr %3, i64 %indvars.iv114
  %4 = load ptr, ptr %arrayidx.us, align 8
  %is_reference.us = getelementptr inbounds i8, ptr %4, i64 4
  %5 = load i32, ptr %is_reference.us, align 4
  %cmp3.us = icmp eq i32 %5, 3
  br i1 %cmp3.us, label %if.then4.us, label %for.inc.us

if.then4.us:                                      ; preds = %for.body.us
  %frame.us = getelementptr inbounds i8, ptr %4, i64 48
  %6 = load ptr, ptr %frame.us, align 8
  %is_long_term.us = getelementptr inbounds i8, ptr %6, i64 40
  %7 = load i8, ptr %is_long_term.us, align 8
  %tobool.not.us = icmp eq i8 %7, 0
  br i1 %tobool.not.us, label %for.inc.us, label %land.lhs.true.us

land.lhs.true.us:                                 ; preds = %if.then4.us
  %long_term_pic_num.us = getelementptr inbounds i8, ptr %6, i64 32
  %8 = load i32, ptr %long_term_pic_num.us, align 8
  %cmp12.us = icmp eq i32 %8, %LongtermPicNum
  br i1 %cmp12.us, label %cleanup, label %for.inc.us

for.inc.us:                                       ; preds = %land.lhs.true.us, %if.then4.us, %for.body.us
  %indvars.iv.next115 = add nuw nsw i64 %indvars.iv114, 1
  %exitcond118.not = icmp eq i64 %indvars.iv.next115, %wide.trip.count117
  br i1 %exitcond118.not, label %cleanup, label %for.body.us

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.body.lr.ph ]
  %arrayidx22 = getelementptr inbounds ptr, ptr %3, i64 %indvars.iv
  %9 = load ptr, ptr %arrayidx22, align 8
  %is_reference23 = getelementptr inbounds i8, ptr %9, i64 4
  %10 = load i32, ptr %is_reference23, align 4
  %and = and i32 %10, 1
  %tobool24.not = icmp eq i32 %and, 0
  br i1 %tobool24.not, label %if.end46, label %if.then25

if.then25:                                        ; preds = %for.body
  %top_field = getelementptr inbounds i8, ptr %9, i64 56
  %11 = load ptr, ptr %top_field, align 8
  %is_long_term29 = getelementptr inbounds i8, ptr %11, i64 40
  %12 = load i8, ptr %is_long_term29, align 8
  %tobool31.not = icmp eq i8 %12, 0
  br i1 %tobool31.not, label %if.end46, label %land.lhs.true32

land.lhs.true32:                                  ; preds = %if.then25
  %long_term_pic_num37 = getelementptr inbounds i8, ptr %11, i64 32
  %13 = load i32, ptr %long_term_pic_num37, align 8
  %cmp38 = icmp eq i32 %13, %LongtermPicNum
  br i1 %cmp38, label %cleanup, label %if.end46

if.end46:                                         ; preds = %if.then25, %land.lhs.true32, %for.body
  %and51 = and i32 %10, 2
  %tobool52.not = icmp eq i32 %and51, 0
  br i1 %tobool52.not, label %for.inc, label %if.then53

if.then53:                                        ; preds = %if.end46
  %bottom_field = getelementptr inbounds i8, ptr %9, i64 64
  %14 = load ptr, ptr %bottom_field, align 8
  %is_long_term57 = getelementptr inbounds i8, ptr %14, i64 40
  %15 = load i8, ptr %is_long_term57, align 8
  %tobool59.not = icmp eq i8 %15, 0
  br i1 %tobool59.not, label %for.inc, label %land.lhs.true60

land.lhs.true60:                                  ; preds = %if.then53
  %long_term_pic_num65 = getelementptr inbounds i8, ptr %14, i64 32
  %16 = load i32, ptr %long_term_pic_num65, align 8
  %cmp66 = icmp eq i32 %16, %LongtermPicNum
  br i1 %cmp66, label %cleanup, label %for.inc

for.inc:                                          ; preds = %if.then53, %land.lhs.true60, %if.end46
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count117
  br i1 %exitcond.not, label %cleanup, label %for.body

cleanup:                                          ; preds = %land.lhs.true32, %land.lhs.true60, %for.inc, %land.lhs.true.us, %for.inc.us, %entry
  %retval.0 = phi ptr [ null, %entry ], [ null, %for.inc.us ], [ %6, %land.lhs.true.us ], [ null, %for.inc ], [ %14, %land.lhs.true60 ], [ %11, %land.lhs.true32 ]
  ret ptr %retval.0
}

; Function Attrs: nounwind uwtable
define dso_local void @reorder_ref_pic_list(ptr noundef %currSlice, i32 noundef %cur_list) local_unnamed_addr #1 {
entry:
  %refIdxLX = alloca i32, align 4
  %reordering_of_pic_nums_idc1 = getelementptr inbounds i8, ptr %currSlice, i64 1112
  %idxprom = sext i32 %cur_list to i64
  %arrayidx = getelementptr inbounds [2 x ptr], ptr %reordering_of_pic_nums_idc1, i64 0, i64 %idxprom
  %0 = load ptr, ptr %arrayidx, align 8
  %abs_diff_pic_num_minus12 = getelementptr inbounds i8, ptr %currSlice, i64 1128
  %arrayidx4 = getelementptr inbounds [2 x ptr], ptr %abs_diff_pic_num_minus12, i64 0, i64 %idxprom
  %1 = load ptr, ptr %arrayidx4, align 8
  %long_term_pic_idx5 = getelementptr inbounds i8, ptr %currSlice, i64 1144
  %arrayidx7 = getelementptr inbounds [2 x ptr], ptr %long_term_pic_idx5, i64 0, i64 %idxprom
  %2 = load ptr, ptr %arrayidx7, align 8
  %num_ref_idx_active = getelementptr inbounds i8, ptr %currSlice, i64 136
  %arrayidx9 = getelementptr inbounds [2 x i32], ptr %num_ref_idx_active, i64 0, i64 %idxprom
  %3 = load i32, ptr %arrayidx9, align 4
  %sub = add nsw i32 %3, -1
  %4 = load ptr, ptr %currSlice, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %refIdxLX) #20
  store i32 0, ptr %refIdxLX, align 4
  %structure = getelementptr inbounds i8, ptr %4, i64 848876
  %5 = load i32, ptr %structure, align 4
  %cmp = icmp eq i32 %5, 0
  %MaxFrameNum = getelementptr inbounds i8, ptr %4, i64 848992
  %6 = load i32, ptr %MaxFrameNum, align 8
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %frame_num = getelementptr inbounds i8, ptr %currSlice, i64 172
  %7 = load i32, ptr %frame_num, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %mul = shl nsw i32 %6, 1
  %frame_num12 = getelementptr inbounds i8, ptr %currSlice, i64 172
  %8 = load i32, ptr %frame_num12, align 4
  %mul13 = shl i32 %8, 1
  %add = or disjoint i32 %mul13, 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %maxPicNum.0 = phi i32 [ %6, %if.then ], [ %mul, %if.else ]
  %currPicNum.0 = phi i32 [ %7, %if.then ], [ %add, %if.else ]
  %9 = load i32, ptr %0, align 4
  %cmp16.not133 = icmp eq i32 %9, 3
  br i1 %cmp16.not133, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end
  %listX = getelementptr inbounds i8, ptr %currSlice, i64 264
  %arrayidx73 = getelementptr inbounds [6 x ptr], ptr %listX, i64 0, i64 %idxprom
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %10 = phi i32 [ %9, %for.body.lr.ph ], [ %15, %for.inc ]
  %picNumLXPred.0135 = phi i32 [ %currPicNum.0, %for.body.lr.ph ], [ %picNumLXPred.1, %for.inc ]
  %cmp19 = icmp sgt i32 %10, 3
  br i1 %cmp19, label %if.then20, label %if.end21

if.then20:                                        ; preds = %for.body
  %arrayidx15137 = getelementptr inbounds i32, ptr %0, i64 %indvars.iv
  call void @error(ptr noundef nonnull @.str.19, i32 noundef 500) #20
  %.pr = load i32, ptr %arrayidx15137, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %for.body
  %11 = phi i32 [ %.pr, %if.then20 ], [ %10, %for.body ]
  %cmp24 = icmp slt i32 %11, 2
  br i1 %cmp24, label %if.then25, label %if.else71

if.then25:                                        ; preds = %if.end21
  %cmp28 = icmp eq i32 %11, 0
  %arrayidx31 = getelementptr inbounds i32, ptr %1, i64 %indvars.iv
  %12 = load i32, ptr %arrayidx31, align 4
  br i1 %cmp28, label %if.then29, label %if.else47

if.then29:                                        ; preds = %if.then25
  %add32.neg = xor i32 %12, -1
  %sub33 = add i32 %picNumLXPred.0135, %add32.neg
  %cmp34 = icmp slt i32 %sub33, 0
  %add40 = select i1 %cmp34, i32 %maxPicNum.0, i32 0
  %spec.select = add nsw i32 %add40, %sub33
  br label %if.end65

if.else47:                                        ; preds = %if.then25
  %add50 = add i32 %picNumLXPred.0135, 1
  %add51 = add i32 %add50, %12
  %cmp52.not = icmp slt i32 %add51, %maxPicNum.0
  %sub58 = select i1 %cmp52.not, i32 0, i32 %maxPicNum.0
  %spec.select132 = sub nsw i32 %add51, %sub58
  br label %if.end65

if.end65:                                         ; preds = %if.else47, %if.then29
  %picNumLXNoWrap.0 = phi i32 [ %spec.select, %if.then29 ], [ %spec.select132, %if.else47 ]
  %cmp66 = icmp sgt i32 %picNumLXNoWrap.0, %currPicNum.0
  %sub68 = select i1 %cmp66, i32 %maxPicNum.0, i32 0
  %picNumLX.0 = sub nsw i32 %picNumLXNoWrap.0, %sub68
  call void @reorder_short_term(ptr noundef nonnull %currSlice, i32 noundef %cur_list, i32 noundef %sub, i32 noundef %picNumLX.0, ptr noundef nonnull %refIdxLX, i32 noundef -1) #20
  br label %for.inc

if.else71:                                        ; preds = %if.end21
  %13 = load ptr, ptr %arrayidx73, align 8
  %arrayidx75 = getelementptr inbounds i32, ptr %2, i64 %indvars.iv
  %14 = load i32, ptr %arrayidx75, align 4
  call void @reorder_long_term(ptr noundef nonnull %currSlice, ptr noundef %13, i32 noundef %sub, i32 noundef %14, ptr noundef nonnull %refIdxLX, i32 noundef -1) #20
  br label %for.inc

for.inc:                                          ; preds = %if.end65, %if.else71
  %picNumLXPred.1 = phi i32 [ %picNumLXNoWrap.0, %if.end65 ], [ %picNumLXPred.0135, %if.else71 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %arrayidx15 = getelementptr inbounds i32, ptr %0, i64 %indvars.iv.next
  %15 = load i32, ptr %arrayidx15, align 4
  %cmp16.not = icmp eq i32 %15, 3
  br i1 %cmp16.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %if.end
  %conv = trunc i32 %3 to i8
  %listXsize = getelementptr inbounds i8, ptr %currSlice, i64 256
  %arrayidx79 = getelementptr inbounds [6 x i8], ptr %listXsize, i64 0, i64 %idxprom
  store i8 %conv, ptr %arrayidx79, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %refIdxLX) #20
  ret void
}

declare void @reorder_short_term(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @reorder_long_term(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @update_ref_list(ptr nocapture noundef %p_Dpb, i32 noundef %curr_view_id) local_unnamed_addr #9 {
entry:
  %used_size = getelementptr inbounds i8, ptr %p_Dpb, i64 44
  %0 = load i32, ptr %used_size, align 4
  %cmp32.not = icmp eq i32 %0, 0
  br i1 %cmp32.not, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %fs = getelementptr inbounds i8, ptr %p_Dpb, i64 16
  %fs_ref = getelementptr inbounds i8, ptr %p_Dpb, i64 24
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %1 = phi i32 [ %0, %for.body.lr.ph ], [ %16, %for.inc ]
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %j.034 = phi i32 [ 0, %for.body.lr.ph ], [ %j.1, %for.inc ]
  %2 = load ptr, ptr %fs, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %2, i64 %indvars.iv
  %3 = load ptr, ptr %arrayidx, align 8
  %4 = load i32, ptr %3, align 8
  %cmp.i = icmp eq i32 %4, 3
  br i1 %cmp.i, label %if.then.i, label %if.end4.i

if.then.i:                                        ; preds = %for.body
  %frame.i = getelementptr inbounds i8, ptr %3, i64 48
  %5 = load ptr, ptr %frame.i, align 8
  %used_for_reference.i = getelementptr inbounds i8, ptr %5, i64 44
  %6 = load i32, ptr %used_for_reference.i, align 4
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %if.then7.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.then.i
  %is_long_term.i = getelementptr inbounds i8, ptr %5, i64 40
  %7 = load i8, ptr %is_long_term.i, align 8
  %tobool2.not.i = icmp eq i8 %7, 0
  br i1 %tobool2.not.i, label %land.lhs.true, label %if.then7.i

if.end4.i:                                        ; preds = %for.body
  %and.i = and i32 %4, 1
  %tobool6.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool6.not.i, label %if.end20.i, label %if.then7.i

if.then7.i:                                       ; preds = %if.end4.i, %land.lhs.true.i, %if.then.i
  %top_field.i = getelementptr inbounds i8, ptr %3, i64 56
  %8 = load ptr, ptr %top_field.i, align 8
  %tobool8.not.i = icmp eq ptr %8, null
  br i1 %tobool8.not.i, label %if.end20.i, label %if.then9.i

if.then9.i:                                       ; preds = %if.then7.i
  %used_for_reference11.i = getelementptr inbounds i8, ptr %8, i64 44
  %9 = load i32, ptr %used_for_reference11.i, align 4
  %tobool12.not.i = icmp eq i32 %9, 0
  br i1 %tobool12.not.i, label %if.end20.i, label %land.lhs.true13.i

land.lhs.true13.i:                                ; preds = %if.then9.i
  %is_long_term15.i = getelementptr inbounds i8, ptr %8, i64 40
  %10 = load i8, ptr %is_long_term15.i, align 8
  %tobool16.not.i = icmp eq i8 %10, 0
  br i1 %tobool16.not.i, label %land.lhs.true, label %if.end20.i

if.end20.i:                                       ; preds = %land.lhs.true13.i, %if.then9.i, %if.then7.i, %if.end4.i
  %and22.i = and i32 %4, 2
  %tobool23.not.i = icmp eq i32 %and22.i, 0
  br i1 %tobool23.not.i, label %for.inc, label %if.then24.i

if.then24.i:                                      ; preds = %if.end20.i
  %bottom_field.i = getelementptr inbounds i8, ptr %3, i64 64
  %11 = load ptr, ptr %bottom_field.i, align 8
  %tobool25.not.i = icmp eq ptr %11, null
  br i1 %tobool25.not.i, label %for.inc, label %if.then26.i

if.then26.i:                                      ; preds = %if.then24.i
  %used_for_reference28.i = getelementptr inbounds i8, ptr %11, i64 44
  %12 = load i32, ptr %used_for_reference28.i, align 4
  %tobool29.not.i = icmp eq i32 %12, 0
  br i1 %tobool29.not.i, label %for.inc, label %land.lhs.true30.i

land.lhs.true30.i:                                ; preds = %if.then26.i
  %is_long_term32.i = getelementptr inbounds i8, ptr %11, i64 40
  %13 = load i8, ptr %is_long_term32.i, align 8
  %tobool33.not.i = icmp eq i8 %13, 0
  br i1 %tobool33.not.i, label %land.lhs.true, label %for.inc

land.lhs.true:                                    ; preds = %land.lhs.true.i, %land.lhs.true13.i, %land.lhs.true30.i
  %view_id = getelementptr inbounds i8, ptr %3, i64 72
  %14 = load i32, ptr %view_id, align 8
  %cmp4 = icmp eq i32 %14, %curr_view_id
  br i1 %cmp4, label %if.then, label %for.inc

if.then:                                          ; preds = %land.lhs.true
  %15 = load ptr, ptr %fs_ref, align 8
  %inc = add i32 %j.034, 1
  %idxprom8 = zext i32 %j.034 to i64
  %arrayidx9 = getelementptr inbounds ptr, ptr %15, i64 %idxprom8
  store ptr %3, ptr %arrayidx9, align 8
  %.pre = load i32, ptr %used_size, align 4
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true30.i, %if.then26.i, %if.then24.i, %if.end20.i, %land.lhs.true, %if.then
  %16 = phi i32 [ %.pre, %if.then ], [ %1, %land.lhs.true ], [ %1, %if.end20.i ], [ %1, %if.then24.i ], [ %1, %if.then26.i ], [ %1, %land.lhs.true30.i ]
  %j.1 = phi i32 [ %inc, %if.then ], [ %j.034, %land.lhs.true ], [ %j.034, %if.end20.i ], [ %j.034, %if.then24.i ], [ %j.034, %if.then26.i ], [ %j.034, %land.lhs.true30.i ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %17 = zext i32 %16 to i64
  %cmp = icmp ult i64 %indvars.iv.next, %17
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc, %entry
  %j.0.lcssa = phi i32 [ 0, %entry ], [ %j.1, %for.inc ]
  %ref_frames_in_buffer = getelementptr inbounds i8, ptr %p_Dpb, i64 48
  store i32 %j.0.lcssa, ptr %ref_frames_in_buffer, align 8
  %size = getelementptr inbounds i8, ptr %p_Dpb, i64 40
  %18 = load i32, ptr %size, align 8
  %cmp1135 = icmp ult i32 %j.0.lcssa, %18
  br i1 %cmp1135, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %for.end
  %fs_ref12 = getelementptr inbounds i8, ptr %p_Dpb, i64 24
  %19 = zext i32 %j.0.lcssa to i64
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %indvars.iv38 = phi i64 [ %19, %while.body.lr.ph ], [ %indvars.iv.next39, %while.body ]
  %20 = load ptr, ptr %fs_ref12, align 8
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1
  %arrayidx15 = getelementptr inbounds ptr, ptr %20, i64 %indvars.iv38
  store ptr null, ptr %arrayidx15, align 8
  %21 = load i32, ptr %size, align 8
  %22 = zext i32 %21 to i64
  %cmp11 = icmp ult i64 %indvars.iv.next39, %22
  br i1 %cmp11, label %while.body, label %while.end

while.end:                                        ; preds = %while.body, %for.end
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @update_ltref_list(ptr nocapture noundef %p_Dpb, i32 noundef %curr_view_id) local_unnamed_addr #9 {
entry:
  %used_size = getelementptr inbounds i8, ptr %p_Dpb, i64 44
  %0 = load i32, ptr %used_size, align 4
  %cmp32.not = icmp eq i32 %0, 0
  br i1 %cmp32.not, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %fs = getelementptr inbounds i8, ptr %p_Dpb, i64 16
  %fs_ltref = getelementptr inbounds i8, ptr %p_Dpb, i64 32
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %1 = phi i32 [ %0, %for.body.lr.ph ], [ %16, %for.inc ]
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %j.034 = phi i32 [ 0, %for.body.lr.ph ], [ %j.1, %for.inc ]
  %2 = load ptr, ptr %fs, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %2, i64 %indvars.iv
  %3 = load ptr, ptr %arrayidx, align 8
  %4 = load i32, ptr %3, align 8
  %cmp.i = icmp eq i32 %4, 3
  br i1 %cmp.i, label %if.then.i, label %if.end4.i

if.then.i:                                        ; preds = %for.body
  %frame.i = getelementptr inbounds i8, ptr %3, i64 48
  %5 = load ptr, ptr %frame.i, align 8
  %used_for_reference.i = getelementptr inbounds i8, ptr %5, i64 44
  %6 = load i32, ptr %used_for_reference.i, align 4
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %if.then7.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.then.i
  %is_long_term.i = getelementptr inbounds i8, ptr %5, i64 40
  %7 = load i8, ptr %is_long_term.i, align 8
  %tobool2.not.i = icmp eq i8 %7, 0
  br i1 %tobool2.not.i, label %if.then7.i, label %land.lhs.true

if.end4.i:                                        ; preds = %for.body
  %and.i = and i32 %4, 1
  %tobool6.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool6.not.i, label %if.end21.i, label %if.then7.i

if.then7.i:                                       ; preds = %if.end4.i, %land.lhs.true.i, %if.then.i
  %top_field.i = getelementptr inbounds i8, ptr %3, i64 56
  %8 = load ptr, ptr %top_field.i, align 8
  %tobool8.not.i = icmp eq ptr %8, null
  br i1 %tobool8.not.i, label %if.end21.i, label %if.then9.i

if.then9.i:                                       ; preds = %if.then7.i
  %used_for_reference11.i = getelementptr inbounds i8, ptr %8, i64 44
  %9 = load i32, ptr %used_for_reference11.i, align 4
  %tobool12.not.i = icmp eq i32 %9, 0
  br i1 %tobool12.not.i, label %if.end21.i, label %land.lhs.true13.i

land.lhs.true13.i:                                ; preds = %if.then9.i
  %is_long_term15.i = getelementptr inbounds i8, ptr %8, i64 40
  %10 = load i8, ptr %is_long_term15.i, align 8
  %tobool17.not.i = icmp eq i8 %10, 0
  br i1 %tobool17.not.i, label %if.end21.i, label %land.lhs.true

if.end21.i:                                       ; preds = %land.lhs.true13.i, %if.then9.i, %if.then7.i, %if.end4.i
  %and23.i = and i32 %4, 2
  %tobool24.not.i = icmp eq i32 %and23.i, 0
  br i1 %tobool24.not.i, label %for.inc, label %if.then25.i

if.then25.i:                                      ; preds = %if.end21.i
  %bottom_field.i = getelementptr inbounds i8, ptr %3, i64 64
  %11 = load ptr, ptr %bottom_field.i, align 8
  %tobool26.not.i = icmp eq ptr %11, null
  br i1 %tobool26.not.i, label %for.inc, label %if.then27.i

if.then27.i:                                      ; preds = %if.then25.i
  %used_for_reference29.i = getelementptr inbounds i8, ptr %11, i64 44
  %12 = load i32, ptr %used_for_reference29.i, align 4
  %tobool30.not.i = icmp eq i32 %12, 0
  br i1 %tobool30.not.i, label %for.inc, label %land.lhs.true31.i

land.lhs.true31.i:                                ; preds = %if.then27.i
  %is_long_term33.i = getelementptr inbounds i8, ptr %11, i64 40
  %13 = load i8, ptr %is_long_term33.i, align 8
  %tobool35.not.i = icmp eq i8 %13, 0
  br i1 %tobool35.not.i, label %for.inc, label %land.lhs.true

land.lhs.true:                                    ; preds = %land.lhs.true.i, %land.lhs.true13.i, %land.lhs.true31.i
  %view_id = getelementptr inbounds i8, ptr %3, i64 72
  %14 = load i32, ptr %view_id, align 8
  %cmp4 = icmp eq i32 %14, %curr_view_id
  br i1 %cmp4, label %if.then, label %for.inc

if.then:                                          ; preds = %land.lhs.true
  %15 = load ptr, ptr %fs_ltref, align 8
  %inc = add i32 %j.034, 1
  %idxprom8 = zext i32 %j.034 to i64
  %arrayidx9 = getelementptr inbounds ptr, ptr %15, i64 %idxprom8
  store ptr %3, ptr %arrayidx9, align 8
  %.pre = load i32, ptr %used_size, align 4
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true31.i, %if.then27.i, %if.then25.i, %if.end21.i, %land.lhs.true, %if.then
  %16 = phi i32 [ %.pre, %if.then ], [ %1, %land.lhs.true ], [ %1, %if.end21.i ], [ %1, %if.then25.i ], [ %1, %if.then27.i ], [ %1, %land.lhs.true31.i ]
  %j.1 = phi i32 [ %inc, %if.then ], [ %j.034, %land.lhs.true ], [ %j.034, %if.end21.i ], [ %j.034, %if.then25.i ], [ %j.034, %if.then27.i ], [ %j.034, %land.lhs.true31.i ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %17 = zext i32 %16 to i64
  %cmp = icmp ult i64 %indvars.iv.next, %17
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc, %entry
  %j.0.lcssa = phi i32 [ 0, %entry ], [ %j.1, %for.inc ]
  %ltref_frames_in_buffer = getelementptr inbounds i8, ptr %p_Dpb, i64 52
  store i32 %j.0.lcssa, ptr %ltref_frames_in_buffer, align 4
  %size = getelementptr inbounds i8, ptr %p_Dpb, i64 40
  %18 = load i32, ptr %size, align 8
  %cmp1135 = icmp ult i32 %j.0.lcssa, %18
  br i1 %cmp1135, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %for.end
  %fs_ltref12 = getelementptr inbounds i8, ptr %p_Dpb, i64 32
  %19 = zext i32 %j.0.lcssa to i64
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %indvars.iv38 = phi i64 [ %19, %while.body.lr.ph ], [ %indvars.iv.next39, %while.body ]
  %20 = load ptr, ptr %fs_ltref12, align 8
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1
  %arrayidx15 = getelementptr inbounds ptr, ptr %20, i64 %indvars.iv38
  store ptr null, ptr %arrayidx15, align 8
  %21 = load i32, ptr %size, align 8
  %22 = zext i32 %21 to i64
  %cmp11 = icmp ult i64 %indvars.iv.next39, %22
  br i1 %cmp11, label %while.body, label %while.end

while.end:                                        ; preds = %while.body, %for.end
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @mm_update_max_long_term_frame_idx(ptr nocapture noundef %p_Dpb, i32 noundef %max_long_term_frame_idx_plus1, i32 noundef %curr_view_id) local_unnamed_addr #1 {
entry:
  %0 = load ptr, ptr %p_Dpb, align 8
  %call = tail call i32 @GetVOIdx(ptr noundef %0, i32 noundef %curr_view_id) #20
  %sub = add nsw i32 %max_long_term_frame_idx_plus1, -1
  %max_long_term_pic_idx = getelementptr inbounds i8, ptr %p_Dpb, i64 64
  %idxprom = sext i32 %call to i64
  %arrayidx = getelementptr inbounds [1024 x i32], ptr %max_long_term_pic_idx, i64 0, i64 %idxprom
  store i32 %sub, ptr %arrayidx, align 4
  %ltref_frames_in_buffer = getelementptr inbounds i8, ptr %p_Dpb, i64 52
  %1 = load i32, ptr %ltref_frames_in_buffer, align 4
  %cmp26.not = icmp eq i32 %1, 0
  br i1 %cmp26.not, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %fs_ltref = getelementptr inbounds i8, ptr %p_Dpb, i64 32
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %2 = phi i32 [ %1, %for.body.lr.ph ], [ %22, %for.inc ]
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %3 = load ptr, ptr %fs_ltref, align 8
  %arrayidx2 = getelementptr inbounds ptr, ptr %3, i64 %indvars.iv
  %4 = load ptr, ptr %arrayidx2, align 8
  %long_term_frame_idx = getelementptr inbounds i8, ptr %4, i64 32
  %5 = load i32, ptr %long_term_frame_idx, align 8
  %6 = load i32, ptr %arrayidx, align 4
  %cmp6 = icmp sgt i32 %5, %6
  br i1 %cmp6, label %land.lhs.true, label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %view_id = getelementptr inbounds i8, ptr %4, i64 72
  %7 = load i32, ptr %view_id, align 8
  %cmp10 = icmp eq i32 %7, %curr_view_id
  br i1 %cmp10, label %if.then, label %for.inc

if.then:                                          ; preds = %land.lhs.true
  %8 = load i32, ptr %4, align 8
  %and.i = and i32 %8, 1
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end5.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  %top_field.i = getelementptr inbounds i8, ptr %4, i64 56
  %9 = load ptr, ptr %top_field.i, align 8
  %tobool1.not.i = icmp eq ptr %9, null
  br i1 %tobool1.not.i, label %if.end5.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.then.i
  %used_for_reference.i = getelementptr inbounds i8, ptr %9, i64 44
  store i32 0, ptr %used_for_reference.i, align 4
  %10 = load ptr, ptr %top_field.i, align 8
  %is_long_term.i = getelementptr inbounds i8, ptr %10, i64 40
  store i8 0, ptr %is_long_term.i, align 8
  %.pre.i = load i32, ptr %4, align 8
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then2.i, %if.then.i, %if.then
  %11 = phi i32 [ %8, %if.then.i ], [ %.pre.i, %if.then2.i ], [ %8, %if.then ]
  %and7.i = and i32 %11, 2
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  br i1 %tobool8.not.i, label %if.end17.i, label %if.then9.i

if.then9.i:                                       ; preds = %if.end5.i
  %bottom_field.i = getelementptr inbounds i8, ptr %4, i64 64
  %12 = load ptr, ptr %bottom_field.i, align 8
  %tobool10.not.i = icmp eq ptr %12, null
  br i1 %tobool10.not.i, label %if.end17.i, label %if.then11.i

if.then11.i:                                      ; preds = %if.then9.i
  %used_for_reference13.i = getelementptr inbounds i8, ptr %12, i64 44
  store i32 0, ptr %used_for_reference13.i, align 4
  %13 = load ptr, ptr %bottom_field.i, align 8
  %is_long_term15.i = getelementptr inbounds i8, ptr %13, i64 40
  store i8 0, ptr %is_long_term15.i, align 8
  %.pr.pre.i = load i32, ptr %4, align 8
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then11.i, %if.then9.i, %if.end5.i
  %14 = phi i32 [ %11, %if.end5.i ], [ %.pr.pre.i, %if.then11.i ], [ %11, %if.then9.i ]
  %cmp.i = icmp eq i32 %14, 3
  br i1 %cmp.i, label %if.then19.i, label %unmark_for_long_term_reference.exit

if.then19.i:                                      ; preds = %if.end17.i
  %top_field20.i = getelementptr inbounds i8, ptr %4, i64 56
  %15 = load ptr, ptr %top_field20.i, align 8
  %tobool21.not.i = icmp eq ptr %15, null
  br i1 %tobool21.not.i, label %if.end33.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.then19.i
  %bottom_field22.i = getelementptr inbounds i8, ptr %4, i64 64
  %16 = load ptr, ptr %bottom_field22.i, align 8
  %tobool23.not.i = icmp eq ptr %16, null
  br i1 %tobool23.not.i, label %if.end33.i, label %if.then24.i

if.then24.i:                                      ; preds = %land.lhs.true.i
  %used_for_reference26.i = getelementptr inbounds i8, ptr %15, i64 44
  store i32 0, ptr %used_for_reference26.i, align 4
  %17 = load ptr, ptr %top_field20.i, align 8
  %is_long_term28.i = getelementptr inbounds i8, ptr %17, i64 40
  store i8 0, ptr %is_long_term28.i, align 8
  %18 = load ptr, ptr %bottom_field22.i, align 8
  %used_for_reference30.i = getelementptr inbounds i8, ptr %18, i64 44
  store i32 0, ptr %used_for_reference30.i, align 4
  %19 = load ptr, ptr %bottom_field22.i, align 8
  %is_long_term32.i = getelementptr inbounds i8, ptr %19, i64 40
  store i8 0, ptr %is_long_term32.i, align 8
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.then24.i, %land.lhs.true.i, %if.then19.i
  %frame.i = getelementptr inbounds i8, ptr %4, i64 48
  %20 = load ptr, ptr %frame.i, align 8
  %used_for_reference34.i = getelementptr inbounds i8, ptr %20, i64 44
  store i32 0, ptr %used_for_reference34.i, align 4
  %21 = load ptr, ptr %frame.i, align 8
  %is_long_term36.i = getelementptr inbounds i8, ptr %21, i64 40
  store i8 0, ptr %is_long_term36.i, align 8
  br label %unmark_for_long_term_reference.exit

unmark_for_long_term_reference.exit:              ; preds = %if.end17.i, %if.end33.i
  %is_reference.i = getelementptr inbounds i8, ptr %4, i64 4
  store i32 0, ptr %is_reference.i, align 4
  %is_long_term38.i = getelementptr inbounds i8, ptr %4, i64 8
  store i32 0, ptr %is_long_term38.i, align 8
  %.pre = load i32, ptr %ltref_frames_in_buffer, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body, %land.lhs.true, %unmark_for_long_term_reference.exit
  %22 = phi i32 [ %2, %for.body ], [ %2, %land.lhs.true ], [ %.pre, %unmark_for_long_term_reference.exit ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %23 = zext i32 %22 to i64
  %cmp = icmp ult i64 %indvars.iv.next, %23
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc, %entry
  ret void
}

declare i32 @GetVOIdx(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @store_picture_in_dpb(ptr noundef %p_Dpb, ptr noundef %p) local_unnamed_addr #1 {
entry:
  %0 = load ptr, ptr %p_Dpb, align 8
  %last_has_mmco_5 = getelementptr inbounds i8, ptr %0, i64 849028
  store i32 0, ptr %last_has_mmco_5, align 4
  %1 = load i32, ptr %p, align 8
  %cmp = icmp eq i32 %1, 2
  %conv = zext i1 %cmp to i32
  %last_pic_bottom_field = getelementptr inbounds i8, ptr %0, i64 849032
  store i32 %conv, ptr %last_pic_bottom_field, align 8
  %idr_flag = getelementptr inbounds i8, ptr %p, i64 252
  %2 = load i32, ptr %idr_flag, align 4
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %p_Dpb, align 8
  %view_id.i = getelementptr inbounds i8, ptr %p, i64 344
  %4 = load i32, ptr %view_id.i, align 8
  %call.i = tail call i32 @GetVOIdx(ptr noundef %3, i32 noundef %4) #20
  %ppSliceList.i = getelementptr inbounds i8, ptr %3, i64 848736
  %5 = load ptr, ptr %ppSliceList.i, align 8
  %6 = load ptr, ptr %5, align 8
  %svc_extension_flag2.i = getelementptr inbounds i8, ptr %6, i64 32
  %7 = load i32, ptr %svc_extension_flag2.i, align 8
  %no_output_of_prior_pics_flag.i = getelementptr inbounds i8, ptr %p, i64 256
  %8 = load i32, ptr %no_output_of_prior_pics_flag.i, align 8
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %if.else.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.then
  %used_size.i = getelementptr inbounds i8, ptr %p_Dpb, i64 44
  %9 = load i32, ptr %used_size.i, align 4
  %cmp139.not.i = icmp eq i32 %9, 0
  br i1 %cmp139.not.i, label %for.cond17.preheader.i, label %for.body.lr.ph.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %cmp3.i = icmp eq i32 %7, 0
  %fs.i = getelementptr inbounds i8, ptr %p_Dpb, i64 16
  br label %for.body.i

for.cond17.preheader.i:                           ; preds = %for.inc.i, %for.cond.preheader.i
  %size.0.lcssa.i = phi i32 [ 0, %for.cond.preheader.i ], [ %size.1.i, %for.inc.i ]
  %ref_frames_in_buffer.i = getelementptr inbounds i8, ptr %p_Dpb, i64 48
  %10 = load i32, ptr %ref_frames_in_buffer.i, align 8
  %cmp18142.not.i = icmp eq i32 %10, 0
  br i1 %cmp18142.not.i, label %for.cond35.preheader.i, label %for.body19.lr.ph.i

for.body19.lr.ph.i:                               ; preds = %for.cond17.preheader.i
  %cmp20.i = icmp eq i32 %7, 0
  %fs_ref.i = getelementptr inbounds i8, ptr %p_Dpb, i64 24
  br i1 %cmp20.i, label %for.body19.us.i, label %for.body19.i

for.body19.us.i:                                  ; preds = %for.body19.lr.ph.i, %for.body19.us.i
  %indvars.iv155.i = phi i64 [ %indvars.iv.next156.i, %for.body19.us.i ], [ 0, %for.body19.lr.ph.i ]
  %11 = load ptr, ptr %fs_ref.i, align 8
  %arrayidx30.us.i = getelementptr inbounds ptr, ptr %11, i64 %indvars.iv155.i
  store ptr null, ptr %arrayidx30.us.i, align 8
  %indvars.iv.next156.i = add nuw nsw i64 %indvars.iv155.i, 1
  %12 = load i32, ptr %ref_frames_in_buffer.i, align 8
  %13 = zext i32 %12 to i64
  %cmp18.us.i = icmp ult i64 %indvars.iv.next156.i, %13
  br i1 %cmp18.us.i, label %for.body19.us.i, label %for.cond35.preheader.i

for.body.i:                                       ; preds = %for.inc.i, %for.body.lr.ph.i
  %14 = phi i32 [ %9, %for.body.lr.ph.i ], [ %21, %for.inc.i ]
  %indvars.iv.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next.i, %for.inc.i ]
  %size.0140.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %size.1.i, %for.inc.i ]
  %.pre.i = load ptr, ptr %fs.i, align 8
  %arrayidx11.phi.trans.insert.i = getelementptr inbounds ptr, ptr %.pre.i, i64 %indvars.iv.i
  %.pre164.i = load ptr, ptr %arrayidx11.phi.trans.insert.i, align 8
  br i1 %cmp3.i, label %if.then8.i, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %view_id5.i = getelementptr inbounds i8, ptr %.pre164.i, i64 72
  %15 = load i32, ptr %view_id5.i, align 8
  %16 = load i32, ptr %view_id.i, align 8
  %cmp7.i = icmp eq i32 %15, %16
  br i1 %cmp7.i, label %if.then.i.i, label %for.inc.i

if.then8.i:                                       ; preds = %for.body.i
  %tobool.not.i.i = icmp eq ptr %.pre164.i, null
  br i1 %tobool.not.i.i, label %free_frame_store.exit.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then8.i, %lor.lhs.false.i
  %frame.i.i = getelementptr inbounds i8, ptr %.pre164.i, i64 48
  %17 = load ptr, ptr %frame.i.i, align 8
  %tobool1.not.i.i = icmp eq ptr %17, null
  br i1 %tobool1.not.i.i, label %if.end.i.i, label %if.then2.i.i

if.then2.i.i:                                     ; preds = %if.then.i.i
  tail call void @free_storable_picture(ptr noundef nonnull %17)
  store ptr null, ptr %frame.i.i, align 8
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then2.i.i, %if.then.i.i
  %top_field.i.i = getelementptr inbounds i8, ptr %.pre164.i, i64 56
  %18 = load ptr, ptr %top_field.i.i, align 8
  %tobool5.not.i.i = icmp eq ptr %18, null
  br i1 %tobool5.not.i.i, label %if.end9.i.i, label %if.then6.i.i

if.then6.i.i:                                     ; preds = %if.end.i.i
  tail call void @free_storable_picture(ptr noundef nonnull %18)
  store ptr null, ptr %top_field.i.i, align 8
  br label %if.end9.i.i

if.end9.i.i:                                      ; preds = %if.then6.i.i, %if.end.i.i
  %bottom_field.i.i = getelementptr inbounds i8, ptr %.pre164.i, i64 64
  %19 = load ptr, ptr %bottom_field.i.i, align 8
  %tobool10.not.i.i = icmp eq ptr %19, null
  br i1 %tobool10.not.i.i, label %if.end14.i.i, label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end9.i.i
  tail call void @free_storable_picture(ptr noundef nonnull %19)
  br label %if.end14.i.i

if.end14.i.i:                                     ; preds = %if.then11.i.i, %if.end9.i.i
  tail call void @free(ptr noundef nonnull %.pre164.i) #20
  br label %free_frame_store.exit.i

free_frame_store.exit.i:                          ; preds = %if.end14.i.i, %if.then8.i
  %call.i.i = tail call noalias dereferenceable_or_null(96) ptr @calloc(i64 noundef 1, i64 noundef 96) #21
  %cmp.i.i = icmp eq ptr %call.i.i, null
  br i1 %cmp.i.i, label %if.then.i126.i, label %alloc_frame_store.exit.i

if.then.i126.i:                                   ; preds = %free_frame_store.exit.i
  tail call void @no_mem_exit(ptr noundef nonnull @.str.10) #20
  br label %alloc_frame_store.exit.i

alloc_frame_store.exit.i:                         ; preds = %if.then.i126.i, %free_frame_store.exit.i
  %20 = load ptr, ptr %fs.i, align 8
  %arrayidx15.i = getelementptr inbounds ptr, ptr %20, i64 %indvars.iv.i
  store ptr %call.i.i, ptr %arrayidx15.i, align 8
  %inc.i = add nsw i32 %size.0140.i, 1
  %.pre165.i = load i32, ptr %used_size.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %alloc_frame_store.exit.i, %lor.lhs.false.i
  %21 = phi i32 [ %.pre165.i, %alloc_frame_store.exit.i ], [ %14, %lor.lhs.false.i ]
  %size.1.i = phi i32 [ %inc.i, %alloc_frame_store.exit.i ], [ %size.0140.i, %lor.lhs.false.i ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %22 = zext i32 %21 to i64
  %cmp.i = icmp ult i64 %indvars.iv.next.i, %22
  br i1 %cmp.i, label %for.body.i, label %for.cond17.preheader.i

for.cond35.preheader.i:                           ; preds = %for.inc32.i, %for.body19.us.i, %for.cond17.preheader.i
  %ltref_frames_in_buffer.i = getelementptr inbounds i8, ptr %p_Dpb, i64 52
  %23 = load i32, ptr %ltref_frames_in_buffer.i, align 4
  %cmp36144.not.i = icmp eq i32 %23, 0
  br i1 %cmp36144.not.i, label %for.end52.i, label %for.body37.lr.ph.i

for.body37.lr.ph.i:                               ; preds = %for.cond35.preheader.i
  %cmp38.i = icmp eq i32 %7, 0
  %fs_ltref.i = getelementptr inbounds i8, ptr %p_Dpb, i64 32
  br i1 %cmp38.i, label %for.body37.us.i, label %for.body37.i

for.body37.us.i:                                  ; preds = %for.body37.lr.ph.i, %for.body37.us.i
  %indvars.iv161.i = phi i64 [ %indvars.iv.next162.i, %for.body37.us.i ], [ 0, %for.body37.lr.ph.i ]
  %24 = load ptr, ptr %fs_ltref.i, align 8
  %arrayidx48.us.i = getelementptr inbounds ptr, ptr %24, i64 %indvars.iv161.i
  store ptr null, ptr %arrayidx48.us.i, align 8
  %indvars.iv.next162.i = add nuw nsw i64 %indvars.iv161.i, 1
  %25 = load i32, ptr %ltref_frames_in_buffer.i, align 4
  %26 = zext i32 %25 to i64
  %cmp36.us.i = icmp ult i64 %indvars.iv.next162.i, %26
  br i1 %cmp36.us.i, label %for.body37.us.i, label %for.end52.i

for.body19.i:                                     ; preds = %for.body19.lr.ph.i, %for.inc32.i
  %27 = phi i32 [ %32, %for.inc32.i ], [ %10, %for.body19.lr.ph.i ]
  %indvars.iv152.i = phi i64 [ %indvars.iv.next153.i, %for.inc32.i ], [ 0, %for.body19.lr.ph.i ]
  %28 = load ptr, ptr %fs_ref.i, align 8
  %arrayidx23.i = getelementptr inbounds ptr, ptr %28, i64 %indvars.iv152.i
  %29 = load ptr, ptr %arrayidx23.i, align 8
  %view_id24.i = getelementptr inbounds i8, ptr %29, i64 72
  %30 = load i32, ptr %view_id24.i, align 8
  %31 = load i32, ptr %view_id.i, align 8
  %cmp26.i = icmp eq i32 %30, %31
  br i1 %cmp26.i, label %if.then27.i, label %for.inc32.i

if.then27.i:                                      ; preds = %for.body19.i
  store ptr null, ptr %arrayidx23.i, align 8
  %.pre166.i = load i32, ptr %ref_frames_in_buffer.i, align 8
  br label %for.inc32.i

for.inc32.i:                                      ; preds = %if.then27.i, %for.body19.i
  %32 = phi i32 [ %27, %for.body19.i ], [ %.pre166.i, %if.then27.i ]
  %indvars.iv.next153.i = add nuw nsw i64 %indvars.iv152.i, 1
  %33 = zext i32 %32 to i64
  %cmp18.i = icmp ult i64 %indvars.iv.next153.i, %33
  br i1 %cmp18.i, label %for.body19.i, label %for.cond35.preheader.i

for.body37.i:                                     ; preds = %for.body37.lr.ph.i, %for.inc50.i
  %34 = phi i32 [ %39, %for.inc50.i ], [ %23, %for.body37.lr.ph.i ]
  %indvars.iv158.i = phi i64 [ %indvars.iv.next159.i, %for.inc50.i ], [ 0, %for.body37.lr.ph.i ]
  %35 = load ptr, ptr %fs_ltref.i, align 8
  %arrayidx41.i = getelementptr inbounds ptr, ptr %35, i64 %indvars.iv158.i
  %36 = load ptr, ptr %arrayidx41.i, align 8
  %view_id42.i = getelementptr inbounds i8, ptr %36, i64 72
  %37 = load i32, ptr %view_id42.i, align 8
  %38 = load i32, ptr %view_id.i, align 8
  %cmp44.i = icmp eq i32 %37, %38
  br i1 %cmp44.i, label %if.then45.i, label %for.inc50.i

if.then45.i:                                      ; preds = %for.body37.i
  store ptr null, ptr %arrayidx41.i, align 8
  %.pre167.i = load i32, ptr %ltref_frames_in_buffer.i, align 4
  br label %for.inc50.i

for.inc50.i:                                      ; preds = %if.then45.i, %for.body37.i
  %39 = phi i32 [ %34, %for.body37.i ], [ %.pre167.i, %if.then45.i ]
  %indvars.iv.next159.i = add nuw nsw i64 %indvars.iv158.i, 1
  %40 = zext i32 %39 to i64
  %cmp36.i = icmp ult i64 %indvars.iv.next159.i, %40
  br i1 %cmp36.i, label %for.body37.i, label %for.end52.i

for.end52.i:                                      ; preds = %for.inc50.i, %for.body37.us.i, %for.cond35.preheader.i
  %41 = load i32, ptr %used_size.i, align 4
  %sub.i = sub i32 %41, %size.0.lcssa.i
  store i32 %sub.i, ptr %used_size.i, align 4
  br label %if.end62.i

if.else.i:                                        ; preds = %if.then
  %profile_idc.i = getelementptr inbounds i8, ptr %3, i64 849084
  %42 = load i32, ptr %profile_idc.i, align 4
  switch i32 %42, label %if.else59.i [
    i32 118, label %if.then58.i
    i32 128, label %if.then58.i
  ]

if.then58.i:                                      ; preds = %if.else.i, %if.else.i
  %43 = load ptr, ptr %p_Dpb, align 8
  %conceal_mode.i.i = getelementptr inbounds i8, ptr %43, i64 849240
  %44 = load i32, ptr %conceal_mode.i.i, align 8
  %cmp.not.i.i = icmp eq i32 %44, 0
  br i1 %cmp.not.i.i, label %if.end.i128.i, label %if.then.i127.i

if.then.i127.i:                                   ; preds = %if.then58.i
  tail call void @conceal_non_ref_pics(ptr noundef nonnull %p_Dpb, i32 noundef 0) #20
  br label %if.end.i128.i

if.end.i128.i:                                    ; preds = %if.then.i127.i, %if.then58.i
  %used_size.i.i = getelementptr inbounds i8, ptr %p_Dpb, i64 44
  %45 = load i32, ptr %used_size.i.i, align 4
  %cmp231.not.i.i = icmp eq i32 %45, 0
  br i1 %cmp231.not.i.i, label %while.cond10.i.i.preheader, label %for.body.lr.ph.i.i

for.body.lr.ph.i.i:                               ; preds = %if.end.i128.i
  %fs.i.i = getelementptr inbounds i8, ptr %p_Dpb, i64 16
  br label %for.body.us.i.i

for.body.us.i.i:                                  ; preds = %for.body.us.i.i, %for.body.lr.ph.i.i
  %indvars.iv35.i.i = phi i64 [ %indvars.iv.next36.i.i, %for.body.us.i.i ], [ 0, %for.body.lr.ph.i.i ]
  %46 = load ptr, ptr %fs.i.i, align 8
  %arrayidx.us.i.i = getelementptr inbounds ptr, ptr %46, i64 %indvars.iv35.i.i
  %47 = load ptr, ptr %arrayidx.us.i.i, align 8
  tail call fastcc void @unmark_for_reference(ptr noundef nonnull %47)
  %indvars.iv.next36.i.i = add nuw nsw i64 %indvars.iv35.i.i, 1
  %48 = load i32, ptr %used_size.i.i, align 4
  %49 = zext i32 %48 to i64
  %cmp2.us.i.i = icmp ult i64 %indvars.iv.next36.i.i, %49
  br i1 %cmp2.us.i.i, label %for.body.us.i.i, label %while.cond.preheader.i.i

while.cond.preheader.i.i:                         ; preds = %for.body.us.i.i
  %cmp24.not.i146.i = icmp eq i32 %48, 0
  br i1 %cmp24.not.i146.i, label %while.cond10.i.i.preheader, label %for.body.lr.ph.i132.i

for.body.lr.ph.i132.i:                            ; preds = %while.cond.preheader.i.i, %if.then.i136.i
  %50 = phi i32 [ %62, %if.then.i136.i ], [ %48, %while.cond.preheader.i.i ]
  %51 = load ptr, ptr %fs.i.i, align 8
  %wide.trip.count35.i.i = zext i32 %50 to i64
  br label %for.body.us.i134.i

for.body.us.i134.i:                               ; preds = %for.inc.us.i.i, %for.body.lr.ph.i132.i
  %indvars.iv32.i.i = phi i64 [ %indvars.iv.next33.i.i, %for.inc.us.i.i ], [ 0, %for.body.lr.ph.i132.i ]
  %arrayidx.us.i135.i = getelementptr inbounds ptr, ptr %51, i64 %indvars.iv32.i.i
  %52 = load ptr, ptr %arrayidx.us.i135.i, align 8
  %is_output.us.i.i = getelementptr inbounds i8, ptr %52, i64 36
  %53 = load i32, ptr %is_output.us.i.i, align 4
  %tobool.not.us.i.i = icmp eq i32 %53, 0
  br i1 %tobool.not.us.i.i, label %for.inc.us.i.i, label %land.lhs.true.us.i.i

land.lhs.true.us.i.i:                             ; preds = %for.body.us.i134.i
  %is_reference.i.us.i.i = getelementptr inbounds i8, ptr %52, i64 4
  %54 = load i32, ptr %is_reference.i.us.i.i, align 4
  %tobool.not.i.us.i.i = icmp eq i32 %54, 0
  br i1 %tobool.not.i.us.i.i, label %if.end.i.us.i.i, label %for.inc.us.i.i

if.end.i.us.i.i:                                  ; preds = %land.lhs.true.us.i.i
  %55 = load i32, ptr %52, align 8
  %cmp.i.us.i.i = icmp eq i32 %55, 3
  br i1 %cmp.i.us.i.i, label %if.then1.i.us.i.i, label %if.end5.i.us.i.i

if.end5.i.us.i.i:                                 ; preds = %if.end.i.us.i.i
  %and.i.us.i.i = and i32 %55, 1
  %tobool7.not.i.us.i.i = icmp eq i32 %and.i.us.i.i, 0
  br i1 %tobool7.not.i.us.i.i, label %if.end17.i.us.i.i, label %if.then8.i.us.i.i

if.then1.i.us.i.i:                                ; preds = %if.end.i.us.i.i
  %frame.i.us.i.i = getelementptr inbounds i8, ptr %52, i64 48
  %56 = load ptr, ptr %frame.i.us.i.i, align 8
  %used_for_reference.i.us.i.i = getelementptr inbounds i8, ptr %56, i64 44
  %57 = load i32, ptr %used_for_reference.i.us.i.i, align 4
  %tobool2.not.i.us.i.i = icmp eq i32 %57, 0
  br i1 %tobool2.not.i.us.i.i, label %if.then8.i.us.i.i, label %for.inc.us.i.i

if.then8.i.us.i.i:                                ; preds = %if.then1.i.us.i.i, %if.end5.i.us.i.i
  %top_field.i.us.i.i = getelementptr inbounds i8, ptr %52, i64 56
  %58 = load ptr, ptr %top_field.i.us.i.i, align 8
  %tobool9.not.i.us.i.i = icmp eq ptr %58, null
  br i1 %tobool9.not.i.us.i.i, label %if.end17.i.us.i.i, label %if.then10.i.us.i.i

if.then10.i.us.i.i:                               ; preds = %if.then8.i.us.i.i
  %used_for_reference12.i.us.i.i = getelementptr inbounds i8, ptr %58, i64 44
  %59 = load i32, ptr %used_for_reference12.i.us.i.i, align 4
  %tobool13.not.i.us.i.i = icmp eq i32 %59, 0
  br i1 %tobool13.not.i.us.i.i, label %if.end17.i.us.i.i, label %for.inc.us.i.i

if.end17.i.us.i.i:                                ; preds = %if.then10.i.us.i.i, %if.then8.i.us.i.i, %if.end5.i.us.i.i
  %and19.i.us.i.i = and i32 %55, 2
  %tobool20.not.i.us.i.i = icmp eq i32 %and19.i.us.i.i, 0
  br i1 %tobool20.not.i.us.i.i, label %if.then.i136.i, label %if.then21.i.us.i.i

if.then21.i.us.i.i:                               ; preds = %if.end17.i.us.i.i
  %bottom_field.i.us.i.i = getelementptr inbounds i8, ptr %52, i64 64
  %60 = load ptr, ptr %bottom_field.i.us.i.i, align 8
  %tobool22.not.i.us.i.i = icmp eq ptr %60, null
  br i1 %tobool22.not.i.us.i.i, label %if.then.i136.i, label %if.then23.i.us.i.i

if.then23.i.us.i.i:                               ; preds = %if.then21.i.us.i.i
  %used_for_reference25.i.us.i.i = getelementptr inbounds i8, ptr %60, i64 44
  %61 = load i32, ptr %used_for_reference25.i.us.i.i, align 4
  %tobool26.not.i.us.i.i = icmp eq i32 %61, 0
  br i1 %tobool26.not.i.us.i.i, label %if.then.i136.i, label %for.inc.us.i.i

for.inc.us.i.i:                                   ; preds = %if.then23.i.us.i.i, %if.then10.i.us.i.i, %if.then1.i.us.i.i, %land.lhs.true.us.i.i, %for.body.us.i134.i
  %indvars.iv.next33.i.i = add nuw nsw i64 %indvars.iv32.i.i, 1
  %exitcond36.not.i.i = icmp eq i64 %indvars.iv.next33.i.i, %wide.trip.count35.i.i
  br i1 %exitcond36.not.i.i, label %while.cond10.i.i.preheader, label %for.body.us.i134.i

if.then.i136.i:                                   ; preds = %if.then23.i.us.i.i, %if.then21.i.us.i.i, %if.end17.i.us.i.i
  %.us-phi.i.i = trunc i64 %indvars.iv32.i.i to i32
  tail call fastcc void @remove_frame_from_dpb(ptr noundef nonnull %p_Dpb, i32 noundef %.us-phi.i.i)
  %62 = load i32, ptr %used_size.i.i, align 4
  %cmp24.not.i.i = icmp eq i32 %62, 0
  br i1 %cmp24.not.i.i, label %while.cond10.i.i.preheader, label %for.body.lr.ph.i132.i

while.cond10.i.i.preheader:                       ; preds = %if.then.i136.i, %for.inc.us.i.i, %while.cond.preheader.i.i, %if.end.i128.i
  br label %while.cond10.i.i

while.cond10.i.i:                                 ; preds = %while.cond10.i.i.preheader, %land.rhs.i.i
  %63 = load i32, ptr %used_size.i.i, align 4
  %tobool12.not.i.i = icmp eq i32 %63, 0
  br i1 %tobool12.not.i.i, label %flush_dpb.exit.i, label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %while.cond10.i.i
  %call13.i.i = tail call fastcc i32 @output_one_frame_from_dpb(ptr noundef nonnull %p_Dpb, i32 noundef -1)
  %tobool14.not.i.i = icmp eq i32 %call13.i.i, 0
  br i1 %tobool14.not.i.i, label %flush_dpb.exit.i, label %while.cond10.i.i

flush_dpb.exit.i:                                 ; preds = %land.rhs.i.i, %while.cond10.i.i
  %last_output_poc.i.i = getelementptr inbounds i8, ptr %p_Dpb, i64 56
  store i32 -2147483648, ptr %last_output_poc.i.i, align 8
  br label %if.end62.i

if.else59.i:                                      ; preds = %if.else.i
  %64 = load i32, ptr %view_id.i, align 8
  tail call void @flush_dpb(ptr noundef nonnull %p_Dpb, i32 noundef %64)
  br label %if.end62.i

if.end62.i:                                       ; preds = %if.else59.i, %flush_dpb.exit.i, %for.end52.i
  %last_picture.i = getelementptr inbounds i8, ptr %p_Dpb, i64 4168
  store ptr null, ptr %last_picture.i, align 8
  %65 = load i32, ptr %view_id.i, align 8
  tail call void @update_ref_list(ptr noundef nonnull %p_Dpb, i32 noundef %65)
  %66 = load i32, ptr %view_id.i, align 8
  tail call void @update_ltref_list(ptr noundef nonnull %p_Dpb, i32 noundef %66)
  %last_output_poc.i = getelementptr inbounds i8, ptr %p_Dpb, i64 56
  store i32 -2147483648, ptr %last_output_poc.i, align 8
  %last_output_view_id.i = getelementptr inbounds i8, ptr %p_Dpb, i64 60
  store i32 -1, ptr %last_output_view_id.i, align 4
  %long_term_reference_flag.i = getelementptr inbounds i8, ptr %p, i64 260
  %67 = load i32, ptr %long_term_reference_flag.i, align 4
  %tobool65.not.i = icmp eq i32 %67, 0
  %max_long_term_pic_idx70.i = getelementptr inbounds i8, ptr %p_Dpb, i64 64
  %idxprom71.i = sext i32 %call.i to i64
  %arrayidx72.i = getelementptr inbounds [1024 x i32], ptr %max_long_term_pic_idx70.i, i64 0, i64 %idxprom71.i
  br i1 %tobool65.not.i, label %if.else69.i, label %if.then66.i

if.then66.i:                                      ; preds = %if.end62.i
  store i32 0, ptr %arrayidx72.i, align 4
  %long_term_frame_idx.i = getelementptr inbounds i8, ptr %p, i64 36
  store i32 0, ptr %long_term_frame_idx.i, align 4
  br label %idr_memory_management.exit

if.else69.i:                                      ; preds = %if.end62.i
  store i32 -1, ptr %arrayidx72.i, align 4
  br label %idr_memory_management.exit

idr_memory_management.exit:                       ; preds = %if.then66.i, %if.else69.i
  %.sink.i = phi i8 [ 0, %if.else69.i ], [ 1, %if.then66.i ]
  %68 = getelementptr inbounds i8, ptr %p, i64 40
  store i8 %.sink.i, ptr %68, align 8
  %pocs_in_dpb = getelementptr inbounds i8, ptr %0, i64 856056
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(400) %pocs_in_dpb, i8 0, i64 400, i1 false)
  br label %if.end5

if.else:                                          ; preds = %entry
  %used_for_reference = getelementptr inbounds i8, ptr %p, i64 44
  %69 = load i32, ptr %used_for_reference, align 4
  %tobool2.not = icmp eq i32 %69, 0
  br i1 %tobool2.not, label %if.end5, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.else
  %adaptive_ref_pic_buffering_flag = getelementptr inbounds i8, ptr %p, i64 264
  %70 = load i32, ptr %adaptive_ref_pic_buffering_flag, align 8
  %tobool3.not = icmp eq i32 %70, 0
  br i1 %tobool3.not, label %if.end5, label %if.then4

if.then4:                                         ; preds = %land.lhs.true
  %71 = load ptr, ptr %p_Dpb, align 8
  %last_has_mmco_5.i = getelementptr inbounds i8, ptr %71, i64 849028
  store i32 0, ptr %last_has_mmco_5.i, align 4
  %dec_ref_pic_marking_buffer.i = getelementptr inbounds i8, ptr %p, i64 312
  %72 = load ptr, ptr %dec_ref_pic_marking_buffer.i, align 8
  %tobool.not244.i = icmp eq ptr %72, null
  br i1 %tobool.not244.i, label %if.end5, label %while.body.lr.ph.i

while.body.lr.ph.i:                               ; preds = %if.then4
  %pic_num.i160.i = getelementptr inbounds i8, ptr %p, i64 28
  %view_id2.i.i = getelementptr inbounds i8, ptr %p, i64 344
  %ltref_frames_in_buffer.i.i164.i = getelementptr inbounds i8, ptr %p_Dpb, i64 52
  %fs_ltref.i.i167.i = getelementptr inbounds i8, ptr %p_Dpb, i64 32
  %is_long_term.i161.i = getelementptr inbounds i8, ptr %p, i64 40
  %long_term_frame_idx3.i.i = getelementptr inbounds i8, ptr %p, i64 36
  %ref_frames_in_buffer.i221.i = getelementptr inbounds i8, ptr %p_Dpb, i64 48
  %num_ref_frames.i.i = getelementptr inbounds i8, ptr %p_Dpb, i64 4164
  %fs_ref.i148.i = getelementptr inbounds i8, ptr %p_Dpb, i64 24
  %frame_num.i.i113.i = getelementptr inbounds i8, ptr %p, i64 20
  br label %while.body.i

while.body.i:                                     ; preds = %sw.epilog.i, %while.body.lr.ph.i
  %73 = phi ptr [ %72, %while.body.lr.ph.i ], [ %355, %sw.epilog.i ]
  %74 = load i32, ptr %73, align 8
  switch i32 %74, label %sw.default.i [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb3.i
    i32 2, label %sw.bb4.i
    i32 3, label %sw.bb6.i
    i32 4, label %sw.bb10.i
    i32 5, label %sw.bb13.i
    i32 6, label %sw.bb17.i
  ]

sw.bb.i:                                          ; preds = %while.body.i
  %Next.i = getelementptr inbounds i8, ptr %73, i64 24
  %75 = load ptr, ptr %Next.i, align 8
  %cmp.not.i = icmp eq ptr %75, null
  br i1 %cmp.not.i, label %sw.epilog.i, label %if.then.i

if.then.i:                                        ; preds = %sw.bb.i
  tail call void @error(ptr noundef nonnull @.str.31, i32 noundef 500) #20
  br label %sw.epilog.i

sw.bb3.i:                                         ; preds = %while.body.i
  %difference_of_pic_nums_minus1.i = getelementptr inbounds i8, ptr %73, i64 4
  %76 = load i32, ptr %difference_of_pic_nums_minus1.i, align 4
  %77 = load i32, ptr %p, align 8
  %.fr.i.i = freeze i32 %77
  %cmp.i.i.i = icmp eq i32 %.fr.i.i, 0
  %78 = load i32, ptr %frame_num.i.i113.i, align 4
  %mul.i.i.i = shl i32 %78, 1
  %add.i.i.i = or disjoint i32 %mul.i.i.i, 1
  %currPicNum.0.i.i.i = select i1 %cmp.i.i.i, i32 %78, i32 %add.i.i.i
  %add2.neg.i.i.i = xor i32 %76, -1
  %sub.i.i.i = add i32 %currPicNum.0.i.i.i, %add2.neg.i.i.i
  %79 = load i32, ptr %ref_frames_in_buffer.i221.i, align 8
  %cmp162.not.i.i = icmp eq i32 %79, 0
  br i1 %cmp162.not.i.i, label %mm_unmark_short_term_for_reference.exit.i, label %for.body.lr.ph.i.i373

for.body.lr.ph.i.i373:                            ; preds = %sw.bb3.i
  %80 = load ptr, ptr %fs_ref.i148.i, align 8
  %81 = load i32, ptr %view_id2.i.i, align 8
  %wide.trip.count174.i.i = zext i32 %79 to i64
  br i1 %cmp.i.i.i, label %for.body.us.i.i378, label %for.body.i.i

for.body.us.i.i378:                               ; preds = %for.body.lr.ph.i.i373, %for.inc.us.i.i381
  %indvars.iv171.i.i = phi i64 [ %indvars.iv.next172.i.i, %for.inc.us.i.i381 ], [ 0, %for.body.lr.ph.i.i373 ]
  %arrayidx.us.i.i379 = getelementptr inbounds ptr, ptr %80, i64 %indvars.iv171.i.i
  %82 = load ptr, ptr %arrayidx.us.i.i379, align 8
  %view_id.us.i.i = getelementptr inbounds i8, ptr %82, i64 72
  %83 = load i32, ptr %view_id.us.i.i, align 8
  %cmp2.us.i.i380 = icmp eq i32 %83, %81
  br i1 %cmp2.us.i.i380, label %if.then.us.i.i, label %for.inc.us.i.i381

if.then.us.i.i:                                   ; preds = %for.body.us.i.i378
  %is_reference.us.i.i = getelementptr inbounds i8, ptr %82, i64 4
  %84 = load i32, ptr %is_reference.us.i.i, align 4
  %cmp8.us.i.i = icmp eq i32 %84, 3
  br i1 %cmp8.us.i.i, label %land.lhs.true.us.i.i382, label %for.inc.us.i.i381

land.lhs.true.us.i.i382:                          ; preds = %if.then.us.i.i
  %is_long_term.us.i.i = getelementptr inbounds i8, ptr %82, i64 8
  %85 = load i32, ptr %is_long_term.us.i.i, align 8
  %cmp12.us.i.i = icmp eq i32 %85, 0
  br i1 %cmp12.us.i.i, label %if.then13.us.i.i, label %for.inc.us.i.i381

if.then13.us.i.i:                                 ; preds = %land.lhs.true.us.i.i382
  %frame.us.i.i = getelementptr inbounds i8, ptr %82, i64 48
  %86 = load ptr, ptr %frame.us.i.i, align 8
  %pic_num.us.i.i = getelementptr inbounds i8, ptr %86, i64 28
  %87 = load i32, ptr %pic_num.us.i.i, align 4
  %cmp17.us.i.i = icmp eq i32 %87, %sub.i.i.i
  br i1 %cmp17.us.i.i, label %if.then18.i.i, label %for.inc.us.i.i381

for.inc.us.i.i381:                                ; preds = %if.then13.us.i.i, %land.lhs.true.us.i.i382, %if.then.us.i.i, %for.body.us.i.i378
  %indvars.iv.next172.i.i = add nuw nsw i64 %indvars.iv171.i.i, 1
  %exitcond175.not.i.i = icmp eq i64 %indvars.iv.next172.i.i, %wide.trip.count174.i.i
  br i1 %exitcond175.not.i.i, label %mm_unmark_short_term_for_reference.exit.i, label %for.body.us.i.i378

for.body.i.i:                                     ; preds = %for.body.lr.ph.i.i373, %for.inc.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %for.inc.i.i ], [ 0, %for.body.lr.ph.i.i373 ]
  %arrayidx.i.i = getelementptr inbounds ptr, ptr %80, i64 %indvars.iv.i.i
  %88 = load ptr, ptr %arrayidx.i.i, align 8
  %view_id.i.i = getelementptr inbounds i8, ptr %88, i64 72
  %89 = load i32, ptr %view_id.i.i, align 8
  %cmp2.i.i = icmp eq i32 %89, %81
  br i1 %cmp2.i.i, label %if.then.i.i374, label %for.inc.i.i

if.then.i.i374:                                   ; preds = %for.body.i.i
  %is_reference26.i.i = getelementptr inbounds i8, ptr %88, i64 4
  %90 = load i32, ptr %is_reference26.i.i, align 4
  %and.i.i = and i32 %90, 1
  %tobool.not.i.i375 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i375, label %if.end62.i.i, label %land.lhs.true27.i.i

if.then18.i.i:                                    ; preds = %if.then13.us.i.i
  tail call fastcc void @unmark_for_reference(ptr noundef nonnull %82)
  br label %mm_unmark_short_term_for_reference.exit.i

land.lhs.true27.i.i:                              ; preds = %if.then.i.i374
  %is_long_term31.i.i = getelementptr inbounds i8, ptr %88, i64 8
  %91 = load i32, ptr %is_long_term31.i.i, align 8
  %and32.i.i = and i32 %91, 1
  %tobool33.not.i.i = icmp eq i32 %and32.i.i, 0
  br i1 %tobool33.not.i.i, label %if.then34.i.i, label %if.end62.i.i

if.then34.i.i:                                    ; preds = %land.lhs.true27.i.i
  %top_field.i.i377 = getelementptr inbounds i8, ptr %88, i64 56
  %92 = load ptr, ptr %top_field.i.i377, align 8
  %pic_num38.i.i = getelementptr inbounds i8, ptr %92, i64 28
  %93 = load i32, ptr %pic_num38.i.i, align 4
  %cmp39.i.i = icmp eq i32 %93, %sub.i.i.i
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end62.i.i

if.then40.i.i:                                    ; preds = %if.then34.i.i
  %used_for_reference.i.i = getelementptr inbounds i8, ptr %92, i64 44
  store i32 0, ptr %used_for_reference.i.i, align 4
  %94 = load ptr, ptr %fs_ref.i148.i, align 8
  %arrayidx47.i.i = getelementptr inbounds ptr, ptr %94, i64 %indvars.iv.i.i
  %95 = load ptr, ptr %arrayidx47.i.i, align 8
  %is_reference48.i.i = getelementptr inbounds i8, ptr %95, i64 4
  %96 = load i32, ptr %is_reference48.i.i, align 4
  %and49.i.i = and i32 %96, 2
  store i32 %and49.i.i, ptr %is_reference48.i.i, align 4
  %97 = load ptr, ptr %fs_ref.i148.i, align 8
  %arrayidx52.i.i = getelementptr inbounds ptr, ptr %97, i64 %indvars.iv.i.i
  %98 = load ptr, ptr %arrayidx52.i.i, align 8
  %99 = load i32, ptr %98, align 8
  %cmp53.i.i = icmp eq i32 %99, 3
  br i1 %cmp53.i.i, label %if.then54.i.i, label %mm_unmark_short_term_for_reference.exit.i

if.then54.i.i:                                    ; preds = %if.then40.i.i
  %frame58.i.i = getelementptr inbounds i8, ptr %98, i64 48
  %100 = load ptr, ptr %frame58.i.i, align 8
  %used_for_reference59.i.i = getelementptr inbounds i8, ptr %100, i64 44
  store i32 0, ptr %used_for_reference59.i.i, align 4
  br label %mm_unmark_short_term_for_reference.exit.i

if.end62.i.i:                                     ; preds = %if.then34.i.i, %land.lhs.true27.i.i, %if.then.i.i374
  %and67.i.i = and i32 %90, 2
  %tobool68.not.i.i = icmp eq i32 %and67.i.i, 0
  br i1 %tobool68.not.i.i, label %for.inc.i.i, label %land.lhs.true69.i.i

land.lhs.true69.i.i:                              ; preds = %if.end62.i.i
  %is_long_term73.i.i = getelementptr inbounds i8, ptr %88, i64 8
  %101 = load i32, ptr %is_long_term73.i.i, align 8
  %and74.i.i = and i32 %101, 2
  %tobool75.not.i.i = icmp eq i32 %and74.i.i, 0
  br i1 %tobool75.not.i.i, label %if.then76.i.i, label %for.inc.i.i

if.then76.i.i:                                    ; preds = %land.lhs.true69.i.i
  %bottom_field.i.i376 = getelementptr inbounds i8, ptr %88, i64 64
  %102 = load ptr, ptr %bottom_field.i.i376, align 8
  %pic_num80.i.i = getelementptr inbounds i8, ptr %102, i64 28
  %103 = load i32, ptr %pic_num80.i.i, align 4
  %cmp81.i.i = icmp eq i32 %103, %sub.i.i.i
  br i1 %cmp81.i.i, label %if.then82.i.i, label %for.inc.i.i

if.then82.i.i:                                    ; preds = %if.then76.i.i
  %used_for_reference87.i.i = getelementptr inbounds i8, ptr %102, i64 44
  store i32 0, ptr %used_for_reference87.i.i, align 4
  %104 = load ptr, ptr %fs_ref.i148.i, align 8
  %arrayidx90.i.i = getelementptr inbounds ptr, ptr %104, i64 %indvars.iv.i.i
  %105 = load ptr, ptr %arrayidx90.i.i, align 8
  %is_reference91.i.i = getelementptr inbounds i8, ptr %105, i64 4
  %106 = load i32, ptr %is_reference91.i.i, align 4
  %and92.i.i = and i32 %106, 1
  store i32 %and92.i.i, ptr %is_reference91.i.i, align 4
  %107 = load ptr, ptr %fs_ref.i148.i, align 8
  %arrayidx95.i.i = getelementptr inbounds ptr, ptr %107, i64 %indvars.iv.i.i
  %108 = load ptr, ptr %arrayidx95.i.i, align 8
  %109 = load i32, ptr %108, align 8
  %cmp97.i.i = icmp eq i32 %109, 3
  br i1 %cmp97.i.i, label %if.then98.i.i, label %mm_unmark_short_term_for_reference.exit.i

if.then98.i.i:                                    ; preds = %if.then82.i.i
  %frame102.i.i = getelementptr inbounds i8, ptr %108, i64 48
  %110 = load ptr, ptr %frame102.i.i, align 8
  %used_for_reference103.i.i = getelementptr inbounds i8, ptr %110, i64 44
  store i32 0, ptr %used_for_reference103.i.i, align 4
  br label %mm_unmark_short_term_for_reference.exit.i

for.inc.i.i:                                      ; preds = %if.then76.i.i, %land.lhs.true69.i.i, %if.end62.i.i, %for.body.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count174.i.i
  br i1 %exitcond.not.i.i, label %mm_unmark_short_term_for_reference.exit.i, label %for.body.i.i

mm_unmark_short_term_for_reference.exit.i:        ; preds = %for.inc.i.i, %for.inc.us.i.i381, %if.then98.i.i, %if.then82.i.i, %if.then54.i.i, %if.then40.i.i, %if.then18.i.i, %sw.bb3.i
  %111 = load i32, ptr %view_id2.i.i, align 8
  tail call void @update_ref_list(ptr noundef nonnull %p_Dpb, i32 noundef %111)
  br label %sw.epilog.i

sw.bb4.i:                                         ; preds = %while.body.i
  %long_term_pic_num.i = getelementptr inbounds i8, ptr %73, i64 8
  %112 = load i32, ptr %long_term_pic_num.i, align 8
  %113 = load i32, ptr %ltref_frames_in_buffer.i.i164.i, align 4
  %cmp198.not.i.i = icmp eq i32 %113, 0
  br i1 %cmp198.not.i.i, label %mm_unmark_long_term_for_reference.exit.i, label %for.body.i95.i

for.body.i95.i:                                   ; preds = %sw.bb4.i, %for.inc.i100.i
  %114 = phi i32 [ %168, %for.inc.i100.i ], [ %113, %sw.bb4.i ]
  %indvars.iv.i96.i = phi i64 [ %indvars.iv.next.i101.i, %for.inc.i100.i ], [ 0, %sw.bb4.i ]
  %115 = load ptr, ptr %fs_ltref.i.i167.i, align 8
  %arrayidx.i97.i = getelementptr inbounds ptr, ptr %115, i64 %indvars.iv.i96.i
  %116 = load ptr, ptr %arrayidx.i97.i, align 8
  %view_id.i98.i = getelementptr inbounds i8, ptr %116, i64 72
  %117 = load i32, ptr %view_id.i98.i, align 8
  %118 = load i32, ptr %view_id2.i.i, align 8
  %cmp2.i99.i = icmp eq i32 %117, %118
  br i1 %cmp2.i99.i, label %if.then.i102.i, label %for.inc.i100.i

if.then.i102.i:                                   ; preds = %for.body.i95.i
  %119 = load i32, ptr %p, align 8
  %cmp3.i.i = icmp eq i32 %119, 0
  %is_reference.i.i = getelementptr inbounds i8, ptr %116, i64 4
  %120 = load i32, ptr %is_reference.i.i, align 4
  br i1 %cmp3.i.i, label %if.then4.i.i, label %if.else.i.i

if.then4.i.i:                                     ; preds = %if.then.i102.i
  %cmp8.i.i = icmp eq i32 %120, 3
  br i1 %cmp8.i.i, label %land.lhs.true.i.i, label %for.inc.i100.i

land.lhs.true.i.i:                                ; preds = %if.then4.i.i
  %is_long_term.i.i = getelementptr inbounds i8, ptr %116, i64 8
  %121 = load i32, ptr %is_long_term.i.i, align 8
  %cmp12.i.i = icmp eq i32 %121, 3
  br i1 %cmp12.i.i, label %if.then13.i.i, label %for.inc.i100.i

if.then13.i.i:                                    ; preds = %land.lhs.true.i.i
  %frame.i.i372 = getelementptr inbounds i8, ptr %116, i64 48
  %122 = load ptr, ptr %frame.i.i372, align 8
  %long_term_pic_num17.i.i = getelementptr inbounds i8, ptr %122, i64 32
  %123 = load i32, ptr %long_term_pic_num17.i.i, align 8
  %cmp18.i.i = icmp eq i32 %123, %112
  br i1 %cmp18.i.i, label %if.then19.i.i, label %for.inc.i100.i

if.then19.i.i:                                    ; preds = %if.then13.i.i
  %124 = load i32, ptr %116, align 8
  %and.i.i.i = and i32 %124, 1
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end5.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.then19.i.i
  %top_field.i.i.i = getelementptr inbounds i8, ptr %116, i64 56
  %125 = load ptr, ptr %top_field.i.i.i, align 8
  %tobool1.not.i.i.i = icmp eq ptr %125, null
  br i1 %tobool1.not.i.i.i, label %if.end5.i.i.i, label %if.then2.i.i.i

if.then2.i.i.i:                                   ; preds = %if.then.i.i.i
  %used_for_reference.i.i.i = getelementptr inbounds i8, ptr %125, i64 44
  store i32 0, ptr %used_for_reference.i.i.i, align 4
  %126 = load ptr, ptr %top_field.i.i.i, align 8
  %is_long_term.i.i.i = getelementptr inbounds i8, ptr %126, i64 40
  store i8 0, ptr %is_long_term.i.i.i, align 8
  %.pre.i.i.i = load i32, ptr %116, align 8
  br label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %if.then2.i.i.i, %if.then.i.i.i, %if.then19.i.i
  %127 = phi i32 [ %124, %if.then.i.i.i ], [ %.pre.i.i.i, %if.then2.i.i.i ], [ %124, %if.then19.i.i ]
  %and7.i.i.i = and i32 %127, 2
  %tobool8.not.i.i.i = icmp eq i32 %and7.i.i.i, 0
  br i1 %tobool8.not.i.i.i, label %if.end17.i.i.i, label %if.then9.i.i.i

if.then9.i.i.i:                                   ; preds = %if.end5.i.i.i
  %bottom_field.i.i.i = getelementptr inbounds i8, ptr %116, i64 64
  %128 = load ptr, ptr %bottom_field.i.i.i, align 8
  %tobool10.not.i.i.i = icmp eq ptr %128, null
  br i1 %tobool10.not.i.i.i, label %if.end17.i.i.i, label %if.then11.i.i.i

if.then11.i.i.i:                                  ; preds = %if.then9.i.i.i
  %used_for_reference13.i.i.i = getelementptr inbounds i8, ptr %128, i64 44
  store i32 0, ptr %used_for_reference13.i.i.i, align 4
  %129 = load ptr, ptr %bottom_field.i.i.i, align 8
  %is_long_term15.i.i.i = getelementptr inbounds i8, ptr %129, i64 40
  store i8 0, ptr %is_long_term15.i.i.i, align 8
  %.pr.pre.i.i.i = load i32, ptr %116, align 8
  br label %if.end17.i.i.i

if.end17.i.i.i:                                   ; preds = %if.then11.i.i.i, %if.then9.i.i.i, %if.end5.i.i.i
  %130 = phi i32 [ %127, %if.end5.i.i.i ], [ %.pr.pre.i.i.i, %if.then11.i.i.i ], [ %127, %if.then9.i.i.i ]
  %cmp.i.i111.i = icmp eq i32 %130, 3
  br i1 %cmp.i.i111.i, label %if.then19.i.i.i, label %unmark_for_long_term_reference.exit.i.i

if.then19.i.i.i:                                  ; preds = %if.end17.i.i.i
  %top_field20.i.i.i = getelementptr inbounds i8, ptr %116, i64 56
  %131 = load ptr, ptr %top_field20.i.i.i, align 8
  %tobool21.not.i.i.i = icmp eq ptr %131, null
  br i1 %tobool21.not.i.i.i, label %if.end33.i.i.i, label %land.lhs.true.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then19.i.i.i
  %bottom_field22.i.i.i = getelementptr inbounds i8, ptr %116, i64 64
  %132 = load ptr, ptr %bottom_field22.i.i.i, align 8
  %tobool23.not.i.i.i = icmp eq ptr %132, null
  br i1 %tobool23.not.i.i.i, label %if.end33.i.i.i, label %if.then24.i.i.i

if.then24.i.i.i:                                  ; preds = %land.lhs.true.i.i.i
  %used_for_reference26.i.i.i = getelementptr inbounds i8, ptr %131, i64 44
  store i32 0, ptr %used_for_reference26.i.i.i, align 4
  %133 = load ptr, ptr %top_field20.i.i.i, align 8
  %is_long_term28.i.i.i = getelementptr inbounds i8, ptr %133, i64 40
  store i8 0, ptr %is_long_term28.i.i.i, align 8
  %134 = load ptr, ptr %bottom_field22.i.i.i, align 8
  %used_for_reference30.i.i.i = getelementptr inbounds i8, ptr %134, i64 44
  store i32 0, ptr %used_for_reference30.i.i.i, align 4
  %135 = load ptr, ptr %bottom_field22.i.i.i, align 8
  %is_long_term32.i.i.i = getelementptr inbounds i8, ptr %135, i64 40
  store i8 0, ptr %is_long_term32.i.i.i, align 8
  br label %if.end33.i.i.i

if.end33.i.i.i:                                   ; preds = %if.then24.i.i.i, %land.lhs.true.i.i.i, %if.then19.i.i.i
  %136 = load ptr, ptr %frame.i.i372, align 8
  %used_for_reference34.i.i.i = getelementptr inbounds i8, ptr %136, i64 44
  store i32 0, ptr %used_for_reference34.i.i.i, align 4
  %137 = load ptr, ptr %frame.i.i372, align 8
  %is_long_term36.i.i.i = getelementptr inbounds i8, ptr %137, i64 40
  store i8 0, ptr %is_long_term36.i.i.i, align 8
  br label %unmark_for_long_term_reference.exit.i.i

unmark_for_long_term_reference.exit.i.i:          ; preds = %if.end33.i.i.i, %if.end17.i.i.i
  store i32 0, ptr %is_reference.i.i, align 4
  store i32 0, ptr %is_long_term.i.i, align 8
  %.pre.i.i = load i32, ptr %ltref_frames_in_buffer.i.i164.i, align 4
  br label %for.inc.i100.i

if.else.i.i:                                      ; preds = %if.then.i102.i
  %and.i103.i = and i32 %120, 1
  %tobool.not.i104.i = icmp eq i32 %and.i103.i, 0
  br i1 %tobool.not.i104.i, label %if.end78.i.i, label %land.lhs.true28.i.i

land.lhs.true28.i.i:                              ; preds = %if.else.i.i
  %is_long_term32.i.i = getelementptr inbounds i8, ptr %116, i64 8
  %138 = load i32, ptr %is_long_term32.i.i, align 8
  %and33.i.i = and i32 %138, 1
  %tobool34.not.i.i = icmp eq i32 %and33.i.i, 0
  br i1 %tobool34.not.i.i, label %if.end78.i.i, label %if.then35.i.i

if.then35.i.i:                                    ; preds = %land.lhs.true28.i.i
  %top_field.i105.i = getelementptr inbounds i8, ptr %116, i64 56
  %139 = load ptr, ptr %top_field.i105.i, align 8
  %long_term_pic_num39.i.i = getelementptr inbounds i8, ptr %139, i64 32
  %140 = load i32, ptr %long_term_pic_num39.i.i, align 8
  %cmp40.i.i = icmp eq i32 %140, %112
  br i1 %cmp40.i.i, label %if.then41.i.i, label %if.end78.i.i

if.then41.i.i:                                    ; preds = %if.then35.i.i
  %used_for_reference.i110.i = getelementptr inbounds i8, ptr %139, i64 44
  store i32 0, ptr %used_for_reference.i110.i, align 4
  %141 = load ptr, ptr %fs_ltref.i.i167.i, align 8
  %arrayidx48.i.i = getelementptr inbounds ptr, ptr %141, i64 %indvars.iv.i96.i
  %142 = load ptr, ptr %arrayidx48.i.i, align 8
  %top_field49.i.i = getelementptr inbounds i8, ptr %142, i64 56
  %143 = load ptr, ptr %top_field49.i.i, align 8
  %is_long_term50.i.i = getelementptr inbounds i8, ptr %143, i64 40
  store i8 0, ptr %is_long_term50.i.i, align 8
  %144 = load ptr, ptr %fs_ltref.i.i167.i, align 8
  %arrayidx53.i.i = getelementptr inbounds ptr, ptr %144, i64 %indvars.iv.i96.i
  %145 = load ptr, ptr %arrayidx53.i.i, align 8
  %is_reference54.i.i = getelementptr inbounds i8, ptr %145, i64 4
  %146 = load i32, ptr %is_reference54.i.i, align 4
  %and55.i.i = and i32 %146, 2
  store i32 %and55.i.i, ptr %is_reference54.i.i, align 4
  %147 = load ptr, ptr %fs_ltref.i.i167.i, align 8
  %arrayidx58.i.i = getelementptr inbounds ptr, ptr %147, i64 %indvars.iv.i96.i
  %148 = load ptr, ptr %arrayidx58.i.i, align 8
  %is_long_term59.i.i = getelementptr inbounds i8, ptr %148, i64 8
  %149 = load i32, ptr %is_long_term59.i.i, align 8
  %and60.i.i = and i32 %149, 2
  store i32 %and60.i.i, ptr %is_long_term59.i.i, align 8
  %150 = load ptr, ptr %fs_ltref.i.i167.i, align 8
  %arrayidx63.i.i = getelementptr inbounds ptr, ptr %150, i64 %indvars.iv.i96.i
  %151 = load ptr, ptr %arrayidx63.i.i, align 8
  %152 = load i32, ptr %151, align 8
  %cmp64.i.i = icmp eq i32 %152, 3
  br i1 %cmp64.i.i, label %cleanup.sink.split.i.i, label %mm_unmark_long_term_for_reference.exit.i

if.end78.i.i:                                     ; preds = %if.then35.i.i, %land.lhs.true28.i.i, %if.else.i.i
  %and83.i.i = and i32 %120, 2
  %tobool84.not.i.i = icmp eq i32 %and83.i.i, 0
  br i1 %tobool84.not.i.i, label %for.inc.i100.i, label %land.lhs.true85.i.i

land.lhs.true85.i.i:                              ; preds = %if.end78.i.i
  %is_long_term89.i.i = getelementptr inbounds i8, ptr %116, i64 8
  %153 = load i32, ptr %is_long_term89.i.i, align 8
  %and90.i.i = and i32 %153, 2
  %tobool91.not.i.i = icmp eq i32 %and90.i.i, 0
  br i1 %tobool91.not.i.i, label %for.inc.i100.i, label %if.then92.i.i

if.then92.i.i:                                    ; preds = %land.lhs.true85.i.i
  %bottom_field.i106.i = getelementptr inbounds i8, ptr %116, i64 64
  %154 = load ptr, ptr %bottom_field.i106.i, align 8
  %long_term_pic_num96.i.i = getelementptr inbounds i8, ptr %154, i64 32
  %155 = load i32, ptr %long_term_pic_num96.i.i, align 8
  %cmp97.i107.i = icmp eq i32 %155, %112
  br i1 %cmp97.i107.i, label %if.then98.i108.i, label %for.inc.i100.i

if.then98.i108.i:                                 ; preds = %if.then92.i.i
  %used_for_reference103.i109.i = getelementptr inbounds i8, ptr %154, i64 44
  store i32 0, ptr %used_for_reference103.i109.i, align 4
  %156 = load ptr, ptr %fs_ltref.i.i167.i, align 8
  %arrayidx106.i.i = getelementptr inbounds ptr, ptr %156, i64 %indvars.iv.i96.i
  %157 = load ptr, ptr %arrayidx106.i.i, align 8
  %bottom_field107.i.i = getelementptr inbounds i8, ptr %157, i64 64
  %158 = load ptr, ptr %bottom_field107.i.i, align 8
  %is_long_term108.i.i = getelementptr inbounds i8, ptr %158, i64 40
  store i8 0, ptr %is_long_term108.i.i, align 8
  %159 = load ptr, ptr %fs_ltref.i.i167.i, align 8
  %arrayidx111.i.i = getelementptr inbounds ptr, ptr %159, i64 %indvars.iv.i96.i
  %160 = load ptr, ptr %arrayidx111.i.i, align 8
  %is_reference112.i.i = getelementptr inbounds i8, ptr %160, i64 4
  %161 = load i32, ptr %is_reference112.i.i, align 4
  %and113.i.i = and i32 %161, 1
  store i32 %and113.i.i, ptr %is_reference112.i.i, align 4
  %162 = load ptr, ptr %fs_ltref.i.i167.i, align 8
  %arrayidx116.i.i = getelementptr inbounds ptr, ptr %162, i64 %indvars.iv.i96.i
  %163 = load ptr, ptr %arrayidx116.i.i, align 8
  %is_long_term117.i.i = getelementptr inbounds i8, ptr %163, i64 8
  %164 = load i32, ptr %is_long_term117.i.i, align 8
  %and118.i.i = and i32 %164, 1
  store i32 %and118.i.i, ptr %is_long_term117.i.i, align 8
  %165 = load ptr, ptr %fs_ltref.i.i167.i, align 8
  %arrayidx121.i.i = getelementptr inbounds ptr, ptr %165, i64 %indvars.iv.i96.i
  %166 = load ptr, ptr %arrayidx121.i.i, align 8
  %167 = load i32, ptr %166, align 8
  %cmp123.i.i = icmp eq i32 %167, 3
  br i1 %cmp123.i.i, label %cleanup.sink.split.i.i, label %mm_unmark_long_term_for_reference.exit.i

for.inc.i100.i:                                   ; preds = %if.then92.i.i, %land.lhs.true85.i.i, %if.end78.i.i, %unmark_for_long_term_reference.exit.i.i, %if.then13.i.i, %land.lhs.true.i.i, %if.then4.i.i, %for.body.i95.i
  %168 = phi i32 [ %114, %for.body.i95.i ], [ %114, %if.end78.i.i ], [ %114, %land.lhs.true85.i.i ], [ %114, %if.then92.i.i ], [ %114, %if.then4.i.i ], [ %114, %land.lhs.true.i.i ], [ %.pre.i.i, %unmark_for_long_term_reference.exit.i.i ], [ %114, %if.then13.i.i ]
  %indvars.iv.next.i101.i = add nuw nsw i64 %indvars.iv.i96.i, 1
  %169 = zext i32 %168 to i64
  %cmp.i.i371 = icmp ult i64 %indvars.iv.next.i101.i, %169
  br i1 %cmp.i.i371, label %for.body.i95.i, label %mm_unmark_long_term_for_reference.exit.i

cleanup.sink.split.i.i:                           ; preds = %if.then98.i108.i, %if.then41.i.i
  %.sink.i.i = phi ptr [ %151, %if.then41.i.i ], [ %166, %if.then98.i108.i ]
  %frame128.i.i = getelementptr inbounds i8, ptr %.sink.i.i, i64 48
  %170 = load ptr, ptr %frame128.i.i, align 8
  %used_for_reference129.i.i = getelementptr inbounds i8, ptr %170, i64 44
  store i32 0, ptr %used_for_reference129.i.i, align 4
  %171 = load ptr, ptr %fs_ltref.i.i167.i, align 8
  %arrayidx132.i.i = getelementptr inbounds ptr, ptr %171, i64 %indvars.iv.i96.i
  %172 = load ptr, ptr %arrayidx132.i.i, align 8
  %frame133.i.i = getelementptr inbounds i8, ptr %172, i64 48
  %173 = load ptr, ptr %frame133.i.i, align 8
  %is_long_term134.i.i = getelementptr inbounds i8, ptr %173, i64 40
  store i8 0, ptr %is_long_term134.i.i, align 8
  br label %mm_unmark_long_term_for_reference.exit.i

mm_unmark_long_term_for_reference.exit.i:         ; preds = %for.inc.i100.i, %cleanup.sink.split.i.i, %if.then98.i108.i, %if.then41.i.i, %sw.bb4.i
  %174 = load i32, ptr %view_id2.i.i, align 8
  tail call void @update_ltref_list(ptr noundef nonnull %p_Dpb, i32 noundef %174)
  br label %sw.epilog.i

sw.bb6.i:                                         ; preds = %while.body.i
  %difference_of_pic_nums_minus17.i = getelementptr inbounds i8, ptr %73, i64 4
  %175 = load i32, ptr %difference_of_pic_nums_minus17.i, align 4
  %long_term_frame_idx.i369 = getelementptr inbounds i8, ptr %73, i64 12
  %176 = load i32, ptr %long_term_frame_idx.i369, align 4
  %177 = load i32, ptr %p, align 8
  %cmp.i.i112.i = icmp eq i32 %177, 0
  %178 = load i32, ptr %frame_num.i.i113.i, align 4
  %mul.i.i114.i = shl i32 %178, 1
  %add.i.i115.i = or disjoint i32 %mul.i.i114.i, 1
  %currPicNum.0.i.i116.i = select i1 %cmp.i.i112.i, i32 %178, i32 %add.i.i115.i
  %add2.neg.i.i117.i = xor i32 %175, -1
  %sub.i.i118.i = add i32 %currPicNum.0.i.i116.i, %add2.neg.i.i117.i
  br i1 %cmp.i.i112.i, label %if.then.i141.i, label %for.cond.preheader.i.i

for.cond.preheader.i.i:                           ; preds = %sw.bb6.i
  %179 = load i32, ptr %ref_frames_in_buffer.i221.i, align 8
  %cmp2.not94.not.i.i = icmp eq i32 %179, 0
  br i1 %cmp2.not94.not.i.i, label %if.then34.i128.i, label %for.body.lr.ph.i120.i

for.body.lr.ph.i120.i:                            ; preds = %for.cond.preheader.i.i
  %180 = load ptr, ptr %fs_ref.i148.i, align 8
  %181 = load i32, ptr %view_id2.i.i, align 8
  %wide.trip.count.i.i = zext i32 %179 to i64
  br label %for.body.i122.i

if.then.i141.i:                                   ; preds = %sw.bb6.i
  %182 = load i32, ptr %view_id2.i.i, align 8
  %183 = load i32, ptr %ltref_frames_in_buffer.i.i164.i, align 4
  %cmp18.not.i.i.i = icmp eq i32 %183, 0
  br i1 %cmp18.not.i.i.i, label %if.end37.i.i, label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %if.then.i141.i, %for.inc.i.i.i
  %184 = phi i32 [ %203, %for.inc.i.i.i ], [ %183, %if.then.i141.i ]
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %for.inc.i.i.i ], [ 0, %if.then.i141.i ]
  %185 = load ptr, ptr %fs_ltref.i.i167.i, align 8
  %arrayidx.i.i.i = getelementptr inbounds ptr, ptr %185, i64 %indvars.iv.i.i.i
  %186 = load ptr, ptr %arrayidx.i.i.i, align 8
  %long_term_frame_idx1.i.i.i = getelementptr inbounds i8, ptr %186, i64 32
  %187 = load i32, ptr %long_term_frame_idx1.i.i.i, align 8
  %cmp2.i.i.i = icmp eq i32 %187, %176
  br i1 %cmp2.i.i.i, label %land.lhs.true.i.i143.i, label %for.inc.i.i.i

land.lhs.true.i.i143.i:                           ; preds = %for.body.i.i.i
  %view_id6.i.i.i = getelementptr inbounds i8, ptr %186, i64 72
  %188 = load i32, ptr %view_id6.i.i.i, align 8
  %cmp7.i.i.i = icmp eq i32 %188, %182
  br i1 %cmp7.i.i.i, label %if.then.i.i144.i, label %for.inc.i.i.i

if.then.i.i144.i:                                 ; preds = %land.lhs.true.i.i143.i
  %189 = load i32, ptr %186, align 8
  %and.i.i.i.i = and i32 %189, 1
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %if.end5.i.i.i.i, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %if.then.i.i144.i
  %top_field.i.i.i.i = getelementptr inbounds i8, ptr %186, i64 56
  %190 = load ptr, ptr %top_field.i.i.i.i, align 8
  %tobool1.not.i.i.i.i = icmp eq ptr %190, null
  br i1 %tobool1.not.i.i.i.i, label %if.end5.i.i.i.i, label %if.then2.i.i.i.i

if.then2.i.i.i.i:                                 ; preds = %if.then.i.i.i.i
  %used_for_reference.i.i.i.i = getelementptr inbounds i8, ptr %190, i64 44
  store i32 0, ptr %used_for_reference.i.i.i.i, align 4
  %191 = load ptr, ptr %top_field.i.i.i.i, align 8
  %is_long_term.i.i.i.i = getelementptr inbounds i8, ptr %191, i64 40
  store i8 0, ptr %is_long_term.i.i.i.i, align 8
  %.pre.i.i.i.i = load i32, ptr %186, align 8
  br label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then2.i.i.i.i, %if.then.i.i.i.i, %if.then.i.i144.i
  %192 = phi i32 [ %189, %if.then.i.i.i.i ], [ %.pre.i.i.i.i, %if.then2.i.i.i.i ], [ %189, %if.then.i.i144.i ]
  %and7.i.i.i.i = and i32 %192, 2
  %tobool8.not.i.i.i.i = icmp eq i32 %and7.i.i.i.i, 0
  br i1 %tobool8.not.i.i.i.i, label %if.end17.i.i.i.i, label %if.then9.i.i.i.i

if.then9.i.i.i.i:                                 ; preds = %if.end5.i.i.i.i
  %bottom_field.i.i.i.i = getelementptr inbounds i8, ptr %186, i64 64
  %193 = load ptr, ptr %bottom_field.i.i.i.i, align 8
  %tobool10.not.i.i.i.i = icmp eq ptr %193, null
  br i1 %tobool10.not.i.i.i.i, label %if.end17.i.i.i.i, label %if.then11.i.i.i.i

if.then11.i.i.i.i:                                ; preds = %if.then9.i.i.i.i
  %used_for_reference13.i.i.i.i = getelementptr inbounds i8, ptr %193, i64 44
  store i32 0, ptr %used_for_reference13.i.i.i.i, align 4
  %194 = load ptr, ptr %bottom_field.i.i.i.i, align 8
  %is_long_term15.i.i.i.i = getelementptr inbounds i8, ptr %194, i64 40
  store i8 0, ptr %is_long_term15.i.i.i.i, align 8
  %.pr.pre.i.i.i.i = load i32, ptr %186, align 8
  br label %if.end17.i.i.i.i

if.end17.i.i.i.i:                                 ; preds = %if.then11.i.i.i.i, %if.then9.i.i.i.i, %if.end5.i.i.i.i
  %195 = phi i32 [ %192, %if.end5.i.i.i.i ], [ %.pr.pre.i.i.i.i, %if.then11.i.i.i.i ], [ %192, %if.then9.i.i.i.i ]
  %cmp.i.i.i.i = icmp eq i32 %195, 3
  br i1 %cmp.i.i.i.i, label %if.then19.i.i.i.i, label %unmark_for_long_term_reference.exit.i.i.i

if.then19.i.i.i.i:                                ; preds = %if.end17.i.i.i.i
  %top_field20.i.i.i.i = getelementptr inbounds i8, ptr %186, i64 56
  %196 = load ptr, ptr %top_field20.i.i.i.i, align 8
  %tobool21.not.i.i.i.i = icmp eq ptr %196, null
  br i1 %tobool21.not.i.i.i.i, label %if.end33.i.i.i.i, label %land.lhs.true.i.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.then19.i.i.i.i
  %bottom_field22.i.i.i.i = getelementptr inbounds i8, ptr %186, i64 64
  %197 = load ptr, ptr %bottom_field22.i.i.i.i, align 8
  %tobool23.not.i.i.i.i = icmp eq ptr %197, null
  br i1 %tobool23.not.i.i.i.i, label %if.end33.i.i.i.i, label %if.then24.i.i.i.i

if.then24.i.i.i.i:                                ; preds = %land.lhs.true.i.i.i.i
  %used_for_reference26.i.i.i.i = getelementptr inbounds i8, ptr %196, i64 44
  store i32 0, ptr %used_for_reference26.i.i.i.i, align 4
  %198 = load ptr, ptr %top_field20.i.i.i.i, align 8
  %is_long_term28.i.i.i.i = getelementptr inbounds i8, ptr %198, i64 40
  store i8 0, ptr %is_long_term28.i.i.i.i, align 8
  %199 = load ptr, ptr %bottom_field22.i.i.i.i, align 8
  %used_for_reference30.i.i.i.i = getelementptr inbounds i8, ptr %199, i64 44
  store i32 0, ptr %used_for_reference30.i.i.i.i, align 4
  %200 = load ptr, ptr %bottom_field22.i.i.i.i, align 8
  %is_long_term32.i.i.i.i = getelementptr inbounds i8, ptr %200, i64 40
  store i8 0, ptr %is_long_term32.i.i.i.i, align 8
  br label %if.end33.i.i.i.i

if.end33.i.i.i.i:                                 ; preds = %if.then24.i.i.i.i, %land.lhs.true.i.i.i.i, %if.then19.i.i.i.i
  %frame.i.i.i.i = getelementptr inbounds i8, ptr %186, i64 48
  %201 = load ptr, ptr %frame.i.i.i.i, align 8
  %used_for_reference34.i.i.i.i = getelementptr inbounds i8, ptr %201, i64 44
  store i32 0, ptr %used_for_reference34.i.i.i.i, align 4
  %202 = load ptr, ptr %frame.i.i.i.i, align 8
  %is_long_term36.i.i.i.i = getelementptr inbounds i8, ptr %202, i64 40
  store i8 0, ptr %is_long_term36.i.i.i.i, align 8
  br label %unmark_for_long_term_reference.exit.i.i.i

unmark_for_long_term_reference.exit.i.i.i:        ; preds = %if.end33.i.i.i.i, %if.end17.i.i.i.i
  %is_reference.i.i.i.i = getelementptr inbounds i8, ptr %186, i64 4
  store i32 0, ptr %is_reference.i.i.i.i, align 4
  %is_long_term38.i.i.i.i = getelementptr inbounds i8, ptr %186, i64 8
  store i32 0, ptr %is_long_term38.i.i.i.i, align 8
  %.pre.i.i145.i = load i32, ptr %ltref_frames_in_buffer.i.i164.i, align 4
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %unmark_for_long_term_reference.exit.i.i.i, %land.lhs.true.i.i143.i, %for.body.i.i.i
  %203 = phi i32 [ %184, %for.body.i.i.i ], [ %184, %land.lhs.true.i.i143.i ], [ %.pre.i.i145.i, %unmark_for_long_term_reference.exit.i.i.i ]
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1
  %204 = zext i32 %203 to i64
  %cmp.i65.i.i = icmp ult i64 %indvars.iv.next.i.i.i, %204
  br i1 %cmp.i65.i.i, label %for.body.i.i.i, label %if.end37.i.i

for.body.i122.i:                                  ; preds = %for.inc.i125.i, %for.body.lr.ph.i120.i
  %indvars.iv.i123.i = phi i64 [ 0, %for.body.lr.ph.i120.i ], [ %indvars.iv.next.i126.i, %for.inc.i125.i ]
  %arrayidx.i124.i = getelementptr inbounds ptr, ptr %180, i64 %indvars.iv.i123.i
  %205 = load ptr, ptr %arrayidx.i124.i, align 8
  %view_id3.i.i = getelementptr inbounds i8, ptr %205, i64 72
  %206 = load i32, ptr %view_id3.i.i, align 8
  %cmp5.i.i = icmp eq i32 %206, %181
  br i1 %cmp5.i.i, label %if.then6.i.i370, label %for.inc.i125.i

if.then6.i.i370:                                  ; preds = %for.body.i122.i
  %is_reference.i136.i = getelementptr inbounds i8, ptr %205, i64 4
  %207 = load i32, ptr %is_reference.i136.i, align 4
  %and.i137.i = and i32 %207, 1
  %tobool.not.i138.i = icmp eq i32 %and.i137.i, 0
  br i1 %tobool.not.i138.i, label %if.end16.i.i, label %if.then10.i.i

if.then10.i.i:                                    ; preds = %if.then6.i.i370
  %top_field.i139.i = getelementptr inbounds i8, ptr %205, i64 56
  %208 = load ptr, ptr %top_field.i139.i, align 8
  %pic_num.i.i = getelementptr inbounds i8, ptr %208, i64 28
  %209 = load i32, ptr %pic_num.i.i, align 4
  %cmp14.i.i = icmp eq i32 %209, %sub.i.i118.i
  br i1 %cmp14.i.i, label %for.end.split.i.i, label %if.end16.i.i

if.end16.i.i:                                     ; preds = %if.then10.i.i, %if.then6.i.i370
  %and21.i.i = and i32 %207, 2
  %tobool22.not.i.i = icmp eq i32 %and21.i.i, 0
  br i1 %tobool22.not.i.i, label %for.inc.i125.i, label %if.then23.i.i

if.then23.i.i:                                    ; preds = %if.end16.i.i
  %bottom_field.i140.i = getelementptr inbounds i8, ptr %205, i64 64
  %210 = load ptr, ptr %bottom_field.i140.i, align 8
  %pic_num27.i.i = getelementptr inbounds i8, ptr %210, i64 28
  %211 = load i32, ptr %pic_num27.i.i, align 4
  %cmp28.i.i = icmp eq i32 %211, %sub.i.i118.i
  br i1 %cmp28.i.i, label %for.end.split.i.i, label %for.inc.i125.i

for.inc.i125.i:                                   ; preds = %if.then23.i.i, %if.end16.i.i, %for.body.i122.i
  %indvars.iv.next.i126.i = add nuw nsw i64 %indvars.iv.i123.i, 1
  %exitcond.not.i127.i = icmp eq i64 %indvars.iv.next.i126.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i127.i, label %if.then34.i128.i, label %for.body.i122.i

for.end.split.i.i:                                ; preds = %if.then23.i.i, %if.then10.i.i
  %structure1.0.ph.i.i = phi i32 [ 2, %if.then23.i.i ], [ 1, %if.then10.i.i ]
  tail call fastcc void @unmark_long_term_field_for_reference_by_frame_idx(ptr noundef nonnull readonly %p_Dpb, i32 noundef %structure1.0.ph.i.i, i32 noundef %176, i32 noundef 0, i32 noundef 0, i32 noundef %sub.i.i118.i, i32 noundef %181)
  br label %if.end37.i.i

if.then34.i128.i:                                 ; preds = %for.inc.i125.i, %for.cond.preheader.i.i
  tail call void @error(ptr noundef nonnull @.str.33, i32 noundef 200) #20
  br label %if.end37.i.i

if.end37.i.i:                                     ; preds = %for.inc.i.i.i, %if.then34.i128.i, %for.end.split.i.i, %if.then.i141.i
  %212 = load i32, ptr %p, align 8
  switch i32 %212, label %if.else87.i.i.i [
    i32 0, label %for.cond.preheader.i.i.i
    i32 1, label %if.end88.i.i.i
  ]

for.cond.preheader.i.i.i:                         ; preds = %if.end37.i.i
  %213 = load i32, ptr %ref_frames_in_buffer.i221.i, align 8
  %cmp1395.not.i.i.i = icmp eq i32 %213, 0
  br i1 %cmp1395.not.i.i.i, label %for.end.i.i.i, label %for.body.lr.ph.i75.i.i

for.body.lr.ph.i75.i.i:                           ; preds = %for.cond.preheader.i.i.i
  %214 = load ptr, ptr %fs_ref.i148.i, align 8
  %215 = load i32, ptr %view_id2.i.i, align 8
  %wide.trip.count.i.i.i = zext i32 %213 to i64
  br label %for.body.i76.i.i

for.body.i76.i.i:                                 ; preds = %for.inc.i79.i.i, %for.body.lr.ph.i75.i.i
  %indvars.iv.i77.i.i = phi i64 [ 0, %for.body.lr.ph.i75.i.i ], [ %indvars.iv.next.i80.i.i, %for.inc.i79.i.i ]
  %arrayidx.i78.i.i = getelementptr inbounds ptr, ptr %214, i64 %indvars.iv.i77.i.i
  %216 = load ptr, ptr %arrayidx.i78.i.i, align 8
  %view_id.i.i.i = getelementptr inbounds i8, ptr %216, i64 72
  %217 = load i32, ptr %view_id.i.i.i, align 8
  %cmp3.i.i.i = icmp eq i32 %217, %215
  br i1 %cmp3.i.i.i, label %if.then4.i.i.i, label %for.inc.i79.i.i

if.then4.i.i.i:                                   ; preds = %for.body.i76.i.i
  %is_reference.i.i.i = getelementptr inbounds i8, ptr %216, i64 4
  %218 = load i32, ptr %is_reference.i.i.i, align 4
  %cmp8.i.i.i = icmp eq i32 %218, 3
  br i1 %cmp8.i.i.i, label %if.then9.i.i130.i, label %for.inc.i79.i.i

if.then9.i.i130.i:                                ; preds = %if.then4.i.i.i
  %frame.i.i.i = getelementptr inbounds i8, ptr %216, i64 48
  %219 = load ptr, ptr %frame.i.i.i, align 8
  %is_long_term.i.i131.i = getelementptr inbounds i8, ptr %219, i64 40
  %220 = load i8, ptr %is_long_term.i.i131.i, align 8
  %tobool.not.i.i132.i = icmp eq i8 %220, 0
  br i1 %tobool.not.i.i132.i, label %land.lhs.true.i81.i.i, label %for.inc.i79.i.i

land.lhs.true.i81.i.i:                            ; preds = %if.then9.i.i130.i
  %pic_num.i.i.i = getelementptr inbounds i8, ptr %219, i64 28
  %221 = load i32, ptr %pic_num.i.i.i, align 4
  %cmp17.i.i.i = icmp eq i32 %221, %sub.i.i118.i
  br i1 %cmp17.i.i.i, label %if.then18.i.i.i, label %for.inc.i79.i.i

if.then18.i.i.i:                                  ; preds = %land.lhs.true.i81.i.i
  %long_term_frame_idx23.i.i.i = getelementptr inbounds i8, ptr %219, i64 36
  store i32 %176, ptr %long_term_frame_idx23.i.i.i, align 4
  %222 = load ptr, ptr %fs_ref.i148.i, align 8
  %arrayidx26.i.i.i = getelementptr inbounds ptr, ptr %222, i64 %indvars.iv.i77.i.i
  %223 = load ptr, ptr %arrayidx26.i.i.i, align 8
  %long_term_frame_idx27.i.i.i = getelementptr inbounds i8, ptr %223, i64 32
  store i32 %176, ptr %long_term_frame_idx27.i.i.i, align 8
  %224 = load ptr, ptr %fs_ref.i148.i, align 8
  %arrayidx30.i.i.i = getelementptr inbounds ptr, ptr %224, i64 %indvars.iv.i77.i.i
  %225 = load ptr, ptr %arrayidx30.i.i.i, align 8
  %frame31.i.i.i = getelementptr inbounds i8, ptr %225, i64 48
  %226 = load ptr, ptr %frame31.i.i.i, align 8
  %long_term_pic_num.i.i.i = getelementptr inbounds i8, ptr %226, i64 32
  store i32 %176, ptr %long_term_pic_num.i.i.i, align 8
  %227 = load ptr, ptr %fs_ref.i148.i, align 8
  %arrayidx34.i.i.i = getelementptr inbounds ptr, ptr %227, i64 %indvars.iv.i77.i.i
  %228 = load ptr, ptr %arrayidx34.i.i.i, align 8
  %frame35.i.i.i = getelementptr inbounds i8, ptr %228, i64 48
  %229 = load ptr, ptr %frame35.i.i.i, align 8
  %is_long_term36.i.i133.i = getelementptr inbounds i8, ptr %229, i64 40
  store i8 1, ptr %is_long_term36.i.i133.i, align 8
  %230 = load ptr, ptr %fs_ref.i148.i, align 8
  %arrayidx39.i.i.i = getelementptr inbounds ptr, ptr %230, i64 %indvars.iv.i77.i.i
  %231 = load ptr, ptr %arrayidx39.i.i.i, align 8
  %top_field.i.i134.i = getelementptr inbounds i8, ptr %231, i64 56
  %232 = load ptr, ptr %top_field.i.i134.i, align 8
  %tobool40.not.i.i.i = icmp eq ptr %232, null
  br i1 %tobool40.not.i.i.i, label %if.end.i83.i.i, label %land.lhs.true41.i.i.i

land.lhs.true41.i.i.i:                            ; preds = %if.then18.i.i.i
  %bottom_field.i.i135.i = getelementptr inbounds i8, ptr %231, i64 64
  %233 = load ptr, ptr %bottom_field.i.i135.i, align 8
  %tobool45.not.i.i.i = icmp eq ptr %233, null
  br i1 %tobool45.not.i.i.i, label %if.end.i83.i.i, label %if.then46.i.i.i

if.then46.i.i.i:                                  ; preds = %land.lhs.true41.i.i.i
  %long_term_frame_idx51.i.i.i = getelementptr inbounds i8, ptr %233, i64 36
  store i32 %176, ptr %long_term_frame_idx51.i.i.i, align 4
  %234 = load ptr, ptr %fs_ref.i148.i, align 8
  %arrayidx54.i.i.i = getelementptr inbounds ptr, ptr %234, i64 %indvars.iv.i77.i.i
  %235 = load ptr, ptr %arrayidx54.i.i.i, align 8
  %top_field55.i.i.i = getelementptr inbounds i8, ptr %235, i64 56
  %236 = load ptr, ptr %top_field55.i.i.i, align 8
  %long_term_frame_idx56.i.i.i = getelementptr inbounds i8, ptr %236, i64 36
  store i32 %176, ptr %long_term_frame_idx56.i.i.i, align 4
  %237 = load ptr, ptr %fs_ref.i148.i, align 8
  %arrayidx59.i.i.i = getelementptr inbounds ptr, ptr %237, i64 %indvars.iv.i77.i.i
  %238 = load ptr, ptr %arrayidx59.i.i.i, align 8
  %top_field60.i.i.i = getelementptr inbounds i8, ptr %238, i64 56
  %239 = load ptr, ptr %top_field60.i.i.i, align 8
  %long_term_pic_num61.i.i.i = getelementptr inbounds i8, ptr %239, i64 32
  store i32 %176, ptr %long_term_pic_num61.i.i.i, align 8
  %240 = load ptr, ptr %fs_ref.i148.i, align 8
  %arrayidx64.i.i.i = getelementptr inbounds ptr, ptr %240, i64 %indvars.iv.i77.i.i
  %241 = load ptr, ptr %arrayidx64.i.i.i, align 8
  %bottom_field65.i.i.i = getelementptr inbounds i8, ptr %241, i64 64
  %242 = load ptr, ptr %bottom_field65.i.i.i, align 8
  %long_term_pic_num66.i.i.i = getelementptr inbounds i8, ptr %242, i64 32
  store i32 %176, ptr %long_term_pic_num66.i.i.i, align 8
  %243 = load ptr, ptr %fs_ref.i148.i, align 8
  %arrayidx69.i.i.i = getelementptr inbounds ptr, ptr %243, i64 %indvars.iv.i77.i.i
  %244 = load ptr, ptr %arrayidx69.i.i.i, align 8
  %bottom_field70.i.i.i = getelementptr inbounds i8, ptr %244, i64 64
  %245 = load ptr, ptr %bottom_field70.i.i.i, align 8
  %is_long_term71.i.i.i = getelementptr inbounds i8, ptr %245, i64 40
  store i8 1, ptr %is_long_term71.i.i.i, align 8
  %246 = load ptr, ptr %fs_ref.i148.i, align 8
  %arrayidx74.i.i.i = getelementptr inbounds ptr, ptr %246, i64 %indvars.iv.i77.i.i
  %247 = load ptr, ptr %arrayidx74.i.i.i, align 8
  %top_field75.i.i.i = getelementptr inbounds i8, ptr %247, i64 56
  %248 = load ptr, ptr %top_field75.i.i.i, align 8
  %is_long_term76.i.i.i = getelementptr inbounds i8, ptr %248, i64 40
  store i8 1, ptr %is_long_term76.i.i.i, align 8
  %.pre.i82.i.i = load ptr, ptr %fs_ref.i148.i, align 8
  %arrayidx79.phi.trans.insert.i.i.i = getelementptr inbounds ptr, ptr %.pre.i82.i.i, i64 %indvars.iv.i77.i.i
  %.pre412.i.i.i = load ptr, ptr %arrayidx79.phi.trans.insert.i.i.i, align 8
  br label %if.end.i83.i.i

if.end.i83.i.i:                                   ; preds = %if.then46.i.i.i, %land.lhs.true41.i.i.i, %if.then18.i.i.i
  %249 = phi ptr [ %.pre412.i.i.i, %if.then46.i.i.i ], [ %231, %land.lhs.true41.i.i.i ], [ %231, %if.then18.i.i.i ]
  %is_long_term80.i.i.i = getelementptr inbounds i8, ptr %249, i64 8
  store i32 3, ptr %is_long_term80.i.i.i, align 8
  br label %mm_assign_long_term_frame_idx.exit.i

for.inc.i79.i.i:                                  ; preds = %land.lhs.true.i81.i.i, %if.then9.i.i130.i, %if.then4.i.i.i, %for.body.i76.i.i
  %indvars.iv.next.i80.i.i = add nuw nsw i64 %indvars.iv.i77.i.i, 1
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i80.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %for.end.i.i.i, label %for.body.i76.i.i

for.end.i.i.i:                                    ; preds = %for.inc.i79.i.i, %for.cond.preheader.i.i.i
  %puts390.i.i.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.45)
  br label %mm_assign_long_term_frame_idx.exit.i

if.else87.i.i.i:                                  ; preds = %if.end37.i.i
  br label %if.end88.i.i.i

if.end88.i.i.i:                                   ; preds = %if.else87.i.i.i, %if.end37.i.i
  %add_top.0.i.i.i = phi i32 [ 0, %if.else87.i.i.i ], [ %212, %if.end37.i.i ]
  %add_bottom.0.i.i.i = phi i32 [ 1, %if.else87.i.i.i ], [ 0, %if.end37.i.i ]
  %250 = load i32, ptr %ref_frames_in_buffer.i221.i, align 8
  %cmp91398.not.i.i.i = icmp eq i32 %250, 0
  br i1 %cmp91398.not.i.i.i, label %for.end269.i.i.i, label %for.body92.lr.ph.i.i.i

for.body92.lr.ph.i.i.i:                           ; preds = %if.end88.i.i.i
  %251 = load ptr, ptr %fs_ref.i148.i, align 8
  %252 = load i32, ptr %view_id2.i.i, align 8
  %wide.trip.count410.i.i.i = zext i32 %250 to i64
  br label %for.body92.i.i.i

for.body92.i.i.i:                                 ; preds = %for.inc267.i.i.i, %for.body92.lr.ph.i.i.i
  %indvars.iv407.i.i.i = phi i64 [ 0, %for.body92.lr.ph.i.i.i ], [ %indvars.iv.next408.i.i.i, %for.inc267.i.i.i ]
  %arrayidx95.i.i.i = getelementptr inbounds ptr, ptr %251, i64 %indvars.iv407.i.i.i
  %253 = load ptr, ptr %arrayidx95.i.i.i, align 8
  %view_id96.i.i.i = getelementptr inbounds i8, ptr %253, i64 72
  %254 = load i32, ptr %view_id96.i.i.i, align 8
  %cmp98.i.i.i = icmp eq i32 %254, %252
  br i1 %cmp98.i.i.i, label %if.then99.i.i.i, label %for.inc267.i.i.i

if.then99.i.i.i:                                  ; preds = %for.body92.i.i.i
  %is_reference103.i.i.i = getelementptr inbounds i8, ptr %253, i64 4
  %255 = load i32, ptr %is_reference103.i.i.i, align 4
  %and.i.i129.i = and i32 %255, 1
  %tobool104.not.i.i.i = icmp eq i32 %and.i.i129.i, 0
  br i1 %tobool104.not.i.i.i, label %if.end180.i.i.i, label %if.then105.i.i.i

if.then105.i.i.i:                                 ; preds = %if.then99.i.i.i
  %top_field109.i.i.i = getelementptr inbounds i8, ptr %253, i64 56
  %256 = load ptr, ptr %top_field109.i.i.i, align 8
  %is_long_term110.i.i.i = getelementptr inbounds i8, ptr %256, i64 40
  %257 = load i8, ptr %is_long_term110.i.i.i, align 8
  %tobool111.not.i.i.i = icmp eq i8 %257, 0
  br i1 %tobool111.not.i.i.i, label %land.lhs.true112.i.i.i, label %if.end180.i.i.i

land.lhs.true112.i.i.i:                           ; preds = %if.then105.i.i.i
  %pic_num117.i.i.i = getelementptr inbounds i8, ptr %256, i64 28
  %258 = load i32, ptr %pic_num117.i.i.i, align 4
  %cmp118.i.i.i = icmp eq i32 %258, %sub.i.i118.i
  br i1 %cmp118.i.i.i, label %if.then119.i.i.i, label %if.end180.i.i.i

if.then119.i.i.i:                                 ; preds = %land.lhs.true112.i.i.i
  %is_long_term123.i.i.i = getelementptr inbounds i8, ptr %253, i64 8
  %259 = load i32, ptr %is_long_term123.i.i.i, align 8
  %tobool124.not.i.i.i = icmp eq i32 %259, 0
  br i1 %tobool124.not.i.i.i, label %if.end133.i.i.i, label %land.lhs.true125.i.i.i

land.lhs.true125.i.i.i:                           ; preds = %if.then119.i.i.i
  %long_term_frame_idx129.i.i.i = getelementptr inbounds i8, ptr %253, i64 32
  %260 = load i32, ptr %long_term_frame_idx129.i.i.i, align 8
  %cmp130.not.i.i.i = icmp eq i32 %260, %176
  br i1 %cmp130.not.i.i.i, label %if.end133.i.i.i, label %if.then131.i.i.i

if.then131.i.i.i:                                 ; preds = %land.lhs.true125.i.i.i
  %puts388.i.i.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.44)
  %.pre413.i.i.i = load ptr, ptr %fs_ref.i148.i, align 8
  %arrayidx136.phi.trans.insert.i.i.i = getelementptr inbounds ptr, ptr %.pre413.i.i.i, i64 %indvars.iv407.i.i.i
  %.pre414.i.i.i = load ptr, ptr %arrayidx136.phi.trans.insert.i.i.i, align 8
  %top_field137.phi.trans.insert.i.i.i = getelementptr inbounds i8, ptr %.pre414.i.i.i, i64 56
  %.pre415.i.i.i = load ptr, ptr %top_field137.phi.trans.insert.i.i.i, align 8
  br label %if.end133.i.i.i

if.end133.i.i.i:                                  ; preds = %if.then131.i.i.i, %land.lhs.true125.i.i.i, %if.then119.i.i.i
  %261 = phi ptr [ %.pre415.i.i.i, %if.then131.i.i.i ], [ %256, %land.lhs.true125.i.i.i ], [ %256, %if.then119.i.i.i ]
  %long_term_frame_idx138.i.i.i = getelementptr inbounds i8, ptr %261, i64 36
  store i32 %176, ptr %long_term_frame_idx138.i.i.i, align 4
  %262 = load ptr, ptr %fs_ref.i148.i, align 8
  %arrayidx141.i.i.i = getelementptr inbounds ptr, ptr %262, i64 %indvars.iv407.i.i.i
  %263 = load ptr, ptr %arrayidx141.i.i.i, align 8
  %long_term_frame_idx142.i.i.i = getelementptr inbounds i8, ptr %263, i64 32
  store i32 %176, ptr %long_term_frame_idx142.i.i.i, align 8
  %mul.i73.i.i = shl nsw i32 %176, 1
  %add.i74.i.i = or disjoint i32 %add_top.0.i.i.i, %mul.i73.i.i
  %264 = load ptr, ptr %fs_ref.i148.i, align 8
  %arrayidx145.i.i.i = getelementptr inbounds ptr, ptr %264, i64 %indvars.iv407.i.i.i
  %265 = load ptr, ptr %arrayidx145.i.i.i, align 8
  %top_field146.i.i.i = getelementptr inbounds i8, ptr %265, i64 56
  %266 = load ptr, ptr %top_field146.i.i.i, align 8
  %long_term_pic_num147.i.i.i = getelementptr inbounds i8, ptr %266, i64 32
  store i32 %add.i74.i.i, ptr %long_term_pic_num147.i.i.i, align 8
  %267 = load ptr, ptr %fs_ref.i148.i, align 8
  %arrayidx150.i.i.i = getelementptr inbounds ptr, ptr %267, i64 %indvars.iv407.i.i.i
  %268 = load ptr, ptr %arrayidx150.i.i.i, align 8
  %top_field151.i.i.i = getelementptr inbounds i8, ptr %268, i64 56
  %269 = load ptr, ptr %top_field151.i.i.i, align 8
  %is_long_term152.i.i.i = getelementptr inbounds i8, ptr %269, i64 40
  store i8 1, ptr %is_long_term152.i.i.i, align 8
  %270 = load ptr, ptr %fs_ref.i148.i, align 8
  %arrayidx155.i.i.i = getelementptr inbounds ptr, ptr %270, i64 %indvars.iv407.i.i.i
  %271 = load ptr, ptr %arrayidx155.i.i.i, align 8
  %is_long_term156.i.i.i = getelementptr inbounds i8, ptr %271, i64 8
  %272 = load i32, ptr %is_long_term156.i.i.i, align 8
  %or.i.i.i = or i32 %272, 1
  store i32 %or.i.i.i, ptr %is_long_term156.i.i.i, align 8
  %273 = load ptr, ptr %fs_ref.i148.i, align 8
  %arrayidx159.i.i.i = getelementptr inbounds ptr, ptr %273, i64 %indvars.iv407.i.i.i
  %274 = load ptr, ptr %arrayidx159.i.i.i, align 8
  %is_long_term160.i.i.i = getelementptr inbounds i8, ptr %274, i64 8
  %275 = load i32, ptr %is_long_term160.i.i.i, align 8
  %cmp161.i.i.i = icmp eq i32 %275, 3
  br i1 %cmp161.i.i.i, label %if.then162.i.i.i, label %mm_assign_long_term_frame_idx.exit.i

if.then162.i.i.i:                                 ; preds = %if.end133.i.i.i
  %frame166.i.i.i = getelementptr inbounds i8, ptr %274, i64 48
  %276 = load ptr, ptr %frame166.i.i.i, align 8
  %is_long_term167.i.i.i = getelementptr inbounds i8, ptr %276, i64 40
  store i8 1, ptr %is_long_term167.i.i.i, align 8
  %277 = load ptr, ptr %fs_ref.i148.i, align 8
  %arrayidx170.i.i.i = getelementptr inbounds ptr, ptr %277, i64 %indvars.iv407.i.i.i
  %278 = load ptr, ptr %arrayidx170.i.i.i, align 8
  %frame171.i.i.i = getelementptr inbounds i8, ptr %278, i64 48
  %279 = load ptr, ptr %frame171.i.i.i, align 8
  %long_term_pic_num172.i.i.i = getelementptr inbounds i8, ptr %279, i64 32
  store i32 %176, ptr %long_term_pic_num172.i.i.i, align 8
  %280 = load ptr, ptr %fs_ref.i148.i, align 8
  %arrayidx175.i.i.i = getelementptr inbounds ptr, ptr %280, i64 %indvars.iv407.i.i.i
  %281 = load ptr, ptr %arrayidx175.i.i.i, align 8
  %frame176.i.i.i = getelementptr inbounds i8, ptr %281, i64 48
  %282 = load ptr, ptr %frame176.i.i.i, align 8
  %long_term_frame_idx177.i.i.i = getelementptr inbounds i8, ptr %282, i64 36
  store i32 %176, ptr %long_term_frame_idx177.i.i.i, align 4
  br label %mm_assign_long_term_frame_idx.exit.i

if.end180.i.i.i:                                  ; preds = %land.lhs.true112.i.i.i, %if.then105.i.i.i, %if.then99.i.i.i
  %and185.i.i.i = and i32 %255, 2
  %tobool186.not.i.i.i = icmp eq i32 %and185.i.i.i, 0
  br i1 %tobool186.not.i.i.i, label %for.inc267.i.i.i, label %if.then187.i.i.i

if.then187.i.i.i:                                 ; preds = %if.end180.i.i.i
  %bottom_field191.i.i.i = getelementptr inbounds i8, ptr %253, i64 64
  %283 = load ptr, ptr %bottom_field191.i.i.i, align 8
  %is_long_term192.i.i.i = getelementptr inbounds i8, ptr %283, i64 40
  %284 = load i8, ptr %is_long_term192.i.i.i, align 8
  %tobool193.not.i.i.i = icmp eq i8 %284, 0
  br i1 %tobool193.not.i.i.i, label %land.lhs.true194.i.i.i, label %for.inc267.i.i.i

land.lhs.true194.i.i.i:                           ; preds = %if.then187.i.i.i
  %pic_num199.i.i.i = getelementptr inbounds i8, ptr %283, i64 28
  %285 = load i32, ptr %pic_num199.i.i.i, align 4
  %cmp200.i.i.i = icmp eq i32 %285, %sub.i.i118.i
  br i1 %cmp200.i.i.i, label %if.then201.i.i.i, label %for.inc267.i.i.i

if.then201.i.i.i:                                 ; preds = %land.lhs.true194.i.i.i
  %is_long_term205.i.i.i = getelementptr inbounds i8, ptr %253, i64 8
  %286 = load i32, ptr %is_long_term205.i.i.i, align 8
  %tobool206.not.i.i.i = icmp eq i32 %286, 0
  br i1 %tobool206.not.i.i.i, label %if.end215.i.i.i, label %land.lhs.true207.i.i.i

land.lhs.true207.i.i.i:                           ; preds = %if.then201.i.i.i
  %long_term_frame_idx211.i.i.i = getelementptr inbounds i8, ptr %253, i64 32
  %287 = load i32, ptr %long_term_frame_idx211.i.i.i, align 8
  %cmp212.not.i.i.i = icmp eq i32 %287, %176
  br i1 %cmp212.not.i.i.i, label %if.end215.i.i.i, label %if.then213.i.i.i

if.then213.i.i.i:                                 ; preds = %land.lhs.true207.i.i.i
  %puts389.i.i.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.44)
  %.pre416.i.i.i = load ptr, ptr %fs_ref.i148.i, align 8
  %arrayidx218.phi.trans.insert.i.i.i = getelementptr inbounds ptr, ptr %.pre416.i.i.i, i64 %indvars.iv407.i.i.i
  %.pre417.i.i.i = load ptr, ptr %arrayidx218.phi.trans.insert.i.i.i, align 8
  %bottom_field219.phi.trans.insert.i.i.i = getelementptr inbounds i8, ptr %.pre417.i.i.i, i64 64
  %.pre418.i.i.i = load ptr, ptr %bottom_field219.phi.trans.insert.i.i.i, align 8
  br label %if.end215.i.i.i

if.end215.i.i.i:                                  ; preds = %if.then213.i.i.i, %land.lhs.true207.i.i.i, %if.then201.i.i.i
  %288 = phi ptr [ %.pre418.i.i.i, %if.then213.i.i.i ], [ %283, %land.lhs.true207.i.i.i ], [ %283, %if.then201.i.i.i ]
  %long_term_frame_idx220.i.i.i = getelementptr inbounds i8, ptr %288, i64 36
  store i32 %176, ptr %long_term_frame_idx220.i.i.i, align 4
  %289 = load ptr, ptr %fs_ref.i148.i, align 8
  %arrayidx223.i.i.i = getelementptr inbounds ptr, ptr %289, i64 %indvars.iv407.i.i.i
  %290 = load ptr, ptr %arrayidx223.i.i.i, align 8
  %long_term_frame_idx224.i.i.i = getelementptr inbounds i8, ptr %290, i64 32
  store i32 %176, ptr %long_term_frame_idx224.i.i.i, align 8
  %mul225.i.i.i = shl nsw i32 %176, 1
  %add226.i.i.i = or disjoint i32 %add_bottom.0.i.i.i, %mul225.i.i.i
  %291 = load ptr, ptr %fs_ref.i148.i, align 8
  %arrayidx229.i.i.i = getelementptr inbounds ptr, ptr %291, i64 %indvars.iv407.i.i.i
  %292 = load ptr, ptr %arrayidx229.i.i.i, align 8
  %bottom_field230.i.i.i = getelementptr inbounds i8, ptr %292, i64 64
  %293 = load ptr, ptr %bottom_field230.i.i.i, align 8
  %long_term_pic_num231.i.i.i = getelementptr inbounds i8, ptr %293, i64 32
  store i32 %add226.i.i.i, ptr %long_term_pic_num231.i.i.i, align 8
  %294 = load ptr, ptr %fs_ref.i148.i, align 8
  %arrayidx234.i.i.i = getelementptr inbounds ptr, ptr %294, i64 %indvars.iv407.i.i.i
  %295 = load ptr, ptr %arrayidx234.i.i.i, align 8
  %bottom_field235.i.i.i = getelementptr inbounds i8, ptr %295, i64 64
  %296 = load ptr, ptr %bottom_field235.i.i.i, align 8
  %is_long_term236.i.i.i = getelementptr inbounds i8, ptr %296, i64 40
  store i8 1, ptr %is_long_term236.i.i.i, align 8
  %297 = load ptr, ptr %fs_ref.i148.i, align 8
  %arrayidx239.i.i.i = getelementptr inbounds ptr, ptr %297, i64 %indvars.iv407.i.i.i
  %298 = load ptr, ptr %arrayidx239.i.i.i, align 8
  %is_long_term240.i.i.i = getelementptr inbounds i8, ptr %298, i64 8
  %299 = load i32, ptr %is_long_term240.i.i.i, align 8
  %or241.i.i.i = or i32 %299, 2
  store i32 %or241.i.i.i, ptr %is_long_term240.i.i.i, align 8
  %300 = load ptr, ptr %fs_ref.i148.i, align 8
  %arrayidx244.i.i.i = getelementptr inbounds ptr, ptr %300, i64 %indvars.iv407.i.i.i
  %301 = load ptr, ptr %arrayidx244.i.i.i, align 8
  %is_long_term245.i.i.i = getelementptr inbounds i8, ptr %301, i64 8
  %302 = load i32, ptr %is_long_term245.i.i.i, align 8
  %cmp246.i.i.i = icmp eq i32 %302, 3
  br i1 %cmp246.i.i.i, label %if.then247.i.i.i, label %mm_assign_long_term_frame_idx.exit.i

if.then247.i.i.i:                                 ; preds = %if.end215.i.i.i
  %frame251.i.i.i = getelementptr inbounds i8, ptr %301, i64 48
  %303 = load ptr, ptr %frame251.i.i.i, align 8
  %is_long_term252.i.i.i = getelementptr inbounds i8, ptr %303, i64 40
  store i8 1, ptr %is_long_term252.i.i.i, align 8
  %304 = load ptr, ptr %fs_ref.i148.i, align 8
  %arrayidx255.i.i.i = getelementptr inbounds ptr, ptr %304, i64 %indvars.iv407.i.i.i
  %305 = load ptr, ptr %arrayidx255.i.i.i, align 8
  %frame256.i.i.i = getelementptr inbounds i8, ptr %305, i64 48
  %306 = load ptr, ptr %frame256.i.i.i, align 8
  %long_term_pic_num257.i.i.i = getelementptr inbounds i8, ptr %306, i64 32
  store i32 %176, ptr %long_term_pic_num257.i.i.i, align 8
  %307 = load ptr, ptr %fs_ref.i148.i, align 8
  %arrayidx260.i.i.i = getelementptr inbounds ptr, ptr %307, i64 %indvars.iv407.i.i.i
  %308 = load ptr, ptr %arrayidx260.i.i.i, align 8
  %frame261.i.i.i = getelementptr inbounds i8, ptr %308, i64 48
  %309 = load ptr, ptr %frame261.i.i.i, align 8
  %long_term_frame_idx262.i.i.i = getelementptr inbounds i8, ptr %309, i64 36
  store i32 %176, ptr %long_term_frame_idx262.i.i.i, align 4
  br label %mm_assign_long_term_frame_idx.exit.i

for.inc267.i.i.i:                                 ; preds = %land.lhs.true194.i.i.i, %if.then187.i.i.i, %if.end180.i.i.i, %for.body92.i.i.i
  %indvars.iv.next408.i.i.i = add nuw nsw i64 %indvars.iv407.i.i.i, 1
  %exitcond411.not.i.i.i = icmp eq i64 %indvars.iv.next408.i.i.i, %wide.trip.count410.i.i.i
  br i1 %exitcond411.not.i.i.i, label %for.end269.i.i.i, label %for.body92.i.i.i

for.end269.i.i.i:                                 ; preds = %for.inc267.i.i.i, %if.end88.i.i.i
  %puts.i.i.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.42)
  br label %mm_assign_long_term_frame_idx.exit.i

mm_assign_long_term_frame_idx.exit.i:             ; preds = %for.end269.i.i.i, %if.then247.i.i.i, %if.end215.i.i.i, %if.then162.i.i.i, %if.end133.i.i.i, %for.end.i.i.i, %if.end.i83.i.i
  %310 = load i32, ptr %view_id2.i.i, align 8
  tail call void @update_ref_list(ptr noundef nonnull %p_Dpb, i32 noundef %310)
  %311 = load i32, ptr %view_id2.i.i, align 8
  tail call void @update_ltref_list(ptr noundef nonnull %p_Dpb, i32 noundef %311)
  br label %sw.epilog.i

sw.bb10.i:                                        ; preds = %while.body.i
  %max_long_term_frame_idx_plus1.i = getelementptr inbounds i8, ptr %73, i64 16
  %312 = load i32, ptr %max_long_term_frame_idx_plus1.i, align 8
  %313 = load i32, ptr %view_id2.i.i, align 8
  tail call void @mm_update_max_long_term_frame_idx(ptr noundef nonnull %p_Dpb, i32 noundef %312, i32 noundef %313)
  %314 = load i32, ptr %view_id2.i.i, align 8
  tail call void @update_ltref_list(ptr noundef nonnull %p_Dpb, i32 noundef %314)
  br label %sw.epilog.i

sw.bb13.i:                                        ; preds = %while.body.i
  %315 = load i32, ptr %view_id2.i.i, align 8
  %316 = load i32, ptr %ref_frames_in_buffer.i221.i, align 8
  %cmp12.not.i.i = icmp eq i32 %316, 0
  br i1 %cmp12.not.i.i, label %mm_unmark_all_short_term_for_reference.exit.i, label %for.body.i149.i

for.body.i149.i:                                  ; preds = %sw.bb13.i, %for.inc.i153.i
  %317 = phi i32 [ %321, %for.inc.i153.i ], [ %316, %sw.bb13.i ]
  %indvars.iv.i150.i = phi i64 [ %indvars.iv.next.i154.i, %for.inc.i153.i ], [ 0, %sw.bb13.i ]
  %318 = load ptr, ptr %fs_ref.i148.i, align 8
  %arrayidx.i151.i = getelementptr inbounds ptr, ptr %318, i64 %indvars.iv.i150.i
  %319 = load ptr, ptr %arrayidx.i151.i, align 8
  %view_id.i152.i = getelementptr inbounds i8, ptr %319, i64 72
  %320 = load i32, ptr %view_id.i152.i, align 8
  %cmp1.i.i = icmp eq i32 %320, %315
  br i1 %cmp1.i.i, label %if.then.i156.i, label %for.inc.i153.i

if.then.i156.i:                                   ; preds = %for.body.i149.i
  tail call fastcc void @unmark_for_reference(ptr noundef nonnull %319)
  %.pre.i157.i = load i32, ptr %ref_frames_in_buffer.i221.i, align 8
  br label %for.inc.i153.i

for.inc.i153.i:                                   ; preds = %if.then.i156.i, %for.body.i149.i
  %321 = phi i32 [ %317, %for.body.i149.i ], [ %.pre.i157.i, %if.then.i156.i ]
  %indvars.iv.next.i154.i = add nuw nsw i64 %indvars.iv.i150.i, 1
  %322 = zext i32 %321 to i64
  %cmp.i155.i = icmp ult i64 %indvars.iv.next.i154.i, %322
  br i1 %cmp.i155.i, label %for.body.i149.i, label %mm_unmark_all_short_term_for_reference.exit.i

mm_unmark_all_short_term_for_reference.exit.i:    ; preds = %for.inc.i153.i, %sw.bb13.i
  tail call void @update_ref_list(ptr noundef nonnull %p_Dpb, i32 noundef %315)
  %323 = load i32, ptr %view_id2.i.i, align 8
  tail call void @mm_update_max_long_term_frame_idx(ptr noundef nonnull %p_Dpb, i32 noundef 0, i32 noundef %323)
  store i32 1, ptr %last_has_mmco_5.i, align 4
  br label %sw.epilog.i

sw.bb17.i:                                        ; preds = %while.body.i
  %long_term_frame_idx18.i = getelementptr inbounds i8, ptr %73, i64 12
  %324 = load i32, ptr %long_term_frame_idx18.i, align 4
  %325 = load i32, ptr %p, align 8
  %cmp.i158.i = icmp eq i32 %325, 0
  br i1 %cmp.i158.i, label %if.then.i162.i, label %if.else.i159.i

if.then.i162.i:                                   ; preds = %sw.bb17.i
  %326 = load i32, ptr %view_id2.i.i, align 8
  %327 = load i32, ptr %ltref_frames_in_buffer.i.i164.i, align 4
  %cmp18.not.i.i165.i = icmp eq i32 %327, 0
  br i1 %cmp18.not.i.i165.i, label %mm_mark_current_picture_long_term.exit.i, label %for.body.i.i168.i

for.body.i.i168.i:                                ; preds = %if.then.i162.i, %for.inc.i.i173.i
  %328 = phi i32 [ %347, %for.inc.i.i173.i ], [ %327, %if.then.i162.i ]
  %indvars.iv.i.i169.i = phi i64 [ %indvars.iv.next.i.i174.i, %for.inc.i.i173.i ], [ 0, %if.then.i162.i ]
  %329 = load ptr, ptr %fs_ltref.i.i167.i, align 8
  %arrayidx.i.i170.i = getelementptr inbounds ptr, ptr %329, i64 %indvars.iv.i.i169.i
  %330 = load ptr, ptr %arrayidx.i.i170.i, align 8
  %long_term_frame_idx1.i.i171.i = getelementptr inbounds i8, ptr %330, i64 32
  %331 = load i32, ptr %long_term_frame_idx1.i.i171.i, align 8
  %cmp2.i.i172.i = icmp eq i32 %331, %324
  br i1 %cmp2.i.i172.i, label %land.lhs.true.i.i176.i, label %for.inc.i.i173.i

land.lhs.true.i.i176.i:                           ; preds = %for.body.i.i168.i
  %view_id6.i.i177.i = getelementptr inbounds i8, ptr %330, i64 72
  %332 = load i32, ptr %view_id6.i.i177.i, align 8
  %cmp7.i.i178.i = icmp eq i32 %332, %326
  br i1 %cmp7.i.i178.i, label %if.then.i.i179.i, label %for.inc.i.i173.i

if.then.i.i179.i:                                 ; preds = %land.lhs.true.i.i176.i
  %333 = load i32, ptr %330, align 8
  %and.i.i.i180.i = and i32 %333, 1
  %tobool.not.i.i.i181.i = icmp eq i32 %and.i.i.i180.i, 0
  br i1 %tobool.not.i.i.i181.i, label %if.end5.i.i.i189.i, label %if.then.i.i.i182.i

if.then.i.i.i182.i:                               ; preds = %if.then.i.i179.i
  %top_field.i.i.i183.i = getelementptr inbounds i8, ptr %330, i64 56
  %334 = load ptr, ptr %top_field.i.i.i183.i, align 8
  %tobool1.not.i.i.i184.i = icmp eq ptr %334, null
  br i1 %tobool1.not.i.i.i184.i, label %if.end5.i.i.i189.i, label %if.then2.i.i.i185.i

if.then2.i.i.i185.i:                              ; preds = %if.then.i.i.i182.i
  %used_for_reference.i.i.i186.i = getelementptr inbounds i8, ptr %334, i64 44
  store i32 0, ptr %used_for_reference.i.i.i186.i, align 4
  %335 = load ptr, ptr %top_field.i.i.i183.i, align 8
  %is_long_term.i.i.i187.i = getelementptr inbounds i8, ptr %335, i64 40
  store i8 0, ptr %is_long_term.i.i.i187.i, align 8
  %.pre.i.i.i188.i = load i32, ptr %330, align 8
  br label %if.end5.i.i.i189.i

if.end5.i.i.i189.i:                               ; preds = %if.then2.i.i.i185.i, %if.then.i.i.i182.i, %if.then.i.i179.i
  %336 = phi i32 [ %333, %if.then.i.i.i182.i ], [ %.pre.i.i.i188.i, %if.then2.i.i.i185.i ], [ %333, %if.then.i.i179.i ]
  %and7.i.i.i190.i = and i32 %336, 2
  %tobool8.not.i.i.i191.i = icmp eq i32 %and7.i.i.i190.i, 0
  br i1 %tobool8.not.i.i.i191.i, label %if.end17.i.i.i199.i, label %if.then9.i.i.i192.i

if.then9.i.i.i192.i:                              ; preds = %if.end5.i.i.i189.i
  %bottom_field.i.i.i193.i = getelementptr inbounds i8, ptr %330, i64 64
  %337 = load ptr, ptr %bottom_field.i.i.i193.i, align 8
  %tobool10.not.i.i.i194.i = icmp eq ptr %337, null
  br i1 %tobool10.not.i.i.i194.i, label %if.end17.i.i.i199.i, label %if.then11.i.i.i195.i

if.then11.i.i.i195.i:                             ; preds = %if.then9.i.i.i192.i
  %used_for_reference13.i.i.i196.i = getelementptr inbounds i8, ptr %337, i64 44
  store i32 0, ptr %used_for_reference13.i.i.i196.i, align 4
  %338 = load ptr, ptr %bottom_field.i.i.i193.i, align 8
  %is_long_term15.i.i.i197.i = getelementptr inbounds i8, ptr %338, i64 40
  store i8 0, ptr %is_long_term15.i.i.i197.i, align 8
  %.pr.pre.i.i.i198.i = load i32, ptr %330, align 8
  br label %if.end17.i.i.i199.i

if.end17.i.i.i199.i:                              ; preds = %if.then11.i.i.i195.i, %if.then9.i.i.i192.i, %if.end5.i.i.i189.i
  %339 = phi i32 [ %336, %if.end5.i.i.i189.i ], [ %.pr.pre.i.i.i198.i, %if.then11.i.i.i195.i ], [ %336, %if.then9.i.i.i192.i ]
  %cmp.i.i.i200.i = icmp eq i32 %339, 3
  br i1 %cmp.i.i.i200.i, label %if.then19.i.i.i205.i, label %unmark_for_long_term_reference.exit.i.i201.i

if.then19.i.i.i205.i:                             ; preds = %if.end17.i.i.i199.i
  %top_field20.i.i.i206.i = getelementptr inbounds i8, ptr %330, i64 56
  %340 = load ptr, ptr %top_field20.i.i.i206.i, align 8
  %tobool21.not.i.i.i207.i = icmp eq ptr %340, null
  br i1 %tobool21.not.i.i.i207.i, label %if.end33.i.i.i216.i, label %land.lhs.true.i.i.i208.i

land.lhs.true.i.i.i208.i:                         ; preds = %if.then19.i.i.i205.i
  %bottom_field22.i.i.i209.i = getelementptr inbounds i8, ptr %330, i64 64
  %341 = load ptr, ptr %bottom_field22.i.i.i209.i, align 8
  %tobool23.not.i.i.i210.i = icmp eq ptr %341, null
  br i1 %tobool23.not.i.i.i210.i, label %if.end33.i.i.i216.i, label %if.then24.i.i.i211.i

if.then24.i.i.i211.i:                             ; preds = %land.lhs.true.i.i.i208.i
  %used_for_reference26.i.i.i212.i = getelementptr inbounds i8, ptr %340, i64 44
  store i32 0, ptr %used_for_reference26.i.i.i212.i, align 4
  %342 = load ptr, ptr %top_field20.i.i.i206.i, align 8
  %is_long_term28.i.i.i213.i = getelementptr inbounds i8, ptr %342, i64 40
  store i8 0, ptr %is_long_term28.i.i.i213.i, align 8
  %343 = load ptr, ptr %bottom_field22.i.i.i209.i, align 8
  %used_for_reference30.i.i.i214.i = getelementptr inbounds i8, ptr %343, i64 44
  store i32 0, ptr %used_for_reference30.i.i.i214.i, align 4
  %344 = load ptr, ptr %bottom_field22.i.i.i209.i, align 8
  %is_long_term32.i.i.i215.i = getelementptr inbounds i8, ptr %344, i64 40
  store i8 0, ptr %is_long_term32.i.i.i215.i, align 8
  br label %if.end33.i.i.i216.i

if.end33.i.i.i216.i:                              ; preds = %if.then24.i.i.i211.i, %land.lhs.true.i.i.i208.i, %if.then19.i.i.i205.i
  %frame.i.i.i217.i = getelementptr inbounds i8, ptr %330, i64 48
  %345 = load ptr, ptr %frame.i.i.i217.i, align 8
  %used_for_reference34.i.i.i218.i = getelementptr inbounds i8, ptr %345, i64 44
  store i32 0, ptr %used_for_reference34.i.i.i218.i, align 4
  %346 = load ptr, ptr %frame.i.i.i217.i, align 8
  %is_long_term36.i.i.i219.i = getelementptr inbounds i8, ptr %346, i64 40
  store i8 0, ptr %is_long_term36.i.i.i219.i, align 8
  br label %unmark_for_long_term_reference.exit.i.i201.i

unmark_for_long_term_reference.exit.i.i201.i:     ; preds = %if.end33.i.i.i216.i, %if.end17.i.i.i199.i
  %is_reference.i.i.i202.i = getelementptr inbounds i8, ptr %330, i64 4
  store i32 0, ptr %is_reference.i.i.i202.i, align 4
  %is_long_term38.i.i.i203.i = getelementptr inbounds i8, ptr %330, i64 8
  store i32 0, ptr %is_long_term38.i.i.i203.i, align 8
  %.pre.i.i204.i = load i32, ptr %ltref_frames_in_buffer.i.i164.i, align 4
  br label %for.inc.i.i173.i

for.inc.i.i173.i:                                 ; preds = %unmark_for_long_term_reference.exit.i.i201.i, %land.lhs.true.i.i176.i, %for.body.i.i168.i
  %347 = phi i32 [ %328, %for.body.i.i168.i ], [ %328, %land.lhs.true.i.i176.i ], [ %.pre.i.i204.i, %unmark_for_long_term_reference.exit.i.i201.i ]
  %indvars.iv.next.i.i174.i = add nuw nsw i64 %indvars.iv.i.i169.i, 1
  %348 = zext i32 %347 to i64
  %cmp.i.i175.i = icmp ult i64 %indvars.iv.next.i.i174.i, %348
  br i1 %cmp.i.i175.i, label %for.body.i.i168.i, label %mm_mark_current_picture_long_term.exit.i

if.else.i159.i:                                   ; preds = %sw.bb17.i
  %349 = load i32, ptr %pic_num.i160.i, align 4
  %350 = load i32, ptr %view_id2.i.i, align 8
  tail call fastcc void @unmark_long_term_field_for_reference_by_frame_idx(ptr noundef nonnull readonly %p_Dpb, i32 noundef %325, i32 noundef %324, i32 noundef 1, i32 noundef %349, i32 noundef 0, i32 noundef %350)
  br label %mm_mark_current_picture_long_term.exit.i

mm_mark_current_picture_long_term.exit.i:         ; preds = %for.inc.i.i173.i, %if.else.i159.i, %if.then.i162.i
  store i8 1, ptr %is_long_term.i161.i, align 8
  store i32 %324, ptr %long_term_frame_idx3.i.i, align 4
  %351 = load i32, ptr %ltref_frames_in_buffer.i.i164.i, align 4
  %352 = load i32, ptr %ref_frames_in_buffer.i221.i, align 8
  %add.i.i = add i32 %352, %351
  %353 = load i32, ptr %num_ref_frames.i.i, align 4
  %cond.i.i.i = tail call noundef i32 @llvm.smax.i32(i32 %353, i32 1)
  %cmp.i222.i = icmp sgt i32 %add.i.i, %cond.i.i.i
  br i1 %cmp.i222.i, label %if.then.i223.i, label %sw.epilog.i

if.then.i223.i:                                   ; preds = %mm_mark_current_picture_long_term.exit.i
  tail call void @error(ptr noundef nonnull @.str.2, i32 noundef 500) #20
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %while.body.i
  tail call void @error(ptr noundef nonnull @.str.32, i32 noundef 500) #20
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.default.i, %if.then.i223.i, %mm_mark_current_picture_long_term.exit.i, %mm_unmark_all_short_term_for_reference.exit.i, %sw.bb10.i, %mm_assign_long_term_frame_idx.exit.i, %mm_unmark_long_term_for_reference.exit.i, %mm_unmark_short_term_for_reference.exit.i, %if.then.i, %sw.bb.i
  %Next19.i = getelementptr inbounds i8, ptr %73, i64 24
  %354 = load ptr, ptr %Next19.i, align 8
  store ptr %354, ptr %dec_ref_pic_marking_buffer.i, align 8
  tail call void @free(ptr noundef %73) #20
  %355 = load ptr, ptr %dec_ref_pic_marking_buffer.i, align 8
  %tobool.not.i366 = icmp eq ptr %355, null
  br i1 %tobool.not.i366, label %while.end.i, label %while.body.i

while.end.i:                                      ; preds = %sw.epilog.i
  %.pre.i367 = load i32, ptr %last_has_mmco_5.i, align 4
  %356 = icmp eq i32 %.pre.i367, 0
  br i1 %356, label %if.end5, label %if.then23.i

if.then23.i:                                      ; preds = %while.end.i
  store i32 0, ptr %frame_num.i.i113.i, align 4
  store i32 0, ptr %pic_num.i160.i, align 4
  %357 = load i32, ptr %p, align 8
  switch i32 %357, label %sw.epilog36.i [
    i32 1, label %sw.bb24.i
    i32 2, label %sw.bb25.i
    i32 0, label %sw.bb27.i
  ]

sw.bb24.i:                                        ; preds = %if.then23.i
  %top_poc.i = getelementptr inbounds i8, ptr %p, i64 8
  store i32 0, ptr %top_poc.i, align 8
  %poc.i = getelementptr inbounds i8, ptr %p, i64 4
  store i32 0, ptr %poc.i, align 4
  br label %sw.epilog36.i

sw.bb25.i:                                        ; preds = %if.then23.i
  %bottom_poc.i = getelementptr inbounds i8, ptr %p, i64 12
  store i32 0, ptr %bottom_poc.i, align 4
  %poc26.i = getelementptr inbounds i8, ptr %p, i64 4
  store i32 0, ptr %poc26.i, align 4
  br label %sw.epilog36.i

sw.bb27.i:                                        ; preds = %if.then23.i
  %poc28.i = getelementptr inbounds i8, ptr %p, i64 4
  %358 = load i32, ptr %poc28.i, align 4
  %top_poc29.i = getelementptr inbounds i8, ptr %p, i64 8
  %359 = load i32, ptr %top_poc29.i, align 8
  %sub.i368 = sub nsw i32 %359, %358
  store i32 %sub.i368, ptr %top_poc29.i, align 8
  %bottom_poc31.i = getelementptr inbounds i8, ptr %p, i64 12
  %360 = load i32, ptr %bottom_poc31.i, align 4
  %sub32.i = sub nsw i32 %360, %358
  store i32 %sub32.i, ptr %bottom_poc31.i, align 4
  %cond.i.i = tail call noundef i32 @llvm.smin.i32(i32 %sub.i368, i32 %sub32.i)
  store i32 %cond.i.i, ptr %poc28.i, align 4
  br label %sw.epilog36.i

sw.epilog36.i:                                    ; preds = %sw.bb27.i, %sw.bb25.i, %sw.bb24.i, %if.then23.i
  %361 = load i32, ptr %view_id2.i.i, align 8
  tail call void @flush_dpb(ptr noundef nonnull %p_Dpb, i32 noundef %361)
  br label %if.end5

if.end5:                                          ; preds = %sw.epilog36.i, %while.end.i, %if.then4, %if.else, %land.lhs.true, %idr_memory_management.exit
  %362 = load i32, ptr %p, align 8
  %.off = add i32 %362, -1
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.then12, label %if.end113

if.then12:                                        ; preds = %if.end5
  %last_picture = getelementptr inbounds i8, ptr %p_Dpb, i64 4168
  %363 = load ptr, ptr %last_picture, align 8
  %tobool13.not = icmp eq ptr %363, null
  br i1 %tobool13.not, label %if.then19, label %land.lhs.true14

land.lhs.true14:                                  ; preds = %if.then12
  %view_id = getelementptr inbounds i8, ptr %363, i64 72
  %364 = load i32, ptr %view_id, align 8
  %view_id16 = getelementptr inbounds i8, ptr %p, i64 344
  %365 = load i32, ptr %view_id16, align 8
  %cmp17 = icmp eq i32 %364, %365
  br i1 %cmp17, label %land.lhs.true61, label %if.then19

if.then19:                                        ; preds = %land.lhs.true14, %if.then12
  %used_size = getelementptr inbounds i8, ptr %p_Dpb, i64 44
  %366 = load i32, ptr %used_size, align 4
  %cmp20461.not = icmp eq i32 %366, 0
  br i1 %cmp20461.not, label %if.end58, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.then19
  %fs = getelementptr inbounds i8, ptr %p_Dpb, i64 16
  %367 = load ptr, ptr %fs, align 8
  %view_id23 = getelementptr inbounds i8, ptr %p, i64 344
  %368 = load i32, ptr %view_id23, align 8
  %wide.trip.count = zext i32 %366 to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %arrayidx = getelementptr inbounds ptr, ptr %367, i64 %indvars.iv
  %369 = load ptr, ptr %arrayidx, align 8
  %view_id22 = getelementptr inbounds i8, ptr %369, i64 72
  %370 = load i32, ptr %view_id22, align 8
  %cmp24 = icmp eq i32 %370, %368
  br i1 %cmp24, label %land.lhs.true26, label %for.inc

land.lhs.true26:                                  ; preds = %for.body
  switch i32 %362, label %for.inc [
    i32 1, label %land.lhs.true30
    i32 2, label %land.lhs.true40
  ]

land.lhs.true30:                                  ; preds = %land.lhs.true26
  %371 = load i32, ptr %369, align 8
  %cmp34 = icmp eq i32 %371, 2
  br i1 %cmp34, label %if.then52, label %for.inc

land.lhs.true40:                                  ; preds = %land.lhs.true26
  %372 = load i32, ptr %369, align 8
  %cmp45 = icmp eq i32 %372, 1
  br i1 %cmp45, label %if.then52, label %for.inc

for.inc:                                          ; preds = %land.lhs.true26, %land.lhs.true30, %for.body, %land.lhs.true40
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %if.end58, label %for.body

if.then52:                                        ; preds = %land.lhs.true30, %land.lhs.true40
  %idxprom54 = and i64 %indvars.iv, 4294967295
  %arrayidx55 = getelementptr inbounds ptr, ptr %367, i64 %idxprom54
  %373 = load ptr, ptr %arrayidx55, align 8
  store ptr %373, ptr %last_picture, align 8
  br label %if.end58

if.end58:                                         ; preds = %for.inc, %if.then19, %if.then52
  %374 = phi ptr [ %373, %if.then52 ], [ %363, %if.then19 ], [ %363, %for.inc ]
  %tobool60.not = icmp eq ptr %374, null
  br i1 %tobool60.not, label %if.end113, label %land.lhs.true61

land.lhs.true61:                                  ; preds = %land.lhs.true14, %if.end58
  %375 = phi ptr [ %374, %if.end58 ], [ %363, %land.lhs.true14 ]
  %view_id63 = getelementptr inbounds i8, ptr %375, i64 72
  %376 = load i32, ptr %view_id63, align 8
  %view_id64 = getelementptr inbounds i8, ptr %p, i64 344
  %377 = load i32, ptr %view_id64, align 8
  %cmp65 = icmp eq i32 %376, %377
  br i1 %cmp65, label %if.then67, label %if.end113

if.then67:                                        ; preds = %land.lhs.true61
  %frame_num = getelementptr inbounds i8, ptr %375, i64 20
  %378 = load i32, ptr %frame_num, align 4
  %pic_num = getelementptr inbounds i8, ptr %p, i64 28
  %379 = load i32, ptr %pic_num, align 4
  %cmp69 = icmp eq i32 %378, %379
  br i1 %cmp69, label %if.then71, label %if.end113

if.then71:                                        ; preds = %if.then67
  %380 = load i32, ptr %p, align 8
  switch i32 %380, label %if.end113 [
    i32 1, label %land.lhs.true75
    i32 2, label %land.lhs.true84
  ]

land.lhs.true75:                                  ; preds = %if.then71
  %381 = load i32, ptr %375, align 8
  %cmp78 = icmp eq i32 %381, 2
  br i1 %cmp78, label %if.then89, label %if.end113

land.lhs.true84:                                  ; preds = %if.then71
  %382 = load i32, ptr %375, align 8
  %cmp87 = icmp eq i32 %382, 1
  br i1 %cmp87, label %if.then89, label %if.end113

if.then89:                                        ; preds = %land.lhs.true84, %land.lhs.true75
  %used_for_reference90 = getelementptr inbounds i8, ptr %p, i64 44
  %383 = load i32, ptr %used_for_reference90, align 4
  %tobool91.not = icmp eq i32 %383, 0
  %is_orig_reference101 = getelementptr inbounds i8, ptr %375, i64 12
  %384 = load i32, ptr %is_orig_reference101, align 4
  %cmp102 = icmp eq i32 %384, 0
  %385 = xor i1 %tobool91.not, %cmp102
  br i1 %385, label %if.end113, label %if.then104

if.then104:                                       ; preds = %if.then89
  tail call fastcc void @insert_picture_in_dpb(ptr noundef %0, ptr noundef nonnull %375, ptr noundef nonnull %p)
  %386 = load i32, ptr %view_id64, align 8
  tail call void @update_ref_list(ptr noundef nonnull %p_Dpb, i32 noundef %386)
  %387 = load i32, ptr %view_id64, align 8
  tail call void @update_ltref_list(ptr noundef nonnull %p_Dpb, i32 noundef %387)
  store ptr null, ptr %last_picture, align 8
  br label %cleanup

if.end113:                                        ; preds = %if.then89, %if.then71, %land.lhs.true75, %if.end5, %if.end58, %land.lhs.true61, %land.lhs.true84, %if.then67
  %388 = load i32, ptr %idr_flag, align 4
  %tobool115.not = icmp eq i32 %388, 0
  br i1 %tobool115.not, label %land.lhs.true116, label %if.end123

land.lhs.true116:                                 ; preds = %if.end113
  %used_for_reference117 = getelementptr inbounds i8, ptr %p, i64 44
  %389 = load i32, ptr %used_for_reference117, align 4
  %tobool118.not = icmp eq i32 %389, 0
  br i1 %tobool118.not, label %if.end123, label %land.lhs.true119

land.lhs.true119:                                 ; preds = %land.lhs.true116
  %adaptive_ref_pic_buffering_flag120 = getelementptr inbounds i8, ptr %p, i64 264
  %390 = load i32, ptr %adaptive_ref_pic_buffering_flag120, align 8
  %tobool121.not = icmp eq i32 %390, 0
  br i1 %tobool121.not, label %if.then122, label %if.end123

if.then122:                                       ; preds = %land.lhs.true119
  %ref_frames_in_buffer.i383 = getelementptr inbounds i8, ptr %p_Dpb, i64 48
  %391 = load i32, ptr %ref_frames_in_buffer.i383, align 8
  %num_ref_frames.i = getelementptr inbounds i8, ptr %p_Dpb, i64 4164
  %392 = load i32, ptr %num_ref_frames.i, align 4
  %ltref_frames_in_buffer.i384 = getelementptr inbounds i8, ptr %p_Dpb, i64 52
  %393 = load i32, ptr %ltref_frames_in_buffer.i384, align 4
  %sub.i385 = sub i32 %392, %393
  %cmp.i386 = icmp eq i32 %391, %sub.i385
  br i1 %cmp.i386, label %if.then.i387, label %sliding_window_memory_management.exit

if.then.i387:                                     ; preds = %if.then122
  %394 = load ptr, ptr %p_Dpb, align 8
  %profile_idc.i388 = getelementptr inbounds i8, ptr %394, i64 849084
  %395 = load i32, ptr %profile_idc.i388, align 4
  switch i32 %395, label %for.cond22.preheader.i [
    i32 118, label %if.then5.i
    i32 128, label %if.then5.i
  ]

for.cond22.preheader.i:                           ; preds = %if.then.i387
  %used_size23.i = getelementptr inbounds i8, ptr %p_Dpb, i64 44
  %396 = load i32, ptr %used_size23.i, align 4
  %cmp2481.not.i = icmp eq i32 %396, 0
  br i1 %cmp2481.not.i, label %sliding_window_memory_management.exit, label %for.body25.lr.ph.i

for.body25.lr.ph.i:                               ; preds = %for.cond22.preheader.i
  %fs26.i = getelementptr inbounds i8, ptr %p_Dpb, i64 16
  %397 = load ptr, ptr %fs26.i, align 8
  %wide.trip.count91.i = zext i32 %396 to i64
  br label %for.body25.i

if.then5.i:                                       ; preds = %if.then.i387, %if.then.i387
  %used_size.i389 = getelementptr inbounds i8, ptr %p_Dpb, i64 44
  %398 = load i32, ptr %used_size.i389, align 4
  %cmp679.not.i = icmp eq i32 %398, 0
  br i1 %cmp679.not.i, label %sliding_window_memory_management.exit, label %for.body.lr.ph.i390

for.body.lr.ph.i390:                              ; preds = %if.then5.i
  %fs.i391 = getelementptr inbounds i8, ptr %p_Dpb, i64 16
  %399 = load ptr, ptr %fs.i391, align 8
  %view_id15.i = getelementptr inbounds i8, ptr %p, i64 344
  %wide.trip.count.i = zext i32 %398 to i64
  br label %for.body.i392

for.body.i392:                                    ; preds = %for.inc.i395, %for.body.lr.ph.i390
  %indvars.iv.i393 = phi i64 [ 0, %for.body.lr.ph.i390 ], [ %indvars.iv.next.i396, %for.inc.i395 ]
  %arrayidx.i = getelementptr inbounds ptr, ptr %399, i64 %indvars.iv.i393
  %400 = load ptr, ptr %arrayidx.i, align 8
  %is_reference.i = getelementptr inbounds i8, ptr %400, i64 4
  %401 = load i32, ptr %is_reference.i, align 4
  %tobool.not.i394 = icmp eq i32 %401, 0
  br i1 %tobool.not.i394, label %for.inc.i395, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %for.body.i392
  %is_long_term.i = getelementptr inbounds i8, ptr %400, i64 8
  %402 = load i32, ptr %is_long_term.i, align 8
  %tobool10.not.i = icmp eq i32 %402, 0
  br i1 %tobool10.not.i, label %land.lhs.true11.i, label %for.inc.i395

land.lhs.true11.i:                                ; preds = %land.lhs.true.i
  %view_id.i397 = getelementptr inbounds i8, ptr %400, i64 72
  %403 = load i32, ptr %view_id.i397, align 8
  %404 = load i32, ptr %view_id15.i, align 8
  %cmp16.i = icmp eq i32 %403, %404
  br i1 %cmp16.i, label %if.then17.i, label %for.inc.i395

if.then17.i:                                      ; preds = %land.lhs.true11.i
  tail call fastcc void @unmark_for_reference(ptr noundef nonnull %400)
  br label %if.end47.sink.split.i

for.inc.i395:                                     ; preds = %land.lhs.true11.i, %land.lhs.true.i, %for.body.i392
  %indvars.iv.next.i396 = add nuw nsw i64 %indvars.iv.i393, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i396, %wide.trip.count.i
  br i1 %exitcond.not.i, label %sliding_window_memory_management.exit, label %for.body.i392

for.body25.i:                                     ; preds = %for.inc43.i, %for.body25.lr.ph.i
  %indvars.iv88.i = phi i64 [ 0, %for.body25.lr.ph.i ], [ %indvars.iv.next89.i, %for.inc43.i ]
  %arrayidx28.i = getelementptr inbounds ptr, ptr %397, i64 %indvars.iv88.i
  %405 = load ptr, ptr %arrayidx28.i, align 8
  %is_reference29.i = getelementptr inbounds i8, ptr %405, i64 4
  %406 = load i32, ptr %is_reference29.i, align 4
  %tobool30.not.i = icmp eq i32 %406, 0
  br i1 %tobool30.not.i, label %for.inc43.i, label %land.lhs.true31.i

land.lhs.true31.i:                                ; preds = %for.body25.i
  %is_long_term35.i = getelementptr inbounds i8, ptr %405, i64 8
  %407 = load i32, ptr %is_long_term35.i, align 8
  %tobool36.not.i = icmp eq i32 %407, 0
  br i1 %tobool36.not.i, label %if.then37.i, label %for.inc43.i

if.then37.i:                                      ; preds = %land.lhs.true31.i
  tail call fastcc void @unmark_for_reference(ptr noundef nonnull %405)
  %view_id41.i = getelementptr inbounds i8, ptr %p, i64 344
  br label %if.end47.sink.split.i

for.inc43.i:                                      ; preds = %land.lhs.true31.i, %for.body25.i
  %indvars.iv.next89.i = add nuw nsw i64 %indvars.iv88.i, 1
  %exitcond92.not.i = icmp eq i64 %indvars.iv.next89.i, %wide.trip.count91.i
  br i1 %exitcond92.not.i, label %sliding_window_memory_management.exit, label %for.body25.i

if.end47.sink.split.i:                            ; preds = %if.then37.i, %if.then17.i
  %view_id15.sink.i = phi ptr [ %view_id15.i, %if.then17.i ], [ %view_id41.i, %if.then37.i ]
  %408 = load i32, ptr %view_id15.sink.i, align 8
  tail call void @update_ref_list(ptr noundef nonnull %p_Dpb, i32 noundef %408)
  br label %sliding_window_memory_management.exit

sliding_window_memory_management.exit:            ; preds = %for.inc.i395, %for.inc43.i, %if.then122, %for.cond22.preheader.i, %if.then5.i, %if.end47.sink.split.i
  %is_long_term48.i = getelementptr inbounds i8, ptr %p, i64 40
  store i8 0, ptr %is_long_term48.i, align 8
  br label %if.end123

if.end123:                                        ; preds = %sliding_window_memory_management.exit, %land.lhs.true119, %land.lhs.true116, %if.end113
  %conceal_mode = getelementptr inbounds i8, ptr %0, i64 849240
  %409 = load i32, ptr %conceal_mode, align 8
  %cmp124.not = icmp eq i32 %409, 0
  %size145.phi.trans.insert = getelementptr inbounds i8, ptr %p_Dpb, i64 40
  %.pre509 = load i32, ptr %size145.phi.trans.insert, align 8
  br i1 %cmp124.not, label %if.end143, label %for.cond127.preheader

for.cond127.preheader:                            ; preds = %if.end123
  %cmp128463.not = icmp eq i32 %.pre509, 0
  br i1 %cmp128463.not, label %if.end143, label %for.body130.lr.ph

for.body130.lr.ph:                                ; preds = %for.cond127.preheader
  %fs131 = getelementptr inbounds i8, ptr %p_Dpb, i64 16
  br label %for.body130

for.body130:                                      ; preds = %for.body130.lr.ph, %for.inc140
  %410 = phi i32 [ %.pre509, %for.body130.lr.ph ], [ %414, %for.inc140 ]
  %indvars.iv501 = phi i64 [ 0, %for.body130.lr.ph ], [ %indvars.iv.next502, %for.inc140 ]
  %411 = load ptr, ptr %fs131, align 8
  %arrayidx133 = getelementptr inbounds ptr, ptr %411, i64 %indvars.iv501
  %412 = load ptr, ptr %arrayidx133, align 8
  %is_reference = getelementptr inbounds i8, ptr %412, i64 4
  %413 = load i32, ptr %is_reference, align 4
  %tobool134.not = icmp eq i32 %413, 0
  br i1 %tobool134.not, label %for.inc140, label %if.then135

if.then135:                                       ; preds = %for.body130
  %concealment_reference = getelementptr inbounds i8, ptr %412, i64 44
  store i32 1, ptr %concealment_reference, align 4
  %.pre = load i32, ptr %size145.phi.trans.insert, align 8
  br label %for.inc140

for.inc140:                                       ; preds = %for.body130, %if.then135
  %414 = phi i32 [ %410, %for.body130 ], [ %.pre, %if.then135 ]
  %indvars.iv.next502 = add nuw nsw i64 %indvars.iv501, 1
  %415 = zext i32 %414 to i64
  %cmp128 = icmp ult i64 %indvars.iv.next502, %415
  br i1 %cmp128, label %for.body130, label %if.end143

if.end143:                                        ; preds = %for.inc140, %if.end123, %for.cond127.preheader
  %416 = phi i32 [ 0, %for.cond127.preheader ], [ %.pre509, %if.end123 ], [ %414, %for.inc140 ]
  %used_size144 = getelementptr inbounds i8, ptr %p_Dpb, i64 44
  %417 = load i32, ptr %used_size144, align 4
  %size145 = getelementptr inbounds i8, ptr %p_Dpb, i64 40
  %cmp146 = icmp eq i32 %417, %416
  br i1 %cmp146, label %if.then148, label %if.end160

if.then148:                                       ; preds = %if.end143
  %418 = load i32, ptr %conceal_mode, align 8
  %cmp150.not = icmp eq i32 %418, 0
  br i1 %cmp150.not, label %if.end153, label %if.then152

if.then152:                                       ; preds = %if.then148
  tail call void @conceal_non_ref_pics(ptr noundef nonnull %p_Dpb, i32 noundef 2) #20
  br label %if.end153

if.end153:                                        ; preds = %if.then152, %if.then148
  %view_id154 = getelementptr inbounds i8, ptr %p, i64 344
  %419 = load i32, ptr %view_id154, align 8
  %call = tail call fastcc i32 @remove_unused_frame_from_dpb(ptr noundef nonnull %p_Dpb, i32 noundef %419)
  %420 = load i32, ptr %conceal_mode, align 8
  %cmp156.not = icmp eq i32 %420, 0
  br i1 %cmp156.not, label %if.end160, label %if.then158

if.then158:                                       ; preds = %if.end153
  tail call void @sliding_window_poc_management(ptr noundef nonnull %p_Dpb, ptr noundef nonnull %p) #20
  br label %if.end160

if.end160:                                        ; preds = %if.end153, %if.then158, %if.end143
  %421 = load i32, ptr %used_size144, align 4
  %422 = load i32, ptr %size145, align 8
  %cmp163465 = icmp eq i32 %421, %422
  br i1 %cmp163465, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %if.end160
  %used_for_reference165 = getelementptr inbounds i8, ptr %p, i64 44
  %view_id168 = getelementptr inbounds i8, ptr %p, i64 344
  %fs.i401 = getelementptr inbounds i8, ptr %p_Dpb, i64 16
  %poc172 = getelementptr inbounds i8, ptr %p, i64 4
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %if.end177
  %423 = phi i32 [ %421, %while.body.lr.ph ], [ %460, %if.end177 ]
  %424 = load i32, ptr %used_for_reference165, align 4
  %tobool166.not = icmp eq i32 %424, 0
  %.pre512 = load i32, ptr %view_id168, align 8
  br i1 %tobool166.not, label %if.then167, label %if.end177

if.then167:                                       ; preds = %while.body
  %cmp.i399 = icmp eq i32 %423, 0
  br i1 %cmp.i399, label %if.end.i, label %for.body.lr.ph.i400

if.end.i:                                         ; preds = %if.then167
  tail call void @error(ptr noundef nonnull @.str.37, i32 noundef 150) #20
  %.pre510 = load i32, ptr %used_size144, align 4
  %cmp235.not.i = icmp eq i32 %.pre510, 0
  br i1 %cmp235.not.i, label %if.then175, label %for.body.lr.ph.i400

for.body.lr.ph.i400:                              ; preds = %if.then167, %if.end.i
  %425 = phi i32 [ %.pre510, %if.end.i ], [ %423, %if.then167 ]
  %cmp13.i = icmp eq i32 %.pre512, -1
  %426 = load ptr, ptr %fs.i401, align 8
  %427 = zext i32 %425 to i64
  br i1 %cmp13.i, label %for.body.us.i.preheader, label %for.body.i402.preheader

for.body.i402.preheader:                          ; preds = %for.body.lr.ph.i400
  %xtraiter = and i64 %427, 1
  %428 = icmp eq i32 %425, 1
  br i1 %428, label %get_smallest_poc.exit.loopexit586.unr-lcssa, label %for.body.i402.preheader.new

for.body.i402.preheader.new:                      ; preds = %for.body.i402.preheader
  %unroll_iter = and i64 %427, 4294967294
  br label %for.body.i402

for.body.us.i.preheader:                          ; preds = %for.body.lr.ph.i400
  %xtraiter622 = and i64 %427, 1
  %429 = icmp eq i32 %425, 1
  br i1 %429, label %get_smallest_poc.exit.loopexit.unr-lcssa, label %for.body.us.i.preheader.new

for.body.us.i.preheader.new:                      ; preds = %for.body.us.i.preheader
  %unroll_iter626 = and i64 %427, 4294967294
  br label %for.body.us.i

for.body.us.i:                                    ; preds = %for.inc.us.i.1, %for.body.us.i.preheader.new
  %poc.0 = phi i32 [ 2147483647, %for.body.us.i.preheader.new ], [ %poc.1.1, %for.inc.us.i.1 ]
  %pos.0 = phi i32 [ -1, %for.body.us.i.preheader.new ], [ %pos.1.1, %for.inc.us.i.1 ]
  %indvars.iv39.i = phi i64 [ 0, %for.body.us.i.preheader.new ], [ %indvars.iv.next40.i.1, %for.inc.us.i.1 ]
  %niter627 = phi i64 [ 0, %for.body.us.i.preheader.new ], [ %niter627.next.1, %for.inc.us.i.1 ]
  %arrayidx.us.i = getelementptr inbounds ptr, ptr %426, i64 %indvars.iv39.i
  %430 = load ptr, ptr %arrayidx.us.i, align 8
  %poc3.us.i = getelementptr inbounds i8, ptr %430, i64 40
  %431 = load i32, ptr %poc3.us.i, align 8
  %cmp4.us.i = icmp sgt i32 %poc.0, %431
  br i1 %cmp4.us.i, label %land.lhs.true.us.i, label %for.inc.us.i

land.lhs.true.us.i:                               ; preds = %for.body.us.i
  %is_output.us.i = getelementptr inbounds i8, ptr %430, i64 36
  %432 = load i32, ptr %is_output.us.i, align 4
  %tobool.not.us.i = icmp eq i32 %432, 0
  %433 = trunc nuw i64 %indvars.iv39.i to i32
  %spec.select = select i1 %tobool.not.us.i, i32 %431, i32 %poc.0
  %spec.select426 = select i1 %tobool.not.us.i, i32 %433, i32 %pos.0
  br label %for.inc.us.i

for.inc.us.i:                                     ; preds = %land.lhs.true.us.i, %for.body.us.i
  %poc.1 = phi i32 [ %poc.0, %for.body.us.i ], [ %spec.select, %land.lhs.true.us.i ]
  %pos.1 = phi i32 [ %pos.0, %for.body.us.i ], [ %spec.select426, %land.lhs.true.us.i ]
  %indvars.iv.next40.i = or disjoint i64 %indvars.iv39.i, 1
  %arrayidx.us.i.1 = getelementptr inbounds ptr, ptr %426, i64 %indvars.iv.next40.i
  %434 = load ptr, ptr %arrayidx.us.i.1, align 8
  %poc3.us.i.1 = getelementptr inbounds i8, ptr %434, i64 40
  %435 = load i32, ptr %poc3.us.i.1, align 8
  %cmp4.us.i.1 = icmp sgt i32 %poc.1, %435
  br i1 %cmp4.us.i.1, label %land.lhs.true.us.i.1, label %for.inc.us.i.1

land.lhs.true.us.i.1:                             ; preds = %for.inc.us.i
  %is_output.us.i.1 = getelementptr inbounds i8, ptr %434, i64 36
  %436 = load i32, ptr %is_output.us.i.1, align 4
  %tobool.not.us.i.1 = icmp eq i32 %436, 0
  %437 = trunc nuw i64 %indvars.iv.next40.i to i32
  %spec.select.1 = select i1 %tobool.not.us.i.1, i32 %435, i32 %poc.1
  %spec.select426.1 = select i1 %tobool.not.us.i.1, i32 %437, i32 %pos.1
  br label %for.inc.us.i.1

for.inc.us.i.1:                                   ; preds = %land.lhs.true.us.i.1, %for.inc.us.i
  %poc.1.1 = phi i32 [ %poc.1, %for.inc.us.i ], [ %spec.select.1, %land.lhs.true.us.i.1 ]
  %pos.1.1 = phi i32 [ %pos.1, %for.inc.us.i ], [ %spec.select426.1, %land.lhs.true.us.i.1 ]
  %indvars.iv.next40.i.1 = add nuw nsw i64 %indvars.iv39.i, 2
  %niter627.next.1 = add i64 %niter627, 2
  %niter627.ncmp.1 = icmp eq i64 %niter627.next.1, %unroll_iter626
  br i1 %niter627.ncmp.1, label %get_smallest_poc.exit.loopexit.unr-lcssa, label %for.body.us.i

for.body.i402:                                    ; preds = %for.inc.i405.1, %for.body.i402.preheader.new
  %poc.2 = phi i32 [ 2147483647, %for.body.i402.preheader.new ], [ %poc.3.1, %for.inc.i405.1 ]
  %pos.2 = phi i32 [ -1, %for.body.i402.preheader.new ], [ %pos.3.1, %for.inc.i405.1 ]
  %indvars.iv.i403 = phi i64 [ 0, %for.body.i402.preheader.new ], [ %indvars.iv.next.i406.1, %for.inc.i405.1 ]
  %niter = phi i64 [ 0, %for.body.i402.preheader.new ], [ %niter.next.1, %for.inc.i405.1 ]
  %arrayidx.i404 = getelementptr inbounds ptr, ptr %426, i64 %indvars.iv.i403
  %438 = load ptr, ptr %arrayidx.i404, align 8
  %poc3.i = getelementptr inbounds i8, ptr %438, i64 40
  %439 = load i32, ptr %poc3.i, align 8
  %cmp4.i = icmp sgt i32 %poc.2, %439
  br i1 %cmp4.i, label %land.lhs.true.i407, label %for.inc.i405

land.lhs.true.i407:                               ; preds = %for.body.i402
  %is_output.i = getelementptr inbounds i8, ptr %438, i64 36
  %440 = load i32, ptr %is_output.i, align 4
  %tobool.not.i408 = icmp eq i32 %440, 0
  br i1 %tobool.not.i408, label %land.lhs.true8.i, label %for.inc.i405

land.lhs.true8.i:                                 ; preds = %land.lhs.true.i407
  %view_id.i409 = getelementptr inbounds i8, ptr %438, i64 72
  %441 = load i32, ptr %view_id.i409, align 8
  %cmp12.i = icmp eq i32 %441, %.pre512
  %442 = trunc nuw i64 %indvars.iv.i403 to i32
  %spec.select427 = select i1 %cmp12.i, i32 %439, i32 %poc.2
  %spec.select428 = select i1 %cmp12.i, i32 %442, i32 %pos.2
  br label %for.inc.i405

for.inc.i405:                                     ; preds = %land.lhs.true8.i, %land.lhs.true.i407, %for.body.i402
  %poc.3 = phi i32 [ %poc.2, %land.lhs.true.i407 ], [ %poc.2, %for.body.i402 ], [ %spec.select427, %land.lhs.true8.i ]
  %pos.3 = phi i32 [ %pos.2, %land.lhs.true.i407 ], [ %pos.2, %for.body.i402 ], [ %spec.select428, %land.lhs.true8.i ]
  %indvars.iv.next.i406 = or disjoint i64 %indvars.iv.i403, 1
  %arrayidx.i404.1 = getelementptr inbounds ptr, ptr %426, i64 %indvars.iv.next.i406
  %443 = load ptr, ptr %arrayidx.i404.1, align 8
  %poc3.i.1 = getelementptr inbounds i8, ptr %443, i64 40
  %444 = load i32, ptr %poc3.i.1, align 8
  %cmp4.i.1 = icmp sgt i32 %poc.3, %444
  br i1 %cmp4.i.1, label %land.lhs.true.i407.1, label %for.inc.i405.1

land.lhs.true.i407.1:                             ; preds = %for.inc.i405
  %is_output.i.1 = getelementptr inbounds i8, ptr %443, i64 36
  %445 = load i32, ptr %is_output.i.1, align 4
  %tobool.not.i408.1 = icmp eq i32 %445, 0
  br i1 %tobool.not.i408.1, label %land.lhs.true8.i.1, label %for.inc.i405.1

land.lhs.true8.i.1:                               ; preds = %land.lhs.true.i407.1
  %view_id.i409.1 = getelementptr inbounds i8, ptr %443, i64 72
  %446 = load i32, ptr %view_id.i409.1, align 8
  %cmp12.i.1 = icmp eq i32 %446, %.pre512
  %447 = trunc nuw i64 %indvars.iv.next.i406 to i32
  %spec.select427.1 = select i1 %cmp12.i.1, i32 %444, i32 %poc.3
  %spec.select428.1 = select i1 %cmp12.i.1, i32 %447, i32 %pos.3
  br label %for.inc.i405.1

for.inc.i405.1:                                   ; preds = %land.lhs.true8.i.1, %land.lhs.true.i407.1, %for.inc.i405
  %poc.3.1 = phi i32 [ %poc.3, %land.lhs.true.i407.1 ], [ %poc.3, %for.inc.i405 ], [ %spec.select427.1, %land.lhs.true8.i.1 ]
  %pos.3.1 = phi i32 [ %pos.3, %land.lhs.true.i407.1 ], [ %pos.3, %for.inc.i405 ], [ %spec.select428.1, %land.lhs.true8.i.1 ]
  %indvars.iv.next.i406.1 = add nuw nsw i64 %indvars.iv.i403, 2
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %get_smallest_poc.exit.loopexit586.unr-lcssa, label %for.body.i402

get_smallest_poc.exit.loopexit.unr-lcssa:         ; preds = %for.inc.us.i.1, %for.body.us.i.preheader
  %poc.1.lcssa.ph = phi i32 [ poison, %for.body.us.i.preheader ], [ %poc.1.1, %for.inc.us.i.1 ]
  %pos.1.lcssa.ph = phi i32 [ poison, %for.body.us.i.preheader ], [ %pos.1.1, %for.inc.us.i.1 ]
  %poc.0.unr = phi i32 [ 2147483647, %for.body.us.i.preheader ], [ %poc.1.1, %for.inc.us.i.1 ]
  %pos.0.unr = phi i32 [ -1, %for.body.us.i.preheader ], [ %pos.1.1, %for.inc.us.i.1 ]
  %indvars.iv39.i.unr = phi i64 [ 0, %for.body.us.i.preheader ], [ %indvars.iv.next40.i.1, %for.inc.us.i.1 ]
  %lcmp.mod623.not = icmp eq i64 %xtraiter622, 0
  br i1 %lcmp.mod623.not, label %get_smallest_poc.exit, label %for.body.us.i.epil

for.body.us.i.epil:                               ; preds = %get_smallest_poc.exit.loopexit.unr-lcssa
  %arrayidx.us.i.epil = getelementptr inbounds ptr, ptr %426, i64 %indvars.iv39.i.unr
  %448 = load ptr, ptr %arrayidx.us.i.epil, align 8
  %poc3.us.i.epil = getelementptr inbounds i8, ptr %448, i64 40
  %449 = load i32, ptr %poc3.us.i.epil, align 8
  %cmp4.us.i.epil = icmp sgt i32 %poc.0.unr, %449
  br i1 %cmp4.us.i.epil, label %land.lhs.true.us.i.epil, label %get_smallest_poc.exit

land.lhs.true.us.i.epil:                          ; preds = %for.body.us.i.epil
  %is_output.us.i.epil = getelementptr inbounds i8, ptr %448, i64 36
  %450 = load i32, ptr %is_output.us.i.epil, align 4
  %tobool.not.us.i.epil = icmp eq i32 %450, 0
  %451 = trunc nuw i64 %indvars.iv39.i.unr to i32
  %spec.select.epil = select i1 %tobool.not.us.i.epil, i32 %449, i32 %poc.0.unr
  %spec.select426.epil = select i1 %tobool.not.us.i.epil, i32 %451, i32 %pos.0.unr
  br label %get_smallest_poc.exit

get_smallest_poc.exit.loopexit586.unr-lcssa:      ; preds = %for.inc.i405.1, %for.body.i402.preheader
  %poc.3.lcssa.ph = phi i32 [ poison, %for.body.i402.preheader ], [ %poc.3.1, %for.inc.i405.1 ]
  %pos.3.lcssa.ph = phi i32 [ poison, %for.body.i402.preheader ], [ %pos.3.1, %for.inc.i405.1 ]
  %poc.2.unr = phi i32 [ 2147483647, %for.body.i402.preheader ], [ %poc.3.1, %for.inc.i405.1 ]
  %pos.2.unr = phi i32 [ -1, %for.body.i402.preheader ], [ %pos.3.1, %for.inc.i405.1 ]
  %indvars.iv.i403.unr = phi i64 [ 0, %for.body.i402.preheader ], [ %indvars.iv.next.i406.1, %for.inc.i405.1 ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %get_smallest_poc.exit, label %for.body.i402.epil

for.body.i402.epil:                               ; preds = %get_smallest_poc.exit.loopexit586.unr-lcssa
  %arrayidx.i404.epil = getelementptr inbounds ptr, ptr %426, i64 %indvars.iv.i403.unr
  %452 = load ptr, ptr %arrayidx.i404.epil, align 8
  %poc3.i.epil = getelementptr inbounds i8, ptr %452, i64 40
  %453 = load i32, ptr %poc3.i.epil, align 8
  %cmp4.i.epil = icmp sgt i32 %poc.2.unr, %453
  br i1 %cmp4.i.epil, label %land.lhs.true.i407.epil, label %get_smallest_poc.exit

land.lhs.true.i407.epil:                          ; preds = %for.body.i402.epil
  %is_output.i.epil = getelementptr inbounds i8, ptr %452, i64 36
  %454 = load i32, ptr %is_output.i.epil, align 4
  %tobool.not.i408.epil = icmp eq i32 %454, 0
  br i1 %tobool.not.i408.epil, label %land.lhs.true8.i.epil, label %get_smallest_poc.exit

land.lhs.true8.i.epil:                            ; preds = %land.lhs.true.i407.epil
  %view_id.i409.epil = getelementptr inbounds i8, ptr %452, i64 72
  %455 = load i32, ptr %view_id.i409.epil, align 8
  %cmp12.i.epil = icmp eq i32 %455, %.pre512
  %456 = trunc nuw i64 %indvars.iv.i403.unr to i32
  %spec.select427.epil = select i1 %cmp12.i.epil, i32 %453, i32 %poc.2.unr
  %spec.select428.epil = select i1 %cmp12.i.epil, i32 %456, i32 %pos.2.unr
  br label %get_smallest_poc.exit

get_smallest_poc.exit:                            ; preds = %get_smallest_poc.exit.loopexit586.unr-lcssa, %land.lhs.true8.i.epil, %land.lhs.true.i407.epil, %for.body.i402.epil, %get_smallest_poc.exit.loopexit.unr-lcssa, %land.lhs.true.us.i.epil, %for.body.us.i.epil
  %poc.4 = phi i32 [ %poc.1.lcssa.ph, %get_smallest_poc.exit.loopexit.unr-lcssa ], [ %poc.0.unr, %for.body.us.i.epil ], [ %spec.select.epil, %land.lhs.true.us.i.epil ], [ %poc.3.lcssa.ph, %get_smallest_poc.exit.loopexit586.unr-lcssa ], [ %poc.2.unr, %land.lhs.true.i407.epil ], [ %poc.2.unr, %for.body.i402.epil ], [ %spec.select427.epil, %land.lhs.true8.i.epil ]
  %pos.4 = phi i32 [ %pos.1.lcssa.ph, %get_smallest_poc.exit.loopexit.unr-lcssa ], [ %pos.0.unr, %for.body.us.i.epil ], [ %spec.select426.epil, %land.lhs.true.us.i.epil ], [ %pos.3.lcssa.ph, %get_smallest_poc.exit.loopexit586.unr-lcssa ], [ %pos.2.unr, %land.lhs.true.i407.epil ], [ %pos.2.unr, %for.body.i402.epil ], [ %spec.select428.epil, %land.lhs.true8.i.epil ]
  %cmp169 = icmp eq i32 %pos.4, -1
  br i1 %cmp169, label %if.then175, label %lor.lhs.false171

lor.lhs.false171:                                 ; preds = %get_smallest_poc.exit
  %457 = load i32, ptr %poc172, align 4
  %cmp173 = icmp slt i32 %457, %poc.4
  br i1 %cmp173, label %if.then175, label %lor.lhs.false171.if.end177_crit_edge

lor.lhs.false171.if.end177_crit_edge:             ; preds = %lor.lhs.false171
  %.pre511 = load i32, ptr %view_id168, align 8
  br label %if.end177

if.then175:                                       ; preds = %if.end.i, %lor.lhs.false171, %get_smallest_poc.exit
  %p_out = getelementptr inbounds i8, ptr %0, i64 851888
  %458 = load i32, ptr %p_out, align 8
  tail call void @direct_output(ptr noundef %0, ptr noundef %p, i32 noundef %458) #20
  br label %cleanup

if.end177:                                        ; preds = %lor.lhs.false171.if.end177_crit_edge, %while.body
  %459 = phi i32 [ %.pre511, %lor.lhs.false171.if.end177_crit_edge ], [ %.pre512, %while.body ]
  %call179 = tail call fastcc i32 @output_one_frame_from_dpb(ptr noundef nonnull %p_Dpb, i32 noundef %459)
  %460 = load i32, ptr %used_size144, align 4
  %461 = load i32, ptr %size145, align 8
  %cmp163 = icmp eq i32 %460, %461
  br i1 %cmp163, label %while.body, label %while.end

while.end:                                        ; preds = %if.end177, %if.end160
  %462 = phi i32 [ %421, %if.end160 ], [ %460, %if.end177 ]
  %used_for_reference180 = getelementptr inbounds i8, ptr %p, i64 44
  %463 = load i32, ptr %used_for_reference180, align 4
  %tobool181.not = icmp eq i32 %463, 0
  br i1 %tobool181.not, label %if.end208, label %land.lhs.true182

land.lhs.true182:                                 ; preds = %while.end
  %is_long_term = getelementptr inbounds i8, ptr %p, i64 40
  %464 = load i8, ptr %is_long_term, align 8
  %tobool183.not = icmp eq i8 %464, 0
  br i1 %tobool183.not, label %for.cond185.preheader, label %if.end208

for.cond185.preheader:                            ; preds = %land.lhs.true182
  %ref_frames_in_buffer = getelementptr inbounds i8, ptr %p_Dpb, i64 48
  %465 = load i32, ptr %ref_frames_in_buffer, align 8
  %cmp186466.not = icmp eq i32 %465, 0
  br i1 %cmp186466.not, label %if.end208, label %for.body188.lr.ph

for.body188.lr.ph:                                ; preds = %for.cond185.preheader
  %fs_ref = getelementptr inbounds i8, ptr %p_Dpb, i64 24
  %frame_num192 = getelementptr inbounds i8, ptr %p, i64 20
  %view_id200 = getelementptr inbounds i8, ptr %p, i64 344
  br label %for.body188

for.body188:                                      ; preds = %for.body188.lr.ph, %for.inc205
  %466 = phi i32 [ %465, %for.body188.lr.ph ], [ %473, %for.inc205 ]
  %indvars.iv506 = phi i64 [ 0, %for.body188.lr.ph ], [ %indvars.iv.next507, %for.inc205 ]
  %467 = load ptr, ptr %fs_ref, align 8
  %arrayidx190 = getelementptr inbounds ptr, ptr %467, i64 %indvars.iv506
  %468 = load ptr, ptr %arrayidx190, align 8
  %frame_num191 = getelementptr inbounds i8, ptr %468, i64 20
  %469 = load i32, ptr %frame_num191, align 4
  %470 = load i32, ptr %frame_num192, align 4
  %cmp193 = icmp eq i32 %469, %470
  br i1 %cmp193, label %land.lhs.true195, label %for.inc205

land.lhs.true195:                                 ; preds = %for.body188
  %view_id199 = getelementptr inbounds i8, ptr %468, i64 72
  %471 = load i32, ptr %view_id199, align 8
  %472 = load i32, ptr %view_id200, align 8
  %cmp201 = icmp eq i32 %471, %472
  br i1 %cmp201, label %if.then203, label %for.inc205

if.then203:                                       ; preds = %land.lhs.true195
  tail call void @error(ptr noundef nonnull @.str.20, i32 noundef 500) #20
  %.pre513 = load i32, ptr %ref_frames_in_buffer, align 8
  br label %for.inc205

for.inc205:                                       ; preds = %for.body188, %land.lhs.true195, %if.then203
  %473 = phi i32 [ %466, %for.body188 ], [ %466, %land.lhs.true195 ], [ %.pre513, %if.then203 ]
  %indvars.iv.next507 = add nuw nsw i64 %indvars.iv506, 1
  %474 = zext i32 %473 to i64
  %cmp186 = icmp ult i64 %indvars.iv.next507, %474
  br i1 %cmp186, label %for.body188, label %if.end208.loopexit

if.end208.loopexit:                               ; preds = %for.inc205
  %.pre514 = load i32, ptr %used_size144, align 4
  br label %if.end208

if.end208:                                        ; preds = %if.end208.loopexit, %for.cond185.preheader, %land.lhs.true182, %while.end
  %475 = phi i32 [ %.pre514, %if.end208.loopexit ], [ %462, %for.cond185.preheader ], [ %462, %land.lhs.true182 ], [ %462, %while.end ]
  %fs209 = getelementptr inbounds i8, ptr %p_Dpb, i64 16
  %476 = load ptr, ptr %fs209, align 8
  %idxprom211 = zext i32 %475 to i64
  %arrayidx212 = getelementptr inbounds ptr, ptr %476, i64 %idxprom211
  %477 = load ptr, ptr %arrayidx212, align 8
  tail call fastcc void @insert_picture_in_dpb(ptr noundef %0, ptr noundef %477, ptr noundef nonnull %p)
  %478 = load i32, ptr %idr_flag, align 4
  %tobool214.not = icmp eq i32 %478, 0
  br i1 %tobool214.not, label %if.end216, label %if.then215

if.then215:                                       ; preds = %if.end208
  %earlier_missing_poc = getelementptr inbounds i8, ptr %0, i64 849244
  store i32 0, ptr %earlier_missing_poc, align 4
  br label %if.end216

if.end216:                                        ; preds = %if.then215, %if.end208
  %479 = load i32, ptr %p, align 8
  %cmp218.not = icmp eq i32 %479, 0
  br i1 %cmp218.not, label %if.else226, label %if.then220

if.then220:                                       ; preds = %if.end216
  %480 = load ptr, ptr %fs209, align 8
  %481 = load i32, ptr %used_size144, align 4
  %idxprom223 = zext i32 %481 to i64
  %arrayidx224 = getelementptr inbounds ptr, ptr %480, i64 %idxprom223
  %482 = load ptr, ptr %arrayidx224, align 8
  br label %if.end228

if.else226:                                       ; preds = %if.end216
  %.pre515 = load i32, ptr %used_size144, align 4
  br label %if.end228

if.end228:                                        ; preds = %if.else226, %if.then220
  %483 = phi i32 [ %.pre515, %if.else226 ], [ %481, %if.then220 ]
  %.sink = phi ptr [ null, %if.else226 ], [ %482, %if.then220 ]
  %484 = getelementptr inbounds i8, ptr %p_Dpb, i64 4168
  store ptr %.sink, ptr %484, align 8
  %inc230 = add i32 %483, 1
  store i32 %inc230, ptr %used_size144, align 4
  %485 = load i32, ptr %conceal_mode, align 8
  %cmp232.not = icmp eq i32 %485, 0
  br i1 %cmp232.not, label %if.end240, label %if.then234

if.then234:                                       ; preds = %if.end228
  %poc235 = getelementptr inbounds i8, ptr %p, i64 4
  %486 = load i32, ptr %poc235, align 4
  %pocs_in_dpb236 = getelementptr inbounds i8, ptr %0, i64 856056
  %idxprom238 = zext i32 %483 to i64
  %arrayidx239 = getelementptr inbounds [100 x i32], ptr %pocs_in_dpb236, i64 0, i64 %idxprom238
  store i32 %486, ptr %arrayidx239, align 4
  br label %if.end240

if.end240:                                        ; preds = %if.then234, %if.end228
  %view_id241 = getelementptr inbounds i8, ptr %p, i64 344
  %487 = load i32, ptr %view_id241, align 8
  tail call void @update_ref_list(ptr noundef nonnull %p_Dpb, i32 noundef %487)
  %488 = load i32, ptr %view_id241, align 8
  tail call void @update_ltref_list(ptr noundef nonnull %p_Dpb, i32 noundef %488)
  %ltref_frames_in_buffer.i412 = getelementptr inbounds i8, ptr %p_Dpb, i64 52
  %489 = load i32, ptr %ltref_frames_in_buffer.i412, align 4
  %ref_frames_in_buffer.i413 = getelementptr inbounds i8, ptr %p_Dpb, i64 48
  %490 = load i32, ptr %ref_frames_in_buffer.i413, align 8
  %add.i = add i32 %490, %489
  %num_ref_frames.i414 = getelementptr inbounds i8, ptr %p_Dpb, i64 4164
  %491 = load i32, ptr %num_ref_frames.i414, align 4
  %cond.i.i415 = tail call noundef i32 @llvm.smax.i32(i32 %491, i32 1)
  %cmp.i416 = icmp sgt i32 %add.i, %cond.i.i415
  br i1 %cmp.i416, label %if.then.i418, label %cleanup

if.then.i418:                                     ; preds = %if.end240
  tail call void @error(ptr noundef nonnull @.str.2, i32 noundef 500) #20
  br label %cleanup

cleanup:                                          ; preds = %if.then.i418, %if.end240, %if.then175, %if.then104
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #14

; Function Attrs: nounwind uwtable
define internal fastcc void @insert_picture_in_dpb(ptr noundef %p_Vid, ptr nocapture noundef %fs, ptr noundef %p) unnamed_addr #1 {
entry:
  %0 = load ptr, ptr %p_Vid, align 8
  %1 = load i32, ptr %p, align 8
  switch i32 %1, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb15
    i32 2, label %sw.bb45
  ]

sw.bb:                                            ; preds = %entry
  %frame = getelementptr inbounds i8, ptr %fs, i64 48
  store ptr %p, ptr %frame, align 8
  store i32 3, ptr %fs, align 8
  %used_for_reference = getelementptr inbounds i8, ptr %p, i64 44
  %2 = load i32, ptr %used_for_reference, align 4
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end6, label %if.then

if.then:                                          ; preds = %sw.bb
  %is_reference = getelementptr inbounds i8, ptr %fs, i64 4
  store i32 3, ptr %is_reference, align 4
  %is_orig_reference = getelementptr inbounds i8, ptr %fs, i64 12
  store i32 3, ptr %is_orig_reference, align 4
  %is_long_term = getelementptr inbounds i8, ptr %p, i64 40
  %3 = load i8, ptr %is_long_term, align 8
  %tobool2.not = icmp eq i8 %3, 0
  br i1 %tobool2.not, label %if.end6, label %if.then3

if.then3:                                         ; preds = %if.then
  %is_long_term4 = getelementptr inbounds i8, ptr %fs, i64 8
  store i32 3, ptr %is_long_term4, align 8
  %long_term_frame_idx = getelementptr inbounds i8, ptr %p, i64 36
  %4 = load i32, ptr %long_term_frame_idx, align 4
  %long_term_frame_idx5 = getelementptr inbounds i8, ptr %fs, i64 32
  store i32 %4, ptr %long_term_frame_idx5, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.then, %if.then3, %sw.bb
  %view_id = getelementptr inbounds i8, ptr %p, i64 344
  %5 = load i32, ptr %view_id, align 8
  %view_id7 = getelementptr inbounds i8, ptr %fs, i64 72
  store i32 %5, ptr %view_id7, align 8
  %inter_view_flag = getelementptr inbounds i8, ptr %p, i64 348
  %6 = load i32, ptr %inter_view_flag, align 4
  %inter_view_flag8 = getelementptr inbounds i8, ptr %fs, i64 76
  %arrayidx = getelementptr inbounds i8, ptr %fs, i64 80
  store i32 %6, ptr %arrayidx, align 4
  store i32 %6, ptr %inter_view_flag8, align 4
  %anchor_pic_flag = getelementptr inbounds i8, ptr %p, i64 352
  %7 = load i32, ptr %anchor_pic_flag, align 8
  %anchor_pic_flag11 = getelementptr inbounds i8, ptr %fs, i64 84
  %arrayidx12 = getelementptr inbounds i8, ptr %fs, i64 88
  store i32 %7, ptr %arrayidx12, align 4
  store i32 %7, ptr %anchor_pic_flag11, align 4
  tail call void @dpb_split_field(ptr noundef nonnull %p_Vid, ptr noundef nonnull %fs)
  br label %sw.epilog

sw.bb15:                                          ; preds = %entry
  %top_field = getelementptr inbounds i8, ptr %fs, i64 56
  store ptr %p, ptr %top_field, align 8
  %8 = load i32, ptr %fs, align 8
  %or = or i32 %8, 1
  store i32 %or, ptr %fs, align 8
  %view_id17 = getelementptr inbounds i8, ptr %p, i64 344
  %9 = load i32, ptr %view_id17, align 8
  %view_id18 = getelementptr inbounds i8, ptr %fs, i64 72
  store i32 %9, ptr %view_id18, align 8
  %inter_view_flag19 = getelementptr inbounds i8, ptr %p, i64 348
  %10 = load i32, ptr %inter_view_flag19, align 4
  %inter_view_flag20 = getelementptr inbounds i8, ptr %fs, i64 76
  store i32 %10, ptr %inter_view_flag20, align 4
  %anchor_pic_flag22 = getelementptr inbounds i8, ptr %p, i64 352
  %11 = load i32, ptr %anchor_pic_flag22, align 8
  %anchor_pic_flag23 = getelementptr inbounds i8, ptr %fs, i64 84
  store i32 %11, ptr %anchor_pic_flag23, align 4
  %used_for_reference25 = getelementptr inbounds i8, ptr %p, i64 44
  %12 = load i32, ptr %used_for_reference25, align 4
  %tobool26.not = icmp eq i32 %12, 0
  br i1 %tobool26.not, label %if.end40, label %if.then27

if.then27:                                        ; preds = %sw.bb15
  %is_reference28 = getelementptr inbounds i8, ptr %fs, i64 4
  %13 = load i32, ptr %is_reference28, align 4
  %or29 = or i32 %13, 1
  store i32 %or29, ptr %is_reference28, align 4
  %is_orig_reference30 = getelementptr inbounds i8, ptr %fs, i64 12
  %14 = load i32, ptr %is_orig_reference30, align 4
  %or31 = or i32 %14, 1
  store i32 %or31, ptr %is_orig_reference30, align 4
  %is_long_term32 = getelementptr inbounds i8, ptr %p, i64 40
  %15 = load i8, ptr %is_long_term32, align 8
  %tobool33.not = icmp eq i8 %15, 0
  br i1 %tobool33.not, label %if.end40, label %if.then34

if.then34:                                        ; preds = %if.then27
  %is_long_term35 = getelementptr inbounds i8, ptr %fs, i64 8
  %16 = load i32, ptr %is_long_term35, align 8
  %or36 = or i32 %16, 1
  store i32 %or36, ptr %is_long_term35, align 8
  %long_term_frame_idx37 = getelementptr inbounds i8, ptr %p, i64 36
  %17 = load i32, ptr %long_term_frame_idx37, align 4
  %long_term_frame_idx38 = getelementptr inbounds i8, ptr %fs, i64 32
  store i32 %17, ptr %long_term_frame_idx38, align 8
  br label %if.end40

if.end40:                                         ; preds = %if.then27, %if.then34, %sw.bb15
  %cmp = icmp eq i32 %or, 3
  br i1 %cmp, label %if.then42, label %if.else

if.then42:                                        ; preds = %if.end40
  tail call void @dpb_combine_field(ptr noundef nonnull %p_Vid, ptr noundef nonnull %fs)
  br label %sw.epilog

if.else:                                          ; preds = %if.end40
  %poc = getelementptr inbounds i8, ptr %p, i64 4
  %18 = load i32, ptr %poc, align 4
  %poc43 = getelementptr inbounds i8, ptr %fs, i64 40
  store i32 %18, ptr %poc43, align 8
  %listX.i = getelementptr inbounds i8, ptr %p, i64 400
  %19 = load ptr, ptr %listX.i, align 8
  %tobool.not.i = icmp eq ptr %19, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.else
  %ppSliceList.i = getelementptr inbounds i8, ptr %p_Vid, i64 848736
  %20 = load ptr, ptr %ppSliceList.i, align 8
  %21 = load ptr, ptr %20, align 8
  %listXsize.i = getelementptr inbounds i8, ptr %21, i64 256
  %22 = load i8, ptr %listXsize.i, align 8
  %listXsize10.i = getelementptr inbounds i8, ptr %p, i64 392
  store i8 %22, ptr %listXsize10.i, align 8
  %cmp1586.i = icmp sgt i8 %22, 0
  br i1 %cmp1586.i, label %for.body17.i, label %if.end.i

for.body17.i:                                     ; preds = %if.then.i, %for.body17.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body17.i ], [ 0, %if.then.i ]
  %23 = load ptr, ptr %ppSliceList.i, align 8
  %24 = load ptr, ptr %23, align 8
  %listX20.i = getelementptr inbounds i8, ptr %24, i64 264
  %25 = load ptr, ptr %listX20.i, align 8
  %arrayidx22.i = getelementptr inbounds ptr, ptr %25, i64 %indvars.iv.i
  %26 = load ptr, ptr %arrayidx22.i, align 8
  %27 = load ptr, ptr %listX.i, align 8
  %arrayidx26.i = getelementptr inbounds ptr, ptr %27, i64 %indvars.iv.i
  store ptr %26, ptr %arrayidx26.i, align 8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %28 = load i8, ptr %listXsize10.i, align 8
  %29 = sext i8 %28 to i64
  %cmp15.i = icmp slt i64 %indvars.iv.next.i, %29
  br i1 %cmp15.i, label %for.body17.i, label %if.end.i

if.end.i:                                         ; preds = %for.body17.i, %if.then.i, %if.else
  %arrayidx31.i = getelementptr inbounds i8, ptr %p, i64 408
  %30 = load ptr, ptr %arrayidx31.i, align 8
  %tobool32.not.i = icmp eq ptr %30, null
  br i1 %tobool32.not.i, label %sw.epilog, label %if.then33.i

if.then33.i:                                      ; preds = %if.end.i
  %ppSliceList34.i = getelementptr inbounds i8, ptr %p_Vid, i64 848736
  %31 = load ptr, ptr %ppSliceList34.i, align 8
  %32 = load ptr, ptr %31, align 8
  %arrayidx37.i = getelementptr inbounds i8, ptr %32, i64 257
  %33 = load i8, ptr %arrayidx37.i, align 1
  %arrayidx39.i = getelementptr inbounds i8, ptr %p, i64 393
  store i8 %33, ptr %arrayidx39.i, align 1
  %cmp4489.i = icmp sgt i8 %33, 0
  br i1 %cmp4489.i, label %for.body46.i, label %sw.epilog

for.body46.i:                                     ; preds = %if.then33.i, %for.body46.i
  %indvars.iv92.i = phi i64 [ %indvars.iv.next93.i, %for.body46.i ], [ 0, %if.then33.i ]
  %34 = load ptr, ptr %ppSliceList34.i, align 8
  %35 = load ptr, ptr %34, align 8
  %arrayidx50.i = getelementptr inbounds i8, ptr %35, i64 272
  %36 = load ptr, ptr %arrayidx50.i, align 8
  %arrayidx52.i = getelementptr inbounds ptr, ptr %36, i64 %indvars.iv92.i
  %37 = load ptr, ptr %arrayidx52.i, align 8
  %38 = load ptr, ptr %arrayidx31.i, align 8
  %arrayidx56.i = getelementptr inbounds ptr, ptr %38, i64 %indvars.iv92.i
  store ptr %37, ptr %arrayidx56.i, align 8
  %indvars.iv.next93.i = add nuw nsw i64 %indvars.iv92.i, 1
  %39 = load i8, ptr %arrayidx39.i, align 1
  %40 = sext i8 %39 to i64
  %cmp44.i = icmp slt i64 %indvars.iv.next93.i, %40
  br i1 %cmp44.i, label %for.body46.i, label %sw.epilog

sw.bb45:                                          ; preds = %entry
  %bottom_field = getelementptr inbounds i8, ptr %fs, i64 64
  store ptr %p, ptr %bottom_field, align 8
  %41 = load i32, ptr %fs, align 8
  %or47 = or i32 %41, 2
  store i32 %or47, ptr %fs, align 8
  %view_id48 = getelementptr inbounds i8, ptr %p, i64 344
  %42 = load i32, ptr %view_id48, align 8
  %view_id49 = getelementptr inbounds i8, ptr %fs, i64 72
  store i32 %42, ptr %view_id49, align 8
  %inter_view_flag50 = getelementptr inbounds i8, ptr %p, i64 348
  %43 = load i32, ptr %inter_view_flag50, align 4
  %arrayidx52 = getelementptr inbounds i8, ptr %fs, i64 80
  store i32 %43, ptr %arrayidx52, align 4
  %anchor_pic_flag53 = getelementptr inbounds i8, ptr %p, i64 352
  %44 = load i32, ptr %anchor_pic_flag53, align 8
  %arrayidx55 = getelementptr inbounds i8, ptr %fs, i64 88
  store i32 %44, ptr %arrayidx55, align 4
  %used_for_reference56 = getelementptr inbounds i8, ptr %p, i64 44
  %45 = load i32, ptr %used_for_reference56, align 4
  %tobool57.not = icmp eq i32 %45, 0
  br i1 %tobool57.not, label %if.end71, label %if.then58

if.then58:                                        ; preds = %sw.bb45
  %is_reference59 = getelementptr inbounds i8, ptr %fs, i64 4
  %46 = load i32, ptr %is_reference59, align 4
  %or60 = or i32 %46, 2
  store i32 %or60, ptr %is_reference59, align 4
  %is_orig_reference61 = getelementptr inbounds i8, ptr %fs, i64 12
  %47 = load i32, ptr %is_orig_reference61, align 4
  %or62 = or i32 %47, 2
  store i32 %or62, ptr %is_orig_reference61, align 4
  %is_long_term63 = getelementptr inbounds i8, ptr %p, i64 40
  %48 = load i8, ptr %is_long_term63, align 8
  %tobool64.not = icmp eq i8 %48, 0
  br i1 %tobool64.not, label %if.end71, label %if.then65

if.then65:                                        ; preds = %if.then58
  %is_long_term66 = getelementptr inbounds i8, ptr %fs, i64 8
  %49 = load i32, ptr %is_long_term66, align 8
  %or67 = or i32 %49, 2
  store i32 %or67, ptr %is_long_term66, align 8
  %long_term_frame_idx68 = getelementptr inbounds i8, ptr %p, i64 36
  %50 = load i32, ptr %long_term_frame_idx68, align 4
  %long_term_frame_idx69 = getelementptr inbounds i8, ptr %fs, i64 32
  store i32 %50, ptr %long_term_frame_idx69, align 8
  br label %if.end71

if.end71:                                         ; preds = %if.then58, %if.then65, %sw.bb45
  %cmp73 = icmp eq i32 %or47, 3
  br i1 %cmp73, label %if.then74, label %if.else75

if.then74:                                        ; preds = %if.end71
  tail call void @dpb_combine_field(ptr noundef nonnull %p_Vid, ptr noundef nonnull %fs)
  br label %sw.epilog

if.else75:                                        ; preds = %if.end71
  %poc76 = getelementptr inbounds i8, ptr %p, i64 4
  %51 = load i32, ptr %poc76, align 4
  %poc77 = getelementptr inbounds i8, ptr %fs, i64 40
  store i32 %51, ptr %poc77, align 8
  %listX.i169 = getelementptr inbounds i8, ptr %p, i64 400
  %52 = load ptr, ptr %listX.i169, align 8
  %tobool.not.i170 = icmp eq ptr %52, null
  br i1 %tobool.not.i170, label %if.end.i176, label %if.then.i171

if.then.i171:                                     ; preds = %if.else75
  %ppSliceList.i172 = getelementptr inbounds i8, ptr %p_Vid, i64 848736
  %53 = load ptr, ptr %ppSliceList.i172, align 8
  %54 = load ptr, ptr %53, align 8
  %listXsize.i173 = getelementptr inbounds i8, ptr %54, i64 256
  %55 = load i8, ptr %listXsize.i173, align 8
  %listXsize10.i174 = getelementptr inbounds i8, ptr %p, i64 392
  store i8 %55, ptr %listXsize10.i174, align 8
  %cmp1586.i175 = icmp sgt i8 %55, 0
  br i1 %cmp1586.i175, label %for.body17.i191, label %if.end.i176

for.body17.i191:                                  ; preds = %if.then.i171, %for.body17.i191
  %indvars.iv.i192 = phi i64 [ %indvars.iv.next.i196, %for.body17.i191 ], [ 0, %if.then.i171 ]
  %56 = load ptr, ptr %ppSliceList.i172, align 8
  %57 = load ptr, ptr %56, align 8
  %listX20.i193 = getelementptr inbounds i8, ptr %57, i64 264
  %58 = load ptr, ptr %listX20.i193, align 8
  %arrayidx22.i194 = getelementptr inbounds ptr, ptr %58, i64 %indvars.iv.i192
  %59 = load ptr, ptr %arrayidx22.i194, align 8
  %60 = load ptr, ptr %listX.i169, align 8
  %arrayidx26.i195 = getelementptr inbounds ptr, ptr %60, i64 %indvars.iv.i192
  store ptr %59, ptr %arrayidx26.i195, align 8
  %indvars.iv.next.i196 = add nuw nsw i64 %indvars.iv.i192, 1
  %61 = load i8, ptr %listXsize10.i174, align 8
  %62 = sext i8 %61 to i64
  %cmp15.i197 = icmp slt i64 %indvars.iv.next.i196, %62
  br i1 %cmp15.i197, label %for.body17.i191, label %if.end.i176

if.end.i176:                                      ; preds = %for.body17.i191, %if.then.i171, %if.else75
  %arrayidx31.i177 = getelementptr inbounds i8, ptr %p, i64 408
  %63 = load ptr, ptr %arrayidx31.i177, align 8
  %tobool32.not.i178 = icmp eq ptr %63, null
  br i1 %tobool32.not.i178, label %sw.epilog, label %if.then33.i179

if.then33.i179:                                   ; preds = %if.end.i176
  %ppSliceList34.i180 = getelementptr inbounds i8, ptr %p_Vid, i64 848736
  %64 = load ptr, ptr %ppSliceList34.i180, align 8
  %65 = load ptr, ptr %64, align 8
  %arrayidx37.i181 = getelementptr inbounds i8, ptr %65, i64 257
  %66 = load i8, ptr %arrayidx37.i181, align 1
  %arrayidx39.i182 = getelementptr inbounds i8, ptr %p, i64 393
  store i8 %66, ptr %arrayidx39.i182, align 1
  %cmp4489.i183 = icmp sgt i8 %66, 0
  br i1 %cmp4489.i183, label %for.body46.i184, label %sw.epilog

for.body46.i184:                                  ; preds = %if.then33.i179, %for.body46.i184
  %indvars.iv92.i185 = phi i64 [ %indvars.iv.next93.i189, %for.body46.i184 ], [ 0, %if.then33.i179 ]
  %67 = load ptr, ptr %ppSliceList34.i180, align 8
  %68 = load ptr, ptr %67, align 8
  %arrayidx50.i186 = getelementptr inbounds i8, ptr %68, i64 272
  %69 = load ptr, ptr %arrayidx50.i186, align 8
  %arrayidx52.i187 = getelementptr inbounds ptr, ptr %69, i64 %indvars.iv92.i185
  %70 = load ptr, ptr %arrayidx52.i187, align 8
  %71 = load ptr, ptr %arrayidx31.i177, align 8
  %arrayidx56.i188 = getelementptr inbounds ptr, ptr %71, i64 %indvars.iv92.i185
  store ptr %70, ptr %arrayidx56.i188, align 8
  %indvars.iv.next93.i189 = add nuw nsw i64 %indvars.iv92.i185, 1
  %72 = load i8, ptr %arrayidx39.i182, align 1
  %73 = sext i8 %72 to i64
  %cmp44.i190 = icmp slt i64 %indvars.iv.next93.i189, %73
  br i1 %cmp44.i190, label %for.body46.i184, label %sw.epilog

sw.epilog:                                        ; preds = %for.body46.i184, %for.body46.i, %if.then33.i179, %if.end.i176, %if.then33.i, %if.end.i, %if.then74, %if.then42, %entry, %if.end6
  %pic_num = getelementptr inbounds i8, ptr %p, i64 28
  %74 = load i32, ptr %pic_num, align 4
  %frame_num = getelementptr inbounds i8, ptr %fs, i64 20
  store i32 %74, ptr %frame_num, align 4
  %recovery_frame = getelementptr inbounds i8, ptr %p, i64 24
  %75 = load i32, ptr %recovery_frame, align 8
  %recovery_frame79 = getelementptr inbounds i8, ptr %fs, i64 24
  store i32 %75, ptr %recovery_frame79, align 8
  %is_output = getelementptr inbounds i8, ptr %p, i64 48
  %76 = load i32, ptr %is_output, align 8
  %is_output80 = getelementptr inbounds i8, ptr %fs, i64 36
  store i32 %76, ptr %is_output80, align 4
  %77 = load i32, ptr %fs, align 8
  %cmp82 = icmp eq i32 %77, 3
  br i1 %cmp82, label %if.then83, label %if.end90

if.then83:                                        ; preds = %sw.epilog
  tail call void @calculate_frame_no(ptr noundef nonnull %p_Vid, ptr noundef nonnull %p) #20
  %p_ref = getelementptr inbounds i8, ptr %p_Vid, i64 855988
  %78 = load i32, ptr %p_ref, align 4
  %cmp84.not = icmp eq i32 %78, -1
  br i1 %cmp84.not, label %if.end90, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then83
  %silent = getelementptr inbounds i8, ptr %0, i64 784
  %79 = load i32, ptr %silent, align 8
  %tobool85.not = icmp eq i32 %79, 0
  br i1 %tobool85.not, label %if.then86, label %if.end90

if.then86:                                        ; preds = %land.lhs.true
  %frame87 = getelementptr inbounds i8, ptr %fs, i64 48
  %80 = load ptr, ptr %frame87, align 8
  tail call void @find_snr(ptr noundef nonnull %p_Vid, ptr noundef %80, ptr noundef nonnull %p_ref) #20
  br label %if.end90

if.end90:                                         ; preds = %if.then83, %land.lhs.true, %if.then86, %sw.epilog
  ret void
}

declare void @conceal_non_ref_pics(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @remove_unused_frame_from_dpb(ptr nocapture noundef %p_Dpb, i32 noundef %curr_view_id) unnamed_addr #1 {
entry:
  %used_size = getelementptr inbounds i8, ptr %p_Dpb, i64 44
  %0 = load i32, ptr %used_size, align 4
  %cmp24.not = icmp eq i32 %0, 0
  br i1 %cmp24.not, label %cleanup, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %fs = getelementptr inbounds i8, ptr %p_Dpb, i64 16
  %1 = load ptr, ptr %fs, align 8
  %cmp10 = icmp eq i32 %curr_view_id, -1
  %wide.trip.count35 = zext i32 %0 to i64
  br i1 %cmp10, label %for.body.us, label %for.body

for.body.us:                                      ; preds = %for.body.lr.ph, %for.inc.us
  %indvars.iv32 = phi i64 [ %indvars.iv.next33, %for.inc.us ], [ 0, %for.body.lr.ph ]
  %arrayidx.us = getelementptr inbounds ptr, ptr %1, i64 %indvars.iv32
  %2 = load ptr, ptr %arrayidx.us, align 8
  %is_output.us = getelementptr inbounds i8, ptr %2, i64 36
  %3 = load i32, ptr %is_output.us, align 4
  %tobool.not.us = icmp eq i32 %3, 0
  br i1 %tobool.not.us, label %for.inc.us, label %land.lhs.true.us

land.lhs.true.us:                                 ; preds = %for.body.us
  %is_reference.i.us = getelementptr inbounds i8, ptr %2, i64 4
  %4 = load i32, ptr %is_reference.i.us, align 4
  %tobool.not.i.us = icmp eq i32 %4, 0
  br i1 %tobool.not.i.us, label %if.end.i.us, label %for.inc.us

if.end.i.us:                                      ; preds = %land.lhs.true.us
  %5 = load i32, ptr %2, align 8
  %cmp.i.us = icmp eq i32 %5, 3
  br i1 %cmp.i.us, label %if.then1.i.us, label %if.end5.i.us

if.end5.i.us:                                     ; preds = %if.end.i.us
  %and.i.us = and i32 %5, 1
  %tobool7.not.i.us = icmp eq i32 %and.i.us, 0
  br i1 %tobool7.not.i.us, label %if.end17.i.us, label %if.then8.i.us

if.then1.i.us:                                    ; preds = %if.end.i.us
  %frame.i.us = getelementptr inbounds i8, ptr %2, i64 48
  %6 = load ptr, ptr %frame.i.us, align 8
  %used_for_reference.i.us = getelementptr inbounds i8, ptr %6, i64 44
  %7 = load i32, ptr %used_for_reference.i.us, align 4
  %tobool2.not.i.us = icmp eq i32 %7, 0
  br i1 %tobool2.not.i.us, label %if.then8.i.us, label %for.inc.us

if.then8.i.us:                                    ; preds = %if.then1.i.us, %if.end5.i.us
  %top_field.i.us = getelementptr inbounds i8, ptr %2, i64 56
  %8 = load ptr, ptr %top_field.i.us, align 8
  %tobool9.not.i.us = icmp eq ptr %8, null
  br i1 %tobool9.not.i.us, label %if.end17.i.us, label %if.then10.i.us

if.then10.i.us:                                   ; preds = %if.then8.i.us
  %used_for_reference12.i.us = getelementptr inbounds i8, ptr %8, i64 44
  %9 = load i32, ptr %used_for_reference12.i.us, align 4
  %tobool13.not.i.us = icmp eq i32 %9, 0
  br i1 %tobool13.not.i.us, label %if.end17.i.us, label %for.inc.us

if.end17.i.us:                                    ; preds = %if.then10.i.us, %if.then8.i.us, %if.end5.i.us
  %and19.i.us = and i32 %5, 2
  %tobool20.not.i.us = icmp eq i32 %and19.i.us, 0
  br i1 %tobool20.not.i.us, label %if.then, label %if.then21.i.us

if.then21.i.us:                                   ; preds = %if.end17.i.us
  %bottom_field.i.us = getelementptr inbounds i8, ptr %2, i64 64
  %10 = load ptr, ptr %bottom_field.i.us, align 8
  %tobool22.not.i.us = icmp eq ptr %10, null
  br i1 %tobool22.not.i.us, label %if.then, label %if.then23.i.us

if.then23.i.us:                                   ; preds = %if.then21.i.us
  %used_for_reference25.i.us = getelementptr inbounds i8, ptr %10, i64 44
  %11 = load i32, ptr %used_for_reference25.i.us, align 4
  %tobool26.not.i.us = icmp eq i32 %11, 0
  br i1 %tobool26.not.i.us, label %if.then, label %for.inc.us

for.inc.us:                                       ; preds = %if.then23.i.us, %if.then10.i.us, %if.then1.i.us, %land.lhs.true.us, %for.body.us
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1
  %exitcond36.not = icmp eq i64 %indvars.iv.next33, %wide.trip.count35
  br i1 %exitcond36.not, label %cleanup, label %for.body.us

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.body.lr.ph ]
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 %indvars.iv
  %12 = load ptr, ptr %arrayidx, align 8
  %is_output = getelementptr inbounds i8, ptr %12, i64 36
  %13 = load i32, ptr %is_output, align 4
  %tobool.not = icmp eq i32 %13, 0
  br i1 %tobool.not, label %for.inc, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %is_reference.i = getelementptr inbounds i8, ptr %12, i64 4
  %14 = load i32, ptr %is_reference.i, align 4
  %tobool.not.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.inc

if.end.i:                                         ; preds = %land.lhs.true
  %15 = load i32, ptr %12, align 8
  %cmp.i = icmp eq i32 %15, 3
  br i1 %cmp.i, label %if.then1.i, label %if.end5.i

if.then1.i:                                       ; preds = %if.end.i
  %frame.i = getelementptr inbounds i8, ptr %12, i64 48
  %16 = load ptr, ptr %frame.i, align 8
  %used_for_reference.i = getelementptr inbounds i8, ptr %16, i64 44
  %17 = load i32, ptr %used_for_reference.i, align 4
  %tobool2.not.i = icmp eq i32 %17, 0
  br i1 %tobool2.not.i, label %if.then8.i, label %for.inc

if.end5.i:                                        ; preds = %if.end.i
  %and.i = and i32 %15, 1
  %tobool7.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool7.not.i, label %if.end17.i, label %if.then8.i

if.then8.i:                                       ; preds = %if.end5.i, %if.then1.i
  %top_field.i = getelementptr inbounds i8, ptr %12, i64 56
  %18 = load ptr, ptr %top_field.i, align 8
  %tobool9.not.i = icmp eq ptr %18, null
  br i1 %tobool9.not.i, label %if.end17.i, label %if.then10.i

if.then10.i:                                      ; preds = %if.then8.i
  %used_for_reference12.i = getelementptr inbounds i8, ptr %18, i64 44
  %19 = load i32, ptr %used_for_reference12.i, align 4
  %tobool13.not.i = icmp eq i32 %19, 0
  br i1 %tobool13.not.i, label %if.end17.i, label %for.inc

if.end17.i:                                       ; preds = %if.then10.i, %if.then8.i, %if.end5.i
  %and19.i = and i32 %15, 2
  %tobool20.not.i = icmp eq i32 %and19.i, 0
  br i1 %tobool20.not.i, label %land.lhs.true5, label %if.then21.i

if.then21.i:                                      ; preds = %if.end17.i
  %bottom_field.i = getelementptr inbounds i8, ptr %12, i64 64
  %20 = load ptr, ptr %bottom_field.i, align 8
  %tobool22.not.i = icmp eq ptr %20, null
  br i1 %tobool22.not.i, label %land.lhs.true5, label %if.then23.i

if.then23.i:                                      ; preds = %if.then21.i
  %used_for_reference25.i = getelementptr inbounds i8, ptr %20, i64 44
  %21 = load i32, ptr %used_for_reference25.i, align 4
  %tobool26.not.i = icmp eq i32 %21, 0
  br i1 %tobool26.not.i, label %land.lhs.true5, label %for.inc

land.lhs.true5:                                   ; preds = %if.then23.i, %if.then21.i, %if.end17.i
  %view_id = getelementptr inbounds i8, ptr %12, i64 72
  %22 = load i32, ptr %view_id, align 8
  %cmp9 = icmp eq i32 %22, %curr_view_id
  br i1 %cmp9, label %if.then, label %for.inc

if.then:                                          ; preds = %land.lhs.true5, %if.then23.i.us, %if.then21.i.us, %if.end17.i.us
  %.us-phi.in = phi i64 [ %indvars.iv32, %if.end17.i.us ], [ %indvars.iv32, %if.then21.i.us ], [ %indvars.iv32, %if.then23.i.us ], [ %indvars.iv, %land.lhs.true5 ]
  %.us-phi = trunc i64 %.us-phi.in to i32
  tail call fastcc void @remove_frame_from_dpb(ptr noundef nonnull %p_Dpb, i32 noundef %.us-phi)
  br label %cleanup

for.inc:                                          ; preds = %if.then23.i, %if.then10.i, %if.then1.i, %land.lhs.true, %for.body, %land.lhs.true5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count35
  br i1 %exitcond.not, label %cleanup, label %for.body

cleanup:                                          ; preds = %for.inc, %for.inc.us, %entry, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %entry ], [ 0, %for.inc.us ], [ 0, %for.inc ]
  ret i32 %retval.0
}

declare void @sliding_window_poc_management(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @direct_output(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @output_one_frame_from_dpb(ptr noundef %p_Dpb, i32 noundef %curr_view_id) unnamed_addr #1 {
entry:
  %0 = load ptr, ptr %p_Dpb, align 8
  %used_size = getelementptr inbounds i8, ptr %p_Dpb, i64 44
  %1 = load i32, ptr %used_size, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.end, label %for.body.lr.ph.i

if.end:                                           ; preds = %entry
  tail call void @error(ptr noundef nonnull @.str.39, i32 noundef 150) #20
  %.pr = load i32, ptr %used_size, align 4
  %cmp.i = icmp eq i32 %.pr, 0
  br i1 %cmp.i, label %if.end.i, label %for.body.lr.ph.i

if.end.i:                                         ; preds = %if.end
  tail call void @error(ptr noundef nonnull @.str.37, i32 noundef 150) #20
  %.pr73 = load i32, ptr %used_size, align 4
  %cmp235.not.i = icmp eq i32 %.pr73, 0
  br i1 %cmp235.not.i, label %if.then3, label %for.body.lr.ph.i

for.body.lr.ph.i:                                 ; preds = %entry, %if.end, %if.end.i
  %2 = phi i32 [ %.pr73, %if.end.i ], [ %.pr, %if.end ], [ %1, %entry ]
  %fs.i = getelementptr inbounds i8, ptr %p_Dpb, i64 16
  %cmp13.i = icmp eq i32 %curr_view_id, -1
  %3 = load ptr, ptr %fs.i, align 8
  %umax89 = zext i32 %2 to i64
  br i1 %cmp13.i, label %for.body.us.i.preheader, label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %for.body.lr.ph.i
  %xtraiter = and i64 %umax89, 1
  %4 = icmp eq i32 %2, 1
  br i1 %4, label %get_smallest_poc.exit.loopexit93.unr-lcssa, label %for.body.i.preheader.new

for.body.i.preheader.new:                         ; preds = %for.body.i.preheader
  %unroll_iter = and i64 %umax89, 4294967294
  br label %for.body.i

for.body.us.i.preheader:                          ; preds = %for.body.lr.ph.i
  %xtraiter96 = and i64 %umax89, 1
  %5 = icmp eq i32 %2, 1
  br i1 %5, label %get_smallest_poc.exit.loopexit.unr-lcssa, label %for.body.us.i.preheader.new

for.body.us.i.preheader.new:                      ; preds = %for.body.us.i.preheader
  %unroll_iter100 = and i64 %umax89, 4294967294
  br label %for.body.us.i

for.body.us.i:                                    ; preds = %for.inc.us.i.1, %for.body.us.i.preheader.new
  %poc.0 = phi i32 [ 2147483647, %for.body.us.i.preheader.new ], [ %poc.1.1, %for.inc.us.i.1 ]
  %pos.0 = phi i32 [ -1, %for.body.us.i.preheader.new ], [ %pos.1.1, %for.inc.us.i.1 ]
  %indvars.iv39.i = phi i64 [ 0, %for.body.us.i.preheader.new ], [ %indvars.iv.next40.i.1, %for.inc.us.i.1 ]
  %niter101 = phi i64 [ 0, %for.body.us.i.preheader.new ], [ %niter101.next.1, %for.inc.us.i.1 ]
  %arrayidx.us.i = getelementptr inbounds ptr, ptr %3, i64 %indvars.iv39.i
  %6 = load ptr, ptr %arrayidx.us.i, align 8
  %poc3.us.i = getelementptr inbounds i8, ptr %6, i64 40
  %7 = load i32, ptr %poc3.us.i, align 8
  %cmp4.us.i = icmp sgt i32 %poc.0, %7
  br i1 %cmp4.us.i, label %land.lhs.true.us.i, label %for.inc.us.i

land.lhs.true.us.i:                               ; preds = %for.body.us.i
  %is_output.us.i = getelementptr inbounds i8, ptr %6, i64 36
  %8 = load i32, ptr %is_output.us.i, align 4
  %tobool.not.us.i = icmp eq i32 %8, 0
  %9 = trunc nuw i64 %indvars.iv39.i to i32
  %spec.select = select i1 %tobool.not.us.i, i32 %7, i32 %poc.0
  %spec.select84 = select i1 %tobool.not.us.i, i32 %9, i32 %pos.0
  br label %for.inc.us.i

for.inc.us.i:                                     ; preds = %land.lhs.true.us.i, %for.body.us.i
  %poc.1 = phi i32 [ %poc.0, %for.body.us.i ], [ %spec.select, %land.lhs.true.us.i ]
  %pos.1 = phi i32 [ %pos.0, %for.body.us.i ], [ %spec.select84, %land.lhs.true.us.i ]
  %indvars.iv.next40.i = or disjoint i64 %indvars.iv39.i, 1
  %arrayidx.us.i.1 = getelementptr inbounds ptr, ptr %3, i64 %indvars.iv.next40.i
  %10 = load ptr, ptr %arrayidx.us.i.1, align 8
  %poc3.us.i.1 = getelementptr inbounds i8, ptr %10, i64 40
  %11 = load i32, ptr %poc3.us.i.1, align 8
  %cmp4.us.i.1 = icmp sgt i32 %poc.1, %11
  br i1 %cmp4.us.i.1, label %land.lhs.true.us.i.1, label %for.inc.us.i.1

land.lhs.true.us.i.1:                             ; preds = %for.inc.us.i
  %is_output.us.i.1 = getelementptr inbounds i8, ptr %10, i64 36
  %12 = load i32, ptr %is_output.us.i.1, align 4
  %tobool.not.us.i.1 = icmp eq i32 %12, 0
  %13 = trunc nuw i64 %indvars.iv.next40.i to i32
  %spec.select.1 = select i1 %tobool.not.us.i.1, i32 %11, i32 %poc.1
  %spec.select84.1 = select i1 %tobool.not.us.i.1, i32 %13, i32 %pos.1
  br label %for.inc.us.i.1

for.inc.us.i.1:                                   ; preds = %land.lhs.true.us.i.1, %for.inc.us.i
  %poc.1.1 = phi i32 [ %poc.1, %for.inc.us.i ], [ %spec.select.1, %land.lhs.true.us.i.1 ]
  %pos.1.1 = phi i32 [ %pos.1, %for.inc.us.i ], [ %spec.select84.1, %land.lhs.true.us.i.1 ]
  %indvars.iv.next40.i.1 = add nuw nsw i64 %indvars.iv39.i, 2
  %niter101.next.1 = add i64 %niter101, 2
  %niter101.ncmp.1 = icmp eq i64 %niter101.next.1, %unroll_iter100
  br i1 %niter101.ncmp.1, label %get_smallest_poc.exit.loopexit.unr-lcssa, label %for.body.us.i

for.body.i:                                       ; preds = %for.inc.i.1, %for.body.i.preheader.new
  %poc.2 = phi i32 [ 2147483647, %for.body.i.preheader.new ], [ %poc.3.1, %for.inc.i.1 ]
  %pos.2 = phi i32 [ -1, %for.body.i.preheader.new ], [ %pos.3.1, %for.inc.i.1 ]
  %indvars.iv.i = phi i64 [ 0, %for.body.i.preheader.new ], [ %indvars.iv.next.i.1, %for.inc.i.1 ]
  %niter = phi i64 [ 0, %for.body.i.preheader.new ], [ %niter.next.1, %for.inc.i.1 ]
  %arrayidx.i = getelementptr inbounds ptr, ptr %3, i64 %indvars.iv.i
  %14 = load ptr, ptr %arrayidx.i, align 8
  %poc3.i = getelementptr inbounds i8, ptr %14, i64 40
  %15 = load i32, ptr %poc3.i, align 8
  %cmp4.i = icmp sgt i32 %poc.2, %15
  br i1 %cmp4.i, label %land.lhs.true.i, label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %is_output.i = getelementptr inbounds i8, ptr %14, i64 36
  %16 = load i32, ptr %is_output.i, align 4
  %tobool.not.i = icmp eq i32 %16, 0
  br i1 %tobool.not.i, label %land.lhs.true8.i, label %for.inc.i

land.lhs.true8.i:                                 ; preds = %land.lhs.true.i
  %view_id.i = getelementptr inbounds i8, ptr %14, i64 72
  %17 = load i32, ptr %view_id.i, align 8
  %cmp12.i = icmp eq i32 %17, %curr_view_id
  %18 = trunc nuw i64 %indvars.iv.i to i32
  %spec.select85 = select i1 %cmp12.i, i32 %15, i32 %poc.2
  %spec.select86 = select i1 %cmp12.i, i32 %18, i32 %pos.2
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true8.i, %land.lhs.true.i, %for.body.i
  %poc.3 = phi i32 [ %poc.2, %land.lhs.true.i ], [ %poc.2, %for.body.i ], [ %spec.select85, %land.lhs.true8.i ]
  %pos.3 = phi i32 [ %pos.2, %land.lhs.true.i ], [ %pos.2, %for.body.i ], [ %spec.select86, %land.lhs.true8.i ]
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1
  %arrayidx.i.1 = getelementptr inbounds ptr, ptr %3, i64 %indvars.iv.next.i
  %19 = load ptr, ptr %arrayidx.i.1, align 8
  %poc3.i.1 = getelementptr inbounds i8, ptr %19, i64 40
  %20 = load i32, ptr %poc3.i.1, align 8
  %cmp4.i.1 = icmp sgt i32 %poc.3, %20
  br i1 %cmp4.i.1, label %land.lhs.true.i.1, label %for.inc.i.1

land.lhs.true.i.1:                                ; preds = %for.inc.i
  %is_output.i.1 = getelementptr inbounds i8, ptr %19, i64 36
  %21 = load i32, ptr %is_output.i.1, align 4
  %tobool.not.i.1 = icmp eq i32 %21, 0
  br i1 %tobool.not.i.1, label %land.lhs.true8.i.1, label %for.inc.i.1

land.lhs.true8.i.1:                               ; preds = %land.lhs.true.i.1
  %view_id.i.1 = getelementptr inbounds i8, ptr %19, i64 72
  %22 = load i32, ptr %view_id.i.1, align 8
  %cmp12.i.1 = icmp eq i32 %22, %curr_view_id
  %23 = trunc nuw i64 %indvars.iv.next.i to i32
  %spec.select85.1 = select i1 %cmp12.i.1, i32 %20, i32 %poc.3
  %spec.select86.1 = select i1 %cmp12.i.1, i32 %23, i32 %pos.3
  br label %for.inc.i.1

for.inc.i.1:                                      ; preds = %land.lhs.true8.i.1, %land.lhs.true.i.1, %for.inc.i
  %poc.3.1 = phi i32 [ %poc.3, %land.lhs.true.i.1 ], [ %poc.3, %for.inc.i ], [ %spec.select85.1, %land.lhs.true8.i.1 ]
  %pos.3.1 = phi i32 [ %pos.3, %land.lhs.true.i.1 ], [ %pos.3, %for.inc.i ], [ %spec.select86.1, %land.lhs.true8.i.1 ]
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %get_smallest_poc.exit.loopexit93.unr-lcssa, label %for.body.i

get_smallest_poc.exit.loopexit.unr-lcssa:         ; preds = %for.inc.us.i.1, %for.body.us.i.preheader
  %poc.1.lcssa.ph = phi i32 [ poison, %for.body.us.i.preheader ], [ %poc.1.1, %for.inc.us.i.1 ]
  %pos.1.lcssa.ph = phi i32 [ poison, %for.body.us.i.preheader ], [ %pos.1.1, %for.inc.us.i.1 ]
  %poc.0.unr = phi i32 [ 2147483647, %for.body.us.i.preheader ], [ %poc.1.1, %for.inc.us.i.1 ]
  %pos.0.unr = phi i32 [ -1, %for.body.us.i.preheader ], [ %pos.1.1, %for.inc.us.i.1 ]
  %indvars.iv39.i.unr = phi i64 [ 0, %for.body.us.i.preheader ], [ %indvars.iv.next40.i.1, %for.inc.us.i.1 ]
  %lcmp.mod97.not = icmp eq i64 %xtraiter96, 0
  br i1 %lcmp.mod97.not, label %get_smallest_poc.exit, label %for.body.us.i.epil

for.body.us.i.epil:                               ; preds = %get_smallest_poc.exit.loopexit.unr-lcssa
  %arrayidx.us.i.epil = getelementptr inbounds ptr, ptr %3, i64 %indvars.iv39.i.unr
  %24 = load ptr, ptr %arrayidx.us.i.epil, align 8
  %poc3.us.i.epil = getelementptr inbounds i8, ptr %24, i64 40
  %25 = load i32, ptr %poc3.us.i.epil, align 8
  %cmp4.us.i.epil = icmp sgt i32 %poc.0.unr, %25
  br i1 %cmp4.us.i.epil, label %land.lhs.true.us.i.epil, label %get_smallest_poc.exit

land.lhs.true.us.i.epil:                          ; preds = %for.body.us.i.epil
  %is_output.us.i.epil = getelementptr inbounds i8, ptr %24, i64 36
  %26 = load i32, ptr %is_output.us.i.epil, align 4
  %tobool.not.us.i.epil = icmp eq i32 %26, 0
  %27 = trunc nuw i64 %indvars.iv39.i.unr to i32
  %spec.select.epil = select i1 %tobool.not.us.i.epil, i32 %25, i32 %poc.0.unr
  %spec.select84.epil = select i1 %tobool.not.us.i.epil, i32 %27, i32 %pos.0.unr
  br label %get_smallest_poc.exit

get_smallest_poc.exit.loopexit93.unr-lcssa:       ; preds = %for.inc.i.1, %for.body.i.preheader
  %poc.3.lcssa.ph = phi i32 [ poison, %for.body.i.preheader ], [ %poc.3.1, %for.inc.i.1 ]
  %pos.3.lcssa.ph = phi i32 [ poison, %for.body.i.preheader ], [ %pos.3.1, %for.inc.i.1 ]
  %poc.2.unr = phi i32 [ 2147483647, %for.body.i.preheader ], [ %poc.3.1, %for.inc.i.1 ]
  %pos.2.unr = phi i32 [ -1, %for.body.i.preheader ], [ %pos.3.1, %for.inc.i.1 ]
  %indvars.iv.i.unr = phi i64 [ 0, %for.body.i.preheader ], [ %indvars.iv.next.i.1, %for.inc.i.1 ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %get_smallest_poc.exit, label %for.body.i.epil

for.body.i.epil:                                  ; preds = %get_smallest_poc.exit.loopexit93.unr-lcssa
  %arrayidx.i.epil = getelementptr inbounds ptr, ptr %3, i64 %indvars.iv.i.unr
  %28 = load ptr, ptr %arrayidx.i.epil, align 8
  %poc3.i.epil = getelementptr inbounds i8, ptr %28, i64 40
  %29 = load i32, ptr %poc3.i.epil, align 8
  %cmp4.i.epil = icmp sgt i32 %poc.2.unr, %29
  br i1 %cmp4.i.epil, label %land.lhs.true.i.epil, label %get_smallest_poc.exit

land.lhs.true.i.epil:                             ; preds = %for.body.i.epil
  %is_output.i.epil = getelementptr inbounds i8, ptr %28, i64 36
  %30 = load i32, ptr %is_output.i.epil, align 4
  %tobool.not.i.epil = icmp eq i32 %30, 0
  br i1 %tobool.not.i.epil, label %land.lhs.true8.i.epil, label %get_smallest_poc.exit

land.lhs.true8.i.epil:                            ; preds = %land.lhs.true.i.epil
  %view_id.i.epil = getelementptr inbounds i8, ptr %28, i64 72
  %31 = load i32, ptr %view_id.i.epil, align 8
  %cmp12.i.epil = icmp eq i32 %31, %curr_view_id
  %32 = trunc nuw i64 %indvars.iv.i.unr to i32
  %spec.select85.epil = select i1 %cmp12.i.epil, i32 %29, i32 %poc.2.unr
  %spec.select86.epil = select i1 %cmp12.i.epil, i32 %32, i32 %pos.2.unr
  br label %get_smallest_poc.exit

get_smallest_poc.exit:                            ; preds = %get_smallest_poc.exit.loopexit93.unr-lcssa, %land.lhs.true8.i.epil, %land.lhs.true.i.epil, %for.body.i.epil, %get_smallest_poc.exit.loopexit.unr-lcssa, %land.lhs.true.us.i.epil, %for.body.us.i.epil
  %poc.4 = phi i32 [ %poc.1.lcssa.ph, %get_smallest_poc.exit.loopexit.unr-lcssa ], [ %poc.0.unr, %for.body.us.i.epil ], [ %spec.select.epil, %land.lhs.true.us.i.epil ], [ %poc.3.lcssa.ph, %get_smallest_poc.exit.loopexit93.unr-lcssa ], [ %poc.2.unr, %land.lhs.true.i.epil ], [ %poc.2.unr, %for.body.i.epil ], [ %spec.select85.epil, %land.lhs.true8.i.epil ]
  %pos.4 = phi i32 [ %pos.1.lcssa.ph, %get_smallest_poc.exit.loopexit.unr-lcssa ], [ %pos.0.unr, %for.body.us.i.epil ], [ %spec.select84.epil, %land.lhs.true.us.i.epil ], [ %pos.3.lcssa.ph, %get_smallest_poc.exit.loopexit93.unr-lcssa ], [ %pos.2.unr, %land.lhs.true.i.epil ], [ %pos.2.unr, %for.body.i.epil ], [ %spec.select86.epil, %land.lhs.true8.i.epil ]
  %cmp2 = icmp eq i32 %pos.4, -1
  br i1 %cmp2, label %if.then3, label %if.end7

if.then3:                                         ; preds = %if.end.i, %get_smallest_poc.exit
  %poc.479 = phi i32 [ %poc.4, %get_smallest_poc.exit ], [ 2147483647, %if.end.i ]
  %cmp4 = icmp eq i32 %curr_view_id, -1
  br i1 %cmp4, label %if.then5, label %cleanup

if.then5:                                         ; preds = %if.then3
  tail call void @error(ptr noundef nonnull @.str.40, i32 noundef 150) #20
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %get_smallest_poc.exit
  %pos.480 = phi i32 [ -1, %if.then5 ], [ %pos.4, %get_smallest_poc.exit ]
  %poc.478 = phi i32 [ %poc.479, %if.then5 ], [ %poc.4, %get_smallest_poc.exit ]
  %conceal_mode = getelementptr inbounds i8, ptr %0, i64 849240
  %33 = load i32, ptr %conceal_mode, align 8
  %cmp8.not = icmp eq i32 %33, 0
  br i1 %cmp8.not, label %if.end13, label %if.then9

if.then9:                                         ; preds = %if.end7
  %last_output_poc = getelementptr inbounds i8, ptr %p_Dpb, i64 56
  %34 = load i32, ptr %last_output_poc, align 8
  %cmp10 = icmp eq i32 %34, 0
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.then9
  tail call void @write_lost_ref_after_idr(ptr noundef nonnull %p_Dpb, i32 noundef %pos.480) #20
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.then9
  %p_out = getelementptr inbounds i8, ptr %0, i64 851888
  %35 = load i32, ptr %p_out, align 8
  tail call void @write_lost_non_ref_pic(ptr noundef nonnull %p_Dpb, i32 noundef %poc.478, i32 noundef %35) #20
  br label %if.end13

if.end13:                                         ; preds = %if.end12, %if.end7
  %fs = getelementptr inbounds i8, ptr %p_Dpb, i64 16
  %36 = load ptr, ptr %fs, align 8
  %idxprom = sext i32 %pos.480 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %36, i64 %idxprom
  %37 = load ptr, ptr %arrayidx, align 8
  %p_out14 = getelementptr inbounds i8, ptr %0, i64 851888
  %38 = load i32, ptr %p_out14, align 8
  tail call void @write_stored_frame(ptr noundef nonnull %0, ptr noundef %37, i32 noundef %38) #20
  %39 = load i32, ptr %conceal_mode, align 8
  %cmp16 = icmp eq i32 %39, 0
  br i1 %cmp16, label %if.then17, label %if.end26

if.then17:                                        ; preds = %if.end13
  %last_output_poc18 = getelementptr inbounds i8, ptr %p_Dpb, i64 56
  %40 = load i32, ptr %last_output_poc18, align 8
  %cmp19.not = icmp slt i32 %40, %poc.478
  br i1 %cmp19.not, label %if.end26, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then17
  %41 = load ptr, ptr %fs, align 8
  %arrayidx22 = getelementptr inbounds ptr, ptr %41, i64 %idxprom
  %42 = load ptr, ptr %arrayidx22, align 8
  %view_id = getelementptr inbounds i8, ptr %42, i64 72
  %43 = load i32, ptr %view_id, align 8
  %last_output_view_id = getelementptr inbounds i8, ptr %p_Dpb, i64 60
  %44 = load i32, ptr %last_output_view_id, align 4
  %cmp23 = icmp eq i32 %43, %44
  br i1 %cmp23, label %if.then24, label %if.end26

if.then24:                                        ; preds = %land.lhs.true
  tail call void @error(ptr noundef nonnull @.str.41, i32 noundef 150) #20
  br label %if.end26

if.end26:                                         ; preds = %if.then17, %land.lhs.true, %if.then24, %if.end13
  %last_output_poc27 = getelementptr inbounds i8, ptr %p_Dpb, i64 56
  store i32 %poc.478, ptr %last_output_poc27, align 8
  %45 = load ptr, ptr %fs, align 8
  %arrayidx30 = getelementptr inbounds ptr, ptr %45, i64 %idxprom
  %46 = load ptr, ptr %arrayidx30, align 8
  %view_id31 = getelementptr inbounds i8, ptr %46, i64 72
  %47 = load i32, ptr %view_id31, align 8
  %last_output_view_id32 = getelementptr inbounds i8, ptr %p_Dpb, i64 60
  store i32 %47, ptr %last_output_view_id32, align 4
  %48 = load ptr, ptr %arrayidx30, align 8
  %is_reference.i = getelementptr inbounds i8, ptr %48, i64 4
  %49 = load i32, ptr %is_reference.i, align 4
  %tobool.not.i59 = icmp eq i32 %49, 0
  br i1 %tobool.not.i59, label %if.end.i60, label %cleanup

if.end.i60:                                       ; preds = %if.end26
  %50 = load i32, ptr %48, align 8
  %cmp.i61 = icmp eq i32 %50, 3
  br i1 %cmp.i61, label %if.then1.i, label %if.end5.i

if.then1.i:                                       ; preds = %if.end.i60
  %frame.i = getelementptr inbounds i8, ptr %48, i64 48
  %51 = load ptr, ptr %frame.i, align 8
  %used_for_reference.i = getelementptr inbounds i8, ptr %51, i64 44
  %52 = load i32, ptr %used_for_reference.i, align 4
  %tobool2.not.i = icmp eq i32 %52, 0
  br i1 %tobool2.not.i, label %if.then8.i, label %cleanup

if.end5.i:                                        ; preds = %if.end.i60
  %and.i = and i32 %50, 1
  %tobool7.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool7.not.i, label %if.end17.i, label %if.then8.i

if.then8.i:                                       ; preds = %if.end5.i, %if.then1.i
  %top_field.i = getelementptr inbounds i8, ptr %48, i64 56
  %53 = load ptr, ptr %top_field.i, align 8
  %tobool9.not.i = icmp eq ptr %53, null
  br i1 %tobool9.not.i, label %if.end17.i, label %if.then10.i

if.then10.i:                                      ; preds = %if.then8.i
  %used_for_reference12.i = getelementptr inbounds i8, ptr %53, i64 44
  %54 = load i32, ptr %used_for_reference12.i, align 4
  %tobool13.not.i = icmp eq i32 %54, 0
  br i1 %tobool13.not.i, label %if.end17.i, label %cleanup

if.end17.i:                                       ; preds = %if.then10.i, %if.then8.i, %if.end5.i
  %and19.i = and i32 %50, 2
  %tobool20.not.i = icmp eq i32 %and19.i, 0
  br i1 %tobool20.not.i, label %if.then36, label %if.then21.i

if.then21.i:                                      ; preds = %if.end17.i
  %bottom_field.i = getelementptr inbounds i8, ptr %48, i64 64
  %55 = load ptr, ptr %bottom_field.i, align 8
  %tobool22.not.i = icmp eq ptr %55, null
  br i1 %tobool22.not.i, label %if.then36, label %if.then23.i

if.then23.i:                                      ; preds = %if.then21.i
  %used_for_reference25.i = getelementptr inbounds i8, ptr %55, i64 44
  %56 = load i32, ptr %used_for_reference25.i, align 4
  %tobool26.not.i = icmp eq i32 %56, 0
  br i1 %tobool26.not.i, label %if.then36, label %cleanup

if.then36:                                        ; preds = %if.then23.i, %if.then21.i, %if.end17.i
  tail call fastcc void @remove_frame_from_dpb(ptr noundef nonnull %p_Dpb, i32 noundef %pos.480)
  br label %cleanup

cleanup:                                          ; preds = %if.then23.i, %if.then10.i, %if.then1.i, %if.end26, %if.then36, %if.then3
  %retval.0 = phi i32 [ 0, %if.then3 ], [ 1, %if.then36 ], [ 1, %if.end26 ], [ 1, %if.then1.i ], [ 1, %if.then10.i ], [ 1, %if.then23.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind uwtable
define dso_local void @flush_dpb(ptr noundef %p_Dpb, i32 noundef %curr_view_id) local_unnamed_addr #1 {
entry:
  %0 = load ptr, ptr %p_Dpb, align 8
  %conceal_mode = getelementptr inbounds i8, ptr %0, i64 849240
  %1 = load i32, ptr %conceal_mode, align 8
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @conceal_non_ref_pics(ptr noundef nonnull %p_Dpb, i32 noundef 0) #20
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %used_size = getelementptr inbounds i8, ptr %p_Dpb, i64 44
  %2 = load i32, ptr %used_size, align 4
  %cmp231.not = icmp eq i32 %2, 0
  br i1 %cmp231.not, label %while.cond.preheader, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end
  %fs = getelementptr inbounds i8, ptr %p_Dpb, i64 16
  %cmp4 = icmp eq i32 %curr_view_id, -1
  br i1 %cmp4, label %for.body.us, label %for.body

for.body.us:                                      ; preds = %for.body.lr.ph, %for.body.us
  %indvars.iv35 = phi i64 [ %indvars.iv.next36, %for.body.us ], [ 0, %for.body.lr.ph ]
  %3 = load ptr, ptr %fs, align 8
  %arrayidx.us = getelementptr inbounds ptr, ptr %3, i64 %indvars.iv35
  %4 = load ptr, ptr %arrayidx.us, align 8
  tail call fastcc void @unmark_for_reference(ptr noundef nonnull %4)
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1
  %5 = load i32, ptr %used_size, align 4
  %6 = zext i32 %5 to i64
  %cmp2.us = icmp ult i64 %indvars.iv.next36, %6
  br i1 %cmp2.us, label %for.body.us, label %while.cond.preheader

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %7 = phi i32 [ %11, %for.inc ], [ %2, %for.body.lr.ph ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.body.lr.ph ]
  %8 = load ptr, ptr %fs, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %8, i64 %indvars.iv
  %9 = load ptr, ptr %arrayidx, align 8
  %view_id = getelementptr inbounds i8, ptr %9, i64 72
  %10 = load i32, ptr %view_id, align 8
  %cmp3 = icmp eq i32 %10, %curr_view_id
  br i1 %cmp3, label %if.then5, label %for.inc

if.then5:                                         ; preds = %for.body
  tail call fastcc void @unmark_for_reference(ptr noundef nonnull %9)
  %.pre = load i32, ptr %used_size, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then5, %for.body
  %11 = phi i32 [ %.pre, %if.then5 ], [ %7, %for.body ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %12 = zext i32 %11 to i64
  %cmp2 = icmp ult i64 %indvars.iv.next, %12
  br i1 %cmp2, label %for.body, label %while.cond.preheader

while.cond.preheader:                             ; preds = %for.inc, %for.body.us, %if.end
  br label %while.cond

while.cond:                                       ; preds = %while.cond.preheader, %while.cond
  %call = tail call fastcc i32 @remove_unused_frame_from_dpb(ptr noundef nonnull %p_Dpb, i32 noundef %curr_view_id)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %while.cond10, label %while.cond

while.cond10:                                     ; preds = %while.cond, %land.rhs
  %13 = load i32, ptr %used_size, align 4
  %tobool12.not = icmp eq i32 %13, 0
  br i1 %tobool12.not, label %while.end16, label %land.rhs

land.rhs:                                         ; preds = %while.cond10
  %call13 = tail call fastcc i32 @output_one_frame_from_dpb(ptr noundef nonnull %p_Dpb, i32 noundef %curr_view_id)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %while.end16, label %while.cond10

while.end16:                                      ; preds = %while.cond10, %land.rhs
  %last_output_poc = getelementptr inbounds i8, ptr %p_Dpb, i64 56
  store i32 -2147483648, ptr %last_output_poc, align 8
  ret void
}

; Function Attrs: mustprogress nounwind willreturn uwtable
define internal fastcc void @unmark_for_reference(ptr nocapture noundef %fs) unnamed_addr #7 {
entry:
  %0 = load i32, ptr %fs, align 8
  %and = and i32 %0, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end4, label %if.then

if.then:                                          ; preds = %entry
  %top_field = getelementptr inbounds i8, ptr %fs, i64 56
  %1 = load ptr, ptr %top_field, align 8
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.end4, label %if.then2

if.then2:                                         ; preds = %if.then
  %used_for_reference = getelementptr inbounds i8, ptr %1, i64 44
  store i32 0, ptr %used_for_reference, align 4
  %.pre = load i32, ptr %fs, align 8
  br label %if.end4

if.end4:                                          ; preds = %if.then, %if.then2, %entry
  %2 = phi i32 [ %0, %if.then ], [ %.pre, %if.then2 ], [ %0, %entry ]
  %and6 = and i32 %2, 2
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end14, label %if.then8

if.then8:                                         ; preds = %if.end4
  %bottom_field = getelementptr inbounds i8, ptr %fs, i64 64
  %3 = load ptr, ptr %bottom_field, align 8
  %tobool9.not = icmp eq ptr %3, null
  br i1 %tobool9.not, label %if.end14, label %if.then10

if.then10:                                        ; preds = %if.then8
  %used_for_reference12 = getelementptr inbounds i8, ptr %3, i64 44
  store i32 0, ptr %used_for_reference12, align 4
  %.pr.pre = load i32, ptr %fs, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.then8, %if.then10, %if.end4
  %4 = phi i32 [ %2, %if.end4 ], [ %.pr.pre, %if.then10 ], [ %2, %if.then8 ]
  %cmp = icmp eq i32 %4, 3
  br i1 %cmp, label %if.then16, label %if.end28

if.then16:                                        ; preds = %if.end14
  %top_field17 = getelementptr inbounds i8, ptr %fs, i64 56
  %5 = load ptr, ptr %top_field17, align 8
  %tobool18.not = icmp eq ptr %5, null
  br i1 %tobool18.not, label %if.end26, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then16
  %bottom_field19 = getelementptr inbounds i8, ptr %fs, i64 64
  %6 = load ptr, ptr %bottom_field19, align 8
  %tobool20.not = icmp eq ptr %6, null
  br i1 %tobool20.not, label %if.end26, label %if.then21

if.then21:                                        ; preds = %land.lhs.true
  %used_for_reference23 = getelementptr inbounds i8, ptr %5, i64 44
  store i32 0, ptr %used_for_reference23, align 4
  %7 = load ptr, ptr %bottom_field19, align 8
  %used_for_reference25 = getelementptr inbounds i8, ptr %7, i64 44
  store i32 0, ptr %used_for_reference25, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then21, %land.lhs.true, %if.then16
  %frame = getelementptr inbounds i8, ptr %fs, i64 48
  %8 = load ptr, ptr %frame, align 8
  %used_for_reference27 = getelementptr inbounds i8, ptr %8, i64 44
  store i32 0, ptr %used_for_reference27, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.end26, %if.end14
  %is_reference = getelementptr inbounds i8, ptr %fs, i64 4
  store i32 0, ptr %is_reference, align 4
  %frame29 = getelementptr inbounds i8, ptr %fs, i64 48
  %9 = load ptr, ptr %frame29, align 8
  %tobool30.not = icmp eq ptr %9, null
  br i1 %tobool30.not, label %if.end33, label %if.then31

if.then31:                                        ; preds = %if.end28
  %motion = getelementptr inbounds i8, ptr %9, i64 184
  %10 = load ptr, ptr %motion, align 8
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %if.end33, label %if.then.i

if.then.i:                                        ; preds = %if.then31
  tail call void @free(ptr noundef nonnull %10) #20
  store ptr null, ptr %motion, align 8
  br label %if.end33

if.end33:                                         ; preds = %if.then.i, %if.then31, %if.end28
  %top_field34 = getelementptr inbounds i8, ptr %fs, i64 56
  %11 = load ptr, ptr %top_field34, align 8
  %tobool35.not = icmp eq ptr %11, null
  br i1 %tobool35.not, label %if.end39, label %if.then36

if.then36:                                        ; preds = %if.end33
  %motion38 = getelementptr inbounds i8, ptr %11, i64 184
  %12 = load ptr, ptr %motion38, align 8
  %tobool.not.i69 = icmp eq ptr %12, null
  br i1 %tobool.not.i69, label %if.end39, label %if.then.i70

if.then.i70:                                      ; preds = %if.then36
  tail call void @free(ptr noundef nonnull %12) #20
  store ptr null, ptr %motion38, align 8
  br label %if.end39

if.end39:                                         ; preds = %if.then.i70, %if.then36, %if.end33
  %bottom_field40 = getelementptr inbounds i8, ptr %fs, i64 64
  %13 = load ptr, ptr %bottom_field40, align 8
  %tobool41.not = icmp eq ptr %13, null
  br i1 %tobool41.not, label %if.end45, label %if.then42

if.then42:                                        ; preds = %if.end39
  %motion44 = getelementptr inbounds i8, ptr %13, i64 184
  %14 = load ptr, ptr %motion44, align 8
  %tobool.not.i72 = icmp eq ptr %14, null
  br i1 %tobool.not.i72, label %if.end45, label %if.then.i73

if.then.i73:                                      ; preds = %if.then42
  tail call void @free(ptr noundef nonnull %14) #20
  store ptr null, ptr %motion44, align 8
  br label %if.end45

if.end45:                                         ; preds = %if.then.i73, %if.then42, %if.end39
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @dpb_split_field(ptr noundef %p_Vid, ptr nocapture noundef %fs) local_unnamed_addr #1 {
entry:
  %frame = getelementptr inbounds i8, ptr %fs, i64 48
  %0 = load ptr, ptr %frame, align 8
  %size_x = getelementptr inbounds i8, ptr %0, i64 64
  %1 = load i32, ptr %size_x, align 8
  %2 = ashr i32 %1, 3
  %mul = and i32 %2, -2
  %poc = getelementptr inbounds i8, ptr %0, i64 4
  %3 = load i32, ptr %poc, align 4
  %poc3 = getelementptr inbounds i8, ptr %fs, i64 40
  store i32 %3, ptr %poc3, align 8
  %frame_mbs_only_flag = getelementptr inbounds i8, ptr %0, i64 272
  %4 = load i32, ptr %frame_mbs_only_flag, align 8
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load i32, ptr %size_x, align 8
  %size_y = getelementptr inbounds i8, ptr %0, i64 68
  %6 = load i32, ptr %size_y, align 4
  %size_x_cr = getelementptr inbounds i8, ptr %0, i64 72
  %7 = load i32, ptr %size_x_cr, align 8
  %size_y_cr = getelementptr inbounds i8, ptr %0, i64 76
  %8 = load i32, ptr %size_y_cr, align 4
  %call = tail call ptr @alloc_storable_picture(ptr noundef %p_Vid, i32 noundef 1, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8)
  %top_field = getelementptr inbounds i8, ptr %fs, i64 56
  store ptr %call, ptr %top_field, align 8
  %9 = load i32, ptr %size_x, align 8
  %10 = load i32, ptr %size_y, align 4
  %11 = load i32, ptr %size_x_cr, align 8
  %12 = load i32, ptr %size_y_cr, align 4
  %call9 = tail call ptr @alloc_storable_picture(ptr noundef %p_Vid, i32 noundef 2, i32 noundef %9, i32 noundef %10, i32 noundef %11, i32 noundef %12)
  %bottom_field = getelementptr inbounds i8, ptr %fs, i64 64
  store ptr %call9, ptr %bottom_field, align 8
  %13 = load i32, ptr %size_y, align 4
  %cmp1037 = icmp sgt i32 %13, 1
  br i1 %cmp1037, label %for.body.lr.ph, label %for.cond18.preheader

for.body.lr.ph:                                   ; preds = %if.then
  %imgY = getelementptr inbounds i8, ptr %call, i64 128
  %imgY12 = getelementptr inbounds i8, ptr %0, i64 128
  br label %for.body

for.cond18.preheader:                             ; preds = %for.body, %if.then
  %14 = phi i32 [ %13, %if.then ], [ %21, %for.body ]
  %15 = load i32, ptr %size_y_cr, align 4
  %cmp211040 = icmp sgt i32 %15, 1
  br i1 %cmp211040, label %for.body23.lr.ph, label %for.cond50.preheader

for.body23.lr.ph:                                 ; preds = %for.cond18.preheader
  %imgUV = getelementptr inbounds i8, ptr %call, i64 136
  %imgUV27 = getelementptr inbounds i8, ptr %0, i64 136
  br label %for.body23

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %16 = load ptr, ptr %imgY, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %16, i64 %indvars.iv
  %17 = load ptr, ptr %arrayidx, align 8
  %18 = load ptr, ptr %imgY12, align 8
  %arrayidx15.idx = shl nsw i64 %indvars.iv, 4
  %arrayidx15 = getelementptr inbounds i8, ptr %18, i64 %arrayidx15.idx
  %19 = load ptr, ptr %arrayidx15, align 8
  %20 = load i32, ptr %size_x, align 8
  %conv = sext i32 %20 to i64
  %mul17 = shl nsw i64 %conv, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %17, ptr align 2 %19, i64 %mul17, i1 false)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %21 = load i32, ptr %size_y, align 4
  %shr11 = ashr i32 %21, 1
  %22 = sext i32 %shr11 to i64
  %cmp = icmp slt i64 %indvars.iv.next, %22
  br i1 %cmp, label %for.body, label %for.cond18.preheader

for.cond50.preheader.loopexit:                    ; preds = %for.body23
  %.pre = load i32, ptr %size_y, align 4
  br label %for.cond50.preheader

for.cond50.preheader:                             ; preds = %for.cond50.preheader.loopexit, %for.cond18.preheader
  %23 = phi i32 [ %40, %for.cond50.preheader.loopexit ], [ %15, %for.cond18.preheader ]
  %24 = phi i32 [ %.pre, %for.cond50.preheader.loopexit ], [ %14, %for.cond18.preheader ]
  %cmp531043 = icmp sgt i32 %24, 1
  br i1 %cmp531043, label %for.body55.lr.ph, label %for.cond69.preheader

for.body55.lr.ph:                                 ; preds = %for.cond50.preheader
  %imgY56 = getelementptr inbounds i8, ptr %call9, i64 128
  %imgY59 = getelementptr inbounds i8, ptr %0, i64 128
  br label %for.body55

for.body23:                                       ; preds = %for.body23.lr.ph, %for.body23
  %indvars.iv1062 = phi i64 [ 0, %for.body23.lr.ph ], [ %indvars.iv.next1063, %for.body23 ]
  %25 = load ptr, ptr %imgUV, align 8
  %26 = load ptr, ptr %25, align 8
  %arrayidx26 = getelementptr inbounds ptr, ptr %26, i64 %indvars.iv1062
  %27 = load ptr, ptr %arrayidx26, align 8
  %28 = load ptr, ptr %imgUV27, align 8
  %29 = load ptr, ptr %28, align 8
  %30 = shl nuw nsw i64 %indvars.iv1062, 1
  %arrayidx31 = getelementptr inbounds ptr, ptr %29, i64 %30
  %31 = load ptr, ptr %arrayidx31, align 8
  %32 = load i32, ptr %size_x_cr, align 8
  %conv33 = sext i32 %32 to i64
  %mul34 = shl nsw i64 %conv33, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %27, ptr align 2 %31, i64 %mul34, i1 false)
  %33 = load ptr, ptr %imgUV, align 8
  %arrayidx36 = getelementptr inbounds i8, ptr %33, i64 8
  %34 = load ptr, ptr %arrayidx36, align 8
  %arrayidx38 = getelementptr inbounds ptr, ptr %34, i64 %indvars.iv1062
  %35 = load ptr, ptr %arrayidx38, align 8
  %36 = load ptr, ptr %imgUV27, align 8
  %arrayidx40 = getelementptr inbounds i8, ptr %36, i64 8
  %37 = load ptr, ptr %arrayidx40, align 8
  %arrayidx43 = getelementptr inbounds ptr, ptr %37, i64 %30
  %38 = load ptr, ptr %arrayidx43, align 8
  %39 = load i32, ptr %size_x_cr, align 8
  %conv45 = sext i32 %39 to i64
  %mul46 = shl nsw i64 %conv45, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %35, ptr align 2 %38, i64 %mul46, i1 false)
  %indvars.iv.next1063 = add nuw nsw i64 %indvars.iv1062, 1
  %40 = load i32, ptr %size_y_cr, align 4
  %shr20 = ashr i32 %40, 1
  %41 = sext i32 %shr20 to i64
  %cmp21 = icmp slt i64 %indvars.iv.next1063, %41
  br i1 %cmp21, label %for.body23, label %for.cond50.preheader.loopexit

for.cond69.preheader.loopexit:                    ; preds = %for.body55
  %.pre1088 = load i32, ptr %size_y_cr, align 4
  br label %for.cond69.preheader

for.cond69.preheader:                             ; preds = %for.cond69.preheader.loopexit, %for.cond50.preheader
  %42 = phi i32 [ %.pre1088, %for.cond69.preheader.loopexit ], [ %23, %for.cond50.preheader ]
  %cmp721046 = icmp sgt i32 %42, 1
  br i1 %cmp721046, label %for.body74.lr.ph, label %for.end103

for.body74.lr.ph:                                 ; preds = %for.cond69.preheader
  %imgUV75 = getelementptr inbounds i8, ptr %call9, i64 136
  %imgUV79 = getelementptr inbounds i8, ptr %0, i64 136
  br label %for.body74

for.body55:                                       ; preds = %for.body55.lr.ph, %for.body55
  %indvars.iv1066 = phi i64 [ 0, %for.body55.lr.ph ], [ %indvars.iv.next1067, %for.body55 ]
  %43 = load ptr, ptr %imgY56, align 8
  %arrayidx58 = getelementptr inbounds ptr, ptr %43, i64 %indvars.iv1066
  %44 = load ptr, ptr %arrayidx58, align 8
  %45 = load ptr, ptr %imgY59, align 8
  %46 = shl nuw nsw i64 %indvars.iv1066, 1
  %47 = or disjoint i64 %46, 1
  %arrayidx62 = getelementptr inbounds ptr, ptr %45, i64 %47
  %48 = load ptr, ptr %arrayidx62, align 8
  %49 = load i32, ptr %size_x, align 8
  %conv64 = sext i32 %49 to i64
  %mul65 = shl nsw i64 %conv64, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %44, ptr align 2 %48, i64 %mul65, i1 false)
  %indvars.iv.next1067 = add nuw nsw i64 %indvars.iv1066, 1
  %50 = load i32, ptr %size_y, align 4
  %shr52 = ashr i32 %50, 1
  %51 = sext i32 %shr52 to i64
  %cmp53 = icmp slt i64 %indvars.iv.next1067, %51
  br i1 %cmp53, label %for.body55, label %for.cond69.preheader.loopexit

for.body74:                                       ; preds = %for.body74.lr.ph, %for.body74
  %indvars.iv1071 = phi i64 [ 0, %for.body74.lr.ph ], [ %indvars.iv.next1072, %for.body74 ]
  %52 = load ptr, ptr %imgUV75, align 8
  %53 = load ptr, ptr %52, align 8
  %arrayidx78 = getelementptr inbounds ptr, ptr %53, i64 %indvars.iv1071
  %54 = load ptr, ptr %arrayidx78, align 8
  %55 = load ptr, ptr %imgUV79, align 8
  %56 = load ptr, ptr %55, align 8
  %57 = shl nuw nsw i64 %indvars.iv1071, 1
  %58 = or disjoint i64 %57, 1
  %arrayidx84 = getelementptr inbounds ptr, ptr %56, i64 %58
  %59 = load ptr, ptr %arrayidx84, align 8
  %60 = load i32, ptr %size_x_cr, align 8
  %conv86 = sext i32 %60 to i64
  %mul87 = shl nsw i64 %conv86, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %54, ptr align 2 %59, i64 %mul87, i1 false)
  %61 = load ptr, ptr %imgUV75, align 8
  %arrayidx89 = getelementptr inbounds i8, ptr %61, i64 8
  %62 = load ptr, ptr %arrayidx89, align 8
  %arrayidx91 = getelementptr inbounds ptr, ptr %62, i64 %indvars.iv1071
  %63 = load ptr, ptr %arrayidx91, align 8
  %64 = load ptr, ptr %imgUV79, align 8
  %arrayidx93 = getelementptr inbounds i8, ptr %64, i64 8
  %65 = load ptr, ptr %arrayidx93, align 8
  %arrayidx97 = getelementptr inbounds ptr, ptr %65, i64 %58
  %66 = load ptr, ptr %arrayidx97, align 8
  %67 = load i32, ptr %size_x_cr, align 8
  %conv99 = sext i32 %67 to i64
  %mul100 = shl nsw i64 %conv99, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %63, ptr align 2 %66, i64 %mul100, i1 false)
  %indvars.iv.next1072 = add nuw nsw i64 %indvars.iv1071, 1
  %68 = load i32, ptr %size_y_cr, align 4
  %shr71 = ashr i32 %68, 1
  %69 = sext i32 %shr71 to i64
  %cmp72 = icmp slt i64 %indvars.iv.next1072, %69
  br i1 %cmp72, label %for.body74, label %for.end103

for.end103:                                       ; preds = %for.body74, %for.cond69.preheader
  %top_poc = getelementptr inbounds i8, ptr %0, i64 8
  %70 = load i32, ptr %top_poc, align 8
  %poc104 = getelementptr inbounds i8, ptr %call, i64 4
  store i32 %70, ptr %poc104, align 4
  %bottom_poc = getelementptr inbounds i8, ptr %0, i64 12
  %71 = load i32, ptr %bottom_poc, align 4
  %poc105 = getelementptr inbounds i8, ptr %call9, i64 4
  store i32 %71, ptr %poc105, align 4
  %view_id = getelementptr inbounds i8, ptr %0, i64 344
  %72 = load i32, ptr %view_id, align 8
  %view_id106 = getelementptr inbounds i8, ptr %call, i64 344
  store i32 %72, ptr %view_id106, align 8
  %view_id108 = getelementptr inbounds i8, ptr %call9, i64 344
  store i32 %72, ptr %view_id108, align 8
  %frame_poc = getelementptr inbounds i8, ptr %0, i64 16
  %73 = load i32, ptr %frame_poc, align 8
  %frame_poc109 = getelementptr inbounds i8, ptr %call, i64 16
  store i32 %73, ptr %frame_poc109, align 8
  %74 = load i32, ptr %bottom_poc, align 4
  %bottom_poc111 = getelementptr inbounds i8, ptr %call9, i64 12
  store i32 %74, ptr %bottom_poc111, align 4
  %bottom_poc112 = getelementptr inbounds i8, ptr %call, i64 12
  store i32 %74, ptr %bottom_poc112, align 4
  %75 = load i32, ptr %top_poc, align 8
  %top_poc114 = getelementptr inbounds i8, ptr %call9, i64 8
  store i32 %75, ptr %top_poc114, align 8
  %top_poc115 = getelementptr inbounds i8, ptr %call, i64 8
  store i32 %75, ptr %top_poc115, align 8
  %76 = load i32, ptr %frame_poc, align 8
  %frame_poc117 = getelementptr inbounds i8, ptr %call9, i64 16
  store i32 %76, ptr %frame_poc117, align 8
  %used_for_reference = getelementptr inbounds i8, ptr %0, i64 44
  %77 = load i32, ptr %used_for_reference, align 4
  %used_for_reference118 = getelementptr inbounds i8, ptr %call9, i64 44
  store i32 %77, ptr %used_for_reference118, align 4
  %used_for_reference119 = getelementptr inbounds i8, ptr %call, i64 44
  store i32 %77, ptr %used_for_reference119, align 4
  %is_long_term = getelementptr inbounds i8, ptr %0, i64 40
  %78 = load i8, ptr %is_long_term, align 8
  %is_long_term120 = getelementptr inbounds i8, ptr %call9, i64 40
  store i8 %78, ptr %is_long_term120, align 8
  %is_long_term121 = getelementptr inbounds i8, ptr %call, i64 40
  store i8 %78, ptr %is_long_term121, align 8
  %long_term_frame_idx = getelementptr inbounds i8, ptr %0, i64 36
  %79 = load i32, ptr %long_term_frame_idx, align 4
  %long_term_frame_idx122 = getelementptr inbounds i8, ptr %call9, i64 36
  store i32 %79, ptr %long_term_frame_idx122, align 4
  %long_term_frame_idx123 = getelementptr inbounds i8, ptr %call, i64 36
  store i32 %79, ptr %long_term_frame_idx123, align 4
  %long_term_frame_idx124 = getelementptr inbounds i8, ptr %fs, i64 32
  store i32 %79, ptr %long_term_frame_idx124, align 8
  %coded_frame = getelementptr inbounds i8, ptr %call9, i64 96
  store i32 1, ptr %coded_frame, align 8
  %coded_frame125 = getelementptr inbounds i8, ptr %call, i64 96
  store i32 1, ptr %coded_frame125, align 8
  %mb_aff_frame_flag = getelementptr inbounds i8, ptr %0, i64 100
  %80 = load i32, ptr %mb_aff_frame_flag, align 4
  %mb_aff_frame_flag126 = getelementptr inbounds i8, ptr %call9, i64 100
  store i32 %80, ptr %mb_aff_frame_flag126, align 4
  %mb_aff_frame_flag127 = getelementptr inbounds i8, ptr %call, i64 100
  store i32 %80, ptr %mb_aff_frame_flag127, align 4
  %top_field128 = getelementptr inbounds i8, ptr %0, i64 224
  store ptr %call, ptr %top_field128, align 8
  %bottom_field129 = getelementptr inbounds i8, ptr %0, i64 232
  store ptr %call9, ptr %bottom_field129, align 8
  %frame130 = getelementptr inbounds i8, ptr %0, i64 240
  store ptr %0, ptr %frame130, align 8
  %bottom_field131 = getelementptr inbounds i8, ptr %call, i64 232
  store ptr %call9, ptr %bottom_field131, align 8
  %frame132 = getelementptr inbounds i8, ptr %call, i64 240
  store ptr %0, ptr %frame132, align 8
  %top_field133 = getelementptr inbounds i8, ptr %call, i64 224
  store ptr %call, ptr %top_field133, align 8
  %top_field134 = getelementptr inbounds i8, ptr %call9, i64 224
  store ptr %call, ptr %top_field134, align 8
  %frame135 = getelementptr inbounds i8, ptr %call9, i64 240
  store ptr %0, ptr %frame135, align 8
  %bottom_field136 = getelementptr inbounds i8, ptr %call9, i64 232
  store ptr %call9, ptr %bottom_field136, align 8
  %view_id137 = getelementptr inbounds i8, ptr %fs, i64 72
  %81 = load i32, ptr %view_id137, align 8
  store i32 %81, ptr %view_id108, align 8
  store i32 %81, ptr %view_id106, align 8
  %inter_view_flag = getelementptr inbounds i8, ptr %fs, i64 76
  %82 = load i32, ptr %inter_view_flag, align 4
  %inter_view_flag141 = getelementptr inbounds i8, ptr %call, i64 348
  store i32 %82, ptr %inter_view_flag141, align 4
  %arrayidx143 = getelementptr inbounds i8, ptr %fs, i64 80
  %83 = load i32, ptr %arrayidx143, align 4
  %inter_view_flag144 = getelementptr inbounds i8, ptr %call9, i64 348
  store i32 %83, ptr %inter_view_flag144, align 4
  %chroma_format_idc = getelementptr inbounds i8, ptr %0, i64 268
  %84 = load i32, ptr %chroma_format_idc, align 4
  %chroma_format_idc145 = getelementptr inbounds i8, ptr %call9, i64 268
  store i32 %84, ptr %chroma_format_idc145, align 4
  %chroma_format_idc146 = getelementptr inbounds i8, ptr %call, i64 268
  store i32 %84, ptr %chroma_format_idc146, align 4
  %iCodingType = getelementptr inbounds i8, ptr %0, i64 388
  %85 = load i32, ptr %iCodingType, align 4
  %iCodingType147 = getelementptr inbounds i8, ptr %call9, i64 388
  store i32 %85, ptr %iCodingType147, align 4
  %iCodingType148 = getelementptr inbounds i8, ptr %call, i64 388
  store i32 %85, ptr %iCodingType148, align 4
  %86 = load i32, ptr %used_for_reference, align 4
  %tobool150.not = icmp eq i32 %86, 0
  br i1 %tobool150.not, label %if.end155, label %if.then151

if.then151:                                       ; preds = %for.end103
  tail call void @pad_dec_picture(ptr noundef %p_Vid, ptr noundef nonnull %call) #20
  tail call void @pad_dec_picture(ptr noundef %p_Vid, ptr noundef nonnull %call9) #20
  br label %if.end155

if.else:                                          ; preds = %entry
  %top_field152 = getelementptr inbounds i8, ptr %0, i64 224
  %frame154 = getelementptr inbounds i8, ptr %0, i64 240
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %top_field152, i8 0, i64 16, i1 false)
  store ptr %0, ptr %frame154, align 8
  br label %if.end155

if.end155:                                        ; preds = %for.end103, %if.then151, %if.else
  %fs_top.0 = phi ptr [ null, %if.else ], [ %call, %if.then151 ], [ %call, %for.end103 ]
  %fs_btm.0 = phi ptr [ null, %if.else ], [ %call9, %if.then151 ], [ %call9, %for.end103 ]
  %87 = load i32, ptr %frame_mbs_only_flag, align 8
  %tobool157.not = icmp eq i32 %87, 0
  br i1 %tobool157.not, label %if.then158, label %if.end702

if.then158:                                       ; preds = %if.end155
  %mb_aff_frame_flag159 = getelementptr inbounds i8, ptr %0, i64 100
  %88 = load i32, ptr %mb_aff_frame_flag159, align 4
  %tobool160.not = icmp eq i32 %88, 0
  br i1 %tobool160.not, label %if.then158.if.end467_crit_edge, label %if.then161

if.then158.if.end467_crit_edge:                   ; preds = %if.then158
  %size_y469.phi.trans.insert = getelementptr inbounds i8, ptr %0, i64 68
  %.pre1091 = load i32, ptr %size_y469.phi.trans.insert, align 4
  br label %if.end467

if.then161:                                       ; preds = %if.then158
  %motion = getelementptr inbounds i8, ptr %0, i64 184
  %size_y163 = getelementptr inbounds i8, ptr %0, i64 68
  %89 = load i32, ptr %size_y163, align 4
  %cmp1651052 = icmp sgt i32 %89, 7
  br i1 %cmp1651052, label %for.body167.lr.ph, label %if.end702

for.body167.lr.ph:                                ; preds = %if.then161
  %mv_info = getelementptr inbounds i8, ptr %fs_btm.0, i64 152
  %mv_info195 = getelementptr inbounds i8, ptr %0, i64 152
  %ppSliceList = getelementptr inbounds i8, ptr %p_Vid, i64 848736
  %mv_info322 = getelementptr inbounds i8, ptr %fs_top.0, i64 152
  %.pre1089 = load i32, ptr %size_x, align 8
  br label %for.body167

for.body167:                                      ; preds = %for.body167.lr.ph, %for.inc464
  %90 = phi i32 [ %89, %for.body167.lr.ph ], [ %169, %for.inc464 ]
  %91 = phi i32 [ %.pre1089, %for.body167.lr.ph ], [ %170, %for.inc464 ]
  %indvars.iv1079 = phi i64 [ 0, %for.body167.lr.ph ], [ %indvars.iv.next1080, %for.inc464 ]
  %cmp1761049 = icmp sgt i32 %91, 3
  br i1 %cmp1761049, label %for.body178.lr.ph, label %for.inc464

for.body178.lr.ph:                                ; preds = %for.body167
  %92 = trunc nuw nsw i64 %indvars.iv1079 to i32
  %shr172 = lshr i32 %92, 1
  %indvars.iv1079.tr = trunc i64 %indvars.iv1079 to i32
  %93 = shl i32 %indvars.iv1079.tr, 1
  %mul169 = and i32 %93, 2147483640
  %and = and i32 %92, 3
  %add170 = or disjoint i32 %mul169, %and
  %add171 = or disjoint i32 %add170, 4
  %shr180 = lshr i32 %92, 2
  %mul181 = mul nsw i32 %shr180, %mul
  %and184 = and i32 %shr172, 1
  %idxprom196 = zext nneg i32 %add171 to i64
  %idxprom330 = zext nneg i32 %add170 to i64
  br label %for.body178

for.body178:                                      ; preds = %for.body178.lr.ph, %for.inc461
  %indvars.iv1076 = phi i64 [ 0, %for.body178.lr.ph ], [ %indvars.iv.next1077, %for.inc461 ]
  %94 = trunc nuw nsw i64 %indvars.iv1076 to i32
  %95 = lshr i32 %94, 1
  %mul182 = and i32 %95, 1073741822
  %add183 = add nsw i32 %mul182, %mul181
  %add185 = or disjoint i32 %add183, %and184
  %96 = load ptr, ptr %motion, align 8
  %idxprom186 = sext i32 %add185 to i64
  %arrayidx187 = getelementptr inbounds i8, ptr %96, i64 %idxprom186
  %97 = load i8, ptr %arrayidx187, align 1
  %tobool188.not = icmp eq i8 %97, 0
  br i1 %tobool188.not, label %for.inc461, label %if.then189

if.then189:                                       ; preds = %for.body178
  %98 = load ptr, ptr %mv_info, align 8
  %arrayidx191 = getelementptr inbounds ptr, ptr %98, i64 %indvars.iv1079
  %99 = load ptr, ptr %arrayidx191, align 8
  %mv = getelementptr inbounds %struct.pic_motion_params, ptr %99, i64 %indvars.iv1076, i32 1
  %100 = load ptr, ptr %mv_info195, align 8
  %arrayidx197 = getelementptr inbounds ptr, ptr %100, i64 %idxprom196
  %101 = load ptr, ptr %arrayidx197, align 8
  %mv200 = getelementptr inbounds %struct.pic_motion_params, ptr %101, i64 %indvars.iv1076, i32 1
  %102 = load i32, ptr %mv200, align 8
  store i32 %102, ptr %mv, align 8
  %103 = load ptr, ptr %mv_info, align 8
  %arrayidx204 = getelementptr inbounds ptr, ptr %103, i64 %indvars.iv1079
  %104 = load ptr, ptr %arrayidx204, align 8
  %arrayidx208 = getelementptr inbounds %struct.pic_motion_params, ptr %104, i64 %indvars.iv1076, i32 1, i64 1
  %105 = load ptr, ptr %mv_info195, align 8
  %arrayidx211 = getelementptr inbounds ptr, ptr %105, i64 %idxprom196
  %106 = load ptr, ptr %arrayidx211, align 8
  %arrayidx215 = getelementptr inbounds %struct.pic_motion_params, ptr %106, i64 %indvars.iv1076, i32 1, i64 1
  %107 = load i32, ptr %arrayidx215, align 4
  store i32 %107, ptr %arrayidx208, align 4
  %108 = load ptr, ptr %mv_info195, align 8
  %arrayidx218 = getelementptr inbounds ptr, ptr %108, i64 %idxprom196
  %109 = load ptr, ptr %arrayidx218, align 8
  %ref_idx = getelementptr inbounds %struct.pic_motion_params, ptr %109, i64 %indvars.iv1076, i32 2
  %110 = load i8, ptr %ref_idx, align 8
  %111 = load ptr, ptr %mv_info, align 8
  %arrayidx224 = getelementptr inbounds ptr, ptr %111, i64 %indvars.iv1079
  %112 = load ptr, ptr %arrayidx224, align 8
  %ref_idx227 = getelementptr inbounds %struct.pic_motion_params, ptr %112, i64 %indvars.iv1076, i32 2
  store i8 %110, ptr %ref_idx227, align 8
  %113 = load ptr, ptr %mv_info, align 8
  %arrayidx231 = getelementptr inbounds ptr, ptr %113, i64 %indvars.iv1079
  %114 = load ptr, ptr %arrayidx231, align 8
  %arrayidx233 = getelementptr inbounds %struct.pic_motion_params, ptr %114, i64 %indvars.iv1076
  %ref_idx234 = getelementptr inbounds i8, ptr %arrayidx233, i64 24
  %115 = load i8, ptr %ref_idx234, align 8
  %cmp237 = icmp sgt i8 %115, -1
  br i1 %cmp237, label %if.then239, label %if.end266

if.then239:                                       ; preds = %if.then189
  %116 = load ptr, ptr %ppSliceList, align 8
  %117 = load ptr, ptr %116, align 8
  %arrayidx241 = getelementptr inbounds i8, ptr %117, i64 296
  %118 = load ptr, ptr %arrayidx241, align 8
  %idxprom250 = zext nneg i8 %115 to i64
  %arrayidx251 = getelementptr inbounds ptr, ptr %118, i64 %idxprom250
  %119 = load ptr, ptr %arrayidx251, align 8
  br label %if.end266

if.end266:                                        ; preds = %if.then189, %if.then239
  %storemerge = phi ptr [ %119, %if.then239 ], [ null, %if.then189 ]
  store ptr %storemerge, ptr %arrayidx233, align 8
  %120 = load ptr, ptr %mv_info195, align 8
  %arrayidx269 = getelementptr inbounds ptr, ptr %120, i64 %idxprom196
  %121 = load ptr, ptr %arrayidx269, align 8
  %arrayidx273 = getelementptr inbounds %struct.pic_motion_params, ptr %121, i64 %indvars.iv1076, i32 2, i64 1
  %122 = load i8, ptr %arrayidx273, align 1
  %123 = load ptr, ptr %mv_info, align 8
  %arrayidx276 = getelementptr inbounds ptr, ptr %123, i64 %indvars.iv1079
  %124 = load ptr, ptr %arrayidx276, align 8
  %arrayidx280 = getelementptr inbounds %struct.pic_motion_params, ptr %124, i64 %indvars.iv1076, i32 2, i64 1
  store i8 %122, ptr %arrayidx280, align 1
  %125 = load ptr, ptr %mv_info, align 8
  %arrayidx283 = getelementptr inbounds ptr, ptr %125, i64 %indvars.iv1079
  %126 = load ptr, ptr %arrayidx283, align 8
  %arrayidx285 = getelementptr inbounds %struct.pic_motion_params, ptr %126, i64 %indvars.iv1076
  %arrayidx287 = getelementptr inbounds i8, ptr %arrayidx285, i64 25
  %127 = load i8, ptr %arrayidx287, align 1
  %cmp289 = icmp sgt i8 %127, -1
  br i1 %cmp289, label %if.then291, label %if.end321

if.then291:                                       ; preds = %if.end266
  %128 = load ptr, ptr %ppSliceList, align 8
  %129 = load ptr, ptr %128, align 8
  %arrayidx295 = getelementptr inbounds i8, ptr %129, i64 304
  %130 = load ptr, ptr %arrayidx295, align 8
  %idxprom304 = zext nneg i8 %127 to i64
  %arrayidx305 = getelementptr inbounds ptr, ptr %130, i64 %idxprom304
  %131 = load ptr, ptr %arrayidx305, align 8
  br label %if.end321

if.end321:                                        ; preds = %if.end266, %if.then291
  %.sink = phi ptr [ %131, %if.then291 ], [ null, %if.end266 ]
  %132 = getelementptr inbounds i8, ptr %arrayidx285, i64 8
  store ptr %.sink, ptr %132, align 8
  %133 = load ptr, ptr %mv_info322, align 8
  %arrayidx324 = getelementptr inbounds ptr, ptr %133, i64 %indvars.iv1079
  %134 = load ptr, ptr %arrayidx324, align 8
  %mv327 = getelementptr inbounds %struct.pic_motion_params, ptr %134, i64 %indvars.iv1076, i32 1
  %135 = load ptr, ptr %mv_info195, align 8
  %arrayidx331 = getelementptr inbounds ptr, ptr %135, i64 %idxprom330
  %136 = load ptr, ptr %arrayidx331, align 8
  %mv334 = getelementptr inbounds %struct.pic_motion_params, ptr %136, i64 %indvars.iv1076, i32 1
  %137 = load i32, ptr %mv334, align 8
  store i32 %137, ptr %mv327, align 8
  %138 = load ptr, ptr %mv_info322, align 8
  %arrayidx338 = getelementptr inbounds ptr, ptr %138, i64 %indvars.iv1079
  %139 = load ptr, ptr %arrayidx338, align 8
  %arrayidx342 = getelementptr inbounds %struct.pic_motion_params, ptr %139, i64 %indvars.iv1076, i32 1, i64 1
  %140 = load ptr, ptr %mv_info195, align 8
  %arrayidx345 = getelementptr inbounds ptr, ptr %140, i64 %idxprom330
  %141 = load ptr, ptr %arrayidx345, align 8
  %arrayidx349 = getelementptr inbounds %struct.pic_motion_params, ptr %141, i64 %indvars.iv1076, i32 1, i64 1
  %142 = load i32, ptr %arrayidx349, align 4
  store i32 %142, ptr %arrayidx342, align 4
  %143 = load ptr, ptr %mv_info195, align 8
  %arrayidx352 = getelementptr inbounds ptr, ptr %143, i64 %idxprom330
  %144 = load ptr, ptr %arrayidx352, align 8
  %ref_idx355 = getelementptr inbounds %struct.pic_motion_params, ptr %144, i64 %indvars.iv1076, i32 2
  %145 = load i8, ptr %ref_idx355, align 8
  %146 = load ptr, ptr %mv_info322, align 8
  %arrayidx359 = getelementptr inbounds ptr, ptr %146, i64 %indvars.iv1079
  %147 = load ptr, ptr %arrayidx359, align 8
  %ref_idx362 = getelementptr inbounds %struct.pic_motion_params, ptr %147, i64 %indvars.iv1076, i32 2
  store i8 %145, ptr %ref_idx362, align 8
  %148 = load ptr, ptr %mv_info322, align 8
  %arrayidx366 = getelementptr inbounds ptr, ptr %148, i64 %indvars.iv1079
  %149 = load ptr, ptr %arrayidx366, align 8
  %arrayidx368 = getelementptr inbounds %struct.pic_motion_params, ptr %149, i64 %indvars.iv1076
  %ref_idx369 = getelementptr inbounds i8, ptr %arrayidx368, i64 24
  %150 = load i8, ptr %ref_idx369, align 8
  %cmp372 = icmp sgt i8 %150, -1
  br i1 %cmp372, label %if.then374, label %if.end404

if.then374:                                       ; preds = %if.end321
  %151 = load ptr, ptr %ppSliceList, align 8
  %152 = load ptr, ptr %151, align 8
  %arrayidx378 = getelementptr inbounds i8, ptr %152, i64 280
  %153 = load ptr, ptr %arrayidx378, align 8
  %idxprom387 = zext nneg i8 %150 to i64
  %arrayidx388 = getelementptr inbounds ptr, ptr %153, i64 %idxprom387
  %154 = load ptr, ptr %arrayidx388, align 8
  br label %if.end404

if.end404:                                        ; preds = %if.end321, %if.then374
  %storemerge1031 = phi ptr [ %154, %if.then374 ], [ null, %if.end321 ]
  store ptr %storemerge1031, ptr %arrayidx368, align 8
  %155 = load ptr, ptr %mv_info195, align 8
  %arrayidx407 = getelementptr inbounds ptr, ptr %155, i64 %idxprom330
  %156 = load ptr, ptr %arrayidx407, align 8
  %arrayidx411 = getelementptr inbounds %struct.pic_motion_params, ptr %156, i64 %indvars.iv1076, i32 2, i64 1
  %157 = load i8, ptr %arrayidx411, align 1
  %158 = load ptr, ptr %mv_info322, align 8
  %arrayidx414 = getelementptr inbounds ptr, ptr %158, i64 %indvars.iv1079
  %159 = load ptr, ptr %arrayidx414, align 8
  %arrayidx418 = getelementptr inbounds %struct.pic_motion_params, ptr %159, i64 %indvars.iv1076, i32 2, i64 1
  store i8 %157, ptr %arrayidx418, align 1
  %160 = load ptr, ptr %mv_info322, align 8
  %arrayidx421 = getelementptr inbounds ptr, ptr %160, i64 %indvars.iv1079
  %161 = load ptr, ptr %arrayidx421, align 8
  %arrayidx423 = getelementptr inbounds %struct.pic_motion_params, ptr %161, i64 %indvars.iv1076
  %arrayidx425 = getelementptr inbounds i8, ptr %arrayidx423, i64 25
  %162 = load i8, ptr %arrayidx425, align 1
  %cmp427 = icmp sgt i8 %162, -1
  br i1 %cmp427, label %if.then429, label %for.inc461.sink.split

if.then429:                                       ; preds = %if.end404
  %163 = load ptr, ptr %ppSliceList, align 8
  %164 = load ptr, ptr %163, align 8
  %arrayidx433 = getelementptr inbounds i8, ptr %164, i64 288
  %165 = load ptr, ptr %arrayidx433, align 8
  %idxprom442 = zext nneg i8 %162 to i64
  %arrayidx443 = getelementptr inbounds ptr, ptr %165, i64 %idxprom442
  %166 = load ptr, ptr %arrayidx443, align 8
  br label %for.inc461.sink.split

for.inc461.sink.split:                            ; preds = %if.end404, %if.then429
  %.sink1100 = phi ptr [ %166, %if.then429 ], [ null, %if.end404 ]
  %arrayidx458 = getelementptr inbounds i8, ptr %arrayidx423, i64 8
  store ptr %.sink1100, ptr %arrayidx458, align 8
  br label %for.inc461

for.inc461:                                       ; preds = %for.inc461.sink.split, %for.body178
  %indvars.iv.next1077 = add nuw nsw i64 %indvars.iv1076, 1
  %167 = load i32, ptr %size_x, align 8
  %shr175 = ashr i32 %167, 2
  %168 = sext i32 %shr175 to i64
  %cmp176 = icmp slt i64 %indvars.iv.next1077, %168
  br i1 %cmp176, label %for.body178, label %for.inc464.loopexit

for.inc464.loopexit:                              ; preds = %for.inc461
  %.pre1090 = load i32, ptr %size_y163, align 4
  br label %for.inc464

for.inc464:                                       ; preds = %for.inc464.loopexit, %for.body167
  %169 = phi i32 [ %.pre1090, %for.inc464.loopexit ], [ %90, %for.body167 ]
  %170 = phi i32 [ %167, %for.inc464.loopexit ], [ %91, %for.body167 ]
  %indvars.iv.next1080 = add nuw nsw i64 %indvars.iv1079, 1
  %shr164 = ashr i32 %169, 3
  %171 = sext i32 %shr164 to i64
  %cmp165 = icmp slt i64 %indvars.iv.next1080, %171
  br i1 %cmp165, label %for.body167, label %if.end467

if.end467:                                        ; preds = %for.inc464, %if.then158.if.end467_crit_edge
  %172 = phi i32 [ %.pre1091, %if.then158.if.end467_crit_edge ], [ %169, %for.inc464 ]
  %size_y469 = getelementptr inbounds i8, ptr %0, i64 68
  %cmp4711058 = icmp sgt i32 %172, 7
  br i1 %cmp4711058, label %for.body473.lr.ph, label %if.end702

for.body473.lr.ph:                                ; preds = %if.end467
  %motion493 = getelementptr inbounds i8, ptr %0, i64 184
  %mv_info499 = getelementptr inbounds i8, ptr %fs_top.0, i64 152
  %mv_info506 = getelementptr inbounds i8, ptr %fs_btm.0, i64 152
  %mv_info513 = getelementptr inbounds i8, ptr %0, i64 152
  %ppSliceList588 = getelementptr inbounds i8, ptr %p_Vid, i64 848736
  %.pre1092 = load i32, ptr %size_x, align 8
  br label %for.body473

for.body473:                                      ; preds = %for.body473.lr.ph, %for.inc698
  %173 = phi i32 [ %172, %for.body473.lr.ph ], [ %236, %for.inc698 ]
  %174 = phi i32 [ %.pre1092, %for.body473.lr.ph ], [ %237, %for.inc698 ]
  %indvars.iv1085 = phi i64 [ 0, %for.body473.lr.ph ], [ %indvars.iv.next1086, %for.inc698 ]
  %175 = trunc nuw nsw i64 %indvars.iv1085 to i32
  %and.i = lshr i32 %175, 1
  %and.lobit.i = and i32 %and.i, 1
  %cmp4801055 = icmp sgt i32 %174, 3
  br i1 %cmp4801055, label %for.body482.lr.ph, label %for.inc698

for.body482.lr.ph:                                ; preds = %for.body473
  %and1.i = and i32 %175, 2147483646
  %cond.i = or disjoint i32 %and.lobit.i, %and1.i
  %mul475 = shl nuw nsw i32 %cond.i, 1
  %shr485 = lshr i32 %175, 2
  %mul486 = mul nsw i32 %shr485, %mul
  %idxprom514 = zext nneg i32 %mul475 to i64
  br label %for.body482

for.body482:                                      ; preds = %for.body482.lr.ph, %for.inc695
  %indvars.iv1082 = phi i64 [ 0, %for.body482.lr.ph ], [ %indvars.iv.next1083, %for.inc695 ]
  %176 = trunc nuw nsw i64 %indvars.iv1082 to i32
  %and1.i1032 = and i32 %176, 2147483646
  %and.i1033 = lshr i32 %176, 1
  %and.lobit.i1034 = and i32 %and.i1033, 1
  %cond.i1035 = or disjoint i32 %and.lobit.i1034, %and1.i1032
  %177 = load i32, ptr %mb_aff_frame_flag159, align 4
  %tobool492.not = icmp eq i32 %177, 0
  br i1 %tobool492.not, label %if.then498, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body482
  %mul487 = and i32 %and.i1033, 1073741822
  %add488 = add nsw i32 %mul487, %mul486
  %add490 = or disjoint i32 %add488, %and.lobit.i
  %178 = load ptr, ptr %motion493, align 8
  %idxprom495 = sext i32 %add490 to i64
  %arrayidx496 = getelementptr inbounds i8, ptr %178, i64 %idxprom495
  %179 = load i8, ptr %arrayidx496, align 1
  %tobool497.not = icmp eq i8 %179, 0
  br i1 %tobool497.not, label %if.then498, label %for.inc695

if.then498:                                       ; preds = %lor.lhs.false, %for.body482
  %180 = load ptr, ptr %mv_info499, align 8
  %arrayidx501 = getelementptr inbounds ptr, ptr %180, i64 %indvars.iv1085
  %181 = load ptr, ptr %arrayidx501, align 8
  %mv504 = getelementptr inbounds %struct.pic_motion_params, ptr %181, i64 %indvars.iv1082, i32 1
  %182 = load ptr, ptr %mv_info506, align 8
  %arrayidx508 = getelementptr inbounds ptr, ptr %182, i64 %indvars.iv1085
  %183 = load ptr, ptr %arrayidx508, align 8
  %mv511 = getelementptr inbounds %struct.pic_motion_params, ptr %183, i64 %indvars.iv1082, i32 1
  %184 = load ptr, ptr %mv_info513, align 8
  %arrayidx515 = getelementptr inbounds ptr, ptr %184, i64 %idxprom514
  %185 = load ptr, ptr %arrayidx515, align 8
  %idxprom516 = zext nneg i32 %cond.i1035 to i64
  %mv518 = getelementptr inbounds %struct.pic_motion_params, ptr %185, i64 %idxprom516, i32 1
  %186 = load i32, ptr %mv518, align 8
  store i32 %186, ptr %mv511, align 8
  store i32 %186, ptr %mv504, align 8
  %187 = load ptr, ptr %mv_info499, align 8
  %arrayidx522 = getelementptr inbounds ptr, ptr %187, i64 %indvars.iv1085
  %188 = load ptr, ptr %arrayidx522, align 8
  %arrayidx526 = getelementptr inbounds %struct.pic_motion_params, ptr %188, i64 %indvars.iv1082, i32 1, i64 1
  %189 = load ptr, ptr %mv_info506, align 8
  %arrayidx529 = getelementptr inbounds ptr, ptr %189, i64 %indvars.iv1085
  %190 = load ptr, ptr %arrayidx529, align 8
  %arrayidx533 = getelementptr inbounds %struct.pic_motion_params, ptr %190, i64 %indvars.iv1082, i32 1, i64 1
  %191 = load ptr, ptr %mv_info513, align 8
  %arrayidx536 = getelementptr inbounds ptr, ptr %191, i64 %idxprom514
  %192 = load ptr, ptr %arrayidx536, align 8
  %arrayidx540 = getelementptr inbounds %struct.pic_motion_params, ptr %192, i64 %idxprom516, i32 1, i64 1
  %193 = load i32, ptr %arrayidx540, align 4
  store i32 %193, ptr %arrayidx533, align 4
  store i32 %193, ptr %arrayidx526, align 4
  %194 = load ptr, ptr %mv_info513, align 8
  %arrayidx543 = getelementptr inbounds ptr, ptr %194, i64 %idxprom514
  %195 = load ptr, ptr %arrayidx543, align 8
  %ref_idx546 = getelementptr inbounds %struct.pic_motion_params, ptr %195, i64 %idxprom516, i32 2
  %196 = load i8, ptr %ref_idx546, align 8
  %cmp549 = icmp eq i8 %196, -1
  %197 = load ptr, ptr %mv_info506, align 8
  %arrayidx554 = getelementptr inbounds ptr, ptr %197, i64 %indvars.iv1085
  %198 = load ptr, ptr %arrayidx554, align 8
  %ref_idx557 = getelementptr inbounds %struct.pic_motion_params, ptr %198, i64 %indvars.iv1082, i32 2
  br i1 %cmp549, label %if.then551, label %if.else566

if.then551:                                       ; preds = %if.then498
  store i8 -1, ptr %ref_idx557, align 8
  %199 = load ptr, ptr %mv_info499, align 8
  %arrayidx561 = getelementptr inbounds ptr, ptr %199, i64 %indvars.iv1085
  %200 = load ptr, ptr %arrayidx561, align 8
  %ref_idx564 = getelementptr inbounds %struct.pic_motion_params, ptr %200, i64 %indvars.iv1082, i32 2
  store i8 -1, ptr %ref_idx564, align 8
  br label %if.end616

if.else566:                                       ; preds = %if.then498
  store i8 %196, ptr %ref_idx557, align 8
  %201 = load ptr, ptr %mv_info499, align 8
  %arrayidx583 = getelementptr inbounds ptr, ptr %201, i64 %indvars.iv1085
  %202 = load ptr, ptr %arrayidx583, align 8
  %ref_idx586 = getelementptr inbounds %struct.pic_motion_params, ptr %202, i64 %indvars.iv1082, i32 2
  store i8 %196, ptr %ref_idx586, align 8
  %203 = load ptr, ptr %ppSliceList588, align 8
  %204 = load ptr, ptr %203, align 8
  %listX590 = getelementptr inbounds i8, ptr %204, i64 264
  %205 = load ptr, ptr %listX590, align 8
  %206 = load ptr, ptr %mv_info513, align 8
  %arrayidx594 = getelementptr inbounds ptr, ptr %206, i64 %idxprom514
  %207 = load ptr, ptr %arrayidx594, align 8
  %ref_idx597 = getelementptr inbounds %struct.pic_motion_params, ptr %207, i64 %idxprom516, i32 2
  %208 = load i8, ptr %ref_idx597, align 8
  %idxprom600 = sext i8 %208 to i64
  %arrayidx601 = getelementptr inbounds ptr, ptr %205, i64 %idxprom600
  %209 = load ptr, ptr %arrayidx601, align 8
  %210 = load ptr, ptr %mv_info506, align 8
  %arrayidx604 = getelementptr inbounds ptr, ptr %210, i64 %indvars.iv1085
  %211 = load ptr, ptr %arrayidx604, align 8
  %arrayidx606 = getelementptr inbounds %struct.pic_motion_params, ptr %211, i64 %indvars.iv1082
  store ptr %209, ptr %arrayidx606, align 8
  %212 = load ptr, ptr %mv_info499, align 8
  %arrayidx611 = getelementptr inbounds ptr, ptr %212, i64 %indvars.iv1085
  %213 = load ptr, ptr %arrayidx611, align 8
  %arrayidx613 = getelementptr inbounds %struct.pic_motion_params, ptr %213, i64 %indvars.iv1082
  store ptr %209, ptr %arrayidx613, align 8
  br label %if.end616

if.end616:                                        ; preds = %if.else566, %if.then551
  %214 = load ptr, ptr %mv_info513, align 8
  %arrayidx619 = getelementptr inbounds ptr, ptr %214, i64 %idxprom514
  %215 = load ptr, ptr %arrayidx619, align 8
  %arrayidx623 = getelementptr inbounds %struct.pic_motion_params, ptr %215, i64 %idxprom516, i32 2, i64 1
  %216 = load i8, ptr %arrayidx623, align 1
  %cmp625 = icmp eq i8 %216, -1
  %217 = load ptr, ptr %mv_info506, align 8
  %arrayidx630 = getelementptr inbounds ptr, ptr %217, i64 %indvars.iv1085
  %218 = load ptr, ptr %arrayidx630, align 8
  %arrayidx634 = getelementptr inbounds %struct.pic_motion_params, ptr %218, i64 %indvars.iv1082, i32 2, i64 1
  br i1 %cmp625, label %if.then627, label %if.else642

if.then627:                                       ; preds = %if.end616
  store i8 -1, ptr %arrayidx634, align 1
  %219 = load ptr, ptr %mv_info499, align 8
  %arrayidx637 = getelementptr inbounds ptr, ptr %219, i64 %indvars.iv1085
  %220 = load ptr, ptr %arrayidx637, align 8
  %arrayidx641 = getelementptr inbounds %struct.pic_motion_params, ptr %220, i64 %indvars.iv1082, i32 2, i64 1
  store i8 -1, ptr %arrayidx641, align 1
  br label %for.inc695

if.else642:                                       ; preds = %if.end616
  store i8 %216, ptr %arrayidx634, align 1
  %221 = load ptr, ptr %mv_info499, align 8
  %arrayidx659 = getelementptr inbounds ptr, ptr %221, i64 %indvars.iv1085
  %222 = load ptr, ptr %arrayidx659, align 8
  %arrayidx663 = getelementptr inbounds %struct.pic_motion_params, ptr %222, i64 %indvars.iv1082, i32 2, i64 1
  store i8 %216, ptr %arrayidx663, align 1
  %223 = load ptr, ptr %ppSliceList588, align 8
  %224 = load ptr, ptr %223, align 8
  %arrayidx667 = getelementptr inbounds i8, ptr %224, i64 272
  %225 = load ptr, ptr %arrayidx667, align 8
  %226 = load ptr, ptr %mv_info513, align 8
  %arrayidx670 = getelementptr inbounds ptr, ptr %226, i64 %idxprom514
  %227 = load ptr, ptr %arrayidx670, align 8
  %arrayidx674 = getelementptr inbounds %struct.pic_motion_params, ptr %227, i64 %idxprom516, i32 2, i64 1
  %228 = load i8, ptr %arrayidx674, align 1
  %idxprom676 = sext i8 %228 to i64
  %arrayidx677 = getelementptr inbounds ptr, ptr %225, i64 %idxprom676
  %229 = load ptr, ptr %arrayidx677, align 8
  %230 = load ptr, ptr %mv_info506, align 8
  %arrayidx680 = getelementptr inbounds ptr, ptr %230, i64 %indvars.iv1085
  %231 = load ptr, ptr %arrayidx680, align 8
  %arrayidx684 = getelementptr inbounds %struct.pic_motion_params, ptr %231, i64 %indvars.iv1082, i32 0, i64 1
  store ptr %229, ptr %arrayidx684, align 8
  %232 = load ptr, ptr %mv_info499, align 8
  %arrayidx687 = getelementptr inbounds ptr, ptr %232, i64 %indvars.iv1085
  %233 = load ptr, ptr %arrayidx687, align 8
  %arrayidx691 = getelementptr inbounds %struct.pic_motion_params, ptr %233, i64 %indvars.iv1082, i32 0, i64 1
  store ptr %229, ptr %arrayidx691, align 8
  br label %for.inc695

for.inc695:                                       ; preds = %if.else642, %if.then627, %lor.lhs.false
  %indvars.iv.next1083 = add nuw nsw i64 %indvars.iv1082, 1
  %234 = load i32, ptr %size_x, align 8
  %shr479 = ashr i32 %234, 2
  %235 = sext i32 %shr479 to i64
  %cmp480 = icmp slt i64 %indvars.iv.next1083, %235
  br i1 %cmp480, label %for.body482, label %for.inc698.loopexit

for.inc698.loopexit:                              ; preds = %for.inc695
  %.pre1093 = load i32, ptr %size_y469, align 4
  br label %for.inc698

for.inc698:                                       ; preds = %for.inc698.loopexit, %for.body473
  %236 = phi i32 [ %.pre1093, %for.inc698.loopexit ], [ %173, %for.body473 ]
  %237 = phi i32 [ %234, %for.inc698.loopexit ], [ %174, %for.body473 ]
  %indvars.iv.next1086 = add nuw nsw i64 %indvars.iv1085, 1
  %shr470 = ashr i32 %236, 3
  %238 = sext i32 %shr470 to i64
  %cmp471 = icmp slt i64 %indvars.iv.next1086, %238
  br i1 %cmp471, label %for.body473, label %if.end702

if.end702:                                        ; preds = %for.inc698, %if.then161, %if.end467, %if.end155
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #15

declare void @pad_dec_picture(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @dpb_combine_field_yuv(ptr noundef %p_Vid, ptr nocapture noundef %fs) local_unnamed_addr #1 {
entry:
  %frame = getelementptr inbounds i8, ptr %fs, i64 48
  %0 = load ptr, ptr %frame, align 8
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.then, label %if.end

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
  %mul4 = shl nsw i32 %5, 1
  %call = tail call ptr @alloc_storable_picture(ptr noundef %p_Vid, i32 noundef 0, i32 noundef %2, i32 noundef %mul, i32 noundef %4, i32 noundef %mul4)
  store ptr %call, ptr %frame, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %top_field6 = getelementptr inbounds i8, ptr %fs, i64 56
  %6 = load ptr, ptr %top_field6, align 8
  %size_y7282 = getelementptr inbounds i8, ptr %6, i64 68
  %7 = load i32, ptr %size_y7282, align 4
  %cmp283 = icmp sgt i32 %7, 0
  br i1 %cmp283, label %for.body.lr.ph, label %for.cond29.preheader

for.body.lr.ph:                                   ; preds = %if.end
  %bottom_field = getelementptr inbounds i8, ptr %fs, i64 64
  br label %for.body

for.cond29.preheader:                             ; preds = %for.body, %if.end
  %8 = phi ptr [ %6, %if.end ], [ %28, %for.body ]
  %bottom_field63 = getelementptr inbounds i8, ptr %fs, i64 64
  %9 = getelementptr inbounds i8, ptr %8, i64 76
  %10 = load i32, ptr %9, align 4
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %for.body38, label %for.end78

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %12 = phi ptr [ %6, %for.body.lr.ph ], [ %28, %for.body ]
  %13 = load ptr, ptr %frame, align 8
  %imgY = getelementptr inbounds i8, ptr %13, i64 128
  %14 = load ptr, ptr %imgY, align 8
  %15 = shl nuw nsw i64 %indvars.iv, 1
  %arrayidx = getelementptr inbounds ptr, ptr %14, i64 %15
  %16 = load ptr, ptr %arrayidx, align 8
  %imgY11 = getelementptr inbounds i8, ptr %12, i64 128
  %17 = load ptr, ptr %imgY11, align 8
  %arrayidx13 = getelementptr inbounds ptr, ptr %17, i64 %indvars.iv
  %18 = load ptr, ptr %arrayidx13, align 8
  %size_x15 = getelementptr inbounds i8, ptr %12, i64 64
  %19 = load i32, ptr %size_x15, align 8
  %conv = sext i32 %19 to i64
  %mul16 = shl nsw i64 %conv, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %16, ptr align 2 %18, i64 %mul16, i1 false)
  %20 = load ptr, ptr %frame, align 8
  %imgY18 = getelementptr inbounds i8, ptr %20, i64 128
  %21 = load ptr, ptr %imgY18, align 8
  %22 = or disjoint i64 %15, 1
  %arrayidx21 = getelementptr inbounds ptr, ptr %21, i64 %22
  %23 = load ptr, ptr %arrayidx21, align 8
  %24 = load ptr, ptr %bottom_field, align 8
  %imgY22 = getelementptr inbounds i8, ptr %24, i64 128
  %25 = load ptr, ptr %imgY22, align 8
  %arrayidx24 = getelementptr inbounds ptr, ptr %25, i64 %indvars.iv
  %26 = load ptr, ptr %arrayidx24, align 8
  %size_x26 = getelementptr inbounds i8, ptr %24, i64 64
  %27 = load i32, ptr %size_x26, align 8
  %conv27 = sext i32 %27 to i64
  %mul28 = shl nsw i64 %conv27, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %23, ptr align 2 %26, i64 %mul28, i1 false)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %28 = load ptr, ptr %top_field6, align 8
  %size_y7 = getelementptr inbounds i8, ptr %28, i64 68
  %29 = load i32, ptr %size_y7, align 4
  %30 = sext i32 %29 to i64
  %cmp = icmp slt i64 %indvars.iv.next, %30
  br i1 %cmp, label %for.body, label %for.cond29.preheader

for.body38:                                       ; preds = %for.cond29.preheader, %for.body38
  %indvars.iv293 = phi i64 [ %indvars.iv.next294, %for.body38 ], [ 0, %for.cond29.preheader ]
  %31 = phi ptr [ %51, %for.body38 ], [ %8, %for.cond29.preheader ]
  %32 = load ptr, ptr %frame, align 8
  %imgUV = getelementptr inbounds i8, ptr %32, i64 136
  %33 = load ptr, ptr %imgUV, align 8
  %34 = load ptr, ptr %33, align 8
  %35 = shl nuw nsw i64 %indvars.iv293, 1
  %arrayidx44 = getelementptr inbounds ptr, ptr %34, i64 %35
  %36 = load ptr, ptr %arrayidx44, align 8
  %imgUV46 = getelementptr inbounds i8, ptr %31, i64 136
  %37 = load ptr, ptr %imgUV46, align 8
  %38 = load ptr, ptr %37, align 8
  %arrayidx50 = getelementptr inbounds ptr, ptr %38, i64 %indvars.iv293
  %39 = load ptr, ptr %arrayidx50, align 8
  %size_x_cr52 = getelementptr inbounds i8, ptr %31, i64 72
  %40 = load i32, ptr %size_x_cr52, align 8
  %conv53 = sext i32 %40 to i64
  %mul54 = shl nsw i64 %conv53, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %36, ptr align 2 %39, i64 %mul54, i1 false)
  %41 = load ptr, ptr %frame, align 8
  %imgUV56 = getelementptr inbounds i8, ptr %41, i64 136
  %42 = load ptr, ptr %imgUV56, align 8
  %43 = load ptr, ptr %42, align 8
  %44 = or disjoint i64 %35, 1
  %arrayidx62 = getelementptr inbounds ptr, ptr %43, i64 %44
  %45 = load ptr, ptr %arrayidx62, align 8
  %46 = load ptr, ptr %bottom_field63, align 8
  %imgUV64 = getelementptr inbounds i8, ptr %46, i64 136
  %47 = load ptr, ptr %imgUV64, align 8
  %48 = load ptr, ptr %47, align 8
  %arrayidx68 = getelementptr inbounds ptr, ptr %48, i64 %indvars.iv293
  %49 = load ptr, ptr %arrayidx68, align 8
  %size_x_cr70 = getelementptr inbounds i8, ptr %46, i64 72
  %50 = load i32, ptr %size_x_cr70, align 8
  %conv71 = sext i32 %50 to i64
  %mul72 = shl nsw i64 %conv71, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %45, ptr align 2 %49, i64 %mul72, i1 false)
  %indvars.iv.next294 = add nuw nsw i64 %indvars.iv293, 1
  %51 = load ptr, ptr %top_field6, align 8
  %size_y_cr35 = getelementptr inbounds i8, ptr %51, i64 76
  %52 = load i32, ptr %size_y_cr35, align 4
  %53 = sext i32 %52 to i64
  %cmp36 = icmp slt i64 %indvars.iv.next294, %53
  br i1 %cmp36, label %for.body38, label %for.inc76

for.inc76:                                        ; preds = %for.body38
  %cmp36286.1 = icmp sgt i32 %52, 0
  br i1 %cmp36286.1, label %for.body38.1, label %for.end78

for.body38.1:                                     ; preds = %for.inc76, %for.body38.1
  %indvars.iv293.1 = phi i64 [ %indvars.iv.next294.1, %for.body38.1 ], [ 0, %for.inc76 ]
  %54 = phi ptr [ %74, %for.body38.1 ], [ %51, %for.inc76 ]
  %55 = load ptr, ptr %frame, align 8
  %imgUV.1 = getelementptr inbounds i8, ptr %55, i64 136
  %56 = load ptr, ptr %imgUV.1, align 8
  %arrayidx41.1 = getelementptr inbounds i8, ptr %56, i64 8
  %57 = load ptr, ptr %arrayidx41.1, align 8
  %58 = shl nuw nsw i64 %indvars.iv293.1, 1
  %arrayidx44.1 = getelementptr inbounds ptr, ptr %57, i64 %58
  %59 = load ptr, ptr %arrayidx44.1, align 8
  %imgUV46.1 = getelementptr inbounds i8, ptr %54, i64 136
  %60 = load ptr, ptr %imgUV46.1, align 8
  %arrayidx48.1 = getelementptr inbounds i8, ptr %60, i64 8
  %61 = load ptr, ptr %arrayidx48.1, align 8
  %arrayidx50.1 = getelementptr inbounds ptr, ptr %61, i64 %indvars.iv293.1
  %62 = load ptr, ptr %arrayidx50.1, align 8
  %size_x_cr52.1 = getelementptr inbounds i8, ptr %54, i64 72
  %63 = load i32, ptr %size_x_cr52.1, align 8
  %conv53.1 = sext i32 %63 to i64
  %mul54.1 = shl nsw i64 %conv53.1, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %59, ptr align 2 %62, i64 %mul54.1, i1 false)
  %64 = load ptr, ptr %frame, align 8
  %imgUV56.1 = getelementptr inbounds i8, ptr %64, i64 136
  %65 = load ptr, ptr %imgUV56.1, align 8
  %arrayidx58.1 = getelementptr inbounds i8, ptr %65, i64 8
  %66 = load ptr, ptr %arrayidx58.1, align 8
  %67 = or disjoint i64 %58, 1
  %arrayidx62.1 = getelementptr inbounds ptr, ptr %66, i64 %67
  %68 = load ptr, ptr %arrayidx62.1, align 8
  %69 = load ptr, ptr %bottom_field63, align 8
  %imgUV64.1 = getelementptr inbounds i8, ptr %69, i64 136
  %70 = load ptr, ptr %imgUV64.1, align 8
  %arrayidx66.1 = getelementptr inbounds i8, ptr %70, i64 8
  %71 = load ptr, ptr %arrayidx66.1, align 8
  %arrayidx68.1 = getelementptr inbounds ptr, ptr %71, i64 %indvars.iv293.1
  %72 = load ptr, ptr %arrayidx68.1, align 8
  %size_x_cr70.1 = getelementptr inbounds i8, ptr %69, i64 72
  %73 = load i32, ptr %size_x_cr70.1, align 8
  %conv71.1 = sext i32 %73 to i64
  %mul72.1 = shl nsw i64 %conv71.1, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %68, ptr align 2 %72, i64 %mul72.1, i1 false)
  %indvars.iv.next294.1 = add nuw nsw i64 %indvars.iv293.1, 1
  %74 = load ptr, ptr %top_field6, align 8
  %size_y_cr35.1 = getelementptr inbounds i8, ptr %74, i64 76
  %75 = load i32, ptr %size_y_cr35.1, align 4
  %76 = sext i32 %75 to i64
  %cmp36.1 = icmp slt i64 %indvars.iv.next294.1, %76
  br i1 %cmp36.1, label %for.body38.1, label %for.end78

for.end78:                                        ; preds = %for.body38.1, %for.inc76, %for.cond29.preheader
  %77 = phi ptr [ %8, %for.cond29.preheader ], [ %51, %for.inc76 ], [ %74, %for.body38.1 ]
  %poc = getelementptr inbounds i8, ptr %77, i64 4
  %78 = load i32, ptr %poc, align 4
  %79 = load ptr, ptr %bottom_field63, align 8
  %poc81 = getelementptr inbounds i8, ptr %79, i64 4
  %80 = load i32, ptr %poc81, align 4
  %cond.i = tail call noundef i32 @llvm.smin.i32(i32 %78, i32 %80)
  %81 = load ptr, ptr %frame, align 8
  %frame_poc = getelementptr inbounds i8, ptr %81, i64 16
  store i32 %cond.i, ptr %frame_poc, align 8
  %82 = load ptr, ptr %frame, align 8
  %poc85 = getelementptr inbounds i8, ptr %82, i64 4
  store i32 %cond.i, ptr %poc85, align 4
  %poc86 = getelementptr inbounds i8, ptr %fs, i64 40
  store i32 %cond.i, ptr %poc86, align 8
  %83 = load ptr, ptr %frame, align 8
  %poc88 = getelementptr inbounds i8, ptr %83, i64 4
  %84 = load i32, ptr %poc88, align 4
  %85 = load ptr, ptr %top_field6, align 8
  %frame_poc90 = getelementptr inbounds i8, ptr %85, i64 16
  store i32 %84, ptr %frame_poc90, align 8
  %86 = load ptr, ptr %bottom_field63, align 8
  %frame_poc92 = getelementptr inbounds i8, ptr %86, i64 16
  store i32 %84, ptr %frame_poc92, align 8
  %87 = load ptr, ptr %top_field6, align 8
  %poc94 = getelementptr inbounds i8, ptr %87, i64 4
  %88 = load i32, ptr %poc94, align 4
  %89 = load ptr, ptr %frame, align 8
  %top_poc = getelementptr inbounds i8, ptr %89, i64 8
  store i32 %88, ptr %top_poc, align 8
  %90 = load ptr, ptr %bottom_field63, align 8
  %top_poc97 = getelementptr inbounds i8, ptr %90, i64 8
  store i32 %88, ptr %top_poc97, align 8
  %91 = load ptr, ptr %bottom_field63, align 8
  %poc99 = getelementptr inbounds i8, ptr %91, i64 4
  %92 = load i32, ptr %poc99, align 4
  %93 = load ptr, ptr %frame, align 8
  %bottom_poc = getelementptr inbounds i8, ptr %93, i64 12
  store i32 %92, ptr %bottom_poc, align 4
  %94 = load ptr, ptr %top_field6, align 8
  %bottom_poc102 = getelementptr inbounds i8, ptr %94, i64 12
  store i32 %92, ptr %bottom_poc102, align 4
  %95 = load ptr, ptr %top_field6, align 8
  %used_for_reference = getelementptr inbounds i8, ptr %95, i64 44
  %96 = load i32, ptr %used_for_reference, align 4
  %tobool104.not = icmp eq i32 %96, 0
  br i1 %tobool104.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %for.end78
  %97 = load ptr, ptr %bottom_field63, align 8
  %used_for_reference106 = getelementptr inbounds i8, ptr %97, i64 44
  %98 = load i32, ptr %used_for_reference106, align 4
  %tobool107 = icmp ne i32 %98, 0
  %99 = zext i1 %tobool107 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.end78
  %land.ext = phi i32 [ 0, %for.end78 ], [ %99, %land.rhs ]
  %100 = load ptr, ptr %frame, align 8
  %used_for_reference109 = getelementptr inbounds i8, ptr %100, i64 44
  store i32 %land.ext, ptr %used_for_reference109, align 4
  %101 = load ptr, ptr %top_field6, align 8
  %is_long_term = getelementptr inbounds i8, ptr %101, i64 40
  %102 = load i8, ptr %is_long_term, align 8
  %tobool112.not = icmp eq i8 %102, 0
  br i1 %tobool112.not, label %land.end118, label %land.rhs113

land.rhs113:                                      ; preds = %land.end
  %103 = load ptr, ptr %bottom_field63, align 8
  %is_long_term115 = getelementptr inbounds i8, ptr %103, i64 40
  %104 = load i8, ptr %is_long_term115, align 8
  %tobool117 = icmp ne i8 %104, 0
  %105 = zext i1 %tobool117 to i8
  br label %land.end118

land.end118:                                      ; preds = %land.rhs113, %land.end
  %conv120 = phi i8 [ 0, %land.end ], [ %105, %land.rhs113 ]
  %106 = load ptr, ptr %frame, align 8
  %is_long_term122 = getelementptr inbounds i8, ptr %106, i64 40
  store i8 %conv120, ptr %is_long_term122, align 8
  %107 = load ptr, ptr %frame, align 8
  %is_long_term124 = getelementptr inbounds i8, ptr %107, i64 40
  %108 = load i8, ptr %is_long_term124, align 8
  %tobool125.not = icmp eq i8 %108, 0
  br i1 %tobool125.not, label %if.end129, label %if.then126

if.then126:                                       ; preds = %land.end118
  %long_term_frame_idx = getelementptr inbounds i8, ptr %fs, i64 32
  %109 = load i32, ptr %long_term_frame_idx, align 8
  %long_term_frame_idx128 = getelementptr inbounds i8, ptr %107, i64 36
  store i32 %109, ptr %long_term_frame_idx128, align 4
  %.pre = load ptr, ptr %frame, align 8
  br label %if.end129

if.end129:                                        ; preds = %if.then126, %land.end118
  %110 = phi ptr [ %.pre, %if.then126 ], [ %107, %land.end118 ]
  %111 = load ptr, ptr %top_field6, align 8
  %top_field132 = getelementptr inbounds i8, ptr %110, i64 224
  store ptr %111, ptr %top_field132, align 8
  %112 = load ptr, ptr %bottom_field63, align 8
  %113 = load ptr, ptr %frame, align 8
  %bottom_field135 = getelementptr inbounds i8, ptr %113, i64 232
  store ptr %112, ptr %bottom_field135, align 8
  %114 = load ptr, ptr %frame, align 8
  %frame138 = getelementptr inbounds i8, ptr %114, i64 240
  store ptr %114, ptr %frame138, align 8
  %coded_frame = getelementptr inbounds i8, ptr %114, i64 96
  store i32 0, ptr %coded_frame, align 8
  %115 = load ptr, ptr %top_field6, align 8
  %chroma_format_idc = getelementptr inbounds i8, ptr %115, i64 268
  %116 = load i32, ptr %chroma_format_idc, align 4
  %117 = load ptr, ptr %frame, align 8
  %chroma_format_idc142 = getelementptr inbounds i8, ptr %117, i64 268
  store i32 %116, ptr %chroma_format_idc142, align 4
  %118 = load ptr, ptr %top_field6, align 8
  %frame_cropping_flag = getelementptr inbounds i8, ptr %118, i64 276
  %119 = load i32, ptr %frame_cropping_flag, align 4
  %120 = load ptr, ptr %frame, align 8
  %frame_cropping_flag145 = getelementptr inbounds i8, ptr %120, i64 276
  store i32 %119, ptr %frame_cropping_flag145, align 4
  %121 = load ptr, ptr %frame, align 8
  %frame_cropping_flag147 = getelementptr inbounds i8, ptr %121, i64 276
  %122 = load i32, ptr %frame_cropping_flag147, align 4
  %tobool148.not = icmp eq i32 %122, 0
  br i1 %tobool148.not, label %if.end162, label %if.then149

if.then149:                                       ; preds = %if.end129
  %123 = load ptr, ptr %top_field6, align 8
  %frame_cropping_rect_top_offset = getelementptr inbounds i8, ptr %123, i64 288
  %124 = load i32, ptr %frame_cropping_rect_top_offset, align 8
  %frame_cropping_rect_top_offset152 = getelementptr inbounds i8, ptr %121, i64 288
  store i32 %124, ptr %frame_cropping_rect_top_offset152, align 8
  %125 = load ptr, ptr %top_field6, align 8
  %frame_cropping_rect_bottom_offset = getelementptr inbounds i8, ptr %125, i64 292
  %126 = load i32, ptr %frame_cropping_rect_bottom_offset, align 4
  %127 = load ptr, ptr %frame, align 8
  %frame_cropping_rect_bottom_offset155 = getelementptr inbounds i8, ptr %127, i64 292
  store i32 %126, ptr %frame_cropping_rect_bottom_offset155, align 4
  %128 = load ptr, ptr %top_field6, align 8
  %frame_cropping_rect_left_offset = getelementptr inbounds i8, ptr %128, i64 280
  %129 = load i32, ptr %frame_cropping_rect_left_offset, align 8
  %130 = load ptr, ptr %frame, align 8
  %frame_cropping_rect_left_offset158 = getelementptr inbounds i8, ptr %130, i64 280
  store i32 %129, ptr %frame_cropping_rect_left_offset158, align 8
  %131 = load ptr, ptr %top_field6, align 8
  %frame_cropping_rect_right_offset = getelementptr inbounds i8, ptr %131, i64 284
  %132 = load i32, ptr %frame_cropping_rect_right_offset, align 4
  %133 = load ptr, ptr %frame, align 8
  %frame_cropping_rect_right_offset161 = getelementptr inbounds i8, ptr %133, i64 284
  store i32 %132, ptr %frame_cropping_rect_right_offset161, align 4
  %.pre301 = load ptr, ptr %frame, align 8
  br label %if.end162

if.end162:                                        ; preds = %if.then149, %if.end129
  %134 = phi ptr [ %.pre301, %if.then149 ], [ %121, %if.end129 ]
  %135 = load ptr, ptr %bottom_field63, align 8
  %frame165 = getelementptr inbounds i8, ptr %135, i64 240
  store ptr %134, ptr %frame165, align 8
  %136 = load ptr, ptr %top_field6, align 8
  %frame167 = getelementptr inbounds i8, ptr %136, i64 240
  store ptr %134, ptr %frame167, align 8
  %137 = load ptr, ptr %bottom_field63, align 8
  %138 = load ptr, ptr %top_field6, align 8
  %bottom_field170 = getelementptr inbounds i8, ptr %138, i64 232
  store ptr %137, ptr %bottom_field170, align 8
  %139 = load ptr, ptr %top_field6, align 8
  %top_field173 = getelementptr inbounds i8, ptr %139, i64 224
  store ptr %139, ptr %top_field173, align 8
  %140 = load ptr, ptr %bottom_field63, align 8
  %top_field176 = getelementptr inbounds i8, ptr %140, i64 224
  store ptr %139, ptr %top_field176, align 8
  %141 = load ptr, ptr %bottom_field63, align 8
  %bottom_field179 = getelementptr inbounds i8, ptr %141, i64 232
  store ptr %141, ptr %bottom_field179, align 8
  %142 = load ptr, ptr %top_field6, align 8
  %used_for_reference181 = getelementptr inbounds i8, ptr %142, i64 44
  %143 = load i32, ptr %used_for_reference181, align 4
  %tobool182.not = icmp eq i32 %143, 0
  br i1 %tobool182.not, label %lor.lhs.false, label %if.then186

lor.lhs.false:                                    ; preds = %if.end162
  %used_for_reference184 = getelementptr inbounds i8, ptr %141, i64 44
  %144 = load i32, ptr %used_for_reference184, align 4
  %tobool185.not = icmp eq i32 %144, 0
  br i1 %tobool185.not, label %if.end188, label %if.then186

if.then186:                                       ; preds = %lor.lhs.false, %if.end162
  %145 = load ptr, ptr %frame, align 8
  tail call void @pad_dec_picture(ptr noundef %p_Vid, ptr noundef %145) #20
  br label %if.end188

if.end188:                                        ; preds = %if.then186, %lor.lhs.false
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @dpb_combine_field(ptr noundef %p_Vid, ptr nocapture noundef %fs) local_unnamed_addr #1 {
entry:
  tail call void @dpb_combine_field_yuv(ptr noundef %p_Vid, ptr noundef %fs)
  %view_id = getelementptr inbounds i8, ptr %fs, i64 72
  %0 = load i32, ptr %view_id, align 8
  %frame = getelementptr inbounds i8, ptr %fs, i64 48
  %1 = load ptr, ptr %frame, align 8
  %view_id1 = getelementptr inbounds i8, ptr %1, i64 344
  store i32 %0, ptr %view_id1, align 8
  %top_field = getelementptr inbounds i8, ptr %fs, i64 56
  %2 = load ptr, ptr %top_field, align 8
  %iCodingType = getelementptr inbounds i8, ptr %2, i64 388
  %3 = load i32, ptr %iCodingType, align 4
  %4 = load ptr, ptr %frame, align 8
  %iCodingType3 = getelementptr inbounds i8, ptr %4, i64 388
  store i32 %3, ptr %iCodingType3, align 4
  %5 = load ptr, ptr %top_field, align 8
  %size_y502 = getelementptr inbounds i8, ptr %5, i64 68
  %6 = load i32, ptr %size_y502, align 4
  %cmp504 = icmp sgt i32 %6, 3
  br i1 %cmp504, label %for.body.lr.ph, label %for.end368

for.body.lr.ph:                                   ; preds = %entry
  %ppSliceList = getelementptr inbounds i8, ptr %p_Vid, i64 848736
  %bottom_field = getelementptr inbounds i8, ptr %fs, i64 64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc366
  %7 = phi ptr [ %5, %for.body.lr.ph ], [ %134, %for.inc366 ]
  %indvars.iv507 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next508, %for.inc366 ]
  %size_x498 = getelementptr inbounds i8, ptr %7, i64 64
  %8 = load i32, ptr %size_x498, align 8
  %cmp8500 = icmp sgt i32 %8, 3
  br i1 %cmp8500, label %for.body9.lr.ph, label %for.inc366

for.body9.lr.ph:                                  ; preds = %for.body
  %9 = shl nuw i64 %indvars.iv507, 1
  %10 = or disjoint i64 %9, 1
  br label %for.body9

for.body9:                                        ; preds = %for.body9.lr.ph, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body9.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %11 = phi ptr [ %7, %for.body9.lr.ph ], [ %131, %for.inc ]
  %12 = load ptr, ptr %frame, align 8
  %mv_info = getelementptr inbounds i8, ptr %12, i64 152
  %13 = load ptr, ptr %mv_info, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %13, i64 %9
  %14 = load ptr, ptr %arrayidx, align 8
  %mv = getelementptr inbounds %struct.pic_motion_params, ptr %14, i64 %indvars.iv, i32 1
  %mv_info15 = getelementptr inbounds i8, ptr %11, i64 152
  %15 = load ptr, ptr %mv_info15, align 8
  %arrayidx17 = getelementptr inbounds ptr, ptr %15, i64 %indvars.iv507
  %16 = load ptr, ptr %arrayidx17, align 8
  %mv20 = getelementptr inbounds %struct.pic_motion_params, ptr %16, i64 %indvars.iv, i32 1
  %17 = load i32, ptr %mv20, align 8
  store i32 %17, ptr %mv, align 8
  %18 = load ptr, ptr %frame, align 8
  %mv_info23 = getelementptr inbounds i8, ptr %18, i64 152
  %19 = load ptr, ptr %mv_info23, align 8
  %arrayidx25 = getelementptr inbounds ptr, ptr %19, i64 %9
  %20 = load ptr, ptr %arrayidx25, align 8
  %arrayidx29 = getelementptr inbounds %struct.pic_motion_params, ptr %20, i64 %indvars.iv, i32 1, i64 1
  %21 = load ptr, ptr %top_field, align 8
  %mv_info31 = getelementptr inbounds i8, ptr %21, i64 152
  %22 = load ptr, ptr %mv_info31, align 8
  %arrayidx33 = getelementptr inbounds ptr, ptr %22, i64 %indvars.iv507
  %23 = load ptr, ptr %arrayidx33, align 8
  %arrayidx37 = getelementptr inbounds %struct.pic_motion_params, ptr %23, i64 %indvars.iv, i32 1, i64 1
  %24 = load i32, ptr %arrayidx37, align 4
  store i32 %24, ptr %arrayidx29, align 4
  %25 = load ptr, ptr %top_field, align 8
  %mv_info39 = getelementptr inbounds i8, ptr %25, i64 152
  %26 = load ptr, ptr %mv_info39, align 8
  %arrayidx41 = getelementptr inbounds ptr, ptr %26, i64 %indvars.iv507
  %27 = load ptr, ptr %arrayidx41, align 8
  %ref_idx = getelementptr inbounds %struct.pic_motion_params, ptr %27, i64 %indvars.iv, i32 2
  %28 = load i8, ptr %ref_idx, align 8
  %29 = load ptr, ptr %frame, align 8
  %mv_info46 = getelementptr inbounds i8, ptr %29, i64 152
  %30 = load ptr, ptr %mv_info46, align 8
  %arrayidx48 = getelementptr inbounds ptr, ptr %30, i64 %9
  %31 = load ptr, ptr %arrayidx48, align 8
  %ref_idx51 = getelementptr inbounds %struct.pic_motion_params, ptr %31, i64 %indvars.iv, i32 2
  store i8 %28, ptr %ref_idx51, align 8
  %32 = load ptr, ptr %top_field, align 8
  %mv_info54 = getelementptr inbounds i8, ptr %32, i64 152
  %33 = load ptr, ptr %mv_info54, align 8
  %arrayidx56 = getelementptr inbounds ptr, ptr %33, i64 %indvars.iv507
  %34 = load ptr, ptr %arrayidx56, align 8
  %arrayidx60 = getelementptr inbounds %struct.pic_motion_params, ptr %34, i64 %indvars.iv, i32 2, i64 1
  %35 = load i8, ptr %arrayidx60, align 1
  %36 = load ptr, ptr %frame, align 8
  %mv_info62 = getelementptr inbounds i8, ptr %36, i64 152
  %37 = load ptr, ptr %mv_info62, align 8
  %arrayidx64 = getelementptr inbounds ptr, ptr %37, i64 %9
  %38 = load ptr, ptr %arrayidx64, align 8
  %arrayidx68 = getelementptr inbounds %struct.pic_motion_params, ptr %38, i64 %indvars.iv, i32 2, i64 1
  store i8 %35, ptr %arrayidx68, align 1
  %39 = load ptr, ptr %top_field, align 8
  %listXsize = getelementptr inbounds i8, ptr %39, i64 392
  %40 = load i8, ptr %listXsize, align 8
  %cmp71 = icmp sgt i8 %40, 0
  %mv_info74 = getelementptr inbounds i8, ptr %39, i64 152
  %41 = load ptr, ptr %mv_info74, align 8
  %arrayidx76 = getelementptr inbounds ptr, ptr %41, i64 %indvars.iv507
  %42 = load ptr, ptr %arrayidx76, align 8
  %ref_idx79 = getelementptr inbounds %struct.pic_motion_params, ptr %42, i64 %indvars.iv, i32 2
  %43 = load i8, ptr %ref_idx79, align 8
  %cmp82 = icmp sgt i8 %43, -1
  br i1 %cmp71, label %if.then, label %if.else

if.then:                                          ; preds = %for.body9
  br i1 %cmp82, label %cond.true, label %cond.end

cond.true:                                        ; preds = %if.then
  %conv81 = zext nneg i8 %43 to i64
  %listX = getelementptr inbounds i8, ptr %39, i64 400
  %44 = load ptr, ptr %listX, align 8
  %arrayidx87 = getelementptr inbounds ptr, ptr %44, i64 %conv81
  %45 = load ptr, ptr %arrayidx87, align 8
  br label %cond.end

cond.end:                                         ; preds = %if.then, %cond.true
  %cond = phi ptr [ %45, %cond.true ], [ null, %if.then ]
  %46 = load ptr, ptr %frame, align 8
  %mv_info89 = getelementptr inbounds i8, ptr %46, i64 152
  %47 = load ptr, ptr %mv_info89, align 8
  %arrayidx91 = getelementptr inbounds ptr, ptr %47, i64 %9
  %48 = load ptr, ptr %arrayidx91, align 8
  %arrayidx93 = getelementptr inbounds %struct.pic_motion_params, ptr %48, i64 %indvars.iv
  store ptr %cond, ptr %arrayidx93, align 8
  %49 = load ptr, ptr %top_field, align 8
  %mv_info96 = getelementptr inbounds i8, ptr %49, i64 152
  %50 = load ptr, ptr %mv_info96, align 8
  %arrayidx98 = getelementptr inbounds ptr, ptr %50, i64 %indvars.iv507
  %51 = load ptr, ptr %arrayidx98, align 8
  %arrayidx102 = getelementptr inbounds %struct.pic_motion_params, ptr %51, i64 %indvars.iv, i32 2, i64 1
  %52 = load i8, ptr %arrayidx102, align 1
  %cmp104 = icmp sgt i8 %52, -1
  br i1 %cmp104, label %cond.true106, label %if.end

cond.true106:                                     ; preds = %cond.end
  %arrayidx109 = getelementptr inbounds i8, ptr %49, i64 408
  br label %if.end.sink.split

if.else:                                          ; preds = %for.body9
  br i1 %cmp82, label %cond.true134, label %cond.end141

cond.true134:                                     ; preds = %if.else
  %conv131 = zext nneg i8 %43 to i64
  %53 = load ptr, ptr %ppSliceList, align 8
  %54 = load ptr, ptr %53, align 8
  %listX136 = getelementptr inbounds i8, ptr %54, i64 264
  %55 = load ptr, ptr %listX136, align 8
  %arrayidx139 = getelementptr inbounds ptr, ptr %55, i64 %conv131
  %56 = load ptr, ptr %arrayidx139, align 8
  br label %cond.end141

cond.end141:                                      ; preds = %if.else, %cond.true134
  %cond142 = phi ptr [ %56, %cond.true134 ], [ null, %if.else ]
  %57 = load ptr, ptr %frame, align 8
  %mv_info144 = getelementptr inbounds i8, ptr %57, i64 152
  %58 = load ptr, ptr %mv_info144, align 8
  %arrayidx146 = getelementptr inbounds ptr, ptr %58, i64 %9
  %59 = load ptr, ptr %arrayidx146, align 8
  %arrayidx148 = getelementptr inbounds %struct.pic_motion_params, ptr %59, i64 %indvars.iv
  store ptr %cond142, ptr %arrayidx148, align 8
  %60 = load ptr, ptr %top_field, align 8
  %mv_info152 = getelementptr inbounds i8, ptr %60, i64 152
  %61 = load ptr, ptr %mv_info152, align 8
  %arrayidx154 = getelementptr inbounds ptr, ptr %61, i64 %indvars.iv507
  %62 = load ptr, ptr %arrayidx154, align 8
  %arrayidx158 = getelementptr inbounds %struct.pic_motion_params, ptr %62, i64 %indvars.iv, i32 2, i64 1
  %63 = load i8, ptr %arrayidx158, align 1
  %cmp160 = icmp sgt i8 %63, -1
  br i1 %cmp160, label %cond.true162, label %if.end

cond.true162:                                     ; preds = %cond.end141
  %64 = load ptr, ptr %ppSliceList, align 8
  %65 = load ptr, ptr %64, align 8
  %arrayidx166 = getelementptr inbounds i8, ptr %65, i64 272
  br label %if.end.sink.split

if.end.sink.split:                                ; preds = %cond.true106, %cond.true162
  %arrayidx166.sink = phi ptr [ %arrayidx166, %cond.true162 ], [ %arrayidx109, %cond.true106 ]
  %conv159.sink.in = phi i8 [ %63, %cond.true162 ], [ %52, %cond.true106 ]
  %conv159.sink = zext nneg i8 %conv159.sink.in to i64
  %66 = load ptr, ptr %arrayidx166.sink, align 8
  %arrayidx168 = getelementptr inbounds ptr, ptr %66, i64 %conv159.sink
  %67 = load ptr, ptr %arrayidx168, align 8
  br label %if.end

if.end:                                           ; preds = %if.end.sink.split, %cond.end141, %cond.end
  %cond171.sink = phi ptr [ null, %cond.end ], [ null, %cond.end141 ], [ %67, %if.end.sink.split ]
  %68 = load ptr, ptr %frame, align 8
  %mv_info173 = getelementptr inbounds i8, ptr %68, i64 152
  %69 = load ptr, ptr %mv_info173, align 8
  %arrayidx175 = getelementptr inbounds ptr, ptr %69, i64 %9
  %70 = load ptr, ptr %arrayidx175, align 8
  %arrayidx179 = getelementptr inbounds %struct.pic_motion_params, ptr %70, i64 %indvars.iv, i32 0, i64 1
  store ptr %cond171.sink, ptr %arrayidx179, align 8
  %71 = load ptr, ptr %frame, align 8
  %mv_info181 = getelementptr inbounds i8, ptr %71, i64 152
  %72 = load ptr, ptr %mv_info181, align 8
  %arrayidx183 = getelementptr inbounds ptr, ptr %72, i64 %10
  %73 = load ptr, ptr %arrayidx183, align 8
  %mv186 = getelementptr inbounds %struct.pic_motion_params, ptr %73, i64 %indvars.iv, i32 1
  %74 = load ptr, ptr %bottom_field, align 8
  %mv_info188 = getelementptr inbounds i8, ptr %74, i64 152
  %75 = load ptr, ptr %mv_info188, align 8
  %arrayidx190 = getelementptr inbounds ptr, ptr %75, i64 %indvars.iv507
  %76 = load ptr, ptr %arrayidx190, align 8
  %mv193 = getelementptr inbounds %struct.pic_motion_params, ptr %76, i64 %indvars.iv, i32 1
  %77 = load i32, ptr %mv193, align 8
  store i32 %77, ptr %mv186, align 8
  %78 = load ptr, ptr %frame, align 8
  %mv_info196 = getelementptr inbounds i8, ptr %78, i64 152
  %79 = load ptr, ptr %mv_info196, align 8
  %arrayidx198 = getelementptr inbounds ptr, ptr %79, i64 %10
  %80 = load ptr, ptr %arrayidx198, align 8
  %arrayidx202 = getelementptr inbounds %struct.pic_motion_params, ptr %80, i64 %indvars.iv, i32 1, i64 1
  %81 = load ptr, ptr %bottom_field, align 8
  %mv_info204 = getelementptr inbounds i8, ptr %81, i64 152
  %82 = load ptr, ptr %mv_info204, align 8
  %arrayidx206 = getelementptr inbounds ptr, ptr %82, i64 %indvars.iv507
  %83 = load ptr, ptr %arrayidx206, align 8
  %arrayidx210 = getelementptr inbounds %struct.pic_motion_params, ptr %83, i64 %indvars.iv, i32 1, i64 1
  %84 = load i32, ptr %arrayidx210, align 4
  store i32 %84, ptr %arrayidx202, align 4
  %85 = load ptr, ptr %bottom_field, align 8
  %mv_info212 = getelementptr inbounds i8, ptr %85, i64 152
  %86 = load ptr, ptr %mv_info212, align 8
  %arrayidx214 = getelementptr inbounds ptr, ptr %86, i64 %indvars.iv507
  %87 = load ptr, ptr %arrayidx214, align 8
  %ref_idx217 = getelementptr inbounds %struct.pic_motion_params, ptr %87, i64 %indvars.iv, i32 2
  %88 = load i8, ptr %ref_idx217, align 8
  %89 = load ptr, ptr %frame, align 8
  %mv_info220 = getelementptr inbounds i8, ptr %89, i64 152
  %90 = load ptr, ptr %mv_info220, align 8
  %arrayidx222 = getelementptr inbounds ptr, ptr %90, i64 %10
  %91 = load ptr, ptr %arrayidx222, align 8
  %ref_idx225 = getelementptr inbounds %struct.pic_motion_params, ptr %91, i64 %indvars.iv, i32 2
  store i8 %88, ptr %ref_idx225, align 8
  %92 = load ptr, ptr %bottom_field, align 8
  %mv_info228 = getelementptr inbounds i8, ptr %92, i64 152
  %93 = load ptr, ptr %mv_info228, align 8
  %arrayidx230 = getelementptr inbounds ptr, ptr %93, i64 %indvars.iv507
  %94 = load ptr, ptr %arrayidx230, align 8
  %arrayidx234 = getelementptr inbounds %struct.pic_motion_params, ptr %94, i64 %indvars.iv, i32 2, i64 1
  %95 = load i8, ptr %arrayidx234, align 1
  %96 = load ptr, ptr %frame, align 8
  %mv_info236 = getelementptr inbounds i8, ptr %96, i64 152
  %97 = load ptr, ptr %mv_info236, align 8
  %arrayidx238 = getelementptr inbounds ptr, ptr %97, i64 %10
  %98 = load ptr, ptr %arrayidx238, align 8
  %arrayidx242 = getelementptr inbounds %struct.pic_motion_params, ptr %98, i64 %indvars.iv, i32 2, i64 1
  store i8 %95, ptr %arrayidx242, align 1
  %99 = load ptr, ptr %bottom_field, align 8
  %listXsize244 = getelementptr inbounds i8, ptr %99, i64 392
  %100 = load i8, ptr %listXsize244, align 8
  %cmp247 = icmp sgt i8 %100, 0
  %mv_info251 = getelementptr inbounds i8, ptr %99, i64 152
  %101 = load ptr, ptr %mv_info251, align 8
  %arrayidx253 = getelementptr inbounds ptr, ptr %101, i64 %indvars.iv507
  %102 = load ptr, ptr %arrayidx253, align 8
  %ref_idx256 = getelementptr inbounds %struct.pic_motion_params, ptr %102, i64 %indvars.iv, i32 2
  %103 = load i8, ptr %ref_idx256, align 8
  %cmp259 = icmp sgt i8 %103, -1
  br i1 %cmp247, label %if.then249, label %if.else306

if.then249:                                       ; preds = %if.end
  br i1 %cmp259, label %cond.true261, label %cond.end268

cond.true261:                                     ; preds = %if.then249
  %conv258 = zext nneg i8 %103 to i64
  %listX263 = getelementptr inbounds i8, ptr %99, i64 400
  %104 = load ptr, ptr %listX263, align 8
  %arrayidx266 = getelementptr inbounds ptr, ptr %104, i64 %conv258
  %105 = load ptr, ptr %arrayidx266, align 8
  br label %cond.end268

cond.end268:                                      ; preds = %if.then249, %cond.true261
  %cond269 = phi ptr [ %105, %cond.true261 ], [ null, %if.then249 ]
  %106 = load ptr, ptr %frame, align 8
  %mv_info271 = getelementptr inbounds i8, ptr %106, i64 152
  %107 = load ptr, ptr %mv_info271, align 8
  %arrayidx273 = getelementptr inbounds ptr, ptr %107, i64 %10
  %108 = load ptr, ptr %arrayidx273, align 8
  %arrayidx275 = getelementptr inbounds %struct.pic_motion_params, ptr %108, i64 %indvars.iv
  store ptr %cond269, ptr %arrayidx275, align 8
  %109 = load ptr, ptr %bottom_field, align 8
  %mv_info279 = getelementptr inbounds i8, ptr %109, i64 152
  %110 = load ptr, ptr %mv_info279, align 8
  %arrayidx281 = getelementptr inbounds ptr, ptr %110, i64 %indvars.iv507
  %111 = load ptr, ptr %arrayidx281, align 8
  %arrayidx285 = getelementptr inbounds %struct.pic_motion_params, ptr %111, i64 %indvars.iv, i32 2, i64 1
  %112 = load i8, ptr %arrayidx285, align 1
  %cmp287 = icmp sgt i8 %112, -1
  br i1 %cmp287, label %cond.true289, label %for.inc

cond.true289:                                     ; preds = %cond.end268
  %arrayidx292 = getelementptr inbounds i8, ptr %109, i64 408
  br label %for.inc.sink.split

if.else306:                                       ; preds = %if.end
  br i1 %cmp259, label %cond.true318, label %cond.end326

cond.true318:                                     ; preds = %if.else306
  %conv315 = zext nneg i8 %103 to i64
  %113 = load ptr, ptr %ppSliceList, align 8
  %114 = load ptr, ptr %113, align 8
  %listX321 = getelementptr inbounds i8, ptr %114, i64 264
  %115 = load ptr, ptr %listX321, align 8
  %arrayidx324 = getelementptr inbounds ptr, ptr %115, i64 %conv315
  %116 = load ptr, ptr %arrayidx324, align 8
  br label %cond.end326

cond.end326:                                      ; preds = %if.else306, %cond.true318
  %cond327 = phi ptr [ %116, %cond.true318 ], [ null, %if.else306 ]
  %117 = load ptr, ptr %frame, align 8
  %mv_info329 = getelementptr inbounds i8, ptr %117, i64 152
  %118 = load ptr, ptr %mv_info329, align 8
  %arrayidx331 = getelementptr inbounds ptr, ptr %118, i64 %10
  %119 = load ptr, ptr %arrayidx331, align 8
  %arrayidx333 = getelementptr inbounds %struct.pic_motion_params, ptr %119, i64 %indvars.iv
  store ptr %cond327, ptr %arrayidx333, align 8
  %120 = load ptr, ptr %bottom_field, align 8
  %mv_info337 = getelementptr inbounds i8, ptr %120, i64 152
  %121 = load ptr, ptr %mv_info337, align 8
  %arrayidx339 = getelementptr inbounds ptr, ptr %121, i64 %indvars.iv507
  %122 = load ptr, ptr %arrayidx339, align 8
  %arrayidx343 = getelementptr inbounds %struct.pic_motion_params, ptr %122, i64 %indvars.iv, i32 2, i64 1
  %123 = load i8, ptr %arrayidx343, align 1
  %cmp345 = icmp sgt i8 %123, -1
  br i1 %cmp345, label %cond.true347, label %for.inc

cond.true347:                                     ; preds = %cond.end326
  %124 = load ptr, ptr %ppSliceList, align 8
  %125 = load ptr, ptr %124, align 8
  %arrayidx351 = getelementptr inbounds i8, ptr %125, i64 272
  br label %for.inc.sink.split

for.inc.sink.split:                               ; preds = %cond.true289, %cond.true347
  %arrayidx351.sink = phi ptr [ %arrayidx351, %cond.true347 ], [ %arrayidx292, %cond.true289 ]
  %conv344.sink.in = phi i8 [ %123, %cond.true347 ], [ %112, %cond.true289 ]
  %conv344.sink = zext nneg i8 %conv344.sink.in to i64
  %126 = load ptr, ptr %arrayidx351.sink, align 8
  %arrayidx353 = getelementptr inbounds ptr, ptr %126, i64 %conv344.sink
  %127 = load ptr, ptr %arrayidx353, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %cond.end326, %cond.end268
  %cond297.sink = phi ptr [ null, %cond.end268 ], [ null, %cond.end326 ], [ %127, %for.inc.sink.split ]
  %128 = load ptr, ptr %frame, align 8
  %mv_info299 = getelementptr inbounds i8, ptr %128, i64 152
  %129 = load ptr, ptr %mv_info299, align 8
  %arrayidx301 = getelementptr inbounds ptr, ptr %129, i64 %10
  %130 = load ptr, ptr %arrayidx301, align 8
  %arrayidx305 = getelementptr inbounds %struct.pic_motion_params, ptr %130, i64 %indvars.iv, i32 0, i64 1
  store ptr %cond297.sink, ptr %arrayidx305, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %131 = load ptr, ptr %top_field, align 8
  %size_x = getelementptr inbounds i8, ptr %131, i64 64
  %132 = load i32, ptr %size_x, align 8
  %shr7 = ashr i32 %132, 2
  %133 = sext i32 %shr7 to i64
  %cmp8 = icmp slt i64 %indvars.iv.next, %133
  br i1 %cmp8, label %for.body9, label %for.inc366

for.inc366:                                       ; preds = %for.inc, %for.body
  %134 = phi ptr [ %7, %for.body ], [ %131, %for.inc ]
  %indvars.iv.next508 = add nuw nsw i64 %indvars.iv507, 1
  %size_y = getelementptr inbounds i8, ptr %134, i64 68
  %135 = load i32, ptr %size_y, align 4
  %shr = ashr i32 %135, 2
  %136 = sext i32 %shr to i64
  %cmp = icmp slt i64 %indvars.iv.next508, %136
  br i1 %cmp, label %for.body, label %for.end368

for.end368:                                       ; preds = %for.inc366, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @alloc_ref_pic_list_reordering_buffer(ptr nocapture noundef %currSlice) local_unnamed_addr #1 {
entry:
  %0 = load ptr, ptr %currSlice, align 8
  %type = getelementptr inbounds i8, ptr %0, i64 848776
  %1 = load i32, ptr %type, align 8
  switch i32 %1, label %if.then [
    i32 2, label %if.else
    i32 4, label %if.else
  ]

if.then:                                          ; preds = %entry
  %num_ref_idx_active = getelementptr inbounds i8, ptr %currSlice, i64 136
  %2 = load i32, ptr %num_ref_idx_active, align 8
  %add = add nsw i32 %2, 1
  %conv = sext i32 %add to i64
  %call = tail call noalias ptr @calloc(i64 noundef %conv, i64 noundef 4) #21
  %reordering_of_pic_nums_idc = getelementptr inbounds i8, ptr %currSlice, i64 1112
  store ptr %call, ptr %reordering_of_pic_nums_idc, align 8
  %cmp5 = icmp eq ptr %call, null
  br i1 %cmp5, label %if.then7, label %if.end

if.then7:                                         ; preds = %if.then
  tail call void @no_mem_exit(ptr noundef nonnull @.str.21) #20
  br label %if.end

if.end:                                           ; preds = %if.then7, %if.then
  %call9 = tail call noalias ptr @calloc(i64 noundef %conv, i64 noundef 4) #21
  %abs_diff_pic_num_minus1 = getelementptr inbounds i8, ptr %currSlice, i64 1128
  store ptr %call9, ptr %abs_diff_pic_num_minus1, align 8
  %cmp11 = icmp eq ptr %call9, null
  br i1 %cmp11, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end
  tail call void @no_mem_exit(ptr noundef nonnull @.str.22) #20
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.end
  %call16 = tail call noalias ptr @calloc(i64 noundef %conv, i64 noundef 4) #21
  %long_term_pic_idx = getelementptr inbounds i8, ptr %currSlice, i64 1144
  store ptr %call16, ptr %long_term_pic_idx, align 8
  %cmp18 = icmp eq ptr %call16, null
  br i1 %cmp18, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.end14
  tail call void @no_mem_exit(ptr noundef nonnull @.str.23) #20
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.end14
  %call23 = tail call noalias ptr @calloc(i64 noundef %conv, i64 noundef 4) #21
  %abs_diff_view_idx_minus1 = getelementptr inbounds i8, ptr %currSlice, i64 1160
  store ptr %call23, ptr %abs_diff_view_idx_minus1, align 8
  %cmp25 = icmp eq ptr %call23, null
  br i1 %cmp25, label %if.then27, label %if.end37

if.then27:                                        ; preds = %if.end21
  tail call void @no_mem_exit(ptr noundef nonnull @.str.24) #20
  br label %if.end37

if.else:                                          ; preds = %entry, %entry
  %reordering_of_pic_nums_idc29 = getelementptr inbounds i8, ptr %currSlice, i64 1112
  store ptr null, ptr %reordering_of_pic_nums_idc29, align 8
  %abs_diff_pic_num_minus131 = getelementptr inbounds i8, ptr %currSlice, i64 1128
  store ptr null, ptr %abs_diff_pic_num_minus131, align 8
  %long_term_pic_idx33 = getelementptr inbounds i8, ptr %currSlice, i64 1144
  store ptr null, ptr %long_term_pic_idx33, align 8
  %abs_diff_view_idx_minus135 = getelementptr inbounds i8, ptr %currSlice, i64 1160
  store ptr null, ptr %abs_diff_view_idx_minus135, align 8
  br label %if.end37

if.end37:                                         ; preds = %if.end21, %if.then27, %if.else
  %3 = load i32, ptr %type, align 8
  %cmp42 = icmp eq i32 %3, 1
  br i1 %cmp42, label %if.then44, label %if.else77

if.then44:                                        ; preds = %if.end37
  %arrayidx39 = getelementptr inbounds i8, ptr %currSlice, i64 140
  %4 = load i32, ptr %arrayidx39, align 4
  %add40 = add nsw i32 %4, 1
  %conv45 = sext i32 %add40 to i64
  %call46 = tail call noalias ptr @calloc(i64 noundef %conv45, i64 noundef 4) #21
  %arrayidx48 = getelementptr inbounds i8, ptr %currSlice, i64 1120
  store ptr %call46, ptr %arrayidx48, align 8
  %cmp49 = icmp eq ptr %call46, null
  br i1 %cmp49, label %if.then51, label %if.end52

if.then51:                                        ; preds = %if.then44
  tail call void @no_mem_exit(ptr noundef nonnull @.str.25) #20
  br label %if.end52

if.end52:                                         ; preds = %if.then51, %if.then44
  %call54 = tail call noalias ptr @calloc(i64 noundef %conv45, i64 noundef 4) #21
  %arrayidx56 = getelementptr inbounds i8, ptr %currSlice, i64 1136
  store ptr %call54, ptr %arrayidx56, align 8
  %cmp57 = icmp eq ptr %call54, null
  br i1 %cmp57, label %if.then59, label %if.end60

if.then59:                                        ; preds = %if.end52
  tail call void @no_mem_exit(ptr noundef nonnull @.str.26) #20
  br label %if.end60

if.end60:                                         ; preds = %if.then59, %if.end52
  %call62 = tail call noalias ptr @calloc(i64 noundef %conv45, i64 noundef 4) #21
  %arrayidx64 = getelementptr inbounds i8, ptr %currSlice, i64 1152
  store ptr %call62, ptr %arrayidx64, align 8
  %cmp65 = icmp eq ptr %call62, null
  br i1 %cmp65, label %if.then67, label %if.end68

if.then67:                                        ; preds = %if.end60
  tail call void @no_mem_exit(ptr noundef nonnull @.str.27) #20
  br label %if.end68

if.end68:                                         ; preds = %if.then67, %if.end60
  %call70 = tail call noalias ptr @calloc(i64 noundef %conv45, i64 noundef 4) #21
  %arrayidx72 = getelementptr inbounds i8, ptr %currSlice, i64 1168
  store ptr %call70, ptr %arrayidx72, align 8
  %cmp73 = icmp eq ptr %call70, null
  br i1 %cmp73, label %if.then75, label %if.end86

if.then75:                                        ; preds = %if.end68
  tail call void @no_mem_exit(ptr noundef nonnull @.str.28) #20
  br label %if.end86

if.else77:                                        ; preds = %if.end37
  %arrayidx79 = getelementptr inbounds i8, ptr %currSlice, i64 1120
  store ptr null, ptr %arrayidx79, align 8
  %arrayidx81 = getelementptr inbounds i8, ptr %currSlice, i64 1136
  store ptr null, ptr %arrayidx81, align 8
  %arrayidx83 = getelementptr inbounds i8, ptr %currSlice, i64 1152
  store ptr null, ptr %arrayidx83, align 8
  %arrayidx85 = getelementptr inbounds i8, ptr %currSlice, i64 1168
  store ptr null, ptr %arrayidx85, align 8
  br label %if.end86

if.end86:                                         ; preds = %if.end68, %if.then75, %if.else77
  ret void
}

; Function Attrs: mustprogress nounwind willreturn uwtable
define dso_local void @free_ref_pic_list_reordering_buffer(ptr nocapture noundef %currSlice) local_unnamed_addr #7 {
entry:
  %reordering_of_pic_nums_idc = getelementptr inbounds i8, ptr %currSlice, i64 1112
  %0 = load ptr, ptr %reordering_of_pic_nums_idc, align 8
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @free(ptr noundef nonnull %0) #20
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %abs_diff_pic_num_minus1 = getelementptr inbounds i8, ptr %currSlice, i64 1128
  %1 = load ptr, ptr %abs_diff_pic_num_minus1, align 8
  %tobool4.not = icmp eq ptr %1, null
  br i1 %tobool4.not, label %if.end8, label %if.then5

if.then5:                                         ; preds = %if.end
  tail call void @free(ptr noundef nonnull %1) #20
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.end
  %long_term_pic_idx = getelementptr inbounds i8, ptr %currSlice, i64 1144
  %2 = load ptr, ptr %long_term_pic_idx, align 8
  %tobool10.not = icmp eq ptr %2, null
  br i1 %tobool10.not, label %if.end14, label %if.then11

if.then11:                                        ; preds = %if.end8
  tail call void @free(ptr noundef nonnull %2) #20
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.end8
  store ptr null, ptr %reordering_of_pic_nums_idc, align 8
  store ptr null, ptr %abs_diff_pic_num_minus1, align 8
  store ptr null, ptr %long_term_pic_idx, align 8
  %arrayidx22 = getelementptr inbounds i8, ptr %currSlice, i64 1120
  %3 = load ptr, ptr %arrayidx22, align 8
  %tobool23.not = icmp eq ptr %3, null
  br i1 %tobool23.not, label %if.end27, label %if.then24

if.then24:                                        ; preds = %if.end14
  tail call void @free(ptr noundef nonnull %3) #20
  br label %if.end27

if.end27:                                         ; preds = %if.then24, %if.end14
  %arrayidx29 = getelementptr inbounds i8, ptr %currSlice, i64 1136
  %4 = load ptr, ptr %arrayidx29, align 8
  %tobool30.not = icmp eq ptr %4, null
  br i1 %tobool30.not, label %if.end34, label %if.then31

if.then31:                                        ; preds = %if.end27
  tail call void @free(ptr noundef nonnull %4) #20
  br label %if.end34

if.end34:                                         ; preds = %if.then31, %if.end27
  %arrayidx36 = getelementptr inbounds i8, ptr %currSlice, i64 1152
  %5 = load ptr, ptr %arrayidx36, align 8
  %tobool37.not = icmp eq ptr %5, null
  br i1 %tobool37.not, label %if.end41, label %if.then38

if.then38:                                        ; preds = %if.end34
  tail call void @free(ptr noundef nonnull %5) #20
  br label %if.end41

if.end41:                                         ; preds = %if.then38, %if.end34
  store ptr null, ptr %arrayidx22, align 8
  store ptr null, ptr %arrayidx29, align 8
  store ptr null, ptr %arrayidx36, align 8
  %abs_diff_view_idx_minus1 = getelementptr inbounds i8, ptr %currSlice, i64 1160
  %6 = load ptr, ptr %abs_diff_view_idx_minus1, align 8
  %tobool49.not = icmp eq ptr %6, null
  br i1 %tobool49.not, label %if.end53, label %if.then50

if.then50:                                        ; preds = %if.end41
  tail call void @free(ptr noundef nonnull %6) #20
  br label %if.end53

if.end53:                                         ; preds = %if.then50, %if.end41
  store ptr null, ptr %abs_diff_view_idx_minus1, align 8
  %arrayidx57 = getelementptr inbounds i8, ptr %currSlice, i64 1168
  %7 = load ptr, ptr %arrayidx57, align 8
  %tobool58.not = icmp eq ptr %7, null
  br i1 %tobool58.not, label %if.end62, label %if.then59

if.then59:                                        ; preds = %if.end53
  tail call void @free(ptr noundef nonnull %7) #20
  br label %if.end62

if.end62:                                         ; preds = %if.then59, %if.end53
  store ptr null, ptr %arrayidx57, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @fill_frame_num_gap(ptr noundef %p_Vid, ptr nocapture noundef %currSlice) local_unnamed_addr #1 {
entry:
  %active_sps1 = getelementptr inbounds i8, ptr %p_Vid, i64 16
  %0 = load ptr, ptr %active_sps1, align 8
  %delta_pic_order_cnt = getelementptr inbounds i8, ptr %currSlice, i64 88
  %arrayidx3 = getelementptr inbounds i8, ptr %currSlice, i64 92
  %1 = load <2 x i32>, ptr %delta_pic_order_cnt, align 8
  store i32 0, ptr %arrayidx3, align 4
  store i32 0, ptr %delta_pic_order_cnt, align 8
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %pre_frame_num = getelementptr inbounds i8, ptr %p_Vid, i64 848944
  %2 = load i32, ptr %pre_frame_num, align 8
  %add = add i32 %2, 1
  %MaxFrameNum = getelementptr inbounds i8, ptr %p_Vid, i64 848992
  %3 = load i32, ptr %MaxFrameNum, align 8
  %rem = urem i32 %add, %3
  %frame_num = getelementptr inbounds i8, ptr %currSlice, i64 172
  %4 = load i32, ptr %frame_num, align 4
  %cmp.not67 = icmp eq i32 %4, %rem
  br i1 %cmp.not67, label %while.end, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %entry
  %width = getelementptr inbounds i8, ptr %p_Vid, i64 848780
  %height = getelementptr inbounds i8, ptr %p_Vid, i64 848784
  %width_cr = getelementptr inbounds i8, ptr %p_Vid, i64 848788
  %height_cr = getelementptr inbounds i8, ptr %p_Vid, i64 848792
  %view_id = getelementptr inbounds i8, ptr %currSlice, i64 1176
  %pic_order_cnt_type = getelementptr inbounds i8, ptr %0, i64 2072
  %ppSliceList = getelementptr inbounds i8, ptr %p_Vid, i64 848736
  %toppoc = getelementptr inbounds i8, ptr %currSlice, i64 68
  %bottompoc = getelementptr inbounds i8, ptr %currSlice, i64 72
  %framepoc = getelementptr inbounds i8, ptr %currSlice, i64 76
  %p_Dpb = getelementptr inbounds i8, ptr %currSlice, i64 40
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %if.end
  %UnusedShortTermFrameNum.068 = phi i32 [ %rem, %while.body.lr.ph ], [ %rem18, %if.end ]
  %5 = load i32, ptr %width, align 4
  %6 = load i32, ptr %height, align 8
  %7 = load i32, ptr %width_cr, align 4
  %8 = load i32, ptr %height_cr, align 8
  %call8 = tail call ptr @alloc_storable_picture(ptr noundef nonnull %p_Vid, i32 noundef 0, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8)
  %coded_frame = getelementptr inbounds i8, ptr %call8, i64 96
  store i32 1, ptr %coded_frame, align 8
  %pic_num = getelementptr inbounds i8, ptr %call8, i64 28
  store i32 %UnusedShortTermFrameNum.068, ptr %pic_num, align 4
  %frame_num9 = getelementptr inbounds i8, ptr %call8, i64 20
  store i32 %UnusedShortTermFrameNum.068, ptr %frame_num9, align 4
  %non_existing = getelementptr inbounds i8, ptr %call8, i64 52
  store i32 1, ptr %non_existing, align 4
  %is_output = getelementptr inbounds i8, ptr %call8, i64 48
  store i32 1, ptr %is_output, align 8
  %used_for_reference = getelementptr inbounds i8, ptr %call8, i64 44
  store i32 1, ptr %used_for_reference, align 4
  %adaptive_ref_pic_buffering_flag = getelementptr inbounds i8, ptr %call8, i64 264
  store i32 0, ptr %adaptive_ref_pic_buffering_flag, align 8
  %9 = load i32, ptr %view_id, align 8
  %view_id10 = getelementptr inbounds i8, ptr %call8, i64 344
  store i32 %9, ptr %view_id10, align 8
  store i32 %UnusedShortTermFrameNum.068, ptr %frame_num, align 4
  %10 = load i32, ptr %pic_order_cnt_type, align 4
  %cmp12.not = icmp eq i32 %10, 0
  br i1 %cmp12.not, label %if.end, label %if.then

if.then:                                          ; preds = %while.body
  %11 = load ptr, ptr %ppSliceList, align 8
  %12 = load ptr, ptr %11, align 8
  tail call void @decode_poc(ptr noundef nonnull %p_Vid, ptr noundef %12) #20
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %13 = load i32, ptr %toppoc, align 4
  %top_poc = getelementptr inbounds i8, ptr %call8, i64 8
  store i32 %13, ptr %top_poc, align 8
  %14 = load i32, ptr %bottompoc, align 8
  %bottom_poc = getelementptr inbounds i8, ptr %call8, i64 12
  store i32 %14, ptr %bottom_poc, align 4
  %15 = load i32, ptr %framepoc, align 4
  %frame_poc = getelementptr inbounds i8, ptr %call8, i64 16
  store i32 %15, ptr %frame_poc, align 8
  %poc = getelementptr inbounds i8, ptr %call8, i64 4
  store i32 %15, ptr %poc, align 4
  %16 = load ptr, ptr %p_Dpb, align 8
  tail call void @store_picture_in_dpb(ptr noundef %16, ptr noundef nonnull %call8)
  store i32 %UnusedShortTermFrameNum.068, ptr %pre_frame_num, align 8
  %add16 = add nsw i32 %UnusedShortTermFrameNum.068, 1
  %17 = load i32, ptr %MaxFrameNum, align 8
  %rem18 = srem i32 %add16, %17
  %cmp.not = icmp eq i32 %4, %rem18
  br i1 %cmp.not, label %while.end, label %while.body

while.end:                                        ; preds = %if.end, %entry
  store <2 x i32> %1, ptr %delta_pic_order_cnt, align 8
  store i32 %4, ptr %frame_num, align 4
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #16

declare void @decode_poc(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @compute_colocated(ptr nocapture noundef %currSlice, ptr nocapture noundef readonly %listX) local_unnamed_addr #17 {
entry:
  %0 = load ptr, ptr %currSlice, align 8
  %direct_spatial_mv_pred_flag = getelementptr inbounds i8, ptr %currSlice, i64 132
  %1 = load i32, ptr %direct_spatial_mv_pred_flag, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %for.cond.preheader, label %if.end75

for.cond.preheader:                               ; preds = %entry
  %mb_aff_frame_flag = getelementptr inbounds i8, ptr %currSlice, i64 128
  %2 = load i32, ptr %mb_aff_frame_flag, align 8
  %cmp2120 = icmp sgt i32 %2, -1
  br i1 %cmp2120, label %for.cond3.preheader.lr.ph, label %if.end75

for.cond3.preheader.lr.ph:                        ; preds = %for.cond.preheader
  %mul = shl nsw i32 %2, 2
  %listXsize = getelementptr inbounds i8, ptr %currSlice, i64 256
  %dec_picture19 = getelementptr inbounds i8, ptr %0, i64 856456
  %mvscale = getelementptr inbounds i8, ptr %currSlice, i64 336
  %3 = zext nneg i32 %mul to i64
  br label %for.cond3.preheader

for.cond3.preheader:                              ; preds = %for.cond3.preheader.lr.ph, %for.inc72
  %indvars.iv123 = phi i64 [ 0, %for.cond3.preheader.lr.ph ], [ %indvars.iv.next124, %for.inc72 ]
  %arrayidx = getelementptr inbounds [6 x i8], ptr %listXsize, i64 0, i64 %indvars.iv123
  %4 = load i8, ptr %arrayidx, align 1
  %cmp4118 = icmp sgt i8 %4, 0
  br i1 %cmp4118, label %for.body6.lr.ph, label %for.inc72

for.body6.lr.ph:                                  ; preds = %for.cond3.preheader
  %arrayidx22 = getelementptr inbounds ptr, ptr %listX, i64 %indvars.iv123
  %5 = or disjoint i64 %indvars.iv123, 1
  %arrayidx41 = getelementptr inbounds ptr, ptr %listX, i64 %5
  %switch.selectcmp129 = icmp eq i64 %indvars.iv123, 0
  %switch.selectcmp = icmp eq i64 %indvars.iv123, 2
  %switch.select = select i1 %switch.selectcmp, i64 8, i64 12
  %switch.select130 = select i1 %switch.selectcmp129, i64 4, i64 %switch.select
  br label %for.body6

for.body6:                                        ; preds = %for.body6.lr.ph, %if.end71
  %indvars.iv = phi i64 [ 0, %for.body6.lr.ph ], [ %indvars.iv.next, %if.end71 ]
  %6 = load ptr, ptr %arrayidx22, align 8
  %arrayidx34 = getelementptr inbounds ptr, ptr %6, i64 %indvars.iv
  %7 = load ptr, ptr %arrayidx34, align 8
  %poc35 = getelementptr inbounds i8, ptr %7, i64 4
  %8 = load i32, ptr %poc35, align 4
  %9 = load ptr, ptr %arrayidx41, align 8
  %10 = load ptr, ptr %9, align 8
  %poc43 = getelementptr inbounds i8, ptr %10, i64 4
  %11 = load i32, ptr %poc43, align 4
  %cmp52.not = icmp eq i32 %11, %8
  br i1 %cmp52.not, label %if.end71, label %if.then54

if.then54:                                        ; preds = %for.body6
  %12 = load ptr, ptr %dec_picture19, align 8
  %top_poc = getelementptr inbounds i8, ptr %12, i64 %switch.select130
  %.sink = load i32, ptr %top_poc, align 4
  %sub26 = sub nsw i32 %.sink, %8
  %cond.i.i107 = tail call noundef i32 @llvm.smax.i32(i32 %sub26, i32 -128)
  %cond.i4.i108 = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i107, i32 127)
  %sub50 = sub nsw i32 %11, %8
  %cond.i.i111 = tail call noundef i32 @llvm.smax.i32(i32 %sub50, i32 -128)
  %cond.i4.i112 = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i111, i32 127)
  %div.lhs.trunc = trunc nsw i32 %cond.i4.i112 to i8
  %div115 = sdiv i8 %div.lhs.trunc, 2
  %13 = tail call i8 @llvm.abs.i8(i8 %div115, i1 true)
  %sub.i = zext nneg i8 %13 to i16
  %add56 = or disjoint i16 %sub.i, 16384
  %div57.rhs.trunc = trunc nsw i32 %cond.i4.i112 to i16
  %div57116 = sdiv i16 %add56, %div57.rhs.trunc
  %div57.sext = sext i16 %div57116 to i32
  %mul58 = mul nsw i32 %cond.i4.i108, %div57.sext
  %add59 = add nsw i32 %mul58, 32
  %shr = ashr i32 %add59, 6
  %cond.i.i113 = tail call noundef i32 @llvm.smax.i32(i32 %shr, i32 -1024)
  %cond.i4.i114 = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i113, i32 1023)
  br label %if.end71

if.end71:                                         ; preds = %for.body6, %if.then54
  %.sink127 = phi i32 [ %cond.i4.i114, %if.then54 ], [ 9999, %for.body6 ]
  %arrayidx70 = getelementptr inbounds [6 x [32 x i32]], ptr %mvscale, i64 0, i64 %indvars.iv123, i64 %indvars.iv
  store i32 %.sink127, ptr %arrayidx70, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %14 = load i8, ptr %arrayidx, align 1
  %15 = sext i8 %14 to i64
  %cmp4 = icmp slt i64 %indvars.iv.next, %15
  br i1 %cmp4, label %for.body6, label %for.inc72

for.inc72:                                        ; preds = %if.end71, %for.cond3.preheader
  %indvars.iv.next124 = add nuw nsw i64 %indvars.iv123, 2
  %cmp2 = icmp ult i64 %indvars.iv123, %3
  br i1 %cmp2, label %for.cond3.preheader, label %if.end75

if.end75:                                         ; preds = %for.inc72, %for.cond.preheader, %entry
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @unmark_long_term_field_for_reference_by_frame_idx(ptr nocapture noundef readonly %p_Dpb, i32 noundef %structure, i32 noundef %long_term_frame_idx, i32 noundef %mark_current, i32 noundef %curr_frame_num, i32 noundef %curr_pic_num, i32 noundef %curr_view_id) unnamed_addr #9 {
entry:
  %cmp = icmp slt i32 %curr_pic_num, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %p_Dpb, align 8
  %MaxFrameNum = getelementptr inbounds i8, ptr %0, i64 848992
  %1 = load i32, ptr %MaxFrameNum, align 8
  %mul = shl nsw i32 %1, 1
  %add = add nsw i32 %mul, %curr_pic_num
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %curr_pic_num.addr.0 = phi i32 [ %add, %if.then ], [ %curr_pic_num, %entry ]
  %ltref_frames_in_buffer = getelementptr inbounds i8, ptr %p_Dpb, i64 52
  %2 = load i32, ptr %ltref_frames_in_buffer, align 4
  %cmp2538.not = icmp eq i32 %2, 0
  br i1 %cmp2538.not, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end
  %fs_ltref = getelementptr inbounds i8, ptr %p_Dpb, i64 32
  %tobool88.not = icmp eq i32 %mark_current, 0
  %last_picture90 = getelementptr inbounds i8, ptr %p_Dpb, i64 4168
  %shr117 = ashr i32 %curr_pic_num.addr.0, 1
  switch i32 %structure, label %for.end [
    i32 1, label %for.body.us
    i32 2, label %for.body.us541
  ]

for.body.us:                                      ; preds = %for.body.lr.ph, %for.inc.us
  %indvars.iv557 = phi i64 [ %indvars.iv.next558, %for.inc.us ], [ 0, %for.body.lr.ph ]
  %3 = load ptr, ptr %fs_ltref, align 8
  %arrayidx.us = getelementptr inbounds ptr, ptr %3, i64 %indvars.iv557
  %4 = load ptr, ptr %arrayidx.us, align 8
  %view_id.us = getelementptr inbounds i8, ptr %4, i64 72
  %5 = load i32, ptr %view_id.us, align 8
  %cmp3.us = icmp eq i32 %5, %curr_view_id
  br i1 %cmp3.us, label %if.then4.us, label %for.inc.us

if.then4.us:                                      ; preds = %for.body.us
  %long_term_frame_idx8.us = getelementptr inbounds i8, ptr %4, i64 32
  %6 = load i32, ptr %long_term_frame_idx8.us, align 8
  %cmp9.us = icmp eq i32 %6, %long_term_frame_idx
  br i1 %cmp9.us, label %if.then10.us, label %for.inc.us

if.then10.us:                                     ; preds = %if.then4.us
  %is_long_term.us = getelementptr inbounds i8, ptr %4, i64 8
  %7 = load i32, ptr %is_long_term.us, align 8
  switch i32 %7, label %if.else30.us [
    i32 3, label %if.then17.us
    i32 1, label %if.then26.us
  ]

if.then26.us:                                     ; preds = %if.then10.us
  %8 = load i32, ptr %4, align 8
  %and.i187.us = and i32 %8, 1
  %tobool.not.i188.us = icmp eq i32 %and.i187.us, 0
  br i1 %tobool.not.i188.us, label %if.end5.i196.us, label %if.then.i189.us

if.then.i189.us:                                  ; preds = %if.then26.us
  %top_field.i190.us = getelementptr inbounds i8, ptr %4, i64 56
  %9 = load ptr, ptr %top_field.i190.us, align 8
  %tobool1.not.i191.us = icmp eq ptr %9, null
  br i1 %tobool1.not.i191.us, label %if.end5.i196.us, label %if.then2.i192.us

if.then2.i192.us:                                 ; preds = %if.then.i189.us
  %used_for_reference.i193.us = getelementptr inbounds i8, ptr %9, i64 44
  store i32 0, ptr %used_for_reference.i193.us, align 4
  %10 = load ptr, ptr %top_field.i190.us, align 8
  %is_long_term.i194.us = getelementptr inbounds i8, ptr %10, i64 40
  store i8 0, ptr %is_long_term.i194.us, align 8
  %.pre.i195.us = load i32, ptr %4, align 8
  br label %if.end5.i196.us

if.end5.i196.us:                                  ; preds = %if.then2.i192.us, %if.then.i189.us, %if.then26.us
  %11 = phi i32 [ %8, %if.then.i189.us ], [ %.pre.i195.us, %if.then2.i192.us ], [ %8, %if.then26.us ]
  %and7.i197.us = and i32 %11, 2
  %tobool8.not.i198.us = icmp eq i32 %and7.i197.us, 0
  br i1 %tobool8.not.i198.us, label %if.end17.i206.us, label %if.then9.i199.us

if.then9.i199.us:                                 ; preds = %if.end5.i196.us
  %bottom_field.i200.us = getelementptr inbounds i8, ptr %4, i64 64
  %12 = load ptr, ptr %bottom_field.i200.us, align 8
  %tobool10.not.i201.us = icmp eq ptr %12, null
  br i1 %tobool10.not.i201.us, label %if.end17.i206.us, label %if.then11.i202.us

if.then11.i202.us:                                ; preds = %if.then9.i199.us
  %used_for_reference13.i203.us = getelementptr inbounds i8, ptr %12, i64 44
  store i32 0, ptr %used_for_reference13.i203.us, align 4
  %13 = load ptr, ptr %bottom_field.i200.us, align 8
  %is_long_term15.i204.us = getelementptr inbounds i8, ptr %13, i64 40
  store i8 0, ptr %is_long_term15.i204.us, align 8
  %.pr.pre.i205.us = load i32, ptr %4, align 8
  br label %if.end17.i206.us

if.end17.i206.us:                                 ; preds = %if.then11.i202.us, %if.then9.i199.us, %if.end5.i196.us
  %14 = phi i32 [ %11, %if.end5.i196.us ], [ %.pr.pre.i205.us, %if.then11.i202.us ], [ %11, %if.then9.i199.us ]
  %cmp.i207.us = icmp eq i32 %14, 3
  br i1 %cmp.i207.us, label %if.then19.i210.us, label %for.inc.us.sink.split

if.then19.i210.us:                                ; preds = %if.end17.i206.us
  %top_field20.i211.us = getelementptr inbounds i8, ptr %4, i64 56
  %15 = load ptr, ptr %top_field20.i211.us, align 8
  %tobool21.not.i212.us = icmp eq ptr %15, null
  br i1 %tobool21.not.i212.us, label %for.inc.us.sink.split.sink.split, label %land.lhs.true.i213.us

land.lhs.true.i213.us:                            ; preds = %if.then19.i210.us
  %bottom_field22.i214.us = getelementptr inbounds i8, ptr %4, i64 64
  %16 = load ptr, ptr %bottom_field22.i214.us, align 8
  %tobool23.not.i215.us = icmp eq ptr %16, null
  br i1 %tobool23.not.i215.us, label %for.inc.us.sink.split.sink.split, label %for.inc.us.sink.split.sink.split.sink.split

if.then17.us:                                     ; preds = %if.then10.us
  %17 = load i32, ptr %4, align 8
  %and.i.us = and i32 %17, 1
  %tobool.not.i.us = icmp eq i32 %and.i.us, 0
  br i1 %tobool.not.i.us, label %if.end5.i.us, label %if.then.i.us

if.then.i.us:                                     ; preds = %if.then17.us
  %top_field.i.us = getelementptr inbounds i8, ptr %4, i64 56
  %18 = load ptr, ptr %top_field.i.us, align 8
  %tobool1.not.i.us = icmp eq ptr %18, null
  br i1 %tobool1.not.i.us, label %if.end5.i.us, label %if.then2.i.us

if.then2.i.us:                                    ; preds = %if.then.i.us
  %used_for_reference.i.us = getelementptr inbounds i8, ptr %18, i64 44
  store i32 0, ptr %used_for_reference.i.us, align 4
  %19 = load ptr, ptr %top_field.i.us, align 8
  %is_long_term.i.us = getelementptr inbounds i8, ptr %19, i64 40
  store i8 0, ptr %is_long_term.i.us, align 8
  %.pre.i.us = load i32, ptr %4, align 8
  br label %if.end5.i.us

if.end5.i.us:                                     ; preds = %if.then2.i.us, %if.then.i.us, %if.then17.us
  %20 = phi i32 [ %17, %if.then.i.us ], [ %.pre.i.us, %if.then2.i.us ], [ %17, %if.then17.us ]
  %and7.i.us = and i32 %20, 2
  %tobool8.not.i.us = icmp eq i32 %and7.i.us, 0
  br i1 %tobool8.not.i.us, label %if.end17.i.us, label %if.then9.i.us

if.then9.i.us:                                    ; preds = %if.end5.i.us
  %bottom_field.i.us = getelementptr inbounds i8, ptr %4, i64 64
  %21 = load ptr, ptr %bottom_field.i.us, align 8
  %tobool10.not.i.us = icmp eq ptr %21, null
  br i1 %tobool10.not.i.us, label %if.end17.i.us, label %if.then11.i.us

if.then11.i.us:                                   ; preds = %if.then9.i.us
  %used_for_reference13.i.us = getelementptr inbounds i8, ptr %21, i64 44
  store i32 0, ptr %used_for_reference13.i.us, align 4
  %22 = load ptr, ptr %bottom_field.i.us, align 8
  %is_long_term15.i.us = getelementptr inbounds i8, ptr %22, i64 40
  store i8 0, ptr %is_long_term15.i.us, align 8
  %.pr.pre.i.us = load i32, ptr %4, align 8
  br label %if.end17.i.us

if.end17.i.us:                                    ; preds = %if.then11.i.us, %if.then9.i.us, %if.end5.i.us
  %23 = phi i32 [ %20, %if.end5.i.us ], [ %.pr.pre.i.us, %if.then11.i.us ], [ %20, %if.then9.i.us ]
  %cmp.i.us = icmp eq i32 %23, 3
  br i1 %cmp.i.us, label %if.then19.i.us, label %for.inc.us.sink.split

if.then19.i.us:                                   ; preds = %if.end17.i.us
  %top_field20.i.us = getelementptr inbounds i8, ptr %4, i64 56
  %24 = load ptr, ptr %top_field20.i.us, align 8
  %tobool21.not.i.us = icmp eq ptr %24, null
  br i1 %tobool21.not.i.us, label %for.inc.us.sink.split.sink.split, label %land.lhs.true.i.us

land.lhs.true.i.us:                               ; preds = %if.then19.i.us
  %bottom_field22.i.us = getelementptr inbounds i8, ptr %4, i64 64
  %25 = load ptr, ptr %bottom_field22.i.us, align 8
  %tobool23.not.i.us = icmp eq ptr %25, null
  br i1 %tobool23.not.i.us, label %for.inc.us.sink.split.sink.split, label %for.inc.us.sink.split.sink.split.sink.split

if.else30.us:                                     ; preds = %if.then10.us
  br i1 %tobool88.not, label %if.else51.us, label %if.then31.us

if.then31.us:                                     ; preds = %if.else30.us
  %26 = load ptr, ptr %last_picture90, align 8
  %tobool32.not.us = icmp eq ptr %26, null
  br i1 %tobool32.not.us, label %if.else46.us, label %if.then33.us

if.then33.us:                                     ; preds = %if.then31.us
  %cmp38.not.us = icmp eq ptr %26, %4
  br i1 %cmp38.not.us, label %lor.lhs.false.us, label %if.then41.us

lor.lhs.false.us:                                 ; preds = %if.then33.us
  %frame_num.us = getelementptr inbounds i8, ptr %26, i64 20
  %27 = load i32, ptr %frame_num.us, align 4
  %cmp40.not.us = icmp eq i32 %27, %curr_frame_num
  br i1 %cmp40.not.us, label %for.inc.us, label %if.then41.us

if.then41.us:                                     ; preds = %lor.lhs.false.us, %if.then33.us
  %28 = load i32, ptr %4, align 8
  %and.i226.us = and i32 %28, 1
  %tobool.not.i227.us = icmp eq i32 %and.i226.us, 0
  br i1 %tobool.not.i227.us, label %if.end5.i235.us, label %if.then.i228.us

if.then.i228.us:                                  ; preds = %if.then41.us
  %top_field.i229.us = getelementptr inbounds i8, ptr %4, i64 56
  %29 = load ptr, ptr %top_field.i229.us, align 8
  %tobool1.not.i230.us = icmp eq ptr %29, null
  br i1 %tobool1.not.i230.us, label %if.end5.i235.us, label %if.then2.i231.us

if.then2.i231.us:                                 ; preds = %if.then.i228.us
  %used_for_reference.i232.us = getelementptr inbounds i8, ptr %29, i64 44
  store i32 0, ptr %used_for_reference.i232.us, align 4
  %30 = load ptr, ptr %top_field.i229.us, align 8
  %is_long_term.i233.us = getelementptr inbounds i8, ptr %30, i64 40
  store i8 0, ptr %is_long_term.i233.us, align 8
  %.pre.i234.us = load i32, ptr %4, align 8
  br label %if.end5.i235.us

if.end5.i235.us:                                  ; preds = %if.then2.i231.us, %if.then.i228.us, %if.then41.us
  %31 = phi i32 [ %28, %if.then.i228.us ], [ %.pre.i234.us, %if.then2.i231.us ], [ %28, %if.then41.us ]
  %and7.i236.us = and i32 %31, 2
  %tobool8.not.i237.us = icmp eq i32 %and7.i236.us, 0
  br i1 %tobool8.not.i237.us, label %if.end17.i245.us, label %if.then9.i238.us

if.then9.i238.us:                                 ; preds = %if.end5.i235.us
  %bottom_field.i239.us = getelementptr inbounds i8, ptr %4, i64 64
  %32 = load ptr, ptr %bottom_field.i239.us, align 8
  %tobool10.not.i240.us = icmp eq ptr %32, null
  br i1 %tobool10.not.i240.us, label %if.end17.i245.us, label %if.then11.i241.us

if.then11.i241.us:                                ; preds = %if.then9.i238.us
  %used_for_reference13.i242.us = getelementptr inbounds i8, ptr %32, i64 44
  store i32 0, ptr %used_for_reference13.i242.us, align 4
  %33 = load ptr, ptr %bottom_field.i239.us, align 8
  %is_long_term15.i243.us = getelementptr inbounds i8, ptr %33, i64 40
  store i8 0, ptr %is_long_term15.i243.us, align 8
  %.pr.pre.i244.us = load i32, ptr %4, align 8
  br label %if.end17.i245.us

if.end17.i245.us:                                 ; preds = %if.then11.i241.us, %if.then9.i238.us, %if.end5.i235.us
  %34 = phi i32 [ %31, %if.end5.i235.us ], [ %.pr.pre.i244.us, %if.then11.i241.us ], [ %31, %if.then9.i238.us ]
  %cmp.i246.us = icmp eq i32 %34, 3
  br i1 %cmp.i246.us, label %if.then19.i249.us, label %for.inc.us.sink.split

if.then19.i249.us:                                ; preds = %if.end17.i245.us
  %top_field20.i250.us = getelementptr inbounds i8, ptr %4, i64 56
  %35 = load ptr, ptr %top_field20.i250.us, align 8
  %tobool21.not.i251.us = icmp eq ptr %35, null
  br i1 %tobool21.not.i251.us, label %for.inc.us.sink.split.sink.split, label %land.lhs.true.i252.us

land.lhs.true.i252.us:                            ; preds = %if.then19.i249.us
  %bottom_field22.i253.us = getelementptr inbounds i8, ptr %4, i64 64
  %36 = load ptr, ptr %bottom_field22.i253.us, align 8
  %tobool23.not.i254.us = icmp eq ptr %36, null
  br i1 %tobool23.not.i254.us, label %for.inc.us.sink.split.sink.split, label %for.inc.us.sink.split.sink.split.sink.split

if.else46.us:                                     ; preds = %if.then31.us
  %37 = load i32, ptr %4, align 8
  %and.i265.us = and i32 %37, 1
  %tobool.not.i266.us = icmp eq i32 %and.i265.us, 0
  br i1 %tobool.not.i266.us, label %if.end5.i274.us, label %if.then.i267.us

if.then.i267.us:                                  ; preds = %if.else46.us
  %top_field.i268.us = getelementptr inbounds i8, ptr %4, i64 56
  %38 = load ptr, ptr %top_field.i268.us, align 8
  %tobool1.not.i269.us = icmp eq ptr %38, null
  br i1 %tobool1.not.i269.us, label %if.end5.i274.us, label %if.then2.i270.us

if.then2.i270.us:                                 ; preds = %if.then.i267.us
  %used_for_reference.i271.us = getelementptr inbounds i8, ptr %38, i64 44
  store i32 0, ptr %used_for_reference.i271.us, align 4
  %39 = load ptr, ptr %top_field.i268.us, align 8
  %is_long_term.i272.us = getelementptr inbounds i8, ptr %39, i64 40
  store i8 0, ptr %is_long_term.i272.us, align 8
  %.pre.i273.us = load i32, ptr %4, align 8
  br label %if.end5.i274.us

if.end5.i274.us:                                  ; preds = %if.then2.i270.us, %if.then.i267.us, %if.else46.us
  %40 = phi i32 [ %37, %if.then.i267.us ], [ %.pre.i273.us, %if.then2.i270.us ], [ %37, %if.else46.us ]
  %and7.i275.us = and i32 %40, 2
  %tobool8.not.i276.us = icmp eq i32 %and7.i275.us, 0
  br i1 %tobool8.not.i276.us, label %if.end17.i284.us, label %if.then9.i277.us

if.then9.i277.us:                                 ; preds = %if.end5.i274.us
  %bottom_field.i278.us = getelementptr inbounds i8, ptr %4, i64 64
  %41 = load ptr, ptr %bottom_field.i278.us, align 8
  %tobool10.not.i279.us = icmp eq ptr %41, null
  br i1 %tobool10.not.i279.us, label %if.end17.i284.us, label %if.then11.i280.us

if.then11.i280.us:                                ; preds = %if.then9.i277.us
  %used_for_reference13.i281.us = getelementptr inbounds i8, ptr %41, i64 44
  store i32 0, ptr %used_for_reference13.i281.us, align 4
  %42 = load ptr, ptr %bottom_field.i278.us, align 8
  %is_long_term15.i282.us = getelementptr inbounds i8, ptr %42, i64 40
  store i8 0, ptr %is_long_term15.i282.us, align 8
  %.pr.pre.i283.us = load i32, ptr %4, align 8
  br label %if.end17.i284.us

if.end17.i284.us:                                 ; preds = %if.then11.i280.us, %if.then9.i277.us, %if.end5.i274.us
  %43 = phi i32 [ %40, %if.end5.i274.us ], [ %.pr.pre.i283.us, %if.then11.i280.us ], [ %40, %if.then9.i277.us ]
  %cmp.i285.us = icmp eq i32 %43, 3
  br i1 %cmp.i285.us, label %if.then19.i288.us, label %for.inc.us.sink.split

if.then19.i288.us:                                ; preds = %if.end17.i284.us
  %top_field20.i289.us = getelementptr inbounds i8, ptr %4, i64 56
  %44 = load ptr, ptr %top_field20.i289.us, align 8
  %tobool21.not.i290.us = icmp eq ptr %44, null
  br i1 %tobool21.not.i290.us, label %for.inc.us.sink.split.sink.split, label %land.lhs.true.i291.us

land.lhs.true.i291.us:                            ; preds = %if.then19.i288.us
  %bottom_field22.i292.us = getelementptr inbounds i8, ptr %4, i64 64
  %45 = load ptr, ptr %bottom_field22.i292.us, align 8
  %tobool23.not.i293.us = icmp eq ptr %45, null
  br i1 %tobool23.not.i293.us, label %for.inc.us.sink.split.sink.split, label %for.inc.us.sink.split.sink.split.sink.split

if.else51.us:                                     ; preds = %if.else30.us
  %frame_num55.us = getelementptr inbounds i8, ptr %4, i64 20
  %46 = load i32, ptr %frame_num55.us, align 4
  %cmp56.not.us = icmp eq i32 %46, %shr117
  br i1 %cmp56.not.us, label %for.inc.us, label %if.then57.us

if.then57.us:                                     ; preds = %if.else51.us
  %47 = load i32, ptr %4, align 8
  %and.i304.us = and i32 %47, 1
  %tobool.not.i305.us = icmp eq i32 %and.i304.us, 0
  br i1 %tobool.not.i305.us, label %if.end5.i313.us, label %if.then.i306.us

if.then.i306.us:                                  ; preds = %if.then57.us
  %top_field.i307.us = getelementptr inbounds i8, ptr %4, i64 56
  %48 = load ptr, ptr %top_field.i307.us, align 8
  %tobool1.not.i308.us = icmp eq ptr %48, null
  br i1 %tobool1.not.i308.us, label %if.end5.i313.us, label %if.then2.i309.us

if.then2.i309.us:                                 ; preds = %if.then.i306.us
  %used_for_reference.i310.us = getelementptr inbounds i8, ptr %48, i64 44
  store i32 0, ptr %used_for_reference.i310.us, align 4
  %49 = load ptr, ptr %top_field.i307.us, align 8
  %is_long_term.i311.us = getelementptr inbounds i8, ptr %49, i64 40
  store i8 0, ptr %is_long_term.i311.us, align 8
  %.pre.i312.us = load i32, ptr %4, align 8
  br label %if.end5.i313.us

if.end5.i313.us:                                  ; preds = %if.then2.i309.us, %if.then.i306.us, %if.then57.us
  %50 = phi i32 [ %47, %if.then.i306.us ], [ %.pre.i312.us, %if.then2.i309.us ], [ %47, %if.then57.us ]
  %and7.i314.us = and i32 %50, 2
  %tobool8.not.i315.us = icmp eq i32 %and7.i314.us, 0
  br i1 %tobool8.not.i315.us, label %if.end17.i323.us, label %if.then9.i316.us

if.then9.i316.us:                                 ; preds = %if.end5.i313.us
  %bottom_field.i317.us = getelementptr inbounds i8, ptr %4, i64 64
  %51 = load ptr, ptr %bottom_field.i317.us, align 8
  %tobool10.not.i318.us = icmp eq ptr %51, null
  br i1 %tobool10.not.i318.us, label %if.end17.i323.us, label %if.then11.i319.us

if.then11.i319.us:                                ; preds = %if.then9.i316.us
  %used_for_reference13.i320.us = getelementptr inbounds i8, ptr %51, i64 44
  store i32 0, ptr %used_for_reference13.i320.us, align 4
  %52 = load ptr, ptr %bottom_field.i317.us, align 8
  %is_long_term15.i321.us = getelementptr inbounds i8, ptr %52, i64 40
  store i8 0, ptr %is_long_term15.i321.us, align 8
  %.pr.pre.i322.us = load i32, ptr %4, align 8
  br label %if.end17.i323.us

if.end17.i323.us:                                 ; preds = %if.then11.i319.us, %if.then9.i316.us, %if.end5.i313.us
  %53 = phi i32 [ %50, %if.end5.i313.us ], [ %.pr.pre.i322.us, %if.then11.i319.us ], [ %50, %if.then9.i316.us ]
  %cmp.i324.us = icmp eq i32 %53, 3
  br i1 %cmp.i324.us, label %if.then19.i327.us, label %for.inc.us.sink.split

if.then19.i327.us:                                ; preds = %if.end17.i323.us
  %top_field20.i328.us = getelementptr inbounds i8, ptr %4, i64 56
  %54 = load ptr, ptr %top_field20.i328.us, align 8
  %tobool21.not.i329.us = icmp eq ptr %54, null
  br i1 %tobool21.not.i329.us, label %for.inc.us.sink.split.sink.split, label %land.lhs.true.i330.us

land.lhs.true.i330.us:                            ; preds = %if.then19.i327.us
  %bottom_field22.i331.us = getelementptr inbounds i8, ptr %4, i64 64
  %55 = load ptr, ptr %bottom_field22.i331.us, align 8
  %tobool23.not.i332.us = icmp eq ptr %55, null
  br i1 %tobool23.not.i332.us, label %for.inc.us.sink.split.sink.split, label %for.inc.us.sink.split.sink.split.sink.split

for.inc.us.sink.split.sink.split.sink.split:      ; preds = %land.lhs.true.i330.us, %land.lhs.true.i291.us, %land.lhs.true.i252.us, %land.lhs.true.i.us, %land.lhs.true.i213.us
  %.sink = phi ptr [ %15, %land.lhs.true.i213.us ], [ %24, %land.lhs.true.i.us ], [ %35, %land.lhs.true.i252.us ], [ %44, %land.lhs.true.i291.us ], [ %54, %land.lhs.true.i330.us ]
  %top_field20.i328.us.sink = phi ptr [ %top_field20.i211.us, %land.lhs.true.i213.us ], [ %top_field20.i.us, %land.lhs.true.i.us ], [ %top_field20.i250.us, %land.lhs.true.i252.us ], [ %top_field20.i289.us, %land.lhs.true.i291.us ], [ %top_field20.i328.us, %land.lhs.true.i330.us ]
  %bottom_field22.i331.us.sink563 = phi ptr [ %bottom_field22.i214.us, %land.lhs.true.i213.us ], [ %bottom_field22.i.us, %land.lhs.true.i.us ], [ %bottom_field22.i253.us, %land.lhs.true.i252.us ], [ %bottom_field22.i292.us, %land.lhs.true.i291.us ], [ %bottom_field22.i331.us, %land.lhs.true.i330.us ]
  %used_for_reference26.i334.us = getelementptr inbounds i8, ptr %.sink, i64 44
  store i32 0, ptr %used_for_reference26.i334.us, align 4
  %56 = load ptr, ptr %top_field20.i328.us.sink, align 8
  %is_long_term28.i335.us = getelementptr inbounds i8, ptr %56, i64 40
  store i8 0, ptr %is_long_term28.i335.us, align 8
  %57 = load ptr, ptr %bottom_field22.i331.us.sink563, align 8
  %used_for_reference30.i336.us = getelementptr inbounds i8, ptr %57, i64 44
  store i32 0, ptr %used_for_reference30.i336.us, align 4
  %58 = load ptr, ptr %bottom_field22.i331.us.sink563, align 8
  %is_long_term32.i337.us = getelementptr inbounds i8, ptr %58, i64 40
  store i8 0, ptr %is_long_term32.i337.us, align 8
  br label %for.inc.us.sink.split.sink.split

for.inc.us.sink.split.sink.split:                 ; preds = %for.inc.us.sink.split.sink.split.sink.split, %if.then19.i327.us, %land.lhs.true.i330.us, %if.then19.i288.us, %land.lhs.true.i291.us, %if.then19.i249.us, %land.lhs.true.i252.us, %if.then19.i.us, %land.lhs.true.i.us, %if.then19.i210.us, %land.lhs.true.i213.us
  %frame.i339.us = getelementptr inbounds i8, ptr %4, i64 48
  %59 = load ptr, ptr %frame.i339.us, align 8
  %used_for_reference34.i340.us = getelementptr inbounds i8, ptr %59, i64 44
  store i32 0, ptr %used_for_reference34.i340.us, align 4
  %60 = load ptr, ptr %frame.i339.us, align 8
  %is_long_term36.i341.us = getelementptr inbounds i8, ptr %60, i64 40
  store i8 0, ptr %is_long_term36.i341.us, align 8
  br label %for.inc.us.sink.split

for.inc.us.sink.split:                            ; preds = %for.inc.us.sink.split.sink.split, %if.end17.i323.us, %if.end17.i284.us, %if.end17.i245.us, %if.end17.i.us, %if.end17.i206.us
  %is_reference.i325.us = getelementptr inbounds i8, ptr %4, i64 4
  store i32 0, ptr %is_reference.i325.us, align 4
  store i32 0, ptr %is_long_term.us, align 8
  br label %for.inc.us

for.inc.us:                                       ; preds = %for.inc.us.sink.split, %if.else51.us, %lor.lhs.false.us, %if.then4.us, %for.body.us
  %indvars.iv.next558 = add nuw nsw i64 %indvars.iv557, 1
  %61 = load i32, ptr %ltref_frames_in_buffer, align 4
  %62 = zext i32 %61 to i64
  %cmp2.us = icmp ult i64 %indvars.iv.next558, %62
  br i1 %cmp2.us, label %for.body.us, label %for.end

for.body.us541:                                   ; preds = %for.body.lr.ph, %for.inc.us551
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc.us551 ], [ 0, %for.body.lr.ph ]
  %63 = load ptr, ptr %fs_ltref, align 8
  %arrayidx.us544 = getelementptr inbounds ptr, ptr %63, i64 %indvars.iv
  %64 = load ptr, ptr %arrayidx.us544, align 8
  %view_id.us545 = getelementptr inbounds i8, ptr %64, i64 72
  %65 = load i32, ptr %view_id.us545, align 8
  %cmp3.us546 = icmp eq i32 %65, %curr_view_id
  br i1 %cmp3.us546, label %if.then4.us547, label %for.inc.us551

if.then4.us547:                                   ; preds = %for.body.us541
  %long_term_frame_idx8.us548 = getelementptr inbounds i8, ptr %64, i64 32
  %66 = load i32, ptr %long_term_frame_idx8.us548, align 8
  %cmp9.us549 = icmp eq i32 %66, %long_term_frame_idx
  br i1 %cmp9.us549, label %if.then10.us550, label %for.inc.us551

if.then10.us550:                                  ; preds = %if.then4.us547
  %is_long_term71.us = getelementptr inbounds i8, ptr %64, i64 8
  %67 = load i32, ptr %is_long_term71.us, align 8
  switch i32 %67, label %if.else87.us [
    i32 3, label %if.then73.us
    i32 2, label %if.then83.us
  ]

if.then83.us:                                     ; preds = %if.then10.us550
  %68 = load i32, ptr %64, align 8
  %and.i382.us = and i32 %68, 1
  %tobool.not.i383.us = icmp eq i32 %and.i382.us, 0
  br i1 %tobool.not.i383.us, label %if.end5.i391.us, label %if.then.i384.us

if.then.i384.us:                                  ; preds = %if.then83.us
  %top_field.i385.us = getelementptr inbounds i8, ptr %64, i64 56
  %69 = load ptr, ptr %top_field.i385.us, align 8
  %tobool1.not.i386.us = icmp eq ptr %69, null
  br i1 %tobool1.not.i386.us, label %if.end5.i391.us, label %if.then2.i387.us

if.then2.i387.us:                                 ; preds = %if.then.i384.us
  %used_for_reference.i388.us = getelementptr inbounds i8, ptr %69, i64 44
  store i32 0, ptr %used_for_reference.i388.us, align 4
  %70 = load ptr, ptr %top_field.i385.us, align 8
  %is_long_term.i389.us = getelementptr inbounds i8, ptr %70, i64 40
  store i8 0, ptr %is_long_term.i389.us, align 8
  %.pre.i390.us = load i32, ptr %64, align 8
  br label %if.end5.i391.us

if.end5.i391.us:                                  ; preds = %if.then2.i387.us, %if.then.i384.us, %if.then83.us
  %71 = phi i32 [ %68, %if.then.i384.us ], [ %.pre.i390.us, %if.then2.i387.us ], [ %68, %if.then83.us ]
  %and7.i392.us = and i32 %71, 2
  %tobool8.not.i393.us = icmp eq i32 %and7.i392.us, 0
  br i1 %tobool8.not.i393.us, label %if.end17.i401.us, label %if.then9.i394.us

if.then9.i394.us:                                 ; preds = %if.end5.i391.us
  %bottom_field.i395.us = getelementptr inbounds i8, ptr %64, i64 64
  %72 = load ptr, ptr %bottom_field.i395.us, align 8
  %tobool10.not.i396.us = icmp eq ptr %72, null
  br i1 %tobool10.not.i396.us, label %if.end17.i401.us, label %if.then11.i397.us

if.then11.i397.us:                                ; preds = %if.then9.i394.us
  %used_for_reference13.i398.us = getelementptr inbounds i8, ptr %72, i64 44
  store i32 0, ptr %used_for_reference13.i398.us, align 4
  %73 = load ptr, ptr %bottom_field.i395.us, align 8
  %is_long_term15.i399.us = getelementptr inbounds i8, ptr %73, i64 40
  store i8 0, ptr %is_long_term15.i399.us, align 8
  %.pr.pre.i400.us = load i32, ptr %64, align 8
  br label %if.end17.i401.us

if.end17.i401.us:                                 ; preds = %if.then11.i397.us, %if.then9.i394.us, %if.end5.i391.us
  %74 = phi i32 [ %71, %if.end5.i391.us ], [ %.pr.pre.i400.us, %if.then11.i397.us ], [ %71, %if.then9.i394.us ]
  %cmp.i402.us = icmp eq i32 %74, 3
  br i1 %cmp.i402.us, label %if.then19.i405.us, label %for.inc.us551.sink.split

if.then19.i405.us:                                ; preds = %if.end17.i401.us
  %top_field20.i406.us = getelementptr inbounds i8, ptr %64, i64 56
  %75 = load ptr, ptr %top_field20.i406.us, align 8
  %tobool21.not.i407.us = icmp eq ptr %75, null
  br i1 %tobool21.not.i407.us, label %for.inc.us551.sink.split.sink.split, label %land.lhs.true.i408.us

land.lhs.true.i408.us:                            ; preds = %if.then19.i405.us
  %bottom_field22.i409.us = getelementptr inbounds i8, ptr %64, i64 64
  %76 = load ptr, ptr %bottom_field22.i409.us, align 8
  %tobool23.not.i410.us = icmp eq ptr %76, null
  br i1 %tobool23.not.i410.us, label %for.inc.us551.sink.split.sink.split, label %for.inc.us551.sink.split.sink.split.sink.split

if.then73.us:                                     ; preds = %if.then10.us550
  %77 = load i32, ptr %64, align 8
  %and.i343.us = and i32 %77, 1
  %tobool.not.i344.us = icmp eq i32 %and.i343.us, 0
  br i1 %tobool.not.i344.us, label %if.end5.i352.us, label %if.then.i345.us

if.then.i345.us:                                  ; preds = %if.then73.us
  %top_field.i346.us = getelementptr inbounds i8, ptr %64, i64 56
  %78 = load ptr, ptr %top_field.i346.us, align 8
  %tobool1.not.i347.us = icmp eq ptr %78, null
  br i1 %tobool1.not.i347.us, label %if.end5.i352.us, label %if.then2.i348.us

if.then2.i348.us:                                 ; preds = %if.then.i345.us
  %used_for_reference.i349.us = getelementptr inbounds i8, ptr %78, i64 44
  store i32 0, ptr %used_for_reference.i349.us, align 4
  %79 = load ptr, ptr %top_field.i346.us, align 8
  %is_long_term.i350.us = getelementptr inbounds i8, ptr %79, i64 40
  store i8 0, ptr %is_long_term.i350.us, align 8
  %.pre.i351.us = load i32, ptr %64, align 8
  br label %if.end5.i352.us

if.end5.i352.us:                                  ; preds = %if.then2.i348.us, %if.then.i345.us, %if.then73.us
  %80 = phi i32 [ %77, %if.then.i345.us ], [ %.pre.i351.us, %if.then2.i348.us ], [ %77, %if.then73.us ]
  %and7.i353.us = and i32 %80, 2
  %tobool8.not.i354.us = icmp eq i32 %and7.i353.us, 0
  br i1 %tobool8.not.i354.us, label %if.end17.i362.us, label %if.then9.i355.us

if.then9.i355.us:                                 ; preds = %if.end5.i352.us
  %bottom_field.i356.us = getelementptr inbounds i8, ptr %64, i64 64
  %81 = load ptr, ptr %bottom_field.i356.us, align 8
  %tobool10.not.i357.us = icmp eq ptr %81, null
  br i1 %tobool10.not.i357.us, label %if.end17.i362.us, label %if.then11.i358.us

if.then11.i358.us:                                ; preds = %if.then9.i355.us
  %used_for_reference13.i359.us = getelementptr inbounds i8, ptr %81, i64 44
  store i32 0, ptr %used_for_reference13.i359.us, align 4
  %82 = load ptr, ptr %bottom_field.i356.us, align 8
  %is_long_term15.i360.us = getelementptr inbounds i8, ptr %82, i64 40
  store i8 0, ptr %is_long_term15.i360.us, align 8
  %.pr.pre.i361.us = load i32, ptr %64, align 8
  br label %if.end17.i362.us

if.end17.i362.us:                                 ; preds = %if.then11.i358.us, %if.then9.i355.us, %if.end5.i352.us
  %83 = phi i32 [ %80, %if.end5.i352.us ], [ %.pr.pre.i361.us, %if.then11.i358.us ], [ %80, %if.then9.i355.us ]
  %cmp.i363.us = icmp eq i32 %83, 3
  br i1 %cmp.i363.us, label %if.then19.i366.us, label %for.inc.us551.sink.split

if.then19.i366.us:                                ; preds = %if.end17.i362.us
  %top_field20.i367.us = getelementptr inbounds i8, ptr %64, i64 56
  %84 = load ptr, ptr %top_field20.i367.us, align 8
  %tobool21.not.i368.us = icmp eq ptr %84, null
  br i1 %tobool21.not.i368.us, label %for.inc.us551.sink.split.sink.split, label %land.lhs.true.i369.us

land.lhs.true.i369.us:                            ; preds = %if.then19.i366.us
  %bottom_field22.i370.us = getelementptr inbounds i8, ptr %64, i64 64
  %85 = load ptr, ptr %bottom_field22.i370.us, align 8
  %tobool23.not.i371.us = icmp eq ptr %85, null
  br i1 %tobool23.not.i371.us, label %for.inc.us551.sink.split.sink.split, label %for.inc.us551.sink.split.sink.split.sink.split

if.else87.us:                                     ; preds = %if.then10.us550
  br i1 %tobool88.not, label %if.else112.us, label %if.then89.us

if.then89.us:                                     ; preds = %if.else87.us
  %86 = load ptr, ptr %last_picture90, align 8
  %tobool91.not.us = icmp eq ptr %86, null
  br i1 %tobool91.not.us, label %if.else107.us, label %if.then92.us

if.then92.us:                                     ; preds = %if.then89.us
  %cmp97.not.us = icmp eq ptr %86, %64
  br i1 %cmp97.not.us, label %lor.lhs.false98.us, label %if.then102.us

lor.lhs.false98.us:                               ; preds = %if.then92.us
  %frame_num100.us = getelementptr inbounds i8, ptr %86, i64 20
  %87 = load i32, ptr %frame_num100.us, align 4
  %cmp101.not.us = icmp eq i32 %87, %curr_frame_num
  br i1 %cmp101.not.us, label %for.inc.us551, label %if.then102.us

if.then102.us:                                    ; preds = %lor.lhs.false98.us, %if.then92.us
  %88 = load i32, ptr %64, align 8
  %and.i421.us = and i32 %88, 1
  %tobool.not.i422.us = icmp eq i32 %and.i421.us, 0
  br i1 %tobool.not.i422.us, label %if.end5.i430.us, label %if.then.i423.us

if.then.i423.us:                                  ; preds = %if.then102.us
  %top_field.i424.us = getelementptr inbounds i8, ptr %64, i64 56
  %89 = load ptr, ptr %top_field.i424.us, align 8
  %tobool1.not.i425.us = icmp eq ptr %89, null
  br i1 %tobool1.not.i425.us, label %if.end5.i430.us, label %if.then2.i426.us

if.then2.i426.us:                                 ; preds = %if.then.i423.us
  %used_for_reference.i427.us = getelementptr inbounds i8, ptr %89, i64 44
  store i32 0, ptr %used_for_reference.i427.us, align 4
  %90 = load ptr, ptr %top_field.i424.us, align 8
  %is_long_term.i428.us = getelementptr inbounds i8, ptr %90, i64 40
  store i8 0, ptr %is_long_term.i428.us, align 8
  %.pre.i429.us = load i32, ptr %64, align 8
  br label %if.end5.i430.us

if.end5.i430.us:                                  ; preds = %if.then2.i426.us, %if.then.i423.us, %if.then102.us
  %91 = phi i32 [ %88, %if.then.i423.us ], [ %.pre.i429.us, %if.then2.i426.us ], [ %88, %if.then102.us ]
  %and7.i431.us = and i32 %91, 2
  %tobool8.not.i432.us = icmp eq i32 %and7.i431.us, 0
  br i1 %tobool8.not.i432.us, label %if.end17.i440.us, label %if.then9.i433.us

if.then9.i433.us:                                 ; preds = %if.end5.i430.us
  %bottom_field.i434.us = getelementptr inbounds i8, ptr %64, i64 64
  %92 = load ptr, ptr %bottom_field.i434.us, align 8
  %tobool10.not.i435.us = icmp eq ptr %92, null
  br i1 %tobool10.not.i435.us, label %if.end17.i440.us, label %if.then11.i436.us

if.then11.i436.us:                                ; preds = %if.then9.i433.us
  %used_for_reference13.i437.us = getelementptr inbounds i8, ptr %92, i64 44
  store i32 0, ptr %used_for_reference13.i437.us, align 4
  %93 = load ptr, ptr %bottom_field.i434.us, align 8
  %is_long_term15.i438.us = getelementptr inbounds i8, ptr %93, i64 40
  store i8 0, ptr %is_long_term15.i438.us, align 8
  %.pr.pre.i439.us = load i32, ptr %64, align 8
  br label %if.end17.i440.us

if.end17.i440.us:                                 ; preds = %if.then11.i436.us, %if.then9.i433.us, %if.end5.i430.us
  %94 = phi i32 [ %91, %if.end5.i430.us ], [ %.pr.pre.i439.us, %if.then11.i436.us ], [ %91, %if.then9.i433.us ]
  %cmp.i441.us = icmp eq i32 %94, 3
  br i1 %cmp.i441.us, label %if.then19.i444.us, label %for.inc.us551.sink.split

if.then19.i444.us:                                ; preds = %if.end17.i440.us
  %top_field20.i445.us = getelementptr inbounds i8, ptr %64, i64 56
  %95 = load ptr, ptr %top_field20.i445.us, align 8
  %tobool21.not.i446.us = icmp eq ptr %95, null
  br i1 %tobool21.not.i446.us, label %for.inc.us551.sink.split.sink.split, label %land.lhs.true.i447.us

land.lhs.true.i447.us:                            ; preds = %if.then19.i444.us
  %bottom_field22.i448.us = getelementptr inbounds i8, ptr %64, i64 64
  %96 = load ptr, ptr %bottom_field22.i448.us, align 8
  %tobool23.not.i449.us = icmp eq ptr %96, null
  br i1 %tobool23.not.i449.us, label %for.inc.us551.sink.split.sink.split, label %for.inc.us551.sink.split.sink.split.sink.split

if.else107.us:                                    ; preds = %if.then89.us
  %97 = load i32, ptr %64, align 8
  %and.i460.us = and i32 %97, 1
  %tobool.not.i461.us = icmp eq i32 %and.i460.us, 0
  br i1 %tobool.not.i461.us, label %if.end5.i469.us, label %if.then.i462.us

if.then.i462.us:                                  ; preds = %if.else107.us
  %top_field.i463.us = getelementptr inbounds i8, ptr %64, i64 56
  %98 = load ptr, ptr %top_field.i463.us, align 8
  %tobool1.not.i464.us = icmp eq ptr %98, null
  br i1 %tobool1.not.i464.us, label %if.end5.i469.us, label %if.then2.i465.us

if.then2.i465.us:                                 ; preds = %if.then.i462.us
  %used_for_reference.i466.us = getelementptr inbounds i8, ptr %98, i64 44
  store i32 0, ptr %used_for_reference.i466.us, align 4
  %99 = load ptr, ptr %top_field.i463.us, align 8
  %is_long_term.i467.us = getelementptr inbounds i8, ptr %99, i64 40
  store i8 0, ptr %is_long_term.i467.us, align 8
  %.pre.i468.us = load i32, ptr %64, align 8
  br label %if.end5.i469.us

if.end5.i469.us:                                  ; preds = %if.then2.i465.us, %if.then.i462.us, %if.else107.us
  %100 = phi i32 [ %97, %if.then.i462.us ], [ %.pre.i468.us, %if.then2.i465.us ], [ %97, %if.else107.us ]
  %and7.i470.us = and i32 %100, 2
  %tobool8.not.i471.us = icmp eq i32 %and7.i470.us, 0
  br i1 %tobool8.not.i471.us, label %if.end17.i479.us, label %if.then9.i472.us

if.then9.i472.us:                                 ; preds = %if.end5.i469.us
  %bottom_field.i473.us = getelementptr inbounds i8, ptr %64, i64 64
  %101 = load ptr, ptr %bottom_field.i473.us, align 8
  %tobool10.not.i474.us = icmp eq ptr %101, null
  br i1 %tobool10.not.i474.us, label %if.end17.i479.us, label %if.then11.i475.us

if.then11.i475.us:                                ; preds = %if.then9.i472.us
  %used_for_reference13.i476.us = getelementptr inbounds i8, ptr %101, i64 44
  store i32 0, ptr %used_for_reference13.i476.us, align 4
  %102 = load ptr, ptr %bottom_field.i473.us, align 8
  %is_long_term15.i477.us = getelementptr inbounds i8, ptr %102, i64 40
  store i8 0, ptr %is_long_term15.i477.us, align 8
  %.pr.pre.i478.us = load i32, ptr %64, align 8
  br label %if.end17.i479.us

if.end17.i479.us:                                 ; preds = %if.then11.i475.us, %if.then9.i472.us, %if.end5.i469.us
  %103 = phi i32 [ %100, %if.end5.i469.us ], [ %.pr.pre.i478.us, %if.then11.i475.us ], [ %100, %if.then9.i472.us ]
  %cmp.i480.us = icmp eq i32 %103, 3
  br i1 %cmp.i480.us, label %if.then19.i483.us, label %for.inc.us551.sink.split

if.then19.i483.us:                                ; preds = %if.end17.i479.us
  %top_field20.i484.us = getelementptr inbounds i8, ptr %64, i64 56
  %104 = load ptr, ptr %top_field20.i484.us, align 8
  %tobool21.not.i485.us = icmp eq ptr %104, null
  br i1 %tobool21.not.i485.us, label %for.inc.us551.sink.split.sink.split, label %land.lhs.true.i486.us

land.lhs.true.i486.us:                            ; preds = %if.then19.i483.us
  %bottom_field22.i487.us = getelementptr inbounds i8, ptr %64, i64 64
  %105 = load ptr, ptr %bottom_field22.i487.us, align 8
  %tobool23.not.i488.us = icmp eq ptr %105, null
  br i1 %tobool23.not.i488.us, label %for.inc.us551.sink.split.sink.split, label %for.inc.us551.sink.split.sink.split.sink.split

if.else112.us:                                    ; preds = %if.else87.us
  %frame_num116.us = getelementptr inbounds i8, ptr %64, i64 20
  %106 = load i32, ptr %frame_num116.us, align 4
  %cmp118.not.us = icmp eq i32 %106, %shr117
  br i1 %cmp118.not.us, label %for.inc.us551, label %if.then119.us

if.then119.us:                                    ; preds = %if.else112.us
  %107 = load i32, ptr %64, align 8
  %and.i499.us = and i32 %107, 1
  %tobool.not.i500.us = icmp eq i32 %and.i499.us, 0
  br i1 %tobool.not.i500.us, label %if.end5.i508.us, label %if.then.i501.us

if.then.i501.us:                                  ; preds = %if.then119.us
  %top_field.i502.us = getelementptr inbounds i8, ptr %64, i64 56
  %108 = load ptr, ptr %top_field.i502.us, align 8
  %tobool1.not.i503.us = icmp eq ptr %108, null
  br i1 %tobool1.not.i503.us, label %if.end5.i508.us, label %if.then2.i504.us

if.then2.i504.us:                                 ; preds = %if.then.i501.us
  %used_for_reference.i505.us = getelementptr inbounds i8, ptr %108, i64 44
  store i32 0, ptr %used_for_reference.i505.us, align 4
  %109 = load ptr, ptr %top_field.i502.us, align 8
  %is_long_term.i506.us = getelementptr inbounds i8, ptr %109, i64 40
  store i8 0, ptr %is_long_term.i506.us, align 8
  %.pre.i507.us = load i32, ptr %64, align 8
  br label %if.end5.i508.us

if.end5.i508.us:                                  ; preds = %if.then2.i504.us, %if.then.i501.us, %if.then119.us
  %110 = phi i32 [ %107, %if.then.i501.us ], [ %.pre.i507.us, %if.then2.i504.us ], [ %107, %if.then119.us ]
  %and7.i509.us = and i32 %110, 2
  %tobool8.not.i510.us = icmp eq i32 %and7.i509.us, 0
  br i1 %tobool8.not.i510.us, label %if.end17.i518.us, label %if.then9.i511.us

if.then9.i511.us:                                 ; preds = %if.end5.i508.us
  %bottom_field.i512.us = getelementptr inbounds i8, ptr %64, i64 64
  %111 = load ptr, ptr %bottom_field.i512.us, align 8
  %tobool10.not.i513.us = icmp eq ptr %111, null
  br i1 %tobool10.not.i513.us, label %if.end17.i518.us, label %if.then11.i514.us

if.then11.i514.us:                                ; preds = %if.then9.i511.us
  %used_for_reference13.i515.us = getelementptr inbounds i8, ptr %111, i64 44
  store i32 0, ptr %used_for_reference13.i515.us, align 4
  %112 = load ptr, ptr %bottom_field.i512.us, align 8
  %is_long_term15.i516.us = getelementptr inbounds i8, ptr %112, i64 40
  store i8 0, ptr %is_long_term15.i516.us, align 8
  %.pr.pre.i517.us = load i32, ptr %64, align 8
  br label %if.end17.i518.us

if.end17.i518.us:                                 ; preds = %if.then11.i514.us, %if.then9.i511.us, %if.end5.i508.us
  %113 = phi i32 [ %110, %if.end5.i508.us ], [ %.pr.pre.i517.us, %if.then11.i514.us ], [ %110, %if.then9.i511.us ]
  %cmp.i519.us = icmp eq i32 %113, 3
  br i1 %cmp.i519.us, label %if.then19.i522.us, label %for.inc.us551.sink.split

if.then19.i522.us:                                ; preds = %if.end17.i518.us
  %top_field20.i523.us = getelementptr inbounds i8, ptr %64, i64 56
  %114 = load ptr, ptr %top_field20.i523.us, align 8
  %tobool21.not.i524.us = icmp eq ptr %114, null
  br i1 %tobool21.not.i524.us, label %for.inc.us551.sink.split.sink.split, label %land.lhs.true.i525.us

land.lhs.true.i525.us:                            ; preds = %if.then19.i522.us
  %bottom_field22.i526.us = getelementptr inbounds i8, ptr %64, i64 64
  %115 = load ptr, ptr %bottom_field22.i526.us, align 8
  %tobool23.not.i527.us = icmp eq ptr %115, null
  br i1 %tobool23.not.i527.us, label %for.inc.us551.sink.split.sink.split, label %for.inc.us551.sink.split.sink.split.sink.split

for.inc.us551.sink.split.sink.split.sink.split:   ; preds = %land.lhs.true.i525.us, %land.lhs.true.i486.us, %land.lhs.true.i447.us, %land.lhs.true.i369.us, %land.lhs.true.i408.us
  %.sink568 = phi ptr [ %75, %land.lhs.true.i408.us ], [ %84, %land.lhs.true.i369.us ], [ %95, %land.lhs.true.i447.us ], [ %104, %land.lhs.true.i486.us ], [ %114, %land.lhs.true.i525.us ]
  %top_field20.i523.us.sink = phi ptr [ %top_field20.i406.us, %land.lhs.true.i408.us ], [ %top_field20.i367.us, %land.lhs.true.i369.us ], [ %top_field20.i445.us, %land.lhs.true.i447.us ], [ %top_field20.i484.us, %land.lhs.true.i486.us ], [ %top_field20.i523.us, %land.lhs.true.i525.us ]
  %bottom_field22.i526.us.sink566 = phi ptr [ %bottom_field22.i409.us, %land.lhs.true.i408.us ], [ %bottom_field22.i370.us, %land.lhs.true.i369.us ], [ %bottom_field22.i448.us, %land.lhs.true.i447.us ], [ %bottom_field22.i487.us, %land.lhs.true.i486.us ], [ %bottom_field22.i526.us, %land.lhs.true.i525.us ]
  %used_for_reference26.i529.us = getelementptr inbounds i8, ptr %.sink568, i64 44
  store i32 0, ptr %used_for_reference26.i529.us, align 4
  %116 = load ptr, ptr %top_field20.i523.us.sink, align 8
  %is_long_term28.i530.us = getelementptr inbounds i8, ptr %116, i64 40
  store i8 0, ptr %is_long_term28.i530.us, align 8
  %117 = load ptr, ptr %bottom_field22.i526.us.sink566, align 8
  %used_for_reference30.i531.us = getelementptr inbounds i8, ptr %117, i64 44
  store i32 0, ptr %used_for_reference30.i531.us, align 4
  %118 = load ptr, ptr %bottom_field22.i526.us.sink566, align 8
  %is_long_term32.i532.us = getelementptr inbounds i8, ptr %118, i64 40
  store i8 0, ptr %is_long_term32.i532.us, align 8
  br label %for.inc.us551.sink.split.sink.split

for.inc.us551.sink.split.sink.split:              ; preds = %for.inc.us551.sink.split.sink.split.sink.split, %if.then19.i522.us, %land.lhs.true.i525.us, %if.then19.i483.us, %land.lhs.true.i486.us, %if.then19.i444.us, %land.lhs.true.i447.us, %if.then19.i366.us, %land.lhs.true.i369.us, %if.then19.i405.us, %land.lhs.true.i408.us
  %frame.i534.us = getelementptr inbounds i8, ptr %64, i64 48
  %119 = load ptr, ptr %frame.i534.us, align 8
  %used_for_reference34.i535.us = getelementptr inbounds i8, ptr %119, i64 44
  store i32 0, ptr %used_for_reference34.i535.us, align 4
  %120 = load ptr, ptr %frame.i534.us, align 8
  %is_long_term36.i536.us = getelementptr inbounds i8, ptr %120, i64 40
  store i8 0, ptr %is_long_term36.i536.us, align 8
  br label %for.inc.us551.sink.split

for.inc.us551.sink.split:                         ; preds = %for.inc.us551.sink.split.sink.split, %if.end17.i518.us, %if.end17.i479.us, %if.end17.i440.us, %if.end17.i362.us, %if.end17.i401.us
  %is_reference.i520.us = getelementptr inbounds i8, ptr %64, i64 4
  store i32 0, ptr %is_reference.i520.us, align 4
  store i32 0, ptr %is_long_term71.us, align 8
  br label %for.inc.us551

for.inc.us551:                                    ; preds = %for.inc.us551.sink.split, %if.else112.us, %lor.lhs.false98.us, %if.then4.us547, %for.body.us541
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %121 = load i32, ptr %ltref_frames_in_buffer, align 4
  %122 = zext i32 %121 to i64
  %cmp2.us553 = icmp ult i64 %indvars.iv.next, %122
  br i1 %cmp2.us553, label %for.body.us541, label %for.end

for.end:                                          ; preds = %for.inc.us551, %for.inc.us, %for.body.lr.ph, %if.end
  ret void
}

declare void @calculate_frame_no(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @find_snr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @remove_frame_from_dpb(ptr nocapture noundef %p_Dpb, i32 noundef %pos) unnamed_addr #1 {
entry:
  %fs1 = getelementptr inbounds i8, ptr %p_Dpb, i64 16
  %0 = load ptr, ptr %fs1, align 8
  %idxprom = sext i32 %pos to i64
  %arrayidx = getelementptr inbounds ptr, ptr %0, i64 %idxprom
  %1 = load ptr, ptr %arrayidx, align 8
  %2 = load i32, ptr %1, align 8
  switch i32 %2, label %sw.default [
    i32 3, label %sw.bb
    i32 2, label %sw.bb5
    i32 1, label %sw.bb8
    i32 0, label %sw.epilog
  ]

sw.bb:                                            ; preds = %entry
  %frame = getelementptr inbounds i8, ptr %1, i64 48
  %3 = load ptr, ptr %frame, align 8
  tail call void @free_storable_picture(ptr noundef %3)
  %top_field = getelementptr inbounds i8, ptr %1, i64 56
  %4 = load ptr, ptr %top_field, align 8
  tail call void @free_storable_picture(ptr noundef %4)
  %bottom_field = getelementptr inbounds i8, ptr %1, i64 64
  %5 = load ptr, ptr %bottom_field, align 8
  tail call void @free_storable_picture(ptr noundef %5)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %frame, i8 0, i64 24, i1 false)
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  %bottom_field6 = getelementptr inbounds i8, ptr %1, i64 64
  %6 = load ptr, ptr %bottom_field6, align 8
  tail call void @free_storable_picture(ptr noundef %6)
  store ptr null, ptr %bottom_field6, align 8
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  %top_field9 = getelementptr inbounds i8, ptr %1, i64 56
  %7 = load ptr, ptr %top_field9, align 8
  tail call void @free_storable_picture(ptr noundef %7)
  store ptr null, ptr %top_field9, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  tail call void @error(ptr noundef nonnull @.str.38, i32 noundef 500) #20
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %entry, %sw.bb8, %sw.bb5, %sw.bb
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %8 = load ptr, ptr %fs1, align 8
  %arrayidx14 = getelementptr inbounds ptr, ptr %8, i64 %idxprom
  %9 = load ptr, ptr %arrayidx14, align 8
  %used_size = getelementptr inbounds i8, ptr %p_Dpb, i64 44
  %10 = load i32, ptr %used_size, align 4
  %sub53 = add i32 %10, -1
  %cmp54 = icmp ugt i32 %sub53, %pos
  br i1 %cmp54, label %for.body.preheader, label %sw.epilog.for.end_crit_edge

sw.epilog.for.end_crit_edge:                      ; preds = %sw.epilog
  %.pre58 = zext i32 %sub53 to i64
  br label %for.end

for.body.preheader:                               ; preds = %sw.epilog
  %11 = zext i32 %pos to i64
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.body
  %indvars.iv = phi i64 [ %11, %for.body.preheader ], [ %indvars.iv.next, %for.body ]
  %12 = load ptr, ptr %fs1, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %arrayidx17 = getelementptr inbounds ptr, ptr %12, i64 %indvars.iv.next
  %13 = load ptr, ptr %arrayidx17, align 8
  %arrayidx20 = getelementptr inbounds ptr, ptr %12, i64 %indvars.iv
  store ptr %13, ptr %arrayidx20, align 8
  %14 = load i32, ptr %used_size, align 4
  %sub = add i32 %14, -1
  %15 = zext i32 %sub to i64
  %cmp = icmp ult i64 %indvars.iv.next, %15
  br i1 %cmp, label %for.body, label %for.end.loopexit

for.end.loopexit:                                 ; preds = %for.body
  %.pre = load ptr, ptr %fs1, align 8
  br label %for.end

for.end:                                          ; preds = %sw.epilog.for.end_crit_edge, %for.end.loopexit
  %idxprom24.pre-phi = phi i64 [ %.pre58, %sw.epilog.for.end_crit_edge ], [ %15, %for.end.loopexit ]
  %16 = phi ptr [ %8, %sw.epilog.for.end_crit_edge ], [ %.pre, %for.end.loopexit ]
  %arrayidx25 = getelementptr inbounds ptr, ptr %16, i64 %idxprom24.pre-phi
  store ptr %9, ptr %arrayidx25, align 8
  %17 = load i32, ptr %used_size, align 4
  %dec = add i32 %17, -1
  store i32 %dec, ptr %used_size, align 4
  ret void
}

declare void @write_lost_ref_after_idr(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @write_lost_non_ref_pic(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @write_stored_frame(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #18

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.abs.i8(i8, i1 immarg) #18

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #15 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #16 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nofree nounwind }
attributes #20 = { nounwind }
attributes #21 = { nounwind allocsize(0,1) }
attributes #22 = { nounwind allocsize(1) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!5 = !{ptr @is_long_ref, ptr @is_short_ref}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.unroll.disable"}
!8 = distinct !{!8, !9, !10}
!9 = !{!"llvm.loop.isvectorized", i32 1}
!10 = !{!"llvm.loop.unroll.runtime.disable"}
!11 = distinct !{!11, !10, !9}
!12 = distinct !{!12, !7}
!13 = distinct !{!13, !9, !10}
!14 = distinct !{!14, !10, !9}
!15 = distinct !{!15, !9, !10}
!16 = distinct !{!16, !10, !9}
