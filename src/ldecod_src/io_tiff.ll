; ModuleID = 'ldecod_src/io_tiff.c'
source_filename = "ldecod_src/io_tiff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Tiff = type { ptr, ptr, ptr, i32, i32, %struct.TiffImageFileHeader, i16, [3 x i32], i32, i32, i32, [1080 x i32], [1080 x i32], [2 x i32], [2 x i32], ptr, ptr }
%struct.TiffImageFileHeader = type { i16, i16, i32 }

@ReadTIFFImage.t = internal global %struct.Tiff zeroinitializer, align 8
@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [103 x i8] c"ReadTIFFImage:  RGB input file has not been declared as interleaved but only interleaved is supported\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"%s%0*d%s\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"%s%*d%s\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"ReadTIFFImage:  file name is too large\0A\00", align 1
@.str.4 = private unnamed_addr constant [88 x i8] c"ReadTIFFImage:  Tiff height (%u) different from encoder input height (%d) . Exiting...\0A\00", align 1
@.str.5 = private unnamed_addr constant [86 x i8] c"ReadTIFFImage:  Tiff width (%u) different from encoder input width (%d) . Exiting...\0A\00", align 1
@.str.6 = private unnamed_addr constant [69 x i8] c"ReadTIFFImage only supports pic_unit_size_on_disk of 8 or 16 not %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [46 x i8] c"ReadTIFFImage:  Unsupported ColorFormat (%d)\0A\00", align 1
@.str.8 = private unnamed_addr constant [67 x i8] c"ReadTIFFImage only supports pic_unit_size_shift3 of 1 or 2 not %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"Couldn't open to read:  %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [44 x i8] c"First two bytes indicate:  Not a TIFF file\0A\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"ImageFileHeader.arbitrary != 42\0A\00", align 1
@.str.12 = private unnamed_addr constant [69 x i8] c"readDirectoryEntry:  ImageLength (%d) exceeds builtin maximum of %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [36 x i8] c"BitsPerSample (only [3] supported)\0A\00", align 1
@.str.14 = private unnamed_addr constant [48 x i8] c"BitsPerSample must be the same for all samples\0A\00", align 1
@.str.15 = private unnamed_addr constant [41 x i8] c"Only 8 or 16 BitsPerSample is supported\0A\00", align 1
@.str.16 = private unnamed_addr constant [40 x i8] c"Only uncompressed TIFF files supported\0A\00", align 1
@.str.17 = private unnamed_addr constant [33 x i8] c"Only Orientation 1 is supported\0A\00", align 1
@.str.18 = private unnamed_addr constant [49 x i8] c"RGB_YUV_initialize:  Unsupported videoCode (%d)\0A\00", align 1
@Coef = internal unnamed_addr constant [9 x [3 x double]] [[3 x double] [double 2.990000e-01, double 5.870000e-01, double 1.140000e-01], [3 x double] [double 2.126000e-01, double 7.152000e-01, double 7.220000e-02], [3 x double] [double 2.990000e-01, double 5.870000e-01, double 1.140000e-01], [3 x double] [double 2.990000e-01, double 5.870000e-01, double 1.140000e-01], [3 x double] [double 3.000000e-01, double 5.900000e-01, double 1.100000e-01], [3 x double] [double 2.990000e-01, double 5.870000e-01, double 1.140000e-01], [3 x double] [double 2.990000e-01, double 5.870000e-01, double 1.140000e-01], [3 x double] [double 2.120000e-01, double 7.010000e-01, double 0x3FB645A1CAC08312], [3 x double] [double 2.126390e-01, double 7.151690e-01, double 7.219200e-02]], align 16
@.str.19 = private unnamed_addr constant [46 x i8] c"ERROR: RGB_YUV_initialize: yr+yg+yb=%d sy=%u\0A\00", align 1
@.str.20 = private unnamed_addr constant [40 x i8] c"ERROR: RGB_YUV_initialize: ur+ug+ub=%d\0A\00", align 1
@.str.21 = private unnamed_addr constant [40 x i8] c"ERROR: RGB_YUV_initialize: vr+vg+vb=%d\0A\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @constructTiff(ptr nocapture noundef writeonly %t) local_unnamed_addr #0 {
entry:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %t, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind willreturn uwtable
define dso_local void @destructTiff(ptr nocapture noundef %t) local_unnamed_addr #1 {
entry:
  %fileInMemory = getelementptr inbounds i8, ptr %t, i64 8
  %0 = load ptr, ptr %fileInMemory, align 8
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @free(ptr noundef nonnull %0) #17
  store ptr null, ptr %fileInMemory, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load ptr, ptr %t, align 8
  %tobool3.not = icmp eq ptr %1, null
  br i1 %tobool3.not, label %if.end7, label %if.then4

if.then4:                                         ; preds = %if.end
  tail call void @free(ptr noundef nonnull %1) #17
  store ptr null, ptr %t, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @horizontal_half_1chan_cosite(ptr nocapture noundef readonly %srcPtr, i32 noundef %srcXres, i32 noundef %yres, i32 noundef %srcZres, ptr nocapture noundef writeonly %dstPtr, i32 noundef %dstZres, i32 noundef %pixMax) local_unnamed_addr #3 {
entry:
  %cmp384 = icmp sgt i32 %yres, 0
  br i1 %cmp384, label %for.cond1.preheader.lr.ph, label %for.end255

for.cond1.preheader.lr.ph:                        ; preds = %entry
  %idx.ext22 = sext i32 %srcZres to i64
  %mul32 = mul nsw i32 %srcZres, 3
  %idx.ext33 = sext i32 %mul32 to i64
  %mul43 = mul nsw i32 %srcZres, 5
  %idx.ext44 = sext i32 %mul43 to i64
  %mul55 = mul nsw i32 %srcZres, 7
  %idx.ext56 = sext i32 %mul55 to i64
  %idx.ext70 = sext i32 %dstZres to i64
  %mul72 = shl nsw i32 %srcZres, 1
  %idx.ext73 = sext i32 %mul72 to i64
  %sub76 = add nsw i32 %srcXres, -8
  %cmp78372 = icmp sgt i32 %srcXres, 16
  %idx.neg84 = sub nsw i64 0, %idx.ext22
  %idx.neg95 = sub nsw i64 0, %idx.ext33
  %idx.neg107 = sub nsw i64 0, %idx.ext44
  %idx.neg119 = sub nsw i64 0, %idx.ext56
  %sub149 = and i32 %srcXres, -2
  %sub154 = add nsw i32 %srcXres, -1
  %sub158 = add nsw i32 %srcXres, -3
  %sub167 = add nsw i32 %srcXres, -5
  %sub176 = add nsw i32 %srcXres, -7
  %0 = add i32 %srcXres, -17
  %1 = and i32 %0, -2
  %2 = add i32 %1, 10
  %mul27.1 = shl nsw i32 %srcZres, 1
  %idx.ext28.1 = sext i32 %mul27.1 to i64
  %idx.neg29.1 = sub nsw i64 0, %idx.ext28.1
  %add.ptr53.1.idx = mul nsw i64 %idx.ext22, -4
  %mul38.2 = shl nsw i32 %srcZres, 2
  %idx.ext39.2 = sext i32 %mul38.2 to i64
  %idx.neg40.2 = sub nsw i64 0, %idx.ext39.2
  %add.ptr53.2.idx = mul nsw i64 %idx.ext22, -8
  %add.ptr53.3.idx = mul nsw i64 %idx.ext22, -12
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.cond1.preheader.lr.ph, %for.inc254
  %dst.0387 = phi ptr [ %dstPtr, %for.cond1.preheader.lr.ph ], [ %dst.3.lcssa, %for.inc254 ]
  %src.0386 = phi ptr [ %srcPtr, %for.cond1.preheader.lr.ph ], [ %src.3.lcssa, %for.inc254 ]
  %y.0385 = phi i32 [ 0, %for.cond1.preheader.lr.ph ], [ %inc, %for.inc254 ]
  %3 = load i16, ptr %src.0386, align 2
  %conv = zext i16 %3 to i32
  %mul = shl nuw nsw i32 %conv, 11
  %add.ptr23 = getelementptr inbounds i16, ptr %src.0386, i64 %idx.ext22
  %4 = load i16, ptr %add.ptr23, align 2
  %conv24 = zext i16 %4 to i32
  %add = add nuw nsw i32 %conv24, %conv
  %mul25 = mul nuw nsw i32 %add, 1228
  %add26 = add nuw nsw i32 %mul25, %mul
  %add.ptr34 = getelementptr inbounds i16, ptr %src.0386, i64 %idx.ext33
  %5 = load i16, ptr %add.ptr34, align 2
  %conv35 = zext i16 %5 to i32
  %add36 = add nuw nsw i32 %conv35, %conv
  %mul37.neg = mul nsw i32 %add36, -262
  %sub = add nsw i32 %add26, %mul37.neg
  %add.ptr45 = getelementptr inbounds i16, ptr %src.0386, i64 %idx.ext44
  %6 = load i16, ptr %add.ptr45, align 2
  %conv46 = zext i16 %6 to i32
  %add47 = add nuw nsw i32 %conv46, %conv
  %mul48 = mul nuw nsw i32 %add47, 47
  %add49 = add nsw i32 %sub, %mul48
  %add.ptr57 = getelementptr inbounds i16, ptr %src.0386, i64 %idx.ext56
  %7 = load i16, ptr %add.ptr57, align 2
  %conv58 = zext i16 %7 to i32
  %add59 = add nuw nsw i32 %conv58, %conv
  %mul60 = mul nuw nsw i32 %add59, 11
  %add61 = add nsw i32 %add49, %mul60
  %cmp63 = icmp slt i32 %add61, -6143
  br i1 %cmp63, label %if.end68, label %if.else

if.else:                                          ; preds = %for.cond1.preheader
  %add62 = add nsw i32 %add61, 2048
  %div = sdiv i32 %add62, 4096
  %spec.select = tail call i32 @llvm.smin.i32(i32 %div, i32 %pixMax)
  br label %if.end68

if.end68:                                         ; preds = %if.else, %for.cond1.preheader
  %result.0 = phi i32 [ 0, %for.cond1.preheader ], [ %spec.select, %if.else ]
  %conv69 = trunc i32 %result.0 to i16
  store i16 %conv69, ptr %dst.0387, align 2
  %add.ptr71 = getelementptr inbounds i16, ptr %dst.0387, i64 %idx.ext70
  %add.ptr74 = getelementptr inbounds i16, ptr %src.0386, i64 %idx.ext73
  %8 = load i16, ptr %add.ptr74, align 2
  %conv.1 = zext i16 %8 to i32
  %mul.1 = shl nuw nsw i32 %conv.1, 11
  %add.ptr.1 = getelementptr inbounds i16, ptr %add.ptr74, i64 %idx.neg84
  %9 = load i16, ptr %add.ptr.1, align 2
  %conv21.1 = zext i16 %9 to i32
  %add.ptr23.1 = getelementptr inbounds i16, ptr %add.ptr74, i64 %idx.ext22
  %10 = load i16, ptr %add.ptr23.1, align 2
  %conv24.1 = zext i16 %10 to i32
  %add.1 = add nuw nsw i32 %conv24.1, %conv21.1
  %mul25.1 = mul nuw nsw i32 %add.1, 1228
  %add26.1 = add nuw nsw i32 %mul25.1, %mul.1
  %add.ptr30.1 = getelementptr inbounds i16, ptr %add.ptr74, i64 %idx.neg29.1
  %11 = load i16, ptr %add.ptr30.1, align 2
  %conv31.1 = zext i16 %11 to i32
  %add.ptr34.1 = getelementptr inbounds i16, ptr %add.ptr74, i64 %idx.ext33
  %12 = load i16, ptr %add.ptr34.1, align 2
  %conv35.1 = zext i16 %12 to i32
  %add36.1 = add nuw nsw i32 %conv35.1, %conv31.1
  %mul37.neg.1 = mul nsw i32 %add36.1, -262
  %sub.1 = add nsw i32 %add26.1, %mul37.neg.1
  %add.ptr45.1 = getelementptr inbounds i16, ptr %add.ptr74, i64 %idx.ext44
  %13 = load i16, ptr %add.ptr45.1, align 2
  %conv46.1 = zext i16 %13 to i32
  %add47.1 = add nuw nsw i32 %conv46.1, %conv31.1
  %mul48.1 = mul nuw nsw i32 %add47.1, 47
  %add49.1 = add nsw i32 %sub.1, %mul48.1
  %add.ptr53.1 = getelementptr inbounds i8, ptr %add.ptr74, i64 %add.ptr53.1.idx
  %14 = load i16, ptr %add.ptr53.1, align 2
  %conv54.1 = zext i16 %14 to i32
  %add.ptr57.1 = getelementptr inbounds i16, ptr %add.ptr74, i64 %idx.ext56
  %15 = load i16, ptr %add.ptr57.1, align 2
  %conv58.1 = zext i16 %15 to i32
  %add59.1 = add nuw nsw i32 %conv58.1, %conv54.1
  %mul60.1 = mul nuw nsw i32 %add59.1, 11
  %add61.1 = add nsw i32 %add49.1, %mul60.1
  %cmp63.1 = icmp slt i32 %add61.1, -6143
  br i1 %cmp63.1, label %if.end68.1, label %if.else.1

if.else.1:                                        ; preds = %if.end68
  %add62.1 = add nsw i32 %add61.1, 2048
  %div.1 = sdiv i32 %add62.1, 4096
  %spec.select.1 = tail call i32 @llvm.smin.i32(i32 %div.1, i32 %pixMax)
  br label %if.end68.1

if.end68.1:                                       ; preds = %if.else.1, %if.end68
  %result.0.1 = phi i32 [ 0, %if.end68 ], [ %spec.select.1, %if.else.1 ]
  %conv69.1 = trunc i32 %result.0.1 to i16
  store i16 %conv69.1, ptr %add.ptr71, align 2
  %add.ptr71.1 = getelementptr inbounds i16, ptr %add.ptr71, i64 %idx.ext70
  %add.ptr74.1 = getelementptr inbounds i16, ptr %add.ptr74, i64 %idx.ext73
  %16 = load i16, ptr %add.ptr74.1, align 2
  %conv.2 = zext i16 %16 to i32
  %mul.2 = shl nuw nsw i32 %conv.2, 11
  %add.ptr.2 = getelementptr inbounds i16, ptr %add.ptr74.1, i64 %idx.neg84
  %17 = load i16, ptr %add.ptr.2, align 2
  %conv21.2 = zext i16 %17 to i32
  %add.ptr23.2 = getelementptr inbounds i16, ptr %add.ptr74.1, i64 %idx.ext22
  %18 = load i16, ptr %add.ptr23.2, align 2
  %conv24.2 = zext i16 %18 to i32
  %add.2 = add nuw nsw i32 %conv24.2, %conv21.2
  %mul25.2 = mul nuw nsw i32 %add.2, 1228
  %add26.2 = add nuw nsw i32 %mul25.2, %mul.2
  %add.ptr30.2 = getelementptr inbounds i16, ptr %add.ptr74.1, i64 %idx.neg95
  %19 = load i16, ptr %add.ptr30.2, align 2
  %conv31.2 = zext i16 %19 to i32
  %add.ptr34.2 = getelementptr inbounds i16, ptr %add.ptr74.1, i64 %idx.ext33
  %20 = load i16, ptr %add.ptr34.2, align 2
  %conv35.2 = zext i16 %20 to i32
  %add36.2 = add nuw nsw i32 %conv35.2, %conv31.2
  %mul37.neg.2 = mul nsw i32 %add36.2, -262
  %sub.2 = add nsw i32 %add26.2, %mul37.neg.2
  %add.ptr41.2 = getelementptr inbounds i16, ptr %add.ptr74.1, i64 %idx.neg40.2
  %21 = load i16, ptr %add.ptr41.2, align 2
  %conv42.2 = zext i16 %21 to i32
  %add.ptr45.2 = getelementptr inbounds i16, ptr %add.ptr74.1, i64 %idx.ext44
  %22 = load i16, ptr %add.ptr45.2, align 2
  %conv46.2 = zext i16 %22 to i32
  %add47.2 = add nuw nsw i32 %conv46.2, %conv42.2
  %mul48.2 = mul nuw nsw i32 %add47.2, 47
  %add49.2 = add nsw i32 %sub.2, %mul48.2
  %add.ptr53.2 = getelementptr inbounds i8, ptr %add.ptr74.1, i64 %add.ptr53.2.idx
  %23 = load i16, ptr %add.ptr53.2, align 2
  %conv54.2 = zext i16 %23 to i32
  %add.ptr57.2 = getelementptr inbounds i16, ptr %add.ptr74.1, i64 %idx.ext56
  %24 = load i16, ptr %add.ptr57.2, align 2
  %conv58.2 = zext i16 %24 to i32
  %add59.2 = add nuw nsw i32 %conv58.2, %conv54.2
  %mul60.2 = mul nuw nsw i32 %add59.2, 11
  %add61.2 = add nsw i32 %add49.2, %mul60.2
  %cmp63.2 = icmp slt i32 %add61.2, -6143
  br i1 %cmp63.2, label %if.end68.2, label %if.else.2

if.else.2:                                        ; preds = %if.end68.1
  %add62.2 = add nsw i32 %add61.2, 2048
  %div.2 = sdiv i32 %add62.2, 4096
  %spec.select.2 = tail call i32 @llvm.smin.i32(i32 %div.2, i32 %pixMax)
  br label %if.end68.2

if.end68.2:                                       ; preds = %if.else.2, %if.end68.1
  %result.0.2 = phi i32 [ 0, %if.end68.1 ], [ %spec.select.2, %if.else.2 ]
  %conv69.2 = trunc i32 %result.0.2 to i16
  store i16 %conv69.2, ptr %add.ptr71.1, align 2
  %add.ptr71.2 = getelementptr inbounds i16, ptr %add.ptr71.1, i64 %idx.ext70
  %add.ptr74.2 = getelementptr inbounds i16, ptr %add.ptr74.1, i64 %idx.ext73
  %25 = load i16, ptr %add.ptr74.2, align 2
  %conv.3 = zext i16 %25 to i32
  %mul.3 = shl nuw nsw i32 %conv.3, 11
  %add.ptr.3 = getelementptr inbounds i16, ptr %add.ptr74.2, i64 %idx.neg84
  %26 = load i16, ptr %add.ptr.3, align 2
  %conv21.3 = zext i16 %26 to i32
  %add.ptr23.3 = getelementptr inbounds i16, ptr %add.ptr74.2, i64 %idx.ext22
  %27 = load i16, ptr %add.ptr23.3, align 2
  %conv24.3 = zext i16 %27 to i32
  %add.3 = add nuw nsw i32 %conv24.3, %conv21.3
  %mul25.3 = mul nuw nsw i32 %add.3, 1228
  %add26.3 = add nuw nsw i32 %mul25.3, %mul.3
  %add.ptr30.3 = getelementptr inbounds i16, ptr %add.ptr74.2, i64 %idx.neg95
  %28 = load i16, ptr %add.ptr30.3, align 2
  %conv31.3 = zext i16 %28 to i32
  %add.ptr34.3 = getelementptr inbounds i16, ptr %add.ptr74.2, i64 %idx.ext33
  %29 = load i16, ptr %add.ptr34.3, align 2
  %conv35.3 = zext i16 %29 to i32
  %add36.3 = add nuw nsw i32 %conv35.3, %conv31.3
  %mul37.neg.3 = mul nsw i32 %add36.3, -262
  %sub.3 = add nsw i32 %add26.3, %mul37.neg.3
  %add.ptr41.3 = getelementptr inbounds i16, ptr %add.ptr74.2, i64 %idx.neg107
  %30 = load i16, ptr %add.ptr41.3, align 2
  %conv42.3 = zext i16 %30 to i32
  %add.ptr45.3 = getelementptr inbounds i16, ptr %add.ptr74.2, i64 %idx.ext44
  %31 = load i16, ptr %add.ptr45.3, align 2
  %conv46.3 = zext i16 %31 to i32
  %add47.3 = add nuw nsw i32 %conv46.3, %conv42.3
  %mul48.3 = mul nuw nsw i32 %add47.3, 47
  %add49.3 = add nsw i32 %sub.3, %mul48.3
  %add.ptr53.3 = getelementptr inbounds i8, ptr %add.ptr74.2, i64 %add.ptr53.3.idx
  %32 = load i16, ptr %add.ptr53.3, align 2
  %conv54.3 = zext i16 %32 to i32
  %add.ptr57.3 = getelementptr inbounds i16, ptr %add.ptr74.2, i64 %idx.ext56
  %33 = load i16, ptr %add.ptr57.3, align 2
  %conv58.3 = zext i16 %33 to i32
  %add59.3 = add nuw nsw i32 %conv58.3, %conv54.3
  %mul60.3 = mul nuw nsw i32 %add59.3, 11
  %add61.3 = add nsw i32 %add49.3, %mul60.3
  %cmp63.3 = icmp slt i32 %add61.3, -6143
  br i1 %cmp63.3, label %if.end68.3, label %if.else.3

if.else.3:                                        ; preds = %if.end68.2
  %add62.3 = add nsw i32 %add61.3, 2048
  %div.3 = sdiv i32 %add62.3, 4096
  %spec.select.3 = tail call i32 @llvm.smin.i32(i32 %div.3, i32 %pixMax)
  br label %if.end68.3

if.end68.3:                                       ; preds = %if.else.3, %if.end68.2
  %result.0.3 = phi i32 [ 0, %if.end68.2 ], [ %spec.select.3, %if.else.3 ]
  %conv69.3 = trunc i32 %result.0.3 to i16
  store i16 %conv69.3, ptr %add.ptr71.2, align 2
  %add.ptr71.3 = getelementptr inbounds i16, ptr %add.ptr71.2, i64 %idx.ext70
  %add.ptr74.3 = getelementptr inbounds i16, ptr %add.ptr74.2, i64 %idx.ext73
  br i1 %cmp78372, label %for.body80, label %for.end148

for.body80:                                       ; preds = %if.end68.3, %if.end139
  %dst.2375 = phi ptr [ %add.ptr142, %if.end139 ], [ %add.ptr71.3, %if.end68.3 ]
  %src.2374 = phi ptr [ %add.ptr145, %if.end139 ], [ %add.ptr74.3, %if.end68.3 ]
  %x.1373 = phi i32 [ %add147, %if.end139 ], [ 8, %if.end68.3 ]
  %34 = load i16, ptr %src.2374, align 2
  %conv81 = zext i16 %34 to i32
  %mul82 = shl nuw nsw i32 %conv81, 11
  %add.ptr85 = getelementptr inbounds i16, ptr %src.2374, i64 %idx.neg84
  %35 = load i16, ptr %add.ptr85, align 2
  %conv86 = zext i16 %35 to i32
  %add.ptr88 = getelementptr inbounds i16, ptr %src.2374, i64 %idx.ext22
  %36 = load i16, ptr %add.ptr88, align 2
  %conv89 = zext i16 %36 to i32
  %add90 = add nuw nsw i32 %conv89, %conv86
  %mul91 = mul nuw nsw i32 %add90, 1228
  %add92 = add nuw nsw i32 %mul91, %mul82
  %add.ptr96 = getelementptr inbounds i16, ptr %src.2374, i64 %idx.neg95
  %37 = load i16, ptr %add.ptr96, align 2
  %conv97 = zext i16 %37 to i32
  %add.ptr100 = getelementptr inbounds i16, ptr %src.2374, i64 %idx.ext33
  %38 = load i16, ptr %add.ptr100, align 2
  %conv101 = zext i16 %38 to i32
  %add102 = add nuw nsw i32 %conv101, %conv97
  %mul103.neg = mul nsw i32 %add102, -262
  %sub104 = add nsw i32 %add92, %mul103.neg
  %add.ptr108 = getelementptr inbounds i16, ptr %src.2374, i64 %idx.neg107
  %39 = load i16, ptr %add.ptr108, align 2
  %conv109 = zext i16 %39 to i32
  %add.ptr112 = getelementptr inbounds i16, ptr %src.2374, i64 %idx.ext44
  %40 = load i16, ptr %add.ptr112, align 2
  %conv113 = zext i16 %40 to i32
  %add114 = add nuw nsw i32 %conv113, %conv109
  %mul115 = mul nuw nsw i32 %add114, 47
  %add116 = add nsw i32 %sub104, %mul115
  %add.ptr120 = getelementptr inbounds i16, ptr %src.2374, i64 %idx.neg119
  %41 = load i16, ptr %add.ptr120, align 2
  %conv121 = zext i16 %41 to i32
  %add.ptr124 = getelementptr inbounds i16, ptr %src.2374, i64 %idx.ext56
  %42 = load i16, ptr %add.ptr124, align 2
  %conv125 = zext i16 %42 to i32
  %add126 = add nuw nsw i32 %conv125, %conv121
  %mul127 = mul nuw nsw i32 %add126, 11
  %add128 = add nsw i32 %add116, %mul127
  %cmp131 = icmp slt i32 %add128, -6143
  br i1 %cmp131, label %if.end139, label %if.else134

if.else134:                                       ; preds = %for.body80
  %add129 = add nsw i32 %add128, 2048
  %div130 = sdiv i32 %add129, 4096
  %spec.select367 = tail call i32 @llvm.smin.i32(i32 %div130, i32 %pixMax)
  br label %if.end139

if.end139:                                        ; preds = %if.else134, %for.body80
  %result.1 = phi i32 [ 0, %for.body80 ], [ %spec.select367, %if.else134 ]
  %conv140 = trunc i32 %result.1 to i16
  store i16 %conv140, ptr %dst.2375, align 2
  %add.ptr142 = getelementptr inbounds i16, ptr %dst.2375, i64 %idx.ext70
  %add.ptr145 = getelementptr inbounds i16, ptr %src.2374, i64 %idx.ext73
  %add147 = add nuw nsw i32 %x.1373, 2
  %cmp78 = icmp slt i32 %add147, %sub76
  br i1 %cmp78, label %for.body80, label %for.end148

for.end148:                                       ; preds = %if.end139, %if.end68.3
  %x.1.lcssa = phi i32 [ 8, %if.end68.3 ], [ %2, %if.end139 ]
  %src.2.lcssa = phi ptr [ %add.ptr74.3, %if.end68.3 ], [ %add.ptr145, %if.end139 ]
  %dst.2.lcssa = phi ptr [ %add.ptr71.3, %if.end68.3 ], [ %add.ptr142, %if.end139 ]
  %cmp151378 = icmp slt i32 %x.1.lcssa, %sub149
  br i1 %cmp151378, label %for.body153, label %for.inc254

