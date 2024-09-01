; ModuleID = 'ldecod_src/transform.c'
source_filename = "ldecod_src/transform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @forward4x4(ptr nocapture noundef readonly %block, ptr nocapture noundef readonly %tblock, i32 noundef %pos_y, i32 noundef %pos_x) local_unnamed_addr #0 {
for.cond17.preheader:
  %idxprom1 = sext i32 %pos_x to i64
  %0 = sext i32 %pos_y to i64
  %arrayidx = getelementptr inbounds ptr, ptr %block, i64 %0
  %1 = load ptr, ptr %arrayidx, align 8
  %arrayidx2 = getelementptr inbounds i32, ptr %1, i64 %idxprom1
  %incdec.ptr = getelementptr inbounds i8, ptr %arrayidx2, i64 4
  %2 = load i32, ptr %arrayidx2, align 4
  %incdec.ptr3 = getelementptr inbounds i8, ptr %arrayidx2, i64 8
  %3 = load i32, ptr %incdec.ptr, align 4
  %incdec.ptr4 = getelementptr inbounds i8, ptr %arrayidx2, i64 12
  %4 = load i32, ptr %incdec.ptr3, align 4
  %5 = load i32, ptr %incdec.ptr4, align 4
  %6 = getelementptr ptr, ptr %block, i64 %0
  %arrayidx.3 = getelementptr i8, ptr %6, i64 24
  %7 = load ptr, ptr %arrayidx.3, align 8
  %arrayidx2.3 = getelementptr inbounds i32, ptr %7, i64 %idxprom1
  %8 = load i32, ptr %arrayidx2.3, align 4
  %incdec.ptr4.3 = getelementptr inbounds i8, ptr %arrayidx2.3, i64 12
  %9 = load i32, ptr %incdec.ptr4.3, align 4
  %sub7.3 = sub nsw i32 %8, %9
  %incdec.ptr.3 = getelementptr inbounds i8, ptr %arrayidx2.3, i64 4
  %10 = load i32, ptr %incdec.ptr.3, align 4
  %incdec.ptr3.3 = getelementptr inbounds i8, ptr %arrayidx2.3, i64 8
  %11 = load i32, ptr %incdec.ptr3.3, align 4
  %sub.3 = sub nsw i32 %10, %11
  %shl14.3 = shl i32 %sub.3, 1
  %sub15.3 = sub nsw i32 %sub7.3, %shl14.3
  %add5.3 = add nsw i32 %9, %8
  %add6.3 = add nsw i32 %11, %10
  %sub12.3 = sub nsw i32 %add5.3, %add6.3
  %shl.3 = shl i32 %sub7.3, 1
  %add10.3 = add nsw i32 %shl.3, %sub.3
  %add8.3 = add nsw i32 %add5.3, %add6.3
  %12 = getelementptr ptr, ptr %block, i64 %0
  %arrayidx.2 = getelementptr i8, ptr %12, i64 16
  %13 = load ptr, ptr %arrayidx.2, align 8
  %arrayidx2.2 = getelementptr inbounds i32, ptr %13, i64 %idxprom1
  %14 = load i32, ptr %arrayidx2.2, align 4
  %incdec.ptr4.2 = getelementptr inbounds i8, ptr %arrayidx2.2, i64 12
  %15 = load i32, ptr %incdec.ptr4.2, align 4
  %sub7.2 = sub nsw i32 %14, %15
  %incdec.ptr.2 = getelementptr inbounds i8, ptr %arrayidx2.2, i64 4
  %16 = load i32, ptr %incdec.ptr.2, align 4
  %incdec.ptr3.2 = getelementptr inbounds i8, ptr %arrayidx2.2, i64 8
  %17 = load i32, ptr %incdec.ptr3.2, align 4
  %sub.2 = sub nsw i32 %16, %17
  %shl14.2 = shl i32 %sub.2, 1
  %sub15.2 = sub nsw i32 %sub7.2, %shl14.2
  %add5.2 = add nsw i32 %15, %14
  %add6.2 = add nsw i32 %17, %16
  %sub12.2 = sub nsw i32 %add5.2, %add6.2
  %shl.2 = shl i32 %sub7.2, 1
  %add10.2 = add nsw i32 %shl.2, %sub.2
  %add8.2 = add nsw i32 %add5.2, %add6.2
  %18 = getelementptr ptr, ptr %block, i64 %0
  %arrayidx.1 = getelementptr i8, ptr %18, i64 8
  %19 = load ptr, ptr %arrayidx.1, align 8
  %arrayidx2.1 = getelementptr inbounds i32, ptr %19, i64 %idxprom1
  %20 = load i32, ptr %arrayidx2.1, align 4
  %incdec.ptr4.1 = getelementptr inbounds i8, ptr %arrayidx2.1, i64 12
  %21 = load i32, ptr %incdec.ptr4.1, align 4
  %sub7.1 = sub nsw i32 %20, %21
  %incdec.ptr.1 = getelementptr inbounds i8, ptr %arrayidx2.1, i64 4
  %22 = load i32, ptr %incdec.ptr.1, align 4
  %incdec.ptr3.1 = getelementptr inbounds i8, ptr %arrayidx2.1, i64 8
  %23 = load i32, ptr %incdec.ptr3.1, align 4
  %sub.1 = sub nsw i32 %22, %23
  %shl14.1 = shl i32 %sub.1, 1
  %sub15.1 = sub nsw i32 %sub7.1, %shl14.1
  %add5.1 = add nsw i32 %21, %20
  %add6.1 = add nsw i32 %23, %22
  %sub12.1 = sub nsw i32 %add5.1, %add6.1
  %shl.1 = shl i32 %sub7.1, 1
  %add10.1 = add nsw i32 %shl.1, %sub.1
  %add8.1 = add nsw i32 %add5.1, %add6.1
  %sub7 = sub nsw i32 %2, %5
  %sub = sub nsw i32 %3, %4
  %shl14 = shl i32 %sub, 1
  %sub15 = sub nsw i32 %sub7, %shl14
  %add5 = add nsw i32 %5, %2
  %add6 = add nsw i32 %4, %3
  %sub12 = sub nsw i32 %add5, %add6
  %shl = shl i32 %sub7, 1
  %add10 = add nsw i32 %shl, %sub
  %add8 = add nsw i32 %add5, %add6
  %arrayidx31 = getelementptr inbounds ptr, ptr %tblock, i64 %0
  %arrayidx38 = getelementptr i8, ptr %arrayidx31, i64 8
  %arrayidx44 = getelementptr i8, ptr %arrayidx31, i64 16
  %arrayidx51 = getelementptr i8, ptr %arrayidx31, i64 24
  %add24 = add nsw i32 %add8.3, %add8
  %add25 = add nsw i32 %add8.2, %add8.1
  %sub26 = sub nsw i32 %add8.1, %add8.2
  %sub27 = sub nsw i32 %add8, %add8.3
  %add29 = add nsw i32 %add24, %add25
  %24 = load ptr, ptr %arrayidx31, align 8
  %arrayidx33 = getelementptr inbounds i32, ptr %24, i64 %idxprom1
  store i32 %add29, ptr %arrayidx33, align 4
  %shl34 = shl i32 %sub27, 1
  %add35 = add nsw i32 %shl34, %sub26
  %25 = load ptr, ptr %arrayidx38, align 8
  %arrayidx40 = getelementptr inbounds i32, ptr %25, i64 %idxprom1
  store i32 %add35, ptr %arrayidx40, align 4
  %sub41 = sub nsw i32 %add24, %add25
  %26 = load ptr, ptr %arrayidx44, align 8
  %arrayidx46 = getelementptr inbounds i32, ptr %26, i64 %idxprom1
  store i32 %sub41, ptr %arrayidx46, align 4
  %shl47 = shl i32 %sub26, 1
  %sub48 = sub nsw i32 %sub27, %shl47
  %27 = load ptr, ptr %arrayidx51, align 8
  %arrayidx53 = getelementptr inbounds i32, ptr %27, i64 %idxprom1
  store i32 %sub48, ptr %arrayidx53, align 4
  %add24.1 = add nsw i32 %add10.3, %add10
  %add25.1 = add nsw i32 %add10.2, %add10.1
  %sub26.1 = sub nsw i32 %add10.1, %add10.2
  %sub27.1 = sub nsw i32 %add10, %add10.3
  %28 = add nsw i64 %idxprom1, 1
  %add29.1 = add nsw i32 %add24.1, %add25.1
  %29 = load ptr, ptr %arrayidx31, align 8
  %arrayidx33.1 = getelementptr inbounds i32, ptr %29, i64 %28
  store i32 %add29.1, ptr %arrayidx33.1, align 4
  %shl34.1 = shl i32 %sub27.1, 1
  %add35.1 = add nsw i32 %shl34.1, %sub26.1
  %30 = load ptr, ptr %arrayidx38, align 8
  %arrayidx40.1 = getelementptr inbounds i32, ptr %30, i64 %28
  store i32 %add35.1, ptr %arrayidx40.1, align 4
  %sub41.1 = sub nsw i32 %add24.1, %add25.1
  %31 = load ptr, ptr %arrayidx44, align 8
  %arrayidx46.1 = getelementptr inbounds i32, ptr %31, i64 %28
  store i32 %sub41.1, ptr %arrayidx46.1, align 4
  %shl47.1 = shl i32 %sub26.1, 1
  %sub48.1 = sub nsw i32 %sub27.1, %shl47.1
  %32 = load ptr, ptr %arrayidx51, align 8
  %arrayidx53.1 = getelementptr inbounds i32, ptr %32, i64 %28
  store i32 %sub48.1, ptr %arrayidx53.1, align 4
  %add24.2 = add nsw i32 %sub12.3, %sub12
  %add25.2 = add nsw i32 %sub12.2, %sub12.1
  %sub26.2 = sub nsw i32 %sub12.1, %sub12.2
  %sub27.2 = sub nsw i32 %sub12, %sub12.3
  %33 = add nsw i64 %idxprom1, 2
  %add29.2 = add nsw i32 %add24.2, %add25.2
  %34 = load ptr, ptr %arrayidx31, align 8
  %arrayidx33.2 = getelementptr inbounds i32, ptr %34, i64 %33
  store i32 %add29.2, ptr %arrayidx33.2, align 4
  %shl34.2 = shl i32 %sub27.2, 1
  %add35.2 = add nsw i32 %shl34.2, %sub26.2
  %35 = load ptr, ptr %arrayidx38, align 8
  %arrayidx40.2 = getelementptr inbounds i32, ptr %35, i64 %33
  store i32 %add35.2, ptr %arrayidx40.2, align 4
  %sub41.2 = sub nsw i32 %add24.2, %add25.2
  %36 = load ptr, ptr %arrayidx44, align 8
  %arrayidx46.2 = getelementptr inbounds i32, ptr %36, i64 %33
  store i32 %sub41.2, ptr %arrayidx46.2, align 4
  %shl47.2 = shl i32 %sub26.2, 1
  %sub48.2 = sub nsw i32 %sub27.2, %shl47.2
  %37 = load ptr, ptr %arrayidx51, align 8
  %arrayidx53.2 = getelementptr inbounds i32, ptr %37, i64 %33
  store i32 %sub48.2, ptr %arrayidx53.2, align 4
  %add24.3 = add nsw i32 %sub15.3, %sub15
  %add25.3 = add nsw i32 %sub15.2, %sub15.1
  %sub26.3 = sub nsw i32 %sub15.1, %sub15.2
  %sub27.3 = sub nsw i32 %sub15, %sub15.3
  %38 = add nsw i64 %idxprom1, 3
  %add29.3 = add nsw i32 %add24.3, %add25.3
  %39 = load ptr, ptr %arrayidx31, align 8
  %arrayidx33.3 = getelementptr inbounds i32, ptr %39, i64 %38
  store i32 %add29.3, ptr %arrayidx33.3, align 4
  %shl34.3 = shl i32 %sub27.3, 1
  %add35.3 = add nsw i32 %shl34.3, %sub26.3
  %40 = load ptr, ptr %arrayidx38, align 8
  %arrayidx40.3 = getelementptr inbounds i32, ptr %40, i64 %38
  store i32 %add35.3, ptr %arrayidx40.3, align 4
  %sub41.3 = sub nsw i32 %add24.3, %add25.3
  %41 = load ptr, ptr %arrayidx44, align 8
  %arrayidx46.3 = getelementptr inbounds i32, ptr %41, i64 %38
  store i32 %sub41.3, ptr %arrayidx46.3, align 4
  %shl47.3 = shl i32 %sub26.3, 1
  %sub48.3 = sub nsw i32 %sub27.3, %shl47.3
  %42 = load ptr, ptr %arrayidx51, align 8
  %arrayidx53.3 = getelementptr inbounds i32, ptr %42, i64 %38
  store i32 %sub48.3, ptr %arrayidx53.3, align 4
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @inverse4x4(ptr nocapture noundef readonly %tblock, ptr nocapture noundef readonly %block, i32 noundef %pos_y, i32 noundef %pos_x) local_unnamed_addr #0 {
for.cond17.preheader:
  %idxprom1 = sext i32 %pos_x to i64
  %0 = sext i32 %pos_y to i64
  %arrayidx = getelementptr inbounds ptr, ptr %tblock, i64 %0
  %1 = load ptr, ptr %arrayidx, align 8
  %arrayidx2 = getelementptr inbounds i32, ptr %1, i64 %idxprom1
  %incdec.ptr = getelementptr inbounds i8, ptr %arrayidx2, i64 4
  %2 = load i32, ptr %arrayidx2, align 4
  %incdec.ptr3 = getelementptr inbounds i8, ptr %arrayidx2, i64 8
  %3 = load i32, ptr %incdec.ptr, align 4
  %incdec.ptr4 = getelementptr inbounds i8, ptr %arrayidx2, i64 12
  %4 = load i32, ptr %incdec.ptr3, align 4
  %5 = load i32, ptr %incdec.ptr4, align 4
  %6 = getelementptr ptr, ptr %tblock, i64 %0
  %arrayidx.3 = getelementptr i8, ptr %6, i64 24
  %7 = load ptr, ptr %arrayidx.3, align 8
  %arrayidx2.3 = getelementptr inbounds i32, ptr %7, i64 %idxprom1
  %incdec.ptr3.3 = getelementptr inbounds i8, ptr %arrayidx2.3, i64 8
  %8 = load i32, ptr %incdec.ptr3.3, align 4
  %9 = load i32, ptr %arrayidx2.3, align 4
  %add5.3 = add nsw i32 %8, %9
  %incdec.ptr4.3 = getelementptr inbounds i8, ptr %arrayidx2.3, i64 12
  %10 = load i32, ptr %incdec.ptr4.3, align 4
  %shr7.3 = ashr i32 %10, 1
  %incdec.ptr.3 = getelementptr inbounds i8, ptr %arrayidx2.3, i64 4
  %11 = load i32, ptr %incdec.ptr.3, align 4
  %add8.3 = add nsw i32 %shr7.3, %11
  %sub15.3 = sub nsw i32 %add5.3, %add8.3
  %sub.3 = sub nsw i32 %9, %8
  %shr.3 = ashr i32 %11, 1
  %sub6.3 = sub nsw i32 %shr.3, %10
  %sub13.3 = sub nsw i32 %sub.3, %sub6.3
  %add11.3 = add nsw i32 %sub6.3, %sub.3
  %add9.3 = add nsw i32 %add8.3, %add5.3
  %12 = getelementptr ptr, ptr %tblock, i64 %0
  %arrayidx.2 = getelementptr i8, ptr %12, i64 16
  %13 = load ptr, ptr %arrayidx.2, align 8
  %arrayidx2.2 = getelementptr inbounds i32, ptr %13, i64 %idxprom1
  %incdec.ptr3.2 = getelementptr inbounds i8, ptr %arrayidx2.2, i64 8
  %14 = load i32, ptr %incdec.ptr3.2, align 4
  %15 = load i32, ptr %arrayidx2.2, align 4
  %add5.2 = add nsw i32 %14, %15
  %incdec.ptr4.2 = getelementptr inbounds i8, ptr %arrayidx2.2, i64 12
  %16 = load i32, ptr %incdec.ptr4.2, align 4
  %shr7.2 = ashr i32 %16, 1
  %incdec.ptr.2 = getelementptr inbounds i8, ptr %arrayidx2.2, i64 4
  %17 = load i32, ptr %incdec.ptr.2, align 4
  %add8.2 = add nsw i32 %shr7.2, %17
  %sub15.2 = sub nsw i32 %add5.2, %add8.2
  %sub.2 = sub nsw i32 %15, %14
  %shr.2 = ashr i32 %17, 1
  %sub6.2 = sub nsw i32 %shr.2, %16
  %sub13.2 = sub nsw i32 %sub.2, %sub6.2
  %add11.2 = add nsw i32 %sub6.2, %sub.2
  %add9.2 = add nsw i32 %add8.2, %add5.2
  %18 = getelementptr ptr, ptr %tblock, i64 %0
  %arrayidx.1 = getelementptr i8, ptr %18, i64 8
  %19 = load ptr, ptr %arrayidx.1, align 8
  %arrayidx2.1 = getelementptr inbounds i32, ptr %19, i64 %idxprom1
  %incdec.ptr3.1 = getelementptr inbounds i8, ptr %arrayidx2.1, i64 8
  %20 = load i32, ptr %incdec.ptr3.1, align 4
  %21 = load i32, ptr %arrayidx2.1, align 4
  %add5.1 = add nsw i32 %20, %21
  %incdec.ptr4.1 = getelementptr inbounds i8, ptr %arrayidx2.1, i64 12
  %22 = load i32, ptr %incdec.ptr4.1, align 4
  %shr7.1 = ashr i32 %22, 1
  %incdec.ptr.1 = getelementptr inbounds i8, ptr %arrayidx2.1, i64 4
  %23 = load i32, ptr %incdec.ptr.1, align 4
  %add8.1 = add nsw i32 %shr7.1, %23
  %sub15.1 = sub nsw i32 %add5.1, %add8.1
  %sub.1 = sub nsw i32 %21, %20
  %shr.1 = ashr i32 %23, 1
  %sub6.1 = sub nsw i32 %shr.1, %22
  %sub13.1 = sub nsw i32 %sub.1, %sub6.1
  %add11.1 = add nsw i32 %sub6.1, %sub.1
  %add9.1 = add nsw i32 %add8.1, %add5.1
  %add5 = add nsw i32 %4, %2
  %shr7 = ashr i32 %5, 1
  %add8 = add nsw i32 %shr7, %3
  %sub15 = sub nsw i32 %add5, %add8
  %sub = sub nsw i32 %2, %4
  %shr = ashr i32 %3, 1
  %sub6 = sub nsw i32 %shr, %5
  %sub13 = sub nsw i32 %sub, %sub6
  %add11 = add nsw i32 %sub6, %sub
  %add9 = add nsw i32 %add8, %add5
  %arrayidx33 = getelementptr inbounds ptr, ptr %block, i64 %0
  %arrayidx39 = getelementptr i8, ptr %arrayidx33, i64 8
  %arrayidx45 = getelementptr i8, ptr %arrayidx33, i64 16
  %arrayidx51 = getelementptr i8, ptr %arrayidx33, i64 24
  %add24 = add nsw i32 %add9.2, %add9
  %sub25 = sub nsw i32 %add9, %add9.2
  %shr26 = ashr i32 %add9.1, 1
  %sub27 = sub nsw i32 %shr26, %add9.3
  %shr28 = ashr i32 %add9.3, 1
  %add29 = add nsw i32 %shr28, %add9.1
  %add31 = add nsw i32 %add29, %add24
  %24 = load ptr, ptr %arrayidx33, align 8
  %arrayidx35 = getelementptr inbounds i32, ptr %24, i64 %idxprom1
  store i32 %add31, ptr %arrayidx35, align 4
  %add36 = add nsw i32 %sub27, %sub25
  %25 = load ptr, ptr %arrayidx39, align 8
  %arrayidx41 = getelementptr inbounds i32, ptr %25, i64 %idxprom1
  store i32 %add36, ptr %arrayidx41, align 4
  %sub42 = sub nsw i32 %sub25, %sub27
  %26 = load ptr, ptr %arrayidx45, align 8
  %arrayidx47 = getelementptr inbounds i32, ptr %26, i64 %idxprom1
  store i32 %sub42, ptr %arrayidx47, align 4
  %sub48 = sub nsw i32 %add24, %add29
  %27 = load ptr, ptr %arrayidx51, align 8
  %arrayidx53 = getelementptr inbounds i32, ptr %27, i64 %idxprom1
  store i32 %sub48, ptr %arrayidx53, align 4
  %add24.1 = add nsw i32 %add11.2, %add11
  %sub25.1 = sub nsw i32 %add11, %add11.2
  %shr26.1 = ashr i32 %add11.1, 1
  %sub27.1 = sub nsw i32 %shr26.1, %add11.3
  %shr28.1 = ashr i32 %add11.3, 1
  %add29.1 = add nsw i32 %shr28.1, %add11.1
  %28 = add nsw i64 %idxprom1, 1
  %add31.1 = add nsw i32 %add29.1, %add24.1
  %29 = load ptr, ptr %arrayidx33, align 8
  %arrayidx35.1 = getelementptr inbounds i32, ptr %29, i64 %28
  store i32 %add31.1, ptr %arrayidx35.1, align 4
  %add36.1 = add nsw i32 %sub27.1, %sub25.1
  %30 = load ptr, ptr %arrayidx39, align 8
  %arrayidx41.1 = getelementptr inbounds i32, ptr %30, i64 %28
  store i32 %add36.1, ptr %arrayidx41.1, align 4
  %sub42.1 = sub nsw i32 %sub25.1, %sub27.1
  %31 = load ptr, ptr %arrayidx45, align 8
  %arrayidx47.1 = getelementptr inbounds i32, ptr %31, i64 %28
  store i32 %sub42.1, ptr %arrayidx47.1, align 4
  %sub48.1 = sub nsw i32 %add24.1, %add29.1
  %32 = load ptr, ptr %arrayidx51, align 8
  %arrayidx53.1 = getelementptr inbounds i32, ptr %32, i64 %28
  store i32 %sub48.1, ptr %arrayidx53.1, align 4
  %add24.2 = add nsw i32 %sub13.2, %sub13
  %sub25.2 = sub nsw i32 %sub13, %sub13.2
  %shr26.2 = ashr i32 %sub13.1, 1
  %sub27.2 = sub nsw i32 %shr26.2, %sub13.3
  %shr28.2 = ashr i32 %sub13.3, 1
  %add29.2 = add nsw i32 %shr28.2, %sub13.1
  %33 = add nsw i64 %idxprom1, 2
  %add31.2 = add nsw i32 %add29.2, %add24.2
  %34 = load ptr, ptr %arrayidx33, align 8
  %arrayidx35.2 = getelementptr inbounds i32, ptr %34, i64 %33
  store i32 %add31.2, ptr %arrayidx35.2, align 4
  %add36.2 = add nsw i32 %sub27.2, %sub25.2
  %35 = load ptr, ptr %arrayidx39, align 8
  %arrayidx41.2 = getelementptr inbounds i32, ptr %35, i64 %33
  store i32 %add36.2, ptr %arrayidx41.2, align 4
  %sub42.2 = sub nsw i32 %sub25.2, %sub27.2
  %36 = load ptr, ptr %arrayidx45, align 8
  %arrayidx47.2 = getelementptr inbounds i32, ptr %36, i64 %33
  store i32 %sub42.2, ptr %arrayidx47.2, align 4
  %sub48.2 = sub nsw i32 %add24.2, %add29.2
  %37 = load ptr, ptr %arrayidx51, align 8
  %arrayidx53.2 = getelementptr inbounds i32, ptr %37, i64 %33
  store i32 %sub48.2, ptr %arrayidx53.2, align 4
  %add24.3 = add nsw i32 %sub15.2, %sub15
  %sub25.3 = sub nsw i32 %sub15, %sub15.2
  %shr26.3 = ashr i32 %sub15.1, 1
  %sub27.3 = sub nsw i32 %shr26.3, %sub15.3
  %shr28.3 = ashr i32 %sub15.3, 1
  %add29.3 = add nsw i32 %shr28.3, %sub15.1
  %38 = add nsw i64 %idxprom1, 3
  %add31.3 = add nsw i32 %add29.3, %add24.3
  %39 = load ptr, ptr %arrayidx33, align 8
  %arrayidx35.3 = getelementptr inbounds i32, ptr %39, i64 %38
  store i32 %add31.3, ptr %arrayidx35.3, align 4
  %add36.3 = add nsw i32 %sub27.3, %sub25.3
  %40 = load ptr, ptr %arrayidx39, align 8
  %arrayidx41.3 = getelementptr inbounds i32, ptr %40, i64 %38
  store i32 %add36.3, ptr %arrayidx41.3, align 4
  %sub42.3 = sub nsw i32 %sub25.3, %sub27.3
  %41 = load ptr, ptr %arrayidx45, align 8
  %arrayidx47.3 = getelementptr inbounds i32, ptr %41, i64 %38
  store i32 %sub42.3, ptr %arrayidx47.3, align 4
  %sub48.3 = sub nsw i32 %add24.3, %add29.3
  %42 = load ptr, ptr %arrayidx51, align 8
  %arrayidx53.3 = getelementptr inbounds i32, ptr %42, i64 %38
  store i32 %sub48.3, ptr %arrayidx53.3, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @hadamard4x4(ptr nocapture noundef readonly %block, ptr nocapture noundef readonly %tblock) local_unnamed_addr #0 {
