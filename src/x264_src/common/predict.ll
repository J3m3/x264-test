; ModuleID = 'x264_src/common/predict.c'
source_filename = "x264_src/common/predict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @x264_predict_16x16_init(i32 noundef %cpu, ptr nocapture noundef writeonly %pf) local_unnamed_addr #0 {
entry:
  store ptr @predict_16x16_v, ptr %pf, align 8
  %arrayidx1 = getelementptr inbounds i8, ptr %pf, i64 8
  store ptr @predict_16x16_h, ptr %arrayidx1, align 8
  %arrayidx2 = getelementptr inbounds i8, ptr %pf, i64 16
  store ptr @predict_16x16_dc, ptr %arrayidx2, align 8
  %arrayidx3 = getelementptr inbounds i8, ptr %pf, i64 24
  store ptr @predict_16x16_p, ptr %arrayidx3, align 8
  %arrayidx4 = getelementptr inbounds i8, ptr %pf, i64 32
  store ptr @predict_16x16_dc_left, ptr %arrayidx4, align 8
  %arrayidx5 = getelementptr inbounds i8, ptr %pf, i64 40
  store ptr @predict_16x16_dc_top, ptr %arrayidx5, align 8
  %arrayidx6 = getelementptr inbounds i8, ptr %pf, i64 48
  store ptr @predict_16x16_dc_128, ptr %arrayidx6, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @predict_16x16_v(ptr nocapture noundef %src) #1 {
entry:
  %arrayidx = getelementptr inbounds i8, ptr %src, i64 -32
  %0 = load i32, ptr %arrayidx, align 4
  %arrayidx1 = getelementptr inbounds i8, ptr %src, i64 -28
  %1 = load i32, ptr %arrayidx1, align 4
  %arrayidx2 = getelementptr inbounds i8, ptr %src, i64 -24
  %2 = load i32, ptr %arrayidx2, align 4
  %arrayidx3 = getelementptr inbounds i8, ptr %src, i64 -20
  %3 = load i32, ptr %arrayidx3, align 4
  store i32 %0, ptr %src, align 4
  %add.ptr4 = getelementptr inbounds i8, ptr %src, i64 4
  store i32 %1, ptr %add.ptr4, align 4
  %add.ptr5 = getelementptr inbounds i8, ptr %src, i64 8
  store i32 %2, ptr %add.ptr5, align 4
  %add.ptr6 = getelementptr inbounds i8, ptr %src, i64 12
  store i32 %3, ptr %add.ptr6, align 4
  %add.ptr7 = getelementptr inbounds i8, ptr %src, i64 32
  store i32 %0, ptr %add.ptr7, align 4
  %add.ptr4.1 = getelementptr inbounds i8, ptr %src, i64 36
  store i32 %1, ptr %add.ptr4.1, align 4
  %add.ptr5.1 = getelementptr inbounds i8, ptr %src, i64 40
  store i32 %2, ptr %add.ptr5.1, align 4
  %add.ptr6.1 = getelementptr inbounds i8, ptr %src, i64 44
  store i32 %3, ptr %add.ptr6.1, align 4
  %add.ptr7.1 = getelementptr inbounds i8, ptr %src, i64 64
  store i32 %0, ptr %add.ptr7.1, align 4
  %add.ptr4.2 = getelementptr inbounds i8, ptr %src, i64 68
  store i32 %1, ptr %add.ptr4.2, align 4
  %add.ptr5.2 = getelementptr inbounds i8, ptr %src, i64 72
  store i32 %2, ptr %add.ptr5.2, align 4
  %add.ptr6.2 = getelementptr inbounds i8, ptr %src, i64 76
  store i32 %3, ptr %add.ptr6.2, align 4
  %add.ptr7.2 = getelementptr inbounds i8, ptr %src, i64 96
  store i32 %0, ptr %add.ptr7.2, align 4
  %add.ptr4.3 = getelementptr inbounds i8, ptr %src, i64 100
  store i32 %1, ptr %add.ptr4.3, align 4
  %add.ptr5.3 = getelementptr inbounds i8, ptr %src, i64 104
  store i32 %2, ptr %add.ptr5.3, align 4
  %add.ptr6.3 = getelementptr inbounds i8, ptr %src, i64 108
  store i32 %3, ptr %add.ptr6.3, align 4
  %add.ptr7.3 = getelementptr inbounds i8, ptr %src, i64 128
  store i32 %0, ptr %add.ptr7.3, align 4
  %add.ptr4.4 = getelementptr inbounds i8, ptr %src, i64 132
  store i32 %1, ptr %add.ptr4.4, align 4
  %add.ptr5.4 = getelementptr inbounds i8, ptr %src, i64 136
  store i32 %2, ptr %add.ptr5.4, align 4
  %add.ptr6.4 = getelementptr inbounds i8, ptr %src, i64 140
  store i32 %3, ptr %add.ptr6.4, align 4
  %add.ptr7.4 = getelementptr inbounds i8, ptr %src, i64 160
  store i32 %0, ptr %add.ptr7.4, align 4
  %add.ptr4.5 = getelementptr inbounds i8, ptr %src, i64 164
  store i32 %1, ptr %add.ptr4.5, align 4
  %add.ptr5.5 = getelementptr inbounds i8, ptr %src, i64 168
  store i32 %2, ptr %add.ptr5.5, align 4
  %add.ptr6.5 = getelementptr inbounds i8, ptr %src, i64 172
  store i32 %3, ptr %add.ptr6.5, align 4
  %add.ptr7.5 = getelementptr inbounds i8, ptr %src, i64 192
  store i32 %0, ptr %add.ptr7.5, align 4
  %add.ptr4.6 = getelementptr inbounds i8, ptr %src, i64 196
  store i32 %1, ptr %add.ptr4.6, align 4
  %add.ptr5.6 = getelementptr inbounds i8, ptr %src, i64 200
  store i32 %2, ptr %add.ptr5.6, align 4
  %add.ptr6.6 = getelementptr inbounds i8, ptr %src, i64 204
  store i32 %3, ptr %add.ptr6.6, align 4
  %add.ptr7.6 = getelementptr inbounds i8, ptr %src, i64 224
  store i32 %0, ptr %add.ptr7.6, align 4
  %add.ptr4.7 = getelementptr inbounds i8, ptr %src, i64 228
  store i32 %1, ptr %add.ptr4.7, align 4
  %add.ptr5.7 = getelementptr inbounds i8, ptr %src, i64 232
  store i32 %2, ptr %add.ptr5.7, align 4
  %add.ptr6.7 = getelementptr inbounds i8, ptr %src, i64 236
  store i32 %3, ptr %add.ptr6.7, align 4
  %add.ptr7.7 = getelementptr inbounds i8, ptr %src, i64 256
  store i32 %0, ptr %add.ptr7.7, align 4
  %add.ptr4.8 = getelementptr inbounds i8, ptr %src, i64 260
  store i32 %1, ptr %add.ptr4.8, align 4
  %add.ptr5.8 = getelementptr inbounds i8, ptr %src, i64 264
  store i32 %2, ptr %add.ptr5.8, align 4
  %add.ptr6.8 = getelementptr inbounds i8, ptr %src, i64 268
  store i32 %3, ptr %add.ptr6.8, align 4
  %add.ptr7.8 = getelementptr inbounds i8, ptr %src, i64 288
  store i32 %0, ptr %add.ptr7.8, align 4
  %add.ptr4.9 = getelementptr inbounds i8, ptr %src, i64 292
  store i32 %1, ptr %add.ptr4.9, align 4
  %add.ptr5.9 = getelementptr inbounds i8, ptr %src, i64 296
  store i32 %2, ptr %add.ptr5.9, align 4
  %add.ptr6.9 = getelementptr inbounds i8, ptr %src, i64 300
  store i32 %3, ptr %add.ptr6.9, align 4
  %add.ptr7.9 = getelementptr inbounds i8, ptr %src, i64 320
  store i32 %0, ptr %add.ptr7.9, align 4
  %add.ptr4.10 = getelementptr inbounds i8, ptr %src, i64 324
  store i32 %1, ptr %add.ptr4.10, align 4
  %add.ptr5.10 = getelementptr inbounds i8, ptr %src, i64 328
  store i32 %2, ptr %add.ptr5.10, align 4
  %add.ptr6.10 = getelementptr inbounds i8, ptr %src, i64 332
  store i32 %3, ptr %add.ptr6.10, align 4
  %add.ptr7.10 = getelementptr inbounds i8, ptr %src, i64 352
  store i32 %0, ptr %add.ptr7.10, align 4
  %add.ptr4.11 = getelementptr inbounds i8, ptr %src, i64 356
  store i32 %1, ptr %add.ptr4.11, align 4
  %add.ptr5.11 = getelementptr inbounds i8, ptr %src, i64 360
  store i32 %2, ptr %add.ptr5.11, align 4
  %add.ptr6.11 = getelementptr inbounds i8, ptr %src, i64 364
  store i32 %3, ptr %add.ptr6.11, align 4
  %add.ptr7.11 = getelementptr inbounds i8, ptr %src, i64 384
  store i32 %0, ptr %add.ptr7.11, align 4
  %add.ptr4.12 = getelementptr inbounds i8, ptr %src, i64 388
  store i32 %1, ptr %add.ptr4.12, align 4
  %add.ptr5.12 = getelementptr inbounds i8, ptr %src, i64 392
  store i32 %2, ptr %add.ptr5.12, align 4
  %add.ptr6.12 = getelementptr inbounds i8, ptr %src, i64 396
  store i32 %3, ptr %add.ptr6.12, align 4
  %add.ptr7.12 = getelementptr inbounds i8, ptr %src, i64 416
  store i32 %0, ptr %add.ptr7.12, align 4
  %add.ptr4.13 = getelementptr inbounds i8, ptr %src, i64 420
  store i32 %1, ptr %add.ptr4.13, align 4
  %add.ptr5.13 = getelementptr inbounds i8, ptr %src, i64 424
  store i32 %2, ptr %add.ptr5.13, align 4
  %add.ptr6.13 = getelementptr inbounds i8, ptr %src, i64 428
  store i32 %3, ptr %add.ptr6.13, align 4
  %add.ptr7.13 = getelementptr inbounds i8, ptr %src, i64 448
  store i32 %0, ptr %add.ptr7.13, align 4
  %add.ptr4.14 = getelementptr inbounds i8, ptr %src, i64 452
  store i32 %1, ptr %add.ptr4.14, align 4
  %add.ptr5.14 = getelementptr inbounds i8, ptr %src, i64 456
  store i32 %2, ptr %add.ptr5.14, align 4
  %add.ptr6.14 = getelementptr inbounds i8, ptr %src, i64 460
  store i32 %3, ptr %add.ptr6.14, align 4
  %add.ptr7.14 = getelementptr inbounds i8, ptr %src, i64 480
  store i32 %0, ptr %add.ptr7.14, align 4
  %add.ptr4.15 = getelementptr inbounds i8, ptr %src, i64 484
  store i32 %1, ptr %add.ptr4.15, align 4
  %add.ptr5.15 = getelementptr inbounds i8, ptr %src, i64 488
  store i32 %2, ptr %add.ptr5.15, align 4
  %add.ptr6.15 = getelementptr inbounds i8, ptr %src, i64 492
  store i32 %3, ptr %add.ptr6.15, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @predict_16x16_h(ptr nocapture noundef %src) #1 {
entry:
  %arrayidx = getelementptr inbounds i8, ptr %src, i64 -1
  %0 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %0 to i32
  %mul = mul nuw nsw i32 %conv, 16843009
  %1 = insertelement <4 x i32> poison, i32 %mul, i64 0
  %2 = shufflevector <4 x i32> %1, <4 x i32> poison, <4 x i32> zeroinitializer
  store <4 x i32> %2, ptr %src, align 4
  %add.ptr4 = getelementptr inbounds i8, ptr %src, i64 32
  %arrayidx.1 = getelementptr inbounds i8, ptr %src, i64 31
  %3 = load i8, ptr %arrayidx.1, align 1
  %conv.1 = zext i8 %3 to i32
  %mul.1 = mul nuw nsw i32 %conv.1, 16843009
  %4 = insertelement <4 x i32> poison, i32 %mul.1, i64 0
  %5 = shufflevector <4 x i32> %4, <4 x i32> poison, <4 x i32> zeroinitializer
  store <4 x i32> %5, ptr %add.ptr4, align 4
  %add.ptr4.1 = getelementptr inbounds i8, ptr %src, i64 64
  %arrayidx.2 = getelementptr inbounds i8, ptr %src, i64 63
  %6 = load i8, ptr %arrayidx.2, align 1
  %conv.2 = zext i8 %6 to i32
  %mul.2 = mul nuw nsw i32 %conv.2, 16843009
  %7 = insertelement <4 x i32> poison, i32 %mul.2, i64 0
  %8 = shufflevector <4 x i32> %7, <4 x i32> poison, <4 x i32> zeroinitializer
  store <4 x i32> %8, ptr %add.ptr4.1, align 4
  %add.ptr4.2 = getelementptr inbounds i8, ptr %src, i64 96
  %arrayidx.3 = getelementptr inbounds i8, ptr %src, i64 95
  %9 = load i8, ptr %arrayidx.3, align 1
  %conv.3 = zext i8 %9 to i32
  %mul.3 = mul nuw nsw i32 %conv.3, 16843009
  %10 = insertelement <4 x i32> poison, i32 %mul.3, i64 0
  %11 = shufflevector <4 x i32> %10, <4 x i32> poison, <4 x i32> zeroinitializer
  store <4 x i32> %11, ptr %add.ptr4.2, align 4
  %add.ptr4.3 = getelementptr inbounds i8, ptr %src, i64 128
  %arrayidx.4 = getelementptr inbounds i8, ptr %src, i64 127
  %12 = load i8, ptr %arrayidx.4, align 1
  %conv.4 = zext i8 %12 to i32
  %mul.4 = mul nuw nsw i32 %conv.4, 16843009
  %13 = insertelement <4 x i32> poison, i32 %mul.4, i64 0
  %14 = shufflevector <4 x i32> %13, <4 x i32> poison, <4 x i32> zeroinitializer
  store <4 x i32> %14, ptr %add.ptr4.3, align 4
  %add.ptr4.4 = getelementptr inbounds i8, ptr %src, i64 160
  %arrayidx.5 = getelementptr inbounds i8, ptr %src, i64 159
  %15 = load i8, ptr %arrayidx.5, align 1
  %conv.5 = zext i8 %15 to i32
  %mul.5 = mul nuw nsw i32 %conv.5, 16843009
  %16 = insertelement <4 x i32> poison, i32 %mul.5, i64 0
  %17 = shufflevector <4 x i32> %16, <4 x i32> poison, <4 x i32> zeroinitializer
  store <4 x i32> %17, ptr %add.ptr4.4, align 4
  %add.ptr4.5 = getelementptr inbounds i8, ptr %src, i64 192
  %arrayidx.6 = getelementptr inbounds i8, ptr %src, i64 191
  %18 = load i8, ptr %arrayidx.6, align 1
  %conv.6 = zext i8 %18 to i32
  %mul.6 = mul nuw nsw i32 %conv.6, 16843009
  %19 = insertelement <4 x i32> poison, i32 %mul.6, i64 0
  %20 = shufflevector <4 x i32> %19, <4 x i32> poison, <4 x i32> zeroinitializer
  store <4 x i32> %20, ptr %add.ptr4.5, align 4
  %add.ptr4.6 = getelementptr inbounds i8, ptr %src, i64 224
  %arrayidx.7 = getelementptr inbounds i8, ptr %src, i64 223
  %21 = load i8, ptr %arrayidx.7, align 1
  %conv.7 = zext i8 %21 to i32
  %mul.7 = mul nuw nsw i32 %conv.7, 16843009
  %22 = insertelement <4 x i32> poison, i32 %mul.7, i64 0
  %23 = shufflevector <4 x i32> %22, <4 x i32> poison, <4 x i32> zeroinitializer
  store <4 x i32> %23, ptr %add.ptr4.6, align 4
  %add.ptr4.7 = getelementptr inbounds i8, ptr %src, i64 256
  %arrayidx.8 = getelementptr inbounds i8, ptr %src, i64 255
  %24 = load i8, ptr %arrayidx.8, align 1
  %conv.8 = zext i8 %24 to i32
  %mul.8 = mul nuw nsw i32 %conv.8, 16843009
  %25 = insertelement <4 x i32> poison, i32 %mul.8, i64 0
  %26 = shufflevector <4 x i32> %25, <4 x i32> poison, <4 x i32> zeroinitializer
  store <4 x i32> %26, ptr %add.ptr4.7, align 4
  %add.ptr4.8 = getelementptr inbounds i8, ptr %src, i64 288
  %arrayidx.9 = getelementptr inbounds i8, ptr %src, i64 287
  %27 = load i8, ptr %arrayidx.9, align 1
  %conv.9 = zext i8 %27 to i32
  %mul.9 = mul nuw nsw i32 %conv.9, 16843009
  %28 = insertelement <4 x i32> poison, i32 %mul.9, i64 0
  %29 = shufflevector <4 x i32> %28, <4 x i32> poison, <4 x i32> zeroinitializer
  store <4 x i32> %29, ptr %add.ptr4.8, align 4
  %add.ptr4.9 = getelementptr inbounds i8, ptr %src, i64 320
  %arrayidx.10 = getelementptr inbounds i8, ptr %src, i64 319
  %30 = load i8, ptr %arrayidx.10, align 1
  %conv.10 = zext i8 %30 to i32
  %mul.10 = mul nuw nsw i32 %conv.10, 16843009
  %31 = insertelement <4 x i32> poison, i32 %mul.10, i64 0
  %32 = shufflevector <4 x i32> %31, <4 x i32> poison, <4 x i32> zeroinitializer
  store <4 x i32> %32, ptr %add.ptr4.9, align 4
  %add.ptr4.10 = getelementptr inbounds i8, ptr %src, i64 352
  %arrayidx.11 = getelementptr inbounds i8, ptr %src, i64 351
  %33 = load i8, ptr %arrayidx.11, align 1
  %conv.11 = zext i8 %33 to i32
  %mul.11 = mul nuw nsw i32 %conv.11, 16843009
  %34 = insertelement <4 x i32> poison, i32 %mul.11, i64 0
  %35 = shufflevector <4 x i32> %34, <4 x i32> poison, <4 x i32> zeroinitializer
  store <4 x i32> %35, ptr %add.ptr4.10, align 4
  %add.ptr4.11 = getelementptr inbounds i8, ptr %src, i64 384
  %arrayidx.12 = getelementptr inbounds i8, ptr %src, i64 383
  %36 = load i8, ptr %arrayidx.12, align 1
  %conv.12 = zext i8 %36 to i32
  %mul.12 = mul nuw nsw i32 %conv.12, 16843009
  %37 = insertelement <4 x i32> poison, i32 %mul.12, i64 0
  %38 = shufflevector <4 x i32> %37, <4 x i32> poison, <4 x i32> zeroinitializer
  store <4 x i32> %38, ptr %add.ptr4.11, align 4
  %add.ptr4.12 = getelementptr inbounds i8, ptr %src, i64 416
  %arrayidx.13 = getelementptr inbounds i8, ptr %src, i64 415
  %39 = load i8, ptr %arrayidx.13, align 1
  %conv.13 = zext i8 %39 to i32
  %mul.13 = mul nuw nsw i32 %conv.13, 16843009
  %40 = insertelement <4 x i32> poison, i32 %mul.13, i64 0
  %41 = shufflevector <4 x i32> %40, <4 x i32> poison, <4 x i32> zeroinitializer
  store <4 x i32> %41, ptr %add.ptr4.12, align 4
  %add.ptr4.13 = getelementptr inbounds i8, ptr %src, i64 448
  %arrayidx.14 = getelementptr inbounds i8, ptr %src, i64 447
  %42 = load i8, ptr %arrayidx.14, align 1
  %conv.14 = zext i8 %42 to i32
  %mul.14 = mul nuw nsw i32 %conv.14, 16843009
  %43 = insertelement <4 x i32> poison, i32 %mul.14, i64 0
  %44 = shufflevector <4 x i32> %43, <4 x i32> poison, <4 x i32> zeroinitializer
  store <4 x i32> %44, ptr %add.ptr4.13, align 4
  %add.ptr4.14 = getelementptr inbounds i8, ptr %src, i64 480
  %arrayidx.15 = getelementptr inbounds i8, ptr %src, i64 479
  %45 = load i8, ptr %arrayidx.15, align 1
  %conv.15 = zext i8 %45 to i32
  %mul.15 = mul nuw nsw i32 %conv.15, 16843009
  %46 = insertelement <4 x i32> poison, i32 %mul.15, i64 0
  %47 = shufflevector <4 x i32> %46, <4 x i32> poison, <4 x i32> zeroinitializer
  store <4 x i32> %47, ptr %add.ptr4.14, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @predict_16x16_dc(ptr nocapture noundef %src) #1 {
entry:
  %invariant.gep = getelementptr i8, ptr %src, i64 -1
  %0 = load i8, ptr %invariant.gep, align 1
  %conv = zext i8 %0 to i32
  %arrayidx3 = getelementptr inbounds i8, ptr %src, i64 -32
  %1 = load i8, ptr %arrayidx3, align 1
  %conv4 = zext i8 %1 to i32
  %add5 = add nuw nsw i32 %conv, %conv4
  %gep.1 = getelementptr i8, ptr %src, i64 31
  %2 = load i8, ptr %gep.1, align 1
  %conv.1 = zext i8 %2 to i32
  %add1.1 = add nuw nsw i32 %add5, %conv.1
  %arrayidx3.1 = getelementptr inbounds i8, ptr %src, i64 -31
  %3 = load i8, ptr %arrayidx3.1, align 1
  %conv4.1 = zext i8 %3 to i32
  %add5.1 = add nuw nsw i32 %add1.1, %conv4.1
  %gep.2 = getelementptr i8, ptr %src, i64 63
  %4 = load i8, ptr %gep.2, align 1
  %conv.2 = zext i8 %4 to i32
  %add1.2 = add nuw nsw i32 %add5.1, %conv.2
  %arrayidx3.2 = getelementptr inbounds i8, ptr %src, i64 -30
  %5 = load i8, ptr %arrayidx3.2, align 1
  %conv4.2 = zext i8 %5 to i32
  %add5.2 = add nuw nsw i32 %add1.2, %conv4.2
  %gep.3 = getelementptr i8, ptr %src, i64 95
  %6 = load i8, ptr %gep.3, align 1
  %conv.3 = zext i8 %6 to i32
  %add1.3 = add nuw nsw i32 %add5.2, %conv.3
  %arrayidx3.3 = getelementptr inbounds i8, ptr %src, i64 -29
  %7 = load i8, ptr %arrayidx3.3, align 1
  %conv4.3 = zext i8 %7 to i32
  %add5.3 = add nuw nsw i32 %add1.3, %conv4.3
  %gep.4 = getelementptr i8, ptr %src, i64 127
  %8 = load i8, ptr %gep.4, align 1
  %conv.4 = zext i8 %8 to i32
  %add1.4 = add nuw nsw i32 %add5.3, %conv.4
  %arrayidx3.4 = getelementptr inbounds i8, ptr %src, i64 -28
  %9 = load i8, ptr %arrayidx3.4, align 1
  %conv4.4 = zext i8 %9 to i32
  %add5.4 = add nuw nsw i32 %add1.4, %conv4.4
  %gep.5 = getelementptr i8, ptr %src, i64 159
  %10 = load i8, ptr %gep.5, align 1
  %conv.5 = zext i8 %10 to i32
  %add1.5 = add nuw nsw i32 %add5.4, %conv.5
  %arrayidx3.5 = getelementptr inbounds i8, ptr %src, i64 -27
  %11 = load i8, ptr %arrayidx3.5, align 1
  %conv4.5 = zext i8 %11 to i32
  %add5.5 = add nuw nsw i32 %add1.5, %conv4.5
  %gep.6 = getelementptr i8, ptr %src, i64 191
  %12 = load i8, ptr %gep.6, align 1
  %conv.6 = zext i8 %12 to i32
  %add1.6 = add nuw nsw i32 %add5.5, %conv.6
  %arrayidx3.6 = getelementptr inbounds i8, ptr %src, i64 -26
  %13 = load i8, ptr %arrayidx3.6, align 1
  %conv4.6 = zext i8 %13 to i32
  %add5.6 = add nuw nsw i32 %add1.6, %conv4.6
  %gep.7 = getelementptr i8, ptr %src, i64 223
  %14 = load i8, ptr %gep.7, align 1
  %conv.7 = zext i8 %14 to i32
  %add1.7 = add nuw nsw i32 %add5.6, %conv.7
  %arrayidx3.7 = getelementptr inbounds i8, ptr %src, i64 -25
  %15 = load i8, ptr %arrayidx3.7, align 1
  %conv4.7 = zext i8 %15 to i32
  %add5.7 = add nuw nsw i32 %add1.7, %conv4.7
  %gep.8 = getelementptr i8, ptr %src, i64 255
  %16 = load i8, ptr %gep.8, align 1
  %conv.8 = zext i8 %16 to i32
  %add1.8 = add nuw nsw i32 %add5.7, %conv.8
  %arrayidx3.8 = getelementptr inbounds i8, ptr %src, i64 -24
  %17 = load i8, ptr %arrayidx3.8, align 1
  %conv4.8 = zext i8 %17 to i32
  %add5.8 = add nuw nsw i32 %add1.8, %conv4.8
  %gep.9 = getelementptr i8, ptr %src, i64 287
  %18 = load i8, ptr %gep.9, align 1
  %conv.9 = zext i8 %18 to i32
  %add1.9 = add nuw nsw i32 %add5.8, %conv.9
  %arrayidx3.9 = getelementptr inbounds i8, ptr %src, i64 -23
  %19 = load i8, ptr %arrayidx3.9, align 1
  %conv4.9 = zext i8 %19 to i32
  %add5.9 = add nuw nsw i32 %add1.9, %conv4.9
  %gep.10 = getelementptr i8, ptr %src, i64 319
  %20 = load i8, ptr %gep.10, align 1
  %conv.10 = zext i8 %20 to i32
  %add1.10 = add nuw nsw i32 %add5.9, %conv.10
  %arrayidx3.10 = getelementptr inbounds i8, ptr %src, i64 -22
  %21 = load i8, ptr %arrayidx3.10, align 1
  %conv4.10 = zext i8 %21 to i32
  %add5.10 = add nuw nsw i32 %add1.10, %conv4.10
  %gep.11 = getelementptr i8, ptr %src, i64 351
  %22 = load i8, ptr %gep.11, align 1
  %conv.11 = zext i8 %22 to i32
  %add1.11 = add nuw nsw i32 %add5.10, %conv.11
  %arrayidx3.11 = getelementptr inbounds i8, ptr %src, i64 -21
  %23 = load i8, ptr %arrayidx3.11, align 1
  %conv4.11 = zext i8 %23 to i32
  %add5.11 = add nuw nsw i32 %add1.11, %conv4.11
  %gep.12 = getelementptr i8, ptr %src, i64 383
  %24 = load i8, ptr %gep.12, align 1
  %conv.12 = zext i8 %24 to i32
  %add1.12 = add nuw nsw i32 %add5.11, %conv.12
  %arrayidx3.12 = getelementptr inbounds i8, ptr %src, i64 -20
  %25 = load i8, ptr %arrayidx3.12, align 1
  %conv4.12 = zext i8 %25 to i32
  %add5.12 = add nuw nsw i32 %add1.12, %conv4.12
  %gep.13 = getelementptr i8, ptr %src, i64 415
  %26 = load i8, ptr %gep.13, align 1
  %conv.13 = zext i8 %26 to i32
  %add1.13 = add nuw nsw i32 %add5.12, %conv.13
  %arrayidx3.13 = getelementptr inbounds i8, ptr %src, i64 -19
  %27 = load i8, ptr %arrayidx3.13, align 1
  %conv4.13 = zext i8 %27 to i32
  %add5.13 = add nuw nsw i32 %add1.13, %conv4.13
  %gep.14 = getelementptr i8, ptr %src, i64 447
  %28 = load i8, ptr %gep.14, align 1
  %conv.14 = zext i8 %28 to i32
  %add1.14 = add nuw nsw i32 %add5.13, %conv.14
  %arrayidx3.14 = getelementptr inbounds i8, ptr %src, i64 -18
  %29 = load i8, ptr %arrayidx3.14, align 1
  %conv4.14 = zext i8 %29 to i32
  %add5.14 = add nuw nsw i32 %add1.14, %conv4.14
  %gep.15 = getelementptr i8, ptr %src, i64 479
  %30 = load i8, ptr %gep.15, align 1
  %conv.15 = zext i8 %30 to i32
  %add1.15 = add nuw nsw i32 %add5.14, %conv.15
  %arrayidx3.15 = getelementptr inbounds i8, ptr %src, i64 -17
  %31 = load i8, ptr %arrayidx3.15, align 1
  %conv4.15 = zext i8 %31 to i32
  %add5.15 = add nuw nsw i32 %add1.15, %conv4.15
  %add6 = add nuw nsw i32 %add5.15, 16
  %shr = lshr i32 %add6, 5
  %mul7 = mul nuw i32 %shr, 16843009
  %32 = insertelement <4 x i32> poison, i32 %mul7, i64 0
  %33 = shufflevector <4 x i32> %32, <4 x i32> poison, <4 x i32> zeroinitializer
  store <4 x i32> %33, ptr %src, align 4
  %add.ptr17 = getelementptr inbounds i8, ptr %src, i64 32
  store <4 x i32> %33, ptr %add.ptr17, align 4
  %add.ptr17.1 = getelementptr inbounds i8, ptr %src, i64 64
  store <4 x i32> %33, ptr %add.ptr17.1, align 4
  %add.ptr17.2 = getelementptr inbounds i8, ptr %src, i64 96
  store <4 x i32> %33, ptr %add.ptr17.2, align 4
  %add.ptr17.3 = getelementptr inbounds i8, ptr %src, i64 128
  store <4 x i32> %33, ptr %add.ptr17.3, align 4
  %add.ptr17.4 = getelementptr inbounds i8, ptr %src, i64 160
  store <4 x i32> %33, ptr %add.ptr17.4, align 4
  %add.ptr17.5 = getelementptr inbounds i8, ptr %src, i64 192
  store <4 x i32> %33, ptr %add.ptr17.5, align 4
  %add.ptr17.6 = getelementptr inbounds i8, ptr %src, i64 224
  store <4 x i32> %33, ptr %add.ptr17.6, align 4
  %add.ptr17.7 = getelementptr inbounds i8, ptr %src, i64 256
  store <4 x i32> %33, ptr %add.ptr17.7, align 4
  %add.ptr17.8 = getelementptr inbounds i8, ptr %src, i64 288
  store <4 x i32> %33, ptr %add.ptr17.8, align 4
  %add.ptr17.9 = getelementptr inbounds i8, ptr %src, i64 320
  store <4 x i32> %33, ptr %add.ptr17.9, align 4
  %add.ptr17.10 = getelementptr inbounds i8, ptr %src, i64 352
  store <4 x i32> %33, ptr %add.ptr17.10, align 4
  %add.ptr17.11 = getelementptr inbounds i8, ptr %src, i64 384
  store <4 x i32> %33, ptr %add.ptr17.11, align 4
  %add.ptr17.12 = getelementptr inbounds i8, ptr %src, i64 416
  store <4 x i32> %33, ptr %add.ptr17.12, align 4
  %add.ptr17.13 = getelementptr inbounds i8, ptr %src, i64 448
  store <4 x i32> %33, ptr %add.ptr17.13, align 4
  %add.ptr17.14 = getelementptr inbounds i8, ptr %src, i64 480
  store <4 x i32> %33, ptr %add.ptr17.14, align 4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @predict_16x16_p(ptr nocapture noundef %src) #2 {
