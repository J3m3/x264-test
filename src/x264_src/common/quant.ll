; ModuleID = 'x264_src/common/quant.c'
source_filename = "x264_src/common/quant.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@x264_decimate_table4 = dso_local local_unnamed_addr constant <{ i8, i8, i8, i8, i8, i8, [10 x i8] }> <{ i8 3, i8 2, i8 2, i8 1, i8 1, i8 1, [10 x i8] zeroinitializer }>, align 16
@x264_decimate_table8 = dso_local local_unnamed_addr constant <{ [24 x i8], [40 x i8] }> <{ [24 x i8] c"\03\03\03\03\02\02\02\02\02\02\02\02\01\01\01\01\01\01\01\01\01\01\01\01", [40 x i8] zeroinitializer }>, align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @x264_quant_init(ptr nocapture noundef readnone %h, i32 noundef %cpu, ptr nocapture noundef writeonly %pf) local_unnamed_addr #0 {
entry:
  store ptr @quant_8x8, ptr %pf, align 8
  %quant_4x4 = getelementptr inbounds i8, ptr %pf, i64 8
  store ptr @quant_4x4, ptr %quant_4x4, align 8
  %quant_4x4_dc = getelementptr inbounds i8, ptr %pf, i64 16
  store ptr @quant_4x4_dc, ptr %quant_4x4_dc, align 8
  %quant_2x2_dc = getelementptr inbounds i8, ptr %pf, i64 24
  store ptr @quant_2x2_dc, ptr %quant_2x2_dc, align 8
  %dequant_4x4 = getelementptr inbounds i8, ptr %pf, i64 40
  store ptr @dequant_4x4, ptr %dequant_4x4, align 8
  %dequant_4x4_dc = getelementptr inbounds i8, ptr %pf, i64 48
  store ptr @dequant_4x4_dc, ptr %dequant_4x4_dc, align 8
  %dequant_8x8 = getelementptr inbounds i8, ptr %pf, i64 32
  store ptr @dequant_8x8, ptr %dequant_8x8, align 8
  %denoise_dct = getelementptr inbounds i8, ptr %pf, i64 56
  store ptr @x264_denoise_dct, ptr %denoise_dct, align 8
  %decimate_score15 = getelementptr inbounds i8, ptr %pf, i64 64
  store ptr @x264_decimate_score15, ptr %decimate_score15, align 8
  %decimate_score16 = getelementptr inbounds i8, ptr %pf, i64 72
  store ptr @x264_decimate_score16, ptr %decimate_score16, align 8
  %decimate_score64 = getelementptr inbounds i8, ptr %pf, i64 80
  store ptr @x264_decimate_score64, ptr %decimate_score64, align 8
  %coeff_last = getelementptr inbounds i8, ptr %pf, i64 88
  %arrayidx = getelementptr inbounds i8, ptr %pf, i64 112
  store ptr @x264_coeff_last4, ptr %arrayidx, align 8
  %arrayidx2 = getelementptr inbounds i8, ptr %pf, i64 96
  store ptr @x264_coeff_last15, ptr %arrayidx2, align 8
  %arrayidx4 = getelementptr inbounds i8, ptr %pf, i64 104
  store ptr @x264_coeff_last16, ptr %arrayidx4, align 8
  %arrayidx6 = getelementptr inbounds i8, ptr %pf, i64 128
  store ptr @x264_coeff_last64, ptr %arrayidx6, align 8
  %coeff_level_run = getelementptr inbounds i8, ptr %pf, i64 136
  %arrayidx7 = getelementptr inbounds i8, ptr %pf, i64 160
  store ptr @x264_coeff_level_run4, ptr %arrayidx7, align 8
  %arrayidx9 = getelementptr inbounds i8, ptr %pf, i64 144
  store ptr @x264_coeff_level_run15, ptr %arrayidx9, align 8
  %arrayidx11 = getelementptr inbounds i8, ptr %pf, i64 152
  store ptr @x264_coeff_level_run16, ptr %arrayidx11, align 8
  store ptr @x264_coeff_last16, ptr %coeff_last, align 8
  %arrayidx19 = getelementptr inbounds i8, ptr %pf, i64 120
  store ptr @x264_coeff_last15, ptr %arrayidx19, align 8
  store ptr @x264_coeff_level_run16, ptr %coeff_level_run, align 8
  %arrayidx27 = getelementptr inbounds i8, ptr %pf, i64 168
  store ptr @x264_coeff_level_run15, ptr %arrayidx27, align 8
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal range(i32 0, 2) i32 @quant_8x8(ptr nocapture noundef %dct, ptr nocapture noundef readonly %mf, ptr nocapture noundef readonly %bias) #1 {
entry:
  %scevgep = getelementptr i8, ptr %dct, i64 128
  %scevgep56 = getelementptr i8, ptr %bias, i64 128
  %scevgep57 = getelementptr i8, ptr %mf, i64 128
  %bound0 = icmp ugt ptr %scevgep56, %dct
  %bound1 = icmp ugt ptr %scevgep, %bias
  %found.conflict = and i1 %bound0, %bound1
  %bound058 = icmp ugt ptr %scevgep57, %dct
  %bound159 = icmp ugt ptr %scevgep, %mf
  %found.conflict60 = and i1 %bound058, %bound159
  %conflict.rdx = or i1 %found.conflict, %found.conflict60
  br i1 %conflict.rdx, label %for.body, label %vector.body

vector.body:                                      ; preds = %entry, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %entry ]
  %vec.phi = phi <4 x i32> [ %68, %vector.body ], [ zeroinitializer, %entry ]
  %vec.phi61 = phi <4 x i32> [ %69, %vector.body ], [ zeroinitializer, %entry ]
  %vec.phi62 = phi <4 x i32> [ %70, %vector.body ], [ zeroinitializer, %entry ]
  %vec.phi63 = phi <4 x i32> [ %71, %vector.body ], [ zeroinitializer, %entry ]
  %0 = getelementptr inbounds i16, ptr %dct, i64 %index
  %1 = getelementptr inbounds i8, ptr %0, i64 8
  %2 = getelementptr inbounds i8, ptr %0, i64 16
  %3 = getelementptr inbounds i8, ptr %0, i64 24
  %wide.load = load <4 x i16>, ptr %0, align 2, !alias.scope !5, !noalias !8
  %wide.load64 = load <4 x i16>, ptr %1, align 2, !alias.scope !5, !noalias !8
  %wide.load65 = load <4 x i16>, ptr %2, align 2, !alias.scope !5, !noalias !8
  %wide.load66 = load <4 x i16>, ptr %3, align 2, !alias.scope !5, !noalias !8
  %4 = sext <4 x i16> %wide.load to <4 x i32>
  %5 = sext <4 x i16> %wide.load64 to <4 x i32>
  %6 = sext <4 x i16> %wide.load65 to <4 x i32>
  %7 = sext <4 x i16> %wide.load66 to <4 x i32>
  %8 = icmp sgt <4 x i16> %wide.load, zeroinitializer
  %9 = icmp sgt <4 x i16> %wide.load64, zeroinitializer
  %10 = icmp sgt <4 x i16> %wide.load65, zeroinitializer
  %11 = icmp sgt <4 x i16> %wide.load66, zeroinitializer
  %12 = getelementptr inbounds i16, ptr %bias, i64 %index
  %13 = getelementptr inbounds i8, ptr %12, i64 8
  %14 = getelementptr inbounds i8, ptr %12, i64 16
  %15 = getelementptr inbounds i8, ptr %12, i64 24
  %wide.load67 = load <4 x i16>, ptr %12, align 2, !alias.scope !11
  %wide.load68 = load <4 x i16>, ptr %13, align 2, !alias.scope !11
  %wide.load69 = load <4 x i16>, ptr %14, align 2, !alias.scope !11
  %wide.load70 = load <4 x i16>, ptr %15, align 2, !alias.scope !11
  %16 = zext <4 x i16> %wide.load67 to <4 x i32>
  %17 = zext <4 x i16> %wide.load68 to <4 x i32>
  %18 = zext <4 x i16> %wide.load69 to <4 x i32>
  %19 = zext <4 x i16> %wide.load70 to <4 x i32>
  %20 = getelementptr inbounds i16, ptr %mf, i64 %index
  %21 = getelementptr inbounds i8, ptr %20, i64 8
  %22 = getelementptr inbounds i8, ptr %20, i64 16
  %23 = getelementptr inbounds i8, ptr %20, i64 24
  %wide.load71 = load <4 x i16>, ptr %20, align 2, !alias.scope !12
  %wide.load72 = load <4 x i16>, ptr %21, align 2, !alias.scope !12
  %wide.load73 = load <4 x i16>, ptr %22, align 2, !alias.scope !12
  %wide.load74 = load <4 x i16>, ptr %23, align 2, !alias.scope !12
  %24 = zext <4 x i16> %wide.load71 to <4 x i32>
  %25 = zext <4 x i16> %wide.load72 to <4 x i32>
  %26 = zext <4 x i16> %wide.load73 to <4 x i32>
  %27 = zext <4 x i16> %wide.load74 to <4 x i32>
  %28 = sub nsw <4 x i32> %16, %4
  %29 = sub nsw <4 x i32> %17, %5
  %30 = sub nsw <4 x i32> %18, %6
  %31 = sub nsw <4 x i32> %19, %7
  %32 = mul nsw <4 x i32> %28, %24
  %33 = mul nsw <4 x i32> %29, %25
  %34 = mul nsw <4 x i32> %30, %26
  %35 = mul nsw <4 x i32> %31, %27
  %36 = lshr <4 x i32> %32, <i32 16, i32 16, i32 16, i32 16>
  %37 = lshr <4 x i32> %33, <i32 16, i32 16, i32 16, i32 16>
  %38 = lshr <4 x i32> %34, <i32 16, i32 16, i32 16, i32 16>
  %39 = lshr <4 x i32> %35, <i32 16, i32 16, i32 16, i32 16>
  %40 = trunc nuw <4 x i32> %36 to <4 x i16>
  %41 = trunc nuw <4 x i32> %37 to <4 x i16>
  %42 = trunc nuw <4 x i32> %38 to <4 x i16>
  %43 = trunc nuw <4 x i32> %39 to <4 x i16>
  %44 = sub <4 x i16> zeroinitializer, %40
  %45 = sub <4 x i16> zeroinitializer, %41
  %46 = sub <4 x i16> zeroinitializer, %42
  %47 = sub <4 x i16> zeroinitializer, %43
  %48 = add nuw nsw <4 x i32> %16, %4
  %49 = add nuw nsw <4 x i32> %17, %5
  %50 = add nuw nsw <4 x i32> %18, %6
  %51 = add nuw nsw <4 x i32> %19, %7
  %52 = mul nuw nsw <4 x i32> %48, %24
  %53 = mul nuw nsw <4 x i32> %49, %25
  %54 = mul nuw nsw <4 x i32> %50, %26
  %55 = mul nuw nsw <4 x i32> %51, %27
  %56 = lshr <4 x i32> %52, <i32 16, i32 16, i32 16, i32 16>
  %57 = lshr <4 x i32> %53, <i32 16, i32 16, i32 16, i32 16>
  %58 = lshr <4 x i32> %54, <i32 16, i32 16, i32 16, i32 16>
  %59 = lshr <4 x i32> %55, <i32 16, i32 16, i32 16, i32 16>
  %60 = trunc nuw <4 x i32> %56 to <4 x i16>
  %61 = trunc nuw <4 x i32> %57 to <4 x i16>
  %62 = trunc nuw <4 x i32> %58 to <4 x i16>
  %63 = trunc nuw <4 x i32> %59 to <4 x i16>
  %predphi = select <4 x i1> %8, <4 x i16> %60, <4 x i16> %44
  %predphi75 = select <4 x i1> %9, <4 x i16> %61, <4 x i16> %45
  %predphi76 = select <4 x i1> %10, <4 x i16> %62, <4 x i16> %46
  %predphi77 = select <4 x i1> %11, <4 x i16> %63, <4 x i16> %47
  store <4 x i16> %predphi, ptr %0, align 2, !alias.scope !5, !noalias !8
  store <4 x i16> %predphi75, ptr %1, align 2, !alias.scope !5, !noalias !8
  store <4 x i16> %predphi76, ptr %2, align 2, !alias.scope !5, !noalias !8
  store <4 x i16> %predphi77, ptr %3, align 2, !alias.scope !5, !noalias !8
  %64 = sext <4 x i16> %predphi to <4 x i32>
  %65 = sext <4 x i16> %predphi75 to <4 x i32>
  %66 = sext <4 x i16> %predphi76 to <4 x i32>
  %67 = sext <4 x i16> %predphi77 to <4 x i32>
  %68 = or <4 x i32> %vec.phi, %64
  %69 = or <4 x i32> %vec.phi61, %65
  %70 = or <4 x i32> %vec.phi62, %66
  %71 = or <4 x i32> %vec.phi63, %67
  %index.next = add nuw i64 %index, 16
  %72 = icmp eq i64 %index.next, 64
  br i1 %72, label %middle.block, label %vector.body, !llvm.loop !13

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <4 x i32> %69, %68
  %bin.rdx78 = or <4 x i32> %70, %bin.rdx
  %bin.rdx79 = or <4 x i32> %71, %bin.rdx78
  %73 = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %bin.rdx79)
  br label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %if.end, %middle.block
  %or.lcssa = phi i32 [ %73, %middle.block ], [ %or, %if.end ]
  %tobool = icmp ne i32 %or.lcssa, 0
  %lnot.ext = zext i1 %tobool to i32
  ret i32 %lnot.ext

