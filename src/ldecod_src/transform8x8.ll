; ModuleID = 'ldecod_src/transform8x8.c'
source_filename = "ldecod_src/transform8x8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local void @itrans8x8(ptr nocapture noundef readonly %currMB, i32 noundef %pl, i32 noundef %ioff, i32 noundef %joff) local_unnamed_addr #0 {
entry:
  %0 = load ptr, ptr %currMB, align 8
  %mb_rres = getelementptr inbounds i8, ptr %0, i64 1264
  %1 = load ptr, ptr %mb_rres, align 8
  %idxprom = zext i32 %pl to i64
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 %idxprom
  %2 = load ptr, ptr %arrayidx, align 8
  %is_lossless = getelementptr inbounds i8, ptr %currMB, i64 92
  %3 = load i32, ptr %is_lossless, align 4
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %idxprom1 = sext i32 %joff to i64
  %arrayidx2 = getelementptr inbounds ptr, ptr %2, i64 %idxprom1
  %mb_rec = getelementptr inbounds i8, ptr %0, i64 1256
  %4 = load ptr, ptr %mb_rec, align 8
  %arrayidx4 = getelementptr inbounds ptr, ptr %4, i64 %idxprom
  %5 = load ptr, ptr %arrayidx4, align 8
  %arrayidx6 = getelementptr inbounds ptr, ptr %5, i64 %idxprom1
  %mb_pred = getelementptr inbounds i8, ptr %0, i64 1248
  %6 = load ptr, ptr %mb_pred, align 8
  %arrayidx8 = getelementptr inbounds ptr, ptr %6, i64 %idxprom
  %7 = load ptr, ptr %arrayidx8, align 8
  %arrayidx10 = getelementptr inbounds ptr, ptr %7, i64 %idxprom1
  %p_Vid = getelementptr inbounds i8, ptr %currMB, i64 8
  %8 = load ptr, ptr %p_Vid, align 8
  %max_pel_value_comp = getelementptr inbounds i8, ptr %8, i64 849072
  %arrayidx12 = getelementptr inbounds [3 x i32], ptr %max_pel_value_comp, i64 0, i64 %idxprom
  %9 = load i32, ptr %arrayidx12, align 4
  %10 = sext i32 %ioff to i64
  %indvars.iv.next.i = add nsw i64 %10, 1
  %indvars.iv.next.1.i = add nsw i64 %10, 2
  %indvars.iv.next.2.i = add nsw i64 %10, 3
  %indvars.iv.next.3.i = add nsw i64 %10, 4
  %indvars.iv.next.4.i = add nsw i64 %10, 5
  %indvars.iv.next.5.i = add nsw i64 %10, 6
  %indvars.iv.next.6.i = add nsw i64 %10, 7
  br label %for.end.i