for.body153:                                      ; preds = %for.end148, %if.end244
  %dst.3381 = phi ptr [ %add.ptr247, %if.end244 ], [ %dst.2.lcssa, %for.end148 ]
  %src.3380 = phi ptr [ %add.ptr250, %if.end244 ], [ %src.2.lcssa, %for.end148 ]
  %x.2379 = phi i32 [ %add252, %if.end244 ], [ %x.1.lcssa, %for.end148 ]
  %cmp155 = icmp slt i32 %x.2379, %sub154
  %cmp159 = icmp slt i32 %x.2379, %sub158
  %sub164 = sub nsw i32 %sub154, %x.2379
  %cond166 = select i1 %cmp159, i32 3, i32 %sub164
  %cmp168 = icmp slt i32 %x.2379, %sub167
  %cond175 = select i1 %cmp168, i32 5, i32 %sub164
  %cmp177 = icmp slt i32 %x.2379, %sub176
  %cond184 = select i1 %cmp177, i32 7, i32 %sub164
  %43 = load i16, ptr %src.3380, align 2
  %conv185 = zext i16 %43 to i32
  %mul186 = shl nuw nsw i32 %conv185, 11
  %add.ptr189 = getelementptr inbounds i16, ptr %src.3380, i64 %idx.neg84
  %44 = load i16, ptr %add.ptr189, align 2
  %conv190 = zext i16 %44 to i32
  %mul191 = select i1 %cmp155, i32 %srcZres, i32 0
  %idx.ext192 = sext i32 %mul191 to i64
  %add.ptr193 = getelementptr inbounds i16, ptr %src.3380, i64 %idx.ext192
  %45 = load i16, ptr %add.ptr193, align 2
  %conv194 = zext i16 %45 to i32
  %add195 = add nuw nsw i32 %conv194, %conv190
  %mul196 = mul nuw nsw i32 %add195, 1228
  %add197 = add nuw nsw i32 %mul196, %mul186
  %add.ptr201 = getelementptr inbounds i16, ptr %src.3380, i64 %idx.neg95
  %46 = load i16, ptr %add.ptr201, align 2
  %conv202 = zext i16 %46 to i32
  %mul203 = mul nsw i32 %cond166, %srcZres
  %idx.ext204 = sext i32 %mul203 to i64
  %add.ptr205 = getelementptr inbounds i16, ptr %src.3380, i64 %idx.ext204
  %47 = load i16, ptr %add.ptr205, align 2
  %conv206 = zext i16 %47 to i32
  %add207 = add nuw nsw i32 %conv206, %conv202
  %mul208.neg = mul nsw i32 %add207, -262
  %sub209 = add nsw i32 %add197, %mul208.neg
  %add.ptr213 = getelementptr inbounds i16, ptr %src.3380, i64 %idx.neg107
  %48 = load i16, ptr %add.ptr213, align 2
  %conv214 = zext i16 %48 to i32
  %mul215 = mul nsw i32 %cond175, %srcZres
  %idx.ext216 = sext i32 %mul215 to i64
  %add.ptr217 = getelementptr inbounds i16, ptr %src.3380, i64 %idx.ext216
  %49 = load i16, ptr %add.ptr217, align 2
  %conv218 = zext i16 %49 to i32
  %add219 = add nuw nsw i32 %conv218, %conv214
  %mul220 = mul nuw nsw i32 %add219, 47
  %add221 = add nsw i32 %sub209, %mul220
  %add.ptr225 = getelementptr inbounds i16, ptr %src.3380, i64 %idx.neg119
  %50 = load i16, ptr %add.ptr225, align 2
  %conv226 = zext i16 %50 to i32
  %mul227 = mul nsw i32 %cond184, %srcZres
  %idx.ext228 = sext i32 %mul227 to i64
  %add.ptr229 = getelementptr inbounds i16, ptr %src.3380, i64 %idx.ext228
  %51 = load i16, ptr %add.ptr229, align 2
  %conv230 = zext i16 %51 to i32
  %add231 = add nuw nsw i32 %conv230, %conv226
  %mul232 = mul nuw nsw i32 %add231, 11
  %add233 = add nsw i32 %add221, %mul232
  %cmp236 = icmp slt i32 %add233, -6143
  br i1 %cmp236, label %if.end244, label %if.else239

if.else239:                                       ; preds = %for.body153
  %add234 = add nsw i32 %add233, 2048
  %div235 = sdiv i32 %add234, 4096
  %spec.select368 = tail call i32 @llvm.smin.i32(i32 %div235, i32 %pixMax)
  br label %if.end244

if.end244:                                        ; preds = %if.else239, %for.body153
  %result.2 = phi i32 [ 0, %for.body153 ], [ %spec.select368, %if.else239 ]
  %conv245 = trunc i32 %result.2 to i16
  store i16 %conv245, ptr %dst.3381, align 2
  %add.ptr247 = getelementptr inbounds i16, ptr %dst.3381, i64 %idx.ext70
  %add.ptr250 = getelementptr inbounds i16, ptr %src.3380, i64 %idx.ext73
  %add252 = add nuw nsw i32 %x.2379, 2
  %cmp151 = icmp slt i32 %add252, %sub149
  br i1 %cmp151, label %for.body153, label %for.inc254

for.inc254:                                       ; preds = %if.end244, %for.end148
  %src.3.lcssa = phi ptr [ %src.2.lcssa, %for.end148 ], [ %add.ptr250, %if.end244 ]
  %dst.3.lcssa = phi ptr [ %dst.2.lcssa, %for.end148 ], [ %add.ptr247, %if.end244 ]
  %inc = add nuw nsw i32 %y.0385, 1
  %exitcond.not = icmp eq i32 %inc, %yres
  br i1 %exitcond.not, label %for.end255, label %for.cond1.preheader

for.end255:                                       ; preds = %for.inc254, %entry
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @vertical_half_1chan(ptr nocapture noundef readonly %srcPtr, i32 noundef %xres, i32 noundef %srcYres, i32 noundef %srcZres, ptr nocapture noundef writeonly %dstPtr, i32 noundef %dstZres, i32 noundef %pixMax) local_unnamed_addr #3 {
entry:
  %mul = mul i32 %srcZres, %xres
  %cmp18496 = icmp sgt i32 %xres, 0
  %idx.ext92 = sext i32 %mul to i64
  %mul26 = shl nsw i32 %mul, 1
  %idx.ext27 = sext i32 %mul26 to i64
  %mul38 = mul nsw i32 %mul, 3
  %idx.ext39 = sext i32 %mul38 to i64
  %mul49 = shl nsw i32 %mul, 2
  %idx.ext50 = sext i32 %mul49 to i64
  %mul61 = mul nsw i32 %mul, 5
  %idx.ext62 = sext i32 %mul61 to i64
  %mul73 = mul nsw i32 %mul, 6
  %idx.ext74 = sext i32 %mul73 to i64
  %idx.ext88 = sext i32 %dstZres to i64
  %idx.ext90 = sext i32 %srcZres to i64
  br i1 %cmp18496, label %for.body19.us, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %0 = mul nsw i64 %idx.ext92, 6
  %scevgep = getelementptr i8, ptr %srcPtr, i64 %0
  br label %for.end96

for.body19.us:                                    ; preds = %entry, %if.end86.us
  %dst.1499.us = phi ptr [ %add.ptr89.us, %if.end86.us ], [ %dstPtr, %entry ]
  %src.1498.us = phi ptr [ %add.ptr91.us, %if.end86.us ], [ %srcPtr, %entry ]
  %x.0497.us = phi i32 [ %inc.us, %if.end86.us ], [ 0, %entry ]
  %1 = load i16, ptr %src.1498.us, align 2
  %conv.us = zext i16 %1 to i32
  %add.ptr.us = getelementptr inbounds i16, ptr %src.1498.us, i64 %idx.ext92
  %2 = load i16, ptr %add.ptr.us, align 2
  %conv20.us = zext i16 %2 to i32
  %add.us = add nuw nsw i32 %conv20.us, %conv.us
  %mul21.us = mul nuw nsw i32 %add.us, 225
  %add.ptr28.us = getelementptr inbounds i16, ptr %src.1498.us, i64 %idx.ext27
  %3 = load i16, ptr %add.ptr28.us, align 2
  %conv29.us = zext i16 %3 to i32
  %add30.us = add nuw nsw i32 %conv29.us, %conv.us
  %mul31.us = mul nuw nsw i32 %add30.us, 69
  %add32.us = add nuw nsw i32 %mul31.us, %mul21.us
  %add.ptr40.us = getelementptr inbounds i16, ptr %src.1498.us, i64 %idx.ext39
  %4 = load i16, ptr %add.ptr40.us, align 2
  %conv41.us = zext i16 %4 to i32
  %add42.us = add nuw nsw i32 %conv41.us, %conv.us
  %mul43.neg.us = mul nsw i32 %add42.us, -30
  %sub.us = add nsw i32 %add32.us, %mul43.neg.us
  %add.ptr51.us = getelementptr inbounds i16, ptr %src.1498.us, i64 %idx.ext50
  %5 = load i16, ptr %add.ptr51.us, align 2
  %conv52.us = zext i16 %5 to i32
  %add53.us = add nuw nsw i32 %conv52.us, %conv.us
  %6 = shl nuw nsw i32 %add53.us, 4
  %sub55.us = sub nsw i32 %sub.us, %6
  %add.ptr63.us = getelementptr inbounds i16, ptr %src.1498.us, i64 %idx.ext62
  %7 = load i16, ptr %add.ptr63.us, align 2
  %conv64.us = zext i16 %7 to i32
  %add65.us = add nuw nsw i32 %conv64.us, %conv.us
  %mul66.us = mul nuw nsw i32 %add65.us, 6
  %add67.us = add nsw i32 %sub55.us, %mul66.us
  %add.ptr75.us = getelementptr inbounds i16, ptr %src.1498.us, i64 %idx.ext74
  %8 = load i16, ptr %add.ptr75.us, align 2
  %conv76.us = zext i16 %8 to i32
  %add77.us = add nuw nsw i32 %conv76.us, %conv.us
  %mul78.us = shl nuw nsw i32 %add77.us, 1
  %add79.us = add nsw i32 %add67.us, %mul78.us
  %cmp81.us = icmp slt i32 %add79.us, -767
  br i1 %cmp81.us, label %if.end86.us, label %if.else.us

if.else.us:                                       ; preds = %for.body19.us
  %add80.us = add nsw i32 %add79.us, 256
  %div.us = sdiv i32 %add80.us, 512
  %spec.select.us = tail call i32 @llvm.smin.i32(i32 %div.us, i32 %pixMax)
  br label %if.end86.us

if.end86.us:                                      ; preds = %if.else.us, %for.body19.us
  %result.0.us = phi i32 [ 0, %for.body19.us ], [ %spec.select.us, %if.else.us ]
  %conv87.us = trunc i32 %result.0.us to i16
  store i16 %conv87.us, ptr %dst.1499.us, align 2
  %add.ptr89.us = getelementptr inbounds i16, ptr %dst.1499.us, i64 %idx.ext88
  %add.ptr91.us = getelementptr inbounds i16, ptr %src.1498.us, i64 %idx.ext90
  %inc.us = add nuw nsw i32 %x.0497.us, 1
  %exitcond.not = icmp eq i32 %inc.us, %xres
  br i1 %exitcond.not, label %for.cond17.for.end_crit_edge.us, label %for.body19.us

for.cond17.for.end_crit_edge.us:                  ; preds = %if.end86.us
  %add.ptr93.us = getelementptr inbounds i16, ptr %add.ptr91.us, i64 %idx.ext92
  %idx.neg.us.1 = sub nsw i64 0, %idx.ext92
  %mul33.us.1 = shl nsw i32 %mul, 1
  %idx.ext34.us.1 = sext i32 %mul33.us.1 to i64
  %idx.neg35.us.1 = sub nsw i64 0, %idx.ext34.us.1
  %add.ptr59.us.1.idx = mul nsw i64 %idx.ext92, -4
  br label %for.body19.us.1

for.body19.us.1:                                  ; preds = %if.end86.us.1, %for.cond17.for.end_crit_edge.us
  %dst.1499.us.1 = phi ptr [ %add.ptr89.us, %for.cond17.for.end_crit_edge.us ], [ %add.ptr89.us.1, %if.end86.us.1 ]
  %src.1498.us.1 = phi ptr [ %add.ptr93.us, %for.cond17.for.end_crit_edge.us ], [ %add.ptr91.us.1, %if.end86.us.1 ]
  %x.0497.us.1 = phi i32 [ 0, %for.cond17.for.end_crit_edge.us ], [ %inc.us.1, %if.end86.us.1 ]
  %9 = load i16, ptr %src.1498.us.1, align 2
  %conv.us.1 = zext i16 %9 to i32
  %add.ptr.us.1 = getelementptr inbounds i16, ptr %src.1498.us.1, i64 %idx.ext92
  %10 = load i16, ptr %add.ptr.us.1, align 2
  %conv20.us.1 = zext i16 %10 to i32
  %add.us.1 = add nuw nsw i32 %conv20.us.1, %conv.us.1
  %mul21.us.1 = mul nuw nsw i32 %add.us.1, 225
  %add.ptr24.us.1 = getelementptr inbounds i16, ptr %src.1498.us.1, i64 %idx.neg.us.1
  %11 = load i16, ptr %add.ptr24.us.1, align 2
  %conv25.us.1 = zext i16 %11 to i32
  %add.ptr28.us.1 = getelementptr inbounds i16, ptr %src.1498.us.1, i64 %idx.ext27
  %12 = load i16, ptr %add.ptr28.us.1, align 2
  %conv29.us.1 = zext i16 %12 to i32
  %add30.us.1 = add nuw nsw i32 %conv29.us.1, %conv25.us.1
  %mul31.us.1 = mul nuw nsw i32 %add30.us.1, 69
  %add32.us.1 = add nuw nsw i32 %mul31.us.1, %mul21.us.1
  %add.ptr36.us.1 = getelementptr inbounds i16, ptr %src.1498.us.1, i64 %idx.neg35.us.1
  %13 = load i16, ptr %add.ptr36.us.1, align 2
  %conv37.us.1 = zext i16 %13 to i32
  %add.ptr40.us.1 = getelementptr inbounds i16, ptr %src.1498.us.1, i64 %idx.ext39
  %14 = load i16, ptr %add.ptr40.us.1, align 2
  %conv41.us.1 = zext i16 %14 to i32
  %add42.us.1 = add nuw nsw i32 %conv41.us.1, %conv37.us.1
  %mul43.neg.us.1 = mul nsw i32 %add42.us.1, -30
  %sub.us.1 = add nsw i32 %add32.us.1, %mul43.neg.us.1
  %add.ptr51.us.1 = getelementptr inbounds i16, ptr %src.1498.us.1, i64 %idx.ext50
  %15 = load i16, ptr %add.ptr51.us.1, align 2
  %conv52.us.1 = zext i16 %15 to i32
  %add53.us.1 = add nuw nsw i32 %conv52.us.1, %conv37.us.1
  %16 = shl nuw nsw i32 %add53.us.1, 4
  %sub55.us.1 = sub nsw i32 %sub.us.1, %16
  %add.ptr59.us.1 = getelementptr inbounds i8, ptr %src.1498.us.1, i64 %add.ptr59.us.1.idx
  %17 = load i16, ptr %add.ptr59.us.1, align 2
  %conv60.us.1 = zext i16 %17 to i32
  %add.ptr63.us.1 = getelementptr inbounds i16, ptr %src.1498.us.1, i64 %idx.ext62
  %18 = load i16, ptr %add.ptr63.us.1, align 2
  %conv64.us.1 = zext i16 %18 to i32
  %add65.us.1 = add nuw nsw i32 %conv64.us.1, %conv60.us.1
  %mul66.us.1 = mul nuw nsw i32 %add65.us.1, 6
  %add67.us.1 = add nsw i32 %sub55.us.1, %mul66.us.1
  %add.ptr75.us.1 = getelementptr inbounds i16, ptr %src.1498.us.1, i64 %idx.ext74
  %19 = load i16, ptr %add.ptr75.us.1, align 2
  %conv76.us.1 = zext i16 %19 to i32
  %add77.us.1 = add nuw nsw i32 %conv76.us.1, %conv60.us.1
  %mul78.us.1 = shl nuw nsw i32 %add77.us.1, 1
  %add79.us.1 = add nsw i32 %add67.us.1, %mul78.us.1
  %cmp81.us.1 = icmp slt i32 %add79.us.1, -767
  br i1 %cmp81.us.1, label %if.end86.us.1, label %if.else.us.1

if.else.us.1:                                     ; preds = %for.body19.us.1
  %add80.us.1 = add nsw i32 %add79.us.1, 256
  %div.us.1 = sdiv i32 %add80.us.1, 512
  %spec.select.us.1 = tail call i32 @llvm.smin.i32(i32 %div.us.1, i32 %pixMax)
  br label %if.end86.us.1

if.end86.us.1:                                    ; preds = %if.else.us.1, %for.body19.us.1
  %result.0.us.1 = phi i32 [ 0, %for.body19.us.1 ], [ %spec.select.us.1, %if.else.us.1 ]
  %conv87.us.1 = trunc i32 %result.0.us.1 to i16
  store i16 %conv87.us.1, ptr %dst.1499.us.1, align 2
  %add.ptr89.us.1 = getelementptr inbounds i16, ptr %dst.1499.us.1, i64 %idx.ext88
  %add.ptr91.us.1 = getelementptr inbounds i16, ptr %src.1498.us.1, i64 %idx.ext90
  %inc.us.1 = add nuw nsw i32 %x.0497.us.1, 1
  %exitcond.1.not = icmp eq i32 %inc.us.1, %xres
  br i1 %exitcond.1.not, label %for.cond17.for.end_crit_edge.us.1, label %for.body19.us.1

for.cond17.for.end_crit_edge.us.1:                ; preds = %if.end86.us.1
  %add.ptr93.us.1 = getelementptr inbounds i16, ptr %add.ptr91.us.1, i64 %idx.ext92
  %idx.neg46.us.2 = sub nsw i64 0, %idx.ext39
  %add.ptr59.us.2.idx = mul nsw i64 %idx.ext92, -8
  br label %for.body19.us.2

for.body19.us.2:                                  ; preds = %if.end86.us.2, %for.cond17.for.end_crit_edge.us.1
  %dst.1499.us.2 = phi ptr [ %add.ptr89.us.1, %for.cond17.for.end_crit_edge.us.1 ], [ %add.ptr89.us.2, %if.end86.us.2 ]
  %src.1498.us.2 = phi ptr [ %add.ptr93.us.1, %for.cond17.for.end_crit_edge.us.1 ], [ %add.ptr91.us.2, %if.end86.us.2 ]
  %x.0497.us.2 = phi i32 [ 0, %for.cond17.for.end_crit_edge.us.1 ], [ %inc.us.2, %if.end86.us.2 ]
  %20 = load i16, ptr %src.1498.us.2, align 2
  %conv.us.2 = zext i16 %20 to i32
  %add.ptr.us.2 = getelementptr inbounds i16, ptr %src.1498.us.2, i64 %idx.ext92
  %21 = load i16, ptr %add.ptr.us.2, align 2
  %conv20.us.2 = zext i16 %21 to i32
  %add.us.2 = add nuw nsw i32 %conv20.us.2, %conv.us.2
  %mul21.us.2 = mul nuw nsw i32 %add.us.2, 225
  %add.ptr24.us.2 = getelementptr inbounds i16, ptr %src.1498.us.2, i64 %idx.neg.us.1
  %22 = load i16, ptr %add.ptr24.us.2, align 2
  %conv25.us.2 = zext i16 %22 to i32
  %add.ptr28.us.2 = getelementptr inbounds i16, ptr %src.1498.us.2, i64 %idx.ext27
  %23 = load i16, ptr %add.ptr28.us.2, align 2
  %conv29.us.2 = zext i16 %23 to i32
  %add30.us.2 = add nuw nsw i32 %conv29.us.2, %conv25.us.2
  %mul31.us.2 = mul nuw nsw i32 %add30.us.2, 69
  %add32.us.2 = add nuw nsw i32 %mul31.us.2, %mul21.us.2
  %add.ptr36.us.2 = getelementptr inbounds i16, ptr %src.1498.us.2, i64 %idx.neg35.us.1
  %24 = load i16, ptr %add.ptr36.us.2, align 2
  %conv37.us.2 = zext i16 %24 to i32
  %add.ptr40.us.2 = getelementptr inbounds i16, ptr %src.1498.us.2, i64 %idx.ext39
  %25 = load i16, ptr %add.ptr40.us.2, align 2
  %conv41.us.2 = zext i16 %25 to i32
  %add42.us.2 = add nuw nsw i32 %conv41.us.2, %conv37.us.2
  %mul43.neg.us.2 = mul nsw i32 %add42.us.2, -30
  %sub.us.2 = add nsw i32 %add32.us.2, %mul43.neg.us.2
  %add.ptr47.us.2 = getelementptr inbounds i16, ptr %src.1498.us.2, i64 %idx.neg46.us.2
  %26 = load i16, ptr %add.ptr47.us.2, align 2
  %conv48.us.2 = zext i16 %26 to i32
  %add.ptr51.us.2 = getelementptr inbounds i16, ptr %src.1498.us.2, i64 %idx.ext50
  %27 = load i16, ptr %add.ptr51.us.2, align 2
  %conv52.us.2 = zext i16 %27 to i32
  %add53.us.2 = add nuw nsw i32 %conv52.us.2, %conv48.us.2
  %28 = shl nuw nsw i32 %add53.us.2, 4
  %sub55.us.2 = sub nsw i32 %sub.us.2, %28
  %add.ptr59.us.2 = getelementptr inbounds i8, ptr %src.1498.us.2, i64 %add.ptr59.us.2.idx
  %29 = load i16, ptr %add.ptr59.us.2, align 2
  %conv60.us.2 = zext i16 %29 to i32
  %add.ptr63.us.2 = getelementptr inbounds i16, ptr %src.1498.us.2, i64 %idx.ext62
  %30 = load i16, ptr %add.ptr63.us.2, align 2
  %conv64.us.2 = zext i16 %30 to i32
  %add65.us.2 = add nuw nsw i32 %conv64.us.2, %conv60.us.2
  %mul66.us.2 = mul nuw nsw i32 %add65.us.2, 6
  %add67.us.2 = add nsw i32 %sub55.us.2, %mul66.us.2
  %add.ptr75.us.2 = getelementptr inbounds i16, ptr %src.1498.us.2, i64 %idx.ext74
  %31 = load i16, ptr %add.ptr75.us.2, align 2
  %conv76.us.2 = zext i16 %31 to i32
  %add77.us.2 = add nuw nsw i32 %conv76.us.2, %conv60.us.2
  %mul78.us.2 = shl nuw nsw i32 %add77.us.2, 1
  %add79.us.2 = add nsw i32 %add67.us.2, %mul78.us.2
  %cmp81.us.2 = icmp slt i32 %add79.us.2, -767
  br i1 %cmp81.us.2, label %if.end86.us.2, label %if.else.us.2

if.else.us.2:                                     ; preds = %for.body19.us.2
  %add80.us.2 = add nsw i32 %add79.us.2, 256
  %div.us.2 = sdiv i32 %add80.us.2, 512
  %spec.select.us.2 = tail call i32 @llvm.smin.i32(i32 %div.us.2, i32 %pixMax)
  br label %if.end86.us.2

if.end86.us.2:                                    ; preds = %if.else.us.2, %for.body19.us.2
  %result.0.us.2 = phi i32 [ 0, %for.body19.us.2 ], [ %spec.select.us.2, %if.else.us.2 ]
  %conv87.us.2 = trunc i32 %result.0.us.2 to i16
  store i16 %conv87.us.2, ptr %dst.1499.us.2, align 2
  %add.ptr89.us.2 = getelementptr inbounds i16, ptr %dst.1499.us.2, i64 %idx.ext88
  %add.ptr91.us.2 = getelementptr inbounds i16, ptr %src.1498.us.2, i64 %idx.ext90
  %inc.us.2 = add nuw nsw i32 %x.0497.us.2, 1
  %exitcond.2.not = icmp eq i32 %inc.us.2, %xres
  br i1 %exitcond.2.not, label %for.cond17.for.end_crit_edge.us.2, label %for.body19.us.2

for.cond17.for.end_crit_edge.us.2:                ; preds = %if.end86.us.2
  %add.ptr93.us.2 = getelementptr inbounds i16, ptr %add.ptr91.us.2, i64 %idx.ext92
  br label %for.end96

for.end96:                                        ; preds = %for.body.preheader, %for.cond17.for.end_crit_edge.us.2
  %.us-phi = phi ptr [ %add.ptr93.us.2, %for.cond17.for.end_crit_edge.us.2 ], [ %scevgep, %for.body.preheader ]
  %.us-phi504 = phi ptr [ %add.ptr89.us.2, %for.cond17.for.end_crit_edge.us.2 ], [ %dstPtr, %for.body.preheader ]
  %sub97 = add nsw i32 %srcYres, -6
  %cmp99510 = icmp sgt i32 %srcYres, 12
  br i1 %cmp99510, label %for.cond102.preheader.lr.ph, label %for.end194

for.cond102.preheader.lr.ph:                      ; preds = %for.end96
  %idx.neg113 = sub nsw i64 0, %idx.ext92
  %idx.neg125 = sub nsw i64 0, %idx.ext27
  %idx.neg137 = sub nsw i64 0, %idx.ext39
  %idx.neg149 = sub nsw i64 0, %idx.ext50
  %idx.neg161 = sub nsw i64 0, %idx.ext62
  %32 = add nsw i32 %srcYres, -13
  %33 = and i32 %32, -2
  br i1 %cmp18496, label %for.cond102.preheader.us, label %for.cond102.preheader.preheader

for.cond102.preheader.preheader:                  ; preds = %for.cond102.preheader.lr.ph
  %34 = zext nneg i32 %33 to i64
  %35 = add nuw nsw i64 %34, 2
  %36 = mul nsw i64 %35, %idx.ext92
  %37 = and i32 %32, -2
  %scevgep537 = getelementptr i8, ptr %.us-phi, i64 %36
  %38 = add nuw nsw i32 %37, 8
  br label %for.end194

for.cond102.preheader.us:                         ; preds = %for.cond102.preheader.lr.ph, %for.cond102.for.end189_crit_edge.us
  %dst.2513.us = phi ptr [ %add.ptr184.us, %for.cond102.for.end189_crit_edge.us ], [ %.us-phi504, %for.cond102.preheader.lr.ph ]
  %src.2512.us = phi ptr [ %add.ptr191.us, %for.cond102.for.end189_crit_edge.us ], [ %.us-phi, %for.cond102.preheader.lr.ph ]
  %y.1511.us = phi i32 [ %add193.us, %for.cond102.for.end189_crit_edge.us ], [ 6, %for.cond102.preheader.lr.ph ]
  br label %for.body105.us