for.body:                                         ; preds = %entry, %if.end
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end ], [ 0, %entry ]
  %nz.053 = phi i32 [ %or, %if.end ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds i16, ptr %dct, i64 %indvars.iv
  %74 = load i16, ptr %arrayidx, align 2
  %conv = sext i16 %74 to i32
  %cmp1 = icmp sgt i16 %74, 0
  %arrayidx4 = getelementptr inbounds i16, ptr %bias, i64 %indvars.iv
  %75 = load i16, ptr %arrayidx4, align 2
  %conv5 = zext i16 %75 to i32
  %arrayidx10 = getelementptr inbounds i16, ptr %mf, i64 %indvars.iv
  %76 = load i16, ptr %arrayidx10, align 2
  %conv11 = zext i16 %76 to i32
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %add = add nuw nsw i32 %conv5, %conv
  %mul = mul nuw nsw i32 %add, %conv11
  %shr = lshr i32 %mul, 16
  %conv12 = trunc nuw i32 %shr to i16
  br label %if.end

if.else:                                          ; preds = %for.body
  %sub = sub nsw i32 %conv5, %conv
  %mul24 = mul nsw i32 %sub, %conv11
  %shr25 = lshr i32 %mul24, 16
  %77 = trunc nuw i32 %shr25 to i16
  %conv27 = sub i16 0, %77
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %storemerge = phi i16 [ %conv27, %if.else ], [ %conv12, %if.then ]
  store i16 %storemerge, ptr %arrayidx, align 2
  %conv32 = sext i16 %storemerge to i32
  %or = or i32 %nz.053, %conv32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 64
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !llvm.loop !16
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal range(i32 0, 2) i32 @quant_4x4(ptr nocapture noundef %dct, ptr nocapture noundef readonly %mf, ptr nocapture noundef readonly %bias) #1 {
entry:
  %scevgep = getelementptr i8, ptr %dct, i64 32
  %scevgep56 = getelementptr i8, ptr %bias, i64 32
  %scevgep57 = getelementptr i8, ptr %mf, i64 32
  %bound0 = icmp ugt ptr %scevgep56, %dct
  %bound1 = icmp ugt ptr %scevgep, %bias
  %found.conflict = and i1 %bound0, %bound1
  %bound058 = icmp ugt ptr %scevgep57, %dct
  %bound159 = icmp ugt ptr %scevgep, %mf
  %found.conflict60 = and i1 %bound058, %bound159
  %conflict.rdx = or i1 %found.conflict, %found.conflict60
  br i1 %conflict.rdx, label %for.body, label %vector.body

vector.body:                                      ; preds = %entry
  %0 = getelementptr inbounds i8, ptr %dct, i64 8
  %1 = getelementptr inbounds i8, ptr %dct, i64 16
  %2 = getelementptr inbounds i8, ptr %dct, i64 24
  %wide.load = load <4 x i16>, ptr %dct, align 2, !alias.scope !17, !noalias !20
  %wide.load64 = load <4 x i16>, ptr %0, align 2, !alias.scope !17, !noalias !20
  %wide.load65 = load <4 x i16>, ptr %1, align 2, !alias.scope !17, !noalias !20
  %wide.load66 = load <4 x i16>, ptr %2, align 2, !alias.scope !17, !noalias !20
  %3 = sext <4 x i16> %wide.load to <4 x i32>
  %4 = sext <4 x i16> %wide.load64 to <4 x i32>
  %5 = sext <4 x i16> %wide.load65 to <4 x i32>
  %6 = sext <4 x i16> %wide.load66 to <4 x i32>
  %7 = icmp sgt <4 x i16> %wide.load, zeroinitializer
  %8 = icmp sgt <4 x i16> %wide.load64, zeroinitializer
  %9 = icmp sgt <4 x i16> %wide.load65, zeroinitializer
  %10 = icmp sgt <4 x i16> %wide.load66, zeroinitializer
  %11 = getelementptr inbounds i8, ptr %bias, i64 8
  %12 = getelementptr inbounds i8, ptr %bias, i64 16
  %13 = getelementptr inbounds i8, ptr %bias, i64 24
  %wide.load67 = load <4 x i16>, ptr %bias, align 2, !alias.scope !23
  %wide.load68 = load <4 x i16>, ptr %11, align 2, !alias.scope !23
  %wide.load69 = load <4 x i16>, ptr %12, align 2, !alias.scope !23
  %wide.load70 = load <4 x i16>, ptr %13, align 2, !alias.scope !23
  %14 = zext <4 x i16> %wide.load67 to <4 x i32>
  %15 = zext <4 x i16> %wide.load68 to <4 x i32>
  %16 = zext <4 x i16> %wide.load69 to <4 x i32>
  %17 = zext <4 x i16> %wide.load70 to <4 x i32>
  %18 = getelementptr inbounds i8, ptr %mf, i64 8
  %19 = getelementptr inbounds i8, ptr %mf, i64 16
  %20 = getelementptr inbounds i8, ptr %mf, i64 24
  %wide.load71 = load <4 x i16>, ptr %mf, align 2, !alias.scope !24
  %wide.load72 = load <4 x i16>, ptr %18, align 2, !alias.scope !24
  %wide.load73 = load <4 x i16>, ptr %19, align 2, !alias.scope !24
  %wide.load74 = load <4 x i16>, ptr %20, align 2, !alias.scope !24
  %21 = zext <4 x i16> %wide.load71 to <4 x i32>
  %22 = zext <4 x i16> %wide.load72 to <4 x i32>
  %23 = zext <4 x i16> %wide.load73 to <4 x i32>
  %24 = zext <4 x i16> %wide.load74 to <4 x i32>
  %25 = sub nsw <4 x i32> %14, %3
  %26 = sub nsw <4 x i32> %15, %4
  %27 = sub nsw <4 x i32> %16, %5
  %28 = sub nsw <4 x i32> %17, %6
  %29 = mul nsw <4 x i32> %25, %21
  %30 = mul nsw <4 x i32> %26, %22
  %31 = mul nsw <4 x i32> %27, %23
  %32 = mul nsw <4 x i32> %28, %24
  %33 = lshr <4 x i32> %29, <i32 16, i32 16, i32 16, i32 16>
  %34 = lshr <4 x i32> %30, <i32 16, i32 16, i32 16, i32 16>
  %35 = lshr <4 x i32> %31, <i32 16, i32 16, i32 16, i32 16>
  %36 = lshr <4 x i32> %32, <i32 16, i32 16, i32 16, i32 16>
  %37 = trunc nuw <4 x i32> %33 to <4 x i16>
  %38 = trunc nuw <4 x i32> %34 to <4 x i16>
  %39 = trunc nuw <4 x i32> %35 to <4 x i16>
  %40 = trunc nuw <4 x i32> %36 to <4 x i16>
  %41 = sub <4 x i16> zeroinitializer, %37
  %42 = sub <4 x i16> zeroinitializer, %38
  %43 = sub <4 x i16> zeroinitializer, %39
  %44 = sub <4 x i16> zeroinitializer, %40
  %45 = add nuw nsw <4 x i32> %14, %3
  %46 = add nuw nsw <4 x i32> %15, %4
  %47 = add nuw nsw <4 x i32> %16, %5
  %48 = add nuw nsw <4 x i32> %17, %6
  %49 = mul nuw nsw <4 x i32> %45, %21
  %50 = mul nuw nsw <4 x i32> %46, %22
  %51 = mul nuw nsw <4 x i32> %47, %23
  %52 = mul nuw nsw <4 x i32> %48, %24
  %53 = lshr <4 x i32> %49, <i32 16, i32 16, i32 16, i32 16>
  %54 = lshr <4 x i32> %50, <i32 16, i32 16, i32 16, i32 16>
  %55 = lshr <4 x i32> %51, <i32 16, i32 16, i32 16, i32 16>
  %56 = lshr <4 x i32> %52, <i32 16, i32 16, i32 16, i32 16>
  %57 = trunc nuw <4 x i32> %53 to <4 x i16>
  %58 = trunc nuw <4 x i32> %54 to <4 x i16>
  %59 = trunc nuw <4 x i32> %55 to <4 x i16>
  %60 = trunc nuw <4 x i32> %56 to <4 x i16>
  %predphi = select <4 x i1> %7, <4 x i16> %57, <4 x i16> %41
  %predphi75 = select <4 x i1> %8, <4 x i16> %58, <4 x i16> %42
  %predphi76 = select <4 x i1> %9, <4 x i16> %59, <4 x i16> %43
  %predphi77 = select <4 x i1> %10, <4 x i16> %60, <4 x i16> %44
  store <4 x i16> %predphi, ptr %dct, align 2, !alias.scope !17, !noalias !20
  store <4 x i16> %predphi75, ptr %0, align 2, !alias.scope !17, !noalias !20
  store <4 x i16> %predphi76, ptr %1, align 2, !alias.scope !17, !noalias !20
  store <4 x i16> %predphi77, ptr %2, align 2, !alias.scope !17, !noalias !20
  %bin.rdx80 = or <4 x i16> %predphi75, %predphi
  %bin.rdx7881 = or <4 x i16> %predphi76, %bin.rdx80
  %bin.rdx7982 = or <4 x i16> %predphi77, %bin.rdx7881
  %61 = tail call i16 @llvm.vector.reduce.or.v4i16(<4 x i16> %bin.rdx7982)
  %62 = sext i16 %61 to i32
  br label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %if.end, %vector.body
  %or.lcssa = phi i32 [ %62, %vector.body ], [ %or, %if.end ]
  %tobool = icmp ne i32 %or.lcssa, 0
  %lnot.ext = zext i1 %tobool to i32
  ret i32 %lnot.ext

for.body:                                         ; preds = %entry, %if.end
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end ], [ 0, %entry ]
  %nz.053 = phi i32 [ %or, %if.end ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds i16, ptr %dct, i64 %indvars.iv
  %63 = load i16, ptr %arrayidx, align 2
  %conv = sext i16 %63 to i32
  %cmp1 = icmp sgt i16 %63, 0
  %arrayidx4 = getelementptr inbounds i16, ptr %bias, i64 %indvars.iv
  %64 = load i16, ptr %arrayidx4, align 2
  %conv5 = zext i16 %64 to i32
  %arrayidx10 = getelementptr inbounds i16, ptr %mf, i64 %indvars.iv
  %65 = load i16, ptr %arrayidx10, align 2
  %conv11 = zext i16 %65 to i32
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %add = add nuw nsw i32 %conv5, %conv
  %mul = mul nuw nsw i32 %add, %conv11
  %shr = lshr i32 %mul, 16
  %conv12 = trunc nuw i32 %shr to i16
  br label %if.end

if.else:                                          ; preds = %for.body
  %sub = sub nsw i32 %conv5, %conv
  %mul24 = mul nsw i32 %sub, %conv11
  %shr25 = lshr i32 %mul24, 16
  %66 = trunc nuw i32 %shr25 to i16
  %conv27 = sub i16 0, %66
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %storemerge = phi i16 [ %conv27, %if.else ], [ %conv12, %if.then ]
  store i16 %storemerge, ptr %arrayidx, align 2
  %conv32 = sext i16 %storemerge to i32
  %or = or i32 %nz.053, %conv32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !llvm.loop !25
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal range(i32 0, 2) i32 @quant_4x4_dc(ptr nocapture noundef %dct, i32 noundef %mf, i32 noundef %bias) #2 {
entry:
  %0 = load i16, ptr %dct, align 2
  %conv = sext i16 %0 to i32
  %cmp1 = icmp sgt i16 %0, 0
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %add = add nsw i32 %conv, %bias
  %mul = mul nsw i32 %add, %mf
  %shr = lshr i32 %mul, 16
  %conv6 = trunc nuw i32 %shr to i16
  br label %if.end

if.else:                                          ; preds = %entry
  %sub = sub nsw i32 %bias, %conv
  %mul12 = mul nsw i32 %sub, %mf
  %shr13 = lshr i32 %mul12, 16
  %1 = trunc nuw i32 %shr13 to i16
  %conv15 = sub i16 0, %1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %storemerge = phi i16 [ %conv15, %if.else ], [ %conv6, %if.then ]
  store i16 %storemerge, ptr %dct, align 2
  %arrayidx.1 = getelementptr inbounds i8, ptr %dct, i64 2
  %2 = load i16, ptr %arrayidx.1, align 2
  %conv.1 = sext i16 %2 to i32
  %cmp1.1 = icmp sgt i16 %2, 0
  br i1 %cmp1.1, label %if.then.1, label %if.else.1

if.else.1:                                        ; preds = %if.end
  %sub.1 = sub nsw i32 %bias, %conv.1
  %mul12.1 = mul nsw i32 %sub.1, %mf
  %shr13.1 = lshr i32 %mul12.1, 16
  %3 = trunc nuw i32 %shr13.1 to i16
  %conv15.1 = sub i16 0, %3
  br label %if.end.1

if.then.1:                                        ; preds = %if.end
  %add.1 = add nsw i32 %conv.1, %bias
  %mul.1 = mul nsw i32 %add.1, %mf
  %shr.1 = lshr i32 %mul.1, 16
  %conv6.1 = trunc nuw i32 %shr.1 to i16
  br label %if.end.1

if.end.1:                                         ; preds = %if.then.1, %if.else.1
  %storemerge.1 = phi i16 [ %conv15.1, %if.else.1 ], [ %conv6.1, %if.then.1 ]
  store i16 %storemerge.1, ptr %arrayidx.1, align 2
  %arrayidx.2 = getelementptr inbounds i8, ptr %dct, i64 4
  %4 = load i16, ptr %arrayidx.2, align 2
  %conv.2 = sext i16 %4 to i32
  %cmp1.2 = icmp sgt i16 %4, 0
  br i1 %cmp1.2, label %if.then.2, label %if.else.2

if.else.2:                                        ; preds = %if.end.1
  %sub.2 = sub nsw i32 %bias, %conv.2
  %mul12.2 = mul nsw i32 %sub.2, %mf
  %shr13.2 = lshr i32 %mul12.2, 16
  %5 = trunc nuw i32 %shr13.2 to i16
  %conv15.2 = sub i16 0, %5
  br label %if.end.2

if.then.2:                                        ; preds = %if.end.1
  %add.2 = add nsw i32 %conv.2, %bias
  %mul.2 = mul nsw i32 %add.2, %mf
  %shr.2 = lshr i32 %mul.2, 16
  %conv6.2 = trunc nuw i32 %shr.2 to i16
  br label %if.end.2

if.end.2:                                         ; preds = %if.then.2, %if.else.2
  %storemerge.2 = phi i16 [ %conv15.2, %if.else.2 ], [ %conv6.2, %if.then.2 ]
  store i16 %storemerge.2, ptr %arrayidx.2, align 2
  %arrayidx.3 = getelementptr inbounds i8, ptr %dct, i64 6
  %6 = load i16, ptr %arrayidx.3, align 2
  %conv.3 = sext i16 %6 to i32
  %cmp1.3 = icmp sgt i16 %6, 0
  br i1 %cmp1.3, label %if.then.3, label %if.else.3

if.else.3:                                        ; preds = %if.end.2
  %sub.3 = sub nsw i32 %bias, %conv.3
  %mul12.3 = mul nsw i32 %sub.3, %mf
  %shr13.3 = lshr i32 %mul12.3, 16
  %7 = trunc nuw i32 %shr13.3 to i16
  %conv15.3 = sub i16 0, %7
  br label %if.end.3

if.then.3:                                        ; preds = %if.end.2
  %add.3 = add nsw i32 %conv.3, %bias
  %mul.3 = mul nsw i32 %add.3, %mf
  %shr.3 = lshr i32 %mul.3, 16
  %conv6.3 = trunc nuw i32 %shr.3 to i16
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.3, %if.else.3
  %storemerge.3 = phi i16 [ %conv15.3, %if.else.3 ], [ %conv6.3, %if.then.3 ]
  store i16 %storemerge.3, ptr %arrayidx.3, align 2
  %arrayidx.4 = getelementptr inbounds i8, ptr %dct, i64 8
  %8 = load i16, ptr %arrayidx.4, align 2
  %conv.4 = sext i16 %8 to i32
  %cmp1.4 = icmp sgt i16 %8, 0
  br i1 %cmp1.4, label %if.then.4, label %if.else.4

if.else.4:                                        ; preds = %if.end.3
  %sub.4 = sub nsw i32 %bias, %conv.4
  %mul12.4 = mul nsw i32 %sub.4, %mf
  %shr13.4 = lshr i32 %mul12.4, 16
  %9 = trunc nuw i32 %shr13.4 to i16
  %conv15.4 = sub i16 0, %9
  br label %if.end.4

if.then.4:                                        ; preds = %if.end.3
  %add.4 = add nsw i32 %conv.4, %bias
  %mul.4 = mul nsw i32 %add.4, %mf
  %shr.4 = lshr i32 %mul.4, 16
  %conv6.4 = trunc nuw i32 %shr.4 to i16
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.4, %if.else.4
  %storemerge.4 = phi i16 [ %conv15.4, %if.else.4 ], [ %conv6.4, %if.then.4 ]
  store i16 %storemerge.4, ptr %arrayidx.4, align 2
  %arrayidx.5 = getelementptr inbounds i8, ptr %dct, i64 10
  %10 = load i16, ptr %arrayidx.5, align 2
  %conv.5 = sext i16 %10 to i32
  %cmp1.5 = icmp sgt i16 %10, 0
  br i1 %cmp1.5, label %if.then.5, label %if.else.5

if.else.5:                                        ; preds = %if.end.4
  %sub.5 = sub nsw i32 %bias, %conv.5
  %mul12.5 = mul nsw i32 %sub.5, %mf
  %shr13.5 = lshr i32 %mul12.5, 16
  %11 = trunc nuw i32 %shr13.5 to i16
  %conv15.5 = sub i16 0, %11
  br label %if.end.5

if.then.5:                                        ; preds = %if.end.4
  %add.5 = add nsw i32 %conv.5, %bias
  %mul.5 = mul nsw i32 %add.5, %mf
  %shr.5 = lshr i32 %mul.5, 16
  %conv6.5 = trunc nuw i32 %shr.5 to i16
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.5, %if.else.5
  %storemerge.5 = phi i16 [ %conv15.5, %if.else.5 ], [ %conv6.5, %if.then.5 ]
  store i16 %storemerge.5, ptr %arrayidx.5, align 2
  %arrayidx.6 = getelementptr inbounds i8, ptr %dct, i64 12
  %12 = load i16, ptr %arrayidx.6, align 2
  %conv.6 = sext i16 %12 to i32
  %cmp1.6 = icmp sgt i16 %12, 0
  br i1 %cmp1.6, label %if.then.6, label %if.else.6

if.else.6:                                        ; preds = %if.end.5
  %sub.6 = sub nsw i32 %bias, %conv.6
  %mul12.6 = mul nsw i32 %sub.6, %mf
  %shr13.6 = lshr i32 %mul12.6, 16
  %13 = trunc nuw i32 %shr13.6 to i16
  %conv15.6 = sub i16 0, %13
  br label %if.end.6

if.then.6:                                        ; preds = %if.end.5
  %add.6 = add nsw i32 %conv.6, %bias
  %mul.6 = mul nsw i32 %add.6, %mf
  %shr.6 = lshr i32 %mul.6, 16
  %conv6.6 = trunc nuw i32 %shr.6 to i16
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.6, %if.else.6
  %storemerge.6 = phi i16 [ %conv15.6, %if.else.6 ], [ %conv6.6, %if.then.6 ]
  store i16 %storemerge.6, ptr %arrayidx.6, align 2
  %arrayidx.7 = getelementptr inbounds i8, ptr %dct, i64 14
  %14 = load i16, ptr %arrayidx.7, align 2
  %conv.7 = sext i16 %14 to i32
  %cmp1.7 = icmp sgt i16 %14, 0
  br i1 %cmp1.7, label %if.then.7, label %if.else.7

if.else.7:                                        ; preds = %if.end.6
  %sub.7 = sub nsw i32 %bias, %conv.7
  %mul12.7 = mul nsw i32 %sub.7, %mf
  %shr13.7 = lshr i32 %mul12.7, 16
  %15 = trunc nuw i32 %shr13.7 to i16
  %conv15.7 = sub i16 0, %15
  br label %if.end.7

if.then.7:                                        ; preds = %if.end.6
  %add.7 = add nsw i32 %conv.7, %bias
  %mul.7 = mul nsw i32 %add.7, %mf
  %shr.7 = lshr i32 %mul.7, 16
  %conv6.7 = trunc nuw i32 %shr.7 to i16
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.7, %if.else.7
  %storemerge.7 = phi i16 [ %conv15.7, %if.else.7 ], [ %conv6.7, %if.then.7 ]
  store i16 %storemerge.7, ptr %arrayidx.7, align 2
  %arrayidx.8 = getelementptr inbounds i8, ptr %dct, i64 16
  %16 = load i16, ptr %arrayidx.8, align 2
  %conv.8 = sext i16 %16 to i32
  %cmp1.8 = icmp sgt i16 %16, 0
  br i1 %cmp1.8, label %if.then.8, label %if.else.8

if.else.8:                                        ; preds = %if.end.7
  %sub.8 = sub nsw i32 %bias, %conv.8
  %mul12.8 = mul nsw i32 %sub.8, %mf
  %shr13.8 = lshr i32 %mul12.8, 16
  %17 = trunc nuw i32 %shr13.8 to i16
  %conv15.8 = sub i16 0, %17
  br label %if.end.8

if.then.8:                                        ; preds = %if.end.7
  %add.8 = add nsw i32 %conv.8, %bias
  %mul.8 = mul nsw i32 %add.8, %mf
  %shr.8 = lshr i32 %mul.8, 16
  %conv6.8 = trunc nuw i32 %shr.8 to i16
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.8, %if.else.8
  %storemerge.8 = phi i16 [ %conv15.8, %if.else.8 ], [ %conv6.8, %if.then.8 ]
  store i16 %storemerge.8, ptr %arrayidx.8, align 2
  %arrayidx.9 = getelementptr inbounds i8, ptr %dct, i64 18
  %18 = load i16, ptr %arrayidx.9, align 2
  %conv.9 = sext i16 %18 to i32
  %cmp1.9 = icmp sgt i16 %18, 0
  br i1 %cmp1.9, label %if.then.9, label %if.else.9

if.else.9:                                        ; preds = %if.end.8
  %sub.9 = sub nsw i32 %bias, %conv.9
  %mul12.9 = mul nsw i32 %sub.9, %mf
  %shr13.9 = lshr i32 %mul12.9, 16
  %19 = trunc nuw i32 %shr13.9 to i16
  %conv15.9 = sub i16 0, %19
  br label %if.end.9

if.then.9:                                        ; preds = %if.end.8
  %add.9 = add nsw i32 %conv.9, %bias
  %mul.9 = mul nsw i32 %add.9, %mf
  %shr.9 = lshr i32 %mul.9, 16
  %conv6.9 = trunc nuw i32 %shr.9 to i16
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.9, %if.else.9
  %storemerge.9 = phi i16 [ %conv15.9, %if.else.9 ], [ %conv6.9, %if.then.9 ]
  store i16 %storemerge.9, ptr %arrayidx.9, align 2
  %arrayidx.10 = getelementptr inbounds i8, ptr %dct, i64 20
  %20 = load i16, ptr %arrayidx.10, align 2
  %conv.10 = sext i16 %20 to i32
  %cmp1.10 = icmp sgt i16 %20, 0
  br i1 %cmp1.10, label %if.then.10, label %if.else.10

if.else.10:                                       ; preds = %if.end.9
  %sub.10 = sub nsw i32 %bias, %conv.10
  %mul12.10 = mul nsw i32 %sub.10, %mf
  %shr13.10 = lshr i32 %mul12.10, 16
  %21 = trunc nuw i32 %shr13.10 to i16
  %conv15.10 = sub i16 0, %21
  br label %if.end.10

if.then.10:                                       ; preds = %if.end.9
  %add.10 = add nsw i32 %conv.10, %bias
  %mul.10 = mul nsw i32 %add.10, %mf
  %shr.10 = lshr i32 %mul.10, 16
  %conv6.10 = trunc nuw i32 %shr.10 to i16
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.10, %if.else.10
  %storemerge.10 = phi i16 [ %conv15.10, %if.else.10 ], [ %conv6.10, %if.then.10 ]
  store i16 %storemerge.10, ptr %arrayidx.10, align 2
  %arrayidx.11 = getelementptr inbounds i8, ptr %dct, i64 22
  %22 = load i16, ptr %arrayidx.11, align 2
  %conv.11 = sext i16 %22 to i32
  %cmp1.11 = icmp sgt i16 %22, 0
  br i1 %cmp1.11, label %if.then.11, label %if.else.11

if.else.11:                                       ; preds = %if.end.10
  %sub.11 = sub nsw i32 %bias, %conv.11
  %mul12.11 = mul nsw i32 %sub.11, %mf
  %shr13.11 = lshr i32 %mul12.11, 16
  %23 = trunc nuw i32 %shr13.11 to i16
  %conv15.11 = sub i16 0, %23
  br label %if.end.11

if.then.11:                                       ; preds = %if.end.10
  %add.11 = add nsw i32 %conv.11, %bias
  %mul.11 = mul nsw i32 %add.11, %mf
  %shr.11 = lshr i32 %mul.11, 16
  %conv6.11 = trunc nuw i32 %shr.11 to i16
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.11, %if.else.11
  %storemerge.11 = phi i16 [ %conv15.11, %if.else.11 ], [ %conv6.11, %if.then.11 ]
  store i16 %storemerge.11, ptr %arrayidx.11, align 2
  %arrayidx.12 = getelementptr inbounds i8, ptr %dct, i64 24
  %24 = load i16, ptr %arrayidx.12, align 2
  %conv.12 = sext i16 %24 to i32
  %cmp1.12 = icmp sgt i16 %24, 0
  br i1 %cmp1.12, label %if.then.12, label %if.else.12

if.else.12:                                       ; preds = %if.end.11
  %sub.12 = sub nsw i32 %bias, %conv.12
  %mul12.12 = mul nsw i32 %sub.12, %mf
  %shr13.12 = lshr i32 %mul12.12, 16
  %25 = trunc nuw i32 %shr13.12 to i16
  %conv15.12 = sub i16 0, %25
  br label %if.end.12

if.then.12:                                       ; preds = %if.end.11
  %add.12 = add nsw i32 %conv.12, %bias
  %mul.12 = mul nsw i32 %add.12, %mf
  %shr.12 = lshr i32 %mul.12, 16
  %conv6.12 = trunc nuw i32 %shr.12 to i16
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.12, %if.else.12
  %storemerge.12 = phi i16 [ %conv15.12, %if.else.12 ], [ %conv6.12, %if.then.12 ]
  store i16 %storemerge.12, ptr %arrayidx.12, align 2
  %arrayidx.13 = getelementptr inbounds i8, ptr %dct, i64 26
  %26 = load i16, ptr %arrayidx.13, align 2
  %conv.13 = sext i16 %26 to i32
  %cmp1.13 = icmp sgt i16 %26, 0
  br i1 %cmp1.13, label %if.then.13, label %if.else.13

if.else.13:                                       ; preds = %if.end.12
  %sub.13 = sub nsw i32 %bias, %conv.13
  %mul12.13 = mul nsw i32 %sub.13, %mf
  %shr13.13 = lshr i32 %mul12.13, 16
  %27 = trunc nuw i32 %shr13.13 to i16
  %conv15.13 = sub i16 0, %27
  br label %if.end.13

if.then.13:                                       ; preds = %if.end.12
  %add.13 = add nsw i32 %conv.13, %bias
  %mul.13 = mul nsw i32 %add.13, %mf
  %shr.13 = lshr i32 %mul.13, 16
  %conv6.13 = trunc nuw i32 %shr.13 to i16
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.13, %if.else.13
  %storemerge.13 = phi i16 [ %conv15.13, %if.else.13 ], [ %conv6.13, %if.then.13 ]
  store i16 %storemerge.13, ptr %arrayidx.13, align 2
  %arrayidx.14 = getelementptr inbounds i8, ptr %dct, i64 28
  %28 = load i16, ptr %arrayidx.14, align 2
  %conv.14 = sext i16 %28 to i32
  %cmp1.14 = icmp sgt i16 %28, 0
  br i1 %cmp1.14, label %if.then.14, label %if.else.14

if.else.14:                                       ; preds = %if.end.13
  %sub.14 = sub nsw i32 %bias, %conv.14
  %mul12.14 = mul nsw i32 %sub.14, %mf
  %shr13.14 = lshr i32 %mul12.14, 16
  %29 = trunc nuw i32 %shr13.14 to i16
  %conv15.14 = sub i16 0, %29
  br label %if.end.14

if.then.14:                                       ; preds = %if.end.13
  %add.14 = add nsw i32 %conv.14, %bias
  %mul.14 = mul nsw i32 %add.14, %mf
  %shr.14 = lshr i32 %mul.14, 16
  %conv6.14 = trunc nuw i32 %shr.14 to i16
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.14, %if.else.14
  %storemerge.14 = phi i16 [ %conv15.14, %if.else.14 ], [ %conv6.14, %if.then.14 ]
  store i16 %storemerge.14, ptr %arrayidx.14, align 2
  %arrayidx.15 = getelementptr inbounds i8, ptr %dct, i64 30
  %30 = load i16, ptr %arrayidx.15, align 2
  %conv.15 = sext i16 %30 to i32
  %cmp1.15 = icmp sgt i16 %30, 0
  br i1 %cmp1.15, label %if.then.15, label %if.else.15

if.else.15:                                       ; preds = %if.end.14
  %sub.15 = sub nsw i32 %bias, %conv.15
  %mul12.15 = mul nsw i32 %sub.15, %mf
  %shr13.15 = lshr i32 %mul12.15, 16
  %31 = trunc nuw i32 %shr13.15 to i16
  %conv15.15 = sub i16 0, %31
  br label %if.end.15

if.then.15:                                       ; preds = %if.end.14
  %add.15 = add nsw i32 %conv.15, %bias
  %mul.15 = mul nsw i32 %add.15, %mf
  %shr.15 = lshr i32 %mul.15, 16
  %conv6.15 = trunc nuw i32 %shr.15 to i16
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.15, %if.else.15
  %storemerge.15 = phi i16 [ %conv15.15, %if.else.15 ], [ %conv6.15, %if.then.15 ]
  %or.140 = or i16 %storemerge, %storemerge.1
  %or.241 = or i16 %or.140, %storemerge.2
  %or.342 = or i16 %or.241, %storemerge.3
  %or.443 = or i16 %or.342, %storemerge.4
  %or.544 = or i16 %or.443, %storemerge.5
  %or.645 = or i16 %or.544, %storemerge.6
  %or.746 = or i16 %or.645, %storemerge.7
  %or.847 = or i16 %or.746, %storemerge.8
  %or.948 = or i16 %or.847, %storemerge.9
  %or.1049 = or i16 %or.948, %storemerge.10
  %or.1150 = or i16 %or.1049, %storemerge.11
  %or.1251 = or i16 %or.1150, %storemerge.12
  %or.1352 = or i16 %or.1251, %storemerge.13
  %or.1453 = or i16 %or.1352, %storemerge.14
  store i16 %storemerge.15, ptr %arrayidx.15, align 2
  %or.1554 = or i16 %or.1453, %storemerge.15
  %tobool = icmp ne i16 %or.1554, 0
  %lnot.ext = zext i1 %tobool to i32
  ret i32 %lnot.ext
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal range(i32 0, 2) i32 @quant_2x2_dc(ptr nocapture noundef %dct, i32 noundef %mf, i32 noundef %bias) #2 {
entry:
  %0 = load i16, ptr %dct, align 2
  %conv = sext i16 %0 to i32
  %cmp = icmp sgt i16 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %add = add nsw i32 %conv, %bias
  %mul = mul nsw i32 %add, %mf
  %shr = lshr i32 %mul, 16
  %conv4 = trunc nuw i32 %shr to i16
  br label %if.end

if.else:                                          ; preds = %entry
  %sub = sub nsw i32 %bias, %conv
  %mul8 = mul nsw i32 %sub, %mf
  %shr9 = lshr i32 %mul8, 16
  %1 = trunc nuw i32 %shr9 to i16
  %conv11 = sub i16 0, %1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %storemerge = phi i16 [ %conv11, %if.else ], [ %conv4, %if.then ]
  store i16 %storemerge, ptr %dct, align 2
  %arrayidx15 = getelementptr inbounds i8, ptr %dct, i64 2
  %2 = load i16, ptr %arrayidx15, align 2
  %conv16 = sext i16 %2 to i32
  %cmp17 = icmp sgt i16 %2, 0
  br i1 %cmp17, label %if.then19, label %if.else27

if.then19:                                        ; preds = %if.end
  %add22 = add nsw i32 %conv16, %bias
  %mul23 = mul nsw i32 %add22, %mf
  %shr24 = lshr i32 %mul23, 16
  %conv25 = trunc nuw i32 %shr24 to i16
  br label %if.end36

if.else27:                                        ; preds = %if.end
  %sub30 = sub nsw i32 %bias, %conv16
  %mul31 = mul nsw i32 %sub30, %mf
  %shr32 = lshr i32 %mul31, 16
  %3 = trunc nuw i32 %shr32 to i16
  %conv34 = sub i16 0, %3
  br label %if.end36

if.end36:                                         ; preds = %if.else27, %if.then19
  %storemerge132 = phi i16 [ %conv34, %if.else27 ], [ %conv25, %if.then19 ]
  store i16 %storemerge132, ptr %arrayidx15, align 2
  %arrayidx40 = getelementptr inbounds i8, ptr %dct, i64 4
  %4 = load i16, ptr %arrayidx40, align 2
  %conv41 = sext i16 %4 to i32
  %cmp42 = icmp sgt i16 %4, 0
  br i1 %cmp42, label %if.then44, label %if.else52

if.then44:                                        ; preds = %if.end36
  %add47 = add nsw i32 %conv41, %bias
  %mul48 = mul nsw i32 %add47, %mf
  %shr49 = lshr i32 %mul48, 16
  %conv50 = trunc nuw i32 %shr49 to i16
  br label %if.end61

if.else52:                                        ; preds = %if.end36
  %sub55 = sub nsw i32 %bias, %conv41
  %mul56 = mul nsw i32 %sub55, %mf
  %shr57 = lshr i32 %mul56, 16
  %5 = trunc nuw i32 %shr57 to i16
  %conv59 = sub i16 0, %5
  br label %if.end61

if.end61:                                         ; preds = %if.else52, %if.then44
  %storemerge134 = phi i16 [ %conv59, %if.else52 ], [ %conv50, %if.then44 ]
  store i16 %storemerge134, ptr %arrayidx40, align 2
  %arrayidx65 = getelementptr inbounds i8, ptr %dct, i64 6
  %6 = load i16, ptr %arrayidx65, align 2
  %conv66 = sext i16 %6 to i32
  %cmp67 = icmp sgt i16 %6, 0
  br i1 %cmp67, label %if.then69, label %if.else77

if.then69:                                        ; preds = %if.end61
  %add72 = add nsw i32 %conv66, %bias
  %mul73 = mul nsw i32 %add72, %mf
  %shr74 = lshr i32 %mul73, 16
  %conv75 = trunc nuw i32 %shr74 to i16
  br label %if.end86

if.else77:                                        ; preds = %if.end61
  %sub80 = sub nsw i32 %bias, %conv66
  %mul81 = mul nsw i32 %sub80, %mf
  %shr82 = lshr i32 %mul81, 16
  %7 = trunc nuw i32 %shr82 to i16
  %conv84 = sub i16 0, %7
  br label %if.end86

if.end86:                                         ; preds = %if.else77, %if.then69
  %storemerge136 = phi i16 [ %conv84, %if.else77 ], [ %conv75, %if.then69 ]
  store i16 %storemerge136, ptr %arrayidx65, align 2
  %or39133 = or i16 %storemerge132, %storemerge
  %or64135 = or i16 %or39133, %storemerge134
  %or89137 = or i16 %or64135, %storemerge136
  %tobool = icmp ne i16 %or89137, 0
  %lnot.ext = zext i1 %tobool to i32
  ret i32 %lnot.ext
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @dequant_4x4(ptr nocapture noundef %dct, ptr nocapture noundef readonly %dequant_mf, i32 noundef %i_qp) #3 {
entry:
  %rem = srem i32 %i_qp, 6
  %div = sdiv i32 %i_qp, 6
  %cmp = icmp sgt i32 %i_qp, 23
  br i1 %cmp, label %for.cond.preheader, label %if.else

for.cond.preheader:                               ; preds = %entry
  %sub = add nsw i32 %div, -4
  %idxprom2 = zext nneg i32 %rem to i64
  %0 = load i16, ptr %dct, align 2
  %conv = zext i16 %0 to i32
  %arrayidx5 = getelementptr inbounds [16 x i32], ptr %dequant_mf, i64 %idxprom2, i64 0
  %1 = load i32, ptr %arrayidx5, align 4
  %mul = mul i32 %1, %conv
  %shl = shl i32 %mul, %sub
  %conv6 = trunc i32 %shl to i16
  store i16 %conv6, ptr %dct, align 2
  %arrayidx.1 = getelementptr inbounds i8, ptr %dct, i64 2
  %2 = load i16, ptr %arrayidx.1, align 2
  %conv.1 = zext i16 %2 to i32
  %arrayidx5.1 = getelementptr inbounds [16 x i32], ptr %dequant_mf, i64 %idxprom2, i64 1
  %3 = load i32, ptr %arrayidx5.1, align 4
  %mul.1 = mul i32 %3, %conv.1
  %shl.1 = shl i32 %mul.1, %sub
  %conv6.1 = trunc i32 %shl.1 to i16
  store i16 %conv6.1, ptr %arrayidx.1, align 2
  %arrayidx.2 = getelementptr inbounds i8, ptr %dct, i64 4
  %4 = load i16, ptr %arrayidx.2, align 2
  %conv.2 = zext i16 %4 to i32
  %arrayidx5.2 = getelementptr inbounds [16 x i32], ptr %dequant_mf, i64 %idxprom2, i64 2
  %5 = load i32, ptr %arrayidx5.2, align 4
  %mul.2 = mul i32 %5, %conv.2
  %shl.2 = shl i32 %mul.2, %sub
  %conv6.2 = trunc i32 %shl.2 to i16
  store i16 %conv6.2, ptr %arrayidx.2, align 2
  %arrayidx.3 = getelementptr inbounds i8, ptr %dct, i64 6
  %6 = load i16, ptr %arrayidx.3, align 2
  %conv.3 = zext i16 %6 to i32
  %arrayidx5.3 = getelementptr inbounds [16 x i32], ptr %dequant_mf, i64 %idxprom2, i64 3
  %7 = load i32, ptr %arrayidx5.3, align 4
  %mul.3 = mul i32 %7, %conv.3
  %shl.3 = shl i32 %mul.3, %sub
  %conv6.3 = trunc i32 %shl.3 to i16
  store i16 %conv6.3, ptr %arrayidx.3, align 2
  %arrayidx.4 = getelementptr inbounds i8, ptr %dct, i64 8
  %8 = load i16, ptr %arrayidx.4, align 2
  %conv.4 = zext i16 %8 to i32
  %arrayidx5.4 = getelementptr inbounds [16 x i32], ptr %dequant_mf, i64 %idxprom2, i64 4
  %9 = load i32, ptr %arrayidx5.4, align 4
  %mul.4 = mul i32 %9, %conv.4
  %shl.4 = shl i32 %mul.4, %sub
  %conv6.4 = trunc i32 %shl.4 to i16
  store i16 %conv6.4, ptr %arrayidx.4, align 2
  %arrayidx.5 = getelementptr inbounds i8, ptr %dct, i64 10
  %10 = load i16, ptr %arrayidx.5, align 2
  %conv.5 = zext i16 %10 to i32
  %arrayidx5.5 = getelementptr inbounds [16 x i32], ptr %dequant_mf, i64 %idxprom2, i64 5
  %11 = load i32, ptr %arrayidx5.5, align 4
  %mul.5 = mul i32 %11, %conv.5
  %shl.5 = shl i32 %mul.5, %sub
  %conv6.5 = trunc i32 %shl.5 to i16
  store i16 %conv6.5, ptr %arrayidx.5, align 2
  %arrayidx.6 = getelementptr inbounds i8, ptr %dct, i64 12
  %12 = load i16, ptr %arrayidx.6, align 2
  %conv.6 = zext i16 %12 to i32
  %arrayidx5.6 = getelementptr inbounds [16 x i32], ptr %dequant_mf, i64 %idxprom2, i64 6
  %13 = load i32, ptr %arrayidx5.6, align 4
  %mul.6 = mul i32 %13, %conv.6
  %shl.6 = shl i32 %mul.6, %sub
  %conv6.6 = trunc i32 %shl.6 to i16
  store i16 %conv6.6, ptr %arrayidx.6, align 2
  %arrayidx.7 = getelementptr inbounds i8, ptr %dct, i64 14
  %14 = load i16, ptr %arrayidx.7, align 2
  %conv.7 = zext i16 %14 to i32
  %arrayidx5.7 = getelementptr inbounds [16 x i32], ptr %dequant_mf, i64 %idxprom2, i64 7
  %15 = load i32, ptr %arrayidx5.7, align 4
  %mul.7 = mul i32 %15, %conv.7
  %shl.7 = shl i32 %mul.7, %sub
  %conv6.7 = trunc i32 %shl.7 to i16
  store i16 %conv6.7, ptr %arrayidx.7, align 2
  %arrayidx.8 = getelementptr inbounds i8, ptr %dct, i64 16
  %16 = load i16, ptr %arrayidx.8, align 2
  %conv.8 = zext i16 %16 to i32
  %arrayidx5.8 = getelementptr inbounds [16 x i32], ptr %dequant_mf, i64 %idxprom2, i64 8
  %17 = load i32, ptr %arrayidx5.8, align 4
  %mul.8 = mul i32 %17, %conv.8
  %shl.8 = shl i32 %mul.8, %sub
  %conv6.8 = trunc i32 %shl.8 to i16
  store i16 %conv6.8, ptr %arrayidx.8, align 2
  %arrayidx.9 = getelementptr inbounds i8, ptr %dct, i64 18
  %18 = load i16, ptr %arrayidx.9, align 2
  %conv.9 = zext i16 %18 to i32
  %arrayidx5.9 = getelementptr inbounds [16 x i32], ptr %dequant_mf, i64 %idxprom2, i64 9
  %19 = load i32, ptr %arrayidx5.9, align 4
  %mul.9 = mul i32 %19, %conv.9
  %shl.9 = shl i32 %mul.9, %sub
  %conv6.9 = trunc i32 %shl.9 to i16
  store i16 %conv6.9, ptr %arrayidx.9, align 2
  %arrayidx.10 = getelementptr inbounds i8, ptr %dct, i64 20
  %20 = load i16, ptr %arrayidx.10, align 2
  %conv.10 = zext i16 %20 to i32
  %arrayidx5.10 = getelementptr inbounds [16 x i32], ptr %dequant_mf, i64 %idxprom2, i64 10
  %21 = load i32, ptr %arrayidx5.10, align 4
  %mul.10 = mul i32 %21, %conv.10
  %shl.10 = shl i32 %mul.10, %sub
  %conv6.10 = trunc i32 %shl.10 to i16
  store i16 %conv6.10, ptr %arrayidx.10, align 2
  %arrayidx.11 = getelementptr inbounds i8, ptr %dct, i64 22
  %22 = load i16, ptr %arrayidx.11, align 2
  %conv.11 = zext i16 %22 to i32
  %arrayidx5.11 = getelementptr inbounds [16 x i32], ptr %dequant_mf, i64 %idxprom2, i64 11
  %23 = load i32, ptr %arrayidx5.11, align 4
  %mul.11 = mul i32 %23, %conv.11
  %shl.11 = shl i32 %mul.11, %sub
  %conv6.11 = trunc i32 %shl.11 to i16
  store i16 %conv6.11, ptr %arrayidx.11, align 2
  %arrayidx.12 = getelementptr inbounds i8, ptr %dct, i64 24
  %24 = load i16, ptr %arrayidx.12, align 2
  %conv.12 = zext i16 %24 to i32
  %arrayidx5.12 = getelementptr inbounds [16 x i32], ptr %dequant_mf, i64 %idxprom2, i64 12
  %25 = load i32, ptr %arrayidx5.12, align 4
  %mul.12 = mul i32 %25, %conv.12
  %shl.12 = shl i32 %mul.12, %sub
  %conv6.12 = trunc i32 %shl.12 to i16
  store i16 %conv6.12, ptr %arrayidx.12, align 2
  %arrayidx.13 = getelementptr inbounds i8, ptr %dct, i64 26
  %26 = load i16, ptr %arrayidx.13, align 2
  %conv.13 = zext i16 %26 to i32
  %arrayidx5.13 = getelementptr inbounds [16 x i32], ptr %dequant_mf, i64 %idxprom2, i64 13
  %27 = load i32, ptr %arrayidx5.13, align 4
  %mul.13 = mul i32 %27, %conv.13
  %shl.13 = shl i32 %mul.13, %sub
  %conv6.13 = trunc i32 %shl.13 to i16
  store i16 %conv6.13, ptr %arrayidx.13, align 2
  %arrayidx.14 = getelementptr inbounds i8, ptr %dct, i64 28
  %28 = load i16, ptr %arrayidx.14, align 2
  %conv.14 = zext i16 %28 to i32
  %arrayidx5.14 = getelementptr inbounds [16 x i32], ptr %dequant_mf, i64 %idxprom2, i64 14
  %29 = load i32, ptr %arrayidx5.14, align 4
  %mul.14 = mul i32 %29, %conv.14
  %shl.14 = shl i32 %mul.14, %sub
  %conv6.14 = trunc i32 %shl.14 to i16
  store i16 %conv6.14, ptr %arrayidx.14, align 2
  %arrayidx.15 = getelementptr inbounds i8, ptr %dct, i64 30
  %30 = load i16, ptr %arrayidx.15, align 2
  %conv.15 = zext i16 %30 to i32
  %arrayidx5.15 = getelementptr inbounds [16 x i32], ptr %dequant_mf, i64 %idxprom2, i64 15
  %31 = load i32, ptr %arrayidx5.15, align 4
  %mul.15 = mul i32 %31, %conv.15
  %shl.15 = shl i32 %mul.15, %sub
  br label %if.end

if.else:                                          ; preds = %entry
  %sub9 = sub nsw i32 4, %div
  %sub10 = sub nsw i32 3, %div
  %shl11 = shl nuw i32 1, %sub10
  %idxprom21 = sext i32 %rem to i64
  %32 = load i16, ptr %dct, align 2
  %conv20 = sext i16 %32 to i32
  %arrayidx24 = getelementptr inbounds [16 x i32], ptr %dequant_mf, i64 %idxprom21, i64 0
  %33 = load i32, ptr %arrayidx24, align 4
  %mul25 = mul nsw i32 %33, %conv20
  %add = add nsw i32 %mul25, %shl11
  %shr = ashr i32 %add, %sub9
  %conv27 = trunc i32 %shr to i16
  store i16 %conv27, ptr %dct, align 2
  %arrayidx19.1 = getelementptr inbounds i8, ptr %dct, i64 2
  %34 = load i16, ptr %arrayidx19.1, align 2
  %conv20.1 = sext i16 %34 to i32
  %arrayidx24.1 = getelementptr inbounds [16 x i32], ptr %dequant_mf, i64 %idxprom21, i64 1
  %35 = load i32, ptr %arrayidx24.1, align 4
  %mul25.1 = mul nsw i32 %35, %conv20.1
  %add.1 = add nsw i32 %mul25.1, %shl11
  %shr.1 = ashr i32 %add.1, %sub9
  %conv27.1 = trunc i32 %shr.1 to i16
  store i16 %conv27.1, ptr %arrayidx19.1, align 2
  %arrayidx19.2 = getelementptr inbounds i8, ptr %dct, i64 4
  %36 = load i16, ptr %arrayidx19.2, align 2
  %conv20.2 = sext i16 %36 to i32
  %arrayidx24.2 = getelementptr inbounds [16 x i32], ptr %dequant_mf, i64 %idxprom21, i64 2
  %37 = load i32, ptr %arrayidx24.2, align 4
  %mul25.2 = mul nsw i32 %37, %conv20.2
  %add.2 = add nsw i32 %mul25.2, %shl11
  %shr.2 = ashr i32 %add.2, %sub9
  %conv27.2 = trunc i32 %shr.2 to i16
  store i16 %conv27.2, ptr %arrayidx19.2, align 2
  %arrayidx19.3 = getelementptr inbounds i8, ptr %dct, i64 6
  %38 = load i16, ptr %arrayidx19.3, align 2
  %conv20.3 = sext i16 %38 to i32
  %arrayidx24.3 = getelementptr inbounds [16 x i32], ptr %dequant_mf, i64 %idxprom21, i64 3
  %39 = load i32, ptr %arrayidx24.3, align 4
  %mul25.3 = mul nsw i32 %39, %conv20.3
  %add.3 = add nsw i32 %mul25.3, %shl11
  %shr.3 = ashr i32 %add.3, %sub9
  %conv27.3 = trunc i32 %shr.3 to i16
  store i16 %conv27.3, ptr %arrayidx19.3, align 2
  %arrayidx19.4 = getelementptr inbounds i8, ptr %dct, i64 8
  %40 = load i16, ptr %arrayidx19.4, align 2
  %conv20.4 = sext i16 %40 to i32
  %arrayidx24.4 = getelementptr inbounds [16 x i32], ptr %dequant_mf, i64 %idxprom21, i64 4
  %41 = load i32, ptr %arrayidx24.4, align 4
  %mul25.4 = mul nsw i32 %41, %conv20.4
  %add.4 = add nsw i32 %mul25.4, %shl11
  %shr.4 = ashr i32 %add.4, %sub9
  %conv27.4 = trunc i32 %shr.4 to i16
  store i16 %conv27.4, ptr %arrayidx19.4, align 2
  %arrayidx19.5 = getelementptr inbounds i8, ptr %dct, i64 10
  %42 = load i16, ptr %arrayidx19.5, align 2
  %conv20.5 = sext i16 %42 to i32
  %arrayidx24.5 = getelementptr inbounds [16 x i32], ptr %dequant_mf, i64 %idxprom21, i64 5
  %43 = load i32, ptr %arrayidx24.5, align 4
  %mul25.5 = mul nsw i32 %43, %conv20.5
  %add.5 = add nsw i32 %mul25.5, %shl11
  %shr.5 = ashr i32 %add.5, %sub9
  %conv27.5 = trunc i32 %shr.5 to i16
  store i16 %conv27.5, ptr %arrayidx19.5, align 2
  %arrayidx19.6 = getelementptr inbounds i8, ptr %dct, i64 12
  %44 = load i16, ptr %arrayidx19.6, align 2
  %conv20.6 = sext i16 %44 to i32
  %arrayidx24.6 = getelementptr inbounds [16 x i32], ptr %dequant_mf, i64 %idxprom21, i64 6
  %45 = load i32, ptr %arrayidx24.6, align 4
  %mul25.6 = mul nsw i32 %45, %conv20.6
  %add.6 = add nsw i32 %mul25.6, %shl11
  %shr.6 = ashr i32 %add.6, %sub9
  %conv27.6 = trunc i32 %shr.6 to i16
  store i16 %conv27.6, ptr %arrayidx19.6, align 2
  %arrayidx19.7 = getelementptr inbounds i8, ptr %dct, i64 14
  %46 = load i16, ptr %arrayidx19.7, align 2
  %conv20.7 = sext i16 %46 to i32
  %arrayidx24.7 = getelementptr inbounds [16 x i32], ptr %dequant_mf, i64 %idxprom21, i64 7
  %47 = load i32, ptr %arrayidx24.7, align 4
  %mul25.7 = mul nsw i32 %47, %conv20.7
  %add.7 = add nsw i32 %mul25.7, %shl11
  %shr.7 = ashr i32 %add.7, %sub9
  %conv27.7 = trunc i32 %shr.7 to i16
  store i16 %conv27.7, ptr %arrayidx19.7, align 2
  %arrayidx19.8 = getelementptr inbounds i8, ptr %dct, i64 16
  %48 = load i16, ptr %arrayidx19.8, align 2
  %conv20.8 = sext i16 %48 to i32
  %arrayidx24.8 = getelementptr inbounds [16 x i32], ptr %dequant_mf, i64 %idxprom21, i64 8
  %49 = load i32, ptr %arrayidx24.8, align 4
  %mul25.8 = mul nsw i32 %49, %conv20.8
  %add.8 = add nsw i32 %mul25.8, %shl11
  %shr.8 = ashr i32 %add.8, %sub9
  %conv27.8 = trunc i32 %shr.8 to i16
  store i16 %conv27.8, ptr %arrayidx19.8, align 2
  %arrayidx19.9 = getelementptr inbounds i8, ptr %dct, i64 18
  %50 = load i16, ptr %arrayidx19.9, align 2
  %conv20.9 = sext i16 %50 to i32
  %arrayidx24.9 = getelementptr inbounds [16 x i32], ptr %dequant_mf, i64 %idxprom21, i64 9
  %51 = load i32, ptr %arrayidx24.9, align 4
  %mul25.9 = mul nsw i32 %51, %conv20.9
  %add.9 = add nsw i32 %mul25.9, %shl11
  %shr.9 = ashr i32 %add.9, %sub9
  %conv27.9 = trunc i32 %shr.9 to i16
  store i16 %conv27.9, ptr %arrayidx19.9, align 2
  %arrayidx19.10 = getelementptr inbounds i8, ptr %dct, i64 20
  %52 = load i16, ptr %arrayidx19.10, align 2
  %conv20.10 = sext i16 %52 to i32
  %arrayidx24.10 = getelementptr inbounds [16 x i32], ptr %dequant_mf, i64 %idxprom21, i64 10
  %53 = load i32, ptr %arrayidx24.10, align 4
  %mul25.10 = mul nsw i32 %53, %conv20.10
  %add.10 = add nsw i32 %mul25.10, %shl11
  %shr.10 = ashr i32 %add.10, %sub9
  %conv27.10 = trunc i32 %shr.10 to i16
  store i16 %conv27.10, ptr %arrayidx19.10, align 2
  %arrayidx19.11 = getelementptr inbounds i8, ptr %dct, i64 22
  %54 = load i16, ptr %arrayidx19.11, align 2
  %conv20.11 = sext i16 %54 to i32
  %arrayidx24.11 = getelementptr inbounds [16 x i32], ptr %dequant_mf, i64 %idxprom21, i64 11
  %55 = load i32, ptr %arrayidx24.11, align 4
  %mul25.11 = mul nsw i32 %55, %conv20.11
  %add.11 = add nsw i32 %mul25.11, %shl11
  %shr.11 = ashr i32 %add.11, %sub9
  %conv27.11 = trunc i32 %shr.11 to i16
  store i16 %conv27.11, ptr %arrayidx19.11, align 2
  %arrayidx19.12 = getelementptr inbounds i8, ptr %dct, i64 24
  %56 = load i16, ptr %arrayidx19.12, align 2
  %conv20.12 = sext i16 %56 to i32
  %arrayidx24.12 = getelementptr inbounds [16 x i32], ptr %dequant_mf, i64 %idxprom21, i64 12
  %57 = load i32, ptr %arrayidx24.12, align 4
  %mul25.12 = mul nsw i32 %57, %conv20.12
  %add.12 = add nsw i32 %mul25.12, %shl11
  %shr.12 = ashr i32 %add.12, %sub9
  %conv27.12 = trunc i32 %shr.12 to i16
  store i16 %conv27.12, ptr %arrayidx19.12, align 2
  %arrayidx19.13 = getelementptr inbounds i8, ptr %dct, i64 26
  %58 = load i16, ptr %arrayidx19.13, align 2
  %conv20.13 = sext i16 %58 to i32
  %arrayidx24.13 = getelementptr inbounds [16 x i32], ptr %dequant_mf, i64 %idxprom21, i64 13
  %59 = load i32, ptr %arrayidx24.13, align 4
  %mul25.13 = mul nsw i32 %59, %conv20.13
  %add.13 = add nsw i32 %mul25.13, %shl11
  %shr.13 = ashr i32 %add.13, %sub9
  %conv27.13 = trunc i32 %shr.13 to i16
  store i16 %conv27.13, ptr %arrayidx19.13, align 2
  %arrayidx19.14 = getelementptr inbounds i8, ptr %dct, i64 28
  %60 = load i16, ptr %arrayidx19.14, align 2
  %conv20.14 = sext i16 %60 to i32
  %arrayidx24.14 = getelementptr inbounds [16 x i32], ptr %dequant_mf, i64 %idxprom21, i64 14
  %61 = load i32, ptr %arrayidx24.14, align 4
  %mul25.14 = mul nsw i32 %61, %conv20.14
  %add.14 = add nsw i32 %mul25.14, %shl11
  %shr.14 = ashr i32 %add.14, %sub9
  %conv27.14 = trunc i32 %shr.14 to i16
  store i16 %conv27.14, ptr %arrayidx19.14, align 2
  %arrayidx19.15 = getelementptr inbounds i8, ptr %dct, i64 30
  %62 = load i16, ptr %arrayidx19.15, align 2
  %conv20.15 = sext i16 %62 to i32
  %arrayidx24.15 = getelementptr inbounds [16 x i32], ptr %dequant_mf, i64 %idxprom21, i64 15
  %63 = load i32, ptr %arrayidx24.15, align 4
  %mul25.15 = mul nsw i32 %63, %conv20.15
  %add.15 = add nsw i32 %mul25.15, %shl11
  %shr.15 = ashr i32 %add.15, %sub9
  br label %if.end

if.end:                                           ; preds = %if.else, %for.cond.preheader
  %shr.15.sink = phi i32 [ %shr.15, %if.else ], [ %shl.15, %for.cond.preheader ]
  %arrayidx19.15.sink = phi ptr [ %arrayidx19.15, %if.else ], [ %arrayidx.15, %for.cond.preheader ]
  %conv27.15 = trunc i32 %shr.15.sink to i16
  store i16 %conv27.15, ptr %arrayidx19.15.sink, align 2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @dequant_4x4_dc(ptr nocapture noundef %dct, ptr nocapture noundef readonly %dequant_mf, i32 noundef %i_qp) #2 {
entry:
  %div = sdiv i32 %i_qp, 6
  %rem7 = srem i32 %i_qp, 6
  %cmp = icmp sgt i32 %i_qp, 35
  %0 = load i16, ptr %dct, align 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %sub = add nsw i32 %div, -6
  %rem = urem i32 %i_qp, 6
  %idxprom = zext nneg i32 %rem to i64
  %arrayidx = getelementptr inbounds [16 x i32], ptr %dequant_mf, i64 %idxprom
  %1 = load i32, ptr %arrayidx, align 4
  %shl = shl i32 %1, %sub
  %2 = trunc i32 %shl to i16
  %arrayidx4.1 = getelementptr inbounds i8, ptr %dct, i64 2
  %3 = load i16, ptr %arrayidx4.1, align 2
  %arrayidx4.2 = getelementptr inbounds i8, ptr %dct, i64 4
  %4 = load i16, ptr %arrayidx4.2, align 2
  %arrayidx4.3 = getelementptr inbounds i8, ptr %dct, i64 6
  %5 = load i16, ptr %arrayidx4.3, align 2
  %arrayidx4.4 = getelementptr inbounds i8, ptr %dct, i64 8
  %6 = load i16, ptr %arrayidx4.4, align 2
  %arrayidx4.5 = getelementptr inbounds i8, ptr %dct, i64 10
  %7 = load i16, ptr %arrayidx4.5, align 2
  %arrayidx4.6 = getelementptr inbounds i8, ptr %dct, i64 12
  %8 = load i16, ptr %arrayidx4.6, align 2
  %arrayidx4.7 = getelementptr inbounds i8, ptr %dct, i64 14
  %9 = load i16, ptr %arrayidx4.7, align 2
  %10 = insertelement <8 x i16> poison, i16 %0, i64 0
  %11 = insertelement <8 x i16> %10, i16 %3, i64 1
  %12 = insertelement <8 x i16> %11, i16 %4, i64 2
  %13 = insertelement <8 x i16> %12, i16 %5, i64 3
  %14 = insertelement <8 x i16> %13, i16 %6, i64 4
  %15 = insertelement <8 x i16> %14, i16 %7, i64 5
  %16 = insertelement <8 x i16> %15, i16 %8, i64 6
  %17 = insertelement <8 x i16> %16, i16 %9, i64 7
  %18 = insertelement <8 x i16> poison, i16 %2, i64 0
  %19 = shufflevector <8 x i16> %18, <8 x i16> poison, <8 x i32> zeroinitializer
  %20 = mul <8 x i16> %17, %19
  store <8 x i16> %20, ptr %dct, align 2
  %arrayidx4.8 = getelementptr inbounds i8, ptr %dct, i64 16
  %21 = load <8 x i16>, ptr %arrayidx4.8, align 2
  %22 = mul <8 x i16> %21, %19
  store <8 x i16> %22, ptr %arrayidx4.8, align 2
  br label %if.end

if.else:                                          ; preds = %entry
  %idxprom8 = sext i32 %rem7 to i64
  %arrayidx9 = getelementptr inbounds [16 x i32], ptr %dequant_mf, i64 %idxprom8
  %23 = load i32, ptr %arrayidx9, align 4
  %sub11 = sub nsw i32 6, %div
  %sub12 = sub nsw i32 5, %div
  %shl13 = shl nuw i32 1, %sub12
  %conv22 = sext i16 %0 to i32
  %mul23 = mul nsw i32 %23, %conv22
  %add = add nsw i32 %mul23, %shl13
  %shr = ashr i32 %add, %sub11
  %conv25 = trunc i32 %shr to i16
  store i16 %conv25, ptr %dct, align 2
  %arrayidx21.1 = getelementptr inbounds i8, ptr %dct, i64 2
  %24 = load <8 x i16>, ptr %arrayidx21.1, align 2
  %25 = sext <8 x i16> %24 to <8 x i32>
  %26 = insertelement <8 x i32> poison, i32 %23, i64 0
  %27 = shufflevector <8 x i32> %26, <8 x i32> poison, <8 x i32> zeroinitializer
  %28 = mul nsw <8 x i32> %27, %25
  %29 = insertelement <8 x i32> poison, i32 %shl13, i64 0
  %30 = shufflevector <8 x i32> %29, <8 x i32> poison, <8 x i32> zeroinitializer
  %31 = add nsw <8 x i32> %28, %30
  %32 = insertelement <8 x i32> poison, i32 %sub11, i64 0
  %33 = shufflevector <8 x i32> %32, <8 x i32> poison, <8 x i32> zeroinitializer
  %34 = ashr <8 x i32> %31, %33
  %35 = trunc <8 x i32> %34 to <8 x i16>
  store <8 x i16> %35, ptr %arrayidx21.1, align 2
  %arrayidx21.9 = getelementptr inbounds i8, ptr %dct, i64 18
  %36 = load i16, ptr %arrayidx21.9, align 2
  %conv22.9 = sext i16 %36 to i32
  %mul23.9 = mul nsw i32 %23, %conv22.9
  %add.9 = add nsw i32 %mul23.9, %shl13
  %shr.9 = ashr i32 %add.9, %sub11
  %conv25.9 = trunc i32 %shr.9 to i16
  store i16 %conv25.9, ptr %arrayidx21.9, align 2
  %arrayidx21.10 = getelementptr inbounds i8, ptr %dct, i64 20
  %37 = load i16, ptr %arrayidx21.10, align 2
  %conv22.10 = sext i16 %37 to i32
  %mul23.10 = mul nsw i32 %23, %conv22.10
  %add.10 = add nsw i32 %mul23.10, %shl13
  %shr.10 = ashr i32 %add.10, %sub11
  %conv25.10 = trunc i32 %shr.10 to i16
  store i16 %conv25.10, ptr %arrayidx21.10, align 2
  %arrayidx21.11 = getelementptr inbounds i8, ptr %dct, i64 22
  %38 = load i16, ptr %arrayidx21.11, align 2
  %conv22.11 = sext i16 %38 to i32
  %mul23.11 = mul nsw i32 %23, %conv22.11
  %add.11 = add nsw i32 %mul23.11, %shl13
  %shr.11 = ashr i32 %add.11, %sub11
  %conv25.11 = trunc i32 %shr.11 to i16
  store i16 %conv25.11, ptr %arrayidx21.11, align 2
  %arrayidx21.12 = getelementptr inbounds i8, ptr %dct, i64 24
  %39 = load i16, ptr %arrayidx21.12, align 2
  %conv22.12 = sext i16 %39 to i32
  %mul23.12 = mul nsw i32 %23, %conv22.12
  %add.12 = add nsw i32 %mul23.12, %shl13
  %shr.12 = ashr i32 %add.12, %sub11
  %conv25.12 = trunc i32 %shr.12 to i16
  store i16 %conv25.12, ptr %arrayidx21.12, align 2
  %arrayidx21.13 = getelementptr inbounds i8, ptr %dct, i64 26
  %40 = load i16, ptr %arrayidx21.13, align 2
  %conv22.13 = sext i16 %40 to i32
  %mul23.13 = mul nsw i32 %23, %conv22.13
  %add.13 = add nsw i32 %mul23.13, %shl13
  %shr.13 = ashr i32 %add.13, %sub11
  %conv25.13 = trunc i32 %shr.13 to i16
  store i16 %conv25.13, ptr %arrayidx21.13, align 2
  %arrayidx21.14 = getelementptr inbounds i8, ptr %dct, i64 28
  %41 = load i16, ptr %arrayidx21.14, align 2
  %conv22.14 = sext i16 %41 to i32
  %mul23.14 = mul nsw i32 %23, %conv22.14
  %add.14 = add nsw i32 %mul23.14, %shl13
  %shr.14 = ashr i32 %add.14, %sub11
  %conv25.14 = trunc i32 %shr.14 to i16
  store i16 %conv25.14, ptr %arrayidx21.14, align 2
  %arrayidx21.15 = getelementptr inbounds i8, ptr %dct, i64 30
  %42 = load i16, ptr %arrayidx21.15, align 2
  %conv22.15 = sext i16 %42 to i32
  %mul23.15 = mul nsw i32 %23, %conv22.15
  %add.15 = add nsw i32 %mul23.15, %shl13
  %shr.15 = ashr i32 %add.15, %sub11
  %conv25.15 = trunc i32 %shr.15 to i16
  store i16 %conv25.15, ptr %arrayidx21.15, align 2
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @dequant_8x8(ptr nocapture noundef %dct, ptr nocapture noundef readonly %dequant_mf, i32 noundef %i_qp) #1 {
entry:
  %rem = srem i32 %i_qp, 6
  %div = sdiv i32 %i_qp, 6
  %sub = add nsw i32 %div, -6
  %cmp = icmp sgt i32 %i_qp, 35
  br i1 %cmp, label %for.cond.preheader, label %if.else

for.cond.preheader:                               ; preds = %entry
  %idxprom2 = zext nneg i32 %rem to i64
  %scevgep73 = getelementptr i8, ptr %dct, i64 128
  %0 = shl nuw nsw i64 %idxprom2, 8
  %scevgep74 = getelementptr i8, ptr %dequant_mf, i64 %0
  %1 = getelementptr i8, ptr %dequant_mf, i64 %0
  %scevgep75 = getelementptr i8, ptr %1, i64 256
  %bound076 = icmp ugt ptr %scevgep75, %dct
  %bound177 = icmp ult ptr %scevgep74, %scevgep73
  %found.conflict78 = and i1 %bound076, %bound177
  br i1 %found.conflict78, label %for.body, label %vector.body83

vector.body83:                                    ; preds = %for.cond.preheader
  %broadcast.splatinsert93 = insertelement <4 x i32> poison, i32 %sub, i64 0
  %broadcast.splat94 = shufflevector <4 x i32> %broadcast.splatinsert93, <4 x i32> poison, <4 x i32> zeroinitializer
  %2 = getelementptr inbounds i8, ptr %dct, i64 8
  %3 = getelementptr inbounds i8, ptr %dct, i64 16
  %4 = getelementptr inbounds i8, ptr %dct, i64 24
  %wide.load85 = load <4 x i16>, ptr %dct, align 2, !alias.scope !26, !noalias !29
  %wide.load86 = load <4 x i16>, ptr %2, align 2, !alias.scope !26, !noalias !29
  %wide.load87 = load <4 x i16>, ptr %3, align 2, !alias.scope !26, !noalias !29
  %wide.load88 = load <4 x i16>, ptr %4, align 2, !alias.scope !26, !noalias !29
  %5 = zext <4 x i16> %wide.load85 to <4 x i32>
  %6 = zext <4 x i16> %wide.load86 to <4 x i32>
  %7 = zext <4 x i16> %wide.load87 to <4 x i32>
  %8 = zext <4 x i16> %wide.load88 to <4 x i32>
  %9 = getelementptr inbounds [64 x i32], ptr %dequant_mf, i64 %idxprom2, i64 0
  %10 = getelementptr inbounds i8, ptr %9, i64 16
  %11 = getelementptr inbounds i8, ptr %9, i64 32
  %12 = getelementptr inbounds i8, ptr %9, i64 48
  %wide.load89 = load <4 x i32>, ptr %9, align 4, !alias.scope !29
  %wide.load90 = load <4 x i32>, ptr %10, align 4, !alias.scope !29
  %wide.load91 = load <4 x i32>, ptr %11, align 4, !alias.scope !29
  %wide.load92 = load <4 x i32>, ptr %12, align 4, !alias.scope !29
  %13 = mul <4 x i32> %wide.load89, %5
  %14 = mul <4 x i32> %wide.load90, %6
  %15 = mul <4 x i32> %wide.load91, %7
  %16 = mul <4 x i32> %wide.load92, %8
  %17 = shl <4 x i32> %13, %broadcast.splat94
  %18 = shl <4 x i32> %14, %broadcast.splat94
  %19 = shl <4 x i32> %15, %broadcast.splat94
  %20 = shl <4 x i32> %16, %broadcast.splat94
  %21 = trunc <4 x i32> %17 to <4 x i16>
  %22 = trunc <4 x i32> %18 to <4 x i16>
  %23 = trunc <4 x i32> %19 to <4 x i16>
  %24 = trunc <4 x i32> %20 to <4 x i16>
  store <4 x i16> %21, ptr %dct, align 2, !alias.scope !26, !noalias !29
  store <4 x i16> %22, ptr %2, align 2, !alias.scope !26, !noalias !29
  store <4 x i16> %23, ptr %3, align 2, !alias.scope !26, !noalias !29
  store <4 x i16> %24, ptr %4, align 2, !alias.scope !26, !noalias !29
  %25 = getelementptr inbounds i8, ptr %dct, i64 32
  %26 = getelementptr inbounds i8, ptr %dct, i64 40
  %27 = getelementptr inbounds i8, ptr %dct, i64 48
  %28 = getelementptr inbounds i8, ptr %dct, i64 56
  %wide.load85.1 = load <4 x i16>, ptr %25, align 2, !alias.scope !26, !noalias !29
  %wide.load86.1 = load <4 x i16>, ptr %26, align 2, !alias.scope !26, !noalias !29
  %wide.load87.1 = load <4 x i16>, ptr %27, align 2, !alias.scope !26, !noalias !29
  %wide.load88.1 = load <4 x i16>, ptr %28, align 2, !alias.scope !26, !noalias !29
  %29 = zext <4 x i16> %wide.load85.1 to <4 x i32>
  %30 = zext <4 x i16> %wide.load86.1 to <4 x i32>
  %31 = zext <4 x i16> %wide.load87.1 to <4 x i32>
  %32 = zext <4 x i16> %wide.load88.1 to <4 x i32>
  %33 = getelementptr inbounds [64 x i32], ptr %dequant_mf, i64 %idxprom2, i64 16
  %34 = getelementptr inbounds i8, ptr %33, i64 16
  %35 = getelementptr inbounds i8, ptr %33, i64 32
  %36 = getelementptr inbounds i8, ptr %33, i64 48
  %wide.load89.1 = load <4 x i32>, ptr %33, align 4, !alias.scope !29
  %wide.load90.1 = load <4 x i32>, ptr %34, align 4, !alias.scope !29
  %wide.load91.1 = load <4 x i32>, ptr %35, align 4, !alias.scope !29
  %wide.load92.1 = load <4 x i32>, ptr %36, align 4, !alias.scope !29
  %37 = mul <4 x i32> %wide.load89.1, %29
  %38 = mul <4 x i32> %wide.load90.1, %30
  %39 = mul <4 x i32> %wide.load91.1, %31
  %40 = mul <4 x i32> %wide.load92.1, %32
  %41 = shl <4 x i32> %37, %broadcast.splat94
  %42 = shl <4 x i32> %38, %broadcast.splat94
  %43 = shl <4 x i32> %39, %broadcast.splat94
  %44 = shl <4 x i32> %40, %broadcast.splat94
  %45 = trunc <4 x i32> %41 to <4 x i16>
  %46 = trunc <4 x i32> %42 to <4 x i16>
  %47 = trunc <4 x i32> %43 to <4 x i16>
  %48 = trunc <4 x i32> %44 to <4 x i16>
  store <4 x i16> %45, ptr %25, align 2, !alias.scope !26, !noalias !29
  store <4 x i16> %46, ptr %26, align 2, !alias.scope !26, !noalias !29
  store <4 x i16> %47, ptr %27, align 2, !alias.scope !26, !noalias !29
  store <4 x i16> %48, ptr %28, align 2, !alias.scope !26, !noalias !29
  %49 = getelementptr inbounds i8, ptr %dct, i64 64
  %50 = getelementptr inbounds i8, ptr %dct, i64 72
  %51 = getelementptr inbounds i8, ptr %dct, i64 80
  %52 = getelementptr inbounds i8, ptr %dct, i64 88
  %wide.load85.2 = load <4 x i16>, ptr %49, align 2, !alias.scope !26, !noalias !29
  %wide.load86.2 = load <4 x i16>, ptr %50, align 2, !alias.scope !26, !noalias !29
  %wide.load87.2 = load <4 x i16>, ptr %51, align 2, !alias.scope !26, !noalias !29
  %wide.load88.2 = load <4 x i16>, ptr %52, align 2, !alias.scope !26, !noalias !29
  %53 = zext <4 x i16> %wide.load85.2 to <4 x i32>
  %54 = zext <4 x i16> %wide.load86.2 to <4 x i32>
  %55 = zext <4 x i16> %wide.load87.2 to <4 x i32>
  %56 = zext <4 x i16> %wide.load88.2 to <4 x i32>
  %57 = getelementptr inbounds [64 x i32], ptr %dequant_mf, i64 %idxprom2, i64 32
  %58 = getelementptr inbounds i8, ptr %57, i64 16
  %59 = getelementptr inbounds i8, ptr %57, i64 32
  %60 = getelementptr inbounds i8, ptr %57, i64 48
  %wide.load89.2 = load <4 x i32>, ptr %57, align 4, !alias.scope !29
  %wide.load90.2 = load <4 x i32>, ptr %58, align 4, !alias.scope !29
  %wide.load91.2 = load <4 x i32>, ptr %59, align 4, !alias.scope !29
  %wide.load92.2 = load <4 x i32>, ptr %60, align 4, !alias.scope !29
  %61 = mul <4 x i32> %wide.load89.2, %53
  %62 = mul <4 x i32> %wide.load90.2, %54
  %63 = mul <4 x i32> %wide.load91.2, %55
  %64 = mul <4 x i32> %wide.load92.2, %56
  %65 = shl <4 x i32> %61, %broadcast.splat94
  %66 = shl <4 x i32> %62, %broadcast.splat94
  %67 = shl <4 x i32> %63, %broadcast.splat94
  %68 = shl <4 x i32> %64, %broadcast.splat94
  %69 = trunc <4 x i32> %65 to <4 x i16>
  %70 = trunc <4 x i32> %66 to <4 x i16>
  %71 = trunc <4 x i32> %67 to <4 x i16>
  %72 = trunc <4 x i32> %68 to <4 x i16>
  store <4 x i16> %69, ptr %49, align 2, !alias.scope !26, !noalias !29
  store <4 x i16> %70, ptr %50, align 2, !alias.scope !26, !noalias !29
  store <4 x i16> %71, ptr %51, align 2, !alias.scope !26, !noalias !29
  store <4 x i16> %72, ptr %52, align 2, !alias.scope !26, !noalias !29
  %73 = getelementptr inbounds i8, ptr %dct, i64 96
  %74 = getelementptr inbounds i8, ptr %dct, i64 104
  %75 = getelementptr inbounds i8, ptr %dct, i64 112
  %76 = getelementptr inbounds i8, ptr %dct, i64 120
  %wide.load85.3 = load <4 x i16>, ptr %73, align 2, !alias.scope !26, !noalias !29
  %wide.load86.3 = load <4 x i16>, ptr %74, align 2, !alias.scope !26, !noalias !29
  %wide.load87.3 = load <4 x i16>, ptr %75, align 2, !alias.scope !26, !noalias !29
  %wide.load88.3 = load <4 x i16>, ptr %76, align 2, !alias.scope !26, !noalias !29
  %77 = zext <4 x i16> %wide.load85.3 to <4 x i32>
  %78 = zext <4 x i16> %wide.load86.3 to <4 x i32>
  %79 = zext <4 x i16> %wide.load87.3 to <4 x i32>
  %80 = zext <4 x i16> %wide.load88.3 to <4 x i32>
  %81 = getelementptr inbounds [64 x i32], ptr %dequant_mf, i64 %idxprom2, i64 48
  %82 = getelementptr inbounds i8, ptr %81, i64 16
  %83 = getelementptr inbounds i8, ptr %81, i64 32
  %84 = getelementptr inbounds i8, ptr %81, i64 48
  %wide.load89.3 = load <4 x i32>, ptr %81, align 4, !alias.scope !29
  %wide.load90.3 = load <4 x i32>, ptr %82, align 4, !alias.scope !29
  %wide.load91.3 = load <4 x i32>, ptr %83, align 4, !alias.scope !29
  %wide.load92.3 = load <4 x i32>, ptr %84, align 4, !alias.scope !29
  %85 = mul <4 x i32> %wide.load89.3, %77
  %86 = mul <4 x i32> %wide.load90.3, %78
  %87 = mul <4 x i32> %wide.load91.3, %79
  %88 = mul <4 x i32> %wide.load92.3, %80
  %89 = shl <4 x i32> %85, %broadcast.splat94
  %90 = shl <4 x i32> %86, %broadcast.splat94
  %91 = shl <4 x i32> %87, %broadcast.splat94
  %92 = shl <4 x i32> %88, %broadcast.splat94
  %93 = trunc <4 x i32> %89 to <4 x i16>
  %94 = trunc <4 x i32> %90 to <4 x i16>
  %95 = trunc <4 x i32> %91 to <4 x i16>
  %96 = trunc <4 x i32> %92 to <4 x i16>
  store <4 x i16> %93, ptr %73, align 2, !alias.scope !26, !noalias !29
  store <4 x i16> %94, ptr %74, align 2, !alias.scope !26, !noalias !29
  store <4 x i16> %95, ptr %75, align 2, !alias.scope !26, !noalias !29
  store <4 x i16> %96, ptr %76, align 2, !alias.scope !26, !noalias !29
  br label %if.end

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv55 = phi i64 [ %indvars.iv.next56.1, %for.body ], [ 0, %for.cond.preheader ]
  %arrayidx = getelementptr inbounds i16, ptr %dct, i64 %indvars.iv55
  %97 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %97 to i32
  %arrayidx5 = getelementptr inbounds [64 x i32], ptr %dequant_mf, i64 %idxprom2, i64 %indvars.iv55
  %98 = load i32, ptr %arrayidx5, align 4
  %mul = mul i32 %98, %conv
  %shl = shl i32 %mul, %sub
  %conv6 = trunc i32 %shl to i16
  store i16 %conv6, ptr %arrayidx, align 2
  %indvars.iv.next56 = or disjoint i64 %indvars.iv55, 1
  %arrayidx.1 = getelementptr inbounds i16, ptr %dct, i64 %indvars.iv.next56
  %99 = load i16, ptr %arrayidx.1, align 2
  %conv.1 = zext i16 %99 to i32
  %arrayidx5.1 = getelementptr inbounds [64 x i32], ptr %dequant_mf, i64 %idxprom2, i64 %indvars.iv.next56
  %100 = load i32, ptr %arrayidx5.1, align 4
  %mul.1 = mul i32 %100, %conv.1
  %shl.1 = shl i32 %mul.1, %sub
  %conv6.1 = trunc i32 %shl.1 to i16
  store i16 %conv6.1, ptr %arrayidx.1, align 2
  %indvars.iv.next56.1 = add nuw nsw i64 %indvars.iv55, 2
  %exitcond58.not.1 = icmp eq i64 %indvars.iv.next56.1, 64
  br i1 %exitcond58.not.1, label %if.end, label %for.body, !llvm.loop !31

if.else:                                          ; preds = %entry
  %sub9 = sub nsw i32 6, %div
  %sub10 = sub nsw i32 5, %div
  %shl11 = shl nuw i32 1, %sub10
  %idxprom21 = sext i32 %rem to i64
  %scevgep = getelementptr i8, ptr %dct, i64 128
  %101 = shl nsw i64 %idxprom21, 8
  %scevgep61 = getelementptr i8, ptr %dequant_mf, i64 %101
  %102 = getelementptr i8, ptr %dequant_mf, i64 %101
  %scevgep62 = getelementptr i8, ptr %102, i64 256
  %bound0 = icmp ugt ptr %scevgep62, %dct
  %bound1 = icmp ult ptr %scevgep61, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %for.body17, label %vector.body

vector.body:                                      ; preds = %if.else
  %broadcast.splatinsert70 = insertelement <4 x i32> poison, i32 %sub9, i64 0
  %broadcast.splat71 = shufflevector <4 x i32> %broadcast.splatinsert70, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %shl11, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %103 = getelementptr inbounds i8, ptr %dct, i64 8
  %104 = getelementptr inbounds i8, ptr %dct, i64 16
  %105 = getelementptr inbounds i8, ptr %dct, i64 24
  %wide.load = load <4 x i16>, ptr %dct, align 2, !alias.scope !32, !noalias !35
  %wide.load63 = load <4 x i16>, ptr %103, align 2, !alias.scope !32, !noalias !35
  %wide.load64 = load <4 x i16>, ptr %104, align 2, !alias.scope !32, !noalias !35
  %wide.load65 = load <4 x i16>, ptr %105, align 2, !alias.scope !32, !noalias !35
  %106 = sext <4 x i16> %wide.load to <4 x i32>
  %107 = sext <4 x i16> %wide.load63 to <4 x i32>
  %108 = sext <4 x i16> %wide.load64 to <4 x i32>
  %109 = sext <4 x i16> %wide.load65 to <4 x i32>
  %110 = getelementptr inbounds [64 x i32], ptr %dequant_mf, i64 %idxprom21, i64 0
  %111 = getelementptr inbounds i8, ptr %110, i64 16
  %112 = getelementptr inbounds i8, ptr %110, i64 32
  %113 = getelementptr inbounds i8, ptr %110, i64 48
  %wide.load66 = load <4 x i32>, ptr %110, align 4, !alias.scope !35
  %wide.load67 = load <4 x i32>, ptr %111, align 4, !alias.scope !35
  %wide.load68 = load <4 x i32>, ptr %112, align 4, !alias.scope !35
  %wide.load69 = load <4 x i32>, ptr %113, align 4, !alias.scope !35
  %114 = mul nsw <4 x i32> %wide.load66, %106
  %115 = mul nsw <4 x i32> %wide.load67, %107
  %116 = mul nsw <4 x i32> %wide.load68, %108
  %117 = mul nsw <4 x i32> %wide.load69, %109
  %118 = add nsw <4 x i32> %114, %broadcast.splat
  %119 = add nsw <4 x i32> %115, %broadcast.splat
  %120 = add nsw <4 x i32> %116, %broadcast.splat
  %121 = add nsw <4 x i32> %117, %broadcast.splat
  %122 = ashr <4 x i32> %118, %broadcast.splat71
  %123 = ashr <4 x i32> %119, %broadcast.splat71
  %124 = ashr <4 x i32> %120, %broadcast.splat71
  %125 = ashr <4 x i32> %121, %broadcast.splat71
  %126 = trunc <4 x i32> %122 to <4 x i16>
  %127 = trunc <4 x i32> %123 to <4 x i16>
  %128 = trunc <4 x i32> %124 to <4 x i16>
  %129 = trunc <4 x i32> %125 to <4 x i16>
  store <4 x i16> %126, ptr %dct, align 2, !alias.scope !32, !noalias !35
  store <4 x i16> %127, ptr %103, align 2, !alias.scope !32, !noalias !35
  store <4 x i16> %128, ptr %104, align 2, !alias.scope !32, !noalias !35
  store <4 x i16> %129, ptr %105, align 2, !alias.scope !32, !noalias !35
  %130 = getelementptr inbounds i8, ptr %dct, i64 32
  %131 = getelementptr inbounds i8, ptr %dct, i64 40
  %132 = getelementptr inbounds i8, ptr %dct, i64 48
  %133 = getelementptr inbounds i8, ptr %dct, i64 56
  %wide.load.1 = load <4 x i16>, ptr %130, align 2, !alias.scope !32, !noalias !35
  %wide.load63.1 = load <4 x i16>, ptr %131, align 2, !alias.scope !32, !noalias !35
  %wide.load64.1 = load <4 x i16>, ptr %132, align 2, !alias.scope !32, !noalias !35
  %wide.load65.1 = load <4 x i16>, ptr %133, align 2, !alias.scope !32, !noalias !35
  %134 = sext <4 x i16> %wide.load.1 to <4 x i32>
  %135 = sext <4 x i16> %wide.load63.1 to <4 x i32>
  %136 = sext <4 x i16> %wide.load64.1 to <4 x i32>
  %137 = sext <4 x i16> %wide.load65.1 to <4 x i32>
  %138 = getelementptr inbounds [64 x i32], ptr %dequant_mf, i64 %idxprom21, i64 16
  %139 = getelementptr inbounds i8, ptr %138, i64 16
  %140 = getelementptr inbounds i8, ptr %138, i64 32
  %141 = getelementptr inbounds i8, ptr %138, i64 48
  %wide.load66.1 = load <4 x i32>, ptr %138, align 4, !alias.scope !35
  %wide.load67.1 = load <4 x i32>, ptr %139, align 4, !alias.scope !35
  %wide.load68.1 = load <4 x i32>, ptr %140, align 4, !alias.scope !35
  %wide.load69.1 = load <4 x i32>, ptr %141, align 4, !alias.scope !35
  %142 = mul nsw <4 x i32> %wide.load66.1, %134
  %143 = mul nsw <4 x i32> %wide.load67.1, %135
  %144 = mul nsw <4 x i32> %wide.load68.1, %136
  %145 = mul nsw <4 x i32> %wide.load69.1, %137
  %146 = add nsw <4 x i32> %142, %broadcast.splat
  %147 = add nsw <4 x i32> %143, %broadcast.splat
  %148 = add nsw <4 x i32> %144, %broadcast.splat
  %149 = add nsw <4 x i32> %145, %broadcast.splat
  %150 = ashr <4 x i32> %146, %broadcast.splat71
  %151 = ashr <4 x i32> %147, %broadcast.splat71
  %152 = ashr <4 x i32> %148, %broadcast.splat71
  %153 = ashr <4 x i32> %149, %broadcast.splat71
  %154 = trunc <4 x i32> %150 to <4 x i16>
  %155 = trunc <4 x i32> %151 to <4 x i16>
  %156 = trunc <4 x i32> %152 to <4 x i16>
  %157 = trunc <4 x i32> %153 to <4 x i16>
  store <4 x i16> %154, ptr %130, align 2, !alias.scope !32, !noalias !35
  store <4 x i16> %155, ptr %131, align 2, !alias.scope !32, !noalias !35
  store <4 x i16> %156, ptr %132, align 2, !alias.scope !32, !noalias !35
  store <4 x i16> %157, ptr %133, align 2, !alias.scope !32, !noalias !35
  %158 = getelementptr inbounds i8, ptr %dct, i64 64
  %159 = getelementptr inbounds i8, ptr %dct, i64 72
  %160 = getelementptr inbounds i8, ptr %dct, i64 80
  %161 = getelementptr inbounds i8, ptr %dct, i64 88
  %wide.load.2 = load <4 x i16>, ptr %158, align 2, !alias.scope !32, !noalias !35
  %wide.load63.2 = load <4 x i16>, ptr %159, align 2, !alias.scope !32, !noalias !35
  %wide.load64.2 = load <4 x i16>, ptr %160, align 2, !alias.scope !32, !noalias !35
  %wide.load65.2 = load <4 x i16>, ptr %161, align 2, !alias.scope !32, !noalias !35
  %162 = sext <4 x i16> %wide.load.2 to <4 x i32>
  %163 = sext <4 x i16> %wide.load63.2 to <4 x i32>
  %164 = sext <4 x i16> %wide.load64.2 to <4 x i32>
  %165 = sext <4 x i16> %wide.load65.2 to <4 x i32>
  %166 = getelementptr inbounds [64 x i32], ptr %dequant_mf, i64 %idxprom21, i64 32
  %167 = getelementptr inbounds i8, ptr %166, i64 16
  %168 = getelementptr inbounds i8, ptr %166, i64 32
  %169 = getelementptr inbounds i8, ptr %166, i64 48
  %wide.load66.2 = load <4 x i32>, ptr %166, align 4, !alias.scope !35
  %wide.load67.2 = load <4 x i32>, ptr %167, align 4, !alias.scope !35
  %wide.load68.2 = load <4 x i32>, ptr %168, align 4, !alias.scope !35
  %wide.load69.2 = load <4 x i32>, ptr %169, align 4, !alias.scope !35
  %170 = mul nsw <4 x i32> %wide.load66.2, %162
  %171 = mul nsw <4 x i32> %wide.load67.2, %163
  %172 = mul nsw <4 x i32> %wide.load68.2, %164
  %173 = mul nsw <4 x i32> %wide.load69.2, %165
  %174 = add nsw <4 x i32> %170, %broadcast.splat
  %175 = add nsw <4 x i32> %171, %broadcast.splat
  %176 = add nsw <4 x i32> %172, %broadcast.splat
  %177 = add nsw <4 x i32> %173, %broadcast.splat
  %178 = ashr <4 x i32> %174, %broadcast.splat71
  %179 = ashr <4 x i32> %175, %broadcast.splat71
  %180 = ashr <4 x i32> %176, %broadcast.splat71
  %181 = ashr <4 x i32> %177, %broadcast.splat71
  %182 = trunc <4 x i32> %178 to <4 x i16>
  %183 = trunc <4 x i32> %179 to <4 x i16>
  %184 = trunc <4 x i32> %180 to <4 x i16>
  %185 = trunc <4 x i32> %181 to <4 x i16>
  store <4 x i16> %182, ptr %158, align 2, !alias.scope !32, !noalias !35
  store <4 x i16> %183, ptr %159, align 2, !alias.scope !32, !noalias !35
  store <4 x i16> %184, ptr %160, align 2, !alias.scope !32, !noalias !35
  store <4 x i16> %185, ptr %161, align 2, !alias.scope !32, !noalias !35
  %186 = getelementptr inbounds i8, ptr %dct, i64 96
  %187 = getelementptr inbounds i8, ptr %dct, i64 104
  %188 = getelementptr inbounds i8, ptr %dct, i64 112
  %189 = getelementptr inbounds i8, ptr %dct, i64 120
  %wide.load.3 = load <4 x i16>, ptr %186, align 2, !alias.scope !32, !noalias !35
  %wide.load63.3 = load <4 x i16>, ptr %187, align 2, !alias.scope !32, !noalias !35
  %wide.load64.3 = load <4 x i16>, ptr %188, align 2, !alias.scope !32, !noalias !35
  %wide.load65.3 = load <4 x i16>, ptr %189, align 2, !alias.scope !32, !noalias !35
  %190 = sext <4 x i16> %wide.load.3 to <4 x i32>
  %191 = sext <4 x i16> %wide.load63.3 to <4 x i32>
  %192 = sext <4 x i16> %wide.load64.3 to <4 x i32>
  %193 = sext <4 x i16> %wide.load65.3 to <4 x i32>
  %194 = getelementptr inbounds [64 x i32], ptr %dequant_mf, i64 %idxprom21, i64 48
  %195 = getelementptr inbounds i8, ptr %194, i64 16
  %196 = getelementptr inbounds i8, ptr %194, i64 32
  %197 = getelementptr inbounds i8, ptr %194, i64 48
  %wide.load66.3 = load <4 x i32>, ptr %194, align 4, !alias.scope !35
  %wide.load67.3 = load <4 x i32>, ptr %195, align 4, !alias.scope !35
  %wide.load68.3 = load <4 x i32>, ptr %196, align 4, !alias.scope !35
  %wide.load69.3 = load <4 x i32>, ptr %197, align 4, !alias.scope !35
  %198 = mul nsw <4 x i32> %wide.load66.3, %190
  %199 = mul nsw <4 x i32> %wide.load67.3, %191
  %200 = mul nsw <4 x i32> %wide.load68.3, %192
  %201 = mul nsw <4 x i32> %wide.load69.3, %193
  %202 = add nsw <4 x i32> %198, %broadcast.splat
  %203 = add nsw <4 x i32> %199, %broadcast.splat
  %204 = add nsw <4 x i32> %200, %broadcast.splat
  %205 = add nsw <4 x i32> %201, %broadcast.splat
  %206 = ashr <4 x i32> %202, %broadcast.splat71
  %207 = ashr <4 x i32> %203, %broadcast.splat71
  %208 = ashr <4 x i32> %204, %broadcast.splat71
  %209 = ashr <4 x i32> %205, %broadcast.splat71
  %210 = trunc <4 x i32> %206 to <4 x i16>
  %211 = trunc <4 x i32> %207 to <4 x i16>
  %212 = trunc <4 x i32> %208 to <4 x i16>
  %213 = trunc <4 x i32> %209 to <4 x i16>
  store <4 x i16> %210, ptr %186, align 2, !alias.scope !32, !noalias !35
  store <4 x i16> %211, ptr %187, align 2, !alias.scope !32, !noalias !35
  store <4 x i16> %212, ptr %188, align 2, !alias.scope !32, !noalias !35
  store <4 x i16> %213, ptr %189, align 2, !alias.scope !32, !noalias !35
  br label %if.end

for.body17:                                       ; preds = %if.else, %for.body17
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %for.body17 ], [ 0, %if.else ]
  %arrayidx19 = getelementptr inbounds i16, ptr %dct, i64 %indvars.iv
  %214 = load i16, ptr %arrayidx19, align 2
  %conv20 = sext i16 %214 to i32
  %arrayidx24 = getelementptr inbounds [64 x i32], ptr %dequant_mf, i64 %idxprom21, i64 %indvars.iv
  %215 = load i32, ptr %arrayidx24, align 4
  %mul25 = mul nsw i32 %215, %conv20
  %add = add nsw i32 %mul25, %shl11
  %shr = ashr i32 %add, %sub9
  %conv27 = trunc i32 %shr to i16
  store i16 %conv27, ptr %arrayidx19, align 2
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1
  %arrayidx19.1 = getelementptr inbounds i16, ptr %dct, i64 %indvars.iv.next
  %216 = load i16, ptr %arrayidx19.1, align 2
  %conv20.1 = sext i16 %216 to i32
  %arrayidx24.1 = getelementptr inbounds [64 x i32], ptr %dequant_mf, i64 %idxprom21, i64 %indvars.iv.next
  %217 = load i32, ptr %arrayidx24.1, align 4
  %mul25.1 = mul nsw i32 %217, %conv20.1
  %add.1 = add nsw i32 %mul25.1, %shl11
  %shr.1 = ashr i32 %add.1, %sub9
  %conv27.1 = trunc i32 %shr.1 to i16
  store i16 %conv27.1, ptr %arrayidx19.1, align 2
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, 64
  br i1 %exitcond.not.1, label %if.end, label %for.body17, !llvm.loop !37

