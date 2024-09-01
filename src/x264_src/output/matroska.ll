; ModuleID = 'x264_src/output/matroska.c'
source_filename = "x264_src/output/matroska.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cli_output_t = type { ptr, ptr, ptr, ptr, ptr }

@mkv_output = dso_local local_unnamed_addr constant %struct.cli_output_t { ptr @open_file, ptr @set_param, ptr @write_headers, ptr @write_frame, ptr @close_file }, align 8
@.str = private unnamed_addr constant [5 x i8] c"x264\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"V_MPEG4/ISO/AVC\00", align 1

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @open_file(ptr noundef %psz_filename, ptr nocapture noundef writeonly %p_handle) #0 {
entry:
  store ptr null, ptr %p_handle, align 8
  %calloc = tail call dereferenceable_or_null(48) ptr @calloc(i64 1, i64 48)
  %tobool.not = icmp eq ptr %calloc, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @mk_create_writer(ptr noundef %psz_filename) #7
  store ptr %call1, ptr %calloc, align 8
  %tobool3.not = icmp eq ptr %call1, null
  br i1 %tobool3.not, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  tail call void @free(ptr noundef nonnull %calloc) #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  store ptr %calloc, ptr %p_handle, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end5, %if.then4
  %retval.0 = phi i32 [ 0, %if.end5 ], [ -1, %if.then4 ], [ -1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal noundef i32 @set_param(ptr nocapture noundef writeonly %handle, ptr nocapture noundef readonly %p_param) #1 {
entry:
  %i_fps_num = getelementptr inbounds i8, ptr %p_param, i64 652
  %0 = load i32, ptr %i_fps_num, align 4
  %cmp.not = icmp eq i32 %0, 0
  br i1 %cmp.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %b_vfr_input = getelementptr inbounds i8, ptr %p_param, i64 648
  %1 = load i32, ptr %b_vfr_input, align 8
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %i_fps_den = getelementptr inbounds i8, ptr %p_param, i64 656
  %2 = load i32, ptr %i_fps_den, align 8
  %conv = zext i32 %2 to i64
  %mul = mul nuw nsw i64 %conv, 1000000000
  %conv2 = zext i32 %0 to i64
  %div = udiv i64 %mul, %conv2
  br label %if.end

if.end:                                           ; preds = %entry, %land.lhs.true, %if.then
  %.sink = phi i64 [ %div, %if.then ], [ 0, %land.lhs.true ], [ 0, %entry ]
  %frame_duration3 = getelementptr inbounds i8, ptr %handle, i64 24
  store i64 %.sink, ptr %frame_duration3, align 8
  %i_width = getelementptr inbounds i8, ptr %p_param, i64 20
  %3 = load i32, ptr %i_width, align 4
  %width = getelementptr inbounds i8, ptr %handle, i64 8
  store i32 %3, ptr %width, align 8
  %i_height = getelementptr inbounds i8, ptr %p_param, i64 24
  %4 = load i32, ptr %i_height, align 8
  %height = getelementptr inbounds i8, ptr %handle, i64 12
  store i32 %4, ptr %height, align 4
  %i_sar_width = getelementptr inbounds i8, ptr %p_param, i64 48
  %5 = load i32, ptr %i_sar_width, align 4
  %tobool4.not = icmp eq i32 %5, 0
  br i1 %tobool4.not, label %if.else21, label %land.lhs.true5

land.lhs.true5:                                   ; preds = %if.end
  %vui = getelementptr inbounds i8, ptr %p_param, i64 44
  %6 = load i32, ptr %vui, align 4
  %tobool7.not = icmp eq i32 %6, 0
  br i1 %tobool7.not, label %if.else21, label %if.then8

if.then8:                                         ; preds = %land.lhs.true5
  %7 = load i32, ptr %i_width, align 4
  %conv10 = sext i32 %7 to i64
  %conv13 = sext i32 %5 to i64
  %mul14 = mul nsw i64 %conv10, %conv13
  %conv16 = sext i32 %4 to i64
  %conv19 = sext i32 %6 to i64
  %mul20 = mul nsw i64 %conv16, %conv19
  br label %if.end26

if.else21:                                        ; preds = %land.lhs.true5, %if.end
  %8 = load i32, ptr %i_width, align 4
  %conv23 = sext i32 %8 to i64
  %conv25 = sext i32 %4 to i64
  br label %if.end26

if.end26:                                         ; preds = %if.else21, %if.then8
  %dh.0 = phi i64 [ %mul20, %if.then8 ], [ %conv25, %if.else21 ]
  %dw.0 = phi i64 [ %mul14, %if.then8 ], [ %conv23, %if.else21 ]
  %cmp27 = icmp sgt i64 %dw.0, 0
  %cmp30 = icmp sgt i64 %dh.0, 0
  %or.cond = select i1 %cmp27, i1 %cmp30, i1 false
  br i1 %or.cond, label %while.body.i, label %if.end35

while.body.i:                                     ; preds = %if.end26, %while.body.i
  %a.addr.0.i = phi i64 [ %b.addr.0.i, %while.body.i ], [ %dw.0, %if.end26 ]
  %b.addr.0.i = phi i64 [ %rem.i, %while.body.i ], [ %dh.0, %if.end26 ]
  %rem.i = urem i64 %a.addr.0.i, %b.addr.0.i
  %tobool.not.not.i = icmp eq i64 %rem.i, 0
  br i1 %tobool.not.not.i, label %gcd.exit, label %while.body.i

gcd.exit:                                         ; preds = %while.body.i
  %div33 = sdiv i64 %dw.0, %b.addr.0.i
  %div34 = sdiv i64 %dh.0, %b.addr.0.i
  br label %if.end35

if.end35:                                         ; preds = %gcd.exit, %if.end26
  %dh.1 = phi i64 [ %div34, %gcd.exit ], [ %dh.0, %if.end26 ]
  %dw.1 = phi i64 [ %div33, %gcd.exit ], [ %dw.0, %if.end26 ]
  %conv36 = trunc i64 %dw.1 to i32
  %d_width = getelementptr inbounds i8, ptr %handle, i64 16
  store i32 %conv36, ptr %d_width, align 8
  %conv37 = trunc i64 %dh.1 to i32
  %d_height = getelementptr inbounds i8, ptr %handle, i64 20
  store i32 %conv37, ptr %d_height, align 4
  %i_timebase_num = getelementptr inbounds i8, ptr %p_param, i64 660
  %9 = load i32, ptr %i_timebase_num, align 4
  %i_timebase_num38 = getelementptr inbounds i8, ptr %handle, i64 36
  store i32 %9, ptr %i_timebase_num38, align 4
  %i_timebase_den = getelementptr inbounds i8, ptr %p_param, i64 664
  %10 = load i32, ptr %i_timebase_den, align 8
  %i_timebase_den39 = getelementptr inbounds i8, ptr %handle, i64 40
  store i32 %10, ptr %i_timebase_den39, align 8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @write_headers(ptr nocapture noundef %handle, ptr nocapture noundef readonly %p_nal) #0 {
entry:
  %i_payload = getelementptr inbounds i8, ptr %p_nal, i64 8
  %0 = load i32, ptr %i_payload, align 8
  %sub = add nsw i32 %0, -4
  %i_payload2 = getelementptr inbounds i8, ptr %p_nal, i64 32
  %1 = load i32, ptr %i_payload2, align 8
  %sub3 = add nsw i32 %1, -4
  %i_payload5 = getelementptr inbounds i8, ptr %p_nal, i64 56
  %2 = load i32, ptr %i_payload5, align 8
  %p_payload = getelementptr inbounds i8, ptr %p_nal, i64 16
  %3 = load ptr, ptr %p_payload, align 8
  %add.ptr = getelementptr inbounds i8, ptr %3, i64 4
  %p_payload8 = getelementptr inbounds i8, ptr %p_nal, i64 40
  %4 = load ptr, ptr %p_payload8, align 8
  %add.ptr9 = getelementptr inbounds i8, ptr %4, i64 4
  %p_payload11 = getelementptr inbounds i8, ptr %p_nal, i64 64
  %5 = load ptr, ptr %p_payload11, align 8
  %width = getelementptr inbounds i8, ptr %handle, i64 8
  %6 = load i32, ptr %width, align 8
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %height = getelementptr inbounds i8, ptr %handle, i64 12
  %7 = load i32, ptr %height, align 4
  %tobool12.not = icmp eq i32 %7, 0
  br i1 %tobool12.not, label %cleanup, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %lor.lhs.false
  %d_width = getelementptr inbounds i8, ptr %handle, i64 16
  %8 = load i32, ptr %d_width, align 8
  %tobool14.not = icmp eq i32 %8, 0
  br i1 %tobool14.not, label %cleanup, label %lor.lhs.false15

lor.lhs.false15:                                  ; preds = %lor.lhs.false13
  %d_height = getelementptr inbounds i8, ptr %handle, i64 20
  %9 = load i32, ptr %d_height, align 4
  %tobool16.not = icmp eq i32 %9, 0
  br i1 %tobool16.not, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false15
  %add18 = add nsw i32 %0, 7
  %add19 = add nsw i32 %add18, %sub3
  %conv = sext i32 %add19 to i64
  %call = tail call noalias ptr @malloc(i64 noundef %conv) #8
  %tobool20.not = icmp eq ptr %call, null
  br i1 %tobool20.not, label %cleanup, label %if.end22

if.end22:                                         ; preds = %if.end
  store i8 1, ptr %call, align 1
  %arrayidx24 = getelementptr inbounds i8, ptr %3, i64 5
  %10 = load i8, ptr %arrayidx24, align 1
  %arrayidx25 = getelementptr inbounds i8, ptr %call, i64 1
  store i8 %10, ptr %arrayidx25, align 1
  %arrayidx26 = getelementptr inbounds i8, ptr %3, i64 6
  %11 = load i8, ptr %arrayidx26, align 1
  %arrayidx27 = getelementptr inbounds i8, ptr %call, i64 2
  store i8 %11, ptr %arrayidx27, align 1
  %arrayidx28 = getelementptr inbounds i8, ptr %3, i64 7
  %12 = load i8, ptr %arrayidx28, align 1
  %arrayidx29 = getelementptr inbounds i8, ptr %call, i64 3
  store i8 %12, ptr %arrayidx29, align 1
  %arrayidx30 = getelementptr inbounds i8, ptr %call, i64 4
  store i8 -1, ptr %arrayidx30, align 1
  %arrayidx31 = getelementptr inbounds i8, ptr %call, i64 5
  store i8 -31, ptr %arrayidx31, align 1
  %shr = lshr i32 %sub, 8
  %conv32 = trunc i32 %shr to i8
  %arrayidx33 = getelementptr inbounds i8, ptr %call, i64 6
  store i8 %conv32, ptr %arrayidx33, align 1
  %conv34 = trunc i32 %sub to i8
  %arrayidx35 = getelementptr inbounds i8, ptr %call, i64 7
  store i8 %conv34, ptr %arrayidx35, align 1
  %add.ptr36 = getelementptr inbounds i8, ptr %call, i64 8
  %conv37 = sext i32 %sub to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr36, ptr nonnull align 1 %add.ptr, i64 %conv37, i1 false)
  %13 = sext i32 %0 to i64
  %14 = getelementptr i8, ptr %call, i64 %13
  %arrayidx39 = getelementptr i8, ptr %14, i64 4
  store i8 1, ptr %arrayidx39, align 1
  %shr40 = lshr i32 %sub3, 8
  %conv41 = trunc i32 %shr40 to i8
  %arrayidx44 = getelementptr i8, ptr %14, i64 5
  store i8 %conv41, ptr %arrayidx44, align 1
  %conv45 = trunc i32 %sub3 to i8
  %arrayidx48 = getelementptr i8, ptr %14, i64 6
  store i8 %conv45, ptr %arrayidx48, align 1
  %add.ptr49 = getelementptr inbounds i8, ptr %call, i64 11
  %add.ptr50 = getelementptr inbounds i8, ptr %add.ptr49, i64 %conv37
  %conv51 = sext i32 %sub3 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr50, ptr nonnull align 1 %add.ptr9, i64 %conv51, i1 false)
  %15 = load ptr, ptr %handle, align 8
  %frame_duration = getelementptr inbounds i8, ptr %handle, i64 24
  %16 = load i64, ptr %frame_duration, align 8
  %call56 = tail call i32 @mk_writeHeader(ptr noundef %15, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull %call, i32 noundef %add19, i64 noundef %16, i64 noundef 50000, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9) #7
  %cmp = icmp slt i32 %call56, 0
  br i1 %cmp, label %cleanup, label %if.end59