for.body105.us:                                   ; preds = %for.cond102.preheader.us, %if.end181.us
  %dst.3508.us = phi ptr [ %dst.2513.us, %for.cond102.preheader.us ], [ %add.ptr184.us, %if.end181.us ]
  %src.3507.us = phi ptr [ %src.2512.us, %for.cond102.preheader.us ], [ %add.ptr186.us, %if.end181.us ]
  %x.1506.us = phi i32 [ 0, %for.cond102.preheader.us ], [ %inc188.us, %if.end181.us ]
  %39 = load i16, ptr %src.3507.us, align 2
  %conv106.us = zext i16 %39 to i32
  %add.ptr108.us = getelementptr inbounds i16, ptr %src.3507.us, i64 %idx.ext92
  %40 = load i16, ptr %add.ptr108.us, align 2
  %conv109.us = zext i16 %40 to i32
  %add110.us = add nuw nsw i32 %conv109.us, %conv106.us
  %mul111.us = mul nuw nsw i32 %add110.us, 225
  %add.ptr114.us = getelementptr inbounds i16, ptr %src.3507.us, i64 %idx.neg113
  %41 = load i16, ptr %add.ptr114.us, align 2
  %conv115.us = zext i16 %41 to i32
  %add.ptr118.us = getelementptr inbounds i16, ptr %src.3507.us, i64 %idx.ext27
  %42 = load i16, ptr %add.ptr118.us, align 2
  %conv119.us = zext i16 %42 to i32
  %add120.us = add nuw nsw i32 %conv119.us, %conv115.us
  %mul121.us = mul nuw nsw i32 %add120.us, 69
  %add122.us = add nuw nsw i32 %mul121.us, %mul111.us
  %add.ptr126.us = getelementptr inbounds i16, ptr %src.3507.us, i64 %idx.neg125
  %43 = load i16, ptr %add.ptr126.us, align 2
  %conv127.us = zext i16 %43 to i32
  %add.ptr130.us = getelementptr inbounds i16, ptr %src.3507.us, i64 %idx.ext39
  %44 = load i16, ptr %add.ptr130.us, align 2
  %conv131.us = zext i16 %44 to i32
  %add132.us = add nuw nsw i32 %conv131.us, %conv127.us
  %mul133.neg.us = mul nsw i32 %add132.us, -30
  %sub134.us = add nsw i32 %add122.us, %mul133.neg.us
  %add.ptr138.us = getelementptr inbounds i16, ptr %src.3507.us, i64 %idx.neg137
  %45 = load i16, ptr %add.ptr138.us, align 2
  %conv139.us = zext i16 %45 to i32
  %add.ptr142.us = getelementptr inbounds i16, ptr %src.3507.us, i64 %idx.ext50
  %46 = load i16, ptr %add.ptr142.us, align 2
  %conv143.us = zext i16 %46 to i32
  %add144.us = add nuw nsw i32 %conv143.us, %conv139.us
  %47 = shl nuw nsw i32 %add144.us, 4
  %sub146.us = sub nsw i32 %sub134.us, %47
  %add.ptr150.us = getelementptr inbounds i16, ptr %src.3507.us, i64 %idx.neg149
  %48 = load i16, ptr %add.ptr150.us, align 2
  %conv151.us = zext i16 %48 to i32
  %add.ptr154.us = getelementptr inbounds i16, ptr %src.3507.us, i64 %idx.ext62
  %49 = load i16, ptr %add.ptr154.us, align 2
  %conv155.us = zext i16 %49 to i32
  %add156.us = add nuw nsw i32 %conv155.us, %conv151.us
  %mul157.us = mul nuw nsw i32 %add156.us, 6
  %add158.us = add nsw i32 %sub146.us, %mul157.us
  %add.ptr162.us = getelementptr inbounds i16, ptr %src.3507.us, i64 %idx.neg161
  %50 = load i16, ptr %add.ptr162.us, align 2
  %conv163.us = zext i16 %50 to i32
  %add.ptr166.us = getelementptr inbounds i16, ptr %src.3507.us, i64 %idx.ext74
  %51 = load i16, ptr %add.ptr166.us, align 2
  %conv167.us = zext i16 %51 to i32
  %add168.us = add nuw nsw i32 %conv167.us, %conv163.us
  %mul169.us = shl nuw nsw i32 %add168.us, 1
  %add170.us = add nsw i32 %add158.us, %mul169.us
  %cmp173.us = icmp slt i32 %add170.us, -767
  br i1 %cmp173.us, label %if.end181.us, label %if.else176.us

if.else176.us:                                    ; preds = %for.body105.us
  %add171.us = add nsw i32 %add170.us, 256
  %div172.us = sdiv i32 %add171.us, 512
  %spec.select494.us = tail call i32 @llvm.smin.i32(i32 %div172.us, i32 %pixMax)
  br label %if.end181.us

if.end181.us:                                     ; preds = %if.else176.us, %for.body105.us
  %result.1.us = phi i32 [ 0, %for.body105.us ], [ %spec.select494.us, %if.else176.us ]
  %conv182.us = trunc i32 %result.1.us to i16
  store i16 %conv182.us, ptr %dst.3508.us, align 2
  %add.ptr184.us = getelementptr inbounds i16, ptr %dst.3508.us, i64 %idx.ext88
  %add.ptr186.us = getelementptr inbounds i16, ptr %src.3507.us, i64 %idx.ext90
  %inc188.us = add nuw nsw i32 %x.1506.us, 1
  %exitcond538.not = icmp eq i32 %inc188.us, %xres
  br i1 %exitcond538.not, label %for.cond102.for.end189_crit_edge.us, label %for.body105.us

for.cond102.for.end189_crit_edge.us:              ; preds = %if.end181.us
  %add.ptr191.us = getelementptr inbounds i16, ptr %add.ptr186.us, i64 %idx.ext92
  %add193.us = add nuw nsw i32 %y.1511.us, 2
  %cmp99.us = icmp slt i32 %add193.us, %sub97
  br i1 %cmp99.us, label %for.cond102.preheader.us, label %for.end194.loopexit

for.end194.loopexit:                              ; preds = %for.cond102.for.end189_crit_edge.us
  %52 = add i32 %33, 8
  br label %for.end194

for.end194:                                       ; preds = %for.cond102.preheader.preheader, %for.end194.loopexit, %for.end96
  %y.1.lcssa = phi i32 [ 6, %for.end96 ], [ %52, %for.end194.loopexit ], [ %38, %for.cond102.preheader.preheader ]
  %src.2.lcssa = phi ptr [ %.us-phi, %for.end96 ], [ %add.ptr191.us, %for.end194.loopexit ], [ %scevgep537, %for.cond102.preheader.preheader ]
  %dst.2.lcssa = phi ptr [ %.us-phi504, %for.end96 ], [ %add.ptr184.us, %for.end194.loopexit ], [ %.us-phi504, %for.cond102.preheader.preheader ]
  %sub195 = and i32 %srcYres, -2
  %cmp197526 = icmp slt i32 %y.1.lcssa, %sub195
  br i1 %cmp197526, label %for.body199.lr.ph, label %for.end342

for.body199.lr.ph:                                ; preds = %for.end194
  %sub200 = add nsw i32 %srcYres, -1
  %sub204 = add nsw i32 %srcYres, -2
  %sub213 = add nsw i32 %srcYres, -3
  %sub222 = add nsw i32 %srcYres, -4
  %sub231 = add nsw i32 %srcYres, -5
  %idx.neg261 = sub nsw i64 0, %idx.ext92
  %idx.neg273 = sub nsw i64 0, %idx.ext27
  %idx.neg285 = sub nsw i64 0, %idx.ext39
  %idx.neg297 = sub nsw i64 0, %idx.ext50
  %idx.neg309 = sub nsw i64 0, %idx.ext62
  br i1 %cmp18496, label %for.body199.us, label %for.end342

for.body199.us:                                   ; preds = %for.body199.lr.ph, %for.cond249.for.end337_crit_edge.us
  %dst.4529.us = phi ptr [ %add.ptr332.us, %for.cond249.for.end337_crit_edge.us ], [ %dst.2.lcssa, %for.body199.lr.ph ]
  %src.4528.us = phi ptr [ %add.ptr339.us, %for.cond249.for.end337_crit_edge.us ], [ %src.2.lcssa, %for.body199.lr.ph ]
  %y.2527.us = phi i32 [ %add341.us, %for.cond249.for.end337_crit_edge.us ], [ %y.1.lcssa, %for.body199.lr.ph ]
  %cmp201.us = icmp slt i32 %y.2527.us, %sub200
  %cmp205.us = icmp slt i32 %y.2527.us, %sub204
  %sub210.us = sub nsw i32 %sub200, %y.2527.us
  %cond212.us = select i1 %cmp205.us, i32 2, i32 %sub210.us
  %cmp214.us = icmp slt i32 %y.2527.us, %sub213
  %cond221.us = select i1 %cmp214.us, i32 3, i32 %sub210.us
  %cmp223.us = icmp slt i32 %y.2527.us, %sub222
  %cond230.us = select i1 %cmp223.us, i32 4, i32 %sub210.us
  %cmp232.us = icmp slt i32 %y.2527.us, %sub231
  %cond239.us = select i1 %cmp232.us, i32 5, i32 %sub210.us
  %cmp241.us = icmp slt i32 %y.2527.us, %sub97
  %cond248.us = select i1 %cmp241.us, i32 6, i32 %sub210.us
  %mul254.us = select i1 %cmp201.us, i32 %mul, i32 0
  %idx.ext255.us = sext i32 %mul254.us to i64
  %mul264.us = mul nsw i32 %cond212.us, %mul
  %idx.ext265.us = sext i32 %mul264.us to i64
  %mul276.us = mul nsw i32 %cond221.us, %mul
  %idx.ext277.us = sext i32 %mul276.us to i64
  %mul288.us = mul nsw i32 %cond230.us, %mul
  %idx.ext289.us = sext i32 %mul288.us to i64
  %mul300.us = mul nsw i32 %cond239.us, %mul
  %idx.ext301.us = sext i32 %mul300.us to i64
  %mul312.us = mul nsw i32 %cond248.us, %mul
  %idx.ext313.us = sext i32 %mul312.us to i64
  br label %for.body252.us

for.body252.us:                                   ; preds = %for.body199.us, %if.end329.us
  %dst.5524.us = phi ptr [ %dst.4529.us, %for.body199.us ], [ %add.ptr332.us, %if.end329.us ]
  %src.5523.us = phi ptr [ %src.4528.us, %for.body199.us ], [ %add.ptr334.us, %if.end329.us ]
  %x.2522.us = phi i32 [ 0, %for.body199.us ], [ %inc336.us, %if.end329.us ]
  %53 = load i16, ptr %src.5523.us, align 2
  %conv253.us = zext i16 %53 to i32
  %add.ptr256.us = getelementptr inbounds i16, ptr %src.5523.us, i64 %idx.ext255.us
  %54 = load i16, ptr %add.ptr256.us, align 2
  %conv257.us = zext i16 %54 to i32
  %add258.us = add nuw nsw i32 %conv257.us, %conv253.us
  %mul259.us = mul nuw nsw i32 %add258.us, 225
  %add.ptr262.us = getelementptr inbounds i16, ptr %src.5523.us, i64 %idx.neg261
  %55 = load i16, ptr %add.ptr262.us, align 2
  %conv263.us = zext i16 %55 to i32
  %add.ptr266.us = getelementptr inbounds i16, ptr %src.5523.us, i64 %idx.ext265.us
  %56 = load i16, ptr %add.ptr266.us, align 2
  %conv267.us = zext i16 %56 to i32
  %add268.us = add nuw nsw i32 %conv267.us, %conv263.us
  %mul269.us = mul nuw nsw i32 %add268.us, 69
  %add270.us = add nuw nsw i32 %mul269.us, %mul259.us
  %add.ptr274.us = getelementptr inbounds i16, ptr %src.5523.us, i64 %idx.neg273
  %57 = load i16, ptr %add.ptr274.us, align 2
  %conv275.us = zext i16 %57 to i32
  %add.ptr278.us = getelementptr inbounds i16, ptr %src.5523.us, i64 %idx.ext277.us
  %58 = load i16, ptr %add.ptr278.us, align 2
  %conv279.us = zext i16 %58 to i32
  %add280.us = add nuw nsw i32 %conv279.us, %conv275.us
  %mul281.neg.us = mul nsw i32 %add280.us, -30
  %sub282.us = add nsw i32 %add270.us, %mul281.neg.us
  %add.ptr286.us = getelementptr inbounds i16, ptr %src.5523.us, i64 %idx.neg285
  %59 = load i16, ptr %add.ptr286.us, align 2
  %conv287.us = zext i16 %59 to i32
  %add.ptr290.us = getelementptr inbounds i16, ptr %src.5523.us, i64 %idx.ext289.us
  %60 = load i16, ptr %add.ptr290.us, align 2
  %conv291.us = zext i16 %60 to i32
  %add292.us = add nuw nsw i32 %conv291.us, %conv287.us
  %61 = shl nuw nsw i32 %add292.us, 4
  %sub294.us = sub nsw i32 %sub282.us, %61
  %add.ptr298.us = getelementptr inbounds i16, ptr %src.5523.us, i64 %idx.neg297
  %62 = load i16, ptr %add.ptr298.us, align 2
  %conv299.us = zext i16 %62 to i32
  %add.ptr302.us = getelementptr inbounds i16, ptr %src.5523.us, i64 %idx.ext301.us
  %63 = load i16, ptr %add.ptr302.us, align 2
  %conv303.us = zext i16 %63 to i32
  %add304.us = add nuw nsw i32 %conv303.us, %conv299.us
  %mul305.us = mul nuw nsw i32 %add304.us, 6
  %add306.us = add nsw i32 %sub294.us, %mul305.us
  %add.ptr310.us = getelementptr inbounds i16, ptr %src.5523.us, i64 %idx.neg309
  %64 = load i16, ptr %add.ptr310.us, align 2
  %conv311.us = zext i16 %64 to i32
  %add.ptr314.us = getelementptr inbounds i16, ptr %src.5523.us, i64 %idx.ext313.us
  %65 = load i16, ptr %add.ptr314.us, align 2
  %conv315.us = zext i16 %65 to i32
  %add316.us = add nuw nsw i32 %conv315.us, %conv311.us
  %mul317.us = shl nuw nsw i32 %add316.us, 1
  %add318.us = add nsw i32 %add306.us, %mul317.us
  %cmp321.us = icmp slt i32 %add318.us, -767
  br i1 %cmp321.us, label %if.end329.us, label %if.else324.us

if.else324.us:                                    ; preds = %for.body252.us
  %add319.us = add nsw i32 %add318.us, 256
  %div320.us = sdiv i32 %add319.us, 512
  %spec.select495.us = tail call i32 @llvm.smin.i32(i32 %div320.us, i32 %pixMax)
  br label %if.end329.us

if.end329.us:                                     ; preds = %if.else324.us, %for.body252.us
  %result.2.us = phi i32 [ 0, %for.body252.us ], [ %spec.select495.us, %if.else324.us ]
  %conv330.us = trunc i32 %result.2.us to i16
  store i16 %conv330.us, ptr %dst.5524.us, align 2
  %add.ptr332.us = getelementptr inbounds i16, ptr %dst.5524.us, i64 %idx.ext88
  %add.ptr334.us = getelementptr inbounds i16, ptr %src.5523.us, i64 %idx.ext90
  %inc336.us = add nuw nsw i32 %x.2522.us, 1
  %exitcond539.not = icmp eq i32 %inc336.us, %xres
  br i1 %exitcond539.not, label %for.cond249.for.end337_crit_edge.us, label %for.body252.us

for.cond249.for.end337_crit_edge.us:              ; preds = %if.end329.us
  %add.ptr339.us = getelementptr inbounds i16, ptr %add.ptr334.us, i64 %idx.ext92
  %add341.us = add nuw nsw i32 %y.2527.us, 2
  %cmp197.us = icmp slt i32 %add341.us, %sub195
  br i1 %cmp197.us, label %for.body199.us, label %for.end342

for.end342:                                       ; preds = %for.cond249.for.end337_crit_edge.us, %for.body199.lr.ph, %for.end194
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @ReadTIFFImage(ptr nocapture noundef readonly %p_Inp, ptr noundef %input_file, i32 noundef %FrameNoInFile, ptr nocapture noundef readonly %source, ptr nocapture noundef writeonly %buf) local_unnamed_addr #5 {
entry:
  %buf586 = ptrtoint ptr %buf to i64
  %path = alloca [255 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 255, ptr nonnull %path) #17
  %width1 = getelementptr inbounds i8, ptr %source, i64 16
  %0 = load i32, ptr %width1, align 8
  %height2 = getelementptr inbounds i8, ptr %source, i64 28
  %1 = load i32, ptr %height2, align 4
  %color_model = getelementptr inbounds i8, ptr %source, i64 4
  %2 = load i32, ptr %color_model, align 4
  %cmp = icmp eq i32 %2, 1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %is_interleaved = getelementptr inbounds i8, ptr %input_file, i64 916
  %3 = load i32, ptr %is_interleaved, align 4
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %4 = load ptr, ptr @stderr, align 8
  %5 = tail call i64 @fwrite(ptr nonnull @.str, i64 102, i64 1, ptr %4) #18
  br label %if.end173

if.end:                                           ; preds = %land.lhs.true, %entry
  %num_digits = getelementptr inbounds i8, ptr %input_file, i64 924
  %6 = load i32, ptr %num_digits, align 4
  %cmp4 = icmp sgt i32 %6, 0
  br i1 %cmp4, label %if.then5, label %if.else25

if.then5:                                         ; preds = %if.end
  %start_frame = getelementptr inbounds i8, ptr %p_Inp, i64 3992
  %7 = load i32, ptr %start_frame, align 8
  %add = add nsw i32 %7, %FrameNoInFile
  %zero_pad = getelementptr inbounds i8, ptr %input_file, i64 920
  %8 = load i32, ptr %zero_pad, align 8
  %tobool6.not = icmp eq i32 %8, 0
  %fhead13 = getelementptr inbounds i8, ptr %input_file, i64 255
  %ftail16 = getelementptr inbounds i8, ptr %input_file, i64 510
  %.str.2..str.1 = select i1 %tobool6.not, ptr @.str.2, ptr @.str.1
  %call18 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %path, i64 noundef 255, ptr noundef nonnull %.str.2..str.1, ptr noundef nonnull %fhead13, i32 noundef %6, i32 noundef %add, ptr noundef nonnull %ftail16) #17
  switch i32 %call18, label %if.end29 [
    i32 -1, label %if.then22
    i32 255, label %if.then22
  ]

if.then22:                                        ; preds = %if.then5, %if.then5
  %9 = load ptr, ptr @stderr, align 8
  %10 = tail call i64 @fwrite(ptr nonnull @.str.3, i64 39, i64 1, ptr %9) #18
  br label %cleanup

if.else25:                                        ; preds = %if.end
  %call28 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %path, ptr noundef nonnull dereferenceable(1) %input_file) #17
  br label %if.end29

if.end29:                                         ; preds = %if.then5, %if.else25
  %call.i.i = call i32 (ptr, i32, ...) @open(ptr noundef nonnull %path, i32 noundef 0) #17
  %cmp2.i.i = icmp eq i32 %call.i.i, -1
  br i1 %cmp2.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %if.end29
  %11 = load ptr, ptr @stderr, align 8
  %call4.i.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef nonnull @.str.9, ptr noundef nonnull %path) #19
  br label %Error.i

if.end.i.i:                                       ; preds = %if.end29
  %call5.i.i = call i64 @lseek(i32 noundef %call.i.i, i64 noundef 0, i32 noundef 2) #17
  %cmp6.i.i = icmp eq i64 %call5.i.i, -1
  br i1 %cmp6.i.i, label %Error.i, label %if.end9.i.i

if.end9.i.i:                                      ; preds = %if.end.i.i
  %call10.i.i = call i64 @lseek(i32 noundef %call.i.i, i64 noundef 0, i32 noundef 0) #17
  %cmp11.i.i = icmp eq i64 %call10.i.i, -1
  br i1 %cmp11.i.i, label %Error.i, label %if.end14.i.i

if.end14.i.i:                                     ; preds = %if.end9.i.i
  %12 = load ptr, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 8), align 8
  %call15.i.i = call ptr @realloc(ptr noundef %12, i64 noundef %call5.i.i) #20
  store ptr %call15.i.i, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 8), align 8
  %cmp18.i.i = icmp eq ptr %call15.i.i, null
  br i1 %cmp18.i.i, label %if.then20.i.i, label %if.end22.i.i

if.then20.i.i:                                    ; preds = %if.end14.i.i
  %call21.i.i = call i32 @close(i32 noundef %call.i.i) #17
  br label %Error.i

if.end22.i.i:                                     ; preds = %if.end14.i.i
  %call24.i.i = call i64 @read(i32 noundef %call.i.i, ptr noundef nonnull %call15.i.i, i64 noundef %call5.i.i) #17
  %cmp25.not.i.i = icmp eq i64 %call24.i.i, %call5.i.i
  %call30.i.i = call i32 @close(i32 noundef %call.i.i) #17
  br i1 %cmp25.not.i.i, label %if.end29.i.i, label %Error.i

if.end29.i.i:                                     ; preds = %if.end22.i.i
  %13 = load ptr, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 8), align 8
  %14 = load i8, ptr %13, align 1
  %conv32.i.i = zext i8 %14 to i16
  %shl.i.i = shl nuw i16 %conv32.i.i, 8
  %arrayidx34.i.i = getelementptr inbounds i8, ptr %13, i64 1
  %15 = load i8, ptr %arrayidx34.i.i, align 1
  %conv35.i.i = zext i8 %15 to i16
  %or.i.i = or disjoint i16 %shl.i.i, %conv35.i.i
  switch i16 %or.i.i, label %Error.thread.i [
    i16 18761, label %19
    i16 19789, label %if.end.i
  ]

Error.thread.i:                                   ; preds = %if.end29.i.i
  %16 = load ptr, ptr @stderr, align 8
  %17 = call i64 @fwrite(ptr nonnull @.str.10, i64 43, i64 1, ptr %16) #18
  %18 = load ptr, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 8), align 8
  call void @free(ptr noundef %18) #17
  br label %if.end16.i

19:                                               ; preds = %if.end29.i.i
  br label %if.end.i

if.end.i:                                         ; preds = %19, %if.end29.i.i
  %storemerge.i.i = phi i32 [ 1, %19 ], [ 0, %if.end29.i.i ]
  %20 = phi ptr [ @getU16, %19 ], [ @getSwappedU16, %if.end29.i.i ]
  %21 = phi ptr [ @getU32, %19 ], [ @getSwappedU32, %if.end29.i.i ]
  store i32 %storemerge.i.i, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 24), align 8
  store ptr %20, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 8728), align 8
  store ptr %21, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 8736), align 8
  store ptr %arrayidx34.i.i, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 16), align 8
  %22 = load i8, ptr %13, align 1
  %incdec.ptr2.i.i.i = getelementptr inbounds i8, ptr %13, i64 2
  store ptr %incdec.ptr2.i.i.i, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 16), align 8
  %23 = load i8, ptr %arrayidx34.i.i, align 1
  %u.sroa.4.0.insert.ext.i.i.i = zext i8 %23 to i16
  %u.sroa.4.0.insert.shift.i.i.i = shl nuw i16 %u.sroa.4.0.insert.ext.i.i.i, 8
  %u.sroa.0.0.insert.ext.i.i.i = zext i8 %22 to i16
  %u.sroa.0.0.insert.insert.i.i.i = or disjoint i16 %u.sroa.4.0.insert.shift.i.i.i, %u.sroa.0.0.insert.ext.i.i.i
  store i16 %u.sroa.0.0.insert.insert.i.i.i, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 32), align 8
  %incdec.ptr.i22.i.i = getelementptr inbounds i8, ptr %13, i64 3
  store ptr %incdec.ptr.i22.i.i, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 16), align 8
  %24 = load i8, ptr %incdec.ptr2.i.i.i, align 1
  %incdec.ptr2.i23.i.i = getelementptr inbounds i8, ptr %13, i64 4
  store ptr %incdec.ptr2.i23.i.i, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 16), align 8
  %25 = load i8, ptr %incdec.ptr.i22.i.i, align 1
  %u.sroa.4.0.insert.ext.i24.i.i = zext i8 %25 to i16
  %u.sroa.4.0.insert.shift.i25.i.i = shl nuw i16 %u.sroa.4.0.insert.ext.i24.i.i, 8
  %u.sroa.0.0.insert.ext.i26.i.i = zext i8 %24 to i16
  %u.sroa.0.0.insert.insert.i27.i.i = or disjoint i16 %u.sroa.4.0.insert.shift.i25.i.i, %u.sroa.0.0.insert.ext.i26.i.i
  store i16 %u.sroa.0.0.insert.insert.i27.i.i, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 34), align 2
  %incdec.ptr.i28.i.i = getelementptr inbounds i8, ptr %13, i64 5
  store ptr %incdec.ptr.i28.i.i, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 16), align 8
  %26 = load i8, ptr %incdec.ptr2.i23.i.i, align 1
  %incdec.ptr2.i29.i.i = getelementptr inbounds i8, ptr %13, i64 6
  store ptr %incdec.ptr2.i29.i.i, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 16), align 8
  %27 = load i8, ptr %incdec.ptr.i28.i.i, align 1
  %incdec.ptr5.i.i.i = getelementptr inbounds i8, ptr %13, i64 7
  store ptr %incdec.ptr5.i.i.i, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 16), align 8
  %28 = load i8, ptr %incdec.ptr2.i29.i.i, align 1
  %incdec.ptr8.i.i.i = getelementptr inbounds i8, ptr %13, i64 8
  store ptr %incdec.ptr8.i.i.i, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 16), align 8
  %29 = load i8, ptr %incdec.ptr5.i.i.i, align 1
  %u.sroa.6.0.insert.ext.i.i.i = zext i8 %29 to i32
  %u.sroa.6.0.insert.shift.i.i.i = shl nuw i32 %u.sroa.6.0.insert.ext.i.i.i, 24
  %u.sroa.5.0.insert.ext.i.i.i = zext i8 %28 to i32
  %u.sroa.5.0.insert.shift.i.i.i = shl nuw nsw i32 %u.sroa.5.0.insert.ext.i.i.i, 16
  %u.sroa.4.0.insert.ext.i30.i.i = zext i8 %27 to i32
  %u.sroa.4.0.insert.shift.i31.i.i = shl nuw nsw i32 %u.sroa.4.0.insert.ext.i30.i.i, 8
  %u.sroa.0.0.insert.ext.i32.i.i = zext i8 %26 to i32
  %u.sroa.5.0.insert.insert.i.i.i = or disjoint i32 %u.sroa.4.0.insert.shift.i31.i.i, %u.sroa.0.0.insert.ext.i32.i.i
  %u.sroa.4.0.insert.insert.i.i.i = or disjoint i32 %u.sroa.5.0.insert.insert.i.i.i, %u.sroa.5.0.insert.shift.i.i.i
  %u.sroa.0.0.insert.insert.i33.i.i = or disjoint i32 %u.sroa.4.0.insert.insert.i.i.i, %u.sroa.6.0.insert.shift.i.i.i
  store i32 %u.sroa.0.0.insert.insert.i33.i.i, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 36), align 4
  %cmp.not.i.i = icmp eq i16 %u.sroa.0.0.insert.insert.i27.i.i, 42
  br i1 %cmp.not.i.i, label %if.end4.i, label %readImageFileHeader.exit.i

readImageFileHeader.exit.i:                       ; preds = %if.end.i
  %30 = load ptr, ptr @stderr, align 8
  %31 = call i64 @fwrite(ptr nonnull @.str.11, i64 32, i64 1, ptr %30) #18
  br label %Error.i

if.end4.i:                                        ; preds = %if.end.i
  %idx.ext.i.i = zext i32 %u.sroa.0.0.insert.insert.i33.i.i to i64
  %add.ptr.i.i = getelementptr inbounds i8, ptr %13, i64 %idx.ext.i.i
  store ptr %add.ptr.i.i, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 16), align 8
  %call.i36.i = call i32 %20(ptr noundef nonnull @ReadTIFFImage.t) #17
  %cmp1.not.i.i = icmp eq i32 %call.i36.i, 0
  br i1 %cmp1.not.i.i, label %readImageFileDirectory.exit.i, label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end4.i, %readDirectoryEntry.exit.i.i
  %i.02.i.i = phi i32 [ %inc.i.i, %readDirectoryEntry.exit.i.i ], [ 0, %if.end4.i ]
  %32 = load ptr, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 8728), align 8
  %call.i.i.i = call i32 %32(ptr noundef nonnull @ReadTIFFImage.t) #17
  %33 = load ptr, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 8728), align 8
  %call2.i.i.i = call i32 %33(ptr noundef nonnull @ReadTIFFImage.t) #17
  %34 = load ptr, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 8736), align 8
  %call3.i.i.i = call i32 %34(ptr noundef nonnull @ReadTIFFImage.t) #17
  %35 = load ptr, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 8736), align 8
  %call5.i.i.i = call i32 %35(ptr noundef nonnull @ReadTIFFImage.t) #17
  switch i32 %call.i.i.i, label %readDirectoryEntry.exit.i.i [
    i32 256, label %sw.bb.i.i.i
    i32 257, label %sw.bb6.i.i.i
    i32 258, label %sw.bb8.i.i.i
    i32 259, label %sw.bb34.i.i.i
    i32 283, label %sw.bb56.i.i.i
    i32 273, label %sw.bb40.i.i.i
    i32 274, label %sw.bb42.i.i.i
    i32 282, label %sw.bb54.i.i.i
    i32 278, label %sw.bb51.i.i.i
    i32 279, label %sw.bb52.i.i.i
  ]