entry:
  %invariant.gep = getelementptr inbounds i8, ptr %src, i64 255
  %arrayidx = getelementptr inbounds i8, ptr %src, i64 -24
  %0 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %0 to i32
  %arrayidx5 = getelementptr inbounds i8, ptr %src, i64 -26
  %1 = load i8, ptr %arrayidx5, align 1
  %conv6 = zext i8 %1 to i32
  %sub7 = sub nsw i32 %conv, %conv6
  %2 = load i8, ptr %invariant.gep, align 1
  %conv15 = zext i8 %2 to i32
  %arrayidx20 = getelementptr inbounds i8, ptr %src, i64 191
  %3 = load i8, ptr %arrayidx20, align 1
  %conv21 = zext i8 %3 to i32
  %sub22 = sub nsw i32 %conv15, %conv21
  %arrayidx.1 = getelementptr inbounds i8, ptr %src, i64 -23
  %4 = load i8, ptr %arrayidx.1, align 1
  %conv.1 = zext i8 %4 to i32
  %arrayidx5.1 = getelementptr inbounds i8, ptr %src, i64 -27
  %5 = load i8, ptr %arrayidx5.1, align 1
  %conv6.1 = zext i8 %5 to i32
  %sub7.1 = sub nsw i32 %conv.1, %conv6.1
  %mul.1 = shl nsw i32 %sub7.1, 1
  %add8.1 = add nsw i32 %mul.1, %sub7
  %gep.1 = getelementptr inbounds i8, ptr %src, i64 287
  %6 = load i8, ptr %gep.1, align 1
  %conv15.1 = zext i8 %6 to i32
  %arrayidx20.1 = getelementptr inbounds i8, ptr %src, i64 159
  %7 = load i8, ptr %arrayidx20.1, align 1
  %conv21.1 = zext i8 %7 to i32
  %sub22.1 = sub nsw i32 %conv15.1, %conv21.1
  %mul23.1 = shl nsw i32 %sub22.1, 1
  %add24.1 = add nsw i32 %mul23.1, %sub22
  %arrayidx.2 = getelementptr inbounds i8, ptr %src, i64 -22
  %8 = load i8, ptr %arrayidx.2, align 1
  %conv.2 = zext i8 %8 to i32
  %arrayidx5.2 = getelementptr inbounds i8, ptr %src, i64 -28
  %9 = load i8, ptr %arrayidx5.2, align 1
  %conv6.2 = zext i8 %9 to i32
  %sub7.2 = sub nsw i32 %conv.2, %conv6.2
  %mul.2 = mul nsw i32 %sub7.2, 3
  %add8.2 = add nsw i32 %mul.2, %add8.1
  %gep.2 = getelementptr inbounds i8, ptr %src, i64 319
  %10 = load i8, ptr %gep.2, align 1
  %conv15.2 = zext i8 %10 to i32
  %arrayidx20.2 = getelementptr inbounds i8, ptr %src, i64 127
  %11 = load i8, ptr %arrayidx20.2, align 1
  %conv21.2 = zext i8 %11 to i32
  %sub22.2 = sub nsw i32 %conv15.2, %conv21.2
  %mul23.2 = mul nsw i32 %sub22.2, 3
  %add24.2 = add nsw i32 %mul23.2, %add24.1
  %arrayidx.3 = getelementptr inbounds i8, ptr %src, i64 -21
  %12 = load i8, ptr %arrayidx.3, align 1
  %conv.3 = zext i8 %12 to i32
  %arrayidx5.3 = getelementptr inbounds i8, ptr %src, i64 -29
  %13 = load i8, ptr %arrayidx5.3, align 1
  %conv6.3 = zext i8 %13 to i32
  %sub7.3 = sub nsw i32 %conv.3, %conv6.3
  %mul.3 = shl nsw i32 %sub7.3, 2
  %add8.3 = add nsw i32 %mul.3, %add8.2
  %gep.3 = getelementptr inbounds i8, ptr %src, i64 351
  %14 = load i8, ptr %gep.3, align 1
  %conv15.3 = zext i8 %14 to i32
  %arrayidx20.3 = getelementptr inbounds i8, ptr %src, i64 95
  %15 = load i8, ptr %arrayidx20.3, align 1
  %conv21.3 = zext i8 %15 to i32
  %sub22.3 = sub nsw i32 %conv15.3, %conv21.3
  %mul23.3 = shl nsw i32 %sub22.3, 2
  %add24.3 = add nsw i32 %mul23.3, %add24.2
  %arrayidx.4 = getelementptr inbounds i8, ptr %src, i64 -20
  %16 = load i8, ptr %arrayidx.4, align 1
  %conv.4 = zext i8 %16 to i32
  %arrayidx5.4 = getelementptr inbounds i8, ptr %src, i64 -30
  %17 = load i8, ptr %arrayidx5.4, align 1
  %conv6.4 = zext i8 %17 to i32
  %sub7.4 = sub nsw i32 %conv.4, %conv6.4
  %mul.4 = mul nsw i32 %sub7.4, 5
  %add8.4 = add nsw i32 %mul.4, %add8.3
  %gep.4 = getelementptr inbounds i8, ptr %src, i64 383
  %18 = load i8, ptr %gep.4, align 1
  %conv15.4 = zext i8 %18 to i32
  %arrayidx20.4 = getelementptr inbounds i8, ptr %src, i64 63
  %19 = load i8, ptr %arrayidx20.4, align 1
  %conv21.4 = zext i8 %19 to i32
  %sub22.4 = sub nsw i32 %conv15.4, %conv21.4
  %mul23.4 = mul nsw i32 %sub22.4, 5
  %add24.4 = add nsw i32 %mul23.4, %add24.3
  %arrayidx.5 = getelementptr inbounds i8, ptr %src, i64 -19
  %20 = load i8, ptr %arrayidx.5, align 1
  %conv.5 = zext i8 %20 to i32
  %arrayidx5.5 = getelementptr inbounds i8, ptr %src, i64 -31
  %21 = load i8, ptr %arrayidx5.5, align 1
  %conv6.5 = zext i8 %21 to i32
  %sub7.5 = sub nsw i32 %conv.5, %conv6.5
  %mul.5 = mul nsw i32 %sub7.5, 6
  %add8.5 = add nsw i32 %mul.5, %add8.4
  %gep.5 = getelementptr inbounds i8, ptr %src, i64 415
  %22 = load i8, ptr %gep.5, align 1
  %conv15.5 = zext i8 %22 to i32
  %arrayidx20.5 = getelementptr inbounds i8, ptr %src, i64 31
  %23 = load i8, ptr %arrayidx20.5, align 1
  %conv21.5 = zext i8 %23 to i32
  %sub22.5 = sub nsw i32 %conv15.5, %conv21.5
  %mul23.5 = mul nsw i32 %sub22.5, 6
  %add24.5 = add nsw i32 %mul23.5, %add24.4
  %arrayidx.6 = getelementptr inbounds i8, ptr %src, i64 -18
  %24 = load i8, ptr %arrayidx.6, align 1
  %conv.6 = zext i8 %24 to i32
  %arrayidx5.6 = getelementptr inbounds i8, ptr %src, i64 -32
  %25 = load i8, ptr %arrayidx5.6, align 1
  %conv6.6 = zext i8 %25 to i32
  %sub7.6 = sub nsw i32 %conv.6, %conv6.6
  %mul.6 = mul nsw i32 %sub7.6, 7
  %add8.6 = add nsw i32 %mul.6, %add8.5
  %gep.6 = getelementptr inbounds i8, ptr %src, i64 447
  %26 = load i8, ptr %gep.6, align 1
  %conv15.6 = zext i8 %26 to i32
  %arrayidx20.6 = getelementptr inbounds i8, ptr %src, i64 -1
  %27 = load i8, ptr %arrayidx20.6, align 1
  %conv21.6 = zext i8 %27 to i32
  %sub22.6 = sub nsw i32 %conv15.6, %conv21.6
  %mul23.6 = mul nsw i32 %sub22.6, 7
  %add24.6 = add nsw i32 %mul23.6, %add24.5
  %arrayidx.7 = getelementptr inbounds i8, ptr %src, i64 -17
  %28 = load i8, ptr %arrayidx.7, align 1
  %conv.7 = zext i8 %28 to i32
  %arrayidx5.7 = getelementptr inbounds i8, ptr %src, i64 -33
  %29 = load i8, ptr %arrayidx5.7, align 1
  %conv6.7 = zext i8 %29 to i32
  %sub7.7 = sub nsw i32 %conv.7, %conv6.7
  %mul.7 = shl nsw i32 %sub7.7, 3
  %add8.7 = add nsw i32 %mul.7, %add8.6
  %gep.7 = getelementptr inbounds i8, ptr %src, i64 479
  %30 = load i8, ptr %gep.7, align 1
  %conv15.7 = zext i8 %30 to i32
  %sub22.7 = sub nsw i32 %conv15.7, %conv6.7
  %mul23.7 = shl nsw i32 %sub22.7, 3
  %add24.7 = add nsw i32 %mul23.7, %add24.6
  %add29 = add nuw nsw i32 %conv.7, %conv15.7
  %mul30 = shl nuw nsw i32 %add29, 4
  %mul31 = mul nsw i32 %add8.7, 5
  %add32 = add nsw i32 %mul31, 32
  %shr = ashr i32 %add32, 6
  %mul33 = mul nsw i32 %add24.7, 5
  %add34 = add nsw i32 %mul33, 32
  %shr35 = ashr i32 %add34, 6
  %reass.add = add nsw i32 %shr, %shr35
  %reass.mul = mul nsw i32 %reass.add, -7
  %sub39 = add nsw i32 %reass.mul, 16
  %add40 = add nsw i32 %sub39, %mul30
  %31 = shl nsw i32 %shr35, 1
  %32 = mul nsw i32 %shr35, 3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %entry
  %index = phi i64 [ 0, %entry ], [ %index.next, %vector.body ]
  %.cast = trunc i64 %index to i32
  %33 = mul i32 %shr35, %.cast
  %offset.idx102 = shl i64 %index, 5
  %34 = or disjoint i64 %offset.idx102, 32
  %35 = or disjoint i64 %offset.idx102, 64
  %36 = or disjoint i64 %offset.idx102, 96
  %next.gep = getelementptr i8, ptr %src, i64 %offset.idx102
  %next.gep103 = getelementptr i8, ptr %src, i64 %34
  %next.gep104 = getelementptr i8, ptr %src, i64 %35
  %next.gep105 = getelementptr i8, ptr %src, i64 %36
  %offset.idx = add i32 %add40, %33
  %37 = add nsw i32 %offset.idx, %shr
  %38 = add nsw i32 %37, %shr
  %39 = add nsw i32 %38, %shr
  %40 = add nsw i32 %39, %shr
  %41 = add nsw i32 %40, %shr
  %42 = add nsw i32 %41, %shr
  %43 = add nsw i32 %42, %shr
  %44 = add nsw i32 %43, %shr
  %45 = add nsw i32 %44, %shr
  %46 = add nsw i32 %45, %shr
  %47 = add nsw i32 %46, %shr
  %48 = add nsw i32 %47, %shr
  %49 = add nsw i32 %48, %shr
  %50 = add nsw i32 %49, %shr
  %51 = add nsw i32 %50, %shr
  %52 = insertelement <16 x i32> poison, i32 %offset.idx, i64 0
  %53 = insertelement <16 x i32> %52, i32 %37, i64 1
  %54 = insertelement <16 x i32> %53, i32 %38, i64 2
  %55 = insertelement <16 x i32> %54, i32 %39, i64 3
  %56 = insertelement <16 x i32> %55, i32 %40, i64 4
  %57 = insertelement <16 x i32> %56, i32 %41, i64 5
  %58 = insertelement <16 x i32> %57, i32 %42, i64 6
  %59 = insertelement <16 x i32> %58, i32 %43, i64 7
  %60 = insertelement <16 x i32> %59, i32 %44, i64 8
  %61 = insertelement <16 x i32> %60, i32 %45, i64 9
  %62 = insertelement <16 x i32> %61, i32 %46, i64 10
  %63 = insertelement <16 x i32> %62, i32 %47, i64 11
  %64 = insertelement <16 x i32> %63, i32 %48, i64 12
  %65 = insertelement <16 x i32> %64, i32 %49, i64 13
  %66 = insertelement <16 x i32> %65, i32 %50, i64 14
  %67 = insertelement <16 x i32> %66, i32 %51, i64 15
  %68 = ashr <16 x i32> %67, <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  %69 = icmp ult <16 x i32> %68, <i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256>
  %70 = icmp sgt <16 x i32> %68, zeroinitializer
  %71 = sext <16 x i1> %70 to <16 x i32>
  %72 = select <16 x i1> %69, <16 x i32> %68, <16 x i32> %71
  %73 = trunc <16 x i32> %72 to <16 x i8>
  store <16 x i8> %73, ptr %next.gep, align 1
  %74 = add i32 %offset.idx, %shr35
  %75 = add nsw i32 %74, %shr
  %76 = add nsw i32 %75, %shr
  %77 = add nsw i32 %76, %shr
  %78 = add nsw i32 %77, %shr
  %79 = add nsw i32 %78, %shr
  %80 = add nsw i32 %79, %shr
  %81 = add nsw i32 %80, %shr
  %82 = add nsw i32 %81, %shr
  %83 = add nsw i32 %82, %shr
  %84 = add nsw i32 %83, %shr
  %85 = add nsw i32 %84, %shr
  %86 = add nsw i32 %85, %shr
  %87 = add nsw i32 %86, %shr
  %88 = add nsw i32 %87, %shr
  %89 = add nsw i32 %88, %shr
  %90 = insertelement <16 x i32> poison, i32 %74, i64 0
  %91 = insertelement <16 x i32> %90, i32 %75, i64 1
  %92 = insertelement <16 x i32> %91, i32 %76, i64 2
  %93 = insertelement <16 x i32> %92, i32 %77, i64 3
  %94 = insertelement <16 x i32> %93, i32 %78, i64 4
  %95 = insertelement <16 x i32> %94, i32 %79, i64 5
  %96 = insertelement <16 x i32> %95, i32 %80, i64 6
  %97 = insertelement <16 x i32> %96, i32 %81, i64 7
  %98 = insertelement <16 x i32> %97, i32 %82, i64 8
  %99 = insertelement <16 x i32> %98, i32 %83, i64 9
  %100 = insertelement <16 x i32> %99, i32 %84, i64 10
  %101 = insertelement <16 x i32> %100, i32 %85, i64 11
  %102 = insertelement <16 x i32> %101, i32 %86, i64 12
  %103 = insertelement <16 x i32> %102, i32 %87, i64 13
  %104 = insertelement <16 x i32> %103, i32 %88, i64 14
  %105 = insertelement <16 x i32> %104, i32 %89, i64 15
  %106 = ashr <16 x i32> %105, <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  %107 = icmp ult <16 x i32> %106, <i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256>
  %108 = icmp sgt <16 x i32> %106, zeroinitializer
  %109 = sext <16 x i1> %108 to <16 x i32>
  %110 = select <16 x i1> %107, <16 x i32> %106, <16 x i32> %109
  %111 = trunc <16 x i32> %110 to <16 x i8>
  store <16 x i8> %111, ptr %next.gep103, align 1
  %112 = add i32 %offset.idx, %31
  %113 = add nsw i32 %112, %shr
  %114 = add nsw i32 %113, %shr
  %115 = add nsw i32 %114, %shr
  %116 = add nsw i32 %115, %shr
  %117 = add nsw i32 %116, %shr
  %118 = add nsw i32 %117, %shr
  %119 = add nsw i32 %118, %shr
  %120 = add nsw i32 %119, %shr
  %121 = add nsw i32 %120, %shr
  %122 = add nsw i32 %121, %shr
  %123 = add nsw i32 %122, %shr
  %124 = add nsw i32 %123, %shr
  %125 = add nsw i32 %124, %shr
  %126 = add nsw i32 %125, %shr
  %127 = add nsw i32 %126, %shr
  %128 = insertelement <16 x i32> poison, i32 %112, i64 0
  %129 = insertelement <16 x i32> %128, i32 %113, i64 1
  %130 = insertelement <16 x i32> %129, i32 %114, i64 2
  %131 = insertelement <16 x i32> %130, i32 %115, i64 3
  %132 = insertelement <16 x i32> %131, i32 %116, i64 4
  %133 = insertelement <16 x i32> %132, i32 %117, i64 5
  %134 = insertelement <16 x i32> %133, i32 %118, i64 6
  %135 = insertelement <16 x i32> %134, i32 %119, i64 7
  %136 = insertelement <16 x i32> %135, i32 %120, i64 8
  %137 = insertelement <16 x i32> %136, i32 %121, i64 9
  %138 = insertelement <16 x i32> %137, i32 %122, i64 10
  %139 = insertelement <16 x i32> %138, i32 %123, i64 11
  %140 = insertelement <16 x i32> %139, i32 %124, i64 12
  %141 = insertelement <16 x i32> %140, i32 %125, i64 13
  %142 = insertelement <16 x i32> %141, i32 %126, i64 14
  %143 = insertelement <16 x i32> %142, i32 %127, i64 15
  %144 = ashr <16 x i32> %143, <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  %145 = icmp ult <16 x i32> %144, <i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256>
  %146 = icmp sgt <16 x i32> %144, zeroinitializer
  %147 = sext <16 x i1> %146 to <16 x i32>
  %148 = select <16 x i1> %145, <16 x i32> %144, <16 x i32> %147
  %149 = trunc <16 x i32> %148 to <16 x i8>
  store <16 x i8> %149, ptr %next.gep104, align 1
  %150 = add i32 %offset.idx, %32
  %151 = add nsw i32 %150, %shr
  %152 = add nsw i32 %151, %shr
  %153 = add nsw i32 %152, %shr
  %154 = add nsw i32 %153, %shr
  %155 = add nsw i32 %154, %shr
  %156 = add nsw i32 %155, %shr
  %157 = add nsw i32 %156, %shr
  %158 = add nsw i32 %157, %shr
  %159 = add nsw i32 %158, %shr
  %160 = add nsw i32 %159, %shr
  %161 = add nsw i32 %160, %shr
  %162 = add nsw i32 %161, %shr
  %163 = add nsw i32 %162, %shr
  %164 = add nsw i32 %163, %shr
  %165 = add nsw i32 %164, %shr
  %166 = insertelement <16 x i32> poison, i32 %150, i64 0
  %167 = insertelement <16 x i32> %166, i32 %151, i64 1
  %168 = insertelement <16 x i32> %167, i32 %152, i64 2
  %169 = insertelement <16 x i32> %168, i32 %153, i64 3
  %170 = insertelement <16 x i32> %169, i32 %154, i64 4
  %171 = insertelement <16 x i32> %170, i32 %155, i64 5
  %172 = insertelement <16 x i32> %171, i32 %156, i64 6
  %173 = insertelement <16 x i32> %172, i32 %157, i64 7
  %174 = insertelement <16 x i32> %173, i32 %158, i64 8
  %175 = insertelement <16 x i32> %174, i32 %159, i64 9
  %176 = insertelement <16 x i32> %175, i32 %160, i64 10
  %177 = insertelement <16 x i32> %176, i32 %161, i64 11
  %178 = insertelement <16 x i32> %177, i32 %162, i64 12
  %179 = insertelement <16 x i32> %178, i32 %163, i64 13
  %180 = insertelement <16 x i32> %179, i32 %164, i64 14
  %181 = insertelement <16 x i32> %180, i32 %165, i64 15
  %182 = ashr <16 x i32> %181, <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  %183 = icmp ult <16 x i32> %182, <i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256>
  %184 = icmp sgt <16 x i32> %182, zeroinitializer
  %185 = sext <16 x i1> %184 to <16 x i32>
  %186 = select <16 x i1> %183, <16 x i32> %182, <16 x i32> %185
  %187 = trunc <16 x i32> %186 to <16 x i8>
  store <16 x i8> %187, ptr %next.gep105, align 1
  %index.next = add nuw i64 %index, 4
  %188 = icmp eq i64 %index.next, 16
  br i1 %188, label %for.cond.cleanup44, label %vector.body, !llvm.loop !5

for.cond.cleanup44:                               ; preds = %vector.body
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @predict_16x16_dc_left(ptr nocapture noundef %src) #1 {
entry:
  %invariant.gep = getelementptr i8, ptr %src, i64 -1
  %0 = load i8, ptr %invariant.gep, align 1
  %conv = zext i8 %0 to i32
  %gep.1 = getelementptr i8, ptr %src, i64 31
  %1 = load i8, ptr %gep.1, align 1
  %conv.1 = zext i8 %1 to i32
  %add1.1 = add nuw nsw i32 %conv, %conv.1
  %gep.2 = getelementptr i8, ptr %src, i64 63
  %2 = load i8, ptr %gep.2, align 1
  %conv.2 = zext i8 %2 to i32
  %add1.2 = add nuw nsw i32 %add1.1, %conv.2
  %gep.3 = getelementptr i8, ptr %src, i64 95
  %3 = load i8, ptr %gep.3, align 1
  %conv.3 = zext i8 %3 to i32
  %add1.3 = add nuw nsw i32 %add1.2, %conv.3
  %gep.4 = getelementptr i8, ptr %src, i64 127
  %4 = load i8, ptr %gep.4, align 1
  %conv.4 = zext i8 %4 to i32
  %add1.4 = add nuw nsw i32 %add1.3, %conv.4
  %gep.5 = getelementptr i8, ptr %src, i64 159
  %5 = load i8, ptr %gep.5, align 1
  %conv.5 = zext i8 %5 to i32
  %add1.5 = add nuw nsw i32 %add1.4, %conv.5
  %gep.6 = getelementptr i8, ptr %src, i64 191
  %6 = load i8, ptr %gep.6, align 1
  %conv.6 = zext i8 %6 to i32
  %add1.6 = add nuw nsw i32 %add1.5, %conv.6
  %gep.7 = getelementptr i8, ptr %src, i64 223
  %7 = load i8, ptr %gep.7, align 1
  %conv.7 = zext i8 %7 to i32
  %add1.7 = add nuw nsw i32 %add1.6, %conv.7
  %gep.8 = getelementptr i8, ptr %src, i64 255
  %8 = load i8, ptr %gep.8, align 1
  %conv.8 = zext i8 %8 to i32
  %add1.8 = add nuw nsw i32 %add1.7, %conv.8
  %gep.9 = getelementptr i8, ptr %src, i64 287
  %9 = load i8, ptr %gep.9, align 1
  %conv.9 = zext i8 %9 to i32
  %add1.9 = add nuw nsw i32 %add1.8, %conv.9
  %gep.10 = getelementptr i8, ptr %src, i64 319
  %10 = load i8, ptr %gep.10, align 1
  %conv.10 = zext i8 %10 to i32
  %add1.10 = add nuw nsw i32 %add1.9, %conv.10
  %gep.11 = getelementptr i8, ptr %src, i64 351
  %11 = load i8, ptr %gep.11, align 1
  %conv.11 = zext i8 %11 to i32
  %add1.11 = add nuw nsw i32 %add1.10, %conv.11
  %gep.12 = getelementptr i8, ptr %src, i64 383
  %12 = load i8, ptr %gep.12, align 1
  %conv.12 = zext i8 %12 to i32
  %add1.12 = add nuw nsw i32 %add1.11, %conv.12
  %gep.13 = getelementptr i8, ptr %src, i64 415
  %13 = load i8, ptr %gep.13, align 1
  %conv.13 = zext i8 %13 to i32
  %add1.13 = add nuw nsw i32 %add1.12, %conv.13
  %gep.14 = getelementptr i8, ptr %src, i64 447
  %14 = load i8, ptr %gep.14, align 1
  %conv.14 = zext i8 %14 to i32
  %add1.14 = add nuw nsw i32 %add1.13, %conv.14
  %gep.15 = getelementptr i8, ptr %src, i64 479
  %15 = load i8, ptr %gep.15, align 1
  %conv.15 = zext i8 %15 to i32
  %add1.15 = add nuw nsw i32 %add1.14, %conv.15
  %add2 = add nuw nsw i32 %add1.15, 8
  %shr = lshr i32 %add2, 4
  %mul3 = mul nuw i32 %shr, 16843009
  %16 = insertelement <4 x i32> poison, i32 %mul3, i64 0
  %17 = shufflevector <4 x i32> %16, <4 x i32> poison, <4 x i32> zeroinitializer
  store <4 x i32> %17, ptr %src, align 4
  %add.ptr13 = getelementptr inbounds i8, ptr %src, i64 32
  store <4 x i32> %17, ptr %add.ptr13, align 4
  %add.ptr13.1 = getelementptr inbounds i8, ptr %src, i64 64
  store <4 x i32> %17, ptr %add.ptr13.1, align 4
  %add.ptr13.2 = getelementptr inbounds i8, ptr %src, i64 96
  store <4 x i32> %17, ptr %add.ptr13.2, align 4
  %add.ptr13.3 = getelementptr inbounds i8, ptr %src, i64 128
  store <4 x i32> %17, ptr %add.ptr13.3, align 4
  %add.ptr13.4 = getelementptr inbounds i8, ptr %src, i64 160
  store <4 x i32> %17, ptr %add.ptr13.4, align 4
  %add.ptr13.5 = getelementptr inbounds i8, ptr %src, i64 192
  store <4 x i32> %17, ptr %add.ptr13.5, align 4
  %add.ptr13.6 = getelementptr inbounds i8, ptr %src, i64 224
  store <4 x i32> %17, ptr %add.ptr13.6, align 4
  %add.ptr13.7 = getelementptr inbounds i8, ptr %src, i64 256
  store <4 x i32> %17, ptr %add.ptr13.7, align 4
  %add.ptr13.8 = getelementptr inbounds i8, ptr %src, i64 288
  store <4 x i32> %17, ptr %add.ptr13.8, align 4
  %add.ptr13.9 = getelementptr inbounds i8, ptr %src, i64 320
  store <4 x i32> %17, ptr %add.ptr13.9, align 4
  %add.ptr13.10 = getelementptr inbounds i8, ptr %src, i64 352
  store <4 x i32> %17, ptr %add.ptr13.10, align 4
  %add.ptr13.11 = getelementptr inbounds i8, ptr %src, i64 384
  store <4 x i32> %17, ptr %add.ptr13.11, align 4
  %add.ptr13.12 = getelementptr inbounds i8, ptr %src, i64 416
  store <4 x i32> %17, ptr %add.ptr13.12, align 4
  %add.ptr13.13 = getelementptr inbounds i8, ptr %src, i64 448
  store <4 x i32> %17, ptr %add.ptr13.13, align 4
  %add.ptr13.14 = getelementptr inbounds i8, ptr %src, i64 480
  store <4 x i32> %17, ptr %add.ptr13.14, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @predict_16x16_dc_top(ptr nocapture noundef %src) #1 {
entry:
  %arrayidx = getelementptr inbounds i8, ptr %src, i64 -32
  %0 = load <16 x i8>, ptr %arrayidx, align 1
  %1 = zext <16 x i8> %0 to <16 x i32>
  %2 = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %1)
  %op.rdx = add i32 %2, 8
  %shr = lshr i32 %op.rdx, 4
  %mul = mul nuw i32 %shr, 16843009
  %3 = insertelement <4 x i32> poison, i32 %mul, i64 0
  %4 = shufflevector <4 x i32> %3, <4 x i32> poison, <4 x i32> zeroinitializer
  store <4 x i32> %4, ptr %src, align 4
  %add.ptr11 = getelementptr inbounds i8, ptr %src, i64 32
  store <4 x i32> %4, ptr %add.ptr11, align 4
  %add.ptr11.1 = getelementptr inbounds i8, ptr %src, i64 64
  store <4 x i32> %4, ptr %add.ptr11.1, align 4
  %add.ptr11.2 = getelementptr inbounds i8, ptr %src, i64 96
  store <4 x i32> %4, ptr %add.ptr11.2, align 4
  %add.ptr11.3 = getelementptr inbounds i8, ptr %src, i64 128
  store <4 x i32> %4, ptr %add.ptr11.3, align 4
  %add.ptr11.4 = getelementptr inbounds i8, ptr %src, i64 160
  store <4 x i32> %4, ptr %add.ptr11.4, align 4
  %add.ptr11.5 = getelementptr inbounds i8, ptr %src, i64 192
  store <4 x i32> %4, ptr %add.ptr11.5, align 4
  %add.ptr11.6 = getelementptr inbounds i8, ptr %src, i64 224
  store <4 x i32> %4, ptr %add.ptr11.6, align 4
  %add.ptr11.7 = getelementptr inbounds i8, ptr %src, i64 256
  store <4 x i32> %4, ptr %add.ptr11.7, align 4
  %add.ptr11.8 = getelementptr inbounds i8, ptr %src, i64 288
  store <4 x i32> %4, ptr %add.ptr11.8, align 4
  %add.ptr11.9 = getelementptr inbounds i8, ptr %src, i64 320
  store <4 x i32> %4, ptr %add.ptr11.9, align 4
  %add.ptr11.10 = getelementptr inbounds i8, ptr %src, i64 352
  store <4 x i32> %4, ptr %add.ptr11.10, align 4
  %add.ptr11.11 = getelementptr inbounds i8, ptr %src, i64 384
  store <4 x i32> %4, ptr %add.ptr11.11, align 4
  %add.ptr11.12 = getelementptr inbounds i8, ptr %src, i64 416
  store <4 x i32> %4, ptr %add.ptr11.12, align 4
  %add.ptr11.13 = getelementptr inbounds i8, ptr %src, i64 448
  store <4 x i32> %4, ptr %add.ptr11.13, align 4
  %add.ptr11.14 = getelementptr inbounds i8, ptr %src, i64 480
  store <4 x i32> %4, ptr %add.ptr11.14, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @predict_16x16_dc_128(ptr nocapture noundef writeonly %src) #0 {
entry:
  %add.ptr4 = getelementptr inbounds i8, ptr %src, i64 32
  %add.ptr4.1 = getelementptr inbounds i8, ptr %src, i64 64
  %add.ptr4.2 = getelementptr inbounds i8, ptr %src, i64 96
  %add.ptr4.3 = getelementptr inbounds i8, ptr %src, i64 128
  %add.ptr4.4 = getelementptr inbounds i8, ptr %src, i64 160
  %add.ptr4.5 = getelementptr inbounds i8, ptr %src, i64 192
  %add.ptr4.6 = getelementptr inbounds i8, ptr %src, i64 224
  %add.ptr4.7 = getelementptr inbounds i8, ptr %src, i64 256
  %add.ptr4.8 = getelementptr inbounds i8, ptr %src, i64 288
  %add.ptr4.9 = getelementptr inbounds i8, ptr %src, i64 320
  %add.ptr4.10 = getelementptr inbounds i8, ptr %src, i64 352
  %add.ptr4.11 = getelementptr inbounds i8, ptr %src, i64 384
  %add.ptr4.12 = getelementptr inbounds i8, ptr %src, i64 416
  %add.ptr4.13 = getelementptr inbounds i8, ptr %src, i64 448
  %add.ptr4.14 = getelementptr inbounds i8, ptr %src, i64 480
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %src, i8 -128, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %add.ptr4, i8 -128, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %add.ptr4.1, i8 -128, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %add.ptr4.2, i8 -128, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %add.ptr4.3, i8 -128, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %add.ptr4.4, i8 -128, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %add.ptr4.5, i8 -128, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %add.ptr4.6, i8 -128, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %add.ptr4.7, i8 -128, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %add.ptr4.8, i8 -128, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %add.ptr4.9, i8 -128, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %add.ptr4.10, i8 -128, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %add.ptr4.11, i8 -128, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %add.ptr4.12, i8 -128, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %add.ptr4.13, i8 -128, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %add.ptr4.14, i8 -128, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @x264_predict_8x8c_init(i32 noundef %cpu, ptr nocapture noundef writeonly %pf) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr inbounds i8, ptr %pf, i64 16
  store ptr @predict_8x8c_v, ptr %arrayidx, align 8
  %arrayidx1 = getelementptr inbounds i8, ptr %pf, i64 8
  store ptr @predict_8x8c_h, ptr %arrayidx1, align 8
  store ptr @predict_8x8c_dc, ptr %pf, align 8
  %arrayidx3 = getelementptr inbounds i8, ptr %pf, i64 24
  store ptr @predict_8x8c_p, ptr %arrayidx3, align 8
  %arrayidx4 = getelementptr inbounds i8, ptr %pf, i64 32
  store ptr @predict_8x8c_dc_left, ptr %arrayidx4, align 8
  %arrayidx5 = getelementptr inbounds i8, ptr %pf, i64 40
  store ptr @predict_8x8c_dc_top, ptr %arrayidx5, align 8
  %arrayidx6 = getelementptr inbounds i8, ptr %pf, i64 48
  store ptr @predict_8x8c_dc_128, ptr %arrayidx6, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @predict_8x8c_v(ptr nocapture noundef %src) #1 {
entry:
  %add.ptr1 = getelementptr inbounds i8, ptr %src, i64 -32
  %0 = load i32, ptr %add.ptr1, align 4
  %add.ptr3 = getelementptr inbounds i8, ptr %src, i64 -28
  %1 = load i32, ptr %add.ptr3, align 4
  store i32 %0, ptr %src, align 4
  %add.ptr5 = getelementptr inbounds i8, ptr %src, i64 4
  store i32 %1, ptr %add.ptr5, align 4
  %add.ptr6 = getelementptr inbounds i8, ptr %src, i64 32
  store i32 %0, ptr %add.ptr6, align 4
  %add.ptr5.1 = getelementptr inbounds i8, ptr %src, i64 36
  store i32 %1, ptr %add.ptr5.1, align 4
  %add.ptr6.1 = getelementptr inbounds i8, ptr %src, i64 64
  store i32 %0, ptr %add.ptr6.1, align 4
  %add.ptr5.2 = getelementptr inbounds i8, ptr %src, i64 68
  store i32 %1, ptr %add.ptr5.2, align 4
  %add.ptr6.2 = getelementptr inbounds i8, ptr %src, i64 96
  store i32 %0, ptr %add.ptr6.2, align 4
  %add.ptr5.3 = getelementptr inbounds i8, ptr %src, i64 100
  store i32 %1, ptr %add.ptr5.3, align 4
  %add.ptr6.3 = getelementptr inbounds i8, ptr %src, i64 128
  store i32 %0, ptr %add.ptr6.3, align 4
  %add.ptr5.4 = getelementptr inbounds i8, ptr %src, i64 132
  store i32 %1, ptr %add.ptr5.4, align 4
  %add.ptr6.4 = getelementptr inbounds i8, ptr %src, i64 160
  store i32 %0, ptr %add.ptr6.4, align 4
  %add.ptr5.5 = getelementptr inbounds i8, ptr %src, i64 164
  store i32 %1, ptr %add.ptr5.5, align 4
  %add.ptr6.5 = getelementptr inbounds i8, ptr %src, i64 192
  store i32 %0, ptr %add.ptr6.5, align 4
  %add.ptr5.6 = getelementptr inbounds i8, ptr %src, i64 196
  store i32 %1, ptr %add.ptr5.6, align 4
  %add.ptr6.6 = getelementptr inbounds i8, ptr %src, i64 224
  store i32 %0, ptr %add.ptr6.6, align 4
  %add.ptr5.7 = getelementptr inbounds i8, ptr %src, i64 228
  store i32 %1, ptr %add.ptr5.7, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @predict_8x8c_h(ptr nocapture noundef %src) #1 {
entry:
  %arrayidx = getelementptr inbounds i8, ptr %src, i64 -1
  %0 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %0 to i32
  %mul = mul nuw nsw i32 %conv, 16843009
  store i32 %mul, ptr %src, align 4
  %add.ptr1 = getelementptr inbounds i8, ptr %src, i64 4
  store i32 %mul, ptr %add.ptr1, align 4
  %add.ptr2 = getelementptr inbounds i8, ptr %src, i64 32
  %arrayidx.1 = getelementptr inbounds i8, ptr %src, i64 31
  %1 = load i8, ptr %arrayidx.1, align 1
  %conv.1 = zext i8 %1 to i32
  %mul.1 = mul nuw nsw i32 %conv.1, 16843009
  store i32 %mul.1, ptr %add.ptr2, align 4
  %add.ptr1.1 = getelementptr inbounds i8, ptr %src, i64 36
  store i32 %mul.1, ptr %add.ptr1.1, align 4
  %add.ptr2.1 = getelementptr inbounds i8, ptr %src, i64 64
  %arrayidx.2 = getelementptr inbounds i8, ptr %src, i64 63
  %2 = load i8, ptr %arrayidx.2, align 1
  %conv.2 = zext i8 %2 to i32
  %mul.2 = mul nuw nsw i32 %conv.2, 16843009
  store i32 %mul.2, ptr %add.ptr2.1, align 4
  %add.ptr1.2 = getelementptr inbounds i8, ptr %src, i64 68
  store i32 %mul.2, ptr %add.ptr1.2, align 4
  %add.ptr2.2 = getelementptr inbounds i8, ptr %src, i64 96
  %arrayidx.3 = getelementptr inbounds i8, ptr %src, i64 95
  %3 = load i8, ptr %arrayidx.3, align 1
  %conv.3 = zext i8 %3 to i32
  %mul.3 = mul nuw nsw i32 %conv.3, 16843009
  store i32 %mul.3, ptr %add.ptr2.2, align 4
  %add.ptr1.3 = getelementptr inbounds i8, ptr %src, i64 100
  store i32 %mul.3, ptr %add.ptr1.3, align 4
  %add.ptr2.3 = getelementptr inbounds i8, ptr %src, i64 128
  %arrayidx.4 = getelementptr inbounds i8, ptr %src, i64 127
  %4 = load i8, ptr %arrayidx.4, align 1
  %conv.4 = zext i8 %4 to i32
  %mul.4 = mul nuw nsw i32 %conv.4, 16843009
  store i32 %mul.4, ptr %add.ptr2.3, align 4
  %add.ptr1.4 = getelementptr inbounds i8, ptr %src, i64 132
  store i32 %mul.4, ptr %add.ptr1.4, align 4
  %add.ptr2.4 = getelementptr inbounds i8, ptr %src, i64 160
  %arrayidx.5 = getelementptr inbounds i8, ptr %src, i64 159
  %5 = load i8, ptr %arrayidx.5, align 1
  %conv.5 = zext i8 %5 to i32
  %mul.5 = mul nuw nsw i32 %conv.5, 16843009
  store i32 %mul.5, ptr %add.ptr2.4, align 4
  %add.ptr1.5 = getelementptr inbounds i8, ptr %src, i64 164
  store i32 %mul.5, ptr %add.ptr1.5, align 4
  %add.ptr2.5 = getelementptr inbounds i8, ptr %src, i64 192
  %arrayidx.6 = getelementptr inbounds i8, ptr %src, i64 191
  %6 = load i8, ptr %arrayidx.6, align 1
  %conv.6 = zext i8 %6 to i32
  %mul.6 = mul nuw nsw i32 %conv.6, 16843009
  store i32 %mul.6, ptr %add.ptr2.5, align 4
  %add.ptr1.6 = getelementptr inbounds i8, ptr %src, i64 196
  store i32 %mul.6, ptr %add.ptr1.6, align 4
  %add.ptr2.6 = getelementptr inbounds i8, ptr %src, i64 224
  %arrayidx.7 = getelementptr inbounds i8, ptr %src, i64 223
  %7 = load i8, ptr %arrayidx.7, align 1
  %conv.7 = zext i8 %7 to i32
  %mul.7 = mul nuw nsw i32 %conv.7, 16843009
  store i32 %mul.7, ptr %add.ptr2.6, align 4
  %add.ptr1.7 = getelementptr inbounds i8, ptr %src, i64 228
  store i32 %mul.7, ptr %add.ptr1.7, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @predict_8x8c_dc(ptr nocapture noundef %src) #1 {
