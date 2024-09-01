; ModuleID = 'ldecod_src/intra16x16_pred.c'
source_filename = "ldecod_src/intra16x16_pred.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @intrapred16x16(ptr noundef %currMB, i32 noundef %pl, i32 noundef %predmode) local_unnamed_addr #0 {
entry:
  %0 = load ptr, ptr %currMB, align 8
  %mb_aff_frame_flag = getelementptr inbounds i8, ptr %0, i64 128
  %1 = load i32, ptr %mb_aff_frame_flag, align 8
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 @intrapred_16x16_mbaff(ptr noundef nonnull %currMB, i32 noundef %pl, i32 noundef %predmode) #2
  br label %return

if.else:                                          ; preds = %entry
  %call1 = tail call i32 @intrapred_16x16_normal(ptr noundef nonnull %currMB, i32 noundef %pl, i32 noundef %predmode) #2
  br label %return

return:                                           ; preds = %if.else, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call1, %if.else ]
  ret i32 %retval.0
}

declare i32 @intrapred_16x16_mbaff(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @intrapred_16x16_normal(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