sw.bb.i.i.i:                                      ; preds = %for.body.i.i
  store i32 %call5.i.i.i, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 64), align 8
  br label %readDirectoryEntry.exit.i.i

sw.bb6.i.i.i:                                     ; preds = %for.body.i.i
  store i32 %call5.i.i.i, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 60), align 4
  %cmp.i.i.i = icmp ugt i32 %call5.i.i.i, 1080
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %readDirectoryEntry.exit.i.i

if.then.i.i.i:                                    ; preds = %sw.bb6.i.i.i
  %36 = load ptr, ptr @stderr, align 8
  %call7.i.i.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %36, ptr noundef nonnull @.str.12, i32 noundef %call5.i.i.i, i32 noundef 1080) #19
  br label %readDirectoryEntry.exit.i.i

sw.bb8.i.i.i:                                     ; preds = %for.body.i.i
  %cmp9.not.i.i.i = icmp eq i32 %call3.i.i.i, 3
  br i1 %cmp9.not.i.i.i, label %if.end12.i.i.i, label %if.then10.i.i.i

if.then10.i.i.i:                                  ; preds = %sw.bb8.i.i.i
  %37 = load ptr, ptr @stderr, align 8
  %38 = call i64 @fwrite(ptr nonnull @.str.13, i64 35, i64 1, ptr %37) #18
  br label %readDirectoryEntry.exit.i.i

if.end12.i.i.i:                                   ; preds = %sw.bb8.i.i.i
  call fastcc void @getIntArray(i32 noundef %call5.i.i.i, i32 noundef %call2.i.i.i, ptr noundef nonnull getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 44), i32 noundef 3)
  %39 = load i32, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 44), align 4
  %40 = load i32, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 48), align 8
  %cmp16.not.i.i.i = icmp eq i32 %39, %40
  %41 = load i32, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 52), align 4
  %cmp21.not.i.i.i = icmp eq i32 %39, %41
  %or.cond.i.i.i = select i1 %cmp16.not.i.i.i, i1 %cmp21.not.i.i.i, i1 false
  br i1 %or.cond.i.i.i, label %if.end24.i.i.i, label %if.then22.i.i.i

if.then22.i.i.i:                                  ; preds = %if.end12.i.i.i
  %42 = load ptr, ptr @stderr, align 8
  %43 = call i64 @fwrite(ptr nonnull @.str.14, i64 47, i64 1, ptr %42) #18
  br label %readDirectoryEntry.exit.i.i

if.end24.i.i.i:                                   ; preds = %if.end12.i.i.i
  switch i32 %39, label %if.then31.i.i.i [
    i32 8, label %readDirectoryEntry.exit.i.i
    i32 16, label %readDirectoryEntry.exit.i.i
  ]

if.then31.i.i.i:                                  ; preds = %if.end24.i.i.i
  %44 = load ptr, ptr @stderr, align 8
  %45 = call i64 @fwrite(ptr nonnull @.str.15, i64 40, i64 1, ptr %44) #18
  br label %readDirectoryEntry.exit.i.i

sw.bb34.i.i.i:                                    ; preds = %for.body.i.i
  %cmp35.not.i.i.i = icmp eq i32 %call5.i.i.i, 1
  br i1 %cmp35.not.i.i.i, label %readDirectoryEntry.exit.i.i, label %if.then36.i.i.i

if.then36.i.i.i:                                  ; preds = %sw.bb34.i.i.i
  %46 = load ptr, ptr @stderr, align 8
  %47 = call i64 @fwrite(ptr nonnull @.str.16, i64 39, i64 1, ptr %46) #18
  br label %readDirectoryEntry.exit.i.i

sw.bb40.i.i.i:                                    ; preds = %for.body.i.i
  call fastcc void @getIntArray(i32 noundef %call5.i.i.i, i32 noundef %call2.i.i.i, ptr noundef nonnull getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 4388), i32 noundef %call3.i.i.i)
  store i32 %call3.i.i.i, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 28), align 4
  br label %readDirectoryEntry.exit.i.i

sw.bb42.i.i.i:                                    ; preds = %for.body.i.i
  %conv.i.i.i = trunc i32 %call5.i.i.i to i16
  store i16 %conv.i.i.i, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 40), align 8
  %conv44.i.i.i = and i32 %call5.i.i.i, 65535
  %cmp45.not.i.i.i = icmp eq i32 %conv44.i.i.i, 1
  br i1 %cmp45.not.i.i.i, label %readDirectoryEntry.exit.i.i, label %if.then47.i.i.i

if.then47.i.i.i:                                  ; preds = %sw.bb42.i.i.i
  %48 = load ptr, ptr @stderr, align 8
  %49 = call i64 @fwrite(ptr nonnull @.str.17, i64 32, i64 1, ptr %48) #18
  br label %readDirectoryEntry.exit.i.i

sw.bb51.i.i.i:                                    ; preds = %for.body.i.i
  store i32 %call5.i.i.i, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 56), align 8
  br label %readDirectoryEntry.exit.i.i

sw.bb52.i.i.i:                                    ; preds = %for.body.i.i
  call fastcc void @getIntArray(i32 noundef %call5.i.i.i, i32 noundef %call2.i.i.i, ptr noundef nonnull getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 68), i32 noundef %call3.i.i.i)
  br label %readDirectoryEntry.exit.i.i

sw.bb54.i.i.i:                                    ; preds = %for.body.i.i
  call fastcc void @getIntArray(i32 noundef %call5.i.i.i, i32 noundef %call2.i.i.i, ptr noundef nonnull getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 8708), i32 noundef 1)
  br label %readDirectoryEntry.exit.i.i

sw.bb56.i.i.i:                                    ; preds = %for.body.i.i
  call fastcc void @getIntArray(i32 noundef %call5.i.i.i, i32 noundef %call2.i.i.i, ptr noundef nonnull getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 8716), i32 noundef 1)
  br label %readDirectoryEntry.exit.i.i

readDirectoryEntry.exit.i.i:                      ; preds = %sw.bb56.i.i.i, %sw.bb54.i.i.i, %sw.bb52.i.i.i, %sw.bb51.i.i.i, %if.then47.i.i.i, %sw.bb42.i.i.i, %sw.bb40.i.i.i, %if.then36.i.i.i, %sw.bb34.i.i.i, %if.then31.i.i.i, %if.end24.i.i.i, %if.end24.i.i.i, %if.then22.i.i.i, %if.then10.i.i.i, %if.then.i.i.i, %sw.bb6.i.i.i, %sw.bb.i.i.i, %for.body.i.i
  %inc.i.i = add nuw i32 %i.02.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %call.i36.i
  br i1 %exitcond.not.i.i, label %readImageFileDirectory.exit.i, label %for.body.i.i

readImageFileDirectory.exit.i:                    ; preds = %readDirectoryEntry.exit.i.i, %if.end4.i
  %50 = load i32, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 64), align 8
  %51 = load i32, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 60), align 4
  %mul.i.i = mul i32 %50, 6
  %mul2.i.i = mul i32 %mul.i.i, %51
  %52 = load ptr, ptr @ReadTIFFImage.t, align 8
  %conv4.i.i = zext i32 %mul2.i.i to i64
  %call.i37.i = call ptr @realloc(ptr noundef %52, i64 noundef %conv4.i.i) #20
  store ptr %call.i37.i, ptr @ReadTIFFImage.t, align 8
  %cmp.i.i = icmp eq ptr %call.i37.i, null
  br i1 %cmp.i.i, label %Error.i, label %if.end.i38.i

if.end.i38.i:                                     ; preds = %readImageFileDirectory.exit.i
  %53 = load i32, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 44), align 4
  switch i32 %53, label %if.end34 [
    i32 8, label %for.cond.preheader.i.i
    i32 16, label %sw.bb23.i.i
  ]

for.cond.preheader.i.i:                           ; preds = %if.end.i38.i
  %54 = load i32, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 28), align 4
  %cmp912.i.i = icmp sgt i32 %54, 0
  br i1 %cmp912.i.i, label %for.body.i47.i, label %if.end34

for.body.i47.i:                                   ; preds = %for.cond.preheader.i.i, %for.inc20.i.i
  %55 = phi i32 [ %88, %for.inc20.i.i ], [ %54, %for.cond.preheader.i.i ]
  %indvars.iv17.i.i = phi i64 [ %indvars.iv.next18.i.i, %for.inc20.i.i ], [ 0, %for.cond.preheader.i.i ]
  %p.014.i.i = phi ptr [ %p.1.lcssa.i.i, %for.inc20.i.i ], [ %call.i37.i, %for.cond.preheader.i.i ]
  %arrayidx11.i.i = getelementptr inbounds [1080 x i32], ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 68), i64 0, i64 %indvars.iv17.i.i
  %56 = load i32, ptr %arrayidx11.i.i, align 4
  %cmp157.i.i = icmp sgt i32 %56, 0
  br i1 %cmp157.i.i, label %for.body17.preheader.i.i, label %for.inc20.i.i

for.body17.preheader.i.i:                         ; preds = %for.body.i47.i
  %57 = load ptr, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 8), align 8
  %arrayidx13.i.i = getelementptr inbounds [1080 x i32], ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 4388), i64 0, i64 %indvars.iv17.i.i
  %58 = load i32, ptr %arrayidx13.i.i, align 4
  %idx.ext.i48.i = zext i32 %58 to i64
  %add.ptr.i49.i = getelementptr i8, ptr %57, i64 %idx.ext.i48.i
  %59 = zext nneg i32 %56 to i64
  %min.iters.check = icmp ult i32 %56, 32
  br i1 %min.iters.check, label %for.body17.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %for.body17.preheader.i.i
  %scevgep = getelementptr i8, ptr %p.014.i.i, i64 2
  %60 = add nsw i32 %56, -1
  %61 = zext i32 %60 to i64
  %62 = shl nuw nsw i64 %61, 1
  %scevgep412 = getelementptr i8, ptr %scevgep, i64 %62
  %scevgep413 = getelementptr i8, ptr %57, i64 1
  %63 = getelementptr i8, ptr %scevgep413, i64 %idx.ext.i48.i
  %scevgep414 = getelementptr i8, ptr %63, i64 %61
  %bound0 = icmp ult ptr %p.014.i.i, %scevgep414
  %bound1 = icmp ult ptr %add.ptr.i49.i, %scevgep412
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %for.body17.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %59, 2147483616
  %64 = shl nuw nsw i64 %n.vec, 1
  %ind.end = getelementptr i8, ptr %p.014.i.i, i64 %64
  %ind.end415 = getelementptr i8, ptr %add.ptr.i49.i, i64 %n.vec
  %ind.end417 = trunc nuw nsw i64 %n.vec to i32
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %offset.idx = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %p.014.i.i, i64 %offset.idx
  %next.gep422 = getelementptr i8, ptr %add.ptr.i49.i, i64 %index
  %65 = getelementptr i8, ptr %next.gep422, i64 8
  %66 = getelementptr i8, ptr %next.gep422, i64 16
  %67 = getelementptr i8, ptr %next.gep422, i64 24
  %wide.load = load <8 x i8>, ptr %next.gep422, align 1, !alias.scope !5
  %wide.load426 = load <8 x i8>, ptr %65, align 1, !alias.scope !5
  %wide.load427 = load <8 x i8>, ptr %66, align 1, !alias.scope !5
  %wide.load428 = load <8 x i8>, ptr %67, align 1, !alias.scope !5
  %68 = zext <8 x i8> %wide.load to <8 x i16>
  %69 = zext <8 x i8> %wide.load426 to <8 x i16>
  %70 = zext <8 x i8> %wide.load427 to <8 x i16>
  %71 = zext <8 x i8> %wide.load428 to <8 x i16>
  %72 = getelementptr i8, ptr %next.gep, i64 16
  %73 = getelementptr i8, ptr %next.gep, i64 32
  %74 = getelementptr i8, ptr %next.gep, i64 48
  store <8 x i16> %68, ptr %next.gep, align 2, !alias.scope !8, !noalias !5
  store <8 x i16> %69, ptr %72, align 2, !alias.scope !8, !noalias !5
  store <8 x i16> %70, ptr %73, align 2, !alias.scope !8, !noalias !5
  store <8 x i16> %71, ptr %74, align 2, !alias.scope !8, !noalias !5
  %index.next = add nuw i64 %index, 32
  %75 = icmp eq i64 %index.next, %n.vec
  br i1 %75, label %middle.block, label %vector.body, !llvm.loop !10

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %59
  br i1 %cmp.n, label %for.inc20.loopexit.i.i, label %for.body17.i.i.preheader

for.body17.i.i.preheader:                         ; preds = %middle.block, %vector.memcheck, %for.body17.preheader.i.i
  %p.110.i.i.ph = phi ptr [ %p.014.i.i, %vector.memcheck ], [ %p.014.i.i, %for.body17.preheader.i.i ], [ %ind.end, %middle.block ]
  %s.09.i.i.ph = phi ptr [ %add.ptr.i49.i, %vector.memcheck ], [ %add.ptr.i49.i, %for.body17.preheader.i.i ], [ %ind.end415, %middle.block ]
  %j.08.i.i.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %for.body17.preheader.i.i ], [ %ind.end417, %middle.block ]
  %76 = sub i32 %56, %j.08.i.i.ph
  %xtraiter634 = and i32 %76, 7
  %lcmp.mod635.not = icmp eq i32 %xtraiter634, 0
  br i1 %lcmp.mod635.not, label %for.body17.i.i.prol.loopexit, label %for.body17.i.i.prol

for.body17.i.i.prol:                              ; preds = %for.body17.i.i.preheader, %for.body17.i.i.prol
  %p.110.i.i.prol = phi ptr [ %incdec.ptr19.i.i.prol, %for.body17.i.i.prol ], [ %p.110.i.i.ph, %for.body17.i.i.preheader ]
  %s.09.i.i.prol = phi ptr [ %incdec.ptr.i.i.prol, %for.body17.i.i.prol ], [ %s.09.i.i.ph, %for.body17.i.i.preheader ]
  %j.08.i.i.prol = phi i32 [ %inc.i50.i.prol, %for.body17.i.i.prol ], [ %j.08.i.i.ph, %for.body17.i.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %for.body17.i.i.prol ], [ 0, %for.body17.i.i.preheader ]
  %incdec.ptr.i.i.prol = getelementptr inbounds i8, ptr %s.09.i.i.prol, i64 1
  %77 = load i8, ptr %s.09.i.i.prol, align 1
  %conv18.i.i.prol = zext i8 %77 to i16
  %incdec.ptr19.i.i.prol = getelementptr inbounds i8, ptr %p.110.i.i.prol, i64 2
  store i16 %conv18.i.i.prol, ptr %p.110.i.i.prol, align 2
  %inc.i50.i.prol = add nuw nsw i32 %j.08.i.i.prol, 1
  %prol.iter.next = add i32 %prol.iter, 1
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter634
  br i1 %prol.iter.cmp.not, label %for.body17.i.i.prol.loopexit, label %for.body17.i.i.prol, !llvm.loop !13

for.body17.i.i.prol.loopexit:                     ; preds = %for.body17.i.i.prol, %for.body17.i.i.preheader
  %incdec.ptr19.i.i.lcssa632.unr = phi ptr [ poison, %for.body17.i.i.preheader ], [ %incdec.ptr19.i.i.prol, %for.body17.i.i.prol ]
  %p.110.i.i.unr = phi ptr [ %p.110.i.i.ph, %for.body17.i.i.preheader ], [ %incdec.ptr19.i.i.prol, %for.body17.i.i.prol ]
  %s.09.i.i.unr = phi ptr [ %s.09.i.i.ph, %for.body17.i.i.preheader ], [ %incdec.ptr.i.i.prol, %for.body17.i.i.prol ]
  %j.08.i.i.unr = phi i32 [ %j.08.i.i.ph, %for.body17.i.i.preheader ], [ %inc.i50.i.prol, %for.body17.i.i.prol ]
  %78 = sub i32 %j.08.i.i.ph, %56
  %79 = icmp ugt i32 %78, -8
  br i1 %79, label %for.inc20.loopexit.i.i, label %for.body17.i.i

for.body17.i.i:                                   ; preds = %for.body17.i.i.prol.loopexit, %for.body17.i.i
  %p.110.i.i = phi ptr [ %incdec.ptr19.i.i.7, %for.body17.i.i ], [ %p.110.i.i.unr, %for.body17.i.i.prol.loopexit ]
  %s.09.i.i = phi ptr [ %incdec.ptr.i.i.7, %for.body17.i.i ], [ %s.09.i.i.unr, %for.body17.i.i.prol.loopexit ]
  %j.08.i.i = phi i32 [ %inc.i50.i.7, %for.body17.i.i ], [ %j.08.i.i.unr, %for.body17.i.i.prol.loopexit ]
  %incdec.ptr.i.i = getelementptr inbounds i8, ptr %s.09.i.i, i64 1
  %80 = load i8, ptr %s.09.i.i, align 1
  %conv18.i.i = zext i8 %80 to i16
  %incdec.ptr19.i.i = getelementptr inbounds i8, ptr %p.110.i.i, i64 2
  store i16 %conv18.i.i, ptr %p.110.i.i, align 2
  %incdec.ptr.i.i.1 = getelementptr inbounds i8, ptr %s.09.i.i, i64 2
  %81 = load i8, ptr %incdec.ptr.i.i, align 1
  %conv18.i.i.1 = zext i8 %81 to i16
  %incdec.ptr19.i.i.1 = getelementptr inbounds i8, ptr %p.110.i.i, i64 4
  store i16 %conv18.i.i.1, ptr %incdec.ptr19.i.i, align 2
  %incdec.ptr.i.i.2 = getelementptr inbounds i8, ptr %s.09.i.i, i64 3
  %82 = load i8, ptr %incdec.ptr.i.i.1, align 1
  %conv18.i.i.2 = zext i8 %82 to i16
  %incdec.ptr19.i.i.2 = getelementptr inbounds i8, ptr %p.110.i.i, i64 6
  store i16 %conv18.i.i.2, ptr %incdec.ptr19.i.i.1, align 2
  %incdec.ptr.i.i.3 = getelementptr inbounds i8, ptr %s.09.i.i, i64 4
  %83 = load i8, ptr %incdec.ptr.i.i.2, align 1
  %conv18.i.i.3 = zext i8 %83 to i16
  %incdec.ptr19.i.i.3 = getelementptr inbounds i8, ptr %p.110.i.i, i64 8
  store i16 %conv18.i.i.3, ptr %incdec.ptr19.i.i.2, align 2
  %incdec.ptr.i.i.4 = getelementptr inbounds i8, ptr %s.09.i.i, i64 5
  %84 = load i8, ptr %incdec.ptr.i.i.3, align 1
  %conv18.i.i.4 = zext i8 %84 to i16
  %incdec.ptr19.i.i.4 = getelementptr inbounds i8, ptr %p.110.i.i, i64 10
  store i16 %conv18.i.i.4, ptr %incdec.ptr19.i.i.3, align 2
  %incdec.ptr.i.i.5 = getelementptr inbounds i8, ptr %s.09.i.i, i64 6
  %85 = load i8, ptr %incdec.ptr.i.i.4, align 1
  %conv18.i.i.5 = zext i8 %85 to i16
  %incdec.ptr19.i.i.5 = getelementptr inbounds i8, ptr %p.110.i.i, i64 12
  store i16 %conv18.i.i.5, ptr %incdec.ptr19.i.i.4, align 2
  %incdec.ptr.i.i.6 = getelementptr inbounds i8, ptr %s.09.i.i, i64 7
  %86 = load i8, ptr %incdec.ptr.i.i.5, align 1
  %conv18.i.i.6 = zext i8 %86 to i16
  %incdec.ptr19.i.i.6 = getelementptr inbounds i8, ptr %p.110.i.i, i64 14
  store i16 %conv18.i.i.6, ptr %incdec.ptr19.i.i.5, align 2
  %incdec.ptr.i.i.7 = getelementptr inbounds i8, ptr %s.09.i.i, i64 8
  %87 = load i8, ptr %incdec.ptr.i.i.6, align 1
  %conv18.i.i.7 = zext i8 %87 to i16
  %incdec.ptr19.i.i.7 = getelementptr inbounds i8, ptr %p.110.i.i, i64 16
  store i16 %conv18.i.i.7, ptr %incdec.ptr19.i.i.6, align 2
  %inc.i50.i.7 = add nuw nsw i32 %j.08.i.i, 8
  %exitcond16.not.i.i.7 = icmp eq i32 %inc.i50.i.7, %56
  br i1 %exitcond16.not.i.i.7, label %for.inc20.loopexit.i.i, label %for.body17.i.i, !llvm.loop !15

for.inc20.loopexit.i.i:                           ; preds = %for.body17.i.i.prol.loopexit, %for.body17.i.i, %middle.block
  %incdec.ptr19.i.i.lcssa = phi ptr [ %ind.end, %middle.block ], [ %incdec.ptr19.i.i.lcssa632.unr, %for.body17.i.i.prol.loopexit ], [ %incdec.ptr19.i.i.7, %for.body17.i.i ]
  %.pre20.i.i = load i32, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 28), align 4
  br label %for.inc20.i.i

for.inc20.i.i:                                    ; preds = %for.inc20.loopexit.i.i, %for.body.i47.i
  %88 = phi i32 [ %55, %for.body.i47.i ], [ %.pre20.i.i, %for.inc20.loopexit.i.i ]
  %p.1.lcssa.i.i = phi ptr [ %p.014.i.i, %for.body.i47.i ], [ %incdec.ptr19.i.i.lcssa, %for.inc20.loopexit.i.i ]
  %indvars.iv.next18.i.i = add nuw nsw i64 %indvars.iv17.i.i, 1
  %89 = sext i32 %88 to i64
  %cmp9.i.i = icmp slt i64 %indvars.iv.next18.i.i, %89
  br i1 %cmp9.i.i, label %for.body.i47.i, label %if.end34

sw.bb23.i.i:                                      ; preds = %if.end.i38.i
  %90 = load ptr, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 16), align 8
  %91 = load i32, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 28), align 4
  %cmp284.i.i = icmp sgt i32 %91, 0
  br i1 %cmp284.i.i, label %for.body30.i.i, label %for.end53.i.i

for.body30.i.i:                                   ; preds = %sw.bb23.i.i, %for.inc51.i.i
  %92 = phi i32 [ %107, %for.inc51.i.i ], [ %91, %sw.bb23.i.i ]
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %for.inc51.i.i ], [ 0, %sw.bb23.i.i ]
  %p.26.i.i = phi ptr [ %p.3.lcssa.i.i, %for.inc51.i.i ], [ %call.i37.i, %sw.bb23.i.i ]
  %arrayidx33.i.i = getelementptr inbounds [1080 x i32], ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 68), i64 0, i64 %indvars.iv.i.i
  %93 = load i32, ptr %arrayidx33.i.i, align 4
  %div92.i.i = lshr i32 %93, 1
  %94 = load ptr, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 8), align 8
  %arrayidx37.i.i = getelementptr inbounds [1080 x i32], ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 4388), i64 0, i64 %indvars.iv.i.i
  %95 = load i32, ptr %arrayidx37.i.i, align 4
  %idx.ext38.i.i = zext i32 %95 to i64
  %add.ptr39.i.i = getelementptr inbounds i8, ptr %94, i64 %idx.ext38.i.i
  store ptr %add.ptr39.i.i, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 16), align 8
  %cmp421.not.i.i = icmp ult i32 %93, 2
  br i1 %cmp421.not.i.i, label %for.inc51.i.i, label %for.body44.i.i.preheader

for.body44.i.i.preheader:                         ; preds = %for.body30.i.i
  %96 = icmp eq i32 %div92.i.i, 1
  br i1 %96, label %for.inc51.loopexit.i.i.unr-lcssa, label %for.body44.i.i.preheader.new

for.body44.i.i.preheader.new:                     ; preds = %for.body44.i.i.preheader
  %unroll_iter = and i32 %div92.i.i, 2147483646
  br label %for.body44.i.i

for.body44.i.i:                                   ; preds = %for.body44.i.i, %for.body44.i.i.preheader.new
  %p.33.i.i = phi ptr [ %p.26.i.i, %for.body44.i.i.preheader.new ], [ %incdec.ptr47.i.i.1, %for.body44.i.i ]
  %niter = phi i32 [ 0, %for.body44.i.i.preheader.new ], [ %niter.next.1, %for.body44.i.i ]
  %97 = load ptr, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 16), align 8
  %incdec.ptr.i.i40.i = getelementptr inbounds i8, ptr %97, i64 1
  store ptr %incdec.ptr.i.i40.i, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 16), align 8
  %98 = load i8, ptr %97, align 1
  %incdec.ptr2.i.i41.i = getelementptr inbounds i8, ptr %97, i64 2
  store ptr %incdec.ptr2.i.i41.i, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 16), align 8
  %99 = load i8, ptr %incdec.ptr.i.i40.i, align 1
  %u.sroa.4.0.insert.ext.i.i42.i = zext i8 %99 to i16
  %u.sroa.4.0.insert.shift.i.i43.i = shl nuw i16 %u.sroa.4.0.insert.ext.i.i42.i, 8
  %u.sroa.0.0.insert.ext.i.i44.i = zext i8 %98 to i16
  %u.sroa.0.0.insert.insert.i.i45.i = or disjoint i16 %u.sroa.4.0.insert.shift.i.i43.i, %u.sroa.0.0.insert.ext.i.i44.i
  %incdec.ptr47.i.i = getelementptr inbounds i8, ptr %p.33.i.i, i64 2
  store i16 %u.sroa.0.0.insert.insert.i.i45.i, ptr %p.33.i.i, align 2
  %100 = load ptr, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 16), align 8
  %incdec.ptr.i.i40.i.1 = getelementptr inbounds i8, ptr %100, i64 1
  store ptr %incdec.ptr.i.i40.i.1, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 16), align 8
  %101 = load i8, ptr %100, align 1
  %incdec.ptr2.i.i41.i.1 = getelementptr inbounds i8, ptr %100, i64 2
  store ptr %incdec.ptr2.i.i41.i.1, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 16), align 8
  %102 = load i8, ptr %incdec.ptr.i.i40.i.1, align 1
  %u.sroa.4.0.insert.ext.i.i42.i.1 = zext i8 %102 to i16
  %u.sroa.4.0.insert.shift.i.i43.i.1 = shl nuw i16 %u.sroa.4.0.insert.ext.i.i42.i.1, 8
  %u.sroa.0.0.insert.ext.i.i44.i.1 = zext i8 %101 to i16
  %u.sroa.0.0.insert.insert.i.i45.i.1 = or disjoint i16 %u.sroa.4.0.insert.shift.i.i43.i.1, %u.sroa.0.0.insert.ext.i.i44.i.1
  %incdec.ptr47.i.i.1 = getelementptr inbounds i8, ptr %p.33.i.i, i64 4
  store i16 %u.sroa.0.0.insert.insert.i.i45.i.1, ptr %incdec.ptr47.i.i, align 2
  %niter.next.1 = add i32 %niter, 2
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %for.inc51.loopexit.i.i.unr-lcssa, label %for.body44.i.i