entry:
  %0 = load ptr, ptr %block, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %0, i64 4
  %1 = load i32, ptr %0, align 4
  %incdec.ptr1 = getelementptr inbounds i8, ptr %0, i64 8
  %2 = load i32, ptr %incdec.ptr, align 4
  %incdec.ptr2 = getelementptr inbounds i8, ptr %0, i64 12
  %3 = load i32, ptr %incdec.ptr1, align 4
  %4 = load i32, ptr %incdec.ptr2, align 4
  %add = add nsw i32 %4, %1
  %add3 = add nsw i32 %3, %2
  %sub = sub nsw i32 %2, %3
  %sub4 = sub nsw i32 %1, %4
  %add5 = add nsw i32 %add, %add3
  %add7 = add nsw i32 %sub4, %sub
  %sub9 = sub nsw i32 %add, %add3
  %sub11 = sub nsw i32 %sub4, %sub
  %arrayidx.1 = getelementptr inbounds i8, ptr %block, i64 8
  %5 = load ptr, ptr %arrayidx.1, align 8
  %incdec.ptr.1 = getelementptr inbounds i8, ptr %5, i64 4
  %6 = load i32, ptr %5, align 4
  %incdec.ptr1.1 = getelementptr inbounds i8, ptr %5, i64 8
  %7 = load i32, ptr %incdec.ptr.1, align 4
  %incdec.ptr2.1 = getelementptr inbounds i8, ptr %5, i64 12
  %8 = load i32, ptr %incdec.ptr1.1, align 4
  %9 = load i32, ptr %incdec.ptr2.1, align 4
  %add.1 = add nsw i32 %9, %6
  %add3.1 = add nsw i32 %8, %7
  %sub.1 = sub nsw i32 %7, %8
  %sub4.1 = sub nsw i32 %6, %9
  %add5.1 = add nsw i32 %add.1, %add3.1
  %add7.1 = add nsw i32 %sub4.1, %sub.1
  %sub9.1 = sub nsw i32 %add.1, %add3.1
  %sub11.1 = sub nsw i32 %sub4.1, %sub.1
  %arrayidx.2 = getelementptr inbounds i8, ptr %block, i64 16
  %10 = load ptr, ptr %arrayidx.2, align 8
  %incdec.ptr.2 = getelementptr inbounds i8, ptr %10, i64 4
  %11 = load i32, ptr %10, align 4
  %incdec.ptr1.2 = getelementptr inbounds i8, ptr %10, i64 8
  %12 = load i32, ptr %incdec.ptr.2, align 4
  %incdec.ptr2.2 = getelementptr inbounds i8, ptr %10, i64 12
  %13 = load i32, ptr %incdec.ptr1.2, align 4
  %14 = load i32, ptr %incdec.ptr2.2, align 4
  %add.2 = add nsw i32 %14, %11
  %add3.2 = add nsw i32 %13, %12
  %sub.2 = sub nsw i32 %12, %13
  %sub4.2 = sub nsw i32 %11, %14
  %add5.2 = add nsw i32 %add.2, %add3.2
  %add7.2 = add nsw i32 %sub4.2, %sub.2
  %sub9.2 = sub nsw i32 %add.2, %add3.2
  %sub11.2 = sub nsw i32 %sub4.2, %sub.2
  %arrayidx.3 = getelementptr inbounds i8, ptr %block, i64 24
  %15 = load ptr, ptr %arrayidx.3, align 8
  %incdec.ptr.3 = getelementptr inbounds i8, ptr %15, i64 4
  %16 = load i32, ptr %15, align 4
  %incdec.ptr1.3 = getelementptr inbounds i8, ptr %15, i64 8
  %17 = load i32, ptr %incdec.ptr.3, align 4
  %incdec.ptr2.3 = getelementptr inbounds i8, ptr %15, i64 12
  %18 = load i32, ptr %incdec.ptr1.3, align 4
  %19 = load i32, ptr %incdec.ptr2.3, align 4
  %add.3 = add nsw i32 %19, %16
  %add3.3 = add nsw i32 %18, %17
  %sub.3 = sub nsw i32 %17, %18
  %sub4.3 = sub nsw i32 %16, %19
  %add5.3 = add nsw i32 %add.3, %add3.3
  %add7.3 = add nsw i32 %sub4.3, %sub.3
  %sub9.3 = sub nsw i32 %add.3, %add3.3
  %sub11.3 = sub nsw i32 %sub4.3, %sub.3
  %arrayidx30 = getelementptr inbounds i8, ptr %tblock, i64 8
  %arrayidx35 = getelementptr inbounds i8, ptr %tblock, i64 16
  %arrayidx40 = getelementptr inbounds i8, ptr %tblock, i64 24
  %add20 = add nsw i32 %add5.3, %add5
  %add21 = add nsw i32 %add5.2, %add5.1
  %sub22 = sub nsw i32 %add5.1, %add5.2
  %sub23 = sub nsw i32 %add5, %add5.3
  %add24 = add nsw i32 %add20, %add21
  %shr = ashr i32 %add24, 1
  %20 = load ptr, ptr %tblock, align 8
  store i32 %shr, ptr %20, align 4
  %add28 = add nsw i32 %sub23, %sub22
  %shr29 = ashr i32 %add28, 1
  %21 = load ptr, ptr %arrayidx30, align 8
  store i32 %shr29, ptr %21, align 4
  %sub33 = sub nsw i32 %add20, %add21
  %shr34 = ashr i32 %sub33, 1
  %22 = load ptr, ptr %arrayidx35, align 8
  store i32 %shr34, ptr %22, align 4
  %sub38 = sub nsw i32 %sub23, %sub22
  %shr39 = ashr i32 %sub38, 1
  %23 = load ptr, ptr %arrayidx40, align 8
  store i32 %shr39, ptr %23, align 4
  %add20.1 = add nsw i32 %add7.3, %add7
  %add21.1 = add nsw i32 %add7.2, %add7.1
  %sub22.1 = sub nsw i32 %add7.1, %add7.2
  %sub23.1 = sub nsw i32 %add7, %add7.3
  %add24.1 = add nsw i32 %add20.1, %add21.1
  %shr.1 = ashr i32 %add24.1, 1
  %24 = load ptr, ptr %tblock, align 8
  %arrayidx27.1 = getelementptr inbounds i8, ptr %24, i64 4
  store i32 %shr.1, ptr %arrayidx27.1, align 4
  %add28.1 = add nsw i32 %sub23.1, %sub22.1
  %shr29.1 = ashr i32 %add28.1, 1
  %25 = load ptr, ptr %arrayidx30, align 8
  %arrayidx32.1 = getelementptr inbounds i8, ptr %25, i64 4
  store i32 %shr29.1, ptr %arrayidx32.1, align 4
  %sub33.1 = sub nsw i32 %add20.1, %add21.1
  %shr34.1 = ashr i32 %sub33.1, 1
  %26 = load ptr, ptr %arrayidx35, align 8
  %arrayidx37.1 = getelementptr inbounds i8, ptr %26, i64 4
  store i32 %shr34.1, ptr %arrayidx37.1, align 4
  %sub38.1 = sub nsw i32 %sub23.1, %sub22.1
  %shr39.1 = ashr i32 %sub38.1, 1
  %27 = load ptr, ptr %arrayidx40, align 8
  %arrayidx42.1 = getelementptr inbounds i8, ptr %27, i64 4
  store i32 %shr39.1, ptr %arrayidx42.1, align 4
  %add20.2 = add nsw i32 %sub9.3, %sub9
  %add21.2 = add nsw i32 %sub9.2, %sub9.1
  %sub22.2 = sub nsw i32 %sub9.1, %sub9.2
  %sub23.2 = sub nsw i32 %sub9, %sub9.3
  %add24.2 = add nsw i32 %add20.2, %add21.2
  %shr.2 = ashr i32 %add24.2, 1
  %28 = load ptr, ptr %tblock, align 8
  %arrayidx27.2 = getelementptr inbounds i8, ptr %28, i64 8
  store i32 %shr.2, ptr %arrayidx27.2, align 4
  %add28.2 = add nsw i32 %sub23.2, %sub22.2
  %shr29.2 = ashr i32 %add28.2, 1
  %29 = load ptr, ptr %arrayidx30, align 8
  %arrayidx32.2 = getelementptr inbounds i8, ptr %29, i64 8
  store i32 %shr29.2, ptr %arrayidx32.2, align 4
  %sub33.2 = sub nsw i32 %add20.2, %add21.2
  %shr34.2 = ashr i32 %sub33.2, 1
  %30 = load ptr, ptr %arrayidx35, align 8
  %arrayidx37.2 = getelementptr inbounds i8, ptr %30, i64 8
  store i32 %shr34.2, ptr %arrayidx37.2, align 4
  %sub38.2 = sub nsw i32 %sub23.2, %sub22.2
  %shr39.2 = ashr i32 %sub38.2, 1
  %31 = load ptr, ptr %arrayidx40, align 8
  %arrayidx42.2 = getelementptr inbounds i8, ptr %31, i64 8
  store i32 %shr39.2, ptr %arrayidx42.2, align 4
  %add20.3 = add nsw i32 %sub11.3, %sub11
  %add21.3 = add nsw i32 %sub11.2, %sub11.1
  %sub22.3 = sub nsw i32 %sub11.1, %sub11.2
  %sub23.3 = sub nsw i32 %sub11, %sub11.3
  %add24.3 = add nsw i32 %add20.3, %add21.3
  %shr.3 = ashr i32 %add24.3, 1
  %32 = load ptr, ptr %tblock, align 8
  %arrayidx27.3 = getelementptr inbounds i8, ptr %32, i64 12
  store i32 %shr.3, ptr %arrayidx27.3, align 4
  %add28.3 = add nsw i32 %sub23.3, %sub22.3
  %shr29.3 = ashr i32 %add28.3, 1
  %33 = load ptr, ptr %arrayidx30, align 8
  %arrayidx32.3 = getelementptr inbounds i8, ptr %33, i64 12
  store i32 %shr29.3, ptr %arrayidx32.3, align 4
  %sub33.3 = sub nsw i32 %add20.3, %add21.3
  %shr34.3 = ashr i32 %sub33.3, 1
  %34 = load ptr, ptr %arrayidx35, align 8
  %arrayidx37.3 = getelementptr inbounds i8, ptr %34, i64 12
  store i32 %shr34.3, ptr %arrayidx37.3, align 4
  %sub38.3 = sub nsw i32 %sub23.3, %sub22.3
  %shr39.3 = ashr i32 %sub38.3, 1
  %35 = load ptr, ptr %arrayidx40, align 8
  %arrayidx42.3 = getelementptr inbounds i8, ptr %35, i64 12
  store i32 %shr39.3, ptr %arrayidx42.3, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ihadamard4x4(ptr nocapture noundef readonly %tblock, ptr nocapture noundef readonly %block) local_unnamed_addr #0 {