entry:
  %arrayidx = getelementptr inbounds i8, ptr %src, i64 -32
  %0 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %0 to i32
  %arrayidx4 = getelementptr inbounds i8, ptr %src, i64 -28
  %1 = load i8, ptr %arrayidx4, align 1
  %conv5 = zext i8 %1 to i32
  %arrayidx9 = getelementptr i8, ptr %src, i64 -1
  %2 = load i8, ptr %arrayidx9, align 1
  %conv10 = zext i8 %2 to i32
  %arrayidx16 = getelementptr inbounds i8, ptr %src, i64 127
  %3 = load i8, ptr %arrayidx16, align 1
  %conv17 = zext i8 %3 to i32
  %arrayidx.1 = getelementptr inbounds i8, ptr %src, i64 -31
  %4 = load i8, ptr %arrayidx.1, align 1
  %conv.1 = zext i8 %4 to i32
  %add.1 = add nuw nsw i32 %conv, %conv.1
  %arrayidx4.1 = getelementptr inbounds i8, ptr %src, i64 -27
  %5 = load i8, ptr %arrayidx4.1, align 1
  %conv5.1 = zext i8 %5 to i32
  %add6.1 = add nuw nsw i32 %conv5, %conv5.1
  %6 = getelementptr i8, ptr %src, i64 32
  %arrayidx9.1 = getelementptr i8, ptr %src, i64 31
  %7 = load i8, ptr %arrayidx9.1, align 1
  %conv10.1 = zext i8 %7 to i32
  %add11.1 = add nuw nsw i32 %conv10, %conv10.1
  %arrayidx16.1 = getelementptr i8, ptr %src, i64 159
  %8 = load i8, ptr %arrayidx16.1, align 1
  %conv17.1 = zext i8 %8 to i32
  %add18.1 = add nuw nsw i32 %conv17, %conv17.1
  %arrayidx.2 = getelementptr inbounds i8, ptr %src, i64 -30
  %9 = load i8, ptr %arrayidx.2, align 1
  %conv.2 = zext i8 %9 to i32
  %add.2 = add nuw nsw i32 %add.1, %conv.2
  %arrayidx4.2 = getelementptr inbounds i8, ptr %src, i64 -26
  %10 = load i8, ptr %arrayidx4.2, align 1
  %conv5.2 = zext i8 %10 to i32
  %add6.2 = add nuw nsw i32 %add6.1, %conv5.2
  %arrayidx9.2 = getelementptr i8, ptr %src, i64 63
  %11 = load i8, ptr %arrayidx9.2, align 1
  %conv10.2 = zext i8 %11 to i32
  %add11.2 = add nuw nsw i32 %add11.1, %conv10.2
  %arrayidx16.2 = getelementptr i8, ptr %src, i64 191
  %12 = load i8, ptr %arrayidx16.2, align 1
  %conv17.2 = zext i8 %12 to i32
  %add18.2 = add nuw nsw i32 %add18.1, %conv17.2
  %arrayidx.3 = getelementptr inbounds i8, ptr %src, i64 -29
  %13 = load i8, ptr %arrayidx.3, align 1
  %conv.3 = zext i8 %13 to i32
  %add.3 = add nuw nsw i32 %add.2, %conv.3
  %arrayidx4.3 = getelementptr inbounds i8, ptr %src, i64 -25
  %14 = load i8, ptr %arrayidx4.3, align 1
  %conv5.3 = zext i8 %14 to i32
  %add6.3 = add nuw nsw i32 %add6.2, %conv5.3
  %arrayidx9.3 = getelementptr i8, ptr %src, i64 95
  %15 = load i8, ptr %arrayidx9.3, align 1
  %conv10.3 = zext i8 %15 to i32
  %add11.3 = add nuw nsw i32 %add11.2, %conv10.3
  %arrayidx16.3 = getelementptr i8, ptr %src, i64 223
  %16 = load i8, ptr %arrayidx16.3, align 1
  %conv17.3 = zext i8 %16 to i32
  %add18.3 = add nuw nsw i32 %add18.2, %conv17.3
  %add19 = add nuw nsw i32 %add11.3, 4
  %add20 = add nuw nsw i32 %add19, %add.3
  %shr = lshr i32 %add20, 3
  %mul21 = mul nuw nsw i32 %shr, 16843009
  %add22 = add nuw nsw i32 %add6.3, 2
  %shr23 = lshr i32 %add22, 2
  %mul24 = mul nuw nsw i32 %shr23, 16843009
  %add25 = add nuw nsw i32 %add18.3, 2
  %shr26 = lshr i32 %add25, 2
  %add28 = add nuw nsw i32 %add18.3, 4
  %add29 = add nuw nsw i32 %add28, %add6.3
  %shr30 = lshr i32 %add29, 3
  store i32 %mul21, ptr %src, align 4
  %add.ptr37 = getelementptr inbounds i8, ptr %src, i64 4
  store i32 %mul24, ptr %add.ptr37, align 4
  store i32 %mul21, ptr %6, align 4
  %add.ptr37.1 = getelementptr i8, ptr %src, i64 36
  store i32 %mul24, ptr %add.ptr37.1, align 4
  %add.ptr38.1 = getelementptr i8, ptr %src, i64 64
  store i32 %mul21, ptr %add.ptr38.1, align 4
  %add.ptr37.2 = getelementptr i8, ptr %src, i64 68
  store i32 %mul24, ptr %add.ptr37.2, align 4
  %add.ptr38.2 = getelementptr i8, ptr %src, i64 96
  store i32 %mul21, ptr %add.ptr38.2, align 4
  %add.ptr37.3 = getelementptr i8, ptr %src, i64 100
  store i32 %mul24, ptr %add.ptr37.3, align 4
  %add.ptr38.3 = getelementptr i8, ptr %src, i64 128
  %mul27 = mul nuw nsw i32 %shr26, 16843009
  %mul31 = mul nuw nsw i32 %shr30, 16843009
  store i32 %mul27, ptr %add.ptr38.3, align 4
  %add.ptr49 = getelementptr i8, ptr %src, i64 132
  store i32 %mul31, ptr %add.ptr49, align 4
  %add.ptr50 = getelementptr i8, ptr %src, i64 160
  store i32 %mul27, ptr %add.ptr50, align 4
  %add.ptr49.1 = getelementptr i8, ptr %src, i64 164
  store i32 %mul31, ptr %add.ptr49.1, align 4
  %add.ptr50.1 = getelementptr i8, ptr %src, i64 192
  store i32 %mul27, ptr %add.ptr50.1, align 4
  %add.ptr49.2 = getelementptr i8, ptr %src, i64 196
  store i32 %mul31, ptr %add.ptr49.2, align 4
  %add.ptr50.2 = getelementptr i8, ptr %src, i64 224
  store i32 %mul27, ptr %add.ptr50.2, align 4
  %add.ptr49.3 = getelementptr i8, ptr %src, i64 228
  store i32 %mul31, ptr %add.ptr49.3, align 4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @predict_8x8c_p(ptr nocapture noundef %src) #2 {
entry:
  %invariant.gep = getelementptr inbounds i8, ptr %src, i64 127
  %arrayidx = getelementptr inbounds i8, ptr %src, i64 -28
  %0 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %0 to i32
  %arrayidx5 = getelementptr inbounds i8, ptr %src, i64 -30
  %1 = load i8, ptr %arrayidx5, align 1
  %conv6 = zext i8 %1 to i32
  %sub7 = sub nsw i32 %conv, %conv6
  %2 = load i8, ptr %invariant.gep, align 1
  %conv15 = zext i8 %2 to i32
  %arrayidx20 = getelementptr inbounds i8, ptr %src, i64 63
  %3 = load i8, ptr %arrayidx20, align 1
  %conv21 = zext i8 %3 to i32
  %sub22 = sub nsw i32 %conv15, %conv21
  %arrayidx.1 = getelementptr inbounds i8, ptr %src, i64 -27
  %4 = load i8, ptr %arrayidx.1, align 1
  %conv.1 = zext i8 %4 to i32
  %arrayidx5.1 = getelementptr inbounds i8, ptr %src, i64 -31
  %5 = load i8, ptr %arrayidx5.1, align 1
  %conv6.1 = zext i8 %5 to i32
  %sub7.1 = sub nsw i32 %conv.1, %conv6.1
  %mul.1 = shl nsw i32 %sub7.1, 1
  %add8.1 = add nsw i32 %mul.1, %sub7
  %gep.1 = getelementptr inbounds i8, ptr %src, i64 159
  %6 = load i8, ptr %gep.1, align 1
  %conv15.1 = zext i8 %6 to i32
  %arrayidx20.1 = getelementptr inbounds i8, ptr %src, i64 31
  %7 = load i8, ptr %arrayidx20.1, align 1
  %conv21.1 = zext i8 %7 to i32
  %sub22.1 = sub nsw i32 %conv15.1, %conv21.1
  %mul23.1 = shl nsw i32 %sub22.1, 1
  %add24.1 = add nsw i32 %mul23.1, %sub22
  %arrayidx.2 = getelementptr inbounds i8, ptr %src, i64 -26
  %8 = load i8, ptr %arrayidx.2, align 1
  %conv.2 = zext i8 %8 to i32
  %arrayidx5.2 = getelementptr inbounds i8, ptr %src, i64 -32
  %9 = load i8, ptr %arrayidx5.2, align 1
  %conv6.2 = zext i8 %9 to i32
  %sub7.2 = sub nsw i32 %conv.2, %conv6.2
  %mul.2 = mul nsw i32 %sub7.2, 3
  %add8.2 = add nsw i32 %mul.2, %add8.1
  %gep.2 = getelementptr inbounds i8, ptr %src, i64 191
  %10 = load i8, ptr %gep.2, align 1
  %conv15.2 = zext i8 %10 to i32
  %arrayidx20.2 = getelementptr inbounds i8, ptr %src, i64 -1
  %11 = load i8, ptr %arrayidx20.2, align 1
  %conv21.2 = zext i8 %11 to i32
  %sub22.2 = sub nsw i32 %conv15.2, %conv21.2
  %mul23.2 = mul nsw i32 %sub22.2, 3
  %add24.2 = add nsw i32 %mul23.2, %add24.1
  %arrayidx.3 = getelementptr inbounds i8, ptr %src, i64 -25
  %12 = load i8, ptr %arrayidx.3, align 1
  %conv.3 = zext i8 %12 to i32
  %arrayidx5.3 = getelementptr inbounds i8, ptr %src, i64 -33
  %13 = load i8, ptr %arrayidx5.3, align 1
  %conv6.3 = zext i8 %13 to i32
  %sub7.3 = sub nsw i32 %conv.3, %conv6.3
  %mul.3 = shl nsw i32 %sub7.3, 2
  %add8.3 = add nsw i32 %mul.3, %add8.2
  %gep.3 = getelementptr inbounds i8, ptr %src, i64 223
  %14 = load i8, ptr %gep.3, align 1
  %conv15.3 = zext i8 %14 to i32
  %sub22.3 = sub nsw i32 %conv15.3, %conv6.3
  %mul23.3 = shl nsw i32 %sub22.3, 2
  %add24.3 = add nsw i32 %mul23.3, %add24.2
  %add29 = add nuw nsw i32 %conv.3, %conv15.3
  %mul30 = shl nuw nsw i32 %add29, 4
  %mul31 = mul nsw i32 %add8.3, 17
  %add32 = add nsw i32 %mul31, 16
  %shr = ashr i32 %add32, 5
  %mul33 = mul nsw i32 %add24.3, 17
  %add34 = add nsw i32 %mul33, 16
  %shr35 = ashr i32 %add34, 5
  %reass.add = add nsw i32 %shr, %shr35
  %reass.mul = mul nsw i32 %reass.add, -3
  %sub39 = add nsw i32 %reass.mul, 16
  %add40 = add nsw i32 %sub39, %mul30
  %15 = shl nsw i32 %shr35, 1
  %16 = mul nsw i32 %shr35, 3
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue114, %entry
  %index = phi i64 [ 0, %entry ], [ %index.next, %pred.store.continue114 ]
  %.cast = trunc i64 %index to i32
  %17 = mul i32 %shr35, %.cast
  %offset.idx = add i32 %add40, %17
  %offset.idx102 = shl i64 %index, 5
  %18 = icmp ult i64 %index, 8
  %19 = icmp ult i64 %index, 8
  %20 = icmp ult i64 %index, 8
  %21 = icmp ult i64 %index, 8
  br i1 %18, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  %next.gep = getelementptr i8, ptr %src, i64 %offset.idx102
  %22 = add nsw i32 %offset.idx, %shr
  %23 = add nsw i32 %22, %shr
  %24 = add nsw i32 %23, %shr
  %25 = add nsw i32 %24, %shr
  %26 = add nsw i32 %25, %shr
  %27 = add nsw i32 %26, %shr
  %28 = add nsw i32 %27, %shr
  %29 = insertelement <8 x i32> poison, i32 %offset.idx, i64 0
  %30 = insertelement <8 x i32> %29, i32 %22, i64 1
  %31 = insertelement <8 x i32> %30, i32 %23, i64 2
  %32 = insertelement <8 x i32> %31, i32 %24, i64 3
  %33 = insertelement <8 x i32> %32, i32 %25, i64 4
  %34 = insertelement <8 x i32> %33, i32 %26, i64 5
  %35 = insertelement <8 x i32> %34, i32 %27, i64 6
  %36 = insertelement <8 x i32> %35, i32 %28, i64 7
  %37 = ashr <8 x i32> %36, <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  %38 = icmp sgt <8 x i32> %37, zeroinitializer
  %39 = sext <8 x i1> %38 to <8 x i32>
  %40 = icmp ult <8 x i32> %37, <i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256>
  %41 = select <8 x i1> %40, <8 x i32> %37, <8 x i32> %39
  %42 = trunc <8 x i32> %41 to <8 x i8>
  store <8 x i8> %42, ptr %next.gep, align 1
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  br i1 %19, label %pred.store.if109, label %pred.store.continue110

pred.store.if109:                                 ; preds = %pred.store.continue
  %43 = or disjoint i64 %offset.idx102, 32
  %next.gep103 = getelementptr i8, ptr %src, i64 %43
  %44 = add i32 %offset.idx, %shr35
  %45 = add nsw i32 %44, %shr
  %46 = add nsw i32 %45, %shr
  %47 = add nsw i32 %46, %shr
  %48 = add nsw i32 %47, %shr
  %49 = add nsw i32 %48, %shr
  %50 = add nsw i32 %49, %shr
  %51 = add nsw i32 %50, %shr
  %52 = insertelement <8 x i32> poison, i32 %44, i64 0
  %53 = insertelement <8 x i32> %52, i32 %45, i64 1
  %54 = insertelement <8 x i32> %53, i32 %46, i64 2
  %55 = insertelement <8 x i32> %54, i32 %47, i64 3
  %56 = insertelement <8 x i32> %55, i32 %48, i64 4
  %57 = insertelement <8 x i32> %56, i32 %49, i64 5
  %58 = insertelement <8 x i32> %57, i32 %50, i64 6
  %59 = insertelement <8 x i32> %58, i32 %51, i64 7
  %60 = ashr <8 x i32> %59, <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  %61 = icmp sgt <8 x i32> %60, zeroinitializer
  %62 = sext <8 x i1> %61 to <8 x i32>
  %63 = icmp ult <8 x i32> %60, <i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256>
  %64 = select <8 x i1> %63, <8 x i32> %60, <8 x i32> %62
  %65 = trunc <8 x i32> %64 to <8 x i8>
  store <8 x i8> %65, ptr %next.gep103, align 1
  br label %pred.store.continue110

pred.store.continue110:                           ; preds = %pred.store.if109, %pred.store.continue
  br i1 %20, label %pred.store.if111, label %pred.store.continue112

pred.store.if111:                                 ; preds = %pred.store.continue110
  %66 = or disjoint i64 %offset.idx102, 64
  %next.gep104 = getelementptr i8, ptr %src, i64 %66
  %67 = add i32 %offset.idx, %15
  %68 = add nsw i32 %67, %shr
  %69 = add nsw i32 %68, %shr
  %70 = add nsw i32 %69, %shr
  %71 = add nsw i32 %70, %shr
  %72 = add nsw i32 %71, %shr
  %73 = add nsw i32 %72, %shr
  %74 = add nsw i32 %73, %shr
  %75 = insertelement <8 x i32> poison, i32 %67, i64 0
  %76 = insertelement <8 x i32> %75, i32 %68, i64 1
  %77 = insertelement <8 x i32> %76, i32 %69, i64 2
  %78 = insertelement <8 x i32> %77, i32 %70, i64 3
  %79 = insertelement <8 x i32> %78, i32 %71, i64 4
  %80 = insertelement <8 x i32> %79, i32 %72, i64 5
  %81 = insertelement <8 x i32> %80, i32 %73, i64 6
  %82 = insertelement <8 x i32> %81, i32 %74, i64 7
  %83 = ashr <8 x i32> %82, <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  %84 = icmp sgt <8 x i32> %83, zeroinitializer
  %85 = sext <8 x i1> %84 to <8 x i32>
  %86 = icmp ult <8 x i32> %83, <i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256>
  %87 = select <8 x i1> %86, <8 x i32> %83, <8 x i32> %85
  %88 = trunc <8 x i32> %87 to <8 x i8>
  store <8 x i8> %88, ptr %next.gep104, align 1
  br label %pred.store.continue112

pred.store.continue112:                           ; preds = %pred.store.if111, %pred.store.continue110
  br i1 %21, label %pred.store.if113, label %pred.store.continue114

pred.store.if113:                                 ; preds = %pred.store.continue112
  %89 = or disjoint i64 %offset.idx102, 96
  %next.gep105 = getelementptr i8, ptr %src, i64 %89
  %90 = add i32 %offset.idx, %16
  %91 = add nsw i32 %90, %shr
  %92 = add nsw i32 %91, %shr
  %93 = add nsw i32 %92, %shr
  %94 = add nsw i32 %93, %shr
  %95 = add nsw i32 %94, %shr
  %96 = add nsw i32 %95, %shr
  %97 = add nsw i32 %96, %shr
  %98 = insertelement <8 x i32> poison, i32 %90, i64 0
  %99 = insertelement <8 x i32> %98, i32 %91, i64 1
  %100 = insertelement <8 x i32> %99, i32 %92, i64 2
  %101 = insertelement <8 x i32> %100, i32 %93, i64 3
  %102 = insertelement <8 x i32> %101, i32 %94, i64 4
  %103 = insertelement <8 x i32> %102, i32 %95, i64 5
  %104 = insertelement <8 x i32> %103, i32 %96, i64 6
  %105 = insertelement <8 x i32> %104, i32 %97, i64 7
  %106 = ashr <8 x i32> %105, <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  %107 = icmp sgt <8 x i32> %106, zeroinitializer
  %108 = sext <8 x i1> %107 to <8 x i32>
  %109 = icmp ult <8 x i32> %106, <i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256>
  %110 = select <8 x i1> %109, <8 x i32> %106, <8 x i32> %108
  %111 = trunc <8 x i32> %110 to <8 x i8>
  store <8 x i8> %111, ptr %next.gep105, align 1
  br label %pred.store.continue114

pred.store.continue114:                           ; preds = %pred.store.if113, %pred.store.continue112
  %index.next = add i64 %index, 4
  %112 = icmp eq i64 %index.next, 8
  br i1 %112, label %for.cond.cleanup44, label %vector.body, !llvm.loop !8

for.cond.cleanup44:                               ; preds = %pred.store.continue114
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @predict_8x8c_dc_left(ptr nocapture noundef %src) #1 {
entry:
  %arrayidx = getelementptr i8, ptr %src, i64 -1
  %0 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %0 to i32
  %arrayidx5 = getelementptr inbounds i8, ptr %src, i64 127
  %1 = load i8, ptr %arrayidx5, align 1
  %conv6 = zext i8 %1 to i32
  %2 = getelementptr i8, ptr %src, i64 32
  %arrayidx.1 = getelementptr i8, ptr %src, i64 31
  %3 = load i8, ptr %arrayidx.1, align 1
  %conv.1 = zext i8 %3 to i32
  %add.1 = add nuw nsw i32 %conv, %conv.1
  %arrayidx5.1 = getelementptr i8, ptr %src, i64 159
  %4 = load i8, ptr %arrayidx5.1, align 1
  %conv6.1 = zext i8 %4 to i32
  %add7.1 = add nuw nsw i32 %conv6, %conv6.1
  %arrayidx.2 = getelementptr i8, ptr %src, i64 63
  %5 = load i8, ptr %arrayidx.2, align 1
  %conv.2 = zext i8 %5 to i32
  %add.2 = add nuw nsw i32 %add.1, %conv.2
  %arrayidx5.2 = getelementptr i8, ptr %src, i64 191
  %6 = load i8, ptr %arrayidx5.2, align 1
  %conv6.2 = zext i8 %6 to i32
  %add7.2 = add nuw nsw i32 %add7.1, %conv6.2
  %arrayidx.3 = getelementptr i8, ptr %src, i64 95
  %7 = load i8, ptr %arrayidx.3, align 1
  %conv.3 = zext i8 %7 to i32
  %add.3 = add nuw nsw i32 %add.2, %conv.3
  %arrayidx5.3 = getelementptr i8, ptr %src, i64 223
  %8 = load i8, ptr %arrayidx5.3, align 1
  %conv6.3 = zext i8 %8 to i32
  %add7.3 = add nuw nsw i32 %add7.2, %conv6.3
  %add8 = add nuw nsw i32 %add.3, 2
  %shr = lshr i32 %add8, 2
  %mul9 = mul nuw i32 %shr, 16843009
  %add10 = add nuw nsw i32 %add7.3, 2
  %shr11 = lshr i32 %add10, 2
  store i32 %mul9, ptr %src, align 4
  %add.ptr19 = getelementptr inbounds i8, ptr %src, i64 4
  store i32 %mul9, ptr %add.ptr19, align 4
  store i32 %mul9, ptr %2, align 4
  %add.ptr19.1 = getelementptr i8, ptr %src, i64 36
  store i32 %mul9, ptr %add.ptr19.1, align 4
  %add.ptr20.1 = getelementptr i8, ptr %src, i64 64
  store i32 %mul9, ptr %add.ptr20.1, align 4
  %add.ptr19.2 = getelementptr i8, ptr %src, i64 68
  store i32 %mul9, ptr %add.ptr19.2, align 4
  %add.ptr20.2 = getelementptr i8, ptr %src, i64 96
  store i32 %mul9, ptr %add.ptr20.2, align 4
  %add.ptr19.3 = getelementptr i8, ptr %src, i64 100
  store i32 %mul9, ptr %add.ptr19.3, align 4
  %add.ptr20.3 = getelementptr i8, ptr %src, i64 128
  %mul12 = mul nuw i32 %shr11, 16843009
  store i32 %mul12, ptr %add.ptr20.3, align 4
  %add.ptr31 = getelementptr i8, ptr %src, i64 132
  store i32 %mul12, ptr %add.ptr31, align 4
  %add.ptr32 = getelementptr i8, ptr %src, i64 160
  store i32 %mul12, ptr %add.ptr32, align 4
  %add.ptr31.1 = getelementptr i8, ptr %src, i64 164
  store i32 %mul12, ptr %add.ptr31.1, align 4
  %add.ptr32.1 = getelementptr i8, ptr %src, i64 192
  store i32 %mul12, ptr %add.ptr32.1, align 4
  %add.ptr31.2 = getelementptr i8, ptr %src, i64 196
  store i32 %mul12, ptr %add.ptr31.2, align 4
  %add.ptr32.2 = getelementptr i8, ptr %src, i64 224
  store i32 %mul12, ptr %add.ptr32.2, align 4
  %add.ptr31.3 = getelementptr i8, ptr %src, i64 228
  store i32 %mul12, ptr %add.ptr31.3, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @predict_8x8c_dc_top(ptr nocapture noundef %src) #1 {
entry:
  %arrayidx = getelementptr inbounds i8, ptr %src, i64 -32
  %0 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %0 to i32
  %arrayidx4 = getelementptr inbounds i8, ptr %src, i64 -28
  %1 = load i8, ptr %arrayidx4, align 1
  %conv5 = zext i8 %1 to i32
  %arrayidx.1 = getelementptr inbounds i8, ptr %src, i64 -31
  %2 = load i8, ptr %arrayidx.1, align 1
  %conv.1 = zext i8 %2 to i32
  %add.1 = add nuw nsw i32 %conv, %conv.1
  %arrayidx4.1 = getelementptr inbounds i8, ptr %src, i64 -27
  %3 = load i8, ptr %arrayidx4.1, align 1
  %conv5.1 = zext i8 %3 to i32
  %add6.1 = add nuw nsw i32 %conv5, %conv5.1
  %arrayidx.2 = getelementptr inbounds i8, ptr %src, i64 -30
  %4 = load i8, ptr %arrayidx.2, align 1
  %conv.2 = zext i8 %4 to i32
  %add.2 = add nuw nsw i32 %add.1, %conv.2
  %arrayidx4.2 = getelementptr inbounds i8, ptr %src, i64 -26
  %5 = load i8, ptr %arrayidx4.2, align 1
  %conv5.2 = zext i8 %5 to i32
  %add6.2 = add nuw nsw i32 %add6.1, %conv5.2
  %arrayidx.3 = getelementptr inbounds i8, ptr %src, i64 -29
  %6 = load i8, ptr %arrayidx.3, align 1
  %conv.3 = zext i8 %6 to i32
  %add.3 = add nuw nsw i32 %add.2, %conv.3
  %arrayidx4.3 = getelementptr inbounds i8, ptr %src, i64 -25
  %7 = load i8, ptr %arrayidx4.3, align 1
  %conv5.3 = zext i8 %7 to i32
  %add6.3 = add nuw nsw i32 %add6.2, %conv5.3
  %add7 = add nuw nsw i32 %add.3, 2
  %shr = lshr i32 %add7, 2
  %mul = mul nuw i32 %shr, 16843009
  %add8 = add nuw nsw i32 %add6.3, 2
  %shr9 = lshr i32 %add8, 2
  %mul10 = mul nuw i32 %shr9, 16843009
  store i32 %mul, ptr %src, align 4
  %add.ptr16 = getelementptr inbounds i8, ptr %src, i64 4
  store i32 %mul10, ptr %add.ptr16, align 4
  %add.ptr17 = getelementptr inbounds i8, ptr %src, i64 32
  store i32 %mul, ptr %add.ptr17, align 4
  %add.ptr16.1 = getelementptr inbounds i8, ptr %src, i64 36
  store i32 %mul10, ptr %add.ptr16.1, align 4
  %add.ptr17.1 = getelementptr inbounds i8, ptr %src, i64 64
  store i32 %mul, ptr %add.ptr17.1, align 4
  %add.ptr16.2 = getelementptr inbounds i8, ptr %src, i64 68
  store i32 %mul10, ptr %add.ptr16.2, align 4
  %add.ptr17.2 = getelementptr inbounds i8, ptr %src, i64 96
  store i32 %mul, ptr %add.ptr17.2, align 4
  %add.ptr16.3 = getelementptr inbounds i8, ptr %src, i64 100
  store i32 %mul10, ptr %add.ptr16.3, align 4
  %add.ptr17.3 = getelementptr inbounds i8, ptr %src, i64 128
  store i32 %mul, ptr %add.ptr17.3, align 4
  %add.ptr16.4 = getelementptr inbounds i8, ptr %src, i64 132
  store i32 %mul10, ptr %add.ptr16.4, align 4
  %add.ptr17.4 = getelementptr inbounds i8, ptr %src, i64 160
  store i32 %mul, ptr %add.ptr17.4, align 4
  %add.ptr16.5 = getelementptr inbounds i8, ptr %src, i64 164
  store i32 %mul10, ptr %add.ptr16.5, align 4
  %add.ptr17.5 = getelementptr inbounds i8, ptr %src, i64 192
  store i32 %mul, ptr %add.ptr17.5, align 4
  %add.ptr16.6 = getelementptr inbounds i8, ptr %src, i64 196
  store i32 %mul10, ptr %add.ptr16.6, align 4
  %add.ptr17.6 = getelementptr inbounds i8, ptr %src, i64 224
  store i32 %mul, ptr %add.ptr17.6, align 4
  %add.ptr16.7 = getelementptr inbounds i8, ptr %src, i64 228
  store i32 %mul10, ptr %add.ptr16.7, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @predict_8x8c_dc_128(ptr nocapture noundef writeonly %src) #0 {
entry:
  store i32 -2139062144, ptr %src, align 4
  %add.ptr1 = getelementptr inbounds i8, ptr %src, i64 4
  store i32 -2139062144, ptr %add.ptr1, align 4
  %add.ptr2 = getelementptr inbounds i8, ptr %src, i64 32
  store i32 -2139062144, ptr %add.ptr2, align 4
  %add.ptr1.1 = getelementptr inbounds i8, ptr %src, i64 36
  store i32 -2139062144, ptr %add.ptr1.1, align 4
  %add.ptr2.1 = getelementptr inbounds i8, ptr %src, i64 64
  store i32 -2139062144, ptr %add.ptr2.1, align 4
  %add.ptr1.2 = getelementptr inbounds i8, ptr %src, i64 68
  store i32 -2139062144, ptr %add.ptr1.2, align 4
  %add.ptr2.2 = getelementptr inbounds i8, ptr %src, i64 96
  store i32 -2139062144, ptr %add.ptr2.2, align 4
  %add.ptr1.3 = getelementptr inbounds i8, ptr %src, i64 100
  store i32 -2139062144, ptr %add.ptr1.3, align 4
  %add.ptr2.3 = getelementptr inbounds i8, ptr %src, i64 128
  store i32 -2139062144, ptr %add.ptr2.3, align 4
  %add.ptr1.4 = getelementptr inbounds i8, ptr %src, i64 132
  store i32 -2139062144, ptr %add.ptr1.4, align 4
  %add.ptr2.4 = getelementptr inbounds i8, ptr %src, i64 160
  store i32 -2139062144, ptr %add.ptr2.4, align 4
  %add.ptr1.5 = getelementptr inbounds i8, ptr %src, i64 164
  store i32 -2139062144, ptr %add.ptr1.5, align 4
  %add.ptr2.5 = getelementptr inbounds i8, ptr %src, i64 192
  store i32 -2139062144, ptr %add.ptr2.5, align 4
  %add.ptr1.6 = getelementptr inbounds i8, ptr %src, i64 196
  store i32 -2139062144, ptr %add.ptr1.6, align 4
  %add.ptr2.6 = getelementptr inbounds i8, ptr %src, i64 224
  store i32 -2139062144, ptr %add.ptr2.6, align 4
  %add.ptr1.7 = getelementptr inbounds i8, ptr %src, i64 228
  store i32 -2139062144, ptr %add.ptr1.7, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @x264_predict_8x8_init(i32 noundef %cpu, ptr nocapture noundef writeonly %pf, ptr nocapture noundef writeonly %predict_filter) local_unnamed_addr #0 {
entry:
  store ptr @predict_8x8_v, ptr %pf, align 8
  %arrayidx1 = getelementptr inbounds i8, ptr %pf, i64 8
  store ptr @predict_8x8_h, ptr %arrayidx1, align 8
  %arrayidx2 = getelementptr inbounds i8, ptr %pf, i64 16
  store ptr @predict_8x8_dc, ptr %arrayidx2, align 8
  %arrayidx3 = getelementptr inbounds i8, ptr %pf, i64 24
  store ptr @predict_8x8_ddl, ptr %arrayidx3, align 8
  %arrayidx4 = getelementptr inbounds i8, ptr %pf, i64 32
  store ptr @predict_8x8_ddr, ptr %arrayidx4, align 8
  %arrayidx5 = getelementptr inbounds i8, ptr %pf, i64 40
  store ptr @predict_8x8_vr, ptr %arrayidx5, align 8
  %arrayidx6 = getelementptr inbounds i8, ptr %pf, i64 48
  store ptr @predict_8x8_hd, ptr %arrayidx6, align 8
  %arrayidx7 = getelementptr inbounds i8, ptr %pf, i64 56
  store ptr @predict_8x8_vl, ptr %arrayidx7, align 8
  %arrayidx8 = getelementptr inbounds i8, ptr %pf, i64 64
  store ptr @predict_8x8_hu, ptr %arrayidx8, align 8
  %arrayidx9 = getelementptr inbounds i8, ptr %pf, i64 72
  store ptr @predict_8x8_dc_left, ptr %arrayidx9, align 8
  %arrayidx10 = getelementptr inbounds i8, ptr %pf, i64 80
  store ptr @predict_8x8_dc_top, ptr %arrayidx10, align 8
  %arrayidx11 = getelementptr inbounds i8, ptr %pf, i64 88
  store ptr @predict_8x8_dc_128, ptr %arrayidx11, align 8
  store ptr @predict_8x8_filter, ptr %predict_filter, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @predict_8x8_v(ptr nocapture noundef writeonly %src, ptr nocapture noundef readonly %edge) #1 {
entry:
  %add.ptr = getelementptr inbounds i8, ptr %edge, i64 16
  %0 = load i64, ptr %add.ptr, align 8
  store i64 %0, ptr %src, align 8
  %add.ptr1.1 = getelementptr inbounds i8, ptr %src, i64 32
  store i64 %0, ptr %add.ptr1.1, align 8
  %add.ptr1.2 = getelementptr inbounds i8, ptr %src, i64 64
  store i64 %0, ptr %add.ptr1.2, align 8
  %add.ptr1.3 = getelementptr inbounds i8, ptr %src, i64 96
  store i64 %0, ptr %add.ptr1.3, align 8
  %add.ptr1.4 = getelementptr inbounds i8, ptr %src, i64 128
  store i64 %0, ptr %add.ptr1.4, align 8
  %add.ptr1.5 = getelementptr inbounds i8, ptr %src, i64 160
  store i64 %0, ptr %add.ptr1.5, align 8
  %add.ptr1.6 = getelementptr inbounds i8, ptr %src, i64 192
  store i64 %0, ptr %add.ptr1.6, align 8
  %add.ptr1.7 = getelementptr inbounds i8, ptr %src, i64 224
  store i64 %0, ptr %add.ptr1.7, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @predict_8x8_h(ptr nocapture noundef writeonly %src, ptr nocapture noundef readonly %edge) #1 {