for.inc51.loopexit.i.i.unr-lcssa:                 ; preds = %for.body44.i.i, %for.body44.i.i.preheader
  %incdec.ptr47.i.i.lcssa.ph = phi ptr [ poison, %for.body44.i.i.preheader ], [ %incdec.ptr47.i.i.1, %for.body44.i.i ]
  %p.33.i.i.unr = phi ptr [ %p.26.i.i, %for.body44.i.i.preheader ], [ %incdec.ptr47.i.i.1, %for.body44.i.i ]
  %103 = and i32 %93, 2
  %lcmp.mod.not = icmp eq i32 %103, 0
  br i1 %lcmp.mod.not, label %for.inc51.loopexit.i.i, label %for.body44.i.i.epil

for.body44.i.i.epil:                              ; preds = %for.inc51.loopexit.i.i.unr-lcssa
  %104 = load ptr, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 16), align 8
  %incdec.ptr.i.i40.i.epil = getelementptr inbounds i8, ptr %104, i64 1
  store ptr %incdec.ptr.i.i40.i.epil, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 16), align 8
  %105 = load i8, ptr %104, align 1
  %incdec.ptr2.i.i41.i.epil = getelementptr inbounds i8, ptr %104, i64 2
  store ptr %incdec.ptr2.i.i41.i.epil, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 16), align 8
  %106 = load i8, ptr %incdec.ptr.i.i40.i.epil, align 1
  %u.sroa.4.0.insert.ext.i.i42.i.epil = zext i8 %106 to i16
  %u.sroa.4.0.insert.shift.i.i43.i.epil = shl nuw i16 %u.sroa.4.0.insert.ext.i.i42.i.epil, 8
  %u.sroa.0.0.insert.ext.i.i44.i.epil = zext i8 %105 to i16
  %u.sroa.0.0.insert.insert.i.i45.i.epil = or disjoint i16 %u.sroa.4.0.insert.shift.i.i43.i.epil, %u.sroa.0.0.insert.ext.i.i44.i.epil
  %incdec.ptr47.i.i.epil = getelementptr inbounds i8, ptr %p.33.i.i.unr, i64 2
  store i16 %u.sroa.0.0.insert.insert.i.i45.i.epil, ptr %p.33.i.i.unr, align 2
  br label %for.inc51.loopexit.i.i

for.inc51.loopexit.i.i:                           ; preds = %for.inc51.loopexit.i.i.unr-lcssa, %for.body44.i.i.epil
  %incdec.ptr47.i.i.lcssa = phi ptr [ %incdec.ptr47.i.i.lcssa.ph, %for.inc51.loopexit.i.i.unr-lcssa ], [ %incdec.ptr47.i.i.epil, %for.body44.i.i.epil ]
  %.pre.i.i = load i32, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 28), align 4
  br label %for.inc51.i.i

for.inc51.i.i:                                    ; preds = %for.inc51.loopexit.i.i, %for.body30.i.i
  %107 = phi i32 [ %92, %for.body30.i.i ], [ %.pre.i.i, %for.inc51.loopexit.i.i ]
  %p.3.lcssa.i.i = phi ptr [ %p.26.i.i, %for.body30.i.i ], [ %incdec.ptr47.i.i.lcssa, %for.inc51.loopexit.i.i ]
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  %108 = sext i32 %107 to i64
  %cmp28.i.i = icmp slt i64 %indvars.iv.next.i.i, %108
  br i1 %cmp28.i.i, label %for.body30.i.i, label %for.end53.i.i

for.end53.i.i:                                    ; preds = %for.inc51.i.i, %sw.bb23.i.i
  store ptr %90, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 16), align 8
  br label %if.end34

Error.i:                                          ; preds = %readImageFileDirectory.exit.i, %readImageFileHeader.exit.i, %if.end22.i.i, %if.then20.i.i, %if.end9.i.i, %if.end.i.i, %if.then.i.i
  %.pr.i = load ptr, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 8), align 8
  %tobool13.not.i = icmp eq ptr %.pr.i, null
  br i1 %tobool13.not.i, label %if.end16.i, label %if.then14.i

if.then14.i:                                      ; preds = %Error.i
  call void @free(ptr noundef nonnull %.pr.i) #17
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then14.i, %Error.i, %Error.thread.i
  store ptr null, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 8), align 8
  %109 = load ptr, ptr @ReadTIFFImage.t, align 8
  %tobool18.not.i = icmp eq ptr %109, null
  br i1 %tobool18.not.i, label %readTiff.exit, label %if.then19.i

if.then19.i:                                      ; preds = %if.end16.i
  call void @free(ptr noundef nonnull %109) #17
  br label %readTiff.exit

readTiff.exit:                                    ; preds = %if.end16.i, %if.then19.i
  store ptr null, ptr @ReadTIFFImage.t, align 8
  br label %if.end173

if.end34:                                         ; preds = %for.inc20.i.i, %if.end.i38.i, %for.end53.i.i, %for.cond.preheader.i.i
  %110 = load i32, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 60), align 4
  %cmp35.not = icmp eq i32 %110, %1
  br i1 %cmp35.not, label %if.end38, label %if.then36

if.then36:                                        ; preds = %if.end34
  %111 = load ptr, ptr @stderr, align 8
  %call37 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %111, ptr noundef nonnull @.str.4, i32 noundef %110, i32 noundef %1) #19
  br label %if.end173

if.end38:                                         ; preds = %if.end34
  %112 = load i32, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 64), align 8
  %cmp39.not = icmp eq i32 %112, %0
  br i1 %cmp39.not, label %if.end42, label %if.then40

if.then40:                                        ; preds = %if.end38
  %113 = load ptr, ptr @stderr, align 8
  %call41 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %113, ptr noundef nonnull @.str.5, i32 noundef %112, i32 noundef %0) #19
  br label %if.end173

if.end42:                                         ; preds = %if.end38
  %pic_unit_size_on_disk = getelementptr inbounds i8, ptr %source, i64 124
  %114 = load i32, ptr %pic_unit_size_on_disk, align 4
  switch i32 %114, label %if.then47 [
    i32 8, label %if.end50
    i32 16, label %if.end50
  ]

if.then47:                                        ; preds = %if.end42
  %115 = load ptr, ptr @stderr, align 8
  %call49 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %115, ptr noundef nonnull @.str.6, i32 noundef %114) #19
  br label %if.end173

if.end50:                                         ; preds = %if.end42, %if.end42
  %116 = load ptr, ptr @ReadTIFFImage.t, align 8
  %mul = mul i32 %1, %0
  %mul51 = mul nsw i32 %mul, 3
  %117 = load i32, ptr %color_model, align 4
  %cmp53 = icmp eq i32 %117, 0
  br i1 %cmp53, label %if.then54, label %if.end137

if.then54:                                        ; preds = %if.end50
  %videoCode = getelementptr inbounds i8, ptr %p_Inp, i64 4000
  %118 = load i32, ptr %videoCode, align 8
  switch i32 %118, label %sw.default.i [
    i32 1, label %sw.epilog.i
    i32 3, label %sw.epilog.i
  ]

sw.default.i:                                     ; preds = %if.then54
  %119 = load ptr, ptr @stderr, align 8
  %call.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %119, ptr noundef nonnull @.str.18, i32 noundef %118) #19
  br label %if.end173

sw.epilog.i:                                      ; preds = %if.then54, %if.then54
  %stdRange = getelementptr inbounds i8, ptr %p_Inp, i64 3996
  %120 = load i32, ptr %stdRange, align 4
  %tobool.not.i = icmp eq i32 %120, 0
  %.sink193.i = select i1 %tobool.not.i, i32 8192, i32 67117056
  %.sink192.i = select i1 %tobool.not.i, double 1.638400e+04, double 0x40CB7B7B7B7B7B7B
  %.sink.i = select i1 %tobool.not.i, double 1.638400e+04, double 0x40CC1C1C1C1C1C1C
  %idxprom.i = zext nneg i32 %118 to i64
  %arrayidx.i = getelementptr inbounds [9 x [3 x double]], ptr @Coef, i64 0, i64 %idxprom.i
  %121 = load double, ptr %arrayidx.i, align 8
  %arrayidx22.i = getelementptr inbounds i8, ptr %arrayidx.i, i64 8
  %122 = load <2 x double>, ptr %arrayidx22.i, align 8
  %123 = insertelement <2 x double> poison, double %.sink192.i, i64 0
  %124 = shufflevector <2 x double> %123, <2 x double> poison, <2 x i32> zeroinitializer
  %125 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %124, <2 x double> %122, <2 x double> <double 5.000000e-01, double 5.000000e-01>)
  %126 = fptosi <2 x double> %125 to <2 x i32>
  %mul35.i = fmul double %.sink.i, %121
  %127 = extractelement <2 x double> %122, i64 1
  %sub.i = fadd double %127, -1.000000e+00
  %div39.i = fdiv double 5.000000e-01, %sub.i
  %128 = insertelement <2 x double> poison, double %mul35.i, i64 0
  %129 = insertelement <2 x double> %128, double %.sink192.i, i64 1
  %130 = insertelement <2 x double> poison, double %div39.i, i64 0
  %131 = insertelement <2 x double> %130, double %121, i64 1
  %132 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %129, <2 x double> %131, <2 x double> <double -5.000000e-01, double 5.000000e-01>)
  %133 = fptosi <2 x double> %132 to <2 x i32>
  %134 = insertelement <2 x double> <double poison, double 5.000000e-01>, double %div39.i, i64 0
  %sub68.i = fadd double %121, -1.000000e+00
  %div69.i = fdiv double 5.000000e-01, %sub68.i
  %135 = insertelement <2 x double> poison, double %.sink.i, i64 0
  %136 = shufflevector <2 x double> %135, <2 x double> poison, <2 x i32> zeroinitializer
  %137 = fmul <2 x double> %136, %122
  %138 = insertelement <2 x double> %137, double %.sink.i, i64 1
  %139 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %138, <2 x double> %134, <2 x double> <double -5.000000e-01, double 5.000000e-01>)
  %140 = fptosi <2 x double> %139 to <2 x i32>
  %141 = insertelement <2 x double> poison, double %div69.i, i64 0
  %142 = shufflevector <2 x double> %141, <2 x double> poison, <2 x i32> zeroinitializer
  %143 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %137, <2 x double> %142, <2 x double> <double -5.000000e-01, double -5.000000e-01>)
  %144 = fptosi <2 x double> %143 to <2 x i32>
  %add85.i = fadd double %.sink192.i, 5.000000e-01
  %conv86.i = fptoui double %add85.i to i32
  %145 = extractelement <2 x i32> %126, i64 0
  %146 = extractelement <2 x i32> %133, i64 1
  %add89.i = add nsw i32 %145, %146
  %147 = extractelement <2 x i32> %126, i64 1
  %add91.i = add nsw i32 %add89.i, %147
  %cmp.not.i = icmp eq i32 %add91.i, %conv86.i
  br i1 %cmp.not.i, label %if.end100.i, label %if.then93.i

if.then93.i:                                      ; preds = %sw.epilog.i
  %148 = load ptr, ptr @stderr, align 8
  %call99.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %148, ptr noundef nonnull @.str.19, i32 noundef %add91.i, i32 noundef %conv86.i) #19
  br label %if.end173

if.end100.i:                                      ; preds = %sw.epilog.i
  %149 = extractelement <2 x i32> %140, i64 0
  %150 = extractelement <2 x i32> %140, i64 1
  %add103.i = add i32 %149, %150
  %151 = extractelement <2 x i32> %133, i64 0
  %add105.i = add i32 %add103.i, %151
  %tobool106.not.i = icmp eq i32 %add105.i, 0
  br i1 %tobool106.not.i, label %if.end114.i, label %if.then107.i

if.then107.i:                                     ; preds = %if.end100.i
  %152 = load ptr, ptr @stderr, align 8
  %call113.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %152, ptr noundef nonnull @.str.20, i32 noundef %add105.i) #19
  br label %if.end173

if.end114.i:                                      ; preds = %if.end100.i
  %153 = extractelement <2 x i32> %144, i64 0
  %add117.i = add nsw i32 %153, %150
  %154 = extractelement <2 x i32> %144, i64 1
  %add119.i = add nsw i32 %add117.i, %154
  %tobool120.not.i = icmp eq i32 %add119.i, 0
  br i1 %tobool120.not.i, label %if.end58, label %if.then121.i

if.then121.i:                                     ; preds = %if.end114.i
  %155 = load ptr, ptr @stderr, align 8
  %call127.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %155, ptr noundef nonnull @.str.21, i32 noundef %add119.i) #19
  br label %if.end173

if.end58:                                         ; preds = %if.end114.i
  %add.ptr = getelementptr inbounds i8, ptr %116, i64 2
  %add.ptr59 = getelementptr inbounds i8, ptr %116, i64 4
  %cmp46281.i = icmp sgt i32 %mul, 0
  br i1 %tobool.not.i, label %for.cond45.preheader.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.end58
  br i1 %cmp46281.i, label %for.body.i.preheader, label %RGB_YUV_rgb_to_yuv.exit

for.body.i.preheader:                             ; preds = %for.cond.preheader.i
  %156 = zext nneg i32 %mul to i64
  %min.iters.check431 = icmp ult i32 %mul, 4
  br i1 %min.iters.check431, label %for.body.i.preheader630, label %vector.ph432

for.body.i.preheader630:                          ; preds = %middle.block429, %for.body.i.preheader
  %rp.addr.0280.i.ph = phi ptr [ %116, %for.body.i.preheader ], [ %ind.end435, %middle.block429 ]
  %i.0279.i.ph = phi i32 [ 0, %for.body.i.preheader ], [ %ind.end437, %middle.block429 ]
  %gp.addr.0278.i.ph = phi ptr [ %add.ptr, %for.body.i.preheader ], [ %ind.end439, %middle.block429 ]
  %vp.addr.0277.i.ph = phi ptr [ %add.ptr59, %for.body.i.preheader ], [ %ind.end441, %middle.block429 ]
  br label %for.body.i

vector.ph432:                                     ; preds = %for.body.i.preheader
  %n.vec434 = and i64 %156, 2147483644
  %157 = mul nuw nsw i64 %n.vec434, 6
  %ind.end435 = getelementptr i8, ptr %116, i64 %157
  %ind.end437 = trunc nuw nsw i64 %n.vec434 to i32
  %158 = mul nuw nsw i64 %n.vec434, 6
  %ind.end439 = getelementptr i8, ptr %add.ptr, i64 %158
  %159 = mul nuw nsw i64 %n.vec434, 6
  %ind.end441 = getelementptr i8, ptr %add.ptr59, i64 %159
  %invariant.gep = getelementptr i8, ptr %116, i64 12
  %invariant.gep648 = getelementptr i8, ptr %116, i64 18
  %invariant.gep650 = getelementptr i8, ptr %add.ptr, i64 12
  %invariant.gep652 = getelementptr i8, ptr %add.ptr, i64 18
  %invariant.gep654 = getelementptr i8, ptr %add.ptr59, i64 12
  %invariant.gep656 = getelementptr i8, ptr %add.ptr59, i64 18
  br label %vector.body443

vector.body443:                                   ; preds = %vector.body443, %vector.ph432
  %index444 = phi i64 [ 0, %vector.ph432 ], [ %index.next460, %vector.body443 ]
  %offset.idx445 = mul i64 %index444, 6
  %160 = or disjoint i64 %offset.idx445, 6
  %next.gep446 = getelementptr i8, ptr %116, i64 %offset.idx445
  %next.gep447 = getelementptr i8, ptr %116, i64 %160
  %gep = getelementptr i8, ptr %invariant.gep, i64 %offset.idx445
  %gep649 = getelementptr i8, ptr %invariant.gep648, i64 %offset.idx445
  %offset.idx450 = mul i64 %index444, 6
  %161 = or disjoint i64 %offset.idx450, 6
  %next.gep451 = getelementptr i8, ptr %add.ptr, i64 %offset.idx450
  %next.gep452 = getelementptr i8, ptr %add.ptr, i64 %161
  %gep651 = getelementptr i8, ptr %invariant.gep650, i64 %offset.idx450
  %gep653 = getelementptr i8, ptr %invariant.gep652, i64 %offset.idx450
  %offset.idx455 = mul i64 %index444, 6
  %162 = or disjoint i64 %offset.idx455, 6
  %next.gep456 = getelementptr i8, ptr %add.ptr59, i64 %offset.idx455
  %next.gep457 = getelementptr i8, ptr %add.ptr59, i64 %162
  %gep655 = getelementptr i8, ptr %invariant.gep654, i64 %offset.idx455
  %gep657 = getelementptr i8, ptr %invariant.gep656, i64 %offset.idx455
  %163 = load i16, ptr %next.gep446, align 2
  %164 = load i16, ptr %next.gep447, align 2
  %165 = load i16, ptr %gep, align 2
  %166 = load i16, ptr %gep649, align 2
  %167 = zext i16 %163 to i32
  %168 = zext i16 %164 to i32
  %169 = zext i16 %165 to i32
  %170 = zext i16 %166 to i32
  %171 = load i16, ptr %next.gep451, align 2
  %172 = load i16, ptr %next.gep452, align 2
  %173 = load i16, ptr %gep651, align 2
  %174 = load i16, ptr %gep653, align 2
  %175 = zext i16 %171 to i32
  %176 = zext i16 %172 to i32
  %177 = zext i16 %173 to i32
  %178 = zext i16 %174 to i32
  %179 = load i16, ptr %next.gep456, align 2
  %180 = load i16, ptr %next.gep457, align 2
  %181 = load i16, ptr %gep655, align 2
  %182 = load i16, ptr %gep657, align 2
  %183 = zext i16 %179 to i32
  %184 = zext i16 %180 to i32
  %185 = zext i16 %181 to i32
  %186 = zext i16 %182 to i32
  %187 = mul nsw i32 %146, %167
  %188 = mul nsw i32 %146, %168
  %189 = mul nsw i32 %146, %169
  %190 = mul nsw i32 %146, %170
  %191 = mul nsw i32 %145, %175
  %192 = mul nsw i32 %145, %176
  %193 = mul nsw i32 %145, %177
  %194 = mul nsw i32 %145, %178
  %195 = mul nsw i32 %147, %183
  %196 = mul nsw i32 %147, %184
  %197 = mul nsw i32 %147, %185
  %198 = mul nsw i32 %147, %186
  %199 = add i32 %187, %.sink193.i
  %200 = add i32 %188, %.sink193.i
  %201 = add i32 %189, %.sink193.i
  %202 = add i32 %190, %.sink193.i
  %203 = add i32 %199, %191
  %204 = add i32 %200, %192
  %205 = add i32 %201, %193
  %206 = add i32 %202, %194
  %207 = add i32 %203, %195
  %208 = add i32 %204, %196
  %209 = add i32 %205, %197
  %210 = add i32 %206, %198
  %211 = lshr i32 %207, 14
  %212 = lshr i32 %208, 14
  %213 = lshr i32 %209, 14
  %214 = lshr i32 %210, 14
  %215 = trunc i32 %211 to i16
  %216 = trunc i32 %212 to i16
  %217 = trunc i32 %213 to i16
  %218 = trunc i32 %214 to i16
  store i16 %215, ptr %next.gep446, align 2
  store i16 %216, ptr %next.gep447, align 2
  store i16 %217, ptr %gep, align 2
  store i16 %218, ptr %gep649, align 2
  %219 = mul nsw i32 %151, %167
  %220 = mul nsw i32 %151, %168
  %221 = mul nsw i32 %151, %169
  %222 = mul nsw i32 %151, %170
  %223 = mul nsw i32 %149, %175
  %224 = mul nsw i32 %149, %176
  %225 = mul nsw i32 %149, %177
  %226 = mul nsw i32 %149, %178
  %227 = mul nsw i32 %150, %183
  %228 = mul nsw i32 %150, %184
  %229 = mul nsw i32 %150, %185
  %230 = mul nsw i32 %150, %186
  %231 = add i32 %219, 536879104
  %232 = add i32 %220, 536879104
  %233 = add i32 %221, 536879104
  %234 = add i32 %222, 536879104
  %235 = add i32 %231, %223
  %236 = add i32 %232, %224
  %237 = add i32 %233, %225
  %238 = add i32 %234, %226
  %239 = add i32 %235, %227
  %240 = add i32 %236, %228
  %241 = add i32 %237, %229
  %242 = add i32 %238, %230
  %243 = lshr i32 %239, 14
  %244 = lshr i32 %240, 14
  %245 = lshr i32 %241, 14
  %246 = lshr i32 %242, 14
  %247 = trunc i32 %243 to i16
  %248 = trunc i32 %244 to i16
  %249 = trunc i32 %245 to i16
  %250 = trunc i32 %246 to i16
  store i16 %247, ptr %next.gep451, align 2
  store i16 %248, ptr %next.gep452, align 2
  store i16 %249, ptr %gep651, align 2
  store i16 %250, ptr %gep653, align 2
  %251 = mul nsw i32 %150, %167
  %252 = mul nsw i32 %150, %168
  %253 = mul nsw i32 %150, %169
  %254 = mul nsw i32 %150, %170
  %255 = mul nsw i32 %153, %175
  %256 = mul nsw i32 %153, %176
  %257 = mul nsw i32 %153, %177
  %258 = mul nsw i32 %153, %178
  %259 = mul nsw i32 %154, %183
  %260 = mul nsw i32 %154, %184
  %261 = mul nsw i32 %154, %185
  %262 = mul nsw i32 %154, %186
  %263 = add i32 %251, 536879104
  %264 = add i32 %252, 536879104
  %265 = add i32 %253, 536879104
  %266 = add i32 %254, 536879104
  %267 = add i32 %263, %255
  %268 = add i32 %264, %256
  %269 = add i32 %265, %257
  %270 = add i32 %266, %258
  %271 = add i32 %267, %259
  %272 = add i32 %268, %260
  %273 = add i32 %269, %261
  %274 = add i32 %270, %262
  %275 = lshr i32 %271, 14
  %276 = lshr i32 %272, 14
  %277 = lshr i32 %273, 14
  %278 = lshr i32 %274, 14
  %279 = trunc i32 %275 to i16
  %280 = trunc i32 %276 to i16
  %281 = trunc i32 %277 to i16
  %282 = trunc i32 %278 to i16
  store i16 %279, ptr %next.gep456, align 2
  store i16 %280, ptr %next.gep457, align 2
  store i16 %281, ptr %gep655, align 2
  store i16 %282, ptr %gep657, align 2
  %index.next460 = add nuw i64 %index444, 4
  %283 = icmp eq i64 %index.next460, %n.vec434
  br i1 %283, label %middle.block429, label %vector.body443, !llvm.loop !16

middle.block429:                                  ; preds = %vector.body443
  %cmp.n461 = icmp eq i64 %n.vec434, %156
  br i1 %cmp.n461, label %RGB_YUV_rgb_to_yuv.exit, label %for.body.i.preheader630

for.cond45.preheader.i:                           ; preds = %if.end58
  br i1 %cmp46281.i, label %for.body48.i.preheader, label %RGB_YUV_rgb_to_yuv.exit

for.body48.i.preheader:                           ; preds = %for.cond45.preheader.i
  %284 = zext nneg i32 %mul to i64
  %min.iters.check464 = icmp ult i32 %mul, 32
  br i1 %min.iters.check464, label %for.body48.i.preheader629, label %vector.ph465

for.body48.i.preheader629:                        ; preds = %middle.block462, %for.body48.i.preheader
  %rp.addr.1288.i.ph = phi ptr [ %116, %for.body48.i.preheader ], [ %ind.end468, %middle.block462 ]
  %i.1287.i.ph = phi i32 [ 0, %for.body48.i.preheader ], [ %ind.end470, %middle.block462 ]
  %gp.addr.1286.i.ph = phi ptr [ %add.ptr, %for.body48.i.preheader ], [ %ind.end472, %middle.block462 ]
  %vp.addr.1285.i.ph = phi ptr [ %add.ptr59, %for.body48.i.preheader ], [ %ind.end474, %middle.block462 ]
  %285 = insertelement <2 x i32> <i32 536879104, i32 poison>, i32 %.sink193.i, i64 1
  br label %for.body48.i

vector.ph465:                                     ; preds = %for.body48.i.preheader
  %n.vec467 = and i64 %284, 2147483616
  %286 = mul nuw nsw i64 %n.vec467, 6
  %ind.end468 = getelementptr i8, ptr %116, i64 %286
  %ind.end470 = trunc nuw nsw i64 %n.vec467 to i32
  %287 = mul nuw nsw i64 %n.vec467, 6
  %ind.end472 = getelementptr i8, ptr %add.ptr, i64 %287
  %288 = mul nuw nsw i64 %n.vec467, 6
  %ind.end474 = getelementptr i8, ptr %add.ptr59, i64 %288
  %broadcast.splat = shufflevector <2 x i32> %133, <2 x i32> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat503 = shufflevector <2 x i32> %126, <2 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splat505 = shufflevector <2 x i32> %126, <2 x i32> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splatinsert506 = insertelement <8 x i32> poison, i32 %.sink193.i, i64 0
  %broadcast.splat507 = shufflevector <8 x i32> %broadcast.splatinsert506, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splat509 = shufflevector <2 x i32> %133, <2 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splat511 = shufflevector <2 x i32> %140, <2 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splat513 = shufflevector <2 x i32> %140, <2 x i32> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat515 = shufflevector <2 x i32> %144, <2 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splat517 = shufflevector <2 x i32> %144, <2 x i32> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %invariant.gep658 = getelementptr i8, ptr %116, i64 96
  %invariant.gep660 = getelementptr i8, ptr %116, i64 144
  %invariant.gep662 = getelementptr i8, ptr %add.ptr59, i64 -4
  %invariant.gep664 = getelementptr i8, ptr %add.ptr59, i64 -4
  %invariant.gep666 = getelementptr i8, ptr %add.ptr59, i64 92
  %invariant.gep668 = getelementptr i8, ptr %add.ptr59, i64 140
  br label %vector.body476

