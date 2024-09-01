; ModuleID = 'x264_src/input/thread.c'
source_filename = "x264_src/input/thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cli_input_t = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.x264_picture_t = type { i32, i32, i32, i32, i64, i64, ptr, %struct.x264_image_t, %struct.x264_hrd_t, ptr }
%struct.x264_image_t = type { i32, i32, [4 x i32], [4 x ptr] }
%struct.x264_hrd_t = type { double, double, double, double }

@thread_input = dso_local local_unnamed_addr global %struct.cli_input_t { ptr @open_file, ptr @get_frame_total, ptr null, ptr @read_frame, ptr @release_frame, ptr null, ptr @close_file }, align 8
@input = external local_unnamed_addr global %struct.cli_input_t, align 8
@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [29 x i8] c"x264 [error]: malloc failed\0A\00", align 1

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @open_file(ptr nocapture readnone %psz_filename, ptr nocapture noundef %p_handle, ptr nocapture noundef readonly %info, ptr nocapture readnone %opt) #0 {
entry:
  %call = tail call noalias dereferenceable_or_null(224) ptr @malloc(i64 noundef 224) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %0 = load ptr, ptr getelementptr inbounds (i8, ptr @input, i64 16), align 8
  %pic = getelementptr inbounds i8, ptr %call, i64 64
  %1 = load i32, ptr %info, align 4
  %width = getelementptr inbounds i8, ptr %info, i64 44
  %2 = load i32, ptr %width, align 4
  %height = getelementptr inbounds i8, ptr %info, i64 12
  %3 = load i32, ptr %height, align 4
  %call1 = tail call i32 %0(ptr noundef nonnull %pic, i32 noundef %1, i32 noundef %2, i32 noundef %3) #8
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load ptr, ptr @stderr, align 8
  %5 = tail call i64 @fwrite(ptr nonnull @.str, i64 28, i64 1, ptr %4) #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %call, ptr noundef nonnull align 8 dereferenceable(56) @input, i64 56, i1 false)
  %6 = load ptr, ptr %p_handle, align 8
  %p_handle4 = getelementptr inbounds i8, ptr %call, i64 56
  store ptr %6, ptr %p_handle4, align 8
  %in_progress = getelementptr inbounds i8, ptr %call, i64 212
  store i32 0, ptr %in_progress, align 4
  %next_frame = getelementptr inbounds i8, ptr %call, i64 204
  store i32 -1, ptr %next_frame, align 4
  %call5 = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #7
  %next_args = getelementptr inbounds i8, ptr %call, i64 216
  store ptr %call5, ptr %next_args, align 8
  %tobool7.not = icmp eq ptr %call5, null
  br i1 %tobool7.not, label %cleanup, label %if.end9

if.end9:                                          ; preds = %if.end
  store ptr %call, ptr %call5, align 8
  %status = getelementptr inbounds i8, ptr %call5, i64 20
  store i32 0, ptr %status, align 4
  %7 = load ptr, ptr getelementptr inbounds (i8, ptr @input, i64 8), align 8
  %call14 = tail call i32 %7(ptr noundef %6) #8
  %frame_total = getelementptr inbounds i8, ptr %call, i64 208
  store i32 %call14, ptr %frame_total, align 8
  %picture_alloc = getelementptr inbounds i8, ptr %call, i64 16
  %8 = load ptr, ptr %picture_alloc, align 8
  store ptr %8, ptr getelementptr inbounds (i8, ptr @thread_input, i64 16), align 8
  %picture_clean = getelementptr inbounds i8, ptr %call, i64 40
  %9 = load ptr, ptr %picture_clean, align 8
  store ptr %9, ptr getelementptr inbounds (i8, ptr @thread_input, i64 40), align 8
  store ptr %call, ptr %p_handle, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end9, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ 0, %if.end9 ], [ -1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @get_frame_total(ptr nocapture noundef readonly %handle) #1 {
entry:
  %frame_total = getelementptr inbounds i8, ptr %handle, i64 208
  %0 = load i32, ptr %frame_total, align 8
  ret i32 %0
}

; Function Attrs: nounwind uwtable
define internal i32 @read_frame(ptr noundef %p_pic, ptr noundef %handle, i32 noundef %i_frame) #0 {
entry:
  %t = alloca %struct.x264_picture_t, align 8
  %next_frame = getelementptr inbounds i8, ptr %handle, i64 204
  %0 = load i32, ptr %next_frame, align 4
  %cmp = icmp sgt i32 %0, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %next_args = getelementptr inbounds i8, ptr %handle, i64 216
  %1 = load ptr, ptr %next_args, align 8
  %status = getelementptr inbounds i8, ptr %1, i64 20
  %2 = load i32, ptr %status, align 4
  %in_progress = getelementptr inbounds i8, ptr %handle, i64 212
  store i32 0, ptr %in_progress, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %ret.0 = phi i32 [ %2, %if.then ], [ 0, %entry ]
  %cmp2 = icmp eq i32 %0, %i_frame
  br i1 %cmp2, label %do.body, label %if.else