entry:
  %arrayidx = getelementptr inbounds i8, ptr %edge, i64 14
  %0 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %0 to i32
  %arrayidx1 = getelementptr inbounds i8, ptr %edge, i64 13
  %1 = load i8, ptr %arrayidx1, align 1
  %conv2 = zext i8 %1 to i32
  %arrayidx3 = getelementptr inbounds i8, ptr %edge, i64 12
  %2 = load i8, ptr %arrayidx3, align 1
  %conv4 = zext i8 %2 to i32
  %arrayidx5 = getelementptr inbounds i8, ptr %edge, i64 11
  %3 = load i8, ptr %arrayidx5, align 1
  %conv6 = zext i8 %3 to i32
  %arrayidx7 = getelementptr inbounds i8, ptr %edge, i64 10
  %4 = load i8, ptr %arrayidx7, align 1
  %conv8 = zext i8 %4 to i32
  %arrayidx9 = getelementptr inbounds i8, ptr %edge, i64 9
  %5 = load i8, ptr %arrayidx9, align 1
  %conv10 = zext i8 %5 to i32
  %arrayidx11 = getelementptr inbounds i8, ptr %edge, i64 8
  %6 = load i8, ptr %arrayidx11, align 1
  %conv12 = zext i8 %6 to i32
  %arrayidx13 = getelementptr inbounds i8, ptr %edge, i64 7
  %7 = load i8, ptr %arrayidx13, align 1
  %conv14 = zext i8 %7 to i32
  %mul = mul nuw i32 %conv, 16843009
  %add.ptr15 = getelementptr inbounds i8, ptr %src, i64 4
  store i32 %mul, ptr %add.ptr15, align 4
  store i32 %mul, ptr %src, align 4
  %mul18 = mul nuw i32 %conv2, 16843009
  %add.ptr19 = getelementptr inbounds i8, ptr %src, i64 32
  %add.ptr20 = getelementptr inbounds i8, ptr %src, i64 36
  store i32 %mul18, ptr %add.ptr20, align 4
  store i32 %mul18, ptr %add.ptr19, align 4
  %mul23 = mul nuw i32 %conv4, 16843009
  %add.ptr24 = getelementptr inbounds i8, ptr %src, i64 64
  %add.ptr25 = getelementptr inbounds i8, ptr %src, i64 68
  store i32 %mul23, ptr %add.ptr25, align 4
  store i32 %mul23, ptr %add.ptr24, align 4
  %mul28 = mul nuw i32 %conv6, 16843009
  %add.ptr29 = getelementptr inbounds i8, ptr %src, i64 96
  %add.ptr30 = getelementptr inbounds i8, ptr %src, i64 100
  store i32 %mul28, ptr %add.ptr30, align 4
  store i32 %mul28, ptr %add.ptr29, align 4
  %mul33 = mul nuw i32 %conv8, 16843009
  %add.ptr34 = getelementptr inbounds i8, ptr %src, i64 128
  %add.ptr35 = getelementptr inbounds i8, ptr %src, i64 132
  store i32 %mul33, ptr %add.ptr35, align 4
  store i32 %mul33, ptr %add.ptr34, align 4
  %mul38 = mul nuw i32 %conv10, 16843009
  %add.ptr39 = getelementptr inbounds i8, ptr %src, i64 160
  %add.ptr40 = getelementptr inbounds i8, ptr %src, i64 164
  store i32 %mul38, ptr %add.ptr40, align 4
  store i32 %mul38, ptr %add.ptr39, align 4
  %mul43 = mul nuw i32 %conv12, 16843009
  %add.ptr44 = getelementptr inbounds i8, ptr %src, i64 192
  %add.ptr45 = getelementptr inbounds i8, ptr %src, i64 196
  store i32 %mul43, ptr %add.ptr45, align 4
  store i32 %mul43, ptr %add.ptr44, align 4
  %mul48 = mul nuw i32 %conv14, 16843009
  %add.ptr49 = getelementptr inbounds i8, ptr %src, i64 224
  %add.ptr50 = getelementptr inbounds i8, ptr %src, i64 228
  store i32 %mul48, ptr %add.ptr50, align 4
  store i32 %mul48, ptr %add.ptr49, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @predict_8x8_dc(ptr nocapture noundef writeonly %src, ptr nocapture noundef readonly %edge) #1 {
entry:
  %arrayidx = getelementptr inbounds i8, ptr %edge, i64 14
  %0 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %0 to i32
  %arrayidx1 = getelementptr inbounds i8, ptr %edge, i64 13
  %1 = load i8, ptr %arrayidx1, align 1
  %conv2 = zext i8 %1 to i32
  %arrayidx3 = getelementptr inbounds i8, ptr %edge, i64 12
  %2 = load i8, ptr %arrayidx3, align 1
  %conv4 = zext i8 %2 to i32
  %arrayidx5 = getelementptr inbounds i8, ptr %edge, i64 11
  %3 = load i8, ptr %arrayidx5, align 1
  %conv6 = zext i8 %3 to i32
  %arrayidx7 = getelementptr inbounds i8, ptr %edge, i64 10
  %4 = load i8, ptr %arrayidx7, align 1
  %conv8 = zext i8 %4 to i32
  %arrayidx9 = getelementptr inbounds i8, ptr %edge, i64 9
  %5 = load i8, ptr %arrayidx9, align 1
  %conv10 = zext i8 %5 to i32
  %arrayidx11 = getelementptr inbounds i8, ptr %edge, i64 8
  %6 = load i8, ptr %arrayidx11, align 1
  %conv12 = zext i8 %6 to i32
  %arrayidx13 = getelementptr inbounds i8, ptr %edge, i64 7
  %7 = load i8, ptr %arrayidx13, align 1
  %conv14 = zext i8 %7 to i32
  %arrayidx15 = getelementptr inbounds i8, ptr %edge, i64 16
  %8 = load i8, ptr %arrayidx15, align 1
  %conv16 = zext i8 %8 to i32
  %arrayidx17 = getelementptr inbounds i8, ptr %edge, i64 17
  %9 = load i8, ptr %arrayidx17, align 1
  %conv18 = zext i8 %9 to i32
  %arrayidx19 = getelementptr inbounds i8, ptr %edge, i64 18
  %10 = load i8, ptr %arrayidx19, align 1
  %conv20 = zext i8 %10 to i32
  %arrayidx21 = getelementptr inbounds i8, ptr %edge, i64 19
  %11 = load i8, ptr %arrayidx21, align 1
  %conv22 = zext i8 %11 to i32
  %arrayidx23 = getelementptr inbounds i8, ptr %edge, i64 20
  %12 = load i8, ptr %arrayidx23, align 1
  %conv24 = zext i8 %12 to i32
  %arrayidx25 = getelementptr inbounds i8, ptr %edge, i64 21
  %13 = load i8, ptr %arrayidx25, align 1
  %conv26 = zext i8 %13 to i32
  %arrayidx27 = getelementptr inbounds i8, ptr %edge, i64 22
  %14 = load i8, ptr %arrayidx27, align 1
  %conv28 = zext i8 %14 to i32
  %arrayidx29 = getelementptr inbounds i8, ptr %edge, i64 23
  %15 = load i8, ptr %arrayidx29, align 1
  %conv30 = zext i8 %15 to i32
  %add = add nuw nsw i32 %conv, 8
  %add31 = add nuw nsw i32 %add, %conv2
  %add32 = add nuw nsw i32 %add31, %conv4
  %add33 = add nuw nsw i32 %add32, %conv6
  %add34 = add nuw nsw i32 %add33, %conv8
  %add35 = add nuw nsw i32 %add34, %conv10
  %add36 = add nuw nsw i32 %add35, %conv12
  %add37 = add nuw nsw i32 %add36, %conv14
  %add38 = add nuw nsw i32 %add37, %conv16
  %add39 = add nuw nsw i32 %add38, %conv18
  %add40 = add nuw nsw i32 %add39, %conv20
  %add41 = add nuw nsw i32 %add40, %conv22
  %add42 = add nuw nsw i32 %add41, %conv24
  %add43 = add nuw nsw i32 %add42, %conv26
  %add44 = add nuw nsw i32 %add43, %conv28
  %add45 = add nuw nsw i32 %add44, %conv30
  %shr = lshr i32 %add45, 4
  %mul = mul nuw nsw i32 %shr, 16843009
  store i32 %mul, ptr %src, align 4
  %add.ptr47 = getelementptr inbounds i8, ptr %src, i64 4
  store i32 %mul, ptr %add.ptr47, align 4
  %add.ptr48 = getelementptr inbounds i8, ptr %src, i64 32
  store i32 %mul, ptr %add.ptr48, align 4
  %add.ptr47.1 = getelementptr inbounds i8, ptr %src, i64 36
  store i32 %mul, ptr %add.ptr47.1, align 4
  %add.ptr48.1 = getelementptr inbounds i8, ptr %src, i64 64
  store i32 %mul, ptr %add.ptr48.1, align 4
  %add.ptr47.2 = getelementptr inbounds i8, ptr %src, i64 68
  store i32 %mul, ptr %add.ptr47.2, align 4
  %add.ptr48.2 = getelementptr inbounds i8, ptr %src, i64 96
  store i32 %mul, ptr %add.ptr48.2, align 4
  %add.ptr47.3 = getelementptr inbounds i8, ptr %src, i64 100
  store i32 %mul, ptr %add.ptr47.3, align 4
  %add.ptr48.3 = getelementptr inbounds i8, ptr %src, i64 128
  store i32 %mul, ptr %add.ptr48.3, align 4
  %add.ptr47.4 = getelementptr inbounds i8, ptr %src, i64 132
  store i32 %mul, ptr %add.ptr47.4, align 4
  %add.ptr48.4 = getelementptr inbounds i8, ptr %src, i64 160
  store i32 %mul, ptr %add.ptr48.4, align 4
  %add.ptr47.5 = getelementptr inbounds i8, ptr %src, i64 164
  store i32 %mul, ptr %add.ptr47.5, align 4
  %add.ptr48.5 = getelementptr inbounds i8, ptr %src, i64 192
  store i32 %mul, ptr %add.ptr48.5, align 4
  %add.ptr47.6 = getelementptr inbounds i8, ptr %src, i64 196
  store i32 %mul, ptr %add.ptr47.6, align 4
  %add.ptr48.6 = getelementptr inbounds i8, ptr %src, i64 224
  store i32 %mul, ptr %add.ptr48.6, align 4
  %add.ptr47.7 = getelementptr inbounds i8, ptr %src, i64 228
  store i32 %mul, ptr %add.ptr47.7, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @predict_8x8_ddl(ptr noundef writeonly %src, ptr nocapture noundef readonly %edge) #1 {
entry:
  %arrayidx = getelementptr inbounds i8, ptr %edge, i64 16
  %0 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %0 to i32
  %arrayidx1 = getelementptr inbounds i8, ptr %edge, i64 17
  %1 = load i8, ptr %arrayidx1, align 1
  %conv2 = zext i8 %1 to i32
  %arrayidx3 = getelementptr inbounds i8, ptr %edge, i64 18
  %2 = load i8, ptr %arrayidx3, align 1
  %conv4 = zext i8 %2 to i32
  %arrayidx5 = getelementptr inbounds i8, ptr %edge, i64 19
  %3 = load i8, ptr %arrayidx5, align 1
  %conv6 = zext i8 %3 to i32
  %arrayidx7 = getelementptr inbounds i8, ptr %edge, i64 20
  %arrayidx15 = getelementptr inbounds i8, ptr %edge, i64 24
  %arrayidx23 = getelementptr inbounds i8, ptr %edge, i64 28
  %4 = load i8, ptr %arrayidx23, align 1
  %conv24 = zext i8 %4 to i32
  %arrayidx25 = getelementptr inbounds i8, ptr %edge, i64 29
  %5 = load i8, ptr %arrayidx25, align 1
  %conv26 = zext i8 %5 to i32
  %arrayidx27 = getelementptr inbounds i8, ptr %edge, i64 30
  %6 = load i8, ptr %arrayidx27, align 1
  %conv28 = zext i8 %6 to i32
  %arrayidx29 = getelementptr inbounds i8, ptr %edge, i64 31
  %7 = load i8, ptr %arrayidx29, align 1
  %conv30 = zext i8 %7 to i32
  %mul = shl nuw nsw i32 %conv2, 1
  %add = add nuw nsw i32 %conv4, 2
  %add31 = add nuw nsw i32 %add, %conv
  %add32 = add nuw nsw i32 %add31, %mul
  %shr = lshr i32 %add32, 2
  %conv33 = trunc nuw i32 %shr to i8
  %mul35 = shl nuw nsw i32 %conv4, 1
  %add36 = add nuw nsw i32 %conv6, 2
  %add37 = add nuw nsw i32 %add36, %conv2
  %add38 = add nuw nsw i32 %add37, %mul35
  %shr39 = lshr i32 %add38, 2
  %conv40 = trunc nuw i32 %shr39 to i8
  %arrayidx41 = getelementptr inbounds i8, ptr %src, i64 1
  %arrayidx42 = getelementptr inbounds i8, ptr %src, i64 32
  %mul43 = shl nuw nsw i32 %conv6, 1
  %add45 = add nuw nsw i32 %add, %mul43
  %arrayidx49 = getelementptr inbounds i8, ptr %src, i64 2
  %arrayidx50 = getelementptr inbounds i8, ptr %src, i64 33
  %arrayidx51 = getelementptr inbounds i8, ptr %src, i64 64
  %arrayidx58 = getelementptr inbounds i8, ptr %src, i64 3
  %arrayidx59 = getelementptr inbounds i8, ptr %src, i64 34
  %arrayidx60 = getelementptr inbounds i8, ptr %src, i64 65
  %arrayidx61 = getelementptr inbounds i8, ptr %src, i64 96
  %arrayidx68 = getelementptr inbounds i8, ptr %src, i64 4
  %arrayidx69 = getelementptr inbounds i8, ptr %src, i64 35
  %arrayidx70 = getelementptr inbounds i8, ptr %src, i64 66
  %arrayidx71 = getelementptr inbounds i8, ptr %src, i64 97
  %arrayidx72 = getelementptr inbounds i8, ptr %src, i64 128
  %arrayidx84 = getelementptr inbounds i8, ptr %src, i64 160
  %arrayidx97 = getelementptr inbounds i8, ptr %src, i64 192
  %8 = load <4 x i8>, ptr %arrayidx7, align 1
  %9 = zext <4 x i8> %8 to <4 x i16>
  %10 = extractelement <4 x i16> %9, i64 0
  %11 = zext nneg i16 %10 to i32
  %add46 = add nuw nsw i32 %add45, %11
  %shr47 = lshr i32 %add46, 2
  %conv48 = trunc nuw i32 %shr47 to i8
  %mul52 = shl nuw nsw i32 %11, 1
  %add54 = add nuw nsw i32 %add36, %mul52
  %12 = extractelement <4 x i16> %9, i64 1
  %13 = zext nneg i16 %12 to i32
  %add55 = add nuw nsw i32 %add54, %13
  %shr56 = lshr i32 %add55, 2
  %conv57 = trunc nuw i32 %shr56 to i8
  %14 = add nuw nsw <4 x i16> %9, <i16 2, i16 2, i16 2, i16 2>
  %arrayidx111 = getelementptr inbounds i8, ptr %src, i64 224
  %arrayidx118 = getelementptr inbounds i8, ptr %src, i64 39
  %arrayidx119 = getelementptr inbounds i8, ptr %src, i64 70
  %arrayidx120 = getelementptr inbounds i8, ptr %src, i64 101
  %arrayidx121 = getelementptr inbounds i8, ptr %src, i64 132
  %arrayidx131 = getelementptr inbounds i8, ptr %src, i64 71
  %arrayidx132 = getelementptr inbounds i8, ptr %src, i64 102
  %arrayidx134 = getelementptr inbounds i8, ptr %src, i64 164
  %arrayidx143 = getelementptr inbounds i8, ptr %src, i64 103
  %arrayidx145 = getelementptr inbounds i8, ptr %src, i64 165
  %arrayidx146 = getelementptr inbounds i8, ptr %src, i64 196
  %15 = load <4 x i8>, ptr %arrayidx15, align 1
  %16 = zext <4 x i8> %15 to <4 x i16>
  store i8 %conv33, ptr %src, align 1
  store i8 %conv40, ptr %arrayidx41, align 1
  store i8 %conv40, ptr %arrayidx42, align 1
  store i8 %conv48, ptr %arrayidx49, align 1
  store i8 %conv48, ptr %arrayidx50, align 1
  store i8 %conv48, ptr %arrayidx51, align 1
  store i8 %conv57, ptr %arrayidx58, align 1
  store i8 %conv57, ptr %arrayidx59, align 1
  store i8 %conv57, ptr %arrayidx60, align 1
  store i8 %conv57, ptr %arrayidx61, align 1
  %17 = extractelement <4 x i8> %15, i64 0
  %18 = zext i8 %17 to i16
  %19 = insertelement <4 x i16> %9, i16 %18, i64 0
  %20 = shl nuw nsw <4 x i16> %19, <i16 1, i16 1, i16 1, i16 1>
  %21 = shufflevector <4 x i16> %20, <4 x i16> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %22 = add nuw nsw <4 x i16> %14, %21
  %23 = shufflevector <4 x i16> %9, <4 x i16> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %24 = zext <4 x i8> %15 to <4 x i16>
  %25 = shufflevector <4 x i16> %23, <4 x i16> %24, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %26 = add nuw nsw <4 x i16> %22, %25
  %27 = lshr <4 x i16> %26, <i16 2, i16 2, i16 2, i16 2>
  %28 = trunc <4 x i16> %27 to <4 x i8>
  store <4 x i8> %28, ptr %arrayidx68, align 1
  store <4 x i8> %28, ptr %arrayidx69, align 1
  store <4 x i8> %28, ptr %arrayidx70, align 1
  store <4 x i8> %28, ptr %arrayidx71, align 1
  store <4 x i8> %28, ptr %arrayidx72, align 1
  %29 = zext i8 %4 to i16
  %30 = insertelement <4 x i16> %16, i16 %29, i64 0
  %31 = shl nuw nsw <4 x i16> %30, <i16 1, i16 1, i16 1, i16 1>
  %32 = shufflevector <4 x i16> %31, <4 x i16> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %33 = add nuw nsw <4 x i16> %16, <i16 2, i16 2, i16 2, i16 2>
  %34 = add nuw nsw <4 x i16> %33, %32
  %35 = shufflevector <4 x i16> %16, <4 x i16> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %36 = zext i8 %4 to i16
  %37 = insertelement <4 x i16> %35, i16 %36, i64 2
  %38 = zext i8 %5 to i16
  %39 = insertelement <4 x i16> %37, i16 %38, i64 3
  %40 = add nuw nsw <4 x i16> %34, %39
  %41 = lshr <4 x i16> %40, <i16 2, i16 2, i16 2, i16 2>
  %42 = trunc <4 x i16> %41 to <4 x i8>
  %43 = extractelement <4 x i8> %42, i64 0
  store i8 %43, ptr %arrayidx118, align 1
  store i8 %43, ptr %arrayidx119, align 1
  store i8 %43, ptr %arrayidx120, align 1
  %44 = shufflevector <4 x i8> %28, <4 x i8> %42, <4 x i32> <i32 1, i32 2, i32 3, i32 4>
  store <4 x i8> %44, ptr %arrayidx84, align 1
  %45 = extractelement <4 x i8> %42, i64 1
  store i8 %45, ptr %arrayidx131, align 1
  store i8 %45, ptr %arrayidx132, align 1
  store i8 %45, ptr %arrayidx134, align 1
  %46 = shufflevector <4 x i8> %28, <4 x i8> %42, <4 x i32> <i32 2, i32 3, i32 4, i32 5>
  store <4 x i8> %46, ptr %arrayidx97, align 1
  %47 = extractelement <4 x i8> %42, i64 2
  store i8 %47, ptr %arrayidx143, align 1
  store i8 %47, ptr %arrayidx145, align 1
  store i8 %47, ptr %arrayidx146, align 1
  %48 = shufflevector <4 x i8> %28, <4 x i8> %42, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  store <4 x i8> %48, ptr %arrayidx111, align 1
  store <4 x i8> %42, ptr %arrayidx121, align 1
  %arrayidx155 = getelementptr inbounds i8, ptr %src, i64 166
  %49 = extractelement <4 x i8> %42, i64 3
  store i8 %49, ptr %arrayidx155, align 1
  %arrayidx156 = getelementptr inbounds i8, ptr %src, i64 197
  store i8 %49, ptr %arrayidx156, align 1
  %arrayidx157 = getelementptr inbounds i8, ptr %src, i64 228
  store i8 %49, ptr %arrayidx157, align 1
  %mul158 = shl nuw nsw i32 %conv26, 1
  %add159 = add nuw nsw i32 %conv24, 2
  %add160 = add nuw nsw i32 %add159, %mul158
  %add161 = add nuw nsw i32 %add160, %conv28
  %shr162 = lshr i32 %add161, 2
  %conv163 = trunc nuw i32 %shr162 to i8
  %arrayidx164 = getelementptr inbounds i8, ptr %src, i64 167
  store i8 %conv163, ptr %arrayidx164, align 1
  %arrayidx165 = getelementptr inbounds i8, ptr %src, i64 198
  store i8 %conv163, ptr %arrayidx165, align 1
  %arrayidx166 = getelementptr inbounds i8, ptr %src, i64 229
  store i8 %conv163, ptr %arrayidx166, align 1
  %mul167 = shl nuw nsw i32 %conv28, 1
  %add168 = add nuw nsw i32 %conv26, 2
  %add169 = add nuw nsw i32 %add168, %mul167
  %add170 = add nuw nsw i32 %add169, %conv30
  %shr171 = lshr i32 %add170, 2
  %conv172 = trunc nuw i32 %shr171 to i8
  %arrayidx173 = getelementptr inbounds i8, ptr %src, i64 199
  store i8 %conv172, ptr %arrayidx173, align 1
  %arrayidx174 = getelementptr inbounds i8, ptr %src, i64 230
  store i8 %conv172, ptr %arrayidx174, align 1
  %mul175 = shl nuw nsw i32 %conv30, 1
  %add176 = add nuw nsw i32 %conv28, 2
  %add177 = add nuw nsw i32 %add176, %conv30
  %add178 = add nuw nsw i32 %add177, %mul175
  %shr179 = lshr i32 %add178, 2
  %conv180 = trunc nuw i32 %shr179 to i8
  %arrayidx181 = getelementptr inbounds i8, ptr %src, i64 231
  store i8 %conv180, ptr %arrayidx181, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @predict_8x8_ddr(ptr noundef writeonly %src, ptr nocapture noundef readonly %edge) #1 {
entry:
  %arrayidx = getelementptr inbounds i8, ptr %edge, i64 16
  %0 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %0 to i32
  %arrayidx1 = getelementptr inbounds i8, ptr %edge, i64 17
  %1 = load i8, ptr %arrayidx1, align 1
  %conv2 = zext i8 %1 to i32
  %arrayidx3 = getelementptr inbounds i8, ptr %edge, i64 18
  %arrayidx11 = getelementptr inbounds i8, ptr %edge, i64 22
  %2 = load i8, ptr %arrayidx11, align 1
  %arrayidx13 = getelementptr inbounds i8, ptr %edge, i64 23
  %3 = load i8, ptr %arrayidx13, align 1
  %arrayidx21 = getelementptr inbounds i8, ptr %edge, i64 11
  %arrayidx23 = getelementptr inbounds i8, ptr %edge, i64 10
  %4 = load i8, ptr %arrayidx23, align 1
  %conv24 = zext i8 %4 to i32
  %arrayidx25 = getelementptr inbounds i8, ptr %edge, i64 9
  %5 = load i8, ptr %arrayidx25, align 1
  %conv26 = zext i8 %5 to i32
  %arrayidx27 = getelementptr inbounds i8, ptr %edge, i64 8
  %6 = load i8, ptr %arrayidx27, align 1
  %conv28 = zext i8 %6 to i32
  %arrayidx29 = getelementptr inbounds i8, ptr %edge, i64 7
  %7 = load i8, ptr %arrayidx29, align 1
  %conv30 = zext i8 %7 to i32
  %arrayidx31 = getelementptr inbounds i8, ptr %edge, i64 15
  %8 = load i8, ptr %arrayidx31, align 1
  %conv32 = zext i8 %8 to i32
  %mul = shl nuw nsw i32 %conv28, 1
  %add = add nuw nsw i32 %conv26, 2
  %add33 = add nuw nsw i32 %add, %conv30
  %add34 = add nuw nsw i32 %add33, %mul
  %shr = lshr i32 %add34, 2
  %conv35 = trunc nuw i32 %shr to i8
  %arrayidx36 = getelementptr inbounds i8, ptr %src, i64 224
  %mul37 = shl nuw nsw i32 %conv26, 1
  %add38 = add nuw nsw i32 %conv24, 2
  %add39 = add nuw nsw i32 %add38, %conv28
  %add40 = add nuw nsw i32 %add39, %mul37
  %shr41 = lshr i32 %add40, 2
  %conv42 = trunc nuw i32 %shr41 to i8
  %arrayidx43 = getelementptr inbounds i8, ptr %src, i64 225
  %arrayidx44 = getelementptr inbounds i8, ptr %src, i64 192
  %arrayidx51 = getelementptr inbounds i8, ptr %src, i64 226
  %arrayidx52 = getelementptr inbounds i8, ptr %src, i64 193
  %arrayidx53 = getelementptr inbounds i8, ptr %src, i64 160
  %arrayidx63 = getelementptr inbounds i8, ptr %src, i64 128
  %arrayidx73 = getelementptr inbounds i8, ptr %src, i64 129
  %arrayidx74 = getelementptr inbounds i8, ptr %src, i64 96
  %arrayidx84 = getelementptr inbounds i8, ptr %src, i64 130
  %arrayidx85 = getelementptr inbounds i8, ptr %src, i64 97
  %arrayidx86 = getelementptr inbounds i8, ptr %src, i64 64
  %arrayidx93 = getelementptr inbounds i8, ptr %src, i64 230
  %arrayidx94 = getelementptr inbounds i8, ptr %src, i64 197
  %arrayidx95 = getelementptr inbounds i8, ptr %src, i64 164
  %arrayidx96 = getelementptr inbounds i8, ptr %src, i64 131
  %arrayidx97 = getelementptr inbounds i8, ptr %src, i64 98
  %arrayidx98 = getelementptr inbounds i8, ptr %src, i64 65
  %arrayidx99 = getelementptr inbounds i8, ptr %src, i64 32
  %mul100 = shl nuw nsw i32 %conv32, 1
  %add101 = add nuw nsw i32 %conv, 2
  %arrayidx106 = getelementptr inbounds i8, ptr %src, i64 231
  %arrayidx107 = getelementptr inbounds i8, ptr %src, i64 198
  %arrayidx108 = getelementptr inbounds i8, ptr %src, i64 165
  %arrayidx109 = getelementptr inbounds i8, ptr %src, i64 132
  %arrayidx110 = getelementptr inbounds i8, ptr %src, i64 99
  %arrayidx111 = getelementptr inbounds i8, ptr %src, i64 66
  %arrayidx112 = getelementptr inbounds i8, ptr %src, i64 33
  %mul114 = shl nuw nsw i32 %conv, 1
  %add115 = add nuw nsw i32 %conv2, 2
  %add116 = add nuw nsw i32 %add115, %mul114
  %add117 = add nuw nsw i32 %add116, %conv32
  %shr118 = lshr i32 %add117, 2
  %conv119 = trunc nuw i32 %shr118 to i8
  %arrayidx120 = getelementptr inbounds i8, ptr %src, i64 199
  %arrayidx121 = getelementptr inbounds i8, ptr %src, i64 166
  %arrayidx122 = getelementptr inbounds i8, ptr %src, i64 133
  %arrayidx123 = getelementptr inbounds i8, ptr %src, i64 100
  %arrayidx124 = getelementptr inbounds i8, ptr %src, i64 67
  %arrayidx125 = getelementptr inbounds i8, ptr %src, i64 34
  %arrayidx126 = getelementptr inbounds i8, ptr %src, i64 1
  %mul127 = shl nuw nsw i32 %conv2, 1
  %add129 = add nuw nsw i32 %add101, %mul127
  %arrayidx133 = getelementptr inbounds i8, ptr %src, i64 167
  %arrayidx134 = getelementptr inbounds i8, ptr %src, i64 134
  %arrayidx135 = getelementptr inbounds i8, ptr %src, i64 101
  %arrayidx136 = getelementptr inbounds i8, ptr %src, i64 68
  %arrayidx137 = getelementptr inbounds i8, ptr %src, i64 35
  %arrayidx138 = getelementptr inbounds i8, ptr %src, i64 2
  %arrayidx145 = getelementptr inbounds i8, ptr %src, i64 135
  %arrayidx146 = getelementptr inbounds i8, ptr %src, i64 102
  %arrayidx147 = getelementptr inbounds i8, ptr %src, i64 69
  %arrayidx148 = getelementptr inbounds i8, ptr %src, i64 36
  %arrayidx149 = getelementptr inbounds i8, ptr %src, i64 3
  %arrayidx156 = getelementptr inbounds i8, ptr %src, i64 103
  %arrayidx157 = getelementptr inbounds i8, ptr %src, i64 70
  %arrayidx158 = getelementptr inbounds i8, ptr %src, i64 37
  %arrayidx159 = getelementptr inbounds i8, ptr %src, i64 4
  %arrayidx166 = getelementptr inbounds i8, ptr %src, i64 71
  %arrayidx167 = getelementptr inbounds i8, ptr %src, i64 38
  %arrayidx175 = getelementptr inbounds i8, ptr %src, i64 39
  %9 = load <4 x i8>, ptr %arrayidx3, align 1
  %10 = zext <4 x i8> %9 to <4 x i16>
  %11 = load <4 x i8>, ptr %arrayidx21, align 1
  %12 = zext <4 x i8> %11 to <4 x i16>
  %13 = zext i8 %4 to i16
  %14 = insertelement <4 x i16> %12, i16 %13, i64 3
  %15 = shl nuw nsw <4 x i16> %14, <i16 1, i16 1, i16 1, i16 1>
  %16 = shufflevector <4 x i16> %15, <4 x i16> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %17 = add nuw nsw <4 x i16> %12, <i16 2, i16 2, i16 2, i16 2>
  %18 = shufflevector <4 x i16> %12, <4 x i16> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 1>
  %19 = zext i8 %5 to i16
  %20 = insertelement <4 x i16> %18, i16 %19, i64 0
  %21 = zext i8 %4 to i16
  %22 = insertelement <4 x i16> %20, i16 %21, i64 1
  %23 = add nuw nsw <4 x i16> %17, %22
  %24 = add nuw nsw <4 x i16> %23, %16
  %25 = lshr <4 x i16> %24, <i16 2, i16 2, i16 2, i16 2>
  %26 = trunc <4 x i16> %25 to <4 x i8>
  %27 = extractelement <4 x i16> %12, i64 3
  %28 = zext nneg i16 %27 to i32
  %mul87 = shl nuw nsw i32 %28, 1
  %29 = extractelement <4 x i16> %17, i64 2
  %30 = zext nneg i16 %29 to i32
  %add89 = add nuw nsw i32 %mul87, %30
  %add90 = add nuw nsw i32 %add89, %conv32
  %shr91 = lshr i32 %add90, 2
  %conv92 = trunc nuw i32 %shr91 to i8
  %add102 = add nuw nsw i32 %add101, %28
  %add103 = add nuw nsw i32 %add102, %mul100
  %shr104 = lshr i32 %add103, 2
  %conv105 = trunc nuw i32 %shr104 to i8
  store i8 %conv35, ptr %arrayidx36, align 1
  store i8 %conv42, ptr %arrayidx43, align 1
  store i8 %conv42, ptr %arrayidx44, align 1
  %31 = extractelement <4 x i8> %26, i64 1
  store i8 %31, ptr %arrayidx63, align 1
  %32 = extractelement <4 x i8> %26, i64 2
  store i8 %32, ptr %arrayidx73, align 1
  store i8 %32, ptr %arrayidx74, align 1
  store <4 x i8> %26, ptr %arrayidx51, align 1
  store <4 x i8> %26, ptr %arrayidx52, align 1
  store <4 x i8> %26, ptr %arrayidx53, align 1
  %33 = extractelement <4 x i8> %26, i64 3
  store i8 %33, ptr %arrayidx84, align 1
  store i8 %33, ptr %arrayidx85, align 1
  store i8 %33, ptr %arrayidx86, align 1
  store i8 %conv92, ptr %arrayidx93, align 1
  store i8 %conv92, ptr %arrayidx94, align 1
  store i8 %conv92, ptr %arrayidx95, align 1
  store i8 %conv92, ptr %arrayidx96, align 1
  store i8 %conv92, ptr %arrayidx97, align 1
  store i8 %conv92, ptr %arrayidx98, align 1
  store i8 %conv92, ptr %arrayidx99, align 1
  store i8 %conv105, ptr %arrayidx106, align 1
  store i8 %conv105, ptr %arrayidx107, align 1
  store i8 %conv105, ptr %arrayidx108, align 1
  store i8 %conv105, ptr %arrayidx109, align 1
  store i8 %conv105, ptr %arrayidx110, align 1
  store i8 %conv105, ptr %arrayidx111, align 1
  store i8 %conv105, ptr %arrayidx112, align 1
  store i8 %conv105, ptr %src, align 1
  store i8 %conv119, ptr %arrayidx120, align 1
  store i8 %conv119, ptr %arrayidx121, align 1
  store i8 %conv119, ptr %arrayidx122, align 1
  store i8 %conv119, ptr %arrayidx123, align 1
  store i8 %conv119, ptr %arrayidx124, align 1
  store i8 %conv119, ptr %arrayidx125, align 1
  store i8 %conv119, ptr %arrayidx126, align 1
  %34 = extractelement <4 x i16> %10, i64 0
  %35 = zext nneg i16 %34 to i32
  %add130 = add nuw nsw i32 %add129, %35
  %shr131 = lshr i32 %add130, 2
  %conv132 = trunc nuw i32 %shr131 to i8
  store i8 %conv132, ptr %arrayidx133, align 1
  store i8 %conv132, ptr %arrayidx134, align 1
  store i8 %conv132, ptr %arrayidx135, align 1
  store i8 %conv132, ptr %arrayidx136, align 1
  store i8 %conv132, ptr %arrayidx137, align 1
  store i8 %conv132, ptr %arrayidx138, align 1
  %mul139 = shl nuw nsw i32 %35, 1
  %add141 = add nuw nsw i32 %add115, %mul139
  %36 = extractelement <4 x i16> %10, i64 1
  %37 = zext nneg i16 %36 to i32
  %add142 = add nuw nsw i32 %add141, %37
  %shr143 = lshr i32 %add142, 2
  %conv144 = trunc nuw i32 %shr143 to i8
  store i8 %conv144, ptr %arrayidx145, align 1
  store i8 %conv144, ptr %arrayidx146, align 1
  store i8 %conv144, ptr %arrayidx147, align 1
  store i8 %conv144, ptr %arrayidx148, align 1
  store i8 %conv144, ptr %arrayidx149, align 1
  %38 = zext i8 %2 to i16
  %39 = insertelement <4 x i16> %10, i16 %38, i64 0
  %40 = shl nuw nsw <4 x i16> %39, <i16 1, i16 1, i16 1, i16 1>
  %41 = shufflevector <4 x i16> %40, <4 x i16> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %42 = add nuw nsw <4 x i16> %10, <i16 2, i16 2, i16 2, i16 2>
  %43 = add nuw nsw <4 x i16> %42, %41
  %44 = shufflevector <4 x i16> %39, <4 x i16> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 poison>
  %45 = zext i8 %3 to i16
  %46 = insertelement <4 x i16> %44, i16 %45, i64 3
  %47 = add nuw nsw <4 x i16> %43, %46
  %48 = lshr <4 x i16> %47, <i16 2, i16 2, i16 2, i16 2>
  %49 = trunc <4 x i16> %48 to <4 x i8>
  %50 = extractelement <4 x i8> %49, i64 0
  store i8 %50, ptr %arrayidx156, align 1
  store i8 %50, ptr %arrayidx157, align 1
  store i8 %50, ptr %arrayidx158, align 1
  %51 = extractelement <4 x i8> %49, i64 1
  store i8 %51, ptr %arrayidx166, align 1
  store i8 %51, ptr %arrayidx167, align 1
  %52 = extractelement <4 x i8> %49, i64 2
  store i8 %52, ptr %arrayidx175, align 1
  store <4 x i8> %49, ptr %arrayidx159, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @predict_8x8_vr(ptr noundef writeonly %src, ptr nocapture noundef readonly %edge) #1 {
