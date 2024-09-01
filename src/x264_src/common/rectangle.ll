; ModuleID = 'x264_src/common/rectangle.c'
source_filename = "x264_src/common/rectangle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@x264_cache_mv_func_table = dso_local local_unnamed_addr global [10 x ptr] [ptr @x264_macroblock_cache_mv_1_1, ptr @x264_macroblock_cache_mv_2_1, ptr @x264_macroblock_cache_mv_1_2, ptr @x264_macroblock_cache_mv_2_2, ptr null, ptr @x264_macroblock_cache_mv_4_2, ptr null, ptr @x264_macroblock_cache_mv_2_4, ptr null, ptr @x264_macroblock_cache_mv_4_4], align 16
@x264_cache_mvd_func_table = dso_local local_unnamed_addr global [10 x ptr] [ptr @x264_macroblock_cache_mvd_1_1, ptr @x264_macroblock_cache_mvd_2_1, ptr @x264_macroblock_cache_mvd_1_2, ptr @x264_macroblock_cache_mvd_2_2, ptr null, ptr @x264_macroblock_cache_mvd_4_2, ptr null, ptr @x264_macroblock_cache_mvd_2_4, ptr null, ptr @x264_macroblock_cache_mvd_4_4], align 16
@x264_cache_ref_func_table = dso_local local_unnamed_addr global [10 x ptr] [ptr @x264_macroblock_cache_ref_1_1, ptr @x264_macroblock_cache_ref_2_1, ptr @x264_macroblock_cache_ref_1_2, ptr @x264_macroblock_cache_ref_2_2, ptr null, ptr @x264_macroblock_cache_ref_4_2, ptr null, ptr @x264_macroblock_cache_ref_2_4, ptr null, ptr @x264_macroblock_cache_ref_4_4], align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @x264_macroblock_cache_mv_4_4(ptr nocapture noundef writeonly %target, i32 noundef %val) #0 {
entry:
  %conv15.i = zext i32 %val to i64
  %add.i = mul nuw i64 %conv15.i, 4294967297
  store i64 %add.i, ptr %target, align 8
  %add.ptr95.i = getelementptr inbounds i8, ptr %target, i64 8
  store i64 %add.i, ptr %add.ptr95.i, align 8
  %add.ptr98.i = getelementptr inbounds i8, ptr %target, i64 32
  store i64 %add.i, ptr %add.ptr98.i, align 8
  %add.ptr103.i = getelementptr inbounds i8, ptr %target, i64 40
  store i64 %add.i, ptr %add.ptr103.i, align 8
  %add.ptr106.i = getelementptr inbounds i8, ptr %target, i64 64
  store i64 %add.i, ptr %add.ptr106.i, align 8
  %add.ptr95.i.1 = getelementptr inbounds i8, ptr %target, i64 72
  store i64 %add.i, ptr %add.ptr95.i.1, align 8
  %add.ptr98.i.1 = getelementptr inbounds i8, ptr %target, i64 96
  store i64 %add.i, ptr %add.ptr98.i.1, align 8
  %add.ptr103.i.1 = getelementptr inbounds i8, ptr %target, i64 104
  store i64 %add.i, ptr %add.ptr103.i.1, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @x264_macroblock_cache_mv_2_4(ptr nocapture noundef writeonly %target, i32 noundef %val) #0 {
entry:
  %conv15.i = zext i32 %val to i64
  %add.i = mul nuw i64 %conv15.i, 4294967297
  store i64 %add.i, ptr %target, align 8
  %add.ptr73.i = getelementptr inbounds i8, ptr %target, i64 32
  store i64 %add.i, ptr %add.ptr73.i, align 8
  %add.ptr80.i = getelementptr inbounds i8, ptr %target, i64 64
  store i64 %add.i, ptr %add.ptr80.i, align 8
  %add.ptr83.i = getelementptr inbounds i8, ptr %target, i64 96
  store i64 %add.i, ptr %add.ptr83.i, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @x264_macroblock_cache_mv_4_2(ptr nocapture noundef writeonly %target, i32 noundef %val) #0 {