if.end:                                           ; preds = %for.body17, %for.body, %vector.body, %vector.body83
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @x264_denoise_dct(ptr nocapture noundef %dct, ptr nocapture noundef %sum, ptr nocapture noundef readonly %offset, i32 noundef %size) #1 {
entry:
  %cmp28 = icmp sgt i32 %size, 1
  br i1 %cmp28, label %for.body.preheader, label %for.cond.cleanup

for.body.preheader:                               ; preds = %entry
  %wide.trip.count = zext nneg i32 %size to i64
  %0 = add nsw i64 %wide.trip.count, -1
  %min.iters.check = icmp ult i32 %size, 17
  br i1 %min.iters.check, label %for.body.preheader54, label %vector.memcheck

for.body.preheader54:                             ; preds = %middle.block, %vector.memcheck, %for.body.preheader
  %indvars.iv.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %for.body.preheader ], [ %ind.end, %middle.block ]
  br label %for.body

vector.memcheck:                                  ; preds = %for.body.preheader
  %scevgep = getelementptr i8, ptr %sum, i64 4
  %1 = shl nuw nsw i64 %wide.trip.count, 2
  %scevgep31 = getelementptr i8, ptr %sum, i64 %1
  %scevgep32 = getelementptr i8, ptr %dct, i64 2
  %2 = shl nuw nsw i64 %wide.trip.count, 1
  %scevgep33 = getelementptr i8, ptr %dct, i64 %2
  %scevgep34 = getelementptr i8, ptr %offset, i64 2
  %scevgep35 = getelementptr i8, ptr %offset, i64 %2
  %bound0 = icmp ult ptr %scevgep, %scevgep33
  %bound1 = icmp ult ptr %scevgep32, %scevgep31
  %found.conflict = and i1 %bound0, %bound1
  %bound036 = icmp ult ptr %scevgep, %scevgep35
  %bound137 = icmp ult ptr %scevgep34, %scevgep31
  %found.conflict38 = and i1 %bound036, %bound137
  %conflict.rdx = or i1 %found.conflict, %found.conflict38
  %bound039 = icmp ult ptr %scevgep32, %scevgep35
  %bound140 = icmp ult ptr %scevgep34, %scevgep33
  %found.conflict41 = and i1 %bound039, %bound140
  %conflict.rdx42 = or i1 %conflict.rdx, %found.conflict41
  br i1 %conflict.rdx42, label %for.body.preheader54, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %0, -16
  %ind.end = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %offset.idx = or disjoint i64 %index, 1
  %3 = getelementptr inbounds i16, ptr %dct, i64 %offset.idx
  %4 = getelementptr inbounds i8, ptr %3, i64 8
  %5 = getelementptr inbounds i8, ptr %3, i64 16
  %6 = getelementptr inbounds i8, ptr %3, i64 24
  %wide.load = load <4 x i16>, ptr %3, align 2, !alias.scope !38, !noalias !41
  %wide.load43 = load <4 x i16>, ptr %4, align 2, !alias.scope !38, !noalias !41
  %wide.load44 = load <4 x i16>, ptr %5, align 2, !alias.scope !38, !noalias !41
  %wide.load45 = load <4 x i16>, ptr %6, align 2, !alias.scope !38, !noalias !41
  %7 = sext <4 x i16> %wide.load to <4 x i32>
  %8 = sext <4 x i16> %wide.load43 to <4 x i32>
  %9 = sext <4 x i16> %wide.load44 to <4 x i32>
  %10 = sext <4 x i16> %wide.load45 to <4 x i32>
  %11 = ashr <4 x i32> %7, <i32 15, i32 15, i32 15, i32 15>
  %12 = ashr <4 x i32> %8, <i32 15, i32 15, i32 15, i32 15>
  %13 = ashr <4 x i32> %9, <i32 15, i32 15, i32 15, i32 15>
  %14 = ashr <4 x i32> %10, <i32 15, i32 15, i32 15, i32 15>
  %15 = add nsw <4 x i32> %11, %7
  %16 = add nsw <4 x i32> %12, %8
  %17 = add nsw <4 x i32> %13, %9
  %18 = add nsw <4 x i32> %14, %10
  %19 = xor <4 x i32> %15, %11
  %20 = xor <4 x i32> %16, %12
  %21 = xor <4 x i32> %17, %13
  %22 = xor <4 x i32> %18, %14
  %23 = getelementptr inbounds i32, ptr %sum, i64 %offset.idx
  %24 = getelementptr inbounds i8, ptr %23, i64 16
  %25 = getelementptr inbounds i8, ptr %23, i64 32
  %26 = getelementptr inbounds i8, ptr %23, i64 48
  %wide.load46 = load <4 x i32>, ptr %23, align 4, !alias.scope !43, !noalias !45
  %wide.load47 = load <4 x i32>, ptr %24, align 4, !alias.scope !43, !noalias !45
  %wide.load48 = load <4 x i32>, ptr %25, align 4, !alias.scope !43, !noalias !45
  %wide.load49 = load <4 x i32>, ptr %26, align 4, !alias.scope !43, !noalias !45
  %27 = add <4 x i32> %19, %wide.load46
  %28 = add <4 x i32> %20, %wide.load47
  %29 = add <4 x i32> %21, %wide.load48
  %30 = add <4 x i32> %22, %wide.load49
  store <4 x i32> %27, ptr %23, align 4, !alias.scope !43, !noalias !45
  store <4 x i32> %28, ptr %24, align 4, !alias.scope !43, !noalias !45
  store <4 x i32> %29, ptr %25, align 4, !alias.scope !43, !noalias !45
  store <4 x i32> %30, ptr %26, align 4, !alias.scope !43, !noalias !45
  %31 = getelementptr inbounds i16, ptr %offset, i64 %offset.idx
  %32 = getelementptr inbounds i8, ptr %31, i64 8
  %33 = getelementptr inbounds i8, ptr %31, i64 16
  %34 = getelementptr inbounds i8, ptr %31, i64 24
  %wide.load50 = load <4 x i16>, ptr %31, align 2, !alias.scope !41
  %wide.load51 = load <4 x i16>, ptr %32, align 2, !alias.scope !41
  %wide.load52 = load <4 x i16>, ptr %33, align 2, !alias.scope !41
  %wide.load53 = load <4 x i16>, ptr %34, align 2, !alias.scope !41
  %35 = zext <4 x i16> %wide.load50 to <4 x i32>
  %36 = zext <4 x i16> %wide.load51 to <4 x i32>
  %37 = zext <4 x i16> %wide.load52 to <4 x i32>
  %38 = zext <4 x i16> %wide.load53 to <4 x i32>
  %39 = sub nsw <4 x i32> %19, %35
  %40 = sub nsw <4 x i32> %20, %36
  %41 = sub nsw <4 x i32> %21, %37
  %42 = sub nsw <4 x i32> %22, %38
  %43 = icmp slt <4 x i32> %39, zeroinitializer
  %44 = icmp slt <4 x i32> %40, zeroinitializer
  %45 = icmp slt <4 x i32> %41, zeroinitializer
  %46 = icmp slt <4 x i32> %42, zeroinitializer
  %47 = xor <4 x i32> %39, %11
  %48 = xor <4 x i32> %40, %12
  %49 = xor <4 x i32> %41, %13
  %50 = xor <4 x i32> %42, %14
  %51 = sub nsw <4 x i32> %47, %11
  %52 = sub nsw <4 x i32> %48, %12
  %53 = sub nsw <4 x i32> %49, %13
  %54 = sub nsw <4 x i32> %50, %14
  %55 = trunc <4 x i32> %51 to <4 x i16>
  %56 = trunc <4 x i32> %52 to <4 x i16>
  %57 = trunc <4 x i32> %53 to <4 x i16>
  %58 = trunc <4 x i32> %54 to <4 x i16>
  %59 = select <4 x i1> %43, <4 x i16> zeroinitializer, <4 x i16> %55
  %60 = select <4 x i1> %44, <4 x i16> zeroinitializer, <4 x i16> %56
  %61 = select <4 x i1> %45, <4 x i16> zeroinitializer, <4 x i16> %57
  %62 = select <4 x i1> %46, <4 x i16> zeroinitializer, <4 x i16> %58
  store <4 x i16> %59, ptr %3, align 2, !alias.scope !38, !noalias !41
  store <4 x i16> %60, ptr %4, align 2, !alias.scope !38, !noalias !41
  store <4 x i16> %61, ptr %5, align 2, !alias.scope !38, !noalias !41
  store <4 x i16> %62, ptr %6, align 2, !alias.scope !38, !noalias !41
  %index.next = add nuw i64 %index, 16
  %63 = icmp eq i64 %index.next, %n.vec
  br i1 %63, label %middle.block, label %vector.body, !llvm.loop !46

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %0, %n.vec
  br i1 %cmp.n, label %for.cond.cleanup, label %for.body.preheader54