entry:
  %0 = load ptr, ptr %tblock, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %0, i64 4
  %1 = load i32, ptr %0, align 4
  %incdec.ptr1 = getelementptr inbounds i8, ptr %0, i64 8
  %2 = load i32, ptr %incdec.ptr, align 4
  %incdec.ptr2 = getelementptr inbounds i8, ptr %0, i64 12
  %3 = load i32, ptr %incdec.ptr1, align 4
  %4 = load i32, ptr %incdec.ptr2, align 4
  %add = add nsw i32 %3, %1
  %sub = sub nsw i32 %1, %3
  %sub3 = sub nsw i32 %2, %4
  %add4 = add nsw i32 %4, %2
  %add5 = add nsw i32 %add4, %add
  %add7 = add nsw i32 %sub3, %sub
  %sub9 = sub nsw i32 %sub, %sub3
  %sub11 = sub nsw i32 %add, %add4
  %arrayidx.1 = getelementptr inbounds i8, ptr %tblock, i64 8
  %5 = load ptr, ptr %arrayidx.1, align 8
  %incdec.ptr.1 = getelementptr inbounds i8, ptr %5, i64 4
  %6 = load i32, ptr %5, align 4
  %incdec.ptr1.1 = getelementptr inbounds i8, ptr %5, i64 8
  %7 = load i32, ptr %incdec.ptr.1, align 4
  %incdec.ptr2.1 = getelementptr inbounds i8, ptr %5, i64 12
  %8 = load i32, ptr %incdec.ptr1.1, align 4
  %9 = load i32, ptr %incdec.ptr2.1, align 4
  %add.1 = add nsw i32 %8, %6
  %sub.1 = sub nsw i32 %6, %8
  %sub3.1 = sub nsw i32 %7, %9
  %add4.1 = add nsw i32 %9, %7
  %add5.1 = add nsw i32 %add4.1, %add.1
  %add7.1 = add nsw i32 %sub3.1, %sub.1
  %sub9.1 = sub nsw i32 %sub.1, %sub3.1
  %sub11.1 = sub nsw i32 %add.1, %add4.1
  %arrayidx.2 = getelementptr inbounds i8, ptr %tblock, i64 16
  %10 = load ptr, ptr %arrayidx.2, align 8
  %incdec.ptr.2 = getelementptr inbounds i8, ptr %10, i64 4
  %11 = load i32, ptr %10, align 4
  %incdec.ptr1.2 = getelementptr inbounds i8, ptr %10, i64 8
  %12 = load i32, ptr %incdec.ptr.2, align 4
  %incdec.ptr2.2 = getelementptr inbounds i8, ptr %10, i64 12
  %13 = load i32, ptr %incdec.ptr1.2, align 4
  %14 = load i32, ptr %incdec.ptr2.2, align 4
  %add.2 = add nsw i32 %13, %11
  %sub.2 = sub nsw i32 %11, %13
  %sub3.2 = sub nsw i32 %12, %14
  %add4.2 = add nsw i32 %14, %12
  %add5.2 = add nsw i32 %add4.2, %add.2
  %add7.2 = add nsw i32 %sub3.2, %sub.2
  %sub9.2 = sub nsw i32 %sub.2, %sub3.2
  %sub11.2 = sub nsw i32 %add.2, %add4.2
  %arrayidx.3 = getelementptr inbounds i8, ptr %tblock, i64 24
  %15 = load ptr, ptr %arrayidx.3, align 8
  %incdec.ptr.3 = getelementptr inbounds i8, ptr %15, i64 4
  %16 = load i32, ptr %15, align 4
  %incdec.ptr1.3 = getelementptr inbounds i8, ptr %15, i64 8
  %17 = load i32, ptr %incdec.ptr.3, align 4
  %incdec.ptr2.3 = getelementptr inbounds i8, ptr %15, i64 12
  %18 = load i32, ptr %incdec.ptr1.3, align 4
  %19 = load i32, ptr %incdec.ptr2.3, align 4
  %add.3 = add nsw i32 %18, %16
  %sub.3 = sub nsw i32 %16, %18
  %sub3.3 = sub nsw i32 %17, %19
  %add4.3 = add nsw i32 %19, %17
  %add5.3 = add nsw i32 %add4.3, %add.3
  %add7.3 = add nsw i32 %sub3.3, %sub.3
  %sub9.3 = sub nsw i32 %sub.3, %sub3.3
  %sub11.3 = sub nsw i32 %add.3, %add4.3
  %arrayidx29 = getelementptr inbounds i8, ptr %block, i64 8
  %arrayidx33 = getelementptr inbounds i8, ptr %block, i64 16
  %arrayidx37 = getelementptr inbounds i8, ptr %block, i64 24
  %add20 = add nsw i32 %add5.2, %add5
  %sub21 = sub nsw i32 %add5, %add5.2
  %sub22 = sub nsw i32 %add5.1, %add5.3
  %add23 = add nsw i32 %add5.3, %add5.1
  %add24 = add nsw i32 %add23, %add20
  %20 = load ptr, ptr %block, align 8
  store i32 %add24, ptr %20, align 4
  %add28 = add nsw i32 %sub22, %sub21
  %21 = load ptr, ptr %arrayidx29, align 8
  store i32 %add28, ptr %21, align 4
  %sub32 = sub nsw i32 %sub21, %sub22
  %22 = load ptr, ptr %arrayidx33, align 8
  store i32 %sub32, ptr %22, align 4
  %sub36 = sub nsw i32 %add20, %add23
  %23 = load ptr, ptr %arrayidx37, align 8
  store i32 %sub36, ptr %23, align 4
  %add20.1 = add nsw i32 %add7.2, %add7
  %sub21.1 = sub nsw i32 %add7, %add7.2
  %sub22.1 = sub nsw i32 %add7.1, %add7.3
  %add23.1 = add nsw i32 %add7.3, %add7.1
  %add24.1 = add nsw i32 %add23.1, %add20.1
  %24 = load ptr, ptr %block, align 8
  %arrayidx27.1 = getelementptr inbounds i8, ptr %24, i64 4
  store i32 %add24.1, ptr %arrayidx27.1, align 4
  %add28.1 = add nsw i32 %sub22.1, %sub21.1
  %25 = load ptr, ptr %arrayidx29, align 8
  %arrayidx31.1 = getelementptr inbounds i8, ptr %25, i64 4
  store i32 %add28.1, ptr %arrayidx31.1, align 4
  %sub32.1 = sub nsw i32 %sub21.1, %sub22.1
  %26 = load ptr, ptr %arrayidx33, align 8
  %arrayidx35.1 = getelementptr inbounds i8, ptr %26, i64 4
  store i32 %sub32.1, ptr %arrayidx35.1, align 4
  %sub36.1 = sub nsw i32 %add20.1, %add23.1
  %27 = load ptr, ptr %arrayidx37, align 8
  %arrayidx39.1 = getelementptr inbounds i8, ptr %27, i64 4
  store i32 %sub36.1, ptr %arrayidx39.1, align 4
  %add20.2 = add nsw i32 %sub9.2, %sub9
  %sub21.2 = sub nsw i32 %sub9, %sub9.2
  %sub22.2 = sub nsw i32 %sub9.1, %sub9.3
  %add23.2 = add nsw i32 %sub9.3, %sub9.1
  %add24.2 = add nsw i32 %add23.2, %add20.2
  %28 = load ptr, ptr %block, align 8
  %arrayidx27.2 = getelementptr inbounds i8, ptr %28, i64 8
  store i32 %add24.2, ptr %arrayidx27.2, align 4
  %add28.2 = add nsw i32 %sub22.2, %sub21.2
  %29 = load ptr, ptr %arrayidx29, align 8
  %arrayidx31.2 = getelementptr inbounds i8, ptr %29, i64 8
  store i32 %add28.2, ptr %arrayidx31.2, align 4
  %sub32.2 = sub nsw i32 %sub21.2, %sub22.2
  %30 = load ptr, ptr %arrayidx33, align 8
  %arrayidx35.2 = getelementptr inbounds i8, ptr %30, i64 8
  store i32 %sub32.2, ptr %arrayidx35.2, align 4
  %sub36.2 = sub nsw i32 %add20.2, %add23.2
  %31 = load ptr, ptr %arrayidx37, align 8
  %arrayidx39.2 = getelementptr inbounds i8, ptr %31, i64 8
  store i32 %sub36.2, ptr %arrayidx39.2, align 4
  %add20.3 = add nsw i32 %sub11.2, %sub11
  %sub21.3 = sub nsw i32 %sub11, %sub11.2
  %sub22.3 = sub nsw i32 %sub11.1, %sub11.3
  %add23.3 = add nsw i32 %sub11.3, %sub11.1
  %add24.3 = add nsw i32 %add23.3, %add20.3
  %32 = load ptr, ptr %block, align 8
  %arrayidx27.3 = getelementptr inbounds i8, ptr %32, i64 12
  store i32 %add24.3, ptr %arrayidx27.3, align 4
  %add28.3 = add nsw i32 %sub22.3, %sub21.3
  %33 = load ptr, ptr %arrayidx29, align 8
  %arrayidx31.3 = getelementptr inbounds i8, ptr %33, i64 12
  store i32 %add28.3, ptr %arrayidx31.3, align 4
  %sub32.3 = sub nsw i32 %sub21.3, %sub22.3
  %34 = load ptr, ptr %arrayidx33, align 8
  %arrayidx35.3 = getelementptr inbounds i8, ptr %34, i64 12
  store i32 %sub32.3, ptr %arrayidx35.3, align 4
  %sub36.3 = sub nsw i32 %add20.3, %add23.3
  %35 = load ptr, ptr %arrayidx37, align 8
  %arrayidx39.3 = getelementptr inbounds i8, ptr %35, i64 12
  store i32 %sub36.3, ptr %arrayidx39.3, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @hadamard4x2(ptr nocapture noundef readonly %block, ptr nocapture noundef readonly %tblock) local_unnamed_addr #0 {