entry:
  %conv15.i = zext i32 %val to i64
  %add.i = mul nuw i64 %conv15.i, 4294967297
  store i64 %add.i, ptr %target, align 8
  %add.ptr95.i = getelementptr inbounds i8, ptr %target, i64 8
  store i64 %add.i, ptr %add.ptr95.i, align 8
  %add.ptr98.i = getelementptr inbounds i8, ptr %target, i64 32
  store i64 %add.i, ptr %add.ptr98.i, align 8
  %add.ptr103.i = getelementptr inbounds i8, ptr %target, i64 40
  store i64 %add.i, ptr %add.ptr103.i, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @x264_macroblock_cache_mv_2_2(ptr nocapture noundef writeonly %target, i32 noundef %val) #0 {
entry:
  %conv15.i = zext i32 %val to i64
  %add.i = mul nuw i64 %conv15.i, 4294967297
  store i64 %add.i, ptr %target, align 8
  %add.ptr73.i = getelementptr inbounds i8, ptr %target, i64 32
  store i64 %add.i, ptr %add.ptr73.i, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @x264_macroblock_cache_mv_2_1(ptr nocapture noundef writeonly %target, i32 noundef %val) #0 {
entry:
  %conv15.i = zext i32 %val to i64
  %add.i = mul nuw i64 %conv15.i, 4294967297
  store i64 %add.i, ptr %target, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @x264_macroblock_cache_mv_1_2(ptr nocapture noundef writeonly %target, i32 noundef %val) #0 {
entry:
  store i32 %val, ptr %target, align 4
  %add.ptr49.i = getelementptr inbounds i8, ptr %target, i64 32
  store i32 %val, ptr %add.ptr49.i, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @x264_macroblock_cache_mv_1_1(ptr nocapture noundef writeonly %target, i32 noundef %val) #0 {
entry:
  store i32 %val, ptr %target, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @x264_macroblock_cache_mvd_4_4(ptr nocapture noundef writeonly %target, i32 noundef %val) #0 {
entry:
  %cond14.i = mul i32 %val, 65537
  %conv15.i = zext i32 %cond14.i to i64
  %add.i = mul nuw i64 %conv15.i, 4294967297
  store i64 %add.i, ptr %target, align 8
  %add.ptr73.i = getelementptr inbounds i8, ptr %target, i64 16
  store i64 %add.i, ptr %add.ptr73.i, align 8
  %add.ptr80.i = getelementptr inbounds i8, ptr %target, i64 32
  store i64 %add.i, ptr %add.ptr80.i, align 8
  %add.ptr83.i = getelementptr inbounds i8, ptr %target, i64 48
  store i64 %add.i, ptr %add.ptr83.i, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @x264_macroblock_cache_mvd_2_4(ptr nocapture noundef writeonly %target, i32 noundef %val) #0 {
entry:
  %cond14.i = mul i32 %val, 65537
  store i32 %cond14.i, ptr %target, align 4
  %add.ptr49.i = getelementptr inbounds i8, ptr %target, i64 16
  store i32 %cond14.i, ptr %add.ptr49.i, align 4
  %add.ptr56.i = getelementptr inbounds i8, ptr %target, i64 32
  store i32 %cond14.i, ptr %add.ptr56.i, align 4
  %add.ptr59.i = getelementptr inbounds i8, ptr %target, i64 48
  store i32 %cond14.i, ptr %add.ptr59.i, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @x264_macroblock_cache_mvd_4_2(ptr nocapture noundef writeonly %target, i32 noundef %val) #0 {
entry:
  %cond14.i = mul i32 %val, 65537
  %conv15.i = zext i32 %cond14.i to i64
  %add.i = mul nuw i64 %conv15.i, 4294967297
  store i64 %add.i, ptr %target, align 8
  %add.ptr73.i = getelementptr inbounds i8, ptr %target, i64 16
  store i64 %add.i, ptr %add.ptr73.i, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @x264_macroblock_cache_mvd_2_2(ptr nocapture noundef writeonly %target, i32 noundef %val) #0 {