entry:
  %arrayidx = getelementptr inbounds i8, ptr %edge, i64 16
  %0 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %0 to i32
  %arrayidx1 = getelementptr inbounds i8, ptr %edge, i64 17
  %1 = load i8, ptr %arrayidx1, align 1
  %conv2 = zext i8 %1 to i32
  %arrayidx3 = getelementptr inbounds i8, ptr %edge, i64 18
  %2 = load i8, ptr %arrayidx3, align 1
  %conv4 = zext i8 %2 to i32
  %arrayidx5 = getelementptr inbounds i8, ptr %edge, i64 19
  %3 = load i8, ptr %arrayidx5, align 1
  %conv6 = zext i8 %3 to i32
  %arrayidx7 = getelementptr inbounds i8, ptr %edge, i64 20
  %4 = load i8, ptr %arrayidx7, align 1
  %conv8 = zext i8 %4 to i32
  %arrayidx9 = getelementptr inbounds i8, ptr %edge, i64 21
  %5 = load i8, ptr %arrayidx9, align 1
  %conv10 = zext i8 %5 to i32
  %arrayidx11 = getelementptr inbounds i8, ptr %edge, i64 22
  %6 = load i8, ptr %arrayidx11, align 1
  %conv12 = zext i8 %6 to i32
  %arrayidx13 = getelementptr inbounds i8, ptr %edge, i64 23
  %7 = load i8, ptr %arrayidx13, align 1
  %conv14 = zext i8 %7 to i32
  %arrayidx15 = getelementptr inbounds i8, ptr %edge, i64 14
  %8 = load i8, ptr %arrayidx15, align 1
  %conv16 = zext i8 %8 to i32
  %arrayidx17 = getelementptr inbounds i8, ptr %edge, i64 13
  %9 = load i8, ptr %arrayidx17, align 1
  %conv18 = zext i8 %9 to i32
  %arrayidx19 = getelementptr inbounds i8, ptr %edge, i64 12
  %10 = load i8, ptr %arrayidx19, align 1
  %conv20 = zext i8 %10 to i32
  %arrayidx21 = getelementptr inbounds i8, ptr %edge, i64 11
  %11 = load i8, ptr %arrayidx21, align 1
  %conv22 = zext i8 %11 to i32
  %arrayidx23 = getelementptr inbounds i8, ptr %edge, i64 10
  %12 = load i8, ptr %arrayidx23, align 1
  %conv24 = zext i8 %12 to i32
  %arrayidx25 = getelementptr inbounds i8, ptr %edge, i64 9
  %13 = load i8, ptr %arrayidx25, align 1
  %conv26 = zext i8 %13 to i32
  %arrayidx27 = getelementptr inbounds i8, ptr %edge, i64 8
  %14 = load i8, ptr %arrayidx27, align 1
  %conv28 = zext i8 %14 to i32
  %arrayidx31 = getelementptr inbounds i8, ptr %edge, i64 15
  %15 = load i8, ptr %arrayidx31, align 1
  %conv32 = zext i8 %15 to i32
  %mul = shl nuw nsw i32 %conv24, 1
  %add = add nuw nsw i32 %conv22, 2
  %add33 = add nuw nsw i32 %add, %conv26
  %add34 = add nuw nsw i32 %add33, %mul
  %shr = lshr i32 %add34, 2
  %conv35 = trunc nuw i32 %shr to i8
  %arrayidx36 = getelementptr inbounds i8, ptr %src, i64 192
  store i8 %conv35, ptr %arrayidx36, align 1
  %mul37 = shl nuw nsw i32 %conv26, 1
  %add38 = add nuw nsw i32 %conv24, 2
  %add39 = add nuw nsw i32 %add38, %conv28
  %add40 = add nuw nsw i32 %add39, %mul37
  %shr41 = lshr i32 %add40, 2
  %conv42 = trunc nuw i32 %shr41 to i8
  %arrayidx43 = getelementptr inbounds i8, ptr %src, i64 224
  store i8 %conv42, ptr %arrayidx43, align 1
  %mul44 = shl nuw nsw i32 %conv20, 1
  %add45 = add nuw nsw i32 %conv18, 2
  %add46 = add nuw nsw i32 %add45, %conv22
  %add47 = add nuw nsw i32 %add46, %mul44
  %shr48 = lshr i32 %add47, 2
  %conv49 = trunc nuw i32 %shr48 to i8
  %arrayidx50 = getelementptr inbounds i8, ptr %src, i64 193
  store i8 %conv49, ptr %arrayidx50, align 1
  %arrayidx51 = getelementptr inbounds i8, ptr %src, i64 128
  store i8 %conv49, ptr %arrayidx51, align 1
  %mul52 = shl nuw nsw i32 %conv22, 1
  %add53 = add nuw nsw i32 %conv20, 2
  %add54 = add nuw nsw i32 %add53, %conv24
  %add55 = add nuw nsw i32 %add54, %mul52
  %shr56 = lshr i32 %add55, 2
  %conv57 = trunc nuw i32 %shr56 to i8
  %arrayidx58 = getelementptr inbounds i8, ptr %src, i64 225
  store i8 %conv57, ptr %arrayidx58, align 1
  %arrayidx59 = getelementptr inbounds i8, ptr %src, i64 160
  store i8 %conv57, ptr %arrayidx59, align 1
  %mul60 = shl nuw nsw i32 %conv16, 1
  %add62 = add nuw nsw i32 %add45, %mul60
  %add63 = add nuw nsw i32 %add62, %conv32
  %shr64 = lshr i32 %add63, 2
  %conv65 = trunc nuw i32 %shr64 to i8
  %arrayidx66 = getelementptr inbounds i8, ptr %src, i64 194
  store i8 %conv65, ptr %arrayidx66, align 1
  %arrayidx67 = getelementptr inbounds i8, ptr %src, i64 129
  store i8 %conv65, ptr %arrayidx67, align 1
  %arrayidx68 = getelementptr inbounds i8, ptr %src, i64 64
  store i8 %conv65, ptr %arrayidx68, align 1
  %mul69 = shl nuw nsw i32 %conv18, 1
  %add70 = add nuw nsw i32 %conv16, 2
  %add71 = add nuw nsw i32 %add70, %conv20
  %add72 = add nuw nsw i32 %add71, %mul69
  %shr73 = lshr i32 %add72, 2
  %conv74 = trunc nuw i32 %shr73 to i8
  %arrayidx75 = getelementptr inbounds i8, ptr %src, i64 226
  store i8 %conv74, ptr %arrayidx75, align 1
  %arrayidx76 = getelementptr inbounds i8, ptr %src, i64 161
  store i8 %conv74, ptr %arrayidx76, align 1
  %arrayidx77 = getelementptr inbounds i8, ptr %src, i64 96
  store i8 %conv74, ptr %arrayidx77, align 1
  %mul78 = shl nuw nsw i32 %conv32, 1
  %add79 = add nuw nsw i32 %conv, 2
  %add80 = add nuw nsw i32 %add79, %conv16
  %add81 = add nuw nsw i32 %add80, %mul78
  %shr82 = lshr i32 %add81, 2
  %conv83 = trunc nuw i32 %shr82 to i8
  %arrayidx84 = getelementptr inbounds i8, ptr %src, i64 227
  store i8 %conv83, ptr %arrayidx84, align 1
  %arrayidx85 = getelementptr inbounds i8, ptr %src, i64 162
  store i8 %conv83, ptr %arrayidx85, align 1
  %arrayidx86 = getelementptr inbounds i8, ptr %src, i64 97
  store i8 %conv83, ptr %arrayidx86, align 1
  %arrayidx87 = getelementptr inbounds i8, ptr %src, i64 32
  store i8 %conv83, ptr %arrayidx87, align 1
  %add88 = add nuw nsw i32 %conv, 1
  %add89 = add nuw nsw i32 %add88, %conv32
  %shr90 = lshr i32 %add89, 1
  %conv91 = trunc nuw i32 %shr90 to i8
  %arrayidx92 = getelementptr inbounds i8, ptr %src, i64 195
  store i8 %conv91, ptr %arrayidx92, align 1
  %arrayidx93 = getelementptr inbounds i8, ptr %src, i64 130
  store i8 %conv91, ptr %arrayidx93, align 1
  %arrayidx94 = getelementptr inbounds i8, ptr %src, i64 65
  store i8 %conv91, ptr %arrayidx94, align 1
  store i8 %conv91, ptr %src, align 1
  %mul96 = shl nuw nsw i32 %conv, 1
  %add97 = add nuw nsw i32 %conv2, 2
  %add98 = add nuw nsw i32 %add97, %mul96
  %add99 = add nuw nsw i32 %add98, %conv32
  %shr100 = lshr i32 %add99, 2
  %conv101 = trunc nuw i32 %shr100 to i8
  %arrayidx102 = getelementptr inbounds i8, ptr %src, i64 228
  store i8 %conv101, ptr %arrayidx102, align 1
  %arrayidx103 = getelementptr inbounds i8, ptr %src, i64 163
  store i8 %conv101, ptr %arrayidx103, align 1
  %arrayidx104 = getelementptr inbounds i8, ptr %src, i64 98
  store i8 %conv101, ptr %arrayidx104, align 1
  %arrayidx105 = getelementptr inbounds i8, ptr %src, i64 33
  store i8 %conv101, ptr %arrayidx105, align 1
  %add107 = add nuw nsw i32 %add88, %conv2
  %shr108 = lshr i32 %add107, 1
  %conv109 = trunc nuw i32 %shr108 to i8
  %arrayidx110 = getelementptr inbounds i8, ptr %src, i64 196
  store i8 %conv109, ptr %arrayidx110, align 1
  %arrayidx111 = getelementptr inbounds i8, ptr %src, i64 131
  store i8 %conv109, ptr %arrayidx111, align 1
  %arrayidx112 = getelementptr inbounds i8, ptr %src, i64 66
  store i8 %conv109, ptr %arrayidx112, align 1
  %arrayidx113 = getelementptr inbounds i8, ptr %src, i64 1
  store i8 %conv109, ptr %arrayidx113, align 1
  %mul114 = shl nuw nsw i32 %conv2, 1
  %add116 = add nuw nsw i32 %add79, %mul114
  %add117 = add nuw nsw i32 %add116, %conv4
  %shr118 = lshr i32 %add117, 2
  %conv119 = trunc nuw i32 %shr118 to i8
  %arrayidx120 = getelementptr inbounds i8, ptr %src, i64 229
  store i8 %conv119, ptr %arrayidx120, align 1
  %arrayidx121 = getelementptr inbounds i8, ptr %src, i64 164
  store i8 %conv119, ptr %arrayidx121, align 1
  %arrayidx122 = getelementptr inbounds i8, ptr %src, i64 99
  store i8 %conv119, ptr %arrayidx122, align 1
  %arrayidx123 = getelementptr inbounds i8, ptr %src, i64 34
  store i8 %conv119, ptr %arrayidx123, align 1
  %add124 = add nuw nsw i32 %conv2, 1
  %add125 = add nuw nsw i32 %add124, %conv4
  %shr126 = lshr i32 %add125, 1
  %conv127 = trunc nuw i32 %shr126 to i8
  %arrayidx128 = getelementptr inbounds i8, ptr %src, i64 197
  store i8 %conv127, ptr %arrayidx128, align 1
  %arrayidx129 = getelementptr inbounds i8, ptr %src, i64 132
  store i8 %conv127, ptr %arrayidx129, align 1
  %arrayidx130 = getelementptr inbounds i8, ptr %src, i64 67
  store i8 %conv127, ptr %arrayidx130, align 1
  %arrayidx131 = getelementptr inbounds i8, ptr %src, i64 2
  store i8 %conv127, ptr %arrayidx131, align 1
  %mul132 = shl nuw nsw i32 %conv4, 1
  %add134 = add nuw nsw i32 %add97, %mul132
  %add135 = add nuw nsw i32 %add134, %conv6
  %shr136 = lshr i32 %add135, 2
  %conv137 = trunc nuw i32 %shr136 to i8
  %arrayidx138 = getelementptr inbounds i8, ptr %src, i64 230
  store i8 %conv137, ptr %arrayidx138, align 1
  %arrayidx139 = getelementptr inbounds i8, ptr %src, i64 165
  store i8 %conv137, ptr %arrayidx139, align 1
  %arrayidx140 = getelementptr inbounds i8, ptr %src, i64 100
  store i8 %conv137, ptr %arrayidx140, align 1
  %arrayidx141 = getelementptr inbounds i8, ptr %src, i64 35
  store i8 %conv137, ptr %arrayidx141, align 1
  %add142 = add nuw nsw i32 %conv4, 1
  %add143 = add nuw nsw i32 %add142, %conv6
  %shr144 = lshr i32 %add143, 1
  %conv145 = trunc nuw i32 %shr144 to i8
  %arrayidx146 = getelementptr inbounds i8, ptr %src, i64 198
  store i8 %conv145, ptr %arrayidx146, align 1
  %arrayidx147 = getelementptr inbounds i8, ptr %src, i64 133
  store i8 %conv145, ptr %arrayidx147, align 1
  %arrayidx148 = getelementptr inbounds i8, ptr %src, i64 68
  store i8 %conv145, ptr %arrayidx148, align 1
  %arrayidx149 = getelementptr inbounds i8, ptr %src, i64 3
  store i8 %conv145, ptr %arrayidx149, align 1
  %mul150 = shl nuw nsw i32 %conv6, 1
  %add151 = add nuw nsw i32 %conv4, 2
  %add152 = add nuw nsw i32 %add151, %mul150
  %add153 = add nuw nsw i32 %add152, %conv8
  %shr154 = lshr i32 %add153, 2
  %conv155 = trunc nuw i32 %shr154 to i8
  %arrayidx156 = getelementptr inbounds i8, ptr %src, i64 231
  store i8 %conv155, ptr %arrayidx156, align 1
  %arrayidx157 = getelementptr inbounds i8, ptr %src, i64 166
  store i8 %conv155, ptr %arrayidx157, align 1
  %arrayidx158 = getelementptr inbounds i8, ptr %src, i64 101
  store i8 %conv155, ptr %arrayidx158, align 1
  %arrayidx159 = getelementptr inbounds i8, ptr %src, i64 36
  store i8 %conv155, ptr %arrayidx159, align 1
  %add160 = add nuw nsw i32 %conv6, 1
  %add161 = add nuw nsw i32 %add160, %conv8
  %shr162 = lshr i32 %add161, 1
  %conv163 = trunc nuw i32 %shr162 to i8
  %arrayidx164 = getelementptr inbounds i8, ptr %src, i64 199
  store i8 %conv163, ptr %arrayidx164, align 1
  %arrayidx165 = getelementptr inbounds i8, ptr %src, i64 134
  store i8 %conv163, ptr %arrayidx165, align 1
  %arrayidx166 = getelementptr inbounds i8, ptr %src, i64 69
  store i8 %conv163, ptr %arrayidx166, align 1
  %arrayidx167 = getelementptr inbounds i8, ptr %src, i64 4
  store i8 %conv163, ptr %arrayidx167, align 1
  %mul168 = shl nuw nsw i32 %conv8, 1
  %add169 = add nuw nsw i32 %conv6, 2
  %add170 = add nuw nsw i32 %add169, %mul168
  %add171 = add nuw nsw i32 %add170, %conv10
  %shr172 = lshr i32 %add171, 2
  %conv173 = trunc nuw i32 %shr172 to i8
  %arrayidx174 = getelementptr inbounds i8, ptr %src, i64 167
  store i8 %conv173, ptr %arrayidx174, align 1
  %arrayidx175 = getelementptr inbounds i8, ptr %src, i64 102
  store i8 %conv173, ptr %arrayidx175, align 1
  %arrayidx176 = getelementptr inbounds i8, ptr %src, i64 37
  store i8 %conv173, ptr %arrayidx176, align 1
  %add177 = add nuw nsw i32 %conv8, 1
  %add178 = add nuw nsw i32 %add177, %conv10
  %shr179 = lshr i32 %add178, 1
  %conv180 = trunc nuw i32 %shr179 to i8
  %arrayidx181 = getelementptr inbounds i8, ptr %src, i64 135
  store i8 %conv180, ptr %arrayidx181, align 1
  %arrayidx182 = getelementptr inbounds i8, ptr %src, i64 70
  store i8 %conv180, ptr %arrayidx182, align 1
  %arrayidx183 = getelementptr inbounds i8, ptr %src, i64 5
  store i8 %conv180, ptr %arrayidx183, align 1
  %mul184 = shl nuw nsw i32 %conv10, 1
  %add185 = add nuw nsw i32 %conv8, 2
  %add186 = add nuw nsw i32 %add185, %mul184
  %add187 = add nuw nsw i32 %add186, %conv12
  %shr188 = lshr i32 %add187, 2
  %conv189 = trunc nuw i32 %shr188 to i8
  %arrayidx190 = getelementptr inbounds i8, ptr %src, i64 103
  store i8 %conv189, ptr %arrayidx190, align 1
  %arrayidx191 = getelementptr inbounds i8, ptr %src, i64 38
  store i8 %conv189, ptr %arrayidx191, align 1
  %add192 = add nuw nsw i32 %conv10, 1
  %add193 = add nuw nsw i32 %add192, %conv12
  %shr194 = lshr i32 %add193, 1
  %conv195 = trunc nuw i32 %shr194 to i8
  %arrayidx196 = getelementptr inbounds i8, ptr %src, i64 71
  store i8 %conv195, ptr %arrayidx196, align 1
  %arrayidx197 = getelementptr inbounds i8, ptr %src, i64 6
  store i8 %conv195, ptr %arrayidx197, align 1
  %mul198 = shl nuw nsw i32 %conv12, 1
  %add199 = add nuw nsw i32 %conv10, 2
  %add200 = add nuw nsw i32 %add199, %mul198
  %add201 = add nuw nsw i32 %add200, %conv14
  %shr202 = lshr i32 %add201, 2
  %conv203 = trunc nuw i32 %shr202 to i8
  %arrayidx204 = getelementptr inbounds i8, ptr %src, i64 39
  store i8 %conv203, ptr %arrayidx204, align 1
  %add205 = add nuw nsw i32 %conv12, 1
  %add206 = add nuw nsw i32 %add205, %conv14
  %shr207 = lshr i32 %add206, 1
  %conv208 = trunc nuw i32 %shr207 to i8
  %arrayidx209 = getelementptr inbounds i8, ptr %src, i64 7
  store i8 %conv208, ptr %arrayidx209, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @predict_8x8_hd(ptr nocapture noundef writeonly %src, ptr nocapture noundef readonly %edge) #1 {
entry:
  %arrayidx = getelementptr inbounds i8, ptr %edge, i64 16
  %0 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %0 to i32
  %arrayidx1 = getelementptr inbounds i8, ptr %edge, i64 17
  %1 = load i8, ptr %arrayidx1, align 1
  %conv2 = zext i8 %1 to i32
  %arrayidx3 = getelementptr inbounds i8, ptr %edge, i64 18
  %2 = load i8, ptr %arrayidx3, align 1
  %conv4 = zext i8 %2 to i32
  %arrayidx5 = getelementptr inbounds i8, ptr %edge, i64 19
  %3 = load i8, ptr %arrayidx5, align 1
  %conv6 = zext i8 %3 to i32
  %arrayidx7 = getelementptr inbounds i8, ptr %edge, i64 20
  %4 = load i8, ptr %arrayidx7, align 1
  %conv8 = zext i8 %4 to i32
  %arrayidx9 = getelementptr inbounds i8, ptr %edge, i64 21
  %5 = load i8, ptr %arrayidx9, align 1
  %conv10 = zext i8 %5 to i32
  %arrayidx11 = getelementptr inbounds i8, ptr %edge, i64 22
  %6 = load i8, ptr %arrayidx11, align 1
  %conv12 = zext i8 %6 to i32
  %arrayidx15 = getelementptr inbounds i8, ptr %edge, i64 14
  %7 = load i8, ptr %arrayidx15, align 1
  %conv16 = zext i8 %7 to i32
  %arrayidx17 = getelementptr inbounds i8, ptr %edge, i64 13
  %8 = load i8, ptr %arrayidx17, align 1
  %conv18 = zext i8 %8 to i32
  %arrayidx19 = getelementptr inbounds i8, ptr %edge, i64 12
  %9 = load i8, ptr %arrayidx19, align 1
  %conv20 = zext i8 %9 to i32
  %arrayidx21 = getelementptr inbounds i8, ptr %edge, i64 11
  %10 = load i8, ptr %arrayidx21, align 1
  %conv22 = zext i8 %10 to i32
  %arrayidx23 = getelementptr inbounds i8, ptr %edge, i64 10
  %11 = load i8, ptr %arrayidx23, align 1
  %conv24 = zext i8 %11 to i32
  %arrayidx25 = getelementptr inbounds i8, ptr %edge, i64 9
  %12 = load i8, ptr %arrayidx25, align 1
  %conv26 = zext i8 %12 to i32
  %arrayidx27 = getelementptr inbounds i8, ptr %edge, i64 8
  %13 = load i8, ptr %arrayidx27, align 1
  %conv28 = zext i8 %13 to i32
  %arrayidx29 = getelementptr inbounds i8, ptr %edge, i64 7
  %14 = load i8, ptr %arrayidx29, align 1
  %conv30 = zext i8 %14 to i32
  %arrayidx31 = getelementptr inbounds i8, ptr %edge, i64 15
  %15 = load i8, ptr %arrayidx31, align 1
  %conv32 = zext i8 %15 to i32
  %add = add nuw nsw i32 %conv28, 1
  %add33 = add nuw nsw i32 %add, %conv30
  %shr = lshr i32 %add33, 1
  %mul = shl nuw nsw i32 %conv28, 1
  %add34 = add nuw nsw i32 %mul, %conv26
  %add35 = add nuw nsw i32 %add34, %conv30
  %add36 = shl nuw nsw i32 %add35, 6
  %16 = add nuw nsw i32 %add36, 128
  %shl.i = and i32 %16, 2147483392
  %add.i = add nuw nsw i32 %shl.i, %shr
  %add38 = add nuw nsw i32 %conv26, 1
  %add39 = add nuw nsw i32 %add38, %conv28
  %shr40 = lshr i32 %add39, 1
  %mul41 = shl nuw nsw i32 %conv26, 1
  %add42 = add nuw nsw i32 %mul41, %conv24
  %add43 = add nuw nsw i32 %add42, %conv28
  %add44 = shl nuw nsw i32 %add43, 6
  %17 = add nuw nsw i32 %add44, 128
  %shl.i242 = and i32 %17, 2147483392
  %add.i243 = add nuw nsw i32 %shl.i242, %shr40
  %add47 = add nuw nsw i32 %conv24, 1
  %add48 = add nuw nsw i32 %add47, %conv26
  %shr49 = lshr i32 %add48, 1
  %mul50 = shl nuw nsw i32 %conv24, 1
  %add51 = add nuw nsw i32 %mul50, %conv22
  %add52 = add nuw nsw i32 %add51, %conv26
  %add53 = shl nuw nsw i32 %add52, 6
  %18 = add nuw nsw i32 %add53, 128
  %shl.i244 = and i32 %18, 2147483392
  %add.i245 = add nuw nsw i32 %shl.i244, %shr49
  %add56 = add nuw nsw i32 %conv22, 1
  %add57 = add nuw nsw i32 %add56, %conv24
  %shr58 = lshr i32 %add57, 1
  %mul59 = shl nuw nsw i32 %conv22, 1
  %add60 = add nuw nsw i32 %mul59, %conv20
  %add61 = add nuw nsw i32 %add60, %conv24
  %add62 = shl nuw nsw i32 %add61, 6
  %19 = add nuw nsw i32 %add62, 128
  %shl.i246 = and i32 %19, 2147483392
  %add.i247 = add nuw nsw i32 %shl.i246, %shr58
  %add65 = add nuw nsw i32 %conv20, 1
  %add66 = add nuw nsw i32 %add65, %conv22
  %shr67 = lshr i32 %add66, 1
  %mul68 = shl nuw nsw i32 %conv20, 1
  %add69 = add nuw nsw i32 %mul68, %conv18
  %add70 = add nuw nsw i32 %add69, %conv22
  %add71 = shl nuw nsw i32 %add70, 6
  %20 = add nuw nsw i32 %add71, 128
  %shl.i248 = and i32 %20, 2147483392
  %add.i249 = add nuw nsw i32 %shl.i248, %shr67
  %add74 = add nuw nsw i32 %conv18, 1
  %add75 = add nuw nsw i32 %add74, %conv20
  %shr76 = lshr i32 %add75, 1
  %mul77 = shl nuw nsw i32 %conv18, 1
  %add78 = add nuw nsw i32 %mul77, %conv16
  %add79 = add nuw nsw i32 %add78, %conv20
  %add80 = shl nuw nsw i32 %add79, 6
  %21 = add nuw nsw i32 %add80, 128
  %shl.i250 = and i32 %21, 2147483392
  %add.i251 = add nuw nsw i32 %shl.i250, %shr76
  %add83 = add nuw nsw i32 %conv16, 1
  %add84 = add nuw nsw i32 %add83, %conv18
  %shr85 = lshr i32 %add84, 1
  %mul86 = shl nuw nsw i32 %conv16, 1
  %add87 = add nuw nsw i32 %mul86, %conv18
  %add88 = add nuw nsw i32 %add87, %conv32
  %add89 = shl nuw nsw i32 %add88, 6
  %22 = add nuw nsw i32 %add89, 128
  %shl.i252 = and i32 %22, 2147483392
  %add.i253 = add nuw nsw i32 %shl.i252, %shr85
  %add93 = add nuw nsw i32 %add83, %conv32
  %shr94 = lshr i32 %add93, 1
  %add96 = add nuw nsw i32 %conv16, %conv
  %23 = shl nuw nsw i32 %conv32, 7
  %24 = shl nuw nsw i32 %add96, 6
  %add98 = add nuw nsw i32 %23, %24
  %25 = add nuw nsw i32 %add98, 128
  %shl.i254 = and i32 %25, 130816
  %add.i255 = add nuw nsw i32 %shl.i254, %shr94
  %mul101 = shl nuw nsw i32 %conv, 1
  %add102 = add nuw nsw i32 %conv2, 2
  %add103 = add nuw nsw i32 %add102, %mul101
  %add104 = add nuw nsw i32 %add103, %conv32
  %shr105 = lshr i32 %add104, 2
  %add107 = add nuw nsw i32 %conv4, %conv
  %26 = shl nuw nsw i32 %conv2, 7
  %27 = shl nuw nsw i32 %add107, 6
  %add109 = add nuw nsw i32 %26, %27
  %28 = add nuw nsw i32 %add109, 128
  %shl.i256 = and i32 %28, 130816
  %add.i257 = add nuw nsw i32 %shr105, %shl.i256
  %mul112 = shl nuw nsw i32 %conv4, 1
  %add114 = add nuw nsw i32 %add102, %conv6
  %add115 = add nuw nsw i32 %add114, %mul112
  %shr116 = lshr i32 %add115, 2
  %add118 = add nuw nsw i32 %conv8, %conv4
  %29 = shl nuw nsw i32 %conv6, 7
  %30 = shl nuw nsw i32 %add118, 6
  %add120 = add nuw nsw i32 %29, %30
  %31 = add nuw nsw i32 %add120, 128
  %shl.i258 = and i32 %31, 130816
  %add.i259 = add nuw nsw i32 %shl.i258, %shr116
  %mul123 = shl nuw nsw i32 %conv8, 1
  %add124 = add nuw nsw i32 %conv6, 2
  %add125 = add nuw nsw i32 %add124, %conv10
  %add126 = add nuw nsw i32 %add125, %mul123
  %shr127 = lshr i32 %add126, 2
  %add129 = add nuw nsw i32 %conv12, %conv8
  %32 = shl nuw nsw i32 %conv10, 7
  %33 = shl nuw nsw i32 %add129, 6
  %add131 = add nuw nsw i32 %32, %33
  %34 = add nuw nsw i32 %add131, 128
  %shl.i260 = and i32 %34, 130816
  %add.i261 = add nuw nsw i32 %shl.i260, %shr127
  %shl.i262 = shl nuw i32 %add.i243, 16
  %add.i263 = add nuw nsw i32 %add.i, %shl.i262
  %arrayidx135 = getelementptr inbounds i8, ptr %src, i64 224
  store i32 %add.i263, ptr %arrayidx135, align 4
  %shl.i264 = shl nuw i32 %add.i245, 16
  %add.i265 = add nuw nsw i32 %shl.i264, %add.i243
  %arrayidx137 = getelementptr inbounds i8, ptr %src, i64 192
  store i32 %add.i265, ptr %arrayidx137, align 4
  %shl.i266 = shl nuw i32 %add.i247, 16
  %add.i267 = add nuw nsw i32 %shl.i266, %add.i245
  %arrayidx139 = getelementptr inbounds i8, ptr %src, i64 160
  store i32 %add.i267, ptr %arrayidx139, align 4
  %arrayidx140 = getelementptr inbounds i8, ptr %src, i64 228
  store i32 %add.i267, ptr %arrayidx140, align 4
  %shl.i268 = shl nuw i32 %add.i249, 16
  %add.i269 = add nuw nsw i32 %shl.i268, %add.i247
  %arrayidx142 = getelementptr inbounds i8, ptr %src, i64 128
  store i32 %add.i269, ptr %arrayidx142, align 4
  %arrayidx143 = getelementptr inbounds i8, ptr %src, i64 196
  store i32 %add.i269, ptr %arrayidx143, align 4
  %shl.i270 = shl nuw i32 %add.i251, 16
  %add.i271 = add nuw nsw i32 %shl.i270, %add.i249
  %arrayidx145 = getelementptr inbounds i8, ptr %src, i64 96
  store i32 %add.i271, ptr %arrayidx145, align 4
  %arrayidx146 = getelementptr inbounds i8, ptr %src, i64 164
  store i32 %add.i271, ptr %arrayidx146, align 4
  %shl.i272 = shl nuw i32 %add.i253, 16
  %add.i273 = add nuw nsw i32 %shl.i272, %add.i251
  %arrayidx148 = getelementptr inbounds i8, ptr %src, i64 64
  store i32 %add.i273, ptr %arrayidx148, align 4
  %arrayidx149 = getelementptr inbounds i8, ptr %src, i64 132
  store i32 %add.i273, ptr %arrayidx149, align 4
  %shl.i274 = shl nuw i32 %add.i255, 16
  %add.i275 = add nuw nsw i32 %shl.i274, %add.i253
  %arrayidx151 = getelementptr inbounds i8, ptr %src, i64 32
  store i32 %add.i275, ptr %arrayidx151, align 4
  %arrayidx152 = getelementptr inbounds i8, ptr %src, i64 100
  store i32 %add.i275, ptr %arrayidx152, align 4
  %shl.i276 = shl nuw i32 %add.i257, 16
  %add.i277 = add nuw nsw i32 %add.i255, %shl.i276
  store i32 %add.i277, ptr %src, align 4
  %arrayidx155 = getelementptr inbounds i8, ptr %src, i64 68
  store i32 %add.i277, ptr %arrayidx155, align 4
  %shl.i278 = shl nuw i32 %add.i259, 16
  %add.i279 = add nuw nsw i32 %add.i257, %shl.i278
  %arrayidx157 = getelementptr inbounds i8, ptr %src, i64 36
  store i32 %add.i279, ptr %arrayidx157, align 4
  %shl.i280 = shl nuw i32 %add.i261, 16
  %add.i281 = add nuw nsw i32 %shl.i280, %add.i259
  %arrayidx159 = getelementptr inbounds i8, ptr %src, i64 4
  store i32 %add.i281, ptr %arrayidx159, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @predict_8x8_vl(ptr noundef writeonly %src, ptr nocapture noundef readonly %edge) #1 {