if.end59:                                         ; preds = %if.end22
  tail call void @free(ptr noundef nonnull %call) #7
  %b_writing_frame = getelementptr inbounds i8, ptr %handle, i64 32
  %17 = load i8, ptr %b_writing_frame, align 8
  %tobool60.not = icmp eq i8 %17, 0
  br i1 %tobool60.not, label %if.then61, label %if.end69

if.then61:                                        ; preds = %if.end59
  %18 = load ptr, ptr %handle, align 8
  %call63 = tail call i32 @mk_start_frame(ptr noundef %18) #7
  %cmp64 = icmp slt i32 %call63, 0
  br i1 %cmp64, label %cleanup, label %if.end67

if.end67:                                         ; preds = %if.then61
  store i8 1, ptr %b_writing_frame, align 8
  br label %if.end69

if.end69:                                         ; preds = %if.end67, %if.end59
  %19 = load ptr, ptr %handle, align 8
  %call71 = tail call i32 @mk_add_frame_data(ptr noundef %19, ptr noundef %5, i32 noundef %2) #7
  %cmp72 = icmp slt i32 %call71, 0
  br i1 %cmp72, label %cleanup, label %if.end75

if.end75:                                         ; preds = %if.end69
  %add76 = add nsw i32 %2, %sub
  %add77 = add nsw i32 %add76, %sub3
  br label %cleanup