vector.body476:                                   ; preds = %vector.body476, %vector.ph465
  %index477 = phi i64 [ 0, %vector.ph465 ], [ %index.next521, %vector.body476 ]
  %offset.idx478 = mul i64 %index477, 6
  %289 = or disjoint i64 %offset.idx478, 48
  %next.gep479 = getelementptr i8, ptr %116, i64 %offset.idx478
  %next.gep480 = getelementptr i8, ptr %116, i64 %289
  %gep659 = getelementptr i8, ptr %invariant.gep658, i64 %offset.idx478
  %gep661 = getelementptr i8, ptr %invariant.gep660, i64 %offset.idx478
  %offset.idx483 = mul i64 %index477, 6
  %290 = or disjoint i64 %offset.idx483, 48
  %wide.vec = load <24 x i16>, ptr %next.gep479, align 2
  %wide.vec488 = load <24 x i16>, ptr %next.gep480, align 2
  %wide.vec489 = load <24 x i16>, ptr %gep659, align 2
  %wide.vec490 = load <24 x i16>, ptr %gep661, align 2
  %strided.vec = shufflevector <24 x i16> %wide.vec, <24 x i16> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec491 = shufflevector <24 x i16> %wide.vec488, <24 x i16> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec492 = shufflevector <24 x i16> %wide.vec489, <24 x i16> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec493 = shufflevector <24 x i16> %wide.vec490, <24 x i16> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec494 = shufflevector <24 x i16> %wide.vec, <24 x i16> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %strided.vec495 = shufflevector <24 x i16> %wide.vec488, <24 x i16> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %strided.vec496 = shufflevector <24 x i16> %wide.vec489, <24 x i16> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %strided.vec497 = shufflevector <24 x i16> %wide.vec490, <24 x i16> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %strided.vec498 = shufflevector <24 x i16> %wide.vec, <24 x i16> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>
  %strided.vec499 = shufflevector <24 x i16> %wide.vec488, <24 x i16> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>
  %strided.vec500 = shufflevector <24 x i16> %wide.vec489, <24 x i16> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>
  %strided.vec501 = shufflevector <24 x i16> %wide.vec490, <24 x i16> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>
  %291 = zext <8 x i16> %strided.vec to <8 x i32>
  %292 = zext <8 x i16> %strided.vec491 to <8 x i32>
  %293 = zext <8 x i16> %strided.vec492 to <8 x i32>
  %294 = zext <8 x i16> %strided.vec493 to <8 x i32>
  %295 = zext <8 x i16> %strided.vec494 to <8 x i32>
  %296 = zext <8 x i16> %strided.vec495 to <8 x i32>
  %297 = zext <8 x i16> %strided.vec496 to <8 x i32>
  %298 = zext <8 x i16> %strided.vec497 to <8 x i32>
  %299 = zext <8 x i16> %strided.vec498 to <8 x i32>
  %300 = zext <8 x i16> %strided.vec499 to <8 x i32>
  %301 = zext <8 x i16> %strided.vec500 to <8 x i32>
  %302 = zext <8 x i16> %strided.vec501 to <8 x i32>
  %303 = mul nsw <8 x i32> %broadcast.splat, %291
  %304 = mul nsw <8 x i32> %broadcast.splat, %292
  %305 = mul nsw <8 x i32> %broadcast.splat, %293
  %306 = mul nsw <8 x i32> %broadcast.splat, %294
  %307 = mul nsw <8 x i32> %broadcast.splat503, %295
  %308 = mul nsw <8 x i32> %broadcast.splat503, %296
  %309 = mul nsw <8 x i32> %broadcast.splat503, %297
  %310 = mul nsw <8 x i32> %broadcast.splat503, %298
  %311 = mul nsw <8 x i32> %broadcast.splat505, %299
  %312 = mul nsw <8 x i32> %broadcast.splat505, %300
  %313 = mul nsw <8 x i32> %broadcast.splat505, %301
  %314 = mul nsw <8 x i32> %broadcast.splat505, %302
  %315 = add <8 x i32> %303, %broadcast.splat507
  %316 = add <8 x i32> %304, %broadcast.splat507
  %317 = add <8 x i32> %305, %broadcast.splat507
  %318 = add <8 x i32> %306, %broadcast.splat507
  %319 = add <8 x i32> %315, %307
  %320 = add <8 x i32> %316, %308
  %321 = add <8 x i32> %317, %309
  %322 = add <8 x i32> %318, %310
  %323 = add <8 x i32> %319, %311
  %324 = add <8 x i32> %320, %312
  %325 = add <8 x i32> %321, %313
  %326 = add <8 x i32> %322, %314
  %327 = ashr <8 x i32> %323, <i32 14, i32 14, i32 14, i32 14, i32 14, i32 14, i32 14, i32 14>
  %328 = ashr <8 x i32> %324, <i32 14, i32 14, i32 14, i32 14, i32 14, i32 14, i32 14, i32 14>
  %329 = ashr <8 x i32> %325, <i32 14, i32 14, i32 14, i32 14, i32 14, i32 14, i32 14, i32 14>
  %330 = ashr <8 x i32> %326, <i32 14, i32 14, i32 14, i32 14, i32 14, i32 14, i32 14, i32 14>
  %331 = icmp slt <8 x i32> %327, zeroinitializer
  %332 = icmp slt <8 x i32> %328, zeroinitializer
  %333 = icmp slt <8 x i32> %329, zeroinitializer
  %334 = icmp slt <8 x i32> %330, zeroinitializer
  %335 = call <8 x i32> @llvm.umin.v8i32(<8 x i32> %327, <8 x i32> <i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535>)
  %336 = call <8 x i32> @llvm.umin.v8i32(<8 x i32> %328, <8 x i32> <i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535>)
  %337 = call <8 x i32> @llvm.umin.v8i32(<8 x i32> %329, <8 x i32> <i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535>)
  %338 = call <8 x i32> @llvm.umin.v8i32(<8 x i32> %330, <8 x i32> <i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535>)
  %339 = trunc nuw <8 x i32> %335 to <8 x i16>
  %340 = trunc nuw <8 x i32> %336 to <8 x i16>
  %341 = trunc nuw <8 x i32> %337 to <8 x i16>
  %342 = trunc nuw <8 x i32> %338 to <8 x i16>
  %343 = select <8 x i1> %331, <8 x i16> zeroinitializer, <8 x i16> %339
  %344 = select <8 x i1> %332, <8 x i16> zeroinitializer, <8 x i16> %340
  %345 = select <8 x i1> %333, <8 x i16> zeroinitializer, <8 x i16> %341
  %346 = select <8 x i1> %334, <8 x i16> zeroinitializer, <8 x i16> %342
  %347 = mul nsw <8 x i32> %broadcast.splat509, %291
  %348 = mul nsw <8 x i32> %broadcast.splat509, %292
  %349 = mul nsw <8 x i32> %broadcast.splat509, %293
  %350 = mul nsw <8 x i32> %broadcast.splat509, %294
  %351 = mul nsw <8 x i32> %broadcast.splat511, %295
  %352 = mul nsw <8 x i32> %broadcast.splat511, %296
  %353 = mul nsw <8 x i32> %broadcast.splat511, %297
  %354 = mul nsw <8 x i32> %broadcast.splat511, %298
  %355 = mul nsw <8 x i32> %broadcast.splat513, %299
  %356 = mul nsw <8 x i32> %broadcast.splat513, %300
  %357 = mul nsw <8 x i32> %broadcast.splat513, %301
  %358 = mul nsw <8 x i32> %broadcast.splat513, %302
  %359 = add <8 x i32> %347, <i32 536879104, i32 536879104, i32 536879104, i32 536879104, i32 536879104, i32 536879104, i32 536879104, i32 536879104>
  %360 = add <8 x i32> %348, <i32 536879104, i32 536879104, i32 536879104, i32 536879104, i32 536879104, i32 536879104, i32 536879104, i32 536879104>
  %361 = add <8 x i32> %349, <i32 536879104, i32 536879104, i32 536879104, i32 536879104, i32 536879104, i32 536879104, i32 536879104, i32 536879104>
  %362 = add <8 x i32> %350, <i32 536879104, i32 536879104, i32 536879104, i32 536879104, i32 536879104, i32 536879104, i32 536879104, i32 536879104>
  %363 = add <8 x i32> %359, %351
  %364 = add <8 x i32> %360, %352
  %365 = add <8 x i32> %361, %353
  %366 = add <8 x i32> %362, %354
  %367 = add <8 x i32> %363, %355
  %368 = add <8 x i32> %364, %356
  %369 = add <8 x i32> %365, %357
  %370 = add <8 x i32> %366, %358
  %371 = ashr <8 x i32> %367, <i32 14, i32 14, i32 14, i32 14, i32 14, i32 14, i32 14, i32 14>
  %372 = ashr <8 x i32> %368, <i32 14, i32 14, i32 14, i32 14, i32 14, i32 14, i32 14, i32 14>
  %373 = ashr <8 x i32> %369, <i32 14, i32 14, i32 14, i32 14, i32 14, i32 14, i32 14, i32 14>
  %374 = ashr <8 x i32> %370, <i32 14, i32 14, i32 14, i32 14, i32 14, i32 14, i32 14, i32 14>
  %375 = icmp slt <8 x i32> %371, zeroinitializer
  %376 = icmp slt <8 x i32> %372, zeroinitializer
  %377 = icmp slt <8 x i32> %373, zeroinitializer
  %378 = icmp slt <8 x i32> %374, zeroinitializer
  %379 = call <8 x i32> @llvm.umin.v8i32(<8 x i32> %371, <8 x i32> <i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535>)
  %380 = call <8 x i32> @llvm.umin.v8i32(<8 x i32> %372, <8 x i32> <i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535>)
  %381 = call <8 x i32> @llvm.umin.v8i32(<8 x i32> %373, <8 x i32> <i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535>)
  %382 = call <8 x i32> @llvm.umin.v8i32(<8 x i32> %374, <8 x i32> <i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535>)
  %383 = trunc nuw <8 x i32> %379 to <8 x i16>
  %384 = trunc nuw <8 x i32> %380 to <8 x i16>
  %385 = trunc nuw <8 x i32> %381 to <8 x i16>
  %386 = trunc nuw <8 x i32> %382 to <8 x i16>
  %387 = select <8 x i1> %375, <8 x i16> zeroinitializer, <8 x i16> %383
  %388 = select <8 x i1> %376, <8 x i16> zeroinitializer, <8 x i16> %384
  %389 = select <8 x i1> %377, <8 x i16> zeroinitializer, <8 x i16> %385
  %390 = select <8 x i1> %378, <8 x i16> zeroinitializer, <8 x i16> %386
  %391 = mul nsw <8 x i32> %broadcast.splat513, %291
  %392 = mul nsw <8 x i32> %broadcast.splat513, %292
  %393 = mul nsw <8 x i32> %broadcast.splat513, %293
  %394 = mul nsw <8 x i32> %broadcast.splat513, %294
  %395 = mul nsw <8 x i32> %broadcast.splat515, %295
  %396 = mul nsw <8 x i32> %broadcast.splat515, %296
  %397 = mul nsw <8 x i32> %broadcast.splat515, %297
  %398 = mul nsw <8 x i32> %broadcast.splat515, %298
  %399 = mul nsw <8 x i32> %broadcast.splat517, %299
  %400 = mul nsw <8 x i32> %broadcast.splat517, %300
  %401 = mul nsw <8 x i32> %broadcast.splat517, %301
  %402 = mul nsw <8 x i32> %broadcast.splat517, %302
  %403 = add <8 x i32> %391, <i32 536879104, i32 536879104, i32 536879104, i32 536879104, i32 536879104, i32 536879104, i32 536879104, i32 536879104>
  %404 = add <8 x i32> %392, <i32 536879104, i32 536879104, i32 536879104, i32 536879104, i32 536879104, i32 536879104, i32 536879104, i32 536879104>
  %405 = add <8 x i32> %393, <i32 536879104, i32 536879104, i32 536879104, i32 536879104, i32 536879104, i32 536879104, i32 536879104, i32 536879104>
  %406 = add <8 x i32> %394, <i32 536879104, i32 536879104, i32 536879104, i32 536879104, i32 536879104, i32 536879104, i32 536879104, i32 536879104>
  %407 = add <8 x i32> %403, %395
  %408 = add <8 x i32> %404, %396
  %409 = add <8 x i32> %405, %397
  %410 = add <8 x i32> %406, %398
  %411 = add <8 x i32> %407, %399
  %412 = add <8 x i32> %408, %400
  %413 = add <8 x i32> %409, %401
  %414 = add <8 x i32> %410, %402
  %415 = ashr <8 x i32> %411, <i32 14, i32 14, i32 14, i32 14, i32 14, i32 14, i32 14, i32 14>
  %416 = ashr <8 x i32> %412, <i32 14, i32 14, i32 14, i32 14, i32 14, i32 14, i32 14, i32 14>
  %417 = ashr <8 x i32> %413, <i32 14, i32 14, i32 14, i32 14, i32 14, i32 14, i32 14, i32 14>
  %418 = ashr <8 x i32> %414, <i32 14, i32 14, i32 14, i32 14, i32 14, i32 14, i32 14, i32 14>
  %419 = icmp slt <8 x i32> %415, zeroinitializer
  %420 = icmp slt <8 x i32> %416, zeroinitializer
  %421 = icmp slt <8 x i32> %417, zeroinitializer
  %422 = icmp slt <8 x i32> %418, zeroinitializer
  %423 = call <8 x i32> @llvm.umin.v8i32(<8 x i32> %415, <8 x i32> <i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535>)
  %424 = call <8 x i32> @llvm.umin.v8i32(<8 x i32> %416, <8 x i32> <i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535>)
  %425 = call <8 x i32> @llvm.umin.v8i32(<8 x i32> %417, <8 x i32> <i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535>)
  %426 = call <8 x i32> @llvm.umin.v8i32(<8 x i32> %418, <8 x i32> <i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535>)
  %427 = trunc nuw <8 x i32> %423 to <8 x i16>
  %428 = trunc nuw <8 x i32> %424 to <8 x i16>
  %429 = trunc nuw <8 x i32> %425 to <8 x i16>
  %430 = trunc nuw <8 x i32> %426 to <8 x i16>
  %431 = select <8 x i1> %419, <8 x i16> zeroinitializer, <8 x i16> %427
  %432 = select <8 x i1> %420, <8 x i16> zeroinitializer, <8 x i16> %428
  %433 = select <8 x i1> %421, <8 x i16> zeroinitializer, <8 x i16> %429
  %434 = select <8 x i1> %422, <8 x i16> zeroinitializer, <8 x i16> %430
  %gep663 = getelementptr i8, ptr %invariant.gep662, i64 %offset.idx483
  %gep665 = getelementptr i8, ptr %invariant.gep664, i64 %290
  %gep667 = getelementptr i8, ptr %invariant.gep666, i64 %offset.idx483
  %gep669 = getelementptr i8, ptr %invariant.gep668, i64 %offset.idx483
  %435 = shufflevector <8 x i16> %343, <8 x i16> %387, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %436 = shufflevector <8 x i16> %431, <8 x i16> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <16 x i16> %435, <16 x i16> %436, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x i16> %interleaved.vec, ptr %gep663, align 2
  %437 = shufflevector <8 x i16> %344, <8 x i16> %388, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %438 = shufflevector <8 x i16> %432, <8 x i16> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec518 = shufflevector <16 x i16> %437, <16 x i16> %438, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x i16> %interleaved.vec518, ptr %gep665, align 2
  %439 = shufflevector <8 x i16> %345, <8 x i16> %389, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %440 = shufflevector <8 x i16> %433, <8 x i16> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec519 = shufflevector <16 x i16> %439, <16 x i16> %440, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x i16> %interleaved.vec519, ptr %gep667, align 2
  %441 = shufflevector <8 x i16> %346, <8 x i16> %390, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %442 = shufflevector <8 x i16> %434, <8 x i16> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec520 = shufflevector <16 x i16> %441, <16 x i16> %442, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x i16> %interleaved.vec520, ptr %gep669, align 2
  %index.next521 = add nuw i64 %index477, 32
  %443 = icmp eq i64 %index.next521, %n.vec467
  br i1 %443, label %middle.block462, label %vector.body476, !llvm.loop !17

middle.block462:                                  ; preds = %vector.body476
  %cmp.n522 = icmp eq i64 %n.vec467, %284
  br i1 %cmp.n522, label %RGB_YUV_rgb_to_yuv.exit, label %for.body48.i.preheader629

for.body.i:                                       ; preds = %for.body.i.preheader630, %for.body.i
  %rp.addr.0280.i = phi ptr [ %add.ptr.i, %for.body.i ], [ %rp.addr.0280.i.ph, %for.body.i.preheader630 ]
  %i.0279.i = phi i32 [ %inc.i, %for.body.i ], [ %i.0279.i.ph, %for.body.i.preheader630 ]
  %gp.addr.0278.i = phi ptr [ %add.ptr3.i, %for.body.i ], [ %gp.addr.0278.i.ph, %for.body.i.preheader630 ]
  %vp.addr.0277.i = phi ptr [ %add.ptr44.i, %for.body.i ], [ %vp.addr.0277.i.ph, %for.body.i.preheader630 ]
  %444 = load i16, ptr %rp.addr.0280.i, align 2
  %conv.i = zext i16 %444 to i32
  %add.ptr.i = getelementptr i8, ptr %rp.addr.0280.i, i64 6
  %445 = load i16, ptr %gp.addr.0278.i, align 2
  %conv1.i = zext i16 %445 to i32
  %add.ptr3.i = getelementptr i8, ptr %gp.addr.0278.i, i64 6
  %446 = load i16, ptr %vp.addr.0277.i, align 2
  %conv4.i = zext i16 %446 to i32
  %add.ptr44.i = getelementptr i8, ptr %vp.addr.0277.i, i64 6
  %mul8.i = mul nsw i32 %146, %conv.i
  %mul10.i = mul nsw i32 %145, %conv1.i
  %mul12.i = mul nsw i32 %147, %conv4.i
  %add.i = add i32 %mul8.i, %.sink193.i
  %add13.i = add i32 %add.i, %mul10.i
  %add14.i = add i32 %add13.i, %mul12.i
  %shr.i = lshr i32 %add14.i, 14
  %conv15.i = trunc i32 %shr.i to i16
  store i16 %conv15.i, ptr %rp.addr.0280.i, align 2
  %mul19.i = mul nsw i32 %151, %conv.i
  %mul21.i = mul nsw i32 %149, %conv1.i
  %mul24.i = mul nsw i32 %150, %conv4.i
  %add22.i = add i32 %mul19.i, 536879104
  %add25.i = add i32 %add22.i, %mul21.i
  %add26.i = add i32 %add25.i, %mul24.i
  %shr27.i = lshr i32 %add26.i, 14
  %conv28.i = trunc i32 %shr27.i to i16
  store i16 %conv28.i, ptr %gp.addr.0278.i, align 2
  %mul32.i = mul nsw i32 %150, %conv.i
  %mul34.i = mul nsw i32 %153, %conv1.i
  %mul37.i = mul nsw i32 %154, %conv4.i
  %add35.i = add i32 %mul32.i, 536879104
  %add38.i = add i32 %add35.i, %mul34.i
  %add40.i = add i32 %add38.i, %mul37.i
  %shr41.i = lshr i32 %add40.i, 14
  %conv42.i = trunc i32 %shr41.i to i16
  store i16 %conv42.i, ptr %vp.addr.0277.i, align 2
  %inc.i = add nuw nsw i32 %i.0279.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %mul
  br i1 %exitcond.not.i, label %RGB_YUV_rgb_to_yuv.exit, label %for.body.i, !llvm.loop !18

for.body48.i:                                     ; preds = %for.body48.i.preheader629, %for.body48.i
  %rp.addr.1288.i = phi ptr [ %add.ptr52.i, %for.body48.i ], [ %rp.addr.1288.i.ph, %for.body48.i.preheader629 ]
  %i.1287.i = phi i32 [ %inc165.i, %for.body48.i ], [ %i.1287.i.ph, %for.body48.i.preheader629 ]
  %gp.addr.1286.i = phi ptr [ %add.ptr56.i, %for.body48.i ], [ %gp.addr.1286.i.ph, %for.body48.i.preheader629 ]
  %vp.addr.1285.i = phi ptr [ %add.ptr163.i, %for.body48.i ], [ %vp.addr.1285.i.ph, %for.body48.i.preheader629 ]
  %447 = load i16, ptr %rp.addr.1288.i, align 2
  %conv49.i = zext i16 %447 to i32
  %add.ptr52.i = getelementptr i8, ptr %rp.addr.1288.i, i64 6
  %448 = load i16, ptr %gp.addr.1286.i, align 2
  %add.ptr56.i = getelementptr i8, ptr %gp.addr.1286.i, i64 6
  %449 = load i16, ptr %vp.addr.1285.i, align 2
  %add.ptr163.i = getelementptr i8, ptr %vp.addr.1285.i, i64 6
  %450 = insertelement <2 x i16> poison, i16 %448, i64 0
  %451 = insertelement <2 x i16> %450, i16 %449, i64 1
  %452 = zext <2 x i16> %451 to <2 x i32>
  %453 = mul nsw <2 x i32> %452, %126
  %454 = mul nsw <2 x i32> %452, %140
  %455 = insertelement <2 x i32> poison, i32 %conv49.i, i64 0
  %456 = shufflevector <2 x i32> %455, <2 x i32> poison, <2 x i32> zeroinitializer
  %457 = mul nsw <2 x i32> %456, %133
  %458 = add <2 x i32> %457, %285
  %459 = shufflevector <2 x i32> %454, <2 x i32> %453, <2 x i32> <i32 0, i32 2>
  %460 = add <2 x i32> %458, %459
  %461 = shufflevector <2 x i32> %454, <2 x i32> %453, <2 x i32> <i32 1, i32 3>
  %462 = add <2 x i32> %460, %461
  %463 = ashr <2 x i32> %462, <i32 14, i32 14>
  %464 = extractelement <2 x i32> %463, i64 1
  %spec.select = call i32 @llvm.umin.i32(i32 %464, i32 65535)
  %465 = trunc nuw i32 %spec.select to i16
  %466 = icmp slt <2 x i32> %463, zeroinitializer
  %467 = extractelement <2 x i1> %466, i64 1
  %conv91.i = select i1 %467, i16 0, i16 %465
  store i16 %conv91.i, ptr %rp.addr.1288.i, align 2
  %468 = extractelement <2 x i32> %463, i64 0
  %spec.select367 = call i32 @llvm.umin.i32(i32 %468, i32 65535)
  %469 = trunc nuw i32 %spec.select367 to i16
  %470 = extractelement <2 x i1> %466, i64 0
  %conv126.i = select i1 %470, i16 0, i16 %469
  store i16 %conv126.i, ptr %gp.addr.1286.i, align 2
  %mul131.i = mul nsw i32 %150, %conv49.i
  %471 = mul nsw <2 x i32> %452, %144
  %add135.i = add i32 %mul131.i, 536879104
  %472 = extractelement <2 x i32> %471, i64 0
  %add139.i = add i32 %add135.i, %472
  %473 = extractelement <2 x i32> %471, i64 1
  %add141.i = add i32 %add139.i, %473
  %shr142.i = ashr i32 %add141.i, 14
  %cmp144.i = icmp slt i32 %shr142.i, 0
  %spec.select368 = call i32 @llvm.umin.i32(i32 %shr142.i, i32 65535)
  %474 = trunc nuw i32 %spec.select368 to i16
  %conv161.i = select i1 %cmp144.i, i16 0, i16 %474
  store i16 %conv161.i, ptr %vp.addr.1285.i, align 2
  %inc165.i = add nuw nsw i32 %i.1287.i, 1
  %exitcond290.not.i = icmp eq i32 %inc165.i, %mul
  br i1 %exitcond290.not.i, label %RGB_YUV_rgb_to_yuv.exit, label %for.body48.i, !llvm.loop !19

RGB_YUV_rgb_to_yuv.exit:                          ; preds = %for.body.i, %for.body48.i, %middle.block429, %middle.block462, %for.cond.preheader.i, %for.cond45.preheader.i
  %475 = load i32, ptr %source, align 8
  switch i32 %475, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb86
    i32 3, label %if.end137
  ]

sw.bb:                                            ; preds = %RGB_YUV_rgb_to_yuv.exit
  %div = sdiv i32 %mul51, 2
  %conv = sext i32 %div to i64
  %mul64 = shl nsw i64 %conv, 1
  %call65 = call noalias ptr @malloc(i64 noundef %mul64) #21
  %idx.ext = sext i32 %mul to i64
  %add.ptr67 = getelementptr inbounds i16, ptr %call65, i64 %idx.ext
  %div69 = sdiv i32 %mul, 4
  %idx.ext70 = sext i32 %div69 to i64
  %add.ptr71 = getelementptr inbounds i16, ptr %add.ptr67, i64 %idx.ext70
  br i1 %cmp46281.i, label %for.body.preheader, label %for.end

for.body.preheader:                               ; preds = %sw.bb
  %wide.trip.count396 = zext nneg i32 %mul to i64
  %min.iters.check562 = icmp ult i32 %mul, 33
  br i1 %min.iters.check562, label %for.body.preheader627, label %vector.memcheck554

vector.memcheck554:                               ; preds = %for.body.preheader
  %476 = shl nuw nsw i64 %wide.trip.count396, 1
  %scevgep555 = getelementptr i8, ptr %call65, i64 %476
  %477 = mul nuw nsw i64 %wide.trip.count396, 6
  %478 = getelementptr i8, ptr %116, i64 %477
  %scevgep556 = getelementptr i8, ptr %478, i64 -4
  %bound0557 = icmp ult ptr %call65, %scevgep556
  %bound1558 = icmp ult ptr %116, %scevgep555
  %found.conflict559 = and i1 %bound0557, %bound1558
  br i1 %found.conflict559, label %for.body.preheader627, label %vector.ph563

vector.ph563:                                     ; preds = %vector.memcheck554
  %n.mod.vf564 = and i64 %wide.trip.count396, 31
  %479 = icmp eq i64 %n.mod.vf564, 0
  %480 = select i1 %479, i64 32, i64 %n.mod.vf564
  %n.vec565 = sub nsw i64 %wide.trip.count396, %480
  %481 = mul nsw i64 %n.vec565, 6
  %ind.end567 = getelementptr i8, ptr %116, i64 %481
  %invariant.gep680 = getelementptr i8, ptr %116, i64 96
  %invariant.gep682 = getelementptr i8, ptr %116, i64 144
  br label %vector.body569

vector.body569:                                   ; preds = %vector.body569, %vector.ph563
  %index570 = phi i64 [ 0, %vector.ph563 ], [ %index.next584, %vector.body569 ]
  %offset.idx571 = mul i64 %index570, 6
  %482 = or disjoint i64 %offset.idx571, 48
  %next.gep572 = getelementptr i8, ptr %116, i64 %offset.idx571
  %next.gep573 = getelementptr i8, ptr %116, i64 %482
  %gep681 = getelementptr i8, ptr %invariant.gep680, i64 %offset.idx571
  %gep683 = getelementptr i8, ptr %invariant.gep682, i64 %offset.idx571
  %wide.vec576 = load <24 x i16>, ptr %next.gep572, align 2
  %wide.vec577 = load <24 x i16>, ptr %next.gep573, align 2
  %wide.vec578 = load <24 x i16>, ptr %gep681, align 2
  %wide.vec579 = load <24 x i16>, ptr %gep683, align 2
  %strided.vec580 = shufflevector <24 x i16> %wide.vec576, <24 x i16> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec581 = shufflevector <24 x i16> %wide.vec577, <24 x i16> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec582 = shufflevector <24 x i16> %wide.vec578, <24 x i16> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec583 = shufflevector <24 x i16> %wide.vec579, <24 x i16> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %483 = getelementptr inbounds i16, ptr %call65, i64 %index570
  %484 = getelementptr inbounds i8, ptr %483, i64 16
  %485 = getelementptr inbounds i8, ptr %483, i64 32
  %486 = getelementptr inbounds i8, ptr %483, i64 48
  store <8 x i16> %strided.vec580, ptr %483, align 2, !alias.scope !20, !noalias !23
  store <8 x i16> %strided.vec581, ptr %484, align 2, !alias.scope !20, !noalias !23
  store <8 x i16> %strided.vec582, ptr %485, align 2, !alias.scope !20, !noalias !23
  store <8 x i16> %strided.vec583, ptr %486, align 2, !alias.scope !20, !noalias !23
  %index.next584 = add nuw i64 %index570, 32
  %487 = icmp eq i64 %index.next584, %n.vec565
  br i1 %487, label %for.body.preheader627, label %vector.body569, !llvm.loop !25