for.end.i:                                        ; preds = %for.end.i, %if.then
  %j.030.i = phi i32 [ 0, %if.then ], [ %inc15.i, %for.end.i ]
  %m7.addr.029.i = phi ptr [ %arrayidx2, %if.then ], [ %incdec.ptr12.i, %for.end.i ]
  %mb_rec.addr.028.i = phi ptr [ %arrayidx6, %if.then ], [ %incdec.ptr.i, %for.end.i ]
  %mpr.addr.027.i = phi ptr [ %arrayidx10, %if.then ], [ %incdec.ptr13.i, %for.end.i ]
  %11 = load ptr, ptr %m7.addr.029.i, align 8
  %arrayidx.i = getelementptr inbounds i32, ptr %11, i64 %10
  %12 = load i32, ptr %arrayidx.i, align 4
  %13 = load ptr, ptr %mpr.addr.027.i, align 8
  %arrayidx5.i = getelementptr inbounds i16, ptr %13, i64 %10
  %14 = load i16, ptr %arrayidx5.i, align 2
  %conv6.i = zext i16 %14 to i32
  %add7.i = add i32 %12, %conv6.i
  %cond.i.i.i = tail call noundef i32 @llvm.smax.i32(i32 %add7.i, i32 0)
  %cond.i4.i.i = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i.i, i32 %9)
  %conv9.i = trunc i32 %cond.i4.i.i to i16
  %15 = load ptr, ptr %mb_rec.addr.028.i, align 8
  %arrayidx11.i = getelementptr inbounds i16, ptr %15, i64 %10
  store i16 %conv9.i, ptr %arrayidx11.i, align 2
  %16 = load ptr, ptr %m7.addr.029.i, align 8
  %arrayidx.1.i = getelementptr inbounds i32, ptr %16, i64 %indvars.iv.next.i
  %17 = load i32, ptr %arrayidx.1.i, align 4
  %18 = load ptr, ptr %mpr.addr.027.i, align 8
  %arrayidx5.1.i = getelementptr inbounds i16, ptr %18, i64 %indvars.iv.next.i
  %19 = load i16, ptr %arrayidx5.1.i, align 2
  %conv6.1.i = zext i16 %19 to i32
  %add7.1.i = add i32 %17, %conv6.1.i
  %cond.i.i.1.i = tail call noundef i32 @llvm.smax.i32(i32 %add7.1.i, i32 0)
  %cond.i4.i.1.i = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i.1.i, i32 %9)
  %conv9.1.i = trunc i32 %cond.i4.i.1.i to i16
  %20 = load ptr, ptr %mb_rec.addr.028.i, align 8
  %arrayidx11.1.i = getelementptr inbounds i16, ptr %20, i64 %indvars.iv.next.i
  store i16 %conv9.1.i, ptr %arrayidx11.1.i, align 2
  %21 = load ptr, ptr %m7.addr.029.i, align 8
  %arrayidx.2.i = getelementptr inbounds i32, ptr %21, i64 %indvars.iv.next.1.i
  %22 = load i32, ptr %arrayidx.2.i, align 4
  %23 = load ptr, ptr %mpr.addr.027.i, align 8
  %arrayidx5.2.i = getelementptr inbounds i16, ptr %23, i64 %indvars.iv.next.1.i
  %24 = load i16, ptr %arrayidx5.2.i, align 2
  %conv6.2.i = zext i16 %24 to i32
  %add7.2.i = add i32 %22, %conv6.2.i
  %cond.i.i.2.i = tail call noundef i32 @llvm.smax.i32(i32 %add7.2.i, i32 0)
  %cond.i4.i.2.i = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i.2.i, i32 %9)
  %conv9.2.i = trunc i32 %cond.i4.i.2.i to i16
  %25 = load ptr, ptr %mb_rec.addr.028.i, align 8
  %arrayidx11.2.i = getelementptr inbounds i16, ptr %25, i64 %indvars.iv.next.1.i
  store i16 %conv9.2.i, ptr %arrayidx11.2.i, align 2
  %26 = load ptr, ptr %m7.addr.029.i, align 8
  %arrayidx.3.i = getelementptr inbounds i32, ptr %26, i64 %indvars.iv.next.2.i
  %27 = load i32, ptr %arrayidx.3.i, align 4
  %28 = load ptr, ptr %mpr.addr.027.i, align 8
  %arrayidx5.3.i = getelementptr inbounds i16, ptr %28, i64 %indvars.iv.next.2.i
  %29 = load i16, ptr %arrayidx5.3.i, align 2
  %conv6.3.i = zext i16 %29 to i32
  %add7.3.i = add i32 %27, %conv6.3.i
  %cond.i.i.3.i = tail call noundef i32 @llvm.smax.i32(i32 %add7.3.i, i32 0)
  %cond.i4.i.3.i = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i.3.i, i32 %9)
  %conv9.3.i = trunc i32 %cond.i4.i.3.i to i16
  %30 = load ptr, ptr %mb_rec.addr.028.i, align 8
  %arrayidx11.3.i = getelementptr inbounds i16, ptr %30, i64 %indvars.iv.next.2.i
  store i16 %conv9.3.i, ptr %arrayidx11.3.i, align 2
  %31 = load ptr, ptr %m7.addr.029.i, align 8
  %arrayidx.4.i = getelementptr inbounds i32, ptr %31, i64 %indvars.iv.next.3.i
  %32 = load i32, ptr %arrayidx.4.i, align 4
  %33 = load ptr, ptr %mpr.addr.027.i, align 8
  %arrayidx5.4.i = getelementptr inbounds i16, ptr %33, i64 %indvars.iv.next.3.i
  %34 = load i16, ptr %arrayidx5.4.i, align 2
  %conv6.4.i = zext i16 %34 to i32
  %add7.4.i = add i32 %32, %conv6.4.i
  %cond.i.i.4.i = tail call noundef i32 @llvm.smax.i32(i32 %add7.4.i, i32 0)
  %cond.i4.i.4.i = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i.4.i, i32 %9)
  %conv9.4.i = trunc i32 %cond.i4.i.4.i to i16
  %35 = load ptr, ptr %mb_rec.addr.028.i, align 8
  %arrayidx11.4.i = getelementptr inbounds i16, ptr %35, i64 %indvars.iv.next.3.i
  store i16 %conv9.4.i, ptr %arrayidx11.4.i, align 2
  %36 = load ptr, ptr %m7.addr.029.i, align 8
  %arrayidx.5.i = getelementptr inbounds i32, ptr %36, i64 %indvars.iv.next.4.i
  %37 = load i32, ptr %arrayidx.5.i, align 4
  %38 = load ptr, ptr %mpr.addr.027.i, align 8
  %arrayidx5.5.i = getelementptr inbounds i16, ptr %38, i64 %indvars.iv.next.4.i
  %39 = load i16, ptr %arrayidx5.5.i, align 2
  %conv6.5.i = zext i16 %39 to i32
  %add7.5.i = add i32 %37, %conv6.5.i
  %cond.i.i.5.i = tail call noundef i32 @llvm.smax.i32(i32 %add7.5.i, i32 0)
  %cond.i4.i.5.i = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i.5.i, i32 %9)
  %conv9.5.i = trunc i32 %cond.i4.i.5.i to i16
  %40 = load ptr, ptr %mb_rec.addr.028.i, align 8
  %arrayidx11.5.i = getelementptr inbounds i16, ptr %40, i64 %indvars.iv.next.4.i
  store i16 %conv9.5.i, ptr %arrayidx11.5.i, align 2
  %41 = load ptr, ptr %m7.addr.029.i, align 8
  %arrayidx.6.i = getelementptr inbounds i32, ptr %41, i64 %indvars.iv.next.5.i
  %42 = load i32, ptr %arrayidx.6.i, align 4
  %43 = load ptr, ptr %mpr.addr.027.i, align 8
  %arrayidx5.6.i = getelementptr inbounds i16, ptr %43, i64 %indvars.iv.next.5.i
  %44 = load i16, ptr %arrayidx5.6.i, align 2
  %conv6.6.i = zext i16 %44 to i32
  %add7.6.i = add i32 %42, %conv6.6.i
  %cond.i.i.6.i = tail call noundef i32 @llvm.smax.i32(i32 %add7.6.i, i32 0)
  %cond.i4.i.6.i = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i.6.i, i32 %9)
  %conv9.6.i = trunc i32 %cond.i4.i.6.i to i16
  %45 = load ptr, ptr %mb_rec.addr.028.i, align 8
  %arrayidx11.6.i = getelementptr inbounds i16, ptr %45, i64 %indvars.iv.next.5.i
  store i16 %conv9.6.i, ptr %arrayidx11.6.i, align 2
  %46 = load ptr, ptr %m7.addr.029.i, align 8
  %arrayidx.7.i = getelementptr inbounds i32, ptr %46, i64 %indvars.iv.next.6.i
  %47 = load i32, ptr %arrayidx.7.i, align 4
  %48 = load ptr, ptr %mpr.addr.027.i, align 8
  %arrayidx5.7.i = getelementptr inbounds i16, ptr %48, i64 %indvars.iv.next.6.i
  %49 = load i16, ptr %arrayidx5.7.i, align 2
  %conv6.7.i = zext i16 %49 to i32
  %add7.7.i = add i32 %47, %conv6.7.i
  %cond.i.i.7.i = tail call noundef i32 @llvm.smax.i32(i32 %add7.7.i, i32 0)
  %cond.i4.i.7.i = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i.7.i, i32 %9)
  %conv9.7.i = trunc i32 %cond.i4.i.7.i to i16
  %50 = load ptr, ptr %mb_rec.addr.028.i, align 8
  %arrayidx11.7.i = getelementptr inbounds i16, ptr %50, i64 %indvars.iv.next.6.i
  store i16 %conv9.7.i, ptr %arrayidx11.7.i, align 2
  %incdec.ptr.i = getelementptr inbounds i8, ptr %mb_rec.addr.028.i, i64 8
  %incdec.ptr12.i = getelementptr inbounds i8, ptr %m7.addr.029.i, i64 8
  %incdec.ptr13.i = getelementptr inbounds i8, ptr %mpr.addr.027.i, i64 8
  %inc15.i = add nuw nsw i32 %j.030.i, 1
  %exitcond.not.i = icmp eq i32 %inc15.i, 8
  br i1 %exitcond.not.i, label %if.end, label %for.end.i