entry:
  %arrayidx = getelementptr inbounds i8, ptr %edge, i64 16
  %0 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %0 to i32
  %arrayidx1 = getelementptr inbounds i8, ptr %edge, i64 17
  %1 = load i8, ptr %arrayidx1, align 1
  %conv2 = zext i8 %1 to i32
  %arrayidx3 = getelementptr inbounds i8, ptr %edge, i64 18
  %2 = load i8, ptr %arrayidx3, align 1
  %conv4 = zext i8 %2 to i32
  %arrayidx5 = getelementptr inbounds i8, ptr %edge, i64 19
  %3 = load i8, ptr %arrayidx5, align 1
  %conv6 = zext i8 %3 to i32
  %arrayidx7 = getelementptr inbounds i8, ptr %edge, i64 20
  %4 = load i8, ptr %arrayidx7, align 1
  %conv8 = zext i8 %4 to i32
  %arrayidx9 = getelementptr inbounds i8, ptr %edge, i64 21
  %5 = load i8, ptr %arrayidx9, align 1
  %conv10 = zext i8 %5 to i32
  %arrayidx11 = getelementptr inbounds i8, ptr %edge, i64 22
  %6 = load i8, ptr %arrayidx11, align 1
  %conv12 = zext i8 %6 to i32
  %arrayidx13 = getelementptr inbounds i8, ptr %edge, i64 23
  %7 = load i8, ptr %arrayidx13, align 1
  %conv14 = zext i8 %7 to i32
  %arrayidx15 = getelementptr inbounds i8, ptr %edge, i64 24
  %8 = load i8, ptr %arrayidx15, align 1
  %conv16 = zext i8 %8 to i32
  %arrayidx17 = getelementptr inbounds i8, ptr %edge, i64 25
  %9 = load i8, ptr %arrayidx17, align 1
  %conv18 = zext i8 %9 to i32
  %arrayidx19 = getelementptr inbounds i8, ptr %edge, i64 26
  %10 = load i8, ptr %arrayidx19, align 1
  %conv20 = zext i8 %10 to i32
  %arrayidx21 = getelementptr inbounds i8, ptr %edge, i64 27
  %11 = load i8, ptr %arrayidx21, align 1
  %conv22 = zext i8 %11 to i32
  %arrayidx23 = getelementptr inbounds i8, ptr %edge, i64 28
  %12 = load i8, ptr %arrayidx23, align 1
  %conv24 = zext i8 %12 to i32
  %add = add nuw nsw i32 %conv2, 1
  %add31 = add nuw nsw i32 %add, %conv
  %shr = lshr i32 %add31, 1
  %conv32 = trunc nuw i32 %shr to i8
  store i8 %conv32, ptr %src, align 1
  %mul = shl nuw nsw i32 %conv2, 1
  %add34 = add nuw nsw i32 %conv4, 2
  %add35 = add nuw nsw i32 %add34, %conv
  %add36 = add nuw nsw i32 %add35, %mul
  %shr37 = lshr i32 %add36, 2
  %conv38 = trunc nuw i32 %shr37 to i8
  %arrayidx39 = getelementptr inbounds i8, ptr %src, i64 32
  store i8 %conv38, ptr %arrayidx39, align 1
  %add41 = add nuw nsw i32 %add, %conv4
  %shr42 = lshr i32 %add41, 1
  %conv43 = trunc nuw i32 %shr42 to i8
  %arrayidx44 = getelementptr inbounds i8, ptr %src, i64 1
  store i8 %conv43, ptr %arrayidx44, align 1
  %arrayidx45 = getelementptr inbounds i8, ptr %src, i64 64
  store i8 %conv43, ptr %arrayidx45, align 1
  %mul46 = shl nuw nsw i32 %conv4, 1
  %add47 = add nuw nsw i32 %conv6, 2
  %add48 = add nuw nsw i32 %add47, %conv2
  %add49 = add nuw nsw i32 %add48, %mul46
  %shr50 = lshr i32 %add49, 2
  %conv51 = trunc nuw i32 %shr50 to i8
  %arrayidx52 = getelementptr inbounds i8, ptr %src, i64 33
  store i8 %conv51, ptr %arrayidx52, align 1
  %arrayidx53 = getelementptr inbounds i8, ptr %src, i64 96
  store i8 %conv51, ptr %arrayidx53, align 1
  %add54 = add nuw nsw i32 %conv4, 1
  %add55 = add nuw nsw i32 %add54, %conv6
  %shr56 = lshr i32 %add55, 1
  %conv57 = trunc nuw i32 %shr56 to i8
  %arrayidx58 = getelementptr inbounds i8, ptr %src, i64 2
  store i8 %conv57, ptr %arrayidx58, align 1
  %arrayidx59 = getelementptr inbounds i8, ptr %src, i64 65
  store i8 %conv57, ptr %arrayidx59, align 1
  %arrayidx60 = getelementptr inbounds i8, ptr %src, i64 128
  store i8 %conv57, ptr %arrayidx60, align 1
  %mul61 = shl nuw nsw i32 %conv6, 1
  %add63 = add nuw nsw i32 %add34, %mul61
  %add64 = add nuw nsw i32 %add63, %conv8
  %shr65 = lshr i32 %add64, 2
  %conv66 = trunc nuw i32 %shr65 to i8
  %arrayidx67 = getelementptr inbounds i8, ptr %src, i64 34
  store i8 %conv66, ptr %arrayidx67, align 1
  %arrayidx68 = getelementptr inbounds i8, ptr %src, i64 97
  store i8 %conv66, ptr %arrayidx68, align 1
  %arrayidx69 = getelementptr inbounds i8, ptr %src, i64 160
  store i8 %conv66, ptr %arrayidx69, align 1
  %add70 = add nuw nsw i32 %conv6, 1
  %add71 = add nuw nsw i32 %add70, %conv8
  %shr72 = lshr i32 %add71, 1
  %conv73 = trunc nuw i32 %shr72 to i8
  %arrayidx74 = getelementptr inbounds i8, ptr %src, i64 3
  store i8 %conv73, ptr %arrayidx74, align 1
  %arrayidx75 = getelementptr inbounds i8, ptr %src, i64 66
  store i8 %conv73, ptr %arrayidx75, align 1
  %arrayidx76 = getelementptr inbounds i8, ptr %src, i64 129
  store i8 %conv73, ptr %arrayidx76, align 1
  %arrayidx77 = getelementptr inbounds i8, ptr %src, i64 192
  store i8 %conv73, ptr %arrayidx77, align 1
  %mul78 = shl nuw nsw i32 %conv8, 1
  %add80 = add nuw nsw i32 %add47, %mul78
  %add81 = add nuw nsw i32 %add80, %conv10
  %shr82 = lshr i32 %add81, 2
  %conv83 = trunc nuw i32 %shr82 to i8
  %arrayidx84 = getelementptr inbounds i8, ptr %src, i64 35
  store i8 %conv83, ptr %arrayidx84, align 1
  %arrayidx85 = getelementptr inbounds i8, ptr %src, i64 98
  store i8 %conv83, ptr %arrayidx85, align 1
  %arrayidx86 = getelementptr inbounds i8, ptr %src, i64 161
  store i8 %conv83, ptr %arrayidx86, align 1
  %arrayidx87 = getelementptr inbounds i8, ptr %src, i64 224
  store i8 %conv83, ptr %arrayidx87, align 1
  %add88 = add nuw nsw i32 %conv8, 1
  %add89 = add nuw nsw i32 %add88, %conv10
  %shr90 = lshr i32 %add89, 1
  %conv91 = trunc nuw i32 %shr90 to i8
  %arrayidx92 = getelementptr inbounds i8, ptr %src, i64 4
  store i8 %conv91, ptr %arrayidx92, align 1
  %arrayidx93 = getelementptr inbounds i8, ptr %src, i64 67
  store i8 %conv91, ptr %arrayidx93, align 1
  %arrayidx94 = getelementptr inbounds i8, ptr %src, i64 130
  store i8 %conv91, ptr %arrayidx94, align 1
  %arrayidx95 = getelementptr inbounds i8, ptr %src, i64 193
  store i8 %conv91, ptr %arrayidx95, align 1
  %mul96 = shl nuw nsw i32 %conv10, 1
  %add97 = add nuw nsw i32 %conv8, 2
  %add98 = add nuw nsw i32 %add97, %mul96
  %add99 = add nuw nsw i32 %add98, %conv12
  %shr100 = lshr i32 %add99, 2
  %conv101 = trunc nuw i32 %shr100 to i8
  %arrayidx102 = getelementptr inbounds i8, ptr %src, i64 36
  store i8 %conv101, ptr %arrayidx102, align 1
  %arrayidx103 = getelementptr inbounds i8, ptr %src, i64 99
  store i8 %conv101, ptr %arrayidx103, align 1
  %arrayidx104 = getelementptr inbounds i8, ptr %src, i64 162
  store i8 %conv101, ptr %arrayidx104, align 1
  %arrayidx105 = getelementptr inbounds i8, ptr %src, i64 225
  store i8 %conv101, ptr %arrayidx105, align 1
  %add106 = add nuw nsw i32 %conv10, 1
  %add107 = add nuw nsw i32 %add106, %conv12
  %shr108 = lshr i32 %add107, 1
  %conv109 = trunc nuw i32 %shr108 to i8
  %arrayidx110 = getelementptr inbounds i8, ptr %src, i64 5
  store i8 %conv109, ptr %arrayidx110, align 1
  %arrayidx111 = getelementptr inbounds i8, ptr %src, i64 68
  store i8 %conv109, ptr %arrayidx111, align 1
  %arrayidx112 = getelementptr inbounds i8, ptr %src, i64 131
  store i8 %conv109, ptr %arrayidx112, align 1
  %arrayidx113 = getelementptr inbounds i8, ptr %src, i64 194
  store i8 %conv109, ptr %arrayidx113, align 1
  %mul114 = shl nuw nsw i32 %conv12, 1
  %add115 = add nuw nsw i32 %conv10, 2
  %add116 = add nuw nsw i32 %add115, %mul114
  %add117 = add nuw nsw i32 %add116, %conv14
  %shr118 = lshr i32 %add117, 2
  %conv119 = trunc nuw i32 %shr118 to i8
  %arrayidx120 = getelementptr inbounds i8, ptr %src, i64 37
  store i8 %conv119, ptr %arrayidx120, align 1
  %arrayidx121 = getelementptr inbounds i8, ptr %src, i64 100
  store i8 %conv119, ptr %arrayidx121, align 1
  %arrayidx122 = getelementptr inbounds i8, ptr %src, i64 163
  store i8 %conv119, ptr %arrayidx122, align 1
  %arrayidx123 = getelementptr inbounds i8, ptr %src, i64 226
  store i8 %conv119, ptr %arrayidx123, align 1
  %add124 = add nuw nsw i32 %conv12, 1
  %add125 = add nuw nsw i32 %add124, %conv14
  %shr126 = lshr i32 %add125, 1
  %conv127 = trunc nuw i32 %shr126 to i8
  %arrayidx128 = getelementptr inbounds i8, ptr %src, i64 6
  store i8 %conv127, ptr %arrayidx128, align 1
  %arrayidx129 = getelementptr inbounds i8, ptr %src, i64 69
  store i8 %conv127, ptr %arrayidx129, align 1
  %arrayidx130 = getelementptr inbounds i8, ptr %src, i64 132
  store i8 %conv127, ptr %arrayidx130, align 1
  %arrayidx131 = getelementptr inbounds i8, ptr %src, i64 195
  store i8 %conv127, ptr %arrayidx131, align 1
  %mul132 = shl nuw nsw i32 %conv14, 1
  %add133 = add nuw nsw i32 %conv12, 2
  %add134 = add nuw nsw i32 %add133, %mul132
  %add135 = add nuw nsw i32 %add134, %conv16
  %shr136 = lshr i32 %add135, 2
  %conv137 = trunc nuw i32 %shr136 to i8
  %arrayidx138 = getelementptr inbounds i8, ptr %src, i64 38
  store i8 %conv137, ptr %arrayidx138, align 1
  %arrayidx139 = getelementptr inbounds i8, ptr %src, i64 101
  store i8 %conv137, ptr %arrayidx139, align 1
  %arrayidx140 = getelementptr inbounds i8, ptr %src, i64 164
  store i8 %conv137, ptr %arrayidx140, align 1
  %arrayidx141 = getelementptr inbounds i8, ptr %src, i64 227
  store i8 %conv137, ptr %arrayidx141, align 1
  %add142 = add nuw nsw i32 %conv14, 1
  %add143 = add nuw nsw i32 %add142, %conv16
  %shr144 = lshr i32 %add143, 1
  %conv145 = trunc nuw i32 %shr144 to i8
  %arrayidx146 = getelementptr inbounds i8, ptr %src, i64 7
  store i8 %conv145, ptr %arrayidx146, align 1
  %arrayidx147 = getelementptr inbounds i8, ptr %src, i64 70
  store i8 %conv145, ptr %arrayidx147, align 1
  %arrayidx148 = getelementptr inbounds i8, ptr %src, i64 133
  store i8 %conv145, ptr %arrayidx148, align 1
  %arrayidx149 = getelementptr inbounds i8, ptr %src, i64 196
  store i8 %conv145, ptr %arrayidx149, align 1
  %mul150 = shl nuw nsw i32 %conv16, 1
  %add151 = add nuw nsw i32 %conv14, 2
  %add152 = add nuw nsw i32 %add151, %mul150
  %add153 = add nuw nsw i32 %add152, %conv18
  %shr154 = lshr i32 %add153, 2
  %conv155 = trunc nuw i32 %shr154 to i8
  %arrayidx156 = getelementptr inbounds i8, ptr %src, i64 39
  store i8 %conv155, ptr %arrayidx156, align 1
  %arrayidx157 = getelementptr inbounds i8, ptr %src, i64 102
  store i8 %conv155, ptr %arrayidx157, align 1
  %arrayidx158 = getelementptr inbounds i8, ptr %src, i64 165
  store i8 %conv155, ptr %arrayidx158, align 1
  %arrayidx159 = getelementptr inbounds i8, ptr %src, i64 228
  store i8 %conv155, ptr %arrayidx159, align 1
  %add160 = add nuw nsw i32 %conv16, 1
  %add161 = add nuw nsw i32 %add160, %conv18
  %shr162 = lshr i32 %add161, 1
  %conv163 = trunc nuw i32 %shr162 to i8
  %arrayidx164 = getelementptr inbounds i8, ptr %src, i64 71
  store i8 %conv163, ptr %arrayidx164, align 1
  %arrayidx165 = getelementptr inbounds i8, ptr %src, i64 134
  store i8 %conv163, ptr %arrayidx165, align 1
  %arrayidx166 = getelementptr inbounds i8, ptr %src, i64 197
  store i8 %conv163, ptr %arrayidx166, align 1
  %mul167 = shl nuw nsw i32 %conv18, 1
  %add168 = add nuw nsw i32 %conv16, 2
  %add169 = add nuw nsw i32 %add168, %mul167
  %add170 = add nuw nsw i32 %add169, %conv20
  %shr171 = lshr i32 %add170, 2
  %conv172 = trunc nuw i32 %shr171 to i8
  %arrayidx173 = getelementptr inbounds i8, ptr %src, i64 103
  store i8 %conv172, ptr %arrayidx173, align 1
  %arrayidx174 = getelementptr inbounds i8, ptr %src, i64 166
  store i8 %conv172, ptr %arrayidx174, align 1
  %arrayidx175 = getelementptr inbounds i8, ptr %src, i64 229
  store i8 %conv172, ptr %arrayidx175, align 1
  %add176 = add nuw nsw i32 %conv18, 1
  %add177 = add nuw nsw i32 %add176, %conv20
  %shr178 = lshr i32 %add177, 1
  %conv179 = trunc nuw i32 %shr178 to i8
  %arrayidx180 = getelementptr inbounds i8, ptr %src, i64 135
  store i8 %conv179, ptr %arrayidx180, align 1
  %arrayidx181 = getelementptr inbounds i8, ptr %src, i64 198
  store i8 %conv179, ptr %arrayidx181, align 1
  %mul182 = shl nuw nsw i32 %conv20, 1
  %add183 = add nuw nsw i32 %conv18, 2
  %add184 = add nuw nsw i32 %add183, %mul182
  %add185 = add nuw nsw i32 %add184, %conv22
  %shr186 = lshr i32 %add185, 2
  %conv187 = trunc nuw i32 %shr186 to i8
  %arrayidx188 = getelementptr inbounds i8, ptr %src, i64 167
  store i8 %conv187, ptr %arrayidx188, align 1
  %arrayidx189 = getelementptr inbounds i8, ptr %src, i64 230
  store i8 %conv187, ptr %arrayidx189, align 1
  %add190 = add nuw nsw i32 %conv20, 1
  %add191 = add nuw nsw i32 %add190, %conv22
  %shr192 = lshr i32 %add191, 1
  %conv193 = trunc nuw i32 %shr192 to i8
  %arrayidx194 = getelementptr inbounds i8, ptr %src, i64 199
  store i8 %conv193, ptr %arrayidx194, align 1
  %mul195 = shl nuw nsw i32 %conv22, 1
  %add196 = add nuw nsw i32 %conv20, 2
  %add197 = add nuw nsw i32 %add196, %mul195
  %add198 = add nuw nsw i32 %add197, %conv24
  %shr199 = lshr i32 %add198, 2
  %conv200 = trunc nuw i32 %shr199 to i8
  %arrayidx201 = getelementptr inbounds i8, ptr %src, i64 231
  store i8 %conv200, ptr %arrayidx201, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @predict_8x8_hu(ptr nocapture noundef writeonly %src, ptr nocapture noundef readonly %edge) #1 {
entry:
  %arrayidx = getelementptr inbounds i8, ptr %edge, i64 14
  %0 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %0 to i32
  %arrayidx1 = getelementptr inbounds i8, ptr %edge, i64 13
  %1 = load i8, ptr %arrayidx1, align 1
  %conv2 = zext i8 %1 to i32
  %arrayidx3 = getelementptr inbounds i8, ptr %edge, i64 12
  %2 = load i8, ptr %arrayidx3, align 1
  %conv4 = zext i8 %2 to i32
  %arrayidx5 = getelementptr inbounds i8, ptr %edge, i64 11
  %3 = load i8, ptr %arrayidx5, align 1
  %conv6 = zext i8 %3 to i32
  %arrayidx7 = getelementptr inbounds i8, ptr %edge, i64 10
  %4 = load i8, ptr %arrayidx7, align 1
  %conv8 = zext i8 %4 to i32
  %arrayidx9 = getelementptr inbounds i8, ptr %edge, i64 9
  %5 = load i8, ptr %arrayidx9, align 1
  %conv10 = zext i8 %5 to i32
  %arrayidx11 = getelementptr inbounds i8, ptr %edge, i64 8
  %6 = load i8, ptr %arrayidx11, align 1
  %conv12 = zext i8 %6 to i32
  %arrayidx13 = getelementptr inbounds i8, ptr %edge, i64 7
  %7 = load i8, ptr %arrayidx13, align 1
  %conv14 = zext i8 %7 to i32
  %add = add nuw nsw i32 %conv2, 1
  %add15 = add nuw nsw i32 %add, %conv
  %shr = lshr i32 %add15, 1
  %mul = shl nuw nsw i32 %conv2, 1
  %add16 = add nuw nsw i32 %mul, %conv
  %add17 = add nuw nsw i32 %add16, %conv4
  %add18 = shl nuw nsw i32 %add17, 6
  %8 = add nuw nsw i32 %add18, 128
  %shl.i = and i32 %8, 2147483392
  %add.i = add nuw nsw i32 %shl.i, %shr
  %add21 = add nuw nsw i32 %add, %conv4
  %shr22 = lshr i32 %add21, 1
  %mul23 = shl nuw nsw i32 %conv4, 1
  %add24 = add nuw nsw i32 %mul23, %conv2
  %add25 = add nuw nsw i32 %add24, %conv6
  %add26 = shl nuw nsw i32 %add25, 6
  %9 = add nuw nsw i32 %add26, 128
  %shl.i158 = and i32 %9, 2147483392
  %add.i159 = add nuw nsw i32 %shl.i158, %shr22
  %add29 = add nuw nsw i32 %conv4, 1
  %add30 = add nuw nsw i32 %add29, %conv6
  %shr31 = lshr i32 %add30, 1
  %mul32 = shl nuw nsw i32 %conv6, 1
  %add33 = add nuw nsw i32 %mul32, %conv4
  %add34 = add nuw nsw i32 %add33, %conv8
  %add35 = shl nuw nsw i32 %add34, 6
  %10 = add nuw nsw i32 %add35, 128
  %shl.i160 = and i32 %10, 2147483392
  %add.i161 = add nuw nsw i32 %shl.i160, %shr31
  %add38 = add nuw nsw i32 %conv6, 1
  %add39 = add nuw nsw i32 %add38, %conv8
  %shr40 = lshr i32 %add39, 1
  %mul41 = shl nuw nsw i32 %conv8, 1
  %add42 = add nuw nsw i32 %mul41, %conv6
  %add43 = add nuw nsw i32 %add42, %conv10
  %add44 = shl nuw nsw i32 %add43, 6
  %11 = add nuw nsw i32 %add44, 128
  %shl.i162 = and i32 %11, 2147483392
  %add.i163 = add nuw nsw i32 %shl.i162, %shr40
  %add47 = add nuw nsw i32 %conv8, 1
  %add48 = add nuw nsw i32 %add47, %conv10
  %shr49 = lshr i32 %add48, 1
  %mul50 = shl nuw nsw i32 %conv10, 1
  %add51 = add nuw nsw i32 %mul50, %conv8
  %add52 = add nuw nsw i32 %add51, %conv12
  %add53 = shl nuw nsw i32 %add52, 6
  %12 = add nuw nsw i32 %add53, 128
  %shl.i164 = and i32 %12, 2147483392
  %add.i165 = add nuw nsw i32 %shl.i164, %shr49
  %add56 = add nuw nsw i32 %conv10, 1
  %add57 = add nuw nsw i32 %add56, %conv12
  %shr58 = lshr i32 %add57, 1
  %mul59 = shl nuw nsw i32 %conv12, 1
  %add60 = add nuw nsw i32 %mul59, %conv10
  %add61 = add nuw nsw i32 %add60, %conv14
  %add62 = shl nuw nsw i32 %add61, 6
  %13 = add nuw nsw i32 %add62, 128
  %shl.i166 = and i32 %13, 2147483392
  %add.i167 = add nuw nsw i32 %shl.i166, %shr58
  %add65 = add nuw nsw i32 %conv12, 1
  %add66 = add nuw nsw i32 %add65, %conv14
  %shr67 = lshr i32 %add66, 1
  %add69 = add nuw nsw i32 %conv14, %conv12
  %14 = shl nuw nsw i32 %conv14, 7
  %15 = shl nuw nsw i32 %add69, 6
  %add71 = add nuw nsw i32 %14, %15
  %16 = add nuw nsw i32 %add71, 128
  %shl.i168 = and i32 %16, 130816
  %add.i169 = add nuw nsw i32 %shl.i168, %shr67
  %shl.i172 = shl nuw i32 %add.i159, 16
  %add.i173 = add nuw nsw i32 %add.i, %shl.i172
  store i32 %add.i173, ptr %src, align 4
  %shl.i174 = shl nuw i32 %add.i161, 16
  %add.i175 = add nuw nsw i32 %shl.i174, %add.i159
  %arrayidx78 = getelementptr inbounds i8, ptr %src, i64 32
  store i32 %add.i175, ptr %arrayidx78, align 4
  %shl.i176 = shl nuw i32 %add.i163, 16
  %add.i177 = add nuw nsw i32 %shl.i176, %add.i161
  %arrayidx80 = getelementptr inbounds i8, ptr %src, i64 64
  store i32 %add.i177, ptr %arrayidx80, align 4
  %arrayidx81 = getelementptr inbounds i8, ptr %src, i64 4
  store i32 %add.i177, ptr %arrayidx81, align 4
  %shl.i178 = shl nuw i32 %add.i165, 16
  %add.i179 = add nuw nsw i32 %shl.i178, %add.i163
  %arrayidx83 = getelementptr inbounds i8, ptr %src, i64 96
  store i32 %add.i179, ptr %arrayidx83, align 4
  %arrayidx84 = getelementptr inbounds i8, ptr %src, i64 36
  store i32 %add.i179, ptr %arrayidx84, align 4
  %shl.i180 = shl nuw i32 %add.i167, 16
  %add.i181 = add nuw nsw i32 %shl.i180, %add.i165
  %arrayidx86 = getelementptr inbounds i8, ptr %src, i64 128
  store i32 %add.i181, ptr %arrayidx86, align 4
  %arrayidx87 = getelementptr inbounds i8, ptr %src, i64 68
  store i32 %add.i181, ptr %arrayidx87, align 4
  %shl.i182 = shl nuw i32 %add.i169, 16
  %add.i183 = add nuw nsw i32 %shl.i182, %add.i167
  %arrayidx89 = getelementptr inbounds i8, ptr %src, i64 160
  store i32 %add.i183, ptr %arrayidx89, align 4
  %arrayidx90 = getelementptr inbounds i8, ptr %src, i64 100
  store i32 %add.i183, ptr %arrayidx90, align 4
  %shl.i184 = mul nuw i32 %conv14, 16842752
  %add.i185 = add nuw nsw i32 %add.i169, %shl.i184
  %arrayidx92 = getelementptr inbounds i8, ptr %src, i64 192
  store i32 %add.i185, ptr %arrayidx92, align 4
  %arrayidx93 = getelementptr inbounds i8, ptr %src, i64 132
  store i32 %add.i185, ptr %arrayidx93, align 4
  %add.i187 = mul nuw i32 %conv14, 16843009
  %arrayidx95 = getelementptr inbounds i8, ptr %src, i64 228
  store i32 %add.i187, ptr %arrayidx95, align 4
  %arrayidx96 = getelementptr inbounds i8, ptr %src, i64 224
  store i32 %add.i187, ptr %arrayidx96, align 4
  %arrayidx97 = getelementptr inbounds i8, ptr %src, i64 196
  store i32 %add.i187, ptr %arrayidx97, align 4
  %arrayidx98 = getelementptr inbounds i8, ptr %src, i64 164
  store i32 %add.i187, ptr %arrayidx98, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @predict_8x8_dc_left(ptr nocapture noundef writeonly %src, ptr nocapture noundef readonly %edge) #1 {
entry:
  %arrayidx = getelementptr inbounds i8, ptr %edge, i64 14
  %0 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %0 to i32
  %arrayidx1 = getelementptr inbounds i8, ptr %edge, i64 13
  %1 = load i8, ptr %arrayidx1, align 1
  %conv2 = zext i8 %1 to i32
  %arrayidx3 = getelementptr inbounds i8, ptr %edge, i64 12
  %2 = load i8, ptr %arrayidx3, align 1
  %conv4 = zext i8 %2 to i32
  %arrayidx5 = getelementptr inbounds i8, ptr %edge, i64 11
  %3 = load i8, ptr %arrayidx5, align 1
  %conv6 = zext i8 %3 to i32
  %arrayidx7 = getelementptr inbounds i8, ptr %edge, i64 10
  %4 = load i8, ptr %arrayidx7, align 1
  %conv8 = zext i8 %4 to i32
  %arrayidx9 = getelementptr inbounds i8, ptr %edge, i64 9
  %5 = load i8, ptr %arrayidx9, align 1
  %conv10 = zext i8 %5 to i32
  %arrayidx11 = getelementptr inbounds i8, ptr %edge, i64 8
  %6 = load i8, ptr %arrayidx11, align 1
  %conv12 = zext i8 %6 to i32
  %arrayidx13 = getelementptr inbounds i8, ptr %edge, i64 7
  %7 = load i8, ptr %arrayidx13, align 1
  %conv14 = zext i8 %7 to i32
  %add = add nuw nsw i32 %conv, 4
  %add15 = add nuw nsw i32 %add, %conv2
  %add16 = add nuw nsw i32 %add15, %conv4
  %add17 = add nuw nsw i32 %add16, %conv6
  %add18 = add nuw nsw i32 %add17, %conv8
  %add19 = add nuw nsw i32 %add18, %conv10
  %add20 = add nuw nsw i32 %add19, %conv12
  %add21 = add nuw nsw i32 %add20, %conv14
  %shr = lshr i32 %add21, 3
  %mul = mul nuw nsw i32 %shr, 16843009
  store i32 %mul, ptr %src, align 4
  %add.ptr23 = getelementptr inbounds i8, ptr %src, i64 4
  store i32 %mul, ptr %add.ptr23, align 4
  %add.ptr24 = getelementptr inbounds i8, ptr %src, i64 32
  store i32 %mul, ptr %add.ptr24, align 4
  %add.ptr23.1 = getelementptr inbounds i8, ptr %src, i64 36
  store i32 %mul, ptr %add.ptr23.1, align 4
  %add.ptr24.1 = getelementptr inbounds i8, ptr %src, i64 64
  store i32 %mul, ptr %add.ptr24.1, align 4
  %add.ptr23.2 = getelementptr inbounds i8, ptr %src, i64 68
  store i32 %mul, ptr %add.ptr23.2, align 4
  %add.ptr24.2 = getelementptr inbounds i8, ptr %src, i64 96
  store i32 %mul, ptr %add.ptr24.2, align 4
  %add.ptr23.3 = getelementptr inbounds i8, ptr %src, i64 100
  store i32 %mul, ptr %add.ptr23.3, align 4
  %add.ptr24.3 = getelementptr inbounds i8, ptr %src, i64 128
  store i32 %mul, ptr %add.ptr24.3, align 4
  %add.ptr23.4 = getelementptr inbounds i8, ptr %src, i64 132
  store i32 %mul, ptr %add.ptr23.4, align 4
  %add.ptr24.4 = getelementptr inbounds i8, ptr %src, i64 160
  store i32 %mul, ptr %add.ptr24.4, align 4
  %add.ptr23.5 = getelementptr inbounds i8, ptr %src, i64 164
  store i32 %mul, ptr %add.ptr23.5, align 4
  %add.ptr24.5 = getelementptr inbounds i8, ptr %src, i64 192
  store i32 %mul, ptr %add.ptr24.5, align 4
  %add.ptr23.6 = getelementptr inbounds i8, ptr %src, i64 196
  store i32 %mul, ptr %add.ptr23.6, align 4
  %add.ptr24.6 = getelementptr inbounds i8, ptr %src, i64 224
  store i32 %mul, ptr %add.ptr24.6, align 4
  %add.ptr23.7 = getelementptr inbounds i8, ptr %src, i64 228
  store i32 %mul, ptr %add.ptr23.7, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @predict_8x8_dc_top(ptr nocapture noundef writeonly %src, ptr nocapture noundef readonly %edge) #1 {
entry:
  %arrayidx = getelementptr inbounds i8, ptr %edge, i64 16
  %0 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %0 to i32
  %arrayidx1 = getelementptr inbounds i8, ptr %edge, i64 17
  %1 = load i8, ptr %arrayidx1, align 1
  %conv2 = zext i8 %1 to i32
  %arrayidx3 = getelementptr inbounds i8, ptr %edge, i64 18
  %2 = load i8, ptr %arrayidx3, align 1
  %conv4 = zext i8 %2 to i32
  %arrayidx5 = getelementptr inbounds i8, ptr %edge, i64 19
  %3 = load i8, ptr %arrayidx5, align 1
  %conv6 = zext i8 %3 to i32
  %arrayidx7 = getelementptr inbounds i8, ptr %edge, i64 20
  %4 = load i8, ptr %arrayidx7, align 1
  %conv8 = zext i8 %4 to i32
  %arrayidx9 = getelementptr inbounds i8, ptr %edge, i64 21
  %5 = load i8, ptr %arrayidx9, align 1
  %conv10 = zext i8 %5 to i32
  %arrayidx11 = getelementptr inbounds i8, ptr %edge, i64 22
  %6 = load i8, ptr %arrayidx11, align 1
  %conv12 = zext i8 %6 to i32
  %arrayidx13 = getelementptr inbounds i8, ptr %edge, i64 23
  %7 = load i8, ptr %arrayidx13, align 1
  %conv14 = zext i8 %7 to i32
  %add = add nuw nsw i32 %conv, 4
  %add15 = add nuw nsw i32 %add, %conv2
  %add16 = add nuw nsw i32 %add15, %conv4
  %add17 = add nuw nsw i32 %add16, %conv6
  %add18 = add nuw nsw i32 %add17, %conv8
  %add19 = add nuw nsw i32 %add18, %conv10
  %add20 = add nuw nsw i32 %add19, %conv12
  %add21 = add nuw nsw i32 %add20, %conv14
  %shr = lshr i32 %add21, 3
  %mul = mul nuw nsw i32 %shr, 16843009
  store i32 %mul, ptr %src, align 4
  %add.ptr23 = getelementptr inbounds i8, ptr %src, i64 4
  store i32 %mul, ptr %add.ptr23, align 4
  %add.ptr24 = getelementptr inbounds i8, ptr %src, i64 32
  store i32 %mul, ptr %add.ptr24, align 4
  %add.ptr23.1 = getelementptr inbounds i8, ptr %src, i64 36
  store i32 %mul, ptr %add.ptr23.1, align 4
  %add.ptr24.1 = getelementptr inbounds i8, ptr %src, i64 64
  store i32 %mul, ptr %add.ptr24.1, align 4
  %add.ptr23.2 = getelementptr inbounds i8, ptr %src, i64 68
  store i32 %mul, ptr %add.ptr23.2, align 4
  %add.ptr24.2 = getelementptr inbounds i8, ptr %src, i64 96
  store i32 %mul, ptr %add.ptr24.2, align 4
  %add.ptr23.3 = getelementptr inbounds i8, ptr %src, i64 100
  store i32 %mul, ptr %add.ptr23.3, align 4
  %add.ptr24.3 = getelementptr inbounds i8, ptr %src, i64 128
  store i32 %mul, ptr %add.ptr24.3, align 4
  %add.ptr23.4 = getelementptr inbounds i8, ptr %src, i64 132
  store i32 %mul, ptr %add.ptr23.4, align 4
  %add.ptr24.4 = getelementptr inbounds i8, ptr %src, i64 160
  store i32 %mul, ptr %add.ptr24.4, align 4
  %add.ptr23.5 = getelementptr inbounds i8, ptr %src, i64 164
  store i32 %mul, ptr %add.ptr23.5, align 4
  %add.ptr24.5 = getelementptr inbounds i8, ptr %src, i64 192
  store i32 %mul, ptr %add.ptr24.5, align 4
  %add.ptr23.6 = getelementptr inbounds i8, ptr %src, i64 196
  store i32 %mul, ptr %add.ptr23.6, align 4
  %add.ptr24.6 = getelementptr inbounds i8, ptr %src, i64 224
  store i32 %mul, ptr %add.ptr24.6, align 4
  %add.ptr23.7 = getelementptr inbounds i8, ptr %src, i64 228
  store i32 %mul, ptr %add.ptr23.7, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @predict_8x8_dc_128(ptr nocapture noundef writeonly %src, ptr nocapture readnone %edge) #0 {
entry:
  store i32 -2139062144, ptr %src, align 4
  %add.ptr1 = getelementptr inbounds i8, ptr %src, i64 4
  store i32 -2139062144, ptr %add.ptr1, align 4
  %add.ptr2 = getelementptr inbounds i8, ptr %src, i64 32
  store i32 -2139062144, ptr %add.ptr2, align 4
  %add.ptr1.1 = getelementptr inbounds i8, ptr %src, i64 36
  store i32 -2139062144, ptr %add.ptr1.1, align 4
  %add.ptr2.1 = getelementptr inbounds i8, ptr %src, i64 64
  store i32 -2139062144, ptr %add.ptr2.1, align 4
  %add.ptr1.2 = getelementptr inbounds i8, ptr %src, i64 68
  store i32 -2139062144, ptr %add.ptr1.2, align 4
  %add.ptr2.2 = getelementptr inbounds i8, ptr %src, i64 96
  store i32 -2139062144, ptr %add.ptr2.2, align 4
  %add.ptr1.3 = getelementptr inbounds i8, ptr %src, i64 100
  store i32 -2139062144, ptr %add.ptr1.3, align 4
  %add.ptr2.3 = getelementptr inbounds i8, ptr %src, i64 128
  store i32 -2139062144, ptr %add.ptr2.3, align 4
  %add.ptr1.4 = getelementptr inbounds i8, ptr %src, i64 132
  store i32 -2139062144, ptr %add.ptr1.4, align 4
  %add.ptr2.4 = getelementptr inbounds i8, ptr %src, i64 160
  store i32 -2139062144, ptr %add.ptr2.4, align 4
  %add.ptr1.5 = getelementptr inbounds i8, ptr %src, i64 164
  store i32 -2139062144, ptr %add.ptr1.5, align 4
  %add.ptr2.5 = getelementptr inbounds i8, ptr %src, i64 192
  store i32 -2139062144, ptr %add.ptr2.5, align 4
  %add.ptr1.6 = getelementptr inbounds i8, ptr %src, i64 196
  store i32 -2139062144, ptr %add.ptr1.6, align 4
  %add.ptr2.6 = getelementptr inbounds i8, ptr %src, i64 224
  store i32 -2139062144, ptr %add.ptr2.6, align 4
  %add.ptr1.7 = getelementptr inbounds i8, ptr %src, i64 228
  store i32 -2139062144, ptr %add.ptr1.7, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @predict_8x8_filter(ptr noundef readonly %src, ptr nocapture noundef writeonly %edge, i32 noundef %i_neighbor, i32 noundef %i_filters) #3 {