for.cond.cleanup:                                 ; preds = %for.body, %middle.block, %entry
  ret void

for.body:                                         ; preds = %for.body.preheader54, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ %indvars.iv.ph, %for.body.preheader54 ]
  %arrayidx = getelementptr inbounds i16, ptr %dct, i64 %indvars.iv
  %64 = load i16, ptr %arrayidx, align 2
  %conv = sext i16 %64 to i32
  %shr = ashr i32 %conv, 15
  %add = add nsw i32 %shr, %conv
  %xor = xor i32 %add, %shr
  %arrayidx2 = getelementptr inbounds i32, ptr %sum, i64 %indvars.iv
  %65 = load i32, ptr %arrayidx2, align 4
  %add3 = add i32 %xor, %65
  store i32 %add3, ptr %arrayidx2, align 4
  %arrayidx5 = getelementptr inbounds i16, ptr %offset, i64 %indvars.iv
  %66 = load i16, ptr %arrayidx5, align 2
  %conv6 = zext i16 %66 to i32
  %sub = sub nsw i32 %xor, %conv6
  %cmp7 = icmp slt i32 %sub, 0
  %xor9 = xor i32 %sub, %shr
  %sub10 = sub nsw i32 %xor9, %shr
  %67 = trunc i32 %sub10 to i16
  %conv11 = select i1 %cmp7, i16 0, i16 %67
  store i16 %conv11, ptr %arrayidx, align 2
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !llvm.loop !47
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal i32 @x264_decimate_score15(ptr nocapture noundef readonly %dct) #4 {
entry:
  %add.ptr = getelementptr inbounds i8, ptr %dct, i64 2
  %gep.i = getelementptr i8, ptr %dct, i64 28
  %0 = load i32, ptr %gep.i, align 4
  %cmp3.i = icmp eq i32 %0, 0
  br i1 %cmp3.i, label %while.body.i, label %if.end.i