entry:
  %0 = load ptr, ptr %block, align 8
  %1 = load i32, ptr %0, align 4
  %arrayidx2 = getelementptr inbounds i8, ptr %block, i64 8
  %2 = load ptr, ptr %arrayidx2, align 8
  %3 = load i32, ptr %2, align 4
  %add = add nsw i32 %3, %1
  %arrayidx5 = getelementptr inbounds i8, ptr %0, i64 4
  %4 = load i32, ptr %arrayidx5, align 4
  %arrayidx7 = getelementptr inbounds i8, ptr %2, i64 4
  %5 = load i32, ptr %arrayidx7, align 4
  %add8 = add nsw i32 %5, %4
  %arrayidx11 = getelementptr inbounds i8, ptr %0, i64 8
  %6 = load i32, ptr %arrayidx11, align 4
  %arrayidx13 = getelementptr inbounds i8, ptr %2, i64 8
  %7 = load i32, ptr %arrayidx13, align 4
  %add14 = add nsw i32 %7, %6
  %arrayidx17 = getelementptr inbounds i8, ptr %0, i64 12
  %8 = load i32, ptr %arrayidx17, align 4
  %arrayidx19 = getelementptr inbounds i8, ptr %2, i64 12
  %9 = load i32, ptr %arrayidx19, align 4
  %add20 = add nsw i32 %9, %8
  %sub = sub nsw i32 %1, %3
  %sub31 = sub nsw i32 %4, %5
  %sub37 = sub nsw i32 %6, %7
  %sub43 = sub nsw i32 %8, %9
  %add49 = add nsw i32 %add20, %add
  %add50 = add nsw i32 %add14, %add8
  %sub51 = sub nsw i32 %add8, %add14
  %sub52 = sub nsw i32 %add, %add20
  %add53 = add nsw i32 %add49, %add50
  %10 = load ptr, ptr %tblock, align 8
  store i32 %add53, ptr %10, align 4
  %add56 = add nsw i32 %sub52, %sub51
  %11 = load ptr, ptr %tblock, align 8
  %arrayidx59 = getelementptr inbounds i8, ptr %11, i64 4
  store i32 %add56, ptr %arrayidx59, align 4
  %sub60 = sub nsw i32 %add49, %add50
  %12 = load ptr, ptr %tblock, align 8
  %arrayidx63 = getelementptr inbounds i8, ptr %12, i64 8
  store i32 %sub60, ptr %arrayidx63, align 4
  %sub64 = sub nsw i32 %sub52, %sub51
  %13 = load ptr, ptr %tblock, align 8
  %arrayidx67 = getelementptr inbounds i8, ptr %13, i64 12
  store i32 %sub64, ptr %arrayidx67, align 4
  %add49.1 = add nsw i32 %sub43, %sub
  %add50.1 = add nsw i32 %sub37, %sub31
  %sub51.1 = sub nsw i32 %sub31, %sub37
  %sub52.1 = sub nsw i32 %sub, %sub43
  %add53.1 = add nsw i32 %add49.1, %add50.1
  %arrayidx54.1 = getelementptr inbounds i8, ptr %tblock, i64 8
  %14 = load ptr, ptr %arrayidx54.1, align 8
  store i32 %add53.1, ptr %14, align 4
  %add56.1 = add nsw i32 %sub52.1, %sub51.1
  %15 = load ptr, ptr %arrayidx54.1, align 8
  %arrayidx59.1 = getelementptr inbounds i8, ptr %15, i64 4
  store i32 %add56.1, ptr %arrayidx59.1, align 4
  %sub60.1 = sub nsw i32 %add49.1, %add50.1
  %16 = load ptr, ptr %arrayidx54.1, align 8
  %arrayidx63.1 = getelementptr inbounds i8, ptr %16, i64 8
  store i32 %sub60.1, ptr %arrayidx63.1, align 4
  %sub64.1 = sub nsw i32 %sub52.1, %sub51.1
  %17 = load ptr, ptr %arrayidx54.1, align 8
  %arrayidx67.1 = getelementptr inbounds i8, ptr %17, i64 12
  store i32 %sub64.1, ptr %arrayidx67.1, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ihadamard4x2(ptr nocapture noundef readonly %tblock, ptr nocapture noundef readonly %block) local_unnamed_addr #0 {
entry:
  %0 = load ptr, ptr %tblock, align 8
  %1 = load i32, ptr %0, align 4
  %arrayidx2 = getelementptr inbounds i8, ptr %tblock, i64 8
  %2 = load ptr, ptr %arrayidx2, align 8
  %3 = load i32, ptr %2, align 4
  %add = add nsw i32 %3, %1
  %arrayidx5 = getelementptr inbounds i8, ptr %0, i64 4
  %4 = load i32, ptr %arrayidx5, align 4
  %arrayidx7 = getelementptr inbounds i8, ptr %2, i64 4
  %5 = load i32, ptr %arrayidx7, align 4
  %add8 = add nsw i32 %5, %4
  %arrayidx11 = getelementptr inbounds i8, ptr %0, i64 8
  %6 = load i32, ptr %arrayidx11, align 4
  %arrayidx13 = getelementptr inbounds i8, ptr %2, i64 8
  %7 = load i32, ptr %arrayidx13, align 4
  %add14 = add nsw i32 %7, %6
  %arrayidx17 = getelementptr inbounds i8, ptr %0, i64 12
  %8 = load i32, ptr %arrayidx17, align 4
  %arrayidx19 = getelementptr inbounds i8, ptr %2, i64 12
  %9 = load i32, ptr %arrayidx19, align 4
  %add20 = add nsw i32 %9, %8
  %sub = sub nsw i32 %1, %3
  %sub31 = sub nsw i32 %4, %5
  %sub37 = sub nsw i32 %6, %7
  %sub43 = sub nsw i32 %8, %9
  %arrayidx57 = getelementptr inbounds i8, ptr %block, i64 8
  %arrayidx61 = getelementptr inbounds i8, ptr %block, i64 16
  %arrayidx65 = getelementptr inbounds i8, ptr %block, i64 24
  %add49 = add nsw i32 %add14, %add
  %sub50 = sub nsw i32 %add, %add14
  %sub51 = sub nsw i32 %add8, %add20
  %add52 = add nsw i32 %add20, %add8
  %add53 = add nsw i32 %add52, %add49
  %10 = load ptr, ptr %block, align 8
  store i32 %add53, ptr %10, align 4
  %add56 = add nsw i32 %sub51, %sub50
  %11 = load ptr, ptr %arrayidx57, align 8
  store i32 %add56, ptr %11, align 4
  %sub60 = sub nsw i32 %sub50, %sub51
  %12 = load ptr, ptr %arrayidx61, align 8
  store i32 %sub60, ptr %12, align 4
  %sub64 = sub nsw i32 %add49, %add52
  %13 = load ptr, ptr %arrayidx65, align 8
  store i32 %sub64, ptr %13, align 4
  %add49.1 = add nsw i32 %sub37, %sub
  %sub50.1 = sub nsw i32 %sub, %sub37
  %sub51.1 = sub nsw i32 %sub31, %sub43
  %add52.1 = add nsw i32 %sub43, %sub31
  %add53.1 = add nsw i32 %add52.1, %add49.1
  %14 = load ptr, ptr %block, align 8
  %arrayidx55.1 = getelementptr inbounds i8, ptr %14, i64 4
  store i32 %add53.1, ptr %arrayidx55.1, align 4
  %add56.1 = add nsw i32 %sub51.1, %sub50.1
  %15 = load ptr, ptr %arrayidx57, align 8
  %arrayidx59.1 = getelementptr inbounds i8, ptr %15, i64 4
  store i32 %add56.1, ptr %arrayidx59.1, align 4
  %sub60.1 = sub nsw i32 %sub50.1, %sub51.1
  %16 = load ptr, ptr %arrayidx61, align 8
  %arrayidx63.1 = getelementptr inbounds i8, ptr %16, i64 4
  store i32 %sub60.1, ptr %arrayidx63.1, align 4
  %sub64.1 = sub nsw i32 %add49.1, %add52.1
  %17 = load ptr, ptr %arrayidx65, align 8
  %arrayidx67.1 = getelementptr inbounds i8, ptr %17, i64 4
  store i32 %sub64.1, ptr %arrayidx67.1, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @hadamard2x2(ptr nocapture noundef readonly %block, ptr nocapture noundef writeonly %tblock) local_unnamed_addr #2 {
entry:
  %0 = load ptr, ptr %block, align 8
  %1 = load i32, ptr %0, align 4
  %arrayidx3 = getelementptr inbounds i8, ptr %0, i64 16
  %2 = load i32, ptr %arrayidx3, align 4
  %add = add nsw i32 %2, %1
  %sub = sub nsw i32 %1, %2
  %arrayidx8 = getelementptr inbounds i8, ptr %block, i64 32
  %3 = load ptr, ptr %arrayidx8, align 8
  %4 = load i32, ptr %3, align 4
  %arrayidx11 = getelementptr inbounds i8, ptr %3, i64 16
  %5 = load i32, ptr %arrayidx11, align 4
  %add12 = add nsw i32 %5, %4
  %sub17 = sub nsw i32 %4, %5
  %add18 = add nsw i32 %add12, %add
  store i32 %add18, ptr %tblock, align 4
  %add20 = add nsw i32 %sub17, %sub
  %arrayidx21 = getelementptr inbounds i8, ptr %tblock, i64 4
  store i32 %add20, ptr %arrayidx21, align 4
  %sub22 = sub nsw i32 %add, %add12
  %arrayidx23 = getelementptr inbounds i8, ptr %tblock, i64 8
  store i32 %sub22, ptr %arrayidx23, align 4
  %sub24 = sub nsw i32 %sub, %sub17
  %arrayidx25 = getelementptr inbounds i8, ptr %tblock, i64 12
  store i32 %sub24, ptr %arrayidx25, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @ihadamard2x2(ptr nocapture noundef readonly %tblock, ptr nocapture noundef writeonly %block) local_unnamed_addr #3 {
entry:
  %0 = load <4 x i32>, ptr %tblock, align 4
  %1 = shufflevector <4 x i32> %0, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %2 = add nsw <4 x i32> %0, %1
  %3 = sub nsw <4 x i32> %0, %1
  %4 = shufflevector <4 x i32> %2, <4 x i32> %3, <4 x i32> <i32 3, i32 6, i32 1, i32 4>
  %5 = shufflevector <4 x i32> %4, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %6 = add nsw <4 x i32> %4, %5
  %7 = sub nsw <4 x i32> %4, %5
  %8 = shufflevector <4 x i32> %6, <4 x i32> %7, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i32> %8, ptr %block, align 4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @forward8x8(ptr nocapture noundef readonly %block, ptr nocapture noundef readonly %tblock, i32 noundef %pos_y, i32 noundef %pos_x) local_unnamed_addr #4 {
entry:
  %tmp = alloca [64 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %tmp) #6
  %idxprom1 = sext i32 %pos_x to i64
  %0 = sext i32 %pos_y to i64
  %1 = add i32 %pos_y, 7
  %2 = sext i32 %1 to i64
  %smax = tail call i64 @llvm.smax.i64(i64 %0, i64 %2)
  %3 = add i64 %smax, 1
  %4 = sub i64 %3, %0
  %min.iters.check = icmp ult i64 %4, 4
  br i1 %min.iters.check, label %for.body.preheader, label %vector.ph