for.body.preheader627:                            ; preds = %vector.body569, %vector.memcheck554, %for.body.preheader
  %indvars.iv393.ph = phi i64 [ 0, %vector.memcheck554 ], [ 0, %for.body.preheader ], [ %n.vec565, %vector.body569 ]
  %p.0378.ph = phi ptr [ %116, %vector.memcheck554 ], [ %116, %for.body.preheader ], [ %ind.end567, %vector.body569 ]
  %488 = sub nsw i64 %wide.trip.count396, %indvars.iv393.ph
  %xtraiter639 = and i64 %488, 3
  %lcmp.mod640.not = icmp eq i64 %xtraiter639, 0
  br i1 %lcmp.mod640.not, label %for.body.prol.loopexit, label %for.body.prol

for.body.prol:                                    ; preds = %for.body.preheader627, %for.body.prol
  %indvars.iv393.prol = phi i64 [ %indvars.iv.next394.prol, %for.body.prol ], [ %indvars.iv393.ph, %for.body.preheader627 ]
  %p.0378.prol = phi ptr [ %add.ptr76.prol, %for.body.prol ], [ %p.0378.ph, %for.body.preheader627 ]
  %prol.iter641 = phi i64 [ %prol.iter641.next, %for.body.prol ], [ 0, %for.body.preheader627 ]
  %489 = load i16, ptr %p.0378.prol, align 2
  %arrayidx75.prol = getelementptr inbounds i16, ptr %call65, i64 %indvars.iv393.prol
  store i16 %489, ptr %arrayidx75.prol, align 2
  %add.ptr76.prol = getelementptr inbounds i8, ptr %p.0378.prol, i64 6
  %indvars.iv.next394.prol = add nuw nsw i64 %indvars.iv393.prol, 1
  %prol.iter641.next = add i64 %prol.iter641, 1
  %prol.iter641.cmp.not = icmp eq i64 %prol.iter641.next, %xtraiter639
  br i1 %prol.iter641.cmp.not, label %for.body.prol.loopexit, label %for.body.prol, !llvm.loop !26

for.body.prol.loopexit:                           ; preds = %for.body.prol, %for.body.preheader627
  %indvars.iv393.unr = phi i64 [ %indvars.iv393.ph, %for.body.preheader627 ], [ %indvars.iv.next394.prol, %for.body.prol ]
  %p.0378.unr = phi ptr [ %p.0378.ph, %for.body.preheader627 ], [ %add.ptr76.prol, %for.body.prol ]
  %490 = sub nsw i64 %indvars.iv393.ph, %wide.trip.count396
  %491 = icmp ugt i64 %490, -4
  br i1 %491, label %for.end, label %for.body.preheader627.new

for.body.preheader627.new:                        ; preds = %for.body.prol.loopexit
  %invariant.gep684 = getelementptr i8, ptr %call65, i64 2
  %invariant.gep686 = getelementptr i8, ptr %call65, i64 4
  %invariant.gep688 = getelementptr i8, ptr %call65, i64 6
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.preheader627.new
  %indvars.iv393 = phi i64 [ %indvars.iv393.unr, %for.body.preheader627.new ], [ %indvars.iv.next394.3, %for.body ]
  %p.0378 = phi ptr [ %p.0378.unr, %for.body.preheader627.new ], [ %add.ptr76.3, %for.body ]
  %492 = load i16, ptr %p.0378, align 2
  %arrayidx75 = getelementptr inbounds i16, ptr %call65, i64 %indvars.iv393
  store i16 %492, ptr %arrayidx75, align 2
  %add.ptr76 = getelementptr inbounds i8, ptr %p.0378, i64 6
  %493 = load i16, ptr %add.ptr76, align 2
  %gep685 = getelementptr i16, ptr %invariant.gep684, i64 %indvars.iv393
  store i16 %493, ptr %gep685, align 2
  %add.ptr76.1 = getelementptr inbounds i8, ptr %p.0378, i64 12
  %494 = load i16, ptr %add.ptr76.1, align 2
  %gep687 = getelementptr i16, ptr %invariant.gep686, i64 %indvars.iv393
  store i16 %494, ptr %gep687, align 2
  %add.ptr76.2 = getelementptr inbounds i8, ptr %p.0378, i64 18
  %495 = load i16, ptr %add.ptr76.2, align 2
  %gep689 = getelementptr i16, ptr %invariant.gep688, i64 %indvars.iv393
  store i16 %495, ptr %gep689, align 2
  %add.ptr76.3 = getelementptr inbounds i8, ptr %p.0378, i64 24
  %indvars.iv.next394.3 = add nuw nsw i64 %indvars.iv393, 4
  %exitcond397.not.3 = icmp eq i64 %indvars.iv.next394.3, %wide.trip.count396
  br i1 %exitcond397.not.3, label %for.end, label %for.body, !llvm.loop !27

for.end:                                          ; preds = %for.body.prol.loopexit, %for.body, %sw.bb
  %mul79 = and i64 %idx.ext, 9223372036854775807
  %call81 = call noalias ptr @malloc(i64 noundef %mul79) #21
  call void @horizontal_half_1chan_cosite(ptr noundef nonnull %add.ptr, i32 noundef %0, i32 noundef %1, i32 noundef 3, ptr noundef %call81, i32 noundef 1, i32 noundef 65535)
  %div83 = sdiv i32 %0, 2
  call void @vertical_half_1chan(ptr noundef %call81, i32 noundef %div83, i32 noundef %1, i32 noundef 1, ptr noundef %add.ptr67, i32 noundef 1, i32 noundef 65535)
  call void @horizontal_half_1chan_cosite(ptr noundef nonnull %add.ptr59, i32 noundef %0, i32 noundef %1, i32 noundef 3, ptr noundef %call81, i32 noundef 1, i32 noundef 65535)
  call void @vertical_half_1chan(ptr noundef %call81, i32 noundef %div83, i32 noundef %1, i32 noundef 1, ptr noundef %add.ptr71, i32 noundef 1, i32 noundef 65535)
  call void @free(ptr noundef %call81) #17
  br label %if.end137

sw.bb86:                                          ; preds = %RGB_YUV_rgb_to_yuv.exit
  %mul88 = shl nsw i32 %mul, 1
  %conv89 = sext i32 %mul88 to i64
  %mul90 = shl nsw i64 %conv89, 1
  %call91 = call noalias ptr @malloc(i64 noundef %mul90) #21
  %idx.ext93 = sext i32 %mul to i64
  %add.ptr94 = getelementptr inbounds i16, ptr %call91, i64 %idx.ext93
  %div96 = sdiv i32 %mul, 2
  %idx.ext97 = sext i32 %div96 to i64
  %add.ptr98 = getelementptr inbounds i16, ptr %call91, i64 %idx.ext97
  br i1 %cmp46281.i, label %for.body103.preheader, label %for.cond110.preheader

for.body103.preheader:                            ; preds = %sw.bb86
  %wide.trip.count = zext nneg i32 %mul to i64
  %min.iters.check531 = icmp ult i32 %mul, 33
  br i1 %min.iters.check531, label %for.body103.preheader628, label %vector.memcheck523

for.body103.preheader628:                         ; preds = %vector.body538, %vector.memcheck523, %for.body103.preheader
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck523 ], [ 0, %for.body103.preheader ], [ %n.vec534, %vector.body538 ]
  %p.1373.ph = phi ptr [ %116, %vector.memcheck523 ], [ %116, %for.body103.preheader ], [ %ind.end536, %vector.body538 ]
  %496 = sub nsw i64 %wide.trip.count, %indvars.iv.ph
  %xtraiter636 = and i64 %496, 3
  %lcmp.mod637.not = icmp eq i64 %xtraiter636, 0
  br i1 %lcmp.mod637.not, label %for.body103.prol.loopexit, label %for.body103.prol

for.body103.prol:                                 ; preds = %for.body103.preheader628, %for.body103.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %for.body103.prol ], [ %indvars.iv.ph, %for.body103.preheader628 ]
  %p.1373.prol = phi ptr [ %add.ptr106.prol, %for.body103.prol ], [ %p.1373.ph, %for.body103.preheader628 ]
  %prol.iter638 = phi i64 [ %prol.iter638.next, %for.body103.prol ], [ 0, %for.body103.preheader628 ]
  %497 = load i16, ptr %p.1373.prol, align 2
  %arrayidx105.prol = getelementptr inbounds i16, ptr %call91, i64 %indvars.iv.prol
  store i16 %497, ptr %arrayidx105.prol, align 2
  %add.ptr106.prol = getelementptr inbounds i8, ptr %p.1373.prol, i64 6
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1
  %prol.iter638.next = add i64 %prol.iter638, 1
  %prol.iter638.cmp.not = icmp eq i64 %prol.iter638.next, %xtraiter636
  br i1 %prol.iter638.cmp.not, label %for.body103.prol.loopexit, label %for.body103.prol, !llvm.loop !28

for.body103.prol.loopexit:                        ; preds = %for.body103.prol, %for.body103.preheader628
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %for.body103.preheader628 ], [ %indvars.iv.next.prol, %for.body103.prol ]
  %p.1373.unr = phi ptr [ %p.1373.ph, %for.body103.preheader628 ], [ %add.ptr106.prol, %for.body103.prol ]
  %498 = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %499 = icmp ugt i64 %498, -4
  br i1 %499, label %for.cond110.preheader, label %for.body103.preheader628.new

for.body103.preheader628.new:                     ; preds = %for.body103.prol.loopexit
  %invariant.gep674 = getelementptr i8, ptr %call91, i64 2
  %invariant.gep676 = getelementptr i8, ptr %call91, i64 4
  %invariant.gep678 = getelementptr i8, ptr %call91, i64 6
  br label %for.body103

vector.memcheck523:                               ; preds = %for.body103.preheader
  %500 = shl nuw nsw i64 %wide.trip.count, 1
  %scevgep524 = getelementptr i8, ptr %call91, i64 %500
  %501 = mul nuw nsw i64 %wide.trip.count, 6
  %502 = getelementptr i8, ptr %116, i64 %501
  %scevgep525 = getelementptr i8, ptr %502, i64 -4
  %bound0526 = icmp ult ptr %call91, %scevgep525
  %bound1527 = icmp ult ptr %116, %scevgep524
  %found.conflict528 = and i1 %bound0526, %bound1527
  br i1 %found.conflict528, label %for.body103.preheader628, label %vector.ph532

vector.ph532:                                     ; preds = %vector.memcheck523
  %n.mod.vf533 = and i64 %wide.trip.count, 31
  %503 = icmp eq i64 %n.mod.vf533, 0
  %504 = select i1 %503, i64 32, i64 %n.mod.vf533
  %n.vec534 = sub nsw i64 %wide.trip.count, %504
  %505 = mul nsw i64 %n.vec534, 6
  %ind.end536 = getelementptr i8, ptr %116, i64 %505
  %invariant.gep670 = getelementptr i8, ptr %116, i64 96
  %invariant.gep672 = getelementptr i8, ptr %116, i64 144
  br label %vector.body538

vector.body538:                                   ; preds = %vector.body538, %vector.ph532
  %index539 = phi i64 [ 0, %vector.ph532 ], [ %index.next553, %vector.body538 ]
  %offset.idx540 = mul i64 %index539, 6
  %506 = or disjoint i64 %offset.idx540, 48
  %next.gep541 = getelementptr i8, ptr %116, i64 %offset.idx540
  %next.gep542 = getelementptr i8, ptr %116, i64 %506
  %gep671 = getelementptr i8, ptr %invariant.gep670, i64 %offset.idx540
  %gep673 = getelementptr i8, ptr %invariant.gep672, i64 %offset.idx540
  %wide.vec545 = load <24 x i16>, ptr %next.gep541, align 2
  %wide.vec546 = load <24 x i16>, ptr %next.gep542, align 2
  %wide.vec547 = load <24 x i16>, ptr %gep671, align 2
  %wide.vec548 = load <24 x i16>, ptr %gep673, align 2
  %strided.vec549 = shufflevector <24 x i16> %wide.vec545, <24 x i16> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec550 = shufflevector <24 x i16> %wide.vec546, <24 x i16> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec551 = shufflevector <24 x i16> %wide.vec547, <24 x i16> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec552 = shufflevector <24 x i16> %wide.vec548, <24 x i16> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %507 = getelementptr inbounds i16, ptr %call91, i64 %index539
  %508 = getelementptr inbounds i8, ptr %507, i64 16
  %509 = getelementptr inbounds i8, ptr %507, i64 32
  %510 = getelementptr inbounds i8, ptr %507, i64 48
  store <8 x i16> %strided.vec549, ptr %507, align 2, !alias.scope !29, !noalias !32
  store <8 x i16> %strided.vec550, ptr %508, align 2, !alias.scope !29, !noalias !32
  store <8 x i16> %strided.vec551, ptr %509, align 2, !alias.scope !29, !noalias !32
  store <8 x i16> %strided.vec552, ptr %510, align 2, !alias.scope !29, !noalias !32
  %index.next553 = add nuw i64 %index539, 32
  %511 = icmp eq i64 %index.next553, %n.vec534
  br i1 %511, label %for.body103.preheader628, label %vector.body538, !llvm.loop !34

for.cond110.preheader:                            ; preds = %for.body103.prol.loopexit, %for.body103, %sw.bb86
  %cmp111374 = icmp sgt i32 %1, 0
  br i1 %cmp111374, label %for.body113.preheader, label %if.end137

for.body113.preheader:                            ; preds = %for.cond110.preheader
  %512 = sext i32 %0 to i64
  %wide.trip.count391 = zext nneg i32 %1 to i64
  br label %for.body113

for.body103:                                      ; preds = %for.body103, %for.body103.preheader628.new
  %indvars.iv = phi i64 [ %indvars.iv.unr, %for.body103.preheader628.new ], [ %indvars.iv.next.3, %for.body103 ]
  %p.1373 = phi ptr [ %p.1373.unr, %for.body103.preheader628.new ], [ %add.ptr106.3, %for.body103 ]
  %513 = load i16, ptr %p.1373, align 2
  %arrayidx105 = getelementptr inbounds i16, ptr %call91, i64 %indvars.iv
  store i16 %513, ptr %arrayidx105, align 2
  %add.ptr106 = getelementptr inbounds i8, ptr %p.1373, i64 6
  %514 = load i16, ptr %add.ptr106, align 2
  %gep675 = getelementptr i16, ptr %invariant.gep674, i64 %indvars.iv
  store i16 %514, ptr %gep675, align 2
  %add.ptr106.1 = getelementptr inbounds i8, ptr %p.1373, i64 12
  %515 = load i16, ptr %add.ptr106.1, align 2
  %gep677 = getelementptr i16, ptr %invariant.gep676, i64 %indvars.iv
  store i16 %515, ptr %gep677, align 2
  %add.ptr106.2 = getelementptr inbounds i8, ptr %p.1373, i64 18
  %516 = load i16, ptr %add.ptr106.2, align 2
  %gep679 = getelementptr i16, ptr %invariant.gep678, i64 %indvars.iv
  store i16 %516, ptr %gep679, align 2
  %add.ptr106.3 = getelementptr inbounds i8, ptr %p.1373, i64 24
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %for.cond110.preheader, label %for.body103, !llvm.loop !35

for.body113:                                      ; preds = %for.body113.preheader, %for.body113
  %indvars.iv386 = phi i64 [ 0, %for.body113.preheader ], [ %indvars.iv.next387, %for.body113 ]
  %517 = mul nsw i64 %indvars.iv386, %512
  %518 = mul nsw i64 %517, 3
  %add.ptr118 = getelementptr inbounds i16, ptr %add.ptr, i64 %518
  %519 = trunc nsw i64 %517 to i32
  %div120 = sdiv i32 %519, 2
  %idx.ext121 = sext i32 %div120 to i64
  %add.ptr122 = getelementptr inbounds i16, ptr %add.ptr94, i64 %idx.ext121
  call void @horizontal_half_1chan_cosite(ptr noundef nonnull %add.ptr118, i32 noundef %0, i32 noundef 1, i32 noundef 3, ptr noundef %add.ptr122, i32 noundef 1, i32 noundef 65535)
  %add.ptr127 = getelementptr inbounds i16, ptr %add.ptr59, i64 %518
  %add.ptr131 = getelementptr inbounds i16, ptr %add.ptr98, i64 %idx.ext121
  call void @horizontal_half_1chan_cosite(ptr noundef nonnull %add.ptr127, i32 noundef %0, i32 noundef 1, i32 noundef 3, ptr noundef %add.ptr131, i32 noundef 1, i32 noundef 65535)
  %indvars.iv.next387 = add nuw nsw i64 %indvars.iv386, 1
  %exitcond392.not = icmp eq i64 %indvars.iv.next387, %wide.trip.count391
  br i1 %exitcond392.not, label %if.end137, label %for.body113

sw.default:                                       ; preds = %RGB_YUV_rgb_to_yuv.exit
  %520 = load ptr, ptr @stderr, align 8
  %call136 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %520, ptr noundef nonnull @.str.7, i32 noundef %475) #19
  br label %if.end173

if.end137:                                        ; preds = %for.body113, %for.cond110.preheader, %for.end, %RGB_YUV_rgb_to_yuv.exit, %if.end50
  %nComponents.0 = phi i32 [ %mul51, %RGB_YUV_rgb_to_yuv.exit ], [ %div, %for.end ], [ %mul51, %if.end50 ], [ %mul88, %for.cond110.preheader ], [ %mul88, %for.body113 ]
  %img.0 = phi ptr [ %116, %RGB_YUV_rgb_to_yuv.exit ], [ %call65, %for.end ], [ %116, %if.end50 ], [ %call91, %for.cond110.preheader ], [ %call91, %for.body113 ]
  %temp.0 = phi ptr [ null, %RGB_YUV_rgb_to_yuv.exit ], [ %call65, %for.end ], [ null, %if.end50 ], [ %call91, %for.cond110.preheader ], [ %call91, %for.body113 ]
  %img.0587 = ptrtoint ptr %img.0 to i64
  %pic_unit_size_shift3 = getelementptr inbounds i8, ptr %source, i64 128
  %521 = load i32, ptr %pic_unit_size_shift3, align 8
  switch i32 %521, label %Error [
    i32 1, label %for.cond139.preheader
    i32 2, label %for.cond153.preheader
  ]

for.cond153.preheader:                            ; preds = %if.end137
  %cmp154379 = icmp sgt i32 %nComponents.0, 0
  br i1 %cmp154379, label %for.body156.preheader, label %sw.epilog167

for.body156.preheader:                            ; preds = %for.cond153.preheader
  %wide.trip.count401 = zext nneg i32 %nComponents.0 to i64
  %min.iters.check590 = icmp ult i32 %nComponents.0, 32
  %522 = sub i64 %buf586, %img.0587
  %diff.check = icmp ult i64 %522, 64
  %or.cond = select i1 %min.iters.check590, i1 true, i1 %diff.check
  br i1 %or.cond, label %for.body156.preheader625, label %vector.ph591

for.body156.preheader625:                         ; preds = %middle.block588, %for.body156.preheader
  %indvars.iv398.ph = phi i64 [ 0, %for.body156.preheader ], [ %n.vec593, %middle.block588 ]
  %xtraiter642 = and i64 %wide.trip.count401, 3
  %lcmp.mod643.not = icmp eq i64 %xtraiter642, 0
  br i1 %lcmp.mod643.not, label %for.body156.prol.loopexit, label %for.body156.prol

for.body156.prol:                                 ; preds = %for.body156.preheader625, %for.body156.prol
  %indvars.iv398.prol = phi i64 [ %indvars.iv.next399.prol, %for.body156.prol ], [ %indvars.iv398.ph, %for.body156.preheader625 ]
  %prol.iter644 = phi i64 [ %prol.iter644.next, %for.body156.prol ], [ 0, %for.body156.preheader625 ]
  %arrayidx158.prol = getelementptr inbounds i16, ptr %img.0, i64 %indvars.iv398.prol
  %523 = load i16, ptr %arrayidx158.prol, align 2
  %arrayidx160.prol = getelementptr inbounds i16, ptr %buf, i64 %indvars.iv398.prol
  store i16 %523, ptr %arrayidx160.prol, align 2
  %indvars.iv.next399.prol = add nuw nsw i64 %indvars.iv398.prol, 1
  %prol.iter644.next = add i64 %prol.iter644, 1
  %prol.iter644.cmp.not = icmp eq i64 %prol.iter644.next, %xtraiter642
  br i1 %prol.iter644.cmp.not, label %for.body156.prol.loopexit, label %for.body156.prol, !llvm.loop !36

for.body156.prol.loopexit:                        ; preds = %for.body156.prol, %for.body156.preheader625
  %indvars.iv398.unr = phi i64 [ %indvars.iv398.ph, %for.body156.preheader625 ], [ %indvars.iv.next399.prol, %for.body156.prol ]
  %524 = sub nsw i64 %indvars.iv398.ph, %wide.trip.count401
  %525 = icmp ugt i64 %524, -4
  br i1 %525, label %sw.epilog167, label %for.body156

vector.ph591:                                     ; preds = %for.body156.preheader
  %n.vec593 = and i64 %wide.trip.count401, 2147483616
  br label %vector.body595

vector.body595:                                   ; preds = %vector.body595, %vector.ph591
  %index596 = phi i64 [ 0, %vector.ph591 ], [ %index.next601, %vector.body595 ]
  %526 = getelementptr inbounds i16, ptr %img.0, i64 %index596
  %527 = getelementptr inbounds i8, ptr %526, i64 16
  %528 = getelementptr inbounds i8, ptr %526, i64 32
  %529 = getelementptr inbounds i8, ptr %526, i64 48
  %wide.load597 = load <8 x i16>, ptr %526, align 2
  %wide.load598 = load <8 x i16>, ptr %527, align 2
  %wide.load599 = load <8 x i16>, ptr %528, align 2
  %wide.load600 = load <8 x i16>, ptr %529, align 2
  %530 = getelementptr inbounds i16, ptr %buf, i64 %index596
  %531 = getelementptr inbounds i8, ptr %530, i64 16
  %532 = getelementptr inbounds i8, ptr %530, i64 32
  %533 = getelementptr inbounds i8, ptr %530, i64 48
  store <8 x i16> %wide.load597, ptr %530, align 2
  store <8 x i16> %wide.load598, ptr %531, align 2
  store <8 x i16> %wide.load599, ptr %532, align 2
  store <8 x i16> %wide.load600, ptr %533, align 2
  %index.next601 = add nuw i64 %index596, 32
  %534 = icmp eq i64 %index.next601, %n.vec593
  br i1 %534, label %middle.block588, label %vector.body595, !llvm.loop !37

middle.block588:                                  ; preds = %vector.body595
  %cmp.n602 = icmp eq i64 %n.vec593, %wide.trip.count401
  br i1 %cmp.n602, label %sw.epilog167, label %for.body156.preheader625

for.cond139.preheader:                            ; preds = %if.end137
  %cmp140381 = icmp sgt i32 %nComponents.0, 0
  br i1 %cmp140381, label %for.body142.preheader, label %sw.epilog167

for.body142.preheader:                            ; preds = %for.cond139.preheader
  %wide.trip.count406 = zext nneg i32 %nComponents.0 to i64
  %min.iters.check611 = icmp ult i32 %nComponents.0, 32
  br i1 %min.iters.check611, label %for.body142.preheader624, label %vector.memcheck603

vector.memcheck603:                               ; preds = %for.body142.preheader
  %scevgep604 = getelementptr i8, ptr %buf, i64 %wide.trip.count406
  %535 = shl nuw nsw i64 %wide.trip.count406, 1
  %scevgep605 = getelementptr i8, ptr %img.0, i64 %535
  %bound0606 = icmp ugt ptr %scevgep605, %buf
  %bound1607 = icmp ult ptr %img.0, %scevgep604
  %found.conflict608 = and i1 %bound0606, %bound1607
  br i1 %found.conflict608, label %for.body142.preheader624, label %vector.ph612

vector.ph612:                                     ; preds = %vector.memcheck603
  %n.vec614 = and i64 %wide.trip.count406, 2147483616
  br label %vector.body616

vector.body616:                                   ; preds = %vector.body616, %vector.ph612
  %index617 = phi i64 [ 0, %vector.ph612 ], [ %index.next622, %vector.body616 ]
  %536 = getelementptr inbounds i16, ptr %img.0, i64 %index617
  %537 = getelementptr inbounds i8, ptr %536, i64 16
  %538 = getelementptr inbounds i8, ptr %536, i64 32
  %539 = getelementptr inbounds i8, ptr %536, i64 48
  %wide.load618 = load <8 x i16>, ptr %536, align 2, !alias.scope !38
  %wide.load619 = load <8 x i16>, ptr %537, align 2, !alias.scope !38
  %wide.load620 = load <8 x i16>, ptr %538, align 2, !alias.scope !38
  %wide.load621 = load <8 x i16>, ptr %539, align 2, !alias.scope !38
  %540 = lshr <8 x i16> %wide.load618, <i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8>
  %541 = lshr <8 x i16> %wide.load619, <i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8>
  %542 = lshr <8 x i16> %wide.load620, <i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8>
  %543 = lshr <8 x i16> %wide.load621, <i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8>
  %544 = trunc nuw <8 x i16> %540 to <8 x i8>
  %545 = trunc nuw <8 x i16> %541 to <8 x i8>
  %546 = trunc nuw <8 x i16> %542 to <8 x i8>
  %547 = trunc nuw <8 x i16> %543 to <8 x i8>
  %548 = getelementptr inbounds i8, ptr %buf, i64 %index617
  %549 = getelementptr inbounds i8, ptr %548, i64 8
  %550 = getelementptr inbounds i8, ptr %548, i64 16
  %551 = getelementptr inbounds i8, ptr %548, i64 24
  store <8 x i8> %544, ptr %548, align 1, !alias.scope !41, !noalias !38
  store <8 x i8> %545, ptr %549, align 1, !alias.scope !41, !noalias !38
  store <8 x i8> %546, ptr %550, align 1, !alias.scope !41, !noalias !38
  store <8 x i8> %547, ptr %551, align 1, !alias.scope !41, !noalias !38
  %index.next622 = add nuw i64 %index617, 32
  %552 = icmp eq i64 %index.next622, %n.vec614
  br i1 %552, label %middle.block609, label %vector.body616, !llvm.loop !43

middle.block609:                                  ; preds = %vector.body616
  %cmp.n623 = icmp eq i64 %n.vec614, %wide.trip.count406
  br i1 %cmp.n623, label %sw.epilog167, label %for.body142.preheader624

for.body142.preheader624:                         ; preds = %middle.block609, %vector.memcheck603, %for.body142.preheader
  %indvars.iv403.ph = phi i64 [ 0, %vector.memcheck603 ], [ 0, %for.body142.preheader ], [ %n.vec614, %middle.block609 ]
  %xtraiter645 = and i64 %wide.trip.count406, 3
  %lcmp.mod646.not = icmp eq i64 %xtraiter645, 0
  br i1 %lcmp.mod646.not, label %for.body142.prol.loopexit, label %for.body142.prol

