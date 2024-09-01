; ModuleID = 'ldecod_src/intra8x8_pred.c'
source_filename = "ldecod_src/intra8x8_pred.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @intrapred8x8(ptr noundef %currMB, i32 noundef %pl, i32 noundef %ioff, i32 noundef %joff) local_unnamed_addr #0 {
entry:
  %block_x1 = getelementptr inbounds i8, ptr %currMB, i64 32
  %0 = load i32, ptr %block_x1, align 8
  %shr = ashr i32 %ioff, 2
  %add = add nsw i32 %0, %shr
  %block_y2 = getelementptr inbounds i8, ptr %currMB, i64 36
  %1 = load i32, ptr %block_y2, align 4
  %shr3 = ashr i32 %joff, 2
  %add4 = add nsw i32 %1, %shr3
  %2 = load ptr, ptr %currMB, align 8
  %ipredmode = getelementptr inbounds i8, ptr %2, i64 13536
  %3 = load ptr, ptr %ipredmode, align 8
  %idxprom = sext i32 %add4 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %3, i64 %idxprom
  %4 = load ptr, ptr %arrayidx, align 8
  %idxprom5 = sext i32 %add to i64
  %arrayidx6 = getelementptr inbounds i8, ptr %4, i64 %idxprom5
  %5 = load i8, ptr %arrayidx6, align 1
  %ipmode_DPCM = getelementptr inbounds i8, ptr %currMB, i64 372
  store i8 %5, ptr %ipmode_DPCM, align 4
  %mb_aff_frame_flag = getelementptr inbounds i8, ptr %2, i64 128
  %6 = load i32, ptr %mb_aff_frame_flag, align 8
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 @intrapred8x8_mbaff(ptr noundef nonnull %currMB, i32 noundef %pl, i32 noundef %ioff, i32 noundef %joff) #2
  br label %cleanup

if.else:                                          ; preds = %entry
  %call8 = tail call i32 @intrapred8x8_normal(ptr noundef nonnull %currMB, i32 noundef %pl, i32 noundef %ioff, i32 noundef %joff) #2
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call8, %if.else ]
  ret i32 %retval.0
}

declare i32 @intrapred8x8_mbaff(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @intrapred8x8_normal(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

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