for.body.preheader:                               ; preds = %middle.block, %entry
  %indvars.iv.ph = phi i64 [ %0, %entry ], [ %ind.end, %middle.block ]
  %pTmp.0298.ph = phi ptr [ %tmp, %entry ], [ %ind.end306, %middle.block ]
  br label %for.body

vector.ph:                                        ; preds = %entry
  %n.vec = and i64 %4, -4
  %ind.end = add i64 %n.vec, %0
  %5 = shl i64 %n.vec, 5
  %ind.end306 = getelementptr i8, ptr %tmp, i64 %5
  %invariant.gep = getelementptr i8, ptr %block, i64 8
  %invariant.gep312 = getelementptr i8, ptr %block, i64 16
  %invariant.gep314 = getelementptr i8, ptr %block, i64 24
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %offset.idx = add i64 %index, %0
  %offset.idx308 = shl i64 %index, 5
  %6 = or disjoint i64 %offset.idx308, 32
  %7 = or disjoint i64 %offset.idx308, 64
  %8 = or disjoint i64 %offset.idx308, 96
  %next.gep = getelementptr i8, ptr %tmp, i64 %offset.idx308
  %next.gep309 = getelementptr i8, ptr %tmp, i64 %6
  %next.gep310 = getelementptr i8, ptr %tmp, i64 %7
  %next.gep311 = getelementptr i8, ptr %tmp, i64 %8
  %9 = getelementptr inbounds ptr, ptr %block, i64 %offset.idx
  %gep = getelementptr ptr, ptr %invariant.gep, i64 %offset.idx
  %gep313 = getelementptr ptr, ptr %invariant.gep312, i64 %offset.idx
  %gep315 = getelementptr ptr, ptr %invariant.gep314, i64 %offset.idx
  %10 = load ptr, ptr %9, align 8
  %11 = load ptr, ptr %gep, align 8
  %12 = load ptr, ptr %gep313, align 8
  %13 = load ptr, ptr %gep315, align 8
  %14 = getelementptr inbounds i32, ptr %10, i64 %idxprom1
  %15 = getelementptr inbounds i32, ptr %11, i64 %idxprom1
  %16 = getelementptr inbounds i32, ptr %12, i64 %idxprom1
  %17 = getelementptr inbounds i32, ptr %13, i64 %idxprom1
  %18 = getelementptr inbounds i8, ptr %14, i64 4
  %19 = getelementptr inbounds i8, ptr %15, i64 4
  %20 = getelementptr inbounds i8, ptr %16, i64 4
  %21 = getelementptr inbounds i8, ptr %17, i64 4
  %22 = load i32, ptr %14, align 4
  %23 = load i32, ptr %15, align 4
  %24 = load i32, ptr %16, align 4
  %25 = load i32, ptr %17, align 4
  %26 = getelementptr inbounds i8, ptr %14, i64 8
  %27 = getelementptr inbounds i8, ptr %15, i64 8
  %28 = getelementptr inbounds i8, ptr %16, i64 8
  %29 = getelementptr inbounds i8, ptr %17, i64 8
  %30 = load i32, ptr %18, align 4
  %31 = load i32, ptr %19, align 4
  %32 = load i32, ptr %20, align 4
  %33 = load i32, ptr %21, align 4
  %34 = getelementptr inbounds i8, ptr %14, i64 12
  %35 = getelementptr inbounds i8, ptr %15, i64 12
  %36 = getelementptr inbounds i8, ptr %16, i64 12
  %37 = getelementptr inbounds i8, ptr %17, i64 12
  %38 = load i32, ptr %26, align 4
  %39 = load i32, ptr %27, align 4
  %40 = load i32, ptr %28, align 4
  %41 = load i32, ptr %29, align 4
  %42 = getelementptr inbounds i8, ptr %14, i64 16
  %43 = getelementptr inbounds i8, ptr %15, i64 16
  %44 = getelementptr inbounds i8, ptr %16, i64 16
  %45 = getelementptr inbounds i8, ptr %17, i64 16
  %46 = load i32, ptr %34, align 4
  %47 = load i32, ptr %35, align 4
  %48 = load i32, ptr %36, align 4
  %49 = load i32, ptr %37, align 4
  %50 = getelementptr inbounds i8, ptr %14, i64 20
  %51 = getelementptr inbounds i8, ptr %15, i64 20
  %52 = getelementptr inbounds i8, ptr %16, i64 20
  %53 = getelementptr inbounds i8, ptr %17, i64 20
  %54 = load i32, ptr %42, align 4
  %55 = load i32, ptr %43, align 4
  %56 = load i32, ptr %44, align 4
  %57 = load i32, ptr %45, align 4
  %58 = getelementptr inbounds i8, ptr %14, i64 24
  %59 = getelementptr inbounds i8, ptr %15, i64 24
  %60 = getelementptr inbounds i8, ptr %16, i64 24
  %61 = getelementptr inbounds i8, ptr %17, i64 24
  %62 = load i32, ptr %50, align 4
  %63 = load i32, ptr %51, align 4
  %64 = load i32, ptr %52, align 4
  %65 = load i32, ptr %53, align 4
  %66 = getelementptr inbounds i8, ptr %14, i64 28
  %67 = getelementptr inbounds i8, ptr %15, i64 28
  %68 = getelementptr inbounds i8, ptr %16, i64 28
  %69 = getelementptr inbounds i8, ptr %17, i64 28
  %70 = load i32, ptr %58, align 4
  %71 = load i32, ptr %59, align 4
  %72 = load i32, ptr %60, align 4
  %73 = load i32, ptr %61, align 4
  %74 = load i32, ptr %66, align 4
  %75 = load i32, ptr %67, align 4
  %76 = load i32, ptr %68, align 4
  %77 = load i32, ptr %69, align 4
  %78 = add nsw i32 %74, %22
  %79 = add nsw i32 %75, %23
  %80 = add nsw i32 %76, %24
  %81 = add nsw i32 %77, %25
  %82 = add nsw i32 %70, %30
  %83 = add nsw i32 %71, %31
  %84 = add nsw i32 %72, %32
  %85 = add nsw i32 %73, %33
  %86 = add nsw i32 %62, %38
  %87 = add nsw i32 %63, %39
  %88 = add nsw i32 %64, %40
  %89 = add nsw i32 %65, %41
  %90 = add nsw i32 %54, %46
  %91 = add nsw i32 %55, %47
  %92 = add nsw i32 %56, %48
  %93 = add nsw i32 %57, %49
  %94 = add nsw i32 %78, %90
  %95 = add nsw i32 %79, %91
  %96 = add nsw i32 %80, %92
  %97 = add nsw i32 %81, %93
  %98 = add nsw i32 %82, %86
  %99 = add nsw i32 %83, %87
  %100 = add nsw i32 %84, %88
  %101 = add nsw i32 %85, %89
  %102 = sub nsw i32 %78, %90
  %103 = sub nsw i32 %79, %91
  %104 = sub nsw i32 %80, %92
  %105 = sub nsw i32 %81, %93
  %106 = sub nsw i32 %82, %86
  %107 = sub nsw i32 %83, %87
  %108 = sub nsw i32 %84, %88
  %109 = sub nsw i32 %85, %89
  %110 = sub nsw i32 %22, %74
  %111 = sub nsw i32 %23, %75
  %112 = sub nsw i32 %24, %76
  %113 = sub nsw i32 %25, %77
  %114 = sub nsw i32 %30, %70
  %115 = sub nsw i32 %31, %71
  %116 = sub nsw i32 %32, %72
  %117 = sub nsw i32 %33, %73
  %118 = sub nsw i32 %38, %62
  %119 = sub nsw i32 %39, %63
  %120 = sub nsw i32 %40, %64
  %121 = sub nsw i32 %41, %65
  %122 = sub nsw i32 %46, %54
  %123 = sub nsw i32 %47, %55
  %124 = sub nsw i32 %48, %56
  %125 = sub nsw i32 %49, %57
  %126 = ashr i32 %110, 1
  %127 = ashr i32 %111, 1
  %128 = ashr i32 %112, 1
  %129 = ashr i32 %113, 1
  %130 = add i32 %114, %118
  %131 = add i32 %115, %119
  %132 = add i32 %116, %120
  %133 = add i32 %117, %121
  %134 = add i32 %130, %110
  %135 = add i32 %131, %111
  %136 = add i32 %132, %112
  %137 = add i32 %133, %113
  %138 = add i32 %134, %126
  %139 = add i32 %135, %127
  %140 = add i32 %136, %128
  %141 = add i32 %137, %129
  %142 = ashr i32 %118, 1
  %143 = ashr i32 %119, 1
  %144 = ashr i32 %120, 1
  %145 = ashr i32 %121, 1
  %146 = add i32 %118, %122
  %147 = add i32 %119, %123
  %148 = add i32 %120, %124
  %149 = add i32 %121, %125
  %150 = add i32 %146, %142
  %151 = add i32 %147, %143
  %152 = add i32 %148, %144
  %153 = add i32 %149, %145
  %154 = sub i32 %110, %150
  %155 = sub i32 %111, %151
  %156 = sub i32 %112, %152
  %157 = sub i32 %113, %153
  %158 = ashr i32 %114, 1
  %159 = ashr i32 %115, 1
  %160 = ashr i32 %116, 1
  %161 = ashr i32 %117, 1
  %162 = add i32 %122, %110
  %163 = add i32 %123, %111
  %164 = add i32 %124, %112
  %165 = add i32 %125, %113
  %166 = add i32 %114, %158
  %167 = add i32 %115, %159
  %168 = add i32 %116, %160
  %169 = add i32 %117, %161
  %170 = sub i32 %162, %166
  %171 = sub i32 %163, %167
  %172 = sub i32 %164, %168
  %173 = sub i32 %165, %169
  %174 = sub nsw i32 %114, %118
  %175 = sub nsw i32 %115, %119
  %176 = sub nsw i32 %116, %120
  %177 = sub nsw i32 %117, %121
  %178 = ashr i32 %122, 1
  %179 = ashr i32 %123, 1
  %180 = ashr i32 %124, 1
  %181 = ashr i32 %125, 1
  %182 = add nsw i32 %178, %122
  %183 = add nsw i32 %179, %123
  %184 = add nsw i32 %180, %124
  %185 = add nsw i32 %181, %125
  %186 = add nsw i32 %182, %174
  %187 = add nsw i32 %183, %175
  %188 = add nsw i32 %184, %176
  %189 = add nsw i32 %185, %177
  %190 = add nsw i32 %94, %98
  %191 = add nsw i32 %95, %99
  %192 = add nsw i32 %96, %100
  %193 = add nsw i32 %97, %101
  %194 = getelementptr inbounds i8, ptr %next.gep, i64 4
  %195 = getelementptr inbounds i8, ptr %next.gep309, i64 4
  %196 = getelementptr inbounds i8, ptr %next.gep310, i64 4
  %197 = getelementptr inbounds i8, ptr %next.gep311, i64 4
  store i32 %190, ptr %next.gep, align 16
  store i32 %191, ptr %next.gep309, align 16
  store i32 %192, ptr %next.gep310, align 16
  store i32 %193, ptr %next.gep311, align 16
  %198 = ashr i32 %186, 2
  %199 = ashr i32 %187, 2
  %200 = ashr i32 %188, 2
  %201 = ashr i32 %189, 2
  %202 = add nsw i32 %138, %198
  %203 = add nsw i32 %139, %199
  %204 = add nsw i32 %140, %200
  %205 = add nsw i32 %141, %201
  %206 = getelementptr inbounds i8, ptr %next.gep, i64 8
  %207 = getelementptr inbounds i8, ptr %next.gep309, i64 8
  %208 = getelementptr inbounds i8, ptr %next.gep310, i64 8
  %209 = getelementptr inbounds i8, ptr %next.gep311, i64 8
  store i32 %202, ptr %194, align 4
  store i32 %203, ptr %195, align 4
  store i32 %204, ptr %196, align 4
  store i32 %205, ptr %197, align 4
  %210 = ashr i32 %106, 1
  %211 = ashr i32 %107, 1
  %212 = ashr i32 %108, 1
  %213 = ashr i32 %109, 1
  %214 = add nsw i32 %102, %210
  %215 = add nsw i32 %103, %211
  %216 = add nsw i32 %104, %212
  %217 = add nsw i32 %105, %213
  %218 = getelementptr inbounds i8, ptr %next.gep, i64 12
  %219 = getelementptr inbounds i8, ptr %next.gep309, i64 12
  %220 = getelementptr inbounds i8, ptr %next.gep310, i64 12
  %221 = getelementptr inbounds i8, ptr %next.gep311, i64 12
  store i32 %214, ptr %206, align 8
  store i32 %215, ptr %207, align 8
  store i32 %216, ptr %208, align 8
  store i32 %217, ptr %209, align 8
  %222 = ashr i32 %170, 2
  %223 = ashr i32 %171, 2
  %224 = ashr i32 %172, 2
  %225 = ashr i32 %173, 2
  %226 = add nsw i32 %222, %154
  %227 = add nsw i32 %223, %155
  %228 = add nsw i32 %224, %156
  %229 = add nsw i32 %225, %157
  %230 = getelementptr inbounds i8, ptr %next.gep, i64 16
  %231 = getelementptr inbounds i8, ptr %next.gep309, i64 16
  %232 = getelementptr inbounds i8, ptr %next.gep310, i64 16
  %233 = getelementptr inbounds i8, ptr %next.gep311, i64 16
  store i32 %226, ptr %218, align 4
  store i32 %227, ptr %219, align 4
  store i32 %228, ptr %220, align 4
  store i32 %229, ptr %221, align 4
  %234 = sub nsw i32 %94, %98
  %235 = sub nsw i32 %95, %99
  %236 = sub nsw i32 %96, %100
  %237 = sub nsw i32 %97, %101
  %238 = getelementptr inbounds i8, ptr %next.gep, i64 20
  %239 = getelementptr inbounds i8, ptr %next.gep309, i64 20
  %240 = getelementptr inbounds i8, ptr %next.gep310, i64 20
  %241 = getelementptr inbounds i8, ptr %next.gep311, i64 20
  store i32 %234, ptr %230, align 16
  store i32 %235, ptr %231, align 16
  store i32 %236, ptr %232, align 16
  store i32 %237, ptr %233, align 16
  %242 = ashr i32 %154, 2
  %243 = ashr i32 %155, 2
  %244 = ashr i32 %156, 2
  %245 = ashr i32 %157, 2
  %246 = sub nsw i32 %170, %242
  %247 = sub nsw i32 %171, %243
  %248 = sub nsw i32 %172, %244
  %249 = sub nsw i32 %173, %245
  %250 = getelementptr inbounds i8, ptr %next.gep, i64 24
  %251 = getelementptr inbounds i8, ptr %next.gep309, i64 24
  %252 = getelementptr inbounds i8, ptr %next.gep310, i64 24
  %253 = getelementptr inbounds i8, ptr %next.gep311, i64 24
  store i32 %246, ptr %238, align 4
  store i32 %247, ptr %239, align 4
  store i32 %248, ptr %240, align 4
  store i32 %249, ptr %241, align 4
  %254 = ashr i32 %102, 1
  %255 = ashr i32 %103, 1
  %256 = ashr i32 %104, 1
  %257 = ashr i32 %105, 1
  %258 = sub nsw i32 %254, %106
  %259 = sub nsw i32 %255, %107
  %260 = sub nsw i32 %256, %108
  %261 = sub nsw i32 %257, %109
  %262 = getelementptr inbounds i8, ptr %next.gep, i64 28
  %263 = getelementptr inbounds i8, ptr %next.gep309, i64 28
  %264 = getelementptr inbounds i8, ptr %next.gep310, i64 28
  %265 = getelementptr inbounds i8, ptr %next.gep311, i64 28
  store i32 %258, ptr %250, align 8
  store i32 %259, ptr %251, align 8
  store i32 %260, ptr %252, align 8
  store i32 %261, ptr %253, align 8
  %266 = ashr i32 %138, 2
  %267 = ashr i32 %139, 2
  %268 = ashr i32 %140, 2
  %269 = ashr i32 %141, 2
  %270 = sub nsw i32 %266, %186
  %271 = sub nsw i32 %267, %187
  %272 = sub nsw i32 %268, %188
  %273 = sub nsw i32 %269, %189
  store i32 %270, ptr %262, align 4
  store i32 %271, ptr %263, align 4
  store i32 %272, ptr %264, align 4
  store i32 %273, ptr %265, align 4
  %index.next = add nuw i64 %index, 4
  %274 = icmp eq i64 %index.next, %n.vec
  br i1 %274, label %middle.block, label %vector.body, !llvm.loop !5

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %4, %n.vec
  br i1 %cmp.n, label %for.cond57.preheader, label %for.body.preheader

