; ModuleID = 'ldecod_src/errorconcealment.c'
source_filename = "ldecod_src/errorconcealment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@switch.table.get_concealed_element = private unnamed_addr constant [18 x i32] [i32 31, i32 1, i32 1, i32 1, i32 1, i32 1, i32 5, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1], align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @set_ec_flag(ptr nocapture noundef writeonly %p_Vid, i32 noundef %se) local_unnamed_addr #0 {
entry:
  switch i32 %se, label %sw.epilog55 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb4
    i32 3, label %sw.bb7
    i32 4, label %sw.epilog.thread76
    i32 5, label %sw.bb33.sink.split
    i32 6, label %sw.bb18
    i32 7, label %sw.bb21
    i32 8, label %sw.bb24
    i32 9, label %sw.bb27
    i32 10, label %sw.bb30
    i32 11, label %sw.bb33
    i32 12, label %sw.bb36
    i32 13, label %sw.bb39
    i32 14, label %sw.bb42
    i32 15, label %sw.bb45
    i32 16, label %sw.bb48
    i32 17, label %sw.bb51
  ]

sw.bb:                                            ; preds = %entry
  %ec_flag = getelementptr inbounds i8, ptr %p_Vid, i64 856528
  store i32 1, ptr %ec_flag, align 8
  br label %sw.bb1

sw.bb1:                                           ; preds = %entry, %sw.bb
  %arrayidx3 = getelementptr inbounds i8, ptr %p_Vid, i64 856532
  store i32 1, ptr %arrayidx3, align 4
  br label %sw.bb4

sw.bb4:                                           ; preds = %entry, %sw.bb1
  %arrayidx6 = getelementptr inbounds i8, ptr %p_Vid, i64 856536
  store i32 1, ptr %arrayidx6, align 8
  br label %sw.bb7

sw.bb7:                                           ; preds = %entry, %sw.bb4
  %arrayidx9 = getelementptr inbounds i8, ptr %p_Vid, i64 856540
  store i32 1, ptr %arrayidx9, align 4
  br label %sw.bb33.sink.split

sw.epilog.thread76:                               ; preds = %entry
  %arrayidx14 = getelementptr inbounds i8, ptr %p_Vid, i64 856544
  store i32 1, ptr %arrayidx14, align 8
  br label %sw.bb18

sw.bb18:                                          ; preds = %entry, %sw.epilog.thread76
  %arrayidx20 = getelementptr inbounds i8, ptr %p_Vid, i64 856552
  store i32 1, ptr %arrayidx20, align 8
  br label %sw.bb21

sw.bb21:                                          ; preds = %entry, %sw.bb18
  %arrayidx23 = getelementptr inbounds i8, ptr %p_Vid, i64 856556
  store i32 1, ptr %arrayidx23, align 4
  br label %sw.bb24

sw.bb24:                                          ; preds = %entry, %sw.bb21
  %arrayidx26 = getelementptr inbounds i8, ptr %p_Vid, i64 856560
  store i32 1, ptr %arrayidx26, align 8
  br label %sw.bb27

sw.bb27:                                          ; preds = %entry, %sw.bb24
  %arrayidx29 = getelementptr inbounds i8, ptr %p_Vid, i64 856564
  store i32 1, ptr %arrayidx29, align 4
  br label %sw.bb30

sw.bb30:                                          ; preds = %entry, %sw.bb27
  %arrayidx32 = getelementptr inbounds i8, ptr %p_Vid, i64 856568
  store i32 1, ptr %arrayidx32, align 8
  br label %sw.epilog55

sw.bb33.sink.split:                               ; preds = %entry, %sw.bb7
  %arrayidx11 = getelementptr inbounds i8, ptr %p_Vid, i64 856548
  store i32 1, ptr %arrayidx11, align 4
  br label %sw.bb33

sw.bb33:                                          ; preds = %sw.bb33.sink.split, %entry
  %arrayidx35 = getelementptr inbounds i8, ptr %p_Vid, i64 856572
  store i32 1, ptr %arrayidx35, align 4
  br label %sw.bb36

sw.bb36:                                          ; preds = %entry, %sw.bb33
  %arrayidx38 = getelementptr inbounds i8, ptr %p_Vid, i64 856576
  store i32 1, ptr %arrayidx38, align 8
  br label %sw.bb39

sw.bb39:                                          ; preds = %entry, %sw.bb36
  %arrayidx41 = getelementptr inbounds i8, ptr %p_Vid, i64 856580
  store i32 1, ptr %arrayidx41, align 4
  br label %sw.bb42

sw.bb42:                                          ; preds = %entry, %sw.bb39
  %arrayidx44 = getelementptr inbounds i8, ptr %p_Vid, i64 856584
  store i32 1, ptr %arrayidx44, align 8
  br label %sw.bb45

sw.bb45:                                          ; preds = %entry, %sw.bb42
  %arrayidx47 = getelementptr inbounds i8, ptr %p_Vid, i64 856588
  store i32 1, ptr %arrayidx47, align 4
  br label %sw.epilog55

sw.bb48:                                          ; preds = %entry
  %arrayidx50 = getelementptr inbounds i8, ptr %p_Vid, i64 856592
  store i32 1, ptr %arrayidx50, align 8
  br label %sw.epilog55

sw.bb51:                                          ; preds = %entry
  %arrayidx53 = getelementptr inbounds i8, ptr %p_Vid, i64 856596
  store i32 1, ptr %arrayidx53, align 4
  br label %sw.epilog55

sw.epilog55:                                      ; preds = %entry, %sw.bb51, %sw.bb48, %sw.bb45, %sw.bb30
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @reset_ec_flags(ptr nocapture noundef writeonly %p_Vid) local_unnamed_addr #0 {
entry:
  %ec_flag = getelementptr inbounds i8, ptr %p_Vid, i64 856528
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(80) %ec_flag, i8 0, i64 80, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i32 0, 2) i32 @get_concealed_element(ptr nocapture noundef readonly %p_Vid, ptr nocapture noundef %sym) local_unnamed_addr #1 {
entry:
  %ec_flag = getelementptr inbounds i8, ptr %p_Vid, i64 856528
  %0 = load i32, ptr %sym, align 8
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [20 x i32], ptr %ec_flag, i64 0, i64 %idxprom
  %1 = load i32, ptr %arrayidx, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %2 = icmp ult i32 %0, 18
  br i1 %2, label %switch.lookup, label %return

switch.lookup:                                    ; preds = %if.end
  %3 = zext nneg i32 %0 to i64
  %switch.gep = getelementptr inbounds [18 x i32], ptr @switch.table.get_concealed_element, i64 0, i64 %3
  %switch.load = load i32, ptr %switch.gep, align 4
  %len = getelementptr inbounds i8, ptr %sym, i64 12
  store i32 %switch.load, ptr %len, align 4
  %inf = getelementptr inbounds i8, ptr %sym, i64 16
  store i32 0, ptr %inf, align 8
  br label %return

return:                                           ; preds = %if.end, %switch.lookup, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 1, %if.end ], [ 1, %switch.lookup ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