while.body.i:                                     ; preds = %entry
  %gep.i.1 = getelementptr i8, ptr %dct, i64 24
  %1 = load i32, ptr %gep.i.1, align 4
  %cmp3.i.1 = icmp eq i32 %1, 0
  br i1 %cmp3.i.1, label %while.body.i.1, label %if.end.i

while.body.i.1:                                   ; preds = %while.body.i
  %gep.i.2 = getelementptr i8, ptr %dct, i64 20
  %2 = load i32, ptr %gep.i.2, align 4
  %cmp3.i.2 = icmp eq i32 %2, 0
  br i1 %cmp3.i.2, label %while.body.i.2, label %if.end.i

while.body.i.2:                                   ; preds = %while.body.i.1
  %gep.i.3 = getelementptr i8, ptr %dct, i64 16
  %3 = load i32, ptr %gep.i.3, align 4
  %cmp3.i.3 = icmp eq i32 %3, 0
  br i1 %cmp3.i.3, label %while.body.i.3, label %if.end.i

while.body.i.3:                                   ; preds = %while.body.i.2
  %gep.i.4 = getelementptr i8, ptr %dct, i64 12
  %4 = load i32, ptr %gep.i.4, align 4
  %cmp3.i.4 = icmp eq i32 %4, 0
  br i1 %cmp3.i.4, label %while.body.i.4, label %if.end.i