entry:
  %and = and i32 %i_neighbor, 8
  %and1 = and i32 %i_filters, 1
  %tobool.not = icmp eq i32 %and1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %arrayidx = getelementptr inbounds i8, ptr %src, i64 -32
  %0 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %0 to i16
  %arrayidx2 = getelementptr inbounds i8, ptr %src, i64 -33
  %1 = load i8, ptr %arrayidx2, align 1
  %conv3 = zext i8 %1 to i16
  %mul = shl nuw nsw i16 %conv3, 1
  %arrayidx4 = getelementptr inbounds i8, ptr %src, i64 -1
  %2 = load i8, ptr %arrayidx4, align 1
  %conv5 = zext i8 %2 to i16
  %add = add nuw nsw i16 %conv, 2
  %add6 = add nuw nsw i16 %add, %mul
  %add7 = add nuw nsw i16 %add6, %conv5
  %shr = lshr i16 %add7, 2
  %conv8 = trunc nuw i16 %shr to i8
  %arrayidx9 = getelementptr inbounds i8, ptr %edge, i64 15
  store i8 %conv8, ptr %arrayidx9, align 1
  %tobool10.not = icmp eq i32 %and, 0
  %arrayidx4.val = load i8, ptr %arrayidx4, align 1
  %arrayidx2.val = load i8, ptr %arrayidx2, align 1
  %cond.in = select i1 %tobool10.not, i8 %arrayidx4.val, i8 %arrayidx2.val
  %cond = zext i8 %cond.in to i16
  %conv16 = zext i8 %arrayidx4.val to i16
  %mul17 = shl nuw nsw i16 %conv16, 1
  %arrayidx19 = getelementptr inbounds i8, ptr %src, i64 31
  %3 = load i8, ptr %arrayidx19, align 1
  %conv20 = zext i8 %3 to i16
  %add18 = add nuw nsw i16 %mul17, 2
  %add21 = add nuw nsw i16 %add18, %cond
  %add22 = add nuw nsw i16 %add21, %conv20
  %shr23 = lshr i16 %add22, 2
  %conv24 = trunc nuw i16 %shr23 to i8
  %arrayidx25 = getelementptr inbounds i8, ptr %edge, i64 14
  store i8 %conv24, ptr %arrayidx25, align 1
  %4 = load i8, ptr %arrayidx4, align 1
  %conv27 = zext i8 %4 to i16
  %5 = load i8, ptr %arrayidx19, align 1
  %conv29 = zext i8 %5 to i16
  %mul30 = shl nuw nsw i16 %conv29, 1
  %arrayidx32 = getelementptr inbounds i8, ptr %src, i64 63
  %6 = load i8, ptr %arrayidx32, align 1
  %conv33 = zext i8 %6 to i16
  %add31 = add nuw nsw i16 %conv27, 2
  %add34 = add nuw nsw i16 %add31, %mul30
  %add35 = add nuw nsw i16 %add34, %conv33
  %shr36 = lshr i16 %add35, 2
  %conv37 = trunc nuw i16 %shr36 to i8
  %arrayidx38 = getelementptr inbounds i8, ptr %edge, i64 13
  store i8 %conv37, ptr %arrayidx38, align 1
  %7 = load i8, ptr %arrayidx19, align 1
  %conv40 = zext i8 %7 to i16
  %8 = load i8, ptr %arrayidx32, align 1
  %conv42 = zext i8 %8 to i16
  %mul43 = shl nuw nsw i16 %conv42, 1
  %arrayidx45 = getelementptr inbounds i8, ptr %src, i64 95
  %9 = load i8, ptr %arrayidx45, align 1
  %conv46 = zext i8 %9 to i16
  %add44 = add nuw nsw i16 %conv40, 2
  %add47 = add nuw nsw i16 %add44, %mul43
  %add48 = add nuw nsw i16 %add47, %conv46
  %shr49 = lshr i16 %add48, 2
  %conv50 = trunc nuw i16 %shr49 to i8
  %arrayidx51 = getelementptr inbounds i8, ptr %edge, i64 12
  store i8 %conv50, ptr %arrayidx51, align 1
  %10 = load i8, ptr %arrayidx32, align 1
  %conv53 = zext i8 %10 to i16
  %11 = load i8, ptr %arrayidx45, align 1
  %conv55 = zext i8 %11 to i16
  %mul56 = shl nuw nsw i16 %conv55, 1
  %arrayidx58 = getelementptr inbounds i8, ptr %src, i64 127
  %12 = load i8, ptr %arrayidx58, align 1
  %conv59 = zext i8 %12 to i16
  %add57 = add nuw nsw i16 %conv53, 2
  %add60 = add nuw nsw i16 %add57, %mul56
  %add61 = add nuw nsw i16 %add60, %conv59
  %shr62 = lshr i16 %add61, 2
  %conv63 = trunc nuw i16 %shr62 to i8
  %arrayidx64 = getelementptr inbounds i8, ptr %edge, i64 11
  store i8 %conv63, ptr %arrayidx64, align 1
  %13 = load i8, ptr %arrayidx45, align 1
  %conv66 = zext i8 %13 to i16
  %14 = load i8, ptr %arrayidx58, align 1
  %conv68 = zext i8 %14 to i16
  %mul69 = shl nuw nsw i16 %conv68, 1
  %arrayidx71 = getelementptr inbounds i8, ptr %src, i64 159
  %15 = load i8, ptr %arrayidx71, align 1
  %conv72 = zext i8 %15 to i16
  %add70 = add nuw nsw i16 %conv66, 2
  %add73 = add nuw nsw i16 %add70, %mul69
  %add74 = add nuw nsw i16 %add73, %conv72
  %shr75 = lshr i16 %add74, 2
  %conv76 = trunc nuw i16 %shr75 to i8
  %arrayidx77 = getelementptr inbounds i8, ptr %edge, i64 10
  store i8 %conv76, ptr %arrayidx77, align 1
  %16 = load i8, ptr %arrayidx58, align 1
  %conv79 = zext i8 %16 to i16
  %17 = load i8, ptr %arrayidx71, align 1
  %conv81 = zext i8 %17 to i16
  %mul82 = shl nuw nsw i16 %conv81, 1
  %arrayidx84 = getelementptr inbounds i8, ptr %src, i64 191
  %18 = load i8, ptr %arrayidx84, align 1
  %conv85 = zext i8 %18 to i16
  %add83 = add nuw nsw i16 %conv79, 2
  %add86 = add nuw nsw i16 %add83, %mul82
  %add87 = add nuw nsw i16 %add86, %conv85
  %shr88 = lshr i16 %add87, 2
  %conv89 = trunc nuw i16 %shr88 to i8
  %arrayidx90 = getelementptr inbounds i8, ptr %edge, i64 9
  store i8 %conv89, ptr %arrayidx90, align 1
  %19 = load i8, ptr %arrayidx71, align 1
  %conv92 = zext i8 %19 to i16
  %20 = load i8, ptr %arrayidx84, align 1
  %conv94 = zext i8 %20 to i16
  %mul95 = shl nuw nsw i16 %conv94, 1
  %arrayidx97 = getelementptr inbounds i8, ptr %src, i64 223
  %21 = load i8, ptr %arrayidx97, align 1
  %conv98 = zext i8 %21 to i16
  %add96 = add nuw nsw i16 %conv92, 2
  %add99 = add nuw nsw i16 %add96, %mul95
  %add100 = add nuw nsw i16 %add99, %conv98
  %shr101 = lshr i16 %add100, 2
  %conv102 = trunc nuw i16 %shr101 to i8
  %arrayidx103 = getelementptr inbounds i8, ptr %edge, i64 8
  store i8 %conv102, ptr %arrayidx103, align 1
  %22 = load i8, ptr %arrayidx84, align 1
  %conv105 = zext i8 %22 to i16
  %23 = load i8, ptr %arrayidx97, align 1
  %conv107 = zext i8 %23 to i16
  %mul108 = mul nuw nsw i16 %conv107, 3
  %add109 = add nuw nsw i16 %conv105, 2
  %add110 = add nuw nsw i16 %add109, %mul108
  %shr111 = lshr i16 %add110, 2
  %conv112 = trunc nuw i16 %shr111 to i8
  %arrayidx113 = getelementptr inbounds i8, ptr %edge, i64 7
  store i8 %conv112, ptr %arrayidx113, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %and114 = and i32 %i_filters, 2
  %tobool115.not = icmp eq i32 %and114, 0
  br i1 %tobool115.not, label %if.end350, label %if.then116

if.then116:                                       ; preds = %if.end
  %and117 = and i32 %i_neighbor, 4
  %tobool118.not = icmp eq i32 %and, 0
  %arrayidx120 = getelementptr inbounds i8, ptr %src, i64 -33
  %arrayidx123 = getelementptr inbounds i8, ptr %src, i64 -32
  %cond126.in.in = select i1 %tobool118.not, ptr %arrayidx123, ptr %arrayidx120
  %cond126.in = load i8, ptr %cond126.in.in, align 1
  %cond126 = zext i8 %cond126.in to i16
  %24 = load i8, ptr %arrayidx123, align 1
  %conv128 = zext i8 %24 to i16
  %mul129 = shl nuw nsw i16 %conv128, 1
  %arrayidx131 = getelementptr inbounds i8, ptr %src, i64 -31
  %25 = load i8, ptr %arrayidx131, align 1
  %conv132 = zext i8 %25 to i16
  %add130 = add nuw nsw i16 %cond126, 2
  %add133 = add nuw nsw i16 %add130, %mul129
  %add134 = add nuw nsw i16 %add133, %conv132
  %shr135 = lshr i16 %add134, 2
  %conv136 = trunc nuw i16 %shr135 to i8
  %arrayidx137 = getelementptr inbounds i8, ptr %edge, i64 16
  store i8 %conv136, ptr %arrayidx137, align 1
  %26 = load i8, ptr %arrayidx123, align 1
  %conv139 = zext i8 %26 to i16
  %27 = load i8, ptr %arrayidx131, align 1
  %conv141 = zext i8 %27 to i16
  %mul142 = shl nuw nsw i16 %conv141, 1
  %arrayidx144 = getelementptr inbounds i8, ptr %src, i64 -30
  %28 = load i8, ptr %arrayidx144, align 1
  %conv145 = zext i8 %28 to i16
  %add143 = add nuw nsw i16 %conv139, 2
  %add146 = add nuw nsw i16 %add143, %mul142
  %add147 = add nuw nsw i16 %add146, %conv145
  %shr148 = lshr i16 %add147, 2
  %conv149 = trunc nuw i16 %shr148 to i8
  %arrayidx150 = getelementptr inbounds i8, ptr %edge, i64 17
  store i8 %conv149, ptr %arrayidx150, align 1
  %29 = load i8, ptr %arrayidx131, align 1
  %conv152 = zext i8 %29 to i16
  %30 = load i8, ptr %arrayidx144, align 1
  %conv154 = zext i8 %30 to i16
  %mul155 = shl nuw nsw i16 %conv154, 1
  %arrayidx157 = getelementptr inbounds i8, ptr %src, i64 -29
  %31 = load i8, ptr %arrayidx157, align 1
  %conv158 = zext i8 %31 to i16
  %add156 = add nuw nsw i16 %conv152, 2
  %add159 = add nuw nsw i16 %add156, %mul155
  %add160 = add nuw nsw i16 %add159, %conv158
  %shr161 = lshr i16 %add160, 2
  %conv162 = trunc nuw i16 %shr161 to i8
  %arrayidx163 = getelementptr inbounds i8, ptr %edge, i64 18
  store i8 %conv162, ptr %arrayidx163, align 1
  %32 = load i8, ptr %arrayidx144, align 1
  %conv165 = zext i8 %32 to i16
  %33 = load i8, ptr %arrayidx157, align 1
  %conv167 = zext i8 %33 to i16
  %mul168 = shl nuw nsw i16 %conv167, 1
  %arrayidx170 = getelementptr inbounds i8, ptr %src, i64 -28
  %34 = load i8, ptr %arrayidx170, align 1
  %conv171 = zext i8 %34 to i16
  %add169 = add nuw nsw i16 %conv165, 2
  %add172 = add nuw nsw i16 %add169, %mul168
  %add173 = add nuw nsw i16 %add172, %conv171
  %shr174 = lshr i16 %add173, 2
  %conv175 = trunc nuw i16 %shr174 to i8
  %arrayidx176 = getelementptr inbounds i8, ptr %edge, i64 19
  store i8 %conv175, ptr %arrayidx176, align 1
  %35 = load i8, ptr %arrayidx157, align 1
  %conv178 = zext i8 %35 to i16
  %36 = load i8, ptr %arrayidx170, align 1
  %conv180 = zext i8 %36 to i16
  %mul181 = shl nuw nsw i16 %conv180, 1
  %arrayidx183 = getelementptr inbounds i8, ptr %src, i64 -27
  %37 = load i8, ptr %arrayidx183, align 1
  %conv184 = zext i8 %37 to i16
  %add182 = add nuw nsw i16 %conv178, 2
  %add185 = add nuw nsw i16 %add182, %mul181
  %add186 = add nuw nsw i16 %add185, %conv184
  %shr187 = lshr i16 %add186, 2
  %conv188 = trunc nuw i16 %shr187 to i8
  %arrayidx189 = getelementptr inbounds i8, ptr %edge, i64 20
  store i8 %conv188, ptr %arrayidx189, align 1
  %38 = load i8, ptr %arrayidx170, align 1
  %conv191 = zext i8 %38 to i16
  %39 = load i8, ptr %arrayidx183, align 1
  %conv193 = zext i8 %39 to i16
  %mul194 = shl nuw nsw i16 %conv193, 1
  %arrayidx196 = getelementptr inbounds i8, ptr %src, i64 -26
  %40 = load i8, ptr %arrayidx196, align 1
  %conv197 = zext i8 %40 to i16
  %add195 = add nuw nsw i16 %conv191, 2
  %add198 = add nuw nsw i16 %add195, %mul194
  %add199 = add nuw nsw i16 %add198, %conv197
  %shr200 = lshr i16 %add199, 2
  %conv201 = trunc nuw i16 %shr200 to i8
  %arrayidx202 = getelementptr inbounds i8, ptr %edge, i64 21
  store i8 %conv201, ptr %arrayidx202, align 1
  %41 = load i8, ptr %arrayidx183, align 1
  %conv204 = zext i8 %41 to i16
  %42 = load i8, ptr %arrayidx196, align 1
  %conv206 = zext i8 %42 to i16
  %mul207 = shl nuw nsw i16 %conv206, 1
  %arrayidx209 = getelementptr inbounds i8, ptr %src, i64 -25
  %43 = load i8, ptr %arrayidx209, align 1
  %conv210 = zext i8 %43 to i16
  %add208 = add nuw nsw i16 %conv204, 2
  %add211 = add nuw nsw i16 %add208, %mul207
  %add212 = add nuw nsw i16 %add211, %conv210
  %shr213 = lshr i16 %add212, 2
  %conv214 = trunc nuw i16 %shr213 to i8
  %arrayidx215 = getelementptr inbounds i8, ptr %edge, i64 22
  store i8 %conv214, ptr %arrayidx215, align 1
  %44 = load i8, ptr %arrayidx196, align 1
  %conv217 = zext i8 %44 to i32
  %45 = load i8, ptr %arrayidx209, align 1
  %conv219 = zext i8 %45 to i32
  %mul220 = shl nuw nsw i32 %conv219, 1
  %add221 = add nuw nsw i32 %mul220, %conv217
  %tobool222.not = icmp eq i32 %and117, 0
  br i1 %tobool222.not, label %cond.end229, label %cond.end229.thread

cond.end229:                                      ; preds = %if.then116
  %add231 = add nuw nsw i32 %add221, 2
  %add232 = add nuw nsw i32 %add231, %conv219
  %shr233 = lshr i32 %add232, 2
  %conv234 = trunc nuw i32 %shr233 to i8
  %arrayidx235 = getelementptr inbounds i8, ptr %edge, i64 23
  store i8 %conv234, ptr %arrayidx235, align 1
  %and236 = and i32 %i_filters, 4
  %tobool237.not = icmp eq i32 %and236, 0
  br i1 %tobool237.not, label %if.end350, label %if.else

cond.end229.thread:                               ; preds = %if.then116
  %arrayidx224 = getelementptr inbounds i8, ptr %src, i64 -24
  %46 = load i8, ptr %arrayidx224, align 1
  %conv225 = zext i8 %46 to i32
  %add231461 = add nuw nsw i32 %add221, 2
  %add232462 = add nuw nsw i32 %add231461, %conv225
  %shr233463 = lshr i32 %add232462, 2
  %conv234464 = trunc nuw i32 %shr233463 to i8
  %arrayidx235465 = getelementptr inbounds i8, ptr %edge, i64 23
  store i8 %conv234464, ptr %arrayidx235465, align 1
  %and236466 = and i32 %i_filters, 4
  %tobool237.not467 = icmp eq i32 %and236466, 0
  br i1 %tobool237.not467, label %if.end350, label %if.then240

if.then240:                                       ; preds = %cond.end229.thread
  %47 = load i8, ptr %arrayidx209, align 1
  %conv242 = zext i8 %47 to i16
  %48 = load i8, ptr %arrayidx224, align 1
  %conv244 = zext i8 %48 to i16
  %mul245 = shl nuw nsw i16 %conv244, 1
  %arrayidx247 = getelementptr inbounds i8, ptr %src, i64 -23
  %49 = load i8, ptr %arrayidx247, align 1
  %conv248 = zext i8 %49 to i16
  %add246 = add nuw nsw i16 %conv242, 2
  %add249 = add nuw nsw i16 %add246, %mul245
  %add250 = add nuw nsw i16 %add249, %conv248
  %shr251 = lshr i16 %add250, 2
  %conv252 = trunc nuw i16 %shr251 to i8
  %arrayidx253 = getelementptr inbounds i8, ptr %edge, i64 24
  store i8 %conv252, ptr %arrayidx253, align 1
  %50 = load i8, ptr %arrayidx224, align 1
  %conv255 = zext i8 %50 to i16
  %51 = load i8, ptr %arrayidx247, align 1
  %conv257 = zext i8 %51 to i16
  %mul258 = shl nuw nsw i16 %conv257, 1
  %arrayidx260 = getelementptr inbounds i8, ptr %src, i64 -22
  %52 = load i8, ptr %arrayidx260, align 1
  %conv261 = zext i8 %52 to i16
  %add259 = add nuw nsw i16 %conv255, 2
  %add262 = add nuw nsw i16 %add259, %mul258
  %add263 = add nuw nsw i16 %add262, %conv261
  %shr264 = lshr i16 %add263, 2
  %conv265 = trunc nuw i16 %shr264 to i8
  %arrayidx266 = getelementptr inbounds i8, ptr %edge, i64 25
  store i8 %conv265, ptr %arrayidx266, align 1
  %53 = load i8, ptr %arrayidx247, align 1
  %conv268 = zext i8 %53 to i16
  %54 = load i8, ptr %arrayidx260, align 1
  %conv270 = zext i8 %54 to i16
  %mul271 = shl nuw nsw i16 %conv270, 1
  %arrayidx273 = getelementptr inbounds i8, ptr %src, i64 -21
  %55 = load i8, ptr %arrayidx273, align 1
  %conv274 = zext i8 %55 to i16
  %add272 = add nuw nsw i16 %conv268, 2
  %add275 = add nuw nsw i16 %add272, %mul271
  %add276 = add nuw nsw i16 %add275, %conv274
  %shr277 = lshr i16 %add276, 2
  %conv278 = trunc nuw i16 %shr277 to i8
  %arrayidx279 = getelementptr inbounds i8, ptr %edge, i64 26
  store i8 %conv278, ptr %arrayidx279, align 1
  %56 = load i8, ptr %arrayidx260, align 1
  %conv281 = zext i8 %56 to i16
  %57 = load i8, ptr %arrayidx273, align 1
  %conv283 = zext i8 %57 to i16
  %mul284 = shl nuw nsw i16 %conv283, 1
  %arrayidx286 = getelementptr inbounds i8, ptr %src, i64 -20
  %58 = load i8, ptr %arrayidx286, align 1
  %conv287 = zext i8 %58 to i16
  %add285 = add nuw nsw i16 %conv281, 2
  %add288 = add nuw nsw i16 %add285, %mul284
  %add289 = add nuw nsw i16 %add288, %conv287
  %shr290 = lshr i16 %add289, 2
  %conv291 = trunc nuw i16 %shr290 to i8
  %arrayidx292 = getelementptr inbounds i8, ptr %edge, i64 27
  store i8 %conv291, ptr %arrayidx292, align 1
  %59 = load i8, ptr %arrayidx273, align 1
  %conv294 = zext i8 %59 to i16
  %60 = load i8, ptr %arrayidx286, align 1
  %conv296 = zext i8 %60 to i16
  %mul297 = shl nuw nsw i16 %conv296, 1
  %arrayidx299 = getelementptr inbounds i8, ptr %src, i64 -19
  %61 = load i8, ptr %arrayidx299, align 1
  %conv300 = zext i8 %61 to i16
  %add298 = add nuw nsw i16 %conv294, 2
  %add301 = add nuw nsw i16 %add298, %mul297
  %add302 = add nuw nsw i16 %add301, %conv300
  %shr303 = lshr i16 %add302, 2
  %conv304 = trunc nuw i16 %shr303 to i8
  %arrayidx305 = getelementptr inbounds i8, ptr %edge, i64 28
  store i8 %conv304, ptr %arrayidx305, align 1
  %62 = load i8, ptr %arrayidx286, align 1
  %conv307 = zext i8 %62 to i16
  %63 = load i8, ptr %arrayidx299, align 1
  %conv309 = zext i8 %63 to i16
  %mul310 = shl nuw nsw i16 %conv309, 1
  %arrayidx312 = getelementptr inbounds i8, ptr %src, i64 -18
  %64 = load i8, ptr %arrayidx312, align 1
  %conv313 = zext i8 %64 to i16
  %add311 = add nuw nsw i16 %conv307, 2
  %add314 = add nuw nsw i16 %add311, %mul310
  %add315 = add nuw nsw i16 %add314, %conv313
  %shr316 = lshr i16 %add315, 2
  %conv317 = trunc nuw i16 %shr316 to i8
  %arrayidx318 = getelementptr inbounds i8, ptr %edge, i64 29
  store i8 %conv317, ptr %arrayidx318, align 1
  %65 = load i8, ptr %arrayidx299, align 1
  %conv320 = zext i8 %65 to i16
  %66 = load i8, ptr %arrayidx312, align 1
  %conv322 = zext i8 %66 to i16
  %mul323 = shl nuw nsw i16 %conv322, 1
  %arrayidx325 = getelementptr inbounds i8, ptr %src, i64 -17
  %67 = load i8, ptr %arrayidx325, align 1
  %conv326 = zext i8 %67 to i16
  %add324 = add nuw nsw i16 %conv320, 2
  %add327 = add nuw nsw i16 %add324, %mul323
  %add328 = add nuw nsw i16 %add327, %conv326
  %shr329 = lshr i16 %add328, 2
  %conv330 = trunc nuw i16 %shr329 to i8
  %arrayidx331 = getelementptr inbounds i8, ptr %edge, i64 30
  store i8 %conv330, ptr %arrayidx331, align 1
  %68 = load i8, ptr %arrayidx312, align 1
  %conv333 = zext i8 %68 to i16
  %69 = load i8, ptr %arrayidx325, align 1
  %conv335 = zext i8 %69 to i16
  %mul336 = mul nuw nsw i16 %conv335, 3
  %add337 = add nuw nsw i16 %conv333, 2
  %add338 = add nuw nsw i16 %add337, %mul336
  %shr339 = lshr i16 %add338, 2
  %conv340 = trunc nuw i16 %shr339 to i8
  %arrayidx341 = getelementptr inbounds i8, ptr %edge, i64 32
  store i8 %conv340, ptr %arrayidx341, align 1
  br label %if.end350.sink.split

if.else:                                          ; preds = %cond.end229
  %70 = load i8, ptr %arrayidx209, align 1
  %conv344 = zext i8 %70 to i64
  %mul345 = mul nuw i64 %conv344, 72340172838076673
  %add.ptr = getelementptr inbounds i8, ptr %edge, i64 24
  store i64 %mul345, ptr %add.ptr, align 8
  %71 = load i8, ptr %arrayidx209, align 1
  br label %if.end350.sink.split

if.end350.sink.split:                             ; preds = %if.then240, %if.else
  %.sink468 = phi i64 [ 32, %if.else ], [ 31, %if.then240 ]
  %.sink = phi i8 [ %71, %if.else ], [ %conv340, %if.then240 ]
  %arrayidx347 = getelementptr inbounds i8, ptr %edge, i64 %.sink468
  store i8 %.sink, ptr %arrayidx347, align 1
  br label %if.end350

if.end350:                                        ; preds = %if.end350.sink.split, %cond.end229.thread, %cond.end229, %if.end
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @x264_predict_4x4_init(i32 noundef %cpu, ptr nocapture noundef writeonly %pf) local_unnamed_addr #0 {
entry:
  store ptr @predict_4x4_v, ptr %pf, align 8
  %arrayidx1 = getelementptr inbounds i8, ptr %pf, i64 8
  store ptr @predict_4x4_h, ptr %arrayidx1, align 8
  %arrayidx2 = getelementptr inbounds i8, ptr %pf, i64 16
  store ptr @predict_4x4_dc, ptr %arrayidx2, align 8
  %arrayidx3 = getelementptr inbounds i8, ptr %pf, i64 24
  store ptr @predict_4x4_ddl, ptr %arrayidx3, align 8
  %arrayidx4 = getelementptr inbounds i8, ptr %pf, i64 32
  store ptr @predict_4x4_ddr, ptr %arrayidx4, align 8
  %arrayidx5 = getelementptr inbounds i8, ptr %pf, i64 40
  store ptr @predict_4x4_vr, ptr %arrayidx5, align 8
  %arrayidx6 = getelementptr inbounds i8, ptr %pf, i64 48
  store ptr @predict_4x4_hd, ptr %arrayidx6, align 8
  %arrayidx7 = getelementptr inbounds i8, ptr %pf, i64 56
  store ptr @predict_4x4_vl, ptr %arrayidx7, align 8
  %arrayidx8 = getelementptr inbounds i8, ptr %pf, i64 64
  store ptr @predict_4x4_hu, ptr %arrayidx8, align 8
  %arrayidx9 = getelementptr inbounds i8, ptr %pf, i64 72
  store ptr @predict_4x4_dc_left, ptr %arrayidx9, align 8
  %arrayidx10 = getelementptr inbounds i8, ptr %pf, i64 80
  store ptr @predict_4x4_dc_top, ptr %arrayidx10, align 8
  %arrayidx11 = getelementptr inbounds i8, ptr %pf, i64 88
  store ptr @predict_4x4_dc_128, ptr %arrayidx11, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @predict_4x4_v(ptr nocapture noundef %src) #1 {
entry:
  %arrayidx = getelementptr inbounds i8, ptr %src, i64 -32
  %0 = load i32, ptr %arrayidx, align 4
  %arrayidx1 = getelementptr inbounds i8, ptr %src, i64 96
  store i32 %0, ptr %arrayidx1, align 4
  %arrayidx2 = getelementptr inbounds i8, ptr %src, i64 64
  store i32 %0, ptr %arrayidx2, align 4
  %arrayidx3 = getelementptr inbounds i8, ptr %src, i64 32
  store i32 %0, ptr %arrayidx3, align 4
  store i32 %0, ptr %src, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @predict_4x4_h(ptr nocapture noundef %src) #1 {
entry:
  %arrayidx = getelementptr inbounds i8, ptr %src, i64 -1
  %0 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %0 to i32
  %mul = mul nuw nsw i32 %conv, 16843009
  store i32 %mul, ptr %src, align 4
  %arrayidx2 = getelementptr inbounds i8, ptr %src, i64 31
  %1 = load i8, ptr %arrayidx2, align 1
  %conv3 = zext i8 %1 to i32
  %mul4 = mul nuw nsw i32 %conv3, 16843009
  %arrayidx5 = getelementptr inbounds i8, ptr %src, i64 32
  store i32 %mul4, ptr %arrayidx5, align 4
  %arrayidx6 = getelementptr inbounds i8, ptr %src, i64 63
  %2 = load i8, ptr %arrayidx6, align 1
  %conv7 = zext i8 %2 to i32
  %mul8 = mul nuw nsw i32 %conv7, 16843009
  %arrayidx9 = getelementptr inbounds i8, ptr %src, i64 64
  store i32 %mul8, ptr %arrayidx9, align 4
  %arrayidx10 = getelementptr inbounds i8, ptr %src, i64 95
  %3 = load i8, ptr %arrayidx10, align 1
  %conv11 = zext i8 %3 to i32
  %mul12 = mul nuw nsw i32 %conv11, 16843009
  %arrayidx13 = getelementptr inbounds i8, ptr %src, i64 96
  store i32 %mul12, ptr %arrayidx13, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @predict_4x4_dc(ptr nocapture noundef %src) #1 {
entry:
  %arrayidx = getelementptr inbounds i8, ptr %src, i64 -1
  %0 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %0 to i32
  %arrayidx1 = getelementptr inbounds i8, ptr %src, i64 31
  %1 = load i8, ptr %arrayidx1, align 1
  %conv2 = zext i8 %1 to i32
  %arrayidx3 = getelementptr inbounds i8, ptr %src, i64 63
  %2 = load i8, ptr %arrayidx3, align 1
  %conv4 = zext i8 %2 to i32
  %arrayidx6 = getelementptr inbounds i8, ptr %src, i64 95
  %3 = load i8, ptr %arrayidx6, align 1
  %conv7 = zext i8 %3 to i32
  %arrayidx9 = getelementptr inbounds i8, ptr %src, i64 -32
  %4 = load i8, ptr %arrayidx9, align 1
  %conv10 = zext i8 %4 to i32
  %arrayidx12 = getelementptr inbounds i8, ptr %src, i64 -31
  %5 = load i8, ptr %arrayidx12, align 1
  %conv13 = zext i8 %5 to i32
  %arrayidx15 = getelementptr inbounds i8, ptr %src, i64 -30
  %6 = load i8, ptr %arrayidx15, align 1
  %conv16 = zext i8 %6 to i32
  %arrayidx18 = getelementptr inbounds i8, ptr %src, i64 -29
  %7 = load i8, ptr %arrayidx18, align 1
  %conv19 = zext i8 %7 to i32
  %add = add nuw nsw i32 %conv, 4
  %add5 = add nuw nsw i32 %add, %conv2
  %add8 = add nuw nsw i32 %add5, %conv4
  %add11 = add nuw nsw i32 %add8, %conv7
  %add14 = add nuw nsw i32 %add11, %conv10
  %add17 = add nuw nsw i32 %add14, %conv13
  %add20 = add nuw nsw i32 %add17, %conv16
  %add21 = add nuw nsw i32 %add20, %conv19
  %shr = lshr i32 %add21, 3
  %mul = mul nuw nsw i32 %shr, 16843009
  %arrayidx22 = getelementptr inbounds i8, ptr %src, i64 96
  store i32 %mul, ptr %arrayidx22, align 4
  %arrayidx23 = getelementptr inbounds i8, ptr %src, i64 64
  store i32 %mul, ptr %arrayidx23, align 4
  %arrayidx24 = getelementptr inbounds i8, ptr %src, i64 32
  store i32 %mul, ptr %arrayidx24, align 4
  store i32 %mul, ptr %src, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @predict_4x4_ddl(ptr nocapture noundef %src) #1 {
entry:
  %arrayidx = getelementptr inbounds i8, ptr %src, i64 -32
  %0 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %0 to i32
  %arrayidx1 = getelementptr inbounds i8, ptr %src, i64 -31
  %1 = load i8, ptr %arrayidx1, align 1
  %conv2 = zext i8 %1 to i32
  %arrayidx3 = getelementptr inbounds i8, ptr %src, i64 -30
  %2 = load i8, ptr %arrayidx3, align 1
  %conv4 = zext i8 %2 to i32
  %arrayidx5 = getelementptr inbounds i8, ptr %src, i64 -29
  %3 = load i8, ptr %arrayidx5, align 1
  %conv6 = zext i8 %3 to i32
  %arrayidx7 = getelementptr inbounds i8, ptr %src, i64 -28
  %4 = load i8, ptr %arrayidx7, align 1
  %conv8 = zext i8 %4 to i32
  %arrayidx9 = getelementptr inbounds i8, ptr %src, i64 -27
  %5 = load i8, ptr %arrayidx9, align 1
  %conv10 = zext i8 %5 to i32
  %arrayidx11 = getelementptr inbounds i8, ptr %src, i64 -26
  %6 = load i8, ptr %arrayidx11, align 1
  %conv12 = zext i8 %6 to i32
  %arrayidx13 = getelementptr inbounds i8, ptr %src, i64 -25
  %7 = load i8, ptr %arrayidx13, align 1
  %conv14 = zext i8 %7 to i32
  %mul = shl nuw nsw i32 %conv2, 1
  %add = add nuw nsw i32 %conv4, 2
  %add15 = add nuw nsw i32 %add, %conv
  %add16 = add nuw nsw i32 %add15, %mul
  %shr = lshr i32 %add16, 2
  %conv17 = trunc nuw i32 %shr to i8
  store i8 %conv17, ptr %src, align 1
  %mul19 = shl nuw nsw i32 %conv4, 1
  %add20 = add nuw nsw i32 %conv6, 2
  %add21 = add nuw nsw i32 %add20, %conv2
  %add22 = add nuw nsw i32 %add21, %mul19
  %shr23 = lshr i32 %add22, 2
  %conv24 = trunc nuw i32 %shr23 to i8
  %arrayidx25 = getelementptr inbounds i8, ptr %src, i64 32
  store i8 %conv24, ptr %arrayidx25, align 1
  %arrayidx26 = getelementptr inbounds i8, ptr %src, i64 1
  store i8 %conv24, ptr %arrayidx26, align 1
  %mul27 = shl nuw nsw i32 %conv6, 1
  %add29 = add nuw nsw i32 %add, %mul27
  %add30 = add nuw nsw i32 %add29, %conv8
  %shr31 = lshr i32 %add30, 2
  %conv32 = trunc nuw i32 %shr31 to i8
  %arrayidx33 = getelementptr inbounds i8, ptr %src, i64 64
  store i8 %conv32, ptr %arrayidx33, align 1
  %arrayidx34 = getelementptr inbounds i8, ptr %src, i64 33
  store i8 %conv32, ptr %arrayidx34, align 1
  %arrayidx35 = getelementptr inbounds i8, ptr %src, i64 2
  store i8 %conv32, ptr %arrayidx35, align 1
  %mul36 = shl nuw nsw i32 %conv8, 1
  %add38 = add nuw nsw i32 %add20, %mul36
  %add39 = add nuw nsw i32 %add38, %conv10
  %shr40 = lshr i32 %add39, 2
  %conv41 = trunc nuw i32 %shr40 to i8
  %arrayidx42 = getelementptr inbounds i8, ptr %src, i64 96
  store i8 %conv41, ptr %arrayidx42, align 1
  %arrayidx43 = getelementptr inbounds i8, ptr %src, i64 65
  store i8 %conv41, ptr %arrayidx43, align 1
  %arrayidx44 = getelementptr inbounds i8, ptr %src, i64 34
  store i8 %conv41, ptr %arrayidx44, align 1
  %arrayidx45 = getelementptr inbounds i8, ptr %src, i64 3
  store i8 %conv41, ptr %arrayidx45, align 1
  %mul46 = shl nuw nsw i32 %conv10, 1
  %add47 = add nuw nsw i32 %conv8, 2
  %add48 = add nuw nsw i32 %add47, %mul46
  %add49 = add nuw nsw i32 %add48, %conv12
  %shr50 = lshr i32 %add49, 2
  %conv51 = trunc nuw i32 %shr50 to i8
  %arrayidx52 = getelementptr inbounds i8, ptr %src, i64 97
  store i8 %conv51, ptr %arrayidx52, align 1
  %arrayidx53 = getelementptr inbounds i8, ptr %src, i64 66
  store i8 %conv51, ptr %arrayidx53, align 1
  %arrayidx54 = getelementptr inbounds i8, ptr %src, i64 35
  store i8 %conv51, ptr %arrayidx54, align 1
  %mul55 = shl nuw nsw i32 %conv12, 1
  %add56 = add nuw nsw i32 %conv10, 2
  %add57 = add nuw nsw i32 %add56, %mul55
  %add58 = add nuw nsw i32 %add57, %conv14
  %shr59 = lshr i32 %add58, 2
  %conv60 = trunc nuw i32 %shr59 to i8
  %arrayidx61 = getelementptr inbounds i8, ptr %src, i64 98
  store i8 %conv60, ptr %arrayidx61, align 1
  %arrayidx62 = getelementptr inbounds i8, ptr %src, i64 67
  store i8 %conv60, ptr %arrayidx62, align 1
  %mul63 = shl nuw nsw i32 %conv14, 1
  %add64 = add nuw nsw i32 %conv12, 2
  %add65 = add nuw nsw i32 %add64, %conv14
  %add66 = add nuw nsw i32 %add65, %mul63
  %shr67 = lshr i32 %add66, 2
  %conv68 = trunc nuw i32 %shr67 to i8
  %arrayidx69 = getelementptr inbounds i8, ptr %src, i64 99
  store i8 %conv68, ptr %arrayidx69, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @predict_4x4_ddr(ptr nocapture noundef %src) #1 {
