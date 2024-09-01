; ModuleID = 'ldecod_src/block.c'
source_filename = "ldecod_src/block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dequant_coef = internal unnamed_addr constant [6 x [4 x [4 x i32]]] [[4 x [4 x i32]] [[4 x i32] [i32 10, i32 13, i32 10, i32 13], [4 x i32] [i32 13, i32 16, i32 13, i32 16], [4 x i32] [i32 10, i32 13, i32 10, i32 13], [4 x i32] [i32 13, i32 16, i32 13, i32 16]], [4 x [4 x i32]] [[4 x i32] [i32 11, i32 14, i32 11, i32 14], [4 x i32] [i32 14, i32 18, i32 14, i32 18], [4 x i32] [i32 11, i32 14, i32 11, i32 14], [4 x i32] [i32 14, i32 18, i32 14, i32 18]], [4 x [4 x i32]] [[4 x i32] [i32 13, i32 16, i32 13, i32 16], [4 x i32] [i32 16, i32 20, i32 16, i32 20], [4 x i32] [i32 13, i32 16, i32 13, i32 16], [4 x i32] [i32 16, i32 20, i32 16, i32 20]], [4 x [4 x i32]] [[4 x i32] [i32 14, i32 18, i32 14, i32 18], [4 x i32] [i32 18, i32 23, i32 18, i32 23], [4 x i32] [i32 14, i32 18, i32 14, i32 18], [4 x i32] [i32 18, i32 23, i32 18, i32 23]], [4 x [4 x i32]] [[4 x i32] [i32 16, i32 20, i32 16, i32 20], [4 x i32] [i32 20, i32 25, i32 20, i32 25], [4 x i32] [i32 16, i32 20, i32 16, i32 20], [4 x i32] [i32 20, i32 25, i32 20, i32 25]], [4 x [4 x i32]] [[4 x i32] [i32 18, i32 23, i32 18, i32 23], [4 x i32] [i32 23, i32 29, i32 23, i32 29], [4 x i32] [i32 18, i32 23, i32 18, i32 23], [4 x i32] [i32 23, i32 29, i32 23, i32 29]]], align 16
@quant_coef = internal unnamed_addr constant [6 x [4 x [4 x i32]]] [[4 x [4 x i32]] [[4 x i32] [i32 13107, i32 8066, i32 13107, i32 8066], [4 x i32] [i32 8066, i32 5243, i32 8066, i32 5243], [4 x i32] [i32 13107, i32 8066, i32 13107, i32 8066], [4 x i32] [i32 8066, i32 5243, i32 8066, i32 5243]], [4 x [4 x i32]] [[4 x i32] [i32 11916, i32 7490, i32 11916, i32 7490], [4 x i32] [i32 7490, i32 4660, i32 7490, i32 4660], [4 x i32] [i32 11916, i32 7490, i32 11916, i32 7490], [4 x i32] [i32 7490, i32 4660, i32 7490, i32 4660]], [4 x [4 x i32]] [[4 x i32] [i32 10082, i32 6554, i32 10082, i32 6554], [4 x i32] [i32 6554, i32 4194, i32 6554, i32 4194], [4 x i32] [i32 10082, i32 6554, i32 10082, i32 6554], [4 x i32] [i32 6554, i32 4194, i32 6554, i32 4194]], [4 x [4 x i32]] [[4 x i32] [i32 9362, i32 5825, i32 9362, i32 5825], [4 x i32] [i32 5825, i32 3647, i32 5825, i32 3647], [4 x i32] [i32 9362, i32 5825, i32 9362, i32 5825], [4 x i32] [i32 5825, i32 3647, i32 5825, i32 3647]], [4 x [4 x i32]] [[4 x i32] [i32 8192, i32 5243, i32 8192, i32 5243], [4 x i32] [i32 5243, i32 3355, i32 5243, i32 3355], [4 x i32] [i32 8192, i32 5243, i32 8192, i32 5243], [4 x i32] [i32 5243, i32 3355, i32 5243, i32 3355]], [4 x [4 x i32]] [[4 x i32] [i32 7282, i32 4559, i32 7282, i32 4559], [4 x i32] [i32 4559, i32 2893, i32 4559, i32 2893], [4 x i32] [i32 7282, i32 4559, i32 7282, i32 4559], [4 x i32] [i32 4559, i32 2893, i32 4559, i32 2893]]], align 16
@A = internal unnamed_addr constant [4 x [4 x i32]] [[4 x i32] [i32 16, i32 20, i32 16, i32 20], [4 x i32] [i32 20, i32 25, i32 20, i32 25], [4 x i32] [i32 16, i32 20, i32 16, i32 20], [4 x i32] [i32 20, i32 25, i32 20, i32 25]], align 16
@QP_SCALE_CR = internal unnamed_addr constant [52 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1D\1E\1F  !\22\22##$$%%%&&&''''", align 16
@subblk_offset_x = internal unnamed_addr constant [3 x [8 x [4 x i8]]] [[8 x [4 x i8]] [[4 x i8] c"\00\04\00\04", [4 x i8] c"\00\04\00\04", [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer], [8 x [4 x i8]] [[4 x i8] c"\00\04\00\04", [4 x i8] c"\00\04\00\04", [4 x i8] c"\00\04\00\04", [4 x i8] c"\00\04\00\04", [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer], [8 x [4 x i8]] [[4 x i8] c"\00\04\00\04", [4 x i8] c"\08\0C\08\0C", [4 x i8] c"\00\04\00\04", [4 x i8] c"\08\0C\08\0C", [4 x i8] c"\00\04\00\04", [4 x i8] c"\08\0C\08\0C", [4 x i8] c"\00\04\00\04", [4 x i8] c"\08\0C\08\0C"]], align 16
@subblk_offset_y = internal unnamed_addr constant [3 x [8 x [4 x i8]]] [[8 x [4 x i8]] [[4 x i8] c"\00\00\04\04", [4 x i8] c"\00\00\04\04", [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer], [8 x [4 x i8]] [[4 x i8] c"\00\00\04\04", [4 x i8] c"\08\08\0C\0C", [4 x i8] c"\00\00\04\04", [4 x i8] c"\08\08\0C\0C", [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer], [8 x [4 x i8]] [[4 x i8] c"\00\00\04\04", [4 x i8] c"\00\00\04\04", [4 x i8] c"\08\08\0C\0C", [4 x i8] c"\08\08\0C\0C", [4 x i8] c"\00\00\04\04", [4 x i8] c"\00\00\04\04", [4 x i8] c"\08\08\0C\0C", [4 x i8] c"\08\08\0C\0C"]], align 16

; Function Attrs: nounwind uwtable
define dso_local void @itrans4x4(ptr nocapture noundef readonly %currMB, i32 noundef %pl, i32 noundef %ioff, i32 noundef %joff) #0 {
entry:
  %0 = load ptr, ptr %currMB, align 8
  %mb_rres1 = getelementptr inbounds i8, ptr %0, i64 1264
  %1 = load ptr, ptr %mb_rres1, align 8
  %idxprom = zext i32 %pl to i64
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 %idxprom
  %2 = load ptr, ptr %arrayidx, align 8
  %cof = getelementptr inbounds i8, ptr %0, i64 1272
  %3 = load ptr, ptr %cof, align 8
  %arrayidx3 = getelementptr inbounds ptr, ptr %3, i64 %idxprom
  %4 = load ptr, ptr %arrayidx3, align 8
  tail call void @inverse4x4(ptr noundef %4, ptr noundef %2, i32 noundef %joff, i32 noundef %ioff) #8
  %mb_rec = getelementptr inbounds i8, ptr %0, i64 1256
  %5 = load ptr, ptr %mb_rec, align 8
  %arrayidx5 = getelementptr inbounds ptr, ptr %5, i64 %idxprom
  %6 = load ptr, ptr %arrayidx5, align 8
  %idxprom6 = sext i32 %joff to i64
  %arrayidx7 = getelementptr inbounds ptr, ptr %6, i64 %idxprom6
  %mb_pred = getelementptr inbounds i8, ptr %0, i64 1248
  %7 = load ptr, ptr %mb_pred, align 8
  %arrayidx9 = getelementptr inbounds ptr, ptr %7, i64 %idxprom
  %8 = load ptr, ptr %arrayidx9, align 8
  %arrayidx11 = getelementptr inbounds ptr, ptr %8, i64 %idxprom6
  %arrayidx13 = getelementptr inbounds ptr, ptr %2, i64 %idxprom6
  %p_Vid = getelementptr inbounds i8, ptr %currMB, i64 8
  %9 = load ptr, ptr %p_Vid, align 8
  %max_pel_value_comp = getelementptr inbounds i8, ptr %9, i64 849072
  %arrayidx15 = getelementptr inbounds [3 x i32], ptr %max_pel_value_comp, i64 0, i64 %idxprom
  %10 = load i32, ptr %arrayidx15, align 4
  tail call void @sample_reconstruct(ptr noundef %arrayidx7, ptr noundef %arrayidx11, ptr noundef %arrayidx13, i32 noundef %ioff, i32 noundef %ioff, i32 noundef 4, i32 noundef 4, i32 noundef %10, i32 noundef 6) #8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare void @inverse4x4(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @sample_reconstruct(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @itrans4x4_ls(ptr nocapture noundef readonly %currMB, i32 noundef %pl, i32 noundef %ioff, i32 noundef %joff) #3 {
for.end31:
  %0 = load ptr, ptr %currMB, align 8
  %p_Vid1 = getelementptr inbounds i8, ptr %currMB, i64 8
  %1 = load ptr, ptr %p_Vid1, align 8
  %max_pel_value_comp = getelementptr inbounds i8, ptr %1, i64 849072
  %idxprom = zext i32 %pl to i64
  %arrayidx = getelementptr inbounds [3 x i32], ptr %max_pel_value_comp, i64 0, i64 %idxprom
  %2 = load i32, ptr %arrayidx, align 4
  %mb_pred2 = getelementptr inbounds i8, ptr %0, i64 1248
  %3 = load ptr, ptr %mb_pred2, align 8
  %arrayidx4 = getelementptr inbounds ptr, ptr %3, i64 %idxprom
  %4 = load ptr, ptr %arrayidx4, align 8
  %mb_rec5 = getelementptr inbounds i8, ptr %0, i64 1256
  %5 = load ptr, ptr %mb_rec5, align 8
  %arrayidx7 = getelementptr inbounds ptr, ptr %5, i64 %idxprom
  %6 = load ptr, ptr %arrayidx7, align 8
  %mb_rres8 = getelementptr inbounds i8, ptr %0, i64 1264
  %7 = load ptr, ptr %mb_rres8, align 8
  %arrayidx10 = getelementptr inbounds ptr, ptr %7, i64 %idxprom
  %8 = load ptr, ptr %arrayidx10, align 8
  %9 = sext i32 %ioff to i64
  %10 = sext i32 %joff to i64
  %arrayidx16 = getelementptr inbounds ptr, ptr %4, i64 %10
  %arrayidx20 = getelementptr inbounds ptr, ptr %8, i64 %10
  %arrayidx26 = getelementptr inbounds ptr, ptr %6, i64 %10
  %11 = load ptr, ptr %arrayidx16, align 8
  %arrayidx18 = getelementptr inbounds i16, ptr %11, i64 %9
  %12 = load i16, ptr %arrayidx18, align 2
  %conv = zext i16 %12 to i32
  %13 = load ptr, ptr %arrayidx20, align 8
  %arrayidx22 = getelementptr inbounds i32, ptr %13, i64 %9
  %14 = load i32, ptr %arrayidx22, align 4
  %add23 = add nsw i32 %14, %conv
  %cond.i.i = tail call noundef i32 @llvm.smax.i32(i32 %add23, i32 0)
  %cond.i4.i = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i, i32 %2)
  %conv24 = trunc i32 %cond.i4.i to i16
  %15 = load ptr, ptr %arrayidx26, align 8
  %arrayidx28 = getelementptr inbounds i16, ptr %15, i64 %9
  store i16 %conv24, ptr %arrayidx28, align 2
  %indvars.iv.next = add nsw i64 %9, 1
  %16 = load ptr, ptr %arrayidx16, align 8
  %arrayidx18.1 = getelementptr inbounds i16, ptr %16, i64 %indvars.iv.next
  %17 = load i16, ptr %arrayidx18.1, align 2
  %conv.1 = zext i16 %17 to i32
  %18 = load ptr, ptr %arrayidx20, align 8
  %arrayidx22.1 = getelementptr inbounds i32, ptr %18, i64 %indvars.iv.next
  %19 = load i32, ptr %arrayidx22.1, align 4
  %add23.1 = add nsw i32 %19, %conv.1
  %cond.i.i.1 = tail call noundef i32 @llvm.smax.i32(i32 %add23.1, i32 0)
  %cond.i4.i.1 = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i.1, i32 %2)
  %conv24.1 = trunc i32 %cond.i4.i.1 to i16
  %20 = load ptr, ptr %arrayidx26, align 8
  %arrayidx28.1 = getelementptr inbounds i16, ptr %20, i64 %indvars.iv.next
  store i16 %conv24.1, ptr %arrayidx28.1, align 2
  %indvars.iv.next.1 = add nsw i64 %9, 2
  %21 = load ptr, ptr %arrayidx16, align 8
  %arrayidx18.2 = getelementptr inbounds i16, ptr %21, i64 %indvars.iv.next.1
  %22 = load i16, ptr %arrayidx18.2, align 2
  %conv.2 = zext i16 %22 to i32
  %23 = load ptr, ptr %arrayidx20, align 8
  %arrayidx22.2 = getelementptr inbounds i32, ptr %23, i64 %indvars.iv.next.1
  %24 = load i32, ptr %arrayidx22.2, align 4
  %add23.2 = add nsw i32 %24, %conv.2
  %cond.i.i.2 = tail call noundef i32 @llvm.smax.i32(i32 %add23.2, i32 0)
  %cond.i4.i.2 = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i.2, i32 %2)
  %conv24.2 = trunc i32 %cond.i4.i.2 to i16
  %25 = load ptr, ptr %arrayidx26, align 8
  %arrayidx28.2 = getelementptr inbounds i16, ptr %25, i64 %indvars.iv.next.1
  store i16 %conv24.2, ptr %arrayidx28.2, align 2
  %indvars.iv.next.2 = add nsw i64 %9, 3
  %26 = load ptr, ptr %arrayidx16, align 8
  %arrayidx18.3 = getelementptr inbounds i16, ptr %26, i64 %indvars.iv.next.2
  %27 = load i16, ptr %arrayidx18.3, align 2
  %conv.3 = zext i16 %27 to i32
  %28 = load ptr, ptr %arrayidx20, align 8
  %arrayidx22.3 = getelementptr inbounds i32, ptr %28, i64 %indvars.iv.next.2
  %29 = load i32, ptr %arrayidx22.3, align 4
  %add23.3 = add nsw i32 %29, %conv.3
  %cond.i.i.3 = tail call noundef i32 @llvm.smax.i32(i32 %add23.3, i32 0)
  %cond.i4.i.3 = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i.3, i32 %2)
  %conv24.3 = trunc i32 %cond.i4.i.3 to i16
  %30 = load ptr, ptr %arrayidx26, align 8
  %arrayidx28.3 = getelementptr inbounds i16, ptr %30, i64 %indvars.iv.next.2
  store i16 %conv24.3, ptr %arrayidx28.3, align 2
  %indvars.iv.next51 = add nsw i64 %10, 1
  %arrayidx16.1 = getelementptr inbounds ptr, ptr %4, i64 %indvars.iv.next51
  %arrayidx20.1 = getelementptr inbounds ptr, ptr %8, i64 %indvars.iv.next51
  %arrayidx26.1 = getelementptr inbounds ptr, ptr %6, i64 %indvars.iv.next51
  %31 = load ptr, ptr %arrayidx16.1, align 8
  %arrayidx18.153 = getelementptr inbounds i16, ptr %31, i64 %9
  %32 = load i16, ptr %arrayidx18.153, align 2
  %conv.154 = zext i16 %32 to i32
  %33 = load ptr, ptr %arrayidx20.1, align 8
  %arrayidx22.155 = getelementptr inbounds i32, ptr %33, i64 %9
  %34 = load i32, ptr %arrayidx22.155, align 4
  %add23.156 = add nsw i32 %34, %conv.154
  %cond.i.i.157 = tail call noundef i32 @llvm.smax.i32(i32 %add23.156, i32 0)
  %cond.i4.i.158 = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i.157, i32 %2)
  %conv24.159 = trunc i32 %cond.i4.i.158 to i16
  %35 = load ptr, ptr %arrayidx26.1, align 8
  %arrayidx28.160 = getelementptr inbounds i16, ptr %35, i64 %9
  store i16 %conv24.159, ptr %arrayidx28.160, align 2
  %36 = load ptr, ptr %arrayidx16.1, align 8
  %arrayidx18.1.1 = getelementptr inbounds i16, ptr %36, i64 %indvars.iv.next
  %37 = load i16, ptr %arrayidx18.1.1, align 2
  %conv.1.1 = zext i16 %37 to i32
  %38 = load ptr, ptr %arrayidx20.1, align 8
  %arrayidx22.1.1 = getelementptr inbounds i32, ptr %38, i64 %indvars.iv.next
  %39 = load i32, ptr %arrayidx22.1.1, align 4
  %add23.1.1 = add nsw i32 %39, %conv.1.1
  %cond.i.i.1.1 = tail call noundef i32 @llvm.smax.i32(i32 %add23.1.1, i32 0)
  %cond.i4.i.1.1 = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i.1.1, i32 %2)
  %conv24.1.1 = trunc i32 %cond.i4.i.1.1 to i16
  %40 = load ptr, ptr %arrayidx26.1, align 8
  %arrayidx28.1.1 = getelementptr inbounds i16, ptr %40, i64 %indvars.iv.next
  store i16 %conv24.1.1, ptr %arrayidx28.1.1, align 2
  %indvars.iv.next.1.1 = add nsw i64 %9, 2
  %41 = load ptr, ptr %arrayidx16.1, align 8
  %arrayidx18.2.1 = getelementptr inbounds i16, ptr %41, i64 %indvars.iv.next.1.1
  %42 = load i16, ptr %arrayidx18.2.1, align 2
  %conv.2.1 = zext i16 %42 to i32
  %43 = load ptr, ptr %arrayidx20.1, align 8
  %arrayidx22.2.1 = getelementptr inbounds i32, ptr %43, i64 %indvars.iv.next.1.1
  %44 = load i32, ptr %arrayidx22.2.1, align 4
  %add23.2.1 = add nsw i32 %44, %conv.2.1
  %cond.i.i.2.1 = tail call noundef i32 @llvm.smax.i32(i32 %add23.2.1, i32 0)
  %cond.i4.i.2.1 = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i.2.1, i32 %2)
  %conv24.2.1 = trunc i32 %cond.i4.i.2.1 to i16
  %45 = load ptr, ptr %arrayidx26.1, align 8
  %arrayidx28.2.1 = getelementptr inbounds i16, ptr %45, i64 %indvars.iv.next.1.1
  store i16 %conv24.2.1, ptr %arrayidx28.2.1, align 2
  %indvars.iv.next.2.1 = add nsw i64 %9, 3
  %46 = load ptr, ptr %arrayidx16.1, align 8
  %arrayidx18.3.1 = getelementptr inbounds i16, ptr %46, i64 %indvars.iv.next.2.1
  %47 = load i16, ptr %arrayidx18.3.1, align 2
  %conv.3.1 = zext i16 %47 to i32
  %48 = load ptr, ptr %arrayidx20.1, align 8
  %arrayidx22.3.1 = getelementptr inbounds i32, ptr %48, i64 %indvars.iv.next.2.1
  %49 = load i32, ptr %arrayidx22.3.1, align 4
  %add23.3.1 = add nsw i32 %49, %conv.3.1
  %cond.i.i.3.1 = tail call noundef i32 @llvm.smax.i32(i32 %add23.3.1, i32 0)
  %cond.i4.i.3.1 = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i.3.1, i32 %2)
  %conv24.3.1 = trunc i32 %cond.i4.i.3.1 to i16
  %50 = load ptr, ptr %arrayidx26.1, align 8
  %arrayidx28.3.1 = getelementptr inbounds i16, ptr %50, i64 %indvars.iv.next.2.1
  store i16 %conv24.3.1, ptr %arrayidx28.3.1, align 2
  %indvars.iv.next51.1 = add nsw i64 %10, 2
  %arrayidx16.2 = getelementptr inbounds ptr, ptr %4, i64 %indvars.iv.next51.1
  %arrayidx20.2 = getelementptr inbounds ptr, ptr %8, i64 %indvars.iv.next51.1
  %arrayidx26.2 = getelementptr inbounds ptr, ptr %6, i64 %indvars.iv.next51.1
  %51 = load ptr, ptr %arrayidx16.2, align 8
  %arrayidx18.263 = getelementptr inbounds i16, ptr %51, i64 %9
  %52 = load i16, ptr %arrayidx18.263, align 2
  %conv.264 = zext i16 %52 to i32
  %53 = load ptr, ptr %arrayidx20.2, align 8
  %arrayidx22.265 = getelementptr inbounds i32, ptr %53, i64 %9
  %54 = load i32, ptr %arrayidx22.265, align 4
  %add23.266 = add nsw i32 %54, %conv.264
  %cond.i.i.267 = tail call noundef i32 @llvm.smax.i32(i32 %add23.266, i32 0)
  %cond.i4.i.268 = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i.267, i32 %2)
  %conv24.269 = trunc i32 %cond.i4.i.268 to i16
  %55 = load ptr, ptr %arrayidx26.2, align 8
  %arrayidx28.270 = getelementptr inbounds i16, ptr %55, i64 %9
  store i16 %conv24.269, ptr %arrayidx28.270, align 2
  %56 = load ptr, ptr %arrayidx16.2, align 8
  %arrayidx18.1.2 = getelementptr inbounds i16, ptr %56, i64 %indvars.iv.next
  %57 = load i16, ptr %arrayidx18.1.2, align 2
  %conv.1.2 = zext i16 %57 to i32
  %58 = load ptr, ptr %arrayidx20.2, align 8
  %arrayidx22.1.2 = getelementptr inbounds i32, ptr %58, i64 %indvars.iv.next
  %59 = load i32, ptr %arrayidx22.1.2, align 4
  %add23.1.2 = add nsw i32 %59, %conv.1.2
  %cond.i.i.1.2 = tail call noundef i32 @llvm.smax.i32(i32 %add23.1.2, i32 0)
  %cond.i4.i.1.2 = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i.1.2, i32 %2)
  %conv24.1.2 = trunc i32 %cond.i4.i.1.2 to i16
  %60 = load ptr, ptr %arrayidx26.2, align 8
  %arrayidx28.1.2 = getelementptr inbounds i16, ptr %60, i64 %indvars.iv.next
  store i16 %conv24.1.2, ptr %arrayidx28.1.2, align 2
  %indvars.iv.next.1.2 = add nsw i64 %9, 2
  %61 = load ptr, ptr %arrayidx16.2, align 8
  %arrayidx18.2.2 = getelementptr inbounds i16, ptr %61, i64 %indvars.iv.next.1.2
  %62 = load i16, ptr %arrayidx18.2.2, align 2
  %conv.2.2 = zext i16 %62 to i32
  %63 = load ptr, ptr %arrayidx20.2, align 8
  %arrayidx22.2.2 = getelementptr inbounds i32, ptr %63, i64 %indvars.iv.next.1.2
  %64 = load i32, ptr %arrayidx22.2.2, align 4
  %add23.2.2 = add nsw i32 %64, %conv.2.2
  %cond.i.i.2.2 = tail call noundef i32 @llvm.smax.i32(i32 %add23.2.2, i32 0)
  %cond.i4.i.2.2 = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i.2.2, i32 %2)
  %conv24.2.2 = trunc i32 %cond.i4.i.2.2 to i16
  %65 = load ptr, ptr %arrayidx26.2, align 8
  %arrayidx28.2.2 = getelementptr inbounds i16, ptr %65, i64 %indvars.iv.next.1.2
  store i16 %conv24.2.2, ptr %arrayidx28.2.2, align 2
  %indvars.iv.next.2.2 = add nsw i64 %9, 3
  %66 = load ptr, ptr %arrayidx16.2, align 8
  %arrayidx18.3.2 = getelementptr inbounds i16, ptr %66, i64 %indvars.iv.next.2.2
  %67 = load i16, ptr %arrayidx18.3.2, align 2
  %conv.3.2 = zext i16 %67 to i32
  %68 = load ptr, ptr %arrayidx20.2, align 8
  %arrayidx22.3.2 = getelementptr inbounds i32, ptr %68, i64 %indvars.iv.next.2.2
  %69 = load i32, ptr %arrayidx22.3.2, align 4
  %add23.3.2 = add nsw i32 %69, %conv.3.2
  %cond.i.i.3.2 = tail call noundef i32 @llvm.smax.i32(i32 %add23.3.2, i32 0)
  %cond.i4.i.3.2 = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i.3.2, i32 %2)
  %conv24.3.2 = trunc i32 %cond.i4.i.3.2 to i16
  %70 = load ptr, ptr %arrayidx26.2, align 8
  %arrayidx28.3.2 = getelementptr inbounds i16, ptr %70, i64 %indvars.iv.next.2.2
  store i16 %conv24.3.2, ptr %arrayidx28.3.2, align 2
  %indvars.iv.next51.2 = add nsw i64 %10, 3
  %arrayidx16.3 = getelementptr inbounds ptr, ptr %4, i64 %indvars.iv.next51.2
  %arrayidx20.3 = getelementptr inbounds ptr, ptr %8, i64 %indvars.iv.next51.2
  %arrayidx26.3 = getelementptr inbounds ptr, ptr %6, i64 %indvars.iv.next51.2
  %71 = load ptr, ptr %arrayidx16.3, align 8
  %arrayidx18.372 = getelementptr inbounds i16, ptr %71, i64 %9
  %72 = load i16, ptr %arrayidx18.372, align 2
  %conv.373 = zext i16 %72 to i32
  %73 = load ptr, ptr %arrayidx20.3, align 8
  %arrayidx22.374 = getelementptr inbounds i32, ptr %73, i64 %9
  %74 = load i32, ptr %arrayidx22.374, align 4
  %add23.375 = add nsw i32 %74, %conv.373
  %cond.i.i.376 = tail call noundef i32 @llvm.smax.i32(i32 %add23.375, i32 0)
  %cond.i4.i.377 = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i.376, i32 %2)
  %conv24.378 = trunc i32 %cond.i4.i.377 to i16
  %75 = load ptr, ptr %arrayidx26.3, align 8
  %arrayidx28.379 = getelementptr inbounds i16, ptr %75, i64 %9
  store i16 %conv24.378, ptr %arrayidx28.379, align 2
  %76 = load ptr, ptr %arrayidx16.3, align 8
  %arrayidx18.1.3 = getelementptr inbounds i16, ptr %76, i64 %indvars.iv.next
  %77 = load i16, ptr %arrayidx18.1.3, align 2
  %conv.1.3 = zext i16 %77 to i32
  %78 = load ptr, ptr %arrayidx20.3, align 8
  %arrayidx22.1.3 = getelementptr inbounds i32, ptr %78, i64 %indvars.iv.next
  %79 = load i32, ptr %arrayidx22.1.3, align 4
  %add23.1.3 = add nsw i32 %79, %conv.1.3
  %cond.i.i.1.3 = tail call noundef i32 @llvm.smax.i32(i32 %add23.1.3, i32 0)
  %cond.i4.i.1.3 = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i.1.3, i32 %2)
  %conv24.1.3 = trunc i32 %cond.i4.i.1.3 to i16
  %80 = load ptr, ptr %arrayidx26.3, align 8
  %arrayidx28.1.3 = getelementptr inbounds i16, ptr %80, i64 %indvars.iv.next
  store i16 %conv24.1.3, ptr %arrayidx28.1.3, align 2
  %indvars.iv.next.1.3 = add nsw i64 %9, 2
  %81 = load ptr, ptr %arrayidx16.3, align 8
  %arrayidx18.2.3 = getelementptr inbounds i16, ptr %81, i64 %indvars.iv.next.1.3
  %82 = load i16, ptr %arrayidx18.2.3, align 2
  %conv.2.3 = zext i16 %82 to i32
  %83 = load ptr, ptr %arrayidx20.3, align 8
  %arrayidx22.2.3 = getelementptr inbounds i32, ptr %83, i64 %indvars.iv.next.1.3
  %84 = load i32, ptr %arrayidx22.2.3, align 4
  %add23.2.3 = add nsw i32 %84, %conv.2.3
  %cond.i.i.2.3 = tail call noundef i32 @llvm.smax.i32(i32 %add23.2.3, i32 0)
  %cond.i4.i.2.3 = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i.2.3, i32 %2)
  %conv24.2.3 = trunc i32 %cond.i4.i.2.3 to i16
  %85 = load ptr, ptr %arrayidx26.3, align 8
  %arrayidx28.2.3 = getelementptr inbounds i16, ptr %85, i64 %indvars.iv.next.1.3
  store i16 %conv24.2.3, ptr %arrayidx28.2.3, align 2
  %indvars.iv.next.2.3 = add nsw i64 %9, 3
  %86 = load ptr, ptr %arrayidx16.3, align 8
  %arrayidx18.3.3 = getelementptr inbounds i16, ptr %86, i64 %indvars.iv.next.2.3
  %87 = load i16, ptr %arrayidx18.3.3, align 2
  %conv.3.3 = zext i16 %87 to i32
  %88 = load ptr, ptr %arrayidx20.3, align 8
  %arrayidx22.3.3 = getelementptr inbounds i32, ptr %88, i64 %indvars.iv.next.2.3
  %89 = load i32, ptr %arrayidx22.3.3, align 4
  %add23.3.3 = add nsw i32 %89, %conv.3.3
  %cond.i.i.3.3 = tail call noundef i32 @llvm.smax.i32(i32 %add23.3.3, i32 0)
  %cond.i4.i.3.3 = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i.3.3, i32 %2)
  %conv24.3.3 = trunc i32 %cond.i4.i.3.3 to i16
  %90 = load ptr, ptr %arrayidx26.3, align 8
  %arrayidx28.3.3 = getelementptr inbounds i16, ptr %90, i64 %indvars.iv.next.2.3
  store i16 %conv24.3.3, ptr %arrayidx28.3.3, align 2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Inv_Residual_trans_4x4(ptr nocapture noundef readonly %currMB, i32 noundef %pl, i32 noundef %ioff, i32 noundef %joff) #3 {
entry:
  %0 = load ptr, ptr %currMB, align 8
  %mb_pred1 = getelementptr inbounds i8, ptr %0, i64 1248
  %1 = load ptr, ptr %mb_pred1, align 8
  %idxprom = zext i32 %pl to i64
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 %idxprom
  %2 = load ptr, ptr %arrayidx, align 8
  %mb_rec2 = getelementptr inbounds i8, ptr %0, i64 1256
  %3 = load ptr, ptr %mb_rec2, align 8
  %arrayidx4 = getelementptr inbounds ptr, ptr %3, i64 %idxprom
  %4 = load ptr, ptr %arrayidx4, align 8
  %mb_rres5 = getelementptr inbounds i8, ptr %0, i64 1264
  %5 = load ptr, ptr %mb_rres5, align 8
  %arrayidx7 = getelementptr inbounds ptr, ptr %5, i64 %idxprom
  %6 = load ptr, ptr %arrayidx7, align 8
  %cof8 = getelementptr inbounds i8, ptr %0, i64 1272
  %7 = load ptr, ptr %cof8, align 8
  %arrayidx10 = getelementptr inbounds ptr, ptr %7, i64 %idxprom
  %8 = load ptr, ptr %arrayidx10, align 8
  %ipmode_DPCM = getelementptr inbounds i8, ptr %currMB, i64 372
  %9 = load i8, ptr %ipmode_DPCM, align 4
  switch i8 %9, label %if.end229.loopexit [
    i8 0, label %for.cond.preheader
    i8 1, label %for.cond108.preheader
  ]

for.cond108.preheader:                            ; preds = %entry
  %idxprom115 = sext i32 %ioff to i64
  %10 = sext i32 %joff to i64
  %arrayidx114 = getelementptr inbounds ptr, ptr %8, i64 %10
  %11 = load ptr, ptr %arrayidx114, align 8
  %arrayidx116 = getelementptr inbounds i32, ptr %11, i64 %idxprom115
  %12 = load i32, ptr %arrayidx116, align 4
  %arrayidx125 = getelementptr i8, ptr %arrayidx116, i64 4
  %13 = load i32, ptr %arrayidx125, align 4
  %add129 = add nsw i32 %13, %12
  %arrayidx138 = getelementptr i8, ptr %arrayidx116, i64 8
  %14 = load i32, ptr %arrayidx138, align 4
  %add142 = add nsw i32 %14, %add129
  %arrayidx151 = getelementptr i8, ptr %arrayidx116, i64 12
  %15 = load i32, ptr %arrayidx151, align 4
  %add155 = add nsw i32 %15, %add142
  %16 = add nsw i64 %10, 1
  %arrayidx114.1 = getelementptr inbounds ptr, ptr %8, i64 %16
  %17 = load ptr, ptr %arrayidx114.1, align 8
  %arrayidx116.1 = getelementptr inbounds i32, ptr %17, i64 %idxprom115
  %18 = load i32, ptr %arrayidx116.1, align 4
  %arrayidx125.1 = getelementptr i8, ptr %arrayidx116.1, i64 4
  %19 = load i32, ptr %arrayidx125.1, align 4
  %add129.1 = add nsw i32 %19, %18
  %arrayidx138.1 = getelementptr i8, ptr %arrayidx116.1, i64 8
  %20 = load i32, ptr %arrayidx138.1, align 4
  %add142.1 = add nsw i32 %20, %add129.1
  %arrayidx151.1 = getelementptr i8, ptr %arrayidx116.1, i64 12
  %21 = load i32, ptr %arrayidx151.1, align 4
  %add155.1 = add nsw i32 %21, %add142.1
  %22 = add nsw i64 %10, 2
  %arrayidx114.2 = getelementptr inbounds ptr, ptr %8, i64 %22
  %23 = load ptr, ptr %arrayidx114.2, align 8
  %arrayidx116.2 = getelementptr inbounds i32, ptr %23, i64 %idxprom115
  %24 = load i32, ptr %arrayidx116.2, align 4
  %arrayidx125.2 = getelementptr i8, ptr %arrayidx116.2, i64 4
  %25 = load i32, ptr %arrayidx125.2, align 4
  %add129.2 = add nsw i32 %25, %24
  %arrayidx138.2 = getelementptr i8, ptr %arrayidx116.2, i64 8
  %26 = load i32, ptr %arrayidx138.2, align 4
  %add142.2 = add nsw i32 %26, %add129.2
  %arrayidx151.2 = getelementptr i8, ptr %arrayidx116.2, i64 12
  %27 = load i32, ptr %arrayidx151.2, align 4
  %add155.2 = add nsw i32 %27, %add142.2
  %28 = add nsw i64 %10, 3
  %arrayidx114.3 = getelementptr inbounds ptr, ptr %8, i64 %28
  %29 = load ptr, ptr %arrayidx114.3, align 8
  %arrayidx116.3 = getelementptr inbounds i32, ptr %29, i64 %idxprom115
  %30 = load i32, ptr %arrayidx116.3, align 4
  %arrayidx125.3 = getelementptr i8, ptr %arrayidx116.3, i64 4
  %31 = load i32, ptr %arrayidx125.3, align 4
  %add129.3 = add nsw i32 %31, %30
  %arrayidx138.3 = getelementptr i8, ptr %arrayidx116.3, i64 8
  %32 = load i32, ptr %arrayidx138.3, align 4
  %add142.3 = add nsw i32 %32, %add129.3
  %arrayidx151.3 = getelementptr i8, ptr %arrayidx116.3, i64 12
  %33 = load i32, ptr %arrayidx151.3, align 4
  %add155.3 = add nsw i32 %33, %add142.3
  %arrayidx171 = getelementptr inbounds ptr, ptr %6, i64 %10
  %34 = load ptr, ptr %arrayidx171, align 8
  %arrayidx173 = getelementptr inbounds i32, ptr %34, i64 %idxprom115
  store i32 %12, ptr %arrayidx173, align 4
  %35 = load ptr, ptr %arrayidx171, align 8
  %36 = getelementptr i32, ptr %35, i64 %idxprom115
  %arrayidx182 = getelementptr i8, ptr %36, i64 4
  store i32 %add129, ptr %arrayidx182, align 4
  %37 = load ptr, ptr %arrayidx171, align 8
  %38 = getelementptr i32, ptr %37, i64 %idxprom115
  %arrayidx191 = getelementptr i8, ptr %38, i64 8
  store i32 %add142, ptr %arrayidx191, align 4
  %39 = load ptr, ptr %arrayidx171, align 8
  %40 = getelementptr i32, ptr %39, i64 %idxprom115
  %arrayidx200 = getelementptr i8, ptr %40, i64 12
  store i32 %add155, ptr %arrayidx200, align 4
  %arrayidx171.1 = getelementptr inbounds ptr, ptr %6, i64 %16
  %41 = load ptr, ptr %arrayidx171.1, align 8
  %arrayidx173.1 = getelementptr inbounds i32, ptr %41, i64 %idxprom115
  store i32 %18, ptr %arrayidx173.1, align 4
  %42 = load ptr, ptr %arrayidx171.1, align 8
  %43 = getelementptr i32, ptr %42, i64 %idxprom115
  %arrayidx182.1 = getelementptr i8, ptr %43, i64 4
  store i32 %add129.1, ptr %arrayidx182.1, align 4
  %44 = load ptr, ptr %arrayidx171.1, align 8
  %45 = getelementptr i32, ptr %44, i64 %idxprom115
  %arrayidx191.1 = getelementptr i8, ptr %45, i64 8
  store i32 %add142.1, ptr %arrayidx191.1, align 4
  %46 = load ptr, ptr %arrayidx171.1, align 8
  %47 = getelementptr i32, ptr %46, i64 %idxprom115
  %arrayidx200.1 = getelementptr i8, ptr %47, i64 12
  store i32 %add155.1, ptr %arrayidx200.1, align 4
  %arrayidx171.2 = getelementptr inbounds ptr, ptr %6, i64 %22
  %48 = load ptr, ptr %arrayidx171.2, align 8
  %arrayidx173.2 = getelementptr inbounds i32, ptr %48, i64 %idxprom115
  store i32 %24, ptr %arrayidx173.2, align 4
  %49 = load ptr, ptr %arrayidx171.2, align 8
  %50 = getelementptr i32, ptr %49, i64 %idxprom115
  %arrayidx182.2 = getelementptr i8, ptr %50, i64 4
  store i32 %add129.2, ptr %arrayidx182.2, align 4
  %51 = load ptr, ptr %arrayidx171.2, align 8
  %52 = getelementptr i32, ptr %51, i64 %idxprom115
  %arrayidx191.2 = getelementptr i8, ptr %52, i64 8
  store i32 %add142.2, ptr %arrayidx191.2, align 4
  %53 = load ptr, ptr %arrayidx171.2, align 8
  %54 = getelementptr i32, ptr %53, i64 %idxprom115
  %arrayidx200.2 = getelementptr i8, ptr %54, i64 12
  store i32 %add155.2, ptr %arrayidx200.2, align 4
  %arrayidx171.3 = getelementptr inbounds ptr, ptr %6, i64 %28
  %55 = load ptr, ptr %arrayidx171.3, align 8
  %arrayidx173.3 = getelementptr inbounds i32, ptr %55, i64 %idxprom115
  store i32 %30, ptr %arrayidx173.3, align 4
  %56 = load ptr, ptr %arrayidx171.3, align 8
  %57 = getelementptr i32, ptr %56, i64 %idxprom115
  %arrayidx182.3 = getelementptr i8, ptr %57, i64 4
  store i32 %add129.3, ptr %arrayidx182.3, align 4
  %58 = load ptr, ptr %arrayidx171.3, align 8
  %59 = getelementptr i32, ptr %58, i64 %idxprom115
  %arrayidx191.3 = getelementptr i8, ptr %59, i64 8
  store i32 %add142.3, ptr %arrayidx191.3, align 4
  %60 = load ptr, ptr %arrayidx171.3, align 8
  %61 = getelementptr i32, ptr %60, i64 %idxprom115
  %arrayidx200.3 = getelementptr i8, ptr %61, i64 12
  store i32 %add155.3, ptr %arrayidx200.3, align 4
  %.pre = add nsw i64 %idxprom115, 1
  br label %for.end260

for.cond.preheader:                               ; preds = %entry
  %idxprom14 = sext i32 %joff to i64
  %arrayidx15 = getelementptr inbounds ptr, ptr %8, i64 %idxprom14
  %62 = load ptr, ptr %arrayidx15, align 8
  %arrayidx24 = getelementptr i8, ptr %arrayidx15, i64 8
  %63 = load ptr, ptr %arrayidx24, align 8
  %arrayidx37 = getelementptr i8, ptr %arrayidx15, i64 16
  %64 = load ptr, ptr %arrayidx37, align 8
  %arrayidx50 = getelementptr i8, ptr %arrayidx15, i64 24
  %65 = load ptr, ptr %arrayidx50, align 8
  %66 = sext i32 %ioff to i64
  %67 = shl nsw i64 %66, 2
  %scevgep = getelementptr i8, ptr %62, i64 %67
  %temp.sroa.0.0.copyload = load i32, ptr %scevgep, align 4
  %temp.sroa.6.0.scevgep.sroa_idx = getelementptr inbounds i8, ptr %scevgep, i64 4
  %temp.sroa.6.0.copyload = load i32, ptr %temp.sroa.6.0.scevgep.sroa_idx, align 4
  %temp.sroa.9.0.scevgep.sroa_idx = getelementptr inbounds i8, ptr %scevgep, i64 8
  %temp.sroa.9.0.copyload = load i32, ptr %temp.sroa.9.0.scevgep.sroa_idx, align 4
  %temp.sroa.12.0.scevgep.sroa_idx = getelementptr inbounds i8, ptr %scevgep, i64 12
  %temp.sroa.12.0.copyload = load i32, ptr %temp.sroa.12.0.scevgep.sroa_idx, align 4
  %arrayidx27 = getelementptr inbounds i32, ptr %63, i64 %66
  %68 = load i32, ptr %arrayidx27, align 4
  %add31 = add nsw i32 %68, %temp.sroa.0.0.copyload
  %arrayidx40 = getelementptr inbounds i32, ptr %64, i64 %66
  %69 = load i32, ptr %arrayidx40, align 4
  %add44 = add nsw i32 %69, %add31
  %arrayidx53 = getelementptr inbounds i32, ptr %65, i64 %66
  %70 = load i32, ptr %arrayidx53, align 4
  %add57 = add nsw i32 %70, %add44
  %71 = add nsw i64 %66, 1
  %arrayidx18.1 = getelementptr inbounds i32, ptr %62, i64 %71
  %72 = load i32, ptr %arrayidx18.1, align 4
  %arrayidx27.1 = getelementptr inbounds i32, ptr %63, i64 %71
  %73 = load i32, ptr %arrayidx27.1, align 4
  %add31.1 = add nsw i32 %73, %72
  %arrayidx40.1 = getelementptr inbounds i32, ptr %64, i64 %71
  %74 = load i32, ptr %arrayidx40.1, align 4
  %add44.1 = add nsw i32 %74, %add31.1
  %arrayidx53.1 = getelementptr inbounds i32, ptr %65, i64 %71
  %75 = load i32, ptr %arrayidx53.1, align 4
  %add57.1 = add nsw i32 %75, %add44.1
  %76 = add nsw i64 %66, 2
  %arrayidx18.2 = getelementptr inbounds i32, ptr %62, i64 %76
  %77 = load i32, ptr %arrayidx18.2, align 4
  %arrayidx27.2 = getelementptr inbounds i32, ptr %63, i64 %76
  %78 = load i32, ptr %arrayidx27.2, align 4
  %add31.2 = add nsw i32 %78, %77
  %arrayidx40.2 = getelementptr inbounds i32, ptr %64, i64 %76
  %79 = load i32, ptr %arrayidx40.2, align 4
  %add44.2 = add nsw i32 %79, %add31.2
  %arrayidx53.2 = getelementptr inbounds i32, ptr %65, i64 %76
  %80 = load i32, ptr %arrayidx53.2, align 4
  %add57.2 = add nsw i32 %80, %add44.2
  %81 = add nsw i64 %66, 3
  %arrayidx18.3 = getelementptr inbounds i32, ptr %62, i64 %81
  %82 = load i32, ptr %arrayidx18.3, align 4
  %arrayidx27.3 = getelementptr inbounds i32, ptr %63, i64 %81
  %83 = load i32, ptr %arrayidx27.3, align 4
  %add31.3 = add nsw i32 %83, %82
  %arrayidx40.3 = getelementptr inbounds i32, ptr %64, i64 %81
  %84 = load i32, ptr %arrayidx40.3, align 4
  %add44.3 = add nsw i32 %84, %add31.3
  %arrayidx53.3 = getelementptr inbounds i32, ptr %65, i64 %81
  %85 = load i32, ptr %arrayidx53.3, align 4
  %add57.3 = add nsw i32 %85, %add44.3
  %arrayidx69 = getelementptr inbounds ptr, ptr %6, i64 %idxprom14
  %arrayidx78 = getelementptr i8, ptr %arrayidx69, i64 8
  %arrayidx87 = getelementptr i8, ptr %arrayidx69, i64 16
  %arrayidx96 = getelementptr i8, ptr %arrayidx69, i64 24
  %86 = load ptr, ptr %arrayidx69, align 8
  %arrayidx72 = getelementptr inbounds i32, ptr %86, i64 %66
  store i32 %temp.sroa.0.0.copyload, ptr %arrayidx72, align 4
  %87 = load ptr, ptr %arrayidx78, align 8
  %arrayidx81 = getelementptr inbounds i32, ptr %87, i64 %66
  store i32 %add31, ptr %arrayidx81, align 4
  %88 = load ptr, ptr %arrayidx87, align 8
  %arrayidx90 = getelementptr inbounds i32, ptr %88, i64 %66
  store i32 %add44, ptr %arrayidx90, align 4
  %89 = load ptr, ptr %arrayidx96, align 8
  %arrayidx99 = getelementptr inbounds i32, ptr %89, i64 %66
  store i32 %add57, ptr %arrayidx99, align 4
  %90 = load ptr, ptr %arrayidx69, align 8
  %arrayidx72.1 = getelementptr inbounds i32, ptr %90, i64 %71
  store i32 %temp.sroa.6.0.copyload, ptr %arrayidx72.1, align 4
  %91 = load ptr, ptr %arrayidx78, align 8
  %arrayidx81.1 = getelementptr inbounds i32, ptr %91, i64 %71
  store i32 %add31.1, ptr %arrayidx81.1, align 4
  %92 = load ptr, ptr %arrayidx87, align 8
  %arrayidx90.1 = getelementptr inbounds i32, ptr %92, i64 %71
  store i32 %add44.1, ptr %arrayidx90.1, align 4
  %93 = load ptr, ptr %arrayidx96, align 8
  %arrayidx99.1 = getelementptr inbounds i32, ptr %93, i64 %71
  store i32 %add57.1, ptr %arrayidx99.1, align 4
  %94 = load ptr, ptr %arrayidx69, align 8
  %arrayidx72.2 = getelementptr inbounds i32, ptr %94, i64 %76
  store i32 %temp.sroa.9.0.copyload, ptr %arrayidx72.2, align 4
  %95 = load ptr, ptr %arrayidx78, align 8
  %arrayidx81.2 = getelementptr inbounds i32, ptr %95, i64 %76
  store i32 %add31.2, ptr %arrayidx81.2, align 4
  %96 = load ptr, ptr %arrayidx87, align 8
  %arrayidx90.2 = getelementptr inbounds i32, ptr %96, i64 %76
  store i32 %add44.2, ptr %arrayidx90.2, align 4
  %97 = load ptr, ptr %arrayidx96, align 8
  %arrayidx99.2 = getelementptr inbounds i32, ptr %97, i64 %76
  store i32 %add57.2, ptr %arrayidx99.2, align 4
  %98 = load ptr, ptr %arrayidx69, align 8
  %arrayidx72.3 = getelementptr inbounds i32, ptr %98, i64 %81
  store i32 %temp.sroa.12.0.copyload, ptr %arrayidx72.3, align 4
  %99 = load ptr, ptr %arrayidx78, align 8
  %arrayidx81.3 = getelementptr inbounds i32, ptr %99, i64 %81
  store i32 %add31.3, ptr %arrayidx81.3, align 4
  %100 = load ptr, ptr %arrayidx87, align 8
  %arrayidx90.3 = getelementptr inbounds i32, ptr %100, i64 %81
  store i32 %add44.3, ptr %arrayidx90.3, align 4
  %101 = load ptr, ptr %arrayidx96, align 8
  %arrayidx99.3 = getelementptr inbounds i32, ptr %101, i64 %81
  store i32 %add57.3, ptr %arrayidx99.3, align 4
  br label %for.end260

if.end229.loopexit:                               ; preds = %entry
  %102 = sext i32 %ioff to i64
  %103 = sext i32 %joff to i64
  %arrayidx216 = getelementptr inbounds ptr, ptr %8, i64 %103
  %arrayidx220 = getelementptr inbounds ptr, ptr %6, i64 %103
  %104 = load ptr, ptr %arrayidx216, align 8
  %arrayidx218 = getelementptr inbounds i32, ptr %104, i64 %102
  %105 = load i32, ptr %arrayidx218, align 4
  %106 = load ptr, ptr %arrayidx220, align 8
  %arrayidx222 = getelementptr inbounds i32, ptr %106, i64 %102
  store i32 %105, ptr %arrayidx222, align 4
  %indvars.iv.next = add nsw i64 %102, 1
  %107 = load ptr, ptr %arrayidx216, align 8
  %arrayidx218.1 = getelementptr inbounds i32, ptr %107, i64 %indvars.iv.next
  %108 = load i32, ptr %arrayidx218.1, align 4
  %109 = load ptr, ptr %arrayidx220, align 8
  %arrayidx222.1 = getelementptr inbounds i32, ptr %109, i64 %indvars.iv.next
  store i32 %108, ptr %arrayidx222.1, align 4
  %indvars.iv.next.1 = add nsw i64 %102, 2
  %110 = load ptr, ptr %arrayidx216, align 8
  %arrayidx218.2 = getelementptr inbounds i32, ptr %110, i64 %indvars.iv.next.1
  %111 = load i32, ptr %arrayidx218.2, align 4
  %112 = load ptr, ptr %arrayidx220, align 8
  %arrayidx222.2 = getelementptr inbounds i32, ptr %112, i64 %indvars.iv.next.1
  store i32 %111, ptr %arrayidx222.2, align 4
  %indvars.iv.next.2 = add nsw i64 %102, 3
  %113 = load ptr, ptr %arrayidx216, align 8
  %arrayidx218.3 = getelementptr inbounds i32, ptr %113, i64 %indvars.iv.next.2
  %114 = load i32, ptr %arrayidx218.3, align 4
  %115 = load ptr, ptr %arrayidx220, align 8
  %arrayidx222.3 = getelementptr inbounds i32, ptr %115, i64 %indvars.iv.next.2
  store i32 %114, ptr %arrayidx222.3, align 4
  %indvars.iv.next407 = add nsw i64 %103, 1
  %arrayidx216.1 = getelementptr inbounds ptr, ptr %8, i64 %indvars.iv.next407
  %arrayidx220.1 = getelementptr inbounds ptr, ptr %6, i64 %indvars.iv.next407
  %116 = load ptr, ptr %arrayidx216.1, align 8
  %arrayidx218.1409 = getelementptr inbounds i32, ptr %116, i64 %102
  %117 = load i32, ptr %arrayidx218.1409, align 4
  %118 = load ptr, ptr %arrayidx220.1, align 8
  %arrayidx222.1410 = getelementptr inbounds i32, ptr %118, i64 %102
  store i32 %117, ptr %arrayidx222.1410, align 4
  %119 = load ptr, ptr %arrayidx216.1, align 8
  %arrayidx218.1.1 = getelementptr inbounds i32, ptr %119, i64 %indvars.iv.next
  %120 = load i32, ptr %arrayidx218.1.1, align 4
  %121 = load ptr, ptr %arrayidx220.1, align 8
  %arrayidx222.1.1 = getelementptr inbounds i32, ptr %121, i64 %indvars.iv.next
  store i32 %120, ptr %arrayidx222.1.1, align 4
  %indvars.iv.next.1.1 = add nsw i64 %102, 2
  %122 = load ptr, ptr %arrayidx216.1, align 8
  %arrayidx218.2.1 = getelementptr inbounds i32, ptr %122, i64 %indvars.iv.next.1.1
  %123 = load i32, ptr %arrayidx218.2.1, align 4
  %124 = load ptr, ptr %arrayidx220.1, align 8
  %arrayidx222.2.1 = getelementptr inbounds i32, ptr %124, i64 %indvars.iv.next.1.1
  store i32 %123, ptr %arrayidx222.2.1, align 4
  %indvars.iv.next.2.1 = add nsw i64 %102, 3
  %125 = load ptr, ptr %arrayidx216.1, align 8
  %arrayidx218.3.1 = getelementptr inbounds i32, ptr %125, i64 %indvars.iv.next.2.1
  %126 = load i32, ptr %arrayidx218.3.1, align 4
  %127 = load ptr, ptr %arrayidx220.1, align 8
  %arrayidx222.3.1 = getelementptr inbounds i32, ptr %127, i64 %indvars.iv.next.2.1
  store i32 %126, ptr %arrayidx222.3.1, align 4
  %indvars.iv.next407.1 = add nsw i64 %103, 2
  %arrayidx216.2 = getelementptr inbounds ptr, ptr %8, i64 %indvars.iv.next407.1
  %arrayidx220.2 = getelementptr inbounds ptr, ptr %6, i64 %indvars.iv.next407.1
  %128 = load ptr, ptr %arrayidx216.2, align 8
  %arrayidx218.2413 = getelementptr inbounds i32, ptr %128, i64 %102
  %129 = load i32, ptr %arrayidx218.2413, align 4
  %130 = load ptr, ptr %arrayidx220.2, align 8
  %arrayidx222.2414 = getelementptr inbounds i32, ptr %130, i64 %102
  store i32 %129, ptr %arrayidx222.2414, align 4
  %131 = load ptr, ptr %arrayidx216.2, align 8
  %arrayidx218.1.2 = getelementptr inbounds i32, ptr %131, i64 %indvars.iv.next
  %132 = load i32, ptr %arrayidx218.1.2, align 4
  %133 = load ptr, ptr %arrayidx220.2, align 8
  %arrayidx222.1.2 = getelementptr inbounds i32, ptr %133, i64 %indvars.iv.next
  store i32 %132, ptr %arrayidx222.1.2, align 4
  %indvars.iv.next.1.2 = add nsw i64 %102, 2
  %134 = load ptr, ptr %arrayidx216.2, align 8
  %arrayidx218.2.2 = getelementptr inbounds i32, ptr %134, i64 %indvars.iv.next.1.2
  %135 = load i32, ptr %arrayidx218.2.2, align 4
  %136 = load ptr, ptr %arrayidx220.2, align 8
  %arrayidx222.2.2 = getelementptr inbounds i32, ptr %136, i64 %indvars.iv.next.1.2
  store i32 %135, ptr %arrayidx222.2.2, align 4
  %indvars.iv.next.2.2 = add nsw i64 %102, 3
  %137 = load ptr, ptr %arrayidx216.2, align 8
  %arrayidx218.3.2 = getelementptr inbounds i32, ptr %137, i64 %indvars.iv.next.2.2
  %138 = load i32, ptr %arrayidx218.3.2, align 4
  %139 = load ptr, ptr %arrayidx220.2, align 8
  %arrayidx222.3.2 = getelementptr inbounds i32, ptr %139, i64 %indvars.iv.next.2.2
  store i32 %138, ptr %arrayidx222.3.2, align 4
  %indvars.iv.next407.2 = add nsw i64 %103, 3
  %arrayidx216.3 = getelementptr inbounds ptr, ptr %8, i64 %indvars.iv.next407.2
  %arrayidx220.3 = getelementptr inbounds ptr, ptr %6, i64 %indvars.iv.next407.2
  %140 = load ptr, ptr %arrayidx216.3, align 8
  %arrayidx218.3416 = getelementptr inbounds i32, ptr %140, i64 %102
  %141 = load i32, ptr %arrayidx218.3416, align 4
  %142 = load ptr, ptr %arrayidx220.3, align 8
  %arrayidx222.3417 = getelementptr inbounds i32, ptr %142, i64 %102
  store i32 %141, ptr %arrayidx222.3417, align 4
  %143 = load ptr, ptr %arrayidx216.3, align 8
  %arrayidx218.1.3 = getelementptr inbounds i32, ptr %143, i64 %indvars.iv.next
  %144 = load i32, ptr %arrayidx218.1.3, align 4
  %145 = load ptr, ptr %arrayidx220.3, align 8
  %arrayidx222.1.3 = getelementptr inbounds i32, ptr %145, i64 %indvars.iv.next
  store i32 %144, ptr %arrayidx222.1.3, align 4
  %indvars.iv.next.1.3 = add nsw i64 %102, 2
  %146 = load ptr, ptr %arrayidx216.3, align 8
  %arrayidx218.2.3 = getelementptr inbounds i32, ptr %146, i64 %indvars.iv.next.1.3
  %147 = load i32, ptr %arrayidx218.2.3, align 4
  %148 = load ptr, ptr %arrayidx220.3, align 8
  %arrayidx222.2.3 = getelementptr inbounds i32, ptr %148, i64 %indvars.iv.next.1.3
  store i32 %147, ptr %arrayidx222.2.3, align 4
  %indvars.iv.next.2.3 = add nsw i64 %102, 3
  %149 = load ptr, ptr %arrayidx216.3, align 8
  %arrayidx218.3.3 = getelementptr inbounds i32, ptr %149, i64 %indvars.iv.next.2.3
  %150 = load i32, ptr %arrayidx218.3.3, align 4
  %151 = load ptr, ptr %arrayidx220.3, align 8
  %arrayidx222.3.3 = getelementptr inbounds i32, ptr %151, i64 %indvars.iv.next.2.3
  store i32 %150, ptr %arrayidx222.3.3, align 4
  br label %for.end260

for.end260:                                       ; preds = %for.cond108.preheader, %for.cond.preheader, %if.end229.loopexit
  %indvars.iv.next418.pre-phi = phi i64 [ %.pre, %for.cond108.preheader ], [ %71, %for.cond.preheader ], [ %indvars.iv.next, %if.end229.loopexit ]
  %.pre-phi453 = phi i64 [ %idxprom115, %for.cond108.preheader ], [ %66, %for.cond.preheader ], [ %102, %if.end229.loopexit ]
  %.pre-phi = phi i64 [ %10, %for.cond108.preheader ], [ %idxprom14, %for.cond.preheader ], [ %103, %if.end229.loopexit ]
  %arrayidx241 = getelementptr inbounds ptr, ptr %6, i64 %.pre-phi
  %arrayidx245 = getelementptr inbounds ptr, ptr %2, i64 %.pre-phi
  %arrayidx252 = getelementptr inbounds ptr, ptr %4, i64 %.pre-phi
  %152 = load ptr, ptr %arrayidx241, align 8
  %arrayidx243 = getelementptr inbounds i32, ptr %152, i64 %.pre-phi453
  %153 = load i32, ptr %arrayidx243, align 4
  %154 = load ptr, ptr %arrayidx245, align 8
  %arrayidx247 = getelementptr inbounds i16, ptr %154, i64 %.pre-phi453
  %155 = load i16, ptr %arrayidx247, align 2
  %156 = trunc i32 %153 to i16
  %conv250 = add i16 %155, %156
  %157 = load ptr, ptr %arrayidx252, align 8
  %arrayidx254 = getelementptr inbounds i16, ptr %157, i64 %.pre-phi453
  store i16 %conv250, ptr %arrayidx254, align 2
  %158 = load ptr, ptr %arrayidx241, align 8
  %arrayidx243.1 = getelementptr inbounds i32, ptr %158, i64 %indvars.iv.next418.pre-phi
  %159 = load i32, ptr %arrayidx243.1, align 4
  %160 = load ptr, ptr %arrayidx245, align 8
  %arrayidx247.1 = getelementptr inbounds i16, ptr %160, i64 %indvars.iv.next418.pre-phi
  %161 = load i16, ptr %arrayidx247.1, align 2
  %162 = trunc i32 %159 to i16
  %conv250.1 = add i16 %161, %162
  %163 = load ptr, ptr %arrayidx252, align 8
  %arrayidx254.1 = getelementptr inbounds i16, ptr %163, i64 %indvars.iv.next418.pre-phi
  store i16 %conv250.1, ptr %arrayidx254.1, align 2
  %indvars.iv.next418.1 = add nsw i64 %.pre-phi453, 2
  %164 = load ptr, ptr %arrayidx241, align 8
  %arrayidx243.2 = getelementptr inbounds i32, ptr %164, i64 %indvars.iv.next418.1
  %165 = load i32, ptr %arrayidx243.2, align 4
  %166 = load ptr, ptr %arrayidx245, align 8
  %arrayidx247.2 = getelementptr inbounds i16, ptr %166, i64 %indvars.iv.next418.1
  %167 = load i16, ptr %arrayidx247.2, align 2
  %168 = trunc i32 %165 to i16
  %conv250.2 = add i16 %167, %168
  %169 = load ptr, ptr %arrayidx252, align 8
  %arrayidx254.2 = getelementptr inbounds i16, ptr %169, i64 %indvars.iv.next418.1
  store i16 %conv250.2, ptr %arrayidx254.2, align 2
  %indvars.iv.next418.2 = add nsw i64 %.pre-phi453, 3
  %170 = load ptr, ptr %arrayidx241, align 8
  %arrayidx243.3 = getelementptr inbounds i32, ptr %170, i64 %indvars.iv.next418.2
  %171 = load i32, ptr %arrayidx243.3, align 4
  %172 = load ptr, ptr %arrayidx245, align 8
  %arrayidx247.3 = getelementptr inbounds i16, ptr %172, i64 %indvars.iv.next418.2
  %173 = load i16, ptr %arrayidx247.3, align 2
  %174 = trunc i32 %171 to i16
  %conv250.3 = add i16 %173, %174
  %175 = load ptr, ptr %arrayidx252, align 8
  %arrayidx254.3 = getelementptr inbounds i16, ptr %175, i64 %indvars.iv.next418.2
  store i16 %conv250.3, ptr %arrayidx254.3, align 2
  %indvars.iv.next420 = add nsw i64 %.pre-phi, 1
  %arrayidx241.1 = getelementptr inbounds ptr, ptr %6, i64 %indvars.iv.next420
  %arrayidx245.1 = getelementptr inbounds ptr, ptr %2, i64 %indvars.iv.next420
  %arrayidx252.1 = getelementptr inbounds ptr, ptr %4, i64 %indvars.iv.next420
  %176 = load ptr, ptr %arrayidx241.1, align 8
  %arrayidx243.1422 = getelementptr inbounds i32, ptr %176, i64 %.pre-phi453
  %177 = load i32, ptr %arrayidx243.1422, align 4
  %178 = load ptr, ptr %arrayidx245.1, align 8
  %arrayidx247.1423 = getelementptr inbounds i16, ptr %178, i64 %.pre-phi453
  %179 = load i16, ptr %arrayidx247.1423, align 2
  %180 = trunc i32 %177 to i16
  %conv250.1424 = add i16 %179, %180
  %181 = load ptr, ptr %arrayidx252.1, align 8
  %arrayidx254.1425 = getelementptr inbounds i16, ptr %181, i64 %.pre-phi453
  store i16 %conv250.1424, ptr %arrayidx254.1425, align 2
  %182 = load ptr, ptr %arrayidx241.1, align 8
  %arrayidx243.1.1 = getelementptr inbounds i32, ptr %182, i64 %indvars.iv.next418.pre-phi
  %183 = load i32, ptr %arrayidx243.1.1, align 4
  %184 = load ptr, ptr %arrayidx245.1, align 8
  %arrayidx247.1.1 = getelementptr inbounds i16, ptr %184, i64 %indvars.iv.next418.pre-phi
  %185 = load i16, ptr %arrayidx247.1.1, align 2
  %186 = trunc i32 %183 to i16
  %conv250.1.1 = add i16 %185, %186
  %187 = load ptr, ptr %arrayidx252.1, align 8
  %arrayidx254.1.1 = getelementptr inbounds i16, ptr %187, i64 %indvars.iv.next418.pre-phi
  store i16 %conv250.1.1, ptr %arrayidx254.1.1, align 2
  %indvars.iv.next418.1.1 = add nsw i64 %.pre-phi453, 2
  %188 = load ptr, ptr %arrayidx241.1, align 8
  %arrayidx243.2.1 = getelementptr inbounds i32, ptr %188, i64 %indvars.iv.next418.1.1
  %189 = load i32, ptr %arrayidx243.2.1, align 4
  %190 = load ptr, ptr %arrayidx245.1, align 8
  %arrayidx247.2.1 = getelementptr inbounds i16, ptr %190, i64 %indvars.iv.next418.1.1
  %191 = load i16, ptr %arrayidx247.2.1, align 2
  %192 = trunc i32 %189 to i16
  %conv250.2.1 = add i16 %191, %192
  %193 = load ptr, ptr %arrayidx252.1, align 8
  %arrayidx254.2.1 = getelementptr inbounds i16, ptr %193, i64 %indvars.iv.next418.1.1
  store i16 %conv250.2.1, ptr %arrayidx254.2.1, align 2
  %indvars.iv.next418.2.1 = add nsw i64 %.pre-phi453, 3
  %194 = load ptr, ptr %arrayidx241.1, align 8
  %arrayidx243.3.1 = getelementptr inbounds i32, ptr %194, i64 %indvars.iv.next418.2.1
  %195 = load i32, ptr %arrayidx243.3.1, align 4
  %196 = load ptr, ptr %arrayidx245.1, align 8
  %arrayidx247.3.1 = getelementptr inbounds i16, ptr %196, i64 %indvars.iv.next418.2.1
  %197 = load i16, ptr %arrayidx247.3.1, align 2
  %198 = trunc i32 %195 to i16
  %conv250.3.1 = add i16 %197, %198
  %199 = load ptr, ptr %arrayidx252.1, align 8
  %arrayidx254.3.1 = getelementptr inbounds i16, ptr %199, i64 %indvars.iv.next418.2.1
  store i16 %conv250.3.1, ptr %arrayidx254.3.1, align 2
  %indvars.iv.next420.1 = add nsw i64 %.pre-phi, 2
  %arrayidx241.2 = getelementptr inbounds ptr, ptr %6, i64 %indvars.iv.next420.1
  %arrayidx245.2 = getelementptr inbounds ptr, ptr %2, i64 %indvars.iv.next420.1
  %arrayidx252.2 = getelementptr inbounds ptr, ptr %4, i64 %indvars.iv.next420.1
  %200 = load ptr, ptr %arrayidx241.2, align 8
  %arrayidx243.2428 = getelementptr inbounds i32, ptr %200, i64 %.pre-phi453
  %201 = load i32, ptr %arrayidx243.2428, align 4
  %202 = load ptr, ptr %arrayidx245.2, align 8
  %arrayidx247.2429 = getelementptr inbounds i16, ptr %202, i64 %.pre-phi453
  %203 = load i16, ptr %arrayidx247.2429, align 2
  %204 = trunc i32 %201 to i16
  %conv250.2430 = add i16 %203, %204
  %205 = load ptr, ptr %arrayidx252.2, align 8
  %arrayidx254.2431 = getelementptr inbounds i16, ptr %205, i64 %.pre-phi453
  store i16 %conv250.2430, ptr %arrayidx254.2431, align 2
  %206 = load ptr, ptr %arrayidx241.2, align 8
  %arrayidx243.1.2 = getelementptr inbounds i32, ptr %206, i64 %indvars.iv.next418.pre-phi
  %207 = load i32, ptr %arrayidx243.1.2, align 4
  %208 = load ptr, ptr %arrayidx245.2, align 8
  %arrayidx247.1.2 = getelementptr inbounds i16, ptr %208, i64 %indvars.iv.next418.pre-phi
  %209 = load i16, ptr %arrayidx247.1.2, align 2
  %210 = trunc i32 %207 to i16
  %conv250.1.2 = add i16 %209, %210
  %211 = load ptr, ptr %arrayidx252.2, align 8
  %arrayidx254.1.2 = getelementptr inbounds i16, ptr %211, i64 %indvars.iv.next418.pre-phi
  store i16 %conv250.1.2, ptr %arrayidx254.1.2, align 2
  %indvars.iv.next418.1.2 = add nsw i64 %.pre-phi453, 2
  %212 = load ptr, ptr %arrayidx241.2, align 8
  %arrayidx243.2.2 = getelementptr inbounds i32, ptr %212, i64 %indvars.iv.next418.1.2
  %213 = load i32, ptr %arrayidx243.2.2, align 4
  %214 = load ptr, ptr %arrayidx245.2, align 8
  %arrayidx247.2.2 = getelementptr inbounds i16, ptr %214, i64 %indvars.iv.next418.1.2
  %215 = load i16, ptr %arrayidx247.2.2, align 2
  %216 = trunc i32 %213 to i16
  %conv250.2.2 = add i16 %215, %216
  %217 = load ptr, ptr %arrayidx252.2, align 8
  %arrayidx254.2.2 = getelementptr inbounds i16, ptr %217, i64 %indvars.iv.next418.1.2
  store i16 %conv250.2.2, ptr %arrayidx254.2.2, align 2
  %indvars.iv.next418.2.2 = add nsw i64 %.pre-phi453, 3
  %218 = load ptr, ptr %arrayidx241.2, align 8
  %arrayidx243.3.2 = getelementptr inbounds i32, ptr %218, i64 %indvars.iv.next418.2.2
  %219 = load i32, ptr %arrayidx243.3.2, align 4
  %220 = load ptr, ptr %arrayidx245.2, align 8
  %arrayidx247.3.2 = getelementptr inbounds i16, ptr %220, i64 %indvars.iv.next418.2.2
  %221 = load i16, ptr %arrayidx247.3.2, align 2
  %222 = trunc i32 %219 to i16
  %conv250.3.2 = add i16 %221, %222
  %223 = load ptr, ptr %arrayidx252.2, align 8
  %arrayidx254.3.2 = getelementptr inbounds i16, ptr %223, i64 %indvars.iv.next418.2.2
  store i16 %conv250.3.2, ptr %arrayidx254.3.2, align 2
  %indvars.iv.next420.2 = add nsw i64 %.pre-phi, 3
  %arrayidx241.3 = getelementptr inbounds ptr, ptr %6, i64 %indvars.iv.next420.2
  %arrayidx245.3 = getelementptr inbounds ptr, ptr %2, i64 %indvars.iv.next420.2
  %arrayidx252.3 = getelementptr inbounds ptr, ptr %4, i64 %indvars.iv.next420.2
  %224 = load ptr, ptr %arrayidx241.3, align 8
  %arrayidx243.3433 = getelementptr inbounds i32, ptr %224, i64 %.pre-phi453
  %225 = load i32, ptr %arrayidx243.3433, align 4
  %226 = load ptr, ptr %arrayidx245.3, align 8
  %arrayidx247.3434 = getelementptr inbounds i16, ptr %226, i64 %.pre-phi453
  %227 = load i16, ptr %arrayidx247.3434, align 2
  %228 = trunc i32 %225 to i16
  %conv250.3435 = add i16 %227, %228
  %229 = load ptr, ptr %arrayidx252.3, align 8
  %arrayidx254.3436 = getelementptr inbounds i16, ptr %229, i64 %.pre-phi453
  store i16 %conv250.3435, ptr %arrayidx254.3436, align 2
  %230 = load ptr, ptr %arrayidx241.3, align 8
  %arrayidx243.1.3 = getelementptr inbounds i32, ptr %230, i64 %indvars.iv.next418.pre-phi
  %231 = load i32, ptr %arrayidx243.1.3, align 4
  %232 = load ptr, ptr %arrayidx245.3, align 8
  %arrayidx247.1.3 = getelementptr inbounds i16, ptr %232, i64 %indvars.iv.next418.pre-phi
  %233 = load i16, ptr %arrayidx247.1.3, align 2
  %234 = trunc i32 %231 to i16
  %conv250.1.3 = add i16 %233, %234
  %235 = load ptr, ptr %arrayidx252.3, align 8
  %arrayidx254.1.3 = getelementptr inbounds i16, ptr %235, i64 %indvars.iv.next418.pre-phi
  store i16 %conv250.1.3, ptr %arrayidx254.1.3, align 2
  %indvars.iv.next418.1.3 = add nsw i64 %.pre-phi453, 2
  %236 = load ptr, ptr %arrayidx241.3, align 8
  %arrayidx243.2.3 = getelementptr inbounds i32, ptr %236, i64 %indvars.iv.next418.1.3
  %237 = load i32, ptr %arrayidx243.2.3, align 4
  %238 = load ptr, ptr %arrayidx245.3, align 8
  %arrayidx247.2.3 = getelementptr inbounds i16, ptr %238, i64 %indvars.iv.next418.1.3
  %239 = load i16, ptr %arrayidx247.2.3, align 2
  %240 = trunc i32 %237 to i16
  %conv250.2.3 = add i16 %239, %240
  %241 = load ptr, ptr %arrayidx252.3, align 8
  %arrayidx254.2.3 = getelementptr inbounds i16, ptr %241, i64 %indvars.iv.next418.1.3
  store i16 %conv250.2.3, ptr %arrayidx254.2.3, align 2
  %indvars.iv.next418.2.3 = add nsw i64 %.pre-phi453, 3
  %242 = load ptr, ptr %arrayidx241.3, align 8
  %arrayidx243.3.3 = getelementptr inbounds i32, ptr %242, i64 %indvars.iv.next418.2.3
  %243 = load i32, ptr %arrayidx243.3.3, align 4
  %244 = load ptr, ptr %arrayidx245.3, align 8
  %arrayidx247.3.3 = getelementptr inbounds i16, ptr %244, i64 %indvars.iv.next418.2.3
  %245 = load i16, ptr %arrayidx247.3.3, align 2
  %246 = trunc i32 %243 to i16
  %conv250.3.3 = add i16 %245, %246
  %247 = load ptr, ptr %arrayidx252.3, align 8
  %arrayidx254.3.3 = getelementptr inbounds i16, ptr %247, i64 %indvars.iv.next418.2.3
  store i16 %conv250.3.3, ptr %arrayidx254.3.3, align 2
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Inv_Residual_trans_8x8(ptr nocapture noundef readonly %currMB, i32 noundef %pl, i32 noundef %ioff, i32 noundef %joff) local_unnamed_addr #4 {
entry:
  %0 = load ptr, ptr %currMB, align 8
  %mb_pred1 = getelementptr inbounds i8, ptr %0, i64 1248
  %1 = load ptr, ptr %mb_pred1, align 8
  %idxprom = zext i32 %pl to i64
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 %idxprom
  %2 = load ptr, ptr %arrayidx, align 8
  %mb_rec2 = getelementptr inbounds i8, ptr %0, i64 1256
  %3 = load ptr, ptr %mb_rec2, align 8
  %arrayidx4 = getelementptr inbounds ptr, ptr %3, i64 %idxprom
  %4 = load ptr, ptr %arrayidx4, align 8
  %mb_rres5 = getelementptr inbounds i8, ptr %0, i64 1264
  %5 = load ptr, ptr %mb_rres5, align 8
  %arrayidx7 = getelementptr inbounds ptr, ptr %5, i64 %idxprom
  %6 = load ptr, ptr %arrayidx7, align 8
  %ipmode_DPCM = getelementptr inbounds i8, ptr %currMB, i64 372
  %7 = load i8, ptr %ipmode_DPCM, align 4
  switch i8 %7, label %entry.if.end379_crit_edge [
    i8 0, label %for.cond.preheader
    i8 1, label %for.cond193.preheader
  ]

entry.if.end379_crit_edge:                        ; preds = %entry
  %.pre = sext i32 %ioff to i64
  %.pre692 = sext i32 %joff to i64
  br label %if.end379

for.cond193.preheader:                            ; preds = %entry
  %idxprom201 = sext i32 %ioff to i64
  %8 = sext i32 %joff to i64
  %arrayidx199 = getelementptr inbounds ptr, ptr %6, i64 %8
  %9 = load ptr, ptr %arrayidx199, align 8
  %arrayidx202 = getelementptr inbounds i32, ptr %9, i64 %idxprom201
  %10 = load i32, ptr %arrayidx202, align 4
  %arrayidx211 = getelementptr i8, ptr %arrayidx202, i64 4
  %11 = load i32, ptr %arrayidx211, align 4
  %add215 = add nsw i32 %11, %10
  %arrayidx224 = getelementptr i8, ptr %arrayidx202, i64 8
  %12 = load i32, ptr %arrayidx224, align 4
  %add228 = add nsw i32 %12, %add215
  %arrayidx237 = getelementptr i8, ptr %arrayidx202, i64 12
  %13 = load i32, ptr %arrayidx237, align 4
  %add241 = add nsw i32 %13, %add228
  %arrayidx250 = getelementptr i8, ptr %arrayidx202, i64 16
  %14 = load i32, ptr %arrayidx250, align 4
  %add254 = add nsw i32 %14, %add241
  %arrayidx263 = getelementptr i8, ptr %arrayidx202, i64 20
  %15 = load i32, ptr %arrayidx263, align 4
  %add267 = add nsw i32 %15, %add254
  %arrayidx276 = getelementptr i8, ptr %arrayidx202, i64 24
  %16 = load i32, ptr %arrayidx276, align 4
  %add280 = add nsw i32 %16, %add267
  %arrayidx289 = getelementptr i8, ptr %arrayidx202, i64 28
  %17 = load i32, ptr %arrayidx289, align 4
  %add293 = add nsw i32 %17, %add280
  %18 = getelementptr ptr, ptr %6, i64 %8
  %arrayidx199.1 = getelementptr i8, ptr %18, i64 8
  %19 = load ptr, ptr %arrayidx199.1, align 8
  %arrayidx202.1 = getelementptr inbounds i32, ptr %19, i64 %idxprom201
  %20 = load i32, ptr %arrayidx202.1, align 4
  %arrayidx211.1 = getelementptr i8, ptr %arrayidx202.1, i64 4
  %21 = load i32, ptr %arrayidx211.1, align 4
  %add215.1 = add nsw i32 %21, %20
  %arrayidx224.1 = getelementptr i8, ptr %arrayidx202.1, i64 8
  %22 = load i32, ptr %arrayidx224.1, align 4
  %add228.1 = add nsw i32 %22, %add215.1
  %arrayidx237.1 = getelementptr i8, ptr %arrayidx202.1, i64 12
  %23 = load i32, ptr %arrayidx237.1, align 4
  %add241.1 = add nsw i32 %23, %add228.1
  %arrayidx250.1 = getelementptr i8, ptr %arrayidx202.1, i64 16
  %24 = load i32, ptr %arrayidx250.1, align 4
  %add254.1 = add nsw i32 %24, %add241.1
  %arrayidx263.1 = getelementptr i8, ptr %arrayidx202.1, i64 20
  %25 = load i32, ptr %arrayidx263.1, align 4
  %add267.1 = add nsw i32 %25, %add254.1
  %arrayidx276.1 = getelementptr i8, ptr %arrayidx202.1, i64 24
  %26 = load i32, ptr %arrayidx276.1, align 4
  %add280.1 = add nsw i32 %26, %add267.1
  %arrayidx289.1 = getelementptr i8, ptr %arrayidx202.1, i64 28
  %27 = load i32, ptr %arrayidx289.1, align 4
  %add293.1 = add nsw i32 %27, %add280.1
  %28 = getelementptr ptr, ptr %6, i64 %8
  %arrayidx199.2 = getelementptr i8, ptr %28, i64 16
  %29 = load ptr, ptr %arrayidx199.2, align 8
  %arrayidx202.2 = getelementptr inbounds i32, ptr %29, i64 %idxprom201
  %30 = load i32, ptr %arrayidx202.2, align 4
  %arrayidx211.2 = getelementptr i8, ptr %arrayidx202.2, i64 4
  %31 = load i32, ptr %arrayidx211.2, align 4
  %add215.2 = add nsw i32 %31, %30
  %arrayidx224.2 = getelementptr i8, ptr %arrayidx202.2, i64 8
  %32 = load i32, ptr %arrayidx224.2, align 4
  %add228.2 = add nsw i32 %32, %add215.2
  %arrayidx237.2 = getelementptr i8, ptr %arrayidx202.2, i64 12
  %33 = load i32, ptr %arrayidx237.2, align 4
  %add241.2 = add nsw i32 %33, %add228.2
  %arrayidx250.2 = getelementptr i8, ptr %arrayidx202.2, i64 16
  %34 = load i32, ptr %arrayidx250.2, align 4
  %add254.2 = add nsw i32 %34, %add241.2
  %arrayidx263.2 = getelementptr i8, ptr %arrayidx202.2, i64 20
  %35 = load i32, ptr %arrayidx263.2, align 4
  %add267.2 = add nsw i32 %35, %add254.2
  %arrayidx276.2 = getelementptr i8, ptr %arrayidx202.2, i64 24
  %36 = load i32, ptr %arrayidx276.2, align 4
  %add280.2 = add nsw i32 %36, %add267.2
  %arrayidx289.2 = getelementptr i8, ptr %arrayidx202.2, i64 28
  %37 = load i32, ptr %arrayidx289.2, align 4
  %add293.2 = add nsw i32 %37, %add280.2
  %38 = getelementptr ptr, ptr %6, i64 %8
  %arrayidx199.3 = getelementptr i8, ptr %38, i64 24
  %39 = load ptr, ptr %arrayidx199.3, align 8
  %arrayidx202.3 = getelementptr inbounds i32, ptr %39, i64 %idxprom201
  %40 = load i32, ptr %arrayidx202.3, align 4
  %arrayidx211.3 = getelementptr i8, ptr %arrayidx202.3, i64 4
  %41 = load i32, ptr %arrayidx211.3, align 4
  %add215.3 = add nsw i32 %41, %40
  %arrayidx224.3 = getelementptr i8, ptr %arrayidx202.3, i64 8
  %42 = load i32, ptr %arrayidx224.3, align 4
  %add228.3 = add nsw i32 %42, %add215.3
  %arrayidx237.3 = getelementptr i8, ptr %arrayidx202.3, i64 12
  %43 = load i32, ptr %arrayidx237.3, align 4
  %add241.3 = add nsw i32 %43, %add228.3
  %arrayidx250.3 = getelementptr i8, ptr %arrayidx202.3, i64 16
  %44 = load i32, ptr %arrayidx250.3, align 4
  %add254.3 = add nsw i32 %44, %add241.3
  %arrayidx263.3 = getelementptr i8, ptr %arrayidx202.3, i64 20
  %45 = load i32, ptr %arrayidx263.3, align 4
  %add267.3 = add nsw i32 %45, %add254.3
  %arrayidx276.3 = getelementptr i8, ptr %arrayidx202.3, i64 24
  %46 = load i32, ptr %arrayidx276.3, align 4
  %add280.3 = add nsw i32 %46, %add267.3
  %arrayidx289.3 = getelementptr i8, ptr %arrayidx202.3, i64 28
  %47 = load i32, ptr %arrayidx289.3, align 4
  %add293.3 = add nsw i32 %47, %add280.3
  %48 = getelementptr ptr, ptr %6, i64 %8
  %arrayidx199.4 = getelementptr i8, ptr %48, i64 32
  %49 = load ptr, ptr %arrayidx199.4, align 8
  %arrayidx202.4 = getelementptr inbounds i32, ptr %49, i64 %idxprom201
  %50 = load i32, ptr %arrayidx202.4, align 4
  %arrayidx211.4 = getelementptr i8, ptr %arrayidx202.4, i64 4
  %51 = load i32, ptr %arrayidx211.4, align 4
  %add215.4 = add nsw i32 %51, %50
  %arrayidx224.4 = getelementptr i8, ptr %arrayidx202.4, i64 8
  %52 = load i32, ptr %arrayidx224.4, align 4
  %add228.4 = add nsw i32 %52, %add215.4
  %arrayidx237.4 = getelementptr i8, ptr %arrayidx202.4, i64 12
  %53 = load i32, ptr %arrayidx237.4, align 4
  %add241.4 = add nsw i32 %53, %add228.4
  %arrayidx250.4 = getelementptr i8, ptr %arrayidx202.4, i64 16
  %54 = load i32, ptr %arrayidx250.4, align 4
  %add254.4 = add nsw i32 %54, %add241.4
  %arrayidx263.4 = getelementptr i8, ptr %arrayidx202.4, i64 20
  %55 = load i32, ptr %arrayidx263.4, align 4
  %add267.4 = add nsw i32 %55, %add254.4
  %arrayidx276.4 = getelementptr i8, ptr %arrayidx202.4, i64 24
  %56 = load i32, ptr %arrayidx276.4, align 4
  %add280.4 = add nsw i32 %56, %add267.4
  %arrayidx289.4 = getelementptr i8, ptr %arrayidx202.4, i64 28
  %57 = load i32, ptr %arrayidx289.4, align 4
  %add293.4 = add nsw i32 %57, %add280.4
  %58 = getelementptr ptr, ptr %6, i64 %8
  %arrayidx199.5 = getelementptr i8, ptr %58, i64 40
  %59 = load ptr, ptr %arrayidx199.5, align 8
  %arrayidx202.5 = getelementptr inbounds i32, ptr %59, i64 %idxprom201
  %60 = load i32, ptr %arrayidx202.5, align 4
  %arrayidx211.5 = getelementptr i8, ptr %arrayidx202.5, i64 4
  %61 = load i32, ptr %arrayidx211.5, align 4
  %add215.5 = add nsw i32 %61, %60
  %arrayidx224.5 = getelementptr i8, ptr %arrayidx202.5, i64 8
  %62 = load i32, ptr %arrayidx224.5, align 4
  %add228.5 = add nsw i32 %62, %add215.5
  %arrayidx237.5 = getelementptr i8, ptr %arrayidx202.5, i64 12
  %63 = load i32, ptr %arrayidx237.5, align 4
  %add241.5 = add nsw i32 %63, %add228.5
  %arrayidx250.5 = getelementptr i8, ptr %arrayidx202.5, i64 16
  %64 = load i32, ptr %arrayidx250.5, align 4
  %add254.5 = add nsw i32 %64, %add241.5
  %arrayidx263.5 = getelementptr i8, ptr %arrayidx202.5, i64 20
  %65 = load i32, ptr %arrayidx263.5, align 4
  %add267.5 = add nsw i32 %65, %add254.5
  %arrayidx276.5 = getelementptr i8, ptr %arrayidx202.5, i64 24
  %66 = load i32, ptr %arrayidx276.5, align 4
  %add280.5 = add nsw i32 %66, %add267.5
  %arrayidx289.5 = getelementptr i8, ptr %arrayidx202.5, i64 28
  %67 = load i32, ptr %arrayidx289.5, align 4
  %add293.5 = add nsw i32 %67, %add280.5
  %68 = getelementptr ptr, ptr %6, i64 %8
  %arrayidx199.6 = getelementptr i8, ptr %68, i64 48
  %69 = load ptr, ptr %arrayidx199.6, align 8
  %arrayidx202.6 = getelementptr inbounds i32, ptr %69, i64 %idxprom201
  %70 = load i32, ptr %arrayidx202.6, align 4
  %arrayidx211.6 = getelementptr i8, ptr %arrayidx202.6, i64 4
  %71 = load i32, ptr %arrayidx211.6, align 4
  %add215.6 = add nsw i32 %71, %70
  %arrayidx224.6 = getelementptr i8, ptr %arrayidx202.6, i64 8
  %72 = load i32, ptr %arrayidx224.6, align 4
  %add228.6 = add nsw i32 %72, %add215.6
  %arrayidx237.6 = getelementptr i8, ptr %arrayidx202.6, i64 12
  %73 = load i32, ptr %arrayidx237.6, align 4
  %add241.6 = add nsw i32 %73, %add228.6
  %arrayidx250.6 = getelementptr i8, ptr %arrayidx202.6, i64 16
  %74 = load i32, ptr %arrayidx250.6, align 4
  %add254.6 = add nsw i32 %74, %add241.6
  %arrayidx263.6 = getelementptr i8, ptr %arrayidx202.6, i64 20
  %75 = load i32, ptr %arrayidx263.6, align 4
  %add267.6 = add nsw i32 %75, %add254.6
  %arrayidx276.6 = getelementptr i8, ptr %arrayidx202.6, i64 24
  %76 = load i32, ptr %arrayidx276.6, align 4
  %add280.6 = add nsw i32 %76, %add267.6
  %arrayidx289.6 = getelementptr i8, ptr %arrayidx202.6, i64 28
  %77 = load i32, ptr %arrayidx289.6, align 4
  %add293.6 = add nsw i32 %77, %add280.6
  %78 = getelementptr ptr, ptr %6, i64 %8
  %arrayidx199.7 = getelementptr i8, ptr %78, i64 56
  %79 = load ptr, ptr %arrayidx199.7, align 8
  %arrayidx202.7 = getelementptr inbounds i32, ptr %79, i64 %idxprom201
  %80 = load i32, ptr %arrayidx202.7, align 4
  %arrayidx211.7 = getelementptr i8, ptr %arrayidx202.7, i64 4
  %81 = load i32, ptr %arrayidx211.7, align 4
  %add215.7 = add nsw i32 %81, %80
  %arrayidx224.7 = getelementptr i8, ptr %arrayidx202.7, i64 8
  %82 = load i32, ptr %arrayidx224.7, align 4
  %add228.7 = add nsw i32 %82, %add215.7
  %arrayidx237.7 = getelementptr i8, ptr %arrayidx202.7, i64 12
  %83 = load i32, ptr %arrayidx237.7, align 4
  %add241.7 = add nsw i32 %83, %add228.7
  %arrayidx250.7 = getelementptr i8, ptr %arrayidx202.7, i64 16
  %84 = load i32, ptr %arrayidx250.7, align 4
  %add254.7 = add nsw i32 %84, %add241.7
  %arrayidx263.7 = getelementptr i8, ptr %arrayidx202.7, i64 20
  %85 = load i32, ptr %arrayidx263.7, align 4
  %add267.7 = add nsw i32 %85, %add254.7
  %arrayidx276.7 = getelementptr i8, ptr %arrayidx202.7, i64 24
  %86 = load i32, ptr %arrayidx276.7, align 4
  %add280.7 = add nsw i32 %86, %add267.7
  %arrayidx289.7 = getelementptr i8, ptr %arrayidx202.7, i64 28
  %87 = load i32, ptr %arrayidx289.7, align 4
  %add293.7 = add nsw i32 %87, %add280.7
  %88 = load ptr, ptr %arrayidx199, align 8
  %arrayidx312 = getelementptr inbounds i32, ptr %88, i64 %idxprom201
  store i32 %10, ptr %arrayidx312, align 4
  %89 = load ptr, ptr %arrayidx199, align 8
  %90 = getelementptr i32, ptr %89, i64 %idxprom201
  %arrayidx321 = getelementptr i8, ptr %90, i64 4
  store i32 %add215, ptr %arrayidx321, align 4
  %91 = load ptr, ptr %arrayidx199, align 8
  %92 = getelementptr i32, ptr %91, i64 %idxprom201
  %arrayidx330 = getelementptr i8, ptr %92, i64 8
  store i32 %add228, ptr %arrayidx330, align 4
  %93 = load ptr, ptr %arrayidx199, align 8
  %94 = getelementptr i32, ptr %93, i64 %idxprom201
  %arrayidx339 = getelementptr i8, ptr %94, i64 12
  store i32 %add241, ptr %arrayidx339, align 4
  %95 = load ptr, ptr %arrayidx199, align 8
  %96 = getelementptr i32, ptr %95, i64 %idxprom201
  %arrayidx348 = getelementptr i8, ptr %96, i64 16
  store i32 %add254, ptr %arrayidx348, align 4
  %97 = load ptr, ptr %arrayidx199, align 8
  %98 = getelementptr i32, ptr %97, i64 %idxprom201
  %arrayidx357 = getelementptr i8, ptr %98, i64 20
  store i32 %add267, ptr %arrayidx357, align 4
  %99 = load ptr, ptr %arrayidx199, align 8
  %100 = getelementptr i32, ptr %99, i64 %idxprom201
  %arrayidx366 = getelementptr i8, ptr %100, i64 24
  store i32 %add280, ptr %arrayidx366, align 4
  %101 = load ptr, ptr %arrayidx199, align 8
  %102 = getelementptr i32, ptr %101, i64 %idxprom201
  %arrayidx375 = getelementptr i8, ptr %102, i64 28
  store i32 %add293, ptr %arrayidx375, align 4
  %103 = load ptr, ptr %arrayidx199.1, align 8
  %arrayidx312.1 = getelementptr inbounds i32, ptr %103, i64 %idxprom201
  store i32 %20, ptr %arrayidx312.1, align 4
  %104 = load ptr, ptr %arrayidx199.1, align 8
  %105 = getelementptr i32, ptr %104, i64 %idxprom201
  %arrayidx321.1 = getelementptr i8, ptr %105, i64 4
  store i32 %add215.1, ptr %arrayidx321.1, align 4
  %106 = load ptr, ptr %arrayidx199.1, align 8
  %107 = getelementptr i32, ptr %106, i64 %idxprom201
  %arrayidx330.1 = getelementptr i8, ptr %107, i64 8
  store i32 %add228.1, ptr %arrayidx330.1, align 4
  %108 = load ptr, ptr %arrayidx199.1, align 8
  %109 = getelementptr i32, ptr %108, i64 %idxprom201
  %arrayidx339.1 = getelementptr i8, ptr %109, i64 12
  store i32 %add241.1, ptr %arrayidx339.1, align 4
  %110 = load ptr, ptr %arrayidx199.1, align 8
  %111 = getelementptr i32, ptr %110, i64 %idxprom201
  %arrayidx348.1 = getelementptr i8, ptr %111, i64 16
  store i32 %add254.1, ptr %arrayidx348.1, align 4
  %112 = load ptr, ptr %arrayidx199.1, align 8
  %113 = getelementptr i32, ptr %112, i64 %idxprom201
  %arrayidx357.1 = getelementptr i8, ptr %113, i64 20
  store i32 %add267.1, ptr %arrayidx357.1, align 4
  %114 = load ptr, ptr %arrayidx199.1, align 8
  %115 = getelementptr i32, ptr %114, i64 %idxprom201
  %arrayidx366.1 = getelementptr i8, ptr %115, i64 24
  store i32 %add280.1, ptr %arrayidx366.1, align 4
  %116 = load ptr, ptr %arrayidx199.1, align 8
  %117 = getelementptr i32, ptr %116, i64 %idxprom201
  %arrayidx375.1 = getelementptr i8, ptr %117, i64 28
  store i32 %add293.1, ptr %arrayidx375.1, align 4
  %118 = load ptr, ptr %arrayidx199.2, align 8
  %arrayidx312.2 = getelementptr inbounds i32, ptr %118, i64 %idxprom201
  store i32 %30, ptr %arrayidx312.2, align 4
  %119 = load ptr, ptr %arrayidx199.2, align 8
  %120 = getelementptr i32, ptr %119, i64 %idxprom201
  %arrayidx321.2 = getelementptr i8, ptr %120, i64 4
  store i32 %add215.2, ptr %arrayidx321.2, align 4
  %121 = load ptr, ptr %arrayidx199.2, align 8
  %122 = getelementptr i32, ptr %121, i64 %idxprom201
  %arrayidx330.2 = getelementptr i8, ptr %122, i64 8
  store i32 %add228.2, ptr %arrayidx330.2, align 4
  %123 = load ptr, ptr %arrayidx199.2, align 8
  %124 = getelementptr i32, ptr %123, i64 %idxprom201
  %arrayidx339.2 = getelementptr i8, ptr %124, i64 12
  store i32 %add241.2, ptr %arrayidx339.2, align 4
  %125 = load ptr, ptr %arrayidx199.2, align 8
  %126 = getelementptr i32, ptr %125, i64 %idxprom201
  %arrayidx348.2 = getelementptr i8, ptr %126, i64 16
  store i32 %add254.2, ptr %arrayidx348.2, align 4
  %127 = load ptr, ptr %arrayidx199.2, align 8
  %128 = getelementptr i32, ptr %127, i64 %idxprom201
  %arrayidx357.2 = getelementptr i8, ptr %128, i64 20
  store i32 %add267.2, ptr %arrayidx357.2, align 4
  %129 = load ptr, ptr %arrayidx199.2, align 8
  %130 = getelementptr i32, ptr %129, i64 %idxprom201
  %arrayidx366.2 = getelementptr i8, ptr %130, i64 24
  store i32 %add280.2, ptr %arrayidx366.2, align 4
  %131 = load ptr, ptr %arrayidx199.2, align 8
  %132 = getelementptr i32, ptr %131, i64 %idxprom201
  %arrayidx375.2 = getelementptr i8, ptr %132, i64 28
  store i32 %add293.2, ptr %arrayidx375.2, align 4
  %133 = load ptr, ptr %arrayidx199.3, align 8
  %arrayidx312.3 = getelementptr inbounds i32, ptr %133, i64 %idxprom201
  store i32 %40, ptr %arrayidx312.3, align 4
  %134 = load ptr, ptr %arrayidx199.3, align 8
  %135 = getelementptr i32, ptr %134, i64 %idxprom201
  %arrayidx321.3 = getelementptr i8, ptr %135, i64 4
  store i32 %add215.3, ptr %arrayidx321.3, align 4
  %136 = load ptr, ptr %arrayidx199.3, align 8
  %137 = getelementptr i32, ptr %136, i64 %idxprom201
  %arrayidx330.3 = getelementptr i8, ptr %137, i64 8
  store i32 %add228.3, ptr %arrayidx330.3, align 4
  %138 = load ptr, ptr %arrayidx199.3, align 8
  %139 = getelementptr i32, ptr %138, i64 %idxprom201
  %arrayidx339.3 = getelementptr i8, ptr %139, i64 12
  store i32 %add241.3, ptr %arrayidx339.3, align 4
  %140 = load ptr, ptr %arrayidx199.3, align 8
  %141 = getelementptr i32, ptr %140, i64 %idxprom201
  %arrayidx348.3 = getelementptr i8, ptr %141, i64 16
  store i32 %add254.3, ptr %arrayidx348.3, align 4
  %142 = load ptr, ptr %arrayidx199.3, align 8
  %143 = getelementptr i32, ptr %142, i64 %idxprom201
  %arrayidx357.3 = getelementptr i8, ptr %143, i64 20
  store i32 %add267.3, ptr %arrayidx357.3, align 4
  %144 = load ptr, ptr %arrayidx199.3, align 8
  %145 = getelementptr i32, ptr %144, i64 %idxprom201
  %arrayidx366.3 = getelementptr i8, ptr %145, i64 24
  store i32 %add280.3, ptr %arrayidx366.3, align 4
  %146 = load ptr, ptr %arrayidx199.3, align 8
  %147 = getelementptr i32, ptr %146, i64 %idxprom201
  %arrayidx375.3 = getelementptr i8, ptr %147, i64 28
  store i32 %add293.3, ptr %arrayidx375.3, align 4
  %148 = load ptr, ptr %arrayidx199.4, align 8
  %arrayidx312.4 = getelementptr inbounds i32, ptr %148, i64 %idxprom201
  store i32 %50, ptr %arrayidx312.4, align 4
  %149 = load ptr, ptr %arrayidx199.4, align 8
  %150 = getelementptr i32, ptr %149, i64 %idxprom201
  %arrayidx321.4 = getelementptr i8, ptr %150, i64 4
  store i32 %add215.4, ptr %arrayidx321.4, align 4
  %151 = load ptr, ptr %arrayidx199.4, align 8
  %152 = getelementptr i32, ptr %151, i64 %idxprom201
  %arrayidx330.4 = getelementptr i8, ptr %152, i64 8
  store i32 %add228.4, ptr %arrayidx330.4, align 4
  %153 = load ptr, ptr %arrayidx199.4, align 8
  %154 = getelementptr i32, ptr %153, i64 %idxprom201
  %arrayidx339.4 = getelementptr i8, ptr %154, i64 12
  store i32 %add241.4, ptr %arrayidx339.4, align 4
  %155 = load ptr, ptr %arrayidx199.4, align 8
  %156 = getelementptr i32, ptr %155, i64 %idxprom201
  %arrayidx348.4 = getelementptr i8, ptr %156, i64 16
  store i32 %add254.4, ptr %arrayidx348.4, align 4
  %157 = load ptr, ptr %arrayidx199.4, align 8
  %158 = getelementptr i32, ptr %157, i64 %idxprom201
  %arrayidx357.4 = getelementptr i8, ptr %158, i64 20
  store i32 %add267.4, ptr %arrayidx357.4, align 4
  %159 = load ptr, ptr %arrayidx199.4, align 8
  %160 = getelementptr i32, ptr %159, i64 %idxprom201
  %arrayidx366.4 = getelementptr i8, ptr %160, i64 24
  store i32 %add280.4, ptr %arrayidx366.4, align 4
  %161 = load ptr, ptr %arrayidx199.4, align 8
  %162 = getelementptr i32, ptr %161, i64 %idxprom201
  %arrayidx375.4 = getelementptr i8, ptr %162, i64 28
  store i32 %add293.4, ptr %arrayidx375.4, align 4
  %163 = load ptr, ptr %arrayidx199.5, align 8
  %arrayidx312.5 = getelementptr inbounds i32, ptr %163, i64 %idxprom201
  store i32 %60, ptr %arrayidx312.5, align 4
  %164 = load ptr, ptr %arrayidx199.5, align 8
  %165 = getelementptr i32, ptr %164, i64 %idxprom201
  %arrayidx321.5 = getelementptr i8, ptr %165, i64 4
  store i32 %add215.5, ptr %arrayidx321.5, align 4
  %166 = load ptr, ptr %arrayidx199.5, align 8
  %167 = getelementptr i32, ptr %166, i64 %idxprom201
  %arrayidx330.5 = getelementptr i8, ptr %167, i64 8
  store i32 %add228.5, ptr %arrayidx330.5, align 4
  %168 = load ptr, ptr %arrayidx199.5, align 8
  %169 = getelementptr i32, ptr %168, i64 %idxprom201
  %arrayidx339.5 = getelementptr i8, ptr %169, i64 12
  store i32 %add241.5, ptr %arrayidx339.5, align 4
  %170 = load ptr, ptr %arrayidx199.5, align 8
  %171 = getelementptr i32, ptr %170, i64 %idxprom201
  %arrayidx348.5 = getelementptr i8, ptr %171, i64 16
  store i32 %add254.5, ptr %arrayidx348.5, align 4
  %172 = load ptr, ptr %arrayidx199.5, align 8
  %173 = getelementptr i32, ptr %172, i64 %idxprom201
  %arrayidx357.5 = getelementptr i8, ptr %173, i64 20
  store i32 %add267.5, ptr %arrayidx357.5, align 4
  %174 = load ptr, ptr %arrayidx199.5, align 8
  %175 = getelementptr i32, ptr %174, i64 %idxprom201
  %arrayidx366.5 = getelementptr i8, ptr %175, i64 24
  store i32 %add280.5, ptr %arrayidx366.5, align 4
  %176 = load ptr, ptr %arrayidx199.5, align 8
  %177 = getelementptr i32, ptr %176, i64 %idxprom201
  %arrayidx375.5 = getelementptr i8, ptr %177, i64 28
  store i32 %add293.5, ptr %arrayidx375.5, align 4
  %178 = load ptr, ptr %arrayidx199.6, align 8
  %arrayidx312.6 = getelementptr inbounds i32, ptr %178, i64 %idxprom201
  store i32 %70, ptr %arrayidx312.6, align 4
  %179 = load ptr, ptr %arrayidx199.6, align 8
  %180 = getelementptr i32, ptr %179, i64 %idxprom201
  %arrayidx321.6 = getelementptr i8, ptr %180, i64 4
  store i32 %add215.6, ptr %arrayidx321.6, align 4
  %181 = load ptr, ptr %arrayidx199.6, align 8
  %182 = getelementptr i32, ptr %181, i64 %idxprom201
  %arrayidx330.6 = getelementptr i8, ptr %182, i64 8
  store i32 %add228.6, ptr %arrayidx330.6, align 4
  %183 = load ptr, ptr %arrayidx199.6, align 8
  %184 = getelementptr i32, ptr %183, i64 %idxprom201
  %arrayidx339.6 = getelementptr i8, ptr %184, i64 12
  store i32 %add241.6, ptr %arrayidx339.6, align 4
  %185 = load ptr, ptr %arrayidx199.6, align 8
  %186 = getelementptr i32, ptr %185, i64 %idxprom201
  %arrayidx348.6 = getelementptr i8, ptr %186, i64 16
  store i32 %add254.6, ptr %arrayidx348.6, align 4
  %187 = load ptr, ptr %arrayidx199.6, align 8
  %188 = getelementptr i32, ptr %187, i64 %idxprom201
  %arrayidx357.6 = getelementptr i8, ptr %188, i64 20
  store i32 %add267.6, ptr %arrayidx357.6, align 4
  %189 = load ptr, ptr %arrayidx199.6, align 8
  %190 = getelementptr i32, ptr %189, i64 %idxprom201
  %arrayidx366.6 = getelementptr i8, ptr %190, i64 24
  store i32 %add280.6, ptr %arrayidx366.6, align 4
  %191 = load ptr, ptr %arrayidx199.6, align 8
  %192 = getelementptr i32, ptr %191, i64 %idxprom201
  %arrayidx375.6 = getelementptr i8, ptr %192, i64 28
  store i32 %add293.6, ptr %arrayidx375.6, align 4
  %193 = load ptr, ptr %arrayidx199.7, align 8
  %arrayidx312.7 = getelementptr inbounds i32, ptr %193, i64 %idxprom201
  store i32 %80, ptr %arrayidx312.7, align 4
  %194 = load ptr, ptr %arrayidx199.7, align 8
  %195 = getelementptr i32, ptr %194, i64 %idxprom201
  %arrayidx321.7 = getelementptr i8, ptr %195, i64 4
  store i32 %add215.7, ptr %arrayidx321.7, align 4
  %196 = load ptr, ptr %arrayidx199.7, align 8
  %197 = getelementptr i32, ptr %196, i64 %idxprom201
  %arrayidx330.7 = getelementptr i8, ptr %197, i64 8
  store i32 %add228.7, ptr %arrayidx330.7, align 4
  %198 = load ptr, ptr %arrayidx199.7, align 8
  %199 = getelementptr i32, ptr %198, i64 %idxprom201
  %arrayidx339.7 = getelementptr i8, ptr %199, i64 12
  store i32 %add241.7, ptr %arrayidx339.7, align 4
  %200 = load ptr, ptr %arrayidx199.7, align 8
  %201 = getelementptr i32, ptr %200, i64 %idxprom201
  %arrayidx348.7 = getelementptr i8, ptr %201, i64 16
  store i32 %add254.7, ptr %arrayidx348.7, align 4
  %202 = load ptr, ptr %arrayidx199.7, align 8
  %203 = getelementptr i32, ptr %202, i64 %idxprom201
  %arrayidx357.7 = getelementptr i8, ptr %203, i64 20
  store i32 %add267.7, ptr %arrayidx357.7, align 4
  %204 = load ptr, ptr %arrayidx199.7, align 8
  %205 = getelementptr i32, ptr %204, i64 %idxprom201
  %arrayidx366.7 = getelementptr i8, ptr %205, i64 24
  store i32 %add280.7, ptr %arrayidx366.7, align 4
  %206 = load ptr, ptr %arrayidx199.7, align 8
  %207 = getelementptr i32, ptr %206, i64 %idxprom201
  %arrayidx375.7 = getelementptr i8, ptr %207, i64 28
  store i32 %add293.7, ptr %arrayidx375.7, align 4
  br label %if.end379

for.cond.preheader:                               ; preds = %entry
  %idxprom11 = sext i32 %joff to i64
  %arrayidx12 = getelementptr inbounds ptr, ptr %6, i64 %idxprom11
  %208 = load ptr, ptr %arrayidx12, align 8
  %arrayidx21 = getelementptr i8, ptr %arrayidx12, i64 8
  %209 = load ptr, ptr %arrayidx21, align 8
  %arrayidx34 = getelementptr i8, ptr %arrayidx12, i64 16
  %210 = load ptr, ptr %arrayidx34, align 8
  %arrayidx47 = getelementptr i8, ptr %arrayidx12, i64 24
  %211 = load ptr, ptr %arrayidx47, align 8
  %arrayidx60 = getelementptr i8, ptr %arrayidx12, i64 32
  %212 = load ptr, ptr %arrayidx60, align 8
  %arrayidx73 = getelementptr i8, ptr %arrayidx12, i64 40
  %213 = load ptr, ptr %arrayidx73, align 8
  %arrayidx86 = getelementptr i8, ptr %arrayidx12, i64 48
  %214 = load ptr, ptr %arrayidx86, align 8
  %arrayidx99 = getelementptr i8, ptr %arrayidx12, i64 56
  %215 = load ptr, ptr %arrayidx99, align 8
  %216 = sext i32 %ioff to i64
  %arrayidx15 = getelementptr inbounds i32, ptr %208, i64 %216
  %217 = load i32, ptr %arrayidx15, align 4
  %arrayidx24 = getelementptr inbounds i32, ptr %209, i64 %216
  %218 = load i32, ptr %arrayidx24, align 4
  %add28 = add nsw i32 %218, %217
  %arrayidx37 = getelementptr inbounds i32, ptr %210, i64 %216
  %219 = load i32, ptr %arrayidx37, align 4
  %add41 = add nsw i32 %219, %add28
  %arrayidx50 = getelementptr inbounds i32, ptr %211, i64 %216
  %220 = load i32, ptr %arrayidx50, align 4
  %add54 = add nsw i32 %220, %add41
  %arrayidx63 = getelementptr inbounds i32, ptr %212, i64 %216
  %221 = load i32, ptr %arrayidx63, align 4
  %add67 = add nsw i32 %221, %add54
  %arrayidx76 = getelementptr inbounds i32, ptr %213, i64 %216
  %222 = load i32, ptr %arrayidx76, align 4
  %add80 = add nsw i32 %222, %add67
  %arrayidx89 = getelementptr inbounds i32, ptr %214, i64 %216
  %223 = load i32, ptr %arrayidx89, align 4
  %add93 = add nsw i32 %223, %add80
  %arrayidx102 = getelementptr inbounds i32, ptr %215, i64 %216
  %224 = load i32, ptr %arrayidx102, align 4
  %add106 = add nsw i32 %224, %add93
  %225 = add nsw i64 %216, 1
  %arrayidx15.1 = getelementptr inbounds i32, ptr %208, i64 %225
  %226 = load i32, ptr %arrayidx15.1, align 4
  %arrayidx24.1 = getelementptr inbounds i32, ptr %209, i64 %225
  %227 = load i32, ptr %arrayidx24.1, align 4
  %add28.1 = add nsw i32 %227, %226
  %arrayidx37.1 = getelementptr inbounds i32, ptr %210, i64 %225
  %228 = load i32, ptr %arrayidx37.1, align 4
  %add41.1 = add nsw i32 %228, %add28.1
  %arrayidx50.1 = getelementptr inbounds i32, ptr %211, i64 %225
  %229 = load i32, ptr %arrayidx50.1, align 4
  %add54.1 = add nsw i32 %229, %add41.1
  %arrayidx63.1 = getelementptr inbounds i32, ptr %212, i64 %225
  %230 = load i32, ptr %arrayidx63.1, align 4
  %add67.1 = add nsw i32 %230, %add54.1
  %arrayidx76.1 = getelementptr inbounds i32, ptr %213, i64 %225
  %231 = load i32, ptr %arrayidx76.1, align 4
  %add80.1 = add nsw i32 %231, %add67.1
  %arrayidx89.1 = getelementptr inbounds i32, ptr %214, i64 %225
  %232 = load i32, ptr %arrayidx89.1, align 4
  %add93.1 = add nsw i32 %232, %add80.1
  %arrayidx102.1 = getelementptr inbounds i32, ptr %215, i64 %225
  %233 = load i32, ptr %arrayidx102.1, align 4
  %add106.1 = add nsw i32 %233, %add93.1
  %234 = add nsw i64 %216, 2
  %arrayidx15.2 = getelementptr inbounds i32, ptr %208, i64 %234
  %235 = load i32, ptr %arrayidx15.2, align 4
  %arrayidx24.2 = getelementptr inbounds i32, ptr %209, i64 %234
  %236 = load i32, ptr %arrayidx24.2, align 4
  %add28.2 = add nsw i32 %236, %235
  %arrayidx37.2 = getelementptr inbounds i32, ptr %210, i64 %234
  %237 = load i32, ptr %arrayidx37.2, align 4
  %add41.2 = add nsw i32 %237, %add28.2
  %arrayidx50.2 = getelementptr inbounds i32, ptr %211, i64 %234
  %238 = load i32, ptr %arrayidx50.2, align 4
  %add54.2 = add nsw i32 %238, %add41.2
  %arrayidx63.2 = getelementptr inbounds i32, ptr %212, i64 %234
  %239 = load i32, ptr %arrayidx63.2, align 4
  %add67.2 = add nsw i32 %239, %add54.2
  %arrayidx76.2 = getelementptr inbounds i32, ptr %213, i64 %234
  %240 = load i32, ptr %arrayidx76.2, align 4
  %add80.2 = add nsw i32 %240, %add67.2
  %arrayidx89.2 = getelementptr inbounds i32, ptr %214, i64 %234
  %241 = load i32, ptr %arrayidx89.2, align 4
  %add93.2 = add nsw i32 %241, %add80.2
  %arrayidx102.2 = getelementptr inbounds i32, ptr %215, i64 %234
  %242 = load i32, ptr %arrayidx102.2, align 4
  %add106.2 = add nsw i32 %242, %add93.2
  %243 = add nsw i64 %216, 3
  %arrayidx15.3 = getelementptr inbounds i32, ptr %208, i64 %243
  %244 = load i32, ptr %arrayidx15.3, align 4
  %arrayidx24.3 = getelementptr inbounds i32, ptr %209, i64 %243
  %245 = load i32, ptr %arrayidx24.3, align 4
  %add28.3 = add nsw i32 %245, %244
  %arrayidx37.3 = getelementptr inbounds i32, ptr %210, i64 %243
  %246 = load i32, ptr %arrayidx37.3, align 4
  %add41.3 = add nsw i32 %246, %add28.3
  %arrayidx50.3 = getelementptr inbounds i32, ptr %211, i64 %243
  %247 = load i32, ptr %arrayidx50.3, align 4
  %add54.3 = add nsw i32 %247, %add41.3
  %arrayidx63.3 = getelementptr inbounds i32, ptr %212, i64 %243
  %248 = load i32, ptr %arrayidx63.3, align 4
  %add67.3 = add nsw i32 %248, %add54.3
  %arrayidx76.3 = getelementptr inbounds i32, ptr %213, i64 %243
  %249 = load i32, ptr %arrayidx76.3, align 4
  %add80.3 = add nsw i32 %249, %add67.3
  %arrayidx89.3 = getelementptr inbounds i32, ptr %214, i64 %243
  %250 = load i32, ptr %arrayidx89.3, align 4
  %add93.3 = add nsw i32 %250, %add80.3
  %arrayidx102.3 = getelementptr inbounds i32, ptr %215, i64 %243
  %251 = load i32, ptr %arrayidx102.3, align 4
  %add106.3 = add nsw i32 %251, %add93.3
  %252 = add nsw i64 %216, 4
  %arrayidx15.4 = getelementptr inbounds i32, ptr %208, i64 %252
  %253 = load i32, ptr %arrayidx15.4, align 4
  %arrayidx24.4 = getelementptr inbounds i32, ptr %209, i64 %252
  %254 = load i32, ptr %arrayidx24.4, align 4
  %add28.4 = add nsw i32 %254, %253
  %arrayidx37.4 = getelementptr inbounds i32, ptr %210, i64 %252
  %255 = load i32, ptr %arrayidx37.4, align 4
  %add41.4 = add nsw i32 %255, %add28.4
  %arrayidx50.4 = getelementptr inbounds i32, ptr %211, i64 %252
  %256 = load i32, ptr %arrayidx50.4, align 4
  %add54.4 = add nsw i32 %256, %add41.4
  %arrayidx63.4 = getelementptr inbounds i32, ptr %212, i64 %252
  %257 = load i32, ptr %arrayidx63.4, align 4
  %add67.4 = add nsw i32 %257, %add54.4
  %arrayidx76.4 = getelementptr inbounds i32, ptr %213, i64 %252
  %258 = load i32, ptr %arrayidx76.4, align 4
  %add80.4 = add nsw i32 %258, %add67.4
  %arrayidx89.4 = getelementptr inbounds i32, ptr %214, i64 %252
  %259 = load i32, ptr %arrayidx89.4, align 4
  %add93.4 = add nsw i32 %259, %add80.4
  %arrayidx102.4 = getelementptr inbounds i32, ptr %215, i64 %252
  %260 = load i32, ptr %arrayidx102.4, align 4
  %add106.4 = add nsw i32 %260, %add93.4
  %261 = add nsw i64 %216, 5
  %arrayidx15.5 = getelementptr inbounds i32, ptr %208, i64 %261
  %262 = load i32, ptr %arrayidx15.5, align 4
  %arrayidx24.5 = getelementptr inbounds i32, ptr %209, i64 %261
  %263 = load i32, ptr %arrayidx24.5, align 4
  %add28.5 = add nsw i32 %263, %262
  %arrayidx37.5 = getelementptr inbounds i32, ptr %210, i64 %261
  %264 = load i32, ptr %arrayidx37.5, align 4
  %add41.5 = add nsw i32 %264, %add28.5
  %arrayidx50.5 = getelementptr inbounds i32, ptr %211, i64 %261
  %265 = load i32, ptr %arrayidx50.5, align 4
  %add54.5 = add nsw i32 %265, %add41.5
  %arrayidx63.5 = getelementptr inbounds i32, ptr %212, i64 %261
  %266 = load i32, ptr %arrayidx63.5, align 4
  %add67.5 = add nsw i32 %266, %add54.5
  %arrayidx76.5 = getelementptr inbounds i32, ptr %213, i64 %261
  %267 = load i32, ptr %arrayidx76.5, align 4
  %add80.5 = add nsw i32 %267, %add67.5
  %arrayidx89.5 = getelementptr inbounds i32, ptr %214, i64 %261
  %268 = load i32, ptr %arrayidx89.5, align 4
  %add93.5 = add nsw i32 %268, %add80.5
  %arrayidx102.5 = getelementptr inbounds i32, ptr %215, i64 %261
  %269 = load i32, ptr %arrayidx102.5, align 4
  %add106.5 = add nsw i32 %269, %add93.5
  %270 = add nsw i64 %216, 6
  %arrayidx15.6 = getelementptr inbounds i32, ptr %208, i64 %270
  %271 = load i32, ptr %arrayidx15.6, align 4
  %arrayidx24.6 = getelementptr inbounds i32, ptr %209, i64 %270
  %272 = load i32, ptr %arrayidx24.6, align 4
  %add28.6 = add nsw i32 %272, %271
  %arrayidx37.6 = getelementptr inbounds i32, ptr %210, i64 %270
  %273 = load i32, ptr %arrayidx37.6, align 4
  %add41.6 = add nsw i32 %273, %add28.6
  %arrayidx50.6 = getelementptr inbounds i32, ptr %211, i64 %270
  %274 = load i32, ptr %arrayidx50.6, align 4
  %add54.6 = add nsw i32 %274, %add41.6
  %arrayidx63.6 = getelementptr inbounds i32, ptr %212, i64 %270
  %275 = load i32, ptr %arrayidx63.6, align 4
  %add67.6 = add nsw i32 %275, %add54.6
  %arrayidx76.6 = getelementptr inbounds i32, ptr %213, i64 %270
  %276 = load i32, ptr %arrayidx76.6, align 4
  %add80.6 = add nsw i32 %276, %add67.6
  %arrayidx89.6 = getelementptr inbounds i32, ptr %214, i64 %270
  %277 = load i32, ptr %arrayidx89.6, align 4
  %add93.6 = add nsw i32 %277, %add80.6
  %arrayidx102.6 = getelementptr inbounds i32, ptr %215, i64 %270
  %278 = load i32, ptr %arrayidx102.6, align 4
  %add106.6 = add nsw i32 %278, %add93.6
  %279 = add nsw i64 %216, 7
  %arrayidx15.7 = getelementptr inbounds i32, ptr %208, i64 %279
  %280 = load i32, ptr %arrayidx15.7, align 4
  %arrayidx24.7 = getelementptr inbounds i32, ptr %209, i64 %279
  %281 = load i32, ptr %arrayidx24.7, align 4
  %add28.7 = add nsw i32 %281, %280
  %arrayidx37.7 = getelementptr inbounds i32, ptr %210, i64 %279
  %282 = load i32, ptr %arrayidx37.7, align 4
  %add41.7 = add nsw i32 %282, %add28.7
  %arrayidx50.7 = getelementptr inbounds i32, ptr %211, i64 %279
  %283 = load i32, ptr %arrayidx50.7, align 4
  %add54.7 = add nsw i32 %283, %add41.7
  %arrayidx63.7 = getelementptr inbounds i32, ptr %212, i64 %279
  %284 = load i32, ptr %arrayidx63.7, align 4
  %add67.7 = add nsw i32 %284, %add54.7
  %arrayidx76.7 = getelementptr inbounds i32, ptr %213, i64 %279
  %285 = load i32, ptr %arrayidx76.7, align 4
  %add80.7 = add nsw i32 %285, %add67.7
  %arrayidx89.7 = getelementptr inbounds i32, ptr %214, i64 %279
  %286 = load i32, ptr %arrayidx89.7, align 4
  %add93.7 = add nsw i32 %286, %add80.7
  %arrayidx102.7 = getelementptr inbounds i32, ptr %215, i64 %279
  %287 = load i32, ptr %arrayidx102.7, align 4
  %add106.7 = add nsw i32 %287, %add93.7
  %288 = load ptr, ptr %arrayidx12, align 8
  %arrayidx121 = getelementptr inbounds i32, ptr %288, i64 %216
  store i32 %217, ptr %arrayidx121, align 4
  %289 = load ptr, ptr %arrayidx21, align 8
  %arrayidx130 = getelementptr inbounds i32, ptr %289, i64 %216
  store i32 %add28, ptr %arrayidx130, align 4
  %290 = load ptr, ptr %arrayidx34, align 8
  %arrayidx139 = getelementptr inbounds i32, ptr %290, i64 %216
  store i32 %add41, ptr %arrayidx139, align 4
  %291 = load ptr, ptr %arrayidx47, align 8
  %arrayidx148 = getelementptr inbounds i32, ptr %291, i64 %216
  store i32 %add54, ptr %arrayidx148, align 4
  %292 = load ptr, ptr %arrayidx60, align 8
  %arrayidx157 = getelementptr inbounds i32, ptr %292, i64 %216
  store i32 %add67, ptr %arrayidx157, align 4
  %293 = load ptr, ptr %arrayidx73, align 8
  %arrayidx166 = getelementptr inbounds i32, ptr %293, i64 %216
  store i32 %add80, ptr %arrayidx166, align 4
  %294 = load ptr, ptr %arrayidx86, align 8
  %arrayidx175 = getelementptr inbounds i32, ptr %294, i64 %216
  store i32 %add93, ptr %arrayidx175, align 4
  %295 = load ptr, ptr %arrayidx99, align 8
  %arrayidx184 = getelementptr inbounds i32, ptr %295, i64 %216
  store i32 %add106, ptr %arrayidx184, align 4
  %296 = load ptr, ptr %arrayidx12, align 8
  %arrayidx121.1 = getelementptr inbounds i32, ptr %296, i64 %225
  store i32 %226, ptr %arrayidx121.1, align 4
  %297 = load ptr, ptr %arrayidx21, align 8
  %arrayidx130.1 = getelementptr inbounds i32, ptr %297, i64 %225
  store i32 %add28.1, ptr %arrayidx130.1, align 4
  %298 = load ptr, ptr %arrayidx34, align 8
  %arrayidx139.1 = getelementptr inbounds i32, ptr %298, i64 %225
  store i32 %add41.1, ptr %arrayidx139.1, align 4
  %299 = load ptr, ptr %arrayidx47, align 8
  %arrayidx148.1 = getelementptr inbounds i32, ptr %299, i64 %225
  store i32 %add54.1, ptr %arrayidx148.1, align 4
  %300 = load ptr, ptr %arrayidx60, align 8
  %arrayidx157.1 = getelementptr inbounds i32, ptr %300, i64 %225
  store i32 %add67.1, ptr %arrayidx157.1, align 4
  %301 = load ptr, ptr %arrayidx73, align 8
  %arrayidx166.1 = getelementptr inbounds i32, ptr %301, i64 %225
  store i32 %add80.1, ptr %arrayidx166.1, align 4
  %302 = load ptr, ptr %arrayidx86, align 8
  %arrayidx175.1 = getelementptr inbounds i32, ptr %302, i64 %225
  store i32 %add93.1, ptr %arrayidx175.1, align 4
  %303 = load ptr, ptr %arrayidx99, align 8
  %arrayidx184.1 = getelementptr inbounds i32, ptr %303, i64 %225
  store i32 %add106.1, ptr %arrayidx184.1, align 4
  %304 = load ptr, ptr %arrayidx12, align 8
  %arrayidx121.2 = getelementptr inbounds i32, ptr %304, i64 %234
  store i32 %235, ptr %arrayidx121.2, align 4
  %305 = load ptr, ptr %arrayidx21, align 8
  %arrayidx130.2 = getelementptr inbounds i32, ptr %305, i64 %234
  store i32 %add28.2, ptr %arrayidx130.2, align 4
  %306 = load ptr, ptr %arrayidx34, align 8
  %arrayidx139.2 = getelementptr inbounds i32, ptr %306, i64 %234
  store i32 %add41.2, ptr %arrayidx139.2, align 4
  %307 = load ptr, ptr %arrayidx47, align 8
  %arrayidx148.2 = getelementptr inbounds i32, ptr %307, i64 %234
  store i32 %add54.2, ptr %arrayidx148.2, align 4
  %308 = load ptr, ptr %arrayidx60, align 8
  %arrayidx157.2 = getelementptr inbounds i32, ptr %308, i64 %234
  store i32 %add67.2, ptr %arrayidx157.2, align 4
  %309 = load ptr, ptr %arrayidx73, align 8
  %arrayidx166.2 = getelementptr inbounds i32, ptr %309, i64 %234
  store i32 %add80.2, ptr %arrayidx166.2, align 4
  %310 = load ptr, ptr %arrayidx86, align 8
  %arrayidx175.2 = getelementptr inbounds i32, ptr %310, i64 %234
  store i32 %add93.2, ptr %arrayidx175.2, align 4
  %311 = load ptr, ptr %arrayidx99, align 8
  %arrayidx184.2 = getelementptr inbounds i32, ptr %311, i64 %234
  store i32 %add106.2, ptr %arrayidx184.2, align 4
  %312 = load ptr, ptr %arrayidx12, align 8
  %arrayidx121.3 = getelementptr inbounds i32, ptr %312, i64 %243
  store i32 %244, ptr %arrayidx121.3, align 4
  %313 = load ptr, ptr %arrayidx21, align 8
  %arrayidx130.3 = getelementptr inbounds i32, ptr %313, i64 %243
  store i32 %add28.3, ptr %arrayidx130.3, align 4
  %314 = load ptr, ptr %arrayidx34, align 8
  %arrayidx139.3 = getelementptr inbounds i32, ptr %314, i64 %243
  store i32 %add41.3, ptr %arrayidx139.3, align 4
  %315 = load ptr, ptr %arrayidx47, align 8
  %arrayidx148.3 = getelementptr inbounds i32, ptr %315, i64 %243
  store i32 %add54.3, ptr %arrayidx148.3, align 4
  %316 = load ptr, ptr %arrayidx60, align 8
  %arrayidx157.3 = getelementptr inbounds i32, ptr %316, i64 %243
  store i32 %add67.3, ptr %arrayidx157.3, align 4
  %317 = load ptr, ptr %arrayidx73, align 8
  %arrayidx166.3 = getelementptr inbounds i32, ptr %317, i64 %243
  store i32 %add80.3, ptr %arrayidx166.3, align 4
  %318 = load ptr, ptr %arrayidx86, align 8
  %arrayidx175.3 = getelementptr inbounds i32, ptr %318, i64 %243
  store i32 %add93.3, ptr %arrayidx175.3, align 4
  %319 = load ptr, ptr %arrayidx99, align 8
  %arrayidx184.3 = getelementptr inbounds i32, ptr %319, i64 %243
  store i32 %add106.3, ptr %arrayidx184.3, align 4
  %320 = load ptr, ptr %arrayidx12, align 8
  %arrayidx121.4 = getelementptr inbounds i32, ptr %320, i64 %252
  store i32 %253, ptr %arrayidx121.4, align 4
  %321 = load ptr, ptr %arrayidx21, align 8
  %arrayidx130.4 = getelementptr inbounds i32, ptr %321, i64 %252
  store i32 %add28.4, ptr %arrayidx130.4, align 4
  %322 = load ptr, ptr %arrayidx34, align 8
  %arrayidx139.4 = getelementptr inbounds i32, ptr %322, i64 %252
  store i32 %add41.4, ptr %arrayidx139.4, align 4
  %323 = load ptr, ptr %arrayidx47, align 8
  %arrayidx148.4 = getelementptr inbounds i32, ptr %323, i64 %252
  store i32 %add54.4, ptr %arrayidx148.4, align 4
  %324 = load ptr, ptr %arrayidx60, align 8
  %arrayidx157.4 = getelementptr inbounds i32, ptr %324, i64 %252
  store i32 %add67.4, ptr %arrayidx157.4, align 4
  %325 = load ptr, ptr %arrayidx73, align 8
  %arrayidx166.4 = getelementptr inbounds i32, ptr %325, i64 %252
  store i32 %add80.4, ptr %arrayidx166.4, align 4
  %326 = load ptr, ptr %arrayidx86, align 8
  %arrayidx175.4 = getelementptr inbounds i32, ptr %326, i64 %252
  store i32 %add93.4, ptr %arrayidx175.4, align 4
  %327 = load ptr, ptr %arrayidx99, align 8
  %arrayidx184.4 = getelementptr inbounds i32, ptr %327, i64 %252
  store i32 %add106.4, ptr %arrayidx184.4, align 4
  %328 = load ptr, ptr %arrayidx12, align 8
  %arrayidx121.5 = getelementptr inbounds i32, ptr %328, i64 %261
  store i32 %262, ptr %arrayidx121.5, align 4
  %329 = load ptr, ptr %arrayidx21, align 8
  %arrayidx130.5 = getelementptr inbounds i32, ptr %329, i64 %261
  store i32 %add28.5, ptr %arrayidx130.5, align 4
  %330 = load ptr, ptr %arrayidx34, align 8
  %arrayidx139.5 = getelementptr inbounds i32, ptr %330, i64 %261
  store i32 %add41.5, ptr %arrayidx139.5, align 4
  %331 = load ptr, ptr %arrayidx47, align 8
  %arrayidx148.5 = getelementptr inbounds i32, ptr %331, i64 %261
  store i32 %add54.5, ptr %arrayidx148.5, align 4
  %332 = load ptr, ptr %arrayidx60, align 8
  %arrayidx157.5 = getelementptr inbounds i32, ptr %332, i64 %261
  store i32 %add67.5, ptr %arrayidx157.5, align 4
  %333 = load ptr, ptr %arrayidx73, align 8
  %arrayidx166.5 = getelementptr inbounds i32, ptr %333, i64 %261
  store i32 %add80.5, ptr %arrayidx166.5, align 4
  %334 = load ptr, ptr %arrayidx86, align 8
  %arrayidx175.5 = getelementptr inbounds i32, ptr %334, i64 %261
  store i32 %add93.5, ptr %arrayidx175.5, align 4
  %335 = load ptr, ptr %arrayidx99, align 8
  %arrayidx184.5 = getelementptr inbounds i32, ptr %335, i64 %261
  store i32 %add106.5, ptr %arrayidx184.5, align 4
  %336 = load ptr, ptr %arrayidx12, align 8
  %arrayidx121.6 = getelementptr inbounds i32, ptr %336, i64 %270
  store i32 %271, ptr %arrayidx121.6, align 4
  %337 = load ptr, ptr %arrayidx21, align 8
  %arrayidx130.6 = getelementptr inbounds i32, ptr %337, i64 %270
  store i32 %add28.6, ptr %arrayidx130.6, align 4
  %338 = load ptr, ptr %arrayidx34, align 8
  %arrayidx139.6 = getelementptr inbounds i32, ptr %338, i64 %270
  store i32 %add41.6, ptr %arrayidx139.6, align 4
  %339 = load ptr, ptr %arrayidx47, align 8
  %arrayidx148.6 = getelementptr inbounds i32, ptr %339, i64 %270
  store i32 %add54.6, ptr %arrayidx148.6, align 4
  %340 = load ptr, ptr %arrayidx60, align 8
  %arrayidx157.6 = getelementptr inbounds i32, ptr %340, i64 %270
  store i32 %add67.6, ptr %arrayidx157.6, align 4
  %341 = load ptr, ptr %arrayidx73, align 8
  %arrayidx166.6 = getelementptr inbounds i32, ptr %341, i64 %270
  store i32 %add80.6, ptr %arrayidx166.6, align 4
  %342 = load ptr, ptr %arrayidx86, align 8
  %arrayidx175.6 = getelementptr inbounds i32, ptr %342, i64 %270
  store i32 %add93.6, ptr %arrayidx175.6, align 4
  %343 = load ptr, ptr %arrayidx99, align 8
  %arrayidx184.6 = getelementptr inbounds i32, ptr %343, i64 %270
  store i32 %add106.6, ptr %arrayidx184.6, align 4
  %344 = load ptr, ptr %arrayidx12, align 8
  %arrayidx121.7 = getelementptr inbounds i32, ptr %344, i64 %279
  store i32 %280, ptr %arrayidx121.7, align 4
  %345 = load ptr, ptr %arrayidx21, align 8
  %arrayidx130.7 = getelementptr inbounds i32, ptr %345, i64 %279
  store i32 %add28.7, ptr %arrayidx130.7, align 4
  %346 = load ptr, ptr %arrayidx34, align 8
  %arrayidx139.7 = getelementptr inbounds i32, ptr %346, i64 %279
  store i32 %add41.7, ptr %arrayidx139.7, align 4
  %347 = load ptr, ptr %arrayidx47, align 8
  %arrayidx148.7 = getelementptr inbounds i32, ptr %347, i64 %279
  store i32 %add54.7, ptr %arrayidx148.7, align 4
  %348 = load ptr, ptr %arrayidx60, align 8
  %arrayidx157.7 = getelementptr inbounds i32, ptr %348, i64 %279
  store i32 %add67.7, ptr %arrayidx157.7, align 4
  %349 = load ptr, ptr %arrayidx73, align 8
  %arrayidx166.7 = getelementptr inbounds i32, ptr %349, i64 %279
  store i32 %add80.7, ptr %arrayidx166.7, align 4
  %350 = load ptr, ptr %arrayidx86, align 8
  %arrayidx175.7 = getelementptr inbounds i32, ptr %350, i64 %279
  store i32 %add93.7, ptr %arrayidx175.7, align 4
  %351 = load ptr, ptr %arrayidx99, align 8
  %arrayidx184.7 = getelementptr inbounds i32, ptr %351, i64 %279
  store i32 %add106.7, ptr %arrayidx184.7, align 4
  br label %if.end379

if.end379:                                        ; preds = %entry.if.end379_crit_edge, %for.cond193.preheader, %for.cond.preheader
  %.pre-phi693 = phi i64 [ %.pre692, %entry.if.end379_crit_edge ], [ %8, %for.cond193.preheader ], [ %idxprom11, %for.cond.preheader ]
  %.pre-phi = phi i64 [ %.pre, %entry.if.end379_crit_edge ], [ %idxprom201, %for.cond193.preheader ], [ %216, %for.cond.preheader ]
  %indvars.iv.next = add nsw i64 %.pre-phi, 1
  %indvars.iv.next.1 = add nsw i64 %.pre-phi, 2
  %indvars.iv.next.2 = add nsw i64 %.pre-phi, 3
  %indvars.iv.next.3 = add nsw i64 %.pre-phi, 4
  %indvars.iv.next.4 = add nsw i64 %.pre-phi, 5
  %indvars.iv.next.5 = add nsw i64 %.pre-phi, 6
  %indvars.iv.next.6 = add nsw i64 %.pre-phi, 7
  %352 = add nsw i32 %joff, 7
  %353 = sext i32 %352 to i64
  br label %for.inc408

for.inc408:                                       ; preds = %if.end379, %for.inc408
  %indvars.iv = phi i64 [ %.pre-phi693, %if.end379 ], [ %indvars.iv.next626, %for.inc408 ]
  %arrayidx391 = getelementptr inbounds ptr, ptr %6, i64 %indvars.iv
  %arrayidx395 = getelementptr inbounds ptr, ptr %2, i64 %indvars.iv
  %arrayidx402 = getelementptr inbounds ptr, ptr %4, i64 %indvars.iv
  %354 = load ptr, ptr %arrayidx391, align 8
  %arrayidx393 = getelementptr inbounds i32, ptr %354, i64 %.pre-phi
  %355 = load i32, ptr %arrayidx393, align 4
  %356 = load ptr, ptr %arrayidx395, align 8
  %arrayidx397 = getelementptr inbounds i16, ptr %356, i64 %.pre-phi
  %357 = load i16, ptr %arrayidx397, align 2
  %358 = trunc i32 %355 to i16
  %conv400 = add i16 %357, %358
  %359 = load ptr, ptr %arrayidx402, align 8
  %arrayidx404 = getelementptr inbounds i16, ptr %359, i64 %.pre-phi
  store i16 %conv400, ptr %arrayidx404, align 2
  %360 = load ptr, ptr %arrayidx391, align 8
  %arrayidx393.1 = getelementptr inbounds i32, ptr %360, i64 %indvars.iv.next
  %361 = load i32, ptr %arrayidx393.1, align 4
  %362 = load ptr, ptr %arrayidx395, align 8
  %arrayidx397.1 = getelementptr inbounds i16, ptr %362, i64 %indvars.iv.next
  %363 = load i16, ptr %arrayidx397.1, align 2
  %364 = trunc i32 %361 to i16
  %conv400.1 = add i16 %363, %364
  %365 = load ptr, ptr %arrayidx402, align 8
  %arrayidx404.1 = getelementptr inbounds i16, ptr %365, i64 %indvars.iv.next
  store i16 %conv400.1, ptr %arrayidx404.1, align 2
  %366 = load ptr, ptr %arrayidx391, align 8
  %arrayidx393.2 = getelementptr inbounds i32, ptr %366, i64 %indvars.iv.next.1
  %367 = load i32, ptr %arrayidx393.2, align 4
  %368 = load ptr, ptr %arrayidx395, align 8
  %arrayidx397.2 = getelementptr inbounds i16, ptr %368, i64 %indvars.iv.next.1
  %369 = load i16, ptr %arrayidx397.2, align 2
  %370 = trunc i32 %367 to i16
  %conv400.2 = add i16 %369, %370
  %371 = load ptr, ptr %arrayidx402, align 8
  %arrayidx404.2 = getelementptr inbounds i16, ptr %371, i64 %indvars.iv.next.1
  store i16 %conv400.2, ptr %arrayidx404.2, align 2
  %372 = load ptr, ptr %arrayidx391, align 8
  %arrayidx393.3 = getelementptr inbounds i32, ptr %372, i64 %indvars.iv.next.2
  %373 = load i32, ptr %arrayidx393.3, align 4
  %374 = load ptr, ptr %arrayidx395, align 8
  %arrayidx397.3 = getelementptr inbounds i16, ptr %374, i64 %indvars.iv.next.2
  %375 = load i16, ptr %arrayidx397.3, align 2
  %376 = trunc i32 %373 to i16
  %conv400.3 = add i16 %375, %376
  %377 = load ptr, ptr %arrayidx402, align 8
  %arrayidx404.3 = getelementptr inbounds i16, ptr %377, i64 %indvars.iv.next.2
  store i16 %conv400.3, ptr %arrayidx404.3, align 2
  %378 = load ptr, ptr %arrayidx391, align 8
  %arrayidx393.4 = getelementptr inbounds i32, ptr %378, i64 %indvars.iv.next.3
  %379 = load i32, ptr %arrayidx393.4, align 4
  %380 = load ptr, ptr %arrayidx395, align 8
  %arrayidx397.4 = getelementptr inbounds i16, ptr %380, i64 %indvars.iv.next.3
  %381 = load i16, ptr %arrayidx397.4, align 2
  %382 = trunc i32 %379 to i16
  %conv400.4 = add i16 %381, %382
  %383 = load ptr, ptr %arrayidx402, align 8
  %arrayidx404.4 = getelementptr inbounds i16, ptr %383, i64 %indvars.iv.next.3
  store i16 %conv400.4, ptr %arrayidx404.4, align 2
  %384 = load ptr, ptr %arrayidx391, align 8
  %arrayidx393.5 = getelementptr inbounds i32, ptr %384, i64 %indvars.iv.next.4
  %385 = load i32, ptr %arrayidx393.5, align 4
  %386 = load ptr, ptr %arrayidx395, align 8
  %arrayidx397.5 = getelementptr inbounds i16, ptr %386, i64 %indvars.iv.next.4
  %387 = load i16, ptr %arrayidx397.5, align 2
  %388 = trunc i32 %385 to i16
  %conv400.5 = add i16 %387, %388
  %389 = load ptr, ptr %arrayidx402, align 8
  %arrayidx404.5 = getelementptr inbounds i16, ptr %389, i64 %indvars.iv.next.4
  store i16 %conv400.5, ptr %arrayidx404.5, align 2
  %390 = load ptr, ptr %arrayidx391, align 8
  %arrayidx393.6 = getelementptr inbounds i32, ptr %390, i64 %indvars.iv.next.5
  %391 = load i32, ptr %arrayidx393.6, align 4
  %392 = load ptr, ptr %arrayidx395, align 8
  %arrayidx397.6 = getelementptr inbounds i16, ptr %392, i64 %indvars.iv.next.5
  %393 = load i16, ptr %arrayidx397.6, align 2
  %394 = trunc i32 %391 to i16
  %conv400.6 = add i16 %393, %394
  %395 = load ptr, ptr %arrayidx402, align 8
  %arrayidx404.6 = getelementptr inbounds i16, ptr %395, i64 %indvars.iv.next.5
  store i16 %conv400.6, ptr %arrayidx404.6, align 2
  %396 = load ptr, ptr %arrayidx391, align 8
  %arrayidx393.7 = getelementptr inbounds i32, ptr %396, i64 %indvars.iv.next.6
  %397 = load i32, ptr %arrayidx393.7, align 4
  %398 = load ptr, ptr %arrayidx395, align 8
  %arrayidx397.7 = getelementptr inbounds i16, ptr %398, i64 %indvars.iv.next.6
  %399 = load i16, ptr %arrayidx397.7, align 2
  %400 = trunc i32 %397 to i16
  %conv400.7 = add i16 %399, %400
  %401 = load ptr, ptr %arrayidx402, align 8
  %arrayidx404.7 = getelementptr inbounds i16, ptr %401, i64 %indvars.iv.next.6
  store i16 %conv400.7, ptr %arrayidx404.7, align 2
  %indvars.iv.next626 = add nsw i64 %indvars.iv, 1
  %cmp382 = icmp slt i64 %indvars.iv, %353
  br i1 %cmp382, label %for.inc408, label %for.end410

for.end410:                                       ; preds = %for.inc408
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Inv_Residual_trans_16x16(ptr nocapture noundef readonly %currMB, i32 noundef %pl) local_unnamed_addr #4 {
entry:
  %temp = alloca [16 x [16 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %temp) #8
  %0 = load ptr, ptr %currMB, align 8
  %mb_pred1 = getelementptr inbounds i8, ptr %0, i64 1248
  %1 = load ptr, ptr %mb_pred1, align 8
  %idxprom = zext i32 %pl to i64
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 %idxprom
  %2 = load ptr, ptr %arrayidx, align 8
  %mb_rec2 = getelementptr inbounds i8, ptr %0, i64 1256
  %3 = load ptr, ptr %mb_rec2, align 8
  %arrayidx4 = getelementptr inbounds ptr, ptr %3, i64 %idxprom
  %4 = load ptr, ptr %arrayidx4, align 8
  %mb_rres5 = getelementptr inbounds i8, ptr %0, i64 1264
  %5 = load ptr, ptr %mb_rres5, align 8
  %arrayidx7 = getelementptr inbounds ptr, ptr %5, i64 %idxprom
  %6 = load ptr, ptr %arrayidx7, align 8
  %cof8 = getelementptr inbounds i8, ptr %0, i64 1272
  %7 = load ptr, ptr %cof8, align 8
  %arrayidx10 = getelementptr inbounds ptr, ptr %7, i64 %idxprom
  %8 = load ptr, ptr %arrayidx10, align 8
  %ipmode_DPCM = getelementptr inbounds i8, ptr %currMB, i64 372
  %9 = load i8, ptr %ipmode_DPCM, align 4
  switch i8 %9, label %for.cond127.preheader [
    i8 0, label %for.cond.preheader
    i8 1, label %for.body69
  ]

for.cond.preheader:                               ; preds = %entry
  %10 = load ptr, ptr %8, align 8
  %arrayidx25 = getelementptr inbounds i8, ptr %8, i64 8
  %arrayidx25.1 = getelementptr inbounds i8, ptr %8, i64 16
  %arrayidx25.2 = getelementptr inbounds i8, ptr %8, i64 24
  %arrayidx25.3 = getelementptr inbounds i8, ptr %8, i64 32
  %arrayidx25.4 = getelementptr inbounds i8, ptr %8, i64 40
  %arrayidx25.5 = getelementptr inbounds i8, ptr %8, i64 48
  %arrayidx25.6 = getelementptr inbounds i8, ptr %8, i64 56
  %arrayidx25.7 = getelementptr inbounds i8, ptr %8, i64 64
  %arrayidx25.8 = getelementptr inbounds i8, ptr %8, i64 72
  %arrayidx25.9 = getelementptr inbounds i8, ptr %8, i64 80
  %arrayidx25.10 = getelementptr inbounds i8, ptr %8, i64 88
  %arrayidx25.11 = getelementptr inbounds i8, ptr %8, i64 96
  %arrayidx25.12 = getelementptr inbounds i8, ptr %8, i64 104
  %arrayidx25.13 = getelementptr inbounds i8, ptr %8, i64 112
  %arrayidx25.14 = getelementptr inbounds i8, ptr %8, i64 120
  br label %for.body

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv278 = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next279, %for.body ]
  %arrayidx16 = getelementptr inbounds i32, ptr %10, i64 %indvars.iv278
  %11 = load i32, ptr %arrayidx16, align 4
  %arrayidx19 = getelementptr inbounds [16 x i32], ptr %temp, i64 0, i64 %indvars.iv278
  store i32 %11, ptr %arrayidx19, align 4
  %12 = load ptr, ptr %arrayidx25, align 8
  %arrayidx27 = getelementptr inbounds i32, ptr %12, i64 %indvars.iv278
  %13 = load i32, ptr %arrayidx27, align 4
  %add = add nsw i32 %11, %13
  %arrayidx35 = getelementptr inbounds [16 x [16 x i32]], ptr %temp, i64 0, i64 1, i64 %indvars.iv278
  store i32 %add, ptr %arrayidx35, align 4
  %14 = load ptr, ptr %arrayidx25.1, align 8
  %arrayidx27.1 = getelementptr inbounds i32, ptr %14, i64 %indvars.iv278
  %15 = load i32, ptr %arrayidx27.1, align 4
  %add.1 = add nsw i32 %add, %15
  %arrayidx35.1 = getelementptr inbounds [16 x [16 x i32]], ptr %temp, i64 0, i64 2, i64 %indvars.iv278
  store i32 %add.1, ptr %arrayidx35.1, align 4
  %16 = load ptr, ptr %arrayidx25.2, align 8
  %arrayidx27.2 = getelementptr inbounds i32, ptr %16, i64 %indvars.iv278
  %17 = load i32, ptr %arrayidx27.2, align 4
  %add.2 = add nsw i32 %add.1, %17
  %arrayidx35.2 = getelementptr inbounds [16 x [16 x i32]], ptr %temp, i64 0, i64 3, i64 %indvars.iv278
  store i32 %add.2, ptr %arrayidx35.2, align 4
  %18 = load ptr, ptr %arrayidx25.3, align 8
  %arrayidx27.3 = getelementptr inbounds i32, ptr %18, i64 %indvars.iv278
  %19 = load i32, ptr %arrayidx27.3, align 4
  %add.3 = add nsw i32 %add.2, %19
  %arrayidx35.3 = getelementptr inbounds [16 x [16 x i32]], ptr %temp, i64 0, i64 4, i64 %indvars.iv278
  store i32 %add.3, ptr %arrayidx35.3, align 4
  %20 = load ptr, ptr %arrayidx25.4, align 8
  %arrayidx27.4 = getelementptr inbounds i32, ptr %20, i64 %indvars.iv278
  %21 = load i32, ptr %arrayidx27.4, align 4
  %add.4 = add nsw i32 %add.3, %21
  %arrayidx35.4 = getelementptr inbounds [16 x [16 x i32]], ptr %temp, i64 0, i64 5, i64 %indvars.iv278
  store i32 %add.4, ptr %arrayidx35.4, align 4
  %22 = load ptr, ptr %arrayidx25.5, align 8
  %arrayidx27.5 = getelementptr inbounds i32, ptr %22, i64 %indvars.iv278
  %23 = load i32, ptr %arrayidx27.5, align 4
  %add.5 = add nsw i32 %add.4, %23
  %arrayidx35.5 = getelementptr inbounds [16 x [16 x i32]], ptr %temp, i64 0, i64 6, i64 %indvars.iv278
  store i32 %add.5, ptr %arrayidx35.5, align 4
  %24 = load ptr, ptr %arrayidx25.6, align 8
  %arrayidx27.6 = getelementptr inbounds i32, ptr %24, i64 %indvars.iv278
  %25 = load i32, ptr %arrayidx27.6, align 4
  %add.6 = add nsw i32 %add.5, %25
  %arrayidx35.6 = getelementptr inbounds [16 x [16 x i32]], ptr %temp, i64 0, i64 7, i64 %indvars.iv278
  store i32 %add.6, ptr %arrayidx35.6, align 4
  %26 = load ptr, ptr %arrayidx25.7, align 8
  %arrayidx27.7 = getelementptr inbounds i32, ptr %26, i64 %indvars.iv278
  %27 = load i32, ptr %arrayidx27.7, align 4
  %add.7 = add nsw i32 %add.6, %27
  %arrayidx35.7 = getelementptr inbounds [16 x [16 x i32]], ptr %temp, i64 0, i64 8, i64 %indvars.iv278
  store i32 %add.7, ptr %arrayidx35.7, align 4
  %28 = load ptr, ptr %arrayidx25.8, align 8
  %arrayidx27.8 = getelementptr inbounds i32, ptr %28, i64 %indvars.iv278
  %29 = load i32, ptr %arrayidx27.8, align 4
  %add.8 = add nsw i32 %add.7, %29
  %arrayidx35.8 = getelementptr inbounds [16 x [16 x i32]], ptr %temp, i64 0, i64 9, i64 %indvars.iv278
  store i32 %add.8, ptr %arrayidx35.8, align 4
  %30 = load ptr, ptr %arrayidx25.9, align 8
  %arrayidx27.9 = getelementptr inbounds i32, ptr %30, i64 %indvars.iv278
  %31 = load i32, ptr %arrayidx27.9, align 4
  %add.9 = add nsw i32 %add.8, %31
  %arrayidx35.9 = getelementptr inbounds [16 x [16 x i32]], ptr %temp, i64 0, i64 10, i64 %indvars.iv278
  store i32 %add.9, ptr %arrayidx35.9, align 4
  %32 = load ptr, ptr %arrayidx25.10, align 8
  %arrayidx27.10 = getelementptr inbounds i32, ptr %32, i64 %indvars.iv278
  %33 = load i32, ptr %arrayidx27.10, align 4
  %add.10 = add nsw i32 %add.9, %33
  %arrayidx35.10 = getelementptr inbounds [16 x [16 x i32]], ptr %temp, i64 0, i64 11, i64 %indvars.iv278
  store i32 %add.10, ptr %arrayidx35.10, align 4
  %34 = load ptr, ptr %arrayidx25.11, align 8
  %arrayidx27.11 = getelementptr inbounds i32, ptr %34, i64 %indvars.iv278
  %35 = load i32, ptr %arrayidx27.11, align 4
  %add.11 = add nsw i32 %add.10, %35
  %arrayidx35.11 = getelementptr inbounds [16 x [16 x i32]], ptr %temp, i64 0, i64 12, i64 %indvars.iv278
  store i32 %add.11, ptr %arrayidx35.11, align 4
  %36 = load ptr, ptr %arrayidx25.12, align 8
  %arrayidx27.12 = getelementptr inbounds i32, ptr %36, i64 %indvars.iv278
  %37 = load i32, ptr %arrayidx27.12, align 4
  %add.12 = add nsw i32 %add.11, %37
  %arrayidx35.12 = getelementptr inbounds [16 x [16 x i32]], ptr %temp, i64 0, i64 13, i64 %indvars.iv278
  store i32 %add.12, ptr %arrayidx35.12, align 4
  %38 = load ptr, ptr %arrayidx25.13, align 8
  %arrayidx27.13 = getelementptr inbounds i32, ptr %38, i64 %indvars.iv278
  %39 = load i32, ptr %arrayidx27.13, align 4
  %add.13 = add nsw i32 %add.12, %39
  %arrayidx35.13 = getelementptr inbounds [16 x [16 x i32]], ptr %temp, i64 0, i64 14, i64 %indvars.iv278
  store i32 %add.13, ptr %arrayidx35.13, align 4
  %40 = load ptr, ptr %arrayidx25.14, align 8
  %arrayidx27.14 = getelementptr inbounds i32, ptr %40, i64 %indvars.iv278
  %41 = load i32, ptr %arrayidx27.14, align 4
  %add.14 = add nsw i32 %add.13, %41
  %arrayidx35.14 = getelementptr inbounds [16 x [16 x i32]], ptr %temp, i64 0, i64 15, i64 %indvars.iv278
  store i32 %add.14, ptr %arrayidx35.14, align 4
  %indvars.iv.next279 = add nuw nsw i64 %indvars.iv278, 1
  %exitcond281.not = icmp eq i64 %indvars.iv.next279, 16
  br i1 %exitcond281.not, label %for.cond43.preheader.preheader, label %for.body

for.cond43.preheader.preheader:                   ; preds = %for.body
  %arrayidx52.1 = getelementptr inbounds i8, ptr %6, i64 8
  %arrayidx52.2 = getelementptr inbounds i8, ptr %6, i64 16
  %arrayidx52.3 = getelementptr inbounds i8, ptr %6, i64 24
  %arrayidx52.4 = getelementptr inbounds i8, ptr %6, i64 32
  %arrayidx52.5 = getelementptr inbounds i8, ptr %6, i64 40
  %arrayidx52.6 = getelementptr inbounds i8, ptr %6, i64 48
  %arrayidx52.7 = getelementptr inbounds i8, ptr %6, i64 56
  %arrayidx52.8 = getelementptr inbounds i8, ptr %6, i64 64
  %arrayidx52.9 = getelementptr inbounds i8, ptr %6, i64 72
  %arrayidx52.10 = getelementptr inbounds i8, ptr %6, i64 80
  %arrayidx52.11 = getelementptr inbounds i8, ptr %6, i64 88
  %arrayidx52.12 = getelementptr inbounds i8, ptr %6, i64 96
  %arrayidx52.13 = getelementptr inbounds i8, ptr %6, i64 104
  %arrayidx52.14 = getelementptr inbounds i8, ptr %6, i64 112
  %arrayidx52.15 = getelementptr inbounds i8, ptr %6, i64 120
  br label %for.cond43.preheader

for.cond43.preheader:                             ; preds = %for.cond43.preheader.preheader, %for.cond43.preheader
  %indvars.iv286 = phi i64 [ 0, %for.cond43.preheader.preheader ], [ %indvars.iv.next287, %for.cond43.preheader ]
  %arrayidx50 = getelementptr inbounds [16 x [16 x i32]], ptr %temp, i64 0, i64 0, i64 %indvars.iv286
  %42 = load i32, ptr %arrayidx50, align 4
  %43 = load ptr, ptr %6, align 8
  %arrayidx54 = getelementptr inbounds i32, ptr %43, i64 %indvars.iv286
  store i32 %42, ptr %arrayidx54, align 4
  %arrayidx50.1 = getelementptr inbounds [16 x [16 x i32]], ptr %temp, i64 0, i64 1, i64 %indvars.iv286
  %44 = load i32, ptr %arrayidx50.1, align 4
  %45 = load ptr, ptr %arrayidx52.1, align 8
  %arrayidx54.1 = getelementptr inbounds i32, ptr %45, i64 %indvars.iv286
  store i32 %44, ptr %arrayidx54.1, align 4
  %arrayidx50.2 = getelementptr inbounds [16 x [16 x i32]], ptr %temp, i64 0, i64 2, i64 %indvars.iv286
  %46 = load i32, ptr %arrayidx50.2, align 4
  %47 = load ptr, ptr %arrayidx52.2, align 8
  %arrayidx54.2 = getelementptr inbounds i32, ptr %47, i64 %indvars.iv286
  store i32 %46, ptr %arrayidx54.2, align 4
  %arrayidx50.3 = getelementptr inbounds [16 x [16 x i32]], ptr %temp, i64 0, i64 3, i64 %indvars.iv286
  %48 = load i32, ptr %arrayidx50.3, align 4
  %49 = load ptr, ptr %arrayidx52.3, align 8
  %arrayidx54.3 = getelementptr inbounds i32, ptr %49, i64 %indvars.iv286
  store i32 %48, ptr %arrayidx54.3, align 4
  %arrayidx50.4 = getelementptr inbounds [16 x [16 x i32]], ptr %temp, i64 0, i64 4, i64 %indvars.iv286
  %50 = load i32, ptr %arrayidx50.4, align 4
  %51 = load ptr, ptr %arrayidx52.4, align 8
  %arrayidx54.4 = getelementptr inbounds i32, ptr %51, i64 %indvars.iv286
  store i32 %50, ptr %arrayidx54.4, align 4
  %arrayidx50.5 = getelementptr inbounds [16 x [16 x i32]], ptr %temp, i64 0, i64 5, i64 %indvars.iv286
  %52 = load i32, ptr %arrayidx50.5, align 4
  %53 = load ptr, ptr %arrayidx52.5, align 8
  %arrayidx54.5 = getelementptr inbounds i32, ptr %53, i64 %indvars.iv286
  store i32 %52, ptr %arrayidx54.5, align 4
  %arrayidx50.6 = getelementptr inbounds [16 x [16 x i32]], ptr %temp, i64 0, i64 6, i64 %indvars.iv286
  %54 = load i32, ptr %arrayidx50.6, align 4
  %55 = load ptr, ptr %arrayidx52.6, align 8
  %arrayidx54.6 = getelementptr inbounds i32, ptr %55, i64 %indvars.iv286
  store i32 %54, ptr %arrayidx54.6, align 4
  %arrayidx50.7 = getelementptr inbounds [16 x [16 x i32]], ptr %temp, i64 0, i64 7, i64 %indvars.iv286
  %56 = load i32, ptr %arrayidx50.7, align 4
  %57 = load ptr, ptr %arrayidx52.7, align 8
  %arrayidx54.7 = getelementptr inbounds i32, ptr %57, i64 %indvars.iv286
  store i32 %56, ptr %arrayidx54.7, align 4
  %arrayidx50.8 = getelementptr inbounds [16 x [16 x i32]], ptr %temp, i64 0, i64 8, i64 %indvars.iv286
  %58 = load i32, ptr %arrayidx50.8, align 4
  %59 = load ptr, ptr %arrayidx52.8, align 8
  %arrayidx54.8 = getelementptr inbounds i32, ptr %59, i64 %indvars.iv286
  store i32 %58, ptr %arrayidx54.8, align 4
  %arrayidx50.9 = getelementptr inbounds [16 x [16 x i32]], ptr %temp, i64 0, i64 9, i64 %indvars.iv286
  %60 = load i32, ptr %arrayidx50.9, align 4
  %61 = load ptr, ptr %arrayidx52.9, align 8
  %arrayidx54.9 = getelementptr inbounds i32, ptr %61, i64 %indvars.iv286
  store i32 %60, ptr %arrayidx54.9, align 4
  %arrayidx50.10 = getelementptr inbounds [16 x [16 x i32]], ptr %temp, i64 0, i64 10, i64 %indvars.iv286
  %62 = load i32, ptr %arrayidx50.10, align 4
  %63 = load ptr, ptr %arrayidx52.10, align 8
  %arrayidx54.10 = getelementptr inbounds i32, ptr %63, i64 %indvars.iv286
  store i32 %62, ptr %arrayidx54.10, align 4
  %arrayidx50.11 = getelementptr inbounds [16 x [16 x i32]], ptr %temp, i64 0, i64 11, i64 %indvars.iv286
  %64 = load i32, ptr %arrayidx50.11, align 4
  %65 = load ptr, ptr %arrayidx52.11, align 8
  %arrayidx54.11 = getelementptr inbounds i32, ptr %65, i64 %indvars.iv286
  store i32 %64, ptr %arrayidx54.11, align 4
  %arrayidx50.12 = getelementptr inbounds [16 x [16 x i32]], ptr %temp, i64 0, i64 12, i64 %indvars.iv286
  %66 = load i32, ptr %arrayidx50.12, align 4
  %67 = load ptr, ptr %arrayidx52.12, align 8
  %arrayidx54.12 = getelementptr inbounds i32, ptr %67, i64 %indvars.iv286
  store i32 %66, ptr %arrayidx54.12, align 4
  %arrayidx50.13 = getelementptr inbounds [16 x [16 x i32]], ptr %temp, i64 0, i64 13, i64 %indvars.iv286
  %68 = load i32, ptr %arrayidx50.13, align 4
  %69 = load ptr, ptr %arrayidx52.13, align 8
  %arrayidx54.13 = getelementptr inbounds i32, ptr %69, i64 %indvars.iv286
  store i32 %68, ptr %arrayidx54.13, align 4
  %arrayidx50.14 = getelementptr inbounds [16 x [16 x i32]], ptr %temp, i64 0, i64 14, i64 %indvars.iv286
  %70 = load i32, ptr %arrayidx50.14, align 4
  %71 = load ptr, ptr %arrayidx52.14, align 8
  %arrayidx54.14 = getelementptr inbounds i32, ptr %71, i64 %indvars.iv286
  store i32 %70, ptr %arrayidx54.14, align 4
  %arrayidx50.15 = getelementptr inbounds [16 x [16 x i32]], ptr %temp, i64 0, i64 15, i64 %indvars.iv286
  %72 = load i32, ptr %arrayidx50.15, align 4
  %73 = load ptr, ptr %arrayidx52.15, align 8
  %arrayidx54.15 = getelementptr inbounds i32, ptr %73, i64 %indvars.iv286
  store i32 %72, ptr %arrayidx54.15, align 4
  %indvars.iv.next287 = add nuw nsw i64 %indvars.iv286, 1
  %exitcond289.not = icmp eq i64 %indvars.iv.next287, 16
  br i1 %exitcond289.not, label %for.cond150.preheader.preheader, label %for.cond43.preheader

for.body69:                                       ; preds = %entry, %for.body69
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body69 ], [ 0, %entry ]
  %arrayidx71 = getelementptr inbounds ptr, ptr %8, i64 %indvars.iv
  %74 = load ptr, ptr %arrayidx71, align 8
  %75 = load i32, ptr %74, align 4
  %arrayidx74 = getelementptr inbounds [16 x [16 x i32]], ptr %temp, i64 0, i64 %indvars.iv
  store i32 %75, ptr %arrayidx74, align 16
  %arrayidx83 = getelementptr inbounds i8, ptr %74, i64 4
  %76 = load i32, ptr %arrayidx83, align 4
  %add89 = add nsw i32 %75, %76
  %arrayidx93 = getelementptr inbounds [16 x [16 x i32]], ptr %temp, i64 0, i64 %indvars.iv, i64 1
  store i32 %add89, ptr %arrayidx93, align 4
  %arrayidx83.1 = getelementptr inbounds i8, ptr %74, i64 8
  %77 = load i32, ptr %arrayidx83.1, align 4
  %add89.1 = add nsw i32 %add89, %77
  %arrayidx93.1 = getelementptr inbounds [16 x [16 x i32]], ptr %temp, i64 0, i64 %indvars.iv, i64 2
  store i32 %add89.1, ptr %arrayidx93.1, align 8
  %arrayidx83.2 = getelementptr inbounds i8, ptr %74, i64 12
  %78 = load i32, ptr %arrayidx83.2, align 4
  %add89.2 = add nsw i32 %add89.1, %78
  %arrayidx93.2 = getelementptr inbounds [16 x [16 x i32]], ptr %temp, i64 0, i64 %indvars.iv, i64 3
  store i32 %add89.2, ptr %arrayidx93.2, align 4
  %arrayidx83.3 = getelementptr inbounds i8, ptr %74, i64 16
  %79 = load i32, ptr %arrayidx83.3, align 4
  %add89.3 = add nsw i32 %add89.2, %79
  %arrayidx93.3 = getelementptr inbounds [16 x [16 x i32]], ptr %temp, i64 0, i64 %indvars.iv, i64 4
  store i32 %add89.3, ptr %arrayidx93.3, align 16
  %arrayidx83.4 = getelementptr inbounds i8, ptr %74, i64 20
  %80 = load i32, ptr %arrayidx83.4, align 4
  %add89.4 = add nsw i32 %add89.3, %80
  %arrayidx93.4 = getelementptr inbounds [16 x [16 x i32]], ptr %temp, i64 0, i64 %indvars.iv, i64 5
  store i32 %add89.4, ptr %arrayidx93.4, align 4
  %arrayidx83.5 = getelementptr inbounds i8, ptr %74, i64 24
  %81 = load i32, ptr %arrayidx83.5, align 4
  %add89.5 = add nsw i32 %add89.4, %81
  %arrayidx93.5 = getelementptr inbounds [16 x [16 x i32]], ptr %temp, i64 0, i64 %indvars.iv, i64 6
  store i32 %add89.5, ptr %arrayidx93.5, align 8
  %arrayidx83.6 = getelementptr inbounds i8, ptr %74, i64 28
  %82 = load i32, ptr %arrayidx83.6, align 4
  %add89.6 = add nsw i32 %add89.5, %82
  %arrayidx93.6 = getelementptr inbounds [16 x [16 x i32]], ptr %temp, i64 0, i64 %indvars.iv, i64 7
  store i32 %add89.6, ptr %arrayidx93.6, align 4
  %arrayidx83.7 = getelementptr inbounds i8, ptr %74, i64 32
  %83 = load i32, ptr %arrayidx83.7, align 4
  %add89.7 = add nsw i32 %add89.6, %83
  %arrayidx93.7 = getelementptr inbounds [16 x [16 x i32]], ptr %temp, i64 0, i64 %indvars.iv, i64 8
  store i32 %add89.7, ptr %arrayidx93.7, align 16
  %arrayidx83.8 = getelementptr inbounds i8, ptr %74, i64 36
  %84 = load i32, ptr %arrayidx83.8, align 4
  %add89.8 = add nsw i32 %add89.7, %84
  %arrayidx93.8 = getelementptr inbounds [16 x [16 x i32]], ptr %temp, i64 0, i64 %indvars.iv, i64 9
  store i32 %add89.8, ptr %arrayidx93.8, align 4
  %arrayidx83.9 = getelementptr inbounds i8, ptr %74, i64 40
  %85 = load i32, ptr %arrayidx83.9, align 4
  %add89.9 = add nsw i32 %add89.8, %85
  %arrayidx93.9 = getelementptr inbounds [16 x [16 x i32]], ptr %temp, i64 0, i64 %indvars.iv, i64 10
  store i32 %add89.9, ptr %arrayidx93.9, align 8
  %arrayidx83.10 = getelementptr inbounds i8, ptr %74, i64 44
  %86 = load i32, ptr %arrayidx83.10, align 4
  %add89.10 = add nsw i32 %add89.9, %86
  %arrayidx93.10 = getelementptr inbounds [16 x [16 x i32]], ptr %temp, i64 0, i64 %indvars.iv, i64 11
  store i32 %add89.10, ptr %arrayidx93.10, align 4
  %arrayidx83.11 = getelementptr inbounds i8, ptr %74, i64 48
  %87 = load i32, ptr %arrayidx83.11, align 4
  %add89.11 = add nsw i32 %add89.10, %87
  %arrayidx93.11 = getelementptr inbounds [16 x [16 x i32]], ptr %temp, i64 0, i64 %indvars.iv, i64 12
  store i32 %add89.11, ptr %arrayidx93.11, align 16
  %arrayidx83.12 = getelementptr inbounds i8, ptr %74, i64 52
  %88 = load i32, ptr %arrayidx83.12, align 4
  %add89.12 = add nsw i32 %add89.11, %88
  %arrayidx93.12 = getelementptr inbounds [16 x [16 x i32]], ptr %temp, i64 0, i64 %indvars.iv, i64 13
  store i32 %add89.12, ptr %arrayidx93.12, align 4
  %arrayidx83.13 = getelementptr inbounds i8, ptr %74, i64 56
  %89 = load i32, ptr %arrayidx83.13, align 4
  %add89.13 = add nsw i32 %add89.12, %89
  %arrayidx93.13 = getelementptr inbounds [16 x [16 x i32]], ptr %temp, i64 0, i64 %indvars.iv, i64 14
  store i32 %add89.13, ptr %arrayidx93.13, align 8
  %arrayidx83.14 = getelementptr inbounds i8, ptr %74, i64 60
  %90 = load i32, ptr %arrayidx83.14, align 4
  %add89.14 = add nsw i32 %add89.13, %90
  %arrayidx93.14 = getelementptr inbounds [16 x [16 x i32]], ptr %temp, i64 0, i64 %indvars.iv, i64 15
  store i32 %add89.14, ptr %arrayidx93.14, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %for.cond104.preheader, label %for.body69

for.cond104.preheader:                            ; preds = %for.body69, %for.cond104.preheader
  %indvars.iv269 = phi i64 [ %indvars.iv.next270, %for.cond104.preheader ], [ 0, %for.body69 ]
  %arrayidx113 = getelementptr inbounds ptr, ptr %6, i64 %indvars.iv269
  %arrayidx111 = getelementptr inbounds [16 x [16 x i32]], ptr %temp, i64 0, i64 %indvars.iv269, i64 0
  %91 = load i32, ptr %arrayidx111, align 16
  %92 = load ptr, ptr %arrayidx113, align 8
  store i32 %91, ptr %92, align 4
  %arrayidx111.1 = getelementptr inbounds [16 x [16 x i32]], ptr %temp, i64 0, i64 %indvars.iv269, i64 1
  %93 = load i32, ptr %arrayidx111.1, align 4
  %94 = load ptr, ptr %arrayidx113, align 8
  %arrayidx115.1 = getelementptr inbounds i8, ptr %94, i64 4
  store i32 %93, ptr %arrayidx115.1, align 4
  %arrayidx111.2 = getelementptr inbounds [16 x [16 x i32]], ptr %temp, i64 0, i64 %indvars.iv269, i64 2
  %95 = load i32, ptr %arrayidx111.2, align 8
  %96 = load ptr, ptr %arrayidx113, align 8
  %arrayidx115.2 = getelementptr inbounds i8, ptr %96, i64 8
  store i32 %95, ptr %arrayidx115.2, align 4
  %arrayidx111.3 = getelementptr inbounds [16 x [16 x i32]], ptr %temp, i64 0, i64 %indvars.iv269, i64 3
  %97 = load i32, ptr %arrayidx111.3, align 4
  %98 = load ptr, ptr %arrayidx113, align 8
  %arrayidx115.3 = getelementptr inbounds i8, ptr %98, i64 12
  store i32 %97, ptr %arrayidx115.3, align 4
  %arrayidx111.4 = getelementptr inbounds [16 x [16 x i32]], ptr %temp, i64 0, i64 %indvars.iv269, i64 4
  %99 = load i32, ptr %arrayidx111.4, align 16
  %100 = load ptr, ptr %arrayidx113, align 8
  %arrayidx115.4 = getelementptr inbounds i8, ptr %100, i64 16
  store i32 %99, ptr %arrayidx115.4, align 4
  %arrayidx111.5 = getelementptr inbounds [16 x [16 x i32]], ptr %temp, i64 0, i64 %indvars.iv269, i64 5
  %101 = load i32, ptr %arrayidx111.5, align 4
  %102 = load ptr, ptr %arrayidx113, align 8
  %arrayidx115.5 = getelementptr inbounds i8, ptr %102, i64 20
  store i32 %101, ptr %arrayidx115.5, align 4
  %arrayidx111.6 = getelementptr inbounds [16 x [16 x i32]], ptr %temp, i64 0, i64 %indvars.iv269, i64 6
  %103 = load i32, ptr %arrayidx111.6, align 8
  %104 = load ptr, ptr %arrayidx113, align 8
  %arrayidx115.6 = getelementptr inbounds i8, ptr %104, i64 24
  store i32 %103, ptr %arrayidx115.6, align 4
  %arrayidx111.7 = getelementptr inbounds [16 x [16 x i32]], ptr %temp, i64 0, i64 %indvars.iv269, i64 7
  %105 = load i32, ptr %arrayidx111.7, align 4
  %106 = load ptr, ptr %arrayidx113, align 8
  %arrayidx115.7 = getelementptr inbounds i8, ptr %106, i64 28
  store i32 %105, ptr %arrayidx115.7, align 4
  %arrayidx111.8 = getelementptr inbounds [16 x [16 x i32]], ptr %temp, i64 0, i64 %indvars.iv269, i64 8
  %107 = load i32, ptr %arrayidx111.8, align 16
  %108 = load ptr, ptr %arrayidx113, align 8
  %arrayidx115.8 = getelementptr inbounds i8, ptr %108, i64 32
  store i32 %107, ptr %arrayidx115.8, align 4
  %arrayidx111.9 = getelementptr inbounds [16 x [16 x i32]], ptr %temp, i64 0, i64 %indvars.iv269, i64 9
  %109 = load i32, ptr %arrayidx111.9, align 4
  %110 = load ptr, ptr %arrayidx113, align 8
  %arrayidx115.9 = getelementptr inbounds i8, ptr %110, i64 36
  store i32 %109, ptr %arrayidx115.9, align 4
  %arrayidx111.10 = getelementptr inbounds [16 x [16 x i32]], ptr %temp, i64 0, i64 %indvars.iv269, i64 10
  %111 = load i32, ptr %arrayidx111.10, align 8
  %112 = load ptr, ptr %arrayidx113, align 8
  %arrayidx115.10 = getelementptr inbounds i8, ptr %112, i64 40
  store i32 %111, ptr %arrayidx115.10, align 4
  %arrayidx111.11 = getelementptr inbounds [16 x [16 x i32]], ptr %temp, i64 0, i64 %indvars.iv269, i64 11
  %113 = load i32, ptr %arrayidx111.11, align 4
  %114 = load ptr, ptr %arrayidx113, align 8
  %arrayidx115.11 = getelementptr inbounds i8, ptr %114, i64 44
  store i32 %113, ptr %arrayidx115.11, align 4
  %arrayidx111.12 = getelementptr inbounds [16 x [16 x i32]], ptr %temp, i64 0, i64 %indvars.iv269, i64 12
  %115 = load i32, ptr %arrayidx111.12, align 16
  %116 = load ptr, ptr %arrayidx113, align 8
  %arrayidx115.12 = getelementptr inbounds i8, ptr %116, i64 48
  store i32 %115, ptr %arrayidx115.12, align 4
  %arrayidx111.13 = getelementptr inbounds [16 x [16 x i32]], ptr %temp, i64 0, i64 %indvars.iv269, i64 13
  %117 = load i32, ptr %arrayidx111.13, align 4
  %118 = load ptr, ptr %arrayidx113, align 8
  %arrayidx115.13 = getelementptr inbounds i8, ptr %118, i64 52
  store i32 %117, ptr %arrayidx115.13, align 4
  %arrayidx111.14 = getelementptr inbounds [16 x [16 x i32]], ptr %temp, i64 0, i64 %indvars.iv269, i64 14
  %119 = load i32, ptr %arrayidx111.14, align 8
  %120 = load ptr, ptr %arrayidx113, align 8
  %arrayidx115.14 = getelementptr inbounds i8, ptr %120, i64 56
  store i32 %119, ptr %arrayidx115.14, align 4
  %arrayidx111.15 = getelementptr inbounds [16 x [16 x i32]], ptr %temp, i64 0, i64 %indvars.iv269, i64 15
  %121 = load i32, ptr %arrayidx111.15, align 4
  %122 = load ptr, ptr %arrayidx113, align 8
  %arrayidx115.15 = getelementptr inbounds i8, ptr %122, i64 60
  store i32 %121, ptr %arrayidx115.15, align 4
  %indvars.iv.next270 = add nuw nsw i64 %indvars.iv269, 1
  %exitcond272.not = icmp eq i64 %indvars.iv.next270, 16
  br i1 %exitcond272.not, label %for.cond150.preheader.preheader, label %for.cond104.preheader

for.cond127.preheader:                            ; preds = %entry, %for.cond127.preheader
  %indvars.iv294 = phi i64 [ %indvars.iv.next295, %for.cond127.preheader ], [ 0, %entry ]
  %arrayidx132 = getelementptr inbounds ptr, ptr %8, i64 %indvars.iv294
  %arrayidx136 = getelementptr inbounds ptr, ptr %6, i64 %indvars.iv294
  %123 = load ptr, ptr %arrayidx132, align 8
  %124 = load i32, ptr %123, align 4
  %125 = load ptr, ptr %arrayidx136, align 8
  store i32 %124, ptr %125, align 4
  %126 = load ptr, ptr %arrayidx132, align 8
  %arrayidx134.1 = getelementptr inbounds i8, ptr %126, i64 4
  %127 = load i32, ptr %arrayidx134.1, align 4
  %128 = load ptr, ptr %arrayidx136, align 8
  %arrayidx138.1 = getelementptr inbounds i8, ptr %128, i64 4
  store i32 %127, ptr %arrayidx138.1, align 4
  %129 = load ptr, ptr %arrayidx132, align 8
  %arrayidx134.2 = getelementptr inbounds i8, ptr %129, i64 8
  %130 = load i32, ptr %arrayidx134.2, align 4
  %131 = load ptr, ptr %arrayidx136, align 8
  %arrayidx138.2 = getelementptr inbounds i8, ptr %131, i64 8
  store i32 %130, ptr %arrayidx138.2, align 4
  %132 = load ptr, ptr %arrayidx132, align 8
  %arrayidx134.3 = getelementptr inbounds i8, ptr %132, i64 12
  %133 = load i32, ptr %arrayidx134.3, align 4
  %134 = load ptr, ptr %arrayidx136, align 8
  %arrayidx138.3 = getelementptr inbounds i8, ptr %134, i64 12
  store i32 %133, ptr %arrayidx138.3, align 4
  %135 = load ptr, ptr %arrayidx132, align 8
  %arrayidx134.4 = getelementptr inbounds i8, ptr %135, i64 16
  %136 = load i32, ptr %arrayidx134.4, align 4
  %137 = load ptr, ptr %arrayidx136, align 8
  %arrayidx138.4 = getelementptr inbounds i8, ptr %137, i64 16
  store i32 %136, ptr %arrayidx138.4, align 4
  %138 = load ptr, ptr %arrayidx132, align 8
  %arrayidx134.5 = getelementptr inbounds i8, ptr %138, i64 20
  %139 = load i32, ptr %arrayidx134.5, align 4
  %140 = load ptr, ptr %arrayidx136, align 8
  %arrayidx138.5 = getelementptr inbounds i8, ptr %140, i64 20
  store i32 %139, ptr %arrayidx138.5, align 4
  %141 = load ptr, ptr %arrayidx132, align 8
  %arrayidx134.6 = getelementptr inbounds i8, ptr %141, i64 24
  %142 = load i32, ptr %arrayidx134.6, align 4
  %143 = load ptr, ptr %arrayidx136, align 8
  %arrayidx138.6 = getelementptr inbounds i8, ptr %143, i64 24
  store i32 %142, ptr %arrayidx138.6, align 4
  %144 = load ptr, ptr %arrayidx132, align 8
  %arrayidx134.7 = getelementptr inbounds i8, ptr %144, i64 28
  %145 = load i32, ptr %arrayidx134.7, align 4
  %146 = load ptr, ptr %arrayidx136, align 8
  %arrayidx138.7 = getelementptr inbounds i8, ptr %146, i64 28
  store i32 %145, ptr %arrayidx138.7, align 4
  %147 = load ptr, ptr %arrayidx132, align 8
  %arrayidx134.8 = getelementptr inbounds i8, ptr %147, i64 32
  %148 = load i32, ptr %arrayidx134.8, align 4
  %149 = load ptr, ptr %arrayidx136, align 8
  %arrayidx138.8 = getelementptr inbounds i8, ptr %149, i64 32
  store i32 %148, ptr %arrayidx138.8, align 4
  %150 = load ptr, ptr %arrayidx132, align 8
  %arrayidx134.9 = getelementptr inbounds i8, ptr %150, i64 36
  %151 = load i32, ptr %arrayidx134.9, align 4
  %152 = load ptr, ptr %arrayidx136, align 8
  %arrayidx138.9 = getelementptr inbounds i8, ptr %152, i64 36
  store i32 %151, ptr %arrayidx138.9, align 4
  %153 = load ptr, ptr %arrayidx132, align 8
  %arrayidx134.10 = getelementptr inbounds i8, ptr %153, i64 40
  %154 = load i32, ptr %arrayidx134.10, align 4
  %155 = load ptr, ptr %arrayidx136, align 8
  %arrayidx138.10 = getelementptr inbounds i8, ptr %155, i64 40
  store i32 %154, ptr %arrayidx138.10, align 4
  %156 = load ptr, ptr %arrayidx132, align 8
  %arrayidx134.11 = getelementptr inbounds i8, ptr %156, i64 44
  %157 = load i32, ptr %arrayidx134.11, align 4
  %158 = load ptr, ptr %arrayidx136, align 8
  %arrayidx138.11 = getelementptr inbounds i8, ptr %158, i64 44
  store i32 %157, ptr %arrayidx138.11, align 4
  %159 = load ptr, ptr %arrayidx132, align 8
  %arrayidx134.12 = getelementptr inbounds i8, ptr %159, i64 48
  %160 = load i32, ptr %arrayidx134.12, align 4
  %161 = load ptr, ptr %arrayidx136, align 8
  %arrayidx138.12 = getelementptr inbounds i8, ptr %161, i64 48
  store i32 %160, ptr %arrayidx138.12, align 4
  %162 = load ptr, ptr %arrayidx132, align 8
  %arrayidx134.13 = getelementptr inbounds i8, ptr %162, i64 52
  %163 = load i32, ptr %arrayidx134.13, align 4
  %164 = load ptr, ptr %arrayidx136, align 8
  %arrayidx138.13 = getelementptr inbounds i8, ptr %164, i64 52
  store i32 %163, ptr %arrayidx138.13, align 4
  %165 = load ptr, ptr %arrayidx132, align 8
  %arrayidx134.14 = getelementptr inbounds i8, ptr %165, i64 56
  %166 = load i32, ptr %arrayidx134.14, align 4
  %167 = load ptr, ptr %arrayidx136, align 8
  %arrayidx138.14 = getelementptr inbounds i8, ptr %167, i64 56
  store i32 %166, ptr %arrayidx138.14, align 4
  %168 = load ptr, ptr %arrayidx132, align 8
  %arrayidx134.15 = getelementptr inbounds i8, ptr %168, i64 60
  %169 = load i32, ptr %arrayidx134.15, align 4
  %170 = load ptr, ptr %arrayidx136, align 8
  %arrayidx138.15 = getelementptr inbounds i8, ptr %170, i64 60
  store i32 %169, ptr %arrayidx138.15, align 4
  %indvars.iv.next295 = add nuw nsw i64 %indvars.iv294, 1
  %exitcond297.not = icmp eq i64 %indvars.iv.next295, 16
  br i1 %exitcond297.not, label %for.cond150.preheader.preheader, label %for.cond127.preheader

for.cond150.preheader.preheader:                  ; preds = %for.cond104.preheader, %for.cond43.preheader, %for.cond127.preheader
  br label %for.cond150.preheader

for.cond150.preheader:                            ; preds = %for.cond150.preheader.preheader, %for.cond150.preheader
  %indvars.iv302 = phi i64 [ %indvars.iv.next303, %for.cond150.preheader ], [ 0, %for.cond150.preheader.preheader ]
  %arrayidx155 = getelementptr inbounds ptr, ptr %6, i64 %indvars.iv302
  %arrayidx159 = getelementptr inbounds ptr, ptr %2, i64 %indvars.iv302
  %arrayidx166 = getelementptr inbounds ptr, ptr %4, i64 %indvars.iv302
  %171 = load ptr, ptr %arrayidx155, align 8
  %172 = load i32, ptr %171, align 4
  %173 = load ptr, ptr %arrayidx159, align 8
  %174 = load i16, ptr %173, align 2
  %175 = trunc i32 %172 to i16
  %conv164 = add i16 %174, %175
  %176 = load ptr, ptr %arrayidx166, align 8
  store i16 %conv164, ptr %176, align 2
  %177 = load ptr, ptr %arrayidx155, align 8
  %arrayidx157.1 = getelementptr inbounds i8, ptr %177, i64 4
  %178 = load i32, ptr %arrayidx157.1, align 4
  %179 = load ptr, ptr %arrayidx159, align 8
  %arrayidx161.1 = getelementptr inbounds i8, ptr %179, i64 2
  %180 = load i16, ptr %arrayidx161.1, align 2
  %181 = trunc i32 %178 to i16
  %conv164.1 = add i16 %180, %181
  %182 = load ptr, ptr %arrayidx166, align 8
  %arrayidx168.1 = getelementptr inbounds i8, ptr %182, i64 2
  store i16 %conv164.1, ptr %arrayidx168.1, align 2
  %183 = load ptr, ptr %arrayidx155, align 8
  %arrayidx157.2 = getelementptr inbounds i8, ptr %183, i64 8
  %184 = load i32, ptr %arrayidx157.2, align 4
  %185 = load ptr, ptr %arrayidx159, align 8
  %arrayidx161.2 = getelementptr inbounds i8, ptr %185, i64 4
  %186 = load i16, ptr %arrayidx161.2, align 2
  %187 = trunc i32 %184 to i16
  %conv164.2 = add i16 %186, %187
  %188 = load ptr, ptr %arrayidx166, align 8
  %arrayidx168.2 = getelementptr inbounds i8, ptr %188, i64 4
  store i16 %conv164.2, ptr %arrayidx168.2, align 2
  %189 = load ptr, ptr %arrayidx155, align 8
  %arrayidx157.3 = getelementptr inbounds i8, ptr %189, i64 12
  %190 = load i32, ptr %arrayidx157.3, align 4
  %191 = load ptr, ptr %arrayidx159, align 8
  %arrayidx161.3 = getelementptr inbounds i8, ptr %191, i64 6
  %192 = load i16, ptr %arrayidx161.3, align 2
  %193 = trunc i32 %190 to i16
  %conv164.3 = add i16 %192, %193
  %194 = load ptr, ptr %arrayidx166, align 8
  %arrayidx168.3 = getelementptr inbounds i8, ptr %194, i64 6
  store i16 %conv164.3, ptr %arrayidx168.3, align 2
  %195 = load ptr, ptr %arrayidx155, align 8
  %arrayidx157.4 = getelementptr inbounds i8, ptr %195, i64 16
  %196 = load i32, ptr %arrayidx157.4, align 4
  %197 = load ptr, ptr %arrayidx159, align 8
  %arrayidx161.4 = getelementptr inbounds i8, ptr %197, i64 8
  %198 = load i16, ptr %arrayidx161.4, align 2
  %199 = trunc i32 %196 to i16
  %conv164.4 = add i16 %198, %199
  %200 = load ptr, ptr %arrayidx166, align 8
  %arrayidx168.4 = getelementptr inbounds i8, ptr %200, i64 8
  store i16 %conv164.4, ptr %arrayidx168.4, align 2
  %201 = load ptr, ptr %arrayidx155, align 8
  %arrayidx157.5 = getelementptr inbounds i8, ptr %201, i64 20
  %202 = load i32, ptr %arrayidx157.5, align 4
  %203 = load ptr, ptr %arrayidx159, align 8
  %arrayidx161.5 = getelementptr inbounds i8, ptr %203, i64 10
  %204 = load i16, ptr %arrayidx161.5, align 2
  %205 = trunc i32 %202 to i16
  %conv164.5 = add i16 %204, %205
  %206 = load ptr, ptr %arrayidx166, align 8
  %arrayidx168.5 = getelementptr inbounds i8, ptr %206, i64 10
  store i16 %conv164.5, ptr %arrayidx168.5, align 2
  %207 = load ptr, ptr %arrayidx155, align 8
  %arrayidx157.6 = getelementptr inbounds i8, ptr %207, i64 24
  %208 = load i32, ptr %arrayidx157.6, align 4
  %209 = load ptr, ptr %arrayidx159, align 8
  %arrayidx161.6 = getelementptr inbounds i8, ptr %209, i64 12
  %210 = load i16, ptr %arrayidx161.6, align 2
  %211 = trunc i32 %208 to i16
  %conv164.6 = add i16 %210, %211
  %212 = load ptr, ptr %arrayidx166, align 8
  %arrayidx168.6 = getelementptr inbounds i8, ptr %212, i64 12
  store i16 %conv164.6, ptr %arrayidx168.6, align 2
  %213 = load ptr, ptr %arrayidx155, align 8
  %arrayidx157.7 = getelementptr inbounds i8, ptr %213, i64 28
  %214 = load i32, ptr %arrayidx157.7, align 4
  %215 = load ptr, ptr %arrayidx159, align 8
  %arrayidx161.7 = getelementptr inbounds i8, ptr %215, i64 14
  %216 = load i16, ptr %arrayidx161.7, align 2
  %217 = trunc i32 %214 to i16
  %conv164.7 = add i16 %216, %217
  %218 = load ptr, ptr %arrayidx166, align 8
  %arrayidx168.7 = getelementptr inbounds i8, ptr %218, i64 14
  store i16 %conv164.7, ptr %arrayidx168.7, align 2
  %219 = load ptr, ptr %arrayidx155, align 8
  %arrayidx157.8 = getelementptr inbounds i8, ptr %219, i64 32
  %220 = load i32, ptr %arrayidx157.8, align 4
  %221 = load ptr, ptr %arrayidx159, align 8
  %arrayidx161.8 = getelementptr inbounds i8, ptr %221, i64 16
  %222 = load i16, ptr %arrayidx161.8, align 2
  %223 = trunc i32 %220 to i16
  %conv164.8 = add i16 %222, %223
  %224 = load ptr, ptr %arrayidx166, align 8
  %arrayidx168.8 = getelementptr inbounds i8, ptr %224, i64 16
  store i16 %conv164.8, ptr %arrayidx168.8, align 2
  %225 = load ptr, ptr %arrayidx155, align 8
  %arrayidx157.9 = getelementptr inbounds i8, ptr %225, i64 36
  %226 = load i32, ptr %arrayidx157.9, align 4
  %227 = load ptr, ptr %arrayidx159, align 8
  %arrayidx161.9 = getelementptr inbounds i8, ptr %227, i64 18
  %228 = load i16, ptr %arrayidx161.9, align 2
  %229 = trunc i32 %226 to i16
  %conv164.9 = add i16 %228, %229
  %230 = load ptr, ptr %arrayidx166, align 8
  %arrayidx168.9 = getelementptr inbounds i8, ptr %230, i64 18
  store i16 %conv164.9, ptr %arrayidx168.9, align 2
  %231 = load ptr, ptr %arrayidx155, align 8
  %arrayidx157.10 = getelementptr inbounds i8, ptr %231, i64 40
  %232 = load i32, ptr %arrayidx157.10, align 4
  %233 = load ptr, ptr %arrayidx159, align 8
  %arrayidx161.10 = getelementptr inbounds i8, ptr %233, i64 20
  %234 = load i16, ptr %arrayidx161.10, align 2
  %235 = trunc i32 %232 to i16
  %conv164.10 = add i16 %234, %235
  %236 = load ptr, ptr %arrayidx166, align 8
  %arrayidx168.10 = getelementptr inbounds i8, ptr %236, i64 20
  store i16 %conv164.10, ptr %arrayidx168.10, align 2
  %237 = load ptr, ptr %arrayidx155, align 8
  %arrayidx157.11 = getelementptr inbounds i8, ptr %237, i64 44
  %238 = load i32, ptr %arrayidx157.11, align 4
  %239 = load ptr, ptr %arrayidx159, align 8
  %arrayidx161.11 = getelementptr inbounds i8, ptr %239, i64 22
  %240 = load i16, ptr %arrayidx161.11, align 2
  %241 = trunc i32 %238 to i16
  %conv164.11 = add i16 %240, %241
  %242 = load ptr, ptr %arrayidx166, align 8
  %arrayidx168.11 = getelementptr inbounds i8, ptr %242, i64 22
  store i16 %conv164.11, ptr %arrayidx168.11, align 2
  %243 = load ptr, ptr %arrayidx155, align 8
  %arrayidx157.12 = getelementptr inbounds i8, ptr %243, i64 48
  %244 = load i32, ptr %arrayidx157.12, align 4
  %245 = load ptr, ptr %arrayidx159, align 8
  %arrayidx161.12 = getelementptr inbounds i8, ptr %245, i64 24
  %246 = load i16, ptr %arrayidx161.12, align 2
  %247 = trunc i32 %244 to i16
  %conv164.12 = add i16 %246, %247
  %248 = load ptr, ptr %arrayidx166, align 8
  %arrayidx168.12 = getelementptr inbounds i8, ptr %248, i64 24
  store i16 %conv164.12, ptr %arrayidx168.12, align 2
  %249 = load ptr, ptr %arrayidx155, align 8
  %arrayidx157.13 = getelementptr inbounds i8, ptr %249, i64 52
  %250 = load i32, ptr %arrayidx157.13, align 4
  %251 = load ptr, ptr %arrayidx159, align 8
  %arrayidx161.13 = getelementptr inbounds i8, ptr %251, i64 26
  %252 = load i16, ptr %arrayidx161.13, align 2
  %253 = trunc i32 %250 to i16
  %conv164.13 = add i16 %252, %253
  %254 = load ptr, ptr %arrayidx166, align 8
  %arrayidx168.13 = getelementptr inbounds i8, ptr %254, i64 26
  store i16 %conv164.13, ptr %arrayidx168.13, align 2
  %255 = load ptr, ptr %arrayidx155, align 8
  %arrayidx157.14 = getelementptr inbounds i8, ptr %255, i64 56
  %256 = load i32, ptr %arrayidx157.14, align 4
  %257 = load ptr, ptr %arrayidx159, align 8
  %arrayidx161.14 = getelementptr inbounds i8, ptr %257, i64 28
  %258 = load i16, ptr %arrayidx161.14, align 2
  %259 = trunc i32 %256 to i16
  %conv164.14 = add i16 %258, %259
  %260 = load ptr, ptr %arrayidx166, align 8
  %arrayidx168.14 = getelementptr inbounds i8, ptr %260, i64 28
  store i16 %conv164.14, ptr %arrayidx168.14, align 2
  %261 = load ptr, ptr %arrayidx155, align 8
  %arrayidx157.15 = getelementptr inbounds i8, ptr %261, i64 60
  %262 = load i32, ptr %arrayidx157.15, align 4
  %263 = load ptr, ptr %arrayidx159, align 8
  %arrayidx161.15 = getelementptr inbounds i8, ptr %263, i64 30
  %264 = load i16, ptr %arrayidx161.15, align 2
  %265 = trunc i32 %262 to i16
  %conv164.15 = add i16 %264, %265
  %266 = load ptr, ptr %arrayidx166, align 8
  %arrayidx168.15 = getelementptr inbounds i8, ptr %266, i64 30
  store i16 %conv164.15, ptr %arrayidx168.15, align 2
  %indvars.iv.next303 = add nuw nsw i64 %indvars.iv302, 1
  %exitcond305.not = icmp eq i64 %indvars.iv.next303, 16
  br i1 %exitcond305.not, label %for.end174, label %for.cond150.preheader

for.end174:                                       ; preds = %for.cond150.preheader
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %temp) #8
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Inv_Residual_trans_Chroma(ptr nocapture noundef readonly %currMB, i32 noundef %uv) local_unnamed_addr #4 {
entry:
  %temp = alloca [16 x [16 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %temp) #8
  %0 = load ptr, ptr %currMB, align 8
  %mb_rres1 = getelementptr inbounds i8, ptr %0, i64 1264
  %1 = load ptr, ptr %mb_rres1, align 8
  %add = add nsw i32 %uv, 1
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 %idxprom
  %2 = load ptr, ptr %arrayidx, align 8
  %cof2 = getelementptr inbounds i8, ptr %0, i64 1272
  %3 = load ptr, ptr %cof2, align 8
  %arrayidx5 = getelementptr inbounds ptr, ptr %3, i64 %idxprom
  %4 = load ptr, ptr %arrayidx5, align 8
  %p_Vid = getelementptr inbounds i8, ptr %currMB, i64 8
  %5 = load ptr, ptr %p_Vid, align 8
  %mb_cr_size_x = getelementptr inbounds i8, ptr %5, i64 849108
  %6 = load i32, ptr %mb_cr_size_x, align 4
  %mb_cr_size_y = getelementptr inbounds i8, ptr %5, i64 849112
  %7 = load i32, ptr %mb_cr_size_y, align 8
  %c_ipred_mode = getelementptr inbounds i8, ptr %currMB, i64 373
  %8 = load i8, ptr %c_ipred_mode, align 1
  %cmp = icmp eq i8 %8, 2
  br i1 %cmp, label %for.cond.preheader, label %for.cond58.preheader

for.cond58.preheader:                             ; preds = %entry
  %cmp59171 = icmp sgt i32 %7, 0
  br i1 %cmp59171, label %for.body61.lr.ph, label %if.end

for.body61.lr.ph:                                 ; preds = %for.cond58.preheader
  %cmp69169 = icmp sgt i32 %6, 1
  %wide.trip.count200 = zext nneg i32 %7 to i64
  br i1 %cmp69169, label %for.body61.us.preheader, label %for.body61.preheader

for.body61.preheader:                             ; preds = %for.body61.lr.ph
  %min.iters.check = icmp ult i32 %7, 4
  br i1 %min.iters.check, label %for.body61.preheader244, label %vector.ph

for.body61.preheader244:                          ; preds = %middle.block, %for.body61.preheader
  %indvars.iv.ph = phi i64 [ 0, %for.body61.preheader ], [ %n.vec, %middle.block ]
  %xtraiter = and i64 %wide.trip.count200, 3
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.body61.prol.loopexit, label %for.body61.prol

for.body61.prol:                                  ; preds = %for.body61.preheader244, %for.body61.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %for.body61.prol ], [ %indvars.iv.ph, %for.body61.preheader244 ]
  %prol.iter = phi i64 [ %prol.iter.next, %for.body61.prol ], [ 0, %for.body61.preheader244 ]
  %arrayidx63.prol = getelementptr inbounds ptr, ptr %4, i64 %indvars.iv.prol
  %9 = load ptr, ptr %arrayidx63.prol, align 8
  %10 = load i32, ptr %9, align 4
  %arrayidx66.prol = getelementptr inbounds [16 x [16 x i32]], ptr %temp, i64 0, i64 %indvars.iv.prol
  store i32 %10, ptr %arrayidx66.prol, align 16
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1
  %prol.iter.next = add i64 %prol.iter, 1
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %for.body61.prol.loopexit, label %for.body61.prol, !llvm.loop !5

for.body61.prol.loopexit:                         ; preds = %for.body61.prol, %for.body61.preheader244
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %for.body61.preheader244 ], [ %indvars.iv.next.prol, %for.body61.prol ]
  %11 = sub nsw i64 %indvars.iv.ph, %wide.trip.count200
  %12 = icmp ugt i64 %11, -4
  br i1 %12, label %for.cond92.preheader, label %for.body61

vector.ph:                                        ; preds = %for.body61.preheader
  %n.vec = and i64 %wide.trip.count200, 2147483644
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %13 = or disjoint i64 %index, 1
  %14 = or disjoint i64 %index, 2
  %15 = or disjoint i64 %index, 3
  %16 = getelementptr inbounds ptr, ptr %4, i64 %index
  %17 = getelementptr inbounds ptr, ptr %4, i64 %13
  %18 = getelementptr inbounds ptr, ptr %4, i64 %14
  %19 = getelementptr inbounds ptr, ptr %4, i64 %15
  %20 = load ptr, ptr %16, align 8
  %21 = load ptr, ptr %17, align 8
  %22 = load ptr, ptr %18, align 8
  %23 = load ptr, ptr %19, align 8
  %24 = load i32, ptr %20, align 4
  %25 = load i32, ptr %21, align 4
  %26 = load i32, ptr %22, align 4
  %27 = load i32, ptr %23, align 4
  %28 = getelementptr inbounds [16 x [16 x i32]], ptr %temp, i64 0, i64 %index
  %29 = getelementptr inbounds [16 x [16 x i32]], ptr %temp, i64 0, i64 %13
  %30 = getelementptr inbounds [16 x [16 x i32]], ptr %temp, i64 0, i64 %14
  %31 = getelementptr inbounds [16 x [16 x i32]], ptr %temp, i64 0, i64 %15
  store i32 %24, ptr %28, align 16
  store i32 %25, ptr %29, align 16
  store i32 %26, ptr %30, align 16
  store i32 %27, ptr %31, align 16
  %index.next = add nuw i64 %index, 4
  %32 = icmp eq i64 %index.next, %n.vec
  br i1 %32, label %middle.block, label %vector.body, !llvm.loop !7

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count200
  br i1 %cmp.n, label %for.cond92.preheader, label %for.body61.preheader244

for.body61.us.preheader:                          ; preds = %for.body61.lr.ph
  %wide.trip.count195 = zext nneg i32 %6 to i64
  %33 = add nsw i64 %wide.trip.count195, -1
  %34 = add nsw i64 %wide.trip.count195, -2
  %xtraiter246 = and i64 %33, 3
  %35 = icmp ult i64 %34, 3
  %unroll_iter = and i64 %33, -4
  %lcmp.mod247.not = icmp eq i64 %xtraiter246, 0
  br label %for.body61.us

for.body61.us:                                    ; preds = %for.body61.us.preheader, %for.cond68.for.inc89_crit_edge.us
  %indvars.iv197 = phi i64 [ 0, %for.body61.us.preheader ], [ %indvars.iv.next198, %for.cond68.for.inc89_crit_edge.us ]
  %arrayidx63.us = getelementptr inbounds ptr, ptr %4, i64 %indvars.iv197
  %36 = load ptr, ptr %arrayidx63.us, align 8
  %37 = load i32, ptr %36, align 4
  %arrayidx66.us = getelementptr inbounds [16 x [16 x i32]], ptr %temp, i64 0, i64 %indvars.iv197
  store i32 %37, ptr %arrayidx66.us, align 16
  br i1 %35, label %for.cond68.for.inc89_crit_edge.us.unr-lcssa, label %for.body71.us

for.body71.us:                                    ; preds = %for.body61.us, %for.body71.us
  %38 = phi i32 [ %add81.us.3, %for.body71.us ], [ %37, %for.body61.us ]
  %indvars.iv191 = phi i64 [ %indvars.iv.next192.3, %for.body71.us ], [ 1, %for.body61.us ]
  %niter = phi i64 [ %niter.next.3, %for.body71.us ], [ 0, %for.body61.us ]
  %arrayidx80.us = getelementptr inbounds i32, ptr %36, i64 %indvars.iv191
  %39 = load i32, ptr %arrayidx80.us, align 4
  %add81.us = add nsw i32 %39, %38
  %arrayidx85.us = getelementptr inbounds [16 x [16 x i32]], ptr %temp, i64 0, i64 %indvars.iv197, i64 %indvars.iv191
  store i32 %add81.us, ptr %arrayidx85.us, align 4
  %indvars.iv.next192 = add nuw nsw i64 %indvars.iv191, 1
  %arrayidx80.us.1 = getelementptr inbounds i32, ptr %36, i64 %indvars.iv.next192
  %40 = load i32, ptr %arrayidx80.us.1, align 4
  %add81.us.1 = add nsw i32 %40, %add81.us
  %arrayidx85.us.1 = getelementptr inbounds [16 x [16 x i32]], ptr %temp, i64 0, i64 %indvars.iv197, i64 %indvars.iv.next192
  store i32 %add81.us.1, ptr %arrayidx85.us.1, align 4
  %indvars.iv.next192.1 = add nuw nsw i64 %indvars.iv191, 2
  %arrayidx80.us.2 = getelementptr inbounds i32, ptr %36, i64 %indvars.iv.next192.1
  %41 = load i32, ptr %arrayidx80.us.2, align 4
  %add81.us.2 = add nsw i32 %41, %add81.us.1
  %arrayidx85.us.2 = getelementptr inbounds [16 x [16 x i32]], ptr %temp, i64 0, i64 %indvars.iv197, i64 %indvars.iv.next192.1
  store i32 %add81.us.2, ptr %arrayidx85.us.2, align 4
  %indvars.iv.next192.2 = add nuw nsw i64 %indvars.iv191, 3
  %arrayidx80.us.3 = getelementptr inbounds i32, ptr %36, i64 %indvars.iv.next192.2
  %42 = load i32, ptr %arrayidx80.us.3, align 4
  %add81.us.3 = add nsw i32 %42, %add81.us.2
  %arrayidx85.us.3 = getelementptr inbounds [16 x [16 x i32]], ptr %temp, i64 0, i64 %indvars.iv197, i64 %indvars.iv.next192.2
  store i32 %add81.us.3, ptr %arrayidx85.us.3, align 4
  %indvars.iv.next192.3 = add nuw nsw i64 %indvars.iv191, 4
  %niter.next.3 = add i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %for.cond68.for.inc89_crit_edge.us.unr-lcssa, label %for.body71.us

for.cond68.for.inc89_crit_edge.us.unr-lcssa:      ; preds = %for.body71.us, %for.body61.us
  %.unr = phi i32 [ %37, %for.body61.us ], [ %add81.us.3, %for.body71.us ]
  %indvars.iv191.unr = phi i64 [ 1, %for.body61.us ], [ %indvars.iv.next192.3, %for.body71.us ]
  br i1 %lcmp.mod247.not, label %for.cond68.for.inc89_crit_edge.us, label %for.body71.us.epil

for.body71.us.epil:                               ; preds = %for.cond68.for.inc89_crit_edge.us.unr-lcssa, %for.body71.us.epil
  %43 = phi i32 [ %add81.us.epil, %for.body71.us.epil ], [ %.unr, %for.cond68.for.inc89_crit_edge.us.unr-lcssa ]
  %indvars.iv191.epil = phi i64 [ %indvars.iv.next192.epil, %for.body71.us.epil ], [ %indvars.iv191.unr, %for.cond68.for.inc89_crit_edge.us.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %for.body71.us.epil ], [ 0, %for.cond68.for.inc89_crit_edge.us.unr-lcssa ]
  %arrayidx80.us.epil = getelementptr inbounds i32, ptr %36, i64 %indvars.iv191.epil
  %44 = load i32, ptr %arrayidx80.us.epil, align 4
  %add81.us.epil = add nsw i32 %44, %43
  %arrayidx85.us.epil = getelementptr inbounds [16 x [16 x i32]], ptr %temp, i64 0, i64 %indvars.iv197, i64 %indvars.iv191.epil
  store i32 %add81.us.epil, ptr %arrayidx85.us.epil, align 4
  %indvars.iv.next192.epil = add nuw nsw i64 %indvars.iv191.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter246
  br i1 %epil.iter.cmp.not, label %for.cond68.for.inc89_crit_edge.us, label %for.body71.us.epil, !llvm.loop !10

for.cond68.for.inc89_crit_edge.us:                ; preds = %for.body71.us.epil, %for.cond68.for.inc89_crit_edge.us.unr-lcssa
  %indvars.iv.next198 = add nuw nsw i64 %indvars.iv197, 1
  %exitcond201.not = icmp eq i64 %indvars.iv.next198, %wide.trip.count200
  br i1 %exitcond201.not, label %for.cond92.preheader, label %for.body61.us

for.cond.preheader:                               ; preds = %entry
  %cmp8179 = icmp sgt i32 %6, 0
  br i1 %cmp8179, label %for.body.lr.ph, label %if.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %45 = load ptr, ptr %4, align 8
  %cmp17177 = icmp sgt i32 %7, 1
  %wide.trip.count224 = zext nneg i32 %6 to i64
  br i1 %cmp17177, label %for.body.us.preheader, label %for.cond36.preheader.thread

for.cond36.preheader.thread:                      ; preds = %for.body.lr.ph
  %46 = shl nuw nsw i64 %wide.trip.count224, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %temp, ptr align 4 %45, i64 %46, i1 false)
  %cmp41181.old = icmp eq i32 %7, 1
  br i1 %cmp41181.old, label %for.cond40.preheader.us.preheader, label %if.end

for.body.us.preheader:                            ; preds = %for.body.lr.ph
  %wide.trip.count219 = zext nneg i32 %7 to i64
  %47 = add nsw i64 %wide.trip.count219, -1
  %xtraiter253 = and i64 %47, 1
  %48 = icmp eq i32 %7, 2
  %unroll_iter257 = and i64 %47, -2
  %lcmp.mod256.not = icmp eq i64 %xtraiter253, 0
  br label %for.body.us

for.body.us:                                      ; preds = %for.body.us.preheader, %for.cond16.for.inc33_crit_edge.us
  %indvars.iv221 = phi i64 [ 0, %for.body.us.preheader ], [ %indvars.iv.next222, %for.cond16.for.inc33_crit_edge.us ]
  %arrayidx12.us = getelementptr inbounds i32, ptr %45, i64 %indvars.iv221
  %49 = load i32, ptr %arrayidx12.us, align 4
  %arrayidx15.us = getelementptr inbounds [16 x i32], ptr %temp, i64 0, i64 %indvars.iv221
  store i32 %49, ptr %arrayidx15.us, align 4
  br i1 %48, label %for.cond16.for.inc33_crit_edge.us.unr-lcssa, label %for.body19.us

for.body19.us:                                    ; preds = %for.body.us, %for.body19.us
  %50 = phi i32 [ %add28.us.1, %for.body19.us ], [ %49, %for.body.us ]
  %indvars.iv215 = phi i64 [ %indvars.iv.next216.1, %for.body19.us ], [ 1, %for.body.us ]
  %niter258 = phi i64 [ %niter258.next.1, %for.body19.us ], [ 0, %for.body.us ]
  %arrayidx25.us = getelementptr inbounds ptr, ptr %4, i64 %indvars.iv215
  %51 = load ptr, ptr %arrayidx25.us, align 8
  %arrayidx27.us = getelementptr inbounds i32, ptr %51, i64 %indvars.iv221
  %52 = load i32, ptr %arrayidx27.us, align 4
  %add28.us = add nsw i32 %52, %50
  %arrayidx32.us = getelementptr inbounds [16 x [16 x i32]], ptr %temp, i64 0, i64 %indvars.iv215, i64 %indvars.iv221
  store i32 %add28.us, ptr %arrayidx32.us, align 4
  %indvars.iv.next216 = add nuw nsw i64 %indvars.iv215, 1
  %arrayidx25.us.1 = getelementptr inbounds ptr, ptr %4, i64 %indvars.iv.next216
  %53 = load ptr, ptr %arrayidx25.us.1, align 8
  %arrayidx27.us.1 = getelementptr inbounds i32, ptr %53, i64 %indvars.iv221
  %54 = load i32, ptr %arrayidx27.us.1, align 4
  %add28.us.1 = add nsw i32 %54, %add28.us
  %arrayidx32.us.1 = getelementptr inbounds [16 x [16 x i32]], ptr %temp, i64 0, i64 %indvars.iv.next216, i64 %indvars.iv221
  store i32 %add28.us.1, ptr %arrayidx32.us.1, align 4
  %indvars.iv.next216.1 = add nuw nsw i64 %indvars.iv215, 2
  %niter258.next.1 = add i64 %niter258, 2
  %niter258.ncmp.1 = icmp eq i64 %niter258.next.1, %unroll_iter257
  br i1 %niter258.ncmp.1, label %for.cond16.for.inc33_crit_edge.us.unr-lcssa, label %for.body19.us

for.cond16.for.inc33_crit_edge.us.unr-lcssa:      ; preds = %for.body19.us, %for.body.us
  %.unr255 = phi i32 [ %49, %for.body.us ], [ %add28.us.1, %for.body19.us ]
  %indvars.iv215.unr = phi i64 [ 1, %for.body.us ], [ %indvars.iv.next216.1, %for.body19.us ]
  br i1 %lcmp.mod256.not, label %for.cond16.for.inc33_crit_edge.us, label %for.body19.us.epil

for.body19.us.epil:                               ; preds = %for.cond16.for.inc33_crit_edge.us.unr-lcssa
  %arrayidx25.us.epil = getelementptr inbounds ptr, ptr %4, i64 %indvars.iv215.unr
  %55 = load ptr, ptr %arrayidx25.us.epil, align 8
  %arrayidx27.us.epil = getelementptr inbounds i32, ptr %55, i64 %indvars.iv221
  %56 = load i32, ptr %arrayidx27.us.epil, align 4
  %add28.us.epil = add nsw i32 %56, %.unr255
  %arrayidx32.us.epil = getelementptr inbounds [16 x [16 x i32]], ptr %temp, i64 0, i64 %indvars.iv215.unr, i64 %indvars.iv221
  store i32 %add28.us.epil, ptr %arrayidx32.us.epil, align 4
  br label %for.cond16.for.inc33_crit_edge.us

for.cond16.for.inc33_crit_edge.us:                ; preds = %for.cond16.for.inc33_crit_edge.us.unr-lcssa, %for.body19.us.epil
  %indvars.iv.next222 = add nuw nsw i64 %indvars.iv221, 1
  %exitcond225.not = icmp eq i64 %indvars.iv.next222, %wide.trip.count224
  br i1 %exitcond225.not, label %for.cond36.preheader, label %for.body.us

for.cond36.preheader:                             ; preds = %for.cond16.for.inc33_crit_edge.us
  br i1 %cmp8179, label %for.cond40.preheader.us.preheader, label %if.end

for.cond40.preheader.us.preheader:                ; preds = %for.cond36.preheader, %for.cond36.preheader.thread
  %wide.trip.count234 = zext nneg i32 %6 to i64
  %wide.trip.count229 = zext nneg i32 %7 to i64
  %57 = add nsw i64 %wide.trip.count229, -1
  %xtraiter259 = and i64 %wide.trip.count229, 3
  %58 = icmp ult i64 %57, 3
  %unroll_iter262 = and i64 %wide.trip.count229, 2147483644
  %lcmp.mod261.not = icmp eq i64 %xtraiter259, 0
  br label %for.cond40.preheader.us

for.cond40.preheader.us:                          ; preds = %for.cond40.preheader.us.preheader, %for.cond40.for.inc55_crit_edge.us
  %indvars.iv231 = phi i64 [ 0, %for.cond40.preheader.us.preheader ], [ %indvars.iv.next232, %for.cond40.for.inc55_crit_edge.us ]
  br i1 %58, label %for.cond40.for.inc55_crit_edge.us.unr-lcssa, label %for.body43.us

for.body43.us:                                    ; preds = %for.cond40.preheader.us, %for.body43.us
  %indvars.iv226 = phi i64 [ %indvars.iv.next227.3, %for.body43.us ], [ 0, %for.cond40.preheader.us ]
  %niter263 = phi i64 [ %niter263.next.3, %for.body43.us ], [ 0, %for.cond40.preheader.us ]
  %arrayidx47.us = getelementptr inbounds [16 x [16 x i32]], ptr %temp, i64 0, i64 %indvars.iv226, i64 %indvars.iv231
  %59 = load i32, ptr %arrayidx47.us, align 4
  %arrayidx49.us = getelementptr inbounds ptr, ptr %2, i64 %indvars.iv226
  %60 = load ptr, ptr %arrayidx49.us, align 8
  %arrayidx51.us = getelementptr inbounds i32, ptr %60, i64 %indvars.iv231
  store i32 %59, ptr %arrayidx51.us, align 4
  %indvars.iv.next227 = or disjoint i64 %indvars.iv226, 1
  %arrayidx47.us.1 = getelementptr inbounds [16 x [16 x i32]], ptr %temp, i64 0, i64 %indvars.iv.next227, i64 %indvars.iv231
  %61 = load i32, ptr %arrayidx47.us.1, align 4
  %arrayidx49.us.1 = getelementptr inbounds ptr, ptr %2, i64 %indvars.iv.next227
  %62 = load ptr, ptr %arrayidx49.us.1, align 8
  %arrayidx51.us.1 = getelementptr inbounds i32, ptr %62, i64 %indvars.iv231
  store i32 %61, ptr %arrayidx51.us.1, align 4
  %indvars.iv.next227.1 = or disjoint i64 %indvars.iv226, 2
  %arrayidx47.us.2 = getelementptr inbounds [16 x [16 x i32]], ptr %temp, i64 0, i64 %indvars.iv.next227.1, i64 %indvars.iv231
  %63 = load i32, ptr %arrayidx47.us.2, align 4
  %arrayidx49.us.2 = getelementptr inbounds ptr, ptr %2, i64 %indvars.iv.next227.1
  %64 = load ptr, ptr %arrayidx49.us.2, align 8
  %arrayidx51.us.2 = getelementptr inbounds i32, ptr %64, i64 %indvars.iv231
  store i32 %63, ptr %arrayidx51.us.2, align 4
  %indvars.iv.next227.2 = or disjoint i64 %indvars.iv226, 3
  %arrayidx47.us.3 = getelementptr inbounds [16 x [16 x i32]], ptr %temp, i64 0, i64 %indvars.iv.next227.2, i64 %indvars.iv231
  %65 = load i32, ptr %arrayidx47.us.3, align 4
  %arrayidx49.us.3 = getelementptr inbounds ptr, ptr %2, i64 %indvars.iv.next227.2
  %66 = load ptr, ptr %arrayidx49.us.3, align 8
  %arrayidx51.us.3 = getelementptr inbounds i32, ptr %66, i64 %indvars.iv231
  store i32 %65, ptr %arrayidx51.us.3, align 4
  %indvars.iv.next227.3 = add nuw nsw i64 %indvars.iv226, 4
  %niter263.next.3 = add i64 %niter263, 4
  %niter263.ncmp.3 = icmp eq i64 %niter263.next.3, %unroll_iter262
  br i1 %niter263.ncmp.3, label %for.cond40.for.inc55_crit_edge.us.unr-lcssa, label %for.body43.us

for.cond40.for.inc55_crit_edge.us.unr-lcssa:      ; preds = %for.body43.us, %for.cond40.preheader.us
  %indvars.iv226.unr = phi i64 [ 0, %for.cond40.preheader.us ], [ %indvars.iv.next227.3, %for.body43.us ]
  br i1 %lcmp.mod261.not, label %for.cond40.for.inc55_crit_edge.us, label %for.body43.us.epil

for.body43.us.epil:                               ; preds = %for.cond40.for.inc55_crit_edge.us.unr-lcssa, %for.body43.us.epil
  %indvars.iv226.epil = phi i64 [ %indvars.iv.next227.epil, %for.body43.us.epil ], [ %indvars.iv226.unr, %for.cond40.for.inc55_crit_edge.us.unr-lcssa ]
  %epil.iter260 = phi i64 [ %epil.iter260.next, %for.body43.us.epil ], [ 0, %for.cond40.for.inc55_crit_edge.us.unr-lcssa ]
  %arrayidx47.us.epil = getelementptr inbounds [16 x [16 x i32]], ptr %temp, i64 0, i64 %indvars.iv226.epil, i64 %indvars.iv231
  %67 = load i32, ptr %arrayidx47.us.epil, align 4
  %arrayidx49.us.epil = getelementptr inbounds ptr, ptr %2, i64 %indvars.iv226.epil
  %68 = load ptr, ptr %arrayidx49.us.epil, align 8
  %arrayidx51.us.epil = getelementptr inbounds i32, ptr %68, i64 %indvars.iv231
  store i32 %67, ptr %arrayidx51.us.epil, align 4
  %indvars.iv.next227.epil = add nuw nsw i64 %indvars.iv226.epil, 1
  %epil.iter260.next = add i64 %epil.iter260, 1
  %epil.iter260.cmp.not = icmp eq i64 %epil.iter260.next, %xtraiter259
  br i1 %epil.iter260.cmp.not, label %for.cond40.for.inc55_crit_edge.us, label %for.body43.us.epil, !llvm.loop !11

for.cond40.for.inc55_crit_edge.us:                ; preds = %for.body43.us.epil, %for.cond40.for.inc55_crit_edge.us.unr-lcssa
  %indvars.iv.next232 = add nuw nsw i64 %indvars.iv231, 1
  %exitcond235.not = icmp eq i64 %indvars.iv.next232, %wide.trip.count234
  br i1 %exitcond235.not, label %if.end, label %for.cond40.preheader.us

for.cond92.preheader:                             ; preds = %for.body61.prol.loopexit, %for.body61, %for.cond68.for.inc89_crit_edge.us, %middle.block
  %cmp97173 = icmp sgt i32 %6, 0
  %or.cond240 = select i1 %cmp59171, i1 %cmp97173, i1 false
  br i1 %or.cond240, label %for.cond96.preheader.us.preheader, label %if.end

for.cond96.preheader.us.preheader:                ; preds = %for.cond92.preheader
  %wide.trip.count210 = zext nneg i32 %7 to i64
  %wide.trip.count205 = zext nneg i32 %6 to i64
  %xtraiter248 = and i64 %wide.trip.count205, 3
  %69 = icmp ult i32 %6, 4
  %unroll_iter251 = and i64 %wide.trip.count205, 2147483644
  %lcmp.mod250.not = icmp eq i64 %xtraiter248, 0
  br label %for.cond96.preheader.us

for.cond96.preheader.us:                          ; preds = %for.cond96.preheader.us.preheader, %for.cond96.for.inc111_crit_edge.us
  %indvars.iv207 = phi i64 [ 0, %for.cond96.preheader.us.preheader ], [ %indvars.iv.next208, %for.cond96.for.inc111_crit_edge.us ]
  %arrayidx105.us = getelementptr inbounds ptr, ptr %2, i64 %indvars.iv207
  br i1 %69, label %for.cond96.for.inc111_crit_edge.us.unr-lcssa, label %for.body99.us

for.body99.us:                                    ; preds = %for.cond96.preheader.us, %for.body99.us
  %indvars.iv202 = phi i64 [ %indvars.iv.next203.3, %for.body99.us ], [ 0, %for.cond96.preheader.us ]
  %niter252 = phi i64 [ %niter252.next.3, %for.body99.us ], [ 0, %for.cond96.preheader.us ]
  %arrayidx103.us = getelementptr inbounds [16 x [16 x i32]], ptr %temp, i64 0, i64 %indvars.iv207, i64 %indvars.iv202
  %70 = load i32, ptr %arrayidx103.us, align 16
  %71 = load ptr, ptr %arrayidx105.us, align 8
  %arrayidx107.us = getelementptr inbounds i32, ptr %71, i64 %indvars.iv202
  store i32 %70, ptr %arrayidx107.us, align 4
  %indvars.iv.next203 = or disjoint i64 %indvars.iv202, 1
  %arrayidx103.us.1 = getelementptr inbounds [16 x [16 x i32]], ptr %temp, i64 0, i64 %indvars.iv207, i64 %indvars.iv.next203
  %72 = load i32, ptr %arrayidx103.us.1, align 4
  %73 = load ptr, ptr %arrayidx105.us, align 8
  %arrayidx107.us.1 = getelementptr inbounds i32, ptr %73, i64 %indvars.iv.next203
  store i32 %72, ptr %arrayidx107.us.1, align 4
  %indvars.iv.next203.1 = or disjoint i64 %indvars.iv202, 2
  %arrayidx103.us.2 = getelementptr inbounds [16 x [16 x i32]], ptr %temp, i64 0, i64 %indvars.iv207, i64 %indvars.iv.next203.1
  %74 = load i32, ptr %arrayidx103.us.2, align 8
  %75 = load ptr, ptr %arrayidx105.us, align 8
  %arrayidx107.us.2 = getelementptr inbounds i32, ptr %75, i64 %indvars.iv.next203.1
  store i32 %74, ptr %arrayidx107.us.2, align 4
  %indvars.iv.next203.2 = or disjoint i64 %indvars.iv202, 3
  %arrayidx103.us.3 = getelementptr inbounds [16 x [16 x i32]], ptr %temp, i64 0, i64 %indvars.iv207, i64 %indvars.iv.next203.2
  %76 = load i32, ptr %arrayidx103.us.3, align 4
  %77 = load ptr, ptr %arrayidx105.us, align 8
  %arrayidx107.us.3 = getelementptr inbounds i32, ptr %77, i64 %indvars.iv.next203.2
  store i32 %76, ptr %arrayidx107.us.3, align 4
  %indvars.iv.next203.3 = add nuw nsw i64 %indvars.iv202, 4
  %niter252.next.3 = add i64 %niter252, 4
  %niter252.ncmp.3 = icmp eq i64 %niter252.next.3, %unroll_iter251
  br i1 %niter252.ncmp.3, label %for.cond96.for.inc111_crit_edge.us.unr-lcssa, label %for.body99.us

for.cond96.for.inc111_crit_edge.us.unr-lcssa:     ; preds = %for.body99.us, %for.cond96.preheader.us
  %indvars.iv202.unr = phi i64 [ 0, %for.cond96.preheader.us ], [ %indvars.iv.next203.3, %for.body99.us ]
  br i1 %lcmp.mod250.not, label %for.cond96.for.inc111_crit_edge.us, label %for.body99.us.epil

for.body99.us.epil:                               ; preds = %for.cond96.for.inc111_crit_edge.us.unr-lcssa, %for.body99.us.epil
  %indvars.iv202.epil = phi i64 [ %indvars.iv.next203.epil, %for.body99.us.epil ], [ %indvars.iv202.unr, %for.cond96.for.inc111_crit_edge.us.unr-lcssa ]
  %epil.iter249 = phi i64 [ %epil.iter249.next, %for.body99.us.epil ], [ 0, %for.cond96.for.inc111_crit_edge.us.unr-lcssa ]
  %arrayidx103.us.epil = getelementptr inbounds [16 x [16 x i32]], ptr %temp, i64 0, i64 %indvars.iv207, i64 %indvars.iv202.epil
  %78 = load i32, ptr %arrayidx103.us.epil, align 4
  %79 = load ptr, ptr %arrayidx105.us, align 8
  %arrayidx107.us.epil = getelementptr inbounds i32, ptr %79, i64 %indvars.iv202.epil
  store i32 %78, ptr %arrayidx107.us.epil, align 4
  %indvars.iv.next203.epil = add nuw nsw i64 %indvars.iv202.epil, 1
  %epil.iter249.next = add i64 %epil.iter249, 1
  %epil.iter249.cmp.not = icmp eq i64 %epil.iter249.next, %xtraiter248
  br i1 %epil.iter249.cmp.not, label %for.cond96.for.inc111_crit_edge.us, label %for.body99.us.epil, !llvm.loop !12

for.cond96.for.inc111_crit_edge.us:               ; preds = %for.body99.us.epil, %for.cond96.for.inc111_crit_edge.us.unr-lcssa
  %indvars.iv.next208 = add nuw nsw i64 %indvars.iv207, 1
  %exitcond211.not = icmp eq i64 %indvars.iv.next208, %wide.trip.count210
  br i1 %exitcond211.not, label %if.end, label %for.cond96.preheader.us

for.body61:                                       ; preds = %for.body61.prol.loopexit, %for.body61
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %for.body61 ], [ %indvars.iv.unr, %for.body61.prol.loopexit ]
  %arrayidx63 = getelementptr inbounds ptr, ptr %4, i64 %indvars.iv
  %80 = load ptr, ptr %arrayidx63, align 8
  %81 = load i32, ptr %80, align 4
  %arrayidx66 = getelementptr inbounds [16 x [16 x i32]], ptr %temp, i64 0, i64 %indvars.iv
  store i32 %81, ptr %arrayidx66, align 16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %arrayidx63.1 = getelementptr inbounds ptr, ptr %4, i64 %indvars.iv.next
  %82 = load ptr, ptr %arrayidx63.1, align 8
  %83 = load i32, ptr %82, align 4
  %arrayidx66.1 = getelementptr inbounds [16 x [16 x i32]], ptr %temp, i64 0, i64 %indvars.iv.next
  store i32 %83, ptr %arrayidx66.1, align 16
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %arrayidx63.2 = getelementptr inbounds ptr, ptr %4, i64 %indvars.iv.next.1
  %84 = load ptr, ptr %arrayidx63.2, align 8
  %85 = load i32, ptr %84, align 4
  %arrayidx66.2 = getelementptr inbounds [16 x [16 x i32]], ptr %temp, i64 0, i64 %indvars.iv.next.1
  store i32 %85, ptr %arrayidx66.2, align 16
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3
  %arrayidx63.3 = getelementptr inbounds ptr, ptr %4, i64 %indvars.iv.next.2
  %86 = load ptr, ptr %arrayidx63.3, align 8
  %87 = load i32, ptr %86, align 4
  %arrayidx66.3 = getelementptr inbounds [16 x [16 x i32]], ptr %temp, i64 0, i64 %indvars.iv.next.2
  store i32 %87, ptr %arrayidx66.3, align 16
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count200
  br i1 %exitcond.not.3, label %for.cond92.preheader, label %for.body61, !llvm.loop !13

if.end:                                           ; preds = %for.cond96.for.inc111_crit_edge.us, %for.cond40.for.inc55_crit_edge.us, %for.cond.preheader, %for.cond58.preheader, %for.cond36.preheader.thread, %for.cond92.preheader, %for.cond36.preheader
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %temp) #8
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @itrans_2(ptr nocapture noundef readonly %currMB, i32 noundef %pl) local_unnamed_addr #0 {
entry:
  %M4 = alloca ptr, align 8
  %0 = load ptr, ptr %currMB, align 8
  %p_Vid1 = getelementptr inbounds i8, ptr %currMB, i64 8
  %1 = load ptr, ptr %p_Vid1, align 8
  %separate_colour_plane_flag = getelementptr inbounds i8, ptr %1, i64 849280
  %2 = load i32, ptr %separate_colour_plane_flag, align 8
  %cmp.not = icmp eq i32 %2, 0
  %cond = select i1 %cmp.not, i32 %pl, i32 0
  %cof2 = getelementptr inbounds i8, ptr %0, i64 1272
  %3 = load ptr, ptr %cof2, align 8
  %idxprom = sext i32 %cond to i64
  %arrayidx = getelementptr inbounds ptr, ptr %3, i64 %idxprom
  %4 = load ptr, ptr %arrayidx, align 8
  %qp_scaled3 = getelementptr inbounds i8, ptr %currMB, i64 80
  %idxprom4 = zext i32 %pl to i64
  %arrayidx5 = getelementptr inbounds [3 x i32], ptr %qp_scaled3, i64 0, i64 %idxprom4
  %5 = load i32, ptr %arrayidx5, align 4
  %qp_per_matrix = getelementptr inbounds i8, ptr %1, i64 856032
  %6 = load ptr, ptr %qp_per_matrix, align 8
  %idxprom6 = sext i32 %5 to i64
  %arrayidx7 = getelementptr inbounds i32, ptr %6, i64 %idxprom6
  %7 = load i32, ptr %arrayidx7, align 4
  %qp_rem_matrix = getelementptr inbounds i8, ptr %1, i64 856040
  %8 = load ptr, ptr %qp_rem_matrix, align 8
  %arrayidx9 = getelementptr inbounds i32, ptr %8, i64 %idxprom6
  %9 = load i32, ptr %arrayidx9, align 4
  %InvLevelScale4x4_Intra = getelementptr inbounds i8, ptr %0, i64 1392
  %idxprom12 = sext i32 %9 to i64
  %arrayidx13 = getelementptr inbounds [3 x [6 x [4 x [4 x i32]]]], ptr %InvLevelScale4x4_Intra, i64 0, i64 %idxprom4, i64 %idxprom12
  %10 = load i32, ptr %arrayidx13, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %M4) #8
  %call = call i32 @get_mem2Dint(ptr noundef nonnull %M4, i32 noundef 4, i32 noundef 4) #8
  %11 = load ptr, ptr %4, align 8
  %12 = load i32, ptr %11, align 4
  %13 = load ptr, ptr %M4, align 8
  %14 = load ptr, ptr %13, align 8
  store i32 %12, ptr %14, align 4
  %15 = load ptr, ptr %4, align 8
  %arrayidx26 = getelementptr inbounds i8, ptr %15, i64 16
  %16 = load i32, ptr %arrayidx26, align 4
  %17 = load ptr, ptr %M4, align 8
  %18 = load ptr, ptr %17, align 8
  %arrayidx29 = getelementptr inbounds i8, ptr %18, i64 4
  store i32 %16, ptr %arrayidx29, align 4
  %19 = load ptr, ptr %4, align 8
  %arrayidx33 = getelementptr inbounds i8, ptr %19, i64 32
  %20 = load i32, ptr %arrayidx33, align 4
  %21 = load ptr, ptr %M4, align 8
  %22 = load ptr, ptr %21, align 8
  %arrayidx36 = getelementptr inbounds i8, ptr %22, i64 8
  store i32 %20, ptr %arrayidx36, align 4
  %23 = load ptr, ptr %4, align 8
  %arrayidx40 = getelementptr inbounds i8, ptr %23, i64 48
  %24 = load i32, ptr %arrayidx40, align 4
  %25 = load ptr, ptr %21, align 8
  %arrayidx43 = getelementptr inbounds i8, ptr %25, i64 12
  store i32 %24, ptr %arrayidx43, align 4
  %arrayidx18.1 = getelementptr inbounds i8, ptr %4, i64 32
  %26 = load ptr, ptr %arrayidx18.1, align 8
  %27 = load i32, ptr %26, align 4
  %arrayidx21.1 = getelementptr inbounds i8, ptr %21, i64 8
  %28 = load ptr, ptr %arrayidx21.1, align 8
  store i32 %27, ptr %28, align 4
  %29 = load ptr, ptr %arrayidx18.1, align 8
  %arrayidx26.1 = getelementptr inbounds i8, ptr %29, i64 16
  %30 = load i32, ptr %arrayidx26.1, align 4
  %31 = load ptr, ptr %M4, align 8
  %arrayidx28.1 = getelementptr inbounds i8, ptr %31, i64 8
  %32 = load ptr, ptr %arrayidx28.1, align 8
  %arrayidx29.1 = getelementptr inbounds i8, ptr %32, i64 4
  store i32 %30, ptr %arrayidx29.1, align 4
  %33 = load ptr, ptr %arrayidx18.1, align 8
  %arrayidx33.1 = getelementptr inbounds i8, ptr %33, i64 32
  %34 = load i32, ptr %arrayidx33.1, align 4
  %35 = load ptr, ptr %M4, align 8
  %arrayidx35.1 = getelementptr inbounds i8, ptr %35, i64 8
  %36 = load ptr, ptr %arrayidx35.1, align 8
  %arrayidx36.1 = getelementptr inbounds i8, ptr %36, i64 8
  store i32 %34, ptr %arrayidx36.1, align 4
  %37 = load ptr, ptr %arrayidx18.1, align 8
  %arrayidx40.1 = getelementptr inbounds i8, ptr %37, i64 48
  %38 = load i32, ptr %arrayidx40.1, align 4
  %39 = load ptr, ptr %arrayidx35.1, align 8
  %arrayidx43.1 = getelementptr inbounds i8, ptr %39, i64 12
  store i32 %38, ptr %arrayidx43.1, align 4
  %arrayidx18.2 = getelementptr inbounds i8, ptr %4, i64 64
  %40 = load ptr, ptr %arrayidx18.2, align 8
  %41 = load i32, ptr %40, align 4
  %arrayidx21.2 = getelementptr inbounds i8, ptr %35, i64 16
  %42 = load ptr, ptr %arrayidx21.2, align 8
  store i32 %41, ptr %42, align 4
  %43 = load ptr, ptr %arrayidx18.2, align 8
  %arrayidx26.2 = getelementptr inbounds i8, ptr %43, i64 16
  %44 = load i32, ptr %arrayidx26.2, align 4
  %45 = load ptr, ptr %M4, align 8
  %arrayidx28.2 = getelementptr inbounds i8, ptr %45, i64 16
  %46 = load ptr, ptr %arrayidx28.2, align 8
  %arrayidx29.2 = getelementptr inbounds i8, ptr %46, i64 4
  store i32 %44, ptr %arrayidx29.2, align 4
  %47 = load ptr, ptr %arrayidx18.2, align 8
  %arrayidx33.2 = getelementptr inbounds i8, ptr %47, i64 32
  %48 = load i32, ptr %arrayidx33.2, align 4
  %49 = load ptr, ptr %M4, align 8
  %arrayidx35.2 = getelementptr inbounds i8, ptr %49, i64 16
  %50 = load ptr, ptr %arrayidx35.2, align 8
  %arrayidx36.2 = getelementptr inbounds i8, ptr %50, i64 8
  store i32 %48, ptr %arrayidx36.2, align 4
  %51 = load ptr, ptr %arrayidx18.2, align 8
  %arrayidx40.2 = getelementptr inbounds i8, ptr %51, i64 48
  %52 = load i32, ptr %arrayidx40.2, align 4
  %53 = load ptr, ptr %arrayidx35.2, align 8
  %arrayidx43.2 = getelementptr inbounds i8, ptr %53, i64 12
  store i32 %52, ptr %arrayidx43.2, align 4
  %arrayidx18.3 = getelementptr inbounds i8, ptr %4, i64 96
  %54 = load ptr, ptr %arrayidx18.3, align 8
  %55 = load i32, ptr %54, align 4
  %arrayidx21.3 = getelementptr inbounds i8, ptr %49, i64 24
  %56 = load ptr, ptr %arrayidx21.3, align 8
  store i32 %55, ptr %56, align 4
  %57 = load ptr, ptr %arrayidx18.3, align 8
  %arrayidx26.3 = getelementptr inbounds i8, ptr %57, i64 16
  %58 = load i32, ptr %arrayidx26.3, align 4
  %59 = load ptr, ptr %M4, align 8
  %arrayidx28.3 = getelementptr inbounds i8, ptr %59, i64 24
  %60 = load ptr, ptr %arrayidx28.3, align 8
  %arrayidx29.3 = getelementptr inbounds i8, ptr %60, i64 4
  store i32 %58, ptr %arrayidx29.3, align 4
  %61 = load ptr, ptr %arrayidx18.3, align 8
  %arrayidx33.3 = getelementptr inbounds i8, ptr %61, i64 32
  %62 = load i32, ptr %arrayidx33.3, align 4
  %63 = load ptr, ptr %M4, align 8
  %arrayidx35.3 = getelementptr inbounds i8, ptr %63, i64 24
  %64 = load ptr, ptr %arrayidx35.3, align 8
  %arrayidx36.3 = getelementptr inbounds i8, ptr %64, i64 8
  store i32 %62, ptr %arrayidx36.3, align 4
  %65 = load ptr, ptr %arrayidx18.3, align 8
  %arrayidx40.3 = getelementptr inbounds i8, ptr %65, i64 48
  %66 = load i32, ptr %arrayidx40.3, align 4
  %67 = load ptr, ptr %arrayidx35.3, align 8
  %arrayidx43.3 = getelementptr inbounds i8, ptr %67, i64 12
  store i32 %66, ptr %arrayidx43.3, align 4
  call void @ihadamard4x4(ptr noundef %63, ptr noundef %63) #8
  %68 = load ptr, ptr %M4, align 8
  %69 = load ptr, ptr %68, align 8
  %70 = load i32, ptr %69, align 4
  %mul = mul nsw i32 %70, %10
  %shl50 = shl i32 %mul, %7
  %add.i = add nsw i32 %shl50, 32
  %shr.i = ashr i32 %add.i, 6
  %71 = load ptr, ptr %4, align 8
  store i32 %shr.i, ptr %71, align 4
  %72 = load ptr, ptr %M4, align 8
  %73 = load ptr, ptr %72, align 8
  %arrayidx58 = getelementptr inbounds i8, ptr %73, i64 4
  %74 = load i32, ptr %arrayidx58, align 4
  %mul59 = mul nsw i32 %74, %10
  %shl60 = shl i32 %mul59, %7
  %add.i129 = add nsw i32 %shl60, 32
  %shr.i130 = ashr i32 %add.i129, 6
  %75 = load ptr, ptr %4, align 8
  %arrayidx65 = getelementptr inbounds i8, ptr %75, i64 16
  store i32 %shr.i130, ptr %arrayidx65, align 4
  %76 = load ptr, ptr %72, align 8
  %arrayidx68 = getelementptr inbounds i8, ptr %76, i64 8
  %77 = load i32, ptr %arrayidx68, align 4
  %mul69 = mul nsw i32 %77, %10
  %shl70 = shl i32 %mul69, %7
  %add.i131 = add nsw i32 %shl70, 32
  %shr.i132 = ashr i32 %add.i131, 6
  %78 = load ptr, ptr %4, align 8
  %arrayidx75 = getelementptr inbounds i8, ptr %78, i64 32
  store i32 %shr.i132, ptr %arrayidx75, align 4
  %79 = load ptr, ptr %72, align 8
  %arrayidx78 = getelementptr inbounds i8, ptr %79, i64 12
  %80 = load i32, ptr %arrayidx78, align 4
  %mul79 = mul nsw i32 %80, %10
  %shl80 = shl i32 %mul79, %7
  %add.i133 = add nsw i32 %shl80, 32
  %shr.i134 = ashr i32 %add.i133, 6
  %81 = load ptr, ptr %4, align 8
  %arrayidx85 = getelementptr inbounds i8, ptr %81, i64 48
  store i32 %shr.i134, ptr %arrayidx85, align 4
  %arrayidx48.1 = getelementptr inbounds i8, ptr %72, i64 8
  %82 = load ptr, ptr %arrayidx48.1, align 8
  %83 = load i32, ptr %82, align 4
  %mul.1 = mul nsw i32 %83, %10
  %shl50.1 = shl i32 %mul.1, %7
  %add.i.1 = add nsw i32 %shl50.1, 32
  %shr.i.1 = ashr i32 %add.i.1, 6
  %84 = load ptr, ptr %arrayidx18.1, align 8
  store i32 %shr.i.1, ptr %84, align 4
  %85 = load ptr, ptr %M4, align 8
  %arrayidx57.1 = getelementptr inbounds i8, ptr %85, i64 8
  %86 = load ptr, ptr %arrayidx57.1, align 8
  %arrayidx58.1 = getelementptr inbounds i8, ptr %86, i64 4
  %87 = load i32, ptr %arrayidx58.1, align 4
  %mul59.1 = mul nsw i32 %87, %10
  %shl60.1 = shl i32 %mul59.1, %7
  %add.i129.1 = add nsw i32 %shl60.1, 32
  %shr.i130.1 = ashr i32 %add.i129.1, 6
  %88 = load ptr, ptr %arrayidx18.1, align 8
  %arrayidx65.1 = getelementptr inbounds i8, ptr %88, i64 16
  store i32 %shr.i130.1, ptr %arrayidx65.1, align 4
  %89 = load ptr, ptr %arrayidx57.1, align 8
  %arrayidx68.1 = getelementptr inbounds i8, ptr %89, i64 8
  %90 = load i32, ptr %arrayidx68.1, align 4
  %mul69.1 = mul nsw i32 %90, %10
  %shl70.1 = shl i32 %mul69.1, %7
  %add.i131.1 = add nsw i32 %shl70.1, 32
  %shr.i132.1 = ashr i32 %add.i131.1, 6
  %91 = load ptr, ptr %arrayidx18.1, align 8
  %arrayidx75.1 = getelementptr inbounds i8, ptr %91, i64 32
  store i32 %shr.i132.1, ptr %arrayidx75.1, align 4
  %92 = load ptr, ptr %arrayidx57.1, align 8
  %arrayidx78.1 = getelementptr inbounds i8, ptr %92, i64 12
  %93 = load i32, ptr %arrayidx78.1, align 4
  %mul79.1 = mul nsw i32 %93, %10
  %shl80.1 = shl i32 %mul79.1, %7
  %add.i133.1 = add nsw i32 %shl80.1, 32
  %shr.i134.1 = ashr i32 %add.i133.1, 6
  %94 = load ptr, ptr %arrayidx18.1, align 8
  %arrayidx85.1 = getelementptr inbounds i8, ptr %94, i64 48
  store i32 %shr.i134.1, ptr %arrayidx85.1, align 4
  %arrayidx48.2 = getelementptr inbounds i8, ptr %85, i64 16
  %95 = load ptr, ptr %arrayidx48.2, align 8
  %96 = load i32, ptr %95, align 4
  %mul.2 = mul nsw i32 %96, %10
  %shl50.2 = shl i32 %mul.2, %7
  %add.i.2 = add nsw i32 %shl50.2, 32
  %shr.i.2 = ashr i32 %add.i.2, 6
  %97 = load ptr, ptr %arrayidx18.2, align 8
  store i32 %shr.i.2, ptr %97, align 4
  %98 = load ptr, ptr %M4, align 8
  %arrayidx57.2 = getelementptr inbounds i8, ptr %98, i64 16
  %99 = load ptr, ptr %arrayidx57.2, align 8
  %arrayidx58.2 = getelementptr inbounds i8, ptr %99, i64 4
  %100 = load i32, ptr %arrayidx58.2, align 4
  %mul59.2 = mul nsw i32 %100, %10
  %shl60.2 = shl i32 %mul59.2, %7
  %add.i129.2 = add nsw i32 %shl60.2, 32
  %shr.i130.2 = ashr i32 %add.i129.2, 6
  %101 = load ptr, ptr %arrayidx18.2, align 8
  %arrayidx65.2 = getelementptr inbounds i8, ptr %101, i64 16
  store i32 %shr.i130.2, ptr %arrayidx65.2, align 4
  %102 = load ptr, ptr %arrayidx57.2, align 8
  %arrayidx68.2 = getelementptr inbounds i8, ptr %102, i64 8
  %103 = load i32, ptr %arrayidx68.2, align 4
  %mul69.2 = mul nsw i32 %103, %10
  %shl70.2 = shl i32 %mul69.2, %7
  %add.i131.2 = add nsw i32 %shl70.2, 32
  %shr.i132.2 = ashr i32 %add.i131.2, 6
  %104 = load ptr, ptr %arrayidx18.2, align 8
  %arrayidx75.2 = getelementptr inbounds i8, ptr %104, i64 32
  store i32 %shr.i132.2, ptr %arrayidx75.2, align 4
  %105 = load ptr, ptr %arrayidx57.2, align 8
  %arrayidx78.2 = getelementptr inbounds i8, ptr %105, i64 12
  %106 = load i32, ptr %arrayidx78.2, align 4
  %mul79.2 = mul nsw i32 %106, %10
  %shl80.2 = shl i32 %mul79.2, %7
  %add.i133.2 = add nsw i32 %shl80.2, 32
  %shr.i134.2 = ashr i32 %add.i133.2, 6
  %107 = load ptr, ptr %arrayidx18.2, align 8
  %arrayidx85.2 = getelementptr inbounds i8, ptr %107, i64 48
  store i32 %shr.i134.2, ptr %arrayidx85.2, align 4
  %arrayidx48.3 = getelementptr inbounds i8, ptr %98, i64 24
  %108 = load ptr, ptr %arrayidx48.3, align 8
  %109 = load i32, ptr %108, align 4
  %mul.3 = mul nsw i32 %109, %10
  %shl50.3 = shl i32 %mul.3, %7
  %add.i.3 = add nsw i32 %shl50.3, 32
  %shr.i.3 = ashr i32 %add.i.3, 6
  %110 = load ptr, ptr %arrayidx18.3, align 8
  store i32 %shr.i.3, ptr %110, align 4
  %111 = load ptr, ptr %M4, align 8
  %arrayidx57.3 = getelementptr inbounds i8, ptr %111, i64 24
  %112 = load ptr, ptr %arrayidx57.3, align 8
  %arrayidx58.3 = getelementptr inbounds i8, ptr %112, i64 4
  %113 = load i32, ptr %arrayidx58.3, align 4
  %mul59.3 = mul nsw i32 %113, %10
  %shl60.3 = shl i32 %mul59.3, %7
  %add.i129.3 = add nsw i32 %shl60.3, 32
  %shr.i130.3 = ashr i32 %add.i129.3, 6
  %114 = load ptr, ptr %arrayidx18.3, align 8
  %arrayidx65.3 = getelementptr inbounds i8, ptr %114, i64 16
  store i32 %shr.i130.3, ptr %arrayidx65.3, align 4
  %115 = load ptr, ptr %arrayidx57.3, align 8
  %arrayidx68.3 = getelementptr inbounds i8, ptr %115, i64 8
  %116 = load i32, ptr %arrayidx68.3, align 4
  %mul69.3 = mul nsw i32 %116, %10
  %shl70.3 = shl i32 %mul69.3, %7
  %add.i131.3 = add nsw i32 %shl70.3, 32
  %shr.i132.3 = ashr i32 %add.i131.3, 6
  %117 = load ptr, ptr %arrayidx18.3, align 8
  %arrayidx75.3 = getelementptr inbounds i8, ptr %117, i64 32
  store i32 %shr.i132.3, ptr %arrayidx75.3, align 4
  %118 = load ptr, ptr %arrayidx57.3, align 8
  %arrayidx78.3 = getelementptr inbounds i8, ptr %118, i64 12
  %119 = load i32, ptr %arrayidx78.3, align 4
  %mul79.3 = mul nsw i32 %119, %10
  %shl80.3 = shl i32 %mul79.3, %7
  %add.i133.3 = add nsw i32 %shl80.3, 32
  %shr.i134.3 = ashr i32 %add.i133.3, 6
  %120 = load ptr, ptr %arrayidx18.3, align 8
  %arrayidx85.3 = getelementptr inbounds i8, ptr %120, i64 48
  store i32 %shr.i134.3, ptr %arrayidx85.3, align 4
  call void @free_mem2Dint(ptr noundef %111) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %M4) #8
  ret void
}

declare i32 @get_mem2Dint(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @ihadamard4x4(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @free_mem2Dint(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @itrans_sp(ptr nocapture noundef readonly %currMB, i32 noundef %pl, i32 noundef %ioff, i32 noundef %joff) #0 {
entry:
  %PBlock = alloca ptr, align 8
  %p_Vid1 = getelementptr inbounds i8, ptr %currMB, i64 8
  %0 = load ptr, ptr %p_Vid1, align 8
  %1 = load ptr, ptr %currMB, align 8
  %slice_type = getelementptr inbounds i8, ptr %1, i64 164
  %2 = load i32, ptr %slice_type, align 4
  %cmp = icmp eq i32 %2, 4
  %qs = getelementptr inbounds i8, ptr %1, i64 156
  %qp2 = getelementptr inbounds i8, ptr %1, i64 148
  %cond.in = select i1 %cmp, ptr %qs, ptr %qp2
  %cond = load i32, ptr %cond.in, align 4
  %qp_per_matrix = getelementptr inbounds i8, ptr %0, i64 856032
  %3 = load ptr, ptr %qp_per_matrix, align 8
  %idxprom = sext i32 %cond to i64
  %arrayidx = getelementptr inbounds i32, ptr %3, i64 %idxprom
  %4 = load i32, ptr %arrayidx, align 4
  %qp_rem_matrix = getelementptr inbounds i8, ptr %0, i64 856040
  %5 = load ptr, ptr %qp_rem_matrix, align 8
  %arrayidx4 = getelementptr inbounds i32, ptr %5, i64 %idxprom
  %6 = load i32, ptr %arrayidx4, align 4
  %7 = load i32, ptr %qs, align 4
  %idxprom7 = sext i32 %7 to i64
  %arrayidx8 = getelementptr inbounds i32, ptr %3, i64 %idxprom7
  %8 = load i32, ptr %arrayidx8, align 4
  %arrayidx12 = getelementptr inbounds i32, ptr %5, i64 %idxprom7
  %9 = load i32, ptr %arrayidx12, align 4
  %mb_pred13 = getelementptr inbounds i8, ptr %1, i64 1248
  %10 = load ptr, ptr %mb_pred13, align 8
  %idxprom14 = zext i32 %pl to i64
  %arrayidx15 = getelementptr inbounds ptr, ptr %10, i64 %idxprom14
  %11 = load ptr, ptr %arrayidx15, align 8
  %mb_rec16 = getelementptr inbounds i8, ptr %1, i64 1256
  %12 = load ptr, ptr %mb_rec16, align 8
  %arrayidx18 = getelementptr inbounds ptr, ptr %12, i64 %idxprom14
  %13 = load ptr, ptr %arrayidx18, align 8
  %mb_rres19 = getelementptr inbounds i8, ptr %1, i64 1264
  %14 = load ptr, ptr %mb_rres19, align 8
  %arrayidx21 = getelementptr inbounds ptr, ptr %14, i64 %idxprom14
  %15 = load ptr, ptr %arrayidx21, align 8
  %cof22 = getelementptr inbounds i8, ptr %1, i64 1272
  %16 = load ptr, ptr %cof22, align 8
  %arrayidx24 = getelementptr inbounds ptr, ptr %16, i64 %idxprom14
  %17 = load ptr, ptr %arrayidx24, align 8
  %max_pel_value_comp = getelementptr inbounds i8, ptr %0, i64 849072
  %arrayidx26 = getelementptr inbounds [3 x i32], ptr %max_pel_value_comp, i64 0, i64 %idxprom14
  %18 = load i32, ptr %arrayidx26, align 4
  %idxprom27 = sext i32 %6 to i64
  %idxprom29 = sext i32 %9 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %PBlock) #8
  %call = call i32 @get_mem2Dint(ptr noundef nonnull %PBlock, i32 noundef 16, i32 noundef 16) #8
  %idxprom36 = sext i32 %ioff to i64
  %19 = sext i32 %joff to i64
  %arrayidx35 = getelementptr inbounds ptr, ptr %11, i64 %19
  %20 = load ptr, ptr %arrayidx35, align 8
  %arrayidx37 = getelementptr inbounds i16, ptr %20, i64 %idxprom36
  %21 = load i16, ptr %arrayidx37, align 2
  %conv = zext i16 %21 to i32
  %22 = load ptr, ptr %PBlock, align 8
  %23 = load ptr, ptr %22, align 8
  store i32 %conv, ptr %23, align 4
  %24 = load ptr, ptr %arrayidx35, align 8
  %25 = getelementptr i16, ptr %24, i64 %idxprom36
  %arrayidx46 = getelementptr i8, ptr %25, i64 2
  %26 = load i16, ptr %arrayidx46, align 2
  %conv47 = zext i16 %26 to i32
  %27 = load ptr, ptr %PBlock, align 8
  %28 = load ptr, ptr %27, align 8
  %arrayidx50 = getelementptr inbounds i8, ptr %28, i64 4
  store i32 %conv47, ptr %arrayidx50, align 4
  %29 = load ptr, ptr %arrayidx35, align 8
  %30 = getelementptr i16, ptr %29, i64 %idxprom36
  %arrayidx56 = getelementptr i8, ptr %30, i64 4
  %31 = load i16, ptr %arrayidx56, align 2
  %conv57 = zext i16 %31 to i32
  %32 = load ptr, ptr %PBlock, align 8
  %33 = load ptr, ptr %32, align 8
  %arrayidx60 = getelementptr inbounds i8, ptr %33, i64 8
  store i32 %conv57, ptr %arrayidx60, align 4
  %34 = load ptr, ptr %arrayidx35, align 8
  %35 = getelementptr i16, ptr %34, i64 %idxprom36
  %arrayidx66 = getelementptr i8, ptr %35, i64 6
  %36 = load i16, ptr %arrayidx66, align 2
  %conv67 = zext i16 %36 to i32
  %37 = load ptr, ptr %32, align 8
  %arrayidx70 = getelementptr inbounds i8, ptr %37, i64 12
  store i32 %conv67, ptr %arrayidx70, align 4
  %38 = add nsw i64 %19, 1
  %arrayidx35.1 = getelementptr inbounds ptr, ptr %11, i64 %38
  %39 = load ptr, ptr %arrayidx35.1, align 8
  %arrayidx37.1 = getelementptr inbounds i16, ptr %39, i64 %idxprom36
  %40 = load i16, ptr %arrayidx37.1, align 2
  %conv.1 = zext i16 %40 to i32
  %arrayidx39.1 = getelementptr inbounds i8, ptr %32, i64 8
  %41 = load ptr, ptr %arrayidx39.1, align 8
  store i32 %conv.1, ptr %41, align 4
  %42 = load ptr, ptr %arrayidx35.1, align 8
  %43 = getelementptr i16, ptr %42, i64 %idxprom36
  %arrayidx46.1 = getelementptr i8, ptr %43, i64 2
  %44 = load i16, ptr %arrayidx46.1, align 2
  %conv47.1 = zext i16 %44 to i32
  %45 = load ptr, ptr %PBlock, align 8
  %arrayidx49.1 = getelementptr inbounds i8, ptr %45, i64 8
  %46 = load ptr, ptr %arrayidx49.1, align 8
  %arrayidx50.1 = getelementptr inbounds i8, ptr %46, i64 4
  store i32 %conv47.1, ptr %arrayidx50.1, align 4
  %47 = load ptr, ptr %arrayidx35.1, align 8
  %48 = getelementptr i16, ptr %47, i64 %idxprom36
  %arrayidx56.1 = getelementptr i8, ptr %48, i64 4
  %49 = load i16, ptr %arrayidx56.1, align 2
  %conv57.1 = zext i16 %49 to i32
  %50 = load ptr, ptr %PBlock, align 8
  %arrayidx59.1 = getelementptr inbounds i8, ptr %50, i64 8
  %51 = load ptr, ptr %arrayidx59.1, align 8
  %arrayidx60.1 = getelementptr inbounds i8, ptr %51, i64 8
  store i32 %conv57.1, ptr %arrayidx60.1, align 4
  %52 = load ptr, ptr %arrayidx35.1, align 8
  %53 = getelementptr i16, ptr %52, i64 %idxprom36
  %arrayidx66.1 = getelementptr i8, ptr %53, i64 6
  %54 = load i16, ptr %arrayidx66.1, align 2
  %conv67.1 = zext i16 %54 to i32
  %55 = load ptr, ptr %arrayidx59.1, align 8
  %arrayidx70.1 = getelementptr inbounds i8, ptr %55, i64 12
  store i32 %conv67.1, ptr %arrayidx70.1, align 4
  %56 = add nsw i64 %19, 2
  %arrayidx35.2 = getelementptr inbounds ptr, ptr %11, i64 %56
  %57 = load ptr, ptr %arrayidx35.2, align 8
  %arrayidx37.2 = getelementptr inbounds i16, ptr %57, i64 %idxprom36
  %58 = load i16, ptr %arrayidx37.2, align 2
  %conv.2 = zext i16 %58 to i32
  %arrayidx39.2 = getelementptr inbounds i8, ptr %50, i64 16
  %59 = load ptr, ptr %arrayidx39.2, align 8
  store i32 %conv.2, ptr %59, align 4
  %60 = load ptr, ptr %arrayidx35.2, align 8
  %61 = getelementptr i16, ptr %60, i64 %idxprom36
  %arrayidx46.2 = getelementptr i8, ptr %61, i64 2
  %62 = load i16, ptr %arrayidx46.2, align 2
  %conv47.2 = zext i16 %62 to i32
  %63 = load ptr, ptr %PBlock, align 8
  %arrayidx49.2 = getelementptr inbounds i8, ptr %63, i64 16
  %64 = load ptr, ptr %arrayidx49.2, align 8
  %arrayidx50.2 = getelementptr inbounds i8, ptr %64, i64 4
  store i32 %conv47.2, ptr %arrayidx50.2, align 4
  %65 = load ptr, ptr %arrayidx35.2, align 8
  %66 = getelementptr i16, ptr %65, i64 %idxprom36
  %arrayidx56.2 = getelementptr i8, ptr %66, i64 4
  %67 = load i16, ptr %arrayidx56.2, align 2
  %conv57.2 = zext i16 %67 to i32
  %68 = load ptr, ptr %PBlock, align 8
  %arrayidx59.2 = getelementptr inbounds i8, ptr %68, i64 16
  %69 = load ptr, ptr %arrayidx59.2, align 8
  %arrayidx60.2 = getelementptr inbounds i8, ptr %69, i64 8
  store i32 %conv57.2, ptr %arrayidx60.2, align 4
  %70 = load ptr, ptr %arrayidx35.2, align 8
  %71 = getelementptr i16, ptr %70, i64 %idxprom36
  %arrayidx66.2 = getelementptr i8, ptr %71, i64 6
  %72 = load i16, ptr %arrayidx66.2, align 2
  %conv67.2 = zext i16 %72 to i32
  %73 = load ptr, ptr %arrayidx59.2, align 8
  %arrayidx70.2 = getelementptr inbounds i8, ptr %73, i64 12
  store i32 %conv67.2, ptr %arrayidx70.2, align 4
  %74 = add nsw i64 %19, 3
  %arrayidx35.3 = getelementptr inbounds ptr, ptr %11, i64 %74
  %75 = load ptr, ptr %arrayidx35.3, align 8
  %arrayidx37.3 = getelementptr inbounds i16, ptr %75, i64 %idxprom36
  %76 = load i16, ptr %arrayidx37.3, align 2
  %conv.3 = zext i16 %76 to i32
  %arrayidx39.3 = getelementptr inbounds i8, ptr %68, i64 24
  %77 = load ptr, ptr %arrayidx39.3, align 8
  store i32 %conv.3, ptr %77, align 4
  %78 = load ptr, ptr %arrayidx35.3, align 8
  %79 = getelementptr i16, ptr %78, i64 %idxprom36
  %arrayidx46.3 = getelementptr i8, ptr %79, i64 2
  %80 = load i16, ptr %arrayidx46.3, align 2
  %conv47.3 = zext i16 %80 to i32
  %81 = load ptr, ptr %PBlock, align 8
  %arrayidx49.3 = getelementptr inbounds i8, ptr %81, i64 24
  %82 = load ptr, ptr %arrayidx49.3, align 8
  %arrayidx50.3 = getelementptr inbounds i8, ptr %82, i64 4
  store i32 %conv47.3, ptr %arrayidx50.3, align 4
  %83 = load ptr, ptr %arrayidx35.3, align 8
  %84 = getelementptr i16, ptr %83, i64 %idxprom36
  %arrayidx56.3 = getelementptr i8, ptr %84, i64 4
  %85 = load i16, ptr %arrayidx56.3, align 2
  %conv57.3 = zext i16 %85 to i32
  %86 = load ptr, ptr %PBlock, align 8
  %arrayidx59.3 = getelementptr inbounds i8, ptr %86, i64 24
  %87 = load ptr, ptr %arrayidx59.3, align 8
  %arrayidx60.3 = getelementptr inbounds i8, ptr %87, i64 8
  store i32 %conv57.3, ptr %arrayidx60.3, align 4
  %88 = load ptr, ptr %arrayidx35.3, align 8
  %89 = getelementptr i16, ptr %88, i64 %idxprom36
  %arrayidx66.3 = getelementptr i8, ptr %89, i64 6
  %90 = load i16, ptr %arrayidx66.3, align 2
  %conv67.3 = zext i16 %90 to i32
  %91 = load ptr, ptr %arrayidx59.3, align 8
  %arrayidx70.3 = getelementptr inbounds i8, ptr %91, i64 12
  store i32 %conv67.3, ptr %arrayidx70.3, align 4
  %add = add nsw i32 %8, 15
  %arrayidx28 = getelementptr inbounds [6 x [4 x [4 x i32]]], ptr @dequant_coef, i64 0, i64 %idxprom27
  %arrayidx30 = getelementptr inbounds [6 x [4 x [4 x i32]]], ptr @dequant_coef, i64 0, i64 %idxprom29
  call void @forward4x4(ptr noundef %86, ptr noundef %86, i32 noundef 0, i32 noundef 0) #8
  %sp_switch = getelementptr inbounds i8, ptr %1, i64 224
  %92 = load i32, ptr %sp_switch, align 8
  %tobool.not = icmp eq i32 %92, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %93 = load i32, ptr %slice_type, align 4
  %cmp72 = icmp eq i32 %93, 4
  br i1 %cmp72, label %if.then, label %for.cond127.preheader

for.cond127.preheader:                            ; preds = %lor.lhs.false
  %sub.i389 = add nsw i32 %8, 14
  %shl.i390 = shl nuw i32 1, %sub.i389
  %invariant.gep = getelementptr ptr, ptr %17, i64 %19
  br label %for.cond131.preheader

if.then:                                          ; preds = %lor.lhs.false, %entry
  %sub.i385 = add nsw i32 %8, 14
  %shl.i = shl nuw i32 1, %sub.i385
  %invariant.gep435 = getelementptr ptr, ptr %17, i64 %19
  br label %for.cond78.preheader

for.cond78.preheader:                             ; preds = %if.then, %for.cond78.preheader
  %indvars.iv426 = phi i64 [ 0, %if.then ], [ %indvars.iv.next427, %for.cond78.preheader ]
  %gep436 = getelementptr ptr, ptr %invariant.gep435, i64 %indvars.iv426
  %94 = load ptr, ptr %gep436, align 8
  %arrayidx87 = getelementptr inbounds i32, ptr %94, i64 %idxprom36
  %95 = load i32, ptr %arrayidx87, align 4
  %shr = ashr i32 %95, %4
  %arrayidx91 = getelementptr inbounds [4 x i32], ptr %arrayidx28, i64 %indvars.iv426, i64 0
  %96 = load i32, ptr %arrayidx91, align 16
  %div = sdiv i32 %shr, %96
  %97 = load ptr, ptr %PBlock, align 8
  %arrayidx93 = getelementptr inbounds ptr, ptr %97, i64 %indvars.iv426
  %98 = load ptr, ptr %arrayidx93, align 8
  %99 = load i32, ptr %98, align 4
  %sub.i = call i32 @llvm.abs.i32(i32 %99, i1 true)
  %arrayidx102 = getelementptr inbounds [6 x [4 x [4 x i32]]], ptr @quant_coef, i64 0, i64 %idxprom29, i64 %indvars.iv426, i64 0
  %100 = load i32, ptr %arrayidx102, align 16
  %mul = mul nsw i32 %sub.i, %100
  %add.i = add nsw i32 %mul, %shl.i
  %shr.i = ashr i32 %add.i, %add
  %cmp.i = icmp slt i32 %99, 0
  %sub.i.i = call i32 @llvm.abs.i32(i32 %shr.i, i1 true)
  %sub.i386 = sub nsw i32 0, %sub.i.i
  %cond.i = select i1 %cmp.i, i32 %sub.i386, i32 %sub.i.i
  %add109 = add nsw i32 %cond.i, %div
  %arrayidx113 = getelementptr inbounds [4 x i32], ptr %arrayidx30, i64 %indvars.iv426, i64 0
  %101 = load i32, ptr %arrayidx113, align 16
  %mul114 = mul nsw i32 %add109, %101
  %shl = shl i32 %mul114, %8
  store i32 %shl, ptr %arrayidx87, align 4
  %102 = load ptr, ptr %gep436, align 8
  %103 = getelementptr i32, ptr %102, i64 %idxprom36
  %arrayidx87.1 = getelementptr i8, ptr %103, i64 4
  %104 = load i32, ptr %arrayidx87.1, align 4
  %shr.1 = ashr i32 %104, %4
  %arrayidx91.1 = getelementptr inbounds [4 x i32], ptr %arrayidx28, i64 %indvars.iv426, i64 1
  %105 = load i32, ptr %arrayidx91.1, align 4
  %div.1 = sdiv i32 %shr.1, %105
  %106 = load ptr, ptr %PBlock, align 8
  %arrayidx93.1 = getelementptr inbounds ptr, ptr %106, i64 %indvars.iv426
  %107 = load ptr, ptr %arrayidx93.1, align 8
  %arrayidx95.1 = getelementptr inbounds i8, ptr %107, i64 4
  %108 = load i32, ptr %arrayidx95.1, align 4
  %sub.i.1 = call i32 @llvm.abs.i32(i32 %108, i1 true)
  %arrayidx102.1 = getelementptr inbounds [6 x [4 x [4 x i32]]], ptr @quant_coef, i64 0, i64 %idxprom29, i64 %indvars.iv426, i64 1
  %109 = load i32, ptr %arrayidx102.1, align 4
  %mul.1 = mul nsw i32 %sub.i.1, %109
  %add.i.1 = add nsw i32 %mul.1, %shl.i
  %shr.i.1 = ashr i32 %add.i.1, %add
  %cmp.i.1 = icmp slt i32 %108, 0
  %sub.i.i.1 = call i32 @llvm.abs.i32(i32 %shr.i.1, i1 true)
  %sub.i386.1 = sub nsw i32 0, %sub.i.i.1
  %cond.i.1 = select i1 %cmp.i.1, i32 %sub.i386.1, i32 %sub.i.i.1
  %add109.1 = add nsw i32 %cond.i.1, %div.1
  %arrayidx113.1 = getelementptr inbounds [4 x i32], ptr %arrayidx30, i64 %indvars.iv426, i64 1
  %110 = load i32, ptr %arrayidx113.1, align 4
  %mul114.1 = mul nsw i32 %add109.1, %110
  %shl.1 = shl i32 %mul114.1, %8
  store i32 %shl.1, ptr %arrayidx87.1, align 4
  %111 = load ptr, ptr %gep436, align 8
  %112 = getelementptr i32, ptr %111, i64 %idxprom36
  %arrayidx87.2 = getelementptr i8, ptr %112, i64 8
  %113 = load i32, ptr %arrayidx87.2, align 4
  %shr.2 = ashr i32 %113, %4
  %arrayidx91.2 = getelementptr inbounds [4 x i32], ptr %arrayidx28, i64 %indvars.iv426, i64 2
  %114 = load i32, ptr %arrayidx91.2, align 8
  %div.2 = sdiv i32 %shr.2, %114
  %115 = load ptr, ptr %PBlock, align 8
  %arrayidx93.2 = getelementptr inbounds ptr, ptr %115, i64 %indvars.iv426
  %116 = load ptr, ptr %arrayidx93.2, align 8
  %arrayidx95.2 = getelementptr inbounds i8, ptr %116, i64 8
  %117 = load i32, ptr %arrayidx95.2, align 4
  %sub.i.2 = call i32 @llvm.abs.i32(i32 %117, i1 true)
  %arrayidx102.2 = getelementptr inbounds [6 x [4 x [4 x i32]]], ptr @quant_coef, i64 0, i64 %idxprom29, i64 %indvars.iv426, i64 2
  %118 = load i32, ptr %arrayidx102.2, align 8
  %mul.2 = mul nsw i32 %sub.i.2, %118
  %add.i.2 = add nsw i32 %mul.2, %shl.i
  %shr.i.2 = ashr i32 %add.i.2, %add
  %cmp.i.2 = icmp slt i32 %117, 0
  %sub.i.i.2 = call i32 @llvm.abs.i32(i32 %shr.i.2, i1 true)
  %sub.i386.2 = sub nsw i32 0, %sub.i.i.2
  %cond.i.2 = select i1 %cmp.i.2, i32 %sub.i386.2, i32 %sub.i.i.2
  %add109.2 = add nsw i32 %cond.i.2, %div.2
  %arrayidx113.2 = getelementptr inbounds [4 x i32], ptr %arrayidx30, i64 %indvars.iv426, i64 2
  %119 = load i32, ptr %arrayidx113.2, align 8
  %mul114.2 = mul nsw i32 %add109.2, %119
  %shl.2 = shl i32 %mul114.2, %8
  store i32 %shl.2, ptr %arrayidx87.2, align 4
  %120 = load ptr, ptr %gep436, align 8
  %121 = getelementptr i32, ptr %120, i64 %idxprom36
  %arrayidx87.3 = getelementptr i8, ptr %121, i64 12
  %122 = load i32, ptr %arrayidx87.3, align 4
  %shr.3 = ashr i32 %122, %4
  %arrayidx91.3 = getelementptr inbounds [4 x i32], ptr %arrayidx28, i64 %indvars.iv426, i64 3
  %123 = load i32, ptr %arrayidx91.3, align 4
  %div.3 = sdiv i32 %shr.3, %123
  %124 = load ptr, ptr %PBlock, align 8
  %arrayidx93.3 = getelementptr inbounds ptr, ptr %124, i64 %indvars.iv426
  %125 = load ptr, ptr %arrayidx93.3, align 8
  %arrayidx95.3 = getelementptr inbounds i8, ptr %125, i64 12
  %126 = load i32, ptr %arrayidx95.3, align 4
  %sub.i.3 = call i32 @llvm.abs.i32(i32 %126, i1 true)
  %arrayidx102.3 = getelementptr inbounds [6 x [4 x [4 x i32]]], ptr @quant_coef, i64 0, i64 %idxprom29, i64 %indvars.iv426, i64 3
  %127 = load i32, ptr %arrayidx102.3, align 4
  %mul.3 = mul nsw i32 %sub.i.3, %127
  %add.i.3 = add nsw i32 %mul.3, %shl.i
  %shr.i.3 = ashr i32 %add.i.3, %add
  %cmp.i.3 = icmp slt i32 %126, 0
  %sub.i.i.3 = call i32 @llvm.abs.i32(i32 %shr.i.3, i1 true)
  %sub.i386.3 = sub nsw i32 0, %sub.i.i.3
  %cond.i.3 = select i1 %cmp.i.3, i32 %sub.i386.3, i32 %sub.i.i.3
  %add109.3 = add nsw i32 %cond.i.3, %div.3
  %arrayidx113.3 = getelementptr inbounds [4 x i32], ptr %arrayidx30, i64 %indvars.iv426, i64 3
  %128 = load i32, ptr %arrayidx113.3, align 4
  %mul114.3 = mul nsw i32 %add109.3, %128
  %shl.3 = shl i32 %mul114.3, %8
  store i32 %shl.3, ptr %arrayidx87.3, align 4
  %indvars.iv.next427 = add nuw nsw i64 %indvars.iv426, 1
  %exitcond430.not = icmp eq i64 %indvars.iv.next427, 4
  br i1 %exitcond430.not, label %for.end250, label %for.cond78.preheader

for.cond131.preheader:                            ; preds = %for.cond127.preheader, %for.cond131.preheader
  %indvars.iv = phi i64 [ 0, %for.cond127.preheader ], [ %indvars.iv.next, %for.cond131.preheader ]
  %gep = getelementptr ptr, ptr %invariant.gep, i64 %indvars.iv
  %129 = load ptr, ptr %gep, align 8
  %arrayidx140 = getelementptr inbounds i32, ptr %129, i64 %idxprom36
  %130 = load i32, ptr %arrayidx140, align 4
  %shr141 = ashr i32 %130, %4
  %arrayidx145 = getelementptr inbounds [4 x i32], ptr %arrayidx28, i64 %indvars.iv, i64 0
  %131 = load i32, ptr %arrayidx145, align 16
  %132 = load ptr, ptr %PBlock, align 8
  %arrayidx148 = getelementptr inbounds ptr, ptr %132, i64 %indvars.iv
  %133 = load ptr, ptr %arrayidx148, align 8
  %134 = load i32, ptr %133, align 4
  %shr141.fr = freeze i32 %shr141
  %135 = srem i32 %shr141.fr, %131
  %mul155 = sub nsw i32 %shr141.fr, %135
  %arrayidx159 = getelementptr inbounds [4 x [4 x i32]], ptr @A, i64 0, i64 %indvars.iv, i64 0
  %136 = load i32, ptr %arrayidx159, align 16
  %mul160 = mul nsw i32 %mul155, %136
  %shl161 = shl i32 %mul160, %4
  %shr162 = ashr i32 %shl161, 6
  %add163 = add nsw i32 %shr162, %134
  %x.lobit.neg.i = ashr i32 %add163, 31
  %isnotnull.i = icmp ne i32 %add163, 0
  %isnotnull.zext.i = zext i1 %isnotnull.i to i32
  %sub.i387 = or i32 %x.lobit.neg.i, %isnotnull.zext.i
  %sub.i388 = call i32 @llvm.abs.i32(i32 %add163, i1 true)
  %arrayidx171 = getelementptr inbounds [6 x [4 x [4 x i32]]], ptr @quant_coef, i64 0, i64 %idxprom29, i64 %indvars.iv, i64 0
  %137 = load i32, ptr %arrayidx171, align 16
  %mul172 = mul nsw i32 %sub.i388, %137
  %add.i391 = add nsw i32 %mul172, %shl.i390
  %shr.i392 = ashr i32 %add.i391, %add
  %arrayidx178 = getelementptr inbounds [4 x i32], ptr %arrayidx30, i64 %indvars.iv, i64 0
  %138 = load i32, ptr %arrayidx178, align 16
  %mul174 = mul i32 %sub.i387, %138
  %mul179 = mul i32 %mul174, %shr.i392
  %shl180 = shl i32 %mul179, %8
  store i32 %shl180, ptr %arrayidx140, align 4
  %139 = load ptr, ptr %gep, align 8
  %140 = getelementptr i32, ptr %139, i64 %idxprom36
  %arrayidx140.1 = getelementptr i8, ptr %140, i64 4
  %141 = load i32, ptr %arrayidx140.1, align 4
  %shr141.1 = ashr i32 %141, %4
  %arrayidx145.1 = getelementptr inbounds [4 x i32], ptr %arrayidx28, i64 %indvars.iv, i64 1
  %142 = load i32, ptr %arrayidx145.1, align 4
  %143 = load ptr, ptr %PBlock, align 8
  %arrayidx148.1 = getelementptr inbounds ptr, ptr %143, i64 %indvars.iv
  %144 = load ptr, ptr %arrayidx148.1, align 8
  %arrayidx150.1 = getelementptr inbounds i8, ptr %144, i64 4
  %145 = load i32, ptr %arrayidx150.1, align 4
  %shr141.fr.1 = freeze i32 %shr141.1
  %146 = srem i32 %shr141.fr.1, %142
  %mul155.1 = sub nsw i32 %shr141.fr.1, %146
  %arrayidx159.1 = getelementptr inbounds [4 x [4 x i32]], ptr @A, i64 0, i64 %indvars.iv, i64 1
  %147 = load i32, ptr %arrayidx159.1, align 4
  %mul160.1 = mul nsw i32 %mul155.1, %147
  %shl161.1 = shl i32 %mul160.1, %4
  %shr162.1 = ashr i32 %shl161.1, 6
  %add163.1 = add nsw i32 %shr162.1, %145
  %x.lobit.neg.i.1 = ashr i32 %add163.1, 31
  %isnotnull.i.1 = icmp ne i32 %add163.1, 0
  %isnotnull.zext.i.1 = zext i1 %isnotnull.i.1 to i32
  %sub.i387.1 = or i32 %x.lobit.neg.i.1, %isnotnull.zext.i.1
  %sub.i388.1 = call i32 @llvm.abs.i32(i32 %add163.1, i1 true)
  %arrayidx171.1 = getelementptr inbounds [6 x [4 x [4 x i32]]], ptr @quant_coef, i64 0, i64 %idxprom29, i64 %indvars.iv, i64 1
  %148 = load i32, ptr %arrayidx171.1, align 4
  %mul172.1 = mul nsw i32 %sub.i388.1, %148
  %add.i391.1 = add nsw i32 %mul172.1, %shl.i390
  %shr.i392.1 = ashr i32 %add.i391.1, %add
  %arrayidx178.1 = getelementptr inbounds [4 x i32], ptr %arrayidx30, i64 %indvars.iv, i64 1
  %149 = load i32, ptr %arrayidx178.1, align 4
  %mul174.1 = mul i32 %sub.i387.1, %149
  %mul179.1 = mul i32 %mul174.1, %shr.i392.1
  %shl180.1 = shl i32 %mul179.1, %8
  store i32 %shl180.1, ptr %arrayidx140.1, align 4
  %150 = load ptr, ptr %gep, align 8
  %151 = getelementptr i32, ptr %150, i64 %idxprom36
  %arrayidx140.2 = getelementptr i8, ptr %151, i64 8
  %152 = load i32, ptr %arrayidx140.2, align 4
  %shr141.2 = ashr i32 %152, %4
  %arrayidx145.2 = getelementptr inbounds [4 x i32], ptr %arrayidx28, i64 %indvars.iv, i64 2
  %153 = load i32, ptr %arrayidx145.2, align 8
  %154 = load ptr, ptr %PBlock, align 8
  %arrayidx148.2 = getelementptr inbounds ptr, ptr %154, i64 %indvars.iv
  %155 = load ptr, ptr %arrayidx148.2, align 8
  %arrayidx150.2 = getelementptr inbounds i8, ptr %155, i64 8
  %156 = load i32, ptr %arrayidx150.2, align 4
  %shr141.fr.2 = freeze i32 %shr141.2
  %157 = srem i32 %shr141.fr.2, %153
  %mul155.2 = sub nsw i32 %shr141.fr.2, %157
  %arrayidx159.2 = getelementptr inbounds [4 x [4 x i32]], ptr @A, i64 0, i64 %indvars.iv, i64 2
  %158 = load i32, ptr %arrayidx159.2, align 8
  %mul160.2 = mul nsw i32 %mul155.2, %158
  %shl161.2 = shl i32 %mul160.2, %4
  %shr162.2 = ashr i32 %shl161.2, 6
  %add163.2 = add nsw i32 %shr162.2, %156
  %x.lobit.neg.i.2 = ashr i32 %add163.2, 31
  %isnotnull.i.2 = icmp ne i32 %add163.2, 0
  %isnotnull.zext.i.2 = zext i1 %isnotnull.i.2 to i32
  %sub.i387.2 = or i32 %x.lobit.neg.i.2, %isnotnull.zext.i.2
  %sub.i388.2 = call i32 @llvm.abs.i32(i32 %add163.2, i1 true)
  %arrayidx171.2 = getelementptr inbounds [6 x [4 x [4 x i32]]], ptr @quant_coef, i64 0, i64 %idxprom29, i64 %indvars.iv, i64 2
  %159 = load i32, ptr %arrayidx171.2, align 8
  %mul172.2 = mul nsw i32 %sub.i388.2, %159
  %add.i391.2 = add nsw i32 %mul172.2, %shl.i390
  %shr.i392.2 = ashr i32 %add.i391.2, %add
  %arrayidx178.2 = getelementptr inbounds [4 x i32], ptr %arrayidx30, i64 %indvars.iv, i64 2
  %160 = load i32, ptr %arrayidx178.2, align 8
  %mul174.2 = mul i32 %sub.i387.2, %160
  %mul179.2 = mul i32 %mul174.2, %shr.i392.2
  %shl180.2 = shl i32 %mul179.2, %8
  store i32 %shl180.2, ptr %arrayidx140.2, align 4
  %161 = load ptr, ptr %gep, align 8
  %162 = getelementptr i32, ptr %161, i64 %idxprom36
  %arrayidx140.3 = getelementptr i8, ptr %162, i64 12
  %163 = load i32, ptr %arrayidx140.3, align 4
  %shr141.3 = ashr i32 %163, %4
  %arrayidx145.3 = getelementptr inbounds [4 x i32], ptr %arrayidx28, i64 %indvars.iv, i64 3
  %164 = load i32, ptr %arrayidx145.3, align 4
  %165 = load ptr, ptr %PBlock, align 8
  %arrayidx148.3 = getelementptr inbounds ptr, ptr %165, i64 %indvars.iv
  %166 = load ptr, ptr %arrayidx148.3, align 8
  %arrayidx150.3 = getelementptr inbounds i8, ptr %166, i64 12
  %167 = load i32, ptr %arrayidx150.3, align 4
  %shr141.fr.3 = freeze i32 %shr141.3
  %168 = srem i32 %shr141.fr.3, %164
  %mul155.3 = sub nsw i32 %shr141.fr.3, %168
  %arrayidx159.3 = getelementptr inbounds [4 x [4 x i32]], ptr @A, i64 0, i64 %indvars.iv, i64 3
  %169 = load i32, ptr %arrayidx159.3, align 4
  %mul160.3 = mul nsw i32 %mul155.3, %169
  %shl161.3 = shl i32 %mul160.3, %4
  %shr162.3 = ashr i32 %shl161.3, 6
  %add163.3 = add nsw i32 %shr162.3, %167
  %x.lobit.neg.i.3 = ashr i32 %add163.3, 31
  %isnotnull.i.3 = icmp ne i32 %add163.3, 0
  %isnotnull.zext.i.3 = zext i1 %isnotnull.i.3 to i32
  %sub.i387.3 = or i32 %x.lobit.neg.i.3, %isnotnull.zext.i.3
  %sub.i388.3 = call i32 @llvm.abs.i32(i32 %add163.3, i1 true)
  %arrayidx171.3 = getelementptr inbounds [6 x [4 x [4 x i32]]], ptr @quant_coef, i64 0, i64 %idxprom29, i64 %indvars.iv, i64 3
  %170 = load i32, ptr %arrayidx171.3, align 4
  %mul172.3 = mul nsw i32 %sub.i388.3, %170
  %add.i391.3 = add nsw i32 %mul172.3, %shl.i390
  %shr.i392.3 = ashr i32 %add.i391.3, %add
  %arrayidx178.3 = getelementptr inbounds [4 x i32], ptr %arrayidx30, i64 %indvars.iv, i64 3
  %171 = load i32, ptr %arrayidx178.3, align 4
  %mul174.3 = mul i32 %sub.i387.3, %171
  %mul179.3 = mul i32 %mul174.3, %shr.i392.3
  %shl180.3 = shl i32 %mul179.3, %8
  store i32 %shl180.3, ptr %arrayidx140.3, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 4
  br i1 %exitcond.not, label %for.end250, label %for.cond131.preheader

for.end250:                                       ; preds = %for.cond131.preheader, %for.cond78.preheader
  call void @inverse4x4(ptr noundef nonnull %17, ptr noundef %15, i32 noundef %joff, i32 noundef %ioff) #8
  %add211 = add nsw i32 %ioff, 1
  %idxprom212 = sext i32 %add211 to i64
  %add224 = add nsw i32 %ioff, 2
  %idxprom225 = sext i32 %add224 to i64
  %add237 = add nsw i32 %ioff, 3
  %idxprom238 = sext i32 %add237 to i64
  %arrayidx199 = getelementptr inbounds ptr, ptr %15, i64 %19
  %172 = load ptr, ptr %arrayidx199, align 8
  %arrayidx201 = getelementptr inbounds i32, ptr %172, i64 %idxprom36
  %173 = load i32, ptr %arrayidx201, align 4
  %add.i393 = add nsw i32 %173, 32
  %shr.i394 = ashr i32 %add.i393, 6
  %cond.i.i = call noundef i32 @llvm.smax.i32(i32 %shr.i394, i32 0)
  %cond.i4.i = call noundef i32 @llvm.smin.i32(i32 %cond.i.i, i32 %18)
  %conv204 = trunc i32 %cond.i4.i to i16
  %arrayidx206 = getelementptr inbounds ptr, ptr %13, i64 %19
  %174 = load ptr, ptr %arrayidx206, align 8
  %arrayidx208 = getelementptr inbounds i16, ptr %174, i64 %idxprom36
  store i16 %conv204, ptr %arrayidx208, align 2
  %175 = load ptr, ptr %arrayidx199, align 8
  %arrayidx213 = getelementptr inbounds i32, ptr %175, i64 %idxprom212
  %176 = load i32, ptr %arrayidx213, align 4
  %add.i395 = add nsw i32 %176, 32
  %shr.i396 = ashr i32 %add.i395, 6
  %cond.i.i397 = call noundef i32 @llvm.smax.i32(i32 %shr.i396, i32 0)
  %cond.i4.i398 = call noundef i32 @llvm.smin.i32(i32 %cond.i.i397, i32 %18)
  %conv216 = trunc i32 %cond.i4.i398 to i16
  %177 = load ptr, ptr %arrayidx206, align 8
  %arrayidx221 = getelementptr inbounds i16, ptr %177, i64 %idxprom212
  store i16 %conv216, ptr %arrayidx221, align 2
  %178 = load ptr, ptr %arrayidx199, align 8
  %arrayidx226 = getelementptr inbounds i32, ptr %178, i64 %idxprom225
  %179 = load i32, ptr %arrayidx226, align 4
  %add.i399 = add nsw i32 %179, 32
  %shr.i400 = ashr i32 %add.i399, 6
  %cond.i.i401 = call noundef i32 @llvm.smax.i32(i32 %shr.i400, i32 0)
  %cond.i4.i402 = call noundef i32 @llvm.smin.i32(i32 %cond.i.i401, i32 %18)
  %conv229 = trunc i32 %cond.i4.i402 to i16
  %180 = load ptr, ptr %arrayidx206, align 8
  %arrayidx234 = getelementptr inbounds i16, ptr %180, i64 %idxprom225
  store i16 %conv229, ptr %arrayidx234, align 2
  %181 = load ptr, ptr %arrayidx199, align 8
  %arrayidx239 = getelementptr inbounds i32, ptr %181, i64 %idxprom238
  %182 = load i32, ptr %arrayidx239, align 4
  %add.i403 = add nsw i32 %182, 32
  %shr.i404 = ashr i32 %add.i403, 6
  %cond.i.i405 = call noundef i32 @llvm.smax.i32(i32 %shr.i404, i32 0)
  %cond.i4.i406 = call noundef i32 @llvm.smin.i32(i32 %cond.i.i405, i32 %18)
  %conv242 = trunc i32 %cond.i4.i406 to i16
  %183 = load ptr, ptr %arrayidx206, align 8
  %arrayidx247 = getelementptr inbounds i16, ptr %183, i64 %idxprom238
  store i16 %conv242, ptr %arrayidx247, align 2
  %arrayidx199.1 = getelementptr inbounds ptr, ptr %15, i64 %38
  %184 = load ptr, ptr %arrayidx199.1, align 8
  %arrayidx201.1 = getelementptr inbounds i32, ptr %184, i64 %idxprom36
  %185 = load i32, ptr %arrayidx201.1, align 4
  %add.i393.1 = add nsw i32 %185, 32
  %shr.i394.1 = ashr i32 %add.i393.1, 6
  %cond.i.i.1 = call noundef i32 @llvm.smax.i32(i32 %shr.i394.1, i32 0)
  %cond.i4.i.1 = call noundef i32 @llvm.smin.i32(i32 %cond.i.i.1, i32 %18)
  %conv204.1 = trunc i32 %cond.i4.i.1 to i16
  %arrayidx206.1 = getelementptr inbounds ptr, ptr %13, i64 %38
  %186 = load ptr, ptr %arrayidx206.1, align 8
  %arrayidx208.1 = getelementptr inbounds i16, ptr %186, i64 %idxprom36
  store i16 %conv204.1, ptr %arrayidx208.1, align 2
  %187 = load ptr, ptr %arrayidx199.1, align 8
  %arrayidx213.1 = getelementptr inbounds i32, ptr %187, i64 %idxprom212
  %188 = load i32, ptr %arrayidx213.1, align 4
  %add.i395.1 = add nsw i32 %188, 32
  %shr.i396.1 = ashr i32 %add.i395.1, 6
  %cond.i.i397.1 = call noundef i32 @llvm.smax.i32(i32 %shr.i396.1, i32 0)
  %cond.i4.i398.1 = call noundef i32 @llvm.smin.i32(i32 %cond.i.i397.1, i32 %18)
  %conv216.1 = trunc i32 %cond.i4.i398.1 to i16
  %189 = load ptr, ptr %arrayidx206.1, align 8
  %arrayidx221.1 = getelementptr inbounds i16, ptr %189, i64 %idxprom212
  store i16 %conv216.1, ptr %arrayidx221.1, align 2
  %190 = load ptr, ptr %arrayidx199.1, align 8
  %arrayidx226.1 = getelementptr inbounds i32, ptr %190, i64 %idxprom225
  %191 = load i32, ptr %arrayidx226.1, align 4
  %add.i399.1 = add nsw i32 %191, 32
  %shr.i400.1 = ashr i32 %add.i399.1, 6
  %cond.i.i401.1 = call noundef i32 @llvm.smax.i32(i32 %shr.i400.1, i32 0)
  %cond.i4.i402.1 = call noundef i32 @llvm.smin.i32(i32 %cond.i.i401.1, i32 %18)
  %conv229.1 = trunc i32 %cond.i4.i402.1 to i16
  %192 = load ptr, ptr %arrayidx206.1, align 8
  %arrayidx234.1 = getelementptr inbounds i16, ptr %192, i64 %idxprom225
  store i16 %conv229.1, ptr %arrayidx234.1, align 2
  %193 = load ptr, ptr %arrayidx199.1, align 8
  %arrayidx239.1 = getelementptr inbounds i32, ptr %193, i64 %idxprom238
  %194 = load i32, ptr %arrayidx239.1, align 4
  %add.i403.1 = add nsw i32 %194, 32
  %shr.i404.1 = ashr i32 %add.i403.1, 6
  %cond.i.i405.1 = call noundef i32 @llvm.smax.i32(i32 %shr.i404.1, i32 0)
  %cond.i4.i406.1 = call noundef i32 @llvm.smin.i32(i32 %cond.i.i405.1, i32 %18)
  %conv242.1 = trunc i32 %cond.i4.i406.1 to i16
  %195 = load ptr, ptr %arrayidx206.1, align 8
  %arrayidx247.1 = getelementptr inbounds i16, ptr %195, i64 %idxprom238
  store i16 %conv242.1, ptr %arrayidx247.1, align 2
  %arrayidx199.2 = getelementptr inbounds ptr, ptr %15, i64 %56
  %196 = load ptr, ptr %arrayidx199.2, align 8
  %arrayidx201.2 = getelementptr inbounds i32, ptr %196, i64 %idxprom36
  %197 = load i32, ptr %arrayidx201.2, align 4
  %add.i393.2 = add nsw i32 %197, 32
  %shr.i394.2 = ashr i32 %add.i393.2, 6
  %cond.i.i.2 = call noundef i32 @llvm.smax.i32(i32 %shr.i394.2, i32 0)
  %cond.i4.i.2 = call noundef i32 @llvm.smin.i32(i32 %cond.i.i.2, i32 %18)
  %conv204.2 = trunc i32 %cond.i4.i.2 to i16
  %arrayidx206.2 = getelementptr inbounds ptr, ptr %13, i64 %56
  %198 = load ptr, ptr %arrayidx206.2, align 8
  %arrayidx208.2 = getelementptr inbounds i16, ptr %198, i64 %idxprom36
  store i16 %conv204.2, ptr %arrayidx208.2, align 2
  %199 = load ptr, ptr %arrayidx199.2, align 8
  %arrayidx213.2 = getelementptr inbounds i32, ptr %199, i64 %idxprom212
  %200 = load i32, ptr %arrayidx213.2, align 4
  %add.i395.2 = add nsw i32 %200, 32
  %shr.i396.2 = ashr i32 %add.i395.2, 6
  %cond.i.i397.2 = call noundef i32 @llvm.smax.i32(i32 %shr.i396.2, i32 0)
  %cond.i4.i398.2 = call noundef i32 @llvm.smin.i32(i32 %cond.i.i397.2, i32 %18)
  %conv216.2 = trunc i32 %cond.i4.i398.2 to i16
  %201 = load ptr, ptr %arrayidx206.2, align 8
  %arrayidx221.2 = getelementptr inbounds i16, ptr %201, i64 %idxprom212
  store i16 %conv216.2, ptr %arrayidx221.2, align 2
  %202 = load ptr, ptr %arrayidx199.2, align 8
  %arrayidx226.2 = getelementptr inbounds i32, ptr %202, i64 %idxprom225
  %203 = load i32, ptr %arrayidx226.2, align 4
  %add.i399.2 = add nsw i32 %203, 32
  %shr.i400.2 = ashr i32 %add.i399.2, 6
  %cond.i.i401.2 = call noundef i32 @llvm.smax.i32(i32 %shr.i400.2, i32 0)
  %cond.i4.i402.2 = call noundef i32 @llvm.smin.i32(i32 %cond.i.i401.2, i32 %18)
  %conv229.2 = trunc i32 %cond.i4.i402.2 to i16
  %204 = load ptr, ptr %arrayidx206.2, align 8
  %arrayidx234.2 = getelementptr inbounds i16, ptr %204, i64 %idxprom225
  store i16 %conv229.2, ptr %arrayidx234.2, align 2
  %205 = load ptr, ptr %arrayidx199.2, align 8
  %arrayidx239.2 = getelementptr inbounds i32, ptr %205, i64 %idxprom238
  %206 = load i32, ptr %arrayidx239.2, align 4
  %add.i403.2 = add nsw i32 %206, 32
  %shr.i404.2 = ashr i32 %add.i403.2, 6
  %cond.i.i405.2 = call noundef i32 @llvm.smax.i32(i32 %shr.i404.2, i32 0)
  %cond.i4.i406.2 = call noundef i32 @llvm.smin.i32(i32 %cond.i.i405.2, i32 %18)
  %conv242.2 = trunc i32 %cond.i4.i406.2 to i16
  %207 = load ptr, ptr %arrayidx206.2, align 8
  %arrayidx247.2 = getelementptr inbounds i16, ptr %207, i64 %idxprom238
  store i16 %conv242.2, ptr %arrayidx247.2, align 2
  %arrayidx199.3 = getelementptr inbounds ptr, ptr %15, i64 %74
  %208 = load ptr, ptr %arrayidx199.3, align 8
  %arrayidx201.3 = getelementptr inbounds i32, ptr %208, i64 %idxprom36
  %209 = load i32, ptr %arrayidx201.3, align 4
  %add.i393.3 = add nsw i32 %209, 32
  %shr.i394.3 = ashr i32 %add.i393.3, 6
  %cond.i.i.3 = call noundef i32 @llvm.smax.i32(i32 %shr.i394.3, i32 0)
  %cond.i4.i.3 = call noundef i32 @llvm.smin.i32(i32 %cond.i.i.3, i32 %18)
  %conv204.3 = trunc i32 %cond.i4.i.3 to i16
  %arrayidx206.3 = getelementptr inbounds ptr, ptr %13, i64 %74
  %210 = load ptr, ptr %arrayidx206.3, align 8
  %arrayidx208.3 = getelementptr inbounds i16, ptr %210, i64 %idxprom36
  store i16 %conv204.3, ptr %arrayidx208.3, align 2
  %211 = load ptr, ptr %arrayidx199.3, align 8
  %arrayidx213.3 = getelementptr inbounds i32, ptr %211, i64 %idxprom212
  %212 = load i32, ptr %arrayidx213.3, align 4
  %add.i395.3 = add nsw i32 %212, 32
  %shr.i396.3 = ashr i32 %add.i395.3, 6
  %cond.i.i397.3 = call noundef i32 @llvm.smax.i32(i32 %shr.i396.3, i32 0)
  %cond.i4.i398.3 = call noundef i32 @llvm.smin.i32(i32 %cond.i.i397.3, i32 %18)
  %conv216.3 = trunc i32 %cond.i4.i398.3 to i16
  %213 = load ptr, ptr %arrayidx206.3, align 8
  %arrayidx221.3 = getelementptr inbounds i16, ptr %213, i64 %idxprom212
  store i16 %conv216.3, ptr %arrayidx221.3, align 2
  %214 = load ptr, ptr %arrayidx199.3, align 8
  %arrayidx226.3 = getelementptr inbounds i32, ptr %214, i64 %idxprom225
  %215 = load i32, ptr %arrayidx226.3, align 4
  %add.i399.3 = add nsw i32 %215, 32
  %shr.i400.3 = ashr i32 %add.i399.3, 6
  %cond.i.i401.3 = call noundef i32 @llvm.smax.i32(i32 %shr.i400.3, i32 0)
  %cond.i4.i402.3 = call noundef i32 @llvm.smin.i32(i32 %cond.i.i401.3, i32 %18)
  %conv229.3 = trunc i32 %cond.i4.i402.3 to i16
  %216 = load ptr, ptr %arrayidx206.3, align 8
  %arrayidx234.3 = getelementptr inbounds i16, ptr %216, i64 %idxprom225
  store i16 %conv229.3, ptr %arrayidx234.3, align 2
  %217 = load ptr, ptr %arrayidx199.3, align 8
  %arrayidx239.3 = getelementptr inbounds i32, ptr %217, i64 %idxprom238
  %218 = load i32, ptr %arrayidx239.3, align 4
  %add.i403.3 = add nsw i32 %218, 32
  %shr.i404.3 = ashr i32 %add.i403.3, 6
  %cond.i.i405.3 = call noundef i32 @llvm.smax.i32(i32 %shr.i404.3, i32 0)
  %cond.i4.i406.3 = call noundef i32 @llvm.smin.i32(i32 %cond.i.i405.3, i32 %18)
  %conv242.3 = trunc i32 %cond.i4.i406.3 to i16
  %219 = load ptr, ptr %arrayidx206.3, align 8
  %arrayidx247.3 = getelementptr inbounds i16, ptr %219, i64 %idxprom238
  store i16 %conv242.3, ptr %arrayidx247.3, align 2
  %220 = load ptr, ptr %PBlock, align 8
  call void @free_mem2Dint(ptr noundef %220) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %PBlock) #8
  ret void
}

declare void @forward4x4(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @itrans_sp_cr(ptr nocapture noundef readonly %currMB, i32 noundef %uv) local_unnamed_addr #0 {
entry:
  %0 = load ptr, ptr %currMB, align 8
  %p_Vid1 = getelementptr inbounds i8, ptr %currMB, i64 8
  %1 = load ptr, ptr %p_Vid1, align 8
  %mb_pred2 = getelementptr inbounds i8, ptr %0, i64 1248
  %2 = load ptr, ptr %mb_pred2, align 8
  %add = add nsw i32 %uv, 1
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds ptr, ptr %2, i64 %idxprom
  %3 = load ptr, ptr %arrayidx, align 8
  %cof3 = getelementptr inbounds i8, ptr %0, i64 1272
  %4 = load ptr, ptr %cof3, align 8
  %arrayidx6 = getelementptr inbounds ptr, ptr %4, i64 %idxprom
  %5 = load ptr, ptr %arrayidx6, align 8
  %call = tail call ptr @new_mem2Dint(i32 noundef 16, i32 noundef 16) #8
  %qp_per_matrix = getelementptr inbounds i8, ptr %1, i64 856032
  %6 = load ptr, ptr %qp_per_matrix, align 8
  %qp = getelementptr inbounds i8, ptr %0, i64 148
  %7 = load i32, ptr %qp, align 4
  %cmp = icmp slt i32 %7, 0
  br i1 %cmp, label %cond.end.thread, label %cond.false18

cond.end.thread:                                  ; preds = %entry
  %idxprom11699 = sext i32 %7 to i64
  br label %cond.end23

cond.false18:                                     ; preds = %entry
  %idxprom9 = zext nneg i32 %7 to i64
  %arrayidx10 = getelementptr inbounds [52 x i8], ptr @QP_SCALE_CR, i64 0, i64 %idxprom9
  %8 = load i8, ptr %arrayidx10, align 1
  %idxprom11 = zext i8 %8 to i64
  %.pre = zext i8 %8 to i64
  br label %cond.end23

cond.end23:                                       ; preds = %cond.end.thread, %cond.false18
  %idxprom25.pre-phi = phi i64 [ %idxprom11699, %cond.end.thread ], [ %.pre, %cond.false18 ]
  %idxprom11.pn = phi i64 [ %idxprom11699, %cond.end.thread ], [ %idxprom11, %cond.false18 ]
  %.in705 = getelementptr inbounds i32, ptr %6, i64 %idxprom11.pn
  %9 = load i32, ptr %.in705, align 4
  %.in = getelementptr inbounds i8, ptr %1, i64 856040
  %10 = load ptr, ptr %.in, align 8
  %arrayidx26 = getelementptr inbounds i32, ptr %10, i64 %idxprom25.pre-phi
  %11 = load i32, ptr %arrayidx26, align 4
  %qs = getelementptr inbounds i8, ptr %0, i64 156
  %12 = load i32, ptr %qs, align 4
  %cmp28 = icmp slt i32 %12, 0
  br i1 %cmp28, label %cond.end37.thread, label %cond.false47

cond.end37.thread:                                ; preds = %cond.end23
  %idxprom39703 = sext i32 %12 to i64
  br label %cond.end52

cond.false47:                                     ; preds = %cond.end23
  %idxprom34 = zext nneg i32 %12 to i64
  %arrayidx35 = getelementptr inbounds [52 x i8], ptr @QP_SCALE_CR, i64 0, i64 %idxprom34
  %13 = load i8, ptr %arrayidx35, align 1
  %idxprom39 = zext i8 %13 to i64
  %.pre838 = zext i8 %13 to i64
  br label %cond.end52

cond.end52:                                       ; preds = %cond.end37.thread, %cond.false47
  %idxprom54.pre-phi = phi i64 [ %idxprom39703, %cond.end37.thread ], [ %.pre838, %cond.false47 ]
  %idxprom39.pn = phi i64 [ %idxprom39703, %cond.end37.thread ], [ %idxprom39, %cond.false47 ]
  %.in706 = getelementptr inbounds i32, ptr %6, i64 %idxprom39.pn
  %14 = load i32, ptr %.in706, align 4
  %arrayidx55 = getelementptr inbounds i32, ptr %10, i64 %idxprom54.pre-phi
  %15 = load i32, ptr %arrayidx55, align 4
  %add56 = add nsw i32 %14, 15
  %slice_type = getelementptr inbounds i8, ptr %0, i64 164
  %16 = load i32, ptr %slice_type, align 4
  %cmp57 = icmp eq i32 %16, 4
  %spec.select = select i1 %cmp57, i32 %15, i32 %11
  %spec.select671 = select i1 %cmp57, i32 %14, i32 %9
  %mb_cr_size_y = getelementptr inbounds i8, ptr %1, i64 849112
  %17 = load i32, ptr %mb_cr_size_y, align 8
  %cmp59721 = icmp sgt i32 %17, 0
  br i1 %cmp59721, label %for.cond61.preheader.lr.ph, label %for.end96

for.cond61.preheader.lr.ph:                       ; preds = %cond.end52
  %mb_cr_size_x = getelementptr inbounds i8, ptr %1, i64 849108
  %18 = load i32, ptr %mb_cr_size_x, align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %for.cond61.preheader, label %for.cond86.preheader.lr.ph

for.cond61.preheader:                             ; preds = %for.cond61.preheader.lr.ph, %for.inc78
  %20 = phi i32 [ %31, %for.inc78 ], [ %17, %for.cond61.preheader.lr.ph ]
  %21 = phi i32 [ %32, %for.inc78 ], [ %18, %for.cond61.preheader.lr.ph ]
  %indvars.iv749 = phi i64 [ %indvars.iv.next750, %for.inc78 ], [ 0, %for.cond61.preheader.lr.ph ]
  %cmp62719 = icmp sgt i32 %21, 0
  br i1 %cmp62719, label %for.body64.lr.ph, label %for.inc78

for.body64.lr.ph:                                 ; preds = %for.cond61.preheader
  %arrayidx66 = getelementptr inbounds ptr, ptr %3, i64 %indvars.iv749
  %arrayidx71 = getelementptr inbounds ptr, ptr %call, i64 %indvars.iv749
  br label %for.body64

for.cond81.preheader:                             ; preds = %for.inc78
  %cmp83725 = icmp sgt i32 %31, 0
  br i1 %cmp83725, label %for.cond86.preheader.lr.ph, label %for.end96

for.cond86.preheader.lr.ph:                       ; preds = %for.cond61.preheader.lr.ph, %for.cond81.preheader
  %22 = phi i32 [ %31, %for.cond81.preheader ], [ %17, %for.cond61.preheader.lr.ph ]
  %mb_cr_size_x87 = getelementptr inbounds i8, ptr %1, i64 849108
  %23 = load i32, ptr %mb_cr_size_x87, align 4
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %for.cond86.preheader, label %for.end96

for.body64:                                       ; preds = %for.body64.lr.ph, %for.body64
  %indvars.iv = phi i64 [ 0, %for.body64.lr.ph ], [ %indvars.iv.next, %for.body64 ]
  %25 = load ptr, ptr %arrayidx66, align 8
  %arrayidx68 = getelementptr inbounds i16, ptr %25, i64 %indvars.iv
  %26 = load i16, ptr %arrayidx68, align 2
  %conv69 = zext i16 %26 to i32
  %27 = load ptr, ptr %arrayidx71, align 8
  %arrayidx73 = getelementptr inbounds i32, ptr %27, i64 %indvars.iv
  store i32 %conv69, ptr %arrayidx73, align 4
  %28 = load ptr, ptr %arrayidx66, align 8
  %arrayidx77 = getelementptr inbounds i16, ptr %28, i64 %indvars.iv
  store i16 0, ptr %arrayidx77, align 2
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %29 = load i32, ptr %mb_cr_size_x, align 4
  %30 = sext i32 %29 to i64
  %cmp62 = icmp slt i64 %indvars.iv.next, %30
  br i1 %cmp62, label %for.body64, label %for.inc78.loopexit

for.inc78.loopexit:                               ; preds = %for.body64
  %.pre839 = load i32, ptr %mb_cr_size_y, align 8
  br label %for.inc78

for.inc78:                                        ; preds = %for.inc78.loopexit, %for.cond61.preheader
  %31 = phi i32 [ %.pre839, %for.inc78.loopexit ], [ %20, %for.cond61.preheader ]
  %32 = phi i32 [ %29, %for.inc78.loopexit ], [ %21, %for.cond61.preheader ]
  %indvars.iv.next750 = add nuw nsw i64 %indvars.iv749, 1
  %33 = sext i32 %31 to i64
  %cmp59 = icmp slt i64 %indvars.iv.next750, %33
  br i1 %cmp59, label %for.cond61.preheader, label %for.cond81.preheader, !llvm.loop !14

for.cond86.preheader:                             ; preds = %for.cond86.preheader.lr.ph, %for.inc94
  %34 = phi i32 [ %37, %for.inc94 ], [ %22, %for.cond86.preheader.lr.ph ]
  %35 = phi i32 [ %38, %for.inc94 ], [ %23, %for.cond86.preheader.lr.ph ]
  %n2.0726 = phi i32 [ %add95, %for.inc94 ], [ 0, %for.cond86.preheader.lr.ph ]
  %cmp88723 = icmp sgt i32 %35, 0
  br i1 %cmp88723, label %for.body90, label %for.inc94

for.body90:                                       ; preds = %for.cond86.preheader, %for.body90
  %n1.0724 = phi i32 [ %add92, %for.body90 ], [ 0, %for.cond86.preheader ]
  tail call void @forward4x4(ptr noundef %call, ptr noundef %call, i32 noundef %n2.0726, i32 noundef %n1.0724) #8
  %add92 = add nuw nsw i32 %n1.0724, 4
  %36 = load i32, ptr %mb_cr_size_x87, align 4
  %cmp88 = icmp slt i32 %add92, %36
  br i1 %cmp88, label %for.body90, label %for.inc94.loopexit

for.inc94.loopexit:                               ; preds = %for.body90
  %.pre840 = load i32, ptr %mb_cr_size_y, align 8
  br label %for.inc94

for.inc94:                                        ; preds = %for.inc94.loopexit, %for.cond86.preheader
  %37 = phi i32 [ %.pre840, %for.inc94.loopexit ], [ %34, %for.cond86.preheader ]
  %38 = phi i32 [ %36, %for.inc94.loopexit ], [ %35, %for.cond86.preheader ]
  %add95 = add nuw nsw i32 %n2.0726, 4
  %cmp83 = icmp slt i32 %add95, %37
  br i1 %cmp83, label %for.cond86.preheader, label %for.end96, !llvm.loop !16

for.end96:                                        ; preds = %for.inc94, %cond.end52, %for.cond86.preheader.lr.ph, %for.cond81.preheader
  %39 = phi i32 [ %31, %for.cond81.preheader ], [ %22, %for.cond86.preheader.lr.ph ], [ %17, %cond.end52 ], [ %37, %for.inc94 ]
  %40 = load ptr, ptr %call, align 8
  %41 = load i32, ptr %40, align 4
  %arrayidx99 = getelementptr inbounds i8, ptr %call, i64 32
  %42 = load ptr, ptr %arrayidx99, align 8
  %43 = load i32, ptr %42, align 4
  %add101 = add nsw i32 %43, %41
  %arrayidx103 = getelementptr inbounds i8, ptr %40, i64 16
  %44 = load i32, ptr %arrayidx103, align 4
  %arrayidx106 = getelementptr inbounds i8, ptr %42, i64 16
  %45 = load i32, ptr %arrayidx106, align 4
  %add104 = add i32 %45, %44
  %add107 = add i32 %add104, %add101
  %46 = add i32 %41, %44
  %47 = add i32 %43, %45
  %sub118 = sub i32 %46, %47
  %sub130 = sub i32 %add101, %add104
  %48 = add i32 %43, %44
  %sub139 = sub i32 %41, %48
  %add142 = add nsw i32 %sub139, %45
  %sp_switch = getelementptr inbounds i8, ptr %0, i64 224
  %49 = load i32, ptr %sp_switch, align 8
  %tobool.not = icmp eq i32 %49, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.then147

lor.lhs.false:                                    ; preds = %for.end96
  %50 = load i32, ptr %slice_type, align 4
  %cmp145 = icmp eq i32 %50, 4
  br i1 %cmp145, label %if.then147, label %for.cond285.preheader

for.cond285.preheader:                            ; preds = %lor.lhs.false
  %idxprom303 = sext i32 %spec.select to i64
  %arrayidx304 = getelementptr inbounds [6 x [4 x [4 x i32]]], ptr @dequant_coef, i64 0, i64 %idxprom303
  %51 = load i32, ptr %arrayidx304, align 16
  %factor.op.mul = shl i32 %51, 4
  %idxprom314 = sext i32 %15 to i64
  %arrayidx315 = getelementptr inbounds [6 x [4 x [4 x i32]]], ptr @quant_coef, i64 0, i64 %idxprom314
  %52 = load i32, ptr %arrayidx315, align 16
  %add319 = add nsw i32 %14, 16
  %shl.i686 = shl nuw i32 1, %add56
  %arrayidx323 = getelementptr inbounds [6 x [4 x [4 x i32]]], ptr @dequant_coef, i64 0, i64 %idxprom314
  %53 = load i32, ptr %arrayidx323, align 16
  %54 = load ptr, ptr %5, align 8
  %55 = load i32, ptr %54, align 4
  %mul307.reass = mul i32 %55, %factor.op.mul
  %shl309 = shl i32 %mul307.reass, %spec.select671
  %shr310 = ashr i32 %shl309, 5
  %add311 = add nsw i32 %shr310, %add107
  %x.lobit.neg.i = ashr i32 %add311, 31
  %isnotnull.i = icmp ne i32 %add311, 0
  %isnotnull.zext.i = zext i1 %isnotnull.i to i32
  %sub.i683 = or i32 %x.lobit.neg.i, %isnotnull.zext.i
  %sub.i684 = tail call i32 @llvm.abs.i32(i32 %add311, i1 true)
  %mul318 = mul nsw i32 %sub.i684, %52
  %add.i687 = add nsw i32 %mul318, %shl.i686
  %shr.i688 = ashr i32 %add.i687, %add319
  %mul321 = mul i32 %sub.i683, %53
  %mul326 = mul i32 %mul321, %shr.i688
  %arrayidx302.1 = getelementptr inbounds i8, ptr %54, i64 16
  %56 = load i32, ptr %arrayidx302.1, align 4
  %mul307.reass.1 = mul i32 %56, %factor.op.mul
  %shl309.1 = shl i32 %mul307.reass.1, %spec.select671
  %shr310.1 = ashr i32 %shl309.1, 5
  %add311.1 = add nsw i32 %shr310.1, %sub118
  %x.lobit.neg.i.1 = ashr i32 %add311.1, 31
  %isnotnull.i.1 = icmp ne i32 %add311.1, 0
  %isnotnull.zext.i.1 = zext i1 %isnotnull.i.1 to i32
  %sub.i683.1 = or i32 %x.lobit.neg.i.1, %isnotnull.zext.i.1
  %sub.i684.1 = tail call i32 @llvm.abs.i32(i32 %add311.1, i1 true)
  %mul318.1 = mul nsw i32 %sub.i684.1, %52
  %add.i687.1 = add nsw i32 %mul318.1, %shl.i686
  %shr.i688.1 = ashr i32 %add.i687.1, %add319
  %mul321.1 = mul i32 %sub.i683.1, %53
  %mul326.1 = mul i32 %mul321.1, %shr.i688.1
  %arrayidx299.1 = getelementptr inbounds i8, ptr %5, i64 32
  %57 = load ptr, ptr %arrayidx299.1, align 8
  %58 = load i32, ptr %57, align 4
  %mul307.reass.1763 = mul i32 %58, %factor.op.mul
  %shl309.1764 = shl i32 %mul307.reass.1763, %spec.select671
  %shr310.1765 = ashr i32 %shl309.1764, 5
  %add311.1766 = add nsw i32 %shr310.1765, %sub130
  %x.lobit.neg.i.1767 = ashr i32 %add311.1766, 31
  %isnotnull.i.1768 = icmp ne i32 %add311.1766, 0
  %isnotnull.zext.i.1769 = zext i1 %isnotnull.i.1768 to i32
  %sub.i683.1770 = or i32 %x.lobit.neg.i.1767, %isnotnull.zext.i.1769
  %sub.i684.1771 = tail call i32 @llvm.abs.i32(i32 %add311.1766, i1 true)
  %mul318.1772 = mul nsw i32 %sub.i684.1771, %52
  %add.i687.1773 = add nsw i32 %mul318.1772, %shl.i686
  %shr.i688.1774 = ashr i32 %add.i687.1773, %add319
  %mul321.1775 = mul i32 %sub.i683.1770, %53
  %mul326.1776 = mul i32 %mul321.1775, %shr.i688.1774
  %arrayidx302.1.1 = getelementptr inbounds i8, ptr %57, i64 16
  %59 = load i32, ptr %arrayidx302.1.1, align 4
  %mul307.reass.1.1 = mul i32 %59, %factor.op.mul
  %shl309.1.1 = shl i32 %mul307.reass.1.1, %spec.select671
  %shr310.1.1 = ashr i32 %shl309.1.1, 5
  %add311.1.1 = add nsw i32 %shr310.1.1, %add142
  %x.lobit.neg.i.1.1 = ashr i32 %add311.1.1, 31
  %isnotnull.i.1.1 = icmp ne i32 %add311.1.1, 0
  %isnotnull.zext.i.1.1 = zext i1 %isnotnull.i.1.1 to i32
  %sub.i683.1.1 = or i32 %x.lobit.neg.i.1.1, %isnotnull.zext.i.1.1
  %sub.i684.1.1 = tail call i32 @llvm.abs.i32(i32 %add311.1.1, i1 true)
  %mul318.1.1 = mul nsw i32 %sub.i684.1.1, %52
  %add.i687.1.1 = add nsw i32 %mul318.1.1, %shl.i686
  %shr.i688.1.1 = ashr i32 %add.i687.1.1, %add319
  %mul321.1.1 = mul i32 %sub.i683.1.1, %53
  %mul326.1.1 = mul i32 %mul321.1.1, %shr.i688.1.1
  %cmp340733 = icmp sgt i32 %39, 0
  br i1 %cmp340733, label %for.cond343.preheader.lr.ph, label %if.end428

if.then147:                                       ; preds = %lor.lhs.false, %for.end96
  %idxprom160 = sext i32 %15 to i64
  %arrayidx161 = getelementptr inbounds [6 x [4 x [4 x i32]]], ptr @quant_coef, i64 0, i64 %idxprom160
  %60 = load i32, ptr %arrayidx161, align 16
  %add165 = add nsw i32 %14, 16
  %shl.i = shl nuw i32 1, %add56
  %arrayidx179 = getelementptr inbounds [6 x [4 x [4 x i32]]], ptr @dequant_coef, i64 0, i64 %idxprom160
  %61 = load i32, ptr %arrayidx179, align 16
  %62 = load ptr, ptr %5, align 8
  %sub.i = tail call i32 @llvm.abs.i32(i32 %add107, i1 true)
  %mul164 = mul nsw i32 %sub.i, %60
  %add.i = add nsw i32 %mul164, %shl.i
  %shr.i = ashr i32 %add.i, %add165
  %cmp.i = icmp slt i32 %add107, 0
  %sub.i.i = tail call i32 @llvm.abs.i32(i32 %shr.i, i1 true)
  %sub.i673 = sub nsw i32 0, %sub.i.i
  %cond.i = select i1 %cmp.i, i32 %sub.i673, i32 %sub.i.i
  %63 = load i32, ptr %62, align 4
  %add177 = add nsw i32 %cond.i, %63
  %mul182 = mul nsw i32 %add177, %61
  %sub.i.1 = tail call i32 @llvm.abs.i32(i32 %sub118, i1 true)
  %mul164.1 = mul nsw i32 %sub.i.1, %60
  %add.i.1 = add nsw i32 %mul164.1, %shl.i
  %shr.i.1 = ashr i32 %add.i.1, %add165
  %cmp.i.1 = icmp slt i32 %sub118, 0
  %sub.i.i.1 = tail call i32 @llvm.abs.i32(i32 %shr.i.1, i1 true)
  %sub.i673.1 = sub nsw i32 0, %sub.i.i.1
  %cond.i.1 = select i1 %cmp.i.1, i32 %sub.i673.1, i32 %sub.i.i.1
  %arrayidx176.1 = getelementptr inbounds i8, ptr %62, i64 16
  %64 = load i32, ptr %arrayidx176.1, align 4
  %add177.1 = add nsw i32 %cond.i.1, %64
  %mul182.1 = mul nsw i32 %add177.1, %61
  %arrayidx173.1 = getelementptr inbounds i8, ptr %5, i64 32
  %65 = load ptr, ptr %arrayidx173.1, align 8
  %sub.i.1803 = tail call i32 @llvm.abs.i32(i32 %sub130, i1 true)
  %mul164.1804 = mul nsw i32 %sub.i.1803, %60
  %add.i.1805 = add nsw i32 %mul164.1804, %shl.i
  %shr.i.1806 = ashr i32 %add.i.1805, %add165
  %cmp.i.1807 = icmp slt i32 %sub130, 0
  %sub.i.i.1808 = tail call i32 @llvm.abs.i32(i32 %shr.i.1806, i1 true)
  %sub.i673.1809 = sub nsw i32 0, %sub.i.i.1808
  %cond.i.1810 = select i1 %cmp.i.1807, i32 %sub.i673.1809, i32 %sub.i.i.1808
  %66 = load i32, ptr %65, align 4
  %add177.1811 = add nsw i32 %cond.i.1810, %66
  %mul182.1812 = mul nsw i32 %add177.1811, %61
  %sub.i.1.1 = tail call i32 @llvm.abs.i32(i32 %add142, i1 true)
  %mul164.1.1 = mul nsw i32 %sub.i.1.1, %60
  %add.i.1.1 = add nsw i32 %mul164.1.1, %shl.i
  %shr.i.1.1 = ashr i32 %add.i.1.1, %add165
  %cmp.i.1.1 = icmp slt i32 %add142, 0
  %sub.i.i.1.1 = tail call i32 @llvm.abs.i32(i32 %shr.i.1.1, i1 true)
  %sub.i673.1.1 = sub nsw i32 0, %sub.i.i.1.1
  %cond.i.1.1 = select i1 %cmp.i.1.1, i32 %sub.i673.1.1, i32 %sub.i.i.1.1
  %arrayidx176.1.1 = getelementptr inbounds i8, ptr %65, i64 16
  %67 = load i32, ptr %arrayidx176.1.1, align 4
  %add177.1.1 = add nsw i32 %cond.i.1.1, %67
  %mul182.1.1 = mul nsw i32 %add177.1.1, %61
  %cmp196741 = icmp sgt i32 %39, 0
  br i1 %cmp196741, label %for.cond199.preheader.lr.ph, label %if.end428

for.cond199.preheader.lr.ph:                      ; preds = %if.then147
  %mb_cr_size_x200 = getelementptr inbounds i8, ptr %1, i64 849108
  %idxprom218 = sext i32 %spec.select to i64
  %sub.i675 = add nsw i32 %14, 14
  %shl.i676 = shl nuw i32 1, %sub.i675
  %68 = load i32, ptr %mb_cr_size_x200, align 4
  %69 = icmp sgt i32 %68, 0
  br i1 %69, label %for.cond199.preheader, label %if.end428

for.cond199.preheader:                            ; preds = %for.cond199.preheader.lr.ph, %for.inc282
  %70 = phi i32 [ %114, %for.inc282 ], [ %39, %for.cond199.preheader.lr.ph ]
  %71 = phi i32 [ %115, %for.inc282 ], [ %68, %for.cond199.preheader.lr.ph ]
  %indvars.iv827 = phi i64 [ %indvars.iv.next828, %for.inc282 ], [ 0, %for.cond199.preheader.lr.ph ]
  %cmp201739 = icmp sgt i32 %71, 0
  br i1 %cmp201739, label %for.cond204.preheader, label %for.inc282

for.cond204.preheader:                            ; preds = %for.cond199.preheader, %for.inc279
  %indvars.iv824 = phi i64 [ %indvars.iv.next825, %for.inc279 ], [ 0, %for.cond199.preheader ]
  %72 = or disjoint i64 %indvars.iv824, 1
  %73 = or disjoint i64 %indvars.iv824, 2
  %74 = or disjoint i64 %indvars.iv824, 3
  br label %for.cond208.preheader

for.cond208.preheader:                            ; preds = %for.cond204.preheader, %for.cond208.preheader
  %indvars.iv819 = phi i64 [ 0, %for.cond204.preheader ], [ %indvars.iv.next820, %for.cond208.preheader ]
  %75 = or disjoint i64 %indvars.iv819, %indvars.iv827
  %arrayidx214 = getelementptr inbounds ptr, ptr %5, i64 %75
  %arrayidx232 = getelementptr inbounds ptr, ptr %call, i64 %75
  %76 = load ptr, ptr %arrayidx214, align 8
  %arrayidx217 = getelementptr inbounds i32, ptr %76, i64 %indvars.iv824
  %77 = load i32, ptr %arrayidx217, align 4
  %shr = ashr i32 %77, %spec.select671
  %arrayidx223 = getelementptr inbounds [6 x [4 x [4 x i32]]], ptr @dequant_coef, i64 0, i64 %idxprom218, i64 %indvars.iv819, i64 0
  %78 = load i32, ptr %arrayidx223, align 16
  %div = sdiv i32 %shr, %78
  store i32 %div, ptr %arrayidx217, align 4
  %79 = load ptr, ptr %arrayidx232, align 8
  %arrayidx235 = getelementptr inbounds i32, ptr %79, i64 %indvars.iv824
  %80 = load i32, ptr %arrayidx235, align 4
  %sub.i674 = tail call i32 @llvm.abs.i32(i32 %80, i1 true)
  %arrayidx242 = getelementptr inbounds [6 x [4 x [4 x i32]]], ptr @quant_coef, i64 0, i64 %idxprom160, i64 %indvars.iv819, i64 0
  %81 = load i32, ptr %arrayidx242, align 16
  %mul243 = mul nsw i32 %sub.i674, %81
  %add.i677 = add nsw i32 %mul243, %shl.i676
  %shr.i678 = ashr i32 %add.i677, %add56
  %cmp.i679 = icmp slt i32 %80, 0
  %sub.i.i680 = tail call i32 @llvm.abs.i32(i32 %shr.i678, i1 true)
  %sub.i681 = sub nsw i32 0, %sub.i.i680
  %cond.i682 = select i1 %cmp.i679, i32 %sub.i681, i32 %sub.i.i680
  %82 = load ptr, ptr %arrayidx214, align 8
  %arrayidx257 = getelementptr inbounds i32, ptr %82, i64 %indvars.iv824
  %83 = load i32, ptr %arrayidx257, align 4
  %add258 = add nsw i32 %cond.i682, %83
  %arrayidx264 = getelementptr inbounds [6 x [4 x [4 x i32]]], ptr @dequant_coef, i64 0, i64 %idxprom160, i64 %indvars.iv819, i64 0
  %84 = load i32, ptr %arrayidx264, align 16
  %mul265 = mul nsw i32 %add258, %84
  %shl266 = shl i32 %mul265, %14
  store i32 %shl266, ptr %arrayidx257, align 4
  %85 = load ptr, ptr %arrayidx214, align 8
  %arrayidx217.1 = getelementptr inbounds i32, ptr %85, i64 %72
  %86 = load i32, ptr %arrayidx217.1, align 4
  %shr.1 = ashr i32 %86, %spec.select671
  %arrayidx223.1 = getelementptr inbounds [6 x [4 x [4 x i32]]], ptr @dequant_coef, i64 0, i64 %idxprom218, i64 %indvars.iv819, i64 1
  %87 = load i32, ptr %arrayidx223.1, align 4
  %div.1 = sdiv i32 %shr.1, %87
  store i32 %div.1, ptr %arrayidx217.1, align 4
  %88 = load ptr, ptr %arrayidx232, align 8
  %arrayidx235.1 = getelementptr inbounds i32, ptr %88, i64 %72
  %89 = load i32, ptr %arrayidx235.1, align 4
  %sub.i674.1 = tail call i32 @llvm.abs.i32(i32 %89, i1 true)
  %arrayidx242.1 = getelementptr inbounds [6 x [4 x [4 x i32]]], ptr @quant_coef, i64 0, i64 %idxprom160, i64 %indvars.iv819, i64 1
  %90 = load i32, ptr %arrayidx242.1, align 4
  %mul243.1 = mul nsw i32 %sub.i674.1, %90
  %add.i677.1 = add nsw i32 %mul243.1, %shl.i676
  %shr.i678.1 = ashr i32 %add.i677.1, %add56
  %cmp.i679.1 = icmp slt i32 %89, 0
  %sub.i.i680.1 = tail call i32 @llvm.abs.i32(i32 %shr.i678.1, i1 true)
  %sub.i681.1 = sub nsw i32 0, %sub.i.i680.1
  %cond.i682.1 = select i1 %cmp.i679.1, i32 %sub.i681.1, i32 %sub.i.i680.1
  %91 = load ptr, ptr %arrayidx214, align 8
  %arrayidx257.1 = getelementptr inbounds i32, ptr %91, i64 %72
  %92 = load i32, ptr %arrayidx257.1, align 4
  %add258.1 = add nsw i32 %cond.i682.1, %92
  %arrayidx264.1 = getelementptr inbounds [6 x [4 x [4 x i32]]], ptr @dequant_coef, i64 0, i64 %idxprom160, i64 %indvars.iv819, i64 1
  %93 = load i32, ptr %arrayidx264.1, align 4
  %mul265.1 = mul nsw i32 %add258.1, %93
  %shl266.1 = shl i32 %mul265.1, %14
  store i32 %shl266.1, ptr %arrayidx257.1, align 4
  %94 = load ptr, ptr %arrayidx214, align 8
  %arrayidx217.2 = getelementptr inbounds i32, ptr %94, i64 %73
  %95 = load i32, ptr %arrayidx217.2, align 4
  %shr.2 = ashr i32 %95, %spec.select671
  %arrayidx223.2 = getelementptr inbounds [6 x [4 x [4 x i32]]], ptr @dequant_coef, i64 0, i64 %idxprom218, i64 %indvars.iv819, i64 2
  %96 = load i32, ptr %arrayidx223.2, align 8
  %div.2 = sdiv i32 %shr.2, %96
  store i32 %div.2, ptr %arrayidx217.2, align 4
  %97 = load ptr, ptr %arrayidx232, align 8
  %arrayidx235.2 = getelementptr inbounds i32, ptr %97, i64 %73
  %98 = load i32, ptr %arrayidx235.2, align 4
  %sub.i674.2 = tail call i32 @llvm.abs.i32(i32 %98, i1 true)
  %arrayidx242.2 = getelementptr inbounds [6 x [4 x [4 x i32]]], ptr @quant_coef, i64 0, i64 %idxprom160, i64 %indvars.iv819, i64 2
  %99 = load i32, ptr %arrayidx242.2, align 8
  %mul243.2 = mul nsw i32 %sub.i674.2, %99
  %add.i677.2 = add nsw i32 %mul243.2, %shl.i676
  %shr.i678.2 = ashr i32 %add.i677.2, %add56
  %cmp.i679.2 = icmp slt i32 %98, 0
  %sub.i.i680.2 = tail call i32 @llvm.abs.i32(i32 %shr.i678.2, i1 true)
  %sub.i681.2 = sub nsw i32 0, %sub.i.i680.2
  %cond.i682.2 = select i1 %cmp.i679.2, i32 %sub.i681.2, i32 %sub.i.i680.2
  %100 = load ptr, ptr %arrayidx214, align 8
  %arrayidx257.2 = getelementptr inbounds i32, ptr %100, i64 %73
  %101 = load i32, ptr %arrayidx257.2, align 4
  %add258.2 = add nsw i32 %cond.i682.2, %101
  %arrayidx264.2 = getelementptr inbounds [6 x [4 x [4 x i32]]], ptr @dequant_coef, i64 0, i64 %idxprom160, i64 %indvars.iv819, i64 2
  %102 = load i32, ptr %arrayidx264.2, align 8
  %mul265.2 = mul nsw i32 %add258.2, %102
  %shl266.2 = shl i32 %mul265.2, %14
  store i32 %shl266.2, ptr %arrayidx257.2, align 4
  %103 = load ptr, ptr %arrayidx214, align 8
  %arrayidx217.3 = getelementptr inbounds i32, ptr %103, i64 %74
  %104 = load i32, ptr %arrayidx217.3, align 4
  %shr.3 = ashr i32 %104, %spec.select671
  %arrayidx223.3 = getelementptr inbounds [6 x [4 x [4 x i32]]], ptr @dequant_coef, i64 0, i64 %idxprom218, i64 %indvars.iv819, i64 3
  %105 = load i32, ptr %arrayidx223.3, align 4
  %div.3 = sdiv i32 %shr.3, %105
  store i32 %div.3, ptr %arrayidx217.3, align 4
  %106 = load ptr, ptr %arrayidx232, align 8
  %arrayidx235.3 = getelementptr inbounds i32, ptr %106, i64 %74
  %107 = load i32, ptr %arrayidx235.3, align 4
  %sub.i674.3 = tail call i32 @llvm.abs.i32(i32 %107, i1 true)
  %arrayidx242.3 = getelementptr inbounds [6 x [4 x [4 x i32]]], ptr @quant_coef, i64 0, i64 %idxprom160, i64 %indvars.iv819, i64 3
  %108 = load i32, ptr %arrayidx242.3, align 4
  %mul243.3 = mul nsw i32 %sub.i674.3, %108
  %add.i677.3 = add nsw i32 %mul243.3, %shl.i676
  %shr.i678.3 = ashr i32 %add.i677.3, %add56
  %cmp.i679.3 = icmp slt i32 %107, 0
  %sub.i.i680.3 = tail call i32 @llvm.abs.i32(i32 %shr.i678.3, i1 true)
  %sub.i681.3 = sub nsw i32 0, %sub.i.i680.3
  %cond.i682.3 = select i1 %cmp.i679.3, i32 %sub.i681.3, i32 %sub.i.i680.3
  %109 = load ptr, ptr %arrayidx214, align 8
  %arrayidx257.3 = getelementptr inbounds i32, ptr %109, i64 %74
  %110 = load i32, ptr %arrayidx257.3, align 4
  %add258.3 = add nsw i32 %cond.i682.3, %110
  %arrayidx264.3 = getelementptr inbounds [6 x [4 x [4 x i32]]], ptr @dequant_coef, i64 0, i64 %idxprom160, i64 %indvars.iv819, i64 3
  %111 = load i32, ptr %arrayidx264.3, align 4
  %mul265.3 = mul nsw i32 %add258.3, %111
  %shl266.3 = shl i32 %mul265.3, %14
  store i32 %shl266.3, ptr %arrayidx257.3, align 4
  %indvars.iv.next820 = add nuw nsw i64 %indvars.iv819, 1
  %exitcond823.not = icmp eq i64 %indvars.iv.next820, 4
  br i1 %exitcond823.not, label %for.inc279, label %for.cond208.preheader

for.inc279:                                       ; preds = %for.cond208.preheader
  %indvars.iv.next825 = add nuw nsw i64 %indvars.iv824, 4
  %112 = load i32, ptr %mb_cr_size_x200, align 4
  %113 = sext i32 %112 to i64
  %cmp201 = icmp slt i64 %indvars.iv.next825, %113
  br i1 %cmp201, label %for.cond204.preheader, label %for.inc282.loopexit

for.inc282.loopexit:                              ; preds = %for.inc279
  %.pre842 = load i32, ptr %mb_cr_size_y, align 8
  br label %for.inc282

for.inc282:                                       ; preds = %for.inc282.loopexit, %for.cond199.preheader
  %114 = phi i32 [ %.pre842, %for.inc282.loopexit ], [ %70, %for.cond199.preheader ]
  %115 = phi i32 [ %112, %for.inc282.loopexit ], [ %71, %for.cond199.preheader ]
  %indvars.iv.next828 = add nuw nsw i64 %indvars.iv827, 4
  %116 = sext i32 %114 to i64
  %cmp196 = icmp slt i64 %indvars.iv.next828, %116
  br i1 %cmp196, label %for.cond199.preheader, label %if.end428, !llvm.loop !17

for.cond343.preheader.lr.ph:                      ; preds = %for.cond285.preheader
  %mb_cr_size_x344 = getelementptr inbounds i8, ptr %1, i64 849108
  %sub.i694 = add nsw i32 %14, 14
  %shl.i695 = shl nuw i32 1, %sub.i694
  %117 = load i32, ptr %mb_cr_size_x344, align 4
  %118 = icmp sgt i32 %117, 0
  br i1 %118, label %for.cond343.preheader, label %if.end428

for.cond343.preheader:                            ; preds = %for.cond343.preheader.lr.ph, %for.inc425
  %119 = phi i32 [ %163, %for.inc425 ], [ %39, %for.cond343.preheader.lr.ph ]
  %120 = phi i32 [ %164, %for.inc425 ], [ %117, %for.cond343.preheader.lr.ph ]
  %indvars.iv789 = phi i64 [ %indvars.iv.next790, %for.inc425 ], [ 0, %for.cond343.preheader.lr.ph ]
  %cmp345731 = icmp sgt i32 %120, 0
  br i1 %cmp345731, label %for.cond348.preheader, label %for.inc425

for.cond348.preheader:                            ; preds = %for.cond343.preheader, %for.inc422
  %indvars.iv786 = phi i64 [ %indvars.iv.next787, %for.inc422 ], [ 0, %for.cond343.preheader ]
  %121 = or disjoint i64 %indvars.iv786, 1
  %122 = or disjoint i64 %indvars.iv786, 2
  %123 = or disjoint i64 %indvars.iv786, 3
  br label %for.cond352.preheader

for.cond352.preheader:                            ; preds = %for.cond348.preheader, %for.cond352.preheader
  %indvars.iv782 = phi i64 [ 0, %for.cond348.preheader ], [ %indvars.iv.next783, %for.cond352.preheader ]
  %124 = or disjoint i64 %indvars.iv782, %indvars.iv789
  %arrayidx358 = getelementptr inbounds ptr, ptr %5, i64 %124
  %arrayidx372 = getelementptr inbounds ptr, ptr %call, i64 %124
  %125 = load ptr, ptr %arrayidx358, align 8
  %arrayidx361 = getelementptr inbounds i32, ptr %125, i64 %indvars.iv786
  %126 = load i32, ptr %arrayidx361, align 4
  %shr362 = ashr i32 %126, %spec.select671
  %arrayidx368 = getelementptr inbounds [6 x [4 x [4 x i32]]], ptr @dequant_coef, i64 0, i64 %idxprom303, i64 %indvars.iv782, i64 0
  %127 = load i32, ptr %arrayidx368, align 16
  %128 = load ptr, ptr %arrayidx372, align 8
  %arrayidx375 = getelementptr inbounds i32, ptr %128, i64 %indvars.iv786
  %129 = load i32, ptr %arrayidx375, align 4
  %shr362.fr = freeze i32 %shr362
  %130 = srem i32 %shr362.fr, %127
  %mul382 = sub nsw i32 %shr362.fr, %130
  %arrayidx386 = getelementptr inbounds [4 x [4 x i32]], ptr @A, i64 0, i64 %indvars.iv782, i64 0
  %131 = load i32, ptr %arrayidx386, align 16
  %mul387 = mul nsw i32 %mul382, %131
  %shl388 = shl i32 %mul387, %spec.select671
  %shr389 = ashr i32 %shl388, 6
  %add390 = add nsw i32 %shr389, %129
  %x.lobit.neg.i689 = ashr i32 %add390, 31
  %isnotnull.i690 = icmp ne i32 %add390, 0
  %isnotnull.zext.i691 = zext i1 %isnotnull.i690 to i32
  %sub.i692 = or i32 %x.lobit.neg.i689, %isnotnull.zext.i691
  %sub.i693 = tail call i32 @llvm.abs.i32(i32 %add390, i1 true)
  %arrayidx398 = getelementptr inbounds [6 x [4 x [4 x i32]]], ptr @quant_coef, i64 0, i64 %idxprom314, i64 %indvars.iv782, i64 0
  %132 = load i32, ptr %arrayidx398, align 16
  %mul399 = mul nsw i32 %sub.i693, %132
  %add.i696 = add nsw i32 %mul399, %shl.i695
  %shr.i697 = ashr i32 %add.i696, %add56
  %arrayidx407 = getelementptr inbounds [6 x [4 x [4 x i32]]], ptr @dequant_coef, i64 0, i64 %idxprom314, i64 %indvars.iv782, i64 0
  %133 = load i32, ptr %arrayidx407, align 16
  %mul401 = mul i32 %sub.i692, %133
  %mul408 = mul i32 %mul401, %shr.i697
  %shl409 = shl i32 %mul408, %14
  store i32 %shl409, ptr %arrayidx361, align 4
  %134 = load ptr, ptr %arrayidx358, align 8
  %arrayidx361.1 = getelementptr inbounds i32, ptr %134, i64 %121
  %135 = load i32, ptr %arrayidx361.1, align 4
  %shr362.1 = ashr i32 %135, %spec.select671
  %arrayidx368.1 = getelementptr inbounds [6 x [4 x [4 x i32]]], ptr @dequant_coef, i64 0, i64 %idxprom303, i64 %indvars.iv782, i64 1
  %136 = load i32, ptr %arrayidx368.1, align 4
  %137 = load ptr, ptr %arrayidx372, align 8
  %arrayidx375.1 = getelementptr inbounds i32, ptr %137, i64 %121
  %138 = load i32, ptr %arrayidx375.1, align 4
  %shr362.fr.1 = freeze i32 %shr362.1
  %139 = srem i32 %shr362.fr.1, %136
  %mul382.1 = sub nsw i32 %shr362.fr.1, %139
  %arrayidx386.1 = getelementptr inbounds [4 x [4 x i32]], ptr @A, i64 0, i64 %indvars.iv782, i64 1
  %140 = load i32, ptr %arrayidx386.1, align 4
  %mul387.1 = mul nsw i32 %mul382.1, %140
  %shl388.1 = shl i32 %mul387.1, %spec.select671
  %shr389.1 = ashr i32 %shl388.1, 6
  %add390.1 = add nsw i32 %shr389.1, %138
  %x.lobit.neg.i689.1 = ashr i32 %add390.1, 31
  %isnotnull.i690.1 = icmp ne i32 %add390.1, 0
  %isnotnull.zext.i691.1 = zext i1 %isnotnull.i690.1 to i32
  %sub.i692.1 = or i32 %x.lobit.neg.i689.1, %isnotnull.zext.i691.1
  %sub.i693.1 = tail call i32 @llvm.abs.i32(i32 %add390.1, i1 true)
  %arrayidx398.1 = getelementptr inbounds [6 x [4 x [4 x i32]]], ptr @quant_coef, i64 0, i64 %idxprom314, i64 %indvars.iv782, i64 1
  %141 = load i32, ptr %arrayidx398.1, align 4
  %mul399.1 = mul nsw i32 %sub.i693.1, %141
  %add.i696.1 = add nsw i32 %mul399.1, %shl.i695
  %shr.i697.1 = ashr i32 %add.i696.1, %add56
  %arrayidx407.1 = getelementptr inbounds [6 x [4 x [4 x i32]]], ptr @dequant_coef, i64 0, i64 %idxprom314, i64 %indvars.iv782, i64 1
  %142 = load i32, ptr %arrayidx407.1, align 4
  %mul401.1 = mul i32 %sub.i692.1, %142
  %mul408.1 = mul i32 %mul401.1, %shr.i697.1
  %shl409.1 = shl i32 %mul408.1, %14
  store i32 %shl409.1, ptr %arrayidx361.1, align 4
  %143 = load ptr, ptr %arrayidx358, align 8
  %arrayidx361.2 = getelementptr inbounds i32, ptr %143, i64 %122
  %144 = load i32, ptr %arrayidx361.2, align 4
  %shr362.2 = ashr i32 %144, %spec.select671
  %arrayidx368.2 = getelementptr inbounds [6 x [4 x [4 x i32]]], ptr @dequant_coef, i64 0, i64 %idxprom303, i64 %indvars.iv782, i64 2
  %145 = load i32, ptr %arrayidx368.2, align 8
  %146 = load ptr, ptr %arrayidx372, align 8
  %arrayidx375.2 = getelementptr inbounds i32, ptr %146, i64 %122
  %147 = load i32, ptr %arrayidx375.2, align 4
  %shr362.fr.2 = freeze i32 %shr362.2
  %148 = srem i32 %shr362.fr.2, %145
  %mul382.2 = sub nsw i32 %shr362.fr.2, %148
  %arrayidx386.2 = getelementptr inbounds [4 x [4 x i32]], ptr @A, i64 0, i64 %indvars.iv782, i64 2
  %149 = load i32, ptr %arrayidx386.2, align 8
  %mul387.2 = mul nsw i32 %mul382.2, %149
  %shl388.2 = shl i32 %mul387.2, %spec.select671
  %shr389.2 = ashr i32 %shl388.2, 6
  %add390.2 = add nsw i32 %shr389.2, %147
  %x.lobit.neg.i689.2 = ashr i32 %add390.2, 31
  %isnotnull.i690.2 = icmp ne i32 %add390.2, 0
  %isnotnull.zext.i691.2 = zext i1 %isnotnull.i690.2 to i32
  %sub.i692.2 = or i32 %x.lobit.neg.i689.2, %isnotnull.zext.i691.2
  %sub.i693.2 = tail call i32 @llvm.abs.i32(i32 %add390.2, i1 true)
  %arrayidx398.2 = getelementptr inbounds [6 x [4 x [4 x i32]]], ptr @quant_coef, i64 0, i64 %idxprom314, i64 %indvars.iv782, i64 2
  %150 = load i32, ptr %arrayidx398.2, align 8
  %mul399.2 = mul nsw i32 %sub.i693.2, %150
  %add.i696.2 = add nsw i32 %mul399.2, %shl.i695
  %shr.i697.2 = ashr i32 %add.i696.2, %add56
  %arrayidx407.2 = getelementptr inbounds [6 x [4 x [4 x i32]]], ptr @dequant_coef, i64 0, i64 %idxprom314, i64 %indvars.iv782, i64 2
  %151 = load i32, ptr %arrayidx407.2, align 8
  %mul401.2 = mul i32 %sub.i692.2, %151
  %mul408.2 = mul i32 %mul401.2, %shr.i697.2
  %shl409.2 = shl i32 %mul408.2, %14
  store i32 %shl409.2, ptr %arrayidx361.2, align 4
  %152 = load ptr, ptr %arrayidx358, align 8
  %arrayidx361.3 = getelementptr inbounds i32, ptr %152, i64 %123
  %153 = load i32, ptr %arrayidx361.3, align 4
  %shr362.3 = ashr i32 %153, %spec.select671
  %arrayidx368.3 = getelementptr inbounds [6 x [4 x [4 x i32]]], ptr @dequant_coef, i64 0, i64 %idxprom303, i64 %indvars.iv782, i64 3
  %154 = load i32, ptr %arrayidx368.3, align 4
  %155 = load ptr, ptr %arrayidx372, align 8
  %arrayidx375.3 = getelementptr inbounds i32, ptr %155, i64 %123
  %156 = load i32, ptr %arrayidx375.3, align 4
  %shr362.fr.3 = freeze i32 %shr362.3
  %157 = srem i32 %shr362.fr.3, %154
  %mul382.3 = sub nsw i32 %shr362.fr.3, %157
  %arrayidx386.3 = getelementptr inbounds [4 x [4 x i32]], ptr @A, i64 0, i64 %indvars.iv782, i64 3
  %158 = load i32, ptr %arrayidx386.3, align 4
  %mul387.3 = mul nsw i32 %mul382.3, %158
  %shl388.3 = shl i32 %mul387.3, %spec.select671
  %shr389.3 = ashr i32 %shl388.3, 6
  %add390.3 = add nsw i32 %shr389.3, %156
  %x.lobit.neg.i689.3 = ashr i32 %add390.3, 31
  %isnotnull.i690.3 = icmp ne i32 %add390.3, 0
  %isnotnull.zext.i691.3 = zext i1 %isnotnull.i690.3 to i32
  %sub.i692.3 = or i32 %x.lobit.neg.i689.3, %isnotnull.zext.i691.3
  %sub.i693.3 = tail call i32 @llvm.abs.i32(i32 %add390.3, i1 true)
  %arrayidx398.3 = getelementptr inbounds [6 x [4 x [4 x i32]]], ptr @quant_coef, i64 0, i64 %idxprom314, i64 %indvars.iv782, i64 3
  %159 = load i32, ptr %arrayidx398.3, align 4
  %mul399.3 = mul nsw i32 %sub.i693.3, %159
  %add.i696.3 = add nsw i32 %mul399.3, %shl.i695
  %shr.i697.3 = ashr i32 %add.i696.3, %add56
  %arrayidx407.3 = getelementptr inbounds [6 x [4 x [4 x i32]]], ptr @dequant_coef, i64 0, i64 %idxprom314, i64 %indvars.iv782, i64 3
  %160 = load i32, ptr %arrayidx407.3, align 4
  %mul401.3 = mul i32 %sub.i692.3, %160
  %mul408.3 = mul i32 %mul401.3, %shr.i697.3
  %shl409.3 = shl i32 %mul408.3, %14
  store i32 %shl409.3, ptr %arrayidx361.3, align 4
  %indvars.iv.next783 = add nuw nsw i64 %indvars.iv782, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next783, 4
  br i1 %exitcond.not, label %for.inc422, label %for.cond352.preheader

for.inc422:                                       ; preds = %for.cond352.preheader
  %indvars.iv.next787 = add nuw nsw i64 %indvars.iv786, 4
  %161 = load i32, ptr %mb_cr_size_x344, align 4
  %162 = sext i32 %161 to i64
  %cmp345 = icmp slt i64 %indvars.iv.next787, %162
  br i1 %cmp345, label %for.cond348.preheader, label %for.inc425.loopexit

for.inc425.loopexit:                              ; preds = %for.inc422
  %.pre841 = load i32, ptr %mb_cr_size_y, align 8
  br label %for.inc425

for.inc425:                                       ; preds = %for.inc425.loopexit, %for.cond343.preheader
  %163 = phi i32 [ %.pre841, %for.inc425.loopexit ], [ %119, %for.cond343.preheader ]
  %164 = phi i32 [ %161, %for.inc425.loopexit ], [ %120, %for.cond343.preheader ]
  %indvars.iv.next790 = add nuw nsw i64 %indvars.iv789, 4
  %165 = sext i32 %163 to i64
  %cmp340 = icmp slt i64 %indvars.iv.next790, %165
  br i1 %cmp340, label %for.cond343.preheader, label %if.end428, !llvm.loop !18

if.end428:                                        ; preds = %for.inc425, %for.inc282, %for.cond343.preheader.lr.ph, %for.cond199.preheader.lr.ph, %for.cond285.preheader, %if.then147
  %mul182.1.1.pn = phi i32 [ %mul182.1.1, %if.then147 ], [ %mul326.1.1, %for.cond285.preheader ], [ %mul182.1.1, %for.cond199.preheader.lr.ph ], [ %mul326.1.1, %for.cond343.preheader.lr.ph ], [ %mul182.1.1, %for.inc282 ], [ %mul326.1.1, %for.inc425 ]
  %mul182.1812.pn = phi i32 [ %mul182.1812, %if.then147 ], [ %mul326.1776, %for.cond285.preheader ], [ %mul182.1812, %for.cond199.preheader.lr.ph ], [ %mul326.1776, %for.cond343.preheader.lr.ph ], [ %mul182.1812, %for.inc282 ], [ %mul326.1776, %for.inc425 ]
  %mul182.1.pn = phi i32 [ %mul182.1, %if.then147 ], [ %mul326.1, %for.cond285.preheader ], [ %mul182.1, %for.cond199.preheader.lr.ph ], [ %mul326.1, %for.cond343.preheader.lr.ph ], [ %mul182.1, %for.inc282 ], [ %mul326.1, %for.inc425 ]
  %mul182.pn = phi i32 [ %mul182, %if.then147 ], [ %mul326, %for.cond285.preheader ], [ %mul182, %for.cond199.preheader.lr.ph ], [ %mul326, %for.cond343.preheader.lr.ph ], [ %mul182, %for.inc282 ], [ %mul326, %for.inc425 ]
  %mp1.sroa.0.0 = shl i32 %mul182.pn, %14
  %mp1.sroa.8.0 = shl i32 %mul182.1.pn, %14
  %mp1.sroa.14.0 = shl i32 %mul182.1812.pn, %14
  %mp1.sroa.20.0 = shl i32 %mul182.1.1.pn, %14
  %add431 = add nsw i32 %mp1.sroa.8.0, %mp1.sroa.0.0
  %add433 = add i32 %mp1.sroa.20.0, %mp1.sroa.14.0
  %add435 = add i32 %add433, %add431
  %shr436 = ashr i32 %add435, 1
  %166 = load ptr, ptr %5, align 8
  store i32 %shr436, ptr %166, align 4
  %sub445 = sub i32 %add431, %add433
  %shr446 = ashr i32 %sub445, 1
  %167 = load ptr, ptr %5, align 8
  %arrayidx448 = getelementptr inbounds i8, ptr %167, i64 16
  store i32 %shr446, ptr %arrayidx448, align 4
  %168 = add i32 %mp1.sroa.0.0, %mp1.sroa.14.0
  %169 = add i32 %mp1.sroa.8.0, %mp1.sroa.20.0
  %sub455 = sub i32 %168, %169
  %shr456 = ashr i32 %sub455, 1
  %arrayidx457 = getelementptr inbounds i8, ptr %5, i64 32
  %170 = load ptr, ptr %arrayidx457, align 8
  store i32 %shr456, ptr %170, align 4
  %171 = add i32 %mp1.sroa.8.0, %mp1.sroa.14.0
  %sub463 = sub i32 %mp1.sroa.0.0, %171
  %add465 = add nsw i32 %sub463, %mp1.sroa.20.0
  %shr466 = ashr i32 %add465, 1
  %172 = load ptr, ptr %arrayidx457, align 8
  %arrayidx468 = getelementptr inbounds i8, ptr %172, i64 16
  store i32 %shr466, ptr %arrayidx468, align 4
  tail call void @free_mem2Dint(ptr noundef nonnull %call) #8
  ret void
}

declare ptr @new_mem2Dint(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @iMBtrans4x4(ptr noundef %currMB, i32 noundef %pl, i32 noundef %smb) local_unnamed_addr #0 {
entry:
  %0 = load ptr, ptr %currMB, align 8
  %dec_picture2 = getelementptr inbounds i8, ptr %0, i64 13520
  %1 = load ptr, ptr %dec_picture2, align 8
  %tobool.not = icmp eq i32 %pl, 0
  br i1 %tobool.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  %imgUV = getelementptr inbounds i8, ptr %1, i64 136
  %2 = load ptr, ptr %imgUV, align 8
  %sub = add i32 %pl, -1
  %idxprom = zext i32 %sub to i64
  %arrayidx = getelementptr inbounds ptr, ptr %2, i64 %idxprom
  br label %cond.end

cond.false:                                       ; preds = %entry
  %imgY = getelementptr inbounds i8, ptr %1, i64 128
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.in = phi ptr [ %arrayidx, %cond.true ], [ %imgY, %cond.false ]
  %cond = load ptr, ptr %cond.in, align 8
  %is_lossless = getelementptr inbounds i8, ptr %currMB, i64 92
  %3 = load i32, ptr %is_lossless, align 4
  %tobool3.not = icmp eq i32 %3, 0
  br i1 %tobool3.not, label %if.else.thread, label %land.lhs.true

land.lhs.true:                                    ; preds = %cond.end
  %mb_type = getelementptr inbounds i8, ptr %currMB, i64 152
  %4 = load i16, ptr %mb_type, align 8
  %cmp = icmp eq i16 %4, 10
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  tail call void @Inv_Residual_trans_16x16(ptr noundef nonnull %currMB, i32 noundef %pl)
  br label %if.end57

if.else:                                          ; preds = %land.lhs.true
  %tobool5.not = icmp eq i32 %smb, 0
  br i1 %tobool5.not, label %lor.lhs.false, label %cond.end17

if.else.thread:                                   ; preds = %cond.end
  %tobool5.not109 = icmp eq i32 %smb, 0
  br i1 %tobool5.not109, label %if.else37, label %cond.end17

lor.lhs.false:                                    ; preds = %if.else
  %cmp7 = icmp eq i32 %3, 1
  br i1 %cmp7, label %cond.end17, label %if.else37

cond.end17:                                       ; preds = %lor.lhs.false, %if.else.thread, %if.else
  %cond18 = phi ptr [ @itrans_sp, %if.else ], [ @itrans_sp, %if.else.thread ], [ @Inv_Residual_trans_4x4, %lor.lhs.false ]
  %itrans_4x4 = getelementptr inbounds i8, ptr %currMB, i64 432
  store ptr %cond18, ptr %itrans_4x4, align 8
  tail call void %cond18(ptr noundef nonnull %currMB, i32 noundef %pl, i32 noundef 0, i32 noundef 0) #8
  %5 = load ptr, ptr %itrans_4x4, align 8
  tail call void %5(ptr noundef nonnull %currMB, i32 noundef %pl, i32 noundef 4, i32 noundef 0) #8
  %6 = load ptr, ptr %itrans_4x4, align 8
  tail call void %6(ptr noundef nonnull %currMB, i32 noundef %pl, i32 noundef 0, i32 noundef 4) #8
  %7 = load ptr, ptr %itrans_4x4, align 8
  tail call void %7(ptr noundef nonnull %currMB, i32 noundef %pl, i32 noundef 4, i32 noundef 4) #8
  %8 = load ptr, ptr %itrans_4x4, align 8
  tail call void %8(ptr noundef nonnull %currMB, i32 noundef %pl, i32 noundef 8, i32 noundef 0) #8
  %9 = load ptr, ptr %itrans_4x4, align 8
  tail call void %9(ptr noundef nonnull %currMB, i32 noundef %pl, i32 noundef 12, i32 noundef 0) #8
  %10 = load ptr, ptr %itrans_4x4, align 8
  tail call void %10(ptr noundef nonnull %currMB, i32 noundef %pl, i32 noundef 8, i32 noundef 4) #8
  %11 = load ptr, ptr %itrans_4x4, align 8
  tail call void %11(ptr noundef nonnull %currMB, i32 noundef %pl, i32 noundef 12, i32 noundef 4) #8
  %12 = load ptr, ptr %itrans_4x4, align 8
  tail call void %12(ptr noundef nonnull %currMB, i32 noundef %pl, i32 noundef 0, i32 noundef 8) #8
  %13 = load ptr, ptr %itrans_4x4, align 8
  tail call void %13(ptr noundef nonnull %currMB, i32 noundef %pl, i32 noundef 4, i32 noundef 8) #8
  %14 = load ptr, ptr %itrans_4x4, align 8
  tail call void %14(ptr noundef nonnull %currMB, i32 noundef %pl, i32 noundef 0, i32 noundef 12) #8
  %15 = load ptr, ptr %itrans_4x4, align 8
  tail call void %15(ptr noundef nonnull %currMB, i32 noundef %pl, i32 noundef 4, i32 noundef 12) #8
  %16 = load ptr, ptr %itrans_4x4, align 8
  tail call void %16(ptr noundef nonnull %currMB, i32 noundef %pl, i32 noundef 8, i32 noundef 8) #8
  %17 = load ptr, ptr %itrans_4x4, align 8
  tail call void %17(ptr noundef nonnull %currMB, i32 noundef %pl, i32 noundef 12, i32 noundef 8) #8
  %18 = load ptr, ptr %itrans_4x4, align 8
  tail call void %18(ptr noundef nonnull %currMB, i32 noundef %pl, i32 noundef 8, i32 noundef 12) #8
  %19 = load ptr, ptr %itrans_4x4, align 8
  tail call void %19(ptr noundef nonnull %currMB, i32 noundef %pl, i32 noundef 12, i32 noundef 12) #8
  br label %if.end57

if.else37:                                        ; preds = %if.else.thread, %lor.lhs.false
  %cof38 = getelementptr inbounds i8, ptr %0, i64 1272
  %20 = load ptr, ptr %cof38, align 8
  %idxprom39 = zext i32 %pl to i64
  %arrayidx40 = getelementptr inbounds ptr, ptr %20, i64 %idxprom39
  %21 = load ptr, ptr %arrayidx40, align 8
  %mb_rres41 = getelementptr inbounds i8, ptr %0, i64 1264
  %22 = load ptr, ptr %mb_rres41, align 8
  %arrayidx43 = getelementptr inbounds ptr, ptr %22, i64 %idxprom39
  %23 = load ptr, ptr %arrayidx43, align 8
  tail call void @inverse4x4(ptr noundef %21, ptr noundef %23, i32 noundef 0, i32 noundef 0) #8
  tail call void @inverse4x4(ptr noundef %21, ptr noundef %23, i32 noundef 0, i32 noundef 4) #8
  tail call void @inverse4x4(ptr noundef %21, ptr noundef %23, i32 noundef 0, i32 noundef 8) #8
  tail call void @inverse4x4(ptr noundef %21, ptr noundef %23, i32 noundef 0, i32 noundef 12) #8
  tail call void @inverse4x4(ptr noundef %21, ptr noundef %23, i32 noundef 4, i32 noundef 0) #8
  tail call void @inverse4x4(ptr noundef %21, ptr noundef %23, i32 noundef 4, i32 noundef 4) #8
  tail call void @inverse4x4(ptr noundef %21, ptr noundef %23, i32 noundef 4, i32 noundef 8) #8
  tail call void @inverse4x4(ptr noundef %21, ptr noundef %23, i32 noundef 4, i32 noundef 12) #8
  tail call void @inverse4x4(ptr noundef %21, ptr noundef %23, i32 noundef 8, i32 noundef 0) #8
  tail call void @inverse4x4(ptr noundef %21, ptr noundef %23, i32 noundef 8, i32 noundef 4) #8
  tail call void @inverse4x4(ptr noundef %21, ptr noundef %23, i32 noundef 8, i32 noundef 8) #8
  tail call void @inverse4x4(ptr noundef %21, ptr noundef %23, i32 noundef 8, i32 noundef 12) #8
  tail call void @inverse4x4(ptr noundef %21, ptr noundef %23, i32 noundef 12, i32 noundef 0) #8
  tail call void @inverse4x4(ptr noundef %21, ptr noundef %23, i32 noundef 12, i32 noundef 4) #8
  tail call void @inverse4x4(ptr noundef %21, ptr noundef %23, i32 noundef 12, i32 noundef 8) #8
  tail call void @inverse4x4(ptr noundef %21, ptr noundef %23, i32 noundef 12, i32 noundef 12) #8
  %mb_rec = getelementptr inbounds i8, ptr %0, i64 1256
  %24 = load ptr, ptr %mb_rec, align 8
  %arrayidx52 = getelementptr inbounds ptr, ptr %24, i64 %idxprom39
  %25 = load ptr, ptr %arrayidx52, align 8
  %mb_pred = getelementptr inbounds i8, ptr %0, i64 1248
  %26 = load ptr, ptr %mb_pred, align 8
  %arrayidx54 = getelementptr inbounds ptr, ptr %26, i64 %idxprom39
  %27 = load ptr, ptr %arrayidx54, align 8
  %p_Vid = getelementptr inbounds i8, ptr %currMB, i64 8
  %28 = load ptr, ptr %p_Vid, align 8
  %max_pel_value_comp = getelementptr inbounds i8, ptr %28, i64 849072
  %arrayidx56 = getelementptr inbounds [3 x i32], ptr %max_pel_value_comp, i64 0, i64 %idxprom39
  %29 = load i32, ptr %arrayidx56, align 4
  tail call void @sample_reconstruct(ptr noundef %25, ptr noundef %27, ptr noundef %23, i32 noundef 0, i32 noundef 0, i32 noundef 16, i32 noundef 16, i32 noundef %29, i32 noundef 6) #8
  br label %if.end57

if.end57:                                         ; preds = %cond.end17, %if.else37, %if.then
  %pix_y = getelementptr inbounds i8, ptr %currMB, i64 48
  %30 = load i32, ptr %pix_y, align 8
  %idxprom58 = sext i32 %30 to i64
  %arrayidx59 = getelementptr inbounds ptr, ptr %cond, i64 %idxprom58
  %mb_rec60 = getelementptr inbounds i8, ptr %0, i64 1256
  %31 = load ptr, ptr %mb_rec60, align 8
  %idxprom61 = zext i32 %pl to i64
  %arrayidx62 = getelementptr inbounds ptr, ptr %31, i64 %idxprom61
  %32 = load ptr, ptr %arrayidx62, align 8
  %pix_x = getelementptr inbounds i8, ptr %currMB, i64 44
  %33 = load i32, ptr %pix_x, align 4
  %idx.ext.i = sext i32 %33 to i64
  %incdec.ptr.i = getelementptr inbounds i8, ptr %arrayidx59, i64 8
  %34 = load ptr, ptr %arrayidx59, align 8
  %add.ptr.i = getelementptr inbounds i16, ptr %34, i64 %idx.ext.i
  %incdec.ptr1.i = getelementptr inbounds i8, ptr %32, i64 8
  %35 = load ptr, ptr %32, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %add.ptr.i, ptr noundef nonnull align 2 dereferenceable(32) %35, i64 32, i1 false)
  %incdec.ptr4.i = getelementptr inbounds i8, ptr %arrayidx59, i64 16
  %36 = load ptr, ptr %incdec.ptr.i, align 8
  %add.ptr6.i = getelementptr inbounds i16, ptr %36, i64 %idx.ext.i
  %incdec.ptr7.i = getelementptr inbounds i8, ptr %32, i64 16
  %37 = load ptr, ptr %incdec.ptr1.i, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %add.ptr6.i, ptr noundef nonnull align 2 dereferenceable(32) %37, i64 32, i1 false)
  %incdec.ptr10.i = getelementptr inbounds i8, ptr %arrayidx59, i64 24
  %38 = load ptr, ptr %incdec.ptr4.i, align 8
  %add.ptr12.i = getelementptr inbounds i16, ptr %38, i64 %idx.ext.i
  %incdec.ptr13.i = getelementptr inbounds i8, ptr %32, i64 24
  %39 = load ptr, ptr %incdec.ptr7.i, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %add.ptr12.i, ptr noundef nonnull align 2 dereferenceable(32) %39, i64 32, i1 false)
  %incdec.ptr16.i = getelementptr inbounds i8, ptr %arrayidx59, i64 32
  %40 = load ptr, ptr %incdec.ptr10.i, align 8
  %add.ptr18.i = getelementptr inbounds i16, ptr %40, i64 %idx.ext.i
  %incdec.ptr19.i = getelementptr inbounds i8, ptr %32, i64 32
  %41 = load ptr, ptr %incdec.ptr13.i, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %add.ptr18.i, ptr noundef nonnull align 2 dereferenceable(32) %41, i64 32, i1 false)
  %incdec.ptr.1.i = getelementptr inbounds i8, ptr %arrayidx59, i64 40
  %42 = load ptr, ptr %incdec.ptr16.i, align 8
  %add.ptr.1.i = getelementptr inbounds i16, ptr %42, i64 %idx.ext.i
  %incdec.ptr1.1.i = getelementptr inbounds i8, ptr %32, i64 40
  %43 = load ptr, ptr %incdec.ptr19.i, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %add.ptr.1.i, ptr noundef nonnull align 2 dereferenceable(32) %43, i64 32, i1 false)
  %incdec.ptr4.1.i = getelementptr inbounds i8, ptr %arrayidx59, i64 48
  %44 = load ptr, ptr %incdec.ptr.1.i, align 8
  %add.ptr6.1.i = getelementptr inbounds i16, ptr %44, i64 %idx.ext.i
  %incdec.ptr7.1.i = getelementptr inbounds i8, ptr %32, i64 48
  %45 = load ptr, ptr %incdec.ptr1.1.i, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %add.ptr6.1.i, ptr noundef nonnull align 2 dereferenceable(32) %45, i64 32, i1 false)
  %incdec.ptr10.1.i = getelementptr inbounds i8, ptr %arrayidx59, i64 56
  %46 = load ptr, ptr %incdec.ptr4.1.i, align 8
  %add.ptr12.1.i = getelementptr inbounds i16, ptr %46, i64 %idx.ext.i
  %incdec.ptr13.1.i = getelementptr inbounds i8, ptr %32, i64 56
  %47 = load ptr, ptr %incdec.ptr7.1.i, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %add.ptr12.1.i, ptr noundef nonnull align 2 dereferenceable(32) %47, i64 32, i1 false)
  %incdec.ptr16.1.i = getelementptr inbounds i8, ptr %arrayidx59, i64 64
  %48 = load ptr, ptr %incdec.ptr10.1.i, align 8
  %add.ptr18.1.i = getelementptr inbounds i16, ptr %48, i64 %idx.ext.i
  %incdec.ptr19.1.i = getelementptr inbounds i8, ptr %32, i64 64
  %49 = load ptr, ptr %incdec.ptr13.1.i, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %add.ptr18.1.i, ptr noundef nonnull align 2 dereferenceable(32) %49, i64 32, i1 false)
  %incdec.ptr.2.i = getelementptr inbounds i8, ptr %arrayidx59, i64 72
  %50 = load ptr, ptr %incdec.ptr16.1.i, align 8
  %add.ptr.2.i = getelementptr inbounds i16, ptr %50, i64 %idx.ext.i
  %incdec.ptr1.2.i = getelementptr inbounds i8, ptr %32, i64 72
  %51 = load ptr, ptr %incdec.ptr19.1.i, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %add.ptr.2.i, ptr noundef nonnull align 2 dereferenceable(32) %51, i64 32, i1 false)
  %incdec.ptr4.2.i = getelementptr inbounds i8, ptr %arrayidx59, i64 80
  %52 = load ptr, ptr %incdec.ptr.2.i, align 8
  %add.ptr6.2.i = getelementptr inbounds i16, ptr %52, i64 %idx.ext.i
  %incdec.ptr7.2.i = getelementptr inbounds i8, ptr %32, i64 80
  %53 = load ptr, ptr %incdec.ptr1.2.i, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %add.ptr6.2.i, ptr noundef nonnull align 2 dereferenceable(32) %53, i64 32, i1 false)
  %incdec.ptr10.2.i = getelementptr inbounds i8, ptr %arrayidx59, i64 88
  %54 = load ptr, ptr %incdec.ptr4.2.i, align 8
  %add.ptr12.2.i = getelementptr inbounds i16, ptr %54, i64 %idx.ext.i
  %incdec.ptr13.2.i = getelementptr inbounds i8, ptr %32, i64 88
  %55 = load ptr, ptr %incdec.ptr7.2.i, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %add.ptr12.2.i, ptr noundef nonnull align 2 dereferenceable(32) %55, i64 32, i1 false)
  %incdec.ptr16.2.i = getelementptr inbounds i8, ptr %arrayidx59, i64 96
  %56 = load ptr, ptr %incdec.ptr10.2.i, align 8
  %add.ptr18.2.i = getelementptr inbounds i16, ptr %56, i64 %idx.ext.i
  %incdec.ptr19.2.i = getelementptr inbounds i8, ptr %32, i64 96
  %57 = load ptr, ptr %incdec.ptr13.2.i, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %add.ptr18.2.i, ptr noundef nonnull align 2 dereferenceable(32) %57, i64 32, i1 false)
  %incdec.ptr.3.i = getelementptr inbounds i8, ptr %arrayidx59, i64 104
  %58 = load ptr, ptr %incdec.ptr16.2.i, align 8
  %add.ptr.3.i = getelementptr inbounds i16, ptr %58, i64 %idx.ext.i
  %incdec.ptr1.3.i = getelementptr inbounds i8, ptr %32, i64 104
  %59 = load ptr, ptr %incdec.ptr19.2.i, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %add.ptr.3.i, ptr noundef nonnull align 2 dereferenceable(32) %59, i64 32, i1 false)
  %incdec.ptr4.3.i = getelementptr inbounds i8, ptr %arrayidx59, i64 112
  %60 = load ptr, ptr %incdec.ptr.3.i, align 8
  %add.ptr6.3.i = getelementptr inbounds i16, ptr %60, i64 %idx.ext.i
  %incdec.ptr7.3.i = getelementptr inbounds i8, ptr %32, i64 112
  %61 = load ptr, ptr %incdec.ptr1.3.i, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %add.ptr6.3.i, ptr noundef nonnull align 2 dereferenceable(32) %61, i64 32, i1 false)
  %incdec.ptr10.3.i = getelementptr inbounds i8, ptr %arrayidx59, i64 120
  %62 = load ptr, ptr %incdec.ptr4.3.i, align 8
  %add.ptr12.3.i = getelementptr inbounds i16, ptr %62, i64 %idx.ext.i
  %incdec.ptr13.3.i = getelementptr inbounds i8, ptr %32, i64 120
  %63 = load ptr, ptr %incdec.ptr7.3.i, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %add.ptr12.3.i, ptr noundef nonnull align 2 dereferenceable(32) %63, i64 32, i1 false)
  %64 = load ptr, ptr %incdec.ptr10.3.i, align 8
  %add.ptr18.3.i = getelementptr inbounds i16, ptr %64, i64 %idx.ext.i
  %65 = load ptr, ptr %incdec.ptr13.3.i, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %add.ptr18.3.i, ptr noundef nonnull align 2 dereferenceable(32) %65, i64 32, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @copy_image_data_16x16(ptr nocapture noundef readonly %imgBuf1, ptr nocapture noundef readonly %imgBuf2, i32 noundef %off1, i32 noundef %off2) local_unnamed_addr #3 {
entry:
  %idx.ext = sext i32 %off1 to i64
  %idx.ext2 = sext i32 %off2 to i64
  %incdec.ptr = getelementptr inbounds i8, ptr %imgBuf1, i64 8
  %0 = load ptr, ptr %imgBuf1, align 8
  %add.ptr = getelementptr inbounds i16, ptr %0, i64 %idx.ext
  %incdec.ptr1 = getelementptr inbounds i8, ptr %imgBuf2, i64 8
  %1 = load ptr, ptr %imgBuf2, align 8
  %add.ptr3 = getelementptr inbounds i16, ptr %1, i64 %idx.ext2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %add.ptr, ptr noundef nonnull align 2 dereferenceable(32) %add.ptr3, i64 32, i1 false)
  %incdec.ptr4 = getelementptr inbounds i8, ptr %imgBuf1, i64 16
  %2 = load ptr, ptr %incdec.ptr, align 8
  %add.ptr6 = getelementptr inbounds i16, ptr %2, i64 %idx.ext
  %incdec.ptr7 = getelementptr inbounds i8, ptr %imgBuf2, i64 16
  %3 = load ptr, ptr %incdec.ptr1, align 8
  %add.ptr9 = getelementptr inbounds i16, ptr %3, i64 %idx.ext2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %add.ptr6, ptr noundef nonnull align 2 dereferenceable(32) %add.ptr9, i64 32, i1 false)
  %incdec.ptr10 = getelementptr inbounds i8, ptr %imgBuf1, i64 24
  %4 = load ptr, ptr %incdec.ptr4, align 8
  %add.ptr12 = getelementptr inbounds i16, ptr %4, i64 %idx.ext
  %incdec.ptr13 = getelementptr inbounds i8, ptr %imgBuf2, i64 24
  %5 = load ptr, ptr %incdec.ptr7, align 8
  %add.ptr15 = getelementptr inbounds i16, ptr %5, i64 %idx.ext2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %add.ptr12, ptr noundef nonnull align 2 dereferenceable(32) %add.ptr15, i64 32, i1 false)
  %incdec.ptr16 = getelementptr inbounds i8, ptr %imgBuf1, i64 32
  %6 = load ptr, ptr %incdec.ptr10, align 8
  %add.ptr18 = getelementptr inbounds i16, ptr %6, i64 %idx.ext
  %incdec.ptr19 = getelementptr inbounds i8, ptr %imgBuf2, i64 32
  %7 = load ptr, ptr %incdec.ptr13, align 8
  %add.ptr21 = getelementptr inbounds i16, ptr %7, i64 %idx.ext2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %add.ptr18, ptr noundef nonnull align 2 dereferenceable(32) %add.ptr21, i64 32, i1 false)
  %incdec.ptr.1 = getelementptr inbounds i8, ptr %imgBuf1, i64 40
  %8 = load ptr, ptr %incdec.ptr16, align 8
  %add.ptr.1 = getelementptr inbounds i16, ptr %8, i64 %idx.ext
  %incdec.ptr1.1 = getelementptr inbounds i8, ptr %imgBuf2, i64 40
  %9 = load ptr, ptr %incdec.ptr19, align 8
  %add.ptr3.1 = getelementptr inbounds i16, ptr %9, i64 %idx.ext2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %add.ptr.1, ptr noundef nonnull align 2 dereferenceable(32) %add.ptr3.1, i64 32, i1 false)
  %incdec.ptr4.1 = getelementptr inbounds i8, ptr %imgBuf1, i64 48
  %10 = load ptr, ptr %incdec.ptr.1, align 8
  %add.ptr6.1 = getelementptr inbounds i16, ptr %10, i64 %idx.ext
  %incdec.ptr7.1 = getelementptr inbounds i8, ptr %imgBuf2, i64 48
  %11 = load ptr, ptr %incdec.ptr1.1, align 8
  %add.ptr9.1 = getelementptr inbounds i16, ptr %11, i64 %idx.ext2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %add.ptr6.1, ptr noundef nonnull align 2 dereferenceable(32) %add.ptr9.1, i64 32, i1 false)
  %incdec.ptr10.1 = getelementptr inbounds i8, ptr %imgBuf1, i64 56
  %12 = load ptr, ptr %incdec.ptr4.1, align 8
  %add.ptr12.1 = getelementptr inbounds i16, ptr %12, i64 %idx.ext
  %incdec.ptr13.1 = getelementptr inbounds i8, ptr %imgBuf2, i64 56
  %13 = load ptr, ptr %incdec.ptr7.1, align 8
  %add.ptr15.1 = getelementptr inbounds i16, ptr %13, i64 %idx.ext2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %add.ptr12.1, ptr noundef nonnull align 2 dereferenceable(32) %add.ptr15.1, i64 32, i1 false)
  %incdec.ptr16.1 = getelementptr inbounds i8, ptr %imgBuf1, i64 64
  %14 = load ptr, ptr %incdec.ptr10.1, align 8
  %add.ptr18.1 = getelementptr inbounds i16, ptr %14, i64 %idx.ext
  %incdec.ptr19.1 = getelementptr inbounds i8, ptr %imgBuf2, i64 64
  %15 = load ptr, ptr %incdec.ptr13.1, align 8
  %add.ptr21.1 = getelementptr inbounds i16, ptr %15, i64 %idx.ext2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %add.ptr18.1, ptr noundef nonnull align 2 dereferenceable(32) %add.ptr21.1, i64 32, i1 false)
  %incdec.ptr.2 = getelementptr inbounds i8, ptr %imgBuf1, i64 72
  %16 = load ptr, ptr %incdec.ptr16.1, align 8
  %add.ptr.2 = getelementptr inbounds i16, ptr %16, i64 %idx.ext
  %incdec.ptr1.2 = getelementptr inbounds i8, ptr %imgBuf2, i64 72
  %17 = load ptr, ptr %incdec.ptr19.1, align 8
  %add.ptr3.2 = getelementptr inbounds i16, ptr %17, i64 %idx.ext2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %add.ptr.2, ptr noundef nonnull align 2 dereferenceable(32) %add.ptr3.2, i64 32, i1 false)
  %incdec.ptr4.2 = getelementptr inbounds i8, ptr %imgBuf1, i64 80
  %18 = load ptr, ptr %incdec.ptr.2, align 8
  %add.ptr6.2 = getelementptr inbounds i16, ptr %18, i64 %idx.ext
  %incdec.ptr7.2 = getelementptr inbounds i8, ptr %imgBuf2, i64 80
  %19 = load ptr, ptr %incdec.ptr1.2, align 8
  %add.ptr9.2 = getelementptr inbounds i16, ptr %19, i64 %idx.ext2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %add.ptr6.2, ptr noundef nonnull align 2 dereferenceable(32) %add.ptr9.2, i64 32, i1 false)
  %incdec.ptr10.2 = getelementptr inbounds i8, ptr %imgBuf1, i64 88
  %20 = load ptr, ptr %incdec.ptr4.2, align 8
  %add.ptr12.2 = getelementptr inbounds i16, ptr %20, i64 %idx.ext
  %incdec.ptr13.2 = getelementptr inbounds i8, ptr %imgBuf2, i64 88
  %21 = load ptr, ptr %incdec.ptr7.2, align 8
  %add.ptr15.2 = getelementptr inbounds i16, ptr %21, i64 %idx.ext2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %add.ptr12.2, ptr noundef nonnull align 2 dereferenceable(32) %add.ptr15.2, i64 32, i1 false)
  %incdec.ptr16.2 = getelementptr inbounds i8, ptr %imgBuf1, i64 96
  %22 = load ptr, ptr %incdec.ptr10.2, align 8
  %add.ptr18.2 = getelementptr inbounds i16, ptr %22, i64 %idx.ext
  %incdec.ptr19.2 = getelementptr inbounds i8, ptr %imgBuf2, i64 96
  %23 = load ptr, ptr %incdec.ptr13.2, align 8
  %add.ptr21.2 = getelementptr inbounds i16, ptr %23, i64 %idx.ext2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %add.ptr18.2, ptr noundef nonnull align 2 dereferenceable(32) %add.ptr21.2, i64 32, i1 false)
  %incdec.ptr.3 = getelementptr inbounds i8, ptr %imgBuf1, i64 104
  %24 = load ptr, ptr %incdec.ptr16.2, align 8
  %add.ptr.3 = getelementptr inbounds i16, ptr %24, i64 %idx.ext
  %incdec.ptr1.3 = getelementptr inbounds i8, ptr %imgBuf2, i64 104
  %25 = load ptr, ptr %incdec.ptr19.2, align 8
  %add.ptr3.3 = getelementptr inbounds i16, ptr %25, i64 %idx.ext2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %add.ptr.3, ptr noundef nonnull align 2 dereferenceable(32) %add.ptr3.3, i64 32, i1 false)
  %incdec.ptr4.3 = getelementptr inbounds i8, ptr %imgBuf1, i64 112
  %26 = load ptr, ptr %incdec.ptr.3, align 8
  %add.ptr6.3 = getelementptr inbounds i16, ptr %26, i64 %idx.ext
  %incdec.ptr7.3 = getelementptr inbounds i8, ptr %imgBuf2, i64 112
  %27 = load ptr, ptr %incdec.ptr1.3, align 8
  %add.ptr9.3 = getelementptr inbounds i16, ptr %27, i64 %idx.ext2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %add.ptr6.3, ptr noundef nonnull align 2 dereferenceable(32) %add.ptr9.3, i64 32, i1 false)
  %incdec.ptr10.3 = getelementptr inbounds i8, ptr %imgBuf1, i64 120
  %28 = load ptr, ptr %incdec.ptr4.3, align 8
  %add.ptr12.3 = getelementptr inbounds i16, ptr %28, i64 %idx.ext
  %incdec.ptr13.3 = getelementptr inbounds i8, ptr %imgBuf2, i64 120
  %29 = load ptr, ptr %incdec.ptr7.3, align 8
  %add.ptr15.3 = getelementptr inbounds i16, ptr %29, i64 %idx.ext2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %add.ptr12.3, ptr noundef nonnull align 2 dereferenceable(32) %add.ptr15.3, i64 32, i1 false)
  %30 = load ptr, ptr %incdec.ptr10.3, align 8
  %add.ptr18.3 = getelementptr inbounds i16, ptr %30, i64 %idx.ext
  %31 = load ptr, ptr %incdec.ptr13.3, align 8
  %add.ptr21.3 = getelementptr inbounds i16, ptr %31, i64 %idx.ext2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %add.ptr18.3, ptr noundef nonnull align 2 dereferenceable(32) %add.ptr21.3, i64 32, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @iMBtrans8x8(ptr noundef %currMB, i32 noundef %pl) local_unnamed_addr #0 {
entry:
  %0 = load ptr, ptr %currMB, align 8
  %dec_picture1 = getelementptr inbounds i8, ptr %0, i64 13520
  %1 = load ptr, ptr %dec_picture1, align 8
  %tobool.not = icmp eq i32 %pl, 0
  br i1 %tobool.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  %imgUV = getelementptr inbounds i8, ptr %1, i64 136
  %2 = load ptr, ptr %imgUV, align 8
  %sub = add i32 %pl, -1
  %idxprom = zext i32 %sub to i64
  %arrayidx = getelementptr inbounds ptr, ptr %2, i64 %idxprom
  br label %cond.end

cond.false:                                       ; preds = %entry
  %imgY = getelementptr inbounds i8, ptr %1, i64 128
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.in = phi ptr [ %arrayidx, %cond.true ], [ %imgY, %cond.false ]
  %cond = load ptr, ptr %cond.in, align 8
  tail call void @itrans8x8(ptr noundef nonnull %currMB, i32 noundef %pl, i32 noundef 0, i32 noundef 0) #8
  tail call void @itrans8x8(ptr noundef nonnull %currMB, i32 noundef %pl, i32 noundef 8, i32 noundef 0) #8
  tail call void @itrans8x8(ptr noundef nonnull %currMB, i32 noundef %pl, i32 noundef 0, i32 noundef 8) #8
  tail call void @itrans8x8(ptr noundef nonnull %currMB, i32 noundef %pl, i32 noundef 8, i32 noundef 8) #8
  %pix_y = getelementptr inbounds i8, ptr %currMB, i64 48
  %3 = load i32, ptr %pix_y, align 8
  %idxprom2 = sext i32 %3 to i64
  %arrayidx3 = getelementptr inbounds ptr, ptr %cond, i64 %idxprom2
  %4 = load ptr, ptr %currMB, align 8
  %mb_rec = getelementptr inbounds i8, ptr %4, i64 1256
  %5 = load ptr, ptr %mb_rec, align 8
  %idxprom5 = zext i32 %pl to i64
  %arrayidx6 = getelementptr inbounds ptr, ptr %5, i64 %idxprom5
  %6 = load ptr, ptr %arrayidx6, align 8
  %pix_x = getelementptr inbounds i8, ptr %currMB, i64 44
  %7 = load i32, ptr %pix_x, align 4
  %idx.ext.i = sext i32 %7 to i64
  %incdec.ptr.i = getelementptr inbounds i8, ptr %arrayidx3, i64 8
  %8 = load ptr, ptr %arrayidx3, align 8
  %add.ptr.i = getelementptr inbounds i16, ptr %8, i64 %idx.ext.i
  %incdec.ptr1.i = getelementptr inbounds i8, ptr %6, i64 8
  %9 = load ptr, ptr %6, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %add.ptr.i, ptr noundef nonnull align 2 dereferenceable(32) %9, i64 32, i1 false)
  %incdec.ptr4.i = getelementptr inbounds i8, ptr %arrayidx3, i64 16
  %10 = load ptr, ptr %incdec.ptr.i, align 8
  %add.ptr6.i = getelementptr inbounds i16, ptr %10, i64 %idx.ext.i
  %incdec.ptr7.i = getelementptr inbounds i8, ptr %6, i64 16
  %11 = load ptr, ptr %incdec.ptr1.i, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %add.ptr6.i, ptr noundef nonnull align 2 dereferenceable(32) %11, i64 32, i1 false)
  %incdec.ptr10.i = getelementptr inbounds i8, ptr %arrayidx3, i64 24
  %12 = load ptr, ptr %incdec.ptr4.i, align 8
  %add.ptr12.i = getelementptr inbounds i16, ptr %12, i64 %idx.ext.i
  %incdec.ptr13.i = getelementptr inbounds i8, ptr %6, i64 24
  %13 = load ptr, ptr %incdec.ptr7.i, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %add.ptr12.i, ptr noundef nonnull align 2 dereferenceable(32) %13, i64 32, i1 false)
  %incdec.ptr16.i = getelementptr inbounds i8, ptr %arrayidx3, i64 32
  %14 = load ptr, ptr %incdec.ptr10.i, align 8
  %add.ptr18.i = getelementptr inbounds i16, ptr %14, i64 %idx.ext.i
  %incdec.ptr19.i = getelementptr inbounds i8, ptr %6, i64 32
  %15 = load ptr, ptr %incdec.ptr13.i, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %add.ptr18.i, ptr noundef nonnull align 2 dereferenceable(32) %15, i64 32, i1 false)
  %incdec.ptr.1.i = getelementptr inbounds i8, ptr %arrayidx3, i64 40
  %16 = load ptr, ptr %incdec.ptr16.i, align 8
  %add.ptr.1.i = getelementptr inbounds i16, ptr %16, i64 %idx.ext.i
  %incdec.ptr1.1.i = getelementptr inbounds i8, ptr %6, i64 40
  %17 = load ptr, ptr %incdec.ptr19.i, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %add.ptr.1.i, ptr noundef nonnull align 2 dereferenceable(32) %17, i64 32, i1 false)
  %incdec.ptr4.1.i = getelementptr inbounds i8, ptr %arrayidx3, i64 48
  %18 = load ptr, ptr %incdec.ptr.1.i, align 8
  %add.ptr6.1.i = getelementptr inbounds i16, ptr %18, i64 %idx.ext.i
  %incdec.ptr7.1.i = getelementptr inbounds i8, ptr %6, i64 48
  %19 = load ptr, ptr %incdec.ptr1.1.i, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %add.ptr6.1.i, ptr noundef nonnull align 2 dereferenceable(32) %19, i64 32, i1 false)
  %incdec.ptr10.1.i = getelementptr inbounds i8, ptr %arrayidx3, i64 56
  %20 = load ptr, ptr %incdec.ptr4.1.i, align 8
  %add.ptr12.1.i = getelementptr inbounds i16, ptr %20, i64 %idx.ext.i
  %incdec.ptr13.1.i = getelementptr inbounds i8, ptr %6, i64 56
  %21 = load ptr, ptr %incdec.ptr7.1.i, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %add.ptr12.1.i, ptr noundef nonnull align 2 dereferenceable(32) %21, i64 32, i1 false)
  %incdec.ptr16.1.i = getelementptr inbounds i8, ptr %arrayidx3, i64 64
  %22 = load ptr, ptr %incdec.ptr10.1.i, align 8
  %add.ptr18.1.i = getelementptr inbounds i16, ptr %22, i64 %idx.ext.i
  %incdec.ptr19.1.i = getelementptr inbounds i8, ptr %6, i64 64
  %23 = load ptr, ptr %incdec.ptr13.1.i, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %add.ptr18.1.i, ptr noundef nonnull align 2 dereferenceable(32) %23, i64 32, i1 false)
  %incdec.ptr.2.i = getelementptr inbounds i8, ptr %arrayidx3, i64 72
  %24 = load ptr, ptr %incdec.ptr16.1.i, align 8
  %add.ptr.2.i = getelementptr inbounds i16, ptr %24, i64 %idx.ext.i
  %incdec.ptr1.2.i = getelementptr inbounds i8, ptr %6, i64 72
  %25 = load ptr, ptr %incdec.ptr19.1.i, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %add.ptr.2.i, ptr noundef nonnull align 2 dereferenceable(32) %25, i64 32, i1 false)
  %incdec.ptr4.2.i = getelementptr inbounds i8, ptr %arrayidx3, i64 80
  %26 = load ptr, ptr %incdec.ptr.2.i, align 8
  %add.ptr6.2.i = getelementptr inbounds i16, ptr %26, i64 %idx.ext.i
  %incdec.ptr7.2.i = getelementptr inbounds i8, ptr %6, i64 80
  %27 = load ptr, ptr %incdec.ptr1.2.i, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %add.ptr6.2.i, ptr noundef nonnull align 2 dereferenceable(32) %27, i64 32, i1 false)
  %incdec.ptr10.2.i = getelementptr inbounds i8, ptr %arrayidx3, i64 88
  %28 = load ptr, ptr %incdec.ptr4.2.i, align 8
  %add.ptr12.2.i = getelementptr inbounds i16, ptr %28, i64 %idx.ext.i
  %incdec.ptr13.2.i = getelementptr inbounds i8, ptr %6, i64 88
  %29 = load ptr, ptr %incdec.ptr7.2.i, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %add.ptr12.2.i, ptr noundef nonnull align 2 dereferenceable(32) %29, i64 32, i1 false)
  %incdec.ptr16.2.i = getelementptr inbounds i8, ptr %arrayidx3, i64 96
  %30 = load ptr, ptr %incdec.ptr10.2.i, align 8
  %add.ptr18.2.i = getelementptr inbounds i16, ptr %30, i64 %idx.ext.i
  %incdec.ptr19.2.i = getelementptr inbounds i8, ptr %6, i64 96
  %31 = load ptr, ptr %incdec.ptr13.2.i, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %add.ptr18.2.i, ptr noundef nonnull align 2 dereferenceable(32) %31, i64 32, i1 false)
  %incdec.ptr.3.i = getelementptr inbounds i8, ptr %arrayidx3, i64 104
  %32 = load ptr, ptr %incdec.ptr16.2.i, align 8
  %add.ptr.3.i = getelementptr inbounds i16, ptr %32, i64 %idx.ext.i
  %incdec.ptr1.3.i = getelementptr inbounds i8, ptr %6, i64 104
  %33 = load ptr, ptr %incdec.ptr19.2.i, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %add.ptr.3.i, ptr noundef nonnull align 2 dereferenceable(32) %33, i64 32, i1 false)
  %incdec.ptr4.3.i = getelementptr inbounds i8, ptr %arrayidx3, i64 112
  %34 = load ptr, ptr %incdec.ptr.3.i, align 8
  %add.ptr6.3.i = getelementptr inbounds i16, ptr %34, i64 %idx.ext.i
  %incdec.ptr7.3.i = getelementptr inbounds i8, ptr %6, i64 112
  %35 = load ptr, ptr %incdec.ptr1.3.i, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %add.ptr6.3.i, ptr noundef nonnull align 2 dereferenceable(32) %35, i64 32, i1 false)
  %incdec.ptr10.3.i = getelementptr inbounds i8, ptr %arrayidx3, i64 120
  %36 = load ptr, ptr %incdec.ptr4.3.i, align 8
  %add.ptr12.3.i = getelementptr inbounds i16, ptr %36, i64 %idx.ext.i
  %incdec.ptr13.3.i = getelementptr inbounds i8, ptr %6, i64 120
  %37 = load ptr, ptr %incdec.ptr7.3.i, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %add.ptr12.3.i, ptr noundef nonnull align 2 dereferenceable(32) %37, i64 32, i1 false)
  %38 = load ptr, ptr %incdec.ptr10.3.i, align 8
  %add.ptr18.3.i = getelementptr inbounds i16, ptr %38, i64 %idx.ext.i
  %39 = load ptr, ptr %incdec.ptr13.3.i, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %add.ptr18.3.i, ptr noundef nonnull align 2 dereferenceable(32) %39, i64 32, i1 false)
  ret void
}

declare void @itrans8x8(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @iTransform(ptr noundef %currMB, i32 noundef %pl, i32 noundef %smb) local_unnamed_addr #0 {
entry:
  %0 = load ptr, ptr %currMB, align 8
  %p_Vid1 = getelementptr inbounds i8, ptr %currMB, i64 8
  %1 = load ptr, ptr %p_Vid1, align 8
  %dec_picture2 = getelementptr inbounds i8, ptr %0, i64 13520
  %2 = load ptr, ptr %dec_picture2, align 8
  %sub = add i32 %pl, -1
  %cbp = getelementptr inbounds i8, ptr %currMB, i64 284
  %3 = load i32, ptr %cbp, align 4
  %and = and i32 %3, 15
  %tobool.not = icmp eq i32 %smb, 0
  %4 = or i32 %and, %smb
  %or.cond.not = icmp eq i32 %4, 0
  br i1 %or.cond.not, label %if.else5, label %if.then

if.then:                                          ; preds = %entry
  %luma_transform_size_8x8_flag = getelementptr inbounds i8, ptr %currMB, i64 420
  %5 = load i32, ptr %luma_transform_size_8x8_flag, align 4
  %cmp3 = icmp eq i32 %5, 0
  br i1 %cmp3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.then
  tail call void @iMBtrans4x4(ptr noundef nonnull %currMB, i32 noundef %pl, i32 noundef %smb)
  br label %if.end11

if.else:                                          ; preds = %if.then
  tail call void @iMBtrans8x8(ptr noundef nonnull %currMB, i32 noundef %pl)
  br label %if.end11

if.else5:                                         ; preds = %entry
  %tobool6.not = icmp eq i32 %pl, 0
  br i1 %tobool6.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.else5
  %imgUV = getelementptr inbounds i8, ptr %2, i64 136
  %6 = load ptr, ptr %imgUV, align 8
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds ptr, ptr %6, i64 %idxprom
  br label %cond.end

cond.false:                                       ; preds = %if.else5
  %imgY = getelementptr inbounds i8, ptr %2, i64 128
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.in = phi ptr [ %arrayidx, %cond.true ], [ %imgY, %cond.false ]
  %cond = load ptr, ptr %cond.in, align 8
  %pix_y = getelementptr inbounds i8, ptr %currMB, i64 48
  %7 = load i32, ptr %pix_y, align 8
  %idxprom7 = sext i32 %7 to i64
  %arrayidx8 = getelementptr inbounds ptr, ptr %cond, i64 %idxprom7
  %mb_pred = getelementptr inbounds i8, ptr %0, i64 1248
  %8 = load ptr, ptr %mb_pred, align 8
  %idxprom9 = zext i32 %pl to i64
  %arrayidx10 = getelementptr inbounds ptr, ptr %8, i64 %idxprom9
  %9 = load ptr, ptr %arrayidx10, align 8
  %pix_x = getelementptr inbounds i8, ptr %currMB, i64 44
  %10 = load i32, ptr %pix_x, align 4
  %idx.ext.i = sext i32 %10 to i64
  %incdec.ptr.i = getelementptr inbounds i8, ptr %arrayidx8, i64 8
  %11 = load ptr, ptr %arrayidx8, align 8
  %add.ptr.i = getelementptr inbounds i16, ptr %11, i64 %idx.ext.i
  %incdec.ptr1.i = getelementptr inbounds i8, ptr %9, i64 8
  %12 = load ptr, ptr %9, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %add.ptr.i, ptr noundef nonnull align 2 dereferenceable(32) %12, i64 32, i1 false)
  %incdec.ptr4.i = getelementptr inbounds i8, ptr %arrayidx8, i64 16
  %13 = load ptr, ptr %incdec.ptr.i, align 8
  %add.ptr6.i = getelementptr inbounds i16, ptr %13, i64 %idx.ext.i
  %incdec.ptr7.i = getelementptr inbounds i8, ptr %9, i64 16
  %14 = load ptr, ptr %incdec.ptr1.i, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %add.ptr6.i, ptr noundef nonnull align 2 dereferenceable(32) %14, i64 32, i1 false)
  %incdec.ptr10.i = getelementptr inbounds i8, ptr %arrayidx8, i64 24
  %15 = load ptr, ptr %incdec.ptr4.i, align 8
  %add.ptr12.i = getelementptr inbounds i16, ptr %15, i64 %idx.ext.i
  %incdec.ptr13.i = getelementptr inbounds i8, ptr %9, i64 24
  %16 = load ptr, ptr %incdec.ptr7.i, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %add.ptr12.i, ptr noundef nonnull align 2 dereferenceable(32) %16, i64 32, i1 false)
  %incdec.ptr16.i = getelementptr inbounds i8, ptr %arrayidx8, i64 32
  %17 = load ptr, ptr %incdec.ptr10.i, align 8
  %add.ptr18.i = getelementptr inbounds i16, ptr %17, i64 %idx.ext.i
  %incdec.ptr19.i = getelementptr inbounds i8, ptr %9, i64 32
  %18 = load ptr, ptr %incdec.ptr13.i, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %add.ptr18.i, ptr noundef nonnull align 2 dereferenceable(32) %18, i64 32, i1 false)
  %incdec.ptr.1.i = getelementptr inbounds i8, ptr %arrayidx8, i64 40
  %19 = load ptr, ptr %incdec.ptr16.i, align 8
  %add.ptr.1.i = getelementptr inbounds i16, ptr %19, i64 %idx.ext.i
  %incdec.ptr1.1.i = getelementptr inbounds i8, ptr %9, i64 40
  %20 = load ptr, ptr %incdec.ptr19.i, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %add.ptr.1.i, ptr noundef nonnull align 2 dereferenceable(32) %20, i64 32, i1 false)
  %incdec.ptr4.1.i = getelementptr inbounds i8, ptr %arrayidx8, i64 48
  %21 = load ptr, ptr %incdec.ptr.1.i, align 8
  %add.ptr6.1.i = getelementptr inbounds i16, ptr %21, i64 %idx.ext.i
  %incdec.ptr7.1.i = getelementptr inbounds i8, ptr %9, i64 48
  %22 = load ptr, ptr %incdec.ptr1.1.i, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %add.ptr6.1.i, ptr noundef nonnull align 2 dereferenceable(32) %22, i64 32, i1 false)
  %incdec.ptr10.1.i = getelementptr inbounds i8, ptr %arrayidx8, i64 56
  %23 = load ptr, ptr %incdec.ptr4.1.i, align 8
  %add.ptr12.1.i = getelementptr inbounds i16, ptr %23, i64 %idx.ext.i
  %incdec.ptr13.1.i = getelementptr inbounds i8, ptr %9, i64 56
  %24 = load ptr, ptr %incdec.ptr7.1.i, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %add.ptr12.1.i, ptr noundef nonnull align 2 dereferenceable(32) %24, i64 32, i1 false)
  %incdec.ptr16.1.i = getelementptr inbounds i8, ptr %arrayidx8, i64 64
  %25 = load ptr, ptr %incdec.ptr10.1.i, align 8
  %add.ptr18.1.i = getelementptr inbounds i16, ptr %25, i64 %idx.ext.i
  %incdec.ptr19.1.i = getelementptr inbounds i8, ptr %9, i64 64
  %26 = load ptr, ptr %incdec.ptr13.1.i, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %add.ptr18.1.i, ptr noundef nonnull align 2 dereferenceable(32) %26, i64 32, i1 false)
  %incdec.ptr.2.i = getelementptr inbounds i8, ptr %arrayidx8, i64 72
  %27 = load ptr, ptr %incdec.ptr16.1.i, align 8
  %add.ptr.2.i = getelementptr inbounds i16, ptr %27, i64 %idx.ext.i
  %incdec.ptr1.2.i = getelementptr inbounds i8, ptr %9, i64 72
  %28 = load ptr, ptr %incdec.ptr19.1.i, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %add.ptr.2.i, ptr noundef nonnull align 2 dereferenceable(32) %28, i64 32, i1 false)
  %incdec.ptr4.2.i = getelementptr inbounds i8, ptr %arrayidx8, i64 80
  %29 = load ptr, ptr %incdec.ptr.2.i, align 8
  %add.ptr6.2.i = getelementptr inbounds i16, ptr %29, i64 %idx.ext.i
  %incdec.ptr7.2.i = getelementptr inbounds i8, ptr %9, i64 80
  %30 = load ptr, ptr %incdec.ptr1.2.i, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %add.ptr6.2.i, ptr noundef nonnull align 2 dereferenceable(32) %30, i64 32, i1 false)
  %incdec.ptr10.2.i = getelementptr inbounds i8, ptr %arrayidx8, i64 88
  %31 = load ptr, ptr %incdec.ptr4.2.i, align 8
  %add.ptr12.2.i = getelementptr inbounds i16, ptr %31, i64 %idx.ext.i
  %incdec.ptr13.2.i = getelementptr inbounds i8, ptr %9, i64 88
  %32 = load ptr, ptr %incdec.ptr7.2.i, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %add.ptr12.2.i, ptr noundef nonnull align 2 dereferenceable(32) %32, i64 32, i1 false)
  %incdec.ptr16.2.i = getelementptr inbounds i8, ptr %arrayidx8, i64 96
  %33 = load ptr, ptr %incdec.ptr10.2.i, align 8
  %add.ptr18.2.i = getelementptr inbounds i16, ptr %33, i64 %idx.ext.i
  %incdec.ptr19.2.i = getelementptr inbounds i8, ptr %9, i64 96
  %34 = load ptr, ptr %incdec.ptr13.2.i, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %add.ptr18.2.i, ptr noundef nonnull align 2 dereferenceable(32) %34, i64 32, i1 false)
  %incdec.ptr.3.i = getelementptr inbounds i8, ptr %arrayidx8, i64 104
  %35 = load ptr, ptr %incdec.ptr16.2.i, align 8
  %add.ptr.3.i = getelementptr inbounds i16, ptr %35, i64 %idx.ext.i
  %incdec.ptr1.3.i = getelementptr inbounds i8, ptr %9, i64 104
  %36 = load ptr, ptr %incdec.ptr19.2.i, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %add.ptr.3.i, ptr noundef nonnull align 2 dereferenceable(32) %36, i64 32, i1 false)
  %incdec.ptr4.3.i = getelementptr inbounds i8, ptr %arrayidx8, i64 112
  %37 = load ptr, ptr %incdec.ptr.3.i, align 8
  %add.ptr6.3.i = getelementptr inbounds i16, ptr %37, i64 %idx.ext.i
  %incdec.ptr7.3.i = getelementptr inbounds i8, ptr %9, i64 112
  %38 = load ptr, ptr %incdec.ptr1.3.i, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %add.ptr6.3.i, ptr noundef nonnull align 2 dereferenceable(32) %38, i64 32, i1 false)
  %incdec.ptr10.3.i = getelementptr inbounds i8, ptr %arrayidx8, i64 120
  %39 = load ptr, ptr %incdec.ptr4.3.i, align 8
  %add.ptr12.3.i = getelementptr inbounds i16, ptr %39, i64 %idx.ext.i
  %incdec.ptr13.3.i = getelementptr inbounds i8, ptr %9, i64 120
  %40 = load ptr, ptr %incdec.ptr7.3.i, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %add.ptr12.3.i, ptr noundef nonnull align 2 dereferenceable(32) %40, i64 32, i1 false)
  %41 = load ptr, ptr %incdec.ptr10.3.i, align 8
  %add.ptr18.3.i = getelementptr inbounds i16, ptr %41, i64 %idx.ext.i
  %42 = load ptr, ptr %incdec.ptr13.3.i, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %add.ptr18.3.i, ptr noundef nonnull align 2 dereferenceable(32) %42, i64 32, i1 false)
  br label %if.end11

if.end11:                                         ; preds = %if.then4, %if.else, %cond.end
  %chroma_format_idc = getelementptr inbounds i8, ptr %2, i64 268
  %43 = load i32, ptr %chroma_format_idc, align 4
  switch i32 %43, label %for.cond.preheader [
    i32 0, label %if.end149
    i32 3, label %if.end149
  ]

for.cond.preheader:                               ; preds = %if.end11
  %imgUV17 = getelementptr inbounds i8, ptr %2, i64 136
  %pix_c_y = getelementptr inbounds i8, ptr %currMB, i64 56
  %mb_rec23 = getelementptr inbounds i8, ptr %0, i64 1256
  %is_lossless107 = getelementptr inbounds i8, ptr %currMB, i64 92
  %itrans_4x4 = getelementptr inbounds i8, ptr %currMB, i64 432
  %mb_cr_size_y = getelementptr inbounds i8, ptr %1, i64 849112
  %mb_cr_size_x = getelementptr inbounds i8, ptr %1, i64 849108
  %arrayidx132 = getelementptr inbounds i8, ptr %1, i64 849136
  %arrayidx128 = getelementptr inbounds i8, ptr %1, i64 849132
  %pix_c_x126 = getelementptr inbounds i8, ptr %currMB, i64 52
  %num_uv_blocks70 = getelementptr inbounds i8, ptr %1, i64 849100
  %mb_pred53 = getelementptr inbounds i8, ptr %0, i64 1248
  %mb_rres = getelementptr inbounds i8, ptr %0, i64 1264
  br i1 %tobool.not, label %for.body.us, label %for.body.preheader

for.body.preheader:                               ; preds = %for.cond.preheader
  %44 = load ptr, ptr %imgUV17, align 8
  %45 = load ptr, ptr %44, align 8
  %46 = load i32, ptr %pix_c_y, align 8
  %idxprom21 = sext i32 %46 to i64
  %arrayidx22 = getelementptr inbounds ptr, ptr %45, i64 %idxprom21
  %47 = load ptr, ptr %mb_rec23, align 8
  %arrayidx25 = getelementptr inbounds i8, ptr %47, i64 8
  %48 = load ptr, ptr %arrayidx25, align 8
  %49 = load i32, ptr %is_lossless107, align 4
  %cmp108 = icmp eq i32 %49, 0
  %cond110 = select i1 %cmp108, ptr @itrans4x4, ptr @itrans4x4_ls
  store ptr %cond110, ptr %itrans_4x4, align 8
  tail call void @itrans_sp_cr(ptr noundef nonnull %currMB, i32 noundef 0)
  %50 = load i32, ptr %mb_cr_size_y, align 8
  %cmp113335 = icmp sgt i32 %50, 0
  br i1 %cmp113335, label %for.cond116.preheader.lr.ph, label %for.end125

for.body.us:                                      ; preds = %for.cond.preheader, %for.inc146.us
  %indvars.iv353 = phi i64 [ %indvars.iv.next354, %for.inc146.us ], [ 1, %for.cond.preheader ]
  %51 = load ptr, ptr %imgUV17, align 8
  %52 = getelementptr ptr, ptr %51, i64 %indvars.iv353
  %arrayidx20.us = getelementptr i8, ptr %52, i64 -8
  %53 = load ptr, ptr %arrayidx20.us, align 8
  %54 = load i32, ptr %pix_c_y, align 8
  %idxprom21.us = sext i32 %54 to i64
  %arrayidx22.us = getelementptr inbounds ptr, ptr %53, i64 %idxprom21.us
  %55 = load ptr, ptr %mb_rec23, align 8
  %arrayidx25.us = getelementptr inbounds ptr, ptr %55, i64 %indvars.iv353
  %56 = load ptr, ptr %arrayidx25.us, align 8
  %57 = load i32, ptr %cbp, align 4
  %tobool29.not.us = icmp ult i32 %57, 16
  br i1 %tobool29.not.us, label %if.else133.us, label %if.then30.us

if.then30.us:                                     ; preds = %for.body.us
  %58 = load i32, ptr %is_lossless107, align 4
  %cmp31.us = icmp eq i32 %58, 0
  %59 = load i32, ptr %num_uv_blocks70, align 4
  %cmp34339.us = icmp sgt i32 %59, 0
  br i1 %cmp31.us, label %for.cond33.preheader.us, label %for.cond69.preheader.us

for.body73.us:                                    ; preds = %for.body73.us.preheader, %for.body73.us
  %indvars.iv = phi i64 [ 0, %for.body73.us.preheader ], [ %indvars.iv.next, %for.body73.us ]
  %arrayidx75.us = getelementptr inbounds [8 x [4 x i8]], ptr getelementptr inbounds (i8, ptr @subblk_offset_x, i64 32), i64 0, i64 %indvars.iv
  %arrayidx78.us = getelementptr inbounds [8 x [4 x i8]], ptr getelementptr inbounds (i8, ptr @subblk_offset_y, i64 32), i64 0, i64 %indvars.iv
  %incdec.ptr80.us = getelementptr inbounds i8, ptr %arrayidx75.us, i64 1
  %60 = load i8, ptr %arrayidx75.us, align 4
  %conv81.us = zext i8 %60 to i32
  %incdec.ptr82.us = getelementptr inbounds i8, ptr %arrayidx78.us, i64 1
  %61 = load i8, ptr %arrayidx78.us, align 4
  %conv83.us = zext i8 %61 to i32
  tail call void @itrans4x4_ls(ptr noundef nonnull %currMB, i32 noundef %154, i32 noundef %conv81.us, i32 noundef %conv83.us)
  %incdec.ptr84.us = getelementptr inbounds i8, ptr %arrayidx75.us, i64 2
  %62 = load i8, ptr %incdec.ptr80.us, align 1
  %conv85.us = zext i8 %62 to i32
  %incdec.ptr86.us = getelementptr inbounds i8, ptr %arrayidx78.us, i64 2
  %63 = load i8, ptr %incdec.ptr82.us, align 1
  %conv87.us = zext i8 %63 to i32
  tail call void @itrans4x4_ls(ptr noundef nonnull %currMB, i32 noundef %154, i32 noundef %conv85.us, i32 noundef %conv87.us)
  %incdec.ptr88.us = getelementptr inbounds i8, ptr %arrayidx75.us, i64 3
  %64 = load i8, ptr %incdec.ptr84.us, align 2
  %conv89.us = zext i8 %64 to i32
  %incdec.ptr90.us = getelementptr inbounds i8, ptr %arrayidx78.us, i64 3
  %65 = load i8, ptr %incdec.ptr86.us, align 2
  %conv91.us = zext i8 %65 to i32
  tail call void @itrans4x4_ls(ptr noundef nonnull %currMB, i32 noundef %154, i32 noundef %conv89.us, i32 noundef %conv91.us)
  %66 = load i8, ptr %incdec.ptr88.us, align 1
  %conv92.us = zext i8 %66 to i32
  %67 = load i8, ptr %incdec.ptr90.us, align 1
  %conv93.us = zext i8 %67 to i32
  tail call void @itrans4x4_ls(ptr noundef nonnull %currMB, i32 noundef %154, i32 noundef %conv92.us, i32 noundef %conv93.us)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %68 = load i32, ptr %num_uv_blocks70, align 4
  %69 = sext i32 %68 to i64
  %cmp71.us = icmp slt i64 %indvars.iv.next, %69
  br i1 %cmp71.us, label %for.body73.us, label %if.end97.us

for.end.us:                                       ; preds = %for.body35.us, %for.cond33.preheader.us
  %70 = load ptr, ptr %mb_pred53, align 8
  %arrayidx55.us = getelementptr inbounds ptr, ptr %70, i64 %indvars.iv353
  %71 = load ptr, ptr %arrayidx55.us, align 8
  %72 = load ptr, ptr %mb_rres, align 8
  %arrayidx57.us = getelementptr inbounds ptr, ptr %72, i64 %indvars.iv353
  %73 = load ptr, ptr %arrayidx57.us, align 8
  %74 = load i32, ptr %arrayidx128, align 4
  %75 = load i32, ptr %arrayidx132, align 4
  %76 = load ptr, ptr %p_Vid1, align 8
  %max_pel_value_comp.us = getelementptr inbounds i8, ptr %76, i64 849072
  %arrayidx65.us = getelementptr inbounds [3 x i32], ptr %max_pel_value_comp.us, i64 0, i64 %indvars.iv353
  %77 = load i32, ptr %arrayidx65.us, align 4
  tail call void @sample_reconstruct(ptr noundef %56, ptr noundef %71, ptr noundef %73, i32 noundef 0, i32 noundef 0, i32 noundef %74, i32 noundef %75, i32 noundef %77, i32 noundef 6) #8
  br label %if.end97.us

if.end97.us:                                      ; preds = %for.body73.us, %for.cond69.preheader.us, %for.end.us
  %78 = load i32, ptr %arrayidx132, align 4
  %cmp5.i.us = icmp sgt i32 %78, 0
  br i1 %cmp5.i.us, label %for.body.lr.ph.i.us, label %for.inc146.us

for.body.lr.ph.i.us:                              ; preds = %if.end97.us
  %79 = load i32, ptr %arrayidx128, align 4
  %80 = load i32, ptr %pix_c_x126, align 4
  %idx.ext.i297.us = sext i32 %80 to i64
  %conv.i.us = sext i32 %79 to i64
  %mul.i.us = shl nsw i64 %conv.i.us, 1
  %xtraiter379 = and i32 %78, 1
  %81 = icmp eq i32 %78, 1
  br i1 %81, label %for.inc146.us.loopexit363.unr-lcssa, label %for.body.lr.ph.i.us.new

for.body.lr.ph.i.us.new:                          ; preds = %for.body.lr.ph.i.us
  %unroll_iter381 = and i32 %78, 2147483646
  br label %for.body.i.us

for.body.i.us:                                    ; preds = %for.body.i.us, %for.body.lr.ph.i.us.new
  %imgBuf1.addr.07.i.us = phi ptr [ %arrayidx22.us, %for.body.lr.ph.i.us.new ], [ %incdec.ptr.i298.us.1, %for.body.i.us ]
  %imgBuf2.addr.06.i.us = phi ptr [ %56, %for.body.lr.ph.i.us.new ], [ %incdec.ptr1.i300.us.1, %for.body.i.us ]
  %niter382 = phi i32 [ 0, %for.body.lr.ph.i.us.new ], [ %niter382.next.1, %for.body.i.us ]
  %incdec.ptr.i298.us = getelementptr inbounds i8, ptr %imgBuf1.addr.07.i.us, i64 8
  %82 = load ptr, ptr %imgBuf1.addr.07.i.us, align 8
  %add.ptr.i299.us = getelementptr inbounds i16, ptr %82, i64 %idx.ext.i297.us
  %incdec.ptr1.i300.us = getelementptr inbounds i8, ptr %imgBuf2.addr.06.i.us, i64 8
  %83 = load ptr, ptr %imgBuf2.addr.06.i.us, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %add.ptr.i299.us, ptr align 2 %83, i64 %mul.i.us, i1 false)
  %incdec.ptr.i298.us.1 = getelementptr inbounds i8, ptr %imgBuf1.addr.07.i.us, i64 16
  %84 = load ptr, ptr %incdec.ptr.i298.us, align 8
  %add.ptr.i299.us.1 = getelementptr inbounds i16, ptr %84, i64 %idx.ext.i297.us
  %incdec.ptr1.i300.us.1 = getelementptr inbounds i8, ptr %imgBuf2.addr.06.i.us, i64 16
  %85 = load ptr, ptr %incdec.ptr1.i300.us, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %add.ptr.i299.us.1, ptr align 2 %85, i64 %mul.i.us, i1 false)
  %niter382.next.1 = add i32 %niter382, 2
  %niter382.ncmp.1 = icmp eq i32 %niter382.next.1, %unroll_iter381
  br i1 %niter382.ncmp.1, label %for.inc146.us.loopexit363.unr-lcssa, label %for.body.i.us

for.body35.us:                                    ; preds = %for.cond33.preheader.us, %for.body35.us
  %indvars.iv350 = phi i64 [ %indvars.iv.next351, %for.body35.us ], [ 0, %for.cond33.preheader.us ]
  %arrayidx37.us = getelementptr inbounds [8 x [4 x i8]], ptr getelementptr inbounds (i8, ptr @subblk_offset_x, i64 32), i64 0, i64 %indvars.iv350
  %arrayidx39.us = getelementptr inbounds [8 x [4 x i8]], ptr getelementptr inbounds (i8, ptr @subblk_offset_y, i64 32), i64 0, i64 %indvars.iv350
  %incdec.ptr.us = getelementptr inbounds i8, ptr %arrayidx37.us, i64 1
  %86 = load i8, ptr %arrayidx37.us, align 4
  %conv.us = zext i8 %86 to i32
  %incdec.ptr41.us = getelementptr inbounds i8, ptr %arrayidx39.us, i64 1
  %87 = load i8, ptr %arrayidx39.us, align 4
  %conv42.us = zext i8 %87 to i32
  %88 = load ptr, ptr %currMB, align 8
  %mb_rres1.i.us = getelementptr inbounds i8, ptr %88, i64 1264
  %89 = load ptr, ptr %mb_rres1.i.us, align 8
  %arrayidx.i.us = getelementptr inbounds ptr, ptr %89, i64 %indvars.iv353
  %90 = load ptr, ptr %arrayidx.i.us, align 8
  %cof.i.us = getelementptr inbounds i8, ptr %88, i64 1272
  %91 = load ptr, ptr %cof.i.us, align 8
  %arrayidx3.i.us = getelementptr inbounds ptr, ptr %91, i64 %indvars.iv353
  %92 = load ptr, ptr %arrayidx3.i.us, align 8
  tail call void @inverse4x4(ptr noundef %92, ptr noundef %90, i32 noundef %conv42.us, i32 noundef %conv.us) #8
  %mb_rec.i.us = getelementptr inbounds i8, ptr %88, i64 1256
  %93 = load ptr, ptr %mb_rec.i.us, align 8
  %arrayidx5.i.us = getelementptr inbounds ptr, ptr %93, i64 %indvars.iv353
  %94 = load ptr, ptr %arrayidx5.i.us, align 8
  %idxprom6.i.us = zext i8 %87 to i64
  %arrayidx7.i.us = getelementptr inbounds ptr, ptr %94, i64 %idxprom6.i.us
  %mb_pred.i.us = getelementptr inbounds i8, ptr %88, i64 1248
  %95 = load ptr, ptr %mb_pred.i.us, align 8
  %arrayidx9.i.us = getelementptr inbounds ptr, ptr %95, i64 %indvars.iv353
  %96 = load ptr, ptr %arrayidx9.i.us, align 8
  %arrayidx11.i.us = getelementptr inbounds ptr, ptr %96, i64 %idxprom6.i.us
  %arrayidx13.i.us = getelementptr inbounds ptr, ptr %90, i64 %idxprom6.i.us
  %97 = load ptr, ptr %p_Vid1, align 8
  %max_pel_value_comp.i.us = getelementptr inbounds i8, ptr %97, i64 849072
  %arrayidx15.i.us = getelementptr inbounds [3 x i32], ptr %max_pel_value_comp.i.us, i64 0, i64 %indvars.iv353
  %98 = load i32, ptr %arrayidx15.i.us, align 4
  tail call void @sample_reconstruct(ptr noundef %arrayidx7.i.us, ptr noundef %arrayidx11.i.us, ptr noundef %arrayidx13.i.us, i32 noundef %conv.us, i32 noundef %conv.us, i32 noundef 4, i32 noundef 4, i32 noundef %98, i32 noundef 6) #8
  %incdec.ptr43.us = getelementptr inbounds i8, ptr %arrayidx37.us, i64 2
  %99 = load i8, ptr %incdec.ptr.us, align 1
  %conv44.us = zext i8 %99 to i32
  %incdec.ptr45.us = getelementptr inbounds i8, ptr %arrayidx39.us, i64 2
  %100 = load i8, ptr %incdec.ptr41.us, align 1
  %conv46.us = zext i8 %100 to i32
  %101 = load ptr, ptr %currMB, align 8
  %mb_rres1.i249.us = getelementptr inbounds i8, ptr %101, i64 1264
  %102 = load ptr, ptr %mb_rres1.i249.us, align 8
  %arrayidx.i251.us = getelementptr inbounds ptr, ptr %102, i64 %indvars.iv353
  %103 = load ptr, ptr %arrayidx.i251.us, align 8
  %cof.i252.us = getelementptr inbounds i8, ptr %101, i64 1272
  %104 = load ptr, ptr %cof.i252.us, align 8
  %arrayidx3.i253.us = getelementptr inbounds ptr, ptr %104, i64 %indvars.iv353
  %105 = load ptr, ptr %arrayidx3.i253.us, align 8
  tail call void @inverse4x4(ptr noundef %105, ptr noundef %103, i32 noundef %conv46.us, i32 noundef %conv44.us) #8
  %mb_rec.i254.us = getelementptr inbounds i8, ptr %101, i64 1256
  %106 = load ptr, ptr %mb_rec.i254.us, align 8
  %arrayidx5.i255.us = getelementptr inbounds ptr, ptr %106, i64 %indvars.iv353
  %107 = load ptr, ptr %arrayidx5.i255.us, align 8
  %idxprom6.i256.us = zext i8 %100 to i64
  %arrayidx7.i257.us = getelementptr inbounds ptr, ptr %107, i64 %idxprom6.i256.us
  %mb_pred.i258.us = getelementptr inbounds i8, ptr %101, i64 1248
  %108 = load ptr, ptr %mb_pred.i258.us, align 8
  %arrayidx9.i259.us = getelementptr inbounds ptr, ptr %108, i64 %indvars.iv353
  %109 = load ptr, ptr %arrayidx9.i259.us, align 8
  %arrayidx11.i260.us = getelementptr inbounds ptr, ptr %109, i64 %idxprom6.i256.us
  %arrayidx13.i261.us = getelementptr inbounds ptr, ptr %103, i64 %idxprom6.i256.us
  %110 = load ptr, ptr %p_Vid1, align 8
  %max_pel_value_comp.i263.us = getelementptr inbounds i8, ptr %110, i64 849072
  %arrayidx15.i264.us = getelementptr inbounds [3 x i32], ptr %max_pel_value_comp.i263.us, i64 0, i64 %indvars.iv353
  %111 = load i32, ptr %arrayidx15.i264.us, align 4
  tail call void @sample_reconstruct(ptr noundef %arrayidx7.i257.us, ptr noundef %arrayidx11.i260.us, ptr noundef %arrayidx13.i261.us, i32 noundef %conv44.us, i32 noundef %conv44.us, i32 noundef 4, i32 noundef 4, i32 noundef %111, i32 noundef 6) #8
  %incdec.ptr47.us = getelementptr inbounds i8, ptr %arrayidx37.us, i64 3
  %112 = load i8, ptr %incdec.ptr43.us, align 2
  %conv48.us = zext i8 %112 to i32
  %incdec.ptr49.us = getelementptr inbounds i8, ptr %arrayidx39.us, i64 3
  %113 = load i8, ptr %incdec.ptr45.us, align 2
  %conv50.us = zext i8 %113 to i32
  %114 = load ptr, ptr %currMB, align 8
  %mb_rres1.i265.us = getelementptr inbounds i8, ptr %114, i64 1264
  %115 = load ptr, ptr %mb_rres1.i265.us, align 8
  %arrayidx.i267.us = getelementptr inbounds ptr, ptr %115, i64 %indvars.iv353
  %116 = load ptr, ptr %arrayidx.i267.us, align 8
  %cof.i268.us = getelementptr inbounds i8, ptr %114, i64 1272
  %117 = load ptr, ptr %cof.i268.us, align 8
  %arrayidx3.i269.us = getelementptr inbounds ptr, ptr %117, i64 %indvars.iv353
  %118 = load ptr, ptr %arrayidx3.i269.us, align 8
  tail call void @inverse4x4(ptr noundef %118, ptr noundef %116, i32 noundef %conv50.us, i32 noundef %conv48.us) #8
  %mb_rec.i270.us = getelementptr inbounds i8, ptr %114, i64 1256
  %119 = load ptr, ptr %mb_rec.i270.us, align 8
  %arrayidx5.i271.us = getelementptr inbounds ptr, ptr %119, i64 %indvars.iv353
  %120 = load ptr, ptr %arrayidx5.i271.us, align 8
  %idxprom6.i272.us = zext i8 %113 to i64
  %arrayidx7.i273.us = getelementptr inbounds ptr, ptr %120, i64 %idxprom6.i272.us
  %mb_pred.i274.us = getelementptr inbounds i8, ptr %114, i64 1248
  %121 = load ptr, ptr %mb_pred.i274.us, align 8
  %arrayidx9.i275.us = getelementptr inbounds ptr, ptr %121, i64 %indvars.iv353
  %122 = load ptr, ptr %arrayidx9.i275.us, align 8
  %arrayidx11.i276.us = getelementptr inbounds ptr, ptr %122, i64 %idxprom6.i272.us
  %arrayidx13.i277.us = getelementptr inbounds ptr, ptr %116, i64 %idxprom6.i272.us
  %123 = load ptr, ptr %p_Vid1, align 8
  %max_pel_value_comp.i279.us = getelementptr inbounds i8, ptr %123, i64 849072
  %arrayidx15.i280.us = getelementptr inbounds [3 x i32], ptr %max_pel_value_comp.i279.us, i64 0, i64 %indvars.iv353
  %124 = load i32, ptr %arrayidx15.i280.us, align 4
  tail call void @sample_reconstruct(ptr noundef %arrayidx7.i273.us, ptr noundef %arrayidx11.i276.us, ptr noundef %arrayidx13.i277.us, i32 noundef %conv48.us, i32 noundef %conv48.us, i32 noundef 4, i32 noundef 4, i32 noundef %124, i32 noundef 6) #8
  %125 = load i8, ptr %incdec.ptr47.us, align 1
  %conv51.us = zext i8 %125 to i32
  %126 = load i8, ptr %incdec.ptr49.us, align 1
  %conv52.us = zext i8 %126 to i32
  %127 = load ptr, ptr %currMB, align 8
  %mb_rres1.i281.us = getelementptr inbounds i8, ptr %127, i64 1264
  %128 = load ptr, ptr %mb_rres1.i281.us, align 8
  %arrayidx.i283.us = getelementptr inbounds ptr, ptr %128, i64 %indvars.iv353
  %129 = load ptr, ptr %arrayidx.i283.us, align 8
  %cof.i284.us = getelementptr inbounds i8, ptr %127, i64 1272
  %130 = load ptr, ptr %cof.i284.us, align 8
  %arrayidx3.i285.us = getelementptr inbounds ptr, ptr %130, i64 %indvars.iv353
  %131 = load ptr, ptr %arrayidx3.i285.us, align 8
  tail call void @inverse4x4(ptr noundef %131, ptr noundef %129, i32 noundef %conv52.us, i32 noundef %conv51.us) #8
  %mb_rec.i286.us = getelementptr inbounds i8, ptr %127, i64 1256
  %132 = load ptr, ptr %mb_rec.i286.us, align 8
  %arrayidx5.i287.us = getelementptr inbounds ptr, ptr %132, i64 %indvars.iv353
  %133 = load ptr, ptr %arrayidx5.i287.us, align 8
  %idxprom6.i288.us = zext i8 %126 to i64
  %arrayidx7.i289.us = getelementptr inbounds ptr, ptr %133, i64 %idxprom6.i288.us
  %mb_pred.i290.us = getelementptr inbounds i8, ptr %127, i64 1248
  %134 = load ptr, ptr %mb_pred.i290.us, align 8
  %arrayidx9.i291.us = getelementptr inbounds ptr, ptr %134, i64 %indvars.iv353
  %135 = load ptr, ptr %arrayidx9.i291.us, align 8
  %arrayidx11.i292.us = getelementptr inbounds ptr, ptr %135, i64 %idxprom6.i288.us
  %arrayidx13.i293.us = getelementptr inbounds ptr, ptr %129, i64 %idxprom6.i288.us
  %136 = load ptr, ptr %p_Vid1, align 8
  %max_pel_value_comp.i295.us = getelementptr inbounds i8, ptr %136, i64 849072
  %arrayidx15.i296.us = getelementptr inbounds [3 x i32], ptr %max_pel_value_comp.i295.us, i64 0, i64 %indvars.iv353
  %137 = load i32, ptr %arrayidx15.i296.us, align 4
  tail call void @sample_reconstruct(ptr noundef %arrayidx7.i289.us, ptr noundef %arrayidx11.i292.us, ptr noundef %arrayidx13.i293.us, i32 noundef %conv51.us, i32 noundef %conv51.us, i32 noundef 4, i32 noundef 4, i32 noundef %137, i32 noundef 6) #8
  %indvars.iv.next351 = add nuw nsw i64 %indvars.iv350, 1
  %138 = load i32, ptr %num_uv_blocks70, align 4
  %139 = sext i32 %138 to i64
  %cmp34.us = icmp slt i64 %indvars.iv.next351, %139
  br i1 %cmp34.us, label %for.body35.us, label %for.end.us

if.else133.us:                                    ; preds = %for.body.us
  %140 = load i32, ptr %arrayidx132, align 4
  %cmp5.i316.us = icmp sgt i32 %140, 0
  br i1 %cmp5.i316.us, label %for.body.lr.ph.i317.us, label %for.inc146.us

for.body.lr.ph.i317.us:                           ; preds = %if.else133.us
  %141 = load i32, ptr %arrayidx128, align 4
  %142 = load i32, ptr %pix_c_x126, align 4
  %143 = load ptr, ptr %mb_pred53, align 8
  %arrayidx136.us = getelementptr inbounds ptr, ptr %143, i64 %indvars.iv353
  %144 = load ptr, ptr %arrayidx136.us, align 8
  %idx.ext.i318.us = sext i32 %142 to i64
  %conv.i319.us = sext i32 %141 to i64
  %mul.i320.us = shl nsw i64 %conv.i319.us, 1
  %xtraiter383 = and i32 %140, 1
  %145 = icmp eq i32 %140, 1
  br i1 %145, label %for.inc146.us.loopexit.unr-lcssa, label %for.body.lr.ph.i317.us.new

for.body.lr.ph.i317.us.new:                       ; preds = %for.body.lr.ph.i317.us
  %unroll_iter385 = and i32 %140, 2147483646
  br label %for.body.i321.us

for.body.i321.us:                                 ; preds = %for.body.i321.us, %for.body.lr.ph.i317.us.new
  %imgBuf1.addr.07.i323.us = phi ptr [ %arrayidx22.us, %for.body.lr.ph.i317.us.new ], [ %incdec.ptr.i325.us.1, %for.body.i321.us ]
  %imgBuf2.addr.06.i324.us = phi ptr [ %144, %for.body.lr.ph.i317.us.new ], [ %incdec.ptr1.i327.us.1, %for.body.i321.us ]
  %niter386 = phi i32 [ 0, %for.body.lr.ph.i317.us.new ], [ %niter386.next.1, %for.body.i321.us ]
  %incdec.ptr.i325.us = getelementptr inbounds i8, ptr %imgBuf1.addr.07.i323.us, i64 8
  %146 = load ptr, ptr %imgBuf1.addr.07.i323.us, align 8
  %add.ptr.i326.us = getelementptr inbounds i16, ptr %146, i64 %idx.ext.i318.us
  %incdec.ptr1.i327.us = getelementptr inbounds i8, ptr %imgBuf2.addr.06.i324.us, i64 8
  %147 = load ptr, ptr %imgBuf2.addr.06.i324.us, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %add.ptr.i326.us, ptr align 2 %147, i64 %mul.i320.us, i1 false)
  %incdec.ptr.i325.us.1 = getelementptr inbounds i8, ptr %imgBuf1.addr.07.i323.us, i64 16
  %148 = load ptr, ptr %incdec.ptr.i325.us, align 8
  %add.ptr.i326.us.1 = getelementptr inbounds i16, ptr %148, i64 %idx.ext.i318.us
  %incdec.ptr1.i327.us.1 = getelementptr inbounds i8, ptr %imgBuf2.addr.06.i324.us, i64 16
  %149 = load ptr, ptr %incdec.ptr1.i327.us, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %add.ptr.i326.us.1, ptr align 2 %149, i64 %mul.i320.us, i1 false)
  %niter386.next.1 = add i32 %niter386, 2
  %niter386.ncmp.1 = icmp eq i32 %niter386.next.1, %unroll_iter385
  br i1 %niter386.ncmp.1, label %for.inc146.us.loopexit.unr-lcssa, label %for.body.i321.us

for.inc146.us.loopexit.unr-lcssa:                 ; preds = %for.body.i321.us, %for.body.lr.ph.i317.us
  %imgBuf1.addr.07.i323.us.unr = phi ptr [ %arrayidx22.us, %for.body.lr.ph.i317.us ], [ %incdec.ptr.i325.us.1, %for.body.i321.us ]
  %imgBuf2.addr.06.i324.us.unr = phi ptr [ %144, %for.body.lr.ph.i317.us ], [ %incdec.ptr1.i327.us.1, %for.body.i321.us ]
  %lcmp.mod384.not = icmp eq i32 %xtraiter383, 0
  br i1 %lcmp.mod384.not, label %for.inc146.us, label %for.body.i321.us.epil

for.body.i321.us.epil:                            ; preds = %for.inc146.us.loopexit.unr-lcssa
  %150 = load ptr, ptr %imgBuf1.addr.07.i323.us.unr, align 8
  %add.ptr.i326.us.epil = getelementptr inbounds i16, ptr %150, i64 %idx.ext.i318.us
  %151 = load ptr, ptr %imgBuf2.addr.06.i324.us.unr, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %add.ptr.i326.us.epil, ptr align 2 %151, i64 %mul.i320.us, i1 false)
  br label %for.inc146.us

for.inc146.us.loopexit363.unr-lcssa:              ; preds = %for.body.i.us, %for.body.lr.ph.i.us
  %imgBuf1.addr.07.i.us.unr = phi ptr [ %arrayidx22.us, %for.body.lr.ph.i.us ], [ %incdec.ptr.i298.us.1, %for.body.i.us ]
  %imgBuf2.addr.06.i.us.unr = phi ptr [ %56, %for.body.lr.ph.i.us ], [ %incdec.ptr1.i300.us.1, %for.body.i.us ]
  %lcmp.mod380.not = icmp eq i32 %xtraiter379, 0
  br i1 %lcmp.mod380.not, label %for.inc146.us, label %for.body.i.us.epil

for.body.i.us.epil:                               ; preds = %for.inc146.us.loopexit363.unr-lcssa
  %152 = load ptr, ptr %imgBuf1.addr.07.i.us.unr, align 8
  %add.ptr.i299.us.epil = getelementptr inbounds i16, ptr %152, i64 %idx.ext.i297.us
  %153 = load ptr, ptr %imgBuf2.addr.06.i.us.unr, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %add.ptr.i299.us.epil, ptr align 2 %153, i64 %mul.i.us, i1 false)
  br label %for.inc146.us

for.inc146.us:                                    ; preds = %for.body.i.us.epil, %for.inc146.us.loopexit363.unr-lcssa, %for.body.i321.us.epil, %for.inc146.us.loopexit.unr-lcssa, %if.else133.us, %if.end97.us
  %indvars.iv.next354 = add nuw nsw i64 %indvars.iv353, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next354, 3
  br i1 %exitcond.not, label %if.end149, label %for.body.us

for.cond33.preheader.us:                          ; preds = %if.then30.us
  br i1 %cmp34339.us, label %for.body35.us, label %for.end.us

for.cond69.preheader.us:                          ; preds = %if.then30.us
  br i1 %cmp34339.us, label %for.body73.us.preheader, label %if.end97.us

for.body73.us.preheader:                          ; preds = %for.cond69.preheader.us
  %154 = trunc nuw nsw i64 %indvars.iv353 to i32
  br label %for.body73.us

for.cond116.preheader.lr.ph:                      ; preds = %for.body.preheader
  %155 = load i32, ptr %mb_cr_size_x, align 4
  %156 = icmp sgt i32 %155, 0
  br i1 %156, label %for.cond116.preheader, label %for.end125

for.cond116.preheader:                            ; preds = %for.cond116.preheader.lr.ph, %for.inc123
  %157 = phi i32 [ %161, %for.inc123 ], [ %50, %for.cond116.preheader.lr.ph ]
  %158 = phi i32 [ %162, %for.inc123 ], [ %155, %for.cond116.preheader.lr.ph ]
  %joff.0336 = phi i32 [ %add124, %for.inc123 ], [ 0, %for.cond116.preheader.lr.ph ]
  %cmp117333 = icmp sgt i32 %158, 0
  br i1 %cmp117333, label %for.body119, label %for.inc123

for.body119:                                      ; preds = %for.cond116.preheader, %for.body119
  %ioff.0334 = phi i32 [ %add, %for.body119 ], [ 0, %for.cond116.preheader ]
  %159 = load ptr, ptr %itrans_4x4, align 8
  tail call void %159(ptr noundef nonnull %currMB, i32 noundef 1, i32 noundef %ioff.0334, i32 noundef %joff.0336) #8
  %add = add nuw nsw i32 %ioff.0334, 4
  %160 = load i32, ptr %mb_cr_size_x, align 4
  %cmp117 = icmp slt i32 %add, %160
  br i1 %cmp117, label %for.body119, label %for.inc123.loopexit

for.inc123.loopexit:                              ; preds = %for.body119
  %.pre = load i32, ptr %mb_cr_size_y, align 8
  br label %for.inc123

for.inc123:                                       ; preds = %for.inc123.loopexit, %for.cond116.preheader
  %161 = phi i32 [ %.pre, %for.inc123.loopexit ], [ %157, %for.cond116.preheader ]
  %162 = phi i32 [ %160, %for.inc123.loopexit ], [ %158, %for.cond116.preheader ]
  %add124 = add nuw nsw i32 %joff.0336, 4
  %cmp113 = icmp slt i32 %add124, %161
  br i1 %cmp113, label %for.cond116.preheader, label %for.end125, !llvm.loop !19

for.end125:                                       ; preds = %for.inc123, %for.cond116.preheader.lr.ph, %for.body.preheader
  %163 = load i32, ptr %arrayidx132, align 4
  %cmp5.i301 = icmp sgt i32 %163, 0
  br i1 %cmp5.i301, label %for.body.lr.ph.i302, label %for.inc146

for.body.lr.ph.i302:                              ; preds = %for.end125
  %164 = load i32, ptr %arrayidx128, align 4
  %165 = load i32, ptr %pix_c_x126, align 4
  %idx.ext.i303 = sext i32 %165 to i64
  %conv.i304 = sext i32 %164 to i64
  %mul.i305 = shl nsw i64 %conv.i304, 1
  %xtraiter = and i32 %163, 1
  %166 = icmp eq i32 %163, 1
  br i1 %166, label %for.inc146.loopexit.unr-lcssa, label %for.body.lr.ph.i302.new

for.body.lr.ph.i302.new:                          ; preds = %for.body.lr.ph.i302
  %unroll_iter = and i32 %163, 2147483646
  br label %for.body.i306

for.body.i306:                                    ; preds = %for.body.i306, %for.body.lr.ph.i302.new
  %imgBuf1.addr.07.i308 = phi ptr [ %arrayidx22, %for.body.lr.ph.i302.new ], [ %incdec.ptr.i310.1369, %for.body.i306 ]
  %imgBuf2.addr.06.i309 = phi ptr [ %48, %for.body.lr.ph.i302.new ], [ %incdec.ptr1.i312.1371, %for.body.i306 ]
  %niter = phi i32 [ 0, %for.body.lr.ph.i302.new ], [ %niter.next.1, %for.body.i306 ]
  %incdec.ptr.i310 = getelementptr inbounds i8, ptr %imgBuf1.addr.07.i308, i64 8
  %167 = load ptr, ptr %imgBuf1.addr.07.i308, align 8
  %add.ptr.i311 = getelementptr inbounds i16, ptr %167, i64 %idx.ext.i303
  %incdec.ptr1.i312 = getelementptr inbounds i8, ptr %imgBuf2.addr.06.i309, i64 8
  %168 = load ptr, ptr %imgBuf2.addr.06.i309, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %add.ptr.i311, ptr align 2 %168, i64 %mul.i305, i1 false)
  %incdec.ptr.i310.1369 = getelementptr inbounds i8, ptr %imgBuf1.addr.07.i308, i64 16
  %169 = load ptr, ptr %incdec.ptr.i310, align 8
  %add.ptr.i311.1370 = getelementptr inbounds i16, ptr %169, i64 %idx.ext.i303
  %incdec.ptr1.i312.1371 = getelementptr inbounds i8, ptr %imgBuf2.addr.06.i309, i64 16
  %170 = load ptr, ptr %incdec.ptr1.i312, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %add.ptr.i311.1370, ptr align 2 %170, i64 %mul.i305, i1 false)
  %niter.next.1 = add i32 %niter, 2
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %for.inc146.loopexit.unr-lcssa, label %for.body.i306

for.inc146.loopexit.unr-lcssa:                    ; preds = %for.body.i306, %for.body.lr.ph.i302
  %imgBuf1.addr.07.i308.unr = phi ptr [ %arrayidx22, %for.body.lr.ph.i302 ], [ %incdec.ptr.i310.1369, %for.body.i306 ]
  %imgBuf2.addr.06.i309.unr = phi ptr [ %48, %for.body.lr.ph.i302 ], [ %incdec.ptr1.i312.1371, %for.body.i306 ]
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.inc146, label %for.body.i306.epil

for.body.i306.epil:                               ; preds = %for.inc146.loopexit.unr-lcssa
  %171 = load ptr, ptr %imgBuf1.addr.07.i308.unr, align 8
  %add.ptr.i311.epil = getelementptr inbounds i16, ptr %171, i64 %idx.ext.i303
  %172 = load ptr, ptr %imgBuf2.addr.06.i309.unr, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %add.ptr.i311.epil, ptr align 2 %172, i64 %mul.i305, i1 false)
  br label %for.inc146

for.inc146:                                       ; preds = %for.body.i306.epil, %for.inc146.loopexit.unr-lcssa, %for.end125
  %173 = load ptr, ptr %imgUV17, align 8
  %arrayidx20.1 = getelementptr inbounds i8, ptr %173, i64 8
  %174 = load ptr, ptr %arrayidx20.1, align 8
  %175 = load i32, ptr %pix_c_y, align 8
  %idxprom21.1 = sext i32 %175 to i64
  %arrayidx22.1 = getelementptr inbounds ptr, ptr %174, i64 %idxprom21.1
  %176 = load ptr, ptr %mb_rec23, align 8
  %arrayidx25.1 = getelementptr inbounds i8, ptr %176, i64 16
  %177 = load ptr, ptr %arrayidx25.1, align 8
  %178 = load i32, ptr %is_lossless107, align 4
  %cmp108.1 = icmp eq i32 %178, 0
  %cond110.1 = select i1 %cmp108.1, ptr @itrans4x4, ptr @itrans4x4_ls
  store ptr %cond110.1, ptr %itrans_4x4, align 8
  tail call void @itrans_sp_cr(ptr noundef nonnull %currMB, i32 noundef 1)
  %179 = load i32, ptr %mb_cr_size_y, align 8
  %cmp113335.1 = icmp sgt i32 %179, 0
  br i1 %cmp113335.1, label %for.cond116.preheader.lr.ph.1, label %for.end125.1

for.cond116.preheader.lr.ph.1:                    ; preds = %for.inc146
  %180 = load i32, ptr %mb_cr_size_x, align 4
  %181 = icmp sgt i32 %180, 0
  br i1 %181, label %for.cond116.preheader.1, label %for.end125.1

for.cond116.preheader.1:                          ; preds = %for.cond116.preheader.lr.ph.1, %for.inc123.1
  %182 = phi i32 [ %186, %for.inc123.1 ], [ %179, %for.cond116.preheader.lr.ph.1 ]
  %183 = phi i32 [ %187, %for.inc123.1 ], [ %180, %for.cond116.preheader.lr.ph.1 ]
  %joff.0336.1 = phi i32 [ %add124.1, %for.inc123.1 ], [ 0, %for.cond116.preheader.lr.ph.1 ]
  %cmp117333.1 = icmp sgt i32 %183, 0
  br i1 %cmp117333.1, label %for.body119.1, label %for.inc123.1

for.body119.1:                                    ; preds = %for.cond116.preheader.1, %for.body119.1
  %ioff.0334.1 = phi i32 [ %add.1, %for.body119.1 ], [ 0, %for.cond116.preheader.1 ]
  %184 = load ptr, ptr %itrans_4x4, align 8
  tail call void %184(ptr noundef nonnull %currMB, i32 noundef 2, i32 noundef %ioff.0334.1, i32 noundef %joff.0336.1) #8
  %add.1 = add nuw nsw i32 %ioff.0334.1, 4
  %185 = load i32, ptr %mb_cr_size_x, align 4
  %cmp117.1 = icmp slt i32 %add.1, %185
  br i1 %cmp117.1, label %for.body119.1, label %for.inc123.loopexit.1

for.inc123.loopexit.1:                            ; preds = %for.body119.1
  %.pre356 = load i32, ptr %mb_cr_size_y, align 8
  br label %for.inc123.1

for.inc123.1:                                     ; preds = %for.inc123.loopexit.1, %for.cond116.preheader.1
  %186 = phi i32 [ %.pre356, %for.inc123.loopexit.1 ], [ %182, %for.cond116.preheader.1 ]
  %187 = phi i32 [ %185, %for.inc123.loopexit.1 ], [ %183, %for.cond116.preheader.1 ]
  %add124.1 = add nuw nsw i32 %joff.0336.1, 4
  %cmp113.1 = icmp slt i32 %add124.1, %186
  br i1 %cmp113.1, label %for.cond116.preheader.1, label %for.end125.1, !llvm.loop !19

for.end125.1:                                     ; preds = %for.inc123.1, %for.cond116.preheader.lr.ph.1, %for.inc146
  %188 = load i32, ptr %arrayidx132, align 4
  %cmp5.i301.1 = icmp sgt i32 %188, 0
  br i1 %cmp5.i301.1, label %for.body.lr.ph.i302.1, label %if.end149

for.body.lr.ph.i302.1:                            ; preds = %for.end125.1
  %189 = load i32, ptr %arrayidx128, align 4
  %190 = load i32, ptr %pix_c_x126, align 4
  %idx.ext.i303.1 = sext i32 %190 to i64
  %conv.i304.1 = sext i32 %189 to i64
  %mul.i305.1 = shl nsw i64 %conv.i304.1, 1
  %xtraiter375 = and i32 %188, 1
  %191 = icmp eq i32 %188, 1
  br i1 %191, label %if.end149.loopexit364.unr-lcssa, label %for.body.lr.ph.i302.1.new

for.body.lr.ph.i302.1.new:                        ; preds = %for.body.lr.ph.i302.1
  %unroll_iter377 = and i32 %188, 2147483646
  br label %for.body.i306.1

for.body.i306.1:                                  ; preds = %for.body.i306.1, %for.body.lr.ph.i302.1.new
  %imgBuf1.addr.07.i308.1 = phi ptr [ %arrayidx22.1, %for.body.lr.ph.i302.1.new ], [ %incdec.ptr.i310.1.1, %for.body.i306.1 ]
  %imgBuf2.addr.06.i309.1 = phi ptr [ %177, %for.body.lr.ph.i302.1.new ], [ %incdec.ptr1.i312.1.1, %for.body.i306.1 ]
  %niter378 = phi i32 [ 0, %for.body.lr.ph.i302.1.new ], [ %niter378.next.1, %for.body.i306.1 ]
  %incdec.ptr.i310.1 = getelementptr inbounds i8, ptr %imgBuf1.addr.07.i308.1, i64 8
  %192 = load ptr, ptr %imgBuf1.addr.07.i308.1, align 8
  %add.ptr.i311.1 = getelementptr inbounds i16, ptr %192, i64 %idx.ext.i303.1
  %incdec.ptr1.i312.1 = getelementptr inbounds i8, ptr %imgBuf2.addr.06.i309.1, i64 8
  %193 = load ptr, ptr %imgBuf2.addr.06.i309.1, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %add.ptr.i311.1, ptr align 2 %193, i64 %mul.i305.1, i1 false)
  %incdec.ptr.i310.1.1 = getelementptr inbounds i8, ptr %imgBuf1.addr.07.i308.1, i64 16
  %194 = load ptr, ptr %incdec.ptr.i310.1, align 8
  %add.ptr.i311.1.1 = getelementptr inbounds i16, ptr %194, i64 %idx.ext.i303.1
  %incdec.ptr1.i312.1.1 = getelementptr inbounds i8, ptr %imgBuf2.addr.06.i309.1, i64 16
  %195 = load ptr, ptr %incdec.ptr1.i312.1, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %add.ptr.i311.1.1, ptr align 2 %195, i64 %mul.i305.1, i1 false)
  %niter378.next.1 = add i32 %niter378, 2
  %niter378.ncmp.1 = icmp eq i32 %niter378.next.1, %unroll_iter377
  br i1 %niter378.ncmp.1, label %if.end149.loopexit364.unr-lcssa, label %for.body.i306.1

if.end149.loopexit364.unr-lcssa:                  ; preds = %for.body.i306.1, %for.body.lr.ph.i302.1
  %imgBuf1.addr.07.i308.1.unr = phi ptr [ %arrayidx22.1, %for.body.lr.ph.i302.1 ], [ %incdec.ptr.i310.1.1, %for.body.i306.1 ]
  %imgBuf2.addr.06.i309.1.unr = phi ptr [ %177, %for.body.lr.ph.i302.1 ], [ %incdec.ptr1.i312.1.1, %for.body.i306.1 ]
  %lcmp.mod376.not = icmp eq i32 %xtraiter375, 0
  br i1 %lcmp.mod376.not, label %if.end149, label %for.body.i306.1.epil

for.body.i306.1.epil:                             ; preds = %if.end149.loopexit364.unr-lcssa
  %196 = load ptr, ptr %imgBuf1.addr.07.i308.1.unr, align 8
  %add.ptr.i311.1.epil = getelementptr inbounds i16, ptr %196, i64 %idx.ext.i303.1
  %197 = load ptr, ptr %imgBuf2.addr.06.i309.1.unr, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %add.ptr.i311.1.epil, ptr align 2 %197, i64 %mul.i305.1, i1 false)
  br label %if.end149

if.end149:                                        ; preds = %for.body.i306.1.epil, %if.end149.loopexit364.unr-lcssa, %for.inc146.us, %for.end125.1, %if.end11, %if.end11
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @copy_image_data(ptr nocapture noundef readonly %imgBuf1, ptr nocapture noundef readonly %imgBuf2, i32 noundef %off1, i32 noundef %off2, i32 noundef %width, i32 noundef %height) local_unnamed_addr #4 {
entry:
  %cmp5 = icmp sgt i32 %height, 0
  br i1 %cmp5, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %idx.ext = sext i32 %off1 to i64
  %idx.ext2 = sext i32 %off2 to i64
  %conv = sext i32 %width to i64
  %mul = shl nsw i64 %conv, 1
  %xtraiter = and i32 %height, 1
  %0 = icmp eq i32 %height, 1
  br i1 %0, label %for.end.loopexit.unr-lcssa, label %for.body.lr.ph.new

for.body.lr.ph.new:                               ; preds = %for.body.lr.ph
  %unroll_iter = and i32 %height, 2147483646
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph.new
  %imgBuf1.addr.07 = phi ptr [ %imgBuf1, %for.body.lr.ph.new ], [ %incdec.ptr.1, %for.body ]
  %imgBuf2.addr.06 = phi ptr [ %imgBuf2, %for.body.lr.ph.new ], [ %incdec.ptr1.1, %for.body ]
  %niter = phi i32 [ 0, %for.body.lr.ph.new ], [ %niter.next.1, %for.body ]
  %incdec.ptr = getelementptr inbounds i8, ptr %imgBuf1.addr.07, i64 8
  %1 = load ptr, ptr %imgBuf1.addr.07, align 8
  %add.ptr = getelementptr inbounds i16, ptr %1, i64 %idx.ext
  %incdec.ptr1 = getelementptr inbounds i8, ptr %imgBuf2.addr.06, i64 8
  %2 = load ptr, ptr %imgBuf2.addr.06, align 8
  %add.ptr3 = getelementptr inbounds i16, ptr %2, i64 %idx.ext2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %add.ptr, ptr align 2 %add.ptr3, i64 %mul, i1 false)
  %incdec.ptr.1 = getelementptr inbounds i8, ptr %imgBuf1.addr.07, i64 16
  %3 = load ptr, ptr %incdec.ptr, align 8
  %add.ptr.1 = getelementptr inbounds i16, ptr %3, i64 %idx.ext
  %incdec.ptr1.1 = getelementptr inbounds i8, ptr %imgBuf2.addr.06, i64 16
  %4 = load ptr, ptr %incdec.ptr1, align 8
  %add.ptr3.1 = getelementptr inbounds i16, ptr %4, i64 %idx.ext2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %add.ptr.1, ptr align 2 %add.ptr3.1, i64 %mul, i1 false)
  %niter.next.1 = add i32 %niter, 2
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %for.end.loopexit.unr-lcssa, label %for.body

for.end.loopexit.unr-lcssa:                       ; preds = %for.body, %for.body.lr.ph
  %imgBuf1.addr.07.unr = phi ptr [ %imgBuf1, %for.body.lr.ph ], [ %incdec.ptr.1, %for.body ]
  %imgBuf2.addr.06.unr = phi ptr [ %imgBuf2, %for.body.lr.ph ], [ %incdec.ptr1.1, %for.body ]
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.end, label %for.body.epil

for.body.epil:                                    ; preds = %for.end.loopexit.unr-lcssa
  %5 = load ptr, ptr %imgBuf1.addr.07.unr, align 8
  %add.ptr.epil = getelementptr inbounds i16, ptr %5, i64 %idx.ext
  %6 = load ptr, ptr %imgBuf2.addr.06.unr, align 8
  %add.ptr3.epil = getelementptr inbounds i16, ptr %6, i64 %idx.ext2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %add.ptr.epil, ptr align 2 %add.ptr3.epil, i64 %mul, i1 false)
  br label %for.end

for.end:                                          ; preds = %for.body.epil, %for.end.loopexit.unr-lcssa, %entry
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @copy_image_data_8x8(ptr nocapture noundef readonly %imgBuf1, ptr nocapture noundef readonly %imgBuf2, i32 noundef %off1, i32 noundef %off2) local_unnamed_addr #3 {
entry:
  %idx.ext = sext i32 %off1 to i64
  %idx.ext2 = sext i32 %off2 to i64
  %incdec.ptr = getelementptr inbounds i8, ptr %imgBuf1, i64 8
  %0 = load ptr, ptr %imgBuf1, align 8
  %add.ptr = getelementptr inbounds i16, ptr %0, i64 %idx.ext
  %incdec.ptr1 = getelementptr inbounds i8, ptr %imgBuf2, i64 8
  %1 = load ptr, ptr %imgBuf2, align 8
  %add.ptr3 = getelementptr inbounds i16, ptr %1, i64 %idx.ext2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %add.ptr, ptr noundef nonnull align 2 dereferenceable(16) %add.ptr3, i64 16, i1 false)
  %incdec.ptr4 = getelementptr inbounds i8, ptr %imgBuf1, i64 16
  %2 = load ptr, ptr %incdec.ptr, align 8
  %add.ptr6 = getelementptr inbounds i16, ptr %2, i64 %idx.ext
  %incdec.ptr7 = getelementptr inbounds i8, ptr %imgBuf2, i64 16
  %3 = load ptr, ptr %incdec.ptr1, align 8
  %add.ptr9 = getelementptr inbounds i16, ptr %3, i64 %idx.ext2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %add.ptr6, ptr noundef nonnull align 2 dereferenceable(16) %add.ptr9, i64 16, i1 false)
  %incdec.ptr10 = getelementptr inbounds i8, ptr %imgBuf1, i64 24
  %4 = load ptr, ptr %incdec.ptr4, align 8
  %add.ptr12 = getelementptr inbounds i16, ptr %4, i64 %idx.ext
  %incdec.ptr13 = getelementptr inbounds i8, ptr %imgBuf2, i64 24
  %5 = load ptr, ptr %incdec.ptr7, align 8
  %add.ptr15 = getelementptr inbounds i16, ptr %5, i64 %idx.ext2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %add.ptr12, ptr noundef nonnull align 2 dereferenceable(16) %add.ptr15, i64 16, i1 false)
  %incdec.ptr16 = getelementptr inbounds i8, ptr %imgBuf1, i64 32
  %6 = load ptr, ptr %incdec.ptr10, align 8
  %add.ptr18 = getelementptr inbounds i16, ptr %6, i64 %idx.ext
  %incdec.ptr19 = getelementptr inbounds i8, ptr %imgBuf2, i64 32
  %7 = load ptr, ptr %incdec.ptr13, align 8
  %add.ptr21 = getelementptr inbounds i16, ptr %7, i64 %idx.ext2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %add.ptr18, ptr noundef nonnull align 2 dereferenceable(16) %add.ptr21, i64 16, i1 false)
  %incdec.ptr.1 = getelementptr inbounds i8, ptr %imgBuf1, i64 40
  %8 = load ptr, ptr %incdec.ptr16, align 8
  %add.ptr.1 = getelementptr inbounds i16, ptr %8, i64 %idx.ext
  %incdec.ptr1.1 = getelementptr inbounds i8, ptr %imgBuf2, i64 40
  %9 = load ptr, ptr %incdec.ptr19, align 8
  %add.ptr3.1 = getelementptr inbounds i16, ptr %9, i64 %idx.ext2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %add.ptr.1, ptr noundef nonnull align 2 dereferenceable(16) %add.ptr3.1, i64 16, i1 false)
  %incdec.ptr4.1 = getelementptr inbounds i8, ptr %imgBuf1, i64 48
  %10 = load ptr, ptr %incdec.ptr.1, align 8
  %add.ptr6.1 = getelementptr inbounds i16, ptr %10, i64 %idx.ext
  %incdec.ptr7.1 = getelementptr inbounds i8, ptr %imgBuf2, i64 48
  %11 = load ptr, ptr %incdec.ptr1.1, align 8
  %add.ptr9.1 = getelementptr inbounds i16, ptr %11, i64 %idx.ext2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %add.ptr6.1, ptr noundef nonnull align 2 dereferenceable(16) %add.ptr9.1, i64 16, i1 false)
  %incdec.ptr10.1 = getelementptr inbounds i8, ptr %imgBuf1, i64 56
  %12 = load ptr, ptr %incdec.ptr4.1, align 8
  %add.ptr12.1 = getelementptr inbounds i16, ptr %12, i64 %idx.ext
  %incdec.ptr13.1 = getelementptr inbounds i8, ptr %imgBuf2, i64 56
  %13 = load ptr, ptr %incdec.ptr7.1, align 8
  %add.ptr15.1 = getelementptr inbounds i16, ptr %13, i64 %idx.ext2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %add.ptr12.1, ptr noundef nonnull align 2 dereferenceable(16) %add.ptr15.1, i64 16, i1 false)
  %14 = load ptr, ptr %incdec.ptr10.1, align 8
  %add.ptr18.1 = getelementptr inbounds i16, ptr %14, i64 %idx.ext
  %15 = load ptr, ptr %incdec.ptr13.1, align 8
  %add.ptr21.1 = getelementptr inbounds i16, ptr %15, i64 %idx.ext2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %add.ptr18.1, ptr noundef nonnull align 2 dereferenceable(16) %add.ptr21.1, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @copy_image_data_4x4(ptr nocapture noundef readonly %imgBuf1, ptr nocapture noundef readonly %imgBuf2, i32 noundef %off1, i32 noundef %off2) local_unnamed_addr #3 {
entry:
  %incdec.ptr = getelementptr inbounds i8, ptr %imgBuf1, i64 8
  %0 = load ptr, ptr %imgBuf1, align 8
  %idx.ext = sext i32 %off1 to i64
  %add.ptr = getelementptr inbounds i16, ptr %0, i64 %idx.ext
  %incdec.ptr1 = getelementptr inbounds i8, ptr %imgBuf2, i64 8
  %1 = load ptr, ptr %imgBuf2, align 8
  %idx.ext2 = sext i32 %off2 to i64
  %add.ptr3 = getelementptr inbounds i16, ptr %1, i64 %idx.ext2
  %2 = load i64, ptr %add.ptr3, align 2
  store i64 %2, ptr %add.ptr, align 2
  %incdec.ptr4 = getelementptr inbounds i8, ptr %imgBuf1, i64 16
  %3 = load ptr, ptr %incdec.ptr, align 8
  %add.ptr6 = getelementptr inbounds i16, ptr %3, i64 %idx.ext
  %incdec.ptr7 = getelementptr inbounds i8, ptr %imgBuf2, i64 16
  %4 = load ptr, ptr %incdec.ptr1, align 8
  %add.ptr9 = getelementptr inbounds i16, ptr %4, i64 %idx.ext2
  %5 = load i64, ptr %add.ptr9, align 2
  store i64 %5, ptr %add.ptr6, align 2
  %incdec.ptr10 = getelementptr inbounds i8, ptr %imgBuf1, i64 24
  %6 = load ptr, ptr %incdec.ptr4, align 8
  %add.ptr12 = getelementptr inbounds i16, ptr %6, i64 %idx.ext
  %incdec.ptr13 = getelementptr inbounds i8, ptr %imgBuf2, i64 24
  %7 = load ptr, ptr %incdec.ptr7, align 8
  %add.ptr15 = getelementptr inbounds i16, ptr %7, i64 %idx.ext2
  %8 = load i64, ptr %add.ptr15, align 2
  store i64 %8, ptr %add.ptr12, align 2
  %9 = load ptr, ptr %incdec.ptr10, align 8
  %add.ptr17 = getelementptr inbounds i16, ptr %9, i64 %idx.ext
  %10 = load ptr, ptr %incdec.ptr13, align 8
  %add.ptr19 = getelementptr inbounds i16, ptr %10, i64 %idx.ext2
  %11 = load i64, ptr %add.ptr19, align 2
  store i64 %11, ptr %add.ptr17, align 2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local range(i32 0, 2) i32 @CheckVertMV(ptr nocapture noundef readonly %currMB, i32 noundef %vec1_y, i32 noundef %block_size_y) local_unnamed_addr #6 {
entry:
  %p_Vid1 = getelementptr inbounds i8, ptr %currMB, i64 8
  %0 = load ptr, ptr %p_Vid1, align 8
  %1 = load ptr, ptr %currMB, align 8
  %dec_picture2 = getelementptr inbounds i8, ptr %1, i64 13520
  %2 = load ptr, ptr %dec_picture2, align 8
  %shr = ashr i32 %vec1_y, 2
  %mb_field = getelementptr inbounds i8, ptr %currMB, i64 384
  %3 = load i32, ptr %mb_field, align 8
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  %size_y = getelementptr inbounds i8, ptr %2, i64 68
  %4 = load i32, ptr %size_y, align 4
  %shr3 = ashr i32 %4, 1
  %sub = add nsw i32 %shr3, -1
  br label %cond.end

cond.false:                                       ; preds = %entry
  %size_y_m1 = getelementptr inbounds i8, ptr %2, i64 84
  %5 = load i32, ptr %size_y_m1, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ %5, %cond.false ]
  %iLumaPadY = getelementptr inbounds i8, ptr %0, i64 856844
  %6 = load i32, ptr %iLumaPadY, align 4
  %add = sub i32 2, %6
  %cmp = icmp slt i32 %shr, %add
  br i1 %cmp, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end
  %reass.sub = sub i32 %cond, %block_size_y
  %sub7 = add i32 %reass.sub, -2
  %sub8 = add i32 %sub7, %6
  %cmp9 = icmp sgt i32 %shr, %sub8
  %spec.select = zext i1 %cmp9 to i32
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false, %cond.end
  %retval.0 = phi i32 [ 1, %cond.end ], [ %spec.select, %lor.lhs.false ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.unroll.disable"}
!7 = distinct !{!7, !8, !9}
!8 = !{!"llvm.loop.isvectorized", i32 1}
!9 = !{!"llvm.loop.unroll.runtime.disable"}
!10 = distinct !{!10, !6}
!11 = distinct !{!11, !6}
!12 = distinct !{!12, !6}
!13 = distinct !{!13, !8}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.unswitch.partial.disable"}
!16 = distinct !{!16, !15}
!17 = distinct !{!17, !15}
!18 = distinct !{!18, !15}
!19 = distinct !{!19, !15}