while.body.i.4:                                   ; preds = %while.body.i.3
  %gep.i.5 = getelementptr i8, ptr %dct, i64 8
  %5 = load i32, ptr %gep.i.5, align 4
  %cmp3.i.5 = icmp eq i32 %5, 0
  br i1 %cmp3.i.5, label %while.body.i.5, label %if.end.i

while.body.i.5:                                   ; preds = %while.body.i.4
  %gep.i.6 = getelementptr i8, ptr %dct, i64 4
  %6 = load i32, ptr %gep.i.6, align 4
  %cmp3.i.6 = icmp eq i32 %6, 0
  br i1 %cmp3.i.6, label %while.body.i.6, label %if.end.i

while.body.i.6:                                   ; preds = %while.body.i.5
  %7 = load i32, ptr %dct, align 4
  %cmp3.i.7 = icmp eq i32 %7, 0
  br i1 %cmp3.i.7, label %x264_decimate_score_internal.exit, label %if.end.i

if.end.i:                                         ; preds = %entry, %while.body.i, %while.body.i.1, %while.body.i.2, %while.body.i.3, %while.body.i.4, %while.body.i.5, %while.body.i.6
  %idx.064.i.lcssa = phi i32 [ 14, %entry ], [ 12, %while.body.i ], [ 10, %while.body.i.1 ], [ 8, %while.body.i.2 ], [ 6, %while.body.i.3 ], [ 4, %while.body.i.4 ], [ 2, %while.body.i.5 ], [ 0, %while.body.i.6 ]
  %.lcssa = phi i32 [ %0, %entry ], [ %1, %while.body.i ], [ %2, %while.body.i.1 ], [ %3, %while.body.i.2 ], [ %4, %while.body.i.3 ], [ %5, %while.body.i.4 ], [ %6, %while.body.i.5 ], [ %7, %while.body.i.6 ]
  %cmp8.i = icmp ult i32 %.lcssa, 65536
  %dec.i = sext i1 %cmp8.i to i32
  %spec.select.i = add nsw i32 %idx.064.i.lcssa, %dec.i
  %cmp11.i3 = icmp sgt i32 %spec.select.i, -1
  br i1 %cmp11.i3, label %while.body13.i, label %x264_decimate_score_internal.exit

while.body13.i:                                   ; preds = %if.end.i, %cleanup.i
  %idx.2.i5 = phi i32 [ %idx.368.i, %cleanup.i ], [ %spec.select.i, %if.end.i ]
  %i_score.0.i4 = phi i32 [ %add38.i, %cleanup.i ], [ 0, %if.end.i ]
  %idxprom15.i = zext nneg i32 %idx.2.i5 to i64
  %arrayidx16.i = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom15.i
  %8 = load i16, ptr %arrayidx16.i, align 2
  %conv17.i = sext i16 %8 to i32
  %9 = add nsw i32 %conv17.i, 1
  %cmp18.i = icmp ult i32 %9, 3
  br i1 %cmp18.i, label %while.cond22.preheader.i, label %x264_decimate_score_internal.exit

while.cond22.preheader.i:                         ; preds = %while.body13.i
  %cmp2366.not.i = icmp eq i32 %idx.2.i5, 0
  br i1 %cmp2366.not.i, label %cleanup.i.thread, label %land.rhs25.i

land.rhs25.i:                                     ; preds = %while.cond22.preheader.i, %while.body32.i
  %idx.368.in.i = phi i32 [ %idx.368.i, %while.body32.i ], [ %idx.2.i5, %while.cond22.preheader.i ]
  %i_run.067.i = phi i32 [ %inc.i, %while.body32.i ], [ 0, %while.cond22.preheader.i ]
  %idx.368.i = add nsw i32 %idx.368.in.i, -1
  %idxprom26.i = zext nneg i32 %idx.368.i to i64
  %arrayidx27.i = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom26.i
  %10 = load i16, ptr %arrayidx27.i, align 2
  %cmp29.i = icmp eq i16 %10, 0
  br i1 %cmp29.i, label %while.body32.i, label %cleanup.i

while.body32.i:                                   ; preds = %land.rhs25.i
  %inc.i = add nuw i32 %i_run.067.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %idx.2.i5
  br i1 %exitcond.not.i, label %cleanup.i.thread, label %land.rhs25.i

cleanup.i.thread:                                 ; preds = %while.cond22.preheader.i, %while.body32.i
  %idxprom35.i13 = zext nneg i32 %idx.2.i5 to i64
  %arrayidx36.i14 = getelementptr inbounds i8, ptr @x264_decimate_table4, i64 %idxprom35.i13
  %11 = load i8, ptr %arrayidx36.i14, align 1
  %conv37.i15 = zext i8 %11 to i32
  %add38.i16 = add nuw nsw i32 %i_score.0.i4, %conv37.i15
  br label %x264_decimate_score_internal.exit

cleanup.i:                                        ; preds = %land.rhs25.i
  %idxprom35.i = zext nneg i32 %i_run.067.i to i64
  %arrayidx36.i = getelementptr inbounds i8, ptr @x264_decimate_table4, i64 %idxprom35.i
  %12 = load i8, ptr %arrayidx36.i, align 1
  %conv37.i = zext i8 %12 to i32
  %add38.i = add nuw nsw i32 %i_score.0.i4, %conv37.i
  %cmp11.i = icmp sgt i32 %idx.368.in.i, 0
  br i1 %cmp11.i, label %while.body13.i, label %x264_decimate_score_internal.exit

x264_decimate_score_internal.exit:                ; preds = %while.body13.i, %cleanup.i, %while.body.i.6, %cleanup.i.thread, %if.end.i
  %retval.2.ph.i = phi i32 [ 0, %if.end.i ], [ %add38.i16, %cleanup.i.thread ], [ 0, %while.body.i.6 ], [ %add38.i, %cleanup.i ], [ 9, %while.body13.i ]
  ret i32 %retval.2.ph.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal i32 @x264_decimate_score16(ptr nocapture noundef readonly %dct) #4 {
entry:
  %gep.i = getelementptr i8, ptr %dct, i64 28
  %0 = load i32, ptr %gep.i, align 4
  %cmp3.i = icmp eq i32 %0, 0
  br i1 %cmp3.i, label %while.body.i, label %while.body13.i.preheader

while.body.i:                                     ; preds = %entry
  %gep.i.1 = getelementptr i8, ptr %dct, i64 24
  %1 = load i32, ptr %gep.i.1, align 4
  %cmp3.i.1 = icmp eq i32 %1, 0
  br i1 %cmp3.i.1, label %while.body.i.1, label %while.body13.i.preheader

while.body.i.1:                                   ; preds = %while.body.i
  %gep.i.2 = getelementptr i8, ptr %dct, i64 20
  %2 = load i32, ptr %gep.i.2, align 4
  %cmp3.i.2 = icmp eq i32 %2, 0
  br i1 %cmp3.i.2, label %while.body.i.2, label %while.body13.i.preheader

while.body.i.2:                                   ; preds = %while.body.i.1
  %gep.i.3 = getelementptr i8, ptr %dct, i64 16
  %3 = load i32, ptr %gep.i.3, align 4
  %cmp3.i.3 = icmp eq i32 %3, 0
  br i1 %cmp3.i.3, label %while.body.i.3, label %while.body13.i.preheader

while.body.i.3:                                   ; preds = %while.body.i.2
  %gep.i.4 = getelementptr i8, ptr %dct, i64 12
  %4 = load i32, ptr %gep.i.4, align 4
  %cmp3.i.4 = icmp eq i32 %4, 0
  br i1 %cmp3.i.4, label %while.body.i.4, label %while.body13.i.preheader

while.body.i.4:                                   ; preds = %while.body.i.3
  %gep.i.5 = getelementptr i8, ptr %dct, i64 8
  %5 = load i32, ptr %gep.i.5, align 4
  %cmp3.i.5 = icmp eq i32 %5, 0
  br i1 %cmp3.i.5, label %while.body.i.5, label %while.body13.i.preheader

while.body.i.5:                                   ; preds = %while.body.i.4
  %gep.i.6 = getelementptr i8, ptr %dct, i64 4
  %6 = load i32, ptr %gep.i.6, align 4
  %cmp3.i.6 = icmp eq i32 %6, 0
  br i1 %cmp3.i.6, label %while.body.i.6, label %while.body13.i.preheader

while.body.i.6:                                   ; preds = %while.body.i.5
  %7 = load i32, ptr %dct, align 4
  %cmp3.i.7 = icmp eq i32 %7, 0
  br i1 %cmp3.i.7, label %x264_decimate_score_internal.exit, label %while.body13.i.preheader

while.body13.i.preheader:                         ; preds = %entry, %while.body.i, %while.body.i.1, %while.body.i.2, %while.body.i.3, %while.body.i.4, %while.body.i.5, %while.body.i.6
  %idx.064.i.lcssa.wide = phi i32 [ 15, %entry ], [ 13, %while.body.i ], [ 11, %while.body.i.1 ], [ 9, %while.body.i.2 ], [ 7, %while.body.i.3 ], [ 5, %while.body.i.4 ], [ 3, %while.body.i.5 ], [ 1, %while.body.i.6 ]
  %.lcssa = phi i32 [ %0, %entry ], [ %1, %while.body.i ], [ %2, %while.body.i.1 ], [ %3, %while.body.i.2 ], [ %4, %while.body.i.3 ], [ %5, %while.body.i.4 ], [ %6, %while.body.i.5 ], [ %7, %while.body.i.6 ]
  %cmp8.i = icmp ult i32 %.lcssa, 65536
  %dec.i = sext i1 %cmp8.i to i32
  %spec.select.i = add nsw i32 %idx.064.i.lcssa.wide, %dec.i
  br label %while.body13.i

while.body13.i:                                   ; preds = %while.body13.i.preheader, %cleanup.i
  %idx.2.i5 = phi i32 [ %idx.368.i, %cleanup.i ], [ %spec.select.i, %while.body13.i.preheader ]
  %i_score.0.i4 = phi i32 [ %add38.i, %cleanup.i ], [ 0, %while.body13.i.preheader ]
  %idxprom15.i = zext nneg i32 %idx.2.i5 to i64
  %arrayidx16.i = getelementptr inbounds i16, ptr %dct, i64 %idxprom15.i
  %8 = load i16, ptr %arrayidx16.i, align 2
  %conv17.i = sext i16 %8 to i32
  %9 = add nsw i32 %conv17.i, 1
  %cmp18.i = icmp ult i32 %9, 3
  br i1 %cmp18.i, label %while.cond22.preheader.i, label %x264_decimate_score_internal.exit

while.cond22.preheader.i:                         ; preds = %while.body13.i
  %cmp2366.not.i = icmp eq i32 %idx.2.i5, 0
  br i1 %cmp2366.not.i, label %cleanup.i.thread, label %land.rhs25.i

land.rhs25.i:                                     ; preds = %while.cond22.preheader.i, %while.body32.i
  %idx.368.in.i = phi i32 [ %idx.368.i, %while.body32.i ], [ %idx.2.i5, %while.cond22.preheader.i ]
  %i_run.067.i = phi i32 [ %inc.i, %while.body32.i ], [ 0, %while.cond22.preheader.i ]
  %idx.368.i = add nsw i32 %idx.368.in.i, -1
  %idxprom26.i = zext nneg i32 %idx.368.i to i64
  %arrayidx27.i = getelementptr inbounds i16, ptr %dct, i64 %idxprom26.i
  %10 = load i16, ptr %arrayidx27.i, align 2
  %cmp29.i = icmp eq i16 %10, 0
  br i1 %cmp29.i, label %while.body32.i, label %cleanup.i

while.body32.i:                                   ; preds = %land.rhs25.i
  %inc.i = add nuw i32 %i_run.067.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %idx.2.i5
  br i1 %exitcond.not.i, label %cleanup.i.thread, label %land.rhs25.i

cleanup.i.thread:                                 ; preds = %while.cond22.preheader.i, %while.body32.i
  %idxprom35.i15 = zext nneg i32 %idx.2.i5 to i64
  %arrayidx36.i16 = getelementptr inbounds i8, ptr @x264_decimate_table4, i64 %idxprom35.i15
  %11 = load i8, ptr %arrayidx36.i16, align 1
  %conv37.i17 = zext i8 %11 to i32
  %add38.i18 = add nuw nsw i32 %i_score.0.i4, %conv37.i17
  br label %x264_decimate_score_internal.exit

cleanup.i:                                        ; preds = %land.rhs25.i
  %idxprom35.i = zext nneg i32 %i_run.067.i to i64
  %arrayidx36.i = getelementptr inbounds i8, ptr @x264_decimate_table4, i64 %idxprom35.i
  %12 = load i8, ptr %arrayidx36.i, align 1
  %conv37.i = zext i8 %12 to i32
  %add38.i = add nuw nsw i32 %i_score.0.i4, %conv37.i
  %cmp11.i = icmp sgt i32 %idx.368.in.i, 0
  br i1 %cmp11.i, label %while.body13.i, label %x264_decimate_score_internal.exit

x264_decimate_score_internal.exit:                ; preds = %while.body13.i, %cleanup.i, %cleanup.i.thread, %while.body.i.6
  %retval.2.ph.i = phi i32 [ 0, %while.body.i.6 ], [ %add38.i18, %cleanup.i.thread ], [ %add38.i, %cleanup.i ], [ 9, %while.body13.i ]
  ret i32 %retval.2.ph.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal i32 @x264_decimate_score64(ptr nocapture noundef readonly %dct) #4 {
entry:
  %gep.i = getelementptr i8, ptr %dct, i64 124
  %0 = load i32, ptr %gep.i, align 4
  %cmp3.i = icmp eq i32 %0, 0
  br i1 %cmp3.i, label %while.body.i, label %while.body13.i.preheader

while.body.i:                                     ; preds = %entry
  %gep.i.1 = getelementptr i8, ptr %dct, i64 120
  %1 = load i32, ptr %gep.i.1, align 4
  %cmp3.i.1 = icmp eq i32 %1, 0
  br i1 %cmp3.i.1, label %while.body.i.1, label %while.body13.i.preheader

while.body.i.1:                                   ; preds = %while.body.i
  %gep.i.2 = getelementptr i8, ptr %dct, i64 116
  %2 = load i32, ptr %gep.i.2, align 4
  %cmp3.i.2 = icmp eq i32 %2, 0
  br i1 %cmp3.i.2, label %while.body.i.2, label %while.body13.i.preheader

while.body.i.2:                                   ; preds = %while.body.i.1
  %gep.i.3 = getelementptr i8, ptr %dct, i64 112
  %3 = load i32, ptr %gep.i.3, align 4
  %cmp3.i.3 = icmp eq i32 %3, 0
  br i1 %cmp3.i.3, label %while.body.i.3, label %while.body13.i.preheader

while.body.i.3:                                   ; preds = %while.body.i.2
  %gep.i.4 = getelementptr i8, ptr %dct, i64 108
  %4 = load i32, ptr %gep.i.4, align 4
  %cmp3.i.4 = icmp eq i32 %4, 0
  br i1 %cmp3.i.4, label %while.body.i.4, label %while.body13.i.preheader

while.body.i.4:                                   ; preds = %while.body.i.3
  %gep.i.5 = getelementptr i8, ptr %dct, i64 104
  %5 = load i32, ptr %gep.i.5, align 4
  %cmp3.i.5 = icmp eq i32 %5, 0
  br i1 %cmp3.i.5, label %while.body.i.5, label %while.body13.i.preheader

while.body.i.5:                                   ; preds = %while.body.i.4
  %gep.i.6 = getelementptr i8, ptr %dct, i64 100
  %6 = load i32, ptr %gep.i.6, align 4
  %cmp3.i.6 = icmp eq i32 %6, 0
  br i1 %cmp3.i.6, label %while.body.i.6, label %while.body13.i.preheader

while.body.i.6:                                   ; preds = %while.body.i.5
  %gep.i.7 = getelementptr i8, ptr %dct, i64 96
  %7 = load i32, ptr %gep.i.7, align 4
  %cmp3.i.7 = icmp eq i32 %7, 0
  br i1 %cmp3.i.7, label %while.body.i.7, label %while.body13.i.preheader

while.body.i.7:                                   ; preds = %while.body.i.6
  %gep.i.8 = getelementptr i8, ptr %dct, i64 92
  %8 = load i32, ptr %gep.i.8, align 4
  %cmp3.i.8 = icmp eq i32 %8, 0
  br i1 %cmp3.i.8, label %while.body.i.8, label %while.body13.i.preheader

while.body.i.8:                                   ; preds = %while.body.i.7
  %gep.i.9 = getelementptr i8, ptr %dct, i64 88
  %9 = load i32, ptr %gep.i.9, align 4
  %cmp3.i.9 = icmp eq i32 %9, 0
  br i1 %cmp3.i.9, label %while.body.i.9, label %while.body13.i.preheader

while.body.i.9:                                   ; preds = %while.body.i.8
  %gep.i.10 = getelementptr i8, ptr %dct, i64 84
  %10 = load i32, ptr %gep.i.10, align 4
  %cmp3.i.10 = icmp eq i32 %10, 0
  br i1 %cmp3.i.10, label %while.body.i.10, label %while.body13.i.preheader

while.body.i.10:                                  ; preds = %while.body.i.9
  %gep.i.11 = getelementptr i8, ptr %dct, i64 80
  %11 = load i32, ptr %gep.i.11, align 4
  %cmp3.i.11 = icmp eq i32 %11, 0
  br i1 %cmp3.i.11, label %while.body.i.11, label %while.body13.i.preheader

while.body.i.11:                                  ; preds = %while.body.i.10
  %gep.i.12 = getelementptr i8, ptr %dct, i64 76
  %12 = load i32, ptr %gep.i.12, align 4
  %cmp3.i.12 = icmp eq i32 %12, 0
  br i1 %cmp3.i.12, label %while.body.i.12, label %while.body13.i.preheader

while.body.i.12:                                  ; preds = %while.body.i.11
  %gep.i.13 = getelementptr i8, ptr %dct, i64 72
  %13 = load i32, ptr %gep.i.13, align 4
  %cmp3.i.13 = icmp eq i32 %13, 0
  br i1 %cmp3.i.13, label %while.body.i.13, label %while.body13.i.preheader

while.body.i.13:                                  ; preds = %while.body.i.12
  %gep.i.14 = getelementptr i8, ptr %dct, i64 68
  %14 = load i32, ptr %gep.i.14, align 4
  %cmp3.i.14 = icmp eq i32 %14, 0
  br i1 %cmp3.i.14, label %while.body.i.14, label %while.body13.i.preheader

while.body.i.14:                                  ; preds = %while.body.i.13
  %gep.i.15 = getelementptr i8, ptr %dct, i64 64
  %15 = load i32, ptr %gep.i.15, align 4
  %cmp3.i.15 = icmp eq i32 %15, 0
  br i1 %cmp3.i.15, label %while.body.i.15, label %while.body13.i.preheader

while.body.i.15:                                  ; preds = %while.body.i.14
  %gep.i.16 = getelementptr i8, ptr %dct, i64 60
  %16 = load i32, ptr %gep.i.16, align 4
  %cmp3.i.16 = icmp eq i32 %16, 0
  br i1 %cmp3.i.16, label %while.body.i.16, label %while.body13.i.preheader

while.body.i.16:                                  ; preds = %while.body.i.15
  %gep.i.17 = getelementptr i8, ptr %dct, i64 56
  %17 = load i32, ptr %gep.i.17, align 4
  %cmp3.i.17 = icmp eq i32 %17, 0
  br i1 %cmp3.i.17, label %while.body.i.17, label %while.body13.i.preheader

while.body.i.17:                                  ; preds = %while.body.i.16
  %gep.i.18 = getelementptr i8, ptr %dct, i64 52
  %18 = load i32, ptr %gep.i.18, align 4
  %cmp3.i.18 = icmp eq i32 %18, 0
  br i1 %cmp3.i.18, label %while.body.i.18, label %while.body13.i.preheader

while.body.i.18:                                  ; preds = %while.body.i.17
  %gep.i.19 = getelementptr i8, ptr %dct, i64 48
  %19 = load i32, ptr %gep.i.19, align 4
  %cmp3.i.19 = icmp eq i32 %19, 0
  br i1 %cmp3.i.19, label %while.body.i.19, label %while.body13.i.preheader

while.body.i.19:                                  ; preds = %while.body.i.18
  %gep.i.20 = getelementptr i8, ptr %dct, i64 44
  %20 = load i32, ptr %gep.i.20, align 4
  %cmp3.i.20 = icmp eq i32 %20, 0
  br i1 %cmp3.i.20, label %while.body.i.20, label %while.body13.i.preheader

while.body.i.20:                                  ; preds = %while.body.i.19
  %gep.i.21 = getelementptr i8, ptr %dct, i64 40
  %21 = load i32, ptr %gep.i.21, align 4
  %cmp3.i.21 = icmp eq i32 %21, 0
  br i1 %cmp3.i.21, label %while.body.i.21, label %while.body13.i.preheader

while.body.i.21:                                  ; preds = %while.body.i.20
  %gep.i.22 = getelementptr i8, ptr %dct, i64 36
  %22 = load i32, ptr %gep.i.22, align 4
  %cmp3.i.22 = icmp eq i32 %22, 0
  br i1 %cmp3.i.22, label %while.body.i.22, label %while.body13.i.preheader

while.body.i.22:                                  ; preds = %while.body.i.21
  %gep.i.23 = getelementptr i8, ptr %dct, i64 32
  %23 = load i32, ptr %gep.i.23, align 4
  %cmp3.i.23 = icmp eq i32 %23, 0
  br i1 %cmp3.i.23, label %while.body.i.23, label %while.body13.i.preheader

while.body.i.23:                                  ; preds = %while.body.i.22
  %gep.i.24 = getelementptr i8, ptr %dct, i64 28
  %24 = load i32, ptr %gep.i.24, align 4
  %cmp3.i.24 = icmp eq i32 %24, 0
  br i1 %cmp3.i.24, label %while.body.i.24, label %while.body13.i.preheader

while.body.i.24:                                  ; preds = %while.body.i.23
  %gep.i.25 = getelementptr i8, ptr %dct, i64 24
  %25 = load i32, ptr %gep.i.25, align 4
  %cmp3.i.25 = icmp eq i32 %25, 0
  br i1 %cmp3.i.25, label %while.body.i.25, label %while.body13.i.preheader

while.body.i.25:                                  ; preds = %while.body.i.24
  %gep.i.26 = getelementptr i8, ptr %dct, i64 20
  %26 = load i32, ptr %gep.i.26, align 4
  %cmp3.i.26 = icmp eq i32 %26, 0
  br i1 %cmp3.i.26, label %while.body.i.26, label %while.body13.i.preheader

while.body.i.26:                                  ; preds = %while.body.i.25
  %gep.i.27 = getelementptr i8, ptr %dct, i64 16
  %27 = load i32, ptr %gep.i.27, align 4
  %cmp3.i.27 = icmp eq i32 %27, 0
  br i1 %cmp3.i.27, label %while.body.i.27, label %while.body13.i.preheader