entry:
  %arrayidx = getelementptr inbounds i8, ptr %src, i64 -33
  %0 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %0 to i32
  %arrayidx1 = getelementptr inbounds i8, ptr %src, i64 -1
  %1 = load i8, ptr %arrayidx1, align 1
  %conv2 = zext i8 %1 to i32
  %arrayidx3 = getelementptr inbounds i8, ptr %src, i64 31
  %2 = load i8, ptr %arrayidx3, align 1
  %conv4 = zext i8 %2 to i32
  %arrayidx5 = getelementptr inbounds i8, ptr %src, i64 63
  %3 = load i8, ptr %arrayidx5, align 1
  %conv6 = zext i8 %3 to i32
  %arrayidx7 = getelementptr inbounds i8, ptr %src, i64 95
  %4 = load i8, ptr %arrayidx7, align 1
  %conv8 = zext i8 %4 to i32
  %arrayidx9 = getelementptr inbounds i8, ptr %src, i64 -32
  %5 = load i8, ptr %arrayidx9, align 1
  %conv10 = zext i8 %5 to i32
  %arrayidx11 = getelementptr inbounds i8, ptr %src, i64 -31
  %6 = load i8, ptr %arrayidx11, align 1
  %conv12 = zext i8 %6 to i32
  %arrayidx13 = getelementptr inbounds i8, ptr %src, i64 -30
  %7 = load i8, ptr %arrayidx13, align 1
  %conv14 = zext i8 %7 to i32
  %arrayidx15 = getelementptr inbounds i8, ptr %src, i64 -29
  %8 = load i8, ptr %arrayidx15, align 1
  %conv16 = zext i8 %8 to i32
  %mul = shl nuw nsw i32 %conv14, 1
  %add = add nuw nsw i32 %conv12, 2
  %add17 = add nuw nsw i32 %add, %conv16
  %add18 = add nuw nsw i32 %add17, %mul
  %shr = lshr i32 %add18, 2
  %conv19 = trunc nuw i32 %shr to i8
  %arrayidx20 = getelementptr inbounds i8, ptr %src, i64 3
  store i8 %conv19, ptr %arrayidx20, align 1
  %mul21 = shl nuw nsw i32 %conv12, 1
  %add22 = add nuw nsw i32 %conv10, 2
  %add23 = add nuw nsw i32 %add22, %conv14
  %add24 = add nuw nsw i32 %add23, %mul21
  %shr25 = lshr i32 %add24, 2
  %conv26 = trunc nuw i32 %shr25 to i8
  %arrayidx27 = getelementptr inbounds i8, ptr %src, i64 35
  store i8 %conv26, ptr %arrayidx27, align 1
  %arrayidx28 = getelementptr inbounds i8, ptr %src, i64 2
  store i8 %conv26, ptr %arrayidx28, align 1
  %mul29 = shl nuw nsw i32 %conv10, 1
  %add30 = add nuw nsw i32 %conv, 2
  %add31 = add nuw nsw i32 %add30, %conv12
  %add32 = add nuw nsw i32 %add31, %mul29
  %shr33 = lshr i32 %add32, 2
  %conv34 = trunc nuw i32 %shr33 to i8
  %arrayidx35 = getelementptr inbounds i8, ptr %src, i64 67
  store i8 %conv34, ptr %arrayidx35, align 1
  %arrayidx36 = getelementptr inbounds i8, ptr %src, i64 34
  store i8 %conv34, ptr %arrayidx36, align 1
  %arrayidx37 = getelementptr inbounds i8, ptr %src, i64 1
  store i8 %conv34, ptr %arrayidx37, align 1
  %mul38 = shl nuw nsw i32 %conv, 1
  %add39 = add nuw nsw i32 %conv2, 2
  %add40 = add nuw nsw i32 %add39, %mul38
  %add41 = add nuw nsw i32 %add40, %conv10
  %shr42 = lshr i32 %add41, 2
  %conv43 = trunc nuw i32 %shr42 to i8
  %arrayidx44 = getelementptr inbounds i8, ptr %src, i64 99
  store i8 %conv43, ptr %arrayidx44, align 1
  %arrayidx45 = getelementptr inbounds i8, ptr %src, i64 66
  store i8 %conv43, ptr %arrayidx45, align 1
  %arrayidx46 = getelementptr inbounds i8, ptr %src, i64 33
  store i8 %conv43, ptr %arrayidx46, align 1
  store i8 %conv43, ptr %src, align 1
  %mul48 = shl nuw nsw i32 %conv2, 1
  %add50 = add nuw nsw i32 %add30, %mul48
  %add51 = add nuw nsw i32 %add50, %conv4
  %shr52 = lshr i32 %add51, 2
  %conv53 = trunc nuw i32 %shr52 to i8
  %arrayidx54 = getelementptr inbounds i8, ptr %src, i64 98
  store i8 %conv53, ptr %arrayidx54, align 1
  %arrayidx55 = getelementptr inbounds i8, ptr %src, i64 65
  store i8 %conv53, ptr %arrayidx55, align 1
  %arrayidx56 = getelementptr inbounds i8, ptr %src, i64 32
  store i8 %conv53, ptr %arrayidx56, align 1
  %mul57 = shl nuw nsw i32 %conv4, 1
  %add59 = add nuw nsw i32 %add39, %mul57
  %add60 = add nuw nsw i32 %add59, %conv6
  %shr61 = lshr i32 %add60, 2
  %conv62 = trunc nuw i32 %shr61 to i8
  %arrayidx63 = getelementptr inbounds i8, ptr %src, i64 97
  store i8 %conv62, ptr %arrayidx63, align 1
  %arrayidx64 = getelementptr inbounds i8, ptr %src, i64 64
  store i8 %conv62, ptr %arrayidx64, align 1
  %mul65 = shl nuw nsw i32 %conv6, 1
  %add66 = add nuw nsw i32 %conv4, 2
  %add67 = add nuw nsw i32 %add66, %mul65
  %add68 = add nuw nsw i32 %add67, %conv8
  %shr69 = lshr i32 %add68, 2
  %conv70 = trunc nuw i32 %shr69 to i8
  %arrayidx71 = getelementptr inbounds i8, ptr %src, i64 96
  store i8 %conv70, ptr %arrayidx71, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @predict_4x4_vr(ptr nocapture noundef %src) #1 {
entry:
  %arrayidx = getelementptr inbounds i8, ptr %src, i64 -33
  %0 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %0 to i32
  %arrayidx1 = getelementptr inbounds i8, ptr %src, i64 -1
  %1 = load i8, ptr %arrayidx1, align 1
  %conv2 = zext i8 %1 to i32
  %arrayidx3 = getelementptr inbounds i8, ptr %src, i64 31
  %2 = load i8, ptr %arrayidx3, align 1
  %conv4 = zext i8 %2 to i32
  %arrayidx5 = getelementptr inbounds i8, ptr %src, i64 63
  %3 = load i8, ptr %arrayidx5, align 1
  %conv6 = zext i8 %3 to i32
  %arrayidx9 = getelementptr inbounds i8, ptr %src, i64 -32
  %4 = load i8, ptr %arrayidx9, align 1
  %conv10 = zext i8 %4 to i32
  %arrayidx11 = getelementptr inbounds i8, ptr %src, i64 -31
  %5 = load i8, ptr %arrayidx11, align 1
  %conv12 = zext i8 %5 to i32
  %arrayidx13 = getelementptr inbounds i8, ptr %src, i64 -30
  %6 = load i8, ptr %arrayidx13, align 1
  %conv14 = zext i8 %6 to i32
  %arrayidx15 = getelementptr inbounds i8, ptr %src, i64 -29
  %7 = load i8, ptr %arrayidx15, align 1
  %conv16 = zext i8 %7 to i32
  %mul = shl nuw nsw i32 %conv4, 1
  %add = add nuw nsw i32 %conv2, 2
  %add17 = add nuw nsw i32 %add, %conv6
  %add18 = add nuw nsw i32 %add17, %mul
  %shr = lshr i32 %add18, 2
  %conv19 = trunc nuw i32 %shr to i8
  %arrayidx20 = getelementptr inbounds i8, ptr %src, i64 96
  store i8 %conv19, ptr %arrayidx20, align 1
  %mul21 = shl nuw nsw i32 %conv2, 1
  %add22 = add nuw nsw i32 %conv, 2
  %add23 = add nuw nsw i32 %add22, %conv4
  %add24 = add nuw nsw i32 %add23, %mul21
  %shr25 = lshr i32 %add24, 2
  %conv26 = trunc nuw i32 %shr25 to i8
  %arrayidx27 = getelementptr inbounds i8, ptr %src, i64 64
  store i8 %conv26, ptr %arrayidx27, align 1
  %mul28 = shl nuw nsw i32 %conv, 1
  %add30 = add nuw nsw i32 %add, %mul28
  %add31 = add nuw nsw i32 %add30, %conv10
  %shr32 = lshr i32 %add31, 2
  %conv33 = trunc nuw i32 %shr32 to i8
  %arrayidx34 = getelementptr inbounds i8, ptr %src, i64 97
  store i8 %conv33, ptr %arrayidx34, align 1
  %arrayidx35 = getelementptr inbounds i8, ptr %src, i64 32
  store i8 %conv33, ptr %arrayidx35, align 1
  %add36 = add nuw nsw i32 %conv10, 1
  %add37 = add nuw nsw i32 %add36, %conv
  %shr38 = lshr i32 %add37, 1
  %conv39 = trunc nuw i32 %shr38 to i8
  %arrayidx40 = getelementptr inbounds i8, ptr %src, i64 65
  store i8 %conv39, ptr %arrayidx40, align 1
  store i8 %conv39, ptr %src, align 1
  %mul42 = shl nuw nsw i32 %conv10, 1
  %add44 = add nuw nsw i32 %add22, %mul42
  %add45 = add nuw nsw i32 %add44, %conv12
  %shr46 = lshr i32 %add45, 2
  %conv47 = trunc nuw i32 %shr46 to i8
  %arrayidx48 = getelementptr inbounds i8, ptr %src, i64 98
  store i8 %conv47, ptr %arrayidx48, align 1
  %arrayidx49 = getelementptr inbounds i8, ptr %src, i64 33
  store i8 %conv47, ptr %arrayidx49, align 1
  %add51 = add nuw nsw i32 %add36, %conv12
  %shr52 = lshr i32 %add51, 1
  %conv53 = trunc nuw i32 %shr52 to i8
  %arrayidx54 = getelementptr inbounds i8, ptr %src, i64 66
  store i8 %conv53, ptr %arrayidx54, align 1
  %arrayidx55 = getelementptr inbounds i8, ptr %src, i64 1
  store i8 %conv53, ptr %arrayidx55, align 1
  %mul56 = shl nuw nsw i32 %conv12, 1
  %add57 = add nuw nsw i32 %conv10, 2
  %add58 = add nuw nsw i32 %add57, %mul56
  %add59 = add nuw nsw i32 %add58, %conv14
  %shr60 = lshr i32 %add59, 2
  %conv61 = trunc nuw i32 %shr60 to i8
  %arrayidx62 = getelementptr inbounds i8, ptr %src, i64 99
  store i8 %conv61, ptr %arrayidx62, align 1
  %arrayidx63 = getelementptr inbounds i8, ptr %src, i64 34
  store i8 %conv61, ptr %arrayidx63, align 1
  %add64 = add nuw nsw i32 %conv12, 1
  %add65 = add nuw nsw i32 %add64, %conv14
  %shr66 = lshr i32 %add65, 1
  %conv67 = trunc nuw i32 %shr66 to i8
  %arrayidx68 = getelementptr inbounds i8, ptr %src, i64 67
  store i8 %conv67, ptr %arrayidx68, align 1
  %arrayidx69 = getelementptr inbounds i8, ptr %src, i64 2
  store i8 %conv67, ptr %arrayidx69, align 1
  %mul70 = shl nuw nsw i32 %conv14, 1
  %add71 = add nuw nsw i32 %conv12, 2
  %add72 = add nuw nsw i32 %add71, %mul70
  %add73 = add nuw nsw i32 %add72, %conv16
  %shr74 = lshr i32 %add73, 2
  %conv75 = trunc nuw i32 %shr74 to i8
  %arrayidx76 = getelementptr inbounds i8, ptr %src, i64 35
  store i8 %conv75, ptr %arrayidx76, align 1
  %add77 = add nuw nsw i32 %conv14, 1
  %add78 = add nuw nsw i32 %add77, %conv16
  %shr79 = lshr i32 %add78, 1
  %conv80 = trunc nuw i32 %shr79 to i8
  %arrayidx81 = getelementptr inbounds i8, ptr %src, i64 3
  store i8 %conv80, ptr %arrayidx81, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @predict_4x4_hd(ptr nocapture noundef %src) #1 {
entry:
  %arrayidx = getelementptr inbounds i8, ptr %src, i64 -33
  %0 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %0 to i32
  %arrayidx1 = getelementptr inbounds i8, ptr %src, i64 -1
  %1 = load i8, ptr %arrayidx1, align 1
  %conv2 = zext i8 %1 to i32
  %arrayidx3 = getelementptr inbounds i8, ptr %src, i64 31
  %2 = load i8, ptr %arrayidx3, align 1
  %conv4 = zext i8 %2 to i32
  %arrayidx5 = getelementptr inbounds i8, ptr %src, i64 63
  %3 = load i8, ptr %arrayidx5, align 1
  %conv6 = zext i8 %3 to i32
  %arrayidx7 = getelementptr inbounds i8, ptr %src, i64 95
  %4 = load i8, ptr %arrayidx7, align 1
  %conv8 = zext i8 %4 to i32
  %arrayidx9 = getelementptr inbounds i8, ptr %src, i64 -32
  %5 = load i8, ptr %arrayidx9, align 1
  %conv10 = zext i8 %5 to i32
  %arrayidx11 = getelementptr inbounds i8, ptr %src, i64 -31
  %6 = load i8, ptr %arrayidx11, align 1
  %conv12 = zext i8 %6 to i32
  %arrayidx13 = getelementptr inbounds i8, ptr %src, i64 -30
  %7 = load i8, ptr %arrayidx13, align 1
  %conv14 = zext i8 %7 to i32
  %add = add nuw nsw i32 %conv6, 1
  %add17 = add nuw nsw i32 %add, %conv8
  %shr = lshr i32 %add17, 1
  %conv18 = trunc nuw i32 %shr to i8
  %arrayidx19 = getelementptr inbounds i8, ptr %src, i64 96
  store i8 %conv18, ptr %arrayidx19, align 1
  %mul = shl nuw nsw i32 %conv6, 1
  %add20 = add nuw nsw i32 %conv4, 2
  %add21 = add nuw nsw i32 %add20, %mul
  %add22 = add nuw nsw i32 %add21, %conv8
  %shr23 = lshr i32 %add22, 2
  %conv24 = trunc nuw i32 %shr23 to i8
  %arrayidx25 = getelementptr inbounds i8, ptr %src, i64 97
  store i8 %conv24, ptr %arrayidx25, align 1
  %add26 = add nuw nsw i32 %conv4, 1
  %add27 = add nuw nsw i32 %add26, %conv6
  %shr28 = lshr i32 %add27, 1
  %conv29 = trunc nuw i32 %shr28 to i8
  %arrayidx30 = getelementptr inbounds i8, ptr %src, i64 98
  store i8 %conv29, ptr %arrayidx30, align 1
  %arrayidx31 = getelementptr inbounds i8, ptr %src, i64 64
  store i8 %conv29, ptr %arrayidx31, align 1
  %mul32 = shl nuw nsw i32 %conv4, 1
  %add33 = add nuw nsw i32 %conv2, 2
  %add34 = add nuw nsw i32 %add33, %mul32
  %add35 = add nuw nsw i32 %add34, %conv6
  %shr36 = lshr i32 %add35, 2
  %conv37 = trunc nuw i32 %shr36 to i8
  %arrayidx38 = getelementptr inbounds i8, ptr %src, i64 99
  store i8 %conv37, ptr %arrayidx38, align 1
  %arrayidx39 = getelementptr inbounds i8, ptr %src, i64 65
  store i8 %conv37, ptr %arrayidx39, align 1
  %add40 = add nuw nsw i32 %conv2, 1
  %add41 = add nuw nsw i32 %add40, %conv4
  %shr42 = lshr i32 %add41, 1
  %conv43 = trunc nuw i32 %shr42 to i8
  %arrayidx44 = getelementptr inbounds i8, ptr %src, i64 66
  store i8 %conv43, ptr %arrayidx44, align 1
  %arrayidx45 = getelementptr inbounds i8, ptr %src, i64 32
  store i8 %conv43, ptr %arrayidx45, align 1
  %mul46 = shl nuw nsw i32 %conv2, 1
  %add47 = add nuw nsw i32 %conv, 2
  %add48 = add nuw nsw i32 %add47, %mul46
  %add49 = add nuw nsw i32 %add48, %conv4
  %shr50 = lshr i32 %add49, 2
  %conv51 = trunc nuw i32 %shr50 to i8
  %arrayidx52 = getelementptr inbounds i8, ptr %src, i64 67
  store i8 %conv51, ptr %arrayidx52, align 1
  %arrayidx53 = getelementptr inbounds i8, ptr %src, i64 33
  store i8 %conv51, ptr %arrayidx53, align 1
  %add55 = add nuw nsw i32 %add40, %conv
  %shr56 = lshr i32 %add55, 1
  %conv57 = trunc nuw i32 %shr56 to i8
  %arrayidx58 = getelementptr inbounds i8, ptr %src, i64 34
  store i8 %conv57, ptr %arrayidx58, align 1
  store i8 %conv57, ptr %src, align 1
  %mul60 = shl nuw nsw i32 %conv, 1
  %add62 = add nuw nsw i32 %add33, %mul60
  %add63 = add nuw nsw i32 %add62, %conv10
  %shr64 = lshr i32 %add63, 2
  %conv65 = trunc nuw i32 %shr64 to i8
  %arrayidx66 = getelementptr inbounds i8, ptr %src, i64 35
  store i8 %conv65, ptr %arrayidx66, align 1
  %arrayidx67 = getelementptr inbounds i8, ptr %src, i64 1
  store i8 %conv65, ptr %arrayidx67, align 1
  %mul68 = shl nuw nsw i32 %conv10, 1
  %add70 = add nuw nsw i32 %add47, %conv12
  %add71 = add nuw nsw i32 %add70, %mul68
  %shr72 = lshr i32 %add71, 2
  %conv73 = trunc nuw i32 %shr72 to i8
  %arrayidx74 = getelementptr inbounds i8, ptr %src, i64 2
  store i8 %conv73, ptr %arrayidx74, align 1
  %mul75 = shl nuw nsw i32 %conv12, 1
  %add76 = add nuw nsw i32 %conv10, 2
  %add77 = add nuw nsw i32 %add76, %conv14
  %add78 = add nuw nsw i32 %add77, %mul75
  %shr79 = lshr i32 %add78, 2
  %conv80 = trunc nuw i32 %shr79 to i8
  %arrayidx81 = getelementptr inbounds i8, ptr %src, i64 3
  store i8 %conv80, ptr %arrayidx81, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @predict_4x4_vl(ptr nocapture noundef %src) #1 {
entry:
  %arrayidx = getelementptr inbounds i8, ptr %src, i64 -32
  %0 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %0 to i32
  %arrayidx1 = getelementptr inbounds i8, ptr %src, i64 -31
  %1 = load i8, ptr %arrayidx1, align 1
  %conv2 = zext i8 %1 to i32
  %arrayidx3 = getelementptr inbounds i8, ptr %src, i64 -30
  %2 = load i8, ptr %arrayidx3, align 1
  %conv4 = zext i8 %2 to i32
  %arrayidx5 = getelementptr inbounds i8, ptr %src, i64 -29
  %3 = load i8, ptr %arrayidx5, align 1
  %conv6 = zext i8 %3 to i32
  %arrayidx7 = getelementptr inbounds i8, ptr %src, i64 -28
  %4 = load i8, ptr %arrayidx7, align 1
  %conv8 = zext i8 %4 to i32
  %arrayidx9 = getelementptr inbounds i8, ptr %src, i64 -27
  %5 = load i8, ptr %arrayidx9, align 1
  %conv10 = zext i8 %5 to i32
  %arrayidx11 = getelementptr inbounds i8, ptr %src, i64 -26
  %6 = load i8, ptr %arrayidx11, align 1
  %conv12 = zext i8 %6 to i32
  %add = add nuw nsw i32 %conv2, 1
  %add15 = add nuw nsw i32 %add, %conv
  %shr = lshr i32 %add15, 1
  %conv16 = trunc nuw i32 %shr to i8
  store i8 %conv16, ptr %src, align 1
  %mul = shl nuw nsw i32 %conv2, 1
  %add18 = add nuw nsw i32 %conv4, 2
  %add19 = add nuw nsw i32 %add18, %conv
  %add20 = add nuw nsw i32 %add19, %mul
  %shr21 = lshr i32 %add20, 2
  %conv22 = trunc nuw i32 %shr21 to i8
  %arrayidx23 = getelementptr inbounds i8, ptr %src, i64 32
  store i8 %conv22, ptr %arrayidx23, align 1
  %add25 = add nuw nsw i32 %add, %conv4
  %shr26 = lshr i32 %add25, 1
  %conv27 = trunc nuw i32 %shr26 to i8
  %arrayidx28 = getelementptr inbounds i8, ptr %src, i64 64
  store i8 %conv27, ptr %arrayidx28, align 1
  %arrayidx29 = getelementptr inbounds i8, ptr %src, i64 1
  store i8 %conv27, ptr %arrayidx29, align 1
  %mul30 = shl nuw nsw i32 %conv4, 1
  %add31 = add nuw nsw i32 %conv6, 2
  %add32 = add nuw nsw i32 %add31, %conv2
  %add33 = add nuw nsw i32 %add32, %mul30
  %shr34 = lshr i32 %add33, 2
  %conv35 = trunc nuw i32 %shr34 to i8
  %arrayidx36 = getelementptr inbounds i8, ptr %src, i64 96
  store i8 %conv35, ptr %arrayidx36, align 1
  %arrayidx37 = getelementptr inbounds i8, ptr %src, i64 33
  store i8 %conv35, ptr %arrayidx37, align 1
  %add38 = add nuw nsw i32 %conv4, 1
  %add39 = add nuw nsw i32 %add38, %conv6
  %shr40 = lshr i32 %add39, 1
  %conv41 = trunc nuw i32 %shr40 to i8
  %arrayidx42 = getelementptr inbounds i8, ptr %src, i64 65
  store i8 %conv41, ptr %arrayidx42, align 1
  %arrayidx43 = getelementptr inbounds i8, ptr %src, i64 2
  store i8 %conv41, ptr %arrayidx43, align 1
  %mul44 = shl nuw nsw i32 %conv6, 1
  %add46 = add nuw nsw i32 %add18, %mul44
  %add47 = add nuw nsw i32 %add46, %conv8
  %shr48 = lshr i32 %add47, 2
  %conv49 = trunc nuw i32 %shr48 to i8
  %arrayidx50 = getelementptr inbounds i8, ptr %src, i64 97
  store i8 %conv49, ptr %arrayidx50, align 1
  %arrayidx51 = getelementptr inbounds i8, ptr %src, i64 34
  store i8 %conv49, ptr %arrayidx51, align 1
  %add52 = add nuw nsw i32 %conv6, 1
  %add53 = add nuw nsw i32 %add52, %conv8
  %shr54 = lshr i32 %add53, 1
  %conv55 = trunc nuw i32 %shr54 to i8
  %arrayidx56 = getelementptr inbounds i8, ptr %src, i64 66
  store i8 %conv55, ptr %arrayidx56, align 1
  %arrayidx57 = getelementptr inbounds i8, ptr %src, i64 3
  store i8 %conv55, ptr %arrayidx57, align 1
  %mul58 = shl nuw nsw i32 %conv8, 1
  %add60 = add nuw nsw i32 %add31, %mul58
  %add61 = add nuw nsw i32 %add60, %conv10
  %shr62 = lshr i32 %add61, 2
  %conv63 = trunc nuw i32 %shr62 to i8
  %arrayidx64 = getelementptr inbounds i8, ptr %src, i64 98
  store i8 %conv63, ptr %arrayidx64, align 1
  %arrayidx65 = getelementptr inbounds i8, ptr %src, i64 35
  store i8 %conv63, ptr %arrayidx65, align 1
  %add66 = add nuw nsw i32 %conv8, 1
  %add67 = add nuw nsw i32 %add66, %conv10
  %shr68 = lshr i32 %add67, 1
  %conv69 = trunc nuw i32 %shr68 to i8
  %arrayidx70 = getelementptr inbounds i8, ptr %src, i64 67
  store i8 %conv69, ptr %arrayidx70, align 1
  %mul71 = shl nuw nsw i32 %conv10, 1
  %add72 = add nuw nsw i32 %conv8, 2
  %add73 = add nuw nsw i32 %add72, %mul71
  %add74 = add nuw nsw i32 %add73, %conv12
  %shr75 = lshr i32 %add74, 2
  %conv76 = trunc nuw i32 %shr75 to i8
  %arrayidx77 = getelementptr inbounds i8, ptr %src, i64 99
  store i8 %conv76, ptr %arrayidx77, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @predict_4x4_hu(ptr nocapture noundef %src) #1 {
entry:
  %arrayidx = getelementptr inbounds i8, ptr %src, i64 -1
  %0 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %0 to i32
  %arrayidx1 = getelementptr inbounds i8, ptr %src, i64 31
  %1 = load i8, ptr %arrayidx1, align 1
  %conv2 = zext i8 %1 to i32
  %arrayidx3 = getelementptr inbounds i8, ptr %src, i64 63
  %2 = load i8, ptr %arrayidx3, align 1
  %conv4 = zext i8 %2 to i32
  %arrayidx5 = getelementptr inbounds i8, ptr %src, i64 95
  %3 = load i8, ptr %arrayidx5, align 1
  %conv6 = zext i8 %3 to i32
  %add = add nuw nsw i32 %conv2, 1
  %add7 = add nuw nsw i32 %add, %conv
  %shr = lshr i32 %add7, 1
  %conv8 = trunc nuw i32 %shr to i8
  store i8 %conv8, ptr %src, align 1
  %mul = shl nuw nsw i32 %conv2, 1
  %add10 = add nuw nsw i32 %conv4, 2
  %add11 = add nuw nsw i32 %add10, %conv
  %add12 = add nuw nsw i32 %add11, %mul
  %shr13 = lshr i32 %add12, 2
  %conv14 = trunc nuw i32 %shr13 to i8
  %arrayidx15 = getelementptr inbounds i8, ptr %src, i64 1
  store i8 %conv14, ptr %arrayidx15, align 1
  %add17 = add nuw nsw i32 %add, %conv4
  %shr18 = lshr i32 %add17, 1
  %conv19 = trunc nuw i32 %shr18 to i8
  %arrayidx20 = getelementptr inbounds i8, ptr %src, i64 32
  store i8 %conv19, ptr %arrayidx20, align 1
  %arrayidx21 = getelementptr inbounds i8, ptr %src, i64 2
  store i8 %conv19, ptr %arrayidx21, align 1
  %mul22 = shl nuw nsw i32 %conv4, 1
  %add23 = add nuw nsw i32 %conv6, 2
  %add24 = add nuw nsw i32 %add23, %conv2
  %add25 = add nuw nsw i32 %add24, %mul22
  %shr26 = lshr i32 %add25, 2
  %conv27 = trunc nuw i32 %shr26 to i8
  %arrayidx28 = getelementptr inbounds i8, ptr %src, i64 33
  store i8 %conv27, ptr %arrayidx28, align 1
  %arrayidx29 = getelementptr inbounds i8, ptr %src, i64 3
  store i8 %conv27, ptr %arrayidx29, align 1
  %add30 = add nuw nsw i32 %conv4, 1
  %add31 = add nuw nsw i32 %add30, %conv6
  %shr32 = lshr i32 %add31, 1
  %conv33 = trunc nuw i32 %shr32 to i8
  %arrayidx34 = getelementptr inbounds i8, ptr %src, i64 64
  store i8 %conv33, ptr %arrayidx34, align 1
  %arrayidx35 = getelementptr inbounds i8, ptr %src, i64 34
  store i8 %conv33, ptr %arrayidx35, align 1
  %mul36 = shl nuw nsw i32 %conv6, 1
  %add38 = add nuw nsw i32 %add10, %conv6
  %add39 = add nuw nsw i32 %add38, %mul36
  %shr40 = lshr i32 %add39, 2
  %conv41 = trunc nuw i32 %shr40 to i8
  %arrayidx42 = getelementptr inbounds i8, ptr %src, i64 65
  store i8 %conv41, ptr %arrayidx42, align 1
  %arrayidx43 = getelementptr inbounds i8, ptr %src, i64 35
  store i8 %conv41, ptr %arrayidx43, align 1
  %arrayidx47 = getelementptr inbounds i8, ptr %src, i64 66
  store i8 %3, ptr %arrayidx47, align 1
  %arrayidx48 = getelementptr inbounds i8, ptr %src, i64 96
  %4 = insertelement <4 x i8> poison, i8 %3, i64 0
  %5 = shufflevector <4 x i8> %4, <4 x i8> poison, <4 x i32> zeroinitializer
  store <4 x i8> %5, ptr %arrayidx48, align 1
  %arrayidx50 = getelementptr inbounds i8, ptr %src, i64 67
  store i8 %3, ptr %arrayidx50, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @predict_4x4_dc_left(ptr nocapture noundef %src) #1 {
entry:
  %arrayidx = getelementptr inbounds i8, ptr %src, i64 -1
  %0 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %0 to i32
  %arrayidx1 = getelementptr inbounds i8, ptr %src, i64 31
  %1 = load i8, ptr %arrayidx1, align 1
  %conv2 = zext i8 %1 to i32
  %arrayidx3 = getelementptr inbounds i8, ptr %src, i64 63
  %2 = load i8, ptr %arrayidx3, align 1
  %conv4 = zext i8 %2 to i32
  %arrayidx6 = getelementptr inbounds i8, ptr %src, i64 95
  %3 = load i8, ptr %arrayidx6, align 1
  %conv7 = zext i8 %3 to i32
  %add = add nuw nsw i32 %conv, 2
  %add5 = add nuw nsw i32 %add, %conv2
  %add8 = add nuw nsw i32 %add5, %conv4
  %add9 = add nuw nsw i32 %add8, %conv7
  %shr = lshr i32 %add9, 2
  %mul = mul nuw nsw i32 %shr, 16843009
  %arrayidx10 = getelementptr inbounds i8, ptr %src, i64 96
  store i32 %mul, ptr %arrayidx10, align 4
  %arrayidx11 = getelementptr inbounds i8, ptr %src, i64 64
  store i32 %mul, ptr %arrayidx11, align 4
  %arrayidx12 = getelementptr inbounds i8, ptr %src, i64 32
  store i32 %mul, ptr %arrayidx12, align 4
  store i32 %mul, ptr %src, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @predict_4x4_dc_top(ptr nocapture noundef %src) #1 {
entry:
  %arrayidx = getelementptr inbounds i8, ptr %src, i64 -32
  %0 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %0 to i32
  %arrayidx1 = getelementptr inbounds i8, ptr %src, i64 -31
  %1 = load i8, ptr %arrayidx1, align 1
  %conv2 = zext i8 %1 to i32
  %arrayidx3 = getelementptr inbounds i8, ptr %src, i64 -30
  %2 = load i8, ptr %arrayidx3, align 1
  %conv4 = zext i8 %2 to i32
  %arrayidx6 = getelementptr inbounds i8, ptr %src, i64 -29
  %3 = load i8, ptr %arrayidx6, align 1
  %conv7 = zext i8 %3 to i32
  %add = add nuw nsw i32 %conv, 2
  %add5 = add nuw nsw i32 %add, %conv2
  %add8 = add nuw nsw i32 %add5, %conv4
  %add9 = add nuw nsw i32 %add8, %conv7
  %shr = lshr i32 %add9, 2
  %mul = mul nuw nsw i32 %shr, 16843009
  %arrayidx10 = getelementptr inbounds i8, ptr %src, i64 96
  store i32 %mul, ptr %arrayidx10, align 4
  %arrayidx11 = getelementptr inbounds i8, ptr %src, i64 64
  store i32 %mul, ptr %arrayidx11, align 4
  %arrayidx12 = getelementptr inbounds i8, ptr %src, i64 32
  store i32 %mul, ptr %arrayidx12, align 4
  store i32 %mul, ptr %src, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @predict_4x4_dc_128(ptr nocapture noundef writeonly %src) #0 {
entry:
  %arrayidx = getelementptr inbounds i8, ptr %src, i64 96
  store i32 -2139062144, ptr %arrayidx, align 4
  %arrayidx1 = getelementptr inbounds i8, ptr %src, i64 64
  store i32 -2139062144, ptr %arrayidx1, align 4
  %arrayidx2 = getelementptr inbounds i8, ptr %src, i64 32
  store i32 -2139062144, ptr %arrayidx2, align 4
  store i32 -2139062144, ptr %src, align 4
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v16i32(<16 x i32>) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

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
!8 = distinct !{!8, !6, !7}