cleanup:                                          ; preds = %if.end69, %if.then61, %if.end22, %if.end, %entry, %lor.lhs.false, %lor.lhs.false13, %lor.lhs.false15, %if.end75
  %retval.0 = phi i32 [ %add77, %if.end75 ], [ -1, %lor.lhs.false15 ], [ -1, %lor.lhs.false13 ], [ -1, %lor.lhs.false ], [ -1, %entry ], [ -1, %if.end ], [ %call56, %if.end22 ], [ -1, %if.then61 ], [ -1, %if.end69 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind uwtable
define internal i32 @write_frame(ptr nocapture noundef %handle, ptr noundef %p_nalu, i32 noundef %i_size, ptr nocapture noundef readonly %p_picture) #0 {
entry:
  %b_writing_frame = getelementptr inbounds i8, ptr %handle, i64 32
  %0 = load i8, ptr %b_writing_frame, align 8
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %handle, align 8
  %call = tail call i32 @mk_start_frame(ptr noundef %1) #7
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %cleanup22, label %if.end

if.end:                                           ; preds = %if.then
  store i8 1, ptr %b_writing_frame, align 8
  br label %if.end3

if.end3:                                          ; preds = %if.end, %entry
  %2 = load ptr, ptr %handle, align 8
  %call5 = tail call i32 @mk_add_frame_data(ptr noundef %2, ptr noundef %p_nalu, i32 noundef %i_size) #7
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %cleanup22, label %if.end8

if.end8:                                          ; preds = %if.end3
  %i_pts = getelementptr inbounds i8, ptr %p_picture, i64 16
  %3 = load i64, ptr %i_pts, align 8
  %conv = sitofp i64 %3 to double
  %mul = fmul double %conv, 1.000000e+09
  %i_timebase_num = getelementptr inbounds i8, ptr %handle, i64 36
  %4 = load i32, ptr %i_timebase_num, align 4
  %conv9 = uitofp i32 %4 to double
  %mul10 = fmul double %mul, %conv9
  %i_timebase_den = getelementptr inbounds i8, ptr %handle, i64 40
  %5 = load i32, ptr %i_timebase_den, align 8
  %conv11 = uitofp i32 %5 to double
  %div = fdiv double %mul10, %conv11
  %add = fadd double %div, 5.000000e-01
  %conv12 = fptosi double %add to i64
  store i8 0, ptr %b_writing_frame, align 8
  %6 = load ptr, ptr %handle, align 8
  %b_keyframe = getelementptr inbounds i8, ptr %p_picture, i64 12
  %7 = load i32, ptr %b_keyframe, align 4
  %8 = load i32, ptr %p_picture, align 8
  %cmp15 = icmp eq i32 %8, 5
  %conv16 = zext i1 %cmp15 to i32
  %call17 = tail call i32 @mk_set_frame_flags(ptr noundef %6, i64 noundef %conv12, i32 noundef %7, i32 noundef %conv16) #7
  %cmp18.inv = icmp sgt i32 %call17, -1
  %.i_size = select i1 %cmp18.inv, i32 %i_size, i32 -1
  br label %cleanup22

cleanup22:                                        ; preds = %if.end3, %if.then, %if.end8
  %retval.1 = phi i32 [ %.i_size, %if.end8 ], [ -1, %if.then ], [ -1, %if.end3 ]
  ret i32 %retval.1
}