for.body142.prol:                                 ; preds = %for.body142.preheader624, %for.body142.prol
  %indvars.iv403.prol = phi i64 [ %indvars.iv.next404.prol, %for.body142.prol ], [ %indvars.iv403.ph, %for.body142.preheader624 ]
  %prol.iter647 = phi i64 [ %prol.iter647.next, %for.body142.prol ], [ 0, %for.body142.preheader624 ]
  %arrayidx144.prol = getelementptr inbounds i16, ptr %img.0, i64 %indvars.iv403.prol
  %553 = load i16, ptr %arrayidx144.prol, align 2
  %554 = lshr i16 %553, 8
  %conv146.prol = trunc nuw i16 %554 to i8
  %arrayidx148.prol = getelementptr inbounds i8, ptr %buf, i64 %indvars.iv403.prol
  store i8 %conv146.prol, ptr %arrayidx148.prol, align 1
  %indvars.iv.next404.prol = add nuw nsw i64 %indvars.iv403.prol, 1
  %prol.iter647.next = add i64 %prol.iter647, 1
  %prol.iter647.cmp.not = icmp eq i64 %prol.iter647.next, %xtraiter645
  br i1 %prol.iter647.cmp.not, label %for.body142.prol.loopexit, label %for.body142.prol, !llvm.loop !44

for.body142.prol.loopexit:                        ; preds = %for.body142.prol, %for.body142.preheader624
  %indvars.iv403.unr = phi i64 [ %indvars.iv403.ph, %for.body142.preheader624 ], [ %indvars.iv.next404.prol, %for.body142.prol ]
  %555 = sub nsw i64 %indvars.iv403.ph, %wide.trip.count406
  %556 = icmp ugt i64 %555, -4
  br i1 %556, label %sw.epilog167, label %for.body142

for.body142:                                      ; preds = %for.body142.prol.loopexit, %for.body142
  %indvars.iv403 = phi i64 [ %indvars.iv.next404.3, %for.body142 ], [ %indvars.iv403.unr, %for.body142.prol.loopexit ]
  %arrayidx144 = getelementptr inbounds i16, ptr %img.0, i64 %indvars.iv403
  %557 = load i16, ptr %arrayidx144, align 2
  %558 = lshr i16 %557, 8
  %conv146 = trunc nuw i16 %558 to i8
  %arrayidx148 = getelementptr inbounds i8, ptr %buf, i64 %indvars.iv403
  store i8 %conv146, ptr %arrayidx148, align 1
  %indvars.iv.next404 = add nuw nsw i64 %indvars.iv403, 1
  %arrayidx144.1 = getelementptr inbounds i16, ptr %img.0, i64 %indvars.iv.next404
  %559 = load i16, ptr %arrayidx144.1, align 2
  %560 = lshr i16 %559, 8
  %conv146.1 = trunc nuw i16 %560 to i8
  %arrayidx148.1 = getelementptr inbounds i8, ptr %buf, i64 %indvars.iv.next404
  store i8 %conv146.1, ptr %arrayidx148.1, align 1
  %indvars.iv.next404.1 = add nuw nsw i64 %indvars.iv403, 2
  %arrayidx144.2 = getelementptr inbounds i16, ptr %img.0, i64 %indvars.iv.next404.1
  %561 = load i16, ptr %arrayidx144.2, align 2
  %562 = lshr i16 %561, 8
  %conv146.2 = trunc nuw i16 %562 to i8
  %arrayidx148.2 = getelementptr inbounds i8, ptr %buf, i64 %indvars.iv.next404.1
  store i8 %conv146.2, ptr %arrayidx148.2, align 1
  %indvars.iv.next404.2 = add nuw nsw i64 %indvars.iv403, 3
  %arrayidx144.3 = getelementptr inbounds i16, ptr %img.0, i64 %indvars.iv.next404.2
  %563 = load i16, ptr %arrayidx144.3, align 2
  %564 = lshr i16 %563, 8
  %conv146.3 = trunc nuw i16 %564 to i8
  %arrayidx148.3 = getelementptr inbounds i8, ptr %buf, i64 %indvars.iv.next404.2
  store i8 %conv146.3, ptr %arrayidx148.3, align 1
  %indvars.iv.next404.3 = add nuw nsw i64 %indvars.iv403, 4
  %exitcond407.not.3 = icmp eq i64 %indvars.iv.next404.3, %wide.trip.count406
  br i1 %exitcond407.not.3, label %sw.epilog167, label %for.body142, !llvm.loop !45

for.body156:                                      ; preds = %for.body156.prol.loopexit, %for.body156
  %indvars.iv398 = phi i64 [ %indvars.iv.next399.3, %for.body156 ], [ %indvars.iv398.unr, %for.body156.prol.loopexit ]
  %arrayidx158 = getelementptr inbounds i16, ptr %img.0, i64 %indvars.iv398
  %565 = load i16, ptr %arrayidx158, align 2
  %arrayidx160 = getelementptr inbounds i16, ptr %buf, i64 %indvars.iv398
  store i16 %565, ptr %arrayidx160, align 2
  %indvars.iv.next399 = add nuw nsw i64 %indvars.iv398, 1
  %arrayidx158.1 = getelementptr inbounds i16, ptr %img.0, i64 %indvars.iv.next399
  %566 = load i16, ptr %arrayidx158.1, align 2
  %arrayidx160.1 = getelementptr inbounds i16, ptr %buf, i64 %indvars.iv.next399
  store i16 %566, ptr %arrayidx160.1, align 2
  %indvars.iv.next399.1 = add nuw nsw i64 %indvars.iv398, 2
  %arrayidx158.2 = getelementptr inbounds i16, ptr %img.0, i64 %indvars.iv.next399.1
  %567 = load i16, ptr %arrayidx158.2, align 2
  %arrayidx160.2 = getelementptr inbounds i16, ptr %buf, i64 %indvars.iv.next399.1
  store i16 %567, ptr %arrayidx160.2, align 2
  %indvars.iv.next399.2 = add nuw nsw i64 %indvars.iv398, 3
  %arrayidx158.3 = getelementptr inbounds i16, ptr %img.0, i64 %indvars.iv.next399.2
  %568 = load i16, ptr %arrayidx158.3, align 2
  %arrayidx160.3 = getelementptr inbounds i16, ptr %buf, i64 %indvars.iv.next399.2
  store i16 %568, ptr %arrayidx160.3, align 2
  %indvars.iv.next399.3 = add nuw nsw i64 %indvars.iv398, 4
  %exitcond402.not.3 = icmp eq i64 %indvars.iv.next399.3, %wide.trip.count401
  br i1 %exitcond402.not.3, label %sw.epilog167, label %for.body156, !llvm.loop !46

sw.epilog167:                                     ; preds = %for.body156.prol.loopexit, %for.body156, %for.body142.prol.loopexit, %for.body142, %middle.block588, %middle.block609, %for.cond153.preheader, %for.cond139.preheader
  %tobool168.not = icmp eq ptr %temp.0, null
  br i1 %tobool168.not, label %cleanup, label %if.then169

if.then169:                                       ; preds = %sw.epilog167
  call void @free(ptr noundef nonnull %temp.0) #17
  br label %cleanup

Error:                                            ; preds = %if.end137
  %569 = load ptr, ptr @stderr, align 8
  %call166 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %569, ptr noundef nonnull @.str.8, i32 noundef %521) #19
  %tobool171.not = icmp eq ptr %temp.0, null
  br i1 %tobool171.not, label %if.end173, label %if.then172

if.then172:                                       ; preds = %Error
  call void @free(ptr noundef nonnull %temp.0) #17
  br label %if.end173

if.end173:                                        ; preds = %if.then121.i, %if.then107.i, %if.then93.i, %sw.default.i, %if.then, %sw.default, %if.then47, %if.then40, %if.then36, %readTiff.exit, %if.then172, %Error
  call void @report_stats_on_error() #17
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog167, %if.then169, %if.end173, %if.then22
  %retval.0 = phi i32 [ 0, %if.then22 ], [ 0, %if.end173 ], [ 1, %if.then169 ], [ 1, %sw.epilog167 ]
  call void @llvm.lifetime.end.p0(i64 255, ptr nonnull %path) #17
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i64 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #8

declare void @report_stats_on_error() local_unnamed_addr #9

; Function Attrs: nofree
declare noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #10

; Function Attrs: nounwind
declare i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #12

declare i32 @close(i32 noundef) local_unnamed_addr #9

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal range(i32 0, 65536) i32 @getU16(ptr nocapture noundef %t) #13 {
entry:
  %mp = getelementptr inbounds i8, ptr %t, i64 16
  %0 = load ptr, ptr %mp, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %0, i64 1
  store ptr %incdec.ptr, ptr %mp, align 8
  %1 = load i8, ptr %0, align 1
  %incdec.ptr2 = getelementptr inbounds i8, ptr %0, i64 2
  store ptr %incdec.ptr2, ptr %mp, align 8
  %2 = load i8, ptr %incdec.ptr, align 1
  %u.sroa.4.0.insert.ext = zext i8 %2 to i32
  %u.sroa.4.0.insert.shift = shl nuw nsw i32 %u.sroa.4.0.insert.ext, 8
  %u.sroa.0.0.insert.ext = zext i8 %1 to i32
  %u.sroa.0.0.insert.insert = or disjoint i32 %u.sroa.4.0.insert.shift, %u.sroa.0.0.insert.ext
  ret i32 %u.sroa.0.0.insert.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal i32 @getU32(ptr nocapture noundef %t) #13 {
entry:
  %mp = getelementptr inbounds i8, ptr %t, i64 16
  %0 = load ptr, ptr %mp, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %0, i64 1
  store ptr %incdec.ptr, ptr %mp, align 8
  %1 = load i8, ptr %0, align 1
  %incdec.ptr2 = getelementptr inbounds i8, ptr %0, i64 2
  store ptr %incdec.ptr2, ptr %mp, align 8
  %2 = load i8, ptr %incdec.ptr, align 1
  %incdec.ptr5 = getelementptr inbounds i8, ptr %0, i64 3
  store ptr %incdec.ptr5, ptr %mp, align 8
  %3 = load i8, ptr %incdec.ptr2, align 1
  %incdec.ptr8 = getelementptr inbounds i8, ptr %0, i64 4
  store ptr %incdec.ptr8, ptr %mp, align 8
  %4 = load i8, ptr %incdec.ptr5, align 1
  %u.sroa.6.0.insert.ext = zext i8 %4 to i32
  %u.sroa.6.0.insert.shift = shl nuw i32 %u.sroa.6.0.insert.ext, 24
  %u.sroa.5.0.insert.ext = zext i8 %3 to i32
  %u.sroa.5.0.insert.shift = shl nuw nsw i32 %u.sroa.5.0.insert.ext, 16
  %u.sroa.4.0.insert.ext = zext i8 %2 to i32
  %u.sroa.4.0.insert.shift = shl nuw nsw i32 %u.sroa.4.0.insert.ext, 8
  %u.sroa.0.0.insert.ext = zext i8 %1 to i32
  %u.sroa.5.0.insert.insert = or disjoint i32 %u.sroa.4.0.insert.shift, %u.sroa.0.0.insert.ext
  %u.sroa.4.0.insert.insert = or disjoint i32 %u.sroa.5.0.insert.insert, %u.sroa.5.0.insert.shift
  %u.sroa.0.0.insert.insert = or disjoint i32 %u.sroa.4.0.insert.insert, %u.sroa.6.0.insert.shift
  ret i32 %u.sroa.0.0.insert.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal range(i32 0, 65536) i32 @getSwappedU16(ptr nocapture noundef %t) #13 {
entry:
  %mp = getelementptr inbounds i8, ptr %t, i64 16
  %0 = load ptr, ptr %mp, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %0, i64 1
  store ptr %incdec.ptr, ptr %mp, align 8
  %1 = load i8, ptr %0, align 1
  %incdec.ptr2 = getelementptr inbounds i8, ptr %0, i64 2
  store ptr %incdec.ptr2, ptr %mp, align 8
  %2 = load i8, ptr %incdec.ptr, align 1
  %u.sroa.4.0.insert.ext = zext i8 %1 to i32
  %u.sroa.4.0.insert.shift = shl nuw nsw i32 %u.sroa.4.0.insert.ext, 8
  %u.sroa.0.0.insert.ext = zext i8 %2 to i32
  %u.sroa.0.0.insert.insert = or disjoint i32 %u.sroa.4.0.insert.shift, %u.sroa.0.0.insert.ext
  ret i32 %u.sroa.0.0.insert.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal i32 @getSwappedU32(ptr nocapture noundef %t) #13 {
entry:
  %mp = getelementptr inbounds i8, ptr %t, i64 16
  %0 = load ptr, ptr %mp, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %0, i64 1
  store ptr %incdec.ptr, ptr %mp, align 8
  %1 = load i8, ptr %0, align 1
  %incdec.ptr2 = getelementptr inbounds i8, ptr %0, i64 2
  store ptr %incdec.ptr2, ptr %mp, align 8
  %2 = load i8, ptr %incdec.ptr, align 1
  %incdec.ptr5 = getelementptr inbounds i8, ptr %0, i64 3
  store ptr %incdec.ptr5, ptr %mp, align 8
  %3 = load i8, ptr %incdec.ptr2, align 1
  %incdec.ptr8 = getelementptr inbounds i8, ptr %0, i64 4
  store ptr %incdec.ptr8, ptr %mp, align 8
  %4 = load i8, ptr %incdec.ptr5, align 1
  %u.sroa.6.0.insert.ext = zext i8 %1 to i32
  %u.sroa.6.0.insert.shift = shl nuw i32 %u.sroa.6.0.insert.ext, 24
  %u.sroa.5.0.insert.ext = zext i8 %2 to i32
  %u.sroa.5.0.insert.shift = shl nuw nsw i32 %u.sroa.5.0.insert.ext, 16
  %u.sroa.5.0.insert.insert = or disjoint i32 %u.sroa.5.0.insert.shift, %u.sroa.6.0.insert.shift
  %u.sroa.4.0.insert.ext = zext i8 %3 to i32
  %u.sroa.4.0.insert.shift = shl nuw nsw i32 %u.sroa.4.0.insert.ext, 8
  %u.sroa.4.0.insert.insert = or disjoint i32 %u.sroa.5.0.insert.insert, %u.sroa.4.0.insert.shift
  %u.sroa.0.0.insert.ext = zext i8 %4 to i32
  %u.sroa.0.0.insert.insert = or disjoint i32 %u.sroa.4.0.insert.insert, %u.sroa.0.0.insert.ext
  ret i32 %u.sroa.0.0.insert.insert
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @getIntArray(i32 noundef %offset, i32 noundef %type, ptr nocapture noundef writeonly %a, i32 noundef %n) unnamed_addr #3 {
entry:
  %0 = load ptr, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 16), align 8
  %1 = load ptr, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 8), align 8
  %idx.ext = zext i32 %offset to i64
  %add.ptr = getelementptr inbounds i8, ptr %1, i64 %idx.ext
  store ptr %add.ptr, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 16), align 8
  switch i32 %type, label %sw.epilog [
    i32 3, label %for.cond.preheader
    i32 4, label %for.cond4.preheader
    i32 5, label %for.cond14.preheader
  ]

for.cond14.preheader:                             ; preds = %entry
  %cmp153 = icmp sgt i32 %n, 0
  br i1 %cmp153, label %for.body16.preheader, label %sw.epilog

for.body16.preheader:                             ; preds = %for.cond14.preheader
  %mul = shl nuw i32 %n, 1
  %smax = tail call i32 @llvm.smax.i32(i32 %mul, i32 1)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.body16

for.cond4.preheader:                              ; preds = %entry
  %cmp55 = icmp sgt i32 %n, 0
  br i1 %cmp55, label %for.body6.preheader, label %sw.epilog

for.body6.preheader:                              ; preds = %for.cond4.preheader
  %wide.trip.count15 = zext nneg i32 %n to i64
  br label %for.body6

for.cond.preheader:                               ; preds = %entry
  %cmp7 = icmp sgt i32 %n, 0
  br i1 %cmp7, label %for.body.preheader, label %sw.epilog

for.body.preheader:                               ; preds = %for.cond.preheader
  %wide.trip.count20 = zext nneg i32 %n to i64
  %xtraiter = and i64 %wide.trip.count20, 1
  %2 = icmp eq i32 %n, 1
  br i1 %2, label %sw.epilog.loopexit.unr-lcssa, label %for.body.preheader.new

for.body.preheader.new:                           ; preds = %for.body.preheader
  %unroll_iter = and i64 %wide.trip.count20, 2147483646
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.preheader.new
  %indvars.iv17 = phi i64 [ 0, %for.body.preheader.new ], [ %indvars.iv.next18.1, %for.body ]
  %niter = phi i64 [ 0, %for.body.preheader.new ], [ %niter.next.1, %for.body ]
  %3 = load ptr, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 16), align 8
  %incdec.ptr.i = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %incdec.ptr.i, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 16), align 8
  %4 = load i8, ptr %3, align 1
  %incdec.ptr2.i = getelementptr inbounds i8, ptr %3, i64 2
  store ptr %incdec.ptr2.i, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 16), align 8
  %5 = load i8, ptr %incdec.ptr.i, align 1
  %u.sroa.4.0.insert.ext.i = zext i8 %5 to i32
  %u.sroa.4.0.insert.shift.i = shl nuw nsw i32 %u.sroa.4.0.insert.ext.i, 8
  %u.sroa.0.0.insert.ext.i = zext i8 %4 to i32
  %u.sroa.0.0.insert.insert.i = or disjoint i32 %u.sroa.4.0.insert.shift.i, %u.sroa.0.0.insert.ext.i
  %arrayidx = getelementptr inbounds i32, ptr %a, i64 %indvars.iv17
  store i32 %u.sroa.0.0.insert.insert.i, ptr %arrayidx, align 4
  %indvars.iv.next18 = or disjoint i64 %indvars.iv17, 1
  %6 = load ptr, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 16), align 8
  %incdec.ptr.i.1 = getelementptr inbounds i8, ptr %6, i64 1
  store ptr %incdec.ptr.i.1, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 16), align 8
  %7 = load i8, ptr %6, align 1
  %incdec.ptr2.i.1 = getelementptr inbounds i8, ptr %6, i64 2
  store ptr %incdec.ptr2.i.1, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 16), align 8
  %8 = load i8, ptr %incdec.ptr.i.1, align 1
  %u.sroa.4.0.insert.ext.i.1 = zext i8 %8 to i32
  %u.sroa.4.0.insert.shift.i.1 = shl nuw nsw i32 %u.sroa.4.0.insert.ext.i.1, 8
  %u.sroa.0.0.insert.ext.i.1 = zext i8 %7 to i32
  %u.sroa.0.0.insert.insert.i.1 = or disjoint i32 %u.sroa.4.0.insert.shift.i.1, %u.sroa.0.0.insert.ext.i.1
  %arrayidx.1 = getelementptr inbounds i32, ptr %a, i64 %indvars.iv.next18
  store i32 %u.sroa.0.0.insert.insert.i.1, ptr %arrayidx.1, align 4
  %indvars.iv.next18.1 = add nuw nsw i64 %indvars.iv17, 2
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %sw.epilog.loopexit.unr-lcssa, label %for.body

for.body6:                                        ; preds = %for.body6.preheader, %for.body6
  %indvars.iv12 = phi i64 [ 0, %for.body6.preheader ], [ %indvars.iv.next13, %for.body6 ]
  %9 = load ptr, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 16), align 8
  %incdec.ptr.i42 = getelementptr inbounds i8, ptr %9, i64 1
  store ptr %incdec.ptr.i42, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 16), align 8
  %10 = load i8, ptr %9, align 1
  %incdec.ptr2.i43 = getelementptr inbounds i8, ptr %9, i64 2
  store ptr %incdec.ptr2.i43, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 16), align 8
  %11 = load i8, ptr %incdec.ptr.i42, align 1
  %incdec.ptr5.i = getelementptr inbounds i8, ptr %9, i64 3
  store ptr %incdec.ptr5.i, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 16), align 8
  %12 = load i8, ptr %incdec.ptr2.i43, align 1
  %incdec.ptr8.i = getelementptr inbounds i8, ptr %9, i64 4
  store ptr %incdec.ptr8.i, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 16), align 8
  %13 = load i8, ptr %incdec.ptr5.i, align 1
  %u.sroa.6.0.insert.ext.i = zext i8 %13 to i32
  %u.sroa.6.0.insert.shift.i = shl nuw i32 %u.sroa.6.0.insert.ext.i, 24
  %u.sroa.5.0.insert.ext.i = zext i8 %12 to i32
  %u.sroa.5.0.insert.shift.i = shl nuw nsw i32 %u.sroa.5.0.insert.ext.i, 16
  %u.sroa.4.0.insert.ext.i44 = zext i8 %11 to i32
  %u.sroa.4.0.insert.shift.i45 = shl nuw nsw i32 %u.sroa.4.0.insert.ext.i44, 8
  %u.sroa.0.0.insert.ext.i46 = zext i8 %10 to i32
  %u.sroa.5.0.insert.insert.i = or disjoint i32 %u.sroa.4.0.insert.shift.i45, %u.sroa.0.0.insert.ext.i46
  %u.sroa.4.0.insert.insert.i = or disjoint i32 %u.sroa.5.0.insert.insert.i, %u.sroa.5.0.insert.shift.i
  %u.sroa.0.0.insert.insert.i47 = or disjoint i32 %u.sroa.4.0.insert.insert.i, %u.sroa.6.0.insert.shift.i
  %arrayidx9 = getelementptr inbounds i32, ptr %a, i64 %indvars.iv12
  store i32 %u.sroa.0.0.insert.insert.i47, ptr %arrayidx9, align 4
  %indvars.iv.next13 = add nuw nsw i64 %indvars.iv12, 1
  %exitcond16.not = icmp eq i64 %indvars.iv.next13, %wide.trip.count15
  br i1 %exitcond16.not, label %sw.epilog, label %for.body6

for.body16:                                       ; preds = %for.body16.preheader, %for.body16
  %indvars.iv = phi i64 [ 0, %for.body16.preheader ], [ %indvars.iv.next, %for.body16 ]
  %14 = load ptr, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 16), align 8
  %incdec.ptr.i48 = getelementptr inbounds i8, ptr %14, i64 1
  store ptr %incdec.ptr.i48, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 16), align 8
  %15 = load i8, ptr %14, align 1
  %incdec.ptr2.i49 = getelementptr inbounds i8, ptr %14, i64 2
  store ptr %incdec.ptr2.i49, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 16), align 8
  %16 = load i8, ptr %incdec.ptr.i48, align 1
  %incdec.ptr5.i50 = getelementptr inbounds i8, ptr %14, i64 3
  store ptr %incdec.ptr5.i50, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 16), align 8
  %17 = load i8, ptr %incdec.ptr2.i49, align 1
  %incdec.ptr8.i51 = getelementptr inbounds i8, ptr %14, i64 4
  store ptr %incdec.ptr8.i51, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 16), align 8
  %18 = load i8, ptr %incdec.ptr5.i50, align 1
  %u.sroa.6.0.insert.ext.i52 = zext i8 %18 to i32
  %u.sroa.6.0.insert.shift.i53 = shl nuw i32 %u.sroa.6.0.insert.ext.i52, 24
  %u.sroa.5.0.insert.ext.i54 = zext i8 %17 to i32
  %u.sroa.5.0.insert.shift.i55 = shl nuw nsw i32 %u.sroa.5.0.insert.ext.i54, 16
  %u.sroa.4.0.insert.ext.i56 = zext i8 %16 to i32
  %u.sroa.4.0.insert.shift.i57 = shl nuw nsw i32 %u.sroa.4.0.insert.ext.i56, 8
  %u.sroa.0.0.insert.ext.i58 = zext i8 %15 to i32
  %u.sroa.5.0.insert.insert.i59 = or disjoint i32 %u.sroa.4.0.insert.shift.i57, %u.sroa.0.0.insert.ext.i58
  %u.sroa.4.0.insert.insert.i60 = or disjoint i32 %u.sroa.5.0.insert.insert.i59, %u.sroa.5.0.insert.shift.i55
  %u.sroa.0.0.insert.insert.i61 = or disjoint i32 %u.sroa.4.0.insert.insert.i60, %u.sroa.6.0.insert.shift.i53
  %arrayidx19 = getelementptr inbounds i32, ptr %a, i64 %indvars.iv
  store i32 %u.sroa.0.0.insert.insert.i61, ptr %arrayidx19, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %sw.epilog, label %for.body16

sw.epilog.loopexit.unr-lcssa:                     ; preds = %for.body, %for.body.preheader
  %indvars.iv17.unr = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next18.1, %for.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %sw.epilog, label %for.body.epil

for.body.epil:                                    ; preds = %sw.epilog.loopexit.unr-lcssa
  %19 = load ptr, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 16), align 8
  %incdec.ptr.i.epil = getelementptr inbounds i8, ptr %19, i64 1
  store ptr %incdec.ptr.i.epil, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 16), align 8
  %20 = load i8, ptr %19, align 1
  %incdec.ptr2.i.epil = getelementptr inbounds i8, ptr %19, i64 2
  store ptr %incdec.ptr2.i.epil, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 16), align 8
  %21 = load i8, ptr %incdec.ptr.i.epil, align 1
  %u.sroa.4.0.insert.ext.i.epil = zext i8 %21 to i32
  %u.sroa.4.0.insert.shift.i.epil = shl nuw nsw i32 %u.sroa.4.0.insert.ext.i.epil, 8
  %u.sroa.0.0.insert.ext.i.epil = zext i8 %20 to i32
  %u.sroa.0.0.insert.insert.i.epil = or disjoint i32 %u.sroa.4.0.insert.shift.i.epil, %u.sroa.0.0.insert.ext.i.epil
  %arrayidx.epil = getelementptr inbounds i32, ptr %a, i64 %indvars.iv17.unr
  store i32 %u.sroa.0.0.insert.insert.i.epil, ptr %arrayidx.epil, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.body16, %for.body6, %for.body.epil, %sw.epilog.loopexit.unr-lcssa, %for.cond14.preheader, %for.cond4.preheader, %for.cond.preheader, %entry
  store ptr %0, ptr getelementptr inbounds (i8, ptr @ReadTIFFImage.t, i64 16), align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #14

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.umin.v8i32(<8 x i32>, <8 x i32>) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #14

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nofree nounwind }
attributes #16 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #17 = { nounwind }
attributes #18 = { cold }
attributes #19 = { cold nounwind }
attributes #20 = { nounwind allocsize(1) }
attributes #21 = { nounwind allocsize(0) }

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
!8 = !{!9}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.isvectorized", i32 1}
!12 = !{!"llvm.loop.unroll.runtime.disable"}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.unroll.disable"}
!15 = distinct !{!15, !11}
!16 = distinct !{!16, !11, !12}
!17 = distinct !{!17, !11, !12}
!18 = distinct !{!18, !11}
!19 = distinct !{!19, !12, !11}
!20 = !{!21}
!21 = distinct !{!21, !22}
!22 = distinct !{!22, !"LVerDomain"}
!23 = !{!24}
!24 = distinct !{!24, !22}
!25 = distinct !{!25, !11, !12}
!26 = distinct !{!26, !14}
!27 = distinct !{!27, !11}
!28 = distinct !{!28, !14}
!29 = !{!30}
!30 = distinct !{!30, !31}
!31 = distinct !{!31, !"LVerDomain"}
!32 = !{!33}
!33 = distinct !{!33, !31}
!34 = distinct !{!34, !11, !12}
!35 = distinct !{!35, !11}
!36 = distinct !{!36, !14}
!37 = distinct !{!37, !11, !12}
!38 = !{!39}
!39 = distinct !{!39, !40}
!40 = distinct !{!40, !"LVerDomain"}
!41 = !{!42}
!42 = distinct !{!42, !40}
!43 = distinct !{!43, !11, !12}
!44 = distinct !{!44, !14}
!45 = distinct !{!45, !11}
!46 = distinct !{!46, !11}