for.cond57.preheader:                             ; preds = %for.body, %middle.block
  %arrayidx99 = getelementptr inbounds ptr, ptr %tblock, i64 %0
  %arrayidx106 = getelementptr i8, ptr %arrayidx99, i64 8
  %arrayidx113 = getelementptr i8, ptr %arrayidx99, i64 16
  %arrayidx120 = getelementptr i8, ptr %arrayidx99, i64 24
  %arrayidx126 = getelementptr i8, ptr %arrayidx99, i64 32
  %arrayidx133 = getelementptr i8, ptr %arrayidx99, i64 40
  %arrayidx140 = getelementptr i8, ptr %arrayidx99, i64 48
  %arrayidx147 = getelementptr i8, ptr %arrayidx99, i64 56
  br label %for.body59

for.body:                                         ; preds = %for.body.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ %indvars.iv.ph, %for.body.preheader ]
  %pTmp.0298 = phi ptr [ %incdec.ptr56, %for.body ], [ %pTmp.0298.ph, %for.body.preheader ]
  %arrayidx = getelementptr inbounds ptr, ptr %block, i64 %indvars.iv
  %275 = load ptr, ptr %arrayidx, align 8
  %arrayidx2 = getelementptr inbounds i32, ptr %275, i64 %idxprom1
  %incdec.ptr = getelementptr inbounds i8, ptr %arrayidx2, i64 4
  %276 = load i32, ptr %arrayidx2, align 4
  %incdec.ptr3 = getelementptr inbounds i8, ptr %arrayidx2, i64 8
  %277 = load i32, ptr %incdec.ptr, align 4
  %incdec.ptr4 = getelementptr inbounds i8, ptr %arrayidx2, i64 12
  %278 = load i32, ptr %incdec.ptr3, align 4
  %incdec.ptr5 = getelementptr inbounds i8, ptr %arrayidx2, i64 16
  %279 = load i32, ptr %incdec.ptr4, align 4
  %incdec.ptr6 = getelementptr inbounds i8, ptr %arrayidx2, i64 20
  %280 = load i32, ptr %incdec.ptr5, align 4
  %incdec.ptr7 = getelementptr inbounds i8, ptr %arrayidx2, i64 24
  %281 = load i32, ptr %incdec.ptr6, align 4
  %incdec.ptr8 = getelementptr inbounds i8, ptr %arrayidx2, i64 28
  %282 = load i32, ptr %incdec.ptr7, align 4
  %283 = load i32, ptr %incdec.ptr8, align 4
  %add9 = add nsw i32 %283, %276
  %add10 = add nsw i32 %282, %277
  %add11 = add nsw i32 %281, %278
  %add12 = add nsw i32 %280, %279
  %add13 = add nsw i32 %add9, %add12
  %add14 = add nsw i32 %add10, %add11
  %sub = sub nsw i32 %add9, %add12
  %sub15 = sub nsw i32 %add10, %add11
  %sub16 = sub nsw i32 %276, %283
  %sub17 = sub nsw i32 %277, %282
  %sub18 = sub nsw i32 %278, %281
  %sub19 = sub nsw i32 %279, %280
  %shr = ashr i32 %sub16, 1
  %add21 = add i32 %sub17, %sub18
  %add20 = add i32 %add21, %sub16
  %add22 = add i32 %add20, %shr
  %shr24 = ashr i32 %sub18, 1
  %284 = add i32 %sub18, %sub19
  %285 = add i32 %284, %shr24
  %sub26 = sub i32 %sub16, %285
  %shr28 = ashr i32 %sub17, 1
  %286 = add i32 %sub19, %sub16
  %287 = add i32 %sub17, %shr28
  %sub30 = sub i32 %286, %287
  %sub31 = sub nsw i32 %sub17, %sub18
  %shr32 = ashr i32 %sub19, 1
  %add33 = add nsw i32 %shr32, %sub19
  %add34 = add nsw i32 %add33, %sub31
  %add35 = add nsw i32 %add13, %add14
  %incdec.ptr36 = getelementptr inbounds i8, ptr %pTmp.0298, i64 4
  store i32 %add35, ptr %pTmp.0298, align 4
  %shr37 = ashr i32 %add34, 2
  %add38 = add nsw i32 %add22, %shr37
  %incdec.ptr39 = getelementptr inbounds i8, ptr %pTmp.0298, i64 8
  store i32 %add38, ptr %incdec.ptr36, align 4
  %shr40 = ashr i32 %sub15, 1
  %add41 = add nsw i32 %sub, %shr40
  %incdec.ptr42 = getelementptr inbounds i8, ptr %pTmp.0298, i64 12
  store i32 %add41, ptr %incdec.ptr39, align 4
  %shr43 = ashr i32 %sub30, 2
  %add44 = add nsw i32 %shr43, %sub26
  %incdec.ptr45 = getelementptr inbounds i8, ptr %pTmp.0298, i64 16
  store i32 %add44, ptr %incdec.ptr42, align 4
  %sub46 = sub nsw i32 %add13, %add14
  %incdec.ptr47 = getelementptr inbounds i8, ptr %pTmp.0298, i64 20
  store i32 %sub46, ptr %incdec.ptr45, align 4
  %shr48 = ashr i32 %sub26, 2
  %sub49 = sub nsw i32 %sub30, %shr48
  %incdec.ptr50 = getelementptr inbounds i8, ptr %pTmp.0298, i64 24
  store i32 %sub49, ptr %incdec.ptr47, align 4
  %shr51 = ashr i32 %sub, 1
  %sub52 = sub nsw i32 %shr51, %sub15
  %incdec.ptr53 = getelementptr inbounds i8, ptr %pTmp.0298, i64 28
  store i32 %sub52, ptr %incdec.ptr50, align 4
  %shr54 = ashr i32 %add22, 2
  %sub55 = sub nsw i32 %shr54, %add34
  %incdec.ptr56 = getelementptr inbounds i8, ptr %pTmp.0298, i64 32
  store i32 %sub55, ptr %incdec.ptr53, align 4
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %cmp = icmp slt i64 %indvars.iv, %2
  br i1 %cmp, label %for.body, label %for.cond57.preheader, !llvm.loop !8

for.body59:                                       ; preds = %for.cond57.preheader, %for.body59
  %indvars.iv302 = phi i64 [ 0, %for.cond57.preheader ], [ %indvars.iv.next303, %for.body59 ]
  %add.ptr = getelementptr inbounds i32, ptr %tmp, i64 %indvars.iv302
  %288 = load i32, ptr %add.ptr, align 4
  %add.ptr61 = getelementptr inbounds i8, ptr %add.ptr, i64 32
  %289 = load i32, ptr %add.ptr61, align 4
  %add.ptr62 = getelementptr inbounds i8, ptr %add.ptr, i64 64
  %290 = load i32, ptr %add.ptr62, align 4
  %add.ptr63 = getelementptr inbounds i8, ptr %add.ptr, i64 96
  %291 = load i32, ptr %add.ptr63, align 4
  %add.ptr64 = getelementptr inbounds i8, ptr %add.ptr, i64 128
  %292 = load i32, ptr %add.ptr64, align 4
  %add.ptr65 = getelementptr inbounds i8, ptr %add.ptr, i64 160
  %293 = load i32, ptr %add.ptr65, align 4
  %add.ptr66 = getelementptr inbounds i8, ptr %add.ptr, i64 192
  %294 = load i32, ptr %add.ptr66, align 4
  %add.ptr67 = getelementptr inbounds i8, ptr %add.ptr, i64 224
  %295 = load i32, ptr %add.ptr67, align 4
  %add68 = add nsw i32 %295, %288
  %add69 = add nsw i32 %294, %289
  %add70 = add nsw i32 %293, %290
  %add71 = add nsw i32 %292, %291
  %add72 = add nsw i32 %add68, %add71
  %add73 = add nsw i32 %add69, %add70
  %sub74 = sub nsw i32 %add68, %add71
  %sub75 = sub nsw i32 %add69, %add70
  %sub76 = sub nsw i32 %288, %295
  %sub77 = sub nsw i32 %289, %294
  %sub78 = sub nsw i32 %290, %293
  %sub79 = sub nsw i32 %291, %292
  %shr81 = ashr i32 %sub76, 1
  %add82 = add i32 %sub77, %sub78
  %add80 = add i32 %add82, %sub76
  %add83 = add i32 %add80, %shr81
  %shr85 = ashr i32 %sub78, 1
  %296 = add i32 %sub78, %sub79
  %297 = add i32 %296, %shr85
  %sub87 = sub i32 %sub76, %297
  %shr89 = ashr i32 %sub77, 1
  %298 = add i32 %sub79, %sub76
  %299 = add i32 %sub77, %shr89
  %sub91 = sub i32 %298, %299
  %sub92 = sub nsw i32 %sub77, %sub78
  %shr93 = ashr i32 %sub79, 1
  %add94 = add nsw i32 %shr93, %sub79
  %add95 = add nsw i32 %add94, %sub92
  %300 = add nsw i64 %indvars.iv302, %idxprom1
  %add97 = add nsw i32 %add72, %add73
  %301 = load ptr, ptr %arrayidx99, align 8
  %arrayidx101 = getelementptr inbounds i32, ptr %301, i64 %300
  store i32 %add97, ptr %arrayidx101, align 4
  %shr102 = ashr i32 %add95, 2
  %add103 = add nsw i32 %add83, %shr102
  %302 = load ptr, ptr %arrayidx106, align 8
  %arrayidx108 = getelementptr inbounds i32, ptr %302, i64 %300
  store i32 %add103, ptr %arrayidx108, align 4
  %shr109 = ashr i32 %sub75, 1
  %add110 = add nsw i32 %sub74, %shr109
  %303 = load ptr, ptr %arrayidx113, align 8
  %arrayidx115 = getelementptr inbounds i32, ptr %303, i64 %300
  store i32 %add110, ptr %arrayidx115, align 4
  %shr116 = ashr i32 %sub91, 2
  %add117 = add nsw i32 %shr116, %sub87
  %304 = load ptr, ptr %arrayidx120, align 8
  %arrayidx122 = getelementptr inbounds i32, ptr %304, i64 %300
  store i32 %add117, ptr %arrayidx122, align 4
  %sub123 = sub nsw i32 %add72, %add73
  %305 = load ptr, ptr %arrayidx126, align 8
  %arrayidx128 = getelementptr inbounds i32, ptr %305, i64 %300
  store i32 %sub123, ptr %arrayidx128, align 4
  %shr129 = ashr i32 %sub87, 2
  %sub130 = sub nsw i32 %sub91, %shr129
  %306 = load ptr, ptr %arrayidx133, align 8
  %arrayidx135 = getelementptr inbounds i32, ptr %306, i64 %300
  store i32 %sub130, ptr %arrayidx135, align 4
  %shr136 = ashr i32 %sub74, 1
  %sub137 = sub nsw i32 %shr136, %sub75
  %307 = load ptr, ptr %arrayidx140, align 8
  %arrayidx142 = getelementptr inbounds i32, ptr %307, i64 %300
  store i32 %sub137, ptr %arrayidx142, align 4
  %shr143 = ashr i32 %add83, 2
  %sub144 = sub nsw i32 %shr143, %add95
  %308 = load ptr, ptr %arrayidx147, align 8
  %arrayidx149 = getelementptr inbounds i32, ptr %308, i64 %300
  store i32 %sub144, ptr %arrayidx149, align 4
  %indvars.iv.next303 = add nuw nsw i64 %indvars.iv302, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next303, 8
  br i1 %exitcond.not, label %for.end152, label %for.body59