; Function Attrs: nounwind uwtable
define internal i32 @close_file(ptr nocapture noundef %handle, i64 noundef %largest_pts, i64 noundef %second_largest_pts) #0 {
entry:
  %sub = sub nsw i64 %largest_pts, %second_largest_pts
  %i_timebase_num = getelementptr inbounds i8, ptr %handle, i64 36
  %0 = load i32, ptr %i_timebase_num, align 4
  %conv = zext i32 %0 to i64
  %mul = mul nsw i64 %sub, %conv
  %i_timebase_den = getelementptr inbounds i8, ptr %handle, i64 40
  %1 = load i32, ptr %i_timebase_den, align 8
  %conv1 = zext i32 %1 to i64
  %div = sdiv i64 %mul, %conv1
  %conv2 = sitofp i64 %div to double
  %add = fadd double %conv2, 5.000000e-01
  %conv3 = fptosi double %add to i64
  %2 = load ptr, ptr %handle, align 8
  %call = tail call i32 @mk_close(ptr noundef %2, i64 noundef %conv3) #7
  tail call void @free(ptr noundef %handle) #7
  ret i32 %call
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #2

declare ptr @mk_create_writer(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

declare i32 @mk_writeHeader(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @mk_start_frame(ptr noundef) local_unnamed_addr #3

declare i32 @mk_add_frame_data(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @mk_set_frame_flags(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @mk_close(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" }
attributes #7 = { nounwind }
attributes #8 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