while.body.i.27:                                  ; preds = %while.body.i.26
  %gep.i.28 = getelementptr i8, ptr %dct, i64 12
  %28 = load i32, ptr %gep.i.28, align 4
  %cmp3.i.28 = icmp eq i32 %28, 0
  br i1 %cmp3.i.28, label %while.body.i.28, label %while.body13.i.preheader

while.body.i.28:                                  ; preds = %while.body.i.27
  %gep.i.29 = getelementptr i8, ptr %dct, i64 8
  %29 = load i32, ptr %gep.i.29, align 4
  %cmp3.i.29 = icmp eq i32 %29, 0
  br i1 %cmp3.i.29, label %while.body.i.29, label %while.body13.i.preheader

while.body.i.29:                                  ; preds = %while.body.i.28
  %gep.i.30 = getelementptr i8, ptr %dct, i64 4
  %30 = load i32, ptr %gep.i.30, align 4
  %cmp3.i.30 = icmp eq i32 %30, 0
  br i1 %cmp3.i.30, label %while.body.i.30, label %while.body13.i.preheader

while.body.i.30:                                  ; preds = %while.body.i.29
  %31 = load i32, ptr %dct, align 4
  %cmp3.i.31 = icmp eq i32 %31, 0
  br i1 %cmp3.i.31, label %x264_decimate_score_internal.exit, label %while.body13.i.preheader

while.body13.i.preheader:                         ; preds = %entry, %while.body.i, %while.body.i.1, %while.body.i.2, %while.body.i.3, %while.body.i.4, %while.body.i.5, %while.body.i.6, %while.body.i.7, %while.body.i.8, %while.body.i.9, %while.body.i.10, %while.body.i.11, %while.body.i.12, %while.body.i.13, %while.body.i.14, %while.body.i.15, %while.body.i.16, %while.body.i.17, %while.body.i.18, %while.body.i.19, %while.body.i.20, %while.body.i.21, %while.body.i.22, %while.body.i.23, %while.body.i.24, %while.body.i.25, %while.body.i.26, %while.body.i.27, %while.body.i.28, %while.body.i.29, %while.body.i.30
  %idx.064.i.lcssa.wide = phi i32 [ 63, %entry ], [ 61, %while.body.i ], [ 59, %while.body.i.1 ], [ 57, %while.body.i.2 ], [ 55, %while.body.i.3 ], [ 53, %while.body.i.4 ], [ 51, %while.body.i.5 ], [ 49, %while.body.i.6 ], [ 47, %while.body.i.7 ], [ 45, %while.body.i.8 ], [ 43, %while.body.i.9 ], [ 41, %while.body.i.10 ], [ 39, %while.body.i.11 ], [ 37, %while.body.i.12 ], [ 35, %while.body.i.13 ], [ 33, %while.body.i.14 ], [ 31, %while.body.i.15 ], [ 29, %while.body.i.16 ], [ 27, %while.body.i.17 ], [ 25, %while.body.i.18 ], [ 23, %while.body.i.19 ], [ 21, %while.body.i.20 ], [ 19, %while.body.i.21 ], [ 17, %while.body.i.22 ], [ 15, %while.body.i.23 ], [ 13, %while.body.i.24 ], [ 11, %while.body.i.25 ], [ 9, %while.body.i.26 ], [ 7, %while.body.i.27 ], [ 5, %while.body.i.28 ], [ 3, %while.body.i.29 ], [ 1, %while.body.i.30 ]
  %.lcssa = phi i32 [ %0, %entry ], [ %1, %while.body.i ], [ %2, %while.body.i.1 ], [ %3, %while.body.i.2 ], [ %4, %while.body.i.3 ], [ %5, %while.body.i.4 ], [ %6, %while.body.i.5 ], [ %7, %while.body.i.6 ], [ %8, %while.body.i.7 ], [ %9, %while.body.i.8 ], [ %10, %while.body.i.9 ], [ %11, %while.body.i.10 ], [ %12, %while.body.i.11 ], [ %13, %while.body.i.12 ], [ %14, %while.body.i.13 ], [ %15, %while.body.i.14 ], [ %16, %while.body.i.15 ], [ %17, %while.body.i.16 ], [ %18, %while.body.i.17 ], [ %19, %while.body.i.18 ], [ %20, %while.body.i.19 ], [ %21, %while.body.i.20 ], [ %22, %while.body.i.21 ], [ %23, %while.body.i.22 ], [ %24, %while.body.i.23 ], [ %25, %while.body.i.24 ], [ %26, %while.body.i.25 ], [ %27, %while.body.i.26 ], [ %28, %while.body.i.27 ], [ %29, %while.body.i.28 ], [ %30, %while.body.i.29 ], [ %31, %while.body.i.30 ]
  %cmp8.i = icmp ult i32 %.lcssa, 65536
  %dec.i = sext i1 %cmp8.i to i32
  %spec.select.i = add nsw i32 %idx.064.i.lcssa.wide, %dec.i
  br label %while.body13.i

while.body13.i:                                   ; preds = %while.body13.i.preheader, %cleanup.i
  %idx.2.i5 = phi i32 [ %idx.368.i, %cleanup.i ], [ %spec.select.i, %while.body13.i.preheader ]
  %i_score.0.i4 = phi i32 [ %add38.i, %cleanup.i ], [ 0, %while.body13.i.preheader ]
  %idxprom15.i = zext nneg i32 %idx.2.i5 to i64
  %arrayidx16.i = getelementptr inbounds i16, ptr %dct, i64 %idxprom15.i
  %32 = load i16, ptr %arrayidx16.i, align 2
  %conv17.i = sext i16 %32 to i32
  %33 = add nsw i32 %conv17.i, 1
  %cmp18.i = icmp ult i32 %33, 3
  br i1 %cmp18.i, label %while.cond22.preheader.i, label %x264_decimate_score_internal.exit

while.cond22.preheader.i:                         ; preds = %while.body13.i
  %cmp2366.not.i = icmp eq i32 %idx.2.i5, 0
  br i1 %cmp2366.not.i, label %cleanup.i.thread, label %land.rhs25.i

land.rhs25.i:                                     ; preds = %while.cond22.preheader.i, %while.body32.i
  %idx.368.in.i = phi i32 [ %idx.368.i, %while.body32.i ], [ %idx.2.i5, %while.cond22.preheader.i ]
  %i_run.067.i = phi i32 [ %inc.i, %while.body32.i ], [ 0, %while.cond22.preheader.i ]
  %idx.368.i = add nsw i32 %idx.368.in.i, -1
  %idxprom26.i = zext nneg i32 %idx.368.i to i64
  %arrayidx27.i = getelementptr inbounds i16, ptr %dct, i64 %idxprom26.i
  %34 = load i16, ptr %arrayidx27.i, align 2
  %cmp29.i = icmp eq i16 %34, 0
  br i1 %cmp29.i, label %while.body32.i, label %cleanup.i

while.body32.i:                                   ; preds = %land.rhs25.i
  %inc.i = add nuw i32 %i_run.067.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %idx.2.i5
  br i1 %exitcond.not.i, label %cleanup.i.thread, label %land.rhs25.i

cleanup.i.thread:                                 ; preds = %while.cond22.preheader.i, %while.body32.i
  %idxprom35.i15 = zext nneg i32 %idx.2.i5 to i64
  %arrayidx36.i16 = getelementptr inbounds i8, ptr @x264_decimate_table8, i64 %idxprom35.i15
  %35 = load i8, ptr %arrayidx36.i16, align 1
  %conv37.i17 = zext i8 %35 to i32
  %add38.i18 = add nuw nsw i32 %i_score.0.i4, %conv37.i17
  br label %x264_decimate_score_internal.exit

cleanup.i:                                        ; preds = %land.rhs25.i
  %idxprom35.i = zext nneg i32 %i_run.067.i to i64
  %arrayidx36.i = getelementptr inbounds i8, ptr @x264_decimate_table8, i64 %idxprom35.i
  %36 = load i8, ptr %arrayidx36.i, align 1
  %conv37.i = zext i8 %36 to i32
  %add38.i = add nuw nsw i32 %i_score.0.i4, %conv37.i
  %cmp11.i = icmp sgt i32 %idx.368.in.i, 0
  br i1 %cmp11.i, label %while.body13.i, label %x264_decimate_score_internal.exit

x264_decimate_score_internal.exit:                ; preds = %while.body13.i, %cleanup.i, %cleanup.i.thread, %while.body.i.30
  %retval.2.ph.i = phi i32 [ 0, %while.body.i.30 ], [ %add38.i18, %cleanup.i.thread ], [ %add38.i, %cleanup.i ], [ 9, %while.body13.i ]
  ret i32 %retval.2.ph.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal range(i32 -1, 64) i32 @x264_coeff_last4(ptr nocapture noundef readonly %l) #4 {
entry:
  %0 = load i64, ptr %l, align 8
  %tobool.not.i = icmp eq i64 %0, 0
  br i1 %tobool.not.i, label %x264_coeff_last_internal.exit, label %land.rhs.i

land.rhs.i:                                       ; preds = %entry
  %arrayidx.i = getelementptr inbounds i8, ptr %l, i64 6
  %1 = load i16, ptr %arrayidx.i, align 2
  %cmp4.i = icmp eq i16 %1, 0
  br i1 %cmp4.i, label %while.body.i, label %x264_coeff_last_internal.exit

while.body.i:                                     ; preds = %land.rhs.i
  %arrayidx.i.1 = getelementptr inbounds i8, ptr %l, i64 4
  %2 = load i16, ptr %arrayidx.i.1, align 2
  %cmp4.i.1 = icmp eq i16 %2, 0
  br i1 %cmp4.i.1, label %while.body.i.1, label %x264_coeff_last_internal.exit

while.body.i.1:                                   ; preds = %while.body.i
  %arrayidx.i.2 = getelementptr inbounds i8, ptr %l, i64 2
  %3 = load i16, ptr %arrayidx.i.2, align 2
  %cmp4.i.2 = icmp eq i16 %3, 0
  br i1 %cmp4.i.2, label %while.body.i.2, label %x264_coeff_last_internal.exit

while.body.i.2:                                   ; preds = %while.body.i.1
  %4 = load i16, ptr %l, align 2
  %cmp4.i.3 = icmp eq i16 %4, 0
  %spec.select = select i1 %cmp4.i.3, i32 -1, i32 0
  br label %x264_coeff_last_internal.exit

x264_coeff_last_internal.exit:                    ; preds = %while.body.i.2, %land.rhs.i, %while.body.i, %while.body.i.1, %entry
  %i_last.1.lcssa.i = phi i32 [ -1, %entry ], [ 3, %land.rhs.i ], [ 2, %while.body.i ], [ 1, %while.body.i.1 ], [ %spec.select, %while.body.i.2 ]
  ret i32 %i_last.1.lcssa.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal range(i32 -1, 64) i32 @x264_coeff_last15(ptr nocapture noundef readonly %l) #4 {
entry:
  %gep.i = getelementptr i8, ptr %l, i64 22
  %0 = load i64, ptr %gep.i, align 8
  %tobool.not.i = icmp eq i64 %0, 0
  br i1 %tobool.not.i, label %for.inc.i, label %land.rhs.i.preheader

for.inc.i:                                        ; preds = %entry
  %gep.i.1 = getelementptr i8, ptr %l, i64 14
  %1 = load i64, ptr %gep.i.1, align 8
  %tobool.not.i.1 = icmp eq i64 %1, 0
  br i1 %tobool.not.i.1, label %for.inc.i.1, label %land.rhs.i.preheader

for.inc.i.1:                                      ; preds = %for.inc.i
  %gep.i.2 = getelementptr i8, ptr %l, i64 6
  %2 = load i64, ptr %gep.i.2, align 8
  %tobool.not.i.2 = icmp eq i64 %2, 0
  %spec.select = select i1 %tobool.not.i.2, i32 2, i32 6
  br label %land.rhs.i.preheader

land.rhs.i.preheader:                             ; preds = %for.inc.i.1, %entry, %for.inc.i
  %i_last.117.i.ph = phi i32 [ %spec.select, %for.inc.i.1 ], [ 10, %for.inc.i ], [ 14, %entry ]
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %land.rhs.i.preheader, %while.body.i
  %i_last.117.i = phi i32 [ %dec.i, %while.body.i ], [ %i_last.117.i.ph, %land.rhs.i.preheader ]
  %idxprom.i = zext nneg i32 %i_last.117.i to i64
  %arrayidx.i = getelementptr inbounds i16, ptr %l, i64 %idxprom.i
  %3 = load i16, ptr %arrayidx.i, align 2
  %cmp4.i = icmp eq i16 %3, 0
  br i1 %cmp4.i, label %while.body.i, label %x264_coeff_last_internal.exit

while.body.i:                                     ; preds = %land.rhs.i
  %dec.i = add nsw i32 %i_last.117.i, -1
  %cmp3.i = icmp sgt i32 %i_last.117.i, 0
  br i1 %cmp3.i, label %land.rhs.i, label %x264_coeff_last_internal.exit

x264_coeff_last_internal.exit:                    ; preds = %land.rhs.i, %while.body.i
  %i_last.1.lcssa.i.ph = phi i32 [ -1, %while.body.i ], [ %i_last.117.i, %land.rhs.i ]
  ret i32 %i_last.1.lcssa.i.ph
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal range(i32 -1, 64) i32 @x264_coeff_last16(ptr nocapture noundef readonly %l) #4 {
entry:
  %gep.i = getelementptr i8, ptr %l, i64 24
  %0 = load i64, ptr %gep.i, align 8
  %tobool.not.i = icmp eq i64 %0, 0
  br i1 %tobool.not.i, label %for.inc.i, label %land.rhs.i.preheader

for.inc.i:                                        ; preds = %entry
  %gep.i.1 = getelementptr i8, ptr %l, i64 16
  %1 = load i64, ptr %gep.i.1, align 8
  %tobool.not.i.1 = icmp eq i64 %1, 0
  br i1 %tobool.not.i.1, label %for.inc.i.1, label %land.rhs.i.preheader

for.inc.i.1:                                      ; preds = %for.inc.i
  %gep.i.2 = getelementptr i8, ptr %l, i64 8
  %2 = load i64, ptr %gep.i.2, align 8
  %tobool.not.i.2 = icmp eq i64 %2, 0
  br i1 %tobool.not.i.2, label %for.inc.i.2, label %land.rhs.i.preheader

for.inc.i.2:                                      ; preds = %for.inc.i.1
  %3 = load i64, ptr %l, align 8
  %tobool.not.i.3 = icmp eq i64 %3, 0
  br i1 %tobool.not.i.3, label %x264_coeff_last_internal.exit, label %land.rhs.i.preheader

land.rhs.i.preheader:                             ; preds = %entry, %for.inc.i, %for.inc.i.1, %for.inc.i.2
  %i_last.117.i.ph = phi i32 [ 3, %for.inc.i.2 ], [ 7, %for.inc.i.1 ], [ 11, %for.inc.i ], [ 15, %entry ]
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %land.rhs.i.preheader, %while.body.i
  %i_last.117.i = phi i32 [ %dec.i, %while.body.i ], [ %i_last.117.i.ph, %land.rhs.i.preheader ]
  %idxprom.i = zext nneg i32 %i_last.117.i to i64
  %arrayidx.i = getelementptr inbounds i16, ptr %l, i64 %idxprom.i
  %4 = load i16, ptr %arrayidx.i, align 2
  %cmp4.i = icmp eq i16 %4, 0
  br i1 %cmp4.i, label %while.body.i, label %x264_coeff_last_internal.exit

while.body.i:                                     ; preds = %land.rhs.i
  %dec.i = add nsw i32 %i_last.117.i, -1
  %cmp3.i = icmp sgt i32 %i_last.117.i, 0
  br i1 %cmp3.i, label %land.rhs.i, label %x264_coeff_last_internal.exit

x264_coeff_last_internal.exit:                    ; preds = %land.rhs.i, %while.body.i, %for.inc.i.2
  %i_last.1.lcssa.i = phi i32 [ -1, %for.inc.i.2 ], [ %i_last.117.i, %land.rhs.i ], [ -1, %while.body.i ]
  ret i32 %i_last.1.lcssa.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal range(i32 -1, 64) i32 @x264_coeff_last64(ptr nocapture noundef readonly %l) #4 {
entry:
  %gep.i = getelementptr i8, ptr %l, i64 120
  %0 = load i64, ptr %gep.i, align 8
  %tobool.not.i = icmp eq i64 %0, 0
  br i1 %tobool.not.i, label %for.inc.i, label %land.rhs.i.preheader

for.inc.i:                                        ; preds = %entry
  %gep.i.1 = getelementptr i8, ptr %l, i64 112
  %1 = load i64, ptr %gep.i.1, align 8
  %tobool.not.i.1 = icmp eq i64 %1, 0
  br i1 %tobool.not.i.1, label %for.inc.i.1, label %land.rhs.i.preheader

for.inc.i.1:                                      ; preds = %for.inc.i
  %gep.i.2 = getelementptr i8, ptr %l, i64 104
  %2 = load i64, ptr %gep.i.2, align 8
  %tobool.not.i.2 = icmp eq i64 %2, 0
  br i1 %tobool.not.i.2, label %for.inc.i.2, label %land.rhs.i.preheader

for.inc.i.2:                                      ; preds = %for.inc.i.1
  %gep.i.3 = getelementptr i8, ptr %l, i64 96
  %3 = load i64, ptr %gep.i.3, align 8
  %tobool.not.i.3 = icmp eq i64 %3, 0
  br i1 %tobool.not.i.3, label %for.inc.i.3, label %land.rhs.i.preheader

for.inc.i.3:                                      ; preds = %for.inc.i.2
  %gep.i.4 = getelementptr i8, ptr %l, i64 88
  %4 = load i64, ptr %gep.i.4, align 8
  %tobool.not.i.4 = icmp eq i64 %4, 0
  br i1 %tobool.not.i.4, label %for.inc.i.4, label %land.rhs.i.preheader

for.inc.i.4:                                      ; preds = %for.inc.i.3
  %gep.i.5 = getelementptr i8, ptr %l, i64 80
  %5 = load i64, ptr %gep.i.5, align 8
  %tobool.not.i.5 = icmp eq i64 %5, 0
  br i1 %tobool.not.i.5, label %for.inc.i.5, label %land.rhs.i.preheader

for.inc.i.5:                                      ; preds = %for.inc.i.4
  %gep.i.6 = getelementptr i8, ptr %l, i64 72
  %6 = load i64, ptr %gep.i.6, align 8
  %tobool.not.i.6 = icmp eq i64 %6, 0
  br i1 %tobool.not.i.6, label %for.inc.i.6, label %land.rhs.i.preheader

for.inc.i.6:                                      ; preds = %for.inc.i.5
  %gep.i.7 = getelementptr i8, ptr %l, i64 64
  %7 = load i64, ptr %gep.i.7, align 8
  %tobool.not.i.7 = icmp eq i64 %7, 0
  br i1 %tobool.not.i.7, label %for.inc.i.7, label %land.rhs.i.preheader

for.inc.i.7:                                      ; preds = %for.inc.i.6
  %gep.i.8 = getelementptr i8, ptr %l, i64 56
  %8 = load i64, ptr %gep.i.8, align 8
  %tobool.not.i.8 = icmp eq i64 %8, 0
  br i1 %tobool.not.i.8, label %for.inc.i.8, label %land.rhs.i.preheader

for.inc.i.8:                                      ; preds = %for.inc.i.7
  %gep.i.9 = getelementptr i8, ptr %l, i64 48
  %9 = load i64, ptr %gep.i.9, align 8
  %tobool.not.i.9 = icmp eq i64 %9, 0
  br i1 %tobool.not.i.9, label %for.inc.i.9, label %land.rhs.i.preheader

for.inc.i.9:                                      ; preds = %for.inc.i.8
  %gep.i.10 = getelementptr i8, ptr %l, i64 40
  %10 = load i64, ptr %gep.i.10, align 8
  %tobool.not.i.10 = icmp eq i64 %10, 0
  br i1 %tobool.not.i.10, label %for.inc.i.10, label %land.rhs.i.preheader

for.inc.i.10:                                     ; preds = %for.inc.i.9
  %gep.i.11 = getelementptr i8, ptr %l, i64 32
  %11 = load i64, ptr %gep.i.11, align 8
  %tobool.not.i.11 = icmp eq i64 %11, 0
  br i1 %tobool.not.i.11, label %for.inc.i.11, label %land.rhs.i.preheader

for.inc.i.11:                                     ; preds = %for.inc.i.10
  %gep.i.12 = getelementptr i8, ptr %l, i64 24
  %12 = load i64, ptr %gep.i.12, align 8
  %tobool.not.i.12 = icmp eq i64 %12, 0
  br i1 %tobool.not.i.12, label %for.inc.i.12, label %land.rhs.i.preheader

for.inc.i.12:                                     ; preds = %for.inc.i.11
  %gep.i.13 = getelementptr i8, ptr %l, i64 16
  %13 = load i64, ptr %gep.i.13, align 8
  %tobool.not.i.13 = icmp eq i64 %13, 0
  br i1 %tobool.not.i.13, label %for.inc.i.13, label %land.rhs.i.preheader

for.inc.i.13:                                     ; preds = %for.inc.i.12
  %gep.i.14 = getelementptr i8, ptr %l, i64 8
  %14 = load i64, ptr %gep.i.14, align 8
  %tobool.not.i.14 = icmp eq i64 %14, 0
  br i1 %tobool.not.i.14, label %for.inc.i.14, label %land.rhs.i.preheader

for.inc.i.14:                                     ; preds = %for.inc.i.13
  %15 = load i64, ptr %l, align 8
  %tobool.not.i.15 = icmp eq i64 %15, 0
  br i1 %tobool.not.i.15, label %x264_coeff_last_internal.exit, label %land.rhs.i.preheader

land.rhs.i.preheader:                             ; preds = %entry, %for.inc.i, %for.inc.i.1, %for.inc.i.2, %for.inc.i.3, %for.inc.i.4, %for.inc.i.5, %for.inc.i.6, %for.inc.i.7, %for.inc.i.8, %for.inc.i.9, %for.inc.i.10, %for.inc.i.11, %for.inc.i.12, %for.inc.i.13, %for.inc.i.14
  %i_last.117.i.ph = phi i32 [ 3, %for.inc.i.14 ], [ 7, %for.inc.i.13 ], [ 11, %for.inc.i.12 ], [ 15, %for.inc.i.11 ], [ 19, %for.inc.i.10 ], [ 23, %for.inc.i.9 ], [ 27, %for.inc.i.8 ], [ 31, %for.inc.i.7 ], [ 35, %for.inc.i.6 ], [ 39, %for.inc.i.5 ], [ 43, %for.inc.i.4 ], [ 47, %for.inc.i.3 ], [ 51, %for.inc.i.2 ], [ 55, %for.inc.i.1 ], [ 59, %for.inc.i ], [ 63, %entry ]
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %land.rhs.i.preheader, %while.body.i
  %i_last.117.i = phi i32 [ %dec.i, %while.body.i ], [ %i_last.117.i.ph, %land.rhs.i.preheader ]
  %idxprom.i = zext nneg i32 %i_last.117.i to i64
  %arrayidx.i = getelementptr inbounds i16, ptr %l, i64 %idxprom.i
  %16 = load i16, ptr %arrayidx.i, align 2
  %cmp4.i = icmp eq i16 %16, 0
  br i1 %cmp4.i, label %while.body.i, label %x264_coeff_last_internal.exit

while.body.i:                                     ; preds = %land.rhs.i
  %dec.i = add nsw i32 %i_last.117.i, -1
  %cmp3.i = icmp sgt i32 %i_last.117.i, 0
  br i1 %cmp3.i, label %land.rhs.i, label %x264_coeff_last_internal.exit

x264_coeff_last_internal.exit:                    ; preds = %land.rhs.i, %while.body.i, %for.inc.i.14
  %i_last.1.lcssa.i = phi i32 [ -1, %for.inc.i.14 ], [ %i_last.117.i, %land.rhs.i ], [ -1, %while.body.i ]
  ret i32 %i_last.1.lcssa.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal range(i32 -2147483647, -2147483648) i32 @x264_coeff_level_run4(ptr nocapture noundef readonly %dct, ptr nocapture noundef writeonly %runlevel) #1 {
