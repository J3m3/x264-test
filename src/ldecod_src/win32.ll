; ModuleID = 'ldecod_src/win32.c'
source_filename = "ldecod_src/win32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @gettime(ptr nocapture noundef readnone %time) local_unnamed_addr #0 {
entry:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i64 -2147485795483648, 2147485794483648) i64 @timediff(ptr nocapture noundef readonly %start, ptr nocapture noundef readonly %end) local_unnamed_addr #1 {
entry:
  %0 = load i64, ptr %end, align 8
  %1 = load i64, ptr %start, align 8
  %sub = sub nsw i64 %0, %1
  %tv_usec = getelementptr inbounds i8, ptr %end, i64 8
  %2 = load i64, ptr %tv_usec, align 8
  %tv_usec2 = getelementptr inbounds i8, ptr %start, i64 8
  %3 = load i64, ptr %tv_usec2, align 8
  %sub3 = sub nsw i64 %2, %3
  %sext = shl i64 %sub3, 32
  %conv5 = ashr exact i64 %sext, 32
  %sext9 = shl i64 %sub, 32
  %conv6 = ashr exact i64 %sext9, 32
  %mul = mul nsw i64 %conv6, 1000000
  %add = add nsw i64 %conv5, %mul
  ret i64 %add
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef range(i64 -9223372036854775, 9223372036854776) i64 @timenorm(i64 noundef %cur_time) local_unnamed_addr #0 {
entry:
  %div = sdiv i64 %cur_time, 1000
  ret i64 %div
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