if.else:                                          ; preds = %entry
  tail call void @inverse8x8(ptr noundef %2, ptr noundef %2, i32 noundef %joff, i32 noundef %ioff) #3
  %idxprom13 = sext i32 %joff to i64
  %arrayidx14 = getelementptr inbounds ptr, ptr %2, i64 %idxprom13
  %mb_rec15 = getelementptr inbounds i8, ptr %0, i64 1256
  %51 = load ptr, ptr %mb_rec15, align 8
  %arrayidx17 = getelementptr inbounds ptr, ptr %51, i64 %idxprom
  %52 = load ptr, ptr %arrayidx17, align 8
  %arrayidx19 = getelementptr inbounds ptr, ptr %52, i64 %idxprom13
  %mb_pred20 = getelementptr inbounds i8, ptr %0, i64 1248
  %53 = load ptr, ptr %mb_pred20, align 8
  %arrayidx22 = getelementptr inbounds ptr, ptr %53, i64 %idxprom
  %54 = load ptr, ptr %arrayidx22, align 8
  %arrayidx24 = getelementptr inbounds ptr, ptr %54, i64 %idxprom13
  %p_Vid25 = getelementptr inbounds i8, ptr %currMB, i64 8
  %55 = load ptr, ptr %p_Vid25, align 8
  %max_pel_value_comp26 = getelementptr inbounds i8, ptr %55, i64 849072
  %arrayidx28 = getelementptr inbounds [3 x i32], ptr %max_pel_value_comp26, i64 0, i64 %idxprom
  %56 = load i32, ptr %arrayidx28, align 4
  %idx.ext.i = sext i32 %ioff to i64
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %if.else
  %j.0127.i = phi i32 [ 0, %if.else ], [ %inc.i, %for.body.i ]
  %m7.addr.0126.i = phi ptr [ %arrayidx14, %if.else ], [ %incdec.ptr.i53, %for.body.i ]
  %mb_rec.addr.0125.i = phi ptr [ %arrayidx19, %if.else ], [ %incdec.ptr1.i, %for.body.i ]
  %mpr.addr.0124.i = phi ptr [ %arrayidx24, %if.else ], [ %incdec.ptr4.i, %for.body.i ]
  %incdec.ptr.i53 = getelementptr inbounds i8, ptr %m7.addr.0126.i, i64 8
  %57 = load ptr, ptr %m7.addr.0126.i, align 8
  %add.ptr.i = getelementptr inbounds i32, ptr %57, i64 %idx.ext.i
  %incdec.ptr1.i = getelementptr inbounds i8, ptr %mb_rec.addr.0125.i, i64 8
  %58 = load ptr, ptr %mb_rec.addr.0125.i, align 8
  %add.ptr3.i = getelementptr inbounds i16, ptr %58, i64 %idx.ext.i
  %incdec.ptr4.i = getelementptr inbounds i8, ptr %mpr.addr.0124.i, i64 8
  %59 = load ptr, ptr %mpr.addr.0124.i, align 8
  %add.ptr6.i = getelementptr inbounds i16, ptr %59, i64 %idx.ext.i
  %incdec.ptr7.i = getelementptr inbounds i8, ptr %add.ptr6.i, i64 2
  %60 = load i16, ptr %add.ptr6.i, align 2
  %conv.i = zext i16 %60 to i32
  %incdec.ptr8.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 4
  %61 = load i32, ptr %add.ptr.i, align 4
  %add.i.i = add nsw i32 %61, 32
  %shr.i.i = ashr i32 %add.i.i, 6
  %add.i = add nsw i32 %shr.i.i, %conv.i
  %cond.i.i.i54 = tail call noundef i32 @llvm.smax.i32(i32 %add.i, i32 0)
  %cond.i4.i.i55 = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i.i54, i32 %56)
  %conv10.i = trunc i32 %cond.i4.i.i55 to i16
  %incdec.ptr11.i = getelementptr inbounds i8, ptr %add.ptr3.i, i64 2
  store i16 %conv10.i, ptr %add.ptr3.i, align 2
  %incdec.ptr12.i56 = getelementptr inbounds i8, ptr %add.ptr6.i, i64 4
  %62 = load i16, ptr %incdec.ptr7.i, align 2
  %conv13.i = zext i16 %62 to i32
  %incdec.ptr14.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 8
  %63 = load i32, ptr %incdec.ptr8.i, align 4
  %add.i96.i = add nsw i32 %63, 32
  %shr.i97.i = ashr i32 %add.i96.i, 6
  %add16.i = add nsw i32 %shr.i97.i, %conv13.i
  %cond.i.i98.i = tail call noundef i32 @llvm.smax.i32(i32 %add16.i, i32 0)
  %cond.i4.i99.i = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i98.i, i32 %56)
  %conv18.i = trunc i32 %cond.i4.i99.i to i16
  %incdec.ptr19.i = getelementptr inbounds i8, ptr %add.ptr3.i, i64 4
  store i16 %conv18.i, ptr %incdec.ptr11.i, align 2
  %incdec.ptr20.i = getelementptr inbounds i8, ptr %add.ptr6.i, i64 6
  %64 = load i16, ptr %incdec.ptr12.i56, align 2
  %conv21.i = zext i16 %64 to i32
  %incdec.ptr22.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 12
  %65 = load i32, ptr %incdec.ptr14.i, align 4
  %add.i100.i = add nsw i32 %65, 32
  %shr.i101.i = ashr i32 %add.i100.i, 6
  %add24.i = add nsw i32 %shr.i101.i, %conv21.i
  %cond.i.i102.i = tail call noundef i32 @llvm.smax.i32(i32 %add24.i, i32 0)
  %cond.i4.i103.i = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i102.i, i32 %56)
  %conv26.i = trunc i32 %cond.i4.i103.i to i16
  %incdec.ptr27.i = getelementptr inbounds i8, ptr %add.ptr3.i, i64 6
  store i16 %conv26.i, ptr %incdec.ptr19.i, align 2
  %incdec.ptr28.i = getelementptr inbounds i8, ptr %add.ptr6.i, i64 8
  %66 = load i16, ptr %incdec.ptr20.i, align 2
  %conv29.i = zext i16 %66 to i32
  %incdec.ptr30.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 16
  %67 = load i32, ptr %incdec.ptr22.i, align 4
  %add.i104.i = add nsw i32 %67, 32
  %shr.i105.i = ashr i32 %add.i104.i, 6
  %add32.i = add nsw i32 %shr.i105.i, %conv29.i
  %cond.i.i106.i = tail call noundef i32 @llvm.smax.i32(i32 %add32.i, i32 0)
  %cond.i4.i107.i = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i106.i, i32 %56)
  %conv34.i = trunc i32 %cond.i4.i107.i to i16
  %incdec.ptr35.i = getelementptr inbounds i8, ptr %add.ptr3.i, i64 8
  store i16 %conv34.i, ptr %incdec.ptr27.i, align 2
  %incdec.ptr36.i = getelementptr inbounds i8, ptr %add.ptr6.i, i64 10
  %68 = load i16, ptr %incdec.ptr28.i, align 2
  %conv37.i = zext i16 %68 to i32
  %incdec.ptr38.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 20
  %69 = load i32, ptr %incdec.ptr30.i, align 4
  %add.i108.i = add nsw i32 %69, 32
  %shr.i109.i = ashr i32 %add.i108.i, 6
  %add40.i = add nsw i32 %shr.i109.i, %conv37.i
  %cond.i.i110.i = tail call noundef i32 @llvm.smax.i32(i32 %add40.i, i32 0)
  %cond.i4.i111.i = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i110.i, i32 %56)
  %conv42.i = trunc i32 %cond.i4.i111.i to i16
  %incdec.ptr43.i = getelementptr inbounds i8, ptr %add.ptr3.i, i64 10
  store i16 %conv42.i, ptr %incdec.ptr35.i, align 2
  %incdec.ptr44.i = getelementptr inbounds i8, ptr %add.ptr6.i, i64 12
  %70 = load i16, ptr %incdec.ptr36.i, align 2
  %conv45.i = zext i16 %70 to i32
  %incdec.ptr46.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 24
  %71 = load i32, ptr %incdec.ptr38.i, align 4
  %add.i112.i = add nsw i32 %71, 32
  %shr.i113.i = ashr i32 %add.i112.i, 6
  %add48.i = add nsw i32 %shr.i113.i, %conv45.i
  %cond.i.i114.i = tail call noundef i32 @llvm.smax.i32(i32 %add48.i, i32 0)
  %cond.i4.i115.i = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i114.i, i32 %56)
  %conv50.i = trunc i32 %cond.i4.i115.i to i16
  %incdec.ptr51.i = getelementptr inbounds i8, ptr %add.ptr3.i, i64 12
  store i16 %conv50.i, ptr %incdec.ptr43.i, align 2
  %incdec.ptr52.i = getelementptr inbounds i8, ptr %add.ptr6.i, i64 14
  %72 = load i16, ptr %incdec.ptr44.i, align 2
  %conv53.i = zext i16 %72 to i32
  %incdec.ptr54.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 28
  %73 = load i32, ptr %incdec.ptr46.i, align 4
  %add.i116.i = add nsw i32 %73, 32
  %shr.i117.i = ashr i32 %add.i116.i, 6
  %add56.i = add nsw i32 %shr.i117.i, %conv53.i
  %cond.i.i118.i = tail call noundef i32 @llvm.smax.i32(i32 %add56.i, i32 0)
  %cond.i4.i119.i = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i118.i, i32 %56)
  %conv58.i = trunc i32 %cond.i4.i119.i to i16
  %incdec.ptr59.i = getelementptr inbounds i8, ptr %add.ptr3.i, i64 14
  store i16 %conv58.i, ptr %incdec.ptr51.i, align 2
  %74 = load i16, ptr %incdec.ptr52.i, align 2
  %conv60.i = zext i16 %74 to i32
  %75 = load i32, ptr %incdec.ptr54.i, align 4
  %add.i120.i = add nsw i32 %75, 32
  %shr.i121.i = ashr i32 %add.i120.i, 6
  %add62.i = add nsw i32 %shr.i121.i, %conv60.i
  %cond.i.i122.i = tail call noundef i32 @llvm.smax.i32(i32 %add62.i, i32 0)
  %cond.i4.i123.i = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i122.i, i32 %56)
  %conv64.i = trunc i32 %cond.i4.i123.i to i16
  store i16 %conv64.i, ptr %incdec.ptr59.i, align 2
  %inc.i = add nuw nsw i32 %j.0127.i, 1
  %exitcond.not.i57 = icmp eq i32 %inc.i, 8
  br i1 %exitcond.not.i57, label %if.end, label %for.body.i

if.end:                                           ; preds = %for.body.i, %for.end.i
  ret void
}

declare void @inverse8x8(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