entry:
  %cond14.i = mul i32 %val, 65537
  store i32 %cond14.i, ptr %target, align 4
  %add.ptr49.i = getelementptr inbounds i8, ptr %target, i64 16
  store i32 %cond14.i, ptr %add.ptr49.i, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @x264_macroblock_cache_mvd_2_1(ptr nocapture noundef writeonly %target, i32 noundef %val) #0 {
entry:
  %cond14.i = mul i32 %val, 65537
  store i32 %cond14.i, ptr %target, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @x264_macroblock_cache_mvd_1_2(ptr nocapture noundef writeonly %target, i32 noundef %val) #0 {
entry:
  %conv.i = trunc i32 %val to i16
  store i16 %conv.i, ptr %target, align 2
  %add.ptr26.i = getelementptr inbounds i8, ptr %target, i64 16
  store i16 %conv.i, ptr %add.ptr26.i, align 2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @x264_macroblock_cache_mvd_1_1(ptr nocapture noundef writeonly %target, i32 noundef %val) #0 {
entry:
  %conv.i = trunc i32 %val to i16
  store i16 %conv.i, ptr %target, align 2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @x264_macroblock_cache_ref_4_4(ptr nocapture noundef writeonly %target, i32 noundef %val) #0 {
entry:
  %cond14.i = mul i32 %val, 16843009
  store i32 %cond14.i, ptr %target, align 4
  %add.ptr49.i = getelementptr inbounds i8, ptr %target, i64 8
  store i32 %cond14.i, ptr %add.ptr49.i, align 4
  %add.ptr56.i = getelementptr inbounds i8, ptr %target, i64 16
  store i32 %cond14.i, ptr %add.ptr56.i, align 4
  %add.ptr59.i = getelementptr inbounds i8, ptr %target, i64 24
  store i32 %cond14.i, ptr %add.ptr59.i, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @x264_macroblock_cache_ref_2_4(ptr nocapture noundef writeonly %target, i32 noundef %val) #0 {
entry:
  %0 = trunc i32 %val to i16
  %conv.i = mul i16 %0, 257
  store i16 %conv.i, ptr %target, align 2
  %add.ptr26.i = getelementptr inbounds i8, ptr %target, i64 8
  store i16 %conv.i, ptr %add.ptr26.i, align 2
  %add.ptr33.i = getelementptr inbounds i8, ptr %target, i64 16
  store i16 %conv.i, ptr %add.ptr33.i, align 2
  %add.ptr36.i = getelementptr inbounds i8, ptr %target, i64 24
  store i16 %conv.i, ptr %add.ptr36.i, align 2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @x264_macroblock_cache_ref_4_2(ptr nocapture noundef writeonly %target, i32 noundef %val) #0 {
entry:
  %cond14.i = mul i32 %val, 16843009
  store i32 %cond14.i, ptr %target, align 4
  %add.ptr49.i = getelementptr inbounds i8, ptr %target, i64 8
  store i32 %cond14.i, ptr %add.ptr49.i, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @x264_macroblock_cache_ref_2_2(ptr nocapture noundef writeonly %target, i32 noundef %val) #0 {
entry:
  %0 = trunc i32 %val to i16
  %conv.i = mul i16 %0, 257
  store i16 %conv.i, ptr %target, align 2
  %add.ptr26.i = getelementptr inbounds i8, ptr %target, i64 8
  store i16 %conv.i, ptr %add.ptr26.i, align 2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @x264_macroblock_cache_ref_2_1(ptr nocapture noundef writeonly %target, i32 noundef %val) #0 {
entry:
  %0 = trunc i32 %val to i16
  %conv.i = mul i16 %0, 257
  store i16 %conv.i, ptr %target, align 2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @x264_macroblock_cache_ref_1_2(ptr nocapture readnone %target, i32 %val) #1 {
entry:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @x264_macroblock_cache_ref_1_1(ptr nocapture readnone %target, i32 %val) #1 {
entry:
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