do.body:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %t)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %t, ptr noundef nonnull align 8 dereferenceable(136) %p_pic, i64 136, i1 false)
  %pic = getelementptr inbounds i8, ptr %handle, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %p_pic, ptr noundef nonnull align 8 dereferenceable(136) %pic, i64 136, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %pic, ptr noundef nonnull align 8 dereferenceable(136) %t, i64 136, i1 false)
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %t)
  br label %if.end6

if.else:                                          ; preds = %if.end
  %read_frame = getelementptr inbounds i8, ptr %handle, i64 24
  %3 = load ptr, ptr %read_frame, align 8
  %p_handle = getelementptr inbounds i8, ptr %handle, i64 56
  %4 = load ptr, ptr %p_handle, align 8
  %call = tail call i32 %3(ptr noundef %p_pic, ptr noundef %4, i32 noundef %i_frame) #8
  %or5 = or i32 %call, %ret.0
  br label %if.end6

if.end6:                                          ; preds = %if.else, %do.body
  %ret.1 = phi i32 [ %ret.0, %do.body ], [ %or5, %if.else ]
  %frame_total = getelementptr inbounds i8, ptr %handle, i64 208
  %5 = load i32, ptr %frame_total, align 8
  %tobool.not = icmp eq i32 %5, 0
  %add = add nsw i32 %i_frame, 1
  %cmp8 = icmp slt i32 %add, %5
  %or.cond = select i1 %tobool.not, i1 true, i1 %cmp8
  br i1 %or.cond, label %if.then9, label %if.else18

if.then9:                                         ; preds = %if.end6
  %next_args11 = getelementptr inbounds i8, ptr %handle, i64 216
  %6 = load ptr, ptr %next_args11, align 8
  %i_frame12 = getelementptr inbounds i8, ptr %6, i64 16
  store i32 %add, ptr %i_frame12, align 8
  store i32 %add, ptr %next_frame, align 4
  %pic14 = getelementptr inbounds i8, ptr %handle, i64 64
  %7 = load ptr, ptr %next_args11, align 8
  %pic16 = getelementptr inbounds i8, ptr %7, i64 8
  store ptr %pic14, ptr %pic16, align 8
  %in_progress17 = getelementptr inbounds i8, ptr %handle, i64 212
  store i32 1, ptr %in_progress17, align 4
  br label %if.end20

if.else18:                                        ; preds = %if.end6
  store i32 -1, ptr %next_frame, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.else18, %if.then9
  ret i32 %ret.1
}

; Function Attrs: nounwind uwtable
define internal i32 @release_frame(ptr noundef %pic, ptr nocapture noundef readonly %handle) #0 {
entry:
  %release_frame = getelementptr inbounds i8, ptr %handle, i64 32
  %0 = load ptr, ptr %release_frame, align 8
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %cleanup, label %if.then

if.then:                                          ; preds = %entry
  %p_handle = getelementptr inbounds i8, ptr %handle, i64 56
  %1 = load ptr, ptr %p_handle, align 8
  %call = tail call i32 %0(ptr noundef %pic, ptr noundef %1) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @close_file(ptr noundef %handle) #0 {
entry:
  %close_file = getelementptr inbounds i8, ptr %handle, i64 48
  %0 = load ptr, ptr %close_file, align 8
  %p_handle = getelementptr inbounds i8, ptr %handle, i64 56
  %1 = load ptr, ptr %p_handle, align 8
  %call = tail call i32 %0(ptr noundef %1) #8
  %picture_clean = getelementptr inbounds i8, ptr %handle, i64 40
  %2 = load ptr, ptr %picture_clean, align 8
  %pic = getelementptr inbounds i8, ptr %handle, i64 64
  tail call void %2(ptr noundef nonnull %pic) #8
  %next_args = getelementptr inbounds i8, ptr %handle, i64 216
  %3 = load ptr, ptr %next_args, align 8
  tail call void @free(ptr noundef %3) #8
  tail call void @free(ptr noundef %handle) #8
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { nounwind allocsize(0) }
attributes #8 = { nounwind }
attributes #9 = { cold }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