for.end152:                                       ; preds = %for.body59
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %tmp) #6
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @inverse8x8(ptr nocapture noundef readonly %tblock, ptr nocapture noundef readonly %block, i32 noundef %pos_y, i32 noundef %pos_x) local_unnamed_addr #4 {
entry:
  %tmp = alloca [64 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %tmp) #6
  %idxprom1 = sext i32 %pos_x to i64
  %0 = sext i32 %pos_y to i64
  %1 = add i32 %pos_y, 7
  %2 = sext i32 %1 to i64
  %smax = tail call i64 @llvm.smax.i64(i64 %0, i64 %2)
  %3 = add i64 %smax, 1
  %4 = sub i64 %3, %0
  %min.iters.check = icmp ult i64 %4, 4
  br i1 %min.iters.check, label %for.body.preheader, label %vector.ph

for.body.preheader:                               ; preds = %middle.block, %entry
  %indvars.iv.ph = phi i64 [ %0, %entry ], [ %ind.end, %middle.block ]
  %pTmp.0312.ph = phi ptr [ %tmp, %entry ], [ %ind.end320, %middle.block ]
  br label %for.body

vector.ph:                                        ; preds = %entry
  %n.vec = and i64 %4, -4
  %ind.end = add i64 %n.vec, %0
  %5 = shl i64 %n.vec, 5
  %ind.end320 = getelementptr i8, ptr %tmp, i64 %5
  %invariant.gep = getelementptr i8, ptr %tblock, i64 8
  %invariant.gep326 = getelementptr i8, ptr %tblock, i64 16
  %invariant.gep328 = getelementptr i8, ptr %tblock, i64 24
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %offset.idx = add i64 %index, %0
  %offset.idx322 = shl i64 %index, 5
  %6 = or disjoint i64 %offset.idx322, 32
  %7 = or disjoint i64 %offset.idx322, 64
  %8 = or disjoint i64 %offset.idx322, 96
  %next.gep = getelementptr i8, ptr %tmp, i64 %offset.idx322
  %next.gep323 = getelementptr i8, ptr %tmp, i64 %6
  %next.gep324 = getelementptr i8, ptr %tmp, i64 %7
  %next.gep325 = getelementptr i8, ptr %tmp, i64 %8
  %9 = getelementptr inbounds ptr, ptr %tblock, i64 %offset.idx
  %gep = getelementptr ptr, ptr %invariant.gep, i64 %offset.idx
  %gep327 = getelementptr ptr, ptr %invariant.gep326, i64 %offset.idx
  %gep329 = getelementptr ptr, ptr %invariant.gep328, i64 %offset.idx
  %10 = load ptr, ptr %9, align 8
  %11 = load ptr, ptr %gep, align 8
  %12 = load ptr, ptr %gep327, align 8
  %13 = load ptr, ptr %gep329, align 8
  %14 = getelementptr inbounds i32, ptr %10, i64 %idxprom1
  %15 = getelementptr inbounds i32, ptr %11, i64 %idxprom1
  %16 = getelementptr inbounds i32, ptr %12, i64 %idxprom1
  %17 = getelementptr inbounds i32, ptr %13, i64 %idxprom1
  %18 = getelementptr inbounds i8, ptr %14, i64 4
  %19 = getelementptr inbounds i8, ptr %15, i64 4
  %20 = getelementptr inbounds i8, ptr %16, i64 4
  %21 = getelementptr inbounds i8, ptr %17, i64 4
  %22 = load i32, ptr %14, align 4
  %23 = load i32, ptr %15, align 4
  %24 = load i32, ptr %16, align 4
  %25 = load i32, ptr %17, align 4
  %26 = getelementptr inbounds i8, ptr %14, i64 8
  %27 = getelementptr inbounds i8, ptr %15, i64 8
  %28 = getelementptr inbounds i8, ptr %16, i64 8
  %29 = getelementptr inbounds i8, ptr %17, i64 8
  %30 = load i32, ptr %18, align 4
  %31 = load i32, ptr %19, align 4
  %32 = load i32, ptr %20, align 4
  %33 = load i32, ptr %21, align 4
  %34 = getelementptr inbounds i8, ptr %14, i64 12
  %35 = getelementptr inbounds i8, ptr %15, i64 12
  %36 = getelementptr inbounds i8, ptr %16, i64 12
  %37 = getelementptr inbounds i8, ptr %17, i64 12
  %38 = load i32, ptr %26, align 4
  %39 = load i32, ptr %27, align 4
  %40 = load i32, ptr %28, align 4
  %41 = load i32, ptr %29, align 4
  %42 = getelementptr inbounds i8, ptr %14, i64 16
  %43 = getelementptr inbounds i8, ptr %15, i64 16
  %44 = getelementptr inbounds i8, ptr %16, i64 16
  %45 = getelementptr inbounds i8, ptr %17, i64 16
  %46 = load i32, ptr %34, align 4
  %47 = load i32, ptr %35, align 4
  %48 = load i32, ptr %36, align 4
  %49 = load i32, ptr %37, align 4
  %50 = getelementptr inbounds i8, ptr %14, i64 20
  %51 = getelementptr inbounds i8, ptr %15, i64 20
  %52 = getelementptr inbounds i8, ptr %16, i64 20
  %53 = getelementptr inbounds i8, ptr %17, i64 20
  %54 = load i32, ptr %42, align 4
  %55 = load i32, ptr %43, align 4
  %56 = load i32, ptr %44, align 4
  %57 = load i32, ptr %45, align 4
  %58 = getelementptr inbounds i8, ptr %14, i64 24
  %59 = getelementptr inbounds i8, ptr %15, i64 24
  %60 = getelementptr inbounds i8, ptr %16, i64 24
  %61 = getelementptr inbounds i8, ptr %17, i64 24
  %62 = load i32, ptr %50, align 4
  %63 = load i32, ptr %51, align 4
  %64 = load i32, ptr %52, align 4
  %65 = load i32, ptr %53, align 4
  %66 = getelementptr inbounds i8, ptr %14, i64 28
  %67 = getelementptr inbounds i8, ptr %15, i64 28
  %68 = getelementptr inbounds i8, ptr %16, i64 28
  %69 = getelementptr inbounds i8, ptr %17, i64 28
  %70 = load i32, ptr %58, align 4
  %71 = load i32, ptr %59, align 4
  %72 = load i32, ptr %60, align 4
  %73 = load i32, ptr %61, align 4
  %74 = load i32, ptr %66, align 4
  %75 = load i32, ptr %67, align 4
  %76 = load i32, ptr %68, align 4
  %77 = load i32, ptr %69, align 4
  %78 = add nsw i32 %54, %22
  %79 = add nsw i32 %55, %23
  %80 = add nsw i32 %56, %24
  %81 = add nsw i32 %57, %25
  %82 = sub nsw i32 %22, %54
  %83 = sub nsw i32 %23, %55
  %84 = sub nsw i32 %24, %56
  %85 = sub nsw i32 %25, %57
  %86 = ashr i32 %38, 1
  %87 = ashr i32 %39, 1
  %88 = ashr i32 %40, 1
  %89 = ashr i32 %41, 1
  %90 = sub nsw i32 %70, %86
  %91 = sub nsw i32 %71, %87
  %92 = sub nsw i32 %72, %88
  %93 = sub nsw i32 %73, %89
  %94 = ashr i32 %70, 1
  %95 = ashr i32 %71, 1
  %96 = ashr i32 %72, 1
  %97 = ashr i32 %73, 1
  %98 = add nsw i32 %94, %38
  %99 = add nsw i32 %95, %39
  %100 = add nsw i32 %96, %40
  %101 = add nsw i32 %97, %41
  %102 = add nsw i32 %98, %78
  %103 = add nsw i32 %99, %79
  %104 = add nsw i32 %100, %80
  %105 = add nsw i32 %101, %81
  %106 = sub nsw i32 %82, %90
  %107 = sub nsw i32 %83, %91
  %108 = sub nsw i32 %84, %92
  %109 = sub nsw i32 %85, %93
  %110 = add nsw i32 %90, %82
  %111 = add nsw i32 %91, %83
  %112 = add nsw i32 %92, %84
  %113 = add nsw i32 %93, %85
  %114 = sub nsw i32 %78, %98
  %115 = sub nsw i32 %79, %99
  %116 = sub nsw i32 %80, %100
  %117 = sub nsw i32 %81, %101
  %118 = ashr i32 %74, 1
  %119 = ashr i32 %75, 1
  %120 = ashr i32 %76, 1
  %121 = ashr i32 %77, 1
  %122 = add i32 %46, %74
  %123 = add i32 %47, %75
  %124 = add i32 %48, %76
  %125 = add i32 %49, %77
  %126 = add i32 %122, %118
  %127 = add i32 %123, %119
  %128 = add i32 %124, %120
  %129 = add i32 %125, %121
  %130 = sub i32 %62, %126
  %131 = sub i32 %63, %127
  %132 = sub i32 %64, %128
  %133 = sub i32 %65, %129
  %134 = ashr i32 %46, 1
  %135 = ashr i32 %47, 1
  %136 = ashr i32 %48, 1
  %137 = ashr i32 %49, 1
  %138 = add i32 %46, %134
  %139 = add i32 %47, %135
  %140 = add i32 %48, %136
  %141 = add i32 %49, %137
  %142 = sub i32 %30, %138
  %143 = sub i32 %31, %139
  %144 = sub i32 %32, %140
  %145 = sub i32 %33, %141
  %146 = add i32 %142, %74
  %147 = add i32 %143, %75
  %148 = add i32 %144, %76
  %149 = add i32 %145, %77
  %150 = ashr i32 %62, 1
  %151 = ashr i32 %63, 1
  %152 = ashr i32 %64, 1
  %153 = ashr i32 %65, 1
  %154 = sub i32 %62, %30
  %155 = sub i32 %63, %31
  %156 = sub i32 %64, %32
  %157 = sub i32 %65, %33
  %158 = add i32 %154, %150
  %159 = add i32 %155, %151
  %160 = add i32 %156, %152
  %161 = add i32 %157, %153
  %162 = add i32 %158, %74
  %163 = add i32 %159, %75
  %164 = add i32 %160, %76
  %165 = add i32 %161, %77
  %166 = ashr i32 %30, 1
  %167 = ashr i32 %31, 1
  %168 = ashr i32 %32, 1
  %169 = ashr i32 %33, 1
  %170 = add i32 %166, %30
  %171 = add i32 %167, %31
  %172 = add i32 %168, %32
  %173 = add i32 %169, %33
  %174 = add i32 %170, %46
  %175 = add i32 %171, %47
  %176 = add i32 %172, %48
  %177 = add i32 %173, %49
  %178 = add i32 %174, %62
  %179 = add i32 %175, %63
  %180 = add i32 %176, %64
  %181 = add i32 %177, %65
  %182 = ashr i32 %178, 2
  %183 = ashr i32 %179, 2
  %184 = ashr i32 %180, 2
  %185 = ashr i32 %181, 2
  %186 = add nsw i32 %130, %182
  %187 = add nsw i32 %131, %183
  %188 = add nsw i32 %132, %184
  %189 = add nsw i32 %133, %185
  %190 = ashr i32 %162, 2
  %191 = ashr i32 %163, 2
  %192 = ashr i32 %164, 2
  %193 = ashr i32 %165, 2
  %194 = add nsw i32 %190, %146
  %195 = add nsw i32 %191, %147
  %196 = add nsw i32 %192, %148
  %197 = add nsw i32 %193, %149
  %198 = ashr i32 %146, 2
  %199 = ashr i32 %147, 2
  %200 = ashr i32 %148, 2
  %201 = ashr i32 %149, 2
  %202 = sub nsw i32 %162, %198
  %203 = sub nsw i32 %163, %199
  %204 = sub nsw i32 %164, %200
  %205 = sub nsw i32 %165, %201
  %206 = ashr i32 %130, 2
  %207 = ashr i32 %131, 2
  %208 = ashr i32 %132, 2
  %209 = ashr i32 %133, 2
  %210 = sub nsw i32 %178, %206
  %211 = sub nsw i32 %179, %207
  %212 = sub nsw i32 %180, %208
  %213 = sub nsw i32 %181, %209
  %214 = add nsw i32 %210, %102
  %215 = add nsw i32 %211, %103
  %216 = add nsw i32 %212, %104
  %217 = add nsw i32 %213, %105
  %218 = getelementptr inbounds i8, ptr %next.gep, i64 4
  %219 = getelementptr inbounds i8, ptr %next.gep323, i64 4
  %220 = getelementptr inbounds i8, ptr %next.gep324, i64 4
  %221 = getelementptr inbounds i8, ptr %next.gep325, i64 4
  store i32 %214, ptr %next.gep, align 16
  store i32 %215, ptr %next.gep323, align 16
  store i32 %216, ptr %next.gep324, align 16
  store i32 %217, ptr %next.gep325, align 16
  %222 = sub nsw i32 %106, %202
  %223 = sub nsw i32 %107, %203
  %224 = sub nsw i32 %108, %204
  %225 = sub nsw i32 %109, %205
  %226 = getelementptr inbounds i8, ptr %next.gep, i64 8
  %227 = getelementptr inbounds i8, ptr %next.gep323, i64 8
  %228 = getelementptr inbounds i8, ptr %next.gep324, i64 8
  %229 = getelementptr inbounds i8, ptr %next.gep325, i64 8
  store i32 %222, ptr %218, align 4
  store i32 %223, ptr %219, align 4
  store i32 %224, ptr %220, align 4
  store i32 %225, ptr %221, align 4
  %230 = add nsw i32 %194, %110
  %231 = add nsw i32 %195, %111
  %232 = add nsw i32 %196, %112
  %233 = add nsw i32 %197, %113
  %234 = getelementptr inbounds i8, ptr %next.gep, i64 12
  %235 = getelementptr inbounds i8, ptr %next.gep323, i64 12
  %236 = getelementptr inbounds i8, ptr %next.gep324, i64 12
  %237 = getelementptr inbounds i8, ptr %next.gep325, i64 12
  store i32 %230, ptr %226, align 8
  store i32 %231, ptr %227, align 8
  store i32 %232, ptr %228, align 8
  store i32 %233, ptr %229, align 8
  %238 = add nsw i32 %186, %114
  %239 = add nsw i32 %187, %115
  %240 = add nsw i32 %188, %116
  %241 = add nsw i32 %189, %117
  %242 = getelementptr inbounds i8, ptr %next.gep, i64 16
  %243 = getelementptr inbounds i8, ptr %next.gep323, i64 16
  %244 = getelementptr inbounds i8, ptr %next.gep324, i64 16
  %245 = getelementptr inbounds i8, ptr %next.gep325, i64 16
  store i32 %238, ptr %234, align 4
  store i32 %239, ptr %235, align 4
  store i32 %240, ptr %236, align 4
  store i32 %241, ptr %237, align 4
  %246 = sub nsw i32 %114, %186
  %247 = sub nsw i32 %115, %187
  %248 = sub nsw i32 %116, %188
  %249 = sub nsw i32 %117, %189
  %250 = getelementptr inbounds i8, ptr %next.gep, i64 20
  %251 = getelementptr inbounds i8, ptr %next.gep323, i64 20
  %252 = getelementptr inbounds i8, ptr %next.gep324, i64 20
  %253 = getelementptr inbounds i8, ptr %next.gep325, i64 20
  store i32 %246, ptr %242, align 16
  store i32 %247, ptr %243, align 16
  store i32 %248, ptr %244, align 16
  store i32 %249, ptr %245, align 16
  %254 = sub nsw i32 %110, %194
  %255 = sub nsw i32 %111, %195
  %256 = sub nsw i32 %112, %196
  %257 = sub nsw i32 %113, %197
  %258 = getelementptr inbounds i8, ptr %next.gep, i64 24
  %259 = getelementptr inbounds i8, ptr %next.gep323, i64 24
  %260 = getelementptr inbounds i8, ptr %next.gep324, i64 24
  %261 = getelementptr inbounds i8, ptr %next.gep325, i64 24
  store i32 %254, ptr %250, align 4
  store i32 %255, ptr %251, align 4
  store i32 %256, ptr %252, align 4
  store i32 %257, ptr %253, align 4
  %262 = add nsw i32 %202, %106
  %263 = add nsw i32 %203, %107
  %264 = add nsw i32 %204, %108
  %265 = add nsw i32 %205, %109
  %266 = getelementptr inbounds i8, ptr %next.gep, i64 28
  %267 = getelementptr inbounds i8, ptr %next.gep323, i64 28
  %268 = getelementptr inbounds i8, ptr %next.gep324, i64 28
  %269 = getelementptr inbounds i8, ptr %next.gep325, i64 28
  store i32 %262, ptr %258, align 8
  store i32 %263, ptr %259, align 8
  store i32 %264, ptr %260, align 8
  store i32 %265, ptr %261, align 8
  %270 = sub nsw i32 %102, %210
  %271 = sub nsw i32 %103, %211
  %272 = sub nsw i32 %104, %212
  %273 = sub nsw i32 %105, %213
  store i32 %270, ptr %266, align 4
  store i32 %271, ptr %267, align 4
  store i32 %272, ptr %268, align 4
  store i32 %273, ptr %269, align 4
  %index.next = add nuw i64 %index, 4
  %274 = icmp eq i64 %index.next, %n.vec
  br i1 %274, label %middle.block, label %vector.body, !llvm.loop !9

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %4, %n.vec
  br i1 %cmp.n, label %for.cond59.preheader, label %for.body.preheader