entry:
  %0 = load i64, ptr %dct, align 8
  %tobool.not.i.i = icmp eq i64 %0, 0
  br i1 %tobool.not.i.i, label %x264_coeff_last4.exit, label %land.rhs.i.i.preheader

land.rhs.i.i.preheader:                           ; preds = %entry
  %cmp4.i.i = icmp ult i64 %0, 281474976710656
  br i1 %cmp4.i.i, label %while.body.i.i, label %land.rhs.lr.ph.lr.ph

while.body.i.i:                                   ; preds = %land.rhs.i.i.preheader
  %cmp4.i.i.1 = icmp ult i64 %0, 4294967296
  br i1 %cmp4.i.i.1, label %while.body.i.i.1, label %land.rhs.lr.ph.lr.ph

while.body.i.i.1:                                 ; preds = %while.body.i.i
  %cmp4.i.i.2 = icmp ult i64 %0, 65536
  br i1 %cmp4.i.i.2, label %x264_coeff_last4.exit, label %land.rhs.lr.ph.lr.ph

x264_coeff_last4.exit:                            ; preds = %while.body.i.i.1, %entry
  %i_last.1.lcssa.i.i = phi i32 [ -1, %entry ], [ 0, %while.body.i.i.1 ]
  store i32 %i_last.1.lcssa.i.i, ptr %runlevel, align 4
  %level = getelementptr inbounds i8, ptr %runlevel, i64 4
  %idxprom39 = sext i32 %i_last.1.lcssa.i.i to i64
  %arrayidx40 = getelementptr inbounds i16, ptr %dct, i64 %idxprom39
  %1 = load i16, ptr %arrayidx40, align 2
  store i16 %1, ptr %level, align 2
  br label %do.end

land.rhs.lr.ph.lr.ph:                             ; preds = %land.rhs.i.i.preheader, %while.body.i.i, %while.body.i.i.1
  %i_last.1.lcssa.i.i.ph = phi i32 [ 1, %while.body.i.i.1 ], [ 2, %while.body.i.i ], [ 3, %land.rhs.i.i.preheader ]
  store i32 %i_last.1.lcssa.i.i.ph, ptr %runlevel, align 4
  %level62 = getelementptr inbounds i8, ptr %runlevel, i64 4
  %idxprom3963 = zext nneg i32 %i_last.1.lcssa.i.i.ph to i64
  %arrayidx4064 = getelementptr inbounds i16, ptr %dct, i64 %idxprom3963
  %2 = load i16, ptr %arrayidx4064, align 2
  store i16 %2, ptr %level62, align 2
  %run = getelementptr inbounds i8, ptr %runlevel, i64 36
  br label %land.rhs.lr.ph

land.rhs.lr.ph:                                   ; preds = %land.rhs.lr.ph.lr.ph, %while.end
  %indvars.iv57 = phi i64 [ 0, %land.rhs.lr.ph.lr.ph ], [ %indvars.iv.next58, %while.end ]
  %dec3045.in = phi i32 [ %i_last.1.lcssa.i.i.ph, %land.rhs.lr.ph.lr.ph ], [ %indvars, %while.end ]
  %3 = zext i32 %dec3045.in to i64
  %4 = tail call i32 @llvm.smax.i32(i32 %dec3045.in, i32 1)
  br label %land.rhs

land.rhs:                                         ; preds = %land.rhs.lr.ph, %while.body
  %indvars.iv = phi i64 [ %3, %land.rhs.lr.ph ], [ %indvars.iv.next, %while.body ]
  %r.032 = phi i32 [ 0, %land.rhs.lr.ph ], [ %inc, %while.body ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %idxprom3 = and i64 %indvars.iv.next, 4294967295
  %arrayidx4 = getelementptr inbounds i16, ptr %dct, i64 %idxprom3
  %5 = load i16, ptr %arrayidx4, align 2
  %cmp5 = icmp eq i16 %5, 0
  br i1 %cmp5, label %while.body, label %while.end

while.body:                                       ; preds = %land.rhs
  %inc = add nuw nsw i32 %r.032, 1
  %exitcond.not = icmp eq i32 %inc, %4
  br i1 %exitcond.not, label %do.end.loopexit, label %land.rhs

while.end:                                        ; preds = %land.rhs
  %indvars = trunc i64 %indvars.iv.next to i32
  %6 = trunc nuw i64 %indvars.iv to i32
  %conv7 = trunc i32 %r.032 to i8
  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57, 1
  %arrayidx10 = getelementptr inbounds [16 x i8], ptr %run, i64 0, i64 %indvars.iv57
  store i8 %conv7, ptr %arrayidx10, align 1
  %sext = shl i64 %indvars.iv.next, 32
  %7 = ashr exact i64 %sext, 31
  %arrayidx = getelementptr inbounds i8, ptr %dct, i64 %7
  %8 = load i16, ptr %arrayidx, align 2
  %arrayidx2 = getelementptr inbounds [16 x i16], ptr %level62, i64 0, i64 %indvars.iv.next58
  store i16 %8, ptr %arrayidx2, align 2
  %cmp31 = icmp sgt i32 %6, 1
  br i1 %cmp31, label %land.rhs.lr.ph, label %do.end.loopexit49

do.end.loopexit:                                  ; preds = %while.body
  %9 = trunc nuw nsw i64 %indvars.iv57 to i32
  %10 = trunc i32 %4 to i8
  br label %do.end

do.end.loopexit49:                                ; preds = %while.end
  %11 = trunc nuw i64 %indvars.iv.next58 to i32
  br label %do.end

do.end:                                           ; preds = %x264_coeff_last4.exit, %do.end.loopexit49, %do.end.loopexit
  %i_total.0.lcssa = phi i32 [ 0, %x264_coeff_last4.exit ], [ %9, %do.end.loopexit ], [ %11, %do.end.loopexit49 ]
  %idxprom1.lcssa = phi i64 [ 0, %x264_coeff_last4.exit ], [ %indvars.iv57, %do.end.loopexit ], [ %indvars.iv.next58, %do.end.loopexit49 ]
  %r.0.lcssa = phi i8 [ 0, %x264_coeff_last4.exit ], [ %10, %do.end.loopexit ], [ 0, %do.end.loopexit49 ]
  %run24 = getelementptr inbounds i8, ptr %runlevel, i64 36
  %inc825 = add nuw nsw i32 %i_total.0.lcssa, 1
  %arrayidx1026 = getelementptr inbounds [16 x i8], ptr %run24, i64 0, i64 %idxprom1.lcssa
  store i8 %r.0.lcssa, ptr %arrayidx1026, align 1
  ret i32 %inc825
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal range(i32 -2147483647, -2147483648) i32 @x264_coeff_level_run15(ptr nocapture noundef readonly %dct, ptr nocapture noundef writeonly %runlevel) #1 {
entry:
  %gep.i.i = getelementptr i8, ptr %dct, i64 22
  %0 = load i64, ptr %gep.i.i, align 8
  %tobool.not.i.i = icmp eq i64 %0, 0
  br i1 %tobool.not.i.i, label %for.inc.i.i, label %land.rhs.i.i.preheader

for.inc.i.i:                                      ; preds = %entry
  %gep.i.1.i = getelementptr i8, ptr %dct, i64 14
  %1 = load i64, ptr %gep.i.1.i, align 8
  %tobool.not.i.1.i = icmp eq i64 %1, 0
  br i1 %tobool.not.i.1.i, label %for.inc.i.1.i, label %land.rhs.i.i.preheader

for.inc.i.1.i:                                    ; preds = %for.inc.i.i
  %gep.i.2.i = getelementptr i8, ptr %dct, i64 6
  %2 = load i64, ptr %gep.i.2.i, align 8
  %tobool.not.i.2.i = icmp eq i64 %2, 0
  %spec.select.i = select i1 %tobool.not.i.2.i, i32 2, i32 6
  br label %land.rhs.i.i.preheader

land.rhs.i.i.preheader:                           ; preds = %for.inc.i.1.i, %for.inc.i.i, %entry
  %i_last.117.i.i.ph = phi i32 [ %spec.select.i, %for.inc.i.1.i ], [ 10, %for.inc.i.i ], [ 14, %entry ]
  br label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %land.rhs.i.i.preheader, %while.body.i.i
  %i_last.117.i.i = phi i32 [ %dec.i.i, %while.body.i.i ], [ %i_last.117.i.i.ph, %land.rhs.i.i.preheader ]
  %idxprom.i.i = zext nneg i32 %i_last.117.i.i to i64
  %arrayidx.i.i = getelementptr inbounds i16, ptr %dct, i64 %idxprom.i.i
  %3 = load i16, ptr %arrayidx.i.i, align 2
  %cmp4.i.i = icmp eq i16 %3, 0
  br i1 %cmp4.i.i, label %while.body.i.i, label %x264_coeff_last15.exit

while.body.i.i:                                   ; preds = %land.rhs.i.i
  %dec.i.i = add nsw i32 %i_last.117.i.i, -1
  %cmp3.i.i = icmp sgt i32 %i_last.117.i.i, 0
  br i1 %cmp3.i.i, label %land.rhs.i.i, label %x264_coeff_last15.exit.thread

x264_coeff_last15.exit.thread:                    ; preds = %while.body.i.i
  store i32 -1, ptr %runlevel, align 4
  %level62 = getelementptr inbounds i8, ptr %runlevel, i64 4
  %arrayidx4064 = getelementptr inbounds i8, ptr %dct, i64 -2
  %4 = load i16, ptr %arrayidx4064, align 2
  store i16 %4, ptr %level62, align 2
  br label %do.end

x264_coeff_last15.exit:                           ; preds = %land.rhs.i.i
  store i32 %i_last.117.i.i, ptr %runlevel, align 4
  %level = getelementptr inbounds i8, ptr %runlevel, i64 4
  %idxprom39 = zext nneg i32 %i_last.117.i.i to i64
  %arrayidx40 = getelementptr inbounds i16, ptr %dct, i64 %idxprom39
  %5 = load i16, ptr %arrayidx40, align 2
  store i16 %5, ptr %level, align 2
  %cmp3142.not = icmp eq i32 %i_last.117.i.i, 0
  br i1 %cmp3142.not, label %do.end, label %land.rhs.lr.ph.lr.ph

land.rhs.lr.ph.lr.ph:                             ; preds = %x264_coeff_last15.exit
  %run = getelementptr inbounds i8, ptr %runlevel, i64 36
  br label %land.rhs.lr.ph

land.rhs.lr.ph:                                   ; preds = %land.rhs.lr.ph.lr.ph, %while.end
  %indvars.iv57 = phi i64 [ 0, %land.rhs.lr.ph.lr.ph ], [ %indvars.iv.next58, %while.end ]
  %dec3045.in = phi i32 [ %i_last.117.i.i, %land.rhs.lr.ph.lr.ph ], [ %indvars, %while.end ]
  %6 = zext i32 %dec3045.in to i64
  %7 = tail call i32 @llvm.smax.i32(i32 %dec3045.in, i32 1)
  br label %land.rhs

land.rhs:                                         ; preds = %land.rhs.lr.ph, %while.body
  %indvars.iv = phi i64 [ %6, %land.rhs.lr.ph ], [ %indvars.iv.next, %while.body ]
  %r.032 = phi i32 [ 0, %land.rhs.lr.ph ], [ %inc, %while.body ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %idxprom3 = and i64 %indvars.iv.next, 4294967295
  %arrayidx4 = getelementptr inbounds i16, ptr %dct, i64 %idxprom3
  %8 = load i16, ptr %arrayidx4, align 2
  %cmp5 = icmp eq i16 %8, 0
  br i1 %cmp5, label %while.body, label %while.end

while.body:                                       ; preds = %land.rhs
  %inc = add nuw nsw i32 %r.032, 1
  %exitcond.not = icmp eq i32 %inc, %7
  br i1 %exitcond.not, label %do.end.loopexit, label %land.rhs

while.end:                                        ; preds = %land.rhs
  %indvars = trunc i64 %indvars.iv.next to i32
  %9 = trunc nuw i64 %indvars.iv to i32
  %conv7 = trunc i32 %r.032 to i8
  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57, 1
  %arrayidx10 = getelementptr inbounds [16 x i8], ptr %run, i64 0, i64 %indvars.iv57
  store i8 %conv7, ptr %arrayidx10, align 1
  %sext = shl i64 %indvars.iv.next, 32
  %10 = ashr exact i64 %sext, 31
  %arrayidx = getelementptr inbounds i8, ptr %dct, i64 %10
  %11 = load i16, ptr %arrayidx, align 2
  %arrayidx2 = getelementptr inbounds [16 x i16], ptr %level, i64 0, i64 %indvars.iv.next58
  store i16 %11, ptr %arrayidx2, align 2
  %cmp31 = icmp sgt i32 %9, 1
  br i1 %cmp31, label %land.rhs.lr.ph, label %do.end.loopexit49

do.end.loopexit:                                  ; preds = %while.body
  %12 = trunc nuw nsw i64 %indvars.iv57 to i32
  %13 = trunc i32 %7 to i8
  br label %do.end

do.end.loopexit49:                                ; preds = %while.end
  %14 = trunc nuw i64 %indvars.iv.next58 to i32
  br label %do.end

do.end:                                           ; preds = %x264_coeff_last15.exit.thread, %do.end.loopexit49, %do.end.loopexit, %x264_coeff_last15.exit
  %i_total.0.lcssa = phi i32 [ 0, %x264_coeff_last15.exit ], [ %12, %do.end.loopexit ], [ %14, %do.end.loopexit49 ], [ 0, %x264_coeff_last15.exit.thread ]
  %idxprom1.lcssa = phi i64 [ 0, %x264_coeff_last15.exit ], [ %indvars.iv57, %do.end.loopexit ], [ %indvars.iv.next58, %do.end.loopexit49 ], [ 0, %x264_coeff_last15.exit.thread ]
  %r.0.lcssa = phi i8 [ 0, %x264_coeff_last15.exit ], [ %13, %do.end.loopexit ], [ 0, %do.end.loopexit49 ], [ 0, %x264_coeff_last15.exit.thread ]
  %run24 = getelementptr inbounds i8, ptr %runlevel, i64 36
  %inc825 = add nuw nsw i32 %i_total.0.lcssa, 1
  %arrayidx1026 = getelementptr inbounds [16 x i8], ptr %run24, i64 0, i64 %idxprom1.lcssa
  store i8 %r.0.lcssa, ptr %arrayidx1026, align 1
  ret i32 %inc825
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal range(i32 -2147483647, -2147483648) i32 @x264_coeff_level_run16(ptr nocapture noundef readonly %dct, ptr nocapture noundef writeonly %runlevel) #1 {
entry:
  %gep.i.i = getelementptr i8, ptr %dct, i64 24
  %0 = load i64, ptr %gep.i.i, align 8
  %tobool.not.i.i = icmp eq i64 %0, 0
  br i1 %tobool.not.i.i, label %for.inc.i.i, label %land.rhs.i.i.preheader

for.inc.i.i:                                      ; preds = %entry
  %gep.i.1.i = getelementptr i8, ptr %dct, i64 16
  %1 = load i64, ptr %gep.i.1.i, align 8
  %tobool.not.i.1.i = icmp eq i64 %1, 0
  br i1 %tobool.not.i.1.i, label %for.inc.i.1.i, label %land.rhs.i.i.preheader

for.inc.i.1.i:                                    ; preds = %for.inc.i.i
  %gep.i.2.i = getelementptr i8, ptr %dct, i64 8
  %2 = load i64, ptr %gep.i.2.i, align 8
  %tobool.not.i.2.i = icmp eq i64 %2, 0
  br i1 %tobool.not.i.2.i, label %for.inc.i.2.i, label %land.rhs.i.i.preheader

for.inc.i.2.i:                                    ; preds = %for.inc.i.1.i
  %3 = load i64, ptr %dct, align 8
  %tobool.not.i.3.i = icmp eq i64 %3, 0
  br i1 %tobool.not.i.3.i, label %x264_coeff_last16.exit.thread, label %land.rhs.i.i.preheader

land.rhs.i.i.preheader:                           ; preds = %for.inc.i.2.i, %for.inc.i.1.i, %for.inc.i.i, %entry
  %i_last.117.i.i.ph = phi i32 [ 3, %for.inc.i.2.i ], [ 7, %for.inc.i.1.i ], [ 11, %for.inc.i.i ], [ 15, %entry ]
  br label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %land.rhs.i.i.preheader, %while.body.i.i
  %i_last.117.i.i = phi i32 [ %dec.i.i, %while.body.i.i ], [ %i_last.117.i.i.ph, %land.rhs.i.i.preheader ]
  %idxprom.i.i = zext nneg i32 %i_last.117.i.i to i64
  %arrayidx.i.i = getelementptr inbounds i16, ptr %dct, i64 %idxprom.i.i
  %4 = load i16, ptr %arrayidx.i.i, align 2
  %cmp4.i.i = icmp eq i16 %4, 0
  br i1 %cmp4.i.i, label %while.body.i.i, label %x264_coeff_last16.exit

while.body.i.i:                                   ; preds = %land.rhs.i.i
  %dec.i.i = add nsw i32 %i_last.117.i.i, -1
  %cmp3.i.i = icmp sgt i32 %i_last.117.i.i, 0
  br i1 %cmp3.i.i, label %land.rhs.i.i, label %x264_coeff_last16.exit.thread

x264_coeff_last16.exit.thread:                    ; preds = %while.body.i.i, %for.inc.i.2.i
  store i32 -1, ptr %runlevel, align 4
  %level62 = getelementptr inbounds i8, ptr %runlevel, i64 4
  %arrayidx4064 = getelementptr inbounds i8, ptr %dct, i64 -2
  %5 = load i16, ptr %arrayidx4064, align 2
  store i16 %5, ptr %level62, align 2
  br label %do.end

x264_coeff_last16.exit:                           ; preds = %land.rhs.i.i
  store i32 %i_last.117.i.i, ptr %runlevel, align 4
  %level = getelementptr inbounds i8, ptr %runlevel, i64 4
  %idxprom39 = zext nneg i32 %i_last.117.i.i to i64
  %arrayidx40 = getelementptr inbounds i16, ptr %dct, i64 %idxprom39
  %6 = load i16, ptr %arrayidx40, align 2
  store i16 %6, ptr %level, align 2
  %cmp3142.not = icmp eq i32 %i_last.117.i.i, 0
  br i1 %cmp3142.not, label %do.end, label %land.rhs.lr.ph.lr.ph

land.rhs.lr.ph.lr.ph:                             ; preds = %x264_coeff_last16.exit
  %run = getelementptr inbounds i8, ptr %runlevel, i64 36
  br label %land.rhs.lr.ph

land.rhs.lr.ph:                                   ; preds = %land.rhs.lr.ph.lr.ph, %while.end
  %indvars.iv57 = phi i64 [ 0, %land.rhs.lr.ph.lr.ph ], [ %indvars.iv.next58, %while.end ]
  %dec3045.in = phi i32 [ %i_last.117.i.i, %land.rhs.lr.ph.lr.ph ], [ %indvars, %while.end ]
  %7 = zext i32 %dec3045.in to i64
  %8 = tail call i32 @llvm.smax.i32(i32 %dec3045.in, i32 1)
  br label %land.rhs

land.rhs:                                         ; preds = %land.rhs.lr.ph, %while.body
  %indvars.iv = phi i64 [ %7, %land.rhs.lr.ph ], [ %indvars.iv.next, %while.body ]
  %r.032 = phi i32 [ 0, %land.rhs.lr.ph ], [ %inc, %while.body ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %idxprom3 = and i64 %indvars.iv.next, 4294967295
  %arrayidx4 = getelementptr inbounds i16, ptr %dct, i64 %idxprom3
  %9 = load i16, ptr %arrayidx4, align 2
  %cmp5 = icmp eq i16 %9, 0
  br i1 %cmp5, label %while.body, label %while.end

while.body:                                       ; preds = %land.rhs
  %inc = add nuw nsw i32 %r.032, 1
  %exitcond.not = icmp eq i32 %inc, %8
  br i1 %exitcond.not, label %do.end.loopexit, label %land.rhs

while.end:                                        ; preds = %land.rhs
  %indvars = trunc i64 %indvars.iv.next to i32
  %10 = trunc nuw i64 %indvars.iv to i32
  %conv7 = trunc i32 %r.032 to i8
  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57, 1
  %arrayidx10 = getelementptr inbounds [16 x i8], ptr %run, i64 0, i64 %indvars.iv57
  store i8 %conv7, ptr %arrayidx10, align 1
  %sext = shl i64 %indvars.iv.next, 32
  %11 = ashr exact i64 %sext, 31
  %arrayidx = getelementptr inbounds i8, ptr %dct, i64 %11
  %12 = load i16, ptr %arrayidx, align 2
  %arrayidx2 = getelementptr inbounds [16 x i16], ptr %level, i64 0, i64 %indvars.iv.next58
  store i16 %12, ptr %arrayidx2, align 2
  %cmp31 = icmp sgt i32 %10, 1
  br i1 %cmp31, label %land.rhs.lr.ph, label %do.end.loopexit49

do.end.loopexit:                                  ; preds = %while.body
  %13 = trunc nuw nsw i64 %indvars.iv57 to i32
  %14 = trunc i32 %8 to i8
  br label %do.end

do.end.loopexit49:                                ; preds = %while.end
  %15 = trunc nuw i64 %indvars.iv.next58 to i32
  br label %do.end

do.end:                                           ; preds = %x264_coeff_last16.exit.thread, %do.end.loopexit49, %do.end.loopexit, %x264_coeff_last16.exit
  %i_total.0.lcssa = phi i32 [ 0, %x264_coeff_last16.exit ], [ %13, %do.end.loopexit ], [ %15, %do.end.loopexit49 ], [ 0, %x264_coeff_last16.exit.thread ]
  %idxprom1.lcssa = phi i64 [ 0, %x264_coeff_last16.exit ], [ %indvars.iv57, %do.end.loopexit ], [ %indvars.iv.next58, %do.end.loopexit49 ], [ 0, %x264_coeff_last16.exit.thread ]
  %r.0.lcssa = phi i8 [ 0, %x264_coeff_last16.exit ], [ %14, %do.end.loopexit ], [ 0, %do.end.loopexit49 ], [ 0, %x264_coeff_last16.exit.thread ]
  %run24 = getelementptr inbounds i8, ptr %runlevel, i64 36
  %inc825 = add nuw nsw i32 %i_total.0.lcssa, 1
  %arrayidx1026 = getelementptr inbounds [16 x i8], ptr %run24, i64 0, i64 %idxprom1.lcssa
  store i8 %r.0.lcssa, ptr %arrayidx1026, align 1
  ret i32 %inc825
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v4i32(<4 x i32>) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.vector.reduce.or.v4i16(<4 x i16>) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!5 = !{!6}
!6 = distinct !{!6, !7}
!7 = distinct !{!7, !"LVerDomain"}
!8 = !{!9, !10}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
!11 = !{!9}
!12 = !{!10}
!13 = distinct !{!13, !14, !15}
!14 = !{!"llvm.loop.isvectorized", i32 1}
!15 = !{!"llvm.loop.unroll.runtime.disable"}
!16 = distinct !{!16, !14}
!17 = !{!18}
!18 = distinct !{!18, !19}
!19 = distinct !{!19, !"LVerDomain"}
!20 = !{!21, !22}
!21 = distinct !{!21, !19}
!22 = distinct !{!22, !19}
!23 = !{!21}
!24 = !{!22}
!25 = distinct !{!25, !14}
!26 = !{!27}
!27 = distinct !{!27, !28}
!28 = distinct !{!28, !"LVerDomain"}
!29 = !{!30}
!30 = distinct !{!30, !28}
!31 = distinct !{!31, !14}
!32 = !{!33}
!33 = distinct !{!33, !34}
!34 = distinct !{!34, !"LVerDomain"}
!35 = !{!36}
!36 = distinct !{!36, !34}
!37 = distinct !{!37, !14}
!38 = !{!39}
!39 = distinct !{!39, !40}
!40 = distinct !{!40, !"LVerDomain"}
!41 = !{!42}
!42 = distinct !{!42, !40}
!43 = !{!44}
!44 = distinct !{!44, !40}
!45 = !{!39, !42}
!46 = distinct !{!46, !14, !15}
!47 = distinct !{!47, !14}
