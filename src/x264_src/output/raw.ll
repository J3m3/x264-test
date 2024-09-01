; ModuleID = 'x264_src/output/raw.c'
source_filename = "x264_src/output/raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cli_output_t = type { ptr, ptr, ptr, ptr, ptr }

@raw_output = dso_local local_unnamed_addr constant %struct.cli_output_t { ptr @open_file, ptr @set_param, ptr @write_headers, ptr @write_frame, ptr @close_file }, align 8
@stdout = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"w+b\00", align 1

; Function Attrs: nofree nounwind uwtable
define internal range(i32 -1, 1) i32 @open_file(ptr nocapture noundef readonly %psz_filename, ptr nocapture noundef writeonly %p_handle) #0 {
entry:
  %0 = load i8, ptr %psz_filename, align 1
  %.not = icmp eq i8 %0, 45
  br i1 %.not, label %entry.tail, label %if.else

entry.tail:                                       ; preds = %entry
  %1 = getelementptr inbounds i8, ptr %psz_filename, i64 1
  %2 = load i8, ptr %1, align 1
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %if.then, label %if.else

if.then:                                          ; preds = %entry.tail
  %4 = load ptr, ptr @stdout, align 8
  store ptr %4, ptr %p_handle, align 8
  br label %if.end4

if.else:                                          ; preds = %entry, %entry.tail
  %call1 = tail call noalias ptr @fopen64(ptr noundef nonnull %psz_filename, ptr noundef nonnull @.str.1)
  store ptr %call1, ptr %p_handle, align 8
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %return, label %if.end4

if.end4:                                          ; preds = %if.else, %if.then
  br label %return

return:                                           ; preds = %if.else, %if.end4
  %retval.0 = phi i32 [ 0, %if.end4 ], [ -1, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @set_param(ptr nocapture readnone %handle, ptr nocapture readnone %p_param) #1 {
entry:
  ret i32 0
}

; Function Attrs: nofree nounwind uwtable
define internal i32 @write_headers(ptr nocapture noundef %handle, ptr nocapture noundef readonly %p_nal) #0 {
entry:
  %i_payload = getelementptr inbounds i8, ptr %p_nal, i64 8
  %0 = load i32, ptr %i_payload, align 8
  %i_payload2 = getelementptr inbounds i8, ptr %p_nal, i64 32
  %1 = load i32, ptr %i_payload2, align 8
  %add = add nsw i32 %1, %0
  %i_payload4 = getelementptr inbounds i8, ptr %p_nal, i64 56
  %2 = load i32, ptr %i_payload4, align 8
  %add5 = add nsw i32 %add, %2
  %p_payload = getelementptr inbounds i8, ptr %p_nal, i64 16
  %3 = load ptr, ptr %p_payload, align 8
  %conv = sext i32 %add5 to i64
  %call = tail call i64 @fwrite(ptr noundef %3, i64 noundef %conv, i64 noundef 1, ptr noundef %handle)
  %tobool.not = icmp eq i64 %call, 0
  %.add5 = select i1 %tobool.not, i32 -1, i32 %add5
  ret i32 %.add5
}

; Function Attrs: nofree nounwind uwtable
define internal noundef i32 @write_frame(ptr nocapture noundef %handle, ptr nocapture noundef %p_nalu, i32 noundef %i_size, ptr nocapture readnone %p_picture) #0 {
entry:
  %conv = sext i32 %i_size to i64
  %call = tail call i64 @fwrite(ptr noundef %p_nalu, i64 noundef %conv, i64 noundef 1, ptr noundef %handle)
  %tobool.not = icmp eq i64 %call, 0
  %.i_size = select i1 %tobool.not, i32 -1, i32 %i_size
  ret i32 %.i_size
}

; Function Attrs: nofree nounwind uwtable
define internal noundef i32 @close_file(ptr noundef %handle, i64 %largest_pts, i64 %second_largest_pts) #0 {
entry:
  %tobool.not = icmp eq ptr %handle, null
  %0 = load ptr, ptr @stdout, align 8
  %cmp = icmp eq ptr %0, %handle
  %or.cond = select i1 %tobool.not, i1 true, i1 %cmp
  br i1 %or.cond, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call i32 @fclose(ptr noundef nonnull %handle)
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen64(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #2

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