for.cond59.preheader:                             ; preds = %for.body, %middle.block
  %arrayidx109 = getelementptr inbounds ptr, ptr %block, i64 %0
  %arrayidx115 = getelementptr i8, ptr %arrayidx109, i64 8
  %arrayidx121 = getelementptr i8, ptr %arrayidx109, i64 16
  %arrayidx127 = getelementptr i8, ptr %arrayidx109, i64 24
  %arrayidx133 = getelementptr i8, ptr %arrayidx109, i64 32
  %arrayidx139 = getelementptr i8, ptr %arrayidx109, i64 40
  %arrayidx145 = getelementptr i8, ptr %arrayidx109, i64 48
  %arrayidx151 = getelementptr i8, ptr %arrayidx109, i64 56
  br label %for.body61

for.body:                                         ; preds = %for.body.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ %indvars.iv.ph, %for.body.preheader ]
  %pTmp.0312 = phi ptr [ %incdec.ptr58, %for.body ], [ %pTmp.0312.ph, %for.body.preheader ]
  %arrayidx = getelementptr inbounds ptr, ptr %tblock, i64 %indvars.iv
  %275 = load ptr, ptr %arrayidx, align 8
  %arrayidx2 = getelementptr inbounds i32, ptr %275, i64 %idxprom1
  %incdec.ptr = getelementptr inbounds i8, ptr %arrayidx2, i64 4
  %276 = load i32, ptr %arrayidx2, align 4
  %incdec.ptr3 = getelementptr inbounds i8, ptr %arrayidx2, i64 8
  %277 = load i32, ptr %incdec.ptr, align 4
  %incdec.ptr4 = getelementptr inbounds i8, ptr %arrayidx2, i64 12
  %278 = load i32, ptr %incdec.ptr3, align 4
  %incdec.ptr5 = getelementptr inbounds i8, ptr %arrayidx2, i64 16
  %279 = load i32, ptr %incdec.ptr4, align 4
  %incdec.ptr6 = getelementptr inbounds i8, ptr %arrayidx2, i64 20
  %280 = load i32, ptr %incdec.ptr5, align 4
  %incdec.ptr7 = getelementptr inbounds i8, ptr %arrayidx2, i64 24
  %281 = load i32, ptr %incdec.ptr6, align 4
  %incdec.ptr8 = getelementptr inbounds i8, ptr %arrayidx2, i64 28
  %282 = load i32, ptr %incdec.ptr7, align 4
  %283 = load i32, ptr %incdec.ptr8, align 4
  %add9 = add nsw i32 %280, %276
  %sub = sub nsw i32 %276, %280
  %shr = ashr i32 %278, 1
  %sub10 = sub nsw i32 %282, %shr
  %shr11 = ashr i32 %282, 1
  %add12 = add nsw i32 %shr11, %278
  %add13 = add nsw i32 %add12, %add9
  %sub14 = sub nsw i32 %sub, %sub10
  %add15 = add nsw i32 %sub10, %sub
  %sub16 = sub nsw i32 %add9, %add12
  %shr20 = ashr i32 %283, 1
  %284 = add i32 %279, %283
  %285 = add i32 %284, %shr20
  %sub21 = sub i32 %281, %285
  %shr24 = ashr i32 %279, 1
  %286 = add i32 %279, %shr24
  %add22 = sub i32 %277, %286
  %sub25 = add i32 %add22, %283
  %shr29 = ashr i32 %281, 1
  %add27 = sub i32 %281, %277
  %add28 = add i32 %add27, %shr29
  %add30 = add i32 %add28, %283
  %shr33 = ashr i32 %277, 1
  %add31 = add i32 %shr33, %277
  %add32 = add i32 %add31, %279
  %add34 = add i32 %add32, %281
  %shr35 = ashr i32 %add34, 2
  %add36 = add nsw i32 %sub21, %shr35
  %shr37 = ashr i32 %add30, 2
  %add38 = add nsw i32 %shr37, %sub25
  %shr39 = ashr i32 %sub25, 2
  %sub40 = sub nsw i32 %add30, %shr39
  %shr41 = ashr i32 %sub21, 2
  %sub42 = sub nsw i32 %add34, %shr41
  %add43 = add nsw i32 %sub42, %add13
  %incdec.ptr44 = getelementptr inbounds i8, ptr %pTmp.0312, i64 4
  store i32 %add43, ptr %pTmp.0312, align 4
  %sub45 = sub nsw i32 %sub14, %sub40
  %incdec.ptr46 = getelementptr inbounds i8, ptr %pTmp.0312, i64 8
  store i32 %sub45, ptr %incdec.ptr44, align 4
  %add47 = add nsw i32 %add38, %add15
  %incdec.ptr48 = getelementptr inbounds i8, ptr %pTmp.0312, i64 12
  store i32 %add47, ptr %incdec.ptr46, align 4
  %add49 = add nsw i32 %add36, %sub16
  %incdec.ptr50 = getelementptr inbounds i8, ptr %pTmp.0312, i64 16
  store i32 %add49, ptr %incdec.ptr48, align 4
  %sub51 = sub nsw i32 %sub16, %add36
  %incdec.ptr52 = getelementptr inbounds i8, ptr %pTmp.0312, i64 20
  store i32 %sub51, ptr %incdec.ptr50, align 4
  %sub53 = sub nsw i32 %add15, %add38
  %incdec.ptr54 = getelementptr inbounds i8, ptr %pTmp.0312, i64 24
  store i32 %sub53, ptr %incdec.ptr52, align 4
  %add55 = add nsw i32 %sub40, %sub14
  %incdec.ptr56 = getelementptr inbounds i8, ptr %pTmp.0312, i64 28
  store i32 %add55, ptr %incdec.ptr54, align 4
  %sub57 = sub nsw i32 %add13, %sub42
  %incdec.ptr58 = getelementptr inbounds i8, ptr %pTmp.0312, i64 32
  store i32 %sub57, ptr %incdec.ptr56, align 4
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %cmp = icmp slt i64 %indvars.iv, %2
  br i1 %cmp, label %for.body, label %for.cond59.preheader, !llvm.loop !10

for.body61:                                       ; preds = %for.cond59.preheader, %for.body61
  %indvars.iv316 = phi i64 [ 0, %for.cond59.preheader ], [ %indvars.iv.next317, %for.body61 ]
  %add.ptr = getelementptr inbounds i32, ptr %tmp, i64 %indvars.iv316
  %287 = load i32, ptr %add.ptr, align 4
  %add.ptr63 = getelementptr inbounds i8, ptr %add.ptr, i64 32
  %288 = load i32, ptr %add.ptr63, align 4
  %add.ptr64 = getelementptr inbounds i8, ptr %add.ptr, i64 64
  %289 = load i32, ptr %add.ptr64, align 4
  %add.ptr65 = getelementptr inbounds i8, ptr %add.ptr, i64 96
  %290 = load i32, ptr %add.ptr65, align 4
  %add.ptr66 = getelementptr inbounds i8, ptr %add.ptr, i64 128
  %291 = load i32, ptr %add.ptr66, align 4
  %add.ptr67 = getelementptr inbounds i8, ptr %add.ptr, i64 160
  %292 = load i32, ptr %add.ptr67, align 4
  %add.ptr68 = getelementptr inbounds i8, ptr %add.ptr, i64 192
  %293 = load i32, ptr %add.ptr68, align 4
  %add.ptr69 = getelementptr inbounds i8, ptr %add.ptr, i64 224
  %294 = load i32, ptr %add.ptr69, align 4
  %add70 = add nsw i32 %291, %287
  %sub71 = sub nsw i32 %287, %291
  %shr72 = ashr i32 %289, 1
  %sub73 = sub nsw i32 %293, %shr72
  %shr74 = ashr i32 %293, 1
  %add75 = add nsw i32 %shr74, %289
  %add76 = add nsw i32 %add75, %add70
  %sub77 = sub nsw i32 %sub71, %sub73
  %add78 = add nsw i32 %sub73, %sub71
  %sub79 = sub nsw i32 %add70, %add75
  %shr83 = ashr i32 %294, 1
  %295 = add i32 %290, %294
  %296 = add i32 %295, %shr83
  %sub84 = sub i32 %292, %296
  %shr87 = ashr i32 %290, 1
  %297 = add i32 %290, %shr87
  %add85 = sub i32 %288, %297
  %sub88 = add i32 %add85, %294
  %shr92 = ashr i32 %292, 1
  %add90 = sub i32 %292, %288
  %add91 = add i32 %add90, %shr92
  %add93 = add i32 %add91, %294
  %shr96 = ashr i32 %288, 1
  %add94 = add i32 %shr96, %288
  %add95 = add i32 %add94, %290
  %add97 = add i32 %add95, %292
  %shr98 = ashr i32 %add97, 2
  %add99 = add nsw i32 %sub84, %shr98
  %shr100 = ashr i32 %sub84, 2
  %sub101 = sub nsw i32 %add97, %shr100
  %shr102 = ashr i32 %add93, 2
  %add103 = add nsw i32 %shr102, %sub88
  %shr104 = ashr i32 %sub88, 2
  %sub105 = sub nsw i32 %add93, %shr104
  %298 = add nsw i64 %indvars.iv316, %idxprom1
  %add107 = add nsw i32 %sub101, %add76
  %299 = load ptr, ptr %arrayidx109, align 8
  %arrayidx111 = getelementptr inbounds i32, ptr %299, i64 %298
  store i32 %add107, ptr %arrayidx111, align 4
  %sub112 = sub nsw i32 %sub77, %sub105
  %300 = load ptr, ptr %arrayidx115, align 8
  %arrayidx117 = getelementptr inbounds i32, ptr %300, i64 %298
  store i32 %sub112, ptr %arrayidx117, align 4
  %add118 = add nsw i32 %add103, %add78
  %301 = load ptr, ptr %arrayidx121, align 8
  %arrayidx123 = getelementptr inbounds i32, ptr %301, i64 %298
  store i32 %add118, ptr %arrayidx123, align 4
  %add124 = add nsw i32 %add99, %sub79
  %302 = load ptr, ptr %arrayidx127, align 8
  %arrayidx129 = getelementptr inbounds i32, ptr %302, i64 %298
  store i32 %add124, ptr %arrayidx129, align 4
  %sub130 = sub nsw i32 %sub79, %add99
  %303 = load ptr, ptr %arrayidx133, align 8
  %arrayidx135 = getelementptr inbounds i32, ptr %303, i64 %298
  store i32 %sub130, ptr %arrayidx135, align 4
  %sub136 = sub nsw i32 %add78, %add103
  %304 = load ptr, ptr %arrayidx139, align 8
  %arrayidx141 = getelementptr inbounds i32, ptr %304, i64 %298
  store i32 %sub136, ptr %arrayidx141, align 4
  %add142 = add nsw i32 %sub105, %sub77
  %305 = load ptr, ptr %arrayidx145, align 8
  %arrayidx147 = getelementptr inbounds i32, ptr %305, i64 %298
  store i32 %add142, ptr %arrayidx147, align 4
  %sub148 = sub nsw i32 %add76, %sub101
  %306 = load ptr, ptr %arrayidx151, align 8
  %arrayidx153 = getelementptr inbounds i32, ptr %306, i64 %298
  store i32 %sub148, ptr %arrayidx153, align 4
  %indvars.iv.next317 = add nuw nsw i64 %indvars.iv316, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next317, 8
  br i1 %exitcond.not, label %for.end156, label %for.body61

for.end156:                                       ; preds = %for.body61
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %tmp) #6
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

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
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6, !7}
!10 = distinct !{!10, !6}
